; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!161006 () Bool)

(assert start!161006)

(declare-fun b!1663853 () Bool)

(declare-fun b_free!45207 () Bool)

(declare-fun b_next!45911 () Bool)

(assert (=> b!1663853 (= b_free!45207 (not b_next!45911))))

(declare-fun tp!479671 () Bool)

(declare-fun b_and!118117 () Bool)

(assert (=> b!1663853 (= tp!479671 b_and!118117)))

(declare-fun b_free!45209 () Bool)

(declare-fun b_next!45913 () Bool)

(assert (=> b!1663853 (= b_free!45209 (not b_next!45913))))

(declare-fun tp!479674 () Bool)

(declare-fun b_and!118119 () Bool)

(assert (=> b!1663853 (= tp!479674 b_and!118119)))

(declare-fun b!1663843 () Bool)

(declare-fun b_free!45211 () Bool)

(declare-fun b_next!45915 () Bool)

(assert (=> b!1663843 (= b_free!45211 (not b_next!45915))))

(declare-fun tp!479672 () Bool)

(declare-fun b_and!118121 () Bool)

(assert (=> b!1663843 (= tp!479672 b_and!118121)))

(declare-fun b_free!45213 () Bool)

(declare-fun b_next!45917 () Bool)

(assert (=> b!1663843 (= b_free!45213 (not b_next!45917))))

(declare-fun tp!479666 () Bool)

(declare-fun b_and!118123 () Bool)

(assert (=> b!1663843 (= tp!479666 b_and!118123)))

(declare-fun b!1663841 () Bool)

(declare-fun e!1066641 () Bool)

(declare-datatypes ((C!9300 0))(
  ( (C!9301 (val!5246 Int)) )
))
(declare-datatypes ((List!18429 0))(
  ( (Nil!18359) (Cons!18359 (h!23760 C!9300) (t!151920 List!18429)) )
))
(declare-datatypes ((IArray!12241 0))(
  ( (IArray!12242 (innerList!6178 List!18429)) )
))
(declare-datatypes ((Conc!6118 0))(
  ( (Node!6118 (left!14689 Conc!6118) (right!15019 Conc!6118) (csize!12466 Int) (cheight!6329 Int)) (Leaf!8956 (xs!8962 IArray!12241) (csize!12467 Int)) (Empty!6118) )
))
(declare-datatypes ((BalanceConc!12180 0))(
  ( (BalanceConc!12181 (c!270827 Conc!6118)) )
))
(declare-datatypes ((List!18430 0))(
  ( (Nil!18360) (Cons!18360 (h!23761 (_ BitVec 16)) (t!151921 List!18430)) )
))
(declare-datatypes ((TokenValue!3325 0))(
  ( (FloatLiteralValue!6650 (text!23720 List!18430)) (TokenValueExt!3324 (__x!11952 Int)) (Broken!16625 (value!101844 List!18430)) (Object!3394) (End!3325) (Def!3325) (Underscore!3325) (Match!3325) (Else!3325) (Error!3325) (Case!3325) (If!3325) (Extends!3325) (Abstract!3325) (Class!3325) (Val!3325) (DelimiterValue!6650 (del!3385 List!18430)) (KeywordValue!3331 (value!101845 List!18430)) (CommentValue!6650 (value!101846 List!18430)) (WhitespaceValue!6650 (value!101847 List!18430)) (IndentationValue!3325 (value!101848 List!18430)) (String!20956) (Int32!3325) (Broken!16626 (value!101849 List!18430)) (Boolean!3326) (Unit!31098) (OperatorValue!3328 (op!3385 List!18430)) (IdentifierValue!6650 (value!101850 List!18430)) (IdentifierValue!6651 (value!101851 List!18430)) (WhitespaceValue!6651 (value!101852 List!18430)) (True!6650) (False!6650) (Broken!16627 (value!101853 List!18430)) (Broken!16628 (value!101854 List!18430)) (True!6651) (RightBrace!3325) (RightBracket!3325) (Colon!3325) (Null!3325) (Comma!3325) (LeftBracket!3325) (False!6651) (LeftBrace!3325) (ImaginaryLiteralValue!3325 (text!23721 List!18430)) (StringLiteralValue!9975 (value!101855 List!18430)) (EOFValue!3325 (value!101856 List!18430)) (IdentValue!3325 (value!101857 List!18430)) (DelimiterValue!6651 (value!101858 List!18430)) (DedentValue!3325 (value!101859 List!18430)) (NewLineValue!3325 (value!101860 List!18430)) (IntegerValue!9975 (value!101861 (_ BitVec 32)) (text!23722 List!18430)) (IntegerValue!9976 (value!101862 Int) (text!23723 List!18430)) (Times!3325) (Or!3325) (Equal!3325) (Minus!3325) (Broken!16629 (value!101863 List!18430)) (And!3325) (Div!3325) (LessEqual!3325) (Mod!3325) (Concat!7888) (Not!3325) (Plus!3325) (SpaceValue!3325 (value!101864 List!18430)) (IntegerValue!9977 (value!101865 Int) (text!23724 List!18430)) (StringLiteralValue!9976 (text!23725 List!18430)) (FloatLiteralValue!6651 (text!23726 List!18430)) (BytesLiteralValue!3325 (value!101866 List!18430)) (CommentValue!6651 (value!101867 List!18430)) (StringLiteralValue!9977 (value!101868 List!18430)) (ErrorTokenValue!3325 (msg!3386 List!18430)) )
))
(declare-datatypes ((Regex!4563 0))(
  ( (ElementMatch!4563 (c!270828 C!9300)) (Concat!7889 (regOne!9638 Regex!4563) (regTwo!9638 Regex!4563)) (EmptyExpr!4563) (Star!4563 (reg!4892 Regex!4563)) (EmptyLang!4563) (Union!4563 (regOne!9639 Regex!4563) (regTwo!9639 Regex!4563)) )
))
(declare-datatypes ((String!20957 0))(
  ( (String!20958 (value!101869 String)) )
))
(declare-datatypes ((TokenValueInjection!6310 0))(
  ( (TokenValueInjection!6311 (toValue!4690 Int) (toChars!4549 Int)) )
))
(declare-datatypes ((Rule!6270 0))(
  ( (Rule!6271 (regex!3235 Regex!4563) (tag!3519 String!20957) (isSeparator!3235 Bool) (transformation!3235 TokenValueInjection!6310)) )
))
(declare-datatypes ((Token!6036 0))(
  ( (Token!6037 (value!101870 TokenValue!3325) (rule!5123 Rule!6270) (size!14596 Int) (originalCharacters!4049 List!18429)) )
))
(declare-datatypes ((List!18431 0))(
  ( (Nil!18361) (Cons!18361 (h!23762 Token!6036) (t!151922 List!18431)) )
))
(declare-datatypes ((IArray!12243 0))(
  ( (IArray!12244 (innerList!6179 List!18431)) )
))
(declare-datatypes ((Conc!6119 0))(
  ( (Node!6119 (left!14690 Conc!6119) (right!15020 Conc!6119) (csize!12468 Int) (cheight!6330 Int)) (Leaf!8957 (xs!8963 IArray!12243) (csize!12469 Int)) (Empty!6119) )
))
(declare-datatypes ((BalanceConc!12182 0))(
  ( (BalanceConc!12183 (c!270829 Conc!6119)) )
))
(declare-datatypes ((tuple2!18074 0))(
  ( (tuple2!18075 (_1!10439 BalanceConc!12182) (_2!10439 BalanceConc!12180)) )
))
(declare-fun lt!626098 () tuple2!18074)

(declare-fun isEmpty!11412 (BalanceConc!12180) Bool)

(assert (=> b!1663841 (= e!1066641 (not (isEmpty!11412 (_2!10439 lt!626098))))))

(declare-fun tp!479667 () Bool)

(declare-fun b!1663842 () Bool)

(declare-fun e!1066642 () Bool)

(declare-datatypes ((List!18432 0))(
  ( (Nil!18362) (Cons!18362 (h!23763 Rule!6270) (t!151923 List!18432)) )
))
(declare-fun rules!1846 () List!18432)

(declare-fun e!1066639 () Bool)

(declare-fun inv!23698 (String!20957) Bool)

(declare-fun inv!23701 (TokenValueInjection!6310) Bool)

(assert (=> b!1663842 (= e!1066642 (and tp!479667 (inv!23698 (tag!3519 (h!23763 rules!1846))) (inv!23701 (transformation!3235 (h!23763 rules!1846))) e!1066639))))

(assert (=> b!1663843 (= e!1066639 (and tp!479672 tp!479666))))

(declare-fun b!1663844 () Bool)

(declare-fun res!746662 () Bool)

(declare-fun e!1066633 () Bool)

(assert (=> b!1663844 (=> (not res!746662) (not e!1066633))))

(declare-datatypes ((LexerInterface!2864 0))(
  ( (LexerInterfaceExt!2861 (__x!11953 Int)) (Lexer!2862) )
))
(declare-fun thiss!17113 () LexerInterface!2864)

(declare-fun tokens!457 () List!18431)

(declare-fun rulesProduceEachTokenIndividuallyList!1066 (LexerInterface!2864 List!18432 List!18431) Bool)

(assert (=> b!1663844 (= res!746662 (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1066636 () Bool)

(declare-fun e!1066634 () Bool)

(declare-fun tp!479669 () Bool)

(declare-fun b!1663845 () Bool)

(declare-fun inv!23702 (Token!6036) Bool)

(assert (=> b!1663845 (= e!1066634 (and (inv!23702 (h!23762 tokens!457)) e!1066636 tp!479669))))

(declare-fun res!746661 () Bool)

(assert (=> start!161006 (=> (not res!746661) (not e!1066633))))

(get-info :version)

(assert (=> start!161006 (= res!746661 ((_ is Lexer!2862) thiss!17113))))

(assert (=> start!161006 e!1066633))

(assert (=> start!161006 true))

(declare-fun e!1066637 () Bool)

(assert (=> start!161006 e!1066637))

(assert (=> start!161006 e!1066634))

(declare-fun b!1663846 () Bool)

(declare-fun tp!479668 () Bool)

(assert (=> b!1663846 (= e!1066637 (and e!1066642 tp!479668))))

(declare-fun b!1663847 () Bool)

(declare-fun res!746664 () Bool)

(assert (=> b!1663847 (=> (not res!746664) (not e!1066633))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!557 (LexerInterface!2864 List!18431 List!18432) Bool)

(assert (=> b!1663847 (= res!746664 (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1663848 () Bool)

(declare-fun tp!479673 () Bool)

(declare-fun e!1066640 () Bool)

(declare-fun inv!21 (TokenValue!3325) Bool)

(assert (=> b!1663848 (= e!1066636 (and (inv!21 (value!101870 (h!23762 tokens!457))) e!1066640 tp!479673))))

(declare-fun b!1663849 () Bool)

(declare-fun res!746665 () Bool)

(assert (=> b!1663849 (=> (not res!746665) (not e!1066633))))

(assert (=> b!1663849 (= res!746665 ((_ is Nil!18361) tokens!457))))

(declare-fun b!1663850 () Bool)

(declare-fun res!746667 () Bool)

(assert (=> b!1663850 (=> (not res!746667) (not e!1066633))))

(declare-fun rulesInvariant!2533 (LexerInterface!2864 List!18432) Bool)

(assert (=> b!1663850 (= res!746667 (rulesInvariant!2533 thiss!17113 rules!1846))))

(declare-fun tp!479670 () Bool)

(declare-fun b!1663851 () Bool)

(declare-fun e!1066643 () Bool)

(assert (=> b!1663851 (= e!1066640 (and tp!479670 (inv!23698 (tag!3519 (rule!5123 (h!23762 tokens!457)))) (inv!23701 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) e!1066643))))

(declare-fun b!1663852 () Bool)

(declare-fun res!746663 () Bool)

(assert (=> b!1663852 (=> (not res!746663) (not e!1066633))))

(declare-fun isEmpty!11413 (List!18432) Bool)

(assert (=> b!1663852 (= res!746663 (not (isEmpty!11413 rules!1846)))))

(assert (=> b!1663853 (= e!1066643 (and tp!479671 tp!479674))))

(declare-fun b!1663854 () Bool)

(assert (=> b!1663854 (= e!1066633 e!1066641)))

(declare-fun res!746666 () Bool)

(assert (=> b!1663854 (=> res!746666 e!1066641)))

(declare-fun list!7332 (BalanceConc!12182) List!18431)

(assert (=> b!1663854 (= res!746666 (not (= (list!7332 (_1!10439 lt!626098)) tokens!457)))))

(declare-fun lex!1348 (LexerInterface!2864 List!18432 BalanceConc!12180) tuple2!18074)

(declare-fun print!1395 (LexerInterface!2864 BalanceConc!12182) BalanceConc!12180)

(declare-fun seqFromList!2208 (List!18431) BalanceConc!12182)

(assert (=> b!1663854 (= lt!626098 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (= (and start!161006 res!746661) b!1663852))

(assert (= (and b!1663852 res!746663) b!1663850))

(assert (= (and b!1663850 res!746667) b!1663844))

(assert (= (and b!1663844 res!746662) b!1663847))

(assert (= (and b!1663847 res!746664) b!1663849))

(assert (= (and b!1663849 res!746665) b!1663854))

(assert (= (and b!1663854 (not res!746666)) b!1663841))

(assert (= b!1663842 b!1663843))

(assert (= b!1663846 b!1663842))

(assert (= (and start!161006 ((_ is Cons!18362) rules!1846)) b!1663846))

(assert (= b!1663851 b!1663853))

(assert (= b!1663848 b!1663851))

(assert (= b!1663845 b!1663848))

(assert (= (and start!161006 ((_ is Cons!18361) tokens!457)) b!1663845))

(declare-fun m!2026107 () Bool)

(assert (=> b!1663847 m!2026107))

(declare-fun m!2026109 () Bool)

(assert (=> b!1663848 m!2026109))

(declare-fun m!2026111 () Bool)

(assert (=> b!1663844 m!2026111))

(declare-fun m!2026113 () Bool)

(assert (=> b!1663851 m!2026113))

(declare-fun m!2026115 () Bool)

(assert (=> b!1663851 m!2026115))

(declare-fun m!2026117 () Bool)

(assert (=> b!1663852 m!2026117))

(declare-fun m!2026119 () Bool)

(assert (=> b!1663850 m!2026119))

(declare-fun m!2026121 () Bool)

(assert (=> b!1663845 m!2026121))

(declare-fun m!2026123 () Bool)

(assert (=> b!1663854 m!2026123))

(declare-fun m!2026125 () Bool)

(assert (=> b!1663854 m!2026125))

(assert (=> b!1663854 m!2026125))

(declare-fun m!2026127 () Bool)

(assert (=> b!1663854 m!2026127))

(assert (=> b!1663854 m!2026127))

(declare-fun m!2026129 () Bool)

(assert (=> b!1663854 m!2026129))

(declare-fun m!2026131 () Bool)

(assert (=> b!1663842 m!2026131))

(declare-fun m!2026133 () Bool)

(assert (=> b!1663842 m!2026133))

(declare-fun m!2026135 () Bool)

(assert (=> b!1663841 m!2026135))

(check-sat (not b!1663851) (not b!1663854) b_and!118119 b_and!118123 (not b!1663848) (not b_next!45915) b_and!118121 (not b!1663850) (not b!1663846) (not b!1663847) b_and!118117 (not b_next!45917) (not b!1663841) (not b!1663845) (not b!1663844) (not b!1663852) (not b_next!45913) (not b_next!45911) (not b!1663842))
(check-sat (not b_next!45917) b_and!118119 b_and!118123 (not b_next!45915) b_and!118121 b_and!118117 (not b_next!45913) (not b_next!45911))
(get-model)

(declare-fun d!502608 () Bool)

(declare-fun lt!626101 () Bool)

(declare-fun isEmpty!11417 (List!18429) Bool)

(declare-fun list!7335 (BalanceConc!12180) List!18429)

(assert (=> d!502608 (= lt!626101 (isEmpty!11417 (list!7335 (_2!10439 lt!626098))))))

(declare-fun isEmpty!11418 (Conc!6118) Bool)

(assert (=> d!502608 (= lt!626101 (isEmpty!11418 (c!270827 (_2!10439 lt!626098))))))

(assert (=> d!502608 (= (isEmpty!11412 (_2!10439 lt!626098)) lt!626101)))

(declare-fun bs!397446 () Bool)

(assert (= bs!397446 d!502608))

(declare-fun m!2026137 () Bool)

(assert (=> bs!397446 m!2026137))

(assert (=> bs!397446 m!2026137))

(declare-fun m!2026139 () Bool)

(assert (=> bs!397446 m!2026139))

(declare-fun m!2026141 () Bool)

(assert (=> bs!397446 m!2026141))

(assert (=> b!1663841 d!502608))

(declare-fun d!502612 () Bool)

(assert (=> d!502612 (= (inv!23698 (tag!3519 (rule!5123 (h!23762 tokens!457)))) (= (mod (str.len (value!101869 (tag!3519 (rule!5123 (h!23762 tokens!457))))) 2) 0))))

(assert (=> b!1663851 d!502612))

(declare-fun d!502614 () Bool)

(declare-fun res!746676 () Bool)

(declare-fun e!1066653 () Bool)

(assert (=> d!502614 (=> (not res!746676) (not e!1066653))))

(declare-fun semiInverseModEq!1260 (Int Int) Bool)

(assert (=> d!502614 (= res!746676 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))))))

(assert (=> d!502614 (= (inv!23701 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) e!1066653)))

(declare-fun b!1663868 () Bool)

(declare-fun equivClasses!1201 (Int Int) Bool)

(assert (=> b!1663868 (= e!1066653 (equivClasses!1201 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))))))

(assert (= (and d!502614 res!746676) b!1663868))

(declare-fun m!2026155 () Bool)

(assert (=> d!502614 m!2026155))

(declare-fun m!2026157 () Bool)

(assert (=> b!1663868 m!2026157))

(assert (=> b!1663851 d!502614))

(declare-fun d!502620 () Bool)

(assert (=> d!502620 (= (inv!23698 (tag!3519 (h!23763 rules!1846))) (= (mod (str.len (value!101869 (tag!3519 (h!23763 rules!1846)))) 2) 0))))

(assert (=> b!1663842 d!502620))

(declare-fun d!502622 () Bool)

(declare-fun res!746679 () Bool)

(declare-fun e!1066656 () Bool)

(assert (=> d!502622 (=> (not res!746679) (not e!1066656))))

(assert (=> d!502622 (= res!746679 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))))))

(assert (=> d!502622 (= (inv!23701 (transformation!3235 (h!23763 rules!1846))) e!1066656)))

(declare-fun b!1663871 () Bool)

(assert (=> b!1663871 (= e!1066656 (equivClasses!1201 (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))))))

(assert (= (and d!502622 res!746679) b!1663871))

(declare-fun m!2026159 () Bool)

(assert (=> d!502622 m!2026159))

(declare-fun m!2026161 () Bool)

(assert (=> b!1663871 m!2026161))

(assert (=> b!1663842 d!502622))

(declare-fun d!502624 () Bool)

(declare-fun res!746698 () Bool)

(declare-fun e!1066675 () Bool)

(assert (=> d!502624 (=> res!746698 e!1066675)))

(assert (=> d!502624 (= res!746698 (or (not ((_ is Cons!18361) tokens!457)) (not ((_ is Cons!18361) (t!151922 tokens!457)))))))

(assert (=> d!502624 (= (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 tokens!457 rules!1846) e!1066675)))

(declare-fun b!1663890 () Bool)

(declare-fun e!1066676 () Bool)

(assert (=> b!1663890 (= e!1066675 e!1066676)))

(declare-fun res!746699 () Bool)

(assert (=> b!1663890 (=> (not res!746699) (not e!1066676))))

(declare-fun separableTokensPredicate!804 (LexerInterface!2864 Token!6036 Token!6036 List!18432) Bool)

(assert (=> b!1663890 (= res!746699 (separableTokensPredicate!804 thiss!17113 (h!23762 tokens!457) (h!23762 (t!151922 tokens!457)) rules!1846))))

(declare-datatypes ((Unit!31104 0))(
  ( (Unit!31105) )
))
(declare-fun lt!626144 () Unit!31104)

(declare-fun Unit!31106 () Unit!31104)

(assert (=> b!1663890 (= lt!626144 Unit!31106)))

(declare-fun size!14600 (BalanceConc!12180) Int)

(declare-fun charsOf!1884 (Token!6036) BalanceConc!12180)

(assert (=> b!1663890 (> (size!14600 (charsOf!1884 (h!23762 (t!151922 tokens!457)))) 0)))

(declare-fun lt!626142 () Unit!31104)

(declare-fun Unit!31107 () Unit!31104)

(assert (=> b!1663890 (= lt!626142 Unit!31107)))

(declare-fun rulesProduceIndividualToken!1512 (LexerInterface!2864 List!18432 Token!6036) Bool)

(assert (=> b!1663890 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457)))))

(declare-fun lt!626148 () Unit!31104)

(declare-fun Unit!31108 () Unit!31104)

(assert (=> b!1663890 (= lt!626148 Unit!31108)))

(assert (=> b!1663890 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457))))

(declare-fun lt!626147 () Unit!31104)

(declare-fun lt!626146 () Unit!31104)

(assert (=> b!1663890 (= lt!626147 lt!626146)))

(assert (=> b!1663890 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 (LexerInterface!2864 List!18432 List!18431 Token!6036) Unit!31104)

(assert (=> b!1663890 (= lt!626146 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 tokens!457 (h!23762 (t!151922 tokens!457))))))

(declare-fun lt!626143 () Unit!31104)

(declare-fun lt!626145 () Unit!31104)

(assert (=> b!1663890 (= lt!626143 lt!626145)))

(assert (=> b!1663890 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457))))

(assert (=> b!1663890 (= lt!626145 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 tokens!457 (h!23762 tokens!457)))))

(declare-fun b!1663891 () Bool)

(assert (=> b!1663891 (= e!1066676 (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) rules!1846))))

(assert (= (and d!502624 (not res!746698)) b!1663890))

(assert (= (and b!1663890 res!746699) b!1663891))

(declare-fun m!2026193 () Bool)

(assert (=> b!1663890 m!2026193))

(declare-fun m!2026195 () Bool)

(assert (=> b!1663890 m!2026195))

(declare-fun m!2026197 () Bool)

(assert (=> b!1663890 m!2026197))

(declare-fun m!2026199 () Bool)

(assert (=> b!1663890 m!2026199))

(declare-fun m!2026201 () Bool)

(assert (=> b!1663890 m!2026201))

(assert (=> b!1663890 m!2026195))

(declare-fun m!2026203 () Bool)

(assert (=> b!1663890 m!2026203))

(declare-fun m!2026205 () Bool)

(assert (=> b!1663890 m!2026205))

(declare-fun m!2026207 () Bool)

(assert (=> b!1663891 m!2026207))

(assert (=> b!1663847 d!502624))

(declare-fun d!502634 () Bool)

(assert (=> d!502634 (= (isEmpty!11413 rules!1846) ((_ is Nil!18362) rules!1846))))

(assert (=> b!1663852 d!502634))

(declare-fun d!502636 () Bool)

(declare-fun list!7336 (Conc!6119) List!18431)

(assert (=> d!502636 (= (list!7332 (_1!10439 lt!626098)) (list!7336 (c!270829 (_1!10439 lt!626098))))))

(declare-fun bs!397448 () Bool)

(assert (= bs!397448 d!502636))

(declare-fun m!2026209 () Bool)

(assert (=> bs!397448 m!2026209))

(assert (=> b!1663854 d!502636))

(declare-fun b!1663902 () Bool)

(declare-fun e!1066684 () Bool)

(declare-fun e!1066683 () Bool)

(assert (=> b!1663902 (= e!1066684 e!1066683)))

(declare-fun lt!626151 () tuple2!18074)

(declare-fun res!746708 () Bool)

(assert (=> b!1663902 (= res!746708 (< (size!14600 (_2!10439 lt!626151)) (size!14600 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> b!1663902 (=> (not res!746708) (not e!1066683))))

(declare-fun b!1663904 () Bool)

(declare-fun isEmpty!11419 (BalanceConc!12182) Bool)

(assert (=> b!1663904 (= e!1066683 (not (isEmpty!11419 (_1!10439 lt!626151))))))

(declare-fun b!1663905 () Bool)

(declare-fun e!1066685 () Bool)

(declare-datatypes ((tuple2!18078 0))(
  ( (tuple2!18079 (_1!10441 List!18431) (_2!10441 List!18429)) )
))
(declare-fun lexList!889 (LexerInterface!2864 List!18432 List!18429) tuple2!18078)

(assert (=> b!1663905 (= e!1066685 (= (list!7335 (_2!10439 lt!626151)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun b!1663906 () Bool)

(assert (=> b!1663906 (= e!1066684 (= (_2!10439 lt!626151) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1663903 () Bool)

(declare-fun res!746707 () Bool)

(assert (=> b!1663903 (=> (not res!746707) (not e!1066685))))

(assert (=> b!1663903 (= res!746707 (= (list!7332 (_1!10439 lt!626151)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun d!502638 () Bool)

(assert (=> d!502638 e!1066685))

(declare-fun res!746706 () Bool)

(assert (=> d!502638 (=> (not res!746706) (not e!1066685))))

(assert (=> d!502638 (= res!746706 e!1066684)))

(declare-fun c!270832 () Bool)

(declare-fun size!14601 (BalanceConc!12182) Int)

(assert (=> d!502638 (= c!270832 (> (size!14601 (_1!10439 lt!626151)) 0))))

(declare-fun lexTailRecV2!612 (LexerInterface!2864 List!18432 BalanceConc!12180 BalanceConc!12180 BalanceConc!12180 BalanceConc!12182) tuple2!18074)

(assert (=> d!502638 (= lt!626151 (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (BalanceConc!12181 Empty!6118) (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (BalanceConc!12183 Empty!6119)))))

(assert (=> d!502638 (= (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) lt!626151)))

(assert (= (and d!502638 c!270832) b!1663902))

(assert (= (and d!502638 (not c!270832)) b!1663906))

(assert (= (and b!1663902 res!746708) b!1663904))

(assert (= (and d!502638 res!746706) b!1663903))

(assert (= (and b!1663903 res!746707) b!1663905))

(declare-fun m!2026211 () Bool)

(assert (=> b!1663902 m!2026211))

(assert (=> b!1663902 m!2026127))

(declare-fun m!2026213 () Bool)

(assert (=> b!1663902 m!2026213))

(declare-fun m!2026215 () Bool)

(assert (=> b!1663904 m!2026215))

(declare-fun m!2026217 () Bool)

(assert (=> b!1663903 m!2026217))

(assert (=> b!1663903 m!2026127))

(declare-fun m!2026219 () Bool)

(assert (=> b!1663903 m!2026219))

(assert (=> b!1663903 m!2026219))

(declare-fun m!2026221 () Bool)

(assert (=> b!1663903 m!2026221))

(declare-fun m!2026223 () Bool)

(assert (=> d!502638 m!2026223))

(assert (=> d!502638 m!2026127))

(assert (=> d!502638 m!2026127))

(declare-fun m!2026225 () Bool)

(assert (=> d!502638 m!2026225))

(declare-fun m!2026227 () Bool)

(assert (=> b!1663905 m!2026227))

(assert (=> b!1663905 m!2026127))

(assert (=> b!1663905 m!2026219))

(assert (=> b!1663905 m!2026219))

(assert (=> b!1663905 m!2026221))

(assert (=> b!1663854 d!502638))

(declare-fun d!502640 () Bool)

(declare-fun lt!626154 () BalanceConc!12180)

(declare-fun printList!977 (LexerInterface!2864 List!18431) List!18429)

(assert (=> d!502640 (= (list!7335 lt!626154) (printList!977 thiss!17113 (list!7332 (seqFromList!2208 tokens!457))))))

(declare-fun printTailRec!915 (LexerInterface!2864 BalanceConc!12182 Int BalanceConc!12180) BalanceConc!12180)

(assert (=> d!502640 (= lt!626154 (printTailRec!915 thiss!17113 (seqFromList!2208 tokens!457) 0 (BalanceConc!12181 Empty!6118)))))

(assert (=> d!502640 (= (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) lt!626154)))

(declare-fun bs!397449 () Bool)

(assert (= bs!397449 d!502640))

(declare-fun m!2026229 () Bool)

(assert (=> bs!397449 m!2026229))

(assert (=> bs!397449 m!2026125))

(declare-fun m!2026231 () Bool)

(assert (=> bs!397449 m!2026231))

(assert (=> bs!397449 m!2026231))

(declare-fun m!2026233 () Bool)

(assert (=> bs!397449 m!2026233))

(assert (=> bs!397449 m!2026125))

(declare-fun m!2026235 () Bool)

(assert (=> bs!397449 m!2026235))

(assert (=> b!1663854 d!502640))

(declare-fun d!502642 () Bool)

(declare-fun fromListB!1001 (List!18431) BalanceConc!12182)

(assert (=> d!502642 (= (seqFromList!2208 tokens!457) (fromListB!1001 tokens!457))))

(declare-fun bs!397450 () Bool)

(assert (= bs!397450 d!502642))

(declare-fun m!2026237 () Bool)

(assert (=> bs!397450 m!2026237))

(assert (=> b!1663854 d!502642))

(declare-fun b!1663917 () Bool)

(declare-fun e!1066694 () Bool)

(declare-fun inv!15 (TokenValue!3325) Bool)

(assert (=> b!1663917 (= e!1066694 (inv!15 (value!101870 (h!23762 tokens!457))))))

(declare-fun b!1663918 () Bool)

(declare-fun e!1066692 () Bool)

(declare-fun inv!17 (TokenValue!3325) Bool)

(assert (=> b!1663918 (= e!1066692 (inv!17 (value!101870 (h!23762 tokens!457))))))

(declare-fun d!502644 () Bool)

(declare-fun c!270837 () Bool)

(assert (=> d!502644 (= c!270837 ((_ is IntegerValue!9975) (value!101870 (h!23762 tokens!457))))))

(declare-fun e!1066693 () Bool)

(assert (=> d!502644 (= (inv!21 (value!101870 (h!23762 tokens!457))) e!1066693)))

(declare-fun b!1663919 () Bool)

(declare-fun inv!16 (TokenValue!3325) Bool)

(assert (=> b!1663919 (= e!1066693 (inv!16 (value!101870 (h!23762 tokens!457))))))

(declare-fun b!1663920 () Bool)

(declare-fun res!746711 () Bool)

(assert (=> b!1663920 (=> res!746711 e!1066694)))

(assert (=> b!1663920 (= res!746711 (not ((_ is IntegerValue!9977) (value!101870 (h!23762 tokens!457)))))))

(assert (=> b!1663920 (= e!1066692 e!1066694)))

(declare-fun b!1663921 () Bool)

(assert (=> b!1663921 (= e!1066693 e!1066692)))

(declare-fun c!270838 () Bool)

(assert (=> b!1663921 (= c!270838 ((_ is IntegerValue!9976) (value!101870 (h!23762 tokens!457))))))

(assert (= (and d!502644 c!270837) b!1663919))

(assert (= (and d!502644 (not c!270837)) b!1663921))

(assert (= (and b!1663921 c!270838) b!1663918))

(assert (= (and b!1663921 (not c!270838)) b!1663920))

(assert (= (and b!1663920 (not res!746711)) b!1663917))

(declare-fun m!2026239 () Bool)

(assert (=> b!1663917 m!2026239))

(declare-fun m!2026241 () Bool)

(assert (=> b!1663918 m!2026241))

(declare-fun m!2026243 () Bool)

(assert (=> b!1663919 m!2026243))

(assert (=> b!1663848 d!502644))

(declare-fun d!502646 () Bool)

(declare-fun res!746716 () Bool)

(declare-fun e!1066697 () Bool)

(assert (=> d!502646 (=> (not res!746716) (not e!1066697))))

(assert (=> d!502646 (= res!746716 (not (isEmpty!11417 (originalCharacters!4049 (h!23762 tokens!457)))))))

(assert (=> d!502646 (= (inv!23702 (h!23762 tokens!457)) e!1066697)))

(declare-fun b!1663926 () Bool)

(declare-fun res!746717 () Bool)

(assert (=> b!1663926 (=> (not res!746717) (not e!1066697))))

(declare-fun dynLambda!8254 (Int TokenValue!3325) BalanceConc!12180)

(assert (=> b!1663926 (= res!746717 (= (originalCharacters!4049 (h!23762 tokens!457)) (list!7335 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun b!1663927 () Bool)

(declare-fun size!14602 (List!18429) Int)

(assert (=> b!1663927 (= e!1066697 (= (size!14596 (h!23762 tokens!457)) (size!14602 (originalCharacters!4049 (h!23762 tokens!457)))))))

(assert (= (and d!502646 res!746716) b!1663926))

(assert (= (and b!1663926 res!746717) b!1663927))

(declare-fun b_lambda!52215 () Bool)

(assert (=> (not b_lambda!52215) (not b!1663926)))

(declare-fun t!151931 () Bool)

(declare-fun tb!95307 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151931) tb!95307))

(declare-fun b!1663932 () Bool)

(declare-fun e!1066700 () Bool)

(declare-fun tp!479680 () Bool)

(declare-fun inv!23705 (Conc!6118) Bool)

(assert (=> b!1663932 (= e!1066700 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) tp!479680))))

(declare-fun result!115176 () Bool)

(declare-fun inv!23706 (BalanceConc!12180) Bool)

(assert (=> tb!95307 (= result!115176 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))) e!1066700))))

(assert (= tb!95307 b!1663932))

(declare-fun m!2026245 () Bool)

(assert (=> b!1663932 m!2026245))

(declare-fun m!2026247 () Bool)

(assert (=> tb!95307 m!2026247))

(assert (=> b!1663926 t!151931))

(declare-fun b_and!118129 () Bool)

(assert (= b_and!118119 (and (=> t!151931 result!115176) b_and!118129)))

(declare-fun t!151933 () Bool)

(declare-fun tb!95309 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151933) tb!95309))

(declare-fun result!115180 () Bool)

(assert (= result!115180 result!115176))

(assert (=> b!1663926 t!151933))

(declare-fun b_and!118131 () Bool)

(assert (= b_and!118123 (and (=> t!151933 result!115180) b_and!118131)))

(declare-fun m!2026249 () Bool)

(assert (=> d!502646 m!2026249))

(declare-fun m!2026251 () Bool)

(assert (=> b!1663926 m!2026251))

(assert (=> b!1663926 m!2026251))

(declare-fun m!2026253 () Bool)

(assert (=> b!1663926 m!2026253))

(declare-fun m!2026255 () Bool)

(assert (=> b!1663927 m!2026255))

(assert (=> b!1663845 d!502646))

(declare-fun d!502648 () Bool)

(declare-fun res!746720 () Bool)

(declare-fun e!1066703 () Bool)

(assert (=> d!502648 (=> (not res!746720) (not e!1066703))))

(declare-fun rulesValid!1188 (LexerInterface!2864 List!18432) Bool)

(assert (=> d!502648 (= res!746720 (rulesValid!1188 thiss!17113 rules!1846))))

(assert (=> d!502648 (= (rulesInvariant!2533 thiss!17113 rules!1846) e!1066703)))

(declare-fun b!1663935 () Bool)

(declare-datatypes ((List!18434 0))(
  ( (Nil!18364) (Cons!18364 (h!23765 String!20957) (t!151945 List!18434)) )
))
(declare-fun noDuplicateTag!1188 (LexerInterface!2864 List!18432 List!18434) Bool)

(assert (=> b!1663935 (= e!1066703 (noDuplicateTag!1188 thiss!17113 rules!1846 Nil!18364))))

(assert (= (and d!502648 res!746720) b!1663935))

(declare-fun m!2026257 () Bool)

(assert (=> d!502648 m!2026257))

(declare-fun m!2026259 () Bool)

(assert (=> b!1663935 m!2026259))

(assert (=> b!1663850 d!502648))

(declare-fun b!1664046 () Bool)

(declare-fun e!1066785 () Bool)

(assert (=> b!1664046 (= e!1066785 true)))

(declare-fun b!1664045 () Bool)

(declare-fun e!1066784 () Bool)

(assert (=> b!1664045 (= e!1066784 e!1066785)))

(declare-fun b!1664044 () Bool)

(declare-fun e!1066783 () Bool)

(assert (=> b!1664044 (= e!1066783 e!1066784)))

(declare-fun d!502650 () Bool)

(assert (=> d!502650 e!1066783))

(assert (= b!1664045 b!1664046))

(assert (= b!1664044 b!1664045))

(assert (= (and d!502650 ((_ is Cons!18362) rules!1846)) b!1664044))

(declare-fun order!10995 () Int)

(declare-fun lambda!67896 () Int)

(declare-fun order!10997 () Int)

(declare-fun dynLambda!8255 (Int Int) Int)

(declare-fun dynLambda!8256 (Int Int) Int)

(assert (=> b!1664046 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67896))))

(declare-fun order!10999 () Int)

(declare-fun dynLambda!8257 (Int Int) Int)

(assert (=> b!1664046 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67896))))

(assert (=> d!502650 true))

(declare-fun lt!626164 () Bool)

(declare-fun forall!4172 (List!18431 Int) Bool)

(assert (=> d!502650 (= lt!626164 (forall!4172 tokens!457 lambda!67896))))

(declare-fun e!1066776 () Bool)

(assert (=> d!502650 (= lt!626164 e!1066776)))

(declare-fun res!746741 () Bool)

(assert (=> d!502650 (=> res!746741 e!1066776)))

(assert (=> d!502650 (= res!746741 (not ((_ is Cons!18361) tokens!457)))))

(assert (=> d!502650 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502650 (= (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 tokens!457) lt!626164)))

(declare-fun b!1664034 () Bool)

(declare-fun e!1066775 () Bool)

(assert (=> b!1664034 (= e!1066776 e!1066775)))

(declare-fun res!746740 () Bool)

(assert (=> b!1664034 (=> (not res!746740) (not e!1066775))))

(assert (=> b!1664034 (= res!746740 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457)))))

(declare-fun b!1664035 () Bool)

(assert (=> b!1664035 (= e!1066775 (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 (t!151922 tokens!457)))))

(assert (= (and d!502650 (not res!746741)) b!1664034))

(assert (= (and b!1664034 res!746740) b!1664035))

(declare-fun m!2026317 () Bool)

(assert (=> d!502650 m!2026317))

(assert (=> d!502650 m!2026117))

(assert (=> b!1664034 m!2026199))

(declare-fun m!2026319 () Bool)

(assert (=> b!1664035 m!2026319))

(assert (=> b!1663844 d!502650))

(declare-fun b!1664059 () Bool)

(declare-fun b_free!45223 () Bool)

(declare-fun b_next!45927 () Bool)

(assert (=> b!1664059 (= b_free!45223 (not b_next!45927))))

(declare-fun tp!479740 () Bool)

(declare-fun b_and!118141 () Bool)

(assert (=> b!1664059 (= tp!479740 b_and!118141)))

(declare-fun b_free!45225 () Bool)

(declare-fun b_next!45929 () Bool)

(assert (=> b!1664059 (= b_free!45225 (not b_next!45929))))

(declare-fun t!151942 () Bool)

(declare-fun tb!95315 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151942) tb!95315))

(declare-fun result!115196 () Bool)

(assert (= result!115196 result!115176))

(assert (=> b!1663926 t!151942))

(declare-fun b_and!118143 () Bool)

(declare-fun tp!479739 () Bool)

(assert (=> b!1664059 (= tp!479739 (and (=> t!151942 result!115196) b_and!118143))))

(declare-fun e!1066796 () Bool)

(assert (=> b!1664059 (= e!1066796 (and tp!479740 tp!479739))))

(declare-fun b!1664058 () Bool)

(declare-fun tp!479741 () Bool)

(declare-fun e!1066797 () Bool)

(assert (=> b!1664058 (= e!1066797 (and tp!479741 (inv!23698 (tag!3519 (h!23763 (t!151923 rules!1846)))) (inv!23701 (transformation!3235 (h!23763 (t!151923 rules!1846)))) e!1066796))))

(declare-fun b!1664057 () Bool)

(declare-fun e!1066794 () Bool)

(declare-fun tp!479742 () Bool)

(assert (=> b!1664057 (= e!1066794 (and e!1066797 tp!479742))))

(assert (=> b!1663846 (= tp!479668 e!1066794)))

(assert (= b!1664058 b!1664059))

(assert (= b!1664057 b!1664058))

(assert (= (and b!1663846 ((_ is Cons!18362) (t!151923 rules!1846))) b!1664057))

(declare-fun m!2026321 () Bool)

(assert (=> b!1664058 m!2026321))

(declare-fun m!2026323 () Bool)

(assert (=> b!1664058 m!2026323))

(declare-fun b!1664070 () Bool)

(declare-fun e!1066800 () Bool)

(declare-fun tp_is_empty!7401 () Bool)

(assert (=> b!1664070 (= e!1066800 tp_is_empty!7401)))

(declare-fun b!1664072 () Bool)

(declare-fun tp!479754 () Bool)

(assert (=> b!1664072 (= e!1066800 tp!479754)))

(assert (=> b!1663851 (= tp!479670 e!1066800)))

(declare-fun b!1664073 () Bool)

(declare-fun tp!479756 () Bool)

(declare-fun tp!479755 () Bool)

(assert (=> b!1664073 (= e!1066800 (and tp!479756 tp!479755))))

(declare-fun b!1664071 () Bool)

(declare-fun tp!479753 () Bool)

(declare-fun tp!479757 () Bool)

(assert (=> b!1664071 (= e!1066800 (and tp!479753 tp!479757))))

(assert (= (and b!1663851 ((_ is ElementMatch!4563) (regex!3235 (rule!5123 (h!23762 tokens!457))))) b!1664070))

(assert (= (and b!1663851 ((_ is Concat!7889) (regex!3235 (rule!5123 (h!23762 tokens!457))))) b!1664071))

(assert (= (and b!1663851 ((_ is Star!4563) (regex!3235 (rule!5123 (h!23762 tokens!457))))) b!1664072))

(assert (= (and b!1663851 ((_ is Union!4563) (regex!3235 (rule!5123 (h!23762 tokens!457))))) b!1664073))

(declare-fun b!1664074 () Bool)

(declare-fun e!1066801 () Bool)

(assert (=> b!1664074 (= e!1066801 tp_is_empty!7401)))

(declare-fun b!1664076 () Bool)

(declare-fun tp!479759 () Bool)

(assert (=> b!1664076 (= e!1066801 tp!479759)))

(assert (=> b!1663842 (= tp!479667 e!1066801)))

(declare-fun b!1664077 () Bool)

(declare-fun tp!479761 () Bool)

(declare-fun tp!479760 () Bool)

(assert (=> b!1664077 (= e!1066801 (and tp!479761 tp!479760))))

(declare-fun b!1664075 () Bool)

(declare-fun tp!479758 () Bool)

(declare-fun tp!479762 () Bool)

(assert (=> b!1664075 (= e!1066801 (and tp!479758 tp!479762))))

(assert (= (and b!1663842 ((_ is ElementMatch!4563) (regex!3235 (h!23763 rules!1846)))) b!1664074))

(assert (= (and b!1663842 ((_ is Concat!7889) (regex!3235 (h!23763 rules!1846)))) b!1664075))

(assert (= (and b!1663842 ((_ is Star!4563) (regex!3235 (h!23763 rules!1846)))) b!1664076))

(assert (= (and b!1663842 ((_ is Union!4563) (regex!3235 (h!23763 rules!1846)))) b!1664077))

(declare-fun b!1664082 () Bool)

(declare-fun e!1066804 () Bool)

(declare-fun tp!479765 () Bool)

(assert (=> b!1664082 (= e!1066804 (and tp_is_empty!7401 tp!479765))))

(assert (=> b!1663848 (= tp!479673 e!1066804)))

(assert (= (and b!1663848 ((_ is Cons!18359) (originalCharacters!4049 (h!23762 tokens!457)))) b!1664082))

(declare-fun b!1664096 () Bool)

(declare-fun b_free!45227 () Bool)

(declare-fun b_next!45931 () Bool)

(assert (=> b!1664096 (= b_free!45227 (not b_next!45931))))

(declare-fun tp!479779 () Bool)

(declare-fun b_and!118145 () Bool)

(assert (=> b!1664096 (= tp!479779 b_and!118145)))

(declare-fun b_free!45229 () Bool)

(declare-fun b_next!45933 () Bool)

(assert (=> b!1664096 (= b_free!45229 (not b_next!45933))))

(declare-fun t!151944 () Bool)

(declare-fun tb!95317 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151944) tb!95317))

(declare-fun result!115204 () Bool)

(assert (= result!115204 result!115176))

(assert (=> b!1663926 t!151944))

(declare-fun b_and!118147 () Bool)

(declare-fun tp!479780 () Bool)

(assert (=> b!1664096 (= tp!479780 (and (=> t!151944 result!115204) b_and!118147))))

(declare-fun e!1066818 () Bool)

(declare-fun tp!479778 () Bool)

(declare-fun b!1664095 () Bool)

(declare-fun e!1066817 () Bool)

(assert (=> b!1664095 (= e!1066817 (and tp!479778 (inv!23698 (tag!3519 (rule!5123 (h!23762 (t!151922 tokens!457))))) (inv!23701 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) e!1066818))))

(assert (=> b!1664096 (= e!1066818 (and tp!479779 tp!479780))))

(declare-fun e!1066822 () Bool)

(assert (=> b!1663845 (= tp!479669 e!1066822)))

(declare-fun b!1664093 () Bool)

(declare-fun e!1066820 () Bool)

(declare-fun tp!479776 () Bool)

(assert (=> b!1664093 (= e!1066822 (and (inv!23702 (h!23762 (t!151922 tokens!457))) e!1066820 tp!479776))))

(declare-fun tp!479777 () Bool)

(declare-fun b!1664094 () Bool)

(assert (=> b!1664094 (= e!1066820 (and (inv!21 (value!101870 (h!23762 (t!151922 tokens!457)))) e!1066817 tp!479777))))

(assert (= b!1664095 b!1664096))

(assert (= b!1664094 b!1664095))

(assert (= b!1664093 b!1664094))

(assert (= (and b!1663845 ((_ is Cons!18361) (t!151922 tokens!457))) b!1664093))

(declare-fun m!2026325 () Bool)

(assert (=> b!1664095 m!2026325))

(declare-fun m!2026327 () Bool)

(assert (=> b!1664095 m!2026327))

(declare-fun m!2026329 () Bool)

(assert (=> b!1664093 m!2026329))

(declare-fun m!2026331 () Bool)

(assert (=> b!1664094 m!2026331))

(declare-fun b_lambda!52219 () Bool)

(assert (= b_lambda!52215 (or (and b!1663853 b_free!45209) (and b!1663843 b_free!45213 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664059 b_free!45225 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664096 b_free!45229 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) b_lambda!52219)))

(check-sat (not b_next!45933) (not b!1664057) (not b!1664058) (not b_lambda!52219) (not b!1663890) b_and!118129 (not d!502642) b_and!118117 (not b_next!45911) (not b!1664075) (not d!502608) (not b!1663926) (not b!1664076) (not b!1663891) b_and!118141 (not b_next!45917) (not b!1664082) (not b!1664034) (not b!1663932) (not b!1663905) (not b_next!45929) b_and!118147 (not tb!95307) (not b!1663919) (not d!502636) tp_is_empty!7401 b_and!118143 (not b!1663903) (not b!1664072) (not b_next!45915) (not b!1664035) b_and!118131 (not b!1663868) (not b!1663902) b_and!118121 (not d!502614) (not b!1664044) (not d!502640) (not d!502648) (not b!1664093) (not b!1664071) (not b!1664073) (not b!1663917) (not b!1664095) (not d!502646) (not b!1664094) (not b!1663871) (not b_next!45931) (not d!502638) (not b!1663927) (not b_next!45927) (not b!1664077) b_and!118145 (not d!502622) (not b!1663935) (not b_next!45913) (not d!502650) (not b!1663904) (not b!1663918))
(check-sat (not b_next!45933) (not b_next!45929) b_and!118147 b_and!118143 (not b_next!45915) b_and!118131 b_and!118121 (not b_next!45931) b_and!118129 (not b_next!45927) b_and!118145 b_and!118117 (not b_next!45913) (not b_next!45911) b_and!118141 (not b_next!45917))
(get-model)

(declare-fun d!502686 () Bool)

(declare-fun lt!626170 () Int)

(assert (=> d!502686 (>= lt!626170 0)))

(declare-fun e!1066843 () Int)

(assert (=> d!502686 (= lt!626170 e!1066843)))

(declare-fun c!270862 () Bool)

(assert (=> d!502686 (= c!270862 ((_ is Nil!18359) (originalCharacters!4049 (h!23762 tokens!457))))))

(assert (=> d!502686 (= (size!14602 (originalCharacters!4049 (h!23762 tokens!457))) lt!626170)))

(declare-fun b!1664133 () Bool)

(assert (=> b!1664133 (= e!1066843 0)))

(declare-fun b!1664134 () Bool)

(assert (=> b!1664134 (= e!1066843 (+ 1 (size!14602 (t!151920 (originalCharacters!4049 (h!23762 tokens!457))))))))

(assert (= (and d!502686 c!270862) b!1664133))

(assert (= (and d!502686 (not c!270862)) b!1664134))

(declare-fun m!2026357 () Bool)

(assert (=> b!1664134 m!2026357))

(assert (=> b!1663927 d!502686))

(declare-fun d!502688 () Bool)

(declare-fun lt!626225 () Bool)

(declare-fun e!1066885 () Bool)

(assert (=> d!502688 (= lt!626225 e!1066885)))

(declare-fun res!746782 () Bool)

(assert (=> d!502688 (=> (not res!746782) (not e!1066885))))

(declare-fun singletonSeq!1741 (Token!6036) BalanceConc!12182)

(assert (=> d!502688 (= res!746782 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))) (list!7332 (singletonSeq!1741 (h!23762 tokens!457)))))))

(declare-fun e!1066886 () Bool)

(assert (=> d!502688 (= lt!626225 e!1066886)))

(declare-fun res!746781 () Bool)

(assert (=> d!502688 (=> (not res!746781) (not e!1066886))))

(declare-fun lt!626224 () tuple2!18074)

(assert (=> d!502688 (= res!746781 (= (size!14601 (_1!10439 lt!626224)) 1))))

(assert (=> d!502688 (= lt!626224 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))))

(assert (=> d!502688 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502688 (= (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457)) lt!626225)))

(declare-fun b!1664197 () Bool)

(declare-fun res!746783 () Bool)

(assert (=> b!1664197 (=> (not res!746783) (not e!1066886))))

(declare-fun apply!4921 (BalanceConc!12182 Int) Token!6036)

(assert (=> b!1664197 (= res!746783 (= (apply!4921 (_1!10439 lt!626224) 0) (h!23762 tokens!457)))))

(declare-fun b!1664198 () Bool)

(assert (=> b!1664198 (= e!1066886 (isEmpty!11412 (_2!10439 lt!626224)))))

(declare-fun b!1664199 () Bool)

(assert (=> b!1664199 (= e!1066885 (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))))))

(assert (= (and d!502688 res!746781) b!1664197))

(assert (= (and b!1664197 res!746783) b!1664198))

(assert (= (and d!502688 res!746782) b!1664199))

(declare-fun m!2026477 () Bool)

(assert (=> d!502688 m!2026477))

(declare-fun m!2026479 () Bool)

(assert (=> d!502688 m!2026479))

(assert (=> d!502688 m!2026117))

(declare-fun m!2026481 () Bool)

(assert (=> d!502688 m!2026481))

(declare-fun m!2026483 () Bool)

(assert (=> d!502688 m!2026483))

(assert (=> d!502688 m!2026477))

(assert (=> d!502688 m!2026479))

(declare-fun m!2026485 () Bool)

(assert (=> d!502688 m!2026485))

(assert (=> d!502688 m!2026477))

(declare-fun m!2026487 () Bool)

(assert (=> d!502688 m!2026487))

(declare-fun m!2026489 () Bool)

(assert (=> b!1664197 m!2026489))

(declare-fun m!2026491 () Bool)

(assert (=> b!1664198 m!2026491))

(assert (=> b!1664199 m!2026477))

(assert (=> b!1664199 m!2026477))

(assert (=> b!1664199 m!2026479))

(assert (=> b!1664199 m!2026479))

(assert (=> b!1664199 m!2026485))

(declare-fun m!2026493 () Bool)

(assert (=> b!1664199 m!2026493))

(assert (=> b!1664034 d!502688))

(declare-fun bs!397473 () Bool)

(declare-fun d!502734 () Bool)

(assert (= bs!397473 (and d!502734 d!502650)))

(declare-fun lambda!67906 () Int)

(assert (=> bs!397473 (= lambda!67906 lambda!67896)))

(declare-fun b!1664207 () Bool)

(declare-fun e!1066894 () Bool)

(assert (=> b!1664207 (= e!1066894 true)))

(declare-fun b!1664206 () Bool)

(declare-fun e!1066893 () Bool)

(assert (=> b!1664206 (= e!1066893 e!1066894)))

(declare-fun b!1664205 () Bool)

(declare-fun e!1066892 () Bool)

(assert (=> b!1664205 (= e!1066892 e!1066893)))

(assert (=> d!502734 e!1066892))

(assert (= b!1664206 b!1664207))

(assert (= b!1664205 b!1664206))

(assert (= (and d!502734 ((_ is Cons!18362) rules!1846)) b!1664205))

(assert (=> b!1664207 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67906))))

(assert (=> b!1664207 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67906))))

(assert (=> d!502734 true))

(declare-fun lt!626234 () Bool)

(assert (=> d!502734 (= lt!626234 (forall!4172 (t!151922 tokens!457) lambda!67906))))

(declare-fun e!1066891 () Bool)

(assert (=> d!502734 (= lt!626234 e!1066891)))

(declare-fun res!746788 () Bool)

(assert (=> d!502734 (=> res!746788 e!1066891)))

(assert (=> d!502734 (= res!746788 (not ((_ is Cons!18361) (t!151922 tokens!457))))))

(assert (=> d!502734 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502734 (= (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 (t!151922 tokens!457)) lt!626234)))

(declare-fun b!1664203 () Bool)

(declare-fun e!1066890 () Bool)

(assert (=> b!1664203 (= e!1066891 e!1066890)))

(declare-fun res!746787 () Bool)

(assert (=> b!1664203 (=> (not res!746787) (not e!1066890))))

(assert (=> b!1664203 (= res!746787 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457))))))

(declare-fun b!1664204 () Bool)

(assert (=> b!1664204 (= e!1066890 (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 (t!151922 (t!151922 tokens!457))))))

(assert (= (and d!502734 (not res!746788)) b!1664203))

(assert (= (and b!1664203 res!746787) b!1664204))

(declare-fun m!2026511 () Bool)

(assert (=> d!502734 m!2026511))

(assert (=> d!502734 m!2026117))

(assert (=> b!1664203 m!2026193))

(declare-fun m!2026513 () Bool)

(assert (=> b!1664204 m!2026513))

(assert (=> b!1664035 d!502734))

(declare-fun d!502738 () Bool)

(assert (=> d!502738 (= (isEmpty!11417 (list!7335 (_2!10439 lt!626098))) ((_ is Nil!18359) (list!7335 (_2!10439 lt!626098))))))

(assert (=> d!502608 d!502738))

(declare-fun d!502740 () Bool)

(declare-fun list!7339 (Conc!6118) List!18429)

(assert (=> d!502740 (= (list!7335 (_2!10439 lt!626098)) (list!7339 (c!270827 (_2!10439 lt!626098))))))

(declare-fun bs!397475 () Bool)

(assert (= bs!397475 d!502740))

(declare-fun m!2026519 () Bool)

(assert (=> bs!397475 m!2026519))

(assert (=> d!502608 d!502740))

(declare-fun d!502744 () Bool)

(declare-fun lt!626240 () Bool)

(assert (=> d!502744 (= lt!626240 (isEmpty!11417 (list!7339 (c!270827 (_2!10439 lt!626098)))))))

(declare-fun size!14606 (Conc!6118) Int)

(assert (=> d!502744 (= lt!626240 (= (size!14606 (c!270827 (_2!10439 lt!626098))) 0))))

(assert (=> d!502744 (= (isEmpty!11418 (c!270827 (_2!10439 lt!626098))) lt!626240)))

(declare-fun bs!397476 () Bool)

(assert (= bs!397476 d!502744))

(assert (=> bs!397476 m!2026519))

(assert (=> bs!397476 m!2026519))

(declare-fun m!2026521 () Bool)

(assert (=> bs!397476 m!2026521))

(declare-fun m!2026523 () Bool)

(assert (=> bs!397476 m!2026523))

(assert (=> d!502608 d!502744))

(declare-fun d!502746 () Bool)

(declare-fun c!270878 () Bool)

(assert (=> d!502746 (= c!270878 ((_ is Node!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun e!1066899 () Bool)

(assert (=> d!502746 (= (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1066899)))

(declare-fun b!1664214 () Bool)

(declare-fun inv!23709 (Conc!6118) Bool)

(assert (=> b!1664214 (= e!1066899 (inv!23709 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun b!1664215 () Bool)

(declare-fun e!1066900 () Bool)

(assert (=> b!1664215 (= e!1066899 e!1066900)))

(declare-fun res!746791 () Bool)

(assert (=> b!1664215 (= res!746791 (not ((_ is Leaf!8956) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(assert (=> b!1664215 (=> res!746791 e!1066900)))

(declare-fun b!1664216 () Bool)

(declare-fun inv!23710 (Conc!6118) Bool)

(assert (=> b!1664216 (= e!1066900 (inv!23710 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(assert (= (and d!502746 c!270878) b!1664214))

(assert (= (and d!502746 (not c!270878)) b!1664215))

(assert (= (and b!1664215 (not res!746791)) b!1664216))

(declare-fun m!2026525 () Bool)

(assert (=> b!1664214 m!2026525))

(declare-fun m!2026527 () Bool)

(assert (=> b!1664216 m!2026527))

(assert (=> b!1663932 d!502746))

(declare-fun d!502748 () Bool)

(assert (=> d!502748 true))

(declare-fun lambda!67909 () Int)

(declare-fun order!11005 () Int)

(declare-fun dynLambda!8260 (Int Int) Int)

(assert (=> d!502748 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8260 order!11005 lambda!67909))))

(declare-fun Forall2!529 (Int) Bool)

(assert (=> d!502748 (= (equivClasses!1201 (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (Forall2!529 lambda!67909))))

(declare-fun bs!397477 () Bool)

(assert (= bs!397477 d!502748))

(declare-fun m!2026529 () Bool)

(assert (=> bs!397477 m!2026529))

(assert (=> b!1663871 d!502748))

(declare-fun bs!397478 () Bool)

(declare-fun d!502750 () Bool)

(assert (= bs!397478 (and d!502750 d!502748)))

(declare-fun lambda!67910 () Int)

(assert (=> bs!397478 (= (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (= lambda!67910 lambda!67909))))

(assert (=> d!502750 true))

(assert (=> d!502750 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (dynLambda!8260 order!11005 lambda!67910))))

(assert (=> d!502750 (= (equivClasses!1201 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (Forall2!529 lambda!67910))))

(declare-fun bs!397479 () Bool)

(assert (= bs!397479 d!502750))

(declare-fun m!2026531 () Bool)

(assert (=> bs!397479 m!2026531))

(assert (=> b!1663868 d!502750))

(declare-fun d!502752 () Bool)

(assert (=> d!502752 (= (list!7335 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))) (list!7339 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun bs!397480 () Bool)

(assert (= bs!397480 d!502752))

(declare-fun m!2026533 () Bool)

(assert (=> bs!397480 m!2026533))

(assert (=> b!1663926 d!502752))

(declare-fun d!502754 () Bool)

(assert (=> d!502754 true))

(declare-fun lambda!67913 () Int)

(declare-fun order!11007 () Int)

(declare-fun dynLambda!8261 (Int Int) Int)

(assert (=> d!502754 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8261 order!11007 lambda!67913))))

(assert (=> d!502754 true))

(assert (=> d!502754 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8261 order!11007 lambda!67913))))

(declare-fun Forall!658 (Int) Bool)

(assert (=> d!502754 (= (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (Forall!658 lambda!67913))))

(declare-fun bs!397481 () Bool)

(assert (= bs!397481 d!502754))

(declare-fun m!2026535 () Bool)

(assert (=> bs!397481 m!2026535))

(assert (=> d!502622 d!502754))

(declare-fun d!502756 () Bool)

(declare-fun lt!626243 () Bool)

(declare-fun isEmpty!11422 (List!18431) Bool)

(assert (=> d!502756 (= lt!626243 (isEmpty!11422 (list!7332 (_1!10439 lt!626151))))))

(declare-fun isEmpty!11423 (Conc!6119) Bool)

(assert (=> d!502756 (= lt!626243 (isEmpty!11423 (c!270829 (_1!10439 lt!626151))))))

(assert (=> d!502756 (= (isEmpty!11419 (_1!10439 lt!626151)) lt!626243)))

(declare-fun bs!397482 () Bool)

(assert (= bs!397482 d!502756))

(assert (=> bs!397482 m!2026217))

(assert (=> bs!397482 m!2026217))

(declare-fun m!2026537 () Bool)

(assert (=> bs!397482 m!2026537))

(declare-fun m!2026539 () Bool)

(assert (=> bs!397482 m!2026539))

(assert (=> b!1663904 d!502756))

(declare-fun d!502758 () Bool)

(declare-fun e!1066905 () Bool)

(assert (=> d!502758 e!1066905))

(declare-fun res!746796 () Bool)

(assert (=> d!502758 (=> (not res!746796) (not e!1066905))))

(declare-fun lt!626246 () BalanceConc!12182)

(assert (=> d!502758 (= res!746796 (= (list!7332 lt!626246) tokens!457))))

(declare-fun fromList!406 (List!18431) Conc!6119)

(assert (=> d!502758 (= lt!626246 (BalanceConc!12183 (fromList!406 tokens!457)))))

(assert (=> d!502758 (= (fromListB!1001 tokens!457) lt!626246)))

(declare-fun b!1664227 () Bool)

(declare-fun isBalanced!1896 (Conc!6119) Bool)

(assert (=> b!1664227 (= e!1066905 (isBalanced!1896 (fromList!406 tokens!457)))))

(assert (= (and d!502758 res!746796) b!1664227))

(declare-fun m!2026541 () Bool)

(assert (=> d!502758 m!2026541))

(declare-fun m!2026543 () Bool)

(assert (=> d!502758 m!2026543))

(assert (=> b!1664227 m!2026543))

(assert (=> b!1664227 m!2026543))

(declare-fun m!2026545 () Bool)

(assert (=> b!1664227 m!2026545))

(assert (=> d!502642 d!502758))

(declare-fun d!502760 () Bool)

(declare-fun res!746801 () Bool)

(declare-fun e!1066910 () Bool)

(assert (=> d!502760 (=> res!746801 e!1066910)))

(assert (=> d!502760 (= res!746801 ((_ is Nil!18362) rules!1846))))

(assert (=> d!502760 (= (noDuplicateTag!1188 thiss!17113 rules!1846 Nil!18364) e!1066910)))

(declare-fun b!1664232 () Bool)

(declare-fun e!1066911 () Bool)

(assert (=> b!1664232 (= e!1066910 e!1066911)))

(declare-fun res!746802 () Bool)

(assert (=> b!1664232 (=> (not res!746802) (not e!1066911))))

(declare-fun contains!3204 (List!18434 String!20957) Bool)

(assert (=> b!1664232 (= res!746802 (not (contains!3204 Nil!18364 (tag!3519 (h!23763 rules!1846)))))))

(declare-fun b!1664233 () Bool)

(assert (=> b!1664233 (= e!1066911 (noDuplicateTag!1188 thiss!17113 (t!151923 rules!1846) (Cons!18364 (tag!3519 (h!23763 rules!1846)) Nil!18364)))))

(assert (= (and d!502760 (not res!746801)) b!1664232))

(assert (= (and b!1664232 res!746802) b!1664233))

(declare-fun m!2026547 () Bool)

(assert (=> b!1664232 m!2026547))

(declare-fun m!2026549 () Bool)

(assert (=> b!1664233 m!2026549))

(assert (=> b!1663935 d!502760))

(declare-fun d!502762 () Bool)

(assert (=> d!502762 (= (list!7335 lt!626154) (list!7339 (c!270827 lt!626154)))))

(declare-fun bs!397483 () Bool)

(assert (= bs!397483 d!502762))

(declare-fun m!2026551 () Bool)

(assert (=> bs!397483 m!2026551))

(assert (=> d!502640 d!502762))

(declare-fun d!502764 () Bool)

(declare-fun c!270882 () Bool)

(assert (=> d!502764 (= c!270882 ((_ is Cons!18361) (list!7332 (seqFromList!2208 tokens!457))))))

(declare-fun e!1066914 () List!18429)

(assert (=> d!502764 (= (printList!977 thiss!17113 (list!7332 (seqFromList!2208 tokens!457))) e!1066914)))

(declare-fun b!1664238 () Bool)

(declare-fun ++!4996 (List!18429 List!18429) List!18429)

(assert (=> b!1664238 (= e!1066914 (++!4996 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))) (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457))))))))

(declare-fun b!1664239 () Bool)

(assert (=> b!1664239 (= e!1066914 Nil!18359)))

(assert (= (and d!502764 c!270882) b!1664238))

(assert (= (and d!502764 (not c!270882)) b!1664239))

(declare-fun m!2026553 () Bool)

(assert (=> b!1664238 m!2026553))

(assert (=> b!1664238 m!2026553))

(declare-fun m!2026555 () Bool)

(assert (=> b!1664238 m!2026555))

(declare-fun m!2026557 () Bool)

(assert (=> b!1664238 m!2026557))

(assert (=> b!1664238 m!2026555))

(assert (=> b!1664238 m!2026557))

(declare-fun m!2026559 () Bool)

(assert (=> b!1664238 m!2026559))

(assert (=> d!502640 d!502764))

(declare-fun d!502766 () Bool)

(assert (=> d!502766 (= (list!7332 (seqFromList!2208 tokens!457)) (list!7336 (c!270829 (seqFromList!2208 tokens!457))))))

(declare-fun bs!397484 () Bool)

(assert (= bs!397484 d!502766))

(declare-fun m!2026561 () Bool)

(assert (=> bs!397484 m!2026561))

(assert (=> d!502640 d!502766))

(declare-fun d!502768 () Bool)

(declare-fun lt!626263 () BalanceConc!12180)

(declare-fun printListTailRec!411 (LexerInterface!2864 List!18431 List!18429) List!18429)

(declare-fun dropList!708 (BalanceConc!12182 Int) List!18431)

(assert (=> d!502768 (= (list!7335 lt!626263) (printListTailRec!411 thiss!17113 (dropList!708 (seqFromList!2208 tokens!457) 0) (list!7335 (BalanceConc!12181 Empty!6118))))))

(declare-fun e!1066920 () BalanceConc!12180)

(assert (=> d!502768 (= lt!626263 e!1066920)))

(declare-fun c!270885 () Bool)

(assert (=> d!502768 (= c!270885 (>= 0 (size!14601 (seqFromList!2208 tokens!457))))))

(declare-fun e!1066919 () Bool)

(assert (=> d!502768 e!1066919))

(declare-fun res!746805 () Bool)

(assert (=> d!502768 (=> (not res!746805) (not e!1066919))))

(assert (=> d!502768 (= res!746805 (>= 0 0))))

(assert (=> d!502768 (= (printTailRec!915 thiss!17113 (seqFromList!2208 tokens!457) 0 (BalanceConc!12181 Empty!6118)) lt!626263)))

(declare-fun b!1664246 () Bool)

(assert (=> b!1664246 (= e!1066919 (<= 0 (size!14601 (seqFromList!2208 tokens!457))))))

(declare-fun b!1664247 () Bool)

(assert (=> b!1664247 (= e!1066920 (BalanceConc!12181 Empty!6118))))

(declare-fun b!1664248 () Bool)

(declare-fun ++!4997 (BalanceConc!12180 BalanceConc!12180) BalanceConc!12180)

(assert (=> b!1664248 (= e!1066920 (printTailRec!915 thiss!17113 (seqFromList!2208 tokens!457) (+ 0 1) (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0)))))))

(declare-fun lt!626264 () List!18431)

(assert (=> b!1664248 (= lt!626264 (list!7332 (seqFromList!2208 tokens!457)))))

(declare-fun lt!626267 () Unit!31104)

(declare-fun lemmaDropApply!618 (List!18431 Int) Unit!31104)

(assert (=> b!1664248 (= lt!626267 (lemmaDropApply!618 lt!626264 0))))

(declare-fun head!3717 (List!18431) Token!6036)

(declare-fun drop!934 (List!18431 Int) List!18431)

(declare-fun apply!4922 (List!18431 Int) Token!6036)

(assert (=> b!1664248 (= (head!3717 (drop!934 lt!626264 0)) (apply!4922 lt!626264 0))))

(declare-fun lt!626261 () Unit!31104)

(assert (=> b!1664248 (= lt!626261 lt!626267)))

(declare-fun lt!626266 () List!18431)

(assert (=> b!1664248 (= lt!626266 (list!7332 (seqFromList!2208 tokens!457)))))

(declare-fun lt!626262 () Unit!31104)

(declare-fun lemmaDropTail!598 (List!18431 Int) Unit!31104)

(assert (=> b!1664248 (= lt!626262 (lemmaDropTail!598 lt!626266 0))))

(declare-fun tail!2482 (List!18431) List!18431)

(assert (=> b!1664248 (= (tail!2482 (drop!934 lt!626266 0)) (drop!934 lt!626266 (+ 0 1)))))

(declare-fun lt!626265 () Unit!31104)

(assert (=> b!1664248 (= lt!626265 lt!626262)))

(assert (= (and d!502768 res!746805) b!1664246))

(assert (= (and d!502768 c!270885) b!1664247))

(assert (= (and d!502768 (not c!270885)) b!1664248))

(declare-fun m!2026563 () Bool)

(assert (=> d!502768 m!2026563))

(assert (=> d!502768 m!2026125))

(declare-fun m!2026565 () Bool)

(assert (=> d!502768 m!2026565))

(declare-fun m!2026567 () Bool)

(assert (=> d!502768 m!2026567))

(assert (=> d!502768 m!2026125))

(declare-fun m!2026569 () Bool)

(assert (=> d!502768 m!2026569))

(assert (=> d!502768 m!2026565))

(assert (=> d!502768 m!2026563))

(declare-fun m!2026571 () Bool)

(assert (=> d!502768 m!2026571))

(assert (=> b!1664246 m!2026125))

(assert (=> b!1664246 m!2026569))

(assert (=> b!1664248 m!2026125))

(assert (=> b!1664248 m!2026231))

(declare-fun m!2026573 () Bool)

(assert (=> b!1664248 m!2026573))

(declare-fun m!2026575 () Bool)

(assert (=> b!1664248 m!2026575))

(declare-fun m!2026577 () Bool)

(assert (=> b!1664248 m!2026577))

(declare-fun m!2026579 () Bool)

(assert (=> b!1664248 m!2026579))

(declare-fun m!2026581 () Bool)

(assert (=> b!1664248 m!2026581))

(assert (=> b!1664248 m!2026573))

(assert (=> b!1664248 m!2026125))

(declare-fun m!2026583 () Bool)

(assert (=> b!1664248 m!2026583))

(declare-fun m!2026585 () Bool)

(assert (=> b!1664248 m!2026585))

(assert (=> b!1664248 m!2026583))

(declare-fun m!2026587 () Bool)

(assert (=> b!1664248 m!2026587))

(assert (=> b!1664248 m!2026587))

(declare-fun m!2026589 () Bool)

(assert (=> b!1664248 m!2026589))

(declare-fun m!2026591 () Bool)

(assert (=> b!1664248 m!2026591))

(assert (=> b!1664248 m!2026125))

(assert (=> b!1664248 m!2026589))

(declare-fun m!2026593 () Bool)

(assert (=> b!1664248 m!2026593))

(assert (=> b!1664248 m!2026579))

(declare-fun m!2026595 () Bool)

(assert (=> b!1664248 m!2026595))

(assert (=> d!502640 d!502768))

(declare-fun d!502770 () Bool)

(assert (=> d!502770 (= (list!7335 (_2!10439 lt!626151)) (list!7339 (c!270827 (_2!10439 lt!626151))))))

(declare-fun bs!397485 () Bool)

(assert (= bs!397485 d!502770))

(declare-fun m!2026597 () Bool)

(assert (=> bs!397485 m!2026597))

(assert (=> b!1663905 d!502770))

(declare-fun d!502772 () Bool)

(declare-fun e!1066928 () Bool)

(assert (=> d!502772 e!1066928))

(declare-fun c!270890 () Bool)

(declare-fun lt!626276 () tuple2!18078)

(declare-fun size!14607 (List!18431) Int)

(assert (=> d!502772 (= c!270890 (> (size!14607 (_1!10441 lt!626276)) 0))))

(declare-fun e!1066927 () tuple2!18078)

(assert (=> d!502772 (= lt!626276 e!1066927)))

(declare-fun c!270891 () Bool)

(declare-datatypes ((tuple2!18084 0))(
  ( (tuple2!18085 (_1!10444 Token!6036) (_2!10444 List!18429)) )
))
(declare-datatypes ((Option!3523 0))(
  ( (None!3522) (Some!3522 (v!24757 tuple2!18084)) )
))
(declare-fun lt!626274 () Option!3523)

(assert (=> d!502772 (= c!270891 ((_ is Some!3522) lt!626274))))

(declare-fun maxPrefix!1426 (LexerInterface!2864 List!18432 List!18429) Option!3523)

(assert (=> d!502772 (= lt!626274 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!502772 (= (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) lt!626276)))

(declare-fun b!1664259 () Bool)

(declare-fun e!1066929 () Bool)

(assert (=> b!1664259 (= e!1066929 (not (isEmpty!11422 (_1!10441 lt!626276))))))

(declare-fun b!1664260 () Bool)

(assert (=> b!1664260 (= e!1066927 (tuple2!18079 Nil!18361 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664261 () Bool)

(assert (=> b!1664261 (= e!1066928 e!1066929)))

(declare-fun res!746808 () Bool)

(assert (=> b!1664261 (= res!746808 (< (size!14602 (_2!10441 lt!626276)) (size!14602 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))

(assert (=> b!1664261 (=> (not res!746808) (not e!1066929))))

(declare-fun b!1664262 () Bool)

(assert (=> b!1664262 (= e!1066928 (= (_2!10441 lt!626276) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664263 () Bool)

(declare-fun lt!626275 () tuple2!18078)

(assert (=> b!1664263 (= e!1066927 (tuple2!18079 (Cons!18361 (_1!10444 (v!24757 lt!626274)) (_1!10441 lt!626275)) (_2!10441 lt!626275)))))

(assert (=> b!1664263 (= lt!626275 (lexList!889 thiss!17113 rules!1846 (_2!10444 (v!24757 lt!626274))))))

(assert (= (and d!502772 c!270891) b!1664263))

(assert (= (and d!502772 (not c!270891)) b!1664260))

(assert (= (and d!502772 c!270890) b!1664261))

(assert (= (and d!502772 (not c!270890)) b!1664262))

(assert (= (and b!1664261 res!746808) b!1664259))

(declare-fun m!2026599 () Bool)

(assert (=> d!502772 m!2026599))

(assert (=> d!502772 m!2026219))

(declare-fun m!2026601 () Bool)

(assert (=> d!502772 m!2026601))

(declare-fun m!2026603 () Bool)

(assert (=> b!1664259 m!2026603))

(declare-fun m!2026605 () Bool)

(assert (=> b!1664261 m!2026605))

(assert (=> b!1664261 m!2026219))

(declare-fun m!2026607 () Bool)

(assert (=> b!1664261 m!2026607))

(declare-fun m!2026609 () Bool)

(assert (=> b!1664263 m!2026609))

(assert (=> b!1663905 d!502772))

(declare-fun d!502774 () Bool)

(assert (=> d!502774 (= (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) (list!7339 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun bs!397486 () Bool)

(assert (= bs!397486 d!502774))

(declare-fun m!2026611 () Bool)

(assert (=> bs!397486 m!2026611))

(assert (=> b!1663905 d!502774))

(declare-fun d!502776 () Bool)

(declare-fun charsToBigInt!1 (List!18430) Int)

(assert (=> d!502776 (= (inv!17 (value!101870 (h!23762 tokens!457))) (= (charsToBigInt!1 (text!23723 (value!101870 (h!23762 tokens!457)))) (value!101862 (value!101870 (h!23762 tokens!457)))))))

(declare-fun bs!397487 () Bool)

(assert (= bs!397487 d!502776))

(declare-fun m!2026613 () Bool)

(assert (=> bs!397487 m!2026613))

(assert (=> b!1663918 d!502776))

(declare-fun d!502778 () Bool)

(assert (=> d!502778 (= (inv!23698 (tag!3519 (rule!5123 (h!23762 (t!151922 tokens!457))))) (= (mod (str.len (value!101869 (tag!3519 (rule!5123 (h!23762 (t!151922 tokens!457)))))) 2) 0))))

(assert (=> b!1664095 d!502778))

(declare-fun d!502780 () Bool)

(declare-fun res!746809 () Bool)

(declare-fun e!1066930 () Bool)

(assert (=> d!502780 (=> (not res!746809) (not e!1066930))))

(assert (=> d!502780 (= res!746809 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))))))

(assert (=> d!502780 (= (inv!23701 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) e!1066930)))

(declare-fun b!1664264 () Bool)

(assert (=> b!1664264 (= e!1066930 (equivClasses!1201 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))))))

(assert (= (and d!502780 res!746809) b!1664264))

(declare-fun m!2026615 () Bool)

(assert (=> d!502780 m!2026615))

(declare-fun m!2026617 () Bool)

(assert (=> b!1664264 m!2026617))

(assert (=> b!1664095 d!502780))

(declare-fun d!502782 () Bool)

(declare-fun lt!626279 () Int)

(assert (=> d!502782 (= lt!626279 (size!14607 (list!7332 (_1!10439 lt!626151))))))

(declare-fun size!14608 (Conc!6119) Int)

(assert (=> d!502782 (= lt!626279 (size!14608 (c!270829 (_1!10439 lt!626151))))))

(assert (=> d!502782 (= (size!14601 (_1!10439 lt!626151)) lt!626279)))

(declare-fun bs!397488 () Bool)

(assert (= bs!397488 d!502782))

(assert (=> bs!397488 m!2026217))

(assert (=> bs!397488 m!2026217))

(declare-fun m!2026619 () Bool)

(assert (=> bs!397488 m!2026619))

(declare-fun m!2026621 () Bool)

(assert (=> bs!397488 m!2026621))

(assert (=> d!502638 d!502782))

(declare-fun b!1664300 () Bool)

(declare-fun e!1066953 () tuple2!18074)

(declare-fun lt!626457 () BalanceConc!12180)

(assert (=> b!1664300 (= e!1066953 (tuple2!18075 (BalanceConc!12183 Empty!6119) lt!626457))))

(declare-fun d!502784 () Bool)

(declare-fun e!1066951 () Bool)

(assert (=> d!502784 e!1066951))

(declare-fun res!746815 () Bool)

(assert (=> d!502784 (=> (not res!746815) (not e!1066951))))

(declare-fun lt!626482 () tuple2!18074)

(declare-fun lexRec!379 (LexerInterface!2864 List!18432 BalanceConc!12180) tuple2!18074)

(assert (=> d!502784 (= res!746815 (= (list!7332 (_1!10439 lt!626482)) (list!7332 (_1!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun e!1066954 () tuple2!18074)

(assert (=> d!502784 (= lt!626482 e!1066954)))

(declare-fun c!270908 () Bool)

(declare-datatypes ((tuple2!18086 0))(
  ( (tuple2!18087 (_1!10445 Token!6036) (_2!10445 BalanceConc!12180)) )
))
(declare-datatypes ((Option!3524 0))(
  ( (None!3523) (Some!3523 (v!24758 tuple2!18086)) )
))
(declare-fun lt!626472 () Option!3524)

(assert (=> d!502784 (= c!270908 ((_ is Some!3523) lt!626472))))

(declare-fun maxPrefixZipperSequenceV2!274 (LexerInterface!2864 List!18432 BalanceConc!12180 BalanceConc!12180) Option!3524)

(assert (=> d!502784 (= lt!626472 (maxPrefixZipperSequenceV2!274 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun lt!626480 () Unit!31104)

(declare-fun lt!626475 () Unit!31104)

(assert (=> d!502784 (= lt!626480 lt!626475)))

(declare-fun lt!626459 () List!18429)

(declare-fun lt!626455 () List!18429)

(declare-fun isSuffix!425 (List!18429 List!18429) Bool)

(assert (=> d!502784 (isSuffix!425 lt!626459 (++!4996 lt!626455 lt!626459))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!326 (List!18429 List!18429) Unit!31104)

(assert (=> d!502784 (= lt!626475 (lemmaConcatTwoListThenFSndIsSuffix!326 lt!626455 lt!626459))))

(assert (=> d!502784 (= lt!626459 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!502784 (= lt!626455 (list!7335 (BalanceConc!12181 Empty!6118)))))

(assert (=> d!502784 (= (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (BalanceConc!12181 Empty!6118) (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (BalanceConc!12183 Empty!6119)) lt!626482)))

(declare-fun b!1664301 () Bool)

(declare-fun e!1066952 () tuple2!18074)

(assert (=> b!1664301 (= e!1066952 (tuple2!18075 (BalanceConc!12183 Empty!6119) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1664302 () Bool)

(declare-fun lt!626474 () Option!3524)

(declare-fun lt!626467 () tuple2!18074)

(assert (=> b!1664302 (= lt!626467 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626474))))))

(declare-fun prepend!817 (BalanceConc!12182 Token!6036) BalanceConc!12182)

(assert (=> b!1664302 (= e!1066952 (tuple2!18075 (prepend!817 (_1!10439 lt!626467) (_1!10445 (v!24758 lt!626474))) (_2!10439 lt!626467)))))

(declare-fun b!1664303 () Bool)

(assert (=> b!1664303 (= e!1066954 (tuple2!18075 (BalanceConc!12183 Empty!6119) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1664304 () Bool)

(assert (=> b!1664304 (= e!1066951 (= (list!7335 (_2!10439 lt!626482)) (list!7335 (_2!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun b!1664305 () Bool)

(declare-fun lt!626452 () tuple2!18074)

(declare-fun lt!626454 () Option!3524)

(assert (=> b!1664305 (= lt!626452 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626454))))))

(assert (=> b!1664305 (= e!1066953 (tuple2!18075 (prepend!817 (_1!10439 lt!626452) (_1!10445 (v!24758 lt!626454))) (_2!10439 lt!626452)))))

(declare-fun lt!626465 () BalanceConc!12180)

(declare-fun b!1664306 () Bool)

(declare-fun append!562 (BalanceConc!12182 Token!6036) BalanceConc!12182)

(assert (=> b!1664306 (= e!1066954 (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) lt!626465 (_2!10445 (v!24758 lt!626472)) (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!626463 () tuple2!18074)

(assert (=> b!1664306 (= lt!626463 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472))))))

(declare-fun lt!626458 () List!18429)

(assert (=> b!1664306 (= lt!626458 (list!7335 (BalanceConc!12181 Empty!6118)))))

(declare-fun lt!626476 () List!18429)

(assert (=> b!1664306 (= lt!626476 (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!626464 () List!18429)

(assert (=> b!1664306 (= lt!626464 (list!7335 (_2!10445 (v!24758 lt!626472))))))

(declare-fun lt!626479 () Unit!31104)

(declare-fun lemmaConcatAssociativity!1034 (List!18429 List!18429 List!18429) Unit!31104)

(assert (=> b!1664306 (= lt!626479 (lemmaConcatAssociativity!1034 lt!626458 lt!626476 lt!626464))))

(assert (=> b!1664306 (= (++!4996 (++!4996 lt!626458 lt!626476) lt!626464) (++!4996 lt!626458 (++!4996 lt!626476 lt!626464)))))

(declare-fun lt!626473 () Unit!31104)

(assert (=> b!1664306 (= lt!626473 lt!626479)))

(declare-fun maxPrefixZipperSequence!741 (LexerInterface!2864 List!18432 BalanceConc!12180) Option!3524)

(assert (=> b!1664306 (= lt!626474 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun c!270907 () Bool)

(assert (=> b!1664306 (= c!270907 ((_ is Some!3523) lt!626474))))

(assert (=> b!1664306 (= (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) e!1066952)))

(declare-fun lt!626478 () Unit!31104)

(declare-fun Unit!31114 () Unit!31104)

(assert (=> b!1664306 (= lt!626478 Unit!31114)))

(declare-fun lt!626484 () List!18431)

(assert (=> b!1664306 (= lt!626484 (list!7332 (BalanceConc!12183 Empty!6119)))))

(declare-fun lt!626456 () List!18431)

(assert (=> b!1664306 (= lt!626456 (Cons!18361 (_1!10445 (v!24758 lt!626472)) Nil!18361))))

(declare-fun lt!626481 () List!18431)

(assert (=> b!1664306 (= lt!626481 (list!7332 (_1!10439 lt!626463)))))

(declare-fun lt!626483 () Unit!31104)

(declare-fun lemmaConcatAssociativity!1035 (List!18431 List!18431 List!18431) Unit!31104)

(assert (=> b!1664306 (= lt!626483 (lemmaConcatAssociativity!1035 lt!626484 lt!626456 lt!626481))))

(declare-fun ++!4998 (List!18431 List!18431) List!18431)

(assert (=> b!1664306 (= (++!4998 (++!4998 lt!626484 lt!626456) lt!626481) (++!4998 lt!626484 (++!4998 lt!626456 lt!626481)))))

(declare-fun lt!626468 () Unit!31104)

(assert (=> b!1664306 (= lt!626468 lt!626483)))

(declare-fun lt!626477 () List!18429)

(assert (=> b!1664306 (= lt!626477 (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))

(declare-fun lt!626451 () List!18429)

(assert (=> b!1664306 (= lt!626451 (list!7335 (_2!10445 (v!24758 lt!626472))))))

(declare-fun lt!626470 () List!18431)

(assert (=> b!1664306 (= lt!626470 (list!7332 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!626461 () Unit!31104)

(declare-fun lemmaLexThenLexPrefix!267 (LexerInterface!2864 List!18432 List!18429 List!18429 List!18431 List!18431 List!18429) Unit!31104)

(assert (=> b!1664306 (= lt!626461 (lemmaLexThenLexPrefix!267 thiss!17113 rules!1846 lt!626477 lt!626451 lt!626470 (list!7332 (_1!10439 lt!626463)) (list!7335 (_2!10439 lt!626463))))))

(assert (=> b!1664306 (= (lexList!889 thiss!17113 rules!1846 lt!626477) (tuple2!18079 lt!626470 Nil!18359))))

(declare-fun lt!626466 () Unit!31104)

(assert (=> b!1664306 (= lt!626466 lt!626461)))

(assert (=> b!1664306 (= lt!626457 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))

(assert (=> b!1664306 (= lt!626454 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 lt!626457))))

(declare-fun c!270909 () Bool)

(assert (=> b!1664306 (= c!270909 ((_ is Some!3523) lt!626454))))

(assert (=> b!1664306 (= (lexRec!379 thiss!17113 rules!1846 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472))))) e!1066953)))

(declare-fun lt!626469 () Unit!31104)

(declare-fun Unit!31115 () Unit!31104)

(assert (=> b!1664306 (= lt!626469 Unit!31115)))

(assert (=> b!1664306 (= lt!626465 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!626462 () List!18429)

(assert (=> b!1664306 (= lt!626462 (list!7335 lt!626465))))

(declare-fun lt!626471 () List!18429)

(assert (=> b!1664306 (= lt!626471 (list!7335 (_2!10445 (v!24758 lt!626472))))))

(declare-fun lt!626453 () Unit!31104)

(assert (=> b!1664306 (= lt!626453 (lemmaConcatTwoListThenFSndIsSuffix!326 lt!626462 lt!626471))))

(assert (=> b!1664306 (isSuffix!425 lt!626471 (++!4996 lt!626462 lt!626471))))

(declare-fun lt!626460 () Unit!31104)

(assert (=> b!1664306 (= lt!626460 lt!626453)))

(assert (= (and d!502784 c!270908) b!1664306))

(assert (= (and d!502784 (not c!270908)) b!1664303))

(assert (= (and b!1664306 c!270907) b!1664302))

(assert (= (and b!1664306 (not c!270907)) b!1664301))

(assert (= (and b!1664306 c!270909) b!1664305))

(assert (= (and b!1664306 (not c!270909)) b!1664300))

(assert (= (and d!502784 res!746815) b!1664304))

(declare-fun m!2026731 () Bool)

(assert (=> b!1664302 m!2026731))

(declare-fun m!2026733 () Bool)

(assert (=> b!1664302 m!2026733))

(declare-fun m!2026735 () Bool)

(assert (=> b!1664304 m!2026735))

(assert (=> b!1664304 m!2026127))

(declare-fun m!2026737 () Bool)

(assert (=> b!1664304 m!2026737))

(declare-fun m!2026739 () Bool)

(assert (=> b!1664304 m!2026739))

(declare-fun m!2026741 () Bool)

(assert (=> b!1664306 m!2026741))

(assert (=> b!1664306 m!2026563))

(declare-fun m!2026743 () Bool)

(assert (=> b!1664306 m!2026743))

(declare-fun m!2026745 () Bool)

(assert (=> b!1664306 m!2026745))

(assert (=> b!1664306 m!2026741))

(declare-fun m!2026747 () Bool)

(assert (=> b!1664306 m!2026747))

(declare-fun m!2026749 () Bool)

(assert (=> b!1664306 m!2026749))

(declare-fun m!2026751 () Bool)

(assert (=> b!1664306 m!2026751))

(declare-fun m!2026753 () Bool)

(assert (=> b!1664306 m!2026753))

(declare-fun m!2026755 () Bool)

(assert (=> b!1664306 m!2026755))

(declare-fun m!2026757 () Bool)

(assert (=> b!1664306 m!2026757))

(declare-fun m!2026759 () Bool)

(assert (=> b!1664306 m!2026759))

(assert (=> b!1664306 m!2026755))

(declare-fun m!2026761 () Bool)

(assert (=> b!1664306 m!2026761))

(assert (=> b!1664306 m!2026563))

(assert (=> b!1664306 m!2026127))

(assert (=> b!1664306 m!2026749))

(declare-fun m!2026763 () Bool)

(assert (=> b!1664306 m!2026763))

(declare-fun m!2026765 () Bool)

(assert (=> b!1664306 m!2026765))

(declare-fun m!2026767 () Bool)

(assert (=> b!1664306 m!2026767))

(declare-fun m!2026769 () Bool)

(assert (=> b!1664306 m!2026769))

(declare-fun m!2026771 () Bool)

(assert (=> b!1664306 m!2026771))

(assert (=> b!1664306 m!2026767))

(assert (=> b!1664306 m!2026769))

(declare-fun m!2026773 () Bool)

(assert (=> b!1664306 m!2026773))

(declare-fun m!2026775 () Bool)

(assert (=> b!1664306 m!2026775))

(declare-fun m!2026777 () Bool)

(assert (=> b!1664306 m!2026777))

(declare-fun m!2026779 () Bool)

(assert (=> b!1664306 m!2026779))

(assert (=> b!1664306 m!2026753))

(declare-fun m!2026781 () Bool)

(assert (=> b!1664306 m!2026781))

(assert (=> b!1664306 m!2026777))

(declare-fun m!2026783 () Bool)

(assert (=> b!1664306 m!2026783))

(assert (=> b!1664306 m!2026127))

(assert (=> b!1664306 m!2026737))

(assert (=> b!1664306 m!2026757))

(assert (=> b!1664306 m!2026743))

(assert (=> b!1664306 m!2026749))

(declare-fun m!2026785 () Bool)

(assert (=> b!1664306 m!2026785))

(declare-fun m!2026787 () Bool)

(assert (=> b!1664306 m!2026787))

(assert (=> b!1664306 m!2026757))

(declare-fun m!2026789 () Bool)

(assert (=> b!1664306 m!2026789))

(declare-fun m!2026791 () Bool)

(assert (=> b!1664306 m!2026791))

(assert (=> b!1664306 m!2026791))

(declare-fun m!2026793 () Bool)

(assert (=> b!1664306 m!2026793))

(assert (=> b!1664306 m!2026127))

(declare-fun m!2026795 () Bool)

(assert (=> b!1664306 m!2026795))

(declare-fun m!2026797 () Bool)

(assert (=> b!1664306 m!2026797))

(declare-fun m!2026799 () Bool)

(assert (=> b!1664306 m!2026799))

(assert (=> b!1664306 m!2026759))

(declare-fun m!2026801 () Bool)

(assert (=> b!1664306 m!2026801))

(declare-fun m!2026803 () Bool)

(assert (=> b!1664305 m!2026803))

(declare-fun m!2026805 () Bool)

(assert (=> b!1664305 m!2026805))

(declare-fun m!2026807 () Bool)

(assert (=> d!502784 m!2026807))

(assert (=> d!502784 m!2026127))

(assert (=> d!502784 m!2026737))

(declare-fun m!2026809 () Bool)

(assert (=> d!502784 m!2026809))

(assert (=> d!502784 m!2026127))

(assert (=> d!502784 m!2026219))

(declare-fun m!2026811 () Bool)

(assert (=> d!502784 m!2026811))

(assert (=> d!502784 m!2026563))

(declare-fun m!2026813 () Bool)

(assert (=> d!502784 m!2026813))

(assert (=> d!502784 m!2026127))

(assert (=> d!502784 m!2026127))

(declare-fun m!2026815 () Bool)

(assert (=> d!502784 m!2026815))

(assert (=> d!502784 m!2026813))

(declare-fun m!2026817 () Bool)

(assert (=> d!502784 m!2026817))

(assert (=> d!502638 d!502784))

(declare-fun d!502794 () Bool)

(declare-fun charsToBigInt!0 (List!18430 Int) Int)

(assert (=> d!502794 (= (inv!15 (value!101870 (h!23762 tokens!457))) (= (charsToBigInt!0 (text!23724 (value!101870 (h!23762 tokens!457))) 0) (value!101865 (value!101870 (h!23762 tokens!457)))))))

(declare-fun bs!397492 () Bool)

(assert (= bs!397492 d!502794))

(declare-fun m!2026819 () Bool)

(assert (=> bs!397492 m!2026819))

(assert (=> b!1663917 d!502794))

(declare-fun d!502796 () Bool)

(declare-fun charsToInt!0 (List!18430) (_ BitVec 32))

(assert (=> d!502796 (= (inv!16 (value!101870 (h!23762 tokens!457))) (= (charsToInt!0 (text!23722 (value!101870 (h!23762 tokens!457)))) (value!101861 (value!101870 (h!23762 tokens!457)))))))

(declare-fun bs!397493 () Bool)

(assert (= bs!397493 d!502796))

(declare-fun m!2026821 () Bool)

(assert (=> bs!397493 m!2026821))

(assert (=> b!1663919 d!502796))

(declare-fun d!502798 () Bool)

(assert (=> d!502798 (= (list!7332 (_1!10439 lt!626151)) (list!7336 (c!270829 (_1!10439 lt!626151))))))

(declare-fun bs!397494 () Bool)

(assert (= bs!397494 d!502798))

(declare-fun m!2026823 () Bool)

(assert (=> bs!397494 m!2026823))

(assert (=> b!1663903 d!502798))

(assert (=> b!1663903 d!502772))

(assert (=> b!1663903 d!502774))

(declare-fun d!502800 () Bool)

(declare-fun lt!626487 () Int)

(assert (=> d!502800 (= lt!626487 (size!14602 (list!7335 (_2!10439 lt!626151))))))

(assert (=> d!502800 (= lt!626487 (size!14606 (c!270827 (_2!10439 lt!626151))))))

(assert (=> d!502800 (= (size!14600 (_2!10439 lt!626151)) lt!626487)))

(declare-fun bs!397495 () Bool)

(assert (= bs!397495 d!502800))

(assert (=> bs!397495 m!2026227))

(assert (=> bs!397495 m!2026227))

(declare-fun m!2026825 () Bool)

(assert (=> bs!397495 m!2026825))

(declare-fun m!2026827 () Bool)

(assert (=> bs!397495 m!2026827))

(assert (=> b!1663902 d!502800))

(declare-fun d!502802 () Bool)

(declare-fun lt!626488 () Int)

(assert (=> d!502802 (= lt!626488 (size!14602 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!502802 (= lt!626488 (size!14606 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!502802 (= (size!14600 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) lt!626488)))

(declare-fun bs!397496 () Bool)

(assert (= bs!397496 d!502802))

(assert (=> bs!397496 m!2026127))

(assert (=> bs!397496 m!2026219))

(assert (=> bs!397496 m!2026219))

(assert (=> bs!397496 m!2026607))

(declare-fun m!2026829 () Bool)

(assert (=> bs!397496 m!2026829))

(assert (=> b!1663902 d!502802))

(declare-fun d!502804 () Bool)

(declare-fun res!746816 () Bool)

(declare-fun e!1066955 () Bool)

(assert (=> d!502804 (=> (not res!746816) (not e!1066955))))

(assert (=> d!502804 (= res!746816 (not (isEmpty!11417 (originalCharacters!4049 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!502804 (= (inv!23702 (h!23762 (t!151922 tokens!457))) e!1066955)))

(declare-fun b!1664307 () Bool)

(declare-fun res!746817 () Bool)

(assert (=> b!1664307 (=> (not res!746817) (not e!1066955))))

(assert (=> b!1664307 (= res!746817 (= (originalCharacters!4049 (h!23762 (t!151922 tokens!457))) (list!7335 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(declare-fun b!1664308 () Bool)

(assert (=> b!1664308 (= e!1066955 (= (size!14596 (h!23762 (t!151922 tokens!457))) (size!14602 (originalCharacters!4049 (h!23762 (t!151922 tokens!457))))))))

(assert (= (and d!502804 res!746816) b!1664307))

(assert (= (and b!1664307 res!746817) b!1664308))

(declare-fun b_lambda!52221 () Bool)

(assert (=> (not b_lambda!52221) (not b!1664307)))

(declare-fun t!151952 () Bool)

(declare-fun tb!95319 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151952) tb!95319))

(declare-fun b!1664309 () Bool)

(declare-fun e!1066956 () Bool)

(declare-fun tp!479781 () Bool)

(assert (=> b!1664309 (= e!1066956 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))) tp!479781))))

(declare-fun result!115206 () Bool)

(assert (=> tb!95319 (= result!115206 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))) e!1066956))))

(assert (= tb!95319 b!1664309))

(declare-fun m!2026831 () Bool)

(assert (=> b!1664309 m!2026831))

(declare-fun m!2026833 () Bool)

(assert (=> tb!95319 m!2026833))

(assert (=> b!1664307 t!151952))

(declare-fun b_and!118149 () Bool)

(assert (= b_and!118129 (and (=> t!151952 result!115206) b_and!118149)))

(declare-fun t!151954 () Bool)

(declare-fun tb!95321 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151954) tb!95321))

(declare-fun result!115208 () Bool)

(assert (= result!115208 result!115206))

(assert (=> b!1664307 t!151954))

(declare-fun b_and!118151 () Bool)

(assert (= b_and!118131 (and (=> t!151954 result!115208) b_and!118151)))

(declare-fun tb!95323 () Bool)

(declare-fun t!151956 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151956) tb!95323))

(declare-fun result!115210 () Bool)

(assert (= result!115210 result!115206))

(assert (=> b!1664307 t!151956))

(declare-fun b_and!118153 () Bool)

(assert (= b_and!118143 (and (=> t!151956 result!115210) b_and!118153)))

(declare-fun t!151958 () Bool)

(declare-fun tb!95325 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151958) tb!95325))

(declare-fun result!115212 () Bool)

(assert (= result!115212 result!115206))

(assert (=> b!1664307 t!151958))

(declare-fun b_and!118155 () Bool)

(assert (= b_and!118147 (and (=> t!151958 result!115212) b_and!118155)))

(declare-fun m!2026835 () Bool)

(assert (=> d!502804 m!2026835))

(declare-fun m!2026837 () Bool)

(assert (=> b!1664307 m!2026837))

(assert (=> b!1664307 m!2026837))

(declare-fun m!2026839 () Bool)

(assert (=> b!1664307 m!2026839))

(declare-fun m!2026841 () Bool)

(assert (=> b!1664308 m!2026841))

(assert (=> b!1664093 d!502804))

(declare-fun b!1664310 () Bool)

(declare-fun e!1066959 () Bool)

(assert (=> b!1664310 (= e!1066959 (inv!15 (value!101870 (h!23762 (t!151922 tokens!457)))))))

(declare-fun b!1664311 () Bool)

(declare-fun e!1066957 () Bool)

(assert (=> b!1664311 (= e!1066957 (inv!17 (value!101870 (h!23762 (t!151922 tokens!457)))))))

(declare-fun d!502806 () Bool)

(declare-fun c!270910 () Bool)

(assert (=> d!502806 (= c!270910 ((_ is IntegerValue!9975) (value!101870 (h!23762 (t!151922 tokens!457)))))))

(declare-fun e!1066958 () Bool)

(assert (=> d!502806 (= (inv!21 (value!101870 (h!23762 (t!151922 tokens!457)))) e!1066958)))

(declare-fun b!1664312 () Bool)

(assert (=> b!1664312 (= e!1066958 (inv!16 (value!101870 (h!23762 (t!151922 tokens!457)))))))

(declare-fun b!1664313 () Bool)

(declare-fun res!746818 () Bool)

(assert (=> b!1664313 (=> res!746818 e!1066959)))

(assert (=> b!1664313 (= res!746818 (not ((_ is IntegerValue!9977) (value!101870 (h!23762 (t!151922 tokens!457))))))))

(assert (=> b!1664313 (= e!1066957 e!1066959)))

(declare-fun b!1664314 () Bool)

(assert (=> b!1664314 (= e!1066958 e!1066957)))

(declare-fun c!270911 () Bool)

(assert (=> b!1664314 (= c!270911 ((_ is IntegerValue!9976) (value!101870 (h!23762 (t!151922 tokens!457)))))))

(assert (= (and d!502806 c!270910) b!1664312))

(assert (= (and d!502806 (not c!270910)) b!1664314))

(assert (= (and b!1664314 c!270911) b!1664311))

(assert (= (and b!1664314 (not c!270911)) b!1664313))

(assert (= (and b!1664313 (not res!746818)) b!1664310))

(declare-fun m!2026843 () Bool)

(assert (=> b!1664310 m!2026843))

(declare-fun m!2026845 () Bool)

(assert (=> b!1664311 m!2026845))

(declare-fun m!2026847 () Bool)

(assert (=> b!1664312 m!2026847))

(assert (=> b!1664094 d!502806))

(declare-fun d!502808 () Bool)

(assert (=> d!502808 (= (inv!23698 (tag!3519 (h!23763 (t!151923 rules!1846)))) (= (mod (str.len (value!101869 (tag!3519 (h!23763 (t!151923 rules!1846))))) 2) 0))))

(assert (=> b!1664058 d!502808))

(declare-fun d!502810 () Bool)

(declare-fun res!746819 () Bool)

(declare-fun e!1066960 () Bool)

(assert (=> d!502810 (=> (not res!746819) (not e!1066960))))

(assert (=> d!502810 (= res!746819 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))))))

(assert (=> d!502810 (= (inv!23701 (transformation!3235 (h!23763 (t!151923 rules!1846)))) e!1066960)))

(declare-fun b!1664315 () Bool)

(assert (=> b!1664315 (= e!1066960 (equivClasses!1201 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))))))

(assert (= (and d!502810 res!746819) b!1664315))

(declare-fun m!2026849 () Bool)

(assert (=> d!502810 m!2026849))

(declare-fun m!2026851 () Bool)

(assert (=> b!1664315 m!2026851))

(assert (=> b!1664058 d!502810))

(declare-fun b!1664326 () Bool)

(declare-fun e!1066966 () List!18431)

(declare-fun list!7340 (IArray!12243) List!18431)

(assert (=> b!1664326 (= e!1066966 (list!7340 (xs!8963 (c!270829 (_1!10439 lt!626098)))))))

(declare-fun b!1664325 () Bool)

(declare-fun e!1066965 () List!18431)

(assert (=> b!1664325 (= e!1066965 e!1066966)))

(declare-fun c!270917 () Bool)

(assert (=> b!1664325 (= c!270917 ((_ is Leaf!8957) (c!270829 (_1!10439 lt!626098))))))

(declare-fun b!1664327 () Bool)

(assert (=> b!1664327 (= e!1066966 (++!4998 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098)))) (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098))))))))

(declare-fun b!1664324 () Bool)

(assert (=> b!1664324 (= e!1066965 Nil!18361)))

(declare-fun d!502812 () Bool)

(declare-fun c!270916 () Bool)

(assert (=> d!502812 (= c!270916 ((_ is Empty!6119) (c!270829 (_1!10439 lt!626098))))))

(assert (=> d!502812 (= (list!7336 (c!270829 (_1!10439 lt!626098))) e!1066965)))

(assert (= (and d!502812 c!270916) b!1664324))

(assert (= (and d!502812 (not c!270916)) b!1664325))

(assert (= (and b!1664325 c!270917) b!1664326))

(assert (= (and b!1664325 (not c!270917)) b!1664327))

(declare-fun m!2026853 () Bool)

(assert (=> b!1664326 m!2026853))

(declare-fun m!2026855 () Bool)

(assert (=> b!1664327 m!2026855))

(declare-fun m!2026857 () Bool)

(assert (=> b!1664327 m!2026857))

(assert (=> b!1664327 m!2026855))

(assert (=> b!1664327 m!2026857))

(declare-fun m!2026859 () Bool)

(assert (=> b!1664327 m!2026859))

(assert (=> d!502636 d!502812))

(declare-fun d!502814 () Bool)

(declare-fun isBalanced!1898 (Conc!6118) Bool)

(assert (=> d!502814 (= (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))) (isBalanced!1898 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun bs!397497 () Bool)

(assert (= bs!397497 d!502814))

(declare-fun m!2026861 () Bool)

(assert (=> bs!397497 m!2026861))

(assert (=> tb!95307 d!502814))

(declare-fun d!502816 () Bool)

(declare-fun res!746820 () Bool)

(declare-fun e!1066967 () Bool)

(assert (=> d!502816 (=> res!746820 e!1066967)))

(assert (=> d!502816 (= res!746820 (or (not ((_ is Cons!18361) (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (not ((_ is Cons!18361) (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(assert (=> d!502816 (= (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) rules!1846) e!1066967)))

(declare-fun b!1664328 () Bool)

(declare-fun e!1066968 () Bool)

(assert (=> b!1664328 (= e!1066967 e!1066968)))

(declare-fun res!746821 () Bool)

(assert (=> b!1664328 (=> (not res!746821) (not e!1066968))))

(assert (=> b!1664328 (= res!746821 (separableTokensPredicate!804 thiss!17113 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) rules!1846))))

(declare-fun lt!626491 () Unit!31104)

(declare-fun Unit!31116 () Unit!31104)

(assert (=> b!1664328 (= lt!626491 Unit!31116)))

(assert (=> b!1664328 (> (size!14600 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))) 0)))

(declare-fun lt!626489 () Unit!31104)

(declare-fun Unit!31117 () Unit!31104)

(assert (=> b!1664328 (= lt!626489 Unit!31117)))

(assert (=> b!1664328 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(declare-fun lt!626495 () Unit!31104)

(declare-fun Unit!31118 () Unit!31104)

(assert (=> b!1664328 (= lt!626495 Unit!31118)))

(assert (=> b!1664328 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))

(declare-fun lt!626494 () Unit!31104)

(declare-fun lt!626493 () Unit!31104)

(assert (=> b!1664328 (= lt!626494 lt!626493)))

(assert (=> b!1664328 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(assert (=> b!1664328 (= lt!626493 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))

(declare-fun lt!626490 () Unit!31104)

(declare-fun lt!626492 () Unit!31104)

(assert (=> b!1664328 (= lt!626490 lt!626492)))

(assert (=> b!1664328 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))

(assert (=> b!1664328 (= lt!626492 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(declare-fun b!1664329 () Bool)

(assert (=> b!1664329 (= e!1066968 (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) rules!1846))))

(assert (= (and d!502816 (not res!746820)) b!1664328))

(assert (= (and b!1664328 res!746821) b!1664329))

(declare-fun m!2026863 () Bool)

(assert (=> b!1664328 m!2026863))

(declare-fun m!2026865 () Bool)

(assert (=> b!1664328 m!2026865))

(declare-fun m!2026867 () Bool)

(assert (=> b!1664328 m!2026867))

(declare-fun m!2026869 () Bool)

(assert (=> b!1664328 m!2026869))

(declare-fun m!2026871 () Bool)

(assert (=> b!1664328 m!2026871))

(assert (=> b!1664328 m!2026865))

(declare-fun m!2026873 () Bool)

(assert (=> b!1664328 m!2026873))

(declare-fun m!2026875 () Bool)

(assert (=> b!1664328 m!2026875))

(declare-fun m!2026877 () Bool)

(assert (=> b!1664329 m!2026877))

(assert (=> b!1663891 d!502816))

(assert (=> b!1663890 d!502688))

(declare-fun d!502818 () Bool)

(declare-fun prefixMatchZipperSequence!663 (Regex!4563 BalanceConc!12180) Bool)

(declare-fun rulesRegex!619 (LexerInterface!2864 List!18432) Regex!4563)

(declare-fun singletonSeq!1743 (C!9300) BalanceConc!12180)

(declare-fun apply!4924 (BalanceConc!12180 Int) C!9300)

(assert (=> d!502818 (= (separableTokensPredicate!804 thiss!17113 (h!23762 tokens!457) (h!23762 (t!151922 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!663 (rulesRegex!619 thiss!17113 rules!1846) (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))))))

(declare-fun bs!397502 () Bool)

(assert (= bs!397502 d!502818))

(declare-fun m!2026923 () Bool)

(assert (=> bs!397502 m!2026923))

(declare-fun m!2026925 () Bool)

(assert (=> bs!397502 m!2026925))

(declare-fun m!2026927 () Bool)

(assert (=> bs!397502 m!2026927))

(assert (=> bs!397502 m!2026195))

(assert (=> bs!397502 m!2026195))

(declare-fun m!2026929 () Bool)

(assert (=> bs!397502 m!2026929))

(declare-fun m!2026931 () Bool)

(assert (=> bs!397502 m!2026931))

(assert (=> bs!397502 m!2026927))

(declare-fun m!2026933 () Bool)

(assert (=> bs!397502 m!2026933))

(assert (=> bs!397502 m!2026923))

(assert (=> bs!397502 m!2026931))

(assert (=> bs!397502 m!2026929))

(assert (=> bs!397502 m!2026925))

(assert (=> b!1663890 d!502818))

(declare-fun d!502836 () Bool)

(declare-fun lt!626505 () Int)

(assert (=> d!502836 (= lt!626505 (size!14602 (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!502836 (= lt!626505 (size!14606 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!502836 (= (size!14600 (charsOf!1884 (h!23762 (t!151922 tokens!457)))) lt!626505)))

(declare-fun bs!397503 () Bool)

(assert (= bs!397503 d!502836))

(assert (=> bs!397503 m!2026195))

(declare-fun m!2026935 () Bool)

(assert (=> bs!397503 m!2026935))

(assert (=> bs!397503 m!2026935))

(declare-fun m!2026937 () Bool)

(assert (=> bs!397503 m!2026937))

(declare-fun m!2026939 () Bool)

(assert (=> bs!397503 m!2026939))

(assert (=> b!1663890 d!502836))

(declare-fun d!502838 () Bool)

(assert (=> d!502838 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457))))

(declare-fun lt!626511 () Unit!31104)

(declare-fun choose!10011 (LexerInterface!2864 List!18432 List!18431 Token!6036) Unit!31104)

(assert (=> d!502838 (= lt!626511 (choose!10011 thiss!17113 rules!1846 tokens!457 (h!23762 tokens!457)))))

(assert (=> d!502838 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502838 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 tokens!457 (h!23762 tokens!457)) lt!626511)))

(declare-fun bs!397506 () Bool)

(assert (= bs!397506 d!502838))

(assert (=> bs!397506 m!2026199))

(declare-fun m!2026973 () Bool)

(assert (=> bs!397506 m!2026973))

(assert (=> bs!397506 m!2026117))

(assert (=> b!1663890 d!502838))

(declare-fun d!502848 () Bool)

(declare-fun lt!626514 () BalanceConc!12180)

(assert (=> d!502848 (= (list!7335 lt!626514) (originalCharacters!4049 (h!23762 (t!151922 tokens!457))))))

(assert (=> d!502848 (= lt!626514 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))

(assert (=> d!502848 (= (charsOf!1884 (h!23762 (t!151922 tokens!457))) lt!626514)))

(declare-fun b_lambda!52235 () Bool)

(assert (=> (not b_lambda!52235) (not d!502848)))

(assert (=> d!502848 t!151952))

(declare-fun b_and!118181 () Bool)

(assert (= b_and!118149 (and (=> t!151952 result!115206) b_and!118181)))

(assert (=> d!502848 t!151954))

(declare-fun b_and!118183 () Bool)

(assert (= b_and!118151 (and (=> t!151954 result!115208) b_and!118183)))

(assert (=> d!502848 t!151956))

(declare-fun b_and!118185 () Bool)

(assert (= b_and!118153 (and (=> t!151956 result!115210) b_and!118185)))

(assert (=> d!502848 t!151958))

(declare-fun b_and!118187 () Bool)

(assert (= b_and!118155 (and (=> t!151958 result!115212) b_and!118187)))

(declare-fun m!2026975 () Bool)

(assert (=> d!502848 m!2026975))

(assert (=> d!502848 m!2026837))

(assert (=> b!1663890 d!502848))

(declare-fun d!502850 () Bool)

(declare-fun lt!626516 () Bool)

(declare-fun e!1067016 () Bool)

(assert (=> d!502850 (= lt!626516 e!1067016)))

(declare-fun res!746836 () Bool)

(assert (=> d!502850 (=> (not res!746836) (not e!1067016))))

(assert (=> d!502850 (= res!746836 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))) (list!7332 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))

(declare-fun e!1067017 () Bool)

(assert (=> d!502850 (= lt!626516 e!1067017)))

(declare-fun res!746835 () Bool)

(assert (=> d!502850 (=> (not res!746835) (not e!1067017))))

(declare-fun lt!626515 () tuple2!18074)

(assert (=> d!502850 (= res!746835 (= (size!14601 (_1!10439 lt!626515)) 1))))

(assert (=> d!502850 (= lt!626515 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!502850 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502850 (= (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457))) lt!626516)))

(declare-fun b!1664421 () Bool)

(declare-fun res!746837 () Bool)

(assert (=> b!1664421 (=> (not res!746837) (not e!1067017))))

(assert (=> b!1664421 (= res!746837 (= (apply!4921 (_1!10439 lt!626515) 0) (h!23762 (t!151922 tokens!457))))))

(declare-fun b!1664422 () Bool)

(assert (=> b!1664422 (= e!1067017 (isEmpty!11412 (_2!10439 lt!626515)))))

(declare-fun b!1664423 () Bool)

(assert (=> b!1664423 (= e!1067016 (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))))

(assert (= (and d!502850 res!746835) b!1664421))

(assert (= (and b!1664421 res!746837) b!1664422))

(assert (= (and d!502850 res!746836) b!1664423))

(declare-fun m!2026977 () Bool)

(assert (=> d!502850 m!2026977))

(declare-fun m!2026979 () Bool)

(assert (=> d!502850 m!2026979))

(assert (=> d!502850 m!2026117))

(declare-fun m!2026981 () Bool)

(assert (=> d!502850 m!2026981))

(declare-fun m!2026983 () Bool)

(assert (=> d!502850 m!2026983))

(assert (=> d!502850 m!2026977))

(assert (=> d!502850 m!2026979))

(declare-fun m!2026985 () Bool)

(assert (=> d!502850 m!2026985))

(assert (=> d!502850 m!2026977))

(declare-fun m!2026987 () Bool)

(assert (=> d!502850 m!2026987))

(declare-fun m!2026989 () Bool)

(assert (=> b!1664421 m!2026989))

(declare-fun m!2026991 () Bool)

(assert (=> b!1664422 m!2026991))

(assert (=> b!1664423 m!2026977))

(assert (=> b!1664423 m!2026977))

(assert (=> b!1664423 m!2026979))

(assert (=> b!1664423 m!2026979))

(assert (=> b!1664423 m!2026985))

(declare-fun m!2026993 () Bool)

(assert (=> b!1664423 m!2026993))

(assert (=> b!1663890 d!502850))

(declare-fun d!502852 () Bool)

(assert (=> d!502852 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457)))))

(declare-fun lt!626517 () Unit!31104)

(assert (=> d!502852 (= lt!626517 (choose!10011 thiss!17113 rules!1846 tokens!457 (h!23762 (t!151922 tokens!457))))))

(assert (=> d!502852 (not (isEmpty!11413 rules!1846))))

(assert (=> d!502852 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 tokens!457 (h!23762 (t!151922 tokens!457))) lt!626517)))

(declare-fun bs!397507 () Bool)

(assert (= bs!397507 d!502852))

(assert (=> bs!397507 m!2026193))

(declare-fun m!2026995 () Bool)

(assert (=> bs!397507 m!2026995))

(assert (=> bs!397507 m!2026117))

(assert (=> b!1663890 d!502852))

(declare-fun d!502854 () Bool)

(declare-fun res!746842 () Bool)

(declare-fun e!1067022 () Bool)

(assert (=> d!502854 (=> res!746842 e!1067022)))

(assert (=> d!502854 (= res!746842 ((_ is Nil!18361) tokens!457))))

(assert (=> d!502854 (= (forall!4172 tokens!457 lambda!67896) e!1067022)))

(declare-fun b!1664428 () Bool)

(declare-fun e!1067023 () Bool)

(assert (=> b!1664428 (= e!1067022 e!1067023)))

(declare-fun res!746843 () Bool)

(assert (=> b!1664428 (=> (not res!746843) (not e!1067023))))

(declare-fun dynLambda!8263 (Int Token!6036) Bool)

(assert (=> b!1664428 (= res!746843 (dynLambda!8263 lambda!67896 (h!23762 tokens!457)))))

(declare-fun b!1664429 () Bool)

(assert (=> b!1664429 (= e!1067023 (forall!4172 (t!151922 tokens!457) lambda!67896))))

(assert (= (and d!502854 (not res!746842)) b!1664428))

(assert (= (and b!1664428 res!746843) b!1664429))

(declare-fun b_lambda!52237 () Bool)

(assert (=> (not b_lambda!52237) (not b!1664428)))

(declare-fun m!2026997 () Bool)

(assert (=> b!1664428 m!2026997))

(declare-fun m!2026999 () Bool)

(assert (=> b!1664429 m!2026999))

(assert (=> d!502650 d!502854))

(assert (=> d!502650 d!502634))

(declare-fun bs!397508 () Bool)

(declare-fun d!502856 () Bool)

(assert (= bs!397508 (and d!502856 d!502754)))

(declare-fun lambda!67917 () Int)

(assert (=> bs!397508 (= (and (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (h!23763 rules!1846))))) (= lambda!67917 lambda!67913))))

(assert (=> d!502856 true))

(assert (=> d!502856 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (dynLambda!8261 order!11007 lambda!67917))))

(assert (=> d!502856 true))

(assert (=> d!502856 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (dynLambda!8261 order!11007 lambda!67917))))

(assert (=> d!502856 (= (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (Forall!658 lambda!67917))))

(declare-fun bs!397509 () Bool)

(assert (= bs!397509 d!502856))

(declare-fun m!2027001 () Bool)

(assert (=> bs!397509 m!2027001))

(assert (=> d!502614 d!502856))

(declare-fun d!502858 () Bool)

(assert (=> d!502858 true))

(declare-fun lt!626520 () Bool)

(declare-fun rulesValidInductive!1036 (LexerInterface!2864 List!18432) Bool)

(assert (=> d!502858 (= lt!626520 (rulesValidInductive!1036 thiss!17113 rules!1846))))

(declare-fun lambda!67920 () Int)

(declare-fun forall!4174 (List!18432 Int) Bool)

(assert (=> d!502858 (= lt!626520 (forall!4174 rules!1846 lambda!67920))))

(assert (=> d!502858 (= (rulesValid!1188 thiss!17113 rules!1846) lt!626520)))

(declare-fun bs!397510 () Bool)

(assert (= bs!397510 d!502858))

(declare-fun m!2027003 () Bool)

(assert (=> bs!397510 m!2027003))

(declare-fun m!2027005 () Bool)

(assert (=> bs!397510 m!2027005))

(assert (=> d!502648 d!502858))

(declare-fun d!502860 () Bool)

(assert (=> d!502860 (= (isEmpty!11417 (originalCharacters!4049 (h!23762 tokens!457))) ((_ is Nil!18359) (originalCharacters!4049 (h!23762 tokens!457))))))

(assert (=> d!502646 d!502860))

(declare-fun b!1664432 () Bool)

(declare-fun e!1067024 () Bool)

(assert (=> b!1664432 (= e!1067024 tp_is_empty!7401)))

(declare-fun b!1664434 () Bool)

(declare-fun tp!479864 () Bool)

(assert (=> b!1664434 (= e!1067024 tp!479864)))

(assert (=> b!1664071 (= tp!479753 e!1067024)))

(declare-fun b!1664435 () Bool)

(declare-fun tp!479866 () Bool)

(declare-fun tp!479865 () Bool)

(assert (=> b!1664435 (= e!1067024 (and tp!479866 tp!479865))))

(declare-fun b!1664433 () Bool)

(declare-fun tp!479863 () Bool)

(declare-fun tp!479867 () Bool)

(assert (=> b!1664433 (= e!1067024 (and tp!479863 tp!479867))))

(assert (= (and b!1664071 ((_ is ElementMatch!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664432))

(assert (= (and b!1664071 ((_ is Concat!7889) (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664433))

(assert (= (and b!1664071 ((_ is Star!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664434))

(assert (= (and b!1664071 ((_ is Union!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664435))

(declare-fun b!1664436 () Bool)

(declare-fun e!1067025 () Bool)

(assert (=> b!1664436 (= e!1067025 tp_is_empty!7401)))

(declare-fun b!1664438 () Bool)

(declare-fun tp!479869 () Bool)

(assert (=> b!1664438 (= e!1067025 tp!479869)))

(assert (=> b!1664071 (= tp!479757 e!1067025)))

(declare-fun b!1664439 () Bool)

(declare-fun tp!479871 () Bool)

(declare-fun tp!479870 () Bool)

(assert (=> b!1664439 (= e!1067025 (and tp!479871 tp!479870))))

(declare-fun b!1664437 () Bool)

(declare-fun tp!479868 () Bool)

(declare-fun tp!479872 () Bool)

(assert (=> b!1664437 (= e!1067025 (and tp!479868 tp!479872))))

(assert (= (and b!1664071 ((_ is ElementMatch!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664436))

(assert (= (and b!1664071 ((_ is Concat!7889) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664437))

(assert (= (and b!1664071 ((_ is Star!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664438))

(assert (= (and b!1664071 ((_ is Union!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664439))

(declare-fun b!1664443 () Bool)

(declare-fun b_free!45239 () Bool)

(declare-fun b_next!45943 () Bool)

(assert (=> b!1664443 (= b_free!45239 (not b_next!45943))))

(declare-fun tp!479876 () Bool)

(declare-fun b_and!118189 () Bool)

(assert (=> b!1664443 (= tp!479876 b_and!118189)))

(declare-fun b_free!45241 () Bool)

(declare-fun b_next!45945 () Bool)

(assert (=> b!1664443 (= b_free!45241 (not b_next!45945))))

(declare-fun t!151979 () Bool)

(declare-fun tb!95343 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151979) tb!95343))

(declare-fun result!115232 () Bool)

(assert (= result!115232 result!115176))

(assert (=> b!1663926 t!151979))

(declare-fun t!151981 () Bool)

(declare-fun tb!95345 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151981) tb!95345))

(declare-fun result!115234 () Bool)

(assert (= result!115234 result!115206))

(assert (=> b!1664307 t!151981))

(assert (=> d!502848 t!151981))

(declare-fun tp!479877 () Bool)

(declare-fun b_and!118191 () Bool)

(assert (=> b!1664443 (= tp!479877 (and (=> t!151979 result!115232) (=> t!151981 result!115234) b_and!118191))))

(declare-fun tp!479875 () Bool)

(declare-fun b!1664442 () Bool)

(declare-fun e!1067027 () Bool)

(declare-fun e!1067026 () Bool)

(assert (=> b!1664442 (= e!1067026 (and tp!479875 (inv!23698 (tag!3519 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (inv!23701 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) e!1067027))))

(assert (=> b!1664443 (= e!1067027 (and tp!479876 tp!479877))))

(declare-fun e!1067031 () Bool)

(assert (=> b!1664093 (= tp!479776 e!1067031)))

(declare-fun tp!479873 () Bool)

(declare-fun e!1067029 () Bool)

(declare-fun b!1664440 () Bool)

(assert (=> b!1664440 (= e!1067031 (and (inv!23702 (h!23762 (t!151922 (t!151922 tokens!457)))) e!1067029 tp!479873))))

(declare-fun b!1664441 () Bool)

(declare-fun tp!479874 () Bool)

(assert (=> b!1664441 (= e!1067029 (and (inv!21 (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))) e!1067026 tp!479874))))

(assert (= b!1664442 b!1664443))

(assert (= b!1664441 b!1664442))

(assert (= b!1664440 b!1664441))

(assert (= (and b!1664093 ((_ is Cons!18361) (t!151922 (t!151922 tokens!457)))) b!1664440))

(declare-fun m!2027007 () Bool)

(assert (=> b!1664442 m!2027007))

(declare-fun m!2027009 () Bool)

(assert (=> b!1664442 m!2027009))

(declare-fun m!2027011 () Bool)

(assert (=> b!1664440 m!2027011))

(declare-fun m!2027013 () Bool)

(assert (=> b!1664441 m!2027013))

(declare-fun b!1664444 () Bool)

(declare-fun e!1067032 () Bool)

(assert (=> b!1664444 (= e!1067032 tp_is_empty!7401)))

(declare-fun b!1664446 () Bool)

(declare-fun tp!479879 () Bool)

(assert (=> b!1664446 (= e!1067032 tp!479879)))

(assert (=> b!1664076 (= tp!479759 e!1067032)))

(declare-fun b!1664447 () Bool)

(declare-fun tp!479881 () Bool)

(declare-fun tp!479880 () Bool)

(assert (=> b!1664447 (= e!1067032 (and tp!479881 tp!479880))))

(declare-fun b!1664445 () Bool)

(declare-fun tp!479878 () Bool)

(declare-fun tp!479882 () Bool)

(assert (=> b!1664445 (= e!1067032 (and tp!479878 tp!479882))))

(assert (= (and b!1664076 ((_ is ElementMatch!4563) (reg!4892 (regex!3235 (h!23763 rules!1846))))) b!1664444))

(assert (= (and b!1664076 ((_ is Concat!7889) (reg!4892 (regex!3235 (h!23763 rules!1846))))) b!1664445))

(assert (= (and b!1664076 ((_ is Star!4563) (reg!4892 (regex!3235 (h!23763 rules!1846))))) b!1664446))

(assert (= (and b!1664076 ((_ is Union!4563) (reg!4892 (regex!3235 (h!23763 rules!1846))))) b!1664447))

(declare-fun b!1664448 () Bool)

(declare-fun e!1067033 () Bool)

(declare-fun tp!479883 () Bool)

(assert (=> b!1664448 (= e!1067033 (and tp_is_empty!7401 tp!479883))))

(assert (=> b!1664094 (= tp!479777 e!1067033)))

(assert (= (and b!1664094 ((_ is Cons!18359) (originalCharacters!4049 (h!23762 (t!151922 tokens!457))))) b!1664448))

(declare-fun b!1664449 () Bool)

(declare-fun e!1067034 () Bool)

(assert (=> b!1664449 (= e!1067034 tp_is_empty!7401)))

(declare-fun b!1664451 () Bool)

(declare-fun tp!479885 () Bool)

(assert (=> b!1664451 (= e!1067034 tp!479885)))

(assert (=> b!1664077 (= tp!479761 e!1067034)))

(declare-fun b!1664452 () Bool)

(declare-fun tp!479887 () Bool)

(declare-fun tp!479886 () Bool)

(assert (=> b!1664452 (= e!1067034 (and tp!479887 tp!479886))))

(declare-fun b!1664450 () Bool)

(declare-fun tp!479884 () Bool)

(declare-fun tp!479888 () Bool)

(assert (=> b!1664450 (= e!1067034 (and tp!479884 tp!479888))))

(assert (= (and b!1664077 ((_ is ElementMatch!4563) (regOne!9639 (regex!3235 (h!23763 rules!1846))))) b!1664449))

(assert (= (and b!1664077 ((_ is Concat!7889) (regOne!9639 (regex!3235 (h!23763 rules!1846))))) b!1664450))

(assert (= (and b!1664077 ((_ is Star!4563) (regOne!9639 (regex!3235 (h!23763 rules!1846))))) b!1664451))

(assert (= (and b!1664077 ((_ is Union!4563) (regOne!9639 (regex!3235 (h!23763 rules!1846))))) b!1664452))

(declare-fun b!1664453 () Bool)

(declare-fun e!1067035 () Bool)

(assert (=> b!1664453 (= e!1067035 tp_is_empty!7401)))

(declare-fun b!1664455 () Bool)

(declare-fun tp!479890 () Bool)

(assert (=> b!1664455 (= e!1067035 tp!479890)))

(assert (=> b!1664077 (= tp!479760 e!1067035)))

(declare-fun b!1664456 () Bool)

(declare-fun tp!479892 () Bool)

(declare-fun tp!479891 () Bool)

(assert (=> b!1664456 (= e!1067035 (and tp!479892 tp!479891))))

(declare-fun b!1664454 () Bool)

(declare-fun tp!479889 () Bool)

(declare-fun tp!479893 () Bool)

(assert (=> b!1664454 (= e!1067035 (and tp!479889 tp!479893))))

(assert (= (and b!1664077 ((_ is ElementMatch!4563) (regTwo!9639 (regex!3235 (h!23763 rules!1846))))) b!1664453))

(assert (= (and b!1664077 ((_ is Concat!7889) (regTwo!9639 (regex!3235 (h!23763 rules!1846))))) b!1664454))

(assert (= (and b!1664077 ((_ is Star!4563) (regTwo!9639 (regex!3235 (h!23763 rules!1846))))) b!1664455))

(assert (= (and b!1664077 ((_ is Union!4563) (regTwo!9639 (regex!3235 (h!23763 rules!1846))))) b!1664456))

(declare-fun tp!479900 () Bool)

(declare-fun b!1664465 () Bool)

(declare-fun e!1067041 () Bool)

(declare-fun tp!479901 () Bool)

(assert (=> b!1664465 (= e!1067041 (and (inv!23705 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) tp!479900 (inv!23705 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) tp!479901))))

(declare-fun b!1664467 () Bool)

(declare-fun e!1067040 () Bool)

(declare-fun tp!479902 () Bool)

(assert (=> b!1664467 (= e!1067040 tp!479902)))

(declare-fun b!1664466 () Bool)

(declare-fun inv!23712 (IArray!12241) Bool)

(assert (=> b!1664466 (= e!1067041 (and (inv!23712 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) e!1067040))))

(assert (=> b!1663932 (= tp!479680 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1067041))))

(assert (= (and b!1663932 ((_ is Node!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) b!1664465))

(assert (= b!1664466 b!1664467))

(assert (= (and b!1663932 ((_ is Leaf!8956) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) b!1664466))

(declare-fun m!2027015 () Bool)

(assert (=> b!1664465 m!2027015))

(declare-fun m!2027017 () Bool)

(assert (=> b!1664465 m!2027017))

(declare-fun m!2027019 () Bool)

(assert (=> b!1664466 m!2027019))

(assert (=> b!1663932 m!2026245))

(declare-fun b!1664468 () Bool)

(declare-fun e!1067042 () Bool)

(assert (=> b!1664468 (= e!1067042 tp_is_empty!7401)))

(declare-fun b!1664470 () Bool)

(declare-fun tp!479904 () Bool)

(assert (=> b!1664470 (= e!1067042 tp!479904)))

(assert (=> b!1664072 (= tp!479754 e!1067042)))

(declare-fun b!1664471 () Bool)

(declare-fun tp!479906 () Bool)

(declare-fun tp!479905 () Bool)

(assert (=> b!1664471 (= e!1067042 (and tp!479906 tp!479905))))

(declare-fun b!1664469 () Bool)

(declare-fun tp!479903 () Bool)

(declare-fun tp!479907 () Bool)

(assert (=> b!1664469 (= e!1067042 (and tp!479903 tp!479907))))

(assert (= (and b!1664072 ((_ is ElementMatch!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664468))

(assert (= (and b!1664072 ((_ is Concat!7889) (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664469))

(assert (= (and b!1664072 ((_ is Star!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664470))

(assert (= (and b!1664072 ((_ is Union!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664471))

(declare-fun b!1664472 () Bool)

(declare-fun e!1067043 () Bool)

(assert (=> b!1664472 (= e!1067043 tp_is_empty!7401)))

(declare-fun b!1664474 () Bool)

(declare-fun tp!479909 () Bool)

(assert (=> b!1664474 (= e!1067043 tp!479909)))

(assert (=> b!1664073 (= tp!479756 e!1067043)))

(declare-fun b!1664475 () Bool)

(declare-fun tp!479911 () Bool)

(declare-fun tp!479910 () Bool)

(assert (=> b!1664475 (= e!1067043 (and tp!479911 tp!479910))))

(declare-fun b!1664473 () Bool)

(declare-fun tp!479908 () Bool)

(declare-fun tp!479912 () Bool)

(assert (=> b!1664473 (= e!1067043 (and tp!479908 tp!479912))))

(assert (= (and b!1664073 ((_ is ElementMatch!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664472))

(assert (= (and b!1664073 ((_ is Concat!7889) (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664473))

(assert (= (and b!1664073 ((_ is Star!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664474))

(assert (= (and b!1664073 ((_ is Union!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664475))

(declare-fun b!1664476 () Bool)

(declare-fun e!1067044 () Bool)

(assert (=> b!1664476 (= e!1067044 tp_is_empty!7401)))

(declare-fun b!1664478 () Bool)

(declare-fun tp!479914 () Bool)

(assert (=> b!1664478 (= e!1067044 tp!479914)))

(assert (=> b!1664073 (= tp!479755 e!1067044)))

(declare-fun b!1664479 () Bool)

(declare-fun tp!479916 () Bool)

(declare-fun tp!479915 () Bool)

(assert (=> b!1664479 (= e!1067044 (and tp!479916 tp!479915))))

(declare-fun b!1664477 () Bool)

(declare-fun tp!479913 () Bool)

(declare-fun tp!479917 () Bool)

(assert (=> b!1664477 (= e!1067044 (and tp!479913 tp!479917))))

(assert (= (and b!1664073 ((_ is ElementMatch!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664476))

(assert (= (and b!1664073 ((_ is Concat!7889) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664477))

(assert (= (and b!1664073 ((_ is Star!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664478))

(assert (= (and b!1664073 ((_ is Union!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457)))))) b!1664479))

(declare-fun b!1664482 () Bool)

(declare-fun e!1067047 () Bool)

(assert (=> b!1664482 (= e!1067047 true)))

(declare-fun b!1664481 () Bool)

(declare-fun e!1067046 () Bool)

(assert (=> b!1664481 (= e!1067046 e!1067047)))

(declare-fun b!1664480 () Bool)

(declare-fun e!1067045 () Bool)

(assert (=> b!1664480 (= e!1067045 e!1067046)))

(assert (=> b!1664044 e!1067045))

(assert (= b!1664481 b!1664482))

(assert (= b!1664480 b!1664481))

(assert (= (and b!1664044 ((_ is Cons!18362) (t!151923 rules!1846))) b!1664480))

(assert (=> b!1664482 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8256 order!10997 lambda!67896))))

(assert (=> b!1664482 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8256 order!10997 lambda!67896))))

(declare-fun b!1664483 () Bool)

(declare-fun e!1067048 () Bool)

(assert (=> b!1664483 (= e!1067048 tp_is_empty!7401)))

(declare-fun b!1664485 () Bool)

(declare-fun tp!479919 () Bool)

(assert (=> b!1664485 (= e!1067048 tp!479919)))

(assert (=> b!1664075 (= tp!479758 e!1067048)))

(declare-fun b!1664486 () Bool)

(declare-fun tp!479921 () Bool)

(declare-fun tp!479920 () Bool)

(assert (=> b!1664486 (= e!1067048 (and tp!479921 tp!479920))))

(declare-fun b!1664484 () Bool)

(declare-fun tp!479918 () Bool)

(declare-fun tp!479922 () Bool)

(assert (=> b!1664484 (= e!1067048 (and tp!479918 tp!479922))))

(assert (= (and b!1664075 ((_ is ElementMatch!4563) (regOne!9638 (regex!3235 (h!23763 rules!1846))))) b!1664483))

(assert (= (and b!1664075 ((_ is Concat!7889) (regOne!9638 (regex!3235 (h!23763 rules!1846))))) b!1664484))

(assert (= (and b!1664075 ((_ is Star!4563) (regOne!9638 (regex!3235 (h!23763 rules!1846))))) b!1664485))

(assert (= (and b!1664075 ((_ is Union!4563) (regOne!9638 (regex!3235 (h!23763 rules!1846))))) b!1664486))

(declare-fun b!1664487 () Bool)

(declare-fun e!1067049 () Bool)

(assert (=> b!1664487 (= e!1067049 tp_is_empty!7401)))

(declare-fun b!1664489 () Bool)

(declare-fun tp!479924 () Bool)

(assert (=> b!1664489 (= e!1067049 tp!479924)))

(assert (=> b!1664075 (= tp!479762 e!1067049)))

(declare-fun b!1664490 () Bool)

(declare-fun tp!479926 () Bool)

(declare-fun tp!479925 () Bool)

(assert (=> b!1664490 (= e!1067049 (and tp!479926 tp!479925))))

(declare-fun b!1664488 () Bool)

(declare-fun tp!479923 () Bool)

(declare-fun tp!479927 () Bool)

(assert (=> b!1664488 (= e!1067049 (and tp!479923 tp!479927))))

(assert (= (and b!1664075 ((_ is ElementMatch!4563) (regTwo!9638 (regex!3235 (h!23763 rules!1846))))) b!1664487))

(assert (= (and b!1664075 ((_ is Concat!7889) (regTwo!9638 (regex!3235 (h!23763 rules!1846))))) b!1664488))

(assert (= (and b!1664075 ((_ is Star!4563) (regTwo!9638 (regex!3235 (h!23763 rules!1846))))) b!1664489))

(assert (= (and b!1664075 ((_ is Union!4563) (regTwo!9638 (regex!3235 (h!23763 rules!1846))))) b!1664490))

(declare-fun b!1664491 () Bool)

(declare-fun e!1067050 () Bool)

(assert (=> b!1664491 (= e!1067050 tp_is_empty!7401)))

(declare-fun b!1664493 () Bool)

(declare-fun tp!479929 () Bool)

(assert (=> b!1664493 (= e!1067050 tp!479929)))

(assert (=> b!1664058 (= tp!479741 e!1067050)))

(declare-fun b!1664494 () Bool)

(declare-fun tp!479931 () Bool)

(declare-fun tp!479930 () Bool)

(assert (=> b!1664494 (= e!1067050 (and tp!479931 tp!479930))))

(declare-fun b!1664492 () Bool)

(declare-fun tp!479928 () Bool)

(declare-fun tp!479932 () Bool)

(assert (=> b!1664492 (= e!1067050 (and tp!479928 tp!479932))))

(assert (= (and b!1664058 ((_ is ElementMatch!4563) (regex!3235 (h!23763 (t!151923 rules!1846))))) b!1664491))

(assert (= (and b!1664058 ((_ is Concat!7889) (regex!3235 (h!23763 (t!151923 rules!1846))))) b!1664492))

(assert (= (and b!1664058 ((_ is Star!4563) (regex!3235 (h!23763 (t!151923 rules!1846))))) b!1664493))

(assert (= (and b!1664058 ((_ is Union!4563) (regex!3235 (h!23763 (t!151923 rules!1846))))) b!1664494))

(declare-fun b!1664495 () Bool)

(declare-fun e!1067051 () Bool)

(declare-fun tp!479933 () Bool)

(assert (=> b!1664495 (= e!1067051 (and tp_is_empty!7401 tp!479933))))

(assert (=> b!1664082 (= tp!479765 e!1067051)))

(assert (= (and b!1664082 ((_ is Cons!18359) (t!151920 (originalCharacters!4049 (h!23762 tokens!457))))) b!1664495))

(declare-fun b!1664496 () Bool)

(declare-fun e!1067052 () Bool)

(assert (=> b!1664496 (= e!1067052 tp_is_empty!7401)))

(declare-fun b!1664498 () Bool)

(declare-fun tp!479935 () Bool)

(assert (=> b!1664498 (= e!1067052 tp!479935)))

(assert (=> b!1664095 (= tp!479778 e!1067052)))

(declare-fun b!1664499 () Bool)

(declare-fun tp!479937 () Bool)

(declare-fun tp!479936 () Bool)

(assert (=> b!1664499 (= e!1067052 (and tp!479937 tp!479936))))

(declare-fun b!1664497 () Bool)

(declare-fun tp!479934 () Bool)

(declare-fun tp!479938 () Bool)

(assert (=> b!1664497 (= e!1067052 (and tp!479934 tp!479938))))

(assert (= (and b!1664095 ((_ is ElementMatch!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) b!1664496))

(assert (= (and b!1664095 ((_ is Concat!7889) (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) b!1664497))

(assert (= (and b!1664095 ((_ is Star!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) b!1664498))

(assert (= (and b!1664095 ((_ is Union!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) b!1664499))

(declare-fun b!1664502 () Bool)

(declare-fun b_free!45243 () Bool)

(declare-fun b_next!45947 () Bool)

(assert (=> b!1664502 (= b_free!45243 (not b_next!45947))))

(declare-fun tp!479940 () Bool)

(declare-fun b_and!118193 () Bool)

(assert (=> b!1664502 (= tp!479940 b_and!118193)))

(declare-fun b_free!45245 () Bool)

(declare-fun b_next!45949 () Bool)

(assert (=> b!1664502 (= b_free!45245 (not b_next!45949))))

(declare-fun t!151983 () Bool)

(declare-fun tb!95347 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!151983) tb!95347))

(declare-fun result!115238 () Bool)

(assert (= result!115238 result!115176))

(assert (=> b!1663926 t!151983))

(declare-fun t!151985 () Bool)

(declare-fun tb!95349 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!151985) tb!95349))

(declare-fun result!115240 () Bool)

(assert (= result!115240 result!115206))

(assert (=> b!1664307 t!151985))

(assert (=> d!502848 t!151985))

(declare-fun b_and!118195 () Bool)

(declare-fun tp!479939 () Bool)

(assert (=> b!1664502 (= tp!479939 (and (=> t!151983 result!115238) (=> t!151985 result!115240) b_and!118195))))

(declare-fun e!1067055 () Bool)

(assert (=> b!1664502 (= e!1067055 (and tp!479940 tp!479939))))

(declare-fun b!1664501 () Bool)

(declare-fun e!1067056 () Bool)

(declare-fun tp!479941 () Bool)

(assert (=> b!1664501 (= e!1067056 (and tp!479941 (inv!23698 (tag!3519 (h!23763 (t!151923 (t!151923 rules!1846))))) (inv!23701 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) e!1067055))))

(declare-fun b!1664500 () Bool)

(declare-fun e!1067053 () Bool)

(declare-fun tp!479942 () Bool)

(assert (=> b!1664500 (= e!1067053 (and e!1067056 tp!479942))))

(assert (=> b!1664057 (= tp!479742 e!1067053)))

(assert (= b!1664501 b!1664502))

(assert (= b!1664500 b!1664501))

(assert (= (and b!1664057 ((_ is Cons!18362) (t!151923 (t!151923 rules!1846)))) b!1664500))

(declare-fun m!2027021 () Bool)

(assert (=> b!1664501 m!2027021))

(declare-fun m!2027023 () Bool)

(assert (=> b!1664501 m!2027023))

(declare-fun b_lambda!52239 () Bool)

(assert (= b_lambda!52235 (or (and b!1663853 b_free!45209 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664502 b_free!45245 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664443 b_free!45241 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664096 b_free!45229) (and b!1663843 b_free!45213 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664059 b_free!45225 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b_lambda!52239)))

(declare-fun b_lambda!52241 () Bool)

(assert (= b_lambda!52221 (or (and b!1663853 b_free!45209 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664502 b_free!45245 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664443 b_free!45241 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664096 b_free!45229) (and b!1663843 b_free!45213 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) (and b!1664059 b_free!45225 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b_lambda!52241)))

(declare-fun b_lambda!52243 () Bool)

(assert (= b_lambda!52237 (or d!502650 b_lambda!52243)))

(declare-fun bs!397511 () Bool)

(declare-fun d!502862 () Bool)

(assert (= bs!397511 (and d!502862 d!502650)))

(assert (=> bs!397511 (= (dynLambda!8263 lambda!67896 (h!23762 tokens!457)) (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457)))))

(assert (=> bs!397511 m!2026199))

(assert (=> b!1664428 d!502862))

(check-sat (not d!502768) (not b_next!45933) (not b!1664501) (not d!502748) (not d!502802) (not b!1664329) b_and!118195 (not b!1664466) (not d!502774) (not b!1664440) (not b!1664470) b_and!118185 (not d!502782) (not b!1664199) (not b!1664264) (not b!1664454) (not b!1664489) (not b!1664477) (not b!1664447) (not b!1664498) b_and!118141 (not b_next!45917) (not b_next!45947) (not b!1664310) (not b!1664205) (not b!1664493) (not b!1663932) (not b!1664471) (not d!502766) (not b_next!45929) (not b!1664305) (not b!1664434) (not d!502744) (not d!502772) (not b!1664488) (not b!1664423) (not b!1664198) (not d!502794) b_and!118183 (not b!1664328) (not b!1664456) (not b_next!45943) (not b!1664497) (not b!1664306) (not b!1664429) tp_is_empty!7401 (not d!502784) (not b_lambda!52241) b_and!118191 (not d!502858) (not b!1664435) (not d!502856) (not b!1664248) (not b_next!45915) (not d!502836) (not tb!95319) (not d!502814) (not b!1664302) (not d!502734) (not b!1664433) (not b!1664474) (not b!1664214) (not b!1664227) (not d!502838) (not b!1664197) (not bs!397511) (not d!502852) (not d!502818) (not b_next!45945) (not d!502770) b_and!118121 (not b!1664441) (not d!502762) (not b!1664439) (not d!502850) (not d!502756) (not b!1664475) (not b!1664304) (not b!1664315) (not b!1664492) (not d!502758) (not b_lambda!52239) (not d!502752) (not b!1664438) (not b!1664494) (not b!1664216) (not b!1664451) (not b!1664446) (not b!1664312) (not b_lambda!52243) (not b!1664500) (not b!1664450) (not b!1664495) (not b_lambda!52219) (not b!1664465) (not b!1664467) (not b!1664484) (not b!1664455) (not b!1664261) (not b!1664307) (not b!1664246) (not b!1664480) (not b_next!45949) (not b_next!45931) (not b!1664309) (not b!1664490) (not d!502776) (not b!1664204) (not b!1664479) (not b!1664327) (not b!1664238) (not b_next!45927) (not b!1664233) (not b!1664134) (not b!1664326) (not b!1664437) (not b!1664486) (not b!1664311) (not b!1664442) (not d!502804) b_and!118145 (not d!502740) b_and!118193 b_and!118181 b_and!118117 b_and!118187 (not b!1664259) (not d!502800) (not d!502810) (not b!1664422) (not b_next!45913) (not b!1664469) (not b!1664421) (not d!502798) (not b!1664203) (not b_next!45911) (not b!1664263) (not b!1664308) (not d!502754) b_and!118189 (not b!1664499) (not b!1664478) (not b!1664452) (not d!502780) (not b!1664473) (not d!502848) (not d!502750) (not d!502796) (not b!1664485) (not b!1664232) (not b!1664445) (not b!1664448) (not d!502688))
(check-sat b_and!118185 (not b_next!45947) (not b_next!45929) b_and!118191 (not b_next!45915) (not b_next!45927) (not b_next!45913) (not b_next!45933) b_and!118195 b_and!118141 (not b_next!45917) (not b_next!45943) b_and!118183 (not b_next!45945) b_and!118121 (not b_next!45949) (not b_next!45931) b_and!118145 b_and!118193 b_and!118181 b_and!118117 b_and!118187 (not b_next!45911) b_and!118189)
(get-model)

(declare-fun d!502948 () Bool)

(declare-fun res!746940 () Bool)

(declare-fun e!1067145 () Bool)

(assert (=> d!502948 (=> (not res!746940) (not e!1067145))))

(declare-fun list!7341 (IArray!12241) List!18429)

(assert (=> d!502948 (= res!746940 (<= (size!14602 (list!7341 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) 512))))

(assert (=> d!502948 (= (inv!23710 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1067145)))

(declare-fun b!1664644 () Bool)

(declare-fun res!746941 () Bool)

(assert (=> b!1664644 (=> (not res!746941) (not e!1067145))))

(assert (=> b!1664644 (= res!746941 (= (csize!12467 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) (size!14602 (list!7341 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))))

(declare-fun b!1664645 () Bool)

(assert (=> b!1664645 (= e!1067145 (and (> (csize!12467 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) 0) (<= (csize!12467 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) 512)))))

(assert (= (and d!502948 res!746940) b!1664644))

(assert (= (and b!1664644 res!746941) b!1664645))

(declare-fun m!2027285 () Bool)

(assert (=> d!502948 m!2027285))

(assert (=> d!502948 m!2027285))

(declare-fun m!2027287 () Bool)

(assert (=> d!502948 m!2027287))

(assert (=> b!1664644 m!2027285))

(assert (=> b!1664644 m!2027285))

(assert (=> b!1664644 m!2027287))

(assert (=> b!1664216 d!502948))

(declare-fun b!1664648 () Bool)

(declare-fun e!1067147 () List!18431)

(assert (=> b!1664648 (= e!1067147 (list!7340 (xs!8963 (c!270829 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664647 () Bool)

(declare-fun e!1067146 () List!18431)

(assert (=> b!1664647 (= e!1067146 e!1067147)))

(declare-fun c!270947 () Bool)

(assert (=> b!1664647 (= c!270947 ((_ is Leaf!8957) (c!270829 (seqFromList!2208 tokens!457))))))

(declare-fun b!1664649 () Bool)

(assert (=> b!1664649 (= e!1067147 (++!4998 (list!7336 (left!14690 (c!270829 (seqFromList!2208 tokens!457)))) (list!7336 (right!15020 (c!270829 (seqFromList!2208 tokens!457))))))))

(declare-fun b!1664646 () Bool)

(assert (=> b!1664646 (= e!1067146 Nil!18361)))

(declare-fun d!502950 () Bool)

(declare-fun c!270946 () Bool)

(assert (=> d!502950 (= c!270946 ((_ is Empty!6119) (c!270829 (seqFromList!2208 tokens!457))))))

(assert (=> d!502950 (= (list!7336 (c!270829 (seqFromList!2208 tokens!457))) e!1067146)))

(assert (= (and d!502950 c!270946) b!1664646))

(assert (= (and d!502950 (not c!270946)) b!1664647))

(assert (= (and b!1664647 c!270947) b!1664648))

(assert (= (and b!1664647 (not c!270947)) b!1664649))

(declare-fun m!2027289 () Bool)

(assert (=> b!1664648 m!2027289))

(declare-fun m!2027291 () Bool)

(assert (=> b!1664649 m!2027291))

(declare-fun m!2027293 () Bool)

(assert (=> b!1664649 m!2027293))

(assert (=> b!1664649 m!2027291))

(assert (=> b!1664649 m!2027293))

(declare-fun m!2027295 () Bool)

(assert (=> b!1664649 m!2027295))

(assert (=> d!502766 d!502950))

(declare-fun d!502952 () Bool)

(declare-fun choose!625 (List!18430) (_ BitVec 32))

(assert (=> d!502952 (= (charsToInt!0 (text!23722 (value!101870 (h!23762 tokens!457)))) (choose!625 (text!23722 (value!101870 (h!23762 tokens!457)))))))

(declare-fun bs!397533 () Bool)

(assert (= bs!397533 d!502952))

(declare-fun m!2027297 () Bool)

(assert (=> bs!397533 m!2027297))

(assert (=> d!502796 d!502952))

(declare-fun d!502954 () Bool)

(declare-fun res!746948 () Bool)

(declare-fun e!1067150 () Bool)

(assert (=> d!502954 (=> (not res!746948) (not e!1067150))))

(assert (=> d!502954 (= res!746948 (= (csize!12466 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) (+ (size!14606 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (size!14606 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))))

(assert (=> d!502954 (= (inv!23709 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1067150)))

(declare-fun b!1664656 () Bool)

(declare-fun res!746949 () Bool)

(assert (=> b!1664656 (=> (not res!746949) (not e!1067150))))

(assert (=> b!1664656 (= res!746949 (and (not (= (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) Empty!6118)) (not (= (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) Empty!6118))))))

(declare-fun b!1664657 () Bool)

(declare-fun res!746950 () Bool)

(assert (=> b!1664657 (=> (not res!746950) (not e!1067150))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!963 (Conc!6118) Int)

(assert (=> b!1664657 (= res!746950 (= (cheight!6329 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) (+ (max!0 (height!963 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (height!963 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) 1)))))

(declare-fun b!1664658 () Bool)

(assert (=> b!1664658 (= e!1067150 (<= 0 (cheight!6329 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(assert (= (and d!502954 res!746948) b!1664656))

(assert (= (and b!1664656 res!746949) b!1664657))

(assert (= (and b!1664657 res!746950) b!1664658))

(declare-fun m!2027299 () Bool)

(assert (=> d!502954 m!2027299))

(declare-fun m!2027301 () Bool)

(assert (=> d!502954 m!2027301))

(declare-fun m!2027303 () Bool)

(assert (=> b!1664657 m!2027303))

(declare-fun m!2027305 () Bool)

(assert (=> b!1664657 m!2027305))

(assert (=> b!1664657 m!2027303))

(assert (=> b!1664657 m!2027305))

(declare-fun m!2027307 () Bool)

(assert (=> b!1664657 m!2027307))

(assert (=> b!1664214 d!502954))

(declare-fun lt!626603 () Bool)

(declare-fun d!502956 () Bool)

(assert (=> d!502956 (= lt!626603 (isEmpty!11417 (list!7335 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))))

(assert (=> d!502956 (= lt!626603 (isEmpty!11418 (c!270827 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))))

(assert (=> d!502956 (= (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))) lt!626603)))

(declare-fun bs!397534 () Bool)

(assert (= bs!397534 d!502956))

(declare-fun m!2027309 () Bool)

(assert (=> bs!397534 m!2027309))

(assert (=> bs!397534 m!2027309))

(declare-fun m!2027311 () Bool)

(assert (=> bs!397534 m!2027311))

(declare-fun m!2027313 () Bool)

(assert (=> bs!397534 m!2027313))

(assert (=> b!1664199 d!502956))

(declare-fun b!1664659 () Bool)

(declare-fun e!1067152 () Bool)

(declare-fun e!1067151 () Bool)

(assert (=> b!1664659 (= e!1067152 e!1067151)))

(declare-fun lt!626604 () tuple2!18074)

(declare-fun res!746953 () Bool)

(assert (=> b!1664659 (= res!746953 (< (size!14600 (_2!10439 lt!626604)) (size!14600 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))

(assert (=> b!1664659 (=> (not res!746953) (not e!1067151))))

(declare-fun b!1664661 () Bool)

(assert (=> b!1664661 (= e!1067151 (not (isEmpty!11419 (_1!10439 lt!626604))))))

(declare-fun e!1067153 () Bool)

(declare-fun b!1664662 () Bool)

(assert (=> b!1664662 (= e!1067153 (= (list!7335 (_2!10439 lt!626604)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))))

(declare-fun b!1664663 () Bool)

(assert (=> b!1664663 (= e!1067152 (= (_2!10439 lt!626604) (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))))

(declare-fun b!1664660 () Bool)

(declare-fun res!746952 () Bool)

(assert (=> b!1664660 (=> (not res!746952) (not e!1067153))))

(assert (=> b!1664660 (= res!746952 (= (list!7332 (_1!10439 lt!626604)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))))

(declare-fun d!502958 () Bool)

(assert (=> d!502958 e!1067153))

(declare-fun res!746951 () Bool)

(assert (=> d!502958 (=> (not res!746951) (not e!1067153))))

(assert (=> d!502958 (= res!746951 e!1067152)))

(declare-fun c!270948 () Bool)

(assert (=> d!502958 (= c!270948 (> (size!14601 (_1!10439 lt!626604)) 0))))

(assert (=> d!502958 (= lt!626604 (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))) (BalanceConc!12181 Empty!6118) (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))) (BalanceConc!12183 Empty!6119)))))

(assert (=> d!502958 (= (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))) lt!626604)))

(assert (= (and d!502958 c!270948) b!1664659))

(assert (= (and d!502958 (not c!270948)) b!1664663))

(assert (= (and b!1664659 res!746953) b!1664661))

(assert (= (and d!502958 res!746951) b!1664660))

(assert (= (and b!1664660 res!746952) b!1664662))

(declare-fun m!2027315 () Bool)

(assert (=> b!1664659 m!2027315))

(assert (=> b!1664659 m!2026479))

(declare-fun m!2027317 () Bool)

(assert (=> b!1664659 m!2027317))

(declare-fun m!2027319 () Bool)

(assert (=> b!1664661 m!2027319))

(declare-fun m!2027321 () Bool)

(assert (=> b!1664660 m!2027321))

(assert (=> b!1664660 m!2026479))

(declare-fun m!2027323 () Bool)

(assert (=> b!1664660 m!2027323))

(assert (=> b!1664660 m!2027323))

(declare-fun m!2027325 () Bool)

(assert (=> b!1664660 m!2027325))

(declare-fun m!2027327 () Bool)

(assert (=> d!502958 m!2027327))

(assert (=> d!502958 m!2026479))

(assert (=> d!502958 m!2026479))

(declare-fun m!2027329 () Bool)

(assert (=> d!502958 m!2027329))

(declare-fun m!2027331 () Bool)

(assert (=> b!1664662 m!2027331))

(assert (=> b!1664662 m!2026479))

(assert (=> b!1664662 m!2027323))

(assert (=> b!1664662 m!2027323))

(assert (=> b!1664662 m!2027325))

(assert (=> b!1664199 d!502958))

(declare-fun d!502960 () Bool)

(declare-fun lt!626605 () BalanceConc!12180)

(assert (=> d!502960 (= (list!7335 lt!626605) (printList!977 thiss!17113 (list!7332 (singletonSeq!1741 (h!23762 tokens!457)))))))

(assert (=> d!502960 (= lt!626605 (printTailRec!915 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)) 0 (BalanceConc!12181 Empty!6118)))))

(assert (=> d!502960 (= (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))) lt!626605)))

(declare-fun bs!397535 () Bool)

(assert (= bs!397535 d!502960))

(declare-fun m!2027333 () Bool)

(assert (=> bs!397535 m!2027333))

(assert (=> bs!397535 m!2026477))

(assert (=> bs!397535 m!2026487))

(assert (=> bs!397535 m!2026487))

(declare-fun m!2027335 () Bool)

(assert (=> bs!397535 m!2027335))

(assert (=> bs!397535 m!2026477))

(declare-fun m!2027337 () Bool)

(assert (=> bs!397535 m!2027337))

(assert (=> b!1664199 d!502960))

(declare-fun d!502962 () Bool)

(declare-fun e!1067156 () Bool)

(assert (=> d!502962 e!1067156))

(declare-fun res!746956 () Bool)

(assert (=> d!502962 (=> (not res!746956) (not e!1067156))))

(declare-fun lt!626608 () BalanceConc!12182)

(assert (=> d!502962 (= res!746956 (= (list!7332 lt!626608) (Cons!18361 (h!23762 tokens!457) Nil!18361)))))

(declare-fun singleton!770 (Token!6036) BalanceConc!12182)

(assert (=> d!502962 (= lt!626608 (singleton!770 (h!23762 tokens!457)))))

(assert (=> d!502962 (= (singletonSeq!1741 (h!23762 tokens!457)) lt!626608)))

(declare-fun b!1664666 () Bool)

(assert (=> b!1664666 (= e!1067156 (isBalanced!1896 (c!270829 lt!626608)))))

(assert (= (and d!502962 res!746956) b!1664666))

(declare-fun m!2027339 () Bool)

(assert (=> d!502962 m!2027339))

(declare-fun m!2027341 () Bool)

(assert (=> d!502962 m!2027341))

(declare-fun m!2027343 () Bool)

(assert (=> b!1664666 m!2027343))

(assert (=> b!1664199 d!502962))

(declare-fun d!502964 () Bool)

(declare-fun res!746957 () Bool)

(declare-fun e!1067157 () Bool)

(assert (=> d!502964 (=> res!746957 e!1067157)))

(assert (=> d!502964 (= res!746957 ((_ is Nil!18361) (t!151922 tokens!457)))))

(assert (=> d!502964 (= (forall!4172 (t!151922 tokens!457) lambda!67896) e!1067157)))

(declare-fun b!1664667 () Bool)

(declare-fun e!1067158 () Bool)

(assert (=> b!1664667 (= e!1067157 e!1067158)))

(declare-fun res!746958 () Bool)

(assert (=> b!1664667 (=> (not res!746958) (not e!1067158))))

(assert (=> b!1664667 (= res!746958 (dynLambda!8263 lambda!67896 (h!23762 (t!151922 tokens!457))))))

(declare-fun b!1664668 () Bool)

(assert (=> b!1664668 (= e!1067158 (forall!4172 (t!151922 (t!151922 tokens!457)) lambda!67896))))

(assert (= (and d!502964 (not res!746957)) b!1664667))

(assert (= (and b!1664667 res!746958) b!1664668))

(declare-fun b_lambda!52247 () Bool)

(assert (=> (not b_lambda!52247) (not b!1664667)))

(declare-fun m!2027345 () Bool)

(assert (=> b!1664667 m!2027345))

(declare-fun m!2027347 () Bool)

(assert (=> b!1664668 m!2027347))

(assert (=> b!1664429 d!502964))

(declare-fun bs!397536 () Bool)

(declare-fun d!502966 () Bool)

(assert (= bs!397536 (and d!502966 d!502754)))

(declare-fun lambda!67922 () Int)

(assert (=> bs!397536 (= (and (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (= (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 rules!1846))))) (= lambda!67922 lambda!67913))))

(declare-fun bs!397537 () Bool)

(assert (= bs!397537 (and d!502966 d!502856)))

(assert (=> bs!397537 (= (and (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (= (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (= lambda!67922 lambda!67917))))

(assert (=> d!502966 true))

(assert (=> d!502966 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8261 order!11007 lambda!67922))))

(assert (=> d!502966 true))

(assert (=> d!502966 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8261 order!11007 lambda!67922))))

(assert (=> d!502966 (= (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (Forall!658 lambda!67922))))

(declare-fun bs!397538 () Bool)

(assert (= bs!397538 d!502966))

(declare-fun m!2027349 () Bool)

(assert (=> bs!397538 m!2027349))

(assert (=> d!502810 d!502966))

(declare-fun bs!397539 () Bool)

(declare-fun d!502968 () Bool)

(assert (= bs!397539 (and d!502968 d!502858)))

(declare-fun lambda!67925 () Int)

(assert (=> bs!397539 (= lambda!67925 lambda!67920)))

(assert (=> d!502968 true))

(declare-fun lt!626617 () Bool)

(assert (=> d!502968 (= lt!626617 (forall!4174 rules!1846 lambda!67925))))

(declare-fun e!1067164 () Bool)

(assert (=> d!502968 (= lt!626617 e!1067164)))

(declare-fun res!746963 () Bool)

(assert (=> d!502968 (=> res!746963 e!1067164)))

(assert (=> d!502968 (= res!746963 (not ((_ is Cons!18362) rules!1846)))))

(assert (=> d!502968 (= (rulesValidInductive!1036 thiss!17113 rules!1846) lt!626617)))

(declare-fun b!1664673 () Bool)

(declare-fun e!1067163 () Bool)

(assert (=> b!1664673 (= e!1067164 e!1067163)))

(declare-fun res!746964 () Bool)

(assert (=> b!1664673 (=> (not res!746964) (not e!1067163))))

(declare-fun ruleValid!758 (LexerInterface!2864 Rule!6270) Bool)

(assert (=> b!1664673 (= res!746964 (ruleValid!758 thiss!17113 (h!23763 rules!1846)))))

(declare-fun b!1664674 () Bool)

(assert (=> b!1664674 (= e!1067163 (rulesValidInductive!1036 thiss!17113 (t!151923 rules!1846)))))

(assert (= (and d!502968 (not res!746963)) b!1664673))

(assert (= (and b!1664673 res!746964) b!1664674))

(declare-fun m!2027351 () Bool)

(assert (=> d!502968 m!2027351))

(declare-fun m!2027353 () Bool)

(assert (=> b!1664673 m!2027353))

(declare-fun m!2027355 () Bool)

(assert (=> b!1664674 m!2027355))

(assert (=> d!502858 d!502968))

(declare-fun d!502970 () Bool)

(declare-fun res!746981 () Bool)

(declare-fun e!1067181 () Bool)

(assert (=> d!502970 (=> res!746981 e!1067181)))

(assert (=> d!502970 (= res!746981 ((_ is Nil!18362) rules!1846))))

(assert (=> d!502970 (= (forall!4174 rules!1846 lambda!67920) e!1067181)))

(declare-fun b!1664695 () Bool)

(declare-fun e!1067182 () Bool)

(assert (=> b!1664695 (= e!1067181 e!1067182)))

(declare-fun res!746982 () Bool)

(assert (=> b!1664695 (=> (not res!746982) (not e!1067182))))

(declare-fun dynLambda!8264 (Int Rule!6270) Bool)

(assert (=> b!1664695 (= res!746982 (dynLambda!8264 lambda!67920 (h!23763 rules!1846)))))

(declare-fun b!1664696 () Bool)

(assert (=> b!1664696 (= e!1067182 (forall!4174 (t!151923 rules!1846) lambda!67920))))

(assert (= (and d!502970 (not res!746981)) b!1664695))

(assert (= (and b!1664695 res!746982) b!1664696))

(declare-fun b_lambda!52249 () Bool)

(assert (=> (not b_lambda!52249) (not b!1664695)))

(declare-fun m!2027357 () Bool)

(assert (=> b!1664695 m!2027357))

(declare-fun m!2027359 () Bool)

(assert (=> b!1664696 m!2027359))

(assert (=> d!502858 d!502970))

(declare-fun d!502972 () Bool)

(declare-fun e!1067184 () Bool)

(assert (=> d!502972 e!1067184))

(declare-fun c!270951 () Bool)

(declare-fun lt!626628 () tuple2!18078)

(assert (=> d!502972 (= c!270951 (> (size!14607 (_1!10441 lt!626628)) 0))))

(declare-fun e!1067183 () tuple2!18078)

(assert (=> d!502972 (= lt!626628 e!1067183)))

(declare-fun c!270952 () Bool)

(declare-fun lt!626626 () Option!3523)

(assert (=> d!502972 (= c!270952 ((_ is Some!3522) lt!626626))))

(assert (=> d!502972 (= lt!626626 (maxPrefix!1426 thiss!17113 rules!1846 (_2!10444 (v!24757 lt!626274))))))

(assert (=> d!502972 (= (lexList!889 thiss!17113 rules!1846 (_2!10444 (v!24757 lt!626274))) lt!626628)))

(declare-fun b!1664697 () Bool)

(declare-fun e!1067185 () Bool)

(assert (=> b!1664697 (= e!1067185 (not (isEmpty!11422 (_1!10441 lt!626628))))))

(declare-fun b!1664698 () Bool)

(assert (=> b!1664698 (= e!1067183 (tuple2!18079 Nil!18361 (_2!10444 (v!24757 lt!626274))))))

(declare-fun b!1664699 () Bool)

(assert (=> b!1664699 (= e!1067184 e!1067185)))

(declare-fun res!746983 () Bool)

(assert (=> b!1664699 (= res!746983 (< (size!14602 (_2!10441 lt!626628)) (size!14602 (_2!10444 (v!24757 lt!626274)))))))

(assert (=> b!1664699 (=> (not res!746983) (not e!1067185))))

(declare-fun b!1664700 () Bool)

(assert (=> b!1664700 (= e!1067184 (= (_2!10441 lt!626628) (_2!10444 (v!24757 lt!626274))))))

(declare-fun b!1664701 () Bool)

(declare-fun lt!626627 () tuple2!18078)

(assert (=> b!1664701 (= e!1067183 (tuple2!18079 (Cons!18361 (_1!10444 (v!24757 lt!626626)) (_1!10441 lt!626627)) (_2!10441 lt!626627)))))

(assert (=> b!1664701 (= lt!626627 (lexList!889 thiss!17113 rules!1846 (_2!10444 (v!24757 lt!626626))))))

(assert (= (and d!502972 c!270952) b!1664701))

(assert (= (and d!502972 (not c!270952)) b!1664698))

(assert (= (and d!502972 c!270951) b!1664699))

(assert (= (and d!502972 (not c!270951)) b!1664700))

(assert (= (and b!1664699 res!746983) b!1664697))

(declare-fun m!2027361 () Bool)

(assert (=> d!502972 m!2027361))

(declare-fun m!2027363 () Bool)

(assert (=> d!502972 m!2027363))

(declare-fun m!2027365 () Bool)

(assert (=> b!1664697 m!2027365))

(declare-fun m!2027367 () Bool)

(assert (=> b!1664699 m!2027367))

(declare-fun m!2027369 () Bool)

(assert (=> b!1664699 m!2027369))

(declare-fun m!2027371 () Bool)

(assert (=> b!1664701 m!2027371))

(assert (=> b!1664263 d!502972))

(declare-fun b!1664718 () Bool)

(declare-fun e!1067196 () List!18431)

(assert (=> b!1664718 (= e!1067196 (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098)))))))

(declare-fun b!1664721 () Bool)

(declare-fun e!1067197 () Bool)

(declare-fun lt!626638 () List!18431)

(assert (=> b!1664721 (= e!1067197 (or (not (= (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098)))) Nil!18361)) (= lt!626638 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098)))))))))

(declare-fun b!1664719 () Bool)

(assert (=> b!1664719 (= e!1067196 (Cons!18361 (h!23762 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098))))) (++!4998 (t!151922 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098))))) (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098)))))))))

(declare-fun d!502974 () Bool)

(assert (=> d!502974 e!1067197))

(declare-fun res!746994 () Bool)

(assert (=> d!502974 (=> (not res!746994) (not e!1067197))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2560 (List!18431) (InoxSet Token!6036))

(assert (=> d!502974 (= res!746994 (= (content!2560 lt!626638) ((_ map or) (content!2560 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098))))) (content!2560 (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098))))))))))

(assert (=> d!502974 (= lt!626638 e!1067196)))

(declare-fun c!270956 () Bool)

(assert (=> d!502974 (= c!270956 ((_ is Nil!18361) (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098))))))))

(assert (=> d!502974 (= (++!4998 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098)))) (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098))))) lt!626638)))

(declare-fun b!1664720 () Bool)

(declare-fun res!746995 () Bool)

(assert (=> b!1664720 (=> (not res!746995) (not e!1067197))))

(assert (=> b!1664720 (= res!746995 (= (size!14607 lt!626638) (+ (size!14607 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098))))) (size!14607 (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098))))))))))

(assert (= (and d!502974 c!270956) b!1664718))

(assert (= (and d!502974 (not c!270956)) b!1664719))

(assert (= (and d!502974 res!746994) b!1664720))

(assert (= (and b!1664720 res!746995) b!1664721))

(assert (=> b!1664719 m!2026857))

(declare-fun m!2027393 () Bool)

(assert (=> b!1664719 m!2027393))

(declare-fun m!2027395 () Bool)

(assert (=> d!502974 m!2027395))

(assert (=> d!502974 m!2026855))

(declare-fun m!2027397 () Bool)

(assert (=> d!502974 m!2027397))

(assert (=> d!502974 m!2026857))

(declare-fun m!2027401 () Bool)

(assert (=> d!502974 m!2027401))

(declare-fun m!2027403 () Bool)

(assert (=> b!1664720 m!2027403))

(assert (=> b!1664720 m!2026855))

(declare-fun m!2027405 () Bool)

(assert (=> b!1664720 m!2027405))

(assert (=> b!1664720 m!2026857))

(declare-fun m!2027407 () Bool)

(assert (=> b!1664720 m!2027407))

(assert (=> b!1664327 d!502974))

(declare-fun b!1664724 () Bool)

(declare-fun e!1067199 () List!18431)

(assert (=> b!1664724 (= e!1067199 (list!7340 (xs!8963 (left!14690 (c!270829 (_1!10439 lt!626098))))))))

(declare-fun b!1664723 () Bool)

(declare-fun e!1067198 () List!18431)

(assert (=> b!1664723 (= e!1067198 e!1067199)))

(declare-fun c!270958 () Bool)

(assert (=> b!1664723 (= c!270958 ((_ is Leaf!8957) (left!14690 (c!270829 (_1!10439 lt!626098)))))))

(declare-fun b!1664725 () Bool)

(assert (=> b!1664725 (= e!1067199 (++!4998 (list!7336 (left!14690 (left!14690 (c!270829 (_1!10439 lt!626098))))) (list!7336 (right!15020 (left!14690 (c!270829 (_1!10439 lt!626098)))))))))

(declare-fun b!1664722 () Bool)

(assert (=> b!1664722 (= e!1067198 Nil!18361)))

(declare-fun d!502976 () Bool)

(declare-fun c!270957 () Bool)

(assert (=> d!502976 (= c!270957 ((_ is Empty!6119) (left!14690 (c!270829 (_1!10439 lt!626098)))))))

(assert (=> d!502976 (= (list!7336 (left!14690 (c!270829 (_1!10439 lt!626098)))) e!1067198)))

(assert (= (and d!502976 c!270957) b!1664722))

(assert (= (and d!502976 (not c!270957)) b!1664723))

(assert (= (and b!1664723 c!270958) b!1664724))

(assert (= (and b!1664723 (not c!270958)) b!1664725))

(declare-fun m!2027413 () Bool)

(assert (=> b!1664724 m!2027413))

(declare-fun m!2027415 () Bool)

(assert (=> b!1664725 m!2027415))

(declare-fun m!2027417 () Bool)

(assert (=> b!1664725 m!2027417))

(assert (=> b!1664725 m!2027415))

(assert (=> b!1664725 m!2027417))

(declare-fun m!2027419 () Bool)

(assert (=> b!1664725 m!2027419))

(assert (=> b!1664327 d!502976))

(declare-fun b!1664732 () Bool)

(declare-fun e!1067203 () List!18431)

(assert (=> b!1664732 (= e!1067203 (list!7340 (xs!8963 (right!15020 (c!270829 (_1!10439 lt!626098))))))))

(declare-fun b!1664731 () Bool)

(declare-fun e!1067202 () List!18431)

(assert (=> b!1664731 (= e!1067202 e!1067203)))

(declare-fun c!270961 () Bool)

(assert (=> b!1664731 (= c!270961 ((_ is Leaf!8957) (right!15020 (c!270829 (_1!10439 lt!626098)))))))

(declare-fun b!1664733 () Bool)

(assert (=> b!1664733 (= e!1067203 (++!4998 (list!7336 (left!14690 (right!15020 (c!270829 (_1!10439 lt!626098))))) (list!7336 (right!15020 (right!15020 (c!270829 (_1!10439 lt!626098)))))))))

(declare-fun b!1664730 () Bool)

(assert (=> b!1664730 (= e!1067202 Nil!18361)))

(declare-fun d!502980 () Bool)

(declare-fun c!270960 () Bool)

(assert (=> d!502980 (= c!270960 ((_ is Empty!6119) (right!15020 (c!270829 (_1!10439 lt!626098)))))))

(assert (=> d!502980 (= (list!7336 (right!15020 (c!270829 (_1!10439 lt!626098)))) e!1067202)))

(assert (= (and d!502980 c!270960) b!1664730))

(assert (= (and d!502980 (not c!270960)) b!1664731))

(assert (= (and b!1664731 c!270961) b!1664732))

(assert (= (and b!1664731 (not c!270961)) b!1664733))

(declare-fun m!2027435 () Bool)

(assert (=> b!1664732 m!2027435))

(declare-fun m!2027437 () Bool)

(assert (=> b!1664733 m!2027437))

(declare-fun m!2027439 () Bool)

(assert (=> b!1664733 m!2027439))

(assert (=> b!1664733 m!2027437))

(assert (=> b!1664733 m!2027439))

(declare-fun m!2027443 () Bool)

(assert (=> b!1664733 m!2027443))

(assert (=> b!1664327 d!502980))

(declare-fun d!502986 () Bool)

(declare-fun lt!626678 () Token!6036)

(assert (=> d!502986 (= lt!626678 (apply!4922 (list!7332 (_1!10439 lt!626224)) 0))))

(declare-fun apply!4926 (Conc!6119 Int) Token!6036)

(assert (=> d!502986 (= lt!626678 (apply!4926 (c!270829 (_1!10439 lt!626224)) 0))))

(declare-fun e!1067213 () Bool)

(assert (=> d!502986 e!1067213))

(declare-fun res!747004 () Bool)

(assert (=> d!502986 (=> (not res!747004) (not e!1067213))))

(assert (=> d!502986 (= res!747004 (<= 0 0))))

(assert (=> d!502986 (= (apply!4921 (_1!10439 lt!626224) 0) lt!626678)))

(declare-fun b!1664748 () Bool)

(assert (=> b!1664748 (= e!1067213 (< 0 (size!14601 (_1!10439 lt!626224))))))

(assert (= (and d!502986 res!747004) b!1664748))

(declare-fun m!2027509 () Bool)

(assert (=> d!502986 m!2027509))

(assert (=> d!502986 m!2027509))

(declare-fun m!2027511 () Bool)

(assert (=> d!502986 m!2027511))

(declare-fun m!2027513 () Bool)

(assert (=> d!502986 m!2027513))

(assert (=> b!1664748 m!2026481))

(assert (=> b!1664197 d!502986))

(declare-fun b!1664783 () Bool)

(declare-fun e!1067235 () Int)

(declare-fun call!106511 () Int)

(assert (=> b!1664783 (= e!1067235 (- call!106511 (+ 0 1)))))

(declare-fun b!1664784 () Bool)

(declare-fun e!1067232 () List!18431)

(assert (=> b!1664784 (= e!1067232 Nil!18361)))

(declare-fun d!502992 () Bool)

(declare-fun e!1067236 () Bool)

(assert (=> d!502992 e!1067236))

(declare-fun res!747015 () Bool)

(assert (=> d!502992 (=> (not res!747015) (not e!1067236))))

(declare-fun lt!626686 () List!18431)

(assert (=> d!502992 (= res!747015 (= ((_ map implies) (content!2560 lt!626686) (content!2560 lt!626266)) ((as const (InoxSet Token!6036)) true)))))

(assert (=> d!502992 (= lt!626686 e!1067232)))

(declare-fun c!270981 () Bool)

(assert (=> d!502992 (= c!270981 ((_ is Nil!18361) lt!626266))))

(assert (=> d!502992 (= (drop!934 lt!626266 (+ 0 1)) lt!626686)))

(declare-fun bm!106506 () Bool)

(assert (=> bm!106506 (= call!106511 (size!14607 lt!626266))))

(declare-fun b!1664785 () Bool)

(declare-fun e!1067234 () Int)

(assert (=> b!1664785 (= e!1067234 call!106511)))

(declare-fun b!1664786 () Bool)

(assert (=> b!1664786 (= e!1067235 0)))

(declare-fun b!1664787 () Bool)

(declare-fun e!1067233 () List!18431)

(assert (=> b!1664787 (= e!1067233 lt!626266)))

(declare-fun b!1664788 () Bool)

(assert (=> b!1664788 (= e!1067233 (drop!934 (t!151922 lt!626266) (- (+ 0 1) 1)))))

(declare-fun b!1664789 () Bool)

(assert (=> b!1664789 (= e!1067232 e!1067233)))

(declare-fun c!270980 () Bool)

(assert (=> b!1664789 (= c!270980 (<= (+ 0 1) 0))))

(declare-fun b!1664790 () Bool)

(assert (=> b!1664790 (= e!1067236 (= (size!14607 lt!626686) e!1067234))))

(declare-fun c!270978 () Bool)

(assert (=> b!1664790 (= c!270978 (<= (+ 0 1) 0))))

(declare-fun b!1664791 () Bool)

(assert (=> b!1664791 (= e!1067234 e!1067235)))

(declare-fun c!270979 () Bool)

(assert (=> b!1664791 (= c!270979 (>= (+ 0 1) call!106511))))

(assert (= (and d!502992 c!270981) b!1664784))

(assert (= (and d!502992 (not c!270981)) b!1664789))

(assert (= (and b!1664789 c!270980) b!1664787))

(assert (= (and b!1664789 (not c!270980)) b!1664788))

(assert (= (and d!502992 res!747015) b!1664790))

(assert (= (and b!1664790 c!270978) b!1664785))

(assert (= (and b!1664790 (not c!270978)) b!1664791))

(assert (= (and b!1664791 c!270979) b!1664786))

(assert (= (and b!1664791 (not c!270979)) b!1664783))

(assert (= (or b!1664785 b!1664791 b!1664783) bm!106506))

(declare-fun m!2027569 () Bool)

(assert (=> d!502992 m!2027569))

(declare-fun m!2027571 () Bool)

(assert (=> d!502992 m!2027571))

(declare-fun m!2027573 () Bool)

(assert (=> bm!106506 m!2027573))

(declare-fun m!2027575 () Bool)

(assert (=> b!1664788 m!2027575))

(declare-fun m!2027577 () Bool)

(assert (=> b!1664790 m!2027577))

(assert (=> b!1664248 d!502992))

(declare-fun b!1664814 () Bool)

(declare-fun e!1067248 () Bool)

(declare-fun lt!626699 () BalanceConc!12180)

(assert (=> b!1664814 (= e!1067248 (= (list!7335 lt!626699) (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (list!7335 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))))))

(declare-fun d!503004 () Bool)

(assert (=> d!503004 e!1067248))

(declare-fun res!747034 () Bool)

(assert (=> d!503004 (=> (not res!747034) (not e!1067248))))

(declare-fun appendAssocInst!480 (Conc!6118 Conc!6118) Bool)

(assert (=> d!503004 (= res!747034 (appendAssocInst!480 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0)))))))

(declare-fun ++!4999 (Conc!6118 Conc!6118) Conc!6118)

(assert (=> d!503004 (= lt!626699 (BalanceConc!12181 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))))))

(assert (=> d!503004 (= (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))) lt!626699)))

(declare-fun b!1664811 () Bool)

(declare-fun res!747036 () Bool)

(assert (=> b!1664811 (=> (not res!747036) (not e!1067248))))

(assert (=> b!1664811 (= res!747036 (isBalanced!1898 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))))))

(declare-fun b!1664813 () Bool)

(declare-fun res!747035 () Bool)

(assert (=> b!1664813 (=> (not res!747035) (not e!1067248))))

(assert (=> b!1664813 (= res!747035 (>= (height!963 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))) (max!0 (height!963 (c!270827 (BalanceConc!12181 Empty!6118))) (height!963 (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0)))))))))

(declare-fun b!1664812 () Bool)

(declare-fun res!747033 () Bool)

(assert (=> b!1664812 (=> (not res!747033) (not e!1067248))))

(assert (=> b!1664812 (= res!747033 (<= (height!963 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))) (+ (max!0 (height!963 (c!270827 (BalanceConc!12181 Empty!6118))) (height!963 (c!270827 (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))) 1)))))

(assert (= (and d!503004 res!747034) b!1664811))

(assert (= (and b!1664811 res!747036) b!1664812))

(assert (= (and b!1664812 res!747033) b!1664813))

(assert (= (and b!1664813 res!747035) b!1664814))

(declare-fun m!2027621 () Bool)

(assert (=> b!1664814 m!2027621))

(assert (=> b!1664814 m!2026563))

(assert (=> b!1664814 m!2026587))

(declare-fun m!2027623 () Bool)

(assert (=> b!1664814 m!2027623))

(assert (=> b!1664814 m!2026563))

(assert (=> b!1664814 m!2027623))

(declare-fun m!2027625 () Bool)

(assert (=> b!1664814 m!2027625))

(declare-fun m!2027631 () Bool)

(assert (=> b!1664811 m!2027631))

(assert (=> b!1664811 m!2027631))

(declare-fun m!2027639 () Bool)

(assert (=> b!1664811 m!2027639))

(declare-fun m!2027643 () Bool)

(assert (=> d!503004 m!2027643))

(assert (=> d!503004 m!2027631))

(assert (=> b!1664813 m!2027631))

(declare-fun m!2027645 () Bool)

(assert (=> b!1664813 m!2027645))

(declare-fun m!2027647 () Bool)

(assert (=> b!1664813 m!2027647))

(declare-fun m!2027649 () Bool)

(assert (=> b!1664813 m!2027649))

(assert (=> b!1664813 m!2027631))

(declare-fun m!2027651 () Bool)

(assert (=> b!1664813 m!2027651))

(assert (=> b!1664813 m!2027645))

(assert (=> b!1664813 m!2027647))

(assert (=> b!1664812 m!2027631))

(assert (=> b!1664812 m!2027645))

(assert (=> b!1664812 m!2027647))

(assert (=> b!1664812 m!2027649))

(assert (=> b!1664812 m!2027631))

(assert (=> b!1664812 m!2027651))

(assert (=> b!1664812 m!2027645))

(assert (=> b!1664812 m!2027647))

(assert (=> b!1664248 d!503004))

(declare-fun d!503020 () Bool)

(assert (=> d!503020 (= (head!3717 (drop!934 lt!626264 0)) (apply!4922 lt!626264 0))))

(declare-fun lt!626707 () Unit!31104)

(declare-fun choose!10015 (List!18431 Int) Unit!31104)

(assert (=> d!503020 (= lt!626707 (choose!10015 lt!626264 0))))

(declare-fun e!1067260 () Bool)

(assert (=> d!503020 e!1067260))

(declare-fun res!747047 () Bool)

(assert (=> d!503020 (=> (not res!747047) (not e!1067260))))

(assert (=> d!503020 (= res!747047 (>= 0 0))))

(assert (=> d!503020 (= (lemmaDropApply!618 lt!626264 0) lt!626707)))

(declare-fun b!1664834 () Bool)

(assert (=> b!1664834 (= e!1067260 (< 0 (size!14607 lt!626264)))))

(assert (= (and d!503020 res!747047) b!1664834))

(assert (=> d!503020 m!2026573))

(assert (=> d!503020 m!2026573))

(assert (=> d!503020 m!2026575))

(assert (=> d!503020 m!2026585))

(declare-fun m!2027677 () Bool)

(assert (=> d!503020 m!2027677))

(declare-fun m!2027679 () Bool)

(assert (=> b!1664834 m!2027679))

(assert (=> b!1664248 d!503020))

(declare-fun d!503028 () Bool)

(declare-fun lt!626710 () Token!6036)

(assert (=> d!503028 (= lt!626710 (apply!4922 (list!7332 (seqFromList!2208 tokens!457)) 0))))

(assert (=> d!503028 (= lt!626710 (apply!4926 (c!270829 (seqFromList!2208 tokens!457)) 0))))

(declare-fun e!1067261 () Bool)

(assert (=> d!503028 e!1067261))

(declare-fun res!747048 () Bool)

(assert (=> d!503028 (=> (not res!747048) (not e!1067261))))

(assert (=> d!503028 (= res!747048 (<= 0 0))))

(assert (=> d!503028 (= (apply!4921 (seqFromList!2208 tokens!457) 0) lt!626710)))

(declare-fun b!1664835 () Bool)

(assert (=> b!1664835 (= e!1067261 (< 0 (size!14601 (seqFromList!2208 tokens!457))))))

(assert (= (and d!503028 res!747048) b!1664835))

(assert (=> d!503028 m!2026125))

(assert (=> d!503028 m!2026231))

(assert (=> d!503028 m!2026231))

(declare-fun m!2027681 () Bool)

(assert (=> d!503028 m!2027681))

(declare-fun m!2027683 () Bool)

(assert (=> d!503028 m!2027683))

(assert (=> b!1664835 m!2026125))

(assert (=> b!1664835 m!2026569))

(assert (=> b!1664248 d!503028))

(declare-fun d!503030 () Bool)

(declare-fun lt!626717 () Token!6036)

(declare-fun contains!3205 (List!18431 Token!6036) Bool)

(assert (=> d!503030 (contains!3205 lt!626264 lt!626717)))

(declare-fun e!1067270 () Token!6036)

(assert (=> d!503030 (= lt!626717 e!1067270)))

(declare-fun c!270995 () Bool)

(assert (=> d!503030 (= c!270995 (= 0 0))))

(declare-fun e!1067271 () Bool)

(assert (=> d!503030 e!1067271))

(declare-fun res!747054 () Bool)

(assert (=> d!503030 (=> (not res!747054) (not e!1067271))))

(assert (=> d!503030 (= res!747054 (<= 0 0))))

(assert (=> d!503030 (= (apply!4922 lt!626264 0) lt!626717)))

(declare-fun b!1664849 () Bool)

(assert (=> b!1664849 (= e!1067271 (< 0 (size!14607 lt!626264)))))

(declare-fun b!1664850 () Bool)

(assert (=> b!1664850 (= e!1067270 (head!3717 lt!626264))))

(declare-fun b!1664851 () Bool)

(assert (=> b!1664851 (= e!1067270 (apply!4922 (tail!2482 lt!626264) (- 0 1)))))

(assert (= (and d!503030 res!747054) b!1664849))

(assert (= (and d!503030 c!270995) b!1664850))

(assert (= (and d!503030 (not c!270995)) b!1664851))

(declare-fun m!2027709 () Bool)

(assert (=> d!503030 m!2027709))

(assert (=> b!1664849 m!2027679))

(declare-fun m!2027711 () Bool)

(assert (=> b!1664850 m!2027711))

(declare-fun m!2027713 () Bool)

(assert (=> b!1664851 m!2027713))

(assert (=> b!1664851 m!2027713))

(declare-fun m!2027715 () Bool)

(assert (=> b!1664851 m!2027715))

(assert (=> b!1664248 d!503030))

(declare-fun d!503036 () Bool)

(declare-fun lt!626720 () BalanceConc!12180)

(assert (=> d!503036 (= (list!7335 lt!626720) (printListTailRec!411 thiss!17113 (dropList!708 (seqFromList!2208 tokens!457) (+ 0 1)) (list!7335 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))))))

(declare-fun e!1067273 () BalanceConc!12180)

(assert (=> d!503036 (= lt!626720 e!1067273)))

(declare-fun c!270996 () Bool)

(assert (=> d!503036 (= c!270996 (>= (+ 0 1) (size!14601 (seqFromList!2208 tokens!457))))))

(declare-fun e!1067272 () Bool)

(assert (=> d!503036 e!1067272))

(declare-fun res!747055 () Bool)

(assert (=> d!503036 (=> (not res!747055) (not e!1067272))))

(assert (=> d!503036 (= res!747055 (>= (+ 0 1) 0))))

(assert (=> d!503036 (= (printTailRec!915 thiss!17113 (seqFromList!2208 tokens!457) (+ 0 1) (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0)))) lt!626720)))

(declare-fun b!1664852 () Bool)

(assert (=> b!1664852 (= e!1067272 (<= (+ 0 1) (size!14601 (seqFromList!2208 tokens!457))))))

(declare-fun b!1664853 () Bool)

(assert (=> b!1664853 (= e!1067273 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))))))

(declare-fun b!1664854 () Bool)

(assert (=> b!1664854 (= e!1067273 (printTailRec!915 thiss!17113 (seqFromList!2208 tokens!457) (+ 0 1 1) (++!4997 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0))) (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) (+ 0 1))))))))

(declare-fun lt!626721 () List!18431)

(assert (=> b!1664854 (= lt!626721 (list!7332 (seqFromList!2208 tokens!457)))))

(declare-fun lt!626724 () Unit!31104)

(assert (=> b!1664854 (= lt!626724 (lemmaDropApply!618 lt!626721 (+ 0 1)))))

(assert (=> b!1664854 (= (head!3717 (drop!934 lt!626721 (+ 0 1))) (apply!4922 lt!626721 (+ 0 1)))))

(declare-fun lt!626718 () Unit!31104)

(assert (=> b!1664854 (= lt!626718 lt!626724)))

(declare-fun lt!626723 () List!18431)

(assert (=> b!1664854 (= lt!626723 (list!7332 (seqFromList!2208 tokens!457)))))

(declare-fun lt!626719 () Unit!31104)

(assert (=> b!1664854 (= lt!626719 (lemmaDropTail!598 lt!626723 (+ 0 1)))))

(assert (=> b!1664854 (= (tail!2482 (drop!934 lt!626723 (+ 0 1))) (drop!934 lt!626723 (+ 0 1 1)))))

(declare-fun lt!626722 () Unit!31104)

(assert (=> b!1664854 (= lt!626722 lt!626719)))

(assert (= (and d!503036 res!747055) b!1664852))

(assert (= (and d!503036 c!270996) b!1664853))

(assert (= (and d!503036 (not c!270996)) b!1664854))

(assert (=> d!503036 m!2026589))

(declare-fun m!2027717 () Bool)

(assert (=> d!503036 m!2027717))

(assert (=> d!503036 m!2026125))

(declare-fun m!2027719 () Bool)

(assert (=> d!503036 m!2027719))

(declare-fun m!2027721 () Bool)

(assert (=> d!503036 m!2027721))

(assert (=> d!503036 m!2026125))

(assert (=> d!503036 m!2026569))

(assert (=> d!503036 m!2027719))

(assert (=> d!503036 m!2027717))

(declare-fun m!2027723 () Bool)

(assert (=> d!503036 m!2027723))

(assert (=> b!1664852 m!2026125))

(assert (=> b!1664852 m!2026569))

(assert (=> b!1664854 m!2026125))

(assert (=> b!1664854 m!2026231))

(declare-fun m!2027725 () Bool)

(assert (=> b!1664854 m!2027725))

(declare-fun m!2027727 () Bool)

(assert (=> b!1664854 m!2027727))

(declare-fun m!2027729 () Bool)

(assert (=> b!1664854 m!2027729))

(declare-fun m!2027731 () Bool)

(assert (=> b!1664854 m!2027731))

(declare-fun m!2027733 () Bool)

(assert (=> b!1664854 m!2027733))

(assert (=> b!1664854 m!2027725))

(assert (=> b!1664854 m!2026125))

(declare-fun m!2027735 () Bool)

(assert (=> b!1664854 m!2027735))

(declare-fun m!2027737 () Bool)

(assert (=> b!1664854 m!2027737))

(assert (=> b!1664854 m!2027735))

(declare-fun m!2027739 () Bool)

(assert (=> b!1664854 m!2027739))

(assert (=> b!1664854 m!2026589))

(assert (=> b!1664854 m!2027739))

(declare-fun m!2027741 () Bool)

(assert (=> b!1664854 m!2027741))

(declare-fun m!2027743 () Bool)

(assert (=> b!1664854 m!2027743))

(assert (=> b!1664854 m!2026125))

(assert (=> b!1664854 m!2027741))

(declare-fun m!2027745 () Bool)

(assert (=> b!1664854 m!2027745))

(assert (=> b!1664854 m!2027731))

(declare-fun m!2027747 () Bool)

(assert (=> b!1664854 m!2027747))

(assert (=> b!1664248 d!503036))

(declare-fun d!503038 () Bool)

(assert (=> d!503038 (= (tail!2482 (drop!934 lt!626266 0)) (drop!934 lt!626266 (+ 0 1)))))

(declare-fun lt!626729 () Unit!31104)

(declare-fun choose!10016 (List!18431 Int) Unit!31104)

(assert (=> d!503038 (= lt!626729 (choose!10016 lt!626266 0))))

(declare-fun e!1067278 () Bool)

(assert (=> d!503038 e!1067278))

(declare-fun res!747066 () Bool)

(assert (=> d!503038 (=> (not res!747066) (not e!1067278))))

(assert (=> d!503038 (= res!747066 (>= 0 0))))

(assert (=> d!503038 (= (lemmaDropTail!598 lt!626266 0) lt!626729)))

(declare-fun b!1664865 () Bool)

(assert (=> b!1664865 (= e!1067278 (< 0 (size!14607 lt!626266)))))

(assert (= (and d!503038 res!747066) b!1664865))

(assert (=> d!503038 m!2026579))

(assert (=> d!503038 m!2026579))

(assert (=> d!503038 m!2026595))

(assert (=> d!503038 m!2026581))

(declare-fun m!2027749 () Bool)

(assert (=> d!503038 m!2027749))

(assert (=> b!1664865 m!2027573))

(assert (=> b!1664248 d!503038))

(declare-fun b!1664866 () Bool)

(declare-fun e!1067282 () Int)

(declare-fun call!106513 () Int)

(assert (=> b!1664866 (= e!1067282 (- call!106513 0))))

(declare-fun b!1664867 () Bool)

(declare-fun e!1067279 () List!18431)

(assert (=> b!1664867 (= e!1067279 Nil!18361)))

(declare-fun d!503040 () Bool)

(declare-fun e!1067283 () Bool)

(assert (=> d!503040 e!1067283))

(declare-fun res!747067 () Bool)

(assert (=> d!503040 (=> (not res!747067) (not e!1067283))))

(declare-fun lt!626730 () List!18431)

(assert (=> d!503040 (= res!747067 (= ((_ map implies) (content!2560 lt!626730) (content!2560 lt!626264)) ((as const (InoxSet Token!6036)) true)))))

(assert (=> d!503040 (= lt!626730 e!1067279)))

(declare-fun c!271003 () Bool)

(assert (=> d!503040 (= c!271003 ((_ is Nil!18361) lt!626264))))

(assert (=> d!503040 (= (drop!934 lt!626264 0) lt!626730)))

(declare-fun bm!106508 () Bool)

(assert (=> bm!106508 (= call!106513 (size!14607 lt!626264))))

(declare-fun b!1664868 () Bool)

(declare-fun e!1067281 () Int)

(assert (=> b!1664868 (= e!1067281 call!106513)))

(declare-fun b!1664869 () Bool)

(assert (=> b!1664869 (= e!1067282 0)))

(declare-fun b!1664870 () Bool)

(declare-fun e!1067280 () List!18431)

(assert (=> b!1664870 (= e!1067280 lt!626264)))

(declare-fun b!1664871 () Bool)

(assert (=> b!1664871 (= e!1067280 (drop!934 (t!151922 lt!626264) (- 0 1)))))

(declare-fun b!1664872 () Bool)

(assert (=> b!1664872 (= e!1067279 e!1067280)))

(declare-fun c!271002 () Bool)

(assert (=> b!1664872 (= c!271002 (<= 0 0))))

(declare-fun b!1664873 () Bool)

(assert (=> b!1664873 (= e!1067283 (= (size!14607 lt!626730) e!1067281))))

(declare-fun c!271000 () Bool)

(assert (=> b!1664873 (= c!271000 (<= 0 0))))

(declare-fun b!1664874 () Bool)

(assert (=> b!1664874 (= e!1067281 e!1067282)))

(declare-fun c!271001 () Bool)

(assert (=> b!1664874 (= c!271001 (>= 0 call!106513))))

(assert (= (and d!503040 c!271003) b!1664867))

(assert (= (and d!503040 (not c!271003)) b!1664872))

(assert (= (and b!1664872 c!271002) b!1664870))

(assert (= (and b!1664872 (not c!271002)) b!1664871))

(assert (= (and d!503040 res!747067) b!1664873))

(assert (= (and b!1664873 c!271000) b!1664868))

(assert (= (and b!1664873 (not c!271000)) b!1664874))

(assert (= (and b!1664874 c!271001) b!1664869))

(assert (= (and b!1664874 (not c!271001)) b!1664866))

(assert (= (or b!1664868 b!1664874 b!1664866) bm!106508))

(declare-fun m!2027751 () Bool)

(assert (=> d!503040 m!2027751))

(declare-fun m!2027753 () Bool)

(assert (=> d!503040 m!2027753))

(assert (=> bm!106508 m!2027679))

(declare-fun m!2027755 () Bool)

(assert (=> b!1664871 m!2027755))

(declare-fun m!2027757 () Bool)

(assert (=> b!1664873 m!2027757))

(assert (=> b!1664248 d!503040))

(declare-fun d!503042 () Bool)

(assert (=> d!503042 (= (tail!2482 (drop!934 lt!626266 0)) (t!151922 (drop!934 lt!626266 0)))))

(assert (=> b!1664248 d!503042))

(declare-fun b!1664875 () Bool)

(declare-fun e!1067287 () Int)

(declare-fun call!106514 () Int)

(assert (=> b!1664875 (= e!1067287 (- call!106514 0))))

(declare-fun b!1664876 () Bool)

(declare-fun e!1067284 () List!18431)

(assert (=> b!1664876 (= e!1067284 Nil!18361)))

(declare-fun d!503044 () Bool)

(declare-fun e!1067288 () Bool)

(assert (=> d!503044 e!1067288))

(declare-fun res!747068 () Bool)

(assert (=> d!503044 (=> (not res!747068) (not e!1067288))))

(declare-fun lt!626731 () List!18431)

(assert (=> d!503044 (= res!747068 (= ((_ map implies) (content!2560 lt!626731) (content!2560 lt!626266)) ((as const (InoxSet Token!6036)) true)))))

(assert (=> d!503044 (= lt!626731 e!1067284)))

(declare-fun c!271007 () Bool)

(assert (=> d!503044 (= c!271007 ((_ is Nil!18361) lt!626266))))

(assert (=> d!503044 (= (drop!934 lt!626266 0) lt!626731)))

(declare-fun bm!106509 () Bool)

(assert (=> bm!106509 (= call!106514 (size!14607 lt!626266))))

(declare-fun b!1664877 () Bool)

(declare-fun e!1067286 () Int)

(assert (=> b!1664877 (= e!1067286 call!106514)))

(declare-fun b!1664878 () Bool)

(assert (=> b!1664878 (= e!1067287 0)))

(declare-fun b!1664879 () Bool)

(declare-fun e!1067285 () List!18431)

(assert (=> b!1664879 (= e!1067285 lt!626266)))

(declare-fun b!1664880 () Bool)

(assert (=> b!1664880 (= e!1067285 (drop!934 (t!151922 lt!626266) (- 0 1)))))

(declare-fun b!1664881 () Bool)

(assert (=> b!1664881 (= e!1067284 e!1067285)))

(declare-fun c!271006 () Bool)

(assert (=> b!1664881 (= c!271006 (<= 0 0))))

(declare-fun b!1664882 () Bool)

(assert (=> b!1664882 (= e!1067288 (= (size!14607 lt!626731) e!1067286))))

(declare-fun c!271004 () Bool)

(assert (=> b!1664882 (= c!271004 (<= 0 0))))

(declare-fun b!1664883 () Bool)

(assert (=> b!1664883 (= e!1067286 e!1067287)))

(declare-fun c!271005 () Bool)

(assert (=> b!1664883 (= c!271005 (>= 0 call!106514))))

(assert (= (and d!503044 c!271007) b!1664876))

(assert (= (and d!503044 (not c!271007)) b!1664881))

(assert (= (and b!1664881 c!271006) b!1664879))

(assert (= (and b!1664881 (not c!271006)) b!1664880))

(assert (= (and d!503044 res!747068) b!1664882))

(assert (= (and b!1664882 c!271004) b!1664877))

(assert (= (and b!1664882 (not c!271004)) b!1664883))

(assert (= (and b!1664883 c!271005) b!1664878))

(assert (= (and b!1664883 (not c!271005)) b!1664875))

(assert (= (or b!1664877 b!1664883 b!1664875) bm!106509))

(declare-fun m!2027759 () Bool)

(assert (=> d!503044 m!2027759))

(assert (=> d!503044 m!2027571))

(assert (=> bm!106509 m!2027573))

(declare-fun m!2027761 () Bool)

(assert (=> b!1664880 m!2027761))

(declare-fun m!2027763 () Bool)

(assert (=> b!1664882 m!2027763))

(assert (=> b!1664248 d!503044))

(declare-fun d!503046 () Bool)

(declare-fun lt!626732 () BalanceConc!12180)

(assert (=> d!503046 (= (list!7335 lt!626732) (originalCharacters!4049 (apply!4921 (seqFromList!2208 tokens!457) 0)))))

(assert (=> d!503046 (= lt!626732 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0)))) (value!101870 (apply!4921 (seqFromList!2208 tokens!457) 0))))))

(assert (=> d!503046 (= (charsOf!1884 (apply!4921 (seqFromList!2208 tokens!457) 0)) lt!626732)))

(declare-fun b_lambda!52253 () Bool)

(assert (=> (not b_lambda!52253) (not d!503046)))

(declare-fun t!152003 () Bool)

(declare-fun tb!95363 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152003) tb!95363))

(declare-fun b!1664888 () Bool)

(declare-fun e!1067290 () Bool)

(declare-fun tp!479944 () Bool)

(assert (=> b!1664888 (= e!1067290 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0)))) (value!101870 (apply!4921 (seqFromList!2208 tokens!457) 0))))) tp!479944))))

(declare-fun result!115254 () Bool)

(assert (=> tb!95363 (= result!115254 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0)))) (value!101870 (apply!4921 (seqFromList!2208 tokens!457) 0)))) e!1067290))))

(assert (= tb!95363 b!1664888))

(declare-fun m!2027765 () Bool)

(assert (=> b!1664888 m!2027765))

(declare-fun m!2027767 () Bool)

(assert (=> tb!95363 m!2027767))

(assert (=> d!503046 t!152003))

(declare-fun b_and!118209 () Bool)

(assert (= b_and!118183 (and (=> t!152003 result!115254) b_and!118209)))

(declare-fun tb!95365 () Bool)

(declare-fun t!152005 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152005) tb!95365))

(declare-fun result!115256 () Bool)

(assert (= result!115256 result!115254))

(assert (=> d!503046 t!152005))

(declare-fun b_and!118211 () Bool)

(assert (= b_and!118195 (and (=> t!152005 result!115256) b_and!118211)))

(declare-fun tb!95367 () Bool)

(declare-fun t!152007 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152007) tb!95367))

(declare-fun result!115258 () Bool)

(assert (= result!115258 result!115254))

(assert (=> d!503046 t!152007))

(declare-fun b_and!118213 () Bool)

(assert (= b_and!118185 (and (=> t!152007 result!115258) b_and!118213)))

(declare-fun t!152009 () Bool)

(declare-fun tb!95369 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152009) tb!95369))

(declare-fun result!115260 () Bool)

(assert (= result!115260 result!115254))

(assert (=> d!503046 t!152009))

(declare-fun b_and!118215 () Bool)

(assert (= b_and!118187 (and (=> t!152009 result!115260) b_and!118215)))

(declare-fun t!152011 () Bool)

(declare-fun tb!95371 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152011) tb!95371))

(declare-fun result!115262 () Bool)

(assert (= result!115262 result!115254))

(assert (=> d!503046 t!152011))

(declare-fun b_and!118217 () Bool)

(assert (= b_and!118181 (and (=> t!152011 result!115262) b_and!118217)))

(declare-fun t!152013 () Bool)

(declare-fun tb!95373 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152013) tb!95373))

(declare-fun result!115264 () Bool)

(assert (= result!115264 result!115254))

(assert (=> d!503046 t!152013))

(declare-fun b_and!118219 () Bool)

(assert (= b_and!118191 (and (=> t!152013 result!115264) b_and!118219)))

(declare-fun m!2027769 () Bool)

(assert (=> d!503046 m!2027769))

(declare-fun m!2027771 () Bool)

(assert (=> d!503046 m!2027771))

(assert (=> b!1664248 d!503046))

(declare-fun d!503048 () Bool)

(assert (=> d!503048 (= (head!3717 (drop!934 lt!626264 0)) (h!23762 (drop!934 lt!626264 0)))))

(assert (=> b!1664248 d!503048))

(assert (=> b!1664248 d!502766))

(declare-fun d!503050 () Bool)

(declare-fun choose!644 (List!18430) Int)

(assert (=> d!503050 (= (charsToBigInt!1 (text!23723 (value!101870 (h!23762 tokens!457)))) (choose!644 (text!23723 (value!101870 (h!23762 tokens!457)))))))

(declare-fun bs!397547 () Bool)

(assert (= bs!397547 d!503050))

(declare-fun m!2027789 () Bool)

(assert (=> bs!397547 m!2027789))

(assert (=> d!502776 d!503050))

(declare-fun d!503054 () Bool)

(declare-fun lt!626734 () Int)

(assert (=> d!503054 (>= lt!626734 0)))

(declare-fun e!1067291 () Int)

(assert (=> d!503054 (= lt!626734 e!1067291)))

(declare-fun c!271008 () Bool)

(assert (=> d!503054 (= c!271008 ((_ is Nil!18359) (_2!10441 lt!626276)))))

(assert (=> d!503054 (= (size!14602 (_2!10441 lt!626276)) lt!626734)))

(declare-fun b!1664889 () Bool)

(assert (=> b!1664889 (= e!1067291 0)))

(declare-fun b!1664890 () Bool)

(assert (=> b!1664890 (= e!1067291 (+ 1 (size!14602 (t!151920 (_2!10441 lt!626276)))))))

(assert (= (and d!503054 c!271008) b!1664889))

(assert (= (and d!503054 (not c!271008)) b!1664890))

(declare-fun m!2027793 () Bool)

(assert (=> b!1664890 m!2027793))

(assert (=> b!1664261 d!503054))

(declare-fun d!503058 () Bool)

(declare-fun lt!626737 () Int)

(assert (=> d!503058 (>= lt!626737 0)))

(declare-fun e!1067295 () Int)

(assert (=> d!503058 (= lt!626737 e!1067295)))

(declare-fun c!271011 () Bool)

(assert (=> d!503058 (= c!271011 ((_ is Nil!18359) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!503058 (= (size!14602 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) lt!626737)))

(declare-fun b!1664891 () Bool)

(assert (=> b!1664891 (= e!1067295 0)))

(declare-fun b!1664892 () Bool)

(assert (=> b!1664892 (= e!1067295 (+ 1 (size!14602 (t!151920 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(assert (= (and d!503058 c!271011) b!1664891))

(assert (= (and d!503058 (not c!271011)) b!1664892))

(declare-fun m!2027795 () Bool)

(assert (=> b!1664892 m!2027795))

(assert (=> b!1664261 d!503058))

(declare-fun d!503060 () Bool)

(assert (=> d!503060 (= (isEmpty!11422 (list!7332 (_1!10439 lt!626151))) ((_ is Nil!18361) (list!7332 (_1!10439 lt!626151))))))

(assert (=> d!502756 d!503060))

(assert (=> d!502756 d!502798))

(declare-fun d!503062 () Bool)

(declare-fun lt!626743 () Bool)

(assert (=> d!503062 (= lt!626743 (isEmpty!11422 (list!7336 (c!270829 (_1!10439 lt!626151)))))))

(assert (=> d!503062 (= lt!626743 (= (size!14608 (c!270829 (_1!10439 lt!626151))) 0))))

(assert (=> d!503062 (= (isEmpty!11423 (c!270829 (_1!10439 lt!626151))) lt!626743)))

(declare-fun bs!397552 () Bool)

(assert (= bs!397552 d!503062))

(assert (=> bs!397552 m!2026823))

(assert (=> bs!397552 m!2026823))

(declare-fun m!2027819 () Bool)

(assert (=> bs!397552 m!2027819))

(assert (=> bs!397552 m!2026621))

(assert (=> d!502756 d!503062))

(declare-fun e!1067303 () Bool)

(declare-fun b!1664913 () Bool)

(declare-fun lt!626751 () List!18429)

(assert (=> b!1664913 (= e!1067303 (or (not (= (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))) Nil!18359)) (= lt!626751 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1664911 () Bool)

(declare-fun e!1067304 () List!18429)

(assert (=> b!1664911 (= e!1067304 (Cons!18359 (h!23760 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (++!4996 (t!151920 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))))))))

(declare-fun b!1664910 () Bool)

(assert (=> b!1664910 (= e!1067304 (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))))))

(declare-fun d!503074 () Bool)

(assert (=> d!503074 e!1067303))

(declare-fun res!747080 () Bool)

(assert (=> d!503074 (=> (not res!747080) (not e!1067303))))

(declare-fun content!2562 (List!18429) (InoxSet C!9300))

(assert (=> d!503074 (= res!747080 (= (content!2562 lt!626751) ((_ map or) (content!2562 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (content!2562 (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457))))))))))

(assert (=> d!503074 (= lt!626751 e!1067304)))

(declare-fun c!271015 () Bool)

(assert (=> d!503074 (= c!271015 ((_ is Nil!18359) (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))))))

(assert (=> d!503074 (= (++!4996 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))) (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457))))) lt!626751)))

(declare-fun b!1664912 () Bool)

(declare-fun res!747081 () Bool)

(assert (=> b!1664912 (=> (not res!747081) (not e!1067303))))

(assert (=> b!1664912 (= res!747081 (= (size!14602 lt!626751) (+ (size!14602 (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (size!14602 (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457))))))))))

(assert (= (and d!503074 c!271015) b!1664910))

(assert (= (and d!503074 (not c!271015)) b!1664911))

(assert (= (and d!503074 res!747080) b!1664912))

(assert (= (and b!1664912 res!747081) b!1664913))

(assert (=> b!1664911 m!2026557))

(declare-fun m!2027823 () Bool)

(assert (=> b!1664911 m!2027823))

(declare-fun m!2027825 () Bool)

(assert (=> d!503074 m!2027825))

(assert (=> d!503074 m!2026555))

(declare-fun m!2027827 () Bool)

(assert (=> d!503074 m!2027827))

(assert (=> d!503074 m!2026557))

(declare-fun m!2027829 () Bool)

(assert (=> d!503074 m!2027829))

(declare-fun m!2027831 () Bool)

(assert (=> b!1664912 m!2027831))

(assert (=> b!1664912 m!2026555))

(declare-fun m!2027833 () Bool)

(assert (=> b!1664912 m!2027833))

(assert (=> b!1664912 m!2026557))

(declare-fun m!2027837 () Bool)

(assert (=> b!1664912 m!2027837))

(assert (=> b!1664238 d!503074))

(declare-fun d!503078 () Bool)

(assert (=> d!503078 (= (list!7335 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))) (list!7339 (c!270827 (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))))))

(declare-fun bs!397554 () Bool)

(assert (= bs!397554 d!503078))

(declare-fun m!2027843 () Bool)

(assert (=> bs!397554 m!2027843))

(assert (=> b!1664238 d!503078))

(declare-fun d!503082 () Bool)

(declare-fun lt!626753 () BalanceConc!12180)

(assert (=> d!503082 (= (list!7335 lt!626753) (originalCharacters!4049 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))))

(assert (=> d!503082 (= lt!626753 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (value!101870 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))))

(assert (=> d!503082 (= (charsOf!1884 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))) lt!626753)))

(declare-fun b_lambda!52255 () Bool)

(assert (=> (not b_lambda!52255) (not d!503082)))

(declare-fun tb!95375 () Bool)

(declare-fun t!152018 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152018) tb!95375))

(declare-fun b!1664915 () Bool)

(declare-fun e!1067306 () Bool)

(declare-fun tp!479945 () Bool)

(assert (=> b!1664915 (= e!1067306 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (value!101870 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) tp!479945))))

(declare-fun result!115266 () Bool)

(assert (=> tb!95375 (= result!115266 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) (value!101870 (h!23762 (list!7332 (seqFromList!2208 tokens!457)))))) e!1067306))))

(assert (= tb!95375 b!1664915))

(declare-fun m!2027845 () Bool)

(assert (=> b!1664915 m!2027845))

(declare-fun m!2027847 () Bool)

(assert (=> tb!95375 m!2027847))

(assert (=> d!503082 t!152018))

(declare-fun b_and!118221 () Bool)

(assert (= b_and!118209 (and (=> t!152018 result!115266) b_and!118221)))

(declare-fun tb!95377 () Bool)

(declare-fun t!152020 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152020) tb!95377))

(declare-fun result!115268 () Bool)

(assert (= result!115268 result!115266))

(assert (=> d!503082 t!152020))

(declare-fun b_and!118223 () Bool)

(assert (= b_and!118211 (and (=> t!152020 result!115268) b_and!118223)))

(declare-fun t!152022 () Bool)

(declare-fun tb!95379 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152022) tb!95379))

(declare-fun result!115270 () Bool)

(assert (= result!115270 result!115266))

(assert (=> d!503082 t!152022))

(declare-fun b_and!118225 () Bool)

(assert (= b_and!118219 (and (=> t!152022 result!115270) b_and!118225)))

(declare-fun tb!95381 () Bool)

(declare-fun t!152024 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152024) tb!95381))

(declare-fun result!115272 () Bool)

(assert (= result!115272 result!115266))

(assert (=> d!503082 t!152024))

(declare-fun b_and!118227 () Bool)

(assert (= b_and!118213 (and (=> t!152024 result!115272) b_and!118227)))

(declare-fun t!152026 () Bool)

(declare-fun tb!95383 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152026) tb!95383))

(declare-fun result!115274 () Bool)

(assert (= result!115274 result!115266))

(assert (=> d!503082 t!152026))

(declare-fun b_and!118229 () Bool)

(assert (= b_and!118215 (and (=> t!152026 result!115274) b_and!118229)))

(declare-fun t!152028 () Bool)

(declare-fun tb!95385 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152028) tb!95385))

(declare-fun result!115276 () Bool)

(assert (= result!115276 result!115266))

(assert (=> d!503082 t!152028))

(declare-fun b_and!118231 () Bool)

(assert (= b_and!118217 (and (=> t!152028 result!115276) b_and!118231)))

(declare-fun m!2027849 () Bool)

(assert (=> d!503082 m!2027849))

(declare-fun m!2027851 () Bool)

(assert (=> d!503082 m!2027851))

(assert (=> b!1664238 d!503082))

(declare-fun d!503084 () Bool)

(declare-fun c!271016 () Bool)

(assert (=> d!503084 (= c!271016 ((_ is Cons!18361) (t!151922 (list!7332 (seqFromList!2208 tokens!457)))))))

(declare-fun e!1067307 () List!18429)

(assert (=> d!503084 (= (printList!977 thiss!17113 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))) e!1067307)))

(declare-fun b!1664916 () Bool)

(assert (=> b!1664916 (= e!1067307 (++!4996 (list!7335 (charsOf!1884 (h!23762 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))))) (printList!977 thiss!17113 (t!151922 (t!151922 (list!7332 (seqFromList!2208 tokens!457)))))))))

(declare-fun b!1664917 () Bool)

(assert (=> b!1664917 (= e!1067307 Nil!18359)))

(assert (= (and d!503084 c!271016) b!1664916))

(assert (= (and d!503084 (not c!271016)) b!1664917))

(declare-fun m!2027853 () Bool)

(assert (=> b!1664916 m!2027853))

(assert (=> b!1664916 m!2027853))

(declare-fun m!2027855 () Bool)

(assert (=> b!1664916 m!2027855))

(declare-fun m!2027857 () Bool)

(assert (=> b!1664916 m!2027857))

(assert (=> b!1664916 m!2027855))

(assert (=> b!1664916 m!2027857))

(declare-fun m!2027859 () Bool)

(assert (=> b!1664916 m!2027859))

(assert (=> b!1664238 d!503084))

(declare-fun d!503086 () Bool)

(declare-fun lt!626756 () Int)

(assert (=> d!503086 (>= lt!626756 0)))

(declare-fun e!1067310 () Int)

(assert (=> d!503086 (= lt!626756 e!1067310)))

(declare-fun c!271019 () Bool)

(assert (=> d!503086 (= c!271019 ((_ is Nil!18361) (_1!10441 lt!626276)))))

(assert (=> d!503086 (= (size!14607 (_1!10441 lt!626276)) lt!626756)))

(declare-fun b!1664922 () Bool)

(assert (=> b!1664922 (= e!1067310 0)))

(declare-fun b!1664923 () Bool)

(assert (=> b!1664923 (= e!1067310 (+ 1 (size!14607 (t!151922 (_1!10441 lt!626276)))))))

(assert (= (and d!503086 c!271019) b!1664922))

(assert (= (and d!503086 (not c!271019)) b!1664923))

(declare-fun m!2027861 () Bool)

(assert (=> b!1664923 m!2027861))

(assert (=> d!502772 d!503086))

(declare-fun b!1664946 () Bool)

(declare-fun res!747106 () Bool)

(declare-fun e!1067319 () Bool)

(assert (=> b!1664946 (=> (not res!747106) (not e!1067319))))

(declare-fun lt!626801 () Option!3523)

(declare-fun matchR!2055 (Regex!4563 List!18429) Bool)

(declare-fun get!5376 (Option!3523) tuple2!18084)

(assert (=> b!1664946 (= res!747106 (matchR!2055 (regex!3235 (rule!5123 (_1!10444 (get!5376 lt!626801)))) (list!7335 (charsOf!1884 (_1!10444 (get!5376 lt!626801))))))))

(declare-fun b!1664947 () Bool)

(declare-fun contains!3206 (List!18432 Rule!6270) Bool)

(assert (=> b!1664947 (= e!1067319 (contains!3206 rules!1846 (rule!5123 (_1!10444 (get!5376 lt!626801)))))))

(declare-fun b!1664948 () Bool)

(declare-fun res!747105 () Bool)

(assert (=> b!1664948 (=> (not res!747105) (not e!1067319))))

(assert (=> b!1664948 (= res!747105 (< (size!14602 (_2!10444 (get!5376 lt!626801))) (size!14602 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))

(declare-fun b!1664949 () Bool)

(declare-fun res!747101 () Bool)

(assert (=> b!1664949 (=> (not res!747101) (not e!1067319))))

(assert (=> b!1664949 (= res!747101 (= (++!4996 (list!7335 (charsOf!1884 (_1!10444 (get!5376 lt!626801)))) (_2!10444 (get!5376 lt!626801))) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun bm!106512 () Bool)

(declare-fun call!106517 () Option!3523)

(declare-fun maxPrefixOneRule!828 (LexerInterface!2864 Rule!6270 List!18429) Option!3523)

(assert (=> bm!106512 (= call!106517 (maxPrefixOneRule!828 thiss!17113 (h!23763 rules!1846) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664950 () Bool)

(declare-fun res!747107 () Bool)

(assert (=> b!1664950 (=> (not res!747107) (not e!1067319))))

(declare-fun apply!4927 (TokenValueInjection!6310 BalanceConc!12180) TokenValue!3325)

(declare-fun seqFromList!2209 (List!18429) BalanceConc!12180)

(assert (=> b!1664950 (= res!747107 (= (value!101870 (_1!10444 (get!5376 lt!626801))) (apply!4927 (transformation!3235 (rule!5123 (_1!10444 (get!5376 lt!626801)))) (seqFromList!2209 (originalCharacters!4049 (_1!10444 (get!5376 lt!626801)))))))))

(declare-fun d!503088 () Bool)

(declare-fun e!1067318 () Bool)

(assert (=> d!503088 e!1067318))

(declare-fun res!747102 () Bool)

(assert (=> d!503088 (=> res!747102 e!1067318)))

(declare-fun isEmpty!11424 (Option!3523) Bool)

(assert (=> d!503088 (= res!747102 (isEmpty!11424 lt!626801))))

(declare-fun e!1067320 () Option!3523)

(assert (=> d!503088 (= lt!626801 e!1067320)))

(declare-fun c!271022 () Bool)

(assert (=> d!503088 (= c!271022 (and ((_ is Cons!18362) rules!1846) ((_ is Nil!18362) (t!151923 rules!1846))))))

(declare-fun lt!626800 () Unit!31104)

(declare-fun lt!626803 () Unit!31104)

(assert (=> d!503088 (= lt!626800 lt!626803)))

(declare-fun isPrefix!1493 (List!18429 List!18429) Bool)

(assert (=> d!503088 (isPrefix!1493 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun lemmaIsPrefixRefl!1014 (List!18429 List!18429) Unit!31104)

(assert (=> d!503088 (= lt!626803 (lemmaIsPrefixRefl!1014 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!503088 (rulesValidInductive!1036 thiss!17113 rules!1846)))

(assert (=> d!503088 (= (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) lt!626801)))

(declare-fun b!1664951 () Bool)

(declare-fun lt!626799 () Option!3523)

(declare-fun lt!626802 () Option!3523)

(assert (=> b!1664951 (= e!1067320 (ite (and ((_ is None!3522) lt!626799) ((_ is None!3522) lt!626802)) None!3522 (ite ((_ is None!3522) lt!626802) lt!626799 (ite ((_ is None!3522) lt!626799) lt!626802 (ite (>= (size!14596 (_1!10444 (v!24757 lt!626799))) (size!14596 (_1!10444 (v!24757 lt!626802)))) lt!626799 lt!626802)))))))

(assert (=> b!1664951 (= lt!626799 call!106517)))

(assert (=> b!1664951 (= lt!626802 (maxPrefix!1426 thiss!17113 (t!151923 rules!1846) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664952 () Bool)

(assert (=> b!1664952 (= e!1067318 e!1067319)))

(declare-fun res!747103 () Bool)

(assert (=> b!1664952 (=> (not res!747103) (not e!1067319))))

(declare-fun isDefined!2878 (Option!3523) Bool)

(assert (=> b!1664952 (= res!747103 (isDefined!2878 lt!626801))))

(declare-fun b!1664953 () Bool)

(declare-fun res!747104 () Bool)

(assert (=> b!1664953 (=> (not res!747104) (not e!1067319))))

(assert (=> b!1664953 (= res!747104 (= (list!7335 (charsOf!1884 (_1!10444 (get!5376 lt!626801)))) (originalCharacters!4049 (_1!10444 (get!5376 lt!626801)))))))

(declare-fun b!1664954 () Bool)

(assert (=> b!1664954 (= e!1067320 call!106517)))

(assert (= (and d!503088 c!271022) b!1664954))

(assert (= (and d!503088 (not c!271022)) b!1664951))

(assert (= (or b!1664954 b!1664951) bm!106512))

(assert (= (and d!503088 (not res!747102)) b!1664952))

(assert (= (and b!1664952 res!747103) b!1664953))

(assert (= (and b!1664953 res!747104) b!1664948))

(assert (= (and b!1664948 res!747105) b!1664949))

(assert (= (and b!1664949 res!747101) b!1664950))

(assert (= (and b!1664950 res!747107) b!1664946))

(assert (= (and b!1664946 res!747106) b!1664947))

(declare-fun m!2027913 () Bool)

(assert (=> b!1664947 m!2027913))

(declare-fun m!2027915 () Bool)

(assert (=> b!1664947 m!2027915))

(assert (=> bm!106512 m!2026219))

(declare-fun m!2027917 () Bool)

(assert (=> bm!106512 m!2027917))

(assert (=> b!1664953 m!2027913))

(declare-fun m!2027919 () Bool)

(assert (=> b!1664953 m!2027919))

(assert (=> b!1664953 m!2027919))

(declare-fun m!2027921 () Bool)

(assert (=> b!1664953 m!2027921))

(assert (=> b!1664949 m!2027913))

(assert (=> b!1664949 m!2027919))

(assert (=> b!1664949 m!2027919))

(assert (=> b!1664949 m!2027921))

(assert (=> b!1664949 m!2027921))

(declare-fun m!2027923 () Bool)

(assert (=> b!1664949 m!2027923))

(assert (=> b!1664946 m!2027913))

(assert (=> b!1664946 m!2027919))

(assert (=> b!1664946 m!2027919))

(assert (=> b!1664946 m!2027921))

(assert (=> b!1664946 m!2027921))

(declare-fun m!2027925 () Bool)

(assert (=> b!1664946 m!2027925))

(declare-fun m!2027927 () Bool)

(assert (=> d!503088 m!2027927))

(assert (=> d!503088 m!2026219))

(assert (=> d!503088 m!2026219))

(declare-fun m!2027929 () Bool)

(assert (=> d!503088 m!2027929))

(assert (=> d!503088 m!2026219))

(assert (=> d!503088 m!2026219))

(declare-fun m!2027931 () Bool)

(assert (=> d!503088 m!2027931))

(assert (=> d!503088 m!2027003))

(assert (=> b!1664948 m!2027913))

(declare-fun m!2027933 () Bool)

(assert (=> b!1664948 m!2027933))

(assert (=> b!1664948 m!2026219))

(assert (=> b!1664948 m!2026607))

(assert (=> b!1664950 m!2027913))

(declare-fun m!2027935 () Bool)

(assert (=> b!1664950 m!2027935))

(assert (=> b!1664950 m!2027935))

(declare-fun m!2027937 () Bool)

(assert (=> b!1664950 m!2027937))

(assert (=> b!1664951 m!2026219))

(declare-fun m!2027939 () Bool)

(assert (=> b!1664951 m!2027939))

(declare-fun m!2027941 () Bool)

(assert (=> b!1664952 m!2027941))

(assert (=> d!502772 d!503088))

(declare-fun d!503096 () Bool)

(declare-fun choose!10019 (Int) Bool)

(assert (=> d!503096 (= (Forall!658 lambda!67917) (choose!10019 lambda!67917))))

(declare-fun bs!397556 () Bool)

(assert (= bs!397556 d!503096))

(declare-fun m!2027943 () Bool)

(assert (=> bs!397556 m!2027943))

(assert (=> d!502856 d!503096))

(declare-fun d!503098 () Bool)

(assert (=> d!503098 (= (inv!17 (value!101870 (h!23762 (t!151922 tokens!457)))) (= (charsToBigInt!1 (text!23723 (value!101870 (h!23762 (t!151922 tokens!457))))) (value!101862 (value!101870 (h!23762 (t!151922 tokens!457))))))))

(declare-fun bs!397557 () Bool)

(assert (= bs!397557 d!503098))

(declare-fun m!2027945 () Bool)

(assert (=> bs!397557 m!2027945))

(assert (=> b!1664311 d!503098))

(declare-fun bs!397558 () Bool)

(declare-fun d!503100 () Bool)

(assert (= bs!397558 (and d!503100 d!502650)))

(declare-fun lambda!67926 () Int)

(assert (=> bs!397558 (= lambda!67926 lambda!67896)))

(declare-fun bs!397559 () Bool)

(assert (= bs!397559 (and d!503100 d!502734)))

(assert (=> bs!397559 (= lambda!67926 lambda!67906)))

(declare-fun b!1664962 () Bool)

(declare-fun e!1067328 () Bool)

(assert (=> b!1664962 (= e!1067328 true)))

(declare-fun b!1664961 () Bool)

(declare-fun e!1067327 () Bool)

(assert (=> b!1664961 (= e!1067327 e!1067328)))

(declare-fun b!1664960 () Bool)

(declare-fun e!1067326 () Bool)

(assert (=> b!1664960 (= e!1067326 e!1067327)))

(assert (=> d!503100 e!1067326))

(assert (= b!1664961 b!1664962))

(assert (= b!1664960 b!1664961))

(assert (= (and d!503100 ((_ is Cons!18362) rules!1846)) b!1664960))

(assert (=> b!1664962 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67926))))

(assert (=> b!1664962 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (dynLambda!8256 order!10997 lambda!67926))))

(assert (=> d!503100 true))

(declare-fun lt!626807 () Bool)

(assert (=> d!503100 (= lt!626807 (forall!4172 (t!151922 (t!151922 tokens!457)) lambda!67926))))

(declare-fun e!1067325 () Bool)

(assert (=> d!503100 (= lt!626807 e!1067325)))

(declare-fun res!747112 () Bool)

(assert (=> d!503100 (=> res!747112 e!1067325)))

(assert (=> d!503100 (= res!747112 (not ((_ is Cons!18361) (t!151922 (t!151922 tokens!457)))))))

(assert (=> d!503100 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503100 (= (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 (t!151922 (t!151922 tokens!457))) lt!626807)))

(declare-fun b!1664958 () Bool)

(declare-fun e!1067324 () Bool)

(assert (=> b!1664958 (= e!1067325 e!1067324)))

(declare-fun res!747111 () Bool)

(assert (=> b!1664958 (=> (not res!747111) (not e!1067324))))

(assert (=> b!1664958 (= res!747111 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (t!151922 tokens!457)))))))

(declare-fun b!1664959 () Bool)

(assert (=> b!1664959 (= e!1067324 (rulesProduceEachTokenIndividuallyList!1066 thiss!17113 rules!1846 (t!151922 (t!151922 (t!151922 tokens!457)))))))

(assert (= (and d!503100 (not res!747112)) b!1664958))

(assert (= (and b!1664958 res!747111) b!1664959))

(declare-fun m!2027951 () Bool)

(assert (=> d!503100 m!2027951))

(assert (=> d!503100 m!2026117))

(declare-fun m!2027953 () Bool)

(assert (=> b!1664958 m!2027953))

(declare-fun m!2027955 () Bool)

(assert (=> b!1664959 m!2027955))

(assert (=> b!1664204 d!503100))

(declare-fun b!1664972 () Bool)

(declare-fun e!1067333 () List!18429)

(declare-fun e!1067334 () List!18429)

(assert (=> b!1664972 (= e!1067333 e!1067334)))

(declare-fun c!271028 () Bool)

(assert (=> b!1664972 (= c!271028 ((_ is Leaf!8956) (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1664971 () Bool)

(assert (=> b!1664971 (= e!1067333 Nil!18359)))

(declare-fun d!503104 () Bool)

(declare-fun c!271027 () Bool)

(assert (=> d!503104 (= c!271027 ((_ is Empty!6118) (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> d!503104 (= (list!7339 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) e!1067333)))

(declare-fun b!1664973 () Bool)

(assert (=> b!1664973 (= e!1067334 (list!7341 (xs!8962 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))

(declare-fun b!1664974 () Bool)

(assert (=> b!1664974 (= e!1067334 (++!4996 (list!7339 (left!14689 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))) (list!7339 (right!15019 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(assert (= (and d!503104 c!271027) b!1664971))

(assert (= (and d!503104 (not c!271027)) b!1664972))

(assert (= (and b!1664972 c!271028) b!1664973))

(assert (= (and b!1664972 (not c!271028)) b!1664974))

(declare-fun m!2027963 () Bool)

(assert (=> b!1664973 m!2027963))

(declare-fun m!2027965 () Bool)

(assert (=> b!1664974 m!2027965))

(declare-fun m!2027967 () Bool)

(assert (=> b!1664974 m!2027967))

(assert (=> b!1664974 m!2027965))

(assert (=> b!1664974 m!2027967))

(declare-fun m!2027969 () Bool)

(assert (=> b!1664974 m!2027969))

(assert (=> d!502774 d!503104))

(declare-fun d!503110 () Bool)

(declare-fun lt!626811 () Token!6036)

(assert (=> d!503110 (= lt!626811 (apply!4922 (list!7332 (_1!10439 lt!626515)) 0))))

(assert (=> d!503110 (= lt!626811 (apply!4926 (c!270829 (_1!10439 lt!626515)) 0))))

(declare-fun e!1067338 () Bool)

(assert (=> d!503110 e!1067338))

(declare-fun res!747114 () Bool)

(assert (=> d!503110 (=> (not res!747114) (not e!1067338))))

(assert (=> d!503110 (= res!747114 (<= 0 0))))

(assert (=> d!503110 (= (apply!4921 (_1!10439 lt!626515) 0) lt!626811)))

(declare-fun b!1664980 () Bool)

(assert (=> b!1664980 (= e!1067338 (< 0 (size!14601 (_1!10439 lt!626515))))))

(assert (= (and d!503110 res!747114) b!1664980))

(declare-fun m!2027977 () Bool)

(assert (=> d!503110 m!2027977))

(assert (=> d!503110 m!2027977))

(declare-fun m!2027979 () Bool)

(assert (=> d!503110 m!2027979))

(declare-fun m!2027981 () Bool)

(assert (=> d!503110 m!2027981))

(assert (=> b!1664980 m!2026981))

(assert (=> b!1664421 d!503110))

(declare-fun b!1665007 () Bool)

(declare-fun e!1067356 () tuple2!18074)

(declare-fun lt!626821 () tuple2!18074)

(declare-fun lt!626819 () Option!3524)

(assert (=> b!1665007 (= e!1067356 (tuple2!18075 (prepend!817 (_1!10439 lt!626821) (_1!10445 (v!24758 lt!626819))) (_2!10439 lt!626821)))))

(assert (=> b!1665007 (= lt!626821 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626819))))))

(declare-fun b!1665008 () Bool)

(declare-fun e!1067355 () Bool)

(declare-fun lt!626820 () tuple2!18074)

(assert (=> b!1665008 (= e!1067355 (= (list!7335 (_2!10439 lt!626820)) (list!7335 (_2!10445 (v!24758 lt!626454)))))))

(declare-fun b!1665009 () Bool)

(assert (=> b!1665009 (= e!1067356 (tuple2!18075 (BalanceConc!12183 Empty!6119) (_2!10445 (v!24758 lt!626454))))))

(declare-fun b!1665010 () Bool)

(declare-fun e!1067354 () Bool)

(assert (=> b!1665010 (= e!1067354 (= (list!7335 (_2!10439 lt!626820)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626454)))))))))

(declare-fun d!503114 () Bool)

(assert (=> d!503114 e!1067354))

(declare-fun res!747121 () Bool)

(assert (=> d!503114 (=> (not res!747121) (not e!1067354))))

(assert (=> d!503114 (= res!747121 e!1067355)))

(declare-fun c!271041 () Bool)

(assert (=> d!503114 (= c!271041 (> (size!14601 (_1!10439 lt!626820)) 0))))

(assert (=> d!503114 (= lt!626820 e!1067356)))

(declare-fun c!271042 () Bool)

(assert (=> d!503114 (= c!271042 ((_ is Some!3523) lt!626819))))

(assert (=> d!503114 (= lt!626819 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626454))))))

(assert (=> d!503114 (= (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626454))) lt!626820)))

(declare-fun b!1665011 () Bool)

(declare-fun res!747123 () Bool)

(assert (=> b!1665011 (=> (not res!747123) (not e!1067354))))

(assert (=> b!1665011 (= res!747123 (= (list!7332 (_1!10439 lt!626820)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626454)))))))))

(declare-fun b!1665012 () Bool)

(declare-fun e!1067353 () Bool)

(assert (=> b!1665012 (= e!1067355 e!1067353)))

(declare-fun res!747122 () Bool)

(assert (=> b!1665012 (= res!747122 (< (size!14600 (_2!10439 lt!626820)) (size!14600 (_2!10445 (v!24758 lt!626454)))))))

(assert (=> b!1665012 (=> (not res!747122) (not e!1067353))))

(declare-fun b!1665013 () Bool)

(assert (=> b!1665013 (= e!1067353 (not (isEmpty!11419 (_1!10439 lt!626820))))))

(assert (= (and d!503114 c!271042) b!1665007))

(assert (= (and d!503114 (not c!271042)) b!1665009))

(assert (= (and d!503114 c!271041) b!1665012))

(assert (= (and d!503114 (not c!271041)) b!1665008))

(assert (= (and b!1665012 res!747122) b!1665013))

(assert (= (and d!503114 res!747121) b!1665011))

(assert (= (and b!1665011 res!747123) b!1665010))

(declare-fun m!2027997 () Bool)

(assert (=> b!1665011 m!2027997))

(declare-fun m!2027999 () Bool)

(assert (=> b!1665011 m!2027999))

(assert (=> b!1665011 m!2027999))

(declare-fun m!2028001 () Bool)

(assert (=> b!1665011 m!2028001))

(declare-fun m!2028003 () Bool)

(assert (=> b!1665012 m!2028003))

(declare-fun m!2028005 () Bool)

(assert (=> b!1665012 m!2028005))

(declare-fun m!2028007 () Bool)

(assert (=> b!1665013 m!2028007))

(declare-fun m!2028009 () Bool)

(assert (=> b!1665010 m!2028009))

(assert (=> b!1665010 m!2027999))

(assert (=> b!1665010 m!2027999))

(assert (=> b!1665010 m!2028001))

(declare-fun m!2028011 () Bool)

(assert (=> b!1665007 m!2028011))

(declare-fun m!2028013 () Bool)

(assert (=> b!1665007 m!2028013))

(declare-fun m!2028015 () Bool)

(assert (=> d!503114 m!2028015))

(declare-fun m!2028017 () Bool)

(assert (=> d!503114 m!2028017))

(assert (=> b!1665008 m!2028009))

(assert (=> b!1665008 m!2027999))

(assert (=> b!1664305 d!503114))

(declare-fun d!503120 () Bool)

(declare-fun e!1067359 () Bool)

(assert (=> d!503120 e!1067359))

(declare-fun res!747126 () Bool)

(assert (=> d!503120 (=> (not res!747126) (not e!1067359))))

(declare-fun prepend!819 (Conc!6119 Token!6036) Conc!6119)

(assert (=> d!503120 (= res!747126 (isBalanced!1896 (prepend!819 (c!270829 (_1!10439 lt!626452)) (_1!10445 (v!24758 lt!626454)))))))

(declare-fun lt!626824 () BalanceConc!12182)

(assert (=> d!503120 (= lt!626824 (BalanceConc!12183 (prepend!819 (c!270829 (_1!10439 lt!626452)) (_1!10445 (v!24758 lt!626454)))))))

(assert (=> d!503120 (= (prepend!817 (_1!10439 lt!626452) (_1!10445 (v!24758 lt!626454))) lt!626824)))

(declare-fun b!1665016 () Bool)

(assert (=> b!1665016 (= e!1067359 (= (list!7332 lt!626824) (Cons!18361 (_1!10445 (v!24758 lt!626454)) (list!7332 (_1!10439 lt!626452)))))))

(assert (= (and d!503120 res!747126) b!1665016))

(declare-fun m!2028019 () Bool)

(assert (=> d!503120 m!2028019))

(assert (=> d!503120 m!2028019))

(declare-fun m!2028021 () Bool)

(assert (=> d!503120 m!2028021))

(declare-fun m!2028023 () Bool)

(assert (=> b!1665016 m!2028023))

(declare-fun m!2028025 () Bool)

(assert (=> b!1665016 m!2028025))

(assert (=> b!1664305 d!503120))

(declare-fun d!503122 () Bool)

(declare-fun choose!10020 (Int) Bool)

(assert (=> d!503122 (= (Forall2!529 lambda!67910) (choose!10020 lambda!67910))))

(declare-fun bs!397562 () Bool)

(assert (= bs!397562 d!503122))

(declare-fun m!2028027 () Bool)

(assert (=> bs!397562 m!2028027))

(assert (=> d!502750 d!503122))

(declare-fun b!1665019 () Bool)

(declare-fun e!1067361 () List!18431)

(assert (=> b!1665019 (= e!1067361 (list!7340 (xs!8963 (c!270829 (_1!10439 lt!626151)))))))

(declare-fun b!1665018 () Bool)

(declare-fun e!1067360 () List!18431)

(assert (=> b!1665018 (= e!1067360 e!1067361)))

(declare-fun c!271045 () Bool)

(assert (=> b!1665018 (= c!271045 ((_ is Leaf!8957) (c!270829 (_1!10439 lt!626151))))))

(declare-fun b!1665020 () Bool)

(assert (=> b!1665020 (= e!1067361 (++!4998 (list!7336 (left!14690 (c!270829 (_1!10439 lt!626151)))) (list!7336 (right!15020 (c!270829 (_1!10439 lt!626151))))))))

(declare-fun b!1665017 () Bool)

(assert (=> b!1665017 (= e!1067360 Nil!18361)))

(declare-fun d!503124 () Bool)

(declare-fun c!271044 () Bool)

(assert (=> d!503124 (= c!271044 ((_ is Empty!6119) (c!270829 (_1!10439 lt!626151))))))

(assert (=> d!503124 (= (list!7336 (c!270829 (_1!10439 lt!626151))) e!1067360)))

(assert (= (and d!503124 c!271044) b!1665017))

(assert (= (and d!503124 (not c!271044)) b!1665018))

(assert (= (and b!1665018 c!271045) b!1665019))

(assert (= (and b!1665018 (not c!271045)) b!1665020))

(declare-fun m!2028029 () Bool)

(assert (=> b!1665019 m!2028029))

(declare-fun m!2028031 () Bool)

(assert (=> b!1665020 m!2028031))

(declare-fun m!2028033 () Bool)

(assert (=> b!1665020 m!2028033))

(assert (=> b!1665020 m!2028031))

(assert (=> b!1665020 m!2028033))

(declare-fun m!2028035 () Bool)

(assert (=> b!1665020 m!2028035))

(assert (=> d!502798 d!503124))

(declare-fun d!503126 () Bool)

(declare-fun lt!626827 () Bool)

(declare-fun content!2563 (List!18434) (InoxSet String!20957))

(assert (=> d!503126 (= lt!626827 (select (content!2563 Nil!18364) (tag!3519 (h!23763 rules!1846))))))

(declare-fun e!1067367 () Bool)

(assert (=> d!503126 (= lt!626827 e!1067367)))

(declare-fun res!747132 () Bool)

(assert (=> d!503126 (=> (not res!747132) (not e!1067367))))

(assert (=> d!503126 (= res!747132 ((_ is Cons!18364) Nil!18364))))

(assert (=> d!503126 (= (contains!3204 Nil!18364 (tag!3519 (h!23763 rules!1846))) lt!626827)))

(declare-fun b!1665025 () Bool)

(declare-fun e!1067366 () Bool)

(assert (=> b!1665025 (= e!1067367 e!1067366)))

(declare-fun res!747131 () Bool)

(assert (=> b!1665025 (=> res!747131 e!1067366)))

(assert (=> b!1665025 (= res!747131 (= (h!23765 Nil!18364) (tag!3519 (h!23763 rules!1846))))))

(declare-fun b!1665026 () Bool)

(assert (=> b!1665026 (= e!1067366 (contains!3204 (t!151945 Nil!18364) (tag!3519 (h!23763 rules!1846))))))

(assert (= (and d!503126 res!747132) b!1665025))

(assert (= (and b!1665025 (not res!747131)) b!1665026))

(declare-fun m!2028037 () Bool)

(assert (=> d!503126 m!2028037))

(declare-fun m!2028039 () Bool)

(assert (=> d!503126 m!2028039))

(declare-fun m!2028041 () Bool)

(assert (=> b!1665026 m!2028041))

(assert (=> b!1664232 d!503126))

(declare-fun d!503128 () Bool)

(assert (=> d!503128 (= (Forall2!529 lambda!67909) (choose!10020 lambda!67909))))

(declare-fun bs!397563 () Bool)

(assert (= bs!397563 d!503128))

(declare-fun m!2028043 () Bool)

(assert (=> bs!397563 m!2028043))

(assert (=> d!502748 d!503128))

(declare-fun d!503130 () Bool)

(assert (=> d!503130 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))) (list!7336 (c!270829 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))))

(declare-fun bs!397564 () Bool)

(assert (= bs!397564 d!503130))

(declare-fun m!2028045 () Bool)

(assert (=> bs!397564 m!2028045))

(assert (=> d!502850 d!503130))

(declare-fun d!503132 () Bool)

(declare-fun e!1067368 () Bool)

(assert (=> d!503132 e!1067368))

(declare-fun res!747133 () Bool)

(assert (=> d!503132 (=> (not res!747133) (not e!1067368))))

(declare-fun lt!626828 () BalanceConc!12182)

(assert (=> d!503132 (= res!747133 (= (list!7332 lt!626828) (Cons!18361 (h!23762 (t!151922 tokens!457)) Nil!18361)))))

(assert (=> d!503132 (= lt!626828 (singleton!770 (h!23762 (t!151922 tokens!457))))))

(assert (=> d!503132 (= (singletonSeq!1741 (h!23762 (t!151922 tokens!457))) lt!626828)))

(declare-fun b!1665027 () Bool)

(assert (=> b!1665027 (= e!1067368 (isBalanced!1896 (c!270829 lt!626828)))))

(assert (= (and d!503132 res!747133) b!1665027))

(declare-fun m!2028047 () Bool)

(assert (=> d!503132 m!2028047))

(declare-fun m!2028049 () Bool)

(assert (=> d!503132 m!2028049))

(declare-fun m!2028051 () Bool)

(assert (=> b!1665027 m!2028051))

(assert (=> d!502850 d!503132))

(declare-fun d!503134 () Bool)

(assert (=> d!503134 (= (list!7332 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))) (list!7336 (c!270829 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))

(declare-fun bs!397565 () Bool)

(assert (= bs!397565 d!503134))

(declare-fun m!2028053 () Bool)

(assert (=> bs!397565 m!2028053))

(assert (=> d!502850 d!503134))

(declare-fun d!503136 () Bool)

(declare-fun lt!626829 () BalanceConc!12180)

(assert (=> d!503136 (= (list!7335 lt!626829) (printList!977 thiss!17113 (list!7332 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!503136 (= lt!626829 (printTailRec!915 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))) 0 (BalanceConc!12181 Empty!6118)))))

(assert (=> d!503136 (= (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))) lt!626829)))

(declare-fun bs!397566 () Bool)

(assert (= bs!397566 d!503136))

(declare-fun m!2028055 () Bool)

(assert (=> bs!397566 m!2028055))

(assert (=> bs!397566 m!2026977))

(assert (=> bs!397566 m!2026987))

(assert (=> bs!397566 m!2026987))

(declare-fun m!2028057 () Bool)

(assert (=> bs!397566 m!2028057))

(assert (=> bs!397566 m!2026977))

(declare-fun m!2028059 () Bool)

(assert (=> bs!397566 m!2028059))

(assert (=> d!502850 d!503136))

(declare-fun b!1665028 () Bool)

(declare-fun e!1067370 () Bool)

(declare-fun e!1067369 () Bool)

(assert (=> b!1665028 (= e!1067370 e!1067369)))

(declare-fun res!747136 () Bool)

(declare-fun lt!626830 () tuple2!18074)

(assert (=> b!1665028 (= res!747136 (< (size!14600 (_2!10439 lt!626830)) (size!14600 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))

(assert (=> b!1665028 (=> (not res!747136) (not e!1067369))))

(declare-fun b!1665030 () Bool)

(assert (=> b!1665030 (= e!1067369 (not (isEmpty!11419 (_1!10439 lt!626830))))))

(declare-fun e!1067371 () Bool)

(declare-fun b!1665031 () Bool)

(assert (=> b!1665031 (= e!1067371 (= (list!7335 (_2!10439 lt!626830)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))))

(declare-fun b!1665032 () Bool)

(assert (=> b!1665032 (= e!1067370 (= (_2!10439 lt!626830) (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))))

(declare-fun b!1665029 () Bool)

(declare-fun res!747135 () Bool)

(assert (=> b!1665029 (=> (not res!747135) (not e!1067371))))

(assert (=> b!1665029 (= res!747135 (= (list!7332 (_1!10439 lt!626830)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))))

(declare-fun d!503138 () Bool)

(assert (=> d!503138 e!1067371))

(declare-fun res!747134 () Bool)

(assert (=> d!503138 (=> (not res!747134) (not e!1067371))))

(assert (=> d!503138 (= res!747134 e!1067370)))

(declare-fun c!271046 () Bool)

(assert (=> d!503138 (= c!271046 (> (size!14601 (_1!10439 lt!626830)) 0))))

(assert (=> d!503138 (= lt!626830 (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))) (BalanceConc!12181 Empty!6118) (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))) (BalanceConc!12183 Empty!6119)))))

(assert (=> d!503138 (= (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))) lt!626830)))

(assert (= (and d!503138 c!271046) b!1665028))

(assert (= (and d!503138 (not c!271046)) b!1665032))

(assert (= (and b!1665028 res!747136) b!1665030))

(assert (= (and d!503138 res!747134) b!1665029))

(assert (= (and b!1665029 res!747135) b!1665031))

(declare-fun m!2028061 () Bool)

(assert (=> b!1665028 m!2028061))

(assert (=> b!1665028 m!2026979))

(declare-fun m!2028063 () Bool)

(assert (=> b!1665028 m!2028063))

(declare-fun m!2028065 () Bool)

(assert (=> b!1665030 m!2028065))

(declare-fun m!2028067 () Bool)

(assert (=> b!1665029 m!2028067))

(assert (=> b!1665029 m!2026979))

(declare-fun m!2028069 () Bool)

(assert (=> b!1665029 m!2028069))

(assert (=> b!1665029 m!2028069))

(declare-fun m!2028071 () Bool)

(assert (=> b!1665029 m!2028071))

(declare-fun m!2028073 () Bool)

(assert (=> d!503138 m!2028073))

(assert (=> d!503138 m!2026979))

(assert (=> d!503138 m!2026979))

(declare-fun m!2028075 () Bool)

(assert (=> d!503138 m!2028075))

(declare-fun m!2028077 () Bool)

(assert (=> b!1665031 m!2028077))

(assert (=> b!1665031 m!2026979))

(assert (=> b!1665031 m!2028069))

(assert (=> b!1665031 m!2028069))

(assert (=> b!1665031 m!2028071))

(assert (=> d!502850 d!503138))

(assert (=> d!502850 d!502634))

(declare-fun d!503140 () Bool)

(declare-fun lt!626831 () Int)

(assert (=> d!503140 (= lt!626831 (size!14607 (list!7332 (_1!10439 lt!626515))))))

(assert (=> d!503140 (= lt!626831 (size!14608 (c!270829 (_1!10439 lt!626515))))))

(assert (=> d!503140 (= (size!14601 (_1!10439 lt!626515)) lt!626831)))

(declare-fun bs!397567 () Bool)

(assert (= bs!397567 d!503140))

(assert (=> bs!397567 m!2027977))

(assert (=> bs!397567 m!2027977))

(declare-fun m!2028079 () Bool)

(assert (=> bs!397567 m!2028079))

(declare-fun m!2028081 () Bool)

(assert (=> bs!397567 m!2028081))

(assert (=> d!502850 d!503140))

(declare-fun b!1665045 () Bool)

(declare-fun e!1067377 () Bool)

(declare-fun e!1067376 () Bool)

(assert (=> b!1665045 (= e!1067377 e!1067376)))

(declare-fun res!747152 () Bool)

(assert (=> b!1665045 (=> (not res!747152) (not e!1067376))))

(assert (=> b!1665045 (= res!747152 (<= (- 1) (- (height!963 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (height!963 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))))

(declare-fun b!1665046 () Bool)

(declare-fun res!747151 () Bool)

(assert (=> b!1665046 (=> (not res!747151) (not e!1067376))))

(assert (=> b!1665046 (= res!747151 (not (isEmpty!11418 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))))

(declare-fun d!503142 () Bool)

(declare-fun res!747150 () Bool)

(assert (=> d!503142 (=> res!747150 e!1067377)))

(assert (=> d!503142 (= res!747150 (not ((_ is Node!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(assert (=> d!503142 (= (isBalanced!1898 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1067377)))

(declare-fun b!1665047 () Bool)

(declare-fun res!747154 () Bool)

(assert (=> b!1665047 (=> (not res!747154) (not e!1067376))))

(assert (=> b!1665047 (= res!747154 (isBalanced!1898 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun b!1665048 () Bool)

(declare-fun res!747153 () Bool)

(assert (=> b!1665048 (=> (not res!747153) (not e!1067376))))

(assert (=> b!1665048 (= res!747153 (<= (- (height!963 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (height!963 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) 1))))

(declare-fun b!1665049 () Bool)

(declare-fun res!747149 () Bool)

(assert (=> b!1665049 (=> (not res!747149) (not e!1067376))))

(assert (=> b!1665049 (= res!747149 (isBalanced!1898 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun b!1665050 () Bool)

(assert (=> b!1665050 (= e!1067376 (not (isEmpty!11418 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))))

(assert (= (and d!503142 (not res!747150)) b!1665045))

(assert (= (and b!1665045 res!747152) b!1665048))

(assert (= (and b!1665048 res!747153) b!1665049))

(assert (= (and b!1665049 res!747149) b!1665047))

(assert (= (and b!1665047 res!747154) b!1665046))

(assert (= (and b!1665046 res!747151) b!1665050))

(declare-fun m!2028083 () Bool)

(assert (=> b!1665046 m!2028083))

(assert (=> b!1665048 m!2027303))

(assert (=> b!1665048 m!2027305))

(assert (=> b!1665045 m!2027303))

(assert (=> b!1665045 m!2027305))

(declare-fun m!2028085 () Bool)

(assert (=> b!1665050 m!2028085))

(declare-fun m!2028087 () Bool)

(assert (=> b!1665047 m!2028087))

(declare-fun m!2028089 () Bool)

(assert (=> b!1665049 m!2028089))

(assert (=> d!502814 d!503142))

(declare-fun b!1665051 () Bool)

(declare-fun e!1067380 () Bool)

(assert (=> b!1665051 (= e!1067380 (inv!15 (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))

(declare-fun b!1665052 () Bool)

(declare-fun e!1067378 () Bool)

(assert (=> b!1665052 (= e!1067378 (inv!17 (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))

(declare-fun d!503144 () Bool)

(declare-fun c!271047 () Bool)

(assert (=> d!503144 (= c!271047 ((_ is IntegerValue!9975) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))

(declare-fun e!1067379 () Bool)

(assert (=> d!503144 (= (inv!21 (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))) e!1067379)))

(declare-fun b!1665053 () Bool)

(assert (=> b!1665053 (= e!1067379 (inv!16 (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))

(declare-fun b!1665054 () Bool)

(declare-fun res!747155 () Bool)

(assert (=> b!1665054 (=> res!747155 e!1067380)))

(assert (=> b!1665054 (= res!747155 (not ((_ is IntegerValue!9977) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457)))))))))

(assert (=> b!1665054 (= e!1067378 e!1067380)))

(declare-fun b!1665055 () Bool)

(assert (=> b!1665055 (= e!1067379 e!1067378)))

(declare-fun c!271048 () Bool)

(assert (=> b!1665055 (= c!271048 ((_ is IntegerValue!9976) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))

(assert (= (and d!503144 c!271047) b!1665053))

(assert (= (and d!503144 (not c!271047)) b!1665055))

(assert (= (and b!1665055 c!271048) b!1665052))

(assert (= (and b!1665055 (not c!271048)) b!1665054))

(assert (= (and b!1665054 (not res!747155)) b!1665051))

(declare-fun m!2028091 () Bool)

(assert (=> b!1665051 m!2028091))

(declare-fun m!2028093 () Bool)

(assert (=> b!1665052 m!2028093))

(declare-fun m!2028095 () Bool)

(assert (=> b!1665053 m!2028095))

(assert (=> b!1664441 d!503144))

(declare-fun d!503146 () Bool)

(declare-fun c!271049 () Bool)

(assert (=> d!503146 (= c!271049 ((_ is Node!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(declare-fun e!1067381 () Bool)

(assert (=> d!503146 (= (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))) e!1067381)))

(declare-fun b!1665056 () Bool)

(assert (=> b!1665056 (= e!1067381 (inv!23709 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(declare-fun b!1665057 () Bool)

(declare-fun e!1067382 () Bool)

(assert (=> b!1665057 (= e!1067381 e!1067382)))

(declare-fun res!747156 () Bool)

(assert (=> b!1665057 (= res!747156 (not ((_ is Leaf!8956) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))))))

(assert (=> b!1665057 (=> res!747156 e!1067382)))

(declare-fun b!1665058 () Bool)

(assert (=> b!1665058 (= e!1067382 (inv!23710 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(assert (= (and d!503146 c!271049) b!1665056))

(assert (= (and d!503146 (not c!271049)) b!1665057))

(assert (= (and b!1665057 (not res!747156)) b!1665058))

(declare-fun m!2028097 () Bool)

(assert (=> b!1665056 m!2028097))

(declare-fun m!2028099 () Bool)

(assert (=> b!1665058 m!2028099))

(assert (=> b!1664309 d!503146))

(declare-fun d!503148 () Bool)

(declare-fun res!747157 () Bool)

(declare-fun e!1067383 () Bool)

(assert (=> d!503148 (=> res!747157 e!1067383)))

(assert (=> d!503148 (= res!747157 (or (not ((_ is Cons!18361) (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) (not ((_ is Cons!18361) (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))))

(assert (=> d!503148 (= (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) rules!1846) e!1067383)))

(declare-fun b!1665059 () Bool)

(declare-fun e!1067384 () Bool)

(assert (=> b!1665059 (= e!1067383 e!1067384)))

(declare-fun res!747158 () Bool)

(assert (=> b!1665059 (=> (not res!747158) (not e!1067384))))

(assert (=> b!1665059 (= res!747158 (separableTokensPredicate!804 thiss!17113 (h!23762 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) rules!1846))))

(declare-fun lt!626834 () Unit!31104)

(declare-fun Unit!31124 () Unit!31104)

(assert (=> b!1665059 (= lt!626834 Unit!31124)))

(assert (=> b!1665059 (> (size!14600 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))) 0)))

(declare-fun lt!626832 () Unit!31104)

(declare-fun Unit!31125 () Unit!31104)

(assert (=> b!1665059 (= lt!626832 Unit!31125)))

(assert (=> b!1665059 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(declare-fun lt!626838 () Unit!31104)

(declare-fun Unit!31126 () Unit!31104)

(assert (=> b!1665059 (= lt!626838 Unit!31126)))

(assert (=> b!1665059 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(declare-fun lt!626837 () Unit!31104)

(declare-fun lt!626836 () Unit!31104)

(assert (=> b!1665059 (= lt!626837 lt!626836)))

(assert (=> b!1665059 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(assert (=> b!1665059 (= lt!626836 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))))

(declare-fun lt!626833 () Unit!31104)

(declare-fun lt!626835 () Unit!31104)

(assert (=> b!1665059 (= lt!626833 lt!626835)))

(assert (=> b!1665059 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(assert (=> b!1665059 (= lt!626835 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) (h!23762 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(declare-fun b!1665060 () Bool)

(assert (=> b!1665060 (= e!1067384 (tokensListTwoByTwoPredicateSeparableList!557 thiss!17113 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (t!151922 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) rules!1846))))

(assert (= (and d!503148 (not res!747157)) b!1665059))

(assert (= (and b!1665059 res!747158) b!1665060))

(declare-fun m!2028101 () Bool)

(assert (=> b!1665059 m!2028101))

(declare-fun m!2028103 () Bool)

(assert (=> b!1665059 m!2028103))

(declare-fun m!2028105 () Bool)

(assert (=> b!1665059 m!2028105))

(declare-fun m!2028107 () Bool)

(assert (=> b!1665059 m!2028107))

(declare-fun m!2028109 () Bool)

(assert (=> b!1665059 m!2028109))

(assert (=> b!1665059 m!2028103))

(declare-fun m!2028111 () Bool)

(assert (=> b!1665059 m!2028111))

(declare-fun m!2028113 () Bool)

(assert (=> b!1665059 m!2028113))

(declare-fun m!2028115 () Bool)

(assert (=> b!1665060 m!2028115))

(assert (=> b!1664329 d!503148))

(declare-fun d!503152 () Bool)

(assert (=> d!503152 (= (list!7332 lt!626246) (list!7336 (c!270829 lt!626246)))))

(declare-fun bs!397569 () Bool)

(assert (= bs!397569 d!503152))

(declare-fun m!2028117 () Bool)

(assert (=> bs!397569 m!2028117))

(assert (=> d!502758 d!503152))

(declare-fun d!503154 () Bool)

(declare-fun e!1067388 () Bool)

(assert (=> d!503154 e!1067388))

(declare-fun res!747165 () Bool)

(assert (=> d!503154 (=> (not res!747165) (not e!1067388))))

(declare-fun lt!626842 () Conc!6119)

(assert (=> d!503154 (= res!747165 (= (list!7336 lt!626842) tokens!457))))

(declare-fun choose!10022 (List!18431) Conc!6119)

(assert (=> d!503154 (= lt!626842 (choose!10022 tokens!457))))

(assert (=> d!503154 (= (fromList!406 tokens!457) lt!626842)))

(declare-fun b!1665067 () Bool)

(assert (=> b!1665067 (= e!1067388 (isBalanced!1896 lt!626842))))

(assert (= (and d!503154 res!747165) b!1665067))

(declare-fun m!2028137 () Bool)

(assert (=> d!503154 m!2028137))

(declare-fun m!2028139 () Bool)

(assert (=> d!503154 m!2028139))

(declare-fun m!2028141 () Bool)

(assert (=> b!1665067 m!2028141))

(assert (=> d!502758 d!503154))

(declare-fun bs!397570 () Bool)

(declare-fun d!503158 () Bool)

(assert (= bs!397570 (and d!503158 d!502754)))

(declare-fun lambda!67930 () Int)

(assert (=> bs!397570 (= (and (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (h!23763 rules!1846)))) (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (h!23763 rules!1846))))) (= lambda!67930 lambda!67913))))

(declare-fun bs!397571 () Bool)

(assert (= bs!397571 (and d!503158 d!502856)))

(assert (=> bs!397571 (= (and (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (= lambda!67930 lambda!67917))))

(declare-fun bs!397572 () Bool)

(assert (= bs!397572 (and d!503158 d!502966)))

(assert (=> bs!397572 (= (and (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))))) (= lambda!67930 lambda!67922))))

(assert (=> d!503158 true))

(assert (=> d!503158 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (dynLambda!8261 order!11007 lambda!67930))))

(assert (=> d!503158 true))

(assert (=> d!503158 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (dynLambda!8261 order!11007 lambda!67930))))

(assert (=> d!503158 (= (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (Forall!658 lambda!67930))))

(declare-fun bs!397573 () Bool)

(assert (= bs!397573 d!503158))

(declare-fun m!2028143 () Bool)

(assert (=> bs!397573 m!2028143))

(assert (=> d!502780 d!503158))

(declare-fun d!503160 () Bool)

(assert (=> d!503160 (= (isEmpty!11417 (list!7339 (c!270827 (_2!10439 lt!626098)))) ((_ is Nil!18359) (list!7339 (c!270827 (_2!10439 lt!626098)))))))

(assert (=> d!502744 d!503160))

(declare-fun b!1665069 () Bool)

(declare-fun e!1067389 () List!18429)

(declare-fun e!1067390 () List!18429)

(assert (=> b!1665069 (= e!1067389 e!1067390)))

(declare-fun c!271051 () Bool)

(assert (=> b!1665069 (= c!271051 ((_ is Leaf!8956) (c!270827 (_2!10439 lt!626098))))))

(declare-fun b!1665068 () Bool)

(assert (=> b!1665068 (= e!1067389 Nil!18359)))

(declare-fun d!503162 () Bool)

(declare-fun c!271050 () Bool)

(assert (=> d!503162 (= c!271050 ((_ is Empty!6118) (c!270827 (_2!10439 lt!626098))))))

(assert (=> d!503162 (= (list!7339 (c!270827 (_2!10439 lt!626098))) e!1067389)))

(declare-fun b!1665070 () Bool)

(assert (=> b!1665070 (= e!1067390 (list!7341 (xs!8962 (c!270827 (_2!10439 lt!626098)))))))

(declare-fun b!1665071 () Bool)

(assert (=> b!1665071 (= e!1067390 (++!4996 (list!7339 (left!14689 (c!270827 (_2!10439 lt!626098)))) (list!7339 (right!15019 (c!270827 (_2!10439 lt!626098))))))))

(assert (= (and d!503162 c!271050) b!1665068))

(assert (= (and d!503162 (not c!271050)) b!1665069))

(assert (= (and b!1665069 c!271051) b!1665070))

(assert (= (and b!1665069 (not c!271051)) b!1665071))

(declare-fun m!2028145 () Bool)

(assert (=> b!1665070 m!2028145))

(declare-fun m!2028147 () Bool)

(assert (=> b!1665071 m!2028147))

(declare-fun m!2028149 () Bool)

(assert (=> b!1665071 m!2028149))

(assert (=> b!1665071 m!2028147))

(assert (=> b!1665071 m!2028149))

(declare-fun m!2028151 () Bool)

(assert (=> b!1665071 m!2028151))

(assert (=> d!502744 d!503162))

(declare-fun d!503164 () Bool)

(declare-fun lt!626848 () Int)

(assert (=> d!503164 (= lt!626848 (size!14602 (list!7339 (c!270827 (_2!10439 lt!626098)))))))

(assert (=> d!503164 (= lt!626848 (ite ((_ is Empty!6118) (c!270827 (_2!10439 lt!626098))) 0 (ite ((_ is Leaf!8956) (c!270827 (_2!10439 lt!626098))) (csize!12467 (c!270827 (_2!10439 lt!626098))) (csize!12466 (c!270827 (_2!10439 lt!626098))))))))

(assert (=> d!503164 (= (size!14606 (c!270827 (_2!10439 lt!626098))) lt!626848)))

(declare-fun bs!397574 () Bool)

(assert (= bs!397574 d!503164))

(assert (=> bs!397574 m!2026519))

(assert (=> bs!397574 m!2026519))

(declare-fun m!2028157 () Bool)

(assert (=> bs!397574 m!2028157))

(assert (=> d!502744 d!503164))

(declare-fun d!503168 () Bool)

(declare-fun e!1067400 () Bool)

(assert (=> d!503168 e!1067400))

(declare-fun res!747171 () Bool)

(assert (=> d!503168 (=> (not res!747171) (not e!1067400))))

(declare-fun lt!626853 () BalanceConc!12180)

(assert (=> d!503168 (= res!747171 (= (list!7335 lt!626853) (Cons!18359 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0) Nil!18359)))))

(declare-fun singleton!772 (C!9300) BalanceConc!12180)

(assert (=> d!503168 (= lt!626853 (singleton!772 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)))))

(assert (=> d!503168 (= (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)) lt!626853)))

(declare-fun b!1665085 () Bool)

(assert (=> b!1665085 (= e!1067400 (isBalanced!1898 (c!270827 lt!626853)))))

(assert (= (and d!503168 res!747171) b!1665085))

(declare-fun m!2028159 () Bool)

(assert (=> d!503168 m!2028159))

(assert (=> d!503168 m!2026929))

(declare-fun m!2028161 () Bool)

(assert (=> d!503168 m!2028161))

(declare-fun m!2028163 () Bool)

(assert (=> b!1665085 m!2028163))

(assert (=> d!502818 d!503168))

(declare-fun d!503170 () Bool)

(declare-fun lt!626899 () Bool)

(declare-fun prefixMatch!480 (Regex!4563 List!18429) Bool)

(assert (=> d!503170 (= lt!626899 (prefixMatch!480 (rulesRegex!619 thiss!17113 rules!1846) (list!7335 (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))))))

(declare-datatypes ((List!18437 0))(
  ( (Nil!18367) (Cons!18367 (h!23768 Regex!4563) (t!152182 List!18437)) )
))
(declare-datatypes ((Context!1826 0))(
  ( (Context!1827 (exprs!1413 List!18437)) )
))
(declare-fun prefixMatchZipperSequence!665 ((InoxSet Context!1826) BalanceConc!12180 Int) Bool)

(declare-fun focus!219 (Regex!4563) (InoxSet Context!1826))

(assert (=> d!503170 (= lt!626899 (prefixMatchZipperSequence!665 (focus!219 (rulesRegex!619 thiss!17113 rules!1846)) (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))) 0))))

(declare-fun lt!626903 () Unit!31104)

(declare-fun lt!626902 () Unit!31104)

(assert (=> d!503170 (= lt!626903 lt!626902)))

(declare-fun lt!626904 () List!18429)

(declare-fun lt!626905 () (InoxSet Context!1826))

(declare-fun prefixMatchZipper!198 ((InoxSet Context!1826) List!18429) Bool)

(assert (=> d!503170 (= (prefixMatch!480 (rulesRegex!619 thiss!17113 rules!1846) lt!626904) (prefixMatchZipper!198 lt!626905 lt!626904))))

(declare-datatypes ((List!18438 0))(
  ( (Nil!18368) (Cons!18368 (h!23769 Context!1826) (t!152183 List!18438)) )
))
(declare-fun lt!626901 () List!18438)

(declare-fun prefixMatchZipperRegexEquiv!198 ((InoxSet Context!1826) List!18438 Regex!4563 List!18429) Unit!31104)

(assert (=> d!503170 (= lt!626902 (prefixMatchZipperRegexEquiv!198 lt!626905 lt!626901 (rulesRegex!619 thiss!17113 rules!1846) lt!626904))))

(assert (=> d!503170 (= lt!626904 (list!7335 (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)))))))

(declare-fun toList!959 ((InoxSet Context!1826)) List!18438)

(assert (=> d!503170 (= lt!626901 (toList!959 (focus!219 (rulesRegex!619 thiss!17113 rules!1846))))))

(assert (=> d!503170 (= lt!626905 (focus!219 (rulesRegex!619 thiss!17113 rules!1846)))))

(declare-fun lt!626906 () Unit!31104)

(declare-fun lt!626907 () Unit!31104)

(assert (=> d!503170 (= lt!626906 lt!626907)))

(declare-fun lt!626900 () (InoxSet Context!1826))

(declare-fun lt!626898 () Int)

(declare-fun dropList!710 (BalanceConc!12180 Int) List!18429)

(assert (=> d!503170 (= (prefixMatchZipper!198 lt!626900 (dropList!710 (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))) lt!626898)) (prefixMatchZipperSequence!665 lt!626900 (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))) lt!626898))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!198 ((InoxSet Context!1826) BalanceConc!12180 Int) Unit!31104)

(assert (=> d!503170 (= lt!626907 (lemmaprefixMatchZipperSequenceEquivalent!198 lt!626900 (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))) lt!626898))))

(assert (=> d!503170 (= lt!626898 0)))

(assert (=> d!503170 (= lt!626900 (focus!219 (rulesRegex!619 thiss!17113 rules!1846)))))

(declare-fun validRegex!1826 (Regex!4563) Bool)

(assert (=> d!503170 (validRegex!1826 (rulesRegex!619 thiss!17113 rules!1846))))

(assert (=> d!503170 (= (prefixMatchZipperSequence!663 (rulesRegex!619 thiss!17113 rules!1846) (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)))) lt!626899)))

(declare-fun bs!397584 () Bool)

(assert (= bs!397584 d!503170))

(assert (=> bs!397584 m!2026927))

(declare-fun m!2028269 () Bool)

(assert (=> bs!397584 m!2028269))

(assert (=> bs!397584 m!2026931))

(declare-fun m!2028271 () Bool)

(assert (=> bs!397584 m!2028271))

(assert (=> bs!397584 m!2026931))

(declare-fun m!2028273 () Bool)

(assert (=> bs!397584 m!2028273))

(declare-fun m!2028275 () Bool)

(assert (=> bs!397584 m!2028275))

(assert (=> bs!397584 m!2026931))

(declare-fun m!2028277 () Bool)

(assert (=> bs!397584 m!2028277))

(assert (=> bs!397584 m!2028271))

(assert (=> bs!397584 m!2026927))

(declare-fun m!2028279 () Bool)

(assert (=> bs!397584 m!2028279))

(assert (=> bs!397584 m!2028271))

(declare-fun m!2028281 () Bool)

(assert (=> bs!397584 m!2028281))

(assert (=> bs!397584 m!2026931))

(declare-fun m!2028283 () Bool)

(assert (=> bs!397584 m!2028283))

(declare-fun m!2028285 () Bool)

(assert (=> bs!397584 m!2028285))

(assert (=> bs!397584 m!2026927))

(declare-fun m!2028287 () Bool)

(assert (=> bs!397584 m!2028287))

(declare-fun m!2028289 () Bool)

(assert (=> bs!397584 m!2028289))

(declare-fun m!2028291 () Bool)

(assert (=> bs!397584 m!2028291))

(assert (=> bs!397584 m!2026931))

(declare-fun m!2028293 () Bool)

(assert (=> bs!397584 m!2028293))

(assert (=> bs!397584 m!2026927))

(assert (=> bs!397584 m!2028289))

(assert (=> bs!397584 m!2026927))

(assert (=> bs!397584 m!2028283))

(assert (=> d!502818 d!503170))

(declare-fun b!1665164 () Bool)

(declare-fun e!1067448 () Bool)

(declare-fun lt!626908 () BalanceConc!12180)

(assert (=> b!1665164 (= e!1067448 (= (list!7335 lt!626908) (++!4996 (list!7335 (charsOf!1884 (h!23762 tokens!457))) (list!7335 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))))))

(declare-fun d!503212 () Bool)

(assert (=> d!503212 e!1067448))

(declare-fun res!747194 () Bool)

(assert (=> d!503212 (=> (not res!747194) (not e!1067448))))

(assert (=> d!503212 (= res!747194 (appendAssocInst!480 (c!270827 (charsOf!1884 (h!23762 tokens!457))) (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)))))))

(assert (=> d!503212 (= lt!626908 (BalanceConc!12181 (++!4999 (c!270827 (charsOf!1884 (h!23762 tokens!457))) (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))))))

(assert (=> d!503212 (= (++!4997 (charsOf!1884 (h!23762 tokens!457)) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))) lt!626908)))

(declare-fun b!1665161 () Bool)

(declare-fun res!747196 () Bool)

(assert (=> b!1665161 (=> (not res!747196) (not e!1067448))))

(assert (=> b!1665161 (= res!747196 (isBalanced!1898 (++!4999 (c!270827 (charsOf!1884 (h!23762 tokens!457))) (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))))))

(declare-fun b!1665163 () Bool)

(declare-fun res!747195 () Bool)

(assert (=> b!1665163 (=> (not res!747195) (not e!1067448))))

(assert (=> b!1665163 (= res!747195 (>= (height!963 (++!4999 (c!270827 (charsOf!1884 (h!23762 tokens!457))) (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))) (max!0 (height!963 (c!270827 (charsOf!1884 (h!23762 tokens!457)))) (height!963 (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0)))))))))

(declare-fun b!1665162 () Bool)

(declare-fun res!747193 () Bool)

(assert (=> b!1665162 (=> (not res!747193) (not e!1067448))))

(assert (=> b!1665162 (= res!747193 (<= (height!963 (++!4999 (c!270827 (charsOf!1884 (h!23762 tokens!457))) (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))) (+ (max!0 (height!963 (c!270827 (charsOf!1884 (h!23762 tokens!457)))) (height!963 (c!270827 (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0))))) 1)))))

(assert (= (and d!503212 res!747194) b!1665161))

(assert (= (and b!1665161 res!747196) b!1665162))

(assert (= (and b!1665162 res!747193) b!1665163))

(assert (= (and b!1665163 res!747195) b!1665164))

(declare-fun m!2028295 () Bool)

(assert (=> b!1665164 m!2028295))

(assert (=> b!1665164 m!2026923))

(declare-fun m!2028297 () Bool)

(assert (=> b!1665164 m!2028297))

(assert (=> b!1665164 m!2026925))

(declare-fun m!2028299 () Bool)

(assert (=> b!1665164 m!2028299))

(assert (=> b!1665164 m!2028297))

(assert (=> b!1665164 m!2028299))

(declare-fun m!2028301 () Bool)

(assert (=> b!1665164 m!2028301))

(declare-fun m!2028303 () Bool)

(assert (=> b!1665161 m!2028303))

(assert (=> b!1665161 m!2028303))

(declare-fun m!2028305 () Bool)

(assert (=> b!1665161 m!2028305))

(declare-fun m!2028307 () Bool)

(assert (=> d!503212 m!2028307))

(assert (=> d!503212 m!2028303))

(assert (=> b!1665163 m!2028303))

(declare-fun m!2028309 () Bool)

(assert (=> b!1665163 m!2028309))

(declare-fun m!2028311 () Bool)

(assert (=> b!1665163 m!2028311))

(declare-fun m!2028313 () Bool)

(assert (=> b!1665163 m!2028313))

(assert (=> b!1665163 m!2028303))

(declare-fun m!2028315 () Bool)

(assert (=> b!1665163 m!2028315))

(assert (=> b!1665163 m!2028309))

(assert (=> b!1665163 m!2028311))

(assert (=> b!1665162 m!2028303))

(assert (=> b!1665162 m!2028309))

(assert (=> b!1665162 m!2028311))

(assert (=> b!1665162 m!2028313))

(assert (=> b!1665162 m!2028303))

(assert (=> b!1665162 m!2028315))

(assert (=> b!1665162 m!2028309))

(assert (=> b!1665162 m!2028311))

(assert (=> d!502818 d!503212))

(declare-fun d!503214 () Bool)

(declare-fun lt!626919 () BalanceConc!12180)

(assert (=> d!503214 (= (list!7335 lt!626919) (originalCharacters!4049 (h!23762 tokens!457)))))

(assert (=> d!503214 (= lt!626919 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))

(assert (=> d!503214 (= (charsOf!1884 (h!23762 tokens!457)) lt!626919)))

(declare-fun b_lambda!52261 () Bool)

(assert (=> (not b_lambda!52261) (not d!503214)))

(assert (=> d!503214 t!151931))

(declare-fun b_and!118257 () Bool)

(assert (= b_and!118231 (and (=> t!151931 result!115176) b_and!118257)))

(assert (=> d!503214 t!151979))

(declare-fun b_and!118259 () Bool)

(assert (= b_and!118225 (and (=> t!151979 result!115232) b_and!118259)))

(assert (=> d!503214 t!151933))

(declare-fun b_and!118261 () Bool)

(assert (= b_and!118221 (and (=> t!151933 result!115180) b_and!118261)))

(assert (=> d!503214 t!151983))

(declare-fun b_and!118263 () Bool)

(assert (= b_and!118223 (and (=> t!151983 result!115238) b_and!118263)))

(assert (=> d!503214 t!151944))

(declare-fun b_and!118265 () Bool)

(assert (= b_and!118229 (and (=> t!151944 result!115204) b_and!118265)))

(assert (=> d!503214 t!151942))

(declare-fun b_and!118267 () Bool)

(assert (= b_and!118227 (and (=> t!151942 result!115196) b_and!118267)))

(declare-fun m!2028317 () Bool)

(assert (=> d!503214 m!2028317))

(assert (=> d!503214 m!2026251))

(assert (=> d!502818 d!503214))

(declare-fun d!503216 () Bool)

(declare-fun lt!626927 () C!9300)

(declare-fun apply!4930 (List!18429 Int) C!9300)

(assert (=> d!503216 (= lt!626927 (apply!4930 (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457)))) 0))))

(declare-fun apply!4931 (Conc!6118 Int) C!9300)

(assert (=> d!503216 (= lt!626927 (apply!4931 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457)))) 0))))

(declare-fun e!1067454 () Bool)

(assert (=> d!503216 e!1067454))

(declare-fun res!747199 () Bool)

(assert (=> d!503216 (=> (not res!747199) (not e!1067454))))

(assert (=> d!503216 (= res!747199 (<= 0 0))))

(assert (=> d!503216 (= (apply!4924 (charsOf!1884 (h!23762 (t!151922 tokens!457))) 0) lt!626927)))

(declare-fun b!1665173 () Bool)

(assert (=> b!1665173 (= e!1067454 (< 0 (size!14600 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))

(assert (= (and d!503216 res!747199) b!1665173))

(assert (=> d!503216 m!2026195))

(assert (=> d!503216 m!2026935))

(assert (=> d!503216 m!2026935))

(declare-fun m!2028345 () Bool)

(assert (=> d!503216 m!2028345))

(declare-fun m!2028347 () Bool)

(assert (=> d!503216 m!2028347))

(assert (=> b!1665173 m!2026195))

(assert (=> b!1665173 m!2026197))

(assert (=> d!502818 d!503216))

(declare-fun d!503224 () Bool)

(declare-fun lt!626930 () Unit!31104)

(declare-fun lemma!284 (List!18432 LexerInterface!2864 List!18432) Unit!31104)

(assert (=> d!503224 (= lt!626930 (lemma!284 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67935 () Int)

(declare-fun generalisedUnion!292 (List!18437) Regex!4563)

(declare-fun map!3781 (List!18432 Int) List!18437)

(assert (=> d!503224 (= (rulesRegex!619 thiss!17113 rules!1846) (generalisedUnion!292 (map!3781 rules!1846 lambda!67935)))))

(declare-fun bs!397587 () Bool)

(assert (= bs!397587 d!503224))

(declare-fun m!2028359 () Bool)

(assert (=> bs!397587 m!2028359))

(declare-fun m!2028361 () Bool)

(assert (=> bs!397587 m!2028361))

(assert (=> bs!397587 m!2028361))

(declare-fun m!2028363 () Bool)

(assert (=> bs!397587 m!2028363))

(assert (=> d!502818 d!503224))

(assert (=> d!502818 d!502848))

(declare-fun d!503230 () Bool)

(declare-fun res!747214 () Bool)

(declare-fun e!1067463 () Bool)

(assert (=> d!503230 (=> res!747214 e!1067463)))

(assert (=> d!503230 (= res!747214 ((_ is Nil!18361) (t!151922 tokens!457)))))

(assert (=> d!503230 (= (forall!4172 (t!151922 tokens!457) lambda!67906) e!1067463)))

(declare-fun b!1665192 () Bool)

(declare-fun e!1067464 () Bool)

(assert (=> b!1665192 (= e!1067463 e!1067464)))

(declare-fun res!747215 () Bool)

(assert (=> b!1665192 (=> (not res!747215) (not e!1067464))))

(assert (=> b!1665192 (= res!747215 (dynLambda!8263 lambda!67906 (h!23762 (t!151922 tokens!457))))))

(declare-fun b!1665193 () Bool)

(assert (=> b!1665193 (= e!1067464 (forall!4172 (t!151922 (t!151922 tokens!457)) lambda!67906))))

(assert (= (and d!503230 (not res!747214)) b!1665192))

(assert (= (and b!1665192 res!747215) b!1665193))

(declare-fun b_lambda!52263 () Bool)

(assert (=> (not b_lambda!52263) (not b!1665192)))

(declare-fun m!2028365 () Bool)

(assert (=> b!1665192 m!2028365))

(declare-fun m!2028367 () Bool)

(assert (=> b!1665193 m!2028367))

(assert (=> d!502734 d!503230))

(assert (=> d!502734 d!502634))

(assert (=> bs!397511 d!502688))

(assert (=> b!1663932 d!502746))

(declare-fun d!503232 () Bool)

(assert (=> d!503232 (= (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))) (isBalanced!1898 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(declare-fun bs!397588 () Bool)

(assert (= bs!397588 d!503232))

(declare-fun m!2028369 () Bool)

(assert (=> bs!397588 m!2028369))

(assert (=> tb!95319 d!503232))

(assert (=> d!502740 d!503162))

(declare-fun b!1665194 () Bool)

(declare-fun e!1067468 () tuple2!18074)

(declare-fun lt!626933 () tuple2!18074)

(declare-fun lt!626931 () Option!3524)

(assert (=> b!1665194 (= e!1067468 (tuple2!18075 (prepend!817 (_1!10439 lt!626933) (_1!10445 (v!24758 lt!626931))) (_2!10439 lt!626933)))))

(assert (=> b!1665194 (= lt!626933 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626931))))))

(declare-fun b!1665195 () Bool)

(declare-fun e!1067467 () Bool)

(declare-fun lt!626932 () tuple2!18074)

(assert (=> b!1665195 (= e!1067467 (= (list!7335 (_2!10439 lt!626932)) (list!7335 (_2!10445 (v!24758 lt!626474)))))))

(declare-fun b!1665196 () Bool)

(assert (=> b!1665196 (= e!1067468 (tuple2!18075 (BalanceConc!12183 Empty!6119) (_2!10445 (v!24758 lt!626474))))))

(declare-fun b!1665197 () Bool)

(declare-fun e!1067466 () Bool)

(assert (=> b!1665197 (= e!1067466 (= (list!7335 (_2!10439 lt!626932)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626474)))))))))

(declare-fun d!503234 () Bool)

(assert (=> d!503234 e!1067466))

(declare-fun res!747216 () Bool)

(assert (=> d!503234 (=> (not res!747216) (not e!1067466))))

(assert (=> d!503234 (= res!747216 e!1067467)))

(declare-fun c!271086 () Bool)

(assert (=> d!503234 (= c!271086 (> (size!14601 (_1!10439 lt!626932)) 0))))

(assert (=> d!503234 (= lt!626932 e!1067468)))

(declare-fun c!271087 () Bool)

(assert (=> d!503234 (= c!271087 ((_ is Some!3523) lt!626931))))

(assert (=> d!503234 (= lt!626931 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626474))))))

(assert (=> d!503234 (= (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626474))) lt!626932)))

(declare-fun b!1665198 () Bool)

(declare-fun res!747218 () Bool)

(assert (=> b!1665198 (=> (not res!747218) (not e!1067466))))

(assert (=> b!1665198 (= res!747218 (= (list!7332 (_1!10439 lt!626932)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626474)))))))))

(declare-fun b!1665199 () Bool)

(declare-fun e!1067465 () Bool)

(assert (=> b!1665199 (= e!1067467 e!1067465)))

(declare-fun res!747217 () Bool)

(assert (=> b!1665199 (= res!747217 (< (size!14600 (_2!10439 lt!626932)) (size!14600 (_2!10445 (v!24758 lt!626474)))))))

(assert (=> b!1665199 (=> (not res!747217) (not e!1067465))))

(declare-fun b!1665200 () Bool)

(assert (=> b!1665200 (= e!1067465 (not (isEmpty!11419 (_1!10439 lt!626932))))))

(assert (= (and d!503234 c!271087) b!1665194))

(assert (= (and d!503234 (not c!271087)) b!1665196))

(assert (= (and d!503234 c!271086) b!1665199))

(assert (= (and d!503234 (not c!271086)) b!1665195))

(assert (= (and b!1665199 res!747217) b!1665200))

(assert (= (and d!503234 res!747216) b!1665198))

(assert (= (and b!1665198 res!747218) b!1665197))

(declare-fun m!2028371 () Bool)

(assert (=> b!1665198 m!2028371))

(declare-fun m!2028373 () Bool)

(assert (=> b!1665198 m!2028373))

(assert (=> b!1665198 m!2028373))

(declare-fun m!2028375 () Bool)

(assert (=> b!1665198 m!2028375))

(declare-fun m!2028377 () Bool)

(assert (=> b!1665199 m!2028377))

(declare-fun m!2028379 () Bool)

(assert (=> b!1665199 m!2028379))

(declare-fun m!2028381 () Bool)

(assert (=> b!1665200 m!2028381))

(declare-fun m!2028383 () Bool)

(assert (=> b!1665197 m!2028383))

(assert (=> b!1665197 m!2028373))

(assert (=> b!1665197 m!2028373))

(assert (=> b!1665197 m!2028375))

(declare-fun m!2028385 () Bool)

(assert (=> b!1665194 m!2028385))

(declare-fun m!2028387 () Bool)

(assert (=> b!1665194 m!2028387))

(declare-fun m!2028389 () Bool)

(assert (=> d!503234 m!2028389))

(declare-fun m!2028391 () Bool)

(assert (=> d!503234 m!2028391))

(assert (=> b!1665195 m!2028383))

(assert (=> b!1665195 m!2028373))

(assert (=> b!1664302 d!503234))

(declare-fun d!503236 () Bool)

(declare-fun e!1067469 () Bool)

(assert (=> d!503236 e!1067469))

(declare-fun res!747219 () Bool)

(assert (=> d!503236 (=> (not res!747219) (not e!1067469))))

(assert (=> d!503236 (= res!747219 (isBalanced!1896 (prepend!819 (c!270829 (_1!10439 lt!626467)) (_1!10445 (v!24758 lt!626474)))))))

(declare-fun lt!626934 () BalanceConc!12182)

(assert (=> d!503236 (= lt!626934 (BalanceConc!12183 (prepend!819 (c!270829 (_1!10439 lt!626467)) (_1!10445 (v!24758 lt!626474)))))))

(assert (=> d!503236 (= (prepend!817 (_1!10439 lt!626467) (_1!10445 (v!24758 lt!626474))) lt!626934)))

(declare-fun b!1665201 () Bool)

(assert (=> b!1665201 (= e!1067469 (= (list!7332 lt!626934) (Cons!18361 (_1!10445 (v!24758 lt!626474)) (list!7332 (_1!10439 lt!626467)))))))

(assert (= (and d!503236 res!747219) b!1665201))

(declare-fun m!2028393 () Bool)

(assert (=> d!503236 m!2028393))

(assert (=> d!503236 m!2028393))

(declare-fun m!2028395 () Bool)

(assert (=> d!503236 m!2028395))

(declare-fun m!2028397 () Bool)

(assert (=> b!1665201 m!2028397))

(declare-fun m!2028399 () Bool)

(assert (=> b!1665201 m!2028399))

(assert (=> b!1664302 d!503236))

(assert (=> d!502802 d!503058))

(assert (=> d!502802 d!502774))

(declare-fun d!503238 () Bool)

(declare-fun lt!626935 () Int)

(assert (=> d!503238 (= lt!626935 (size!14602 (list!7339 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))

(assert (=> d!503238 (= lt!626935 (ite ((_ is Empty!6118) (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) 0 (ite ((_ is Leaf!8956) (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) (csize!12467 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) (csize!12466 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(assert (=> d!503238 (= (size!14606 (c!270827 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))) lt!626935)))

(declare-fun bs!397589 () Bool)

(assert (= bs!397589 d!503238))

(assert (=> bs!397589 m!2026611))

(assert (=> bs!397589 m!2026611))

(declare-fun m!2028401 () Bool)

(assert (=> bs!397589 m!2028401))

(assert (=> d!502802 d!503238))

(declare-fun d!503240 () Bool)

(declare-fun lt!626936 () Bool)

(assert (=> d!503240 (= lt!626936 (isEmpty!11417 (list!7335 (_2!10439 lt!626224))))))

(assert (=> d!503240 (= lt!626936 (isEmpty!11418 (c!270827 (_2!10439 lt!626224))))))

(assert (=> d!503240 (= (isEmpty!11412 (_2!10439 lt!626224)) lt!626936)))

(declare-fun bs!397590 () Bool)

(assert (= bs!397590 d!503240))

(declare-fun m!2028411 () Bool)

(assert (=> bs!397590 m!2028411))

(assert (=> bs!397590 m!2028411))

(declare-fun m!2028413 () Bool)

(assert (=> bs!397590 m!2028413))

(declare-fun m!2028417 () Bool)

(assert (=> bs!397590 m!2028417))

(assert (=> b!1664198 d!503240))

(declare-fun b!1665223 () Bool)

(declare-fun e!1067480 () Bool)

(declare-fun e!1067479 () Bool)

(assert (=> b!1665223 (= e!1067480 e!1067479)))

(declare-fun res!747245 () Bool)

(assert (=> b!1665223 (=> (not res!747245) (not e!1067479))))

(declare-fun height!964 (Conc!6119) Int)

(assert (=> b!1665223 (= res!747245 (<= (- 1) (- (height!964 (left!14690 (fromList!406 tokens!457))) (height!964 (right!15020 (fromList!406 tokens!457))))))))

(declare-fun b!1665224 () Bool)

(declare-fun res!747243 () Bool)

(assert (=> b!1665224 (=> (not res!747243) (not e!1067479))))

(assert (=> b!1665224 (= res!747243 (isBalanced!1896 (right!15020 (fromList!406 tokens!457))))))

(declare-fun b!1665225 () Bool)

(declare-fun res!747244 () Bool)

(assert (=> b!1665225 (=> (not res!747244) (not e!1067479))))

(assert (=> b!1665225 (= res!747244 (<= (- (height!964 (left!14690 (fromList!406 tokens!457))) (height!964 (right!15020 (fromList!406 tokens!457)))) 1))))

(declare-fun b!1665226 () Bool)

(declare-fun res!747241 () Bool)

(assert (=> b!1665226 (=> (not res!747241) (not e!1067479))))

(assert (=> b!1665226 (= res!747241 (isBalanced!1896 (left!14690 (fromList!406 tokens!457))))))

(declare-fun d!503242 () Bool)

(declare-fun res!747246 () Bool)

(assert (=> d!503242 (=> res!747246 e!1067480)))

(assert (=> d!503242 (= res!747246 (not ((_ is Node!6119) (fromList!406 tokens!457))))))

(assert (=> d!503242 (= (isBalanced!1896 (fromList!406 tokens!457)) e!1067480)))

(declare-fun b!1665227 () Bool)

(assert (=> b!1665227 (= e!1067479 (not (isEmpty!11423 (right!15020 (fromList!406 tokens!457)))))))

(declare-fun b!1665228 () Bool)

(declare-fun res!747242 () Bool)

(assert (=> b!1665228 (=> (not res!747242) (not e!1067479))))

(assert (=> b!1665228 (= res!747242 (not (isEmpty!11423 (left!14690 (fromList!406 tokens!457)))))))

(assert (= (and d!503242 (not res!747246)) b!1665223))

(assert (= (and b!1665223 res!747245) b!1665225))

(assert (= (and b!1665225 res!747244) b!1665226))

(assert (= (and b!1665226 res!747241) b!1665224))

(assert (= (and b!1665224 res!747243) b!1665228))

(assert (= (and b!1665228 res!747242) b!1665227))

(declare-fun m!2028435 () Bool)

(assert (=> b!1665226 m!2028435))

(declare-fun m!2028437 () Bool)

(assert (=> b!1665225 m!2028437))

(declare-fun m!2028439 () Bool)

(assert (=> b!1665225 m!2028439))

(declare-fun m!2028441 () Bool)

(assert (=> b!1665224 m!2028441))

(declare-fun m!2028443 () Bool)

(assert (=> b!1665227 m!2028443))

(assert (=> b!1665223 m!2028437))

(assert (=> b!1665223 m!2028439))

(declare-fun m!2028445 () Bool)

(assert (=> b!1665228 m!2028445))

(assert (=> b!1664227 d!503242))

(assert (=> b!1664227 d!503154))

(declare-fun d!503254 () Bool)

(declare-fun res!747253 () Bool)

(declare-fun e!1067483 () Bool)

(assert (=> d!503254 (=> (not res!747253) (not e!1067483))))

(assert (=> d!503254 (= res!747253 (not (isEmpty!11417 (originalCharacters!4049 (h!23762 (t!151922 (t!151922 tokens!457)))))))))

(assert (=> d!503254 (= (inv!23702 (h!23762 (t!151922 (t!151922 tokens!457)))) e!1067483)))

(declare-fun b!1665235 () Bool)

(declare-fun res!747254 () Bool)

(assert (=> b!1665235 (=> (not res!747254) (not e!1067483))))

(assert (=> b!1665235 (= res!747254 (= (originalCharacters!4049 (h!23762 (t!151922 (t!151922 tokens!457)))) (list!7335 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))))))

(declare-fun b!1665236 () Bool)

(assert (=> b!1665236 (= e!1067483 (= (size!14596 (h!23762 (t!151922 (t!151922 tokens!457)))) (size!14602 (originalCharacters!4049 (h!23762 (t!151922 (t!151922 tokens!457)))))))))

(assert (= (and d!503254 res!747253) b!1665235))

(assert (= (and b!1665235 res!747254) b!1665236))

(declare-fun b_lambda!52265 () Bool)

(assert (=> (not b_lambda!52265) (not b!1665235)))

(declare-fun t!152051 () Bool)

(declare-fun tb!95399 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152051) tb!95399))

(declare-fun b!1665237 () Bool)

(declare-fun e!1067484 () Bool)

(declare-fun tp!479947 () Bool)

(assert (=> b!1665237 (= e!1067484 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457))))))) tp!479947))))

(declare-fun result!115290 () Bool)

(assert (=> tb!95399 (= result!115290 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (value!101870 (h!23762 (t!151922 (t!151922 tokens!457)))))) e!1067484))))

(assert (= tb!95399 b!1665237))

(declare-fun m!2028447 () Bool)

(assert (=> b!1665237 m!2028447))

(declare-fun m!2028449 () Bool)

(assert (=> tb!95399 m!2028449))

(assert (=> b!1665235 t!152051))

(declare-fun b_and!118269 () Bool)

(assert (= b_and!118257 (and (=> t!152051 result!115290) b_and!118269)))

(declare-fun t!152053 () Bool)

(declare-fun tb!95401 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152053) tb!95401))

(declare-fun result!115292 () Bool)

(assert (= result!115292 result!115290))

(assert (=> b!1665235 t!152053))

(declare-fun b_and!118271 () Bool)

(assert (= b_and!118259 (and (=> t!152053 result!115292) b_and!118271)))

(declare-fun t!152055 () Bool)

(declare-fun tb!95403 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152055) tb!95403))

(declare-fun result!115294 () Bool)

(assert (= result!115294 result!115290))

(assert (=> b!1665235 t!152055))

(declare-fun b_and!118273 () Bool)

(assert (= b_and!118265 (and (=> t!152055 result!115294) b_and!118273)))

(declare-fun tb!95405 () Bool)

(declare-fun t!152057 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152057) tb!95405))

(declare-fun result!115296 () Bool)

(assert (= result!115296 result!115290))

(assert (=> b!1665235 t!152057))

(declare-fun b_and!118275 () Bool)

(assert (= b_and!118263 (and (=> t!152057 result!115296) b_and!118275)))

(declare-fun tb!95407 () Bool)

(declare-fun t!152059 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152059) tb!95407))

(declare-fun result!115298 () Bool)

(assert (= result!115298 result!115290))

(assert (=> b!1665235 t!152059))

(declare-fun b_and!118277 () Bool)

(assert (= b_and!118261 (and (=> t!152059 result!115298) b_and!118277)))

(declare-fun tb!95409 () Bool)

(declare-fun t!152061 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152061) tb!95409))

(declare-fun result!115300 () Bool)

(assert (= result!115300 result!115290))

(assert (=> b!1665235 t!152061))

(declare-fun b_and!118279 () Bool)

(assert (= b_and!118267 (and (=> t!152061 result!115300) b_and!118279)))

(declare-fun m!2028451 () Bool)

(assert (=> d!503254 m!2028451))

(declare-fun m!2028453 () Bool)

(assert (=> b!1665235 m!2028453))

(assert (=> b!1665235 m!2028453))

(declare-fun m!2028459 () Bool)

(assert (=> b!1665235 m!2028459))

(declare-fun m!2028461 () Bool)

(assert (=> b!1665236 m!2028461))

(assert (=> b!1664440 d!503254))

(declare-fun d!503256 () Bool)

(declare-fun lt!626942 () Bool)

(declare-fun e!1067486 () Bool)

(assert (=> d!503256 (= lt!626942 e!1067486)))

(declare-fun res!747259 () Bool)

(assert (=> d!503256 (=> (not res!747259) (not e!1067486))))

(assert (=> d!503256 (= res!747259 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) (list!7332 (singletonSeq!1741 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(declare-fun e!1067487 () Bool)

(assert (=> d!503256 (= lt!626942 e!1067487)))

(declare-fun res!747258 () Bool)

(assert (=> d!503256 (=> (not res!747258) (not e!1067487))))

(declare-fun lt!626941 () tuple2!18074)

(assert (=> d!503256 (= res!747258 (= (size!14601 (_1!10439 lt!626941)) 1))))

(assert (=> d!503256 (= lt!626941 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(assert (=> d!503256 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503256 (= (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) lt!626942)))

(declare-fun b!1665241 () Bool)

(declare-fun res!747260 () Bool)

(assert (=> b!1665241 (=> (not res!747260) (not e!1067487))))

(assert (=> b!1665241 (= res!747260 (= (apply!4921 (_1!10439 lt!626941) 0) (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(declare-fun b!1665242 () Bool)

(assert (=> b!1665242 (= e!1067487 (isEmpty!11412 (_2!10439 lt!626941)))))

(declare-fun b!1665243 () Bool)

(assert (=> b!1665243 (= e!1067486 (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))))

(assert (= (and d!503256 res!747258) b!1665241))

(assert (= (and b!1665241 res!747260) b!1665242))

(assert (= (and d!503256 res!747259) b!1665243))

(declare-fun m!2028473 () Bool)

(assert (=> d!503256 m!2028473))

(declare-fun m!2028475 () Bool)

(assert (=> d!503256 m!2028475))

(assert (=> d!503256 m!2026117))

(declare-fun m!2028477 () Bool)

(assert (=> d!503256 m!2028477))

(declare-fun m!2028479 () Bool)

(assert (=> d!503256 m!2028479))

(assert (=> d!503256 m!2028473))

(assert (=> d!503256 m!2028475))

(declare-fun m!2028481 () Bool)

(assert (=> d!503256 m!2028481))

(assert (=> d!503256 m!2028473))

(declare-fun m!2028483 () Bool)

(assert (=> d!503256 m!2028483))

(declare-fun m!2028485 () Bool)

(assert (=> b!1665241 m!2028485))

(declare-fun m!2028487 () Bool)

(assert (=> b!1665242 m!2028487))

(assert (=> b!1665243 m!2028473))

(assert (=> b!1665243 m!2028473))

(assert (=> b!1665243 m!2028475))

(assert (=> b!1665243 m!2028475))

(assert (=> b!1665243 m!2028481))

(declare-fun m!2028489 () Bool)

(assert (=> b!1665243 m!2028489))

(assert (=> b!1664328 d!503256))

(declare-fun d!503262 () Bool)

(assert (=> d!503262 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))

(declare-fun lt!626945 () Unit!31104)

(assert (=> d!503262 (= lt!626945 (choose!10011 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(assert (=> d!503262 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503262 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) lt!626945)))

(declare-fun bs!397593 () Bool)

(assert (= bs!397593 d!503262))

(assert (=> bs!397593 m!2026869))

(declare-fun m!2028501 () Bool)

(assert (=> bs!397593 m!2028501))

(assert (=> bs!397593 m!2026117))

(assert (=> b!1664328 d!503262))

(declare-fun d!503264 () Bool)

(assert (=> d!503264 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))

(declare-fun lt!626946 () Unit!31104)

(assert (=> d!503264 (= lt!626946 (choose!10011 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))

(assert (=> d!503264 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503264 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!624 thiss!17113 rules!1846 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) lt!626946)))

(declare-fun bs!397594 () Bool)

(assert (= bs!397594 d!503264))

(assert (=> bs!397594 m!2026863))

(declare-fun m!2028511 () Bool)

(assert (=> bs!397594 m!2028511))

(assert (=> bs!397594 m!2026117))

(assert (=> b!1664328 d!503264))

(declare-fun d!503268 () Bool)

(declare-fun lt!626948 () Int)

(assert (=> d!503268 (= lt!626948 (size!14602 (list!7335 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(assert (=> d!503268 (= lt!626948 (size!14606 (c!270827 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(assert (=> d!503268 (= (size!14600 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))) lt!626948)))

(declare-fun bs!397595 () Bool)

(assert (= bs!397595 d!503268))

(assert (=> bs!397595 m!2026865))

(declare-fun m!2028513 () Bool)

(assert (=> bs!397595 m!2028513))

(assert (=> bs!397595 m!2028513))

(declare-fun m!2028515 () Bool)

(assert (=> bs!397595 m!2028515))

(declare-fun m!2028517 () Bool)

(assert (=> bs!397595 m!2028517))

(assert (=> b!1664328 d!503268))

(declare-fun d!503270 () Bool)

(declare-fun lt!626949 () BalanceConc!12180)

(assert (=> d!503270 (= (list!7335 lt!626949) (originalCharacters!4049 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))

(assert (=> d!503270 (= lt!626949 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) (value!101870 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))))

(assert (=> d!503270 (= (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) lt!626949)))

(declare-fun b_lambda!52267 () Bool)

(assert (=> (not b_lambda!52267) (not d!503270)))

(declare-fun t!152063 () Bool)

(declare-fun tb!95411 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152063) tb!95411))

(declare-fun b!1665251 () Bool)

(declare-fun e!1067492 () Bool)

(declare-fun tp!479948 () Bool)

(assert (=> b!1665251 (= e!1067492 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) (value!101870 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) tp!479948))))

(declare-fun result!115302 () Bool)

(assert (=> tb!95411 (= result!115302 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) (value!101870 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))) e!1067492))))

(assert (= tb!95411 b!1665251))

(declare-fun m!2028529 () Bool)

(assert (=> b!1665251 m!2028529))

(declare-fun m!2028531 () Bool)

(assert (=> tb!95411 m!2028531))

(assert (=> d!503270 t!152063))

(declare-fun b_and!118281 () Bool)

(assert (= b_and!118273 (and (=> t!152063 result!115302) b_and!118281)))

(declare-fun t!152065 () Bool)

(declare-fun tb!95413 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152065) tb!95413))

(declare-fun result!115304 () Bool)

(assert (= result!115304 result!115302))

(assert (=> d!503270 t!152065))

(declare-fun b_and!118283 () Bool)

(assert (= b_and!118269 (and (=> t!152065 result!115304) b_and!118283)))

(declare-fun t!152067 () Bool)

(declare-fun tb!95415 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152067) tb!95415))

(declare-fun result!115306 () Bool)

(assert (= result!115306 result!115302))

(assert (=> d!503270 t!152067))

(declare-fun b_and!118285 () Bool)

(assert (= b_and!118275 (and (=> t!152067 result!115306) b_and!118285)))

(declare-fun tb!95417 () Bool)

(declare-fun t!152069 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152069) tb!95417))

(declare-fun result!115308 () Bool)

(assert (= result!115308 result!115302))

(assert (=> d!503270 t!152069))

(declare-fun b_and!118287 () Bool)

(assert (= b_and!118277 (and (=> t!152069 result!115308) b_and!118287)))

(declare-fun tb!95419 () Bool)

(declare-fun t!152071 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152071) tb!95419))

(declare-fun result!115310 () Bool)

(assert (= result!115310 result!115302))

(assert (=> d!503270 t!152071))

(declare-fun b_and!118289 () Bool)

(assert (= b_and!118279 (and (=> t!152071 result!115310) b_and!118289)))

(declare-fun t!152075 () Bool)

(declare-fun tb!95423 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152075) tb!95423))

(declare-fun result!115314 () Bool)

(assert (= result!115314 result!115302))

(assert (=> d!503270 t!152075))

(declare-fun b_and!118291 () Bool)

(assert (= b_and!118271 (and (=> t!152075 result!115314) b_and!118291)))

(declare-fun m!2028533 () Bool)

(assert (=> d!503270 m!2028533))

(declare-fun m!2028535 () Bool)

(assert (=> d!503270 m!2028535))

(assert (=> b!1664328 d!503270))

(declare-fun d!503278 () Bool)

(declare-fun lt!626954 () Bool)

(declare-fun e!1067494 () Bool)

(assert (=> d!503278 (= lt!626954 e!1067494)))

(declare-fun res!747265 () Bool)

(assert (=> d!503278 (=> (not res!747265) (not e!1067494))))

(assert (=> d!503278 (= res!747265 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))) (list!7332 (singletonSeq!1741 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(declare-fun e!1067495 () Bool)

(assert (=> d!503278 (= lt!626954 e!1067495)))

(declare-fun res!747264 () Bool)

(assert (=> d!503278 (=> (not res!747264) (not e!1067495))))

(declare-fun lt!626953 () tuple2!18074)

(assert (=> d!503278 (= res!747264 (= (size!14601 (_1!10439 lt!626953)) 1))))

(assert (=> d!503278 (= lt!626953 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))

(assert (=> d!503278 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503278 (= (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) lt!626954)))

(declare-fun b!1665253 () Bool)

(declare-fun res!747266 () Bool)

(assert (=> b!1665253 (=> (not res!747266) (not e!1067495))))

(assert (=> b!1665253 (= res!747266 (= (apply!4921 (_1!10439 lt!626953) 0) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))

(declare-fun b!1665254 () Bool)

(assert (=> b!1665254 (= e!1067495 (isEmpty!11412 (_2!10439 lt!626953)))))

(declare-fun b!1665255 () Bool)

(assert (=> b!1665255 (= e!1067494 (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))))))))))

(assert (= (and d!503278 res!747264) b!1665253))

(assert (= (and b!1665253 res!747266) b!1665254))

(assert (= (and d!503278 res!747265) b!1665255))

(declare-fun m!2028545 () Bool)

(assert (=> d!503278 m!2028545))

(declare-fun m!2028547 () Bool)

(assert (=> d!503278 m!2028547))

(assert (=> d!503278 m!2026117))

(declare-fun m!2028549 () Bool)

(assert (=> d!503278 m!2028549))

(declare-fun m!2028551 () Bool)

(assert (=> d!503278 m!2028551))

(assert (=> d!503278 m!2028545))

(assert (=> d!503278 m!2028547))

(declare-fun m!2028553 () Bool)

(assert (=> d!503278 m!2028553))

(assert (=> d!503278 m!2028545))

(declare-fun m!2028555 () Bool)

(assert (=> d!503278 m!2028555))

(declare-fun m!2028557 () Bool)

(assert (=> b!1665253 m!2028557))

(declare-fun m!2028559 () Bool)

(assert (=> b!1665254 m!2028559))

(assert (=> b!1665255 m!2028545))

(assert (=> b!1665255 m!2028545))

(assert (=> b!1665255 m!2028547))

(assert (=> b!1665255 m!2028547))

(assert (=> b!1665255 m!2028553))

(declare-fun m!2028561 () Bool)

(assert (=> b!1665255 m!2028561))

(assert (=> b!1664328 d!503278))

(declare-fun d!503282 () Bool)

(assert (=> d!503282 (= (separableTokensPredicate!804 thiss!17113 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))) (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) rules!1846) (not (prefixMatchZipperSequence!663 (rulesRegex!619 thiss!17113 rules!1846) (++!4997 (charsOf!1884 (h!23762 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))) (singletonSeq!1743 (apply!4924 (charsOf!1884 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457)))))) 0))))))))

(declare-fun bs!397599 () Bool)

(assert (= bs!397599 d!503282))

(declare-fun m!2028579 () Bool)

(assert (=> bs!397599 m!2028579))

(declare-fun m!2028583 () Bool)

(assert (=> bs!397599 m!2028583))

(declare-fun m!2028585 () Bool)

(assert (=> bs!397599 m!2028585))

(assert (=> bs!397599 m!2026865))

(assert (=> bs!397599 m!2026865))

(declare-fun m!2028587 () Bool)

(assert (=> bs!397599 m!2028587))

(assert (=> bs!397599 m!2026931))

(assert (=> bs!397599 m!2028585))

(declare-fun m!2028589 () Bool)

(assert (=> bs!397599 m!2028589))

(assert (=> bs!397599 m!2028579))

(assert (=> bs!397599 m!2026931))

(assert (=> bs!397599 m!2028587))

(assert (=> bs!397599 m!2028583))

(assert (=> b!1664328 d!503282))

(declare-fun d!503286 () Bool)

(declare-fun lt!626957 () Int)

(assert (=> d!503286 (>= lt!626957 0)))

(declare-fun e!1067498 () Int)

(assert (=> d!503286 (= lt!626957 e!1067498)))

(declare-fun c!271090 () Bool)

(assert (=> d!503286 (= c!271090 ((_ is Nil!18359) (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))

(assert (=> d!503286 (= (size!14602 (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457))))) lt!626957)))

(declare-fun b!1665259 () Bool)

(assert (=> b!1665259 (= e!1067498 0)))

(declare-fun b!1665260 () Bool)

(assert (=> b!1665260 (= e!1067498 (+ 1 (size!14602 (t!151920 (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))))

(assert (= (and d!503286 c!271090) b!1665259))

(assert (= (and d!503286 (not c!271090)) b!1665260))

(declare-fun m!2028597 () Bool)

(assert (=> b!1665260 m!2028597))

(assert (=> d!502836 d!503286))

(declare-fun d!503288 () Bool)

(assert (=> d!503288 (= (list!7335 (charsOf!1884 (h!23762 (t!151922 tokens!457)))) (list!7339 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))

(declare-fun bs!397601 () Bool)

(assert (= bs!397601 d!503288))

(declare-fun m!2028599 () Bool)

(assert (=> bs!397601 m!2028599))

(assert (=> d!502836 d!503288))

(declare-fun d!503290 () Bool)

(declare-fun lt!626958 () Int)

(assert (=> d!503290 (= lt!626958 (size!14602 (list!7339 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457)))))))))

(assert (=> d!503290 (= lt!626958 (ite ((_ is Empty!6118) (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))) 0 (ite ((_ is Leaf!8956) (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))) (csize!12467 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))) (csize!12466 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))))))))

(assert (=> d!503290 (= (size!14606 (c!270827 (charsOf!1884 (h!23762 (t!151922 tokens!457))))) lt!626958)))

(declare-fun bs!397602 () Bool)

(assert (= bs!397602 d!503290))

(assert (=> bs!397602 m!2028599))

(assert (=> bs!397602 m!2028599))

(declare-fun m!2028605 () Bool)

(assert (=> bs!397602 m!2028605))

(assert (=> d!502836 d!503290))

(declare-fun d!503294 () Bool)

(assert (=> d!503294 (= (Forall!658 lambda!67913) (choose!10019 lambda!67913))))

(declare-fun bs!397604 () Bool)

(assert (= bs!397604 d!503294))

(declare-fun m!2028609 () Bool)

(assert (=> bs!397604 m!2028609))

(assert (=> d!502754 d!503294))

(declare-fun d!503296 () Bool)

(assert (=> d!503296 (= (inv!23712 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (<= (size!14602 (innerList!6178 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) 2147483647))))

(declare-fun bs!397606 () Bool)

(assert (= bs!397606 d!503296))

(declare-fun m!2028625 () Bool)

(assert (=> bs!397606 m!2028625))

(assert (=> b!1664466 d!503296))

(declare-fun d!503304 () Bool)

(assert (=> d!503304 (= (list!7340 (xs!8963 (c!270829 (_1!10439 lt!626098)))) (innerList!6179 (xs!8963 (c!270829 (_1!10439 lt!626098)))))))

(assert (=> b!1664326 d!503304))

(declare-fun d!503306 () Bool)

(declare-fun lt!626960 () Bool)

(assert (=> d!503306 (= lt!626960 (isEmpty!11417 (list!7335 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))))

(assert (=> d!503306 (= lt!626960 (isEmpty!11418 (c!270827 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457)))))))))))

(assert (=> d!503306 (= (isEmpty!11412 (_2!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 (t!151922 tokens!457))))))) lt!626960)))

(declare-fun bs!397608 () Bool)

(assert (= bs!397608 d!503306))

(declare-fun m!2028627 () Bool)

(assert (=> bs!397608 m!2028627))

(assert (=> bs!397608 m!2028627))

(declare-fun m!2028629 () Bool)

(assert (=> bs!397608 m!2028629))

(declare-fun m!2028631 () Bool)

(assert (=> bs!397608 m!2028631))

(assert (=> b!1664423 d!503306))

(assert (=> b!1664423 d!503138))

(assert (=> b!1664423 d!503136))

(assert (=> b!1664423 d!503132))

(declare-fun d!503308 () Bool)

(declare-fun lt!626961 () Int)

(assert (=> d!503308 (>= lt!626961 0)))

(declare-fun e!1067501 () Int)

(assert (=> d!503308 (= lt!626961 e!1067501)))

(declare-fun c!271093 () Bool)

(assert (=> d!503308 (= c!271093 ((_ is Nil!18359) (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))))))

(assert (=> d!503308 (= (size!14602 (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))) lt!626961)))

(declare-fun b!1665265 () Bool)

(assert (=> b!1665265 (= e!1067501 0)))

(declare-fun b!1665266 () Bool)

(assert (=> b!1665266 (= e!1067501 (+ 1 (size!14602 (t!151920 (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))))))))

(assert (= (and d!503308 c!271093) b!1665265))

(assert (= (and d!503308 (not c!271093)) b!1665266))

(declare-fun m!2028635 () Bool)

(assert (=> b!1665266 m!2028635))

(assert (=> b!1664308 d!503308))

(assert (=> d!502852 d!502850))

(declare-fun d!503312 () Bool)

(assert (=> d!503312 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457)))))

(assert (=> d!503312 true))

(declare-fun _$77!691 () Unit!31104)

(assert (=> d!503312 (= (choose!10011 thiss!17113 rules!1846 tokens!457 (h!23762 (t!151922 tokens!457))) _$77!691)))

(declare-fun bs!397631 () Bool)

(assert (= bs!397631 d!503312))

(assert (=> bs!397631 m!2026193))

(assert (=> d!502852 d!503312))

(assert (=> d!502852 d!502634))

(assert (=> d!502688 d!502960))

(assert (=> d!502688 d!502634))

(assert (=> d!502688 d!502958))

(declare-fun d!503400 () Bool)

(assert (=> d!503400 (= (list!7332 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457)))))) (list!7336 (c!270829 (_1!10439 (lex!1348 thiss!17113 rules!1846 (print!1395 thiss!17113 (singletonSeq!1741 (h!23762 tokens!457))))))))))

(declare-fun bs!397632 () Bool)

(assert (= bs!397632 d!503400))

(declare-fun m!2028921 () Bool)

(assert (=> bs!397632 m!2028921))

(assert (=> d!502688 d!503400))

(declare-fun d!503402 () Bool)

(assert (=> d!503402 (= (list!7332 (singletonSeq!1741 (h!23762 tokens!457))) (list!7336 (c!270829 (singletonSeq!1741 (h!23762 tokens!457)))))))

(declare-fun bs!397633 () Bool)

(assert (= bs!397633 d!503402))

(declare-fun m!2028923 () Bool)

(assert (=> bs!397633 m!2028923))

(assert (=> d!502688 d!503402))

(declare-fun d!503404 () Bool)

(declare-fun lt!627002 () Int)

(assert (=> d!503404 (= lt!627002 (size!14607 (list!7332 (_1!10439 lt!626224))))))

(assert (=> d!503404 (= lt!627002 (size!14608 (c!270829 (_1!10439 lt!626224))))))

(assert (=> d!503404 (= (size!14601 (_1!10439 lt!626224)) lt!627002)))

(declare-fun bs!397634 () Bool)

(assert (= bs!397634 d!503404))

(assert (=> bs!397634 m!2027509))

(assert (=> bs!397634 m!2027509))

(declare-fun m!2028925 () Bool)

(assert (=> bs!397634 m!2028925))

(declare-fun m!2028927 () Bool)

(assert (=> bs!397634 m!2028927))

(assert (=> d!502688 d!503404))

(assert (=> d!502688 d!502962))

(declare-fun d!503406 () Bool)

(declare-fun lt!627003 () Int)

(assert (=> d!503406 (>= lt!627003 0)))

(declare-fun e!1067618 () Int)

(assert (=> d!503406 (= lt!627003 e!1067618)))

(declare-fun c!271119 () Bool)

(assert (=> d!503406 (= c!271119 ((_ is Nil!18359) (list!7335 (_2!10439 lt!626151))))))

(assert (=> d!503406 (= (size!14602 (list!7335 (_2!10439 lt!626151))) lt!627003)))

(declare-fun b!1665537 () Bool)

(assert (=> b!1665537 (= e!1067618 0)))

(declare-fun b!1665538 () Bool)

(assert (=> b!1665538 (= e!1067618 (+ 1 (size!14602 (t!151920 (list!7335 (_2!10439 lt!626151))))))))

(assert (= (and d!503406 c!271119) b!1665537))

(assert (= (and d!503406 (not c!271119)) b!1665538))

(declare-fun m!2028929 () Bool)

(assert (=> b!1665538 m!2028929))

(assert (=> d!502800 d!503406))

(assert (=> d!502800 d!502770))

(declare-fun d!503408 () Bool)

(declare-fun lt!627004 () Int)

(assert (=> d!503408 (= lt!627004 (size!14602 (list!7339 (c!270827 (_2!10439 lt!626151)))))))

(assert (=> d!503408 (= lt!627004 (ite ((_ is Empty!6118) (c!270827 (_2!10439 lt!626151))) 0 (ite ((_ is Leaf!8956) (c!270827 (_2!10439 lt!626151))) (csize!12467 (c!270827 (_2!10439 lt!626151))) (csize!12466 (c!270827 (_2!10439 lt!626151))))))))

(assert (=> d!503408 (= (size!14606 (c!270827 (_2!10439 lt!626151))) lt!627004)))

(declare-fun bs!397635 () Bool)

(assert (= bs!397635 d!503408))

(assert (=> bs!397635 m!2026597))

(assert (=> bs!397635 m!2026597))

(declare-fun m!2028931 () Bool)

(assert (=> bs!397635 m!2028931))

(assert (=> d!502800 d!503408))

(declare-fun d!503410 () Bool)

(declare-fun c!271122 () Bool)

(assert (=> d!503410 (= c!271122 ((_ is Nil!18360) (text!23724 (value!101870 (h!23762 tokens!457)))))))

(declare-fun e!1067635 () Int)

(assert (=> d!503410 (= (charsToBigInt!0 (text!23724 (value!101870 (h!23762 tokens!457))) 0) e!1067635)))

(declare-fun b!1665599 () Bool)

(assert (=> b!1665599 (= e!1067635 0)))

(declare-fun b!1665600 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!1665600 (= e!1067635 (charsToBigInt!0 (t!151921 (text!23724 (value!101870 (h!23762 tokens!457)))) (+ (* 0 10) (charToBigInt!0 (h!23761 (text!23724 (value!101870 (h!23762 tokens!457))))))))))

(assert (= (and d!503410 c!271122) b!1665599))

(assert (= (and d!503410 (not c!271122)) b!1665600))

(declare-fun m!2028933 () Bool)

(assert (=> b!1665600 m!2028933))

(declare-fun m!2028935 () Bool)

(assert (=> b!1665600 m!2028935))

(assert (=> d!502794 d!503410))

(declare-fun d!503412 () Bool)

(declare-fun lt!627005 () Int)

(assert (=> d!503412 (= lt!627005 (size!14607 (list!7332 (seqFromList!2208 tokens!457))))))

(assert (=> d!503412 (= lt!627005 (size!14608 (c!270829 (seqFromList!2208 tokens!457))))))

(assert (=> d!503412 (= (size!14601 (seqFromList!2208 tokens!457)) lt!627005)))

(declare-fun bs!397636 () Bool)

(assert (= bs!397636 d!503412))

(assert (=> bs!397636 m!2026125))

(assert (=> bs!397636 m!2026231))

(assert (=> bs!397636 m!2026231))

(declare-fun m!2028937 () Bool)

(assert (=> bs!397636 m!2028937))

(declare-fun m!2028939 () Bool)

(assert (=> bs!397636 m!2028939))

(assert (=> b!1664246 d!503412))

(declare-fun d!503414 () Bool)

(declare-fun lt!627006 () Int)

(assert (=> d!503414 (>= lt!627006 0)))

(declare-fun e!1067641 () Int)

(assert (=> d!503414 (= lt!627006 e!1067641)))

(declare-fun c!271123 () Bool)

(assert (=> d!503414 (= c!271123 ((_ is Nil!18361) (list!7332 (_1!10439 lt!626151))))))

(assert (=> d!503414 (= (size!14607 (list!7332 (_1!10439 lt!626151))) lt!627006)))

(declare-fun b!1665616 () Bool)

(assert (=> b!1665616 (= e!1067641 0)))

(declare-fun b!1665617 () Bool)

(assert (=> b!1665617 (= e!1067641 (+ 1 (size!14607 (t!151922 (list!7332 (_1!10439 lt!626151))))))))

(assert (= (and d!503414 c!271123) b!1665616))

(assert (= (and d!503414 (not c!271123)) b!1665617))

(declare-fun m!2028945 () Bool)

(assert (=> b!1665617 m!2028945))

(assert (=> d!502782 d!503414))

(assert (=> d!502782 d!502798))

(declare-fun d!503416 () Bool)

(declare-fun lt!627009 () Int)

(assert (=> d!503416 (= lt!627009 (size!14607 (list!7336 (c!270829 (_1!10439 lt!626151)))))))

(assert (=> d!503416 (= lt!627009 (ite ((_ is Empty!6119) (c!270829 (_1!10439 lt!626151))) 0 (ite ((_ is Leaf!8957) (c!270829 (_1!10439 lt!626151))) (csize!12469 (c!270829 (_1!10439 lt!626151))) (csize!12468 (c!270829 (_1!10439 lt!626151))))))))

(assert (=> d!503416 (= (size!14608 (c!270829 (_1!10439 lt!626151))) lt!627009)))

(declare-fun bs!397637 () Bool)

(assert (= bs!397637 d!503416))

(assert (=> bs!397637 m!2026823))

(assert (=> bs!397637 m!2026823))

(declare-fun m!2028949 () Bool)

(assert (=> bs!397637 m!2028949))

(assert (=> d!502782 d!503416))

(declare-fun d!503418 () Bool)

(assert (=> d!503418 (= (inv!16 (value!101870 (h!23762 (t!151922 tokens!457)))) (= (charsToInt!0 (text!23722 (value!101870 (h!23762 (t!151922 tokens!457))))) (value!101861 (value!101870 (h!23762 (t!151922 tokens!457))))))))

(declare-fun bs!397638 () Bool)

(assert (= bs!397638 d!503418))

(declare-fun m!2028951 () Bool)

(assert (=> bs!397638 m!2028951))

(assert (=> b!1664312 d!503418))

(declare-fun d!503420 () Bool)

(assert (=> d!503420 (= (isEmpty!11422 (_1!10441 lt!626276)) ((_ is Nil!18361) (_1!10441 lt!626276)))))

(assert (=> b!1664259 d!503420))

(declare-fun b!1665647 () Bool)

(declare-fun e!1067654 () List!18429)

(declare-fun e!1067655 () List!18429)

(assert (=> b!1665647 (= e!1067654 e!1067655)))

(declare-fun c!271125 () Bool)

(assert (=> b!1665647 (= c!271125 ((_ is Leaf!8956) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(declare-fun b!1665646 () Bool)

(assert (=> b!1665646 (= e!1067654 Nil!18359)))

(declare-fun d!503422 () Bool)

(declare-fun c!271124 () Bool)

(assert (=> d!503422 (= c!271124 ((_ is Empty!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))

(assert (=> d!503422 (= (list!7339 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))) e!1067654)))

(declare-fun b!1665648 () Bool)

(assert (=> b!1665648 (= e!1067655 (list!7341 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun b!1665649 () Bool)

(assert (=> b!1665649 (= e!1067655 (++!4996 (list!7339 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) (list!7339 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))))

(assert (= (and d!503422 c!271124) b!1665646))

(assert (= (and d!503422 (not c!271124)) b!1665647))

(assert (= (and b!1665647 c!271125) b!1665648))

(assert (= (and b!1665647 (not c!271125)) b!1665649))

(assert (=> b!1665648 m!2027285))

(declare-fun m!2028961 () Bool)

(assert (=> b!1665649 m!2028961))

(declare-fun m!2028963 () Bool)

(assert (=> b!1665649 m!2028963))

(assert (=> b!1665649 m!2028961))

(assert (=> b!1665649 m!2028963))

(declare-fun m!2028965 () Bool)

(assert (=> b!1665649 m!2028965))

(assert (=> d!502752 d!503422))

(declare-fun b!1665659 () Bool)

(declare-fun e!1067658 () List!18429)

(declare-fun e!1067659 () List!18429)

(assert (=> b!1665659 (= e!1067658 e!1067659)))

(declare-fun c!271127 () Bool)

(assert (=> b!1665659 (= c!271127 ((_ is Leaf!8956) (c!270827 lt!626154)))))

(declare-fun b!1665658 () Bool)

(assert (=> b!1665658 (= e!1067658 Nil!18359)))

(declare-fun d!503424 () Bool)

(declare-fun c!271126 () Bool)

(assert (=> d!503424 (= c!271126 ((_ is Empty!6118) (c!270827 lt!626154)))))

(assert (=> d!503424 (= (list!7339 (c!270827 lt!626154)) e!1067658)))

(declare-fun b!1665660 () Bool)

(assert (=> b!1665660 (= e!1067659 (list!7341 (xs!8962 (c!270827 lt!626154))))))

(declare-fun b!1665661 () Bool)

(assert (=> b!1665661 (= e!1067659 (++!4996 (list!7339 (left!14689 (c!270827 lt!626154))) (list!7339 (right!15019 (c!270827 lt!626154)))))))

(assert (= (and d!503424 c!271126) b!1665658))

(assert (= (and d!503424 (not c!271126)) b!1665659))

(assert (= (and b!1665659 c!271127) b!1665660))

(assert (= (and b!1665659 (not c!271127)) b!1665661))

(declare-fun m!2028967 () Bool)

(assert (=> b!1665660 m!2028967))

(declare-fun m!2028969 () Bool)

(assert (=> b!1665661 m!2028969))

(declare-fun m!2028971 () Bool)

(assert (=> b!1665661 m!2028971))

(assert (=> b!1665661 m!2028969))

(assert (=> b!1665661 m!2028971))

(declare-fun m!2028973 () Bool)

(assert (=> b!1665661 m!2028973))

(assert (=> d!502762 d!503424))

(declare-fun d!503426 () Bool)

(declare-fun c!271128 () Bool)

(assert (=> d!503426 (= c!271128 ((_ is Node!6118) (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun e!1067661 () Bool)

(assert (=> d!503426 (= (inv!23705 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) e!1067661)))

(declare-fun b!1665666 () Bool)

(assert (=> b!1665666 (= e!1067661 (inv!23709 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun b!1665667 () Bool)

(declare-fun e!1067662 () Bool)

(assert (=> b!1665667 (= e!1067661 e!1067662)))

(declare-fun res!747325 () Bool)

(assert (=> b!1665667 (= res!747325 (not ((_ is Leaf!8956) (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))))

(assert (=> b!1665667 (=> res!747325 e!1067662)))

(declare-fun b!1665668 () Bool)

(assert (=> b!1665668 (= e!1067662 (inv!23710 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(assert (= (and d!503426 c!271128) b!1665666))

(assert (= (and d!503426 (not c!271128)) b!1665667))

(assert (= (and b!1665667 (not res!747325)) b!1665668))

(declare-fun m!2028975 () Bool)

(assert (=> b!1665666 m!2028975))

(declare-fun m!2028977 () Bool)

(assert (=> b!1665668 m!2028977))

(assert (=> b!1664465 d!503426))

(declare-fun d!503428 () Bool)

(declare-fun c!271129 () Bool)

(assert (=> d!503428 (= c!271129 ((_ is Node!6118) (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun e!1067663 () Bool)

(assert (=> d!503428 (= (inv!23705 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) e!1067663)))

(declare-fun b!1665669 () Bool)

(assert (=> b!1665669 (= e!1067663 (inv!23709 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(declare-fun b!1665670 () Bool)

(declare-fun e!1067664 () Bool)

(assert (=> b!1665670 (= e!1067663 e!1067664)))

(declare-fun res!747326 () Bool)

(assert (=> b!1665670 (= res!747326 (not ((_ is Leaf!8956) (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))))))

(assert (=> b!1665670 (=> res!747326 e!1067664)))

(declare-fun b!1665671 () Bool)

(assert (=> b!1665671 (= e!1067664 (inv!23710 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))))

(assert (= (and d!503428 c!271129) b!1665669))

(assert (= (and d!503428 (not c!271129)) b!1665670))

(assert (= (and b!1665670 (not res!747326)) b!1665671))

(declare-fun m!2028979 () Bool)

(assert (=> b!1665669 m!2028979))

(declare-fun m!2028981 () Bool)

(assert (=> b!1665671 m!2028981))

(assert (=> b!1664465 d!503428))

(declare-fun d!503432 () Bool)

(assert (=> d!503432 (= (isEmpty!11417 (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))) ((_ is Nil!18359) (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))))))

(assert (=> d!502804 d!503432))

(declare-fun d!503436 () Bool)

(declare-fun lt!627010 () Bool)

(assert (=> d!503436 (= lt!627010 (isEmpty!11417 (list!7335 (_2!10439 lt!626515))))))

(assert (=> d!503436 (= lt!627010 (isEmpty!11418 (c!270827 (_2!10439 lt!626515))))))

(assert (=> d!503436 (= (isEmpty!11412 (_2!10439 lt!626515)) lt!627010)))

(declare-fun bs!397642 () Bool)

(assert (= bs!397642 d!503436))

(declare-fun m!2028983 () Bool)

(assert (=> bs!397642 m!2028983))

(assert (=> bs!397642 m!2028983))

(declare-fun m!2028985 () Bool)

(assert (=> bs!397642 m!2028985))

(declare-fun m!2028987 () Bool)

(assert (=> bs!397642 m!2028987))

(assert (=> b!1664422 d!503436))

(declare-fun d!503440 () Bool)

(assert (=> d!503440 (= (list!7335 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))) (list!7339 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))))))

(declare-fun bs!397643 () Bool)

(assert (= bs!397643 d!503440))

(declare-fun m!2028989 () Bool)

(assert (=> bs!397643 m!2028989))

(assert (=> b!1664307 d!503440))

(assert (=> d!502838 d!502688))

(declare-fun d!503442 () Bool)

(assert (=> d!503442 (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 tokens!457))))

(assert (=> d!503442 true))

(declare-fun _$77!692 () Unit!31104)

(assert (=> d!503442 (= (choose!10011 thiss!17113 rules!1846 tokens!457 (h!23762 tokens!457)) _$77!692)))

(declare-fun bs!397644 () Bool)

(assert (= bs!397644 d!503442))

(assert (=> bs!397644 m!2026199))

(assert (=> d!502838 d!503442))

(assert (=> d!502838 d!502634))

(declare-fun d!503444 () Bool)

(assert (=> d!503444 (= (list!7335 lt!626514) (list!7339 (c!270827 lt!626514)))))

(declare-fun bs!397645 () Bool)

(assert (= bs!397645 d!503444))

(declare-fun m!2028991 () Bool)

(assert (=> bs!397645 m!2028991))

(assert (=> d!502848 d!503444))

(declare-fun bs!397646 () Bool)

(declare-fun d!503446 () Bool)

(assert (= bs!397646 (and d!503446 d!502748)))

(declare-fun lambda!67941 () Int)

(assert (=> bs!397646 (= (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (= lambda!67941 lambda!67909))))

(declare-fun bs!397647 () Bool)

(assert (= bs!397647 (and d!503446 d!502750)))

(assert (=> bs!397647 (= (= (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (= lambda!67941 lambda!67910))))

(assert (=> d!503446 true))

(assert (=> d!503446 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (dynLambda!8260 order!11005 lambda!67941))))

(assert (=> d!503446 (= (equivClasses!1201 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (Forall2!529 lambda!67941))))

(declare-fun bs!397648 () Bool)

(assert (= bs!397648 d!503446))

(declare-fun m!2028993 () Bool)

(assert (=> bs!397648 m!2028993))

(assert (=> b!1664264 d!503446))

(declare-fun d!503448 () Bool)

(assert (=> d!503448 (= (inv!23698 (tag!3519 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (= (mod (str.len (value!101869 (tag!3519 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) 2) 0))))

(assert (=> b!1664442 d!503448))

(declare-fun d!503450 () Bool)

(declare-fun res!747327 () Bool)

(declare-fun e!1067665 () Bool)

(assert (=> d!503450 (=> (not res!747327) (not e!1067665))))

(assert (=> d!503450 (= res!747327 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))))))

(assert (=> d!503450 (= (inv!23701 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) e!1067665)))

(declare-fun b!1665672 () Bool)

(assert (=> b!1665672 (= e!1067665 (equivClasses!1201 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))))))

(assert (= (and d!503450 res!747327) b!1665672))

(declare-fun m!2028995 () Bool)

(assert (=> d!503450 m!2028995))

(declare-fun m!2028997 () Bool)

(assert (=> b!1665672 m!2028997))

(assert (=> b!1664442 d!503450))

(declare-fun d!503452 () Bool)

(declare-fun lt!627021 () List!18429)

(assert (=> d!503452 (= lt!627021 (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (printList!977 thiss!17113 (dropList!708 (seqFromList!2208 tokens!457) 0))))))

(declare-fun e!1067668 () List!18429)

(assert (=> d!503452 (= lt!627021 e!1067668)))

(declare-fun c!271132 () Bool)

(assert (=> d!503452 (= c!271132 ((_ is Cons!18361) (dropList!708 (seqFromList!2208 tokens!457) 0)))))

(assert (=> d!503452 (= (printListTailRec!411 thiss!17113 (dropList!708 (seqFromList!2208 tokens!457) 0) (list!7335 (BalanceConc!12181 Empty!6118))) lt!627021)))

(declare-fun b!1665677 () Bool)

(assert (=> b!1665677 (= e!1067668 (printListTailRec!411 thiss!17113 (t!151922 (dropList!708 (seqFromList!2208 tokens!457) 0)) (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (list!7335 (charsOf!1884 (h!23762 (dropList!708 (seqFromList!2208 tokens!457) 0)))))))))

(declare-fun lt!627022 () List!18429)

(assert (=> b!1665677 (= lt!627022 (list!7335 (charsOf!1884 (h!23762 (dropList!708 (seqFromList!2208 tokens!457) 0)))))))

(declare-fun lt!627025 () List!18429)

(assert (=> b!1665677 (= lt!627025 (printList!977 thiss!17113 (t!151922 (dropList!708 (seqFromList!2208 tokens!457) 0))))))

(declare-fun lt!627023 () Unit!31104)

(assert (=> b!1665677 (= lt!627023 (lemmaConcatAssociativity!1034 (list!7335 (BalanceConc!12181 Empty!6118)) lt!627022 lt!627025))))

(assert (=> b!1665677 (= (++!4996 (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) lt!627022) lt!627025) (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (++!4996 lt!627022 lt!627025)))))

(declare-fun lt!627024 () Unit!31104)

(assert (=> b!1665677 (= lt!627024 lt!627023)))

(declare-fun b!1665678 () Bool)

(assert (=> b!1665678 (= e!1067668 (list!7335 (BalanceConc!12181 Empty!6118)))))

(assert (= (and d!503452 c!271132) b!1665677))

(assert (= (and d!503452 (not c!271132)) b!1665678))

(assert (=> d!503452 m!2026565))

(declare-fun m!2028999 () Bool)

(assert (=> d!503452 m!2028999))

(assert (=> d!503452 m!2026563))

(assert (=> d!503452 m!2028999))

(declare-fun m!2029001 () Bool)

(assert (=> d!503452 m!2029001))

(declare-fun m!2029003 () Bool)

(assert (=> b!1665677 m!2029003))

(declare-fun m!2029005 () Bool)

(assert (=> b!1665677 m!2029005))

(assert (=> b!1665677 m!2026563))

(declare-fun m!2029007 () Bool)

(assert (=> b!1665677 m!2029007))

(declare-fun m!2029009 () Bool)

(assert (=> b!1665677 m!2029009))

(assert (=> b!1665677 m!2029007))

(declare-fun m!2029011 () Bool)

(assert (=> b!1665677 m!2029011))

(assert (=> b!1665677 m!2026563))

(declare-fun m!2029013 () Bool)

(assert (=> b!1665677 m!2029013))

(declare-fun m!2029015 () Bool)

(assert (=> b!1665677 m!2029015))

(declare-fun m!2029017 () Bool)

(assert (=> b!1665677 m!2029017))

(declare-fun m!2029019 () Bool)

(assert (=> b!1665677 m!2029019))

(assert (=> b!1665677 m!2026563))

(assert (=> b!1665677 m!2029005))

(assert (=> b!1665677 m!2029017))

(assert (=> b!1665677 m!2026563))

(declare-fun m!2029021 () Bool)

(assert (=> b!1665677 m!2029021))

(assert (=> b!1665677 m!2029003))

(assert (=> b!1665677 m!2029013))

(assert (=> d!502768 d!503452))

(declare-fun d!503454 () Bool)

(assert (=> d!503454 (= (list!7335 lt!626263) (list!7339 (c!270827 lt!626263)))))

(declare-fun bs!397649 () Bool)

(assert (= bs!397649 d!503454))

(declare-fun m!2029023 () Bool)

(assert (=> bs!397649 m!2029023))

(assert (=> d!502768 d!503454))

(declare-fun d!503456 () Bool)

(assert (=> d!503456 (= (dropList!708 (seqFromList!2208 tokens!457) 0) (drop!934 (list!7336 (c!270829 (seqFromList!2208 tokens!457))) 0))))

(declare-fun bs!397650 () Bool)

(assert (= bs!397650 d!503456))

(assert (=> bs!397650 m!2026561))

(assert (=> bs!397650 m!2026561))

(declare-fun m!2029025 () Bool)

(assert (=> bs!397650 m!2029025))

(assert (=> d!502768 d!503456))

(assert (=> d!502768 d!503412))

(declare-fun d!503458 () Bool)

(assert (=> d!503458 (= (list!7335 (BalanceConc!12181 Empty!6118)) (list!7339 (c!270827 (BalanceConc!12181 Empty!6118))))))

(declare-fun bs!397651 () Bool)

(assert (= bs!397651 d!503458))

(declare-fun m!2029027 () Bool)

(assert (=> bs!397651 m!2029027))

(assert (=> d!502768 d!503458))

(declare-fun d!503460 () Bool)

(assert (=> d!503460 (= (++!4996 (++!4996 lt!626458 lt!626476) lt!626464) (++!4996 lt!626458 (++!4996 lt!626476 lt!626464)))))

(declare-fun lt!627028 () Unit!31104)

(declare-fun choose!10026 (List!18429 List!18429 List!18429) Unit!31104)

(assert (=> d!503460 (= lt!627028 (choose!10026 lt!626458 lt!626476 lt!626464))))

(assert (=> d!503460 (= (lemmaConcatAssociativity!1034 lt!626458 lt!626476 lt!626464) lt!627028)))

(declare-fun bs!397652 () Bool)

(assert (= bs!397652 d!503460))

(declare-fun m!2029029 () Bool)

(assert (=> bs!397652 m!2029029))

(assert (=> bs!397652 m!2026791))

(assert (=> bs!397652 m!2026755))

(assert (=> bs!397652 m!2026761))

(assert (=> bs!397652 m!2026791))

(assert (=> bs!397652 m!2026793))

(assert (=> bs!397652 m!2026755))

(assert (=> b!1664306 d!503460))

(declare-fun d!503462 () Bool)

(assert (=> d!503462 (= (list!7332 (_1!10439 lt!626463)) (list!7336 (c!270829 (_1!10439 lt!626463))))))

(declare-fun bs!397653 () Bool)

(assert (= bs!397653 d!503462))

(declare-fun m!2029031 () Bool)

(assert (=> bs!397653 m!2029031))

(assert (=> b!1664306 d!503462))

(declare-fun d!503464 () Bool)

(assert (=> d!503464 (= (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))) (list!7339 (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))

(declare-fun bs!397654 () Bool)

(assert (= bs!397654 d!503464))

(declare-fun m!2029033 () Bool)

(assert (=> bs!397654 m!2029033))

(assert (=> b!1664306 d!503464))

(declare-fun lt!627029 () List!18429)

(declare-fun e!1067669 () Bool)

(declare-fun b!1665682 () Bool)

(assert (=> b!1665682 (= e!1067669 (or (not (= lt!626464 Nil!18359)) (= lt!627029 (++!4996 lt!626458 lt!626476))))))

(declare-fun e!1067670 () List!18429)

(declare-fun b!1665680 () Bool)

(assert (=> b!1665680 (= e!1067670 (Cons!18359 (h!23760 (++!4996 lt!626458 lt!626476)) (++!4996 (t!151920 (++!4996 lt!626458 lt!626476)) lt!626464)))))

(declare-fun b!1665679 () Bool)

(assert (=> b!1665679 (= e!1067670 lt!626464)))

(declare-fun d!503466 () Bool)

(assert (=> d!503466 e!1067669))

(declare-fun res!747328 () Bool)

(assert (=> d!503466 (=> (not res!747328) (not e!1067669))))

(assert (=> d!503466 (= res!747328 (= (content!2562 lt!627029) ((_ map or) (content!2562 (++!4996 lt!626458 lt!626476)) (content!2562 lt!626464))))))

(assert (=> d!503466 (= lt!627029 e!1067670)))

(declare-fun c!271133 () Bool)

(assert (=> d!503466 (= c!271133 ((_ is Nil!18359) (++!4996 lt!626458 lt!626476)))))

(assert (=> d!503466 (= (++!4996 (++!4996 lt!626458 lt!626476) lt!626464) lt!627029)))

(declare-fun b!1665681 () Bool)

(declare-fun res!747329 () Bool)

(assert (=> b!1665681 (=> (not res!747329) (not e!1067669))))

(assert (=> b!1665681 (= res!747329 (= (size!14602 lt!627029) (+ (size!14602 (++!4996 lt!626458 lt!626476)) (size!14602 lt!626464))))))

(assert (= (and d!503466 c!271133) b!1665679))

(assert (= (and d!503466 (not c!271133)) b!1665680))

(assert (= (and d!503466 res!747328) b!1665681))

(assert (= (and b!1665681 res!747329) b!1665682))

(declare-fun m!2029035 () Bool)

(assert (=> b!1665680 m!2029035))

(declare-fun m!2029037 () Bool)

(assert (=> d!503466 m!2029037))

(assert (=> d!503466 m!2026791))

(declare-fun m!2029039 () Bool)

(assert (=> d!503466 m!2029039))

(declare-fun m!2029041 () Bool)

(assert (=> d!503466 m!2029041))

(declare-fun m!2029043 () Bool)

(assert (=> b!1665681 m!2029043))

(assert (=> b!1665681 m!2026791))

(declare-fun m!2029045 () Bool)

(assert (=> b!1665681 m!2029045))

(declare-fun m!2029047 () Bool)

(assert (=> b!1665681 m!2029047))

(assert (=> b!1664306 d!503466))

(declare-fun d!503468 () Bool)

(assert (=> d!503468 (= (list!7335 (_2!10439 lt!626463)) (list!7339 (c!270827 (_2!10439 lt!626463))))))

(declare-fun bs!397655 () Bool)

(assert (= bs!397655 d!503468))

(declare-fun m!2029049 () Bool)

(assert (=> bs!397655 m!2029049))

(assert (=> b!1664306 d!503468))

(declare-fun b!1665683 () Bool)

(declare-fun e!1067673 () tuple2!18074)

(declare-fun lt!627036 () BalanceConc!12180)

(assert (=> b!1665683 (= e!1067673 (tuple2!18075 (BalanceConc!12183 Empty!6119) lt!627036))))

(declare-fun d!503470 () Bool)

(declare-fun e!1067671 () Bool)

(assert (=> d!503470 e!1067671))

(declare-fun res!747330 () Bool)

(assert (=> d!503470 (=> (not res!747330) (not e!1067671))))

(declare-fun lt!627061 () tuple2!18074)

(assert (=> d!503470 (= res!747330 (= (list!7332 (_1!10439 lt!627061)) (list!7332 (_1!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun e!1067674 () tuple2!18074)

(assert (=> d!503470 (= lt!627061 e!1067674)))

(declare-fun c!271135 () Bool)

(declare-fun lt!627051 () Option!3524)

(assert (=> d!503470 (= c!271135 ((_ is Some!3523) lt!627051))))

(assert (=> d!503470 (= lt!627051 (maxPrefixZipperSequenceV2!274 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472)) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun lt!627059 () Unit!31104)

(declare-fun lt!627054 () Unit!31104)

(assert (=> d!503470 (= lt!627059 lt!627054)))

(declare-fun lt!627038 () List!18429)

(declare-fun lt!627034 () List!18429)

(assert (=> d!503470 (isSuffix!425 lt!627038 (++!4996 lt!627034 lt!627038))))

(assert (=> d!503470 (= lt!627054 (lemmaConcatTwoListThenFSndIsSuffix!326 lt!627034 lt!627038))))

(assert (=> d!503470 (= lt!627038 (list!7335 (_2!10445 (v!24758 lt!626472))))))

(assert (=> d!503470 (= lt!627034 (list!7335 lt!626465))))

(assert (=> d!503470 (= (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) lt!626465 (_2!10445 (v!24758 lt!626472)) (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472)))) lt!627061)))

(declare-fun b!1665684 () Bool)

(declare-fun e!1067672 () tuple2!18074)

(assert (=> b!1665684 (= e!1067672 (tuple2!18075 (BalanceConc!12183 Empty!6119) (_2!10445 (v!24758 lt!626472))))))

(declare-fun lt!627053 () Option!3524)

(declare-fun lt!627046 () tuple2!18074)

(declare-fun b!1665685 () Bool)

(assert (=> b!1665685 (= lt!627046 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627053))))))

(assert (=> b!1665685 (= e!1067672 (tuple2!18075 (prepend!817 (_1!10439 lt!627046) (_1!10445 (v!24758 lt!627053))) (_2!10439 lt!627046)))))

(declare-fun b!1665686 () Bool)

(assert (=> b!1665686 (= e!1067674 (tuple2!18075 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472))) (_2!10445 (v!24758 lt!626472))))))

(declare-fun b!1665687 () Bool)

(assert (=> b!1665687 (= e!1067671 (= (list!7335 (_2!10439 lt!627061)) (list!7335 (_2!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun lt!627033 () Option!3524)

(declare-fun b!1665688 () Bool)

(declare-fun lt!627031 () tuple2!18074)

(assert (=> b!1665688 (= lt!627031 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627033))))))

(assert (=> b!1665688 (= e!1067673 (tuple2!18075 (prepend!817 (_1!10439 lt!627031) (_1!10445 (v!24758 lt!627033))) (_2!10439 lt!627031)))))

(declare-fun b!1665689 () Bool)

(declare-fun lt!627044 () BalanceConc!12180)

(assert (=> b!1665689 (= e!1067674 (lexTailRecV2!612 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) lt!627044 (_2!10445 (v!24758 lt!627051)) (append!562 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472))) (_1!10445 (v!24758 lt!627051)))))))

(declare-fun lt!627042 () tuple2!18074)

(assert (=> b!1665689 (= lt!627042 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627051))))))

(declare-fun lt!627037 () List!18429)

(assert (=> b!1665689 (= lt!627037 (list!7335 lt!626465))))

(declare-fun lt!627055 () List!18429)

(assert (=> b!1665689 (= lt!627055 (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!627051)))))))

(declare-fun lt!627043 () List!18429)

(assert (=> b!1665689 (= lt!627043 (list!7335 (_2!10445 (v!24758 lt!627051))))))

(declare-fun lt!627058 () Unit!31104)

(assert (=> b!1665689 (= lt!627058 (lemmaConcatAssociativity!1034 lt!627037 lt!627055 lt!627043))))

(assert (=> b!1665689 (= (++!4996 (++!4996 lt!627037 lt!627055) lt!627043) (++!4996 lt!627037 (++!4996 lt!627055 lt!627043)))))

(declare-fun lt!627052 () Unit!31104)

(assert (=> b!1665689 (= lt!627052 lt!627058)))

(assert (=> b!1665689 (= lt!627053 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472))))))

(declare-fun c!271134 () Bool)

(assert (=> b!1665689 (= c!271134 ((_ is Some!3523) lt!627053))))

(assert (=> b!1665689 (= (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472))) e!1067672)))

(declare-fun lt!627057 () Unit!31104)

(declare-fun Unit!31127 () Unit!31104)

(assert (=> b!1665689 (= lt!627057 Unit!31127)))

(declare-fun lt!627063 () List!18431)

(assert (=> b!1665689 (= lt!627063 (list!7332 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!627035 () List!18431)

(assert (=> b!1665689 (= lt!627035 (Cons!18361 (_1!10445 (v!24758 lt!627051)) Nil!18361))))

(declare-fun lt!627060 () List!18431)

(assert (=> b!1665689 (= lt!627060 (list!7332 (_1!10439 lt!627042)))))

(declare-fun lt!627062 () Unit!31104)

(assert (=> b!1665689 (= lt!627062 (lemmaConcatAssociativity!1035 lt!627063 lt!627035 lt!627060))))

(assert (=> b!1665689 (= (++!4998 (++!4998 lt!627063 lt!627035) lt!627060) (++!4998 lt!627063 (++!4998 lt!627035 lt!627060)))))

(declare-fun lt!627047 () Unit!31104)

(assert (=> b!1665689 (= lt!627047 lt!627062)))

(declare-fun lt!627056 () List!18429)

(assert (=> b!1665689 (= lt!627056 (++!4996 (list!7335 lt!626465) (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!627051))))))))

(declare-fun lt!627030 () List!18429)

(assert (=> b!1665689 (= lt!627030 (list!7335 (_2!10445 (v!24758 lt!627051))))))

(declare-fun lt!627049 () List!18431)

(assert (=> b!1665689 (= lt!627049 (list!7332 (append!562 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472))) (_1!10445 (v!24758 lt!627051)))))))

(declare-fun lt!627040 () Unit!31104)

(assert (=> b!1665689 (= lt!627040 (lemmaLexThenLexPrefix!267 thiss!17113 rules!1846 lt!627056 lt!627030 lt!627049 (list!7332 (_1!10439 lt!627042)) (list!7335 (_2!10439 lt!627042))))))

(assert (=> b!1665689 (= (lexList!889 thiss!17113 rules!1846 lt!627056) (tuple2!18079 lt!627049 Nil!18359))))

(declare-fun lt!627045 () Unit!31104)

(assert (=> b!1665689 (= lt!627045 lt!627040)))

(assert (=> b!1665689 (= lt!627036 (++!4997 lt!626465 (charsOf!1884 (_1!10445 (v!24758 lt!627051)))))))

(assert (=> b!1665689 (= lt!627033 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 lt!627036))))

(declare-fun c!271136 () Bool)

(assert (=> b!1665689 (= c!271136 ((_ is Some!3523) lt!627033))))

(assert (=> b!1665689 (= (lexRec!379 thiss!17113 rules!1846 (++!4997 lt!626465 (charsOf!1884 (_1!10445 (v!24758 lt!627051))))) e!1067673)))

(declare-fun lt!627048 () Unit!31104)

(declare-fun Unit!31128 () Unit!31104)

(assert (=> b!1665689 (= lt!627048 Unit!31128)))

(assert (=> b!1665689 (= lt!627044 (++!4997 lt!626465 (charsOf!1884 (_1!10445 (v!24758 lt!627051)))))))

(declare-fun lt!627041 () List!18429)

(assert (=> b!1665689 (= lt!627041 (list!7335 lt!627044))))

(declare-fun lt!627050 () List!18429)

(assert (=> b!1665689 (= lt!627050 (list!7335 (_2!10445 (v!24758 lt!627051))))))

(declare-fun lt!627032 () Unit!31104)

(assert (=> b!1665689 (= lt!627032 (lemmaConcatTwoListThenFSndIsSuffix!326 lt!627041 lt!627050))))

(assert (=> b!1665689 (isSuffix!425 lt!627050 (++!4996 lt!627041 lt!627050))))

(declare-fun lt!627039 () Unit!31104)

(assert (=> b!1665689 (= lt!627039 lt!627032)))

(assert (= (and d!503470 c!271135) b!1665689))

(assert (= (and d!503470 (not c!271135)) b!1665686))

(assert (= (and b!1665689 c!271134) b!1665685))

(assert (= (and b!1665689 (not c!271134)) b!1665684))

(assert (= (and b!1665689 c!271136) b!1665688))

(assert (= (and b!1665689 (not c!271136)) b!1665683))

(assert (= (and d!503470 res!747330) b!1665687))

(declare-fun m!2029051 () Bool)

(assert (=> b!1665685 m!2029051))

(declare-fun m!2029053 () Bool)

(assert (=> b!1665685 m!2029053))

(declare-fun m!2029055 () Bool)

(assert (=> b!1665687 m!2029055))

(assert (=> b!1665687 m!2026127))

(assert (=> b!1665687 m!2026737))

(assert (=> b!1665687 m!2026739))

(declare-fun m!2029057 () Bool)

(assert (=> b!1665689 m!2029057))

(assert (=> b!1665689 m!2026787))

(declare-fun m!2029059 () Bool)

(assert (=> b!1665689 m!2029059))

(declare-fun m!2029061 () Bool)

(assert (=> b!1665689 m!2029061))

(assert (=> b!1665689 m!2029057))

(declare-fun m!2029063 () Bool)

(assert (=> b!1665689 m!2029063))

(assert (=> b!1665689 m!2026749))

(declare-fun m!2029065 () Bool)

(assert (=> b!1665689 m!2029065))

(assert (=> b!1665689 m!2026749))

(assert (=> b!1665689 m!2026785))

(declare-fun m!2029067 () Bool)

(assert (=> b!1665689 m!2029067))

(declare-fun m!2029069 () Bool)

(assert (=> b!1665689 m!2029069))

(declare-fun m!2029071 () Bool)

(assert (=> b!1665689 m!2029071))

(declare-fun m!2029073 () Bool)

(assert (=> b!1665689 m!2029073))

(assert (=> b!1665689 m!2029069))

(declare-fun m!2029075 () Bool)

(assert (=> b!1665689 m!2029075))

(assert (=> b!1665689 m!2026787))

(assert (=> b!1665689 m!2026127))

(assert (=> b!1665689 m!2029065))

(declare-fun m!2029077 () Bool)

(assert (=> b!1665689 m!2029077))

(declare-fun m!2029079 () Bool)

(assert (=> b!1665689 m!2029079))

(declare-fun m!2029081 () Bool)

(assert (=> b!1665689 m!2029081))

(declare-fun m!2029083 () Bool)

(assert (=> b!1665689 m!2029083))

(declare-fun m!2029085 () Bool)

(assert (=> b!1665689 m!2029085))

(assert (=> b!1665689 m!2029081))

(assert (=> b!1665689 m!2029083))

(declare-fun m!2029087 () Bool)

(assert (=> b!1665689 m!2029087))

(declare-fun m!2029089 () Bool)

(assert (=> b!1665689 m!2029089))

(declare-fun m!2029091 () Bool)

(assert (=> b!1665689 m!2029091))

(declare-fun m!2029093 () Bool)

(assert (=> b!1665689 m!2029093))

(assert (=> b!1665689 m!2029067))

(declare-fun m!2029095 () Bool)

(assert (=> b!1665689 m!2029095))

(assert (=> b!1665689 m!2029091))

(declare-fun m!2029097 () Bool)

(assert (=> b!1665689 m!2029097))

(assert (=> b!1665689 m!2026797))

(assert (=> b!1665689 m!2029071))

(assert (=> b!1665689 m!2029059))

(assert (=> b!1665689 m!2029065))

(declare-fun m!2029099 () Bool)

(assert (=> b!1665689 m!2029099))

(declare-fun m!2029101 () Bool)

(assert (=> b!1665689 m!2029101))

(assert (=> b!1665689 m!2029071))

(declare-fun m!2029103 () Bool)

(assert (=> b!1665689 m!2029103))

(declare-fun m!2029105 () Bool)

(assert (=> b!1665689 m!2029105))

(assert (=> b!1665689 m!2029105))

(declare-fun m!2029107 () Bool)

(assert (=> b!1665689 m!2029107))

(declare-fun m!2029109 () Bool)

(assert (=> b!1665689 m!2029109))

(declare-fun m!2029111 () Bool)

(assert (=> b!1665689 m!2029111))

(declare-fun m!2029113 () Bool)

(assert (=> b!1665689 m!2029113))

(assert (=> b!1665689 m!2029073))

(declare-fun m!2029115 () Bool)

(assert (=> b!1665689 m!2029115))

(declare-fun m!2029117 () Bool)

(assert (=> b!1665688 m!2029117))

(declare-fun m!2029119 () Bool)

(assert (=> b!1665688 m!2029119))

(declare-fun m!2029121 () Bool)

(assert (=> d!503470 m!2029121))

(assert (=> d!503470 m!2026127))

(assert (=> d!503470 m!2026737))

(declare-fun m!2029123 () Bool)

(assert (=> d!503470 m!2029123))

(assert (=> d!503470 m!2026783))

(assert (=> d!503470 m!2026811))

(assert (=> d!503470 m!2026787))

(declare-fun m!2029125 () Bool)

(assert (=> d!503470 m!2029125))

(assert (=> d!503470 m!2026127))

(declare-fun m!2029127 () Bool)

(assert (=> d!503470 m!2029127))

(assert (=> d!503470 m!2029125))

(declare-fun m!2029129 () Bool)

(assert (=> d!503470 m!2029129))

(assert (=> b!1664306 d!503470))

(declare-fun b!1665690 () Bool)

(declare-fun e!1067678 () tuple2!18074)

(declare-fun lt!627066 () tuple2!18074)

(declare-fun lt!627064 () Option!3524)

(assert (=> b!1665690 (= e!1067678 (tuple2!18075 (prepend!817 (_1!10439 lt!627066) (_1!10445 (v!24758 lt!627064))) (_2!10439 lt!627066)))))

(assert (=> b!1665690 (= lt!627066 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627064))))))

(declare-fun b!1665691 () Bool)

(declare-fun e!1067677 () Bool)

(declare-fun lt!627065 () tuple2!18074)

(assert (=> b!1665691 (= e!1067677 (= (list!7335 (_2!10439 lt!627065)) (list!7335 (_2!10445 (v!24758 lt!626472)))))))

(declare-fun b!1665692 () Bool)

(assert (=> b!1665692 (= e!1067678 (tuple2!18075 (BalanceConc!12183 Empty!6119) (_2!10445 (v!24758 lt!626472))))))

(declare-fun e!1067676 () Bool)

(declare-fun b!1665693 () Bool)

(assert (=> b!1665693 (= e!1067676 (= (list!7335 (_2!10439 lt!627065)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626472)))))))))

(declare-fun d!503472 () Bool)

(assert (=> d!503472 e!1067676))

(declare-fun res!747331 () Bool)

(assert (=> d!503472 (=> (not res!747331) (not e!1067676))))

(assert (=> d!503472 (= res!747331 e!1067677)))

(declare-fun c!271137 () Bool)

(assert (=> d!503472 (= c!271137 (> (size!14601 (_1!10439 lt!627065)) 0))))

(assert (=> d!503472 (= lt!627065 e!1067678)))

(declare-fun c!271138 () Bool)

(assert (=> d!503472 (= c!271138 ((_ is Some!3523) lt!627064))))

(assert (=> d!503472 (= lt!627064 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472))))))

(assert (=> d!503472 (= (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!626472))) lt!627065)))

(declare-fun b!1665694 () Bool)

(declare-fun res!747333 () Bool)

(assert (=> b!1665694 (=> (not res!747333) (not e!1067676))))

(assert (=> b!1665694 (= res!747333 (= (list!7332 (_1!10439 lt!627065)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (_2!10445 (v!24758 lt!626472)))))))))

(declare-fun b!1665695 () Bool)

(declare-fun e!1067675 () Bool)

(assert (=> b!1665695 (= e!1067677 e!1067675)))

(declare-fun res!747332 () Bool)

(assert (=> b!1665695 (= res!747332 (< (size!14600 (_2!10439 lt!627065)) (size!14600 (_2!10445 (v!24758 lt!626472)))))))

(assert (=> b!1665695 (=> (not res!747332) (not e!1067675))))

(declare-fun b!1665696 () Bool)

(assert (=> b!1665696 (= e!1067675 (not (isEmpty!11419 (_1!10439 lt!627065))))))

(assert (= (and d!503472 c!271138) b!1665690))

(assert (= (and d!503472 (not c!271138)) b!1665692))

(assert (= (and d!503472 c!271137) b!1665695))

(assert (= (and d!503472 (not c!271137)) b!1665691))

(assert (= (and b!1665695 res!747332) b!1665696))

(assert (= (and d!503472 res!747331) b!1665694))

(assert (= (and b!1665694 res!747333) b!1665693))

(declare-fun m!2029131 () Bool)

(assert (=> b!1665694 m!2029131))

(assert (=> b!1665694 m!2026783))

(assert (=> b!1665694 m!2026783))

(declare-fun m!2029133 () Bool)

(assert (=> b!1665694 m!2029133))

(declare-fun m!2029135 () Bool)

(assert (=> b!1665695 m!2029135))

(declare-fun m!2029137 () Bool)

(assert (=> b!1665695 m!2029137))

(declare-fun m!2029139 () Bool)

(assert (=> b!1665696 m!2029139))

(declare-fun m!2029141 () Bool)

(assert (=> b!1665693 m!2029141))

(assert (=> b!1665693 m!2026783))

(assert (=> b!1665693 m!2026783))

(assert (=> b!1665693 m!2029133))

(declare-fun m!2029143 () Bool)

(assert (=> b!1665690 m!2029143))

(declare-fun m!2029145 () Bool)

(assert (=> b!1665690 m!2029145))

(declare-fun m!2029147 () Bool)

(assert (=> d!503472 m!2029147))

(assert (=> d!503472 m!2029109))

(assert (=> b!1665691 m!2029141))

(assert (=> b!1665691 m!2026783))

(assert (=> b!1664306 d!503472))

(declare-fun d!503474 () Bool)

(assert (=> d!503474 (= (list!7335 (_2!10445 (v!24758 lt!626472))) (list!7339 (c!270827 (_2!10445 (v!24758 lt!626472)))))))

(declare-fun bs!397656 () Bool)

(assert (= bs!397656 d!503474))

(declare-fun m!2029149 () Bool)

(assert (=> bs!397656 m!2029149))

(assert (=> b!1664306 d!503474))

(declare-fun d!503476 () Bool)

(assert (=> d!503476 (= (list!7332 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472)))) (list!7336 (c!270829 (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472))))))))

(declare-fun bs!397657 () Bool)

(assert (= bs!397657 d!503476))

(declare-fun m!2029151 () Bool)

(assert (=> bs!397657 m!2029151))

(assert (=> b!1664306 d!503476))

(declare-fun d!503478 () Bool)

(declare-fun e!1067681 () Bool)

(assert (=> d!503478 e!1067681))

(declare-fun res!747336 () Bool)

(assert (=> d!503478 (=> (not res!747336) (not e!1067681))))

(declare-fun append!564 (Conc!6119 Token!6036) Conc!6119)

(assert (=> d!503478 (= res!747336 (isBalanced!1896 (append!564 (c!270829 (BalanceConc!12183 Empty!6119)) (_1!10445 (v!24758 lt!626472)))))))

(declare-fun lt!627069 () BalanceConc!12182)

(assert (=> d!503478 (= lt!627069 (BalanceConc!12183 (append!564 (c!270829 (BalanceConc!12183 Empty!6119)) (_1!10445 (v!24758 lt!626472)))))))

(assert (=> d!503478 (= (append!562 (BalanceConc!12183 Empty!6119) (_1!10445 (v!24758 lt!626472))) lt!627069)))

(declare-fun b!1665699 () Bool)

(declare-fun $colon+!121 (List!18431 Token!6036) List!18431)

(assert (=> b!1665699 (= e!1067681 (= (list!7332 lt!627069) ($colon+!121 (list!7332 (BalanceConc!12183 Empty!6119)) (_1!10445 (v!24758 lt!626472)))))))

(assert (= (and d!503478 res!747336) b!1665699))

(declare-fun m!2029153 () Bool)

(assert (=> d!503478 m!2029153))

(assert (=> d!503478 m!2029153))

(declare-fun m!2029155 () Bool)

(assert (=> d!503478 m!2029155))

(declare-fun m!2029157 () Bool)

(assert (=> b!1665699 m!2029157))

(assert (=> b!1665699 m!2026751))

(assert (=> b!1665699 m!2026751))

(declare-fun m!2029159 () Bool)

(assert (=> b!1665699 m!2029159))

(assert (=> b!1664306 d!503478))

(declare-fun lt!627070 () List!18429)

(declare-fun e!1067682 () Bool)

(declare-fun b!1665703 () Bool)

(assert (=> b!1665703 (= e!1067682 (or (not (= lt!626476 Nil!18359)) (= lt!627070 lt!626458)))))

(declare-fun b!1665701 () Bool)

(declare-fun e!1067683 () List!18429)

(assert (=> b!1665701 (= e!1067683 (Cons!18359 (h!23760 lt!626458) (++!4996 (t!151920 lt!626458) lt!626476)))))

(declare-fun b!1665700 () Bool)

(assert (=> b!1665700 (= e!1067683 lt!626476)))

(declare-fun d!503480 () Bool)

(assert (=> d!503480 e!1067682))

(declare-fun res!747337 () Bool)

(assert (=> d!503480 (=> (not res!747337) (not e!1067682))))

(assert (=> d!503480 (= res!747337 (= (content!2562 lt!627070) ((_ map or) (content!2562 lt!626458) (content!2562 lt!626476))))))

(assert (=> d!503480 (= lt!627070 e!1067683)))

(declare-fun c!271140 () Bool)

(assert (=> d!503480 (= c!271140 ((_ is Nil!18359) lt!626458))))

(assert (=> d!503480 (= (++!4996 lt!626458 lt!626476) lt!627070)))

(declare-fun b!1665702 () Bool)

(declare-fun res!747338 () Bool)

(assert (=> b!1665702 (=> (not res!747338) (not e!1067682))))

(assert (=> b!1665702 (= res!747338 (= (size!14602 lt!627070) (+ (size!14602 lt!626458) (size!14602 lt!626476))))))

(assert (= (and d!503480 c!271140) b!1665700))

(assert (= (and d!503480 (not c!271140)) b!1665701))

(assert (= (and d!503480 res!747337) b!1665702))

(assert (= (and b!1665702 res!747338) b!1665703))

(declare-fun m!2029161 () Bool)

(assert (=> b!1665701 m!2029161))

(declare-fun m!2029163 () Bool)

(assert (=> d!503480 m!2029163))

(declare-fun m!2029165 () Bool)

(assert (=> d!503480 m!2029165))

(declare-fun m!2029167 () Bool)

(assert (=> d!503480 m!2029167))

(declare-fun m!2029169 () Bool)

(assert (=> b!1665702 m!2029169))

(declare-fun m!2029171 () Bool)

(assert (=> b!1665702 m!2029171))

(declare-fun m!2029173 () Bool)

(assert (=> b!1665702 m!2029173))

(assert (=> b!1664306 d!503480))

(declare-fun d!503482 () Bool)

(assert (=> d!503482 (= (list!7332 (BalanceConc!12183 Empty!6119)) (list!7336 (c!270829 (BalanceConc!12183 Empty!6119))))))

(declare-fun bs!397658 () Bool)

(assert (= bs!397658 d!503482))

(declare-fun m!2029175 () Bool)

(assert (=> bs!397658 m!2029175))

(assert (=> b!1664306 d!503482))

(declare-fun b!1665720 () Bool)

(declare-fun e!1067701 () Bool)

(declare-fun e!1067696 () Bool)

(assert (=> b!1665720 (= e!1067701 e!1067696)))

(declare-fun res!747354 () Bool)

(assert (=> b!1665720 (=> res!747354 e!1067696)))

(declare-fun lt!627089 () Option!3524)

(declare-fun isDefined!2879 (Option!3524) Bool)

(assert (=> b!1665720 (= res!747354 (not (isDefined!2879 lt!627089)))))

(declare-fun b!1665721 () Bool)

(declare-fun e!1067700 () Option!3524)

(declare-fun lt!627088 () Option!3524)

(declare-fun lt!627091 () Option!3524)

(assert (=> b!1665721 (= e!1067700 (ite (and ((_ is None!3523) lt!627088) ((_ is None!3523) lt!627091)) None!3523 (ite ((_ is None!3523) lt!627091) lt!627088 (ite ((_ is None!3523) lt!627088) lt!627091 (ite (>= (size!14596 (_1!10445 (v!24758 lt!627088))) (size!14596 (_1!10445 (v!24758 lt!627091)))) lt!627088 lt!627091)))))))

(declare-fun call!106528 () Option!3524)

(assert (=> b!1665721 (= lt!627088 call!106528)))

(assert (=> b!1665721 (= lt!627091 (maxPrefixZipperSequence!741 thiss!17113 (t!151923 rules!1846) lt!626457))))

(declare-fun b!1665722 () Bool)

(declare-fun e!1067699 () Bool)

(declare-fun e!1067698 () Bool)

(assert (=> b!1665722 (= e!1067699 e!1067698)))

(declare-fun res!747355 () Bool)

(assert (=> b!1665722 (=> (not res!747355) (not e!1067698))))

(declare-fun get!5377 (Option!3524) tuple2!18086)

(declare-fun maxPrefixZipper!362 (LexerInterface!2864 List!18432 List!18429) Option!3523)

(assert (=> b!1665722 (= res!747355 (= (_1!10445 (get!5377 lt!627089)) (_1!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 lt!626457))))))))

(declare-fun b!1665723 () Bool)

(declare-fun e!1067697 () Bool)

(assert (=> b!1665723 (= e!1067696 e!1067697)))

(declare-fun res!747351 () Bool)

(assert (=> b!1665723 (=> (not res!747351) (not e!1067697))))

(assert (=> b!1665723 (= res!747351 (= (_1!10445 (get!5377 lt!627089)) (_1!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 lt!626457))))))))

(declare-fun b!1665724 () Bool)

(assert (=> b!1665724 (= e!1067698 (= (list!7335 (_2!10445 (get!5377 lt!627089))) (_2!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 lt!626457))))))))

(declare-fun b!1665725 () Bool)

(assert (=> b!1665725 (= e!1067697 (= (list!7335 (_2!10445 (get!5377 lt!627089))) (_2!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 lt!626457))))))))

(declare-fun b!1665726 () Bool)

(declare-fun res!747352 () Bool)

(assert (=> b!1665726 (=> (not res!747352) (not e!1067701))))

(assert (=> b!1665726 (= res!747352 e!1067699)))

(declare-fun res!747353 () Bool)

(assert (=> b!1665726 (=> res!747353 e!1067699)))

(assert (=> b!1665726 (= res!747353 (not (isDefined!2879 lt!627089)))))

(declare-fun bm!106523 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!354 (LexerInterface!2864 Rule!6270 BalanceConc!12180) Option!3524)

(assert (=> bm!106523 (= call!106528 (maxPrefixOneRuleZipperSequence!354 thiss!17113 (h!23763 rules!1846) lt!626457))))

(declare-fun d!503484 () Bool)

(assert (=> d!503484 e!1067701))

(declare-fun res!747356 () Bool)

(assert (=> d!503484 (=> (not res!747356) (not e!1067701))))

(assert (=> d!503484 (= res!747356 (= (isDefined!2879 lt!627089) (isDefined!2878 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 lt!626457)))))))

(assert (=> d!503484 (= lt!627089 e!1067700)))

(declare-fun c!271143 () Bool)

(assert (=> d!503484 (= c!271143 (and ((_ is Cons!18362) rules!1846) ((_ is Nil!18362) (t!151923 rules!1846))))))

(declare-fun lt!627090 () Unit!31104)

(declare-fun lt!627087 () Unit!31104)

(assert (=> d!503484 (= lt!627090 lt!627087)))

(declare-fun lt!627086 () List!18429)

(declare-fun lt!627085 () List!18429)

(assert (=> d!503484 (isPrefix!1493 lt!627086 lt!627085)))

(assert (=> d!503484 (= lt!627087 (lemmaIsPrefixRefl!1014 lt!627086 lt!627085))))

(assert (=> d!503484 (= lt!627085 (list!7335 lt!626457))))

(assert (=> d!503484 (= lt!627086 (list!7335 lt!626457))))

(assert (=> d!503484 (rulesValidInductive!1036 thiss!17113 rules!1846)))

(assert (=> d!503484 (= (maxPrefixZipperSequence!741 thiss!17113 rules!1846 lt!626457) lt!627089)))

(declare-fun b!1665727 () Bool)

(assert (=> b!1665727 (= e!1067700 call!106528)))

(assert (= (and d!503484 c!271143) b!1665727))

(assert (= (and d!503484 (not c!271143)) b!1665721))

(assert (= (or b!1665727 b!1665721) bm!106523))

(assert (= (and d!503484 res!747356) b!1665726))

(assert (= (and b!1665726 (not res!747353)) b!1665722))

(assert (= (and b!1665722 res!747355) b!1665724))

(assert (= (and b!1665726 res!747352) b!1665720))

(assert (= (and b!1665720 (not res!747354)) b!1665723))

(assert (= (and b!1665723 res!747351) b!1665725))

(declare-fun m!2029177 () Bool)

(assert (=> b!1665721 m!2029177))

(declare-fun m!2029179 () Bool)

(assert (=> b!1665723 m!2029179))

(declare-fun m!2029181 () Bool)

(assert (=> b!1665723 m!2029181))

(assert (=> b!1665723 m!2029181))

(declare-fun m!2029183 () Bool)

(assert (=> b!1665723 m!2029183))

(assert (=> b!1665723 m!2029183))

(declare-fun m!2029185 () Bool)

(assert (=> b!1665723 m!2029185))

(declare-fun m!2029187 () Bool)

(assert (=> bm!106523 m!2029187))

(declare-fun m!2029189 () Bool)

(assert (=> d!503484 m!2029189))

(declare-fun m!2029191 () Bool)

(assert (=> d!503484 m!2029191))

(assert (=> d!503484 m!2029181))

(assert (=> d!503484 m!2029181))

(assert (=> d!503484 m!2029189))

(declare-fun m!2029193 () Bool)

(assert (=> d!503484 m!2029193))

(assert (=> d!503484 m!2027003))

(declare-fun m!2029195 () Bool)

(assert (=> d!503484 m!2029195))

(declare-fun m!2029197 () Bool)

(assert (=> d!503484 m!2029197))

(assert (=> b!1665725 m!2029181))

(assert (=> b!1665725 m!2029181))

(assert (=> b!1665725 m!2029183))

(assert (=> b!1665725 m!2029179))

(assert (=> b!1665725 m!2029183))

(assert (=> b!1665725 m!2029185))

(declare-fun m!2029199 () Bool)

(assert (=> b!1665725 m!2029199))

(assert (=> b!1665720 m!2029197))

(assert (=> b!1665724 m!2029181))

(assert (=> b!1665724 m!2029189))

(declare-fun m!2029201 () Bool)

(assert (=> b!1665724 m!2029201))

(assert (=> b!1665724 m!2029181))

(assert (=> b!1665724 m!2029189))

(assert (=> b!1665724 m!2029179))

(assert (=> b!1665724 m!2029199))

(assert (=> b!1665722 m!2029179))

(assert (=> b!1665722 m!2029181))

(assert (=> b!1665722 m!2029181))

(assert (=> b!1665722 m!2029189))

(assert (=> b!1665722 m!2029189))

(assert (=> b!1665722 m!2029201))

(assert (=> b!1665726 m!2029197))

(assert (=> b!1664306 d!503484))

(declare-fun d!503486 () Bool)

(declare-fun e!1067703 () Bool)

(assert (=> d!503486 e!1067703))

(declare-fun c!271144 () Bool)

(declare-fun lt!627094 () tuple2!18078)

(assert (=> d!503486 (= c!271144 (> (size!14607 (_1!10441 lt!627094)) 0))))

(declare-fun e!1067702 () tuple2!18078)

(assert (=> d!503486 (= lt!627094 e!1067702)))

(declare-fun c!271145 () Bool)

(declare-fun lt!627092 () Option!3523)

(assert (=> d!503486 (= c!271145 ((_ is Some!3522) lt!627092))))

(assert (=> d!503486 (= lt!627092 (maxPrefix!1426 thiss!17113 rules!1846 lt!626477))))

(assert (=> d!503486 (= (lexList!889 thiss!17113 rules!1846 lt!626477) lt!627094)))

(declare-fun b!1665728 () Bool)

(declare-fun e!1067704 () Bool)

(assert (=> b!1665728 (= e!1067704 (not (isEmpty!11422 (_1!10441 lt!627094))))))

(declare-fun b!1665729 () Bool)

(assert (=> b!1665729 (= e!1067702 (tuple2!18079 Nil!18361 lt!626477))))

(declare-fun b!1665730 () Bool)

(assert (=> b!1665730 (= e!1067703 e!1067704)))

(declare-fun res!747357 () Bool)

(assert (=> b!1665730 (= res!747357 (< (size!14602 (_2!10441 lt!627094)) (size!14602 lt!626477)))))

(assert (=> b!1665730 (=> (not res!747357) (not e!1067704))))

(declare-fun b!1665731 () Bool)

(assert (=> b!1665731 (= e!1067703 (= (_2!10441 lt!627094) lt!626477))))

(declare-fun b!1665732 () Bool)

(declare-fun lt!627093 () tuple2!18078)

(assert (=> b!1665732 (= e!1067702 (tuple2!18079 (Cons!18361 (_1!10444 (v!24757 lt!627092)) (_1!10441 lt!627093)) (_2!10441 lt!627093)))))

(assert (=> b!1665732 (= lt!627093 (lexList!889 thiss!17113 rules!1846 (_2!10444 (v!24757 lt!627092))))))

(assert (= (and d!503486 c!271145) b!1665732))

(assert (= (and d!503486 (not c!271145)) b!1665729))

(assert (= (and d!503486 c!271144) b!1665730))

(assert (= (and d!503486 (not c!271144)) b!1665731))

(assert (= (and b!1665730 res!747357) b!1665728))

(declare-fun m!2029203 () Bool)

(assert (=> d!503486 m!2029203))

(declare-fun m!2029205 () Bool)

(assert (=> d!503486 m!2029205))

(declare-fun m!2029207 () Bool)

(assert (=> b!1665728 m!2029207))

(declare-fun m!2029209 () Bool)

(assert (=> b!1665730 m!2029209))

(declare-fun m!2029211 () Bool)

(assert (=> b!1665730 m!2029211))

(declare-fun m!2029213 () Bool)

(assert (=> b!1665732 m!2029213))

(assert (=> b!1664306 d!503486))

(declare-fun d!503488 () Bool)

(assert (=> d!503488 (= (list!7335 lt!626465) (list!7339 (c!270827 lt!626465)))))

(declare-fun bs!397659 () Bool)

(assert (= bs!397659 d!503488))

(declare-fun m!2029215 () Bool)

(assert (=> bs!397659 m!2029215))

(assert (=> b!1664306 d!503488))

(declare-fun b!1665733 () Bool)

(declare-fun e!1067705 () List!18431)

(assert (=> b!1665733 (= e!1067705 lt!626481)))

(declare-fun lt!627095 () List!18431)

(declare-fun b!1665736 () Bool)

(declare-fun e!1067706 () Bool)

(assert (=> b!1665736 (= e!1067706 (or (not (= lt!626481 Nil!18361)) (= lt!627095 lt!626456)))))

(declare-fun b!1665734 () Bool)

(assert (=> b!1665734 (= e!1067705 (Cons!18361 (h!23762 lt!626456) (++!4998 (t!151922 lt!626456) lt!626481)))))

(declare-fun d!503490 () Bool)

(assert (=> d!503490 e!1067706))

(declare-fun res!747358 () Bool)

(assert (=> d!503490 (=> (not res!747358) (not e!1067706))))

(assert (=> d!503490 (= res!747358 (= (content!2560 lt!627095) ((_ map or) (content!2560 lt!626456) (content!2560 lt!626481))))))

(assert (=> d!503490 (= lt!627095 e!1067705)))

(declare-fun c!271146 () Bool)

(assert (=> d!503490 (= c!271146 ((_ is Nil!18361) lt!626456))))

(assert (=> d!503490 (= (++!4998 lt!626456 lt!626481) lt!627095)))

(declare-fun b!1665735 () Bool)

(declare-fun res!747359 () Bool)

(assert (=> b!1665735 (=> (not res!747359) (not e!1067706))))

(assert (=> b!1665735 (= res!747359 (= (size!14607 lt!627095) (+ (size!14607 lt!626456) (size!14607 lt!626481))))))

(assert (= (and d!503490 c!271146) b!1665733))

(assert (= (and d!503490 (not c!271146)) b!1665734))

(assert (= (and d!503490 res!747358) b!1665735))

(assert (= (and b!1665735 res!747359) b!1665736))

(declare-fun m!2029217 () Bool)

(assert (=> b!1665734 m!2029217))

(declare-fun m!2029219 () Bool)

(assert (=> d!503490 m!2029219))

(declare-fun m!2029221 () Bool)

(assert (=> d!503490 m!2029221))

(declare-fun m!2029223 () Bool)

(assert (=> d!503490 m!2029223))

(declare-fun m!2029225 () Bool)

(assert (=> b!1665735 m!2029225))

(declare-fun m!2029227 () Bool)

(assert (=> b!1665735 m!2029227))

(declare-fun m!2029229 () Bool)

(assert (=> b!1665735 m!2029229))

(assert (=> b!1664306 d!503490))

(declare-fun d!503492 () Bool)

(declare-fun e!1067709 () Bool)

(assert (=> d!503492 e!1067709))

(declare-fun res!747362 () Bool)

(assert (=> d!503492 (=> res!747362 e!1067709)))

(declare-fun lt!627098 () Bool)

(assert (=> d!503492 (= res!747362 (not lt!627098))))

(declare-fun drop!936 (List!18429 Int) List!18429)

(assert (=> d!503492 (= lt!627098 (= lt!626471 (drop!936 (++!4996 lt!626462 lt!626471) (- (size!14602 (++!4996 lt!626462 lt!626471)) (size!14602 lt!626471)))))))

(assert (=> d!503492 (= (isSuffix!425 lt!626471 (++!4996 lt!626462 lt!626471)) lt!627098)))

(declare-fun b!1665739 () Bool)

(assert (=> b!1665739 (= e!1067709 (>= (size!14602 (++!4996 lt!626462 lt!626471)) (size!14602 lt!626471)))))

(assert (= (and d!503492 (not res!747362)) b!1665739))

(assert (=> d!503492 m!2026741))

(declare-fun m!2029231 () Bool)

(assert (=> d!503492 m!2029231))

(declare-fun m!2029233 () Bool)

(assert (=> d!503492 m!2029233))

(assert (=> d!503492 m!2026741))

(declare-fun m!2029235 () Bool)

(assert (=> d!503492 m!2029235))

(assert (=> b!1665739 m!2026741))

(assert (=> b!1665739 m!2029231))

(assert (=> b!1665739 m!2029233))

(assert (=> b!1664306 d!503492))

(declare-fun lt!627099 () List!18429)

(declare-fun e!1067710 () Bool)

(declare-fun b!1665743 () Bool)

(assert (=> b!1665743 (= e!1067710 (or (not (= lt!626464 Nil!18359)) (= lt!627099 lt!626476)))))

(declare-fun b!1665741 () Bool)

(declare-fun e!1067711 () List!18429)

(assert (=> b!1665741 (= e!1067711 (Cons!18359 (h!23760 lt!626476) (++!4996 (t!151920 lt!626476) lt!626464)))))

(declare-fun b!1665740 () Bool)

(assert (=> b!1665740 (= e!1067711 lt!626464)))

(declare-fun d!503494 () Bool)

(assert (=> d!503494 e!1067710))

(declare-fun res!747363 () Bool)

(assert (=> d!503494 (=> (not res!747363) (not e!1067710))))

(assert (=> d!503494 (= res!747363 (= (content!2562 lt!627099) ((_ map or) (content!2562 lt!626476) (content!2562 lt!626464))))))

(assert (=> d!503494 (= lt!627099 e!1067711)))

(declare-fun c!271147 () Bool)

(assert (=> d!503494 (= c!271147 ((_ is Nil!18359) lt!626476))))

(assert (=> d!503494 (= (++!4996 lt!626476 lt!626464) lt!627099)))

(declare-fun b!1665742 () Bool)

(declare-fun res!747364 () Bool)

(assert (=> b!1665742 (=> (not res!747364) (not e!1067710))))

(assert (=> b!1665742 (= res!747364 (= (size!14602 lt!627099) (+ (size!14602 lt!626476) (size!14602 lt!626464))))))

(assert (= (and d!503494 c!271147) b!1665740))

(assert (= (and d!503494 (not c!271147)) b!1665741))

(assert (= (and d!503494 res!747363) b!1665742))

(assert (= (and b!1665742 res!747364) b!1665743))

(declare-fun m!2029237 () Bool)

(assert (=> b!1665741 m!2029237))

(declare-fun m!2029239 () Bool)

(assert (=> d!503494 m!2029239))

(assert (=> d!503494 m!2029167))

(assert (=> d!503494 m!2029041))

(declare-fun m!2029241 () Bool)

(assert (=> b!1665742 m!2029241))

(assert (=> b!1665742 m!2029173))

(assert (=> b!1665742 m!2029047))

(assert (=> b!1664306 d!503494))

(declare-fun b!1665744 () Bool)

(declare-fun e!1067712 () List!18431)

(assert (=> b!1665744 (= e!1067712 lt!626456)))

(declare-fun lt!627100 () List!18431)

(declare-fun e!1067713 () Bool)

(declare-fun b!1665747 () Bool)

(assert (=> b!1665747 (= e!1067713 (or (not (= lt!626456 Nil!18361)) (= lt!627100 lt!626484)))))

(declare-fun b!1665745 () Bool)

(assert (=> b!1665745 (= e!1067712 (Cons!18361 (h!23762 lt!626484) (++!4998 (t!151922 lt!626484) lt!626456)))))

(declare-fun d!503496 () Bool)

(assert (=> d!503496 e!1067713))

(declare-fun res!747365 () Bool)

(assert (=> d!503496 (=> (not res!747365) (not e!1067713))))

(assert (=> d!503496 (= res!747365 (= (content!2560 lt!627100) ((_ map or) (content!2560 lt!626484) (content!2560 lt!626456))))))

(assert (=> d!503496 (= lt!627100 e!1067712)))

(declare-fun c!271148 () Bool)

(assert (=> d!503496 (= c!271148 ((_ is Nil!18361) lt!626484))))

(assert (=> d!503496 (= (++!4998 lt!626484 lt!626456) lt!627100)))

(declare-fun b!1665746 () Bool)

(declare-fun res!747366 () Bool)

(assert (=> b!1665746 (=> (not res!747366) (not e!1067713))))

(assert (=> b!1665746 (= res!747366 (= (size!14607 lt!627100) (+ (size!14607 lt!626484) (size!14607 lt!626456))))))

(assert (= (and d!503496 c!271148) b!1665744))

(assert (= (and d!503496 (not c!271148)) b!1665745))

(assert (= (and d!503496 res!747365) b!1665746))

(assert (= (and b!1665746 res!747366) b!1665747))

(declare-fun m!2029243 () Bool)

(assert (=> b!1665745 m!2029243))

(declare-fun m!2029245 () Bool)

(assert (=> d!503496 m!2029245))

(declare-fun m!2029247 () Bool)

(assert (=> d!503496 m!2029247))

(assert (=> d!503496 m!2029221))

(declare-fun m!2029249 () Bool)

(assert (=> b!1665746 m!2029249))

(declare-fun m!2029251 () Bool)

(assert (=> b!1665746 m!2029251))

(assert (=> b!1665746 m!2029227))

(assert (=> b!1664306 d!503496))

(declare-fun d!503498 () Bool)

(assert (=> d!503498 (= (++!4998 (++!4998 lt!626484 lt!626456) lt!626481) (++!4998 lt!626484 (++!4998 lt!626456 lt!626481)))))

(declare-fun lt!627103 () Unit!31104)

(declare-fun choose!10027 (List!18431 List!18431 List!18431) Unit!31104)

(assert (=> d!503498 (= lt!627103 (choose!10027 lt!626484 lt!626456 lt!626481))))

(assert (=> d!503498 (= (lemmaConcatAssociativity!1035 lt!626484 lt!626456 lt!626481) lt!627103)))

(declare-fun bs!397660 () Bool)

(assert (= bs!397660 d!503498))

(assert (=> bs!397660 m!2026777))

(assert (=> bs!397660 m!2026779))

(assert (=> bs!397660 m!2026753))

(assert (=> bs!397660 m!2026781))

(declare-fun m!2029253 () Bool)

(assert (=> bs!397660 m!2029253))

(assert (=> bs!397660 m!2026777))

(assert (=> bs!397660 m!2026753))

(assert (=> b!1664306 d!503498))

(declare-fun b!1665751 () Bool)

(declare-fun e!1067714 () Bool)

(declare-fun lt!627104 () BalanceConc!12180)

(assert (=> b!1665751 (= e!1067714 (= (list!7335 lt!627104) (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(declare-fun d!503500 () Bool)

(assert (=> d!503500 e!1067714))

(declare-fun res!747368 () Bool)

(assert (=> d!503500 (=> (not res!747368) (not e!1067714))))

(assert (=> d!503500 (= res!747368 (appendAssocInst!480 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))

(assert (=> d!503500 (= lt!627104 (BalanceConc!12181 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(assert (=> d!503500 (= (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))) lt!627104)))

(declare-fun b!1665748 () Bool)

(declare-fun res!747370 () Bool)

(assert (=> b!1665748 (=> (not res!747370) (not e!1067714))))

(assert (=> b!1665748 (= res!747370 (isBalanced!1898 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(declare-fun b!1665750 () Bool)

(declare-fun res!747369 () Bool)

(assert (=> b!1665750 (=> (not res!747369) (not e!1067714))))

(assert (=> b!1665750 (= res!747369 (>= (height!963 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))) (max!0 (height!963 (c!270827 (BalanceConc!12181 Empty!6118))) (height!963 (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))))

(declare-fun b!1665749 () Bool)

(declare-fun res!747367 () Bool)

(assert (=> b!1665749 (=> (not res!747367) (not e!1067714))))

(assert (=> b!1665749 (= res!747367 (<= (height!963 (++!4999 (c!270827 (BalanceConc!12181 Empty!6118)) (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))) (+ (max!0 (height!963 (c!270827 (BalanceConc!12181 Empty!6118))) (height!963 (c!270827 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))) 1)))))

(assert (= (and d!503500 res!747368) b!1665748))

(assert (= (and b!1665748 res!747370) b!1665749))

(assert (= (and b!1665749 res!747367) b!1665750))

(assert (= (and b!1665750 res!747369) b!1665751))

(declare-fun m!2029255 () Bool)

(assert (=> b!1665751 m!2029255))

(assert (=> b!1665751 m!2026563))

(assert (=> b!1665751 m!2026757))

(assert (=> b!1665751 m!2026743))

(assert (=> b!1665751 m!2026563))

(assert (=> b!1665751 m!2026743))

(assert (=> b!1665751 m!2026745))

(declare-fun m!2029257 () Bool)

(assert (=> b!1665748 m!2029257))

(assert (=> b!1665748 m!2029257))

(declare-fun m!2029259 () Bool)

(assert (=> b!1665748 m!2029259))

(declare-fun m!2029261 () Bool)

(assert (=> d!503500 m!2029261))

(assert (=> d!503500 m!2029257))

(assert (=> b!1665750 m!2029257))

(assert (=> b!1665750 m!2027645))

(declare-fun m!2029263 () Bool)

(assert (=> b!1665750 m!2029263))

(declare-fun m!2029265 () Bool)

(assert (=> b!1665750 m!2029265))

(assert (=> b!1665750 m!2029257))

(declare-fun m!2029267 () Bool)

(assert (=> b!1665750 m!2029267))

(assert (=> b!1665750 m!2027645))

(assert (=> b!1665750 m!2029263))

(assert (=> b!1665749 m!2029257))

(assert (=> b!1665749 m!2027645))

(assert (=> b!1665749 m!2029263))

(assert (=> b!1665749 m!2029265))

(assert (=> b!1665749 m!2029257))

(assert (=> b!1665749 m!2029267))

(assert (=> b!1665749 m!2027645))

(assert (=> b!1665749 m!2029263))

(assert (=> b!1664306 d!503500))

(declare-fun b!1665752 () Bool)

(declare-fun e!1067715 () List!18431)

(assert (=> b!1665752 (= e!1067715 lt!626481)))

(declare-fun lt!627105 () List!18431)

(declare-fun e!1067716 () Bool)

(declare-fun b!1665755 () Bool)

(assert (=> b!1665755 (= e!1067716 (or (not (= lt!626481 Nil!18361)) (= lt!627105 (++!4998 lt!626484 lt!626456))))))

(declare-fun b!1665753 () Bool)

(assert (=> b!1665753 (= e!1067715 (Cons!18361 (h!23762 (++!4998 lt!626484 lt!626456)) (++!4998 (t!151922 (++!4998 lt!626484 lt!626456)) lt!626481)))))

(declare-fun d!503502 () Bool)

(assert (=> d!503502 e!1067716))

(declare-fun res!747371 () Bool)

(assert (=> d!503502 (=> (not res!747371) (not e!1067716))))

(assert (=> d!503502 (= res!747371 (= (content!2560 lt!627105) ((_ map or) (content!2560 (++!4998 lt!626484 lt!626456)) (content!2560 lt!626481))))))

(assert (=> d!503502 (= lt!627105 e!1067715)))

(declare-fun c!271149 () Bool)

(assert (=> d!503502 (= c!271149 ((_ is Nil!18361) (++!4998 lt!626484 lt!626456)))))

(assert (=> d!503502 (= (++!4998 (++!4998 lt!626484 lt!626456) lt!626481) lt!627105)))

(declare-fun b!1665754 () Bool)

(declare-fun res!747372 () Bool)

(assert (=> b!1665754 (=> (not res!747372) (not e!1067716))))

(assert (=> b!1665754 (= res!747372 (= (size!14607 lt!627105) (+ (size!14607 (++!4998 lt!626484 lt!626456)) (size!14607 lt!626481))))))

(assert (= (and d!503502 c!271149) b!1665752))

(assert (= (and d!503502 (not c!271149)) b!1665753))

(assert (= (and d!503502 res!747371) b!1665754))

(assert (= (and b!1665754 res!747372) b!1665755))

(declare-fun m!2029269 () Bool)

(assert (=> b!1665753 m!2029269))

(declare-fun m!2029271 () Bool)

(assert (=> d!503502 m!2029271))

(assert (=> d!503502 m!2026777))

(declare-fun m!2029273 () Bool)

(assert (=> d!503502 m!2029273))

(assert (=> d!503502 m!2029223))

(declare-fun m!2029275 () Bool)

(assert (=> b!1665754 m!2029275))

(assert (=> b!1665754 m!2026777))

(declare-fun m!2029277 () Bool)

(assert (=> b!1665754 m!2029277))

(assert (=> b!1665754 m!2029229))

(assert (=> b!1664306 d!503502))

(declare-fun d!503504 () Bool)

(assert (=> d!503504 (= (lexList!889 thiss!17113 rules!1846 lt!626477) (tuple2!18079 lt!626470 Nil!18359))))

(declare-fun lt!627108 () Unit!31104)

(declare-fun choose!10028 (LexerInterface!2864 List!18432 List!18429 List!18429 List!18431 List!18431 List!18429) Unit!31104)

(assert (=> d!503504 (= lt!627108 (choose!10028 thiss!17113 rules!1846 lt!626477 lt!626451 lt!626470 (list!7332 (_1!10439 lt!626463)) (list!7335 (_2!10439 lt!626463))))))

(assert (=> d!503504 (not (isEmpty!11413 rules!1846))))

(assert (=> d!503504 (= (lemmaLexThenLexPrefix!267 thiss!17113 rules!1846 lt!626477 lt!626451 lt!626470 (list!7332 (_1!10439 lt!626463)) (list!7335 (_2!10439 lt!626463))) lt!627108)))

(declare-fun bs!397661 () Bool)

(assert (= bs!397661 d!503504))

(assert (=> bs!397661 m!2026765))

(assert (=> bs!397661 m!2026767))

(assert (=> bs!397661 m!2026769))

(declare-fun m!2029279 () Bool)

(assert (=> bs!397661 m!2029279))

(assert (=> bs!397661 m!2026117))

(assert (=> b!1664306 d!503504))

(declare-fun lt!627109 () List!18429)

(declare-fun e!1067717 () Bool)

(declare-fun b!1665759 () Bool)

(assert (=> b!1665759 (= e!1067717 (or (not (= lt!626471 Nil!18359)) (= lt!627109 lt!626462)))))

(declare-fun b!1665757 () Bool)

(declare-fun e!1067718 () List!18429)

(assert (=> b!1665757 (= e!1067718 (Cons!18359 (h!23760 lt!626462) (++!4996 (t!151920 lt!626462) lt!626471)))))

(declare-fun b!1665756 () Bool)

(assert (=> b!1665756 (= e!1067718 lt!626471)))

(declare-fun d!503506 () Bool)

(assert (=> d!503506 e!1067717))

(declare-fun res!747373 () Bool)

(assert (=> d!503506 (=> (not res!747373) (not e!1067717))))

(assert (=> d!503506 (= res!747373 (= (content!2562 lt!627109) ((_ map or) (content!2562 lt!626462) (content!2562 lt!626471))))))

(assert (=> d!503506 (= lt!627109 e!1067718)))

(declare-fun c!271150 () Bool)

(assert (=> d!503506 (= c!271150 ((_ is Nil!18359) lt!626462))))

(assert (=> d!503506 (= (++!4996 lt!626462 lt!626471) lt!627109)))

(declare-fun b!1665758 () Bool)

(declare-fun res!747374 () Bool)

(assert (=> b!1665758 (=> (not res!747374) (not e!1067717))))

(assert (=> b!1665758 (= res!747374 (= (size!14602 lt!627109) (+ (size!14602 lt!626462) (size!14602 lt!626471))))))

(assert (= (and d!503506 c!271150) b!1665756))

(assert (= (and d!503506 (not c!271150)) b!1665757))

(assert (= (and d!503506 res!747373) b!1665758))

(assert (= (and b!1665758 res!747374) b!1665759))

(declare-fun m!2029281 () Bool)

(assert (=> b!1665757 m!2029281))

(declare-fun m!2029283 () Bool)

(assert (=> d!503506 m!2029283))

(declare-fun m!2029285 () Bool)

(assert (=> d!503506 m!2029285))

(declare-fun m!2029287 () Bool)

(assert (=> d!503506 m!2029287))

(declare-fun m!2029289 () Bool)

(assert (=> b!1665758 m!2029289))

(declare-fun m!2029291 () Bool)

(assert (=> b!1665758 m!2029291))

(assert (=> b!1665758 m!2029233))

(assert (=> b!1664306 d!503506))

(declare-fun d!503508 () Bool)

(declare-fun lt!627110 () BalanceConc!12180)

(assert (=> d!503508 (= (list!7335 lt!627110) (originalCharacters!4049 (_1!10445 (v!24758 lt!626472))))))

(assert (=> d!503508 (= lt!627110 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472))))) (value!101870 (_1!10445 (v!24758 lt!626472)))))))

(assert (=> d!503508 (= (charsOf!1884 (_1!10445 (v!24758 lt!626472))) lt!627110)))

(declare-fun b_lambda!52291 () Bool)

(assert (=> (not b_lambda!52291) (not d!503508)))

(declare-fun tb!95487 () Bool)

(declare-fun t!152141 () Bool)

(assert (=> (and b!1664443 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152141) tb!95487))

(declare-fun b!1665760 () Bool)

(declare-fun e!1067719 () Bool)

(declare-fun tp!480284 () Bool)

(assert (=> b!1665760 (= e!1067719 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472))))) (value!101870 (_1!10445 (v!24758 lt!626472)))))) tp!480284))))

(declare-fun result!115378 () Bool)

(assert (=> tb!95487 (= result!115378 (and (inv!23706 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472))))) (value!101870 (_1!10445 (v!24758 lt!626472))))) e!1067719))))

(assert (= tb!95487 b!1665760))

(declare-fun m!2029293 () Bool)

(assert (=> b!1665760 m!2029293))

(declare-fun m!2029295 () Bool)

(assert (=> tb!95487 m!2029295))

(assert (=> d!503508 t!152141))

(declare-fun b_and!118337 () Bool)

(assert (= b_and!118291 (and (=> t!152141 result!115378) b_and!118337)))

(declare-fun t!152143 () Bool)

(declare-fun tb!95489 () Bool)

(assert (=> (and b!1664502 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152143) tb!95489))

(declare-fun result!115380 () Bool)

(assert (= result!115380 result!115378))

(assert (=> d!503508 t!152143))

(declare-fun b_and!118339 () Bool)

(assert (= b_and!118285 (and (=> t!152143 result!115380) b_and!118339)))

(declare-fun tb!95491 () Bool)

(declare-fun t!152145 () Bool)

(assert (=> (and b!1664096 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152145) tb!95491))

(declare-fun result!115382 () Bool)

(assert (= result!115382 result!115378))

(assert (=> d!503508 t!152145))

(declare-fun b_and!118341 () Bool)

(assert (= b_and!118281 (and (=> t!152145 result!115382) b_and!118341)))

(declare-fun t!152147 () Bool)

(declare-fun tb!95493 () Bool)

(assert (=> (and b!1663853 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152147) tb!95493))

(declare-fun result!115384 () Bool)

(assert (= result!115384 result!115378))

(assert (=> d!503508 t!152147))

(declare-fun b_and!118343 () Bool)

(assert (= b_and!118283 (and (=> t!152147 result!115384) b_and!118343)))

(declare-fun t!152149 () Bool)

(declare-fun tb!95495 () Bool)

(assert (=> (and b!1664059 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152149) tb!95495))

(declare-fun result!115386 () Bool)

(assert (= result!115386 result!115378))

(assert (=> d!503508 t!152149))

(declare-fun b_and!118345 () Bool)

(assert (= b_and!118289 (and (=> t!152149 result!115386) b_and!118345)))

(declare-fun tb!95497 () Bool)

(declare-fun t!152151 () Bool)

(assert (=> (and b!1663843 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152151) tb!95497))

(declare-fun result!115388 () Bool)

(assert (= result!115388 result!115378))

(assert (=> d!503508 t!152151))

(declare-fun b_and!118347 () Bool)

(assert (= b_and!118287 (and (=> t!152151 result!115388) b_and!118347)))

(declare-fun m!2029297 () Bool)

(assert (=> d!503508 m!2029297))

(declare-fun m!2029299 () Bool)

(assert (=> d!503508 m!2029299))

(assert (=> b!1664306 d!503508))

(declare-fun b!1665761 () Bool)

(declare-fun e!1067723 () tuple2!18074)

(declare-fun lt!627113 () tuple2!18074)

(declare-fun lt!627111 () Option!3524)

(assert (=> b!1665761 (= e!1067723 (tuple2!18075 (prepend!817 (_1!10439 lt!627113) (_1!10445 (v!24758 lt!627111))) (_2!10439 lt!627113)))))

(assert (=> b!1665761 (= lt!627113 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627111))))))

(declare-fun b!1665762 () Bool)

(declare-fun e!1067722 () Bool)

(declare-fun lt!627112 () tuple2!18074)

(assert (=> b!1665762 (= e!1067722 (= (list!7335 (_2!10439 lt!627112)) (list!7335 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(declare-fun b!1665763 () Bool)

(assert (=> b!1665763 (= e!1067723 (tuple2!18075 (BalanceConc!12183 Empty!6119) (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))

(declare-fun b!1665764 () Bool)

(declare-fun e!1067721 () Bool)

(assert (=> b!1665764 (= e!1067721 (= (list!7335 (_2!10439 lt!627112)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))))

(declare-fun d!503510 () Bool)

(assert (=> d!503510 e!1067721))

(declare-fun res!747375 () Bool)

(assert (=> d!503510 (=> (not res!747375) (not e!1067721))))

(assert (=> d!503510 (= res!747375 e!1067722)))

(declare-fun c!271151 () Bool)

(assert (=> d!503510 (= c!271151 (> (size!14601 (_1!10439 lt!627112)) 0))))

(assert (=> d!503510 (= lt!627112 e!1067723)))

(declare-fun c!271152 () Bool)

(assert (=> d!503510 (= c!271152 ((_ is Some!3523) lt!627111))))

(assert (=> d!503510 (= lt!627111 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))

(assert (=> d!503510 (= (lexRec!379 thiss!17113 rules!1846 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472))))) lt!627112)))

(declare-fun b!1665765 () Bool)

(declare-fun res!747377 () Bool)

(assert (=> b!1665765 (=> (not res!747377) (not e!1067721))))

(assert (=> b!1665765 (= res!747377 (= (list!7332 (_1!10439 lt!627112)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))))

(declare-fun b!1665766 () Bool)

(declare-fun e!1067720 () Bool)

(assert (=> b!1665766 (= e!1067722 e!1067720)))

(declare-fun res!747376 () Bool)

(assert (=> b!1665766 (= res!747376 (< (size!14600 (_2!10439 lt!627112)) (size!14600 (++!4997 (BalanceConc!12181 Empty!6118) (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(assert (=> b!1665766 (=> (not res!747376) (not e!1067720))))

(declare-fun b!1665767 () Bool)

(assert (=> b!1665767 (= e!1067720 (not (isEmpty!11419 (_1!10439 lt!627112))))))

(assert (= (and d!503510 c!271152) b!1665761))

(assert (= (and d!503510 (not c!271152)) b!1665763))

(assert (= (and d!503510 c!271151) b!1665766))

(assert (= (and d!503510 (not c!271151)) b!1665762))

(assert (= (and b!1665766 res!747376) b!1665767))

(assert (= (and d!503510 res!747375) b!1665765))

(assert (= (and b!1665765 res!747377) b!1665764))

(declare-fun m!2029301 () Bool)

(assert (=> b!1665765 m!2029301))

(assert (=> b!1665765 m!2026759))

(declare-fun m!2029303 () Bool)

(assert (=> b!1665765 m!2029303))

(assert (=> b!1665765 m!2029303))

(declare-fun m!2029305 () Bool)

(assert (=> b!1665765 m!2029305))

(declare-fun m!2029307 () Bool)

(assert (=> b!1665766 m!2029307))

(assert (=> b!1665766 m!2026759))

(declare-fun m!2029309 () Bool)

(assert (=> b!1665766 m!2029309))

(declare-fun m!2029311 () Bool)

(assert (=> b!1665767 m!2029311))

(declare-fun m!2029313 () Bool)

(assert (=> b!1665764 m!2029313))

(assert (=> b!1665764 m!2026759))

(assert (=> b!1665764 m!2029303))

(assert (=> b!1665764 m!2029303))

(assert (=> b!1665764 m!2029305))

(declare-fun m!2029315 () Bool)

(assert (=> b!1665761 m!2029315))

(declare-fun m!2029317 () Bool)

(assert (=> b!1665761 m!2029317))

(declare-fun m!2029319 () Bool)

(assert (=> d!503510 m!2029319))

(assert (=> d!503510 m!2026759))

(declare-fun m!2029321 () Bool)

(assert (=> d!503510 m!2029321))

(assert (=> b!1665762 m!2029313))

(assert (=> b!1665762 m!2026759))

(assert (=> b!1665762 m!2029303))

(assert (=> b!1664306 d!503510))

(declare-fun b!1665768 () Bool)

(declare-fun e!1067727 () tuple2!18074)

(declare-fun lt!627116 () tuple2!18074)

(declare-fun lt!627114 () Option!3524)

(assert (=> b!1665768 (= e!1067727 (tuple2!18075 (prepend!817 (_1!10439 lt!627116) (_1!10445 (v!24758 lt!627114))) (_2!10439 lt!627116)))))

(assert (=> b!1665768 (= lt!627116 (lexRec!379 thiss!17113 rules!1846 (_2!10445 (v!24758 lt!627114))))))

(declare-fun b!1665769 () Bool)

(declare-fun e!1067726 () Bool)

(declare-fun lt!627115 () tuple2!18074)

(assert (=> b!1665769 (= e!1067726 (= (list!7335 (_2!10439 lt!627115)) (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(declare-fun b!1665770 () Bool)

(assert (=> b!1665770 (= e!1067727 (tuple2!18075 (BalanceConc!12183 Empty!6119) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun e!1067725 () Bool)

(declare-fun b!1665771 () Bool)

(assert (=> b!1665771 (= e!1067725 (= (list!7335 (_2!10439 lt!627115)) (_2!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun d!503512 () Bool)

(assert (=> d!503512 e!1067725))

(declare-fun res!747378 () Bool)

(assert (=> d!503512 (=> (not res!747378) (not e!1067725))))

(assert (=> d!503512 (= res!747378 e!1067726)))

(declare-fun c!271153 () Bool)

(assert (=> d!503512 (= c!271153 (> (size!14601 (_1!10439 lt!627115)) 0))))

(assert (=> d!503512 (= lt!627115 e!1067727)))

(declare-fun c!271154 () Bool)

(assert (=> d!503512 (= c!271154 ((_ is Some!3523) lt!627114))))

(assert (=> d!503512 (= lt!627114 (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!503512 (= (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) lt!627115)))

(declare-fun b!1665772 () Bool)

(declare-fun res!747380 () Bool)

(assert (=> b!1665772 (=> (not res!747380) (not e!1067725))))

(assert (=> b!1665772 (= res!747380 (= (list!7332 (_1!10439 lt!627115)) (_1!10441 (lexList!889 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun b!1665773 () Bool)

(declare-fun e!1067724 () Bool)

(assert (=> b!1665773 (= e!1067726 e!1067724)))

(declare-fun res!747379 () Bool)

(assert (=> b!1665773 (= res!747379 (< (size!14600 (_2!10439 lt!627115)) (size!14600 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))

(assert (=> b!1665773 (=> (not res!747379) (not e!1067724))))

(declare-fun b!1665774 () Bool)

(assert (=> b!1665774 (= e!1067724 (not (isEmpty!11419 (_1!10439 lt!627115))))))

(assert (= (and d!503512 c!271154) b!1665768))

(assert (= (and d!503512 (not c!271154)) b!1665770))

(assert (= (and d!503512 c!271153) b!1665773))

(assert (= (and d!503512 (not c!271153)) b!1665769))

(assert (= (and b!1665773 res!747379) b!1665774))

(assert (= (and d!503512 res!747378) b!1665772))

(assert (= (and b!1665772 res!747380) b!1665771))

(declare-fun m!2029323 () Bool)

(assert (=> b!1665772 m!2029323))

(assert (=> b!1665772 m!2026127))

(assert (=> b!1665772 m!2026219))

(assert (=> b!1665772 m!2026219))

(assert (=> b!1665772 m!2026221))

(declare-fun m!2029325 () Bool)

(assert (=> b!1665773 m!2029325))

(assert (=> b!1665773 m!2026127))

(assert (=> b!1665773 m!2026213))

(declare-fun m!2029327 () Bool)

(assert (=> b!1665774 m!2029327))

(declare-fun m!2029329 () Bool)

(assert (=> b!1665771 m!2029329))

(assert (=> b!1665771 m!2026127))

(assert (=> b!1665771 m!2026219))

(assert (=> b!1665771 m!2026219))

(assert (=> b!1665771 m!2026221))

(declare-fun m!2029331 () Bool)

(assert (=> b!1665768 m!2029331))

(declare-fun m!2029333 () Bool)

(assert (=> b!1665768 m!2029333))

(declare-fun m!2029335 () Bool)

(assert (=> d!503512 m!2029335))

(assert (=> d!503512 m!2026127))

(assert (=> d!503512 m!2026795))

(assert (=> b!1665769 m!2029329))

(assert (=> b!1665769 m!2026127))

(assert (=> b!1665769 m!2026219))

(assert (=> b!1664306 d!503512))

(declare-fun b!1665775 () Bool)

(declare-fun e!1067733 () Bool)

(declare-fun e!1067728 () Bool)

(assert (=> b!1665775 (= e!1067733 e!1067728)))

(declare-fun res!747384 () Bool)

(assert (=> b!1665775 (=> res!747384 e!1067728)))

(declare-fun lt!627121 () Option!3524)

(assert (=> b!1665775 (= res!747384 (not (isDefined!2879 lt!627121)))))

(declare-fun b!1665776 () Bool)

(declare-fun e!1067732 () Option!3524)

(declare-fun lt!627120 () Option!3524)

(declare-fun lt!627123 () Option!3524)

(assert (=> b!1665776 (= e!1067732 (ite (and ((_ is None!3523) lt!627120) ((_ is None!3523) lt!627123)) None!3523 (ite ((_ is None!3523) lt!627123) lt!627120 (ite ((_ is None!3523) lt!627120) lt!627123 (ite (>= (size!14596 (_1!10445 (v!24758 lt!627120))) (size!14596 (_1!10445 (v!24758 lt!627123)))) lt!627120 lt!627123)))))))

(declare-fun call!106529 () Option!3524)

(assert (=> b!1665776 (= lt!627120 call!106529)))

(assert (=> b!1665776 (= lt!627123 (maxPrefixZipperSequence!741 thiss!17113 (t!151923 rules!1846) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1665777 () Bool)

(declare-fun e!1067731 () Bool)

(declare-fun e!1067730 () Bool)

(assert (=> b!1665777 (= e!1067731 e!1067730)))

(declare-fun res!747385 () Bool)

(assert (=> b!1665777 (=> (not res!747385) (not e!1067730))))

(assert (=> b!1665777 (= res!747385 (= (_1!10445 (get!5377 lt!627121)) (_1!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665778 () Bool)

(declare-fun e!1067729 () Bool)

(assert (=> b!1665778 (= e!1067728 e!1067729)))

(declare-fun res!747381 () Bool)

(assert (=> b!1665778 (=> (not res!747381) (not e!1067729))))

(assert (=> b!1665778 (= res!747381 (= (_1!10445 (get!5377 lt!627121)) (_1!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665779 () Bool)

(assert (=> b!1665779 (= e!1067730 (= (list!7335 (_2!10445 (get!5377 lt!627121))) (_2!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665780 () Bool)

(assert (=> b!1665780 (= e!1067729 (= (list!7335 (_2!10445 (get!5377 lt!627121))) (_2!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665781 () Bool)

(declare-fun res!747382 () Bool)

(assert (=> b!1665781 (=> (not res!747382) (not e!1067733))))

(assert (=> b!1665781 (= res!747382 e!1067731)))

(declare-fun res!747383 () Bool)

(assert (=> b!1665781 (=> res!747383 e!1067731)))

(assert (=> b!1665781 (= res!747383 (not (isDefined!2879 lt!627121)))))

(declare-fun bm!106524 () Bool)

(assert (=> bm!106524 (= call!106529 (maxPrefixOneRuleZipperSequence!354 thiss!17113 (h!23763 rules!1846) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun d!503514 () Bool)

(assert (=> d!503514 e!1067733))

(declare-fun res!747386 () Bool)

(assert (=> d!503514 (=> (not res!747386) (not e!1067733))))

(assert (=> d!503514 (= res!747386 (= (isDefined!2879 lt!627121) (isDefined!2878 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(assert (=> d!503514 (= lt!627121 e!1067732)))

(declare-fun c!271155 () Bool)

(assert (=> d!503514 (= c!271155 (and ((_ is Cons!18362) rules!1846) ((_ is Nil!18362) (t!151923 rules!1846))))))

(declare-fun lt!627122 () Unit!31104)

(declare-fun lt!627119 () Unit!31104)

(assert (=> d!503514 (= lt!627122 lt!627119)))

(declare-fun lt!627118 () List!18429)

(declare-fun lt!627117 () List!18429)

(assert (=> d!503514 (isPrefix!1493 lt!627118 lt!627117)))

(assert (=> d!503514 (= lt!627119 (lemmaIsPrefixRefl!1014 lt!627118 lt!627117))))

(assert (=> d!503514 (= lt!627117 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!503514 (= lt!627118 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!503514 (rulesValidInductive!1036 thiss!17113 rules!1846)))

(assert (=> d!503514 (= (maxPrefixZipperSequence!741 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) lt!627121)))

(declare-fun b!1665782 () Bool)

(assert (=> b!1665782 (= e!1067732 call!106529)))

(assert (= (and d!503514 c!271155) b!1665782))

(assert (= (and d!503514 (not c!271155)) b!1665776))

(assert (= (or b!1665782 b!1665776) bm!106524))

(assert (= (and d!503514 res!747386) b!1665781))

(assert (= (and b!1665781 (not res!747383)) b!1665777))

(assert (= (and b!1665777 res!747385) b!1665779))

(assert (= (and b!1665781 res!747382) b!1665775))

(assert (= (and b!1665775 (not res!747384)) b!1665778))

(assert (= (and b!1665778 res!747381) b!1665780))

(assert (=> b!1665776 m!2026127))

(declare-fun m!2029337 () Bool)

(assert (=> b!1665776 m!2029337))

(declare-fun m!2029339 () Bool)

(assert (=> b!1665778 m!2029339))

(assert (=> b!1665778 m!2026127))

(assert (=> b!1665778 m!2026219))

(assert (=> b!1665778 m!2026219))

(assert (=> b!1665778 m!2026601))

(assert (=> b!1665778 m!2026601))

(declare-fun m!2029341 () Bool)

(assert (=> b!1665778 m!2029341))

(assert (=> bm!106524 m!2026127))

(declare-fun m!2029343 () Bool)

(assert (=> bm!106524 m!2029343))

(declare-fun m!2029345 () Bool)

(assert (=> d!503514 m!2029345))

(declare-fun m!2029347 () Bool)

(assert (=> d!503514 m!2029347))

(assert (=> d!503514 m!2026127))

(assert (=> d!503514 m!2026219))

(assert (=> d!503514 m!2026219))

(assert (=> d!503514 m!2029345))

(declare-fun m!2029349 () Bool)

(assert (=> d!503514 m!2029349))

(assert (=> d!503514 m!2027003))

(declare-fun m!2029351 () Bool)

(assert (=> d!503514 m!2029351))

(declare-fun m!2029353 () Bool)

(assert (=> d!503514 m!2029353))

(assert (=> b!1665780 m!2026127))

(assert (=> b!1665780 m!2026219))

(assert (=> b!1665780 m!2026219))

(assert (=> b!1665780 m!2026601))

(assert (=> b!1665780 m!2029339))

(assert (=> b!1665780 m!2026601))

(assert (=> b!1665780 m!2029341))

(declare-fun m!2029355 () Bool)

(assert (=> b!1665780 m!2029355))

(assert (=> b!1665775 m!2029353))

(assert (=> b!1665779 m!2026127))

(assert (=> b!1665779 m!2026219))

(assert (=> b!1665779 m!2029345))

(declare-fun m!2029357 () Bool)

(assert (=> b!1665779 m!2029357))

(assert (=> b!1665779 m!2026219))

(assert (=> b!1665779 m!2029345))

(assert (=> b!1665779 m!2029339))

(assert (=> b!1665779 m!2029355))

(assert (=> b!1665777 m!2029339))

(assert (=> b!1665777 m!2026127))

(assert (=> b!1665777 m!2026219))

(assert (=> b!1665777 m!2026219))

(assert (=> b!1665777 m!2029345))

(assert (=> b!1665777 m!2029345))

(assert (=> b!1665777 m!2029357))

(assert (=> b!1665781 m!2029353))

(assert (=> b!1664306 d!503514))

(assert (=> b!1664306 d!503458))

(declare-fun b!1665786 () Bool)

(declare-fun e!1067734 () Bool)

(declare-fun lt!627124 () List!18429)

(assert (=> b!1665786 (= e!1067734 (or (not (= (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))) Nil!18359)) (= lt!627124 (list!7335 (BalanceConc!12181 Empty!6118)))))))

(declare-fun b!1665784 () Bool)

(declare-fun e!1067735 () List!18429)

(assert (=> b!1665784 (= e!1067735 (Cons!18359 (h!23760 (list!7335 (BalanceConc!12181 Empty!6118))) (++!4996 (t!151920 (list!7335 (BalanceConc!12181 Empty!6118))) (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))))

(declare-fun b!1665783 () Bool)

(assert (=> b!1665783 (= e!1067735 (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472)))))))

(declare-fun d!503516 () Bool)

(assert (=> d!503516 e!1067734))

(declare-fun res!747387 () Bool)

(assert (=> d!503516 (=> (not res!747387) (not e!1067734))))

(assert (=> d!503516 (= res!747387 (= (content!2562 lt!627124) ((_ map or) (content!2562 (list!7335 (BalanceConc!12181 Empty!6118))) (content!2562 (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))))

(assert (=> d!503516 (= lt!627124 e!1067735)))

(declare-fun c!271156 () Bool)

(assert (=> d!503516 (= c!271156 ((_ is Nil!18359) (list!7335 (BalanceConc!12181 Empty!6118))))))

(assert (=> d!503516 (= (++!4996 (list!7335 (BalanceConc!12181 Empty!6118)) (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))) lt!627124)))

(declare-fun b!1665785 () Bool)

(declare-fun res!747388 () Bool)

(assert (=> b!1665785 (=> (not res!747388) (not e!1067734))))

(assert (=> b!1665785 (= res!747388 (= (size!14602 lt!627124) (+ (size!14602 (list!7335 (BalanceConc!12181 Empty!6118))) (size!14602 (list!7335 (charsOf!1884 (_1!10445 (v!24758 lt!626472))))))))))

(assert (= (and d!503516 c!271156) b!1665783))

(assert (= (and d!503516 (not c!271156)) b!1665784))

(assert (= (and d!503516 res!747387) b!1665785))

(assert (= (and b!1665785 res!747388) b!1665786))

(assert (=> b!1665784 m!2026743))

(declare-fun m!2029359 () Bool)

(assert (=> b!1665784 m!2029359))

(declare-fun m!2029361 () Bool)

(assert (=> d!503516 m!2029361))

(assert (=> d!503516 m!2026563))

(declare-fun m!2029363 () Bool)

(assert (=> d!503516 m!2029363))

(assert (=> d!503516 m!2026743))

(declare-fun m!2029365 () Bool)

(assert (=> d!503516 m!2029365))

(declare-fun m!2029367 () Bool)

(assert (=> b!1665785 m!2029367))

(assert (=> b!1665785 m!2026563))

(declare-fun m!2029369 () Bool)

(assert (=> b!1665785 m!2029369))

(assert (=> b!1665785 m!2026743))

(declare-fun m!2029371 () Bool)

(assert (=> b!1665785 m!2029371))

(assert (=> b!1664306 d!503516))

(declare-fun b!1665787 () Bool)

(declare-fun e!1067736 () List!18431)

(assert (=> b!1665787 (= e!1067736 (++!4998 lt!626456 lt!626481))))

(declare-fun lt!627125 () List!18431)

(declare-fun e!1067737 () Bool)

(declare-fun b!1665790 () Bool)

(assert (=> b!1665790 (= e!1067737 (or (not (= (++!4998 lt!626456 lt!626481) Nil!18361)) (= lt!627125 lt!626484)))))

(declare-fun b!1665788 () Bool)

(assert (=> b!1665788 (= e!1067736 (Cons!18361 (h!23762 lt!626484) (++!4998 (t!151922 lt!626484) (++!4998 lt!626456 lt!626481))))))

(declare-fun d!503518 () Bool)

(assert (=> d!503518 e!1067737))

(declare-fun res!747389 () Bool)

(assert (=> d!503518 (=> (not res!747389) (not e!1067737))))

(assert (=> d!503518 (= res!747389 (= (content!2560 lt!627125) ((_ map or) (content!2560 lt!626484) (content!2560 (++!4998 lt!626456 lt!626481)))))))

(assert (=> d!503518 (= lt!627125 e!1067736)))

(declare-fun c!271157 () Bool)

(assert (=> d!503518 (= c!271157 ((_ is Nil!18361) lt!626484))))

(assert (=> d!503518 (= (++!4998 lt!626484 (++!4998 lt!626456 lt!626481)) lt!627125)))

(declare-fun b!1665789 () Bool)

(declare-fun res!747390 () Bool)

(assert (=> b!1665789 (=> (not res!747390) (not e!1067737))))

(assert (=> b!1665789 (= res!747390 (= (size!14607 lt!627125) (+ (size!14607 lt!626484) (size!14607 (++!4998 lt!626456 lt!626481)))))))

(assert (= (and d!503518 c!271157) b!1665787))

(assert (= (and d!503518 (not c!271157)) b!1665788))

(assert (= (and d!503518 res!747389) b!1665789))

(assert (= (and b!1665789 res!747390) b!1665790))

(assert (=> b!1665788 m!2026753))

(declare-fun m!2029373 () Bool)

(assert (=> b!1665788 m!2029373))

(declare-fun m!2029375 () Bool)

(assert (=> d!503518 m!2029375))

(assert (=> d!503518 m!2029247))

(assert (=> d!503518 m!2026753))

(declare-fun m!2029377 () Bool)

(assert (=> d!503518 m!2029377))

(declare-fun m!2029379 () Bool)

(assert (=> b!1665789 m!2029379))

(assert (=> b!1665789 m!2029251))

(assert (=> b!1665789 m!2026753))

(declare-fun m!2029381 () Bool)

(assert (=> b!1665789 m!2029381))

(assert (=> b!1664306 d!503518))

(declare-fun e!1067738 () Bool)

(declare-fun b!1665794 () Bool)

(declare-fun lt!627126 () List!18429)

(assert (=> b!1665794 (= e!1067738 (or (not (= (++!4996 lt!626476 lt!626464) Nil!18359)) (= lt!627126 lt!626458)))))

(declare-fun b!1665792 () Bool)

(declare-fun e!1067739 () List!18429)

(assert (=> b!1665792 (= e!1067739 (Cons!18359 (h!23760 lt!626458) (++!4996 (t!151920 lt!626458) (++!4996 lt!626476 lt!626464))))))

(declare-fun b!1665791 () Bool)

(assert (=> b!1665791 (= e!1067739 (++!4996 lt!626476 lt!626464))))

(declare-fun d!503520 () Bool)

(assert (=> d!503520 e!1067738))

(declare-fun res!747391 () Bool)

(assert (=> d!503520 (=> (not res!747391) (not e!1067738))))

(assert (=> d!503520 (= res!747391 (= (content!2562 lt!627126) ((_ map or) (content!2562 lt!626458) (content!2562 (++!4996 lt!626476 lt!626464)))))))

(assert (=> d!503520 (= lt!627126 e!1067739)))

(declare-fun c!271158 () Bool)

(assert (=> d!503520 (= c!271158 ((_ is Nil!18359) lt!626458))))

(assert (=> d!503520 (= (++!4996 lt!626458 (++!4996 lt!626476 lt!626464)) lt!627126)))

(declare-fun b!1665793 () Bool)

(declare-fun res!747392 () Bool)

(assert (=> b!1665793 (=> (not res!747392) (not e!1067738))))

(assert (=> b!1665793 (= res!747392 (= (size!14602 lt!627126) (+ (size!14602 lt!626458) (size!14602 (++!4996 lt!626476 lt!626464)))))))

(assert (= (and d!503520 c!271158) b!1665791))

(assert (= (and d!503520 (not c!271158)) b!1665792))

(assert (= (and d!503520 res!747391) b!1665793))

(assert (= (and b!1665793 res!747392) b!1665794))

(assert (=> b!1665792 m!2026755))

(declare-fun m!2029383 () Bool)

(assert (=> b!1665792 m!2029383))

(declare-fun m!2029385 () Bool)

(assert (=> d!503520 m!2029385))

(assert (=> d!503520 m!2029165))

(assert (=> d!503520 m!2026755))

(declare-fun m!2029387 () Bool)

(assert (=> d!503520 m!2029387))

(declare-fun m!2029389 () Bool)

(assert (=> b!1665793 m!2029389))

(assert (=> b!1665793 m!2029171))

(assert (=> b!1665793 m!2026755))

(declare-fun m!2029391 () Bool)

(assert (=> b!1665793 m!2029391))

(assert (=> b!1664306 d!503520))

(declare-fun d!503522 () Bool)

(assert (=> d!503522 (isSuffix!425 lt!626471 (++!4996 lt!626462 lt!626471))))

(declare-fun lt!627129 () Unit!31104)

(declare-fun choose!10029 (List!18429 List!18429) Unit!31104)

(assert (=> d!503522 (= lt!627129 (choose!10029 lt!626462 lt!626471))))

(assert (=> d!503522 (= (lemmaConcatTwoListThenFSndIsSuffix!326 lt!626462 lt!626471) lt!627129)))

(declare-fun bs!397662 () Bool)

(assert (= bs!397662 d!503522))

(assert (=> bs!397662 m!2026741))

(assert (=> bs!397662 m!2026741))

(assert (=> bs!397662 m!2026747))

(declare-fun m!2029393 () Bool)

(assert (=> bs!397662 m!2029393))

(assert (=> b!1664306 d!503522))

(declare-fun d!503524 () Bool)

(declare-fun lt!627130 () Int)

(assert (=> d!503524 (>= lt!627130 0)))

(declare-fun e!1067740 () Int)

(assert (=> d!503524 (= lt!627130 e!1067740)))

(declare-fun c!271159 () Bool)

(assert (=> d!503524 (= c!271159 ((_ is Nil!18359) (t!151920 (originalCharacters!4049 (h!23762 tokens!457)))))))

(assert (=> d!503524 (= (size!14602 (t!151920 (originalCharacters!4049 (h!23762 tokens!457)))) lt!627130)))

(declare-fun b!1665795 () Bool)

(assert (=> b!1665795 (= e!1067740 0)))

(declare-fun b!1665796 () Bool)

(assert (=> b!1665796 (= e!1067740 (+ 1 (size!14602 (t!151920 (t!151920 (originalCharacters!4049 (h!23762 tokens!457)))))))))

(assert (= (and d!503524 c!271159) b!1665795))

(assert (= (and d!503524 (not c!271159)) b!1665796))

(declare-fun m!2029395 () Bool)

(assert (=> b!1665796 m!2029395))

(assert (=> b!1664134 d!503524))

(declare-fun d!503526 () Bool)

(assert (=> d!503526 (= (inv!23698 (tag!3519 (h!23763 (t!151923 (t!151923 rules!1846))))) (= (mod (str.len (value!101869 (tag!3519 (h!23763 (t!151923 (t!151923 rules!1846)))))) 2) 0))))

(assert (=> b!1664501 d!503526))

(declare-fun d!503528 () Bool)

(declare-fun res!747393 () Bool)

(declare-fun e!1067741 () Bool)

(assert (=> d!503528 (=> (not res!747393) (not e!1067741))))

(assert (=> d!503528 (= res!747393 (semiInverseModEq!1260 (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))))))

(assert (=> d!503528 (= (inv!23701 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) e!1067741)))

(declare-fun b!1665797 () Bool)

(assert (=> b!1665797 (= e!1067741 (equivClasses!1201 (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))))))

(assert (= (and d!503528 res!747393) b!1665797))

(declare-fun m!2029397 () Bool)

(assert (=> d!503528 m!2029397))

(declare-fun m!2029399 () Bool)

(assert (=> b!1665797 m!2029399))

(assert (=> b!1664501 d!503528))

(assert (=> b!1664203 d!502850))

(declare-fun d!503530 () Bool)

(declare-fun res!747394 () Bool)

(declare-fun e!1067742 () Bool)

(assert (=> d!503530 (=> res!747394 e!1067742)))

(assert (=> d!503530 (= res!747394 ((_ is Nil!18362) (t!151923 rules!1846)))))

(assert (=> d!503530 (= (noDuplicateTag!1188 thiss!17113 (t!151923 rules!1846) (Cons!18364 (tag!3519 (h!23763 rules!1846)) Nil!18364)) e!1067742)))

(declare-fun b!1665798 () Bool)

(declare-fun e!1067743 () Bool)

(assert (=> b!1665798 (= e!1067742 e!1067743)))

(declare-fun res!747395 () Bool)

(assert (=> b!1665798 (=> (not res!747395) (not e!1067743))))

(assert (=> b!1665798 (= res!747395 (not (contains!3204 (Cons!18364 (tag!3519 (h!23763 rules!1846)) Nil!18364) (tag!3519 (h!23763 (t!151923 rules!1846))))))))

(declare-fun b!1665799 () Bool)

(assert (=> b!1665799 (= e!1067743 (noDuplicateTag!1188 thiss!17113 (t!151923 (t!151923 rules!1846)) (Cons!18364 (tag!3519 (h!23763 (t!151923 rules!1846))) (Cons!18364 (tag!3519 (h!23763 rules!1846)) Nil!18364))))))

(assert (= (and d!503530 (not res!747394)) b!1665798))

(assert (= (and b!1665798 res!747395) b!1665799))

(declare-fun m!2029401 () Bool)

(assert (=> b!1665798 m!2029401))

(declare-fun m!2029403 () Bool)

(assert (=> b!1665799 m!2029403))

(assert (=> b!1664233 d!503530))

(declare-fun b!1665801 () Bool)

(declare-fun e!1067744 () List!18429)

(declare-fun e!1067745 () List!18429)

(assert (=> b!1665801 (= e!1067744 e!1067745)))

(declare-fun c!271161 () Bool)

(assert (=> b!1665801 (= c!271161 ((_ is Leaf!8956) (c!270827 (_2!10439 lt!626151))))))

(declare-fun b!1665800 () Bool)

(assert (=> b!1665800 (= e!1067744 Nil!18359)))

(declare-fun d!503532 () Bool)

(declare-fun c!271160 () Bool)

(assert (=> d!503532 (= c!271160 ((_ is Empty!6118) (c!270827 (_2!10439 lt!626151))))))

(assert (=> d!503532 (= (list!7339 (c!270827 (_2!10439 lt!626151))) e!1067744)))

(declare-fun b!1665802 () Bool)

(assert (=> b!1665802 (= e!1067745 (list!7341 (xs!8962 (c!270827 (_2!10439 lt!626151)))))))

(declare-fun b!1665803 () Bool)

(assert (=> b!1665803 (= e!1067745 (++!4996 (list!7339 (left!14689 (c!270827 (_2!10439 lt!626151)))) (list!7339 (right!15019 (c!270827 (_2!10439 lt!626151))))))))

(assert (= (and d!503532 c!271160) b!1665800))

(assert (= (and d!503532 (not c!271160)) b!1665801))

(assert (= (and b!1665801 c!271161) b!1665802))

(assert (= (and b!1665801 (not c!271161)) b!1665803))

(declare-fun m!2029405 () Bool)

(assert (=> b!1665802 m!2029405))

(declare-fun m!2029407 () Bool)

(assert (=> b!1665803 m!2029407))

(declare-fun m!2029409 () Bool)

(assert (=> b!1665803 m!2029409))

(assert (=> b!1665803 m!2029407))

(assert (=> b!1665803 m!2029409))

(declare-fun m!2029411 () Bool)

(assert (=> b!1665803 m!2029411))

(assert (=> d!502770 d!503532))

(declare-fun bs!397663 () Bool)

(declare-fun d!503534 () Bool)

(assert (= bs!397663 (and d!503534 d!502748)))

(declare-fun lambda!67942 () Int)

(assert (=> bs!397663 (= (= (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 rules!1846)))) (= lambda!67942 lambda!67909))))

(declare-fun bs!397664 () Bool)

(assert (= bs!397664 (and d!503534 d!502750)))

(assert (=> bs!397664 (= (= (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) (= lambda!67942 lambda!67910))))

(declare-fun bs!397665 () Bool)

(assert (= bs!397665 (and d!503534 d!503446)))

(assert (=> bs!397665 (= (= (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) (= lambda!67942 lambda!67941))))

(assert (=> d!503534 true))

(assert (=> d!503534 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8260 order!11005 lambda!67942))))

(assert (=> d!503534 (= (equivClasses!1201 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (Forall2!529 lambda!67942))))

(declare-fun bs!397666 () Bool)

(assert (= bs!397666 d!503534))

(declare-fun m!2029413 () Bool)

(assert (=> bs!397666 m!2029413))

(assert (=> b!1664315 d!503534))

(declare-fun d!503536 () Bool)

(assert (=> d!503536 (= (inv!15 (value!101870 (h!23762 (t!151922 tokens!457)))) (= (charsToBigInt!0 (text!23724 (value!101870 (h!23762 (t!151922 tokens!457)))) 0) (value!101865 (value!101870 (h!23762 (t!151922 tokens!457))))))))

(declare-fun bs!397667 () Bool)

(assert (= bs!397667 d!503536))

(declare-fun m!2029415 () Bool)

(assert (=> bs!397667 m!2029415))

(assert (=> b!1664310 d!503536))

(declare-fun e!1067746 () Bool)

(declare-fun lt!627131 () List!18429)

(declare-fun b!1665807 () Bool)

(assert (=> b!1665807 (= e!1067746 (or (not (= lt!626459 Nil!18359)) (= lt!627131 lt!626455)))))

(declare-fun b!1665805 () Bool)

(declare-fun e!1067747 () List!18429)

(assert (=> b!1665805 (= e!1067747 (Cons!18359 (h!23760 lt!626455) (++!4996 (t!151920 lt!626455) lt!626459)))))

(declare-fun b!1665804 () Bool)

(assert (=> b!1665804 (= e!1067747 lt!626459)))

(declare-fun d!503538 () Bool)

(assert (=> d!503538 e!1067746))

(declare-fun res!747396 () Bool)

(assert (=> d!503538 (=> (not res!747396) (not e!1067746))))

(assert (=> d!503538 (= res!747396 (= (content!2562 lt!627131) ((_ map or) (content!2562 lt!626455) (content!2562 lt!626459))))))

(assert (=> d!503538 (= lt!627131 e!1067747)))

(declare-fun c!271162 () Bool)

(assert (=> d!503538 (= c!271162 ((_ is Nil!18359) lt!626455))))

(assert (=> d!503538 (= (++!4996 lt!626455 lt!626459) lt!627131)))

(declare-fun b!1665806 () Bool)

(declare-fun res!747397 () Bool)

(assert (=> b!1665806 (=> (not res!747397) (not e!1067746))))

(assert (=> b!1665806 (= res!747397 (= (size!14602 lt!627131) (+ (size!14602 lt!626455) (size!14602 lt!626459))))))

(assert (= (and d!503538 c!271162) b!1665804))

(assert (= (and d!503538 (not c!271162)) b!1665805))

(assert (= (and d!503538 res!747396) b!1665806))

(assert (= (and b!1665806 res!747397) b!1665807))

(declare-fun m!2029417 () Bool)

(assert (=> b!1665805 m!2029417))

(declare-fun m!2029419 () Bool)

(assert (=> d!503538 m!2029419))

(declare-fun m!2029421 () Bool)

(assert (=> d!503538 m!2029421))

(declare-fun m!2029423 () Bool)

(assert (=> d!503538 m!2029423))

(declare-fun m!2029425 () Bool)

(assert (=> b!1665806 m!2029425))

(declare-fun m!2029427 () Bool)

(assert (=> b!1665806 m!2029427))

(declare-fun m!2029429 () Bool)

(assert (=> b!1665806 m!2029429))

(assert (=> d!502784 d!503538))

(declare-fun bm!106527 () Bool)

(declare-fun call!106532 () Option!3524)

(declare-fun maxPrefixOneRuleZipperSequenceV2!101 (LexerInterface!2864 Rule!6270 BalanceConc!12180 BalanceConc!12180) Option!3524)

(assert (=> bm!106527 (= call!106532 (maxPrefixOneRuleZipperSequenceV2!101 thiss!17113 (h!23763 rules!1846) (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1665825 () Bool)

(declare-fun e!1067761 () Bool)

(declare-fun e!1067763 () Bool)

(assert (=> b!1665825 (= e!1067761 e!1067763)))

(declare-fun res!747414 () Bool)

(assert (=> b!1665825 (=> (not res!747414) (not e!1067763))))

(declare-fun lt!627147 () Option!3524)

(assert (=> b!1665825 (= res!747414 (= (_1!10445 (get!5377 lt!627147)) (_1!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665826 () Bool)

(assert (=> b!1665826 (= e!1067763 (= (list!7335 (_2!10445 (get!5377 lt!627147))) (_2!10444 (get!5376 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665827 () Bool)

(declare-fun e!1067764 () Option!3524)

(assert (=> b!1665827 (= e!1067764 call!106532)))

(declare-fun b!1665828 () Bool)

(declare-fun e!1067762 () Bool)

(declare-fun e!1067765 () Bool)

(assert (=> b!1665828 (= e!1067762 e!1067765)))

(declare-fun res!747410 () Bool)

(assert (=> b!1665828 (=> (not res!747410) (not e!1067765))))

(assert (=> b!1665828 (= res!747410 (= (_1!10445 (get!5377 lt!627147)) (_1!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665829 () Bool)

(declare-fun lt!627146 () Option!3524)

(declare-fun lt!627148 () Option!3524)

(assert (=> b!1665829 (= e!1067764 (ite (and ((_ is None!3523) lt!627146) ((_ is None!3523) lt!627148)) None!3523 (ite ((_ is None!3523) lt!627148) lt!627146 (ite ((_ is None!3523) lt!627146) lt!627148 (ite (>= (size!14596 (_1!10445 (v!24758 lt!627146))) (size!14596 (_1!10445 (v!24758 lt!627148)))) lt!627146 lt!627148)))))))

(assert (=> b!1665829 (= lt!627146 call!106532)))

(assert (=> b!1665829 (= lt!627148 (maxPrefixZipperSequenceV2!274 thiss!17113 (t!151923 rules!1846) (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(declare-fun b!1665830 () Bool)

(declare-fun e!1067760 () Bool)

(assert (=> b!1665830 (= e!1067760 e!1067762)))

(declare-fun res!747413 () Bool)

(assert (=> b!1665830 (=> res!747413 e!1067762)))

(assert (=> b!1665830 (= res!747413 (not (isDefined!2879 lt!627147)))))

(declare-fun b!1665831 () Bool)

(assert (=> b!1665831 (= e!1067765 (= (list!7335 (_2!10445 (get!5377 lt!627147))) (_2!10444 (get!5376 (maxPrefix!1426 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))))))

(declare-fun b!1665824 () Bool)

(declare-fun res!747415 () Bool)

(assert (=> b!1665824 (=> (not res!747415) (not e!1067760))))

(assert (=> b!1665824 (= res!747415 e!1067761)))

(declare-fun res!747412 () Bool)

(assert (=> b!1665824 (=> res!747412 e!1067761)))

(assert (=> b!1665824 (= res!747412 (not (isDefined!2879 lt!627147)))))

(declare-fun d!503540 () Bool)

(assert (=> d!503540 e!1067760))

(declare-fun res!747411 () Bool)

(assert (=> d!503540 (=> (not res!747411) (not e!1067760))))

(assert (=> d!503540 (= res!747411 (= (isDefined!2879 lt!627147) (isDefined!2878 (maxPrefixZipper!362 thiss!17113 rules!1846 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(assert (=> d!503540 (= lt!627147 e!1067764)))

(declare-fun c!271165 () Bool)

(assert (=> d!503540 (= c!271165 (and ((_ is Cons!18362) rules!1846) ((_ is Nil!18362) (t!151923 rules!1846))))))

(declare-fun lt!627151 () Unit!31104)

(declare-fun lt!627149 () Unit!31104)

(assert (=> d!503540 (= lt!627151 lt!627149)))

(declare-fun lt!627152 () List!18429)

(declare-fun lt!627150 () List!18429)

(assert (=> d!503540 (isPrefix!1493 lt!627152 lt!627150)))

(assert (=> d!503540 (= lt!627149 (lemmaIsPrefixRefl!1014 lt!627152 lt!627150))))

(assert (=> d!503540 (= lt!627150 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!503540 (= lt!627152 (list!7335 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))))

(assert (=> d!503540 (rulesValidInductive!1036 thiss!17113 rules!1846)))

(assert (=> d!503540 (= (maxPrefixZipperSequenceV2!274 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)) (print!1395 thiss!17113 (seqFromList!2208 tokens!457))) lt!627147)))

(assert (= (and d!503540 c!271165) b!1665827))

(assert (= (and d!503540 (not c!271165)) b!1665829))

(assert (= (or b!1665827 b!1665829) bm!106527))

(assert (= (and d!503540 res!747411) b!1665824))

(assert (= (and b!1665824 (not res!747412)) b!1665825))

(assert (= (and b!1665825 res!747414) b!1665826))

(assert (= (and b!1665824 res!747415) b!1665830))

(assert (= (and b!1665830 (not res!747413)) b!1665828))

(assert (= (and b!1665828 res!747410) b!1665831))

(declare-fun m!2029431 () Bool)

(assert (=> b!1665825 m!2029431))

(assert (=> b!1665825 m!2026127))

(assert (=> b!1665825 m!2026219))

(assert (=> b!1665825 m!2026219))

(assert (=> b!1665825 m!2029345))

(assert (=> b!1665825 m!2029345))

(assert (=> b!1665825 m!2029357))

(assert (=> d!503540 m!2029345))

(assert (=> d!503540 m!2029347))

(assert (=> d!503540 m!2026219))

(assert (=> d!503540 m!2029345))

(assert (=> d!503540 m!2026127))

(assert (=> d!503540 m!2026219))

(declare-fun m!2029433 () Bool)

(assert (=> d!503540 m!2029433))

(declare-fun m!2029435 () Bool)

(assert (=> d!503540 m!2029435))

(declare-fun m!2029437 () Bool)

(assert (=> d!503540 m!2029437))

(assert (=> d!503540 m!2027003))

(assert (=> bm!106527 m!2026127))

(assert (=> bm!106527 m!2026127))

(declare-fun m!2029439 () Bool)

(assert (=> bm!106527 m!2029439))

(assert (=> b!1665828 m!2029431))

(assert (=> b!1665828 m!2026127))

(assert (=> b!1665828 m!2026219))

(assert (=> b!1665828 m!2026219))

(assert (=> b!1665828 m!2026601))

(assert (=> b!1665828 m!2026601))

(assert (=> b!1665828 m!2029341))

(assert (=> b!1665826 m!2029431))

(assert (=> b!1665826 m!2029345))

(assert (=> b!1665826 m!2029357))

(assert (=> b!1665826 m!2026219))

(assert (=> b!1665826 m!2029345))

(assert (=> b!1665826 m!2026127))

(assert (=> b!1665826 m!2026219))

(declare-fun m!2029441 () Bool)

(assert (=> b!1665826 m!2029441))

(assert (=> b!1665824 m!2029437))

(assert (=> b!1665829 m!2026127))

(assert (=> b!1665829 m!2026127))

(declare-fun m!2029443 () Bool)

(assert (=> b!1665829 m!2029443))

(assert (=> b!1665830 m!2029437))

(assert (=> b!1665831 m!2029431))

(assert (=> b!1665831 m!2026127))

(assert (=> b!1665831 m!2026219))

(assert (=> b!1665831 m!2029441))

(assert (=> b!1665831 m!2026601))

(assert (=> b!1665831 m!2029341))

(assert (=> b!1665831 m!2026219))

(assert (=> b!1665831 m!2026601))

(assert (=> d!502784 d!503540))

(assert (=> d!502784 d!503512))

(assert (=> d!502784 d!502774))

(declare-fun d!503542 () Bool)

(assert (=> d!503542 (= (list!7332 (_1!10439 lt!626482)) (list!7336 (c!270829 (_1!10439 lt!626482))))))

(declare-fun bs!397668 () Bool)

(assert (= bs!397668 d!503542))

(declare-fun m!2029445 () Bool)

(assert (=> bs!397668 m!2029445))

(assert (=> d!502784 d!503542))

(declare-fun d!503544 () Bool)

(assert (=> d!503544 (= (list!7332 (_1!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))) (list!7336 (c!270829 (_1!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun bs!397669 () Bool)

(assert (= bs!397669 d!503544))

(declare-fun m!2029447 () Bool)

(assert (=> bs!397669 m!2029447))

(assert (=> d!502784 d!503544))

(assert (=> d!502784 d!503458))

(declare-fun d!503546 () Bool)

(declare-fun e!1067766 () Bool)

(assert (=> d!503546 e!1067766))

(declare-fun res!747416 () Bool)

(assert (=> d!503546 (=> res!747416 e!1067766)))

(declare-fun lt!627153 () Bool)

(assert (=> d!503546 (= res!747416 (not lt!627153))))

(assert (=> d!503546 (= lt!627153 (= lt!626459 (drop!936 (++!4996 lt!626455 lt!626459) (- (size!14602 (++!4996 lt!626455 lt!626459)) (size!14602 lt!626459)))))))

(assert (=> d!503546 (= (isSuffix!425 lt!626459 (++!4996 lt!626455 lt!626459)) lt!627153)))

(declare-fun b!1665832 () Bool)

(assert (=> b!1665832 (= e!1067766 (>= (size!14602 (++!4996 lt!626455 lt!626459)) (size!14602 lt!626459)))))

(assert (= (and d!503546 (not res!747416)) b!1665832))

(assert (=> d!503546 m!2026813))

(declare-fun m!2029449 () Bool)

(assert (=> d!503546 m!2029449))

(assert (=> d!503546 m!2029429))

(assert (=> d!503546 m!2026813))

(declare-fun m!2029451 () Bool)

(assert (=> d!503546 m!2029451))

(assert (=> b!1665832 m!2026813))

(assert (=> b!1665832 m!2029449))

(assert (=> b!1665832 m!2029429))

(assert (=> d!502784 d!503546))

(declare-fun d!503548 () Bool)

(assert (=> d!503548 (isSuffix!425 lt!626459 (++!4996 lt!626455 lt!626459))))

(declare-fun lt!627154 () Unit!31104)

(assert (=> d!503548 (= lt!627154 (choose!10029 lt!626455 lt!626459))))

(assert (=> d!503548 (= (lemmaConcatTwoListThenFSndIsSuffix!326 lt!626455 lt!626459) lt!627154)))

(declare-fun bs!397670 () Bool)

(assert (= bs!397670 d!503548))

(assert (=> bs!397670 m!2026813))

(assert (=> bs!397670 m!2026813))

(assert (=> bs!397670 m!2026817))

(declare-fun m!2029453 () Bool)

(assert (=> bs!397670 m!2029453))

(assert (=> d!502784 d!503548))

(declare-fun d!503550 () Bool)

(assert (=> d!503550 (= (list!7335 (_2!10439 lt!626482)) (list!7339 (c!270827 (_2!10439 lt!626482))))))

(declare-fun bs!397671 () Bool)

(assert (= bs!397671 d!503550))

(declare-fun m!2029455 () Bool)

(assert (=> bs!397671 m!2029455))

(assert (=> b!1664304 d!503550))

(declare-fun d!503552 () Bool)

(assert (=> d!503552 (= (list!7335 (_2!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457))))) (list!7339 (c!270827 (_2!10439 (lexRec!379 thiss!17113 rules!1846 (print!1395 thiss!17113 (seqFromList!2208 tokens!457)))))))))

(declare-fun bs!397672 () Bool)

(assert (= bs!397672 d!503552))

(declare-fun m!2029457 () Bool)

(assert (=> bs!397672 m!2029457))

(assert (=> b!1664304 d!503552))

(assert (=> b!1664304 d!503512))

(declare-fun b!1665833 () Bool)

(declare-fun e!1067767 () Bool)

(assert (=> b!1665833 (= e!1067767 tp_is_empty!7401)))

(declare-fun b!1665835 () Bool)

(declare-fun tp!480286 () Bool)

(assert (=> b!1665835 (= e!1067767 tp!480286)))

(assert (=> b!1664433 (= tp!479863 e!1067767)))

(declare-fun b!1665836 () Bool)

(declare-fun tp!480288 () Bool)

(declare-fun tp!480287 () Bool)

(assert (=> b!1665836 (= e!1067767 (and tp!480288 tp!480287))))

(declare-fun b!1665834 () Bool)

(declare-fun tp!480285 () Bool)

(declare-fun tp!480289 () Bool)

(assert (=> b!1665834 (= e!1067767 (and tp!480285 tp!480289))))

(assert (= (and b!1664433 ((_ is ElementMatch!4563) (regOne!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665833))

(assert (= (and b!1664433 ((_ is Concat!7889) (regOne!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665834))

(assert (= (and b!1664433 ((_ is Star!4563) (regOne!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665835))

(assert (= (and b!1664433 ((_ is Union!4563) (regOne!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665836))

(declare-fun b!1665837 () Bool)

(declare-fun e!1067768 () Bool)

(assert (=> b!1665837 (= e!1067768 tp_is_empty!7401)))

(declare-fun b!1665839 () Bool)

(declare-fun tp!480291 () Bool)

(assert (=> b!1665839 (= e!1067768 tp!480291)))

(assert (=> b!1664433 (= tp!479867 e!1067768)))

(declare-fun b!1665840 () Bool)

(declare-fun tp!480293 () Bool)

(declare-fun tp!480292 () Bool)

(assert (=> b!1665840 (= e!1067768 (and tp!480293 tp!480292))))

(declare-fun b!1665838 () Bool)

(declare-fun tp!480290 () Bool)

(declare-fun tp!480294 () Bool)

(assert (=> b!1665838 (= e!1067768 (and tp!480290 tp!480294))))

(assert (= (and b!1664433 ((_ is ElementMatch!4563) (regTwo!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665837))

(assert (= (and b!1664433 ((_ is Concat!7889) (regTwo!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665838))

(assert (= (and b!1664433 ((_ is Star!4563) (regTwo!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665839))

(assert (= (and b!1664433 ((_ is Union!4563) (regTwo!9638 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665840))

(declare-fun b!1665843 () Bool)

(declare-fun e!1067771 () Bool)

(assert (=> b!1665843 (= e!1067771 true)))

(declare-fun b!1665842 () Bool)

(declare-fun e!1067770 () Bool)

(assert (=> b!1665842 (= e!1067770 e!1067771)))

(declare-fun b!1665841 () Bool)

(declare-fun e!1067769 () Bool)

(assert (=> b!1665841 (= e!1067769 e!1067770)))

(assert (=> b!1664205 e!1067769))

(assert (= b!1665842 b!1665843))

(assert (= b!1665841 b!1665842))

(assert (= (and b!1664205 ((_ is Cons!18362) (t!151923 rules!1846))) b!1665841))

(assert (=> b!1665843 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8256 order!10997 lambda!67906))))

(assert (=> b!1665843 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846))))) (dynLambda!8256 order!10997 lambda!67906))))

(declare-fun b!1665844 () Bool)

(declare-fun e!1067772 () Bool)

(assert (=> b!1665844 (= e!1067772 tp_is_empty!7401)))

(declare-fun b!1665846 () Bool)

(declare-fun tp!480296 () Bool)

(assert (=> b!1665846 (= e!1067772 tp!480296)))

(assert (=> b!1664474 (= tp!479909 e!1067772)))

(declare-fun b!1665847 () Bool)

(declare-fun tp!480298 () Bool)

(declare-fun tp!480297 () Bool)

(assert (=> b!1665847 (= e!1067772 (and tp!480298 tp!480297))))

(declare-fun b!1665845 () Bool)

(declare-fun tp!480295 () Bool)

(declare-fun tp!480299 () Bool)

(assert (=> b!1665845 (= e!1067772 (and tp!480295 tp!480299))))

(assert (= (and b!1664474 ((_ is ElementMatch!4563) (reg!4892 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665844))

(assert (= (and b!1664474 ((_ is Concat!7889) (reg!4892 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665845))

(assert (= (and b!1664474 ((_ is Star!4563) (reg!4892 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665846))

(assert (= (and b!1664474 ((_ is Union!4563) (reg!4892 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665847))

(declare-fun b!1665850 () Bool)

(declare-fun b_free!45255 () Bool)

(declare-fun b_next!45959 () Bool)

(assert (=> b!1665850 (= b_free!45255 (not b_next!45959))))

(declare-fun tp!480301 () Bool)

(declare-fun b_and!118349 () Bool)

(assert (=> b!1665850 (= tp!480301 b_and!118349)))

(declare-fun b_free!45257 () Bool)

(declare-fun b_next!45961 () Bool)

(assert (=> b!1665850 (= b_free!45257 (not b_next!45961))))

(declare-fun tb!95499 () Bool)

(declare-fun t!152153 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152153) tb!95499))

(declare-fun result!115390 () Bool)

(assert (= result!115390 result!115302))

(assert (=> d!503270 t!152153))

(declare-fun t!152155 () Bool)

(declare-fun tb!95501 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152155) tb!95501))

(declare-fun result!115392 () Bool)

(assert (= result!115392 result!115254))

(assert (=> d!503046 t!152155))

(declare-fun tb!95503 () Bool)

(declare-fun t!152157 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152157) tb!95503))

(declare-fun result!115394 () Bool)

(assert (= result!115394 result!115378))

(assert (=> d!503508 t!152157))

(declare-fun t!152159 () Bool)

(declare-fun tb!95505 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152159) tb!95505))

(declare-fun result!115396 () Bool)

(assert (= result!115396 result!115266))

(assert (=> d!503082 t!152159))

(declare-fun tb!95507 () Bool)

(declare-fun t!152161 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!152161) tb!95507))

(declare-fun result!115398 () Bool)

(assert (= result!115398 result!115176))

(assert (=> b!1663926 t!152161))

(assert (=> d!503214 t!152161))

(declare-fun tb!95509 () Bool)

(declare-fun t!152163 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152163) tb!95509))

(declare-fun result!115400 () Bool)

(assert (= result!115400 result!115290))

(assert (=> b!1665235 t!152163))

(declare-fun tb!95511 () Bool)

(declare-fun t!152165 () Bool)

(assert (=> (and b!1665850 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!152165) tb!95511))

(declare-fun result!115402 () Bool)

(assert (= result!115402 result!115206))

(assert (=> b!1664307 t!152165))

(assert (=> d!502848 t!152165))

(declare-fun b_and!118351 () Bool)

(declare-fun tp!480300 () Bool)

(assert (=> b!1665850 (= tp!480300 (and (=> t!152157 result!115394) (=> t!152161 result!115398) (=> t!152153 result!115390) (=> t!152155 result!115392) (=> t!152165 result!115402) (=> t!152163 result!115400) (=> t!152159 result!115396) b_and!118351))))

(declare-fun e!1067775 () Bool)

(assert (=> b!1665850 (= e!1067775 (and tp!480301 tp!480300))))

(declare-fun e!1067776 () Bool)

(declare-fun tp!480302 () Bool)

(declare-fun b!1665849 () Bool)

(assert (=> b!1665849 (= e!1067776 (and tp!480302 (inv!23698 (tag!3519 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (inv!23701 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) e!1067775))))

(declare-fun b!1665848 () Bool)

(declare-fun e!1067773 () Bool)

(declare-fun tp!480303 () Bool)

(assert (=> b!1665848 (= e!1067773 (and e!1067776 tp!480303))))

(assert (=> b!1664500 (= tp!479942 e!1067773)))

(assert (= b!1665849 b!1665850))

(assert (= b!1665848 b!1665849))

(assert (= (and b!1664500 ((_ is Cons!18362) (t!151923 (t!151923 (t!151923 rules!1846))))) b!1665848))

(declare-fun m!2029459 () Bool)

(assert (=> b!1665849 m!2029459))

(declare-fun m!2029461 () Bool)

(assert (=> b!1665849 m!2029461))

(declare-fun b!1665851 () Bool)

(declare-fun e!1067777 () Bool)

(assert (=> b!1665851 (= e!1067777 tp_is_empty!7401)))

(declare-fun b!1665853 () Bool)

(declare-fun tp!480305 () Bool)

(assert (=> b!1665853 (= e!1067777 tp!480305)))

(assert (=> b!1664435 (= tp!479866 e!1067777)))

(declare-fun b!1665854 () Bool)

(declare-fun tp!480307 () Bool)

(declare-fun tp!480306 () Bool)

(assert (=> b!1665854 (= e!1067777 (and tp!480307 tp!480306))))

(declare-fun b!1665852 () Bool)

(declare-fun tp!480304 () Bool)

(declare-fun tp!480308 () Bool)

(assert (=> b!1665852 (= e!1067777 (and tp!480304 tp!480308))))

(assert (= (and b!1664435 ((_ is ElementMatch!4563) (regOne!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665851))

(assert (= (and b!1664435 ((_ is Concat!7889) (regOne!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665852))

(assert (= (and b!1664435 ((_ is Star!4563) (regOne!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665853))

(assert (= (and b!1664435 ((_ is Union!4563) (regOne!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665854))

(declare-fun b!1665855 () Bool)

(declare-fun e!1067778 () Bool)

(assert (=> b!1665855 (= e!1067778 tp_is_empty!7401)))

(declare-fun b!1665857 () Bool)

(declare-fun tp!480310 () Bool)

(assert (=> b!1665857 (= e!1067778 tp!480310)))

(assert (=> b!1664435 (= tp!479865 e!1067778)))

(declare-fun b!1665858 () Bool)

(declare-fun tp!480312 () Bool)

(declare-fun tp!480311 () Bool)

(assert (=> b!1665858 (= e!1067778 (and tp!480312 tp!480311))))

(declare-fun b!1665856 () Bool)

(declare-fun tp!480309 () Bool)

(declare-fun tp!480313 () Bool)

(assert (=> b!1665856 (= e!1067778 (and tp!480309 tp!480313))))

(assert (= (and b!1664435 ((_ is ElementMatch!4563) (regTwo!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665855))

(assert (= (and b!1664435 ((_ is Concat!7889) (regTwo!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665856))

(assert (= (and b!1664435 ((_ is Star!4563) (regTwo!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665857))

(assert (= (and b!1664435 ((_ is Union!4563) (regTwo!9639 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665858))

(declare-fun b!1665859 () Bool)

(declare-fun e!1067779 () Bool)

(assert (=> b!1665859 (= e!1067779 tp_is_empty!7401)))

(declare-fun b!1665861 () Bool)

(declare-fun tp!480315 () Bool)

(assert (=> b!1665861 (= e!1067779 tp!480315)))

(assert (=> b!1664484 (= tp!479918 e!1067779)))

(declare-fun b!1665862 () Bool)

(declare-fun tp!480317 () Bool)

(declare-fun tp!480316 () Bool)

(assert (=> b!1665862 (= e!1067779 (and tp!480317 tp!480316))))

(declare-fun b!1665860 () Bool)

(declare-fun tp!480314 () Bool)

(declare-fun tp!480318 () Bool)

(assert (=> b!1665860 (= e!1067779 (and tp!480314 tp!480318))))

(assert (= (and b!1664484 ((_ is ElementMatch!4563) (regOne!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665859))

(assert (= (and b!1664484 ((_ is Concat!7889) (regOne!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665860))

(assert (= (and b!1664484 ((_ is Star!4563) (regOne!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665861))

(assert (= (and b!1664484 ((_ is Union!4563) (regOne!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665862))

(declare-fun b!1665863 () Bool)

(declare-fun e!1067780 () Bool)

(assert (=> b!1665863 (= e!1067780 tp_is_empty!7401)))

(declare-fun b!1665865 () Bool)

(declare-fun tp!480320 () Bool)

(assert (=> b!1665865 (= e!1067780 tp!480320)))

(assert (=> b!1664484 (= tp!479922 e!1067780)))

(declare-fun b!1665866 () Bool)

(declare-fun tp!480322 () Bool)

(declare-fun tp!480321 () Bool)

(assert (=> b!1665866 (= e!1067780 (and tp!480322 tp!480321))))

(declare-fun b!1665864 () Bool)

(declare-fun tp!480319 () Bool)

(declare-fun tp!480323 () Bool)

(assert (=> b!1665864 (= e!1067780 (and tp!480319 tp!480323))))

(assert (= (and b!1664484 ((_ is ElementMatch!4563) (regTwo!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665863))

(assert (= (and b!1664484 ((_ is Concat!7889) (regTwo!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665864))

(assert (= (and b!1664484 ((_ is Star!4563) (regTwo!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665865))

(assert (= (and b!1664484 ((_ is Union!4563) (regTwo!9638 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665866))

(declare-fun b!1665867 () Bool)

(declare-fun e!1067781 () Bool)

(assert (=> b!1665867 (= e!1067781 tp_is_empty!7401)))

(declare-fun b!1665869 () Bool)

(declare-fun tp!480325 () Bool)

(assert (=> b!1665869 (= e!1067781 tp!480325)))

(assert (=> b!1664493 (= tp!479929 e!1067781)))

(declare-fun b!1665870 () Bool)

(declare-fun tp!480327 () Bool)

(declare-fun tp!480326 () Bool)

(assert (=> b!1665870 (= e!1067781 (and tp!480327 tp!480326))))

(declare-fun b!1665868 () Bool)

(declare-fun tp!480324 () Bool)

(declare-fun tp!480328 () Bool)

(assert (=> b!1665868 (= e!1067781 (and tp!480324 tp!480328))))

(assert (= (and b!1664493 ((_ is ElementMatch!4563) (reg!4892 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665867))

(assert (= (and b!1664493 ((_ is Concat!7889) (reg!4892 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665868))

(assert (= (and b!1664493 ((_ is Star!4563) (reg!4892 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665869))

(assert (= (and b!1664493 ((_ is Union!4563) (reg!4892 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665870))

(declare-fun b!1665871 () Bool)

(declare-fun e!1067782 () Bool)

(assert (=> b!1665871 (= e!1067782 tp_is_empty!7401)))

(declare-fun b!1665873 () Bool)

(declare-fun tp!480330 () Bool)

(assert (=> b!1665873 (= e!1067782 tp!480330)))

(assert (=> b!1664450 (= tp!479884 e!1067782)))

(declare-fun b!1665874 () Bool)

(declare-fun tp!480332 () Bool)

(declare-fun tp!480331 () Bool)

(assert (=> b!1665874 (= e!1067782 (and tp!480332 tp!480331))))

(declare-fun b!1665872 () Bool)

(declare-fun tp!480329 () Bool)

(declare-fun tp!480333 () Bool)

(assert (=> b!1665872 (= e!1067782 (and tp!480329 tp!480333))))

(assert (= (and b!1664450 ((_ is ElementMatch!4563) (regOne!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665871))

(assert (= (and b!1664450 ((_ is Concat!7889) (regOne!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665872))

(assert (= (and b!1664450 ((_ is Star!4563) (regOne!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665873))

(assert (= (and b!1664450 ((_ is Union!4563) (regOne!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665874))

(declare-fun b!1665875 () Bool)

(declare-fun e!1067783 () Bool)

(assert (=> b!1665875 (= e!1067783 tp_is_empty!7401)))

(declare-fun b!1665877 () Bool)

(declare-fun tp!480335 () Bool)

(assert (=> b!1665877 (= e!1067783 tp!480335)))

(assert (=> b!1664450 (= tp!479888 e!1067783)))

(declare-fun b!1665878 () Bool)

(declare-fun tp!480337 () Bool)

(declare-fun tp!480336 () Bool)

(assert (=> b!1665878 (= e!1067783 (and tp!480337 tp!480336))))

(declare-fun b!1665876 () Bool)

(declare-fun tp!480334 () Bool)

(declare-fun tp!480338 () Bool)

(assert (=> b!1665876 (= e!1067783 (and tp!480334 tp!480338))))

(assert (= (and b!1664450 ((_ is ElementMatch!4563) (regTwo!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665875))

(assert (= (and b!1664450 ((_ is Concat!7889) (regTwo!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665876))

(assert (= (and b!1664450 ((_ is Star!4563) (regTwo!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665877))

(assert (= (and b!1664450 ((_ is Union!4563) (regTwo!9638 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665878))

(declare-fun b!1665879 () Bool)

(declare-fun e!1067784 () Bool)

(declare-fun tp!480339 () Bool)

(assert (=> b!1665879 (= e!1067784 (and tp_is_empty!7401 tp!480339))))

(assert (=> b!1664467 (= tp!479902 e!1067784)))

(assert (= (and b!1664467 ((_ is Cons!18359) (innerList!6178 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))))) b!1665879))

(declare-fun b!1665880 () Bool)

(declare-fun e!1067785 () Bool)

(assert (=> b!1665880 (= e!1067785 tp_is_empty!7401)))

(declare-fun b!1665882 () Bool)

(declare-fun tp!480341 () Bool)

(assert (=> b!1665882 (= e!1067785 tp!480341)))

(assert (=> b!1664498 (= tp!479935 e!1067785)))

(declare-fun b!1665883 () Bool)

(declare-fun tp!480343 () Bool)

(declare-fun tp!480342 () Bool)

(assert (=> b!1665883 (= e!1067785 (and tp!480343 tp!480342))))

(declare-fun b!1665881 () Bool)

(declare-fun tp!480340 () Bool)

(declare-fun tp!480344 () Bool)

(assert (=> b!1665881 (= e!1067785 (and tp!480340 tp!480344))))

(assert (= (and b!1664498 ((_ is ElementMatch!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665880))

(assert (= (and b!1664498 ((_ is Concat!7889) (reg!4892 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665881))

(assert (= (and b!1664498 ((_ is Star!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665882))

(assert (= (and b!1664498 ((_ is Union!4563) (reg!4892 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665883))

(declare-fun b!1665884 () Bool)

(declare-fun e!1067786 () Bool)

(assert (=> b!1665884 (= e!1067786 tp_is_empty!7401)))

(declare-fun b!1665886 () Bool)

(declare-fun tp!480346 () Bool)

(assert (=> b!1665886 (= e!1067786 tp!480346)))

(assert (=> b!1664452 (= tp!479887 e!1067786)))

(declare-fun b!1665887 () Bool)

(declare-fun tp!480348 () Bool)

(declare-fun tp!480347 () Bool)

(assert (=> b!1665887 (= e!1067786 (and tp!480348 tp!480347))))

(declare-fun b!1665885 () Bool)

(declare-fun tp!480345 () Bool)

(declare-fun tp!480349 () Bool)

(assert (=> b!1665885 (= e!1067786 (and tp!480345 tp!480349))))

(assert (= (and b!1664452 ((_ is ElementMatch!4563) (regOne!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665884))

(assert (= (and b!1664452 ((_ is Concat!7889) (regOne!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665885))

(assert (= (and b!1664452 ((_ is Star!4563) (regOne!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665886))

(assert (= (and b!1664452 ((_ is Union!4563) (regOne!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665887))

(declare-fun b!1665888 () Bool)

(declare-fun e!1067787 () Bool)

(assert (=> b!1665888 (= e!1067787 tp_is_empty!7401)))

(declare-fun b!1665890 () Bool)

(declare-fun tp!480351 () Bool)

(assert (=> b!1665890 (= e!1067787 tp!480351)))

(assert (=> b!1664452 (= tp!479886 e!1067787)))

(declare-fun b!1665891 () Bool)

(declare-fun tp!480353 () Bool)

(declare-fun tp!480352 () Bool)

(assert (=> b!1665891 (= e!1067787 (and tp!480353 tp!480352))))

(declare-fun b!1665889 () Bool)

(declare-fun tp!480350 () Bool)

(declare-fun tp!480354 () Bool)

(assert (=> b!1665889 (= e!1067787 (and tp!480350 tp!480354))))

(assert (= (and b!1664452 ((_ is ElementMatch!4563) (regTwo!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665888))

(assert (= (and b!1664452 ((_ is Concat!7889) (regTwo!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665889))

(assert (= (and b!1664452 ((_ is Star!4563) (regTwo!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665890))

(assert (= (and b!1664452 ((_ is Union!4563) (regTwo!9639 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665891))

(declare-fun b!1665892 () Bool)

(declare-fun e!1067788 () Bool)

(assert (=> b!1665892 (= e!1067788 tp_is_empty!7401)))

(declare-fun b!1665894 () Bool)

(declare-fun tp!480356 () Bool)

(assert (=> b!1665894 (= e!1067788 tp!480356)))

(assert (=> b!1664437 (= tp!479868 e!1067788)))

(declare-fun b!1665895 () Bool)

(declare-fun tp!480358 () Bool)

(declare-fun tp!480357 () Bool)

(assert (=> b!1665895 (= e!1067788 (and tp!480358 tp!480357))))

(declare-fun b!1665893 () Bool)

(declare-fun tp!480355 () Bool)

(declare-fun tp!480359 () Bool)

(assert (=> b!1665893 (= e!1067788 (and tp!480355 tp!480359))))

(assert (= (and b!1664437 ((_ is ElementMatch!4563) (regOne!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665892))

(assert (= (and b!1664437 ((_ is Concat!7889) (regOne!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665893))

(assert (= (and b!1664437 ((_ is Star!4563) (regOne!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665894))

(assert (= (and b!1664437 ((_ is Union!4563) (regOne!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665895))

(declare-fun b!1665896 () Bool)

(declare-fun e!1067789 () Bool)

(assert (=> b!1665896 (= e!1067789 tp_is_empty!7401)))

(declare-fun b!1665898 () Bool)

(declare-fun tp!480361 () Bool)

(assert (=> b!1665898 (= e!1067789 tp!480361)))

(assert (=> b!1664437 (= tp!479872 e!1067789)))

(declare-fun b!1665899 () Bool)

(declare-fun tp!480363 () Bool)

(declare-fun tp!480362 () Bool)

(assert (=> b!1665899 (= e!1067789 (and tp!480363 tp!480362))))

(declare-fun b!1665897 () Bool)

(declare-fun tp!480360 () Bool)

(declare-fun tp!480364 () Bool)

(assert (=> b!1665897 (= e!1067789 (and tp!480360 tp!480364))))

(assert (= (and b!1664437 ((_ is ElementMatch!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665896))

(assert (= (and b!1664437 ((_ is Concat!7889) (regTwo!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665897))

(assert (= (and b!1664437 ((_ is Star!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665898))

(assert (= (and b!1664437 ((_ is Union!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665899))

(declare-fun b!1665900 () Bool)

(declare-fun e!1067790 () Bool)

(assert (=> b!1665900 (= e!1067790 tp_is_empty!7401)))

(declare-fun b!1665902 () Bool)

(declare-fun tp!480366 () Bool)

(assert (=> b!1665902 (= e!1067790 tp!480366)))

(assert (=> b!1664471 (= tp!479906 e!1067790)))

(declare-fun b!1665903 () Bool)

(declare-fun tp!480368 () Bool)

(declare-fun tp!480367 () Bool)

(assert (=> b!1665903 (= e!1067790 (and tp!480368 tp!480367))))

(declare-fun b!1665901 () Bool)

(declare-fun tp!480365 () Bool)

(declare-fun tp!480369 () Bool)

(assert (=> b!1665901 (= e!1067790 (and tp!480365 tp!480369))))

(assert (= (and b!1664471 ((_ is ElementMatch!4563) (regOne!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665900))

(assert (= (and b!1664471 ((_ is Concat!7889) (regOne!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665901))

(assert (= (and b!1664471 ((_ is Star!4563) (regOne!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665902))

(assert (= (and b!1664471 ((_ is Union!4563) (regOne!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665903))

(declare-fun b!1665904 () Bool)

(declare-fun e!1067791 () Bool)

(assert (=> b!1665904 (= e!1067791 tp_is_empty!7401)))

(declare-fun b!1665906 () Bool)

(declare-fun tp!480371 () Bool)

(assert (=> b!1665906 (= e!1067791 tp!480371)))

(assert (=> b!1664471 (= tp!479905 e!1067791)))

(declare-fun b!1665907 () Bool)

(declare-fun tp!480373 () Bool)

(declare-fun tp!480372 () Bool)

(assert (=> b!1665907 (= e!1067791 (and tp!480373 tp!480372))))

(declare-fun b!1665905 () Bool)

(declare-fun tp!480370 () Bool)

(declare-fun tp!480374 () Bool)

(assert (=> b!1665905 (= e!1067791 (and tp!480370 tp!480374))))

(assert (= (and b!1664471 ((_ is ElementMatch!4563) (regTwo!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665904))

(assert (= (and b!1664471 ((_ is Concat!7889) (regTwo!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665905))

(assert (= (and b!1664471 ((_ is Star!4563) (regTwo!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665906))

(assert (= (and b!1664471 ((_ is Union!4563) (regTwo!9639 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665907))

(declare-fun b!1665908 () Bool)

(declare-fun e!1067792 () Bool)

(assert (=> b!1665908 (= e!1067792 tp_is_empty!7401)))

(declare-fun b!1665910 () Bool)

(declare-fun tp!480376 () Bool)

(assert (=> b!1665910 (= e!1067792 tp!480376)))

(assert (=> b!1664490 (= tp!479926 e!1067792)))

(declare-fun b!1665911 () Bool)

(declare-fun tp!480378 () Bool)

(declare-fun tp!480377 () Bool)

(assert (=> b!1665911 (= e!1067792 (and tp!480378 tp!480377))))

(declare-fun b!1665909 () Bool)

(declare-fun tp!480375 () Bool)

(declare-fun tp!480379 () Bool)

(assert (=> b!1665909 (= e!1067792 (and tp!480375 tp!480379))))

(assert (= (and b!1664490 ((_ is ElementMatch!4563) (regOne!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665908))

(assert (= (and b!1664490 ((_ is Concat!7889) (regOne!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665909))

(assert (= (and b!1664490 ((_ is Star!4563) (regOne!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665910))

(assert (= (and b!1664490 ((_ is Union!4563) (regOne!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665911))

(declare-fun b!1665912 () Bool)

(declare-fun e!1067793 () Bool)

(assert (=> b!1665912 (= e!1067793 tp_is_empty!7401)))

(declare-fun b!1665914 () Bool)

(declare-fun tp!480381 () Bool)

(assert (=> b!1665914 (= e!1067793 tp!480381)))

(assert (=> b!1664490 (= tp!479925 e!1067793)))

(declare-fun b!1665915 () Bool)

(declare-fun tp!480383 () Bool)

(declare-fun tp!480382 () Bool)

(assert (=> b!1665915 (= e!1067793 (and tp!480383 tp!480382))))

(declare-fun b!1665913 () Bool)

(declare-fun tp!480380 () Bool)

(declare-fun tp!480384 () Bool)

(assert (=> b!1665913 (= e!1067793 (and tp!480380 tp!480384))))

(assert (= (and b!1664490 ((_ is ElementMatch!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665912))

(assert (= (and b!1664490 ((_ is Concat!7889) (regTwo!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665913))

(assert (= (and b!1664490 ((_ is Star!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665914))

(assert (= (and b!1664490 ((_ is Union!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665915))

(declare-fun b!1665916 () Bool)

(declare-fun e!1067794 () Bool)

(assert (=> b!1665916 (= e!1067794 tp_is_empty!7401)))

(declare-fun b!1665918 () Bool)

(declare-fun tp!480386 () Bool)

(assert (=> b!1665918 (= e!1067794 tp!480386)))

(assert (=> b!1664497 (= tp!479934 e!1067794)))

(declare-fun b!1665919 () Bool)

(declare-fun tp!480388 () Bool)

(declare-fun tp!480387 () Bool)

(assert (=> b!1665919 (= e!1067794 (and tp!480388 tp!480387))))

(declare-fun b!1665917 () Bool)

(declare-fun tp!480385 () Bool)

(declare-fun tp!480389 () Bool)

(assert (=> b!1665917 (= e!1067794 (and tp!480385 tp!480389))))

(assert (= (and b!1664497 ((_ is ElementMatch!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665916))

(assert (= (and b!1664497 ((_ is Concat!7889) (regOne!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665917))

(assert (= (and b!1664497 ((_ is Star!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665918))

(assert (= (and b!1664497 ((_ is Union!4563) (regOne!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665919))

(declare-fun b!1665920 () Bool)

(declare-fun e!1067795 () Bool)

(assert (=> b!1665920 (= e!1067795 tp_is_empty!7401)))

(declare-fun b!1665922 () Bool)

(declare-fun tp!480391 () Bool)

(assert (=> b!1665922 (= e!1067795 tp!480391)))

(assert (=> b!1664497 (= tp!479938 e!1067795)))

(declare-fun b!1665923 () Bool)

(declare-fun tp!480393 () Bool)

(declare-fun tp!480392 () Bool)

(assert (=> b!1665923 (= e!1067795 (and tp!480393 tp!480392))))

(declare-fun b!1665921 () Bool)

(declare-fun tp!480390 () Bool)

(declare-fun tp!480394 () Bool)

(assert (=> b!1665921 (= e!1067795 (and tp!480390 tp!480394))))

(assert (= (and b!1664497 ((_ is ElementMatch!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665920))

(assert (= (and b!1664497 ((_ is Concat!7889) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665921))

(assert (= (and b!1664497 ((_ is Star!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665922))

(assert (= (and b!1664497 ((_ is Union!4563) (regTwo!9638 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1665923))

(declare-fun b!1665924 () Bool)

(declare-fun e!1067796 () Bool)

(assert (=> b!1665924 (= e!1067796 tp_is_empty!7401)))

(declare-fun b!1665926 () Bool)

(declare-fun tp!480396 () Bool)

(assert (=> b!1665926 (= e!1067796 tp!480396)))

(assert (=> b!1664439 (= tp!479871 e!1067796)))

(declare-fun b!1665927 () Bool)

(declare-fun tp!480398 () Bool)

(declare-fun tp!480397 () Bool)

(assert (=> b!1665927 (= e!1067796 (and tp!480398 tp!480397))))

(declare-fun b!1665925 () Bool)

(declare-fun tp!480395 () Bool)

(declare-fun tp!480399 () Bool)

(assert (=> b!1665925 (= e!1067796 (and tp!480395 tp!480399))))

(assert (= (and b!1664439 ((_ is ElementMatch!4563) (regOne!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665924))

(assert (= (and b!1664439 ((_ is Concat!7889) (regOne!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665925))

(assert (= (and b!1664439 ((_ is Star!4563) (regOne!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665926))

(assert (= (and b!1664439 ((_ is Union!4563) (regOne!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665927))

(declare-fun b!1665928 () Bool)

(declare-fun e!1067797 () Bool)

(assert (=> b!1665928 (= e!1067797 tp_is_empty!7401)))

(declare-fun b!1665930 () Bool)

(declare-fun tp!480401 () Bool)

(assert (=> b!1665930 (= e!1067797 tp!480401)))

(assert (=> b!1664439 (= tp!479870 e!1067797)))

(declare-fun b!1665931 () Bool)

(declare-fun tp!480403 () Bool)

(declare-fun tp!480402 () Bool)

(assert (=> b!1665931 (= e!1067797 (and tp!480403 tp!480402))))

(declare-fun b!1665929 () Bool)

(declare-fun tp!480400 () Bool)

(declare-fun tp!480404 () Bool)

(assert (=> b!1665929 (= e!1067797 (and tp!480400 tp!480404))))

(assert (= (and b!1664439 ((_ is ElementMatch!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665928))

(assert (= (and b!1664439 ((_ is Concat!7889) (regTwo!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665929))

(assert (= (and b!1664439 ((_ is Star!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665930))

(assert (= (and b!1664439 ((_ is Union!4563) (regTwo!9639 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665931))

(declare-fun b!1665932 () Bool)

(declare-fun e!1067798 () Bool)

(assert (=> b!1665932 (= e!1067798 tp_is_empty!7401)))

(declare-fun b!1665934 () Bool)

(declare-fun tp!480406 () Bool)

(assert (=> b!1665934 (= e!1067798 tp!480406)))

(assert (=> b!1664488 (= tp!479923 e!1067798)))

(declare-fun b!1665935 () Bool)

(declare-fun tp!480408 () Bool)

(declare-fun tp!480407 () Bool)

(assert (=> b!1665935 (= e!1067798 (and tp!480408 tp!480407))))

(declare-fun b!1665933 () Bool)

(declare-fun tp!480405 () Bool)

(declare-fun tp!480409 () Bool)

(assert (=> b!1665933 (= e!1067798 (and tp!480405 tp!480409))))

(assert (= (and b!1664488 ((_ is ElementMatch!4563) (regOne!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665932))

(assert (= (and b!1664488 ((_ is Concat!7889) (regOne!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665933))

(assert (= (and b!1664488 ((_ is Star!4563) (regOne!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665934))

(assert (= (and b!1664488 ((_ is Union!4563) (regOne!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665935))

(declare-fun b!1665936 () Bool)

(declare-fun e!1067799 () Bool)

(assert (=> b!1665936 (= e!1067799 tp_is_empty!7401)))

(declare-fun b!1665938 () Bool)

(declare-fun tp!480411 () Bool)

(assert (=> b!1665938 (= e!1067799 tp!480411)))

(assert (=> b!1664488 (= tp!479927 e!1067799)))

(declare-fun b!1665939 () Bool)

(declare-fun tp!480413 () Bool)

(declare-fun tp!480412 () Bool)

(assert (=> b!1665939 (= e!1067799 (and tp!480413 tp!480412))))

(declare-fun b!1665937 () Bool)

(declare-fun tp!480410 () Bool)

(declare-fun tp!480414 () Bool)

(assert (=> b!1665937 (= e!1067799 (and tp!480410 tp!480414))))

(assert (= (and b!1664488 ((_ is ElementMatch!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665936))

(assert (= (and b!1664488 ((_ is Concat!7889) (regTwo!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665937))

(assert (= (and b!1664488 ((_ is Star!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665938))

(assert (= (and b!1664488 ((_ is Union!4563) (regTwo!9638 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665939))

(declare-fun b!1665940 () Bool)

(declare-fun e!1067800 () Bool)

(assert (=> b!1665940 (= e!1067800 tp_is_empty!7401)))

(declare-fun b!1665942 () Bool)

(declare-fun tp!480416 () Bool)

(assert (=> b!1665942 (= e!1067800 tp!480416)))

(assert (=> b!1664447 (= tp!479881 e!1067800)))

(declare-fun b!1665943 () Bool)

(declare-fun tp!480418 () Bool)

(declare-fun tp!480417 () Bool)

(assert (=> b!1665943 (= e!1067800 (and tp!480418 tp!480417))))

(declare-fun b!1665941 () Bool)

(declare-fun tp!480415 () Bool)

(declare-fun tp!480419 () Bool)

(assert (=> b!1665941 (= e!1067800 (and tp!480415 tp!480419))))

(assert (= (and b!1664447 ((_ is ElementMatch!4563) (regOne!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665940))

(assert (= (and b!1664447 ((_ is Concat!7889) (regOne!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665941))

(assert (= (and b!1664447 ((_ is Star!4563) (regOne!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665942))

(assert (= (and b!1664447 ((_ is Union!4563) (regOne!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665943))

(declare-fun b!1665944 () Bool)

(declare-fun e!1067801 () Bool)

(assert (=> b!1665944 (= e!1067801 tp_is_empty!7401)))

(declare-fun b!1665946 () Bool)

(declare-fun tp!480421 () Bool)

(assert (=> b!1665946 (= e!1067801 tp!480421)))

(assert (=> b!1664447 (= tp!479880 e!1067801)))

(declare-fun b!1665947 () Bool)

(declare-fun tp!480423 () Bool)

(declare-fun tp!480422 () Bool)

(assert (=> b!1665947 (= e!1067801 (and tp!480423 tp!480422))))

(declare-fun b!1665945 () Bool)

(declare-fun tp!480420 () Bool)

(declare-fun tp!480424 () Bool)

(assert (=> b!1665945 (= e!1067801 (and tp!480420 tp!480424))))

(assert (= (and b!1664447 ((_ is ElementMatch!4563) (regTwo!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665944))

(assert (= (and b!1664447 ((_ is Concat!7889) (regTwo!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665945))

(assert (= (and b!1664447 ((_ is Star!4563) (regTwo!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665946))

(assert (= (and b!1664447 ((_ is Union!4563) (regTwo!9639 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665947))

(declare-fun b!1665948 () Bool)

(declare-fun e!1067802 () Bool)

(declare-fun tp!480425 () Bool)

(assert (=> b!1665948 (= e!1067802 (and tp_is_empty!7401 tp!480425))))

(assert (=> b!1664495 (= tp!479933 e!1067802)))

(assert (= (and b!1664495 ((_ is Cons!18359) (t!151920 (t!151920 (originalCharacters!4049 (h!23762 tokens!457)))))) b!1665948))

(declare-fun b!1665949 () Bool)

(declare-fun e!1067803 () Bool)

(assert (=> b!1665949 (= e!1067803 tp_is_empty!7401)))

(declare-fun b!1665951 () Bool)

(declare-fun tp!480427 () Bool)

(assert (=> b!1665951 (= e!1067803 tp!480427)))

(assert (=> b!1664454 (= tp!479889 e!1067803)))

(declare-fun b!1665952 () Bool)

(declare-fun tp!480429 () Bool)

(declare-fun tp!480428 () Bool)

(assert (=> b!1665952 (= e!1067803 (and tp!480429 tp!480428))))

(declare-fun b!1665950 () Bool)

(declare-fun tp!480426 () Bool)

(declare-fun tp!480430 () Bool)

(assert (=> b!1665950 (= e!1067803 (and tp!480426 tp!480430))))

(assert (= (and b!1664454 ((_ is ElementMatch!4563) (regOne!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665949))

(assert (= (and b!1664454 ((_ is Concat!7889) (regOne!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665950))

(assert (= (and b!1664454 ((_ is Star!4563) (regOne!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665951))

(assert (= (and b!1664454 ((_ is Union!4563) (regOne!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665952))

(declare-fun b!1665953 () Bool)

(declare-fun e!1067804 () Bool)

(assert (=> b!1665953 (= e!1067804 tp_is_empty!7401)))

(declare-fun b!1665955 () Bool)

(declare-fun tp!480432 () Bool)

(assert (=> b!1665955 (= e!1067804 tp!480432)))

(assert (=> b!1664454 (= tp!479893 e!1067804)))

(declare-fun b!1665956 () Bool)

(declare-fun tp!480434 () Bool)

(declare-fun tp!480433 () Bool)

(assert (=> b!1665956 (= e!1067804 (and tp!480434 tp!480433))))

(declare-fun b!1665954 () Bool)

(declare-fun tp!480431 () Bool)

(declare-fun tp!480435 () Bool)

(assert (=> b!1665954 (= e!1067804 (and tp!480431 tp!480435))))

(assert (= (and b!1664454 ((_ is ElementMatch!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665953))

(assert (= (and b!1664454 ((_ is Concat!7889) (regTwo!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665954))

(assert (= (and b!1664454 ((_ is Star!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665955))

(assert (= (and b!1664454 ((_ is Union!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665956))

(declare-fun b!1665957 () Bool)

(declare-fun e!1067805 () Bool)

(declare-fun tp!480436 () Bool)

(assert (=> b!1665957 (= e!1067805 (and tp_is_empty!7401 tp!480436))))

(assert (=> b!1664441 (= tp!479874 e!1067805)))

(assert (= (and b!1664441 ((_ is Cons!18359) (originalCharacters!4049 (h!23762 (t!151922 (t!151922 tokens!457)))))) b!1665957))

(declare-fun e!1067807 () Bool)

(declare-fun b!1665958 () Bool)

(declare-fun tp!480437 () Bool)

(declare-fun tp!480438 () Bool)

(assert (=> b!1665958 (= e!1067807 (and (inv!23705 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))) tp!480437 (inv!23705 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))) tp!480438))))

(declare-fun b!1665960 () Bool)

(declare-fun e!1067806 () Bool)

(declare-fun tp!480439 () Bool)

(assert (=> b!1665960 (= e!1067806 tp!480439)))

(declare-fun b!1665959 () Bool)

(assert (=> b!1665959 (= e!1067807 (and (inv!23712 (xs!8962 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))) e!1067806))))

(assert (=> b!1664309 (= tp!479781 (and (inv!23705 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457)))))) e!1067807))))

(assert (= (and b!1664309 ((_ is Node!6118) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))) b!1665958))

(assert (= b!1665959 b!1665960))

(assert (= (and b!1664309 ((_ is Leaf!8956) (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (value!101870 (h!23762 (t!151922 tokens!457))))))) b!1665959))

(declare-fun m!2029463 () Bool)

(assert (=> b!1665958 m!2029463))

(declare-fun m!2029465 () Bool)

(assert (=> b!1665958 m!2029465))

(declare-fun m!2029467 () Bool)

(assert (=> b!1665959 m!2029467))

(assert (=> b!1664309 m!2026831))

(declare-fun b!1665961 () Bool)

(declare-fun e!1067808 () Bool)

(assert (=> b!1665961 (= e!1067808 tp_is_empty!7401)))

(declare-fun b!1665963 () Bool)

(declare-fun tp!480441 () Bool)

(assert (=> b!1665963 (= e!1067808 tp!480441)))

(assert (=> b!1664486 (= tp!479921 e!1067808)))

(declare-fun b!1665964 () Bool)

(declare-fun tp!480443 () Bool)

(declare-fun tp!480442 () Bool)

(assert (=> b!1665964 (= e!1067808 (and tp!480443 tp!480442))))

(declare-fun b!1665962 () Bool)

(declare-fun tp!480440 () Bool)

(declare-fun tp!480444 () Bool)

(assert (=> b!1665962 (= e!1067808 (and tp!480440 tp!480444))))

(assert (= (and b!1664486 ((_ is ElementMatch!4563) (regOne!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665961))

(assert (= (and b!1664486 ((_ is Concat!7889) (regOne!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665962))

(assert (= (and b!1664486 ((_ is Star!4563) (regOne!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665963))

(assert (= (and b!1664486 ((_ is Union!4563) (regOne!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665964))

(declare-fun b!1665965 () Bool)

(declare-fun e!1067809 () Bool)

(assert (=> b!1665965 (= e!1067809 tp_is_empty!7401)))

(declare-fun b!1665967 () Bool)

(declare-fun tp!480446 () Bool)

(assert (=> b!1665967 (= e!1067809 tp!480446)))

(assert (=> b!1664486 (= tp!479920 e!1067809)))

(declare-fun b!1665968 () Bool)

(declare-fun tp!480448 () Bool)

(declare-fun tp!480447 () Bool)

(assert (=> b!1665968 (= e!1067809 (and tp!480448 tp!480447))))

(declare-fun b!1665966 () Bool)

(declare-fun tp!480445 () Bool)

(declare-fun tp!480449 () Bool)

(assert (=> b!1665966 (= e!1067809 (and tp!480445 tp!480449))))

(assert (= (and b!1664486 ((_ is ElementMatch!4563) (regTwo!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665965))

(assert (= (and b!1664486 ((_ is Concat!7889) (regTwo!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665966))

(assert (= (and b!1664486 ((_ is Star!4563) (regTwo!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665967))

(assert (= (and b!1664486 ((_ is Union!4563) (regTwo!9639 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1665968))

(declare-fun b!1665969 () Bool)

(declare-fun e!1067810 () Bool)

(assert (=> b!1665969 (= e!1067810 tp_is_empty!7401)))

(declare-fun b!1665971 () Bool)

(declare-fun tp!480451 () Bool)

(assert (=> b!1665971 (= e!1067810 tp!480451)))

(assert (=> b!1664445 (= tp!479878 e!1067810)))

(declare-fun b!1665972 () Bool)

(declare-fun tp!480453 () Bool)

(declare-fun tp!480452 () Bool)

(assert (=> b!1665972 (= e!1067810 (and tp!480453 tp!480452))))

(declare-fun b!1665970 () Bool)

(declare-fun tp!480450 () Bool)

(declare-fun tp!480454 () Bool)

(assert (=> b!1665970 (= e!1067810 (and tp!480450 tp!480454))))

(assert (= (and b!1664445 ((_ is ElementMatch!4563) (regOne!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665969))

(assert (= (and b!1664445 ((_ is Concat!7889) (regOne!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665970))

(assert (= (and b!1664445 ((_ is Star!4563) (regOne!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665971))

(assert (= (and b!1664445 ((_ is Union!4563) (regOne!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665972))

(declare-fun b!1665973 () Bool)

(declare-fun e!1067811 () Bool)

(assert (=> b!1665973 (= e!1067811 tp_is_empty!7401)))

(declare-fun b!1665975 () Bool)

(declare-fun tp!480456 () Bool)

(assert (=> b!1665975 (= e!1067811 tp!480456)))

(assert (=> b!1664445 (= tp!479882 e!1067811)))

(declare-fun b!1665976 () Bool)

(declare-fun tp!480458 () Bool)

(declare-fun tp!480457 () Bool)

(assert (=> b!1665976 (= e!1067811 (and tp!480458 tp!480457))))

(declare-fun b!1665974 () Bool)

(declare-fun tp!480455 () Bool)

(declare-fun tp!480459 () Bool)

(assert (=> b!1665974 (= e!1067811 (and tp!480455 tp!480459))))

(assert (= (and b!1664445 ((_ is ElementMatch!4563) (regTwo!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665973))

(assert (= (and b!1664445 ((_ is Concat!7889) (regTwo!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665974))

(assert (= (and b!1664445 ((_ is Star!4563) (regTwo!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665975))

(assert (= (and b!1664445 ((_ is Union!4563) (regTwo!9638 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1665976))

(declare-fun b!1665977 () Bool)

(declare-fun e!1067812 () Bool)

(assert (=> b!1665977 (= e!1067812 tp_is_empty!7401)))

(declare-fun b!1665979 () Bool)

(declare-fun tp!480461 () Bool)

(assert (=> b!1665979 (= e!1067812 tp!480461)))

(assert (=> b!1664469 (= tp!479903 e!1067812)))

(declare-fun b!1665980 () Bool)

(declare-fun tp!480463 () Bool)

(declare-fun tp!480462 () Bool)

(assert (=> b!1665980 (= e!1067812 (and tp!480463 tp!480462))))

(declare-fun b!1665978 () Bool)

(declare-fun tp!480460 () Bool)

(declare-fun tp!480464 () Bool)

(assert (=> b!1665978 (= e!1067812 (and tp!480460 tp!480464))))

(assert (= (and b!1664469 ((_ is ElementMatch!4563) (regOne!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665977))

(assert (= (and b!1664469 ((_ is Concat!7889) (regOne!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665978))

(assert (= (and b!1664469 ((_ is Star!4563) (regOne!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665979))

(assert (= (and b!1664469 ((_ is Union!4563) (regOne!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665980))

(declare-fun b!1665981 () Bool)

(declare-fun e!1067813 () Bool)

(assert (=> b!1665981 (= e!1067813 tp_is_empty!7401)))

(declare-fun b!1665983 () Bool)

(declare-fun tp!480466 () Bool)

(assert (=> b!1665983 (= e!1067813 tp!480466)))

(assert (=> b!1664469 (= tp!479907 e!1067813)))

(declare-fun b!1665984 () Bool)

(declare-fun tp!480468 () Bool)

(declare-fun tp!480467 () Bool)

(assert (=> b!1665984 (= e!1067813 (and tp!480468 tp!480467))))

(declare-fun b!1665982 () Bool)

(declare-fun tp!480465 () Bool)

(declare-fun tp!480469 () Bool)

(assert (=> b!1665982 (= e!1067813 (and tp!480465 tp!480469))))

(assert (= (and b!1664469 ((_ is ElementMatch!4563) (regTwo!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665981))

(assert (= (and b!1664469 ((_ is Concat!7889) (regTwo!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665982))

(assert (= (and b!1664469 ((_ is Star!4563) (regTwo!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665983))

(assert (= (and b!1664469 ((_ is Union!4563) (regTwo!9638 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665984))

(declare-fun b!1665985 () Bool)

(declare-fun e!1067814 () Bool)

(assert (=> b!1665985 (= e!1067814 tp_is_empty!7401)))

(declare-fun b!1665987 () Bool)

(declare-fun tp!480471 () Bool)

(assert (=> b!1665987 (= e!1067814 tp!480471)))

(assert (=> b!1664478 (= tp!479914 e!1067814)))

(declare-fun b!1665988 () Bool)

(declare-fun tp!480473 () Bool)

(declare-fun tp!480472 () Bool)

(assert (=> b!1665988 (= e!1067814 (and tp!480473 tp!480472))))

(declare-fun b!1665986 () Bool)

(declare-fun tp!480470 () Bool)

(declare-fun tp!480474 () Bool)

(assert (=> b!1665986 (= e!1067814 (and tp!480470 tp!480474))))

(assert (= (and b!1664478 ((_ is ElementMatch!4563) (reg!4892 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665985))

(assert (= (and b!1664478 ((_ is Concat!7889) (reg!4892 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665986))

(assert (= (and b!1664478 ((_ is Star!4563) (reg!4892 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665987))

(assert (= (and b!1664478 ((_ is Union!4563) (reg!4892 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1665988))

(declare-fun b!1665989 () Bool)

(declare-fun e!1067815 () Bool)

(assert (=> b!1665989 (= e!1067815 tp_is_empty!7401)))

(declare-fun b!1665991 () Bool)

(declare-fun tp!480476 () Bool)

(assert (=> b!1665991 (= e!1067815 tp!480476)))

(assert (=> b!1664456 (= tp!479892 e!1067815)))

(declare-fun b!1665992 () Bool)

(declare-fun tp!480478 () Bool)

(declare-fun tp!480477 () Bool)

(assert (=> b!1665992 (= e!1067815 (and tp!480478 tp!480477))))

(declare-fun b!1665990 () Bool)

(declare-fun tp!480475 () Bool)

(declare-fun tp!480479 () Bool)

(assert (=> b!1665990 (= e!1067815 (and tp!480475 tp!480479))))

(assert (= (and b!1664456 ((_ is ElementMatch!4563) (regOne!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665989))

(assert (= (and b!1664456 ((_ is Concat!7889) (regOne!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665990))

(assert (= (and b!1664456 ((_ is Star!4563) (regOne!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665991))

(assert (= (and b!1664456 ((_ is Union!4563) (regOne!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665992))

(declare-fun b!1665993 () Bool)

(declare-fun e!1067816 () Bool)

(assert (=> b!1665993 (= e!1067816 tp_is_empty!7401)))

(declare-fun b!1665995 () Bool)

(declare-fun tp!480481 () Bool)

(assert (=> b!1665995 (= e!1067816 tp!480481)))

(assert (=> b!1664456 (= tp!479891 e!1067816)))

(declare-fun b!1665996 () Bool)

(declare-fun tp!480483 () Bool)

(declare-fun tp!480482 () Bool)

(assert (=> b!1665996 (= e!1067816 (and tp!480483 tp!480482))))

(declare-fun b!1665994 () Bool)

(declare-fun tp!480480 () Bool)

(declare-fun tp!480484 () Bool)

(assert (=> b!1665994 (= e!1067816 (and tp!480480 tp!480484))))

(assert (= (and b!1664456 ((_ is ElementMatch!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665993))

(assert (= (and b!1664456 ((_ is Concat!7889) (regTwo!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665994))

(assert (= (and b!1664456 ((_ is Star!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665995))

(assert (= (and b!1664456 ((_ is Union!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1665996))

(declare-fun b!1665997 () Bool)

(declare-fun e!1067817 () Bool)

(assert (=> b!1665997 (= e!1067817 tp_is_empty!7401)))

(declare-fun b!1665999 () Bool)

(declare-fun tp!480486 () Bool)

(assert (=> b!1665999 (= e!1067817 tp!480486)))

(assert (=> b!1664492 (= tp!479928 e!1067817)))

(declare-fun b!1666000 () Bool)

(declare-fun tp!480488 () Bool)

(declare-fun tp!480487 () Bool)

(assert (=> b!1666000 (= e!1067817 (and tp!480488 tp!480487))))

(declare-fun b!1665998 () Bool)

(declare-fun tp!480485 () Bool)

(declare-fun tp!480489 () Bool)

(assert (=> b!1665998 (= e!1067817 (and tp!480485 tp!480489))))

(assert (= (and b!1664492 ((_ is ElementMatch!4563) (regOne!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665997))

(assert (= (and b!1664492 ((_ is Concat!7889) (regOne!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665998))

(assert (= (and b!1664492 ((_ is Star!4563) (regOne!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1665999))

(assert (= (and b!1664492 ((_ is Union!4563) (regOne!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666000))

(declare-fun b!1666001 () Bool)

(declare-fun e!1067818 () Bool)

(assert (=> b!1666001 (= e!1067818 tp_is_empty!7401)))

(declare-fun b!1666003 () Bool)

(declare-fun tp!480491 () Bool)

(assert (=> b!1666003 (= e!1067818 tp!480491)))

(assert (=> b!1664492 (= tp!479932 e!1067818)))

(declare-fun b!1666004 () Bool)

(declare-fun tp!480493 () Bool)

(declare-fun tp!480492 () Bool)

(assert (=> b!1666004 (= e!1067818 (and tp!480493 tp!480492))))

(declare-fun b!1666002 () Bool)

(declare-fun tp!480490 () Bool)

(declare-fun tp!480494 () Bool)

(assert (=> b!1666002 (= e!1067818 (and tp!480490 tp!480494))))

(assert (= (and b!1664492 ((_ is ElementMatch!4563) (regTwo!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666001))

(assert (= (and b!1664492 ((_ is Concat!7889) (regTwo!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666002))

(assert (= (and b!1664492 ((_ is Star!4563) (regTwo!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666003))

(assert (= (and b!1664492 ((_ is Union!4563) (regTwo!9638 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666004))

(declare-fun b!1666005 () Bool)

(declare-fun e!1067819 () Bool)

(assert (=> b!1666005 (= e!1067819 tp_is_empty!7401)))

(declare-fun b!1666007 () Bool)

(declare-fun tp!480496 () Bool)

(assert (=> b!1666007 (= e!1067819 tp!480496)))

(assert (=> b!1664475 (= tp!479911 e!1067819)))

(declare-fun b!1666008 () Bool)

(declare-fun tp!480498 () Bool)

(declare-fun tp!480497 () Bool)

(assert (=> b!1666008 (= e!1067819 (and tp!480498 tp!480497))))

(declare-fun b!1666006 () Bool)

(declare-fun tp!480495 () Bool)

(declare-fun tp!480499 () Bool)

(assert (=> b!1666006 (= e!1067819 (and tp!480495 tp!480499))))

(assert (= (and b!1664475 ((_ is ElementMatch!4563) (regOne!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666005))

(assert (= (and b!1664475 ((_ is Concat!7889) (regOne!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666006))

(assert (= (and b!1664475 ((_ is Star!4563) (regOne!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666007))

(assert (= (and b!1664475 ((_ is Union!4563) (regOne!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666008))

(declare-fun b!1666009 () Bool)

(declare-fun e!1067820 () Bool)

(assert (=> b!1666009 (= e!1067820 tp_is_empty!7401)))

(declare-fun b!1666011 () Bool)

(declare-fun tp!480501 () Bool)

(assert (=> b!1666011 (= e!1067820 tp!480501)))

(assert (=> b!1664475 (= tp!479910 e!1067820)))

(declare-fun b!1666012 () Bool)

(declare-fun tp!480503 () Bool)

(declare-fun tp!480502 () Bool)

(assert (=> b!1666012 (= e!1067820 (and tp!480503 tp!480502))))

(declare-fun b!1666010 () Bool)

(declare-fun tp!480500 () Bool)

(declare-fun tp!480504 () Bool)

(assert (=> b!1666010 (= e!1067820 (and tp!480500 tp!480504))))

(assert (= (and b!1664475 ((_ is ElementMatch!4563) (regTwo!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666009))

(assert (= (and b!1664475 ((_ is Concat!7889) (regTwo!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666010))

(assert (= (and b!1664475 ((_ is Star!4563) (regTwo!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666011))

(assert (= (and b!1664475 ((_ is Union!4563) (regTwo!9639 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666012))

(declare-fun b!1666016 () Bool)

(declare-fun b_free!45259 () Bool)

(declare-fun b_next!45963 () Bool)

(assert (=> b!1666016 (= b_free!45259 (not b_next!45963))))

(declare-fun tp!480508 () Bool)

(declare-fun b_and!118353 () Bool)

(assert (=> b!1666016 (= tp!480508 b_and!118353)))

(declare-fun b_free!45261 () Bool)

(declare-fun b_next!45965 () Bool)

(assert (=> b!1666016 (= b_free!45261 (not b_next!45965))))

(declare-fun t!152167 () Bool)

(declare-fun tb!95513 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (Cons!18361 (h!23762 (t!151922 tokens!457)) (t!151922 (t!151922 tokens!457))))))))) t!152167) tb!95513))

(declare-fun result!115404 () Bool)

(assert (= result!115404 result!115302))

(assert (=> d!503270 t!152167))

(declare-fun t!152169 () Bool)

(declare-fun tb!95515 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (apply!4921 (seqFromList!2208 tokens!457) 0))))) t!152169) tb!95515))

(declare-fun result!115406 () Bool)

(assert (= result!115406 result!115254))

(assert (=> d!503046 t!152169))

(declare-fun tb!95517 () Bool)

(declare-fun t!152171 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (_1!10445 (v!24758 lt!626472)))))) t!152171) tb!95517))

(declare-fun result!115408 () Bool)

(assert (= result!115408 result!115378))

(assert (=> d!503508 t!152171))

(declare-fun t!152173 () Bool)

(declare-fun tb!95519 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (list!7332 (seqFromList!2208 tokens!457))))))) t!152173) tb!95519))

(declare-fun result!115410 () Bool)

(assert (= result!115410 result!115266))

(assert (=> d!503082 t!152173))

(declare-fun t!152175 () Bool)

(declare-fun tb!95521 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457))))) t!152175) tb!95521))

(declare-fun result!115412 () Bool)

(assert (= result!115412 result!115176))

(assert (=> b!1663926 t!152175))

(assert (=> d!503214 t!152175))

(declare-fun t!152177 () Bool)

(declare-fun tb!95523 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) t!152177) tb!95523))

(declare-fun result!115414 () Bool)

(assert (= result!115414 result!115290))

(assert (=> b!1665235 t!152177))

(declare-fun t!152179 () Bool)

(declare-fun tb!95525 () Bool)

(assert (=> (and b!1666016 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457)))))) t!152179) tb!95525))

(declare-fun result!115416 () Bool)

(assert (= result!115416 result!115206))

(assert (=> b!1664307 t!152179))

(assert (=> d!502848 t!152179))

(declare-fun b_and!118355 () Bool)

(declare-fun tp!480509 () Bool)

(assert (=> b!1666016 (= tp!480509 (and (=> t!152169 result!115406) (=> t!152167 result!115404) (=> t!152177 result!115414) (=> t!152171 result!115408) (=> t!152175 result!115412) (=> t!152179 result!115416) (=> t!152173 result!115410) b_and!118355))))

(declare-fun b!1666015 () Bool)

(declare-fun tp!480507 () Bool)

(declare-fun e!1067822 () Bool)

(declare-fun e!1067821 () Bool)

(assert (=> b!1666015 (= e!1067821 (and tp!480507 (inv!23698 (tag!3519 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (inv!23701 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) e!1067822))))

(assert (=> b!1666016 (= e!1067822 (and tp!480508 tp!480509))))

(declare-fun e!1067826 () Bool)

(assert (=> b!1664440 (= tp!479873 e!1067826)))

(declare-fun tp!480505 () Bool)

(declare-fun e!1067824 () Bool)

(declare-fun b!1666013 () Bool)

(assert (=> b!1666013 (= e!1067826 (and (inv!23702 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))) e!1067824 tp!480505))))

(declare-fun b!1666014 () Bool)

(declare-fun tp!480506 () Bool)

(assert (=> b!1666014 (= e!1067824 (and (inv!21 (value!101870 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457)))))) e!1067821 tp!480506))))

(assert (= b!1666015 b!1666016))

(assert (= b!1666014 b!1666015))

(assert (= b!1666013 b!1666014))

(assert (= (and b!1664440 ((_ is Cons!18361) (t!151922 (t!151922 (t!151922 tokens!457))))) b!1666013))

(declare-fun m!2029469 () Bool)

(assert (=> b!1666015 m!2029469))

(declare-fun m!2029471 () Bool)

(assert (=> b!1666015 m!2029471))

(declare-fun m!2029473 () Bool)

(assert (=> b!1666013 m!2029473))

(declare-fun m!2029475 () Bool)

(assert (=> b!1666014 m!2029475))

(declare-fun b!1666017 () Bool)

(declare-fun e!1067827 () Bool)

(assert (=> b!1666017 (= e!1067827 tp_is_empty!7401)))

(declare-fun b!1666019 () Bool)

(declare-fun tp!480511 () Bool)

(assert (=> b!1666019 (= e!1067827 tp!480511)))

(assert (=> b!1664485 (= tp!479919 e!1067827)))

(declare-fun b!1666020 () Bool)

(declare-fun tp!480513 () Bool)

(declare-fun tp!480512 () Bool)

(assert (=> b!1666020 (= e!1067827 (and tp!480513 tp!480512))))

(declare-fun b!1666018 () Bool)

(declare-fun tp!480510 () Bool)

(declare-fun tp!480514 () Bool)

(assert (=> b!1666018 (= e!1067827 (and tp!480510 tp!480514))))

(assert (= (and b!1664485 ((_ is ElementMatch!4563) (reg!4892 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666017))

(assert (= (and b!1664485 ((_ is Concat!7889) (reg!4892 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666018))

(assert (= (and b!1664485 ((_ is Star!4563) (reg!4892 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666019))

(assert (= (and b!1664485 ((_ is Union!4563) (reg!4892 (regOne!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666020))

(declare-fun b!1666021 () Bool)

(declare-fun e!1067828 () Bool)

(assert (=> b!1666021 (= e!1067828 tp_is_empty!7401)))

(declare-fun b!1666023 () Bool)

(declare-fun tp!480516 () Bool)

(assert (=> b!1666023 (= e!1067828 tp!480516)))

(assert (=> b!1664494 (= tp!479931 e!1067828)))

(declare-fun b!1666024 () Bool)

(declare-fun tp!480518 () Bool)

(declare-fun tp!480517 () Bool)

(assert (=> b!1666024 (= e!1067828 (and tp!480518 tp!480517))))

(declare-fun b!1666022 () Bool)

(declare-fun tp!480515 () Bool)

(declare-fun tp!480519 () Bool)

(assert (=> b!1666022 (= e!1067828 (and tp!480515 tp!480519))))

(assert (= (and b!1664494 ((_ is ElementMatch!4563) (regOne!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666021))

(assert (= (and b!1664494 ((_ is Concat!7889) (regOne!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666022))

(assert (= (and b!1664494 ((_ is Star!4563) (regOne!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666023))

(assert (= (and b!1664494 ((_ is Union!4563) (regOne!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666024))

(declare-fun b!1666025 () Bool)

(declare-fun e!1067829 () Bool)

(assert (=> b!1666025 (= e!1067829 tp_is_empty!7401)))

(declare-fun b!1666027 () Bool)

(declare-fun tp!480521 () Bool)

(assert (=> b!1666027 (= e!1067829 tp!480521)))

(assert (=> b!1664494 (= tp!479930 e!1067829)))

(declare-fun b!1666028 () Bool)

(declare-fun tp!480523 () Bool)

(declare-fun tp!480522 () Bool)

(assert (=> b!1666028 (= e!1067829 (and tp!480523 tp!480522))))

(declare-fun b!1666026 () Bool)

(declare-fun tp!480520 () Bool)

(declare-fun tp!480524 () Bool)

(assert (=> b!1666026 (= e!1067829 (and tp!480520 tp!480524))))

(assert (= (and b!1664494 ((_ is ElementMatch!4563) (regTwo!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666025))

(assert (= (and b!1664494 ((_ is Concat!7889) (regTwo!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666026))

(assert (= (and b!1664494 ((_ is Star!4563) (regTwo!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666027))

(assert (= (and b!1664494 ((_ is Union!4563) (regTwo!9639 (regex!3235 (h!23763 (t!151923 rules!1846)))))) b!1666028))

(declare-fun b!1666029 () Bool)

(declare-fun e!1067830 () Bool)

(assert (=> b!1666029 (= e!1067830 tp_is_empty!7401)))

(declare-fun b!1666031 () Bool)

(declare-fun tp!480526 () Bool)

(assert (=> b!1666031 (= e!1067830 tp!480526)))

(assert (=> b!1664434 (= tp!479864 e!1067830)))

(declare-fun b!1666032 () Bool)

(declare-fun tp!480528 () Bool)

(declare-fun tp!480527 () Bool)

(assert (=> b!1666032 (= e!1067830 (and tp!480528 tp!480527))))

(declare-fun b!1666030 () Bool)

(declare-fun tp!480525 () Bool)

(declare-fun tp!480529 () Bool)

(assert (=> b!1666030 (= e!1067830 (and tp!480525 tp!480529))))

(assert (= (and b!1664434 ((_ is ElementMatch!4563) (reg!4892 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666029))

(assert (= (and b!1664434 ((_ is Concat!7889) (reg!4892 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666030))

(assert (= (and b!1664434 ((_ is Star!4563) (reg!4892 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666031))

(assert (= (and b!1664434 ((_ is Union!4563) (reg!4892 (regOne!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666032))

(declare-fun b!1666033 () Bool)

(declare-fun e!1067831 () Bool)

(assert (=> b!1666033 (= e!1067831 tp_is_empty!7401)))

(declare-fun b!1666035 () Bool)

(declare-fun tp!480531 () Bool)

(assert (=> b!1666035 (= e!1067831 tp!480531)))

(assert (=> b!1664499 (= tp!479937 e!1067831)))

(declare-fun b!1666036 () Bool)

(declare-fun tp!480533 () Bool)

(declare-fun tp!480532 () Bool)

(assert (=> b!1666036 (= e!1067831 (and tp!480533 tp!480532))))

(declare-fun b!1666034 () Bool)

(declare-fun tp!480530 () Bool)

(declare-fun tp!480534 () Bool)

(assert (=> b!1666034 (= e!1067831 (and tp!480530 tp!480534))))

(assert (= (and b!1664499 ((_ is ElementMatch!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666033))

(assert (= (and b!1664499 ((_ is Concat!7889) (regOne!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666034))

(assert (= (and b!1664499 ((_ is Star!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666035))

(assert (= (and b!1664499 ((_ is Union!4563) (regOne!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666036))

(declare-fun b!1666037 () Bool)

(declare-fun e!1067832 () Bool)

(assert (=> b!1666037 (= e!1067832 tp_is_empty!7401)))

(declare-fun b!1666039 () Bool)

(declare-fun tp!480536 () Bool)

(assert (=> b!1666039 (= e!1067832 tp!480536)))

(assert (=> b!1664499 (= tp!479936 e!1067832)))

(declare-fun b!1666040 () Bool)

(declare-fun tp!480538 () Bool)

(declare-fun tp!480537 () Bool)

(assert (=> b!1666040 (= e!1067832 (and tp!480538 tp!480537))))

(declare-fun b!1666038 () Bool)

(declare-fun tp!480535 () Bool)

(declare-fun tp!480539 () Bool)

(assert (=> b!1666038 (= e!1067832 (and tp!480535 tp!480539))))

(assert (= (and b!1664499 ((_ is ElementMatch!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666037))

(assert (= (and b!1664499 ((_ is Concat!7889) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666038))

(assert (= (and b!1664499 ((_ is Star!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666039))

(assert (= (and b!1664499 ((_ is Union!4563) (regTwo!9639 (regex!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))))) b!1666040))

(declare-fun b!1666041 () Bool)

(declare-fun e!1067833 () Bool)

(assert (=> b!1666041 (= e!1067833 tp_is_empty!7401)))

(declare-fun b!1666043 () Bool)

(declare-fun tp!480541 () Bool)

(assert (=> b!1666043 (= e!1067833 tp!480541)))

(assert (=> b!1664473 (= tp!479908 e!1067833)))

(declare-fun b!1666044 () Bool)

(declare-fun tp!480543 () Bool)

(declare-fun tp!480542 () Bool)

(assert (=> b!1666044 (= e!1067833 (and tp!480543 tp!480542))))

(declare-fun b!1666042 () Bool)

(declare-fun tp!480540 () Bool)

(declare-fun tp!480544 () Bool)

(assert (=> b!1666042 (= e!1067833 (and tp!480540 tp!480544))))

(assert (= (and b!1664473 ((_ is ElementMatch!4563) (regOne!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666041))

(assert (= (and b!1664473 ((_ is Concat!7889) (regOne!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666042))

(assert (= (and b!1664473 ((_ is Star!4563) (regOne!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666043))

(assert (= (and b!1664473 ((_ is Union!4563) (regOne!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666044))

(declare-fun b!1666045 () Bool)

(declare-fun e!1067834 () Bool)

(assert (=> b!1666045 (= e!1067834 tp_is_empty!7401)))

(declare-fun b!1666047 () Bool)

(declare-fun tp!480546 () Bool)

(assert (=> b!1666047 (= e!1067834 tp!480546)))

(assert (=> b!1664473 (= tp!479912 e!1067834)))

(declare-fun b!1666048 () Bool)

(declare-fun tp!480548 () Bool)

(declare-fun tp!480547 () Bool)

(assert (=> b!1666048 (= e!1067834 (and tp!480548 tp!480547))))

(declare-fun b!1666046 () Bool)

(declare-fun tp!480545 () Bool)

(declare-fun tp!480549 () Bool)

(assert (=> b!1666046 (= e!1067834 (and tp!480545 tp!480549))))

(assert (= (and b!1664473 ((_ is ElementMatch!4563) (regTwo!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666045))

(assert (= (and b!1664473 ((_ is Concat!7889) (regTwo!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666046))

(assert (= (and b!1664473 ((_ is Star!4563) (regTwo!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666047))

(assert (= (and b!1664473 ((_ is Union!4563) (regTwo!9638 (regOne!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666048))

(declare-fun b!1666049 () Bool)

(declare-fun e!1067835 () Bool)

(assert (=> b!1666049 (= e!1067835 tp_is_empty!7401)))

(declare-fun b!1666051 () Bool)

(declare-fun tp!480551 () Bool)

(assert (=> b!1666051 (= e!1067835 tp!480551)))

(assert (=> b!1664451 (= tp!479885 e!1067835)))

(declare-fun b!1666052 () Bool)

(declare-fun tp!480553 () Bool)

(declare-fun tp!480552 () Bool)

(assert (=> b!1666052 (= e!1067835 (and tp!480553 tp!480552))))

(declare-fun b!1666050 () Bool)

(declare-fun tp!480550 () Bool)

(declare-fun tp!480554 () Bool)

(assert (=> b!1666050 (= e!1067835 (and tp!480550 tp!480554))))

(assert (= (and b!1664451 ((_ is ElementMatch!4563) (reg!4892 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666049))

(assert (= (and b!1664451 ((_ is Concat!7889) (reg!4892 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666050))

(assert (= (and b!1664451 ((_ is Star!4563) (reg!4892 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666051))

(assert (= (and b!1664451 ((_ is Union!4563) (reg!4892 (regOne!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666052))

(declare-fun b!1666053 () Bool)

(declare-fun e!1067836 () Bool)

(assert (=> b!1666053 (= e!1067836 tp_is_empty!7401)))

(declare-fun b!1666055 () Bool)

(declare-fun tp!480556 () Bool)

(assert (=> b!1666055 (= e!1067836 tp!480556)))

(assert (=> b!1664470 (= tp!479904 e!1067836)))

(declare-fun b!1666056 () Bool)

(declare-fun tp!480558 () Bool)

(declare-fun tp!480557 () Bool)

(assert (=> b!1666056 (= e!1067836 (and tp!480558 tp!480557))))

(declare-fun b!1666054 () Bool)

(declare-fun tp!480555 () Bool)

(declare-fun tp!480559 () Bool)

(assert (=> b!1666054 (= e!1067836 (and tp!480555 tp!480559))))

(assert (= (and b!1664470 ((_ is ElementMatch!4563) (reg!4892 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666053))

(assert (= (and b!1664470 ((_ is Concat!7889) (reg!4892 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666054))

(assert (= (and b!1664470 ((_ is Star!4563) (reg!4892 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666055))

(assert (= (and b!1664470 ((_ is Union!4563) (reg!4892 (reg!4892 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666056))

(declare-fun b!1666057 () Bool)

(declare-fun e!1067837 () Bool)

(assert (=> b!1666057 (= e!1067837 tp_is_empty!7401)))

(declare-fun b!1666059 () Bool)

(declare-fun tp!480561 () Bool)

(assert (=> b!1666059 (= e!1067837 tp!480561)))

(assert (=> b!1664479 (= tp!479916 e!1067837)))

(declare-fun b!1666060 () Bool)

(declare-fun tp!480563 () Bool)

(declare-fun tp!480562 () Bool)

(assert (=> b!1666060 (= e!1067837 (and tp!480563 tp!480562))))

(declare-fun b!1666058 () Bool)

(declare-fun tp!480560 () Bool)

(declare-fun tp!480564 () Bool)

(assert (=> b!1666058 (= e!1067837 (and tp!480560 tp!480564))))

(assert (= (and b!1664479 ((_ is ElementMatch!4563) (regOne!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666057))

(assert (= (and b!1664479 ((_ is Concat!7889) (regOne!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666058))

(assert (= (and b!1664479 ((_ is Star!4563) (regOne!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666059))

(assert (= (and b!1664479 ((_ is Union!4563) (regOne!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666060))

(declare-fun b!1666061 () Bool)

(declare-fun e!1067838 () Bool)

(assert (=> b!1666061 (= e!1067838 tp_is_empty!7401)))

(declare-fun b!1666063 () Bool)

(declare-fun tp!480566 () Bool)

(assert (=> b!1666063 (= e!1067838 tp!480566)))

(assert (=> b!1664479 (= tp!479915 e!1067838)))

(declare-fun b!1666064 () Bool)

(declare-fun tp!480568 () Bool)

(declare-fun tp!480567 () Bool)

(assert (=> b!1666064 (= e!1067838 (and tp!480568 tp!480567))))

(declare-fun b!1666062 () Bool)

(declare-fun tp!480565 () Bool)

(declare-fun tp!480569 () Bool)

(assert (=> b!1666062 (= e!1067838 (and tp!480565 tp!480569))))

(assert (= (and b!1664479 ((_ is ElementMatch!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666061))

(assert (= (and b!1664479 ((_ is Concat!7889) (regTwo!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666062))

(assert (= (and b!1664479 ((_ is Star!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666063))

(assert (= (and b!1664479 ((_ is Union!4563) (regTwo!9639 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666064))

(declare-fun tp!480571 () Bool)

(declare-fun tp!480570 () Bool)

(declare-fun b!1666065 () Bool)

(declare-fun e!1067840 () Bool)

(assert (=> b!1666065 (= e!1067840 (and (inv!23705 (left!14689 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) tp!480570 (inv!23705 (right!15019 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) tp!480571))))

(declare-fun b!1666067 () Bool)

(declare-fun e!1067839 () Bool)

(declare-fun tp!480572 () Bool)

(assert (=> b!1666067 (= e!1067839 tp!480572)))

(declare-fun b!1666066 () Bool)

(assert (=> b!1666066 (= e!1067840 (and (inv!23712 (xs!8962 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) e!1067839))))

(assert (=> b!1664465 (= tp!479900 (and (inv!23705 (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) e!1067840))))

(assert (= (and b!1664465 ((_ is Node!6118) (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) b!1666065))

(assert (= b!1666066 b!1666067))

(assert (= (and b!1664465 ((_ is Leaf!8956) (left!14689 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) b!1666066))

(declare-fun m!2029477 () Bool)

(assert (=> b!1666065 m!2029477))

(declare-fun m!2029479 () Bool)

(assert (=> b!1666065 m!2029479))

(declare-fun m!2029481 () Bool)

(assert (=> b!1666066 m!2029481))

(assert (=> b!1664465 m!2027015))

(declare-fun tp!480573 () Bool)

(declare-fun b!1666068 () Bool)

(declare-fun e!1067842 () Bool)

(declare-fun tp!480574 () Bool)

(assert (=> b!1666068 (= e!1067842 (and (inv!23705 (left!14689 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) tp!480573 (inv!23705 (right!15019 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) tp!480574))))

(declare-fun b!1666070 () Bool)

(declare-fun e!1067841 () Bool)

(declare-fun tp!480575 () Bool)

(assert (=> b!1666070 (= e!1067841 tp!480575)))

(declare-fun b!1666069 () Bool)

(assert (=> b!1666069 (= e!1067842 (and (inv!23712 (xs!8962 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) e!1067841))))

(assert (=> b!1664465 (= tp!479901 (and (inv!23705 (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457)))))) e!1067842))))

(assert (= (and b!1664465 ((_ is Node!6118) (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) b!1666068))

(assert (= b!1666069 b!1666070))

(assert (= (and b!1664465 ((_ is Leaf!8956) (right!15019 (c!270827 (dynLambda!8254 (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (value!101870 (h!23762 tokens!457))))))) b!1666069))

(declare-fun m!2029483 () Bool)

(assert (=> b!1666068 m!2029483))

(declare-fun m!2029485 () Bool)

(assert (=> b!1666068 m!2029485))

(declare-fun m!2029487 () Bool)

(assert (=> b!1666069 m!2029487))

(assert (=> b!1664465 m!2027017))

(declare-fun b!1666073 () Bool)

(declare-fun e!1067845 () Bool)

(assert (=> b!1666073 (= e!1067845 true)))

(declare-fun b!1666072 () Bool)

(declare-fun e!1067844 () Bool)

(assert (=> b!1666072 (= e!1067844 e!1067845)))

(declare-fun b!1666071 () Bool)

(declare-fun e!1067843 () Bool)

(assert (=> b!1666071 (= e!1067843 e!1067844)))

(assert (=> b!1664480 e!1067843))

(assert (= b!1666072 b!1666073))

(assert (= b!1666071 b!1666072))

(assert (= (and b!1664480 ((_ is Cons!18362) (t!151923 (t!151923 rules!1846)))) b!1666071))

(assert (=> b!1666073 (< (dynLambda!8255 order!10995 (toValue!4690 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) (dynLambda!8256 order!10997 lambda!67896))))

(assert (=> b!1666073 (< (dynLambda!8257 order!10999 (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) (dynLambda!8256 order!10997 lambda!67896))))

(declare-fun b!1666074 () Bool)

(declare-fun e!1067846 () Bool)

(assert (=> b!1666074 (= e!1067846 tp_is_empty!7401)))

(declare-fun b!1666076 () Bool)

(declare-fun tp!480577 () Bool)

(assert (=> b!1666076 (= e!1067846 tp!480577)))

(assert (=> b!1664489 (= tp!479924 e!1067846)))

(declare-fun b!1666077 () Bool)

(declare-fun tp!480579 () Bool)

(declare-fun tp!480578 () Bool)

(assert (=> b!1666077 (= e!1067846 (and tp!480579 tp!480578))))

(declare-fun b!1666075 () Bool)

(declare-fun tp!480576 () Bool)

(declare-fun tp!480580 () Bool)

(assert (=> b!1666075 (= e!1067846 (and tp!480576 tp!480580))))

(assert (= (and b!1664489 ((_ is ElementMatch!4563) (reg!4892 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666074))

(assert (= (and b!1664489 ((_ is Concat!7889) (reg!4892 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666075))

(assert (= (and b!1664489 ((_ is Star!4563) (reg!4892 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666076))

(assert (= (and b!1664489 ((_ is Union!4563) (reg!4892 (regTwo!9638 (regex!3235 (h!23763 rules!1846)))))) b!1666077))

(declare-fun b!1666078 () Bool)

(declare-fun e!1067847 () Bool)

(assert (=> b!1666078 (= e!1067847 tp_is_empty!7401)))

(declare-fun b!1666080 () Bool)

(declare-fun tp!480582 () Bool)

(assert (=> b!1666080 (= e!1067847 tp!480582)))

(assert (=> b!1664438 (= tp!479869 e!1067847)))

(declare-fun b!1666081 () Bool)

(declare-fun tp!480584 () Bool)

(declare-fun tp!480583 () Bool)

(assert (=> b!1666081 (= e!1067847 (and tp!480584 tp!480583))))

(declare-fun b!1666079 () Bool)

(declare-fun tp!480581 () Bool)

(declare-fun tp!480585 () Bool)

(assert (=> b!1666079 (= e!1067847 (and tp!480581 tp!480585))))

(assert (= (and b!1664438 ((_ is ElementMatch!4563) (reg!4892 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666078))

(assert (= (and b!1664438 ((_ is Concat!7889) (reg!4892 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666079))

(assert (= (and b!1664438 ((_ is Star!4563) (reg!4892 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666080))

(assert (= (and b!1664438 ((_ is Union!4563) (reg!4892 (regTwo!9638 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666081))

(declare-fun b!1666082 () Bool)

(declare-fun e!1067848 () Bool)

(assert (=> b!1666082 (= e!1067848 tp_is_empty!7401)))

(declare-fun b!1666084 () Bool)

(declare-fun tp!480587 () Bool)

(assert (=> b!1666084 (= e!1067848 tp!480587)))

(assert (=> b!1664442 (= tp!479875 e!1067848)))

(declare-fun b!1666085 () Bool)

(declare-fun tp!480589 () Bool)

(declare-fun tp!480588 () Bool)

(assert (=> b!1666085 (= e!1067848 (and tp!480589 tp!480588))))

(declare-fun b!1666083 () Bool)

(declare-fun tp!480586 () Bool)

(declare-fun tp!480590 () Bool)

(assert (=> b!1666083 (= e!1067848 (and tp!480586 tp!480590))))

(assert (= (and b!1664442 ((_ is ElementMatch!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) b!1666082))

(assert (= (and b!1664442 ((_ is Concat!7889) (regex!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) b!1666083))

(assert (= (and b!1664442 ((_ is Star!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) b!1666084))

(assert (= (and b!1664442 ((_ is Union!4563) (regex!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457))))))) b!1666085))

(declare-fun b!1666086 () Bool)

(declare-fun e!1067849 () Bool)

(assert (=> b!1666086 (= e!1067849 tp_is_empty!7401)))

(declare-fun b!1666088 () Bool)

(declare-fun tp!480592 () Bool)

(assert (=> b!1666088 (= e!1067849 tp!480592)))

(assert (=> b!1664446 (= tp!479879 e!1067849)))

(declare-fun b!1666089 () Bool)

(declare-fun tp!480594 () Bool)

(declare-fun tp!480593 () Bool)

(assert (=> b!1666089 (= e!1067849 (and tp!480594 tp!480593))))

(declare-fun b!1666087 () Bool)

(declare-fun tp!480591 () Bool)

(declare-fun tp!480595 () Bool)

(assert (=> b!1666087 (= e!1067849 (and tp!480591 tp!480595))))

(assert (= (and b!1664446 ((_ is ElementMatch!4563) (reg!4892 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1666086))

(assert (= (and b!1664446 ((_ is Concat!7889) (reg!4892 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1666087))

(assert (= (and b!1664446 ((_ is Star!4563) (reg!4892 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1666088))

(assert (= (and b!1664446 ((_ is Union!4563) (reg!4892 (reg!4892 (regex!3235 (h!23763 rules!1846)))))) b!1666089))

(declare-fun b!1666090 () Bool)

(declare-fun e!1067850 () Bool)

(assert (=> b!1666090 (= e!1067850 tp_is_empty!7401)))

(declare-fun b!1666092 () Bool)

(declare-fun tp!480597 () Bool)

(assert (=> b!1666092 (= e!1067850 tp!480597)))

(assert (=> b!1664501 (= tp!479941 e!1067850)))

(declare-fun b!1666093 () Bool)

(declare-fun tp!480599 () Bool)

(declare-fun tp!480598 () Bool)

(assert (=> b!1666093 (= e!1067850 (and tp!480599 tp!480598))))

(declare-fun b!1666091 () Bool)

(declare-fun tp!480596 () Bool)

(declare-fun tp!480600 () Bool)

(assert (=> b!1666091 (= e!1067850 (and tp!480596 tp!480600))))

(assert (= (and b!1664501 ((_ is ElementMatch!4563) (regex!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) b!1666090))

(assert (= (and b!1664501 ((_ is Concat!7889) (regex!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) b!1666091))

(assert (= (and b!1664501 ((_ is Star!4563) (regex!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) b!1666092))

(assert (= (and b!1664501 ((_ is Union!4563) (regex!3235 (h!23763 (t!151923 (t!151923 rules!1846)))))) b!1666093))

(declare-fun b!1666094 () Bool)

(declare-fun e!1067851 () Bool)

(declare-fun tp!480601 () Bool)

(assert (=> b!1666094 (= e!1067851 (and tp_is_empty!7401 tp!480601))))

(assert (=> b!1664448 (= tp!479883 e!1067851)))

(assert (= (and b!1664448 ((_ is Cons!18359) (t!151920 (originalCharacters!4049 (h!23762 (t!151922 tokens!457)))))) b!1666094))

(declare-fun b!1666095 () Bool)

(declare-fun e!1067852 () Bool)

(assert (=> b!1666095 (= e!1067852 tp_is_empty!7401)))

(declare-fun b!1666097 () Bool)

(declare-fun tp!480603 () Bool)

(assert (=> b!1666097 (= e!1067852 tp!480603)))

(assert (=> b!1664477 (= tp!479913 e!1067852)))

(declare-fun b!1666098 () Bool)

(declare-fun tp!480605 () Bool)

(declare-fun tp!480604 () Bool)

(assert (=> b!1666098 (= e!1067852 (and tp!480605 tp!480604))))

(declare-fun b!1666096 () Bool)

(declare-fun tp!480602 () Bool)

(declare-fun tp!480606 () Bool)

(assert (=> b!1666096 (= e!1067852 (and tp!480602 tp!480606))))

(assert (= (and b!1664477 ((_ is ElementMatch!4563) (regOne!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666095))

(assert (= (and b!1664477 ((_ is Concat!7889) (regOne!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666096))

(assert (= (and b!1664477 ((_ is Star!4563) (regOne!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666097))

(assert (= (and b!1664477 ((_ is Union!4563) (regOne!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666098))

(declare-fun b!1666099 () Bool)

(declare-fun e!1067853 () Bool)

(assert (=> b!1666099 (= e!1067853 tp_is_empty!7401)))

(declare-fun b!1666101 () Bool)

(declare-fun tp!480608 () Bool)

(assert (=> b!1666101 (= e!1067853 tp!480608)))

(assert (=> b!1664477 (= tp!479917 e!1067853)))

(declare-fun b!1666102 () Bool)

(declare-fun tp!480610 () Bool)

(declare-fun tp!480609 () Bool)

(assert (=> b!1666102 (= e!1067853 (and tp!480610 tp!480609))))

(declare-fun b!1666100 () Bool)

(declare-fun tp!480607 () Bool)

(declare-fun tp!480611 () Bool)

(assert (=> b!1666100 (= e!1067853 (and tp!480607 tp!480611))))

(assert (= (and b!1664477 ((_ is ElementMatch!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666099))

(assert (= (and b!1664477 ((_ is Concat!7889) (regTwo!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666100))

(assert (= (and b!1664477 ((_ is Star!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666101))

(assert (= (and b!1664477 ((_ is Union!4563) (regTwo!9638 (regTwo!9639 (regex!3235 (rule!5123 (h!23762 tokens!457))))))) b!1666102))

(declare-fun b!1666103 () Bool)

(declare-fun e!1067854 () Bool)

(assert (=> b!1666103 (= e!1067854 tp_is_empty!7401)))

(declare-fun b!1666105 () Bool)

(declare-fun tp!480613 () Bool)

(assert (=> b!1666105 (= e!1067854 tp!480613)))

(assert (=> b!1664455 (= tp!479890 e!1067854)))

(declare-fun b!1666106 () Bool)

(declare-fun tp!480615 () Bool)

(declare-fun tp!480614 () Bool)

(assert (=> b!1666106 (= e!1067854 (and tp!480615 tp!480614))))

(declare-fun b!1666104 () Bool)

(declare-fun tp!480612 () Bool)

(declare-fun tp!480616 () Bool)

(assert (=> b!1666104 (= e!1067854 (and tp!480612 tp!480616))))

(assert (= (and b!1664455 ((_ is ElementMatch!4563) (reg!4892 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666103))

(assert (= (and b!1664455 ((_ is Concat!7889) (reg!4892 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666104))

(assert (= (and b!1664455 ((_ is Star!4563) (reg!4892 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666105))

(assert (= (and b!1664455 ((_ is Union!4563) (reg!4892 (regTwo!9639 (regex!3235 (h!23763 rules!1846)))))) b!1666106))

(declare-fun b_lambda!52293 () Bool)

(assert (= b_lambda!52265 (or (and b!1664502 b_free!45245 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1664443 b_free!45241) (and b!1665850 b_free!45257 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1664059 b_free!45225 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1663853 b_free!45209 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1664096 b_free!45229 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1666016 b_free!45261 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) (and b!1663843 b_free!45213 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))))) b_lambda!52293)))

(declare-fun b_lambda!52295 () Bool)

(assert (= b_lambda!52249 (or d!502858 b_lambda!52295)))

(declare-fun bs!397673 () Bool)

(declare-fun d!503554 () Bool)

(assert (= bs!397673 (and d!503554 d!502858)))

(assert (=> bs!397673 (= (dynLambda!8264 lambda!67920 (h!23763 rules!1846)) (ruleValid!758 thiss!17113 (h!23763 rules!1846)))))

(assert (=> bs!397673 m!2027353))

(assert (=> b!1664695 d!503554))

(declare-fun b_lambda!52297 () Bool)

(assert (= b_lambda!52247 (or d!502650 b_lambda!52297)))

(declare-fun bs!397674 () Bool)

(declare-fun d!503556 () Bool)

(assert (= bs!397674 (and d!503556 d!502650)))

(assert (=> bs!397674 (= (dynLambda!8263 lambda!67896 (h!23762 (t!151922 tokens!457))) (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457))))))

(assert (=> bs!397674 m!2026193))

(assert (=> b!1664667 d!503556))

(declare-fun b_lambda!52299 () Bool)

(assert (= b_lambda!52219 (or (and b!1664443 b_free!45241 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664502 b_free!45245 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1665850 b_free!45257 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1666016 b_free!45261 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) b_lambda!52299)))

(declare-fun b_lambda!52301 () Bool)

(assert (= b_lambda!52261 (or (and b!1663853 b_free!45209) (and b!1665850 b_free!45257 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 (t!151923 rules!1846)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1666016 b_free!45261 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 (t!151922 tokens!457))))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664443 b_free!45241 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 (t!151922 tokens!457)))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664059 b_free!45225 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 rules!1846)))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664096 b_free!45229 (= (toChars!4549 (transformation!3235 (rule!5123 (h!23762 (t!151922 tokens!457))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1663843 b_free!45213 (= (toChars!4549 (transformation!3235 (h!23763 rules!1846))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) (and b!1664502 b_free!45245 (= (toChars!4549 (transformation!3235 (h!23763 (t!151923 (t!151923 rules!1846))))) (toChars!4549 (transformation!3235 (rule!5123 (h!23762 tokens!457)))))) b_lambda!52301)))

(declare-fun b_lambda!52303 () Bool)

(assert (= b_lambda!52263 (or d!502734 b_lambda!52303)))

(declare-fun bs!397675 () Bool)

(declare-fun d!503558 () Bool)

(assert (= bs!397675 (and d!503558 d!502734)))

(assert (=> bs!397675 (= (dynLambda!8263 lambda!67906 (h!23762 (t!151922 tokens!457))) (rulesProduceIndividualToken!1512 thiss!17113 rules!1846 (h!23762 (t!151922 tokens!457))))))

(assert (=> bs!397675 m!2026193))

(assert (=> b!1665192 d!503558))

(check-sat (not b!1664733) (not b!1664674) (not b!1665254) (not b_next!45933) (not b!1666050) (not b!1665840) (not b!1666056) (not b!1665255) (not d!503472) (not b!1665967) (not b!1665768) (not b!1666006) (not d!503478) (not b!1664668) (not b!1666020) (not b!1665839) (not b!1665918) (not b!1665903) (not b!1666068) (not b!1664697) (not b!1665963) (not d!502972) (not b!1666013) (not b!1665767) (not b!1666019) (not b!1665701) (not b!1665059) (not b!1665764) (not d!503466) (not b!1665941) (not b!1666097) (not d!503538) (not b!1665745) (not b_lambda!52297) (not b!1664946) (not b!1665995) (not b!1665029) (not b!1666002) (not b!1665228) (not bm!106506) (not b!1665933) b_and!118337 (not b!1665796) (not b!1665195) (not b_lambda!52295) (not b!1665947) (not b!1664880) (not b!1666098) (not d!503296) (not d!503444) b_and!118141 (not b!1665235) (not b!1665917) (not b!1665046) (not d!503126) (not b!1666094) (not b!1666046) (not b_next!45959) (not b!1665766) (not bm!106523) (not b!1666007) (not b!1665792) (not d!503464) (not b!1666092) (not b!1665253) (not b!1665984) (not b_next!45917) (not b!1664973) (not b!1666105) (not b!1665806) (not b!1665891) (not d!502954) (not b!1665070) (not b!1665836) (not b!1665960) (not b!1666063) (not b_next!45947) (not b!1665998) (not d!503544) (not b!1665897) (not b!1665962) (not b!1664661) (not b!1664699) (not b!1665907) (not b!1666000) (not b!1665978) (not b!1664659) (not b!1665802) (not b!1665925) (not b!1665852) (not d!503450) (not b!1665970) (not b!1665872) (not b!1665988) (not b!1666028) (not b!1666047) (not b!1666085) (not d!503536) (not b_next!45929) (not b!1665067) (not b!1665923) (not d!503418) (not b!1665841) (not b!1665060) (not b!1665825) (not b!1665991) (not b!1666096) (not bm!106509) (not b!1665966) (not b!1665049) (not b_lambda!52255) (not b!1665845) (not b!1664660) (not b!1664666) (not b!1665735) (not b!1665972) (not b!1665749) b_and!118343 (not b!1666076) (not b!1665957) (not d!503122) (not d!503400) (not b!1665895) (not b!1665161) (not b!1664949) (not b!1665016) (not d!503508) (not b!1664725) (not b!1665007) (not b!1665260) (not b!1665236) (not b!1664813) (not b!1665765) (not b!1666026) (not bs!397674) (not b_next!45963) (not b!1665975) (not b!1664850) (not b!1665047) (not d!503028) (not b!1665774) (not b!1666066) (not b!1665198) (not b!1664644) (not b!1666070) (not b!1665910) (not b!1665053) (not b!1664788) (not b!1665699) (not b!1665199) (not b!1665760) (not d!503510) (not b!1664916) (not b!1666024) (not b!1665994) (not b!1666048) (not b_next!45943) (not d!502966) (not b!1665775) (not b!1665948) (not d!503100) (not b!1665045) (not b!1665830) (not b!1665847) (not b!1665857) (not b!1665689) (not d!503528) (not b!1666102) (not b!1665996) (not b!1665942) (not b!1665955) (not b!1665829) (not b!1665050) (not b!1666091) (not b!1665982) (not d!503098) (not d!503502) (not b!1665898) (not b!1665690) tp_is_empty!7401 (not b!1666015) (not d!503138) (not b!1665677) (not d!503078) (not b_lambda!52267) (not b!1665797) (not b!1665012) (not b!1666071) (not d!503484) (not b!1666031) (not b!1665225) (not b_lambda!52241) (not b!1665734) (not d!503262) (not b!1665669) (not d!503030) (not b!1665242) (not b!1665751) (not b!1665927) (not d!503522) (not b!1665672) (not b!1664959) (not b!1666077) (not b!1665935) (not b!1665926) (not b!1665048) (not b!1664657) (not b!1665173) (not tb!95363) (not b!1665193) (not b_next!45915) b_and!118345 (not b!1665954) (not d!503270) (not b!1666081) (not d!503120) (not b!1664790) (not b!1665834) (not d!503216) (not b!1665226) (not b!1666010) (not b!1665899) (not b!1665720) (not b_lambda!52291) (not d!503460) (not d!502992) (not b!1666039) (not d!503088) (not b!1665934) (not d!503114) (not b!1665058) (not b!1666060) (not b!1665868) (not tb!95411) (not b!1666088) (not b!1665838) (not b!1664960) (not b!1664871) (not b!1665901) b_and!118347 (not b!1665865) (not d!503062) (not d!503498) (not d!503476) (not b!1665010) (not b!1664974) (not b!1665879) (not d!503488) (not d!502952) (not b!1665915) (not b!1665671) (not b!1665687) (not d!502948) (not b!1665051) (not d!503168) (not b_next!45945) (not b!1664882) (not tb!95399) (not b!1665008) (not b!1665952) (not b!1664811) (not b!1665951) (not b!1665860) b_and!118339 (not b!1664835) (not d!502962) (not b!1664947) (not d!503132) (not d!503480) (not b!1665824) (not b!1665746) (not b_lambda!52293) (not b!1665251) b_and!118121 (not b!1665870) (not d!503504) (not bm!106527) (not b!1665854) (not b!1665913) (not b!1666083) (not d!503500) (not d!503158) (not b!1666089) (not b!1666051) (not b!1666062) (not b!1666065) (not b!1664915) (not b!1665724) (not d!503312) (not b!1665696) (not b!1665788) (not d!503164) (not b!1664748) b_and!118349 (not b!1665835) (not d!503468) (not b!1665828) (not d!503408) (not d!503514) (not b!1665757) (not b!1665864) (not b!1665846) (not b_lambda!52239) (not d!503456) (not b!1665730) (not b!1665876) (not b!1665909) (not b!1665798) (not d!503044) (not b!1665197) (not d!503154) (not b_next!45965) (not b!1664649) (not b!1665968) b_and!118351 (not d!502968) (not b!1665266) (not d!503082) (not b!1664852) (not b!1665028) (not b!1665793) (not b!1665773) (not d!503546) (not d!503452) (not b!1664814) (not d!503278) (not b!1664948) (not b_lambda!52243) (not b!1664888) (not b!1665930) (not b!1665661) (not b!1665681) (not tb!95487) (not b!1665980) (not b!1666023) (not b!1666054) (not d!503496) (not d!503474) (not b!1665958) (not d!503520) (not b!1664865) (not b!1666038) (not b!1665999) (not b!1664951) (not b!1665753) (not b!1665893) (not d!503268) (not d!503282) (not b!1666027) (not b!1666058) (not b!1665950) (not b!1665959) (not b!1665693) (not d!503238) (not b!1665777) (not d!502986) (not b!1665990) (not b!1664719) (not d!503402) (not b!1666080) (not d!503548) (not d!503516) (not b!1666093) (not b!1665987) (not b!1665241) (not b!1665691) (not b!1666018) (not d!503512) (not b!1664465) (not b!1666055) (not b!1664958) (not d!503542) (not b!1665784) (not d!503212) (not b!1666106) (not b!1665031) (not b!1665013) (not b!1665964) (not b!1665052) (not b!1665680) (not b!1666101) (not d!503254) (not b!1665771) (not b!1666067) (not b!1664980) (not b!1665649) (not b!1665758) (not b!1665781) (not b!1665873) (not b!1665878) (not b!1666008) (not d!503236) b_and!118353 (not b!1665056) (not b!1665862) (not b!1665779) (not b_next!45949) (not d!503020) (not b_next!45931) (not d!503490) (not b!1666069) (not b!1664309) (not d!502956) (not b!1665869) (not b!1664662) (not b!1665883) (not b!1666040) (not b!1664950) (not b!1665162) (not b!1666044) (not b!1666104) (not b!1665739) (not b!1665799) (not b_lambda!52299) (not b!1665723) (not b!1664952) (not d!503412) (not d!503550) (not b!1665931) (not b!1665983) (not d!503486) (not b!1665881) (not b!1665725) (not b!1666011) (not d!503256) (not b!1665856) (not b!1665858) (not d!503234) (not b!1665943) (not b!1665728) (not b!1666075) (not d!503074) (not bs!397673) (not b!1665887) (not b_lambda!52253) (not b!1665085) (not d!503462) (not d!503540) (not b!1665906) (not bm!106524) (not b!1665617) (not b!1664923) (not d!503004) (not b!1665945) (not b!1666004) (not b!1665776) (not bs!397675) (not b!1665200) (not b_next!45927) (not d!503416) (not b!1664953) (not d!503240) (not d!503128) (not b!1666022) (not b!1664732) (not d!503446) (not d!503294) (not b!1665986) (not b!1665702) (not b!1665831) (not b!1665874) (not b!1665849) (not b!1665882) (not b!1665742) (not d!503404) (not b!1664851) (not b!1666084) (not b!1665648) (not b!1666087) (not b!1665826) (not b!1665754) (not b!1665695) (not d!503442) b_and!118341 b_and!118355 (not b!1665194) (not b!1664696) (not b!1665538) b_and!118193 (not b!1664854) b_and!118145 (not b!1665741) (not b!1665748) (not d!503306) (not b!1666052) (not d!502960) (not b!1665974) (not b!1665890) (not b!1665020) (not b!1665772) (not b!1666034) (not b!1664648) (not b!1665223) (not b!1665011) (not b!1666064) (not d!503170) (not b!1666042) (not d!503494) (not b!1664673) (not d!503096) (not d!503224) (not b!1665780) (not b!1665848) (not b!1665224) (not b!1665666) b_and!118117 (not b!1665785) (not b!1665769) (not b!1664892) (not b!1664873) (not b!1665956) (not d!503264) (not b!1665921) (not b!1664724) (not b!1665905) (not b!1666035) (not b!1664890) (not b!1665164) (not b!1666030) (not b!1665979) (not d!503050) (not b!1665914) (not b!1666036) (not b!1665237) (not b!1665902) (not b!1665853) (not b!1665992) (not d!502974) (not b!1665911) (not b!1665685) (not b!1665919) (not b_next!45913) (not d!503214) (not b!1666100) (not tb!95375) (not b!1665929) (not b!1664912) (not b!1665030) (not b!1666079) (not b!1665939) (not b!1665600) (not d!502958) (not b!1665877) (not b!1665976) (not b!1665832) (not d!503152) (not b!1665889) (not b!1665688) (not b!1666012) (not d!503046) (not b!1664849) (not b!1666043) (not d!503134) (not b!1665694) (not b!1665937) (not b!1665732) (not d!503458) (not b_next!45911) (not b!1665922) (not d!503436) (not b!1665789) (not d!503482) (not d!503552) (not d!503518) (not d!503290) (not b!1666014) (not b!1665201) (not b!1665946) (not b!1665071) (not b!1665722) (not b_lambda!52303) (not b!1665938) (not d!503136) (not b!1665761) b_and!118189 (not d!503232) (not d!503140) (not b!1665762) (not d!503130) (not b_next!45961) (not b!1666003) (not b!1665885) (not b!1665726) (not d!503288) (not d!503506) (not d!503454) (not b!1666059) (not b!1664701) (not b!1665886) (not b!1664720) (not b_lambda!52301) (not b!1666032) (not d!503470) (not b!1665027) (not b!1665668) (not b!1664834) (not b!1664911) (not b!1665721) (not b!1665026) (not d!503110) (not d!503440) (not bm!106512) (not d!503040) (not b!1665163) (not b!1665894) (not bm!106508) (not b!1665803) (not b!1665660) (not b!1664812) (not b!1665750) (not b!1665805) (not d!503492) (not d!503036) (not b!1665866) (not b!1665227) (not b!1665778) (not b!1665243) (not b!1665019) (not d!503038) (not d!503534) (not b!1665971) (not b!1665861))
(check-sat (not b_next!45933) b_and!118337 (not b_next!45947) (not b_next!45929) (not b_next!45943) b_and!118347 b_and!118349 (not b_next!45965) b_and!118351 (not b_next!45927) b_and!118117 (not b_next!45913) (not b_next!45961) b_and!118141 (not b_next!45917) (not b_next!45959) b_and!118343 (not b_next!45963) (not b_next!45915) b_and!118345 (not b_next!45945) b_and!118121 b_and!118339 b_and!118353 (not b_next!45949) (not b_next!45931) b_and!118341 b_and!118355 b_and!118145 b_and!118193 (not b_next!45911) b_and!118189)

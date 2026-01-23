; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115446 () Bool)

(assert start!115446)

(declare-fun b!1306676 () Bool)

(declare-fun b_free!31315 () Bool)

(declare-fun b_next!32019 () Bool)

(assert (=> b!1306676 (= b_free!31315 (not b_next!32019))))

(declare-fun tp!381150 () Bool)

(declare-fun b_and!87215 () Bool)

(assert (=> b!1306676 (= tp!381150 b_and!87215)))

(declare-fun b_free!31317 () Bool)

(declare-fun b_next!32021 () Bool)

(assert (=> b!1306676 (= b_free!31317 (not b_next!32021))))

(declare-fun tp!381147 () Bool)

(declare-fun b_and!87217 () Bool)

(assert (=> b!1306676 (= tp!381147 b_and!87217)))

(declare-fun b!1306666 () Bool)

(declare-fun b_free!31319 () Bool)

(declare-fun b_next!32023 () Bool)

(assert (=> b!1306666 (= b_free!31319 (not b_next!32023))))

(declare-fun tp!381151 () Bool)

(declare-fun b_and!87219 () Bool)

(assert (=> b!1306666 (= tp!381151 b_and!87219)))

(declare-fun b_free!31321 () Bool)

(declare-fun b_next!32025 () Bool)

(assert (=> b!1306666 (= b_free!31321 (not b_next!32025))))

(declare-fun tp!381157 () Bool)

(declare-fun b_and!87221 () Bool)

(assert (=> b!1306666 (= tp!381157 b_and!87221)))

(declare-fun b!1306652 () Bool)

(declare-fun b_free!31323 () Bool)

(declare-fun b_next!32027 () Bool)

(assert (=> b!1306652 (= b_free!31323 (not b_next!32027))))

(declare-fun tp!381158 () Bool)

(declare-fun b_and!87223 () Bool)

(assert (=> b!1306652 (= tp!381158 b_and!87223)))

(declare-fun b_free!31325 () Bool)

(declare-fun b_next!32029 () Bool)

(assert (=> b!1306652 (= b_free!31325 (not b_next!32029))))

(declare-fun tp!381149 () Bool)

(declare-fun b_and!87225 () Bool)

(assert (=> b!1306652 (= tp!381149 b_and!87225)))

(declare-fun b!1306674 () Bool)

(assert (=> b!1306674 true))

(assert (=> b!1306674 true))

(declare-fun b!1306657 () Bool)

(assert (=> b!1306657 true))

(declare-fun b!1306656 () Bool)

(assert (=> b!1306656 true))

(declare-fun b!1306647 () Bool)

(declare-fun e!837916 () Bool)

(declare-fun e!837910 () Bool)

(declare-fun tp!381155 () Bool)

(declare-datatypes ((List!13246 0))(
  ( (Nil!13180) (Cons!13180 (h!18581 (_ BitVec 16)) (t!117869 List!13246)) )
))
(declare-datatypes ((TokenValue!2369 0))(
  ( (FloatLiteralValue!4738 (text!17028 List!13246)) (TokenValueExt!2368 (__x!8567 Int)) (Broken!11845 (value!74558 List!13246)) (Object!2434) (End!2369) (Def!2369) (Underscore!2369) (Match!2369) (Else!2369) (Error!2369) (Case!2369) (If!2369) (Extends!2369) (Abstract!2369) (Class!2369) (Val!2369) (DelimiterValue!4738 (del!2429 List!13246)) (KeywordValue!2375 (value!74559 List!13246)) (CommentValue!4738 (value!74560 List!13246)) (WhitespaceValue!4738 (value!74561 List!13246)) (IndentationValue!2369 (value!74562 List!13246)) (String!16080) (Int32!2369) (Broken!11846 (value!74563 List!13246)) (Boolean!2370) (Unit!19273) (OperatorValue!2372 (op!2429 List!13246)) (IdentifierValue!4738 (value!74564 List!13246)) (IdentifierValue!4739 (value!74565 List!13246)) (WhitespaceValue!4739 (value!74566 List!13246)) (True!4738) (False!4738) (Broken!11847 (value!74567 List!13246)) (Broken!11848 (value!74568 List!13246)) (True!4739) (RightBrace!2369) (RightBracket!2369) (Colon!2369) (Null!2369) (Comma!2369) (LeftBracket!2369) (False!4739) (LeftBrace!2369) (ImaginaryLiteralValue!2369 (text!17029 List!13246)) (StringLiteralValue!7107 (value!74569 List!13246)) (EOFValue!2369 (value!74570 List!13246)) (IdentValue!2369 (value!74571 List!13246)) (DelimiterValue!4739 (value!74572 List!13246)) (DedentValue!2369 (value!74573 List!13246)) (NewLineValue!2369 (value!74574 List!13246)) (IntegerValue!7107 (value!74575 (_ BitVec 32)) (text!17030 List!13246)) (IntegerValue!7108 (value!74576 Int) (text!17031 List!13246)) (Times!2369) (Or!2369) (Equal!2369) (Minus!2369) (Broken!11849 (value!74577 List!13246)) (And!2369) (Div!2369) (LessEqual!2369) (Mod!2369) (Concat!5962) (Not!2369) (Plus!2369) (SpaceValue!2369 (value!74578 List!13246)) (IntegerValue!7109 (value!74579 Int) (text!17032 List!13246)) (StringLiteralValue!7108 (text!17033 List!13246)) (FloatLiteralValue!4739 (text!17034 List!13246)) (BytesLiteralValue!2369 (value!74580 List!13246)) (CommentValue!4739 (value!74581 List!13246)) (StringLiteralValue!7109 (value!74582 List!13246)) (ErrorTokenValue!2369 (msg!2430 List!13246)) )
))
(declare-datatypes ((C!7476 0))(
  ( (C!7477 (val!4298 Int)) )
))
(declare-datatypes ((List!13247 0))(
  ( (Nil!13181) (Cons!13181 (h!18582 C!7476) (t!117870 List!13247)) )
))
(declare-datatypes ((IArray!8661 0))(
  ( (IArray!8662 (innerList!4388 List!13247)) )
))
(declare-datatypes ((Conc!4328 0))(
  ( (Node!4328 (left!11333 Conc!4328) (right!11663 Conc!4328) (csize!8886 Int) (cheight!4539 Int)) (Leaf!6664 (xs!7043 IArray!8661) (csize!8887 Int)) (Empty!4328) )
))
(declare-datatypes ((BalanceConc!8596 0))(
  ( (BalanceConc!8597 (c!214740 Conc!4328)) )
))
(declare-datatypes ((Regex!3593 0))(
  ( (ElementMatch!3593 (c!214741 C!7476)) (Concat!5963 (regOne!7698 Regex!3593) (regTwo!7698 Regex!3593)) (EmptyExpr!3593) (Star!3593 (reg!3922 Regex!3593)) (EmptyLang!3593) (Union!3593 (regOne!7699 Regex!3593) (regTwo!7699 Regex!3593)) )
))
(declare-datatypes ((String!16081 0))(
  ( (String!16082 (value!74583 String)) )
))
(declare-datatypes ((TokenValueInjection!4398 0))(
  ( (TokenValueInjection!4399 (toValue!3498 Int) (toChars!3357 Int)) )
))
(declare-datatypes ((Rule!4358 0))(
  ( (Rule!4359 (regex!2279 Regex!3593) (tag!2541 String!16081) (isSeparator!2279 Bool) (transformation!2279 TokenValueInjection!4398)) )
))
(declare-datatypes ((Token!4220 0))(
  ( (Token!4221 (value!74584 TokenValue!2369) (rule!4018 Rule!4358) (size!10738 Int) (originalCharacters!3141 List!13247)) )
))
(declare-fun t2!34 () Token!4220)

(declare-fun inv!17584 (String!16081) Bool)

(declare-fun inv!17587 (TokenValueInjection!4398) Bool)

(assert (=> b!1306647 (= e!837916 (and tp!381155 (inv!17584 (tag!2541 (rule!4018 t2!34))) (inv!17587 (transformation!2279 (rule!4018 t2!34))) e!837910))))

(declare-fun b!1306649 () Bool)

(declare-fun e!837907 () Bool)

(declare-fun e!837923 () Bool)

(assert (=> b!1306649 (= e!837907 e!837923)))

(declare-fun res!585843 () Bool)

(assert (=> b!1306649 (=> res!585843 e!837923)))

(declare-datatypes ((List!13248 0))(
  ( (Nil!13182) (Cons!13182 (h!18583 Token!4220) (t!117871 List!13248)) )
))
(declare-datatypes ((IArray!8663 0))(
  ( (IArray!8664 (innerList!4389 List!13248)) )
))
(declare-datatypes ((Conc!4329 0))(
  ( (Node!4329 (left!11334 Conc!4329) (right!11664 Conc!4329) (csize!8888 Int) (cheight!4540 Int)) (Leaf!6665 (xs!7044 IArray!8663) (csize!8889 Int)) (Empty!4329) )
))
(declare-datatypes ((BalanceConc!8598 0))(
  ( (BalanceConc!8599 (c!214742 Conc!4329)) )
))
(declare-datatypes ((tuple2!12770 0))(
  ( (tuple2!12771 (_1!7271 BalanceConc!8598) (_2!7271 BalanceConc!8596)) )
))
(declare-fun lt!429988 () tuple2!12770)

(declare-fun lt!429989 () List!13248)

(declare-fun list!4942 (BalanceConc!8598) List!13248)

(assert (=> b!1306649 (= res!585843 (not (= (list!4942 (_1!7271 lt!429988)) lt!429989)))))

(declare-fun t1!34 () Token!4220)

(assert (=> b!1306649 (= lt!429989 (Cons!13182 t1!34 Nil!13182))))

(declare-datatypes ((LexerInterface!1974 0))(
  ( (LexerInterfaceExt!1971 (__x!8568 Int)) (Lexer!1972) )
))
(declare-fun thiss!19762 () LexerInterface!1974)

(declare-fun lt!429993 () BalanceConc!8596)

(declare-datatypes ((List!13249 0))(
  ( (Nil!13183) (Cons!13183 (h!18584 Rule!4358) (t!117872 List!13249)) )
))
(declare-fun rules!2550 () List!13249)

(declare-fun lex!809 (LexerInterface!1974 List!13249 BalanceConc!8596) tuple2!12770)

(assert (=> b!1306649 (= lt!429988 (lex!809 thiss!19762 rules!2550 lt!429993))))

(declare-fun print!748 (LexerInterface!1974 BalanceConc!8598) BalanceConc!8596)

(declare-fun singletonSeq!850 (Token!4220) BalanceConc!8598)

(assert (=> b!1306649 (= lt!429993 (print!748 thiss!19762 (singletonSeq!850 t1!34)))))

(declare-fun lt!429991 () Rule!4358)

(declare-fun lambda!52255 () Int)

(declare-fun getWitness!152 (List!13249 Int) Rule!4358)

(assert (=> b!1306649 (= lt!429991 (getWitness!152 rules!2550 lambda!52255))))

(declare-fun b!1306650 () Bool)

(declare-fun e!837908 () Bool)

(declare-fun e!837917 () Bool)

(assert (=> b!1306650 (= e!837908 e!837917)))

(declare-fun res!585854 () Bool)

(assert (=> b!1306650 (=> res!585854 e!837917)))

(declare-fun lt!429984 () List!13247)

(declare-fun lt!429982 () C!7476)

(declare-fun contains!2247 (List!13247 C!7476) Bool)

(assert (=> b!1306650 (= res!585854 (not (contains!2247 lt!429984 lt!429982)))))

(declare-fun lt!429983 () BalanceConc!8596)

(declare-fun apply!2959 (BalanceConc!8596 Int) C!7476)

(assert (=> b!1306650 (= lt!429982 (apply!2959 lt!429983 0))))

(declare-fun b!1306651 () Bool)

(declare-fun e!837911 () Bool)

(declare-fun e!837924 () Bool)

(declare-fun tp!381154 () Bool)

(assert (=> b!1306651 (= e!837911 (and tp!381154 (inv!17584 (tag!2541 (rule!4018 t1!34))) (inv!17587 (transformation!2279 (rule!4018 t1!34))) e!837924))))

(assert (=> b!1306652 (= e!837924 (and tp!381158 tp!381149))))

(declare-fun b!1306653 () Bool)

(declare-fun e!837920 () Bool)

(declare-fun e!837919 () Bool)

(declare-fun tp!381148 () Bool)

(assert (=> b!1306653 (= e!837920 (and e!837919 tp!381148))))

(declare-fun b!1306654 () Bool)

(declare-fun res!585842 () Bool)

(declare-fun e!837921 () Bool)

(assert (=> b!1306654 (=> (not res!585842) (not e!837921))))

(declare-fun isEmpty!7802 (List!13249) Bool)

(assert (=> b!1306654 (= res!585842 (not (isEmpty!7802 rules!2550)))))

(declare-fun b!1306655 () Bool)

(declare-fun res!585844 () Bool)

(assert (=> b!1306655 (=> res!585844 e!837917)))

(declare-fun lt!429995 () List!13247)

(declare-fun lt!429996 () C!7476)

(assert (=> b!1306655 (= res!585844 (not (contains!2247 lt!429995 lt!429996)))))

(declare-fun e!837915 () Bool)

(assert (=> b!1306656 (= e!837915 e!837907)))

(declare-fun res!585846 () Bool)

(assert (=> b!1306656 (=> res!585846 e!837907)))

(declare-fun exists!260 (List!13249 Int) Bool)

(assert (=> b!1306656 (= res!585846 (not (exists!260 rules!2550 lambda!52255)))))

(assert (=> b!1306656 (exists!260 rules!2550 lambda!52255)))

(declare-fun lt!429994 () Regex!3593)

(declare-fun lambda!52253 () Int)

(declare-datatypes ((Unit!19274 0))(
  ( (Unit!19275) )
))
(declare-fun lt!429992 () Unit!19274)

(declare-fun lemmaMapContains!22 (List!13249 Int Regex!3593) Unit!19274)

(assert (=> b!1306656 (= lt!429992 (lemmaMapContains!22 rules!2550 lambda!52253 lt!429994))))

(declare-fun e!837913 () Bool)

(assert (=> b!1306657 (= e!837917 e!837913)))

(declare-fun res!585849 () Bool)

(assert (=> b!1306657 (=> res!585849 e!837913)))

(declare-fun lambda!52254 () Int)

(declare-datatypes ((List!13250 0))(
  ( (Nil!13184) (Cons!13184 (h!18585 Regex!3593) (t!117873 List!13250)) )
))
(declare-fun exists!261 (List!13250 Int) Bool)

(declare-fun map!2885 (List!13249 Int) List!13250)

(assert (=> b!1306657 (= res!585849 (not (exists!261 (map!2885 rules!2550 lambda!52253) lambda!52254)))))

(declare-fun lt!429987 () List!13250)

(assert (=> b!1306657 (exists!261 lt!429987 lambda!52254)))

(declare-fun lt!429985 () Regex!3593)

(declare-fun lt!429998 () Unit!19274)

(declare-fun matchRGenUnionSpec!30 (Regex!3593 List!13250 List!13247) Unit!19274)

(assert (=> b!1306657 (= lt!429998 (matchRGenUnionSpec!30 lt!429985 lt!429987 lt!429995))))

(assert (=> b!1306657 (= lt!429987 (map!2885 rules!2550 lambda!52253))))

(declare-fun b!1306658 () Bool)

(declare-fun res!585847 () Bool)

(assert (=> b!1306658 (=> res!585847 e!837923)))

(declare-datatypes ((tuple2!12772 0))(
  ( (tuple2!12773 (_1!7272 List!13248) (_2!7272 List!13247)) )
))
(declare-fun lexList!512 (LexerInterface!1974 List!13249 List!13247) tuple2!12772)

(declare-fun list!4943 (BalanceConc!8596) List!13247)

(assert (=> b!1306658 (= res!585847 (not (= (lexList!512 thiss!19762 rules!2550 (list!4943 lt!429993)) (tuple2!12773 lt!429989 Nil!13181))))))

(declare-fun b!1306659 () Bool)

(assert (=> b!1306659 (= e!837923 true)))

(declare-fun lt!429997 () Bool)

(declare-fun contains!2248 (List!13249 Rule!4358) Bool)

(assert (=> b!1306659 (= lt!429997 (contains!2248 rules!2550 (rule!4018 t1!34)))))

(declare-fun res!585850 () Bool)

(assert (=> start!115446 (=> (not res!585850) (not e!837921))))

(get-info :version)

(assert (=> start!115446 (= res!585850 ((_ is Lexer!1972) thiss!19762))))

(assert (=> start!115446 e!837921))

(assert (=> start!115446 true))

(assert (=> start!115446 e!837920))

(declare-fun e!837905 () Bool)

(declare-fun inv!17588 (Token!4220) Bool)

(assert (=> start!115446 (and (inv!17588 t1!34) e!837905)))

(declare-fun e!837928 () Bool)

(assert (=> start!115446 (and (inv!17588 t2!34) e!837928)))

(declare-fun b!1306648 () Bool)

(declare-fun res!585839 () Bool)

(assert (=> b!1306648 (=> (not res!585839) (not e!837921))))

(assert (=> b!1306648 (= res!585839 (not (= (isSeparator!2279 (rule!4018 t1!34)) (isSeparator!2279 (rule!4018 t2!34)))))))

(declare-fun b!1306660 () Bool)

(declare-fun res!585837 () Bool)

(assert (=> b!1306660 (=> res!585837 e!837923)))

(declare-fun isEmpty!7803 (BalanceConc!8596) Bool)

(assert (=> b!1306660 (= res!585837 (not (isEmpty!7803 (_2!7271 lt!429988))))))

(declare-fun b!1306661 () Bool)

(declare-fun res!585857 () Bool)

(assert (=> b!1306661 (=> (not res!585857) (not e!837921))))

(declare-fun rulesProduceIndividualToken!943 (LexerInterface!1974 List!13249 Token!4220) Bool)

(assert (=> b!1306661 (= res!585857 (rulesProduceIndividualToken!943 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1306662 () Bool)

(declare-fun e!837918 () Bool)

(assert (=> b!1306662 (= e!837921 e!837918)))

(declare-fun res!585853 () Bool)

(assert (=> b!1306662 (=> (not res!585853) (not e!837918))))

(declare-fun lt!429990 () BalanceConc!8596)

(declare-fun size!10739 (BalanceConc!8596) Int)

(assert (=> b!1306662 (= res!585853 (> (size!10739 lt!429990) 0))))

(declare-fun charsOf!1251 (Token!4220) BalanceConc!8596)

(assert (=> b!1306662 (= lt!429990 (charsOf!1251 t2!34))))

(declare-fun b!1306663 () Bool)

(declare-fun res!585845 () Bool)

(assert (=> b!1306663 (=> (not res!585845) (not e!837918))))

(declare-fun sepAndNonSepRulesDisjointChars!652 (List!13249 List!13249) Bool)

(assert (=> b!1306663 (= res!585845 (sepAndNonSepRulesDisjointChars!652 rules!2550 rules!2550))))

(declare-fun e!837926 () Bool)

(declare-fun tp!381156 () Bool)

(declare-fun b!1306664 () Bool)

(assert (=> b!1306664 (= e!837919 (and tp!381156 (inv!17584 (tag!2541 (h!18584 rules!2550))) (inv!17587 (transformation!2279 (h!18584 rules!2550))) e!837926))))

(declare-fun b!1306665 () Bool)

(declare-fun e!837909 () Bool)

(assert (=> b!1306665 (= e!837909 e!837908)))

(declare-fun res!585859 () Bool)

(assert (=> b!1306665 (=> res!585859 e!837908)))

(declare-fun ++!3356 (List!13247 List!13247) List!13247)

(declare-fun getSuffix!449 (List!13247 List!13247) List!13247)

(assert (=> b!1306665 (= res!585859 (not (= lt!429995 (++!3356 lt!429984 (getSuffix!449 lt!429995 lt!429984)))))))

(declare-fun lambda!52252 () Int)

(declare-fun pickWitness!56 (Int) List!13247)

(assert (=> b!1306665 (= lt!429995 (pickWitness!56 lambda!52252))))

(assert (=> b!1306666 (= e!837910 (and tp!381151 tp!381157))))

(declare-fun b!1306667 () Bool)

(declare-fun res!585840 () Bool)

(assert (=> b!1306667 (=> res!585840 e!837917)))

(declare-fun matchR!1595 (Regex!3593 List!13247) Bool)

(assert (=> b!1306667 (= res!585840 (not (matchR!1595 lt!429985 lt!429995)))))

(declare-fun b!1306668 () Bool)

(declare-fun res!585856 () Bool)

(assert (=> b!1306668 (=> res!585856 e!837923)))

(declare-fun lt!429981 () List!13247)

(declare-datatypes ((tuple2!12774 0))(
  ( (tuple2!12775 (_1!7273 Token!4220) (_2!7273 List!13247)) )
))
(declare-datatypes ((Option!2544 0))(
  ( (None!2543) (Some!2543 (v!21049 tuple2!12774)) )
))
(declare-fun maxPrefix!984 (LexerInterface!1974 List!13249 List!13247) Option!2544)

(assert (=> b!1306668 (= res!585856 (not (= (maxPrefix!984 thiss!19762 rules!2550 lt!429981) (Some!2543 (tuple2!12775 t1!34 Nil!13181)))))))

(declare-fun b!1306669 () Bool)

(declare-fun res!585851 () Bool)

(assert (=> b!1306669 (=> res!585851 e!837917)))

(assert (=> b!1306669 (= res!585851 (not (contains!2247 lt!429984 lt!429996)))))

(declare-fun tp!381153 () Bool)

(declare-fun b!1306670 () Bool)

(declare-fun inv!21 (TokenValue!2369) Bool)

(assert (=> b!1306670 (= e!837928 (and (inv!21 (value!74584 t2!34)) e!837916 tp!381153))))

(declare-fun b!1306671 () Bool)

(declare-fun res!585852 () Bool)

(assert (=> b!1306671 (=> (not res!585852) (not e!837921))))

(declare-fun rulesInvariant!1844 (LexerInterface!1974 List!13249) Bool)

(assert (=> b!1306671 (= res!585852 (rulesInvariant!1844 thiss!19762 rules!2550))))

(declare-fun b!1306672 () Bool)

(declare-fun res!585855 () Bool)

(assert (=> b!1306672 (=> res!585855 e!837917)))

(assert (=> b!1306672 (= res!585855 (not (contains!2247 lt!429995 lt!429982)))))

(declare-fun tp!381152 () Bool)

(declare-fun b!1306673 () Bool)

(assert (=> b!1306673 (= e!837905 (and (inv!21 (value!74584 t1!34)) e!837911 tp!381152))))

(declare-fun e!837912 () Bool)

(assert (=> b!1306674 (= e!837912 (not e!837909))))

(declare-fun res!585858 () Bool)

(assert (=> b!1306674 (=> res!585858 e!837909)))

(declare-fun Exists!751 (Int) Bool)

(assert (=> b!1306674 (= res!585858 (not (Exists!751 lambda!52252)))))

(assert (=> b!1306674 (Exists!751 lambda!52252)))

(declare-fun lt!429986 () Unit!19274)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!69 (Regex!3593 List!13247) Unit!19274)

(assert (=> b!1306674 (= lt!429986 (lemmaPrefixMatchThenExistsStringThatMatches!69 lt!429985 lt!429984))))

(declare-fun b!1306675 () Bool)

(assert (=> b!1306675 (= e!837918 e!837912)))

(declare-fun res!585838 () Bool)

(assert (=> b!1306675 (=> (not res!585838) (not e!837912))))

(declare-fun prefixMatch!106 (Regex!3593 List!13247) Bool)

(assert (=> b!1306675 (= res!585838 (prefixMatch!106 lt!429985 lt!429984))))

(declare-fun rulesRegex!164 (LexerInterface!1974 List!13249) Regex!3593)

(assert (=> b!1306675 (= lt!429985 (rulesRegex!164 thiss!19762 rules!2550))))

(assert (=> b!1306675 (= lt!429984 (++!3356 lt!429981 (Cons!13181 lt!429996 Nil!13181)))))

(assert (=> b!1306675 (= lt!429996 (apply!2959 lt!429990 0))))

(assert (=> b!1306675 (= lt!429981 (list!4943 lt!429983))))

(assert (=> b!1306675 (= lt!429983 (charsOf!1251 t1!34))))

(assert (=> b!1306676 (= e!837926 (and tp!381150 tp!381147))))

(declare-fun b!1306677 () Bool)

(declare-fun res!585841 () Bool)

(assert (=> b!1306677 (=> (not res!585841) (not e!837918))))

(declare-fun separableTokensPredicate!257 (LexerInterface!1974 Token!4220 Token!4220 List!13249) Bool)

(assert (=> b!1306677 (= res!585841 (not (separableTokensPredicate!257 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1306678 () Bool)

(assert (=> b!1306678 (= e!837913 e!837915)))

(declare-fun res!585860 () Bool)

(assert (=> b!1306678 (=> res!585860 e!837915)))

(declare-fun contains!2249 (List!13250 Regex!3593) Bool)

(assert (=> b!1306678 (= res!585860 (not (contains!2249 (map!2885 rules!2550 lambda!52253) lt!429994)))))

(declare-fun getWitness!153 (List!13250 Int) Regex!3593)

(assert (=> b!1306678 (= lt!429994 (getWitness!153 (map!2885 rules!2550 lambda!52253) lambda!52254))))

(declare-fun b!1306679 () Bool)

(declare-fun res!585848 () Bool)

(assert (=> b!1306679 (=> (not res!585848) (not e!837921))))

(assert (=> b!1306679 (= res!585848 (rulesProduceIndividualToken!943 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!115446 res!585850) b!1306654))

(assert (= (and b!1306654 res!585842) b!1306671))

(assert (= (and b!1306671 res!585852) b!1306661))

(assert (= (and b!1306661 res!585857) b!1306679))

(assert (= (and b!1306679 res!585848) b!1306648))

(assert (= (and b!1306648 res!585839) b!1306662))

(assert (= (and b!1306662 res!585853) b!1306663))

(assert (= (and b!1306663 res!585845) b!1306677))

(assert (= (and b!1306677 res!585841) b!1306675))

(assert (= (and b!1306675 res!585838) b!1306674))

(assert (= (and b!1306674 (not res!585858)) b!1306665))

(assert (= (and b!1306665 (not res!585859)) b!1306650))

(assert (= (and b!1306650 (not res!585854)) b!1306672))

(assert (= (and b!1306672 (not res!585855)) b!1306669))

(assert (= (and b!1306669 (not res!585851)) b!1306655))

(assert (= (and b!1306655 (not res!585844)) b!1306667))

(assert (= (and b!1306667 (not res!585840)) b!1306657))

(assert (= (and b!1306657 (not res!585849)) b!1306678))

(assert (= (and b!1306678 (not res!585860)) b!1306656))

(assert (= (and b!1306656 (not res!585846)) b!1306649))

(assert (= (and b!1306649 (not res!585843)) b!1306660))

(assert (= (and b!1306660 (not res!585837)) b!1306658))

(assert (= (and b!1306658 (not res!585847)) b!1306668))

(assert (= (and b!1306668 (not res!585856)) b!1306659))

(assert (= b!1306664 b!1306676))

(assert (= b!1306653 b!1306664))

(assert (= (and start!115446 ((_ is Cons!13183) rules!2550)) b!1306653))

(assert (= b!1306651 b!1306652))

(assert (= b!1306673 b!1306651))

(assert (= start!115446 b!1306673))

(assert (= b!1306647 b!1306666))

(assert (= b!1306670 b!1306647))

(assert (= start!115446 b!1306670))

(declare-fun m!1458305 () Bool)

(assert (=> b!1306678 m!1458305))

(assert (=> b!1306678 m!1458305))

(declare-fun m!1458307 () Bool)

(assert (=> b!1306678 m!1458307))

(assert (=> b!1306678 m!1458305))

(assert (=> b!1306678 m!1458305))

(declare-fun m!1458309 () Bool)

(assert (=> b!1306678 m!1458309))

(declare-fun m!1458311 () Bool)

(assert (=> b!1306669 m!1458311))

(declare-fun m!1458313 () Bool)

(assert (=> b!1306661 m!1458313))

(declare-fun m!1458315 () Bool)

(assert (=> b!1306659 m!1458315))

(declare-fun m!1458317 () Bool)

(assert (=> b!1306668 m!1458317))

(declare-fun m!1458319 () Bool)

(assert (=> b!1306667 m!1458319))

(declare-fun m!1458321 () Bool)

(assert (=> b!1306679 m!1458321))

(declare-fun m!1458323 () Bool)

(assert (=> b!1306664 m!1458323))

(declare-fun m!1458325 () Bool)

(assert (=> b!1306664 m!1458325))

(declare-fun m!1458327 () Bool)

(assert (=> b!1306658 m!1458327))

(assert (=> b!1306658 m!1458327))

(declare-fun m!1458329 () Bool)

(assert (=> b!1306658 m!1458329))

(declare-fun m!1458331 () Bool)

(assert (=> b!1306663 m!1458331))

(declare-fun m!1458333 () Bool)

(assert (=> b!1306655 m!1458333))

(declare-fun m!1458335 () Bool)

(assert (=> b!1306670 m!1458335))

(declare-fun m!1458337 () Bool)

(assert (=> b!1306656 m!1458337))

(assert (=> b!1306656 m!1458337))

(declare-fun m!1458339 () Bool)

(assert (=> b!1306656 m!1458339))

(declare-fun m!1458341 () Bool)

(assert (=> b!1306672 m!1458341))

(declare-fun m!1458343 () Bool)

(assert (=> b!1306677 m!1458343))

(declare-fun m!1458345 () Bool)

(assert (=> b!1306649 m!1458345))

(declare-fun m!1458347 () Bool)

(assert (=> b!1306649 m!1458347))

(declare-fun m!1458349 () Bool)

(assert (=> b!1306649 m!1458349))

(declare-fun m!1458351 () Bool)

(assert (=> b!1306649 m!1458351))

(assert (=> b!1306649 m!1458349))

(declare-fun m!1458353 () Bool)

(assert (=> b!1306649 m!1458353))

(declare-fun m!1458355 () Bool)

(assert (=> b!1306673 m!1458355))

(declare-fun m!1458357 () Bool)

(assert (=> b!1306674 m!1458357))

(assert (=> b!1306674 m!1458357))

(declare-fun m!1458359 () Bool)

(assert (=> b!1306674 m!1458359))

(declare-fun m!1458361 () Bool)

(assert (=> b!1306654 m!1458361))

(declare-fun m!1458363 () Bool)

(assert (=> b!1306650 m!1458363))

(declare-fun m!1458365 () Bool)

(assert (=> b!1306650 m!1458365))

(declare-fun m!1458367 () Bool)

(assert (=> b!1306651 m!1458367))

(declare-fun m!1458369 () Bool)

(assert (=> b!1306651 m!1458369))

(declare-fun m!1458371 () Bool)

(assert (=> b!1306665 m!1458371))

(assert (=> b!1306665 m!1458371))

(declare-fun m!1458373 () Bool)

(assert (=> b!1306665 m!1458373))

(declare-fun m!1458375 () Bool)

(assert (=> b!1306665 m!1458375))

(declare-fun m!1458377 () Bool)

(assert (=> b!1306647 m!1458377))

(declare-fun m!1458379 () Bool)

(assert (=> b!1306647 m!1458379))

(declare-fun m!1458381 () Bool)

(assert (=> start!115446 m!1458381))

(declare-fun m!1458383 () Bool)

(assert (=> start!115446 m!1458383))

(declare-fun m!1458385 () Bool)

(assert (=> b!1306660 m!1458385))

(declare-fun m!1458387 () Bool)

(assert (=> b!1306662 m!1458387))

(declare-fun m!1458389 () Bool)

(assert (=> b!1306662 m!1458389))

(declare-fun m!1458391 () Bool)

(assert (=> b!1306657 m!1458391))

(assert (=> b!1306657 m!1458305))

(declare-fun m!1458393 () Bool)

(assert (=> b!1306657 m!1458393))

(assert (=> b!1306657 m!1458305))

(declare-fun m!1458395 () Bool)

(assert (=> b!1306657 m!1458395))

(assert (=> b!1306657 m!1458305))

(declare-fun m!1458397 () Bool)

(assert (=> b!1306671 m!1458397))

(declare-fun m!1458399 () Bool)

(assert (=> b!1306675 m!1458399))

(declare-fun m!1458401 () Bool)

(assert (=> b!1306675 m!1458401))

(declare-fun m!1458403 () Bool)

(assert (=> b!1306675 m!1458403))

(declare-fun m!1458405 () Bool)

(assert (=> b!1306675 m!1458405))

(declare-fun m!1458407 () Bool)

(assert (=> b!1306675 m!1458407))

(declare-fun m!1458409 () Bool)

(assert (=> b!1306675 m!1458409))

(check-sat (not b!1306649) (not b!1306671) (not b!1306661) (not b!1306647) (not b!1306674) b_and!87217 (not b_next!32019) (not b!1306675) (not b!1306667) (not b!1306679) (not b!1306659) (not b!1306658) b_and!87221 (not b!1306668) (not b!1306663) b_and!87225 (not b!1306670) (not b!1306669) (not b!1306657) (not b!1306651) (not b!1306653) (not b_next!32025) b_and!87223 (not b_next!32027) (not b!1306654) (not b_next!32021) b_and!87219 (not b!1306672) (not b!1306673) (not b!1306664) (not start!115446) (not b!1306677) (not b!1306656) (not b_next!32023) b_and!87215 (not b!1306665) (not b_next!32029) (not b!1306660) (not b!1306678) (not b!1306662) (not b!1306655) (not b!1306650))
(check-sat b_and!87221 b_and!87225 b_and!87219 (not b_next!32023) b_and!87217 (not b_next!32019) b_and!87215 (not b_next!32029) (not b_next!32025) b_and!87223 (not b_next!32027) (not b_next!32021))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115638 () Bool)

(assert start!115638)

(declare-fun b!1309662 () Bool)

(declare-fun b_free!31539 () Bool)

(declare-fun b_next!32243 () Bool)

(assert (=> b!1309662 (= b_free!31539 (not b_next!32243))))

(declare-fun tp!381891 () Bool)

(declare-fun b_and!87487 () Bool)

(assert (=> b!1309662 (= tp!381891 b_and!87487)))

(declare-fun b_free!31541 () Bool)

(declare-fun b_next!32245 () Bool)

(assert (=> b!1309662 (= b_free!31541 (not b_next!32245))))

(declare-fun tp!381889 () Bool)

(declare-fun b_and!87489 () Bool)

(assert (=> b!1309662 (= tp!381889 b_and!87489)))

(declare-fun b!1309658 () Bool)

(declare-fun b_free!31543 () Bool)

(declare-fun b_next!32247 () Bool)

(assert (=> b!1309658 (= b_free!31543 (not b_next!32247))))

(declare-fun tp!381893 () Bool)

(declare-fun b_and!87491 () Bool)

(assert (=> b!1309658 (= tp!381893 b_and!87491)))

(declare-fun b_free!31545 () Bool)

(declare-fun b_next!32249 () Bool)

(assert (=> b!1309658 (= b_free!31545 (not b_next!32249))))

(declare-fun tp!381888 () Bool)

(declare-fun b_and!87493 () Bool)

(assert (=> b!1309658 (= tp!381888 b_and!87493)))

(declare-fun b!1309650 () Bool)

(declare-fun b_free!31547 () Bool)

(declare-fun b_next!32251 () Bool)

(assert (=> b!1309650 (= b_free!31547 (not b_next!32251))))

(declare-fun tp!381890 () Bool)

(declare-fun b_and!87495 () Bool)

(assert (=> b!1309650 (= tp!381890 b_and!87495)))

(declare-fun b_free!31549 () Bool)

(declare-fun b_next!32253 () Bool)

(assert (=> b!1309650 (= b_free!31549 (not b_next!32253))))

(declare-fun tp!381892 () Bool)

(declare-fun b_and!87497 () Bool)

(assert (=> b!1309650 (= tp!381892 b_and!87497)))

(declare-fun b!1309659 () Bool)

(assert (=> b!1309659 true))

(assert (=> b!1309659 true))

(declare-fun b!1309664 () Bool)

(assert (=> b!1309664 true))

(declare-fun b!1309666 () Bool)

(assert (=> b!1309666 true))

(declare-fun b!1309641 () Bool)

(declare-fun res!587843 () Bool)

(declare-fun e!839882 () Bool)

(assert (=> b!1309641 (=> res!587843 e!839882)))

(declare-datatypes ((LexerInterface!1992 0))(
  ( (LexerInterfaceExt!1989 (__x!8603 Int)) (Lexer!1990) )
))
(declare-fun thiss!19762 () LexerInterface!1992)

(declare-datatypes ((C!7512 0))(
  ( (C!7513 (val!4316 Int)) )
))
(declare-datatypes ((List!13338 0))(
  ( (Nil!13272) (Cons!13272 (h!18673 C!7512) (t!117997 List!13338)) )
))
(declare-datatypes ((IArray!8733 0))(
  ( (IArray!8734 (innerList!4424 List!13338)) )
))
(declare-datatypes ((Conc!4364 0))(
  ( (Node!4364 (left!11414 Conc!4364) (right!11744 Conc!4364) (csize!8958 Int) (cheight!4575 Int)) (Leaf!6709 (xs!7079 IArray!8733) (csize!8959 Int)) (Empty!4364) )
))
(declare-datatypes ((BalanceConc!8668 0))(
  ( (BalanceConc!8669 (c!214926 Conc!4364)) )
))
(declare-fun lt!431297 () BalanceConc!8668)

(declare-datatypes ((List!13339 0))(
  ( (Nil!13273) (Cons!13273 (h!18674 (_ BitVec 16)) (t!117998 List!13339)) )
))
(declare-datatypes ((TokenValue!2387 0))(
  ( (FloatLiteralValue!4774 (text!17154 List!13339)) (TokenValueExt!2386 (__x!8604 Int)) (Broken!11935 (value!75071 List!13339)) (Object!2452) (End!2387) (Def!2387) (Underscore!2387) (Match!2387) (Else!2387) (Error!2387) (Case!2387) (If!2387) (Extends!2387) (Abstract!2387) (Class!2387) (Val!2387) (DelimiterValue!4774 (del!2447 List!13339)) (KeywordValue!2393 (value!75072 List!13339)) (CommentValue!4774 (value!75073 List!13339)) (WhitespaceValue!4774 (value!75074 List!13339)) (IndentationValue!2387 (value!75075 List!13339)) (String!16170) (Int32!2387) (Broken!11936 (value!75076 List!13339)) (Boolean!2388) (Unit!19331) (OperatorValue!2390 (op!2447 List!13339)) (IdentifierValue!4774 (value!75077 List!13339)) (IdentifierValue!4775 (value!75078 List!13339)) (WhitespaceValue!4775 (value!75079 List!13339)) (True!4774) (False!4774) (Broken!11937 (value!75080 List!13339)) (Broken!11938 (value!75081 List!13339)) (True!4775) (RightBrace!2387) (RightBracket!2387) (Colon!2387) (Null!2387) (Comma!2387) (LeftBracket!2387) (False!4775) (LeftBrace!2387) (ImaginaryLiteralValue!2387 (text!17155 List!13339)) (StringLiteralValue!7161 (value!75082 List!13339)) (EOFValue!2387 (value!75083 List!13339)) (IdentValue!2387 (value!75084 List!13339)) (DelimiterValue!4775 (value!75085 List!13339)) (DedentValue!2387 (value!75086 List!13339)) (NewLineValue!2387 (value!75087 List!13339)) (IntegerValue!7161 (value!75088 (_ BitVec 32)) (text!17156 List!13339)) (IntegerValue!7162 (value!75089 Int) (text!17157 List!13339)) (Times!2387) (Or!2387) (Equal!2387) (Minus!2387) (Broken!11939 (value!75090 List!13339)) (And!2387) (Div!2387) (LessEqual!2387) (Mod!2387) (Concat!5998) (Not!2387) (Plus!2387) (SpaceValue!2387 (value!75091 List!13339)) (IntegerValue!7163 (value!75092 Int) (text!17158 List!13339)) (StringLiteralValue!7162 (text!17159 List!13339)) (FloatLiteralValue!4775 (text!17160 List!13339)) (BytesLiteralValue!2387 (value!75093 List!13339)) (CommentValue!4775 (value!75094 List!13339)) (StringLiteralValue!7163 (value!75095 List!13339)) (ErrorTokenValue!2387 (msg!2448 List!13339)) )
))
(declare-datatypes ((Regex!3611 0))(
  ( (ElementMatch!3611 (c!214927 C!7512)) (Concat!5999 (regOne!7734 Regex!3611) (regTwo!7734 Regex!3611)) (EmptyExpr!3611) (Star!3611 (reg!3940 Regex!3611)) (EmptyLang!3611) (Union!3611 (regOne!7735 Regex!3611) (regTwo!7735 Regex!3611)) )
))
(declare-datatypes ((String!16171 0))(
  ( (String!16172 (value!75096 String)) )
))
(declare-datatypes ((TokenValueInjection!4434 0))(
  ( (TokenValueInjection!4435 (toValue!3516 Int) (toChars!3375 Int)) )
))
(declare-datatypes ((Rule!4394 0))(
  ( (Rule!4395 (regex!2297 Regex!3611) (tag!2559 String!16171) (isSeparator!2297 Bool) (transformation!2297 TokenValueInjection!4434)) )
))
(declare-datatypes ((List!13340 0))(
  ( (Nil!13274) (Cons!13274 (h!18675 Rule!4394) (t!117999 List!13340)) )
))
(declare-fun rules!2550 () List!13340)

(declare-datatypes ((Token!4256 0))(
  ( (Token!4257 (value!75097 TokenValue!2387) (rule!4036 Rule!4394) (size!10786 Int) (originalCharacters!3159 List!13338)) )
))
(declare-fun t2!34 () Token!4256)

(declare-datatypes ((tuple2!12878 0))(
  ( (tuple2!12879 (_1!7325 Token!4256) (_2!7325 List!13338)) )
))
(declare-datatypes ((Option!2562 0))(
  ( (None!2561) (Some!2561 (v!21075 tuple2!12878)) )
))
(declare-fun maxPrefix!1002 (LexerInterface!1992 List!13340 List!13338) Option!2562)

(declare-fun list!4982 (BalanceConc!8668) List!13338)

(assert (=> b!1309641 (= res!587843 (not (= (maxPrefix!1002 thiss!19762 rules!2550 (list!4982 lt!431297)) (Some!2561 (tuple2!12879 t2!34 Nil!13272)))))))

(declare-fun tp!381894 () Bool)

(declare-fun t1!34 () Token!4256)

(declare-fun e!839871 () Bool)

(declare-fun b!1309642 () Bool)

(declare-fun e!839873 () Bool)

(declare-fun inv!21 (TokenValue!2387) Bool)

(assert (=> b!1309642 (= e!839871 (and (inv!21 (value!75097 t1!34)) e!839873 tp!381894))))

(declare-fun b!1309643 () Bool)

(declare-fun res!587846 () Bool)

(declare-fun e!839866 () Bool)

(assert (=> b!1309643 (=> res!587846 e!839866)))

(declare-fun contains!2301 (List!13340 Rule!4394) Bool)

(assert (=> b!1309643 (= res!587846 (not (contains!2301 rules!2550 (rule!4036 t1!34))))))

(declare-fun b!1309644 () Bool)

(declare-fun res!587864 () Bool)

(declare-fun e!839881 () Bool)

(assert (=> b!1309644 (=> (not res!587864) (not e!839881))))

(assert (=> b!1309644 (= res!587864 (not (= (isSeparator!2297 (rule!4036 t1!34)) (isSeparator!2297 (rule!4036 t2!34)))))))

(declare-fun res!587866 () Bool)

(assert (=> start!115638 (=> (not res!587866) (not e!839881))))

(get-info :version)

(assert (=> start!115638 (= res!587866 ((_ is Lexer!1990) thiss!19762))))

(assert (=> start!115638 e!839881))

(assert (=> start!115638 true))

(declare-fun e!839878 () Bool)

(assert (=> start!115638 e!839878))

(declare-fun inv!17654 (Token!4256) Bool)

(assert (=> start!115638 (and (inv!17654 t1!34) e!839871)))

(declare-fun e!839874 () Bool)

(assert (=> start!115638 (and (inv!17654 t2!34) e!839874)))

(declare-fun b!1309645 () Bool)

(declare-fun res!587853 () Bool)

(assert (=> b!1309645 (=> res!587853 e!839882)))

(declare-fun lt!431294 () BalanceConc!8668)

(declare-datatypes ((List!13341 0))(
  ( (Nil!13275) (Cons!13275 (h!18676 Token!4256) (t!118000 List!13341)) )
))
(declare-fun lt!431293 () List!13341)

(declare-datatypes ((tuple2!12880 0))(
  ( (tuple2!12881 (_1!7326 List!13341) (_2!7326 List!13338)) )
))
(declare-fun lexList!530 (LexerInterface!1992 List!13340 List!13338) tuple2!12880)

(assert (=> b!1309645 (= res!587853 (not (= (lexList!530 thiss!19762 rules!2550 (list!4982 lt!431294)) (tuple2!12881 lt!431293 Nil!13272))))))

(declare-fun b!1309646 () Bool)

(declare-fun e!839865 () Bool)

(declare-fun e!839875 () Bool)

(assert (=> b!1309646 (= e!839865 e!839875)))

(declare-fun res!587839 () Bool)

(assert (=> b!1309646 (=> res!587839 e!839875)))

(declare-fun lambda!52879 () Int)

(declare-fun lt!431280 () Regex!3611)

(declare-datatypes ((List!13342 0))(
  ( (Nil!13276) (Cons!13276 (h!18677 Regex!3611) (t!118001 List!13342)) )
))
(declare-fun contains!2302 (List!13342 Regex!3611) Bool)

(declare-fun map!2912 (List!13340 Int) List!13342)

(assert (=> b!1309646 (= res!587839 (not (contains!2302 (map!2912 rules!2550 lambda!52879) lt!431280)))))

(declare-fun lambda!52880 () Int)

(declare-fun getWitness!188 (List!13342 Int) Regex!3611)

(assert (=> b!1309646 (= lt!431280 (getWitness!188 (map!2912 rules!2550 lambda!52879) lambda!52880))))

(declare-fun b!1309647 () Bool)

(declare-fun res!587856 () Bool)

(declare-fun e!839860 () Bool)

(assert (=> b!1309647 (=> res!587856 e!839860)))

(declare-fun lt!431289 () List!13338)

(declare-fun lt!431292 () C!7512)

(declare-fun contains!2303 (List!13338 C!7512) Bool)

(assert (=> b!1309647 (= res!587856 (not (contains!2303 lt!431289 lt!431292)))))

(declare-fun b!1309648 () Bool)

(declare-fun res!587840 () Bool)

(assert (=> b!1309648 (=> (not res!587840) (not e!839881))))

(declare-fun rulesInvariant!1862 (LexerInterface!1992 List!13340) Bool)

(assert (=> b!1309648 (= res!587840 (rulesInvariant!1862 thiss!19762 rules!2550))))

(declare-fun b!1309649 () Bool)

(declare-fun res!587858 () Bool)

(assert (=> b!1309649 (=> res!587858 e!839882)))

(declare-datatypes ((IArray!8735 0))(
  ( (IArray!8736 (innerList!4425 List!13341)) )
))
(declare-datatypes ((Conc!4365 0))(
  ( (Node!4365 (left!11415 Conc!4365) (right!11745 Conc!4365) (csize!8960 Int) (cheight!4576 Int)) (Leaf!6710 (xs!7080 IArray!8735) (csize!8961 Int)) (Empty!4365) )
))
(declare-datatypes ((BalanceConc!8670 0))(
  ( (BalanceConc!8671 (c!214928 Conc!4365)) )
))
(declare-datatypes ((tuple2!12882 0))(
  ( (tuple2!12883 (_1!7327 BalanceConc!8670) (_2!7327 BalanceConc!8668)) )
))
(declare-fun lt!431281 () tuple2!12882)

(declare-fun isEmpty!7848 (BalanceConc!8668) Bool)

(assert (=> b!1309649 (= res!587858 (not (isEmpty!7848 (_2!7327 lt!431281))))))

(declare-fun e!839880 () Bool)

(assert (=> b!1309650 (= e!839880 (and tp!381890 tp!381892))))

(declare-fun b!1309651 () Bool)

(declare-fun res!587855 () Bool)

(assert (=> b!1309651 (=> res!587855 e!839866)))

(declare-fun lt!431288 () List!13338)

(assert (=> b!1309651 (= res!587855 (not (= (maxPrefix!1002 thiss!19762 rules!2550 lt!431288) (Some!2561 (tuple2!12879 t1!34 Nil!13272)))))))

(declare-fun b!1309652 () Bool)

(declare-fun e!839868 () Bool)

(declare-fun e!839870 () Bool)

(assert (=> b!1309652 (= e!839868 e!839870)))

(declare-fun res!587842 () Bool)

(assert (=> b!1309652 (=> res!587842 e!839870)))

(declare-fun lt!431286 () List!13338)

(declare-fun ++!3376 (List!13338 List!13338) List!13338)

(declare-fun getSuffix!467 (List!13338 List!13338) List!13338)

(assert (=> b!1309652 (= res!587842 (not (= lt!431286 (++!3376 lt!431289 (getSuffix!467 lt!431286 lt!431289)))))))

(declare-fun lambda!52878 () Int)

(declare-fun pickWitness!74 (Int) List!13338)

(assert (=> b!1309652 (= lt!431286 (pickWitness!74 lambda!52878))))

(declare-fun b!1309653 () Bool)

(declare-fun e!839872 () Bool)

(declare-fun e!839861 () Bool)

(assert (=> b!1309653 (= e!839872 e!839861)))

(declare-fun res!587863 () Bool)

(assert (=> b!1309653 (=> (not res!587863) (not e!839861))))

(declare-fun lt!431299 () Regex!3611)

(declare-fun prefixMatch!124 (Regex!3611 List!13338) Bool)

(assert (=> b!1309653 (= res!587863 (prefixMatch!124 lt!431299 lt!431289))))

(declare-fun rulesRegex!182 (LexerInterface!1992 List!13340) Regex!3611)

(assert (=> b!1309653 (= lt!431299 (rulesRegex!182 thiss!19762 rules!2550))))

(assert (=> b!1309653 (= lt!431289 (++!3376 lt!431288 (Cons!13272 lt!431292 Nil!13272)))))

(declare-fun apply!2985 (BalanceConc!8668 Int) C!7512)

(assert (=> b!1309653 (= lt!431292 (apply!2985 lt!431297 0))))

(declare-fun lt!431298 () BalanceConc!8668)

(assert (=> b!1309653 (= lt!431288 (list!4982 lt!431298))))

(declare-fun charsOf!1269 (Token!4256) BalanceConc!8668)

(assert (=> b!1309653 (= lt!431298 (charsOf!1269 t1!34))))

(declare-fun b!1309654 () Bool)

(declare-fun res!587862 () Bool)

(assert (=> b!1309654 (=> (not res!587862) (not e!839881))))

(declare-fun rulesProduceIndividualToken!961 (LexerInterface!1992 List!13340 Token!4256) Bool)

(assert (=> b!1309654 (= res!587862 (rulesProduceIndividualToken!961 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1309655 () Bool)

(declare-fun res!587860 () Bool)

(assert (=> b!1309655 (=> (not res!587860) (not e!839881))))

(assert (=> b!1309655 (= res!587860 (rulesProduceIndividualToken!961 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1309656 () Bool)

(declare-fun res!587837 () Bool)

(assert (=> b!1309656 (=> res!587837 e!839860)))

(declare-fun lt!431285 () C!7512)

(assert (=> b!1309656 (= res!587837 (not (contains!2303 lt!431286 lt!431285)))))

(declare-fun e!839876 () Bool)

(declare-fun b!1309657 () Bool)

(declare-fun e!839869 () Bool)

(declare-fun tp!381887 () Bool)

(declare-fun inv!17651 (String!16171) Bool)

(declare-fun inv!17655 (TokenValueInjection!4434) Bool)

(assert (=> b!1309657 (= e!839869 (and tp!381887 (inv!17651 (tag!2559 (h!18675 rules!2550))) (inv!17655 (transformation!2297 (h!18675 rules!2550))) e!839876))))

(declare-fun e!839864 () Bool)

(assert (=> b!1309658 (= e!839864 (and tp!381893 tp!381888))))

(assert (=> b!1309659 (= e!839861 (not e!839868))))

(declare-fun res!587838 () Bool)

(assert (=> b!1309659 (=> res!587838 e!839868)))

(declare-fun Exists!769 (Int) Bool)

(assert (=> b!1309659 (= res!587838 (not (Exists!769 lambda!52878)))))

(assert (=> b!1309659 (Exists!769 lambda!52878)))

(declare-datatypes ((Unit!19332 0))(
  ( (Unit!19333) )
))
(declare-fun lt!431291 () Unit!19332)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!87 (Regex!3611 List!13338) Unit!19332)

(assert (=> b!1309659 (= lt!431291 (lemmaPrefixMatchThenExistsStringThatMatches!87 lt!431299 lt!431289))))

(declare-fun b!1309660 () Bool)

(declare-fun e!839862 () Bool)

(assert (=> b!1309660 (= e!839862 e!839866)))

(declare-fun res!587850 () Bool)

(assert (=> b!1309660 (=> res!587850 e!839866)))

(declare-fun lt!431295 () tuple2!12882)

(declare-fun lt!431296 () List!13341)

(declare-fun list!4983 (BalanceConc!8670) List!13341)

(assert (=> b!1309660 (= res!587850 (not (= (list!4983 (_1!7327 lt!431295)) lt!431296)))))

(assert (=> b!1309660 (= lt!431296 (Cons!13275 t1!34 Nil!13275))))

(declare-fun lt!431282 () BalanceConc!8668)

(declare-fun lex!827 (LexerInterface!1992 List!13340 BalanceConc!8668) tuple2!12882)

(assert (=> b!1309660 (= lt!431295 (lex!827 thiss!19762 rules!2550 lt!431282))))

(declare-fun print!766 (LexerInterface!1992 BalanceConc!8670) BalanceConc!8668)

(declare-fun singletonSeq!870 (Token!4256) BalanceConc!8670)

(assert (=> b!1309660 (= lt!431282 (print!766 thiss!19762 (singletonSeq!870 t1!34)))))

(declare-fun lt!431290 () Rule!4394)

(declare-fun lambda!52881 () Int)

(declare-fun getWitness!189 (List!13340 Int) Rule!4394)

(assert (=> b!1309660 (= lt!431290 (getWitness!189 rules!2550 lambda!52881))))

(declare-fun b!1309661 () Bool)

(declare-fun res!587865 () Bool)

(assert (=> b!1309661 (=> res!587865 e!839860)))

(declare-fun matchR!1613 (Regex!3611 List!13338) Bool)

(assert (=> b!1309661 (= res!587865 (not (matchR!1613 lt!431299 lt!431286)))))

(assert (=> b!1309662 (= e!839876 (and tp!381891 tp!381889))))

(declare-fun b!1309663 () Bool)

(declare-fun res!587844 () Bool)

(assert (=> b!1309663 (=> (not res!587844) (not e!839872))))

(declare-fun sepAndNonSepRulesDisjointChars!670 (List!13340 List!13340) Bool)

(assert (=> b!1309663 (= res!587844 (sepAndNonSepRulesDisjointChars!670 rules!2550 rules!2550))))

(assert (=> b!1309664 (= e!839860 e!839865)))

(declare-fun res!587854 () Bool)

(assert (=> b!1309664 (=> res!587854 e!839865)))

(declare-fun exists!296 (List!13342 Int) Bool)

(assert (=> b!1309664 (= res!587854 (not (exists!296 (map!2912 rules!2550 lambda!52879) lambda!52880)))))

(declare-fun lt!431300 () List!13342)

(assert (=> b!1309664 (exists!296 lt!431300 lambda!52880)))

(declare-fun lt!431283 () Unit!19332)

(declare-fun matchRGenUnionSpec!48 (Regex!3611 List!13342 List!13338) Unit!19332)

(assert (=> b!1309664 (= lt!431283 (matchRGenUnionSpec!48 lt!431299 lt!431300 lt!431286))))

(assert (=> b!1309664 (= lt!431300 (map!2912 rules!2550 lambda!52879))))

(declare-fun b!1309665 () Bool)

(declare-fun res!587861 () Bool)

(assert (=> b!1309665 (=> (not res!587861) (not e!839881))))

(declare-fun isEmpty!7849 (List!13340) Bool)

(assert (=> b!1309665 (= res!587861 (not (isEmpty!7849 rules!2550)))))

(assert (=> b!1309666 (= e!839875 e!839862)))

(declare-fun res!587845 () Bool)

(assert (=> b!1309666 (=> res!587845 e!839862)))

(declare-fun exists!297 (List!13340 Int) Bool)

(assert (=> b!1309666 (= res!587845 (not (exists!297 rules!2550 lambda!52881)))))

(assert (=> b!1309666 (exists!297 rules!2550 lambda!52881)))

(declare-fun lt!431287 () Unit!19332)

(declare-fun lemmaMapContains!40 (List!13340 Int Regex!3611) Unit!19332)

(assert (=> b!1309666 (= lt!431287 (lemmaMapContains!40 rules!2550 lambda!52879 lt!431280))))

(declare-fun b!1309667 () Bool)

(declare-fun res!587849 () Bool)

(assert (=> b!1309667 (=> res!587849 e!839882)))

(assert (=> b!1309667 (= res!587849 (not (contains!2301 rules!2550 (rule!4036 t2!34))))))

(declare-fun e!839859 () Bool)

(declare-fun tp!381896 () Bool)

(declare-fun b!1309668 () Bool)

(assert (=> b!1309668 (= e!839859 (and tp!381896 (inv!17651 (tag!2559 (rule!4036 t2!34))) (inv!17655 (transformation!2297 (rule!4036 t2!34))) e!839880))))

(declare-fun b!1309669 () Bool)

(declare-fun res!587857 () Bool)

(assert (=> b!1309669 (=> (not res!587857) (not e!839872))))

(declare-fun separableTokensPredicate!275 (LexerInterface!1992 Token!4256 Token!4256 List!13340) Bool)

(assert (=> b!1309669 (= res!587857 (not (separableTokensPredicate!275 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!381885 () Bool)

(declare-fun b!1309670 () Bool)

(assert (=> b!1309670 (= e!839874 (and (inv!21 (value!75097 t2!34)) e!839859 tp!381885))))

(declare-fun b!1309671 () Bool)

(assert (=> b!1309671 (= e!839866 e!839882)))

(declare-fun res!587841 () Bool)

(assert (=> b!1309671 (=> res!587841 e!839882)))

(assert (=> b!1309671 (= res!587841 (not (= (list!4983 (_1!7327 lt!431281)) lt!431293)))))

(assert (=> b!1309671 (= lt!431293 (Cons!13275 t2!34 Nil!13275))))

(assert (=> b!1309671 (= lt!431281 (lex!827 thiss!19762 rules!2550 lt!431294))))

(assert (=> b!1309671 (= lt!431294 (print!766 thiss!19762 (singletonSeq!870 t2!34)))))

(declare-fun b!1309672 () Bool)

(assert (=> b!1309672 (= e!839870 e!839860)))

(declare-fun res!587851 () Bool)

(assert (=> b!1309672 (=> res!587851 e!839860)))

(assert (=> b!1309672 (= res!587851 (not (contains!2303 lt!431289 lt!431285)))))

(assert (=> b!1309672 (= lt!431285 (apply!2985 lt!431298 0))))

(declare-fun tp!381895 () Bool)

(declare-fun b!1309673 () Bool)

(assert (=> b!1309673 (= e!839873 (and tp!381895 (inv!17651 (tag!2559 (rule!4036 t1!34))) (inv!17655 (transformation!2297 (rule!4036 t1!34))) e!839864))))

(declare-fun b!1309674 () Bool)

(declare-fun res!587848 () Bool)

(assert (=> b!1309674 (=> res!587848 e!839866)))

(assert (=> b!1309674 (= res!587848 (not (= (lexList!530 thiss!19762 rules!2550 (list!4982 lt!431282)) (tuple2!12881 lt!431296 Nil!13272))))))

(declare-fun b!1309675 () Bool)

(declare-fun res!587847 () Bool)

(assert (=> b!1309675 (=> res!587847 e!839860)))

(assert (=> b!1309675 (= res!587847 (not (contains!2303 lt!431286 lt!431292)))))

(declare-fun b!1309676 () Bool)

(assert (=> b!1309676 (= e!839882 true)))

(declare-fun lt!431284 () Bool)

(assert (=> b!1309676 (= lt!431284 (contains!2301 rules!2550 lt!431290))))

(declare-fun b!1309677 () Bool)

(assert (=> b!1309677 (= e!839881 e!839872)))

(declare-fun res!587859 () Bool)

(assert (=> b!1309677 (=> (not res!587859) (not e!839872))))

(declare-fun size!10787 (BalanceConc!8668) Int)

(assert (=> b!1309677 (= res!587859 (> (size!10787 lt!431297) 0))))

(assert (=> b!1309677 (= lt!431297 (charsOf!1269 t2!34))))

(declare-fun b!1309678 () Bool)

(declare-fun tp!381886 () Bool)

(assert (=> b!1309678 (= e!839878 (and e!839869 tp!381886))))

(declare-fun b!1309679 () Bool)

(declare-fun res!587852 () Bool)

(assert (=> b!1309679 (=> res!587852 e!839866)))

(assert (=> b!1309679 (= res!587852 (not (isEmpty!7848 (_2!7327 lt!431295))))))

(assert (= (and start!115638 res!587866) b!1309665))

(assert (= (and b!1309665 res!587861) b!1309648))

(assert (= (and b!1309648 res!587840) b!1309655))

(assert (= (and b!1309655 res!587860) b!1309654))

(assert (= (and b!1309654 res!587862) b!1309644))

(assert (= (and b!1309644 res!587864) b!1309677))

(assert (= (and b!1309677 res!587859) b!1309663))

(assert (= (and b!1309663 res!587844) b!1309669))

(assert (= (and b!1309669 res!587857) b!1309653))

(assert (= (and b!1309653 res!587863) b!1309659))

(assert (= (and b!1309659 (not res!587838)) b!1309652))

(assert (= (and b!1309652 (not res!587842)) b!1309672))

(assert (= (and b!1309672 (not res!587851)) b!1309656))

(assert (= (and b!1309656 (not res!587837)) b!1309647))

(assert (= (and b!1309647 (not res!587856)) b!1309675))

(assert (= (and b!1309675 (not res!587847)) b!1309661))

(assert (= (and b!1309661 (not res!587865)) b!1309664))

(assert (= (and b!1309664 (not res!587854)) b!1309646))

(assert (= (and b!1309646 (not res!587839)) b!1309666))

(assert (= (and b!1309666 (not res!587845)) b!1309660))

(assert (= (and b!1309660 (not res!587850)) b!1309679))

(assert (= (and b!1309679 (not res!587852)) b!1309674))

(assert (= (and b!1309674 (not res!587848)) b!1309651))

(assert (= (and b!1309651 (not res!587855)) b!1309643))

(assert (= (and b!1309643 (not res!587846)) b!1309671))

(assert (= (and b!1309671 (not res!587841)) b!1309649))

(assert (= (and b!1309649 (not res!587858)) b!1309645))

(assert (= (and b!1309645 (not res!587853)) b!1309641))

(assert (= (and b!1309641 (not res!587843)) b!1309667))

(assert (= (and b!1309667 (not res!587849)) b!1309676))

(assert (= b!1309657 b!1309662))

(assert (= b!1309678 b!1309657))

(assert (= (and start!115638 ((_ is Cons!13274) rules!2550)) b!1309678))

(assert (= b!1309673 b!1309658))

(assert (= b!1309642 b!1309673))

(assert (= start!115638 b!1309642))

(assert (= b!1309668 b!1309650))

(assert (= b!1309670 b!1309668))

(assert (= start!115638 b!1309670))

(declare-fun m!1461243 () Bool)

(assert (=> start!115638 m!1461243))

(declare-fun m!1461245 () Bool)

(assert (=> start!115638 m!1461245))

(declare-fun m!1461247 () Bool)

(assert (=> b!1309642 m!1461247))

(declare-fun m!1461249 () Bool)

(assert (=> b!1309676 m!1461249))

(declare-fun m!1461251 () Bool)

(assert (=> b!1309679 m!1461251))

(declare-fun m!1461253 () Bool)

(assert (=> b!1309660 m!1461253))

(declare-fun m!1461255 () Bool)

(assert (=> b!1309660 m!1461255))

(declare-fun m!1461257 () Bool)

(assert (=> b!1309660 m!1461257))

(declare-fun m!1461259 () Bool)

(assert (=> b!1309660 m!1461259))

(assert (=> b!1309660 m!1461257))

(declare-fun m!1461261 () Bool)

(assert (=> b!1309660 m!1461261))

(declare-fun m!1461263 () Bool)

(assert (=> b!1309674 m!1461263))

(assert (=> b!1309674 m!1461263))

(declare-fun m!1461265 () Bool)

(assert (=> b!1309674 m!1461265))

(declare-fun m!1461267 () Bool)

(assert (=> b!1309670 m!1461267))

(declare-fun m!1461269 () Bool)

(assert (=> b!1309652 m!1461269))

(assert (=> b!1309652 m!1461269))

(declare-fun m!1461271 () Bool)

(assert (=> b!1309652 m!1461271))

(declare-fun m!1461273 () Bool)

(assert (=> b!1309652 m!1461273))

(declare-fun m!1461275 () Bool)

(assert (=> b!1309657 m!1461275))

(declare-fun m!1461277 () Bool)

(assert (=> b!1309657 m!1461277))

(declare-fun m!1461279 () Bool)

(assert (=> b!1309671 m!1461279))

(declare-fun m!1461281 () Bool)

(assert (=> b!1309671 m!1461281))

(declare-fun m!1461283 () Bool)

(assert (=> b!1309671 m!1461283))

(assert (=> b!1309671 m!1461283))

(declare-fun m!1461285 () Bool)

(assert (=> b!1309671 m!1461285))

(declare-fun m!1461287 () Bool)

(assert (=> b!1309641 m!1461287))

(assert (=> b!1309641 m!1461287))

(declare-fun m!1461289 () Bool)

(assert (=> b!1309641 m!1461289))

(declare-fun m!1461291 () Bool)

(assert (=> b!1309661 m!1461291))

(declare-fun m!1461293 () Bool)

(assert (=> b!1309654 m!1461293))

(declare-fun m!1461295 () Bool)

(assert (=> b!1309673 m!1461295))

(declare-fun m!1461297 () Bool)

(assert (=> b!1309673 m!1461297))

(declare-fun m!1461299 () Bool)

(assert (=> b!1309647 m!1461299))

(declare-fun m!1461301 () Bool)

(assert (=> b!1309675 m!1461301))

(declare-fun m!1461303 () Bool)

(assert (=> b!1309651 m!1461303))

(declare-fun m!1461305 () Bool)

(assert (=> b!1309645 m!1461305))

(assert (=> b!1309645 m!1461305))

(declare-fun m!1461307 () Bool)

(assert (=> b!1309645 m!1461307))

(declare-fun m!1461309 () Bool)

(assert (=> b!1309656 m!1461309))

(declare-fun m!1461311 () Bool)

(assert (=> b!1309643 m!1461311))

(declare-fun m!1461313 () Bool)

(assert (=> b!1309664 m!1461313))

(declare-fun m!1461315 () Bool)

(assert (=> b!1309664 m!1461315))

(declare-fun m!1461317 () Bool)

(assert (=> b!1309664 m!1461317))

(assert (=> b!1309664 m!1461317))

(declare-fun m!1461319 () Bool)

(assert (=> b!1309664 m!1461319))

(assert (=> b!1309664 m!1461317))

(declare-fun m!1461321 () Bool)

(assert (=> b!1309653 m!1461321))

(declare-fun m!1461323 () Bool)

(assert (=> b!1309653 m!1461323))

(declare-fun m!1461325 () Bool)

(assert (=> b!1309653 m!1461325))

(declare-fun m!1461327 () Bool)

(assert (=> b!1309653 m!1461327))

(declare-fun m!1461329 () Bool)

(assert (=> b!1309653 m!1461329))

(declare-fun m!1461331 () Bool)

(assert (=> b!1309653 m!1461331))

(declare-fun m!1461333 () Bool)

(assert (=> b!1309666 m!1461333))

(assert (=> b!1309666 m!1461333))

(declare-fun m!1461335 () Bool)

(assert (=> b!1309666 m!1461335))

(declare-fun m!1461337 () Bool)

(assert (=> b!1309665 m!1461337))

(declare-fun m!1461339 () Bool)

(assert (=> b!1309667 m!1461339))

(declare-fun m!1461341 () Bool)

(assert (=> b!1309669 m!1461341))

(declare-fun m!1461343 () Bool)

(assert (=> b!1309663 m!1461343))

(declare-fun m!1461345 () Bool)

(assert (=> b!1309659 m!1461345))

(assert (=> b!1309659 m!1461345))

(declare-fun m!1461347 () Bool)

(assert (=> b!1309659 m!1461347))

(assert (=> b!1309646 m!1461317))

(assert (=> b!1309646 m!1461317))

(declare-fun m!1461349 () Bool)

(assert (=> b!1309646 m!1461349))

(assert (=> b!1309646 m!1461317))

(assert (=> b!1309646 m!1461317))

(declare-fun m!1461351 () Bool)

(assert (=> b!1309646 m!1461351))

(declare-fun m!1461353 () Bool)

(assert (=> b!1309672 m!1461353))

(declare-fun m!1461355 () Bool)

(assert (=> b!1309672 m!1461355))

(declare-fun m!1461357 () Bool)

(assert (=> b!1309677 m!1461357))

(declare-fun m!1461359 () Bool)

(assert (=> b!1309677 m!1461359))

(declare-fun m!1461361 () Bool)

(assert (=> b!1309648 m!1461361))

(declare-fun m!1461363 () Bool)

(assert (=> b!1309668 m!1461363))

(declare-fun m!1461365 () Bool)

(assert (=> b!1309668 m!1461365))

(declare-fun m!1461367 () Bool)

(assert (=> b!1309649 m!1461367))

(declare-fun m!1461369 () Bool)

(assert (=> b!1309655 m!1461369))

(check-sat (not b!1309661) (not b!1309676) (not b!1309659) (not b_next!32245) (not b!1309679) (not b!1309663) b_and!87493 (not b!1309657) b_and!87487 (not b!1309674) (not b!1309665) (not b!1309649) (not b!1309667) (not b_next!32251) (not b!1309652) (not b!1309655) (not b!1309673) (not b!1309666) (not b!1309669) (not b!1309671) b_and!87489 (not b!1309646) (not start!115638) (not b!1309654) (not b!1309677) (not b!1309678) (not b!1309660) (not b!1309672) (not b!1309670) b_and!87495 (not b_next!32253) (not b!1309643) (not b!1309675) (not b_next!32249) b_and!87491 (not b!1309664) (not b!1309656) (not b!1309647) (not b!1309645) (not b_next!32247) (not b!1309651) b_and!87497 (not b!1309642) (not b!1309653) (not b_next!32243) (not b!1309668) (not b!1309641) (not b!1309648))
(check-sat (not b_next!32251) b_and!87489 (not b_next!32245) (not b_next!32249) b_and!87491 b_and!87493 b_and!87487 (not b_next!32247) b_and!87497 (not b_next!32243) b_and!87495 (not b_next!32253))

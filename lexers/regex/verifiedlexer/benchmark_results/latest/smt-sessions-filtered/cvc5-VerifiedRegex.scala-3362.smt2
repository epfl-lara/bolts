; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190498 () Bool)

(assert start!190498)

(declare-fun b!1899859 () Bool)

(declare-fun b_free!53309 () Bool)

(declare-fun b_next!54013 () Bool)

(assert (=> b!1899859 (= b_free!53309 (not b_next!54013))))

(declare-fun tp!542555 () Bool)

(declare-fun b_and!146991 () Bool)

(assert (=> b!1899859 (= tp!542555 b_and!146991)))

(declare-fun b_free!53311 () Bool)

(declare-fun b_next!54015 () Bool)

(assert (=> b!1899859 (= b_free!53311 (not b_next!54015))))

(declare-fun tp!542554 () Bool)

(declare-fun b_and!146993 () Bool)

(assert (=> b!1899859 (= tp!542554 b_and!146993)))

(declare-fun b!1899853 () Bool)

(declare-fun b_free!53313 () Bool)

(declare-fun b_next!54017 () Bool)

(assert (=> b!1899853 (= b_free!53313 (not b_next!54017))))

(declare-fun tp!542550 () Bool)

(declare-fun b_and!146995 () Bool)

(assert (=> b!1899853 (= tp!542550 b_and!146995)))

(declare-fun b_free!53315 () Bool)

(declare-fun b_next!54019 () Bool)

(assert (=> b!1899853 (= b_free!53315 (not b_next!54019))))

(declare-fun tp!542549 () Bool)

(declare-fun b_and!146997 () Bool)

(assert (=> b!1899853 (= tp!542549 b_and!146997)))

(declare-fun b!1899855 () Bool)

(declare-fun b_free!53317 () Bool)

(declare-fun b_next!54021 () Bool)

(assert (=> b!1899855 (= b_free!53317 (not b_next!54021))))

(declare-fun tp!542553 () Bool)

(declare-fun b_and!146999 () Bool)

(assert (=> b!1899855 (= tp!542553 b_and!146999)))

(declare-fun b_free!53319 () Bool)

(declare-fun b_next!54023 () Bool)

(assert (=> b!1899855 (= b_free!53319 (not b_next!54023))))

(declare-fun tp!542544 () Bool)

(declare-fun b_and!147001 () Bool)

(assert (=> b!1899855 (= tp!542544 b_and!147001)))

(declare-fun b!1899847 () Bool)

(declare-fun e!1213325 () Bool)

(declare-fun e!1213327 () Bool)

(declare-fun tp!542548 () Bool)

(assert (=> b!1899847 (= e!1213325 (and e!1213327 tp!542548))))

(declare-fun tp!542546 () Bool)

(declare-fun b!1899848 () Bool)

(declare-datatypes ((List!21448 0))(
  ( (Nil!21366) (Cons!21366 (h!26767 (_ BitVec 16)) (t!176719 List!21448)) )
))
(declare-datatypes ((TokenValue!3935 0))(
  ( (FloatLiteralValue!7870 (text!27990 List!21448)) (TokenValueExt!3934 (__x!13368 Int)) (Broken!19675 (value!119838 List!21448)) (Object!4016) (End!3935) (Def!3935) (Underscore!3935) (Match!3935) (Else!3935) (Error!3935) (Case!3935) (If!3935) (Extends!3935) (Abstract!3935) (Class!3935) (Val!3935) (DelimiterValue!7870 (del!3995 List!21448)) (KeywordValue!3941 (value!119839 List!21448)) (CommentValue!7870 (value!119840 List!21448)) (WhitespaceValue!7870 (value!119841 List!21448)) (IndentationValue!3935 (value!119842 List!21448)) (String!24794) (Int32!3935) (Broken!19676 (value!119843 List!21448)) (Boolean!3936) (Unit!35696) (OperatorValue!3938 (op!3995 List!21448)) (IdentifierValue!7870 (value!119844 List!21448)) (IdentifierValue!7871 (value!119845 List!21448)) (WhitespaceValue!7871 (value!119846 List!21448)) (True!7870) (False!7870) (Broken!19677 (value!119847 List!21448)) (Broken!19678 (value!119848 List!21448)) (True!7871) (RightBrace!3935) (RightBracket!3935) (Colon!3935) (Null!3935) (Comma!3935) (LeftBracket!3935) (False!7871) (LeftBrace!3935) (ImaginaryLiteralValue!3935 (text!27991 List!21448)) (StringLiteralValue!11805 (value!119849 List!21448)) (EOFValue!3935 (value!119850 List!21448)) (IdentValue!3935 (value!119851 List!21448)) (DelimiterValue!7871 (value!119852 List!21448)) (DedentValue!3935 (value!119853 List!21448)) (NewLineValue!3935 (value!119854 List!21448)) (IntegerValue!11805 (value!119855 (_ BitVec 32)) (text!27992 List!21448)) (IntegerValue!11806 (value!119856 Int) (text!27993 List!21448)) (Times!3935) (Or!3935) (Equal!3935) (Minus!3935) (Broken!19679 (value!119857 List!21448)) (And!3935) (Div!3935) (LessEqual!3935) (Mod!3935) (Concat!9159) (Not!3935) (Plus!3935) (SpaceValue!3935 (value!119858 List!21448)) (IntegerValue!11807 (value!119859 Int) (text!27994 List!21448)) (StringLiteralValue!11806 (text!27995 List!21448)) (FloatLiteralValue!7871 (text!27996 List!21448)) (BytesLiteralValue!3935 (value!119860 List!21448)) (CommentValue!7871 (value!119861 List!21448)) (StringLiteralValue!11807 (value!119862 List!21448)) (ErrorTokenValue!3935 (msg!3996 List!21448)) )
))
(declare-datatypes ((C!10594 0))(
  ( (C!10595 (val!6249 Int)) )
))
(declare-datatypes ((List!21449 0))(
  ( (Nil!21367) (Cons!21367 (h!26768 C!10594) (t!176720 List!21449)) )
))
(declare-datatypes ((Regex!5224 0))(
  ( (ElementMatch!5224 (c!309628 C!10594)) (Concat!9160 (regOne!10960 Regex!5224) (regTwo!10960 Regex!5224)) (EmptyExpr!5224) (Star!5224 (reg!5553 Regex!5224)) (EmptyLang!5224) (Union!5224 (regOne!10961 Regex!5224) (regTwo!10961 Regex!5224)) )
))
(declare-datatypes ((String!24795 0))(
  ( (String!24796 (value!119863 String)) )
))
(declare-datatypes ((IArray!14225 0))(
  ( (IArray!14226 (innerList!7170 List!21449)) )
))
(declare-datatypes ((Conc!7110 0))(
  ( (Node!7110 (left!17112 Conc!7110) (right!17442 Conc!7110) (csize!14450 Int) (cheight!7321 Int)) (Leaf!10473 (xs!10004 IArray!14225) (csize!14451 Int)) (Empty!7110) )
))
(declare-datatypes ((BalanceConc!14036 0))(
  ( (BalanceConc!14037 (c!309629 Conc!7110)) )
))
(declare-datatypes ((TokenValueInjection!7454 0))(
  ( (TokenValueInjection!7455 (toValue!5416 Int) (toChars!5275 Int)) )
))
(declare-datatypes ((Rule!7398 0))(
  ( (Rule!7399 (regex!3799 Regex!5224) (tag!4223 String!24795) (isSeparator!3799 Bool) (transformation!3799 TokenValueInjection!7454)) )
))
(declare-datatypes ((Token!7150 0))(
  ( (Token!7151 (value!119864 TokenValue!3935) (rule!5992 Rule!7398) (size!16889 Int) (originalCharacters!4606 List!21449)) )
))
(declare-fun separatorToken!354 () Token!7150)

(declare-fun e!1213326 () Bool)

(declare-fun e!1213322 () Bool)

(declare-fun inv!28463 (String!24795) Bool)

(declare-fun inv!28466 (TokenValueInjection!7454) Bool)

(assert (=> b!1899848 (= e!1213322 (and tp!542546 (inv!28463 (tag!4223 (rule!5992 separatorToken!354))) (inv!28466 (transformation!3799 (rule!5992 separatorToken!354))) e!1213326))))

(declare-fun b!1899849 () Bool)

(declare-fun e!1213314 () Bool)

(declare-fun e!1213308 () Bool)

(assert (=> b!1899849 (= e!1213314 e!1213308)))

(declare-fun res!848166 () Bool)

(assert (=> b!1899849 (=> (not res!848166) (not e!1213308))))

(declare-fun lt!726528 () Rule!7398)

(declare-fun lt!726527 () List!21449)

(declare-fun matchR!2510 (Regex!5224 List!21449) Bool)

(assert (=> b!1899849 (= res!848166 (matchR!2510 (regex!3799 lt!726528) lt!726527))))

(declare-datatypes ((Option!4303 0))(
  ( (None!4302) (Some!4302 (v!26331 Rule!7398)) )
))
(declare-fun lt!726533 () Option!4303)

(declare-fun get!6610 (Option!4303) Rule!7398)

(assert (=> b!1899849 (= lt!726528 (get!6610 lt!726533))))

(declare-fun b!1899850 () Bool)

(declare-fun e!1213319 () Bool)

(assert (=> b!1899850 (= e!1213319 (not true))))

(declare-datatypes ((LexerInterface!3412 0))(
  ( (LexerInterfaceExt!3409 (__x!13369 Int)) (Lexer!3410) )
))
(declare-fun thiss!23328 () LexerInterface!3412)

(declare-datatypes ((tuple2!20134 0))(
  ( (tuple2!20135 (_1!11536 Token!7150) (_2!11536 List!21449)) )
))
(declare-datatypes ((Option!4304 0))(
  ( (None!4303) (Some!4303 (v!26332 tuple2!20134)) )
))
(declare-fun lt!726526 () Option!4304)

(declare-fun lt!726525 () List!21449)

(declare-datatypes ((List!21450 0))(
  ( (Nil!21368) (Cons!21368 (h!26769 Rule!7398) (t!176721 List!21450)) )
))
(declare-fun rules!3198 () List!21450)

(declare-datatypes ((List!21451 0))(
  ( (Nil!21369) (Cons!21369 (h!26770 Token!7150) (t!176722 List!21451)) )
))
(declare-fun tokens!598 () List!21451)

(declare-fun maxPrefix!1858 (LexerInterface!3412 List!21450 List!21449) Option!4304)

(declare-fun ++!5742 (List!21449 List!21449) List!21449)

(declare-fun printWithSeparatorTokenWhenNeededList!455 (LexerInterface!3412 List!21450 List!21451 Token!7150) List!21449)

(assert (=> b!1899850 (= lt!726526 (maxPrefix!1858 thiss!23328 rules!3198 (++!5742 lt!726525 (printWithSeparatorTokenWhenNeededList!455 thiss!23328 rules!3198 (t!176722 tokens!598) separatorToken!354))))))

(declare-fun e!1213313 () Bool)

(assert (=> b!1899850 e!1213313))

(declare-fun res!848169 () Bool)

(assert (=> b!1899850 (=> (not res!848169) (not e!1213313))))

(declare-fun lt!726523 () Option!4303)

(declare-fun isDefined!3601 (Option!4303) Bool)

(assert (=> b!1899850 (= res!848169 (isDefined!3601 lt!726523))))

(declare-fun getRuleFromTag!642 (LexerInterface!3412 List!21450 String!24795) Option!4303)

(assert (=> b!1899850 (= lt!726523 (getRuleFromTag!642 thiss!23328 rules!3198 (tag!4223 (rule!5992 (h!26770 tokens!598)))))))

(declare-datatypes ((Unit!35697 0))(
  ( (Unit!35698) )
))
(declare-fun lt!726531 () Unit!35697)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!642 (LexerInterface!3412 List!21450 List!21449 Token!7150) Unit!35697)

(assert (=> b!1899850 (= lt!726531 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!642 thiss!23328 rules!3198 lt!726525 (h!26770 tokens!598)))))

(declare-fun e!1213310 () Bool)

(assert (=> b!1899850 e!1213310))

(declare-fun res!848174 () Bool)

(assert (=> b!1899850 (=> (not res!848174) (not e!1213310))))

(declare-fun lt!726532 () Option!4304)

(declare-fun isDefined!3602 (Option!4304) Bool)

(assert (=> b!1899850 (= res!848174 (isDefined!3602 lt!726532))))

(assert (=> b!1899850 (= lt!726532 (maxPrefix!1858 thiss!23328 rules!3198 lt!726525))))

(declare-fun lt!726535 () BalanceConc!14036)

(declare-fun list!8687 (BalanceConc!14036) List!21449)

(assert (=> b!1899850 (= lt!726525 (list!8687 lt!726535))))

(assert (=> b!1899850 e!1213314))

(declare-fun res!848177 () Bool)

(assert (=> b!1899850 (=> (not res!848177) (not e!1213314))))

(assert (=> b!1899850 (= res!848177 (isDefined!3601 lt!726533))))

(assert (=> b!1899850 (= lt!726533 (getRuleFromTag!642 thiss!23328 rules!3198 (tag!4223 (rule!5992 separatorToken!354))))))

(declare-fun lt!726524 () Unit!35697)

(assert (=> b!1899850 (= lt!726524 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!642 thiss!23328 rules!3198 lt!726527 separatorToken!354))))

(declare-fun charsOf!2355 (Token!7150) BalanceConc!14036)

(assert (=> b!1899850 (= lt!726527 (list!8687 (charsOf!2355 separatorToken!354)))))

(declare-fun lt!726534 () Unit!35697)

(declare-fun lemmaEqSameImage!507 (TokenValueInjection!7454 BalanceConc!14036 BalanceConc!14036) Unit!35697)

(declare-fun seqFromList!2671 (List!21449) BalanceConc!14036)

(assert (=> b!1899850 (= lt!726534 (lemmaEqSameImage!507 (transformation!3799 (rule!5992 (h!26770 tokens!598))) lt!726535 (seqFromList!2671 (originalCharacters!4606 (h!26770 tokens!598)))))))

(declare-fun lt!726529 () Unit!35697)

(declare-fun lemmaSemiInverse!778 (TokenValueInjection!7454 BalanceConc!14036) Unit!35697)

(assert (=> b!1899850 (= lt!726529 (lemmaSemiInverse!778 (transformation!3799 (rule!5992 (h!26770 tokens!598))) lt!726535))))

(assert (=> b!1899850 (= lt!726535 (charsOf!2355 (h!26770 tokens!598)))))

(declare-fun e!1213320 () Bool)

(declare-fun tp!542543 () Bool)

(declare-fun b!1899851 () Bool)

(assert (=> b!1899851 (= e!1213327 (and tp!542543 (inv!28463 (tag!4223 (h!26769 rules!3198))) (inv!28466 (transformation!3799 (h!26769 rules!3198))) e!1213320))))

(declare-fun b!1899852 () Bool)

(declare-fun e!1213311 () Bool)

(declare-fun lt!726530 () Rule!7398)

(assert (=> b!1899852 (= e!1213311 (= (rule!5992 (h!26770 tokens!598)) lt!726530))))

(declare-fun e!1213323 () Bool)

(assert (=> b!1899853 (= e!1213323 (and tp!542550 tp!542549))))

(declare-fun e!1213307 () Bool)

(declare-fun e!1213321 () Bool)

(declare-fun tp!542545 () Bool)

(declare-fun b!1899854 () Bool)

(declare-fun inv!21 (TokenValue!3935) Bool)

(assert (=> b!1899854 (= e!1213307 (and (inv!21 (value!119864 (h!26770 tokens!598))) e!1213321 tp!542545))))

(assert (=> b!1899855 (= e!1213320 (and tp!542553 tp!542544))))

(declare-fun b!1899856 () Bool)

(assert (=> b!1899856 (= e!1213313 e!1213311)))

(declare-fun res!848175 () Bool)

(assert (=> b!1899856 (=> (not res!848175) (not e!1213311))))

(assert (=> b!1899856 (= res!848175 (matchR!2510 (regex!3799 lt!726530) lt!726525))))

(assert (=> b!1899856 (= lt!726530 (get!6610 lt!726523))))

(declare-fun b!1899857 () Bool)

(declare-fun res!848173 () Bool)

(assert (=> b!1899857 (=> (not res!848173) (not e!1213319))))

(declare-fun rulesProduceEachTokenIndividuallyList!1143 (LexerInterface!3412 List!21450 List!21451) Bool)

(assert (=> b!1899857 (= res!848173 (rulesProduceEachTokenIndividuallyList!1143 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1899858 () Bool)

(declare-fun res!848178 () Bool)

(assert (=> b!1899858 (=> (not res!848178) (not e!1213319))))

(assert (=> b!1899858 (= res!848178 (isSeparator!3799 (rule!5992 separatorToken!354)))))

(assert (=> b!1899859 (= e!1213326 (and tp!542555 tp!542554))))

(declare-fun b!1899860 () Bool)

(declare-fun res!848167 () Bool)

(assert (=> b!1899860 (=> (not res!848167) (not e!1213319))))

(declare-fun isEmpty!13107 (List!21450) Bool)

(assert (=> b!1899860 (= res!848167 (not (isEmpty!13107 rules!3198)))))

(declare-fun tp!542551 () Bool)

(declare-fun b!1899861 () Bool)

(declare-fun e!1213315 () Bool)

(assert (=> b!1899861 (= e!1213315 (and (inv!21 (value!119864 separatorToken!354)) e!1213322 tp!542551))))

(declare-fun b!1899862 () Bool)

(declare-fun res!848172 () Bool)

(assert (=> b!1899862 (=> (not res!848172) (not e!1213319))))

(declare-fun rulesInvariant!3019 (LexerInterface!3412 List!21450) Bool)

(assert (=> b!1899862 (= res!848172 (rulesInvariant!3019 thiss!23328 rules!3198))))

(declare-fun res!848168 () Bool)

(assert (=> start!190498 (=> (not res!848168) (not e!1213319))))

(assert (=> start!190498 (= res!848168 (is-Lexer!3410 thiss!23328))))

(assert (=> start!190498 e!1213319))

(assert (=> start!190498 true))

(assert (=> start!190498 e!1213325))

(declare-fun e!1213309 () Bool)

(assert (=> start!190498 e!1213309))

(declare-fun inv!28467 (Token!7150) Bool)

(assert (=> start!190498 (and (inv!28467 separatorToken!354) e!1213315)))

(declare-fun b!1899863 () Bool)

(assert (=> b!1899863 (= e!1213308 (= (rule!5992 separatorToken!354) lt!726528))))

(declare-fun tp!542547 () Bool)

(declare-fun b!1899864 () Bool)

(assert (=> b!1899864 (= e!1213309 (and (inv!28467 (h!26770 tokens!598)) e!1213307 tp!542547))))

(declare-fun b!1899865 () Bool)

(declare-fun res!848171 () Bool)

(assert (=> b!1899865 (=> (not res!848171) (not e!1213319))))

(assert (=> b!1899865 (= res!848171 (is-Cons!21369 tokens!598))))

(declare-fun b!1899866 () Bool)

(declare-fun get!6611 (Option!4304) tuple2!20134)

(assert (=> b!1899866 (= e!1213310 (= (_1!11536 (get!6611 lt!726532)) (h!26770 tokens!598)))))

(declare-fun b!1899867 () Bool)

(declare-fun res!848176 () Bool)

(assert (=> b!1899867 (=> (not res!848176) (not e!1213319))))

(declare-fun sepAndNonSepRulesDisjointChars!897 (List!21450 List!21450) Bool)

(assert (=> b!1899867 (= res!848176 (sepAndNonSepRulesDisjointChars!897 rules!3198 rules!3198))))

(declare-fun b!1899868 () Bool)

(declare-fun res!848165 () Bool)

(assert (=> b!1899868 (=> (not res!848165) (not e!1213319))))

(declare-fun lambda!74246 () Int)

(declare-fun forall!4479 (List!21451 Int) Bool)

(assert (=> b!1899868 (= res!848165 (forall!4479 tokens!598 lambda!74246))))

(declare-fun b!1899869 () Bool)

(declare-fun res!848170 () Bool)

(assert (=> b!1899869 (=> (not res!848170) (not e!1213319))))

(declare-fun rulesProduceIndividualToken!1584 (LexerInterface!3412 List!21450 Token!7150) Bool)

(assert (=> b!1899869 (= res!848170 (rulesProduceIndividualToken!1584 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!542552 () Bool)

(declare-fun b!1899870 () Bool)

(assert (=> b!1899870 (= e!1213321 (and tp!542552 (inv!28463 (tag!4223 (rule!5992 (h!26770 tokens!598)))) (inv!28466 (transformation!3799 (rule!5992 (h!26770 tokens!598)))) e!1213323))))

(assert (= (and start!190498 res!848168) b!1899860))

(assert (= (and b!1899860 res!848167) b!1899862))

(assert (= (and b!1899862 res!848172) b!1899857))

(assert (= (and b!1899857 res!848173) b!1899869))

(assert (= (and b!1899869 res!848170) b!1899858))

(assert (= (and b!1899858 res!848178) b!1899868))

(assert (= (and b!1899868 res!848165) b!1899867))

(assert (= (and b!1899867 res!848176) b!1899865))

(assert (= (and b!1899865 res!848171) b!1899850))

(assert (= (and b!1899850 res!848177) b!1899849))

(assert (= (and b!1899849 res!848166) b!1899863))

(assert (= (and b!1899850 res!848174) b!1899866))

(assert (= (and b!1899850 res!848169) b!1899856))

(assert (= (and b!1899856 res!848175) b!1899852))

(assert (= b!1899851 b!1899855))

(assert (= b!1899847 b!1899851))

(assert (= (and start!190498 (is-Cons!21368 rules!3198)) b!1899847))

(assert (= b!1899870 b!1899853))

(assert (= b!1899854 b!1899870))

(assert (= b!1899864 b!1899854))

(assert (= (and start!190498 (is-Cons!21369 tokens!598)) b!1899864))

(assert (= b!1899848 b!1899859))

(assert (= b!1899861 b!1899848))

(assert (= start!190498 b!1899861))

(declare-fun m!2330939 () Bool)

(assert (=> b!1899868 m!2330939))

(declare-fun m!2330941 () Bool)

(assert (=> b!1899869 m!2330941))

(declare-fun m!2330943 () Bool)

(assert (=> b!1899854 m!2330943))

(declare-fun m!2330945 () Bool)

(assert (=> b!1899867 m!2330945))

(declare-fun m!2330947 () Bool)

(assert (=> start!190498 m!2330947))

(declare-fun m!2330949 () Bool)

(assert (=> b!1899866 m!2330949))

(declare-fun m!2330951 () Bool)

(assert (=> b!1899856 m!2330951))

(declare-fun m!2330953 () Bool)

(assert (=> b!1899856 m!2330953))

(declare-fun m!2330955 () Bool)

(assert (=> b!1899848 m!2330955))

(declare-fun m!2330957 () Bool)

(assert (=> b!1899848 m!2330957))

(declare-fun m!2330959 () Bool)

(assert (=> b!1899851 m!2330959))

(declare-fun m!2330961 () Bool)

(assert (=> b!1899851 m!2330961))

(declare-fun m!2330963 () Bool)

(assert (=> b!1899861 m!2330963))

(declare-fun m!2330965 () Bool)

(assert (=> b!1899860 m!2330965))

(declare-fun m!2330967 () Bool)

(assert (=> b!1899857 m!2330967))

(declare-fun m!2330969 () Bool)

(assert (=> b!1899849 m!2330969))

(declare-fun m!2330971 () Bool)

(assert (=> b!1899849 m!2330971))

(declare-fun m!2330973 () Bool)

(assert (=> b!1899850 m!2330973))

(declare-fun m!2330975 () Bool)

(assert (=> b!1899850 m!2330975))

(declare-fun m!2330977 () Bool)

(assert (=> b!1899850 m!2330977))

(declare-fun m!2330979 () Bool)

(assert (=> b!1899850 m!2330979))

(declare-fun m!2330981 () Bool)

(assert (=> b!1899850 m!2330981))

(declare-fun m!2330983 () Bool)

(assert (=> b!1899850 m!2330983))

(declare-fun m!2330985 () Bool)

(assert (=> b!1899850 m!2330985))

(declare-fun m!2330987 () Bool)

(assert (=> b!1899850 m!2330987))

(declare-fun m!2330989 () Bool)

(assert (=> b!1899850 m!2330989))

(declare-fun m!2330991 () Bool)

(assert (=> b!1899850 m!2330991))

(declare-fun m!2330993 () Bool)

(assert (=> b!1899850 m!2330993))

(declare-fun m!2330995 () Bool)

(assert (=> b!1899850 m!2330995))

(declare-fun m!2330997 () Bool)

(assert (=> b!1899850 m!2330997))

(declare-fun m!2330999 () Bool)

(assert (=> b!1899850 m!2330999))

(assert (=> b!1899850 m!2330977))

(declare-fun m!2331001 () Bool)

(assert (=> b!1899850 m!2331001))

(declare-fun m!2331003 () Bool)

(assert (=> b!1899850 m!2331003))

(assert (=> b!1899850 m!2330989))

(assert (=> b!1899850 m!2330981))

(declare-fun m!2331005 () Bool)

(assert (=> b!1899850 m!2331005))

(assert (=> b!1899850 m!2330991))

(declare-fun m!2331007 () Bool)

(assert (=> b!1899850 m!2331007))

(declare-fun m!2331009 () Bool)

(assert (=> b!1899862 m!2331009))

(declare-fun m!2331011 () Bool)

(assert (=> b!1899870 m!2331011))

(declare-fun m!2331013 () Bool)

(assert (=> b!1899870 m!2331013))

(declare-fun m!2331015 () Bool)

(assert (=> b!1899864 m!2331015))

(push 1)

(assert (not b!1899861))

(assert (not b!1899851))

(assert (not b_next!54015))

(assert (not b!1899870))

(assert (not b_next!54017))

(assert (not b!1899848))

(assert (not b!1899867))

(assert (not start!190498))

(assert b_and!146991)

(assert (not b!1899868))

(assert b_and!146999)

(assert (not b!1899847))

(assert b_and!146995)

(assert (not b!1899862))

(assert (not b!1899856))

(assert b_and!146993)

(assert (not b_next!54023))

(assert (not b!1899857))

(assert (not b!1899850))

(assert b_and!146997)

(assert (not b_next!54019))

(assert (not b!1899866))

(assert (not b!1899864))

(assert (not b!1899869))

(assert b_and!147001)

(assert (not b!1899854))

(assert (not b!1899860))

(assert (not b_next!54013))

(assert (not b!1899849))

(assert (not b_next!54021))

(check-sat)

(pop 1)

(push 1)

(assert b_and!146995)

(assert (not b_next!54015))

(assert (not b_next!54017))

(assert b_and!147001)

(assert (not b_next!54013))

(assert b_and!146991)

(assert (not b_next!54021))

(assert b_and!146999)

(assert b_and!146993)

(assert (not b_next!54023))

(assert b_and!146997)

(assert (not b_next!54019))

(check-sat)

(pop 1)


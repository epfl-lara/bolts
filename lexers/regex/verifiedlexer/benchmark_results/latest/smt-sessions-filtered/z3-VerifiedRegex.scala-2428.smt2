; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127510 () Bool)

(assert start!127510)

(declare-fun b!1399983 () Bool)

(declare-fun b_free!34107 () Bool)

(declare-fun b_next!34811 () Bool)

(assert (=> b!1399983 (= b_free!34107 (not b_next!34811))))

(declare-fun tp!398552 () Bool)

(declare-fun b_and!93739 () Bool)

(assert (=> b!1399983 (= tp!398552 b_and!93739)))

(declare-fun b_free!34109 () Bool)

(declare-fun b_next!34813 () Bool)

(assert (=> b!1399983 (= b_free!34109 (not b_next!34813))))

(declare-fun tp!398556 () Bool)

(declare-fun b_and!93741 () Bool)

(assert (=> b!1399983 (= tp!398556 b_and!93741)))

(declare-fun b!1399989 () Bool)

(declare-fun b_free!34111 () Bool)

(declare-fun b_next!34815 () Bool)

(assert (=> b!1399989 (= b_free!34111 (not b_next!34815))))

(declare-fun tp!398557 () Bool)

(declare-fun b_and!93743 () Bool)

(assert (=> b!1399989 (= tp!398557 b_and!93743)))

(declare-fun b_free!34113 () Bool)

(declare-fun b_next!34817 () Bool)

(assert (=> b!1399989 (= b_free!34113 (not b_next!34817))))

(declare-fun tp!398555 () Bool)

(declare-fun b_and!93745 () Bool)

(assert (=> b!1399989 (= tp!398555 b_and!93745)))

(declare-fun b!1399980 () Bool)

(declare-fun b_free!34115 () Bool)

(declare-fun b_next!34819 () Bool)

(assert (=> b!1399980 (= b_free!34115 (not b_next!34819))))

(declare-fun tp!398558 () Bool)

(declare-fun b_and!93747 () Bool)

(assert (=> b!1399980 (= tp!398558 b_and!93747)))

(declare-fun b_free!34117 () Bool)

(declare-fun b_next!34821 () Bool)

(assert (=> b!1399980 (= b_free!34117 (not b_next!34821))))

(declare-fun tp!398553 () Bool)

(declare-fun b_and!93749 () Bool)

(assert (=> b!1399980 (= tp!398553 b_and!93749)))

(declare-fun b!1400025 () Bool)

(assert (=> b!1400025 true))

(assert (=> b!1400025 true))

(declare-fun b!1399992 () Bool)

(assert (=> b!1399992 true))

(declare-fun b!1400008 () Bool)

(assert (=> b!1400008 true))

(declare-fun bs!338130 () Bool)

(declare-fun b!1399991 () Bool)

(assert (= bs!338130 (and b!1399991 b!1400008)))

(declare-fun lambda!61263 () Int)

(declare-fun lambda!61262 () Int)

(assert (=> bs!338130 (not (= lambda!61263 lambda!61262))))

(assert (=> b!1399991 true))

(declare-fun b!1399978 () Bool)

(declare-fun res!633028 () Bool)

(declare-fun e!893906 () Bool)

(assert (=> b!1399978 (=> (not res!633028) (not e!893906))))

(declare-datatypes ((List!14294 0))(
  ( (Nil!14228) (Cons!14228 (h!19629 (_ BitVec 16)) (t!122819 List!14294)) )
))
(declare-datatypes ((TokenValue!2555 0))(
  ( (FloatLiteralValue!5110 (text!18330 List!14294)) (TokenValueExt!2554 (__x!8939 Int)) (Broken!12775 (value!79859 List!14294)) (Object!2620) (End!2555) (Def!2555) (Underscore!2555) (Match!2555) (Else!2555) (Error!2555) (Case!2555) (If!2555) (Extends!2555) (Abstract!2555) (Class!2555) (Val!2555) (DelimiterValue!5110 (del!2615 List!14294)) (KeywordValue!2561 (value!79860 List!14294)) (CommentValue!5110 (value!79861 List!14294)) (WhitespaceValue!5110 (value!79862 List!14294)) (IndentationValue!2555 (value!79863 List!14294)) (String!17010) (Int32!2555) (Broken!12776 (value!79864 List!14294)) (Boolean!2556) (Unit!20550) (OperatorValue!2558 (op!2615 List!14294)) (IdentifierValue!5110 (value!79865 List!14294)) (IdentifierValue!5111 (value!79866 List!14294)) (WhitespaceValue!5111 (value!79867 List!14294)) (True!5110) (False!5110) (Broken!12777 (value!79868 List!14294)) (Broken!12778 (value!79869 List!14294)) (True!5111) (RightBrace!2555) (RightBracket!2555) (Colon!2555) (Null!2555) (Comma!2555) (LeftBracket!2555) (False!5111) (LeftBrace!2555) (ImaginaryLiteralValue!2555 (text!18331 List!14294)) (StringLiteralValue!7665 (value!79870 List!14294)) (EOFValue!2555 (value!79871 List!14294)) (IdentValue!2555 (value!79872 List!14294)) (DelimiterValue!5111 (value!79873 List!14294)) (DedentValue!2555 (value!79874 List!14294)) (NewLineValue!2555 (value!79875 List!14294)) (IntegerValue!7665 (value!79876 (_ BitVec 32)) (text!18332 List!14294)) (IntegerValue!7666 (value!79877 Int) (text!18333 List!14294)) (Times!2555) (Or!2555) (Equal!2555) (Minus!2555) (Broken!12779 (value!79878 List!14294)) (And!2555) (Div!2555) (LessEqual!2555) (Mod!2555) (Concat!6334) (Not!2555) (Plus!2555) (SpaceValue!2555 (value!79879 List!14294)) (IntegerValue!7667 (value!79880 Int) (text!18334 List!14294)) (StringLiteralValue!7666 (text!18335 List!14294)) (FloatLiteralValue!5111 (text!18336 List!14294)) (BytesLiteralValue!2555 (value!79881 List!14294)) (CommentValue!5111 (value!79882 List!14294)) (StringLiteralValue!7667 (value!79883 List!14294)) (ErrorTokenValue!2555 (msg!2616 List!14294)) )
))
(declare-datatypes ((C!7848 0))(
  ( (C!7849 (val!4484 Int)) )
))
(declare-datatypes ((List!14295 0))(
  ( (Nil!14229) (Cons!14229 (h!19630 C!7848) (t!122820 List!14295)) )
))
(declare-datatypes ((IArray!9385 0))(
  ( (IArray!9386 (innerList!4750 List!14295)) )
))
(declare-datatypes ((Conc!4690 0))(
  ( (Node!4690 (left!12152 Conc!4690) (right!12482 Conc!4690) (csize!9610 Int) (cheight!4901 Int)) (Leaf!7119 (xs!7417 IArray!9385) (csize!9611 Int)) (Empty!4690) )
))
(declare-datatypes ((BalanceConc!9320 0))(
  ( (BalanceConc!9321 (c!230324 Conc!4690)) )
))
(declare-datatypes ((TokenValueInjection!4770 0))(
  ( (TokenValueInjection!4771 (toValue!3756 Int) (toChars!3615 Int)) )
))
(declare-datatypes ((Regex!3779 0))(
  ( (ElementMatch!3779 (c!230325 C!7848)) (Concat!6335 (regOne!8070 Regex!3779) (regTwo!8070 Regex!3779)) (EmptyExpr!3779) (Star!3779 (reg!4108 Regex!3779)) (EmptyLang!3779) (Union!3779 (regOne!8071 Regex!3779) (regTwo!8071 Regex!3779)) )
))
(declare-datatypes ((String!17011 0))(
  ( (String!17012 (value!79884 String)) )
))
(declare-datatypes ((Rule!4730 0))(
  ( (Rule!4731 (regex!2465 Regex!3779) (tag!2727 String!17011) (isSeparator!2465 Bool) (transformation!2465 TokenValueInjection!4770)) )
))
(declare-datatypes ((Token!4592 0))(
  ( (Token!4593 (value!79885 TokenValue!2555) (rule!4228 Rule!4730) (size!11701 Int) (originalCharacters!3327 List!14295)) )
))
(declare-fun t1!34 () Token!4592)

(declare-fun t2!34 () Token!4592)

(assert (=> b!1399978 (= res!633028 (not (= (isSeparator!2465 (rule!4228 t1!34)) (isSeparator!2465 (rule!4228 t2!34)))))))

(declare-fun b!1399979 () Bool)

(declare-fun res!633012 () Bool)

(assert (=> b!1399979 (=> (not res!633012) (not e!893906))))

(declare-datatypes ((List!14296 0))(
  ( (Nil!14230) (Cons!14230 (h!19631 Rule!4730) (t!122821 List!14296)) )
))
(declare-fun rules!2550 () List!14296)

(declare-fun isEmpty!8644 (List!14296) Bool)

(assert (=> b!1399979 (= res!633012 (not (isEmpty!8644 rules!2550)))))

(declare-fun e!893889 () Bool)

(assert (=> b!1399980 (= e!893889 (and tp!398558 tp!398553))))

(declare-fun b!1399981 () Bool)

(declare-fun res!633034 () Bool)

(declare-fun e!893900 () Bool)

(assert (=> b!1399981 (=> res!633034 e!893900)))

(declare-fun lt!466710 () List!14295)

(declare-fun lt!466712 () C!7848)

(declare-fun contains!2777 (List!14295 C!7848) Bool)

(assert (=> b!1399981 (= res!633034 (not (contains!2777 lt!466710 lt!466712)))))

(declare-fun b!1399982 () Bool)

(declare-fun res!633014 () Bool)

(declare-fun e!893890 () Bool)

(assert (=> b!1399982 (=> (not res!633014) (not e!893890))))

(declare-fun sepAndNonSepRulesDisjointChars!838 (List!14296 List!14296) Bool)

(assert (=> b!1399982 (= res!633014 (sepAndNonSepRulesDisjointChars!838 rules!2550 rules!2550))))

(declare-fun e!893915 () Bool)

(assert (=> b!1399983 (= e!893915 (and tp!398552 tp!398556))))

(declare-fun b!1399984 () Bool)

(declare-fun e!893899 () Bool)

(declare-fun e!893894 () Bool)

(assert (=> b!1399984 (= e!893899 e!893894)))

(declare-fun res!633033 () Bool)

(assert (=> b!1399984 (=> res!633033 e!893894)))

(declare-fun lt!466698 () List!14295)

(declare-fun ++!3700 (List!14295 List!14295) List!14295)

(declare-fun getSuffix!625 (List!14295 List!14295) List!14295)

(assert (=> b!1399984 (= res!633033 (not (= lt!466710 (++!3700 lt!466698 (getSuffix!625 lt!466710 lt!466698)))))))

(declare-fun lambda!61259 () Int)

(declare-fun pickWitness!232 (Int) List!14295)

(assert (=> b!1399984 (= lt!466710 (pickWitness!232 lambda!61259))))

(declare-fun b!1399985 () Bool)

(declare-fun res!633006 () Bool)

(declare-fun e!893916 () Bool)

(assert (=> b!1399985 (=> res!633006 e!893916)))

(declare-datatypes ((LexerInterface!2160 0))(
  ( (LexerInterfaceExt!2157 (__x!8940 Int)) (Lexer!2158) )
))
(declare-fun thiss!19762 () LexerInterface!2160)

(declare-datatypes ((List!14297 0))(
  ( (Nil!14231) (Cons!14231 (h!19632 Token!4592) (t!122822 List!14297)) )
))
(declare-fun lt!466699 () List!14297)

(declare-fun lt!466701 () BalanceConc!9320)

(declare-datatypes ((tuple2!13850 0))(
  ( (tuple2!13851 (_1!7811 List!14297) (_2!7811 List!14295)) )
))
(declare-fun lexList!674 (LexerInterface!2160 List!14296 List!14295) tuple2!13850)

(declare-fun list!5545 (BalanceConc!9320) List!14295)

(assert (=> b!1399985 (= res!633006 (not (= (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466701)) (tuple2!13851 lt!466699 Nil!14229))))))

(declare-fun b!1399986 () Bool)

(declare-fun res!633016 () Bool)

(declare-fun e!893904 () Bool)

(assert (=> b!1399986 (=> res!633016 e!893904)))

(declare-fun lt!466723 () List!14295)

(declare-fun matchR!1770 (Regex!3779 List!14295) Bool)

(assert (=> b!1399986 (= res!633016 (not (matchR!1770 (regex!2465 (rule!4228 t2!34)) lt!466723)))))

(declare-fun b!1399987 () Bool)

(declare-datatypes ((Unit!20551 0))(
  ( (Unit!20552) )
))
(declare-fun e!893902 () Unit!20551)

(declare-fun Unit!20553 () Unit!20551)

(assert (=> b!1399987 (= e!893902 Unit!20553)))

(declare-fun b!1399988 () Bool)

(declare-fun e!893919 () Unit!20551)

(declare-fun Unit!20554 () Unit!20551)

(assert (=> b!1399988 (= e!893919 Unit!20554)))

(declare-fun lt!466707 () Unit!20551)

(declare-fun lt!466697 () List!14295)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 (Regex!3779 List!14295 C!7848) Unit!20551)

(declare-fun head!2587 (List!14295) C!7848)

(assert (=> b!1399988 (= lt!466707 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 (regex!2465 (rule!4228 t1!34)) lt!466697 (head!2587 lt!466697)))))

(assert (=> b!1399988 false))

(declare-fun b!1399977 () Bool)

(declare-fun res!633029 () Bool)

(assert (=> b!1399977 (=> res!633029 e!893916)))

(declare-fun contains!2778 (List!14296 Rule!4730) Bool)

(assert (=> b!1399977 (= res!633029 (not (contains!2778 rules!2550 (rule!4228 t1!34))))))

(declare-fun res!633017 () Bool)

(assert (=> start!127510 (=> (not res!633017) (not e!893906))))

(get-info :version)

(assert (=> start!127510 (= res!633017 ((_ is Lexer!2158) thiss!19762))))

(assert (=> start!127510 e!893906))

(assert (=> start!127510 true))

(declare-fun e!893895 () Bool)

(assert (=> start!127510 e!893895))

(declare-fun e!893907 () Bool)

(declare-fun inv!18546 (Token!4592) Bool)

(assert (=> start!127510 (and (inv!18546 t1!34) e!893907)))

(declare-fun e!893901 () Bool)

(assert (=> start!127510 (and (inv!18546 t2!34) e!893901)))

(declare-fun e!893911 () Bool)

(assert (=> b!1399989 (= e!893911 (and tp!398557 tp!398555))))

(declare-fun b!1399990 () Bool)

(declare-fun e!893891 () Bool)

(declare-fun e!893917 () Bool)

(assert (=> b!1399990 (= e!893891 e!893917)))

(declare-fun res!633036 () Bool)

(assert (=> b!1399990 (=> res!633036 e!893917)))

(declare-fun lt!466694 () Rule!4730)

(assert (=> b!1399990 (= res!633036 (or (not (isSeparator!2465 lt!466694)) (isSeparator!2465 (rule!4228 t1!34))))))

(declare-fun lt!466702 () Regex!3779)

(assert (=> b!1399990 (= (regex!2465 lt!466694) lt!466702)))

(declare-fun e!893892 () Bool)

(assert (=> b!1399991 (= e!893892 e!893904)))

(declare-fun res!633031 () Bool)

(assert (=> b!1399991 (=> res!633031 e!893904)))

(assert (=> b!1399991 (= res!633031 (not (matchR!1770 (regex!2465 (rule!4228 t1!34)) lt!466697)))))

(declare-fun lt!466715 () Unit!20551)

(declare-fun forallContained!660 (List!14296 Int Rule!4730) Unit!20551)

(assert (=> b!1399991 (= lt!466715 (forallContained!660 rules!2550 lambda!61263 (rule!4228 t2!34)))))

(declare-fun lt!466705 () Unit!20551)

(assert (=> b!1399991 (= lt!466705 (forallContained!660 rules!2550 lambda!61263 (rule!4228 t1!34)))))

(declare-fun lt!466720 () Unit!20551)

(assert (=> b!1399991 (= lt!466720 (forallContained!660 rules!2550 lambda!61263 lt!466694))))

(declare-fun e!893914 () Bool)

(assert (=> b!1399992 (= e!893900 e!893914)))

(declare-fun res!633030 () Bool)

(assert (=> b!1399992 (=> res!633030 e!893914)))

(declare-fun lambda!61260 () Int)

(declare-fun lambda!61261 () Int)

(declare-datatypes ((List!14298 0))(
  ( (Nil!14232) (Cons!14232 (h!19633 Regex!3779) (t!122823 List!14298)) )
))
(declare-fun exists!574 (List!14298 Int) Bool)

(declare-fun map!3158 (List!14296 Int) List!14298)

(assert (=> b!1399992 (= res!633030 (not (exists!574 (map!3158 rules!2550 lambda!61260) lambda!61261)))))

(declare-fun lt!466717 () List!14298)

(assert (=> b!1399992 (exists!574 lt!466717 lambda!61261)))

(declare-fun lt!466708 () Unit!20551)

(declare-fun lt!466696 () Regex!3779)

(declare-fun matchRGenUnionSpec!190 (Regex!3779 List!14298 List!14295) Unit!20551)

(assert (=> b!1399992 (= lt!466708 (matchRGenUnionSpec!190 lt!466696 lt!466717 lt!466710))))

(assert (=> b!1399992 (= lt!466717 (map!3158 rules!2550 lambda!61260))))

(declare-fun b!1399993 () Bool)

(declare-fun res!633021 () Bool)

(assert (=> b!1399993 (=> res!633021 e!893900)))

(assert (=> b!1399993 (= res!633021 (not (matchR!1770 lt!466696 lt!466710)))))

(declare-fun b!1399994 () Bool)

(declare-fun e!893912 () Bool)

(declare-fun tp!398550 () Bool)

(declare-fun inv!18543 (String!17011) Bool)

(declare-fun inv!18547 (TokenValueInjection!4770) Bool)

(assert (=> b!1399994 (= e!893912 (and tp!398550 (inv!18543 (tag!2727 (rule!4228 t2!34))) (inv!18547 (transformation!2465 (rule!4228 t2!34))) e!893889))))

(declare-fun b!1399995 () Bool)

(declare-fun e!893903 () Bool)

(assert (=> b!1399995 (= e!893903 e!893891)))

(declare-fun res!633003 () Bool)

(assert (=> b!1399995 (=> res!633003 e!893891)))

(declare-fun lt!466714 () Bool)

(assert (=> b!1399995 (= res!633003 lt!466714)))

(declare-fun lt!466704 () Unit!20551)

(assert (=> b!1399995 (= lt!466704 e!893902)))

(declare-fun c!230322 () Bool)

(assert (=> b!1399995 (= c!230322 lt!466714)))

(declare-fun lt!466718 () C!7848)

(declare-fun usedCharacters!276 (Regex!3779) List!14295)

(assert (=> b!1399995 (= lt!466714 (not (contains!2777 (usedCharacters!276 (regex!2465 (rule!4228 t2!34))) lt!466718)))))

(declare-fun b!1399996 () Bool)

(declare-fun e!893920 () Bool)

(assert (=> b!1399996 (= e!893920 e!893892)))

(declare-fun res!633019 () Bool)

(assert (=> b!1399996 (=> res!633019 e!893892)))

(declare-datatypes ((tuple2!13852 0))(
  ( (tuple2!13853 (_1!7812 Token!4592) (_2!7812 List!14295)) )
))
(declare-datatypes ((Option!2728 0))(
  ( (None!2727) (Some!2727 (v!21655 tuple2!13852)) )
))
(declare-fun maxPrefix!1134 (LexerInterface!2160 List!14296 List!14295) Option!2728)

(assert (=> b!1399996 (= res!633019 (not (= (maxPrefix!1134 thiss!19762 rules!2550 lt!466723) (Some!2727 (tuple2!13853 t2!34 Nil!14229)))))))

(declare-fun lt!466716 () BalanceConc!9320)

(assert (=> b!1399996 (= lt!466723 (list!5545 lt!466716))))

(declare-fun b!1399997 () Bool)

(declare-fun res!633010 () Bool)

(assert (=> b!1399997 (=> res!633010 e!893920)))

(declare-fun lt!466724 () BalanceConc!9320)

(declare-fun lt!466693 () List!14297)

(assert (=> b!1399997 (= res!633010 (not (= (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466724)) (tuple2!13851 lt!466693 Nil!14229))))))

(declare-fun b!1399998 () Bool)

(declare-fun e!893893 () Bool)

(assert (=> b!1399998 (= e!893890 e!893893)))

(declare-fun res!633026 () Bool)

(assert (=> b!1399998 (=> (not res!633026) (not e!893893))))

(declare-fun prefixMatch!288 (Regex!3779 List!14295) Bool)

(assert (=> b!1399998 (= res!633026 (prefixMatch!288 lt!466696 lt!466698))))

(declare-fun rulesRegex!348 (LexerInterface!2160 List!14296) Regex!3779)

(assert (=> b!1399998 (= lt!466696 (rulesRegex!348 thiss!19762 rules!2550))))

(assert (=> b!1399998 (= lt!466698 (++!3700 lt!466697 (Cons!14229 lt!466718 Nil!14229)))))

(declare-fun apply!3617 (BalanceConc!9320 Int) C!7848)

(assert (=> b!1399998 (= lt!466718 (apply!3617 lt!466716 0))))

(declare-fun lt!466722 () BalanceConc!9320)

(assert (=> b!1399998 (= lt!466697 (list!5545 lt!466722))))

(declare-fun charsOf!1437 (Token!4592) BalanceConc!9320)

(assert (=> b!1399998 (= lt!466722 (charsOf!1437 t1!34))))

(declare-fun b!1399999 () Bool)

(declare-fun e!893898 () Bool)

(assert (=> b!1399999 (= e!893914 e!893898)))

(declare-fun res!633037 () Bool)

(assert (=> b!1399999 (=> res!633037 e!893898)))

(declare-fun contains!2779 (List!14298 Regex!3779) Bool)

(assert (=> b!1399999 (= res!633037 (not (contains!2779 (map!3158 rules!2550 lambda!61260) lt!466702)))))

(declare-fun getWitness!462 (List!14298 Int) Regex!3779)

(assert (=> b!1399999 (= lt!466702 (getWitness!462 (map!3158 rules!2550 lambda!61260) lambda!61261))))

(declare-fun b!1400000 () Bool)

(declare-fun tp!398549 () Bool)

(declare-fun e!893909 () Bool)

(assert (=> b!1400000 (= e!893909 (and tp!398549 (inv!18543 (tag!2727 (h!19631 rules!2550))) (inv!18547 (transformation!2465 (h!19631 rules!2550))) e!893911))))

(declare-fun b!1400001 () Bool)

(declare-fun tp!398551 () Bool)

(assert (=> b!1400001 (= e!893895 (and e!893909 tp!398551))))

(declare-fun b!1400002 () Bool)

(declare-fun tp!398560 () Bool)

(declare-fun inv!21 (TokenValue!2555) Bool)

(assert (=> b!1400002 (= e!893901 (and (inv!21 (value!79885 t2!34)) e!893912 tp!398560))))

(declare-fun b!1400003 () Bool)

(declare-fun Unit!20555 () Unit!20551)

(assert (=> b!1400003 (= e!893902 Unit!20555)))

(declare-fun lt!466709 () Unit!20551)

(assert (=> b!1400003 (= lt!466709 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 (regex!2465 (rule!4228 t2!34)) lt!466723 (head!2587 lt!466723)))))

(assert (=> b!1400003 false))

(declare-fun b!1400004 () Bool)

(assert (=> b!1400004 (= e!893917 false)))

(assert (=> b!1400004 (not (matchR!1770 lt!466702 lt!466710))))

(declare-fun lt!466711 () Unit!20551)

(assert (=> b!1400004 (= lt!466711 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 lt!466702 lt!466710 lt!466712))))

(assert (=> b!1400004 (not (contains!2777 (usedCharacters!276 (regex!2465 lt!466694)) lt!466712))))

(declare-fun lt!466700 () Unit!20551)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!138 (LexerInterface!2160 List!14296 List!14296 Rule!4730 Rule!4730 C!7848) Unit!20551)

(assert (=> b!1400004 (= lt!466700 (lemmaSepRuleNotContainsCharContainedInANonSepRule!138 thiss!19762 rules!2550 rules!2550 (rule!4228 t1!34) lt!466694 lt!466712))))

(declare-fun b!1400005 () Bool)

(assert (=> b!1400005 (= e!893904 e!893903)))

(declare-fun res!633035 () Bool)

(assert (=> b!1400005 (=> res!633035 e!893903)))

(declare-fun lt!466713 () Bool)

(assert (=> b!1400005 (= res!633035 lt!466713)))

(declare-fun lt!466703 () Unit!20551)

(assert (=> b!1400005 (= lt!466703 e!893919)))

(declare-fun c!230323 () Bool)

(assert (=> b!1400005 (= c!230323 lt!466713)))

(assert (=> b!1400005 (= lt!466713 (not (contains!2777 (usedCharacters!276 (regex!2465 (rule!4228 t1!34))) lt!466712)))))

(declare-fun b!1400006 () Bool)

(declare-fun Unit!20556 () Unit!20551)

(assert (=> b!1400006 (= e!893919 Unit!20556)))

(declare-fun b!1400007 () Bool)

(assert (=> b!1400007 (= e!893894 e!893900)))

(declare-fun res!633022 () Bool)

(assert (=> b!1400007 (=> res!633022 e!893900)))

(assert (=> b!1400007 (= res!633022 (not (contains!2777 lt!466698 lt!466712)))))

(assert (=> b!1400007 (= lt!466712 (apply!3617 lt!466722 0))))

(declare-fun e!893908 () Bool)

(assert (=> b!1400008 (= e!893898 e!893908)))

(declare-fun res!633007 () Bool)

(assert (=> b!1400008 (=> res!633007 e!893908)))

(declare-fun exists!575 (List!14296 Int) Bool)

(assert (=> b!1400008 (= res!633007 (not (exists!575 rules!2550 lambda!61262)))))

(assert (=> b!1400008 (exists!575 rules!2550 lambda!61262)))

(declare-fun lt!466719 () Unit!20551)

(declare-fun lemmaMapContains!176 (List!14296 Int Regex!3779) Unit!20551)

(assert (=> b!1400008 (= lt!466719 (lemmaMapContains!176 rules!2550 lambda!61260 lt!466702))))

(declare-fun b!1400009 () Bool)

(declare-fun res!633020 () Bool)

(assert (=> b!1400009 (=> res!633020 e!893892)))

(assert (=> b!1400009 (= res!633020 (not (contains!2778 rules!2550 (rule!4228 t2!34))))))

(declare-fun b!1400010 () Bool)

(declare-fun res!633025 () Bool)

(assert (=> b!1400010 (=> res!633025 e!893900)))

(assert (=> b!1400010 (= res!633025 (not (contains!2777 lt!466698 lt!466718)))))

(declare-fun b!1400011 () Bool)

(declare-fun res!633024 () Bool)

(assert (=> b!1400011 (=> (not res!633024) (not e!893906))))

(declare-fun rulesProduceIndividualToken!1129 (LexerInterface!2160 List!14296 Token!4592) Bool)

(assert (=> b!1400011 (= res!633024 (rulesProduceIndividualToken!1129 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1400012 () Bool)

(declare-fun res!633023 () Bool)

(assert (=> b!1400012 (=> res!633023 e!893916)))

(declare-datatypes ((IArray!9387 0))(
  ( (IArray!9388 (innerList!4751 List!14297)) )
))
(declare-datatypes ((Conc!4691 0))(
  ( (Node!4691 (left!12153 Conc!4691) (right!12483 Conc!4691) (csize!9612 Int) (cheight!4902 Int)) (Leaf!7120 (xs!7418 IArray!9387) (csize!9613 Int)) (Empty!4691) )
))
(declare-datatypes ((BalanceConc!9322 0))(
  ( (BalanceConc!9323 (c!230326 Conc!4691)) )
))
(declare-datatypes ((tuple2!13854 0))(
  ( (tuple2!13855 (_1!7813 BalanceConc!9322) (_2!7813 BalanceConc!9320)) )
))
(declare-fun lt!466695 () tuple2!13854)

(declare-fun isEmpty!8645 (BalanceConc!9320) Bool)

(assert (=> b!1400012 (= res!633023 (not (isEmpty!8645 (_2!7813 lt!466695))))))

(declare-fun b!1400013 () Bool)

(declare-fun res!633032 () Bool)

(assert (=> b!1400013 (=> (not res!633032) (not e!893906))))

(declare-fun rulesInvariant!2030 (LexerInterface!2160 List!14296) Bool)

(assert (=> b!1400013 (= res!633032 (rulesInvariant!2030 thiss!19762 rules!2550))))

(declare-fun b!1400014 () Bool)

(declare-fun res!633011 () Bool)

(assert (=> b!1400014 (=> res!633011 e!893920)))

(declare-fun lt!466706 () tuple2!13854)

(assert (=> b!1400014 (= res!633011 (not (isEmpty!8645 (_2!7813 lt!466706))))))

(declare-fun b!1400015 () Bool)

(assert (=> b!1400015 (= e!893906 e!893890)))

(declare-fun res!633009 () Bool)

(assert (=> b!1400015 (=> (not res!633009) (not e!893890))))

(declare-fun size!11702 (BalanceConc!9320) Int)

(assert (=> b!1400015 (= res!633009 (> (size!11702 lt!466716) 0))))

(assert (=> b!1400015 (= lt!466716 (charsOf!1437 t2!34))))

(declare-fun tp!398559 () Bool)

(declare-fun e!893897 () Bool)

(declare-fun b!1400016 () Bool)

(assert (=> b!1400016 (= e!893897 (and tp!398559 (inv!18543 (tag!2727 (rule!4228 t1!34))) (inv!18547 (transformation!2465 (rule!4228 t1!34))) e!893915))))

(declare-fun b!1400017 () Bool)

(declare-fun res!633027 () Bool)

(assert (=> b!1400017 (=> (not res!633027) (not e!893906))))

(assert (=> b!1400017 (= res!633027 (rulesProduceIndividualToken!1129 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1400018 () Bool)

(declare-fun res!633018 () Bool)

(assert (=> b!1400018 (=> res!633018 e!893916)))

(assert (=> b!1400018 (= res!633018 (not (= (maxPrefix!1134 thiss!19762 rules!2550 lt!466697) (Some!2727 (tuple2!13853 t1!34 Nil!14229)))))))

(declare-fun b!1400019 () Bool)

(assert (=> b!1400019 (= e!893908 e!893916)))

(declare-fun res!633038 () Bool)

(assert (=> b!1400019 (=> res!633038 e!893916)))

(declare-fun list!5546 (BalanceConc!9322) List!14297)

(assert (=> b!1400019 (= res!633038 (not (= (list!5546 (_1!7813 lt!466695)) lt!466699)))))

(assert (=> b!1400019 (= lt!466699 (Cons!14231 t1!34 Nil!14231))))

(declare-fun lex!985 (LexerInterface!2160 List!14296 BalanceConc!9320) tuple2!13854)

(assert (=> b!1400019 (= lt!466695 (lex!985 thiss!19762 rules!2550 lt!466701))))

(declare-fun print!924 (LexerInterface!2160 BalanceConc!9322) BalanceConc!9320)

(declare-fun singletonSeq!1124 (Token!4592) BalanceConc!9322)

(assert (=> b!1400019 (= lt!466701 (print!924 thiss!19762 (singletonSeq!1124 t1!34)))))

(declare-fun getWitness!463 (List!14296 Int) Rule!4730)

(assert (=> b!1400019 (= lt!466694 (getWitness!463 rules!2550 lambda!61262))))

(declare-fun b!1400020 () Bool)

(declare-fun res!633005 () Bool)

(assert (=> b!1400020 (=> res!633005 e!893892)))

(assert (=> b!1400020 (= res!633005 (not (contains!2778 rules!2550 lt!466694)))))

(declare-fun b!1400021 () Bool)

(declare-fun res!633013 () Bool)

(assert (=> b!1400021 (=> (not res!633013) (not e!893890))))

(declare-fun separableTokensPredicate!443 (LexerInterface!2160 Token!4592 Token!4592 List!14296) Bool)

(assert (=> b!1400021 (= res!633013 (not (separableTokensPredicate!443 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1400022 () Bool)

(declare-fun tp!398554 () Bool)

(assert (=> b!1400022 (= e!893907 (and (inv!21 (value!79885 t1!34)) e!893897 tp!398554))))

(declare-fun b!1400023 () Bool)

(declare-fun res!633008 () Bool)

(assert (=> b!1400023 (=> res!633008 e!893900)))

(assert (=> b!1400023 (= res!633008 (not (contains!2777 lt!466710 lt!466718)))))

(declare-fun b!1400024 () Bool)

(assert (=> b!1400024 (= e!893916 e!893920)))

(declare-fun res!633015 () Bool)

(assert (=> b!1400024 (=> res!633015 e!893920)))

(assert (=> b!1400024 (= res!633015 (not (= (list!5546 (_1!7813 lt!466706)) lt!466693)))))

(assert (=> b!1400024 (= lt!466693 (Cons!14231 t2!34 Nil!14231))))

(assert (=> b!1400024 (= lt!466706 (lex!985 thiss!19762 rules!2550 lt!466724))))

(assert (=> b!1400024 (= lt!466724 (print!924 thiss!19762 (singletonSeq!1124 t2!34)))))

(assert (=> b!1400025 (= e!893893 (not e!893899))))

(declare-fun res!633004 () Bool)

(assert (=> b!1400025 (=> res!633004 e!893899)))

(declare-fun Exists!929 (Int) Bool)

(assert (=> b!1400025 (= res!633004 (not (Exists!929 lambda!61259)))))

(assert (=> b!1400025 (Exists!929 lambda!61259)))

(declare-fun lt!466721 () Unit!20551)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!247 (Regex!3779 List!14295) Unit!20551)

(assert (=> b!1400025 (= lt!466721 (lemmaPrefixMatchThenExistsStringThatMatches!247 lt!466696 lt!466698))))

(assert (= (and start!127510 res!633017) b!1399979))

(assert (= (and b!1399979 res!633012) b!1400013))

(assert (= (and b!1400013 res!633032) b!1400011))

(assert (= (and b!1400011 res!633024) b!1400017))

(assert (= (and b!1400017 res!633027) b!1399978))

(assert (= (and b!1399978 res!633028) b!1400015))

(assert (= (and b!1400015 res!633009) b!1399982))

(assert (= (and b!1399982 res!633014) b!1400021))

(assert (= (and b!1400021 res!633013) b!1399998))

(assert (= (and b!1399998 res!633026) b!1400025))

(assert (= (and b!1400025 (not res!633004)) b!1399984))

(assert (= (and b!1399984 (not res!633033)) b!1400007))

(assert (= (and b!1400007 (not res!633022)) b!1399981))

(assert (= (and b!1399981 (not res!633034)) b!1400010))

(assert (= (and b!1400010 (not res!633025)) b!1400023))

(assert (= (and b!1400023 (not res!633008)) b!1399993))

(assert (= (and b!1399993 (not res!633021)) b!1399992))

(assert (= (and b!1399992 (not res!633030)) b!1399999))

(assert (= (and b!1399999 (not res!633037)) b!1400008))

(assert (= (and b!1400008 (not res!633007)) b!1400019))

(assert (= (and b!1400019 (not res!633038)) b!1400012))

(assert (= (and b!1400012 (not res!633023)) b!1399985))

(assert (= (and b!1399985 (not res!633006)) b!1400018))

(assert (= (and b!1400018 (not res!633018)) b!1399977))

(assert (= (and b!1399977 (not res!633029)) b!1400024))

(assert (= (and b!1400024 (not res!633015)) b!1400014))

(assert (= (and b!1400014 (not res!633011)) b!1399997))

(assert (= (and b!1399997 (not res!633010)) b!1399996))

(assert (= (and b!1399996 (not res!633019)) b!1400009))

(assert (= (and b!1400009 (not res!633020)) b!1400020))

(assert (= (and b!1400020 (not res!633005)) b!1399991))

(assert (= (and b!1399991 (not res!633031)) b!1399986))

(assert (= (and b!1399986 (not res!633016)) b!1400005))

(assert (= (and b!1400005 c!230323) b!1399988))

(assert (= (and b!1400005 (not c!230323)) b!1400006))

(assert (= (and b!1400005 (not res!633035)) b!1399995))

(assert (= (and b!1399995 c!230322) b!1400003))

(assert (= (and b!1399995 (not c!230322)) b!1399987))

(assert (= (and b!1399995 (not res!633003)) b!1399990))

(assert (= (and b!1399990 (not res!633036)) b!1400004))

(assert (= b!1400000 b!1399989))

(assert (= b!1400001 b!1400000))

(assert (= (and start!127510 ((_ is Cons!14230) rules!2550)) b!1400001))

(assert (= b!1400016 b!1399983))

(assert (= b!1400022 b!1400016))

(assert (= start!127510 b!1400022))

(assert (= b!1399994 b!1399980))

(assert (= b!1400002 b!1399994))

(assert (= start!127510 b!1400002))

(declare-fun m!1576767 () Bool)

(assert (=> b!1399992 m!1576767))

(declare-fun m!1576769 () Bool)

(assert (=> b!1399992 m!1576769))

(declare-fun m!1576771 () Bool)

(assert (=> b!1399992 m!1576771))

(assert (=> b!1399992 m!1576769))

(declare-fun m!1576773 () Bool)

(assert (=> b!1399992 m!1576773))

(assert (=> b!1399992 m!1576769))

(declare-fun m!1576775 () Bool)

(assert (=> b!1400017 m!1576775))

(declare-fun m!1576777 () Bool)

(assert (=> b!1400009 m!1576777))

(declare-fun m!1576779 () Bool)

(assert (=> b!1400010 m!1576779))

(declare-fun m!1576781 () Bool)

(assert (=> b!1400019 m!1576781))

(declare-fun m!1576783 () Bool)

(assert (=> b!1400019 m!1576783))

(declare-fun m!1576785 () Bool)

(assert (=> b!1400019 m!1576785))

(declare-fun m!1576787 () Bool)

(assert (=> b!1400019 m!1576787))

(assert (=> b!1400019 m!1576781))

(declare-fun m!1576789 () Bool)

(assert (=> b!1400019 m!1576789))

(declare-fun m!1576791 () Bool)

(assert (=> b!1399982 m!1576791))

(declare-fun m!1576793 () Bool)

(assert (=> b!1400000 m!1576793))

(declare-fun m!1576795 () Bool)

(assert (=> b!1400000 m!1576795))

(declare-fun m!1576797 () Bool)

(assert (=> b!1399981 m!1576797))

(declare-fun m!1576799 () Bool)

(assert (=> b!1400003 m!1576799))

(assert (=> b!1400003 m!1576799))

(declare-fun m!1576801 () Bool)

(assert (=> b!1400003 m!1576801))

(declare-fun m!1576803 () Bool)

(assert (=> b!1399997 m!1576803))

(assert (=> b!1399997 m!1576803))

(declare-fun m!1576805 () Bool)

(assert (=> b!1399997 m!1576805))

(declare-fun m!1576807 () Bool)

(assert (=> b!1400012 m!1576807))

(declare-fun m!1576809 () Bool)

(assert (=> b!1400007 m!1576809))

(declare-fun m!1576811 () Bool)

(assert (=> b!1400007 m!1576811))

(declare-fun m!1576813 () Bool)

(assert (=> b!1399998 m!1576813))

(declare-fun m!1576815 () Bool)

(assert (=> b!1399998 m!1576815))

(declare-fun m!1576817 () Bool)

(assert (=> b!1399998 m!1576817))

(declare-fun m!1576819 () Bool)

(assert (=> b!1399998 m!1576819))

(declare-fun m!1576821 () Bool)

(assert (=> b!1399998 m!1576821))

(declare-fun m!1576823 () Bool)

(assert (=> b!1399998 m!1576823))

(declare-fun m!1576825 () Bool)

(assert (=> b!1400020 m!1576825))

(assert (=> b!1399999 m!1576769))

(assert (=> b!1399999 m!1576769))

(declare-fun m!1576827 () Bool)

(assert (=> b!1399999 m!1576827))

(assert (=> b!1399999 m!1576769))

(assert (=> b!1399999 m!1576769))

(declare-fun m!1576829 () Bool)

(assert (=> b!1399999 m!1576829))

(declare-fun m!1576831 () Bool)

(assert (=> b!1400011 m!1576831))

(declare-fun m!1576833 () Bool)

(assert (=> start!127510 m!1576833))

(declare-fun m!1576835 () Bool)

(assert (=> start!127510 m!1576835))

(declare-fun m!1576837 () Bool)

(assert (=> b!1400002 m!1576837))

(declare-fun m!1576839 () Bool)

(assert (=> b!1399993 m!1576839))

(declare-fun m!1576841 () Bool)

(assert (=> b!1399994 m!1576841))

(declare-fun m!1576843 () Bool)

(assert (=> b!1399994 m!1576843))

(declare-fun m!1576845 () Bool)

(assert (=> b!1399988 m!1576845))

(assert (=> b!1399988 m!1576845))

(declare-fun m!1576847 () Bool)

(assert (=> b!1399988 m!1576847))

(declare-fun m!1576849 () Bool)

(assert (=> b!1399977 m!1576849))

(declare-fun m!1576851 () Bool)

(assert (=> b!1399995 m!1576851))

(assert (=> b!1399995 m!1576851))

(declare-fun m!1576853 () Bool)

(assert (=> b!1399995 m!1576853))

(declare-fun m!1576855 () Bool)

(assert (=> b!1399979 m!1576855))

(declare-fun m!1576857 () Bool)

(assert (=> b!1400005 m!1576857))

(assert (=> b!1400005 m!1576857))

(declare-fun m!1576859 () Bool)

(assert (=> b!1400005 m!1576859))

(declare-fun m!1576861 () Bool)

(assert (=> b!1400022 m!1576861))

(declare-fun m!1576863 () Bool)

(assert (=> b!1400013 m!1576863))

(declare-fun m!1576865 () Bool)

(assert (=> b!1399985 m!1576865))

(assert (=> b!1399985 m!1576865))

(declare-fun m!1576867 () Bool)

(assert (=> b!1399985 m!1576867))

(declare-fun m!1576869 () Bool)

(assert (=> b!1400024 m!1576869))

(declare-fun m!1576871 () Bool)

(assert (=> b!1400024 m!1576871))

(declare-fun m!1576873 () Bool)

(assert (=> b!1400024 m!1576873))

(assert (=> b!1400024 m!1576873))

(declare-fun m!1576875 () Bool)

(assert (=> b!1400024 m!1576875))

(declare-fun m!1576877 () Bool)

(assert (=> b!1399984 m!1576877))

(assert (=> b!1399984 m!1576877))

(declare-fun m!1576879 () Bool)

(assert (=> b!1399984 m!1576879))

(declare-fun m!1576881 () Bool)

(assert (=> b!1399984 m!1576881))

(declare-fun m!1576883 () Bool)

(assert (=> b!1399996 m!1576883))

(declare-fun m!1576885 () Bool)

(assert (=> b!1399996 m!1576885))

(declare-fun m!1576887 () Bool)

(assert (=> b!1400004 m!1576887))

(declare-fun m!1576889 () Bool)

(assert (=> b!1400004 m!1576889))

(declare-fun m!1576891 () Bool)

(assert (=> b!1400004 m!1576891))

(declare-fun m!1576893 () Bool)

(assert (=> b!1400004 m!1576893))

(assert (=> b!1400004 m!1576893))

(declare-fun m!1576895 () Bool)

(assert (=> b!1400004 m!1576895))

(declare-fun m!1576897 () Bool)

(assert (=> b!1400021 m!1576897))

(declare-fun m!1576899 () Bool)

(assert (=> b!1399986 m!1576899))

(declare-fun m!1576901 () Bool)

(assert (=> b!1400025 m!1576901))

(assert (=> b!1400025 m!1576901))

(declare-fun m!1576903 () Bool)

(assert (=> b!1400025 m!1576903))

(declare-fun m!1576905 () Bool)

(assert (=> b!1400023 m!1576905))

(declare-fun m!1576907 () Bool)

(assert (=> b!1399991 m!1576907))

(declare-fun m!1576909 () Bool)

(assert (=> b!1399991 m!1576909))

(declare-fun m!1576911 () Bool)

(assert (=> b!1399991 m!1576911))

(declare-fun m!1576913 () Bool)

(assert (=> b!1399991 m!1576913))

(declare-fun m!1576915 () Bool)

(assert (=> b!1400015 m!1576915))

(declare-fun m!1576917 () Bool)

(assert (=> b!1400015 m!1576917))

(declare-fun m!1576919 () Bool)

(assert (=> b!1400014 m!1576919))

(declare-fun m!1576921 () Bool)

(assert (=> b!1400018 m!1576921))

(declare-fun m!1576923 () Bool)

(assert (=> b!1400008 m!1576923))

(assert (=> b!1400008 m!1576923))

(declare-fun m!1576925 () Bool)

(assert (=> b!1400008 m!1576925))

(declare-fun m!1576927 () Bool)

(assert (=> b!1400016 m!1576927))

(declare-fun m!1576929 () Bool)

(assert (=> b!1400016 m!1576929))

(check-sat (not b!1400012) (not b!1399995) (not b!1399993) (not b!1399984) (not b!1400008) (not b!1399981) (not b!1399997) b_and!93747 (not b!1400005) (not b_next!34811) b_and!93743 (not b!1400009) (not b_next!34817) (not b!1400023) (not b!1400020) (not b!1400025) (not b!1399992) (not b!1399998) b_and!93741 (not b_next!34821) b_and!93739 b_and!93745 (not b!1400017) (not b!1400014) (not b!1399985) (not b!1400021) (not b!1400007) (not b!1400000) (not b!1399999) (not b!1399977) b_and!93749 (not b!1399982) (not b_next!34813) (not b!1399979) (not b!1400022) (not start!127510) (not b!1400015) (not b!1400018) (not b!1399988) (not b!1400010) (not b!1400011) (not b!1399994) (not b!1400002) (not b!1400019) (not b!1399986) (not b!1400001) (not b!1400003) (not b_next!34815) (not b!1400013) (not b!1399996) (not b!1400016) (not b_next!34819) (not b!1400004) (not b!1400024) (not b!1399991))
(check-sat b_and!93743 (not b_next!34817) b_and!93741 b_and!93745 b_and!93749 (not b_next!34813) b_and!93747 (not b_next!34815) (not b_next!34819) (not b_next!34811) (not b_next!34821) b_and!93739)
(get-model)

(declare-fun d!400183 () Bool)

(declare-fun lt!466730 () Bool)

(declare-fun isEmpty!8649 (List!14295) Bool)

(assert (=> d!400183 (= lt!466730 (isEmpty!8649 (list!5545 (_2!7813 lt!466695))))))

(declare-fun isEmpty!8650 (Conc!4690) Bool)

(assert (=> d!400183 (= lt!466730 (isEmpty!8650 (c!230324 (_2!7813 lt!466695))))))

(assert (=> d!400183 (= (isEmpty!8645 (_2!7813 lt!466695)) lt!466730)))

(declare-fun bs!338133 () Bool)

(assert (= bs!338133 d!400183))

(declare-fun m!1576939 () Bool)

(assert (=> bs!338133 m!1576939))

(assert (=> bs!338133 m!1576939))

(declare-fun m!1576941 () Bool)

(assert (=> bs!338133 m!1576941))

(declare-fun m!1576943 () Bool)

(assert (=> bs!338133 m!1576943))

(assert (=> b!1400012 d!400183))

(declare-fun d!400185 () Bool)

(declare-fun lt!466757 () Bool)

(declare-fun e!893992 () Bool)

(assert (=> d!400185 (= lt!466757 e!893992)))

(declare-fun res!633115 () Bool)

(assert (=> d!400185 (=> (not res!633115) (not e!893992))))

(assert (=> d!400185 (= res!633115 (= (list!5546 (_1!7813 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t1!34))))) (list!5546 (singletonSeq!1124 t1!34))))))

(declare-fun e!893991 () Bool)

(assert (=> d!400185 (= lt!466757 e!893991)))

(declare-fun res!633114 () Bool)

(assert (=> d!400185 (=> (not res!633114) (not e!893991))))

(declare-fun lt!466756 () tuple2!13854)

(declare-fun size!11705 (BalanceConc!9322) Int)

(assert (=> d!400185 (= res!633114 (= (size!11705 (_1!7813 lt!466756)) 1))))

(assert (=> d!400185 (= lt!466756 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t1!34))))))

(assert (=> d!400185 (not (isEmpty!8644 rules!2550))))

(assert (=> d!400185 (= (rulesProduceIndividualToken!1129 thiss!19762 rules!2550 t1!34) lt!466757)))

(declare-fun b!1400153 () Bool)

(declare-fun res!633113 () Bool)

(assert (=> b!1400153 (=> (not res!633113) (not e!893991))))

(declare-fun apply!3619 (BalanceConc!9322 Int) Token!4592)

(assert (=> b!1400153 (= res!633113 (= (apply!3619 (_1!7813 lt!466756) 0) t1!34))))

(declare-fun b!1400154 () Bool)

(assert (=> b!1400154 (= e!893991 (isEmpty!8645 (_2!7813 lt!466756)))))

(declare-fun b!1400155 () Bool)

(assert (=> b!1400155 (= e!893992 (isEmpty!8645 (_2!7813 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t1!34))))))))

(assert (= (and d!400185 res!633114) b!1400153))

(assert (= (and b!1400153 res!633113) b!1400154))

(assert (= (and d!400185 res!633115) b!1400155))

(assert (=> d!400185 m!1576781))

(declare-fun m!1577051 () Bool)

(assert (=> d!400185 m!1577051))

(assert (=> d!400185 m!1576781))

(declare-fun m!1577053 () Bool)

(assert (=> d!400185 m!1577053))

(assert (=> d!400185 m!1576781))

(assert (=> d!400185 m!1576789))

(declare-fun m!1577055 () Bool)

(assert (=> d!400185 m!1577055))

(assert (=> d!400185 m!1576855))

(assert (=> d!400185 m!1576789))

(declare-fun m!1577057 () Bool)

(assert (=> d!400185 m!1577057))

(declare-fun m!1577059 () Bool)

(assert (=> b!1400153 m!1577059))

(declare-fun m!1577061 () Bool)

(assert (=> b!1400154 m!1577061))

(assert (=> b!1400155 m!1576781))

(assert (=> b!1400155 m!1576781))

(assert (=> b!1400155 m!1576789))

(assert (=> b!1400155 m!1576789))

(assert (=> b!1400155 m!1577057))

(declare-fun m!1577063 () Bool)

(assert (=> b!1400155 m!1577063))

(assert (=> b!1400011 d!400185))

(declare-fun d!400213 () Bool)

(declare-fun lt!466760 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2108 (List!14295) (InoxSet C!7848))

(assert (=> d!400213 (= lt!466760 (select (content!2108 lt!466698) lt!466718))))

(declare-fun e!893997 () Bool)

(assert (=> d!400213 (= lt!466760 e!893997)))

(declare-fun res!633120 () Bool)

(assert (=> d!400213 (=> (not res!633120) (not e!893997))))

(assert (=> d!400213 (= res!633120 ((_ is Cons!14229) lt!466698))))

(assert (=> d!400213 (= (contains!2777 lt!466698 lt!466718) lt!466760)))

(declare-fun b!1400160 () Bool)

(declare-fun e!893998 () Bool)

(assert (=> b!1400160 (= e!893997 e!893998)))

(declare-fun res!633121 () Bool)

(assert (=> b!1400160 (=> res!633121 e!893998)))

(assert (=> b!1400160 (= res!633121 (= (h!19630 lt!466698) lt!466718))))

(declare-fun b!1400161 () Bool)

(assert (=> b!1400161 (= e!893998 (contains!2777 (t!122820 lt!466698) lt!466718))))

(assert (= (and d!400213 res!633120) b!1400160))

(assert (= (and b!1400160 (not res!633121)) b!1400161))

(declare-fun m!1577065 () Bool)

(assert (=> d!400213 m!1577065))

(declare-fun m!1577067 () Bool)

(assert (=> d!400213 m!1577067))

(declare-fun m!1577069 () Bool)

(assert (=> b!1400161 m!1577069))

(assert (=> b!1400010 d!400213))

(declare-fun b!1400190 () Bool)

(declare-fun e!894017 () Bool)

(assert (=> b!1400190 (= e!894017 (not (= (head!2587 lt!466710) (c!230325 lt!466696))))))

(declare-fun d!400215 () Bool)

(declare-fun e!894013 () Bool)

(assert (=> d!400215 e!894013))

(declare-fun c!230357 () Bool)

(assert (=> d!400215 (= c!230357 ((_ is EmptyExpr!3779) lt!466696))))

(declare-fun lt!466763 () Bool)

(declare-fun e!894019 () Bool)

(assert (=> d!400215 (= lt!466763 e!894019)))

(declare-fun c!230358 () Bool)

(assert (=> d!400215 (= c!230358 (isEmpty!8649 lt!466710))))

(declare-fun validRegex!1653 (Regex!3779) Bool)

(assert (=> d!400215 (validRegex!1653 lt!466696)))

(assert (=> d!400215 (= (matchR!1770 lt!466696 lt!466710) lt!466763)))

(declare-fun b!1400191 () Bool)

(declare-fun e!894016 () Bool)

(assert (=> b!1400191 (= e!894016 (not lt!466763))))

(declare-fun b!1400192 () Bool)

(declare-fun e!894014 () Bool)

(assert (=> b!1400192 (= e!894014 e!894017)))

(declare-fun res!633139 () Bool)

(assert (=> b!1400192 (=> res!633139 e!894017)))

(declare-fun call!93459 () Bool)

(assert (=> b!1400192 (= res!633139 call!93459)))

(declare-fun b!1400193 () Bool)

(declare-fun e!894015 () Bool)

(assert (=> b!1400193 (= e!894015 e!894014)))

(declare-fun res!633138 () Bool)

(assert (=> b!1400193 (=> (not res!633138) (not e!894014))))

(assert (=> b!1400193 (= res!633138 (not lt!466763))))

(declare-fun bm!93454 () Bool)

(assert (=> bm!93454 (= call!93459 (isEmpty!8649 lt!466710))))

(declare-fun b!1400194 () Bool)

(declare-fun derivativeStep!987 (Regex!3779 C!7848) Regex!3779)

(declare-fun tail!2034 (List!14295) List!14295)

(assert (=> b!1400194 (= e!894019 (matchR!1770 (derivativeStep!987 lt!466696 (head!2587 lt!466710)) (tail!2034 lt!466710)))))

(declare-fun b!1400195 () Bool)

(declare-fun res!633144 () Bool)

(declare-fun e!894018 () Bool)

(assert (=> b!1400195 (=> (not res!633144) (not e!894018))))

(assert (=> b!1400195 (= res!633144 (not call!93459))))

(declare-fun b!1400196 () Bool)

(assert (=> b!1400196 (= e!894013 e!894016)))

(declare-fun c!230359 () Bool)

(assert (=> b!1400196 (= c!230359 ((_ is EmptyLang!3779) lt!466696))))

(declare-fun b!1400197 () Bool)

(assert (=> b!1400197 (= e!894013 (= lt!466763 call!93459))))

(declare-fun b!1400198 () Bool)

(assert (=> b!1400198 (= e!894018 (= (head!2587 lt!466710) (c!230325 lt!466696)))))

(declare-fun b!1400199 () Bool)

(declare-fun res!633143 () Bool)

(assert (=> b!1400199 (=> res!633143 e!894017)))

(assert (=> b!1400199 (= res!633143 (not (isEmpty!8649 (tail!2034 lt!466710))))))

(declare-fun b!1400200 () Bool)

(declare-fun res!633145 () Bool)

(assert (=> b!1400200 (=> res!633145 e!894015)))

(assert (=> b!1400200 (= res!633145 (not ((_ is ElementMatch!3779) lt!466696)))))

(assert (=> b!1400200 (= e!894016 e!894015)))

(declare-fun b!1400201 () Bool)

(declare-fun nullable!1229 (Regex!3779) Bool)

(assert (=> b!1400201 (= e!894019 (nullable!1229 lt!466696))))

(declare-fun b!1400202 () Bool)

(declare-fun res!633141 () Bool)

(assert (=> b!1400202 (=> res!633141 e!894015)))

(assert (=> b!1400202 (= res!633141 e!894018)))

(declare-fun res!633140 () Bool)

(assert (=> b!1400202 (=> (not res!633140) (not e!894018))))

(assert (=> b!1400202 (= res!633140 lt!466763)))

(declare-fun b!1400203 () Bool)

(declare-fun res!633142 () Bool)

(assert (=> b!1400203 (=> (not res!633142) (not e!894018))))

(assert (=> b!1400203 (= res!633142 (isEmpty!8649 (tail!2034 lt!466710)))))

(assert (= (and d!400215 c!230358) b!1400201))

(assert (= (and d!400215 (not c!230358)) b!1400194))

(assert (= (and d!400215 c!230357) b!1400197))

(assert (= (and d!400215 (not c!230357)) b!1400196))

(assert (= (and b!1400196 c!230359) b!1400191))

(assert (= (and b!1400196 (not c!230359)) b!1400200))

(assert (= (and b!1400200 (not res!633145)) b!1400202))

(assert (= (and b!1400202 res!633140) b!1400195))

(assert (= (and b!1400195 res!633144) b!1400203))

(assert (= (and b!1400203 res!633142) b!1400198))

(assert (= (and b!1400202 (not res!633141)) b!1400193))

(assert (= (and b!1400193 res!633138) b!1400192))

(assert (= (and b!1400192 (not res!633139)) b!1400199))

(assert (= (and b!1400199 (not res!633143)) b!1400190))

(assert (= (or b!1400197 b!1400192 b!1400195) bm!93454))

(declare-fun m!1577071 () Bool)

(assert (=> b!1400201 m!1577071))

(declare-fun m!1577073 () Bool)

(assert (=> b!1400198 m!1577073))

(declare-fun m!1577075 () Bool)

(assert (=> b!1400199 m!1577075))

(assert (=> b!1400199 m!1577075))

(declare-fun m!1577077 () Bool)

(assert (=> b!1400199 m!1577077))

(declare-fun m!1577079 () Bool)

(assert (=> bm!93454 m!1577079))

(assert (=> b!1400203 m!1577075))

(assert (=> b!1400203 m!1577075))

(assert (=> b!1400203 m!1577077))

(assert (=> b!1400190 m!1577073))

(assert (=> b!1400194 m!1577073))

(assert (=> b!1400194 m!1577073))

(declare-fun m!1577081 () Bool)

(assert (=> b!1400194 m!1577081))

(assert (=> b!1400194 m!1577075))

(assert (=> b!1400194 m!1577081))

(assert (=> b!1400194 m!1577075))

(declare-fun m!1577083 () Bool)

(assert (=> b!1400194 m!1577083))

(assert (=> d!400215 m!1577079))

(declare-fun m!1577085 () Bool)

(assert (=> d!400215 m!1577085))

(assert (=> b!1399993 d!400215))

(declare-fun d!400217 () Bool)

(declare-fun lt!466764 () Bool)

(assert (=> d!400217 (= lt!466764 (isEmpty!8649 (list!5545 (_2!7813 lt!466706))))))

(assert (=> d!400217 (= lt!466764 (isEmpty!8650 (c!230324 (_2!7813 lt!466706))))))

(assert (=> d!400217 (= (isEmpty!8645 (_2!7813 lt!466706)) lt!466764)))

(declare-fun bs!338136 () Bool)

(assert (= bs!338136 d!400217))

(declare-fun m!1577087 () Bool)

(assert (=> bs!338136 m!1577087))

(assert (=> bs!338136 m!1577087))

(declare-fun m!1577089 () Bool)

(assert (=> bs!338136 m!1577089))

(declare-fun m!1577091 () Bool)

(assert (=> bs!338136 m!1577091))

(assert (=> b!1400014 d!400217))

(declare-fun d!400219 () Bool)

(declare-fun res!633148 () Bool)

(declare-fun e!894022 () Bool)

(assert (=> d!400219 (=> (not res!633148) (not e!894022))))

(declare-fun rulesValid!926 (LexerInterface!2160 List!14296) Bool)

(assert (=> d!400219 (= res!633148 (rulesValid!926 thiss!19762 rules!2550))))

(assert (=> d!400219 (= (rulesInvariant!2030 thiss!19762 rules!2550) e!894022)))

(declare-fun b!1400206 () Bool)

(declare-datatypes ((List!14299 0))(
  ( (Nil!14233) (Cons!14233 (h!19634 String!17011) (t!122860 List!14299)) )
))
(declare-fun noDuplicateTag!926 (LexerInterface!2160 List!14296 List!14299) Bool)

(assert (=> b!1400206 (= e!894022 (noDuplicateTag!926 thiss!19762 rules!2550 Nil!14233))))

(assert (= (and d!400219 res!633148) b!1400206))

(declare-fun m!1577093 () Bool)

(assert (=> d!400219 m!1577093))

(declare-fun m!1577095 () Bool)

(assert (=> b!1400206 m!1577095))

(assert (=> b!1400013 d!400219))

(declare-fun bs!338137 () Bool)

(declare-fun d!400221 () Bool)

(assert (= bs!338137 (and d!400221 b!1399992)))

(declare-fun lambda!61268 () Int)

(assert (=> bs!338137 (not (= lambda!61268 lambda!61261))))

(declare-fun lambda!61269 () Int)

(assert (=> bs!338137 (= lambda!61269 lambda!61261)))

(declare-fun bs!338138 () Bool)

(assert (= bs!338138 d!400221))

(assert (=> bs!338138 (not (= lambda!61269 lambda!61268))))

(assert (=> d!400221 true))

(assert (=> d!400221 (= (matchR!1770 lt!466696 lt!466710) (exists!574 lt!466717 lambda!61269))))

(declare-fun lt!466767 () Unit!20551)

(declare-fun choose!8625 (Regex!3779 List!14298 List!14295) Unit!20551)

(assert (=> d!400221 (= lt!466767 (choose!8625 lt!466696 lt!466717 lt!466710))))

(declare-fun forall!3453 (List!14298 Int) Bool)

(assert (=> d!400221 (forall!3453 lt!466717 lambda!61268)))

(assert (=> d!400221 (= (matchRGenUnionSpec!190 lt!466696 lt!466717 lt!466710) lt!466767)))

(assert (=> bs!338138 m!1576839))

(declare-fun m!1577097 () Bool)

(assert (=> bs!338138 m!1577097))

(declare-fun m!1577099 () Bool)

(assert (=> bs!338138 m!1577099))

(declare-fun m!1577101 () Bool)

(assert (=> bs!338138 m!1577101))

(assert (=> b!1399992 d!400221))

(declare-fun d!400223 () Bool)

(declare-fun lt!466770 () List!14298)

(declare-fun size!11708 (List!14298) Int)

(declare-fun size!11709 (List!14296) Int)

(assert (=> d!400223 (= (size!11708 lt!466770) (size!11709 rules!2550))))

(declare-fun e!894027 () List!14298)

(assert (=> d!400223 (= lt!466770 e!894027)))

(declare-fun c!230362 () Bool)

(assert (=> d!400223 (= c!230362 ((_ is Nil!14230) rules!2550))))

(assert (=> d!400223 (= (map!3158 rules!2550 lambda!61260) lt!466770)))

(declare-fun b!1400213 () Bool)

(assert (=> b!1400213 (= e!894027 Nil!14232)))

(declare-fun b!1400214 () Bool)

(declare-fun $colon$colon!231 (List!14298 Regex!3779) List!14298)

(declare-fun dynLambda!6573 (Int Rule!4730) Regex!3779)

(assert (=> b!1400214 (= e!894027 ($colon$colon!231 (map!3158 (t!122821 rules!2550) lambda!61260) (dynLambda!6573 lambda!61260 (h!19631 rules!2550))))))

(assert (= (and d!400223 c!230362) b!1400213))

(assert (= (and d!400223 (not c!230362)) b!1400214))

(declare-fun b_lambda!43925 () Bool)

(assert (=> (not b_lambda!43925) (not b!1400214)))

(declare-fun m!1577103 () Bool)

(assert (=> d!400223 m!1577103))

(declare-fun m!1577105 () Bool)

(assert (=> d!400223 m!1577105))

(declare-fun m!1577107 () Bool)

(assert (=> b!1400214 m!1577107))

(declare-fun m!1577109 () Bool)

(assert (=> b!1400214 m!1577109))

(assert (=> b!1400214 m!1577107))

(assert (=> b!1400214 m!1577109))

(declare-fun m!1577111 () Bool)

(assert (=> b!1400214 m!1577111))

(assert (=> b!1399992 d!400223))

(declare-fun bs!338139 () Bool)

(declare-fun d!400225 () Bool)

(assert (= bs!338139 (and d!400225 b!1399992)))

(declare-fun lambda!61272 () Int)

(assert (=> bs!338139 (not (= lambda!61272 lambda!61261))))

(declare-fun bs!338140 () Bool)

(assert (= bs!338140 (and d!400225 d!400221)))

(assert (=> bs!338140 (not (= lambda!61272 lambda!61268))))

(assert (=> bs!338140 (not (= lambda!61272 lambda!61269))))

(assert (=> d!400225 true))

(declare-fun order!8703 () Int)

(declare-fun dynLambda!6574 (Int Int) Int)

(assert (=> d!400225 (< (dynLambda!6574 order!8703 lambda!61261) (dynLambda!6574 order!8703 lambda!61272))))

(assert (=> d!400225 (= (exists!574 lt!466717 lambda!61261) (not (forall!3453 lt!466717 lambda!61272)))))

(declare-fun bs!338141 () Bool)

(assert (= bs!338141 d!400225))

(declare-fun m!1577113 () Bool)

(assert (=> bs!338141 m!1577113))

(assert (=> b!1399992 d!400225))

(declare-fun bs!338142 () Bool)

(declare-fun d!400227 () Bool)

(assert (= bs!338142 (and d!400227 b!1399992)))

(declare-fun lambda!61273 () Int)

(assert (=> bs!338142 (not (= lambda!61273 lambda!61261))))

(declare-fun bs!338143 () Bool)

(assert (= bs!338143 (and d!400227 d!400221)))

(assert (=> bs!338143 (not (= lambda!61273 lambda!61268))))

(assert (=> bs!338143 (not (= lambda!61273 lambda!61269))))

(declare-fun bs!338144 () Bool)

(assert (= bs!338144 (and d!400227 d!400225)))

(assert (=> bs!338144 (= lambda!61273 lambda!61272)))

(assert (=> d!400227 true))

(assert (=> d!400227 (< (dynLambda!6574 order!8703 lambda!61261) (dynLambda!6574 order!8703 lambda!61273))))

(assert (=> d!400227 (= (exists!574 (map!3158 rules!2550 lambda!61260) lambda!61261) (not (forall!3453 (map!3158 rules!2550 lambda!61260) lambda!61273)))))

(declare-fun bs!338145 () Bool)

(assert (= bs!338145 d!400227))

(assert (=> bs!338145 m!1576769))

(declare-fun m!1577115 () Bool)

(assert (=> bs!338145 m!1577115))

(assert (=> b!1399992 d!400227))

(declare-fun b!1400217 () Bool)

(declare-fun e!894032 () Bool)

(assert (=> b!1400217 (= e!894032 (not (= (head!2587 lt!466697) (c!230325 (regex!2465 (rule!4228 t1!34))))))))

(declare-fun d!400229 () Bool)

(declare-fun e!894028 () Bool)

(assert (=> d!400229 e!894028))

(declare-fun c!230363 () Bool)

(assert (=> d!400229 (= c!230363 ((_ is EmptyExpr!3779) (regex!2465 (rule!4228 t1!34))))))

(declare-fun lt!466771 () Bool)

(declare-fun e!894034 () Bool)

(assert (=> d!400229 (= lt!466771 e!894034)))

(declare-fun c!230364 () Bool)

(assert (=> d!400229 (= c!230364 (isEmpty!8649 lt!466697))))

(assert (=> d!400229 (validRegex!1653 (regex!2465 (rule!4228 t1!34)))))

(assert (=> d!400229 (= (matchR!1770 (regex!2465 (rule!4228 t1!34)) lt!466697) lt!466771)))

(declare-fun b!1400218 () Bool)

(declare-fun e!894031 () Bool)

(assert (=> b!1400218 (= e!894031 (not lt!466771))))

(declare-fun b!1400219 () Bool)

(declare-fun e!894029 () Bool)

(assert (=> b!1400219 (= e!894029 e!894032)))

(declare-fun res!633152 () Bool)

(assert (=> b!1400219 (=> res!633152 e!894032)))

(declare-fun call!93460 () Bool)

(assert (=> b!1400219 (= res!633152 call!93460)))

(declare-fun b!1400220 () Bool)

(declare-fun e!894030 () Bool)

(assert (=> b!1400220 (= e!894030 e!894029)))

(declare-fun res!633151 () Bool)

(assert (=> b!1400220 (=> (not res!633151) (not e!894029))))

(assert (=> b!1400220 (= res!633151 (not lt!466771))))

(declare-fun bm!93455 () Bool)

(assert (=> bm!93455 (= call!93460 (isEmpty!8649 lt!466697))))

(declare-fun b!1400221 () Bool)

(assert (=> b!1400221 (= e!894034 (matchR!1770 (derivativeStep!987 (regex!2465 (rule!4228 t1!34)) (head!2587 lt!466697)) (tail!2034 lt!466697)))))

(declare-fun b!1400222 () Bool)

(declare-fun res!633157 () Bool)

(declare-fun e!894033 () Bool)

(assert (=> b!1400222 (=> (not res!633157) (not e!894033))))

(assert (=> b!1400222 (= res!633157 (not call!93460))))

(declare-fun b!1400223 () Bool)

(assert (=> b!1400223 (= e!894028 e!894031)))

(declare-fun c!230365 () Bool)

(assert (=> b!1400223 (= c!230365 ((_ is EmptyLang!3779) (regex!2465 (rule!4228 t1!34))))))

(declare-fun b!1400224 () Bool)

(assert (=> b!1400224 (= e!894028 (= lt!466771 call!93460))))

(declare-fun b!1400225 () Bool)

(assert (=> b!1400225 (= e!894033 (= (head!2587 lt!466697) (c!230325 (regex!2465 (rule!4228 t1!34)))))))

(declare-fun b!1400226 () Bool)

(declare-fun res!633156 () Bool)

(assert (=> b!1400226 (=> res!633156 e!894032)))

(assert (=> b!1400226 (= res!633156 (not (isEmpty!8649 (tail!2034 lt!466697))))))

(declare-fun b!1400227 () Bool)

(declare-fun res!633158 () Bool)

(assert (=> b!1400227 (=> res!633158 e!894030)))

(assert (=> b!1400227 (= res!633158 (not ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t1!34)))))))

(assert (=> b!1400227 (= e!894031 e!894030)))

(declare-fun b!1400228 () Bool)

(assert (=> b!1400228 (= e!894034 (nullable!1229 (regex!2465 (rule!4228 t1!34))))))

(declare-fun b!1400229 () Bool)

(declare-fun res!633154 () Bool)

(assert (=> b!1400229 (=> res!633154 e!894030)))

(assert (=> b!1400229 (= res!633154 e!894033)))

(declare-fun res!633153 () Bool)

(assert (=> b!1400229 (=> (not res!633153) (not e!894033))))

(assert (=> b!1400229 (= res!633153 lt!466771)))

(declare-fun b!1400230 () Bool)

(declare-fun res!633155 () Bool)

(assert (=> b!1400230 (=> (not res!633155) (not e!894033))))

(assert (=> b!1400230 (= res!633155 (isEmpty!8649 (tail!2034 lt!466697)))))

(assert (= (and d!400229 c!230364) b!1400228))

(assert (= (and d!400229 (not c!230364)) b!1400221))

(assert (= (and d!400229 c!230363) b!1400224))

(assert (= (and d!400229 (not c!230363)) b!1400223))

(assert (= (and b!1400223 c!230365) b!1400218))

(assert (= (and b!1400223 (not c!230365)) b!1400227))

(assert (= (and b!1400227 (not res!633158)) b!1400229))

(assert (= (and b!1400229 res!633153) b!1400222))

(assert (= (and b!1400222 res!633157) b!1400230))

(assert (= (and b!1400230 res!633155) b!1400225))

(assert (= (and b!1400229 (not res!633154)) b!1400220))

(assert (= (and b!1400220 res!633151) b!1400219))

(assert (= (and b!1400219 (not res!633152)) b!1400226))

(assert (= (and b!1400226 (not res!633156)) b!1400217))

(assert (= (or b!1400224 b!1400219 b!1400222) bm!93455))

(declare-fun m!1577117 () Bool)

(assert (=> b!1400228 m!1577117))

(assert (=> b!1400225 m!1576845))

(declare-fun m!1577119 () Bool)

(assert (=> b!1400226 m!1577119))

(assert (=> b!1400226 m!1577119))

(declare-fun m!1577121 () Bool)

(assert (=> b!1400226 m!1577121))

(declare-fun m!1577123 () Bool)

(assert (=> bm!93455 m!1577123))

(assert (=> b!1400230 m!1577119))

(assert (=> b!1400230 m!1577119))

(assert (=> b!1400230 m!1577121))

(assert (=> b!1400217 m!1576845))

(assert (=> b!1400221 m!1576845))

(assert (=> b!1400221 m!1576845))

(declare-fun m!1577125 () Bool)

(assert (=> b!1400221 m!1577125))

(assert (=> b!1400221 m!1577119))

(assert (=> b!1400221 m!1577125))

(assert (=> b!1400221 m!1577119))

(declare-fun m!1577127 () Bool)

(assert (=> b!1400221 m!1577127))

(assert (=> d!400229 m!1577123))

(declare-fun m!1577129 () Bool)

(assert (=> d!400229 m!1577129))

(assert (=> b!1399991 d!400229))

(declare-fun d!400231 () Bool)

(declare-fun dynLambda!6576 (Int Rule!4730) Bool)

(assert (=> d!400231 (dynLambda!6576 lambda!61263 (rule!4228 t2!34))))

(declare-fun lt!466774 () Unit!20551)

(declare-fun choose!8626 (List!14296 Int Rule!4730) Unit!20551)

(assert (=> d!400231 (= lt!466774 (choose!8626 rules!2550 lambda!61263 (rule!4228 t2!34)))))

(declare-fun e!894037 () Bool)

(assert (=> d!400231 e!894037))

(declare-fun res!633161 () Bool)

(assert (=> d!400231 (=> (not res!633161) (not e!894037))))

(declare-fun forall!3454 (List!14296 Int) Bool)

(assert (=> d!400231 (= res!633161 (forall!3454 rules!2550 lambda!61263))))

(assert (=> d!400231 (= (forallContained!660 rules!2550 lambda!61263 (rule!4228 t2!34)) lt!466774)))

(declare-fun b!1400233 () Bool)

(assert (=> b!1400233 (= e!894037 (contains!2778 rules!2550 (rule!4228 t2!34)))))

(assert (= (and d!400231 res!633161) b!1400233))

(declare-fun b_lambda!43927 () Bool)

(assert (=> (not b_lambda!43927) (not d!400231)))

(declare-fun m!1577131 () Bool)

(assert (=> d!400231 m!1577131))

(declare-fun m!1577133 () Bool)

(assert (=> d!400231 m!1577133))

(declare-fun m!1577135 () Bool)

(assert (=> d!400231 m!1577135))

(assert (=> b!1400233 m!1576777))

(assert (=> b!1399991 d!400231))

(declare-fun d!400233 () Bool)

(assert (=> d!400233 (dynLambda!6576 lambda!61263 (rule!4228 t1!34))))

(declare-fun lt!466775 () Unit!20551)

(assert (=> d!400233 (= lt!466775 (choose!8626 rules!2550 lambda!61263 (rule!4228 t1!34)))))

(declare-fun e!894038 () Bool)

(assert (=> d!400233 e!894038))

(declare-fun res!633162 () Bool)

(assert (=> d!400233 (=> (not res!633162) (not e!894038))))

(assert (=> d!400233 (= res!633162 (forall!3454 rules!2550 lambda!61263))))

(assert (=> d!400233 (= (forallContained!660 rules!2550 lambda!61263 (rule!4228 t1!34)) lt!466775)))

(declare-fun b!1400234 () Bool)

(assert (=> b!1400234 (= e!894038 (contains!2778 rules!2550 (rule!4228 t1!34)))))

(assert (= (and d!400233 res!633162) b!1400234))

(declare-fun b_lambda!43929 () Bool)

(assert (=> (not b_lambda!43929) (not d!400233)))

(declare-fun m!1577137 () Bool)

(assert (=> d!400233 m!1577137))

(declare-fun m!1577139 () Bool)

(assert (=> d!400233 m!1577139))

(assert (=> d!400233 m!1577135))

(assert (=> b!1400234 m!1576849))

(assert (=> b!1399991 d!400233))

(declare-fun d!400235 () Bool)

(assert (=> d!400235 (dynLambda!6576 lambda!61263 lt!466694)))

(declare-fun lt!466776 () Unit!20551)

(assert (=> d!400235 (= lt!466776 (choose!8626 rules!2550 lambda!61263 lt!466694))))

(declare-fun e!894039 () Bool)

(assert (=> d!400235 e!894039))

(declare-fun res!633163 () Bool)

(assert (=> d!400235 (=> (not res!633163) (not e!894039))))

(assert (=> d!400235 (= res!633163 (forall!3454 rules!2550 lambda!61263))))

(assert (=> d!400235 (= (forallContained!660 rules!2550 lambda!61263 lt!466694) lt!466776)))

(declare-fun b!1400235 () Bool)

(assert (=> b!1400235 (= e!894039 (contains!2778 rules!2550 lt!466694))))

(assert (= (and d!400235 res!633163) b!1400235))

(declare-fun b_lambda!43931 () Bool)

(assert (=> (not b_lambda!43931) (not d!400235)))

(declare-fun m!1577141 () Bool)

(assert (=> d!400235 m!1577141))

(declare-fun m!1577143 () Bool)

(assert (=> d!400235 m!1577143))

(assert (=> d!400235 m!1577135))

(assert (=> b!1400235 m!1576825))

(assert (=> b!1399991 d!400235))

(declare-fun d!400237 () Bool)

(declare-fun lt!466778 () Bool)

(declare-fun e!894041 () Bool)

(assert (=> d!400237 (= lt!466778 e!894041)))

(declare-fun res!633166 () Bool)

(assert (=> d!400237 (=> (not res!633166) (not e!894041))))

(assert (=> d!400237 (= res!633166 (= (list!5546 (_1!7813 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t2!34))))) (list!5546 (singletonSeq!1124 t2!34))))))

(declare-fun e!894040 () Bool)

(assert (=> d!400237 (= lt!466778 e!894040)))

(declare-fun res!633165 () Bool)

(assert (=> d!400237 (=> (not res!633165) (not e!894040))))

(declare-fun lt!466777 () tuple2!13854)

(assert (=> d!400237 (= res!633165 (= (size!11705 (_1!7813 lt!466777)) 1))))

(assert (=> d!400237 (= lt!466777 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t2!34))))))

(assert (=> d!400237 (not (isEmpty!8644 rules!2550))))

(assert (=> d!400237 (= (rulesProduceIndividualToken!1129 thiss!19762 rules!2550 t2!34) lt!466778)))

(declare-fun b!1400236 () Bool)

(declare-fun res!633164 () Bool)

(assert (=> b!1400236 (=> (not res!633164) (not e!894040))))

(assert (=> b!1400236 (= res!633164 (= (apply!3619 (_1!7813 lt!466777) 0) t2!34))))

(declare-fun b!1400237 () Bool)

(assert (=> b!1400237 (= e!894040 (isEmpty!8645 (_2!7813 lt!466777)))))

(declare-fun b!1400238 () Bool)

(assert (=> b!1400238 (= e!894041 (isEmpty!8645 (_2!7813 (lex!985 thiss!19762 rules!2550 (print!924 thiss!19762 (singletonSeq!1124 t2!34))))))))

(assert (= (and d!400237 res!633165) b!1400236))

(assert (= (and b!1400236 res!633164) b!1400237))

(assert (= (and d!400237 res!633166) b!1400238))

(assert (=> d!400237 m!1576873))

(declare-fun m!1577145 () Bool)

(assert (=> d!400237 m!1577145))

(assert (=> d!400237 m!1576873))

(declare-fun m!1577147 () Bool)

(assert (=> d!400237 m!1577147))

(assert (=> d!400237 m!1576873))

(assert (=> d!400237 m!1576875))

(declare-fun m!1577149 () Bool)

(assert (=> d!400237 m!1577149))

(assert (=> d!400237 m!1576855))

(assert (=> d!400237 m!1576875))

(declare-fun m!1577151 () Bool)

(assert (=> d!400237 m!1577151))

(declare-fun m!1577153 () Bool)

(assert (=> b!1400236 m!1577153))

(declare-fun m!1577155 () Bool)

(assert (=> b!1400237 m!1577155))

(assert (=> b!1400238 m!1576873))

(assert (=> b!1400238 m!1576873))

(assert (=> b!1400238 m!1576875))

(assert (=> b!1400238 m!1576875))

(assert (=> b!1400238 m!1577151))

(declare-fun m!1577157 () Bool)

(assert (=> b!1400238 m!1577157))

(assert (=> b!1400017 d!400237))

(declare-fun b!1400335 () Bool)

(declare-fun e!894102 () Bool)

(declare-fun e!894103 () Bool)

(assert (=> b!1400335 (= e!894102 e!894103)))

(declare-fun res!633224 () Bool)

(assert (=> b!1400335 (=> (not res!633224) (not e!894103))))

(declare-fun lt!466814 () Option!2728)

(declare-fun isDefined!2242 (Option!2728) Bool)

(assert (=> b!1400335 (= res!633224 (isDefined!2242 lt!466814))))

(declare-fun b!1400336 () Bool)

(declare-fun e!894101 () Option!2728)

(declare-fun lt!466816 () Option!2728)

(declare-fun lt!466813 () Option!2728)

(assert (=> b!1400336 (= e!894101 (ite (and ((_ is None!2727) lt!466816) ((_ is None!2727) lt!466813)) None!2727 (ite ((_ is None!2727) lt!466813) lt!466816 (ite ((_ is None!2727) lt!466816) lt!466813 (ite (>= (size!11701 (_1!7812 (v!21655 lt!466816))) (size!11701 (_1!7812 (v!21655 lt!466813)))) lt!466816 lt!466813)))))))

(declare-fun call!93464 () Option!2728)

(assert (=> b!1400336 (= lt!466816 call!93464)))

(assert (=> b!1400336 (= lt!466813 (maxPrefix!1134 thiss!19762 (t!122821 rules!2550) lt!466723))))

(declare-fun b!1400337 () Bool)

(declare-fun res!633226 () Bool)

(assert (=> b!1400337 (=> (not res!633226) (not e!894103))))

(declare-fun get!4400 (Option!2728) tuple2!13852)

(assert (=> b!1400337 (= res!633226 (matchR!1770 (regex!2465 (rule!4228 (_1!7812 (get!4400 lt!466814)))) (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466814))))))))

(declare-fun d!400239 () Bool)

(assert (=> d!400239 e!894102))

(declare-fun res!633223 () Bool)

(assert (=> d!400239 (=> res!633223 e!894102)))

(declare-fun isEmpty!8651 (Option!2728) Bool)

(assert (=> d!400239 (= res!633223 (isEmpty!8651 lt!466814))))

(assert (=> d!400239 (= lt!466814 e!894101)))

(declare-fun c!230386 () Bool)

(assert (=> d!400239 (= c!230386 (and ((_ is Cons!14230) rules!2550) ((_ is Nil!14230) (t!122821 rules!2550))))))

(declare-fun lt!466812 () Unit!20551)

(declare-fun lt!466815 () Unit!20551)

(assert (=> d!400239 (= lt!466812 lt!466815)))

(declare-fun isPrefix!1155 (List!14295 List!14295) Bool)

(assert (=> d!400239 (isPrefix!1155 lt!466723 lt!466723)))

(declare-fun lemmaIsPrefixRefl!814 (List!14295 List!14295) Unit!20551)

(assert (=> d!400239 (= lt!466815 (lemmaIsPrefixRefl!814 lt!466723 lt!466723))))

(declare-fun rulesValidInductive!797 (LexerInterface!2160 List!14296) Bool)

(assert (=> d!400239 (rulesValidInductive!797 thiss!19762 rules!2550)))

(assert (=> d!400239 (= (maxPrefix!1134 thiss!19762 rules!2550 lt!466723) lt!466814)))

(declare-fun b!1400338 () Bool)

(assert (=> b!1400338 (= e!894101 call!93464)))

(declare-fun b!1400339 () Bool)

(assert (=> b!1400339 (= e!894103 (contains!2778 rules!2550 (rule!4228 (_1!7812 (get!4400 lt!466814)))))))

(declare-fun bm!93459 () Bool)

(declare-fun maxPrefixOneRule!640 (LexerInterface!2160 Rule!4730 List!14295) Option!2728)

(assert (=> bm!93459 (= call!93464 (maxPrefixOneRule!640 thiss!19762 (h!19631 rules!2550) lt!466723))))

(declare-fun b!1400340 () Bool)

(declare-fun res!633228 () Bool)

(assert (=> b!1400340 (=> (not res!633228) (not e!894103))))

(assert (=> b!1400340 (= res!633228 (= (++!3700 (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466814)))) (_2!7812 (get!4400 lt!466814))) lt!466723))))

(declare-fun b!1400341 () Bool)

(declare-fun res!633229 () Bool)

(assert (=> b!1400341 (=> (not res!633229) (not e!894103))))

(declare-fun apply!3620 (TokenValueInjection!4770 BalanceConc!9320) TokenValue!2555)

(declare-fun seqFromList!1658 (List!14295) BalanceConc!9320)

(assert (=> b!1400341 (= res!633229 (= (value!79885 (_1!7812 (get!4400 lt!466814))) (apply!3620 (transformation!2465 (rule!4228 (_1!7812 (get!4400 lt!466814)))) (seqFromList!1658 (originalCharacters!3327 (_1!7812 (get!4400 lt!466814)))))))))

(declare-fun b!1400342 () Bool)

(declare-fun res!633227 () Bool)

(assert (=> b!1400342 (=> (not res!633227) (not e!894103))))

(assert (=> b!1400342 (= res!633227 (= (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466814)))) (originalCharacters!3327 (_1!7812 (get!4400 lt!466814)))))))

(declare-fun b!1400343 () Bool)

(declare-fun res!633225 () Bool)

(assert (=> b!1400343 (=> (not res!633225) (not e!894103))))

(declare-fun size!11710 (List!14295) Int)

(assert (=> b!1400343 (= res!633225 (< (size!11710 (_2!7812 (get!4400 lt!466814))) (size!11710 lt!466723)))))

(assert (= (and d!400239 c!230386) b!1400338))

(assert (= (and d!400239 (not c!230386)) b!1400336))

(assert (= (or b!1400338 b!1400336) bm!93459))

(assert (= (and d!400239 (not res!633223)) b!1400335))

(assert (= (and b!1400335 res!633224) b!1400342))

(assert (= (and b!1400342 res!633227) b!1400343))

(assert (= (and b!1400343 res!633225) b!1400340))

(assert (= (and b!1400340 res!633228) b!1400341))

(assert (= (and b!1400341 res!633229) b!1400337))

(assert (= (and b!1400337 res!633226) b!1400339))

(declare-fun m!1577253 () Bool)

(assert (=> b!1400336 m!1577253))

(declare-fun m!1577255 () Bool)

(assert (=> b!1400341 m!1577255))

(declare-fun m!1577257 () Bool)

(assert (=> b!1400341 m!1577257))

(assert (=> b!1400341 m!1577257))

(declare-fun m!1577259 () Bool)

(assert (=> b!1400341 m!1577259))

(assert (=> b!1400342 m!1577255))

(declare-fun m!1577261 () Bool)

(assert (=> b!1400342 m!1577261))

(assert (=> b!1400342 m!1577261))

(declare-fun m!1577263 () Bool)

(assert (=> b!1400342 m!1577263))

(assert (=> b!1400337 m!1577255))

(assert (=> b!1400337 m!1577261))

(assert (=> b!1400337 m!1577261))

(assert (=> b!1400337 m!1577263))

(assert (=> b!1400337 m!1577263))

(declare-fun m!1577265 () Bool)

(assert (=> b!1400337 m!1577265))

(assert (=> b!1400343 m!1577255))

(declare-fun m!1577267 () Bool)

(assert (=> b!1400343 m!1577267))

(declare-fun m!1577269 () Bool)

(assert (=> b!1400343 m!1577269))

(declare-fun m!1577271 () Bool)

(assert (=> b!1400335 m!1577271))

(declare-fun m!1577273 () Bool)

(assert (=> bm!93459 m!1577273))

(assert (=> b!1400340 m!1577255))

(assert (=> b!1400340 m!1577261))

(assert (=> b!1400340 m!1577261))

(assert (=> b!1400340 m!1577263))

(assert (=> b!1400340 m!1577263))

(declare-fun m!1577275 () Bool)

(assert (=> b!1400340 m!1577275))

(declare-fun m!1577277 () Bool)

(assert (=> d!400239 m!1577277))

(declare-fun m!1577279 () Bool)

(assert (=> d!400239 m!1577279))

(declare-fun m!1577281 () Bool)

(assert (=> d!400239 m!1577281))

(declare-fun m!1577283 () Bool)

(assert (=> d!400239 m!1577283))

(assert (=> b!1400339 m!1577255))

(declare-fun m!1577285 () Bool)

(assert (=> b!1400339 m!1577285))

(assert (=> b!1399996 d!400239))

(declare-fun d!400267 () Bool)

(declare-fun list!5548 (Conc!4690) List!14295)

(assert (=> d!400267 (= (list!5545 lt!466716) (list!5548 (c!230324 lt!466716)))))

(declare-fun bs!338149 () Bool)

(assert (= bs!338149 d!400267))

(declare-fun m!1577287 () Bool)

(assert (=> bs!338149 m!1577287))

(assert (=> b!1399996 d!400267))

(declare-fun d!400269 () Bool)

(declare-fun lt!466819 () Bool)

(assert (=> d!400269 (= lt!466819 (select (content!2108 (usedCharacters!276 (regex!2465 (rule!4228 t2!34)))) lt!466718))))

(declare-fun e!894106 () Bool)

(assert (=> d!400269 (= lt!466819 e!894106)))

(declare-fun res!633233 () Bool)

(assert (=> d!400269 (=> (not res!633233) (not e!894106))))

(assert (=> d!400269 (= res!633233 ((_ is Cons!14229) (usedCharacters!276 (regex!2465 (rule!4228 t2!34)))))))

(assert (=> d!400269 (= (contains!2777 (usedCharacters!276 (regex!2465 (rule!4228 t2!34))) lt!466718) lt!466819)))

(declare-fun b!1400349 () Bool)

(declare-fun e!894107 () Bool)

(assert (=> b!1400349 (= e!894106 e!894107)))

(declare-fun res!633234 () Bool)

(assert (=> b!1400349 (=> res!633234 e!894107)))

(assert (=> b!1400349 (= res!633234 (= (h!19630 (usedCharacters!276 (regex!2465 (rule!4228 t2!34)))) lt!466718))))

(declare-fun b!1400350 () Bool)

(assert (=> b!1400350 (= e!894107 (contains!2777 (t!122820 (usedCharacters!276 (regex!2465 (rule!4228 t2!34)))) lt!466718))))

(assert (= (and d!400269 res!633233) b!1400349))

(assert (= (and b!1400349 (not res!633234)) b!1400350))

(assert (=> d!400269 m!1576851))

(declare-fun m!1577291 () Bool)

(assert (=> d!400269 m!1577291))

(declare-fun m!1577293 () Bool)

(assert (=> d!400269 m!1577293))

(declare-fun m!1577295 () Bool)

(assert (=> b!1400350 m!1577295))

(assert (=> b!1399995 d!400269))

(declare-fun b!1400371 () Bool)

(declare-fun e!894117 () List!14295)

(declare-fun call!93474 () List!14295)

(assert (=> b!1400371 (= e!894117 call!93474)))

(declare-fun bm!93468 () Bool)

(declare-fun call!93475 () List!14295)

(assert (=> bm!93468 (= call!93475 call!93474)))

(declare-fun b!1400372 () Bool)

(declare-fun e!894119 () List!14295)

(assert (=> b!1400372 (= e!894119 (Cons!14229 (c!230325 (regex!2465 (rule!4228 t2!34))) Nil!14229))))

(declare-fun b!1400373 () Bool)

(declare-fun c!230397 () Bool)

(assert (=> b!1400373 (= c!230397 ((_ is Star!3779) (regex!2465 (rule!4228 t2!34))))))

(assert (=> b!1400373 (= e!894119 e!894117)))

(declare-fun b!1400375 () Bool)

(declare-fun e!894118 () List!14295)

(declare-fun call!93473 () List!14295)

(assert (=> b!1400375 (= e!894118 call!93473)))

(declare-fun b!1400376 () Bool)

(assert (=> b!1400376 (= e!894118 call!93473)))

(declare-fun call!93476 () List!14295)

(declare-fun c!230398 () Bool)

(declare-fun bm!93469 () Bool)

(assert (=> bm!93469 (= call!93473 (++!3700 (ite c!230398 call!93475 call!93476) (ite c!230398 call!93476 call!93475)))))

(declare-fun b!1400377 () Bool)

(declare-fun e!894116 () List!14295)

(assert (=> b!1400377 (= e!894116 Nil!14229)))

(declare-fun b!1400378 () Bool)

(assert (=> b!1400378 (= e!894117 e!894118)))

(assert (=> b!1400378 (= c!230398 ((_ is Union!3779) (regex!2465 (rule!4228 t2!34))))))

(declare-fun b!1400374 () Bool)

(assert (=> b!1400374 (= e!894116 e!894119)))

(declare-fun c!230395 () Bool)

(assert (=> b!1400374 (= c!230395 ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t2!34))))))

(declare-fun d!400273 () Bool)

(declare-fun c!230396 () Bool)

(assert (=> d!400273 (= c!230396 (or ((_ is EmptyExpr!3779) (regex!2465 (rule!4228 t2!34))) ((_ is EmptyLang!3779) (regex!2465 (rule!4228 t2!34)))))))

(assert (=> d!400273 (= (usedCharacters!276 (regex!2465 (rule!4228 t2!34))) e!894116)))

(declare-fun bm!93470 () Bool)

(assert (=> bm!93470 (= call!93474 (usedCharacters!276 (ite c!230397 (reg!4108 (regex!2465 (rule!4228 t2!34))) (ite c!230398 (regOne!8071 (regex!2465 (rule!4228 t2!34))) (regTwo!8070 (regex!2465 (rule!4228 t2!34)))))))))

(declare-fun bm!93471 () Bool)

(assert (=> bm!93471 (= call!93476 (usedCharacters!276 (ite c!230398 (regTwo!8071 (regex!2465 (rule!4228 t2!34))) (regOne!8070 (regex!2465 (rule!4228 t2!34))))))))

(assert (= (and d!400273 c!230396) b!1400377))

(assert (= (and d!400273 (not c!230396)) b!1400374))

(assert (= (and b!1400374 c!230395) b!1400372))

(assert (= (and b!1400374 (not c!230395)) b!1400373))

(assert (= (and b!1400373 c!230397) b!1400371))

(assert (= (and b!1400373 (not c!230397)) b!1400378))

(assert (= (and b!1400378 c!230398) b!1400375))

(assert (= (and b!1400378 (not c!230398)) b!1400376))

(assert (= (or b!1400375 b!1400376) bm!93468))

(assert (= (or b!1400375 b!1400376) bm!93471))

(assert (= (or b!1400375 b!1400376) bm!93469))

(assert (= (or b!1400371 bm!93468) bm!93470))

(declare-fun m!1577301 () Bool)

(assert (=> bm!93469 m!1577301))

(declare-fun m!1577303 () Bool)

(assert (=> bm!93470 m!1577303))

(declare-fun m!1577305 () Bool)

(assert (=> bm!93471 m!1577305))

(assert (=> b!1399995 d!400273))

(declare-fun d!400277 () Bool)

(assert (=> d!400277 (= (inv!18543 (tag!2727 (rule!4228 t1!34))) (= (mod (str.len (value!79884 (tag!2727 (rule!4228 t1!34)))) 2) 0))))

(assert (=> b!1400016 d!400277))

(declare-fun d!400279 () Bool)

(declare-fun res!633243 () Bool)

(declare-fun e!894128 () Bool)

(assert (=> d!400279 (=> (not res!633243) (not e!894128))))

(declare-fun semiInverseModEq!958 (Int Int) Bool)

(assert (=> d!400279 (= res!633243 (semiInverseModEq!958 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toValue!3756 (transformation!2465 (rule!4228 t1!34)))))))

(assert (=> d!400279 (= (inv!18547 (transformation!2465 (rule!4228 t1!34))) e!894128)))

(declare-fun b!1400393 () Bool)

(declare-fun equivClasses!917 (Int Int) Bool)

(assert (=> b!1400393 (= e!894128 (equivClasses!917 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toValue!3756 (transformation!2465 (rule!4228 t1!34)))))))

(assert (= (and d!400279 res!633243) b!1400393))

(declare-fun m!1577321 () Bool)

(assert (=> d!400279 m!1577321))

(declare-fun m!1577323 () Bool)

(assert (=> b!1400393 m!1577323))

(assert (=> b!1400016 d!400279))

(declare-fun d!400283 () Bool)

(declare-fun lt!466830 () Int)

(assert (=> d!400283 (= lt!466830 (size!11710 (list!5545 lt!466716)))))

(declare-fun size!11711 (Conc!4690) Int)

(assert (=> d!400283 (= lt!466830 (size!11711 (c!230324 lt!466716)))))

(assert (=> d!400283 (= (size!11702 lt!466716) lt!466830)))

(declare-fun bs!338155 () Bool)

(assert (= bs!338155 d!400283))

(assert (=> bs!338155 m!1576885))

(assert (=> bs!338155 m!1576885))

(declare-fun m!1577325 () Bool)

(assert (=> bs!338155 m!1577325))

(declare-fun m!1577327 () Bool)

(assert (=> bs!338155 m!1577327))

(assert (=> b!1400015 d!400283))

(declare-fun d!400285 () Bool)

(declare-fun lt!466836 () BalanceConc!9320)

(assert (=> d!400285 (= (list!5545 lt!466836) (originalCharacters!3327 t2!34))))

(declare-fun dynLambda!6579 (Int TokenValue!2555) BalanceConc!9320)

(assert (=> d!400285 (= lt!466836 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (value!79885 t2!34)))))

(assert (=> d!400285 (= (charsOf!1437 t2!34) lt!466836)))

(declare-fun b_lambda!43939 () Bool)

(assert (=> (not b_lambda!43939) (not d!400285)))

(declare-fun tb!73061 () Bool)

(declare-fun t!122840 () Bool)

(assert (=> (and b!1399983 (= (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toChars!3615 (transformation!2465 (rule!4228 t2!34)))) t!122840) tb!73061))

(declare-fun b!1400404 () Bool)

(declare-fun e!894134 () Bool)

(declare-fun tp!398567 () Bool)

(declare-fun inv!18550 (Conc!4690) Bool)

(assert (=> b!1400404 (= e!894134 (and (inv!18550 (c!230324 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (value!79885 t2!34)))) tp!398567))))

(declare-fun result!88812 () Bool)

(declare-fun inv!18551 (BalanceConc!9320) Bool)

(assert (=> tb!73061 (= result!88812 (and (inv!18551 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (value!79885 t2!34))) e!894134))))

(assert (= tb!73061 b!1400404))

(declare-fun m!1577339 () Bool)

(assert (=> b!1400404 m!1577339))

(declare-fun m!1577341 () Bool)

(assert (=> tb!73061 m!1577341))

(assert (=> d!400285 t!122840))

(declare-fun b_and!93763 () Bool)

(assert (= b_and!93741 (and (=> t!122840 result!88812) b_and!93763)))

(declare-fun tb!73063 () Bool)

(declare-fun t!122842 () Bool)

(assert (=> (and b!1399989 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t2!34)))) t!122842) tb!73063))

(declare-fun result!88816 () Bool)

(assert (= result!88816 result!88812))

(assert (=> d!400285 t!122842))

(declare-fun b_and!93765 () Bool)

(assert (= b_and!93745 (and (=> t!122842 result!88816) b_and!93765)))

(declare-fun t!122844 () Bool)

(declare-fun tb!73065 () Bool)

(assert (=> (and b!1399980 (= (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toChars!3615 (transformation!2465 (rule!4228 t2!34)))) t!122844) tb!73065))

(declare-fun result!88818 () Bool)

(assert (= result!88818 result!88812))

(assert (=> d!400285 t!122844))

(declare-fun b_and!93767 () Bool)

(assert (= b_and!93749 (and (=> t!122844 result!88818) b_and!93767)))

(declare-fun m!1577343 () Bool)

(assert (=> d!400285 m!1577343))

(declare-fun m!1577345 () Bool)

(assert (=> d!400285 m!1577345))

(assert (=> b!1400015 d!400285))

(declare-fun d!400291 () Bool)

(assert (=> d!400291 (= (inv!18543 (tag!2727 (rule!4228 t2!34))) (= (mod (str.len (value!79884 (tag!2727 (rule!4228 t2!34)))) 2) 0))))

(assert (=> b!1399994 d!400291))

(declare-fun d!400293 () Bool)

(declare-fun res!633244 () Bool)

(declare-fun e!894135 () Bool)

(assert (=> d!400293 (=> (not res!633244) (not e!894135))))

(assert (=> d!400293 (= res!633244 (semiInverseModEq!958 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toValue!3756 (transformation!2465 (rule!4228 t2!34)))))))

(assert (=> d!400293 (= (inv!18547 (transformation!2465 (rule!4228 t2!34))) e!894135)))

(declare-fun b!1400405 () Bool)

(assert (=> b!1400405 (= e!894135 (equivClasses!917 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toValue!3756 (transformation!2465 (rule!4228 t2!34)))))))

(assert (= (and d!400293 res!633244) b!1400405))

(declare-fun m!1577347 () Bool)

(assert (=> d!400293 m!1577347))

(declare-fun m!1577349 () Bool)

(assert (=> b!1400405 m!1577349))

(assert (=> b!1399994 d!400293))

(declare-fun d!400295 () Bool)

(declare-fun lt!466845 () Bool)

(declare-fun content!2110 (List!14296) (InoxSet Rule!4730))

(assert (=> d!400295 (= lt!466845 (select (content!2110 rules!2550) (rule!4228 t1!34)))))

(declare-fun e!894144 () Bool)

(assert (=> d!400295 (= lt!466845 e!894144)))

(declare-fun res!633253 () Bool)

(assert (=> d!400295 (=> (not res!633253) (not e!894144))))

(assert (=> d!400295 (= res!633253 ((_ is Cons!14230) rules!2550))))

(assert (=> d!400295 (= (contains!2778 rules!2550 (rule!4228 t1!34)) lt!466845)))

(declare-fun b!1400414 () Bool)

(declare-fun e!894145 () Bool)

(assert (=> b!1400414 (= e!894144 e!894145)))

(declare-fun res!633254 () Bool)

(assert (=> b!1400414 (=> res!633254 e!894145)))

(assert (=> b!1400414 (= res!633254 (= (h!19631 rules!2550) (rule!4228 t1!34)))))

(declare-fun b!1400415 () Bool)

(assert (=> b!1400415 (= e!894145 (contains!2778 (t!122821 rules!2550) (rule!4228 t1!34)))))

(assert (= (and d!400295 res!633253) b!1400414))

(assert (= (and b!1400414 (not res!633254)) b!1400415))

(declare-fun m!1577369 () Bool)

(assert (=> d!400295 m!1577369))

(declare-fun m!1577371 () Bool)

(assert (=> d!400295 m!1577371))

(declare-fun m!1577373 () Bool)

(assert (=> b!1400415 m!1577373))

(assert (=> b!1399977 d!400295))

(declare-fun d!400311 () Bool)

(declare-fun lt!466847 () Bool)

(assert (=> d!400311 (= lt!466847 (select (content!2110 rules!2550) lt!466694))))

(declare-fun e!894149 () Bool)

(assert (=> d!400311 (= lt!466847 e!894149)))

(declare-fun res!633258 () Bool)

(assert (=> d!400311 (=> (not res!633258) (not e!894149))))

(assert (=> d!400311 (= res!633258 ((_ is Cons!14230) rules!2550))))

(assert (=> d!400311 (= (contains!2778 rules!2550 lt!466694) lt!466847)))

(declare-fun b!1400421 () Bool)

(declare-fun e!894150 () Bool)

(assert (=> b!1400421 (= e!894149 e!894150)))

(declare-fun res!633259 () Bool)

(assert (=> b!1400421 (=> res!633259 e!894150)))

(assert (=> b!1400421 (= res!633259 (= (h!19631 rules!2550) lt!466694))))

(declare-fun b!1400422 () Bool)

(assert (=> b!1400422 (= e!894150 (contains!2778 (t!122821 rules!2550) lt!466694))))

(assert (= (and d!400311 res!633258) b!1400421))

(assert (= (and b!1400421 (not res!633259)) b!1400422))

(assert (=> d!400311 m!1577369))

(declare-fun m!1577375 () Bool)

(assert (=> d!400311 m!1577375))

(declare-fun m!1577377 () Bool)

(assert (=> b!1400422 m!1577377))

(assert (=> b!1400020 d!400311))

(declare-fun b!1400529 () Bool)

(declare-fun res!633316 () Bool)

(declare-fun e!894206 () Bool)

(assert (=> b!1400529 (=> (not res!633316) (not e!894206))))

(declare-fun lt!466888 () tuple2!13854)

(assert (=> b!1400529 (= res!633316 (= (list!5546 (_1!7813 lt!466888)) (_1!7811 (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466701)))))))

(declare-fun b!1400530 () Bool)

(assert (=> b!1400530 (= e!894206 (= (list!5545 (_2!7813 lt!466888)) (_2!7811 (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466701)))))))

(declare-fun d!400313 () Bool)

(assert (=> d!400313 e!894206))

(declare-fun res!633317 () Bool)

(assert (=> d!400313 (=> (not res!633317) (not e!894206))))

(declare-fun e!894208 () Bool)

(assert (=> d!400313 (= res!633317 e!894208)))

(declare-fun c!230432 () Bool)

(assert (=> d!400313 (= c!230432 (> (size!11705 (_1!7813 lt!466888)) 0))))

(declare-fun lexTailRecV2!441 (LexerInterface!2160 List!14296 BalanceConc!9320 BalanceConc!9320 BalanceConc!9320 BalanceConc!9322) tuple2!13854)

(assert (=> d!400313 (= lt!466888 (lexTailRecV2!441 thiss!19762 rules!2550 lt!466701 (BalanceConc!9321 Empty!4690) lt!466701 (BalanceConc!9323 Empty!4691)))))

(assert (=> d!400313 (= (lex!985 thiss!19762 rules!2550 lt!466701) lt!466888)))

(declare-fun b!1400531 () Bool)

(declare-fun e!894207 () Bool)

(declare-fun isEmpty!8653 (BalanceConc!9322) Bool)

(assert (=> b!1400531 (= e!894207 (not (isEmpty!8653 (_1!7813 lt!466888))))))

(declare-fun b!1400532 () Bool)

(assert (=> b!1400532 (= e!894208 e!894207)))

(declare-fun res!633318 () Bool)

(assert (=> b!1400532 (= res!633318 (< (size!11702 (_2!7813 lt!466888)) (size!11702 lt!466701)))))

(assert (=> b!1400532 (=> (not res!633318) (not e!894207))))

(declare-fun b!1400533 () Bool)

(assert (=> b!1400533 (= e!894208 (= (_2!7813 lt!466888) lt!466701))))

(assert (= (and d!400313 c!230432) b!1400532))

(assert (= (and d!400313 (not c!230432)) b!1400533))

(assert (= (and b!1400532 res!633318) b!1400531))

(assert (= (and d!400313 res!633317) b!1400529))

(assert (= (and b!1400529 res!633316) b!1400530))

(declare-fun m!1577491 () Bool)

(assert (=> b!1400532 m!1577491))

(declare-fun m!1577495 () Bool)

(assert (=> b!1400532 m!1577495))

(declare-fun m!1577497 () Bool)

(assert (=> b!1400531 m!1577497))

(declare-fun m!1577499 () Bool)

(assert (=> d!400313 m!1577499))

(declare-fun m!1577503 () Bool)

(assert (=> d!400313 m!1577503))

(declare-fun m!1577507 () Bool)

(assert (=> b!1400530 m!1577507))

(assert (=> b!1400530 m!1576865))

(assert (=> b!1400530 m!1576865))

(assert (=> b!1400530 m!1576867))

(declare-fun m!1577513 () Bool)

(assert (=> b!1400529 m!1577513))

(assert (=> b!1400529 m!1576865))

(assert (=> b!1400529 m!1576865))

(assert (=> b!1400529 m!1576867))

(assert (=> b!1400019 d!400313))

(declare-fun d!400337 () Bool)

(declare-fun list!5550 (Conc!4691) List!14297)

(assert (=> d!400337 (= (list!5546 (_1!7813 lt!466695)) (list!5550 (c!230326 (_1!7813 lt!466695))))))

(declare-fun bs!338162 () Bool)

(assert (= bs!338162 d!400337))

(declare-fun m!1577535 () Bool)

(assert (=> bs!338162 m!1577535))

(assert (=> b!1400019 d!400337))

(declare-fun d!400341 () Bool)

(declare-fun e!894222 () Bool)

(assert (=> d!400341 e!894222))

(declare-fun res!633330 () Bool)

(assert (=> d!400341 (=> (not res!633330) (not e!894222))))

(declare-fun lt!466896 () BalanceConc!9322)

(assert (=> d!400341 (= res!633330 (= (list!5546 lt!466896) (Cons!14231 t1!34 Nil!14231)))))

(declare-fun singleton!492 (Token!4592) BalanceConc!9322)

(assert (=> d!400341 (= lt!466896 (singleton!492 t1!34))))

(assert (=> d!400341 (= (singletonSeq!1124 t1!34) lt!466896)))

(declare-fun b!1400549 () Bool)

(declare-fun isBalanced!1386 (Conc!4691) Bool)

(assert (=> b!1400549 (= e!894222 (isBalanced!1386 (c!230326 lt!466896)))))

(assert (= (and d!400341 res!633330) b!1400549))

(declare-fun m!1577559 () Bool)

(assert (=> d!400341 m!1577559))

(declare-fun m!1577561 () Bool)

(assert (=> d!400341 m!1577561))

(declare-fun m!1577563 () Bool)

(assert (=> b!1400549 m!1577563))

(assert (=> b!1400019 d!400341))

(declare-fun d!400351 () Bool)

(declare-fun lt!466903 () BalanceConc!9320)

(declare-fun printList!636 (LexerInterface!2160 List!14297) List!14295)

(assert (=> d!400351 (= (list!5545 lt!466903) (printList!636 thiss!19762 (list!5546 (singletonSeq!1124 t1!34))))))

(declare-fun printTailRec!618 (LexerInterface!2160 BalanceConc!9322 Int BalanceConc!9320) BalanceConc!9320)

(assert (=> d!400351 (= lt!466903 (printTailRec!618 thiss!19762 (singletonSeq!1124 t1!34) 0 (BalanceConc!9321 Empty!4690)))))

(assert (=> d!400351 (= (print!924 thiss!19762 (singletonSeq!1124 t1!34)) lt!466903)))

(declare-fun bs!338168 () Bool)

(assert (= bs!338168 d!400351))

(declare-fun m!1577577 () Bool)

(assert (=> bs!338168 m!1577577))

(assert (=> bs!338168 m!1576781))

(assert (=> bs!338168 m!1577053))

(assert (=> bs!338168 m!1577053))

(declare-fun m!1577579 () Bool)

(assert (=> bs!338168 m!1577579))

(assert (=> bs!338168 m!1576781))

(declare-fun m!1577581 () Bool)

(assert (=> bs!338168 m!1577581))

(assert (=> b!1400019 d!400351))

(declare-fun d!400363 () Bool)

(declare-fun e!894250 () Bool)

(assert (=> d!400363 e!894250))

(declare-fun res!633349 () Bool)

(assert (=> d!400363 (=> (not res!633349) (not e!894250))))

(declare-fun lt!466915 () Rule!4730)

(assert (=> d!400363 (= res!633349 (dynLambda!6576 lambda!61262 lt!466915))))

(declare-fun e!894248 () Rule!4730)

(assert (=> d!400363 (= lt!466915 e!894248)))

(declare-fun c!230447 () Bool)

(declare-fun e!894251 () Bool)

(assert (=> d!400363 (= c!230447 e!894251)))

(declare-fun res!633350 () Bool)

(assert (=> d!400363 (=> (not res!633350) (not e!894251))))

(assert (=> d!400363 (= res!633350 ((_ is Cons!14230) rules!2550))))

(assert (=> d!400363 (exists!575 rules!2550 lambda!61262)))

(assert (=> d!400363 (= (getWitness!463 rules!2550 lambda!61262) lt!466915)))

(declare-fun b!1400590 () Bool)

(assert (=> b!1400590 (= e!894248 (h!19631 rules!2550))))

(declare-fun b!1400591 () Bool)

(declare-fun lt!466914 () Unit!20551)

(declare-fun Unit!20559 () Unit!20551)

(assert (=> b!1400591 (= lt!466914 Unit!20559)))

(assert (=> b!1400591 false))

(declare-fun e!894249 () Rule!4730)

(declare-fun head!2590 (List!14296) Rule!4730)

(assert (=> b!1400591 (= e!894249 (head!2590 rules!2550))))

(declare-fun b!1400592 () Bool)

(assert (=> b!1400592 (= e!894248 e!894249)))

(declare-fun c!230448 () Bool)

(assert (=> b!1400592 (= c!230448 ((_ is Cons!14230) rules!2550))))

(declare-fun b!1400593 () Bool)

(assert (=> b!1400593 (= e!894250 (contains!2778 rules!2550 lt!466915))))

(declare-fun b!1400594 () Bool)

(assert (=> b!1400594 (= e!894251 (dynLambda!6576 lambda!61262 (h!19631 rules!2550)))))

(declare-fun b!1400595 () Bool)

(assert (=> b!1400595 (= e!894249 (getWitness!463 (t!122821 rules!2550) lambda!61262))))

(assert (= (and d!400363 res!633350) b!1400594))

(assert (= (and d!400363 c!230447) b!1400590))

(assert (= (and d!400363 (not c!230447)) b!1400592))

(assert (= (and b!1400592 c!230448) b!1400595))

(assert (= (and b!1400592 (not c!230448)) b!1400591))

(assert (= (and d!400363 res!633349) b!1400593))

(declare-fun b_lambda!43947 () Bool)

(assert (=> (not b_lambda!43947) (not d!400363)))

(declare-fun b_lambda!43949 () Bool)

(assert (=> (not b_lambda!43949) (not b!1400594)))

(declare-fun m!1577607 () Bool)

(assert (=> b!1400594 m!1577607))

(declare-fun m!1577609 () Bool)

(assert (=> d!400363 m!1577609))

(assert (=> d!400363 m!1576923))

(declare-fun m!1577611 () Bool)

(assert (=> b!1400591 m!1577611))

(declare-fun m!1577613 () Bool)

(assert (=> b!1400593 m!1577613))

(declare-fun m!1577615 () Bool)

(assert (=> b!1400595 m!1577615))

(assert (=> b!1400019 d!400363))

(declare-fun lt!466921 () List!14295)

(declare-fun b!1400611 () Bool)

(declare-fun e!894259 () Bool)

(assert (=> b!1400611 (= e!894259 (or (not (= (Cons!14229 lt!466718 Nil!14229) Nil!14229)) (= lt!466921 lt!466697)))))

(declare-fun b!1400609 () Bool)

(declare-fun e!894258 () List!14295)

(assert (=> b!1400609 (= e!894258 (Cons!14229 (h!19630 lt!466697) (++!3700 (t!122820 lt!466697) (Cons!14229 lt!466718 Nil!14229))))))

(declare-fun b!1400610 () Bool)

(declare-fun res!633357 () Bool)

(assert (=> b!1400610 (=> (not res!633357) (not e!894259))))

(assert (=> b!1400610 (= res!633357 (= (size!11710 lt!466921) (+ (size!11710 lt!466697) (size!11710 (Cons!14229 lt!466718 Nil!14229)))))))

(declare-fun b!1400608 () Bool)

(assert (=> b!1400608 (= e!894258 (Cons!14229 lt!466718 Nil!14229))))

(declare-fun d!400375 () Bool)

(assert (=> d!400375 e!894259))

(declare-fun res!633358 () Bool)

(assert (=> d!400375 (=> (not res!633358) (not e!894259))))

(assert (=> d!400375 (= res!633358 (= (content!2108 lt!466921) ((_ map or) (content!2108 lt!466697) (content!2108 (Cons!14229 lt!466718 Nil!14229)))))))

(assert (=> d!400375 (= lt!466921 e!894258)))

(declare-fun c!230451 () Bool)

(assert (=> d!400375 (= c!230451 ((_ is Nil!14229) lt!466697))))

(assert (=> d!400375 (= (++!3700 lt!466697 (Cons!14229 lt!466718 Nil!14229)) lt!466921)))

(assert (= (and d!400375 c!230451) b!1400608))

(assert (= (and d!400375 (not c!230451)) b!1400609))

(assert (= (and d!400375 res!633358) b!1400610))

(assert (= (and b!1400610 res!633357) b!1400611))

(declare-fun m!1577625 () Bool)

(assert (=> b!1400609 m!1577625))

(declare-fun m!1577627 () Bool)

(assert (=> b!1400610 m!1577627))

(declare-fun m!1577629 () Bool)

(assert (=> b!1400610 m!1577629))

(declare-fun m!1577631 () Bool)

(assert (=> b!1400610 m!1577631))

(declare-fun m!1577633 () Bool)

(assert (=> d!400375 m!1577633))

(declare-fun m!1577635 () Bool)

(assert (=> d!400375 m!1577635))

(declare-fun m!1577637 () Bool)

(assert (=> d!400375 m!1577637))

(assert (=> b!1399998 d!400375))

(declare-fun bs!338180 () Bool)

(declare-fun d!400381 () Bool)

(assert (= bs!338180 (and d!400381 b!1399992)))

(declare-fun lambda!61295 () Int)

(assert (=> bs!338180 (= lambda!61295 lambda!61260)))

(declare-fun lt!466925 () Unit!20551)

(declare-fun lemma!156 (List!14296 LexerInterface!2160 List!14296) Unit!20551)

(assert (=> d!400381 (= lt!466925 (lemma!156 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!164 (List!14298) Regex!3779)

(assert (=> d!400381 (= (rulesRegex!348 thiss!19762 rules!2550) (generalisedUnion!164 (map!3158 rules!2550 lambda!61295)))))

(declare-fun bs!338181 () Bool)

(assert (= bs!338181 d!400381))

(declare-fun m!1577645 () Bool)

(assert (=> bs!338181 m!1577645))

(declare-fun m!1577647 () Bool)

(assert (=> bs!338181 m!1577647))

(assert (=> bs!338181 m!1577647))

(declare-fun m!1577649 () Bool)

(assert (=> bs!338181 m!1577649))

(assert (=> b!1399998 d!400381))

(declare-fun d!400387 () Bool)

(declare-fun c!230456 () Bool)

(assert (=> d!400387 (= c!230456 (isEmpty!8649 lt!466698))))

(declare-fun e!894270 () Bool)

(assert (=> d!400387 (= (prefixMatch!288 lt!466696 lt!466698) e!894270)))

(declare-fun b!1400626 () Bool)

(declare-fun lostCause!362 (Regex!3779) Bool)

(assert (=> b!1400626 (= e!894270 (not (lostCause!362 lt!466696)))))

(declare-fun b!1400627 () Bool)

(assert (=> b!1400627 (= e!894270 (prefixMatch!288 (derivativeStep!987 lt!466696 (head!2587 lt!466698)) (tail!2034 lt!466698)))))

(assert (= (and d!400387 c!230456) b!1400626))

(assert (= (and d!400387 (not c!230456)) b!1400627))

(declare-fun m!1577657 () Bool)

(assert (=> d!400387 m!1577657))

(declare-fun m!1577661 () Bool)

(assert (=> b!1400626 m!1577661))

(declare-fun m!1577665 () Bool)

(assert (=> b!1400627 m!1577665))

(assert (=> b!1400627 m!1577665))

(declare-fun m!1577669 () Bool)

(assert (=> b!1400627 m!1577669))

(declare-fun m!1577671 () Bool)

(assert (=> b!1400627 m!1577671))

(assert (=> b!1400627 m!1577669))

(assert (=> b!1400627 m!1577671))

(declare-fun m!1577673 () Bool)

(assert (=> b!1400627 m!1577673))

(assert (=> b!1399998 d!400387))

(declare-fun d!400395 () Bool)

(declare-fun lt!466929 () BalanceConc!9320)

(assert (=> d!400395 (= (list!5545 lt!466929) (originalCharacters!3327 t1!34))))

(assert (=> d!400395 (= lt!466929 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (value!79885 t1!34)))))

(assert (=> d!400395 (= (charsOf!1437 t1!34) lt!466929)))

(declare-fun b_lambda!43951 () Bool)

(assert (=> (not b_lambda!43951) (not d!400395)))

(declare-fun t!122847 () Bool)

(declare-fun tb!73067 () Bool)

(assert (=> (and b!1399983 (= (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toChars!3615 (transformation!2465 (rule!4228 t1!34)))) t!122847) tb!73067))

(declare-fun b!1400628 () Bool)

(declare-fun e!894271 () Bool)

(declare-fun tp!398568 () Bool)

(assert (=> b!1400628 (= e!894271 (and (inv!18550 (c!230324 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (value!79885 t1!34)))) tp!398568))))

(declare-fun result!88820 () Bool)

(assert (=> tb!73067 (= result!88820 (and (inv!18551 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (value!79885 t1!34))) e!894271))))

(assert (= tb!73067 b!1400628))

(declare-fun m!1577675 () Bool)

(assert (=> b!1400628 m!1577675))

(declare-fun m!1577677 () Bool)

(assert (=> tb!73067 m!1577677))

(assert (=> d!400395 t!122847))

(declare-fun b_and!93769 () Bool)

(assert (= b_and!93763 (and (=> t!122847 result!88820) b_and!93769)))

(declare-fun tb!73069 () Bool)

(declare-fun t!122849 () Bool)

(assert (=> (and b!1399989 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t1!34)))) t!122849) tb!73069))

(declare-fun result!88822 () Bool)

(assert (= result!88822 result!88820))

(assert (=> d!400395 t!122849))

(declare-fun b_and!93771 () Bool)

(assert (= b_and!93765 (and (=> t!122849 result!88822) b_and!93771)))

(declare-fun t!122851 () Bool)

(declare-fun tb!73071 () Bool)

(assert (=> (and b!1399980 (= (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toChars!3615 (transformation!2465 (rule!4228 t1!34)))) t!122851) tb!73071))

(declare-fun result!88824 () Bool)

(assert (= result!88824 result!88820))

(assert (=> d!400395 t!122851))

(declare-fun b_and!93773 () Bool)

(assert (= b_and!93767 (and (=> t!122851 result!88824) b_and!93773)))

(declare-fun m!1577679 () Bool)

(assert (=> d!400395 m!1577679))

(declare-fun m!1577681 () Bool)

(assert (=> d!400395 m!1577681))

(assert (=> b!1399998 d!400395))

(declare-fun d!400397 () Bool)

(declare-fun lt!466939 () C!7848)

(declare-fun apply!3622 (List!14295 Int) C!7848)

(assert (=> d!400397 (= lt!466939 (apply!3622 (list!5545 lt!466716) 0))))

(declare-fun apply!3623 (Conc!4690 Int) C!7848)

(assert (=> d!400397 (= lt!466939 (apply!3623 (c!230324 lt!466716) 0))))

(declare-fun e!894276 () Bool)

(assert (=> d!400397 e!894276))

(declare-fun res!633369 () Bool)

(assert (=> d!400397 (=> (not res!633369) (not e!894276))))

(assert (=> d!400397 (= res!633369 (<= 0 0))))

(assert (=> d!400397 (= (apply!3617 lt!466716 0) lt!466939)))

(declare-fun b!1400635 () Bool)

(assert (=> b!1400635 (= e!894276 (< 0 (size!11702 lt!466716)))))

(assert (= (and d!400397 res!633369) b!1400635))

(assert (=> d!400397 m!1576885))

(assert (=> d!400397 m!1576885))

(declare-fun m!1577703 () Bool)

(assert (=> d!400397 m!1577703))

(declare-fun m!1577705 () Bool)

(assert (=> d!400397 m!1577705))

(assert (=> b!1400635 m!1576915))

(assert (=> b!1399998 d!400397))

(declare-fun d!400407 () Bool)

(assert (=> d!400407 (= (list!5545 lt!466722) (list!5548 (c!230324 lt!466722)))))

(declare-fun bs!338184 () Bool)

(assert (= bs!338184 d!400407))

(declare-fun m!1577707 () Bool)

(assert (=> bs!338184 m!1577707))

(assert (=> b!1399998 d!400407))

(declare-fun b!1400697 () Bool)

(declare-fun e!894313 () Bool)

(declare-fun lt!466952 () tuple2!13850)

(assert (=> b!1400697 (= e!894313 (= (_2!7811 lt!466952) (list!5545 lt!466724)))))

(declare-fun b!1400698 () Bool)

(declare-fun e!894315 () Bool)

(assert (=> b!1400698 (= e!894313 e!894315)))

(declare-fun res!633378 () Bool)

(assert (=> b!1400698 (= res!633378 (< (size!11710 (_2!7811 lt!466952)) (size!11710 (list!5545 lt!466724))))))

(assert (=> b!1400698 (=> (not res!633378) (not e!894315))))

(declare-fun b!1400700 () Bool)

(declare-fun e!894314 () tuple2!13850)

(assert (=> b!1400700 (= e!894314 (tuple2!13851 Nil!14231 (list!5545 lt!466724)))))

(declare-fun b!1400701 () Bool)

(declare-fun lt!466954 () Option!2728)

(declare-fun lt!466953 () tuple2!13850)

(assert (=> b!1400701 (= e!894314 (tuple2!13851 (Cons!14231 (_1!7812 (v!21655 lt!466954)) (_1!7811 lt!466953)) (_2!7811 lt!466953)))))

(assert (=> b!1400701 (= lt!466953 (lexList!674 thiss!19762 rules!2550 (_2!7812 (v!21655 lt!466954))))))

(declare-fun d!400409 () Bool)

(assert (=> d!400409 e!894313))

(declare-fun c!230465 () Bool)

(declare-fun size!11713 (List!14297) Int)

(assert (=> d!400409 (= c!230465 (> (size!11713 (_1!7811 lt!466952)) 0))))

(assert (=> d!400409 (= lt!466952 e!894314)))

(declare-fun c!230466 () Bool)

(assert (=> d!400409 (= c!230466 ((_ is Some!2727) lt!466954))))

(assert (=> d!400409 (= lt!466954 (maxPrefix!1134 thiss!19762 rules!2550 (list!5545 lt!466724)))))

(assert (=> d!400409 (= (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466724)) lt!466952)))

(declare-fun b!1400699 () Bool)

(declare-fun isEmpty!8655 (List!14297) Bool)

(assert (=> b!1400699 (= e!894315 (not (isEmpty!8655 (_1!7811 lt!466952))))))

(assert (= (and d!400409 c!230466) b!1400701))

(assert (= (and d!400409 (not c!230466)) b!1400700))

(assert (= (and d!400409 c!230465) b!1400698))

(assert (= (and d!400409 (not c!230465)) b!1400697))

(assert (= (and b!1400698 res!633378) b!1400699))

(declare-fun m!1577759 () Bool)

(assert (=> b!1400698 m!1577759))

(assert (=> b!1400698 m!1576803))

(declare-fun m!1577761 () Bool)

(assert (=> b!1400698 m!1577761))

(declare-fun m!1577763 () Bool)

(assert (=> b!1400701 m!1577763))

(declare-fun m!1577765 () Bool)

(assert (=> d!400409 m!1577765))

(assert (=> d!400409 m!1576803))

(declare-fun m!1577767 () Bool)

(assert (=> d!400409 m!1577767))

(declare-fun m!1577769 () Bool)

(assert (=> b!1400699 m!1577769))

(assert (=> b!1399997 d!400409))

(declare-fun d!400437 () Bool)

(assert (=> d!400437 (= (list!5545 lt!466724) (list!5548 (c!230324 lt!466724)))))

(declare-fun bs!338196 () Bool)

(assert (= bs!338196 d!400437))

(declare-fun m!1577771 () Bool)

(assert (=> bs!338196 m!1577771))

(assert (=> b!1399997 d!400437))

(declare-fun d!400439 () Bool)

(declare-fun res!633383 () Bool)

(declare-fun e!894318 () Bool)

(assert (=> d!400439 (=> (not res!633383) (not e!894318))))

(assert (=> d!400439 (= res!633383 (not (isEmpty!8649 (originalCharacters!3327 t1!34))))))

(assert (=> d!400439 (= (inv!18546 t1!34) e!894318)))

(declare-fun b!1400706 () Bool)

(declare-fun res!633384 () Bool)

(assert (=> b!1400706 (=> (not res!633384) (not e!894318))))

(assert (=> b!1400706 (= res!633384 (= (originalCharacters!3327 t1!34) (list!5545 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (value!79885 t1!34)))))))

(declare-fun b!1400707 () Bool)

(assert (=> b!1400707 (= e!894318 (= (size!11701 t1!34) (size!11710 (originalCharacters!3327 t1!34))))))

(assert (= (and d!400439 res!633383) b!1400706))

(assert (= (and b!1400706 res!633384) b!1400707))

(declare-fun b_lambda!43983 () Bool)

(assert (=> (not b_lambda!43983) (not b!1400706)))

(assert (=> b!1400706 t!122847))

(declare-fun b_and!93791 () Bool)

(assert (= b_and!93769 (and (=> t!122847 result!88820) b_and!93791)))

(assert (=> b!1400706 t!122849))

(declare-fun b_and!93793 () Bool)

(assert (= b_and!93771 (and (=> t!122849 result!88822) b_and!93793)))

(assert (=> b!1400706 t!122851))

(declare-fun b_and!93795 () Bool)

(assert (= b_and!93773 (and (=> t!122851 result!88824) b_and!93795)))

(declare-fun m!1577773 () Bool)

(assert (=> d!400439 m!1577773))

(assert (=> b!1400706 m!1577681))

(assert (=> b!1400706 m!1577681))

(declare-fun m!1577775 () Bool)

(assert (=> b!1400706 m!1577775))

(declare-fun m!1577777 () Bool)

(assert (=> b!1400707 m!1577777))

(assert (=> start!127510 d!400439))

(declare-fun d!400441 () Bool)

(declare-fun res!633385 () Bool)

(declare-fun e!894319 () Bool)

(assert (=> d!400441 (=> (not res!633385) (not e!894319))))

(assert (=> d!400441 (= res!633385 (not (isEmpty!8649 (originalCharacters!3327 t2!34))))))

(assert (=> d!400441 (= (inv!18546 t2!34) e!894319)))

(declare-fun b!1400708 () Bool)

(declare-fun res!633386 () Bool)

(assert (=> b!1400708 (=> (not res!633386) (not e!894319))))

(assert (=> b!1400708 (= res!633386 (= (originalCharacters!3327 t2!34) (list!5545 (dynLambda!6579 (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (value!79885 t2!34)))))))

(declare-fun b!1400709 () Bool)

(assert (=> b!1400709 (= e!894319 (= (size!11701 t2!34) (size!11710 (originalCharacters!3327 t2!34))))))

(assert (= (and d!400441 res!633385) b!1400708))

(assert (= (and b!1400708 res!633386) b!1400709))

(declare-fun b_lambda!43985 () Bool)

(assert (=> (not b_lambda!43985) (not b!1400708)))

(assert (=> b!1400708 t!122840))

(declare-fun b_and!93797 () Bool)

(assert (= b_and!93791 (and (=> t!122840 result!88812) b_and!93797)))

(assert (=> b!1400708 t!122842))

(declare-fun b_and!93799 () Bool)

(assert (= b_and!93793 (and (=> t!122842 result!88816) b_and!93799)))

(assert (=> b!1400708 t!122844))

(declare-fun b_and!93801 () Bool)

(assert (= b_and!93795 (and (=> t!122844 result!88818) b_and!93801)))

(declare-fun m!1577779 () Bool)

(assert (=> d!400441 m!1577779))

(assert (=> b!1400708 m!1577345))

(assert (=> b!1400708 m!1577345))

(declare-fun m!1577781 () Bool)

(assert (=> b!1400708 m!1577781))

(declare-fun m!1577783 () Bool)

(assert (=> b!1400709 m!1577783))

(assert (=> start!127510 d!400441))

(declare-fun b!1400710 () Bool)

(declare-fun e!894321 () Bool)

(declare-fun e!894322 () Bool)

(assert (=> b!1400710 (= e!894321 e!894322)))

(declare-fun res!633388 () Bool)

(assert (=> b!1400710 (=> (not res!633388) (not e!894322))))

(declare-fun lt!466957 () Option!2728)

(assert (=> b!1400710 (= res!633388 (isDefined!2242 lt!466957))))

(declare-fun b!1400711 () Bool)

(declare-fun e!894320 () Option!2728)

(declare-fun lt!466959 () Option!2728)

(declare-fun lt!466956 () Option!2728)

(assert (=> b!1400711 (= e!894320 (ite (and ((_ is None!2727) lt!466959) ((_ is None!2727) lt!466956)) None!2727 (ite ((_ is None!2727) lt!466956) lt!466959 (ite ((_ is None!2727) lt!466959) lt!466956 (ite (>= (size!11701 (_1!7812 (v!21655 lt!466959))) (size!11701 (_1!7812 (v!21655 lt!466956)))) lt!466959 lt!466956)))))))

(declare-fun call!93491 () Option!2728)

(assert (=> b!1400711 (= lt!466959 call!93491)))

(assert (=> b!1400711 (= lt!466956 (maxPrefix!1134 thiss!19762 (t!122821 rules!2550) lt!466697))))

(declare-fun b!1400712 () Bool)

(declare-fun res!633390 () Bool)

(assert (=> b!1400712 (=> (not res!633390) (not e!894322))))

(assert (=> b!1400712 (= res!633390 (matchR!1770 (regex!2465 (rule!4228 (_1!7812 (get!4400 lt!466957)))) (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466957))))))))

(declare-fun d!400443 () Bool)

(assert (=> d!400443 e!894321))

(declare-fun res!633387 () Bool)

(assert (=> d!400443 (=> res!633387 e!894321)))

(assert (=> d!400443 (= res!633387 (isEmpty!8651 lt!466957))))

(assert (=> d!400443 (= lt!466957 e!894320)))

(declare-fun c!230467 () Bool)

(assert (=> d!400443 (= c!230467 (and ((_ is Cons!14230) rules!2550) ((_ is Nil!14230) (t!122821 rules!2550))))))

(declare-fun lt!466955 () Unit!20551)

(declare-fun lt!466958 () Unit!20551)

(assert (=> d!400443 (= lt!466955 lt!466958)))

(assert (=> d!400443 (isPrefix!1155 lt!466697 lt!466697)))

(assert (=> d!400443 (= lt!466958 (lemmaIsPrefixRefl!814 lt!466697 lt!466697))))

(assert (=> d!400443 (rulesValidInductive!797 thiss!19762 rules!2550)))

(assert (=> d!400443 (= (maxPrefix!1134 thiss!19762 rules!2550 lt!466697) lt!466957)))

(declare-fun b!1400713 () Bool)

(assert (=> b!1400713 (= e!894320 call!93491)))

(declare-fun b!1400714 () Bool)

(assert (=> b!1400714 (= e!894322 (contains!2778 rules!2550 (rule!4228 (_1!7812 (get!4400 lt!466957)))))))

(declare-fun bm!93486 () Bool)

(assert (=> bm!93486 (= call!93491 (maxPrefixOneRule!640 thiss!19762 (h!19631 rules!2550) lt!466697))))

(declare-fun b!1400715 () Bool)

(declare-fun res!633392 () Bool)

(assert (=> b!1400715 (=> (not res!633392) (not e!894322))))

(assert (=> b!1400715 (= res!633392 (= (++!3700 (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466957)))) (_2!7812 (get!4400 lt!466957))) lt!466697))))

(declare-fun b!1400716 () Bool)

(declare-fun res!633393 () Bool)

(assert (=> b!1400716 (=> (not res!633393) (not e!894322))))

(assert (=> b!1400716 (= res!633393 (= (value!79885 (_1!7812 (get!4400 lt!466957))) (apply!3620 (transformation!2465 (rule!4228 (_1!7812 (get!4400 lt!466957)))) (seqFromList!1658 (originalCharacters!3327 (_1!7812 (get!4400 lt!466957)))))))))

(declare-fun b!1400717 () Bool)

(declare-fun res!633391 () Bool)

(assert (=> b!1400717 (=> (not res!633391) (not e!894322))))

(assert (=> b!1400717 (= res!633391 (= (list!5545 (charsOf!1437 (_1!7812 (get!4400 lt!466957)))) (originalCharacters!3327 (_1!7812 (get!4400 lt!466957)))))))

(declare-fun b!1400718 () Bool)

(declare-fun res!633389 () Bool)

(assert (=> b!1400718 (=> (not res!633389) (not e!894322))))

(assert (=> b!1400718 (= res!633389 (< (size!11710 (_2!7812 (get!4400 lt!466957))) (size!11710 lt!466697)))))

(assert (= (and d!400443 c!230467) b!1400713))

(assert (= (and d!400443 (not c!230467)) b!1400711))

(assert (= (or b!1400713 b!1400711) bm!93486))

(assert (= (and d!400443 (not res!633387)) b!1400710))

(assert (= (and b!1400710 res!633388) b!1400717))

(assert (= (and b!1400717 res!633391) b!1400718))

(assert (= (and b!1400718 res!633389) b!1400715))

(assert (= (and b!1400715 res!633392) b!1400716))

(assert (= (and b!1400716 res!633393) b!1400712))

(assert (= (and b!1400712 res!633390) b!1400714))

(declare-fun m!1577785 () Bool)

(assert (=> b!1400711 m!1577785))

(declare-fun m!1577787 () Bool)

(assert (=> b!1400716 m!1577787))

(declare-fun m!1577789 () Bool)

(assert (=> b!1400716 m!1577789))

(assert (=> b!1400716 m!1577789))

(declare-fun m!1577791 () Bool)

(assert (=> b!1400716 m!1577791))

(assert (=> b!1400717 m!1577787))

(declare-fun m!1577793 () Bool)

(assert (=> b!1400717 m!1577793))

(assert (=> b!1400717 m!1577793))

(declare-fun m!1577795 () Bool)

(assert (=> b!1400717 m!1577795))

(assert (=> b!1400712 m!1577787))

(assert (=> b!1400712 m!1577793))

(assert (=> b!1400712 m!1577793))

(assert (=> b!1400712 m!1577795))

(assert (=> b!1400712 m!1577795))

(declare-fun m!1577797 () Bool)

(assert (=> b!1400712 m!1577797))

(assert (=> b!1400718 m!1577787))

(declare-fun m!1577799 () Bool)

(assert (=> b!1400718 m!1577799))

(assert (=> b!1400718 m!1577629))

(declare-fun m!1577801 () Bool)

(assert (=> b!1400710 m!1577801))

(declare-fun m!1577803 () Bool)

(assert (=> bm!93486 m!1577803))

(assert (=> b!1400715 m!1577787))

(assert (=> b!1400715 m!1577793))

(assert (=> b!1400715 m!1577793))

(assert (=> b!1400715 m!1577795))

(assert (=> b!1400715 m!1577795))

(declare-fun m!1577805 () Bool)

(assert (=> b!1400715 m!1577805))

(declare-fun m!1577807 () Bool)

(assert (=> d!400443 m!1577807))

(declare-fun m!1577809 () Bool)

(assert (=> d!400443 m!1577809))

(declare-fun m!1577811 () Bool)

(assert (=> d!400443 m!1577811))

(assert (=> d!400443 m!1577283))

(assert (=> b!1400714 m!1577787))

(declare-fun m!1577813 () Bool)

(assert (=> b!1400714 m!1577813))

(assert (=> b!1400018 d!400443))

(declare-fun d!400445 () Bool)

(assert (=> d!400445 (= (isEmpty!8644 rules!2550) ((_ is Nil!14230) rules!2550))))

(assert (=> b!1399979 d!400445))

(declare-fun b!1400729 () Bool)

(declare-fun e!894330 () Bool)

(declare-fun inv!15 (TokenValue!2555) Bool)

(assert (=> b!1400729 (= e!894330 (inv!15 (value!79885 t1!34)))))

(declare-fun b!1400730 () Bool)

(declare-fun res!633396 () Bool)

(assert (=> b!1400730 (=> res!633396 e!894330)))

(assert (=> b!1400730 (= res!633396 (not ((_ is IntegerValue!7667) (value!79885 t1!34))))))

(declare-fun e!894329 () Bool)

(assert (=> b!1400730 (= e!894329 e!894330)))

(declare-fun b!1400731 () Bool)

(declare-fun e!894331 () Bool)

(assert (=> b!1400731 (= e!894331 e!894329)))

(declare-fun c!230473 () Bool)

(assert (=> b!1400731 (= c!230473 ((_ is IntegerValue!7666) (value!79885 t1!34)))))

(declare-fun d!400447 () Bool)

(declare-fun c!230472 () Bool)

(assert (=> d!400447 (= c!230472 ((_ is IntegerValue!7665) (value!79885 t1!34)))))

(assert (=> d!400447 (= (inv!21 (value!79885 t1!34)) e!894331)))

(declare-fun b!1400732 () Bool)

(declare-fun inv!16 (TokenValue!2555) Bool)

(assert (=> b!1400732 (= e!894331 (inv!16 (value!79885 t1!34)))))

(declare-fun b!1400733 () Bool)

(declare-fun inv!17 (TokenValue!2555) Bool)

(assert (=> b!1400733 (= e!894329 (inv!17 (value!79885 t1!34)))))

(assert (= (and d!400447 c!230472) b!1400732))

(assert (= (and d!400447 (not c!230472)) b!1400731))

(assert (= (and b!1400731 c!230473) b!1400733))

(assert (= (and b!1400731 (not c!230473)) b!1400730))

(assert (= (and b!1400730 (not res!633396)) b!1400729))

(declare-fun m!1577815 () Bool)

(assert (=> b!1400729 m!1577815))

(declare-fun m!1577817 () Bool)

(assert (=> b!1400732 m!1577817))

(declare-fun m!1577819 () Bool)

(assert (=> b!1400733 m!1577819))

(assert (=> b!1400022 d!400447))

(declare-fun d!400449 () Bool)

(declare-fun prefixMatchZipperSequence!300 (Regex!3779 BalanceConc!9320) Bool)

(declare-fun ++!3702 (BalanceConc!9320 BalanceConc!9320) BalanceConc!9320)

(declare-fun singletonSeq!1126 (C!7848) BalanceConc!9320)

(assert (=> d!400449 (= (separableTokensPredicate!443 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!300 (rulesRegex!348 thiss!19762 rules!2550) (++!3702 (charsOf!1437 t1!34) (singletonSeq!1126 (apply!3617 (charsOf!1437 t2!34) 0))))))))

(declare-fun bs!338197 () Bool)

(assert (= bs!338197 d!400449))

(assert (=> bs!338197 m!1576917))

(declare-fun m!1577821 () Bool)

(assert (=> bs!338197 m!1577821))

(assert (=> bs!338197 m!1576823))

(assert (=> bs!338197 m!1576917))

(assert (=> bs!338197 m!1577821))

(declare-fun m!1577823 () Bool)

(assert (=> bs!338197 m!1577823))

(assert (=> bs!338197 m!1576823))

(declare-fun m!1577825 () Bool)

(assert (=> bs!338197 m!1577825))

(declare-fun m!1577827 () Bool)

(assert (=> bs!338197 m!1577827))

(assert (=> bs!338197 m!1576817))

(assert (=> bs!338197 m!1577823))

(assert (=> bs!338197 m!1577825))

(assert (=> bs!338197 m!1576817))

(assert (=> b!1400021 d!400449))

(declare-fun d!400451 () Bool)

(assert (=> d!400451 (= (inv!18543 (tag!2727 (h!19631 rules!2550))) (= (mod (str.len (value!79884 (tag!2727 (h!19631 rules!2550)))) 2) 0))))

(assert (=> b!1400000 d!400451))

(declare-fun d!400453 () Bool)

(declare-fun res!633397 () Bool)

(declare-fun e!894332 () Bool)

(assert (=> d!400453 (=> (not res!633397) (not e!894332))))

(assert (=> d!400453 (= res!633397 (semiInverseModEq!958 (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toValue!3756 (transformation!2465 (h!19631 rules!2550)))))))

(assert (=> d!400453 (= (inv!18547 (transformation!2465 (h!19631 rules!2550))) e!894332)))

(declare-fun b!1400734 () Bool)

(assert (=> b!1400734 (= e!894332 (equivClasses!917 (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toValue!3756 (transformation!2465 (h!19631 rules!2550)))))))

(assert (= (and d!400453 res!633397) b!1400734))

(declare-fun m!1577829 () Bool)

(assert (=> d!400453 m!1577829))

(declare-fun m!1577831 () Bool)

(assert (=> b!1400734 m!1577831))

(assert (=> b!1400000 d!400453))

(declare-fun lt!466962 () Bool)

(declare-fun d!400455 () Bool)

(declare-fun content!2111 (List!14298) (InoxSet Regex!3779))

(assert (=> d!400455 (= lt!466962 (select (content!2111 (map!3158 rules!2550 lambda!61260)) lt!466702))))

(declare-fun e!894338 () Bool)

(assert (=> d!400455 (= lt!466962 e!894338)))

(declare-fun res!633402 () Bool)

(assert (=> d!400455 (=> (not res!633402) (not e!894338))))

(assert (=> d!400455 (= res!633402 ((_ is Cons!14232) (map!3158 rules!2550 lambda!61260)))))

(assert (=> d!400455 (= (contains!2779 (map!3158 rules!2550 lambda!61260) lt!466702) lt!466962)))

(declare-fun b!1400739 () Bool)

(declare-fun e!894337 () Bool)

(assert (=> b!1400739 (= e!894338 e!894337)))

(declare-fun res!633403 () Bool)

(assert (=> b!1400739 (=> res!633403 e!894337)))

(assert (=> b!1400739 (= res!633403 (= (h!19633 (map!3158 rules!2550 lambda!61260)) lt!466702))))

(declare-fun b!1400740 () Bool)

(assert (=> b!1400740 (= e!894337 (contains!2779 (t!122823 (map!3158 rules!2550 lambda!61260)) lt!466702))))

(assert (= (and d!400455 res!633402) b!1400739))

(assert (= (and b!1400739 (not res!633403)) b!1400740))

(assert (=> d!400455 m!1576769))

(declare-fun m!1577833 () Bool)

(assert (=> d!400455 m!1577833))

(declare-fun m!1577835 () Bool)

(assert (=> d!400455 m!1577835))

(declare-fun m!1577837 () Bool)

(assert (=> b!1400740 m!1577837))

(assert (=> b!1399999 d!400455))

(assert (=> b!1399999 d!400223))

(declare-fun b!1400754 () Bool)

(declare-fun e!894349 () Bool)

(declare-fun dynLambda!6580 (Int Regex!3779) Bool)

(assert (=> b!1400754 (= e!894349 (dynLambda!6580 lambda!61261 (h!19633 (map!3158 rules!2550 lambda!61260))))))

(declare-fun b!1400755 () Bool)

(declare-fun e!894347 () Regex!3779)

(declare-fun e!894350 () Regex!3779)

(assert (=> b!1400755 (= e!894347 e!894350)))

(declare-fun c!230479 () Bool)

(assert (=> b!1400755 (= c!230479 ((_ is Cons!14232) (map!3158 rules!2550 lambda!61260)))))

(declare-fun b!1400756 () Bool)

(assert (=> b!1400756 (= e!894347 (h!19633 (map!3158 rules!2550 lambda!61260)))))

(declare-fun b!1400753 () Bool)

(assert (=> b!1400753 (= e!894350 (getWitness!462 (t!122823 (map!3158 rules!2550 lambda!61260)) lambda!61261))))

(declare-fun d!400457 () Bool)

(declare-fun e!894348 () Bool)

(assert (=> d!400457 e!894348))

(declare-fun res!633408 () Bool)

(assert (=> d!400457 (=> (not res!633408) (not e!894348))))

(declare-fun lt!466967 () Regex!3779)

(assert (=> d!400457 (= res!633408 (dynLambda!6580 lambda!61261 lt!466967))))

(assert (=> d!400457 (= lt!466967 e!894347)))

(declare-fun c!230478 () Bool)

(assert (=> d!400457 (= c!230478 e!894349)))

(declare-fun res!633409 () Bool)

(assert (=> d!400457 (=> (not res!633409) (not e!894349))))

(assert (=> d!400457 (= res!633409 ((_ is Cons!14232) (map!3158 rules!2550 lambda!61260)))))

(assert (=> d!400457 (exists!574 (map!3158 rules!2550 lambda!61260) lambda!61261)))

(assert (=> d!400457 (= (getWitness!462 (map!3158 rules!2550 lambda!61260) lambda!61261) lt!466967)))

(declare-fun b!1400757 () Bool)

(assert (=> b!1400757 (= e!894348 (contains!2779 (map!3158 rules!2550 lambda!61260) lt!466967))))

(declare-fun b!1400758 () Bool)

(declare-fun lt!466968 () Unit!20551)

(declare-fun Unit!20560 () Unit!20551)

(assert (=> b!1400758 (= lt!466968 Unit!20560)))

(assert (=> b!1400758 false))

(declare-fun head!2591 (List!14298) Regex!3779)

(assert (=> b!1400758 (= e!894350 (head!2591 (map!3158 rules!2550 lambda!61260)))))

(assert (= (and d!400457 res!633409) b!1400754))

(assert (= (and d!400457 c!230478) b!1400756))

(assert (= (and d!400457 (not c!230478)) b!1400755))

(assert (= (and b!1400755 c!230479) b!1400753))

(assert (= (and b!1400755 (not c!230479)) b!1400758))

(assert (= (and d!400457 res!633408) b!1400757))

(declare-fun b_lambda!43987 () Bool)

(assert (=> (not b_lambda!43987) (not b!1400754)))

(declare-fun b_lambda!43989 () Bool)

(assert (=> (not b_lambda!43989) (not d!400457)))

(declare-fun m!1577839 () Bool)

(assert (=> d!400457 m!1577839))

(assert (=> d!400457 m!1576769))

(assert (=> d!400457 m!1576771))

(declare-fun m!1577841 () Bool)

(assert (=> b!1400753 m!1577841))

(assert (=> b!1400757 m!1576769))

(declare-fun m!1577843 () Bool)

(assert (=> b!1400757 m!1577843))

(assert (=> b!1400758 m!1576769))

(declare-fun m!1577845 () Bool)

(assert (=> b!1400758 m!1577845))

(declare-fun m!1577847 () Bool)

(assert (=> b!1400754 m!1577847))

(assert (=> b!1399999 d!400457))

(declare-fun d!400459 () Bool)

(declare-fun choose!8633 (Int) Bool)

(assert (=> d!400459 (= (Exists!929 lambda!61259) (choose!8633 lambda!61259))))

(declare-fun bs!338198 () Bool)

(assert (= bs!338198 d!400459))

(declare-fun m!1577849 () Bool)

(assert (=> bs!338198 m!1577849))

(assert (=> b!1400025 d!400459))

(declare-fun bs!338199 () Bool)

(declare-fun d!400461 () Bool)

(assert (= bs!338199 (and d!400461 b!1400025)))

(declare-fun lambda!61301 () Int)

(assert (=> bs!338199 (= lambda!61301 lambda!61259)))

(assert (=> d!400461 true))

(assert (=> d!400461 true))

(assert (=> d!400461 (Exists!929 lambda!61301)))

(declare-fun lt!466971 () Unit!20551)

(declare-fun choose!8634 (Regex!3779 List!14295) Unit!20551)

(assert (=> d!400461 (= lt!466971 (choose!8634 lt!466696 lt!466698))))

(assert (=> d!400461 (validRegex!1653 lt!466696)))

(assert (=> d!400461 (= (lemmaPrefixMatchThenExistsStringThatMatches!247 lt!466696 lt!466698) lt!466971)))

(declare-fun bs!338200 () Bool)

(assert (= bs!338200 d!400461))

(declare-fun m!1577851 () Bool)

(assert (=> bs!338200 m!1577851))

(declare-fun m!1577853 () Bool)

(assert (=> bs!338200 m!1577853))

(assert (=> bs!338200 m!1577085))

(assert (=> b!1400025 d!400461))

(declare-fun b!1400761 () Bool)

(declare-fun e!894357 () Bool)

(assert (=> b!1400761 (= e!894357 (not (= (head!2587 lt!466710) (c!230325 lt!466702))))))

(declare-fun d!400463 () Bool)

(declare-fun e!894353 () Bool)

(assert (=> d!400463 e!894353))

(declare-fun c!230480 () Bool)

(assert (=> d!400463 (= c!230480 ((_ is EmptyExpr!3779) lt!466702))))

(declare-fun lt!466972 () Bool)

(declare-fun e!894359 () Bool)

(assert (=> d!400463 (= lt!466972 e!894359)))

(declare-fun c!230481 () Bool)

(assert (=> d!400463 (= c!230481 (isEmpty!8649 lt!466710))))

(assert (=> d!400463 (validRegex!1653 lt!466702)))

(assert (=> d!400463 (= (matchR!1770 lt!466702 lt!466710) lt!466972)))

(declare-fun b!1400762 () Bool)

(declare-fun e!894356 () Bool)

(assert (=> b!1400762 (= e!894356 (not lt!466972))))

(declare-fun b!1400763 () Bool)

(declare-fun e!894354 () Bool)

(assert (=> b!1400763 (= e!894354 e!894357)))

(declare-fun res!633413 () Bool)

(assert (=> b!1400763 (=> res!633413 e!894357)))

(declare-fun call!93492 () Bool)

(assert (=> b!1400763 (= res!633413 call!93492)))

(declare-fun b!1400764 () Bool)

(declare-fun e!894355 () Bool)

(assert (=> b!1400764 (= e!894355 e!894354)))

(declare-fun res!633412 () Bool)

(assert (=> b!1400764 (=> (not res!633412) (not e!894354))))

(assert (=> b!1400764 (= res!633412 (not lt!466972))))

(declare-fun bm!93487 () Bool)

(assert (=> bm!93487 (= call!93492 (isEmpty!8649 lt!466710))))

(declare-fun b!1400765 () Bool)

(assert (=> b!1400765 (= e!894359 (matchR!1770 (derivativeStep!987 lt!466702 (head!2587 lt!466710)) (tail!2034 lt!466710)))))

(declare-fun b!1400766 () Bool)

(declare-fun res!633418 () Bool)

(declare-fun e!894358 () Bool)

(assert (=> b!1400766 (=> (not res!633418) (not e!894358))))

(assert (=> b!1400766 (= res!633418 (not call!93492))))

(declare-fun b!1400767 () Bool)

(assert (=> b!1400767 (= e!894353 e!894356)))

(declare-fun c!230482 () Bool)

(assert (=> b!1400767 (= c!230482 ((_ is EmptyLang!3779) lt!466702))))

(declare-fun b!1400768 () Bool)

(assert (=> b!1400768 (= e!894353 (= lt!466972 call!93492))))

(declare-fun b!1400769 () Bool)

(assert (=> b!1400769 (= e!894358 (= (head!2587 lt!466710) (c!230325 lt!466702)))))

(declare-fun b!1400770 () Bool)

(declare-fun res!633417 () Bool)

(assert (=> b!1400770 (=> res!633417 e!894357)))

(assert (=> b!1400770 (= res!633417 (not (isEmpty!8649 (tail!2034 lt!466710))))))

(declare-fun b!1400771 () Bool)

(declare-fun res!633419 () Bool)

(assert (=> b!1400771 (=> res!633419 e!894355)))

(assert (=> b!1400771 (= res!633419 (not ((_ is ElementMatch!3779) lt!466702)))))

(assert (=> b!1400771 (= e!894356 e!894355)))

(declare-fun b!1400772 () Bool)

(assert (=> b!1400772 (= e!894359 (nullable!1229 lt!466702))))

(declare-fun b!1400773 () Bool)

(declare-fun res!633415 () Bool)

(assert (=> b!1400773 (=> res!633415 e!894355)))

(assert (=> b!1400773 (= res!633415 e!894358)))

(declare-fun res!633414 () Bool)

(assert (=> b!1400773 (=> (not res!633414) (not e!894358))))

(assert (=> b!1400773 (= res!633414 lt!466972)))

(declare-fun b!1400774 () Bool)

(declare-fun res!633416 () Bool)

(assert (=> b!1400774 (=> (not res!633416) (not e!894358))))

(assert (=> b!1400774 (= res!633416 (isEmpty!8649 (tail!2034 lt!466710)))))

(assert (= (and d!400463 c!230481) b!1400772))

(assert (= (and d!400463 (not c!230481)) b!1400765))

(assert (= (and d!400463 c!230480) b!1400768))

(assert (= (and d!400463 (not c!230480)) b!1400767))

(assert (= (and b!1400767 c!230482) b!1400762))

(assert (= (and b!1400767 (not c!230482)) b!1400771))

(assert (= (and b!1400771 (not res!633419)) b!1400773))

(assert (= (and b!1400773 res!633414) b!1400766))

(assert (= (and b!1400766 res!633418) b!1400774))

(assert (= (and b!1400774 res!633416) b!1400769))

(assert (= (and b!1400773 (not res!633415)) b!1400764))

(assert (= (and b!1400764 res!633412) b!1400763))

(assert (= (and b!1400763 (not res!633413)) b!1400770))

(assert (= (and b!1400770 (not res!633417)) b!1400761))

(assert (= (or b!1400768 b!1400763 b!1400766) bm!93487))

(declare-fun m!1577855 () Bool)

(assert (=> b!1400772 m!1577855))

(assert (=> b!1400769 m!1577073))

(assert (=> b!1400770 m!1577075))

(assert (=> b!1400770 m!1577075))

(assert (=> b!1400770 m!1577077))

(assert (=> bm!93487 m!1577079))

(assert (=> b!1400774 m!1577075))

(assert (=> b!1400774 m!1577075))

(assert (=> b!1400774 m!1577077))

(assert (=> b!1400761 m!1577073))

(assert (=> b!1400765 m!1577073))

(assert (=> b!1400765 m!1577073))

(declare-fun m!1577857 () Bool)

(assert (=> b!1400765 m!1577857))

(assert (=> b!1400765 m!1577075))

(assert (=> b!1400765 m!1577857))

(assert (=> b!1400765 m!1577075))

(declare-fun m!1577859 () Bool)

(assert (=> b!1400765 m!1577859))

(assert (=> d!400463 m!1577079))

(declare-fun m!1577861 () Bool)

(assert (=> d!400463 m!1577861))

(assert (=> b!1400004 d!400463))

(declare-fun d!400465 () Bool)

(assert (=> d!400465 (not (contains!2777 (usedCharacters!276 (regex!2465 lt!466694)) lt!466712))))

(declare-fun lt!466975 () Unit!20551)

(declare-fun choose!8635 (LexerInterface!2160 List!14296 List!14296 Rule!4730 Rule!4730 C!7848) Unit!20551)

(assert (=> d!400465 (= lt!466975 (choose!8635 thiss!19762 rules!2550 rules!2550 (rule!4228 t1!34) lt!466694 lt!466712))))

(assert (=> d!400465 (rulesInvariant!2030 thiss!19762 rules!2550)))

(assert (=> d!400465 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!138 thiss!19762 rules!2550 rules!2550 (rule!4228 t1!34) lt!466694 lt!466712) lt!466975)))

(declare-fun bs!338201 () Bool)

(assert (= bs!338201 d!400465))

(assert (=> bs!338201 m!1576893))

(assert (=> bs!338201 m!1576893))

(assert (=> bs!338201 m!1576895))

(declare-fun m!1577863 () Bool)

(assert (=> bs!338201 m!1577863))

(assert (=> bs!338201 m!1576863))

(assert (=> b!1400004 d!400465))

(declare-fun d!400467 () Bool)

(declare-fun lt!466976 () Bool)

(assert (=> d!400467 (= lt!466976 (select (content!2108 (usedCharacters!276 (regex!2465 lt!466694))) lt!466712))))

(declare-fun e!894360 () Bool)

(assert (=> d!400467 (= lt!466976 e!894360)))

(declare-fun res!633420 () Bool)

(assert (=> d!400467 (=> (not res!633420) (not e!894360))))

(assert (=> d!400467 (= res!633420 ((_ is Cons!14229) (usedCharacters!276 (regex!2465 lt!466694))))))

(assert (=> d!400467 (= (contains!2777 (usedCharacters!276 (regex!2465 lt!466694)) lt!466712) lt!466976)))

(declare-fun b!1400775 () Bool)

(declare-fun e!894361 () Bool)

(assert (=> b!1400775 (= e!894360 e!894361)))

(declare-fun res!633421 () Bool)

(assert (=> b!1400775 (=> res!633421 e!894361)))

(assert (=> b!1400775 (= res!633421 (= (h!19630 (usedCharacters!276 (regex!2465 lt!466694))) lt!466712))))

(declare-fun b!1400776 () Bool)

(assert (=> b!1400776 (= e!894361 (contains!2777 (t!122820 (usedCharacters!276 (regex!2465 lt!466694))) lt!466712))))

(assert (= (and d!400467 res!633420) b!1400775))

(assert (= (and b!1400775 (not res!633421)) b!1400776))

(assert (=> d!400467 m!1576893))

(declare-fun m!1577865 () Bool)

(assert (=> d!400467 m!1577865))

(declare-fun m!1577867 () Bool)

(assert (=> d!400467 m!1577867))

(declare-fun m!1577869 () Bool)

(assert (=> b!1400776 m!1577869))

(assert (=> b!1400004 d!400467))

(declare-fun b!1400777 () Bool)

(declare-fun e!894363 () List!14295)

(declare-fun call!93494 () List!14295)

(assert (=> b!1400777 (= e!894363 call!93494)))

(declare-fun bm!93488 () Bool)

(declare-fun call!93495 () List!14295)

(assert (=> bm!93488 (= call!93495 call!93494)))

(declare-fun b!1400778 () Bool)

(declare-fun e!894365 () List!14295)

(assert (=> b!1400778 (= e!894365 (Cons!14229 (c!230325 (regex!2465 lt!466694)) Nil!14229))))

(declare-fun b!1400779 () Bool)

(declare-fun c!230486 () Bool)

(assert (=> b!1400779 (= c!230486 ((_ is Star!3779) (regex!2465 lt!466694)))))

(assert (=> b!1400779 (= e!894365 e!894363)))

(declare-fun b!1400781 () Bool)

(declare-fun e!894364 () List!14295)

(declare-fun call!93493 () List!14295)

(assert (=> b!1400781 (= e!894364 call!93493)))

(declare-fun b!1400782 () Bool)

(assert (=> b!1400782 (= e!894364 call!93493)))

(declare-fun call!93496 () List!14295)

(declare-fun c!230487 () Bool)

(declare-fun bm!93489 () Bool)

(assert (=> bm!93489 (= call!93493 (++!3700 (ite c!230487 call!93495 call!93496) (ite c!230487 call!93496 call!93495)))))

(declare-fun b!1400783 () Bool)

(declare-fun e!894362 () List!14295)

(assert (=> b!1400783 (= e!894362 Nil!14229)))

(declare-fun b!1400784 () Bool)

(assert (=> b!1400784 (= e!894363 e!894364)))

(assert (=> b!1400784 (= c!230487 ((_ is Union!3779) (regex!2465 lt!466694)))))

(declare-fun b!1400780 () Bool)

(assert (=> b!1400780 (= e!894362 e!894365)))

(declare-fun c!230484 () Bool)

(assert (=> b!1400780 (= c!230484 ((_ is ElementMatch!3779) (regex!2465 lt!466694)))))

(declare-fun d!400469 () Bool)

(declare-fun c!230485 () Bool)

(assert (=> d!400469 (= c!230485 (or ((_ is EmptyExpr!3779) (regex!2465 lt!466694)) ((_ is EmptyLang!3779) (regex!2465 lt!466694))))))

(assert (=> d!400469 (= (usedCharacters!276 (regex!2465 lt!466694)) e!894362)))

(declare-fun bm!93490 () Bool)

(assert (=> bm!93490 (= call!93494 (usedCharacters!276 (ite c!230486 (reg!4108 (regex!2465 lt!466694)) (ite c!230487 (regOne!8071 (regex!2465 lt!466694)) (regTwo!8070 (regex!2465 lt!466694))))))))

(declare-fun bm!93491 () Bool)

(assert (=> bm!93491 (= call!93496 (usedCharacters!276 (ite c!230487 (regTwo!8071 (regex!2465 lt!466694)) (regOne!8070 (regex!2465 lt!466694)))))))

(assert (= (and d!400469 c!230485) b!1400783))

(assert (= (and d!400469 (not c!230485)) b!1400780))

(assert (= (and b!1400780 c!230484) b!1400778))

(assert (= (and b!1400780 (not c!230484)) b!1400779))

(assert (= (and b!1400779 c!230486) b!1400777))

(assert (= (and b!1400779 (not c!230486)) b!1400784))

(assert (= (and b!1400784 c!230487) b!1400781))

(assert (= (and b!1400784 (not c!230487)) b!1400782))

(assert (= (or b!1400781 b!1400782) bm!93488))

(assert (= (or b!1400781 b!1400782) bm!93491))

(assert (= (or b!1400781 b!1400782) bm!93489))

(assert (= (or b!1400777 bm!93488) bm!93490))

(declare-fun m!1577871 () Bool)

(assert (=> bm!93489 m!1577871))

(declare-fun m!1577873 () Bool)

(assert (=> bm!93490 m!1577873))

(declare-fun m!1577875 () Bool)

(assert (=> bm!93491 m!1577875))

(assert (=> b!1400004 d!400469))

(declare-fun d!400471 () Bool)

(assert (=> d!400471 (not (matchR!1770 lt!466702 lt!466710))))

(declare-fun lt!466979 () Unit!20551)

(declare-fun choose!8637 (Regex!3779 List!14295 C!7848) Unit!20551)

(assert (=> d!400471 (= lt!466979 (choose!8637 lt!466702 lt!466710 lt!466712))))

(assert (=> d!400471 (validRegex!1653 lt!466702)))

(assert (=> d!400471 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 lt!466702 lt!466710 lt!466712) lt!466979)))

(declare-fun bs!338202 () Bool)

(assert (= bs!338202 d!400471))

(assert (=> bs!338202 m!1576889))

(declare-fun m!1577877 () Bool)

(assert (=> bs!338202 m!1577877))

(assert (=> bs!338202 m!1577861))

(assert (=> b!1400004 d!400471))

(declare-fun d!400473 () Bool)

(assert (=> d!400473 (not (matchR!1770 (regex!2465 (rule!4228 t2!34)) lt!466723))))

(declare-fun lt!466980 () Unit!20551)

(assert (=> d!400473 (= lt!466980 (choose!8637 (regex!2465 (rule!4228 t2!34)) lt!466723 (head!2587 lt!466723)))))

(assert (=> d!400473 (validRegex!1653 (regex!2465 (rule!4228 t2!34)))))

(assert (=> d!400473 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 (regex!2465 (rule!4228 t2!34)) lt!466723 (head!2587 lt!466723)) lt!466980)))

(declare-fun bs!338203 () Bool)

(assert (= bs!338203 d!400473))

(assert (=> bs!338203 m!1576899))

(assert (=> bs!338203 m!1576799))

(declare-fun m!1577879 () Bool)

(assert (=> bs!338203 m!1577879))

(declare-fun m!1577881 () Bool)

(assert (=> bs!338203 m!1577881))

(assert (=> b!1400003 d!400473))

(declare-fun d!400475 () Bool)

(assert (=> d!400475 (= (head!2587 lt!466723) (h!19630 lt!466723))))

(assert (=> b!1400003 d!400475))

(declare-fun d!400477 () Bool)

(declare-fun res!633426 () Bool)

(declare-fun e!894370 () Bool)

(assert (=> d!400477 (=> res!633426 e!894370)))

(assert (=> d!400477 (= res!633426 (not ((_ is Cons!14230) rules!2550)))))

(assert (=> d!400477 (= (sepAndNonSepRulesDisjointChars!838 rules!2550 rules!2550) e!894370)))

(declare-fun b!1400789 () Bool)

(declare-fun e!894371 () Bool)

(assert (=> b!1400789 (= e!894370 e!894371)))

(declare-fun res!633427 () Bool)

(assert (=> b!1400789 (=> (not res!633427) (not e!894371))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!400 (Rule!4730 List!14296) Bool)

(assert (=> b!1400789 (= res!633427 (ruleDisjointCharsFromAllFromOtherType!400 (h!19631 rules!2550) rules!2550))))

(declare-fun b!1400790 () Bool)

(assert (=> b!1400790 (= e!894371 (sepAndNonSepRulesDisjointChars!838 rules!2550 (t!122821 rules!2550)))))

(assert (= (and d!400477 (not res!633426)) b!1400789))

(assert (= (and b!1400789 res!633427) b!1400790))

(declare-fun m!1577883 () Bool)

(assert (=> b!1400789 m!1577883))

(declare-fun m!1577885 () Bool)

(assert (=> b!1400790 m!1577885))

(assert (=> b!1399982 d!400477))

(declare-fun d!400479 () Bool)

(declare-fun lt!466981 () Bool)

(assert (=> d!400479 (= lt!466981 (select (content!2108 lt!466710) lt!466712))))

(declare-fun e!894372 () Bool)

(assert (=> d!400479 (= lt!466981 e!894372)))

(declare-fun res!633428 () Bool)

(assert (=> d!400479 (=> (not res!633428) (not e!894372))))

(assert (=> d!400479 (= res!633428 ((_ is Cons!14229) lt!466710))))

(assert (=> d!400479 (= (contains!2777 lt!466710 lt!466712) lt!466981)))

(declare-fun b!1400791 () Bool)

(declare-fun e!894373 () Bool)

(assert (=> b!1400791 (= e!894372 e!894373)))

(declare-fun res!633429 () Bool)

(assert (=> b!1400791 (=> res!633429 e!894373)))

(assert (=> b!1400791 (= res!633429 (= (h!19630 lt!466710) lt!466712))))

(declare-fun b!1400792 () Bool)

(assert (=> b!1400792 (= e!894373 (contains!2777 (t!122820 lt!466710) lt!466712))))

(assert (= (and d!400479 res!633428) b!1400791))

(assert (= (and b!1400791 (not res!633429)) b!1400792))

(declare-fun m!1577887 () Bool)

(assert (=> d!400479 m!1577887))

(declare-fun m!1577889 () Bool)

(assert (=> d!400479 m!1577889))

(declare-fun m!1577891 () Bool)

(assert (=> b!1400792 m!1577891))

(assert (=> b!1399981 d!400479))

(declare-fun d!400481 () Bool)

(assert (=> d!400481 (= (list!5546 (_1!7813 lt!466706)) (list!5550 (c!230326 (_1!7813 lt!466706))))))

(declare-fun bs!338204 () Bool)

(assert (= bs!338204 d!400481))

(declare-fun m!1577893 () Bool)

(assert (=> bs!338204 m!1577893))

(assert (=> b!1400024 d!400481))

(declare-fun b!1400793 () Bool)

(declare-fun res!633430 () Bool)

(declare-fun e!894374 () Bool)

(assert (=> b!1400793 (=> (not res!633430) (not e!894374))))

(declare-fun lt!466982 () tuple2!13854)

(assert (=> b!1400793 (= res!633430 (= (list!5546 (_1!7813 lt!466982)) (_1!7811 (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466724)))))))

(declare-fun b!1400794 () Bool)

(assert (=> b!1400794 (= e!894374 (= (list!5545 (_2!7813 lt!466982)) (_2!7811 (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466724)))))))

(declare-fun d!400483 () Bool)

(assert (=> d!400483 e!894374))

(declare-fun res!633431 () Bool)

(assert (=> d!400483 (=> (not res!633431) (not e!894374))))

(declare-fun e!894376 () Bool)

(assert (=> d!400483 (= res!633431 e!894376)))

(declare-fun c!230489 () Bool)

(assert (=> d!400483 (= c!230489 (> (size!11705 (_1!7813 lt!466982)) 0))))

(assert (=> d!400483 (= lt!466982 (lexTailRecV2!441 thiss!19762 rules!2550 lt!466724 (BalanceConc!9321 Empty!4690) lt!466724 (BalanceConc!9323 Empty!4691)))))

(assert (=> d!400483 (= (lex!985 thiss!19762 rules!2550 lt!466724) lt!466982)))

(declare-fun b!1400795 () Bool)

(declare-fun e!894375 () Bool)

(assert (=> b!1400795 (= e!894375 (not (isEmpty!8653 (_1!7813 lt!466982))))))

(declare-fun b!1400796 () Bool)

(assert (=> b!1400796 (= e!894376 e!894375)))

(declare-fun res!633432 () Bool)

(assert (=> b!1400796 (= res!633432 (< (size!11702 (_2!7813 lt!466982)) (size!11702 lt!466724)))))

(assert (=> b!1400796 (=> (not res!633432) (not e!894375))))

(declare-fun b!1400797 () Bool)

(assert (=> b!1400797 (= e!894376 (= (_2!7813 lt!466982) lt!466724))))

(assert (= (and d!400483 c!230489) b!1400796))

(assert (= (and d!400483 (not c!230489)) b!1400797))

(assert (= (and b!1400796 res!633432) b!1400795))

(assert (= (and d!400483 res!633431) b!1400793))

(assert (= (and b!1400793 res!633430) b!1400794))

(declare-fun m!1577895 () Bool)

(assert (=> b!1400796 m!1577895))

(declare-fun m!1577897 () Bool)

(assert (=> b!1400796 m!1577897))

(declare-fun m!1577899 () Bool)

(assert (=> b!1400795 m!1577899))

(declare-fun m!1577901 () Bool)

(assert (=> d!400483 m!1577901))

(declare-fun m!1577903 () Bool)

(assert (=> d!400483 m!1577903))

(declare-fun m!1577905 () Bool)

(assert (=> b!1400794 m!1577905))

(assert (=> b!1400794 m!1576803))

(assert (=> b!1400794 m!1576803))

(assert (=> b!1400794 m!1576805))

(declare-fun m!1577907 () Bool)

(assert (=> b!1400793 m!1577907))

(assert (=> b!1400793 m!1576803))

(assert (=> b!1400793 m!1576803))

(assert (=> b!1400793 m!1576805))

(assert (=> b!1400024 d!400483))

(declare-fun d!400485 () Bool)

(declare-fun lt!466983 () BalanceConc!9320)

(assert (=> d!400485 (= (list!5545 lt!466983) (printList!636 thiss!19762 (list!5546 (singletonSeq!1124 t2!34))))))

(assert (=> d!400485 (= lt!466983 (printTailRec!618 thiss!19762 (singletonSeq!1124 t2!34) 0 (BalanceConc!9321 Empty!4690)))))

(assert (=> d!400485 (= (print!924 thiss!19762 (singletonSeq!1124 t2!34)) lt!466983)))

(declare-fun bs!338205 () Bool)

(assert (= bs!338205 d!400485))

(declare-fun m!1577909 () Bool)

(assert (=> bs!338205 m!1577909))

(assert (=> bs!338205 m!1576873))

(assert (=> bs!338205 m!1577147))

(assert (=> bs!338205 m!1577147))

(declare-fun m!1577911 () Bool)

(assert (=> bs!338205 m!1577911))

(assert (=> bs!338205 m!1576873))

(declare-fun m!1577913 () Bool)

(assert (=> bs!338205 m!1577913))

(assert (=> b!1400024 d!400485))

(declare-fun d!400487 () Bool)

(declare-fun e!894377 () Bool)

(assert (=> d!400487 e!894377))

(declare-fun res!633433 () Bool)

(assert (=> d!400487 (=> (not res!633433) (not e!894377))))

(declare-fun lt!466984 () BalanceConc!9322)

(assert (=> d!400487 (= res!633433 (= (list!5546 lt!466984) (Cons!14231 t2!34 Nil!14231)))))

(assert (=> d!400487 (= lt!466984 (singleton!492 t2!34))))

(assert (=> d!400487 (= (singletonSeq!1124 t2!34) lt!466984)))

(declare-fun b!1400798 () Bool)

(assert (=> b!1400798 (= e!894377 (isBalanced!1386 (c!230326 lt!466984)))))

(assert (= (and d!400487 res!633433) b!1400798))

(declare-fun m!1577915 () Bool)

(assert (=> d!400487 m!1577915))

(declare-fun m!1577917 () Bool)

(assert (=> d!400487 m!1577917))

(declare-fun m!1577919 () Bool)

(assert (=> b!1400798 m!1577919))

(assert (=> b!1400024 d!400487))

(declare-fun d!400489 () Bool)

(declare-fun lt!466985 () Bool)

(assert (=> d!400489 (= lt!466985 (select (content!2108 lt!466710) lt!466718))))

(declare-fun e!894378 () Bool)

(assert (=> d!400489 (= lt!466985 e!894378)))

(declare-fun res!633434 () Bool)

(assert (=> d!400489 (=> (not res!633434) (not e!894378))))

(assert (=> d!400489 (= res!633434 ((_ is Cons!14229) lt!466710))))

(assert (=> d!400489 (= (contains!2777 lt!466710 lt!466718) lt!466985)))

(declare-fun b!1400799 () Bool)

(declare-fun e!894379 () Bool)

(assert (=> b!1400799 (= e!894378 e!894379)))

(declare-fun res!633435 () Bool)

(assert (=> b!1400799 (=> res!633435 e!894379)))

(assert (=> b!1400799 (= res!633435 (= (h!19630 lt!466710) lt!466718))))

(declare-fun b!1400800 () Bool)

(assert (=> b!1400800 (= e!894379 (contains!2777 (t!122820 lt!466710) lt!466718))))

(assert (= (and d!400489 res!633434) b!1400799))

(assert (= (and b!1400799 (not res!633435)) b!1400800))

(assert (=> d!400489 m!1577887))

(declare-fun m!1577921 () Bool)

(assert (=> d!400489 m!1577921))

(declare-fun m!1577923 () Bool)

(assert (=> b!1400800 m!1577923))

(assert (=> b!1400023 d!400489))

(declare-fun b!1400801 () Bool)

(declare-fun e!894381 () Bool)

(assert (=> b!1400801 (= e!894381 (inv!15 (value!79885 t2!34)))))

(declare-fun b!1400802 () Bool)

(declare-fun res!633436 () Bool)

(assert (=> b!1400802 (=> res!633436 e!894381)))

(assert (=> b!1400802 (= res!633436 (not ((_ is IntegerValue!7667) (value!79885 t2!34))))))

(declare-fun e!894380 () Bool)

(assert (=> b!1400802 (= e!894380 e!894381)))

(declare-fun b!1400803 () Bool)

(declare-fun e!894382 () Bool)

(assert (=> b!1400803 (= e!894382 e!894380)))

(declare-fun c!230491 () Bool)

(assert (=> b!1400803 (= c!230491 ((_ is IntegerValue!7666) (value!79885 t2!34)))))

(declare-fun d!400491 () Bool)

(declare-fun c!230490 () Bool)

(assert (=> d!400491 (= c!230490 ((_ is IntegerValue!7665) (value!79885 t2!34)))))

(assert (=> d!400491 (= (inv!21 (value!79885 t2!34)) e!894382)))

(declare-fun b!1400804 () Bool)

(assert (=> b!1400804 (= e!894382 (inv!16 (value!79885 t2!34)))))

(declare-fun b!1400805 () Bool)

(assert (=> b!1400805 (= e!894380 (inv!17 (value!79885 t2!34)))))

(assert (= (and d!400491 c!230490) b!1400804))

(assert (= (and d!400491 (not c!230490)) b!1400803))

(assert (= (and b!1400803 c!230491) b!1400805))

(assert (= (and b!1400803 (not c!230491)) b!1400802))

(assert (= (and b!1400802 (not res!633436)) b!1400801))

(declare-fun m!1577925 () Bool)

(assert (=> b!1400801 m!1577925))

(declare-fun m!1577927 () Bool)

(assert (=> b!1400804 m!1577927))

(declare-fun m!1577929 () Bool)

(assert (=> b!1400805 m!1577929))

(assert (=> b!1400002 d!400491))

(declare-fun b!1400806 () Bool)

(declare-fun e!894383 () Bool)

(declare-fun lt!466986 () tuple2!13850)

(assert (=> b!1400806 (= e!894383 (= (_2!7811 lt!466986) (list!5545 lt!466701)))))

(declare-fun b!1400807 () Bool)

(declare-fun e!894385 () Bool)

(assert (=> b!1400807 (= e!894383 e!894385)))

(declare-fun res!633437 () Bool)

(assert (=> b!1400807 (= res!633437 (< (size!11710 (_2!7811 lt!466986)) (size!11710 (list!5545 lt!466701))))))

(assert (=> b!1400807 (=> (not res!633437) (not e!894385))))

(declare-fun b!1400809 () Bool)

(declare-fun e!894384 () tuple2!13850)

(assert (=> b!1400809 (= e!894384 (tuple2!13851 Nil!14231 (list!5545 lt!466701)))))

(declare-fun b!1400810 () Bool)

(declare-fun lt!466988 () Option!2728)

(declare-fun lt!466987 () tuple2!13850)

(assert (=> b!1400810 (= e!894384 (tuple2!13851 (Cons!14231 (_1!7812 (v!21655 lt!466988)) (_1!7811 lt!466987)) (_2!7811 lt!466987)))))

(assert (=> b!1400810 (= lt!466987 (lexList!674 thiss!19762 rules!2550 (_2!7812 (v!21655 lt!466988))))))

(declare-fun d!400493 () Bool)

(assert (=> d!400493 e!894383))

(declare-fun c!230492 () Bool)

(assert (=> d!400493 (= c!230492 (> (size!11713 (_1!7811 lt!466986)) 0))))

(assert (=> d!400493 (= lt!466986 e!894384)))

(declare-fun c!230493 () Bool)

(assert (=> d!400493 (= c!230493 ((_ is Some!2727) lt!466988))))

(assert (=> d!400493 (= lt!466988 (maxPrefix!1134 thiss!19762 rules!2550 (list!5545 lt!466701)))))

(assert (=> d!400493 (= (lexList!674 thiss!19762 rules!2550 (list!5545 lt!466701)) lt!466986)))

(declare-fun b!1400808 () Bool)

(assert (=> b!1400808 (= e!894385 (not (isEmpty!8655 (_1!7811 lt!466986))))))

(assert (= (and d!400493 c!230493) b!1400810))

(assert (= (and d!400493 (not c!230493)) b!1400809))

(assert (= (and d!400493 c!230492) b!1400807))

(assert (= (and d!400493 (not c!230492)) b!1400806))

(assert (= (and b!1400807 res!633437) b!1400808))

(declare-fun m!1577931 () Bool)

(assert (=> b!1400807 m!1577931))

(assert (=> b!1400807 m!1576865))

(declare-fun m!1577933 () Bool)

(assert (=> b!1400807 m!1577933))

(declare-fun m!1577935 () Bool)

(assert (=> b!1400810 m!1577935))

(declare-fun m!1577937 () Bool)

(assert (=> d!400493 m!1577937))

(assert (=> d!400493 m!1576865))

(declare-fun m!1577939 () Bool)

(assert (=> d!400493 m!1577939))

(declare-fun m!1577941 () Bool)

(assert (=> b!1400808 m!1577941))

(assert (=> b!1399985 d!400493))

(declare-fun d!400495 () Bool)

(assert (=> d!400495 (= (list!5545 lt!466701) (list!5548 (c!230324 lt!466701)))))

(declare-fun bs!338206 () Bool)

(assert (= bs!338206 d!400495))

(declare-fun m!1577943 () Bool)

(assert (=> bs!338206 m!1577943))

(assert (=> b!1399985 d!400495))

(declare-fun d!400497 () Bool)

(declare-fun lt!466989 () Bool)

(assert (=> d!400497 (= lt!466989 (select (content!2108 (usedCharacters!276 (regex!2465 (rule!4228 t1!34)))) lt!466712))))

(declare-fun e!894386 () Bool)

(assert (=> d!400497 (= lt!466989 e!894386)))

(declare-fun res!633438 () Bool)

(assert (=> d!400497 (=> (not res!633438) (not e!894386))))

(assert (=> d!400497 (= res!633438 ((_ is Cons!14229) (usedCharacters!276 (regex!2465 (rule!4228 t1!34)))))))

(assert (=> d!400497 (= (contains!2777 (usedCharacters!276 (regex!2465 (rule!4228 t1!34))) lt!466712) lt!466989)))

(declare-fun b!1400811 () Bool)

(declare-fun e!894387 () Bool)

(assert (=> b!1400811 (= e!894386 e!894387)))

(declare-fun res!633439 () Bool)

(assert (=> b!1400811 (=> res!633439 e!894387)))

(assert (=> b!1400811 (= res!633439 (= (h!19630 (usedCharacters!276 (regex!2465 (rule!4228 t1!34)))) lt!466712))))

(declare-fun b!1400812 () Bool)

(assert (=> b!1400812 (= e!894387 (contains!2777 (t!122820 (usedCharacters!276 (regex!2465 (rule!4228 t1!34)))) lt!466712))))

(assert (= (and d!400497 res!633438) b!1400811))

(assert (= (and b!1400811 (not res!633439)) b!1400812))

(assert (=> d!400497 m!1576857))

(declare-fun m!1577945 () Bool)

(assert (=> d!400497 m!1577945))

(declare-fun m!1577947 () Bool)

(assert (=> d!400497 m!1577947))

(declare-fun m!1577949 () Bool)

(assert (=> b!1400812 m!1577949))

(assert (=> b!1400005 d!400497))

(declare-fun b!1400813 () Bool)

(declare-fun e!894389 () List!14295)

(declare-fun call!93498 () List!14295)

(assert (=> b!1400813 (= e!894389 call!93498)))

(declare-fun bm!93492 () Bool)

(declare-fun call!93499 () List!14295)

(assert (=> bm!93492 (= call!93499 call!93498)))

(declare-fun b!1400814 () Bool)

(declare-fun e!894391 () List!14295)

(assert (=> b!1400814 (= e!894391 (Cons!14229 (c!230325 (regex!2465 (rule!4228 t1!34))) Nil!14229))))

(declare-fun b!1400815 () Bool)

(declare-fun c!230496 () Bool)

(assert (=> b!1400815 (= c!230496 ((_ is Star!3779) (regex!2465 (rule!4228 t1!34))))))

(assert (=> b!1400815 (= e!894391 e!894389)))

(declare-fun b!1400817 () Bool)

(declare-fun e!894390 () List!14295)

(declare-fun call!93497 () List!14295)

(assert (=> b!1400817 (= e!894390 call!93497)))

(declare-fun b!1400818 () Bool)

(assert (=> b!1400818 (= e!894390 call!93497)))

(declare-fun c!230497 () Bool)

(declare-fun call!93500 () List!14295)

(declare-fun bm!93493 () Bool)

(assert (=> bm!93493 (= call!93497 (++!3700 (ite c!230497 call!93499 call!93500) (ite c!230497 call!93500 call!93499)))))

(declare-fun b!1400819 () Bool)

(declare-fun e!894388 () List!14295)

(assert (=> b!1400819 (= e!894388 Nil!14229)))

(declare-fun b!1400820 () Bool)

(assert (=> b!1400820 (= e!894389 e!894390)))

(assert (=> b!1400820 (= c!230497 ((_ is Union!3779) (regex!2465 (rule!4228 t1!34))))))

(declare-fun b!1400816 () Bool)

(assert (=> b!1400816 (= e!894388 e!894391)))

(declare-fun c!230494 () Bool)

(assert (=> b!1400816 (= c!230494 ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t1!34))))))

(declare-fun d!400499 () Bool)

(declare-fun c!230495 () Bool)

(assert (=> d!400499 (= c!230495 (or ((_ is EmptyExpr!3779) (regex!2465 (rule!4228 t1!34))) ((_ is EmptyLang!3779) (regex!2465 (rule!4228 t1!34)))))))

(assert (=> d!400499 (= (usedCharacters!276 (regex!2465 (rule!4228 t1!34))) e!894388)))

(declare-fun bm!93494 () Bool)

(assert (=> bm!93494 (= call!93498 (usedCharacters!276 (ite c!230496 (reg!4108 (regex!2465 (rule!4228 t1!34))) (ite c!230497 (regOne!8071 (regex!2465 (rule!4228 t1!34))) (regTwo!8070 (regex!2465 (rule!4228 t1!34)))))))))

(declare-fun bm!93495 () Bool)

(assert (=> bm!93495 (= call!93500 (usedCharacters!276 (ite c!230497 (regTwo!8071 (regex!2465 (rule!4228 t1!34))) (regOne!8070 (regex!2465 (rule!4228 t1!34))))))))

(assert (= (and d!400499 c!230495) b!1400819))

(assert (= (and d!400499 (not c!230495)) b!1400816))

(assert (= (and b!1400816 c!230494) b!1400814))

(assert (= (and b!1400816 (not c!230494)) b!1400815))

(assert (= (and b!1400815 c!230496) b!1400813))

(assert (= (and b!1400815 (not c!230496)) b!1400820))

(assert (= (and b!1400820 c!230497) b!1400817))

(assert (= (and b!1400820 (not c!230497)) b!1400818))

(assert (= (or b!1400817 b!1400818) bm!93492))

(assert (= (or b!1400817 b!1400818) bm!93495))

(assert (= (or b!1400817 b!1400818) bm!93493))

(assert (= (or b!1400813 bm!93492) bm!93494))

(declare-fun m!1577951 () Bool)

(assert (=> bm!93493 m!1577951))

(declare-fun m!1577953 () Bool)

(assert (=> bm!93494 m!1577953))

(declare-fun m!1577955 () Bool)

(assert (=> bm!93495 m!1577955))

(assert (=> b!1400005 d!400499))

(declare-fun e!894393 () Bool)

(declare-fun b!1400824 () Bool)

(declare-fun lt!466990 () List!14295)

(assert (=> b!1400824 (= e!894393 (or (not (= (getSuffix!625 lt!466710 lt!466698) Nil!14229)) (= lt!466990 lt!466698)))))

(declare-fun b!1400822 () Bool)

(declare-fun e!894392 () List!14295)

(assert (=> b!1400822 (= e!894392 (Cons!14229 (h!19630 lt!466698) (++!3700 (t!122820 lt!466698) (getSuffix!625 lt!466710 lt!466698))))))

(declare-fun b!1400823 () Bool)

(declare-fun res!633440 () Bool)

(assert (=> b!1400823 (=> (not res!633440) (not e!894393))))

(assert (=> b!1400823 (= res!633440 (= (size!11710 lt!466990) (+ (size!11710 lt!466698) (size!11710 (getSuffix!625 lt!466710 lt!466698)))))))

(declare-fun b!1400821 () Bool)

(assert (=> b!1400821 (= e!894392 (getSuffix!625 lt!466710 lt!466698))))

(declare-fun d!400501 () Bool)

(assert (=> d!400501 e!894393))

(declare-fun res!633441 () Bool)

(assert (=> d!400501 (=> (not res!633441) (not e!894393))))

(assert (=> d!400501 (= res!633441 (= (content!2108 lt!466990) ((_ map or) (content!2108 lt!466698) (content!2108 (getSuffix!625 lt!466710 lt!466698)))))))

(assert (=> d!400501 (= lt!466990 e!894392)))

(declare-fun c!230498 () Bool)

(assert (=> d!400501 (= c!230498 ((_ is Nil!14229) lt!466698))))

(assert (=> d!400501 (= (++!3700 lt!466698 (getSuffix!625 lt!466710 lt!466698)) lt!466990)))

(assert (= (and d!400501 c!230498) b!1400821))

(assert (= (and d!400501 (not c!230498)) b!1400822))

(assert (= (and d!400501 res!633441) b!1400823))

(assert (= (and b!1400823 res!633440) b!1400824))

(assert (=> b!1400822 m!1576877))

(declare-fun m!1577957 () Bool)

(assert (=> b!1400822 m!1577957))

(declare-fun m!1577959 () Bool)

(assert (=> b!1400823 m!1577959))

(declare-fun m!1577961 () Bool)

(assert (=> b!1400823 m!1577961))

(assert (=> b!1400823 m!1576877))

(declare-fun m!1577963 () Bool)

(assert (=> b!1400823 m!1577963))

(declare-fun m!1577965 () Bool)

(assert (=> d!400501 m!1577965))

(assert (=> d!400501 m!1577065))

(assert (=> d!400501 m!1576877))

(declare-fun m!1577967 () Bool)

(assert (=> d!400501 m!1577967))

(assert (=> b!1399984 d!400501))

(declare-fun d!400503 () Bool)

(declare-fun lt!466993 () List!14295)

(assert (=> d!400503 (= (++!3700 lt!466698 lt!466993) lt!466710)))

(declare-fun e!894396 () List!14295)

(assert (=> d!400503 (= lt!466993 e!894396)))

(declare-fun c!230501 () Bool)

(assert (=> d!400503 (= c!230501 ((_ is Cons!14229) lt!466698))))

(assert (=> d!400503 (>= (size!11710 lt!466710) (size!11710 lt!466698))))

(assert (=> d!400503 (= (getSuffix!625 lt!466710 lt!466698) lt!466993)))

(declare-fun b!1400829 () Bool)

(assert (=> b!1400829 (= e!894396 (getSuffix!625 (tail!2034 lt!466710) (t!122820 lt!466698)))))

(declare-fun b!1400830 () Bool)

(assert (=> b!1400830 (= e!894396 lt!466710)))

(assert (= (and d!400503 c!230501) b!1400829))

(assert (= (and d!400503 (not c!230501)) b!1400830))

(declare-fun m!1577969 () Bool)

(assert (=> d!400503 m!1577969))

(declare-fun m!1577971 () Bool)

(assert (=> d!400503 m!1577971))

(assert (=> d!400503 m!1577961))

(assert (=> b!1400829 m!1577075))

(assert (=> b!1400829 m!1577075))

(declare-fun m!1577973 () Bool)

(assert (=> b!1400829 m!1577973))

(assert (=> b!1399984 d!400503))

(declare-fun d!400505 () Bool)

(declare-fun lt!466996 () List!14295)

(declare-fun dynLambda!6582 (Int List!14295) Bool)

(assert (=> d!400505 (dynLambda!6582 lambda!61259 lt!466996)))

(declare-fun choose!8638 (Int) List!14295)

(assert (=> d!400505 (= lt!466996 (choose!8638 lambda!61259))))

(assert (=> d!400505 (Exists!929 lambda!61259)))

(assert (=> d!400505 (= (pickWitness!232 lambda!61259) lt!466996)))

(declare-fun b_lambda!43991 () Bool)

(assert (=> (not b_lambda!43991) (not d!400505)))

(declare-fun bs!338207 () Bool)

(assert (= bs!338207 d!400505))

(declare-fun m!1577975 () Bool)

(assert (=> bs!338207 m!1577975))

(declare-fun m!1577977 () Bool)

(assert (=> bs!338207 m!1577977))

(assert (=> bs!338207 m!1576901))

(assert (=> b!1399984 d!400505))

(declare-fun d!400507 () Bool)

(declare-fun lt!466997 () Bool)

(assert (=> d!400507 (= lt!466997 (select (content!2110 rules!2550) (rule!4228 t2!34)))))

(declare-fun e!894397 () Bool)

(assert (=> d!400507 (= lt!466997 e!894397)))

(declare-fun res!633442 () Bool)

(assert (=> d!400507 (=> (not res!633442) (not e!894397))))

(assert (=> d!400507 (= res!633442 ((_ is Cons!14230) rules!2550))))

(assert (=> d!400507 (= (contains!2778 rules!2550 (rule!4228 t2!34)) lt!466997)))

(declare-fun b!1400831 () Bool)

(declare-fun e!894398 () Bool)

(assert (=> b!1400831 (= e!894397 e!894398)))

(declare-fun res!633443 () Bool)

(assert (=> b!1400831 (=> res!633443 e!894398)))

(assert (=> b!1400831 (= res!633443 (= (h!19631 rules!2550) (rule!4228 t2!34)))))

(declare-fun b!1400832 () Bool)

(assert (=> b!1400832 (= e!894398 (contains!2778 (t!122821 rules!2550) (rule!4228 t2!34)))))

(assert (= (and d!400507 res!633442) b!1400831))

(assert (= (and b!1400831 (not res!633443)) b!1400832))

(assert (=> d!400507 m!1577369))

(declare-fun m!1577979 () Bool)

(assert (=> d!400507 m!1577979))

(declare-fun m!1577981 () Bool)

(assert (=> b!1400832 m!1577981))

(assert (=> b!1400009 d!400507))

(declare-fun d!400509 () Bool)

(assert (=> d!400509 (not (matchR!1770 (regex!2465 (rule!4228 t1!34)) lt!466697))))

(declare-fun lt!466998 () Unit!20551)

(assert (=> d!400509 (= lt!466998 (choose!8637 (regex!2465 (rule!4228 t1!34)) lt!466697 (head!2587 lt!466697)))))

(assert (=> d!400509 (validRegex!1653 (regex!2465 (rule!4228 t1!34)))))

(assert (=> d!400509 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!210 (regex!2465 (rule!4228 t1!34)) lt!466697 (head!2587 lt!466697)) lt!466998)))

(declare-fun bs!338208 () Bool)

(assert (= bs!338208 d!400509))

(assert (=> bs!338208 m!1576907))

(assert (=> bs!338208 m!1576845))

(declare-fun m!1577983 () Bool)

(assert (=> bs!338208 m!1577983))

(assert (=> bs!338208 m!1577129))

(assert (=> b!1399988 d!400509))

(declare-fun d!400511 () Bool)

(assert (=> d!400511 (= (head!2587 lt!466697) (h!19630 lt!466697))))

(assert (=> b!1399988 d!400511))

(declare-fun bs!338209 () Bool)

(declare-fun d!400513 () Bool)

(assert (= bs!338209 (and d!400513 b!1400008)))

(declare-fun lambda!61304 () Int)

(assert (=> bs!338209 (not (= lambda!61304 lambda!61262))))

(declare-fun bs!338210 () Bool)

(assert (= bs!338210 (and d!400513 b!1399991)))

(assert (=> bs!338210 (not (= lambda!61304 lambda!61263))))

(assert (=> d!400513 true))

(declare-fun order!8711 () Int)

(declare-fun dynLambda!6583 (Int Int) Int)

(assert (=> d!400513 (< (dynLambda!6583 order!8711 lambda!61262) (dynLambda!6583 order!8711 lambda!61304))))

(assert (=> d!400513 (= (exists!575 rules!2550 lambda!61262) (not (forall!3454 rules!2550 lambda!61304)))))

(declare-fun bs!338211 () Bool)

(assert (= bs!338211 d!400513))

(declare-fun m!1577985 () Bool)

(assert (=> bs!338211 m!1577985))

(assert (=> b!1400008 d!400513))

(declare-fun bs!338212 () Bool)

(declare-fun d!400515 () Bool)

(assert (= bs!338212 (and d!400515 b!1400008)))

(declare-fun lambda!61307 () Int)

(assert (=> bs!338212 (not (= lambda!61307 lambda!61262))))

(declare-fun bs!338213 () Bool)

(assert (= bs!338213 (and d!400515 b!1399991)))

(assert (=> bs!338213 (not (= lambda!61307 lambda!61263))))

(declare-fun bs!338214 () Bool)

(assert (= bs!338214 (and d!400515 d!400513)))

(assert (=> bs!338214 (not (= lambda!61307 lambda!61304))))

(assert (=> d!400515 true))

(assert (=> d!400515 true))

(declare-fun order!8713 () Int)

(declare-fun dynLambda!6584 (Int Int) Int)

(assert (=> d!400515 (< (dynLambda!6584 order!8713 lambda!61260) (dynLambda!6583 order!8711 lambda!61307))))

(assert (=> d!400515 (exists!575 rules!2550 lambda!61307)))

(declare-fun lt!467001 () Unit!20551)

(declare-fun choose!8639 (List!14296 Int Regex!3779) Unit!20551)

(assert (=> d!400515 (= lt!467001 (choose!8639 rules!2550 lambda!61260 lt!466702))))

(assert (=> d!400515 (contains!2779 (map!3158 rules!2550 lambda!61260) lt!466702)))

(assert (=> d!400515 (= (lemmaMapContains!176 rules!2550 lambda!61260 lt!466702) lt!467001)))

(declare-fun bs!338215 () Bool)

(assert (= bs!338215 d!400515))

(declare-fun m!1577987 () Bool)

(assert (=> bs!338215 m!1577987))

(declare-fun m!1577989 () Bool)

(assert (=> bs!338215 m!1577989))

(assert (=> bs!338215 m!1576769))

(assert (=> bs!338215 m!1576769))

(assert (=> bs!338215 m!1576827))

(assert (=> b!1400008 d!400515))

(declare-fun d!400517 () Bool)

(declare-fun lt!467002 () Bool)

(assert (=> d!400517 (= lt!467002 (select (content!2108 lt!466698) lt!466712))))

(declare-fun e!894399 () Bool)

(assert (=> d!400517 (= lt!467002 e!894399)))

(declare-fun res!633444 () Bool)

(assert (=> d!400517 (=> (not res!633444) (not e!894399))))

(assert (=> d!400517 (= res!633444 ((_ is Cons!14229) lt!466698))))

(assert (=> d!400517 (= (contains!2777 lt!466698 lt!466712) lt!467002)))

(declare-fun b!1400839 () Bool)

(declare-fun e!894400 () Bool)

(assert (=> b!1400839 (= e!894399 e!894400)))

(declare-fun res!633445 () Bool)

(assert (=> b!1400839 (=> res!633445 e!894400)))

(assert (=> b!1400839 (= res!633445 (= (h!19630 lt!466698) lt!466712))))

(declare-fun b!1400840 () Bool)

(assert (=> b!1400840 (= e!894400 (contains!2777 (t!122820 lt!466698) lt!466712))))

(assert (= (and d!400517 res!633444) b!1400839))

(assert (= (and b!1400839 (not res!633445)) b!1400840))

(assert (=> d!400517 m!1577065))

(declare-fun m!1577991 () Bool)

(assert (=> d!400517 m!1577991))

(declare-fun m!1577993 () Bool)

(assert (=> b!1400840 m!1577993))

(assert (=> b!1400007 d!400517))

(declare-fun d!400519 () Bool)

(declare-fun lt!467003 () C!7848)

(assert (=> d!400519 (= lt!467003 (apply!3622 (list!5545 lt!466722) 0))))

(assert (=> d!400519 (= lt!467003 (apply!3623 (c!230324 lt!466722) 0))))

(declare-fun e!894401 () Bool)

(assert (=> d!400519 e!894401))

(declare-fun res!633446 () Bool)

(assert (=> d!400519 (=> (not res!633446) (not e!894401))))

(assert (=> d!400519 (= res!633446 (<= 0 0))))

(assert (=> d!400519 (= (apply!3617 lt!466722 0) lt!467003)))

(declare-fun b!1400841 () Bool)

(assert (=> b!1400841 (= e!894401 (< 0 (size!11702 lt!466722)))))

(assert (= (and d!400519 res!633446) b!1400841))

(assert (=> d!400519 m!1576821))

(assert (=> d!400519 m!1576821))

(declare-fun m!1577995 () Bool)

(assert (=> d!400519 m!1577995))

(declare-fun m!1577997 () Bool)

(assert (=> d!400519 m!1577997))

(declare-fun m!1577999 () Bool)

(assert (=> b!1400841 m!1577999))

(assert (=> b!1400007 d!400519))

(declare-fun b!1400842 () Bool)

(declare-fun e!894406 () Bool)

(assert (=> b!1400842 (= e!894406 (not (= (head!2587 lt!466723) (c!230325 (regex!2465 (rule!4228 t2!34))))))))

(declare-fun d!400521 () Bool)

(declare-fun e!894402 () Bool)

(assert (=> d!400521 e!894402))

(declare-fun c!230502 () Bool)

(assert (=> d!400521 (= c!230502 ((_ is EmptyExpr!3779) (regex!2465 (rule!4228 t2!34))))))

(declare-fun lt!467004 () Bool)

(declare-fun e!894408 () Bool)

(assert (=> d!400521 (= lt!467004 e!894408)))

(declare-fun c!230503 () Bool)

(assert (=> d!400521 (= c!230503 (isEmpty!8649 lt!466723))))

(assert (=> d!400521 (validRegex!1653 (regex!2465 (rule!4228 t2!34)))))

(assert (=> d!400521 (= (matchR!1770 (regex!2465 (rule!4228 t2!34)) lt!466723) lt!467004)))

(declare-fun b!1400843 () Bool)

(declare-fun e!894405 () Bool)

(assert (=> b!1400843 (= e!894405 (not lt!467004))))

(declare-fun b!1400844 () Bool)

(declare-fun e!894403 () Bool)

(assert (=> b!1400844 (= e!894403 e!894406)))

(declare-fun res!633448 () Bool)

(assert (=> b!1400844 (=> res!633448 e!894406)))

(declare-fun call!93501 () Bool)

(assert (=> b!1400844 (= res!633448 call!93501)))

(declare-fun b!1400845 () Bool)

(declare-fun e!894404 () Bool)

(assert (=> b!1400845 (= e!894404 e!894403)))

(declare-fun res!633447 () Bool)

(assert (=> b!1400845 (=> (not res!633447) (not e!894403))))

(assert (=> b!1400845 (= res!633447 (not lt!467004))))

(declare-fun bm!93496 () Bool)

(assert (=> bm!93496 (= call!93501 (isEmpty!8649 lt!466723))))

(declare-fun b!1400846 () Bool)

(assert (=> b!1400846 (= e!894408 (matchR!1770 (derivativeStep!987 (regex!2465 (rule!4228 t2!34)) (head!2587 lt!466723)) (tail!2034 lt!466723)))))

(declare-fun b!1400847 () Bool)

(declare-fun res!633453 () Bool)

(declare-fun e!894407 () Bool)

(assert (=> b!1400847 (=> (not res!633453) (not e!894407))))

(assert (=> b!1400847 (= res!633453 (not call!93501))))

(declare-fun b!1400848 () Bool)

(assert (=> b!1400848 (= e!894402 e!894405)))

(declare-fun c!230504 () Bool)

(assert (=> b!1400848 (= c!230504 ((_ is EmptyLang!3779) (regex!2465 (rule!4228 t2!34))))))

(declare-fun b!1400849 () Bool)

(assert (=> b!1400849 (= e!894402 (= lt!467004 call!93501))))

(declare-fun b!1400850 () Bool)

(assert (=> b!1400850 (= e!894407 (= (head!2587 lt!466723) (c!230325 (regex!2465 (rule!4228 t2!34)))))))

(declare-fun b!1400851 () Bool)

(declare-fun res!633452 () Bool)

(assert (=> b!1400851 (=> res!633452 e!894406)))

(assert (=> b!1400851 (= res!633452 (not (isEmpty!8649 (tail!2034 lt!466723))))))

(declare-fun b!1400852 () Bool)

(declare-fun res!633454 () Bool)

(assert (=> b!1400852 (=> res!633454 e!894404)))

(assert (=> b!1400852 (= res!633454 (not ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t2!34)))))))

(assert (=> b!1400852 (= e!894405 e!894404)))

(declare-fun b!1400853 () Bool)

(assert (=> b!1400853 (= e!894408 (nullable!1229 (regex!2465 (rule!4228 t2!34))))))

(declare-fun b!1400854 () Bool)

(declare-fun res!633450 () Bool)

(assert (=> b!1400854 (=> res!633450 e!894404)))

(assert (=> b!1400854 (= res!633450 e!894407)))

(declare-fun res!633449 () Bool)

(assert (=> b!1400854 (=> (not res!633449) (not e!894407))))

(assert (=> b!1400854 (= res!633449 lt!467004)))

(declare-fun b!1400855 () Bool)

(declare-fun res!633451 () Bool)

(assert (=> b!1400855 (=> (not res!633451) (not e!894407))))

(assert (=> b!1400855 (= res!633451 (isEmpty!8649 (tail!2034 lt!466723)))))

(assert (= (and d!400521 c!230503) b!1400853))

(assert (= (and d!400521 (not c!230503)) b!1400846))

(assert (= (and d!400521 c!230502) b!1400849))

(assert (= (and d!400521 (not c!230502)) b!1400848))

(assert (= (and b!1400848 c!230504) b!1400843))

(assert (= (and b!1400848 (not c!230504)) b!1400852))

(assert (= (and b!1400852 (not res!633454)) b!1400854))

(assert (= (and b!1400854 res!633449) b!1400847))

(assert (= (and b!1400847 res!633453) b!1400855))

(assert (= (and b!1400855 res!633451) b!1400850))

(assert (= (and b!1400854 (not res!633450)) b!1400845))

(assert (= (and b!1400845 res!633447) b!1400844))

(assert (= (and b!1400844 (not res!633448)) b!1400851))

(assert (= (and b!1400851 (not res!633452)) b!1400842))

(assert (= (or b!1400849 b!1400844 b!1400847) bm!93496))

(declare-fun m!1578001 () Bool)

(assert (=> b!1400853 m!1578001))

(assert (=> b!1400850 m!1576799))

(declare-fun m!1578003 () Bool)

(assert (=> b!1400851 m!1578003))

(assert (=> b!1400851 m!1578003))

(declare-fun m!1578005 () Bool)

(assert (=> b!1400851 m!1578005))

(declare-fun m!1578007 () Bool)

(assert (=> bm!93496 m!1578007))

(assert (=> b!1400855 m!1578003))

(assert (=> b!1400855 m!1578003))

(assert (=> b!1400855 m!1578005))

(assert (=> b!1400842 m!1576799))

(assert (=> b!1400846 m!1576799))

(assert (=> b!1400846 m!1576799))

(declare-fun m!1578009 () Bool)

(assert (=> b!1400846 m!1578009))

(assert (=> b!1400846 m!1578003))

(assert (=> b!1400846 m!1578009))

(assert (=> b!1400846 m!1578003))

(declare-fun m!1578011 () Bool)

(assert (=> b!1400846 m!1578011))

(assert (=> d!400521 m!1578007))

(assert (=> d!400521 m!1577881))

(assert (=> b!1399986 d!400521))

(declare-fun b!1400866 () Bool)

(declare-fun b_free!34123 () Bool)

(declare-fun b_next!34827 () Bool)

(assert (=> b!1400866 (= b_free!34123 (not b_next!34827))))

(declare-fun tp!398621 () Bool)

(declare-fun b_and!93803 () Bool)

(assert (=> b!1400866 (= tp!398621 b_and!93803)))

(declare-fun b_free!34125 () Bool)

(declare-fun b_next!34829 () Bool)

(assert (=> b!1400866 (= b_free!34125 (not b_next!34829))))

(declare-fun tb!73077 () Bool)

(declare-fun t!122857 () Bool)

(assert (=> (and b!1400866 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t2!34)))) t!122857) tb!73077))

(declare-fun result!88838 () Bool)

(assert (= result!88838 result!88812))

(assert (=> d!400285 t!122857))

(declare-fun t!122859 () Bool)

(declare-fun tb!73079 () Bool)

(assert (=> (and b!1400866 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t1!34)))) t!122859) tb!73079))

(declare-fun result!88840 () Bool)

(assert (= result!88840 result!88820))

(assert (=> d!400395 t!122859))

(assert (=> b!1400706 t!122859))

(assert (=> b!1400708 t!122857))

(declare-fun tp!398619 () Bool)

(declare-fun b_and!93805 () Bool)

(assert (=> b!1400866 (= tp!398619 (and (=> t!122857 result!88838) (=> t!122859 result!88840) b_and!93805))))

(declare-fun e!894418 () Bool)

(assert (=> b!1400866 (= e!894418 (and tp!398621 tp!398619))))

(declare-fun b!1400865 () Bool)

(declare-fun e!894420 () Bool)

(declare-fun tp!398618 () Bool)

(assert (=> b!1400865 (= e!894420 (and tp!398618 (inv!18543 (tag!2727 (h!19631 (t!122821 rules!2550)))) (inv!18547 (transformation!2465 (h!19631 (t!122821 rules!2550)))) e!894418))))

(declare-fun b!1400864 () Bool)

(declare-fun e!894417 () Bool)

(declare-fun tp!398620 () Bool)

(assert (=> b!1400864 (= e!894417 (and e!894420 tp!398620))))

(assert (=> b!1400001 (= tp!398551 e!894417)))

(assert (= b!1400865 b!1400866))

(assert (= b!1400864 b!1400865))

(assert (= (and b!1400001 ((_ is Cons!14230) (t!122821 rules!2550))) b!1400864))

(declare-fun m!1578013 () Bool)

(assert (=> b!1400865 m!1578013))

(declare-fun m!1578015 () Bool)

(assert (=> b!1400865 m!1578015))

(declare-fun b!1400871 () Bool)

(declare-fun e!894423 () Bool)

(declare-fun tp_is_empty!6807 () Bool)

(declare-fun tp!398624 () Bool)

(assert (=> b!1400871 (= e!894423 (and tp_is_empty!6807 tp!398624))))

(assert (=> b!1400022 (= tp!398554 e!894423)))

(assert (= (and b!1400022 ((_ is Cons!14229) (originalCharacters!3327 t1!34))) b!1400871))

(declare-fun b!1400884 () Bool)

(declare-fun e!894426 () Bool)

(declare-fun tp!398635 () Bool)

(assert (=> b!1400884 (= e!894426 tp!398635)))

(declare-fun b!1400883 () Bool)

(declare-fun tp!398637 () Bool)

(declare-fun tp!398636 () Bool)

(assert (=> b!1400883 (= e!894426 (and tp!398637 tp!398636))))

(assert (=> b!1400000 (= tp!398549 e!894426)))

(declare-fun b!1400885 () Bool)

(declare-fun tp!398639 () Bool)

(declare-fun tp!398638 () Bool)

(assert (=> b!1400885 (= e!894426 (and tp!398639 tp!398638))))

(declare-fun b!1400882 () Bool)

(assert (=> b!1400882 (= e!894426 tp_is_empty!6807)))

(assert (= (and b!1400000 ((_ is ElementMatch!3779) (regex!2465 (h!19631 rules!2550)))) b!1400882))

(assert (= (and b!1400000 ((_ is Concat!6335) (regex!2465 (h!19631 rules!2550)))) b!1400883))

(assert (= (and b!1400000 ((_ is Star!3779) (regex!2465 (h!19631 rules!2550)))) b!1400884))

(assert (= (and b!1400000 ((_ is Union!3779) (regex!2465 (h!19631 rules!2550)))) b!1400885))

(declare-fun b!1400888 () Bool)

(declare-fun e!894427 () Bool)

(declare-fun tp!398640 () Bool)

(assert (=> b!1400888 (= e!894427 tp!398640)))

(declare-fun b!1400887 () Bool)

(declare-fun tp!398642 () Bool)

(declare-fun tp!398641 () Bool)

(assert (=> b!1400887 (= e!894427 (and tp!398642 tp!398641))))

(assert (=> b!1400016 (= tp!398559 e!894427)))

(declare-fun b!1400889 () Bool)

(declare-fun tp!398644 () Bool)

(declare-fun tp!398643 () Bool)

(assert (=> b!1400889 (= e!894427 (and tp!398644 tp!398643))))

(declare-fun b!1400886 () Bool)

(assert (=> b!1400886 (= e!894427 tp_is_empty!6807)))

(assert (= (and b!1400016 ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t1!34)))) b!1400886))

(assert (= (and b!1400016 ((_ is Concat!6335) (regex!2465 (rule!4228 t1!34)))) b!1400887))

(assert (= (and b!1400016 ((_ is Star!3779) (regex!2465 (rule!4228 t1!34)))) b!1400888))

(assert (= (and b!1400016 ((_ is Union!3779) (regex!2465 (rule!4228 t1!34)))) b!1400889))

(declare-fun b!1400892 () Bool)

(declare-fun e!894428 () Bool)

(declare-fun tp!398645 () Bool)

(assert (=> b!1400892 (= e!894428 tp!398645)))

(declare-fun b!1400891 () Bool)

(declare-fun tp!398647 () Bool)

(declare-fun tp!398646 () Bool)

(assert (=> b!1400891 (= e!894428 (and tp!398647 tp!398646))))

(assert (=> b!1399994 (= tp!398550 e!894428)))

(declare-fun b!1400893 () Bool)

(declare-fun tp!398649 () Bool)

(declare-fun tp!398648 () Bool)

(assert (=> b!1400893 (= e!894428 (and tp!398649 tp!398648))))

(declare-fun b!1400890 () Bool)

(assert (=> b!1400890 (= e!894428 tp_is_empty!6807)))

(assert (= (and b!1399994 ((_ is ElementMatch!3779) (regex!2465 (rule!4228 t2!34)))) b!1400890))

(assert (= (and b!1399994 ((_ is Concat!6335) (regex!2465 (rule!4228 t2!34)))) b!1400891))

(assert (= (and b!1399994 ((_ is Star!3779) (regex!2465 (rule!4228 t2!34)))) b!1400892))

(assert (= (and b!1399994 ((_ is Union!3779) (regex!2465 (rule!4228 t2!34)))) b!1400893))

(declare-fun b!1400894 () Bool)

(declare-fun e!894429 () Bool)

(declare-fun tp!398650 () Bool)

(assert (=> b!1400894 (= e!894429 (and tp_is_empty!6807 tp!398650))))

(assert (=> b!1400002 (= tp!398560 e!894429)))

(assert (= (and b!1400002 ((_ is Cons!14229) (originalCharacters!3327 t2!34))) b!1400894))

(declare-fun b_lambda!43993 () Bool)

(assert (= b_lambda!43927 (or b!1399991 b_lambda!43993)))

(declare-fun bs!338216 () Bool)

(declare-fun d!400523 () Bool)

(assert (= bs!338216 (and d!400523 b!1399991)))

(declare-fun ruleValid!616 (LexerInterface!2160 Rule!4730) Bool)

(assert (=> bs!338216 (= (dynLambda!6576 lambda!61263 (rule!4228 t2!34)) (ruleValid!616 thiss!19762 (rule!4228 t2!34)))))

(declare-fun m!1578017 () Bool)

(assert (=> bs!338216 m!1578017))

(assert (=> d!400231 d!400523))

(declare-fun b_lambda!43995 () Bool)

(assert (= b_lambda!43983 (or (and b!1399983 b_free!34109) (and b!1399989 b_free!34113 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) (and b!1399980 b_free!34117 (= (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) (and b!1400866 b_free!34125 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) b_lambda!43995)))

(declare-fun b_lambda!43997 () Bool)

(assert (= b_lambda!43949 (or b!1400008 b_lambda!43997)))

(declare-fun bs!338217 () Bool)

(declare-fun d!400525 () Bool)

(assert (= bs!338217 (and d!400525 b!1400008)))

(assert (=> bs!338217 (= (dynLambda!6576 lambda!61262 (h!19631 rules!2550)) (= (regex!2465 (h!19631 rules!2550)) lt!466702))))

(assert (=> b!1400594 d!400525))

(declare-fun b_lambda!43999 () Bool)

(assert (= b_lambda!43987 (or b!1399992 b_lambda!43999)))

(declare-fun bs!338218 () Bool)

(declare-fun d!400527 () Bool)

(assert (= bs!338218 (and d!400527 b!1399992)))

(declare-fun res!633455 () Bool)

(declare-fun e!894430 () Bool)

(assert (=> bs!338218 (=> (not res!633455) (not e!894430))))

(assert (=> bs!338218 (= res!633455 (validRegex!1653 (h!19633 (map!3158 rules!2550 lambda!61260))))))

(assert (=> bs!338218 (= (dynLambda!6580 lambda!61261 (h!19633 (map!3158 rules!2550 lambda!61260))) e!894430)))

(declare-fun b!1400895 () Bool)

(assert (=> b!1400895 (= e!894430 (matchR!1770 (h!19633 (map!3158 rules!2550 lambda!61260)) lt!466710))))

(assert (= (and bs!338218 res!633455) b!1400895))

(declare-fun m!1578019 () Bool)

(assert (=> bs!338218 m!1578019))

(declare-fun m!1578021 () Bool)

(assert (=> b!1400895 m!1578021))

(assert (=> b!1400754 d!400527))

(declare-fun b_lambda!44001 () Bool)

(assert (= b_lambda!43931 (or b!1399991 b_lambda!44001)))

(declare-fun bs!338219 () Bool)

(declare-fun d!400529 () Bool)

(assert (= bs!338219 (and d!400529 b!1399991)))

(assert (=> bs!338219 (= (dynLambda!6576 lambda!61263 lt!466694) (ruleValid!616 thiss!19762 lt!466694))))

(declare-fun m!1578023 () Bool)

(assert (=> bs!338219 m!1578023))

(assert (=> d!400235 d!400529))

(declare-fun b_lambda!44003 () Bool)

(assert (= b_lambda!43991 (or b!1400025 b_lambda!44003)))

(declare-fun bs!338220 () Bool)

(declare-fun d!400531 () Bool)

(assert (= bs!338220 (and d!400531 b!1400025)))

(declare-fun res!633456 () Bool)

(declare-fun e!894431 () Bool)

(assert (=> bs!338220 (=> (not res!633456) (not e!894431))))

(assert (=> bs!338220 (= res!633456 (matchR!1770 lt!466696 lt!466996))))

(assert (=> bs!338220 (= (dynLambda!6582 lambda!61259 lt!466996) e!894431)))

(declare-fun b!1400896 () Bool)

(assert (=> b!1400896 (= e!894431 (isPrefix!1155 lt!466698 lt!466996))))

(assert (= (and bs!338220 res!633456) b!1400896))

(declare-fun m!1578025 () Bool)

(assert (=> bs!338220 m!1578025))

(declare-fun m!1578027 () Bool)

(assert (=> b!1400896 m!1578027))

(assert (=> d!400505 d!400531))

(declare-fun b_lambda!44005 () Bool)

(assert (= b_lambda!43947 (or b!1400008 b_lambda!44005)))

(declare-fun bs!338221 () Bool)

(declare-fun d!400533 () Bool)

(assert (= bs!338221 (and d!400533 b!1400008)))

(assert (=> bs!338221 (= (dynLambda!6576 lambda!61262 lt!466915) (= (regex!2465 lt!466915) lt!466702))))

(assert (=> d!400363 d!400533))

(declare-fun b_lambda!44007 () Bool)

(assert (= b_lambda!43985 (or (and b!1399983 b_free!34109 (= (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) (and b!1399989 b_free!34113 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) (and b!1399980 b_free!34117) (and b!1400866 b_free!34125 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) b_lambda!44007)))

(declare-fun b_lambda!44009 () Bool)

(assert (= b_lambda!43925 (or b!1399992 b_lambda!44009)))

(declare-fun bs!338222 () Bool)

(declare-fun d!400535 () Bool)

(assert (= bs!338222 (and d!400535 b!1399992)))

(assert (=> bs!338222 (= (dynLambda!6573 lambda!61260 (h!19631 rules!2550)) (regex!2465 (h!19631 rules!2550)))))

(assert (=> b!1400214 d!400535))

(declare-fun b_lambda!44011 () Bool)

(assert (= b_lambda!43929 (or b!1399991 b_lambda!44011)))

(declare-fun bs!338223 () Bool)

(declare-fun d!400537 () Bool)

(assert (= bs!338223 (and d!400537 b!1399991)))

(assert (=> bs!338223 (= (dynLambda!6576 lambda!61263 (rule!4228 t1!34)) (ruleValid!616 thiss!19762 (rule!4228 t1!34)))))

(declare-fun m!1578029 () Bool)

(assert (=> bs!338223 m!1578029))

(assert (=> d!400233 d!400537))

(declare-fun b_lambda!44013 () Bool)

(assert (= b_lambda!43951 (or (and b!1399983 b_free!34109) (and b!1399989 b_free!34113 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) (and b!1399980 b_free!34117 (= (toChars!3615 (transformation!2465 (rule!4228 t2!34))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) (and b!1400866 b_free!34125 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t1!34))))) b_lambda!44013)))

(declare-fun b_lambda!44015 () Bool)

(assert (= b_lambda!43939 (or (and b!1399983 b_free!34109 (= (toChars!3615 (transformation!2465 (rule!4228 t1!34))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) (and b!1399989 b_free!34113 (= (toChars!3615 (transformation!2465 (h!19631 rules!2550))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) (and b!1399980 b_free!34117) (and b!1400866 b_free!34125 (= (toChars!3615 (transformation!2465 (h!19631 (t!122821 rules!2550)))) (toChars!3615 (transformation!2465 (rule!4228 t2!34))))) b_lambda!44015)))

(declare-fun b_lambda!44017 () Bool)

(assert (= b_lambda!43989 (or b!1399992 b_lambda!44017)))

(declare-fun bs!338224 () Bool)

(declare-fun d!400539 () Bool)

(assert (= bs!338224 (and d!400539 b!1399992)))

(declare-fun res!633457 () Bool)

(declare-fun e!894432 () Bool)

(assert (=> bs!338224 (=> (not res!633457) (not e!894432))))

(assert (=> bs!338224 (= res!633457 (validRegex!1653 lt!466967))))

(assert (=> bs!338224 (= (dynLambda!6580 lambda!61261 lt!466967) e!894432)))

(declare-fun b!1400897 () Bool)

(assert (=> b!1400897 (= e!894432 (matchR!1770 lt!466967 lt!466710))))

(assert (= (and bs!338224 res!633457) b!1400897))

(declare-fun m!1578031 () Bool)

(assert (=> bs!338224 m!1578031))

(declare-fun m!1578033 () Bool)

(assert (=> b!1400897 m!1578033))

(assert (=> d!400457 d!400539))

(check-sat (not b!1400885) (not b!1400790) (not b!1400891) (not d!400487) (not b!1400883) (not b_lambda!44007) (not b!1400864) (not b!1400769) (not b!1400531) b_and!93743 (not d!400267) (not b!1400757) (not b!1400415) (not b!1400339) (not b!1400850) (not d!400453) (not b!1400714) (not bm!93487) (not b_lambda!44001) (not b!1400889) (not d!400269) b_and!93803 (not b!1400404) (not b!1400206) (not bm!93486) (not b!1400350) (not tb!73061) (not d!400397) (not d!400485) (not d!400473) (not b!1400770) (not b!1400840) (not b!1400789) (not b!1400894) (not b!1400214) (not bm!93471) (not d!400231) (not b_lambda!43997) (not b!1400237) (not b!1400774) (not b!1400832) (not b!1400732) (not d!400381) (not b_lambda!44011) (not b_next!34817) (not d!400471) (not b_lambda!43995) (not d!400463) (not b!1400221) (not d!400235) (not b!1400230) (not d!400215) (not b!1400710) (not b!1400715) (not d!400497) (not b!1400610) (not b!1400233) (not d!400509) (not d!400409) (not d!400517) (not b!1400884) (not d!400505) (not bs!338219) (not d!400483) (not d!400507) (not b!1400829) (not d!400437) (not d!400455) (not b!1400194) (not b!1400733) (not d!400515) (not b!1400699) (not d!400407) (not d!400311) (not b_lambda!44009) (not b!1400155) (not bm!93494) (not d!400375) (not b_lambda!43993) (not b!1400201) (not bm!93496) (not bs!338224) (not b!1400198) (not b!1400627) (not bm!93491) (not b!1400810) (not b!1400532) (not b!1400823) (not bs!338220) (not d!400183) (not bm!93493) (not b!1400190) (not bm!93455) (not b!1400199) (not d!400283) (not b!1400226) (not d!400495) (not tb!73067) (not b!1400701) (not b!1400628) b_and!93797 (not b!1400865) (not b_lambda!44013) (not b!1400235) (not b_lambda!44003) (not d!400217) (not b!1400805) (not b!1400591) (not b!1400698) (not b!1400549) (not b!1400888) (not b!1400794) (not bs!338223) (not b!1400341) (not b!1400761) (not b!1400707) (not d!400285) (not d!400461) (not b!1400529) (not b!1400822) (not b_next!34821) (not b!1400895) (not b!1400796) (not b!1400635) (not b_next!34827) (not b!1400871) (not b!1400798) (not b!1400753) (not b!1400855) b_and!93739 (not d!400521) (not d!400467) (not d!400185) (not d!400363) (not d!400465) (not d!400219) (not b!1400161) (not b!1400842) (not d!400341) (not b!1400595) (not b!1400846) (not bm!93459) (not b!1400765) (not b!1400887) (not b!1400772) (not b!1400393) (not b_lambda!44017) (not bm!93454) (not d!400439) (not b!1400712) (not d!400449) (not d!400493) (not d!400457) b_and!93801 (not d!400395) (not b!1400422) (not b!1400217) (not b!1400708) (not b!1400851) (not d!400501) (not b!1400812) (not b!1400203) (not b!1400342) (not b!1400893) (not bs!338218) (not bm!93495) (not b!1400841) (not b!1400792) (not d!400233) (not b!1400718) (not d!400313) (not d!400441) (not b!1400758) (not b!1400729) (not d!400229) (not b_next!34813) (not d!400237) (not b!1400734) (not d!400351) (not b_next!34829) (not b!1400593) (not b!1400807) b_and!93747 b_and!93805 (not d!400481) (not b!1400808) (not b!1400530) (not b!1400706) (not b!1400335) (not d!400479) (not b_lambda!44015) (not b!1400228) (not b!1400716) (not d!400459) (not b!1400337) (not d!400239) (not b!1400804) tp_is_empty!6807 (not b!1400343) (not b!1400776) b_and!93799 (not d!400489) (not b!1400153) (not b!1400709) (not d!400223) (not b_lambda!43999) (not b!1400626) (not bm!93490) (not d!400279) (not b!1400340) (not b!1400236) (not b!1400800) (not d!400519) (not d!400293) (not bm!93470) (not b!1400740) (not d!400503) (not bs!338216) (not d!400295) (not bm!93469) (not b_next!34815) (not d!400227) (not b!1400793) (not d!400337) (not b!1400336) (not b!1400795) (not d!400443) (not b!1400711) (not b_next!34819) (not b!1400609) (not d!400213) (not d!400387) (not b_lambda!44005) (not d!400513) (not b!1400892) (not b!1400801) (not b!1400853) (not bm!93489) (not d!400225) (not b!1400405) (not b!1400896) (not b!1400897) (not b!1400225) (not b_next!34811) (not b!1400154) (not d!400221) (not b!1400238) (not b!1400717) (not b!1400234))
(check-sat b_and!93743 b_and!93803 (not b_next!34817) b_and!93797 b_and!93801 b_and!93799 (not b_next!34815) (not b_next!34819) (not b_next!34811) (not b_next!34821) (not b_next!34827) b_and!93739 (not b_next!34813) (not b_next!34829) b_and!93747 b_and!93805)

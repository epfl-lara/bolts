; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115450 () Bool)

(assert start!115450)

(declare-fun b!1306894 () Bool)

(declare-fun b_free!31339 () Bool)

(declare-fun b_next!32043 () Bool)

(assert (=> b!1306894 (= b_free!31339 (not b_next!32043))))

(declare-fun tp!381225 () Bool)

(declare-fun b_and!87239 () Bool)

(assert (=> b!1306894 (= tp!381225 b_and!87239)))

(declare-fun b_free!31341 () Bool)

(declare-fun b_next!32045 () Bool)

(assert (=> b!1306894 (= b_free!31341 (not b_next!32045))))

(declare-fun tp!381219 () Bool)

(declare-fun b_and!87241 () Bool)

(assert (=> b!1306894 (= tp!381219 b_and!87241)))

(declare-fun b!1306899 () Bool)

(declare-fun b_free!31343 () Bool)

(declare-fun b_next!32047 () Bool)

(assert (=> b!1306899 (= b_free!31343 (not b_next!32047))))

(declare-fun tp!381221 () Bool)

(declare-fun b_and!87243 () Bool)

(assert (=> b!1306899 (= tp!381221 b_and!87243)))

(declare-fun b_free!31345 () Bool)

(declare-fun b_next!32049 () Bool)

(assert (=> b!1306899 (= b_free!31345 (not b_next!32049))))

(declare-fun tp!381227 () Bool)

(declare-fun b_and!87245 () Bool)

(assert (=> b!1306899 (= tp!381227 b_and!87245)))

(declare-fun b!1306913 () Bool)

(declare-fun b_free!31347 () Bool)

(declare-fun b_next!32051 () Bool)

(assert (=> b!1306913 (= b_free!31347 (not b_next!32051))))

(declare-fun tp!381228 () Bool)

(declare-fun b_and!87247 () Bool)

(assert (=> b!1306913 (= tp!381228 b_and!87247)))

(declare-fun b_free!31349 () Bool)

(declare-fun b_next!32053 () Bool)

(assert (=> b!1306913 (= b_free!31349 (not b_next!32053))))

(declare-fun tp!381226 () Bool)

(declare-fun b_and!87249 () Bool)

(assert (=> b!1306913 (= tp!381226 b_and!87249)))

(declare-fun b!1306905 () Bool)

(assert (=> b!1306905 true))

(assert (=> b!1306905 true))

(declare-fun b!1306915 () Bool)

(assert (=> b!1306915 true))

(declare-fun b!1306926 () Bool)

(assert (=> b!1306926 true))

(declare-fun e!838081 () Bool)

(assert (=> b!1306894 (= e!838081 (and tp!381225 tp!381219))))

(declare-fun b!1306895 () Bool)

(declare-fun tp!381223 () Bool)

(declare-fun e!838078 () Bool)

(declare-datatypes ((List!13256 0))(
  ( (Nil!13190) (Cons!13190 (h!18591 (_ BitVec 16)) (t!117879 List!13256)) )
))
(declare-datatypes ((TokenValue!2371 0))(
  ( (FloatLiteralValue!4742 (text!17042 List!13256)) (TokenValueExt!2370 (__x!8571 Int)) (Broken!11855 (value!74615 List!13256)) (Object!2436) (End!2371) (Def!2371) (Underscore!2371) (Match!2371) (Else!2371) (Error!2371) (Case!2371) (If!2371) (Extends!2371) (Abstract!2371) (Class!2371) (Val!2371) (DelimiterValue!4742 (del!2431 List!13256)) (KeywordValue!2377 (value!74616 List!13256)) (CommentValue!4742 (value!74617 List!13256)) (WhitespaceValue!4742 (value!74618 List!13256)) (IndentationValue!2371 (value!74619 List!13256)) (String!16090) (Int32!2371) (Broken!11856 (value!74620 List!13256)) (Boolean!2372) (Unit!19279) (OperatorValue!2374 (op!2431 List!13256)) (IdentifierValue!4742 (value!74621 List!13256)) (IdentifierValue!4743 (value!74622 List!13256)) (WhitespaceValue!4743 (value!74623 List!13256)) (True!4742) (False!4742) (Broken!11857 (value!74624 List!13256)) (Broken!11858 (value!74625 List!13256)) (True!4743) (RightBrace!2371) (RightBracket!2371) (Colon!2371) (Null!2371) (Comma!2371) (LeftBracket!2371) (False!4743) (LeftBrace!2371) (ImaginaryLiteralValue!2371 (text!17043 List!13256)) (StringLiteralValue!7113 (value!74626 List!13256)) (EOFValue!2371 (value!74627 List!13256)) (IdentValue!2371 (value!74628 List!13256)) (DelimiterValue!4743 (value!74629 List!13256)) (DedentValue!2371 (value!74630 List!13256)) (NewLineValue!2371 (value!74631 List!13256)) (IntegerValue!7113 (value!74632 (_ BitVec 32)) (text!17044 List!13256)) (IntegerValue!7114 (value!74633 Int) (text!17045 List!13256)) (Times!2371) (Or!2371) (Equal!2371) (Minus!2371) (Broken!11859 (value!74634 List!13256)) (And!2371) (Div!2371) (LessEqual!2371) (Mod!2371) (Concat!5966) (Not!2371) (Plus!2371) (SpaceValue!2371 (value!74635 List!13256)) (IntegerValue!7115 (value!74636 Int) (text!17046 List!13256)) (StringLiteralValue!7114 (text!17047 List!13256)) (FloatLiteralValue!4743 (text!17048 List!13256)) (BytesLiteralValue!2371 (value!74637 List!13256)) (CommentValue!4743 (value!74638 List!13256)) (StringLiteralValue!7115 (value!74639 List!13256)) (ErrorTokenValue!2371 (msg!2432 List!13256)) )
))
(declare-datatypes ((C!7480 0))(
  ( (C!7481 (val!4300 Int)) )
))
(declare-datatypes ((List!13257 0))(
  ( (Nil!13191) (Cons!13191 (h!18592 C!7480) (t!117880 List!13257)) )
))
(declare-datatypes ((IArray!8669 0))(
  ( (IArray!8670 (innerList!4392 List!13257)) )
))
(declare-datatypes ((Conc!4332 0))(
  ( (Node!4332 (left!11342 Conc!4332) (right!11672 Conc!4332) (csize!8894 Int) (cheight!4543 Int)) (Leaf!6669 (xs!7047 IArray!8669) (csize!8895 Int)) (Empty!4332) )
))
(declare-datatypes ((BalanceConc!8604 0))(
  ( (BalanceConc!8605 (c!214748 Conc!4332)) )
))
(declare-datatypes ((Regex!3595 0))(
  ( (ElementMatch!3595 (c!214749 C!7480)) (Concat!5967 (regOne!7702 Regex!3595) (regTwo!7702 Regex!3595)) (EmptyExpr!3595) (Star!3595 (reg!3924 Regex!3595)) (EmptyLang!3595) (Union!3595 (regOne!7703 Regex!3595) (regTwo!7703 Regex!3595)) )
))
(declare-datatypes ((String!16091 0))(
  ( (String!16092 (value!74640 String)) )
))
(declare-datatypes ((TokenValueInjection!4402 0))(
  ( (TokenValueInjection!4403 (toValue!3500 Int) (toChars!3359 Int)) )
))
(declare-datatypes ((Rule!4362 0))(
  ( (Rule!4363 (regex!2281 Regex!3595) (tag!2543 String!16091) (isSeparator!2281 Bool) (transformation!2281 TokenValueInjection!4402)) )
))
(declare-datatypes ((Token!4224 0))(
  ( (Token!4225 (value!74641 TokenValue!2371) (rule!4020 Rule!4362) (size!10742 Int) (originalCharacters!3143 List!13257)) )
))
(declare-fun t2!34 () Token!4224)

(declare-fun e!838090 () Bool)

(declare-fun inv!21 (TokenValue!2371) Bool)

(assert (=> b!1306895 (= e!838090 (and (inv!21 (value!74641 t2!34)) e!838078 tp!381223))))

(declare-fun b!1306896 () Bool)

(declare-fun res!586023 () Bool)

(declare-fun e!838091 () Bool)

(assert (=> b!1306896 (=> (not res!586023) (not e!838091))))

(declare-datatypes ((LexerInterface!1976 0))(
  ( (LexerInterfaceExt!1973 (__x!8572 Int)) (Lexer!1974) )
))
(declare-fun thiss!19762 () LexerInterface!1976)

(declare-datatypes ((List!13258 0))(
  ( (Nil!13192) (Cons!13192 (h!18593 Rule!4362) (t!117881 List!13258)) )
))
(declare-fun rules!2550 () List!13258)

(declare-fun rulesProduceIndividualToken!945 (LexerInterface!1976 List!13258 Token!4224) Bool)

(assert (=> b!1306896 (= res!586023 (rulesProduceIndividualToken!945 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1306897 () Bool)

(declare-fun res!586028 () Bool)

(declare-fun e!838093 () Bool)

(assert (=> b!1306897 (=> (not res!586028) (not e!838093))))

(declare-fun sepAndNonSepRulesDisjointChars!654 (List!13258 List!13258) Bool)

(assert (=> b!1306897 (= res!586028 (sepAndNonSepRulesDisjointChars!654 rules!2550 rules!2550))))

(declare-fun tp!381222 () Bool)

(declare-fun e!838080 () Bool)

(declare-fun b!1306898 () Bool)

(declare-fun inv!17591 (String!16091) Bool)

(declare-fun inv!17594 (TokenValueInjection!4402) Bool)

(assert (=> b!1306898 (= e!838078 (and tp!381222 (inv!17591 (tag!2543 (rule!4020 t2!34))) (inv!17594 (transformation!2281 (rule!4020 t2!34))) e!838080))))

(declare-fun e!838082 () Bool)

(assert (=> b!1306899 (= e!838082 (and tp!381221 tp!381227))))

(declare-fun b!1306900 () Bool)

(declare-fun res!586010 () Bool)

(declare-fun e!838092 () Bool)

(assert (=> b!1306900 (=> res!586010 e!838092)))

(declare-fun t1!34 () Token!4224)

(declare-fun contains!2253 (List!13258 Rule!4362) Bool)

(assert (=> b!1306900 (= res!586010 (not (contains!2253 rules!2550 (rule!4020 t1!34))))))

(declare-fun b!1306901 () Bool)

(declare-fun res!586026 () Bool)

(assert (=> b!1306901 (=> res!586026 e!838092)))

(declare-datatypes ((List!13259 0))(
  ( (Nil!13193) (Cons!13193 (h!18594 Token!4224) (t!117882 List!13259)) )
))
(declare-datatypes ((IArray!8671 0))(
  ( (IArray!8672 (innerList!4393 List!13259)) )
))
(declare-datatypes ((Conc!4333 0))(
  ( (Node!4333 (left!11343 Conc!4333) (right!11673 Conc!4333) (csize!8896 Int) (cheight!4544 Int)) (Leaf!6670 (xs!7048 IArray!8671) (csize!8897 Int)) (Empty!4333) )
))
(declare-datatypes ((BalanceConc!8606 0))(
  ( (BalanceConc!8607 (c!214750 Conc!4333)) )
))
(declare-datatypes ((tuple2!12782 0))(
  ( (tuple2!12783 (_1!7277 BalanceConc!8606) (_2!7277 BalanceConc!8604)) )
))
(declare-fun lt!430106 () tuple2!12782)

(declare-fun isEmpty!7806 (BalanceConc!8604) Bool)

(assert (=> b!1306901 (= res!586026 (not (isEmpty!7806 (_2!7277 lt!430106))))))

(declare-fun b!1306902 () Bool)

(declare-fun tp!381224 () Bool)

(declare-fun e!838074 () Bool)

(assert (=> b!1306902 (= e!838074 (and tp!381224 (inv!17591 (tag!2543 (h!18593 rules!2550))) (inv!17594 (transformation!2281 (h!18593 rules!2550))) e!838082))))

(declare-fun b!1306903 () Bool)

(declare-fun res!586025 () Bool)

(assert (=> b!1306903 (=> (not res!586025) (not e!838091))))

(assert (=> b!1306903 (= res!586025 (not (= (isSeparator!2281 (rule!4020 t1!34)) (isSeparator!2281 (rule!4020 t2!34)))))))

(declare-fun b!1306904 () Bool)

(declare-fun e!838087 () Bool)

(declare-fun e!838075 () Bool)

(assert (=> b!1306904 (= e!838087 e!838075)))

(declare-fun res!586031 () Bool)

(assert (=> b!1306904 (=> res!586031 e!838075)))

(declare-fun lt!430090 () Regex!3595)

(declare-fun lambda!52317 () Int)

(declare-datatypes ((List!13260 0))(
  ( (Nil!13194) (Cons!13194 (h!18595 Regex!3595) (t!117883 List!13260)) )
))
(declare-fun contains!2254 (List!13260 Regex!3595) Bool)

(declare-fun map!2888 (List!13258 Int) List!13260)

(assert (=> b!1306904 (= res!586031 (not (contains!2254 (map!2888 rules!2550 lambda!52317) lt!430090)))))

(declare-fun lambda!52318 () Int)

(declare-fun getWitness!156 (List!13260 Int) Regex!3595)

(assert (=> b!1306904 (= lt!430090 (getWitness!156 (map!2888 rules!2550 lambda!52317) lambda!52318))))

(declare-fun res!586020 () Bool)

(assert (=> start!115450 (=> (not res!586020) (not e!838091))))

(get-info :version)

(assert (=> start!115450 (= res!586020 ((_ is Lexer!1974) thiss!19762))))

(assert (=> start!115450 e!838091))

(assert (=> start!115450 true))

(declare-fun e!838088 () Bool)

(assert (=> start!115450 e!838088))

(declare-fun e!838086 () Bool)

(declare-fun inv!17595 (Token!4224) Bool)

(assert (=> start!115450 (and (inv!17595 t1!34) e!838086)))

(assert (=> start!115450 (and (inv!17595 t2!34) e!838090)))

(declare-fun e!838085 () Bool)

(declare-fun e!838079 () Bool)

(assert (=> b!1306905 (= e!838085 (not e!838079))))

(declare-fun res!586033 () Bool)

(assert (=> b!1306905 (=> res!586033 e!838079)))

(declare-fun lambda!52316 () Int)

(declare-fun Exists!753 (Int) Bool)

(assert (=> b!1306905 (= res!586033 (not (Exists!753 lambda!52316)))))

(assert (=> b!1306905 (Exists!753 lambda!52316)))

(declare-datatypes ((Unit!19280 0))(
  ( (Unit!19281) )
))
(declare-fun lt!430095 () Unit!19280)

(declare-fun lt!430091 () Regex!3595)

(declare-fun lt!430098 () List!13257)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!71 (Regex!3595 List!13257) Unit!19280)

(assert (=> b!1306905 (= lt!430095 (lemmaPrefixMatchThenExistsStringThatMatches!71 lt!430091 lt!430098))))

(declare-fun b!1306906 () Bool)

(declare-fun e!838073 () Bool)

(assert (=> b!1306906 (= e!838079 e!838073)))

(declare-fun res!586024 () Bool)

(assert (=> b!1306906 (=> res!586024 e!838073)))

(declare-fun lt!430104 () List!13257)

(declare-fun ++!3358 (List!13257 List!13257) List!13257)

(declare-fun getSuffix!451 (List!13257 List!13257) List!13257)

(assert (=> b!1306906 (= res!586024 (not (= lt!430104 (++!3358 lt!430098 (getSuffix!451 lt!430104 lt!430098)))))))

(declare-fun pickWitness!58 (Int) List!13257)

(assert (=> b!1306906 (= lt!430104 (pickWitness!58 lambda!52316))))

(declare-fun b!1306907 () Bool)

(declare-fun e!838094 () Bool)

(assert (=> b!1306907 (= e!838073 e!838094)))

(declare-fun res!586030 () Bool)

(assert (=> b!1306907 (=> res!586030 e!838094)))

(declare-fun lt!430105 () C!7480)

(declare-fun contains!2255 (List!13257 C!7480) Bool)

(assert (=> b!1306907 (= res!586030 (not (contains!2255 lt!430098 lt!430105)))))

(declare-fun lt!430099 () BalanceConc!8604)

(declare-fun apply!2961 (BalanceConc!8604 Int) C!7480)

(assert (=> b!1306907 (= lt!430105 (apply!2961 lt!430099 0))))

(declare-fun b!1306908 () Bool)

(assert (=> b!1306908 (= e!838092 true)))

(declare-fun lt!430092 () BalanceConc!8606)

(declare-fun singletonSeq!852 (Token!4224) BalanceConc!8606)

(assert (=> b!1306908 (= lt!430092 (singletonSeq!852 t2!34))))

(declare-fun b!1306909 () Bool)

(declare-fun tp!381229 () Bool)

(declare-fun e!838077 () Bool)

(assert (=> b!1306909 (= e!838086 (and (inv!21 (value!74641 t1!34)) e!838077 tp!381229))))

(declare-fun b!1306910 () Bool)

(assert (=> b!1306910 (= e!838091 e!838093)))

(declare-fun res!586019 () Bool)

(assert (=> b!1306910 (=> (not res!586019) (not e!838093))))

(declare-fun lt!430102 () BalanceConc!8604)

(declare-fun size!10743 (BalanceConc!8604) Int)

(assert (=> b!1306910 (= res!586019 (> (size!10743 lt!430102) 0))))

(declare-fun charsOf!1253 (Token!4224) BalanceConc!8604)

(assert (=> b!1306910 (= lt!430102 (charsOf!1253 t2!34))))

(declare-fun b!1306911 () Bool)

(declare-fun res!586012 () Bool)

(assert (=> b!1306911 (=> res!586012 e!838094)))

(assert (=> b!1306911 (= res!586012 (not (contains!2255 lt!430104 lt!430105)))))

(declare-fun b!1306912 () Bool)

(declare-fun res!586032 () Bool)

(assert (=> b!1306912 (=> (not res!586032) (not e!838091))))

(declare-fun rulesInvariant!1846 (LexerInterface!1976 List!13258) Bool)

(assert (=> b!1306912 (= res!586032 (rulesInvariant!1846 thiss!19762 rules!2550))))

(assert (=> b!1306913 (= e!838080 (and tp!381228 tp!381226))))

(declare-fun b!1306914 () Bool)

(declare-fun res!586014 () Bool)

(assert (=> b!1306914 (=> (not res!586014) (not e!838091))))

(assert (=> b!1306914 (= res!586014 (rulesProduceIndividualToken!945 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1306915 (= e!838094 e!838087)))

(declare-fun res!586021 () Bool)

(assert (=> b!1306915 (=> res!586021 e!838087)))

(declare-fun exists!264 (List!13260 Int) Bool)

(assert (=> b!1306915 (= res!586021 (not (exists!264 (map!2888 rules!2550 lambda!52317) lambda!52318)))))

(declare-fun lt!430089 () List!13260)

(assert (=> b!1306915 (exists!264 lt!430089 lambda!52318)))

(declare-fun lt!430101 () Unit!19280)

(declare-fun matchRGenUnionSpec!32 (Regex!3595 List!13260 List!13257) Unit!19280)

(assert (=> b!1306915 (= lt!430101 (matchRGenUnionSpec!32 lt!430091 lt!430089 lt!430104))))

(assert (=> b!1306915 (= lt!430089 (map!2888 rules!2550 lambda!52317))))

(declare-fun b!1306916 () Bool)

(declare-fun res!586017 () Bool)

(assert (=> b!1306916 (=> res!586017 e!838092)))

(declare-fun lt!430100 () List!13257)

(declare-datatypes ((tuple2!12784 0))(
  ( (tuple2!12785 (_1!7278 Token!4224) (_2!7278 List!13257)) )
))
(declare-datatypes ((Option!2546 0))(
  ( (None!2545) (Some!2545 (v!21051 tuple2!12784)) )
))
(declare-fun maxPrefix!986 (LexerInterface!1976 List!13258 List!13257) Option!2546)

(assert (=> b!1306916 (= res!586017 (not (= (maxPrefix!986 thiss!19762 rules!2550 lt!430100) (Some!2545 (tuple2!12785 t1!34 Nil!13191)))))))

(declare-fun b!1306917 () Bool)

(assert (=> b!1306917 (= e!838093 e!838085)))

(declare-fun res!586011 () Bool)

(assert (=> b!1306917 (=> (not res!586011) (not e!838085))))

(declare-fun prefixMatch!108 (Regex!3595 List!13257) Bool)

(assert (=> b!1306917 (= res!586011 (prefixMatch!108 lt!430091 lt!430098))))

(declare-fun rulesRegex!166 (LexerInterface!1976 List!13258) Regex!3595)

(assert (=> b!1306917 (= lt!430091 (rulesRegex!166 thiss!19762 rules!2550))))

(declare-fun lt!430096 () C!7480)

(assert (=> b!1306917 (= lt!430098 (++!3358 lt!430100 (Cons!13191 lt!430096 Nil!13191)))))

(assert (=> b!1306917 (= lt!430096 (apply!2961 lt!430102 0))))

(declare-fun list!4946 (BalanceConc!8604) List!13257)

(assert (=> b!1306917 (= lt!430100 (list!4946 lt!430099))))

(assert (=> b!1306917 (= lt!430099 (charsOf!1253 t1!34))))

(declare-fun b!1306918 () Bool)

(declare-fun tp!381230 () Bool)

(assert (=> b!1306918 (= e!838077 (and tp!381230 (inv!17591 (tag!2543 (rule!4020 t1!34))) (inv!17594 (transformation!2281 (rule!4020 t1!34))) e!838081))))

(declare-fun b!1306919 () Bool)

(declare-fun res!586034 () Bool)

(assert (=> b!1306919 (=> (not res!586034) (not e!838091))))

(declare-fun isEmpty!7807 (List!13258) Bool)

(assert (=> b!1306919 (= res!586034 (not (isEmpty!7807 rules!2550)))))

(declare-fun b!1306920 () Bool)

(declare-fun res!586016 () Bool)

(assert (=> b!1306920 (=> res!586016 e!838094)))

(assert (=> b!1306920 (= res!586016 (not (contains!2255 lt!430104 lt!430096)))))

(declare-fun b!1306921 () Bool)

(declare-fun tp!381220 () Bool)

(assert (=> b!1306921 (= e!838088 (and e!838074 tp!381220))))

(declare-fun b!1306922 () Bool)

(declare-fun e!838076 () Bool)

(assert (=> b!1306922 (= e!838076 e!838092)))

(declare-fun res!586015 () Bool)

(assert (=> b!1306922 (=> res!586015 e!838092)))

(declare-fun lt!430093 () List!13259)

(declare-fun list!4947 (BalanceConc!8606) List!13259)

(assert (=> b!1306922 (= res!586015 (not (= (list!4947 (_1!7277 lt!430106)) lt!430093)))))

(assert (=> b!1306922 (= lt!430093 (Cons!13193 t1!34 Nil!13193))))

(declare-fun lt!430097 () BalanceConc!8604)

(declare-fun lex!811 (LexerInterface!1976 List!13258 BalanceConc!8604) tuple2!12782)

(assert (=> b!1306922 (= lt!430106 (lex!811 thiss!19762 rules!2550 lt!430097))))

(declare-fun print!750 (LexerInterface!1976 BalanceConc!8606) BalanceConc!8604)

(assert (=> b!1306922 (= lt!430097 (print!750 thiss!19762 (singletonSeq!852 t1!34)))))

(declare-fun lt!430103 () Rule!4362)

(declare-fun lambda!52319 () Int)

(declare-fun getWitness!157 (List!13258 Int) Rule!4362)

(assert (=> b!1306922 (= lt!430103 (getWitness!157 rules!2550 lambda!52319))))

(declare-fun b!1306923 () Bool)

(declare-fun res!586027 () Bool)

(assert (=> b!1306923 (=> res!586027 e!838094)))

(declare-fun matchR!1597 (Regex!3595 List!13257) Bool)

(assert (=> b!1306923 (= res!586027 (not (matchR!1597 lt!430091 lt!430104)))))

(declare-fun b!1306924 () Bool)

(declare-fun res!586013 () Bool)

(assert (=> b!1306924 (=> (not res!586013) (not e!838093))))

(declare-fun separableTokensPredicate!259 (LexerInterface!1976 Token!4224 Token!4224 List!13258) Bool)

(assert (=> b!1306924 (= res!586013 (not (separableTokensPredicate!259 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1306925 () Bool)

(declare-fun res!586018 () Bool)

(assert (=> b!1306925 (=> res!586018 e!838092)))

(declare-datatypes ((tuple2!12786 0))(
  ( (tuple2!12787 (_1!7279 List!13259) (_2!7279 List!13257)) )
))
(declare-fun lexList!514 (LexerInterface!1976 List!13258 List!13257) tuple2!12786)

(assert (=> b!1306925 (= res!586018 (not (= (lexList!514 thiss!19762 rules!2550 (list!4946 lt!430097)) (tuple2!12787 lt!430093 Nil!13191))))))

(assert (=> b!1306926 (= e!838075 e!838076)))

(declare-fun res!586022 () Bool)

(assert (=> b!1306926 (=> res!586022 e!838076)))

(declare-fun exists!265 (List!13258 Int) Bool)

(assert (=> b!1306926 (= res!586022 (not (exists!265 rules!2550 lambda!52319)))))

(assert (=> b!1306926 (exists!265 rules!2550 lambda!52319)))

(declare-fun lt!430094 () Unit!19280)

(declare-fun lemmaMapContains!24 (List!13258 Int Regex!3595) Unit!19280)

(assert (=> b!1306926 (= lt!430094 (lemmaMapContains!24 rules!2550 lambda!52317 lt!430090))))

(declare-fun b!1306927 () Bool)

(declare-fun res!586029 () Bool)

(assert (=> b!1306927 (=> res!586029 e!838094)))

(assert (=> b!1306927 (= res!586029 (not (contains!2255 lt!430098 lt!430096)))))

(assert (= (and start!115450 res!586020) b!1306919))

(assert (= (and b!1306919 res!586034) b!1306912))

(assert (= (and b!1306912 res!586032) b!1306914))

(assert (= (and b!1306914 res!586014) b!1306896))

(assert (= (and b!1306896 res!586023) b!1306903))

(assert (= (and b!1306903 res!586025) b!1306910))

(assert (= (and b!1306910 res!586019) b!1306897))

(assert (= (and b!1306897 res!586028) b!1306924))

(assert (= (and b!1306924 res!586013) b!1306917))

(assert (= (and b!1306917 res!586011) b!1306905))

(assert (= (and b!1306905 (not res!586033)) b!1306906))

(assert (= (and b!1306906 (not res!586024)) b!1306907))

(assert (= (and b!1306907 (not res!586030)) b!1306911))

(assert (= (and b!1306911 (not res!586012)) b!1306927))

(assert (= (and b!1306927 (not res!586029)) b!1306920))

(assert (= (and b!1306920 (not res!586016)) b!1306923))

(assert (= (and b!1306923 (not res!586027)) b!1306915))

(assert (= (and b!1306915 (not res!586021)) b!1306904))

(assert (= (and b!1306904 (not res!586031)) b!1306926))

(assert (= (and b!1306926 (not res!586022)) b!1306922))

(assert (= (and b!1306922 (not res!586015)) b!1306901))

(assert (= (and b!1306901 (not res!586026)) b!1306925))

(assert (= (and b!1306925 (not res!586018)) b!1306916))

(assert (= (and b!1306916 (not res!586017)) b!1306900))

(assert (= (and b!1306900 (not res!586010)) b!1306908))

(assert (= b!1306902 b!1306899))

(assert (= b!1306921 b!1306902))

(assert (= (and start!115450 ((_ is Cons!13192) rules!2550)) b!1306921))

(assert (= b!1306918 b!1306894))

(assert (= b!1306909 b!1306918))

(assert (= start!115450 b!1306909))

(assert (= b!1306898 b!1306913))

(assert (= b!1306895 b!1306898))

(assert (= start!115450 b!1306895))

(declare-fun m!1458519 () Bool)

(assert (=> b!1306925 m!1458519))

(assert (=> b!1306925 m!1458519))

(declare-fun m!1458521 () Bool)

(assert (=> b!1306925 m!1458521))

(declare-fun m!1458523 () Bool)

(assert (=> b!1306914 m!1458523))

(declare-fun m!1458525 () Bool)

(assert (=> b!1306923 m!1458525))

(declare-fun m!1458527 () Bool)

(assert (=> b!1306896 m!1458527))

(declare-fun m!1458529 () Bool)

(assert (=> b!1306895 m!1458529))

(declare-fun m!1458531 () Bool)

(assert (=> b!1306902 m!1458531))

(declare-fun m!1458533 () Bool)

(assert (=> b!1306902 m!1458533))

(declare-fun m!1458535 () Bool)

(assert (=> b!1306920 m!1458535))

(declare-fun m!1458537 () Bool)

(assert (=> b!1306926 m!1458537))

(assert (=> b!1306926 m!1458537))

(declare-fun m!1458539 () Bool)

(assert (=> b!1306926 m!1458539))

(declare-fun m!1458541 () Bool)

(assert (=> b!1306897 m!1458541))

(declare-fun m!1458543 () Bool)

(assert (=> b!1306901 m!1458543))

(declare-fun m!1458545 () Bool)

(assert (=> b!1306927 m!1458545))

(declare-fun m!1458547 () Bool)

(assert (=> b!1306915 m!1458547))

(assert (=> b!1306915 m!1458547))

(declare-fun m!1458549 () Bool)

(assert (=> b!1306915 m!1458549))

(declare-fun m!1458551 () Bool)

(assert (=> b!1306915 m!1458551))

(declare-fun m!1458553 () Bool)

(assert (=> b!1306915 m!1458553))

(assert (=> b!1306915 m!1458547))

(declare-fun m!1458555 () Bool)

(assert (=> b!1306910 m!1458555))

(declare-fun m!1458557 () Bool)

(assert (=> b!1306910 m!1458557))

(assert (=> b!1306904 m!1458547))

(assert (=> b!1306904 m!1458547))

(declare-fun m!1458559 () Bool)

(assert (=> b!1306904 m!1458559))

(assert (=> b!1306904 m!1458547))

(assert (=> b!1306904 m!1458547))

(declare-fun m!1458561 () Bool)

(assert (=> b!1306904 m!1458561))

(declare-fun m!1458563 () Bool)

(assert (=> b!1306918 m!1458563))

(declare-fun m!1458565 () Bool)

(assert (=> b!1306918 m!1458565))

(declare-fun m!1458567 () Bool)

(assert (=> b!1306906 m!1458567))

(assert (=> b!1306906 m!1458567))

(declare-fun m!1458569 () Bool)

(assert (=> b!1306906 m!1458569))

(declare-fun m!1458571 () Bool)

(assert (=> b!1306906 m!1458571))

(declare-fun m!1458573 () Bool)

(assert (=> b!1306917 m!1458573))

(declare-fun m!1458575 () Bool)

(assert (=> b!1306917 m!1458575))

(declare-fun m!1458577 () Bool)

(assert (=> b!1306917 m!1458577))

(declare-fun m!1458579 () Bool)

(assert (=> b!1306917 m!1458579))

(declare-fun m!1458581 () Bool)

(assert (=> b!1306917 m!1458581))

(declare-fun m!1458583 () Bool)

(assert (=> b!1306917 m!1458583))

(declare-fun m!1458585 () Bool)

(assert (=> b!1306908 m!1458585))

(declare-fun m!1458587 () Bool)

(assert (=> b!1306907 m!1458587))

(declare-fun m!1458589 () Bool)

(assert (=> b!1306907 m!1458589))

(declare-fun m!1458591 () Bool)

(assert (=> b!1306922 m!1458591))

(declare-fun m!1458593 () Bool)

(assert (=> b!1306922 m!1458593))

(declare-fun m!1458595 () Bool)

(assert (=> b!1306922 m!1458595))

(declare-fun m!1458597 () Bool)

(assert (=> b!1306922 m!1458597))

(declare-fun m!1458599 () Bool)

(assert (=> b!1306922 m!1458599))

(assert (=> b!1306922 m!1458595))

(declare-fun m!1458601 () Bool)

(assert (=> start!115450 m!1458601))

(declare-fun m!1458603 () Bool)

(assert (=> start!115450 m!1458603))

(declare-fun m!1458605 () Bool)

(assert (=> b!1306900 m!1458605))

(declare-fun m!1458607 () Bool)

(assert (=> b!1306909 m!1458607))

(declare-fun m!1458609 () Bool)

(assert (=> b!1306919 m!1458609))

(declare-fun m!1458611 () Bool)

(assert (=> b!1306924 m!1458611))

(declare-fun m!1458613 () Bool)

(assert (=> b!1306911 m!1458613))

(declare-fun m!1458615 () Bool)

(assert (=> b!1306898 m!1458615))

(declare-fun m!1458617 () Bool)

(assert (=> b!1306898 m!1458617))

(declare-fun m!1458619 () Bool)

(assert (=> b!1306905 m!1458619))

(assert (=> b!1306905 m!1458619))

(declare-fun m!1458621 () Bool)

(assert (=> b!1306905 m!1458621))

(declare-fun m!1458623 () Bool)

(assert (=> b!1306912 m!1458623))

(declare-fun m!1458625 () Bool)

(assert (=> b!1306916 m!1458625))

(check-sat b_and!87241 (not b!1306898) (not b!1306896) (not b!1306915) (not b!1306897) (not b!1306906) (not b!1306910) (not b!1306914) (not b!1306905) (not b!1306921) b_and!87247 (not b!1306902) (not b_next!32053) (not b_next!32051) (not b!1306927) (not b!1306917) (not b!1306895) (not b_next!32043) (not b!1306922) b_and!87245 (not b!1306901) (not b!1306916) (not b!1306926) (not b!1306909) (not b!1306900) b_and!87249 (not b!1306908) b_and!87239 (not b_next!32047) (not b!1306919) (not b!1306912) (not b_next!32049) (not b!1306907) (not b!1306925) (not b!1306920) (not b_next!32045) (not b!1306904) (not b!1306911) b_and!87243 (not b!1306923) (not start!115450) (not b!1306918) (not b!1306924))
(check-sat b_and!87241 (not b_next!32043) b_and!87245 b_and!87249 (not b_next!32049) b_and!87247 (not b_next!32053) (not b_next!32051) (not b_next!32045) b_and!87243 b_and!87239 (not b_next!32047))

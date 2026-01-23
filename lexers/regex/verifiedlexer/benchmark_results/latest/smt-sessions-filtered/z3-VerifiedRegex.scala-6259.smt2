; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!307990 () Bool)

(assert start!307990)

(declare-fun b!3306006 () Bool)

(declare-fun b_free!86913 () Bool)

(declare-fun b_next!87617 () Bool)

(assert (=> b!3306006 (= b_free!86913 (not b_next!87617))))

(declare-fun tp!1035231 () Bool)

(declare-fun b_and!226591 () Bool)

(assert (=> b!3306006 (= tp!1035231 b_and!226591)))

(declare-fun b_free!86915 () Bool)

(declare-fun b_next!87619 () Bool)

(assert (=> b!3306006 (= b_free!86915 (not b_next!87619))))

(declare-fun tp!1035220 () Bool)

(declare-fun b_and!226593 () Bool)

(assert (=> b!3306006 (= tp!1035220 b_and!226593)))

(declare-fun b!3305993 () Bool)

(declare-fun b_free!86917 () Bool)

(declare-fun b_next!87621 () Bool)

(assert (=> b!3305993 (= b_free!86917 (not b_next!87621))))

(declare-fun tp!1035230 () Bool)

(declare-fun b_and!226595 () Bool)

(assert (=> b!3305993 (= tp!1035230 b_and!226595)))

(declare-fun b_free!86919 () Bool)

(declare-fun b_next!87623 () Bool)

(assert (=> b!3305993 (= b_free!86919 (not b_next!87623))))

(declare-fun tp!1035224 () Bool)

(declare-fun b_and!226597 () Bool)

(assert (=> b!3305993 (= tp!1035224 b_and!226597)))

(declare-fun b!3305994 () Bool)

(declare-fun b_free!86921 () Bool)

(declare-fun b_next!87625 () Bool)

(assert (=> b!3305994 (= b_free!86921 (not b_next!87625))))

(declare-fun tp!1035225 () Bool)

(declare-fun b_and!226599 () Bool)

(assert (=> b!3305994 (= tp!1035225 b_and!226599)))

(declare-fun b_free!86923 () Bool)

(declare-fun b_next!87627 () Bool)

(assert (=> b!3305994 (= b_free!86923 (not b_next!87627))))

(declare-fun tp!1035227 () Bool)

(declare-fun b_and!226601 () Bool)

(assert (=> b!3305994 (= tp!1035227 b_and!226601)))

(declare-fun b!3305991 () Bool)

(declare-fun res!1340814 () Bool)

(declare-fun e!2056017 () Bool)

(assert (=> b!3305991 (=> (not res!1340814) (not e!2056017))))

(declare-datatypes ((LexerInterface!4887 0))(
  ( (LexerInterfaceExt!4884 (__x!23273 Int)) (Lexer!4885) )
))
(declare-fun thiss!18206 () LexerInterface!4887)

(declare-datatypes ((C!20300 0))(
  ( (C!20301 (val!12198 Int)) )
))
(declare-datatypes ((Regex!10057 0))(
  ( (ElementMatch!10057 (c!560834 C!20300)) (Concat!15585 (regOne!20626 Regex!10057) (regTwo!20626 Regex!10057)) (EmptyExpr!10057) (Star!10057 (reg!10386 Regex!10057)) (EmptyLang!10057) (Union!10057 (regOne!20627 Regex!10057) (regTwo!20627 Regex!10057)) )
))
(declare-datatypes ((List!36634 0))(
  ( (Nil!36510) (Cons!36510 (h!41930 (_ BitVec 16)) (t!253627 List!36634)) )
))
(declare-datatypes ((TokenValue!5528 0))(
  ( (FloatLiteralValue!11056 (text!39141 List!36634)) (TokenValueExt!5527 (__x!23274 Int)) (Broken!27640 (value!171427 List!36634)) (Object!5651) (End!5528) (Def!5528) (Underscore!5528) (Match!5528) (Else!5528) (Error!5528) (Case!5528) (If!5528) (Extends!5528) (Abstract!5528) (Class!5528) (Val!5528) (DelimiterValue!11056 (del!5588 List!36634)) (KeywordValue!5534 (value!171428 List!36634)) (CommentValue!11056 (value!171429 List!36634)) (WhitespaceValue!11056 (value!171430 List!36634)) (IndentationValue!5528 (value!171431 List!36634)) (String!40973) (Int32!5528) (Broken!27641 (value!171432 List!36634)) (Boolean!5529) (Unit!51437) (OperatorValue!5531 (op!5588 List!36634)) (IdentifierValue!11056 (value!171433 List!36634)) (IdentifierValue!11057 (value!171434 List!36634)) (WhitespaceValue!11057 (value!171435 List!36634)) (True!11056) (False!11056) (Broken!27642 (value!171436 List!36634)) (Broken!27643 (value!171437 List!36634)) (True!11057) (RightBrace!5528) (RightBracket!5528) (Colon!5528) (Null!5528) (Comma!5528) (LeftBracket!5528) (False!11057) (LeftBrace!5528) (ImaginaryLiteralValue!5528 (text!39142 List!36634)) (StringLiteralValue!16584 (value!171438 List!36634)) (EOFValue!5528 (value!171439 List!36634)) (IdentValue!5528 (value!171440 List!36634)) (DelimiterValue!11057 (value!171441 List!36634)) (DedentValue!5528 (value!171442 List!36634)) (NewLineValue!5528 (value!171443 List!36634)) (IntegerValue!16584 (value!171444 (_ BitVec 32)) (text!39143 List!36634)) (IntegerValue!16585 (value!171445 Int) (text!39144 List!36634)) (Times!5528) (Or!5528) (Equal!5528) (Minus!5528) (Broken!27644 (value!171446 List!36634)) (And!5528) (Div!5528) (LessEqual!5528) (Mod!5528) (Concat!15586) (Not!5528) (Plus!5528) (SpaceValue!5528 (value!171447 List!36634)) (IntegerValue!16586 (value!171448 Int) (text!39145 List!36634)) (StringLiteralValue!16585 (text!39146 List!36634)) (FloatLiteralValue!11057 (text!39147 List!36634)) (BytesLiteralValue!5528 (value!171449 List!36634)) (CommentValue!11057 (value!171450 List!36634)) (StringLiteralValue!16586 (value!171451 List!36634)) (ErrorTokenValue!5528 (msg!5589 List!36634)) )
))
(declare-datatypes ((List!36635 0))(
  ( (Nil!36511) (Cons!36511 (h!41931 C!20300) (t!253628 List!36635)) )
))
(declare-datatypes ((IArray!21947 0))(
  ( (IArray!21948 (innerList!11031 List!36635)) )
))
(declare-datatypes ((Conc!10971 0))(
  ( (Node!10971 (left!28438 Conc!10971) (right!28768 Conc!10971) (csize!22172 Int) (cheight!11182 Int)) (Leaf!17231 (xs!14109 IArray!21947) (csize!22173 Int)) (Empty!10971) )
))
(declare-datatypes ((BalanceConc!21556 0))(
  ( (BalanceConc!21557 (c!560835 Conc!10971)) )
))
(declare-datatypes ((String!40974 0))(
  ( (String!40975 (value!171452 String)) )
))
(declare-datatypes ((TokenValueInjection!10484 0))(
  ( (TokenValueInjection!10485 (toValue!7438 Int) (toChars!7297 Int)) )
))
(declare-datatypes ((Rule!10396 0))(
  ( (Rule!10397 (regex!5298 Regex!10057) (tag!5844 String!40974) (isSeparator!5298 Bool) (transformation!5298 TokenValueInjection!10484)) )
))
(declare-datatypes ((List!36636 0))(
  ( (Nil!36512) (Cons!36512 (h!41932 Rule!10396) (t!253629 List!36636)) )
))
(declare-fun rules!2135 () List!36636)

(declare-fun rulesInvariant!4284 (LexerInterface!4887 List!36636) Bool)

(assert (=> b!3305991 (= res!1340814 (rulesInvariant!4284 thiss!18206 rules!2135))))

(declare-fun e!2056033 () Bool)

(declare-fun b!3305992 () Bool)

(declare-fun tp!1035222 () Bool)

(declare-fun e!2056022 () Bool)

(declare-fun inv!49476 (String!40974) Bool)

(declare-fun inv!49479 (TokenValueInjection!10484) Bool)

(assert (=> b!3305992 (= e!2056033 (and tp!1035222 (inv!49476 (tag!5844 (h!41932 rules!2135))) (inv!49479 (transformation!5298 (h!41932 rules!2135))) e!2056022))))

(declare-fun e!2056026 () Bool)

(assert (=> b!3305993 (= e!2056026 (and tp!1035230 tp!1035224))))

(declare-fun e!2056020 () Bool)

(assert (=> b!3305994 (= e!2056020 (and tp!1035225 tp!1035227))))

(declare-fun b!3305995 () Bool)

(declare-fun e!2056027 () Bool)

(declare-fun e!2056032 () Bool)

(assert (=> b!3305995 (= e!2056027 e!2056032)))

(declare-fun res!1340816 () Bool)

(assert (=> b!3305995 (=> res!1340816 e!2056032)))

(declare-fun lt!1120525 () List!36635)

(declare-fun lt!1120526 () List!36635)

(declare-fun lt!1120528 () List!36635)

(assert (=> b!3305995 (= res!1340816 (or (not (= lt!1120525 lt!1120526)) (not (= lt!1120528 lt!1120526))))))

(declare-datatypes ((Token!9962 0))(
  ( (Token!9963 (value!171453 TokenValue!5528) (rule!7802 Rule!10396) (size!27577 Int) (originalCharacters!6012 List!36635)) )
))
(declare-datatypes ((List!36637 0))(
  ( (Nil!36513) (Cons!36513 (h!41933 Token!9962) (t!253630 List!36637)) )
))
(declare-fun tokens!494 () List!36637)

(declare-fun list!13095 (BalanceConc!21556) List!36635)

(declare-fun charsOf!3314 (Token!9962) BalanceConc!21556)

(assert (=> b!3305995 (= lt!1120526 (list!13095 (charsOf!3314 (h!41933 tokens!494))))))

(declare-fun b!3305996 () Bool)

(declare-fun res!1340811 () Bool)

(assert (=> b!3305996 (=> (not res!1340811) (not e!2056017))))

(declare-fun separatorToken!241 () Token!9962)

(assert (=> b!3305996 (= res!1340811 (isSeparator!5298 (rule!7802 separatorToken!241)))))

(declare-fun b!3305997 () Bool)

(declare-fun res!1340812 () Bool)

(assert (=> b!3305997 (=> (not res!1340812) (not e!2056017))))

(declare-fun lambda!119041 () Int)

(declare-fun forall!7571 (List!36637 Int) Bool)

(assert (=> b!3305997 (= res!1340812 (forall!7571 tokens!494 lambda!119041))))

(declare-fun b!3305998 () Bool)

(declare-fun e!2056028 () Bool)

(declare-fun tp!1035221 () Bool)

(assert (=> b!3305998 (= e!2056028 (and e!2056033 tp!1035221))))

(declare-fun tp!1035228 () Bool)

(declare-fun e!2056034 () Bool)

(declare-fun b!3305999 () Bool)

(declare-fun e!2056018 () Bool)

(declare-fun inv!21 (TokenValue!5528) Bool)

(assert (=> b!3305999 (= e!2056018 (and (inv!21 (value!171453 separatorToken!241)) e!2056034 tp!1035228))))

(declare-fun b!3306000 () Bool)

(declare-fun res!1340815 () Bool)

(assert (=> b!3306000 (=> (not res!1340815) (not e!2056017))))

(declare-fun isEmpty!20648 (List!36636) Bool)

(assert (=> b!3306000 (= res!1340815 (not (isEmpty!20648 rules!2135)))))

(declare-fun e!2056021 () Bool)

(declare-fun e!2056029 () Bool)

(declare-fun tp!1035232 () Bool)

(declare-fun b!3306001 () Bool)

(declare-fun inv!49480 (Token!9962) Bool)

(assert (=> b!3306001 (= e!2056029 (and (inv!49480 (h!41933 tokens!494)) e!2056021 tp!1035232))))

(declare-fun e!2056031 () Bool)

(declare-fun tp!1035223 () Bool)

(declare-fun b!3306002 () Bool)

(assert (=> b!3306002 (= e!2056031 (and tp!1035223 (inv!49476 (tag!5844 (rule!7802 (h!41933 tokens!494)))) (inv!49479 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) e!2056026))))

(declare-fun res!1340810 () Bool)

(assert (=> start!307990 (=> (not res!1340810) (not e!2056017))))

(get-info :version)

(assert (=> start!307990 (= res!1340810 ((_ is Lexer!4885) thiss!18206))))

(assert (=> start!307990 e!2056017))

(assert (=> start!307990 true))

(assert (=> start!307990 e!2056028))

(assert (=> start!307990 e!2056029))

(assert (=> start!307990 (and (inv!49480 separatorToken!241) e!2056018)))

(declare-fun b!3306003 () Bool)

(declare-fun res!1340809 () Bool)

(assert (=> b!3306003 (=> (not res!1340809) (not e!2056017))))

(declare-datatypes ((IArray!21949 0))(
  ( (IArray!21950 (innerList!11032 List!36637)) )
))
(declare-datatypes ((Conc!10972 0))(
  ( (Node!10972 (left!28439 Conc!10972) (right!28769 Conc!10972) (csize!22174 Int) (cheight!11183 Int)) (Leaf!17232 (xs!14110 IArray!21949) (csize!22175 Int)) (Empty!10972) )
))
(declare-datatypes ((BalanceConc!21558 0))(
  ( (BalanceConc!21559 (c!560836 Conc!10972)) )
))
(declare-fun rulesProduceEachTokenIndividually!1338 (LexerInterface!4887 List!36636 BalanceConc!21558) Bool)

(declare-fun seqFromList!3651 (List!36637) BalanceConc!21558)

(assert (=> b!3306003 (= res!1340809 (rulesProduceEachTokenIndividually!1338 thiss!18206 rules!2135 (seqFromList!3651 tokens!494)))))

(declare-fun b!3306004 () Bool)

(declare-fun tp!1035229 () Bool)

(assert (=> b!3306004 (= e!2056021 (and (inv!21 (value!171453 (h!41933 tokens!494))) e!2056031 tp!1035229))))

(declare-fun b!3306005 () Bool)

(assert (=> b!3306005 (= e!2056017 (not e!2056027))))

(declare-fun res!1340808 () Bool)

(assert (=> b!3306005 (=> res!1340808 e!2056027)))

(assert (=> b!3306005 (= res!1340808 (not (= lt!1120528 lt!1120525)))))

(declare-fun printList!1437 (LexerInterface!4887 List!36637) List!36635)

(assert (=> b!3306005 (= lt!1120525 (printList!1437 thiss!18206 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))

(declare-fun lt!1120527 () BalanceConc!21556)

(assert (=> b!3306005 (= lt!1120528 (list!13095 lt!1120527))))

(declare-fun lt!1120524 () BalanceConc!21558)

(declare-fun printTailRec!1384 (LexerInterface!4887 BalanceConc!21558 Int BalanceConc!21556) BalanceConc!21556)

(assert (=> b!3306005 (= lt!1120527 (printTailRec!1384 thiss!18206 lt!1120524 0 (BalanceConc!21557 Empty!10971)))))

(declare-fun print!1952 (LexerInterface!4887 BalanceConc!21558) BalanceConc!21556)

(assert (=> b!3306005 (= lt!1120527 (print!1952 thiss!18206 lt!1120524))))

(declare-fun singletonSeq!2394 (Token!9962) BalanceConc!21558)

(assert (=> b!3306005 (= lt!1120524 (singletonSeq!2394 (h!41933 tokens!494)))))

(assert (=> b!3306006 (= e!2056022 (and tp!1035231 tp!1035220))))

(declare-fun b!3306007 () Bool)

(declare-fun res!1340818 () Bool)

(assert (=> b!3306007 (=> res!1340818 e!2056032)))

(declare-fun rulesProduceIndividualToken!2379 (LexerInterface!4887 List!36636 Token!9962) Bool)

(assert (=> b!3306007 (= res!1340818 (not (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 (h!41933 tokens!494))))))

(declare-fun b!3306008 () Bool)

(declare-fun res!1340813 () Bool)

(assert (=> b!3306008 (=> (not res!1340813) (not e!2056017))))

(assert (=> b!3306008 (= res!1340813 (and (not ((_ is Nil!36513) tokens!494)) (not ((_ is Nil!36513) (t!253630 tokens!494)))))))

(declare-fun b!3306009 () Bool)

(declare-fun res!1340807 () Bool)

(assert (=> b!3306009 (=> (not res!1340807) (not e!2056017))))

(assert (=> b!3306009 (= res!1340807 (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3306010 () Bool)

(declare-fun res!1340817 () Bool)

(assert (=> b!3306010 (=> (not res!1340817) (not e!2056017))))

(declare-fun sepAndNonSepRulesDisjointChars!1492 (List!36636 List!36636) Bool)

(assert (=> b!3306010 (= res!1340817 (sepAndNonSepRulesDisjointChars!1492 rules!2135 rules!2135))))

(declare-fun b!3306011 () Bool)

(declare-fun tp!1035226 () Bool)

(assert (=> b!3306011 (= e!2056034 (and tp!1035226 (inv!49476 (tag!5844 (rule!7802 separatorToken!241))) (inv!49479 (transformation!5298 (rule!7802 separatorToken!241))) e!2056020))))

(declare-fun b!3306012 () Bool)

(declare-fun isEmpty!20649 (BalanceConc!21558) Bool)

(declare-datatypes ((tuple2!35996 0))(
  ( (tuple2!35997 (_1!21132 BalanceConc!21558) (_2!21132 BalanceConc!21556)) )
))
(declare-fun lex!2213 (LexerInterface!4887 List!36636 BalanceConc!21556) tuple2!35996)

(declare-fun seqFromList!3652 (List!36635) BalanceConc!21556)

(assert (=> b!3306012 (= e!2056032 (not (isEmpty!20649 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(assert (= (and start!307990 res!1340810) b!3306000))

(assert (= (and b!3306000 res!1340815) b!3305991))

(assert (= (and b!3305991 res!1340814) b!3306003))

(assert (= (and b!3306003 res!1340809) b!3306009))

(assert (= (and b!3306009 res!1340807) b!3305996))

(assert (= (and b!3305996 res!1340811) b!3305997))

(assert (= (and b!3305997 res!1340812) b!3306010))

(assert (= (and b!3306010 res!1340817) b!3306008))

(assert (= (and b!3306008 res!1340813) b!3306005))

(assert (= (and b!3306005 (not res!1340808)) b!3305995))

(assert (= (and b!3305995 (not res!1340816)) b!3306007))

(assert (= (and b!3306007 (not res!1340818)) b!3306012))

(assert (= b!3305992 b!3306006))

(assert (= b!3305998 b!3305992))

(assert (= (and start!307990 ((_ is Cons!36512) rules!2135)) b!3305998))

(assert (= b!3306002 b!3305993))

(assert (= b!3306004 b!3306002))

(assert (= b!3306001 b!3306004))

(assert (= (and start!307990 ((_ is Cons!36513) tokens!494)) b!3306001))

(assert (= b!3306011 b!3305994))

(assert (= b!3305999 b!3306011))

(assert (= start!307990 b!3305999))

(declare-fun m!3632227 () Bool)

(assert (=> b!3306009 m!3632227))

(declare-fun m!3632229 () Bool)

(assert (=> b!3306003 m!3632229))

(assert (=> b!3306003 m!3632229))

(declare-fun m!3632231 () Bool)

(assert (=> b!3306003 m!3632231))

(declare-fun m!3632233 () Bool)

(assert (=> b!3306010 m!3632233))

(declare-fun m!3632235 () Bool)

(assert (=> b!3306002 m!3632235))

(declare-fun m!3632237 () Bool)

(assert (=> b!3306002 m!3632237))

(declare-fun m!3632239 () Bool)

(assert (=> b!3306012 m!3632239))

(assert (=> b!3306012 m!3632239))

(declare-fun m!3632241 () Bool)

(assert (=> b!3306012 m!3632241))

(declare-fun m!3632243 () Bool)

(assert (=> b!3306012 m!3632243))

(declare-fun m!3632245 () Bool)

(assert (=> b!3306001 m!3632245))

(declare-fun m!3632247 () Bool)

(assert (=> b!3306007 m!3632247))

(declare-fun m!3632249 () Bool)

(assert (=> b!3305997 m!3632249))

(declare-fun m!3632251 () Bool)

(assert (=> b!3305991 m!3632251))

(declare-fun m!3632253 () Bool)

(assert (=> b!3305992 m!3632253))

(declare-fun m!3632255 () Bool)

(assert (=> b!3305992 m!3632255))

(declare-fun m!3632257 () Bool)

(assert (=> b!3306011 m!3632257))

(declare-fun m!3632259 () Bool)

(assert (=> b!3306011 m!3632259))

(declare-fun m!3632261 () Bool)

(assert (=> b!3305999 m!3632261))

(declare-fun m!3632263 () Bool)

(assert (=> b!3306005 m!3632263))

(declare-fun m!3632265 () Bool)

(assert (=> b!3306005 m!3632265))

(declare-fun m!3632267 () Bool)

(assert (=> b!3306005 m!3632267))

(declare-fun m!3632269 () Bool)

(assert (=> b!3306005 m!3632269))

(declare-fun m!3632271 () Bool)

(assert (=> b!3306005 m!3632271))

(declare-fun m!3632273 () Bool)

(assert (=> b!3306004 m!3632273))

(declare-fun m!3632275 () Bool)

(assert (=> b!3305995 m!3632275))

(assert (=> b!3305995 m!3632275))

(declare-fun m!3632277 () Bool)

(assert (=> b!3305995 m!3632277))

(declare-fun m!3632279 () Bool)

(assert (=> start!307990 m!3632279))

(declare-fun m!3632281 () Bool)

(assert (=> b!3306000 m!3632281))

(check-sat (not b_next!87621) (not b!3306011) (not start!307990) (not b!3306002) b_and!226597 b_and!226599 (not b!3305999) (not b_next!87619) (not b!3306001) (not b!3306003) (not b!3305991) (not b_next!87617) (not b!3306004) (not b_next!87627) (not b!3305997) (not b_next!87625) (not b!3306007) b_and!226601 (not b!3305992) (not b_next!87623) b_and!226593 (not b!3306012) (not b!3305998) (not b!3306009) b_and!226595 (not b!3306005) (not b!3305995) b_and!226591 (not b!3306010) (not b!3306000))
(check-sat (not b_next!87617) (not b_next!87621) b_and!226601 b_and!226597 b_and!226599 (not b_next!87619) b_and!226595 b_and!226591 (not b_next!87627) (not b_next!87625) (not b_next!87623) b_and!226593)
(get-model)

(declare-fun d!925966 () Bool)

(declare-fun res!1340831 () Bool)

(declare-fun e!2056037 () Bool)

(assert (=> d!925966 (=> (not res!1340831) (not e!2056037))))

(declare-fun rulesValid!1953 (LexerInterface!4887 List!36636) Bool)

(assert (=> d!925966 (= res!1340831 (rulesValid!1953 thiss!18206 rules!2135))))

(assert (=> d!925966 (= (rulesInvariant!4284 thiss!18206 rules!2135) e!2056037)))

(declare-fun b!3306015 () Bool)

(declare-datatypes ((List!36639 0))(
  ( (Nil!36515) (Cons!36515 (h!41935 String!40974) (t!253684 List!36639)) )
))
(declare-fun noDuplicateTag!1949 (LexerInterface!4887 List!36636 List!36639) Bool)

(assert (=> b!3306015 (= e!2056037 (noDuplicateTag!1949 thiss!18206 rules!2135 Nil!36515))))

(assert (= (and d!925966 res!1340831) b!3306015))

(declare-fun m!3632283 () Bool)

(assert (=> d!925966 m!3632283))

(declare-fun m!3632285 () Bool)

(assert (=> b!3306015 m!3632285))

(assert (=> b!3305991 d!925966))

(declare-fun d!925968 () Bool)

(assert (=> d!925968 (= (inv!49476 (tag!5844 (rule!7802 (h!41933 tokens!494)))) (= (mod (str.len (value!171452 (tag!5844 (rule!7802 (h!41933 tokens!494))))) 2) 0))))

(assert (=> b!3306002 d!925968))

(declare-fun d!925970 () Bool)

(declare-fun res!1340834 () Bool)

(declare-fun e!2056040 () Bool)

(assert (=> d!925970 (=> (not res!1340834) (not e!2056040))))

(declare-fun semiInverseModEq!2193 (Int Int) Bool)

(assert (=> d!925970 (= res!1340834 (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))))))

(assert (=> d!925970 (= (inv!49479 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) e!2056040)))

(declare-fun b!3306018 () Bool)

(declare-fun equivClasses!2092 (Int Int) Bool)

(assert (=> b!3306018 (= e!2056040 (equivClasses!2092 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))))))

(assert (= (and d!925970 res!1340834) b!3306018))

(declare-fun m!3632287 () Bool)

(assert (=> d!925970 m!3632287))

(declare-fun m!3632289 () Bool)

(assert (=> b!3306018 m!3632289))

(assert (=> b!3306002 d!925970))

(declare-fun d!925972 () Bool)

(assert (=> d!925972 (= (inv!49476 (tag!5844 (h!41932 rules!2135))) (= (mod (str.len (value!171452 (tag!5844 (h!41932 rules!2135)))) 2) 0))))

(assert (=> b!3305992 d!925972))

(declare-fun d!925974 () Bool)

(declare-fun res!1340835 () Bool)

(declare-fun e!2056041 () Bool)

(assert (=> d!925974 (=> (not res!1340835) (not e!2056041))))

(assert (=> d!925974 (= res!1340835 (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (h!41932 rules!2135)))))))

(assert (=> d!925974 (= (inv!49479 (transformation!5298 (h!41932 rules!2135))) e!2056041)))

(declare-fun b!3306019 () Bool)

(assert (=> b!3306019 (= e!2056041 (equivClasses!2092 (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (h!41932 rules!2135)))))))

(assert (= (and d!925974 res!1340835) b!3306019))

(declare-fun m!3632291 () Bool)

(assert (=> d!925974 m!3632291))

(declare-fun m!3632293 () Bool)

(assert (=> b!3306019 m!3632293))

(assert (=> b!3305992 d!925974))

(declare-fun d!925976 () Bool)

(assert (=> d!925976 (= (inv!49476 (tag!5844 (rule!7802 separatorToken!241))) (= (mod (str.len (value!171452 (tag!5844 (rule!7802 separatorToken!241)))) 2) 0))))

(assert (=> b!3306011 d!925976))

(declare-fun d!925978 () Bool)

(declare-fun res!1340836 () Bool)

(declare-fun e!2056042 () Bool)

(assert (=> d!925978 (=> (not res!1340836) (not e!2056042))))

(assert (=> d!925978 (= res!1340836 (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))))))

(assert (=> d!925978 (= (inv!49479 (transformation!5298 (rule!7802 separatorToken!241))) e!2056042)))

(declare-fun b!3306020 () Bool)

(assert (=> b!3306020 (= e!2056042 (equivClasses!2092 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))))))

(assert (= (and d!925978 res!1340836) b!3306020))

(declare-fun m!3632295 () Bool)

(assert (=> d!925978 m!3632295))

(declare-fun m!3632297 () Bool)

(assert (=> b!3306020 m!3632297))

(assert (=> b!3306011 d!925978))

(declare-fun d!925980 () Bool)

(declare-fun res!1340850 () Bool)

(declare-fun e!2056051 () Bool)

(assert (=> d!925980 (=> (not res!1340850) (not e!2056051))))

(declare-fun isEmpty!20654 (List!36635) Bool)

(assert (=> d!925980 (= res!1340850 (not (isEmpty!20654 (originalCharacters!6012 (h!41933 tokens!494)))))))

(assert (=> d!925980 (= (inv!49480 (h!41933 tokens!494)) e!2056051)))

(declare-fun b!3306034 () Bool)

(declare-fun res!1340851 () Bool)

(assert (=> b!3306034 (=> (not res!1340851) (not e!2056051))))

(declare-fun dynLambda!14973 (Int TokenValue!5528) BalanceConc!21556)

(assert (=> b!3306034 (= res!1340851 (= (originalCharacters!6012 (h!41933 tokens!494)) (list!13095 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(declare-fun b!3306035 () Bool)

(declare-fun size!27581 (List!36635) Int)

(assert (=> b!3306035 (= e!2056051 (= (size!27577 (h!41933 tokens!494)) (size!27581 (originalCharacters!6012 (h!41933 tokens!494)))))))

(assert (= (and d!925980 res!1340850) b!3306034))

(assert (= (and b!3306034 res!1340851) b!3306035))

(declare-fun b_lambda!92359 () Bool)

(assert (=> (not b_lambda!92359) (not b!3306034)))

(declare-fun t!253633 () Bool)

(declare-fun tb!171595 () Bool)

(assert (=> (and b!3306006 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253633) tb!171595))

(declare-fun b!3306040 () Bool)

(declare-fun e!2056054 () Bool)

(declare-fun tp!1035235 () Bool)

(declare-fun inv!49483 (Conc!10971) Bool)

(assert (=> b!3306040 (= e!2056054 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))) tp!1035235))))

(declare-fun result!214420 () Bool)

(declare-fun inv!49484 (BalanceConc!21556) Bool)

(assert (=> tb!171595 (= result!214420 (and (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))) e!2056054))))

(assert (= tb!171595 b!3306040))

(declare-fun m!3632315 () Bool)

(assert (=> b!3306040 m!3632315))

(declare-fun m!3632317 () Bool)

(assert (=> tb!171595 m!3632317))

(assert (=> b!3306034 t!253633))

(declare-fun b_and!226603 () Bool)

(assert (= b_and!226593 (and (=> t!253633 result!214420) b_and!226603)))

(declare-fun t!253635 () Bool)

(declare-fun tb!171597 () Bool)

(assert (=> (and b!3305993 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253635) tb!171597))

(declare-fun result!214424 () Bool)

(assert (= result!214424 result!214420))

(assert (=> b!3306034 t!253635))

(declare-fun b_and!226605 () Bool)

(assert (= b_and!226597 (and (=> t!253635 result!214424) b_and!226605)))

(declare-fun tb!171599 () Bool)

(declare-fun t!253637 () Bool)

(assert (=> (and b!3305994 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253637) tb!171599))

(declare-fun result!214426 () Bool)

(assert (= result!214426 result!214420))

(assert (=> b!3306034 t!253637))

(declare-fun b_and!226607 () Bool)

(assert (= b_and!226601 (and (=> t!253637 result!214426) b_and!226607)))

(declare-fun m!3632319 () Bool)

(assert (=> d!925980 m!3632319))

(declare-fun m!3632321 () Bool)

(assert (=> b!3306034 m!3632321))

(assert (=> b!3306034 m!3632321))

(declare-fun m!3632323 () Bool)

(assert (=> b!3306034 m!3632323))

(declare-fun m!3632325 () Bool)

(assert (=> b!3306035 m!3632325))

(assert (=> b!3306001 d!925980))

(declare-fun lt!1120540 () Bool)

(declare-fun d!925986 () Bool)

(declare-fun isEmpty!20655 (List!36637) Bool)

(declare-fun list!13098 (BalanceConc!21558) List!36637)

(assert (=> d!925986 (= lt!1120540 (isEmpty!20655 (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(declare-fun isEmpty!20656 (Conc!10972) Bool)

(assert (=> d!925986 (= lt!1120540 (isEmpty!20656 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(assert (=> d!925986 (= (isEmpty!20649 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)))) lt!1120540)))

(declare-fun bs!549065 () Bool)

(assert (= bs!549065 d!925986))

(declare-fun m!3632337 () Bool)

(assert (=> bs!549065 m!3632337))

(assert (=> bs!549065 m!3632337))

(declare-fun m!3632339 () Bool)

(assert (=> bs!549065 m!3632339))

(declare-fun m!3632341 () Bool)

(assert (=> bs!549065 m!3632341))

(assert (=> b!3306012 d!925986))

(declare-fun b!3306087 () Bool)

(declare-fun res!1340884 () Bool)

(declare-fun e!2056088 () Bool)

(assert (=> b!3306087 (=> (not res!1340884) (not e!2056088))))

(declare-fun lt!1120548 () tuple2!35996)

(declare-datatypes ((tuple2!36000 0))(
  ( (tuple2!36001 (_1!21134 List!36637) (_2!21134 List!36635)) )
))
(declare-fun lexList!1357 (LexerInterface!4887 List!36636 List!36635) tuple2!36000)

(assert (=> b!3306087 (= res!1340884 (= (list!13098 (_1!21132 lt!1120548)) (_1!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (seqFromList!3652 lt!1120526))))))))

(declare-fun b!3306088 () Bool)

(assert (=> b!3306088 (= e!2056088 (= (list!13095 (_2!21132 lt!1120548)) (_2!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (seqFromList!3652 lt!1120526))))))))

(declare-fun b!3306089 () Bool)

(declare-fun e!2056087 () Bool)

(assert (=> b!3306089 (= e!2056087 (= (_2!21132 lt!1120548) (seqFromList!3652 lt!1120526)))))

(declare-fun d!925992 () Bool)

(assert (=> d!925992 e!2056088))

(declare-fun res!1340883 () Bool)

(assert (=> d!925992 (=> (not res!1340883) (not e!2056088))))

(assert (=> d!925992 (= res!1340883 e!2056087)))

(declare-fun c!560842 () Bool)

(declare-fun size!27582 (BalanceConc!21558) Int)

(assert (=> d!925992 (= c!560842 (> (size!27582 (_1!21132 lt!1120548)) 0))))

(declare-fun lexTailRecV2!967 (LexerInterface!4887 List!36636 BalanceConc!21556 BalanceConc!21556 BalanceConc!21556 BalanceConc!21558) tuple2!35996)

(assert (=> d!925992 (= lt!1120548 (lexTailRecV2!967 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526) (BalanceConc!21557 Empty!10971) (seqFromList!3652 lt!1120526) (BalanceConc!21559 Empty!10972)))))

(assert (=> d!925992 (= (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)) lt!1120548)))

(declare-fun b!3306090 () Bool)

(declare-fun e!2056086 () Bool)

(assert (=> b!3306090 (= e!2056086 (not (isEmpty!20649 (_1!21132 lt!1120548))))))

(declare-fun b!3306091 () Bool)

(assert (=> b!3306091 (= e!2056087 e!2056086)))

(declare-fun res!1340885 () Bool)

(declare-fun size!27583 (BalanceConc!21556) Int)

(assert (=> b!3306091 (= res!1340885 (< (size!27583 (_2!21132 lt!1120548)) (size!27583 (seqFromList!3652 lt!1120526))))))

(assert (=> b!3306091 (=> (not res!1340885) (not e!2056086))))

(assert (= (and d!925992 c!560842) b!3306091))

(assert (= (and d!925992 (not c!560842)) b!3306089))

(assert (= (and b!3306091 res!1340885) b!3306090))

(assert (= (and d!925992 res!1340883) b!3306087))

(assert (= (and b!3306087 res!1340884) b!3306088))

(declare-fun m!3632383 () Bool)

(assert (=> b!3306091 m!3632383))

(assert (=> b!3306091 m!3632239))

(declare-fun m!3632385 () Bool)

(assert (=> b!3306091 m!3632385))

(declare-fun m!3632387 () Bool)

(assert (=> b!3306090 m!3632387))

(declare-fun m!3632389 () Bool)

(assert (=> b!3306088 m!3632389))

(assert (=> b!3306088 m!3632239))

(declare-fun m!3632391 () Bool)

(assert (=> b!3306088 m!3632391))

(assert (=> b!3306088 m!3632391))

(declare-fun m!3632393 () Bool)

(assert (=> b!3306088 m!3632393))

(declare-fun m!3632395 () Bool)

(assert (=> d!925992 m!3632395))

(assert (=> d!925992 m!3632239))

(assert (=> d!925992 m!3632239))

(declare-fun m!3632397 () Bool)

(assert (=> d!925992 m!3632397))

(declare-fun m!3632399 () Bool)

(assert (=> b!3306087 m!3632399))

(assert (=> b!3306087 m!3632239))

(assert (=> b!3306087 m!3632391))

(assert (=> b!3306087 m!3632391))

(assert (=> b!3306087 m!3632393))

(assert (=> b!3306012 d!925992))

(declare-fun d!926006 () Bool)

(declare-fun fromListB!1605 (List!36635) BalanceConc!21556)

(assert (=> d!926006 (= (seqFromList!3652 lt!1120526) (fromListB!1605 lt!1120526))))

(declare-fun bs!549067 () Bool)

(assert (= bs!549067 d!926006))

(declare-fun m!3632401 () Bool)

(assert (=> bs!549067 m!3632401))

(assert (=> b!3306012 d!926006))

(declare-fun b!3306103 () Bool)

(declare-fun e!2056097 () Bool)

(declare-fun inv!15 (TokenValue!5528) Bool)

(assert (=> b!3306103 (= e!2056097 (inv!15 (value!171453 separatorToken!241)))))

(declare-fun b!3306104 () Bool)

(declare-fun e!2056096 () Bool)

(declare-fun e!2056095 () Bool)

(assert (=> b!3306104 (= e!2056096 e!2056095)))

(declare-fun c!560848 () Bool)

(assert (=> b!3306104 (= c!560848 ((_ is IntegerValue!16585) (value!171453 separatorToken!241)))))

(declare-fun b!3306105 () Bool)

(declare-fun inv!17 (TokenValue!5528) Bool)

(assert (=> b!3306105 (= e!2056095 (inv!17 (value!171453 separatorToken!241)))))

(declare-fun b!3306106 () Bool)

(declare-fun res!1340888 () Bool)

(assert (=> b!3306106 (=> res!1340888 e!2056097)))

(assert (=> b!3306106 (= res!1340888 (not ((_ is IntegerValue!16586) (value!171453 separatorToken!241))))))

(assert (=> b!3306106 (= e!2056095 e!2056097)))

(declare-fun b!3306102 () Bool)

(declare-fun inv!16 (TokenValue!5528) Bool)

(assert (=> b!3306102 (= e!2056096 (inv!16 (value!171453 separatorToken!241)))))

(declare-fun d!926008 () Bool)

(declare-fun c!560847 () Bool)

(assert (=> d!926008 (= c!560847 ((_ is IntegerValue!16584) (value!171453 separatorToken!241)))))

(assert (=> d!926008 (= (inv!21 (value!171453 separatorToken!241)) e!2056096)))

(assert (= (and d!926008 c!560847) b!3306102))

(assert (= (and d!926008 (not c!560847)) b!3306104))

(assert (= (and b!3306104 c!560848) b!3306105))

(assert (= (and b!3306104 (not c!560848)) b!3306106))

(assert (= (and b!3306106 (not res!1340888)) b!3306103))

(declare-fun m!3632403 () Bool)

(assert (=> b!3306103 m!3632403))

(declare-fun m!3632405 () Bool)

(assert (=> b!3306105 m!3632405))

(declare-fun m!3632407 () Bool)

(assert (=> b!3306102 m!3632407))

(assert (=> b!3305999 d!926008))

(declare-fun d!926010 () Bool)

(declare-fun res!1340893 () Bool)

(declare-fun e!2056102 () Bool)

(assert (=> d!926010 (=> res!1340893 e!2056102)))

(assert (=> d!926010 (= res!1340893 (not ((_ is Cons!36512) rules!2135)))))

(assert (=> d!926010 (= (sepAndNonSepRulesDisjointChars!1492 rules!2135 rules!2135) e!2056102)))

(declare-fun b!3306111 () Bool)

(declare-fun e!2056103 () Bool)

(assert (=> b!3306111 (= e!2056102 e!2056103)))

(declare-fun res!1340894 () Bool)

(assert (=> b!3306111 (=> (not res!1340894) (not e!2056103))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!629 (Rule!10396 List!36636) Bool)

(assert (=> b!3306111 (= res!1340894 (ruleDisjointCharsFromAllFromOtherType!629 (h!41932 rules!2135) rules!2135))))

(declare-fun b!3306112 () Bool)

(assert (=> b!3306112 (= e!2056103 (sepAndNonSepRulesDisjointChars!1492 rules!2135 (t!253629 rules!2135)))))

(assert (= (and d!926010 (not res!1340893)) b!3306111))

(assert (= (and b!3306111 res!1340894) b!3306112))

(declare-fun m!3632409 () Bool)

(assert (=> b!3306111 m!3632409))

(declare-fun m!3632411 () Bool)

(assert (=> b!3306112 m!3632411))

(assert (=> b!3306010 d!926010))

(declare-fun d!926012 () Bool)

(assert (=> d!926012 (= (isEmpty!20648 rules!2135) ((_ is Nil!36512) rules!2135))))

(assert (=> b!3306000 d!926012))

(declare-fun d!926014 () Bool)

(declare-fun lt!1120554 () Bool)

(declare-fun e!2056108 () Bool)

(assert (=> d!926014 (= lt!1120554 e!2056108)))

(declare-fun res!1340902 () Bool)

(assert (=> d!926014 (=> (not res!1340902) (not e!2056108))))

(assert (=> d!926014 (= res!1340902 (= (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))) (list!13098 (singletonSeq!2394 separatorToken!241))))))

(declare-fun e!2056109 () Bool)

(assert (=> d!926014 (= lt!1120554 e!2056109)))

(declare-fun res!1340903 () Bool)

(assert (=> d!926014 (=> (not res!1340903) (not e!2056109))))

(declare-fun lt!1120553 () tuple2!35996)

(assert (=> d!926014 (= res!1340903 (= (size!27582 (_1!21132 lt!1120553)) 1))))

(assert (=> d!926014 (= lt!1120553 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))))

(assert (=> d!926014 (not (isEmpty!20648 rules!2135))))

(assert (=> d!926014 (= (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 separatorToken!241) lt!1120554)))

(declare-fun b!3306119 () Bool)

(declare-fun res!1340901 () Bool)

(assert (=> b!3306119 (=> (not res!1340901) (not e!2056109))))

(declare-fun apply!8391 (BalanceConc!21558 Int) Token!9962)

(assert (=> b!3306119 (= res!1340901 (= (apply!8391 (_1!21132 lt!1120553) 0) separatorToken!241))))

(declare-fun b!3306120 () Bool)

(declare-fun isEmpty!20657 (BalanceConc!21556) Bool)

(assert (=> b!3306120 (= e!2056109 (isEmpty!20657 (_2!21132 lt!1120553)))))

(declare-fun b!3306121 () Bool)

(assert (=> b!3306121 (= e!2056108 (isEmpty!20657 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))))))

(assert (= (and d!926014 res!1340903) b!3306119))

(assert (= (and b!3306119 res!1340901) b!3306120))

(assert (= (and d!926014 res!1340902) b!3306121))

(declare-fun m!3632413 () Bool)

(assert (=> d!926014 m!3632413))

(declare-fun m!3632415 () Bool)

(assert (=> d!926014 m!3632415))

(declare-fun m!3632417 () Bool)

(assert (=> d!926014 m!3632417))

(declare-fun m!3632419 () Bool)

(assert (=> d!926014 m!3632419))

(declare-fun m!3632421 () Bool)

(assert (=> d!926014 m!3632421))

(assert (=> d!926014 m!3632415))

(declare-fun m!3632423 () Bool)

(assert (=> d!926014 m!3632423))

(assert (=> d!926014 m!3632281))

(assert (=> d!926014 m!3632415))

(assert (=> d!926014 m!3632419))

(declare-fun m!3632425 () Bool)

(assert (=> b!3306119 m!3632425))

(declare-fun m!3632427 () Bool)

(assert (=> b!3306120 m!3632427))

(assert (=> b!3306121 m!3632415))

(assert (=> b!3306121 m!3632415))

(assert (=> b!3306121 m!3632419))

(assert (=> b!3306121 m!3632419))

(assert (=> b!3306121 m!3632421))

(declare-fun m!3632429 () Bool)

(assert (=> b!3306121 m!3632429))

(assert (=> b!3306009 d!926014))

(declare-fun d!926016 () Bool)

(declare-fun lt!1120556 () Bool)

(declare-fun e!2056110 () Bool)

(assert (=> d!926016 (= lt!1120556 e!2056110)))

(declare-fun res!1340905 () Bool)

(assert (=> d!926016 (=> (not res!1340905) (not e!2056110))))

(assert (=> d!926016 (= res!1340905 (= (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))) (list!13098 (singletonSeq!2394 (h!41933 tokens!494)))))))

(declare-fun e!2056111 () Bool)

(assert (=> d!926016 (= lt!1120556 e!2056111)))

(declare-fun res!1340906 () Bool)

(assert (=> d!926016 (=> (not res!1340906) (not e!2056111))))

(declare-fun lt!1120555 () tuple2!35996)

(assert (=> d!926016 (= res!1340906 (= (size!27582 (_1!21132 lt!1120555)) 1))))

(assert (=> d!926016 (= lt!1120555 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))))

(assert (=> d!926016 (not (isEmpty!20648 rules!2135))))

(assert (=> d!926016 (= (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 (h!41933 tokens!494)) lt!1120556)))

(declare-fun b!3306122 () Bool)

(declare-fun res!1340904 () Bool)

(assert (=> b!3306122 (=> (not res!1340904) (not e!2056111))))

(assert (=> b!3306122 (= res!1340904 (= (apply!8391 (_1!21132 lt!1120555) 0) (h!41933 tokens!494)))))

(declare-fun b!3306123 () Bool)

(assert (=> b!3306123 (= e!2056111 (isEmpty!20657 (_2!21132 lt!1120555)))))

(declare-fun b!3306124 () Bool)

(assert (=> b!3306124 (= e!2056110 (isEmpty!20657 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))))))

(assert (= (and d!926016 res!1340906) b!3306122))

(assert (= (and b!3306122 res!1340904) b!3306123))

(assert (= (and d!926016 res!1340905) b!3306124))

(declare-fun m!3632431 () Bool)

(assert (=> d!926016 m!3632431))

(assert (=> d!926016 m!3632267))

(declare-fun m!3632433 () Bool)

(assert (=> d!926016 m!3632433))

(declare-fun m!3632435 () Bool)

(assert (=> d!926016 m!3632435))

(declare-fun m!3632437 () Bool)

(assert (=> d!926016 m!3632437))

(assert (=> d!926016 m!3632267))

(declare-fun m!3632439 () Bool)

(assert (=> d!926016 m!3632439))

(assert (=> d!926016 m!3632281))

(assert (=> d!926016 m!3632267))

(assert (=> d!926016 m!3632435))

(declare-fun m!3632441 () Bool)

(assert (=> b!3306122 m!3632441))

(declare-fun m!3632443 () Bool)

(assert (=> b!3306123 m!3632443))

(assert (=> b!3306124 m!3632267))

(assert (=> b!3306124 m!3632267))

(assert (=> b!3306124 m!3632435))

(assert (=> b!3306124 m!3632435))

(assert (=> b!3306124 m!3632437))

(declare-fun m!3632445 () Bool)

(assert (=> b!3306124 m!3632445))

(assert (=> b!3306007 d!926016))

(declare-fun d!926018 () Bool)

(declare-fun res!1340911 () Bool)

(declare-fun e!2056116 () Bool)

(assert (=> d!926018 (=> res!1340911 e!2056116)))

(assert (=> d!926018 (= res!1340911 ((_ is Nil!36513) tokens!494))))

(assert (=> d!926018 (= (forall!7571 tokens!494 lambda!119041) e!2056116)))

(declare-fun b!3306129 () Bool)

(declare-fun e!2056117 () Bool)

(assert (=> b!3306129 (= e!2056116 e!2056117)))

(declare-fun res!1340912 () Bool)

(assert (=> b!3306129 (=> (not res!1340912) (not e!2056117))))

(declare-fun dynLambda!14974 (Int Token!9962) Bool)

(assert (=> b!3306129 (= res!1340912 (dynLambda!14974 lambda!119041 (h!41933 tokens!494)))))

(declare-fun b!3306130 () Bool)

(assert (=> b!3306130 (= e!2056117 (forall!7571 (t!253630 tokens!494) lambda!119041))))

(assert (= (and d!926018 (not res!1340911)) b!3306129))

(assert (= (and b!3306129 res!1340912) b!3306130))

(declare-fun b_lambda!92363 () Bool)

(assert (=> (not b_lambda!92363) (not b!3306129)))

(declare-fun m!3632447 () Bool)

(assert (=> b!3306129 m!3632447))

(declare-fun m!3632449 () Bool)

(assert (=> b!3306130 m!3632449))

(assert (=> b!3305997 d!926018))

(declare-fun d!926020 () Bool)

(declare-fun list!13099 (Conc!10971) List!36635)

(assert (=> d!926020 (= (list!13095 (charsOf!3314 (h!41933 tokens!494))) (list!13099 (c!560835 (charsOf!3314 (h!41933 tokens!494)))))))

(declare-fun bs!549068 () Bool)

(assert (= bs!549068 d!926020))

(declare-fun m!3632451 () Bool)

(assert (=> bs!549068 m!3632451))

(assert (=> b!3305995 d!926020))

(declare-fun d!926022 () Bool)

(declare-fun lt!1120559 () BalanceConc!21556)

(assert (=> d!926022 (= (list!13095 lt!1120559) (originalCharacters!6012 (h!41933 tokens!494)))))

(assert (=> d!926022 (= lt!1120559 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))

(assert (=> d!926022 (= (charsOf!3314 (h!41933 tokens!494)) lt!1120559)))

(declare-fun b_lambda!92365 () Bool)

(assert (=> (not b_lambda!92365) (not d!926022)))

(assert (=> d!926022 t!253633))

(declare-fun b_and!226615 () Bool)

(assert (= b_and!226603 (and (=> t!253633 result!214420) b_and!226615)))

(assert (=> d!926022 t!253635))

(declare-fun b_and!226617 () Bool)

(assert (= b_and!226605 (and (=> t!253635 result!214424) b_and!226617)))

(assert (=> d!926022 t!253637))

(declare-fun b_and!226619 () Bool)

(assert (= b_and!226607 (and (=> t!253637 result!214426) b_and!226619)))

(declare-fun m!3632453 () Bool)

(assert (=> d!926022 m!3632453))

(assert (=> d!926022 m!3632321))

(assert (=> b!3305995 d!926022))

(declare-fun d!926024 () Bool)

(declare-fun res!1340913 () Bool)

(declare-fun e!2056118 () Bool)

(assert (=> d!926024 (=> (not res!1340913) (not e!2056118))))

(assert (=> d!926024 (= res!1340913 (not (isEmpty!20654 (originalCharacters!6012 separatorToken!241))))))

(assert (=> d!926024 (= (inv!49480 separatorToken!241) e!2056118)))

(declare-fun b!3306131 () Bool)

(declare-fun res!1340914 () Bool)

(assert (=> b!3306131 (=> (not res!1340914) (not e!2056118))))

(assert (=> b!3306131 (= res!1340914 (= (originalCharacters!6012 separatorToken!241) (list!13095 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(declare-fun b!3306132 () Bool)

(assert (=> b!3306132 (= e!2056118 (= (size!27577 separatorToken!241) (size!27581 (originalCharacters!6012 separatorToken!241))))))

(assert (= (and d!926024 res!1340913) b!3306131))

(assert (= (and b!3306131 res!1340914) b!3306132))

(declare-fun b_lambda!92367 () Bool)

(assert (=> (not b_lambda!92367) (not b!3306131)))

(declare-fun tb!171607 () Bool)

(declare-fun t!253648 () Bool)

(assert (=> (and b!3306006 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253648) tb!171607))

(declare-fun b!3306133 () Bool)

(declare-fun e!2056119 () Bool)

(declare-fun tp!1035239 () Bool)

(assert (=> b!3306133 (= e!2056119 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))) tp!1035239))))

(declare-fun result!214436 () Bool)

(assert (=> tb!171607 (= result!214436 (and (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))) e!2056119))))

(assert (= tb!171607 b!3306133))

(declare-fun m!3632455 () Bool)

(assert (=> b!3306133 m!3632455))

(declare-fun m!3632457 () Bool)

(assert (=> tb!171607 m!3632457))

(assert (=> b!3306131 t!253648))

(declare-fun b_and!226621 () Bool)

(assert (= b_and!226615 (and (=> t!253648 result!214436) b_and!226621)))

(declare-fun t!253650 () Bool)

(declare-fun tb!171609 () Bool)

(assert (=> (and b!3305993 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253650) tb!171609))

(declare-fun result!214438 () Bool)

(assert (= result!214438 result!214436))

(assert (=> b!3306131 t!253650))

(declare-fun b_and!226623 () Bool)

(assert (= b_and!226617 (and (=> t!253650 result!214438) b_and!226623)))

(declare-fun t!253652 () Bool)

(declare-fun tb!171611 () Bool)

(assert (=> (and b!3305994 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253652) tb!171611))

(declare-fun result!214440 () Bool)

(assert (= result!214440 result!214436))

(assert (=> b!3306131 t!253652))

(declare-fun b_and!226625 () Bool)

(assert (= b_and!226619 (and (=> t!253652 result!214440) b_and!226625)))

(declare-fun m!3632459 () Bool)

(assert (=> d!926024 m!3632459))

(declare-fun m!3632461 () Bool)

(assert (=> b!3306131 m!3632461))

(assert (=> b!3306131 m!3632461))

(declare-fun m!3632463 () Bool)

(assert (=> b!3306131 m!3632463))

(declare-fun m!3632465 () Bool)

(assert (=> b!3306132 m!3632465))

(assert (=> start!307990 d!926024))

(declare-fun d!926026 () Bool)

(declare-fun lt!1120562 () BalanceConc!21556)

(assert (=> d!926026 (= (list!13095 lt!1120562) (printList!1437 thiss!18206 (list!13098 lt!1120524)))))

(assert (=> d!926026 (= lt!1120562 (printTailRec!1384 thiss!18206 lt!1120524 0 (BalanceConc!21557 Empty!10971)))))

(assert (=> d!926026 (= (print!1952 thiss!18206 lt!1120524) lt!1120562)))

(declare-fun bs!549069 () Bool)

(assert (= bs!549069 d!926026))

(declare-fun m!3632467 () Bool)

(assert (=> bs!549069 m!3632467))

(declare-fun m!3632469 () Bool)

(assert (=> bs!549069 m!3632469))

(assert (=> bs!549069 m!3632469))

(declare-fun m!3632471 () Bool)

(assert (=> bs!549069 m!3632471))

(assert (=> bs!549069 m!3632269))

(assert (=> b!3306005 d!926026))

(declare-fun d!926028 () Bool)

(assert (=> d!926028 (= (list!13095 lt!1120527) (list!13099 (c!560835 lt!1120527)))))

(declare-fun bs!549070 () Bool)

(assert (= bs!549070 d!926028))

(declare-fun m!3632473 () Bool)

(assert (=> bs!549070 m!3632473))

(assert (=> b!3306005 d!926028))

(declare-fun d!926030 () Bool)

(declare-fun lt!1120579 () BalanceConc!21556)

(declare-fun printListTailRec!599 (LexerInterface!4887 List!36637 List!36635) List!36635)

(declare-fun dropList!1116 (BalanceConc!21558 Int) List!36637)

(assert (=> d!926030 (= (list!13095 lt!1120579) (printListTailRec!599 thiss!18206 (dropList!1116 lt!1120524 0) (list!13095 (BalanceConc!21557 Empty!10971))))))

(declare-fun e!2056125 () BalanceConc!21556)

(assert (=> d!926030 (= lt!1120579 e!2056125)))

(declare-fun c!560851 () Bool)

(assert (=> d!926030 (= c!560851 (>= 0 (size!27582 lt!1120524)))))

(declare-fun e!2056124 () Bool)

(assert (=> d!926030 e!2056124))

(declare-fun res!1340917 () Bool)

(assert (=> d!926030 (=> (not res!1340917) (not e!2056124))))

(assert (=> d!926030 (= res!1340917 (>= 0 0))))

(assert (=> d!926030 (= (printTailRec!1384 thiss!18206 lt!1120524 0 (BalanceConc!21557 Empty!10971)) lt!1120579)))

(declare-fun b!3306140 () Bool)

(assert (=> b!3306140 (= e!2056124 (<= 0 (size!27582 lt!1120524)))))

(declare-fun b!3306141 () Bool)

(assert (=> b!3306141 (= e!2056125 (BalanceConc!21557 Empty!10971))))

(declare-fun b!3306142 () Bool)

(declare-fun ++!8841 (BalanceConc!21556 BalanceConc!21556) BalanceConc!21556)

(assert (=> b!3306142 (= e!2056125 (printTailRec!1384 thiss!18206 lt!1120524 (+ 0 1) (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0)))))))

(declare-fun lt!1120577 () List!36637)

(assert (=> b!3306142 (= lt!1120577 (list!13098 lt!1120524))))

(declare-datatypes ((Unit!51440 0))(
  ( (Unit!51441) )
))
(declare-fun lt!1120578 () Unit!51440)

(declare-fun lemmaDropApply!1075 (List!36637 Int) Unit!51440)

(assert (=> b!3306142 (= lt!1120578 (lemmaDropApply!1075 lt!1120577 0))))

(declare-fun head!7131 (List!36637) Token!9962)

(declare-fun drop!1907 (List!36637 Int) List!36637)

(declare-fun apply!8392 (List!36637 Int) Token!9962)

(assert (=> b!3306142 (= (head!7131 (drop!1907 lt!1120577 0)) (apply!8392 lt!1120577 0))))

(declare-fun lt!1120580 () Unit!51440)

(assert (=> b!3306142 (= lt!1120580 lt!1120578)))

(declare-fun lt!1120582 () List!36637)

(assert (=> b!3306142 (= lt!1120582 (list!13098 lt!1120524))))

(declare-fun lt!1120583 () Unit!51440)

(declare-fun lemmaDropTail!959 (List!36637 Int) Unit!51440)

(assert (=> b!3306142 (= lt!1120583 (lemmaDropTail!959 lt!1120582 0))))

(declare-fun tail!5269 (List!36637) List!36637)

(assert (=> b!3306142 (= (tail!5269 (drop!1907 lt!1120582 0)) (drop!1907 lt!1120582 (+ 0 1)))))

(declare-fun lt!1120581 () Unit!51440)

(assert (=> b!3306142 (= lt!1120581 lt!1120583)))

(assert (= (and d!926030 res!1340917) b!3306140))

(assert (= (and d!926030 c!560851) b!3306141))

(assert (= (and d!926030 (not c!560851)) b!3306142))

(declare-fun m!3632475 () Bool)

(assert (=> d!926030 m!3632475))

(declare-fun m!3632477 () Bool)

(assert (=> d!926030 m!3632477))

(declare-fun m!3632479 () Bool)

(assert (=> d!926030 m!3632479))

(declare-fun m!3632481 () Bool)

(assert (=> d!926030 m!3632481))

(assert (=> d!926030 m!3632475))

(assert (=> d!926030 m!3632477))

(declare-fun m!3632483 () Bool)

(assert (=> d!926030 m!3632483))

(assert (=> b!3306140 m!3632479))

(declare-fun m!3632485 () Bool)

(assert (=> b!3306142 m!3632485))

(declare-fun m!3632487 () Bool)

(assert (=> b!3306142 m!3632487))

(declare-fun m!3632489 () Bool)

(assert (=> b!3306142 m!3632489))

(declare-fun m!3632491 () Bool)

(assert (=> b!3306142 m!3632491))

(declare-fun m!3632493 () Bool)

(assert (=> b!3306142 m!3632493))

(declare-fun m!3632495 () Bool)

(assert (=> b!3306142 m!3632495))

(declare-fun m!3632497 () Bool)

(assert (=> b!3306142 m!3632497))

(declare-fun m!3632499 () Bool)

(assert (=> b!3306142 m!3632499))

(assert (=> b!3306142 m!3632485))

(declare-fun m!3632501 () Bool)

(assert (=> b!3306142 m!3632501))

(assert (=> b!3306142 m!3632469))

(declare-fun m!3632503 () Bool)

(assert (=> b!3306142 m!3632503))

(declare-fun m!3632505 () Bool)

(assert (=> b!3306142 m!3632505))

(assert (=> b!3306142 m!3632489))

(assert (=> b!3306142 m!3632497))

(declare-fun m!3632507 () Bool)

(assert (=> b!3306142 m!3632507))

(assert (=> b!3306142 m!3632487))

(assert (=> b!3306142 m!3632503))

(assert (=> b!3306005 d!926030))

(declare-fun d!926032 () Bool)

(declare-fun e!2056128 () Bool)

(assert (=> d!926032 e!2056128))

(declare-fun res!1340920 () Bool)

(assert (=> d!926032 (=> (not res!1340920) (not e!2056128))))

(declare-fun lt!1120586 () BalanceConc!21558)

(assert (=> d!926032 (= res!1340920 (= (list!13098 lt!1120586) (Cons!36513 (h!41933 tokens!494) Nil!36513)))))

(declare-fun singleton!1032 (Token!9962) BalanceConc!21558)

(assert (=> d!926032 (= lt!1120586 (singleton!1032 (h!41933 tokens!494)))))

(assert (=> d!926032 (= (singletonSeq!2394 (h!41933 tokens!494)) lt!1120586)))

(declare-fun b!3306145 () Bool)

(declare-fun isBalanced!3283 (Conc!10972) Bool)

(assert (=> b!3306145 (= e!2056128 (isBalanced!3283 (c!560836 lt!1120586)))))

(assert (= (and d!926032 res!1340920) b!3306145))

(declare-fun m!3632509 () Bool)

(assert (=> d!926032 m!3632509))

(declare-fun m!3632511 () Bool)

(assert (=> d!926032 m!3632511))

(declare-fun m!3632513 () Bool)

(assert (=> b!3306145 m!3632513))

(assert (=> b!3306005 d!926032))

(declare-fun d!926034 () Bool)

(declare-fun c!560854 () Bool)

(assert (=> d!926034 (= c!560854 ((_ is Cons!36513) (Cons!36513 (h!41933 tokens!494) Nil!36513)))))

(declare-fun e!2056131 () List!36635)

(assert (=> d!926034 (= (printList!1437 thiss!18206 (Cons!36513 (h!41933 tokens!494) Nil!36513)) e!2056131)))

(declare-fun b!3306150 () Bool)

(declare-fun ++!8842 (List!36635 List!36635) List!36635)

(assert (=> b!3306150 (= e!2056131 (++!8842 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))) (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))))

(declare-fun b!3306151 () Bool)

(assert (=> b!3306151 (= e!2056131 Nil!36511)))

(assert (= (and d!926034 c!560854) b!3306150))

(assert (= (and d!926034 (not c!560854)) b!3306151))

(declare-fun m!3632515 () Bool)

(assert (=> b!3306150 m!3632515))

(assert (=> b!3306150 m!3632515))

(declare-fun m!3632517 () Bool)

(assert (=> b!3306150 m!3632517))

(declare-fun m!3632519 () Bool)

(assert (=> b!3306150 m!3632519))

(assert (=> b!3306150 m!3632517))

(assert (=> b!3306150 m!3632519))

(declare-fun m!3632521 () Bool)

(assert (=> b!3306150 m!3632521))

(assert (=> b!3306005 d!926034))

(declare-fun bs!549077 () Bool)

(declare-fun d!926036 () Bool)

(assert (= bs!549077 (and d!926036 b!3305997)))

(declare-fun lambda!119051 () Int)

(assert (=> bs!549077 (not (= lambda!119051 lambda!119041))))

(declare-fun b!3306288 () Bool)

(declare-fun e!2056232 () Bool)

(assert (=> b!3306288 (= e!2056232 true)))

(declare-fun b!3306287 () Bool)

(declare-fun e!2056231 () Bool)

(assert (=> b!3306287 (= e!2056231 e!2056232)))

(declare-fun b!3306286 () Bool)

(declare-fun e!2056230 () Bool)

(assert (=> b!3306286 (= e!2056230 e!2056231)))

(assert (=> d!926036 e!2056230))

(assert (= b!3306287 b!3306288))

(assert (= b!3306286 b!3306287))

(assert (= (and d!926036 ((_ is Cons!36512) rules!2135)) b!3306286))

(declare-fun order!18973 () Int)

(declare-fun order!18975 () Int)

(declare-fun dynLambda!14975 (Int Int) Int)

(declare-fun dynLambda!14976 (Int Int) Int)

(assert (=> b!3306288 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14976 order!18975 lambda!119051))))

(declare-fun order!18977 () Int)

(declare-fun dynLambda!14977 (Int Int) Int)

(assert (=> b!3306288 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14976 order!18975 lambda!119051))))

(assert (=> d!926036 true))

(declare-fun e!2056223 () Bool)

(assert (=> d!926036 e!2056223))

(declare-fun res!1340951 () Bool)

(assert (=> d!926036 (=> (not res!1340951) (not e!2056223))))

(declare-fun lt!1120622 () Bool)

(assert (=> d!926036 (= res!1340951 (= lt!1120622 (forall!7571 (list!13098 (seqFromList!3651 tokens!494)) lambda!119051)))))

(declare-fun forall!7573 (BalanceConc!21558 Int) Bool)

(assert (=> d!926036 (= lt!1120622 (forall!7573 (seqFromList!3651 tokens!494) lambda!119051))))

(assert (=> d!926036 (not (isEmpty!20648 rules!2135))))

(assert (=> d!926036 (= (rulesProduceEachTokenIndividually!1338 thiss!18206 rules!2135 (seqFromList!3651 tokens!494)) lt!1120622)))

(declare-fun b!3306277 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1765 (LexerInterface!4887 List!36636 List!36637) Bool)

(assert (=> b!3306277 (= e!2056223 (= lt!1120622 (rulesProduceEachTokenIndividuallyList!1765 thiss!18206 rules!2135 (list!13098 (seqFromList!3651 tokens!494)))))))

(assert (= (and d!926036 res!1340951) b!3306277))

(assert (=> d!926036 m!3632229))

(declare-fun m!3632659 () Bool)

(assert (=> d!926036 m!3632659))

(assert (=> d!926036 m!3632659))

(declare-fun m!3632661 () Bool)

(assert (=> d!926036 m!3632661))

(assert (=> d!926036 m!3632229))

(declare-fun m!3632663 () Bool)

(assert (=> d!926036 m!3632663))

(assert (=> d!926036 m!3632281))

(assert (=> b!3306277 m!3632229))

(assert (=> b!3306277 m!3632659))

(assert (=> b!3306277 m!3632659))

(declare-fun m!3632665 () Bool)

(assert (=> b!3306277 m!3632665))

(assert (=> b!3306003 d!926036))

(declare-fun d!926072 () Bool)

(declare-fun fromListB!1606 (List!36637) BalanceConc!21558)

(assert (=> d!926072 (= (seqFromList!3651 tokens!494) (fromListB!1606 tokens!494))))

(declare-fun bs!549078 () Bool)

(assert (= bs!549078 d!926072))

(declare-fun m!3632667 () Bool)

(assert (=> bs!549078 m!3632667))

(assert (=> b!3306003 d!926072))

(declare-fun b!3306292 () Bool)

(declare-fun e!2056235 () Bool)

(assert (=> b!3306292 (= e!2056235 (inv!15 (value!171453 (h!41933 tokens!494))))))

(declare-fun b!3306293 () Bool)

(declare-fun e!2056234 () Bool)

(declare-fun e!2056233 () Bool)

(assert (=> b!3306293 (= e!2056234 e!2056233)))

(declare-fun c!560870 () Bool)

(assert (=> b!3306293 (= c!560870 ((_ is IntegerValue!16585) (value!171453 (h!41933 tokens!494))))))

(declare-fun b!3306294 () Bool)

(assert (=> b!3306294 (= e!2056233 (inv!17 (value!171453 (h!41933 tokens!494))))))

(declare-fun b!3306295 () Bool)

(declare-fun res!1340952 () Bool)

(assert (=> b!3306295 (=> res!1340952 e!2056235)))

(assert (=> b!3306295 (= res!1340952 (not ((_ is IntegerValue!16586) (value!171453 (h!41933 tokens!494)))))))

(assert (=> b!3306295 (= e!2056233 e!2056235)))

(declare-fun b!3306291 () Bool)

(assert (=> b!3306291 (= e!2056234 (inv!16 (value!171453 (h!41933 tokens!494))))))

(declare-fun d!926074 () Bool)

(declare-fun c!560869 () Bool)

(assert (=> d!926074 (= c!560869 ((_ is IntegerValue!16584) (value!171453 (h!41933 tokens!494))))))

(assert (=> d!926074 (= (inv!21 (value!171453 (h!41933 tokens!494))) e!2056234)))

(assert (= (and d!926074 c!560869) b!3306291))

(assert (= (and d!926074 (not c!560869)) b!3306293))

(assert (= (and b!3306293 c!560870) b!3306294))

(assert (= (and b!3306293 (not c!560870)) b!3306295))

(assert (= (and b!3306295 (not res!1340952)) b!3306292))

(declare-fun m!3632669 () Bool)

(assert (=> b!3306292 m!3632669))

(declare-fun m!3632671 () Bool)

(assert (=> b!3306294 m!3632671))

(declare-fun m!3632673 () Bool)

(assert (=> b!3306291 m!3632673))

(assert (=> b!3306004 d!926074))

(declare-fun e!2056238 () Bool)

(assert (=> b!3306002 (= tp!1035223 e!2056238)))

(declare-fun b!3306307 () Bool)

(declare-fun tp!1035307 () Bool)

(declare-fun tp!1035308 () Bool)

(assert (=> b!3306307 (= e!2056238 (and tp!1035307 tp!1035308))))

(declare-fun b!3306309 () Bool)

(declare-fun tp!1035310 () Bool)

(declare-fun tp!1035311 () Bool)

(assert (=> b!3306309 (= e!2056238 (and tp!1035310 tp!1035311))))

(declare-fun b!3306308 () Bool)

(declare-fun tp!1035309 () Bool)

(assert (=> b!3306308 (= e!2056238 tp!1035309)))

(declare-fun b!3306306 () Bool)

(declare-fun tp_is_empty!17373 () Bool)

(assert (=> b!3306306 (= e!2056238 tp_is_empty!17373)))

(assert (= (and b!3306002 ((_ is ElementMatch!10057) (regex!5298 (rule!7802 (h!41933 tokens!494))))) b!3306306))

(assert (= (and b!3306002 ((_ is Concat!15585) (regex!5298 (rule!7802 (h!41933 tokens!494))))) b!3306307))

(assert (= (and b!3306002 ((_ is Star!10057) (regex!5298 (rule!7802 (h!41933 tokens!494))))) b!3306308))

(assert (= (and b!3306002 ((_ is Union!10057) (regex!5298 (rule!7802 (h!41933 tokens!494))))) b!3306309))

(declare-fun e!2056239 () Bool)

(assert (=> b!3305992 (= tp!1035222 e!2056239)))

(declare-fun b!3306311 () Bool)

(declare-fun tp!1035312 () Bool)

(declare-fun tp!1035313 () Bool)

(assert (=> b!3306311 (= e!2056239 (and tp!1035312 tp!1035313))))

(declare-fun b!3306313 () Bool)

(declare-fun tp!1035315 () Bool)

(declare-fun tp!1035316 () Bool)

(assert (=> b!3306313 (= e!2056239 (and tp!1035315 tp!1035316))))

(declare-fun b!3306312 () Bool)

(declare-fun tp!1035314 () Bool)

(assert (=> b!3306312 (= e!2056239 tp!1035314)))

(declare-fun b!3306310 () Bool)

(assert (=> b!3306310 (= e!2056239 tp_is_empty!17373)))

(assert (= (and b!3305992 ((_ is ElementMatch!10057) (regex!5298 (h!41932 rules!2135)))) b!3306310))

(assert (= (and b!3305992 ((_ is Concat!15585) (regex!5298 (h!41932 rules!2135)))) b!3306311))

(assert (= (and b!3305992 ((_ is Star!10057) (regex!5298 (h!41932 rules!2135)))) b!3306312))

(assert (= (and b!3305992 ((_ is Union!10057) (regex!5298 (h!41932 rules!2135)))) b!3306313))

(declare-fun e!2056240 () Bool)

(assert (=> b!3306011 (= tp!1035226 e!2056240)))

(declare-fun b!3306315 () Bool)

(declare-fun tp!1035317 () Bool)

(declare-fun tp!1035318 () Bool)

(assert (=> b!3306315 (= e!2056240 (and tp!1035317 tp!1035318))))

(declare-fun b!3306317 () Bool)

(declare-fun tp!1035320 () Bool)

(declare-fun tp!1035321 () Bool)

(assert (=> b!3306317 (= e!2056240 (and tp!1035320 tp!1035321))))

(declare-fun b!3306316 () Bool)

(declare-fun tp!1035319 () Bool)

(assert (=> b!3306316 (= e!2056240 tp!1035319)))

(declare-fun b!3306314 () Bool)

(assert (=> b!3306314 (= e!2056240 tp_is_empty!17373)))

(assert (= (and b!3306011 ((_ is ElementMatch!10057) (regex!5298 (rule!7802 separatorToken!241)))) b!3306314))

(assert (= (and b!3306011 ((_ is Concat!15585) (regex!5298 (rule!7802 separatorToken!241)))) b!3306315))

(assert (= (and b!3306011 ((_ is Star!10057) (regex!5298 (rule!7802 separatorToken!241)))) b!3306316))

(assert (= (and b!3306011 ((_ is Union!10057) (regex!5298 (rule!7802 separatorToken!241)))) b!3306317))

(declare-fun b!3306331 () Bool)

(declare-fun b_free!86933 () Bool)

(declare-fun b_next!87637 () Bool)

(assert (=> b!3306331 (= b_free!86933 (not b_next!87637))))

(declare-fun tp!1035335 () Bool)

(declare-fun b_and!226647 () Bool)

(assert (=> b!3306331 (= tp!1035335 b_and!226647)))

(declare-fun b_free!86935 () Bool)

(declare-fun b_next!87639 () Bool)

(assert (=> b!3306331 (= b_free!86935 (not b_next!87639))))

(declare-fun t!253677 () Bool)

(declare-fun tb!171627 () Bool)

(assert (=> (and b!3306331 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253677) tb!171627))

(declare-fun result!214468 () Bool)

(assert (= result!214468 result!214420))

(assert (=> b!3306034 t!253677))

(assert (=> d!926022 t!253677))

(declare-fun tb!171629 () Bool)

(declare-fun t!253679 () Bool)

(assert (=> (and b!3306331 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253679) tb!171629))

(declare-fun result!214470 () Bool)

(assert (= result!214470 result!214436))

(assert (=> b!3306131 t!253679))

(declare-fun tp!1035336 () Bool)

(declare-fun b_and!226649 () Bool)

(assert (=> b!3306331 (= tp!1035336 (and (=> t!253677 result!214468) (=> t!253679 result!214470) b_and!226649))))

(declare-fun e!2056253 () Bool)

(assert (=> b!3306331 (= e!2056253 (and tp!1035335 tp!1035336))))

(declare-fun e!2056258 () Bool)

(assert (=> b!3306001 (= tp!1035232 e!2056258)))

(declare-fun tp!1035334 () Bool)

(declare-fun e!2056257 () Bool)

(declare-fun b!3306330 () Bool)

(assert (=> b!3306330 (= e!2056257 (and tp!1035334 (inv!49476 (tag!5844 (rule!7802 (h!41933 (t!253630 tokens!494))))) (inv!49479 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) e!2056253))))

(declare-fun b!3306329 () Bool)

(declare-fun e!2056254 () Bool)

(declare-fun tp!1035333 () Bool)

(assert (=> b!3306329 (= e!2056254 (and (inv!21 (value!171453 (h!41933 (t!253630 tokens!494)))) e!2056257 tp!1035333))))

(declare-fun b!3306328 () Bool)

(declare-fun tp!1035332 () Bool)

(assert (=> b!3306328 (= e!2056258 (and (inv!49480 (h!41933 (t!253630 tokens!494))) e!2056254 tp!1035332))))

(assert (= b!3306330 b!3306331))

(assert (= b!3306329 b!3306330))

(assert (= b!3306328 b!3306329))

(assert (= (and b!3306001 ((_ is Cons!36513) (t!253630 tokens!494))) b!3306328))

(declare-fun m!3632675 () Bool)

(assert (=> b!3306330 m!3632675))

(declare-fun m!3632677 () Bool)

(assert (=> b!3306330 m!3632677))

(declare-fun m!3632679 () Bool)

(assert (=> b!3306329 m!3632679))

(declare-fun m!3632681 () Bool)

(assert (=> b!3306328 m!3632681))

(declare-fun b!3306336 () Bool)

(declare-fun e!2056261 () Bool)

(declare-fun tp!1035339 () Bool)

(assert (=> b!3306336 (= e!2056261 (and tp_is_empty!17373 tp!1035339))))

(assert (=> b!3305999 (= tp!1035228 e!2056261)))

(assert (= (and b!3305999 ((_ is Cons!36511) (originalCharacters!6012 separatorToken!241))) b!3306336))

(declare-fun b!3306347 () Bool)

(declare-fun b_free!86937 () Bool)

(declare-fun b_next!87641 () Bool)

(assert (=> b!3306347 (= b_free!86937 (not b_next!87641))))

(declare-fun tp!1035349 () Bool)

(declare-fun b_and!226651 () Bool)

(assert (=> b!3306347 (= tp!1035349 b_and!226651)))

(declare-fun b_free!86939 () Bool)

(declare-fun b_next!87643 () Bool)

(assert (=> b!3306347 (= b_free!86939 (not b_next!87643))))

(declare-fun tb!171631 () Bool)

(declare-fun t!253681 () Bool)

(assert (=> (and b!3306347 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253681) tb!171631))

(declare-fun result!214476 () Bool)

(assert (= result!214476 result!214420))

(assert (=> b!3306034 t!253681))

(assert (=> d!926022 t!253681))

(declare-fun t!253683 () Bool)

(declare-fun tb!171633 () Bool)

(assert (=> (and b!3306347 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253683) tb!171633))

(declare-fun result!214478 () Bool)

(assert (= result!214478 result!214436))

(assert (=> b!3306131 t!253683))

(declare-fun b_and!226653 () Bool)

(declare-fun tp!1035351 () Bool)

(assert (=> b!3306347 (= tp!1035351 (and (=> t!253681 result!214476) (=> t!253683 result!214478) b_and!226653))))

(declare-fun e!2056273 () Bool)

(assert (=> b!3306347 (= e!2056273 (and tp!1035349 tp!1035351))))

(declare-fun b!3306346 () Bool)

(declare-fun e!2056270 () Bool)

(declare-fun tp!1035348 () Bool)

(assert (=> b!3306346 (= e!2056270 (and tp!1035348 (inv!49476 (tag!5844 (h!41932 (t!253629 rules!2135)))) (inv!49479 (transformation!5298 (h!41932 (t!253629 rules!2135)))) e!2056273))))

(declare-fun b!3306345 () Bool)

(declare-fun e!2056271 () Bool)

(declare-fun tp!1035350 () Bool)

(assert (=> b!3306345 (= e!2056271 (and e!2056270 tp!1035350))))

(assert (=> b!3305998 (= tp!1035221 e!2056271)))

(assert (= b!3306346 b!3306347))

(assert (= b!3306345 b!3306346))

(assert (= (and b!3305998 ((_ is Cons!36512) (t!253629 rules!2135))) b!3306345))

(declare-fun m!3632683 () Bool)

(assert (=> b!3306346 m!3632683))

(declare-fun m!3632685 () Bool)

(assert (=> b!3306346 m!3632685))

(declare-fun b!3306348 () Bool)

(declare-fun e!2056274 () Bool)

(declare-fun tp!1035352 () Bool)

(assert (=> b!3306348 (= e!2056274 (and tp_is_empty!17373 tp!1035352))))

(assert (=> b!3306004 (= tp!1035229 e!2056274)))

(assert (= (and b!3306004 ((_ is Cons!36511) (originalCharacters!6012 (h!41933 tokens!494)))) b!3306348))

(declare-fun b_lambda!92383 () Bool)

(assert (= b_lambda!92359 (or (and b!3306006 b_free!86915 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3306347 b_free!86939 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3306331 b_free!86935 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3305994 b_free!86923 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3305993 b_free!86919) b_lambda!92383)))

(declare-fun b_lambda!92385 () Bool)

(assert (= b_lambda!92365 (or (and b!3306006 b_free!86915 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3306347 b_free!86939 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3306331 b_free!86935 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3305994 b_free!86923 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (and b!3305993 b_free!86919) b_lambda!92385)))

(declare-fun b_lambda!92387 () Bool)

(assert (= b_lambda!92363 (or b!3305997 b_lambda!92387)))

(declare-fun bs!549079 () Bool)

(declare-fun d!926076 () Bool)

(assert (= bs!549079 (and d!926076 b!3305997)))

(assert (=> bs!549079 (= (dynLambda!14974 lambda!119041 (h!41933 tokens!494)) (not (isSeparator!5298 (rule!7802 (h!41933 tokens!494)))))))

(assert (=> b!3306129 d!926076))

(declare-fun b_lambda!92389 () Bool)

(assert (= b_lambda!92367 (or (and b!3306347 b_free!86939 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))))) (and b!3305993 b_free!86919 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))))) (and b!3306006 b_free!86915 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))))) (and b!3305994 b_free!86923) (and b!3306331 b_free!86935 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))))) b_lambda!92389)))

(check-sat (not b!3306330) (not d!926016) (not d!926020) (not b!3306124) (not b!3306112) (not b!3306091) tp_is_empty!17373 (not b_lambda!92389) (not b!3306346) (not b!3306018) (not b_next!87617) (not b!3306040) (not b_next!87621) (not d!925986) (not b!3306119) (not b!3306140) (not b_next!87641) (not b!3306102) (not b!3306131) (not b!3306130) (not b!3306150) (not b!3306103) (not tb!171595) (not d!925974) b_and!226651 (not b!3306292) (not d!926072) (not b!3306336) (not b!3306315) b_and!226647 (not d!926026) (not b!3306313) (not b!3306317) (not b_next!87627) (not b_next!87625) (not d!926032) (not b!3306035) (not b!3306123) (not b!3306015) (not d!926036) b_and!226653 (not b_next!87623) (not b!3306090) (not d!926014) (not b_lambda!92383) (not b!3306087) (not d!926024) (not b!3306142) (not b!3306294) (not b!3306316) (not b_next!87643) (not d!925980) b_and!226599 (not b!3306019) (not b!3306111) (not b!3306312) (not b!3306122) (not b!3306311) (not b!3306348) (not d!925992) (not b_lambda!92385) (not d!925966) (not b_next!87619) (not d!926022) (not b!3306132) (not b!3306291) (not b!3306307) b_and!226595 (not b!3306145) (not b!3306309) (not b!3306328) (not b!3306088) (not d!926006) b_and!226621 (not b_next!87639) (not d!925978) (not tb!171607) b_and!226591 b_and!226625 (not b!3306345) (not b!3306308) (not b!3306286) (not b!3306133) (not d!926028) (not b!3306105) (not b!3306121) (not d!925970) b_and!226623 (not b!3306020) (not b!3306034) (not b!3306277) (not b_next!87637) (not b_lambda!92387) (not b!3306329) (not b!3306120) b_and!226649 (not d!926030))
(check-sat (not b_next!87617) (not b_next!87621) (not b_next!87641) b_and!226651 b_and!226647 (not b_next!87619) b_and!226595 b_and!226621 b_and!226623 (not b_next!87637) b_and!226649 (not b_next!87627) (not b_next!87625) b_and!226653 (not b_next!87623) (not b_next!87643) b_and!226599 (not b_next!87639) b_and!226625 b_and!226591)
(get-model)

(declare-fun d!926100 () Bool)

(assert (=> d!926100 (= (inv!49476 (tag!5844 (h!41932 (t!253629 rules!2135)))) (= (mod (str.len (value!171452 (tag!5844 (h!41932 (t!253629 rules!2135))))) 2) 0))))

(assert (=> b!3306346 d!926100))

(declare-fun d!926102 () Bool)

(declare-fun res!1340966 () Bool)

(declare-fun e!2056280 () Bool)

(assert (=> d!926102 (=> (not res!1340966) (not e!2056280))))

(assert (=> d!926102 (= res!1340966 (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toValue!7438 (transformation!5298 (h!41932 (t!253629 rules!2135))))))))

(assert (=> d!926102 (= (inv!49479 (transformation!5298 (h!41932 (t!253629 rules!2135)))) e!2056280)))

(declare-fun b!3306358 () Bool)

(assert (=> b!3306358 (= e!2056280 (equivClasses!2092 (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toValue!7438 (transformation!5298 (h!41932 (t!253629 rules!2135))))))))

(assert (= (and d!926102 res!1340966) b!3306358))

(declare-fun m!3632735 () Bool)

(assert (=> d!926102 m!3632735))

(declare-fun m!3632737 () Bool)

(assert (=> b!3306358 m!3632737))

(assert (=> b!3306346 d!926102))

(declare-fun d!926104 () Bool)

(declare-fun list!13101 (Conc!10972) List!36637)

(assert (=> d!926104 (= (list!13098 (singletonSeq!2394 separatorToken!241)) (list!13101 (c!560836 (singletonSeq!2394 separatorToken!241))))))

(declare-fun bs!549089 () Bool)

(assert (= bs!549089 d!926104))

(declare-fun m!3632739 () Bool)

(assert (=> bs!549089 m!3632739))

(assert (=> d!926014 d!926104))

(declare-fun d!926106 () Bool)

(assert (=> d!926106 (= (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))) (list!13101 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))))

(declare-fun bs!549090 () Bool)

(assert (= bs!549090 d!926106))

(declare-fun m!3632741 () Bool)

(assert (=> bs!549090 m!3632741))

(assert (=> d!926014 d!926106))

(declare-fun d!926108 () Bool)

(declare-fun e!2056281 () Bool)

(assert (=> d!926108 e!2056281))

(declare-fun res!1340967 () Bool)

(assert (=> d!926108 (=> (not res!1340967) (not e!2056281))))

(declare-fun lt!1120630 () BalanceConc!21558)

(assert (=> d!926108 (= res!1340967 (= (list!13098 lt!1120630) (Cons!36513 separatorToken!241 Nil!36513)))))

(assert (=> d!926108 (= lt!1120630 (singleton!1032 separatorToken!241))))

(assert (=> d!926108 (= (singletonSeq!2394 separatorToken!241) lt!1120630)))

(declare-fun b!3306359 () Bool)

(assert (=> b!3306359 (= e!2056281 (isBalanced!3283 (c!560836 lt!1120630)))))

(assert (= (and d!926108 res!1340967) b!3306359))

(declare-fun m!3632743 () Bool)

(assert (=> d!926108 m!3632743))

(declare-fun m!3632745 () Bool)

(assert (=> d!926108 m!3632745))

(declare-fun m!3632747 () Bool)

(assert (=> b!3306359 m!3632747))

(assert (=> d!926014 d!926108))

(declare-fun d!926110 () Bool)

(declare-fun lt!1120631 () BalanceConc!21556)

(assert (=> d!926110 (= (list!13095 lt!1120631) (printList!1437 thiss!18206 (list!13098 (singletonSeq!2394 separatorToken!241))))))

(assert (=> d!926110 (= lt!1120631 (printTailRec!1384 thiss!18206 (singletonSeq!2394 separatorToken!241) 0 (BalanceConc!21557 Empty!10971)))))

(assert (=> d!926110 (= (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)) lt!1120631)))

(declare-fun bs!549091 () Bool)

(assert (= bs!549091 d!926110))

(declare-fun m!3632749 () Bool)

(assert (=> bs!549091 m!3632749))

(assert (=> bs!549091 m!3632415))

(assert (=> bs!549091 m!3632423))

(assert (=> bs!549091 m!3632423))

(declare-fun m!3632751 () Bool)

(assert (=> bs!549091 m!3632751))

(assert (=> bs!549091 m!3632415))

(declare-fun m!3632753 () Bool)

(assert (=> bs!549091 m!3632753))

(assert (=> d!926014 d!926110))

(assert (=> d!926014 d!926012))

(declare-fun d!926112 () Bool)

(declare-fun lt!1120634 () Int)

(declare-fun size!27587 (List!36637) Int)

(assert (=> d!926112 (= lt!1120634 (size!27587 (list!13098 (_1!21132 lt!1120553))))))

(declare-fun size!27588 (Conc!10972) Int)

(assert (=> d!926112 (= lt!1120634 (size!27588 (c!560836 (_1!21132 lt!1120553))))))

(assert (=> d!926112 (= (size!27582 (_1!21132 lt!1120553)) lt!1120634)))

(declare-fun bs!549092 () Bool)

(assert (= bs!549092 d!926112))

(declare-fun m!3632755 () Bool)

(assert (=> bs!549092 m!3632755))

(assert (=> bs!549092 m!3632755))

(declare-fun m!3632757 () Bool)

(assert (=> bs!549092 m!3632757))

(declare-fun m!3632759 () Bool)

(assert (=> bs!549092 m!3632759))

(assert (=> d!926014 d!926112))

(declare-fun b!3306360 () Bool)

(declare-fun res!1340969 () Bool)

(declare-fun e!2056284 () Bool)

(assert (=> b!3306360 (=> (not res!1340969) (not e!2056284))))

(declare-fun lt!1120635 () tuple2!35996)

(assert (=> b!3306360 (= res!1340969 (= (list!13098 (_1!21132 lt!1120635)) (_1!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))))

(declare-fun b!3306361 () Bool)

(assert (=> b!3306361 (= e!2056284 (= (list!13095 (_2!21132 lt!1120635)) (_2!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))))

(declare-fun b!3306362 () Bool)

(declare-fun e!2056283 () Bool)

(assert (=> b!3306362 (= e!2056283 (= (_2!21132 lt!1120635) (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))))

(declare-fun d!926114 () Bool)

(assert (=> d!926114 e!2056284))

(declare-fun res!1340968 () Bool)

(assert (=> d!926114 (=> (not res!1340968) (not e!2056284))))

(assert (=> d!926114 (= res!1340968 e!2056283)))

(declare-fun c!560872 () Bool)

(assert (=> d!926114 (= c!560872 (> (size!27582 (_1!21132 lt!1120635)) 0))))

(assert (=> d!926114 (= lt!1120635 (lexTailRecV2!967 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)) (BalanceConc!21557 Empty!10971) (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)) (BalanceConc!21559 Empty!10972)))))

(assert (=> d!926114 (= (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))) lt!1120635)))

(declare-fun b!3306363 () Bool)

(declare-fun e!2056282 () Bool)

(assert (=> b!3306363 (= e!2056282 (not (isEmpty!20649 (_1!21132 lt!1120635))))))

(declare-fun b!3306364 () Bool)

(assert (=> b!3306364 (= e!2056283 e!2056282)))

(declare-fun res!1340970 () Bool)

(assert (=> b!3306364 (= res!1340970 (< (size!27583 (_2!21132 lt!1120635)) (size!27583 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))

(assert (=> b!3306364 (=> (not res!1340970) (not e!2056282))))

(assert (= (and d!926114 c!560872) b!3306364))

(assert (= (and d!926114 (not c!560872)) b!3306362))

(assert (= (and b!3306364 res!1340970) b!3306363))

(assert (= (and d!926114 res!1340968) b!3306360))

(assert (= (and b!3306360 res!1340969) b!3306361))

(declare-fun m!3632761 () Bool)

(assert (=> b!3306364 m!3632761))

(assert (=> b!3306364 m!3632419))

(declare-fun m!3632763 () Bool)

(assert (=> b!3306364 m!3632763))

(declare-fun m!3632765 () Bool)

(assert (=> b!3306363 m!3632765))

(declare-fun m!3632767 () Bool)

(assert (=> b!3306361 m!3632767))

(assert (=> b!3306361 m!3632419))

(declare-fun m!3632769 () Bool)

(assert (=> b!3306361 m!3632769))

(assert (=> b!3306361 m!3632769))

(declare-fun m!3632771 () Bool)

(assert (=> b!3306361 m!3632771))

(declare-fun m!3632773 () Bool)

(assert (=> d!926114 m!3632773))

(assert (=> d!926114 m!3632419))

(assert (=> d!926114 m!3632419))

(declare-fun m!3632775 () Bool)

(assert (=> d!926114 m!3632775))

(declare-fun m!3632777 () Bool)

(assert (=> b!3306360 m!3632777))

(assert (=> b!3306360 m!3632419))

(assert (=> b!3306360 m!3632769))

(assert (=> b!3306360 m!3632769))

(assert (=> b!3306360 m!3632771))

(assert (=> d!926014 d!926114))

(declare-fun bs!549099 () Bool)

(declare-fun d!926116 () Bool)

(assert (= bs!549099 (and d!926116 b!3305997)))

(declare-fun lambda!119058 () Int)

(assert (=> bs!549099 (not (= lambda!119058 lambda!119041))))

(declare-fun bs!549100 () Bool)

(assert (= bs!549100 (and d!926116 d!926036)))

(assert (=> bs!549100 (= lambda!119058 lambda!119051)))

(declare-fun b!3306409 () Bool)

(declare-fun e!2056314 () Bool)

(assert (=> b!3306409 (= e!2056314 true)))

(declare-fun b!3306408 () Bool)

(declare-fun e!2056313 () Bool)

(assert (=> b!3306408 (= e!2056313 e!2056314)))

(declare-fun b!3306407 () Bool)

(declare-fun e!2056312 () Bool)

(assert (=> b!3306407 (= e!2056312 e!2056313)))

(assert (=> d!926116 e!2056312))

(assert (= b!3306408 b!3306409))

(assert (= b!3306407 b!3306408))

(assert (= (and d!926116 ((_ is Cons!36512) rules!2135)) b!3306407))

(assert (=> b!3306409 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14976 order!18975 lambda!119058))))

(assert (=> b!3306409 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14976 order!18975 lambda!119058))))

(assert (=> d!926116 true))

(declare-fun lt!1120753 () Bool)

(assert (=> d!926116 (= lt!1120753 (forall!7571 (list!13098 (seqFromList!3651 tokens!494)) lambda!119058))))

(declare-fun e!2056310 () Bool)

(assert (=> d!926116 (= lt!1120753 e!2056310)))

(declare-fun res!1340981 () Bool)

(assert (=> d!926116 (=> res!1340981 e!2056310)))

(assert (=> d!926116 (= res!1340981 (not ((_ is Cons!36513) (list!13098 (seqFromList!3651 tokens!494)))))))

(assert (=> d!926116 (not (isEmpty!20648 rules!2135))))

(assert (=> d!926116 (= (rulesProduceEachTokenIndividuallyList!1765 thiss!18206 rules!2135 (list!13098 (seqFromList!3651 tokens!494))) lt!1120753)))

(declare-fun b!3306405 () Bool)

(declare-fun e!2056311 () Bool)

(assert (=> b!3306405 (= e!2056310 e!2056311)))

(declare-fun res!1340982 () Bool)

(assert (=> b!3306405 (=> (not res!1340982) (not e!2056311))))

(assert (=> b!3306405 (= res!1340982 (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 (h!41933 (list!13098 (seqFromList!3651 tokens!494)))))))

(declare-fun b!3306406 () Bool)

(assert (=> b!3306406 (= e!2056311 (rulesProduceEachTokenIndividuallyList!1765 thiss!18206 rules!2135 (t!253630 (list!13098 (seqFromList!3651 tokens!494)))))))

(assert (= (and d!926116 (not res!1340981)) b!3306405))

(assert (= (and b!3306405 res!1340982) b!3306406))

(assert (=> d!926116 m!3632659))

(declare-fun m!3632891 () Bool)

(assert (=> d!926116 m!3632891))

(assert (=> d!926116 m!3632281))

(declare-fun m!3632893 () Bool)

(assert (=> b!3306405 m!3632893))

(declare-fun m!3632897 () Bool)

(assert (=> b!3306406 m!3632897))

(assert (=> b!3306277 d!926116))

(declare-fun d!926132 () Bool)

(assert (=> d!926132 (= (list!13098 (seqFromList!3651 tokens!494)) (list!13101 (c!560836 (seqFromList!3651 tokens!494))))))

(declare-fun bs!549102 () Bool)

(assert (= bs!549102 d!926132))

(declare-fun m!3632899 () Bool)

(assert (=> bs!549102 m!3632899))

(assert (=> b!3306277 d!926132))

(declare-fun d!926136 () Bool)

(assert (=> d!926136 (= (inv!49476 (tag!5844 (rule!7802 (h!41933 (t!253630 tokens!494))))) (= (mod (str.len (value!171452 (tag!5844 (rule!7802 (h!41933 (t!253630 tokens!494)))))) 2) 0))))

(assert (=> b!3306330 d!926136))

(declare-fun d!926138 () Bool)

(declare-fun res!1340983 () Bool)

(declare-fun e!2056315 () Bool)

(assert (=> d!926138 (=> (not res!1340983) (not e!2056315))))

(assert (=> d!926138 (= res!1340983 (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))))))

(assert (=> d!926138 (= (inv!49479 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) e!2056315)))

(declare-fun b!3306410 () Bool)

(assert (=> b!3306410 (= e!2056315 (equivClasses!2092 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))))))

(assert (= (and d!926138 res!1340983) b!3306410))

(declare-fun m!3632901 () Bool)

(assert (=> d!926138 m!3632901))

(declare-fun m!3632903 () Bool)

(assert (=> b!3306410 m!3632903))

(assert (=> b!3306330 d!926138))

(declare-fun d!926140 () Bool)

(declare-fun lt!1120759 () Int)

(assert (=> d!926140 (= lt!1120759 (size!27581 (list!13095 (_2!21132 lt!1120548))))))

(declare-fun size!27589 (Conc!10971) Int)

(assert (=> d!926140 (= lt!1120759 (size!27589 (c!560835 (_2!21132 lt!1120548))))))

(assert (=> d!926140 (= (size!27583 (_2!21132 lt!1120548)) lt!1120759)))

(declare-fun bs!549104 () Bool)

(assert (= bs!549104 d!926140))

(assert (=> bs!549104 m!3632389))

(assert (=> bs!549104 m!3632389))

(declare-fun m!3632911 () Bool)

(assert (=> bs!549104 m!3632911))

(declare-fun m!3632913 () Bool)

(assert (=> bs!549104 m!3632913))

(assert (=> b!3306091 d!926140))

(declare-fun d!926144 () Bool)

(declare-fun lt!1120760 () Int)

(assert (=> d!926144 (= lt!1120760 (size!27581 (list!13095 (seqFromList!3652 lt!1120526))))))

(assert (=> d!926144 (= lt!1120760 (size!27589 (c!560835 (seqFromList!3652 lt!1120526))))))

(assert (=> d!926144 (= (size!27583 (seqFromList!3652 lt!1120526)) lt!1120760)))

(declare-fun bs!549105 () Bool)

(assert (= bs!549105 d!926144))

(assert (=> bs!549105 m!3632239))

(assert (=> bs!549105 m!3632391))

(assert (=> bs!549105 m!3632391))

(declare-fun m!3632915 () Bool)

(assert (=> bs!549105 m!3632915))

(declare-fun m!3632917 () Bool)

(assert (=> bs!549105 m!3632917))

(assert (=> b!3306091 d!926144))

(declare-fun lt!1120763 () Bool)

(declare-fun d!926146 () Bool)

(assert (=> d!926146 (= lt!1120763 (isEmpty!20654 (list!13095 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))))

(declare-fun isEmpty!20659 (Conc!10971) Bool)

(assert (=> d!926146 (= lt!1120763 (isEmpty!20659 (c!560835 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))))

(assert (=> d!926146 (= (isEmpty!20657 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))) lt!1120763)))

(declare-fun bs!549106 () Bool)

(assert (= bs!549106 d!926146))

(declare-fun m!3632919 () Bool)

(assert (=> bs!549106 m!3632919))

(assert (=> bs!549106 m!3632919))

(declare-fun m!3632921 () Bool)

(assert (=> bs!549106 m!3632921))

(declare-fun m!3632923 () Bool)

(assert (=> bs!549106 m!3632923))

(assert (=> b!3306124 d!926146))

(declare-fun b!3306417 () Bool)

(declare-fun res!1340987 () Bool)

(declare-fun e!2056322 () Bool)

(assert (=> b!3306417 (=> (not res!1340987) (not e!2056322))))

(declare-fun lt!1120764 () tuple2!35996)

(assert (=> b!3306417 (= res!1340987 (= (list!13098 (_1!21132 lt!1120764)) (_1!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))))

(declare-fun b!3306418 () Bool)

(assert (=> b!3306418 (= e!2056322 (= (list!13095 (_2!21132 lt!1120764)) (_2!21134 (lexList!1357 thiss!18206 rules!2135 (list!13095 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))))

(declare-fun b!3306419 () Bool)

(declare-fun e!2056321 () Bool)

(assert (=> b!3306419 (= e!2056321 (= (_2!21132 lt!1120764) (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))))

(declare-fun d!926148 () Bool)

(assert (=> d!926148 e!2056322))

(declare-fun res!1340986 () Bool)

(assert (=> d!926148 (=> (not res!1340986) (not e!2056322))))

(assert (=> d!926148 (= res!1340986 e!2056321)))

(declare-fun c!560890 () Bool)

(assert (=> d!926148 (= c!560890 (> (size!27582 (_1!21132 lt!1120764)) 0))))

(assert (=> d!926148 (= lt!1120764 (lexTailRecV2!967 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))) (BalanceConc!21557 Empty!10971) (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))) (BalanceConc!21559 Empty!10972)))))

(assert (=> d!926148 (= (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))) lt!1120764)))

(declare-fun b!3306420 () Bool)

(declare-fun e!2056320 () Bool)

(assert (=> b!3306420 (= e!2056320 (not (isEmpty!20649 (_1!21132 lt!1120764))))))

(declare-fun b!3306421 () Bool)

(assert (=> b!3306421 (= e!2056321 e!2056320)))

(declare-fun res!1340988 () Bool)

(assert (=> b!3306421 (= res!1340988 (< (size!27583 (_2!21132 lt!1120764)) (size!27583 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))

(assert (=> b!3306421 (=> (not res!1340988) (not e!2056320))))

(assert (= (and d!926148 c!560890) b!3306421))

(assert (= (and d!926148 (not c!560890)) b!3306419))

(assert (= (and b!3306421 res!1340988) b!3306420))

(assert (= (and d!926148 res!1340986) b!3306417))

(assert (= (and b!3306417 res!1340987) b!3306418))

(declare-fun m!3632929 () Bool)

(assert (=> b!3306421 m!3632929))

(assert (=> b!3306421 m!3632435))

(declare-fun m!3632931 () Bool)

(assert (=> b!3306421 m!3632931))

(declare-fun m!3632933 () Bool)

(assert (=> b!3306420 m!3632933))

(declare-fun m!3632935 () Bool)

(assert (=> b!3306418 m!3632935))

(assert (=> b!3306418 m!3632435))

(declare-fun m!3632937 () Bool)

(assert (=> b!3306418 m!3632937))

(assert (=> b!3306418 m!3632937))

(declare-fun m!3632939 () Bool)

(assert (=> b!3306418 m!3632939))

(declare-fun m!3632941 () Bool)

(assert (=> d!926148 m!3632941))

(assert (=> d!926148 m!3632435))

(assert (=> d!926148 m!3632435))

(declare-fun m!3632943 () Bool)

(assert (=> d!926148 m!3632943))

(declare-fun m!3632945 () Bool)

(assert (=> b!3306417 m!3632945))

(assert (=> b!3306417 m!3632435))

(assert (=> b!3306417 m!3632937))

(assert (=> b!3306417 m!3632937))

(assert (=> b!3306417 m!3632939))

(assert (=> b!3306124 d!926148))

(declare-fun d!926152 () Bool)

(declare-fun lt!1120765 () BalanceConc!21556)

(assert (=> d!926152 (= (list!13095 lt!1120765) (printList!1437 thiss!18206 (list!13098 (singletonSeq!2394 (h!41933 tokens!494)))))))

(assert (=> d!926152 (= lt!1120765 (printTailRec!1384 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)) 0 (BalanceConc!21557 Empty!10971)))))

(assert (=> d!926152 (= (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))) lt!1120765)))

(declare-fun bs!549107 () Bool)

(assert (= bs!549107 d!926152))

(declare-fun m!3632947 () Bool)

(assert (=> bs!549107 m!3632947))

(assert (=> bs!549107 m!3632267))

(assert (=> bs!549107 m!3632439))

(assert (=> bs!549107 m!3632439))

(declare-fun m!3632949 () Bool)

(assert (=> bs!549107 m!3632949))

(assert (=> bs!549107 m!3632267))

(declare-fun m!3632951 () Bool)

(assert (=> bs!549107 m!3632951))

(assert (=> b!3306124 d!926152))

(assert (=> b!3306124 d!926032))

(declare-fun d!926154 () Bool)

(declare-fun charsToBigInt!1 (List!36634) Int)

(assert (=> d!926154 (= (inv!17 (value!171453 separatorToken!241)) (= (charsToBigInt!1 (text!39144 (value!171453 separatorToken!241))) (value!171445 (value!171453 separatorToken!241))))))

(declare-fun bs!549109 () Bool)

(assert (= bs!549109 d!926154))

(declare-fun m!3632955 () Bool)

(assert (=> bs!549109 m!3632955))

(assert (=> b!3306105 d!926154))

(declare-fun d!926158 () Bool)

(assert (=> d!926158 (= (list!13098 (_1!21132 lt!1120548)) (list!13101 (c!560836 (_1!21132 lt!1120548))))))

(declare-fun bs!549110 () Bool)

(assert (= bs!549110 d!926158))

(declare-fun m!3632957 () Bool)

(assert (=> bs!549110 m!3632957))

(assert (=> b!3306087 d!926158))

(declare-fun b!3306451 () Bool)

(declare-fun e!2056346 () Bool)

(declare-fun lt!1120787 () tuple2!36000)

(assert (=> b!3306451 (= e!2056346 (= (_2!21134 lt!1120787) (list!13095 (seqFromList!3652 lt!1120526))))))

(declare-fun d!926160 () Bool)

(assert (=> d!926160 e!2056346))

(declare-fun c!560898 () Bool)

(assert (=> d!926160 (= c!560898 (> (size!27587 (_1!21134 lt!1120787)) 0))))

(declare-fun e!2056344 () tuple2!36000)

(assert (=> d!926160 (= lt!1120787 e!2056344)))

(declare-fun c!560899 () Bool)

(declare-datatypes ((tuple2!36006 0))(
  ( (tuple2!36007 (_1!21137 Token!9962) (_2!21137 List!36635)) )
))
(declare-datatypes ((Option!7277 0))(
  ( (None!7276) (Some!7276 (v!36056 tuple2!36006)) )
))
(declare-fun lt!1120788 () Option!7277)

(assert (=> d!926160 (= c!560899 ((_ is Some!7276) lt!1120788))))

(declare-fun maxPrefix!2507 (LexerInterface!4887 List!36636 List!36635) Option!7277)

(assert (=> d!926160 (= lt!1120788 (maxPrefix!2507 thiss!18206 rules!2135 (list!13095 (seqFromList!3652 lt!1120526))))))

(assert (=> d!926160 (= (lexList!1357 thiss!18206 rules!2135 (list!13095 (seqFromList!3652 lt!1120526))) lt!1120787)))

(declare-fun b!3306452 () Bool)

(declare-fun lt!1120786 () tuple2!36000)

(assert (=> b!3306452 (= e!2056344 (tuple2!36001 (Cons!36513 (_1!21137 (v!36056 lt!1120788)) (_1!21134 lt!1120786)) (_2!21134 lt!1120786)))))

(assert (=> b!3306452 (= lt!1120786 (lexList!1357 thiss!18206 rules!2135 (_2!21137 (v!36056 lt!1120788))))))

(declare-fun b!3306453 () Bool)

(declare-fun e!2056345 () Bool)

(assert (=> b!3306453 (= e!2056345 (not (isEmpty!20655 (_1!21134 lt!1120787))))))

(declare-fun b!3306454 () Bool)

(assert (=> b!3306454 (= e!2056344 (tuple2!36001 Nil!36513 (list!13095 (seqFromList!3652 lt!1120526))))))

(declare-fun b!3306455 () Bool)

(assert (=> b!3306455 (= e!2056346 e!2056345)))

(declare-fun res!1341004 () Bool)

(assert (=> b!3306455 (= res!1341004 (< (size!27581 (_2!21134 lt!1120787)) (size!27581 (list!13095 (seqFromList!3652 lt!1120526)))))))

(assert (=> b!3306455 (=> (not res!1341004) (not e!2056345))))

(assert (= (and d!926160 c!560899) b!3306452))

(assert (= (and d!926160 (not c!560899)) b!3306454))

(assert (= (and d!926160 c!560898) b!3306455))

(assert (= (and d!926160 (not c!560898)) b!3306451))

(assert (= (and b!3306455 res!1341004) b!3306453))

(declare-fun m!3633051 () Bool)

(assert (=> d!926160 m!3633051))

(assert (=> d!926160 m!3632391))

(declare-fun m!3633053 () Bool)

(assert (=> d!926160 m!3633053))

(declare-fun m!3633055 () Bool)

(assert (=> b!3306452 m!3633055))

(declare-fun m!3633057 () Bool)

(assert (=> b!3306453 m!3633057))

(declare-fun m!3633059 () Bool)

(assert (=> b!3306455 m!3633059))

(assert (=> b!3306455 m!3632391))

(assert (=> b!3306455 m!3632915))

(assert (=> b!3306087 d!926160))

(declare-fun d!926212 () Bool)

(assert (=> d!926212 (= (list!13095 (seqFromList!3652 lt!1120526)) (list!13099 (c!560835 (seqFromList!3652 lt!1120526))))))

(declare-fun bs!549128 () Bool)

(assert (= bs!549128 d!926212))

(declare-fun m!3633061 () Bool)

(assert (=> bs!549128 m!3633061))

(assert (=> b!3306087 d!926212))

(declare-fun d!926214 () Bool)

(declare-fun res!1341005 () Bool)

(declare-fun e!2056347 () Bool)

(assert (=> d!926214 (=> (not res!1341005) (not e!2056347))))

(assert (=> d!926214 (= res!1341005 (not (isEmpty!20654 (originalCharacters!6012 (h!41933 (t!253630 tokens!494))))))))

(assert (=> d!926214 (= (inv!49480 (h!41933 (t!253630 tokens!494))) e!2056347)))

(declare-fun b!3306456 () Bool)

(declare-fun res!1341006 () Bool)

(assert (=> b!3306456 (=> (not res!1341006) (not e!2056347))))

(assert (=> b!3306456 (= res!1341006 (= (originalCharacters!6012 (h!41933 (t!253630 tokens!494))) (list!13095 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (value!171453 (h!41933 (t!253630 tokens!494)))))))))

(declare-fun b!3306457 () Bool)

(assert (=> b!3306457 (= e!2056347 (= (size!27577 (h!41933 (t!253630 tokens!494))) (size!27581 (originalCharacters!6012 (h!41933 (t!253630 tokens!494))))))))

(assert (= (and d!926214 res!1341005) b!3306456))

(assert (= (and b!3306456 res!1341006) b!3306457))

(declare-fun b_lambda!92395 () Bool)

(assert (=> (not b_lambda!92395) (not b!3306456)))

(declare-fun t!253689 () Bool)

(declare-fun tb!171635 () Bool)

(assert (=> (and b!3305993 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253689) tb!171635))

(declare-fun b!3306458 () Bool)

(declare-fun e!2056348 () Bool)

(declare-fun tp!1035353 () Bool)

(assert (=> b!3306458 (= e!2056348 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (value!171453 (h!41933 (t!253630 tokens!494)))))) tp!1035353))))

(declare-fun result!214480 () Bool)

(assert (=> tb!171635 (= result!214480 (and (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (value!171453 (h!41933 (t!253630 tokens!494))))) e!2056348))))

(assert (= tb!171635 b!3306458))

(declare-fun m!3633063 () Bool)

(assert (=> b!3306458 m!3633063))

(declare-fun m!3633065 () Bool)

(assert (=> tb!171635 m!3633065))

(assert (=> b!3306456 t!253689))

(declare-fun b_and!226655 () Bool)

(assert (= b_and!226623 (and (=> t!253689 result!214480) b_and!226655)))

(declare-fun t!253691 () Bool)

(declare-fun tb!171637 () Bool)

(assert (=> (and b!3306331 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253691) tb!171637))

(declare-fun result!214482 () Bool)

(assert (= result!214482 result!214480))

(assert (=> b!3306456 t!253691))

(declare-fun b_and!226657 () Bool)

(assert (= b_and!226649 (and (=> t!253691 result!214482) b_and!226657)))

(declare-fun tb!171639 () Bool)

(declare-fun t!253693 () Bool)

(assert (=> (and b!3306347 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253693) tb!171639))

(declare-fun result!214484 () Bool)

(assert (= result!214484 result!214480))

(assert (=> b!3306456 t!253693))

(declare-fun b_and!226659 () Bool)

(assert (= b_and!226653 (and (=> t!253693 result!214484) b_and!226659)))

(declare-fun t!253695 () Bool)

(declare-fun tb!171641 () Bool)

(assert (=> (and b!3305994 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253695) tb!171641))

(declare-fun result!214486 () Bool)

(assert (= result!214486 result!214480))

(assert (=> b!3306456 t!253695))

(declare-fun b_and!226661 () Bool)

(assert (= b_and!226625 (and (=> t!253695 result!214486) b_and!226661)))

(declare-fun t!253697 () Bool)

(declare-fun tb!171643 () Bool)

(assert (=> (and b!3306006 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253697) tb!171643))

(declare-fun result!214488 () Bool)

(assert (= result!214488 result!214480))

(assert (=> b!3306456 t!253697))

(declare-fun b_and!226663 () Bool)

(assert (= b_and!226621 (and (=> t!253697 result!214488) b_and!226663)))

(declare-fun m!3633067 () Bool)

(assert (=> d!926214 m!3633067))

(declare-fun m!3633069 () Bool)

(assert (=> b!3306456 m!3633069))

(assert (=> b!3306456 m!3633069))

(declare-fun m!3633071 () Bool)

(assert (=> b!3306456 m!3633071))

(declare-fun m!3633073 () Bool)

(assert (=> b!3306457 m!3633073))

(assert (=> b!3306328 d!926214))

(declare-fun d!926216 () Bool)

(assert (=> d!926216 true))

(declare-fun order!18981 () Int)

(declare-fun lambda!119062 () Int)

(declare-fun dynLambda!14980 (Int Int) Int)

(assert (=> d!926216 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (dynLambda!14980 order!18981 lambda!119062))))

(declare-fun Forall2!892 (Int) Bool)

(assert (=> d!926216 (= (equivClasses!2092 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (Forall2!892 lambda!119062))))

(declare-fun bs!549129 () Bool)

(assert (= bs!549129 d!926216))

(declare-fun m!3633075 () Bool)

(assert (=> bs!549129 m!3633075))

(assert (=> b!3306020 d!926216))

(declare-fun d!926218 () Bool)

(assert (=> d!926218 (= (list!13098 lt!1120586) (list!13101 (c!560836 lt!1120586)))))

(declare-fun bs!549130 () Bool)

(assert (= bs!549130 d!926218))

(declare-fun m!3633077 () Bool)

(assert (=> bs!549130 m!3633077))

(assert (=> d!926032 d!926218))

(declare-fun d!926220 () Bool)

(declare-fun e!2056353 () Bool)

(assert (=> d!926220 e!2056353))

(declare-fun res!1341011 () Bool)

(assert (=> d!926220 (=> (not res!1341011) (not e!2056353))))

(declare-fun lt!1120791 () BalanceConc!21558)

(assert (=> d!926220 (= res!1341011 (= (list!13098 lt!1120791) (Cons!36513 (h!41933 tokens!494) Nil!36513)))))

(declare-fun choose!19144 (Token!9962) BalanceConc!21558)

(assert (=> d!926220 (= lt!1120791 (choose!19144 (h!41933 tokens!494)))))

(assert (=> d!926220 (= (singleton!1032 (h!41933 tokens!494)) lt!1120791)))

(declare-fun b!3306465 () Bool)

(assert (=> b!3306465 (= e!2056353 (isBalanced!3283 (c!560836 lt!1120791)))))

(assert (= (and d!926220 res!1341011) b!3306465))

(declare-fun m!3633079 () Bool)

(assert (=> d!926220 m!3633079))

(declare-fun m!3633081 () Bool)

(assert (=> d!926220 m!3633081))

(declare-fun m!3633083 () Bool)

(assert (=> b!3306465 m!3633083))

(assert (=> d!926032 d!926220))

(declare-fun d!926222 () Bool)

(declare-fun lt!1120802 () List!36635)

(assert (=> d!926222 (= lt!1120802 (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) (printList!1437 thiss!18206 (dropList!1116 lt!1120524 0))))))

(declare-fun e!2056356 () List!36635)

(assert (=> d!926222 (= lt!1120802 e!2056356)))

(declare-fun c!560902 () Bool)

(assert (=> d!926222 (= c!560902 ((_ is Cons!36513) (dropList!1116 lt!1120524 0)))))

(assert (=> d!926222 (= (printListTailRec!599 thiss!18206 (dropList!1116 lt!1120524 0) (list!13095 (BalanceConc!21557 Empty!10971))) lt!1120802)))

(declare-fun b!3306470 () Bool)

(assert (=> b!3306470 (= e!2056356 (printListTailRec!599 thiss!18206 (t!253630 (dropList!1116 lt!1120524 0)) (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) (list!13095 (charsOf!3314 (h!41933 (dropList!1116 lt!1120524 0)))))))))

(declare-fun lt!1120804 () List!36635)

(assert (=> b!3306470 (= lt!1120804 (list!13095 (charsOf!3314 (h!41933 (dropList!1116 lt!1120524 0)))))))

(declare-fun lt!1120805 () List!36635)

(assert (=> b!3306470 (= lt!1120805 (printList!1437 thiss!18206 (t!253630 (dropList!1116 lt!1120524 0))))))

(declare-fun lt!1120806 () Unit!51440)

(declare-fun lemmaConcatAssociativity!1823 (List!36635 List!36635 List!36635) Unit!51440)

(assert (=> b!3306470 (= lt!1120806 (lemmaConcatAssociativity!1823 (list!13095 (BalanceConc!21557 Empty!10971)) lt!1120804 lt!1120805))))

(assert (=> b!3306470 (= (++!8842 (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) lt!1120804) lt!1120805) (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) (++!8842 lt!1120804 lt!1120805)))))

(declare-fun lt!1120803 () Unit!51440)

(assert (=> b!3306470 (= lt!1120803 lt!1120806)))

(declare-fun b!3306471 () Bool)

(assert (=> b!3306471 (= e!2056356 (list!13095 (BalanceConc!21557 Empty!10971)))))

(assert (= (and d!926222 c!560902) b!3306470))

(assert (= (and d!926222 (not c!560902)) b!3306471))

(assert (=> d!926222 m!3632475))

(declare-fun m!3633085 () Bool)

(assert (=> d!926222 m!3633085))

(assert (=> d!926222 m!3632477))

(assert (=> d!926222 m!3633085))

(declare-fun m!3633087 () Bool)

(assert (=> d!926222 m!3633087))

(declare-fun m!3633089 () Bool)

(assert (=> b!3306470 m!3633089))

(assert (=> b!3306470 m!3632477))

(declare-fun m!3633091 () Bool)

(assert (=> b!3306470 m!3633091))

(declare-fun m!3633093 () Bool)

(assert (=> b!3306470 m!3633093))

(declare-fun m!3633095 () Bool)

(assert (=> b!3306470 m!3633095))

(assert (=> b!3306470 m!3632477))

(declare-fun m!3633097 () Bool)

(assert (=> b!3306470 m!3633097))

(assert (=> b!3306470 m!3633093))

(assert (=> b!3306470 m!3633091))

(declare-fun m!3633099 () Bool)

(assert (=> b!3306470 m!3633099))

(assert (=> b!3306470 m!3632477))

(declare-fun m!3633101 () Bool)

(assert (=> b!3306470 m!3633101))

(declare-fun m!3633103 () Bool)

(assert (=> b!3306470 m!3633103))

(assert (=> b!3306470 m!3632477))

(declare-fun m!3633105 () Bool)

(assert (=> b!3306470 m!3633105))

(declare-fun m!3633107 () Bool)

(assert (=> b!3306470 m!3633107))

(assert (=> b!3306470 m!3633103))

(assert (=> b!3306470 m!3633097))

(assert (=> b!3306470 m!3633105))

(assert (=> d!926030 d!926222))

(declare-fun d!926224 () Bool)

(assert (=> d!926224 (= (list!13095 lt!1120579) (list!13099 (c!560835 lt!1120579)))))

(declare-fun bs!549131 () Bool)

(assert (= bs!549131 d!926224))

(declare-fun m!3633109 () Bool)

(assert (=> bs!549131 m!3633109))

(assert (=> d!926030 d!926224))

(declare-fun d!926226 () Bool)

(assert (=> d!926226 (= (list!13095 (BalanceConc!21557 Empty!10971)) (list!13099 (c!560835 (BalanceConc!21557 Empty!10971))))))

(declare-fun bs!549132 () Bool)

(assert (= bs!549132 d!926226))

(declare-fun m!3633111 () Bool)

(assert (=> bs!549132 m!3633111))

(assert (=> d!926030 d!926226))

(declare-fun d!926228 () Bool)

(declare-fun lt!1120807 () Int)

(assert (=> d!926228 (= lt!1120807 (size!27587 (list!13098 lt!1120524)))))

(assert (=> d!926228 (= lt!1120807 (size!27588 (c!560836 lt!1120524)))))

(assert (=> d!926228 (= (size!27582 lt!1120524) lt!1120807)))

(declare-fun bs!549133 () Bool)

(assert (= bs!549133 d!926228))

(assert (=> bs!549133 m!3632469))

(assert (=> bs!549133 m!3632469))

(declare-fun m!3633113 () Bool)

(assert (=> bs!549133 m!3633113))

(declare-fun m!3633115 () Bool)

(assert (=> bs!549133 m!3633115))

(assert (=> d!926030 d!926228))

(declare-fun d!926230 () Bool)

(assert (=> d!926230 (= (dropList!1116 lt!1120524 0) (drop!1907 (list!13101 (c!560836 lt!1120524)) 0))))

(declare-fun bs!549134 () Bool)

(assert (= bs!549134 d!926230))

(declare-fun m!3633117 () Bool)

(assert (=> bs!549134 m!3633117))

(assert (=> bs!549134 m!3633117))

(declare-fun m!3633119 () Bool)

(assert (=> bs!549134 m!3633119))

(assert (=> d!926030 d!926230))

(declare-fun d!926232 () Bool)

(declare-fun c!560905 () Bool)

(assert (=> d!926232 (= c!560905 ((_ is Node!10971) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(declare-fun e!2056361 () Bool)

(assert (=> d!926232 (= (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))) e!2056361)))

(declare-fun b!3306478 () Bool)

(declare-fun inv!49487 (Conc!10971) Bool)

(assert (=> b!3306478 (= e!2056361 (inv!49487 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(declare-fun b!3306479 () Bool)

(declare-fun e!2056362 () Bool)

(assert (=> b!3306479 (= e!2056361 e!2056362)))

(declare-fun res!1341014 () Bool)

(assert (=> b!3306479 (= res!1341014 (not ((_ is Leaf!17231) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))))))

(assert (=> b!3306479 (=> res!1341014 e!2056362)))

(declare-fun b!3306480 () Bool)

(declare-fun inv!49488 (Conc!10971) Bool)

(assert (=> b!3306480 (= e!2056362 (inv!49488 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(assert (= (and d!926232 c!560905) b!3306478))

(assert (= (and d!926232 (not c!560905)) b!3306479))

(assert (= (and b!3306479 (not res!1341014)) b!3306480))

(declare-fun m!3633121 () Bool)

(assert (=> b!3306478 m!3633121))

(declare-fun m!3633123 () Bool)

(assert (=> b!3306480 m!3633123))

(assert (=> b!3306040 d!926232))

(declare-fun d!926234 () Bool)

(declare-fun lt!1120810 () Token!9962)

(assert (=> d!926234 (= lt!1120810 (apply!8392 (list!13098 (_1!21132 lt!1120555)) 0))))

(declare-fun apply!8394 (Conc!10972 Int) Token!9962)

(assert (=> d!926234 (= lt!1120810 (apply!8394 (c!560836 (_1!21132 lt!1120555)) 0))))

(declare-fun e!2056365 () Bool)

(assert (=> d!926234 e!2056365))

(declare-fun res!1341017 () Bool)

(assert (=> d!926234 (=> (not res!1341017) (not e!2056365))))

(assert (=> d!926234 (= res!1341017 (<= 0 0))))

(assert (=> d!926234 (= (apply!8391 (_1!21132 lt!1120555) 0) lt!1120810)))

(declare-fun b!3306483 () Bool)

(assert (=> b!3306483 (= e!2056365 (< 0 (size!27582 (_1!21132 lt!1120555))))))

(assert (= (and d!926234 res!1341017) b!3306483))

(declare-fun m!3633125 () Bool)

(assert (=> d!926234 m!3633125))

(assert (=> d!926234 m!3633125))

(declare-fun m!3633127 () Bool)

(assert (=> d!926234 m!3633127))

(declare-fun m!3633129 () Bool)

(assert (=> d!926234 m!3633129))

(assert (=> b!3306483 m!3632431))

(assert (=> b!3306122 d!926234))

(declare-fun d!926236 () Bool)

(declare-fun charsToBigInt!0 (List!36634 Int) Int)

(assert (=> d!926236 (= (inv!15 (value!171453 separatorToken!241)) (= (charsToBigInt!0 (text!39145 (value!171453 separatorToken!241)) 0) (value!171448 (value!171453 separatorToken!241))))))

(declare-fun bs!549135 () Bool)

(assert (= bs!549135 d!926236))

(declare-fun m!3633131 () Bool)

(assert (=> bs!549135 m!3633131))

(assert (=> b!3306103 d!926236))

(declare-fun d!926238 () Bool)

(declare-fun res!1341018 () Bool)

(declare-fun e!2056366 () Bool)

(assert (=> d!926238 (=> res!1341018 e!2056366)))

(assert (=> d!926238 (= res!1341018 ((_ is Nil!36513) (t!253630 tokens!494)))))

(assert (=> d!926238 (= (forall!7571 (t!253630 tokens!494) lambda!119041) e!2056366)))

(declare-fun b!3306484 () Bool)

(declare-fun e!2056367 () Bool)

(assert (=> b!3306484 (= e!2056366 e!2056367)))

(declare-fun res!1341019 () Bool)

(assert (=> b!3306484 (=> (not res!1341019) (not e!2056367))))

(assert (=> b!3306484 (= res!1341019 (dynLambda!14974 lambda!119041 (h!41933 (t!253630 tokens!494))))))

(declare-fun b!3306485 () Bool)

(assert (=> b!3306485 (= e!2056367 (forall!7571 (t!253630 (t!253630 tokens!494)) lambda!119041))))

(assert (= (and d!926238 (not res!1341018)) b!3306484))

(assert (= (and b!3306484 res!1341019) b!3306485))

(declare-fun b_lambda!92397 () Bool)

(assert (=> (not b_lambda!92397) (not b!3306484)))

(declare-fun m!3633133 () Bool)

(assert (=> b!3306484 m!3633133))

(declare-fun m!3633135 () Bool)

(assert (=> b!3306485 m!3633135))

(assert (=> b!3306130 d!926238))

(declare-fun d!926240 () Bool)

(assert (=> d!926240 (= (list!13095 lt!1120562) (list!13099 (c!560835 lt!1120562)))))

(declare-fun bs!549136 () Bool)

(assert (= bs!549136 d!926240))

(declare-fun m!3633137 () Bool)

(assert (=> bs!549136 m!3633137))

(assert (=> d!926026 d!926240))

(declare-fun d!926242 () Bool)

(declare-fun c!560906 () Bool)

(assert (=> d!926242 (= c!560906 ((_ is Cons!36513) (list!13098 lt!1120524)))))

(declare-fun e!2056368 () List!36635)

(assert (=> d!926242 (= (printList!1437 thiss!18206 (list!13098 lt!1120524)) e!2056368)))

(declare-fun b!3306486 () Bool)

(assert (=> b!3306486 (= e!2056368 (++!8842 (list!13095 (charsOf!3314 (h!41933 (list!13098 lt!1120524)))) (printList!1437 thiss!18206 (t!253630 (list!13098 lt!1120524)))))))

(declare-fun b!3306487 () Bool)

(assert (=> b!3306487 (= e!2056368 Nil!36511)))

(assert (= (and d!926242 c!560906) b!3306486))

(assert (= (and d!926242 (not c!560906)) b!3306487))

(declare-fun m!3633139 () Bool)

(assert (=> b!3306486 m!3633139))

(assert (=> b!3306486 m!3633139))

(declare-fun m!3633141 () Bool)

(assert (=> b!3306486 m!3633141))

(declare-fun m!3633143 () Bool)

(assert (=> b!3306486 m!3633143))

(assert (=> b!3306486 m!3633141))

(assert (=> b!3306486 m!3633143))

(declare-fun m!3633145 () Bool)

(assert (=> b!3306486 m!3633145))

(assert (=> d!926026 d!926242))

(declare-fun d!926244 () Bool)

(assert (=> d!926244 (= (list!13098 lt!1120524) (list!13101 (c!560836 lt!1120524)))))

(declare-fun bs!549137 () Bool)

(assert (= bs!549137 d!926244))

(assert (=> bs!549137 m!3633117))

(assert (=> d!926026 d!926244))

(assert (=> d!926026 d!926030))

(declare-fun d!926246 () Bool)

(declare-fun lt!1120813 () Int)

(assert (=> d!926246 (>= lt!1120813 0)))

(declare-fun e!2056371 () Int)

(assert (=> d!926246 (= lt!1120813 e!2056371)))

(declare-fun c!560909 () Bool)

(assert (=> d!926246 (= c!560909 ((_ is Nil!36511) (originalCharacters!6012 (h!41933 tokens!494))))))

(assert (=> d!926246 (= (size!27581 (originalCharacters!6012 (h!41933 tokens!494))) lt!1120813)))

(declare-fun b!3306492 () Bool)

(assert (=> b!3306492 (= e!2056371 0)))

(declare-fun b!3306493 () Bool)

(assert (=> b!3306493 (= e!2056371 (+ 1 (size!27581 (t!253628 (originalCharacters!6012 (h!41933 tokens!494))))))))

(assert (= (and d!926246 c!560909) b!3306492))

(assert (= (and d!926246 (not c!560909)) b!3306493))

(declare-fun m!3633147 () Bool)

(assert (=> b!3306493 m!3633147))

(assert (=> b!3306035 d!926246))

(declare-fun d!926248 () Bool)

(declare-fun lt!1120814 () Bool)

(assert (=> d!926248 (= lt!1120814 (isEmpty!20654 (list!13095 (_2!21132 lt!1120553))))))

(assert (=> d!926248 (= lt!1120814 (isEmpty!20659 (c!560835 (_2!21132 lt!1120553))))))

(assert (=> d!926248 (= (isEmpty!20657 (_2!21132 lt!1120553)) lt!1120814)))

(declare-fun bs!549138 () Bool)

(assert (= bs!549138 d!926248))

(declare-fun m!3633149 () Bool)

(assert (=> bs!549138 m!3633149))

(assert (=> bs!549138 m!3633149))

(declare-fun m!3633151 () Bool)

(assert (=> bs!549138 m!3633151))

(declare-fun m!3633153 () Bool)

(assert (=> bs!549138 m!3633153))

(assert (=> b!3306120 d!926248))

(declare-fun d!926250 () Bool)

(declare-fun lt!1120815 () Int)

(assert (=> d!926250 (= lt!1120815 (size!27587 (list!13098 (_1!21132 lt!1120548))))))

(assert (=> d!926250 (= lt!1120815 (size!27588 (c!560836 (_1!21132 lt!1120548))))))

(assert (=> d!926250 (= (size!27582 (_1!21132 lt!1120548)) lt!1120815)))

(declare-fun bs!549139 () Bool)

(assert (= bs!549139 d!926250))

(assert (=> bs!549139 m!3632399))

(assert (=> bs!549139 m!3632399))

(declare-fun m!3633155 () Bool)

(assert (=> bs!549139 m!3633155))

(declare-fun m!3633157 () Bool)

(assert (=> bs!549139 m!3633157))

(assert (=> d!925992 d!926250))

(declare-fun b!3306683 () Bool)

(declare-fun lt!1120960 () tuple2!35996)

(declare-fun e!2056489 () Bool)

(declare-fun lexRec!707 (LexerInterface!4887 List!36636 BalanceConc!21556) tuple2!35996)

(assert (=> b!3306683 (= e!2056489 (= (list!13095 (_2!21132 lt!1120960)) (list!13095 (_2!21132 (lexRec!707 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(declare-fun lt!1120951 () tuple2!35996)

(declare-datatypes ((tuple2!36008 0))(
  ( (tuple2!36009 (_1!21138 Token!9962) (_2!21138 BalanceConc!21556)) )
))
(declare-datatypes ((Option!7278 0))(
  ( (None!7277) (Some!7277 (v!36057 tuple2!36008)) )
))
(declare-fun lt!1120976 () Option!7278)

(declare-fun b!3306684 () Bool)

(assert (=> b!3306684 (= lt!1120951 (lexRec!707 thiss!18206 rules!2135 (_2!21138 (v!36057 lt!1120976))))))

(declare-fun e!2056487 () tuple2!35996)

(declare-fun prepend!1203 (BalanceConc!21558 Token!9962) BalanceConc!21558)

(assert (=> b!3306684 (= e!2056487 (tuple2!35997 (prepend!1203 (_1!21132 lt!1120951) (_1!21138 (v!36057 lt!1120976))) (_2!21132 lt!1120951)))))

(declare-fun b!3306685 () Bool)

(declare-fun lt!1120964 () BalanceConc!21556)

(assert (=> b!3306685 (= e!2056487 (tuple2!35997 (BalanceConc!21559 Empty!10972) lt!1120964))))

(declare-fun lt!1120948 () Option!7278)

(declare-fun lt!1120975 () tuple2!35996)

(declare-fun b!3306686 () Bool)

(assert (=> b!3306686 (= lt!1120975 (lexRec!707 thiss!18206 rules!2135 (_2!21138 (v!36057 lt!1120948))))))

(declare-fun e!2056490 () tuple2!35996)

(assert (=> b!3306686 (= e!2056490 (tuple2!35997 (prepend!1203 (_1!21132 lt!1120975) (_1!21138 (v!36057 lt!1120948))) (_2!21132 lt!1120975)))))

(declare-fun d!926252 () Bool)

(assert (=> d!926252 e!2056489))

(declare-fun res!1341093 () Bool)

(assert (=> d!926252 (=> (not res!1341093) (not e!2056489))))

(assert (=> d!926252 (= res!1341093 (= (list!13098 (_1!21132 lt!1120960)) (list!13098 (_1!21132 (lexRec!707 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(declare-fun e!2056488 () tuple2!35996)

(assert (=> d!926252 (= lt!1120960 e!2056488)))

(declare-fun c!560967 () Bool)

(declare-fun lt!1120947 () Option!7278)

(assert (=> d!926252 (= c!560967 ((_ is Some!7277) lt!1120947))))

(declare-fun maxPrefixZipperSequenceV2!494 (LexerInterface!4887 List!36636 BalanceConc!21556 BalanceConc!21556) Option!7278)

(assert (=> d!926252 (= lt!1120947 (maxPrefixZipperSequenceV2!494 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526) (seqFromList!3652 lt!1120526)))))

(declare-fun lt!1120961 () Unit!51440)

(declare-fun lt!1120950 () Unit!51440)

(assert (=> d!926252 (= lt!1120961 lt!1120950)))

(declare-fun lt!1120954 () List!36635)

(declare-fun lt!1120974 () List!36635)

(declare-fun isSuffix!869 (List!36635 List!36635) Bool)

(assert (=> d!926252 (isSuffix!869 lt!1120954 (++!8842 lt!1120974 lt!1120954))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!554 (List!36635 List!36635) Unit!51440)

(assert (=> d!926252 (= lt!1120950 (lemmaConcatTwoListThenFSndIsSuffix!554 lt!1120974 lt!1120954))))

(assert (=> d!926252 (= lt!1120954 (list!13095 (seqFromList!3652 lt!1120526)))))

(assert (=> d!926252 (= lt!1120974 (list!13095 (BalanceConc!21557 Empty!10971)))))

(assert (=> d!926252 (= (lexTailRecV2!967 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526) (BalanceConc!21557 Empty!10971) (seqFromList!3652 lt!1120526) (BalanceConc!21559 Empty!10972)) lt!1120960)))

(declare-fun lt!1120973 () BalanceConc!21556)

(declare-fun b!3306687 () Bool)

(declare-fun append!899 (BalanceConc!21558 Token!9962) BalanceConc!21558)

(assert (=> b!3306687 (= e!2056488 (lexTailRecV2!967 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526) lt!1120973 (_2!21138 (v!36057 lt!1120947)) (append!899 (BalanceConc!21559 Empty!10972) (_1!21138 (v!36057 lt!1120947)))))))

(declare-fun lt!1120959 () tuple2!35996)

(assert (=> b!3306687 (= lt!1120959 (lexRec!707 thiss!18206 rules!2135 (_2!21138 (v!36057 lt!1120947))))))

(declare-fun lt!1120963 () List!36635)

(assert (=> b!3306687 (= lt!1120963 (list!13095 (BalanceConc!21557 Empty!10971)))))

(declare-fun lt!1120956 () List!36635)

(assert (=> b!3306687 (= lt!1120956 (list!13095 (charsOf!3314 (_1!21138 (v!36057 lt!1120947)))))))

(declare-fun lt!1120977 () List!36635)

(assert (=> b!3306687 (= lt!1120977 (list!13095 (_2!21138 (v!36057 lt!1120947))))))

(declare-fun lt!1120968 () Unit!51440)

(assert (=> b!3306687 (= lt!1120968 (lemmaConcatAssociativity!1823 lt!1120963 lt!1120956 lt!1120977))))

(assert (=> b!3306687 (= (++!8842 (++!8842 lt!1120963 lt!1120956) lt!1120977) (++!8842 lt!1120963 (++!8842 lt!1120956 lt!1120977)))))

(declare-fun lt!1120971 () Unit!51440)

(assert (=> b!3306687 (= lt!1120971 lt!1120968)))

(declare-fun maxPrefixZipperSequence!1100 (LexerInterface!4887 List!36636 BalanceConc!21556) Option!7278)

(assert (=> b!3306687 (= lt!1120948 (maxPrefixZipperSequence!1100 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)))))

(declare-fun c!560968 () Bool)

(assert (=> b!3306687 (= c!560968 ((_ is Some!7277) lt!1120948))))

(assert (=> b!3306687 (= (lexRec!707 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)) e!2056490)))

(declare-fun lt!1120949 () Unit!51440)

(declare-fun Unit!51444 () Unit!51440)

(assert (=> b!3306687 (= lt!1120949 Unit!51444)))

(declare-fun lt!1120965 () List!36637)

(assert (=> b!3306687 (= lt!1120965 (list!13098 (BalanceConc!21559 Empty!10972)))))

(declare-fun lt!1120966 () List!36637)

(assert (=> b!3306687 (= lt!1120966 (Cons!36513 (_1!21138 (v!36057 lt!1120947)) Nil!36513))))

(declare-fun lt!1120958 () List!36637)

(assert (=> b!3306687 (= lt!1120958 (list!13098 (_1!21132 lt!1120959)))))

(declare-fun lt!1120970 () Unit!51440)

(declare-fun lemmaConcatAssociativity!1824 (List!36637 List!36637 List!36637) Unit!51440)

(assert (=> b!3306687 (= lt!1120970 (lemmaConcatAssociativity!1824 lt!1120965 lt!1120966 lt!1120958))))

(declare-fun ++!8844 (List!36637 List!36637) List!36637)

(assert (=> b!3306687 (= (++!8844 (++!8844 lt!1120965 lt!1120966) lt!1120958) (++!8844 lt!1120965 (++!8844 lt!1120966 lt!1120958)))))

(declare-fun lt!1120957 () Unit!51440)

(assert (=> b!3306687 (= lt!1120957 lt!1120970)))

(declare-fun lt!1120979 () List!36635)

(assert (=> b!3306687 (= lt!1120979 (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) (list!13095 (charsOf!3314 (_1!21138 (v!36057 lt!1120947))))))))

(declare-fun lt!1120955 () List!36635)

(assert (=> b!3306687 (= lt!1120955 (list!13095 (_2!21138 (v!36057 lt!1120947))))))

(declare-fun lt!1120952 () List!36637)

(assert (=> b!3306687 (= lt!1120952 (list!13098 (append!899 (BalanceConc!21559 Empty!10972) (_1!21138 (v!36057 lt!1120947)))))))

(declare-fun lt!1120946 () Unit!51440)

(declare-fun lemmaLexThenLexPrefix!472 (LexerInterface!4887 List!36636 List!36635 List!36635 List!36637 List!36637 List!36635) Unit!51440)

(assert (=> b!3306687 (= lt!1120946 (lemmaLexThenLexPrefix!472 thiss!18206 rules!2135 lt!1120979 lt!1120955 lt!1120952 (list!13098 (_1!21132 lt!1120959)) (list!13095 (_2!21132 lt!1120959))))))

(assert (=> b!3306687 (= (lexList!1357 thiss!18206 rules!2135 lt!1120979) (tuple2!36001 lt!1120952 Nil!36511))))

(declare-fun lt!1120969 () Unit!51440)

(assert (=> b!3306687 (= lt!1120969 lt!1120946)))

(assert (=> b!3306687 (= lt!1120964 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (_1!21138 (v!36057 lt!1120947)))))))

(assert (=> b!3306687 (= lt!1120976 (maxPrefixZipperSequence!1100 thiss!18206 rules!2135 lt!1120964))))

(declare-fun c!560969 () Bool)

(assert (=> b!3306687 (= c!560969 ((_ is Some!7277) lt!1120976))))

(assert (=> b!3306687 (= (lexRec!707 thiss!18206 rules!2135 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (_1!21138 (v!36057 lt!1120947))))) e!2056487)))

(declare-fun lt!1120972 () Unit!51440)

(declare-fun Unit!51445 () Unit!51440)

(assert (=> b!3306687 (= lt!1120972 Unit!51445)))

(assert (=> b!3306687 (= lt!1120973 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (_1!21138 (v!36057 lt!1120947)))))))

(declare-fun lt!1120967 () List!36635)

(assert (=> b!3306687 (= lt!1120967 (list!13095 lt!1120973))))

(declare-fun lt!1120953 () List!36635)

(assert (=> b!3306687 (= lt!1120953 (list!13095 (_2!21138 (v!36057 lt!1120947))))))

(declare-fun lt!1120962 () Unit!51440)

(assert (=> b!3306687 (= lt!1120962 (lemmaConcatTwoListThenFSndIsSuffix!554 lt!1120967 lt!1120953))))

(assert (=> b!3306687 (isSuffix!869 lt!1120953 (++!8842 lt!1120967 lt!1120953))))

(declare-fun lt!1120978 () Unit!51440)

(assert (=> b!3306687 (= lt!1120978 lt!1120962)))

(declare-fun b!3306688 () Bool)

(assert (=> b!3306688 (= e!2056490 (tuple2!35997 (BalanceConc!21559 Empty!10972) (seqFromList!3652 lt!1120526)))))

(declare-fun b!3306689 () Bool)

(assert (=> b!3306689 (= e!2056488 (tuple2!35997 (BalanceConc!21559 Empty!10972) (seqFromList!3652 lt!1120526)))))

(assert (= (and d!926252 c!560967) b!3306687))

(assert (= (and d!926252 (not c!560967)) b!3306689))

(assert (= (and b!3306687 c!560968) b!3306686))

(assert (= (and b!3306687 (not c!560968)) b!3306688))

(assert (= (and b!3306687 c!560969) b!3306684))

(assert (= (and b!3306687 (not c!560969)) b!3306685))

(assert (= (and d!926252 res!1341093) b!3306683))

(assert (=> d!926252 m!3632477))

(declare-fun m!3633427 () Bool)

(assert (=> d!926252 m!3633427))

(declare-fun m!3633429 () Bool)

(assert (=> d!926252 m!3633429))

(assert (=> d!926252 m!3632239))

(assert (=> d!926252 m!3632239))

(declare-fun m!3633431 () Bool)

(assert (=> d!926252 m!3633431))

(declare-fun m!3633433 () Bool)

(assert (=> d!926252 m!3633433))

(assert (=> d!926252 m!3632239))

(declare-fun m!3633435 () Bool)

(assert (=> d!926252 m!3633435))

(assert (=> d!926252 m!3633427))

(declare-fun m!3633437 () Bool)

(assert (=> d!926252 m!3633437))

(declare-fun m!3633439 () Bool)

(assert (=> d!926252 m!3633439))

(assert (=> d!926252 m!3632239))

(assert (=> d!926252 m!3632391))

(declare-fun m!3633441 () Bool)

(assert (=> b!3306683 m!3633441))

(assert (=> b!3306683 m!3632239))

(assert (=> b!3306683 m!3633435))

(declare-fun m!3633443 () Bool)

(assert (=> b!3306683 m!3633443))

(declare-fun m!3633445 () Bool)

(assert (=> b!3306687 m!3633445))

(declare-fun m!3633447 () Bool)

(assert (=> b!3306687 m!3633447))

(declare-fun m!3633449 () Bool)

(assert (=> b!3306687 m!3633449))

(declare-fun m!3633451 () Bool)

(assert (=> b!3306687 m!3633451))

(declare-fun m!3633453 () Bool)

(assert (=> b!3306687 m!3633453))

(declare-fun m!3633455 () Bool)

(assert (=> b!3306687 m!3633455))

(declare-fun m!3633457 () Bool)

(assert (=> b!3306687 m!3633457))

(declare-fun m!3633459 () Bool)

(assert (=> b!3306687 m!3633459))

(assert (=> b!3306687 m!3633451))

(declare-fun m!3633461 () Bool)

(assert (=> b!3306687 m!3633461))

(declare-fun m!3633463 () Bool)

(assert (=> b!3306687 m!3633463))

(declare-fun m!3633465 () Bool)

(assert (=> b!3306687 m!3633465))

(declare-fun m!3633467 () Bool)

(assert (=> b!3306687 m!3633467))

(assert (=> b!3306687 m!3633461))

(declare-fun m!3633469 () Bool)

(assert (=> b!3306687 m!3633469))

(declare-fun m!3633471 () Bool)

(assert (=> b!3306687 m!3633471))

(declare-fun m!3633473 () Bool)

(assert (=> b!3306687 m!3633473))

(assert (=> b!3306687 m!3633457))

(declare-fun m!3633475 () Bool)

(assert (=> b!3306687 m!3633475))

(declare-fun m!3633477 () Bool)

(assert (=> b!3306687 m!3633477))

(assert (=> b!3306687 m!3633475))

(assert (=> b!3306687 m!3633455))

(assert (=> b!3306687 m!3632477))

(declare-fun m!3633479 () Bool)

(assert (=> b!3306687 m!3633479))

(declare-fun m!3633481 () Bool)

(assert (=> b!3306687 m!3633481))

(assert (=> b!3306687 m!3633467))

(declare-fun m!3633483 () Bool)

(assert (=> b!3306687 m!3633483))

(declare-fun m!3633485 () Bool)

(assert (=> b!3306687 m!3633485))

(declare-fun m!3633487 () Bool)

(assert (=> b!3306687 m!3633487))

(assert (=> b!3306687 m!3632477))

(declare-fun m!3633489 () Bool)

(assert (=> b!3306687 m!3633489))

(assert (=> b!3306687 m!3633487))

(declare-fun m!3633491 () Bool)

(assert (=> b!3306687 m!3633491))

(assert (=> b!3306687 m!3632239))

(declare-fun m!3633493 () Bool)

(assert (=> b!3306687 m!3633493))

(assert (=> b!3306687 m!3633473))

(declare-fun m!3633495 () Bool)

(assert (=> b!3306687 m!3633495))

(declare-fun m!3633497 () Bool)

(assert (=> b!3306687 m!3633497))

(declare-fun m!3633499 () Bool)

(assert (=> b!3306687 m!3633499))

(declare-fun m!3633501 () Bool)

(assert (=> b!3306687 m!3633501))

(assert (=> b!3306687 m!3633465))

(assert (=> b!3306687 m!3633479))

(assert (=> b!3306687 m!3633465))

(assert (=> b!3306687 m!3632239))

(assert (=> b!3306687 m!3633435))

(assert (=> b!3306687 m!3632239))

(assert (=> b!3306687 m!3633451))

(declare-fun m!3633503 () Bool)

(assert (=> b!3306687 m!3633503))

(assert (=> b!3306687 m!3633445))

(declare-fun m!3633505 () Bool)

(assert (=> b!3306687 m!3633505))

(declare-fun m!3633507 () Bool)

(assert (=> b!3306684 m!3633507))

(declare-fun m!3633509 () Bool)

(assert (=> b!3306684 m!3633509))

(declare-fun m!3633511 () Bool)

(assert (=> b!3306686 m!3633511))

(declare-fun m!3633513 () Bool)

(assert (=> b!3306686 m!3633513))

(assert (=> d!925992 d!926252))

(declare-fun d!926350 () Bool)

(assert (=> d!926350 (= (list!13095 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))) (list!13099 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(declare-fun bs!549162 () Bool)

(assert (= bs!549162 d!926350))

(declare-fun m!3633515 () Bool)

(assert (=> bs!549162 m!3633515))

(assert (=> b!3306131 d!926350))

(declare-fun b!3306717 () Bool)

(declare-fun e!2056502 () List!36635)

(assert (=> b!3306717 (= e!2056502 (Cons!36511 (h!41931 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (++!8842 (t!253628 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))))

(declare-fun b!3306716 () Bool)

(assert (=> b!3306716 (= e!2056502 (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))

(declare-fun d!926352 () Bool)

(declare-fun e!2056503 () Bool)

(assert (=> d!926352 e!2056503))

(declare-fun res!1341113 () Bool)

(assert (=> d!926352 (=> (not res!1341113) (not e!2056503))))

(declare-fun lt!1120987 () List!36635)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4971 (List!36635) (InoxSet C!20300))

(assert (=> d!926352 (= res!1341113 (= (content!4971 lt!1120987) ((_ map or) (content!4971 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (content!4971 (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))))))

(assert (=> d!926352 (= lt!1120987 e!2056502)))

(declare-fun c!560974 () Bool)

(assert (=> d!926352 (= c!560974 ((_ is Nil!36511) (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))))

(assert (=> d!926352 (= (++!8842 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))) (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513)))) lt!1120987)))

(declare-fun b!3306718 () Bool)

(declare-fun res!1341112 () Bool)

(assert (=> b!3306718 (=> (not res!1341112) (not e!2056503))))

(assert (=> b!3306718 (= res!1341112 (= (size!27581 lt!1120987) (+ (size!27581 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (size!27581 (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))))))

(declare-fun b!3306719 () Bool)

(assert (=> b!3306719 (= e!2056503 (or (not (= (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))) Nil!36511)) (= lt!1120987 (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))))))

(assert (= (and d!926352 c!560974) b!3306716))

(assert (= (and d!926352 (not c!560974)) b!3306717))

(assert (= (and d!926352 res!1341113) b!3306718))

(assert (= (and b!3306718 res!1341112) b!3306719))

(assert (=> b!3306717 m!3632519))

(declare-fun m!3633537 () Bool)

(assert (=> b!3306717 m!3633537))

(declare-fun m!3633539 () Bool)

(assert (=> d!926352 m!3633539))

(assert (=> d!926352 m!3632517))

(declare-fun m!3633541 () Bool)

(assert (=> d!926352 m!3633541))

(assert (=> d!926352 m!3632519))

(declare-fun m!3633543 () Bool)

(assert (=> d!926352 m!3633543))

(declare-fun m!3633545 () Bool)

(assert (=> b!3306718 m!3633545))

(assert (=> b!3306718 m!3632517))

(declare-fun m!3633547 () Bool)

(assert (=> b!3306718 m!3633547))

(assert (=> b!3306718 m!3632519))

(declare-fun m!3633549 () Bool)

(assert (=> b!3306718 m!3633549))

(assert (=> b!3306150 d!926352))

(declare-fun d!926356 () Bool)

(assert (=> d!926356 (= (list!13095 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))) (list!13099 (c!560835 (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))))

(declare-fun bs!549163 () Bool)

(assert (= bs!549163 d!926356))

(declare-fun m!3633551 () Bool)

(assert (=> bs!549163 m!3633551))

(assert (=> b!3306150 d!926356))

(declare-fun d!926358 () Bool)

(declare-fun lt!1120988 () BalanceConc!21556)

(assert (=> d!926358 (= (list!13095 lt!1120988) (originalCharacters!6012 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))

(assert (=> d!926358 (= lt!1120988 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (value!171453 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))))

(assert (=> d!926358 (= (charsOf!3314 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))) lt!1120988)))

(declare-fun b_lambda!92405 () Bool)

(assert (=> (not b_lambda!92405) (not d!926358)))

(declare-fun t!253735 () Bool)

(declare-fun tb!171675 () Bool)

(assert (=> (and b!3306331 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253735) tb!171675))

(declare-fun b!3306723 () Bool)

(declare-fun e!2056506 () Bool)

(declare-fun tp!1035357 () Bool)

(assert (=> b!3306723 (= e!2056506 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (value!171453 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) tp!1035357))))

(declare-fun result!214520 () Bool)

(assert (=> tb!171675 (= result!214520 (and (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (value!171453 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) e!2056506))))

(assert (= tb!171675 b!3306723))

(declare-fun m!3633559 () Bool)

(assert (=> b!3306723 m!3633559))

(declare-fun m!3633563 () Bool)

(assert (=> tb!171675 m!3633563))

(assert (=> d!926358 t!253735))

(declare-fun b_and!226695 () Bool)

(assert (= b_and!226657 (and (=> t!253735 result!214520) b_and!226695)))

(declare-fun tb!171677 () Bool)

(declare-fun t!253737 () Bool)

(assert (=> (and b!3306347 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253737) tb!171677))

(declare-fun result!214522 () Bool)

(assert (= result!214522 result!214520))

(assert (=> d!926358 t!253737))

(declare-fun b_and!226697 () Bool)

(assert (= b_and!226659 (and (=> t!253737 result!214522) b_and!226697)))

(declare-fun t!253739 () Bool)

(declare-fun tb!171679 () Bool)

(assert (=> (and b!3305993 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253739) tb!171679))

(declare-fun result!214524 () Bool)

(assert (= result!214524 result!214520))

(assert (=> d!926358 t!253739))

(declare-fun b_and!226699 () Bool)

(assert (= b_and!226655 (and (=> t!253739 result!214524) b_and!226699)))

(declare-fun t!253741 () Bool)

(declare-fun tb!171681 () Bool)

(assert (=> (and b!3305994 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253741) tb!171681))

(declare-fun result!214526 () Bool)

(assert (= result!214526 result!214520))

(assert (=> d!926358 t!253741))

(declare-fun b_and!226701 () Bool)

(assert (= b_and!226661 (and (=> t!253741 result!214526) b_and!226701)))

(declare-fun t!253743 () Bool)

(declare-fun tb!171683 () Bool)

(assert (=> (and b!3306006 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253743) tb!171683))

(declare-fun result!214528 () Bool)

(assert (= result!214528 result!214520))

(assert (=> d!926358 t!253743))

(declare-fun b_and!226703 () Bool)

(assert (= b_and!226663 (and (=> t!253743 result!214528) b_and!226703)))

(declare-fun m!3633567 () Bool)

(assert (=> d!926358 m!3633567))

(declare-fun m!3633571 () Bool)

(assert (=> d!926358 m!3633571))

(assert (=> b!3306150 d!926358))

(declare-fun d!926364 () Bool)

(declare-fun c!560976 () Bool)

(assert (=> d!926364 (= c!560976 ((_ is Cons!36513) (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))

(declare-fun e!2056508 () List!36635)

(assert (=> d!926364 (= (printList!1437 thiss!18206 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))) e!2056508)))

(declare-fun b!3306725 () Bool)

(assert (=> b!3306725 (= e!2056508 (++!8842 (list!13095 (charsOf!3314 (h!41933 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))))) (printList!1437 thiss!18206 (t!253630 (t!253630 (Cons!36513 (h!41933 tokens!494) Nil!36513))))))))

(declare-fun b!3306726 () Bool)

(assert (=> b!3306726 (= e!2056508 Nil!36511)))

(assert (= (and d!926364 c!560976) b!3306725))

(assert (= (and d!926364 (not c!560976)) b!3306726))

(declare-fun m!3633573 () Bool)

(assert (=> b!3306725 m!3633573))

(assert (=> b!3306725 m!3633573))

(declare-fun m!3633575 () Bool)

(assert (=> b!3306725 m!3633575))

(declare-fun m!3633577 () Bool)

(assert (=> b!3306725 m!3633577))

(assert (=> b!3306725 m!3633575))

(assert (=> b!3306725 m!3633577))

(declare-fun m!3633579 () Bool)

(assert (=> b!3306725 m!3633579))

(assert (=> b!3306150 d!926364))

(declare-fun d!926366 () Bool)

(declare-fun res!1341116 () Bool)

(declare-fun e!2056515 () Bool)

(assert (=> d!926366 (=> res!1341116 e!2056515)))

(assert (=> d!926366 (= res!1341116 (not ((_ is Cons!36512) (t!253629 rules!2135))))))

(assert (=> d!926366 (= (sepAndNonSepRulesDisjointChars!1492 rules!2135 (t!253629 rules!2135)) e!2056515)))

(declare-fun b!3306731 () Bool)

(declare-fun e!2056516 () Bool)

(assert (=> b!3306731 (= e!2056515 e!2056516)))

(declare-fun res!1341117 () Bool)

(assert (=> b!3306731 (=> (not res!1341117) (not e!2056516))))

(assert (=> b!3306731 (= res!1341117 (ruleDisjointCharsFromAllFromOtherType!629 (h!41932 (t!253629 rules!2135)) rules!2135))))

(declare-fun b!3306732 () Bool)

(assert (=> b!3306732 (= e!2056516 (sepAndNonSepRulesDisjointChars!1492 rules!2135 (t!253629 (t!253629 rules!2135))))))

(assert (= (and d!926366 (not res!1341116)) b!3306731))

(assert (= (and b!3306731 res!1341117) b!3306732))

(declare-fun m!3633581 () Bool)

(assert (=> b!3306731 m!3633581))

(declare-fun m!3633583 () Bool)

(assert (=> b!3306732 m!3633583))

(assert (=> b!3306112 d!926366))

(declare-fun d!926368 () Bool)

(declare-fun lt!1120990 () Token!9962)

(assert (=> d!926368 (= lt!1120990 (apply!8392 (list!13098 (_1!21132 lt!1120553)) 0))))

(assert (=> d!926368 (= lt!1120990 (apply!8394 (c!560836 (_1!21132 lt!1120553)) 0))))

(declare-fun e!2056517 () Bool)

(assert (=> d!926368 e!2056517))

(declare-fun res!1341118 () Bool)

(assert (=> d!926368 (=> (not res!1341118) (not e!2056517))))

(assert (=> d!926368 (= res!1341118 (<= 0 0))))

(assert (=> d!926368 (= (apply!8391 (_1!21132 lt!1120553) 0) lt!1120990)))

(declare-fun b!3306733 () Bool)

(assert (=> b!3306733 (= e!2056517 (< 0 (size!27582 (_1!21132 lt!1120553))))))

(assert (= (and d!926368 res!1341118) b!3306733))

(assert (=> d!926368 m!3632755))

(assert (=> d!926368 m!3632755))

(declare-fun m!3633589 () Bool)

(assert (=> d!926368 m!3633589))

(declare-fun m!3633595 () Bool)

(assert (=> d!926368 m!3633595))

(assert (=> b!3306733 m!3632413))

(assert (=> b!3306119 d!926368))

(declare-fun bs!549164 () Bool)

(declare-fun d!926370 () Bool)

(assert (= bs!549164 (and d!926370 d!926216)))

(declare-fun lambda!119074 () Int)

(assert (=> bs!549164 (= (= (toValue!7438 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (= lambda!119074 lambda!119062))))

(assert (=> d!926370 true))

(assert (=> d!926370 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14980 order!18981 lambda!119074))))

(assert (=> d!926370 (= (equivClasses!2092 (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (Forall2!892 lambda!119074))))

(declare-fun bs!549165 () Bool)

(assert (= bs!549165 d!926370))

(declare-fun m!3633597 () Bool)

(assert (=> bs!549165 m!3633597))

(assert (=> b!3306019 d!926370))

(declare-fun d!926372 () Bool)

(declare-fun charsToInt!0 (List!36634) (_ BitVec 32))

(assert (=> d!926372 (= (inv!16 (value!171453 (h!41933 tokens!494))) (= (charsToInt!0 (text!39143 (value!171453 (h!41933 tokens!494)))) (value!171444 (value!171453 (h!41933 tokens!494)))))))

(declare-fun bs!549166 () Bool)

(assert (= bs!549166 d!926372))

(declare-fun m!3633599 () Bool)

(assert (=> bs!549166 m!3633599))

(assert (=> b!3306291 d!926372))

(declare-fun d!926374 () Bool)

(declare-fun c!560977 () Bool)

(assert (=> d!926374 (= c!560977 ((_ is Node!10971) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(declare-fun e!2056525 () Bool)

(assert (=> d!926374 (= (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))) e!2056525)))

(declare-fun b!3306751 () Bool)

(assert (=> b!3306751 (= e!2056525 (inv!49487 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(declare-fun b!3306752 () Bool)

(declare-fun e!2056526 () Bool)

(assert (=> b!3306752 (= e!2056525 e!2056526)))

(declare-fun res!1341119 () Bool)

(assert (=> b!3306752 (= res!1341119 (not ((_ is Leaf!17231) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))))))

(assert (=> b!3306752 (=> res!1341119 e!2056526)))

(declare-fun b!3306753 () Bool)

(assert (=> b!3306753 (= e!2056526 (inv!49488 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(assert (= (and d!926374 c!560977) b!3306751))

(assert (= (and d!926374 (not c!560977)) b!3306752))

(assert (= (and b!3306752 (not res!1341119)) b!3306753))

(declare-fun m!3633601 () Bool)

(assert (=> b!3306751 m!3633601))

(declare-fun m!3633603 () Bool)

(assert (=> b!3306753 m!3633603))

(assert (=> b!3306133 d!926374))

(declare-fun d!926376 () Bool)

(assert (=> d!926376 true))

(declare-fun lambda!119077 () Int)

(declare-fun order!18985 () Int)

(declare-fun dynLambda!14981 (Int Int) Int)

(assert (=> d!926376 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (dynLambda!14981 order!18985 lambda!119077))))

(assert (=> d!926376 true))

(assert (=> d!926376 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (dynLambda!14981 order!18985 lambda!119077))))

(declare-fun Forall!1295 (Int) Bool)

(assert (=> d!926376 (= (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (Forall!1295 lambda!119077))))

(declare-fun bs!549167 () Bool)

(assert (= bs!549167 d!926376))

(declare-fun m!3633615 () Bool)

(assert (=> bs!549167 m!3633615))

(assert (=> d!925970 d!926376))

(declare-fun d!926378 () Bool)

(declare-fun c!560982 () Bool)

(assert (=> d!926378 (= c!560982 ((_ is Empty!10971) (c!560835 (charsOf!3314 (h!41933 tokens!494)))))))

(declare-fun e!2056559 () List!36635)

(assert (=> d!926378 (= (list!13099 (c!560835 (charsOf!3314 (h!41933 tokens!494)))) e!2056559)))

(declare-fun b!3306841 () Bool)

(declare-fun e!2056560 () List!36635)

(assert (=> b!3306841 (= e!2056559 e!2056560)))

(declare-fun c!560983 () Bool)

(assert (=> b!3306841 (= c!560983 ((_ is Leaf!17231) (c!560835 (charsOf!3314 (h!41933 tokens!494)))))))

(declare-fun b!3306842 () Bool)

(declare-fun list!13103 (IArray!21947) List!36635)

(assert (=> b!3306842 (= e!2056560 (list!13103 (xs!14109 (c!560835 (charsOf!3314 (h!41933 tokens!494))))))))

(declare-fun b!3306840 () Bool)

(assert (=> b!3306840 (= e!2056559 Nil!36511)))

(declare-fun b!3306843 () Bool)

(assert (=> b!3306843 (= e!2056560 (++!8842 (list!13099 (left!28438 (c!560835 (charsOf!3314 (h!41933 tokens!494))))) (list!13099 (right!28768 (c!560835 (charsOf!3314 (h!41933 tokens!494)))))))))

(assert (= (and d!926378 c!560982) b!3306840))

(assert (= (and d!926378 (not c!560982)) b!3306841))

(assert (= (and b!3306841 c!560983) b!3306842))

(assert (= (and b!3306841 (not c!560983)) b!3306843))

(declare-fun m!3633623 () Bool)

(assert (=> b!3306842 m!3633623))

(declare-fun m!3633625 () Bool)

(assert (=> b!3306843 m!3633625))

(declare-fun m!3633627 () Bool)

(assert (=> b!3306843 m!3633627))

(assert (=> b!3306843 m!3633625))

(assert (=> b!3306843 m!3633627))

(declare-fun m!3633629 () Bool)

(assert (=> b!3306843 m!3633629))

(assert (=> d!926020 d!926378))

(declare-fun d!926384 () Bool)

(assert (=> d!926384 (= (isEmpty!20654 (originalCharacters!6012 (h!41933 tokens!494))) ((_ is Nil!36511) (originalCharacters!6012 (h!41933 tokens!494))))))

(assert (=> d!925980 d!926384))

(assert (=> b!3306140 d!926228))

(declare-fun d!926386 () Bool)

(assert (=> d!926386 (= (tail!5269 (drop!1907 lt!1120582 0)) (drop!1907 lt!1120582 (+ 0 1)))))

(declare-fun lt!1120993 () Unit!51440)

(declare-fun choose!19145 (List!36637 Int) Unit!51440)

(assert (=> d!926386 (= lt!1120993 (choose!19145 lt!1120582 0))))

(declare-fun e!2056563 () Bool)

(assert (=> d!926386 e!2056563))

(declare-fun res!1341122 () Bool)

(assert (=> d!926386 (=> (not res!1341122) (not e!2056563))))

(assert (=> d!926386 (= res!1341122 (>= 0 0))))

(assert (=> d!926386 (= (lemmaDropTail!959 lt!1120582 0) lt!1120993)))

(declare-fun b!3306846 () Bool)

(assert (=> b!3306846 (= e!2056563 (< 0 (size!27587 lt!1120582)))))

(assert (= (and d!926386 res!1341122) b!3306846))

(assert (=> d!926386 m!3632489))

(assert (=> d!926386 m!3632489))

(assert (=> d!926386 m!3632491))

(assert (=> d!926386 m!3632499))

(declare-fun m!3633631 () Bool)

(assert (=> d!926386 m!3633631))

(declare-fun m!3633633 () Bool)

(assert (=> b!3306846 m!3633633))

(assert (=> b!3306142 d!926386))

(declare-fun b!3306865 () Bool)

(declare-fun e!2056576 () List!36637)

(declare-fun e!2056578 () List!36637)

(assert (=> b!3306865 (= e!2056576 e!2056578)))

(declare-fun c!560992 () Bool)

(assert (=> b!3306865 (= c!560992 (<= (+ 0 1) 0))))

(declare-fun b!3306866 () Bool)

(declare-fun e!2056575 () Int)

(declare-fun call!240203 () Int)

(assert (=> b!3306866 (= e!2056575 (- call!240203 (+ 0 1)))))

(declare-fun bm!240198 () Bool)

(assert (=> bm!240198 (= call!240203 (size!27587 lt!1120582))))

(declare-fun b!3306867 () Bool)

(assert (=> b!3306867 (= e!2056578 lt!1120582)))

(declare-fun b!3306868 () Bool)

(declare-fun e!2056577 () Int)

(assert (=> b!3306868 (= e!2056577 call!240203)))

(declare-fun b!3306869 () Bool)

(assert (=> b!3306869 (= e!2056578 (drop!1907 (t!253630 lt!1120582) (- (+ 0 1) 1)))))

(declare-fun b!3306870 () Bool)

(assert (=> b!3306870 (= e!2056576 Nil!36513)))

(declare-fun b!3306872 () Bool)

(assert (=> b!3306872 (= e!2056577 e!2056575)))

(declare-fun c!560995 () Bool)

(assert (=> b!3306872 (= c!560995 (>= (+ 0 1) call!240203))))

(declare-fun b!3306873 () Bool)

(declare-fun e!2056574 () Bool)

(declare-fun lt!1120996 () List!36637)

(assert (=> b!3306873 (= e!2056574 (= (size!27587 lt!1120996) e!2056577))))

(declare-fun c!560993 () Bool)

(assert (=> b!3306873 (= c!560993 (<= (+ 0 1) 0))))

(declare-fun b!3306871 () Bool)

(assert (=> b!3306871 (= e!2056575 0)))

(declare-fun d!926388 () Bool)

(assert (=> d!926388 e!2056574))

(declare-fun res!1341125 () Bool)

(assert (=> d!926388 (=> (not res!1341125) (not e!2056574))))

(declare-fun content!4973 (List!36637) (InoxSet Token!9962))

(assert (=> d!926388 (= res!1341125 (= ((_ map implies) (content!4973 lt!1120996) (content!4973 lt!1120582)) ((as const (InoxSet Token!9962)) true)))))

(assert (=> d!926388 (= lt!1120996 e!2056576)))

(declare-fun c!560994 () Bool)

(assert (=> d!926388 (= c!560994 ((_ is Nil!36513) lt!1120582))))

(assert (=> d!926388 (= (drop!1907 lt!1120582 (+ 0 1)) lt!1120996)))

(assert (= (and d!926388 c!560994) b!3306870))

(assert (= (and d!926388 (not c!560994)) b!3306865))

(assert (= (and b!3306865 c!560992) b!3306867))

(assert (= (and b!3306865 (not c!560992)) b!3306869))

(assert (= (and d!926388 res!1341125) b!3306873))

(assert (= (and b!3306873 c!560993) b!3306868))

(assert (= (and b!3306873 (not c!560993)) b!3306872))

(assert (= (and b!3306872 c!560995) b!3306871))

(assert (= (and b!3306872 (not c!560995)) b!3306866))

(assert (= (or b!3306868 b!3306872 b!3306866) bm!240198))

(assert (=> bm!240198 m!3633633))

(declare-fun m!3633635 () Bool)

(assert (=> b!3306869 m!3633635))

(declare-fun m!3633637 () Bool)

(assert (=> b!3306873 m!3633637))

(declare-fun m!3633639 () Bool)

(assert (=> d!926388 m!3633639))

(declare-fun m!3633641 () Bool)

(assert (=> d!926388 m!3633641))

(assert (=> b!3306142 d!926388))

(declare-fun d!926390 () Bool)

(declare-fun lt!1120999 () Token!9962)

(declare-fun contains!6599 (List!36637 Token!9962) Bool)

(assert (=> d!926390 (contains!6599 lt!1120577 lt!1120999)))

(declare-fun e!2056584 () Token!9962)

(assert (=> d!926390 (= lt!1120999 e!2056584)))

(declare-fun c!560998 () Bool)

(assert (=> d!926390 (= c!560998 (= 0 0))))

(declare-fun e!2056583 () Bool)

(assert (=> d!926390 e!2056583))

(declare-fun res!1341128 () Bool)

(assert (=> d!926390 (=> (not res!1341128) (not e!2056583))))

(assert (=> d!926390 (= res!1341128 (<= 0 0))))

(assert (=> d!926390 (= (apply!8392 lt!1120577 0) lt!1120999)))

(declare-fun b!3306880 () Bool)

(assert (=> b!3306880 (= e!2056583 (< 0 (size!27587 lt!1120577)))))

(declare-fun b!3306881 () Bool)

(assert (=> b!3306881 (= e!2056584 (head!7131 lt!1120577))))

(declare-fun b!3306882 () Bool)

(assert (=> b!3306882 (= e!2056584 (apply!8392 (tail!5269 lt!1120577) (- 0 1)))))

(assert (= (and d!926390 res!1341128) b!3306880))

(assert (= (and d!926390 c!560998) b!3306881))

(assert (= (and d!926390 (not c!560998)) b!3306882))

(declare-fun m!3633643 () Bool)

(assert (=> d!926390 m!3633643))

(declare-fun m!3633645 () Bool)

(assert (=> b!3306880 m!3633645))

(declare-fun m!3633647 () Bool)

(assert (=> b!3306881 m!3633647))

(declare-fun m!3633649 () Bool)

(assert (=> b!3306882 m!3633649))

(assert (=> b!3306882 m!3633649))

(declare-fun m!3633651 () Bool)

(assert (=> b!3306882 m!3633651))

(assert (=> b!3306142 d!926390))

(declare-fun d!926392 () Bool)

(assert (=> d!926392 (= (head!7131 (drop!1907 lt!1120577 0)) (h!41933 (drop!1907 lt!1120577 0)))))

(assert (=> b!3306142 d!926392))

(declare-fun b!3306883 () Bool)

(declare-fun e!2056587 () List!36637)

(declare-fun e!2056589 () List!36637)

(assert (=> b!3306883 (= e!2056587 e!2056589)))

(declare-fun c!560999 () Bool)

(assert (=> b!3306883 (= c!560999 (<= 0 0))))

(declare-fun b!3306884 () Bool)

(declare-fun e!2056586 () Int)

(declare-fun call!240204 () Int)

(assert (=> b!3306884 (= e!2056586 (- call!240204 0))))

(declare-fun bm!240199 () Bool)

(assert (=> bm!240199 (= call!240204 (size!27587 lt!1120582))))

(declare-fun b!3306885 () Bool)

(assert (=> b!3306885 (= e!2056589 lt!1120582)))

(declare-fun b!3306886 () Bool)

(declare-fun e!2056588 () Int)

(assert (=> b!3306886 (= e!2056588 call!240204)))

(declare-fun b!3306887 () Bool)

(assert (=> b!3306887 (= e!2056589 (drop!1907 (t!253630 lt!1120582) (- 0 1)))))

(declare-fun b!3306888 () Bool)

(assert (=> b!3306888 (= e!2056587 Nil!36513)))

(declare-fun b!3306890 () Bool)

(assert (=> b!3306890 (= e!2056588 e!2056586)))

(declare-fun c!561002 () Bool)

(assert (=> b!3306890 (= c!561002 (>= 0 call!240204))))

(declare-fun b!3306891 () Bool)

(declare-fun e!2056585 () Bool)

(declare-fun lt!1121000 () List!36637)

(assert (=> b!3306891 (= e!2056585 (= (size!27587 lt!1121000) e!2056588))))

(declare-fun c!561000 () Bool)

(assert (=> b!3306891 (= c!561000 (<= 0 0))))

(declare-fun b!3306889 () Bool)

(assert (=> b!3306889 (= e!2056586 0)))

(declare-fun d!926394 () Bool)

(assert (=> d!926394 e!2056585))

(declare-fun res!1341129 () Bool)

(assert (=> d!926394 (=> (not res!1341129) (not e!2056585))))

(assert (=> d!926394 (= res!1341129 (= ((_ map implies) (content!4973 lt!1121000) (content!4973 lt!1120582)) ((as const (InoxSet Token!9962)) true)))))

(assert (=> d!926394 (= lt!1121000 e!2056587)))

(declare-fun c!561001 () Bool)

(assert (=> d!926394 (= c!561001 ((_ is Nil!36513) lt!1120582))))

(assert (=> d!926394 (= (drop!1907 lt!1120582 0) lt!1121000)))

(assert (= (and d!926394 c!561001) b!3306888))

(assert (= (and d!926394 (not c!561001)) b!3306883))

(assert (= (and b!3306883 c!560999) b!3306885))

(assert (= (and b!3306883 (not c!560999)) b!3306887))

(assert (= (and d!926394 res!1341129) b!3306891))

(assert (= (and b!3306891 c!561000) b!3306886))

(assert (= (and b!3306891 (not c!561000)) b!3306890))

(assert (= (and b!3306890 c!561002) b!3306889))

(assert (= (and b!3306890 (not c!561002)) b!3306884))

(assert (= (or b!3306886 b!3306890 b!3306884) bm!240199))

(assert (=> bm!240199 m!3633633))

(declare-fun m!3633653 () Bool)

(assert (=> b!3306887 m!3633653))

(declare-fun m!3633655 () Bool)

(assert (=> b!3306891 m!3633655))

(declare-fun m!3633657 () Bool)

(assert (=> d!926394 m!3633657))

(assert (=> d!926394 m!3633641))

(assert (=> b!3306142 d!926394))

(assert (=> b!3306142 d!926244))

(declare-fun d!926396 () Bool)

(declare-fun lt!1121001 () BalanceConc!21556)

(assert (=> d!926396 (= (list!13095 lt!1121001) (originalCharacters!6012 (apply!8391 lt!1120524 0)))))

(assert (=> d!926396 (= lt!1121001 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0)))) (value!171453 (apply!8391 lt!1120524 0))))))

(assert (=> d!926396 (= (charsOf!3314 (apply!8391 lt!1120524 0)) lt!1121001)))

(declare-fun b_lambda!92413 () Bool)

(assert (=> (not b_lambda!92413) (not d!926396)))

(declare-fun tb!171705 () Bool)

(declare-fun t!253766 () Bool)

(assert (=> (and b!3305993 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253766) tb!171705))

(declare-fun b!3306892 () Bool)

(declare-fun e!2056590 () Bool)

(declare-fun tp!1035467 () Bool)

(assert (=> b!3306892 (= e!2056590 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0)))) (value!171453 (apply!8391 lt!1120524 0))))) tp!1035467))))

(declare-fun result!214552 () Bool)

(assert (=> tb!171705 (= result!214552 (and (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0)))) (value!171453 (apply!8391 lt!1120524 0)))) e!2056590))))

(assert (= tb!171705 b!3306892))

(declare-fun m!3633659 () Bool)

(assert (=> b!3306892 m!3633659))

(declare-fun m!3633661 () Bool)

(assert (=> tb!171705 m!3633661))

(assert (=> d!926396 t!253766))

(declare-fun b_and!226713 () Bool)

(assert (= b_and!226699 (and (=> t!253766 result!214552) b_and!226713)))

(declare-fun t!253768 () Bool)

(declare-fun tb!171707 () Bool)

(assert (=> (and b!3306331 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253768) tb!171707))

(declare-fun result!214554 () Bool)

(assert (= result!214554 result!214552))

(assert (=> d!926396 t!253768))

(declare-fun b_and!226715 () Bool)

(assert (= b_and!226695 (and (=> t!253768 result!214554) b_and!226715)))

(declare-fun tb!171709 () Bool)

(declare-fun t!253770 () Bool)

(assert (=> (and b!3306347 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253770) tb!171709))

(declare-fun result!214556 () Bool)

(assert (= result!214556 result!214552))

(assert (=> d!926396 t!253770))

(declare-fun b_and!226717 () Bool)

(assert (= b_and!226697 (and (=> t!253770 result!214556) b_and!226717)))

(declare-fun t!253772 () Bool)

(declare-fun tb!171711 () Bool)

(assert (=> (and b!3306006 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253772) tb!171711))

(declare-fun result!214558 () Bool)

(assert (= result!214558 result!214552))

(assert (=> d!926396 t!253772))

(declare-fun b_and!226719 () Bool)

(assert (= b_and!226703 (and (=> t!253772 result!214558) b_and!226719)))

(declare-fun tb!171713 () Bool)

(declare-fun t!253774 () Bool)

(assert (=> (and b!3305994 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253774) tb!171713))

(declare-fun result!214560 () Bool)

(assert (= result!214560 result!214552))

(assert (=> d!926396 t!253774))

(declare-fun b_and!226721 () Bool)

(assert (= b_and!226701 (and (=> t!253774 result!214560) b_and!226721)))

(declare-fun m!3633663 () Bool)

(assert (=> d!926396 m!3633663))

(declare-fun m!3633665 () Bool)

(assert (=> d!926396 m!3633665))

(assert (=> b!3306142 d!926396))

(declare-fun d!926398 () Bool)

(declare-fun lt!1121002 () Token!9962)

(assert (=> d!926398 (= lt!1121002 (apply!8392 (list!13098 lt!1120524) 0))))

(assert (=> d!926398 (= lt!1121002 (apply!8394 (c!560836 lt!1120524) 0))))

(declare-fun e!2056591 () Bool)

(assert (=> d!926398 e!2056591))

(declare-fun res!1341130 () Bool)

(assert (=> d!926398 (=> (not res!1341130) (not e!2056591))))

(assert (=> d!926398 (= res!1341130 (<= 0 0))))

(assert (=> d!926398 (= (apply!8391 lt!1120524 0) lt!1121002)))

(declare-fun b!3306893 () Bool)

(assert (=> b!3306893 (= e!2056591 (< 0 (size!27582 lt!1120524)))))

(assert (= (and d!926398 res!1341130) b!3306893))

(assert (=> d!926398 m!3632469))

(assert (=> d!926398 m!3632469))

(declare-fun m!3633667 () Bool)

(assert (=> d!926398 m!3633667))

(declare-fun m!3633669 () Bool)

(assert (=> d!926398 m!3633669))

(assert (=> b!3306893 m!3632479))

(assert (=> b!3306142 d!926398))

(declare-fun b!3306904 () Bool)

(declare-fun res!1341139 () Bool)

(declare-fun e!2056594 () Bool)

(assert (=> b!3306904 (=> (not res!1341139) (not e!2056594))))

(declare-fun height!1611 (Conc!10971) Int)

(declare-fun ++!8846 (Conc!10971 Conc!10971) Conc!10971)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3306904 (= res!1341139 (>= (height!1611 (++!8846 (c!560835 (BalanceConc!21557 Empty!10971)) (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0))))) (max!0 (height!1611 (c!560835 (BalanceConc!21557 Empty!10971))) (height!1611 (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0)))))))))

(declare-fun b!3306905 () Bool)

(declare-fun lt!1121005 () BalanceConc!21556)

(assert (=> b!3306905 (= e!2056594 (= (list!13095 lt!1121005) (++!8842 (list!13095 (BalanceConc!21557 Empty!10971)) (list!13095 (charsOf!3314 (apply!8391 lt!1120524 0))))))))

(declare-fun b!3306903 () Bool)

(declare-fun res!1341142 () Bool)

(assert (=> b!3306903 (=> (not res!1341142) (not e!2056594))))

(assert (=> b!3306903 (= res!1341142 (<= (height!1611 (++!8846 (c!560835 (BalanceConc!21557 Empty!10971)) (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0))))) (+ (max!0 (height!1611 (c!560835 (BalanceConc!21557 Empty!10971))) (height!1611 (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0))))) 1)))))

(declare-fun d!926400 () Bool)

(assert (=> d!926400 e!2056594))

(declare-fun res!1341140 () Bool)

(assert (=> d!926400 (=> (not res!1341140) (not e!2056594))))

(declare-fun appendAssocInst!761 (Conc!10971 Conc!10971) Bool)

(assert (=> d!926400 (= res!1341140 (appendAssocInst!761 (c!560835 (BalanceConc!21557 Empty!10971)) (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0)))))))

(assert (=> d!926400 (= lt!1121005 (BalanceConc!21557 (++!8846 (c!560835 (BalanceConc!21557 Empty!10971)) (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0))))))))

(assert (=> d!926400 (= (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0))) lt!1121005)))

(declare-fun b!3306902 () Bool)

(declare-fun res!1341141 () Bool)

(assert (=> b!3306902 (=> (not res!1341141) (not e!2056594))))

(declare-fun isBalanced!3285 (Conc!10971) Bool)

(assert (=> b!3306902 (= res!1341141 (isBalanced!3285 (++!8846 (c!560835 (BalanceConc!21557 Empty!10971)) (c!560835 (charsOf!3314 (apply!8391 lt!1120524 0))))))))

(assert (= (and d!926400 res!1341140) b!3306902))

(assert (= (and b!3306902 res!1341141) b!3306903))

(assert (= (and b!3306903 res!1341142) b!3306904))

(assert (= (and b!3306904 res!1341139) b!3306905))

(declare-fun m!3633671 () Bool)

(assert (=> d!926400 m!3633671))

(declare-fun m!3633673 () Bool)

(assert (=> d!926400 m!3633673))

(declare-fun m!3633675 () Bool)

(assert (=> b!3306903 m!3633675))

(declare-fun m!3633677 () Bool)

(assert (=> b!3306903 m!3633677))

(declare-fun m!3633679 () Bool)

(assert (=> b!3306903 m!3633679))

(assert (=> b!3306903 m!3633677))

(assert (=> b!3306903 m!3633673))

(assert (=> b!3306903 m!3633675))

(assert (=> b!3306903 m!3633673))

(declare-fun m!3633681 () Bool)

(assert (=> b!3306903 m!3633681))

(assert (=> b!3306902 m!3633673))

(assert (=> b!3306902 m!3633673))

(declare-fun m!3633683 () Bool)

(assert (=> b!3306902 m!3633683))

(assert (=> b!3306904 m!3633675))

(assert (=> b!3306904 m!3633677))

(assert (=> b!3306904 m!3633679))

(assert (=> b!3306904 m!3633677))

(assert (=> b!3306904 m!3633673))

(assert (=> b!3306904 m!3633675))

(assert (=> b!3306904 m!3633673))

(assert (=> b!3306904 m!3633681))

(declare-fun m!3633685 () Bool)

(assert (=> b!3306905 m!3633685))

(assert (=> b!3306905 m!3632477))

(assert (=> b!3306905 m!3632487))

(declare-fun m!3633687 () Bool)

(assert (=> b!3306905 m!3633687))

(assert (=> b!3306905 m!3632477))

(assert (=> b!3306905 m!3633687))

(declare-fun m!3633689 () Bool)

(assert (=> b!3306905 m!3633689))

(assert (=> b!3306142 d!926400))

(declare-fun d!926402 () Bool)

(declare-fun lt!1121008 () BalanceConc!21556)

(assert (=> d!926402 (= (list!13095 lt!1121008) (printListTailRec!599 thiss!18206 (dropList!1116 lt!1120524 (+ 0 1)) (list!13095 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0))))))))

(declare-fun e!2056596 () BalanceConc!21556)

(assert (=> d!926402 (= lt!1121008 e!2056596)))

(declare-fun c!561006 () Bool)

(assert (=> d!926402 (= c!561006 (>= (+ 0 1) (size!27582 lt!1120524)))))

(declare-fun e!2056595 () Bool)

(assert (=> d!926402 e!2056595))

(declare-fun res!1341143 () Bool)

(assert (=> d!926402 (=> (not res!1341143) (not e!2056595))))

(assert (=> d!926402 (= res!1341143 (>= (+ 0 1) 0))))

(assert (=> d!926402 (= (printTailRec!1384 thiss!18206 lt!1120524 (+ 0 1) (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0)))) lt!1121008)))

(declare-fun b!3306906 () Bool)

(assert (=> b!3306906 (= e!2056595 (<= (+ 0 1) (size!27582 lt!1120524)))))

(declare-fun b!3306907 () Bool)

(assert (=> b!3306907 (= e!2056596 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0))))))

(declare-fun b!3306908 () Bool)

(assert (=> b!3306908 (= e!2056596 (printTailRec!1384 thiss!18206 lt!1120524 (+ 0 1 1) (++!8841 (++!8841 (BalanceConc!21557 Empty!10971) (charsOf!3314 (apply!8391 lt!1120524 0))) (charsOf!3314 (apply!8391 lt!1120524 (+ 0 1))))))))

(declare-fun lt!1121006 () List!36637)

(assert (=> b!3306908 (= lt!1121006 (list!13098 lt!1120524))))

(declare-fun lt!1121007 () Unit!51440)

(assert (=> b!3306908 (= lt!1121007 (lemmaDropApply!1075 lt!1121006 (+ 0 1)))))

(assert (=> b!3306908 (= (head!7131 (drop!1907 lt!1121006 (+ 0 1))) (apply!8392 lt!1121006 (+ 0 1)))))

(declare-fun lt!1121009 () Unit!51440)

(assert (=> b!3306908 (= lt!1121009 lt!1121007)))

(declare-fun lt!1121011 () List!36637)

(assert (=> b!3306908 (= lt!1121011 (list!13098 lt!1120524))))

(declare-fun lt!1121012 () Unit!51440)

(assert (=> b!3306908 (= lt!1121012 (lemmaDropTail!959 lt!1121011 (+ 0 1)))))

(assert (=> b!3306908 (= (tail!5269 (drop!1907 lt!1121011 (+ 0 1))) (drop!1907 lt!1121011 (+ 0 1 1)))))

(declare-fun lt!1121010 () Unit!51440)

(assert (=> b!3306908 (= lt!1121010 lt!1121012)))

(assert (= (and d!926402 res!1341143) b!3306906))

(assert (= (and d!926402 c!561006) b!3306907))

(assert (= (and d!926402 (not c!561006)) b!3306908))

(declare-fun m!3633691 () Bool)

(assert (=> d!926402 m!3633691))

(assert (=> d!926402 m!3632503))

(declare-fun m!3633693 () Bool)

(assert (=> d!926402 m!3633693))

(assert (=> d!926402 m!3632479))

(declare-fun m!3633695 () Bool)

(assert (=> d!926402 m!3633695))

(assert (=> d!926402 m!3633691))

(assert (=> d!926402 m!3633693))

(declare-fun m!3633697 () Bool)

(assert (=> d!926402 m!3633697))

(assert (=> b!3306906 m!3632479))

(declare-fun m!3633699 () Bool)

(assert (=> b!3306908 m!3633699))

(declare-fun m!3633701 () Bool)

(assert (=> b!3306908 m!3633701))

(declare-fun m!3633703 () Bool)

(assert (=> b!3306908 m!3633703))

(declare-fun m!3633705 () Bool)

(assert (=> b!3306908 m!3633705))

(declare-fun m!3633707 () Bool)

(assert (=> b!3306908 m!3633707))

(declare-fun m!3633709 () Bool)

(assert (=> b!3306908 m!3633709))

(declare-fun m!3633711 () Bool)

(assert (=> b!3306908 m!3633711))

(declare-fun m!3633713 () Bool)

(assert (=> b!3306908 m!3633713))

(assert (=> b!3306908 m!3633699))

(declare-fun m!3633715 () Bool)

(assert (=> b!3306908 m!3633715))

(assert (=> b!3306908 m!3632469))

(declare-fun m!3633717 () Bool)

(assert (=> b!3306908 m!3633717))

(declare-fun m!3633719 () Bool)

(assert (=> b!3306908 m!3633719))

(assert (=> b!3306908 m!3633703))

(assert (=> b!3306908 m!3633711))

(declare-fun m!3633721 () Bool)

(assert (=> b!3306908 m!3633721))

(assert (=> b!3306908 m!3632503))

(assert (=> b!3306908 m!3633701))

(assert (=> b!3306908 m!3633717))

(assert (=> b!3306142 d!926402))

(declare-fun d!926404 () Bool)

(assert (=> d!926404 (= (head!7131 (drop!1907 lt!1120577 0)) (apply!8392 lt!1120577 0))))

(declare-fun lt!1121015 () Unit!51440)

(declare-fun choose!19148 (List!36637 Int) Unit!51440)

(assert (=> d!926404 (= lt!1121015 (choose!19148 lt!1120577 0))))

(declare-fun e!2056599 () Bool)

(assert (=> d!926404 e!2056599))

(declare-fun res!1341146 () Bool)

(assert (=> d!926404 (=> (not res!1341146) (not e!2056599))))

(assert (=> d!926404 (= res!1341146 (>= 0 0))))

(assert (=> d!926404 (= (lemmaDropApply!1075 lt!1120577 0) lt!1121015)))

(declare-fun b!3306911 () Bool)

(assert (=> b!3306911 (= e!2056599 (< 0 (size!27587 lt!1120577)))))

(assert (= (and d!926404 res!1341146) b!3306911))

(assert (=> d!926404 m!3632497))

(assert (=> d!926404 m!3632497))

(assert (=> d!926404 m!3632507))

(assert (=> d!926404 m!3632501))

(declare-fun m!3633723 () Bool)

(assert (=> d!926404 m!3633723))

(assert (=> b!3306911 m!3633645))

(assert (=> b!3306142 d!926404))

(declare-fun d!926406 () Bool)

(assert (=> d!926406 (= (tail!5269 (drop!1907 lt!1120582 0)) (t!253630 (drop!1907 lt!1120582 0)))))

(assert (=> b!3306142 d!926406))

(declare-fun b!3306912 () Bool)

(declare-fun e!2056602 () List!36637)

(declare-fun e!2056604 () List!36637)

(assert (=> b!3306912 (= e!2056602 e!2056604)))

(declare-fun c!561007 () Bool)

(assert (=> b!3306912 (= c!561007 (<= 0 0))))

(declare-fun b!3306913 () Bool)

(declare-fun e!2056601 () Int)

(declare-fun call!240205 () Int)

(assert (=> b!3306913 (= e!2056601 (- call!240205 0))))

(declare-fun bm!240200 () Bool)

(assert (=> bm!240200 (= call!240205 (size!27587 lt!1120577))))

(declare-fun b!3306914 () Bool)

(assert (=> b!3306914 (= e!2056604 lt!1120577)))

(declare-fun b!3306915 () Bool)

(declare-fun e!2056603 () Int)

(assert (=> b!3306915 (= e!2056603 call!240205)))

(declare-fun b!3306916 () Bool)

(assert (=> b!3306916 (= e!2056604 (drop!1907 (t!253630 lt!1120577) (- 0 1)))))

(declare-fun b!3306917 () Bool)

(assert (=> b!3306917 (= e!2056602 Nil!36513)))

(declare-fun b!3306919 () Bool)

(assert (=> b!3306919 (= e!2056603 e!2056601)))

(declare-fun c!561010 () Bool)

(assert (=> b!3306919 (= c!561010 (>= 0 call!240205))))

(declare-fun b!3306920 () Bool)

(declare-fun e!2056600 () Bool)

(declare-fun lt!1121016 () List!36637)

(assert (=> b!3306920 (= e!2056600 (= (size!27587 lt!1121016) e!2056603))))

(declare-fun c!561008 () Bool)

(assert (=> b!3306920 (= c!561008 (<= 0 0))))

(declare-fun b!3306918 () Bool)

(assert (=> b!3306918 (= e!2056601 0)))

(declare-fun d!926408 () Bool)

(assert (=> d!926408 e!2056600))

(declare-fun res!1341147 () Bool)

(assert (=> d!926408 (=> (not res!1341147) (not e!2056600))))

(assert (=> d!926408 (= res!1341147 (= ((_ map implies) (content!4973 lt!1121016) (content!4973 lt!1120577)) ((as const (InoxSet Token!9962)) true)))))

(assert (=> d!926408 (= lt!1121016 e!2056602)))

(declare-fun c!561009 () Bool)

(assert (=> d!926408 (= c!561009 ((_ is Nil!36513) lt!1120577))))

(assert (=> d!926408 (= (drop!1907 lt!1120577 0) lt!1121016)))

(assert (= (and d!926408 c!561009) b!3306917))

(assert (= (and d!926408 (not c!561009)) b!3306912))

(assert (= (and b!3306912 c!561007) b!3306914))

(assert (= (and b!3306912 (not c!561007)) b!3306916))

(assert (= (and d!926408 res!1341147) b!3306920))

(assert (= (and b!3306920 c!561008) b!3306915))

(assert (= (and b!3306920 (not c!561008)) b!3306919))

(assert (= (and b!3306919 c!561010) b!3306918))

(assert (= (and b!3306919 (not c!561010)) b!3306913))

(assert (= (or b!3306915 b!3306919 b!3306913) bm!240200))

(assert (=> bm!240200 m!3633645))

(declare-fun m!3633725 () Bool)

(assert (=> b!3306916 m!3633725))

(declare-fun m!3633727 () Bool)

(assert (=> b!3306920 m!3633727))

(declare-fun m!3633729 () Bool)

(assert (=> d!926408 m!3633729))

(declare-fun m!3633731 () Bool)

(assert (=> d!926408 m!3633731))

(assert (=> b!3306142 d!926408))

(declare-fun d!926410 () Bool)

(declare-fun e!2056607 () Bool)

(assert (=> d!926410 e!2056607))

(declare-fun res!1341150 () Bool)

(assert (=> d!926410 (=> (not res!1341150) (not e!2056607))))

(declare-fun lt!1121019 () BalanceConc!21556)

(assert (=> d!926410 (= res!1341150 (= (list!13095 lt!1121019) lt!1120526))))

(declare-fun fromList!662 (List!36635) Conc!10971)

(assert (=> d!926410 (= lt!1121019 (BalanceConc!21557 (fromList!662 lt!1120526)))))

(assert (=> d!926410 (= (fromListB!1605 lt!1120526) lt!1121019)))

(declare-fun b!3306923 () Bool)

(assert (=> b!3306923 (= e!2056607 (isBalanced!3285 (fromList!662 lt!1120526)))))

(assert (= (and d!926410 res!1341150) b!3306923))

(declare-fun m!3633733 () Bool)

(assert (=> d!926410 m!3633733))

(declare-fun m!3633735 () Bool)

(assert (=> d!926410 m!3633735))

(assert (=> b!3306923 m!3633735))

(assert (=> b!3306923 m!3633735))

(declare-fun m!3633737 () Bool)

(assert (=> b!3306923 m!3633737))

(assert (=> d!926006 d!926410))

(declare-fun d!926412 () Bool)

(declare-fun lt!1121020 () Bool)

(assert (=> d!926412 (= lt!1121020 (isEmpty!20654 (list!13095 (_2!21132 lt!1120555))))))

(assert (=> d!926412 (= lt!1121020 (isEmpty!20659 (c!560835 (_2!21132 lt!1120555))))))

(assert (=> d!926412 (= (isEmpty!20657 (_2!21132 lt!1120555)) lt!1121020)))

(declare-fun bs!549170 () Bool)

(assert (= bs!549170 d!926412))

(declare-fun m!3633739 () Bool)

(assert (=> bs!549170 m!3633739))

(assert (=> bs!549170 m!3633739))

(declare-fun m!3633741 () Bool)

(assert (=> bs!549170 m!3633741))

(declare-fun m!3633743 () Bool)

(assert (=> bs!549170 m!3633743))

(assert (=> b!3306123 d!926412))

(declare-fun d!926414 () Bool)

(declare-fun lt!1121021 () Bool)

(assert (=> d!926414 (= lt!1121021 (isEmpty!20655 (list!13098 (_1!21132 lt!1120548))))))

(assert (=> d!926414 (= lt!1121021 (isEmpty!20656 (c!560836 (_1!21132 lt!1120548))))))

(assert (=> d!926414 (= (isEmpty!20649 (_1!21132 lt!1120548)) lt!1121021)))

(declare-fun bs!549171 () Bool)

(assert (= bs!549171 d!926414))

(assert (=> bs!549171 m!3632399))

(assert (=> bs!549171 m!3632399))

(declare-fun m!3633745 () Bool)

(assert (=> bs!549171 m!3633745))

(declare-fun m!3633747 () Bool)

(assert (=> bs!549171 m!3633747))

(assert (=> b!3306090 d!926414))

(declare-fun d!926416 () Bool)

(assert (=> d!926416 (= (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))) (isBalanced!3285 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))))))

(declare-fun bs!549172 () Bool)

(assert (= bs!549172 d!926416))

(declare-fun m!3633749 () Bool)

(assert (=> bs!549172 m!3633749))

(assert (=> tb!171607 d!926416))

(declare-fun d!926418 () Bool)

(assert (=> d!926418 (= (inv!16 (value!171453 separatorToken!241)) (= (charsToInt!0 (text!39143 (value!171453 separatorToken!241))) (value!171444 (value!171453 separatorToken!241))))))

(declare-fun bs!549173 () Bool)

(assert (= bs!549173 d!926418))

(declare-fun m!3633751 () Bool)

(assert (=> bs!549173 m!3633751))

(assert (=> b!3306102 d!926418))

(declare-fun d!926420 () Bool)

(assert (=> d!926420 (= (list!13095 (_2!21132 lt!1120548)) (list!13099 (c!560835 (_2!21132 lt!1120548))))))

(declare-fun bs!549174 () Bool)

(assert (= bs!549174 d!926420))

(declare-fun m!3633753 () Bool)

(assert (=> bs!549174 m!3633753))

(assert (=> b!3306088 d!926420))

(assert (=> b!3306088 d!926160))

(assert (=> b!3306088 d!926212))

(declare-fun bs!549175 () Bool)

(declare-fun d!926422 () Bool)

(assert (= bs!549175 (and d!926422 d!926216)))

(declare-fun lambda!119078 () Int)

(assert (=> bs!549175 (= (= (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (= lambda!119078 lambda!119062))))

(declare-fun bs!549176 () Bool)

(assert (= bs!549176 (and d!926422 d!926370)))

(assert (=> bs!549176 (= (= (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (= lambda!119078 lambda!119074))))

(assert (=> d!926422 true))

(assert (=> d!926422 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (dynLambda!14980 order!18981 lambda!119078))))

(assert (=> d!926422 (= (equivClasses!2092 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (Forall2!892 lambda!119078))))

(declare-fun bs!549177 () Bool)

(assert (= bs!549177 d!926422))

(declare-fun m!3633755 () Bool)

(assert (=> bs!549177 m!3633755))

(assert (=> b!3306018 d!926422))

(declare-fun b!3306925 () Bool)

(declare-fun e!2056610 () Bool)

(assert (=> b!3306925 (= e!2056610 (inv!15 (value!171453 (h!41933 (t!253630 tokens!494)))))))

(declare-fun b!3306926 () Bool)

(declare-fun e!2056609 () Bool)

(declare-fun e!2056608 () Bool)

(assert (=> b!3306926 (= e!2056609 e!2056608)))

(declare-fun c!561013 () Bool)

(assert (=> b!3306926 (= c!561013 ((_ is IntegerValue!16585) (value!171453 (h!41933 (t!253630 tokens!494)))))))

(declare-fun b!3306927 () Bool)

(assert (=> b!3306927 (= e!2056608 (inv!17 (value!171453 (h!41933 (t!253630 tokens!494)))))))

(declare-fun b!3306928 () Bool)

(declare-fun res!1341151 () Bool)

(assert (=> b!3306928 (=> res!1341151 e!2056610)))

(assert (=> b!3306928 (= res!1341151 (not ((_ is IntegerValue!16586) (value!171453 (h!41933 (t!253630 tokens!494))))))))

(assert (=> b!3306928 (= e!2056608 e!2056610)))

(declare-fun b!3306924 () Bool)

(assert (=> b!3306924 (= e!2056609 (inv!16 (value!171453 (h!41933 (t!253630 tokens!494)))))))

(declare-fun d!926424 () Bool)

(declare-fun c!561012 () Bool)

(assert (=> d!926424 (= c!561012 ((_ is IntegerValue!16584) (value!171453 (h!41933 (t!253630 tokens!494)))))))

(assert (=> d!926424 (= (inv!21 (value!171453 (h!41933 (t!253630 tokens!494)))) e!2056609)))

(assert (= (and d!926424 c!561012) b!3306924))

(assert (= (and d!926424 (not c!561012)) b!3306926))

(assert (= (and b!3306926 c!561013) b!3306927))

(assert (= (and b!3306926 (not c!561013)) b!3306928))

(assert (= (and b!3306928 (not res!1341151)) b!3306925))

(declare-fun m!3633757 () Bool)

(assert (=> b!3306925 m!3633757))

(declare-fun m!3633759 () Bool)

(assert (=> b!3306927 m!3633759))

(declare-fun m!3633761 () Bool)

(assert (=> b!3306924 m!3633761))

(assert (=> b!3306329 d!926424))

(declare-fun bs!549178 () Bool)

(declare-fun d!926426 () Bool)

(assert (= bs!549178 (and d!926426 d!926376)))

(declare-fun lambda!119079 () Int)

(assert (=> bs!549178 (= (and (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (= (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (= lambda!119079 lambda!119077))))

(assert (=> d!926426 true))

(assert (=> d!926426 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) (dynLambda!14981 order!18985 lambda!119079))))

(assert (=> d!926426 true))

(assert (=> d!926426 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (dynLambda!14981 order!18985 lambda!119079))))

(assert (=> d!926426 (= (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241)))) (Forall!1295 lambda!119079))))

(declare-fun bs!549179 () Bool)

(assert (= bs!549179 d!926426))

(declare-fun m!3633763 () Bool)

(assert (=> bs!549179 m!3633763))

(assert (=> d!925978 d!926426))

(declare-fun d!926428 () Bool)

(declare-fun lt!1121022 () Int)

(assert (=> d!926428 (>= lt!1121022 0)))

(declare-fun e!2056611 () Int)

(assert (=> d!926428 (= lt!1121022 e!2056611)))

(declare-fun c!561014 () Bool)

(assert (=> d!926428 (= c!561014 ((_ is Nil!36511) (originalCharacters!6012 separatorToken!241)))))

(assert (=> d!926428 (= (size!27581 (originalCharacters!6012 separatorToken!241)) lt!1121022)))

(declare-fun b!3306929 () Bool)

(assert (=> b!3306929 (= e!2056611 0)))

(declare-fun b!3306930 () Bool)

(assert (=> b!3306930 (= e!2056611 (+ 1 (size!27581 (t!253628 (originalCharacters!6012 separatorToken!241)))))))

(assert (= (and d!926428 c!561014) b!3306929))

(assert (= (and d!926428 (not c!561014)) b!3306930))

(declare-fun m!3633765 () Bool)

(assert (=> b!3306930 m!3633765))

(assert (=> b!3306132 d!926428))

(declare-fun d!926430 () Bool)

(declare-fun res!1341156 () Bool)

(declare-fun e!2056616 () Bool)

(assert (=> d!926430 (=> res!1341156 e!2056616)))

(assert (=> d!926430 (= res!1341156 ((_ is Nil!36512) rules!2135))))

(assert (=> d!926430 (= (noDuplicateTag!1949 thiss!18206 rules!2135 Nil!36515) e!2056616)))

(declare-fun b!3306935 () Bool)

(declare-fun e!2056617 () Bool)

(assert (=> b!3306935 (= e!2056616 e!2056617)))

(declare-fun res!1341157 () Bool)

(assert (=> b!3306935 (=> (not res!1341157) (not e!2056617))))

(declare-fun contains!6601 (List!36639 String!40974) Bool)

(assert (=> b!3306935 (= res!1341157 (not (contains!6601 Nil!36515 (tag!5844 (h!41932 rules!2135)))))))

(declare-fun b!3306936 () Bool)

(assert (=> b!3306936 (= e!2056617 (noDuplicateTag!1949 thiss!18206 (t!253629 rules!2135) (Cons!36515 (tag!5844 (h!41932 rules!2135)) Nil!36515)))))

(assert (= (and d!926430 (not res!1341156)) b!3306935))

(assert (= (and b!3306935 res!1341157) b!3306936))

(declare-fun m!3633767 () Bool)

(assert (=> b!3306935 m!3633767))

(declare-fun m!3633769 () Bool)

(assert (=> b!3306936 m!3633769))

(assert (=> b!3306015 d!926430))

(declare-fun d!926432 () Bool)

(declare-fun e!2056620 () Bool)

(assert (=> d!926432 e!2056620))

(declare-fun res!1341160 () Bool)

(assert (=> d!926432 (=> (not res!1341160) (not e!2056620))))

(declare-fun lt!1121025 () BalanceConc!21558)

(assert (=> d!926432 (= res!1341160 (= (list!13098 lt!1121025) tokens!494))))

(declare-fun fromList!663 (List!36637) Conc!10972)

(assert (=> d!926432 (= lt!1121025 (BalanceConc!21559 (fromList!663 tokens!494)))))

(assert (=> d!926432 (= (fromListB!1606 tokens!494) lt!1121025)))

(declare-fun b!3306939 () Bool)

(assert (=> b!3306939 (= e!2056620 (isBalanced!3283 (fromList!663 tokens!494)))))

(assert (= (and d!926432 res!1341160) b!3306939))

(declare-fun m!3633771 () Bool)

(assert (=> d!926432 m!3633771))

(declare-fun m!3633773 () Bool)

(assert (=> d!926432 m!3633773))

(assert (=> b!3306939 m!3633773))

(assert (=> b!3306939 m!3633773))

(declare-fun m!3633775 () Bool)

(assert (=> b!3306939 m!3633775))

(assert (=> d!926072 d!926432))

(declare-fun d!926434 () Bool)

(assert (=> d!926434 (= (isEmpty!20655 (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))) ((_ is Nil!36513) (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(assert (=> d!925986 d!926434))

(declare-fun d!926436 () Bool)

(assert (=> d!926436 (= (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)))) (list!13101 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))))))

(declare-fun bs!549180 () Bool)

(assert (= bs!549180 d!926436))

(declare-fun m!3633777 () Bool)

(assert (=> bs!549180 m!3633777))

(assert (=> d!925986 d!926436))

(declare-fun d!926438 () Bool)

(declare-fun lt!1121028 () Bool)

(assert (=> d!926438 (= lt!1121028 (isEmpty!20655 (list!13101 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526)))))))))

(assert (=> d!926438 (= lt!1121028 (= (size!27588 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))) 0))))

(assert (=> d!926438 (= (isEmpty!20656 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (seqFromList!3652 lt!1120526))))) lt!1121028)))

(declare-fun bs!549181 () Bool)

(assert (= bs!549181 d!926438))

(assert (=> bs!549181 m!3633777))

(assert (=> bs!549181 m!3633777))

(declare-fun m!3633779 () Bool)

(assert (=> bs!549181 m!3633779))

(declare-fun m!3633781 () Bool)

(assert (=> bs!549181 m!3633781))

(assert (=> d!925986 d!926438))

(declare-fun lt!1121029 () Bool)

(declare-fun d!926440 () Bool)

(assert (=> d!926440 (= lt!1121029 (isEmpty!20654 (list!13095 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))))

(assert (=> d!926440 (= lt!1121029 (isEmpty!20659 (c!560835 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241)))))))))

(assert (=> d!926440 (= (isEmpty!20657 (_2!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 separatorToken!241))))) lt!1121029)))

(declare-fun bs!549182 () Bool)

(assert (= bs!549182 d!926440))

(declare-fun m!3633783 () Bool)

(assert (=> bs!549182 m!3633783))

(assert (=> bs!549182 m!3633783))

(declare-fun m!3633785 () Bool)

(assert (=> bs!549182 m!3633785))

(declare-fun m!3633787 () Bool)

(assert (=> bs!549182 m!3633787))

(assert (=> b!3306121 d!926440))

(assert (=> b!3306121 d!926114))

(assert (=> b!3306121 d!926110))

(assert (=> b!3306121 d!926108))

(declare-fun d!926442 () Bool)

(declare-fun c!561016 () Bool)

(assert (=> d!926442 (= c!561016 ((_ is Empty!10971) (c!560835 lt!1120527)))))

(declare-fun e!2056621 () List!36635)

(assert (=> d!926442 (= (list!13099 (c!560835 lt!1120527)) e!2056621)))

(declare-fun b!3306941 () Bool)

(declare-fun e!2056622 () List!36635)

(assert (=> b!3306941 (= e!2056621 e!2056622)))

(declare-fun c!561017 () Bool)

(assert (=> b!3306941 (= c!561017 ((_ is Leaf!17231) (c!560835 lt!1120527)))))

(declare-fun b!3306942 () Bool)

(assert (=> b!3306942 (= e!2056622 (list!13103 (xs!14109 (c!560835 lt!1120527))))))

(declare-fun b!3306940 () Bool)

(assert (=> b!3306940 (= e!2056621 Nil!36511)))

(declare-fun b!3306943 () Bool)

(assert (=> b!3306943 (= e!2056622 (++!8842 (list!13099 (left!28438 (c!560835 lt!1120527))) (list!13099 (right!28768 (c!560835 lt!1120527)))))))

(assert (= (and d!926442 c!561016) b!3306940))

(assert (= (and d!926442 (not c!561016)) b!3306941))

(assert (= (and b!3306941 c!561017) b!3306942))

(assert (= (and b!3306941 (not c!561017)) b!3306943))

(declare-fun m!3633789 () Bool)

(assert (=> b!3306942 m!3633789))

(declare-fun m!3633791 () Bool)

(assert (=> b!3306943 m!3633791))

(declare-fun m!3633793 () Bool)

(assert (=> b!3306943 m!3633793))

(assert (=> b!3306943 m!3633791))

(assert (=> b!3306943 m!3633793))

(declare-fun m!3633795 () Bool)

(assert (=> b!3306943 m!3633795))

(assert (=> d!926028 d!926442))

(declare-fun d!926444 () Bool)

(assert (=> d!926444 (= (inv!49484 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))) (isBalanced!3285 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(declare-fun bs!549183 () Bool)

(assert (= bs!549183 d!926444))

(declare-fun m!3633797 () Bool)

(assert (=> bs!549183 m!3633797))

(assert (=> tb!171595 d!926444))

(declare-fun d!926446 () Bool)

(assert (=> d!926446 (= (list!13095 lt!1120559) (list!13099 (c!560835 lt!1120559)))))

(declare-fun bs!549184 () Bool)

(assert (= bs!549184 d!926446))

(declare-fun m!3633799 () Bool)

(assert (=> bs!549184 m!3633799))

(assert (=> d!926022 d!926446))

(declare-fun d!926448 () Bool)

(assert (=> d!926448 (= (list!13095 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))) (list!13099 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))))))

(declare-fun bs!549185 () Bool)

(assert (= bs!549185 d!926448))

(declare-fun m!3633801 () Bool)

(assert (=> bs!549185 m!3633801))

(assert (=> b!3306034 d!926448))

(declare-fun d!926450 () Bool)

(assert (=> d!926450 (= (isEmpty!20654 (originalCharacters!6012 separatorToken!241)) ((_ is Nil!36511) (originalCharacters!6012 separatorToken!241)))))

(assert (=> d!926024 d!926450))

(declare-fun d!926452 () Bool)

(assert (=> d!926452 (= (inv!15 (value!171453 (h!41933 tokens!494))) (= (charsToBigInt!0 (text!39145 (value!171453 (h!41933 tokens!494))) 0) (value!171448 (value!171453 (h!41933 tokens!494)))))))

(declare-fun bs!549186 () Bool)

(assert (= bs!549186 d!926452))

(declare-fun m!3633803 () Bool)

(assert (=> bs!549186 m!3633803))

(assert (=> b!3306292 d!926452))

(declare-fun d!926454 () Bool)

(assert (=> d!926454 (= (list!13098 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494)))))) (list!13101 (c!560836 (_1!21132 (lex!2213 thiss!18206 rules!2135 (print!1952 thiss!18206 (singletonSeq!2394 (h!41933 tokens!494))))))))))

(declare-fun bs!549187 () Bool)

(assert (= bs!549187 d!926454))

(declare-fun m!3633805 () Bool)

(assert (=> bs!549187 m!3633805))

(assert (=> d!926016 d!926454))

(declare-fun d!926456 () Bool)

(declare-fun lt!1121030 () Int)

(assert (=> d!926456 (= lt!1121030 (size!27587 (list!13098 (_1!21132 lt!1120555))))))

(assert (=> d!926456 (= lt!1121030 (size!27588 (c!560836 (_1!21132 lt!1120555))))))

(assert (=> d!926456 (= (size!27582 (_1!21132 lt!1120555)) lt!1121030)))

(declare-fun bs!549188 () Bool)

(assert (= bs!549188 d!926456))

(assert (=> bs!549188 m!3633125))

(assert (=> bs!549188 m!3633125))

(declare-fun m!3633807 () Bool)

(assert (=> bs!549188 m!3633807))

(declare-fun m!3633809 () Bool)

(assert (=> bs!549188 m!3633809))

(assert (=> d!926016 d!926456))

(assert (=> d!926016 d!926148))

(assert (=> d!926016 d!926152))

(declare-fun d!926458 () Bool)

(assert (=> d!926458 (= (list!13098 (singletonSeq!2394 (h!41933 tokens!494))) (list!13101 (c!560836 (singletonSeq!2394 (h!41933 tokens!494)))))))

(declare-fun bs!549189 () Bool)

(assert (= bs!549189 d!926458))

(declare-fun m!3633811 () Bool)

(assert (=> bs!549189 m!3633811))

(assert (=> d!926016 d!926458))

(assert (=> d!926016 d!926032))

(assert (=> d!926016 d!926012))

(declare-fun b!3306956 () Bool)

(declare-fun res!1341177 () Bool)

(declare-fun e!2056628 () Bool)

(assert (=> b!3306956 (=> (not res!1341177) (not e!2056628))))

(declare-fun height!1612 (Conc!10972) Int)

(assert (=> b!3306956 (= res!1341177 (<= (- (height!1612 (left!28439 (c!560836 lt!1120586))) (height!1612 (right!28769 (c!560836 lt!1120586)))) 1))))

(declare-fun b!3306957 () Bool)

(declare-fun res!1341178 () Bool)

(assert (=> b!3306957 (=> (not res!1341178) (not e!2056628))))

(assert (=> b!3306957 (= res!1341178 (isBalanced!3283 (left!28439 (c!560836 lt!1120586))))))

(declare-fun b!3306958 () Bool)

(declare-fun e!2056627 () Bool)

(assert (=> b!3306958 (= e!2056627 e!2056628)))

(declare-fun res!1341173 () Bool)

(assert (=> b!3306958 (=> (not res!1341173) (not e!2056628))))

(assert (=> b!3306958 (= res!1341173 (<= (- 1) (- (height!1612 (left!28439 (c!560836 lt!1120586))) (height!1612 (right!28769 (c!560836 lt!1120586))))))))

(declare-fun d!926460 () Bool)

(declare-fun res!1341175 () Bool)

(assert (=> d!926460 (=> res!1341175 e!2056627)))

(assert (=> d!926460 (= res!1341175 (not ((_ is Node!10972) (c!560836 lt!1120586))))))

(assert (=> d!926460 (= (isBalanced!3283 (c!560836 lt!1120586)) e!2056627)))

(declare-fun b!3306959 () Bool)

(assert (=> b!3306959 (= e!2056628 (not (isEmpty!20656 (right!28769 (c!560836 lt!1120586)))))))

(declare-fun b!3306960 () Bool)

(declare-fun res!1341176 () Bool)

(assert (=> b!3306960 (=> (not res!1341176) (not e!2056628))))

(assert (=> b!3306960 (= res!1341176 (isBalanced!3283 (right!28769 (c!560836 lt!1120586))))))

(declare-fun b!3306961 () Bool)

(declare-fun res!1341174 () Bool)

(assert (=> b!3306961 (=> (not res!1341174) (not e!2056628))))

(assert (=> b!3306961 (= res!1341174 (not (isEmpty!20656 (left!28439 (c!560836 lt!1120586)))))))

(assert (= (and d!926460 (not res!1341175)) b!3306958))

(assert (= (and b!3306958 res!1341173) b!3306956))

(assert (= (and b!3306956 res!1341177) b!3306957))

(assert (= (and b!3306957 res!1341178) b!3306960))

(assert (= (and b!3306960 res!1341176) b!3306961))

(assert (= (and b!3306961 res!1341174) b!3306959))

(declare-fun m!3633813 () Bool)

(assert (=> b!3306958 m!3633813))

(declare-fun m!3633815 () Bool)

(assert (=> b!3306958 m!3633815))

(declare-fun m!3633817 () Bool)

(assert (=> b!3306957 m!3633817))

(declare-fun m!3633819 () Bool)

(assert (=> b!3306959 m!3633819))

(assert (=> b!3306956 m!3633813))

(assert (=> b!3306956 m!3633815))

(declare-fun m!3633821 () Bool)

(assert (=> b!3306961 m!3633821))

(declare-fun m!3633823 () Bool)

(assert (=> b!3306960 m!3633823))

(assert (=> b!3306145 d!926460))

(declare-fun d!926462 () Bool)

(assert (=> d!926462 (= (inv!17 (value!171453 (h!41933 tokens!494))) (= (charsToBigInt!1 (text!39144 (value!171453 (h!41933 tokens!494)))) (value!171445 (value!171453 (h!41933 tokens!494)))))))

(declare-fun bs!549190 () Bool)

(assert (= bs!549190 d!926462))

(declare-fun m!3633825 () Bool)

(assert (=> bs!549190 m!3633825))

(assert (=> b!3306294 d!926462))

(declare-fun b!3306970 () Bool)

(declare-fun e!2056636 () Bool)

(declare-fun call!240208 () Bool)

(assert (=> b!3306970 (= e!2056636 call!240208)))

(declare-fun b!3306971 () Bool)

(declare-fun e!2056635 () Bool)

(declare-fun e!2056637 () Bool)

(assert (=> b!3306971 (= e!2056635 e!2056637)))

(declare-fun res!1341183 () Bool)

(assert (=> b!3306971 (= res!1341183 (not ((_ is Cons!36512) rules!2135)))))

(assert (=> b!3306971 (=> res!1341183 e!2056637)))

(declare-fun b!3306972 () Bool)

(assert (=> b!3306972 (= e!2056637 call!240208)))

(declare-fun b!3306973 () Bool)

(assert (=> b!3306973 (= e!2056635 e!2056636)))

(declare-fun res!1341184 () Bool)

(declare-fun rulesUseDisjointChars!299 (Rule!10396 Rule!10396) Bool)

(assert (=> b!3306973 (= res!1341184 (rulesUseDisjointChars!299 (h!41932 rules!2135) (h!41932 rules!2135)))))

(assert (=> b!3306973 (=> (not res!1341184) (not e!2056636))))

(declare-fun d!926464 () Bool)

(declare-fun c!561020 () Bool)

(assert (=> d!926464 (= c!561020 (and ((_ is Cons!36512) rules!2135) (not (= (isSeparator!5298 (h!41932 rules!2135)) (isSeparator!5298 (h!41932 rules!2135))))))))

(assert (=> d!926464 (= (ruleDisjointCharsFromAllFromOtherType!629 (h!41932 rules!2135) rules!2135) e!2056635)))

(declare-fun bm!240203 () Bool)

(assert (=> bm!240203 (= call!240208 (ruleDisjointCharsFromAllFromOtherType!629 (h!41932 rules!2135) (t!253629 rules!2135)))))

(assert (= (and d!926464 c!561020) b!3306973))

(assert (= (and d!926464 (not c!561020)) b!3306971))

(assert (= (and b!3306973 res!1341184) b!3306970))

(assert (= (and b!3306971 (not res!1341183)) b!3306972))

(assert (= (or b!3306970 b!3306972) bm!240203))

(declare-fun m!3633827 () Bool)

(assert (=> b!3306973 m!3633827))

(declare-fun m!3633829 () Bool)

(assert (=> bm!240203 m!3633829))

(assert (=> b!3306111 d!926464))

(declare-fun bs!549191 () Bool)

(declare-fun d!926466 () Bool)

(assert (= bs!549191 (and d!926466 d!926376)))

(declare-fun lambda!119080 () Int)

(assert (=> bs!549191 (= (and (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) (= (toValue!7438 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (rule!7802 (h!41933 tokens!494)))))) (= lambda!119080 lambda!119077))))

(declare-fun bs!549192 () Bool)

(assert (= bs!549192 (and d!926466 d!926426)))

(assert (=> bs!549192 (= (and (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) (= (toValue!7438 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (rule!7802 separatorToken!241))))) (= lambda!119080 lambda!119079))))

(assert (=> d!926466 true))

(assert (=> d!926466 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14981 order!18985 lambda!119080))))

(assert (=> d!926466 true))

(assert (=> d!926466 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (dynLambda!14981 order!18985 lambda!119080))))

(assert (=> d!926466 (= (semiInverseModEq!2193 (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toValue!7438 (transformation!5298 (h!41932 rules!2135)))) (Forall!1295 lambda!119080))))

(declare-fun bs!549193 () Bool)

(assert (= bs!549193 d!926466))

(declare-fun m!3633831 () Bool)

(assert (=> bs!549193 m!3633831))

(assert (=> d!925974 d!926466))

(declare-fun d!926468 () Bool)

(assert (=> d!926468 true))

(declare-fun lt!1121033 () Bool)

(declare-fun rulesValidInductive!1809 (LexerInterface!4887 List!36636) Bool)

(assert (=> d!926468 (= lt!1121033 (rulesValidInductive!1809 thiss!18206 rules!2135))))

(declare-fun lambda!119083 () Int)

(declare-fun forall!7576 (List!36636 Int) Bool)

(assert (=> d!926468 (= lt!1121033 (forall!7576 rules!2135 lambda!119083))))

(assert (=> d!926468 (= (rulesValid!1953 thiss!18206 rules!2135) lt!1121033)))

(declare-fun bs!549194 () Bool)

(assert (= bs!549194 d!926468))

(declare-fun m!3633833 () Bool)

(assert (=> bs!549194 m!3633833))

(declare-fun m!3633835 () Bool)

(assert (=> bs!549194 m!3633835))

(assert (=> d!925966 d!926468))

(declare-fun d!926470 () Bool)

(declare-fun res!1341185 () Bool)

(declare-fun e!2056638 () Bool)

(assert (=> d!926470 (=> res!1341185 e!2056638)))

(assert (=> d!926470 (= res!1341185 ((_ is Nil!36513) (list!13098 (seqFromList!3651 tokens!494))))))

(assert (=> d!926470 (= (forall!7571 (list!13098 (seqFromList!3651 tokens!494)) lambda!119051) e!2056638)))

(declare-fun b!3306976 () Bool)

(declare-fun e!2056639 () Bool)

(assert (=> b!3306976 (= e!2056638 e!2056639)))

(declare-fun res!1341186 () Bool)

(assert (=> b!3306976 (=> (not res!1341186) (not e!2056639))))

(assert (=> b!3306976 (= res!1341186 (dynLambda!14974 lambda!119051 (h!41933 (list!13098 (seqFromList!3651 tokens!494)))))))

(declare-fun b!3306977 () Bool)

(assert (=> b!3306977 (= e!2056639 (forall!7571 (t!253630 (list!13098 (seqFromList!3651 tokens!494))) lambda!119051))))

(assert (= (and d!926470 (not res!1341185)) b!3306976))

(assert (= (and b!3306976 res!1341186) b!3306977))

(declare-fun b_lambda!92415 () Bool)

(assert (=> (not b_lambda!92415) (not b!3306976)))

(declare-fun m!3633837 () Bool)

(assert (=> b!3306976 m!3633837))

(declare-fun m!3633839 () Bool)

(assert (=> b!3306977 m!3633839))

(assert (=> d!926036 d!926470))

(assert (=> d!926036 d!926132))

(declare-fun d!926472 () Bool)

(declare-fun lt!1121036 () Bool)

(assert (=> d!926472 (= lt!1121036 (forall!7571 (list!13098 (seqFromList!3651 tokens!494)) lambda!119051))))

(declare-fun forall!7577 (Conc!10972 Int) Bool)

(assert (=> d!926472 (= lt!1121036 (forall!7577 (c!560836 (seqFromList!3651 tokens!494)) lambda!119051))))

(assert (=> d!926472 (= (forall!7573 (seqFromList!3651 tokens!494) lambda!119051) lt!1121036)))

(declare-fun bs!549195 () Bool)

(assert (= bs!549195 d!926472))

(assert (=> bs!549195 m!3632229))

(assert (=> bs!549195 m!3632659))

(assert (=> bs!549195 m!3632659))

(assert (=> bs!549195 m!3632661))

(declare-fun m!3633841 () Bool)

(assert (=> bs!549195 m!3633841))

(assert (=> d!926036 d!926472))

(assert (=> d!926036 d!926012))

(declare-fun e!2056640 () Bool)

(assert (=> b!3306346 (= tp!1035348 e!2056640)))

(declare-fun b!3306979 () Bool)

(declare-fun tp!1035468 () Bool)

(declare-fun tp!1035469 () Bool)

(assert (=> b!3306979 (= e!2056640 (and tp!1035468 tp!1035469))))

(declare-fun b!3306981 () Bool)

(declare-fun tp!1035471 () Bool)

(declare-fun tp!1035472 () Bool)

(assert (=> b!3306981 (= e!2056640 (and tp!1035471 tp!1035472))))

(declare-fun b!3306980 () Bool)

(declare-fun tp!1035470 () Bool)

(assert (=> b!3306980 (= e!2056640 tp!1035470)))

(declare-fun b!3306978 () Bool)

(assert (=> b!3306978 (= e!2056640 tp_is_empty!17373)))

(assert (= (and b!3306346 ((_ is ElementMatch!10057) (regex!5298 (h!41932 (t!253629 rules!2135))))) b!3306978))

(assert (= (and b!3306346 ((_ is Concat!15585) (regex!5298 (h!41932 (t!253629 rules!2135))))) b!3306979))

(assert (= (and b!3306346 ((_ is Star!10057) (regex!5298 (h!41932 (t!253629 rules!2135))))) b!3306980))

(assert (= (and b!3306346 ((_ is Union!10057) (regex!5298 (h!41932 (t!253629 rules!2135))))) b!3306981))

(declare-fun b!3306982 () Bool)

(declare-fun e!2056641 () Bool)

(declare-fun tp!1035473 () Bool)

(assert (=> b!3306982 (= e!2056641 (and tp_is_empty!17373 tp!1035473))))

(assert (=> b!3306348 (= tp!1035352 e!2056641)))

(assert (= (and b!3306348 ((_ is Cons!36511) (t!253628 (originalCharacters!6012 (h!41933 tokens!494))))) b!3306982))

(declare-fun e!2056642 () Bool)

(assert (=> b!3306330 (= tp!1035334 e!2056642)))

(declare-fun b!3306984 () Bool)

(declare-fun tp!1035474 () Bool)

(declare-fun tp!1035475 () Bool)

(assert (=> b!3306984 (= e!2056642 (and tp!1035474 tp!1035475))))

(declare-fun b!3306986 () Bool)

(declare-fun tp!1035477 () Bool)

(declare-fun tp!1035478 () Bool)

(assert (=> b!3306986 (= e!2056642 (and tp!1035477 tp!1035478))))

(declare-fun b!3306985 () Bool)

(declare-fun tp!1035476 () Bool)

(assert (=> b!3306985 (= e!2056642 tp!1035476)))

(declare-fun b!3306983 () Bool)

(assert (=> b!3306983 (= e!2056642 tp_is_empty!17373)))

(assert (= (and b!3306330 ((_ is ElementMatch!10057) (regex!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) b!3306983))

(assert (= (and b!3306330 ((_ is Concat!15585) (regex!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) b!3306984))

(assert (= (and b!3306330 ((_ is Star!10057) (regex!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) b!3306985))

(assert (= (and b!3306330 ((_ is Union!10057) (regex!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) b!3306986))

(declare-fun e!2056643 () Bool)

(assert (=> b!3306311 (= tp!1035312 e!2056643)))

(declare-fun b!3306988 () Bool)

(declare-fun tp!1035479 () Bool)

(declare-fun tp!1035480 () Bool)

(assert (=> b!3306988 (= e!2056643 (and tp!1035479 tp!1035480))))

(declare-fun b!3306990 () Bool)

(declare-fun tp!1035482 () Bool)

(declare-fun tp!1035483 () Bool)

(assert (=> b!3306990 (= e!2056643 (and tp!1035482 tp!1035483))))

(declare-fun b!3306989 () Bool)

(declare-fun tp!1035481 () Bool)

(assert (=> b!3306989 (= e!2056643 tp!1035481)))

(declare-fun b!3306987 () Bool)

(assert (=> b!3306987 (= e!2056643 tp_is_empty!17373)))

(assert (= (and b!3306311 ((_ is ElementMatch!10057) (regOne!20626 (regex!5298 (h!41932 rules!2135))))) b!3306987))

(assert (= (and b!3306311 ((_ is Concat!15585) (regOne!20626 (regex!5298 (h!41932 rules!2135))))) b!3306988))

(assert (= (and b!3306311 ((_ is Star!10057) (regOne!20626 (regex!5298 (h!41932 rules!2135))))) b!3306989))

(assert (= (and b!3306311 ((_ is Union!10057) (regOne!20626 (regex!5298 (h!41932 rules!2135))))) b!3306990))

(declare-fun e!2056644 () Bool)

(assert (=> b!3306311 (= tp!1035313 e!2056644)))

(declare-fun b!3306992 () Bool)

(declare-fun tp!1035484 () Bool)

(declare-fun tp!1035485 () Bool)

(assert (=> b!3306992 (= e!2056644 (and tp!1035484 tp!1035485))))

(declare-fun b!3306994 () Bool)

(declare-fun tp!1035487 () Bool)

(declare-fun tp!1035488 () Bool)

(assert (=> b!3306994 (= e!2056644 (and tp!1035487 tp!1035488))))

(declare-fun b!3306993 () Bool)

(declare-fun tp!1035486 () Bool)

(assert (=> b!3306993 (= e!2056644 tp!1035486)))

(declare-fun b!3306991 () Bool)

(assert (=> b!3306991 (= e!2056644 tp_is_empty!17373)))

(assert (= (and b!3306311 ((_ is ElementMatch!10057) (regTwo!20626 (regex!5298 (h!41932 rules!2135))))) b!3306991))

(assert (= (and b!3306311 ((_ is Concat!15585) (regTwo!20626 (regex!5298 (h!41932 rules!2135))))) b!3306992))

(assert (= (and b!3306311 ((_ is Star!10057) (regTwo!20626 (regex!5298 (h!41932 rules!2135))))) b!3306993))

(assert (= (and b!3306311 ((_ is Union!10057) (regTwo!20626 (regex!5298 (h!41932 rules!2135))))) b!3306994))

(declare-fun e!2056645 () Bool)

(assert (=> b!3306316 (= tp!1035319 e!2056645)))

(declare-fun b!3306996 () Bool)

(declare-fun tp!1035489 () Bool)

(declare-fun tp!1035490 () Bool)

(assert (=> b!3306996 (= e!2056645 (and tp!1035489 tp!1035490))))

(declare-fun b!3306998 () Bool)

(declare-fun tp!1035492 () Bool)

(declare-fun tp!1035493 () Bool)

(assert (=> b!3306998 (= e!2056645 (and tp!1035492 tp!1035493))))

(declare-fun b!3306997 () Bool)

(declare-fun tp!1035491 () Bool)

(assert (=> b!3306997 (= e!2056645 tp!1035491)))

(declare-fun b!3306995 () Bool)

(assert (=> b!3306995 (= e!2056645 tp_is_empty!17373)))

(assert (= (and b!3306316 ((_ is ElementMatch!10057) (reg!10386 (regex!5298 (rule!7802 separatorToken!241))))) b!3306995))

(assert (= (and b!3306316 ((_ is Concat!15585) (reg!10386 (regex!5298 (rule!7802 separatorToken!241))))) b!3306996))

(assert (= (and b!3306316 ((_ is Star!10057) (reg!10386 (regex!5298 (rule!7802 separatorToken!241))))) b!3306997))

(assert (= (and b!3306316 ((_ is Union!10057) (reg!10386 (regex!5298 (rule!7802 separatorToken!241))))) b!3306998))

(declare-fun e!2056646 () Bool)

(assert (=> b!3306315 (= tp!1035317 e!2056646)))

(declare-fun b!3307000 () Bool)

(declare-fun tp!1035494 () Bool)

(declare-fun tp!1035495 () Bool)

(assert (=> b!3307000 (= e!2056646 (and tp!1035494 tp!1035495))))

(declare-fun b!3307002 () Bool)

(declare-fun tp!1035497 () Bool)

(declare-fun tp!1035498 () Bool)

(assert (=> b!3307002 (= e!2056646 (and tp!1035497 tp!1035498))))

(declare-fun b!3307001 () Bool)

(declare-fun tp!1035496 () Bool)

(assert (=> b!3307001 (= e!2056646 tp!1035496)))

(declare-fun b!3306999 () Bool)

(assert (=> b!3306999 (= e!2056646 tp_is_empty!17373)))

(assert (= (and b!3306315 ((_ is ElementMatch!10057) (regOne!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3306999))

(assert (= (and b!3306315 ((_ is Concat!15585) (regOne!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307000))

(assert (= (and b!3306315 ((_ is Star!10057) (regOne!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307001))

(assert (= (and b!3306315 ((_ is Union!10057) (regOne!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307002))

(declare-fun e!2056647 () Bool)

(assert (=> b!3306315 (= tp!1035318 e!2056647)))

(declare-fun b!3307004 () Bool)

(declare-fun tp!1035499 () Bool)

(declare-fun tp!1035500 () Bool)

(assert (=> b!3307004 (= e!2056647 (and tp!1035499 tp!1035500))))

(declare-fun b!3307006 () Bool)

(declare-fun tp!1035502 () Bool)

(declare-fun tp!1035503 () Bool)

(assert (=> b!3307006 (= e!2056647 (and tp!1035502 tp!1035503))))

(declare-fun b!3307005 () Bool)

(declare-fun tp!1035501 () Bool)

(assert (=> b!3307005 (= e!2056647 tp!1035501)))

(declare-fun b!3307003 () Bool)

(assert (=> b!3307003 (= e!2056647 tp_is_empty!17373)))

(assert (= (and b!3306315 ((_ is ElementMatch!10057) (regTwo!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307003))

(assert (= (and b!3306315 ((_ is Concat!15585) (regTwo!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307004))

(assert (= (and b!3306315 ((_ is Star!10057) (regTwo!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307005))

(assert (= (and b!3306315 ((_ is Union!10057) (regTwo!20626 (regex!5298 (rule!7802 separatorToken!241))))) b!3307006))

(declare-fun b!3307010 () Bool)

(declare-fun b_free!86949 () Bool)

(declare-fun b_next!87653 () Bool)

(assert (=> b!3307010 (= b_free!86949 (not b_next!87653))))

(declare-fun tp!1035507 () Bool)

(declare-fun b_and!226723 () Bool)

(assert (=> b!3307010 (= tp!1035507 b_and!226723)))

(declare-fun b_free!86951 () Bool)

(declare-fun b_next!87655 () Bool)

(assert (=> b!3307010 (= b_free!86951 (not b_next!87655))))

(declare-fun t!253778 () Bool)

(declare-fun tb!171715 () Bool)

(assert (=> (and b!3307010 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253778) tb!171715))

(declare-fun result!214562 () Bool)

(assert (= result!214562 result!214520))

(assert (=> d!926358 t!253778))

(declare-fun tb!171717 () Bool)

(declare-fun t!253780 () Bool)

(assert (=> (and b!3307010 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253780) tb!171717))

(declare-fun result!214564 () Bool)

(assert (= result!214564 result!214552))

(assert (=> d!926396 t!253780))

(declare-fun t!253782 () Bool)

(declare-fun tb!171719 () Bool)

(assert (=> (and b!3307010 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253782) tb!171719))

(declare-fun result!214566 () Bool)

(assert (= result!214566 result!214420))

(assert (=> b!3306034 t!253782))

(declare-fun t!253784 () Bool)

(declare-fun tb!171721 () Bool)

(assert (=> (and b!3307010 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253784) tb!171721))

(declare-fun result!214568 () Bool)

(assert (= result!214568 result!214436))

(assert (=> b!3306131 t!253784))

(assert (=> d!926022 t!253782))

(declare-fun t!253786 () Bool)

(declare-fun tb!171723 () Bool)

(assert (=> (and b!3307010 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253786) tb!171723))

(declare-fun result!214570 () Bool)

(assert (= result!214570 result!214480))

(assert (=> b!3306456 t!253786))

(declare-fun tp!1035508 () Bool)

(declare-fun b_and!226725 () Bool)

(assert (=> b!3307010 (= tp!1035508 (and (=> t!253778 result!214562) (=> t!253782 result!214566) (=> t!253780 result!214564) (=> t!253784 result!214568) (=> t!253786 result!214570) b_and!226725))))

(declare-fun e!2056648 () Bool)

(assert (=> b!3307010 (= e!2056648 (and tp!1035507 tp!1035508))))

(declare-fun e!2056653 () Bool)

(assert (=> b!3306328 (= tp!1035332 e!2056653)))

(declare-fun e!2056652 () Bool)

(declare-fun b!3307009 () Bool)

(declare-fun tp!1035506 () Bool)

(assert (=> b!3307009 (= e!2056652 (and tp!1035506 (inv!49476 (tag!5844 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (inv!49479 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) e!2056648))))

(declare-fun e!2056649 () Bool)

(declare-fun tp!1035505 () Bool)

(declare-fun b!3307008 () Bool)

(assert (=> b!3307008 (= e!2056649 (and (inv!21 (value!171453 (h!41933 (t!253630 (t!253630 tokens!494))))) e!2056652 tp!1035505))))

(declare-fun tp!1035504 () Bool)

(declare-fun b!3307007 () Bool)

(assert (=> b!3307007 (= e!2056653 (and (inv!49480 (h!41933 (t!253630 (t!253630 tokens!494)))) e!2056649 tp!1035504))))

(assert (= b!3307009 b!3307010))

(assert (= b!3307008 b!3307009))

(assert (= b!3307007 b!3307008))

(assert (= (and b!3306328 ((_ is Cons!36513) (t!253630 (t!253630 tokens!494)))) b!3307007))

(declare-fun m!3633843 () Bool)

(assert (=> b!3307009 m!3633843))

(declare-fun m!3633845 () Bool)

(assert (=> b!3307009 m!3633845))

(declare-fun m!3633847 () Bool)

(assert (=> b!3307008 m!3633847))

(declare-fun m!3633849 () Bool)

(assert (=> b!3307007 m!3633849))

(declare-fun b!3307013 () Bool)

(declare-fun e!2056656 () Bool)

(assert (=> b!3307013 (= e!2056656 true)))

(declare-fun b!3307012 () Bool)

(declare-fun e!2056655 () Bool)

(assert (=> b!3307012 (= e!2056655 e!2056656)))

(declare-fun b!3307011 () Bool)

(declare-fun e!2056654 () Bool)

(assert (=> b!3307011 (= e!2056654 e!2056655)))

(assert (=> b!3306286 e!2056654))

(assert (= b!3307012 b!3307013))

(assert (= b!3307011 b!3307012))

(assert (= (and b!3306286 ((_ is Cons!36512) (t!253629 rules!2135))) b!3307011))

(assert (=> b!3307013 (< (dynLambda!14975 order!18973 (toValue!7438 (transformation!5298 (h!41932 (t!253629 rules!2135))))) (dynLambda!14976 order!18975 lambda!119051))))

(assert (=> b!3307013 (< (dynLambda!14977 order!18977 (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135))))) (dynLambda!14976 order!18975 lambda!119051))))

(declare-fun tp!1035516 () Bool)

(declare-fun tp!1035515 () Bool)

(declare-fun e!2056661 () Bool)

(declare-fun b!3307022 () Bool)

(assert (=> b!3307022 (= e!2056661 (and (inv!49483 (left!28438 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))) tp!1035515 (inv!49483 (right!28768 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))) tp!1035516))))

(declare-fun b!3307024 () Bool)

(declare-fun e!2056662 () Bool)

(declare-fun tp!1035517 () Bool)

(assert (=> b!3307024 (= e!2056662 tp!1035517)))

(declare-fun b!3307023 () Bool)

(declare-fun inv!49490 (IArray!21947) Bool)

(assert (=> b!3307023 (= e!2056661 (and (inv!49490 (xs!14109 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))) e!2056662))))

(assert (=> b!3306040 (= tp!1035235 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494))))) e!2056661))))

(assert (= (and b!3306040 ((_ is Node!10971) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))) b!3307022))

(assert (= b!3307023 b!3307024))

(assert (= (and b!3306040 ((_ is Leaf!17231) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (value!171453 (h!41933 tokens!494)))))) b!3307023))

(declare-fun m!3633851 () Bool)

(assert (=> b!3307022 m!3633851))

(declare-fun m!3633853 () Bool)

(assert (=> b!3307022 m!3633853))

(declare-fun m!3633855 () Bool)

(assert (=> b!3307023 m!3633855))

(assert (=> b!3306040 m!3632315))

(declare-fun b!3307027 () Bool)

(declare-fun b_free!86953 () Bool)

(declare-fun b_next!87657 () Bool)

(assert (=> b!3307027 (= b_free!86953 (not b_next!87657))))

(declare-fun tp!1035519 () Bool)

(declare-fun b_and!226727 () Bool)

(assert (=> b!3307027 (= tp!1035519 b_and!226727)))

(declare-fun b_free!86955 () Bool)

(declare-fun b_next!87659 () Bool)

(assert (=> b!3307027 (= b_free!86955 (not b_next!87659))))

(declare-fun t!253788 () Bool)

(declare-fun tb!171725 () Bool)

(assert (=> (and b!3307027 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (Cons!36513 (h!41933 tokens!494) Nil!36513)))))) t!253788) tb!171725))

(declare-fun result!214574 () Bool)

(assert (= result!214574 result!214520))

(assert (=> d!926358 t!253788))

(declare-fun t!253790 () Bool)

(declare-fun tb!171727 () Bool)

(assert (=> (and b!3307027 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 (apply!8391 lt!1120524 0))))) t!253790) tb!171727))

(declare-fun result!214576 () Bool)

(assert (= result!214576 result!214552))

(assert (=> d!926396 t!253790))

(declare-fun tb!171729 () Bool)

(declare-fun t!253792 () Bool)

(assert (=> (and b!3307027 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494))))) t!253792) tb!171729))

(declare-fun result!214578 () Bool)

(assert (= result!214578 result!214420))

(assert (=> b!3306034 t!253792))

(declare-fun tb!171731 () Bool)

(declare-fun t!253794 () Bool)

(assert (=> (and b!3307027 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241)))) t!253794) tb!171731))

(declare-fun result!214580 () Bool)

(assert (= result!214580 result!214436))

(assert (=> b!3306131 t!253794))

(assert (=> d!926022 t!253792))

(declare-fun t!253796 () Bool)

(declare-fun tb!171733 () Bool)

(assert (=> (and b!3307027 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494)))))) t!253796) tb!171733))

(declare-fun result!214582 () Bool)

(assert (= result!214582 result!214480))

(assert (=> b!3306456 t!253796))

(declare-fun b_and!226729 () Bool)

(declare-fun tp!1035521 () Bool)

(assert (=> b!3307027 (= tp!1035521 (and (=> t!253790 result!214576) (=> t!253788 result!214574) (=> t!253794 result!214580) (=> t!253796 result!214582) (=> t!253792 result!214578) b_and!226729))))

(declare-fun e!2056666 () Bool)

(assert (=> b!3307027 (= e!2056666 (and tp!1035519 tp!1035521))))

(declare-fun b!3307026 () Bool)

(declare-fun e!2056663 () Bool)

(declare-fun tp!1035518 () Bool)

(assert (=> b!3307026 (= e!2056663 (and tp!1035518 (inv!49476 (tag!5844 (h!41932 (t!253629 (t!253629 rules!2135))))) (inv!49479 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) e!2056666))))

(declare-fun b!3307025 () Bool)

(declare-fun e!2056664 () Bool)

(declare-fun tp!1035520 () Bool)

(assert (=> b!3307025 (= e!2056664 (and e!2056663 tp!1035520))))

(assert (=> b!3306345 (= tp!1035350 e!2056664)))

(assert (= b!3307026 b!3307027))

(assert (= b!3307025 b!3307026))

(assert (= (and b!3306345 ((_ is Cons!36512) (t!253629 (t!253629 rules!2135)))) b!3307025))

(declare-fun m!3633857 () Bool)

(assert (=> b!3307026 m!3633857))

(declare-fun m!3633859 () Bool)

(assert (=> b!3307026 m!3633859))

(declare-fun b!3307028 () Bool)

(declare-fun e!2056667 () Bool)

(declare-fun tp!1035522 () Bool)

(assert (=> b!3307028 (= e!2056667 (and tp_is_empty!17373 tp!1035522))))

(assert (=> b!3306329 (= tp!1035333 e!2056667)))

(assert (= (and b!3306329 ((_ is Cons!36511) (originalCharacters!6012 (h!41933 (t!253630 tokens!494))))) b!3307028))

(declare-fun tp!1035523 () Bool)

(declare-fun b!3307029 () Bool)

(declare-fun e!2056668 () Bool)

(declare-fun tp!1035524 () Bool)

(assert (=> b!3307029 (= e!2056668 (and (inv!49483 (left!28438 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))) tp!1035523 (inv!49483 (right!28768 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))) tp!1035524))))

(declare-fun b!3307031 () Bool)

(declare-fun e!2056669 () Bool)

(declare-fun tp!1035525 () Bool)

(assert (=> b!3307031 (= e!2056669 tp!1035525)))

(declare-fun b!3307030 () Bool)

(assert (=> b!3307030 (= e!2056668 (and (inv!49490 (xs!14109 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))) e!2056669))))

(assert (=> b!3306133 (= tp!1035239 (and (inv!49483 (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241)))) e!2056668))))

(assert (= (and b!3306133 ((_ is Node!10971) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))) b!3307029))

(assert (= b!3307030 b!3307031))

(assert (= (and b!3306133 ((_ is Leaf!17231) (c!560835 (dynLambda!14973 (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (value!171453 separatorToken!241))))) b!3307030))

(declare-fun m!3633861 () Bool)

(assert (=> b!3307029 m!3633861))

(declare-fun m!3633863 () Bool)

(assert (=> b!3307029 m!3633863))

(declare-fun m!3633865 () Bool)

(assert (=> b!3307030 m!3633865))

(assert (=> b!3306133 m!3632455))

(declare-fun b!3307032 () Bool)

(declare-fun e!2056670 () Bool)

(declare-fun tp!1035526 () Bool)

(assert (=> b!3307032 (= e!2056670 (and tp_is_empty!17373 tp!1035526))))

(assert (=> b!3306336 (= tp!1035339 e!2056670)))

(assert (= (and b!3306336 ((_ is Cons!36511) (t!253628 (originalCharacters!6012 separatorToken!241)))) b!3307032))

(declare-fun e!2056671 () Bool)

(assert (=> b!3306317 (= tp!1035320 e!2056671)))

(declare-fun b!3307034 () Bool)

(declare-fun tp!1035527 () Bool)

(declare-fun tp!1035528 () Bool)

(assert (=> b!3307034 (= e!2056671 (and tp!1035527 tp!1035528))))

(declare-fun b!3307036 () Bool)

(declare-fun tp!1035530 () Bool)

(declare-fun tp!1035531 () Bool)

(assert (=> b!3307036 (= e!2056671 (and tp!1035530 tp!1035531))))

(declare-fun b!3307035 () Bool)

(declare-fun tp!1035529 () Bool)

(assert (=> b!3307035 (= e!2056671 tp!1035529)))

(declare-fun b!3307033 () Bool)

(assert (=> b!3307033 (= e!2056671 tp_is_empty!17373)))

(assert (= (and b!3306317 ((_ is ElementMatch!10057) (regOne!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307033))

(assert (= (and b!3306317 ((_ is Concat!15585) (regOne!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307034))

(assert (= (and b!3306317 ((_ is Star!10057) (regOne!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307035))

(assert (= (and b!3306317 ((_ is Union!10057) (regOne!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307036))

(declare-fun e!2056672 () Bool)

(assert (=> b!3306317 (= tp!1035321 e!2056672)))

(declare-fun b!3307038 () Bool)

(declare-fun tp!1035532 () Bool)

(declare-fun tp!1035533 () Bool)

(assert (=> b!3307038 (= e!2056672 (and tp!1035532 tp!1035533))))

(declare-fun b!3307040 () Bool)

(declare-fun tp!1035535 () Bool)

(declare-fun tp!1035536 () Bool)

(assert (=> b!3307040 (= e!2056672 (and tp!1035535 tp!1035536))))

(declare-fun b!3307039 () Bool)

(declare-fun tp!1035534 () Bool)

(assert (=> b!3307039 (= e!2056672 tp!1035534)))

(declare-fun b!3307037 () Bool)

(assert (=> b!3307037 (= e!2056672 tp_is_empty!17373)))

(assert (= (and b!3306317 ((_ is ElementMatch!10057) (regTwo!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307037))

(assert (= (and b!3306317 ((_ is Concat!15585) (regTwo!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307038))

(assert (= (and b!3306317 ((_ is Star!10057) (regTwo!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307039))

(assert (= (and b!3306317 ((_ is Union!10057) (regTwo!20627 (regex!5298 (rule!7802 separatorToken!241))))) b!3307040))

(declare-fun e!2056673 () Bool)

(assert (=> b!3306308 (= tp!1035309 e!2056673)))

(declare-fun b!3307042 () Bool)

(declare-fun tp!1035537 () Bool)

(declare-fun tp!1035538 () Bool)

(assert (=> b!3307042 (= e!2056673 (and tp!1035537 tp!1035538))))

(declare-fun b!3307044 () Bool)

(declare-fun tp!1035540 () Bool)

(declare-fun tp!1035541 () Bool)

(assert (=> b!3307044 (= e!2056673 (and tp!1035540 tp!1035541))))

(declare-fun b!3307043 () Bool)

(declare-fun tp!1035539 () Bool)

(assert (=> b!3307043 (= e!2056673 tp!1035539)))

(declare-fun b!3307041 () Bool)

(assert (=> b!3307041 (= e!2056673 tp_is_empty!17373)))

(assert (= (and b!3306308 ((_ is ElementMatch!10057) (reg!10386 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307041))

(assert (= (and b!3306308 ((_ is Concat!15585) (reg!10386 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307042))

(assert (= (and b!3306308 ((_ is Star!10057) (reg!10386 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307043))

(assert (= (and b!3306308 ((_ is Union!10057) (reg!10386 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307044))

(declare-fun e!2056674 () Bool)

(assert (=> b!3306307 (= tp!1035307 e!2056674)))

(declare-fun b!3307046 () Bool)

(declare-fun tp!1035542 () Bool)

(declare-fun tp!1035543 () Bool)

(assert (=> b!3307046 (= e!2056674 (and tp!1035542 tp!1035543))))

(declare-fun b!3307048 () Bool)

(declare-fun tp!1035545 () Bool)

(declare-fun tp!1035546 () Bool)

(assert (=> b!3307048 (= e!2056674 (and tp!1035545 tp!1035546))))

(declare-fun b!3307047 () Bool)

(declare-fun tp!1035544 () Bool)

(assert (=> b!3307047 (= e!2056674 tp!1035544)))

(declare-fun b!3307045 () Bool)

(assert (=> b!3307045 (= e!2056674 tp_is_empty!17373)))

(assert (= (and b!3306307 ((_ is ElementMatch!10057) (regOne!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307045))

(assert (= (and b!3306307 ((_ is Concat!15585) (regOne!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307046))

(assert (= (and b!3306307 ((_ is Star!10057) (regOne!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307047))

(assert (= (and b!3306307 ((_ is Union!10057) (regOne!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307048))

(declare-fun e!2056675 () Bool)

(assert (=> b!3306307 (= tp!1035308 e!2056675)))

(declare-fun b!3307050 () Bool)

(declare-fun tp!1035547 () Bool)

(declare-fun tp!1035548 () Bool)

(assert (=> b!3307050 (= e!2056675 (and tp!1035547 tp!1035548))))

(declare-fun b!3307052 () Bool)

(declare-fun tp!1035550 () Bool)

(declare-fun tp!1035551 () Bool)

(assert (=> b!3307052 (= e!2056675 (and tp!1035550 tp!1035551))))

(declare-fun b!3307051 () Bool)

(declare-fun tp!1035549 () Bool)

(assert (=> b!3307051 (= e!2056675 tp!1035549)))

(declare-fun b!3307049 () Bool)

(assert (=> b!3307049 (= e!2056675 tp_is_empty!17373)))

(assert (= (and b!3306307 ((_ is ElementMatch!10057) (regTwo!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307049))

(assert (= (and b!3306307 ((_ is Concat!15585) (regTwo!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307050))

(assert (= (and b!3306307 ((_ is Star!10057) (regTwo!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307051))

(assert (= (and b!3306307 ((_ is Union!10057) (regTwo!20626 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307052))

(declare-fun e!2056676 () Bool)

(assert (=> b!3306312 (= tp!1035314 e!2056676)))

(declare-fun b!3307054 () Bool)

(declare-fun tp!1035552 () Bool)

(declare-fun tp!1035553 () Bool)

(assert (=> b!3307054 (= e!2056676 (and tp!1035552 tp!1035553))))

(declare-fun b!3307056 () Bool)

(declare-fun tp!1035555 () Bool)

(declare-fun tp!1035556 () Bool)

(assert (=> b!3307056 (= e!2056676 (and tp!1035555 tp!1035556))))

(declare-fun b!3307055 () Bool)

(declare-fun tp!1035554 () Bool)

(assert (=> b!3307055 (= e!2056676 tp!1035554)))

(declare-fun b!3307053 () Bool)

(assert (=> b!3307053 (= e!2056676 tp_is_empty!17373)))

(assert (= (and b!3306312 ((_ is ElementMatch!10057) (reg!10386 (regex!5298 (h!41932 rules!2135))))) b!3307053))

(assert (= (and b!3306312 ((_ is Concat!15585) (reg!10386 (regex!5298 (h!41932 rules!2135))))) b!3307054))

(assert (= (and b!3306312 ((_ is Star!10057) (reg!10386 (regex!5298 (h!41932 rules!2135))))) b!3307055))

(assert (= (and b!3306312 ((_ is Union!10057) (reg!10386 (regex!5298 (h!41932 rules!2135))))) b!3307056))

(declare-fun e!2056677 () Bool)

(assert (=> b!3306309 (= tp!1035310 e!2056677)))

(declare-fun b!3307058 () Bool)

(declare-fun tp!1035557 () Bool)

(declare-fun tp!1035558 () Bool)

(assert (=> b!3307058 (= e!2056677 (and tp!1035557 tp!1035558))))

(declare-fun b!3307060 () Bool)

(declare-fun tp!1035560 () Bool)

(declare-fun tp!1035561 () Bool)

(assert (=> b!3307060 (= e!2056677 (and tp!1035560 tp!1035561))))

(declare-fun b!3307059 () Bool)

(declare-fun tp!1035559 () Bool)

(assert (=> b!3307059 (= e!2056677 tp!1035559)))

(declare-fun b!3307057 () Bool)

(assert (=> b!3307057 (= e!2056677 tp_is_empty!17373)))

(assert (= (and b!3306309 ((_ is ElementMatch!10057) (regOne!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307057))

(assert (= (and b!3306309 ((_ is Concat!15585) (regOne!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307058))

(assert (= (and b!3306309 ((_ is Star!10057) (regOne!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307059))

(assert (= (and b!3306309 ((_ is Union!10057) (regOne!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307060))

(declare-fun e!2056678 () Bool)

(assert (=> b!3306309 (= tp!1035311 e!2056678)))

(declare-fun b!3307062 () Bool)

(declare-fun tp!1035562 () Bool)

(declare-fun tp!1035563 () Bool)

(assert (=> b!3307062 (= e!2056678 (and tp!1035562 tp!1035563))))

(declare-fun b!3307064 () Bool)

(declare-fun tp!1035565 () Bool)

(declare-fun tp!1035566 () Bool)

(assert (=> b!3307064 (= e!2056678 (and tp!1035565 tp!1035566))))

(declare-fun b!3307063 () Bool)

(declare-fun tp!1035564 () Bool)

(assert (=> b!3307063 (= e!2056678 tp!1035564)))

(declare-fun b!3307061 () Bool)

(assert (=> b!3307061 (= e!2056678 tp_is_empty!17373)))

(assert (= (and b!3306309 ((_ is ElementMatch!10057) (regTwo!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307061))

(assert (= (and b!3306309 ((_ is Concat!15585) (regTwo!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307062))

(assert (= (and b!3306309 ((_ is Star!10057) (regTwo!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307063))

(assert (= (and b!3306309 ((_ is Union!10057) (regTwo!20627 (regex!5298 (rule!7802 (h!41933 tokens!494)))))) b!3307064))

(declare-fun e!2056679 () Bool)

(assert (=> b!3306313 (= tp!1035315 e!2056679)))

(declare-fun b!3307066 () Bool)

(declare-fun tp!1035567 () Bool)

(declare-fun tp!1035568 () Bool)

(assert (=> b!3307066 (= e!2056679 (and tp!1035567 tp!1035568))))

(declare-fun b!3307068 () Bool)

(declare-fun tp!1035570 () Bool)

(declare-fun tp!1035571 () Bool)

(assert (=> b!3307068 (= e!2056679 (and tp!1035570 tp!1035571))))

(declare-fun b!3307067 () Bool)

(declare-fun tp!1035569 () Bool)

(assert (=> b!3307067 (= e!2056679 tp!1035569)))

(declare-fun b!3307065 () Bool)

(assert (=> b!3307065 (= e!2056679 tp_is_empty!17373)))

(assert (= (and b!3306313 ((_ is ElementMatch!10057) (regOne!20627 (regex!5298 (h!41932 rules!2135))))) b!3307065))

(assert (= (and b!3306313 ((_ is Concat!15585) (regOne!20627 (regex!5298 (h!41932 rules!2135))))) b!3307066))

(assert (= (and b!3306313 ((_ is Star!10057) (regOne!20627 (regex!5298 (h!41932 rules!2135))))) b!3307067))

(assert (= (and b!3306313 ((_ is Union!10057) (regOne!20627 (regex!5298 (h!41932 rules!2135))))) b!3307068))

(declare-fun e!2056680 () Bool)

(assert (=> b!3306313 (= tp!1035316 e!2056680)))

(declare-fun b!3307070 () Bool)

(declare-fun tp!1035572 () Bool)

(declare-fun tp!1035573 () Bool)

(assert (=> b!3307070 (= e!2056680 (and tp!1035572 tp!1035573))))

(declare-fun b!3307072 () Bool)

(declare-fun tp!1035575 () Bool)

(declare-fun tp!1035576 () Bool)

(assert (=> b!3307072 (= e!2056680 (and tp!1035575 tp!1035576))))

(declare-fun b!3307071 () Bool)

(declare-fun tp!1035574 () Bool)

(assert (=> b!3307071 (= e!2056680 tp!1035574)))

(declare-fun b!3307069 () Bool)

(assert (=> b!3307069 (= e!2056680 tp_is_empty!17373)))

(assert (= (and b!3306313 ((_ is ElementMatch!10057) (regTwo!20627 (regex!5298 (h!41932 rules!2135))))) b!3307069))

(assert (= (and b!3306313 ((_ is Concat!15585) (regTwo!20627 (regex!5298 (h!41932 rules!2135))))) b!3307070))

(assert (= (and b!3306313 ((_ is Star!10057) (regTwo!20627 (regex!5298 (h!41932 rules!2135))))) b!3307071))

(assert (= (and b!3306313 ((_ is Union!10057) (regTwo!20627 (regex!5298 (h!41932 rules!2135))))) b!3307072))

(declare-fun b_lambda!92417 () Bool)

(assert (= b_lambda!92397 (or b!3305997 b_lambda!92417)))

(declare-fun bs!549196 () Bool)

(declare-fun d!926474 () Bool)

(assert (= bs!549196 (and d!926474 b!3305997)))

(assert (=> bs!549196 (= (dynLambda!14974 lambda!119041 (h!41933 (t!253630 tokens!494))) (not (isSeparator!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))))

(assert (=> b!3306484 d!926474))

(declare-fun b_lambda!92419 () Bool)

(assert (= b_lambda!92395 (or (and b!3307010 b_free!86951 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 (t!253630 tokens!494)))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) (and b!3306347 b_free!86939 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 rules!2135)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) (and b!3305993 b_free!86919 (= (toChars!7297 (transformation!5298 (rule!7802 (h!41933 tokens!494)))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) (and b!3306331 b_free!86935) (and b!3307027 b_free!86955 (= (toChars!7297 (transformation!5298 (h!41932 (t!253629 (t!253629 rules!2135))))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) (and b!3305994 b_free!86923 (= (toChars!7297 (transformation!5298 (rule!7802 separatorToken!241))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) (and b!3306006 b_free!86915 (= (toChars!7297 (transformation!5298 (h!41932 rules!2135))) (toChars!7297 (transformation!5298 (rule!7802 (h!41933 (t!253630 tokens!494))))))) b_lambda!92419)))

(declare-fun b_lambda!92421 () Bool)

(assert (= b_lambda!92415 (or d!926036 b_lambda!92421)))

(declare-fun bs!549197 () Bool)

(declare-fun d!926476 () Bool)

(assert (= bs!549197 (and d!926476 d!926036)))

(assert (=> bs!549197 (= (dynLambda!14974 lambda!119051 (h!41933 (list!13098 (seqFromList!3651 tokens!494)))) (rulesProduceIndividualToken!2379 thiss!18206 rules!2135 (h!41933 (list!13098 (seqFromList!3651 tokens!494)))))))

(assert (=> bs!549197 m!3632893))

(assert (=> b!3306976 d!926476))

(check-sat (not b!3306990) (not b!3307035) (not d!926408) (not b!3307042) (not b!3306456) b_and!226721 (not b!3306483) (not d!926404) (not b!3306902) (not b!3306982) (not b!3306994) (not b!3307046) (not b!3306985) (not b_lambda!92405) (not b!3306684) b_and!226713 b_and!226719 (not b!3306989) (not b!3306939) tp_is_empty!17373 b_and!226729 (not b!3306916) (not b!3307050) (not d!926230) (not b_next!87617) (not b!3307067) (not b_lambda!92389) (not b!3306457) (not b!3306725) (not b!3306418) (not d!926104) (not b!3306923) (not b!3306040) (not d!926376) (not b!3306455) (not b!3307032) (not d!926110) (not b_next!87621) (not b!3307031) (not b!3306935) (not b_next!87641) (not b!3306980) (not d!926160) (not b!3306920) (not d!926452) (not b!3307055) (not b!3307064) (not d!926154) (not b!3306887) (not b!3307054) (not b!3307072) (not b!3307000) (not b!3307007) (not d!926352) (not b!3306405) (not b!3307005) (not b!3306417) (not b!3306410) (not b!3307022) (not b!3306751) (not b!3307039) b_and!226651 (not b!3307028) (not b!3306480) (not d!926138) (not b!3307024) (not d!926108) (not b!3306959) (not b!3307002) (not bs!549197) (not b!3306717) (not b!3306911) b_and!226717 b_and!226647 (not b!3306486) (not d!926468) (not b!3306905) (not d!926148) (not b!3306470) (not b!3307006) (not b_next!87653) (not b!3307059) (not tb!171635) (not b!3307036) (not d!926370) (not b_next!87627) (not b!3306943) (not b!3306986) (not b_next!87655) (not b!3306363) (not b_next!87625) (not d!926398) (not d!926116) (not b!3306733) (not b!3306992) (not b!3306687) (not d!926132) (not b!3307008) (not b!3306880) (not d!926410) (not b!3306997) b_and!226727 b_and!226715 b_and!226723 b_and!226725 (not d!926228) (not b!3307048) (not d!926244) (not b!3307025) (not b!3306358) (not b_next!87623) (not b!3306718) (not b!3306892) (not b_lambda!92383) (not b!3306984) (not d!926412) (not b!3306465) (not d!926356) (not d!926350) (not b!3307062) (not b!3306960) (not b!3306683) (not b!3306360) (not b!3306458) (not b!3307071) (not d!926358) (not b!3307009) (not b!3306942) (not d!926388) (not b!3307023) (not b!3306891) (not d!926422) (not d!926400) (not b!3306979) (not b!3306961) (not b!3307044) (not b_next!87643) (not b!3306452) (not b!3307043) (not b!3307051) b_and!226599 (not bm!240203) (not b!3306988) (not b_lambda!92413) (not d!926372) (not d!926140) (not d!926368) (not b!3307070) (not b_lambda!92417) (not tb!171705) (not d!926436) (not b!3306869) (not d!926444) (not b!3307011) (not b!3306927) (not b!3307047) (not d!926212) (not b!3306936) (not b!3306406) (not b!3306956) (not d!926252) (not b!3306906) (not b_next!87659) (not d!926402) (not d!926440) (not b!3306453) (not d!926250) (not b!3306407) (not d!926426) (not b!3307060) (not b!3306993) (not b_next!87619) (not b!3306924) (not d!926158) (not d!926458) (not b!3306903) (not b_lambda!92385) (not d!926454) (not b!3306723) (not b_lambda!92419) (not b!3307040) (not b!3306493) (not b!3307056) (not d!926414) (not d!926112) (not b!3307066) (not b!3306753) (not d!926386) (not b!3306908) (not b_next!87657) (not b!3306364) (not d!926224) b_and!226595 (not bm!240199) (not d!926234) (not b_lambda!92421) (not d!926462) (not b!3306893) (not d!926144) (not d!926448) (not d!926222) (not b!3307058) (not d!926456) (not d!926472) (not b!3306981) (not d!926394) (not b!3306977) (not b!3307026) (not d!926146) (not b!3306846) (not d!926236) (not b!3306996) (not d!926416) (not b!3306958) (not b!3306731) b_and!226591 (not b!3306930) (not b!3307038) (not b!3306843) (not b_next!87639) (not b!3307063) (not d!926390) (not b!3307052) (not b!3306873) (not d!926102) (not b!3306925) (not d!926418) (not d!926396) (not d!926152) (not b!3306133) (not d!926106) (not d!926420) (not b!3306957) (not d!926438) (not d!926432) (not b!3306881) (not b!3306973) (not bm!240200) (not b!3306998) (not b!3306882) (not bm!240198) (not b!3306421) (not b!3306361) (not b!3307030) (not d!926466) (not d!926218) (not b_lambda!92387) (not b!3306686) (not b!3307029) (not d!926248) (not d!926220) (not b_next!87637) (not b!3306842) (not b!3306485) (not b!3306904) (not b!3307004) (not tb!171675) (not d!926226) (not b!3307068) (not b!3307034) (not b!3306359) (not d!926216) (not d!926446) (not d!926240) (not b!3307001) (not b!3306420) (not d!926214) (not d!926114) (not b!3306732) (not b!3306478))
(check-sat b_and!226721 (not b_next!87621) (not b_next!87641) b_and!226651 (not b_next!87653) (not b_next!87659) (not b_next!87619) (not b_next!87657) b_and!226595 (not b_next!87637) b_and!226713 b_and!226719 b_and!226729 (not b_next!87617) b_and!226717 b_and!226647 (not b_next!87627) (not b_next!87655) (not b_next!87625) b_and!226727 b_and!226715 b_and!226723 b_and!226725 (not b_next!87623) (not b_next!87643) b_and!226599 (not b_next!87639) b_and!226591)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303134 () Bool)

(assert start!303134)

(declare-fun b!3226394 () Bool)

(declare-fun b_free!86033 () Bool)

(declare-fun b_next!86737 () Bool)

(assert (=> b!3226394 (= b_free!86033 (not b_next!86737))))

(declare-fun tp!1016635 () Bool)

(declare-fun b_and!215951 () Bool)

(assert (=> b!3226394 (= tp!1016635 b_and!215951)))

(declare-fun b_free!86035 () Bool)

(declare-fun b_next!86739 () Bool)

(assert (=> b!3226394 (= b_free!86035 (not b_next!86739))))

(declare-fun tp!1016628 () Bool)

(declare-fun b_and!215953 () Bool)

(assert (=> b!3226394 (= tp!1016628 b_and!215953)))

(declare-fun b!3226392 () Bool)

(declare-fun b_free!86037 () Bool)

(declare-fun b_next!86741 () Bool)

(assert (=> b!3226392 (= b_free!86037 (not b_next!86741))))

(declare-fun tp!1016631 () Bool)

(declare-fun b_and!215955 () Bool)

(assert (=> b!3226392 (= tp!1016631 b_and!215955)))

(declare-fun b_free!86039 () Bool)

(declare-fun b_next!86743 () Bool)

(assert (=> b!3226392 (= b_free!86039 (not b_next!86743))))

(declare-fun tp!1016629 () Bool)

(declare-fun b_and!215957 () Bool)

(assert (=> b!3226392 (= tp!1016629 b_and!215957)))

(declare-fun b!3226389 () Bool)

(declare-fun b_free!86041 () Bool)

(declare-fun b_next!86745 () Bool)

(assert (=> b!3226389 (= b_free!86041 (not b_next!86745))))

(declare-fun tp!1016640 () Bool)

(declare-fun b_and!215959 () Bool)

(assert (=> b!3226389 (= tp!1016640 b_and!215959)))

(declare-fun b_free!86043 () Bool)

(declare-fun b_next!86747 () Bool)

(assert (=> b!3226389 (= b_free!86043 (not b_next!86747))))

(declare-fun tp!1016630 () Bool)

(declare-fun b_and!215961 () Bool)

(assert (=> b!3226389 (= tp!1016630 b_and!215961)))

(declare-fun e!2012279 () Bool)

(assert (=> b!3226389 (= e!2012279 (and tp!1016640 tp!1016630))))

(declare-fun b!3226390 () Bool)

(declare-fun e!2012273 () Bool)

(declare-fun e!2012277 () Bool)

(assert (=> b!3226390 (= e!2012273 e!2012277)))

(declare-fun res!1313982 () Bool)

(assert (=> b!3226390 (=> res!1313982 e!2012277)))

(declare-datatypes ((C!20228 0))(
  ( (C!20229 (val!12162 Int)) )
))
(declare-datatypes ((List!36464 0))(
  ( (Nil!36340) (Cons!36340 (h!41760 C!20228) (t!241085 List!36464)) )
))
(declare-fun lt!1094384 () List!36464)

(declare-fun lt!1094386 () List!36464)

(declare-fun lt!1094388 () List!36464)

(assert (=> b!3226390 (= res!1313982 (or (not (= lt!1094386 lt!1094384)) (not (= lt!1094388 lt!1094384))))))

(declare-datatypes ((Regex!10021 0))(
  ( (ElementMatch!10021 (c!542198 C!20228)) (Concat!15513 (regOne!20554 Regex!10021) (regTwo!20554 Regex!10021)) (EmptyExpr!10021) (Star!10021 (reg!10350 Regex!10021)) (EmptyLang!10021) (Union!10021 (regOne!20555 Regex!10021) (regTwo!20555 Regex!10021)) )
))
(declare-datatypes ((List!36465 0))(
  ( (Nil!36341) (Cons!36341 (h!41761 (_ BitVec 16)) (t!241086 List!36465)) )
))
(declare-datatypes ((TokenValue!5492 0))(
  ( (FloatLiteralValue!10984 (text!38889 List!36465)) (TokenValueExt!5491 (__x!23201 Int)) (Broken!27460 (value!170401 List!36465)) (Object!5615) (End!5492) (Def!5492) (Underscore!5492) (Match!5492) (Else!5492) (Error!5492) (Case!5492) (If!5492) (Extends!5492) (Abstract!5492) (Class!5492) (Val!5492) (DelimiterValue!10984 (del!5552 List!36465)) (KeywordValue!5498 (value!170402 List!36465)) (CommentValue!10984 (value!170403 List!36465)) (WhitespaceValue!10984 (value!170404 List!36465)) (IndentationValue!5492 (value!170405 List!36465)) (String!40793) (Int32!5492) (Broken!27461 (value!170406 List!36465)) (Boolean!5493) (Unit!50927) (OperatorValue!5495 (op!5552 List!36465)) (IdentifierValue!10984 (value!170407 List!36465)) (IdentifierValue!10985 (value!170408 List!36465)) (WhitespaceValue!10985 (value!170409 List!36465)) (True!10984) (False!10984) (Broken!27462 (value!170410 List!36465)) (Broken!27463 (value!170411 List!36465)) (True!10985) (RightBrace!5492) (RightBracket!5492) (Colon!5492) (Null!5492) (Comma!5492) (LeftBracket!5492) (False!10985) (LeftBrace!5492) (ImaginaryLiteralValue!5492 (text!38890 List!36465)) (StringLiteralValue!16476 (value!170412 List!36465)) (EOFValue!5492 (value!170413 List!36465)) (IdentValue!5492 (value!170414 List!36465)) (DelimiterValue!10985 (value!170415 List!36465)) (DedentValue!5492 (value!170416 List!36465)) (NewLineValue!5492 (value!170417 List!36465)) (IntegerValue!16476 (value!170418 (_ BitVec 32)) (text!38891 List!36465)) (IntegerValue!16477 (value!170419 Int) (text!38892 List!36465)) (Times!5492) (Or!5492) (Equal!5492) (Minus!5492) (Broken!27464 (value!170420 List!36465)) (And!5492) (Div!5492) (LessEqual!5492) (Mod!5492) (Concat!15514) (Not!5492) (Plus!5492) (SpaceValue!5492 (value!170421 List!36465)) (IntegerValue!16478 (value!170422 Int) (text!38893 List!36465)) (StringLiteralValue!16477 (text!38894 List!36465)) (FloatLiteralValue!10985 (text!38895 List!36465)) (BytesLiteralValue!5492 (value!170423 List!36465)) (CommentValue!10985 (value!170424 List!36465)) (StringLiteralValue!16478 (value!170425 List!36465)) (ErrorTokenValue!5492 (msg!5553 List!36465)) )
))
(declare-datatypes ((IArray!21803 0))(
  ( (IArray!21804 (innerList!10959 List!36464)) )
))
(declare-datatypes ((Conc!10899 0))(
  ( (Node!10899 (left!28296 Conc!10899) (right!28626 Conc!10899) (csize!22028 Int) (cheight!11110 Int)) (Leaf!17141 (xs!14017 IArray!21803) (csize!22029 Int)) (Empty!10899) )
))
(declare-datatypes ((BalanceConc!21412 0))(
  ( (BalanceConc!21413 (c!542199 Conc!10899)) )
))
(declare-datatypes ((String!40794 0))(
  ( (String!40795 (value!170426 String)) )
))
(declare-datatypes ((TokenValueInjection!10412 0))(
  ( (TokenValueInjection!10413 (toValue!7366 Int) (toChars!7225 Int)) )
))
(declare-datatypes ((Rule!10324 0))(
  ( (Rule!10325 (regex!5262 Regex!10021) (tag!5794 String!40794) (isSeparator!5262 Bool) (transformation!5262 TokenValueInjection!10412)) )
))
(declare-datatypes ((Token!9890 0))(
  ( (Token!9891 (value!170427 TokenValue!5492) (rule!7720 Rule!10324) (size!27403 Int) (originalCharacters!5976 List!36464)) )
))
(declare-datatypes ((List!36466 0))(
  ( (Nil!36342) (Cons!36342 (h!41762 Token!9890) (t!241087 List!36466)) )
))
(declare-fun tokens!494 () List!36466)

(declare-fun list!12959 (BalanceConc!21412) List!36464)

(declare-fun charsOf!3278 (Token!9890) BalanceConc!21412)

(assert (=> b!3226390 (= lt!1094384 (list!12959 (charsOf!3278 (h!41762 tokens!494))))))

(declare-fun b!3226391 () Bool)

(declare-fun res!1313977 () Bool)

(assert (=> b!3226391 (=> res!1313977 e!2012277)))

(declare-datatypes ((LexerInterface!4851 0))(
  ( (LexerInterfaceExt!4848 (__x!23202 Int)) (Lexer!4849) )
))
(declare-fun thiss!18206 () LexerInterface!4851)

(declare-datatypes ((List!36467 0))(
  ( (Nil!36343) (Cons!36343 (h!41763 Rule!10324) (t!241088 List!36467)) )
))
(declare-fun rules!2135 () List!36467)

(declare-fun rulesProduceIndividualToken!2343 (LexerInterface!4851 List!36467 Token!9890) Bool)

(assert (=> b!3226391 (= res!1313977 (not (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 (h!41762 tokens!494))))))

(declare-fun e!2012275 () Bool)

(assert (=> b!3226392 (= e!2012275 (and tp!1016631 tp!1016629))))

(declare-fun b!3226393 () Bool)

(declare-fun res!1313984 () Bool)

(declare-fun e!2012278 () Bool)

(assert (=> b!3226393 (=> (not res!1313984) (not e!2012278))))

(declare-fun separatorToken!241 () Token!9890)

(assert (=> b!3226393 (= res!1313984 (isSeparator!5262 (rule!7720 separatorToken!241)))))

(declare-fun e!2012271 () Bool)

(assert (=> b!3226394 (= e!2012271 (and tp!1016635 tp!1016628))))

(declare-fun b!3226395 () Bool)

(declare-fun res!1313978 () Bool)

(assert (=> b!3226395 (=> (not res!1313978) (not e!2012278))))

(assert (=> b!3226395 (= res!1313978 (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3226396 () Bool)

(declare-fun res!1313986 () Bool)

(assert (=> b!3226396 (=> (not res!1313986) (not e!2012278))))

(declare-datatypes ((IArray!21805 0))(
  ( (IArray!21806 (innerList!10960 List!36466)) )
))
(declare-datatypes ((Conc!10900 0))(
  ( (Node!10900 (left!28297 Conc!10900) (right!28627 Conc!10900) (csize!22030 Int) (cheight!11111 Int)) (Leaf!17142 (xs!14018 IArray!21805) (csize!22031 Int)) (Empty!10900) )
))
(declare-datatypes ((BalanceConc!21414 0))(
  ( (BalanceConc!21415 (c!542200 Conc!10900)) )
))
(declare-fun rulesProduceEachTokenIndividually!1302 (LexerInterface!4851 List!36467 BalanceConc!21414) Bool)

(declare-fun seqFromList!3587 (List!36466) BalanceConc!21414)

(assert (=> b!3226396 (= res!1313986 (rulesProduceEachTokenIndividually!1302 thiss!18206 rules!2135 (seqFromList!3587 tokens!494)))))

(declare-fun b!3226397 () Bool)

(declare-fun res!1313979 () Bool)

(assert (=> b!3226397 (=> (not res!1313979) (not e!2012278))))

(declare-fun isEmpty!20420 (List!36467) Bool)

(assert (=> b!3226397 (= res!1313979 (not (isEmpty!20420 rules!2135)))))

(declare-fun res!1313976 () Bool)

(assert (=> start!303134 (=> (not res!1313976) (not e!2012278))))

(get-info :version)

(assert (=> start!303134 (= res!1313976 ((_ is Lexer!4849) thiss!18206))))

(assert (=> start!303134 e!2012278))

(assert (=> start!303134 true))

(declare-fun e!2012269 () Bool)

(assert (=> start!303134 e!2012269))

(declare-fun e!2012276 () Bool)

(assert (=> start!303134 e!2012276))

(declare-fun e!2012270 () Bool)

(declare-fun inv!49221 (Token!9890) Bool)

(assert (=> start!303134 (and (inv!49221 separatorToken!241) e!2012270)))

(declare-fun b!3226398 () Bool)

(declare-fun res!1313985 () Bool)

(assert (=> b!3226398 (=> (not res!1313985) (not e!2012278))))

(declare-fun lambda!118135 () Int)

(declare-fun forall!7458 (List!36466 Int) Bool)

(assert (=> b!3226398 (= res!1313985 (forall!7458 tokens!494 lambda!118135))))

(declare-fun tp!1016636 () Bool)

(declare-fun b!3226399 () Bool)

(declare-fun e!2012267 () Bool)

(declare-fun inv!49218 (String!40794) Bool)

(declare-fun inv!49222 (TokenValueInjection!10412) Bool)

(assert (=> b!3226399 (= e!2012267 (and tp!1016636 (inv!49218 (tag!5794 (rule!7720 separatorToken!241))) (inv!49222 (transformation!5262 (rule!7720 separatorToken!241))) e!2012275))))

(declare-fun e!2012268 () Bool)

(declare-fun b!3226400 () Bool)

(declare-fun tp!1016639 () Bool)

(assert (=> b!3226400 (= e!2012276 (and (inv!49221 (h!41762 tokens!494)) e!2012268 tp!1016639))))

(declare-fun b!3226401 () Bool)

(declare-fun res!1313975 () Bool)

(assert (=> b!3226401 (=> (not res!1313975) (not e!2012278))))

(declare-fun rulesInvariant!4248 (LexerInterface!4851 List!36467) Bool)

(assert (=> b!3226401 (= res!1313975 (rulesInvariant!4248 thiss!18206 rules!2135))))

(declare-fun tp!1016637 () Bool)

(declare-fun b!3226402 () Bool)

(declare-fun e!2012266 () Bool)

(declare-fun inv!21 (TokenValue!5492) Bool)

(assert (=> b!3226402 (= e!2012268 (and (inv!21 (value!170427 (h!41762 tokens!494))) e!2012266 tp!1016637))))

(declare-fun e!2012280 () Bool)

(declare-fun b!3226403 () Bool)

(declare-fun tp!1016632 () Bool)

(assert (=> b!3226403 (= e!2012280 (and tp!1016632 (inv!49218 (tag!5794 (h!41763 rules!2135))) (inv!49222 (transformation!5262 (h!41763 rules!2135))) e!2012279))))

(declare-fun b!3226404 () Bool)

(declare-fun res!1313981 () Bool)

(assert (=> b!3226404 (=> (not res!1313981) (not e!2012278))))

(assert (=> b!3226404 (= res!1313981 (and (not ((_ is Nil!36342) tokens!494)) ((_ is Nil!36342) (t!241087 tokens!494))))))

(declare-fun b!3226405 () Bool)

(declare-fun isEmpty!20421 (BalanceConc!21414) Bool)

(declare-datatypes ((tuple2!35764 0))(
  ( (tuple2!35765 (_1!21016 BalanceConc!21414) (_2!21016 BalanceConc!21412)) )
))
(declare-fun lex!2179 (LexerInterface!4851 List!36467 BalanceConc!21412) tuple2!35764)

(declare-fun seqFromList!3588 (List!36464) BalanceConc!21412)

(assert (=> b!3226405 (= e!2012277 (not (isEmpty!20421 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(declare-fun b!3226406 () Bool)

(declare-fun tp!1016634 () Bool)

(assert (=> b!3226406 (= e!2012269 (and e!2012280 tp!1016634))))

(declare-fun b!3226407 () Bool)

(declare-fun res!1313980 () Bool)

(assert (=> b!3226407 (=> (not res!1313980) (not e!2012278))))

(declare-fun sepAndNonSepRulesDisjointChars!1456 (List!36467 List!36467) Bool)

(assert (=> b!3226407 (= res!1313980 (sepAndNonSepRulesDisjointChars!1456 rules!2135 rules!2135))))

(declare-fun b!3226408 () Bool)

(assert (=> b!3226408 (= e!2012278 (not e!2012273))))

(declare-fun res!1313983 () Bool)

(assert (=> b!3226408 (=> res!1313983 e!2012273)))

(assert (=> b!3226408 (= res!1313983 (not (= lt!1094388 lt!1094386)))))

(declare-fun printList!1401 (LexerInterface!4851 List!36466) List!36464)

(assert (=> b!3226408 (= lt!1094386 (printList!1401 thiss!18206 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))

(declare-fun lt!1094385 () BalanceConc!21412)

(assert (=> b!3226408 (= lt!1094388 (list!12959 lt!1094385))))

(declare-fun lt!1094387 () BalanceConc!21414)

(declare-fun printTailRec!1348 (LexerInterface!4851 BalanceConc!21414 Int BalanceConc!21412) BalanceConc!21412)

(assert (=> b!3226408 (= lt!1094385 (printTailRec!1348 thiss!18206 lt!1094387 0 (BalanceConc!21413 Empty!10899)))))

(declare-fun print!1916 (LexerInterface!4851 BalanceConc!21414) BalanceConc!21412)

(assert (=> b!3226408 (= lt!1094385 (print!1916 thiss!18206 lt!1094387))))

(declare-fun singletonSeq!2358 (Token!9890) BalanceConc!21414)

(assert (=> b!3226408 (= lt!1094387 (singletonSeq!2358 (h!41762 tokens!494)))))

(declare-fun tp!1016633 () Bool)

(declare-fun b!3226409 () Bool)

(assert (=> b!3226409 (= e!2012270 (and (inv!21 (value!170427 separatorToken!241)) e!2012267 tp!1016633))))

(declare-fun tp!1016638 () Bool)

(declare-fun b!3226410 () Bool)

(assert (=> b!3226410 (= e!2012266 (and tp!1016638 (inv!49218 (tag!5794 (rule!7720 (h!41762 tokens!494)))) (inv!49222 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) e!2012271))))

(assert (= (and start!303134 res!1313976) b!3226397))

(assert (= (and b!3226397 res!1313979) b!3226401))

(assert (= (and b!3226401 res!1313975) b!3226396))

(assert (= (and b!3226396 res!1313986) b!3226395))

(assert (= (and b!3226395 res!1313978) b!3226393))

(assert (= (and b!3226393 res!1313984) b!3226398))

(assert (= (and b!3226398 res!1313985) b!3226407))

(assert (= (and b!3226407 res!1313980) b!3226404))

(assert (= (and b!3226404 res!1313981) b!3226408))

(assert (= (and b!3226408 (not res!1313983)) b!3226390))

(assert (= (and b!3226390 (not res!1313982)) b!3226391))

(assert (= (and b!3226391 (not res!1313977)) b!3226405))

(assert (= b!3226403 b!3226389))

(assert (= b!3226406 b!3226403))

(assert (= (and start!303134 ((_ is Cons!36343) rules!2135)) b!3226406))

(assert (= b!3226410 b!3226394))

(assert (= b!3226402 b!3226410))

(assert (= b!3226400 b!3226402))

(assert (= (and start!303134 ((_ is Cons!36342) tokens!494)) b!3226400))

(assert (= b!3226399 b!3226392))

(assert (= b!3226409 b!3226399))

(assert (= start!303134 b!3226409))

(declare-fun m!3504871 () Bool)

(assert (=> b!3226396 m!3504871))

(assert (=> b!3226396 m!3504871))

(declare-fun m!3504873 () Bool)

(assert (=> b!3226396 m!3504873))

(declare-fun m!3504875 () Bool)

(assert (=> b!3226409 m!3504875))

(declare-fun m!3504877 () Bool)

(assert (=> b!3226400 m!3504877))

(declare-fun m!3504879 () Bool)

(assert (=> b!3226399 m!3504879))

(declare-fun m!3504881 () Bool)

(assert (=> b!3226399 m!3504881))

(declare-fun m!3504883 () Bool)

(assert (=> b!3226395 m!3504883))

(declare-fun m!3504885 () Bool)

(assert (=> b!3226408 m!3504885))

(declare-fun m!3504887 () Bool)

(assert (=> b!3226408 m!3504887))

(declare-fun m!3504889 () Bool)

(assert (=> b!3226408 m!3504889))

(declare-fun m!3504891 () Bool)

(assert (=> b!3226408 m!3504891))

(declare-fun m!3504893 () Bool)

(assert (=> b!3226408 m!3504893))

(declare-fun m!3504895 () Bool)

(assert (=> b!3226407 m!3504895))

(declare-fun m!3504897 () Bool)

(assert (=> b!3226401 m!3504897))

(declare-fun m!3504899 () Bool)

(assert (=> b!3226405 m!3504899))

(assert (=> b!3226405 m!3504899))

(declare-fun m!3504901 () Bool)

(assert (=> b!3226405 m!3504901))

(declare-fun m!3504903 () Bool)

(assert (=> b!3226405 m!3504903))

(declare-fun m!3504905 () Bool)

(assert (=> b!3226398 m!3504905))

(declare-fun m!3504907 () Bool)

(assert (=> b!3226402 m!3504907))

(declare-fun m!3504909 () Bool)

(assert (=> b!3226403 m!3504909))

(declare-fun m!3504911 () Bool)

(assert (=> b!3226403 m!3504911))

(declare-fun m!3504913 () Bool)

(assert (=> b!3226410 m!3504913))

(declare-fun m!3504915 () Bool)

(assert (=> b!3226410 m!3504915))

(declare-fun m!3504917 () Bool)

(assert (=> start!303134 m!3504917))

(declare-fun m!3504919 () Bool)

(assert (=> b!3226390 m!3504919))

(assert (=> b!3226390 m!3504919))

(declare-fun m!3504921 () Bool)

(assert (=> b!3226390 m!3504921))

(declare-fun m!3504923 () Bool)

(assert (=> b!3226397 m!3504923))

(declare-fun m!3504925 () Bool)

(assert (=> b!3226391 m!3504925))

(check-sat (not b!3226403) (not b!3226399) (not b!3226391) b_and!215957 (not b!3226400) (not b_next!86747) b_and!215959 (not b!3226398) (not b_next!86743) b_and!215955 (not b!3226408) (not b!3226410) (not b_next!86739) (not b!3226401) (not b!3226402) (not start!303134) (not b!3226396) (not b!3226409) (not b_next!86741) (not b!3226395) b_and!215951 (not b!3226390) b_and!215961 (not b!3226407) (not b!3226397) (not b!3226405) (not b_next!86745) (not b!3226406) b_and!215953 (not b_next!86737))
(check-sat (not b_next!86741) b_and!215951 b_and!215961 b_and!215957 (not b_next!86747) b_and!215959 (not b_next!86743) b_and!215955 (not b_next!86745) (not b_next!86739) b_and!215953 (not b_next!86737))
(get-model)

(declare-fun d!885758 () Bool)

(assert (=> d!885758 (= (inv!49218 (tag!5794 (rule!7720 (h!41762 tokens!494)))) (= (mod (str.len (value!170426 (tag!5794 (rule!7720 (h!41762 tokens!494))))) 2) 0))))

(assert (=> b!3226410 d!885758))

(declare-fun d!885760 () Bool)

(declare-fun res!1314006 () Bool)

(declare-fun e!2012292 () Bool)

(assert (=> d!885760 (=> (not res!1314006) (not e!2012292))))

(declare-fun semiInverseModEq!2167 (Int Int) Bool)

(assert (=> d!885760 (= res!1314006 (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))))))

(assert (=> d!885760 (= (inv!49222 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) e!2012292)))

(declare-fun b!3226422 () Bool)

(declare-fun equivClasses!2066 (Int Int) Bool)

(assert (=> b!3226422 (= e!2012292 (equivClasses!2066 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))))))

(assert (= (and d!885760 res!1314006) b!3226422))

(declare-fun m!3504935 () Bool)

(assert (=> d!885760 m!3504935))

(declare-fun m!3504937 () Bool)

(assert (=> b!3226422 m!3504937))

(assert (=> b!3226410 d!885760))

(declare-fun d!885762 () Bool)

(declare-fun res!1314011 () Bool)

(declare-fun e!2012295 () Bool)

(assert (=> d!885762 (=> (not res!1314011) (not e!2012295))))

(declare-fun isEmpty!20425 (List!36464) Bool)

(assert (=> d!885762 (= res!1314011 (not (isEmpty!20425 (originalCharacters!5976 (h!41762 tokens!494)))))))

(assert (=> d!885762 (= (inv!49221 (h!41762 tokens!494)) e!2012295)))

(declare-fun b!3226427 () Bool)

(declare-fun res!1314012 () Bool)

(assert (=> b!3226427 (=> (not res!1314012) (not e!2012295))))

(declare-fun dynLambda!14767 (Int TokenValue!5492) BalanceConc!21412)

(assert (=> b!3226427 (= res!1314012 (= (originalCharacters!5976 (h!41762 tokens!494)) (list!12959 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(declare-fun b!3226428 () Bool)

(declare-fun size!27405 (List!36464) Int)

(assert (=> b!3226428 (= e!2012295 (= (size!27403 (h!41762 tokens!494)) (size!27405 (originalCharacters!5976 (h!41762 tokens!494)))))))

(assert (= (and d!885762 res!1314011) b!3226427))

(assert (= (and b!3226427 res!1314012) b!3226428))

(declare-fun b_lambda!88771 () Bool)

(assert (=> (not b_lambda!88771) (not b!3226427)))

(declare-fun t!241090 () Bool)

(declare-fun tb!159655 () Bool)

(assert (=> (and b!3226394 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241090) tb!159655))

(declare-fun b!3226433 () Bool)

(declare-fun e!2012298 () Bool)

(declare-fun tp!1016643 () Bool)

(declare-fun inv!49225 (Conc!10899) Bool)

(assert (=> b!3226433 (= e!2012298 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))) tp!1016643))))

(declare-fun result!202148 () Bool)

(declare-fun inv!49226 (BalanceConc!21412) Bool)

(assert (=> tb!159655 (= result!202148 (and (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))) e!2012298))))

(assert (= tb!159655 b!3226433))

(declare-fun m!3504939 () Bool)

(assert (=> b!3226433 m!3504939))

(declare-fun m!3504941 () Bool)

(assert (=> tb!159655 m!3504941))

(assert (=> b!3226427 t!241090))

(declare-fun b_and!215963 () Bool)

(assert (= b_and!215953 (and (=> t!241090 result!202148) b_and!215963)))

(declare-fun tb!159657 () Bool)

(declare-fun t!241092 () Bool)

(assert (=> (and b!3226392 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241092) tb!159657))

(declare-fun result!202152 () Bool)

(assert (= result!202152 result!202148))

(assert (=> b!3226427 t!241092))

(declare-fun b_and!215965 () Bool)

(assert (= b_and!215957 (and (=> t!241092 result!202152) b_and!215965)))

(declare-fun tb!159659 () Bool)

(declare-fun t!241094 () Bool)

(assert (=> (and b!3226389 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241094) tb!159659))

(declare-fun result!202154 () Bool)

(assert (= result!202154 result!202148))

(assert (=> b!3226427 t!241094))

(declare-fun b_and!215967 () Bool)

(assert (= b_and!215961 (and (=> t!241094 result!202154) b_and!215967)))

(declare-fun m!3504943 () Bool)

(assert (=> d!885762 m!3504943))

(declare-fun m!3504945 () Bool)

(assert (=> b!3226427 m!3504945))

(assert (=> b!3226427 m!3504945))

(declare-fun m!3504947 () Bool)

(assert (=> b!3226427 m!3504947))

(declare-fun m!3504949 () Bool)

(assert (=> b!3226428 m!3504949))

(assert (=> b!3226400 d!885762))

(declare-fun b!3226444 () Bool)

(declare-fun e!2012307 () Bool)

(declare-fun inv!15 (TokenValue!5492) Bool)

(assert (=> b!3226444 (= e!2012307 (inv!15 (value!170427 separatorToken!241)))))

(declare-fun b!3226445 () Bool)

(declare-fun e!2012305 () Bool)

(declare-fun e!2012306 () Bool)

(assert (=> b!3226445 (= e!2012305 e!2012306)))

(declare-fun c!542206 () Bool)

(assert (=> b!3226445 (= c!542206 ((_ is IntegerValue!16477) (value!170427 separatorToken!241)))))

(declare-fun b!3226447 () Bool)

(declare-fun res!1314015 () Bool)

(assert (=> b!3226447 (=> res!1314015 e!2012307)))

(assert (=> b!3226447 (= res!1314015 (not ((_ is IntegerValue!16478) (value!170427 separatorToken!241))))))

(assert (=> b!3226447 (= e!2012306 e!2012307)))

(declare-fun b!3226448 () Bool)

(declare-fun inv!16 (TokenValue!5492) Bool)

(assert (=> b!3226448 (= e!2012305 (inv!16 (value!170427 separatorToken!241)))))

(declare-fun d!885764 () Bool)

(declare-fun c!542205 () Bool)

(assert (=> d!885764 (= c!542205 ((_ is IntegerValue!16476) (value!170427 separatorToken!241)))))

(assert (=> d!885764 (= (inv!21 (value!170427 separatorToken!241)) e!2012305)))

(declare-fun b!3226446 () Bool)

(declare-fun inv!17 (TokenValue!5492) Bool)

(assert (=> b!3226446 (= e!2012306 (inv!17 (value!170427 separatorToken!241)))))

(assert (= (and d!885764 c!542205) b!3226448))

(assert (= (and d!885764 (not c!542205)) b!3226445))

(assert (= (and b!3226445 c!542206) b!3226446))

(assert (= (and b!3226445 (not c!542206)) b!3226447))

(assert (= (and b!3226447 (not res!1314015)) b!3226444))

(declare-fun m!3504951 () Bool)

(assert (=> b!3226444 m!3504951))

(declare-fun m!3504953 () Bool)

(assert (=> b!3226448 m!3504953))

(declare-fun m!3504955 () Bool)

(assert (=> b!3226446 m!3504955))

(assert (=> b!3226409 d!885764))

(declare-fun d!885766 () Bool)

(declare-fun res!1314020 () Bool)

(declare-fun e!2012312 () Bool)

(assert (=> d!885766 (=> res!1314020 e!2012312)))

(assert (=> d!885766 (= res!1314020 ((_ is Nil!36342) tokens!494))))

(assert (=> d!885766 (= (forall!7458 tokens!494 lambda!118135) e!2012312)))

(declare-fun b!3226453 () Bool)

(declare-fun e!2012313 () Bool)

(assert (=> b!3226453 (= e!2012312 e!2012313)))

(declare-fun res!1314021 () Bool)

(assert (=> b!3226453 (=> (not res!1314021) (not e!2012313))))

(declare-fun dynLambda!14768 (Int Token!9890) Bool)

(assert (=> b!3226453 (= res!1314021 (dynLambda!14768 lambda!118135 (h!41762 tokens!494)))))

(declare-fun b!3226454 () Bool)

(assert (=> b!3226454 (= e!2012313 (forall!7458 (t!241087 tokens!494) lambda!118135))))

(assert (= (and d!885766 (not res!1314020)) b!3226453))

(assert (= (and b!3226453 res!1314021) b!3226454))

(declare-fun b_lambda!88773 () Bool)

(assert (=> (not b_lambda!88773) (not b!3226453)))

(declare-fun m!3504957 () Bool)

(assert (=> b!3226453 m!3504957))

(declare-fun m!3504959 () Bool)

(assert (=> b!3226454 m!3504959))

(assert (=> b!3226398 d!885766))

(declare-fun d!885768 () Bool)

(assert (=> d!885768 (= (inv!49218 (tag!5794 (rule!7720 separatorToken!241))) (= (mod (str.len (value!170426 (tag!5794 (rule!7720 separatorToken!241)))) 2) 0))))

(assert (=> b!3226399 d!885768))

(declare-fun d!885770 () Bool)

(declare-fun res!1314022 () Bool)

(declare-fun e!2012314 () Bool)

(assert (=> d!885770 (=> (not res!1314022) (not e!2012314))))

(assert (=> d!885770 (= res!1314022 (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))))))

(assert (=> d!885770 (= (inv!49222 (transformation!5262 (rule!7720 separatorToken!241))) e!2012314)))

(declare-fun b!3226455 () Bool)

(assert (=> b!3226455 (= e!2012314 (equivClasses!2066 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))))))

(assert (= (and d!885770 res!1314022) b!3226455))

(declare-fun m!3504961 () Bool)

(assert (=> d!885770 m!3504961))

(declare-fun m!3504963 () Bool)

(assert (=> b!3226455 m!3504963))

(assert (=> b!3226399 d!885770))

(declare-fun d!885772 () Bool)

(declare-fun res!1314023 () Bool)

(declare-fun e!2012315 () Bool)

(assert (=> d!885772 (=> (not res!1314023) (not e!2012315))))

(assert (=> d!885772 (= res!1314023 (not (isEmpty!20425 (originalCharacters!5976 separatorToken!241))))))

(assert (=> d!885772 (= (inv!49221 separatorToken!241) e!2012315)))

(declare-fun b!3226456 () Bool)

(declare-fun res!1314024 () Bool)

(assert (=> b!3226456 (=> (not res!1314024) (not e!2012315))))

(assert (=> b!3226456 (= res!1314024 (= (originalCharacters!5976 separatorToken!241) (list!12959 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(declare-fun b!3226457 () Bool)

(assert (=> b!3226457 (= e!2012315 (= (size!27403 separatorToken!241) (size!27405 (originalCharacters!5976 separatorToken!241))))))

(assert (= (and d!885772 res!1314023) b!3226456))

(assert (= (and b!3226456 res!1314024) b!3226457))

(declare-fun b_lambda!88775 () Bool)

(assert (=> (not b_lambda!88775) (not b!3226456)))

(declare-fun t!241096 () Bool)

(declare-fun tb!159661 () Bool)

(assert (=> (and b!3226394 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241096) tb!159661))

(declare-fun b!3226458 () Bool)

(declare-fun e!2012316 () Bool)

(declare-fun tp!1016644 () Bool)

(assert (=> b!3226458 (= e!2012316 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))) tp!1016644))))

(declare-fun result!202156 () Bool)

(assert (=> tb!159661 (= result!202156 (and (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))) e!2012316))))

(assert (= tb!159661 b!3226458))

(declare-fun m!3504965 () Bool)

(assert (=> b!3226458 m!3504965))

(declare-fun m!3504967 () Bool)

(assert (=> tb!159661 m!3504967))

(assert (=> b!3226456 t!241096))

(declare-fun b_and!215969 () Bool)

(assert (= b_and!215963 (and (=> t!241096 result!202156) b_and!215969)))

(declare-fun t!241098 () Bool)

(declare-fun tb!159663 () Bool)

(assert (=> (and b!3226392 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241098) tb!159663))

(declare-fun result!202158 () Bool)

(assert (= result!202158 result!202156))

(assert (=> b!3226456 t!241098))

(declare-fun b_and!215971 () Bool)

(assert (= b_and!215965 (and (=> t!241098 result!202158) b_and!215971)))

(declare-fun t!241100 () Bool)

(declare-fun tb!159665 () Bool)

(assert (=> (and b!3226389 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241100) tb!159665))

(declare-fun result!202160 () Bool)

(assert (= result!202160 result!202156))

(assert (=> b!3226456 t!241100))

(declare-fun b_and!215973 () Bool)

(assert (= b_and!215967 (and (=> t!241100 result!202160) b_and!215973)))

(declare-fun m!3504969 () Bool)

(assert (=> d!885772 m!3504969))

(declare-fun m!3504971 () Bool)

(assert (=> b!3226456 m!3504971))

(assert (=> b!3226456 m!3504971))

(declare-fun m!3504973 () Bool)

(assert (=> b!3226456 m!3504973))

(declare-fun m!3504975 () Bool)

(assert (=> b!3226457 m!3504975))

(assert (=> start!303134 d!885772))

(declare-fun b!3226459 () Bool)

(declare-fun e!2012319 () Bool)

(assert (=> b!3226459 (= e!2012319 (inv!15 (value!170427 (h!41762 tokens!494))))))

(declare-fun b!3226460 () Bool)

(declare-fun e!2012317 () Bool)

(declare-fun e!2012318 () Bool)

(assert (=> b!3226460 (= e!2012317 e!2012318)))

(declare-fun c!542208 () Bool)

(assert (=> b!3226460 (= c!542208 ((_ is IntegerValue!16477) (value!170427 (h!41762 tokens!494))))))

(declare-fun b!3226462 () Bool)

(declare-fun res!1314025 () Bool)

(assert (=> b!3226462 (=> res!1314025 e!2012319)))

(assert (=> b!3226462 (= res!1314025 (not ((_ is IntegerValue!16478) (value!170427 (h!41762 tokens!494)))))))

(assert (=> b!3226462 (= e!2012318 e!2012319)))

(declare-fun b!3226463 () Bool)

(assert (=> b!3226463 (= e!2012317 (inv!16 (value!170427 (h!41762 tokens!494))))))

(declare-fun d!885774 () Bool)

(declare-fun c!542207 () Bool)

(assert (=> d!885774 (= c!542207 ((_ is IntegerValue!16476) (value!170427 (h!41762 tokens!494))))))

(assert (=> d!885774 (= (inv!21 (value!170427 (h!41762 tokens!494))) e!2012317)))

(declare-fun b!3226461 () Bool)

(assert (=> b!3226461 (= e!2012318 (inv!17 (value!170427 (h!41762 tokens!494))))))

(assert (= (and d!885774 c!542207) b!3226463))

(assert (= (and d!885774 (not c!542207)) b!3226460))

(assert (= (and b!3226460 c!542208) b!3226461))

(assert (= (and b!3226460 (not c!542208)) b!3226462))

(assert (= (and b!3226462 (not res!1314025)) b!3226459))

(declare-fun m!3504977 () Bool)

(assert (=> b!3226459 m!3504977))

(declare-fun m!3504979 () Bool)

(assert (=> b!3226463 m!3504979))

(declare-fun m!3504981 () Bool)

(assert (=> b!3226461 m!3504981))

(assert (=> b!3226402 d!885774))

(declare-fun d!885776 () Bool)

(assert (=> d!885776 (= (inv!49218 (tag!5794 (h!41763 rules!2135))) (= (mod (str.len (value!170426 (tag!5794 (h!41763 rules!2135)))) 2) 0))))

(assert (=> b!3226403 d!885776))

(declare-fun d!885778 () Bool)

(declare-fun res!1314026 () Bool)

(declare-fun e!2012320 () Bool)

(assert (=> d!885778 (=> (not res!1314026) (not e!2012320))))

(assert (=> d!885778 (= res!1314026 (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (h!41763 rules!2135)))))))

(assert (=> d!885778 (= (inv!49222 (transformation!5262 (h!41763 rules!2135))) e!2012320)))

(declare-fun b!3226464 () Bool)

(assert (=> b!3226464 (= e!2012320 (equivClasses!2066 (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (h!41763 rules!2135)))))))

(assert (= (and d!885778 res!1314026) b!3226464))

(declare-fun m!3504983 () Bool)

(assert (=> d!885778 m!3504983))

(declare-fun m!3504985 () Bool)

(assert (=> b!3226464 m!3504985))

(assert (=> b!3226403 d!885778))

(declare-fun d!885780 () Bool)

(declare-fun res!1314029 () Bool)

(declare-fun e!2012323 () Bool)

(assert (=> d!885780 (=> (not res!1314029) (not e!2012323))))

(declare-fun rulesValid!1927 (LexerInterface!4851 List!36467) Bool)

(assert (=> d!885780 (= res!1314029 (rulesValid!1927 thiss!18206 rules!2135))))

(assert (=> d!885780 (= (rulesInvariant!4248 thiss!18206 rules!2135) e!2012323)))

(declare-fun b!3226467 () Bool)

(declare-datatypes ((List!36469 0))(
  ( (Nil!36345) (Cons!36345 (h!41765 String!40794) (t!241142 List!36469)) )
))
(declare-fun noDuplicateTag!1923 (LexerInterface!4851 List!36467 List!36469) Bool)

(assert (=> b!3226467 (= e!2012323 (noDuplicateTag!1923 thiss!18206 rules!2135 Nil!36345))))

(assert (= (and d!885780 res!1314029) b!3226467))

(declare-fun m!3504987 () Bool)

(assert (=> d!885780 m!3504987))

(declare-fun m!3504989 () Bool)

(assert (=> b!3226467 m!3504989))

(assert (=> b!3226401 d!885780))

(declare-fun d!885782 () Bool)

(declare-fun list!12962 (Conc!10899) List!36464)

(assert (=> d!885782 (= (list!12959 (charsOf!3278 (h!41762 tokens!494))) (list!12962 (c!542199 (charsOf!3278 (h!41762 tokens!494)))))))

(declare-fun bs!542872 () Bool)

(assert (= bs!542872 d!885782))

(declare-fun m!3504991 () Bool)

(assert (=> bs!542872 m!3504991))

(assert (=> b!3226390 d!885782))

(declare-fun d!885784 () Bool)

(declare-fun lt!1094391 () BalanceConc!21412)

(assert (=> d!885784 (= (list!12959 lt!1094391) (originalCharacters!5976 (h!41762 tokens!494)))))

(assert (=> d!885784 (= lt!1094391 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))

(assert (=> d!885784 (= (charsOf!3278 (h!41762 tokens!494)) lt!1094391)))

(declare-fun b_lambda!88777 () Bool)

(assert (=> (not b_lambda!88777) (not d!885784)))

(assert (=> d!885784 t!241090))

(declare-fun b_and!215975 () Bool)

(assert (= b_and!215969 (and (=> t!241090 result!202148) b_and!215975)))

(assert (=> d!885784 t!241092))

(declare-fun b_and!215977 () Bool)

(assert (= b_and!215971 (and (=> t!241092 result!202152) b_and!215977)))

(assert (=> d!885784 t!241094))

(declare-fun b_and!215979 () Bool)

(assert (= b_and!215973 (and (=> t!241094 result!202154) b_and!215979)))

(declare-fun m!3504993 () Bool)

(assert (=> d!885784 m!3504993))

(assert (=> d!885784 m!3504945))

(assert (=> b!3226390 d!885784))

(declare-fun d!885786 () Bool)

(declare-fun lt!1094398 () Bool)

(declare-fun e!2012328 () Bool)

(assert (=> d!885786 (= lt!1094398 e!2012328)))

(declare-fun res!1314038 () Bool)

(assert (=> d!885786 (=> (not res!1314038) (not e!2012328))))

(declare-fun list!12963 (BalanceConc!21414) List!36466)

(assert (=> d!885786 (= res!1314038 (= (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))) (list!12963 (singletonSeq!2358 (h!41762 tokens!494)))))))

(declare-fun e!2012329 () Bool)

(assert (=> d!885786 (= lt!1094398 e!2012329)))

(declare-fun res!1314037 () Bool)

(assert (=> d!885786 (=> (not res!1314037) (not e!2012329))))

(declare-fun lt!1094399 () tuple2!35764)

(declare-fun size!27408 (BalanceConc!21414) Int)

(assert (=> d!885786 (= res!1314037 (= (size!27408 (_1!21016 lt!1094399)) 1))))

(assert (=> d!885786 (= lt!1094399 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))))

(assert (=> d!885786 (not (isEmpty!20420 rules!2135))))

(assert (=> d!885786 (= (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 (h!41762 tokens!494)) lt!1094398)))

(declare-fun b!3226474 () Bool)

(declare-fun res!1314036 () Bool)

(assert (=> b!3226474 (=> (not res!1314036) (not e!2012329))))

(declare-fun apply!8291 (BalanceConc!21414 Int) Token!9890)

(assert (=> b!3226474 (= res!1314036 (= (apply!8291 (_1!21016 lt!1094399) 0) (h!41762 tokens!494)))))

(declare-fun b!3226475 () Bool)

(declare-fun isEmpty!20427 (BalanceConc!21412) Bool)

(assert (=> b!3226475 (= e!2012329 (isEmpty!20427 (_2!21016 lt!1094399)))))

(declare-fun b!3226476 () Bool)

(assert (=> b!3226476 (= e!2012328 (isEmpty!20427 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))))))

(assert (= (and d!885786 res!1314037) b!3226474))

(assert (= (and b!3226474 res!1314036) b!3226475))

(assert (= (and d!885786 res!1314038) b!3226476))

(assert (=> d!885786 m!3504887))

(declare-fun m!3504995 () Bool)

(assert (=> d!885786 m!3504995))

(assert (=> d!885786 m!3504887))

(declare-fun m!3504997 () Bool)

(assert (=> d!885786 m!3504997))

(declare-fun m!3504999 () Bool)

(assert (=> d!885786 m!3504999))

(assert (=> d!885786 m!3504995))

(declare-fun m!3505001 () Bool)

(assert (=> d!885786 m!3505001))

(assert (=> d!885786 m!3504923))

(assert (=> d!885786 m!3504887))

(declare-fun m!3505003 () Bool)

(assert (=> d!885786 m!3505003))

(declare-fun m!3505005 () Bool)

(assert (=> b!3226474 m!3505005))

(declare-fun m!3505007 () Bool)

(assert (=> b!3226475 m!3505007))

(assert (=> b!3226476 m!3504887))

(assert (=> b!3226476 m!3504887))

(assert (=> b!3226476 m!3504995))

(assert (=> b!3226476 m!3504995))

(assert (=> b!3226476 m!3505001))

(declare-fun m!3505009 () Bool)

(assert (=> b!3226476 m!3505009))

(assert (=> b!3226391 d!885786))

(declare-fun lt!1094402 () Bool)

(declare-fun d!885788 () Bool)

(declare-fun isEmpty!20428 (List!36466) Bool)

(assert (=> d!885788 (= lt!1094402 (isEmpty!20428 (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(declare-fun isEmpty!20429 (Conc!10900) Bool)

(assert (=> d!885788 (= lt!1094402 (isEmpty!20429 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(assert (=> d!885788 (= (isEmpty!20421 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)))) lt!1094402)))

(declare-fun bs!542873 () Bool)

(assert (= bs!542873 d!885788))

(declare-fun m!3505011 () Bool)

(assert (=> bs!542873 m!3505011))

(assert (=> bs!542873 m!3505011))

(declare-fun m!3505013 () Bool)

(assert (=> bs!542873 m!3505013))

(declare-fun m!3505015 () Bool)

(assert (=> bs!542873 m!3505015))

(assert (=> b!3226405 d!885788))

(declare-fun b!3226487 () Bool)

(declare-fun res!1314047 () Bool)

(declare-fun e!2012336 () Bool)

(assert (=> b!3226487 (=> (not res!1314047) (not e!2012336))))

(declare-fun lt!1094405 () tuple2!35764)

(declare-datatypes ((tuple2!35768 0))(
  ( (tuple2!35769 (_1!21018 List!36466) (_2!21018 List!36464)) )
))
(declare-fun lexList!1331 (LexerInterface!4851 List!36467 List!36464) tuple2!35768)

(assert (=> b!3226487 (= res!1314047 (= (list!12963 (_1!21016 lt!1094405)) (_1!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (seqFromList!3588 lt!1094384))))))))

(declare-fun d!885790 () Bool)

(assert (=> d!885790 e!2012336))

(declare-fun res!1314046 () Bool)

(assert (=> d!885790 (=> (not res!1314046) (not e!2012336))))

(declare-fun e!2012338 () Bool)

(assert (=> d!885790 (= res!1314046 e!2012338)))

(declare-fun c!542211 () Bool)

(assert (=> d!885790 (= c!542211 (> (size!27408 (_1!21016 lt!1094405)) 0))))

(declare-fun lexTailRecV2!943 (LexerInterface!4851 List!36467 BalanceConc!21412 BalanceConc!21412 BalanceConc!21412 BalanceConc!21414) tuple2!35764)

(assert (=> d!885790 (= lt!1094405 (lexTailRecV2!943 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384) (BalanceConc!21413 Empty!10899) (seqFromList!3588 lt!1094384) (BalanceConc!21415 Empty!10900)))))

(assert (=> d!885790 (= (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)) lt!1094405)))

(declare-fun b!3226488 () Bool)

(assert (=> b!3226488 (= e!2012338 (= (_2!21016 lt!1094405) (seqFromList!3588 lt!1094384)))))

(declare-fun b!3226489 () Bool)

(declare-fun e!2012337 () Bool)

(assert (=> b!3226489 (= e!2012337 (not (isEmpty!20421 (_1!21016 lt!1094405))))))

(declare-fun b!3226490 () Bool)

(assert (=> b!3226490 (= e!2012336 (= (list!12959 (_2!21016 lt!1094405)) (_2!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (seqFromList!3588 lt!1094384))))))))

(declare-fun b!3226491 () Bool)

(assert (=> b!3226491 (= e!2012338 e!2012337)))

(declare-fun res!1314045 () Bool)

(declare-fun size!27409 (BalanceConc!21412) Int)

(assert (=> b!3226491 (= res!1314045 (< (size!27409 (_2!21016 lt!1094405)) (size!27409 (seqFromList!3588 lt!1094384))))))

(assert (=> b!3226491 (=> (not res!1314045) (not e!2012337))))

(assert (= (and d!885790 c!542211) b!3226491))

(assert (= (and d!885790 (not c!542211)) b!3226488))

(assert (= (and b!3226491 res!1314045) b!3226489))

(assert (= (and d!885790 res!1314046) b!3226487))

(assert (= (and b!3226487 res!1314047) b!3226490))

(declare-fun m!3505017 () Bool)

(assert (=> b!3226491 m!3505017))

(assert (=> b!3226491 m!3504899))

(declare-fun m!3505019 () Bool)

(assert (=> b!3226491 m!3505019))

(declare-fun m!3505021 () Bool)

(assert (=> b!3226489 m!3505021))

(declare-fun m!3505023 () Bool)

(assert (=> d!885790 m!3505023))

(assert (=> d!885790 m!3504899))

(assert (=> d!885790 m!3504899))

(declare-fun m!3505025 () Bool)

(assert (=> d!885790 m!3505025))

(declare-fun m!3505027 () Bool)

(assert (=> b!3226490 m!3505027))

(assert (=> b!3226490 m!3504899))

(declare-fun m!3505029 () Bool)

(assert (=> b!3226490 m!3505029))

(assert (=> b!3226490 m!3505029))

(declare-fun m!3505031 () Bool)

(assert (=> b!3226490 m!3505031))

(declare-fun m!3505033 () Bool)

(assert (=> b!3226487 m!3505033))

(assert (=> b!3226487 m!3504899))

(assert (=> b!3226487 m!3505029))

(assert (=> b!3226487 m!3505029))

(assert (=> b!3226487 m!3505031))

(assert (=> b!3226405 d!885790))

(declare-fun d!885792 () Bool)

(declare-fun fromListB!1559 (List!36464) BalanceConc!21412)

(assert (=> d!885792 (= (seqFromList!3588 lt!1094384) (fromListB!1559 lt!1094384))))

(declare-fun bs!542874 () Bool)

(assert (= bs!542874 d!885792))

(declare-fun m!3505035 () Bool)

(assert (=> bs!542874 m!3505035))

(assert (=> b!3226405 d!885792))

(declare-fun d!885794 () Bool)

(declare-fun lt!1094406 () Bool)

(declare-fun e!2012341 () Bool)

(assert (=> d!885794 (= lt!1094406 e!2012341)))

(declare-fun res!1314052 () Bool)

(assert (=> d!885794 (=> (not res!1314052) (not e!2012341))))

(assert (=> d!885794 (= res!1314052 (= (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))) (list!12963 (singletonSeq!2358 separatorToken!241))))))

(declare-fun e!2012342 () Bool)

(assert (=> d!885794 (= lt!1094406 e!2012342)))

(declare-fun res!1314051 () Bool)

(assert (=> d!885794 (=> (not res!1314051) (not e!2012342))))

(declare-fun lt!1094407 () tuple2!35764)

(assert (=> d!885794 (= res!1314051 (= (size!27408 (_1!21016 lt!1094407)) 1))))

(assert (=> d!885794 (= lt!1094407 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))))

(assert (=> d!885794 (not (isEmpty!20420 rules!2135))))

(assert (=> d!885794 (= (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 separatorToken!241) lt!1094406)))

(declare-fun b!3226492 () Bool)

(declare-fun res!1314050 () Bool)

(assert (=> b!3226492 (=> (not res!1314050) (not e!2012342))))

(assert (=> b!3226492 (= res!1314050 (= (apply!8291 (_1!21016 lt!1094407) 0) separatorToken!241))))

(declare-fun b!3226493 () Bool)

(assert (=> b!3226493 (= e!2012342 (isEmpty!20427 (_2!21016 lt!1094407)))))

(declare-fun b!3226494 () Bool)

(assert (=> b!3226494 (= e!2012341 (isEmpty!20427 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))))))

(assert (= (and d!885794 res!1314051) b!3226492))

(assert (= (and b!3226492 res!1314050) b!3226493))

(assert (= (and d!885794 res!1314052) b!3226494))

(declare-fun m!3505037 () Bool)

(assert (=> d!885794 m!3505037))

(declare-fun m!3505039 () Bool)

(assert (=> d!885794 m!3505039))

(assert (=> d!885794 m!3505037))

(declare-fun m!3505041 () Bool)

(assert (=> d!885794 m!3505041))

(declare-fun m!3505043 () Bool)

(assert (=> d!885794 m!3505043))

(assert (=> d!885794 m!3505039))

(declare-fun m!3505045 () Bool)

(assert (=> d!885794 m!3505045))

(assert (=> d!885794 m!3504923))

(assert (=> d!885794 m!3505037))

(declare-fun m!3505047 () Bool)

(assert (=> d!885794 m!3505047))

(declare-fun m!3505049 () Bool)

(assert (=> b!3226492 m!3505049))

(declare-fun m!3505051 () Bool)

(assert (=> b!3226493 m!3505051))

(assert (=> b!3226494 m!3505037))

(assert (=> b!3226494 m!3505037))

(assert (=> b!3226494 m!3505039))

(assert (=> b!3226494 m!3505039))

(assert (=> b!3226494 m!3505045))

(declare-fun m!3505053 () Bool)

(assert (=> b!3226494 m!3505053))

(assert (=> b!3226395 d!885794))

(declare-fun d!885796 () Bool)

(assert (=> d!885796 (= (isEmpty!20420 rules!2135) ((_ is Nil!36343) rules!2135))))

(assert (=> b!3226397 d!885796))

(declare-fun d!885798 () Bool)

(declare-fun lt!1094411 () BalanceConc!21412)

(assert (=> d!885798 (= (list!12959 lt!1094411) (printList!1401 thiss!18206 (list!12963 lt!1094387)))))

(assert (=> d!885798 (= lt!1094411 (printTailRec!1348 thiss!18206 lt!1094387 0 (BalanceConc!21413 Empty!10899)))))

(assert (=> d!885798 (= (print!1916 thiss!18206 lt!1094387) lt!1094411)))

(declare-fun bs!542877 () Bool)

(assert (= bs!542877 d!885798))

(declare-fun m!3505065 () Bool)

(assert (=> bs!542877 m!3505065))

(declare-fun m!3505067 () Bool)

(assert (=> bs!542877 m!3505067))

(assert (=> bs!542877 m!3505067))

(declare-fun m!3505069 () Bool)

(assert (=> bs!542877 m!3505069))

(assert (=> bs!542877 m!3504889))

(assert (=> b!3226408 d!885798))

(declare-fun d!885804 () Bool)

(assert (=> d!885804 (= (list!12959 lt!1094385) (list!12962 (c!542199 lt!1094385)))))

(declare-fun bs!542878 () Bool)

(assert (= bs!542878 d!885804))

(declare-fun m!3505071 () Bool)

(assert (=> bs!542878 m!3505071))

(assert (=> b!3226408 d!885804))

(declare-fun d!885806 () Bool)

(declare-fun lt!1094426 () BalanceConc!21412)

(declare-fun printListTailRec!573 (LexerInterface!4851 List!36466 List!36464) List!36464)

(declare-fun dropList!1090 (BalanceConc!21414 Int) List!36466)

(assert (=> d!885806 (= (list!12959 lt!1094426) (printListTailRec!573 thiss!18206 (dropList!1090 lt!1094387 0) (list!12959 (BalanceConc!21413 Empty!10899))))))

(declare-fun e!2012358 () BalanceConc!21412)

(assert (=> d!885806 (= lt!1094426 e!2012358)))

(declare-fun c!542214 () Bool)

(assert (=> d!885806 (= c!542214 (>= 0 (size!27408 lt!1094387)))))

(declare-fun e!2012357 () Bool)

(assert (=> d!885806 e!2012357))

(declare-fun res!1314056 () Bool)

(assert (=> d!885806 (=> (not res!1314056) (not e!2012357))))

(assert (=> d!885806 (= res!1314056 (>= 0 0))))

(assert (=> d!885806 (= (printTailRec!1348 thiss!18206 lt!1094387 0 (BalanceConc!21413 Empty!10899)) lt!1094426)))

(declare-fun b!3226517 () Bool)

(assert (=> b!3226517 (= e!2012357 (<= 0 (size!27408 lt!1094387)))))

(declare-fun b!3226518 () Bool)

(assert (=> b!3226518 (= e!2012358 (BalanceConc!21413 Empty!10899))))

(declare-fun b!3226519 () Bool)

(declare-fun ++!8745 (BalanceConc!21412 BalanceConc!21412) BalanceConc!21412)

(assert (=> b!3226519 (= e!2012358 (printTailRec!1348 thiss!18206 lt!1094387 (+ 0 1) (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0)))))))

(declare-fun lt!1094429 () List!36466)

(assert (=> b!3226519 (= lt!1094429 (list!12963 lt!1094387))))

(declare-datatypes ((Unit!50930 0))(
  ( (Unit!50931) )
))
(declare-fun lt!1094427 () Unit!50930)

(declare-fun lemmaDropApply!1049 (List!36466 Int) Unit!50930)

(assert (=> b!3226519 (= lt!1094427 (lemmaDropApply!1049 lt!1094429 0))))

(declare-fun head!7085 (List!36466) Token!9890)

(declare-fun drop!1873 (List!36466 Int) List!36466)

(declare-fun apply!8292 (List!36466 Int) Token!9890)

(assert (=> b!3226519 (= (head!7085 (drop!1873 lt!1094429 0)) (apply!8292 lt!1094429 0))))

(declare-fun lt!1094432 () Unit!50930)

(assert (=> b!3226519 (= lt!1094432 lt!1094427)))

(declare-fun lt!1094430 () List!36466)

(assert (=> b!3226519 (= lt!1094430 (list!12963 lt!1094387))))

(declare-fun lt!1094428 () Unit!50930)

(declare-fun lemmaDropTail!933 (List!36466 Int) Unit!50930)

(assert (=> b!3226519 (= lt!1094428 (lemmaDropTail!933 lt!1094430 0))))

(declare-fun tail!5229 (List!36466) List!36466)

(assert (=> b!3226519 (= (tail!5229 (drop!1873 lt!1094430 0)) (drop!1873 lt!1094430 (+ 0 1)))))

(declare-fun lt!1094431 () Unit!50930)

(assert (=> b!3226519 (= lt!1094431 lt!1094428)))

(assert (= (and d!885806 res!1314056) b!3226517))

(assert (= (and d!885806 c!542214) b!3226518))

(assert (= (and d!885806 (not c!542214)) b!3226519))

(declare-fun m!3505073 () Bool)

(assert (=> d!885806 m!3505073))

(declare-fun m!3505075 () Bool)

(assert (=> d!885806 m!3505075))

(declare-fun m!3505077 () Bool)

(assert (=> d!885806 m!3505077))

(declare-fun m!3505079 () Bool)

(assert (=> d!885806 m!3505079))

(assert (=> d!885806 m!3505075))

(assert (=> d!885806 m!3505073))

(declare-fun m!3505081 () Bool)

(assert (=> d!885806 m!3505081))

(assert (=> b!3226517 m!3505077))

(declare-fun m!3505083 () Bool)

(assert (=> b!3226519 m!3505083))

(declare-fun m!3505085 () Bool)

(assert (=> b!3226519 m!3505085))

(assert (=> b!3226519 m!3505067))

(declare-fun m!3505087 () Bool)

(assert (=> b!3226519 m!3505087))

(declare-fun m!3505089 () Bool)

(assert (=> b!3226519 m!3505089))

(declare-fun m!3505091 () Bool)

(assert (=> b!3226519 m!3505091))

(declare-fun m!3505093 () Bool)

(assert (=> b!3226519 m!3505093))

(declare-fun m!3505095 () Bool)

(assert (=> b!3226519 m!3505095))

(declare-fun m!3505097 () Bool)

(assert (=> b!3226519 m!3505097))

(assert (=> b!3226519 m!3505087))

(declare-fun m!3505099 () Bool)

(assert (=> b!3226519 m!3505099))

(declare-fun m!3505101 () Bool)

(assert (=> b!3226519 m!3505101))

(declare-fun m!3505103 () Bool)

(assert (=> b!3226519 m!3505103))

(assert (=> b!3226519 m!3505083))

(assert (=> b!3226519 m!3505093))

(declare-fun m!3505105 () Bool)

(assert (=> b!3226519 m!3505105))

(assert (=> b!3226519 m!3505099))

(assert (=> b!3226519 m!3505091))

(assert (=> b!3226408 d!885806))

(declare-fun d!885808 () Bool)

(declare-fun e!2012361 () Bool)

(assert (=> d!885808 e!2012361))

(declare-fun res!1314059 () Bool)

(assert (=> d!885808 (=> (not res!1314059) (not e!2012361))))

(declare-fun lt!1094435 () BalanceConc!21414)

(assert (=> d!885808 (= res!1314059 (= (list!12963 lt!1094435) (Cons!36342 (h!41762 tokens!494) Nil!36342)))))

(declare-fun singleton!1006 (Token!9890) BalanceConc!21414)

(assert (=> d!885808 (= lt!1094435 (singleton!1006 (h!41762 tokens!494)))))

(assert (=> d!885808 (= (singletonSeq!2358 (h!41762 tokens!494)) lt!1094435)))

(declare-fun b!3226522 () Bool)

(declare-fun isBalanced!3239 (Conc!10900) Bool)

(assert (=> b!3226522 (= e!2012361 (isBalanced!3239 (c!542200 lt!1094435)))))

(assert (= (and d!885808 res!1314059) b!3226522))

(declare-fun m!3505107 () Bool)

(assert (=> d!885808 m!3505107))

(declare-fun m!3505109 () Bool)

(assert (=> d!885808 m!3505109))

(declare-fun m!3505111 () Bool)

(assert (=> b!3226522 m!3505111))

(assert (=> b!3226408 d!885808))

(declare-fun d!885810 () Bool)

(declare-fun c!542217 () Bool)

(assert (=> d!885810 (= c!542217 ((_ is Cons!36342) (Cons!36342 (h!41762 tokens!494) Nil!36342)))))

(declare-fun e!2012364 () List!36464)

(assert (=> d!885810 (= (printList!1401 thiss!18206 (Cons!36342 (h!41762 tokens!494) Nil!36342)) e!2012364)))

(declare-fun b!3226527 () Bool)

(declare-fun ++!8746 (List!36464 List!36464) List!36464)

(assert (=> b!3226527 (= e!2012364 (++!8746 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))) (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))))

(declare-fun b!3226528 () Bool)

(assert (=> b!3226528 (= e!2012364 Nil!36340)))

(assert (= (and d!885810 c!542217) b!3226527))

(assert (= (and d!885810 (not c!542217)) b!3226528))

(declare-fun m!3505113 () Bool)

(assert (=> b!3226527 m!3505113))

(assert (=> b!3226527 m!3505113))

(declare-fun m!3505115 () Bool)

(assert (=> b!3226527 m!3505115))

(declare-fun m!3505117 () Bool)

(assert (=> b!3226527 m!3505117))

(assert (=> b!3226527 m!3505115))

(assert (=> b!3226527 m!3505117))

(declare-fun m!3505119 () Bool)

(assert (=> b!3226527 m!3505119))

(assert (=> b!3226408 d!885810))

(declare-fun d!885812 () Bool)

(declare-fun res!1314064 () Bool)

(declare-fun e!2012369 () Bool)

(assert (=> d!885812 (=> res!1314064 e!2012369)))

(assert (=> d!885812 (= res!1314064 (not ((_ is Cons!36343) rules!2135)))))

(assert (=> d!885812 (= (sepAndNonSepRulesDisjointChars!1456 rules!2135 rules!2135) e!2012369)))

(declare-fun b!3226533 () Bool)

(declare-fun e!2012370 () Bool)

(assert (=> b!3226533 (= e!2012369 e!2012370)))

(declare-fun res!1314065 () Bool)

(assert (=> b!3226533 (=> (not res!1314065) (not e!2012370))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!603 (Rule!10324 List!36467) Bool)

(assert (=> b!3226533 (= res!1314065 (ruleDisjointCharsFromAllFromOtherType!603 (h!41763 rules!2135) rules!2135))))

(declare-fun b!3226534 () Bool)

(assert (=> b!3226534 (= e!2012370 (sepAndNonSepRulesDisjointChars!1456 rules!2135 (t!241088 rules!2135)))))

(assert (= (and d!885812 (not res!1314064)) b!3226533))

(assert (= (and b!3226533 res!1314065) b!3226534))

(declare-fun m!3505121 () Bool)

(assert (=> b!3226533 m!3505121))

(declare-fun m!3505123 () Bool)

(assert (=> b!3226534 m!3505123))

(assert (=> b!3226407 d!885812))

(declare-fun bs!542885 () Bool)

(declare-fun d!885814 () Bool)

(assert (= bs!542885 (and d!885814 b!3226398)))

(declare-fun lambda!118145 () Int)

(assert (=> bs!542885 (not (= lambda!118145 lambda!118135))))

(declare-fun b!3226691 () Bool)

(declare-fun e!2012481 () Bool)

(assert (=> b!3226691 (= e!2012481 true)))

(declare-fun b!3226690 () Bool)

(declare-fun e!2012480 () Bool)

(assert (=> b!3226690 (= e!2012480 e!2012481)))

(declare-fun b!3226689 () Bool)

(declare-fun e!2012479 () Bool)

(assert (=> b!3226689 (= e!2012479 e!2012480)))

(assert (=> d!885814 e!2012479))

(assert (= b!3226690 b!3226691))

(assert (= b!3226689 b!3226690))

(assert (= (and d!885814 ((_ is Cons!36343) rules!2135)) b!3226689))

(declare-fun order!18729 () Int)

(declare-fun order!18731 () Int)

(declare-fun dynLambda!14769 (Int Int) Int)

(declare-fun dynLambda!14770 (Int Int) Int)

(assert (=> b!3226691 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14770 order!18731 lambda!118145))))

(declare-fun order!18733 () Int)

(declare-fun dynLambda!14771 (Int Int) Int)

(assert (=> b!3226691 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14770 order!18731 lambda!118145))))

(assert (=> d!885814 true))

(declare-fun e!2012472 () Bool)

(assert (=> d!885814 e!2012472))

(declare-fun res!1314118 () Bool)

(assert (=> d!885814 (=> (not res!1314118) (not e!2012472))))

(declare-fun lt!1094482 () Bool)

(assert (=> d!885814 (= res!1314118 (= lt!1094482 (forall!7458 (list!12963 (seqFromList!3587 tokens!494)) lambda!118145)))))

(declare-fun forall!7460 (BalanceConc!21414 Int) Bool)

(assert (=> d!885814 (= lt!1094482 (forall!7460 (seqFromList!3587 tokens!494) lambda!118145))))

(assert (=> d!885814 (not (isEmpty!20420 rules!2135))))

(assert (=> d!885814 (= (rulesProduceEachTokenIndividually!1302 thiss!18206 rules!2135 (seqFromList!3587 tokens!494)) lt!1094482)))

(declare-fun b!3226680 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1739 (LexerInterface!4851 List!36467 List!36466) Bool)

(assert (=> b!3226680 (= e!2012472 (= lt!1094482 (rulesProduceEachTokenIndividuallyList!1739 thiss!18206 rules!2135 (list!12963 (seqFromList!3587 tokens!494)))))))

(assert (= (and d!885814 res!1314118) b!3226680))

(assert (=> d!885814 m!3504871))

(declare-fun m!3505309 () Bool)

(assert (=> d!885814 m!3505309))

(assert (=> d!885814 m!3505309))

(declare-fun m!3505311 () Bool)

(assert (=> d!885814 m!3505311))

(assert (=> d!885814 m!3504871))

(declare-fun m!3505313 () Bool)

(assert (=> d!885814 m!3505313))

(assert (=> d!885814 m!3504923))

(assert (=> b!3226680 m!3504871))

(assert (=> b!3226680 m!3505309))

(assert (=> b!3226680 m!3505309))

(declare-fun m!3505315 () Bool)

(assert (=> b!3226680 m!3505315))

(assert (=> b!3226396 d!885814))

(declare-fun d!885864 () Bool)

(declare-fun fromListB!1560 (List!36466) BalanceConc!21414)

(assert (=> d!885864 (= (seqFromList!3587 tokens!494) (fromListB!1560 tokens!494))))

(declare-fun bs!542886 () Bool)

(assert (= bs!542886 d!885864))

(declare-fun m!3505317 () Bool)

(assert (=> bs!542886 m!3505317))

(assert (=> b!3226396 d!885864))

(declare-fun b!3226706 () Bool)

(declare-fun e!2012484 () Bool)

(declare-fun tp!1016717 () Bool)

(assert (=> b!3226706 (= e!2012484 tp!1016717)))

(declare-fun b!3226707 () Bool)

(declare-fun tp!1016719 () Bool)

(declare-fun tp!1016716 () Bool)

(assert (=> b!3226707 (= e!2012484 (and tp!1016719 tp!1016716))))

(assert (=> b!3226410 (= tp!1016638 e!2012484)))

(declare-fun b!3226704 () Bool)

(declare-fun tp_is_empty!17321 () Bool)

(assert (=> b!3226704 (= e!2012484 tp_is_empty!17321)))

(declare-fun b!3226705 () Bool)

(declare-fun tp!1016718 () Bool)

(declare-fun tp!1016715 () Bool)

(assert (=> b!3226705 (= e!2012484 (and tp!1016718 tp!1016715))))

(assert (= (and b!3226410 ((_ is ElementMatch!10021) (regex!5262 (rule!7720 (h!41762 tokens!494))))) b!3226704))

(assert (= (and b!3226410 ((_ is Concat!15513) (regex!5262 (rule!7720 (h!41762 tokens!494))))) b!3226705))

(assert (= (and b!3226410 ((_ is Star!10021) (regex!5262 (rule!7720 (h!41762 tokens!494))))) b!3226706))

(assert (= (and b!3226410 ((_ is Union!10021) (regex!5262 (rule!7720 (h!41762 tokens!494))))) b!3226707))

(declare-fun b!3226721 () Bool)

(declare-fun b_free!86053 () Bool)

(declare-fun b_next!86757 () Bool)

(assert (=> b!3226721 (= b_free!86053 (not b_next!86757))))

(declare-fun tp!1016733 () Bool)

(declare-fun b_and!216007 () Bool)

(assert (=> b!3226721 (= tp!1016733 b_and!216007)))

(declare-fun b_free!86055 () Bool)

(declare-fun b_next!86759 () Bool)

(assert (=> b!3226721 (= b_free!86055 (not b_next!86759))))

(declare-fun t!241135 () Bool)

(declare-fun tb!159687 () Bool)

(assert (=> (and b!3226721 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241135) tb!159687))

(declare-fun result!202196 () Bool)

(assert (= result!202196 result!202148))

(assert (=> b!3226427 t!241135))

(declare-fun t!241137 () Bool)

(declare-fun tb!159689 () Bool)

(assert (=> (and b!3226721 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241137) tb!159689))

(declare-fun result!202198 () Bool)

(assert (= result!202198 result!202156))

(assert (=> b!3226456 t!241137))

(assert (=> d!885784 t!241135))

(declare-fun tp!1016730 () Bool)

(declare-fun b_and!216009 () Bool)

(assert (=> b!3226721 (= tp!1016730 (and (=> t!241135 result!202196) (=> t!241137 result!202198) b_and!216009))))

(declare-fun e!2012502 () Bool)

(assert (=> b!3226721 (= e!2012502 (and tp!1016733 tp!1016730))))

(declare-fun e!2012499 () Bool)

(declare-fun e!2012501 () Bool)

(declare-fun tp!1016732 () Bool)

(declare-fun b!3226719 () Bool)

(assert (=> b!3226719 (= e!2012499 (and (inv!21 (value!170427 (h!41762 (t!241087 tokens!494)))) e!2012501 tp!1016732))))

(declare-fun e!2012498 () Bool)

(assert (=> b!3226400 (= tp!1016639 e!2012498)))

(declare-fun tp!1016731 () Bool)

(declare-fun b!3226720 () Bool)

(assert (=> b!3226720 (= e!2012501 (and tp!1016731 (inv!49218 (tag!5794 (rule!7720 (h!41762 (t!241087 tokens!494))))) (inv!49222 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) e!2012502))))

(declare-fun tp!1016734 () Bool)

(declare-fun b!3226718 () Bool)

(assert (=> b!3226718 (= e!2012498 (and (inv!49221 (h!41762 (t!241087 tokens!494))) e!2012499 tp!1016734))))

(assert (= b!3226720 b!3226721))

(assert (= b!3226719 b!3226720))

(assert (= b!3226718 b!3226719))

(assert (= (and b!3226400 ((_ is Cons!36342) (t!241087 tokens!494))) b!3226718))

(declare-fun m!3505319 () Bool)

(assert (=> b!3226719 m!3505319))

(declare-fun m!3505321 () Bool)

(assert (=> b!3226720 m!3505321))

(declare-fun m!3505323 () Bool)

(assert (=> b!3226720 m!3505323))

(declare-fun m!3505325 () Bool)

(assert (=> b!3226718 m!3505325))

(declare-fun b!3226726 () Bool)

(declare-fun e!2012505 () Bool)

(declare-fun tp!1016737 () Bool)

(assert (=> b!3226726 (= e!2012505 (and tp_is_empty!17321 tp!1016737))))

(assert (=> b!3226409 (= tp!1016633 e!2012505)))

(assert (= (and b!3226409 ((_ is Cons!36340) (originalCharacters!5976 separatorToken!241))) b!3226726))

(declare-fun b!3226729 () Bool)

(declare-fun e!2012506 () Bool)

(declare-fun tp!1016740 () Bool)

(assert (=> b!3226729 (= e!2012506 tp!1016740)))

(declare-fun b!3226730 () Bool)

(declare-fun tp!1016742 () Bool)

(declare-fun tp!1016739 () Bool)

(assert (=> b!3226730 (= e!2012506 (and tp!1016742 tp!1016739))))

(assert (=> b!3226399 (= tp!1016636 e!2012506)))

(declare-fun b!3226727 () Bool)

(assert (=> b!3226727 (= e!2012506 tp_is_empty!17321)))

(declare-fun b!3226728 () Bool)

(declare-fun tp!1016741 () Bool)

(declare-fun tp!1016738 () Bool)

(assert (=> b!3226728 (= e!2012506 (and tp!1016741 tp!1016738))))

(assert (= (and b!3226399 ((_ is ElementMatch!10021) (regex!5262 (rule!7720 separatorToken!241)))) b!3226727))

(assert (= (and b!3226399 ((_ is Concat!15513) (regex!5262 (rule!7720 separatorToken!241)))) b!3226728))

(assert (= (and b!3226399 ((_ is Star!10021) (regex!5262 (rule!7720 separatorToken!241)))) b!3226729))

(assert (= (and b!3226399 ((_ is Union!10021) (regex!5262 (rule!7720 separatorToken!241)))) b!3226730))

(declare-fun b!3226731 () Bool)

(declare-fun e!2012507 () Bool)

(declare-fun tp!1016743 () Bool)

(assert (=> b!3226731 (= e!2012507 (and tp_is_empty!17321 tp!1016743))))

(assert (=> b!3226402 (= tp!1016637 e!2012507)))

(assert (= (and b!3226402 ((_ is Cons!36340) (originalCharacters!5976 (h!41762 tokens!494)))) b!3226731))

(declare-fun b!3226734 () Bool)

(declare-fun e!2012508 () Bool)

(declare-fun tp!1016746 () Bool)

(assert (=> b!3226734 (= e!2012508 tp!1016746)))

(declare-fun b!3226735 () Bool)

(declare-fun tp!1016748 () Bool)

(declare-fun tp!1016745 () Bool)

(assert (=> b!3226735 (= e!2012508 (and tp!1016748 tp!1016745))))

(assert (=> b!3226403 (= tp!1016632 e!2012508)))

(declare-fun b!3226732 () Bool)

(assert (=> b!3226732 (= e!2012508 tp_is_empty!17321)))

(declare-fun b!3226733 () Bool)

(declare-fun tp!1016747 () Bool)

(declare-fun tp!1016744 () Bool)

(assert (=> b!3226733 (= e!2012508 (and tp!1016747 tp!1016744))))

(assert (= (and b!3226403 ((_ is ElementMatch!10021) (regex!5262 (h!41763 rules!2135)))) b!3226732))

(assert (= (and b!3226403 ((_ is Concat!15513) (regex!5262 (h!41763 rules!2135)))) b!3226733))

(assert (= (and b!3226403 ((_ is Star!10021) (regex!5262 (h!41763 rules!2135)))) b!3226734))

(assert (= (and b!3226403 ((_ is Union!10021) (regex!5262 (h!41763 rules!2135)))) b!3226735))

(declare-fun b!3226746 () Bool)

(declare-fun b_free!86057 () Bool)

(declare-fun b_next!86761 () Bool)

(assert (=> b!3226746 (= b_free!86057 (not b_next!86761))))

(declare-fun tp!1016760 () Bool)

(declare-fun b_and!216011 () Bool)

(assert (=> b!3226746 (= tp!1016760 b_and!216011)))

(declare-fun b_free!86059 () Bool)

(declare-fun b_next!86763 () Bool)

(assert (=> b!3226746 (= b_free!86059 (not b_next!86763))))

(declare-fun tb!159691 () Bool)

(declare-fun t!241139 () Bool)

(assert (=> (and b!3226746 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241139) tb!159691))

(declare-fun result!202204 () Bool)

(assert (= result!202204 result!202148))

(assert (=> b!3226427 t!241139))

(declare-fun tb!159693 () Bool)

(declare-fun t!241141 () Bool)

(assert (=> (and b!3226746 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241141) tb!159693))

(declare-fun result!202206 () Bool)

(assert (= result!202206 result!202156))

(assert (=> b!3226456 t!241141))

(assert (=> d!885784 t!241139))

(declare-fun tp!1016757 () Bool)

(declare-fun b_and!216013 () Bool)

(assert (=> b!3226746 (= tp!1016757 (and (=> t!241139 result!202204) (=> t!241141 result!202206) b_and!216013))))

(declare-fun e!2012519 () Bool)

(assert (=> b!3226746 (= e!2012519 (and tp!1016760 tp!1016757))))

(declare-fun tp!1016759 () Bool)

(declare-fun e!2012517 () Bool)

(declare-fun b!3226745 () Bool)

(assert (=> b!3226745 (= e!2012517 (and tp!1016759 (inv!49218 (tag!5794 (h!41763 (t!241088 rules!2135)))) (inv!49222 (transformation!5262 (h!41763 (t!241088 rules!2135)))) e!2012519))))

(declare-fun b!3226744 () Bool)

(declare-fun e!2012518 () Bool)

(declare-fun tp!1016758 () Bool)

(assert (=> b!3226744 (= e!2012518 (and e!2012517 tp!1016758))))

(assert (=> b!3226406 (= tp!1016634 e!2012518)))

(assert (= b!3226745 b!3226746))

(assert (= b!3226744 b!3226745))

(assert (= (and b!3226406 ((_ is Cons!36343) (t!241088 rules!2135))) b!3226744))

(declare-fun m!3505327 () Bool)

(assert (=> b!3226745 m!3505327))

(declare-fun m!3505329 () Bool)

(assert (=> b!3226745 m!3505329))

(declare-fun b_lambda!88795 () Bool)

(assert (= b_lambda!88775 (or (and b!3226746 b_free!86059 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))))) (and b!3226721 b_free!86055 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))))) (and b!3226389 b_free!86043 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))))) (and b!3226394 b_free!86035 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))))) (and b!3226392 b_free!86039) b_lambda!88795)))

(declare-fun b_lambda!88797 () Bool)

(assert (= b_lambda!88777 (or (and b!3226721 b_free!86055 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226392 b_free!86039 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226394 b_free!86035) (and b!3226746 b_free!86059 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226389 b_free!86043 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) b_lambda!88797)))

(declare-fun b_lambda!88799 () Bool)

(assert (= b_lambda!88771 (or (and b!3226721 b_free!86055 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226392 b_free!86039 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226394 b_free!86035) (and b!3226746 b_free!86059 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (and b!3226389 b_free!86043 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) b_lambda!88799)))

(declare-fun b_lambda!88801 () Bool)

(assert (= b_lambda!88773 (or b!3226398 b_lambda!88801)))

(declare-fun bs!542887 () Bool)

(declare-fun d!885866 () Bool)

(assert (= bs!542887 (and d!885866 b!3226398)))

(assert (=> bs!542887 (= (dynLambda!14768 lambda!118135 (h!41762 tokens!494)) (not (isSeparator!5262 (rule!7720 (h!41762 tokens!494)))))))

(assert (=> b!3226453 d!885866))

(check-sat b_and!215977 (not b!3226492) (not b!3226464) (not d!885762) (not d!885814) (not b!3226493) (not b!3226689) (not d!885772) (not d!885770) (not b!3226454) (not b!3226490) (not b!3226458) (not b_lambda!88795) (not b!3226422) (not b_next!86757) (not d!885760) (not d!885780) (not d!885786) (not b_lambda!88801) (not b_next!86741) (not d!885794) (not b_lambda!88797) (not d!885864) (not b!3226491) b_and!216007 (not b!3226720) (not b!3226733) (not b!3226456) (not b!3226489) (not b!3226728) (not b!3226444) (not b!3226707) b_and!215951 (not d!885778) (not b!3226461) (not b!3226476) (not b!3226487) (not b!3226729) (not b!3226428) (not b!3226680) (not d!885782) tp_is_empty!17321 (not b!3226474) (not b!3226731) (not b!3226463) b_and!216011 (not b_next!86747) (not b_next!86761) (not b!3226718) (not b!3226467) b_and!215959 (not b!3226457) (not b!3226745) (not b_next!86763) (not b!3226433) (not d!885808) (not b!3226726) (not b_next!86759) (not d!885804) (not b!3226734) (not b!3226705) (not b!3226446) (not tb!159661) (not b_next!86743) (not b!3226455) (not d!885784) (not d!885790) (not b!3226494) b_and!215955 (not b!3226519) (not b_next!86745) (not b_lambda!88799) (not b!3226735) (not b!3226706) (not d!885806) (not b!3226533) (not b!3226522) (not b!3226475) (not b!3226448) (not b!3226527) b_and!215979 (not b!3226719) (not b!3226427) (not d!885792) (not b_next!86737) (not b!3226517) b_and!216009 (not b!3226459) (not b!3226534) (not b_next!86739) (not d!885788) (not d!885798) (not b!3226730) (not b!3226744) b_and!216013 b_and!215975 (not tb!159655))
(check-sat (not b_next!86757) (not b_next!86741) b_and!216007 b_and!215951 b_and!215977 b_and!215959 (not b_next!86763) (not b_next!86759) (not b_next!86743) b_and!215955 (not b_next!86745) b_and!215979 (not b_next!86739) b_and!216011 (not b_next!86747) (not b_next!86761) (not b_next!86737) b_and!216009 b_and!216013 b_and!215975)
(get-model)

(declare-fun d!885868 () Bool)

(assert (=> d!885868 true))

(declare-fun lambda!118148 () Int)

(declare-fun order!18735 () Int)

(declare-fun dynLambda!14772 (Int Int) Int)

(assert (=> d!885868 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (dynLambda!14772 order!18735 lambda!118148))))

(assert (=> d!885868 true))

(assert (=> d!885868 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (dynLambda!14772 order!18735 lambda!118148))))

(declare-fun Forall!1276 (Int) Bool)

(assert (=> d!885868 (= (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (Forall!1276 lambda!118148))))

(declare-fun bs!542888 () Bool)

(assert (= bs!542888 d!885868))

(declare-fun m!3505331 () Bool)

(assert (=> bs!542888 m!3505331))

(assert (=> d!885760 d!885868))

(declare-fun d!885870 () Bool)

(declare-fun lt!1094485 () Bool)

(assert (=> d!885870 (= lt!1094485 (isEmpty!20425 (list!12959 (_2!21016 lt!1094399))))))

(declare-fun isEmpty!20430 (Conc!10899) Bool)

(assert (=> d!885870 (= lt!1094485 (isEmpty!20430 (c!542199 (_2!21016 lt!1094399))))))

(assert (=> d!885870 (= (isEmpty!20427 (_2!21016 lt!1094399)) lt!1094485)))

(declare-fun bs!542889 () Bool)

(assert (= bs!542889 d!885870))

(declare-fun m!3505333 () Bool)

(assert (=> bs!542889 m!3505333))

(assert (=> bs!542889 m!3505333))

(declare-fun m!3505335 () Bool)

(assert (=> bs!542889 m!3505335))

(declare-fun m!3505337 () Bool)

(assert (=> bs!542889 m!3505337))

(assert (=> b!3226475 d!885870))

(declare-fun d!885872 () Bool)

(declare-fun charsToInt!0 (List!36465) (_ BitVec 32))

(assert (=> d!885872 (= (inv!16 (value!170427 (h!41762 tokens!494))) (= (charsToInt!0 (text!38891 (value!170427 (h!41762 tokens!494)))) (value!170418 (value!170427 (h!41762 tokens!494)))))))

(declare-fun bs!542890 () Bool)

(assert (= bs!542890 d!885872))

(declare-fun m!3505339 () Bool)

(assert (=> bs!542890 m!3505339))

(assert (=> b!3226463 d!885872))

(declare-fun d!885874 () Bool)

(declare-fun lt!1094488 () Token!9890)

(assert (=> d!885874 (= lt!1094488 (apply!8292 (list!12963 (_1!21016 lt!1094407)) 0))))

(declare-fun apply!8293 (Conc!10900 Int) Token!9890)

(assert (=> d!885874 (= lt!1094488 (apply!8293 (c!542200 (_1!21016 lt!1094407)) 0))))

(declare-fun e!2012523 () Bool)

(assert (=> d!885874 e!2012523))

(declare-fun res!1314126 () Bool)

(assert (=> d!885874 (=> (not res!1314126) (not e!2012523))))

(assert (=> d!885874 (= res!1314126 (<= 0 0))))

(assert (=> d!885874 (= (apply!8291 (_1!21016 lt!1094407) 0) lt!1094488)))

(declare-fun b!3226753 () Bool)

(assert (=> b!3226753 (= e!2012523 (< 0 (size!27408 (_1!21016 lt!1094407))))))

(assert (= (and d!885874 res!1314126) b!3226753))

(declare-fun m!3505341 () Bool)

(assert (=> d!885874 m!3505341))

(assert (=> d!885874 m!3505341))

(declare-fun m!3505343 () Bool)

(assert (=> d!885874 m!3505343))

(declare-fun m!3505345 () Bool)

(assert (=> d!885874 m!3505345))

(assert (=> b!3226753 m!3505041))

(assert (=> b!3226492 d!885874))

(declare-fun d!885876 () Bool)

(assert (=> d!885876 (= (list!12959 lt!1094391) (list!12962 (c!542199 lt!1094391)))))

(declare-fun bs!542891 () Bool)

(assert (= bs!542891 d!885876))

(declare-fun m!3505347 () Bool)

(assert (=> bs!542891 m!3505347))

(assert (=> d!885784 d!885876))

(declare-fun d!885878 () Bool)

(declare-fun lt!1094491 () Int)

(declare-fun size!27410 (List!36466) Int)

(assert (=> d!885878 (= lt!1094491 (size!27410 (list!12963 lt!1094387)))))

(declare-fun size!27411 (Conc!10900) Int)

(assert (=> d!885878 (= lt!1094491 (size!27411 (c!542200 lt!1094387)))))

(assert (=> d!885878 (= (size!27408 lt!1094387) lt!1094491)))

(declare-fun bs!542892 () Bool)

(assert (= bs!542892 d!885878))

(assert (=> bs!542892 m!3505067))

(assert (=> bs!542892 m!3505067))

(declare-fun m!3505349 () Bool)

(assert (=> bs!542892 m!3505349))

(declare-fun m!3505351 () Bool)

(assert (=> bs!542892 m!3505351))

(assert (=> b!3226517 d!885878))

(declare-fun lt!1094492 () Bool)

(declare-fun d!885880 () Bool)

(assert (=> d!885880 (= lt!1094492 (isEmpty!20425 (list!12959 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))))

(assert (=> d!885880 (= lt!1094492 (isEmpty!20430 (c!542199 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))))

(assert (=> d!885880 (= (isEmpty!20427 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))) lt!1094492)))

(declare-fun bs!542893 () Bool)

(assert (= bs!542893 d!885880))

(declare-fun m!3505353 () Bool)

(assert (=> bs!542893 m!3505353))

(assert (=> bs!542893 m!3505353))

(declare-fun m!3505355 () Bool)

(assert (=> bs!542893 m!3505355))

(declare-fun m!3505357 () Bool)

(assert (=> bs!542893 m!3505357))

(assert (=> b!3226494 d!885880))

(declare-fun b!3226754 () Bool)

(declare-fun res!1314129 () Bool)

(declare-fun e!2012524 () Bool)

(assert (=> b!3226754 (=> (not res!1314129) (not e!2012524))))

(declare-fun lt!1094493 () tuple2!35764)

(assert (=> b!3226754 (= res!1314129 (= (list!12963 (_1!21016 lt!1094493)) (_1!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))))

(declare-fun d!885882 () Bool)

(assert (=> d!885882 e!2012524))

(declare-fun res!1314128 () Bool)

(assert (=> d!885882 (=> (not res!1314128) (not e!2012524))))

(declare-fun e!2012526 () Bool)

(assert (=> d!885882 (= res!1314128 e!2012526)))

(declare-fun c!542235 () Bool)

(assert (=> d!885882 (= c!542235 (> (size!27408 (_1!21016 lt!1094493)) 0))))

(assert (=> d!885882 (= lt!1094493 (lexTailRecV2!943 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)) (BalanceConc!21413 Empty!10899) (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)) (BalanceConc!21415 Empty!10900)))))

(assert (=> d!885882 (= (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))) lt!1094493)))

(declare-fun b!3226755 () Bool)

(assert (=> b!3226755 (= e!2012526 (= (_2!21016 lt!1094493) (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))))

(declare-fun b!3226756 () Bool)

(declare-fun e!2012525 () Bool)

(assert (=> b!3226756 (= e!2012525 (not (isEmpty!20421 (_1!21016 lt!1094493))))))

(declare-fun b!3226757 () Bool)

(assert (=> b!3226757 (= e!2012524 (= (list!12959 (_2!21016 lt!1094493)) (_2!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))))

(declare-fun b!3226758 () Bool)

(assert (=> b!3226758 (= e!2012526 e!2012525)))

(declare-fun res!1314127 () Bool)

(assert (=> b!3226758 (= res!1314127 (< (size!27409 (_2!21016 lt!1094493)) (size!27409 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))

(assert (=> b!3226758 (=> (not res!1314127) (not e!2012525))))

(assert (= (and d!885882 c!542235) b!3226758))

(assert (= (and d!885882 (not c!542235)) b!3226755))

(assert (= (and b!3226758 res!1314127) b!3226756))

(assert (= (and d!885882 res!1314128) b!3226754))

(assert (= (and b!3226754 res!1314129) b!3226757))

(declare-fun m!3505359 () Bool)

(assert (=> b!3226758 m!3505359))

(assert (=> b!3226758 m!3505039))

(declare-fun m!3505361 () Bool)

(assert (=> b!3226758 m!3505361))

(declare-fun m!3505363 () Bool)

(assert (=> b!3226756 m!3505363))

(declare-fun m!3505365 () Bool)

(assert (=> d!885882 m!3505365))

(assert (=> d!885882 m!3505039))

(assert (=> d!885882 m!3505039))

(declare-fun m!3505367 () Bool)

(assert (=> d!885882 m!3505367))

(declare-fun m!3505369 () Bool)

(assert (=> b!3226757 m!3505369))

(assert (=> b!3226757 m!3505039))

(declare-fun m!3505371 () Bool)

(assert (=> b!3226757 m!3505371))

(assert (=> b!3226757 m!3505371))

(declare-fun m!3505373 () Bool)

(assert (=> b!3226757 m!3505373))

(declare-fun m!3505375 () Bool)

(assert (=> b!3226754 m!3505375))

(assert (=> b!3226754 m!3505039))

(assert (=> b!3226754 m!3505371))

(assert (=> b!3226754 m!3505371))

(assert (=> b!3226754 m!3505373))

(assert (=> b!3226494 d!885882))

(declare-fun d!885884 () Bool)

(declare-fun lt!1094494 () BalanceConc!21412)

(assert (=> d!885884 (= (list!12959 lt!1094494) (printList!1401 thiss!18206 (list!12963 (singletonSeq!2358 separatorToken!241))))))

(assert (=> d!885884 (= lt!1094494 (printTailRec!1348 thiss!18206 (singletonSeq!2358 separatorToken!241) 0 (BalanceConc!21413 Empty!10899)))))

(assert (=> d!885884 (= (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)) lt!1094494)))

(declare-fun bs!542894 () Bool)

(assert (= bs!542894 d!885884))

(declare-fun m!3505377 () Bool)

(assert (=> bs!542894 m!3505377))

(assert (=> bs!542894 m!3505037))

(assert (=> bs!542894 m!3505047))

(assert (=> bs!542894 m!3505047))

(declare-fun m!3505379 () Bool)

(assert (=> bs!542894 m!3505379))

(assert (=> bs!542894 m!3505037))

(declare-fun m!3505381 () Bool)

(assert (=> bs!542894 m!3505381))

(assert (=> b!3226494 d!885884))

(declare-fun d!885886 () Bool)

(declare-fun e!2012527 () Bool)

(assert (=> d!885886 e!2012527))

(declare-fun res!1314130 () Bool)

(assert (=> d!885886 (=> (not res!1314130) (not e!2012527))))

(declare-fun lt!1094495 () BalanceConc!21414)

(assert (=> d!885886 (= res!1314130 (= (list!12963 lt!1094495) (Cons!36342 separatorToken!241 Nil!36342)))))

(assert (=> d!885886 (= lt!1094495 (singleton!1006 separatorToken!241))))

(assert (=> d!885886 (= (singletonSeq!2358 separatorToken!241) lt!1094495)))

(declare-fun b!3226759 () Bool)

(assert (=> b!3226759 (= e!2012527 (isBalanced!3239 (c!542200 lt!1094495)))))

(assert (= (and d!885886 res!1314130) b!3226759))

(declare-fun m!3505383 () Bool)

(assert (=> d!885886 m!3505383))

(declare-fun m!3505385 () Bool)

(assert (=> d!885886 m!3505385))

(declare-fun m!3505387 () Bool)

(assert (=> b!3226759 m!3505387))

(assert (=> b!3226494 d!885886))

(declare-fun d!885888 () Bool)

(assert (=> d!885888 (= (inv!49218 (tag!5794 (h!41763 (t!241088 rules!2135)))) (= (mod (str.len (value!170426 (tag!5794 (h!41763 (t!241088 rules!2135))))) 2) 0))))

(assert (=> b!3226745 d!885888))

(declare-fun d!885890 () Bool)

(declare-fun res!1314131 () Bool)

(declare-fun e!2012528 () Bool)

(assert (=> d!885890 (=> (not res!1314131) (not e!2012528))))

(assert (=> d!885890 (= res!1314131 (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toValue!7366 (transformation!5262 (h!41763 (t!241088 rules!2135))))))))

(assert (=> d!885890 (= (inv!49222 (transformation!5262 (h!41763 (t!241088 rules!2135)))) e!2012528)))

(declare-fun b!3226760 () Bool)

(assert (=> b!3226760 (= e!2012528 (equivClasses!2066 (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toValue!7366 (transformation!5262 (h!41763 (t!241088 rules!2135))))))))

(assert (= (and d!885890 res!1314131) b!3226760))

(declare-fun m!3505389 () Bool)

(assert (=> d!885890 m!3505389))

(declare-fun m!3505391 () Bool)

(assert (=> b!3226760 m!3505391))

(assert (=> b!3226745 d!885890))

(declare-fun b!3226772 () Bool)

(declare-fun e!2012534 () List!36464)

(assert (=> b!3226772 (= e!2012534 (++!8746 (list!12962 (left!28296 (c!542199 (charsOf!3278 (h!41762 tokens!494))))) (list!12962 (right!28626 (c!542199 (charsOf!3278 (h!41762 tokens!494)))))))))

(declare-fun b!3226771 () Bool)

(declare-fun list!12965 (IArray!21803) List!36464)

(assert (=> b!3226771 (= e!2012534 (list!12965 (xs!14017 (c!542199 (charsOf!3278 (h!41762 tokens!494))))))))

(declare-fun b!3226770 () Bool)

(declare-fun e!2012533 () List!36464)

(assert (=> b!3226770 (= e!2012533 e!2012534)))

(declare-fun c!542241 () Bool)

(assert (=> b!3226770 (= c!542241 ((_ is Leaf!17141) (c!542199 (charsOf!3278 (h!41762 tokens!494)))))))

(declare-fun d!885892 () Bool)

(declare-fun c!542240 () Bool)

(assert (=> d!885892 (= c!542240 ((_ is Empty!10899) (c!542199 (charsOf!3278 (h!41762 tokens!494)))))))

(assert (=> d!885892 (= (list!12962 (c!542199 (charsOf!3278 (h!41762 tokens!494)))) e!2012533)))

(declare-fun b!3226769 () Bool)

(assert (=> b!3226769 (= e!2012533 Nil!36340)))

(assert (= (and d!885892 c!542240) b!3226769))

(assert (= (and d!885892 (not c!542240)) b!3226770))

(assert (= (and b!3226770 c!542241) b!3226771))

(assert (= (and b!3226770 (not c!542241)) b!3226772))

(declare-fun m!3505393 () Bool)

(assert (=> b!3226772 m!3505393))

(declare-fun m!3505395 () Bool)

(assert (=> b!3226772 m!3505395))

(assert (=> b!3226772 m!3505393))

(assert (=> b!3226772 m!3505395))

(declare-fun m!3505397 () Bool)

(assert (=> b!3226772 m!3505397))

(declare-fun m!3505399 () Bool)

(assert (=> b!3226771 m!3505399))

(assert (=> d!885782 d!885892))

(declare-fun d!885894 () Bool)

(declare-fun charsToBigInt!0 (List!36465 Int) Int)

(assert (=> d!885894 (= (inv!15 (value!170427 (h!41762 tokens!494))) (= (charsToBigInt!0 (text!38893 (value!170427 (h!41762 tokens!494))) 0) (value!170422 (value!170427 (h!41762 tokens!494)))))))

(declare-fun bs!542895 () Bool)

(assert (= bs!542895 d!885894))

(declare-fun m!3505401 () Bool)

(assert (=> bs!542895 m!3505401))

(assert (=> b!3226459 d!885894))

(declare-fun lt!1094498 () List!36464)

(declare-fun e!2012539 () Bool)

(declare-fun b!3226784 () Bool)

(assert (=> b!3226784 (= e!2012539 (or (not (= (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))) Nil!36340)) (= lt!1094498 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))))))

(declare-fun b!3226782 () Bool)

(declare-fun e!2012540 () List!36464)

(assert (=> b!3226782 (= e!2012540 (Cons!36340 (h!41760 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (++!8746 (t!241085 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))))

(declare-fun d!885896 () Bool)

(assert (=> d!885896 e!2012539))

(declare-fun res!1314137 () Bool)

(assert (=> d!885896 (=> (not res!1314137) (not e!2012539))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4913 (List!36464) (InoxSet C!20228))

(assert (=> d!885896 (= res!1314137 (= (content!4913 lt!1094498) ((_ map or) (content!4913 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (content!4913 (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))))))

(assert (=> d!885896 (= lt!1094498 e!2012540)))

(declare-fun c!542244 () Bool)

(assert (=> d!885896 (= c!542244 ((_ is Nil!36340) (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))))

(assert (=> d!885896 (= (++!8746 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))) (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342)))) lt!1094498)))

(declare-fun b!3226783 () Bool)

(declare-fun res!1314136 () Bool)

(assert (=> b!3226783 (=> (not res!1314136) (not e!2012539))))

(assert (=> b!3226783 (= res!1314136 (= (size!27405 lt!1094498) (+ (size!27405 (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (size!27405 (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))))))

(declare-fun b!3226781 () Bool)

(assert (=> b!3226781 (= e!2012540 (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))

(assert (= (and d!885896 c!542244) b!3226781))

(assert (= (and d!885896 (not c!542244)) b!3226782))

(assert (= (and d!885896 res!1314137) b!3226783))

(assert (= (and b!3226783 res!1314136) b!3226784))

(assert (=> b!3226782 m!3505117))

(declare-fun m!3505403 () Bool)

(assert (=> b!3226782 m!3505403))

(declare-fun m!3505405 () Bool)

(assert (=> d!885896 m!3505405))

(assert (=> d!885896 m!3505115))

(declare-fun m!3505407 () Bool)

(assert (=> d!885896 m!3505407))

(assert (=> d!885896 m!3505117))

(declare-fun m!3505409 () Bool)

(assert (=> d!885896 m!3505409))

(declare-fun m!3505411 () Bool)

(assert (=> b!3226783 m!3505411))

(assert (=> b!3226783 m!3505115))

(declare-fun m!3505413 () Bool)

(assert (=> b!3226783 m!3505413))

(assert (=> b!3226783 m!3505117))

(declare-fun m!3505415 () Bool)

(assert (=> b!3226783 m!3505415))

(assert (=> b!3226527 d!885896))

(declare-fun d!885898 () Bool)

(assert (=> d!885898 (= (list!12959 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))) (list!12962 (c!542199 (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))))

(declare-fun bs!542896 () Bool)

(assert (= bs!542896 d!885898))

(declare-fun m!3505417 () Bool)

(assert (=> bs!542896 m!3505417))

(assert (=> b!3226527 d!885898))

(declare-fun d!885900 () Bool)

(declare-fun lt!1094499 () BalanceConc!21412)

(assert (=> d!885900 (= (list!12959 lt!1094499) (originalCharacters!5976 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))

(assert (=> d!885900 (= lt!1094499 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (value!170427 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))))

(assert (=> d!885900 (= (charsOf!3278 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))) lt!1094499)))

(declare-fun b_lambda!88803 () Bool)

(assert (=> (not b_lambda!88803) (not d!885900)))

(declare-fun t!241145 () Bool)

(declare-fun tb!159695 () Bool)

(assert (=> (and b!3226394 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241145) tb!159695))

(declare-fun b!3226785 () Bool)

(declare-fun e!2012541 () Bool)

(declare-fun tp!1016761 () Bool)

(assert (=> b!3226785 (= e!2012541 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (value!170427 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) tp!1016761))))

(declare-fun result!202208 () Bool)

(assert (=> tb!159695 (= result!202208 (and (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (value!170427 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) e!2012541))))

(assert (= tb!159695 b!3226785))

(declare-fun m!3505419 () Bool)

(assert (=> b!3226785 m!3505419))

(declare-fun m!3505421 () Bool)

(assert (=> tb!159695 m!3505421))

(assert (=> d!885900 t!241145))

(declare-fun b_and!216015 () Bool)

(assert (= b_and!215975 (and (=> t!241145 result!202208) b_and!216015)))

(declare-fun t!241147 () Bool)

(declare-fun tb!159697 () Bool)

(assert (=> (and b!3226721 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241147) tb!159697))

(declare-fun result!202210 () Bool)

(assert (= result!202210 result!202208))

(assert (=> d!885900 t!241147))

(declare-fun b_and!216017 () Bool)

(assert (= b_and!216009 (and (=> t!241147 result!202210) b_and!216017)))

(declare-fun tb!159699 () Bool)

(declare-fun t!241149 () Bool)

(assert (=> (and b!3226746 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241149) tb!159699))

(declare-fun result!202212 () Bool)

(assert (= result!202212 result!202208))

(assert (=> d!885900 t!241149))

(declare-fun b_and!216019 () Bool)

(assert (= b_and!216013 (and (=> t!241149 result!202212) b_and!216019)))

(declare-fun tb!159701 () Bool)

(declare-fun t!241151 () Bool)

(assert (=> (and b!3226392 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241151) tb!159701))

(declare-fun result!202214 () Bool)

(assert (= result!202214 result!202208))

(assert (=> d!885900 t!241151))

(declare-fun b_and!216021 () Bool)

(assert (= b_and!215977 (and (=> t!241151 result!202214) b_and!216021)))

(declare-fun tb!159703 () Bool)

(declare-fun t!241153 () Bool)

(assert (=> (and b!3226389 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241153) tb!159703))

(declare-fun result!202216 () Bool)

(assert (= result!202216 result!202208))

(assert (=> d!885900 t!241153))

(declare-fun b_and!216023 () Bool)

(assert (= b_and!215979 (and (=> t!241153 result!202216) b_and!216023)))

(declare-fun m!3505423 () Bool)

(assert (=> d!885900 m!3505423))

(declare-fun m!3505425 () Bool)

(assert (=> d!885900 m!3505425))

(assert (=> b!3226527 d!885900))

(declare-fun d!885904 () Bool)

(declare-fun c!542245 () Bool)

(assert (=> d!885904 (= c!542245 ((_ is Cons!36342) (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))

(declare-fun e!2012542 () List!36464)

(assert (=> d!885904 (= (printList!1401 thiss!18206 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))) e!2012542)))

(declare-fun b!3226786 () Bool)

(assert (=> b!3226786 (= e!2012542 (++!8746 (list!12959 (charsOf!3278 (h!41762 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))))) (printList!1401 thiss!18206 (t!241087 (t!241087 (Cons!36342 (h!41762 tokens!494) Nil!36342))))))))

(declare-fun b!3226787 () Bool)

(assert (=> b!3226787 (= e!2012542 Nil!36340)))

(assert (= (and d!885904 c!542245) b!3226786))

(assert (= (and d!885904 (not c!542245)) b!3226787))

(declare-fun m!3505427 () Bool)

(assert (=> b!3226786 m!3505427))

(assert (=> b!3226786 m!3505427))

(declare-fun m!3505429 () Bool)

(assert (=> b!3226786 m!3505429))

(declare-fun m!3505431 () Bool)

(assert (=> b!3226786 m!3505431))

(assert (=> b!3226786 m!3505429))

(assert (=> b!3226786 m!3505431))

(declare-fun m!3505433 () Bool)

(assert (=> b!3226786 m!3505433))

(assert (=> b!3226527 d!885904))

(declare-fun d!885906 () Bool)

(declare-fun c!542248 () Bool)

(assert (=> d!885906 (= c!542248 ((_ is Node!10899) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(declare-fun e!2012549 () Bool)

(assert (=> d!885906 (= (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))) e!2012549)))

(declare-fun b!3226796 () Bool)

(declare-fun inv!49227 (Conc!10899) Bool)

(assert (=> b!3226796 (= e!2012549 (inv!49227 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(declare-fun b!3226797 () Bool)

(declare-fun e!2012550 () Bool)

(assert (=> b!3226797 (= e!2012549 e!2012550)))

(declare-fun res!1314142 () Bool)

(assert (=> b!3226797 (= res!1314142 (not ((_ is Leaf!17141) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))))))

(assert (=> b!3226797 (=> res!1314142 e!2012550)))

(declare-fun b!3226798 () Bool)

(declare-fun inv!49228 (Conc!10899) Bool)

(assert (=> b!3226798 (= e!2012550 (inv!49228 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(assert (= (and d!885906 c!542248) b!3226796))

(assert (= (and d!885906 (not c!542248)) b!3226797))

(assert (= (and b!3226797 (not res!1314142)) b!3226798))

(declare-fun m!3505437 () Bool)

(assert (=> b!3226796 m!3505437))

(declare-fun m!3505439 () Bool)

(assert (=> b!3226798 m!3505439))

(assert (=> b!3226433 d!885906))

(declare-fun d!885910 () Bool)

(declare-fun isBalanced!3241 (Conc!10899) Bool)

(assert (=> d!885910 (= (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))) (isBalanced!3241 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(declare-fun bs!542898 () Bool)

(assert (= bs!542898 d!885910))

(declare-fun m!3505447 () Bool)

(assert (=> bs!542898 m!3505447))

(assert (=> tb!159661 d!885910))

(declare-fun d!885914 () Bool)

(declare-fun lt!1094503 () Bool)

(assert (=> d!885914 (= lt!1094503 (isEmpty!20428 (list!12963 (_1!21016 lt!1094405))))))

(assert (=> d!885914 (= lt!1094503 (isEmpty!20429 (c!542200 (_1!21016 lt!1094405))))))

(assert (=> d!885914 (= (isEmpty!20421 (_1!21016 lt!1094405)) lt!1094503)))

(declare-fun bs!542899 () Bool)

(assert (= bs!542899 d!885914))

(assert (=> bs!542899 m!3505033))

(assert (=> bs!542899 m!3505033))

(declare-fun m!3505449 () Bool)

(assert (=> bs!542899 m!3505449))

(declare-fun m!3505451 () Bool)

(assert (=> bs!542899 m!3505451))

(assert (=> b!3226489 d!885914))

(declare-fun d!885916 () Bool)

(assert (=> d!885916 (= (isEmpty!20428 (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))) ((_ is Nil!36342) (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(assert (=> d!885788 d!885916))

(declare-fun d!885918 () Bool)

(declare-fun list!12967 (Conc!10900) List!36466)

(assert (=> d!885918 (= (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)))) (list!12967 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(declare-fun bs!542900 () Bool)

(assert (= bs!542900 d!885918))

(declare-fun m!3505453 () Bool)

(assert (=> bs!542900 m!3505453))

(assert (=> d!885788 d!885918))

(declare-fun lt!1094509 () Bool)

(declare-fun d!885920 () Bool)

(assert (=> d!885920 (= lt!1094509 (isEmpty!20428 (list!12967 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)))))))))

(assert (=> d!885920 (= lt!1094509 (= (size!27411 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))) 0))))

(assert (=> d!885920 (= (isEmpty!20429 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))) lt!1094509)))

(declare-fun bs!542901 () Bool)

(assert (= bs!542901 d!885920))

(assert (=> bs!542901 m!3505453))

(assert (=> bs!542901 m!3505453))

(declare-fun m!3505461 () Bool)

(assert (=> bs!542901 m!3505461))

(declare-fun m!3505463 () Bool)

(assert (=> bs!542901 m!3505463))

(assert (=> d!885788 d!885920))

(declare-fun d!885924 () Bool)

(declare-fun charsToBigInt!1 (List!36465) Int)

(assert (=> d!885924 (= (inv!17 (value!170427 (h!41762 tokens!494))) (= (charsToBigInt!1 (text!38892 (value!170427 (h!41762 tokens!494)))) (value!170419 (value!170427 (h!41762 tokens!494)))))))

(declare-fun bs!542904 () Bool)

(assert (= bs!542904 d!885924))

(declare-fun m!3505473 () Bool)

(assert (=> bs!542904 m!3505473))

(assert (=> b!3226461 d!885924))

(declare-fun d!885930 () Bool)

(assert (=> d!885930 (= (list!12959 lt!1094426) (list!12962 (c!542199 lt!1094426)))))

(declare-fun bs!542905 () Bool)

(assert (= bs!542905 d!885930))

(declare-fun m!3505475 () Bool)

(assert (=> bs!542905 m!3505475))

(assert (=> d!885806 d!885930))

(declare-fun d!885932 () Bool)

(assert (=> d!885932 (= (list!12959 (BalanceConc!21413 Empty!10899)) (list!12962 (c!542199 (BalanceConc!21413 Empty!10899))))))

(declare-fun bs!542906 () Bool)

(assert (= bs!542906 d!885932))

(declare-fun m!3505477 () Bool)

(assert (=> bs!542906 m!3505477))

(assert (=> d!885806 d!885932))

(declare-fun d!885934 () Bool)

(assert (=> d!885934 (= (dropList!1090 lt!1094387 0) (drop!1873 (list!12967 (c!542200 lt!1094387)) 0))))

(declare-fun bs!542908 () Bool)

(assert (= bs!542908 d!885934))

(declare-fun m!3505483 () Bool)

(assert (=> bs!542908 m!3505483))

(assert (=> bs!542908 m!3505483))

(declare-fun m!3505487 () Bool)

(assert (=> bs!542908 m!3505487))

(assert (=> d!885806 d!885934))

(declare-fun d!885938 () Bool)

(declare-fun lt!1094528 () List!36464)

(assert (=> d!885938 (= lt!1094528 (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) (printList!1401 thiss!18206 (dropList!1090 lt!1094387 0))))))

(declare-fun e!2012563 () List!36464)

(assert (=> d!885938 (= lt!1094528 e!2012563)))

(declare-fun c!542258 () Bool)

(assert (=> d!885938 (= c!542258 ((_ is Cons!36342) (dropList!1090 lt!1094387 0)))))

(assert (=> d!885938 (= (printListTailRec!573 thiss!18206 (dropList!1090 lt!1094387 0) (list!12959 (BalanceConc!21413 Empty!10899))) lt!1094528)))

(declare-fun b!3226821 () Bool)

(assert (=> b!3226821 (= e!2012563 (printListTailRec!573 thiss!18206 (t!241087 (dropList!1090 lt!1094387 0)) (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) (list!12959 (charsOf!3278 (h!41762 (dropList!1090 lt!1094387 0)))))))))

(declare-fun lt!1094531 () List!36464)

(assert (=> b!3226821 (= lt!1094531 (list!12959 (charsOf!3278 (h!41762 (dropList!1090 lt!1094387 0)))))))

(declare-fun lt!1094530 () List!36464)

(assert (=> b!3226821 (= lt!1094530 (printList!1401 thiss!18206 (t!241087 (dropList!1090 lt!1094387 0))))))

(declare-fun lt!1094529 () Unit!50930)

(declare-fun lemmaConcatAssociativity!1785 (List!36464 List!36464 List!36464) Unit!50930)

(assert (=> b!3226821 (= lt!1094529 (lemmaConcatAssociativity!1785 (list!12959 (BalanceConc!21413 Empty!10899)) lt!1094531 lt!1094530))))

(assert (=> b!3226821 (= (++!8746 (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) lt!1094531) lt!1094530) (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) (++!8746 lt!1094531 lt!1094530)))))

(declare-fun lt!1094527 () Unit!50930)

(assert (=> b!3226821 (= lt!1094527 lt!1094529)))

(declare-fun b!3226822 () Bool)

(assert (=> b!3226822 (= e!2012563 (list!12959 (BalanceConc!21413 Empty!10899)))))

(assert (= (and d!885938 c!542258) b!3226821))

(assert (= (and d!885938 (not c!542258)) b!3226822))

(assert (=> d!885938 m!3505075))

(declare-fun m!3505501 () Bool)

(assert (=> d!885938 m!3505501))

(assert (=> d!885938 m!3505073))

(assert (=> d!885938 m!3505501))

(declare-fun m!3505503 () Bool)

(assert (=> d!885938 m!3505503))

(declare-fun m!3505505 () Bool)

(assert (=> b!3226821 m!3505505))

(declare-fun m!3505507 () Bool)

(assert (=> b!3226821 m!3505507))

(declare-fun m!3505509 () Bool)

(assert (=> b!3226821 m!3505509))

(declare-fun m!3505511 () Bool)

(assert (=> b!3226821 m!3505511))

(declare-fun m!3505513 () Bool)

(assert (=> b!3226821 m!3505513))

(declare-fun m!3505515 () Bool)

(assert (=> b!3226821 m!3505515))

(assert (=> b!3226821 m!3505073))

(declare-fun m!3505517 () Bool)

(assert (=> b!3226821 m!3505517))

(assert (=> b!3226821 m!3505073))

(assert (=> b!3226821 m!3505509))

(declare-fun m!3505519 () Bool)

(assert (=> b!3226821 m!3505519))

(assert (=> b!3226821 m!3505073))

(assert (=> b!3226821 m!3505505))

(assert (=> b!3226821 m!3505073))

(declare-fun m!3505521 () Bool)

(assert (=> b!3226821 m!3505521))

(assert (=> b!3226821 m!3505513))

(assert (=> b!3226821 m!3505511))

(assert (=> b!3226821 m!3505521))

(declare-fun m!3505523 () Bool)

(assert (=> b!3226821 m!3505523))

(assert (=> d!885806 d!885938))

(assert (=> d!885806 d!885878))

(declare-fun bs!542941 () Bool)

(declare-fun d!885946 () Bool)

(assert (= bs!542941 (and d!885946 b!3226398)))

(declare-fun lambda!118160 () Int)

(assert (=> bs!542941 (not (= lambda!118160 lambda!118135))))

(declare-fun bs!542942 () Bool)

(assert (= bs!542942 (and d!885946 d!885814)))

(assert (=> bs!542942 (= lambda!118160 lambda!118145)))

(declare-fun b!3226935 () Bool)

(declare-fun e!2012633 () Bool)

(assert (=> b!3226935 (= e!2012633 true)))

(declare-fun b!3226934 () Bool)

(declare-fun e!2012632 () Bool)

(assert (=> b!3226934 (= e!2012632 e!2012633)))

(declare-fun b!3226933 () Bool)

(declare-fun e!2012631 () Bool)

(assert (=> b!3226933 (= e!2012631 e!2012632)))

(assert (=> d!885946 e!2012631))

(assert (= b!3226934 b!3226935))

(assert (= b!3226933 b!3226934))

(assert (= (and d!885946 ((_ is Cons!36343) rules!2135)) b!3226933))

(assert (=> b!3226935 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14770 order!18731 lambda!118160))))

(assert (=> b!3226935 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14770 order!18731 lambda!118160))))

(assert (=> d!885946 true))

(declare-fun lt!1094572 () Bool)

(assert (=> d!885946 (= lt!1094572 (forall!7458 (list!12963 (seqFromList!3587 tokens!494)) lambda!118160))))

(declare-fun e!2012630 () Bool)

(assert (=> d!885946 (= lt!1094572 e!2012630)))

(declare-fun res!1314204 () Bool)

(assert (=> d!885946 (=> res!1314204 e!2012630)))

(assert (=> d!885946 (= res!1314204 (not ((_ is Cons!36342) (list!12963 (seqFromList!3587 tokens!494)))))))

(assert (=> d!885946 (not (isEmpty!20420 rules!2135))))

(assert (=> d!885946 (= (rulesProduceEachTokenIndividuallyList!1739 thiss!18206 rules!2135 (list!12963 (seqFromList!3587 tokens!494))) lt!1094572)))

(declare-fun b!3226931 () Bool)

(declare-fun e!2012629 () Bool)

(assert (=> b!3226931 (= e!2012630 e!2012629)))

(declare-fun res!1314205 () Bool)

(assert (=> b!3226931 (=> (not res!1314205) (not e!2012629))))

(assert (=> b!3226931 (= res!1314205 (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 (h!41762 (list!12963 (seqFromList!3587 tokens!494)))))))

(declare-fun b!3226932 () Bool)

(assert (=> b!3226932 (= e!2012629 (rulesProduceEachTokenIndividuallyList!1739 thiss!18206 rules!2135 (t!241087 (list!12963 (seqFromList!3587 tokens!494)))))))

(assert (= (and d!885946 (not res!1314204)) b!3226931))

(assert (= (and b!3226931 res!1314205) b!3226932))

(assert (=> d!885946 m!3505309))

(declare-fun m!3505717 () Bool)

(assert (=> d!885946 m!3505717))

(assert (=> d!885946 m!3504923))

(declare-fun m!3505719 () Bool)

(assert (=> b!3226931 m!3505719))

(declare-fun m!3505721 () Bool)

(assert (=> b!3226932 m!3505721))

(assert (=> b!3226680 d!885946))

(declare-fun d!886034 () Bool)

(assert (=> d!886034 (= (list!12963 (seqFromList!3587 tokens!494)) (list!12967 (c!542200 (seqFromList!3587 tokens!494))))))

(declare-fun bs!542943 () Bool)

(assert (= bs!542943 d!886034))

(declare-fun m!3505723 () Bool)

(assert (=> bs!542943 m!3505723))

(assert (=> b!3226680 d!886034))

(declare-fun d!886036 () Bool)

(assert (=> d!886036 (= (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))) (isBalanced!3241 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(declare-fun bs!542944 () Bool)

(assert (= bs!542944 d!886036))

(declare-fun m!3505725 () Bool)

(assert (=> bs!542944 m!3505725))

(assert (=> tb!159655 d!886036))

(declare-fun d!886038 () Bool)

(assert (=> d!886038 true))

(declare-fun lambda!118163 () Int)

(declare-fun order!18741 () Int)

(declare-fun dynLambda!14774 (Int Int) Int)

(assert (=> d!886038 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (dynLambda!14774 order!18741 lambda!118163))))

(declare-fun Forall2!873 (Int) Bool)

(assert (=> d!886038 (= (equivClasses!2066 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (Forall2!873 lambda!118163))))

(declare-fun bs!542945 () Bool)

(assert (= bs!542945 d!886038))

(declare-fun m!3505727 () Bool)

(assert (=> bs!542945 m!3505727))

(assert (=> b!3226455 d!886038))

(declare-fun d!886040 () Bool)

(assert (=> d!886040 (= (list!12963 lt!1094435) (list!12967 (c!542200 lt!1094435)))))

(declare-fun bs!542946 () Bool)

(assert (= bs!542946 d!886040))

(declare-fun m!3505729 () Bool)

(assert (=> bs!542946 m!3505729))

(assert (=> d!885808 d!886040))

(declare-fun d!886042 () Bool)

(declare-fun e!2012638 () Bool)

(assert (=> d!886042 e!2012638))

(declare-fun res!1314210 () Bool)

(assert (=> d!886042 (=> (not res!1314210) (not e!2012638))))

(declare-fun lt!1094575 () BalanceConc!21414)

(assert (=> d!886042 (= res!1314210 (= (list!12963 lt!1094575) (Cons!36342 (h!41762 tokens!494) Nil!36342)))))

(declare-fun choose!18820 (Token!9890) BalanceConc!21414)

(assert (=> d!886042 (= lt!1094575 (choose!18820 (h!41762 tokens!494)))))

(assert (=> d!886042 (= (singleton!1006 (h!41762 tokens!494)) lt!1094575)))

(declare-fun b!3226942 () Bool)

(assert (=> b!3226942 (= e!2012638 (isBalanced!3239 (c!542200 lt!1094575)))))

(assert (= (and d!886042 res!1314210) b!3226942))

(declare-fun m!3505731 () Bool)

(assert (=> d!886042 m!3505731))

(declare-fun m!3505733 () Bool)

(assert (=> d!886042 m!3505733))

(declare-fun m!3505735 () Bool)

(assert (=> b!3226942 m!3505735))

(assert (=> d!885808 d!886042))

(declare-fun b!3226943 () Bool)

(declare-fun e!2012641 () Bool)

(assert (=> b!3226943 (= e!2012641 (inv!15 (value!170427 (h!41762 (t!241087 tokens!494)))))))

(declare-fun b!3226944 () Bool)

(declare-fun e!2012639 () Bool)

(declare-fun e!2012640 () Bool)

(assert (=> b!3226944 (= e!2012639 e!2012640)))

(declare-fun c!542284 () Bool)

(assert (=> b!3226944 (= c!542284 ((_ is IntegerValue!16477) (value!170427 (h!41762 (t!241087 tokens!494)))))))

(declare-fun b!3226946 () Bool)

(declare-fun res!1314211 () Bool)

(assert (=> b!3226946 (=> res!1314211 e!2012641)))

(assert (=> b!3226946 (= res!1314211 (not ((_ is IntegerValue!16478) (value!170427 (h!41762 (t!241087 tokens!494))))))))

(assert (=> b!3226946 (= e!2012640 e!2012641)))

(declare-fun b!3226947 () Bool)

(assert (=> b!3226947 (= e!2012639 (inv!16 (value!170427 (h!41762 (t!241087 tokens!494)))))))

(declare-fun d!886044 () Bool)

(declare-fun c!542283 () Bool)

(assert (=> d!886044 (= c!542283 ((_ is IntegerValue!16476) (value!170427 (h!41762 (t!241087 tokens!494)))))))

(assert (=> d!886044 (= (inv!21 (value!170427 (h!41762 (t!241087 tokens!494)))) e!2012639)))

(declare-fun b!3226945 () Bool)

(assert (=> b!3226945 (= e!2012640 (inv!17 (value!170427 (h!41762 (t!241087 tokens!494)))))))

(assert (= (and d!886044 c!542283) b!3226947))

(assert (= (and d!886044 (not c!542283)) b!3226944))

(assert (= (and b!3226944 c!542284) b!3226945))

(assert (= (and b!3226944 (not c!542284)) b!3226946))

(assert (= (and b!3226946 (not res!1314211)) b!3226943))

(declare-fun m!3505737 () Bool)

(assert (=> b!3226943 m!3505737))

(declare-fun m!3505739 () Bool)

(assert (=> b!3226947 m!3505739))

(declare-fun m!3505741 () Bool)

(assert (=> b!3226945 m!3505741))

(assert (=> b!3226719 d!886044))

(declare-fun d!886046 () Bool)

(declare-fun lt!1094578 () Int)

(assert (=> d!886046 (= lt!1094578 (size!27405 (list!12959 (_2!21016 lt!1094405))))))

(declare-fun size!27414 (Conc!10899) Int)

(assert (=> d!886046 (= lt!1094578 (size!27414 (c!542199 (_2!21016 lt!1094405))))))

(assert (=> d!886046 (= (size!27409 (_2!21016 lt!1094405)) lt!1094578)))

(declare-fun bs!542947 () Bool)

(assert (= bs!542947 d!886046))

(assert (=> bs!542947 m!3505027))

(assert (=> bs!542947 m!3505027))

(declare-fun m!3505743 () Bool)

(assert (=> bs!542947 m!3505743))

(declare-fun m!3505745 () Bool)

(assert (=> bs!542947 m!3505745))

(assert (=> b!3226491 d!886046))

(declare-fun d!886048 () Bool)

(declare-fun lt!1094579 () Int)

(assert (=> d!886048 (= lt!1094579 (size!27405 (list!12959 (seqFromList!3588 lt!1094384))))))

(assert (=> d!886048 (= lt!1094579 (size!27414 (c!542199 (seqFromList!3588 lt!1094384))))))

(assert (=> d!886048 (= (size!27409 (seqFromList!3588 lt!1094384)) lt!1094579)))

(declare-fun bs!542948 () Bool)

(assert (= bs!542948 d!886048))

(assert (=> bs!542948 m!3504899))

(assert (=> bs!542948 m!3505029))

(assert (=> bs!542948 m!3505029))

(declare-fun m!3505747 () Bool)

(assert (=> bs!542948 m!3505747))

(declare-fun m!3505749 () Bool)

(assert (=> bs!542948 m!3505749))

(assert (=> b!3226491 d!886048))

(declare-fun d!886050 () Bool)

(assert (=> d!886050 true))

(declare-fun lt!1094582 () Bool)

(declare-fun rulesValidInductive!1786 (LexerInterface!4851 List!36467) Bool)

(assert (=> d!886050 (= lt!1094582 (rulesValidInductive!1786 thiss!18206 rules!2135))))

(declare-fun lambda!118166 () Int)

(declare-fun forall!7461 (List!36467 Int) Bool)

(assert (=> d!886050 (= lt!1094582 (forall!7461 rules!2135 lambda!118166))))

(assert (=> d!886050 (= (rulesValid!1927 thiss!18206 rules!2135) lt!1094582)))

(declare-fun bs!542949 () Bool)

(assert (= bs!542949 d!886050))

(declare-fun m!3505751 () Bool)

(assert (=> bs!542949 m!3505751))

(declare-fun m!3505753 () Bool)

(assert (=> bs!542949 m!3505753))

(assert (=> d!885780 d!886050))

(declare-fun d!886052 () Bool)

(declare-fun lt!1094585 () Int)

(assert (=> d!886052 (>= lt!1094585 0)))

(declare-fun e!2012644 () Int)

(assert (=> d!886052 (= lt!1094585 e!2012644)))

(declare-fun c!542287 () Bool)

(assert (=> d!886052 (= c!542287 ((_ is Nil!36340) (originalCharacters!5976 separatorToken!241)))))

(assert (=> d!886052 (= (size!27405 (originalCharacters!5976 separatorToken!241)) lt!1094585)))

(declare-fun b!3226954 () Bool)

(assert (=> b!3226954 (= e!2012644 0)))

(declare-fun b!3226955 () Bool)

(assert (=> b!3226955 (= e!2012644 (+ 1 (size!27405 (t!241085 (originalCharacters!5976 separatorToken!241)))))))

(assert (= (and d!886052 c!542287) b!3226954))

(assert (= (and d!886052 (not c!542287)) b!3226955))

(declare-fun m!3505755 () Bool)

(assert (=> b!3226955 m!3505755))

(assert (=> b!3226457 d!886052))

(declare-fun d!886054 () Bool)

(declare-fun res!1314216 () Bool)

(declare-fun e!2012649 () Bool)

(assert (=> d!886054 (=> res!1314216 e!2012649)))

(assert (=> d!886054 (= res!1314216 ((_ is Nil!36343) rules!2135))))

(assert (=> d!886054 (= (noDuplicateTag!1923 thiss!18206 rules!2135 Nil!36345) e!2012649)))

(declare-fun b!3226960 () Bool)

(declare-fun e!2012650 () Bool)

(assert (=> b!3226960 (= e!2012649 e!2012650)))

(declare-fun res!1314217 () Bool)

(assert (=> b!3226960 (=> (not res!1314217) (not e!2012650))))

(declare-fun contains!6520 (List!36469 String!40794) Bool)

(assert (=> b!3226960 (= res!1314217 (not (contains!6520 Nil!36345 (tag!5794 (h!41763 rules!2135)))))))

(declare-fun b!3226961 () Bool)

(assert (=> b!3226961 (= e!2012650 (noDuplicateTag!1923 thiss!18206 (t!241088 rules!2135) (Cons!36345 (tag!5794 (h!41763 rules!2135)) Nil!36345)))))

(assert (= (and d!886054 (not res!1314216)) b!3226960))

(assert (= (and b!3226960 res!1314217) b!3226961))

(declare-fun m!3505757 () Bool)

(assert (=> b!3226960 m!3505757))

(declare-fun m!3505759 () Bool)

(assert (=> b!3226961 m!3505759))

(assert (=> b!3226467 d!886054))

(declare-fun d!886056 () Bool)

(declare-fun lt!1094586 () Int)

(assert (=> d!886056 (>= lt!1094586 0)))

(declare-fun e!2012651 () Int)

(assert (=> d!886056 (= lt!1094586 e!2012651)))

(declare-fun c!542288 () Bool)

(assert (=> d!886056 (= c!542288 ((_ is Nil!36340) (originalCharacters!5976 (h!41762 tokens!494))))))

(assert (=> d!886056 (= (size!27405 (originalCharacters!5976 (h!41762 tokens!494))) lt!1094586)))

(declare-fun b!3226962 () Bool)

(assert (=> b!3226962 (= e!2012651 0)))

(declare-fun b!3226963 () Bool)

(assert (=> b!3226963 (= e!2012651 (+ 1 (size!27405 (t!241085 (originalCharacters!5976 (h!41762 tokens!494))))))))

(assert (= (and d!886056 c!542288) b!3226962))

(assert (= (and d!886056 (not c!542288)) b!3226963))

(declare-fun m!3505761 () Bool)

(assert (=> b!3226963 m!3505761))

(assert (=> b!3226428 d!886056))

(declare-fun b!3226976 () Bool)

(declare-fun e!2012657 () Bool)

(assert (=> b!3226976 (= e!2012657 (not (isEmpty!20429 (right!28627 (c!542200 lt!1094435)))))))

(declare-fun b!3226977 () Bool)

(declare-fun res!1314230 () Bool)

(assert (=> b!3226977 (=> (not res!1314230) (not e!2012657))))

(declare-fun height!1574 (Conc!10900) Int)

(assert (=> b!3226977 (= res!1314230 (<= (- (height!1574 (left!28297 (c!542200 lt!1094435))) (height!1574 (right!28627 (c!542200 lt!1094435)))) 1))))

(declare-fun b!3226978 () Bool)

(declare-fun res!1314234 () Bool)

(assert (=> b!3226978 (=> (not res!1314234) (not e!2012657))))

(assert (=> b!3226978 (= res!1314234 (isBalanced!3239 (left!28297 (c!542200 lt!1094435))))))

(declare-fun b!3226979 () Bool)

(declare-fun res!1314233 () Bool)

(assert (=> b!3226979 (=> (not res!1314233) (not e!2012657))))

(assert (=> b!3226979 (= res!1314233 (not (isEmpty!20429 (left!28297 (c!542200 lt!1094435)))))))

(declare-fun b!3226980 () Bool)

(declare-fun res!1314231 () Bool)

(assert (=> b!3226980 (=> (not res!1314231) (not e!2012657))))

(assert (=> b!3226980 (= res!1314231 (isBalanced!3239 (right!28627 (c!542200 lt!1094435))))))

(declare-fun d!886058 () Bool)

(declare-fun res!1314235 () Bool)

(declare-fun e!2012656 () Bool)

(assert (=> d!886058 (=> res!1314235 e!2012656)))

(assert (=> d!886058 (= res!1314235 (not ((_ is Node!10900) (c!542200 lt!1094435))))))

(assert (=> d!886058 (= (isBalanced!3239 (c!542200 lt!1094435)) e!2012656)))

(declare-fun b!3226981 () Bool)

(assert (=> b!3226981 (= e!2012656 e!2012657)))

(declare-fun res!1314232 () Bool)

(assert (=> b!3226981 (=> (not res!1314232) (not e!2012657))))

(assert (=> b!3226981 (= res!1314232 (<= (- 1) (- (height!1574 (left!28297 (c!542200 lt!1094435))) (height!1574 (right!28627 (c!542200 lt!1094435))))))))

(assert (= (and d!886058 (not res!1314235)) b!3226981))

(assert (= (and b!3226981 res!1314232) b!3226977))

(assert (= (and b!3226977 res!1314230) b!3226978))

(assert (= (and b!3226978 res!1314234) b!3226980))

(assert (= (and b!3226980 res!1314231) b!3226979))

(assert (= (and b!3226979 res!1314233) b!3226976))

(declare-fun m!3505763 () Bool)

(assert (=> b!3226979 m!3505763))

(declare-fun m!3505765 () Bool)

(assert (=> b!3226981 m!3505765))

(declare-fun m!3505767 () Bool)

(assert (=> b!3226981 m!3505767))

(assert (=> b!3226977 m!3505765))

(assert (=> b!3226977 m!3505767))

(declare-fun m!3505769 () Bool)

(assert (=> b!3226980 m!3505769))

(declare-fun m!3505771 () Bool)

(assert (=> b!3226978 m!3505771))

(declare-fun m!3505773 () Bool)

(assert (=> b!3226976 m!3505773))

(assert (=> b!3226522 d!886058))

(declare-fun d!886060 () Bool)

(assert (=> d!886060 (= (list!12963 (_1!21016 lt!1094405)) (list!12967 (c!542200 (_1!21016 lt!1094405))))))

(declare-fun bs!542950 () Bool)

(assert (= bs!542950 d!886060))

(declare-fun m!3505775 () Bool)

(assert (=> bs!542950 m!3505775))

(assert (=> b!3226487 d!886060))

(declare-fun b!3226992 () Bool)

(declare-fun e!2012666 () tuple2!35768)

(assert (=> b!3226992 (= e!2012666 (tuple2!35769 Nil!36342 (list!12959 (seqFromList!3588 lt!1094384))))))

(declare-fun b!3226993 () Bool)

(declare-fun e!2012665 () Bool)

(declare-fun e!2012664 () Bool)

(assert (=> b!3226993 (= e!2012665 e!2012664)))

(declare-fun res!1314238 () Bool)

(declare-fun lt!1094595 () tuple2!35768)

(assert (=> b!3226993 (= res!1314238 (< (size!27405 (_2!21018 lt!1094595)) (size!27405 (list!12959 (seqFromList!3588 lt!1094384)))))))

(assert (=> b!3226993 (=> (not res!1314238) (not e!2012664))))

(declare-fun d!886062 () Bool)

(assert (=> d!886062 e!2012665))

(declare-fun c!542294 () Bool)

(assert (=> d!886062 (= c!542294 (> (size!27410 (_1!21018 lt!1094595)) 0))))

(assert (=> d!886062 (= lt!1094595 e!2012666)))

(declare-fun c!542293 () Bool)

(declare-datatypes ((tuple2!35772 0))(
  ( (tuple2!35773 (_1!21020 Token!9890) (_2!21020 List!36464)) )
))
(declare-datatypes ((Option!7212 0))(
  ( (None!7211) (Some!7211 (v!35807 tuple2!35772)) )
))
(declare-fun lt!1094593 () Option!7212)

(assert (=> d!886062 (= c!542293 ((_ is Some!7211) lt!1094593))))

(declare-fun maxPrefix!2485 (LexerInterface!4851 List!36467 List!36464) Option!7212)

(assert (=> d!886062 (= lt!1094593 (maxPrefix!2485 thiss!18206 rules!2135 (list!12959 (seqFromList!3588 lt!1094384))))))

(assert (=> d!886062 (= (lexList!1331 thiss!18206 rules!2135 (list!12959 (seqFromList!3588 lt!1094384))) lt!1094595)))

(declare-fun b!3226994 () Bool)

(declare-fun lt!1094594 () tuple2!35768)

(assert (=> b!3226994 (= e!2012666 (tuple2!35769 (Cons!36342 (_1!21020 (v!35807 lt!1094593)) (_1!21018 lt!1094594)) (_2!21018 lt!1094594)))))

(assert (=> b!3226994 (= lt!1094594 (lexList!1331 thiss!18206 rules!2135 (_2!21020 (v!35807 lt!1094593))))))

(declare-fun b!3226995 () Bool)

(assert (=> b!3226995 (= e!2012665 (= (_2!21018 lt!1094595) (list!12959 (seqFromList!3588 lt!1094384))))))

(declare-fun b!3226996 () Bool)

(assert (=> b!3226996 (= e!2012664 (not (isEmpty!20428 (_1!21018 lt!1094595))))))

(assert (= (and d!886062 c!542293) b!3226994))

(assert (= (and d!886062 (not c!542293)) b!3226992))

(assert (= (and d!886062 c!542294) b!3226993))

(assert (= (and d!886062 (not c!542294)) b!3226995))

(assert (= (and b!3226993 res!1314238) b!3226996))

(declare-fun m!3505777 () Bool)

(assert (=> b!3226993 m!3505777))

(assert (=> b!3226993 m!3505029))

(assert (=> b!3226993 m!3505747))

(declare-fun m!3505779 () Bool)

(assert (=> d!886062 m!3505779))

(assert (=> d!886062 m!3505029))

(declare-fun m!3505781 () Bool)

(assert (=> d!886062 m!3505781))

(declare-fun m!3505783 () Bool)

(assert (=> b!3226994 m!3505783))

(declare-fun m!3505785 () Bool)

(assert (=> b!3226996 m!3505785))

(assert (=> b!3226487 d!886062))

(declare-fun d!886064 () Bool)

(assert (=> d!886064 (= (list!12959 (seqFromList!3588 lt!1094384)) (list!12962 (c!542199 (seqFromList!3588 lt!1094384))))))

(declare-fun bs!542951 () Bool)

(assert (= bs!542951 d!886064))

(declare-fun m!3505787 () Bool)

(assert (=> bs!542951 m!3505787))

(assert (=> b!3226487 d!886064))

(declare-fun bs!542952 () Bool)

(declare-fun d!886066 () Bool)

(assert (= bs!542952 (and d!886066 d!886038)))

(declare-fun lambda!118167 () Int)

(assert (=> bs!542952 (= (= (toValue!7366 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (= lambda!118167 lambda!118163))))

(assert (=> d!886066 true))

(assert (=> d!886066 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14774 order!18741 lambda!118167))))

(assert (=> d!886066 (= (equivClasses!2066 (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (Forall2!873 lambda!118167))))

(declare-fun bs!542953 () Bool)

(assert (= bs!542953 d!886066))

(declare-fun m!3505789 () Bool)

(assert (=> bs!542953 m!3505789))

(assert (=> b!3226464 d!886066))

(declare-fun d!886068 () Bool)

(declare-fun lt!1094596 () Int)

(assert (=> d!886068 (= lt!1094596 (size!27410 (list!12963 (_1!21016 lt!1094405))))))

(assert (=> d!886068 (= lt!1094596 (size!27411 (c!542200 (_1!21016 lt!1094405))))))

(assert (=> d!886068 (= (size!27408 (_1!21016 lt!1094405)) lt!1094596)))

(declare-fun bs!542954 () Bool)

(assert (= bs!542954 d!886068))

(assert (=> bs!542954 m!3505033))

(assert (=> bs!542954 m!3505033))

(declare-fun m!3505791 () Bool)

(assert (=> bs!542954 m!3505791))

(declare-fun m!3505793 () Bool)

(assert (=> bs!542954 m!3505793))

(assert (=> d!885790 d!886068))

(declare-datatypes ((tuple2!35774 0))(
  ( (tuple2!35775 (_1!21021 Token!9890) (_2!21021 BalanceConc!21412)) )
))
(declare-datatypes ((Option!7213 0))(
  ( (None!7212) (Some!7212 (v!35808 tuple2!35774)) )
))
(declare-fun lt!1094798 () Option!7213)

(declare-fun lt!1094784 () tuple2!35764)

(declare-fun b!3227041 () Bool)

(declare-fun lexRec!692 (LexerInterface!4851 List!36467 BalanceConc!21412) tuple2!35764)

(assert (=> b!3227041 (= lt!1094784 (lexRec!692 thiss!18206 rules!2135 (_2!21021 (v!35808 lt!1094798))))))

(declare-fun e!2012694 () tuple2!35764)

(declare-fun prepend!1180 (BalanceConc!21414 Token!9890) BalanceConc!21414)

(assert (=> b!3227041 (= e!2012694 (tuple2!35765 (prepend!1180 (_1!21016 lt!1094784) (_1!21021 (v!35808 lt!1094798))) (_2!21016 lt!1094784)))))

(declare-fun lt!1094786 () Option!7213)

(declare-fun b!3227042 () Bool)

(declare-fun lt!1094791 () tuple2!35764)

(assert (=> b!3227042 (= lt!1094791 (lexRec!692 thiss!18206 rules!2135 (_2!21021 (v!35808 lt!1094786))))))

(declare-fun e!2012693 () tuple2!35764)

(assert (=> b!3227042 (= e!2012693 (tuple2!35765 (prepend!1180 (_1!21016 lt!1094791) (_1!21021 (v!35808 lt!1094786))) (_2!21016 lt!1094791)))))

(declare-fun b!3227043 () Bool)

(declare-fun e!2012695 () tuple2!35764)

(assert (=> b!3227043 (= e!2012695 (tuple2!35765 (BalanceConc!21415 Empty!10900) (seqFromList!3588 lt!1094384)))))

(declare-fun lt!1094780 () Option!7213)

(declare-fun lt!1094781 () BalanceConc!21412)

(declare-fun b!3227044 () Bool)

(declare-fun append!872 (BalanceConc!21414 Token!9890) BalanceConc!21414)

(assert (=> b!3227044 (= e!2012695 (lexTailRecV2!943 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384) lt!1094781 (_2!21021 (v!35808 lt!1094780)) (append!872 (BalanceConc!21415 Empty!10900) (_1!21021 (v!35808 lt!1094780)))))))

(declare-fun lt!1094779 () tuple2!35764)

(assert (=> b!3227044 (= lt!1094779 (lexRec!692 thiss!18206 rules!2135 (_2!21021 (v!35808 lt!1094780))))))

(declare-fun lt!1094800 () List!36464)

(assert (=> b!3227044 (= lt!1094800 (list!12959 (BalanceConc!21413 Empty!10899)))))

(declare-fun lt!1094792 () List!36464)

(assert (=> b!3227044 (= lt!1094792 (list!12959 (charsOf!3278 (_1!21021 (v!35808 lt!1094780)))))))

(declare-fun lt!1094796 () List!36464)

(assert (=> b!3227044 (= lt!1094796 (list!12959 (_2!21021 (v!35808 lt!1094780))))))

(declare-fun lt!1094775 () Unit!50930)

(assert (=> b!3227044 (= lt!1094775 (lemmaConcatAssociativity!1785 lt!1094800 lt!1094792 lt!1094796))))

(assert (=> b!3227044 (= (++!8746 (++!8746 lt!1094800 lt!1094792) lt!1094796) (++!8746 lt!1094800 (++!8746 lt!1094792 lt!1094796)))))

(declare-fun lt!1094771 () Unit!50930)

(assert (=> b!3227044 (= lt!1094771 lt!1094775)))

(declare-fun maxPrefixZipperSequence!1085 (LexerInterface!4851 List!36467 BalanceConc!21412) Option!7213)

(assert (=> b!3227044 (= lt!1094786 (maxPrefixZipperSequence!1085 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)))))

(declare-fun c!542315 () Bool)

(assert (=> b!3227044 (= c!542315 ((_ is Some!7212) lt!1094786))))

(assert (=> b!3227044 (= (lexRec!692 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384)) e!2012693)))

(declare-fun lt!1094768 () Unit!50930)

(declare-fun Unit!50932 () Unit!50930)

(assert (=> b!3227044 (= lt!1094768 Unit!50932)))

(declare-fun lt!1094799 () List!36466)

(assert (=> b!3227044 (= lt!1094799 (list!12963 (BalanceConc!21415 Empty!10900)))))

(declare-fun lt!1094783 () List!36466)

(assert (=> b!3227044 (= lt!1094783 (Cons!36342 (_1!21021 (v!35808 lt!1094780)) Nil!36342))))

(declare-fun lt!1094789 () List!36466)

(assert (=> b!3227044 (= lt!1094789 (list!12963 (_1!21016 lt!1094779)))))

(declare-fun lt!1094794 () Unit!50930)

(declare-fun lemmaConcatAssociativity!1786 (List!36466 List!36466 List!36466) Unit!50930)

(assert (=> b!3227044 (= lt!1094794 (lemmaConcatAssociativity!1786 lt!1094799 lt!1094783 lt!1094789))))

(declare-fun ++!8747 (List!36466 List!36466) List!36466)

(assert (=> b!3227044 (= (++!8747 (++!8747 lt!1094799 lt!1094783) lt!1094789) (++!8747 lt!1094799 (++!8747 lt!1094783 lt!1094789)))))

(declare-fun lt!1094772 () Unit!50930)

(assert (=> b!3227044 (= lt!1094772 lt!1094794)))

(declare-fun lt!1094773 () List!36464)

(assert (=> b!3227044 (= lt!1094773 (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) (list!12959 (charsOf!3278 (_1!21021 (v!35808 lt!1094780))))))))

(declare-fun lt!1094769 () List!36464)

(assert (=> b!3227044 (= lt!1094769 (list!12959 (_2!21021 (v!35808 lt!1094780))))))

(declare-fun lt!1094778 () List!36466)

(assert (=> b!3227044 (= lt!1094778 (list!12963 (append!872 (BalanceConc!21415 Empty!10900) (_1!21021 (v!35808 lt!1094780)))))))

(declare-fun lt!1094787 () Unit!50930)

(declare-fun lemmaLexThenLexPrefix!457 (LexerInterface!4851 List!36467 List!36464 List!36464 List!36466 List!36466 List!36464) Unit!50930)

(assert (=> b!3227044 (= lt!1094787 (lemmaLexThenLexPrefix!457 thiss!18206 rules!2135 lt!1094773 lt!1094769 lt!1094778 (list!12963 (_1!21016 lt!1094779)) (list!12959 (_2!21016 lt!1094779))))))

(assert (=> b!3227044 (= (lexList!1331 thiss!18206 rules!2135 lt!1094773) (tuple2!35769 lt!1094778 Nil!36340))))

(declare-fun lt!1094790 () Unit!50930)

(assert (=> b!3227044 (= lt!1094790 lt!1094787)))

(declare-fun lt!1094782 () BalanceConc!21412)

(assert (=> b!3227044 (= lt!1094782 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (_1!21021 (v!35808 lt!1094780)))))))

(assert (=> b!3227044 (= lt!1094798 (maxPrefixZipperSequence!1085 thiss!18206 rules!2135 lt!1094782))))

(declare-fun c!542314 () Bool)

(assert (=> b!3227044 (= c!542314 ((_ is Some!7212) lt!1094798))))

(assert (=> b!3227044 (= (lexRec!692 thiss!18206 rules!2135 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (_1!21021 (v!35808 lt!1094780))))) e!2012694)))

(declare-fun lt!1094785 () Unit!50930)

(declare-fun Unit!50933 () Unit!50930)

(assert (=> b!3227044 (= lt!1094785 Unit!50933)))

(assert (=> b!3227044 (= lt!1094781 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (_1!21021 (v!35808 lt!1094780)))))))

(declare-fun lt!1094774 () List!36464)

(assert (=> b!3227044 (= lt!1094774 (list!12959 lt!1094781))))

(declare-fun lt!1094788 () List!36464)

(assert (=> b!3227044 (= lt!1094788 (list!12959 (_2!21021 (v!35808 lt!1094780))))))

(declare-fun lt!1094770 () Unit!50930)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!539 (List!36464 List!36464) Unit!50930)

(assert (=> b!3227044 (= lt!1094770 (lemmaConcatTwoListThenFSndIsSuffix!539 lt!1094774 lt!1094788))))

(declare-fun isSuffix!854 (List!36464 List!36464) Bool)

(assert (=> b!3227044 (isSuffix!854 lt!1094788 (++!8746 lt!1094774 lt!1094788))))

(declare-fun lt!1094797 () Unit!50930)

(assert (=> b!3227044 (= lt!1094797 lt!1094770)))

(declare-fun lt!1094795 () tuple2!35764)

(declare-fun e!2012696 () Bool)

(declare-fun b!3227045 () Bool)

(assert (=> b!3227045 (= e!2012696 (= (list!12959 (_2!21016 lt!1094795)) (list!12959 (_2!21016 (lexRec!692 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(declare-fun b!3227046 () Bool)

(assert (=> b!3227046 (= e!2012693 (tuple2!35765 (BalanceConc!21415 Empty!10900) (seqFromList!3588 lt!1094384)))))

(declare-fun d!886070 () Bool)

(assert (=> d!886070 e!2012696))

(declare-fun res!1314247 () Bool)

(assert (=> d!886070 (=> (not res!1314247) (not e!2012696))))

(assert (=> d!886070 (= res!1314247 (= (list!12963 (_1!21016 lt!1094795)) (list!12963 (_1!21016 (lexRec!692 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384))))))))

(assert (=> d!886070 (= lt!1094795 e!2012695)))

(declare-fun c!542313 () Bool)

(assert (=> d!886070 (= c!542313 ((_ is Some!7212) lt!1094780))))

(declare-fun maxPrefixZipperSequenceV2!479 (LexerInterface!4851 List!36467 BalanceConc!21412 BalanceConc!21412) Option!7213)

(assert (=> d!886070 (= lt!1094780 (maxPrefixZipperSequenceV2!479 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384) (seqFromList!3588 lt!1094384)))))

(declare-fun lt!1094777 () Unit!50930)

(declare-fun lt!1094793 () Unit!50930)

(assert (=> d!886070 (= lt!1094777 lt!1094793)))

(declare-fun lt!1094776 () List!36464)

(declare-fun lt!1094767 () List!36464)

(assert (=> d!886070 (isSuffix!854 lt!1094776 (++!8746 lt!1094767 lt!1094776))))

(assert (=> d!886070 (= lt!1094793 (lemmaConcatTwoListThenFSndIsSuffix!539 lt!1094767 lt!1094776))))

(assert (=> d!886070 (= lt!1094776 (list!12959 (seqFromList!3588 lt!1094384)))))

(assert (=> d!886070 (= lt!1094767 (list!12959 (BalanceConc!21413 Empty!10899)))))

(assert (=> d!886070 (= (lexTailRecV2!943 thiss!18206 rules!2135 (seqFromList!3588 lt!1094384) (BalanceConc!21413 Empty!10899) (seqFromList!3588 lt!1094384) (BalanceConc!21415 Empty!10900)) lt!1094795)))

(declare-fun b!3227047 () Bool)

(assert (=> b!3227047 (= e!2012694 (tuple2!35765 (BalanceConc!21415 Empty!10900) lt!1094782))))

(assert (= (and d!886070 c!542313) b!3227044))

(assert (= (and d!886070 (not c!542313)) b!3227043))

(assert (= (and b!3227044 c!542315) b!3227042))

(assert (= (and b!3227044 (not c!542315)) b!3227046))

(assert (= (and b!3227044 c!542314) b!3227041))

(assert (= (and b!3227044 (not c!542314)) b!3227047))

(assert (= (and d!886070 res!1314247) b!3227045))

(declare-fun m!3505887 () Bool)

(assert (=> b!3227045 m!3505887))

(assert (=> b!3227045 m!3504899))

(declare-fun m!3505889 () Bool)

(assert (=> b!3227045 m!3505889))

(declare-fun m!3505891 () Bool)

(assert (=> b!3227045 m!3505891))

(declare-fun m!3505893 () Bool)

(assert (=> b!3227042 m!3505893))

(declare-fun m!3505895 () Bool)

(assert (=> b!3227042 m!3505895))

(assert (=> d!886070 m!3504899))

(assert (=> d!886070 m!3505029))

(declare-fun m!3505897 () Bool)

(assert (=> d!886070 m!3505897))

(assert (=> d!886070 m!3505897))

(declare-fun m!3505899 () Bool)

(assert (=> d!886070 m!3505899))

(assert (=> d!886070 m!3505073))

(declare-fun m!3505901 () Bool)

(assert (=> d!886070 m!3505901))

(assert (=> d!886070 m!3504899))

(assert (=> d!886070 m!3504899))

(declare-fun m!3505903 () Bool)

(assert (=> d!886070 m!3505903))

(assert (=> d!886070 m!3504899))

(assert (=> d!886070 m!3505889))

(declare-fun m!3505905 () Bool)

(assert (=> d!886070 m!3505905))

(declare-fun m!3505907 () Bool)

(assert (=> d!886070 m!3505907))

(declare-fun m!3505909 () Bool)

(assert (=> b!3227041 m!3505909))

(declare-fun m!3505911 () Bool)

(assert (=> b!3227041 m!3505911))

(declare-fun m!3505913 () Bool)

(assert (=> b!3227044 m!3505913))

(declare-fun m!3505915 () Bool)

(assert (=> b!3227044 m!3505915))

(declare-fun m!3505917 () Bool)

(assert (=> b!3227044 m!3505917))

(declare-fun m!3505919 () Bool)

(assert (=> b!3227044 m!3505919))

(declare-fun m!3505921 () Bool)

(assert (=> b!3227044 m!3505921))

(declare-fun m!3505923 () Bool)

(assert (=> b!3227044 m!3505923))

(declare-fun m!3505925 () Bool)

(assert (=> b!3227044 m!3505925))

(declare-fun m!3505927 () Bool)

(assert (=> b!3227044 m!3505927))

(declare-fun m!3505929 () Bool)

(assert (=> b!3227044 m!3505929))

(assert (=> b!3227044 m!3504899))

(assert (=> b!3227044 m!3505889))

(assert (=> b!3227044 m!3505917))

(declare-fun m!3505931 () Bool)

(assert (=> b!3227044 m!3505931))

(declare-fun m!3505933 () Bool)

(assert (=> b!3227044 m!3505933))

(assert (=> b!3227044 m!3504899))

(declare-fun m!3505935 () Bool)

(assert (=> b!3227044 m!3505935))

(assert (=> b!3227044 m!3505923))

(declare-fun m!3505937 () Bool)

(assert (=> b!3227044 m!3505937))

(assert (=> b!3227044 m!3504899))

(declare-fun m!3505939 () Bool)

(assert (=> b!3227044 m!3505939))

(declare-fun m!3505941 () Bool)

(assert (=> b!3227044 m!3505941))

(assert (=> b!3227044 m!3505931))

(declare-fun m!3505943 () Bool)

(assert (=> b!3227044 m!3505943))

(declare-fun m!3505945 () Bool)

(assert (=> b!3227044 m!3505945))

(assert (=> b!3227044 m!3505927))

(assert (=> b!3227044 m!3505073))

(declare-fun m!3505947 () Bool)

(assert (=> b!3227044 m!3505947))

(declare-fun m!3505949 () Bool)

(assert (=> b!3227044 m!3505949))

(assert (=> b!3227044 m!3505939))

(assert (=> b!3227044 m!3505929))

(declare-fun m!3505951 () Bool)

(assert (=> b!3227044 m!3505951))

(assert (=> b!3227044 m!3505915))

(assert (=> b!3227044 m!3505927))

(assert (=> b!3227044 m!3505947))

(declare-fun m!3505953 () Bool)

(assert (=> b!3227044 m!3505953))

(declare-fun m!3505955 () Bool)

(assert (=> b!3227044 m!3505955))

(declare-fun m!3505957 () Bool)

(assert (=> b!3227044 m!3505957))

(declare-fun m!3505959 () Bool)

(assert (=> b!3227044 m!3505959))

(declare-fun m!3505961 () Bool)

(assert (=> b!3227044 m!3505961))

(declare-fun m!3505963 () Bool)

(assert (=> b!3227044 m!3505963))

(declare-fun m!3505965 () Bool)

(assert (=> b!3227044 m!3505965))

(declare-fun m!3505967 () Bool)

(assert (=> b!3227044 m!3505967))

(assert (=> b!3227044 m!3505953))

(declare-fun m!3505969 () Bool)

(assert (=> b!3227044 m!3505969))

(assert (=> b!3227044 m!3505939))

(declare-fun m!3505971 () Bool)

(assert (=> b!3227044 m!3505971))

(assert (=> b!3227044 m!3505073))

(declare-fun m!3505973 () Bool)

(assert (=> b!3227044 m!3505973))

(assert (=> b!3227044 m!3505965))

(assert (=> b!3227044 m!3505955))

(assert (=> d!885790 d!886070))

(declare-fun d!886076 () Bool)

(assert (=> d!886076 (= (list!12963 (singletonSeq!2358 separatorToken!241)) (list!12967 (c!542200 (singletonSeq!2358 separatorToken!241))))))

(declare-fun bs!542955 () Bool)

(assert (= bs!542955 d!886076))

(declare-fun m!3505975 () Bool)

(assert (=> bs!542955 m!3505975))

(assert (=> d!885794 d!886076))

(declare-fun d!886078 () Bool)

(assert (=> d!886078 (= (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241))))) (list!12967 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 separatorToken!241)))))))))

(declare-fun bs!542956 () Bool)

(assert (= bs!542956 d!886078))

(declare-fun m!3505977 () Bool)

(assert (=> bs!542956 m!3505977))

(assert (=> d!885794 d!886078))

(assert (=> d!885794 d!885886))

(declare-fun d!886080 () Bool)

(declare-fun lt!1094801 () Int)

(assert (=> d!886080 (= lt!1094801 (size!27410 (list!12963 (_1!21016 lt!1094407))))))

(assert (=> d!886080 (= lt!1094801 (size!27411 (c!542200 (_1!21016 lt!1094407))))))

(assert (=> d!886080 (= (size!27408 (_1!21016 lt!1094407)) lt!1094801)))

(declare-fun bs!542957 () Bool)

(assert (= bs!542957 d!886080))

(assert (=> bs!542957 m!3505341))

(assert (=> bs!542957 m!3505341))

(declare-fun m!3505979 () Bool)

(assert (=> bs!542957 m!3505979))

(declare-fun m!3505981 () Bool)

(assert (=> bs!542957 m!3505981))

(assert (=> d!885794 d!886080))

(assert (=> d!885794 d!885884))

(assert (=> d!885794 d!885796))

(assert (=> d!885794 d!885882))

(declare-fun b!3227056 () Bool)

(declare-fun e!2012704 () Bool)

(declare-fun e!2012705 () Bool)

(assert (=> b!3227056 (= e!2012704 e!2012705)))

(declare-fun res!1314253 () Bool)

(assert (=> b!3227056 (= res!1314253 (not ((_ is Cons!36343) rules!2135)))))

(assert (=> b!3227056 (=> res!1314253 e!2012705)))

(declare-fun b!3227057 () Bool)

(declare-fun call!233192 () Bool)

(assert (=> b!3227057 (= e!2012705 call!233192)))

(declare-fun b!3227058 () Bool)

(declare-fun e!2012703 () Bool)

(assert (=> b!3227058 (= e!2012704 e!2012703)))

(declare-fun res!1314252 () Bool)

(declare-fun rulesUseDisjointChars!281 (Rule!10324 Rule!10324) Bool)

(assert (=> b!3227058 (= res!1314252 (rulesUseDisjointChars!281 (h!41763 rules!2135) (h!41763 rules!2135)))))

(assert (=> b!3227058 (=> (not res!1314252) (not e!2012703))))

(declare-fun b!3227059 () Bool)

(assert (=> b!3227059 (= e!2012703 call!233192)))

(declare-fun d!886082 () Bool)

(declare-fun c!542318 () Bool)

(assert (=> d!886082 (= c!542318 (and ((_ is Cons!36343) rules!2135) (not (= (isSeparator!5262 (h!41763 rules!2135)) (isSeparator!5262 (h!41763 rules!2135))))))))

(assert (=> d!886082 (= (ruleDisjointCharsFromAllFromOtherType!603 (h!41763 rules!2135) rules!2135) e!2012704)))

(declare-fun bm!233187 () Bool)

(assert (=> bm!233187 (= call!233192 (ruleDisjointCharsFromAllFromOtherType!603 (h!41763 rules!2135) (t!241088 rules!2135)))))

(assert (= (and d!886082 c!542318) b!3227058))

(assert (= (and d!886082 (not c!542318)) b!3227056))

(assert (= (and b!3227058 res!1314252) b!3227059))

(assert (= (and b!3227056 (not res!1314253)) b!3227057))

(assert (= (or b!3227059 b!3227057) bm!233187))

(declare-fun m!3505983 () Bool)

(assert (=> b!3227058 m!3505983))

(declare-fun m!3505985 () Bool)

(assert (=> bm!233187 m!3505985))

(assert (=> b!3226533 d!886082))

(declare-fun d!886084 () Bool)

(assert (=> d!886084 (= (inv!49218 (tag!5794 (rule!7720 (h!41762 (t!241087 tokens!494))))) (= (mod (str.len (value!170426 (tag!5794 (rule!7720 (h!41762 (t!241087 tokens!494)))))) 2) 0))))

(assert (=> b!3226720 d!886084))

(declare-fun d!886086 () Bool)

(declare-fun res!1314254 () Bool)

(declare-fun e!2012706 () Bool)

(assert (=> d!886086 (=> (not res!1314254) (not e!2012706))))

(assert (=> d!886086 (= res!1314254 (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))))))

(assert (=> d!886086 (= (inv!49222 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) e!2012706)))

(declare-fun b!3227060 () Bool)

(assert (=> b!3227060 (= e!2012706 (equivClasses!2066 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))))))

(assert (= (and d!886086 res!1314254) b!3227060))

(declare-fun m!3505987 () Bool)

(assert (=> d!886086 m!3505987))

(declare-fun m!3505989 () Bool)

(assert (=> b!3227060 m!3505989))

(assert (=> b!3226720 d!886086))

(declare-fun d!886088 () Bool)

(declare-fun lt!1094802 () Bool)

(assert (=> d!886088 (= lt!1094802 (isEmpty!20425 (list!12959 (_2!21016 lt!1094407))))))

(assert (=> d!886088 (= lt!1094802 (isEmpty!20430 (c!542199 (_2!21016 lt!1094407))))))

(assert (=> d!886088 (= (isEmpty!20427 (_2!21016 lt!1094407)) lt!1094802)))

(declare-fun bs!542958 () Bool)

(assert (= bs!542958 d!886088))

(declare-fun m!3505991 () Bool)

(assert (=> bs!542958 m!3505991))

(assert (=> bs!542958 m!3505991))

(declare-fun m!3505993 () Bool)

(assert (=> bs!542958 m!3505993))

(declare-fun m!3505995 () Bool)

(assert (=> bs!542958 m!3505995))

(assert (=> b!3226493 d!886088))

(declare-fun lt!1094803 () Bool)

(declare-fun d!886090 () Bool)

(assert (=> d!886090 (= lt!1094803 (isEmpty!20425 (list!12959 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))))

(assert (=> d!886090 (= lt!1094803 (isEmpty!20430 (c!542199 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))))

(assert (=> d!886090 (= (isEmpty!20427 (_2!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))) lt!1094803)))

(declare-fun bs!542959 () Bool)

(assert (= bs!542959 d!886090))

(declare-fun m!3505997 () Bool)

(assert (=> bs!542959 m!3505997))

(assert (=> bs!542959 m!3505997))

(declare-fun m!3505999 () Bool)

(assert (=> bs!542959 m!3505999))

(declare-fun m!3506001 () Bool)

(assert (=> bs!542959 m!3506001))

(assert (=> b!3226476 d!886090))

(declare-fun b!3227061 () Bool)

(declare-fun res!1314257 () Bool)

(declare-fun e!2012707 () Bool)

(assert (=> b!3227061 (=> (not res!1314257) (not e!2012707))))

(declare-fun lt!1094804 () tuple2!35764)

(assert (=> b!3227061 (= res!1314257 (= (list!12963 (_1!21016 lt!1094804)) (_1!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))))

(declare-fun d!886092 () Bool)

(assert (=> d!886092 e!2012707))

(declare-fun res!1314256 () Bool)

(assert (=> d!886092 (=> (not res!1314256) (not e!2012707))))

(declare-fun e!2012709 () Bool)

(assert (=> d!886092 (= res!1314256 e!2012709)))

(declare-fun c!542319 () Bool)

(assert (=> d!886092 (= c!542319 (> (size!27408 (_1!21016 lt!1094804)) 0))))

(assert (=> d!886092 (= lt!1094804 (lexTailRecV2!943 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))) (BalanceConc!21413 Empty!10899) (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))) (BalanceConc!21415 Empty!10900)))))

(assert (=> d!886092 (= (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))) lt!1094804)))

(declare-fun b!3227062 () Bool)

(assert (=> b!3227062 (= e!2012709 (= (_2!21016 lt!1094804) (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))))

(declare-fun b!3227063 () Bool)

(declare-fun e!2012708 () Bool)

(assert (=> b!3227063 (= e!2012708 (not (isEmpty!20421 (_1!21016 lt!1094804))))))

(declare-fun b!3227064 () Bool)

(assert (=> b!3227064 (= e!2012707 (= (list!12959 (_2!21016 lt!1094804)) (_2!21018 (lexList!1331 thiss!18206 rules!2135 (list!12959 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))))

(declare-fun b!3227065 () Bool)

(assert (=> b!3227065 (= e!2012709 e!2012708)))

(declare-fun res!1314255 () Bool)

(assert (=> b!3227065 (= res!1314255 (< (size!27409 (_2!21016 lt!1094804)) (size!27409 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))

(assert (=> b!3227065 (=> (not res!1314255) (not e!2012708))))

(assert (= (and d!886092 c!542319) b!3227065))

(assert (= (and d!886092 (not c!542319)) b!3227062))

(assert (= (and b!3227065 res!1314255) b!3227063))

(assert (= (and d!886092 res!1314256) b!3227061))

(assert (= (and b!3227061 res!1314257) b!3227064))

(declare-fun m!3506003 () Bool)

(assert (=> b!3227065 m!3506003))

(assert (=> b!3227065 m!3504995))

(declare-fun m!3506005 () Bool)

(assert (=> b!3227065 m!3506005))

(declare-fun m!3506007 () Bool)

(assert (=> b!3227063 m!3506007))

(declare-fun m!3506009 () Bool)

(assert (=> d!886092 m!3506009))

(assert (=> d!886092 m!3504995))

(assert (=> d!886092 m!3504995))

(declare-fun m!3506011 () Bool)

(assert (=> d!886092 m!3506011))

(declare-fun m!3506013 () Bool)

(assert (=> b!3227064 m!3506013))

(assert (=> b!3227064 m!3504995))

(declare-fun m!3506015 () Bool)

(assert (=> b!3227064 m!3506015))

(assert (=> b!3227064 m!3506015))

(declare-fun m!3506017 () Bool)

(assert (=> b!3227064 m!3506017))

(declare-fun m!3506019 () Bool)

(assert (=> b!3227061 m!3506019))

(assert (=> b!3227061 m!3504995))

(assert (=> b!3227061 m!3506015))

(assert (=> b!3227061 m!3506015))

(assert (=> b!3227061 m!3506017))

(assert (=> b!3226476 d!886092))

(declare-fun d!886094 () Bool)

(declare-fun lt!1094805 () BalanceConc!21412)

(assert (=> d!886094 (= (list!12959 lt!1094805) (printList!1401 thiss!18206 (list!12963 (singletonSeq!2358 (h!41762 tokens!494)))))))

(assert (=> d!886094 (= lt!1094805 (printTailRec!1348 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)) 0 (BalanceConc!21413 Empty!10899)))))

(assert (=> d!886094 (= (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))) lt!1094805)))

(declare-fun bs!542960 () Bool)

(assert (= bs!542960 d!886094))

(declare-fun m!3506021 () Bool)

(assert (=> bs!542960 m!3506021))

(assert (=> bs!542960 m!3504887))

(assert (=> bs!542960 m!3505003))

(assert (=> bs!542960 m!3505003))

(declare-fun m!3506023 () Bool)

(assert (=> bs!542960 m!3506023))

(assert (=> bs!542960 m!3504887))

(declare-fun m!3506025 () Bool)

(assert (=> bs!542960 m!3506025))

(assert (=> b!3226476 d!886094))

(assert (=> b!3226476 d!885808))

(declare-fun d!886096 () Bool)

(declare-fun c!542320 () Bool)

(assert (=> d!886096 (= c!542320 ((_ is Node!10899) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(declare-fun e!2012710 () Bool)

(assert (=> d!886096 (= (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))) e!2012710)))

(declare-fun b!3227066 () Bool)

(assert (=> b!3227066 (= e!2012710 (inv!49227 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(declare-fun b!3227067 () Bool)

(declare-fun e!2012711 () Bool)

(assert (=> b!3227067 (= e!2012710 e!2012711)))

(declare-fun res!1314258 () Bool)

(assert (=> b!3227067 (= res!1314258 (not ((_ is Leaf!17141) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))))))

(assert (=> b!3227067 (=> res!1314258 e!2012711)))

(declare-fun b!3227068 () Bool)

(assert (=> b!3227068 (= e!2012711 (inv!49228 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(assert (= (and d!886096 c!542320) b!3227066))

(assert (= (and d!886096 (not c!542320)) b!3227067))

(assert (= (and b!3227067 (not res!1314258)) b!3227068))

(declare-fun m!3506027 () Bool)

(assert (=> b!3227066 m!3506027))

(declare-fun m!3506029 () Bool)

(assert (=> b!3227068 m!3506029))

(assert (=> b!3226458 d!886096))

(declare-fun d!886098 () Bool)

(declare-fun lt!1094806 () Token!9890)

(assert (=> d!886098 (= lt!1094806 (apply!8292 (list!12963 (_1!21016 lt!1094399)) 0))))

(assert (=> d!886098 (= lt!1094806 (apply!8293 (c!542200 (_1!21016 lt!1094399)) 0))))

(declare-fun e!2012712 () Bool)

(assert (=> d!886098 e!2012712))

(declare-fun res!1314259 () Bool)

(assert (=> d!886098 (=> (not res!1314259) (not e!2012712))))

(assert (=> d!886098 (= res!1314259 (<= 0 0))))

(assert (=> d!886098 (= (apply!8291 (_1!21016 lt!1094399) 0) lt!1094806)))

(declare-fun b!3227069 () Bool)

(assert (=> b!3227069 (= e!2012712 (< 0 (size!27408 (_1!21016 lt!1094399))))))

(assert (= (and d!886098 res!1314259) b!3227069))

(declare-fun m!3506031 () Bool)

(assert (=> d!886098 m!3506031))

(assert (=> d!886098 m!3506031))

(declare-fun m!3506033 () Bool)

(assert (=> d!886098 m!3506033))

(declare-fun m!3506035 () Bool)

(assert (=> d!886098 m!3506035))

(assert (=> b!3227069 m!3504997))

(assert (=> b!3226474 d!886098))

(declare-fun d!886100 () Bool)

(assert (=> d!886100 (= (list!12963 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494)))))) (list!12967 (c!542200 (_1!21016 (lex!2179 thiss!18206 rules!2135 (print!1916 thiss!18206 (singletonSeq!2358 (h!41762 tokens!494))))))))))

(declare-fun bs!542961 () Bool)

(assert (= bs!542961 d!886100))

(declare-fun m!3506037 () Bool)

(assert (=> bs!542961 m!3506037))

(assert (=> d!885786 d!886100))

(assert (=> d!885786 d!886092))

(assert (=> d!885786 d!886094))

(declare-fun d!886102 () Bool)

(assert (=> d!886102 (= (list!12963 (singletonSeq!2358 (h!41762 tokens!494))) (list!12967 (c!542200 (singletonSeq!2358 (h!41762 tokens!494)))))))

(declare-fun bs!542962 () Bool)

(assert (= bs!542962 d!886102))

(declare-fun m!3506039 () Bool)

(assert (=> bs!542962 m!3506039))

(assert (=> d!885786 d!886102))

(assert (=> d!885786 d!885808))

(assert (=> d!885786 d!885796))

(declare-fun d!886104 () Bool)

(declare-fun lt!1094807 () Int)

(assert (=> d!886104 (= lt!1094807 (size!27410 (list!12963 (_1!21016 lt!1094399))))))

(assert (=> d!886104 (= lt!1094807 (size!27411 (c!542200 (_1!21016 lt!1094399))))))

(assert (=> d!886104 (= (size!27408 (_1!21016 lt!1094399)) lt!1094807)))

(declare-fun bs!542963 () Bool)

(assert (= bs!542963 d!886104))

(assert (=> bs!542963 m!3506031))

(assert (=> bs!542963 m!3506031))

(declare-fun m!3506041 () Bool)

(assert (=> bs!542963 m!3506041))

(declare-fun m!3506043 () Bool)

(assert (=> bs!542963 m!3506043))

(assert (=> d!885786 d!886104))

(declare-fun d!886106 () Bool)

(declare-fun e!2012715 () Bool)

(assert (=> d!886106 e!2012715))

(declare-fun res!1314262 () Bool)

(assert (=> d!886106 (=> (not res!1314262) (not e!2012715))))

(declare-fun lt!1094810 () BalanceConc!21412)

(assert (=> d!886106 (= res!1314262 (= (list!12959 lt!1094810) lt!1094384))))

(declare-fun fromList!630 (List!36464) Conc!10899)

(assert (=> d!886106 (= lt!1094810 (BalanceConc!21413 (fromList!630 lt!1094384)))))

(assert (=> d!886106 (= (fromListB!1559 lt!1094384) lt!1094810)))

(declare-fun b!3227072 () Bool)

(assert (=> b!3227072 (= e!2012715 (isBalanced!3241 (fromList!630 lt!1094384)))))

(assert (= (and d!886106 res!1314262) b!3227072))

(declare-fun m!3506045 () Bool)

(assert (=> d!886106 m!3506045))

(declare-fun m!3506047 () Bool)

(assert (=> d!886106 m!3506047))

(assert (=> b!3227072 m!3506047))

(assert (=> b!3227072 m!3506047))

(declare-fun m!3506049 () Bool)

(assert (=> b!3227072 m!3506049))

(assert (=> d!885792 d!886106))

(declare-fun d!886108 () Bool)

(assert (=> d!886108 (= (isEmpty!20425 (originalCharacters!5976 (h!41762 tokens!494))) ((_ is Nil!36340) (originalCharacters!5976 (h!41762 tokens!494))))))

(assert (=> d!885762 d!886108))

(declare-fun d!886110 () Bool)

(assert (=> d!886110 (= (list!12959 (_2!21016 lt!1094405)) (list!12962 (c!542199 (_2!21016 lt!1094405))))))

(declare-fun bs!542964 () Bool)

(assert (= bs!542964 d!886110))

(declare-fun m!3506051 () Bool)

(assert (=> bs!542964 m!3506051))

(assert (=> b!3226490 d!886110))

(assert (=> b!3226490 d!886062))

(assert (=> b!3226490 d!886064))

(declare-fun bs!542965 () Bool)

(declare-fun d!886112 () Bool)

(assert (= bs!542965 (and d!886112 d!885868)))

(declare-fun lambda!118168 () Int)

(assert (=> bs!542965 (= (and (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (= (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (= lambda!118168 lambda!118148))))

(assert (=> d!886112 true))

(assert (=> d!886112 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) (dynLambda!14772 order!18735 lambda!118168))))

(assert (=> d!886112 true))

(assert (=> d!886112 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (dynLambda!14772 order!18735 lambda!118168))))

(assert (=> d!886112 (= (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (Forall!1276 lambda!118168))))

(declare-fun bs!542966 () Bool)

(assert (= bs!542966 d!886112))

(declare-fun m!3506053 () Bool)

(assert (=> bs!542966 m!3506053))

(assert (=> d!885770 d!886112))

(declare-fun d!886114 () Bool)

(assert (=> d!886114 (= (inv!15 (value!170427 separatorToken!241)) (= (charsToBigInt!0 (text!38893 (value!170427 separatorToken!241)) 0) (value!170422 (value!170427 separatorToken!241))))))

(declare-fun bs!542967 () Bool)

(assert (= bs!542967 d!886114))

(declare-fun m!3506055 () Bool)

(assert (=> bs!542967 m!3506055))

(assert (=> b!3226444 d!886114))

(declare-fun d!886116 () Bool)

(assert (=> d!886116 (= (inv!16 (value!170427 separatorToken!241)) (= (charsToInt!0 (text!38891 (value!170427 separatorToken!241))) (value!170418 (value!170427 separatorToken!241))))))

(declare-fun bs!542968 () Bool)

(assert (= bs!542968 d!886116))

(declare-fun m!3506057 () Bool)

(assert (=> bs!542968 m!3506057))

(assert (=> b!3226448 d!886116))

(declare-fun d!886118 () Bool)

(assert (=> d!886118 (= (inv!17 (value!170427 separatorToken!241)) (= (charsToBigInt!1 (text!38892 (value!170427 separatorToken!241))) (value!170419 (value!170427 separatorToken!241))))))

(declare-fun bs!542969 () Bool)

(assert (= bs!542969 d!886118))

(declare-fun m!3506059 () Bool)

(assert (=> bs!542969 m!3506059))

(assert (=> b!3226446 d!886118))

(declare-fun d!886120 () Bool)

(declare-fun res!1314263 () Bool)

(declare-fun e!2012716 () Bool)

(assert (=> d!886120 (=> (not res!1314263) (not e!2012716))))

(assert (=> d!886120 (= res!1314263 (not (isEmpty!20425 (originalCharacters!5976 (h!41762 (t!241087 tokens!494))))))))

(assert (=> d!886120 (= (inv!49221 (h!41762 (t!241087 tokens!494))) e!2012716)))

(declare-fun b!3227073 () Bool)

(declare-fun res!1314264 () Bool)

(assert (=> b!3227073 (=> (not res!1314264) (not e!2012716))))

(assert (=> b!3227073 (= res!1314264 (= (originalCharacters!5976 (h!41762 (t!241087 tokens!494))) (list!12959 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (value!170427 (h!41762 (t!241087 tokens!494)))))))))

(declare-fun b!3227074 () Bool)

(assert (=> b!3227074 (= e!2012716 (= (size!27403 (h!41762 (t!241087 tokens!494))) (size!27405 (originalCharacters!5976 (h!41762 (t!241087 tokens!494))))))))

(assert (= (and d!886120 res!1314263) b!3227073))

(assert (= (and b!3227073 res!1314264) b!3227074))

(declare-fun b_lambda!88809 () Bool)

(assert (=> (not b_lambda!88809) (not b!3227073)))

(declare-fun tb!159715 () Bool)

(declare-fun t!241174 () Bool)

(assert (=> (and b!3226392 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241174) tb!159715))

(declare-fun b!3227075 () Bool)

(declare-fun e!2012717 () Bool)

(declare-fun tp!1016763 () Bool)

(assert (=> b!3227075 (= e!2012717 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (value!170427 (h!41762 (t!241087 tokens!494)))))) tp!1016763))))

(declare-fun result!202228 () Bool)

(assert (=> tb!159715 (= result!202228 (and (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (value!170427 (h!41762 (t!241087 tokens!494))))) e!2012717))))

(assert (= tb!159715 b!3227075))

(declare-fun m!3506061 () Bool)

(assert (=> b!3227075 m!3506061))

(declare-fun m!3506063 () Bool)

(assert (=> tb!159715 m!3506063))

(assert (=> b!3227073 t!241174))

(declare-fun b_and!216035 () Bool)

(assert (= b_and!216021 (and (=> t!241174 result!202228) b_and!216035)))

(declare-fun t!241176 () Bool)

(declare-fun tb!159717 () Bool)

(assert (=> (and b!3226394 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241176) tb!159717))

(declare-fun result!202230 () Bool)

(assert (= result!202230 result!202228))

(assert (=> b!3227073 t!241176))

(declare-fun b_and!216037 () Bool)

(assert (= b_and!216015 (and (=> t!241176 result!202230) b_and!216037)))

(declare-fun tb!159719 () Bool)

(declare-fun t!241178 () Bool)

(assert (=> (and b!3226746 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241178) tb!159719))

(declare-fun result!202232 () Bool)

(assert (= result!202232 result!202228))

(assert (=> b!3227073 t!241178))

(declare-fun b_and!216039 () Bool)

(assert (= b_and!216019 (and (=> t!241178 result!202232) b_and!216039)))

(declare-fun t!241180 () Bool)

(declare-fun tb!159721 () Bool)

(assert (=> (and b!3226721 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241180) tb!159721))

(declare-fun result!202234 () Bool)

(assert (= result!202234 result!202228))

(assert (=> b!3227073 t!241180))

(declare-fun b_and!216041 () Bool)

(assert (= b_and!216017 (and (=> t!241180 result!202234) b_and!216041)))

(declare-fun t!241182 () Bool)

(declare-fun tb!159723 () Bool)

(assert (=> (and b!3226389 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241182) tb!159723))

(declare-fun result!202236 () Bool)

(assert (= result!202236 result!202228))

(assert (=> b!3227073 t!241182))

(declare-fun b_and!216043 () Bool)

(assert (= b_and!216023 (and (=> t!241182 result!202236) b_and!216043)))

(declare-fun m!3506065 () Bool)

(assert (=> d!886120 m!3506065))

(declare-fun m!3506067 () Bool)

(assert (=> b!3227073 m!3506067))

(assert (=> b!3227073 m!3506067))

(declare-fun m!3506069 () Bool)

(assert (=> b!3227073 m!3506069))

(declare-fun m!3506071 () Bool)

(assert (=> b!3227074 m!3506071))

(assert (=> b!3226718 d!886120))

(declare-fun bs!542970 () Bool)

(declare-fun d!886122 () Bool)

(assert (= bs!542970 (and d!886122 d!886038)))

(declare-fun lambda!118169 () Int)

(assert (=> bs!542970 (= (= (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241)))) (= lambda!118169 lambda!118163))))

(declare-fun bs!542971 () Bool)

(assert (= bs!542971 (and d!886122 d!886066)))

(assert (=> bs!542971 (= (= (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (= lambda!118169 lambda!118167))))

(assert (=> d!886122 true))

(assert (=> d!886122 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (dynLambda!14774 order!18741 lambda!118169))))

(assert (=> d!886122 (= (equivClasses!2066 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (Forall2!873 lambda!118169))))

(declare-fun bs!542972 () Bool)

(assert (= bs!542972 d!886122))

(declare-fun m!3506073 () Bool)

(assert (=> bs!542972 m!3506073))

(assert (=> b!3226422 d!886122))

(declare-fun d!886124 () Bool)

(declare-fun res!1314265 () Bool)

(declare-fun e!2012718 () Bool)

(assert (=> d!886124 (=> res!1314265 e!2012718)))

(assert (=> d!886124 (= res!1314265 ((_ is Nil!36342) (list!12963 (seqFromList!3587 tokens!494))))))

(assert (=> d!886124 (= (forall!7458 (list!12963 (seqFromList!3587 tokens!494)) lambda!118145) e!2012718)))

(declare-fun b!3227076 () Bool)

(declare-fun e!2012719 () Bool)

(assert (=> b!3227076 (= e!2012718 e!2012719)))

(declare-fun res!1314266 () Bool)

(assert (=> b!3227076 (=> (not res!1314266) (not e!2012719))))

(assert (=> b!3227076 (= res!1314266 (dynLambda!14768 lambda!118145 (h!41762 (list!12963 (seqFromList!3587 tokens!494)))))))

(declare-fun b!3227077 () Bool)

(assert (=> b!3227077 (= e!2012719 (forall!7458 (t!241087 (list!12963 (seqFromList!3587 tokens!494))) lambda!118145))))

(assert (= (and d!886124 (not res!1314265)) b!3227076))

(assert (= (and b!3227076 res!1314266) b!3227077))

(declare-fun b_lambda!88811 () Bool)

(assert (=> (not b_lambda!88811) (not b!3227076)))

(declare-fun m!3506075 () Bool)

(assert (=> b!3227076 m!3506075))

(declare-fun m!3506077 () Bool)

(assert (=> b!3227077 m!3506077))

(assert (=> d!885814 d!886124))

(assert (=> d!885814 d!886034))

(declare-fun d!886126 () Bool)

(declare-fun lt!1094813 () Bool)

(assert (=> d!886126 (= lt!1094813 (forall!7458 (list!12963 (seqFromList!3587 tokens!494)) lambda!118145))))

(declare-fun forall!7463 (Conc!10900 Int) Bool)

(assert (=> d!886126 (= lt!1094813 (forall!7463 (c!542200 (seqFromList!3587 tokens!494)) lambda!118145))))

(assert (=> d!886126 (= (forall!7460 (seqFromList!3587 tokens!494) lambda!118145) lt!1094813)))

(declare-fun bs!542973 () Bool)

(assert (= bs!542973 d!886126))

(assert (=> bs!542973 m!3504871))

(assert (=> bs!542973 m!3505309))

(assert (=> bs!542973 m!3505309))

(assert (=> bs!542973 m!3505311))

(declare-fun m!3506079 () Bool)

(assert (=> bs!542973 m!3506079))

(assert (=> d!885814 d!886126))

(assert (=> d!885814 d!885796))

(declare-fun bs!542974 () Bool)

(declare-fun d!886128 () Bool)

(assert (= bs!542974 (and d!886128 d!885868)))

(declare-fun lambda!118170 () Int)

(assert (=> bs!542974 (= (and (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) (= (toValue!7366 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (rule!7720 (h!41762 tokens!494)))))) (= lambda!118170 lambda!118148))))

(declare-fun bs!542975 () Bool)

(assert (= bs!542975 (and d!886128 d!886112)))

(assert (=> bs!542975 (= (and (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) (= (toValue!7366 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (rule!7720 separatorToken!241))))) (= lambda!118170 lambda!118168))))

(assert (=> d!886128 true))

(assert (=> d!886128 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14772 order!18735 lambda!118170))))

(assert (=> d!886128 true))

(assert (=> d!886128 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (dynLambda!14772 order!18735 lambda!118170))))

(assert (=> d!886128 (= (semiInverseModEq!2167 (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toValue!7366 (transformation!5262 (h!41763 rules!2135)))) (Forall!1276 lambda!118170))))

(declare-fun bs!542976 () Bool)

(assert (= bs!542976 d!886128))

(declare-fun m!3506081 () Bool)

(assert (=> bs!542976 m!3506081))

(assert (=> d!885778 d!886128))

(declare-fun b!3227081 () Bool)

(declare-fun e!2012721 () List!36464)

(assert (=> b!3227081 (= e!2012721 (++!8746 (list!12962 (left!28296 (c!542199 lt!1094385))) (list!12962 (right!28626 (c!542199 lt!1094385)))))))

(declare-fun b!3227080 () Bool)

(assert (=> b!3227080 (= e!2012721 (list!12965 (xs!14017 (c!542199 lt!1094385))))))

(declare-fun b!3227079 () Bool)

(declare-fun e!2012720 () List!36464)

(assert (=> b!3227079 (= e!2012720 e!2012721)))

(declare-fun c!542323 () Bool)

(assert (=> b!3227079 (= c!542323 ((_ is Leaf!17141) (c!542199 lt!1094385)))))

(declare-fun d!886130 () Bool)

(declare-fun c!542322 () Bool)

(assert (=> d!886130 (= c!542322 ((_ is Empty!10899) (c!542199 lt!1094385)))))

(assert (=> d!886130 (= (list!12962 (c!542199 lt!1094385)) e!2012720)))

(declare-fun b!3227078 () Bool)

(assert (=> b!3227078 (= e!2012720 Nil!36340)))

(assert (= (and d!886130 c!542322) b!3227078))

(assert (= (and d!886130 (not c!542322)) b!3227079))

(assert (= (and b!3227079 c!542323) b!3227080))

(assert (= (and b!3227079 (not c!542323)) b!3227081))

(declare-fun m!3506083 () Bool)

(assert (=> b!3227081 m!3506083))

(declare-fun m!3506085 () Bool)

(assert (=> b!3227081 m!3506085))

(assert (=> b!3227081 m!3506083))

(assert (=> b!3227081 m!3506085))

(declare-fun m!3506087 () Bool)

(assert (=> b!3227081 m!3506087))

(declare-fun m!3506089 () Bool)

(assert (=> b!3227080 m!3506089))

(assert (=> d!885804 d!886130))

(declare-fun d!886132 () Bool)

(declare-fun e!2012724 () Bool)

(assert (=> d!886132 e!2012724))

(declare-fun res!1314269 () Bool)

(assert (=> d!886132 (=> (not res!1314269) (not e!2012724))))

(declare-fun lt!1094816 () BalanceConc!21414)

(assert (=> d!886132 (= res!1314269 (= (list!12963 lt!1094816) tokens!494))))

(declare-fun fromList!631 (List!36466) Conc!10900)

(assert (=> d!886132 (= lt!1094816 (BalanceConc!21415 (fromList!631 tokens!494)))))

(assert (=> d!886132 (= (fromListB!1560 tokens!494) lt!1094816)))

(declare-fun b!3227084 () Bool)

(assert (=> b!3227084 (= e!2012724 (isBalanced!3239 (fromList!631 tokens!494)))))

(assert (= (and d!886132 res!1314269) b!3227084))

(declare-fun m!3506091 () Bool)

(assert (=> d!886132 m!3506091))

(declare-fun m!3506093 () Bool)

(assert (=> d!886132 m!3506093))

(assert (=> b!3227084 m!3506093))

(assert (=> b!3227084 m!3506093))

(declare-fun m!3506095 () Bool)

(assert (=> b!3227084 m!3506095))

(assert (=> d!885864 d!886132))

(declare-fun d!886134 () Bool)

(assert (=> d!886134 (= (list!12959 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))) (list!12962 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))))))

(declare-fun bs!542977 () Bool)

(assert (= bs!542977 d!886134))

(declare-fun m!3506097 () Bool)

(assert (=> bs!542977 m!3506097))

(assert (=> b!3226427 d!886134))

(declare-fun d!886136 () Bool)

(declare-fun res!1314270 () Bool)

(declare-fun e!2012725 () Bool)

(assert (=> d!886136 (=> res!1314270 e!2012725)))

(assert (=> d!886136 (= res!1314270 (not ((_ is Cons!36343) (t!241088 rules!2135))))))

(assert (=> d!886136 (= (sepAndNonSepRulesDisjointChars!1456 rules!2135 (t!241088 rules!2135)) e!2012725)))

(declare-fun b!3227085 () Bool)

(declare-fun e!2012726 () Bool)

(assert (=> b!3227085 (= e!2012725 e!2012726)))

(declare-fun res!1314271 () Bool)

(assert (=> b!3227085 (=> (not res!1314271) (not e!2012726))))

(assert (=> b!3227085 (= res!1314271 (ruleDisjointCharsFromAllFromOtherType!603 (h!41763 (t!241088 rules!2135)) rules!2135))))

(declare-fun b!3227086 () Bool)

(assert (=> b!3227086 (= e!2012726 (sepAndNonSepRulesDisjointChars!1456 rules!2135 (t!241088 (t!241088 rules!2135))))))

(assert (= (and d!886136 (not res!1314270)) b!3227085))

(assert (= (and b!3227085 res!1314271) b!3227086))

(declare-fun m!3506099 () Bool)

(assert (=> b!3227085 m!3506099))

(declare-fun m!3506101 () Bool)

(assert (=> b!3227086 m!3506101))

(assert (=> b!3226534 d!886136))

(declare-fun d!886138 () Bool)

(assert (=> d!886138 (= (isEmpty!20425 (originalCharacters!5976 separatorToken!241)) ((_ is Nil!36340) (originalCharacters!5976 separatorToken!241)))))

(assert (=> d!885772 d!886138))

(declare-fun d!886140 () Bool)

(assert (=> d!886140 (= (tail!5229 (drop!1873 lt!1094430 0)) (drop!1873 lt!1094430 (+ 0 1)))))

(declare-fun lt!1094819 () Unit!50930)

(declare-fun choose!18821 (List!36466 Int) Unit!50930)

(assert (=> d!886140 (= lt!1094819 (choose!18821 lt!1094430 0))))

(declare-fun e!2012729 () Bool)

(assert (=> d!886140 e!2012729))

(declare-fun res!1314274 () Bool)

(assert (=> d!886140 (=> (not res!1314274) (not e!2012729))))

(assert (=> d!886140 (= res!1314274 (>= 0 0))))

(assert (=> d!886140 (= (lemmaDropTail!933 lt!1094430 0) lt!1094819)))

(declare-fun b!3227089 () Bool)

(assert (=> b!3227089 (= e!2012729 (< 0 (size!27410 lt!1094430)))))

(assert (= (and d!886140 res!1314274) b!3227089))

(assert (=> d!886140 m!3505083))

(assert (=> d!886140 m!3505083))

(assert (=> d!886140 m!3505085))

(assert (=> d!886140 m!3505103))

(declare-fun m!3506103 () Bool)

(assert (=> d!886140 m!3506103))

(declare-fun m!3506105 () Bool)

(assert (=> b!3227089 m!3506105))

(assert (=> b!3226519 d!886140))

(declare-fun d!886142 () Bool)

(declare-fun lt!1094820 () BalanceConc!21412)

(assert (=> d!886142 (= (list!12959 lt!1094820) (originalCharacters!5976 (apply!8291 lt!1094387 0)))))

(assert (=> d!886142 (= lt!1094820 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0)))) (value!170427 (apply!8291 lt!1094387 0))))))

(assert (=> d!886142 (= (charsOf!3278 (apply!8291 lt!1094387 0)) lt!1094820)))

(declare-fun b_lambda!88813 () Bool)

(assert (=> (not b_lambda!88813) (not d!886142)))

(declare-fun tb!159725 () Bool)

(declare-fun t!241184 () Bool)

(assert (=> (and b!3226746 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241184) tb!159725))

(declare-fun b!3227090 () Bool)

(declare-fun e!2012730 () Bool)

(declare-fun tp!1016764 () Bool)

(assert (=> b!3227090 (= e!2012730 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0)))) (value!170427 (apply!8291 lt!1094387 0))))) tp!1016764))))

(declare-fun result!202238 () Bool)

(assert (=> tb!159725 (= result!202238 (and (inv!49226 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0)))) (value!170427 (apply!8291 lt!1094387 0)))) e!2012730))))

(assert (= tb!159725 b!3227090))

(declare-fun m!3506107 () Bool)

(assert (=> b!3227090 m!3506107))

(declare-fun m!3506109 () Bool)

(assert (=> tb!159725 m!3506109))

(assert (=> d!886142 t!241184))

(declare-fun b_and!216045 () Bool)

(assert (= b_and!216039 (and (=> t!241184 result!202238) b_and!216045)))

(declare-fun t!241186 () Bool)

(declare-fun tb!159727 () Bool)

(assert (=> (and b!3226389 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241186) tb!159727))

(declare-fun result!202240 () Bool)

(assert (= result!202240 result!202238))

(assert (=> d!886142 t!241186))

(declare-fun b_and!216047 () Bool)

(assert (= b_and!216043 (and (=> t!241186 result!202240) b_and!216047)))

(declare-fun t!241188 () Bool)

(declare-fun tb!159729 () Bool)

(assert (=> (and b!3226394 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241188) tb!159729))

(declare-fun result!202242 () Bool)

(assert (= result!202242 result!202238))

(assert (=> d!886142 t!241188))

(declare-fun b_and!216049 () Bool)

(assert (= b_and!216037 (and (=> t!241188 result!202242) b_and!216049)))

(declare-fun t!241190 () Bool)

(declare-fun tb!159731 () Bool)

(assert (=> (and b!3226392 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241190) tb!159731))

(declare-fun result!202244 () Bool)

(assert (= result!202244 result!202238))

(assert (=> d!886142 t!241190))

(declare-fun b_and!216051 () Bool)

(assert (= b_and!216035 (and (=> t!241190 result!202244) b_and!216051)))

(declare-fun tb!159733 () Bool)

(declare-fun t!241193 () Bool)

(assert (=> (and b!3226721 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241193) tb!159733))

(declare-fun result!202246 () Bool)

(assert (= result!202246 result!202238))

(assert (=> d!886142 t!241193))

(declare-fun b_and!216053 () Bool)

(assert (= b_and!216041 (and (=> t!241193 result!202246) b_and!216053)))

(declare-fun m!3506111 () Bool)

(assert (=> d!886142 m!3506111))

(declare-fun m!3506113 () Bool)

(assert (=> d!886142 m!3506113))

(assert (=> b!3226519 d!886142))

(declare-fun d!886144 () Bool)

(declare-fun lt!1094823 () BalanceConc!21412)

(assert (=> d!886144 (= (list!12959 lt!1094823) (printListTailRec!573 thiss!18206 (dropList!1090 lt!1094387 (+ 0 1)) (list!12959 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0))))))))

(declare-fun e!2012736 () BalanceConc!21412)

(assert (=> d!886144 (= lt!1094823 e!2012736)))

(declare-fun c!542325 () Bool)

(assert (=> d!886144 (= c!542325 (>= (+ 0 1) (size!27408 lt!1094387)))))

(declare-fun e!2012735 () Bool)

(assert (=> d!886144 e!2012735))

(declare-fun res!1314279 () Bool)

(assert (=> d!886144 (=> (not res!1314279) (not e!2012735))))

(assert (=> d!886144 (= res!1314279 (>= (+ 0 1) 0))))

(assert (=> d!886144 (= (printTailRec!1348 thiss!18206 lt!1094387 (+ 0 1) (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0)))) lt!1094823)))

(declare-fun b!3227095 () Bool)

(assert (=> b!3227095 (= e!2012735 (<= (+ 0 1) (size!27408 lt!1094387)))))

(declare-fun b!3227096 () Bool)

(assert (=> b!3227096 (= e!2012736 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0))))))

(declare-fun b!3227097 () Bool)

(assert (=> b!3227097 (= e!2012736 (printTailRec!1348 thiss!18206 lt!1094387 (+ 0 1 1) (++!8745 (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0))) (charsOf!3278 (apply!8291 lt!1094387 (+ 0 1))))))))

(declare-fun lt!1094826 () List!36466)

(assert (=> b!3227097 (= lt!1094826 (list!12963 lt!1094387))))

(declare-fun lt!1094824 () Unit!50930)

(assert (=> b!3227097 (= lt!1094824 (lemmaDropApply!1049 lt!1094826 (+ 0 1)))))

(assert (=> b!3227097 (= (head!7085 (drop!1873 lt!1094826 (+ 0 1))) (apply!8292 lt!1094826 (+ 0 1)))))

(declare-fun lt!1094829 () Unit!50930)

(assert (=> b!3227097 (= lt!1094829 lt!1094824)))

(declare-fun lt!1094827 () List!36466)

(assert (=> b!3227097 (= lt!1094827 (list!12963 lt!1094387))))

(declare-fun lt!1094825 () Unit!50930)

(assert (=> b!3227097 (= lt!1094825 (lemmaDropTail!933 lt!1094827 (+ 0 1)))))

(assert (=> b!3227097 (= (tail!5229 (drop!1873 lt!1094827 (+ 0 1))) (drop!1873 lt!1094827 (+ 0 1 1)))))

(declare-fun lt!1094828 () Unit!50930)

(assert (=> b!3227097 (= lt!1094828 lt!1094825)))

(assert (= (and d!886144 res!1314279) b!3227095))

(assert (= (and d!886144 c!542325) b!3227096))

(assert (= (and d!886144 (not c!542325)) b!3227097))

(assert (=> d!886144 m!3505093))

(declare-fun m!3506115 () Bool)

(assert (=> d!886144 m!3506115))

(declare-fun m!3506117 () Bool)

(assert (=> d!886144 m!3506117))

(assert (=> d!886144 m!3505077))

(declare-fun m!3506119 () Bool)

(assert (=> d!886144 m!3506119))

(assert (=> d!886144 m!3506117))

(assert (=> d!886144 m!3506115))

(declare-fun m!3506121 () Bool)

(assert (=> d!886144 m!3506121))

(assert (=> b!3227095 m!3505077))

(declare-fun m!3506123 () Bool)

(assert (=> b!3227097 m!3506123))

(declare-fun m!3506125 () Bool)

(assert (=> b!3227097 m!3506125))

(assert (=> b!3227097 m!3505067))

(declare-fun m!3506127 () Bool)

(assert (=> b!3227097 m!3506127))

(declare-fun m!3506129 () Bool)

(assert (=> b!3227097 m!3506129))

(assert (=> b!3227097 m!3505093))

(declare-fun m!3506131 () Bool)

(assert (=> b!3227097 m!3506131))

(declare-fun m!3506133 () Bool)

(assert (=> b!3227097 m!3506133))

(declare-fun m!3506135 () Bool)

(assert (=> b!3227097 m!3506135))

(declare-fun m!3506137 () Bool)

(assert (=> b!3227097 m!3506137))

(assert (=> b!3227097 m!3506127))

(declare-fun m!3506139 () Bool)

(assert (=> b!3227097 m!3506139))

(declare-fun m!3506141 () Bool)

(assert (=> b!3227097 m!3506141))

(declare-fun m!3506143 () Bool)

(assert (=> b!3227097 m!3506143))

(assert (=> b!3227097 m!3506123))

(assert (=> b!3227097 m!3506133))

(declare-fun m!3506145 () Bool)

(assert (=> b!3227097 m!3506145))

(assert (=> b!3227097 m!3506139))

(assert (=> b!3227097 m!3506131))

(assert (=> b!3226519 d!886144))

(declare-fun d!886146 () Bool)

(assert (=> d!886146 (= (tail!5229 (drop!1873 lt!1094430 0)) (t!241087 (drop!1873 lt!1094430 0)))))

(assert (=> b!3226519 d!886146))

(declare-fun d!886148 () Bool)

(assert (=> d!886148 (= (head!7085 (drop!1873 lt!1094429 0)) (h!41762 (drop!1873 lt!1094429 0)))))

(assert (=> b!3226519 d!886148))

(declare-fun b!3227119 () Bool)

(declare-fun res!1314297 () Bool)

(declare-fun e!2012749 () Bool)

(assert (=> b!3227119 (=> (not res!1314297) (not e!2012749))))

(declare-fun height!1575 (Conc!10899) Int)

(declare-fun ++!8749 (Conc!10899 Conc!10899) Conc!10899)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3227119 (= res!1314297 (<= (height!1575 (++!8749 (c!542199 (BalanceConc!21413 Empty!10899)) (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0))))) (+ (max!0 (height!1575 (c!542199 (BalanceConc!21413 Empty!10899))) (height!1575 (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0))))) 1)))))

(declare-fun b!3227121 () Bool)

(declare-fun lt!1094834 () BalanceConc!21412)

(assert (=> b!3227121 (= e!2012749 (= (list!12959 lt!1094834) (++!8746 (list!12959 (BalanceConc!21413 Empty!10899)) (list!12959 (charsOf!3278 (apply!8291 lt!1094387 0))))))))

(declare-fun b!3227120 () Bool)

(declare-fun res!1314296 () Bool)

(assert (=> b!3227120 (=> (not res!1314296) (not e!2012749))))

(assert (=> b!3227120 (= res!1314296 (>= (height!1575 (++!8749 (c!542199 (BalanceConc!21413 Empty!10899)) (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0))))) (max!0 (height!1575 (c!542199 (BalanceConc!21413 Empty!10899))) (height!1575 (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0)))))))))

(declare-fun d!886150 () Bool)

(assert (=> d!886150 e!2012749))

(declare-fun res!1314294 () Bool)

(assert (=> d!886150 (=> (not res!1314294) (not e!2012749))))

(declare-fun appendAssocInst!742 (Conc!10899 Conc!10899) Bool)

(assert (=> d!886150 (= res!1314294 (appendAssocInst!742 (c!542199 (BalanceConc!21413 Empty!10899)) (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0)))))))

(assert (=> d!886150 (= lt!1094834 (BalanceConc!21413 (++!8749 (c!542199 (BalanceConc!21413 Empty!10899)) (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0))))))))

(assert (=> d!886150 (= (++!8745 (BalanceConc!21413 Empty!10899) (charsOf!3278 (apply!8291 lt!1094387 0))) lt!1094834)))

(declare-fun b!3227118 () Bool)

(declare-fun res!1314295 () Bool)

(assert (=> b!3227118 (=> (not res!1314295) (not e!2012749))))

(assert (=> b!3227118 (= res!1314295 (isBalanced!3241 (++!8749 (c!542199 (BalanceConc!21413 Empty!10899)) (c!542199 (charsOf!3278 (apply!8291 lt!1094387 0))))))))

(assert (= (and d!886150 res!1314294) b!3227118))

(assert (= (and b!3227118 res!1314295) b!3227119))

(assert (= (and b!3227119 res!1314297) b!3227120))

(assert (= (and b!3227120 res!1314296) b!3227121))

(declare-fun m!3506189 () Bool)

(assert (=> b!3227118 m!3506189))

(assert (=> b!3227118 m!3506189))

(declare-fun m!3506191 () Bool)

(assert (=> b!3227118 m!3506191))

(declare-fun m!3506193 () Bool)

(assert (=> b!3227121 m!3506193))

(assert (=> b!3227121 m!3505073))

(assert (=> b!3227121 m!3505091))

(declare-fun m!3506195 () Bool)

(assert (=> b!3227121 m!3506195))

(assert (=> b!3227121 m!3505073))

(assert (=> b!3227121 m!3506195))

(declare-fun m!3506197 () Bool)

(assert (=> b!3227121 m!3506197))

(declare-fun m!3506199 () Bool)

(assert (=> d!886150 m!3506199))

(assert (=> d!886150 m!3506189))

(declare-fun m!3506201 () Bool)

(assert (=> b!3227119 m!3506201))

(assert (=> b!3227119 m!3506189))

(assert (=> b!3227119 m!3506189))

(declare-fun m!3506203 () Bool)

(assert (=> b!3227119 m!3506203))

(assert (=> b!3227119 m!3506201))

(declare-fun m!3506205 () Bool)

(assert (=> b!3227119 m!3506205))

(declare-fun m!3506207 () Bool)

(assert (=> b!3227119 m!3506207))

(assert (=> b!3227119 m!3506205))

(assert (=> b!3227120 m!3506201))

(assert (=> b!3227120 m!3506189))

(assert (=> b!3227120 m!3506189))

(assert (=> b!3227120 m!3506203))

(assert (=> b!3227120 m!3506201))

(assert (=> b!3227120 m!3506205))

(assert (=> b!3227120 m!3506207))

(assert (=> b!3227120 m!3506205))

(assert (=> b!3226519 d!886150))

(declare-fun d!886176 () Bool)

(assert (=> d!886176 (= (head!7085 (drop!1873 lt!1094429 0)) (apply!8292 lt!1094429 0))))

(declare-fun lt!1094847 () Unit!50930)

(declare-fun choose!18822 (List!36466 Int) Unit!50930)

(assert (=> d!886176 (= lt!1094847 (choose!18822 lt!1094429 0))))

(declare-fun e!2012754 () Bool)

(assert (=> d!886176 e!2012754))

(declare-fun res!1314300 () Bool)

(assert (=> d!886176 (=> (not res!1314300) (not e!2012754))))

(assert (=> d!886176 (= res!1314300 (>= 0 0))))

(assert (=> d!886176 (= (lemmaDropApply!1049 lt!1094429 0) lt!1094847)))

(declare-fun b!3227128 () Bool)

(assert (=> b!3227128 (= e!2012754 (< 0 (size!27410 lt!1094429)))))

(assert (= (and d!886176 res!1314300) b!3227128))

(assert (=> d!886176 m!3505087))

(assert (=> d!886176 m!3505087))

(assert (=> d!886176 m!3505089))

(assert (=> d!886176 m!3505101))

(declare-fun m!3506209 () Bool)

(assert (=> d!886176 m!3506209))

(declare-fun m!3506211 () Bool)

(assert (=> b!3227128 m!3506211))

(assert (=> b!3226519 d!886176))

(declare-fun bm!233190 () Bool)

(declare-fun call!233195 () Int)

(assert (=> bm!233190 (= call!233195 (size!27410 lt!1094430))))

(declare-fun b!3227159 () Bool)

(declare-fun e!2012776 () List!36466)

(declare-fun e!2012774 () List!36466)

(assert (=> b!3227159 (= e!2012776 e!2012774)))

(declare-fun c!542345 () Bool)

(assert (=> b!3227159 (= c!542345 (<= (+ 0 1) 0))))

(declare-fun b!3227160 () Bool)

(assert (=> b!3227160 (= e!2012774 lt!1094430)))

(declare-fun b!3227161 () Bool)

(declare-fun e!2012773 () Bool)

(declare-fun lt!1094862 () List!36466)

(declare-fun e!2012775 () Int)

(assert (=> b!3227161 (= e!2012773 (= (size!27410 lt!1094862) e!2012775))))

(declare-fun c!542342 () Bool)

(assert (=> b!3227161 (= c!542342 (<= (+ 0 1) 0))))

(declare-fun b!3227162 () Bool)

(assert (=> b!3227162 (= e!2012776 Nil!36342)))

(declare-fun b!3227163 () Bool)

(assert (=> b!3227163 (= e!2012774 (drop!1873 (t!241087 lt!1094430) (- (+ 0 1) 1)))))

(declare-fun b!3227164 () Bool)

(declare-fun e!2012772 () Int)

(assert (=> b!3227164 (= e!2012772 0)))

(declare-fun b!3227165 () Bool)

(assert (=> b!3227165 (= e!2012772 (- call!233195 (+ 0 1)))))

(declare-fun d!886178 () Bool)

(assert (=> d!886178 e!2012773))

(declare-fun res!1314309 () Bool)

(assert (=> d!886178 (=> (not res!1314309) (not e!2012773))))

(declare-fun content!4915 (List!36466) (InoxSet Token!9890))

(assert (=> d!886178 (= res!1314309 (= ((_ map implies) (content!4915 lt!1094862) (content!4915 lt!1094430)) ((as const (InoxSet Token!9890)) true)))))

(assert (=> d!886178 (= lt!1094862 e!2012776)))

(declare-fun c!542344 () Bool)

(assert (=> d!886178 (= c!542344 ((_ is Nil!36342) lt!1094430))))

(assert (=> d!886178 (= (drop!1873 lt!1094430 (+ 0 1)) lt!1094862)))

(declare-fun b!3227166 () Bool)

(assert (=> b!3227166 (= e!2012775 e!2012772)))

(declare-fun c!542343 () Bool)

(assert (=> b!3227166 (= c!542343 (>= (+ 0 1) call!233195))))

(declare-fun b!3227167 () Bool)

(assert (=> b!3227167 (= e!2012775 call!233195)))

(assert (= (and d!886178 c!542344) b!3227162))

(assert (= (and d!886178 (not c!542344)) b!3227159))

(assert (= (and b!3227159 c!542345) b!3227160))

(assert (= (and b!3227159 (not c!542345)) b!3227163))

(assert (= (and d!886178 res!1314309) b!3227161))

(assert (= (and b!3227161 c!542342) b!3227167))

(assert (= (and b!3227161 (not c!542342)) b!3227166))

(assert (= (and b!3227166 c!542343) b!3227164))

(assert (= (and b!3227166 (not c!542343)) b!3227165))

(assert (= (or b!3227167 b!3227166 b!3227165) bm!233190))

(assert (=> bm!233190 m!3506105))

(declare-fun m!3506293 () Bool)

(assert (=> b!3227161 m!3506293))

(declare-fun m!3506295 () Bool)

(assert (=> b!3227163 m!3506295))

(declare-fun m!3506297 () Bool)

(assert (=> d!886178 m!3506297))

(declare-fun m!3506299 () Bool)

(assert (=> d!886178 m!3506299))

(assert (=> b!3226519 d!886178))

(declare-fun d!886202 () Bool)

(declare-fun lt!1094874 () Token!9890)

(declare-fun contains!6522 (List!36466 Token!9890) Bool)

(assert (=> d!886202 (contains!6522 lt!1094429 lt!1094874)))

(declare-fun e!2012787 () Token!9890)

(assert (=> d!886202 (= lt!1094874 e!2012787)))

(declare-fun c!542349 () Bool)

(assert (=> d!886202 (= c!542349 (= 0 0))))

(declare-fun e!2012788 () Bool)

(assert (=> d!886202 e!2012788))

(declare-fun res!1314317 () Bool)

(assert (=> d!886202 (=> (not res!1314317) (not e!2012788))))

(assert (=> d!886202 (= res!1314317 (<= 0 0))))

(assert (=> d!886202 (= (apply!8292 lt!1094429 0) lt!1094874)))

(declare-fun b!3227181 () Bool)

(assert (=> b!3227181 (= e!2012788 (< 0 (size!27410 lt!1094429)))))

(declare-fun b!3227182 () Bool)

(assert (=> b!3227182 (= e!2012787 (head!7085 lt!1094429))))

(declare-fun b!3227183 () Bool)

(assert (=> b!3227183 (= e!2012787 (apply!8292 (tail!5229 lt!1094429) (- 0 1)))))

(assert (= (and d!886202 res!1314317) b!3227181))

(assert (= (and d!886202 c!542349) b!3227182))

(assert (= (and d!886202 (not c!542349)) b!3227183))

(declare-fun m!3506351 () Bool)

(assert (=> d!886202 m!3506351))

(assert (=> b!3227181 m!3506211))

(declare-fun m!3506353 () Bool)

(assert (=> b!3227182 m!3506353))

(declare-fun m!3506355 () Bool)

(assert (=> b!3227183 m!3506355))

(assert (=> b!3227183 m!3506355))

(declare-fun m!3506357 () Bool)

(assert (=> b!3227183 m!3506357))

(assert (=> b!3226519 d!886202))

(declare-fun bm!233191 () Bool)

(declare-fun call!233196 () Int)

(assert (=> bm!233191 (= call!233196 (size!27410 lt!1094429))))

(declare-fun b!3227184 () Bool)

(declare-fun e!2012793 () List!36466)

(declare-fun e!2012791 () List!36466)

(assert (=> b!3227184 (= e!2012793 e!2012791)))

(declare-fun c!542353 () Bool)

(assert (=> b!3227184 (= c!542353 (<= 0 0))))

(declare-fun b!3227185 () Bool)

(assert (=> b!3227185 (= e!2012791 lt!1094429)))

(declare-fun b!3227186 () Bool)

(declare-fun e!2012790 () Bool)

(declare-fun lt!1094875 () List!36466)

(declare-fun e!2012792 () Int)

(assert (=> b!3227186 (= e!2012790 (= (size!27410 lt!1094875) e!2012792))))

(declare-fun c!542350 () Bool)

(assert (=> b!3227186 (= c!542350 (<= 0 0))))

(declare-fun b!3227187 () Bool)

(assert (=> b!3227187 (= e!2012793 Nil!36342)))

(declare-fun b!3227188 () Bool)

(assert (=> b!3227188 (= e!2012791 (drop!1873 (t!241087 lt!1094429) (- 0 1)))))

(declare-fun b!3227189 () Bool)

(declare-fun e!2012789 () Int)

(assert (=> b!3227189 (= e!2012789 0)))

(declare-fun b!3227190 () Bool)

(assert (=> b!3227190 (= e!2012789 (- call!233196 0))))

(declare-fun d!886222 () Bool)

(assert (=> d!886222 e!2012790))

(declare-fun res!1314318 () Bool)

(assert (=> d!886222 (=> (not res!1314318) (not e!2012790))))

(assert (=> d!886222 (= res!1314318 (= ((_ map implies) (content!4915 lt!1094875) (content!4915 lt!1094429)) ((as const (InoxSet Token!9890)) true)))))

(assert (=> d!886222 (= lt!1094875 e!2012793)))

(declare-fun c!542352 () Bool)

(assert (=> d!886222 (= c!542352 ((_ is Nil!36342) lt!1094429))))

(assert (=> d!886222 (= (drop!1873 lt!1094429 0) lt!1094875)))

(declare-fun b!3227191 () Bool)

(assert (=> b!3227191 (= e!2012792 e!2012789)))

(declare-fun c!542351 () Bool)

(assert (=> b!3227191 (= c!542351 (>= 0 call!233196))))

(declare-fun b!3227192 () Bool)

(assert (=> b!3227192 (= e!2012792 call!233196)))

(assert (= (and d!886222 c!542352) b!3227187))

(assert (= (and d!886222 (not c!542352)) b!3227184))

(assert (= (and b!3227184 c!542353) b!3227185))

(assert (= (and b!3227184 (not c!542353)) b!3227188))

(assert (= (and d!886222 res!1314318) b!3227186))

(assert (= (and b!3227186 c!542350) b!3227192))

(assert (= (and b!3227186 (not c!542350)) b!3227191))

(assert (= (and b!3227191 c!542351) b!3227189))

(assert (= (and b!3227191 (not c!542351)) b!3227190))

(assert (= (or b!3227192 b!3227191 b!3227190) bm!233191))

(assert (=> bm!233191 m!3506211))

(declare-fun m!3506359 () Bool)

(assert (=> b!3227186 m!3506359))

(declare-fun m!3506361 () Bool)

(assert (=> b!3227188 m!3506361))

(declare-fun m!3506363 () Bool)

(assert (=> d!886222 m!3506363))

(declare-fun m!3506365 () Bool)

(assert (=> d!886222 m!3506365))

(assert (=> b!3226519 d!886222))

(declare-fun bm!233192 () Bool)

(declare-fun call!233197 () Int)

(assert (=> bm!233192 (= call!233197 (size!27410 lt!1094430))))

(declare-fun b!3227193 () Bool)

(declare-fun e!2012798 () List!36466)

(declare-fun e!2012796 () List!36466)

(assert (=> b!3227193 (= e!2012798 e!2012796)))

(declare-fun c!542357 () Bool)

(assert (=> b!3227193 (= c!542357 (<= 0 0))))

(declare-fun b!3227194 () Bool)

(assert (=> b!3227194 (= e!2012796 lt!1094430)))

(declare-fun b!3227195 () Bool)

(declare-fun e!2012795 () Bool)

(declare-fun lt!1094876 () List!36466)

(declare-fun e!2012797 () Int)

(assert (=> b!3227195 (= e!2012795 (= (size!27410 lt!1094876) e!2012797))))

(declare-fun c!542354 () Bool)

(assert (=> b!3227195 (= c!542354 (<= 0 0))))

(declare-fun b!3227196 () Bool)

(assert (=> b!3227196 (= e!2012798 Nil!36342)))

(declare-fun b!3227197 () Bool)

(assert (=> b!3227197 (= e!2012796 (drop!1873 (t!241087 lt!1094430) (- 0 1)))))

(declare-fun b!3227198 () Bool)

(declare-fun e!2012794 () Int)

(assert (=> b!3227198 (= e!2012794 0)))

(declare-fun b!3227199 () Bool)

(assert (=> b!3227199 (= e!2012794 (- call!233197 0))))

(declare-fun d!886224 () Bool)

(assert (=> d!886224 e!2012795))

(declare-fun res!1314319 () Bool)

(assert (=> d!886224 (=> (not res!1314319) (not e!2012795))))

(assert (=> d!886224 (= res!1314319 (= ((_ map implies) (content!4915 lt!1094876) (content!4915 lt!1094430)) ((as const (InoxSet Token!9890)) true)))))

(assert (=> d!886224 (= lt!1094876 e!2012798)))

(declare-fun c!542356 () Bool)

(assert (=> d!886224 (= c!542356 ((_ is Nil!36342) lt!1094430))))

(assert (=> d!886224 (= (drop!1873 lt!1094430 0) lt!1094876)))

(declare-fun b!3227200 () Bool)

(assert (=> b!3227200 (= e!2012797 e!2012794)))

(declare-fun c!542355 () Bool)

(assert (=> b!3227200 (= c!542355 (>= 0 call!233197))))

(declare-fun b!3227201 () Bool)

(assert (=> b!3227201 (= e!2012797 call!233197)))

(assert (= (and d!886224 c!542356) b!3227196))

(assert (= (and d!886224 (not c!542356)) b!3227193))

(assert (= (and b!3227193 c!542357) b!3227194))

(assert (= (and b!3227193 (not c!542357)) b!3227197))

(assert (= (and d!886224 res!1314319) b!3227195))

(assert (= (and b!3227195 c!542354) b!3227201))

(assert (= (and b!3227195 (not c!542354)) b!3227200))

(assert (= (and b!3227200 c!542355) b!3227198))

(assert (= (and b!3227200 (not c!542355)) b!3227199))

(assert (= (or b!3227201 b!3227200 b!3227199) bm!233192))

(assert (=> bm!233192 m!3506105))

(declare-fun m!3506367 () Bool)

(assert (=> b!3227195 m!3506367))

(declare-fun m!3506369 () Bool)

(assert (=> b!3227197 m!3506369))

(declare-fun m!3506371 () Bool)

(assert (=> d!886224 m!3506371))

(assert (=> d!886224 m!3506299))

(assert (=> b!3226519 d!886224))

(declare-fun d!886226 () Bool)

(declare-fun lt!1094877 () Token!9890)

(assert (=> d!886226 (= lt!1094877 (apply!8292 (list!12963 lt!1094387) 0))))

(assert (=> d!886226 (= lt!1094877 (apply!8293 (c!542200 lt!1094387) 0))))

(declare-fun e!2012799 () Bool)

(assert (=> d!886226 e!2012799))

(declare-fun res!1314320 () Bool)

(assert (=> d!886226 (=> (not res!1314320) (not e!2012799))))

(assert (=> d!886226 (= res!1314320 (<= 0 0))))

(assert (=> d!886226 (= (apply!8291 lt!1094387 0) lt!1094877)))

(declare-fun b!3227202 () Bool)

(assert (=> b!3227202 (= e!2012799 (< 0 (size!27408 lt!1094387)))))

(assert (= (and d!886226 res!1314320) b!3227202))

(assert (=> d!886226 m!3505067))

(assert (=> d!886226 m!3505067))

(declare-fun m!3506373 () Bool)

(assert (=> d!886226 m!3506373))

(declare-fun m!3506375 () Bool)

(assert (=> d!886226 m!3506375))

(assert (=> b!3227202 m!3505077))

(assert (=> b!3226519 d!886226))

(declare-fun d!886228 () Bool)

(assert (=> d!886228 (= (list!12963 lt!1094387) (list!12967 (c!542200 lt!1094387)))))

(declare-fun bs!542999 () Bool)

(assert (= bs!542999 d!886228))

(assert (=> bs!542999 m!3505483))

(assert (=> b!3226519 d!886228))

(declare-fun d!886230 () Bool)

(assert (=> d!886230 (= (list!12959 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))) (list!12962 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))))))

(declare-fun bs!543000 () Bool)

(assert (= bs!543000 d!886230))

(declare-fun m!3506377 () Bool)

(assert (=> bs!543000 m!3506377))

(assert (=> b!3226456 d!886230))

(declare-fun d!886232 () Bool)

(declare-fun res!1314323 () Bool)

(declare-fun e!2012802 () Bool)

(assert (=> d!886232 (=> res!1314323 e!2012802)))

(assert (=> d!886232 (= res!1314323 ((_ is Nil!36342) (t!241087 tokens!494)))))

(assert (=> d!886232 (= (forall!7458 (t!241087 tokens!494) lambda!118135) e!2012802)))

(declare-fun b!3227205 () Bool)

(declare-fun e!2012803 () Bool)

(assert (=> b!3227205 (= e!2012802 e!2012803)))

(declare-fun res!1314324 () Bool)

(assert (=> b!3227205 (=> (not res!1314324) (not e!2012803))))

(assert (=> b!3227205 (= res!1314324 (dynLambda!14768 lambda!118135 (h!41762 (t!241087 tokens!494))))))

(declare-fun b!3227206 () Bool)

(assert (=> b!3227206 (= e!2012803 (forall!7458 (t!241087 (t!241087 tokens!494)) lambda!118135))))

(assert (= (and d!886232 (not res!1314323)) b!3227205))

(assert (= (and b!3227205 res!1314324) b!3227206))

(declare-fun b_lambda!88819 () Bool)

(assert (=> (not b_lambda!88819) (not b!3227205)))

(declare-fun m!3506379 () Bool)

(assert (=> b!3227205 m!3506379))

(declare-fun m!3506381 () Bool)

(assert (=> b!3227206 m!3506381))

(assert (=> b!3226454 d!886232))

(declare-fun d!886234 () Bool)

(assert (=> d!886234 (= (list!12959 lt!1094411) (list!12962 (c!542199 lt!1094411)))))

(declare-fun bs!543001 () Bool)

(assert (= bs!543001 d!886234))

(declare-fun m!3506383 () Bool)

(assert (=> bs!543001 m!3506383))

(assert (=> d!885798 d!886234))

(declare-fun d!886236 () Bool)

(declare-fun c!542358 () Bool)

(assert (=> d!886236 (= c!542358 ((_ is Cons!36342) (list!12963 lt!1094387)))))

(declare-fun e!2012805 () List!36464)

(assert (=> d!886236 (= (printList!1401 thiss!18206 (list!12963 lt!1094387)) e!2012805)))

(declare-fun b!3227208 () Bool)

(assert (=> b!3227208 (= e!2012805 (++!8746 (list!12959 (charsOf!3278 (h!41762 (list!12963 lt!1094387)))) (printList!1401 thiss!18206 (t!241087 (list!12963 lt!1094387)))))))

(declare-fun b!3227209 () Bool)

(assert (=> b!3227209 (= e!2012805 Nil!36340)))

(assert (= (and d!886236 c!542358) b!3227208))

(assert (= (and d!886236 (not c!542358)) b!3227209))

(declare-fun m!3506385 () Bool)

(assert (=> b!3227208 m!3506385))

(assert (=> b!3227208 m!3506385))

(declare-fun m!3506387 () Bool)

(assert (=> b!3227208 m!3506387))

(declare-fun m!3506391 () Bool)

(assert (=> b!3227208 m!3506391))

(assert (=> b!3227208 m!3506387))

(assert (=> b!3227208 m!3506391))

(declare-fun m!3506395 () Bool)

(assert (=> b!3227208 m!3506395))

(assert (=> d!885798 d!886236))

(assert (=> d!885798 d!886228))

(assert (=> d!885798 d!885806))

(declare-fun b!3227212 () Bool)

(declare-fun e!2012806 () Bool)

(declare-fun tp!1016768 () Bool)

(assert (=> b!3227212 (= e!2012806 tp!1016768)))

(declare-fun b!3227213 () Bool)

(declare-fun tp!1016770 () Bool)

(declare-fun tp!1016767 () Bool)

(assert (=> b!3227213 (= e!2012806 (and tp!1016770 tp!1016767))))

(assert (=> b!3226720 (= tp!1016731 e!2012806)))

(declare-fun b!3227210 () Bool)

(assert (=> b!3227210 (= e!2012806 tp_is_empty!17321)))

(declare-fun b!3227211 () Bool)

(declare-fun tp!1016769 () Bool)

(declare-fun tp!1016766 () Bool)

(assert (=> b!3227211 (= e!2012806 (and tp!1016769 tp!1016766))))

(assert (= (and b!3226720 ((_ is ElementMatch!10021) (regex!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) b!3227210))

(assert (= (and b!3226720 ((_ is Concat!15513) (regex!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) b!3227211))

(assert (= (and b!3226720 ((_ is Star!10021) (regex!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) b!3227212))

(assert (= (and b!3226720 ((_ is Union!10021) (regex!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) b!3227213))

(declare-fun b!3227222 () Bool)

(declare-fun tp!1016779 () Bool)

(declare-fun e!2012811 () Bool)

(declare-fun tp!1016777 () Bool)

(assert (=> b!3227222 (= e!2012811 (and (inv!49225 (left!28296 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))) tp!1016777 (inv!49225 (right!28626 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))) tp!1016779))))

(declare-fun b!3227224 () Bool)

(declare-fun e!2012812 () Bool)

(declare-fun tp!1016778 () Bool)

(assert (=> b!3227224 (= e!2012812 tp!1016778)))

(declare-fun b!3227223 () Bool)

(declare-fun inv!49231 (IArray!21803) Bool)

(assert (=> b!3227223 (= e!2012811 (and (inv!49231 (xs!14017 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))) e!2012812))))

(assert (=> b!3226458 (= tp!1016644 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241)))) e!2012811))))

(assert (= (and b!3226458 ((_ is Node!10899) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))) b!3227222))

(assert (= b!3227223 b!3227224))

(assert (= (and b!3226458 ((_ is Leaf!17141) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (value!170427 separatorToken!241))))) b!3227223))

(declare-fun m!3506397 () Bool)

(assert (=> b!3227222 m!3506397))

(declare-fun m!3506399 () Bool)

(assert (=> b!3227222 m!3506399))

(declare-fun m!3506401 () Bool)

(assert (=> b!3227223 m!3506401))

(assert (=> b!3226458 m!3504965))

(declare-fun b!3227233 () Bool)

(declare-fun e!2012817 () Bool)

(declare-fun tp!1016782 () Bool)

(assert (=> b!3227233 (= e!2012817 tp!1016782)))

(declare-fun b!3227234 () Bool)

(declare-fun tp!1016784 () Bool)

(declare-fun tp!1016781 () Bool)

(assert (=> b!3227234 (= e!2012817 (and tp!1016784 tp!1016781))))

(assert (=> b!3226705 (= tp!1016718 e!2012817)))

(declare-fun b!3227231 () Bool)

(assert (=> b!3227231 (= e!2012817 tp_is_empty!17321)))

(declare-fun b!3227232 () Bool)

(declare-fun tp!1016783 () Bool)

(declare-fun tp!1016780 () Bool)

(assert (=> b!3227232 (= e!2012817 (and tp!1016783 tp!1016780))))

(assert (= (and b!3226705 ((_ is ElementMatch!10021) (regOne!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227231))

(assert (= (and b!3226705 ((_ is Concat!15513) (regOne!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227232))

(assert (= (and b!3226705 ((_ is Star!10021) (regOne!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227233))

(assert (= (and b!3226705 ((_ is Union!10021) (regOne!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227234))

(declare-fun b!3227237 () Bool)

(declare-fun e!2012818 () Bool)

(declare-fun tp!1016787 () Bool)

(assert (=> b!3227237 (= e!2012818 tp!1016787)))

(declare-fun b!3227238 () Bool)

(declare-fun tp!1016789 () Bool)

(declare-fun tp!1016786 () Bool)

(assert (=> b!3227238 (= e!2012818 (and tp!1016789 tp!1016786))))

(assert (=> b!3226705 (= tp!1016715 e!2012818)))

(declare-fun b!3227235 () Bool)

(assert (=> b!3227235 (= e!2012818 tp_is_empty!17321)))

(declare-fun b!3227236 () Bool)

(declare-fun tp!1016788 () Bool)

(declare-fun tp!1016785 () Bool)

(assert (=> b!3227236 (= e!2012818 (and tp!1016788 tp!1016785))))

(assert (= (and b!3226705 ((_ is ElementMatch!10021) (regTwo!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227235))

(assert (= (and b!3226705 ((_ is Concat!15513) (regTwo!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227236))

(assert (= (and b!3226705 ((_ is Star!10021) (regTwo!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227237))

(assert (= (and b!3226705 ((_ is Union!10021) (regTwo!20554 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227238))

(declare-fun b!3227241 () Bool)

(declare-fun b_free!86061 () Bool)

(declare-fun b_next!86765 () Bool)

(assert (=> b!3227241 (= b_free!86061 (not b_next!86765))))

(declare-fun tp!1016793 () Bool)

(declare-fun b_and!216065 () Bool)

(assert (=> b!3227241 (= tp!1016793 b_and!216065)))

(declare-fun b_free!86063 () Bool)

(declare-fun b_next!86767 () Bool)

(assert (=> b!3227241 (= b_free!86063 (not b_next!86767))))

(declare-fun tb!159745 () Bool)

(declare-fun t!241206 () Bool)

(assert (=> (and b!3227241 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241206) tb!159745))

(declare-fun result!202260 () Bool)

(assert (= result!202260 result!202156))

(assert (=> b!3226456 t!241206))

(declare-fun tb!159747 () Bool)

(declare-fun t!241208 () Bool)

(assert (=> (and b!3227241 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241208) tb!159747))

(declare-fun result!202262 () Bool)

(assert (= result!202262 result!202148))

(assert (=> d!885784 t!241208))

(declare-fun tb!159749 () Bool)

(declare-fun t!241210 () Bool)

(assert (=> (and b!3227241 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241210) tb!159749))

(declare-fun result!202264 () Bool)

(assert (= result!202264 result!202208))

(assert (=> d!885900 t!241210))

(assert (=> b!3226427 t!241208))

(declare-fun t!241212 () Bool)

(declare-fun tb!159751 () Bool)

(assert (=> (and b!3227241 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241212) tb!159751))

(declare-fun result!202266 () Bool)

(assert (= result!202266 result!202228))

(assert (=> b!3227073 t!241212))

(declare-fun tb!159753 () Bool)

(declare-fun t!241214 () Bool)

(assert (=> (and b!3227241 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241214) tb!159753))

(declare-fun result!202268 () Bool)

(assert (= result!202268 result!202238))

(assert (=> d!886142 t!241214))

(declare-fun tp!1016790 () Bool)

(declare-fun b_and!216067 () Bool)

(assert (=> b!3227241 (= tp!1016790 (and (=> t!241214 result!202268) (=> t!241210 result!202264) (=> t!241212 result!202266) (=> t!241206 result!202260) (=> t!241208 result!202262) b_and!216067))))

(declare-fun e!2012821 () Bool)

(assert (=> b!3227241 (= e!2012821 (and tp!1016793 tp!1016790))))

(declare-fun tp!1016792 () Bool)

(declare-fun e!2012819 () Bool)

(declare-fun b!3227240 () Bool)

(assert (=> b!3227240 (= e!2012819 (and tp!1016792 (inv!49218 (tag!5794 (h!41763 (t!241088 (t!241088 rules!2135))))) (inv!49222 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) e!2012821))))

(declare-fun b!3227239 () Bool)

(declare-fun e!2012820 () Bool)

(declare-fun tp!1016791 () Bool)

(assert (=> b!3227239 (= e!2012820 (and e!2012819 tp!1016791))))

(assert (=> b!3226744 (= tp!1016758 e!2012820)))

(assert (= b!3227240 b!3227241))

(assert (= b!3227239 b!3227240))

(assert (= (and b!3226744 ((_ is Cons!36343) (t!241088 (t!241088 rules!2135)))) b!3227239))

(declare-fun m!3506403 () Bool)

(assert (=> b!3227240 m!3506403))

(declare-fun m!3506405 () Bool)

(assert (=> b!3227240 m!3506405))

(declare-fun b!3227247 () Bool)

(declare-fun e!2012825 () Bool)

(declare-fun tp!1016796 () Bool)

(assert (=> b!3227247 (= e!2012825 tp!1016796)))

(declare-fun b!3227248 () Bool)

(declare-fun tp!1016798 () Bool)

(declare-fun tp!1016795 () Bool)

(assert (=> b!3227248 (= e!2012825 (and tp!1016798 tp!1016795))))

(assert (=> b!3226706 (= tp!1016717 e!2012825)))

(declare-fun b!3227245 () Bool)

(assert (=> b!3227245 (= e!2012825 tp_is_empty!17321)))

(declare-fun b!3227246 () Bool)

(declare-fun tp!1016797 () Bool)

(declare-fun tp!1016794 () Bool)

(assert (=> b!3227246 (= e!2012825 (and tp!1016797 tp!1016794))))

(assert (= (and b!3226706 ((_ is ElementMatch!10021) (reg!10350 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227245))

(assert (= (and b!3226706 ((_ is Concat!15513) (reg!10350 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227246))

(assert (= (and b!3226706 ((_ is Star!10021) (reg!10350 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227247))

(assert (= (and b!3226706 ((_ is Union!10021) (reg!10350 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227248))

(declare-fun b!3227251 () Bool)

(declare-fun e!2012828 () Bool)

(assert (=> b!3227251 (= e!2012828 true)))

(declare-fun b!3227250 () Bool)

(declare-fun e!2012827 () Bool)

(assert (=> b!3227250 (= e!2012827 e!2012828)))

(declare-fun b!3227249 () Bool)

(declare-fun e!2012826 () Bool)

(assert (=> b!3227249 (= e!2012826 e!2012827)))

(assert (=> b!3226689 e!2012826))

(assert (= b!3227250 b!3227251))

(assert (= b!3227249 b!3227250))

(assert (= (and b!3226689 ((_ is Cons!36343) (t!241088 rules!2135))) b!3227249))

(assert (=> b!3227251 (< (dynLambda!14769 order!18729 (toValue!7366 (transformation!5262 (h!41763 (t!241088 rules!2135))))) (dynLambda!14770 order!18731 lambda!118145))))

(assert (=> b!3227251 (< (dynLambda!14771 order!18733 (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135))))) (dynLambda!14770 order!18731 lambda!118145))))

(declare-fun b!3227254 () Bool)

(declare-fun e!2012829 () Bool)

(declare-fun tp!1016801 () Bool)

(assert (=> b!3227254 (= e!2012829 tp!1016801)))

(declare-fun b!3227255 () Bool)

(declare-fun tp!1016803 () Bool)

(declare-fun tp!1016800 () Bool)

(assert (=> b!3227255 (= e!2012829 (and tp!1016803 tp!1016800))))

(assert (=> b!3226728 (= tp!1016741 e!2012829)))

(declare-fun b!3227252 () Bool)

(assert (=> b!3227252 (= e!2012829 tp_is_empty!17321)))

(declare-fun b!3227253 () Bool)

(declare-fun tp!1016802 () Bool)

(declare-fun tp!1016799 () Bool)

(assert (=> b!3227253 (= e!2012829 (and tp!1016802 tp!1016799))))

(assert (= (and b!3226728 ((_ is ElementMatch!10021) (regOne!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227252))

(assert (= (and b!3226728 ((_ is Concat!15513) (regOne!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227253))

(assert (= (and b!3226728 ((_ is Star!10021) (regOne!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227254))

(assert (= (and b!3226728 ((_ is Union!10021) (regOne!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227255))

(declare-fun b!3227258 () Bool)

(declare-fun e!2012830 () Bool)

(declare-fun tp!1016806 () Bool)

(assert (=> b!3227258 (= e!2012830 tp!1016806)))

(declare-fun b!3227259 () Bool)

(declare-fun tp!1016808 () Bool)

(declare-fun tp!1016805 () Bool)

(assert (=> b!3227259 (= e!2012830 (and tp!1016808 tp!1016805))))

(assert (=> b!3226728 (= tp!1016738 e!2012830)))

(declare-fun b!3227256 () Bool)

(assert (=> b!3227256 (= e!2012830 tp_is_empty!17321)))

(declare-fun b!3227257 () Bool)

(declare-fun tp!1016807 () Bool)

(declare-fun tp!1016804 () Bool)

(assert (=> b!3227257 (= e!2012830 (and tp!1016807 tp!1016804))))

(assert (= (and b!3226728 ((_ is ElementMatch!10021) (regTwo!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227256))

(assert (= (and b!3226728 ((_ is Concat!15513) (regTwo!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227257))

(assert (= (and b!3226728 ((_ is Star!10021) (regTwo!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227258))

(assert (= (and b!3226728 ((_ is Union!10021) (regTwo!20554 (regex!5262 (rule!7720 separatorToken!241))))) b!3227259))

(declare-fun b!3227262 () Bool)

(declare-fun e!2012831 () Bool)

(declare-fun tp!1016811 () Bool)

(assert (=> b!3227262 (= e!2012831 tp!1016811)))

(declare-fun b!3227263 () Bool)

(declare-fun tp!1016813 () Bool)

(declare-fun tp!1016810 () Bool)

(assert (=> b!3227263 (= e!2012831 (and tp!1016813 tp!1016810))))

(assert (=> b!3226745 (= tp!1016759 e!2012831)))

(declare-fun b!3227260 () Bool)

(assert (=> b!3227260 (= e!2012831 tp_is_empty!17321)))

(declare-fun b!3227261 () Bool)

(declare-fun tp!1016812 () Bool)

(declare-fun tp!1016809 () Bool)

(assert (=> b!3227261 (= e!2012831 (and tp!1016812 tp!1016809))))

(assert (= (and b!3226745 ((_ is ElementMatch!10021) (regex!5262 (h!41763 (t!241088 rules!2135))))) b!3227260))

(assert (= (and b!3226745 ((_ is Concat!15513) (regex!5262 (h!41763 (t!241088 rules!2135))))) b!3227261))

(assert (= (and b!3226745 ((_ is Star!10021) (regex!5262 (h!41763 (t!241088 rules!2135))))) b!3227262))

(assert (= (and b!3226745 ((_ is Union!10021) (regex!5262 (h!41763 (t!241088 rules!2135))))) b!3227263))

(declare-fun b!3227266 () Bool)

(declare-fun e!2012832 () Bool)

(declare-fun tp!1016816 () Bool)

(assert (=> b!3227266 (= e!2012832 tp!1016816)))

(declare-fun b!3227267 () Bool)

(declare-fun tp!1016818 () Bool)

(declare-fun tp!1016815 () Bool)

(assert (=> b!3227267 (= e!2012832 (and tp!1016818 tp!1016815))))

(assert (=> b!3226707 (= tp!1016719 e!2012832)))

(declare-fun b!3227264 () Bool)

(assert (=> b!3227264 (= e!2012832 tp_is_empty!17321)))

(declare-fun b!3227265 () Bool)

(declare-fun tp!1016817 () Bool)

(declare-fun tp!1016814 () Bool)

(assert (=> b!3227265 (= e!2012832 (and tp!1016817 tp!1016814))))

(assert (= (and b!3226707 ((_ is ElementMatch!10021) (regOne!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227264))

(assert (= (and b!3226707 ((_ is Concat!15513) (regOne!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227265))

(assert (= (and b!3226707 ((_ is Star!10021) (regOne!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227266))

(assert (= (and b!3226707 ((_ is Union!10021) (regOne!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227267))

(declare-fun b!3227270 () Bool)

(declare-fun e!2012833 () Bool)

(declare-fun tp!1016821 () Bool)

(assert (=> b!3227270 (= e!2012833 tp!1016821)))

(declare-fun b!3227271 () Bool)

(declare-fun tp!1016823 () Bool)

(declare-fun tp!1016820 () Bool)

(assert (=> b!3227271 (= e!2012833 (and tp!1016823 tp!1016820))))

(assert (=> b!3226707 (= tp!1016716 e!2012833)))

(declare-fun b!3227268 () Bool)

(assert (=> b!3227268 (= e!2012833 tp_is_empty!17321)))

(declare-fun b!3227269 () Bool)

(declare-fun tp!1016822 () Bool)

(declare-fun tp!1016819 () Bool)

(assert (=> b!3227269 (= e!2012833 (and tp!1016822 tp!1016819))))

(assert (= (and b!3226707 ((_ is ElementMatch!10021) (regTwo!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227268))

(assert (= (and b!3226707 ((_ is Concat!15513) (regTwo!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227269))

(assert (= (and b!3226707 ((_ is Star!10021) (regTwo!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227270))

(assert (= (and b!3226707 ((_ is Union!10021) (regTwo!20555 (regex!5262 (rule!7720 (h!41762 tokens!494)))))) b!3227271))

(declare-fun b!3227275 () Bool)

(declare-fun e!2012835 () Bool)

(declare-fun tp!1016827 () Bool)

(assert (=> b!3227275 (= e!2012835 tp!1016827)))

(declare-fun b!3227276 () Bool)

(declare-fun tp!1016829 () Bool)

(declare-fun tp!1016826 () Bool)

(assert (=> b!3227276 (= e!2012835 (and tp!1016829 tp!1016826))))

(assert (=> b!3226730 (= tp!1016742 e!2012835)))

(declare-fun b!3227273 () Bool)

(assert (=> b!3227273 (= e!2012835 tp_is_empty!17321)))

(declare-fun b!3227274 () Bool)

(declare-fun tp!1016828 () Bool)

(declare-fun tp!1016825 () Bool)

(assert (=> b!3227274 (= e!2012835 (and tp!1016828 tp!1016825))))

(assert (= (and b!3226730 ((_ is ElementMatch!10021) (regOne!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227273))

(assert (= (and b!3226730 ((_ is Concat!15513) (regOne!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227274))

(assert (= (and b!3226730 ((_ is Star!10021) (regOne!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227275))

(assert (= (and b!3226730 ((_ is Union!10021) (regOne!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227276))

(declare-fun b!3227279 () Bool)

(declare-fun e!2012836 () Bool)

(declare-fun tp!1016832 () Bool)

(assert (=> b!3227279 (= e!2012836 tp!1016832)))

(declare-fun b!3227280 () Bool)

(declare-fun tp!1016834 () Bool)

(declare-fun tp!1016831 () Bool)

(assert (=> b!3227280 (= e!2012836 (and tp!1016834 tp!1016831))))

(assert (=> b!3226730 (= tp!1016739 e!2012836)))

(declare-fun b!3227277 () Bool)

(assert (=> b!3227277 (= e!2012836 tp_is_empty!17321)))

(declare-fun b!3227278 () Bool)

(declare-fun tp!1016833 () Bool)

(declare-fun tp!1016830 () Bool)

(assert (=> b!3227278 (= e!2012836 (and tp!1016833 tp!1016830))))

(assert (= (and b!3226730 ((_ is ElementMatch!10021) (regTwo!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227277))

(assert (= (and b!3226730 ((_ is Concat!15513) (regTwo!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227278))

(assert (= (and b!3226730 ((_ is Star!10021) (regTwo!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227279))

(assert (= (and b!3226730 ((_ is Union!10021) (regTwo!20555 (regex!5262 (rule!7720 separatorToken!241))))) b!3227280))

(declare-fun b!3227283 () Bool)

(declare-fun e!2012837 () Bool)

(declare-fun tp!1016837 () Bool)

(assert (=> b!3227283 (= e!2012837 tp!1016837)))

(declare-fun b!3227284 () Bool)

(declare-fun tp!1016839 () Bool)

(declare-fun tp!1016836 () Bool)

(assert (=> b!3227284 (= e!2012837 (and tp!1016839 tp!1016836))))

(assert (=> b!3226729 (= tp!1016740 e!2012837)))

(declare-fun b!3227281 () Bool)

(assert (=> b!3227281 (= e!2012837 tp_is_empty!17321)))

(declare-fun b!3227282 () Bool)

(declare-fun tp!1016838 () Bool)

(declare-fun tp!1016835 () Bool)

(assert (=> b!3227282 (= e!2012837 (and tp!1016838 tp!1016835))))

(assert (= (and b!3226729 ((_ is ElementMatch!10021) (reg!10350 (regex!5262 (rule!7720 separatorToken!241))))) b!3227281))

(assert (= (and b!3226729 ((_ is Concat!15513) (reg!10350 (regex!5262 (rule!7720 separatorToken!241))))) b!3227282))

(assert (= (and b!3226729 ((_ is Star!10021) (reg!10350 (regex!5262 (rule!7720 separatorToken!241))))) b!3227283))

(assert (= (and b!3226729 ((_ is Union!10021) (reg!10350 (regex!5262 (rule!7720 separatorToken!241))))) b!3227284))

(declare-fun b!3227287 () Bool)

(declare-fun e!2012838 () Bool)

(declare-fun tp!1016842 () Bool)

(assert (=> b!3227287 (= e!2012838 tp!1016842)))

(declare-fun b!3227288 () Bool)

(declare-fun tp!1016844 () Bool)

(declare-fun tp!1016841 () Bool)

(assert (=> b!3227288 (= e!2012838 (and tp!1016844 tp!1016841))))

(assert (=> b!3226734 (= tp!1016746 e!2012838)))

(declare-fun b!3227285 () Bool)

(assert (=> b!3227285 (= e!2012838 tp_is_empty!17321)))

(declare-fun b!3227286 () Bool)

(declare-fun tp!1016843 () Bool)

(declare-fun tp!1016840 () Bool)

(assert (=> b!3227286 (= e!2012838 (and tp!1016843 tp!1016840))))

(assert (= (and b!3226734 ((_ is ElementMatch!10021) (reg!10350 (regex!5262 (h!41763 rules!2135))))) b!3227285))

(assert (= (and b!3226734 ((_ is Concat!15513) (reg!10350 (regex!5262 (h!41763 rules!2135))))) b!3227286))

(assert (= (and b!3226734 ((_ is Star!10021) (reg!10350 (regex!5262 (h!41763 rules!2135))))) b!3227287))

(assert (= (and b!3226734 ((_ is Union!10021) (reg!10350 (regex!5262 (h!41763 rules!2135))))) b!3227288))

(declare-fun b!3227289 () Bool)

(declare-fun e!2012839 () Bool)

(declare-fun tp!1016845 () Bool)

(assert (=> b!3227289 (= e!2012839 (and tp_is_empty!17321 tp!1016845))))

(assert (=> b!3226726 (= tp!1016737 e!2012839)))

(assert (= (and b!3226726 ((_ is Cons!36340) (t!241085 (originalCharacters!5976 separatorToken!241)))) b!3227289))

(declare-fun b!3227290 () Bool)

(declare-fun tp!1016846 () Bool)

(declare-fun tp!1016848 () Bool)

(declare-fun e!2012840 () Bool)

(assert (=> b!3227290 (= e!2012840 (and (inv!49225 (left!28296 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))) tp!1016846 (inv!49225 (right!28626 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))) tp!1016848))))

(declare-fun b!3227292 () Bool)

(declare-fun e!2012841 () Bool)

(declare-fun tp!1016847 () Bool)

(assert (=> b!3227292 (= e!2012841 tp!1016847)))

(declare-fun b!3227291 () Bool)

(assert (=> b!3227291 (= e!2012840 (and (inv!49231 (xs!14017 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))) e!2012841))))

(assert (=> b!3226433 (= tp!1016643 (and (inv!49225 (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494))))) e!2012840))))

(assert (= (and b!3226433 ((_ is Node!10899) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))) b!3227290))

(assert (= b!3227291 b!3227292))

(assert (= (and b!3226433 ((_ is Leaf!17141) (c!542199 (dynLambda!14767 (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (value!170427 (h!41762 tokens!494)))))) b!3227291))

(declare-fun m!3506425 () Bool)

(assert (=> b!3227290 m!3506425))

(declare-fun m!3506427 () Bool)

(assert (=> b!3227290 m!3506427))

(declare-fun m!3506429 () Bool)

(assert (=> b!3227291 m!3506429))

(assert (=> b!3226433 m!3504939))

(declare-fun b!3227296 () Bool)

(declare-fun e!2012843 () Bool)

(declare-fun tp!1016851 () Bool)

(assert (=> b!3227296 (= e!2012843 tp!1016851)))

(declare-fun b!3227297 () Bool)

(declare-fun tp!1016853 () Bool)

(declare-fun tp!1016850 () Bool)

(assert (=> b!3227297 (= e!2012843 (and tp!1016853 tp!1016850))))

(assert (=> b!3226733 (= tp!1016747 e!2012843)))

(declare-fun b!3227294 () Bool)

(assert (=> b!3227294 (= e!2012843 tp_is_empty!17321)))

(declare-fun b!3227295 () Bool)

(declare-fun tp!1016852 () Bool)

(declare-fun tp!1016849 () Bool)

(assert (=> b!3227295 (= e!2012843 (and tp!1016852 tp!1016849))))

(assert (= (and b!3226733 ((_ is ElementMatch!10021) (regOne!20554 (regex!5262 (h!41763 rules!2135))))) b!3227294))

(assert (= (and b!3226733 ((_ is Concat!15513) (regOne!20554 (regex!5262 (h!41763 rules!2135))))) b!3227295))

(assert (= (and b!3226733 ((_ is Star!10021) (regOne!20554 (regex!5262 (h!41763 rules!2135))))) b!3227296))

(assert (= (and b!3226733 ((_ is Union!10021) (regOne!20554 (regex!5262 (h!41763 rules!2135))))) b!3227297))

(declare-fun b!3227300 () Bool)

(declare-fun e!2012844 () Bool)

(declare-fun tp!1016856 () Bool)

(assert (=> b!3227300 (= e!2012844 tp!1016856)))

(declare-fun b!3227301 () Bool)

(declare-fun tp!1016858 () Bool)

(declare-fun tp!1016855 () Bool)

(assert (=> b!3227301 (= e!2012844 (and tp!1016858 tp!1016855))))

(assert (=> b!3226733 (= tp!1016744 e!2012844)))

(declare-fun b!3227298 () Bool)

(assert (=> b!3227298 (= e!2012844 tp_is_empty!17321)))

(declare-fun b!3227299 () Bool)

(declare-fun tp!1016857 () Bool)

(declare-fun tp!1016854 () Bool)

(assert (=> b!3227299 (= e!2012844 (and tp!1016857 tp!1016854))))

(assert (= (and b!3226733 ((_ is ElementMatch!10021) (regTwo!20554 (regex!5262 (h!41763 rules!2135))))) b!3227298))

(assert (= (and b!3226733 ((_ is Concat!15513) (regTwo!20554 (regex!5262 (h!41763 rules!2135))))) b!3227299))

(assert (= (and b!3226733 ((_ is Star!10021) (regTwo!20554 (regex!5262 (h!41763 rules!2135))))) b!3227300))

(assert (= (and b!3226733 ((_ is Union!10021) (regTwo!20554 (regex!5262 (h!41763 rules!2135))))) b!3227301))

(declare-fun b!3227304 () Bool)

(declare-fun e!2012845 () Bool)

(declare-fun tp!1016861 () Bool)

(assert (=> b!3227304 (= e!2012845 tp!1016861)))

(declare-fun b!3227305 () Bool)

(declare-fun tp!1016863 () Bool)

(declare-fun tp!1016860 () Bool)

(assert (=> b!3227305 (= e!2012845 (and tp!1016863 tp!1016860))))

(assert (=> b!3226735 (= tp!1016748 e!2012845)))

(declare-fun b!3227302 () Bool)

(assert (=> b!3227302 (= e!2012845 tp_is_empty!17321)))

(declare-fun b!3227303 () Bool)

(declare-fun tp!1016862 () Bool)

(declare-fun tp!1016859 () Bool)

(assert (=> b!3227303 (= e!2012845 (and tp!1016862 tp!1016859))))

(assert (= (and b!3226735 ((_ is ElementMatch!10021) (regOne!20555 (regex!5262 (h!41763 rules!2135))))) b!3227302))

(assert (= (and b!3226735 ((_ is Concat!15513) (regOne!20555 (regex!5262 (h!41763 rules!2135))))) b!3227303))

(assert (= (and b!3226735 ((_ is Star!10021) (regOne!20555 (regex!5262 (h!41763 rules!2135))))) b!3227304))

(assert (= (and b!3226735 ((_ is Union!10021) (regOne!20555 (regex!5262 (h!41763 rules!2135))))) b!3227305))

(declare-fun b!3227308 () Bool)

(declare-fun e!2012846 () Bool)

(declare-fun tp!1016866 () Bool)

(assert (=> b!3227308 (= e!2012846 tp!1016866)))

(declare-fun b!3227309 () Bool)

(declare-fun tp!1016868 () Bool)

(declare-fun tp!1016865 () Bool)

(assert (=> b!3227309 (= e!2012846 (and tp!1016868 tp!1016865))))

(assert (=> b!3226735 (= tp!1016745 e!2012846)))

(declare-fun b!3227306 () Bool)

(assert (=> b!3227306 (= e!2012846 tp_is_empty!17321)))

(declare-fun b!3227307 () Bool)

(declare-fun tp!1016867 () Bool)

(declare-fun tp!1016864 () Bool)

(assert (=> b!3227307 (= e!2012846 (and tp!1016867 tp!1016864))))

(assert (= (and b!3226735 ((_ is ElementMatch!10021) (regTwo!20555 (regex!5262 (h!41763 rules!2135))))) b!3227306))

(assert (= (and b!3226735 ((_ is Concat!15513) (regTwo!20555 (regex!5262 (h!41763 rules!2135))))) b!3227307))

(assert (= (and b!3226735 ((_ is Star!10021) (regTwo!20555 (regex!5262 (h!41763 rules!2135))))) b!3227308))

(assert (= (and b!3226735 ((_ is Union!10021) (regTwo!20555 (regex!5262 (h!41763 rules!2135))))) b!3227309))

(declare-fun b!3227310 () Bool)

(declare-fun e!2012847 () Bool)

(declare-fun tp!1016869 () Bool)

(assert (=> b!3227310 (= e!2012847 (and tp_is_empty!17321 tp!1016869))))

(assert (=> b!3226719 (= tp!1016732 e!2012847)))

(assert (= (and b!3226719 ((_ is Cons!36340) (originalCharacters!5976 (h!41762 (t!241087 tokens!494))))) b!3227310))

(declare-fun b!3227311 () Bool)

(declare-fun e!2012848 () Bool)

(declare-fun tp!1016870 () Bool)

(assert (=> b!3227311 (= e!2012848 (and tp_is_empty!17321 tp!1016870))))

(assert (=> b!3226731 (= tp!1016743 e!2012848)))

(assert (= (and b!3226731 ((_ is Cons!36340) (t!241085 (originalCharacters!5976 (h!41762 tokens!494))))) b!3227311))

(declare-fun b!3227315 () Bool)

(declare-fun b_free!86065 () Bool)

(declare-fun b_next!86769 () Bool)

(assert (=> b!3227315 (= b_free!86065 (not b_next!86769))))

(declare-fun tp!1016874 () Bool)

(declare-fun b_and!216079 () Bool)

(assert (=> b!3227315 (= tp!1016874 b_and!216079)))

(declare-fun b_free!86067 () Bool)

(declare-fun b_next!86771 () Bool)

(assert (=> b!3227315 (= b_free!86067 (not b_next!86771))))

(declare-fun tb!159765 () Bool)

(declare-fun t!241226 () Bool)

(assert (=> (and b!3227315 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241)))) t!241226) tb!159765))

(declare-fun result!202280 () Bool)

(assert (= result!202280 result!202156))

(assert (=> b!3226456 t!241226))

(declare-fun t!241228 () Bool)

(declare-fun tb!159767 () Bool)

(assert (=> (and b!3227315 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494))))) t!241228) tb!159767))

(declare-fun result!202282 () Bool)

(assert (= result!202282 result!202148))

(assert (=> d!885784 t!241228))

(declare-fun t!241230 () Bool)

(declare-fun tb!159769 () Bool)

(assert (=> (and b!3227315 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (Cons!36342 (h!41762 tokens!494) Nil!36342)))))) t!241230) tb!159769))

(declare-fun result!202284 () Bool)

(assert (= result!202284 result!202208))

(assert (=> d!885900 t!241230))

(assert (=> b!3226427 t!241228))

(declare-fun t!241232 () Bool)

(declare-fun tb!159771 () Bool)

(assert (=> (and b!3227315 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494)))))) t!241232) tb!159771))

(declare-fun result!202286 () Bool)

(assert (= result!202286 result!202228))

(assert (=> b!3227073 t!241232))

(declare-fun tb!159773 () Bool)

(declare-fun t!241234 () Bool)

(assert (=> (and b!3227315 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 (apply!8291 lt!1094387 0))))) t!241234) tb!159773))

(declare-fun result!202288 () Bool)

(assert (= result!202288 result!202238))

(assert (=> d!886142 t!241234))

(declare-fun b_and!216081 () Bool)

(declare-fun tp!1016871 () Bool)

(assert (=> b!3227315 (= tp!1016871 (and (=> t!241232 result!202286) (=> t!241230 result!202284) (=> t!241226 result!202280) (=> t!241234 result!202288) (=> t!241228 result!202282) b_and!216081))))

(declare-fun e!2012854 () Bool)

(assert (=> b!3227315 (= e!2012854 (and tp!1016874 tp!1016871))))

(declare-fun e!2012853 () Bool)

(declare-fun b!3227313 () Bool)

(declare-fun tp!1016873 () Bool)

(declare-fun e!2012851 () Bool)

(assert (=> b!3227313 (= e!2012851 (and (inv!21 (value!170427 (h!41762 (t!241087 (t!241087 tokens!494))))) e!2012853 tp!1016873))))

(declare-fun e!2012850 () Bool)

(assert (=> b!3226718 (= tp!1016734 e!2012850)))

(declare-fun tp!1016872 () Bool)

(declare-fun b!3227314 () Bool)

(assert (=> b!3227314 (= e!2012853 (and tp!1016872 (inv!49218 (tag!5794 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (inv!49222 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) e!2012854))))

(declare-fun b!3227312 () Bool)

(declare-fun tp!1016875 () Bool)

(assert (=> b!3227312 (= e!2012850 (and (inv!49221 (h!41762 (t!241087 (t!241087 tokens!494)))) e!2012851 tp!1016875))))

(assert (= b!3227314 b!3227315))

(assert (= b!3227313 b!3227314))

(assert (= b!3227312 b!3227313))

(assert (= (and b!3226718 ((_ is Cons!36342) (t!241087 (t!241087 tokens!494)))) b!3227312))

(declare-fun m!3506435 () Bool)

(assert (=> b!3227313 m!3506435))

(declare-fun m!3506437 () Bool)

(assert (=> b!3227314 m!3506437))

(declare-fun m!3506439 () Bool)

(assert (=> b!3227314 m!3506439))

(declare-fun m!3506441 () Bool)

(assert (=> b!3227312 m!3506441))

(declare-fun b_lambda!88823 () Bool)

(assert (= b_lambda!88809 (or (and b!3226394 b_free!86035 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 tokens!494)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) (and b!3226392 b_free!86039 (= (toChars!7225 (transformation!5262 (rule!7720 separatorToken!241))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) (and b!3227315 b_free!86067 (= (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 (t!241087 tokens!494)))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) (and b!3227241 b_free!86063 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 (t!241088 rules!2135))))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) (and b!3226721 b_free!86055) (and b!3226746 b_free!86059 (= (toChars!7225 (transformation!5262 (h!41763 (t!241088 rules!2135)))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) (and b!3226389 b_free!86043 (= (toChars!7225 (transformation!5262 (h!41763 rules!2135))) (toChars!7225 (transformation!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))) b_lambda!88823)))

(declare-fun b_lambda!88825 () Bool)

(assert (= b_lambda!88819 (or b!3226398 b_lambda!88825)))

(declare-fun bs!543002 () Bool)

(declare-fun d!886250 () Bool)

(assert (= bs!543002 (and d!886250 b!3226398)))

(assert (=> bs!543002 (= (dynLambda!14768 lambda!118135 (h!41762 (t!241087 tokens!494))) (not (isSeparator!5262 (rule!7720 (h!41762 (t!241087 tokens!494))))))))

(assert (=> b!3227205 d!886250))

(declare-fun b_lambda!88827 () Bool)

(assert (= b_lambda!88811 (or d!885814 b_lambda!88827)))

(declare-fun bs!543003 () Bool)

(declare-fun d!886252 () Bool)

(assert (= bs!543003 (and d!886252 d!885814)))

(assert (=> bs!543003 (= (dynLambda!14768 lambda!118145 (h!41762 (list!12963 (seqFromList!3587 tokens!494)))) (rulesProduceIndividualToken!2343 thiss!18206 rules!2135 (h!41762 (list!12963 (seqFromList!3587 tokens!494)))))))

(assert (=> bs!543003 m!3505719))

(assert (=> b!3227076 d!886252))

(check-sat (not b!3227288) (not tb!159715) (not d!886062) (not b!3226756) (not b!3227119) (not b!3227300) (not d!886228) (not b!3227121) (not d!886224) (not d!886090) (not b!3227270) (not b!3227262) (not b!3227068) (not d!886036) (not b!3227297) (not b!3226772) (not b!3226458) (not b!3227240) (not b_lambda!88825) (not b!3227128) (not b!3227267) (not d!885896) (not b_next!86757) (not d!885934) (not b!3227265) (not b!3227163) (not b_lambda!88795) (not b!3227060) (not b!3226947) (not b!3227202) (not d!886102) (not b!3226931) (not b!3227195) (not d!886064) (not b!3227287) (not d!886040) (not d!886176) (not b!3226981) (not b!3227295) (not b_lambda!88813) (not b!3227253) (not d!886066) (not b!3227058) (not b!3227181) (not b_lambda!88801) (not b_next!86741) (not d!886098) (not d!885920) (not d!886048) b_and!216051 (not b_lambda!88823) (not b!3227085) (not b!3227236) (not b!3226821) (not b_lambda!88797) (not b!3227120) (not b!3226754) (not b!3226960) (not b_next!86771) (not bm!233190) (not b!3227090) (not d!886076) (not b!3226786) (not b!3227269) (not b!3227197) (not d!886134) (not b!3227301) (not b!3227095) b_and!216007 (not b!3226994) b_and!216045 (not b!3227313) (not d!886038) (not b!3227255) (not d!885900) (not bm!233192) (not b!3227314) b_and!215951 (not b!3227292) (not b!3227065) (not b!3226758) (not b!3226961) (not b!3227289) (not d!885894) (not b!3227066) (not d!886092) (not d!886068) (not b!3227045) (not b!3227073) (not b!3227232) (not b!3227044) (not b!3227299) (not b!3226782) (not d!886050) (not d!886110) (not d!885924) (not b!3226798) (not d!886088) (not b!3227278) (not b!3227274) (not d!885876) (not b!3227089) (not d!885868) (not b!3227257) (not b!3226932) (not b!3227224) (not d!886116) (not d!886060) (not d!885886) (not d!886118) (not b!3227213) (not b!3227246) (not b!3227284) (not b_lambda!88803) (not b!3227261) (not d!885910) (not d!885914) (not d!886222) (not b!3227086) (not b!3227063) tp_is_empty!17321 (not b!3227290) (not b!3227309) (not b!3227249) (not d!886104) (not b!3227248) (not b!3227183) (not d!885932) (not b!3227182) b_and!216079 b_and!216011 (not d!886126) (not d!885898) (not b_next!86747) (not b_next!86769) (not b_next!86761) (not b!3227041) (not b!3227118) b_and!216065 (not d!885880) (not b!3227263) (not b!3227308) (not d!886144) (not b!3227296) (not b!3227084) (not b!3227247) (not bs!543003) (not b!3227279) (not bm!233187) (not d!886150) b_and!215959 (not b!3226759) (not d!886234) (not b!3227233) (not d!886226) (not b!3227161) (not b!3227211) (not b!3227234) (not d!886202) (not b!3226753) (not b!3226433) (not b!3227080) (not b!3226933) (not d!885930) (not d!886070) (not b_next!86763) (not b!3227286) b_and!216049 (not d!886142) (not d!886100) (not b_next!86759) (not b!3226963) (not d!886122) (not b!3226976) b_and!216081 (not b!3226978) (not b!3227305) (not b!3227282) (not b!3227280) (not b!3227258) (not b_next!86743) (not d!886086) (not b!3227312) (not b!3227238) (not b!3227212) (not d!886078) (not b!3227042) (not b!3227074) (not b!3227069) (not b!3227276) (not b!3227222) (not b!3227307) (not d!885946) (not d!886046) b_and!215955 (not b!3226796) (not b!3227266) (not b_next!86745) (not d!885872) (not b_lambda!88799) (not b!3227254) (not b!3227275) (not b!3226783) (not b!3227186) (not b!3227304) (not b!3227291) (not b!3226996) (not b!3226760) (not b!3227072) (not b!3227259) (not b!3227061) (not d!886112) (not b!3227188) (not d!886128) (not d!886140) (not b!3227064) (not d!886106) (not d!885938) (not b!3226943) (not d!885884) (not tb!159725) (not b!3227208) (not d!886042) (not b!3227237) (not d!886080) (not b!3226771) (not b!3227310) (not d!885890) (not b!3227223) (not b!3227303) b_and!216067 (not b!3227077) (not b!3226955) (not d!885882) (not d!886178) (not b!3226977) (not d!886034) (not b!3227311) b_and!216053 (not d!886114) (not b!3227239) (not d!886094) (not d!885918) (not b!3226757) (not d!886120) b_and!216047 (not d!885870) (not b_next!86765) (not bm!233191) (not b_next!86737) (not b!3226979) (not b!3227271) (not d!885878) (not b!3226945) (not b_lambda!88827) (not b!3226993) (not b!3226785) (not d!885874) (not b!3226980) (not b_next!86739) (not d!886230) (not b_next!86767) (not b!3227081) (not b!3227283) (not b!3226942) (not b!3227206) (not tb!159695) (not b!3227075) (not d!886132) (not b!3227097))
(check-sat (not b_next!86757) (not b_next!86771) b_and!215951 b_and!216079 b_and!216065 b_and!215959 (not b_next!86743) b_and!215955 (not b_next!86745) b_and!216067 b_and!216053 (not b_next!86739) (not b_next!86767) (not b_next!86741) b_and!216051 b_and!216007 b_and!216045 b_and!216011 (not b_next!86747) (not b_next!86769) (not b_next!86761) (not b_next!86763) b_and!216049 (not b_next!86759) b_and!216081 b_and!216047 (not b_next!86765) (not b_next!86737))

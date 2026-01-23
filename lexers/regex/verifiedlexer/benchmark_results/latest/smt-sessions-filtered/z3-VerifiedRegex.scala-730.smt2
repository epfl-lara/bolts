; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33478 () Bool)

(assert start!33478)

(declare-fun b!310625 () Bool)

(declare-fun b_free!11073 () Bool)

(declare-fun b_next!11073 () Bool)

(assert (=> b!310625 (= b_free!11073 (not b_next!11073))))

(declare-fun tp!109408 () Bool)

(declare-fun b_and!26389 () Bool)

(assert (=> b!310625 (= tp!109408 b_and!26389)))

(declare-fun b_free!11075 () Bool)

(declare-fun b_next!11075 () Bool)

(assert (=> b!310625 (= b_free!11075 (not b_next!11075))))

(declare-fun tp!109406 () Bool)

(declare-fun b_and!26391 () Bool)

(assert (=> b!310625 (= tp!109406 b_and!26391)))

(declare-fun b!310649 () Bool)

(declare-fun b_free!11077 () Bool)

(declare-fun b_next!11077 () Bool)

(assert (=> b!310649 (= b_free!11077 (not b_next!11077))))

(declare-fun tp!109404 () Bool)

(declare-fun b_and!26393 () Bool)

(assert (=> b!310649 (= tp!109404 b_and!26393)))

(declare-fun b_free!11079 () Bool)

(declare-fun b_next!11079 () Bool)

(assert (=> b!310649 (= b_free!11079 (not b_next!11079))))

(declare-fun tp!109399 () Bool)

(declare-fun b_and!26395 () Bool)

(assert (=> b!310649 (= tp!109399 b_and!26395)))

(declare-fun b!310650 () Bool)

(declare-fun b_free!11081 () Bool)

(declare-fun b_next!11081 () Bool)

(assert (=> b!310650 (= b_free!11081 (not b_next!11081))))

(declare-fun tp!109405 () Bool)

(declare-fun b_and!26397 () Bool)

(assert (=> b!310650 (= tp!109405 b_and!26397)))

(declare-fun b_free!11083 () Bool)

(declare-fun b_next!11083 () Bool)

(assert (=> b!310650 (= b_free!11083 (not b_next!11083))))

(declare-fun tp!109407 () Bool)

(declare-fun b_and!26399 () Bool)

(assert (=> b!310650 (= tp!109407 b_and!26399)))

(declare-fun bs!36044 () Bool)

(declare-fun b!310639 () Bool)

(declare-fun b!310653 () Bool)

(assert (= bs!36044 (and b!310639 b!310653)))

(declare-fun lambda!10600 () Int)

(declare-fun lambda!10599 () Int)

(assert (=> bs!36044 (not (= lambda!10600 lambda!10599))))

(declare-fun b!310664 () Bool)

(declare-fun e!193198 () Bool)

(assert (=> b!310664 (= e!193198 true)))

(declare-fun b!310663 () Bool)

(declare-fun e!193197 () Bool)

(assert (=> b!310663 (= e!193197 e!193198)))

(declare-fun b!310662 () Bool)

(declare-fun e!193196 () Bool)

(assert (=> b!310662 (= e!193196 e!193197)))

(assert (=> b!310639 e!193196))

(assert (= b!310663 b!310664))

(assert (= b!310662 b!310663))

(declare-datatypes ((C!2936 0))(
  ( (C!2937 (val!1354 Int)) )
))
(declare-datatypes ((List!4080 0))(
  ( (Nil!4070) (Cons!4070 (h!9467 (_ BitVec 16)) (t!43828 List!4080)) )
))
(declare-datatypes ((TokenValue!805 0))(
  ( (FloatLiteralValue!1610 (text!6080 List!4080)) (TokenValueExt!804 (__x!3097 Int)) (Broken!4025 (value!26605 List!4080)) (Object!814) (End!805) (Def!805) (Underscore!805) (Match!805) (Else!805) (Error!805) (Case!805) (If!805) (Extends!805) (Abstract!805) (Class!805) (Val!805) (DelimiterValue!1610 (del!865 List!4080)) (KeywordValue!811 (value!26606 List!4080)) (CommentValue!1610 (value!26607 List!4080)) (WhitespaceValue!1610 (value!26608 List!4080)) (IndentationValue!805 (value!26609 List!4080)) (String!5104) (Int32!805) (Broken!4026 (value!26610 List!4080)) (Boolean!806) (Unit!5755) (OperatorValue!808 (op!865 List!4080)) (IdentifierValue!1610 (value!26611 List!4080)) (IdentifierValue!1611 (value!26612 List!4080)) (WhitespaceValue!1611 (value!26613 List!4080)) (True!1610) (False!1610) (Broken!4027 (value!26614 List!4080)) (Broken!4028 (value!26615 List!4080)) (True!1611) (RightBrace!805) (RightBracket!805) (Colon!805) (Null!805) (Comma!805) (LeftBracket!805) (False!1611) (LeftBrace!805) (ImaginaryLiteralValue!805 (text!6081 List!4080)) (StringLiteralValue!2415 (value!26616 List!4080)) (EOFValue!805 (value!26617 List!4080)) (IdentValue!805 (value!26618 List!4080)) (DelimiterValue!1611 (value!26619 List!4080)) (DedentValue!805 (value!26620 List!4080)) (NewLineValue!805 (value!26621 List!4080)) (IntegerValue!2415 (value!26622 (_ BitVec 32)) (text!6082 List!4080)) (IntegerValue!2416 (value!26623 Int) (text!6083 List!4080)) (Times!805) (Or!805) (Equal!805) (Minus!805) (Broken!4029 (value!26624 List!4080)) (And!805) (Div!805) (LessEqual!805) (Mod!805) (Concat!1812) (Not!805) (Plus!805) (SpaceValue!805 (value!26625 List!4080)) (IntegerValue!2417 (value!26626 Int) (text!6084 List!4080)) (StringLiteralValue!2416 (text!6085 List!4080)) (FloatLiteralValue!1611 (text!6086 List!4080)) (BytesLiteralValue!805 (value!26627 List!4080)) (CommentValue!1611 (value!26628 List!4080)) (StringLiteralValue!2417 (value!26629 List!4080)) (ErrorTokenValue!805 (msg!866 List!4080)) )
))
(declare-datatypes ((List!4081 0))(
  ( (Nil!4071) (Cons!4071 (h!9468 C!2936) (t!43829 List!4081)) )
))
(declare-datatypes ((IArray!2777 0))(
  ( (IArray!2778 (innerList!1446 List!4081)) )
))
(declare-datatypes ((Conc!1388 0))(
  ( (Node!1388 (left!3386 Conc!1388) (right!3716 Conc!1388) (csize!3006 Int) (cheight!1599 Int)) (Leaf!2119 (xs!3991 IArray!2777) (csize!3007 Int)) (Empty!1388) )
))
(declare-datatypes ((BalanceConc!2784 0))(
  ( (BalanceConc!2785 (c!58916 Conc!1388)) )
))
(declare-datatypes ((TokenValueInjection!1382 0))(
  ( (TokenValueInjection!1383 (toValue!1546 Int) (toChars!1405 Int)) )
))
(declare-datatypes ((Regex!1007 0))(
  ( (ElementMatch!1007 (c!58917 C!2936)) (Concat!1813 (regOne!2526 Regex!1007) (regTwo!2526 Regex!1007)) (EmptyExpr!1007) (Star!1007 (reg!1336 Regex!1007)) (EmptyLang!1007) (Union!1007 (regOne!2527 Regex!1007) (regTwo!2527 Regex!1007)) )
))
(declare-datatypes ((String!5105 0))(
  ( (String!5106 (value!26630 String)) )
))
(declare-datatypes ((Rule!1366 0))(
  ( (Rule!1367 (regex!783 Regex!1007) (tag!1001 String!5105) (isSeparator!783 Bool) (transformation!783 TokenValueInjection!1382)) )
))
(declare-datatypes ((List!4082 0))(
  ( (Nil!4072) (Cons!4072 (h!9469 Rule!1366) (t!43830 List!4082)) )
))
(declare-fun rules!1920 () List!4082)

(get-info :version)

(assert (= (and b!310639 ((_ is Cons!4072) rules!1920)) b!310662))

(declare-fun order!3317 () Int)

(declare-fun order!3319 () Int)

(declare-fun dynLambda!2235 (Int Int) Int)

(declare-fun dynLambda!2236 (Int Int) Int)

(assert (=> b!310664 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10600))))

(declare-fun order!3321 () Int)

(declare-fun dynLambda!2237 (Int Int) Int)

(assert (=> b!310664 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10600))))

(assert (=> b!310639 true))

(declare-fun b!310618 () Bool)

(declare-fun res!141195 () Bool)

(declare-fun e!193174 () Bool)

(assert (=> b!310618 (=> (not res!141195) (not e!193174))))

(declare-fun lt!132956 () List!4081)

(declare-fun lt!132943 () List!4081)

(declare-fun list!1723 (BalanceConc!2784) List!4081)

(declare-fun seqFromList!931 (List!4081) BalanceConc!2784)

(assert (=> b!310618 (= res!141195 (= (list!1723 (seqFromList!931 lt!132956)) lt!132943))))

(declare-fun b!310619 () Bool)

(declare-fun e!193187 () Bool)

(declare-datatypes ((Token!1310 0))(
  ( (Token!1311 (value!26631 TokenValue!805) (rule!1400 Rule!1366) (size!3257 Int) (originalCharacters!826 List!4081)) )
))
(declare-datatypes ((tuple2!4714 0))(
  ( (tuple2!4715 (_1!2573 Token!1310) (_2!2573 List!4081)) )
))
(declare-datatypes ((Option!934 0))(
  ( (None!933) (Some!933 (v!14948 tuple2!4714)) )
))
(declare-fun lt!132959 () Option!934)

(declare-datatypes ((List!4083 0))(
  ( (Nil!4073) (Cons!4073 (h!9470 Token!1310) (t!43831 List!4083)) )
))
(declare-fun tokens!465 () List!4083)

(declare-fun get!1395 (Option!934) tuple2!4714)

(declare-fun head!970 (List!4083) Token!1310)

(assert (=> b!310619 (= e!193187 (= (_1!2573 (get!1395 lt!132959)) (head!970 tokens!465)))))

(declare-fun e!193189 () Bool)

(declare-fun b!310620 () Bool)

(declare-fun tp!109403 () Bool)

(declare-fun e!193180 () Bool)

(declare-fun inv!5032 (Token!1310) Bool)

(assert (=> b!310620 (= e!193189 (and (inv!5032 (h!9470 tokens!465)) e!193180 tp!109403))))

(declare-fun b!310621 () Bool)

(declare-fun separatorToken!170 () Token!1310)

(declare-fun e!193161 () Bool)

(declare-fun e!193173 () Bool)

(declare-fun tp!109397 () Bool)

(declare-fun inv!21 (TokenValue!805) Bool)

(assert (=> b!310621 (= e!193161 (and (inv!21 (value!26631 separatorToken!170)) e!193173 tp!109397))))

(declare-fun b!310622 () Bool)

(declare-fun e!193188 () Bool)

(declare-fun lt!132942 () List!4081)

(declare-fun matchR!325 (Regex!1007 List!4081) Bool)

(assert (=> b!310622 (= e!193188 (matchR!325 (regex!783 (rule!1400 (h!9470 tokens!465))) lt!132942))))

(declare-fun b!310623 () Bool)

(declare-fun res!141210 () Bool)

(declare-fun e!193181 () Bool)

(assert (=> b!310623 (=> (not res!141210) (not e!193181))))

(declare-datatypes ((LexerInterface!669 0))(
  ( (LexerInterfaceExt!666 (__x!3098 Int)) (Lexer!667) )
))
(declare-fun thiss!17480 () LexerInterface!669)

(declare-fun rulesInvariant!635 (LexerInterface!669 List!4082) Bool)

(assert (=> b!310623 (= res!141210 (rulesInvariant!635 thiss!17480 rules!1920))))

(declare-fun b!310624 () Bool)

(declare-fun e!193165 () Bool)

(declare-fun e!193183 () Bool)

(assert (=> b!310624 (= e!193165 e!193183)))

(declare-fun res!141213 () Bool)

(assert (=> b!310624 (=> res!141213 e!193183)))

(declare-fun e!193167 () Bool)

(assert (=> b!310624 (= res!141213 e!193167)))

(declare-fun res!141198 () Bool)

(assert (=> b!310624 (=> (not res!141198) (not e!193167))))

(declare-fun lt!132953 () Bool)

(assert (=> b!310624 (= res!141198 (not lt!132953))))

(declare-fun lt!132938 () List!4081)

(assert (=> b!310624 (= lt!132953 (= lt!132956 lt!132938))))

(declare-fun res!141211 () Bool)

(assert (=> start!33478 (=> (not res!141211) (not e!193181))))

(assert (=> start!33478 (= res!141211 ((_ is Lexer!667) thiss!17480))))

(assert (=> start!33478 e!193181))

(assert (=> start!33478 true))

(declare-fun e!193171 () Bool)

(assert (=> start!33478 e!193171))

(assert (=> start!33478 (and (inv!5032 separatorToken!170) e!193161)))

(assert (=> start!33478 e!193189))

(declare-fun e!193170 () Bool)

(assert (=> b!310625 (= e!193170 (and tp!109408 tp!109406))))

(declare-fun b!310626 () Bool)

(declare-fun e!193166 () Bool)

(declare-fun e!193169 () Bool)

(assert (=> b!310626 (= e!193166 e!193169)))

(declare-fun res!141193 () Bool)

(assert (=> b!310626 (=> res!141193 e!193169)))

(declare-fun contains!809 (List!4083 Token!1310) Bool)

(assert (=> b!310626 (= res!141193 (not (contains!809 tokens!465 (head!970 (t!43831 tokens!465)))))))

(declare-datatypes ((Unit!5756 0))(
  ( (Unit!5757) )
))
(declare-fun lt!132939 () Unit!5756)

(declare-fun e!193177 () Unit!5756)

(assert (=> b!310626 (= lt!132939 e!193177)))

(declare-fun c!58915 () Bool)

(declare-fun isEmpty!2793 (List!4083) Bool)

(assert (=> b!310626 (= c!58915 (isEmpty!2793 (t!43831 tokens!465)))))

(declare-fun lt!132957 () List!4081)

(declare-fun lt!132946 () Option!934)

(declare-fun maxPrefix!385 (LexerInterface!669 List!4082 List!4081) Option!934)

(assert (=> b!310626 (= lt!132946 (maxPrefix!385 thiss!17480 rules!1920 lt!132957))))

(declare-fun lt!132955 () tuple2!4714)

(assert (=> b!310626 (= lt!132957 (_2!2573 lt!132955))))

(declare-fun lt!132941 () Unit!5756)

(declare-fun lemmaSamePrefixThenSameSuffix!228 (List!4081 List!4081 List!4081 List!4081 List!4081) Unit!5756)

(assert (=> b!310626 (= lt!132941 (lemmaSamePrefixThenSameSuffix!228 lt!132942 lt!132957 lt!132942 (_2!2573 lt!132955) lt!132956))))

(assert (=> b!310626 (= lt!132955 (get!1395 (maxPrefix!385 thiss!17480 rules!1920 lt!132956)))))

(declare-fun isPrefix!443 (List!4081 List!4081) Bool)

(assert (=> b!310626 (isPrefix!443 lt!132942 lt!132938)))

(declare-fun lt!132949 () Unit!5756)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!334 (List!4081 List!4081) Unit!5756)

(assert (=> b!310626 (= lt!132949 (lemmaConcatTwoListThenFirstIsPrefix!334 lt!132942 lt!132957))))

(declare-fun e!193178 () Bool)

(assert (=> b!310626 e!193178))

(declare-fun res!141204 () Bool)

(assert (=> b!310626 (=> res!141204 e!193178)))

(assert (=> b!310626 (= res!141204 (isEmpty!2793 tokens!465))))

(declare-fun lt!132947 () Unit!5756)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!190 (LexerInterface!669 List!4082 List!4083 Token!1310) Unit!5756)

(assert (=> b!310626 (= lt!132947 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!190 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!310627 () Bool)

(declare-fun Unit!5758 () Unit!5756)

(assert (=> b!310627 (= e!193177 Unit!5758)))

(assert (=> b!310627 false))

(declare-fun b!310628 () Bool)

(assert (=> b!310628 (= e!193178 e!193187)))

(declare-fun res!141214 () Bool)

(assert (=> b!310628 (=> (not res!141214) (not e!193187))))

(declare-fun isDefined!773 (Option!934) Bool)

(assert (=> b!310628 (= res!141214 (isDefined!773 lt!132959))))

(assert (=> b!310628 (= lt!132959 (maxPrefix!385 thiss!17480 rules!1920 lt!132956))))

(declare-fun b!310629 () Bool)

(declare-fun lt!132940 () List!4081)

(declare-fun ++!1110 (List!4081 List!4081) List!4081)

(assert (=> b!310629 (= e!193167 (not (= lt!132956 (++!1110 lt!132942 lt!132940))))))

(declare-fun b!310630 () Bool)

(declare-fun res!141197 () Bool)

(declare-fun e!193175 () Bool)

(assert (=> b!310630 (=> (not res!141197) (not e!193175))))

(assert (=> b!310630 (= res!141197 (isSeparator!783 (rule!1400 separatorToken!170)))))

(declare-fun b!310631 () Bool)

(declare-fun Unit!5759 () Unit!5756)

(assert (=> b!310631 (= e!193177 Unit!5759)))

(declare-fun b!310632 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!269 (LexerInterface!669 List!4082 List!4083) Bool)

(assert (=> b!310632 (= e!193169 (rulesProduceEachTokenIndividuallyList!269 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!310633 () Bool)

(assert (=> b!310633 (= e!193175 e!193174)))

(declare-fun res!141199 () Bool)

(assert (=> b!310633 (=> (not res!141199) (not e!193174))))

(assert (=> b!310633 (= res!141199 (= lt!132956 lt!132943))))

(declare-datatypes ((IArray!2779 0))(
  ( (IArray!2780 (innerList!1447 List!4083)) )
))
(declare-datatypes ((Conc!1389 0))(
  ( (Node!1389 (left!3387 Conc!1389) (right!3717 Conc!1389) (csize!3008 Int) (cheight!1600 Int)) (Leaf!2120 (xs!3992 IArray!2779) (csize!3009 Int)) (Empty!1389) )
))
(declare-datatypes ((BalanceConc!2786 0))(
  ( (BalanceConc!2787 (c!58918 Conc!1389)) )
))
(declare-fun lt!132944 () BalanceConc!2786)

(declare-fun printWithSeparatorTokenWhenNeededRec!342 (LexerInterface!669 List!4082 BalanceConc!2786 Token!1310 Int) BalanceConc!2784)

(assert (=> b!310633 (= lt!132943 (list!1723 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 lt!132944 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!350 (LexerInterface!669 List!4082 List!4083 Token!1310) List!4081)

(assert (=> b!310633 (= lt!132956 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!109409 () Bool)

(declare-fun e!193172 () Bool)

(declare-fun b!310634 () Bool)

(declare-fun e!193163 () Bool)

(declare-fun inv!5029 (String!5105) Bool)

(declare-fun inv!5033 (TokenValueInjection!1382) Bool)

(assert (=> b!310634 (= e!193172 (and tp!109409 (inv!5029 (tag!1001 (h!9469 rules!1920))) (inv!5033 (transformation!783 (h!9469 rules!1920))) e!193163))))

(declare-fun e!193168 () Bool)

(declare-fun tp!109400 () Bool)

(declare-fun b!310635 () Bool)

(declare-fun e!193182 () Bool)

(assert (=> b!310635 (= e!193182 (and tp!109400 (inv!5029 (tag!1001 (rule!1400 (h!9470 tokens!465)))) (inv!5033 (transformation!783 (rule!1400 (h!9470 tokens!465)))) e!193168))))

(declare-fun b!310636 () Bool)

(declare-fun res!141192 () Bool)

(assert (=> b!310636 (=> (not res!141192) (not e!193188))))

(declare-fun lt!132951 () tuple2!4714)

(declare-fun isEmpty!2794 (List!4081) Bool)

(assert (=> b!310636 (= res!141192 (isEmpty!2794 (_2!2573 lt!132951)))))

(declare-fun b!310637 () Bool)

(declare-fun res!141206 () Bool)

(assert (=> b!310637 (=> (not res!141206) (not e!193175))))

(assert (=> b!310637 (= res!141206 ((_ is Cons!4073) tokens!465))))

(declare-fun b!310638 () Bool)

(declare-fun res!141202 () Bool)

(assert (=> b!310638 (=> (not res!141202) (not e!193175))))

(declare-fun sepAndNonSepRulesDisjointChars!372 (List!4082 List!4082) Bool)

(assert (=> b!310638 (= res!141202 (sepAndNonSepRulesDisjointChars!372 rules!1920 rules!1920))))

(declare-fun e!193164 () Bool)

(declare-fun e!193176 () Bool)

(assert (=> b!310639 (= e!193164 e!193176)))

(declare-fun res!141201 () Bool)

(assert (=> b!310639 (=> res!141201 e!193176)))

(declare-datatypes ((tuple2!4716 0))(
  ( (tuple2!4717 (_1!2574 Token!1310) (_2!2574 BalanceConc!2784)) )
))
(declare-datatypes ((Option!935 0))(
  ( (None!934) (Some!934 (v!14949 tuple2!4716)) )
))
(declare-fun isDefined!774 (Option!935) Bool)

(declare-fun maxPrefixZipperSequence!348 (LexerInterface!669 List!4082 BalanceConc!2784) Option!935)

(assert (=> b!310639 (= res!141201 (not (isDefined!774 (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))

(declare-fun lt!132961 () Unit!5756)

(declare-fun forallContained!336 (List!4083 Int Token!1310) Unit!5756)

(assert (=> b!310639 (= lt!132961 (forallContained!336 tokens!465 lambda!10600 (h!9470 tokens!465)))))

(assert (=> b!310639 (= lt!132942 (originalCharacters!826 (h!9470 tokens!465)))))

(declare-fun b!310640 () Bool)

(declare-fun tp!109401 () Bool)

(assert (=> b!310640 (= e!193180 (and (inv!21 (value!26631 (h!9470 tokens!465))) e!193182 tp!109401))))

(declare-fun b!310641 () Bool)

(assert (=> b!310641 (= e!193181 e!193175)))

(declare-fun res!141196 () Bool)

(assert (=> b!310641 (=> (not res!141196) (not e!193175))))

(declare-fun rulesProduceEachTokenIndividually!461 (LexerInterface!669 List!4082 BalanceConc!2786) Bool)

(assert (=> b!310641 (= res!141196 (rulesProduceEachTokenIndividually!461 thiss!17480 rules!1920 lt!132944))))

(declare-fun seqFromList!932 (List!4083) BalanceConc!2786)

(assert (=> b!310641 (= lt!132944 (seqFromList!932 tokens!465))))

(declare-fun b!310642 () Bool)

(declare-fun res!141209 () Bool)

(assert (=> b!310642 (=> res!141209 e!193164)))

(declare-fun rulesProduceIndividualToken!418 (LexerInterface!669 List!4082 Token!1310) Bool)

(assert (=> b!310642 (= res!141209 (not (rulesProduceIndividualToken!418 thiss!17480 rules!1920 (h!9470 tokens!465))))))

(declare-fun b!310643 () Bool)

(assert (=> b!310643 (= e!193183 e!193164)))

(declare-fun res!141203 () Bool)

(assert (=> b!310643 (=> res!141203 e!193164)))

(declare-fun lt!132960 () List!4081)

(declare-fun lt!132948 () List!4081)

(assert (=> b!310643 (= res!141203 (or (not (= lt!132948 lt!132960)) (not (= lt!132960 lt!132942)) (not (= lt!132948 lt!132942))))))

(declare-fun printList!343 (LexerInterface!669 List!4083) List!4081)

(assert (=> b!310643 (= lt!132960 (printList!343 thiss!17480 (Cons!4073 (h!9470 tokens!465) Nil!4073)))))

(declare-fun lt!132945 () BalanceConc!2784)

(assert (=> b!310643 (= lt!132948 (list!1723 lt!132945))))

(declare-fun lt!132950 () BalanceConc!2786)

(declare-fun printTailRec!355 (LexerInterface!669 BalanceConc!2786 Int BalanceConc!2784) BalanceConc!2784)

(assert (=> b!310643 (= lt!132945 (printTailRec!355 thiss!17480 lt!132950 0 (BalanceConc!2785 Empty!1388)))))

(declare-fun print!394 (LexerInterface!669 BalanceConc!2786) BalanceConc!2784)

(assert (=> b!310643 (= lt!132945 (print!394 thiss!17480 lt!132950))))

(declare-fun singletonSeq!329 (Token!1310) BalanceConc!2786)

(assert (=> b!310643 (= lt!132950 (singletonSeq!329 (h!9470 tokens!465)))))

(declare-fun b!310644 () Bool)

(declare-fun tp!109402 () Bool)

(assert (=> b!310644 (= e!193171 (and e!193172 tp!109402))))

(declare-fun b!310645 () Bool)

(declare-fun res!141205 () Bool)

(assert (=> b!310645 (=> (not res!141205) (not e!193181))))

(declare-fun isEmpty!2795 (List!4082) Bool)

(assert (=> b!310645 (= res!141205 (not (isEmpty!2795 rules!1920)))))

(declare-fun b!310646 () Bool)

(declare-fun res!141207 () Bool)

(assert (=> b!310646 (=> (not res!141207) (not e!193175))))

(assert (=> b!310646 (= res!141207 (rulesProduceIndividualToken!418 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!310647 () Bool)

(declare-fun tp!109398 () Bool)

(assert (=> b!310647 (= e!193173 (and tp!109398 (inv!5029 (tag!1001 (rule!1400 separatorToken!170))) (inv!5033 (transformation!783 (rule!1400 separatorToken!170))) e!193170))))

(declare-fun b!310648 () Bool)

(declare-fun res!141215 () Bool)

(assert (=> b!310648 (=> res!141215 e!193164)))

(declare-fun isEmpty!2796 (BalanceConc!2786) Bool)

(declare-datatypes ((tuple2!4718 0))(
  ( (tuple2!4719 (_1!2575 BalanceConc!2786) (_2!2575 BalanceConc!2784)) )
))
(declare-fun lex!461 (LexerInterface!669 List!4082 BalanceConc!2784) tuple2!4718)

(assert (=> b!310648 (= res!141215 (isEmpty!2796 (_1!2575 (lex!461 thiss!17480 rules!1920 (seqFromList!931 lt!132942)))))))

(assert (=> b!310649 (= e!193163 (and tp!109404 tp!109399))))

(assert (=> b!310650 (= e!193168 (and tp!109405 tp!109407))))

(declare-fun b!310651 () Bool)

(assert (=> b!310651 (= e!193174 (not e!193165))))

(declare-fun res!141208 () Bool)

(assert (=> b!310651 (=> res!141208 e!193165)))

(assert (=> b!310651 (= res!141208 (not (= lt!132940 (list!1723 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 (seqFromList!932 (t!43831 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!132952 () List!4081)

(assert (=> b!310651 (= lt!132952 lt!132938)))

(assert (=> b!310651 (= lt!132938 (++!1110 lt!132942 lt!132957))))

(declare-fun lt!132962 () List!4081)

(assert (=> b!310651 (= lt!132952 (++!1110 (++!1110 lt!132942 lt!132962) lt!132940))))

(declare-fun lt!132954 () Unit!5756)

(declare-fun lemmaConcatAssociativity!492 (List!4081 List!4081 List!4081) Unit!5756)

(assert (=> b!310651 (= lt!132954 (lemmaConcatAssociativity!492 lt!132942 lt!132962 lt!132940))))

(declare-fun charsOf!426 (Token!1310) BalanceConc!2784)

(assert (=> b!310651 (= lt!132942 (list!1723 (charsOf!426 (h!9470 tokens!465))))))

(assert (=> b!310651 (= lt!132957 (++!1110 lt!132962 lt!132940))))

(assert (=> b!310651 (= lt!132940 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (t!43831 tokens!465) separatorToken!170))))

(assert (=> b!310651 (= lt!132962 (list!1723 (charsOf!426 separatorToken!170)))))

(declare-fun b!310652 () Bool)

(assert (=> b!310652 (= e!193176 e!193166)))

(declare-fun res!141212 () Bool)

(assert (=> b!310652 (=> res!141212 e!193166)))

(assert (=> b!310652 (= res!141212 (not lt!132953))))

(assert (=> b!310652 e!193188))

(declare-fun res!141194 () Bool)

(assert (=> b!310652 (=> (not res!141194) (not e!193188))))

(assert (=> b!310652 (= res!141194 (= (_1!2573 lt!132951) (h!9470 tokens!465)))))

(declare-fun lt!132958 () Option!934)

(assert (=> b!310652 (= lt!132951 (get!1395 lt!132958))))

(assert (=> b!310652 (isDefined!773 lt!132958)))

(assert (=> b!310652 (= lt!132958 (maxPrefix!385 thiss!17480 rules!1920 lt!132942))))

(declare-fun res!141200 () Bool)

(assert (=> b!310653 (=> (not res!141200) (not e!193175))))

(declare-fun forall!1080 (List!4083 Int) Bool)

(assert (=> b!310653 (= res!141200 (forall!1080 tokens!465 lambda!10599))))

(assert (= (and start!33478 res!141211) b!310645))

(assert (= (and b!310645 res!141205) b!310623))

(assert (= (and b!310623 res!141210) b!310641))

(assert (= (and b!310641 res!141196) b!310646))

(assert (= (and b!310646 res!141207) b!310630))

(assert (= (and b!310630 res!141197) b!310653))

(assert (= (and b!310653 res!141200) b!310638))

(assert (= (and b!310638 res!141202) b!310637))

(assert (= (and b!310637 res!141206) b!310633))

(assert (= (and b!310633 res!141199) b!310618))

(assert (= (and b!310618 res!141195) b!310651))

(assert (= (and b!310651 (not res!141208)) b!310624))

(assert (= (and b!310624 res!141198) b!310629))

(assert (= (and b!310624 (not res!141213)) b!310643))

(assert (= (and b!310643 (not res!141203)) b!310642))

(assert (= (and b!310642 (not res!141209)) b!310648))

(assert (= (and b!310648 (not res!141215)) b!310639))

(assert (= (and b!310639 (not res!141201)) b!310652))

(assert (= (and b!310652 res!141194) b!310636))

(assert (= (and b!310636 res!141192) b!310622))

(assert (= (and b!310652 (not res!141212)) b!310626))

(assert (= (and b!310626 (not res!141204)) b!310628))

(assert (= (and b!310628 res!141214) b!310619))

(assert (= (and b!310626 c!58915) b!310627))

(assert (= (and b!310626 (not c!58915)) b!310631))

(assert (= (and b!310626 (not res!141193)) b!310632))

(assert (= b!310634 b!310649))

(assert (= b!310644 b!310634))

(assert (= (and start!33478 ((_ is Cons!4072) rules!1920)) b!310644))

(assert (= b!310647 b!310625))

(assert (= b!310621 b!310647))

(assert (= start!33478 b!310621))

(assert (= b!310635 b!310650))

(assert (= b!310640 b!310635))

(assert (= b!310620 b!310640))

(assert (= (and start!33478 ((_ is Cons!4073) tokens!465)) b!310620))

(declare-fun m!416613 () Bool)

(assert (=> b!310622 m!416613))

(declare-fun m!416615 () Bool)

(assert (=> b!310653 m!416615))

(declare-fun m!416617 () Bool)

(assert (=> b!310626 m!416617))

(declare-fun m!416619 () Bool)

(assert (=> b!310626 m!416619))

(declare-fun m!416621 () Bool)

(assert (=> b!310626 m!416621))

(declare-fun m!416623 () Bool)

(assert (=> b!310626 m!416623))

(assert (=> b!310626 m!416621))

(declare-fun m!416625 () Bool)

(assert (=> b!310626 m!416625))

(declare-fun m!416627 () Bool)

(assert (=> b!310626 m!416627))

(declare-fun m!416629 () Bool)

(assert (=> b!310626 m!416629))

(assert (=> b!310626 m!416627))

(declare-fun m!416631 () Bool)

(assert (=> b!310626 m!416631))

(declare-fun m!416633 () Bool)

(assert (=> b!310626 m!416633))

(declare-fun m!416635 () Bool)

(assert (=> b!310626 m!416635))

(declare-fun m!416637 () Bool)

(assert (=> b!310626 m!416637))

(declare-fun m!416639 () Bool)

(assert (=> b!310633 m!416639))

(assert (=> b!310633 m!416639))

(declare-fun m!416641 () Bool)

(assert (=> b!310633 m!416641))

(declare-fun m!416643 () Bool)

(assert (=> b!310633 m!416643))

(declare-fun m!416645 () Bool)

(assert (=> b!310648 m!416645))

(assert (=> b!310648 m!416645))

(declare-fun m!416647 () Bool)

(assert (=> b!310648 m!416647))

(declare-fun m!416649 () Bool)

(assert (=> b!310648 m!416649))

(declare-fun m!416651 () Bool)

(assert (=> b!310619 m!416651))

(declare-fun m!416653 () Bool)

(assert (=> b!310619 m!416653))

(declare-fun m!416655 () Bool)

(assert (=> b!310632 m!416655))

(declare-fun m!416657 () Bool)

(assert (=> b!310647 m!416657))

(declare-fun m!416659 () Bool)

(assert (=> b!310647 m!416659))

(declare-fun m!416661 () Bool)

(assert (=> b!310639 m!416661))

(assert (=> b!310639 m!416661))

(declare-fun m!416663 () Bool)

(assert (=> b!310639 m!416663))

(assert (=> b!310639 m!416663))

(declare-fun m!416665 () Bool)

(assert (=> b!310639 m!416665))

(declare-fun m!416667 () Bool)

(assert (=> b!310639 m!416667))

(declare-fun m!416669 () Bool)

(assert (=> b!310646 m!416669))

(declare-fun m!416671 () Bool)

(assert (=> b!310645 m!416671))

(declare-fun m!416673 () Bool)

(assert (=> b!310651 m!416673))

(declare-fun m!416675 () Bool)

(assert (=> b!310651 m!416675))

(declare-fun m!416677 () Bool)

(assert (=> b!310651 m!416677))

(declare-fun m!416679 () Bool)

(assert (=> b!310651 m!416679))

(declare-fun m!416681 () Bool)

(assert (=> b!310651 m!416681))

(declare-fun m!416683 () Bool)

(assert (=> b!310651 m!416683))

(declare-fun m!416685 () Bool)

(assert (=> b!310651 m!416685))

(declare-fun m!416687 () Bool)

(assert (=> b!310651 m!416687))

(assert (=> b!310651 m!416681))

(assert (=> b!310651 m!416685))

(declare-fun m!416689 () Bool)

(assert (=> b!310651 m!416689))

(assert (=> b!310651 m!416673))

(declare-fun m!416691 () Bool)

(assert (=> b!310651 m!416691))

(declare-fun m!416693 () Bool)

(assert (=> b!310651 m!416693))

(assert (=> b!310651 m!416693))

(declare-fun m!416695 () Bool)

(assert (=> b!310651 m!416695))

(assert (=> b!310651 m!416691))

(declare-fun m!416697 () Bool)

(assert (=> b!310651 m!416697))

(declare-fun m!416699 () Bool)

(assert (=> b!310620 m!416699))

(declare-fun m!416701 () Bool)

(assert (=> b!310634 m!416701))

(declare-fun m!416703 () Bool)

(assert (=> b!310634 m!416703))

(declare-fun m!416705 () Bool)

(assert (=> b!310640 m!416705))

(declare-fun m!416707 () Bool)

(assert (=> b!310621 m!416707))

(declare-fun m!416709 () Bool)

(assert (=> b!310652 m!416709))

(declare-fun m!416711 () Bool)

(assert (=> b!310652 m!416711))

(declare-fun m!416713 () Bool)

(assert (=> b!310652 m!416713))

(declare-fun m!416715 () Bool)

(assert (=> b!310623 m!416715))

(declare-fun m!416717 () Bool)

(assert (=> b!310643 m!416717))

(declare-fun m!416719 () Bool)

(assert (=> b!310643 m!416719))

(declare-fun m!416721 () Bool)

(assert (=> b!310643 m!416721))

(declare-fun m!416723 () Bool)

(assert (=> b!310643 m!416723))

(declare-fun m!416725 () Bool)

(assert (=> b!310643 m!416725))

(declare-fun m!416727 () Bool)

(assert (=> b!310635 m!416727))

(declare-fun m!416729 () Bool)

(assert (=> b!310635 m!416729))

(declare-fun m!416731 () Bool)

(assert (=> b!310638 m!416731))

(declare-fun m!416733 () Bool)

(assert (=> b!310636 m!416733))

(declare-fun m!416735 () Bool)

(assert (=> start!33478 m!416735))

(declare-fun m!416737 () Bool)

(assert (=> b!310618 m!416737))

(assert (=> b!310618 m!416737))

(declare-fun m!416739 () Bool)

(assert (=> b!310618 m!416739))

(declare-fun m!416741 () Bool)

(assert (=> b!310629 m!416741))

(declare-fun m!416743 () Bool)

(assert (=> b!310641 m!416743))

(declare-fun m!416745 () Bool)

(assert (=> b!310641 m!416745))

(declare-fun m!416747 () Bool)

(assert (=> b!310628 m!416747))

(assert (=> b!310628 m!416621))

(declare-fun m!416749 () Bool)

(assert (=> b!310642 m!416749))

(check-sat (not b_next!11073) (not b!310635) (not b!310621) (not b!310644) (not b!310643) (not b!310642) (not b!310646) (not b!310634) (not b!310632) (not b_next!11077) b_and!26397 (not b!310653) (not b!310633) (not b!310620) (not b!310638) (not b!310628) (not b!310629) (not b!310626) b_and!26391 (not b!310652) (not b!310641) (not b!310619) (not b!310647) (not b!310622) b_and!26393 (not b_next!11083) (not b_next!11079) (not b_next!11081) (not b!310662) (not b!310645) (not start!33478) b_and!26389 (not b!310640) (not b!310618) (not b_next!11075) b_and!26399 (not b!310639) (not b!310636) (not b!310623) b_and!26395 (not b!310648) (not b!310651))
(check-sat (not b_next!11073) b_and!26391 b_and!26389 b_and!26395 (not b_next!11077) b_and!26397 b_and!26393 (not b_next!11083) (not b_next!11079) (not b_next!11081) (not b_next!11075) b_and!26399)
(get-model)

(declare-fun b!310701 () Bool)

(declare-fun e!193221 () Bool)

(declare-fun inv!15 (TokenValue!805) Bool)

(assert (=> b!310701 (= e!193221 (inv!15 (value!26631 (h!9470 tokens!465))))))

(declare-fun b!310702 () Bool)

(declare-fun e!193222 () Bool)

(declare-fun e!193220 () Bool)

(assert (=> b!310702 (= e!193222 e!193220)))

(declare-fun c!58926 () Bool)

(assert (=> b!310702 (= c!58926 ((_ is IntegerValue!2416) (value!26631 (h!9470 tokens!465))))))

(declare-fun b!310703 () Bool)

(declare-fun inv!17 (TokenValue!805) Bool)

(assert (=> b!310703 (= e!193220 (inv!17 (value!26631 (h!9470 tokens!465))))))

(declare-fun d!95425 () Bool)

(declare-fun c!58927 () Bool)

(assert (=> d!95425 (= c!58927 ((_ is IntegerValue!2415) (value!26631 (h!9470 tokens!465))))))

(assert (=> d!95425 (= (inv!21 (value!26631 (h!9470 tokens!465))) e!193222)))

(declare-fun b!310704 () Bool)

(declare-fun res!141246 () Bool)

(assert (=> b!310704 (=> res!141246 e!193221)))

(assert (=> b!310704 (= res!141246 (not ((_ is IntegerValue!2417) (value!26631 (h!9470 tokens!465)))))))

(assert (=> b!310704 (= e!193220 e!193221)))

(declare-fun b!310705 () Bool)

(declare-fun inv!16 (TokenValue!805) Bool)

(assert (=> b!310705 (= e!193222 (inv!16 (value!26631 (h!9470 tokens!465))))))

(assert (= (and d!95425 c!58927) b!310705))

(assert (= (and d!95425 (not c!58927)) b!310702))

(assert (= (and b!310702 c!58926) b!310703))

(assert (= (and b!310702 (not c!58926)) b!310704))

(assert (= (and b!310704 (not res!141246)) b!310701))

(declare-fun m!416791 () Bool)

(assert (=> b!310701 m!416791))

(declare-fun m!416793 () Bool)

(assert (=> b!310703 m!416793))

(declare-fun m!416795 () Bool)

(assert (=> b!310705 m!416795))

(assert (=> b!310640 d!95425))

(declare-fun d!95427 () Bool)

(assert (=> d!95427 (= (get!1395 lt!132959) (v!14948 lt!132959))))

(assert (=> b!310619 d!95427))

(declare-fun d!95429 () Bool)

(assert (=> d!95429 (= (head!970 tokens!465) (h!9470 tokens!465))))

(assert (=> b!310619 d!95429))

(declare-fun d!95431 () Bool)

(declare-fun list!1726 (Conc!1388) List!4081)

(assert (=> d!95431 (= (list!1723 (seqFromList!931 lt!132956)) (list!1726 (c!58916 (seqFromList!931 lt!132956))))))

(declare-fun bs!36047 () Bool)

(assert (= bs!36047 d!95431))

(declare-fun m!416797 () Bool)

(assert (=> bs!36047 m!416797))

(assert (=> b!310618 d!95431))

(declare-fun d!95433 () Bool)

(declare-fun fromListB!389 (List!4081) BalanceConc!2784)

(assert (=> d!95433 (= (seqFromList!931 lt!132956) (fromListB!389 lt!132956))))

(declare-fun bs!36048 () Bool)

(assert (= bs!36048 d!95433))

(declare-fun m!416799 () Bool)

(assert (=> bs!36048 m!416799))

(assert (=> b!310618 d!95433))

(declare-fun d!95435 () Bool)

(declare-fun isEmpty!2799 (Option!935) Bool)

(assert (=> d!95435 (= (isDefined!774 (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465))))) (not (isEmpty!2799 (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))

(declare-fun bs!36049 () Bool)

(assert (= bs!36049 d!95435))

(assert (=> bs!36049 m!416663))

(declare-fun m!416801 () Bool)

(assert (=> bs!36049 m!416801))

(assert (=> b!310639 d!95435))

(declare-fun b!310749 () Bool)

(declare-fun e!193250 () Option!935)

(declare-fun call!18102 () Option!935)

(assert (=> b!310749 (= e!193250 call!18102)))

(declare-fun e!193253 () Bool)

(declare-fun lt!133008 () Option!935)

(declare-fun b!310750 () Bool)

(declare-fun get!1397 (Option!935) tuple2!4716)

(declare-fun maxPrefixZipper!145 (LexerInterface!669 List!4082 List!4081) Option!934)

(assert (=> b!310750 (= e!193253 (= (list!1723 (_2!2574 (get!1397 lt!133008))) (_2!2573 (get!1395 (maxPrefixZipper!145 thiss!17480 rules!1920 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))))

(declare-fun e!193255 () Bool)

(declare-fun b!310751 () Bool)

(assert (=> b!310751 (= e!193255 (= (list!1723 (_2!2574 (get!1397 lt!133008))) (_2!2573 (get!1395 (maxPrefix!385 thiss!17480 rules!1920 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))))

(declare-fun b!310752 () Bool)

(declare-fun res!141261 () Bool)

(declare-fun e!193254 () Bool)

(assert (=> b!310752 (=> (not res!141261) (not e!193254))))

(declare-fun e!193251 () Bool)

(assert (=> b!310752 (= res!141261 e!193251)))

(declare-fun res!141264 () Bool)

(assert (=> b!310752 (=> res!141264 e!193251)))

(assert (=> b!310752 (= res!141264 (not (isDefined!774 lt!133008)))))

(declare-fun bm!18097 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!145 (LexerInterface!669 Rule!1366 BalanceConc!2784) Option!935)

(assert (=> bm!18097 (= call!18102 (maxPrefixOneRuleZipperSequence!145 thiss!17480 (h!9469 rules!1920) (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))

(declare-fun b!310753 () Bool)

(declare-fun e!193252 () Bool)

(assert (=> b!310753 (= e!193252 e!193255)))

(declare-fun res!141262 () Bool)

(assert (=> b!310753 (=> (not res!141262) (not e!193255))))

(assert (=> b!310753 (= res!141262 (= (_1!2574 (get!1397 lt!133008)) (_1!2573 (get!1395 (maxPrefix!385 thiss!17480 rules!1920 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))))

(declare-fun b!310754 () Bool)

(declare-fun lt!133005 () Option!935)

(declare-fun lt!133004 () Option!935)

(assert (=> b!310754 (= e!193250 (ite (and ((_ is None!934) lt!133005) ((_ is None!934) lt!133004)) None!934 (ite ((_ is None!934) lt!133004) lt!133005 (ite ((_ is None!934) lt!133005) lt!133004 (ite (>= (size!3257 (_1!2574 (v!14949 lt!133005))) (size!3257 (_1!2574 (v!14949 lt!133004)))) lt!133005 lt!133004)))))))

(assert (=> b!310754 (= lt!133005 call!18102)))

(assert (=> b!310754 (= lt!133004 (maxPrefixZipperSequence!348 thiss!17480 (t!43830 rules!1920) (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))

(declare-fun b!310755 () Bool)

(assert (=> b!310755 (= e!193251 e!193253)))

(declare-fun res!141263 () Bool)

(assert (=> b!310755 (=> (not res!141263) (not e!193253))))

(assert (=> b!310755 (= res!141263 (= (_1!2574 (get!1397 lt!133008)) (_1!2573 (get!1395 (maxPrefixZipper!145 thiss!17480 rules!1920 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))))))

(declare-fun d!95437 () Bool)

(assert (=> d!95437 e!193254))

(declare-fun res!141259 () Bool)

(assert (=> d!95437 (=> (not res!141259) (not e!193254))))

(assert (=> d!95437 (= res!141259 (= (isDefined!774 lt!133008) (isDefined!773 (maxPrefixZipper!145 thiss!17480 rules!1920 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465))))))))))

(assert (=> d!95437 (= lt!133008 e!193250)))

(declare-fun c!58942 () Bool)

(assert (=> d!95437 (= c!58942 (and ((_ is Cons!4072) rules!1920) ((_ is Nil!4072) (t!43830 rules!1920))))))

(declare-fun lt!133006 () Unit!5756)

(declare-fun lt!133007 () Unit!5756)

(assert (=> d!95437 (= lt!133006 lt!133007)))

(declare-fun lt!133010 () List!4081)

(declare-fun lt!133009 () List!4081)

(assert (=> d!95437 (isPrefix!443 lt!133010 lt!133009)))

(declare-fun lemmaIsPrefixRefl!241 (List!4081 List!4081) Unit!5756)

(assert (=> d!95437 (= lt!133007 (lemmaIsPrefixRefl!241 lt!133010 lt!133009))))

(assert (=> d!95437 (= lt!133009 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))

(assert (=> d!95437 (= lt!133010 (list!1723 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))))))

(declare-fun rulesValidInductive!236 (LexerInterface!669 List!4082) Bool)

(assert (=> d!95437 (rulesValidInductive!236 thiss!17480 rules!1920)))

(assert (=> d!95437 (= (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465)))) lt!133008)))

(declare-fun b!310756 () Bool)

(assert (=> b!310756 (= e!193254 e!193252)))

(declare-fun res!141260 () Bool)

(assert (=> b!310756 (=> res!141260 e!193252)))

(assert (=> b!310756 (= res!141260 (not (isDefined!774 lt!133008)))))

(assert (= (and d!95437 c!58942) b!310749))

(assert (= (and d!95437 (not c!58942)) b!310754))

(assert (= (or b!310749 b!310754) bm!18097))

(assert (= (and d!95437 res!141259) b!310752))

(assert (= (and b!310752 (not res!141264)) b!310755))

(assert (= (and b!310755 res!141263) b!310750))

(assert (= (and b!310752 res!141261) b!310756))

(assert (= (and b!310756 (not res!141260)) b!310753))

(assert (= (and b!310753 res!141262) b!310751))

(declare-fun m!416831 () Bool)

(assert (=> b!310755 m!416831))

(assert (=> b!310755 m!416661))

(declare-fun m!416833 () Bool)

(assert (=> b!310755 m!416833))

(assert (=> b!310755 m!416833))

(declare-fun m!416835 () Bool)

(assert (=> b!310755 m!416835))

(assert (=> b!310755 m!416835))

(declare-fun m!416837 () Bool)

(assert (=> b!310755 m!416837))

(assert (=> bm!18097 m!416661))

(declare-fun m!416839 () Bool)

(assert (=> bm!18097 m!416839))

(declare-fun m!416841 () Bool)

(assert (=> b!310756 m!416841))

(declare-fun m!416843 () Bool)

(assert (=> b!310750 m!416843))

(assert (=> b!310750 m!416831))

(assert (=> b!310750 m!416661))

(assert (=> b!310750 m!416833))

(assert (=> b!310750 m!416833))

(assert (=> b!310750 m!416835))

(assert (=> b!310750 m!416835))

(assert (=> b!310750 m!416837))

(assert (=> b!310753 m!416831))

(assert (=> b!310753 m!416661))

(assert (=> b!310753 m!416833))

(assert (=> b!310753 m!416833))

(declare-fun m!416845 () Bool)

(assert (=> b!310753 m!416845))

(assert (=> b!310753 m!416845))

(declare-fun m!416847 () Bool)

(assert (=> b!310753 m!416847))

(assert (=> b!310751 m!416843))

(assert (=> b!310751 m!416831))

(assert (=> b!310751 m!416661))

(assert (=> b!310751 m!416833))

(assert (=> b!310751 m!416845))

(assert (=> b!310751 m!416847))

(assert (=> b!310751 m!416833))

(assert (=> b!310751 m!416845))

(assert (=> b!310754 m!416661))

(declare-fun m!416849 () Bool)

(assert (=> b!310754 m!416849))

(assert (=> b!310752 m!416841))

(declare-fun m!416851 () Bool)

(assert (=> d!95437 m!416851))

(assert (=> d!95437 m!416661))

(assert (=> d!95437 m!416833))

(assert (=> d!95437 m!416833))

(assert (=> d!95437 m!416835))

(declare-fun m!416853 () Bool)

(assert (=> d!95437 m!416853))

(assert (=> d!95437 m!416835))

(declare-fun m!416855 () Bool)

(assert (=> d!95437 m!416855))

(assert (=> d!95437 m!416841))

(declare-fun m!416857 () Bool)

(assert (=> d!95437 m!416857))

(assert (=> b!310639 d!95437))

(declare-fun d!95441 () Bool)

(assert (=> d!95441 (= (seqFromList!931 (originalCharacters!826 (h!9470 tokens!465))) (fromListB!389 (originalCharacters!826 (h!9470 tokens!465))))))

(declare-fun bs!36052 () Bool)

(assert (= bs!36052 d!95441))

(declare-fun m!416859 () Bool)

(assert (=> bs!36052 m!416859))

(assert (=> b!310639 d!95441))

(declare-fun d!95443 () Bool)

(declare-fun dynLambda!2240 (Int Token!1310) Bool)

(assert (=> d!95443 (dynLambda!2240 lambda!10600 (h!9470 tokens!465))))

(declare-fun lt!133013 () Unit!5756)

(declare-fun choose!2712 (List!4083 Int Token!1310) Unit!5756)

(assert (=> d!95443 (= lt!133013 (choose!2712 tokens!465 lambda!10600 (h!9470 tokens!465)))))

(declare-fun e!193258 () Bool)

(assert (=> d!95443 e!193258))

(declare-fun res!141267 () Bool)

(assert (=> d!95443 (=> (not res!141267) (not e!193258))))

(assert (=> d!95443 (= res!141267 (forall!1080 tokens!465 lambda!10600))))

(assert (=> d!95443 (= (forallContained!336 tokens!465 lambda!10600 (h!9470 tokens!465)) lt!133013)))

(declare-fun b!310759 () Bool)

(assert (=> b!310759 (= e!193258 (contains!809 tokens!465 (h!9470 tokens!465)))))

(assert (= (and d!95443 res!141267) b!310759))

(declare-fun b_lambda!10851 () Bool)

(assert (=> (not b_lambda!10851) (not d!95443)))

(declare-fun m!416861 () Bool)

(assert (=> d!95443 m!416861))

(declare-fun m!416863 () Bool)

(assert (=> d!95443 m!416863))

(declare-fun m!416865 () Bool)

(assert (=> d!95443 m!416865))

(declare-fun m!416867 () Bool)

(assert (=> b!310759 m!416867))

(assert (=> b!310639 d!95443))

(declare-fun d!95445 () Bool)

(declare-fun res!141272 () Bool)

(declare-fun e!193263 () Bool)

(assert (=> d!95445 (=> res!141272 e!193263)))

(assert (=> d!95445 (= res!141272 (not ((_ is Cons!4072) rules!1920)))))

(assert (=> d!95445 (= (sepAndNonSepRulesDisjointChars!372 rules!1920 rules!1920) e!193263)))

(declare-fun b!310764 () Bool)

(declare-fun e!193264 () Bool)

(assert (=> b!310764 (= e!193263 e!193264)))

(declare-fun res!141273 () Bool)

(assert (=> b!310764 (=> (not res!141273) (not e!193264))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!152 (Rule!1366 List!4082) Bool)

(assert (=> b!310764 (= res!141273 (ruleDisjointCharsFromAllFromOtherType!152 (h!9469 rules!1920) rules!1920))))

(declare-fun b!310765 () Bool)

(assert (=> b!310765 (= e!193264 (sepAndNonSepRulesDisjointChars!372 rules!1920 (t!43830 rules!1920)))))

(assert (= (and d!95445 (not res!141272)) b!310764))

(assert (= (and b!310764 res!141273) b!310765))

(declare-fun m!416869 () Bool)

(assert (=> b!310764 m!416869))

(declare-fun m!416871 () Bool)

(assert (=> b!310765 m!416871))

(assert (=> b!310638 d!95445))

(declare-fun d!95447 () Bool)

(assert (=> d!95447 (= (isEmpty!2794 (_2!2573 lt!132951)) ((_ is Nil!4071) (_2!2573 lt!132951)))))

(assert (=> b!310636 d!95447))

(declare-fun d!95449 () Bool)

(declare-fun res!141278 () Bool)

(declare-fun e!193267 () Bool)

(assert (=> d!95449 (=> (not res!141278) (not e!193267))))

(assert (=> d!95449 (= res!141278 (not (isEmpty!2794 (originalCharacters!826 separatorToken!170))))))

(assert (=> d!95449 (= (inv!5032 separatorToken!170) e!193267)))

(declare-fun b!310770 () Bool)

(declare-fun res!141279 () Bool)

(assert (=> b!310770 (=> (not res!141279) (not e!193267))))

(declare-fun dynLambda!2241 (Int TokenValue!805) BalanceConc!2784)

(assert (=> b!310770 (= res!141279 (= (originalCharacters!826 separatorToken!170) (list!1723 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (value!26631 separatorToken!170)))))))

(declare-fun b!310771 () Bool)

(declare-fun size!3260 (List!4081) Int)

(assert (=> b!310771 (= e!193267 (= (size!3257 separatorToken!170) (size!3260 (originalCharacters!826 separatorToken!170))))))

(assert (= (and d!95449 res!141278) b!310770))

(assert (= (and b!310770 res!141279) b!310771))

(declare-fun b_lambda!10853 () Bool)

(assert (=> (not b_lambda!10853) (not b!310770)))

(declare-fun t!43836 () Bool)

(declare-fun tb!19821 () Bool)

(assert (=> (and b!310625 (= (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170)))) t!43836) tb!19821))

(declare-fun b!310776 () Bool)

(declare-fun e!193270 () Bool)

(declare-fun tp!109412 () Bool)

(declare-fun inv!5036 (Conc!1388) Bool)

(assert (=> b!310776 (= e!193270 (and (inv!5036 (c!58916 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (value!26631 separatorToken!170)))) tp!109412))))

(declare-fun result!23832 () Bool)

(declare-fun inv!5037 (BalanceConc!2784) Bool)

(assert (=> tb!19821 (= result!23832 (and (inv!5037 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (value!26631 separatorToken!170))) e!193270))))

(assert (= tb!19821 b!310776))

(declare-fun m!416873 () Bool)

(assert (=> b!310776 m!416873))

(declare-fun m!416875 () Bool)

(assert (=> tb!19821 m!416875))

(assert (=> b!310770 t!43836))

(declare-fun b_and!26401 () Bool)

(assert (= b_and!26391 (and (=> t!43836 result!23832) b_and!26401)))

(declare-fun tb!19823 () Bool)

(declare-fun t!43838 () Bool)

(assert (=> (and b!310649 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170)))) t!43838) tb!19823))

(declare-fun result!23836 () Bool)

(assert (= result!23836 result!23832))

(assert (=> b!310770 t!43838))

(declare-fun b_and!26403 () Bool)

(assert (= b_and!26395 (and (=> t!43838 result!23836) b_and!26403)))

(declare-fun t!43840 () Bool)

(declare-fun tb!19825 () Bool)

(assert (=> (and b!310650 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170)))) t!43840) tb!19825))

(declare-fun result!23838 () Bool)

(assert (= result!23838 result!23832))

(assert (=> b!310770 t!43840))

(declare-fun b_and!26405 () Bool)

(assert (= b_and!26399 (and (=> t!43840 result!23838) b_and!26405)))

(declare-fun m!416877 () Bool)

(assert (=> d!95449 m!416877))

(declare-fun m!416879 () Bool)

(assert (=> b!310770 m!416879))

(assert (=> b!310770 m!416879))

(declare-fun m!416881 () Bool)

(assert (=> b!310770 m!416881))

(declare-fun m!416883 () Bool)

(assert (=> b!310771 m!416883))

(assert (=> start!33478 d!95449))

(declare-fun d!95451 () Bool)

(assert (=> d!95451 (= (isEmpty!2795 rules!1920) ((_ is Nil!4072) rules!1920))))

(assert (=> b!310645 d!95451))

(declare-fun d!95453 () Bool)

(declare-fun lt!133018 () Bool)

(declare-fun e!193276 () Bool)

(assert (=> d!95453 (= lt!133018 e!193276)))

(declare-fun res!141287 () Bool)

(assert (=> d!95453 (=> (not res!141287) (not e!193276))))

(declare-fun list!1727 (BalanceConc!2786) List!4083)

(assert (=> d!95453 (= res!141287 (= (list!1727 (_1!2575 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 separatorToken!170))))) (list!1727 (singletonSeq!329 separatorToken!170))))))

(declare-fun e!193275 () Bool)

(assert (=> d!95453 (= lt!133018 e!193275)))

(declare-fun res!141288 () Bool)

(assert (=> d!95453 (=> (not res!141288) (not e!193275))))

(declare-fun lt!133019 () tuple2!4718)

(declare-fun size!3261 (BalanceConc!2786) Int)

(assert (=> d!95453 (= res!141288 (= (size!3261 (_1!2575 lt!133019)) 1))))

(assert (=> d!95453 (= lt!133019 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 separatorToken!170))))))

(assert (=> d!95453 (not (isEmpty!2795 rules!1920))))

(assert (=> d!95453 (= (rulesProduceIndividualToken!418 thiss!17480 rules!1920 separatorToken!170) lt!133018)))

(declare-fun b!310783 () Bool)

(declare-fun res!141286 () Bool)

(assert (=> b!310783 (=> (not res!141286) (not e!193275))))

(declare-fun apply!900 (BalanceConc!2786 Int) Token!1310)

(assert (=> b!310783 (= res!141286 (= (apply!900 (_1!2575 lt!133019) 0) separatorToken!170))))

(declare-fun b!310784 () Bool)

(declare-fun isEmpty!2801 (BalanceConc!2784) Bool)

(assert (=> b!310784 (= e!193275 (isEmpty!2801 (_2!2575 lt!133019)))))

(declare-fun b!310785 () Bool)

(assert (=> b!310785 (= e!193276 (isEmpty!2801 (_2!2575 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 separatorToken!170))))))))

(assert (= (and d!95453 res!141288) b!310783))

(assert (= (and b!310783 res!141286) b!310784))

(assert (= (and d!95453 res!141287) b!310785))

(declare-fun m!416885 () Bool)

(assert (=> d!95453 m!416885))

(declare-fun m!416887 () Bool)

(assert (=> d!95453 m!416887))

(declare-fun m!416889 () Bool)

(assert (=> d!95453 m!416889))

(assert (=> d!95453 m!416889))

(declare-fun m!416891 () Bool)

(assert (=> d!95453 m!416891))

(assert (=> d!95453 m!416891))

(declare-fun m!416893 () Bool)

(assert (=> d!95453 m!416893))

(assert (=> d!95453 m!416671))

(assert (=> d!95453 m!416889))

(declare-fun m!416895 () Bool)

(assert (=> d!95453 m!416895))

(declare-fun m!416897 () Bool)

(assert (=> b!310783 m!416897))

(declare-fun m!416899 () Bool)

(assert (=> b!310784 m!416899))

(assert (=> b!310785 m!416889))

(assert (=> b!310785 m!416889))

(assert (=> b!310785 m!416891))

(assert (=> b!310785 m!416891))

(assert (=> b!310785 m!416893))

(declare-fun m!416901 () Bool)

(assert (=> b!310785 m!416901))

(assert (=> b!310646 d!95453))

(declare-fun d!95455 () Bool)

(declare-fun res!141291 () Bool)

(declare-fun e!193279 () Bool)

(assert (=> d!95455 (=> (not res!141291) (not e!193279))))

(declare-fun rulesValid!259 (LexerInterface!669 List!4082) Bool)

(assert (=> d!95455 (= res!141291 (rulesValid!259 thiss!17480 rules!1920))))

(assert (=> d!95455 (= (rulesInvariant!635 thiss!17480 rules!1920) e!193279)))

(declare-fun b!310788 () Bool)

(declare-datatypes ((List!4084 0))(
  ( (Nil!4074) (Cons!4074 (h!9471 String!5105) (t!43900 List!4084)) )
))
(declare-fun noDuplicateTag!259 (LexerInterface!669 List!4082 List!4084) Bool)

(assert (=> b!310788 (= e!193279 (noDuplicateTag!259 thiss!17480 rules!1920 Nil!4074))))

(assert (= (and d!95455 res!141291) b!310788))

(declare-fun m!416903 () Bool)

(assert (=> d!95455 m!416903))

(declare-fun m!416905 () Bool)

(assert (=> b!310788 m!416905))

(assert (=> b!310623 d!95455))

(declare-fun b!310789 () Bool)

(declare-fun e!193281 () Bool)

(assert (=> b!310789 (= e!193281 (inv!15 (value!26631 separatorToken!170)))))

(declare-fun b!310790 () Bool)

(declare-fun e!193282 () Bool)

(declare-fun e!193280 () Bool)

(assert (=> b!310790 (= e!193282 e!193280)))

(declare-fun c!58943 () Bool)

(assert (=> b!310790 (= c!58943 ((_ is IntegerValue!2416) (value!26631 separatorToken!170)))))

(declare-fun b!310791 () Bool)

(assert (=> b!310791 (= e!193280 (inv!17 (value!26631 separatorToken!170)))))

(declare-fun d!95457 () Bool)

(declare-fun c!58944 () Bool)

(assert (=> d!95457 (= c!58944 ((_ is IntegerValue!2415) (value!26631 separatorToken!170)))))

(assert (=> d!95457 (= (inv!21 (value!26631 separatorToken!170)) e!193282)))

(declare-fun b!310792 () Bool)

(declare-fun res!141292 () Bool)

(assert (=> b!310792 (=> res!141292 e!193281)))

(assert (=> b!310792 (= res!141292 (not ((_ is IntegerValue!2417) (value!26631 separatorToken!170))))))

(assert (=> b!310792 (= e!193280 e!193281)))

(declare-fun b!310793 () Bool)

(assert (=> b!310793 (= e!193282 (inv!16 (value!26631 separatorToken!170)))))

(assert (= (and d!95457 c!58944) b!310793))

(assert (= (and d!95457 (not c!58944)) b!310790))

(assert (= (and b!310790 c!58943) b!310791))

(assert (= (and b!310790 (not c!58943)) b!310792))

(assert (= (and b!310792 (not res!141292)) b!310789))

(declare-fun m!416907 () Bool)

(assert (=> b!310789 m!416907))

(declare-fun m!416909 () Bool)

(assert (=> b!310791 m!416909))

(declare-fun m!416911 () Bool)

(assert (=> b!310793 m!416911))

(assert (=> b!310621 d!95457))

(declare-fun b!310828 () Bool)

(declare-fun e!193303 () Bool)

(declare-fun e!193307 () Bool)

(assert (=> b!310828 (= e!193303 e!193307)))

(declare-fun res!141312 () Bool)

(assert (=> b!310828 (=> res!141312 e!193307)))

(declare-fun call!18105 () Bool)

(assert (=> b!310828 (= res!141312 call!18105)))

(declare-fun d!95459 () Bool)

(declare-fun e!193305 () Bool)

(assert (=> d!95459 e!193305))

(declare-fun c!58953 () Bool)

(assert (=> d!95459 (= c!58953 ((_ is EmptyExpr!1007) (regex!783 (rule!1400 (h!9470 tokens!465)))))))

(declare-fun lt!133040 () Bool)

(declare-fun e!193304 () Bool)

(assert (=> d!95459 (= lt!133040 e!193304)))

(declare-fun c!58954 () Bool)

(assert (=> d!95459 (= c!58954 (isEmpty!2794 lt!132942))))

(declare-fun validRegex!272 (Regex!1007) Bool)

(assert (=> d!95459 (validRegex!272 (regex!783 (rule!1400 (h!9470 tokens!465))))))

(assert (=> d!95459 (= (matchR!325 (regex!783 (rule!1400 (h!9470 tokens!465))) lt!132942) lt!133040)))

(declare-fun b!310829 () Bool)

(declare-fun nullable!197 (Regex!1007) Bool)

(assert (=> b!310829 (= e!193304 (nullable!197 (regex!783 (rule!1400 (h!9470 tokens!465)))))))

(declare-fun b!310830 () Bool)

(declare-fun derivativeStep!163 (Regex!1007 C!2936) Regex!1007)

(declare-fun head!971 (List!4081) C!2936)

(declare-fun tail!544 (List!4081) List!4081)

(assert (=> b!310830 (= e!193304 (matchR!325 (derivativeStep!163 (regex!783 (rule!1400 (h!9470 tokens!465))) (head!971 lt!132942)) (tail!544 lt!132942)))))

(declare-fun b!310831 () Bool)

(declare-fun e!193302 () Bool)

(assert (=> b!310831 (= e!193305 e!193302)))

(declare-fun c!58955 () Bool)

(assert (=> b!310831 (= c!58955 ((_ is EmptyLang!1007) (regex!783 (rule!1400 (h!9470 tokens!465)))))))

(declare-fun bm!18100 () Bool)

(assert (=> bm!18100 (= call!18105 (isEmpty!2794 lt!132942))))

(declare-fun b!310832 () Bool)

(declare-fun e!193306 () Bool)

(assert (=> b!310832 (= e!193306 e!193303)))

(declare-fun res!141316 () Bool)

(assert (=> b!310832 (=> (not res!141316) (not e!193303))))

(assert (=> b!310832 (= res!141316 (not lt!133040))))

(declare-fun b!310833 () Bool)

(declare-fun res!141311 () Bool)

(declare-fun e!193301 () Bool)

(assert (=> b!310833 (=> (not res!141311) (not e!193301))))

(assert (=> b!310833 (= res!141311 (not call!18105))))

(declare-fun b!310834 () Bool)

(declare-fun res!141314 () Bool)

(assert (=> b!310834 (=> (not res!141314) (not e!193301))))

(assert (=> b!310834 (= res!141314 (isEmpty!2794 (tail!544 lt!132942)))))

(declare-fun b!310835 () Bool)

(assert (=> b!310835 (= e!193301 (= (head!971 lt!132942) (c!58917 (regex!783 (rule!1400 (h!9470 tokens!465))))))))

(declare-fun b!310836 () Bool)

(declare-fun res!141317 () Bool)

(assert (=> b!310836 (=> res!141317 e!193306)))

(assert (=> b!310836 (= res!141317 (not ((_ is ElementMatch!1007) (regex!783 (rule!1400 (h!9470 tokens!465))))))))

(assert (=> b!310836 (= e!193302 e!193306)))

(declare-fun b!310837 () Bool)

(assert (=> b!310837 (= e!193305 (= lt!133040 call!18105))))

(declare-fun b!310838 () Bool)

(assert (=> b!310838 (= e!193307 (not (= (head!971 lt!132942) (c!58917 (regex!783 (rule!1400 (h!9470 tokens!465)))))))))

(declare-fun b!310839 () Bool)

(declare-fun res!141315 () Bool)

(assert (=> b!310839 (=> res!141315 e!193306)))

(assert (=> b!310839 (= res!141315 e!193301)))

(declare-fun res!141318 () Bool)

(assert (=> b!310839 (=> (not res!141318) (not e!193301))))

(assert (=> b!310839 (= res!141318 lt!133040)))

(declare-fun b!310840 () Bool)

(declare-fun res!141313 () Bool)

(assert (=> b!310840 (=> res!141313 e!193307)))

(assert (=> b!310840 (= res!141313 (not (isEmpty!2794 (tail!544 lt!132942))))))

(declare-fun b!310841 () Bool)

(assert (=> b!310841 (= e!193302 (not lt!133040))))

(assert (= (and d!95459 c!58954) b!310829))

(assert (= (and d!95459 (not c!58954)) b!310830))

(assert (= (and d!95459 c!58953) b!310837))

(assert (= (and d!95459 (not c!58953)) b!310831))

(assert (= (and b!310831 c!58955) b!310841))

(assert (= (and b!310831 (not c!58955)) b!310836))

(assert (= (and b!310836 (not res!141317)) b!310839))

(assert (= (and b!310839 res!141318) b!310833))

(assert (= (and b!310833 res!141311) b!310834))

(assert (= (and b!310834 res!141314) b!310835))

(assert (= (and b!310839 (not res!141315)) b!310832))

(assert (= (and b!310832 res!141316) b!310828))

(assert (= (and b!310828 (not res!141312)) b!310840))

(assert (= (and b!310840 (not res!141313)) b!310838))

(assert (= (or b!310837 b!310828 b!310833) bm!18100))

(declare-fun m!416913 () Bool)

(assert (=> b!310840 m!416913))

(assert (=> b!310840 m!416913))

(declare-fun m!416915 () Bool)

(assert (=> b!310840 m!416915))

(declare-fun m!416917 () Bool)

(assert (=> b!310838 m!416917))

(assert (=> b!310830 m!416917))

(assert (=> b!310830 m!416917))

(declare-fun m!416919 () Bool)

(assert (=> b!310830 m!416919))

(assert (=> b!310830 m!416913))

(assert (=> b!310830 m!416919))

(assert (=> b!310830 m!416913))

(declare-fun m!416921 () Bool)

(assert (=> b!310830 m!416921))

(assert (=> b!310834 m!416913))

(assert (=> b!310834 m!416913))

(assert (=> b!310834 m!416915))

(declare-fun m!416923 () Bool)

(assert (=> d!95459 m!416923))

(declare-fun m!416925 () Bool)

(assert (=> d!95459 m!416925))

(assert (=> bm!18100 m!416923))

(assert (=> b!310835 m!416917))

(declare-fun m!416927 () Bool)

(assert (=> b!310829 m!416927))

(assert (=> b!310622 d!95459))

(declare-fun d!95461 () Bool)

(declare-fun lt!133091 () BalanceConc!2784)

(declare-fun printListTailRec!163 (LexerInterface!669 List!4083 List!4081) List!4081)

(declare-fun dropList!198 (BalanceConc!2786 Int) List!4083)

(assert (=> d!95461 (= (list!1723 lt!133091) (printListTailRec!163 thiss!17480 (dropList!198 lt!132950 0) (list!1723 (BalanceConc!2785 Empty!1388))))))

(declare-fun e!193340 () BalanceConc!2784)

(assert (=> d!95461 (= lt!133091 e!193340)))

(declare-fun c!58970 () Bool)

(assert (=> d!95461 (= c!58970 (>= 0 (size!3261 lt!132950)))))

(declare-fun e!193339 () Bool)

(assert (=> d!95461 e!193339))

(declare-fun res!141332 () Bool)

(assert (=> d!95461 (=> (not res!141332) (not e!193339))))

(assert (=> d!95461 (= res!141332 (>= 0 0))))

(assert (=> d!95461 (= (printTailRec!355 thiss!17480 lt!132950 0 (BalanceConc!2785 Empty!1388)) lt!133091)))

(declare-fun b!310892 () Bool)

(assert (=> b!310892 (= e!193339 (<= 0 (size!3261 lt!132950)))))

(declare-fun b!310893 () Bool)

(assert (=> b!310893 (= e!193340 (BalanceConc!2785 Empty!1388))))

(declare-fun b!310894 () Bool)

(declare-fun ++!1112 (BalanceConc!2784 BalanceConc!2784) BalanceConc!2784)

(assert (=> b!310894 (= e!193340 (printTailRec!355 thiss!17480 lt!132950 (+ 0 1) (++!1112 (BalanceConc!2785 Empty!1388) (charsOf!426 (apply!900 lt!132950 0)))))))

(declare-fun lt!133090 () List!4083)

(assert (=> b!310894 (= lt!133090 (list!1727 lt!132950))))

(declare-fun lt!133088 () Unit!5756)

(declare-fun lemmaDropApply!238 (List!4083 Int) Unit!5756)

(assert (=> b!310894 (= lt!133088 (lemmaDropApply!238 lt!133090 0))))

(declare-fun drop!253 (List!4083 Int) List!4083)

(declare-fun apply!901 (List!4083 Int) Token!1310)

(assert (=> b!310894 (= (head!970 (drop!253 lt!133090 0)) (apply!901 lt!133090 0))))

(declare-fun lt!133089 () Unit!5756)

(assert (=> b!310894 (= lt!133089 lt!133088)))

(declare-fun lt!133087 () List!4083)

(assert (=> b!310894 (= lt!133087 (list!1727 lt!132950))))

(declare-fun lt!133085 () Unit!5756)

(declare-fun lemmaDropTail!230 (List!4083 Int) Unit!5756)

(assert (=> b!310894 (= lt!133085 (lemmaDropTail!230 lt!133087 0))))

(declare-fun tail!545 (List!4083) List!4083)

(assert (=> b!310894 (= (tail!545 (drop!253 lt!133087 0)) (drop!253 lt!133087 (+ 0 1)))))

(declare-fun lt!133086 () Unit!5756)

(assert (=> b!310894 (= lt!133086 lt!133085)))

(assert (= (and d!95461 res!141332) b!310892))

(assert (= (and d!95461 c!58970) b!310893))

(assert (= (and d!95461 (not c!58970)) b!310894))

(declare-fun m!417027 () Bool)

(assert (=> d!95461 m!417027))

(declare-fun m!417029 () Bool)

(assert (=> d!95461 m!417029))

(declare-fun m!417031 () Bool)

(assert (=> d!95461 m!417031))

(declare-fun m!417035 () Bool)

(assert (=> d!95461 m!417035))

(assert (=> d!95461 m!417035))

(assert (=> d!95461 m!417029))

(declare-fun m!417043 () Bool)

(assert (=> d!95461 m!417043))

(assert (=> b!310892 m!417031))

(declare-fun m!417047 () Bool)

(assert (=> b!310894 m!417047))

(declare-fun m!417049 () Bool)

(assert (=> b!310894 m!417049))

(declare-fun m!417051 () Bool)

(assert (=> b!310894 m!417051))

(declare-fun m!417053 () Bool)

(assert (=> b!310894 m!417053))

(assert (=> b!310894 m!417049))

(declare-fun m!417055 () Bool)

(assert (=> b!310894 m!417055))

(declare-fun m!417057 () Bool)

(assert (=> b!310894 m!417057))

(declare-fun m!417059 () Bool)

(assert (=> b!310894 m!417059))

(declare-fun m!417061 () Bool)

(assert (=> b!310894 m!417061))

(declare-fun m!417063 () Bool)

(assert (=> b!310894 m!417063))

(declare-fun m!417065 () Bool)

(assert (=> b!310894 m!417065))

(assert (=> b!310894 m!417053))

(assert (=> b!310894 m!417055))

(declare-fun m!417069 () Bool)

(assert (=> b!310894 m!417069))

(assert (=> b!310894 m!417059))

(declare-fun m!417073 () Bool)

(assert (=> b!310894 m!417073))

(assert (=> b!310894 m!417065))

(declare-fun m!417077 () Bool)

(assert (=> b!310894 m!417077))

(assert (=> b!310643 d!95461))

(declare-fun d!95479 () Bool)

(assert (=> d!95479 (= (list!1723 lt!132945) (list!1726 (c!58916 lt!132945)))))

(declare-fun bs!36061 () Bool)

(assert (= bs!36061 d!95479))

(declare-fun m!417079 () Bool)

(assert (=> bs!36061 m!417079))

(assert (=> b!310643 d!95479))

(declare-fun d!95481 () Bool)

(declare-fun lt!133099 () BalanceConc!2784)

(assert (=> d!95481 (= (list!1723 lt!133099) (printList!343 thiss!17480 (list!1727 lt!132950)))))

(assert (=> d!95481 (= lt!133099 (printTailRec!355 thiss!17480 lt!132950 0 (BalanceConc!2785 Empty!1388)))))

(assert (=> d!95481 (= (print!394 thiss!17480 lt!132950) lt!133099)))

(declare-fun bs!36064 () Bool)

(assert (= bs!36064 d!95481))

(declare-fun m!417087 () Bool)

(assert (=> bs!36064 m!417087))

(assert (=> bs!36064 m!417073))

(assert (=> bs!36064 m!417073))

(declare-fun m!417089 () Bool)

(assert (=> bs!36064 m!417089))

(assert (=> bs!36064 m!416717))

(assert (=> b!310643 d!95481))

(declare-fun d!95487 () Bool)

(declare-fun e!193348 () Bool)

(assert (=> d!95487 e!193348))

(declare-fun res!141339 () Bool)

(assert (=> d!95487 (=> (not res!141339) (not e!193348))))

(declare-fun lt!133102 () BalanceConc!2786)

(assert (=> d!95487 (= res!141339 (= (list!1727 lt!133102) (Cons!4073 (h!9470 tokens!465) Nil!4073)))))

(declare-fun singleton!148 (Token!1310) BalanceConc!2786)

(assert (=> d!95487 (= lt!133102 (singleton!148 (h!9470 tokens!465)))))

(assert (=> d!95487 (= (singletonSeq!329 (h!9470 tokens!465)) lt!133102)))

(declare-fun b!310905 () Bool)

(declare-fun isBalanced!399 (Conc!1389) Bool)

(assert (=> b!310905 (= e!193348 (isBalanced!399 (c!58918 lt!133102)))))

(assert (= (and d!95487 res!141339) b!310905))

(declare-fun m!417091 () Bool)

(assert (=> d!95487 m!417091))

(declare-fun m!417093 () Bool)

(assert (=> d!95487 m!417093))

(declare-fun m!417095 () Bool)

(assert (=> b!310905 m!417095))

(assert (=> b!310643 d!95487))

(declare-fun d!95489 () Bool)

(declare-fun c!58975 () Bool)

(assert (=> d!95489 (= c!58975 ((_ is Cons!4073) (Cons!4073 (h!9470 tokens!465) Nil!4073)))))

(declare-fun e!193351 () List!4081)

(assert (=> d!95489 (= (printList!343 thiss!17480 (Cons!4073 (h!9470 tokens!465) Nil!4073)) e!193351)))

(declare-fun b!310910 () Bool)

(assert (=> b!310910 (= e!193351 (++!1110 (list!1723 (charsOf!426 (h!9470 (Cons!4073 (h!9470 tokens!465) Nil!4073)))) (printList!343 thiss!17480 (t!43831 (Cons!4073 (h!9470 tokens!465) Nil!4073)))))))

(declare-fun b!310911 () Bool)

(assert (=> b!310911 (= e!193351 Nil!4071)))

(assert (= (and d!95489 c!58975) b!310910))

(assert (= (and d!95489 (not c!58975)) b!310911))

(declare-fun m!417097 () Bool)

(assert (=> b!310910 m!417097))

(assert (=> b!310910 m!417097))

(declare-fun m!417099 () Bool)

(assert (=> b!310910 m!417099))

(declare-fun m!417101 () Bool)

(assert (=> b!310910 m!417101))

(assert (=> b!310910 m!417099))

(assert (=> b!310910 m!417101))

(declare-fun m!417103 () Bool)

(assert (=> b!310910 m!417103))

(assert (=> b!310643 d!95489))

(declare-fun d!95491 () Bool)

(declare-fun res!141340 () Bool)

(declare-fun e!193352 () Bool)

(assert (=> d!95491 (=> (not res!141340) (not e!193352))))

(assert (=> d!95491 (= res!141340 (not (isEmpty!2794 (originalCharacters!826 (h!9470 tokens!465)))))))

(assert (=> d!95491 (= (inv!5032 (h!9470 tokens!465)) e!193352)))

(declare-fun b!310912 () Bool)

(declare-fun res!141341 () Bool)

(assert (=> b!310912 (=> (not res!141341) (not e!193352))))

(assert (=> b!310912 (= res!141341 (= (originalCharacters!826 (h!9470 tokens!465)) (list!1723 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (value!26631 (h!9470 tokens!465))))))))

(declare-fun b!310913 () Bool)

(assert (=> b!310913 (= e!193352 (= (size!3257 (h!9470 tokens!465)) (size!3260 (originalCharacters!826 (h!9470 tokens!465)))))))

(assert (= (and d!95491 res!141340) b!310912))

(assert (= (and b!310912 res!141341) b!310913))

(declare-fun b_lambda!10859 () Bool)

(assert (=> (not b_lambda!10859) (not b!310912)))

(declare-fun tb!19839 () Bool)

(declare-fun t!43860 () Bool)

(assert (=> (and b!310625 (= (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465))))) t!43860) tb!19839))

(declare-fun b!310914 () Bool)

(declare-fun e!193353 () Bool)

(declare-fun tp!109417 () Bool)

(assert (=> b!310914 (= e!193353 (and (inv!5036 (c!58916 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (value!26631 (h!9470 tokens!465))))) tp!109417))))

(declare-fun result!23854 () Bool)

(assert (=> tb!19839 (= result!23854 (and (inv!5037 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (value!26631 (h!9470 tokens!465)))) e!193353))))

(assert (= tb!19839 b!310914))

(declare-fun m!417105 () Bool)

(assert (=> b!310914 m!417105))

(declare-fun m!417107 () Bool)

(assert (=> tb!19839 m!417107))

(assert (=> b!310912 t!43860))

(declare-fun b_and!26419 () Bool)

(assert (= b_and!26401 (and (=> t!43860 result!23854) b_and!26419)))

(declare-fun t!43862 () Bool)

(declare-fun tb!19841 () Bool)

(assert (=> (and b!310649 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465))))) t!43862) tb!19841))

(declare-fun result!23856 () Bool)

(assert (= result!23856 result!23854))

(assert (=> b!310912 t!43862))

(declare-fun b_and!26421 () Bool)

(assert (= b_and!26403 (and (=> t!43862 result!23856) b_and!26421)))

(declare-fun t!43864 () Bool)

(declare-fun tb!19843 () Bool)

(assert (=> (and b!310650 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465))))) t!43864) tb!19843))

(declare-fun result!23858 () Bool)

(assert (= result!23858 result!23854))

(assert (=> b!310912 t!43864))

(declare-fun b_and!26423 () Bool)

(assert (= b_and!26405 (and (=> t!43864 result!23858) b_and!26423)))

(declare-fun m!417109 () Bool)

(assert (=> d!95491 m!417109))

(declare-fun m!417111 () Bool)

(assert (=> b!310912 m!417111))

(assert (=> b!310912 m!417111))

(declare-fun m!417113 () Bool)

(assert (=> b!310912 m!417113))

(declare-fun m!417115 () Bool)

(assert (=> b!310913 m!417115))

(assert (=> b!310620 d!95491))

(declare-fun bs!36071 () Bool)

(declare-fun d!95493 () Bool)

(assert (= bs!36071 (and d!95493 b!310653)))

(declare-fun lambda!10617 () Int)

(assert (=> bs!36071 (not (= lambda!10617 lambda!10599))))

(declare-fun bs!36072 () Bool)

(assert (= bs!36072 (and d!95493 b!310639)))

(assert (=> bs!36072 (= lambda!10617 lambda!10600)))

(declare-fun b!310930 () Bool)

(declare-fun e!193369 () Bool)

(assert (=> b!310930 (= e!193369 true)))

(declare-fun b!310929 () Bool)

(declare-fun e!193368 () Bool)

(assert (=> b!310929 (= e!193368 e!193369)))

(declare-fun b!310928 () Bool)

(declare-fun e!193367 () Bool)

(assert (=> b!310928 (= e!193367 e!193368)))

(assert (=> d!95493 e!193367))

(assert (= b!310929 b!310930))

(assert (= b!310928 b!310929))

(assert (= (and d!95493 ((_ is Cons!4072) rules!1920)) b!310928))

(assert (=> b!310930 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10617))))

(assert (=> b!310930 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10617))))

(assert (=> d!95493 true))

(declare-fun e!193366 () Bool)

(assert (=> d!95493 e!193366))

(declare-fun res!141351 () Bool)

(assert (=> d!95493 (=> (not res!141351) (not e!193366))))

(declare-fun lt!133108 () Bool)

(assert (=> d!95493 (= res!141351 (= lt!133108 (forall!1080 (list!1727 lt!132944) lambda!10617)))))

(declare-fun forall!1082 (BalanceConc!2786 Int) Bool)

(assert (=> d!95493 (= lt!133108 (forall!1082 lt!132944 lambda!10617))))

(assert (=> d!95493 (not (isEmpty!2795 rules!1920))))

(assert (=> d!95493 (= (rulesProduceEachTokenIndividually!461 thiss!17480 rules!1920 lt!132944) lt!133108)))

(declare-fun b!310927 () Bool)

(assert (=> b!310927 (= e!193366 (= lt!133108 (rulesProduceEachTokenIndividuallyList!269 thiss!17480 rules!1920 (list!1727 lt!132944))))))

(assert (= (and d!95493 res!141351) b!310927))

(declare-fun m!417127 () Bool)

(assert (=> d!95493 m!417127))

(assert (=> d!95493 m!417127))

(declare-fun m!417129 () Bool)

(assert (=> d!95493 m!417129))

(declare-fun m!417131 () Bool)

(assert (=> d!95493 m!417131))

(assert (=> d!95493 m!416671))

(assert (=> b!310927 m!417127))

(assert (=> b!310927 m!417127))

(declare-fun m!417133 () Bool)

(assert (=> b!310927 m!417133))

(assert (=> b!310641 d!95493))

(declare-fun d!95503 () Bool)

(declare-fun fromListB!391 (List!4083) BalanceConc!2786)

(assert (=> d!95503 (= (seqFromList!932 tokens!465) (fromListB!391 tokens!465))))

(declare-fun bs!36073 () Bool)

(assert (= bs!36073 d!95503))

(declare-fun m!417135 () Bool)

(assert (=> bs!36073 m!417135))

(assert (=> b!310641 d!95503))

(declare-fun d!95505 () Bool)

(declare-fun lt!133109 () Bool)

(declare-fun e!193371 () Bool)

(assert (=> d!95505 (= lt!133109 e!193371)))

(declare-fun res!141353 () Bool)

(assert (=> d!95505 (=> (not res!141353) (not e!193371))))

(assert (=> d!95505 (= res!141353 (= (list!1727 (_1!2575 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 (h!9470 tokens!465)))))) (list!1727 (singletonSeq!329 (h!9470 tokens!465)))))))

(declare-fun e!193370 () Bool)

(assert (=> d!95505 (= lt!133109 e!193370)))

(declare-fun res!141354 () Bool)

(assert (=> d!95505 (=> (not res!141354) (not e!193370))))

(declare-fun lt!133110 () tuple2!4718)

(assert (=> d!95505 (= res!141354 (= (size!3261 (_1!2575 lt!133110)) 1))))

(assert (=> d!95505 (= lt!133110 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 (h!9470 tokens!465)))))))

(assert (=> d!95505 (not (isEmpty!2795 rules!1920))))

(assert (=> d!95505 (= (rulesProduceIndividualToken!418 thiss!17480 rules!1920 (h!9470 tokens!465)) lt!133109)))

(declare-fun b!310931 () Bool)

(declare-fun res!141352 () Bool)

(assert (=> b!310931 (=> (not res!141352) (not e!193370))))

(assert (=> b!310931 (= res!141352 (= (apply!900 (_1!2575 lt!133110) 0) (h!9470 tokens!465)))))

(declare-fun b!310932 () Bool)

(assert (=> b!310932 (= e!193370 (isEmpty!2801 (_2!2575 lt!133110)))))

(declare-fun b!310933 () Bool)

(assert (=> b!310933 (= e!193371 (isEmpty!2801 (_2!2575 (lex!461 thiss!17480 rules!1920 (print!394 thiss!17480 (singletonSeq!329 (h!9470 tokens!465)))))))))

(assert (= (and d!95505 res!141354) b!310931))

(assert (= (and b!310931 res!141352) b!310932))

(assert (= (and d!95505 res!141353) b!310933))

(declare-fun m!417137 () Bool)

(assert (=> d!95505 m!417137))

(declare-fun m!417139 () Bool)

(assert (=> d!95505 m!417139))

(assert (=> d!95505 m!416721))

(assert (=> d!95505 m!416721))

(declare-fun m!417141 () Bool)

(assert (=> d!95505 m!417141))

(assert (=> d!95505 m!417141))

(declare-fun m!417143 () Bool)

(assert (=> d!95505 m!417143))

(assert (=> d!95505 m!416671))

(assert (=> d!95505 m!416721))

(declare-fun m!417145 () Bool)

(assert (=> d!95505 m!417145))

(declare-fun m!417147 () Bool)

(assert (=> b!310931 m!417147))

(declare-fun m!417149 () Bool)

(assert (=> b!310932 m!417149))

(assert (=> b!310933 m!416721))

(assert (=> b!310933 m!416721))

(assert (=> b!310933 m!417141))

(assert (=> b!310933 m!417141))

(assert (=> b!310933 m!417143))

(declare-fun m!417151 () Bool)

(assert (=> b!310933 m!417151))

(assert (=> b!310642 d!95505))

(declare-fun b!310943 () Bool)

(declare-fun e!193377 () List!4081)

(assert (=> b!310943 (= e!193377 (Cons!4071 (h!9468 lt!132942) (++!1110 (t!43829 lt!132942) lt!132940)))))

(declare-fun b!310944 () Bool)

(declare-fun res!141360 () Bool)

(declare-fun e!193376 () Bool)

(assert (=> b!310944 (=> (not res!141360) (not e!193376))))

(declare-fun lt!133113 () List!4081)

(assert (=> b!310944 (= res!141360 (= (size!3260 lt!133113) (+ (size!3260 lt!132942) (size!3260 lt!132940))))))

(declare-fun b!310942 () Bool)

(assert (=> b!310942 (= e!193377 lt!132940)))

(declare-fun d!95507 () Bool)

(assert (=> d!95507 e!193376))

(declare-fun res!141359 () Bool)

(assert (=> d!95507 (=> (not res!141359) (not e!193376))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!613 (List!4081) (InoxSet C!2936))

(assert (=> d!95507 (= res!141359 (= (content!613 lt!133113) ((_ map or) (content!613 lt!132942) (content!613 lt!132940))))))

(assert (=> d!95507 (= lt!133113 e!193377)))

(declare-fun c!58978 () Bool)

(assert (=> d!95507 (= c!58978 ((_ is Nil!4071) lt!132942))))

(assert (=> d!95507 (= (++!1110 lt!132942 lt!132940) lt!133113)))

(declare-fun b!310945 () Bool)

(assert (=> b!310945 (= e!193376 (or (not (= lt!132940 Nil!4071)) (= lt!133113 lt!132942)))))

(assert (= (and d!95507 c!58978) b!310942))

(assert (= (and d!95507 (not c!58978)) b!310943))

(assert (= (and d!95507 res!141359) b!310944))

(assert (= (and b!310944 res!141360) b!310945))

(declare-fun m!417153 () Bool)

(assert (=> b!310943 m!417153))

(declare-fun m!417155 () Bool)

(assert (=> b!310944 m!417155))

(declare-fun m!417157 () Bool)

(assert (=> b!310944 m!417157))

(declare-fun m!417159 () Bool)

(assert (=> b!310944 m!417159))

(declare-fun m!417161 () Bool)

(assert (=> d!95507 m!417161))

(declare-fun m!417163 () Bool)

(assert (=> d!95507 m!417163))

(declare-fun m!417165 () Bool)

(assert (=> d!95507 m!417165))

(assert (=> b!310629 d!95507))

(declare-fun d!95509 () Bool)

(assert (=> d!95509 (= (seqFromList!932 (t!43831 tokens!465)) (fromListB!391 (t!43831 tokens!465)))))

(declare-fun bs!36074 () Bool)

(assert (= bs!36074 d!95509))

(declare-fun m!417167 () Bool)

(assert (=> bs!36074 m!417167))

(assert (=> b!310651 d!95509))

(declare-fun b!310947 () Bool)

(declare-fun e!193379 () List!4081)

(assert (=> b!310947 (= e!193379 (Cons!4071 (h!9468 lt!132942) (++!1110 (t!43829 lt!132942) lt!132957)))))

(declare-fun b!310948 () Bool)

(declare-fun res!141362 () Bool)

(declare-fun e!193378 () Bool)

(assert (=> b!310948 (=> (not res!141362) (not e!193378))))

(declare-fun lt!133114 () List!4081)

(assert (=> b!310948 (= res!141362 (= (size!3260 lt!133114) (+ (size!3260 lt!132942) (size!3260 lt!132957))))))

(declare-fun b!310946 () Bool)

(assert (=> b!310946 (= e!193379 lt!132957)))

(declare-fun d!95511 () Bool)

(assert (=> d!95511 e!193378))

(declare-fun res!141361 () Bool)

(assert (=> d!95511 (=> (not res!141361) (not e!193378))))

(assert (=> d!95511 (= res!141361 (= (content!613 lt!133114) ((_ map or) (content!613 lt!132942) (content!613 lt!132957))))))

(assert (=> d!95511 (= lt!133114 e!193379)))

(declare-fun c!58979 () Bool)

(assert (=> d!95511 (= c!58979 ((_ is Nil!4071) lt!132942))))

(assert (=> d!95511 (= (++!1110 lt!132942 lt!132957) lt!133114)))

(declare-fun b!310949 () Bool)

(assert (=> b!310949 (= e!193378 (or (not (= lt!132957 Nil!4071)) (= lt!133114 lt!132942)))))

(assert (= (and d!95511 c!58979) b!310946))

(assert (= (and d!95511 (not c!58979)) b!310947))

(assert (= (and d!95511 res!141361) b!310948))

(assert (= (and b!310948 res!141362) b!310949))

(declare-fun m!417169 () Bool)

(assert (=> b!310947 m!417169))

(declare-fun m!417171 () Bool)

(assert (=> b!310948 m!417171))

(assert (=> b!310948 m!417157))

(declare-fun m!417173 () Bool)

(assert (=> b!310948 m!417173))

(declare-fun m!417175 () Bool)

(assert (=> d!95511 m!417175))

(assert (=> d!95511 m!417163))

(declare-fun m!417177 () Bool)

(assert (=> d!95511 m!417177))

(assert (=> b!310651 d!95511))

(declare-fun d!95513 () Bool)

(assert (=> d!95513 (= (list!1723 (charsOf!426 separatorToken!170)) (list!1726 (c!58916 (charsOf!426 separatorToken!170))))))

(declare-fun bs!36075 () Bool)

(assert (= bs!36075 d!95513))

(declare-fun m!417179 () Bool)

(assert (=> bs!36075 m!417179))

(assert (=> b!310651 d!95513))

(declare-fun e!193381 () List!4081)

(declare-fun b!310951 () Bool)

(assert (=> b!310951 (= e!193381 (Cons!4071 (h!9468 (++!1110 lt!132942 lt!132962)) (++!1110 (t!43829 (++!1110 lt!132942 lt!132962)) lt!132940)))))

(declare-fun b!310952 () Bool)

(declare-fun res!141364 () Bool)

(declare-fun e!193380 () Bool)

(assert (=> b!310952 (=> (not res!141364) (not e!193380))))

(declare-fun lt!133115 () List!4081)

(assert (=> b!310952 (= res!141364 (= (size!3260 lt!133115) (+ (size!3260 (++!1110 lt!132942 lt!132962)) (size!3260 lt!132940))))))

(declare-fun b!310950 () Bool)

(assert (=> b!310950 (= e!193381 lt!132940)))

(declare-fun d!95515 () Bool)

(assert (=> d!95515 e!193380))

(declare-fun res!141363 () Bool)

(assert (=> d!95515 (=> (not res!141363) (not e!193380))))

(assert (=> d!95515 (= res!141363 (= (content!613 lt!133115) ((_ map or) (content!613 (++!1110 lt!132942 lt!132962)) (content!613 lt!132940))))))

(assert (=> d!95515 (= lt!133115 e!193381)))

(declare-fun c!58980 () Bool)

(assert (=> d!95515 (= c!58980 ((_ is Nil!4071) (++!1110 lt!132942 lt!132962)))))

(assert (=> d!95515 (= (++!1110 (++!1110 lt!132942 lt!132962) lt!132940) lt!133115)))

(declare-fun b!310953 () Bool)

(assert (=> b!310953 (= e!193380 (or (not (= lt!132940 Nil!4071)) (= lt!133115 (++!1110 lt!132942 lt!132962))))))

(assert (= (and d!95515 c!58980) b!310950))

(assert (= (and d!95515 (not c!58980)) b!310951))

(assert (= (and d!95515 res!141363) b!310952))

(assert (= (and b!310952 res!141364) b!310953))

(declare-fun m!417181 () Bool)

(assert (=> b!310951 m!417181))

(declare-fun m!417183 () Bool)

(assert (=> b!310952 m!417183))

(assert (=> b!310952 m!416685))

(declare-fun m!417185 () Bool)

(assert (=> b!310952 m!417185))

(assert (=> b!310952 m!417159))

(declare-fun m!417187 () Bool)

(assert (=> d!95515 m!417187))

(assert (=> d!95515 m!416685))

(declare-fun m!417189 () Bool)

(assert (=> d!95515 m!417189))

(assert (=> d!95515 m!417165))

(assert (=> b!310651 d!95515))

(declare-fun d!95517 () Bool)

(assert (=> d!95517 (= (list!1723 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 (seqFromList!932 (t!43831 tokens!465)) separatorToken!170 0)) (list!1726 (c!58916 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 (seqFromList!932 (t!43831 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!36076 () Bool)

(assert (= bs!36076 d!95517))

(declare-fun m!417191 () Bool)

(assert (=> bs!36076 m!417191))

(assert (=> b!310651 d!95517))

(declare-fun b!310955 () Bool)

(declare-fun e!193383 () List!4081)

(assert (=> b!310955 (= e!193383 (Cons!4071 (h!9468 lt!132962) (++!1110 (t!43829 lt!132962) lt!132940)))))

(declare-fun b!310956 () Bool)

(declare-fun res!141366 () Bool)

(declare-fun e!193382 () Bool)

(assert (=> b!310956 (=> (not res!141366) (not e!193382))))

(declare-fun lt!133116 () List!4081)

(assert (=> b!310956 (= res!141366 (= (size!3260 lt!133116) (+ (size!3260 lt!132962) (size!3260 lt!132940))))))

(declare-fun b!310954 () Bool)

(assert (=> b!310954 (= e!193383 lt!132940)))

(declare-fun d!95519 () Bool)

(assert (=> d!95519 e!193382))

(declare-fun res!141365 () Bool)

(assert (=> d!95519 (=> (not res!141365) (not e!193382))))

(assert (=> d!95519 (= res!141365 (= (content!613 lt!133116) ((_ map or) (content!613 lt!132962) (content!613 lt!132940))))))

(assert (=> d!95519 (= lt!133116 e!193383)))

(declare-fun c!58981 () Bool)

(assert (=> d!95519 (= c!58981 ((_ is Nil!4071) lt!132962))))

(assert (=> d!95519 (= (++!1110 lt!132962 lt!132940) lt!133116)))

(declare-fun b!310957 () Bool)

(assert (=> b!310957 (= e!193382 (or (not (= lt!132940 Nil!4071)) (= lt!133116 lt!132962)))))

(assert (= (and d!95519 c!58981) b!310954))

(assert (= (and d!95519 (not c!58981)) b!310955))

(assert (= (and d!95519 res!141365) b!310956))

(assert (= (and b!310956 res!141366) b!310957))

(declare-fun m!417193 () Bool)

(assert (=> b!310955 m!417193))

(declare-fun m!417195 () Bool)

(assert (=> b!310956 m!417195))

(declare-fun m!417197 () Bool)

(assert (=> b!310956 m!417197))

(assert (=> b!310956 m!417159))

(declare-fun m!417199 () Bool)

(assert (=> d!95519 m!417199))

(declare-fun m!417201 () Bool)

(assert (=> d!95519 m!417201))

(assert (=> d!95519 m!417165))

(assert (=> b!310651 d!95519))

(declare-fun bs!36078 () Bool)

(declare-fun b!311006 () Bool)

(assert (= bs!36078 (and b!311006 b!310653)))

(declare-fun lambda!10620 () Int)

(assert (=> bs!36078 (not (= lambda!10620 lambda!10599))))

(declare-fun bs!36079 () Bool)

(assert (= bs!36079 (and b!311006 b!310639)))

(assert (=> bs!36079 (= lambda!10620 lambda!10600)))

(declare-fun bs!36080 () Bool)

(assert (= bs!36080 (and b!311006 d!95493)))

(assert (=> bs!36080 (= lambda!10620 lambda!10617)))

(declare-fun b!311011 () Bool)

(declare-fun e!193419 () Bool)

(assert (=> b!311011 (= e!193419 true)))

(declare-fun b!311010 () Bool)

(declare-fun e!193418 () Bool)

(assert (=> b!311010 (= e!193418 e!193419)))

(declare-fun b!311009 () Bool)

(declare-fun e!193417 () Bool)

(assert (=> b!311009 (= e!193417 e!193418)))

(assert (=> b!311006 e!193417))

(assert (= b!311010 b!311011))

(assert (= b!311009 b!311010))

(assert (= (and b!311006 ((_ is Cons!4072) rules!1920)) b!311009))

(assert (=> b!311011 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10620))))

(assert (=> b!311011 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10620))))

(assert (=> b!311006 true))

(declare-fun b!311002 () Bool)

(declare-fun e!193413 () BalanceConc!2784)

(assert (=> b!311002 (= e!193413 (charsOf!426 separatorToken!170))))

(declare-fun b!311003 () Bool)

(declare-fun c!58993 () Bool)

(declare-fun lt!133158 () Option!934)

(assert (=> b!311003 (= c!58993 (and ((_ is Some!933) lt!133158) (not (= (_1!2573 (v!14948 lt!133158)) (h!9470 (t!43831 tokens!465))))))))

(declare-fun e!193414 () List!4081)

(declare-fun e!193415 () List!4081)

(assert (=> b!311003 (= e!193414 e!193415)))

(declare-fun b!311004 () Bool)

(declare-fun call!18135 () BalanceConc!2784)

(assert (=> b!311004 (= e!193413 call!18135)))

(declare-fun bm!18129 () Bool)

(declare-fun call!18138 () BalanceConc!2784)

(assert (=> bm!18129 (= call!18138 (charsOf!426 (h!9470 (t!43831 tokens!465))))))

(declare-fun b!311005 () Bool)

(assert (=> b!311005 (= e!193415 Nil!4071)))

(assert (=> b!311005 (= (print!394 thiss!17480 (singletonSeq!329 (h!9470 (t!43831 tokens!465)))) (printTailRec!355 thiss!17480 (singletonSeq!329 (h!9470 (t!43831 tokens!465))) 0 (BalanceConc!2785 Empty!1388)))))

(declare-fun lt!133156 () Unit!5756)

(declare-fun Unit!5764 () Unit!5756)

(assert (=> b!311005 (= lt!133156 Unit!5764)))

(declare-fun call!18134 () List!4081)

(declare-fun lt!133155 () List!4081)

(declare-fun lt!133153 () Unit!5756)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!146 (LexerInterface!669 List!4082 List!4081 List!4081) Unit!5756)

(assert (=> b!311005 (= lt!133153 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!146 thiss!17480 rules!1920 call!18134 lt!133155))))

(assert (=> b!311005 false))

(declare-fun lt!133154 () Unit!5756)

(declare-fun Unit!5765 () Unit!5756)

(assert (=> b!311005 (= lt!133154 Unit!5765)))

(declare-fun call!18136 () List!4081)

(declare-fun bm!18130 () Bool)

(declare-fun c!58996 () Bool)

(assert (=> bm!18130 (= call!18136 (list!1723 (ite c!58996 call!18138 call!18135)))))

(declare-fun bm!18131 () Bool)

(assert (=> bm!18131 (= call!18134 (list!1723 e!193413))))

(declare-fun c!58995 () Bool)

(assert (=> bm!18131 (= c!58995 c!58993)))

(declare-fun e!193416 () List!4081)

(assert (=> b!311006 (= e!193416 e!193414)))

(declare-fun lt!133157 () Unit!5756)

(assert (=> b!311006 (= lt!133157 (forallContained!336 (t!43831 tokens!465) lambda!10620 (h!9470 (t!43831 tokens!465))))))

(assert (=> b!311006 (= lt!133155 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (t!43831 (t!43831 tokens!465)) separatorToken!170))))

(assert (=> b!311006 (= lt!133158 (maxPrefix!385 thiss!17480 rules!1920 (++!1110 (list!1723 (charsOf!426 (h!9470 (t!43831 tokens!465)))) lt!133155)))))

(assert (=> b!311006 (= c!58996 (and ((_ is Some!933) lt!133158) (= (_1!2573 (v!14948 lt!133158)) (h!9470 (t!43831 tokens!465)))))))

(declare-fun bm!18132 () Bool)

(assert (=> bm!18132 (= call!18135 call!18138)))

(declare-fun b!311007 () Bool)

(declare-fun call!18137 () List!4081)

(assert (=> b!311007 (= e!193415 (++!1110 call!18137 lt!133155))))

(declare-fun b!311001 () Bool)

(assert (=> b!311001 (= e!193414 call!18137)))

(declare-fun d!95521 () Bool)

(declare-fun c!58994 () Bool)

(assert (=> d!95521 (= c!58994 ((_ is Cons!4073) (t!43831 tokens!465)))))

(assert (=> d!95521 (= (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (t!43831 tokens!465) separatorToken!170) e!193416)))

(declare-fun b!311008 () Bool)

(assert (=> b!311008 (= e!193416 Nil!4071)))

(declare-fun bm!18133 () Bool)

(assert (=> bm!18133 (= call!18137 (++!1110 call!18136 (ite c!58996 lt!133155 call!18134)))))

(assert (= (and d!95521 c!58994) b!311006))

(assert (= (and d!95521 (not c!58994)) b!311008))

(assert (= (and b!311006 c!58996) b!311001))

(assert (= (and b!311006 (not c!58996)) b!311003))

(assert (= (and b!311003 c!58993) b!311007))

(assert (= (and b!311003 (not c!58993)) b!311005))

(assert (= (or b!311007 b!311005) bm!18132))

(assert (= (or b!311007 b!311005) bm!18131))

(assert (= (and bm!18131 c!58995) b!311002))

(assert (= (and bm!18131 (not c!58995)) b!311004))

(assert (= (or b!311001 bm!18132) bm!18129))

(assert (= (or b!311001 b!311007) bm!18130))

(assert (= (or b!311001 b!311007) bm!18133))

(declare-fun m!417241 () Bool)

(assert (=> bm!18129 m!417241))

(declare-fun m!417243 () Bool)

(assert (=> b!311006 m!417243))

(declare-fun m!417245 () Bool)

(assert (=> b!311006 m!417245))

(declare-fun m!417247 () Bool)

(assert (=> b!311006 m!417247))

(assert (=> b!311006 m!417245))

(declare-fun m!417249 () Bool)

(assert (=> b!311006 m!417249))

(assert (=> b!311006 m!417241))

(declare-fun m!417251 () Bool)

(assert (=> b!311006 m!417251))

(assert (=> b!311006 m!417241))

(assert (=> b!311006 m!417243))

(declare-fun m!417253 () Bool)

(assert (=> b!311005 m!417253))

(assert (=> b!311005 m!417253))

(declare-fun m!417255 () Bool)

(assert (=> b!311005 m!417255))

(assert (=> b!311005 m!417253))

(declare-fun m!417257 () Bool)

(assert (=> b!311005 m!417257))

(declare-fun m!417259 () Bool)

(assert (=> b!311005 m!417259))

(declare-fun m!417261 () Bool)

(assert (=> b!311007 m!417261))

(declare-fun m!417263 () Bool)

(assert (=> bm!18130 m!417263))

(assert (=> b!311002 m!416681))

(declare-fun m!417265 () Bool)

(assert (=> bm!18133 m!417265))

(declare-fun m!417267 () Bool)

(assert (=> bm!18131 m!417267))

(assert (=> b!310651 d!95521))

(declare-fun d!95531 () Bool)

(assert (=> d!95531 (= (++!1110 (++!1110 lt!132942 lt!132962) lt!132940) (++!1110 lt!132942 (++!1110 lt!132962 lt!132940)))))

(declare-fun lt!133163 () Unit!5756)

(declare-fun choose!2713 (List!4081 List!4081 List!4081) Unit!5756)

(assert (=> d!95531 (= lt!133163 (choose!2713 lt!132942 lt!132962 lt!132940))))

(assert (=> d!95531 (= (lemmaConcatAssociativity!492 lt!132942 lt!132962 lt!132940) lt!133163)))

(declare-fun bs!36081 () Bool)

(assert (= bs!36081 d!95531))

(declare-fun m!417269 () Bool)

(assert (=> bs!36081 m!417269))

(assert (=> bs!36081 m!416679))

(assert (=> bs!36081 m!416679))

(declare-fun m!417271 () Bool)

(assert (=> bs!36081 m!417271))

(assert (=> bs!36081 m!416685))

(assert (=> bs!36081 m!416689))

(assert (=> bs!36081 m!416685))

(assert (=> b!310651 d!95531))

(declare-fun bs!36095 () Bool)

(declare-fun d!95533 () Bool)

(assert (= bs!36095 (and d!95533 b!310653)))

(declare-fun lambda!10630 () Int)

(assert (=> bs!36095 (= lambda!10630 lambda!10599)))

(declare-fun bs!36096 () Bool)

(assert (= bs!36096 (and d!95533 b!310639)))

(assert (=> bs!36096 (not (= lambda!10630 lambda!10600))))

(declare-fun bs!36097 () Bool)

(assert (= bs!36097 (and d!95533 d!95493)))

(assert (=> bs!36097 (not (= lambda!10630 lambda!10617))))

(declare-fun bs!36098 () Bool)

(assert (= bs!36098 (and d!95533 b!311006)))

(assert (=> bs!36098 (not (= lambda!10630 lambda!10620))))

(declare-fun bs!36099 () Bool)

(declare-fun b!311152 () Bool)

(assert (= bs!36099 (and b!311152 d!95493)))

(declare-fun lambda!10631 () Int)

(assert (=> bs!36099 (= lambda!10631 lambda!10617)))

(declare-fun bs!36100 () Bool)

(assert (= bs!36100 (and b!311152 d!95533)))

(assert (=> bs!36100 (not (= lambda!10631 lambda!10630))))

(declare-fun bs!36101 () Bool)

(assert (= bs!36101 (and b!311152 b!311006)))

(assert (=> bs!36101 (= lambda!10631 lambda!10620)))

(declare-fun bs!36102 () Bool)

(assert (= bs!36102 (and b!311152 b!310653)))

(assert (=> bs!36102 (not (= lambda!10631 lambda!10599))))

(declare-fun bs!36103 () Bool)

(assert (= bs!36103 (and b!311152 b!310639)))

(assert (=> bs!36103 (= lambda!10631 lambda!10600)))

(declare-fun b!311155 () Bool)

(declare-fun e!193503 () Bool)

(assert (=> b!311155 (= e!193503 true)))

(declare-fun b!311154 () Bool)

(declare-fun e!193502 () Bool)

(assert (=> b!311154 (= e!193502 e!193503)))

(declare-fun b!311153 () Bool)

(declare-fun e!193501 () Bool)

(assert (=> b!311153 (= e!193501 e!193502)))

(assert (=> b!311152 e!193501))

(assert (= b!311154 b!311155))

(assert (= b!311153 b!311154))

(assert (= (and b!311152 ((_ is Cons!4072) rules!1920)) b!311153))

(assert (=> b!311155 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10631))))

(assert (=> b!311155 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10631))))

(assert (=> b!311152 true))

(declare-fun b!311142 () Bool)

(declare-fun e!193499 () BalanceConc!2784)

(declare-fun call!18159 () BalanceConc!2784)

(assert (=> b!311142 (= e!193499 call!18159)))

(declare-fun bm!18150 () Bool)

(declare-fun call!18155 () Token!1310)

(assert (=> bm!18150 (= call!18155 (apply!900 (seqFromList!932 (t!43831 tokens!465)) 0))))

(declare-fun b!311143 () Bool)

(declare-fun call!18156 () Token!1310)

(assert (=> b!311143 (= e!193499 (charsOf!426 call!18156))))

(declare-fun c!59026 () Bool)

(declare-fun c!59023 () Bool)

(declare-fun bm!18151 () Bool)

(assert (=> bm!18151 (= call!18159 (charsOf!426 (ite c!59026 call!18155 (ite c!59023 separatorToken!170 call!18156))))))

(declare-fun b!311144 () Bool)

(declare-fun e!193497 () Bool)

(declare-fun lt!133253 () Option!935)

(assert (=> b!311144 (= e!193497 (not (= (_1!2574 (v!14949 lt!133253)) call!18155)))))

(declare-fun b!311145 () Bool)

(declare-fun e!193495 () BalanceConc!2784)

(assert (=> b!311145 (= e!193495 (BalanceConc!2785 Empty!1388))))

(declare-fun lt!133242 () BalanceConc!2784)

(assert (=> d!95533 (= (list!1723 lt!133242) (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (dropList!198 (seqFromList!932 (t!43831 tokens!465)) 0) separatorToken!170))))

(assert (=> d!95533 (= lt!133242 e!193495)))

(declare-fun c!59025 () Bool)

(assert (=> d!95533 (= c!59025 (>= 0 (size!3261 (seqFromList!932 (t!43831 tokens!465)))))))

(declare-fun lt!133251 () Unit!5756)

(declare-fun lemmaContentSubsetPreservesForall!142 (List!4083 List!4083 Int) Unit!5756)

(assert (=> d!95533 (= lt!133251 (lemmaContentSubsetPreservesForall!142 (list!1727 (seqFromList!932 (t!43831 tokens!465))) (dropList!198 (seqFromList!932 (t!43831 tokens!465)) 0) lambda!10630))))

(declare-fun e!193498 () Bool)

(assert (=> d!95533 e!193498))

(declare-fun res!141464 () Bool)

(assert (=> d!95533 (=> (not res!141464) (not e!193498))))

(assert (=> d!95533 (= res!141464 (>= 0 0))))

(assert (=> d!95533 (= (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 (seqFromList!932 (t!43831 tokens!465)) separatorToken!170 0) lt!133242)))

(declare-fun b!311146 () Bool)

(declare-fun e!193500 () BalanceConc!2784)

(declare-fun call!18157 () BalanceConc!2784)

(assert (=> b!311146 (= e!193500 call!18157)))

(declare-fun b!311147 () Bool)

(assert (=> b!311147 (= e!193498 (<= 0 (size!3261 (seqFromList!932 (t!43831 tokens!465)))))))

(declare-fun bm!18152 () Bool)

(declare-fun call!18158 () BalanceConc!2784)

(assert (=> bm!18152 (= call!18158 call!18159)))

(declare-fun bm!18153 () Bool)

(assert (=> bm!18153 (= call!18156 call!18155)))

(declare-fun b!311148 () Bool)

(declare-fun e!193496 () BalanceConc!2784)

(declare-fun lt!133250 () BalanceConc!2784)

(assert (=> b!311148 (= e!193496 (++!1112 call!18157 lt!133250))))

(declare-fun b!311149 () Bool)

(declare-fun e!193494 () Bool)

(assert (=> b!311149 (= e!193494 (= (_1!2574 (v!14949 lt!133253)) (apply!900 (seqFromList!932 (t!43831 tokens!465)) 0)))))

(declare-fun bm!18154 () Bool)

(declare-fun c!59024 () Bool)

(assert (=> bm!18154 (= c!59024 c!59026)))

(assert (=> bm!18154 (= call!18157 (++!1112 e!193499 (ite c!59026 lt!133250 call!18158)))))

(declare-fun b!311150 () Bool)

(assert (=> b!311150 (= c!59023 e!193497)))

(declare-fun res!141465 () Bool)

(assert (=> b!311150 (=> (not res!141465) (not e!193497))))

(assert (=> b!311150 (= res!141465 ((_ is Some!934) lt!133253))))

(assert (=> b!311150 (= e!193500 e!193496)))

(declare-fun b!311151 () Bool)

(assert (=> b!311151 (= e!193496 (BalanceConc!2785 Empty!1388))))

(assert (=> b!311151 (= (print!394 thiss!17480 (singletonSeq!329 call!18156)) (printTailRec!355 thiss!17480 (singletonSeq!329 call!18156) 0 (BalanceConc!2785 Empty!1388)))))

(declare-fun lt!133248 () Unit!5756)

(declare-fun Unit!5766 () Unit!5756)

(assert (=> b!311151 (= lt!133248 Unit!5766)))

(declare-fun lt!133252 () Unit!5756)

(assert (=> b!311151 (= lt!133252 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!146 thiss!17480 rules!1920 (list!1723 call!18158) (list!1723 lt!133250)))))

(assert (=> b!311151 false))

(declare-fun lt!133245 () Unit!5756)

(declare-fun Unit!5767 () Unit!5756)

(assert (=> b!311151 (= lt!133245 Unit!5767)))

(assert (=> b!311152 (= e!193495 e!193500)))

(declare-fun lt!133254 () List!4083)

(assert (=> b!311152 (= lt!133254 (list!1727 (seqFromList!932 (t!43831 tokens!465))))))

(declare-fun lt!133246 () Unit!5756)

(assert (=> b!311152 (= lt!133246 (lemmaDropApply!238 lt!133254 0))))

(assert (=> b!311152 (= (head!970 (drop!253 lt!133254 0)) (apply!901 lt!133254 0))))

(declare-fun lt!133244 () Unit!5756)

(assert (=> b!311152 (= lt!133244 lt!133246)))

(declare-fun lt!133241 () List!4083)

(assert (=> b!311152 (= lt!133241 (list!1727 (seqFromList!932 (t!43831 tokens!465))))))

(declare-fun lt!133249 () Unit!5756)

(assert (=> b!311152 (= lt!133249 (lemmaDropTail!230 lt!133241 0))))

(assert (=> b!311152 (= (tail!545 (drop!253 lt!133241 0)) (drop!253 lt!133241 (+ 0 1)))))

(declare-fun lt!133243 () Unit!5756)

(assert (=> b!311152 (= lt!133243 lt!133249)))

(declare-fun lt!133247 () Unit!5756)

(assert (=> b!311152 (= lt!133247 (forallContained!336 (list!1727 (seqFromList!932 (t!43831 tokens!465))) lambda!10631 (apply!900 (seqFromList!932 (t!43831 tokens!465)) 0)))))

(assert (=> b!311152 (= lt!133250 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 (seqFromList!932 (t!43831 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!311152 (= lt!133253 (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (++!1112 (charsOf!426 (apply!900 (seqFromList!932 (t!43831 tokens!465)) 0)) lt!133250)))))

(declare-fun res!141463 () Bool)

(assert (=> b!311152 (= res!141463 ((_ is Some!934) lt!133253))))

(assert (=> b!311152 (=> (not res!141463) (not e!193494))))

(assert (=> b!311152 (= c!59026 e!193494)))

(assert (= (and d!95533 res!141464) b!311147))

(assert (= (and d!95533 c!59025) b!311145))

(assert (= (and d!95533 (not c!59025)) b!311152))

(assert (= (and b!311152 res!141463) b!311149))

(assert (= (and b!311152 c!59026) b!311146))

(assert (= (and b!311152 (not c!59026)) b!311150))

(assert (= (and b!311150 res!141465) b!311144))

(assert (= (and b!311150 c!59023) b!311148))

(assert (= (and b!311150 (not c!59023)) b!311151))

(assert (= (or b!311148 b!311151) bm!18153))

(assert (= (or b!311148 b!311151) bm!18152))

(assert (= (or b!311146 b!311144 bm!18153) bm!18150))

(assert (= (or b!311146 bm!18152) bm!18151))

(assert (= (or b!311146 b!311148) bm!18154))

(assert (= (and bm!18154 c!59024) b!311142))

(assert (= (and bm!18154 (not c!59024)) b!311143))

(declare-fun m!417411 () Bool)

(assert (=> b!311151 m!417411))

(declare-fun m!417413 () Bool)

(assert (=> b!311151 m!417413))

(declare-fun m!417415 () Bool)

(assert (=> b!311151 m!417415))

(declare-fun m!417417 () Bool)

(assert (=> b!311151 m!417417))

(assert (=> b!311151 m!417413))

(assert (=> b!311151 m!417417))

(declare-fun m!417419 () Bool)

(assert (=> b!311151 m!417419))

(assert (=> b!311151 m!417411))

(assert (=> b!311151 m!417417))

(declare-fun m!417421 () Bool)

(assert (=> b!311151 m!417421))

(assert (=> d!95533 m!416673))

(declare-fun m!417423 () Bool)

(assert (=> d!95533 m!417423))

(declare-fun m!417425 () Bool)

(assert (=> d!95533 m!417425))

(declare-fun m!417427 () Bool)

(assert (=> d!95533 m!417427))

(assert (=> d!95533 m!416673))

(declare-fun m!417429 () Bool)

(assert (=> d!95533 m!417429))

(declare-fun m!417431 () Bool)

(assert (=> d!95533 m!417431))

(assert (=> d!95533 m!417429))

(assert (=> d!95533 m!417425))

(declare-fun m!417433 () Bool)

(assert (=> d!95533 m!417433))

(assert (=> d!95533 m!416673))

(assert (=> d!95533 m!417425))

(declare-fun m!417435 () Bool)

(assert (=> bm!18154 m!417435))

(declare-fun m!417437 () Bool)

(assert (=> b!311148 m!417437))

(declare-fun m!417439 () Bool)

(assert (=> b!311143 m!417439))

(assert (=> bm!18150 m!416673))

(declare-fun m!417441 () Bool)

(assert (=> bm!18150 m!417441))

(declare-fun m!417443 () Bool)

(assert (=> bm!18151 m!417443))

(assert (=> b!311147 m!416673))

(assert (=> b!311147 m!417423))

(assert (=> b!311149 m!416673))

(assert (=> b!311149 m!417441))

(declare-fun m!417445 () Bool)

(assert (=> b!311152 m!417445))

(assert (=> b!311152 m!417441))

(declare-fun m!417447 () Bool)

(assert (=> b!311152 m!417447))

(declare-fun m!417449 () Bool)

(assert (=> b!311152 m!417449))

(declare-fun m!417451 () Bool)

(assert (=> b!311152 m!417451))

(assert (=> b!311152 m!417447))

(declare-fun m!417453 () Bool)

(assert (=> b!311152 m!417453))

(declare-fun m!417455 () Bool)

(assert (=> b!311152 m!417455))

(assert (=> b!311152 m!417453))

(declare-fun m!417457 () Bool)

(assert (=> b!311152 m!417457))

(assert (=> b!311152 m!416673))

(declare-fun m!417459 () Bool)

(assert (=> b!311152 m!417459))

(declare-fun m!417461 () Bool)

(assert (=> b!311152 m!417461))

(declare-fun m!417463 () Bool)

(assert (=> b!311152 m!417463))

(assert (=> b!311152 m!417429))

(assert (=> b!311152 m!417441))

(declare-fun m!417465 () Bool)

(assert (=> b!311152 m!417465))

(assert (=> b!311152 m!416673))

(assert (=> b!311152 m!417441))

(assert (=> b!311152 m!417451))

(declare-fun m!417467 () Bool)

(assert (=> b!311152 m!417467))

(assert (=> b!311152 m!417463))

(declare-fun m!417469 () Bool)

(assert (=> b!311152 m!417469))

(assert (=> b!311152 m!416673))

(assert (=> b!311152 m!417429))

(assert (=> b!310651 d!95533))

(declare-fun d!95569 () Bool)

(declare-fun lt!133257 () BalanceConc!2784)

(assert (=> d!95569 (= (list!1723 lt!133257) (originalCharacters!826 separatorToken!170))))

(assert (=> d!95569 (= lt!133257 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (value!26631 separatorToken!170)))))

(assert (=> d!95569 (= (charsOf!426 separatorToken!170) lt!133257)))

(declare-fun b_lambda!10867 () Bool)

(assert (=> (not b_lambda!10867) (not d!95569)))

(assert (=> d!95569 t!43836))

(declare-fun b_and!26431 () Bool)

(assert (= b_and!26419 (and (=> t!43836 result!23832) b_and!26431)))

(assert (=> d!95569 t!43838))

(declare-fun b_and!26433 () Bool)

(assert (= b_and!26421 (and (=> t!43838 result!23836) b_and!26433)))

(assert (=> d!95569 t!43840))

(declare-fun b_and!26435 () Bool)

(assert (= b_and!26423 (and (=> t!43840 result!23838) b_and!26435)))

(declare-fun m!417471 () Bool)

(assert (=> d!95569 m!417471))

(assert (=> d!95569 m!416879))

(assert (=> b!310651 d!95569))

(declare-fun b!311157 () Bool)

(declare-fun e!193505 () List!4081)

(assert (=> b!311157 (= e!193505 (Cons!4071 (h!9468 lt!132942) (++!1110 (t!43829 lt!132942) lt!132962)))))

(declare-fun b!311158 () Bool)

(declare-fun res!141467 () Bool)

(declare-fun e!193504 () Bool)

(assert (=> b!311158 (=> (not res!141467) (not e!193504))))

(declare-fun lt!133258 () List!4081)

(assert (=> b!311158 (= res!141467 (= (size!3260 lt!133258) (+ (size!3260 lt!132942) (size!3260 lt!132962))))))

(declare-fun b!311156 () Bool)

(assert (=> b!311156 (= e!193505 lt!132962)))

(declare-fun d!95571 () Bool)

(assert (=> d!95571 e!193504))

(declare-fun res!141466 () Bool)

(assert (=> d!95571 (=> (not res!141466) (not e!193504))))

(assert (=> d!95571 (= res!141466 (= (content!613 lt!133258) ((_ map or) (content!613 lt!132942) (content!613 lt!132962))))))

(assert (=> d!95571 (= lt!133258 e!193505)))

(declare-fun c!59027 () Bool)

(assert (=> d!95571 (= c!59027 ((_ is Nil!4071) lt!132942))))

(assert (=> d!95571 (= (++!1110 lt!132942 lt!132962) lt!133258)))

(declare-fun b!311159 () Bool)

(assert (=> b!311159 (= e!193504 (or (not (= lt!132962 Nil!4071)) (= lt!133258 lt!132942)))))

(assert (= (and d!95571 c!59027) b!311156))

(assert (= (and d!95571 (not c!59027)) b!311157))

(assert (= (and d!95571 res!141466) b!311158))

(assert (= (and b!311158 res!141467) b!311159))

(declare-fun m!417473 () Bool)

(assert (=> b!311157 m!417473))

(declare-fun m!417475 () Bool)

(assert (=> b!311158 m!417475))

(assert (=> b!311158 m!417157))

(assert (=> b!311158 m!417197))

(declare-fun m!417477 () Bool)

(assert (=> d!95571 m!417477))

(assert (=> d!95571 m!417163))

(assert (=> d!95571 m!417201))

(assert (=> b!310651 d!95571))

(declare-fun d!95573 () Bool)

(assert (=> d!95573 (= (list!1723 (charsOf!426 (h!9470 tokens!465))) (list!1726 (c!58916 (charsOf!426 (h!9470 tokens!465)))))))

(declare-fun bs!36104 () Bool)

(assert (= bs!36104 d!95573))

(declare-fun m!417479 () Bool)

(assert (=> bs!36104 m!417479))

(assert (=> b!310651 d!95573))

(declare-fun d!95575 () Bool)

(declare-fun lt!133259 () BalanceConc!2784)

(assert (=> d!95575 (= (list!1723 lt!133259) (originalCharacters!826 (h!9470 tokens!465)))))

(assert (=> d!95575 (= lt!133259 (dynLambda!2241 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (value!26631 (h!9470 tokens!465))))))

(assert (=> d!95575 (= (charsOf!426 (h!9470 tokens!465)) lt!133259)))

(declare-fun b_lambda!10869 () Bool)

(assert (=> (not b_lambda!10869) (not d!95575)))

(assert (=> d!95575 t!43860))

(declare-fun b_and!26437 () Bool)

(assert (= b_and!26431 (and (=> t!43860 result!23854) b_and!26437)))

(assert (=> d!95575 t!43862))

(declare-fun b_and!26439 () Bool)

(assert (= b_and!26433 (and (=> t!43862 result!23856) b_and!26439)))

(assert (=> d!95575 t!43864))

(declare-fun b_and!26441 () Bool)

(assert (= b_and!26435 (and (=> t!43864 result!23858) b_and!26441)))

(declare-fun m!417481 () Bool)

(assert (=> d!95575 m!417481))

(assert (=> d!95575 m!417111))

(assert (=> b!310651 d!95575))

(declare-fun d!95577 () Bool)

(declare-fun isEmpty!2803 (Option!934) Bool)

(assert (=> d!95577 (= (isDefined!773 lt!132959) (not (isEmpty!2803 lt!132959)))))

(declare-fun bs!36105 () Bool)

(assert (= bs!36105 d!95577))

(declare-fun m!417483 () Bool)

(assert (=> bs!36105 m!417483))

(assert (=> b!310628 d!95577))

(declare-fun b!311178 () Bool)

(declare-fun res!141486 () Bool)

(declare-fun e!193513 () Bool)

(assert (=> b!311178 (=> (not res!141486) (not e!193513))))

(declare-fun lt!133271 () Option!934)

(assert (=> b!311178 (= res!141486 (= (++!1110 (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133271)))) (_2!2573 (get!1395 lt!133271))) lt!132956))))

(declare-fun b!311179 () Bool)

(declare-fun e!193514 () Bool)

(assert (=> b!311179 (= e!193514 e!193513)))

(declare-fun res!141484 () Bool)

(assert (=> b!311179 (=> (not res!141484) (not e!193513))))

(assert (=> b!311179 (= res!141484 (isDefined!773 lt!133271))))

(declare-fun b!311180 () Bool)

(declare-fun res!141485 () Bool)

(assert (=> b!311180 (=> (not res!141485) (not e!193513))))

(assert (=> b!311180 (= res!141485 (= (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133271)))) (originalCharacters!826 (_1!2573 (get!1395 lt!133271)))))))

(declare-fun b!311181 () Bool)

(declare-fun contains!811 (List!4082 Rule!1366) Bool)

(assert (=> b!311181 (= e!193513 (contains!811 rules!1920 (rule!1400 (_1!2573 (get!1395 lt!133271)))))))

(declare-fun b!311182 () Bool)

(declare-fun res!141488 () Bool)

(assert (=> b!311182 (=> (not res!141488) (not e!193513))))

(assert (=> b!311182 (= res!141488 (matchR!325 (regex!783 (rule!1400 (_1!2573 (get!1395 lt!133271)))) (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133271))))))))

(declare-fun b!311183 () Bool)

(declare-fun res!141482 () Bool)

(assert (=> b!311183 (=> (not res!141482) (not e!193513))))

(declare-fun apply!902 (TokenValueInjection!1382 BalanceConc!2784) TokenValue!805)

(assert (=> b!311183 (= res!141482 (= (value!26631 (_1!2573 (get!1395 lt!133271))) (apply!902 (transformation!783 (rule!1400 (_1!2573 (get!1395 lt!133271)))) (seqFromList!931 (originalCharacters!826 (_1!2573 (get!1395 lt!133271)))))))))

(declare-fun bm!18157 () Bool)

(declare-fun call!18162 () Option!934)

(declare-fun maxPrefixOneRule!175 (LexerInterface!669 Rule!1366 List!4081) Option!934)

(assert (=> bm!18157 (= call!18162 (maxPrefixOneRule!175 thiss!17480 (h!9469 rules!1920) lt!132956))))

(declare-fun d!95579 () Bool)

(assert (=> d!95579 e!193514))

(declare-fun res!141487 () Bool)

(assert (=> d!95579 (=> res!141487 e!193514)))

(assert (=> d!95579 (= res!141487 (isEmpty!2803 lt!133271))))

(declare-fun e!193512 () Option!934)

(assert (=> d!95579 (= lt!133271 e!193512)))

(declare-fun c!59030 () Bool)

(assert (=> d!95579 (= c!59030 (and ((_ is Cons!4072) rules!1920) ((_ is Nil!4072) (t!43830 rules!1920))))))

(declare-fun lt!133270 () Unit!5756)

(declare-fun lt!133274 () Unit!5756)

(assert (=> d!95579 (= lt!133270 lt!133274)))

(assert (=> d!95579 (isPrefix!443 lt!132956 lt!132956)))

(assert (=> d!95579 (= lt!133274 (lemmaIsPrefixRefl!241 lt!132956 lt!132956))))

(assert (=> d!95579 (rulesValidInductive!236 thiss!17480 rules!1920)))

(assert (=> d!95579 (= (maxPrefix!385 thiss!17480 rules!1920 lt!132956) lt!133271)))

(declare-fun b!311184 () Bool)

(assert (=> b!311184 (= e!193512 call!18162)))

(declare-fun b!311185 () Bool)

(declare-fun lt!133272 () Option!934)

(declare-fun lt!133273 () Option!934)

(assert (=> b!311185 (= e!193512 (ite (and ((_ is None!933) lt!133272) ((_ is None!933) lt!133273)) None!933 (ite ((_ is None!933) lt!133273) lt!133272 (ite ((_ is None!933) lt!133272) lt!133273 (ite (>= (size!3257 (_1!2573 (v!14948 lt!133272))) (size!3257 (_1!2573 (v!14948 lt!133273)))) lt!133272 lt!133273)))))))

(assert (=> b!311185 (= lt!133272 call!18162)))

(assert (=> b!311185 (= lt!133273 (maxPrefix!385 thiss!17480 (t!43830 rules!1920) lt!132956))))

(declare-fun b!311186 () Bool)

(declare-fun res!141483 () Bool)

(assert (=> b!311186 (=> (not res!141483) (not e!193513))))

(assert (=> b!311186 (= res!141483 (< (size!3260 (_2!2573 (get!1395 lt!133271))) (size!3260 lt!132956)))))

(assert (= (and d!95579 c!59030) b!311184))

(assert (= (and d!95579 (not c!59030)) b!311185))

(assert (= (or b!311184 b!311185) bm!18157))

(assert (= (and d!95579 (not res!141487)) b!311179))

(assert (= (and b!311179 res!141484) b!311180))

(assert (= (and b!311180 res!141485) b!311186))

(assert (= (and b!311186 res!141483) b!311178))

(assert (= (and b!311178 res!141486) b!311183))

(assert (= (and b!311183 res!141482) b!311182))

(assert (= (and b!311182 res!141488) b!311181))

(declare-fun m!417485 () Bool)

(assert (=> b!311182 m!417485))

(declare-fun m!417487 () Bool)

(assert (=> b!311182 m!417487))

(assert (=> b!311182 m!417487))

(declare-fun m!417489 () Bool)

(assert (=> b!311182 m!417489))

(assert (=> b!311182 m!417489))

(declare-fun m!417491 () Bool)

(assert (=> b!311182 m!417491))

(assert (=> b!311186 m!417485))

(declare-fun m!417493 () Bool)

(assert (=> b!311186 m!417493))

(declare-fun m!417495 () Bool)

(assert (=> b!311186 m!417495))

(assert (=> b!311178 m!417485))

(assert (=> b!311178 m!417487))

(assert (=> b!311178 m!417487))

(assert (=> b!311178 m!417489))

(assert (=> b!311178 m!417489))

(declare-fun m!417497 () Bool)

(assert (=> b!311178 m!417497))

(assert (=> b!311183 m!417485))

(declare-fun m!417499 () Bool)

(assert (=> b!311183 m!417499))

(assert (=> b!311183 m!417499))

(declare-fun m!417501 () Bool)

(assert (=> b!311183 m!417501))

(assert (=> b!311180 m!417485))

(assert (=> b!311180 m!417487))

(assert (=> b!311180 m!417487))

(assert (=> b!311180 m!417489))

(declare-fun m!417503 () Bool)

(assert (=> d!95579 m!417503))

(declare-fun m!417505 () Bool)

(assert (=> d!95579 m!417505))

(declare-fun m!417507 () Bool)

(assert (=> d!95579 m!417507))

(assert (=> d!95579 m!416853))

(declare-fun m!417509 () Bool)

(assert (=> b!311185 m!417509))

(declare-fun m!417511 () Bool)

(assert (=> bm!18157 m!417511))

(declare-fun m!417513 () Bool)

(assert (=> b!311179 m!417513))

(assert (=> b!311181 m!417485))

(declare-fun m!417515 () Bool)

(assert (=> b!311181 m!417515))

(assert (=> b!310628 d!95579))

(declare-fun d!95581 () Bool)

(declare-fun lt!133279 () Bool)

(assert (=> d!95581 (= lt!133279 (isEmpty!2793 (list!1727 (_1!2575 (lex!461 thiss!17480 rules!1920 (seqFromList!931 lt!132942))))))))

(declare-fun isEmpty!2804 (Conc!1389) Bool)

(assert (=> d!95581 (= lt!133279 (isEmpty!2804 (c!58918 (_1!2575 (lex!461 thiss!17480 rules!1920 (seqFromList!931 lt!132942))))))))

(assert (=> d!95581 (= (isEmpty!2796 (_1!2575 (lex!461 thiss!17480 rules!1920 (seqFromList!931 lt!132942)))) lt!133279)))

(declare-fun bs!36106 () Bool)

(assert (= bs!36106 d!95581))

(declare-fun m!417517 () Bool)

(assert (=> bs!36106 m!417517))

(assert (=> bs!36106 m!417517))

(declare-fun m!417519 () Bool)

(assert (=> bs!36106 m!417519))

(declare-fun m!417521 () Bool)

(assert (=> bs!36106 m!417521))

(assert (=> b!310648 d!95581))

(declare-fun b!311305 () Bool)

(declare-fun e!193591 () Bool)

(declare-fun lt!133327 () tuple2!4718)

(assert (=> b!311305 (= e!193591 (not (isEmpty!2796 (_1!2575 lt!133327))))))

(declare-fun d!95583 () Bool)

(declare-fun e!193590 () Bool)

(assert (=> d!95583 e!193590))

(declare-fun res!141556 () Bool)

(assert (=> d!95583 (=> (not res!141556) (not e!193590))))

(declare-fun e!193592 () Bool)

(assert (=> d!95583 (= res!141556 e!193592)))

(declare-fun c!59054 () Bool)

(assert (=> d!95583 (= c!59054 (> (size!3261 (_1!2575 lt!133327)) 0))))

(declare-fun lexTailRecV2!210 (LexerInterface!669 List!4082 BalanceConc!2784 BalanceConc!2784 BalanceConc!2784 BalanceConc!2786) tuple2!4718)

(assert (=> d!95583 (= lt!133327 (lexTailRecV2!210 thiss!17480 rules!1920 (seqFromList!931 lt!132942) (BalanceConc!2785 Empty!1388) (seqFromList!931 lt!132942) (BalanceConc!2787 Empty!1389)))))

(assert (=> d!95583 (= (lex!461 thiss!17480 rules!1920 (seqFromList!931 lt!132942)) lt!133327)))

(declare-fun b!311306 () Bool)

(assert (=> b!311306 (= e!193592 e!193591)))

(declare-fun res!141555 () Bool)

(declare-fun size!3263 (BalanceConc!2784) Int)

(assert (=> b!311306 (= res!141555 (< (size!3263 (_2!2575 lt!133327)) (size!3263 (seqFromList!931 lt!132942))))))

(assert (=> b!311306 (=> (not res!141555) (not e!193591))))

(declare-fun b!311307 () Bool)

(declare-datatypes ((tuple2!4722 0))(
  ( (tuple2!4723 (_1!2577 List!4083) (_2!2577 List!4081)) )
))
(declare-fun lexList!243 (LexerInterface!669 List!4082 List!4081) tuple2!4722)

(assert (=> b!311307 (= e!193590 (= (list!1723 (_2!2575 lt!133327)) (_2!2577 (lexList!243 thiss!17480 rules!1920 (list!1723 (seqFromList!931 lt!132942))))))))

(declare-fun b!311308 () Bool)

(assert (=> b!311308 (= e!193592 (= (_2!2575 lt!133327) (seqFromList!931 lt!132942)))))

(declare-fun b!311309 () Bool)

(declare-fun res!141557 () Bool)

(assert (=> b!311309 (=> (not res!141557) (not e!193590))))

(assert (=> b!311309 (= res!141557 (= (list!1727 (_1!2575 lt!133327)) (_1!2577 (lexList!243 thiss!17480 rules!1920 (list!1723 (seqFromList!931 lt!132942))))))))

(assert (= (and d!95583 c!59054) b!311306))

(assert (= (and d!95583 (not c!59054)) b!311308))

(assert (= (and b!311306 res!141555) b!311305))

(assert (= (and d!95583 res!141556) b!311309))

(assert (= (and b!311309 res!141557) b!311307))

(declare-fun m!417749 () Bool)

(assert (=> b!311309 m!417749))

(assert (=> b!311309 m!416645))

(declare-fun m!417751 () Bool)

(assert (=> b!311309 m!417751))

(assert (=> b!311309 m!417751))

(declare-fun m!417753 () Bool)

(assert (=> b!311309 m!417753))

(declare-fun m!417755 () Bool)

(assert (=> b!311305 m!417755))

(declare-fun m!417757 () Bool)

(assert (=> d!95583 m!417757))

(assert (=> d!95583 m!416645))

(assert (=> d!95583 m!416645))

(declare-fun m!417759 () Bool)

(assert (=> d!95583 m!417759))

(declare-fun m!417761 () Bool)

(assert (=> b!311306 m!417761))

(assert (=> b!311306 m!416645))

(declare-fun m!417763 () Bool)

(assert (=> b!311306 m!417763))

(declare-fun m!417765 () Bool)

(assert (=> b!311307 m!417765))

(assert (=> b!311307 m!416645))

(assert (=> b!311307 m!417751))

(assert (=> b!311307 m!417751))

(assert (=> b!311307 m!417753))

(assert (=> b!310648 d!95583))

(declare-fun d!95633 () Bool)

(assert (=> d!95633 (= (seqFromList!931 lt!132942) (fromListB!389 lt!132942))))

(declare-fun bs!36136 () Bool)

(assert (= bs!36136 d!95633))

(declare-fun m!417767 () Bool)

(assert (=> bs!36136 m!417767))

(assert (=> b!310648 d!95633))

(declare-fun d!95635 () Bool)

(assert (=> d!95635 (= (get!1395 (maxPrefix!385 thiss!17480 rules!1920 lt!132956)) (v!14948 (maxPrefix!385 thiss!17480 rules!1920 lt!132956)))))

(assert (=> b!310626 d!95635))

(declare-fun d!95637 () Bool)

(assert (=> d!95637 (= lt!132957 (_2!2573 lt!132955))))

(declare-fun lt!133330 () Unit!5756)

(declare-fun choose!2714 (List!4081 List!4081 List!4081 List!4081 List!4081) Unit!5756)

(assert (=> d!95637 (= lt!133330 (choose!2714 lt!132942 lt!132957 lt!132942 (_2!2573 lt!132955) lt!132956))))

(assert (=> d!95637 (isPrefix!443 lt!132942 lt!132956)))

(assert (=> d!95637 (= (lemmaSamePrefixThenSameSuffix!228 lt!132942 lt!132957 lt!132942 (_2!2573 lt!132955) lt!132956) lt!133330)))

(declare-fun bs!36137 () Bool)

(assert (= bs!36137 d!95637))

(declare-fun m!417769 () Bool)

(assert (=> bs!36137 m!417769))

(declare-fun m!417771 () Bool)

(assert (=> bs!36137 m!417771))

(assert (=> b!310626 d!95637))

(declare-fun d!95639 () Bool)

(assert (=> d!95639 (= (isEmpty!2793 (t!43831 tokens!465)) ((_ is Nil!4073) (t!43831 tokens!465)))))

(assert (=> b!310626 d!95639))

(declare-fun d!95641 () Bool)

(assert (=> d!95641 (= (isEmpty!2793 tokens!465) ((_ is Nil!4073) tokens!465))))

(assert (=> b!310626 d!95641))

(declare-fun b!311310 () Bool)

(declare-fun res!141562 () Bool)

(declare-fun e!193594 () Bool)

(assert (=> b!311310 (=> (not res!141562) (not e!193594))))

(declare-fun lt!133332 () Option!934)

(assert (=> b!311310 (= res!141562 (= (++!1110 (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133332)))) (_2!2573 (get!1395 lt!133332))) lt!132957))))

(declare-fun b!311311 () Bool)

(declare-fun e!193595 () Bool)

(assert (=> b!311311 (= e!193595 e!193594)))

(declare-fun res!141560 () Bool)

(assert (=> b!311311 (=> (not res!141560) (not e!193594))))

(assert (=> b!311311 (= res!141560 (isDefined!773 lt!133332))))

(declare-fun b!311312 () Bool)

(declare-fun res!141561 () Bool)

(assert (=> b!311312 (=> (not res!141561) (not e!193594))))

(assert (=> b!311312 (= res!141561 (= (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133332)))) (originalCharacters!826 (_1!2573 (get!1395 lt!133332)))))))

(declare-fun b!311313 () Bool)

(assert (=> b!311313 (= e!193594 (contains!811 rules!1920 (rule!1400 (_1!2573 (get!1395 lt!133332)))))))

(declare-fun b!311314 () Bool)

(declare-fun res!141564 () Bool)

(assert (=> b!311314 (=> (not res!141564) (not e!193594))))

(assert (=> b!311314 (= res!141564 (matchR!325 (regex!783 (rule!1400 (_1!2573 (get!1395 lt!133332)))) (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133332))))))))

(declare-fun b!311315 () Bool)

(declare-fun res!141558 () Bool)

(assert (=> b!311315 (=> (not res!141558) (not e!193594))))

(assert (=> b!311315 (= res!141558 (= (value!26631 (_1!2573 (get!1395 lt!133332))) (apply!902 (transformation!783 (rule!1400 (_1!2573 (get!1395 lt!133332)))) (seqFromList!931 (originalCharacters!826 (_1!2573 (get!1395 lt!133332)))))))))

(declare-fun call!18175 () Option!934)

(declare-fun bm!18170 () Bool)

(assert (=> bm!18170 (= call!18175 (maxPrefixOneRule!175 thiss!17480 (h!9469 rules!1920) lt!132957))))

(declare-fun d!95643 () Bool)

(assert (=> d!95643 e!193595))

(declare-fun res!141563 () Bool)

(assert (=> d!95643 (=> res!141563 e!193595)))

(assert (=> d!95643 (= res!141563 (isEmpty!2803 lt!133332))))

(declare-fun e!193593 () Option!934)

(assert (=> d!95643 (= lt!133332 e!193593)))

(declare-fun c!59055 () Bool)

(assert (=> d!95643 (= c!59055 (and ((_ is Cons!4072) rules!1920) ((_ is Nil!4072) (t!43830 rules!1920))))))

(declare-fun lt!133331 () Unit!5756)

(declare-fun lt!133335 () Unit!5756)

(assert (=> d!95643 (= lt!133331 lt!133335)))

(assert (=> d!95643 (isPrefix!443 lt!132957 lt!132957)))

(assert (=> d!95643 (= lt!133335 (lemmaIsPrefixRefl!241 lt!132957 lt!132957))))

(assert (=> d!95643 (rulesValidInductive!236 thiss!17480 rules!1920)))

(assert (=> d!95643 (= (maxPrefix!385 thiss!17480 rules!1920 lt!132957) lt!133332)))

(declare-fun b!311316 () Bool)

(assert (=> b!311316 (= e!193593 call!18175)))

(declare-fun b!311317 () Bool)

(declare-fun lt!133333 () Option!934)

(declare-fun lt!133334 () Option!934)

(assert (=> b!311317 (= e!193593 (ite (and ((_ is None!933) lt!133333) ((_ is None!933) lt!133334)) None!933 (ite ((_ is None!933) lt!133334) lt!133333 (ite ((_ is None!933) lt!133333) lt!133334 (ite (>= (size!3257 (_1!2573 (v!14948 lt!133333))) (size!3257 (_1!2573 (v!14948 lt!133334)))) lt!133333 lt!133334)))))))

(assert (=> b!311317 (= lt!133333 call!18175)))

(assert (=> b!311317 (= lt!133334 (maxPrefix!385 thiss!17480 (t!43830 rules!1920) lt!132957))))

(declare-fun b!311318 () Bool)

(declare-fun res!141559 () Bool)

(assert (=> b!311318 (=> (not res!141559) (not e!193594))))

(assert (=> b!311318 (= res!141559 (< (size!3260 (_2!2573 (get!1395 lt!133332))) (size!3260 lt!132957)))))

(assert (= (and d!95643 c!59055) b!311316))

(assert (= (and d!95643 (not c!59055)) b!311317))

(assert (= (or b!311316 b!311317) bm!18170))

(assert (= (and d!95643 (not res!141563)) b!311311))

(assert (= (and b!311311 res!141560) b!311312))

(assert (= (and b!311312 res!141561) b!311318))

(assert (= (and b!311318 res!141559) b!311310))

(assert (= (and b!311310 res!141562) b!311315))

(assert (= (and b!311315 res!141558) b!311314))

(assert (= (and b!311314 res!141564) b!311313))

(declare-fun m!417773 () Bool)

(assert (=> b!311314 m!417773))

(declare-fun m!417775 () Bool)

(assert (=> b!311314 m!417775))

(assert (=> b!311314 m!417775))

(declare-fun m!417777 () Bool)

(assert (=> b!311314 m!417777))

(assert (=> b!311314 m!417777))

(declare-fun m!417779 () Bool)

(assert (=> b!311314 m!417779))

(assert (=> b!311318 m!417773))

(declare-fun m!417781 () Bool)

(assert (=> b!311318 m!417781))

(assert (=> b!311318 m!417173))

(assert (=> b!311310 m!417773))

(assert (=> b!311310 m!417775))

(assert (=> b!311310 m!417775))

(assert (=> b!311310 m!417777))

(assert (=> b!311310 m!417777))

(declare-fun m!417783 () Bool)

(assert (=> b!311310 m!417783))

(assert (=> b!311315 m!417773))

(declare-fun m!417785 () Bool)

(assert (=> b!311315 m!417785))

(assert (=> b!311315 m!417785))

(declare-fun m!417787 () Bool)

(assert (=> b!311315 m!417787))

(assert (=> b!311312 m!417773))

(assert (=> b!311312 m!417775))

(assert (=> b!311312 m!417775))

(assert (=> b!311312 m!417777))

(declare-fun m!417789 () Bool)

(assert (=> d!95643 m!417789))

(declare-fun m!417791 () Bool)

(assert (=> d!95643 m!417791))

(declare-fun m!417793 () Bool)

(assert (=> d!95643 m!417793))

(assert (=> d!95643 m!416853))

(declare-fun m!417795 () Bool)

(assert (=> b!311317 m!417795))

(declare-fun m!417797 () Bool)

(assert (=> bm!18170 m!417797))

(declare-fun m!417799 () Bool)

(assert (=> b!311311 m!417799))

(assert (=> b!311313 m!417773))

(declare-fun m!417801 () Bool)

(assert (=> b!311313 m!417801))

(assert (=> b!310626 d!95643))

(declare-fun d!95645 () Bool)

(assert (=> d!95645 (isPrefix!443 lt!132942 (++!1110 lt!132942 lt!132957))))

(declare-fun lt!133338 () Unit!5756)

(declare-fun choose!2716 (List!4081 List!4081) Unit!5756)

(assert (=> d!95645 (= lt!133338 (choose!2716 lt!132942 lt!132957))))

(assert (=> d!95645 (= (lemmaConcatTwoListThenFirstIsPrefix!334 lt!132942 lt!132957) lt!133338)))

(declare-fun bs!36138 () Bool)

(assert (= bs!36138 d!95645))

(assert (=> bs!36138 m!416675))

(assert (=> bs!36138 m!416675))

(declare-fun m!417803 () Bool)

(assert (=> bs!36138 m!417803))

(declare-fun m!417805 () Bool)

(assert (=> bs!36138 m!417805))

(assert (=> b!310626 d!95645))

(declare-fun d!95647 () Bool)

(declare-fun lt!133341 () Bool)

(declare-fun content!615 (List!4083) (InoxSet Token!1310))

(assert (=> d!95647 (= lt!133341 (select (content!615 tokens!465) (head!970 (t!43831 tokens!465))))))

(declare-fun e!193601 () Bool)

(assert (=> d!95647 (= lt!133341 e!193601)))

(declare-fun res!141569 () Bool)

(assert (=> d!95647 (=> (not res!141569) (not e!193601))))

(assert (=> d!95647 (= res!141569 ((_ is Cons!4073) tokens!465))))

(assert (=> d!95647 (= (contains!809 tokens!465 (head!970 (t!43831 tokens!465))) lt!133341)))

(declare-fun b!311323 () Bool)

(declare-fun e!193600 () Bool)

(assert (=> b!311323 (= e!193601 e!193600)))

(declare-fun res!141570 () Bool)

(assert (=> b!311323 (=> res!141570 e!193600)))

(assert (=> b!311323 (= res!141570 (= (h!9470 tokens!465) (head!970 (t!43831 tokens!465))))))

(declare-fun b!311324 () Bool)

(assert (=> b!311324 (= e!193600 (contains!809 (t!43831 tokens!465) (head!970 (t!43831 tokens!465))))))

(assert (= (and d!95647 res!141569) b!311323))

(assert (= (and b!311323 (not res!141570)) b!311324))

(declare-fun m!417807 () Bool)

(assert (=> d!95647 m!417807))

(assert (=> d!95647 m!416627))

(declare-fun m!417809 () Bool)

(assert (=> d!95647 m!417809))

(assert (=> b!311324 m!416627))

(declare-fun m!417811 () Bool)

(assert (=> b!311324 m!417811))

(assert (=> b!310626 d!95647))

(assert (=> b!310626 d!95579))

(declare-fun b!311336 () Bool)

(declare-fun e!193610 () Bool)

(assert (=> b!311336 (= e!193610 (>= (size!3260 lt!132938) (size!3260 lt!132942)))))

(declare-fun b!311333 () Bool)

(declare-fun e!193609 () Bool)

(declare-fun e!193608 () Bool)

(assert (=> b!311333 (= e!193609 e!193608)))

(declare-fun res!141582 () Bool)

(assert (=> b!311333 (=> (not res!141582) (not e!193608))))

(assert (=> b!311333 (= res!141582 (not ((_ is Nil!4071) lt!132938)))))

(declare-fun d!95649 () Bool)

(assert (=> d!95649 e!193610))

(declare-fun res!141581 () Bool)

(assert (=> d!95649 (=> res!141581 e!193610)))

(declare-fun lt!133344 () Bool)

(assert (=> d!95649 (= res!141581 (not lt!133344))))

(assert (=> d!95649 (= lt!133344 e!193609)))

(declare-fun res!141579 () Bool)

(assert (=> d!95649 (=> res!141579 e!193609)))

(assert (=> d!95649 (= res!141579 ((_ is Nil!4071) lt!132942))))

(assert (=> d!95649 (= (isPrefix!443 lt!132942 lt!132938) lt!133344)))

(declare-fun b!311334 () Bool)

(declare-fun res!141580 () Bool)

(assert (=> b!311334 (=> (not res!141580) (not e!193608))))

(assert (=> b!311334 (= res!141580 (= (head!971 lt!132942) (head!971 lt!132938)))))

(declare-fun b!311335 () Bool)

(assert (=> b!311335 (= e!193608 (isPrefix!443 (tail!544 lt!132942) (tail!544 lt!132938)))))

(assert (= (and d!95649 (not res!141579)) b!311333))

(assert (= (and b!311333 res!141582) b!311334))

(assert (= (and b!311334 res!141580) b!311335))

(assert (= (and d!95649 (not res!141581)) b!311336))

(declare-fun m!417813 () Bool)

(assert (=> b!311336 m!417813))

(assert (=> b!311336 m!417157))

(assert (=> b!311334 m!416917))

(declare-fun m!417815 () Bool)

(assert (=> b!311334 m!417815))

(assert (=> b!311335 m!416913))

(declare-fun m!417817 () Bool)

(assert (=> b!311335 m!417817))

(assert (=> b!311335 m!416913))

(assert (=> b!311335 m!417817))

(declare-fun m!417819 () Bool)

(assert (=> b!311335 m!417819))

(assert (=> b!310626 d!95649))

(declare-fun d!95651 () Bool)

(assert (=> d!95651 (= (head!970 (t!43831 tokens!465)) (h!9470 (t!43831 tokens!465)))))

(assert (=> b!310626 d!95651))

(declare-fun d!95653 () Bool)

(declare-fun e!193664 () Bool)

(assert (=> d!95653 e!193664))

(declare-fun res!141593 () Bool)

(assert (=> d!95653 (=> res!141593 e!193664)))

(assert (=> d!95653 (= res!141593 (isEmpty!2793 tokens!465))))

(declare-fun lt!133350 () Unit!5756)

(declare-fun choose!2719 (LexerInterface!669 List!4082 List!4083 Token!1310) Unit!5756)

(assert (=> d!95653 (= lt!133350 (choose!2719 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!95653 (not (isEmpty!2795 rules!1920))))

(assert (=> d!95653 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!190 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!133350)))

(declare-fun b!311403 () Bool)

(declare-fun e!193663 () Bool)

(assert (=> b!311403 (= e!193664 e!193663)))

(declare-fun res!141594 () Bool)

(assert (=> b!311403 (=> (not res!141594) (not e!193663))))

(assert (=> b!311403 (= res!141594 (isDefined!773 (maxPrefix!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!311404 () Bool)

(assert (=> b!311404 (= e!193663 (= (_1!2573 (get!1395 (maxPrefix!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!970 tokens!465)))))

(assert (= (and d!95653 (not res!141593)) b!311403))

(assert (= (and b!311403 res!141594) b!311404))

(assert (=> d!95653 m!416635))

(declare-fun m!417841 () Bool)

(assert (=> d!95653 m!417841))

(assert (=> d!95653 m!416671))

(assert (=> b!311403 m!416643))

(assert (=> b!311403 m!416643))

(declare-fun m!417843 () Bool)

(assert (=> b!311403 m!417843))

(assert (=> b!311403 m!417843))

(declare-fun m!417845 () Bool)

(assert (=> b!311403 m!417845))

(assert (=> b!311404 m!416643))

(assert (=> b!311404 m!416643))

(assert (=> b!311404 m!417843))

(assert (=> b!311404 m!417843))

(declare-fun m!417847 () Bool)

(assert (=> b!311404 m!417847))

(assert (=> b!311404 m!416653))

(assert (=> b!310626 d!95653))

(declare-fun d!95659 () Bool)

(assert (=> d!95659 (= (inv!5029 (tag!1001 (rule!1400 separatorToken!170))) (= (mod (str.len (value!26630 (tag!1001 (rule!1400 separatorToken!170)))) 2) 0))))

(assert (=> b!310647 d!95659))

(declare-fun d!95661 () Bool)

(declare-fun res!141597 () Bool)

(declare-fun e!193667 () Bool)

(assert (=> d!95661 (=> (not res!141597) (not e!193667))))

(declare-fun semiInverseModEq!295 (Int Int) Bool)

(assert (=> d!95661 (= res!141597 (semiInverseModEq!295 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toValue!1546 (transformation!783 (rule!1400 separatorToken!170)))))))

(assert (=> d!95661 (= (inv!5033 (transformation!783 (rule!1400 separatorToken!170))) e!193667)))

(declare-fun b!311407 () Bool)

(declare-fun equivClasses!278 (Int Int) Bool)

(assert (=> b!311407 (= e!193667 (equivClasses!278 (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toValue!1546 (transformation!783 (rule!1400 separatorToken!170)))))))

(assert (= (and d!95661 res!141597) b!311407))

(declare-fun m!417849 () Bool)

(assert (=> d!95661 m!417849))

(declare-fun m!417851 () Bool)

(assert (=> b!311407 m!417851))

(assert (=> b!310647 d!95661))

(declare-fun d!95663 () Bool)

(assert (=> d!95663 (= (inv!5029 (tag!1001 (rule!1400 (h!9470 tokens!465)))) (= (mod (str.len (value!26630 (tag!1001 (rule!1400 (h!9470 tokens!465))))) 2) 0))))

(assert (=> b!310635 d!95663))

(declare-fun d!95665 () Bool)

(declare-fun res!141598 () Bool)

(declare-fun e!193668 () Bool)

(assert (=> d!95665 (=> (not res!141598) (not e!193668))))

(assert (=> d!95665 (= res!141598 (semiInverseModEq!295 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toValue!1546 (transformation!783 (rule!1400 (h!9470 tokens!465))))))))

(assert (=> d!95665 (= (inv!5033 (transformation!783 (rule!1400 (h!9470 tokens!465)))) e!193668)))

(declare-fun b!311408 () Bool)

(assert (=> b!311408 (= e!193668 (equivClasses!278 (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toValue!1546 (transformation!783 (rule!1400 (h!9470 tokens!465))))))))

(assert (= (and d!95665 res!141598) b!311408))

(declare-fun m!417853 () Bool)

(assert (=> d!95665 m!417853))

(declare-fun m!417855 () Bool)

(assert (=> b!311408 m!417855))

(assert (=> b!310635 d!95665))

(declare-fun d!95667 () Bool)

(assert (=> d!95667 (= (list!1723 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 lt!132944 separatorToken!170 0)) (list!1726 (c!58916 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 lt!132944 separatorToken!170 0))))))

(declare-fun bs!36141 () Bool)

(assert (= bs!36141 d!95667))

(declare-fun m!417857 () Bool)

(assert (=> bs!36141 m!417857))

(assert (=> b!310633 d!95667))

(declare-fun bs!36142 () Bool)

(declare-fun d!95669 () Bool)

(assert (= bs!36142 (and d!95669 d!95493)))

(declare-fun lambda!10635 () Int)

(assert (=> bs!36142 (not (= lambda!10635 lambda!10617))))

(declare-fun bs!36143 () Bool)

(assert (= bs!36143 (and d!95669 b!311152)))

(assert (=> bs!36143 (not (= lambda!10635 lambda!10631))))

(declare-fun bs!36144 () Bool)

(assert (= bs!36144 (and d!95669 d!95533)))

(assert (=> bs!36144 (= lambda!10635 lambda!10630)))

(declare-fun bs!36145 () Bool)

(assert (= bs!36145 (and d!95669 b!311006)))

(assert (=> bs!36145 (not (= lambda!10635 lambda!10620))))

(declare-fun bs!36146 () Bool)

(assert (= bs!36146 (and d!95669 b!310653)))

(assert (=> bs!36146 (= lambda!10635 lambda!10599)))

(declare-fun bs!36147 () Bool)

(assert (= bs!36147 (and d!95669 b!310639)))

(assert (=> bs!36147 (not (= lambda!10635 lambda!10600))))

(declare-fun bs!36148 () Bool)

(declare-fun b!311419 () Bool)

(assert (= bs!36148 (and b!311419 d!95493)))

(declare-fun lambda!10636 () Int)

(assert (=> bs!36148 (= lambda!10636 lambda!10617)))

(declare-fun bs!36149 () Bool)

(assert (= bs!36149 (and b!311419 b!311152)))

(assert (=> bs!36149 (= lambda!10636 lambda!10631)))

(declare-fun bs!36150 () Bool)

(assert (= bs!36150 (and b!311419 d!95533)))

(assert (=> bs!36150 (not (= lambda!10636 lambda!10630))))

(declare-fun bs!36151 () Bool)

(assert (= bs!36151 (and b!311419 d!95669)))

(assert (=> bs!36151 (not (= lambda!10636 lambda!10635))))

(declare-fun bs!36152 () Bool)

(assert (= bs!36152 (and b!311419 b!311006)))

(assert (=> bs!36152 (= lambda!10636 lambda!10620)))

(declare-fun bs!36153 () Bool)

(assert (= bs!36153 (and b!311419 b!310653)))

(assert (=> bs!36153 (not (= lambda!10636 lambda!10599))))

(declare-fun bs!36154 () Bool)

(assert (= bs!36154 (and b!311419 b!310639)))

(assert (=> bs!36154 (= lambda!10636 lambda!10600)))

(declare-fun b!311422 () Bool)

(declare-fun e!193678 () Bool)

(assert (=> b!311422 (= e!193678 true)))

(declare-fun b!311421 () Bool)

(declare-fun e!193677 () Bool)

(assert (=> b!311421 (= e!193677 e!193678)))

(declare-fun b!311420 () Bool)

(declare-fun e!193676 () Bool)

(assert (=> b!311420 (= e!193676 e!193677)))

(assert (=> b!311419 e!193676))

(assert (= b!311421 b!311422))

(assert (= b!311420 b!311421))

(assert (= (and b!311419 ((_ is Cons!4072) rules!1920)) b!311420))

(assert (=> b!311422 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10636))))

(assert (=> b!311422 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10636))))

(assert (=> b!311419 true))

(declare-fun b!311409 () Bool)

(declare-fun e!193674 () BalanceConc!2784)

(declare-fun call!18180 () BalanceConc!2784)

(assert (=> b!311409 (= e!193674 call!18180)))

(declare-fun bm!18171 () Bool)

(declare-fun call!18176 () Token!1310)

(assert (=> bm!18171 (= call!18176 (apply!900 lt!132944 0))))

(declare-fun b!311410 () Bool)

(declare-fun call!18177 () Token!1310)

(assert (=> b!311410 (= e!193674 (charsOf!426 call!18177))))

(declare-fun c!59059 () Bool)

(declare-fun bm!18172 () Bool)

(declare-fun c!59056 () Bool)

(assert (=> bm!18172 (= call!18180 (charsOf!426 (ite c!59059 call!18176 (ite c!59056 separatorToken!170 call!18177))))))

(declare-fun b!311411 () Bool)

(declare-fun e!193672 () Bool)

(declare-fun lt!133363 () Option!935)

(assert (=> b!311411 (= e!193672 (not (= (_1!2574 (v!14949 lt!133363)) call!18176)))))

(declare-fun b!311412 () Bool)

(declare-fun e!193670 () BalanceConc!2784)

(assert (=> b!311412 (= e!193670 (BalanceConc!2785 Empty!1388))))

(declare-fun lt!133352 () BalanceConc!2784)

(assert (=> d!95669 (= (list!1723 lt!133352) (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (dropList!198 lt!132944 0) separatorToken!170))))

(assert (=> d!95669 (= lt!133352 e!193670)))

(declare-fun c!59058 () Bool)

(assert (=> d!95669 (= c!59058 (>= 0 (size!3261 lt!132944)))))

(declare-fun lt!133361 () Unit!5756)

(assert (=> d!95669 (= lt!133361 (lemmaContentSubsetPreservesForall!142 (list!1727 lt!132944) (dropList!198 lt!132944 0) lambda!10635))))

(declare-fun e!193673 () Bool)

(assert (=> d!95669 e!193673))

(declare-fun res!141600 () Bool)

(assert (=> d!95669 (=> (not res!141600) (not e!193673))))

(assert (=> d!95669 (= res!141600 (>= 0 0))))

(assert (=> d!95669 (= (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 lt!132944 separatorToken!170 0) lt!133352)))

(declare-fun b!311413 () Bool)

(declare-fun e!193675 () BalanceConc!2784)

(declare-fun call!18178 () BalanceConc!2784)

(assert (=> b!311413 (= e!193675 call!18178)))

(declare-fun b!311414 () Bool)

(assert (=> b!311414 (= e!193673 (<= 0 (size!3261 lt!132944)))))

(declare-fun bm!18173 () Bool)

(declare-fun call!18179 () BalanceConc!2784)

(assert (=> bm!18173 (= call!18179 call!18180)))

(declare-fun bm!18174 () Bool)

(assert (=> bm!18174 (= call!18177 call!18176)))

(declare-fun b!311415 () Bool)

(declare-fun e!193671 () BalanceConc!2784)

(declare-fun lt!133360 () BalanceConc!2784)

(assert (=> b!311415 (= e!193671 (++!1112 call!18178 lt!133360))))

(declare-fun b!311416 () Bool)

(declare-fun e!193669 () Bool)

(assert (=> b!311416 (= e!193669 (= (_1!2574 (v!14949 lt!133363)) (apply!900 lt!132944 0)))))

(declare-fun bm!18175 () Bool)

(declare-fun c!59057 () Bool)

(assert (=> bm!18175 (= c!59057 c!59059)))

(assert (=> bm!18175 (= call!18178 (++!1112 e!193674 (ite c!59059 lt!133360 call!18179)))))

(declare-fun b!311417 () Bool)

(assert (=> b!311417 (= c!59056 e!193672)))

(declare-fun res!141601 () Bool)

(assert (=> b!311417 (=> (not res!141601) (not e!193672))))

(assert (=> b!311417 (= res!141601 ((_ is Some!934) lt!133363))))

(assert (=> b!311417 (= e!193675 e!193671)))

(declare-fun b!311418 () Bool)

(assert (=> b!311418 (= e!193671 (BalanceConc!2785 Empty!1388))))

(assert (=> b!311418 (= (print!394 thiss!17480 (singletonSeq!329 call!18177)) (printTailRec!355 thiss!17480 (singletonSeq!329 call!18177) 0 (BalanceConc!2785 Empty!1388)))))

(declare-fun lt!133358 () Unit!5756)

(declare-fun Unit!5772 () Unit!5756)

(assert (=> b!311418 (= lt!133358 Unit!5772)))

(declare-fun lt!133362 () Unit!5756)

(assert (=> b!311418 (= lt!133362 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!146 thiss!17480 rules!1920 (list!1723 call!18179) (list!1723 lt!133360)))))

(assert (=> b!311418 false))

(declare-fun lt!133355 () Unit!5756)

(declare-fun Unit!5773 () Unit!5756)

(assert (=> b!311418 (= lt!133355 Unit!5773)))

(assert (=> b!311419 (= e!193670 e!193675)))

(declare-fun lt!133364 () List!4083)

(assert (=> b!311419 (= lt!133364 (list!1727 lt!132944))))

(declare-fun lt!133356 () Unit!5756)

(assert (=> b!311419 (= lt!133356 (lemmaDropApply!238 lt!133364 0))))

(assert (=> b!311419 (= (head!970 (drop!253 lt!133364 0)) (apply!901 lt!133364 0))))

(declare-fun lt!133354 () Unit!5756)

(assert (=> b!311419 (= lt!133354 lt!133356)))

(declare-fun lt!133351 () List!4083)

(assert (=> b!311419 (= lt!133351 (list!1727 lt!132944))))

(declare-fun lt!133359 () Unit!5756)

(assert (=> b!311419 (= lt!133359 (lemmaDropTail!230 lt!133351 0))))

(assert (=> b!311419 (= (tail!545 (drop!253 lt!133351 0)) (drop!253 lt!133351 (+ 0 1)))))

(declare-fun lt!133353 () Unit!5756)

(assert (=> b!311419 (= lt!133353 lt!133359)))

(declare-fun lt!133357 () Unit!5756)

(assert (=> b!311419 (= lt!133357 (forallContained!336 (list!1727 lt!132944) lambda!10636 (apply!900 lt!132944 0)))))

(assert (=> b!311419 (= lt!133360 (printWithSeparatorTokenWhenNeededRec!342 thiss!17480 rules!1920 lt!132944 separatorToken!170 (+ 0 1)))))

(assert (=> b!311419 (= lt!133363 (maxPrefixZipperSequence!348 thiss!17480 rules!1920 (++!1112 (charsOf!426 (apply!900 lt!132944 0)) lt!133360)))))

(declare-fun res!141599 () Bool)

(assert (=> b!311419 (= res!141599 ((_ is Some!934) lt!133363))))

(assert (=> b!311419 (=> (not res!141599) (not e!193669))))

(assert (=> b!311419 (= c!59059 e!193669)))

(assert (= (and d!95669 res!141600) b!311414))

(assert (= (and d!95669 c!59058) b!311412))

(assert (= (and d!95669 (not c!59058)) b!311419))

(assert (= (and b!311419 res!141599) b!311416))

(assert (= (and b!311419 c!59059) b!311413))

(assert (= (and b!311419 (not c!59059)) b!311417))

(assert (= (and b!311417 res!141601) b!311411))

(assert (= (and b!311417 c!59056) b!311415))

(assert (= (and b!311417 (not c!59056)) b!311418))

(assert (= (or b!311415 b!311418) bm!18174))

(assert (= (or b!311415 b!311418) bm!18173))

(assert (= (or b!311413 b!311411 bm!18174) bm!18171))

(assert (= (or b!311413 bm!18173) bm!18172))

(assert (= (or b!311413 b!311415) bm!18175))

(assert (= (and bm!18175 c!59057) b!311409))

(assert (= (and bm!18175 (not c!59057)) b!311410))

(declare-fun m!417859 () Bool)

(assert (=> b!311418 m!417859))

(declare-fun m!417861 () Bool)

(assert (=> b!311418 m!417861))

(declare-fun m!417863 () Bool)

(assert (=> b!311418 m!417863))

(declare-fun m!417865 () Bool)

(assert (=> b!311418 m!417865))

(assert (=> b!311418 m!417861))

(assert (=> b!311418 m!417865))

(declare-fun m!417867 () Bool)

(assert (=> b!311418 m!417867))

(assert (=> b!311418 m!417859))

(assert (=> b!311418 m!417865))

(declare-fun m!417869 () Bool)

(assert (=> b!311418 m!417869))

(declare-fun m!417871 () Bool)

(assert (=> d!95669 m!417871))

(declare-fun m!417873 () Bool)

(assert (=> d!95669 m!417873))

(declare-fun m!417875 () Bool)

(assert (=> d!95669 m!417875))

(assert (=> d!95669 m!417127))

(declare-fun m!417877 () Bool)

(assert (=> d!95669 m!417877))

(assert (=> d!95669 m!417127))

(assert (=> d!95669 m!417873))

(declare-fun m!417879 () Bool)

(assert (=> d!95669 m!417879))

(assert (=> d!95669 m!417873))

(declare-fun m!417881 () Bool)

(assert (=> bm!18175 m!417881))

(declare-fun m!417883 () Bool)

(assert (=> b!311415 m!417883))

(declare-fun m!417885 () Bool)

(assert (=> b!311410 m!417885))

(declare-fun m!417887 () Bool)

(assert (=> bm!18171 m!417887))

(declare-fun m!417889 () Bool)

(assert (=> bm!18172 m!417889))

(assert (=> b!311414 m!417871))

(assert (=> b!311416 m!417887))

(declare-fun m!417891 () Bool)

(assert (=> b!311419 m!417891))

(assert (=> b!311419 m!417887))

(declare-fun m!417893 () Bool)

(assert (=> b!311419 m!417893))

(declare-fun m!417895 () Bool)

(assert (=> b!311419 m!417895))

(declare-fun m!417897 () Bool)

(assert (=> b!311419 m!417897))

(assert (=> b!311419 m!417893))

(declare-fun m!417899 () Bool)

(assert (=> b!311419 m!417899))

(declare-fun m!417901 () Bool)

(assert (=> b!311419 m!417901))

(assert (=> b!311419 m!417899))

(declare-fun m!417903 () Bool)

(assert (=> b!311419 m!417903))

(declare-fun m!417905 () Bool)

(assert (=> b!311419 m!417905))

(declare-fun m!417907 () Bool)

(assert (=> b!311419 m!417907))

(declare-fun m!417909 () Bool)

(assert (=> b!311419 m!417909))

(assert (=> b!311419 m!417127))

(assert (=> b!311419 m!417887))

(declare-fun m!417911 () Bool)

(assert (=> b!311419 m!417911))

(assert (=> b!311419 m!417887))

(assert (=> b!311419 m!417897))

(declare-fun m!417913 () Bool)

(assert (=> b!311419 m!417913))

(assert (=> b!311419 m!417909))

(declare-fun m!417915 () Bool)

(assert (=> b!311419 m!417915))

(assert (=> b!311419 m!417127))

(assert (=> b!310633 d!95669))

(declare-fun bs!36155 () Bool)

(declare-fun b!311428 () Bool)

(assert (= bs!36155 (and b!311428 d!95493)))

(declare-fun lambda!10637 () Int)

(assert (=> bs!36155 (= lambda!10637 lambda!10617)))

(declare-fun bs!36156 () Bool)

(assert (= bs!36156 (and b!311428 b!311419)))

(assert (=> bs!36156 (= lambda!10637 lambda!10636)))

(declare-fun bs!36157 () Bool)

(assert (= bs!36157 (and b!311428 b!311152)))

(assert (=> bs!36157 (= lambda!10637 lambda!10631)))

(declare-fun bs!36158 () Bool)

(assert (= bs!36158 (and b!311428 d!95533)))

(assert (=> bs!36158 (not (= lambda!10637 lambda!10630))))

(declare-fun bs!36159 () Bool)

(assert (= bs!36159 (and b!311428 d!95669)))

(assert (=> bs!36159 (not (= lambda!10637 lambda!10635))))

(declare-fun bs!36160 () Bool)

(assert (= bs!36160 (and b!311428 b!311006)))

(assert (=> bs!36160 (= lambda!10637 lambda!10620)))

(declare-fun bs!36161 () Bool)

(assert (= bs!36161 (and b!311428 b!310653)))

(assert (=> bs!36161 (not (= lambda!10637 lambda!10599))))

(declare-fun bs!36162 () Bool)

(assert (= bs!36162 (and b!311428 b!310639)))

(assert (=> bs!36162 (= lambda!10637 lambda!10600)))

(declare-fun b!311433 () Bool)

(declare-fun e!193685 () Bool)

(assert (=> b!311433 (= e!193685 true)))

(declare-fun b!311432 () Bool)

(declare-fun e!193684 () Bool)

(assert (=> b!311432 (= e!193684 e!193685)))

(declare-fun b!311431 () Bool)

(declare-fun e!193683 () Bool)

(assert (=> b!311431 (= e!193683 e!193684)))

(assert (=> b!311428 e!193683))

(assert (= b!311432 b!311433))

(assert (= b!311431 b!311432))

(assert (= (and b!311428 ((_ is Cons!4072) rules!1920)) b!311431))

(assert (=> b!311433 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10637))))

(assert (=> b!311433 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10637))))

(assert (=> b!311428 true))

(declare-fun b!311424 () Bool)

(declare-fun e!193679 () BalanceConc!2784)

(assert (=> b!311424 (= e!193679 (charsOf!426 separatorToken!170))))

(declare-fun b!311425 () Bool)

(declare-fun c!59060 () Bool)

(declare-fun lt!133370 () Option!934)

(assert (=> b!311425 (= c!59060 (and ((_ is Some!933) lt!133370) (not (= (_1!2573 (v!14948 lt!133370)) (h!9470 tokens!465)))))))

(declare-fun e!193680 () List!4081)

(declare-fun e!193681 () List!4081)

(assert (=> b!311425 (= e!193680 e!193681)))

(declare-fun b!311426 () Bool)

(declare-fun call!18182 () BalanceConc!2784)

(assert (=> b!311426 (= e!193679 call!18182)))

(declare-fun bm!18176 () Bool)

(declare-fun call!18185 () BalanceConc!2784)

(assert (=> bm!18176 (= call!18185 (charsOf!426 (h!9470 tokens!465)))))

(declare-fun b!311427 () Bool)

(assert (=> b!311427 (= e!193681 Nil!4071)))

(assert (=> b!311427 (= (print!394 thiss!17480 (singletonSeq!329 (h!9470 tokens!465))) (printTailRec!355 thiss!17480 (singletonSeq!329 (h!9470 tokens!465)) 0 (BalanceConc!2785 Empty!1388)))))

(declare-fun lt!133368 () Unit!5756)

(declare-fun Unit!5774 () Unit!5756)

(assert (=> b!311427 (= lt!133368 Unit!5774)))

(declare-fun lt!133365 () Unit!5756)

(declare-fun call!18181 () List!4081)

(declare-fun lt!133367 () List!4081)

(assert (=> b!311427 (= lt!133365 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!146 thiss!17480 rules!1920 call!18181 lt!133367))))

(assert (=> b!311427 false))

(declare-fun lt!133366 () Unit!5756)

(declare-fun Unit!5775 () Unit!5756)

(assert (=> b!311427 (= lt!133366 Unit!5775)))

(declare-fun c!59063 () Bool)

(declare-fun bm!18177 () Bool)

(declare-fun call!18183 () List!4081)

(assert (=> bm!18177 (= call!18183 (list!1723 (ite c!59063 call!18185 call!18182)))))

(declare-fun bm!18178 () Bool)

(assert (=> bm!18178 (= call!18181 (list!1723 e!193679))))

(declare-fun c!59062 () Bool)

(assert (=> bm!18178 (= c!59062 c!59060)))

(declare-fun e!193682 () List!4081)

(assert (=> b!311428 (= e!193682 e!193680)))

(declare-fun lt!133369 () Unit!5756)

(assert (=> b!311428 (= lt!133369 (forallContained!336 tokens!465 lambda!10637 (h!9470 tokens!465)))))

(assert (=> b!311428 (= lt!133367 (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 (t!43831 tokens!465) separatorToken!170))))

(assert (=> b!311428 (= lt!133370 (maxPrefix!385 thiss!17480 rules!1920 (++!1110 (list!1723 (charsOf!426 (h!9470 tokens!465))) lt!133367)))))

(assert (=> b!311428 (= c!59063 (and ((_ is Some!933) lt!133370) (= (_1!2573 (v!14948 lt!133370)) (h!9470 tokens!465))))))

(declare-fun bm!18179 () Bool)

(assert (=> bm!18179 (= call!18182 call!18185)))

(declare-fun b!311429 () Bool)

(declare-fun call!18184 () List!4081)

(assert (=> b!311429 (= e!193681 (++!1110 call!18184 lt!133367))))

(declare-fun b!311423 () Bool)

(assert (=> b!311423 (= e!193680 call!18184)))

(declare-fun d!95671 () Bool)

(declare-fun c!59061 () Bool)

(assert (=> d!95671 (= c!59061 ((_ is Cons!4073) tokens!465))))

(assert (=> d!95671 (= (printWithSeparatorTokenWhenNeededList!350 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!193682)))

(declare-fun b!311430 () Bool)

(assert (=> b!311430 (= e!193682 Nil!4071)))

(declare-fun bm!18180 () Bool)

(assert (=> bm!18180 (= call!18184 (++!1110 call!18183 (ite c!59063 lt!133367 call!18181)))))

(assert (= (and d!95671 c!59061) b!311428))

(assert (= (and d!95671 (not c!59061)) b!311430))

(assert (= (and b!311428 c!59063) b!311423))

(assert (= (and b!311428 (not c!59063)) b!311425))

(assert (= (and b!311425 c!59060) b!311429))

(assert (= (and b!311425 (not c!59060)) b!311427))

(assert (= (or b!311429 b!311427) bm!18179))

(assert (= (or b!311429 b!311427) bm!18178))

(assert (= (and bm!18178 c!59062) b!311424))

(assert (= (and bm!18178 (not c!59062)) b!311426))

(assert (= (or b!311423 bm!18179) bm!18176))

(assert (= (or b!311423 b!311429) bm!18177))

(assert (= (or b!311423 b!311429) bm!18180))

(assert (=> bm!18176 m!416693))

(assert (=> b!311428 m!416695))

(declare-fun m!417917 () Bool)

(assert (=> b!311428 m!417917))

(assert (=> b!311428 m!416677))

(assert (=> b!311428 m!417917))

(declare-fun m!417919 () Bool)

(assert (=> b!311428 m!417919))

(assert (=> b!311428 m!416693))

(declare-fun m!417921 () Bool)

(assert (=> b!311428 m!417921))

(assert (=> b!311428 m!416693))

(assert (=> b!311428 m!416695))

(assert (=> b!311427 m!416721))

(assert (=> b!311427 m!416721))

(assert (=> b!311427 m!417141))

(assert (=> b!311427 m!416721))

(declare-fun m!417923 () Bool)

(assert (=> b!311427 m!417923))

(declare-fun m!417925 () Bool)

(assert (=> b!311427 m!417925))

(declare-fun m!417927 () Bool)

(assert (=> b!311429 m!417927))

(declare-fun m!417929 () Bool)

(assert (=> bm!18177 m!417929))

(assert (=> b!311424 m!416681))

(declare-fun m!417931 () Bool)

(assert (=> bm!18180 m!417931))

(declare-fun m!417933 () Bool)

(assert (=> bm!18178 m!417933))

(assert (=> b!310633 d!95671))

(declare-fun d!95673 () Bool)

(assert (=> d!95673 (= (inv!5029 (tag!1001 (h!9469 rules!1920))) (= (mod (str.len (value!26630 (tag!1001 (h!9469 rules!1920)))) 2) 0))))

(assert (=> b!310634 d!95673))

(declare-fun d!95675 () Bool)

(declare-fun res!141602 () Bool)

(declare-fun e!193686 () Bool)

(assert (=> d!95675 (=> (not res!141602) (not e!193686))))

(assert (=> d!95675 (= res!141602 (semiInverseModEq!295 (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toValue!1546 (transformation!783 (h!9469 rules!1920)))))))

(assert (=> d!95675 (= (inv!5033 (transformation!783 (h!9469 rules!1920))) e!193686)))

(declare-fun b!311434 () Bool)

(assert (=> b!311434 (= e!193686 (equivClasses!278 (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toValue!1546 (transformation!783 (h!9469 rules!1920)))))))

(assert (= (and d!95675 res!141602) b!311434))

(declare-fun m!417935 () Bool)

(assert (=> d!95675 m!417935))

(declare-fun m!417937 () Bool)

(assert (=> b!311434 m!417937))

(assert (=> b!310634 d!95675))

(declare-fun bs!36163 () Bool)

(declare-fun d!95677 () Bool)

(assert (= bs!36163 (and d!95677 d!95493)))

(declare-fun lambda!10640 () Int)

(assert (=> bs!36163 (= lambda!10640 lambda!10617)))

(declare-fun bs!36164 () Bool)

(assert (= bs!36164 (and d!95677 b!311419)))

(assert (=> bs!36164 (= lambda!10640 lambda!10636)))

(declare-fun bs!36165 () Bool)

(assert (= bs!36165 (and d!95677 b!311152)))

(assert (=> bs!36165 (= lambda!10640 lambda!10631)))

(declare-fun bs!36166 () Bool)

(assert (= bs!36166 (and d!95677 d!95533)))

(assert (=> bs!36166 (not (= lambda!10640 lambda!10630))))

(declare-fun bs!36167 () Bool)

(assert (= bs!36167 (and d!95677 b!311428)))

(assert (=> bs!36167 (= lambda!10640 lambda!10637)))

(declare-fun bs!36168 () Bool)

(assert (= bs!36168 (and d!95677 d!95669)))

(assert (=> bs!36168 (not (= lambda!10640 lambda!10635))))

(declare-fun bs!36169 () Bool)

(assert (= bs!36169 (and d!95677 b!311006)))

(assert (=> bs!36169 (= lambda!10640 lambda!10620)))

(declare-fun bs!36170 () Bool)

(assert (= bs!36170 (and d!95677 b!310653)))

(assert (=> bs!36170 (not (= lambda!10640 lambda!10599))))

(declare-fun bs!36171 () Bool)

(assert (= bs!36171 (and d!95677 b!310639)))

(assert (=> bs!36171 (= lambda!10640 lambda!10600)))

(declare-fun b!311443 () Bool)

(declare-fun e!193695 () Bool)

(assert (=> b!311443 (= e!193695 true)))

(declare-fun b!311442 () Bool)

(declare-fun e!193694 () Bool)

(assert (=> b!311442 (= e!193694 e!193695)))

(declare-fun b!311441 () Bool)

(declare-fun e!193693 () Bool)

(assert (=> b!311441 (= e!193693 e!193694)))

(assert (=> d!95677 e!193693))

(assert (= b!311442 b!311443))

(assert (= b!311441 b!311442))

(assert (= (and d!95677 ((_ is Cons!4072) rules!1920)) b!311441))

(assert (=> b!311443 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10640))))

(assert (=> b!311443 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 rules!1920)))) (dynLambda!2236 order!3319 lambda!10640))))

(assert (=> d!95677 true))

(declare-fun lt!133373 () Bool)

(assert (=> d!95677 (= lt!133373 (forall!1080 tokens!465 lambda!10640))))

(declare-fun e!193691 () Bool)

(assert (=> d!95677 (= lt!133373 e!193691)))

(declare-fun res!141608 () Bool)

(assert (=> d!95677 (=> res!141608 e!193691)))

(assert (=> d!95677 (= res!141608 (not ((_ is Cons!4073) tokens!465)))))

(assert (=> d!95677 (not (isEmpty!2795 rules!1920))))

(assert (=> d!95677 (= (rulesProduceEachTokenIndividuallyList!269 thiss!17480 rules!1920 tokens!465) lt!133373)))

(declare-fun b!311439 () Bool)

(declare-fun e!193692 () Bool)

(assert (=> b!311439 (= e!193691 e!193692)))

(declare-fun res!141607 () Bool)

(assert (=> b!311439 (=> (not res!141607) (not e!193692))))

(assert (=> b!311439 (= res!141607 (rulesProduceIndividualToken!418 thiss!17480 rules!1920 (h!9470 tokens!465)))))

(declare-fun b!311440 () Bool)

(assert (=> b!311440 (= e!193692 (rulesProduceEachTokenIndividuallyList!269 thiss!17480 rules!1920 (t!43831 tokens!465)))))

(assert (= (and d!95677 (not res!141608)) b!311439))

(assert (= (and b!311439 res!141607) b!311440))

(declare-fun m!417939 () Bool)

(assert (=> d!95677 m!417939))

(assert (=> d!95677 m!416671))

(assert (=> b!311439 m!416749))

(declare-fun m!417941 () Bool)

(assert (=> b!311440 m!417941))

(assert (=> b!310632 d!95677))

(declare-fun d!95679 () Bool)

(declare-fun res!141613 () Bool)

(declare-fun e!193700 () Bool)

(assert (=> d!95679 (=> res!141613 e!193700)))

(assert (=> d!95679 (= res!141613 ((_ is Nil!4073) tokens!465))))

(assert (=> d!95679 (= (forall!1080 tokens!465 lambda!10599) e!193700)))

(declare-fun b!311448 () Bool)

(declare-fun e!193701 () Bool)

(assert (=> b!311448 (= e!193700 e!193701)))

(declare-fun res!141614 () Bool)

(assert (=> b!311448 (=> (not res!141614) (not e!193701))))

(assert (=> b!311448 (= res!141614 (dynLambda!2240 lambda!10599 (h!9470 tokens!465)))))

(declare-fun b!311449 () Bool)

(assert (=> b!311449 (= e!193701 (forall!1080 (t!43831 tokens!465) lambda!10599))))

(assert (= (and d!95679 (not res!141613)) b!311448))

(assert (= (and b!311448 res!141614) b!311449))

(declare-fun b_lambda!10885 () Bool)

(assert (=> (not b_lambda!10885) (not b!311448)))

(declare-fun m!417943 () Bool)

(assert (=> b!311448 m!417943))

(declare-fun m!417945 () Bool)

(assert (=> b!311449 m!417945))

(assert (=> b!310653 d!95679))

(declare-fun d!95681 () Bool)

(assert (=> d!95681 (= (get!1395 lt!132958) (v!14948 lt!132958))))

(assert (=> b!310652 d!95681))

(declare-fun d!95683 () Bool)

(assert (=> d!95683 (= (isDefined!773 lt!132958) (not (isEmpty!2803 lt!132958)))))

(declare-fun bs!36172 () Bool)

(assert (= bs!36172 d!95683))

(declare-fun m!417947 () Bool)

(assert (=> bs!36172 m!417947))

(assert (=> b!310652 d!95683))

(declare-fun b!311450 () Bool)

(declare-fun res!141619 () Bool)

(declare-fun e!193703 () Bool)

(assert (=> b!311450 (=> (not res!141619) (not e!193703))))

(declare-fun lt!133375 () Option!934)

(assert (=> b!311450 (= res!141619 (= (++!1110 (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133375)))) (_2!2573 (get!1395 lt!133375))) lt!132942))))

(declare-fun b!311451 () Bool)

(declare-fun e!193704 () Bool)

(assert (=> b!311451 (= e!193704 e!193703)))

(declare-fun res!141617 () Bool)

(assert (=> b!311451 (=> (not res!141617) (not e!193703))))

(assert (=> b!311451 (= res!141617 (isDefined!773 lt!133375))))

(declare-fun b!311452 () Bool)

(declare-fun res!141618 () Bool)

(assert (=> b!311452 (=> (not res!141618) (not e!193703))))

(assert (=> b!311452 (= res!141618 (= (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133375)))) (originalCharacters!826 (_1!2573 (get!1395 lt!133375)))))))

(declare-fun b!311453 () Bool)

(assert (=> b!311453 (= e!193703 (contains!811 rules!1920 (rule!1400 (_1!2573 (get!1395 lt!133375)))))))

(declare-fun b!311454 () Bool)

(declare-fun res!141621 () Bool)

(assert (=> b!311454 (=> (not res!141621) (not e!193703))))

(assert (=> b!311454 (= res!141621 (matchR!325 (regex!783 (rule!1400 (_1!2573 (get!1395 lt!133375)))) (list!1723 (charsOf!426 (_1!2573 (get!1395 lt!133375))))))))

(declare-fun b!311455 () Bool)

(declare-fun res!141615 () Bool)

(assert (=> b!311455 (=> (not res!141615) (not e!193703))))

(assert (=> b!311455 (= res!141615 (= (value!26631 (_1!2573 (get!1395 lt!133375))) (apply!902 (transformation!783 (rule!1400 (_1!2573 (get!1395 lt!133375)))) (seqFromList!931 (originalCharacters!826 (_1!2573 (get!1395 lt!133375)))))))))

(declare-fun bm!18181 () Bool)

(declare-fun call!18186 () Option!934)

(assert (=> bm!18181 (= call!18186 (maxPrefixOneRule!175 thiss!17480 (h!9469 rules!1920) lt!132942))))

(declare-fun d!95685 () Bool)

(assert (=> d!95685 e!193704))

(declare-fun res!141620 () Bool)

(assert (=> d!95685 (=> res!141620 e!193704)))

(assert (=> d!95685 (= res!141620 (isEmpty!2803 lt!133375))))

(declare-fun e!193702 () Option!934)

(assert (=> d!95685 (= lt!133375 e!193702)))

(declare-fun c!59064 () Bool)

(assert (=> d!95685 (= c!59064 (and ((_ is Cons!4072) rules!1920) ((_ is Nil!4072) (t!43830 rules!1920))))))

(declare-fun lt!133374 () Unit!5756)

(declare-fun lt!133378 () Unit!5756)

(assert (=> d!95685 (= lt!133374 lt!133378)))

(assert (=> d!95685 (isPrefix!443 lt!132942 lt!132942)))

(assert (=> d!95685 (= lt!133378 (lemmaIsPrefixRefl!241 lt!132942 lt!132942))))

(assert (=> d!95685 (rulesValidInductive!236 thiss!17480 rules!1920)))

(assert (=> d!95685 (= (maxPrefix!385 thiss!17480 rules!1920 lt!132942) lt!133375)))

(declare-fun b!311456 () Bool)

(assert (=> b!311456 (= e!193702 call!18186)))

(declare-fun b!311457 () Bool)

(declare-fun lt!133376 () Option!934)

(declare-fun lt!133377 () Option!934)

(assert (=> b!311457 (= e!193702 (ite (and ((_ is None!933) lt!133376) ((_ is None!933) lt!133377)) None!933 (ite ((_ is None!933) lt!133377) lt!133376 (ite ((_ is None!933) lt!133376) lt!133377 (ite (>= (size!3257 (_1!2573 (v!14948 lt!133376))) (size!3257 (_1!2573 (v!14948 lt!133377)))) lt!133376 lt!133377)))))))

(assert (=> b!311457 (= lt!133376 call!18186)))

(assert (=> b!311457 (= lt!133377 (maxPrefix!385 thiss!17480 (t!43830 rules!1920) lt!132942))))

(declare-fun b!311458 () Bool)

(declare-fun res!141616 () Bool)

(assert (=> b!311458 (=> (not res!141616) (not e!193703))))

(assert (=> b!311458 (= res!141616 (< (size!3260 (_2!2573 (get!1395 lt!133375))) (size!3260 lt!132942)))))

(assert (= (and d!95685 c!59064) b!311456))

(assert (= (and d!95685 (not c!59064)) b!311457))

(assert (= (or b!311456 b!311457) bm!18181))

(assert (= (and d!95685 (not res!141620)) b!311451))

(assert (= (and b!311451 res!141617) b!311452))

(assert (= (and b!311452 res!141618) b!311458))

(assert (= (and b!311458 res!141616) b!311450))

(assert (= (and b!311450 res!141619) b!311455))

(assert (= (and b!311455 res!141615) b!311454))

(assert (= (and b!311454 res!141621) b!311453))

(declare-fun m!417949 () Bool)

(assert (=> b!311454 m!417949))

(declare-fun m!417951 () Bool)

(assert (=> b!311454 m!417951))

(assert (=> b!311454 m!417951))

(declare-fun m!417953 () Bool)

(assert (=> b!311454 m!417953))

(assert (=> b!311454 m!417953))

(declare-fun m!417955 () Bool)

(assert (=> b!311454 m!417955))

(assert (=> b!311458 m!417949))

(declare-fun m!417957 () Bool)

(assert (=> b!311458 m!417957))

(assert (=> b!311458 m!417157))

(assert (=> b!311450 m!417949))

(assert (=> b!311450 m!417951))

(assert (=> b!311450 m!417951))

(assert (=> b!311450 m!417953))

(assert (=> b!311450 m!417953))

(declare-fun m!417959 () Bool)

(assert (=> b!311450 m!417959))

(assert (=> b!311455 m!417949))

(declare-fun m!417961 () Bool)

(assert (=> b!311455 m!417961))

(assert (=> b!311455 m!417961))

(declare-fun m!417963 () Bool)

(assert (=> b!311455 m!417963))

(assert (=> b!311452 m!417949))

(assert (=> b!311452 m!417951))

(assert (=> b!311452 m!417951))

(assert (=> b!311452 m!417953))

(declare-fun m!417965 () Bool)

(assert (=> d!95685 m!417965))

(declare-fun m!417967 () Bool)

(assert (=> d!95685 m!417967))

(declare-fun m!417969 () Bool)

(assert (=> d!95685 m!417969))

(assert (=> d!95685 m!416853))

(declare-fun m!417971 () Bool)

(assert (=> b!311457 m!417971))

(declare-fun m!417973 () Bool)

(assert (=> bm!18181 m!417973))

(declare-fun m!417975 () Bool)

(assert (=> b!311451 m!417975))

(assert (=> b!311453 m!417949))

(declare-fun m!417977 () Bool)

(assert (=> b!311453 m!417977))

(assert (=> b!310652 d!95685))

(declare-fun b!311463 () Bool)

(declare-fun e!193707 () Bool)

(declare-fun tp_is_empty!1887 () Bool)

(declare-fun tp!109476 () Bool)

(assert (=> b!311463 (= e!193707 (and tp_is_empty!1887 tp!109476))))

(assert (=> b!310640 (= tp!109401 e!193707)))

(assert (= (and b!310640 ((_ is Cons!4071) (originalCharacters!826 (h!9470 tokens!465)))) b!311463))

(declare-fun b!311475 () Bool)

(declare-fun e!193710 () Bool)

(declare-fun tp!109488 () Bool)

(declare-fun tp!109487 () Bool)

(assert (=> b!311475 (= e!193710 (and tp!109488 tp!109487))))

(assert (=> b!310647 (= tp!109398 e!193710)))

(declare-fun b!311477 () Bool)

(declare-fun tp!109489 () Bool)

(declare-fun tp!109490 () Bool)

(assert (=> b!311477 (= e!193710 (and tp!109489 tp!109490))))

(declare-fun b!311474 () Bool)

(assert (=> b!311474 (= e!193710 tp_is_empty!1887)))

(declare-fun b!311476 () Bool)

(declare-fun tp!109491 () Bool)

(assert (=> b!311476 (= e!193710 tp!109491)))

(assert (= (and b!310647 ((_ is ElementMatch!1007) (regex!783 (rule!1400 separatorToken!170)))) b!311474))

(assert (= (and b!310647 ((_ is Concat!1813) (regex!783 (rule!1400 separatorToken!170)))) b!311475))

(assert (= (and b!310647 ((_ is Star!1007) (regex!783 (rule!1400 separatorToken!170)))) b!311476))

(assert (= (and b!310647 ((_ is Union!1007) (regex!783 (rule!1400 separatorToken!170)))) b!311477))

(declare-fun b!311479 () Bool)

(declare-fun e!193711 () Bool)

(declare-fun tp!109493 () Bool)

(declare-fun tp!109492 () Bool)

(assert (=> b!311479 (= e!193711 (and tp!109493 tp!109492))))

(assert (=> b!310635 (= tp!109400 e!193711)))

(declare-fun b!311481 () Bool)

(declare-fun tp!109494 () Bool)

(declare-fun tp!109495 () Bool)

(assert (=> b!311481 (= e!193711 (and tp!109494 tp!109495))))

(declare-fun b!311478 () Bool)

(assert (=> b!311478 (= e!193711 tp_is_empty!1887)))

(declare-fun b!311480 () Bool)

(declare-fun tp!109496 () Bool)

(assert (=> b!311480 (= e!193711 tp!109496)))

(assert (= (and b!310635 ((_ is ElementMatch!1007) (regex!783 (rule!1400 (h!9470 tokens!465))))) b!311478))

(assert (= (and b!310635 ((_ is Concat!1813) (regex!783 (rule!1400 (h!9470 tokens!465))))) b!311479))

(assert (= (and b!310635 ((_ is Star!1007) (regex!783 (rule!1400 (h!9470 tokens!465))))) b!311480))

(assert (= (and b!310635 ((_ is Union!1007) (regex!783 (rule!1400 (h!9470 tokens!465))))) b!311481))

(declare-fun b!311492 () Bool)

(declare-fun b_free!11093 () Bool)

(declare-fun b_next!11093 () Bool)

(assert (=> b!311492 (= b_free!11093 (not b_next!11093))))

(declare-fun tp!109505 () Bool)

(declare-fun b_and!26457 () Bool)

(assert (=> b!311492 (= tp!109505 b_and!26457)))

(declare-fun b_free!11095 () Bool)

(declare-fun b_next!11095 () Bool)

(assert (=> b!311492 (= b_free!11095 (not b_next!11095))))

(declare-fun t!43893 () Bool)

(declare-fun tb!19853 () Bool)

(assert (=> (and b!311492 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170)))) t!43893) tb!19853))

(declare-fun result!23882 () Bool)

(assert (= result!23882 result!23832))

(assert (=> b!310770 t!43893))

(declare-fun t!43895 () Bool)

(declare-fun tb!19855 () Bool)

(assert (=> (and b!311492 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465))))) t!43895) tb!19855))

(declare-fun result!23884 () Bool)

(assert (= result!23884 result!23854))

(assert (=> b!310912 t!43895))

(assert (=> d!95569 t!43893))

(assert (=> d!95575 t!43895))

(declare-fun tp!109508 () Bool)

(declare-fun b_and!26459 () Bool)

(assert (=> b!311492 (= tp!109508 (and (=> t!43893 result!23882) (=> t!43895 result!23884) b_and!26459))))

(declare-fun e!193721 () Bool)

(assert (=> b!311492 (= e!193721 (and tp!109505 tp!109508))))

(declare-fun b!311491 () Bool)

(declare-fun e!193722 () Bool)

(declare-fun tp!109506 () Bool)

(assert (=> b!311491 (= e!193722 (and tp!109506 (inv!5029 (tag!1001 (h!9469 (t!43830 rules!1920)))) (inv!5033 (transformation!783 (h!9469 (t!43830 rules!1920)))) e!193721))))

(declare-fun b!311490 () Bool)

(declare-fun e!193723 () Bool)

(declare-fun tp!109507 () Bool)

(assert (=> b!311490 (= e!193723 (and e!193722 tp!109507))))

(assert (=> b!310644 (= tp!109402 e!193723)))

(assert (= b!311491 b!311492))

(assert (= b!311490 b!311491))

(assert (= (and b!310644 ((_ is Cons!4072) (t!43830 rules!1920))) b!311490))

(declare-fun m!417979 () Bool)

(assert (=> b!311491 m!417979))

(declare-fun m!417981 () Bool)

(assert (=> b!311491 m!417981))

(declare-fun b!311495 () Bool)

(declare-fun e!193726 () Bool)

(assert (=> b!311495 (= e!193726 true)))

(declare-fun b!311494 () Bool)

(declare-fun e!193725 () Bool)

(assert (=> b!311494 (= e!193725 e!193726)))

(declare-fun b!311493 () Bool)

(declare-fun e!193724 () Bool)

(assert (=> b!311493 (= e!193724 e!193725)))

(assert (=> b!310662 e!193724))

(assert (= b!311494 b!311495))

(assert (= b!311493 b!311494))

(assert (= (and b!310662 ((_ is Cons!4072) (t!43830 rules!1920))) b!311493))

(assert (=> b!311495 (< (dynLambda!2235 order!3317 (toValue!1546 (transformation!783 (h!9469 (t!43830 rules!1920))))) (dynLambda!2236 order!3319 lambda!10600))))

(assert (=> b!311495 (< (dynLambda!2237 order!3321 (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920))))) (dynLambda!2236 order!3319 lambda!10600))))

(declare-fun b!311497 () Bool)

(declare-fun e!193727 () Bool)

(declare-fun tp!109510 () Bool)

(declare-fun tp!109509 () Bool)

(assert (=> b!311497 (= e!193727 (and tp!109510 tp!109509))))

(assert (=> b!310634 (= tp!109409 e!193727)))

(declare-fun b!311499 () Bool)

(declare-fun tp!109511 () Bool)

(declare-fun tp!109512 () Bool)

(assert (=> b!311499 (= e!193727 (and tp!109511 tp!109512))))

(declare-fun b!311496 () Bool)

(assert (=> b!311496 (= e!193727 tp_is_empty!1887)))

(declare-fun b!311498 () Bool)

(declare-fun tp!109513 () Bool)

(assert (=> b!311498 (= e!193727 tp!109513)))

(assert (= (and b!310634 ((_ is ElementMatch!1007) (regex!783 (h!9469 rules!1920)))) b!311496))

(assert (= (and b!310634 ((_ is Concat!1813) (regex!783 (h!9469 rules!1920)))) b!311497))

(assert (= (and b!310634 ((_ is Star!1007) (regex!783 (h!9469 rules!1920)))) b!311498))

(assert (= (and b!310634 ((_ is Union!1007) (regex!783 (h!9469 rules!1920)))) b!311499))

(declare-fun b!311500 () Bool)

(declare-fun e!193728 () Bool)

(declare-fun tp!109514 () Bool)

(assert (=> b!311500 (= e!193728 (and tp_is_empty!1887 tp!109514))))

(assert (=> b!310621 (= tp!109397 e!193728)))

(assert (= (and b!310621 ((_ is Cons!4071) (originalCharacters!826 separatorToken!170))) b!311500))

(declare-fun b!311514 () Bool)

(declare-fun b_free!11097 () Bool)

(declare-fun b_next!11097 () Bool)

(assert (=> b!311514 (= b_free!11097 (not b_next!11097))))

(declare-fun tp!109526 () Bool)

(declare-fun b_and!26461 () Bool)

(assert (=> b!311514 (= tp!109526 b_and!26461)))

(declare-fun b_free!11099 () Bool)

(declare-fun b_next!11099 () Bool)

(assert (=> b!311514 (= b_free!11099 (not b_next!11099))))

(declare-fun t!43897 () Bool)

(declare-fun tb!19857 () Bool)

(assert (=> (and b!311514 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170)))) t!43897) tb!19857))

(declare-fun result!23888 () Bool)

(assert (= result!23888 result!23832))

(assert (=> b!310770 t!43897))

(declare-fun t!43899 () Bool)

(declare-fun tb!19859 () Bool)

(assert (=> (and b!311514 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465))))) t!43899) tb!19859))

(declare-fun result!23890 () Bool)

(assert (= result!23890 result!23854))

(assert (=> b!310912 t!43899))

(assert (=> d!95569 t!43897))

(assert (=> d!95575 t!43899))

(declare-fun b_and!26463 () Bool)

(declare-fun tp!109528 () Bool)

(assert (=> b!311514 (= tp!109528 (and (=> t!43897 result!23888) (=> t!43899 result!23890) b_and!26463))))

(declare-fun e!193742 () Bool)

(assert (=> b!310620 (= tp!109403 e!193742)))

(declare-fun tp!109527 () Bool)

(declare-fun e!193741 () Bool)

(declare-fun e!193743 () Bool)

(declare-fun b!311512 () Bool)

(assert (=> b!311512 (= e!193743 (and (inv!21 (value!26631 (h!9470 (t!43831 tokens!465)))) e!193741 tp!109527))))

(declare-fun e!193746 () Bool)

(assert (=> b!311514 (= e!193746 (and tp!109526 tp!109528))))

(declare-fun tp!109525 () Bool)

(declare-fun b!311513 () Bool)

(assert (=> b!311513 (= e!193741 (and tp!109525 (inv!5029 (tag!1001 (rule!1400 (h!9470 (t!43831 tokens!465))))) (inv!5033 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) e!193746))))

(declare-fun b!311511 () Bool)

(declare-fun tp!109529 () Bool)

(assert (=> b!311511 (= e!193742 (and (inv!5032 (h!9470 (t!43831 tokens!465))) e!193743 tp!109529))))

(assert (= b!311513 b!311514))

(assert (= b!311512 b!311513))

(assert (= b!311511 b!311512))

(assert (= (and b!310620 ((_ is Cons!4073) (t!43831 tokens!465))) b!311511))

(declare-fun m!417983 () Bool)

(assert (=> b!311512 m!417983))

(declare-fun m!417985 () Bool)

(assert (=> b!311513 m!417985))

(declare-fun m!417987 () Bool)

(assert (=> b!311513 m!417987))

(declare-fun m!417989 () Bool)

(assert (=> b!311511 m!417989))

(declare-fun b_lambda!10887 () Bool)

(assert (= b_lambda!10859 (or (and b!311514 b_free!11099 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310649 b_free!11079 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310625 b_free!11075 (= (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310650 b_free!11083) (and b!311492 b_free!11095 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) b_lambda!10887)))

(declare-fun b_lambda!10889 () Bool)

(assert (= b_lambda!10851 (or b!310639 b_lambda!10889)))

(declare-fun bs!36173 () Bool)

(declare-fun d!95687 () Bool)

(assert (= bs!36173 (and d!95687 b!310639)))

(assert (=> bs!36173 (= (dynLambda!2240 lambda!10600 (h!9470 tokens!465)) (rulesProduceIndividualToken!418 thiss!17480 rules!1920 (h!9470 tokens!465)))))

(assert (=> bs!36173 m!416749))

(assert (=> d!95443 d!95687))

(declare-fun b_lambda!10891 () Bool)

(assert (= b_lambda!10867 (or (and b!311514 b_free!11099 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!311492 b_free!11095 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!310650 b_free!11083 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!310625 b_free!11075) (and b!310649 b_free!11079 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) b_lambda!10891)))

(declare-fun b_lambda!10893 () Bool)

(assert (= b_lambda!10853 (or (and b!311514 b_free!11099 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!311492 b_free!11095 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!310650 b_free!11083 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) (and b!310625 b_free!11075) (and b!310649 b_free!11079 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))))) b_lambda!10893)))

(declare-fun b_lambda!10895 () Bool)

(assert (= b_lambda!10869 (or (and b!311514 b_free!11099 (= (toChars!1405 (transformation!783 (rule!1400 (h!9470 (t!43831 tokens!465))))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310649 b_free!11079 (= (toChars!1405 (transformation!783 (h!9469 rules!1920))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310625 b_free!11075 (= (toChars!1405 (transformation!783 (rule!1400 separatorToken!170))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) (and b!310650 b_free!11083) (and b!311492 b_free!11095 (= (toChars!1405 (transformation!783 (h!9469 (t!43830 rules!1920)))) (toChars!1405 (transformation!783 (rule!1400 (h!9470 tokens!465)))))) b_lambda!10895)))

(declare-fun b_lambda!10897 () Bool)

(assert (= b_lambda!10885 (or b!310653 b_lambda!10897)))

(declare-fun bs!36174 () Bool)

(declare-fun d!95689 () Bool)

(assert (= bs!36174 (and d!95689 b!310653)))

(assert (=> bs!36174 (= (dynLambda!2240 lambda!10599 (h!9470 tokens!465)) (not (isSeparator!783 (rule!1400 (h!9470 tokens!465)))))))

(assert (=> b!311448 d!95689))

(check-sat (not b!311307) (not b!311151) (not b_next!11073) (not d!95645) (not b!311427) (not b!310956) (not d!95637) (not b!311158) (not bm!18176) (not d!95515) (not d!95443) (not b!310783) (not d!95533) (not b!311335) (not b_next!11097) (not b!310835) (not b!311153) (not b!311002) (not d!95509) (not d!95481) b_and!26463 (not b!310791) (not b!311009) (not b!311476) (not bm!18172) (not bm!18150) (not b!310829) (not d!95513) (not b!310789) (not d!95643) (not b!311183) (not b!311429) (not tb!19821) (not b!311440) (not b!311418) (not b!311451) (not b!310764) (not b!311310) b_and!26437 (not b!311481) (not d!95677) (not bm!18100) (not b!311403) (not b!311313) (not b!311500) (not d!95519) (not d!95431) (not b_lambda!10891) (not d!95647) (not b!311454) (not bm!18181) (not d!95669) (not b!311441) (not b!310912) (not b!310771) (not d!95633) (not b!310931) (not d!95433) (not b!311424) (not b!311152) (not b!311480) b_and!26459 (not bm!18171) (not b!310784) (not b!310765) (not b_next!11093) (not b!311497) (not d!95685) b_and!26457 (not d!95665) (not d!95455) (not b!311450) (not d!95569) (not d!95449) (not bm!18151) (not b!310948) (not d!95461) (not b!311452) (not b!311157) (not d!95661) (not d!95683) (not b!311419) (not bm!18175) (not bm!18129) (not b_next!11099) (not b!310894) (not b!311513) (not b!310703) (not d!95507) (not bs!36173) (not b!310754) (not b!310755) (not b!311311) (not b!310770) (not b!311007) (not b!311449) (not b!310892) (not d!95453) (not b!311309) (not d!95441) (not b!310913) (not b!311143) (not b!310701) (not b!311414) (not b!311185) (not b!310705) (not d!95575) (not d!95653) (not d!95491) (not b!311181) (not bm!18097) (not bm!18170) (not b!311312) (not bm!18131) (not b!310951) (not b!311511) b_and!26393 (not b!311498) (not b_next!11083) (not b!311463) (not b!310793) (not d!95435) (not d!95581) (not b!310756) (not bm!18178) (not b!310928) (not d!95571) (not bm!18154) (not b!311336) (not b!311315) (not d!95531) (not b!311179) (not b!310932) (not b!310752) (not b!310830) (not b!311005) (not b!310947) (not bm!18180) (not tb!19839) (not b!311306) (not b!311324) b_and!26439 b_and!26461 (not b!311477) (not b!311178) (not b!310955) (not b!311457) (not b!310750) (not d!95517) (not b!310840) (not b!311493) (not b!310751) (not d!95579) (not b!311415) (not b!311147) (not b!311180) (not b!310785) (not b!310776) (not b!311491) (not b!310910) (not b!310927) (not b!310933) (not b!310905) (not b_next!11079) (not b!310943) (not b!311317) (not b!311455) (not b_next!11081) (not b!311404) (not b!311434) (not b!311416) (not bm!18157) (not b!310838) (not b!311475) tp_is_empty!1887 (not d!95503) (not b!311408) (not b!311334) (not b!311458) (not b_lambda!10887) (not d!95577) (not b!310753) (not b!311182) b_and!26389 (not b!311305) (not b!311148) (not b!311149) (not b_lambda!10897) (not b!310788) (not b_next!11095) (not b!311407) (not b!311318) (not b!310944) (not b!311428) (not b_next!11075) (not b_lambda!10893) (not d!95437) (not b!310914) (not b_lambda!10889) (not b!310759) (not b_lambda!10895) (not d!95583) (not b!311512) (not d!95479) (not b!311439) (not b!311410) (not b!310834) (not bm!18177) (not d!95505) (not b!311006) (not bm!18133) (not d!95667) b_and!26441 (not d!95459) (not b!311314) (not d!95493) (not bm!18130) (not b!311431) (not b!311490) (not b_next!11077) (not d!95573) (not b!310952) b_and!26397 (not b!311186) (not d!95487) (not b!311453) (not b!311420) (not b!311499) (not b!311479) (not d!95675) (not d!95511))
(check-sat (not b_next!11073) (not b_next!11097) b_and!26463 b_and!26437 b_and!26457 (not b_next!11099) b_and!26389 (not b_next!11095) (not b_next!11075) b_and!26441 (not b_next!11077) b_and!26397 b_and!26459 (not b_next!11093) b_and!26393 (not b_next!11083) b_and!26439 b_and!26461 (not b_next!11079) (not b_next!11081))

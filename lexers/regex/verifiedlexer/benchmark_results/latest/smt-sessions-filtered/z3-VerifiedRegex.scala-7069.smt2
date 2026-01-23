; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374848 () Bool)

(assert start!374848)

(declare-fun b!3982700 () Bool)

(declare-fun b_free!110561 () Bool)

(declare-fun b_next!111265 () Bool)

(assert (=> b!3982700 (= b_free!110561 (not b_next!111265))))

(declare-fun tp!1213945 () Bool)

(declare-fun b_and!306111 () Bool)

(assert (=> b!3982700 (= tp!1213945 b_and!306111)))

(declare-fun b_free!110563 () Bool)

(declare-fun b_next!111267 () Bool)

(assert (=> b!3982700 (= b_free!110563 (not b_next!111267))))

(declare-fun tp!1213946 () Bool)

(declare-fun b_and!306113 () Bool)

(assert (=> b!3982700 (= tp!1213946 b_and!306113)))

(declare-fun b!3982698 () Bool)

(declare-fun b_free!110565 () Bool)

(declare-fun b_next!111269 () Bool)

(assert (=> b!3982698 (= b_free!110565 (not b_next!111269))))

(declare-fun tp!1213934 () Bool)

(declare-fun b_and!306115 () Bool)

(assert (=> b!3982698 (= tp!1213934 b_and!306115)))

(declare-fun b_free!110567 () Bool)

(declare-fun b_next!111271 () Bool)

(assert (=> b!3982698 (= b_free!110567 (not b_next!111271))))

(declare-fun tp!1213942 () Bool)

(declare-fun b_and!306117 () Bool)

(assert (=> b!3982698 (= tp!1213942 b_and!306117)))

(declare-fun b!3982694 () Bool)

(declare-fun e!2468277 () Bool)

(declare-fun tp_is_empty!20233 () Bool)

(declare-fun tp!1213944 () Bool)

(assert (=> b!3982694 (= e!2468277 (and tp_is_empty!20233 tp!1213944))))

(declare-fun res!1614475 () Bool)

(declare-fun e!2468283 () Bool)

(assert (=> start!374848 (=> (not res!1614475) (not e!2468283))))

(declare-datatypes ((LexerInterface!6315 0))(
  ( (LexerInterfaceExt!6312 (__x!26129 Int)) (Lexer!6313) )
))
(declare-fun thiss!21717 () LexerInterface!6315)

(get-info :version)

(assert (=> start!374848 (= res!1614475 ((_ is Lexer!6313) thiss!21717))))

(assert (=> start!374848 e!2468283))

(assert (=> start!374848 e!2468277))

(declare-datatypes ((C!23448 0))(
  ( (C!23449 (val!13818 Int)) )
))
(declare-datatypes ((List!42706 0))(
  ( (Nil!42582) (Cons!42582 (h!48002 C!23448) (t!331409 List!42706)) )
))
(declare-datatypes ((IArray!25879 0))(
  ( (IArray!25880 (innerList!12997 List!42706)) )
))
(declare-datatypes ((Conc!12937 0))(
  ( (Node!12937 (left!32198 Conc!12937) (right!32528 Conc!12937) (csize!26104 Int) (cheight!13148 Int)) (Leaf!20007 (xs!16243 IArray!25879) (csize!26105 Int)) (Empty!12937) )
))
(declare-datatypes ((BalanceConc!25468 0))(
  ( (BalanceConc!25469 (c!689856 Conc!12937)) )
))
(declare-datatypes ((List!42707 0))(
  ( (Nil!42583) (Cons!42583 (h!48003 (_ BitVec 16)) (t!331410 List!42707)) )
))
(declare-datatypes ((TokenValue!6956 0))(
  ( (FloatLiteralValue!13912 (text!49137 List!42707)) (TokenValueExt!6955 (__x!26130 Int)) (Broken!34780 (value!212299 List!42707)) (Object!7079) (End!6956) (Def!6956) (Underscore!6956) (Match!6956) (Else!6956) (Error!6956) (Case!6956) (If!6956) (Extends!6956) (Abstract!6956) (Class!6956) (Val!6956) (DelimiterValue!13912 (del!7016 List!42707)) (KeywordValue!6962 (value!212300 List!42707)) (CommentValue!13912 (value!212301 List!42707)) (WhitespaceValue!13912 (value!212302 List!42707)) (IndentationValue!6956 (value!212303 List!42707)) (String!48497) (Int32!6956) (Broken!34781 (value!212304 List!42707)) (Boolean!6957) (Unit!61255) (OperatorValue!6959 (op!7016 List!42707)) (IdentifierValue!13912 (value!212305 List!42707)) (IdentifierValue!13913 (value!212306 List!42707)) (WhitespaceValue!13913 (value!212307 List!42707)) (True!13912) (False!13912) (Broken!34782 (value!212308 List!42707)) (Broken!34783 (value!212309 List!42707)) (True!13913) (RightBrace!6956) (RightBracket!6956) (Colon!6956) (Null!6956) (Comma!6956) (LeftBracket!6956) (False!13913) (LeftBrace!6956) (ImaginaryLiteralValue!6956 (text!49138 List!42707)) (StringLiteralValue!20868 (value!212310 List!42707)) (EOFValue!6956 (value!212311 List!42707)) (IdentValue!6956 (value!212312 List!42707)) (DelimiterValue!13913 (value!212313 List!42707)) (DedentValue!6956 (value!212314 List!42707)) (NewLineValue!6956 (value!212315 List!42707)) (IntegerValue!20868 (value!212316 (_ BitVec 32)) (text!49139 List!42707)) (IntegerValue!20869 (value!212317 Int) (text!49140 List!42707)) (Times!6956) (Or!6956) (Equal!6956) (Minus!6956) (Broken!34784 (value!212318 List!42707)) (And!6956) (Div!6956) (LessEqual!6956) (Mod!6956) (Concat!18587) (Not!6956) (Plus!6956) (SpaceValue!6956 (value!212319 List!42707)) (IntegerValue!20870 (value!212320 Int) (text!49141 List!42707)) (StringLiteralValue!20869 (text!49142 List!42707)) (FloatLiteralValue!13913 (text!49143 List!42707)) (BytesLiteralValue!6956 (value!212321 List!42707)) (CommentValue!13913 (value!212322 List!42707)) (StringLiteralValue!20870 (value!212323 List!42707)) (ErrorTokenValue!6956 (msg!7017 List!42707)) )
))
(declare-datatypes ((Regex!11631 0))(
  ( (ElementMatch!11631 (c!689857 C!23448)) (Concat!18588 (regOne!23774 Regex!11631) (regTwo!23774 Regex!11631)) (EmptyExpr!11631) (Star!11631 (reg!11960 Regex!11631)) (EmptyLang!11631) (Union!11631 (regOne!23775 Regex!11631) (regTwo!23775 Regex!11631)) )
))
(declare-datatypes ((String!48498 0))(
  ( (String!48499 (value!212324 String)) )
))
(declare-datatypes ((TokenValueInjection!13340 0))(
  ( (TokenValueInjection!13341 (toValue!9214 Int) (toChars!9073 Int)) )
))
(declare-datatypes ((Rule!13252 0))(
  ( (Rule!13253 (regex!6726 Regex!11631) (tag!7586 String!48498) (isSeparator!6726 Bool) (transformation!6726 TokenValueInjection!13340)) )
))
(declare-datatypes ((Token!12590 0))(
  ( (Token!12591 (value!212325 TokenValue!6956) (rule!9734 Rule!13252) (size!31852 Int) (originalCharacters!7326 List!42706)) )
))
(declare-fun token!484 () Token!12590)

(declare-fun e!2468284 () Bool)

(declare-fun inv!56884 (Token!12590) Bool)

(assert (=> start!374848 (and (inv!56884 token!484) e!2468284)))

(declare-fun e!2468274 () Bool)

(assert (=> start!374848 e!2468274))

(declare-fun e!2468268 () Bool)

(assert (=> start!374848 e!2468268))

(declare-fun e!2468263 () Bool)

(assert (=> start!374848 e!2468263))

(assert (=> start!374848 true))

(declare-fun e!2468289 () Bool)

(assert (=> start!374848 e!2468289))

(declare-fun e!2468266 () Bool)

(assert (=> start!374848 e!2468266))

(declare-fun b!3982695 () Bool)

(declare-fun res!1614460 () Bool)

(declare-fun e!2468272 () Bool)

(assert (=> b!3982695 (=> res!1614460 e!2468272)))

(declare-fun lt!1399865 () List!42706)

(declare-fun lt!1399854 () List!42706)

(assert (=> b!3982695 (= res!1614460 (not (= lt!1399865 lt!1399854)))))

(declare-fun b!3982696 () Bool)

(declare-fun e!2468278 () Bool)

(declare-fun tp!1213935 () Bool)

(assert (=> b!3982696 (= e!2468289 (and e!2468278 tp!1213935))))

(declare-fun b!3982697 () Bool)

(declare-fun e!2468273 () Bool)

(declare-fun e!2468279 () Bool)

(assert (=> b!3982697 (= e!2468273 e!2468279)))

(declare-fun res!1614451 () Bool)

(assert (=> b!3982697 (=> res!1614451 e!2468279)))

(declare-datatypes ((tuple2!41804 0))(
  ( (tuple2!41805 (_1!24036 Token!12590) (_2!24036 List!42706)) )
))
(declare-datatypes ((Option!9140 0))(
  ( (None!9139) (Some!9139 (v!39487 tuple2!41804)) )
))
(declare-fun lt!1399889 () Option!9140)

(declare-fun lt!1399870 () Option!9140)

(assert (=> b!3982697 (= res!1614451 (not (= lt!1399889 (Some!9139 (v!39487 lt!1399870)))))))

(declare-fun lt!1399895 () List!42706)

(declare-fun newSuffixResult!27 () List!42706)

(declare-fun isPrefix!3813 (List!42706 List!42706) Bool)

(declare-fun ++!11128 (List!42706 List!42706) List!42706)

(assert (=> b!3982697 (isPrefix!3813 lt!1399895 (++!11128 lt!1399895 newSuffixResult!27))))

(declare-datatypes ((Unit!61256 0))(
  ( (Unit!61257) )
))
(declare-fun lt!1399850 () Unit!61256)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2656 (List!42706 List!42706) Unit!61256)

(assert (=> b!3982697 (= lt!1399850 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399895 newSuffixResult!27))))

(assert (=> b!3982697 (isPrefix!3813 lt!1399895 lt!1399865)))

(assert (=> b!3982697 (= lt!1399865 (++!11128 lt!1399895 (_2!24036 (v!39487 lt!1399870))))))

(declare-fun lt!1399887 () Unit!61256)

(assert (=> b!3982697 (= lt!1399887 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399895 (_2!24036 (v!39487 lt!1399870))))))

(declare-fun lt!1399869 () Int)

(declare-fun lt!1399858 () TokenValue!6956)

(assert (=> b!3982697 (= lt!1399889 (Some!9139 (tuple2!41805 (Token!12591 lt!1399858 (rule!9734 (_1!24036 (v!39487 lt!1399870))) lt!1399869 lt!1399895) (_2!24036 (v!39487 lt!1399870)))))))

(declare-fun maxPrefixOneRule!2647 (LexerInterface!6315 Rule!13252 List!42706) Option!9140)

(assert (=> b!3982697 (= lt!1399889 (maxPrefixOneRule!2647 thiss!21717 (rule!9734 (_1!24036 (v!39487 lt!1399870))) lt!1399854))))

(declare-fun size!31853 (List!42706) Int)

(assert (=> b!3982697 (= lt!1399869 (size!31853 lt!1399895))))

(declare-fun apply!9937 (TokenValueInjection!13340 BalanceConc!25468) TokenValue!6956)

(declare-fun seqFromList!4965 (List!42706) BalanceConc!25468)

(assert (=> b!3982697 (= lt!1399858 (apply!9937 (transformation!6726 (rule!9734 (_1!24036 (v!39487 lt!1399870)))) (seqFromList!4965 lt!1399895)))))

(declare-datatypes ((List!42708 0))(
  ( (Nil!42584) (Cons!42584 (h!48004 Rule!13252) (t!331411 List!42708)) )
))
(declare-fun rules!2999 () List!42708)

(declare-fun lt!1399898 () Unit!61256)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1469 (LexerInterface!6315 List!42708 List!42706 List!42706 List!42706 Rule!13252) Unit!61256)

(assert (=> b!3982697 (= lt!1399898 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1469 thiss!21717 rules!2999 lt!1399895 lt!1399854 (_2!24036 (v!39487 lt!1399870)) (rule!9734 (_1!24036 (v!39487 lt!1399870)))))))

(declare-fun list!15806 (BalanceConc!25468) List!42706)

(declare-fun charsOf!4542 (Token!12590) BalanceConc!25468)

(assert (=> b!3982697 (= lt!1399895 (list!15806 (charsOf!4542 (_1!24036 (v!39487 lt!1399870)))))))

(declare-fun lt!1399903 () Unit!61256)

(declare-fun lemmaInv!941 (TokenValueInjection!13340) Unit!61256)

(assert (=> b!3982697 (= lt!1399903 (lemmaInv!941 (transformation!6726 (rule!9734 (_1!24036 (v!39487 lt!1399870))))))))

(declare-fun ruleValid!2658 (LexerInterface!6315 Rule!13252) Bool)

(assert (=> b!3982697 (ruleValid!2658 thiss!21717 (rule!9734 (_1!24036 (v!39487 lt!1399870))))))

(declare-fun lt!1399872 () Unit!61256)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1732 (LexerInterface!6315 Rule!13252 List!42708) Unit!61256)

(assert (=> b!3982697 (= lt!1399872 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1732 thiss!21717 (rule!9734 (_1!24036 (v!39487 lt!1399870))) rules!2999))))

(declare-fun lt!1399901 () Unit!61256)

(declare-fun lemmaCharactersSize!1321 (Token!12590) Unit!61256)

(assert (=> b!3982697 (= lt!1399901 (lemmaCharactersSize!1321 token!484))))

(declare-fun lt!1399864 () Unit!61256)

(assert (=> b!3982697 (= lt!1399864 (lemmaCharactersSize!1321 (_1!24036 (v!39487 lt!1399870))))))

(declare-fun e!2468282 () Bool)

(assert (=> b!3982698 (= e!2468282 (and tp!1213934 tp!1213942))))

(declare-fun b!3982699 () Bool)

(declare-fun res!1614457 () Bool)

(assert (=> b!3982699 (=> (not res!1614457) (not e!2468283))))

(declare-fun isEmpty!25458 (List!42708) Bool)

(assert (=> b!3982699 (= res!1614457 (not (isEmpty!25458 rules!2999)))))

(declare-fun e!2468275 () Bool)

(assert (=> b!3982700 (= e!2468275 (and tp!1213945 tp!1213946))))

(declare-fun b!3982701 () Bool)

(declare-fun res!1614463 () Bool)

(assert (=> b!3982701 (=> (not res!1614463) (not e!2468283))))

(declare-fun rulesInvariant!5658 (LexerInterface!6315 List!42708) Bool)

(assert (=> b!3982701 (= res!1614463 (rulesInvariant!5658 thiss!21717 rules!2999))))

(declare-fun b!3982702 () Bool)

(declare-fun e!2468267 () Bool)

(declare-fun e!2468293 () Bool)

(assert (=> b!3982702 (= e!2468267 (not e!2468293))))

(declare-fun res!1614459 () Bool)

(assert (=> b!3982702 (=> res!1614459 e!2468293)))

(declare-fun lt!1399863 () List!42706)

(declare-fun lt!1399886 () List!42706)

(assert (=> b!3982702 (= res!1614459 (not (= lt!1399863 lt!1399886)))))

(declare-fun lt!1399892 () List!42706)

(declare-fun suffixResult!105 () List!42706)

(assert (=> b!3982702 (= lt!1399863 (++!11128 lt!1399892 suffixResult!105))))

(declare-fun lt!1399857 () Unit!61256)

(assert (=> b!3982702 (= lt!1399857 (lemmaInv!941 (transformation!6726 (rule!9734 token!484))))))

(assert (=> b!3982702 (ruleValid!2658 thiss!21717 (rule!9734 token!484))))

(declare-fun lt!1399883 () Unit!61256)

(assert (=> b!3982702 (= lt!1399883 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1732 thiss!21717 (rule!9734 token!484) rules!2999))))

(declare-fun b!3982703 () Bool)

(declare-fun e!2468286 () Bool)

(assert (=> b!3982703 (= e!2468279 e!2468286)))

(declare-fun res!1614467 () Bool)

(assert (=> b!3982703 (=> res!1614467 e!2468286)))

(declare-fun lt!1399867 () List!42706)

(declare-fun suffix!1299 () List!42706)

(assert (=> b!3982703 (= res!1614467 (not (= lt!1399867 suffix!1299)))))

(declare-fun newSuffix!27 () List!42706)

(declare-fun lt!1399862 () List!42706)

(assert (=> b!3982703 (= lt!1399867 (++!11128 newSuffix!27 lt!1399862))))

(declare-fun getSuffix!2244 (List!42706 List!42706) List!42706)

(assert (=> b!3982703 (= lt!1399862 (getSuffix!2244 suffix!1299 newSuffix!27))))

(declare-fun b!3982704 () Bool)

(declare-fun e!2468290 () Bool)

(declare-fun e!2468276 () Bool)

(assert (=> b!3982704 (= e!2468290 e!2468276)))

(declare-fun res!1614455 () Bool)

(assert (=> b!3982704 (=> res!1614455 e!2468276)))

(declare-fun lt!1399877 () List!42706)

(declare-fun lt!1399899 () List!42706)

(assert (=> b!3982704 (= res!1614455 (or (not (= lt!1399886 lt!1399877)) (not (= lt!1399886 lt!1399899))))))

(assert (=> b!3982704 (= lt!1399877 lt!1399899)))

(declare-fun lt!1399888 () List!42706)

(assert (=> b!3982704 (= lt!1399899 (++!11128 lt!1399892 lt!1399888))))

(declare-fun lt!1399904 () List!42706)

(assert (=> b!3982704 (= lt!1399877 (++!11128 lt!1399904 suffix!1299))))

(declare-fun lt!1399894 () List!42706)

(assert (=> b!3982704 (= lt!1399888 (++!11128 lt!1399894 suffix!1299))))

(declare-fun lt!1399884 () Unit!61256)

(declare-fun lemmaConcatAssociativity!2448 (List!42706 List!42706 List!42706) Unit!61256)

(assert (=> b!3982704 (= lt!1399884 (lemmaConcatAssociativity!2448 lt!1399892 lt!1399894 suffix!1299))))

(declare-fun b!3982705 () Bool)

(declare-fun e!2468291 () Bool)

(assert (=> b!3982705 (= e!2468291 true)))

(declare-fun lt!1399874 () Bool)

(assert (=> b!3982705 (= lt!1399874 (isPrefix!3813 lt!1399895 lt!1399854))))

(declare-fun e!2468285 () Bool)

(declare-fun b!3982706 () Bool)

(declare-fun tp!1213941 () Bool)

(declare-fun inv!56881 (String!48498) Bool)

(declare-fun inv!56885 (TokenValueInjection!13340) Bool)

(assert (=> b!3982706 (= e!2468285 (and tp!1213941 (inv!56881 (tag!7586 (rule!9734 token!484))) (inv!56885 (transformation!6726 (rule!9734 token!484))) e!2468275))))

(declare-fun tp!1213936 () Bool)

(declare-fun b!3982707 () Bool)

(assert (=> b!3982707 (= e!2468278 (and tp!1213936 (inv!56881 (tag!7586 (h!48004 rules!2999))) (inv!56885 (transformation!6726 (h!48004 rules!2999))) e!2468282))))

(declare-fun b!3982708 () Bool)

(declare-fun e!2468264 () Bool)

(assert (=> b!3982708 (= e!2468283 e!2468264)))

(declare-fun res!1614472 () Bool)

(assert (=> b!3982708 (=> (not res!1614472) (not e!2468264))))

(declare-fun lt!1399852 () Int)

(declare-fun lt!1399876 () Int)

(assert (=> b!3982708 (= res!1614472 (>= lt!1399852 lt!1399876))))

(assert (=> b!3982708 (= lt!1399876 (size!31853 lt!1399892))))

(declare-fun prefix!494 () List!42706)

(assert (=> b!3982708 (= lt!1399852 (size!31853 prefix!494))))

(assert (=> b!3982708 (= lt!1399892 (list!15806 (charsOf!4542 token!484)))))

(declare-fun b!3982709 () Bool)

(declare-fun e!2468280 () Bool)

(assert (=> b!3982709 (= e!2468286 e!2468280)))

(declare-fun res!1614465 () Bool)

(assert (=> b!3982709 (=> res!1614465 e!2468280)))

(declare-fun lt!1399871 () List!42706)

(assert (=> b!3982709 (= res!1614465 (not (= lt!1399871 lt!1399886)))))

(assert (=> b!3982709 (= lt!1399871 (++!11128 prefix!494 lt!1399867))))

(assert (=> b!3982709 (= lt!1399871 (++!11128 lt!1399854 lt!1399862))))

(declare-fun lt!1399900 () Unit!61256)

(assert (=> b!3982709 (= lt!1399900 (lemmaConcatAssociativity!2448 prefix!494 newSuffix!27 lt!1399862))))

(declare-fun b!3982710 () Bool)

(declare-fun res!1614466 () Bool)

(assert (=> b!3982710 (=> (not res!1614466) (not e!2468283))))

(assert (=> b!3982710 (= res!1614466 (>= (size!31853 suffix!1299) (size!31853 newSuffix!27)))))

(declare-fun b!3982711 () Bool)

(declare-fun tp!1213940 () Bool)

(assert (=> b!3982711 (= e!2468274 (and tp_is_empty!20233 tp!1213940))))

(declare-fun b!3982712 () Bool)

(declare-fun tp!1213943 () Bool)

(assert (=> b!3982712 (= e!2468263 (and tp_is_empty!20233 tp!1213943))))

(declare-fun b!3982713 () Bool)

(declare-fun tp!1213938 () Bool)

(assert (=> b!3982713 (= e!2468266 (and tp_is_empty!20233 tp!1213938))))

(declare-fun b!3982714 () Bool)

(declare-fun e!2468269 () Bool)

(declare-fun e!2468265 () Bool)

(assert (=> b!3982714 (= e!2468269 e!2468265)))

(declare-fun res!1614456 () Bool)

(assert (=> b!3982714 (=> res!1614456 e!2468265)))

(declare-fun lt!1399905 () List!42706)

(assert (=> b!3982714 (= res!1614456 (not (= lt!1399905 lt!1399886)))))

(declare-fun lt!1399902 () List!42706)

(assert (=> b!3982714 (= lt!1399905 (++!11128 lt!1399892 lt!1399902))))

(assert (=> b!3982714 (= lt!1399902 (getSuffix!2244 lt!1399886 lt!1399892))))

(declare-fun e!2468281 () Bool)

(assert (=> b!3982714 e!2468281))

(declare-fun res!1614453 () Bool)

(assert (=> b!3982714 (=> (not res!1614453) (not e!2468281))))

(assert (=> b!3982714 (= res!1614453 (isPrefix!3813 lt!1399886 lt!1399886))))

(declare-fun lt!1399856 () Unit!61256)

(declare-fun lemmaIsPrefixRefl!2405 (List!42706 List!42706) Unit!61256)

(assert (=> b!3982714 (= lt!1399856 (lemmaIsPrefixRefl!2405 lt!1399886 lt!1399886))))

(declare-fun b!3982715 () Bool)

(assert (=> b!3982715 (= e!2468265 e!2468273)))

(declare-fun res!1614454 () Bool)

(assert (=> b!3982715 (=> res!1614454 e!2468273)))

(assert (=> b!3982715 (= res!1614454 (not ((_ is Some!9139) lt!1399870)))))

(declare-fun maxPrefix!3613 (LexerInterface!6315 List!42708 List!42706) Option!9140)

(assert (=> b!3982715 (= lt!1399870 (maxPrefix!3613 thiss!21717 rules!2999 lt!1399854))))

(declare-fun lt!1399879 () Token!12590)

(declare-fun lt!1399891 () tuple2!41804)

(assert (=> b!3982715 (and (= suffixResult!105 lt!1399902) (= lt!1399891 (tuple2!41805 lt!1399879 lt!1399902)))))

(declare-fun lt!1399853 () Unit!61256)

(declare-fun lemmaSamePrefixThenSameSuffix!2000 (List!42706 List!42706 List!42706 List!42706 List!42706) Unit!61256)

(assert (=> b!3982715 (= lt!1399853 (lemmaSamePrefixThenSameSuffix!2000 lt!1399892 suffixResult!105 lt!1399892 lt!1399902 lt!1399886))))

(assert (=> b!3982715 (isPrefix!3813 lt!1399892 lt!1399905)))

(declare-fun lt!1399868 () Unit!61256)

(assert (=> b!3982715 (= lt!1399868 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399892 lt!1399902))))

(declare-fun b!3982716 () Bool)

(declare-fun e!2468294 () Bool)

(assert (=> b!3982716 (= e!2468294 e!2468290)))

(declare-fun res!1614461 () Bool)

(assert (=> b!3982716 (=> res!1614461 e!2468290)))

(assert (=> b!3982716 (= res!1614461 (not (= lt!1399904 prefix!494)))))

(assert (=> b!3982716 (= lt!1399904 (++!11128 lt!1399892 lt!1399894))))

(assert (=> b!3982716 (= lt!1399894 (getSuffix!2244 prefix!494 lt!1399892))))

(assert (=> b!3982716 (isPrefix!3813 lt!1399892 prefix!494)))

(declare-fun lt!1399861 () Unit!61256)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!391 (List!42706 List!42706 List!42706) Unit!61256)

(assert (=> b!3982716 (= lt!1399861 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!391 prefix!494 lt!1399892 lt!1399886))))

(declare-fun b!3982717 () Bool)

(declare-fun e!2468271 () Bool)

(assert (=> b!3982717 (= e!2468271 e!2468267)))

(declare-fun res!1614476 () Bool)

(assert (=> b!3982717 (=> (not res!1614476) (not e!2468267))))

(declare-fun lt!1399855 () Option!9140)

(assert (=> b!3982717 (= res!1614476 (= (maxPrefix!3613 thiss!21717 rules!2999 lt!1399886) lt!1399855))))

(assert (=> b!3982717 (= lt!1399855 (Some!9139 lt!1399891))))

(assert (=> b!3982717 (= lt!1399891 (tuple2!41805 token!484 suffixResult!105))))

(assert (=> b!3982717 (= lt!1399886 (++!11128 prefix!494 suffix!1299))))

(declare-fun b!3982718 () Bool)

(assert (=> b!3982718 (= e!2468281 (and (= (size!31852 token!484) lt!1399876) (= (originalCharacters!7326 token!484) lt!1399892)))))

(declare-fun b!3982719 () Bool)

(assert (=> b!3982719 (= e!2468293 e!2468294)))

(declare-fun res!1614462 () Bool)

(assert (=> b!3982719 (=> res!1614462 e!2468294)))

(assert (=> b!3982719 (= res!1614462 (not (isPrefix!3813 lt!1399892 lt!1399886)))))

(assert (=> b!3982719 (isPrefix!3813 prefix!494 lt!1399886)))

(declare-fun lt!1399859 () Unit!61256)

(assert (=> b!3982719 (= lt!1399859 (lemmaConcatTwoListThenFirstIsPrefix!2656 prefix!494 suffix!1299))))

(assert (=> b!3982719 (isPrefix!3813 lt!1399892 lt!1399863)))

(declare-fun lt!1399882 () Unit!61256)

(assert (=> b!3982719 (= lt!1399882 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399892 suffixResult!105))))

(declare-fun b!3982720 () Bool)

(declare-fun e!2468287 () Bool)

(assert (=> b!3982720 (= e!2468287 e!2468291)))

(declare-fun res!1614468 () Bool)

(assert (=> b!3982720 (=> res!1614468 e!2468291)))

(assert (=> b!3982720 (= res!1614468 (<= lt!1399869 lt!1399876))))

(declare-fun lt!1399880 () List!42706)

(assert (=> b!3982720 (= (_2!24036 (v!39487 lt!1399870)) lt!1399880)))

(declare-fun lt!1399897 () Unit!61256)

(assert (=> b!3982720 (= lt!1399897 (lemmaSamePrefixThenSameSuffix!2000 lt!1399895 (_2!24036 (v!39487 lt!1399870)) lt!1399895 lt!1399880 lt!1399854))))

(declare-fun lt!1399885 () List!42706)

(assert (=> b!3982720 (isPrefix!3813 lt!1399895 lt!1399885)))

(declare-fun lt!1399878 () Unit!61256)

(assert (=> b!3982720 (= lt!1399878 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399895 lt!1399880))))

(declare-fun b!3982721 () Bool)

(assert (=> b!3982721 (= e!2468280 e!2468272)))

(declare-fun res!1614473 () Bool)

(assert (=> b!3982721 (=> res!1614473 e!2468272)))

(assert (=> b!3982721 (= res!1614473 (not (isPrefix!3813 lt!1399895 lt!1399886)))))

(assert (=> b!3982721 (isPrefix!3813 lt!1399895 lt!1399871)))

(declare-fun lt!1399893 () Unit!61256)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!646 (List!42706 List!42706 List!42706) Unit!61256)

(assert (=> b!3982721 (= lt!1399893 (lemmaPrefixStaysPrefixWhenAddingToSuffix!646 lt!1399895 lt!1399854 lt!1399862))))

(declare-fun b!3982722 () Bool)

(assert (=> b!3982722 (= e!2468264 e!2468271)))

(declare-fun res!1614469 () Bool)

(assert (=> b!3982722 (=> (not res!1614469) (not e!2468271))))

(declare-fun lt!1399866 () List!42706)

(assert (=> b!3982722 (= res!1614469 (= lt!1399866 lt!1399854))))

(assert (=> b!3982722 (= lt!1399854 (++!11128 prefix!494 newSuffix!27))))

(assert (=> b!3982722 (= lt!1399866 (++!11128 lt!1399892 newSuffixResult!27))))

(declare-fun b!3982723 () Bool)

(declare-fun res!1614452 () Bool)

(assert (=> b!3982723 (=> (not res!1614452) (not e!2468281))))

(assert (=> b!3982723 (= res!1614452 (= (size!31852 token!484) (size!31853 (originalCharacters!7326 token!484))))))

(declare-fun b!3982724 () Bool)

(declare-fun e!2468270 () Bool)

(assert (=> b!3982724 (= e!2468276 e!2468270)))

(declare-fun res!1614458 () Bool)

(assert (=> b!3982724 (=> res!1614458 e!2468270)))

(declare-fun lt!1399881 () Option!9140)

(assert (=> b!3982724 (= res!1614458 (not (= lt!1399881 lt!1399855)))))

(assert (=> b!3982724 (= lt!1399881 (Some!9139 (tuple2!41805 lt!1399879 suffixResult!105)))))

(assert (=> b!3982724 (= lt!1399881 (maxPrefixOneRule!2647 thiss!21717 (rule!9734 token!484) lt!1399886))))

(declare-fun lt!1399875 () TokenValue!6956)

(assert (=> b!3982724 (= lt!1399879 (Token!12591 lt!1399875 (rule!9734 token!484) lt!1399876 lt!1399892))))

(assert (=> b!3982724 (= lt!1399875 (apply!9937 (transformation!6726 (rule!9734 token!484)) (seqFromList!4965 lt!1399892)))))

(declare-fun lt!1399860 () Unit!61256)

(assert (=> b!3982724 (= lt!1399860 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1469 thiss!21717 rules!2999 lt!1399892 lt!1399886 suffixResult!105 (rule!9734 token!484)))))

(assert (=> b!3982724 (= lt!1399888 suffixResult!105)))

(declare-fun lt!1399896 () Unit!61256)

(assert (=> b!3982724 (= lt!1399896 (lemmaSamePrefixThenSameSuffix!2000 lt!1399892 lt!1399888 lt!1399892 suffixResult!105 lt!1399886))))

(assert (=> b!3982724 (isPrefix!3813 lt!1399892 lt!1399899)))

(declare-fun lt!1399873 () Unit!61256)

(assert (=> b!3982724 (= lt!1399873 (lemmaConcatTwoListThenFirstIsPrefix!2656 lt!1399892 lt!1399888))))

(declare-fun b!3982725 () Bool)

(declare-fun res!1614474 () Bool)

(assert (=> b!3982725 (=> (not res!1614474) (not e!2468283))))

(assert (=> b!3982725 (= res!1614474 (isPrefix!3813 newSuffix!27 suffix!1299))))

(declare-fun b!3982726 () Bool)

(assert (=> b!3982726 (= e!2468272 e!2468287)))

(declare-fun res!1614471 () Bool)

(assert (=> b!3982726 (=> res!1614471 e!2468287)))

(assert (=> b!3982726 (= res!1614471 (not (= lt!1399885 lt!1399854)))))

(assert (=> b!3982726 (= lt!1399885 (++!11128 lt!1399895 lt!1399880))))

(assert (=> b!3982726 (= lt!1399880 (getSuffix!2244 lt!1399854 lt!1399895))))

(declare-fun b!3982727 () Bool)

(declare-fun res!1614464 () Bool)

(assert (=> b!3982727 (=> (not res!1614464) (not e!2468281))))

(assert (=> b!3982727 (= res!1614464 (= (value!212325 token!484) lt!1399875))))

(declare-fun b!3982728 () Bool)

(declare-fun tp!1213939 () Bool)

(assert (=> b!3982728 (= e!2468268 (and tp_is_empty!20233 tp!1213939))))

(declare-fun b!3982729 () Bool)

(assert (=> b!3982729 (= e!2468270 e!2468269)))

(declare-fun res!1614470 () Bool)

(assert (=> b!3982729 (=> res!1614470 e!2468269)))

(declare-fun matchR!5608 (Regex!11631 List!42706) Bool)

(assert (=> b!3982729 (= res!1614470 (not (matchR!5608 (regex!6726 (rule!9734 token!484)) lt!1399892)))))

(assert (=> b!3982729 (isPrefix!3813 lt!1399892 lt!1399854)))

(declare-fun lt!1399851 () Unit!61256)

(assert (=> b!3982729 (= lt!1399851 (lemmaPrefixStaysPrefixWhenAddingToSuffix!646 lt!1399892 prefix!494 newSuffix!27))))

(declare-fun lt!1399890 () Unit!61256)

(assert (=> b!3982729 (= lt!1399890 (lemmaPrefixStaysPrefixWhenAddingToSuffix!646 lt!1399892 prefix!494 suffix!1299))))

(declare-fun b!3982730 () Bool)

(declare-fun tp!1213937 () Bool)

(declare-fun inv!21 (TokenValue!6956) Bool)

(assert (=> b!3982730 (= e!2468284 (and (inv!21 (value!212325 token!484)) e!2468285 tp!1213937))))

(assert (= (and start!374848 res!1614475) b!3982699))

(assert (= (and b!3982699 res!1614457) b!3982701))

(assert (= (and b!3982701 res!1614463) b!3982710))

(assert (= (and b!3982710 res!1614466) b!3982725))

(assert (= (and b!3982725 res!1614474) b!3982708))

(assert (= (and b!3982708 res!1614472) b!3982722))

(assert (= (and b!3982722 res!1614469) b!3982717))

(assert (= (and b!3982717 res!1614476) b!3982702))

(assert (= (and b!3982702 (not res!1614459)) b!3982719))

(assert (= (and b!3982719 (not res!1614462)) b!3982716))

(assert (= (and b!3982716 (not res!1614461)) b!3982704))

(assert (= (and b!3982704 (not res!1614455)) b!3982724))

(assert (= (and b!3982724 (not res!1614458)) b!3982729))

(assert (= (and b!3982729 (not res!1614470)) b!3982714))

(assert (= (and b!3982714 res!1614453) b!3982727))

(assert (= (and b!3982727 res!1614464) b!3982723))

(assert (= (and b!3982723 res!1614452) b!3982718))

(assert (= (and b!3982714 (not res!1614456)) b!3982715))

(assert (= (and b!3982715 (not res!1614454)) b!3982697))

(assert (= (and b!3982697 (not res!1614451)) b!3982703))

(assert (= (and b!3982703 (not res!1614467)) b!3982709))

(assert (= (and b!3982709 (not res!1614465)) b!3982721))

(assert (= (and b!3982721 (not res!1614473)) b!3982695))

(assert (= (and b!3982695 (not res!1614460)) b!3982726))

(assert (= (and b!3982726 (not res!1614471)) b!3982720))

(assert (= (and b!3982720 (not res!1614468)) b!3982705))

(assert (= (and start!374848 ((_ is Cons!42582) prefix!494)) b!3982694))

(assert (= b!3982706 b!3982700))

(assert (= b!3982730 b!3982706))

(assert (= start!374848 b!3982730))

(assert (= (and start!374848 ((_ is Cons!42582) suffixResult!105)) b!3982711))

(assert (= (and start!374848 ((_ is Cons!42582) suffix!1299)) b!3982728))

(assert (= (and start!374848 ((_ is Cons!42582) newSuffix!27)) b!3982712))

(assert (= b!3982707 b!3982698))

(assert (= b!3982696 b!3982707))

(assert (= (and start!374848 ((_ is Cons!42584) rules!2999)) b!3982696))

(assert (= (and start!374848 ((_ is Cons!42582) newSuffixResult!27)) b!3982713))

(declare-fun m!4557137 () Bool)

(assert (=> b!3982701 m!4557137))

(declare-fun m!4557139 () Bool)

(assert (=> b!3982716 m!4557139))

(declare-fun m!4557141 () Bool)

(assert (=> b!3982716 m!4557141))

(declare-fun m!4557143 () Bool)

(assert (=> b!3982716 m!4557143))

(declare-fun m!4557145 () Bool)

(assert (=> b!3982716 m!4557145))

(declare-fun m!4557147 () Bool)

(assert (=> b!3982730 m!4557147))

(declare-fun m!4557149 () Bool)

(assert (=> b!3982714 m!4557149))

(declare-fun m!4557151 () Bool)

(assert (=> b!3982714 m!4557151))

(declare-fun m!4557153 () Bool)

(assert (=> b!3982714 m!4557153))

(declare-fun m!4557155 () Bool)

(assert (=> b!3982714 m!4557155))

(declare-fun m!4557157 () Bool)

(assert (=> b!3982707 m!4557157))

(declare-fun m!4557159 () Bool)

(assert (=> b!3982707 m!4557159))

(declare-fun m!4557161 () Bool)

(assert (=> b!3982719 m!4557161))

(declare-fun m!4557163 () Bool)

(assert (=> b!3982719 m!4557163))

(declare-fun m!4557165 () Bool)

(assert (=> b!3982719 m!4557165))

(declare-fun m!4557167 () Bool)

(assert (=> b!3982719 m!4557167))

(declare-fun m!4557169 () Bool)

(assert (=> b!3982719 m!4557169))

(declare-fun m!4557171 () Bool)

(assert (=> b!3982709 m!4557171))

(declare-fun m!4557173 () Bool)

(assert (=> b!3982709 m!4557173))

(declare-fun m!4557175 () Bool)

(assert (=> b!3982709 m!4557175))

(declare-fun m!4557177 () Bool)

(assert (=> b!3982699 m!4557177))

(declare-fun m!4557179 () Bool)

(assert (=> b!3982721 m!4557179))

(declare-fun m!4557181 () Bool)

(assert (=> b!3982721 m!4557181))

(declare-fun m!4557183 () Bool)

(assert (=> b!3982721 m!4557183))

(declare-fun m!4557185 () Bool)

(assert (=> b!3982726 m!4557185))

(declare-fun m!4557187 () Bool)

(assert (=> b!3982726 m!4557187))

(declare-fun m!4557189 () Bool)

(assert (=> b!3982729 m!4557189))

(declare-fun m!4557191 () Bool)

(assert (=> b!3982729 m!4557191))

(declare-fun m!4557193 () Bool)

(assert (=> b!3982729 m!4557193))

(declare-fun m!4557195 () Bool)

(assert (=> b!3982729 m!4557195))

(declare-fun m!4557197 () Bool)

(assert (=> b!3982705 m!4557197))

(declare-fun m!4557199 () Bool)

(assert (=> b!3982720 m!4557199))

(declare-fun m!4557201 () Bool)

(assert (=> b!3982720 m!4557201))

(declare-fun m!4557203 () Bool)

(assert (=> b!3982720 m!4557203))

(declare-fun m!4557205 () Bool)

(assert (=> b!3982715 m!4557205))

(declare-fun m!4557207 () Bool)

(assert (=> b!3982715 m!4557207))

(declare-fun m!4557209 () Bool)

(assert (=> b!3982715 m!4557209))

(declare-fun m!4557211 () Bool)

(assert (=> b!3982715 m!4557211))

(declare-fun m!4557213 () Bool)

(assert (=> b!3982704 m!4557213))

(declare-fun m!4557215 () Bool)

(assert (=> b!3982704 m!4557215))

(declare-fun m!4557217 () Bool)

(assert (=> b!3982704 m!4557217))

(declare-fun m!4557219 () Bool)

(assert (=> b!3982704 m!4557219))

(declare-fun m!4557221 () Bool)

(assert (=> b!3982703 m!4557221))

(declare-fun m!4557223 () Bool)

(assert (=> b!3982703 m!4557223))

(declare-fun m!4557225 () Bool)

(assert (=> b!3982710 m!4557225))

(declare-fun m!4557227 () Bool)

(assert (=> b!3982710 m!4557227))

(declare-fun m!4557229 () Bool)

(assert (=> b!3982723 m!4557229))

(declare-fun m!4557231 () Bool)

(assert (=> b!3982724 m!4557231))

(declare-fun m!4557233 () Bool)

(assert (=> b!3982724 m!4557233))

(declare-fun m!4557235 () Bool)

(assert (=> b!3982724 m!4557235))

(declare-fun m!4557237 () Bool)

(assert (=> b!3982724 m!4557237))

(declare-fun m!4557239 () Bool)

(assert (=> b!3982724 m!4557239))

(assert (=> b!3982724 m!4557239))

(declare-fun m!4557241 () Bool)

(assert (=> b!3982724 m!4557241))

(declare-fun m!4557243 () Bool)

(assert (=> b!3982724 m!4557243))

(declare-fun m!4557245 () Bool)

(assert (=> start!374848 m!4557245))

(declare-fun m!4557247 () Bool)

(assert (=> b!3982706 m!4557247))

(declare-fun m!4557249 () Bool)

(assert (=> b!3982706 m!4557249))

(declare-fun m!4557251 () Bool)

(assert (=> b!3982717 m!4557251))

(declare-fun m!4557253 () Bool)

(assert (=> b!3982717 m!4557253))

(declare-fun m!4557255 () Bool)

(assert (=> b!3982725 m!4557255))

(declare-fun m!4557257 () Bool)

(assert (=> b!3982722 m!4557257))

(declare-fun m!4557259 () Bool)

(assert (=> b!3982722 m!4557259))

(declare-fun m!4557261 () Bool)

(assert (=> b!3982708 m!4557261))

(declare-fun m!4557263 () Bool)

(assert (=> b!3982708 m!4557263))

(declare-fun m!4557265 () Bool)

(assert (=> b!3982708 m!4557265))

(assert (=> b!3982708 m!4557265))

(declare-fun m!4557267 () Bool)

(assert (=> b!3982708 m!4557267))

(declare-fun m!4557269 () Bool)

(assert (=> b!3982702 m!4557269))

(declare-fun m!4557271 () Bool)

(assert (=> b!3982702 m!4557271))

(declare-fun m!4557273 () Bool)

(assert (=> b!3982702 m!4557273))

(declare-fun m!4557275 () Bool)

(assert (=> b!3982702 m!4557275))

(declare-fun m!4557277 () Bool)

(assert (=> b!3982697 m!4557277))

(declare-fun m!4557279 () Bool)

(assert (=> b!3982697 m!4557279))

(declare-fun m!4557281 () Bool)

(assert (=> b!3982697 m!4557281))

(declare-fun m!4557283 () Bool)

(assert (=> b!3982697 m!4557283))

(declare-fun m!4557285 () Bool)

(assert (=> b!3982697 m!4557285))

(declare-fun m!4557287 () Bool)

(assert (=> b!3982697 m!4557287))

(declare-fun m!4557289 () Bool)

(assert (=> b!3982697 m!4557289))

(declare-fun m!4557291 () Bool)

(assert (=> b!3982697 m!4557291))

(assert (=> b!3982697 m!4557277))

(declare-fun m!4557293 () Bool)

(assert (=> b!3982697 m!4557293))

(declare-fun m!4557295 () Bool)

(assert (=> b!3982697 m!4557295))

(declare-fun m!4557297 () Bool)

(assert (=> b!3982697 m!4557297))

(declare-fun m!4557299 () Bool)

(assert (=> b!3982697 m!4557299))

(declare-fun m!4557301 () Bool)

(assert (=> b!3982697 m!4557301))

(declare-fun m!4557303 () Bool)

(assert (=> b!3982697 m!4557303))

(assert (=> b!3982697 m!4557283))

(declare-fun m!4557305 () Bool)

(assert (=> b!3982697 m!4557305))

(declare-fun m!4557307 () Bool)

(assert (=> b!3982697 m!4557307))

(declare-fun m!4557309 () Bool)

(assert (=> b!3982697 m!4557309))

(assert (=> b!3982697 m!4557301))

(declare-fun m!4557311 () Bool)

(assert (=> b!3982697 m!4557311))

(check-sat (not b_next!111267) (not b!3982696) (not b!3982701) (not b!3982719) (not b!3982711) (not b!3982717) (not b!3982712) (not b_next!111269) (not b!3982723) (not b!3982699) (not b!3982725) (not b!3982730) (not b!3982697) (not b!3982703) (not b!3982705) (not b!3982721) (not b!3982724) b_and!306113 (not b!3982707) b_and!306111 (not b_next!111271) (not start!374848) (not b!3982714) (not b!3982716) (not b!3982726) (not b!3982728) (not b!3982710) tp_is_empty!20233 (not b!3982709) (not b!3982715) b_and!306117 (not b!3982708) (not b!3982720) (not b!3982722) (not b!3982704) (not b!3982706) (not b!3982713) (not b!3982729) (not b!3982694) b_and!306115 (not b_next!111265) (not b!3982702))
(check-sat (not b_next!111267) b_and!306113 b_and!306117 b_and!306115 (not b_next!111269) (not b_next!111265) b_and!306111 (not b_next!111271))

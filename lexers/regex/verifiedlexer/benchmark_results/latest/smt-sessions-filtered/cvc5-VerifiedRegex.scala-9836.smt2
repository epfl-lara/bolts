; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!514698 () Bool)

(assert start!514698)

(declare-fun b!4907917 () Bool)

(declare-fun b_free!131927 () Bool)

(declare-fun b_next!132717 () Bool)

(assert (=> b!4907917 (= b_free!131927 (not b_next!132717))))

(declare-fun tp!1380376 () Bool)

(declare-fun b_and!346503 () Bool)

(assert (=> b!4907917 (= tp!1380376 b_and!346503)))

(declare-fun b_free!131929 () Bool)

(declare-fun b_next!132719 () Bool)

(assert (=> b!4907917 (= b_free!131929 (not b_next!132719))))

(declare-fun tp!1380377 () Bool)

(declare-fun b_and!346505 () Bool)

(assert (=> b!4907917 (= tp!1380377 b_and!346505)))

(declare-fun b!4907936 () Bool)

(declare-fun e!3067830 () Bool)

(assert (=> b!4907936 (= e!3067830 true)))

(declare-fun b!4907935 () Bool)

(declare-fun e!3067829 () Bool)

(assert (=> b!4907935 (= e!3067829 e!3067830)))

(declare-fun b!4907928 () Bool)

(assert (=> b!4907928 e!3067829))

(assert (= b!4907935 b!4907936))

(assert (= b!4907928 b!4907935))

(declare-fun order!25803 () Int)

(declare-fun lambda!244575 () Int)

(declare-datatypes ((C!26826 0))(
  ( (C!26827 (val!22747 Int)) )
))
(declare-datatypes ((Regex!13314 0))(
  ( (ElementMatch!13314 (c!834254 C!26826)) (Concat!21863 (regOne!27140 Regex!13314) (regTwo!27140 Regex!13314)) (EmptyExpr!13314) (Star!13314 (reg!13643 Regex!13314)) (EmptyLang!13314) (Union!13314 (regOne!27141 Regex!13314) (regTwo!27141 Regex!13314)) )
))
(declare-datatypes ((String!64188 0))(
  ( (String!64189 (value!263919 String)) )
))
(declare-datatypes ((List!56676 0))(
  ( (Nil!56552) (Cons!56552 (h!63000 (_ BitVec 16)) (t!366920 List!56676)) )
))
(declare-datatypes ((TokenValue!8549 0))(
  ( (FloatLiteralValue!17098 (text!60288 List!56676)) (TokenValueExt!8548 (__x!34391 Int)) (Broken!42745 (value!263920 List!56676)) (Object!8672) (End!8549) (Def!8549) (Underscore!8549) (Match!8549) (Else!8549) (Error!8549) (Case!8549) (If!8549) (Extends!8549) (Abstract!8549) (Class!8549) (Val!8549) (DelimiterValue!17098 (del!8609 List!56676)) (KeywordValue!8555 (value!263921 List!56676)) (CommentValue!17098 (value!263922 List!56676)) (WhitespaceValue!17098 (value!263923 List!56676)) (IndentationValue!8549 (value!263924 List!56676)) (String!64190) (Int32!8549) (Broken!42746 (value!263925 List!56676)) (Boolean!8550) (Unit!146758) (OperatorValue!8552 (op!8609 List!56676)) (IdentifierValue!17098 (value!263926 List!56676)) (IdentifierValue!17099 (value!263927 List!56676)) (WhitespaceValue!17099 (value!263928 List!56676)) (True!17098) (False!17098) (Broken!42747 (value!263929 List!56676)) (Broken!42748 (value!263930 List!56676)) (True!17099) (RightBrace!8549) (RightBracket!8549) (Colon!8549) (Null!8549) (Comma!8549) (LeftBracket!8549) (False!17099) (LeftBrace!8549) (ImaginaryLiteralValue!8549 (text!60289 List!56676)) (StringLiteralValue!25647 (value!263931 List!56676)) (EOFValue!8549 (value!263932 List!56676)) (IdentValue!8549 (value!263933 List!56676)) (DelimiterValue!17099 (value!263934 List!56676)) (DedentValue!8549 (value!263935 List!56676)) (NewLineValue!8549 (value!263936 List!56676)) (IntegerValue!25647 (value!263937 (_ BitVec 32)) (text!60290 List!56676)) (IntegerValue!25648 (value!263938 Int) (text!60291 List!56676)) (Times!8549) (Or!8549) (Equal!8549) (Minus!8549) (Broken!42749 (value!263939 List!56676)) (And!8549) (Div!8549) (LessEqual!8549) (Mod!8549) (Concat!21864) (Not!8549) (Plus!8549) (SpaceValue!8549 (value!263940 List!56676)) (IntegerValue!25649 (value!263941 Int) (text!60292 List!56676)) (StringLiteralValue!25648 (text!60293 List!56676)) (FloatLiteralValue!17099 (text!60294 List!56676)) (BytesLiteralValue!8549 (value!263942 List!56676)) (CommentValue!17099 (value!263943 List!56676)) (StringLiteralValue!25649 (value!263944 List!56676)) (ErrorTokenValue!8549 (msg!8610 List!56676)) )
))
(declare-datatypes ((List!56677 0))(
  ( (Nil!56553) (Cons!56553 (h!63001 C!26826) (t!366921 List!56677)) )
))
(declare-datatypes ((IArray!29675 0))(
  ( (IArray!29676 (innerList!14895 List!56677)) )
))
(declare-datatypes ((Conc!14807 0))(
  ( (Node!14807 (left!41183 Conc!14807) (right!41513 Conc!14807) (csize!29844 Int) (cheight!15018 Int)) (Leaf!24644 (xs!18123 IArray!29675) (csize!29845 Int)) (Empty!14807) )
))
(declare-datatypes ((BalanceConc!29044 0))(
  ( (BalanceConc!29045 (c!834255 Conc!14807)) )
))
(declare-datatypes ((TokenValueInjection!16406 0))(
  ( (TokenValueInjection!16407 (toValue!11170 Int) (toChars!11029 Int)) )
))
(declare-datatypes ((Rule!16278 0))(
  ( (Rule!16279 (regex!8239 Regex!13314) (tag!9103 String!64188) (isSeparator!8239 Bool) (transformation!8239 TokenValueInjection!16406)) )
))
(declare-fun rule!164 () Rule!16278)

(declare-fun order!25805 () Int)

(declare-fun dynLambda!22862 (Int Int) Int)

(declare-fun dynLambda!22863 (Int Int) Int)

(assert (=> b!4907936 (< (dynLambda!22862 order!25803 (toValue!11170 (transformation!8239 rule!164))) (dynLambda!22863 order!25805 lambda!244575))))

(declare-fun order!25807 () Int)

(declare-fun dynLambda!22864 (Int Int) Int)

(assert (=> b!4907936 (< (dynLambda!22864 order!25807 (toChars!11029 (transformation!8239 rule!164))) (dynLambda!22863 order!25805 lambda!244575))))

(declare-fun b!4907916 () Bool)

(declare-fun e!3067822 () Bool)

(declare-fun e!3067817 () Bool)

(assert (=> b!4907916 (= e!3067822 e!3067817)))

(declare-fun res!2096434 () Bool)

(assert (=> b!4907916 (=> res!2096434 e!3067817)))

(declare-fun lt!2013823 () Bool)

(declare-datatypes ((Token!15006 0))(
  ( (Token!15007 (value!263945 TokenValue!8549) (rule!11445 Rule!16278) (size!37298 Int) (originalCharacters!8534 List!56677)) )
))
(declare-datatypes ((tuple2!60844 0))(
  ( (tuple2!60845 (_1!33725 Token!15006) (_2!33725 List!56677)) )
))
(declare-datatypes ((Option!14115 0))(
  ( (None!14114) (Some!14114 (v!50076 tuple2!60844)) )
))
(declare-fun lt!2013826 () Option!14115)

(declare-fun isDefined!11124 (Option!14115) Bool)

(assert (=> b!4907916 (= res!2096434 (not (= lt!2013823 (isDefined!11124 lt!2013826))))))

(declare-datatypes ((tuple2!60846 0))(
  ( (tuple2!60847 (_1!33726 BalanceConc!29044) (_2!33726 BalanceConc!29044)) )
))
(declare-fun lt!2013832 () tuple2!60846)

(declare-fun lt!2013831 () Int)

(declare-fun lt!2013827 () List!56677)

(declare-fun lt!2013833 () TokenValue!8549)

(declare-datatypes ((tuple2!60848 0))(
  ( (tuple2!60849 (_1!33727 Token!15006) (_2!33727 BalanceConc!29044)) )
))
(declare-datatypes ((Option!14116 0))(
  ( (None!14115) (Some!14115 (v!50077 tuple2!60848)) )
))
(declare-fun isDefined!11125 (Option!14116) Bool)

(assert (=> b!4907916 (= lt!2013823 (isDefined!11125 (Some!14115 (tuple2!60849 (Token!15007 lt!2013833 rule!164 lt!2013831 lt!2013827) (_2!33726 lt!2013832)))))))

(declare-fun lt!2013825 () List!56677)

(declare-datatypes ((LexerInterface!7831 0))(
  ( (LexerInterfaceExt!7828 (__x!34392 Int)) (Lexer!7829) )
))
(declare-fun thiss!15943 () LexerInterface!7831)

(declare-fun maxPrefixOneRule!3576 (LexerInterface!7831 Rule!16278 List!56677) Option!14115)

(assert (=> b!4907916 (= lt!2013826 (maxPrefixOneRule!3576 thiss!15943 rule!164 lt!2013825))))

(declare-fun size!37299 (BalanceConc!29044) Int)

(assert (=> b!4907916 (= lt!2013831 (size!37299 (_1!33726 lt!2013832)))))

(declare-fun apply!13583 (TokenValueInjection!16406 BalanceConc!29044) TokenValue!8549)

(assert (=> b!4907916 (= lt!2013833 (apply!13583 (transformation!8239 rule!164) (_1!33726 lt!2013832)))))

(declare-datatypes ((Unit!146759 0))(
  ( (Unit!146760) )
))
(declare-fun lt!2013836 () Unit!146759)

(declare-fun lt!2013824 () BalanceConc!29044)

(declare-fun ForallOf!1176 (Int BalanceConc!29044) Unit!146759)

(assert (=> b!4907916 (= lt!2013836 (ForallOf!1176 lambda!244575 lt!2013824))))

(declare-fun seqFromList!5981 (List!56677) BalanceConc!29044)

(assert (=> b!4907916 (= lt!2013824 (seqFromList!5981 lt!2013827))))

(declare-fun list!17829 (BalanceConc!29044) List!56677)

(assert (=> b!4907916 (= lt!2013827 (list!17829 (_1!33726 lt!2013832)))))

(declare-fun lt!2013835 () Unit!146759)

(assert (=> b!4907916 (= lt!2013835 (ForallOf!1176 lambda!244575 (_1!33726 lt!2013832)))))

(declare-fun e!3067823 () Bool)

(assert (=> b!4907917 (= e!3067823 (and tp!1380376 tp!1380377))))

(declare-fun e!3067824 () Bool)

(declare-fun tp!1380378 () Bool)

(declare-fun b!4907918 () Bool)

(declare-fun inv!73044 (String!64188) Bool)

(declare-fun inv!73047 (TokenValueInjection!16406) Bool)

(assert (=> b!4907918 (= e!3067824 (and tp!1380378 (inv!73044 (tag!9103 rule!164)) (inv!73047 (transformation!8239 rule!164)) e!3067823))))

(declare-fun res!2096440 () Bool)

(declare-fun e!3067816 () Bool)

(assert (=> start!514698 (=> (not res!2096440) (not e!3067816))))

(assert (=> start!514698 (= res!2096440 (is-Lexer!7829 thiss!15943))))

(assert (=> start!514698 e!3067816))

(assert (=> start!514698 true))

(assert (=> start!514698 e!3067824))

(declare-fun input!1509 () BalanceConc!29044)

(declare-fun e!3067820 () Bool)

(declare-fun inv!73048 (BalanceConc!29044) Bool)

(assert (=> start!514698 (and (inv!73048 input!1509) e!3067820)))

(declare-fun b!4907919 () Bool)

(declare-fun res!2096438 () Bool)

(assert (=> b!4907919 (=> res!2096438 e!3067817)))

(assert (=> b!4907919 (= res!2096438 (not lt!2013823))))

(declare-fun b!4907920 () Bool)

(declare-fun e!3067821 () Bool)

(assert (=> b!4907920 (= e!3067821 (not e!3067822))))

(declare-fun res!2096439 () Bool)

(assert (=> b!4907920 (=> res!2096439 e!3067822)))

(declare-fun semiInverseModEq!3640 (Int Int) Bool)

(assert (=> b!4907920 (= res!2096439 (not (semiInverseModEq!3640 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164)))))))

(declare-fun lt!2013834 () Unit!146759)

(declare-fun lemmaInv!1285 (TokenValueInjection!16406) Unit!146759)

(assert (=> b!4907920 (= lt!2013834 (lemmaInv!1285 (transformation!8239 rule!164)))))

(declare-fun e!3067815 () Bool)

(assert (=> b!4907920 e!3067815))

(declare-fun res!2096435 () Bool)

(assert (=> b!4907920 (=> res!2096435 e!3067815)))

(declare-datatypes ((tuple2!60850 0))(
  ( (tuple2!60851 (_1!33728 List!56677) (_2!33728 List!56677)) )
))
(declare-fun lt!2013828 () tuple2!60850)

(declare-fun isEmpty!30445 (List!56677) Bool)

(assert (=> b!4907920 (= res!2096435 (isEmpty!30445 (_1!33728 lt!2013828)))))

(declare-fun findLongestMatchInner!1802 (Regex!13314 List!56677 Int List!56677 List!56677 Int) tuple2!60850)

(declare-fun size!37300 (List!56677) Int)

(assert (=> b!4907920 (= lt!2013828 (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)))))

(declare-fun lt!2013822 () Unit!146759)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1765 (Regex!13314 List!56677) Unit!146759)

(assert (=> b!4907920 (= lt!2013822 (longestMatchIsAcceptedByMatchOrIsEmpty!1765 (regex!8239 rule!164) lt!2013825))))

(assert (=> b!4907920 (= lt!2013825 (list!17829 input!1509))))

(declare-fun b!4907921 () Bool)

(declare-fun e!3067819 () Bool)

(assert (=> b!4907921 (= e!3067817 e!3067819)))

(declare-fun res!2096433 () Bool)

(assert (=> b!4907921 (=> res!2096433 e!3067819)))

(assert (=> b!4907921 (= res!2096433 (not (= (apply!13583 (transformation!8239 rule!164) lt!2013824) lt!2013833)))))

(declare-fun lt!2013830 () Unit!146759)

(declare-fun lemmaEqSameImage!1121 (TokenValueInjection!16406 BalanceConc!29044 BalanceConc!29044) Unit!146759)

(assert (=> b!4907921 (= lt!2013830 (lemmaEqSameImage!1121 (transformation!8239 rule!164) (_1!33726 lt!2013832) lt!2013824))))

(declare-fun b!4907922 () Bool)

(declare-fun lt!2013829 () tuple2!60844)

(assert (=> b!4907922 (= e!3067819 (or (not (= (value!263945 (_1!33725 lt!2013829)) lt!2013833)) (= (rule!11445 (_1!33725 lt!2013829)) rule!164)))))

(declare-fun get!19565 (Option!14115) tuple2!60844)

(assert (=> b!4907922 (= lt!2013829 (get!19565 lt!2013826))))

(declare-fun b!4907923 () Bool)

(assert (=> b!4907923 (= e!3067816 e!3067821)))

(declare-fun res!2096442 () Bool)

(assert (=> b!4907923 (=> (not res!2096442) (not e!3067821))))

(declare-fun isEmpty!30446 (BalanceConc!29044) Bool)

(assert (=> b!4907923 (= res!2096442 (not (isEmpty!30446 (_1!33726 lt!2013832))))))

(declare-fun findLongestMatchWithZipperSequence!327 (Regex!13314 BalanceConc!29044) tuple2!60846)

(assert (=> b!4907923 (= lt!2013832 (findLongestMatchWithZipperSequence!327 (regex!8239 rule!164) input!1509))))

(declare-fun b!4907924 () Bool)

(declare-fun res!2096441 () Bool)

(assert (=> b!4907924 (=> res!2096441 e!3067817)))

(assert (=> b!4907924 (= res!2096441 (not (= (list!17829 lt!2013824) lt!2013827)))))

(declare-fun b!4907925 () Bool)

(declare-fun tp!1380379 () Bool)

(declare-fun inv!73049 (Conc!14807) Bool)

(assert (=> b!4907925 (= e!3067820 (and (inv!73049 (c!834255 input!1509)) tp!1380379))))

(declare-fun b!4907926 () Bool)

(declare-fun matchR!6581 (Regex!13314 List!56677) Bool)

(assert (=> b!4907926 (= e!3067815 (matchR!6581 (regex!8239 rule!164) (_1!33728 lt!2013828)))))

(declare-fun b!4907927 () Bool)

(declare-fun res!2096437 () Bool)

(assert (=> b!4907927 (=> (not res!2096437) (not e!3067816))))

(declare-fun ruleValid!3736 (LexerInterface!7831 Rule!16278) Bool)

(assert (=> b!4907927 (= res!2096437 (ruleValid!3736 thiss!15943 rule!164))))

(declare-fun res!2096436 () Bool)

(assert (=> b!4907928 (=> res!2096436 e!3067822)))

(declare-fun Forall!1736 (Int) Bool)

(assert (=> b!4907928 (= res!2096436 (not (Forall!1736 lambda!244575)))))

(assert (= (and start!514698 res!2096440) b!4907927))

(assert (= (and b!4907927 res!2096437) b!4907923))

(assert (= (and b!4907923 res!2096442) b!4907920))

(assert (= (and b!4907920 (not res!2096435)) b!4907926))

(assert (= (and b!4907920 (not res!2096439)) b!4907928))

(assert (= (and b!4907928 (not res!2096436)) b!4907916))

(assert (= (and b!4907916 (not res!2096434)) b!4907919))

(assert (= (and b!4907919 (not res!2096438)) b!4907924))

(assert (= (and b!4907924 (not res!2096441)) b!4907921))

(assert (= (and b!4907921 (not res!2096433)) b!4907922))

(assert (= b!4907918 b!4907917))

(assert (= start!514698 b!4907918))

(assert (= start!514698 b!4907925))

(declare-fun m!5917594 () Bool)

(assert (=> b!4907927 m!5917594))

(declare-fun m!5917596 () Bool)

(assert (=> b!4907924 m!5917596))

(declare-fun m!5917598 () Bool)

(assert (=> start!514698 m!5917598))

(declare-fun m!5917600 () Bool)

(assert (=> b!4907920 m!5917600))

(declare-fun m!5917602 () Bool)

(assert (=> b!4907920 m!5917602))

(declare-fun m!5917604 () Bool)

(assert (=> b!4907920 m!5917604))

(declare-fun m!5917606 () Bool)

(assert (=> b!4907920 m!5917606))

(assert (=> b!4907920 m!5917602))

(assert (=> b!4907920 m!5917604))

(declare-fun m!5917608 () Bool)

(assert (=> b!4907920 m!5917608))

(declare-fun m!5917610 () Bool)

(assert (=> b!4907920 m!5917610))

(declare-fun m!5917612 () Bool)

(assert (=> b!4907920 m!5917612))

(declare-fun m!5917614 () Bool)

(assert (=> b!4907920 m!5917614))

(declare-fun m!5917616 () Bool)

(assert (=> b!4907926 m!5917616))

(declare-fun m!5917618 () Bool)

(assert (=> b!4907918 m!5917618))

(declare-fun m!5917620 () Bool)

(assert (=> b!4907918 m!5917620))

(declare-fun m!5917622 () Bool)

(assert (=> b!4907928 m!5917622))

(declare-fun m!5917624 () Bool)

(assert (=> b!4907922 m!5917624))

(declare-fun m!5917626 () Bool)

(assert (=> b!4907921 m!5917626))

(declare-fun m!5917628 () Bool)

(assert (=> b!4907921 m!5917628))

(declare-fun m!5917630 () Bool)

(assert (=> b!4907916 m!5917630))

(declare-fun m!5917632 () Bool)

(assert (=> b!4907916 m!5917632))

(declare-fun m!5917634 () Bool)

(assert (=> b!4907916 m!5917634))

(declare-fun m!5917636 () Bool)

(assert (=> b!4907916 m!5917636))

(declare-fun m!5917638 () Bool)

(assert (=> b!4907916 m!5917638))

(declare-fun m!5917640 () Bool)

(assert (=> b!4907916 m!5917640))

(declare-fun m!5917642 () Bool)

(assert (=> b!4907916 m!5917642))

(declare-fun m!5917644 () Bool)

(assert (=> b!4907916 m!5917644))

(declare-fun m!5917646 () Bool)

(assert (=> b!4907916 m!5917646))

(declare-fun m!5917648 () Bool)

(assert (=> b!4907925 m!5917648))

(declare-fun m!5917650 () Bool)

(assert (=> b!4907923 m!5917650))

(declare-fun m!5917652 () Bool)

(assert (=> b!4907923 m!5917652))

(push 1)

(assert (not start!514698))

(assert (not b!4907928))

(assert (not b!4907922))

(assert (not b!4907926))

(assert (not b!4907918))

(assert (not b!4907916))

(assert (not b!4907923))

(assert (not b!4907924))

(assert (not b!4907921))

(assert (not b!4907925))

(assert b_and!346505)

(assert (not b_next!132717))

(assert (not b!4907920))

(assert (not b!4907927))

(assert (not b_next!132719))

(assert b_and!346503)

(check-sat)

(pop 1)

(push 1)

(assert b_and!346505)

(assert b_and!346503)

(assert (not b_next!132719))

(assert (not b_next!132717))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1577361 () Bool)

(declare-fun choose!35882 (Int) Bool)

(assert (=> d!1577361 (= (Forall!1736 lambda!244575) (choose!35882 lambda!244575))))

(declare-fun bs!1177245 () Bool)

(assert (= bs!1177245 d!1577361))

(declare-fun m!5917714 () Bool)

(assert (=> bs!1177245 m!5917714))

(assert (=> b!4907928 d!1577361))

(declare-fun d!1577363 () Bool)

(assert (=> d!1577363 (= (inv!73044 (tag!9103 rule!164)) (= (mod (str.len (value!263919 (tag!9103 rule!164))) 2) 0))))

(assert (=> b!4907918 d!1577363))

(declare-fun d!1577365 () Bool)

(declare-fun res!2096481 () Bool)

(declare-fun e!3067869 () Bool)

(assert (=> d!1577365 (=> (not res!2096481) (not e!3067869))))

(assert (=> d!1577365 (= res!2096481 (semiInverseModEq!3640 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))))))

(assert (=> d!1577365 (= (inv!73047 (transformation!8239 rule!164)) e!3067869)))

(declare-fun b!4907986 () Bool)

(declare-fun equivClasses!3492 (Int Int) Bool)

(assert (=> b!4907986 (= e!3067869 (equivClasses!3492 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))))))

(assert (= (and d!1577365 res!2096481) b!4907986))

(assert (=> d!1577365 m!5917600))

(declare-fun m!5917716 () Bool)

(assert (=> b!4907986 m!5917716))

(assert (=> b!4907918 d!1577365))

(declare-fun d!1577367 () Bool)

(declare-fun c!834261 () Bool)

(assert (=> d!1577367 (= c!834261 (is-Node!14807 (c!834255 input!1509)))))

(declare-fun e!3067874 () Bool)

(assert (=> d!1577367 (= (inv!73049 (c!834255 input!1509)) e!3067874)))

(declare-fun b!4907993 () Bool)

(declare-fun inv!73053 (Conc!14807) Bool)

(assert (=> b!4907993 (= e!3067874 (inv!73053 (c!834255 input!1509)))))

(declare-fun b!4907994 () Bool)

(declare-fun e!3067875 () Bool)

(assert (=> b!4907994 (= e!3067874 e!3067875)))

(declare-fun res!2096484 () Bool)

(assert (=> b!4907994 (= res!2096484 (not (is-Leaf!24644 (c!834255 input!1509))))))

(assert (=> b!4907994 (=> res!2096484 e!3067875)))

(declare-fun b!4907995 () Bool)

(declare-fun inv!73054 (Conc!14807) Bool)

(assert (=> b!4907995 (= e!3067875 (inv!73054 (c!834255 input!1509)))))

(assert (= (and d!1577367 c!834261) b!4907993))

(assert (= (and d!1577367 (not c!834261)) b!4907994))

(assert (= (and b!4907994 (not res!2096484)) b!4907995))

(declare-fun m!5917718 () Bool)

(assert (=> b!4907993 m!5917718))

(declare-fun m!5917720 () Bool)

(assert (=> b!4907995 m!5917720))

(assert (=> b!4907925 d!1577367))

(declare-fun d!1577369 () Bool)

(declare-fun dynLambda!22868 (Int BalanceConc!29044) Bool)

(assert (=> d!1577369 (dynLambda!22868 lambda!244575 lt!2013824)))

(declare-fun lt!2013884 () Unit!146759)

(declare-fun choose!35883 (Int BalanceConc!29044) Unit!146759)

(assert (=> d!1577369 (= lt!2013884 (choose!35883 lambda!244575 lt!2013824))))

(assert (=> d!1577369 (Forall!1736 lambda!244575)))

(assert (=> d!1577369 (= (ForallOf!1176 lambda!244575 lt!2013824) lt!2013884)))

(declare-fun b_lambda!195617 () Bool)

(assert (=> (not b_lambda!195617) (not d!1577369)))

(declare-fun bs!1177246 () Bool)

(assert (= bs!1177246 d!1577369))

(declare-fun m!5917722 () Bool)

(assert (=> bs!1177246 m!5917722))

(declare-fun m!5917724 () Bool)

(assert (=> bs!1177246 m!5917724))

(assert (=> bs!1177246 m!5917622))

(assert (=> b!4907916 d!1577369))

(declare-fun d!1577371 () Bool)

(declare-fun isEmpty!30449 (Option!14115) Bool)

(assert (=> d!1577371 (= (isDefined!11124 lt!2013826) (not (isEmpty!30449 lt!2013826)))))

(declare-fun bs!1177247 () Bool)

(assert (= bs!1177247 d!1577371))

(declare-fun m!5917726 () Bool)

(assert (=> bs!1177247 m!5917726))

(assert (=> b!4907916 d!1577371))

(declare-fun d!1577373 () Bool)

(declare-fun isEmpty!30450 (Option!14116) Bool)

(assert (=> d!1577373 (= (isDefined!11125 (Some!14115 (tuple2!60849 (Token!15007 lt!2013833 rule!164 lt!2013831 lt!2013827) (_2!33726 lt!2013832)))) (not (isEmpty!30450 (Some!14115 (tuple2!60849 (Token!15007 lt!2013833 rule!164 lt!2013831 lt!2013827) (_2!33726 lt!2013832))))))))

(declare-fun bs!1177248 () Bool)

(assert (= bs!1177248 d!1577373))

(declare-fun m!5917728 () Bool)

(assert (=> bs!1177248 m!5917728))

(assert (=> b!4907916 d!1577373))

(declare-fun d!1577375 () Bool)

(declare-fun lt!2013887 () Int)

(assert (=> d!1577375 (= lt!2013887 (size!37300 (list!17829 (_1!33726 lt!2013832))))))

(declare-fun size!37304 (Conc!14807) Int)

(assert (=> d!1577375 (= lt!2013887 (size!37304 (c!834255 (_1!33726 lt!2013832))))))

(assert (=> d!1577375 (= (size!37299 (_1!33726 lt!2013832)) lt!2013887)))

(declare-fun bs!1177249 () Bool)

(assert (= bs!1177249 d!1577375))

(assert (=> bs!1177249 m!5917630))

(assert (=> bs!1177249 m!5917630))

(declare-fun m!5917730 () Bool)

(assert (=> bs!1177249 m!5917730))

(declare-fun m!5917732 () Bool)

(assert (=> bs!1177249 m!5917732))

(assert (=> b!4907916 d!1577375))

(declare-fun d!1577377 () Bool)

(declare-fun fromListB!2709 (List!56677) BalanceConc!29044)

(assert (=> d!1577377 (= (seqFromList!5981 lt!2013827) (fromListB!2709 lt!2013827))))

(declare-fun bs!1177250 () Bool)

(assert (= bs!1177250 d!1577377))

(declare-fun m!5917734 () Bool)

(assert (=> bs!1177250 m!5917734))

(assert (=> b!4907916 d!1577377))

(declare-fun d!1577379 () Bool)

(declare-fun list!17831 (Conc!14807) List!56677)

(assert (=> d!1577379 (= (list!17829 (_1!33726 lt!2013832)) (list!17831 (c!834255 (_1!33726 lt!2013832))))))

(declare-fun bs!1177251 () Bool)

(assert (= bs!1177251 d!1577379))

(declare-fun m!5917736 () Bool)

(assert (=> bs!1177251 m!5917736))

(assert (=> b!4907916 d!1577379))

(declare-fun d!1577381 () Bool)

(assert (=> d!1577381 (dynLambda!22868 lambda!244575 (_1!33726 lt!2013832))))

(declare-fun lt!2013888 () Unit!146759)

(assert (=> d!1577381 (= lt!2013888 (choose!35883 lambda!244575 (_1!33726 lt!2013832)))))

(assert (=> d!1577381 (Forall!1736 lambda!244575)))

(assert (=> d!1577381 (= (ForallOf!1176 lambda!244575 (_1!33726 lt!2013832)) lt!2013888)))

(declare-fun b_lambda!195619 () Bool)

(assert (=> (not b_lambda!195619) (not d!1577381)))

(declare-fun bs!1177252 () Bool)

(assert (= bs!1177252 d!1577381))

(declare-fun m!5917738 () Bool)

(assert (=> bs!1177252 m!5917738))

(declare-fun m!5917740 () Bool)

(assert (=> bs!1177252 m!5917740))

(assert (=> bs!1177252 m!5917622))

(assert (=> b!4907916 d!1577381))

(declare-fun d!1577383 () Bool)

(declare-fun dynLambda!22869 (Int BalanceConc!29044) TokenValue!8549)

(assert (=> d!1577383 (= (apply!13583 (transformation!8239 rule!164) (_1!33726 lt!2013832)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832)))))

(declare-fun b_lambda!195621 () Bool)

(assert (=> (not b_lambda!195621) (not d!1577383)))

(declare-fun t!366925 () Bool)

(declare-fun tb!259975 () Bool)

(assert (=> (and b!4907917 (= (toValue!11170 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))) t!366925) tb!259975))

(declare-fun result!323778 () Bool)

(declare-fun inv!21 (TokenValue!8549) Bool)

(assert (=> tb!259975 (= result!323778 (inv!21 (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832))))))

(declare-fun m!5917742 () Bool)

(assert (=> tb!259975 m!5917742))

(assert (=> d!1577383 t!366925))

(declare-fun b_and!346511 () Bool)

(assert (= b_and!346503 (and (=> t!366925 result!323778) b_and!346511)))

(declare-fun m!5917744 () Bool)

(assert (=> d!1577383 m!5917744))

(assert (=> b!4907916 d!1577383))

(declare-fun b!4908016 () Bool)

(declare-fun e!3067889 () Bool)

(declare-fun lt!2013902 () Option!14115)

(assert (=> b!4908016 (= e!3067889 (= (size!37298 (_1!33725 (get!19565 lt!2013902))) (size!37300 (originalCharacters!8534 (_1!33725 (get!19565 lt!2013902))))))))

(declare-fun b!4908017 () Bool)

(declare-fun e!3067890 () Bool)

(assert (=> b!4908017 (= e!3067890 (matchR!6581 (regex!8239 rule!164) (_1!33728 (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)))))))

(declare-fun b!4908018 () Bool)

(declare-fun res!2096501 () Bool)

(assert (=> b!4908018 (=> (not res!2096501) (not e!3067889))))

(assert (=> b!4908018 (= res!2096501 (= (rule!11445 (_1!33725 (get!19565 lt!2013902))) rule!164))))

(declare-fun b!4908019 () Bool)

(declare-fun e!3067888 () Option!14115)

(assert (=> b!4908019 (= e!3067888 None!14114)))

(declare-fun b!4908021 () Bool)

(declare-fun e!3067887 () Bool)

(assert (=> b!4908021 (= e!3067887 e!3067889)))

(declare-fun res!2096499 () Bool)

(assert (=> b!4908021 (=> (not res!2096499) (not e!3067889))))

(declare-fun charsOf!5394 (Token!15006) BalanceConc!29044)

(assert (=> b!4908021 (= res!2096499 (matchR!6581 (regex!8239 rule!164) (list!17829 (charsOf!5394 (_1!33725 (get!19565 lt!2013902))))))))

(declare-fun b!4908022 () Bool)

(declare-fun res!2096502 () Bool)

(assert (=> b!4908022 (=> (not res!2096502) (not e!3067889))))

(assert (=> b!4908022 (= res!2096502 (< (size!37300 (_2!33725 (get!19565 lt!2013902))) (size!37300 lt!2013825)))))

(declare-fun b!4908023 () Bool)

(declare-fun lt!2013903 () tuple2!60850)

(assert (=> b!4908023 (= e!3067888 (Some!14114 (tuple2!60845 (Token!15007 (apply!13583 (transformation!8239 rule!164) (seqFromList!5981 (_1!33728 lt!2013903))) rule!164 (size!37299 (seqFromList!5981 (_1!33728 lt!2013903))) (_1!33728 lt!2013903)) (_2!33728 lt!2013903))))))

(declare-fun lt!2013906 () Unit!146759)

(assert (=> b!4908023 (= lt!2013906 (longestMatchIsAcceptedByMatchOrIsEmpty!1765 (regex!8239 rule!164) lt!2013825))))

(declare-fun res!2096500 () Bool)

(assert (=> b!4908023 (= res!2096500 (isEmpty!30445 (_1!33728 (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)))))))

(assert (=> b!4908023 (=> res!2096500 e!3067890)))

(assert (=> b!4908023 e!3067890))

(declare-fun lt!2013904 () Unit!146759)

(assert (=> b!4908023 (= lt!2013904 lt!2013906)))

(declare-fun lt!2013905 () Unit!146759)

(declare-fun lemmaSemiInverse!2582 (TokenValueInjection!16406 BalanceConc!29044) Unit!146759)

(assert (=> b!4908023 (= lt!2013905 (lemmaSemiInverse!2582 (transformation!8239 rule!164) (seqFromList!5981 (_1!33728 lt!2013903))))))

(declare-fun b!4908024 () Bool)

(declare-fun res!2096505 () Bool)

(assert (=> b!4908024 (=> (not res!2096505) (not e!3067889))))

(assert (=> b!4908024 (= res!2096505 (= (value!263945 (_1!33725 (get!19565 lt!2013902))) (apply!13583 (transformation!8239 (rule!11445 (_1!33725 (get!19565 lt!2013902)))) (seqFromList!5981 (originalCharacters!8534 (_1!33725 (get!19565 lt!2013902)))))))))

(declare-fun b!4908020 () Bool)

(declare-fun res!2096503 () Bool)

(assert (=> b!4908020 (=> (not res!2096503) (not e!3067889))))

(declare-fun ++!12268 (List!56677 List!56677) List!56677)

(assert (=> b!4908020 (= res!2096503 (= (++!12268 (list!17829 (charsOf!5394 (_1!33725 (get!19565 lt!2013902)))) (_2!33725 (get!19565 lt!2013902))) lt!2013825))))

(declare-fun d!1577385 () Bool)

(assert (=> d!1577385 e!3067887))

(declare-fun res!2096504 () Bool)

(assert (=> d!1577385 (=> res!2096504 e!3067887)))

(assert (=> d!1577385 (= res!2096504 (isEmpty!30449 lt!2013902))))

(assert (=> d!1577385 (= lt!2013902 e!3067888)))

(declare-fun c!834264 () Bool)

(assert (=> d!1577385 (= c!834264 (isEmpty!30445 (_1!33728 lt!2013903)))))

(declare-fun findLongestMatch!1670 (Regex!13314 List!56677) tuple2!60850)

(assert (=> d!1577385 (= lt!2013903 (findLongestMatch!1670 (regex!8239 rule!164) lt!2013825))))

(assert (=> d!1577385 (ruleValid!3736 thiss!15943 rule!164)))

(assert (=> d!1577385 (= (maxPrefixOneRule!3576 thiss!15943 rule!164 lt!2013825) lt!2013902)))

(assert (= (and d!1577385 c!834264) b!4908019))

(assert (= (and d!1577385 (not c!834264)) b!4908023))

(assert (= (and b!4908023 (not res!2096500)) b!4908017))

(assert (= (and d!1577385 (not res!2096504)) b!4908021))

(assert (= (and b!4908021 res!2096499) b!4908020))

(assert (= (and b!4908020 res!2096503) b!4908022))

(assert (= (and b!4908022 res!2096502) b!4908018))

(assert (= (and b!4908018 res!2096501) b!4908024))

(assert (= (and b!4908024 res!2096505) b!4908016))

(declare-fun m!5917752 () Bool)

(assert (=> b!4908016 m!5917752))

(declare-fun m!5917754 () Bool)

(assert (=> b!4908016 m!5917754))

(assert (=> b!4908022 m!5917752))

(declare-fun m!5917756 () Bool)

(assert (=> b!4908022 m!5917756))

(assert (=> b!4908022 m!5917604))

(assert (=> b!4908018 m!5917752))

(assert (=> b!4908020 m!5917752))

(declare-fun m!5917758 () Bool)

(assert (=> b!4908020 m!5917758))

(assert (=> b!4908020 m!5917758))

(declare-fun m!5917760 () Bool)

(assert (=> b!4908020 m!5917760))

(assert (=> b!4908020 m!5917760))

(declare-fun m!5917762 () Bool)

(assert (=> b!4908020 m!5917762))

(assert (=> b!4908024 m!5917752))

(declare-fun m!5917764 () Bool)

(assert (=> b!4908024 m!5917764))

(assert (=> b!4908024 m!5917764))

(declare-fun m!5917766 () Bool)

(assert (=> b!4908024 m!5917766))

(assert (=> b!4908021 m!5917752))

(assert (=> b!4908021 m!5917758))

(assert (=> b!4908021 m!5917758))

(assert (=> b!4908021 m!5917760))

(assert (=> b!4908021 m!5917760))

(declare-fun m!5917768 () Bool)

(assert (=> b!4908021 m!5917768))

(assert (=> b!4908017 m!5917602))

(assert (=> b!4908017 m!5917604))

(assert (=> b!4908017 m!5917602))

(assert (=> b!4908017 m!5917604))

(assert (=> b!4908017 m!5917608))

(declare-fun m!5917770 () Bool)

(assert (=> b!4908017 m!5917770))

(declare-fun m!5917772 () Bool)

(assert (=> d!1577385 m!5917772))

(declare-fun m!5917774 () Bool)

(assert (=> d!1577385 m!5917774))

(declare-fun m!5917776 () Bool)

(assert (=> d!1577385 m!5917776))

(assert (=> d!1577385 m!5917594))

(assert (=> b!4908023 m!5917602))

(declare-fun m!5917778 () Bool)

(assert (=> b!4908023 m!5917778))

(declare-fun m!5917780 () Bool)

(assert (=> b!4908023 m!5917780))

(declare-fun m!5917782 () Bool)

(assert (=> b!4908023 m!5917782))

(assert (=> b!4908023 m!5917604))

(assert (=> b!4908023 m!5917778))

(declare-fun m!5917784 () Bool)

(assert (=> b!4908023 m!5917784))

(assert (=> b!4908023 m!5917610))

(assert (=> b!4908023 m!5917778))

(declare-fun m!5917786 () Bool)

(assert (=> b!4908023 m!5917786))

(assert (=> b!4908023 m!5917602))

(assert (=> b!4908023 m!5917604))

(assert (=> b!4908023 m!5917608))

(assert (=> b!4908023 m!5917778))

(assert (=> b!4907916 d!1577385))

(declare-fun d!1577393 () Bool)

(declare-fun res!2096510 () Bool)

(declare-fun e!3067893 () Bool)

(assert (=> d!1577393 (=> (not res!2096510) (not e!3067893))))

(declare-fun validRegex!5907 (Regex!13314) Bool)

(assert (=> d!1577393 (= res!2096510 (validRegex!5907 (regex!8239 rule!164)))))

(assert (=> d!1577393 (= (ruleValid!3736 thiss!15943 rule!164) e!3067893)))

(declare-fun b!4908029 () Bool)

(declare-fun res!2096511 () Bool)

(assert (=> b!4908029 (=> (not res!2096511) (not e!3067893))))

(declare-fun nullable!4580 (Regex!13314) Bool)

(assert (=> b!4908029 (= res!2096511 (not (nullable!4580 (regex!8239 rule!164))))))

(declare-fun b!4908030 () Bool)

(assert (=> b!4908030 (= e!3067893 (not (= (tag!9103 rule!164) (String!64189 ""))))))

(assert (= (and d!1577393 res!2096510) b!4908029))

(assert (= (and b!4908029 res!2096511) b!4908030))

(declare-fun m!5917788 () Bool)

(assert (=> d!1577393 m!5917788))

(declare-fun m!5917790 () Bool)

(assert (=> b!4908029 m!5917790))

(assert (=> b!4907927 d!1577393))

(declare-fun b!4908059 () Bool)

(declare-fun res!2096534 () Bool)

(declare-fun e!3067910 () Bool)

(assert (=> b!4908059 (=> (not res!2096534) (not e!3067910))))

(declare-fun call!340673 () Bool)

(assert (=> b!4908059 (= res!2096534 (not call!340673))))

(declare-fun b!4908060 () Bool)

(declare-fun res!2096535 () Bool)

(declare-fun e!3067911 () Bool)

(assert (=> b!4908060 (=> res!2096535 e!3067911)))

(assert (=> b!4908060 (= res!2096535 e!3067910)))

(declare-fun res!2096529 () Bool)

(assert (=> b!4908060 (=> (not res!2096529) (not e!3067910))))

(declare-fun lt!2013912 () Bool)

(assert (=> b!4908060 (= res!2096529 lt!2013912)))

(declare-fun b!4908061 () Bool)

(declare-fun e!3067914 () Bool)

(declare-fun derivativeStep!3900 (Regex!13314 C!26826) Regex!13314)

(declare-fun head!10481 (List!56677) C!26826)

(declare-fun tail!9628 (List!56677) List!56677)

(assert (=> b!4908061 (= e!3067914 (matchR!6581 (derivativeStep!3900 (regex!8239 rule!164) (head!10481 (_1!33728 lt!2013828))) (tail!9628 (_1!33728 lt!2013828))))))

(declare-fun b!4908062 () Bool)

(declare-fun e!3067908 () Bool)

(assert (=> b!4908062 (= e!3067911 e!3067908)))

(declare-fun res!2096530 () Bool)

(assert (=> b!4908062 (=> (not res!2096530) (not e!3067908))))

(assert (=> b!4908062 (= res!2096530 (not lt!2013912))))

(declare-fun bm!340668 () Bool)

(assert (=> bm!340668 (= call!340673 (isEmpty!30445 (_1!33728 lt!2013828)))))

(declare-fun b!4908063 () Bool)

(declare-fun e!3067912 () Bool)

(assert (=> b!4908063 (= e!3067912 (not (= (head!10481 (_1!33728 lt!2013828)) (c!834254 (regex!8239 rule!164)))))))

(declare-fun d!1577395 () Bool)

(declare-fun e!3067913 () Bool)

(assert (=> d!1577395 e!3067913))

(declare-fun c!834271 () Bool)

(assert (=> d!1577395 (= c!834271 (is-EmptyExpr!13314 (regex!8239 rule!164)))))

(assert (=> d!1577395 (= lt!2013912 e!3067914)))

(declare-fun c!834273 () Bool)

(assert (=> d!1577395 (= c!834273 (isEmpty!30445 (_1!33728 lt!2013828)))))

(assert (=> d!1577395 (validRegex!5907 (regex!8239 rule!164))))

(assert (=> d!1577395 (= (matchR!6581 (regex!8239 rule!164) (_1!33728 lt!2013828)) lt!2013912)))

(declare-fun b!4908064 () Bool)

(assert (=> b!4908064 (= e!3067913 (= lt!2013912 call!340673))))

(declare-fun b!4908065 () Bool)

(declare-fun e!3067909 () Bool)

(assert (=> b!4908065 (= e!3067909 (not lt!2013912))))

(declare-fun b!4908066 () Bool)

(declare-fun res!2096531 () Bool)

(assert (=> b!4908066 (=> res!2096531 e!3067911)))

(assert (=> b!4908066 (= res!2096531 (not (is-ElementMatch!13314 (regex!8239 rule!164))))))

(assert (=> b!4908066 (= e!3067909 e!3067911)))

(declare-fun b!4908067 () Bool)

(assert (=> b!4908067 (= e!3067908 e!3067912)))

(declare-fun res!2096528 () Bool)

(assert (=> b!4908067 (=> res!2096528 e!3067912)))

(assert (=> b!4908067 (= res!2096528 call!340673)))

(declare-fun b!4908068 () Bool)

(assert (=> b!4908068 (= e!3067914 (nullable!4580 (regex!8239 rule!164)))))

(declare-fun b!4908069 () Bool)

(declare-fun res!2096533 () Bool)

(assert (=> b!4908069 (=> (not res!2096533) (not e!3067910))))

(assert (=> b!4908069 (= res!2096533 (isEmpty!30445 (tail!9628 (_1!33728 lt!2013828))))))

(declare-fun b!4908070 () Bool)

(declare-fun res!2096532 () Bool)

(assert (=> b!4908070 (=> res!2096532 e!3067912)))

(assert (=> b!4908070 (= res!2096532 (not (isEmpty!30445 (tail!9628 (_1!33728 lt!2013828)))))))

(declare-fun b!4908071 () Bool)

(assert (=> b!4908071 (= e!3067913 e!3067909)))

(declare-fun c!834272 () Bool)

(assert (=> b!4908071 (= c!834272 (is-EmptyLang!13314 (regex!8239 rule!164)))))

(declare-fun b!4908072 () Bool)

(assert (=> b!4908072 (= e!3067910 (= (head!10481 (_1!33728 lt!2013828)) (c!834254 (regex!8239 rule!164))))))

(assert (= (and d!1577395 c!834273) b!4908068))

(assert (= (and d!1577395 (not c!834273)) b!4908061))

(assert (= (and d!1577395 c!834271) b!4908064))

(assert (= (and d!1577395 (not c!834271)) b!4908071))

(assert (= (and b!4908071 c!834272) b!4908065))

(assert (= (and b!4908071 (not c!834272)) b!4908066))

(assert (= (and b!4908066 (not res!2096531)) b!4908060))

(assert (= (and b!4908060 res!2096529) b!4908059))

(assert (= (and b!4908059 res!2096534) b!4908069))

(assert (= (and b!4908069 res!2096533) b!4908072))

(assert (= (and b!4908060 (not res!2096535)) b!4908062))

(assert (= (and b!4908062 res!2096530) b!4908067))

(assert (= (and b!4908067 (not res!2096528)) b!4908070))

(assert (= (and b!4908070 (not res!2096532)) b!4908063))

(assert (= (or b!4908064 b!4908059 b!4908067) bm!340668))

(declare-fun m!5917806 () Bool)

(assert (=> b!4908072 m!5917806))

(assert (=> d!1577395 m!5917606))

(assert (=> d!1577395 m!5917788))

(declare-fun m!5917808 () Bool)

(assert (=> b!4908069 m!5917808))

(assert (=> b!4908069 m!5917808))

(declare-fun m!5917810 () Bool)

(assert (=> b!4908069 m!5917810))

(assert (=> bm!340668 m!5917606))

(assert (=> b!4908070 m!5917808))

(assert (=> b!4908070 m!5917808))

(assert (=> b!4908070 m!5917810))

(assert (=> b!4908063 m!5917806))

(assert (=> b!4908061 m!5917806))

(assert (=> b!4908061 m!5917806))

(declare-fun m!5917812 () Bool)

(assert (=> b!4908061 m!5917812))

(assert (=> b!4908061 m!5917808))

(assert (=> b!4908061 m!5917812))

(assert (=> b!4908061 m!5917808))

(declare-fun m!5917814 () Bool)

(assert (=> b!4908061 m!5917814))

(assert (=> b!4908068 m!5917790))

(assert (=> b!4907926 d!1577395))

(declare-fun d!1577403 () Bool)

(declare-fun lt!2013915 () Bool)

(assert (=> d!1577403 (= lt!2013915 (isEmpty!30445 (list!17829 (_1!33726 lt!2013832))))))

(declare-fun isEmpty!30451 (Conc!14807) Bool)

(assert (=> d!1577403 (= lt!2013915 (isEmpty!30451 (c!834255 (_1!33726 lt!2013832))))))

(assert (=> d!1577403 (= (isEmpty!30446 (_1!33726 lt!2013832)) lt!2013915)))

(declare-fun bs!1177258 () Bool)

(assert (= bs!1177258 d!1577403))

(assert (=> bs!1177258 m!5917630))

(assert (=> bs!1177258 m!5917630))

(declare-fun m!5917816 () Bool)

(assert (=> bs!1177258 m!5917816))

(declare-fun m!5917818 () Bool)

(assert (=> bs!1177258 m!5917818))

(assert (=> b!4907923 d!1577403))

(declare-fun d!1577405 () Bool)

(declare-fun lt!2013918 () tuple2!60846)

(assert (=> d!1577405 (= (tuple2!60851 (list!17829 (_1!33726 lt!2013918)) (list!17829 (_2!33726 lt!2013918))) (findLongestMatch!1670 (regex!8239 rule!164) (list!17829 input!1509)))))

(declare-fun choose!35884 (Regex!13314 BalanceConc!29044) tuple2!60846)

(assert (=> d!1577405 (= lt!2013918 (choose!35884 (regex!8239 rule!164) input!1509))))

(assert (=> d!1577405 (validRegex!5907 (regex!8239 rule!164))))

(assert (=> d!1577405 (= (findLongestMatchWithZipperSequence!327 (regex!8239 rule!164) input!1509) lt!2013918)))

(declare-fun bs!1177259 () Bool)

(assert (= bs!1177259 d!1577405))

(assert (=> bs!1177259 m!5917788))

(declare-fun m!5917820 () Bool)

(assert (=> bs!1177259 m!5917820))

(declare-fun m!5917822 () Bool)

(assert (=> bs!1177259 m!5917822))

(assert (=> bs!1177259 m!5917612))

(declare-fun m!5917824 () Bool)

(assert (=> bs!1177259 m!5917824))

(assert (=> bs!1177259 m!5917612))

(declare-fun m!5917826 () Bool)

(assert (=> bs!1177259 m!5917826))

(assert (=> b!4907923 d!1577405))

(declare-fun d!1577407 () Bool)

(assert (=> d!1577407 (= (get!19565 lt!2013826) (v!50076 lt!2013826))))

(assert (=> b!4907922 d!1577407))

(declare-fun d!1577409 () Bool)

(assert (=> d!1577409 (= (list!17829 lt!2013824) (list!17831 (c!834255 lt!2013824)))))

(declare-fun bs!1177260 () Bool)

(assert (= bs!1177260 d!1577409))

(declare-fun m!5917828 () Bool)

(assert (=> bs!1177260 m!5917828))

(assert (=> b!4907924 d!1577409))

(declare-fun d!1577411 () Bool)

(assert (=> d!1577411 (= (list!17829 input!1509) (list!17831 (c!834255 input!1509)))))

(declare-fun bs!1177261 () Bool)

(assert (= bs!1177261 d!1577411))

(declare-fun m!5917830 () Bool)

(assert (=> bs!1177261 m!5917830))

(assert (=> b!4907920 d!1577411))

(declare-fun d!1577413 () Bool)

(declare-fun lt!2013921 () Int)

(assert (=> d!1577413 (>= lt!2013921 0)))

(declare-fun e!3067917 () Int)

(assert (=> d!1577413 (= lt!2013921 e!3067917)))

(declare-fun c!834276 () Bool)

(assert (=> d!1577413 (= c!834276 (is-Nil!56553 lt!2013825))))

(assert (=> d!1577413 (= (size!37300 lt!2013825) lt!2013921)))

(declare-fun b!4908077 () Bool)

(assert (=> b!4908077 (= e!3067917 0)))

(declare-fun b!4908078 () Bool)

(assert (=> b!4908078 (= e!3067917 (+ 1 (size!37300 (t!366921 lt!2013825))))))

(assert (= (and d!1577413 c!834276) b!4908077))

(assert (= (and d!1577413 (not c!834276)) b!4908078))

(declare-fun m!5917832 () Bool)

(assert (=> b!4908078 m!5917832))

(assert (=> b!4907920 d!1577413))

(declare-fun b!4908107 () Bool)

(declare-fun e!3067935 () tuple2!60850)

(declare-fun e!3067938 () tuple2!60850)

(assert (=> b!4908107 (= e!3067935 e!3067938)))

(declare-fun c!834292 () Bool)

(assert (=> b!4908107 (= c!834292 (= (size!37300 Nil!56553) (size!37300 lt!2013825)))))

(declare-fun b!4908108 () Bool)

(declare-fun e!3067939 () Unit!146759)

(declare-fun Unit!146764 () Unit!146759)

(assert (=> b!4908108 (= e!3067939 Unit!146764)))

(declare-fun lt!2013992 () Unit!146759)

(declare-fun call!340695 () Unit!146759)

(assert (=> b!4908108 (= lt!2013992 call!340695)))

(declare-fun call!340697 () Bool)

(assert (=> b!4908108 call!340697))

(declare-fun lt!2013978 () Unit!146759)

(assert (=> b!4908108 (= lt!2013978 lt!2013992)))

(declare-fun lt!2013994 () Unit!146759)

(declare-fun call!340691 () Unit!146759)

(assert (=> b!4908108 (= lt!2013994 call!340691)))

(assert (=> b!4908108 (= lt!2013825 Nil!56553)))

(declare-fun lt!2013984 () Unit!146759)

(assert (=> b!4908108 (= lt!2013984 lt!2013994)))

(assert (=> b!4908108 false))

(declare-fun b!4908109 () Bool)

(declare-fun e!3067940 () tuple2!60850)

(assert (=> b!4908109 (= e!3067940 (tuple2!60851 Nil!56553 Nil!56553))))

(declare-fun b!4908110 () Bool)

(declare-fun e!3067937 () tuple2!60850)

(assert (=> b!4908110 (= e!3067937 (tuple2!60851 Nil!56553 lt!2013825))))

(declare-fun call!340690 () Regex!13314)

(declare-fun lt!2013980 () List!56677)

(declare-fun call!340692 () List!56677)

(declare-fun call!340696 () tuple2!60850)

(declare-fun bm!340686 () Bool)

(assert (=> bm!340686 (= call!340696 (findLongestMatchInner!1802 call!340690 lt!2013980 (+ (size!37300 Nil!56553) 1) call!340692 lt!2013825 (size!37300 lt!2013825)))))

(declare-fun bm!340687 () Bool)

(declare-fun call!340693 () C!26826)

(assert (=> bm!340687 (= call!340693 (head!10481 lt!2013825))))

(declare-fun b!4908111 () Bool)

(declare-fun e!3067934 () Bool)

(declare-fun lt!2013982 () tuple2!60850)

(assert (=> b!4908111 (= e!3067934 (>= (size!37300 (_1!33728 lt!2013982)) (size!37300 Nil!56553)))))

(declare-fun b!4908112 () Bool)

(declare-fun Unit!146765 () Unit!146759)

(assert (=> b!4908112 (= e!3067939 Unit!146765)))

(declare-fun b!4908113 () Bool)

(declare-fun e!3067941 () tuple2!60850)

(assert (=> b!4908113 (= e!3067941 call!340696)))

(declare-fun bm!340688 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1080 (List!56677 List!56677 List!56677) Unit!146759)

(assert (=> bm!340688 (= call!340691 (lemmaIsPrefixSameLengthThenSameList!1080 lt!2013825 Nil!56553 lt!2013825))))

(declare-fun b!4908114 () Bool)

(assert (=> b!4908114 (= e!3067940 (tuple2!60851 Nil!56553 lt!2013825))))

(declare-fun b!4908115 () Bool)

(assert (=> b!4908115 (= e!3067941 e!3067937)))

(declare-fun lt!2013991 () tuple2!60850)

(assert (=> b!4908115 (= lt!2013991 call!340696)))

(declare-fun c!834293 () Bool)

(assert (=> b!4908115 (= c!834293 (isEmpty!30445 (_1!33728 lt!2013991)))))

(declare-fun b!4908116 () Bool)

(declare-fun c!834294 () Bool)

(declare-fun call!340694 () Bool)

(assert (=> b!4908116 (= c!834294 call!340694)))

(declare-fun lt!2013998 () Unit!146759)

(declare-fun lt!2013981 () Unit!146759)

(assert (=> b!4908116 (= lt!2013998 lt!2013981)))

(declare-fun lt!2014002 () C!26826)

(declare-fun lt!2013987 () List!56677)

(assert (=> b!4908116 (= (++!12268 (++!12268 Nil!56553 (Cons!56553 lt!2014002 Nil!56553)) lt!2013987) lt!2013825)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1352 (List!56677 C!26826 List!56677 List!56677) Unit!146759)

(assert (=> b!4908116 (= lt!2013981 (lemmaMoveElementToOtherListKeepsConcatEq!1352 Nil!56553 lt!2014002 lt!2013987 lt!2013825))))

(assert (=> b!4908116 (= lt!2013987 (tail!9628 lt!2013825))))

(assert (=> b!4908116 (= lt!2014002 (head!10481 lt!2013825))))

(declare-fun lt!2013995 () Unit!146759)

(declare-fun lt!2013983 () Unit!146759)

(assert (=> b!4908116 (= lt!2013995 lt!2013983)))

(declare-fun isPrefix!4921 (List!56677 List!56677) Bool)

(declare-fun getSuffix!2909 (List!56677 List!56677) List!56677)

(assert (=> b!4908116 (isPrefix!4921 (++!12268 Nil!56553 (Cons!56553 (head!10481 (getSuffix!2909 lt!2013825 Nil!56553)) Nil!56553)) lt!2013825)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!734 (List!56677 List!56677) Unit!146759)

(assert (=> b!4908116 (= lt!2013983 (lemmaAddHeadSuffixToPrefixStillPrefix!734 Nil!56553 lt!2013825))))

(declare-fun lt!2014005 () Unit!146759)

(declare-fun lt!2013999 () Unit!146759)

(assert (=> b!4908116 (= lt!2014005 lt!2013999)))

(assert (=> b!4908116 (= lt!2013999 (lemmaAddHeadSuffixToPrefixStillPrefix!734 Nil!56553 lt!2013825))))

(assert (=> b!4908116 (= lt!2013980 (++!12268 Nil!56553 (Cons!56553 (head!10481 lt!2013825) Nil!56553)))))

(declare-fun lt!2013993 () Unit!146759)

(assert (=> b!4908116 (= lt!2013993 e!3067939)))

(declare-fun c!834289 () Bool)

(assert (=> b!4908116 (= c!834289 (= (size!37300 Nil!56553) (size!37300 lt!2013825)))))

(declare-fun lt!2014001 () Unit!146759)

(declare-fun lt!2013996 () Unit!146759)

(assert (=> b!4908116 (= lt!2014001 lt!2013996)))

(assert (=> b!4908116 (<= (size!37300 Nil!56553) (size!37300 lt!2013825))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!646 (List!56677 List!56677) Unit!146759)

(assert (=> b!4908116 (= lt!2013996 (lemmaIsPrefixThenSmallerEqSize!646 Nil!56553 lt!2013825))))

(assert (=> b!4908116 (= e!3067938 e!3067941)))

(declare-fun bm!340689 () Bool)

(assert (=> bm!340689 (= call!340692 (tail!9628 lt!2013825))))

(declare-fun bm!340690 () Bool)

(assert (=> bm!340690 (= call!340697 (isPrefix!4921 lt!2013825 lt!2013825))))

(declare-fun b!4908117 () Bool)

(declare-fun e!3067936 () Bool)

(assert (=> b!4908117 (= e!3067936 e!3067934)))

(declare-fun res!2096541 () Bool)

(assert (=> b!4908117 (=> res!2096541 e!3067934)))

(assert (=> b!4908117 (= res!2096541 (isEmpty!30445 (_1!33728 lt!2013982)))))

(declare-fun b!4908118 () Bool)

(declare-fun c!834290 () Bool)

(assert (=> b!4908118 (= c!834290 call!340694)))

(declare-fun lt!2013990 () Unit!146759)

(declare-fun lt!2013979 () Unit!146759)

(assert (=> b!4908118 (= lt!2013990 lt!2013979)))

(assert (=> b!4908118 (= lt!2013825 Nil!56553)))

(assert (=> b!4908118 (= lt!2013979 call!340691)))

(declare-fun lt!2013997 () Unit!146759)

(declare-fun lt!2013986 () Unit!146759)

(assert (=> b!4908118 (= lt!2013997 lt!2013986)))

(assert (=> b!4908118 call!340697))

(assert (=> b!4908118 (= lt!2013986 call!340695)))

(assert (=> b!4908118 (= e!3067938 e!3067940)))

(declare-fun d!1577415 () Bool)

(assert (=> d!1577415 e!3067936))

(declare-fun res!2096540 () Bool)

(assert (=> d!1577415 (=> (not res!2096540) (not e!3067936))))

(assert (=> d!1577415 (= res!2096540 (= (++!12268 (_1!33728 lt!2013982) (_2!33728 lt!2013982)) lt!2013825))))

(assert (=> d!1577415 (= lt!2013982 e!3067935)))

(declare-fun c!834291 () Bool)

(declare-fun lostCause!1108 (Regex!13314) Bool)

(assert (=> d!1577415 (= c!834291 (lostCause!1108 (regex!8239 rule!164)))))

(declare-fun lt!2013988 () Unit!146759)

(declare-fun Unit!146766 () Unit!146759)

(assert (=> d!1577415 (= lt!2013988 Unit!146766)))

(assert (=> d!1577415 (= (getSuffix!2909 lt!2013825 Nil!56553) lt!2013825)))

(declare-fun lt!2013985 () Unit!146759)

(declare-fun lt!2014000 () Unit!146759)

(assert (=> d!1577415 (= lt!2013985 lt!2014000)))

(declare-fun lt!2014004 () List!56677)

(assert (=> d!1577415 (= lt!2013825 lt!2014004)))

(declare-fun lemmaSamePrefixThenSameSuffix!2325 (List!56677 List!56677 List!56677 List!56677 List!56677) Unit!146759)

(assert (=> d!1577415 (= lt!2014000 (lemmaSamePrefixThenSameSuffix!2325 Nil!56553 lt!2013825 Nil!56553 lt!2014004 lt!2013825))))

(assert (=> d!1577415 (= lt!2014004 (getSuffix!2909 lt!2013825 Nil!56553))))

(declare-fun lt!2014003 () Unit!146759)

(declare-fun lt!2013989 () Unit!146759)

(assert (=> d!1577415 (= lt!2014003 lt!2013989)))

(assert (=> d!1577415 (isPrefix!4921 Nil!56553 (++!12268 Nil!56553 lt!2013825))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3145 (List!56677 List!56677) Unit!146759)

(assert (=> d!1577415 (= lt!2013989 (lemmaConcatTwoListThenFirstIsPrefix!3145 Nil!56553 lt!2013825))))

(assert (=> d!1577415 (validRegex!5907 (regex!8239 rule!164))))

(assert (=> d!1577415 (= (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)) lt!2013982)))

(declare-fun bm!340685 () Bool)

(assert (=> bm!340685 (= call!340690 (derivativeStep!3900 (regex!8239 rule!164) call!340693))))

(declare-fun b!4908119 () Bool)

(assert (=> b!4908119 (= e!3067937 lt!2013991)))

(declare-fun bm!340691 () Bool)

(assert (=> bm!340691 (= call!340694 (nullable!4580 (regex!8239 rule!164)))))

(declare-fun b!4908120 () Bool)

(assert (=> b!4908120 (= e!3067935 (tuple2!60851 Nil!56553 lt!2013825))))

(declare-fun bm!340692 () Bool)

(declare-fun lemmaIsPrefixRefl!3318 (List!56677 List!56677) Unit!146759)

(assert (=> bm!340692 (= call!340695 (lemmaIsPrefixRefl!3318 lt!2013825 lt!2013825))))

(assert (= (and d!1577415 c!834291) b!4908120))

(assert (= (and d!1577415 (not c!834291)) b!4908107))

(assert (= (and b!4908107 c!834292) b!4908118))

(assert (= (and b!4908107 (not c!834292)) b!4908116))

(assert (= (and b!4908118 c!834290) b!4908109))

(assert (= (and b!4908118 (not c!834290)) b!4908114))

(assert (= (and b!4908116 c!834289) b!4908108))

(assert (= (and b!4908116 (not c!834289)) b!4908112))

(assert (= (and b!4908116 c!834294) b!4908115))

(assert (= (and b!4908116 (not c!834294)) b!4908113))

(assert (= (and b!4908115 c!834293) b!4908110))

(assert (= (and b!4908115 (not c!834293)) b!4908119))

(assert (= (or b!4908115 b!4908113) bm!340687))

(assert (= (or b!4908115 b!4908113) bm!340689))

(assert (= (or b!4908115 b!4908113) bm!340685))

(assert (= (or b!4908115 b!4908113) bm!340686))

(assert (= (or b!4908118 b!4908108) bm!340690))

(assert (= (or b!4908118 b!4908108) bm!340692))

(assert (= (or b!4908118 b!4908108) bm!340688))

(assert (= (or b!4908118 b!4908116) bm!340691))

(assert (= (and d!1577415 res!2096540) b!4908117))

(assert (= (and b!4908117 (not res!2096541)) b!4908111))

(declare-fun m!5917834 () Bool)

(assert (=> bm!340689 m!5917834))

(declare-fun m!5917836 () Bool)

(assert (=> bm!340687 m!5917836))

(assert (=> bm!340691 m!5917790))

(declare-fun m!5917838 () Bool)

(assert (=> b!4908111 m!5917838))

(assert (=> b!4908111 m!5917602))

(declare-fun m!5917840 () Bool)

(assert (=> bm!340685 m!5917840))

(declare-fun m!5917842 () Bool)

(assert (=> bm!340690 m!5917842))

(declare-fun m!5917844 () Bool)

(assert (=> b!4908115 m!5917844))

(declare-fun m!5917846 () Bool)

(assert (=> b!4908117 m!5917846))

(assert (=> b!4908116 m!5917602))

(declare-fun m!5917848 () Bool)

(assert (=> b!4908116 m!5917848))

(declare-fun m!5917850 () Bool)

(assert (=> b!4908116 m!5917850))

(declare-fun m!5917852 () Bool)

(assert (=> b!4908116 m!5917852))

(declare-fun m!5917854 () Bool)

(assert (=> b!4908116 m!5917854))

(declare-fun m!5917856 () Bool)

(assert (=> b!4908116 m!5917856))

(declare-fun m!5917858 () Bool)

(assert (=> b!4908116 m!5917858))

(assert (=> b!4908116 m!5917604))

(assert (=> b!4908116 m!5917854))

(declare-fun m!5917860 () Bool)

(assert (=> b!4908116 m!5917860))

(declare-fun m!5917862 () Bool)

(assert (=> b!4908116 m!5917862))

(assert (=> b!4908116 m!5917850))

(assert (=> b!4908116 m!5917836))

(assert (=> b!4908116 m!5917860))

(declare-fun m!5917864 () Bool)

(assert (=> b!4908116 m!5917864))

(declare-fun m!5917866 () Bool)

(assert (=> b!4908116 m!5917866))

(assert (=> b!4908116 m!5917834))

(declare-fun m!5917868 () Bool)

(assert (=> bm!340692 m!5917868))

(assert (=> bm!340686 m!5917604))

(declare-fun m!5917870 () Bool)

(assert (=> bm!340686 m!5917870))

(declare-fun m!5917872 () Bool)

(assert (=> d!1577415 m!5917872))

(declare-fun m!5917874 () Bool)

(assert (=> d!1577415 m!5917874))

(declare-fun m!5917876 () Bool)

(assert (=> d!1577415 m!5917876))

(declare-fun m!5917878 () Bool)

(assert (=> d!1577415 m!5917878))

(assert (=> d!1577415 m!5917850))

(assert (=> d!1577415 m!5917876))

(declare-fun m!5917880 () Bool)

(assert (=> d!1577415 m!5917880))

(declare-fun m!5917882 () Bool)

(assert (=> d!1577415 m!5917882))

(assert (=> d!1577415 m!5917788))

(declare-fun m!5917884 () Bool)

(assert (=> bm!340688 m!5917884))

(assert (=> b!4907920 d!1577415))

(declare-fun d!1577417 () Bool)

(declare-fun e!3067944 () Bool)

(assert (=> d!1577417 e!3067944))

(declare-fun res!2096544 () Bool)

(assert (=> d!1577417 (=> (not res!2096544) (not e!3067944))))

(assert (=> d!1577417 (= res!2096544 (semiInverseModEq!3640 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))))))

(declare-fun Unit!146768 () Unit!146759)

(assert (=> d!1577417 (= (lemmaInv!1285 (transformation!8239 rule!164)) Unit!146768)))

(declare-fun b!4908123 () Bool)

(assert (=> b!4908123 (= e!3067944 (equivClasses!3492 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))))))

(assert (= (and d!1577417 res!2096544) b!4908123))

(assert (=> d!1577417 m!5917600))

(assert (=> b!4908123 m!5917716))

(assert (=> b!4907920 d!1577417))

(declare-fun d!1577419 () Bool)

(declare-fun lt!2014006 () Int)

(assert (=> d!1577419 (>= lt!2014006 0)))

(declare-fun e!3067945 () Int)

(assert (=> d!1577419 (= lt!2014006 e!3067945)))

(declare-fun c!834295 () Bool)

(assert (=> d!1577419 (= c!834295 (is-Nil!56553 Nil!56553))))

(assert (=> d!1577419 (= (size!37300 Nil!56553) lt!2014006)))

(declare-fun b!4908124 () Bool)

(assert (=> b!4908124 (= e!3067945 0)))

(declare-fun b!4908125 () Bool)

(assert (=> b!4908125 (= e!3067945 (+ 1 (size!37300 (t!366921 Nil!56553))))))

(assert (= (and d!1577419 c!834295) b!4908124))

(assert (= (and d!1577419 (not c!834295)) b!4908125))

(declare-fun m!5917886 () Bool)

(assert (=> b!4908125 m!5917886))

(assert (=> b!4907920 d!1577419))

(declare-fun bs!1177262 () Bool)

(declare-fun d!1577421 () Bool)

(assert (= bs!1177262 (and d!1577421 b!4907928)))

(declare-fun lambda!244585 () Int)

(assert (=> bs!1177262 (= lambda!244585 lambda!244575)))

(assert (=> d!1577421 true))

(assert (=> d!1577421 (< (dynLambda!22864 order!25807 (toChars!11029 (transformation!8239 rule!164))) (dynLambda!22863 order!25805 lambda!244585))))

(assert (=> d!1577421 true))

(assert (=> d!1577421 (< (dynLambda!22862 order!25803 (toValue!11170 (transformation!8239 rule!164))) (dynLambda!22863 order!25805 lambda!244585))))

(assert (=> d!1577421 (= (semiInverseModEq!3640 (toChars!11029 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))) (Forall!1736 lambda!244585))))

(declare-fun bs!1177263 () Bool)

(assert (= bs!1177263 d!1577421))

(declare-fun m!5917888 () Bool)

(assert (=> bs!1177263 m!5917888))

(assert (=> b!4907920 d!1577421))

(declare-fun d!1577423 () Bool)

(assert (=> d!1577423 (= (isEmpty!30445 (_1!33728 lt!2013828)) (is-Nil!56553 (_1!33728 lt!2013828)))))

(assert (=> b!4907920 d!1577423))

(declare-fun d!1577425 () Bool)

(declare-fun e!3067952 () Bool)

(assert (=> d!1577425 e!3067952))

(declare-fun res!2096547 () Bool)

(assert (=> d!1577425 (=> res!2096547 e!3067952)))

(assert (=> d!1577425 (= res!2096547 (isEmpty!30445 (_1!33728 (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)))))))

(declare-fun lt!2014027 () Unit!146759)

(declare-fun choose!35887 (Regex!13314 List!56677) Unit!146759)

(assert (=> d!1577425 (= lt!2014027 (choose!35887 (regex!8239 rule!164) lt!2013825))))

(assert (=> d!1577425 (validRegex!5907 (regex!8239 rule!164))))

(assert (=> d!1577425 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1765 (regex!8239 rule!164) lt!2013825) lt!2014027)))

(declare-fun b!4908140 () Bool)

(assert (=> b!4908140 (= e!3067952 (matchR!6581 (regex!8239 rule!164) (_1!33728 (findLongestMatchInner!1802 (regex!8239 rule!164) Nil!56553 (size!37300 Nil!56553) lt!2013825 lt!2013825 (size!37300 lt!2013825)))))))

(assert (= (and d!1577425 (not res!2096547)) b!4908140))

(assert (=> d!1577425 m!5917602))

(declare-fun m!5917890 () Bool)

(assert (=> d!1577425 m!5917890))

(assert (=> d!1577425 m!5917788))

(assert (=> d!1577425 m!5917602))

(assert (=> d!1577425 m!5917604))

(assert (=> d!1577425 m!5917608))

(assert (=> d!1577425 m!5917604))

(assert (=> d!1577425 m!5917782))

(assert (=> b!4908140 m!5917602))

(assert (=> b!4908140 m!5917604))

(assert (=> b!4908140 m!5917602))

(assert (=> b!4908140 m!5917604))

(assert (=> b!4908140 m!5917608))

(assert (=> b!4908140 m!5917770))

(assert (=> b!4907920 d!1577425))

(declare-fun d!1577427 () Bool)

(declare-fun isBalanced!4038 (Conc!14807) Bool)

(assert (=> d!1577427 (= (inv!73048 input!1509) (isBalanced!4038 (c!834255 input!1509)))))

(declare-fun bs!1177264 () Bool)

(assert (= bs!1177264 d!1577427))

(declare-fun m!5917892 () Bool)

(assert (=> bs!1177264 m!5917892))

(assert (=> start!514698 d!1577427))

(declare-fun d!1577429 () Bool)

(assert (=> d!1577429 (= (apply!13583 (transformation!8239 rule!164) lt!2013824) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824))))

(declare-fun b_lambda!195623 () Bool)

(assert (=> (not b_lambda!195623) (not d!1577429)))

(declare-fun t!366927 () Bool)

(declare-fun tb!259977 () Bool)

(assert (=> (and b!4907917 (= (toValue!11170 (transformation!8239 rule!164)) (toValue!11170 (transformation!8239 rule!164))) t!366927) tb!259977))

(declare-fun result!323782 () Bool)

(assert (=> tb!259977 (= result!323782 (inv!21 (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824)))))

(declare-fun m!5917894 () Bool)

(assert (=> tb!259977 m!5917894))

(assert (=> d!1577429 t!366927))

(declare-fun b_and!346513 () Bool)

(assert (= b_and!346511 (and (=> t!366927 result!323782) b_and!346513)))

(declare-fun m!5917896 () Bool)

(assert (=> d!1577429 m!5917896))

(assert (=> b!4907921 d!1577429))

(declare-fun b!4908167 () Bool)

(declare-fun e!3067970 () Bool)

(assert (=> b!4908167 (= e!3067970 true)))

(declare-fun d!1577431 () Bool)

(assert (=> d!1577431 e!3067970))

(assert (= d!1577431 b!4908167))

(declare-fun order!25815 () Int)

(declare-fun lambda!244588 () Int)

(declare-fun dynLambda!22870 (Int Int) Int)

(assert (=> b!4908167 (< (dynLambda!22862 order!25803 (toValue!11170 (transformation!8239 rule!164))) (dynLambda!22870 order!25815 lambda!244588))))

(assert (=> b!4908167 (< (dynLambda!22864 order!25807 (toChars!11029 (transformation!8239 rule!164))) (dynLambda!22870 order!25815 lambda!244588))))

(assert (=> d!1577431 (= (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824))))

(declare-fun lt!2014068 () Unit!146759)

(declare-fun Forall2of!459 (Int BalanceConc!29044 BalanceConc!29044) Unit!146759)

(assert (=> d!1577431 (= lt!2014068 (Forall2of!459 lambda!244588 (_1!33726 lt!2013832) lt!2013824))))

(assert (=> d!1577431 (= (list!17829 (_1!33726 lt!2013832)) (list!17829 lt!2013824))))

(assert (=> d!1577431 (= (lemmaEqSameImage!1121 (transformation!8239 rule!164) (_1!33726 lt!2013832) lt!2013824) lt!2014068)))

(declare-fun b_lambda!195625 () Bool)

(assert (=> (not b_lambda!195625) (not d!1577431)))

(assert (=> d!1577431 t!366925))

(declare-fun b_and!346515 () Bool)

(assert (= b_and!346513 (and (=> t!366925 result!323778) b_and!346515)))

(declare-fun b_lambda!195627 () Bool)

(assert (=> (not b_lambda!195627) (not d!1577431)))

(assert (=> d!1577431 t!366927))

(declare-fun b_and!346517 () Bool)

(assert (= b_and!346515 (and (=> t!366927 result!323782) b_and!346517)))

(assert (=> d!1577431 m!5917896))

(assert (=> d!1577431 m!5917596))

(declare-fun m!5917898 () Bool)

(assert (=> d!1577431 m!5917898))

(assert (=> d!1577431 m!5917744))

(assert (=> d!1577431 m!5917630))

(assert (=> b!4907921 d!1577431))

(declare-fun b!4908181 () Bool)

(declare-fun e!3067973 () Bool)

(declare-fun tp!1380404 () Bool)

(declare-fun tp!1380403 () Bool)

(assert (=> b!4908181 (= e!3067973 (and tp!1380404 tp!1380403))))

(assert (=> b!4907918 (= tp!1380378 e!3067973)))

(declare-fun b!4908180 () Bool)

(declare-fun tp!1380406 () Bool)

(assert (=> b!4908180 (= e!3067973 tp!1380406)))

(declare-fun b!4908179 () Bool)

(declare-fun tp!1380405 () Bool)

(declare-fun tp!1380402 () Bool)

(assert (=> b!4908179 (= e!3067973 (and tp!1380405 tp!1380402))))

(declare-fun b!4908178 () Bool)

(declare-fun tp_is_empty!35837 () Bool)

(assert (=> b!4908178 (= e!3067973 tp_is_empty!35837)))

(assert (= (and b!4907918 (is-ElementMatch!13314 (regex!8239 rule!164))) b!4908178))

(assert (= (and b!4907918 (is-Concat!21863 (regex!8239 rule!164))) b!4908179))

(assert (= (and b!4907918 (is-Star!13314 (regex!8239 rule!164))) b!4908180))

(assert (= (and b!4907918 (is-Union!13314 (regex!8239 rule!164))) b!4908181))

(declare-fun b!4908190 () Bool)

(declare-fun tp!1380413 () Bool)

(declare-fun tp!1380414 () Bool)

(declare-fun e!3067979 () Bool)

(assert (=> b!4908190 (= e!3067979 (and (inv!73049 (left!41183 (c!834255 input!1509))) tp!1380413 (inv!73049 (right!41513 (c!834255 input!1509))) tp!1380414))))

(declare-fun b!4908192 () Bool)

(declare-fun e!3067978 () Bool)

(declare-fun tp!1380415 () Bool)

(assert (=> b!4908192 (= e!3067978 tp!1380415)))

(declare-fun b!4908191 () Bool)

(declare-fun inv!73055 (IArray!29675) Bool)

(assert (=> b!4908191 (= e!3067979 (and (inv!73055 (xs!18123 (c!834255 input!1509))) e!3067978))))

(assert (=> b!4907925 (= tp!1380379 (and (inv!73049 (c!834255 input!1509)) e!3067979))))

(assert (= (and b!4907925 (is-Node!14807 (c!834255 input!1509))) b!4908190))

(assert (= b!4908191 b!4908192))

(assert (= (and b!4907925 (is-Leaf!24644 (c!834255 input!1509))) b!4908191))

(declare-fun m!5917900 () Bool)

(assert (=> b!4908190 m!5917900))

(declare-fun m!5917902 () Bool)

(assert (=> b!4908190 m!5917902))

(declare-fun m!5917904 () Bool)

(assert (=> b!4908191 m!5917904))

(assert (=> b!4907925 m!5917648))

(declare-fun b_lambda!195629 () Bool)

(assert (= b_lambda!195621 (or (and b!4907917 b_free!131927) b_lambda!195629)))

(declare-fun b_lambda!195631 () Bool)

(assert (= b_lambda!195625 (or (and b!4907917 b_free!131927) b_lambda!195631)))

(declare-fun b_lambda!195633 () Bool)

(assert (= b_lambda!195627 (or (and b!4907917 b_free!131927) b_lambda!195633)))

(declare-fun b_lambda!195635 () Bool)

(assert (= b_lambda!195617 (or b!4907928 b_lambda!195635)))

(declare-fun bs!1177265 () Bool)

(declare-fun d!1577433 () Bool)

(assert (= bs!1177265 (and d!1577433 b!4907928)))

(declare-fun dynLambda!22871 (Int TokenValue!8549) BalanceConc!29044)

(assert (=> bs!1177265 (= (dynLambda!22868 lambda!244575 lt!2013824) (= (list!17829 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824))) (list!17829 lt!2013824)))))

(declare-fun b_lambda!195641 () Bool)

(assert (=> (not b_lambda!195641) (not bs!1177265)))

(declare-fun t!366929 () Bool)

(declare-fun tb!259979 () Bool)

(assert (=> (and b!4907917 (= (toChars!11029 (transformation!8239 rule!164)) (toChars!11029 (transformation!8239 rule!164))) t!366929) tb!259979))

(declare-fun tp!1380418 () Bool)

(declare-fun b!4908197 () Bool)

(declare-fun e!3067982 () Bool)

(assert (=> b!4908197 (= e!3067982 (and (inv!73049 (c!834255 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824)))) tp!1380418))))

(declare-fun result!323788 () Bool)

(assert (=> tb!259979 (= result!323788 (and (inv!73048 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) lt!2013824))) e!3067982))))

(assert (= tb!259979 b!4908197))

(declare-fun m!5917906 () Bool)

(assert (=> b!4908197 m!5917906))

(declare-fun m!5917908 () Bool)

(assert (=> tb!259979 m!5917908))

(assert (=> bs!1177265 t!366929))

(declare-fun b_and!346519 () Bool)

(assert (= b_and!346505 (and (=> t!366929 result!323788) b_and!346519)))

(declare-fun b_lambda!195643 () Bool)

(assert (=> (not b_lambda!195643) (not bs!1177265)))

(assert (=> bs!1177265 t!366927))

(declare-fun b_and!346521 () Bool)

(assert (= b_and!346517 (and (=> t!366927 result!323782) b_and!346521)))

(assert (=> bs!1177265 m!5917896))

(declare-fun m!5917910 () Bool)

(assert (=> bs!1177265 m!5917910))

(declare-fun m!5917912 () Bool)

(assert (=> bs!1177265 m!5917912))

(assert (=> bs!1177265 m!5917896))

(assert (=> bs!1177265 m!5917910))

(assert (=> bs!1177265 m!5917596))

(assert (=> d!1577369 d!1577433))

(declare-fun b_lambda!195637 () Bool)

(assert (= b_lambda!195623 (or (and b!4907917 b_free!131927) b_lambda!195637)))

(declare-fun b_lambda!195639 () Bool)

(assert (= b_lambda!195619 (or b!4907928 b_lambda!195639)))

(declare-fun bs!1177266 () Bool)

(declare-fun d!1577435 () Bool)

(assert (= bs!1177266 (and d!1577435 b!4907928)))

(assert (=> bs!1177266 (= (dynLambda!22868 lambda!244575 (_1!33726 lt!2013832)) (= (list!17829 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832)))) (list!17829 (_1!33726 lt!2013832))))))

(declare-fun b_lambda!195645 () Bool)

(assert (=> (not b_lambda!195645) (not bs!1177266)))

(declare-fun t!366931 () Bool)

(declare-fun tb!259981 () Bool)

(assert (=> (and b!4907917 (= (toChars!11029 (transformation!8239 rule!164)) (toChars!11029 (transformation!8239 rule!164))) t!366931) tb!259981))

(declare-fun b!4908212 () Bool)

(declare-fun e!3067991 () Bool)

(declare-fun tp!1380419 () Bool)

(assert (=> b!4908212 (= e!3067991 (and (inv!73049 (c!834255 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832))))) tp!1380419))))

(declare-fun result!323792 () Bool)

(assert (=> tb!259981 (= result!323792 (and (inv!73048 (dynLambda!22871 (toChars!11029 (transformation!8239 rule!164)) (dynLambda!22869 (toValue!11170 (transformation!8239 rule!164)) (_1!33726 lt!2013832)))) e!3067991))))

(assert (= tb!259981 b!4908212))

(declare-fun m!5917914 () Bool)

(assert (=> b!4908212 m!5917914))

(declare-fun m!5917916 () Bool)

(assert (=> tb!259981 m!5917916))

(assert (=> bs!1177266 t!366931))

(declare-fun b_and!346523 () Bool)

(assert (= b_and!346519 (and (=> t!366931 result!323792) b_and!346523)))

(declare-fun b_lambda!195647 () Bool)

(assert (=> (not b_lambda!195647) (not bs!1177266)))

(assert (=> bs!1177266 t!366925))

(declare-fun b_and!346525 () Bool)

(assert (= b_and!346521 (and (=> t!366925 result!323778) b_and!346525)))

(assert (=> bs!1177266 m!5917744))

(declare-fun m!5917918 () Bool)

(assert (=> bs!1177266 m!5917918))

(declare-fun m!5917920 () Bool)

(assert (=> bs!1177266 m!5917920))

(assert (=> bs!1177266 m!5917744))

(assert (=> bs!1177266 m!5917918))

(assert (=> bs!1177266 m!5917630))

(assert (=> d!1577381 d!1577435))

(push 1)

(assert (not tb!259979))

(assert (not d!1577425))

(assert (not b_next!132719))

(assert (not b!4907993))

(assert (not b!4908191))

(assert (not b!4908072))

(assert (not tb!259975))

(assert (not d!1577373))

(assert (not b!4908016))

(assert (not b_lambda!195639))

(assert (not b_lambda!195629))

(assert (not d!1577395))

(assert (not b!4908117))

(assert (not d!1577379))

(assert (not d!1577427))

(assert (not d!1577381))

(assert (not b!4908181))

(assert (not b!4908192))

(assert (not b!4908115))

(assert (not d!1577393))

(assert (not b!4907986))

(assert (not b_lambda!195643))

(assert tp_is_empty!35837)

(assert (not b!4908061))

(assert (not b!4908022))

(assert (not b!4908140))

(assert (not tb!259977))

(assert (not d!1577369))

(assert (not d!1577421))

(assert (not bm!340690))

(assert (not b!4908190))

(assert (not bm!340689))

(assert (not b!4908069))

(assert (not b_lambda!195635))

(assert (not b_lambda!195641))

(assert (not tb!259981))

(assert (not bs!1177266))

(assert (not d!1577409))

(assert (not b!4908179))

(assert (not b!4908017))

(assert (not bm!340692))

(assert (not b_lambda!195647))

(assert (not b!4908212))

(assert (not bs!1177265))

(assert (not b_lambda!195637))

(assert (not b!4908068))

(assert (not b!4908197))

(assert (not b_lambda!195631))

(assert (not bm!340685))

(assert (not b!4908020))

(assert (not b_lambda!195645))

(assert (not b!4908018))

(assert (not bm!340687))

(assert (not d!1577371))

(assert (not b!4908023))

(assert (not b!4907925))

(assert (not d!1577375))

(assert (not b!4908024))

(assert (not b!4908125))

(assert b_and!346523)

(assert (not b!4908021))

(assert (not d!1577385))

(assert (not b_next!132717))

(assert (not d!1577361))

(assert (not d!1577417))

(assert (not d!1577415))

(assert (not b!4907995))

(assert (not d!1577403))

(assert (not b!4908180))

(assert (not b!4908029))

(assert (not b!4908116))

(assert (not b_lambda!195633))

(assert (not d!1577431))

(assert (not bm!340688))

(assert (not bm!340668))

(assert (not b!4908078))

(assert (not d!1577411))

(assert (not b!4908063))

(assert (not d!1577365))

(assert (not b!4908111))

(assert (not bm!340686))

(assert (not d!1577405))

(assert (not bm!340691))

(assert (not d!1577377))

(assert b_and!346525)

(assert (not b!4908123))

(assert (not b!4908070))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346523)

(assert b_and!346525)

(assert (not b_next!132719))

(assert (not b_next!132717))

(check-sat)

(pop 1)


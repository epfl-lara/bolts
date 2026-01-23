; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406216 () Bool)

(assert start!406216)

(declare-fun b!4243841 () Bool)

(declare-fun b_free!125803 () Bool)

(declare-fun b_next!126507 () Bool)

(assert (=> b!4243841 (= b_free!125803 (not b_next!126507))))

(declare-fun tp!1301177 () Bool)

(declare-fun b_and!336053 () Bool)

(assert (=> b!4243841 (= tp!1301177 b_and!336053)))

(declare-fun b_free!125805 () Bool)

(declare-fun b_next!126509 () Bool)

(assert (=> b!4243841 (= b_free!125805 (not b_next!126509))))

(declare-fun tp!1301168 () Bool)

(declare-fun b_and!336055 () Bool)

(assert (=> b!4243841 (= tp!1301168 b_and!336055)))

(declare-fun b!4243835 () Bool)

(declare-fun b_free!125807 () Bool)

(declare-fun b_next!126511 () Bool)

(assert (=> b!4243835 (= b_free!125807 (not b_next!126511))))

(declare-fun tp!1301174 () Bool)

(declare-fun b_and!336057 () Bool)

(assert (=> b!4243835 (= tp!1301174 b_and!336057)))

(declare-fun b_free!125809 () Bool)

(declare-fun b_next!126513 () Bool)

(assert (=> b!4243835 (= b_free!125809 (not b_next!126513))))

(declare-fun tp!1301172 () Bool)

(declare-fun b_and!336059 () Bool)

(assert (=> b!4243835 (= tp!1301172 b_and!336059)))

(declare-fun b!4243834 () Bool)

(declare-fun b_free!125811 () Bool)

(declare-fun b_next!126515 () Bool)

(assert (=> b!4243834 (= b_free!125811 (not b_next!126515))))

(declare-fun tp!1301175 () Bool)

(declare-fun b_and!336061 () Bool)

(assert (=> b!4243834 (= tp!1301175 b_and!336061)))

(declare-fun b_free!125813 () Bool)

(declare-fun b_next!126517 () Bool)

(assert (=> b!4243834 (= b_free!125813 (not b_next!126517))))

(declare-fun tp!1301180 () Bool)

(declare-fun b_and!336063 () Bool)

(assert (=> b!4243834 (= tp!1301180 b_and!336063)))

(declare-fun b!4243819 () Bool)

(declare-fun res!1744845 () Bool)

(declare-fun e!2635537 () Bool)

(assert (=> b!4243819 (=> (not res!1744845) (not e!2635537))))

(declare-datatypes ((LexerInterface!7532 0))(
  ( (LexerInterfaceExt!7529 (__x!28557 Int)) (Lexer!7530) )
))
(declare-fun thiss!21540 () LexerInterface!7532)

(declare-datatypes ((List!47059 0))(
  ( (Nil!46935) (Cons!46935 (h!52355 (_ BitVec 16)) (t!351484 List!47059)) )
))
(declare-datatypes ((TokenValue!8167 0))(
  ( (FloatLiteralValue!16334 (text!57614 List!47059)) (TokenValueExt!8166 (__x!28558 Int)) (Broken!40835 (value!246716 List!47059)) (Object!8290) (End!8167) (Def!8167) (Underscore!8167) (Match!8167) (Else!8167) (Error!8167) (Case!8167) (If!8167) (Extends!8167) (Abstract!8167) (Class!8167) (Val!8167) (DelimiterValue!16334 (del!8227 List!47059)) (KeywordValue!8173 (value!246717 List!47059)) (CommentValue!16334 (value!246718 List!47059)) (WhitespaceValue!16334 (value!246719 List!47059)) (IndentationValue!8167 (value!246720 List!47059)) (String!54766) (Int32!8167) (Broken!40836 (value!246721 List!47059)) (Boolean!8168) (Unit!65993) (OperatorValue!8170 (op!8227 List!47059)) (IdentifierValue!16334 (value!246722 List!47059)) (IdentifierValue!16335 (value!246723 List!47059)) (WhitespaceValue!16335 (value!246724 List!47059)) (True!16334) (False!16334) (Broken!40837 (value!246725 List!47059)) (Broken!40838 (value!246726 List!47059)) (True!16335) (RightBrace!8167) (RightBracket!8167) (Colon!8167) (Null!8167) (Comma!8167) (LeftBracket!8167) (False!16335) (LeftBrace!8167) (ImaginaryLiteralValue!8167 (text!57615 List!47059)) (StringLiteralValue!24501 (value!246727 List!47059)) (EOFValue!8167 (value!246728 List!47059)) (IdentValue!8167 (value!246729 List!47059)) (DelimiterValue!16335 (value!246730 List!47059)) (DedentValue!8167 (value!246731 List!47059)) (NewLineValue!8167 (value!246732 List!47059)) (IntegerValue!24501 (value!246733 (_ BitVec 32)) (text!57616 List!47059)) (IntegerValue!24502 (value!246734 Int) (text!57617 List!47059)) (Times!8167) (Or!8167) (Equal!8167) (Minus!8167) (Broken!40839 (value!246735 List!47059)) (And!8167) (Div!8167) (LessEqual!8167) (Mod!8167) (Concat!21009) (Not!8167) (Plus!8167) (SpaceValue!8167 (value!246736 List!47059)) (IntegerValue!24503 (value!246737 Int) (text!57618 List!47059)) (StringLiteralValue!24502 (text!57619 List!47059)) (FloatLiteralValue!16335 (text!57620 List!47059)) (BytesLiteralValue!8167 (value!246738 List!47059)) (CommentValue!16335 (value!246739 List!47059)) (StringLiteralValue!24503 (value!246740 List!47059)) (ErrorTokenValue!8167 (msg!8228 List!47059)) )
))
(declare-datatypes ((C!25882 0))(
  ( (C!25883 (val!15131 Int)) )
))
(declare-datatypes ((Regex!12842 0))(
  ( (ElementMatch!12842 (c!720965 C!25882)) (Concat!21010 (regOne!26196 Regex!12842) (regTwo!26196 Regex!12842)) (EmptyExpr!12842) (Star!12842 (reg!13171 Regex!12842)) (EmptyLang!12842) (Union!12842 (regOne!26197 Regex!12842) (regTwo!26197 Regex!12842)) )
))
(declare-datatypes ((List!47060 0))(
  ( (Nil!46936) (Cons!46936 (h!52356 C!25882) (t!351485 List!47060)) )
))
(declare-datatypes ((IArray!28301 0))(
  ( (IArray!28302 (innerList!14208 List!47060)) )
))
(declare-datatypes ((Conc!14148 0))(
  ( (Node!14148 (left!34867 Conc!14148) (right!35197 Conc!14148) (csize!28526 Int) (cheight!14359 Int)) (Leaf!21876 (xs!17454 IArray!28301) (csize!28527 Int)) (Empty!14148) )
))
(declare-datatypes ((BalanceConc!27890 0))(
  ( (BalanceConc!27891 (c!720966 Conc!14148)) )
))
(declare-datatypes ((TokenValueInjection!15762 0))(
  ( (TokenValueInjection!15763 (toValue!10697 Int) (toChars!10556 Int)) )
))
(declare-datatypes ((String!54767 0))(
  ( (String!54768 (value!246741 String)) )
))
(declare-datatypes ((Rule!15674 0))(
  ( (Rule!15675 (regex!7937 Regex!12842) (tag!8801 String!54767) (isSeparator!7937 Bool) (transformation!7937 TokenValueInjection!15762)) )
))
(declare-datatypes ((List!47061 0))(
  ( (Nil!46937) (Cons!46937 (h!52357 Rule!15674) (t!351486 List!47061)) )
))
(declare-fun rules!2932 () List!47061)

(declare-fun suffix!1262 () List!47060)

(declare-datatypes ((Token!14500 0))(
  ( (Token!14501 (value!246742 TokenValue!8167) (rule!11067 Rule!15674) (size!34380 Int) (originalCharacters!8281 List!47060)) )
))
(declare-datatypes ((List!47062 0))(
  ( (Nil!46938) (Cons!46938 (h!52358 Token!14500) (t!351487 List!47062)) )
))
(declare-fun tokens!581 () List!47062)

(declare-fun longerInput!51 () List!47060)

(declare-datatypes ((tuple2!44510 0))(
  ( (tuple2!44511 (_1!25389 List!47062) (_2!25389 List!47060)) )
))
(declare-fun lexList!2038 (LexerInterface!7532 List!47061 List!47060) tuple2!44510)

(assert (=> b!4243819 (= res!1744845 (= (lexList!2038 thiss!21540 rules!2932 longerInput!51) (tuple2!44511 tokens!581 suffix!1262)))))

(declare-fun e!2635534 () Bool)

(declare-fun tp!1301181 () Bool)

(declare-fun e!2635549 () Bool)

(declare-fun b!4243820 () Bool)

(declare-fun inv!61693 (String!54767) Bool)

(declare-fun inv!61696 (TokenValueInjection!15762) Bool)

(assert (=> b!4243820 (= e!2635534 (and tp!1301181 (inv!61693 (tag!8801 (rule!11067 (h!52358 tokens!581)))) (inv!61696 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) e!2635549))))

(declare-fun tp!1301167 () Bool)

(declare-fun e!2635552 () Bool)

(declare-fun addTokens!17 () List!47062)

(declare-fun e!2635546 () Bool)

(declare-fun b!4243821 () Bool)

(declare-fun inv!61697 (Token!14500) Bool)

(assert (=> b!4243821 (= e!2635546 (and (inv!61697 (h!52358 addTokens!17)) e!2635552 tp!1301167))))

(declare-fun b!4243822 () Bool)

(declare-fun e!2635542 () Bool)

(declare-fun e!2635553 () Bool)

(declare-fun tp!1301176 () Bool)

(assert (=> b!4243822 (= e!2635542 (and e!2635553 tp!1301176))))

(declare-fun b!4243823 () Bool)

(declare-fun res!1744844 () Bool)

(assert (=> b!4243823 (=> (not res!1744844) (not e!2635537))))

(declare-fun isEmpty!27754 (List!47061) Bool)

(assert (=> b!4243823 (= res!1744844 (not (isEmpty!27754 rules!2932)))))

(declare-fun e!2635547 () Bool)

(declare-fun b!4243824 () Bool)

(declare-fun tp!1301183 () Bool)

(assert (=> b!4243824 (= e!2635553 (and tp!1301183 (inv!61693 (tag!8801 (h!52357 rules!2932))) (inv!61696 (transformation!7937 (h!52357 rules!2932))) e!2635547))))

(declare-fun b!4243825 () Bool)

(declare-fun e!2635536 () Bool)

(declare-fun e!2635538 () Bool)

(declare-fun tp!1301182 () Bool)

(assert (=> b!4243825 (= e!2635538 (and tp!1301182 (inv!61693 (tag!8801 (rule!11067 (h!52358 addTokens!17)))) (inv!61696 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) e!2635536))))

(declare-fun b!4243826 () Bool)

(declare-fun res!1744843 () Bool)

(assert (=> b!4243826 (=> (not res!1744843) (not e!2635537))))

(declare-fun isEmpty!27755 (List!47060) Bool)

(assert (=> b!4243826 (= res!1744843 (not (isEmpty!27755 longerInput!51)))))

(declare-fun b!4243827 () Bool)

(declare-fun e!2635548 () Bool)

(declare-fun shorterInput!51 () List!47060)

(declare-fun ++!11948 (List!47062 List!47062) List!47062)

(assert (=> b!4243827 (= e!2635548 (= (lexList!2038 thiss!21540 rules!2932 shorterInput!51) (tuple2!44511 (++!11948 addTokens!17 tokens!581) suffix!1262)))))

(declare-fun b!4243828 () Bool)

(declare-fun e!2635535 () Bool)

(declare-fun tp_is_empty!22675 () Bool)

(declare-fun tp!1301173 () Bool)

(assert (=> b!4243828 (= e!2635535 (and tp_is_empty!22675 tp!1301173))))

(declare-fun res!1744849 () Bool)

(assert (=> start!406216 (=> (not res!1744849) (not e!2635537))))

(assert (=> start!406216 (= res!1744849 (is-Lexer!7530 thiss!21540))))

(assert (=> start!406216 e!2635537))

(assert (=> start!406216 true))

(assert (=> start!406216 e!2635542))

(assert (=> start!406216 e!2635546))

(assert (=> start!406216 e!2635535))

(declare-fun e!2635545 () Bool)

(assert (=> start!406216 e!2635545))

(declare-fun e!2635543 () Bool)

(assert (=> start!406216 e!2635543))

(declare-fun e!2635551 () Bool)

(assert (=> start!406216 e!2635551))

(declare-fun tp!1301171 () Bool)

(declare-fun e!2635550 () Bool)

(declare-fun b!4243829 () Bool)

(declare-fun inv!21 (TokenValue!8167) Bool)

(assert (=> b!4243829 (= e!2635550 (and (inv!21 (value!246742 (h!52358 tokens!581))) e!2635534 tp!1301171))))

(declare-fun b!4243830 () Bool)

(declare-fun res!1744847 () Bool)

(assert (=> b!4243830 (=> (not res!1744847) (not e!2635537))))

(declare-fun rulesInvariant!6643 (LexerInterface!7532 List!47061) Bool)

(assert (=> b!4243830 (= res!1744847 (rulesInvariant!6643 thiss!21540 rules!2932))))

(declare-fun b!4243831 () Bool)

(assert (=> b!4243831 (= e!2635537 e!2635548)))

(declare-fun res!1744850 () Bool)

(assert (=> b!4243831 (=> (not res!1744850) (not e!2635548))))

(declare-datatypes ((tuple2!44512 0))(
  ( (tuple2!44513 (_1!25390 Token!14500) (_2!25390 List!47060)) )
))
(declare-datatypes ((Option!10073 0))(
  ( (None!10072) (Some!10072 (v!41026 tuple2!44512)) )
))
(declare-fun lt!1507192 () Option!10073)

(declare-fun lt!1507191 () Option!10073)

(assert (=> b!4243831 (= res!1744850 (and (or (not (is-Some!10072 lt!1507192)) (not (is-Some!10072 lt!1507191))) (is-Some!10072 lt!1507192) (is-None!10072 lt!1507191)))))

(declare-fun maxPrefix!4490 (LexerInterface!7532 List!47061 List!47060) Option!10073)

(assert (=> b!4243831 (= lt!1507191 (maxPrefix!4490 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4243831 (= lt!1507192 (maxPrefix!4490 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4243832 () Bool)

(declare-fun res!1744846 () Bool)

(assert (=> b!4243832 (=> (not res!1744846) (not e!2635537))))

(declare-fun size!34381 (List!47062) Int)

(assert (=> b!4243832 (= res!1744846 (> (size!34381 addTokens!17) 0))))

(declare-fun b!4243833 () Bool)

(declare-fun res!1744848 () Bool)

(assert (=> b!4243833 (=> (not res!1744848) (not e!2635537))))

(declare-fun size!34382 (List!47060) Int)

(assert (=> b!4243833 (= res!1744848 (> (size!34382 longerInput!51) (size!34382 shorterInput!51)))))

(assert (=> b!4243834 (= e!2635549 (and tp!1301175 tp!1301180))))

(assert (=> b!4243835 (= e!2635547 (and tp!1301174 tp!1301172))))

(declare-fun b!4243836 () Bool)

(declare-fun tp!1301170 () Bool)

(assert (=> b!4243836 (= e!2635545 (and tp_is_empty!22675 tp!1301170))))

(declare-fun b!4243837 () Bool)

(declare-fun tp!1301179 () Bool)

(assert (=> b!4243837 (= e!2635551 (and tp_is_empty!22675 tp!1301179))))

(declare-fun tp!1301178 () Bool)

(declare-fun b!4243838 () Bool)

(assert (=> b!4243838 (= e!2635543 (and (inv!61697 (h!52358 tokens!581)) e!2635550 tp!1301178))))

(declare-fun tp!1301169 () Bool)

(declare-fun b!4243839 () Bool)

(assert (=> b!4243839 (= e!2635552 (and (inv!21 (value!246742 (h!52358 addTokens!17))) e!2635538 tp!1301169))))

(declare-fun b!4243840 () Bool)

(declare-fun res!1744851 () Bool)

(assert (=> b!4243840 (=> (not res!1744851) (not e!2635537))))

(declare-fun isEmpty!27756 (List!47062) Bool)

(assert (=> b!4243840 (= res!1744851 (not (isEmpty!27756 addTokens!17)))))

(assert (=> b!4243841 (= e!2635536 (and tp!1301177 tp!1301168))))

(assert (= (and start!406216 res!1744849) b!4243823))

(assert (= (and b!4243823 res!1744844) b!4243830))

(assert (= (and b!4243830 res!1744847) b!4243826))

(assert (= (and b!4243826 res!1744843) b!4243833))

(assert (= (and b!4243833 res!1744848) b!4243819))

(assert (= (and b!4243819 res!1744845) b!4243840))

(assert (= (and b!4243840 res!1744851) b!4243832))

(assert (= (and b!4243832 res!1744846) b!4243831))

(assert (= (and b!4243831 res!1744850) b!4243827))

(assert (= b!4243824 b!4243835))

(assert (= b!4243822 b!4243824))

(assert (= (and start!406216 (is-Cons!46937 rules!2932)) b!4243822))

(assert (= b!4243825 b!4243841))

(assert (= b!4243839 b!4243825))

(assert (= b!4243821 b!4243839))

(assert (= (and start!406216 (is-Cons!46938 addTokens!17)) b!4243821))

(assert (= (and start!406216 (is-Cons!46936 shorterInput!51)) b!4243828))

(assert (= (and start!406216 (is-Cons!46936 suffix!1262)) b!4243836))

(assert (= b!4243820 b!4243834))

(assert (= b!4243829 b!4243820))

(assert (= b!4243838 b!4243829))

(assert (= (and start!406216 (is-Cons!46938 tokens!581)) b!4243838))

(assert (= (and start!406216 (is-Cons!46936 longerInput!51)) b!4243837))

(declare-fun m!4829331 () Bool)

(assert (=> b!4243832 m!4829331))

(declare-fun m!4829333 () Bool)

(assert (=> b!4243824 m!4829333))

(declare-fun m!4829335 () Bool)

(assert (=> b!4243824 m!4829335))

(declare-fun m!4829337 () Bool)

(assert (=> b!4243831 m!4829337))

(declare-fun m!4829339 () Bool)

(assert (=> b!4243831 m!4829339))

(declare-fun m!4829341 () Bool)

(assert (=> b!4243827 m!4829341))

(declare-fun m!4829343 () Bool)

(assert (=> b!4243827 m!4829343))

(declare-fun m!4829345 () Bool)

(assert (=> b!4243829 m!4829345))

(declare-fun m!4829347 () Bool)

(assert (=> b!4243825 m!4829347))

(declare-fun m!4829349 () Bool)

(assert (=> b!4243825 m!4829349))

(declare-fun m!4829351 () Bool)

(assert (=> b!4243830 m!4829351))

(declare-fun m!4829353 () Bool)

(assert (=> b!4243839 m!4829353))

(declare-fun m!4829355 () Bool)

(assert (=> b!4243833 m!4829355))

(declare-fun m!4829357 () Bool)

(assert (=> b!4243833 m!4829357))

(declare-fun m!4829359 () Bool)

(assert (=> b!4243840 m!4829359))

(declare-fun m!4829361 () Bool)

(assert (=> b!4243826 m!4829361))

(declare-fun m!4829363 () Bool)

(assert (=> b!4243838 m!4829363))

(declare-fun m!4829365 () Bool)

(assert (=> b!4243819 m!4829365))

(declare-fun m!4829367 () Bool)

(assert (=> b!4243823 m!4829367))

(declare-fun m!4829369 () Bool)

(assert (=> b!4243820 m!4829369))

(declare-fun m!4829371 () Bool)

(assert (=> b!4243820 m!4829371))

(declare-fun m!4829373 () Bool)

(assert (=> b!4243821 m!4829373))

(push 1)

(assert (not b!4243840))

(assert (not b!4243839))

(assert b_and!336061)

(assert (not b!4243830))

(assert (not b!4243825))

(assert (not b!4243822))

(assert (not b!4243832))

(assert b_and!336057)

(assert (not b!4243824))

(assert (not b_next!126509))

(assert (not b!4243838))

(assert (not b!4243833))

(assert (not b!4243831))

(assert (not b!4243819))

(assert (not b!4243837))

(assert b_and!336059)

(assert (not b_next!126507))

(assert (not b_next!126515))

(assert (not b_next!126517))

(assert tp_is_empty!22675)

(assert (not b_next!126513))

(assert (not b!4243820))

(assert b_and!336063)

(assert b_and!336055)

(assert (not b!4243836))

(assert (not b!4243828))

(assert b_and!336053)

(assert (not b!4243823))

(assert (not b_next!126511))

(assert (not b!4243827))

(assert (not b!4243829))

(assert (not b!4243821))

(assert (not b!4243826))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336061)

(assert b_and!336057)

(assert b_and!336055)

(assert b_and!336053)

(assert (not b_next!126511))

(assert (not b_next!126509))

(assert b_and!336059)

(assert (not b_next!126507))

(assert (not b_next!126515))

(assert (not b_next!126517))

(assert (not b_next!126513))

(assert b_and!336063)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4243939 () Bool)

(declare-fun e!2635637 () Bool)

(declare-fun lt!1507215 () tuple2!44510)

(assert (=> b!4243939 (= e!2635637 (= (_2!25389 lt!1507215) shorterInput!51))))

(declare-fun b!4243940 () Bool)

(declare-fun e!2635635 () tuple2!44510)

(declare-fun lt!1507214 () Option!10073)

(declare-fun lt!1507216 () tuple2!44510)

(assert (=> b!4243940 (= e!2635635 (tuple2!44511 (Cons!46938 (_1!25390 (v!41026 lt!1507214)) (_1!25389 lt!1507216)) (_2!25389 lt!1507216)))))

(assert (=> b!4243940 (= lt!1507216 (lexList!2038 thiss!21540 rules!2932 (_2!25390 (v!41026 lt!1507214))))))

(declare-fun b!4243941 () Bool)

(declare-fun e!2635636 () Bool)

(assert (=> b!4243941 (= e!2635637 e!2635636)))

(declare-fun res!1744891 () Bool)

(assert (=> b!4243941 (= res!1744891 (< (size!34382 (_2!25389 lt!1507215)) (size!34382 shorterInput!51)))))

(assert (=> b!4243941 (=> (not res!1744891) (not e!2635636))))

(declare-fun d!1248514 () Bool)

(assert (=> d!1248514 e!2635637))

(declare-fun c!720980 () Bool)

(assert (=> d!1248514 (= c!720980 (> (size!34381 (_1!25389 lt!1507215)) 0))))

(assert (=> d!1248514 (= lt!1507215 e!2635635)))

(declare-fun c!720981 () Bool)

(assert (=> d!1248514 (= c!720981 (is-Some!10072 lt!1507214))))

(assert (=> d!1248514 (= lt!1507214 (maxPrefix!4490 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> d!1248514 (= (lexList!2038 thiss!21540 rules!2932 shorterInput!51) lt!1507215)))

(declare-fun b!4243942 () Bool)

(assert (=> b!4243942 (= e!2635636 (not (isEmpty!27756 (_1!25389 lt!1507215))))))

(declare-fun b!4243943 () Bool)

(assert (=> b!4243943 (= e!2635635 (tuple2!44511 Nil!46938 shorterInput!51))))

(assert (= (and d!1248514 c!720981) b!4243940))

(assert (= (and d!1248514 (not c!720981)) b!4243943))

(assert (= (and d!1248514 c!720980) b!4243941))

(assert (= (and d!1248514 (not c!720980)) b!4243939))

(assert (= (and b!4243941 res!1744891) b!4243942))

(declare-fun m!4829431 () Bool)

(assert (=> b!4243940 m!4829431))

(declare-fun m!4829433 () Bool)

(assert (=> b!4243941 m!4829433))

(assert (=> b!4243941 m!4829357))

(declare-fun m!4829435 () Bool)

(assert (=> d!1248514 m!4829435))

(assert (=> d!1248514 m!4829337))

(declare-fun m!4829437 () Bool)

(assert (=> b!4243942 m!4829437))

(assert (=> b!4243827 d!1248514))

(declare-fun b!4243956 () Bool)

(declare-fun e!2635646 () List!47062)

(assert (=> b!4243956 (= e!2635646 (Cons!46938 (h!52358 addTokens!17) (++!11948 (t!351487 addTokens!17) tokens!581)))))

(declare-fun lt!1507219 () List!47062)

(declare-fun e!2635645 () Bool)

(declare-fun b!4243958 () Bool)

(assert (=> b!4243958 (= e!2635645 (or (not (= tokens!581 Nil!46938)) (= lt!1507219 addTokens!17)))))

(declare-fun d!1248522 () Bool)

(assert (=> d!1248522 e!2635645))

(declare-fun res!1744900 () Bool)

(assert (=> d!1248522 (=> (not res!1744900) (not e!2635645))))

(declare-fun content!7383 (List!47062) (Set Token!14500))

(assert (=> d!1248522 (= res!1744900 (= (content!7383 lt!1507219) (set.union (content!7383 addTokens!17) (content!7383 tokens!581))))))

(assert (=> d!1248522 (= lt!1507219 e!2635646)))

(declare-fun c!720984 () Bool)

(assert (=> d!1248522 (= c!720984 (is-Nil!46938 addTokens!17))))

(assert (=> d!1248522 (= (++!11948 addTokens!17 tokens!581) lt!1507219)))

(declare-fun b!4243955 () Bool)

(assert (=> b!4243955 (= e!2635646 tokens!581)))

(declare-fun b!4243957 () Bool)

(declare-fun res!1744899 () Bool)

(assert (=> b!4243957 (=> (not res!1744899) (not e!2635645))))

(assert (=> b!4243957 (= res!1744899 (= (size!34381 lt!1507219) (+ (size!34381 addTokens!17) (size!34381 tokens!581))))))

(assert (= (and d!1248522 c!720984) b!4243955))

(assert (= (and d!1248522 (not c!720984)) b!4243956))

(assert (= (and d!1248522 res!1744900) b!4243957))

(assert (= (and b!4243957 res!1744899) b!4243958))

(declare-fun m!4829443 () Bool)

(assert (=> b!4243956 m!4829443))

(declare-fun m!4829445 () Bool)

(assert (=> d!1248522 m!4829445))

(declare-fun m!4829447 () Bool)

(assert (=> d!1248522 m!4829447))

(declare-fun m!4829449 () Bool)

(assert (=> d!1248522 m!4829449))

(declare-fun m!4829451 () Bool)

(assert (=> b!4243957 m!4829451))

(assert (=> b!4243957 m!4829331))

(declare-fun m!4829453 () Bool)

(assert (=> b!4243957 m!4829453))

(assert (=> b!4243827 d!1248522))

(declare-fun d!1248528 () Bool)

(declare-fun res!1744905 () Bool)

(declare-fun e!2635649 () Bool)

(assert (=> d!1248528 (=> (not res!1744905) (not e!2635649))))

(assert (=> d!1248528 (= res!1744905 (not (isEmpty!27755 (originalCharacters!8281 (h!52358 tokens!581)))))))

(assert (=> d!1248528 (= (inv!61697 (h!52358 tokens!581)) e!2635649)))

(declare-fun b!4243963 () Bool)

(declare-fun res!1744906 () Bool)

(assert (=> b!4243963 (=> (not res!1744906) (not e!2635649))))

(declare-fun list!16925 (BalanceConc!27890) List!47060)

(declare-fun dynLambda!20129 (Int TokenValue!8167) BalanceConc!27890)

(assert (=> b!4243963 (= res!1744906 (= (originalCharacters!8281 (h!52358 tokens!581)) (list!16925 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (value!246742 (h!52358 tokens!581))))))))

(declare-fun b!4243964 () Bool)

(assert (=> b!4243964 (= e!2635649 (= (size!34380 (h!52358 tokens!581)) (size!34382 (originalCharacters!8281 (h!52358 tokens!581)))))))

(assert (= (and d!1248528 res!1744905) b!4243963))

(assert (= (and b!4243963 res!1744906) b!4243964))

(declare-fun b_lambda!125003 () Bool)

(assert (=> (not b_lambda!125003) (not b!4243963)))

(declare-fun t!351493 () Bool)

(declare-fun tb!255611 () Bool)

(assert (=> (and b!4243841 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351493) tb!255611))

(declare-fun b!4243969 () Bool)

(declare-fun e!2635652 () Bool)

(declare-fun tp!1301237 () Bool)

(declare-fun inv!61700 (Conc!14148) Bool)

(assert (=> b!4243969 (= e!2635652 (and (inv!61700 (c!720966 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (value!246742 (h!52358 tokens!581))))) tp!1301237))))

(declare-fun result!311672 () Bool)

(declare-fun inv!61701 (BalanceConc!27890) Bool)

(assert (=> tb!255611 (= result!311672 (and (inv!61701 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (value!246742 (h!52358 tokens!581)))) e!2635652))))

(assert (= tb!255611 b!4243969))

(declare-fun m!4829455 () Bool)

(assert (=> b!4243969 m!4829455))

(declare-fun m!4829457 () Bool)

(assert (=> tb!255611 m!4829457))

(assert (=> b!4243963 t!351493))

(declare-fun b_and!336077 () Bool)

(assert (= b_and!336055 (and (=> t!351493 result!311672) b_and!336077)))

(declare-fun tb!255613 () Bool)

(declare-fun t!351495 () Bool)

(assert (=> (and b!4243835 (= (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351495) tb!255613))

(declare-fun result!311676 () Bool)

(assert (= result!311676 result!311672))

(assert (=> b!4243963 t!351495))

(declare-fun b_and!336079 () Bool)

(assert (= b_and!336059 (and (=> t!351495 result!311676) b_and!336079)))

(declare-fun t!351497 () Bool)

(declare-fun tb!255615 () Bool)

(assert (=> (and b!4243834 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351497) tb!255615))

(declare-fun result!311678 () Bool)

(assert (= result!311678 result!311672))

(assert (=> b!4243963 t!351497))

(declare-fun b_and!336081 () Bool)

(assert (= b_and!336063 (and (=> t!351497 result!311678) b_and!336081)))

(declare-fun m!4829459 () Bool)

(assert (=> d!1248528 m!4829459))

(declare-fun m!4829461 () Bool)

(assert (=> b!4243963 m!4829461))

(assert (=> b!4243963 m!4829461))

(declare-fun m!4829463 () Bool)

(assert (=> b!4243963 m!4829463))

(declare-fun m!4829465 () Bool)

(assert (=> b!4243964 m!4829465))

(assert (=> b!4243838 d!1248528))

(declare-fun b!4243980 () Bool)

(declare-fun e!2635660 () Bool)

(declare-fun inv!17 (TokenValue!8167) Bool)

(assert (=> b!4243980 (= e!2635660 (inv!17 (value!246742 (h!52358 addTokens!17))))))

(declare-fun b!4243981 () Bool)

(declare-fun e!2635659 () Bool)

(declare-fun inv!15 (TokenValue!8167) Bool)

(assert (=> b!4243981 (= e!2635659 (inv!15 (value!246742 (h!52358 addTokens!17))))))

(declare-fun d!1248530 () Bool)

(declare-fun c!720990 () Bool)

(assert (=> d!1248530 (= c!720990 (is-IntegerValue!24501 (value!246742 (h!52358 addTokens!17))))))

(declare-fun e!2635661 () Bool)

(assert (=> d!1248530 (= (inv!21 (value!246742 (h!52358 addTokens!17))) e!2635661)))

(declare-fun b!4243982 () Bool)

(assert (=> b!4243982 (= e!2635661 e!2635660)))

(declare-fun c!720989 () Bool)

(assert (=> b!4243982 (= c!720989 (is-IntegerValue!24502 (value!246742 (h!52358 addTokens!17))))))

(declare-fun b!4243983 () Bool)

(declare-fun res!1744909 () Bool)

(assert (=> b!4243983 (=> res!1744909 e!2635659)))

(assert (=> b!4243983 (= res!1744909 (not (is-IntegerValue!24503 (value!246742 (h!52358 addTokens!17)))))))

(assert (=> b!4243983 (= e!2635660 e!2635659)))

(declare-fun b!4243984 () Bool)

(declare-fun inv!16 (TokenValue!8167) Bool)

(assert (=> b!4243984 (= e!2635661 (inv!16 (value!246742 (h!52358 addTokens!17))))))

(assert (= (and d!1248530 c!720990) b!4243984))

(assert (= (and d!1248530 (not c!720990)) b!4243982))

(assert (= (and b!4243982 c!720989) b!4243980))

(assert (= (and b!4243982 (not c!720989)) b!4243983))

(assert (= (and b!4243983 (not res!1744909)) b!4243981))

(declare-fun m!4829467 () Bool)

(assert (=> b!4243980 m!4829467))

(declare-fun m!4829469 () Bool)

(assert (=> b!4243981 m!4829469))

(declare-fun m!4829471 () Bool)

(assert (=> b!4243984 m!4829471))

(assert (=> b!4243839 d!1248530))

(declare-fun b!4243985 () Bool)

(declare-fun e!2635663 () Bool)

(assert (=> b!4243985 (= e!2635663 (inv!17 (value!246742 (h!52358 tokens!581))))))

(declare-fun b!4243986 () Bool)

(declare-fun e!2635662 () Bool)

(assert (=> b!4243986 (= e!2635662 (inv!15 (value!246742 (h!52358 tokens!581))))))

(declare-fun d!1248532 () Bool)

(declare-fun c!720992 () Bool)

(assert (=> d!1248532 (= c!720992 (is-IntegerValue!24501 (value!246742 (h!52358 tokens!581))))))

(declare-fun e!2635664 () Bool)

(assert (=> d!1248532 (= (inv!21 (value!246742 (h!52358 tokens!581))) e!2635664)))

(declare-fun b!4243987 () Bool)

(assert (=> b!4243987 (= e!2635664 e!2635663)))

(declare-fun c!720991 () Bool)

(assert (=> b!4243987 (= c!720991 (is-IntegerValue!24502 (value!246742 (h!52358 tokens!581))))))

(declare-fun b!4243988 () Bool)

(declare-fun res!1744910 () Bool)

(assert (=> b!4243988 (=> res!1744910 e!2635662)))

(assert (=> b!4243988 (= res!1744910 (not (is-IntegerValue!24503 (value!246742 (h!52358 tokens!581)))))))

(assert (=> b!4243988 (= e!2635663 e!2635662)))

(declare-fun b!4243989 () Bool)

(assert (=> b!4243989 (= e!2635664 (inv!16 (value!246742 (h!52358 tokens!581))))))

(assert (= (and d!1248532 c!720992) b!4243989))

(assert (= (and d!1248532 (not c!720992)) b!4243987))

(assert (= (and b!4243987 c!720991) b!4243985))

(assert (= (and b!4243987 (not c!720991)) b!4243988))

(assert (= (and b!4243988 (not res!1744910)) b!4243986))

(declare-fun m!4829473 () Bool)

(assert (=> b!4243985 m!4829473))

(declare-fun m!4829475 () Bool)

(assert (=> b!4243986 m!4829475))

(declare-fun m!4829477 () Bool)

(assert (=> b!4243989 m!4829477))

(assert (=> b!4243829 d!1248532))

(declare-fun d!1248534 () Bool)

(assert (=> d!1248534 (= (isEmpty!27756 addTokens!17) (is-Nil!46938 addTokens!17))))

(assert (=> b!4243840 d!1248534))

(declare-fun d!1248536 () Bool)

(assert (=> d!1248536 (= (inv!61693 (tag!8801 (rule!11067 (h!52358 addTokens!17)))) (= (mod (str.len (value!246741 (tag!8801 (rule!11067 (h!52358 addTokens!17))))) 2) 0))))

(assert (=> b!4243825 d!1248536))

(declare-fun d!1248538 () Bool)

(declare-fun res!1744913 () Bool)

(declare-fun e!2635667 () Bool)

(assert (=> d!1248538 (=> (not res!1744913) (not e!2635667))))

(declare-fun semiInverseModEq!3458 (Int Int) Bool)

(assert (=> d!1248538 (= res!1744913 (semiInverseModEq!3458 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (toValue!10697 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))))))

(assert (=> d!1248538 (= (inv!61696 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) e!2635667)))

(declare-fun b!4243992 () Bool)

(declare-fun equivClasses!3357 (Int Int) Bool)

(assert (=> b!4243992 (= e!2635667 (equivClasses!3357 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (toValue!10697 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))))))

(assert (= (and d!1248538 res!1744913) b!4243992))

(declare-fun m!4829479 () Bool)

(assert (=> d!1248538 m!4829479))

(declare-fun m!4829481 () Bool)

(assert (=> b!4243992 m!4829481))

(assert (=> b!4243825 d!1248538))

(declare-fun d!1248540 () Bool)

(assert (=> d!1248540 (= (isEmpty!27755 longerInput!51) (is-Nil!46936 longerInput!51))))

(assert (=> b!4243826 d!1248540))

(declare-fun d!1248542 () Bool)

(declare-fun lt!1507222 () Int)

(assert (=> d!1248542 (>= lt!1507222 0)))

(declare-fun e!2635670 () Int)

(assert (=> d!1248542 (= lt!1507222 e!2635670)))

(declare-fun c!720995 () Bool)

(assert (=> d!1248542 (= c!720995 (is-Nil!46936 longerInput!51))))

(assert (=> d!1248542 (= (size!34382 longerInput!51) lt!1507222)))

(declare-fun b!4243997 () Bool)

(assert (=> b!4243997 (= e!2635670 0)))

(declare-fun b!4243998 () Bool)

(assert (=> b!4243998 (= e!2635670 (+ 1 (size!34382 (t!351485 longerInput!51))))))

(assert (= (and d!1248542 c!720995) b!4243997))

(assert (= (and d!1248542 (not c!720995)) b!4243998))

(declare-fun m!4829483 () Bool)

(assert (=> b!4243998 m!4829483))

(assert (=> b!4243833 d!1248542))

(declare-fun d!1248544 () Bool)

(declare-fun lt!1507223 () Int)

(assert (=> d!1248544 (>= lt!1507223 0)))

(declare-fun e!2635671 () Int)

(assert (=> d!1248544 (= lt!1507223 e!2635671)))

(declare-fun c!720996 () Bool)

(assert (=> d!1248544 (= c!720996 (is-Nil!46936 shorterInput!51))))

(assert (=> d!1248544 (= (size!34382 shorterInput!51) lt!1507223)))

(declare-fun b!4243999 () Bool)

(assert (=> b!4243999 (= e!2635671 0)))

(declare-fun b!4244000 () Bool)

(assert (=> b!4244000 (= e!2635671 (+ 1 (size!34382 (t!351485 shorterInput!51))))))

(assert (= (and d!1248544 c!720996) b!4243999))

(assert (= (and d!1248544 (not c!720996)) b!4244000))

(declare-fun m!4829485 () Bool)

(assert (=> b!4244000 m!4829485))

(assert (=> b!4243833 d!1248544))

(declare-fun d!1248546 () Bool)

(assert (=> d!1248546 (= (isEmpty!27754 rules!2932) (is-Nil!46937 rules!2932))))

(assert (=> b!4243823 d!1248546))

(declare-fun d!1248548 () Bool)

(assert (=> d!1248548 (= (inv!61693 (tag!8801 (h!52357 rules!2932))) (= (mod (str.len (value!246741 (tag!8801 (h!52357 rules!2932)))) 2) 0))))

(assert (=> b!4243824 d!1248548))

(declare-fun d!1248550 () Bool)

(declare-fun res!1744914 () Bool)

(declare-fun e!2635672 () Bool)

(assert (=> d!1248550 (=> (not res!1744914) (not e!2635672))))

(assert (=> d!1248550 (= res!1744914 (semiInverseModEq!3458 (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toValue!10697 (transformation!7937 (h!52357 rules!2932)))))))

(assert (=> d!1248550 (= (inv!61696 (transformation!7937 (h!52357 rules!2932))) e!2635672)))

(declare-fun b!4244001 () Bool)

(assert (=> b!4244001 (= e!2635672 (equivClasses!3357 (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toValue!10697 (transformation!7937 (h!52357 rules!2932)))))))

(assert (= (and d!1248550 res!1744914) b!4244001))

(declare-fun m!4829487 () Bool)

(assert (=> d!1248550 m!4829487))

(declare-fun m!4829489 () Bool)

(assert (=> b!4244001 m!4829489))

(assert (=> b!4243824 d!1248550))

(declare-fun b!4244002 () Bool)

(declare-fun e!2635675 () Bool)

(declare-fun lt!1507225 () tuple2!44510)

(assert (=> b!4244002 (= e!2635675 (= (_2!25389 lt!1507225) longerInput!51))))

(declare-fun b!4244003 () Bool)

(declare-fun e!2635673 () tuple2!44510)

(declare-fun lt!1507224 () Option!10073)

(declare-fun lt!1507226 () tuple2!44510)

(assert (=> b!4244003 (= e!2635673 (tuple2!44511 (Cons!46938 (_1!25390 (v!41026 lt!1507224)) (_1!25389 lt!1507226)) (_2!25389 lt!1507226)))))

(assert (=> b!4244003 (= lt!1507226 (lexList!2038 thiss!21540 rules!2932 (_2!25390 (v!41026 lt!1507224))))))

(declare-fun b!4244004 () Bool)

(declare-fun e!2635674 () Bool)

(assert (=> b!4244004 (= e!2635675 e!2635674)))

(declare-fun res!1744915 () Bool)

(assert (=> b!4244004 (= res!1744915 (< (size!34382 (_2!25389 lt!1507225)) (size!34382 longerInput!51)))))

(assert (=> b!4244004 (=> (not res!1744915) (not e!2635674))))

(declare-fun d!1248552 () Bool)

(assert (=> d!1248552 e!2635675))

(declare-fun c!720997 () Bool)

(assert (=> d!1248552 (= c!720997 (> (size!34381 (_1!25389 lt!1507225)) 0))))

(assert (=> d!1248552 (= lt!1507225 e!2635673)))

(declare-fun c!720998 () Bool)

(assert (=> d!1248552 (= c!720998 (is-Some!10072 lt!1507224))))

(assert (=> d!1248552 (= lt!1507224 (maxPrefix!4490 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1248552 (= (lexList!2038 thiss!21540 rules!2932 longerInput!51) lt!1507225)))

(declare-fun b!4244005 () Bool)

(assert (=> b!4244005 (= e!2635674 (not (isEmpty!27756 (_1!25389 lt!1507225))))))

(declare-fun b!4244006 () Bool)

(assert (=> b!4244006 (= e!2635673 (tuple2!44511 Nil!46938 longerInput!51))))

(assert (= (and d!1248552 c!720998) b!4244003))

(assert (= (and d!1248552 (not c!720998)) b!4244006))

(assert (= (and d!1248552 c!720997) b!4244004))

(assert (= (and d!1248552 (not c!720997)) b!4244002))

(assert (= (and b!4244004 res!1744915) b!4244005))

(declare-fun m!4829491 () Bool)

(assert (=> b!4244003 m!4829491))

(declare-fun m!4829493 () Bool)

(assert (=> b!4244004 m!4829493))

(assert (=> b!4244004 m!4829355))

(declare-fun m!4829495 () Bool)

(assert (=> d!1248552 m!4829495))

(assert (=> d!1248552 m!4829339))

(declare-fun m!4829497 () Bool)

(assert (=> b!4244005 m!4829497))

(assert (=> b!4243819 d!1248552))

(declare-fun d!1248554 () Bool)

(declare-fun res!1744918 () Bool)

(declare-fun e!2635678 () Bool)

(assert (=> d!1248554 (=> (not res!1744918) (not e!2635678))))

(declare-fun rulesValid!3080 (LexerInterface!7532 List!47061) Bool)

(assert (=> d!1248554 (= res!1744918 (rulesValid!3080 thiss!21540 rules!2932))))

(assert (=> d!1248554 (= (rulesInvariant!6643 thiss!21540 rules!2932) e!2635678)))

(declare-fun b!4244009 () Bool)

(declare-datatypes ((List!47067 0))(
  ( (Nil!46943) (Cons!46943 (h!52363 String!54767) (t!351540 List!47067)) )
))
(declare-fun noDuplicateTag!3241 (LexerInterface!7532 List!47061 List!47067) Bool)

(assert (=> b!4244009 (= e!2635678 (noDuplicateTag!3241 thiss!21540 rules!2932 Nil!46943))))

(assert (= (and d!1248554 res!1744918) b!4244009))

(declare-fun m!4829499 () Bool)

(assert (=> d!1248554 m!4829499))

(declare-fun m!4829501 () Bool)

(assert (=> b!4244009 m!4829501))

(assert (=> b!4243830 d!1248554))

(declare-fun d!1248556 () Bool)

(assert (=> d!1248556 (= (inv!61693 (tag!8801 (rule!11067 (h!52358 tokens!581)))) (= (mod (str.len (value!246741 (tag!8801 (rule!11067 (h!52358 tokens!581))))) 2) 0))))

(assert (=> b!4243820 d!1248556))

(declare-fun d!1248558 () Bool)

(declare-fun res!1744919 () Bool)

(declare-fun e!2635679 () Bool)

(assert (=> d!1248558 (=> (not res!1744919) (not e!2635679))))

(assert (=> d!1248558 (= res!1744919 (semiInverseModEq!3458 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (toValue!10697 (transformation!7937 (rule!11067 (h!52358 tokens!581))))))))

(assert (=> d!1248558 (= (inv!61696 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) e!2635679)))

(declare-fun b!4244010 () Bool)

(assert (=> b!4244010 (= e!2635679 (equivClasses!3357 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (toValue!10697 (transformation!7937 (rule!11067 (h!52358 tokens!581))))))))

(assert (= (and d!1248558 res!1744919) b!4244010))

(declare-fun m!4829503 () Bool)

(assert (=> d!1248558 m!4829503))

(declare-fun m!4829505 () Bool)

(assert (=> b!4244010 m!4829505))

(assert (=> b!4243820 d!1248558))

(declare-fun b!4244047 () Bool)

(declare-fun res!1744954 () Bool)

(declare-fun e!2635694 () Bool)

(assert (=> b!4244047 (=> (not res!1744954) (not e!2635694))))

(declare-fun lt!1507247 () Option!10073)

(declare-fun ++!11950 (List!47060 List!47060) List!47060)

(declare-fun charsOf!5287 (Token!14500) BalanceConc!27890)

(declare-fun get!15256 (Option!10073) tuple2!44512)

(assert (=> b!4244047 (= res!1744954 (= (++!11950 (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507247)))) (_2!25390 (get!15256 lt!1507247))) shorterInput!51))))

(declare-fun b!4244048 () Bool)

(declare-fun e!2635692 () Option!10073)

(declare-fun lt!1507250 () Option!10073)

(declare-fun lt!1507248 () Option!10073)

(assert (=> b!4244048 (= e!2635692 (ite (and (is-None!10072 lt!1507250) (is-None!10072 lt!1507248)) None!10072 (ite (is-None!10072 lt!1507248) lt!1507250 (ite (is-None!10072 lt!1507250) lt!1507248 (ite (>= (size!34380 (_1!25390 (v!41026 lt!1507250))) (size!34380 (_1!25390 (v!41026 lt!1507248)))) lt!1507250 lt!1507248)))))))

(declare-fun call!293879 () Option!10073)

(assert (=> b!4244048 (= lt!1507250 call!293879)))

(assert (=> b!4244048 (= lt!1507248 (maxPrefix!4490 thiss!21540 (t!351486 rules!2932) shorterInput!51))))

(declare-fun b!4244049 () Bool)

(declare-fun res!1744951 () Bool)

(assert (=> b!4244049 (=> (not res!1744951) (not e!2635694))))

(assert (=> b!4244049 (= res!1744951 (= (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507247)))) (originalCharacters!8281 (_1!25390 (get!15256 lt!1507247)))))))

(declare-fun b!4244050 () Bool)

(declare-fun contains!9736 (List!47061 Rule!15674) Bool)

(assert (=> b!4244050 (= e!2635694 (contains!9736 rules!2932 (rule!11067 (_1!25390 (get!15256 lt!1507247)))))))

(declare-fun b!4244051 () Bool)

(declare-fun res!1744948 () Bool)

(assert (=> b!4244051 (=> (not res!1744948) (not e!2635694))))

(assert (=> b!4244051 (= res!1744948 (< (size!34382 (_2!25390 (get!15256 lt!1507247))) (size!34382 shorterInput!51)))))

(declare-fun b!4244052 () Bool)

(declare-fun res!1744952 () Bool)

(assert (=> b!4244052 (=> (not res!1744952) (not e!2635694))))

(declare-fun apply!10757 (TokenValueInjection!15762 BalanceConc!27890) TokenValue!8167)

(declare-fun seqFromList!5817 (List!47060) BalanceConc!27890)

(assert (=> b!4244052 (= res!1744952 (= (value!246742 (_1!25390 (get!15256 lt!1507247))) (apply!10757 (transformation!7937 (rule!11067 (_1!25390 (get!15256 lt!1507247)))) (seqFromList!5817 (originalCharacters!8281 (_1!25390 (get!15256 lt!1507247)))))))))

(declare-fun b!4244053 () Bool)

(declare-fun res!1744949 () Bool)

(assert (=> b!4244053 (=> (not res!1744949) (not e!2635694))))

(declare-fun matchR!6452 (Regex!12842 List!47060) Bool)

(assert (=> b!4244053 (= res!1744949 (matchR!6452 (regex!7937 (rule!11067 (_1!25390 (get!15256 lt!1507247)))) (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507247))))))))

(declare-fun b!4244054 () Bool)

(declare-fun e!2635693 () Bool)

(assert (=> b!4244054 (= e!2635693 e!2635694)))

(declare-fun res!1744953 () Bool)

(assert (=> b!4244054 (=> (not res!1744953) (not e!2635694))))

(declare-fun isDefined!7446 (Option!10073) Bool)

(assert (=> b!4244054 (= res!1744953 (isDefined!7446 lt!1507247))))

(declare-fun bm!293874 () Bool)

(declare-fun maxPrefixOneRule!3455 (LexerInterface!7532 Rule!15674 List!47060) Option!10073)

(assert (=> bm!293874 (= call!293879 (maxPrefixOneRule!3455 thiss!21540 (h!52357 rules!2932) shorterInput!51))))

(declare-fun b!4244055 () Bool)

(assert (=> b!4244055 (= e!2635692 call!293879)))

(declare-fun d!1248560 () Bool)

(assert (=> d!1248560 e!2635693))

(declare-fun res!1744950 () Bool)

(assert (=> d!1248560 (=> res!1744950 e!2635693)))

(declare-fun isEmpty!27760 (Option!10073) Bool)

(assert (=> d!1248560 (= res!1744950 (isEmpty!27760 lt!1507247))))

(assert (=> d!1248560 (= lt!1507247 e!2635692)))

(declare-fun c!721003 () Bool)

(assert (=> d!1248560 (= c!721003 (and (is-Cons!46937 rules!2932) (is-Nil!46937 (t!351486 rules!2932))))))

(declare-datatypes ((Unit!65995 0))(
  ( (Unit!65996) )
))
(declare-fun lt!1507251 () Unit!65995)

(declare-fun lt!1507249 () Unit!65995)

(assert (=> d!1248560 (= lt!1507251 lt!1507249)))

(declare-fun isPrefix!4730 (List!47060 List!47060) Bool)

(assert (=> d!1248560 (isPrefix!4730 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3127 (List!47060 List!47060) Unit!65995)

(assert (=> d!1248560 (= lt!1507249 (lemmaIsPrefixRefl!3127 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2979 (LexerInterface!7532 List!47061) Bool)

(assert (=> d!1248560 (rulesValidInductive!2979 thiss!21540 rules!2932)))

(assert (=> d!1248560 (= (maxPrefix!4490 thiss!21540 rules!2932 shorterInput!51) lt!1507247)))

(assert (= (and d!1248560 c!721003) b!4244055))

(assert (= (and d!1248560 (not c!721003)) b!4244048))

(assert (= (or b!4244055 b!4244048) bm!293874))

(assert (= (and d!1248560 (not res!1744950)) b!4244054))

(assert (= (and b!4244054 res!1744953) b!4244049))

(assert (= (and b!4244049 res!1744951) b!4244051))

(assert (= (and b!4244051 res!1744948) b!4244047))

(assert (= (and b!4244047 res!1744954) b!4244052))

(assert (= (and b!4244052 res!1744952) b!4244053))

(assert (= (and b!4244053 res!1744949) b!4244050))

(declare-fun m!4829507 () Bool)

(assert (=> b!4244053 m!4829507))

(declare-fun m!4829509 () Bool)

(assert (=> b!4244053 m!4829509))

(assert (=> b!4244053 m!4829509))

(declare-fun m!4829511 () Bool)

(assert (=> b!4244053 m!4829511))

(assert (=> b!4244053 m!4829511))

(declare-fun m!4829513 () Bool)

(assert (=> b!4244053 m!4829513))

(declare-fun m!4829515 () Bool)

(assert (=> b!4244048 m!4829515))

(assert (=> b!4244050 m!4829507))

(declare-fun m!4829517 () Bool)

(assert (=> b!4244050 m!4829517))

(assert (=> b!4244052 m!4829507))

(declare-fun m!4829519 () Bool)

(assert (=> b!4244052 m!4829519))

(assert (=> b!4244052 m!4829519))

(declare-fun m!4829521 () Bool)

(assert (=> b!4244052 m!4829521))

(declare-fun m!4829523 () Bool)

(assert (=> b!4244054 m!4829523))

(assert (=> b!4244047 m!4829507))

(assert (=> b!4244047 m!4829509))

(assert (=> b!4244047 m!4829509))

(assert (=> b!4244047 m!4829511))

(assert (=> b!4244047 m!4829511))

(declare-fun m!4829525 () Bool)

(assert (=> b!4244047 m!4829525))

(declare-fun m!4829527 () Bool)

(assert (=> d!1248560 m!4829527))

(declare-fun m!4829529 () Bool)

(assert (=> d!1248560 m!4829529))

(declare-fun m!4829531 () Bool)

(assert (=> d!1248560 m!4829531))

(declare-fun m!4829533 () Bool)

(assert (=> d!1248560 m!4829533))

(assert (=> b!4244051 m!4829507))

(declare-fun m!4829535 () Bool)

(assert (=> b!4244051 m!4829535))

(assert (=> b!4244051 m!4829357))

(assert (=> b!4244049 m!4829507))

(assert (=> b!4244049 m!4829509))

(assert (=> b!4244049 m!4829509))

(assert (=> b!4244049 m!4829511))

(declare-fun m!4829537 () Bool)

(assert (=> bm!293874 m!4829537))

(assert (=> b!4243831 d!1248560))

(declare-fun b!4244065 () Bool)

(declare-fun res!1744968 () Bool)

(declare-fun e!2635700 () Bool)

(assert (=> b!4244065 (=> (not res!1744968) (not e!2635700))))

(declare-fun lt!1507257 () Option!10073)

(assert (=> b!4244065 (= res!1744968 (= (++!11950 (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507257)))) (_2!25390 (get!15256 lt!1507257))) longerInput!51))))

(declare-fun b!4244066 () Bool)

(declare-fun e!2635698 () Option!10073)

(declare-fun lt!1507260 () Option!10073)

(declare-fun lt!1507258 () Option!10073)

(assert (=> b!4244066 (= e!2635698 (ite (and (is-None!10072 lt!1507260) (is-None!10072 lt!1507258)) None!10072 (ite (is-None!10072 lt!1507258) lt!1507260 (ite (is-None!10072 lt!1507260) lt!1507258 (ite (>= (size!34380 (_1!25390 (v!41026 lt!1507260))) (size!34380 (_1!25390 (v!41026 lt!1507258)))) lt!1507260 lt!1507258)))))))

(declare-fun call!293881 () Option!10073)

(assert (=> b!4244066 (= lt!1507260 call!293881)))

(assert (=> b!4244066 (= lt!1507258 (maxPrefix!4490 thiss!21540 (t!351486 rules!2932) longerInput!51))))

(declare-fun b!4244067 () Bool)

(declare-fun res!1744965 () Bool)

(assert (=> b!4244067 (=> (not res!1744965) (not e!2635700))))

(assert (=> b!4244067 (= res!1744965 (= (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507257)))) (originalCharacters!8281 (_1!25390 (get!15256 lt!1507257)))))))

(declare-fun b!4244068 () Bool)

(assert (=> b!4244068 (= e!2635700 (contains!9736 rules!2932 (rule!11067 (_1!25390 (get!15256 lt!1507257)))))))

(declare-fun b!4244069 () Bool)

(declare-fun res!1744962 () Bool)

(assert (=> b!4244069 (=> (not res!1744962) (not e!2635700))))

(assert (=> b!4244069 (= res!1744962 (< (size!34382 (_2!25390 (get!15256 lt!1507257))) (size!34382 longerInput!51)))))

(declare-fun b!4244070 () Bool)

(declare-fun res!1744966 () Bool)

(assert (=> b!4244070 (=> (not res!1744966) (not e!2635700))))

(assert (=> b!4244070 (= res!1744966 (= (value!246742 (_1!25390 (get!15256 lt!1507257))) (apply!10757 (transformation!7937 (rule!11067 (_1!25390 (get!15256 lt!1507257)))) (seqFromList!5817 (originalCharacters!8281 (_1!25390 (get!15256 lt!1507257)))))))))

(declare-fun b!4244071 () Bool)

(declare-fun res!1744963 () Bool)

(assert (=> b!4244071 (=> (not res!1744963) (not e!2635700))))

(assert (=> b!4244071 (= res!1744963 (matchR!6452 (regex!7937 (rule!11067 (_1!25390 (get!15256 lt!1507257)))) (list!16925 (charsOf!5287 (_1!25390 (get!15256 lt!1507257))))))))

(declare-fun b!4244072 () Bool)

(declare-fun e!2635699 () Bool)

(assert (=> b!4244072 (= e!2635699 e!2635700)))

(declare-fun res!1744967 () Bool)

(assert (=> b!4244072 (=> (not res!1744967) (not e!2635700))))

(assert (=> b!4244072 (= res!1744967 (isDefined!7446 lt!1507257))))

(declare-fun bm!293876 () Bool)

(assert (=> bm!293876 (= call!293881 (maxPrefixOneRule!3455 thiss!21540 (h!52357 rules!2932) longerInput!51))))

(declare-fun b!4244073 () Bool)

(assert (=> b!4244073 (= e!2635698 call!293881)))

(declare-fun d!1248562 () Bool)

(assert (=> d!1248562 e!2635699))

(declare-fun res!1744964 () Bool)

(assert (=> d!1248562 (=> res!1744964 e!2635699)))

(assert (=> d!1248562 (= res!1744964 (isEmpty!27760 lt!1507257))))

(assert (=> d!1248562 (= lt!1507257 e!2635698)))

(declare-fun c!721005 () Bool)

(assert (=> d!1248562 (= c!721005 (and (is-Cons!46937 rules!2932) (is-Nil!46937 (t!351486 rules!2932))))))

(declare-fun lt!1507261 () Unit!65995)

(declare-fun lt!1507259 () Unit!65995)

(assert (=> d!1248562 (= lt!1507261 lt!1507259)))

(assert (=> d!1248562 (isPrefix!4730 longerInput!51 longerInput!51)))

(assert (=> d!1248562 (= lt!1507259 (lemmaIsPrefixRefl!3127 longerInput!51 longerInput!51))))

(assert (=> d!1248562 (rulesValidInductive!2979 thiss!21540 rules!2932)))

(assert (=> d!1248562 (= (maxPrefix!4490 thiss!21540 rules!2932 longerInput!51) lt!1507257)))

(assert (= (and d!1248562 c!721005) b!4244073))

(assert (= (and d!1248562 (not c!721005)) b!4244066))

(assert (= (or b!4244073 b!4244066) bm!293876))

(assert (= (and d!1248562 (not res!1744964)) b!4244072))

(assert (= (and b!4244072 res!1744967) b!4244067))

(assert (= (and b!4244067 res!1744965) b!4244069))

(assert (= (and b!4244069 res!1744962) b!4244065))

(assert (= (and b!4244065 res!1744968) b!4244070))

(assert (= (and b!4244070 res!1744966) b!4244071))

(assert (= (and b!4244071 res!1744963) b!4244068))

(declare-fun m!4829539 () Bool)

(assert (=> b!4244071 m!4829539))

(declare-fun m!4829541 () Bool)

(assert (=> b!4244071 m!4829541))

(assert (=> b!4244071 m!4829541))

(declare-fun m!4829543 () Bool)

(assert (=> b!4244071 m!4829543))

(assert (=> b!4244071 m!4829543))

(declare-fun m!4829545 () Bool)

(assert (=> b!4244071 m!4829545))

(declare-fun m!4829547 () Bool)

(assert (=> b!4244066 m!4829547))

(assert (=> b!4244068 m!4829539))

(declare-fun m!4829549 () Bool)

(assert (=> b!4244068 m!4829549))

(assert (=> b!4244070 m!4829539))

(declare-fun m!4829551 () Bool)

(assert (=> b!4244070 m!4829551))

(assert (=> b!4244070 m!4829551))

(declare-fun m!4829553 () Bool)

(assert (=> b!4244070 m!4829553))

(declare-fun m!4829555 () Bool)

(assert (=> b!4244072 m!4829555))

(assert (=> b!4244065 m!4829539))

(assert (=> b!4244065 m!4829541))

(assert (=> b!4244065 m!4829541))

(assert (=> b!4244065 m!4829543))

(assert (=> b!4244065 m!4829543))

(declare-fun m!4829557 () Bool)

(assert (=> b!4244065 m!4829557))

(declare-fun m!4829559 () Bool)

(assert (=> d!1248562 m!4829559))

(declare-fun m!4829561 () Bool)

(assert (=> d!1248562 m!4829561))

(declare-fun m!4829563 () Bool)

(assert (=> d!1248562 m!4829563))

(assert (=> d!1248562 m!4829533))

(assert (=> b!4244069 m!4829539))

(declare-fun m!4829565 () Bool)

(assert (=> b!4244069 m!4829565))

(assert (=> b!4244069 m!4829355))

(assert (=> b!4244067 m!4829539))

(assert (=> b!4244067 m!4829541))

(assert (=> b!4244067 m!4829541))

(assert (=> b!4244067 m!4829543))

(declare-fun m!4829567 () Bool)

(assert (=> bm!293876 m!4829567))

(assert (=> b!4243831 d!1248562))

(declare-fun d!1248564 () Bool)

(declare-fun res!1744969 () Bool)

(declare-fun e!2635701 () Bool)

(assert (=> d!1248564 (=> (not res!1744969) (not e!2635701))))

(assert (=> d!1248564 (= res!1744969 (not (isEmpty!27755 (originalCharacters!8281 (h!52358 addTokens!17)))))))

(assert (=> d!1248564 (= (inv!61697 (h!52358 addTokens!17)) e!2635701)))

(declare-fun b!4244074 () Bool)

(declare-fun res!1744970 () Bool)

(assert (=> b!4244074 (=> (not res!1744970) (not e!2635701))))

(assert (=> b!4244074 (= res!1744970 (= (originalCharacters!8281 (h!52358 addTokens!17)) (list!16925 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (value!246742 (h!52358 addTokens!17))))))))

(declare-fun b!4244075 () Bool)

(assert (=> b!4244075 (= e!2635701 (= (size!34380 (h!52358 addTokens!17)) (size!34382 (originalCharacters!8281 (h!52358 addTokens!17)))))))

(assert (= (and d!1248564 res!1744969) b!4244074))

(assert (= (and b!4244074 res!1744970) b!4244075))

(declare-fun b_lambda!125005 () Bool)

(assert (=> (not b_lambda!125005) (not b!4244074)))

(declare-fun t!351499 () Bool)

(declare-fun tb!255617 () Bool)

(assert (=> (and b!4243841 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351499) tb!255617))

(declare-fun b!4244076 () Bool)

(declare-fun e!2635702 () Bool)

(declare-fun tp!1301238 () Bool)

(assert (=> b!4244076 (= e!2635702 (and (inv!61700 (c!720966 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (value!246742 (h!52358 addTokens!17))))) tp!1301238))))

(declare-fun result!311680 () Bool)

(assert (=> tb!255617 (= result!311680 (and (inv!61701 (dynLambda!20129 (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (value!246742 (h!52358 addTokens!17)))) e!2635702))))

(assert (= tb!255617 b!4244076))

(declare-fun m!4829585 () Bool)

(assert (=> b!4244076 m!4829585))

(declare-fun m!4829587 () Bool)

(assert (=> tb!255617 m!4829587))

(assert (=> b!4244074 t!351499))

(declare-fun b_and!336083 () Bool)

(assert (= b_and!336077 (and (=> t!351499 result!311680) b_and!336083)))

(declare-fun t!351501 () Bool)

(declare-fun tb!255619 () Bool)

(assert (=> (and b!4243835 (= (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351501) tb!255619))

(declare-fun result!311682 () Bool)

(assert (= result!311682 result!311680))

(assert (=> b!4244074 t!351501))

(declare-fun b_and!336085 () Bool)

(assert (= b_and!336079 (and (=> t!351501 result!311682) b_and!336085)))

(declare-fun t!351503 () Bool)

(declare-fun tb!255621 () Bool)

(assert (=> (and b!4243834 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351503) tb!255621))

(declare-fun result!311684 () Bool)

(assert (= result!311684 result!311680))

(assert (=> b!4244074 t!351503))

(declare-fun b_and!336087 () Bool)

(assert (= b_and!336081 (and (=> t!351503 result!311684) b_and!336087)))

(declare-fun m!4829591 () Bool)

(assert (=> d!1248564 m!4829591))

(declare-fun m!4829595 () Bool)

(assert (=> b!4244074 m!4829595))

(assert (=> b!4244074 m!4829595))

(declare-fun m!4829597 () Bool)

(assert (=> b!4244074 m!4829597))

(declare-fun m!4829599 () Bool)

(assert (=> b!4244075 m!4829599))

(assert (=> b!4243821 d!1248564))

(declare-fun d!1248566 () Bool)

(declare-fun lt!1507269 () Int)

(assert (=> d!1248566 (>= lt!1507269 0)))

(declare-fun e!2635708 () Int)

(assert (=> d!1248566 (= lt!1507269 e!2635708)))

(declare-fun c!721009 () Bool)

(assert (=> d!1248566 (= c!721009 (is-Nil!46938 addTokens!17))))

(assert (=> d!1248566 (= (size!34381 addTokens!17) lt!1507269)))

(declare-fun b!4244090 () Bool)

(assert (=> b!4244090 (= e!2635708 0)))

(declare-fun b!4244091 () Bool)

(assert (=> b!4244091 (= e!2635708 (+ 1 (size!34381 (t!351487 addTokens!17))))))

(assert (= (and d!1248566 c!721009) b!4244090))

(assert (= (and d!1248566 (not c!721009)) b!4244091))

(declare-fun m!4829613 () Bool)

(assert (=> b!4244091 m!4829613))

(assert (=> b!4243832 d!1248566))

(declare-fun b!4244105 () Bool)

(declare-fun b_free!125827 () Bool)

(declare-fun b_next!126531 () Bool)

(assert (=> b!4244105 (= b_free!125827 (not b_next!126531))))

(declare-fun tp!1301250 () Bool)

(declare-fun b_and!336089 () Bool)

(assert (=> b!4244105 (= tp!1301250 b_and!336089)))

(declare-fun b_free!125829 () Bool)

(declare-fun b_next!126533 () Bool)

(assert (=> b!4244105 (= b_free!125829 (not b_next!126533))))

(declare-fun t!351505 () Bool)

(declare-fun tb!255623 () Bool)

(assert (=> (and b!4244105 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 tokens!581))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351505) tb!255623))

(declare-fun result!311688 () Bool)

(assert (= result!311688 result!311672))

(assert (=> b!4243963 t!351505))

(declare-fun t!351507 () Bool)

(declare-fun tb!255625 () Bool)

(assert (=> (and b!4244105 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 tokens!581))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351507) tb!255625))

(declare-fun result!311690 () Bool)

(assert (= result!311690 result!311680))

(assert (=> b!4244074 t!351507))

(declare-fun tp!1301253 () Bool)

(declare-fun b_and!336091 () Bool)

(assert (=> b!4244105 (= tp!1301253 (and (=> t!351505 result!311688) (=> t!351507 result!311690) b_and!336091))))

(declare-fun e!2635721 () Bool)

(assert (=> b!4243838 (= tp!1301178 e!2635721)))

(declare-fun tp!1301249 () Bool)

(declare-fun e!2635722 () Bool)

(declare-fun b!4244103 () Bool)

(declare-fun e!2635725 () Bool)

(assert (=> b!4244103 (= e!2635722 (and (inv!21 (value!246742 (h!52358 (t!351487 tokens!581)))) e!2635725 tp!1301249))))

(declare-fun b!4244102 () Bool)

(declare-fun tp!1301252 () Bool)

(assert (=> b!4244102 (= e!2635721 (and (inv!61697 (h!52358 (t!351487 tokens!581))) e!2635722 tp!1301252))))

(declare-fun e!2635726 () Bool)

(assert (=> b!4244105 (= e!2635726 (and tp!1301250 tp!1301253))))

(declare-fun tp!1301251 () Bool)

(declare-fun b!4244104 () Bool)

(assert (=> b!4244104 (= e!2635725 (and tp!1301251 (inv!61693 (tag!8801 (rule!11067 (h!52358 (t!351487 tokens!581))))) (inv!61696 (transformation!7937 (rule!11067 (h!52358 (t!351487 tokens!581))))) e!2635726))))

(assert (= b!4244104 b!4244105))

(assert (= b!4244103 b!4244104))

(assert (= b!4244102 b!4244103))

(assert (= (and b!4243838 (is-Cons!46938 (t!351487 tokens!581))) b!4244102))

(declare-fun m!4829643 () Bool)

(assert (=> b!4244103 m!4829643))

(declare-fun m!4829647 () Bool)

(assert (=> b!4244102 m!4829647))

(declare-fun m!4829649 () Bool)

(assert (=> b!4244104 m!4829649))

(declare-fun m!4829651 () Bool)

(assert (=> b!4244104 m!4829651))

(declare-fun b!4244110 () Bool)

(declare-fun e!2635729 () Bool)

(declare-fun tp!1301256 () Bool)

(assert (=> b!4244110 (= e!2635729 (and tp_is_empty!22675 tp!1301256))))

(assert (=> b!4243828 (= tp!1301173 e!2635729)))

(assert (= (and b!4243828 (is-Cons!46936 (t!351485 shorterInput!51))) b!4244110))

(declare-fun b!4244111 () Bool)

(declare-fun e!2635730 () Bool)

(declare-fun tp!1301257 () Bool)

(assert (=> b!4244111 (= e!2635730 (and tp_is_empty!22675 tp!1301257))))

(assert (=> b!4243839 (= tp!1301169 e!2635730)))

(assert (= (and b!4243839 (is-Cons!46936 (originalCharacters!8281 (h!52358 addTokens!17)))) b!4244111))

(declare-fun b!4244112 () Bool)

(declare-fun e!2635731 () Bool)

(declare-fun tp!1301258 () Bool)

(assert (=> b!4244112 (= e!2635731 (and tp_is_empty!22675 tp!1301258))))

(assert (=> b!4243829 (= tp!1301171 e!2635731)))

(assert (= (and b!4243829 (is-Cons!46936 (originalCharacters!8281 (h!52358 tokens!581)))) b!4244112))

(declare-fun b!4244123 () Bool)

(declare-fun e!2635734 () Bool)

(assert (=> b!4244123 (= e!2635734 tp_is_empty!22675)))

(declare-fun b!4244125 () Bool)

(declare-fun tp!1301271 () Bool)

(assert (=> b!4244125 (= e!2635734 tp!1301271)))

(declare-fun b!4244126 () Bool)

(declare-fun tp!1301273 () Bool)

(declare-fun tp!1301269 () Bool)

(assert (=> b!4244126 (= e!2635734 (and tp!1301273 tp!1301269))))

(assert (=> b!4243825 (= tp!1301182 e!2635734)))

(declare-fun b!4244124 () Bool)

(declare-fun tp!1301272 () Bool)

(declare-fun tp!1301270 () Bool)

(assert (=> b!4244124 (= e!2635734 (and tp!1301272 tp!1301270))))

(assert (= (and b!4243825 (is-ElementMatch!12842 (regex!7937 (rule!11067 (h!52358 addTokens!17))))) b!4244123))

(assert (= (and b!4243825 (is-Concat!21010 (regex!7937 (rule!11067 (h!52358 addTokens!17))))) b!4244124))

(assert (= (and b!4243825 (is-Star!12842 (regex!7937 (rule!11067 (h!52358 addTokens!17))))) b!4244125))

(assert (= (and b!4243825 (is-Union!12842 (regex!7937 (rule!11067 (h!52358 addTokens!17))))) b!4244126))

(declare-fun b!4244127 () Bool)

(declare-fun e!2635735 () Bool)

(declare-fun tp!1301274 () Bool)

(assert (=> b!4244127 (= e!2635735 (and tp_is_empty!22675 tp!1301274))))

(assert (=> b!4243836 (= tp!1301170 e!2635735)))

(assert (= (and b!4243836 (is-Cons!46936 (t!351485 suffix!1262))) b!4244127))

(declare-fun b!4244128 () Bool)

(declare-fun e!2635736 () Bool)

(declare-fun tp!1301275 () Bool)

(assert (=> b!4244128 (= e!2635736 (and tp_is_empty!22675 tp!1301275))))

(assert (=> b!4243837 (= tp!1301179 e!2635736)))

(assert (= (and b!4243837 (is-Cons!46936 (t!351485 longerInput!51))) b!4244128))

(declare-fun b!4244149 () Bool)

(declare-fun b_free!125831 () Bool)

(declare-fun b_next!126535 () Bool)

(assert (=> b!4244149 (= b_free!125831 (not b_next!126535))))

(declare-fun tp!1301284 () Bool)

(declare-fun b_and!336093 () Bool)

(assert (=> b!4244149 (= tp!1301284 b_and!336093)))

(declare-fun b_free!125833 () Bool)

(declare-fun b_next!126537 () Bool)

(assert (=> b!4244149 (= b_free!125833 (not b_next!126537))))

(declare-fun tb!255627 () Bool)

(declare-fun t!351509 () Bool)

(assert (=> (and b!4244149 (= (toChars!10556 (transformation!7937 (h!52357 (t!351486 rules!2932)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351509) tb!255627))

(declare-fun result!311698 () Bool)

(assert (= result!311698 result!311672))

(assert (=> b!4243963 t!351509))

(declare-fun t!351511 () Bool)

(declare-fun tb!255629 () Bool)

(assert (=> (and b!4244149 (= (toChars!10556 (transformation!7937 (h!52357 (t!351486 rules!2932)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351511) tb!255629))

(declare-fun result!311700 () Bool)

(assert (= result!311700 result!311680))

(assert (=> b!4244074 t!351511))

(declare-fun b_and!336095 () Bool)

(declare-fun tp!1301286 () Bool)

(assert (=> b!4244149 (= tp!1301286 (and (=> t!351509 result!311698) (=> t!351511 result!311700) b_and!336095))))

(declare-fun e!2635753 () Bool)

(assert (=> b!4244149 (= e!2635753 (and tp!1301284 tp!1301286))))

(declare-fun b!4244148 () Bool)

(declare-fun e!2635752 () Bool)

(declare-fun tp!1301285 () Bool)

(assert (=> b!4244148 (= e!2635752 (and tp!1301285 (inv!61693 (tag!8801 (h!52357 (t!351486 rules!2932)))) (inv!61696 (transformation!7937 (h!52357 (t!351486 rules!2932)))) e!2635753))))

(declare-fun b!4244147 () Bool)

(declare-fun e!2635754 () Bool)

(declare-fun tp!1301287 () Bool)

(assert (=> b!4244147 (= e!2635754 (and e!2635752 tp!1301287))))

(assert (=> b!4243822 (= tp!1301176 e!2635754)))

(assert (= b!4244148 b!4244149))

(assert (= b!4244147 b!4244148))

(assert (= (and b!4243822 (is-Cons!46937 (t!351486 rules!2932))) b!4244147))

(declare-fun m!4829653 () Bool)

(assert (=> b!4244148 m!4829653))

(declare-fun m!4829655 () Bool)

(assert (=> b!4244148 m!4829655))

(declare-fun b!4244150 () Bool)

(declare-fun e!2635755 () Bool)

(assert (=> b!4244150 (= e!2635755 tp_is_empty!22675)))

(declare-fun b!4244152 () Bool)

(declare-fun tp!1301290 () Bool)

(assert (=> b!4244152 (= e!2635755 tp!1301290)))

(declare-fun b!4244153 () Bool)

(declare-fun tp!1301292 () Bool)

(declare-fun tp!1301288 () Bool)

(assert (=> b!4244153 (= e!2635755 (and tp!1301292 tp!1301288))))

(assert (=> b!4243824 (= tp!1301183 e!2635755)))

(declare-fun b!4244151 () Bool)

(declare-fun tp!1301291 () Bool)

(declare-fun tp!1301289 () Bool)

(assert (=> b!4244151 (= e!2635755 (and tp!1301291 tp!1301289))))

(assert (= (and b!4243824 (is-ElementMatch!12842 (regex!7937 (h!52357 rules!2932)))) b!4244150))

(assert (= (and b!4243824 (is-Concat!21010 (regex!7937 (h!52357 rules!2932)))) b!4244151))

(assert (= (and b!4243824 (is-Star!12842 (regex!7937 (h!52357 rules!2932)))) b!4244152))

(assert (= (and b!4243824 (is-Union!12842 (regex!7937 (h!52357 rules!2932)))) b!4244153))

(declare-fun b!4244154 () Bool)

(declare-fun e!2635756 () Bool)

(assert (=> b!4244154 (= e!2635756 tp_is_empty!22675)))

(declare-fun b!4244156 () Bool)

(declare-fun tp!1301295 () Bool)

(assert (=> b!4244156 (= e!2635756 tp!1301295)))

(declare-fun b!4244157 () Bool)

(declare-fun tp!1301297 () Bool)

(declare-fun tp!1301293 () Bool)

(assert (=> b!4244157 (= e!2635756 (and tp!1301297 tp!1301293))))

(assert (=> b!4243820 (= tp!1301181 e!2635756)))

(declare-fun b!4244155 () Bool)

(declare-fun tp!1301296 () Bool)

(declare-fun tp!1301294 () Bool)

(assert (=> b!4244155 (= e!2635756 (and tp!1301296 tp!1301294))))

(assert (= (and b!4243820 (is-ElementMatch!12842 (regex!7937 (rule!11067 (h!52358 tokens!581))))) b!4244154))

(assert (= (and b!4243820 (is-Concat!21010 (regex!7937 (rule!11067 (h!52358 tokens!581))))) b!4244155))

(assert (= (and b!4243820 (is-Star!12842 (regex!7937 (rule!11067 (h!52358 tokens!581))))) b!4244156))

(assert (= (and b!4243820 (is-Union!12842 (regex!7937 (rule!11067 (h!52358 tokens!581))))) b!4244157))

(declare-fun b!4244161 () Bool)

(declare-fun b_free!125835 () Bool)

(declare-fun b_next!126539 () Bool)

(assert (=> b!4244161 (= b_free!125835 (not b_next!126539))))

(declare-fun tp!1301299 () Bool)

(declare-fun b_and!336097 () Bool)

(assert (=> b!4244161 (= tp!1301299 b_and!336097)))

(declare-fun b_free!125837 () Bool)

(declare-fun b_next!126541 () Bool)

(assert (=> b!4244161 (= b_free!125837 (not b_next!126541))))

(declare-fun tb!255631 () Bool)

(declare-fun t!351513 () Bool)

(assert (=> (and b!4244161 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 addTokens!17))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581))))) t!351513) tb!255631))

(declare-fun result!311702 () Bool)

(assert (= result!311702 result!311672))

(assert (=> b!4243963 t!351513))

(declare-fun t!351515 () Bool)

(declare-fun tb!255633 () Bool)

(assert (=> (and b!4244161 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 addTokens!17))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17))))) t!351515) tb!255633))

(declare-fun result!311704 () Bool)

(assert (= result!311704 result!311680))

(assert (=> b!4244074 t!351515))

(declare-fun b_and!336099 () Bool)

(declare-fun tp!1301302 () Bool)

(assert (=> b!4244161 (= tp!1301302 (and (=> t!351513 result!311702) (=> t!351515 result!311704) b_and!336099))))

(declare-fun e!2635757 () Bool)

(assert (=> b!4243821 (= tp!1301167 e!2635757)))

(declare-fun b!4244159 () Bool)

(declare-fun e!2635761 () Bool)

(declare-fun e!2635758 () Bool)

(declare-fun tp!1301298 () Bool)

(assert (=> b!4244159 (= e!2635758 (and (inv!21 (value!246742 (h!52358 (t!351487 addTokens!17)))) e!2635761 tp!1301298))))

(declare-fun b!4244158 () Bool)

(declare-fun tp!1301301 () Bool)

(assert (=> b!4244158 (= e!2635757 (and (inv!61697 (h!52358 (t!351487 addTokens!17))) e!2635758 tp!1301301))))

(declare-fun e!2635762 () Bool)

(assert (=> b!4244161 (= e!2635762 (and tp!1301299 tp!1301302))))

(declare-fun b!4244160 () Bool)

(declare-fun tp!1301300 () Bool)

(assert (=> b!4244160 (= e!2635761 (and tp!1301300 (inv!61693 (tag!8801 (rule!11067 (h!52358 (t!351487 addTokens!17))))) (inv!61696 (transformation!7937 (rule!11067 (h!52358 (t!351487 addTokens!17))))) e!2635762))))

(assert (= b!4244160 b!4244161))

(assert (= b!4244159 b!4244160))

(assert (= b!4244158 b!4244159))

(assert (= (and b!4243821 (is-Cons!46938 (t!351487 addTokens!17))) b!4244158))

(declare-fun m!4829657 () Bool)

(assert (=> b!4244159 m!4829657))

(declare-fun m!4829659 () Bool)

(assert (=> b!4244158 m!4829659))

(declare-fun m!4829661 () Bool)

(assert (=> b!4244160 m!4829661))

(declare-fun m!4829663 () Bool)

(assert (=> b!4244160 m!4829663))

(declare-fun b_lambda!125007 () Bool)

(assert (= b_lambda!125005 (or (and b!4244105 b_free!125829 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 tokens!581))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))))) (and b!4244149 b_free!125833 (= (toChars!10556 (transformation!7937 (h!52357 (t!351486 rules!2932)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))))) (and b!4243835 b_free!125809 (= (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))))) (and b!4243834 b_free!125813 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))))) (and b!4243841 b_free!125805) (and b!4244161 b_free!125837 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 addTokens!17))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))))) b_lambda!125007)))

(declare-fun b_lambda!125009 () Bool)

(assert (= b_lambda!125003 (or (and b!4243841 b_free!125805 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 addTokens!17)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))))) (and b!4244161 b_free!125837 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 addTokens!17))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))))) (and b!4244105 b_free!125829 (= (toChars!10556 (transformation!7937 (rule!11067 (h!52358 (t!351487 tokens!581))))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))))) (and b!4244149 b_free!125833 (= (toChars!10556 (transformation!7937 (h!52357 (t!351486 rules!2932)))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))))) (and b!4243834 b_free!125813) (and b!4243835 b_free!125809 (= (toChars!10556 (transformation!7937 (h!52357 rules!2932))) (toChars!10556 (transformation!7937 (rule!11067 (h!52358 tokens!581)))))) b_lambda!125009)))

(push 1)

(assert (not b!4244066))

(assert (not bm!293876))

(assert (not b!4244110))

(assert b_and!336095)

(assert b_and!336091)

(assert (not b_next!126535))

(assert (not b!4244009))

(assert (not d!1248552))

(assert (not b!4244156))

(assert (not b!4243985))

(assert (not b!4243963))

(assert (not b!4244091))

(assert (not b!4243980))

(assert (not b!4244158))

(assert (not b!4244124))

(assert (not b!4244005))

(assert (not b!4244051))

(assert b_and!336083)

(assert b_and!336093)

(assert (not b!4244102))

(assert b_and!336061)

(assert (not b!4244067))

(assert (not b_lambda!125009))

(assert (not b!4243942))

(assert (not b!4244125))

(assert (not b!4243957))

(assert (not b!4244127))

(assert (not b!4244111))

(assert (not b!4244075))

(assert (not b!4244103))

(assert (not b!4244076))

(assert b_and!336089)

(assert (not b!4244053))

(assert (not b!4244126))

(assert (not b!4243941))

(assert (not d!1248564))

(assert (not b!4244152))

(assert b_and!336085)

(assert (not b!4244157))

(assert (not b!4244050))

(assert (not b!4244155))

(assert (not b_next!126507))

(assert (not b!4243992))

(assert (not b_next!126537))

(assert (not b_next!126515))

(assert (not b_next!126517))

(assert tp_is_empty!22675)

(assert (not d!1248560))

(assert (not b_next!126513))

(assert (not b!4243969))

(assert (not b!4244147))

(assert b_and!336057)

(assert (not b!4243984))

(assert (not b!4244048))

(assert b_and!336099)

(assert (not b_next!126531))

(assert (not b!4244074))

(assert (not b!4244052))

(assert (not d!1248538))

(assert (not b!4244070))

(assert (not b!4244001))

(assert (not b!4243940))

(assert (not d!1248554))

(assert (not b!4244128))

(assert (not b!4243989))

(assert (not b!4244159))

(assert (not b_next!126533))

(assert (not d!1248528))

(assert (not b!4244112))

(assert (not b!4244072))

(assert (not bm!293874))

(assert (not d!1248562))

(assert (not b_lambda!125007))

(assert (not b!4244148))

(assert (not b!4244003))

(assert (not b!4244151))

(assert (not b!4244153))

(assert (not b!4243964))

(assert (not d!1248514))

(assert b_and!336053)

(assert (not b!4243986))

(assert (not b_next!126511))

(assert (not b!4244069))

(assert b_and!336097)

(assert (not b!4244004))

(assert (not b!4243998))

(assert (not b!4244054))

(assert (not b!4244047))

(assert (not d!1248550))

(assert (not b!4244010))

(assert (not b_next!126509))

(assert (not b!4244068))

(assert (not b!4244065))

(assert (not b_next!126539))

(assert (not d!1248522))

(assert (not b!4243956))

(assert (not b!4244104))

(assert (not tb!255611))

(assert (not b_next!126541))

(assert (not b!4244000))

(assert (not b!4244049))

(assert b_and!336087)

(assert (not b!4244160))

(assert (not b!4244071))

(assert (not d!1248558))

(assert (not b!4243981))

(assert (not tb!255617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336089)

(assert b_and!336085)

(assert (not b_next!126513))

(assert b_and!336057)

(assert (not b_next!126533))

(assert b_and!336053)

(assert b_and!336095)

(assert (not b_next!126541))

(assert b_and!336091)

(assert b_and!336087)

(assert (not b_next!126535))

(assert b_and!336083)

(assert b_and!336093)

(assert b_and!336061)

(assert (not b_next!126507))

(assert (not b_next!126537))

(assert (not b_next!126515))

(assert (not b_next!126517))

(assert b_and!336099)

(assert (not b_next!126531))

(assert (not b_next!126511))

(assert b_and!336097)

(assert (not b_next!126539))

(assert (not b_next!126509))

(check-sat)

(pop 1)


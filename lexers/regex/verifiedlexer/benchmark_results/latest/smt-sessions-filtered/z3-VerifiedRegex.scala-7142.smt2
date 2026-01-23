; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378904 () Bool)

(assert start!378904)

(declare-fun b!4023820 () Bool)

(declare-fun b_free!111985 () Bool)

(declare-fun b_next!112689 () Bool)

(assert (=> b!4023820 (= b_free!111985 (not b_next!112689))))

(declare-fun tp!1222928 () Bool)

(declare-fun b_and!309135 () Bool)

(assert (=> b!4023820 (= tp!1222928 b_and!309135)))

(declare-fun b_free!111987 () Bool)

(declare-fun b_next!112691 () Bool)

(assert (=> b!4023820 (= b_free!111987 (not b_next!112691))))

(declare-fun tp!1222918 () Bool)

(declare-fun b_and!309137 () Bool)

(assert (=> b!4023820 (= tp!1222918 b_and!309137)))

(declare-fun b!4023819 () Bool)

(declare-fun b_free!111989 () Bool)

(declare-fun b_next!112693 () Bool)

(assert (=> b!4023819 (= b_free!111989 (not b_next!112693))))

(declare-fun tp!1222926 () Bool)

(declare-fun b_and!309139 () Bool)

(assert (=> b!4023819 (= tp!1222926 b_and!309139)))

(declare-fun b_free!111991 () Bool)

(declare-fun b_next!112695 () Bool)

(assert (=> b!4023819 (= b_free!111991 (not b_next!112695))))

(declare-fun tp!1222923 () Bool)

(declare-fun b_and!309141 () Bool)

(assert (=> b!4023819 (= tp!1222923 b_and!309141)))

(declare-fun b!4023809 () Bool)

(declare-fun res!1637360 () Bool)

(declare-fun e!2496142 () Bool)

(assert (=> b!4023809 (=> (not res!1637360) (not e!2496142))))

(declare-datatypes ((C!23740 0))(
  ( (C!23741 (val!13964 Int)) )
))
(declare-datatypes ((List!43194 0))(
  ( (Nil!43070) (Cons!43070 (h!48490 C!23740) (t!333835 List!43194)) )
))
(declare-fun suffix!1299 () List!43194)

(declare-fun newSuffix!27 () List!43194)

(declare-fun size!32201 (List!43194) Int)

(assert (=> b!4023809 (= res!1637360 (>= (size!32201 suffix!1299) (size!32201 newSuffix!27)))))

(declare-fun b!4023810 () Bool)

(declare-fun e!2496154 () Bool)

(declare-fun tp_is_empty!20525 () Bool)

(declare-fun tp!1222927 () Bool)

(assert (=> b!4023810 (= e!2496154 (and tp_is_empty!20525 tp!1222927))))

(declare-fun b!4023811 () Bool)

(declare-fun res!1637363 () Bool)

(declare-fun e!2496150 () Bool)

(assert (=> b!4023811 (=> (not res!1637363) (not e!2496150))))

(declare-fun prefix!494 () List!43194)

(declare-datatypes ((List!43195 0))(
  ( (Nil!43071) (Cons!43071 (h!48491 (_ BitVec 16)) (t!333836 List!43195)) )
))
(declare-datatypes ((TokenValue!7102 0))(
  ( (FloatLiteralValue!14204 (text!50159 List!43195)) (TokenValueExt!7101 (__x!26421 Int)) (Broken!35510 (value!216460 List!43195)) (Object!7225) (End!7102) (Def!7102) (Underscore!7102) (Match!7102) (Else!7102) (Error!7102) (Case!7102) (If!7102) (Extends!7102) (Abstract!7102) (Class!7102) (Val!7102) (DelimiterValue!14204 (del!7162 List!43195)) (KeywordValue!7108 (value!216461 List!43195)) (CommentValue!14204 (value!216462 List!43195)) (WhitespaceValue!14204 (value!216463 List!43195)) (IndentationValue!7102 (value!216464 List!43195)) (String!49227) (Int32!7102) (Broken!35511 (value!216465 List!43195)) (Boolean!7103) (Unit!62233) (OperatorValue!7105 (op!7162 List!43195)) (IdentifierValue!14204 (value!216466 List!43195)) (IdentifierValue!14205 (value!216467 List!43195)) (WhitespaceValue!14205 (value!216468 List!43195)) (True!14204) (False!14204) (Broken!35512 (value!216469 List!43195)) (Broken!35513 (value!216470 List!43195)) (True!14205) (RightBrace!7102) (RightBracket!7102) (Colon!7102) (Null!7102) (Comma!7102) (LeftBracket!7102) (False!14205) (LeftBrace!7102) (ImaginaryLiteralValue!7102 (text!50160 List!43195)) (StringLiteralValue!21306 (value!216471 List!43195)) (EOFValue!7102 (value!216472 List!43195)) (IdentValue!7102 (value!216473 List!43195)) (DelimiterValue!14205 (value!216474 List!43195)) (DedentValue!7102 (value!216475 List!43195)) (NewLineValue!7102 (value!216476 List!43195)) (IntegerValue!21306 (value!216477 (_ BitVec 32)) (text!50161 List!43195)) (IntegerValue!21307 (value!216478 Int) (text!50162 List!43195)) (Times!7102) (Or!7102) (Equal!7102) (Minus!7102) (Broken!35514 (value!216479 List!43195)) (And!7102) (Div!7102) (LessEqual!7102) (Mod!7102) (Concat!18879) (Not!7102) (Plus!7102) (SpaceValue!7102 (value!216480 List!43195)) (IntegerValue!21308 (value!216481 Int) (text!50163 List!43195)) (StringLiteralValue!21307 (text!50164 List!43195)) (FloatLiteralValue!14205 (text!50165 List!43195)) (BytesLiteralValue!7102 (value!216482 List!43195)) (CommentValue!14205 (value!216483 List!43195)) (StringLiteralValue!21308 (value!216484 List!43195)) (ErrorTokenValue!7102 (msg!7163 List!43195)) )
))
(declare-datatypes ((Regex!11777 0))(
  ( (ElementMatch!11777 (c!695350 C!23740)) (Concat!18880 (regOne!24066 Regex!11777) (regTwo!24066 Regex!11777)) (EmptyExpr!11777) (Star!11777 (reg!12106 Regex!11777)) (EmptyLang!11777) (Union!11777 (regOne!24067 Regex!11777) (regTwo!24067 Regex!11777)) )
))
(declare-datatypes ((String!49228 0))(
  ( (String!49229 (value!216485 String)) )
))
(declare-datatypes ((IArray!26171 0))(
  ( (IArray!26172 (innerList!13143 List!43194)) )
))
(declare-datatypes ((Conc!13083 0))(
  ( (Node!13083 (left!32461 Conc!13083) (right!32791 Conc!13083) (csize!26396 Int) (cheight!13294 Int)) (Leaf!20226 (xs!16389 IArray!26171) (csize!26397 Int)) (Empty!13083) )
))
(declare-datatypes ((BalanceConc!25760 0))(
  ( (BalanceConc!25761 (c!695351 Conc!13083)) )
))
(declare-datatypes ((TokenValueInjection!13632 0))(
  ( (TokenValueInjection!13633 (toValue!9388 Int) (toChars!9247 Int)) )
))
(declare-datatypes ((Rule!13544 0))(
  ( (Rule!13545 (regex!6872 Regex!11777) (tag!7732 String!49228) (isSeparator!6872 Bool) (transformation!6872 TokenValueInjection!13632)) )
))
(declare-datatypes ((Token!12882 0))(
  ( (Token!12883 (value!216486 TokenValue!7102) (rule!9928 Rule!13544) (size!32202 Int) (originalCharacters!7472 List!43194)) )
))
(declare-fun token!484 () Token!12882)

(declare-fun suffixResult!105 () List!43194)

(declare-datatypes ((LexerInterface!6461 0))(
  ( (LexerInterfaceExt!6458 (__x!26422 Int)) (Lexer!6459) )
))
(declare-fun thiss!21717 () LexerInterface!6461)

(declare-datatypes ((List!43196 0))(
  ( (Nil!43072) (Cons!43072 (h!48492 Rule!13544) (t!333837 List!43196)) )
))
(declare-fun rules!2999 () List!43196)

(declare-datatypes ((tuple2!42190 0))(
  ( (tuple2!42191 (_1!24229 Token!12882) (_2!24229 List!43194)) )
))
(declare-datatypes ((Option!9286 0))(
  ( (None!9285) (Some!9285 (v!39663 tuple2!42190)) )
))
(declare-fun maxPrefix!3759 (LexerInterface!6461 List!43196 List!43194) Option!9286)

(declare-fun ++!11274 (List!43194 List!43194) List!43194)

(assert (=> b!4023811 (= res!1637363 (= (maxPrefix!3759 thiss!21717 rules!2999 (++!11274 prefix!494 suffix!1299)) (Some!9285 (tuple2!42191 token!484 suffixResult!105))))))

(declare-fun b!4023812 () Bool)

(declare-fun res!1637364 () Bool)

(assert (=> b!4023812 (=> (not res!1637364) (not e!2496142))))

(declare-fun isEmpty!25714 (List!43196) Bool)

(assert (=> b!4023812 (= res!1637364 (not (isEmpty!25714 rules!2999)))))

(declare-fun e!2496147 () Bool)

(declare-fun b!4023813 () Bool)

(declare-fun e!2496144 () Bool)

(declare-fun tp!1222924 () Bool)

(declare-fun inv!21 (TokenValue!7102) Bool)

(assert (=> b!4023813 (= e!2496147 (and (inv!21 (value!216486 token!484)) e!2496144 tp!1222924))))

(declare-fun b!4023814 () Bool)

(declare-fun e!2496145 () Bool)

(declare-fun tp!1222917 () Bool)

(assert (=> b!4023814 (= e!2496145 (and tp_is_empty!20525 tp!1222917))))

(declare-fun b!4023815 () Bool)

(declare-fun e!2496143 () Bool)

(declare-fun tp!1222916 () Bool)

(declare-fun inv!57531 (String!49228) Bool)

(declare-fun inv!57534 (TokenValueInjection!13632) Bool)

(assert (=> b!4023815 (= e!2496144 (and tp!1222916 (inv!57531 (tag!7732 (rule!9928 token!484))) (inv!57534 (transformation!6872 (rule!9928 token!484))) e!2496143))))

(declare-fun b!4023816 () Bool)

(declare-fun res!1637361 () Bool)

(assert (=> b!4023816 (=> (not res!1637361) (not e!2496150))))

(declare-fun contains!8556 (List!43196 Rule!13544) Bool)

(assert (=> b!4023816 (= res!1637361 (contains!8556 rules!2999 (rule!9928 token!484)))))

(declare-fun res!1637357 () Bool)

(assert (=> start!378904 (=> (not res!1637357) (not e!2496142))))

(get-info :version)

(assert (=> start!378904 (= res!1637357 ((_ is Lexer!6459) thiss!21717))))

(assert (=> start!378904 e!2496142))

(declare-fun e!2496152 () Bool)

(assert (=> start!378904 e!2496152))

(declare-fun inv!57535 (Token!12882) Bool)

(assert (=> start!378904 (and (inv!57535 token!484) e!2496147)))

(declare-fun e!2496151 () Bool)

(assert (=> start!378904 e!2496151))

(assert (=> start!378904 e!2496145))

(assert (=> start!378904 e!2496154))

(assert (=> start!378904 true))

(declare-fun e!2496153 () Bool)

(assert (=> start!378904 e!2496153))

(declare-fun e!2496149 () Bool)

(assert (=> start!378904 e!2496149))

(declare-fun b!4023817 () Bool)

(declare-fun e!2496156 () Bool)

(declare-fun e!2496155 () Bool)

(declare-fun tp!1222919 () Bool)

(assert (=> b!4023817 (= e!2496155 (and tp!1222919 (inv!57531 (tag!7732 (h!48492 rules!2999))) (inv!57534 (transformation!6872 (h!48492 rules!2999))) e!2496156))))

(declare-fun b!4023818 () Bool)

(declare-fun tp!1222922 () Bool)

(assert (=> b!4023818 (= e!2496151 (and tp_is_empty!20525 tp!1222922))))

(assert (=> b!4023819 (= e!2496156 (and tp!1222926 tp!1222923))))

(assert (=> b!4023820 (= e!2496143 (and tp!1222928 tp!1222918))))

(declare-fun b!4023821 () Bool)

(declare-fun res!1637362 () Bool)

(assert (=> b!4023821 (=> (not res!1637362) (not e!2496150))))

(declare-fun lt!1429395 () List!43194)

(declare-fun newSuffixResult!27 () List!43194)

(assert (=> b!4023821 (= res!1637362 (= (++!11274 lt!1429395 newSuffixResult!27) (++!11274 prefix!494 newSuffix!27)))))

(declare-fun b!4023822 () Bool)

(declare-fun rulesValidInductive!2503 (LexerInterface!6461 List!43196) Bool)

(assert (=> b!4023822 (= e!2496150 (not (rulesValidInductive!2503 thiss!21717 rules!2999)))))

(declare-fun b!4023823 () Bool)

(assert (=> b!4023823 (= e!2496142 e!2496150)))

(declare-fun res!1637359 () Bool)

(assert (=> b!4023823 (=> (not res!1637359) (not e!2496150))))

(assert (=> b!4023823 (= res!1637359 (>= (size!32201 prefix!494) (size!32201 lt!1429395)))))

(declare-fun list!16016 (BalanceConc!25760) List!43194)

(declare-fun charsOf!4688 (Token!12882) BalanceConc!25760)

(assert (=> b!4023823 (= lt!1429395 (list!16016 (charsOf!4688 token!484)))))

(declare-fun b!4023824 () Bool)

(declare-fun tp!1222925 () Bool)

(assert (=> b!4023824 (= e!2496153 (and e!2496155 tp!1222925))))

(declare-fun b!4023825 () Bool)

(declare-fun res!1637365 () Bool)

(assert (=> b!4023825 (=> (not res!1637365) (not e!2496142))))

(declare-fun isPrefix!3959 (List!43194 List!43194) Bool)

(assert (=> b!4023825 (= res!1637365 (isPrefix!3959 newSuffix!27 suffix!1299))))

(declare-fun b!4023826 () Bool)

(declare-fun tp!1222921 () Bool)

(assert (=> b!4023826 (= e!2496149 (and tp_is_empty!20525 tp!1222921))))

(declare-fun b!4023827 () Bool)

(declare-fun tp!1222920 () Bool)

(assert (=> b!4023827 (= e!2496152 (and tp_is_empty!20525 tp!1222920))))

(declare-fun b!4023828 () Bool)

(declare-fun res!1637358 () Bool)

(assert (=> b!4023828 (=> (not res!1637358) (not e!2496142))))

(declare-fun rulesInvariant!5804 (LexerInterface!6461 List!43196) Bool)

(assert (=> b!4023828 (= res!1637358 (rulesInvariant!5804 thiss!21717 rules!2999))))

(assert (= (and start!378904 res!1637357) b!4023812))

(assert (= (and b!4023812 res!1637364) b!4023828))

(assert (= (and b!4023828 res!1637358) b!4023809))

(assert (= (and b!4023809 res!1637360) b!4023825))

(assert (= (and b!4023825 res!1637365) b!4023823))

(assert (= (and b!4023823 res!1637359) b!4023821))

(assert (= (and b!4023821 res!1637362) b!4023811))

(assert (= (and b!4023811 res!1637363) b!4023816))

(assert (= (and b!4023816 res!1637361) b!4023822))

(assert (= (and start!378904 ((_ is Cons!43070) prefix!494)) b!4023827))

(assert (= b!4023815 b!4023820))

(assert (= b!4023813 b!4023815))

(assert (= start!378904 b!4023813))

(assert (= (and start!378904 ((_ is Cons!43070) suffixResult!105)) b!4023818))

(assert (= (and start!378904 ((_ is Cons!43070) suffix!1299)) b!4023814))

(assert (= (and start!378904 ((_ is Cons!43070) newSuffix!27)) b!4023810))

(assert (= b!4023817 b!4023819))

(assert (= b!4023824 b!4023817))

(assert (= (and start!378904 ((_ is Cons!43072) rules!2999)) b!4023824))

(assert (= (and start!378904 ((_ is Cons!43070) newSuffixResult!27)) b!4023826))

(declare-fun m!4614863 () Bool)

(assert (=> b!4023815 m!4614863))

(declare-fun m!4614865 () Bool)

(assert (=> b!4023815 m!4614865))

(declare-fun m!4614867 () Bool)

(assert (=> start!378904 m!4614867))

(declare-fun m!4614869 () Bool)

(assert (=> b!4023811 m!4614869))

(assert (=> b!4023811 m!4614869))

(declare-fun m!4614871 () Bool)

(assert (=> b!4023811 m!4614871))

(declare-fun m!4614873 () Bool)

(assert (=> b!4023816 m!4614873))

(declare-fun m!4614875 () Bool)

(assert (=> b!4023825 m!4614875))

(declare-fun m!4614877 () Bool)

(assert (=> b!4023828 m!4614877))

(declare-fun m!4614879 () Bool)

(assert (=> b!4023823 m!4614879))

(declare-fun m!4614881 () Bool)

(assert (=> b!4023823 m!4614881))

(declare-fun m!4614883 () Bool)

(assert (=> b!4023823 m!4614883))

(assert (=> b!4023823 m!4614883))

(declare-fun m!4614885 () Bool)

(assert (=> b!4023823 m!4614885))

(declare-fun m!4614887 () Bool)

(assert (=> b!4023821 m!4614887))

(declare-fun m!4614889 () Bool)

(assert (=> b!4023821 m!4614889))

(declare-fun m!4614891 () Bool)

(assert (=> b!4023809 m!4614891))

(declare-fun m!4614893 () Bool)

(assert (=> b!4023809 m!4614893))

(declare-fun m!4614895 () Bool)

(assert (=> b!4023813 m!4614895))

(declare-fun m!4614897 () Bool)

(assert (=> b!4023822 m!4614897))

(declare-fun m!4614899 () Bool)

(assert (=> b!4023817 m!4614899))

(declare-fun m!4614901 () Bool)

(assert (=> b!4023817 m!4614901))

(declare-fun m!4614903 () Bool)

(assert (=> b!4023812 m!4614903))

(check-sat (not b_next!112695) (not b!4023809) (not b!4023823) (not b!4023815) (not b!4023811) (not b!4023824) b_and!309137 (not b!4023821) (not b!4023825) b_and!309139 (not b!4023827) b_and!309135 (not b_next!112689) (not b!4023822) (not b!4023813) (not b!4023812) (not b_next!112693) tp_is_empty!20525 (not b!4023828) (not start!378904) (not b!4023818) (not b!4023817) (not b_next!112691) (not b!4023814) b_and!309141 (not b!4023816) (not b!4023826) (not b!4023810))
(check-sat b_and!309139 (not b_next!112695) b_and!309135 (not b_next!112689) (not b_next!112693) (not b_next!112691) b_and!309141 b_and!309137)
(get-model)

(declare-fun d!1191679 () Bool)

(assert (=> d!1191679 true))

(declare-fun lt!1429407 () Bool)

(declare-fun lambda!127152 () Int)

(declare-fun forall!8357 (List!43196 Int) Bool)

(assert (=> d!1191679 (= lt!1429407 (forall!8357 rules!2999 lambda!127152))))

(declare-fun e!2496185 () Bool)

(assert (=> d!1191679 (= lt!1429407 e!2496185)))

(declare-fun res!1637398 () Bool)

(assert (=> d!1191679 (=> res!1637398 e!2496185)))

(assert (=> d!1191679 (= res!1637398 (not ((_ is Cons!43072) rules!2999)))))

(assert (=> d!1191679 (= (rulesValidInductive!2503 thiss!21717 rules!2999) lt!1429407)))

(declare-fun b!4023870 () Bool)

(declare-fun e!2496186 () Bool)

(assert (=> b!4023870 (= e!2496185 e!2496186)))

(declare-fun res!1637399 () Bool)

(assert (=> b!4023870 (=> (not res!1637399) (not e!2496186))))

(declare-fun ruleValid!2801 (LexerInterface!6461 Rule!13544) Bool)

(assert (=> b!4023870 (= res!1637399 (ruleValid!2801 thiss!21717 (h!48492 rules!2999)))))

(declare-fun b!4023871 () Bool)

(assert (=> b!4023871 (= e!2496186 (rulesValidInductive!2503 thiss!21717 (t!333837 rules!2999)))))

(assert (= (and d!1191679 (not res!1637398)) b!4023870))

(assert (= (and b!4023870 res!1637399) b!4023871))

(declare-fun m!4614945 () Bool)

(assert (=> d!1191679 m!4614945))

(declare-fun m!4614947 () Bool)

(assert (=> b!4023870 m!4614947))

(declare-fun m!4614949 () Bool)

(assert (=> b!4023871 m!4614949))

(assert (=> b!4023822 d!1191679))

(declare-fun d!1191693 () Bool)

(assert (=> d!1191693 (= (isEmpty!25714 rules!2999) ((_ is Nil!43072) rules!2999))))

(assert (=> b!4023812 d!1191693))

(declare-fun d!1191695 () Bool)

(declare-fun lt!1429410 () Int)

(assert (=> d!1191695 (>= lt!1429410 0)))

(declare-fun e!2496189 () Int)

(assert (=> d!1191695 (= lt!1429410 e!2496189)))

(declare-fun c!695358 () Bool)

(assert (=> d!1191695 (= c!695358 ((_ is Nil!43070) prefix!494))))

(assert (=> d!1191695 (= (size!32201 prefix!494) lt!1429410)))

(declare-fun b!4023878 () Bool)

(assert (=> b!4023878 (= e!2496189 0)))

(declare-fun b!4023879 () Bool)

(assert (=> b!4023879 (= e!2496189 (+ 1 (size!32201 (t!333835 prefix!494))))))

(assert (= (and d!1191695 c!695358) b!4023878))

(assert (= (and d!1191695 (not c!695358)) b!4023879))

(declare-fun m!4614951 () Bool)

(assert (=> b!4023879 m!4614951))

(assert (=> b!4023823 d!1191695))

(declare-fun d!1191697 () Bool)

(declare-fun lt!1429411 () Int)

(assert (=> d!1191697 (>= lt!1429411 0)))

(declare-fun e!2496190 () Int)

(assert (=> d!1191697 (= lt!1429411 e!2496190)))

(declare-fun c!695359 () Bool)

(assert (=> d!1191697 (= c!695359 ((_ is Nil!43070) lt!1429395))))

(assert (=> d!1191697 (= (size!32201 lt!1429395) lt!1429411)))

(declare-fun b!4023880 () Bool)

(assert (=> b!4023880 (= e!2496190 0)))

(declare-fun b!4023881 () Bool)

(assert (=> b!4023881 (= e!2496190 (+ 1 (size!32201 (t!333835 lt!1429395))))))

(assert (= (and d!1191697 c!695359) b!4023880))

(assert (= (and d!1191697 (not c!695359)) b!4023881))

(declare-fun m!4614953 () Bool)

(assert (=> b!4023881 m!4614953))

(assert (=> b!4023823 d!1191697))

(declare-fun d!1191699 () Bool)

(declare-fun list!16017 (Conc!13083) List!43194)

(assert (=> d!1191699 (= (list!16016 (charsOf!4688 token!484)) (list!16017 (c!695351 (charsOf!4688 token!484))))))

(declare-fun bs!589979 () Bool)

(assert (= bs!589979 d!1191699))

(declare-fun m!4614955 () Bool)

(assert (=> bs!589979 m!4614955))

(assert (=> b!4023823 d!1191699))

(declare-fun d!1191701 () Bool)

(declare-fun lt!1429414 () BalanceConc!25760)

(assert (=> d!1191701 (= (list!16016 lt!1429414) (originalCharacters!7472 token!484))))

(declare-fun dynLambda!18261 (Int TokenValue!7102) BalanceConc!25760)

(assert (=> d!1191701 (= lt!1429414 (dynLambda!18261 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (value!216486 token!484)))))

(assert (=> d!1191701 (= (charsOf!4688 token!484) lt!1429414)))

(declare-fun b_lambda!117389 () Bool)

(assert (=> (not b_lambda!117389) (not d!1191701)))

(declare-fun t!333843 () Bool)

(declare-fun tb!241893 () Bool)

(assert (=> (and b!4023820 (= (toChars!9247 (transformation!6872 (rule!9928 token!484))) (toChars!9247 (transformation!6872 (rule!9928 token!484)))) t!333843) tb!241893))

(declare-fun b!4023886 () Bool)

(declare-fun e!2496193 () Bool)

(declare-fun tp!1222934 () Bool)

(declare-fun inv!57536 (Conc!13083) Bool)

(assert (=> b!4023886 (= e!2496193 (and (inv!57536 (c!695351 (dynLambda!18261 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (value!216486 token!484)))) tp!1222934))))

(declare-fun result!293160 () Bool)

(declare-fun inv!57537 (BalanceConc!25760) Bool)

(assert (=> tb!241893 (= result!293160 (and (inv!57537 (dynLambda!18261 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (value!216486 token!484))) e!2496193))))

(assert (= tb!241893 b!4023886))

(declare-fun m!4614957 () Bool)

(assert (=> b!4023886 m!4614957))

(declare-fun m!4614959 () Bool)

(assert (=> tb!241893 m!4614959))

(assert (=> d!1191701 t!333843))

(declare-fun b_and!309147 () Bool)

(assert (= b_and!309137 (and (=> t!333843 result!293160) b_and!309147)))

(declare-fun t!333845 () Bool)

(declare-fun tb!241895 () Bool)

(assert (=> (and b!4023819 (= (toChars!9247 (transformation!6872 (h!48492 rules!2999))) (toChars!9247 (transformation!6872 (rule!9928 token!484)))) t!333845) tb!241895))

(declare-fun result!293164 () Bool)

(assert (= result!293164 result!293160))

(assert (=> d!1191701 t!333845))

(declare-fun b_and!309149 () Bool)

(assert (= b_and!309141 (and (=> t!333845 result!293164) b_and!309149)))

(declare-fun m!4614961 () Bool)

(assert (=> d!1191701 m!4614961))

(declare-fun m!4614963 () Bool)

(assert (=> d!1191701 m!4614963))

(assert (=> b!4023823 d!1191701))

(declare-fun b!4023897 () Bool)

(declare-fun e!2496201 () Bool)

(declare-fun inv!17 (TokenValue!7102) Bool)

(assert (=> b!4023897 (= e!2496201 (inv!17 (value!216486 token!484)))))

(declare-fun b!4023898 () Bool)

(declare-fun res!1637402 () Bool)

(declare-fun e!2496200 () Bool)

(assert (=> b!4023898 (=> res!1637402 e!2496200)))

(assert (=> b!4023898 (= res!1637402 (not ((_ is IntegerValue!21308) (value!216486 token!484))))))

(assert (=> b!4023898 (= e!2496201 e!2496200)))

(declare-fun b!4023899 () Bool)

(declare-fun e!2496202 () Bool)

(assert (=> b!4023899 (= e!2496202 e!2496201)))

(declare-fun c!695365 () Bool)

(assert (=> b!4023899 (= c!695365 ((_ is IntegerValue!21307) (value!216486 token!484)))))

(declare-fun d!1191703 () Bool)

(declare-fun c!695364 () Bool)

(assert (=> d!1191703 (= c!695364 ((_ is IntegerValue!21306) (value!216486 token!484)))))

(assert (=> d!1191703 (= (inv!21 (value!216486 token!484)) e!2496202)))

(declare-fun b!4023900 () Bool)

(declare-fun inv!15 (TokenValue!7102) Bool)

(assert (=> b!4023900 (= e!2496200 (inv!15 (value!216486 token!484)))))

(declare-fun b!4023901 () Bool)

(declare-fun inv!16 (TokenValue!7102) Bool)

(assert (=> b!4023901 (= e!2496202 (inv!16 (value!216486 token!484)))))

(assert (= (and d!1191703 c!695364) b!4023901))

(assert (= (and d!1191703 (not c!695364)) b!4023899))

(assert (= (and b!4023899 c!695365) b!4023897))

(assert (= (and b!4023899 (not c!695365)) b!4023898))

(assert (= (and b!4023898 (not res!1637402)) b!4023900))

(declare-fun m!4614965 () Bool)

(assert (=> b!4023897 m!4614965))

(declare-fun m!4614967 () Bool)

(assert (=> b!4023900 m!4614967))

(declare-fun m!4614969 () Bool)

(assert (=> b!4023901 m!4614969))

(assert (=> b!4023813 d!1191703))

(declare-fun d!1191705 () Bool)

(declare-fun lt!1429415 () Int)

(assert (=> d!1191705 (>= lt!1429415 0)))

(declare-fun e!2496203 () Int)

(assert (=> d!1191705 (= lt!1429415 e!2496203)))

(declare-fun c!695366 () Bool)

(assert (=> d!1191705 (= c!695366 ((_ is Nil!43070) suffix!1299))))

(assert (=> d!1191705 (= (size!32201 suffix!1299) lt!1429415)))

(declare-fun b!4023902 () Bool)

(assert (=> b!4023902 (= e!2496203 0)))

(declare-fun b!4023903 () Bool)

(assert (=> b!4023903 (= e!2496203 (+ 1 (size!32201 (t!333835 suffix!1299))))))

(assert (= (and d!1191705 c!695366) b!4023902))

(assert (= (and d!1191705 (not c!695366)) b!4023903))

(declare-fun m!4614971 () Bool)

(assert (=> b!4023903 m!4614971))

(assert (=> b!4023809 d!1191705))

(declare-fun d!1191707 () Bool)

(declare-fun lt!1429416 () Int)

(assert (=> d!1191707 (>= lt!1429416 0)))

(declare-fun e!2496204 () Int)

(assert (=> d!1191707 (= lt!1429416 e!2496204)))

(declare-fun c!695367 () Bool)

(assert (=> d!1191707 (= c!695367 ((_ is Nil!43070) newSuffix!27))))

(assert (=> d!1191707 (= (size!32201 newSuffix!27) lt!1429416)))

(declare-fun b!4023904 () Bool)

(assert (=> b!4023904 (= e!2496204 0)))

(declare-fun b!4023905 () Bool)

(assert (=> b!4023905 (= e!2496204 (+ 1 (size!32201 (t!333835 newSuffix!27))))))

(assert (= (and d!1191707 c!695367) b!4023904))

(assert (= (and d!1191707 (not c!695367)) b!4023905))

(declare-fun m!4614973 () Bool)

(assert (=> b!4023905 m!4614973))

(assert (=> b!4023809 d!1191707))

(declare-fun lt!1429419 () List!43194)

(declare-fun b!4023917 () Bool)

(declare-fun e!2496210 () Bool)

(assert (=> b!4023917 (= e!2496210 (or (not (= newSuffixResult!27 Nil!43070)) (= lt!1429419 lt!1429395)))))

(declare-fun b!4023916 () Bool)

(declare-fun res!1637407 () Bool)

(assert (=> b!4023916 (=> (not res!1637407) (not e!2496210))))

(assert (=> b!4023916 (= res!1637407 (= (size!32201 lt!1429419) (+ (size!32201 lt!1429395) (size!32201 newSuffixResult!27))))))

(declare-fun b!4023915 () Bool)

(declare-fun e!2496209 () List!43194)

(assert (=> b!4023915 (= e!2496209 (Cons!43070 (h!48490 lt!1429395) (++!11274 (t!333835 lt!1429395) newSuffixResult!27)))))

(declare-fun b!4023914 () Bool)

(assert (=> b!4023914 (= e!2496209 newSuffixResult!27)))

(declare-fun d!1191709 () Bool)

(assert (=> d!1191709 e!2496210))

(declare-fun res!1637408 () Bool)

(assert (=> d!1191709 (=> (not res!1637408) (not e!2496210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6533 (List!43194) (InoxSet C!23740))

(assert (=> d!1191709 (= res!1637408 (= (content!6533 lt!1429419) ((_ map or) (content!6533 lt!1429395) (content!6533 newSuffixResult!27))))))

(assert (=> d!1191709 (= lt!1429419 e!2496209)))

(declare-fun c!695370 () Bool)

(assert (=> d!1191709 (= c!695370 ((_ is Nil!43070) lt!1429395))))

(assert (=> d!1191709 (= (++!11274 lt!1429395 newSuffixResult!27) lt!1429419)))

(assert (= (and d!1191709 c!695370) b!4023914))

(assert (= (and d!1191709 (not c!695370)) b!4023915))

(assert (= (and d!1191709 res!1637408) b!4023916))

(assert (= (and b!4023916 res!1637407) b!4023917))

(declare-fun m!4614975 () Bool)

(assert (=> b!4023916 m!4614975))

(assert (=> b!4023916 m!4614881))

(declare-fun m!4614977 () Bool)

(assert (=> b!4023916 m!4614977))

(declare-fun m!4614979 () Bool)

(assert (=> b!4023915 m!4614979))

(declare-fun m!4614981 () Bool)

(assert (=> d!1191709 m!4614981))

(declare-fun m!4614983 () Bool)

(assert (=> d!1191709 m!4614983))

(declare-fun m!4614985 () Bool)

(assert (=> d!1191709 m!4614985))

(assert (=> b!4023821 d!1191709))

(declare-fun lt!1429420 () List!43194)

(declare-fun e!2496212 () Bool)

(declare-fun b!4023921 () Bool)

(assert (=> b!4023921 (= e!2496212 (or (not (= newSuffix!27 Nil!43070)) (= lt!1429420 prefix!494)))))

(declare-fun b!4023920 () Bool)

(declare-fun res!1637409 () Bool)

(assert (=> b!4023920 (=> (not res!1637409) (not e!2496212))))

(assert (=> b!4023920 (= res!1637409 (= (size!32201 lt!1429420) (+ (size!32201 prefix!494) (size!32201 newSuffix!27))))))

(declare-fun b!4023919 () Bool)

(declare-fun e!2496211 () List!43194)

(assert (=> b!4023919 (= e!2496211 (Cons!43070 (h!48490 prefix!494) (++!11274 (t!333835 prefix!494) newSuffix!27)))))

(declare-fun b!4023918 () Bool)

(assert (=> b!4023918 (= e!2496211 newSuffix!27)))

(declare-fun d!1191711 () Bool)

(assert (=> d!1191711 e!2496212))

(declare-fun res!1637410 () Bool)

(assert (=> d!1191711 (=> (not res!1637410) (not e!2496212))))

(assert (=> d!1191711 (= res!1637410 (= (content!6533 lt!1429420) ((_ map or) (content!6533 prefix!494) (content!6533 newSuffix!27))))))

(assert (=> d!1191711 (= lt!1429420 e!2496211)))

(declare-fun c!695371 () Bool)

(assert (=> d!1191711 (= c!695371 ((_ is Nil!43070) prefix!494))))

(assert (=> d!1191711 (= (++!11274 prefix!494 newSuffix!27) lt!1429420)))

(assert (= (and d!1191711 c!695371) b!4023918))

(assert (= (and d!1191711 (not c!695371)) b!4023919))

(assert (= (and d!1191711 res!1637410) b!4023920))

(assert (= (and b!4023920 res!1637409) b!4023921))

(declare-fun m!4614987 () Bool)

(assert (=> b!4023920 m!4614987))

(assert (=> b!4023920 m!4614879))

(assert (=> b!4023920 m!4614893))

(declare-fun m!4614989 () Bool)

(assert (=> b!4023919 m!4614989))

(declare-fun m!4614991 () Bool)

(assert (=> d!1191711 m!4614991))

(declare-fun m!4614993 () Bool)

(assert (=> d!1191711 m!4614993))

(declare-fun m!4614995 () Bool)

(assert (=> d!1191711 m!4614995))

(assert (=> b!4023821 d!1191711))

(declare-fun b!4023940 () Bool)

(declare-fun e!2496221 () Option!9286)

(declare-fun lt!1429431 () Option!9286)

(declare-fun lt!1429432 () Option!9286)

(assert (=> b!4023940 (= e!2496221 (ite (and ((_ is None!9285) lt!1429431) ((_ is None!9285) lt!1429432)) None!9285 (ite ((_ is None!9285) lt!1429432) lt!1429431 (ite ((_ is None!9285) lt!1429431) lt!1429432 (ite (>= (size!32202 (_1!24229 (v!39663 lt!1429431))) (size!32202 (_1!24229 (v!39663 lt!1429432)))) lt!1429431 lt!1429432)))))))

(declare-fun call!286753 () Option!9286)

(assert (=> b!4023940 (= lt!1429431 call!286753)))

(assert (=> b!4023940 (= lt!1429432 (maxPrefix!3759 thiss!21717 (t!333837 rules!2999) (++!11274 prefix!494 suffix!1299)))))

(declare-fun b!4023941 () Bool)

(declare-fun res!1637431 () Bool)

(declare-fun e!2496220 () Bool)

(assert (=> b!4023941 (=> (not res!1637431) (not e!2496220))))

(declare-fun lt!1429435 () Option!9286)

(declare-fun matchR!5735 (Regex!11777 List!43194) Bool)

(declare-fun get!14141 (Option!9286) tuple2!42190)

(assert (=> b!4023941 (= res!1637431 (matchR!5735 (regex!6872 (rule!9928 (_1!24229 (get!14141 lt!1429435)))) (list!16016 (charsOf!4688 (_1!24229 (get!14141 lt!1429435))))))))

(declare-fun b!4023942 () Bool)

(declare-fun e!2496219 () Bool)

(assert (=> b!4023942 (= e!2496219 e!2496220)))

(declare-fun res!1637425 () Bool)

(assert (=> b!4023942 (=> (not res!1637425) (not e!2496220))))

(declare-fun isDefined!7081 (Option!9286) Bool)

(assert (=> b!4023942 (= res!1637425 (isDefined!7081 lt!1429435))))

(declare-fun b!4023943 () Bool)

(declare-fun res!1637426 () Bool)

(assert (=> b!4023943 (=> (not res!1637426) (not e!2496220))))

(assert (=> b!4023943 (= res!1637426 (= (list!16016 (charsOf!4688 (_1!24229 (get!14141 lt!1429435)))) (originalCharacters!7472 (_1!24229 (get!14141 lt!1429435)))))))

(declare-fun b!4023944 () Bool)

(assert (=> b!4023944 (= e!2496221 call!286753)))

(declare-fun b!4023945 () Bool)

(declare-fun res!1637427 () Bool)

(assert (=> b!4023945 (=> (not res!1637427) (not e!2496220))))

(assert (=> b!4023945 (= res!1637427 (< (size!32201 (_2!24229 (get!14141 lt!1429435))) (size!32201 (++!11274 prefix!494 suffix!1299))))))

(declare-fun b!4023946 () Bool)

(declare-fun res!1637430 () Bool)

(assert (=> b!4023946 (=> (not res!1637430) (not e!2496220))))

(assert (=> b!4023946 (= res!1637430 (= (++!11274 (list!16016 (charsOf!4688 (_1!24229 (get!14141 lt!1429435)))) (_2!24229 (get!14141 lt!1429435))) (++!11274 prefix!494 suffix!1299)))))

(declare-fun b!4023947 () Bool)

(declare-fun res!1637428 () Bool)

(assert (=> b!4023947 (=> (not res!1637428) (not e!2496220))))

(declare-fun apply!10066 (TokenValueInjection!13632 BalanceConc!25760) TokenValue!7102)

(declare-fun seqFromList!5094 (List!43194) BalanceConc!25760)

(assert (=> b!4023947 (= res!1637428 (= (value!216486 (_1!24229 (get!14141 lt!1429435))) (apply!10066 (transformation!6872 (rule!9928 (_1!24229 (get!14141 lt!1429435)))) (seqFromList!5094 (originalCharacters!7472 (_1!24229 (get!14141 lt!1429435)))))))))

(declare-fun d!1191713 () Bool)

(assert (=> d!1191713 e!2496219))

(declare-fun res!1637429 () Bool)

(assert (=> d!1191713 (=> res!1637429 e!2496219)))

(declare-fun isEmpty!25715 (Option!9286) Bool)

(assert (=> d!1191713 (= res!1637429 (isEmpty!25715 lt!1429435))))

(assert (=> d!1191713 (= lt!1429435 e!2496221)))

(declare-fun c!695374 () Bool)

(assert (=> d!1191713 (= c!695374 (and ((_ is Cons!43072) rules!2999) ((_ is Nil!43072) (t!333837 rules!2999))))))

(declare-datatypes ((Unit!62234 0))(
  ( (Unit!62235) )
))
(declare-fun lt!1429434 () Unit!62234)

(declare-fun lt!1429433 () Unit!62234)

(assert (=> d!1191713 (= lt!1429434 lt!1429433)))

(assert (=> d!1191713 (isPrefix!3959 (++!11274 prefix!494 suffix!1299) (++!11274 prefix!494 suffix!1299))))

(declare-fun lemmaIsPrefixRefl!2532 (List!43194 List!43194) Unit!62234)

(assert (=> d!1191713 (= lt!1429433 (lemmaIsPrefixRefl!2532 (++!11274 prefix!494 suffix!1299) (++!11274 prefix!494 suffix!1299)))))

(assert (=> d!1191713 (rulesValidInductive!2503 thiss!21717 rules!2999)))

(assert (=> d!1191713 (= (maxPrefix!3759 thiss!21717 rules!2999 (++!11274 prefix!494 suffix!1299)) lt!1429435)))

(declare-fun bm!286748 () Bool)

(declare-fun maxPrefixOneRule!2776 (LexerInterface!6461 Rule!13544 List!43194) Option!9286)

(assert (=> bm!286748 (= call!286753 (maxPrefixOneRule!2776 thiss!21717 (h!48492 rules!2999) (++!11274 prefix!494 suffix!1299)))))

(declare-fun b!4023948 () Bool)

(assert (=> b!4023948 (= e!2496220 (contains!8556 rules!2999 (rule!9928 (_1!24229 (get!14141 lt!1429435)))))))

(assert (= (and d!1191713 c!695374) b!4023944))

(assert (= (and d!1191713 (not c!695374)) b!4023940))

(assert (= (or b!4023944 b!4023940) bm!286748))

(assert (= (and d!1191713 (not res!1637429)) b!4023942))

(assert (= (and b!4023942 res!1637425) b!4023943))

(assert (= (and b!4023943 res!1637426) b!4023945))

(assert (= (and b!4023945 res!1637427) b!4023946))

(assert (= (and b!4023946 res!1637430) b!4023947))

(assert (= (and b!4023947 res!1637428) b!4023941))

(assert (= (and b!4023941 res!1637431) b!4023948))

(assert (=> b!4023940 m!4614869))

(declare-fun m!4614997 () Bool)

(assert (=> b!4023940 m!4614997))

(declare-fun m!4614999 () Bool)

(assert (=> b!4023943 m!4614999))

(declare-fun m!4615001 () Bool)

(assert (=> b!4023943 m!4615001))

(assert (=> b!4023943 m!4615001))

(declare-fun m!4615003 () Bool)

(assert (=> b!4023943 m!4615003))

(assert (=> b!4023941 m!4614999))

(assert (=> b!4023941 m!4615001))

(assert (=> b!4023941 m!4615001))

(assert (=> b!4023941 m!4615003))

(assert (=> b!4023941 m!4615003))

(declare-fun m!4615005 () Bool)

(assert (=> b!4023941 m!4615005))

(declare-fun m!4615007 () Bool)

(assert (=> d!1191713 m!4615007))

(assert (=> d!1191713 m!4614869))

(assert (=> d!1191713 m!4614869))

(declare-fun m!4615009 () Bool)

(assert (=> d!1191713 m!4615009))

(assert (=> d!1191713 m!4614869))

(assert (=> d!1191713 m!4614869))

(declare-fun m!4615011 () Bool)

(assert (=> d!1191713 m!4615011))

(assert (=> d!1191713 m!4614897))

(assert (=> bm!286748 m!4614869))

(declare-fun m!4615013 () Bool)

(assert (=> bm!286748 m!4615013))

(assert (=> b!4023945 m!4614999))

(declare-fun m!4615015 () Bool)

(assert (=> b!4023945 m!4615015))

(assert (=> b!4023945 m!4614869))

(declare-fun m!4615017 () Bool)

(assert (=> b!4023945 m!4615017))

(declare-fun m!4615019 () Bool)

(assert (=> b!4023942 m!4615019))

(assert (=> b!4023948 m!4614999))

(declare-fun m!4615021 () Bool)

(assert (=> b!4023948 m!4615021))

(assert (=> b!4023946 m!4614999))

(assert (=> b!4023946 m!4615001))

(assert (=> b!4023946 m!4615001))

(assert (=> b!4023946 m!4615003))

(assert (=> b!4023946 m!4615003))

(declare-fun m!4615023 () Bool)

(assert (=> b!4023946 m!4615023))

(assert (=> b!4023947 m!4614999))

(declare-fun m!4615025 () Bool)

(assert (=> b!4023947 m!4615025))

(assert (=> b!4023947 m!4615025))

(declare-fun m!4615027 () Bool)

(assert (=> b!4023947 m!4615027))

(assert (=> b!4023811 d!1191713))

(declare-fun b!4023952 () Bool)

(declare-fun lt!1429436 () List!43194)

(declare-fun e!2496223 () Bool)

(assert (=> b!4023952 (= e!2496223 (or (not (= suffix!1299 Nil!43070)) (= lt!1429436 prefix!494)))))

(declare-fun b!4023951 () Bool)

(declare-fun res!1637432 () Bool)

(assert (=> b!4023951 (=> (not res!1637432) (not e!2496223))))

(assert (=> b!4023951 (= res!1637432 (= (size!32201 lt!1429436) (+ (size!32201 prefix!494) (size!32201 suffix!1299))))))

(declare-fun b!4023950 () Bool)

(declare-fun e!2496222 () List!43194)

(assert (=> b!4023950 (= e!2496222 (Cons!43070 (h!48490 prefix!494) (++!11274 (t!333835 prefix!494) suffix!1299)))))

(declare-fun b!4023949 () Bool)

(assert (=> b!4023949 (= e!2496222 suffix!1299)))

(declare-fun d!1191715 () Bool)

(assert (=> d!1191715 e!2496223))

(declare-fun res!1637433 () Bool)

(assert (=> d!1191715 (=> (not res!1637433) (not e!2496223))))

(assert (=> d!1191715 (= res!1637433 (= (content!6533 lt!1429436) ((_ map or) (content!6533 prefix!494) (content!6533 suffix!1299))))))

(assert (=> d!1191715 (= lt!1429436 e!2496222)))

(declare-fun c!695375 () Bool)

(assert (=> d!1191715 (= c!695375 ((_ is Nil!43070) prefix!494))))

(assert (=> d!1191715 (= (++!11274 prefix!494 suffix!1299) lt!1429436)))

(assert (= (and d!1191715 c!695375) b!4023949))

(assert (= (and d!1191715 (not c!695375)) b!4023950))

(assert (= (and d!1191715 res!1637433) b!4023951))

(assert (= (and b!4023951 res!1637432) b!4023952))

(declare-fun m!4615029 () Bool)

(assert (=> b!4023951 m!4615029))

(assert (=> b!4023951 m!4614879))

(assert (=> b!4023951 m!4614891))

(declare-fun m!4615031 () Bool)

(assert (=> b!4023950 m!4615031))

(declare-fun m!4615033 () Bool)

(assert (=> d!1191715 m!4615033))

(assert (=> d!1191715 m!4614993))

(declare-fun m!4615035 () Bool)

(assert (=> d!1191715 m!4615035))

(assert (=> b!4023811 d!1191715))

(declare-fun d!1191717 () Bool)

(assert (=> d!1191717 (= (inv!57531 (tag!7732 (h!48492 rules!2999))) (= (mod (str.len (value!216485 (tag!7732 (h!48492 rules!2999)))) 2) 0))))

(assert (=> b!4023817 d!1191717))

(declare-fun d!1191719 () Bool)

(declare-fun res!1637436 () Bool)

(declare-fun e!2496226 () Bool)

(assert (=> d!1191719 (=> (not res!1637436) (not e!2496226))))

(declare-fun semiInverseModEq!2936 (Int Int) Bool)

(assert (=> d!1191719 (= res!1637436 (semiInverseModEq!2936 (toChars!9247 (transformation!6872 (h!48492 rules!2999))) (toValue!9388 (transformation!6872 (h!48492 rules!2999)))))))

(assert (=> d!1191719 (= (inv!57534 (transformation!6872 (h!48492 rules!2999))) e!2496226)))

(declare-fun b!4023955 () Bool)

(declare-fun equivClasses!2835 (Int Int) Bool)

(assert (=> b!4023955 (= e!2496226 (equivClasses!2835 (toChars!9247 (transformation!6872 (h!48492 rules!2999))) (toValue!9388 (transformation!6872 (h!48492 rules!2999)))))))

(assert (= (and d!1191719 res!1637436) b!4023955))

(declare-fun m!4615037 () Bool)

(assert (=> d!1191719 m!4615037))

(declare-fun m!4615039 () Bool)

(assert (=> b!4023955 m!4615039))

(assert (=> b!4023817 d!1191719))

(declare-fun d!1191721 () Bool)

(declare-fun res!1637439 () Bool)

(declare-fun e!2496229 () Bool)

(assert (=> d!1191721 (=> (not res!1637439) (not e!2496229))))

(declare-fun rulesValid!2670 (LexerInterface!6461 List!43196) Bool)

(assert (=> d!1191721 (= res!1637439 (rulesValid!2670 thiss!21717 rules!2999))))

(assert (=> d!1191721 (= (rulesInvariant!5804 thiss!21717 rules!2999) e!2496229)))

(declare-fun b!4023958 () Bool)

(declare-datatypes ((List!43197 0))(
  ( (Nil!43073) (Cons!43073 (h!48493 String!49228) (t!333850 List!43197)) )
))
(declare-fun noDuplicateTag!2671 (LexerInterface!6461 List!43196 List!43197) Bool)

(assert (=> b!4023958 (= e!2496229 (noDuplicateTag!2671 thiss!21717 rules!2999 Nil!43073))))

(assert (= (and d!1191721 res!1637439) b!4023958))

(declare-fun m!4615041 () Bool)

(assert (=> d!1191721 m!4615041))

(declare-fun m!4615043 () Bool)

(assert (=> b!4023958 m!4615043))

(assert (=> b!4023828 d!1191721))

(declare-fun d!1191723 () Bool)

(declare-fun res!1637446 () Bool)

(declare-fun e!2496234 () Bool)

(assert (=> d!1191723 (=> (not res!1637446) (not e!2496234))))

(declare-fun isEmpty!25716 (List!43194) Bool)

(assert (=> d!1191723 (= res!1637446 (not (isEmpty!25716 (originalCharacters!7472 token!484))))))

(assert (=> d!1191723 (= (inv!57535 token!484) e!2496234)))

(declare-fun b!4023965 () Bool)

(declare-fun res!1637447 () Bool)

(assert (=> b!4023965 (=> (not res!1637447) (not e!2496234))))

(assert (=> b!4023965 (= res!1637447 (= (originalCharacters!7472 token!484) (list!16016 (dynLambda!18261 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (value!216486 token!484)))))))

(declare-fun b!4023966 () Bool)

(assert (=> b!4023966 (= e!2496234 (= (size!32202 token!484) (size!32201 (originalCharacters!7472 token!484))))))

(assert (= (and d!1191723 res!1637446) b!4023965))

(assert (= (and b!4023965 res!1637447) b!4023966))

(declare-fun b_lambda!117391 () Bool)

(assert (=> (not b_lambda!117391) (not b!4023965)))

(assert (=> b!4023965 t!333843))

(declare-fun b_and!309151 () Bool)

(assert (= b_and!309147 (and (=> t!333843 result!293160) b_and!309151)))

(assert (=> b!4023965 t!333845))

(declare-fun b_and!309153 () Bool)

(assert (= b_and!309149 (and (=> t!333845 result!293164) b_and!309153)))

(declare-fun m!4615045 () Bool)

(assert (=> d!1191723 m!4615045))

(assert (=> b!4023965 m!4614963))

(assert (=> b!4023965 m!4614963))

(declare-fun m!4615051 () Bool)

(assert (=> b!4023965 m!4615051))

(declare-fun m!4615055 () Bool)

(assert (=> b!4023966 m!4615055))

(assert (=> start!378904 d!1191723))

(declare-fun b!4023986 () Bool)

(declare-fun res!1637466 () Bool)

(declare-fun e!2496248 () Bool)

(assert (=> b!4023986 (=> (not res!1637466) (not e!2496248))))

(declare-fun head!8530 (List!43194) C!23740)

(assert (=> b!4023986 (= res!1637466 (= (head!8530 newSuffix!27) (head!8530 suffix!1299)))))

(declare-fun d!1191727 () Bool)

(declare-fun e!2496247 () Bool)

(assert (=> d!1191727 e!2496247))

(declare-fun res!1637467 () Bool)

(assert (=> d!1191727 (=> res!1637467 e!2496247)))

(declare-fun lt!1429442 () Bool)

(assert (=> d!1191727 (= res!1637467 (not lt!1429442))))

(declare-fun e!2496249 () Bool)

(assert (=> d!1191727 (= lt!1429442 e!2496249)))

(declare-fun res!1637464 () Bool)

(assert (=> d!1191727 (=> res!1637464 e!2496249)))

(assert (=> d!1191727 (= res!1637464 ((_ is Nil!43070) newSuffix!27))))

(assert (=> d!1191727 (= (isPrefix!3959 newSuffix!27 suffix!1299) lt!1429442)))

(declare-fun b!4023985 () Bool)

(assert (=> b!4023985 (= e!2496249 e!2496248)))

(declare-fun res!1637465 () Bool)

(assert (=> b!4023985 (=> (not res!1637465) (not e!2496248))))

(assert (=> b!4023985 (= res!1637465 (not ((_ is Nil!43070) suffix!1299)))))

(declare-fun b!4023988 () Bool)

(assert (=> b!4023988 (= e!2496247 (>= (size!32201 suffix!1299) (size!32201 newSuffix!27)))))

(declare-fun b!4023987 () Bool)

(declare-fun tail!6262 (List!43194) List!43194)

(assert (=> b!4023987 (= e!2496248 (isPrefix!3959 (tail!6262 newSuffix!27) (tail!6262 suffix!1299)))))

(assert (= (and d!1191727 (not res!1637464)) b!4023985))

(assert (= (and b!4023985 res!1637465) b!4023986))

(assert (= (and b!4023986 res!1637466) b!4023987))

(assert (= (and d!1191727 (not res!1637467)) b!4023988))

(declare-fun m!4615057 () Bool)

(assert (=> b!4023986 m!4615057))

(declare-fun m!4615059 () Bool)

(assert (=> b!4023986 m!4615059))

(assert (=> b!4023988 m!4614891))

(assert (=> b!4023988 m!4614893))

(declare-fun m!4615061 () Bool)

(assert (=> b!4023987 m!4615061))

(declare-fun m!4615063 () Bool)

(assert (=> b!4023987 m!4615063))

(assert (=> b!4023987 m!4615061))

(assert (=> b!4023987 m!4615063))

(declare-fun m!4615065 () Bool)

(assert (=> b!4023987 m!4615065))

(assert (=> b!4023825 d!1191727))

(declare-fun d!1191729 () Bool)

(assert (=> d!1191729 (= (inv!57531 (tag!7732 (rule!9928 token!484))) (= (mod (str.len (value!216485 (tag!7732 (rule!9928 token!484)))) 2) 0))))

(assert (=> b!4023815 d!1191729))

(declare-fun d!1191731 () Bool)

(declare-fun res!1637468 () Bool)

(declare-fun e!2496250 () Bool)

(assert (=> d!1191731 (=> (not res!1637468) (not e!2496250))))

(assert (=> d!1191731 (= res!1637468 (semiInverseModEq!2936 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (toValue!9388 (transformation!6872 (rule!9928 token!484)))))))

(assert (=> d!1191731 (= (inv!57534 (transformation!6872 (rule!9928 token!484))) e!2496250)))

(declare-fun b!4023989 () Bool)

(assert (=> b!4023989 (= e!2496250 (equivClasses!2835 (toChars!9247 (transformation!6872 (rule!9928 token!484))) (toValue!9388 (transformation!6872 (rule!9928 token!484)))))))

(assert (= (and d!1191731 res!1637468) b!4023989))

(declare-fun m!4615067 () Bool)

(assert (=> d!1191731 m!4615067))

(declare-fun m!4615069 () Bool)

(assert (=> b!4023989 m!4615069))

(assert (=> b!4023815 d!1191731))

(declare-fun d!1191733 () Bool)

(declare-fun lt!1429449 () Bool)

(declare-fun content!6536 (List!43196) (InoxSet Rule!13544))

(assert (=> d!1191733 (= lt!1429449 (select (content!6536 rules!2999) (rule!9928 token!484)))))

(declare-fun e!2496262 () Bool)

(assert (=> d!1191733 (= lt!1429449 e!2496262)))

(declare-fun res!1637478 () Bool)

(assert (=> d!1191733 (=> (not res!1637478) (not e!2496262))))

(assert (=> d!1191733 (= res!1637478 ((_ is Cons!43072) rules!2999))))

(assert (=> d!1191733 (= (contains!8556 rules!2999 (rule!9928 token!484)) lt!1429449)))

(declare-fun b!4024004 () Bool)

(declare-fun e!2496261 () Bool)

(assert (=> b!4024004 (= e!2496262 e!2496261)))

(declare-fun res!1637477 () Bool)

(assert (=> b!4024004 (=> res!1637477 e!2496261)))

(assert (=> b!4024004 (= res!1637477 (= (h!48492 rules!2999) (rule!9928 token!484)))))

(declare-fun b!4024005 () Bool)

(assert (=> b!4024005 (= e!2496261 (contains!8556 (t!333837 rules!2999) (rule!9928 token!484)))))

(assert (= (and d!1191733 res!1637478) b!4024004))

(assert (= (and b!4024004 (not res!1637477)) b!4024005))

(declare-fun m!4615083 () Bool)

(assert (=> d!1191733 m!4615083))

(declare-fun m!4615085 () Bool)

(assert (=> d!1191733 m!4615085))

(declare-fun m!4615089 () Bool)

(assert (=> b!4024005 m!4615089))

(assert (=> b!4023816 d!1191733))

(declare-fun b!4024020 () Bool)

(declare-fun e!2496266 () Bool)

(declare-fun tp!1222949 () Bool)

(assert (=> b!4024020 (= e!2496266 tp!1222949)))

(declare-fun b!4024019 () Bool)

(declare-fun tp!1222947 () Bool)

(declare-fun tp!1222948 () Bool)

(assert (=> b!4024019 (= e!2496266 (and tp!1222947 tp!1222948))))

(declare-fun b!4024018 () Bool)

(assert (=> b!4024018 (= e!2496266 tp_is_empty!20525)))

(declare-fun b!4024021 () Bool)

(declare-fun tp!1222946 () Bool)

(declare-fun tp!1222945 () Bool)

(assert (=> b!4024021 (= e!2496266 (and tp!1222946 tp!1222945))))

(assert (=> b!4023817 (= tp!1222919 e!2496266)))

(assert (= (and b!4023817 ((_ is ElementMatch!11777) (regex!6872 (h!48492 rules!2999)))) b!4024018))

(assert (= (and b!4023817 ((_ is Concat!18880) (regex!6872 (h!48492 rules!2999)))) b!4024019))

(assert (= (and b!4023817 ((_ is Star!11777) (regex!6872 (h!48492 rules!2999)))) b!4024020))

(assert (= (and b!4023817 ((_ is Union!11777) (regex!6872 (h!48492 rules!2999)))) b!4024021))

(declare-fun b!4024026 () Bool)

(declare-fun e!2496269 () Bool)

(declare-fun tp!1222952 () Bool)

(assert (=> b!4024026 (= e!2496269 (and tp_is_empty!20525 tp!1222952))))

(assert (=> b!4023818 (= tp!1222922 e!2496269)))

(assert (= (and b!4023818 ((_ is Cons!43070) (t!333835 suffixResult!105))) b!4024026))

(declare-fun b!4024027 () Bool)

(declare-fun e!2496270 () Bool)

(declare-fun tp!1222953 () Bool)

(assert (=> b!4024027 (= e!2496270 (and tp_is_empty!20525 tp!1222953))))

(assert (=> b!4023813 (= tp!1222924 e!2496270)))

(assert (= (and b!4023813 ((_ is Cons!43070) (originalCharacters!7472 token!484))) b!4024027))

(declare-fun b!4024040 () Bool)

(declare-fun b_free!111993 () Bool)

(declare-fun b_next!112697 () Bool)

(assert (=> b!4024040 (= b_free!111993 (not b_next!112697))))

(declare-fun tp!1222963 () Bool)

(declare-fun b_and!309159 () Bool)

(assert (=> b!4024040 (= tp!1222963 b_and!309159)))

(declare-fun b_free!111995 () Bool)

(declare-fun b_next!112699 () Bool)

(assert (=> b!4024040 (= b_free!111995 (not b_next!112699))))

(declare-fun t!333847 () Bool)

(declare-fun tb!241897 () Bool)

(assert (=> (and b!4024040 (= (toChars!9247 (transformation!6872 (h!48492 (t!333837 rules!2999)))) (toChars!9247 (transformation!6872 (rule!9928 token!484)))) t!333847) tb!241897))

(declare-fun result!293172 () Bool)

(assert (= result!293172 result!293160))

(assert (=> d!1191701 t!333847))

(assert (=> b!4023965 t!333847))

(declare-fun tp!1222964 () Bool)

(declare-fun b_and!309161 () Bool)

(assert (=> b!4024040 (= tp!1222964 (and (=> t!333847 result!293172) b_and!309161))))

(declare-fun e!2496280 () Bool)

(assert (=> b!4024040 (= e!2496280 (and tp!1222963 tp!1222964))))

(declare-fun e!2496283 () Bool)

(declare-fun tp!1222965 () Bool)

(declare-fun b!4024039 () Bool)

(assert (=> b!4024039 (= e!2496283 (and tp!1222965 (inv!57531 (tag!7732 (h!48492 (t!333837 rules!2999)))) (inv!57534 (transformation!6872 (h!48492 (t!333837 rules!2999)))) e!2496280))))

(declare-fun b!4024038 () Bool)

(declare-fun e!2496282 () Bool)

(declare-fun tp!1222962 () Bool)

(assert (=> b!4024038 (= e!2496282 (and e!2496283 tp!1222962))))

(assert (=> b!4023824 (= tp!1222925 e!2496282)))

(assert (= b!4024039 b!4024040))

(assert (= b!4024038 b!4024039))

(assert (= (and b!4023824 ((_ is Cons!43072) (t!333837 rules!2999))) b!4024038))

(declare-fun m!4615099 () Bool)

(assert (=> b!4024039 m!4615099))

(declare-fun m!4615101 () Bool)

(assert (=> b!4024039 m!4615101))

(declare-fun b!4024043 () Bool)

(declare-fun e!2496285 () Bool)

(declare-fun tp!1222966 () Bool)

(assert (=> b!4024043 (= e!2496285 (and tp_is_empty!20525 tp!1222966))))

(assert (=> b!4023814 (= tp!1222917 e!2496285)))

(assert (= (and b!4023814 ((_ is Cons!43070) (t!333835 suffix!1299))) b!4024043))

(declare-fun b!4024046 () Bool)

(declare-fun e!2496286 () Bool)

(declare-fun tp!1222971 () Bool)

(assert (=> b!4024046 (= e!2496286 tp!1222971)))

(declare-fun b!4024045 () Bool)

(declare-fun tp!1222969 () Bool)

(declare-fun tp!1222970 () Bool)

(assert (=> b!4024045 (= e!2496286 (and tp!1222969 tp!1222970))))

(declare-fun b!4024044 () Bool)

(assert (=> b!4024044 (= e!2496286 tp_is_empty!20525)))

(declare-fun b!4024047 () Bool)

(declare-fun tp!1222968 () Bool)

(declare-fun tp!1222967 () Bool)

(assert (=> b!4024047 (= e!2496286 (and tp!1222968 tp!1222967))))

(assert (=> b!4023815 (= tp!1222916 e!2496286)))

(assert (= (and b!4023815 ((_ is ElementMatch!11777) (regex!6872 (rule!9928 token!484)))) b!4024044))

(assert (= (and b!4023815 ((_ is Concat!18880) (regex!6872 (rule!9928 token!484)))) b!4024045))

(assert (= (and b!4023815 ((_ is Star!11777) (regex!6872 (rule!9928 token!484)))) b!4024046))

(assert (= (and b!4023815 ((_ is Union!11777) (regex!6872 (rule!9928 token!484)))) b!4024047))

(declare-fun b!4024048 () Bool)

(declare-fun e!2496287 () Bool)

(declare-fun tp!1222972 () Bool)

(assert (=> b!4024048 (= e!2496287 (and tp_is_empty!20525 tp!1222972))))

(assert (=> b!4023826 (= tp!1222921 e!2496287)))

(assert (= (and b!4023826 ((_ is Cons!43070) (t!333835 newSuffixResult!27))) b!4024048))

(declare-fun b!4024049 () Bool)

(declare-fun e!2496288 () Bool)

(declare-fun tp!1222973 () Bool)

(assert (=> b!4024049 (= e!2496288 (and tp_is_empty!20525 tp!1222973))))

(assert (=> b!4023810 (= tp!1222927 e!2496288)))

(assert (= (and b!4023810 ((_ is Cons!43070) (t!333835 newSuffix!27))) b!4024049))

(declare-fun b!4024050 () Bool)

(declare-fun e!2496289 () Bool)

(declare-fun tp!1222974 () Bool)

(assert (=> b!4024050 (= e!2496289 (and tp_is_empty!20525 tp!1222974))))

(assert (=> b!4023827 (= tp!1222920 e!2496289)))

(assert (= (and b!4023827 ((_ is Cons!43070) (t!333835 prefix!494))) b!4024050))

(declare-fun b_lambda!117395 () Bool)

(assert (= b_lambda!117391 (or (and b!4023820 b_free!111987) (and b!4023819 b_free!111991 (= (toChars!9247 (transformation!6872 (h!48492 rules!2999))) (toChars!9247 (transformation!6872 (rule!9928 token!484))))) (and b!4024040 b_free!111995 (= (toChars!9247 (transformation!6872 (h!48492 (t!333837 rules!2999)))) (toChars!9247 (transformation!6872 (rule!9928 token!484))))) b_lambda!117395)))

(declare-fun b_lambda!117397 () Bool)

(assert (= b_lambda!117389 (or (and b!4023820 b_free!111987) (and b!4023819 b_free!111991 (= (toChars!9247 (transformation!6872 (h!48492 rules!2999))) (toChars!9247 (transformation!6872 (rule!9928 token!484))))) (and b!4024040 b_free!111995 (= (toChars!9247 (transformation!6872 (h!48492 (t!333837 rules!2999)))) (toChars!9247 (transformation!6872 (rule!9928 token!484))))) b_lambda!117397)))

(check-sat (not b!4023945) (not b!4024021) (not b!4023920) (not b_lambda!117395) (not b!4023943) (not b!4023886) (not b!4024005) b_and!309139 (not b!4023986) b_and!309151 b_and!309159 (not b!4023966) (not b_next!112695) (not b!4023988) b_and!309135 (not b_next!112689) (not b!4024049) (not b!4023941) (not d!1191709) (not b!4023905) (not tb!241893) (not b!4024038) (not d!1191701) (not d!1191719) (not b!4024026) (not b!4024047) (not b!4023901) (not b!4023915) (not b!4023951) (not b_next!112699) (not b!4023965) (not b!4023871) (not b!4023881) (not b_lambda!117397) (not b!4023942) (not b!4024020) (not b!4023989) (not b_next!112693) (not d!1191731) tp_is_empty!20525 (not d!1191699) (not b!4023987) (not d!1191723) (not b!4023940) (not b_next!112691) (not b!4023950) b_and!309161 (not b!4023903) (not d!1191713) (not b!4023947) (not b!4023900) (not b!4023879) (not b!4024046) (not b!4024045) (not b!4023948) (not b!4023958) (not b!4024019) (not d!1191721) (not bm!286748) (not b!4023946) (not b!4023919) (not b!4023916) (not d!1191711) (not b!4024043) (not d!1191733) (not b!4024039) (not b!4023897) (not b!4023955) (not b!4024050) b_and!309153 (not b_next!112697) (not b!4024048) (not d!1191679) (not b!4023870) (not d!1191715) (not b!4024027))
(check-sat b_and!309139 b_and!309135 (not b_next!112689) (not b_next!112699) (not b_next!112693) (not b_next!112691) b_and!309161 b_and!309153 (not b_next!112697) b_and!309151 b_and!309159 (not b_next!112695))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376692 () Bool)

(assert start!376692)

(declare-fun b!4002275 () Bool)

(declare-fun b_free!111249 () Bool)

(declare-fun b_next!111953 () Bool)

(assert (=> b!4002275 (= b_free!111249 (not b_next!111953))))

(declare-fun tp!1218043 () Bool)

(declare-fun b_and!307319 () Bool)

(assert (=> b!4002275 (= tp!1218043 b_and!307319)))

(declare-fun b_free!111251 () Bool)

(declare-fun b_next!111955 () Bool)

(assert (=> b!4002275 (= b_free!111251 (not b_next!111955))))

(declare-fun tp!1218037 () Bool)

(declare-fun b_and!307321 () Bool)

(assert (=> b!4002275 (= tp!1218037 b_and!307321)))

(declare-fun b!4002271 () Bool)

(declare-fun b_free!111253 () Bool)

(declare-fun b_next!111957 () Bool)

(assert (=> b!4002271 (= b_free!111253 (not b_next!111957))))

(declare-fun tp!1218040 () Bool)

(declare-fun b_and!307323 () Bool)

(assert (=> b!4002271 (= tp!1218040 b_and!307323)))

(declare-fun b_free!111255 () Bool)

(declare-fun b_next!111959 () Bool)

(assert (=> b!4002271 (= b_free!111255 (not b_next!111959))))

(declare-fun tp!1218034 () Bool)

(declare-fun b_and!307325 () Bool)

(assert (=> b!4002271 (= tp!1218034 b_and!307325)))

(declare-fun b!4002265 () Bool)

(declare-fun res!1626183 () Bool)

(declare-fun e!2481741 () Bool)

(assert (=> b!4002265 (=> (not res!1626183) (not e!2481741))))

(declare-datatypes ((C!23592 0))(
  ( (C!23593 (val!13890 Int)) )
))
(declare-datatypes ((List!42948 0))(
  ( (Nil!42824) (Cons!42824 (h!48244 C!23592) (t!332277 List!42948)) )
))
(declare-fun suffix!1299 () List!42948)

(declare-fun newSuffix!27 () List!42948)

(declare-fun size!32021 (List!42948) Int)

(assert (=> b!4002265 (= res!1626183 (>= (size!32021 suffix!1299) (size!32021 newSuffix!27)))))

(declare-fun b!4002266 () Bool)

(declare-fun e!2481756 () Bool)

(assert (=> b!4002266 (= e!2481741 e!2481756)))

(declare-fun res!1626182 () Bool)

(assert (=> b!4002266 (=> (not res!1626182) (not e!2481756))))

(declare-fun prefix!494 () List!42948)

(declare-fun lt!1415381 () List!42948)

(assert (=> b!4002266 (= res!1626182 (>= (size!32021 prefix!494) (size!32021 lt!1415381)))))

(declare-datatypes ((IArray!26023 0))(
  ( (IArray!26024 (innerList!13069 List!42948)) )
))
(declare-datatypes ((Conc!13009 0))(
  ( (Node!13009 (left!32326 Conc!13009) (right!32656 Conc!13009) (csize!26248 Int) (cheight!13220 Int)) (Leaf!20115 (xs!16315 IArray!26023) (csize!26249 Int)) (Empty!13009) )
))
(declare-datatypes ((BalanceConc!25612 0))(
  ( (BalanceConc!25613 (c!692156 Conc!13009)) )
))
(declare-datatypes ((List!42949 0))(
  ( (Nil!42825) (Cons!42825 (h!48245 (_ BitVec 16)) (t!332278 List!42949)) )
))
(declare-datatypes ((TokenValue!7028 0))(
  ( (FloatLiteralValue!14056 (text!49641 List!42949)) (TokenValueExt!7027 (__x!26273 Int)) (Broken!35140 (value!214351 List!42949)) (Object!7151) (End!7028) (Def!7028) (Underscore!7028) (Match!7028) (Else!7028) (Error!7028) (Case!7028) (If!7028) (Extends!7028) (Abstract!7028) (Class!7028) (Val!7028) (DelimiterValue!14056 (del!7088 List!42949)) (KeywordValue!7034 (value!214352 List!42949)) (CommentValue!14056 (value!214353 List!42949)) (WhitespaceValue!14056 (value!214354 List!42949)) (IndentationValue!7028 (value!214355 List!42949)) (String!48857) (Int32!7028) (Broken!35141 (value!214356 List!42949)) (Boolean!7029) (Unit!61813) (OperatorValue!7031 (op!7088 List!42949)) (IdentifierValue!14056 (value!214357 List!42949)) (IdentifierValue!14057 (value!214358 List!42949)) (WhitespaceValue!14057 (value!214359 List!42949)) (True!14056) (False!14056) (Broken!35142 (value!214360 List!42949)) (Broken!35143 (value!214361 List!42949)) (True!14057) (RightBrace!7028) (RightBracket!7028) (Colon!7028) (Null!7028) (Comma!7028) (LeftBracket!7028) (False!14057) (LeftBrace!7028) (ImaginaryLiteralValue!7028 (text!49642 List!42949)) (StringLiteralValue!21084 (value!214362 List!42949)) (EOFValue!7028 (value!214363 List!42949)) (IdentValue!7028 (value!214364 List!42949)) (DelimiterValue!14057 (value!214365 List!42949)) (DedentValue!7028 (value!214366 List!42949)) (NewLineValue!7028 (value!214367 List!42949)) (IntegerValue!21084 (value!214368 (_ BitVec 32)) (text!49643 List!42949)) (IntegerValue!21085 (value!214369 Int) (text!49644 List!42949)) (Times!7028) (Or!7028) (Equal!7028) (Minus!7028) (Broken!35144 (value!214370 List!42949)) (And!7028) (Div!7028) (LessEqual!7028) (Mod!7028) (Concat!18731) (Not!7028) (Plus!7028) (SpaceValue!7028 (value!214371 List!42949)) (IntegerValue!21086 (value!214372 Int) (text!49645 List!42949)) (StringLiteralValue!21085 (text!49646 List!42949)) (FloatLiteralValue!14057 (text!49647 List!42949)) (BytesLiteralValue!7028 (value!214373 List!42949)) (CommentValue!14057 (value!214374 List!42949)) (StringLiteralValue!21086 (value!214375 List!42949)) (ErrorTokenValue!7028 (msg!7089 List!42949)) )
))
(declare-datatypes ((Regex!11703 0))(
  ( (ElementMatch!11703 (c!692157 C!23592)) (Concat!18732 (regOne!23918 Regex!11703) (regTwo!23918 Regex!11703)) (EmptyExpr!11703) (Star!11703 (reg!12032 Regex!11703)) (EmptyLang!11703) (Union!11703 (regOne!23919 Regex!11703) (regTwo!23919 Regex!11703)) )
))
(declare-datatypes ((String!48858 0))(
  ( (String!48859 (value!214376 String)) )
))
(declare-datatypes ((TokenValueInjection!13484 0))(
  ( (TokenValueInjection!13485 (toValue!9290 Int) (toChars!9149 Int)) )
))
(declare-datatypes ((Rule!13396 0))(
  ( (Rule!13397 (regex!6798 Regex!11703) (tag!7658 String!48858) (isSeparator!6798 Bool) (transformation!6798 TokenValueInjection!13484)) )
))
(declare-datatypes ((Token!12734 0))(
  ( (Token!12735 (value!214377 TokenValue!7028) (rule!9832 Rule!13396) (size!32022 Int) (originalCharacters!7398 List!42948)) )
))
(declare-fun token!484 () Token!12734)

(declare-fun list!15906 (BalanceConc!25612) List!42948)

(declare-fun charsOf!4614 (Token!12734) BalanceConc!25612)

(assert (=> b!4002266 (= lt!1415381 (list!15906 (charsOf!4614 token!484)))))

(declare-fun b!4002267 () Bool)

(declare-fun res!1626178 () Bool)

(assert (=> b!4002267 (=> (not res!1626178) (not e!2481741))))

(declare-fun isPrefix!3885 (List!42948 List!42948) Bool)

(assert (=> b!4002267 (= res!1626178 (isPrefix!3885 newSuffix!27 suffix!1299))))

(declare-fun b!4002268 () Bool)

(declare-fun e!2481755 () Bool)

(declare-fun tp_is_empty!20377 () Bool)

(declare-fun tp!1218041 () Bool)

(assert (=> b!4002268 (= e!2481755 (and tp_is_empty!20377 tp!1218041))))

(declare-fun b!4002269 () Bool)

(declare-fun res!1626177 () Bool)

(assert (=> b!4002269 (=> (not res!1626177) (not e!2481741))))

(declare-datatypes ((List!42950 0))(
  ( (Nil!42826) (Cons!42826 (h!48246 Rule!13396) (t!332279 List!42950)) )
))
(declare-fun rules!2999 () List!42950)

(declare-fun isEmpty!25590 (List!42950) Bool)

(assert (=> b!4002269 (= res!1626177 (not (isEmpty!25590 rules!2999)))))

(declare-fun b!4002270 () Bool)

(declare-fun e!2481740 () Bool)

(declare-fun e!2481742 () Bool)

(declare-fun tp!1218039 () Bool)

(declare-fun inv!57188 (String!48858) Bool)

(declare-fun inv!57191 (TokenValueInjection!13484) Bool)

(assert (=> b!4002270 (= e!2481740 (and tp!1218039 (inv!57188 (tag!7658 (rule!9832 token!484))) (inv!57191 (transformation!6798 (rule!9832 token!484))) e!2481742))))

(declare-fun e!2481739 () Bool)

(assert (=> b!4002271 (= e!2481739 (and tp!1218040 tp!1218034))))

(declare-fun b!4002272 () Bool)

(declare-fun e!2481750 () Bool)

(declare-fun tp!1218045 () Bool)

(assert (=> b!4002272 (= e!2481750 (and tp_is_empty!20377 tp!1218045))))

(declare-fun b!4002273 () Bool)

(declare-fun res!1626179 () Bool)

(assert (=> b!4002273 (=> (not res!1626179) (not e!2481741))))

(declare-datatypes ((LexerInterface!6387 0))(
  ( (LexerInterfaceExt!6384 (__x!26274 Int)) (Lexer!6385) )
))
(declare-fun thiss!21717 () LexerInterface!6387)

(declare-fun rulesInvariant!5730 (LexerInterface!6387 List!42950) Bool)

(assert (=> b!4002273 (= res!1626179 (rulesInvariant!5730 thiss!21717 rules!2999))))

(declare-fun b!4002274 () Bool)

(declare-fun e!2481752 () Bool)

(declare-fun e!2481745 () Bool)

(assert (=> b!4002274 (= e!2481752 (not e!2481745))))

(declare-fun res!1626181 () Bool)

(assert (=> b!4002274 (=> res!1626181 e!2481745)))

(declare-fun lt!1415380 () List!42948)

(declare-fun lt!1415382 () List!42948)

(assert (=> b!4002274 (= res!1626181 (not (= lt!1415380 lt!1415382)))))

(declare-fun suffixResult!105 () List!42948)

(declare-fun ++!11200 (List!42948 List!42948) List!42948)

(assert (=> b!4002274 (= lt!1415380 (++!11200 lt!1415381 suffixResult!105))))

(declare-datatypes ((Unit!61814 0))(
  ( (Unit!61815) )
))
(declare-fun lt!1415379 () Unit!61814)

(declare-fun lemmaInv!1013 (TokenValueInjection!13484) Unit!61814)

(assert (=> b!4002274 (= lt!1415379 (lemmaInv!1013 (transformation!6798 (rule!9832 token!484))))))

(declare-fun ruleValid!2730 (LexerInterface!6387 Rule!13396) Bool)

(assert (=> b!4002274 (ruleValid!2730 thiss!21717 (rule!9832 token!484))))

(declare-fun lt!1415384 () Unit!61814)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1804 (LexerInterface!6387 Rule!13396 List!42950) Unit!61814)

(assert (=> b!4002274 (= lt!1415384 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1804 thiss!21717 (rule!9832 token!484) rules!2999))))

(assert (=> b!4002275 (= e!2481742 (and tp!1218043 tp!1218037))))

(declare-fun tp!1218038 () Bool)

(declare-fun b!4002277 () Bool)

(declare-fun e!2481754 () Bool)

(declare-fun inv!21 (TokenValue!7028) Bool)

(assert (=> b!4002277 (= e!2481754 (and (inv!21 (value!214377 token!484)) e!2481740 tp!1218038))))

(declare-fun b!4002278 () Bool)

(declare-fun e!2481744 () Bool)

(declare-fun tp!1218035 () Bool)

(assert (=> b!4002278 (= e!2481744 (and tp_is_empty!20377 tp!1218035))))

(declare-fun b!4002279 () Bool)

(declare-fun e!2481749 () Bool)

(declare-fun e!2481747 () Bool)

(declare-fun tp!1218044 () Bool)

(assert (=> b!4002279 (= e!2481749 (and e!2481747 tp!1218044))))

(declare-fun tp!1218046 () Bool)

(declare-fun b!4002280 () Bool)

(assert (=> b!4002280 (= e!2481747 (and tp!1218046 (inv!57188 (tag!7658 (h!48246 rules!2999))) (inv!57191 (transformation!6798 (h!48246 rules!2999))) e!2481739))))

(declare-fun b!4002281 () Bool)

(declare-fun e!2481751 () Bool)

(declare-fun tp!1218042 () Bool)

(assert (=> b!4002281 (= e!2481751 (and tp_is_empty!20377 tp!1218042))))

(declare-fun b!4002282 () Bool)

(assert (=> b!4002282 (= e!2481756 e!2481752)))

(declare-fun res!1626184 () Bool)

(assert (=> b!4002282 (=> (not res!1626184) (not e!2481752))))

(declare-datatypes ((tuple2!41998 0))(
  ( (tuple2!41999 (_1!24133 Token!12734) (_2!24133 List!42948)) )
))
(declare-datatypes ((Option!9212 0))(
  ( (None!9211) (Some!9211 (v!39573 tuple2!41998)) )
))
(declare-fun maxPrefix!3685 (LexerInterface!6387 List!42950 List!42948) Option!9212)

(assert (=> b!4002282 (= res!1626184 (= (maxPrefix!3685 thiss!21717 rules!2999 lt!1415382) (Some!9211 (tuple2!41999 token!484 suffixResult!105))))))

(assert (=> b!4002282 (= lt!1415382 (++!11200 prefix!494 suffix!1299))))

(declare-fun b!4002276 () Bool)

(declare-fun res!1626185 () Bool)

(assert (=> b!4002276 (=> (not res!1626185) (not e!2481756))))

(declare-fun newSuffixResult!27 () List!42948)

(assert (=> b!4002276 (= res!1626185 (= (++!11200 lt!1415381 newSuffixResult!27) (++!11200 prefix!494 newSuffix!27)))))

(declare-fun res!1626180 () Bool)

(assert (=> start!376692 (=> (not res!1626180) (not e!2481741))))

(get-info :version)

(assert (=> start!376692 (= res!1626180 ((_ is Lexer!6385) thiss!21717))))

(assert (=> start!376692 e!2481741))

(assert (=> start!376692 e!2481751))

(declare-fun inv!57192 (Token!12734) Bool)

(assert (=> start!376692 (and (inv!57192 token!484) e!2481754)))

(assert (=> start!376692 e!2481755))

(assert (=> start!376692 e!2481750))

(assert (=> start!376692 e!2481744))

(assert (=> start!376692 true))

(assert (=> start!376692 e!2481749))

(declare-fun e!2481746 () Bool)

(assert (=> start!376692 e!2481746))

(declare-fun b!4002283 () Bool)

(declare-fun tp!1218036 () Bool)

(assert (=> b!4002283 (= e!2481746 (and tp_is_empty!20377 tp!1218036))))

(declare-fun b!4002284 () Bool)

(assert (=> b!4002284 (= e!2481745 (isPrefix!3885 lt!1415381 lt!1415382))))

(assert (=> b!4002284 (isPrefix!3885 prefix!494 lt!1415382)))

(declare-fun lt!1415383 () Unit!61814)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2726 (List!42948 List!42948) Unit!61814)

(assert (=> b!4002284 (= lt!1415383 (lemmaConcatTwoListThenFirstIsPrefix!2726 prefix!494 suffix!1299))))

(assert (=> b!4002284 (isPrefix!3885 lt!1415381 lt!1415380)))

(declare-fun lt!1415385 () Unit!61814)

(assert (=> b!4002284 (= lt!1415385 (lemmaConcatTwoListThenFirstIsPrefix!2726 lt!1415381 suffixResult!105))))

(assert (= (and start!376692 res!1626180) b!4002269))

(assert (= (and b!4002269 res!1626177) b!4002273))

(assert (= (and b!4002273 res!1626179) b!4002265))

(assert (= (and b!4002265 res!1626183) b!4002267))

(assert (= (and b!4002267 res!1626178) b!4002266))

(assert (= (and b!4002266 res!1626182) b!4002276))

(assert (= (and b!4002276 res!1626185) b!4002282))

(assert (= (and b!4002282 res!1626184) b!4002274))

(assert (= (and b!4002274 (not res!1626181)) b!4002284))

(assert (= (and start!376692 ((_ is Cons!42824) prefix!494)) b!4002281))

(assert (= b!4002270 b!4002275))

(assert (= b!4002277 b!4002270))

(assert (= start!376692 b!4002277))

(assert (= (and start!376692 ((_ is Cons!42824) suffixResult!105)) b!4002268))

(assert (= (and start!376692 ((_ is Cons!42824) suffix!1299)) b!4002272))

(assert (= (and start!376692 ((_ is Cons!42824) newSuffix!27)) b!4002278))

(assert (= b!4002280 b!4002271))

(assert (= b!4002279 b!4002280))

(assert (= (and start!376692 ((_ is Cons!42826) rules!2999)) b!4002279))

(assert (= (and start!376692 ((_ is Cons!42824) newSuffixResult!27)) b!4002283))

(declare-fun m!4584669 () Bool)

(assert (=> b!4002280 m!4584669))

(declare-fun m!4584671 () Bool)

(assert (=> b!4002280 m!4584671))

(declare-fun m!4584673 () Bool)

(assert (=> b!4002269 m!4584673))

(declare-fun m!4584675 () Bool)

(assert (=> start!376692 m!4584675))

(declare-fun m!4584677 () Bool)

(assert (=> b!4002267 m!4584677))

(declare-fun m!4584679 () Bool)

(assert (=> b!4002270 m!4584679))

(declare-fun m!4584681 () Bool)

(assert (=> b!4002270 m!4584681))

(declare-fun m!4584683 () Bool)

(assert (=> b!4002284 m!4584683))

(declare-fun m!4584685 () Bool)

(assert (=> b!4002284 m!4584685))

(declare-fun m!4584687 () Bool)

(assert (=> b!4002284 m!4584687))

(declare-fun m!4584689 () Bool)

(assert (=> b!4002284 m!4584689))

(declare-fun m!4584691 () Bool)

(assert (=> b!4002284 m!4584691))

(declare-fun m!4584693 () Bool)

(assert (=> b!4002265 m!4584693))

(declare-fun m!4584695 () Bool)

(assert (=> b!4002265 m!4584695))

(declare-fun m!4584697 () Bool)

(assert (=> b!4002273 m!4584697))

(declare-fun m!4584699 () Bool)

(assert (=> b!4002266 m!4584699))

(declare-fun m!4584701 () Bool)

(assert (=> b!4002266 m!4584701))

(declare-fun m!4584703 () Bool)

(assert (=> b!4002266 m!4584703))

(assert (=> b!4002266 m!4584703))

(declare-fun m!4584705 () Bool)

(assert (=> b!4002266 m!4584705))

(declare-fun m!4584707 () Bool)

(assert (=> b!4002282 m!4584707))

(declare-fun m!4584709 () Bool)

(assert (=> b!4002282 m!4584709))

(declare-fun m!4584711 () Bool)

(assert (=> b!4002276 m!4584711))

(declare-fun m!4584713 () Bool)

(assert (=> b!4002276 m!4584713))

(declare-fun m!4584715 () Bool)

(assert (=> b!4002277 m!4584715))

(declare-fun m!4584717 () Bool)

(assert (=> b!4002274 m!4584717))

(declare-fun m!4584719 () Bool)

(assert (=> b!4002274 m!4584719))

(declare-fun m!4584721 () Bool)

(assert (=> b!4002274 m!4584721))

(declare-fun m!4584723 () Bool)

(assert (=> b!4002274 m!4584723))

(check-sat (not b!4002273) (not b!4002284) (not b!4002272) (not b!4002270) (not b!4002279) b_and!307319 (not b_next!111953) (not b!4002267) (not b!4002268) b_and!307321 (not b!4002277) (not b!4002282) (not b!4002280) (not b_next!111955) tp_is_empty!20377 (not start!376692) (not b!4002274) (not b!4002276) b_and!307325 b_and!307323 (not b!4002269) (not b_next!111959) (not b!4002266) (not b!4002281) (not b_next!111957) (not b!4002283) (not b!4002278) (not b!4002265))
(check-sat (not b_next!111955) b_and!307319 (not b_next!111953) b_and!307321 (not b_next!111959) (not b_next!111957) b_and!307325 b_and!307323)

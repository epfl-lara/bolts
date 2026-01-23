; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361164 () Bool)

(assert start!361164)

(declare-fun b!3854050 () Bool)

(declare-fun b_free!103381 () Bool)

(declare-fun b_next!104085 () Bool)

(assert (=> b!3854050 (= b_free!103381 (not b_next!104085))))

(declare-fun tp!1168187 () Bool)

(declare-fun b_and!288099 () Bool)

(assert (=> b!3854050 (= tp!1168187 b_and!288099)))

(declare-fun b_free!103383 () Bool)

(declare-fun b_next!104087 () Bool)

(assert (=> b!3854050 (= b_free!103383 (not b_next!104087))))

(declare-fun tp!1168198 () Bool)

(declare-fun b_and!288101 () Bool)

(assert (=> b!3854050 (= tp!1168198 b_and!288101)))

(declare-fun b!3854074 () Bool)

(declare-fun b_free!103385 () Bool)

(declare-fun b_next!104089 () Bool)

(assert (=> b!3854074 (= b_free!103385 (not b_next!104089))))

(declare-fun tp!1168186 () Bool)

(declare-fun b_and!288103 () Bool)

(assert (=> b!3854074 (= tp!1168186 b_and!288103)))

(declare-fun b_free!103387 () Bool)

(declare-fun b_next!104091 () Bool)

(assert (=> b!3854074 (= b_free!103387 (not b_next!104091))))

(declare-fun tp!1168192 () Bool)

(declare-fun b_and!288105 () Bool)

(assert (=> b!3854074 (= tp!1168192 b_and!288105)))

(declare-fun b!3854070 () Bool)

(declare-fun b_free!103389 () Bool)

(declare-fun b_next!104093 () Bool)

(assert (=> b!3854070 (= b_free!103389 (not b_next!104093))))

(declare-fun tp!1168191 () Bool)

(declare-fun b_and!288107 () Bool)

(assert (=> b!3854070 (= tp!1168191 b_and!288107)))

(declare-fun b_free!103391 () Bool)

(declare-fun b_next!104095 () Bool)

(assert (=> b!3854070 (= b_free!103391 (not b_next!104095))))

(declare-fun tp!1168189 () Bool)

(declare-fun b_and!288109 () Bool)

(assert (=> b!3854070 (= tp!1168189 b_and!288109)))

(declare-fun b!3854044 () Bool)

(declare-fun e!2382268 () Bool)

(declare-fun e!2382271 () Bool)

(assert (=> b!3854044 (= e!2382268 e!2382271)))

(declare-fun res!1560197 () Bool)

(assert (=> b!3854044 (=> res!1560197 e!2382271)))

(declare-fun lt!1338713 () Int)

(declare-fun lt!1338714 () Int)

(declare-fun lt!1338720 () Int)

(declare-fun lt!1338719 () Int)

(assert (=> b!3854044 (= res!1560197 (or (not (= (+ lt!1338719 lt!1338714) lt!1338720)) (<= lt!1338713 lt!1338719)))))

(declare-datatypes ((C!22624 0))(
  ( (C!22625 (val!13406 Int)) )
))
(declare-datatypes ((List!40960 0))(
  ( (Nil!40836) (Cons!40836 (h!46256 C!22624) (t!312441 List!40960)) )
))
(declare-fun prefix!426 () List!40960)

(declare-fun size!30719 (List!40960) Int)

(assert (=> b!3854044 (= lt!1338719 (size!30719 prefix!426))))

(declare-fun b!3854045 () Bool)

(declare-fun tp!1168188 () Bool)

(declare-datatypes ((String!46437 0))(
  ( (String!46438 (value!200557 String)) )
))
(declare-datatypes ((List!40961 0))(
  ( (Nil!40837) (Cons!40837 (h!46257 (_ BitVec 16)) (t!312442 List!40961)) )
))
(declare-datatypes ((TokenValue!6544 0))(
  ( (FloatLiteralValue!13088 (text!46253 List!40961)) (TokenValueExt!6543 (__x!25305 Int)) (Broken!32720 (value!200558 List!40961)) (Object!6667) (End!6544) (Def!6544) (Underscore!6544) (Match!6544) (Else!6544) (Error!6544) (Case!6544) (If!6544) (Extends!6544) (Abstract!6544) (Class!6544) (Val!6544) (DelimiterValue!13088 (del!6604 List!40961)) (KeywordValue!6550 (value!200559 List!40961)) (CommentValue!13088 (value!200560 List!40961)) (WhitespaceValue!13088 (value!200561 List!40961)) (IndentationValue!6544 (value!200562 List!40961)) (String!46439) (Int32!6544) (Broken!32721 (value!200563 List!40961)) (Boolean!6545) (Unit!58509) (OperatorValue!6547 (op!6604 List!40961)) (IdentifierValue!13088 (value!200564 List!40961)) (IdentifierValue!13089 (value!200565 List!40961)) (WhitespaceValue!13089 (value!200566 List!40961)) (True!13088) (False!13088) (Broken!32722 (value!200567 List!40961)) (Broken!32723 (value!200568 List!40961)) (True!13089) (RightBrace!6544) (RightBracket!6544) (Colon!6544) (Null!6544) (Comma!6544) (LeftBracket!6544) (False!13089) (LeftBrace!6544) (ImaginaryLiteralValue!6544 (text!46254 List!40961)) (StringLiteralValue!19632 (value!200569 List!40961)) (EOFValue!6544 (value!200570 List!40961)) (IdentValue!6544 (value!200571 List!40961)) (DelimiterValue!13089 (value!200572 List!40961)) (DedentValue!6544 (value!200573 List!40961)) (NewLineValue!6544 (value!200574 List!40961)) (IntegerValue!19632 (value!200575 (_ BitVec 32)) (text!46255 List!40961)) (IntegerValue!19633 (value!200576 Int) (text!46256 List!40961)) (Times!6544) (Or!6544) (Equal!6544) (Minus!6544) (Broken!32724 (value!200577 List!40961)) (And!6544) (Div!6544) (LessEqual!6544) (Mod!6544) (Concat!17763) (Not!6544) (Plus!6544) (SpaceValue!6544 (value!200578 List!40961)) (IntegerValue!19634 (value!200579 Int) (text!46257 List!40961)) (StringLiteralValue!19633 (text!46258 List!40961)) (FloatLiteralValue!13089 (text!46259 List!40961)) (BytesLiteralValue!6544 (value!200580 List!40961)) (CommentValue!13089 (value!200581 List!40961)) (StringLiteralValue!19634 (value!200582 List!40961)) (ErrorTokenValue!6544 (msg!6605 List!40961)) )
))
(declare-datatypes ((Regex!11219 0))(
  ( (ElementMatch!11219 (c!671224 C!22624)) (Concat!17764 (regOne!22950 Regex!11219) (regTwo!22950 Regex!11219)) (EmptyExpr!11219) (Star!11219 (reg!11548 Regex!11219)) (EmptyLang!11219) (Union!11219 (regOne!22951 Regex!11219) (regTwo!22951 Regex!11219)) )
))
(declare-datatypes ((IArray!25055 0))(
  ( (IArray!25056 (innerList!12585 List!40960)) )
))
(declare-datatypes ((Conc!12525 0))(
  ( (Node!12525 (left!31488 Conc!12525) (right!31818 Conc!12525) (csize!25280 Int) (cheight!12736 Int)) (Leaf!19389 (xs!15831 IArray!25055) (csize!25281 Int)) (Empty!12525) )
))
(declare-datatypes ((BalanceConc!24644 0))(
  ( (BalanceConc!24645 (c!671225 Conc!12525)) )
))
(declare-datatypes ((TokenValueInjection!12516 0))(
  ( (TokenValueInjection!12517 (toValue!8738 Int) (toChars!8597 Int)) )
))
(declare-datatypes ((Rule!12428 0))(
  ( (Rule!12429 (regex!6314 Regex!11219) (tag!7174 String!46437) (isSeparator!6314 Bool) (transformation!6314 TokenValueInjection!12516)) )
))
(declare-datatypes ((Token!11766 0))(
  ( (Token!11767 (value!200583 TokenValue!6544) (rule!9172 Rule!12428) (size!30720 Int) (originalCharacters!6914 List!40960)) )
))
(declare-datatypes ((List!40962 0))(
  ( (Nil!40838) (Cons!40838 (h!46258 Token!11766) (t!312443 List!40962)) )
))
(declare-fun suffixTokens!72 () List!40962)

(declare-fun e!2382255 () Bool)

(declare-fun e!2382254 () Bool)

(declare-fun inv!54990 (String!46437) Bool)

(declare-fun inv!54993 (TokenValueInjection!12516) Bool)

(assert (=> b!3854045 (= e!2382255 (and tp!1168188 (inv!54990 (tag!7174 (rule!9172 (h!46258 suffixTokens!72)))) (inv!54993 (transformation!6314 (rule!9172 (h!46258 suffixTokens!72)))) e!2382254))))

(declare-fun b!3854047 () Bool)

(declare-fun res!1560196 () Bool)

(declare-fun e!2382267 () Bool)

(assert (=> b!3854047 (=> (not res!1560196) (not e!2382267))))

(declare-fun prefixTokens!80 () List!40962)

(declare-fun isEmpty!24174 (List!40962) Bool)

(assert (=> b!3854047 (= res!1560196 (not (isEmpty!24174 prefixTokens!80)))))

(declare-fun b!3854048 () Bool)

(declare-fun e!2382273 () Bool)

(declare-fun e!2382261 () Bool)

(declare-fun tp!1168194 () Bool)

(assert (=> b!3854048 (= e!2382273 (and e!2382261 tp!1168194))))

(declare-fun b!3854049 () Bool)

(declare-fun res!1560212 () Bool)

(declare-fun e!2382263 () Bool)

(assert (=> b!3854049 (=> (not res!1560212) (not e!2382263))))

(declare-fun suffixResult!91 () List!40960)

(declare-datatypes ((LexerInterface!5903 0))(
  ( (LexerInterfaceExt!5900 (__x!25306 Int)) (Lexer!5901) )
))
(declare-fun thiss!20629 () LexerInterface!5903)

(declare-fun suffix!1176 () List!40960)

(declare-datatypes ((List!40963 0))(
  ( (Nil!40839) (Cons!40839 (h!46259 Rule!12428) (t!312444 List!40963)) )
))
(declare-fun rules!2768 () List!40963)

(declare-datatypes ((tuple2!40030 0))(
  ( (tuple2!40031 (_1!23149 List!40962) (_2!23149 List!40960)) )
))
(declare-fun lexList!1671 (LexerInterface!5903 List!40963 List!40960) tuple2!40030)

(assert (=> b!3854049 (= res!1560212 (= (lexList!1671 thiss!20629 rules!2768 suffix!1176) (tuple2!40031 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2382270 () Bool)

(assert (=> b!3854050 (= e!2382270 (and tp!1168187 tp!1168198))))

(declare-fun b!3854051 () Bool)

(declare-fun e!2382276 () Bool)

(declare-fun tp!1168200 () Bool)

(assert (=> b!3854051 (= e!2382261 (and tp!1168200 (inv!54990 (tag!7174 (h!46259 rules!2768))) (inv!54993 (transformation!6314 (h!46259 rules!2768))) e!2382276))))

(declare-fun b!3854052 () Bool)

(declare-fun res!1560206 () Bool)

(assert (=> b!3854052 (=> (not res!1560206) (not e!2382267))))

(declare-fun isEmpty!24175 (List!40960) Bool)

(assert (=> b!3854052 (= res!1560206 (not (isEmpty!24175 prefix!426)))))

(declare-fun b!3854053 () Bool)

(declare-fun e!2382249 () Bool)

(declare-fun tp_is_empty!19409 () Bool)

(declare-fun tp!1168195 () Bool)

(assert (=> b!3854053 (= e!2382249 (and tp_is_empty!19409 tp!1168195))))

(declare-fun b!3854054 () Bool)

(declare-fun e!2382264 () Bool)

(assert (=> b!3854054 (= e!2382271 e!2382264)))

(declare-fun res!1560201 () Bool)

(assert (=> b!3854054 (=> res!1560201 e!2382264)))

(declare-datatypes ((tuple2!40032 0))(
  ( (tuple2!40033 (_1!23150 Token!11766) (_2!23150 List!40960)) )
))
(declare-datatypes ((Option!8732 0))(
  ( (None!8731) (Some!8731 (v!39027 tuple2!40032)) )
))
(declare-fun lt!1338724 () Option!8732)

(declare-fun lt!1338716 () List!40960)

(declare-fun matchR!5366 (Regex!11219 List!40960) Bool)

(assert (=> b!3854054 (= res!1560201 (not (matchR!5366 (regex!6314 (rule!9172 (_1!23150 (v!39027 lt!1338724)))) lt!1338716)))))

(declare-fun lt!1338711 () TokenValue!6544)

(declare-fun lt!1338715 () List!40960)

(declare-fun maxPrefixOneRule!2289 (LexerInterface!5903 Rule!12428 List!40960) Option!8732)

(assert (=> b!3854054 (= (maxPrefixOneRule!2289 thiss!20629 (rule!9172 (_1!23150 (v!39027 lt!1338724))) lt!1338715) (Some!8731 (tuple2!40033 (Token!11767 lt!1338711 (rule!9172 (_1!23150 (v!39027 lt!1338724))) lt!1338713 lt!1338716) (_2!23150 (v!39027 lt!1338724)))))))

(declare-datatypes ((Unit!58510 0))(
  ( (Unit!58511) )
))
(declare-fun lt!1338727 () Unit!58510)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1187 (LexerInterface!5903 List!40963 List!40960 List!40960 List!40960 Rule!12428) Unit!58510)

(assert (=> b!3854054 (= lt!1338727 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1187 thiss!20629 rules!2768 lt!1338716 lt!1338715 (_2!23150 (v!39027 lt!1338724)) (rule!9172 (_1!23150 (v!39027 lt!1338724)))))))

(declare-fun b!3854055 () Bool)

(declare-fun e!2382269 () Bool)

(assert (=> b!3854055 (= e!2382269 e!2382268)))

(declare-fun res!1560200 () Bool)

(assert (=> b!3854055 (=> res!1560200 e!2382268)))

(declare-fun lt!1338726 () Int)

(assert (=> b!3854055 (= res!1560200 (not (= (+ lt!1338713 lt!1338726) lt!1338720)))))

(assert (=> b!3854055 (= lt!1338720 (size!30719 lt!1338715))))

(declare-fun tp!1168196 () Bool)

(declare-fun b!3854056 () Bool)

(declare-fun e!2382252 () Bool)

(declare-fun e!2382258 () Bool)

(declare-fun inv!54994 (Token!11766) Bool)

(assert (=> b!3854056 (= e!2382258 (and (inv!54994 (h!46258 prefixTokens!80)) e!2382252 tp!1168196))))

(declare-fun b!3854057 () Bool)

(declare-fun e!2382260 () Bool)

(assert (=> b!3854057 (= e!2382260 (= (size!30720 (_1!23150 (v!39027 lt!1338724))) (size!30719 (originalCharacters!6914 (_1!23150 (v!39027 lt!1338724))))))))

(declare-fun e!2382272 () Bool)

(declare-fun b!3854058 () Bool)

(declare-fun tp!1168201 () Bool)

(declare-fun inv!21 (TokenValue!6544) Bool)

(assert (=> b!3854058 (= e!2382272 (and (inv!21 (value!200583 (h!46258 suffixTokens!72))) e!2382255 tp!1168201))))

(declare-fun e!2382253 () Bool)

(declare-fun b!3854059 () Bool)

(declare-fun tp!1168193 () Bool)

(assert (=> b!3854059 (= e!2382252 (and (inv!21 (value!200583 (h!46258 prefixTokens!80))) e!2382253 tp!1168193))))

(declare-fun b!3854060 () Bool)

(assert (=> b!3854060 (= e!2382267 e!2382263)))

(declare-fun res!1560207 () Bool)

(assert (=> b!3854060 (=> (not res!1560207) (not e!2382263))))

(declare-fun lt!1338722 () List!40962)

(declare-fun lt!1338723 () tuple2!40030)

(assert (=> b!3854060 (= res!1560207 (= lt!1338723 (tuple2!40031 lt!1338722 suffixResult!91)))))

(assert (=> b!3854060 (= lt!1338723 (lexList!1671 thiss!20629 rules!2768 lt!1338715))))

(declare-fun ++!10385 (List!40962 List!40962) List!40962)

(assert (=> b!3854060 (= lt!1338722 (++!10385 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10386 (List!40960 List!40960) List!40960)

(assert (=> b!3854060 (= lt!1338715 (++!10386 prefix!426 suffix!1176))))

(declare-fun b!3854061 () Bool)

(declare-fun res!1560203 () Bool)

(declare-fun e!2382250 () Bool)

(assert (=> b!3854061 (=> res!1560203 e!2382250)))

(declare-fun lt!1338725 () tuple2!40030)

(assert (=> b!3854061 (= res!1560203 (or (not (= lt!1338725 (tuple2!40031 (_1!23149 lt!1338725) (_2!23149 lt!1338725)))) (= (_2!23150 (v!39027 lt!1338724)) suffix!1176)))))

(declare-fun res!1560205 () Bool)

(assert (=> start!361164 (=> (not res!1560205) (not e!2382267))))

(get-info :version)

(assert (=> start!361164 (= res!1560205 ((_ is Lexer!5901) thiss!20629))))

(assert (=> start!361164 e!2382267))

(assert (=> start!361164 e!2382249))

(assert (=> start!361164 true))

(declare-fun e!2382266 () Bool)

(assert (=> start!361164 e!2382266))

(assert (=> start!361164 e!2382273))

(assert (=> start!361164 e!2382258))

(declare-fun e!2382275 () Bool)

(assert (=> start!361164 e!2382275))

(declare-fun e!2382274 () Bool)

(assert (=> start!361164 e!2382274))

(declare-fun b!3854046 () Bool)

(declare-fun e!2382257 () Bool)

(assert (=> b!3854046 (= e!2382257 (not e!2382250))))

(declare-fun res!1560199 () Bool)

(assert (=> b!3854046 (=> res!1560199 e!2382250)))

(declare-fun lt!1338718 () List!40960)

(assert (=> b!3854046 (= res!1560199 (not (= lt!1338718 lt!1338715)))))

(assert (=> b!3854046 (= lt!1338725 (lexList!1671 thiss!20629 rules!2768 (_2!23150 (v!39027 lt!1338724))))))

(declare-fun lt!1338710 () List!40960)

(assert (=> b!3854046 (and (= (size!30720 (_1!23150 (v!39027 lt!1338724))) lt!1338713) (= (originalCharacters!6914 (_1!23150 (v!39027 lt!1338724))) lt!1338716) (= (v!39027 lt!1338724) (tuple2!40033 (Token!11767 lt!1338711 (rule!9172 (_1!23150 (v!39027 lt!1338724))) lt!1338713 lt!1338716) lt!1338710)))))

(assert (=> b!3854046 (= lt!1338713 (size!30719 lt!1338716))))

(assert (=> b!3854046 e!2382260))

(declare-fun res!1560208 () Bool)

(assert (=> b!3854046 (=> (not res!1560208) (not e!2382260))))

(assert (=> b!3854046 (= res!1560208 (= (value!200583 (_1!23150 (v!39027 lt!1338724))) lt!1338711))))

(declare-fun apply!9557 (TokenValueInjection!12516 BalanceConc!24644) TokenValue!6544)

(declare-fun seqFromList!4585 (List!40960) BalanceConc!24644)

(assert (=> b!3854046 (= lt!1338711 (apply!9557 (transformation!6314 (rule!9172 (_1!23150 (v!39027 lt!1338724)))) (seqFromList!4585 lt!1338716)))))

(assert (=> b!3854046 (= (_2!23150 (v!39027 lt!1338724)) lt!1338710)))

(declare-fun lt!1338717 () Unit!58510)

(declare-fun lemmaSamePrefixThenSameSuffix!1634 (List!40960 List!40960 List!40960 List!40960 List!40960) Unit!58510)

(assert (=> b!3854046 (= lt!1338717 (lemmaSamePrefixThenSameSuffix!1634 lt!1338716 (_2!23150 (v!39027 lt!1338724)) lt!1338716 lt!1338710 lt!1338715))))

(declare-fun getSuffix!1868 (List!40960 List!40960) List!40960)

(assert (=> b!3854046 (= lt!1338710 (getSuffix!1868 lt!1338715 lt!1338716))))

(declare-fun isPrefix!3413 (List!40960 List!40960) Bool)

(assert (=> b!3854046 (isPrefix!3413 lt!1338716 lt!1338718)))

(assert (=> b!3854046 (= lt!1338718 (++!10386 lt!1338716 (_2!23150 (v!39027 lt!1338724))))))

(declare-fun lt!1338729 () Unit!58510)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2276 (List!40960 List!40960) Unit!58510)

(assert (=> b!3854046 (= lt!1338729 (lemmaConcatTwoListThenFirstIsPrefix!2276 lt!1338716 (_2!23150 (v!39027 lt!1338724))))))

(declare-fun list!15202 (BalanceConc!24644) List!40960)

(declare-fun charsOf!4142 (Token!11766) BalanceConc!24644)

(assert (=> b!3854046 (= lt!1338716 (list!15202 (charsOf!4142 (_1!23150 (v!39027 lt!1338724)))))))

(declare-fun ruleValid!2266 (LexerInterface!5903 Rule!12428) Bool)

(assert (=> b!3854046 (ruleValid!2266 thiss!20629 (rule!9172 (_1!23150 (v!39027 lt!1338724))))))

(declare-fun lt!1338728 () Unit!58510)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1346 (LexerInterface!5903 Rule!12428 List!40963) Unit!58510)

(assert (=> b!3854046 (= lt!1338728 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1346 thiss!20629 (rule!9172 (_1!23150 (v!39027 lt!1338724))) rules!2768))))

(declare-fun lt!1338709 () Unit!58510)

(declare-fun lemmaCharactersSize!975 (Token!11766) Unit!58510)

(assert (=> b!3854046 (= lt!1338709 (lemmaCharactersSize!975 (_1!23150 (v!39027 lt!1338724))))))

(declare-fun b!3854062 () Bool)

(declare-fun res!1560204 () Bool)

(assert (=> b!3854062 (=> res!1560204 e!2382250)))

(assert (=> b!3854062 (= res!1560204 (not (= lt!1338723 (tuple2!40031 (++!10385 (Cons!40838 (_1!23150 (v!39027 lt!1338724)) Nil!40838) (_1!23149 lt!1338725)) (_2!23149 lt!1338725)))))))

(declare-fun b!3854063 () Bool)

(assert (=> b!3854063 (= e!2382263 e!2382257)))

(declare-fun res!1560202 () Bool)

(assert (=> b!3854063 (=> (not res!1560202) (not e!2382257))))

(assert (=> b!3854063 (= res!1560202 ((_ is Some!8731) lt!1338724))))

(declare-fun maxPrefix!3207 (LexerInterface!5903 List!40963 List!40960) Option!8732)

(assert (=> b!3854063 (= lt!1338724 (maxPrefix!3207 thiss!20629 rules!2768 lt!1338715))))

(declare-fun b!3854064 () Bool)

(declare-fun res!1560209 () Bool)

(assert (=> b!3854064 (=> (not res!1560209) (not e!2382267))))

(declare-fun isEmpty!24176 (List!40963) Bool)

(assert (=> b!3854064 (= res!1560209 (not (isEmpty!24176 rules!2768)))))

(declare-fun b!3854065 () Bool)

(declare-fun tp!1168202 () Bool)

(assert (=> b!3854065 (= e!2382253 (and tp!1168202 (inv!54990 (tag!7174 (rule!9172 (h!46258 prefixTokens!80)))) (inv!54993 (transformation!6314 (rule!9172 (h!46258 prefixTokens!80)))) e!2382270))))

(declare-fun tp!1168197 () Bool)

(declare-fun b!3854066 () Bool)

(assert (=> b!3854066 (= e!2382275 (and (inv!54994 (h!46258 suffixTokens!72)) e!2382272 tp!1168197))))

(declare-fun b!3854067 () Bool)

(declare-fun e!2382251 () Bool)

(assert (=> b!3854067 (= e!2382251 true)))

(declare-fun lt!1338712 () Int)

(declare-fun lt!1338721 () tuple2!40032)

(assert (=> b!3854067 (= lt!1338712 (size!30719 (_2!23150 lt!1338721)))))

(declare-fun b!3854068 () Bool)

(assert (=> b!3854068 (= e!2382264 e!2382251)))

(declare-fun res!1560198 () Bool)

(assert (=> b!3854068 (=> res!1560198 e!2382251)))

(declare-fun head!8108 (List!40962) Token!11766)

(assert (=> b!3854068 (= res!1560198 (not (= (_1!23150 lt!1338721) (head!8108 prefixTokens!80))))))

(declare-fun get!13511 (Option!8732) tuple2!40032)

(assert (=> b!3854068 (= lt!1338721 (get!13511 lt!1338724))))

(declare-fun b!3854069 () Bool)

(declare-fun res!1560210 () Bool)

(assert (=> b!3854069 (=> (not res!1560210) (not e!2382267))))

(declare-fun rulesInvariant!5246 (LexerInterface!5903 List!40963) Bool)

(assert (=> b!3854069 (= res!1560210 (rulesInvariant!5246 thiss!20629 rules!2768))))

(assert (=> b!3854070 (= e!2382254 (and tp!1168191 tp!1168189))))

(declare-fun b!3854071 () Bool)

(declare-fun tp!1168199 () Bool)

(assert (=> b!3854071 (= e!2382274 (and tp_is_empty!19409 tp!1168199))))

(declare-fun b!3854072 () Bool)

(declare-fun tp!1168190 () Bool)

(assert (=> b!3854072 (= e!2382266 (and tp_is_empty!19409 tp!1168190))))

(declare-fun b!3854073 () Bool)

(assert (=> b!3854073 (= e!2382250 e!2382269)))

(declare-fun res!1560211 () Bool)

(assert (=> b!3854073 (=> res!1560211 e!2382269)))

(assert (=> b!3854073 (= res!1560211 (>= lt!1338726 lt!1338714))))

(assert (=> b!3854073 (= lt!1338714 (size!30719 suffix!1176))))

(assert (=> b!3854073 (= lt!1338726 (size!30719 (_2!23150 (v!39027 lt!1338724))))))

(assert (=> b!3854074 (= e!2382276 (and tp!1168186 tp!1168192))))

(assert (= (and start!361164 res!1560205) b!3854064))

(assert (= (and b!3854064 res!1560209) b!3854069))

(assert (= (and b!3854069 res!1560210) b!3854047))

(assert (= (and b!3854047 res!1560196) b!3854052))

(assert (= (and b!3854052 res!1560206) b!3854060))

(assert (= (and b!3854060 res!1560207) b!3854049))

(assert (= (and b!3854049 res!1560212) b!3854063))

(assert (= (and b!3854063 res!1560202) b!3854046))

(assert (= (and b!3854046 res!1560208) b!3854057))

(assert (= (and b!3854046 (not res!1560199)) b!3854062))

(assert (= (and b!3854062 (not res!1560204)) b!3854061))

(assert (= (and b!3854061 (not res!1560203)) b!3854073))

(assert (= (and b!3854073 (not res!1560211)) b!3854055))

(assert (= (and b!3854055 (not res!1560200)) b!3854044))

(assert (= (and b!3854044 (not res!1560197)) b!3854054))

(assert (= (and b!3854054 (not res!1560201)) b!3854068))

(assert (= (and b!3854068 (not res!1560198)) b!3854067))

(assert (= (and start!361164 ((_ is Cons!40836) suffixResult!91)) b!3854053))

(assert (= (and start!361164 ((_ is Cons!40836) suffix!1176)) b!3854072))

(assert (= b!3854051 b!3854074))

(assert (= b!3854048 b!3854051))

(assert (= (and start!361164 ((_ is Cons!40839) rules!2768)) b!3854048))

(assert (= b!3854065 b!3854050))

(assert (= b!3854059 b!3854065))

(assert (= b!3854056 b!3854059))

(assert (= (and start!361164 ((_ is Cons!40838) prefixTokens!80)) b!3854056))

(assert (= b!3854045 b!3854070))

(assert (= b!3854058 b!3854045))

(assert (= b!3854066 b!3854058))

(assert (= (and start!361164 ((_ is Cons!40838) suffixTokens!72)) b!3854066))

(assert (= (and start!361164 ((_ is Cons!40836) prefix!426)) b!3854071))

(declare-fun m!4409335 () Bool)

(assert (=> b!3854057 m!4409335))

(declare-fun m!4409337 () Bool)

(assert (=> b!3854062 m!4409337))

(declare-fun m!4409339 () Bool)

(assert (=> b!3854058 m!4409339))

(declare-fun m!4409341 () Bool)

(assert (=> b!3854073 m!4409341))

(declare-fun m!4409343 () Bool)

(assert (=> b!3854073 m!4409343))

(declare-fun m!4409345 () Bool)

(assert (=> b!3854065 m!4409345))

(declare-fun m!4409347 () Bool)

(assert (=> b!3854065 m!4409347))

(declare-fun m!4409349 () Bool)

(assert (=> b!3854049 m!4409349))

(declare-fun m!4409351 () Bool)

(assert (=> b!3854060 m!4409351))

(declare-fun m!4409353 () Bool)

(assert (=> b!3854060 m!4409353))

(declare-fun m!4409355 () Bool)

(assert (=> b!3854060 m!4409355))

(declare-fun m!4409357 () Bool)

(assert (=> b!3854046 m!4409357))

(declare-fun m!4409359 () Bool)

(assert (=> b!3854046 m!4409359))

(declare-fun m!4409361 () Bool)

(assert (=> b!3854046 m!4409361))

(declare-fun m!4409363 () Bool)

(assert (=> b!3854046 m!4409363))

(declare-fun m!4409365 () Bool)

(assert (=> b!3854046 m!4409365))

(declare-fun m!4409367 () Bool)

(assert (=> b!3854046 m!4409367))

(declare-fun m!4409369 () Bool)

(assert (=> b!3854046 m!4409369))

(declare-fun m!4409371 () Bool)

(assert (=> b!3854046 m!4409371))

(assert (=> b!3854046 m!4409359))

(declare-fun m!4409373 () Bool)

(assert (=> b!3854046 m!4409373))

(assert (=> b!3854046 m!4409367))

(declare-fun m!4409375 () Bool)

(assert (=> b!3854046 m!4409375))

(declare-fun m!4409377 () Bool)

(assert (=> b!3854046 m!4409377))

(declare-fun m!4409379 () Bool)

(assert (=> b!3854046 m!4409379))

(declare-fun m!4409381 () Bool)

(assert (=> b!3854046 m!4409381))

(declare-fun m!4409383 () Bool)

(assert (=> b!3854046 m!4409383))

(declare-fun m!4409385 () Bool)

(assert (=> b!3854055 m!4409385))

(declare-fun m!4409387 () Bool)

(assert (=> b!3854063 m!4409387))

(declare-fun m!4409389 () Bool)

(assert (=> b!3854044 m!4409389))

(declare-fun m!4409391 () Bool)

(assert (=> b!3854056 m!4409391))

(declare-fun m!4409393 () Bool)

(assert (=> b!3854051 m!4409393))

(declare-fun m!4409395 () Bool)

(assert (=> b!3854051 m!4409395))

(declare-fun m!4409397 () Bool)

(assert (=> b!3854066 m!4409397))

(declare-fun m!4409399 () Bool)

(assert (=> b!3854068 m!4409399))

(declare-fun m!4409401 () Bool)

(assert (=> b!3854068 m!4409401))

(declare-fun m!4409403 () Bool)

(assert (=> b!3854069 m!4409403))

(declare-fun m!4409405 () Bool)

(assert (=> b!3854064 m!4409405))

(declare-fun m!4409407 () Bool)

(assert (=> b!3854054 m!4409407))

(declare-fun m!4409409 () Bool)

(assert (=> b!3854054 m!4409409))

(declare-fun m!4409411 () Bool)

(assert (=> b!3854054 m!4409411))

(declare-fun m!4409413 () Bool)

(assert (=> b!3854059 m!4409413))

(declare-fun m!4409415 () Bool)

(assert (=> b!3854052 m!4409415))

(declare-fun m!4409417 () Bool)

(assert (=> b!3854047 m!4409417))

(declare-fun m!4409419 () Bool)

(assert (=> b!3854067 m!4409419))

(declare-fun m!4409421 () Bool)

(assert (=> b!3854045 m!4409421))

(declare-fun m!4409423 () Bool)

(assert (=> b!3854045 m!4409423))

(check-sat b_and!288099 (not b!3854067) (not b!3854072) (not b!3854073) b_and!288109 (not b_next!104091) (not b!3854058) tp_is_empty!19409 (not b!3854048) (not b!3854071) (not b!3854065) (not b!3854044) (not b!3854047) (not b!3854045) (not b!3854049) (not b!3854046) (not b!3854056) (not b!3854059) (not b!3854063) b_and!288107 b_and!288101 b_and!288105 (not b!3854068) (not b!3854053) (not b!3854052) (not b!3854055) (not b!3854054) (not b!3854069) (not b_next!104087) (not b_next!104089) (not b!3854057) (not b!3854051) (not b_next!104085) (not b_next!104095) (not b!3854066) b_and!288103 (not b!3854064) (not b!3854060) (not b_next!104093) (not b!3854062))
(check-sat b_and!288099 b_and!288105 (not b_next!104087) b_and!288109 (not b_next!104091) (not b_next!104089) (not b_next!104085) (not b_next!104093) b_and!288107 b_and!288101 (not b_next!104095) b_and!288103)

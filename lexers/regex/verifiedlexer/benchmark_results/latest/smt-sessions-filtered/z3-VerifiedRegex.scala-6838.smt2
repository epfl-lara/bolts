; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359640 () Bool)

(assert start!359640)

(declare-fun b!3840616 () Bool)

(declare-fun b_free!102377 () Bool)

(declare-fun b_next!103081 () Bool)

(assert (=> b!3840616 (= b_free!102377 (not b_next!103081))))

(declare-fun tp!1163243 () Bool)

(declare-fun b_and!286055 () Bool)

(assert (=> b!3840616 (= tp!1163243 b_and!286055)))

(declare-fun b_free!102379 () Bool)

(declare-fun b_next!103083 () Bool)

(assert (=> b!3840616 (= b_free!102379 (not b_next!103083))))

(declare-fun tp!1163260 () Bool)

(declare-fun b_and!286057 () Bool)

(assert (=> b!3840616 (= tp!1163260 b_and!286057)))

(declare-fun b!3840638 () Bool)

(declare-fun b_free!102381 () Bool)

(declare-fun b_next!103085 () Bool)

(assert (=> b!3840638 (= b_free!102381 (not b_next!103085))))

(declare-fun tp!1163251 () Bool)

(declare-fun b_and!286059 () Bool)

(assert (=> b!3840638 (= tp!1163251 b_and!286059)))

(declare-fun b_free!102383 () Bool)

(declare-fun b_next!103087 () Bool)

(assert (=> b!3840638 (= b_free!102383 (not b_next!103087))))

(declare-fun tp!1163262 () Bool)

(declare-fun b_and!286061 () Bool)

(assert (=> b!3840638 (= tp!1163262 b_and!286061)))

(declare-fun b!3840641 () Bool)

(declare-fun b_free!102385 () Bool)

(declare-fun b_next!103089 () Bool)

(assert (=> b!3840641 (= b_free!102385 (not b_next!103089))))

(declare-fun tp!1163253 () Bool)

(declare-fun b_and!286063 () Bool)

(assert (=> b!3840641 (= tp!1163253 b_and!286063)))

(declare-fun b_free!102387 () Bool)

(declare-fun b_next!103091 () Bool)

(assert (=> b!3840641 (= b_free!102387 (not b_next!103091))))

(declare-fun tp!1163259 () Bool)

(declare-fun b_and!286065 () Bool)

(assert (=> b!3840641 (= tp!1163259 b_and!286065)))

(declare-fun b!3840626 () Bool)

(declare-fun b_free!102389 () Bool)

(declare-fun b_next!103093 () Bool)

(assert (=> b!3840626 (= b_free!102389 (not b_next!103093))))

(declare-fun tp!1163244 () Bool)

(declare-fun b_and!286067 () Bool)

(assert (=> b!3840626 (= tp!1163244 b_and!286067)))

(declare-fun b_free!102391 () Bool)

(declare-fun b_next!103095 () Bool)

(assert (=> b!3840626 (= b_free!102391 (not b_next!103095))))

(declare-fun tp!1163256 () Bool)

(declare-fun b_and!286069 () Bool)

(assert (=> b!3840626 (= tp!1163256 b_and!286069)))

(declare-fun b!3840610 () Bool)

(declare-fun res!1554437 () Bool)

(declare-fun e!2372558 () Bool)

(assert (=> b!3840610 (=> (not res!1554437) (not e!2372558))))

(declare-datatypes ((LexerInterface!5853 0))(
  ( (LexerInterfaceExt!5850 (__x!25205 Int)) (Lexer!5851) )
))
(declare-fun thiss!20629 () LexerInterface!5853)

(declare-datatypes ((C!22524 0))(
  ( (C!22525 (val!13356 Int)) )
))
(declare-datatypes ((List!40740 0))(
  ( (Nil!40616) (Cons!40616 (h!46036 C!22524) (t!310409 List!40740)) )
))
(declare-datatypes ((IArray!24955 0))(
  ( (IArray!24956 (innerList!12535 List!40740)) )
))
(declare-datatypes ((Conc!12475 0))(
  ( (Node!12475 (left!31381 Conc!12475) (right!31711 Conc!12475) (csize!25180 Int) (cheight!12686 Int)) (Leaf!19314 (xs!15781 IArray!24955) (csize!25181 Int)) (Empty!12475) )
))
(declare-datatypes ((BalanceConc!24544 0))(
  ( (BalanceConc!24545 (c!669398 Conc!12475)) )
))
(declare-datatypes ((List!40741 0))(
  ( (Nil!40617) (Cons!40617 (h!46037 (_ BitVec 16)) (t!310410 List!40741)) )
))
(declare-datatypes ((TokenValue!6494 0))(
  ( (FloatLiteralValue!12988 (text!45903 List!40741)) (TokenValueExt!6493 (__x!25206 Int)) (Broken!32470 (value!199132 List!40741)) (Object!6617) (End!6494) (Def!6494) (Underscore!6494) (Match!6494) (Else!6494) (Error!6494) (Case!6494) (If!6494) (Extends!6494) (Abstract!6494) (Class!6494) (Val!6494) (DelimiterValue!12988 (del!6554 List!40741)) (KeywordValue!6500 (value!199133 List!40741)) (CommentValue!12988 (value!199134 List!40741)) (WhitespaceValue!12988 (value!199135 List!40741)) (IndentationValue!6494 (value!199136 List!40741)) (String!46187) (Int32!6494) (Broken!32471 (value!199137 List!40741)) (Boolean!6495) (Unit!58327) (OperatorValue!6497 (op!6554 List!40741)) (IdentifierValue!12988 (value!199138 List!40741)) (IdentifierValue!12989 (value!199139 List!40741)) (WhitespaceValue!12989 (value!199140 List!40741)) (True!12988) (False!12988) (Broken!32472 (value!199141 List!40741)) (Broken!32473 (value!199142 List!40741)) (True!12989) (RightBrace!6494) (RightBracket!6494) (Colon!6494) (Null!6494) (Comma!6494) (LeftBracket!6494) (False!12989) (LeftBrace!6494) (ImaginaryLiteralValue!6494 (text!45904 List!40741)) (StringLiteralValue!19482 (value!199143 List!40741)) (EOFValue!6494 (value!199144 List!40741)) (IdentValue!6494 (value!199145 List!40741)) (DelimiterValue!12989 (value!199146 List!40741)) (DedentValue!6494 (value!199147 List!40741)) (NewLineValue!6494 (value!199148 List!40741)) (IntegerValue!19482 (value!199149 (_ BitVec 32)) (text!45905 List!40741)) (IntegerValue!19483 (value!199150 Int) (text!45906 List!40741)) (Times!6494) (Or!6494) (Equal!6494) (Minus!6494) (Broken!32474 (value!199151 List!40741)) (And!6494) (Div!6494) (LessEqual!6494) (Mod!6494) (Concat!17663) (Not!6494) (Plus!6494) (SpaceValue!6494 (value!199152 List!40741)) (IntegerValue!19484 (value!199153 Int) (text!45907 List!40741)) (StringLiteralValue!19483 (text!45908 List!40741)) (FloatLiteralValue!12989 (text!45909 List!40741)) (BytesLiteralValue!6494 (value!199154 List!40741)) (CommentValue!12989 (value!199155 List!40741)) (StringLiteralValue!19484 (value!199156 List!40741)) (ErrorTokenValue!6494 (msg!6555 List!40741)) )
))
(declare-datatypes ((Regex!11169 0))(
  ( (ElementMatch!11169 (c!669399 C!22524)) (Concat!17664 (regOne!22850 Regex!11169) (regTwo!22850 Regex!11169)) (EmptyExpr!11169) (Star!11169 (reg!11498 Regex!11169)) (EmptyLang!11169) (Union!11169 (regOne!22851 Regex!11169) (regTwo!22851 Regex!11169)) )
))
(declare-datatypes ((String!46188 0))(
  ( (String!46189 (value!199157 String)) )
))
(declare-datatypes ((TokenValueInjection!12416 0))(
  ( (TokenValueInjection!12417 (toValue!8680 Int) (toChars!8539 Int)) )
))
(declare-datatypes ((Rule!12328 0))(
  ( (Rule!12329 (regex!6264 Regex!11169) (tag!7124 String!46188) (isSeparator!6264 Bool) (transformation!6264 TokenValueInjection!12416)) )
))
(declare-datatypes ((List!40742 0))(
  ( (Nil!40618) (Cons!40618 (h!46038 Rule!12328) (t!310411 List!40742)) )
))
(declare-fun rules!2768 () List!40742)

(declare-fun rulesInvariant!5196 (LexerInterface!5853 List!40742) Bool)

(assert (=> b!3840610 (= res!1554437 (rulesInvariant!5196 thiss!20629 rules!2768))))

(declare-fun b!3840611 () Bool)

(declare-fun e!2372563 () Bool)

(assert (=> b!3840611 (= e!2372563 true)))

(declare-fun lt!1332902 () Bool)

(declare-fun rulesValidInductive!2214 (LexerInterface!5853 List!40742) Bool)

(assert (=> b!3840611 (= lt!1332902 (rulesValidInductive!2214 thiss!20629 rules!2768))))

(declare-fun e!2372545 () Bool)

(assert (=> b!3840611 e!2372545))

(declare-fun res!1554440 () Bool)

(assert (=> b!3840611 (=> (not res!1554440) (not e!2372545))))

(declare-fun lt!1332892 () List!40740)

(declare-fun isPrefix!3363 (List!40740 List!40740) Bool)

(assert (=> b!3840611 (= res!1554440 (isPrefix!3363 lt!1332892 lt!1332892))))

(declare-datatypes ((Unit!58328 0))(
  ( (Unit!58329) )
))
(declare-fun lt!1332899 () Unit!58328)

(declare-fun lemmaIsPrefixRefl!2136 (List!40740 List!40740) Unit!58328)

(assert (=> b!3840611 (= lt!1332899 (lemmaIsPrefixRefl!2136 lt!1332892 lt!1332892))))

(declare-datatypes ((Token!11666 0))(
  ( (Token!11667 (value!199158 TokenValue!6494) (rule!9102 Rule!12328) (size!30575 Int) (originalCharacters!6864 List!40740)) )
))
(declare-datatypes ((List!40743 0))(
  ( (Nil!40619) (Cons!40619 (h!46039 Token!11666) (t!310412 List!40743)) )
))
(declare-datatypes ((tuple2!39790 0))(
  ( (tuple2!39791 (_1!23029 List!40743) (_2!23029 List!40740)) )
))
(declare-fun lt!1332903 () tuple2!39790)

(declare-datatypes ((tuple2!39792 0))(
  ( (tuple2!39793 (_1!23030 Token!11666) (_2!23030 List!40740)) )
))
(declare-datatypes ((Option!8682 0))(
  ( (None!8681) (Some!8681 (v!38973 tuple2!39792)) )
))
(declare-fun lt!1332898 () Option!8682)

(declare-fun lt!1332894 () tuple2!39790)

(assert (=> b!3840611 (= lt!1332903 (tuple2!39791 (Cons!40619 (_1!23030 (v!38973 lt!1332898)) (_1!23029 lt!1332894)) (_2!23029 lt!1332894)))))

(declare-fun b!3840612 () Bool)

(declare-fun e!2372566 () Bool)

(declare-fun e!2372555 () Bool)

(declare-fun tp!1163264 () Bool)

(assert (=> b!3840612 (= e!2372566 (and e!2372555 tp!1163264))))

(declare-fun e!2372541 () Bool)

(declare-fun prefixTokens!80 () List!40743)

(declare-fun b!3840613 () Bool)

(declare-fun tp!1163257 () Bool)

(declare-fun e!2372569 () Bool)

(declare-fun inv!21 (TokenValue!6494) Bool)

(assert (=> b!3840613 (= e!2372541 (and (inv!21 (value!199158 (h!46039 prefixTokens!80))) e!2372569 tp!1163257))))

(declare-fun b!3840614 () Bool)

(declare-fun res!1554441 () Bool)

(assert (=> b!3840614 (=> (not res!1554441) (not e!2372558))))

(declare-fun isEmpty!24004 (List!40742) Bool)

(assert (=> b!3840614 (= res!1554441 (not (isEmpty!24004 rules!2768)))))

(declare-fun b!3840615 () Bool)

(assert (=> b!3840615 true))

(declare-fun e!2372554 () Bool)

(assert (=> b!3840615 e!2372554))

(declare-fun e!2372567 () Option!8682)

(declare-fun err!4209 () Option!8682)

(assert (=> b!3840615 (= e!2372567 err!4209)))

(declare-fun e!2372571 () Bool)

(assert (=> b!3840616 (= e!2372571 (and tp!1163243 tp!1163260))))

(declare-fun tp!1163258 () Bool)

(declare-fun b!3840617 () Bool)

(declare-fun e!2372557 () Bool)

(declare-fun inv!54764 (String!46188) Bool)

(declare-fun inv!54767 (TokenValueInjection!12416) Bool)

(assert (=> b!3840617 (= e!2372557 (and tp!1163258 (inv!54764 (tag!7124 (rule!9102 (_1!23030 (v!38973 err!4209))))) (inv!54767 (transformation!6264 (rule!9102 (_1!23030 (v!38973 err!4209))))) e!2372571))))

(declare-fun res!1554447 () Bool)

(assert (=> start!359640 (=> (not res!1554447) (not e!2372558))))

(get-info :version)

(assert (=> start!359640 (= res!1554447 ((_ is Lexer!5851) thiss!20629))))

(assert (=> start!359640 e!2372558))

(declare-fun e!2372568 () Bool)

(assert (=> start!359640 e!2372568))

(assert (=> start!359640 true))

(declare-fun e!2372543 () Bool)

(assert (=> start!359640 e!2372543))

(assert (=> start!359640 e!2372566))

(declare-fun e!2372552 () Bool)

(assert (=> start!359640 e!2372552))

(declare-fun e!2372550 () Bool)

(assert (=> start!359640 e!2372550))

(declare-fun e!2372553 () Bool)

(assert (=> start!359640 e!2372553))

(declare-fun b!3840618 () Bool)

(declare-fun res!1554439 () Bool)

(assert (=> b!3840618 (=> (not res!1554439) (not e!2372558))))

(declare-fun prefix!426 () List!40740)

(declare-fun isEmpty!24005 (List!40740) Bool)

(assert (=> b!3840618 (= res!1554439 (not (isEmpty!24005 prefix!426)))))

(declare-fun e!2372547 () Bool)

(declare-fun b!3840619 () Bool)

(declare-fun tp!1163252 () Bool)

(assert (=> b!3840619 (= e!2372555 (and tp!1163252 (inv!54764 (tag!7124 (h!46038 rules!2768))) (inv!54767 (transformation!6264 (h!46038 rules!2768))) e!2372547))))

(declare-fun b!3840620 () Bool)

(declare-fun res!1554448 () Bool)

(assert (=> b!3840620 (=> (not res!1554448) (not e!2372558))))

(declare-fun isEmpty!24006 (List!40743) Bool)

(assert (=> b!3840620 (= res!1554448 (not (isEmpty!24006 prefixTokens!80)))))

(declare-fun b!3840621 () Bool)

(declare-fun e!2372540 () Option!8682)

(assert (=> b!3840621 (= e!2372545 (= lt!1332898 e!2372540))))

(declare-fun c!669396 () Bool)

(assert (=> b!3840621 (= c!669396 (and ((_ is Cons!40618) rules!2768) ((_ is Nil!40618) (t!310411 rules!2768))))))

(declare-fun b!3840622 () Bool)

(assert (=> b!3840622 (= e!2372540 e!2372567)))

(declare-fun c!669397 () Bool)

(assert (=> b!3840622 (= c!669397 ((_ is Cons!40618) rules!2768))))

(declare-fun b!3840623 () Bool)

(declare-fun tp!1163250 () Bool)

(declare-fun suffixTokens!72 () List!40743)

(declare-fun e!2372560 () Bool)

(declare-fun e!2372544 () Bool)

(assert (=> b!3840623 (= e!2372560 (and tp!1163250 (inv!54764 (tag!7124 (rule!9102 (h!46039 suffixTokens!72)))) (inv!54767 (transformation!6264 (rule!9102 (h!46039 suffixTokens!72)))) e!2372544))))

(declare-fun tp!1163263 () Bool)

(declare-fun e!2372570 () Bool)

(declare-fun b!3840624 () Bool)

(declare-fun inv!54768 (Token!11666) Bool)

(assert (=> b!3840624 (= e!2372550 (and (inv!54768 (h!46039 suffixTokens!72)) e!2372570 tp!1163263))))

(declare-fun tp!1163249 () Bool)

(declare-fun b!3840625 () Bool)

(declare-fun e!2372564 () Bool)

(assert (=> b!3840625 (= e!2372564 (and (inv!21 (value!199158 (_1!23030 (v!38973 err!4209)))) e!2372557 tp!1163249))))

(declare-fun e!2372546 () Bool)

(assert (=> b!3840626 (= e!2372546 (and tp!1163244 tp!1163256))))

(declare-fun b!3840627 () Bool)

(declare-fun res!1554445 () Bool)

(assert (=> b!3840627 (=> res!1554445 e!2372563)))

(declare-fun ++!10285 (List!40743 List!40743) List!40743)

(assert (=> b!3840627 (= res!1554445 (not (= lt!1332903 (tuple2!39791 (++!10285 (Cons!40619 (_1!23030 (v!38973 lt!1332898)) Nil!40619) (_1!23029 lt!1332894)) (_2!23029 lt!1332894)))))))

(declare-fun tp!1163248 () Bool)

(declare-fun b!3840628 () Bool)

(assert (=> b!3840628 (= e!2372552 (and (inv!54768 (h!46039 prefixTokens!80)) e!2372541 tp!1163248))))

(declare-fun b!3840629 () Bool)

(declare-fun tp!1163254 () Bool)

(assert (=> b!3840629 (= e!2372569 (and tp!1163254 (inv!54764 (tag!7124 (rule!9102 (h!46039 prefixTokens!80)))) (inv!54767 (transformation!6264 (rule!9102 (h!46039 prefixTokens!80)))) e!2372546))))

(declare-fun b!3840630 () Bool)

(declare-fun e!2372542 () Bool)

(assert (=> b!3840630 (= e!2372542 (not e!2372563))))

(declare-fun res!1554443 () Bool)

(assert (=> b!3840630 (=> res!1554443 e!2372563)))

(declare-fun lt!1332889 () List!40740)

(assert (=> b!3840630 (= res!1554443 (not (= lt!1332889 lt!1332892)))))

(declare-fun lexList!1621 (LexerInterface!5853 List!40742 List!40740) tuple2!39790)

(assert (=> b!3840630 (= lt!1332894 (lexList!1621 thiss!20629 rules!2768 (_2!23030 (v!38973 lt!1332898))))))

(declare-fun lt!1332904 () List!40740)

(declare-fun lt!1332897 () Int)

(declare-fun lt!1332905 () List!40740)

(declare-fun lt!1332890 () TokenValue!6494)

(assert (=> b!3840630 (and (= (size!30575 (_1!23030 (v!38973 lt!1332898))) lt!1332897) (= (originalCharacters!6864 (_1!23030 (v!38973 lt!1332898))) lt!1332905) (= (v!38973 lt!1332898) (tuple2!39793 (Token!11667 lt!1332890 (rule!9102 (_1!23030 (v!38973 lt!1332898))) lt!1332897 lt!1332905) lt!1332904)))))

(declare-fun size!30576 (List!40740) Int)

(assert (=> b!3840630 (= lt!1332897 (size!30576 lt!1332905))))

(declare-fun e!2372562 () Bool)

(assert (=> b!3840630 e!2372562))

(declare-fun res!1554446 () Bool)

(assert (=> b!3840630 (=> (not res!1554446) (not e!2372562))))

(assert (=> b!3840630 (= res!1554446 (= (value!199158 (_1!23030 (v!38973 lt!1332898))) lt!1332890))))

(declare-fun apply!9507 (TokenValueInjection!12416 BalanceConc!24544) TokenValue!6494)

(declare-fun seqFromList!4535 (List!40740) BalanceConc!24544)

(assert (=> b!3840630 (= lt!1332890 (apply!9507 (transformation!6264 (rule!9102 (_1!23030 (v!38973 lt!1332898)))) (seqFromList!4535 lt!1332905)))))

(assert (=> b!3840630 (= (_2!23030 (v!38973 lt!1332898)) lt!1332904)))

(declare-fun lt!1332891 () Unit!58328)

(declare-fun lemmaSamePrefixThenSameSuffix!1584 (List!40740 List!40740 List!40740 List!40740 List!40740) Unit!58328)

(assert (=> b!3840630 (= lt!1332891 (lemmaSamePrefixThenSameSuffix!1584 lt!1332905 (_2!23030 (v!38973 lt!1332898)) lt!1332905 lt!1332904 lt!1332892))))

(declare-fun getSuffix!1818 (List!40740 List!40740) List!40740)

(assert (=> b!3840630 (= lt!1332904 (getSuffix!1818 lt!1332892 lt!1332905))))

(assert (=> b!3840630 (isPrefix!3363 lt!1332905 lt!1332889)))

(declare-fun ++!10286 (List!40740 List!40740) List!40740)

(assert (=> b!3840630 (= lt!1332889 (++!10286 lt!1332905 (_2!23030 (v!38973 lt!1332898))))))

(declare-fun lt!1332895 () Unit!58328)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2226 (List!40740 List!40740) Unit!58328)

(assert (=> b!3840630 (= lt!1332895 (lemmaConcatTwoListThenFirstIsPrefix!2226 lt!1332905 (_2!23030 (v!38973 lt!1332898))))))

(declare-fun list!15128 (BalanceConc!24544) List!40740)

(declare-fun charsOf!4092 (Token!11666) BalanceConc!24544)

(assert (=> b!3840630 (= lt!1332905 (list!15128 (charsOf!4092 (_1!23030 (v!38973 lt!1332898)))))))

(declare-fun ruleValid!2216 (LexerInterface!5853 Rule!12328) Bool)

(assert (=> b!3840630 (ruleValid!2216 thiss!20629 (rule!9102 (_1!23030 (v!38973 lt!1332898))))))

(declare-fun lt!1332888 () Unit!58328)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1296 (LexerInterface!5853 Rule!12328 List!40742) Unit!58328)

(assert (=> b!3840630 (= lt!1332888 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1296 thiss!20629 (rule!9102 (_1!23030 (v!38973 lt!1332898))) rules!2768))))

(declare-fun lt!1332893 () Unit!58328)

(declare-fun lemmaCharactersSize!925 (Token!11666) Unit!58328)

(assert (=> b!3840630 (= lt!1332893 (lemmaCharactersSize!925 (_1!23030 (v!38973 lt!1332898))))))

(declare-fun b!3840631 () Bool)

(declare-fun tp_is_empty!19309 () Bool)

(declare-fun tp!1163247 () Bool)

(assert (=> b!3840631 (= e!2372553 (and tp_is_empty!19309 tp!1163247))))

(declare-fun b!3840632 () Bool)

(declare-fun e!2372551 () Bool)

(assert (=> b!3840632 (= e!2372558 e!2372551)))

(declare-fun res!1554442 () Bool)

(assert (=> b!3840632 (=> (not res!1554442) (not e!2372551))))

(declare-fun suffixResult!91 () List!40740)

(declare-fun lt!1332896 () List!40743)

(assert (=> b!3840632 (= res!1554442 (= lt!1332903 (tuple2!39791 lt!1332896 suffixResult!91)))))

(assert (=> b!3840632 (= lt!1332903 (lexList!1621 thiss!20629 rules!2768 lt!1332892))))

(assert (=> b!3840632 (= lt!1332896 (++!10285 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!40740)

(assert (=> b!3840632 (= lt!1332892 (++!10286 prefix!426 suffix!1176))))

(declare-fun tp!1163261 () Bool)

(declare-fun b!3840633 () Bool)

(assert (=> b!3840633 (= e!2372570 (and (inv!21 (value!199158 (h!46039 suffixTokens!72))) e!2372560 tp!1163261))))

(declare-fun b!3840634 () Bool)

(declare-fun call!281942 () Option!8682)

(assert (=> b!3840634 (= e!2372540 call!281942)))

(declare-fun b!3840635 () Bool)

(assert (=> b!3840635 (= e!2372562 (= (size!30575 (_1!23030 (v!38973 lt!1332898))) (size!30576 (originalCharacters!6864 (_1!23030 (v!38973 lt!1332898))))))))

(declare-fun b!3840636 () Bool)

(assert (=> b!3840636 (= e!2372551 e!2372542)))

(declare-fun res!1554438 () Bool)

(assert (=> b!3840636 (=> (not res!1554438) (not e!2372542))))

(assert (=> b!3840636 (= res!1554438 ((_ is Some!8681) lt!1332898))))

(declare-fun maxPrefix!3157 (LexerInterface!5853 List!40742 List!40740) Option!8682)

(assert (=> b!3840636 (= lt!1332898 (maxPrefix!3157 thiss!20629 rules!2768 lt!1332892))))

(declare-fun b!3840637 () Bool)

(declare-fun res!1554436 () Bool)

(assert (=> b!3840637 (=> res!1554436 e!2372563)))

(assert (=> b!3840637 (= res!1554436 (or (not (= lt!1332894 (tuple2!39791 (_1!23029 lt!1332894) (_2!23029 lt!1332894)))) (not (= (_2!23030 (v!38973 lt!1332898)) suffix!1176))))))

(assert (=> b!3840638 (= e!2372547 (and tp!1163251 tp!1163262))))

(declare-fun b!3840639 () Bool)

(declare-fun tp!1163246 () Bool)

(assert (=> b!3840639 (= e!2372543 (and tp_is_empty!19309 tp!1163246))))

(declare-fun bm!281937 () Bool)

(declare-fun maxPrefixOneRule!2241 (LexerInterface!5853 Rule!12328 List!40740) Option!8682)

(assert (=> bm!281937 (= call!281942 (maxPrefixOneRule!2241 thiss!20629 (h!46038 rules!2768) lt!1332892))))

(declare-fun b!3840640 () Bool)

(declare-fun res!1554444 () Bool)

(assert (=> b!3840640 (=> (not res!1554444) (not e!2372551))))

(assert (=> b!3840640 (= res!1554444 (= (lexList!1621 thiss!20629 rules!2768 suffix!1176) (tuple2!39791 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3840641 (= e!2372544 (and tp!1163253 tp!1163259))))

(declare-fun b!3840642 () Bool)

(declare-fun lt!1332901 () Option!8682)

(assert (=> b!3840642 (= lt!1332901 (maxPrefix!3157 thiss!20629 (t!310411 rules!2768) lt!1332892))))

(declare-fun lt!1332900 () Option!8682)

(assert (=> b!3840642 (= lt!1332900 call!281942)))

(assert (=> b!3840642 (= e!2372567 (ite (and ((_ is None!8681) lt!1332900) ((_ is None!8681) lt!1332901)) None!8681 (ite ((_ is None!8681) lt!1332901) lt!1332900 (ite ((_ is None!8681) lt!1332900) lt!1332901 (ite (>= (size!30575 (_1!23030 (v!38973 lt!1332900))) (size!30575 (_1!23030 (v!38973 lt!1332901)))) (Some!8681 (v!38973 lt!1332900)) lt!1332901)))))))

(declare-fun b!3840643 () Bool)

(declare-fun tp!1163245 () Bool)

(assert (=> b!3840643 (= e!2372554 (and (inv!54768 (_1!23030 (v!38973 err!4209))) e!2372564 tp!1163245))))

(declare-fun b!3840644 () Bool)

(declare-fun tp!1163255 () Bool)

(assert (=> b!3840644 (= e!2372568 (and tp_is_empty!19309 tp!1163255))))

(assert (= (and start!359640 res!1554447) b!3840614))

(assert (= (and b!3840614 res!1554441) b!3840610))

(assert (= (and b!3840610 res!1554437) b!3840620))

(assert (= (and b!3840620 res!1554448) b!3840618))

(assert (= (and b!3840618 res!1554439) b!3840632))

(assert (= (and b!3840632 res!1554442) b!3840640))

(assert (= (and b!3840640 res!1554444) b!3840636))

(assert (= (and b!3840636 res!1554438) b!3840630))

(assert (= (and b!3840630 res!1554446) b!3840635))

(assert (= (and b!3840630 (not res!1554443)) b!3840627))

(assert (= (and b!3840627 (not res!1554445)) b!3840637))

(assert (= (and b!3840637 (not res!1554436)) b!3840611))

(assert (= (and b!3840611 res!1554440) b!3840621))

(assert (= (and b!3840621 c!669396) b!3840634))

(assert (= (and b!3840621 (not c!669396)) b!3840622))

(assert (= (and b!3840622 c!669397) b!3840642))

(assert (= (and b!3840622 (not c!669397)) b!3840615))

(assert (= b!3840617 b!3840616))

(assert (= b!3840625 b!3840617))

(assert (= b!3840643 b!3840625))

(assert (= (and b!3840615 ((_ is Some!8681) err!4209)) b!3840643))

(assert (= (or b!3840634 b!3840642) bm!281937))

(assert (= (and start!359640 ((_ is Cons!40616) suffixResult!91)) b!3840644))

(assert (= (and start!359640 ((_ is Cons!40616) suffix!1176)) b!3840639))

(assert (= b!3840619 b!3840638))

(assert (= b!3840612 b!3840619))

(assert (= (and start!359640 ((_ is Cons!40618) rules!2768)) b!3840612))

(assert (= b!3840629 b!3840626))

(assert (= b!3840613 b!3840629))

(assert (= b!3840628 b!3840613))

(assert (= (and start!359640 ((_ is Cons!40619) prefixTokens!80)) b!3840628))

(assert (= b!3840623 b!3840641))

(assert (= b!3840633 b!3840623))

(assert (= b!3840624 b!3840633))

(assert (= (and start!359640 ((_ is Cons!40619) suffixTokens!72)) b!3840624))

(assert (= (and start!359640 ((_ is Cons!40616) prefix!426)) b!3840631))

(declare-fun m!4394929 () Bool)

(assert (=> b!3840619 m!4394929))

(declare-fun m!4394931 () Bool)

(assert (=> b!3840619 m!4394931))

(declare-fun m!4394933 () Bool)

(assert (=> b!3840640 m!4394933))

(declare-fun m!4394935 () Bool)

(assert (=> b!3840625 m!4394935))

(declare-fun m!4394937 () Bool)

(assert (=> b!3840623 m!4394937))

(declare-fun m!4394939 () Bool)

(assert (=> b!3840623 m!4394939))

(declare-fun m!4394941 () Bool)

(assert (=> b!3840629 m!4394941))

(declare-fun m!4394943 () Bool)

(assert (=> b!3840629 m!4394943))

(declare-fun m!4394945 () Bool)

(assert (=> b!3840624 m!4394945))

(declare-fun m!4394947 () Bool)

(assert (=> b!3840610 m!4394947))

(declare-fun m!4394949 () Bool)

(assert (=> b!3840633 m!4394949))

(declare-fun m!4394951 () Bool)

(assert (=> b!3840632 m!4394951))

(declare-fun m!4394953 () Bool)

(assert (=> b!3840632 m!4394953))

(declare-fun m!4394955 () Bool)

(assert (=> b!3840632 m!4394955))

(declare-fun m!4394957 () Bool)

(assert (=> b!3840617 m!4394957))

(declare-fun m!4394959 () Bool)

(assert (=> b!3840617 m!4394959))

(declare-fun m!4394961 () Bool)

(assert (=> b!3840642 m!4394961))

(declare-fun m!4394963 () Bool)

(assert (=> b!3840611 m!4394963))

(declare-fun m!4394965 () Bool)

(assert (=> b!3840611 m!4394965))

(declare-fun m!4394967 () Bool)

(assert (=> b!3840611 m!4394967))

(declare-fun m!4394969 () Bool)

(assert (=> b!3840613 m!4394969))

(declare-fun m!4394971 () Bool)

(assert (=> b!3840628 m!4394971))

(declare-fun m!4394973 () Bool)

(assert (=> b!3840620 m!4394973))

(declare-fun m!4394975 () Bool)

(assert (=> b!3840627 m!4394975))

(declare-fun m!4394977 () Bool)

(assert (=> b!3840618 m!4394977))

(declare-fun m!4394979 () Bool)

(assert (=> b!3840635 m!4394979))

(declare-fun m!4394981 () Bool)

(assert (=> b!3840636 m!4394981))

(declare-fun m!4394983 () Bool)

(assert (=> bm!281937 m!4394983))

(declare-fun m!4394985 () Bool)

(assert (=> b!3840643 m!4394985))

(declare-fun m!4394987 () Bool)

(assert (=> b!3840614 m!4394987))

(declare-fun m!4394989 () Bool)

(assert (=> b!3840630 m!4394989))

(declare-fun m!4394991 () Bool)

(assert (=> b!3840630 m!4394991))

(declare-fun m!4394993 () Bool)

(assert (=> b!3840630 m!4394993))

(declare-fun m!4394995 () Bool)

(assert (=> b!3840630 m!4394995))

(declare-fun m!4394997 () Bool)

(assert (=> b!3840630 m!4394997))

(declare-fun m!4394999 () Bool)

(assert (=> b!3840630 m!4394999))

(declare-fun m!4395001 () Bool)

(assert (=> b!3840630 m!4395001))

(declare-fun m!4395003 () Bool)

(assert (=> b!3840630 m!4395003))

(assert (=> b!3840630 m!4394999))

(assert (=> b!3840630 m!4394993))

(declare-fun m!4395005 () Bool)

(assert (=> b!3840630 m!4395005))

(declare-fun m!4395007 () Bool)

(assert (=> b!3840630 m!4395007))

(declare-fun m!4395009 () Bool)

(assert (=> b!3840630 m!4395009))

(declare-fun m!4395011 () Bool)

(assert (=> b!3840630 m!4395011))

(declare-fun m!4395013 () Bool)

(assert (=> b!3840630 m!4395013))

(declare-fun m!4395015 () Bool)

(assert (=> b!3840630 m!4395015))

(check-sat (not b!3840624) b_and!286065 (not bm!281937) (not b!3840644) (not b!3840611) (not b!3840628) (not b!3840618) b_and!286061 b_and!286063 (not b!3840619) (not b!3840629) (not b!3840623) (not b_next!103095) b_and!286059 (not b!3840627) (not b!3840614) b_and!286069 b_and!286057 (not b!3840630) (not b!3840610) (not b!3840642) (not b_next!103087) (not b_next!103091) b_and!286067 (not b!3840612) (not b!3840635) (not b!3840643) (not b!3840632) tp_is_empty!19309 b_and!286055 (not b!3840617) (not b!3840633) (not b_next!103093) (not b_next!103089) (not b!3840636) (not b!3840631) (not b_next!103085) (not b_next!103083) (not b!3840620) (not b_next!103081) (not b!3840625) (not b!3840639) (not b!3840640) (not b!3840613))
(check-sat b_and!286063 (not b_next!103095) b_and!286059 b_and!286069 b_and!286065 b_and!286057 b_and!286067 b_and!286055 (not b_next!103085) b_and!286061 (not b_next!103087) (not b_next!103091) (not b_next!103093) (not b_next!103089) (not b_next!103083) (not b_next!103081))

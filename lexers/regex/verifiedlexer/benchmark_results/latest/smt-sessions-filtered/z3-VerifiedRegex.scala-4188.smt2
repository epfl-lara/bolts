; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227240 () Bool)

(assert start!227240)

(declare-fun b!2307273 () Bool)

(declare-fun b_free!69821 () Bool)

(declare-fun b_next!70525 () Bool)

(assert (=> b!2307273 (= b_free!69821 (not b_next!70525))))

(declare-fun tp!732076 () Bool)

(declare-fun b_and!184225 () Bool)

(assert (=> b!2307273 (= tp!732076 b_and!184225)))

(declare-fun b_free!69823 () Bool)

(declare-fun b_next!70527 () Bool)

(assert (=> b!2307273 (= b_free!69823 (not b_next!70527))))

(declare-fun tp!732063 () Bool)

(declare-fun b_and!184227 () Bool)

(assert (=> b!2307273 (= tp!732063 b_and!184227)))

(declare-fun b!2307266 () Bool)

(declare-fun b_free!69825 () Bool)

(declare-fun b_next!70529 () Bool)

(assert (=> b!2307266 (= b_free!69825 (not b_next!70529))))

(declare-fun tp!732078 () Bool)

(declare-fun b_and!184229 () Bool)

(assert (=> b!2307266 (= tp!732078 b_and!184229)))

(declare-fun b_free!69827 () Bool)

(declare-fun b_next!70531 () Bool)

(assert (=> b!2307266 (= b_free!69827 (not b_next!70531))))

(declare-fun tp!732079 () Bool)

(declare-fun b_and!184231 () Bool)

(assert (=> b!2307266 (= tp!732079 b_and!184231)))

(declare-fun b!2307277 () Bool)

(declare-fun b_free!69829 () Bool)

(declare-fun b_next!70533 () Bool)

(assert (=> b!2307277 (= b_free!69829 (not b_next!70533))))

(declare-fun tp!732062 () Bool)

(declare-fun b_and!184233 () Bool)

(assert (=> b!2307277 (= tp!732062 b_and!184233)))

(declare-fun b_free!69831 () Bool)

(declare-fun b_next!70535 () Bool)

(assert (=> b!2307277 (= b_free!69831 (not b_next!70535))))

(declare-fun tp!732073 () Bool)

(declare-fun b_and!184235 () Bool)

(assert (=> b!2307277 (= tp!732073 b_and!184235)))

(declare-fun b!2307259 () Bool)

(declare-fun b_free!69833 () Bool)

(declare-fun b_next!70537 () Bool)

(assert (=> b!2307259 (= b_free!69833 (not b_next!70537))))

(declare-fun tp!732071 () Bool)

(declare-fun b_and!184237 () Bool)

(assert (=> b!2307259 (= tp!732071 b_and!184237)))

(declare-fun b_free!69835 () Bool)

(declare-fun b_next!70539 () Bool)

(assert (=> b!2307259 (= b_free!69835 (not b_next!70539))))

(declare-fun tp!732077 () Bool)

(declare-fun b_and!184239 () Bool)

(assert (=> b!2307259 (= tp!732077 b_and!184239)))

(declare-fun b!2307244 () Bool)

(declare-fun e!1478744 () Bool)

(declare-fun e!1478734 () Bool)

(assert (=> b!2307244 (= e!1478744 e!1478734)))

(declare-fun res!986576 () Bool)

(assert (=> b!2307244 (=> (not res!986576) (not e!1478734))))

(declare-fun e!1478763 () Bool)

(assert (=> b!2307244 (= res!986576 e!1478763)))

(declare-fun res!986579 () Bool)

(assert (=> b!2307244 (=> res!986579 e!1478763)))

(declare-fun lt!855728 () Bool)

(assert (=> b!2307244 (= res!986579 lt!855728)))

(declare-datatypes ((List!27564 0))(
  ( (Nil!27470) (Cons!27470 (h!32871 (_ BitVec 16)) (t!206508 List!27564)) )
))
(declare-datatypes ((TokenValue!4569 0))(
  ( (FloatLiteralValue!9138 (text!32428 List!27564)) (TokenValueExt!4568 (__x!18198 Int)) (Broken!22845 (value!139393 List!27564)) (Object!4662) (End!4569) (Def!4569) (Underscore!4569) (Match!4569) (Else!4569) (Error!4569) (Case!4569) (If!4569) (Extends!4569) (Abstract!4569) (Class!4569) (Val!4569) (DelimiterValue!9138 (del!4629 List!27564)) (KeywordValue!4575 (value!139394 List!27564)) (CommentValue!9138 (value!139395 List!27564)) (WhitespaceValue!9138 (value!139396 List!27564)) (IndentationValue!4569 (value!139397 List!27564)) (String!29948) (Int32!4569) (Broken!22846 (value!139398 List!27564)) (Boolean!4570) (Unit!40383) (OperatorValue!4572 (op!4629 List!27564)) (IdentifierValue!9138 (value!139399 List!27564)) (IdentifierValue!9139 (value!139400 List!27564)) (WhitespaceValue!9139 (value!139401 List!27564)) (True!9138) (False!9138) (Broken!22847 (value!139402 List!27564)) (Broken!22848 (value!139403 List!27564)) (True!9139) (RightBrace!4569) (RightBracket!4569) (Colon!4569) (Null!4569) (Comma!4569) (LeftBracket!4569) (False!9139) (LeftBrace!4569) (ImaginaryLiteralValue!4569 (text!32429 List!27564)) (StringLiteralValue!13707 (value!139404 List!27564)) (EOFValue!4569 (value!139405 List!27564)) (IdentValue!4569 (value!139406 List!27564)) (DelimiterValue!9139 (value!139407 List!27564)) (DedentValue!4569 (value!139408 List!27564)) (NewLineValue!4569 (value!139409 List!27564)) (IntegerValue!13707 (value!139410 (_ BitVec 32)) (text!32430 List!27564)) (IntegerValue!13708 (value!139411 Int) (text!32431 List!27564)) (Times!4569) (Or!4569) (Equal!4569) (Minus!4569) (Broken!22849 (value!139412 List!27564)) (And!4569) (Div!4569) (LessEqual!4569) (Mod!4569) (Concat!11324) (Not!4569) (Plus!4569) (SpaceValue!4569 (value!139413 List!27564)) (IntegerValue!13709 (value!139414 Int) (text!32432 List!27564)) (StringLiteralValue!13708 (text!32433 List!27564)) (FloatLiteralValue!9139 (text!32434 List!27564)) (BytesLiteralValue!4569 (value!139415 List!27564)) (CommentValue!9139 (value!139416 List!27564)) (StringLiteralValue!13709 (value!139417 List!27564)) (ErrorTokenValue!4569 (msg!4630 List!27564)) )
))
(declare-datatypes ((C!13656 0))(
  ( (C!13657 (val!7876 Int)) )
))
(declare-datatypes ((List!27565 0))(
  ( (Nil!27471) (Cons!27471 (h!32872 C!13656) (t!206509 List!27565)) )
))
(declare-datatypes ((IArray!17929 0))(
  ( (IArray!17930 (innerList!9022 List!27565)) )
))
(declare-datatypes ((Conc!8962 0))(
  ( (Node!8962 (left!20810 Conc!8962) (right!21140 Conc!8962) (csize!18154 Int) (cheight!9173 Int)) (Leaf!13151 (xs!11904 IArray!17929) (csize!18155 Int)) (Empty!8962) )
))
(declare-datatypes ((BalanceConc!17652 0))(
  ( (BalanceConc!17653 (c!365696 Conc!8962)) )
))
(declare-datatypes ((Regex!6755 0))(
  ( (ElementMatch!6755 (c!365697 C!13656)) (Concat!11325 (regOne!14022 Regex!6755) (regTwo!14022 Regex!6755)) (EmptyExpr!6755) (Star!6755 (reg!7084 Regex!6755)) (EmptyLang!6755) (Union!6755 (regOne!14023 Regex!6755) (regTwo!14023 Regex!6755)) )
))
(declare-datatypes ((String!29949 0))(
  ( (String!29950 (value!139418 String)) )
))
(declare-datatypes ((TokenValueInjection!8678 0))(
  ( (TokenValueInjection!8679 (toValue!6221 Int) (toChars!6080 Int)) )
))
(declare-datatypes ((Rule!8614 0))(
  ( (Rule!8615 (regex!4407 Regex!6755) (tag!4897 String!29949) (isSeparator!4407 Bool) (transformation!4407 TokenValueInjection!8678)) )
))
(declare-datatypes ((Token!8292 0))(
  ( (Token!8293 (value!139419 TokenValue!4569) (rule!6759 Rule!8614) (size!21679 Int) (originalCharacters!5177 List!27565)) )
))
(declare-datatypes ((List!27566 0))(
  ( (Nil!27472) (Cons!27472 (h!32873 Token!8292) (t!206510 List!27566)) )
))
(declare-fun tokens!456 () List!27566)

(declare-fun isEmpty!15709 (List!27566) Bool)

(assert (=> b!2307244 (= lt!855728 (isEmpty!15709 tokens!456))))

(declare-fun b!2307245 () Bool)

(declare-datatypes ((Unit!40384 0))(
  ( (Unit!40385) )
))
(declare-fun e!1478749 () Unit!40384)

(declare-fun Unit!40386 () Unit!40384)

(assert (=> b!2307245 (= e!1478749 Unit!40386)))

(declare-fun b!2307246 () Bool)

(declare-fun e!1478750 () Bool)

(declare-fun e!1478756 () Bool)

(declare-fun tp!732072 () Bool)

(assert (=> b!2307246 (= e!1478750 (and e!1478756 tp!732072))))

(declare-fun b!2307247 () Bool)

(declare-fun res!986582 () Bool)

(assert (=> b!2307247 (=> (not res!986582) (not e!1478734))))

(declare-fun r!2363 () Rule!8614)

(declare-fun otherR!12 () Rule!8614)

(assert (=> b!2307247 (= res!986582 (not (= r!2363 otherR!12)))))

(declare-fun b!2307248 () Bool)

(declare-fun res!986586 () Bool)

(declare-fun e!1478736 () Bool)

(assert (=> b!2307248 (=> (not res!986586) (not e!1478736))))

(declare-datatypes ((LexerInterface!4004 0))(
  ( (LexerInterfaceExt!4001 (__x!18199 Int)) (Lexer!4002) )
))
(declare-fun thiss!16613 () LexerInterface!4004)

(declare-datatypes ((List!27567 0))(
  ( (Nil!27473) (Cons!27473 (h!32874 Rule!8614) (t!206511 List!27567)) )
))
(declare-fun rules!1750 () List!27567)

(declare-fun rulesInvariant!3506 (LexerInterface!4004 List!27567) Bool)

(assert (=> b!2307248 (= res!986586 (rulesInvariant!3506 thiss!16613 rules!1750))))

(declare-fun b!2307249 () Bool)

(declare-fun e!1478747 () Bool)

(declare-fun e!1478740 () Bool)

(assert (=> b!2307249 (= e!1478747 e!1478740)))

(declare-fun res!986581 () Bool)

(assert (=> b!2307249 (=> res!986581 e!1478740)))

(declare-fun lt!855720 () List!27565)

(declare-fun input!1722 () List!27565)

(declare-fun isPrefix!2397 (List!27565 List!27565) Bool)

(assert (=> b!2307249 (= res!986581 (not (isPrefix!2397 lt!855720 input!1722)))))

(declare-datatypes ((tuple2!27390 0))(
  ( (tuple2!27391 (_1!16205 Token!8292) (_2!16205 List!27565)) )
))
(declare-datatypes ((Option!5405 0))(
  ( (None!5404) (Some!5404 (v!30512 tuple2!27390)) )
))
(declare-fun lt!855730 () Option!5405)

(declare-fun lt!855722 () Token!8292)

(declare-fun lt!855733 () tuple2!27390)

(assert (=> b!2307249 (= lt!855730 (Some!5404 (tuple2!27391 lt!855722 (_2!16205 lt!855733))))))

(declare-fun maxPrefixOneRule!1430 (LexerInterface!4004 Rule!8614 List!27565) Option!5405)

(assert (=> b!2307249 (= lt!855730 (maxPrefixOneRule!1430 thiss!16613 r!2363 input!1722))))

(declare-fun lt!855727 () Int)

(declare-fun lt!855736 () BalanceConc!17652)

(declare-fun apply!6669 (TokenValueInjection!8678 BalanceConc!17652) TokenValue!4569)

(assert (=> b!2307249 (= lt!855722 (Token!8293 (apply!6669 (transformation!4407 r!2363) lt!855736) r!2363 lt!855727 lt!855720))))

(declare-fun seqFromList!3111 (List!27565) BalanceConc!17652)

(assert (=> b!2307249 (= lt!855736 (seqFromList!3111 lt!855720))))

(declare-fun lt!855717 () Unit!40384)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!603 (LexerInterface!4004 List!27567 List!27565 List!27565 List!27565 Rule!8614) Unit!40384)

(assert (=> b!2307249 (= lt!855717 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!603 thiss!16613 rules!1750 lt!855720 input!1722 (_2!16205 lt!855733) r!2363))))

(declare-fun b!2307250 () Bool)

(declare-fun e!1478742 () Bool)

(assert (=> b!2307250 (= e!1478734 (not e!1478742))))

(declare-fun res!986583 () Bool)

(assert (=> b!2307250 (=> res!986583 e!1478742)))

(declare-fun e!1478737 () Bool)

(assert (=> b!2307250 (= res!986583 e!1478737)))

(declare-fun res!986577 () Bool)

(assert (=> b!2307250 (=> (not res!986577) (not e!1478737))))

(assert (=> b!2307250 (= res!986577 (not lt!855728))))

(declare-fun ruleValid!1497 (LexerInterface!4004 Rule!8614) Bool)

(assert (=> b!2307250 (ruleValid!1497 thiss!16613 r!2363)))

(declare-fun lt!855732 () Unit!40384)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!902 (LexerInterface!4004 Rule!8614 List!27567) Unit!40384)

(assert (=> b!2307250 (= lt!855732 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!902 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2307251 () Bool)

(declare-fun Unit!40387 () Unit!40384)

(assert (=> b!2307251 (= e!1478749 Unit!40387)))

(declare-fun lt!855719 () Unit!40384)

(declare-fun lemmaSameIndexThenSameElement!200 (List!27567 Rule!8614 Rule!8614) Unit!40384)

(assert (=> b!2307251 (= lt!855719 (lemmaSameIndexThenSameElement!200 rules!1750 r!2363 otherR!12))))

(assert (=> b!2307251 false))

(declare-fun b!2307252 () Bool)

(declare-fun res!986570 () Bool)

(assert (=> b!2307252 (=> (not res!986570) (not e!1478736))))

(declare-fun contains!4795 (List!27567 Rule!8614) Bool)

(assert (=> b!2307252 (= res!986570 (contains!4795 rules!1750 otherR!12))))

(declare-fun b!2307253 () Bool)

(declare-fun res!986578 () Bool)

(assert (=> b!2307253 (=> (not res!986578) (not e!1478736))))

(declare-fun isEmpty!15710 (List!27567) Bool)

(assert (=> b!2307253 (= res!986578 (not (isEmpty!15710 rules!1750)))))

(declare-fun b!2307254 () Bool)

(declare-fun e!1478753 () Bool)

(declare-fun e!1478760 () Bool)

(assert (=> b!2307254 (= e!1478753 e!1478760)))

(declare-fun res!986574 () Bool)

(assert (=> b!2307254 (=> res!986574 e!1478760)))

(get-info :version)

(assert (=> b!2307254 (= res!986574 ((_ is Nil!27472) tokens!456))))

(declare-fun lt!855725 () Unit!40384)

(assert (=> b!2307254 (= lt!855725 e!1478749)))

(declare-fun c!365695 () Bool)

(declare-fun lt!855718 () Int)

(declare-fun lt!855721 () Int)

(assert (=> b!2307254 (= c!365695 (= lt!855718 lt!855721))))

(declare-fun b!2307255 () Bool)

(declare-fun e!1478748 () Bool)

(declare-fun head!5062 (List!27566) Token!8292)

(assert (=> b!2307255 (= e!1478748 (= (rule!6759 (head!5062 tokens!456)) r!2363))))

(declare-fun b!2307256 () Bool)

(declare-fun res!986569 () Bool)

(assert (=> b!2307256 (=> (not res!986569) (not e!1478736))))

(assert (=> b!2307256 (= res!986569 (contains!4795 rules!1750 r!2363))))

(declare-fun res!986571 () Bool)

(assert (=> start!227240 (=> (not res!986571) (not e!1478736))))

(assert (=> start!227240 (= res!986571 ((_ is Lexer!4002) thiss!16613))))

(assert (=> start!227240 e!1478736))

(assert (=> start!227240 true))

(declare-fun e!1478758 () Bool)

(assert (=> start!227240 e!1478758))

(declare-fun e!1478762 () Bool)

(assert (=> start!227240 e!1478762))

(declare-fun e!1478751 () Bool)

(assert (=> start!227240 e!1478751))

(declare-fun e!1478739 () Bool)

(assert (=> start!227240 e!1478739))

(assert (=> start!227240 e!1478750))

(declare-fun e!1478743 () Bool)

(assert (=> start!227240 e!1478743))

(declare-fun e!1478752 () Bool)

(assert (=> start!227240 e!1478752))

(declare-fun lt!855729 () List!27565)

(declare-fun b!2307257 () Bool)

(assert (=> b!2307257 (= e!1478740 (= lt!855730 (Some!5404 (tuple2!27391 lt!855722 lt!855729))))))

(assert (=> b!2307257 (isPrefix!2397 input!1722 input!1722)))

(declare-fun lt!855734 () Unit!40384)

(declare-fun lemmaIsPrefixRefl!1523 (List!27565 List!27565) Unit!40384)

(assert (=> b!2307257 (= lt!855734 (lemmaIsPrefixRefl!1523 input!1722 input!1722))))

(declare-fun lt!855726 () Unit!40384)

(declare-fun lemmaSemiInverse!1086 (TokenValueInjection!8678 BalanceConc!17652) Unit!40384)

(assert (=> b!2307257 (= lt!855726 (lemmaSemiInverse!1086 (transformation!4407 r!2363) lt!855736))))

(declare-fun b!2307258 () Bool)

(declare-fun matchR!3012 (Regex!6755 List!27565) Bool)

(declare-fun list!10844 (BalanceConc!17652) List!27565)

(declare-fun charsOf!2795 (Token!8292) BalanceConc!17652)

(assert (=> b!2307258 (= e!1478737 (not (matchR!3012 (regex!4407 r!2363) (list!10844 (charsOf!2795 (head!5062 tokens!456))))))))

(declare-fun e!1478745 () Bool)

(assert (=> b!2307259 (= e!1478745 (and tp!732071 tp!732077))))

(declare-fun tp!732070 () Bool)

(declare-fun e!1478735 () Bool)

(declare-fun b!2307260 () Bool)

(declare-fun inv!37113 (Token!8292) Bool)

(assert (=> b!2307260 (= e!1478752 (and (inv!37113 (h!32873 tokens!456)) e!1478735 tp!732070))))

(declare-fun b!2307261 () Bool)

(declare-fun otherP!12 () List!27565)

(declare-fun size!21680 (BalanceConc!17652) Int)

(declare-fun size!21681 (List!27565) Int)

(assert (=> b!2307261 (= e!1478763 (<= (size!21680 (charsOf!2795 (head!5062 tokens!456))) (size!21681 otherP!12)))))

(declare-fun b!2307262 () Bool)

(assert (=> b!2307262 (= e!1478760 e!1478747)))

(declare-fun res!986585 () Bool)

(assert (=> b!2307262 (=> res!986585 e!1478747)))

(declare-fun lt!855723 () Int)

(assert (=> b!2307262 (= res!986585 (<= lt!855723 lt!855727))))

(assert (=> b!2307262 (= lt!855727 (size!21681 lt!855720))))

(assert (=> b!2307262 (= lt!855723 (size!21681 otherP!12))))

(assert (=> b!2307262 (= (_2!16205 lt!855733) lt!855729)))

(declare-fun lt!855735 () Unit!40384)

(declare-fun lemmaSamePrefixThenSameSuffix!1078 (List!27565 List!27565 List!27565 List!27565 List!27565) Unit!40384)

(assert (=> b!2307262 (= lt!855735 (lemmaSamePrefixThenSameSuffix!1078 lt!855720 (_2!16205 lt!855733) lt!855720 lt!855729 input!1722))))

(declare-fun getSuffix!1176 (List!27565 List!27565) List!27565)

(assert (=> b!2307262 (= lt!855729 (getSuffix!1176 input!1722 lt!855720))))

(declare-fun ++!6725 (List!27565 List!27565) List!27565)

(assert (=> b!2307262 (isPrefix!2397 lt!855720 (++!6725 lt!855720 (_2!16205 lt!855733)))))

(declare-fun lt!855724 () Unit!40384)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1590 (List!27565 List!27565) Unit!40384)

(assert (=> b!2307262 (= lt!855724 (lemmaConcatTwoListThenFirstIsPrefix!1590 lt!855720 (_2!16205 lt!855733)))))

(assert (=> b!2307262 (= lt!855720 (list!10844 (charsOf!2795 (h!32873 tokens!456))))))

(declare-fun get!8282 (Option!5405) tuple2!27390)

(declare-fun maxPrefix!2260 (LexerInterface!4004 List!27567 List!27565) Option!5405)

(assert (=> b!2307262 (= lt!855733 (get!8282 (maxPrefix!2260 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2307263 () Bool)

(declare-fun tp_is_empty!10731 () Bool)

(declare-fun tp!732066 () Bool)

(assert (=> b!2307263 (= e!1478751 (and tp_is_empty!10731 tp!732066))))

(declare-fun b!2307264 () Bool)

(declare-fun res!986572 () Bool)

(assert (=> b!2307264 (=> (not res!986572) (not e!1478734))))

(assert (=> b!2307264 (= res!986572 e!1478748)))

(declare-fun res!986580 () Bool)

(assert (=> b!2307264 (=> res!986580 e!1478748)))

(assert (=> b!2307264 (= res!986580 lt!855728)))

(declare-fun b!2307265 () Bool)

(declare-fun tp!732064 () Bool)

(declare-fun inv!37110 (String!29949) Bool)

(declare-fun inv!37114 (TokenValueInjection!8678) Bool)

(assert (=> b!2307265 (= e!1478743 (and tp!732064 (inv!37110 (tag!4897 r!2363)) (inv!37114 (transformation!4407 r!2363)) e!1478745))))

(declare-fun e!1478759 () Bool)

(assert (=> b!2307266 (= e!1478759 (and tp!732078 tp!732079))))

(declare-fun b!2307267 () Bool)

(declare-fun tp!732068 () Bool)

(assert (=> b!2307267 (= e!1478739 (and tp_is_empty!10731 tp!732068))))

(declare-fun tp!732075 () Bool)

(declare-fun b!2307268 () Bool)

(assert (=> b!2307268 (= e!1478762 (and tp!732075 (inv!37110 (tag!4897 otherR!12)) (inv!37114 (transformation!4407 otherR!12)) e!1478759))))

(declare-fun e!1478755 () Bool)

(declare-fun tp!732069 () Bool)

(declare-fun b!2307269 () Bool)

(declare-fun inv!21 (TokenValue!4569) Bool)

(assert (=> b!2307269 (= e!1478735 (and (inv!21 (value!139419 (h!32873 tokens!456))) e!1478755 tp!732069))))

(declare-fun tp!732065 () Bool)

(declare-fun e!1478746 () Bool)

(declare-fun b!2307270 () Bool)

(assert (=> b!2307270 (= e!1478755 (and tp!732065 (inv!37110 (tag!4897 (rule!6759 (h!32873 tokens!456)))) (inv!37114 (transformation!4407 (rule!6759 (h!32873 tokens!456)))) e!1478746))))

(declare-fun e!1478761 () Bool)

(declare-fun b!2307271 () Bool)

(declare-fun tp!732067 () Bool)

(assert (=> b!2307271 (= e!1478756 (and tp!732067 (inv!37110 (tag!4897 (h!32874 rules!1750))) (inv!37114 (transformation!4407 (h!32874 rules!1750))) e!1478761))))

(declare-fun b!2307272 () Bool)

(declare-fun tp!732074 () Bool)

(assert (=> b!2307272 (= e!1478758 (and tp_is_empty!10731 tp!732074))))

(assert (=> b!2307273 (= e!1478761 (and tp!732076 tp!732063))))

(declare-fun b!2307274 () Bool)

(declare-fun res!986568 () Bool)

(assert (=> b!2307274 (=> (not res!986568) (not e!1478734))))

(assert (=> b!2307274 (= res!986568 (isPrefix!2397 otherP!12 input!1722))))

(declare-fun b!2307275 () Bool)

(assert (=> b!2307275 (= e!1478736 e!1478744)))

(declare-fun res!986584 () Bool)

(assert (=> b!2307275 (=> (not res!986584) (not e!1478744))))

(declare-datatypes ((IArray!17931 0))(
  ( (IArray!17932 (innerList!9023 List!27566)) )
))
(declare-datatypes ((Conc!8963 0))(
  ( (Node!8963 (left!20811 Conc!8963) (right!21141 Conc!8963) (csize!18156 Int) (cheight!9174 Int)) (Leaf!13152 (xs!11905 IArray!17931) (csize!18157 Int)) (Empty!8963) )
))
(declare-datatypes ((BalanceConc!17654 0))(
  ( (BalanceConc!17655 (c!365698 Conc!8963)) )
))
(declare-datatypes ((tuple2!27392 0))(
  ( (tuple2!27393 (_1!16206 BalanceConc!17654) (_2!16206 BalanceConc!17652)) )
))
(declare-fun lt!855716 () tuple2!27392)

(declare-fun suffix!886 () List!27565)

(declare-datatypes ((tuple2!27394 0))(
  ( (tuple2!27395 (_1!16207 List!27566) (_2!16207 List!27565)) )
))
(declare-fun list!10845 (BalanceConc!17654) List!27566)

(assert (=> b!2307275 (= res!986584 (= (tuple2!27395 (list!10845 (_1!16206 lt!855716)) (list!10844 (_2!16206 lt!855716))) (tuple2!27395 tokens!456 suffix!886)))))

(declare-fun lex!1843 (LexerInterface!4004 List!27567 BalanceConc!17652) tuple2!27392)

(assert (=> b!2307275 (= lt!855716 (lex!1843 thiss!16613 rules!1750 (seqFromList!3111 input!1722)))))

(declare-fun b!2307276 () Bool)

(assert (=> b!2307276 (= e!1478742 e!1478753)))

(declare-fun res!986575 () Bool)

(assert (=> b!2307276 (=> res!986575 e!1478753)))

(assert (=> b!2307276 (= res!986575 (> lt!855718 lt!855721))))

(declare-fun getIndex!420 (List!27567 Rule!8614) Int)

(assert (=> b!2307276 (= lt!855721 (getIndex!420 rules!1750 otherR!12))))

(assert (=> b!2307276 (= lt!855718 (getIndex!420 rules!1750 r!2363))))

(assert (=> b!2307276 (ruleValid!1497 thiss!16613 otherR!12)))

(declare-fun lt!855731 () Unit!40384)

(assert (=> b!2307276 (= lt!855731 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!902 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2307277 (= e!1478746 (and tp!732062 tp!732073))))

(declare-fun b!2307278 () Bool)

(declare-fun res!986573 () Bool)

(assert (=> b!2307278 (=> res!986573 e!1478740)))

(assert (=> b!2307278 (= res!986573 (not (matchR!3012 (regex!4407 r!2363) lt!855720)))))

(assert (= (and start!227240 res!986571) b!2307253))

(assert (= (and b!2307253 res!986578) b!2307248))

(assert (= (and b!2307248 res!986586) b!2307256))

(assert (= (and b!2307256 res!986569) b!2307252))

(assert (= (and b!2307252 res!986570) b!2307275))

(assert (= (and b!2307275 res!986584) b!2307244))

(assert (= (and b!2307244 (not res!986579)) b!2307261))

(assert (= (and b!2307244 res!986576) b!2307264))

(assert (= (and b!2307264 (not res!986580)) b!2307255))

(assert (= (and b!2307264 res!986572) b!2307274))

(assert (= (and b!2307274 res!986568) b!2307247))

(assert (= (and b!2307247 res!986582) b!2307250))

(assert (= (and b!2307250 res!986577) b!2307258))

(assert (= (and b!2307250 (not res!986583)) b!2307276))

(assert (= (and b!2307276 (not res!986575)) b!2307254))

(assert (= (and b!2307254 c!365695) b!2307251))

(assert (= (and b!2307254 (not c!365695)) b!2307245))

(assert (= (and b!2307254 (not res!986574)) b!2307262))

(assert (= (and b!2307262 (not res!986585)) b!2307249))

(assert (= (and b!2307249 (not res!986581)) b!2307278))

(assert (= (and b!2307278 (not res!986573)) b!2307257))

(assert (= (and start!227240 ((_ is Cons!27471) input!1722)) b!2307272))

(assert (= b!2307268 b!2307266))

(assert (= start!227240 b!2307268))

(assert (= (and start!227240 ((_ is Cons!27471) suffix!886)) b!2307263))

(assert (= (and start!227240 ((_ is Cons!27471) otherP!12)) b!2307267))

(assert (= b!2307271 b!2307273))

(assert (= b!2307246 b!2307271))

(assert (= (and start!227240 ((_ is Cons!27473) rules!1750)) b!2307246))

(assert (= b!2307265 b!2307259))

(assert (= start!227240 b!2307265))

(assert (= b!2307270 b!2307277))

(assert (= b!2307269 b!2307270))

(assert (= b!2307260 b!2307269))

(assert (= (and start!227240 ((_ is Cons!27472) tokens!456)) b!2307260))

(declare-fun m!2734247 () Bool)

(assert (=> b!2307261 m!2734247))

(assert (=> b!2307261 m!2734247))

(declare-fun m!2734249 () Bool)

(assert (=> b!2307261 m!2734249))

(assert (=> b!2307261 m!2734249))

(declare-fun m!2734251 () Bool)

(assert (=> b!2307261 m!2734251))

(declare-fun m!2734253 () Bool)

(assert (=> b!2307261 m!2734253))

(declare-fun m!2734255 () Bool)

(assert (=> b!2307260 m!2734255))

(declare-fun m!2734257 () Bool)

(assert (=> b!2307276 m!2734257))

(declare-fun m!2734259 () Bool)

(assert (=> b!2307276 m!2734259))

(declare-fun m!2734261 () Bool)

(assert (=> b!2307276 m!2734261))

(declare-fun m!2734263 () Bool)

(assert (=> b!2307276 m!2734263))

(declare-fun m!2734265 () Bool)

(assert (=> b!2307251 m!2734265))

(declare-fun m!2734267 () Bool)

(assert (=> b!2307269 m!2734267))

(declare-fun m!2734269 () Bool)

(assert (=> b!2307275 m!2734269))

(declare-fun m!2734271 () Bool)

(assert (=> b!2307275 m!2734271))

(declare-fun m!2734273 () Bool)

(assert (=> b!2307275 m!2734273))

(assert (=> b!2307275 m!2734273))

(declare-fun m!2734275 () Bool)

(assert (=> b!2307275 m!2734275))

(declare-fun m!2734277 () Bool)

(assert (=> b!2307268 m!2734277))

(declare-fun m!2734279 () Bool)

(assert (=> b!2307268 m!2734279))

(declare-fun m!2734281 () Bool)

(assert (=> b!2307270 m!2734281))

(declare-fun m!2734283 () Bool)

(assert (=> b!2307270 m!2734283))

(declare-fun m!2734285 () Bool)

(assert (=> b!2307252 m!2734285))

(declare-fun m!2734287 () Bool)

(assert (=> b!2307249 m!2734287))

(declare-fun m!2734289 () Bool)

(assert (=> b!2307249 m!2734289))

(declare-fun m!2734291 () Bool)

(assert (=> b!2307249 m!2734291))

(declare-fun m!2734293 () Bool)

(assert (=> b!2307249 m!2734293))

(declare-fun m!2734295 () Bool)

(assert (=> b!2307249 m!2734295))

(declare-fun m!2734297 () Bool)

(assert (=> b!2307262 m!2734297))

(declare-fun m!2734299 () Bool)

(assert (=> b!2307262 m!2734299))

(assert (=> b!2307262 m!2734297))

(declare-fun m!2734301 () Bool)

(assert (=> b!2307262 m!2734301))

(declare-fun m!2734303 () Bool)

(assert (=> b!2307262 m!2734303))

(declare-fun m!2734305 () Bool)

(assert (=> b!2307262 m!2734305))

(declare-fun m!2734307 () Bool)

(assert (=> b!2307262 m!2734307))

(declare-fun m!2734309 () Bool)

(assert (=> b!2307262 m!2734309))

(assert (=> b!2307262 m!2734301))

(declare-fun m!2734311 () Bool)

(assert (=> b!2307262 m!2734311))

(assert (=> b!2307262 m!2734253))

(assert (=> b!2307262 m!2734309))

(declare-fun m!2734313 () Bool)

(assert (=> b!2307262 m!2734313))

(declare-fun m!2734315 () Bool)

(assert (=> b!2307262 m!2734315))

(declare-fun m!2734317 () Bool)

(assert (=> b!2307257 m!2734317))

(declare-fun m!2734319 () Bool)

(assert (=> b!2307257 m!2734319))

(declare-fun m!2734321 () Bool)

(assert (=> b!2307257 m!2734321))

(declare-fun m!2734323 () Bool)

(assert (=> b!2307278 m!2734323))

(assert (=> b!2307255 m!2734247))

(declare-fun m!2734325 () Bool)

(assert (=> b!2307253 m!2734325))

(declare-fun m!2734327 () Bool)

(assert (=> b!2307265 m!2734327))

(declare-fun m!2734329 () Bool)

(assert (=> b!2307265 m!2734329))

(assert (=> b!2307258 m!2734247))

(assert (=> b!2307258 m!2734247))

(assert (=> b!2307258 m!2734249))

(assert (=> b!2307258 m!2734249))

(declare-fun m!2734331 () Bool)

(assert (=> b!2307258 m!2734331))

(assert (=> b!2307258 m!2734331))

(declare-fun m!2734333 () Bool)

(assert (=> b!2307258 m!2734333))

(declare-fun m!2734335 () Bool)

(assert (=> b!2307271 m!2734335))

(declare-fun m!2734337 () Bool)

(assert (=> b!2307271 m!2734337))

(declare-fun m!2734339 () Bool)

(assert (=> b!2307256 m!2734339))

(declare-fun m!2734341 () Bool)

(assert (=> b!2307250 m!2734341))

(declare-fun m!2734343 () Bool)

(assert (=> b!2307250 m!2734343))

(declare-fun m!2734345 () Bool)

(assert (=> b!2307248 m!2734345))

(declare-fun m!2734347 () Bool)

(assert (=> b!2307244 m!2734347))

(declare-fun m!2734349 () Bool)

(assert (=> b!2307274 m!2734349))

(check-sat (not b_next!70537) (not b!2307248) (not b!2307269) b_and!184225 (not b!2307250) (not b!2307252) b_and!184239 (not b!2307271) (not b!2307270) (not b_next!70525) (not b!2307261) (not b!2307256) (not b!2307265) (not b_next!70533) (not b_next!70531) (not b!2307249) (not b_next!70529) (not b_next!70535) (not b!2307278) b_and!184233 (not b_next!70527) (not b!2307253) (not b!2307274) (not b!2307257) (not b_next!70539) (not b!2307244) (not b!2307251) b_and!184229 (not b!2307276) (not b!2307262) b_and!184231 (not b!2307246) tp_is_empty!10731 (not b!2307267) (not b!2307263) (not b!2307275) (not b!2307258) b_and!184235 (not b!2307255) b_and!184237 b_and!184227 (not b!2307268) (not b!2307272) (not b!2307260))
(check-sat (not b_next!70529) (not b_next!70537) (not b_next!70535) (not b_next!70539) b_and!184229 b_and!184231 b_and!184225 b_and!184235 b_and!184239 b_and!184237 (not b_next!70525) b_and!184227 (not b_next!70533) (not b_next!70531) b_and!184233 (not b_next!70527))

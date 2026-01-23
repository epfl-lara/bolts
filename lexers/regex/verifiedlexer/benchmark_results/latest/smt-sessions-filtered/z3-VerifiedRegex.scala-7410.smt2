; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394182 () Bool)

(assert start!394182)

(declare-fun b!4144666 () Bool)

(declare-fun b_free!118155 () Bool)

(declare-fun b_next!118859 () Bool)

(assert (=> b!4144666 (= b_free!118155 (not b_next!118859))))

(declare-fun tp!1263270 () Bool)

(declare-fun b_and!322025 () Bool)

(assert (=> b!4144666 (= tp!1263270 b_and!322025)))

(declare-fun b_free!118157 () Bool)

(declare-fun b_next!118861 () Bool)

(assert (=> b!4144666 (= b_free!118157 (not b_next!118861))))

(declare-fun tp!1263262 () Bool)

(declare-fun b_and!322027 () Bool)

(assert (=> b!4144666 (= tp!1263262 b_and!322027)))

(declare-fun b!4144656 () Bool)

(declare-fun b_free!118159 () Bool)

(declare-fun b_next!118863 () Bool)

(assert (=> b!4144656 (= b_free!118159 (not b_next!118863))))

(declare-fun tp!1263264 () Bool)

(declare-fun b_and!322029 () Bool)

(assert (=> b!4144656 (= tp!1263264 b_and!322029)))

(declare-fun b_free!118161 () Bool)

(declare-fun b_next!118865 () Bool)

(assert (=> b!4144656 (= b_free!118161 (not b_next!118865))))

(declare-fun tp!1263271 () Bool)

(declare-fun b_and!322031 () Bool)

(assert (=> b!4144656 (= tp!1263271 b_and!322031)))

(declare-fun b!4144668 () Bool)

(declare-fun b_free!118163 () Bool)

(declare-fun b_next!118867 () Bool)

(assert (=> b!4144668 (= b_free!118163 (not b_next!118867))))

(declare-fun tp!1263268 () Bool)

(declare-fun b_and!322033 () Bool)

(assert (=> b!4144668 (= tp!1263268 b_and!322033)))

(declare-fun b_free!118165 () Bool)

(declare-fun b_next!118869 () Bool)

(assert (=> b!4144668 (= b_free!118165 (not b_next!118869))))

(declare-fun tp!1263267 () Bool)

(declare-fun b_and!322035 () Bool)

(assert (=> b!4144668 (= tp!1263267 b_and!322035)))

(declare-fun b!4144654 () Bool)

(declare-fun e!2571620 () Bool)

(declare-fun e!2571625 () Bool)

(assert (=> b!4144654 (= e!2571620 e!2571625)))

(declare-fun res!1696225 () Bool)

(assert (=> b!4144654 (=> res!1696225 e!2571625)))

(declare-datatypes ((List!45091 0))(
  ( (Nil!44967) (Cons!44967 (h!50387 (_ BitVec 16)) (t!342658 List!45091)) )
))
(declare-datatypes ((TokenValue!7622 0))(
  ( (FloatLiteralValue!15244 (text!53799 List!45091)) (TokenValueExt!7621 (__x!27461 Int)) (Broken!38110 (value!231200 List!45091)) (Object!7745) (End!7622) (Def!7622) (Underscore!7622) (Match!7622) (Else!7622) (Error!7622) (Case!7622) (If!7622) (Extends!7622) (Abstract!7622) (Class!7622) (Val!7622) (DelimiterValue!15244 (del!7682 List!45091)) (KeywordValue!7628 (value!231201 List!45091)) (CommentValue!15244 (value!231202 List!45091)) (WhitespaceValue!15244 (value!231203 List!45091)) (IndentationValue!7622 (value!231204 List!45091)) (String!51859) (Int32!7622) (Broken!38111 (value!231205 List!45091)) (Boolean!7623) (Unit!64258) (OperatorValue!7625 (op!7682 List!45091)) (IdentifierValue!15244 (value!231206 List!45091)) (IdentifierValue!15245 (value!231207 List!45091)) (WhitespaceValue!15245 (value!231208 List!45091)) (True!15244) (False!15244) (Broken!38112 (value!231209 List!45091)) (Broken!38113 (value!231210 List!45091)) (True!15245) (RightBrace!7622) (RightBracket!7622) (Colon!7622) (Null!7622) (Comma!7622) (LeftBracket!7622) (False!15245) (LeftBrace!7622) (ImaginaryLiteralValue!7622 (text!53800 List!45091)) (StringLiteralValue!22866 (value!231211 List!45091)) (EOFValue!7622 (value!231212 List!45091)) (IdentValue!7622 (value!231213 List!45091)) (DelimiterValue!15245 (value!231214 List!45091)) (DedentValue!7622 (value!231215 List!45091)) (NewLineValue!7622 (value!231216 List!45091)) (IntegerValue!22866 (value!231217 (_ BitVec 32)) (text!53801 List!45091)) (IntegerValue!22867 (value!231218 Int) (text!53802 List!45091)) (Times!7622) (Or!7622) (Equal!7622) (Minus!7622) (Broken!38114 (value!231219 List!45091)) (And!7622) (Div!7622) (LessEqual!7622) (Mod!7622) (Concat!19919) (Not!7622) (Plus!7622) (SpaceValue!7622 (value!231220 List!45091)) (IntegerValue!22868 (value!231221 Int) (text!53803 List!45091)) (StringLiteralValue!22867 (text!53804 List!45091)) (FloatLiteralValue!15245 (text!53805 List!45091)) (BytesLiteralValue!7622 (value!231222 List!45091)) (CommentValue!15245 (value!231223 List!45091)) (StringLiteralValue!22868 (value!231224 List!45091)) (ErrorTokenValue!7622 (msg!7683 List!45091)) )
))
(declare-datatypes ((C!24780 0))(
  ( (C!24781 (val!14500 Int)) )
))
(declare-datatypes ((List!45092 0))(
  ( (Nil!44968) (Cons!44968 (h!50388 C!24780) (t!342659 List!45092)) )
))
(declare-datatypes ((IArray!27211 0))(
  ( (IArray!27212 (innerList!13663 List!45092)) )
))
(declare-datatypes ((Conc!13603 0))(
  ( (Node!13603 (left!33673 Conc!13603) (right!34003 Conc!13603) (csize!27436 Int) (cheight!13814 Int)) (Leaf!21014 (xs!16909 IArray!27211) (csize!27437 Int)) (Empty!13603) )
))
(declare-datatypes ((BalanceConc!26800 0))(
  ( (BalanceConc!26801 (c!710276 Conc!13603)) )
))
(declare-datatypes ((Regex!12297 0))(
  ( (ElementMatch!12297 (c!710277 C!24780)) (Concat!19920 (regOne!25106 Regex!12297) (regTwo!25106 Regex!12297)) (EmptyExpr!12297) (Star!12297 (reg!12626 Regex!12297)) (EmptyLang!12297) (Union!12297 (regOne!25107 Regex!12297) (regTwo!25107 Regex!12297)) )
))
(declare-datatypes ((String!51860 0))(
  ( (String!51861 (value!231225 String)) )
))
(declare-datatypes ((TokenValueInjection!14672 0))(
  ( (TokenValueInjection!14673 (toValue!10056 Int) (toChars!9915 Int)) )
))
(declare-datatypes ((Rule!14584 0))(
  ( (Rule!14585 (regex!7392 Regex!12297) (tag!8252 String!51860) (isSeparator!7392 Bool) (transformation!7392 TokenValueInjection!14672)) )
))
(declare-datatypes ((Token!13714 0))(
  ( (Token!13715 (value!231226 TokenValue!7622) (rule!10512 Rule!14584) (size!33326 Int) (originalCharacters!7888 List!45092)) )
))
(declare-datatypes ((tuple2!43346 0))(
  ( (tuple2!43347 (_1!24807 Token!13714) (_2!24807 List!45092)) )
))
(declare-datatypes ((Option!9698 0))(
  ( (None!9697) (Some!9697 (v!40345 tuple2!43346)) )
))
(declare-fun lt!1478282 () Option!9698)

(declare-fun isEmpty!26829 (Option!9698) Bool)

(assert (=> b!4144654 (= res!1696225 (isEmpty!26829 lt!1478282))))

(declare-datatypes ((LexerInterface!6981 0))(
  ( (LexerInterfaceExt!6978 (__x!27462 Int)) (Lexer!6979) )
))
(declare-fun thiss!25645 () LexerInterface!6981)

(declare-fun input!3238 () List!45092)

(declare-fun rBis!149 () Rule!14584)

(declare-fun maxPrefixOneRule!3110 (LexerInterface!6981 Rule!14584 List!45092) Option!9698)

(assert (=> b!4144654 (= lt!1478282 (maxPrefixOneRule!3110 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14584)

(assert (=> b!4144654 (not (= rBis!149 r!4008))))

(declare-datatypes ((List!45093 0))(
  ( (Nil!44969) (Cons!44969 (h!50389 Rule!14584) (t!342660 List!45093)) )
))
(declare-fun rules!3756 () List!45093)

(declare-datatypes ((Unit!64259 0))(
  ( (Unit!64260) )
))
(declare-fun lt!1478275 () Unit!64259)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!90 (LexerInterface!6981 List!45093 Rule!14584 Rule!14584) Unit!64259)

(assert (=> b!4144654 (= lt!1478275 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!90 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9072 (List!45093 Rule!14584) Bool)

(declare-fun tail!6573 (List!45093) List!45093)

(assert (=> b!4144654 (contains!9072 (tail!6573 rules!3756) r!4008)))

(declare-fun lt!1478276 () Unit!64259)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!96 (List!45093 Rule!14584 Rule!14584) Unit!64259)

(assert (=> b!4144654 (= lt!1478276 (lemmaGetIndexBiggerAndHeadEqThenTailContains!96 rules!3756 rBis!149 r!4008))))

(declare-fun b!4144655 () Bool)

(declare-fun res!1696227 () Bool)

(declare-fun e!2571627 () Bool)

(assert (=> b!4144655 (=> (not res!1696227) (not e!2571627))))

(assert (=> b!4144655 (= res!1696227 (contains!9072 rules!3756 rBis!149))))

(declare-fun e!2571628 () Bool)

(assert (=> b!4144656 (= e!2571628 (and tp!1263264 tp!1263271))))

(declare-fun res!1696224 () Bool)

(assert (=> start!394182 (=> (not res!1696224) (not e!2571627))))

(get-info :version)

(assert (=> start!394182 (= res!1696224 ((_ is Lexer!6979) thiss!25645))))

(assert (=> start!394182 e!2571627))

(declare-fun e!2571617 () Bool)

(assert (=> start!394182 e!2571617))

(declare-fun e!2571621 () Bool)

(assert (=> start!394182 e!2571621))

(assert (=> start!394182 true))

(declare-fun e!2571623 () Bool)

(assert (=> start!394182 e!2571623))

(declare-fun e!2571613 () Bool)

(assert (=> start!394182 e!2571613))

(declare-fun e!2571618 () Bool)

(assert (=> start!394182 e!2571618))

(declare-fun b!4144657 () Bool)

(declare-fun res!1696221 () Bool)

(assert (=> b!4144657 (=> (not res!1696221) (not e!2571627))))

(declare-fun rulesInvariant!6278 (LexerInterface!6981 List!45093) Bool)

(assert (=> b!4144657 (= res!1696221 (rulesInvariant!6278 thiss!25645 rules!3756))))

(declare-fun b!4144658 () Bool)

(declare-fun tp!1263261 () Bool)

(declare-fun inv!59575 (String!51860) Bool)

(declare-fun inv!59577 (TokenValueInjection!14672) Bool)

(assert (=> b!4144658 (= e!2571618 (and tp!1263261 (inv!59575 (tag!8252 rBis!149)) (inv!59577 (transformation!7392 rBis!149)) e!2571628))))

(declare-fun b!4144659 () Bool)

(declare-fun res!1696230 () Bool)

(assert (=> b!4144659 (=> (not res!1696230) (not e!2571627))))

(declare-fun p!2912 () List!45092)

(declare-fun isEmpty!26830 (List!45092) Bool)

(assert (=> b!4144659 (= res!1696230 (not (isEmpty!26830 p!2912)))))

(declare-fun b!4144660 () Bool)

(declare-fun tp_is_empty!21517 () Bool)

(declare-fun tp!1263266 () Bool)

(assert (=> b!4144660 (= e!2571613 (and tp_is_empty!21517 tp!1263266))))

(declare-fun tp!1263272 () Bool)

(declare-fun e!2571615 () Bool)

(declare-fun b!4144661 () Bool)

(declare-fun e!2571622 () Bool)

(assert (=> b!4144661 (= e!2571615 (and tp!1263272 (inv!59575 (tag!8252 (h!50389 rules!3756))) (inv!59577 (transformation!7392 (h!50389 rules!3756))) e!2571622))))

(declare-fun b!4144662 () Bool)

(declare-fun res!1696232 () Bool)

(assert (=> b!4144662 (=> (not res!1696232) (not e!2571627))))

(declare-fun isEmpty!26831 (List!45093) Bool)

(assert (=> b!4144662 (= res!1696232 (not (isEmpty!26831 rules!3756)))))

(declare-fun b!4144663 () Bool)

(declare-fun e!2571616 () Bool)

(declare-fun tp!1263269 () Bool)

(assert (=> b!4144663 (= e!2571623 (and tp!1263269 (inv!59575 (tag!8252 r!4008)) (inv!59577 (transformation!7392 r!4008)) e!2571616))))

(declare-fun b!4144664 () Bool)

(declare-fun e!2571612 () Bool)

(assert (=> b!4144664 (= e!2571612 (not e!2571620))))

(declare-fun res!1696231 () Bool)

(assert (=> b!4144664 (=> res!1696231 e!2571620)))

(assert (=> b!4144664 (= res!1696231 (or (not ((_ is Cons!44969) rules!3756)) (not (= (h!50389 rules!3756) rBis!149))))))

(declare-fun lt!1478285 () Unit!64259)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2238 (LexerInterface!6981 Rule!14584 List!45093) Unit!64259)

(assert (=> b!4144664 (= lt!1478285 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2238 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3198 (LexerInterface!6981 Rule!14584) Bool)

(assert (=> b!4144664 (ruleValid!3198 thiss!25645 rBis!149)))

(declare-fun lt!1478272 () Unit!64259)

(assert (=> b!4144664 (= lt!1478272 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2238 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4144665 () Bool)

(declare-fun res!1696233 () Bool)

(assert (=> b!4144665 (=> (not res!1696233) (not e!2571612))))

(declare-fun matchR!6126 (Regex!12297 List!45092) Bool)

(assert (=> b!4144665 (= res!1696233 (matchR!6126 (regex!7392 r!4008) p!2912))))

(assert (=> b!4144666 (= e!2571622 (and tp!1263270 tp!1263262))))

(declare-fun b!4144667 () Bool)

(declare-fun res!1696222 () Bool)

(assert (=> b!4144667 (=> (not res!1696222) (not e!2571612))))

(assert (=> b!4144667 (= res!1696222 (ruleValid!3198 thiss!25645 r!4008))))

(assert (=> b!4144668 (= e!2571616 (and tp!1263268 tp!1263267))))

(declare-fun b!4144669 () Bool)

(declare-fun e!2571614 () Bool)

(assert (=> b!4144669 (= e!2571614 true)))

(assert (=> b!4144669 (not (matchR!6126 (regex!7392 rBis!149) p!2912))))

(declare-fun lt!1478284 () tuple2!43346)

(declare-fun lt!1478279 () Unit!64259)

(declare-fun lt!1478273 () List!45092)

(declare-fun lemmaMaxPrefixOneRuleOutputsMaxPrefix!4 (LexerInterface!6981 Rule!14584 List!45092 Token!13714 List!45092 List!45092 List!45092) Unit!64259)

(assert (=> b!4144669 (= lt!1478279 (lemmaMaxPrefixOneRuleOutputsMaxPrefix!4 thiss!25645 rBis!149 lt!1478273 (_1!24807 lt!1478284) input!3238 (_2!24807 lt!1478284) p!2912))))

(declare-fun isPrefix!4327 (List!45092 List!45092) Bool)

(declare-fun ++!11632 (List!45092 List!45092) List!45092)

(assert (=> b!4144669 (isPrefix!4327 lt!1478273 (++!11632 lt!1478273 (_2!24807 lt!1478284)))))

(declare-fun lt!1478286 () Unit!64259)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2956 (List!45092 List!45092) Unit!64259)

(assert (=> b!4144669 (= lt!1478286 (lemmaConcatTwoListThenFirstIsPrefix!2956 lt!1478273 (_2!24807 lt!1478284)))))

(declare-fun lt!1478283 () BalanceConc!26800)

(declare-fun list!16475 (BalanceConc!26800) List!45092)

(assert (=> b!4144669 (= lt!1478273 (list!16475 lt!1478283))))

(declare-fun b!4144670 () Bool)

(declare-fun res!1696228 () Bool)

(assert (=> b!4144670 (=> (not res!1696228) (not e!2571627))))

(assert (=> b!4144670 (= res!1696228 (isPrefix!4327 p!2912 input!3238))))

(declare-fun b!4144671 () Bool)

(declare-fun res!1696229 () Bool)

(assert (=> b!4144671 (=> (not res!1696229) (not e!2571612))))

(declare-fun getIndex!738 (List!45093 Rule!14584) Int)

(assert (=> b!4144671 (= res!1696229 (< (getIndex!738 rules!3756 rBis!149) (getIndex!738 rules!3756 r!4008)))))

(declare-fun b!4144672 () Bool)

(assert (=> b!4144672 (= e!2571627 e!2571612)))

(declare-fun res!1696226 () Bool)

(assert (=> b!4144672 (=> (not res!1696226) (not e!2571612))))

(declare-fun lt!1478274 () Int)

(declare-fun lt!1478281 () TokenValue!7622)

(declare-fun maxPrefix!4171 (LexerInterface!6981 List!45093 List!45092) Option!9698)

(declare-fun getSuffix!2654 (List!45092 List!45092) List!45092)

(assert (=> b!4144672 (= res!1696226 (= (maxPrefix!4171 thiss!25645 rules!3756 input!3238) (Some!9697 (tuple2!43347 (Token!13715 lt!1478281 r!4008 lt!1478274 p!2912) (getSuffix!2654 input!3238 p!2912)))))))

(declare-fun size!33327 (List!45092) Int)

(assert (=> b!4144672 (= lt!1478274 (size!33327 p!2912))))

(declare-fun lt!1478280 () BalanceConc!26800)

(declare-fun apply!10465 (TokenValueInjection!14672 BalanceConc!26800) TokenValue!7622)

(assert (=> b!4144672 (= lt!1478281 (apply!10465 (transformation!7392 r!4008) lt!1478280))))

(declare-fun lt!1478278 () Unit!64259)

(declare-fun lemmaSemiInverse!2250 (TokenValueInjection!14672 BalanceConc!26800) Unit!64259)

(assert (=> b!4144672 (= lt!1478278 (lemmaSemiInverse!2250 (transformation!7392 r!4008) lt!1478280))))

(declare-fun seqFromList!5509 (List!45092) BalanceConc!26800)

(assert (=> b!4144672 (= lt!1478280 (seqFromList!5509 p!2912))))

(declare-fun b!4144673 () Bool)

(declare-fun res!1696223 () Bool)

(assert (=> b!4144673 (=> (not res!1696223) (not e!2571627))))

(assert (=> b!4144673 (= res!1696223 (contains!9072 rules!3756 r!4008))))

(declare-fun b!4144674 () Bool)

(declare-fun tp!1263265 () Bool)

(assert (=> b!4144674 (= e!2571621 (and tp_is_empty!21517 tp!1263265))))

(declare-fun b!4144675 () Bool)

(declare-fun tp!1263263 () Bool)

(assert (=> b!4144675 (= e!2571617 (and e!2571615 tp!1263263))))

(declare-fun b!4144676 () Bool)

(assert (=> b!4144676 (= e!2571625 e!2571614)))

(declare-fun res!1696234 () Bool)

(assert (=> b!4144676 (=> res!1696234 e!2571614)))

(declare-fun lt!1478277 () Int)

(assert (=> b!4144676 (= res!1696234 (or (> lt!1478277 lt!1478274) (>= lt!1478277 lt!1478274)))))

(declare-fun size!33328 (BalanceConc!26800) Int)

(assert (=> b!4144676 (= lt!1478277 (size!33328 lt!1478283))))

(declare-fun charsOf!4991 (Token!13714) BalanceConc!26800)

(assert (=> b!4144676 (= lt!1478283 (charsOf!4991 (_1!24807 lt!1478284)))))

(declare-fun get!14683 (Option!9698) tuple2!43346)

(assert (=> b!4144676 (= lt!1478284 (get!14683 lt!1478282))))

(assert (= (and start!394182 res!1696224) b!4144670))

(assert (= (and b!4144670 res!1696228) b!4144662))

(assert (= (and b!4144662 res!1696232) b!4144657))

(assert (= (and b!4144657 res!1696221) b!4144673))

(assert (= (and b!4144673 res!1696223) b!4144655))

(assert (= (and b!4144655 res!1696227) b!4144659))

(assert (= (and b!4144659 res!1696230) b!4144672))

(assert (= (and b!4144672 res!1696226) b!4144665))

(assert (= (and b!4144665 res!1696233) b!4144671))

(assert (= (and b!4144671 res!1696229) b!4144667))

(assert (= (and b!4144667 res!1696222) b!4144664))

(assert (= (and b!4144664 (not res!1696231)) b!4144654))

(assert (= (and b!4144654 (not res!1696225)) b!4144676))

(assert (= (and b!4144676 (not res!1696234)) b!4144669))

(assert (= b!4144661 b!4144666))

(assert (= b!4144675 b!4144661))

(assert (= (and start!394182 ((_ is Cons!44969) rules!3756)) b!4144675))

(assert (= (and start!394182 ((_ is Cons!44968) p!2912)) b!4144674))

(assert (= b!4144663 b!4144668))

(assert (= start!394182 b!4144663))

(assert (= (and start!394182 ((_ is Cons!44968) input!3238)) b!4144660))

(assert (= b!4144658 b!4144656))

(assert (= start!394182 b!4144658))

(declare-fun m!4740769 () Bool)

(assert (=> b!4144661 m!4740769))

(declare-fun m!4740771 () Bool)

(assert (=> b!4144661 m!4740771))

(declare-fun m!4740773 () Bool)

(assert (=> b!4144665 m!4740773))

(declare-fun m!4740775 () Bool)

(assert (=> b!4144659 m!4740775))

(declare-fun m!4740777 () Bool)

(assert (=> b!4144673 m!4740777))

(declare-fun m!4740779 () Bool)

(assert (=> b!4144669 m!4740779))

(declare-fun m!4740781 () Bool)

(assert (=> b!4144669 m!4740781))

(declare-fun m!4740783 () Bool)

(assert (=> b!4144669 m!4740783))

(assert (=> b!4144669 m!4740783))

(declare-fun m!4740785 () Bool)

(assert (=> b!4144669 m!4740785))

(declare-fun m!4740787 () Bool)

(assert (=> b!4144669 m!4740787))

(declare-fun m!4740789 () Bool)

(assert (=> b!4144669 m!4740789))

(declare-fun m!4740791 () Bool)

(assert (=> b!4144671 m!4740791))

(declare-fun m!4740793 () Bool)

(assert (=> b!4144671 m!4740793))

(declare-fun m!4740795 () Bool)

(assert (=> b!4144667 m!4740795))

(declare-fun m!4740797 () Bool)

(assert (=> b!4144676 m!4740797))

(declare-fun m!4740799 () Bool)

(assert (=> b!4144676 m!4740799))

(declare-fun m!4740801 () Bool)

(assert (=> b!4144676 m!4740801))

(declare-fun m!4740803 () Bool)

(assert (=> b!4144662 m!4740803))

(declare-fun m!4740805 () Bool)

(assert (=> b!4144672 m!4740805))

(declare-fun m!4740807 () Bool)

(assert (=> b!4144672 m!4740807))

(declare-fun m!4740809 () Bool)

(assert (=> b!4144672 m!4740809))

(declare-fun m!4740811 () Bool)

(assert (=> b!4144672 m!4740811))

(declare-fun m!4740813 () Bool)

(assert (=> b!4144672 m!4740813))

(declare-fun m!4740815 () Bool)

(assert (=> b!4144672 m!4740815))

(declare-fun m!4740817 () Bool)

(assert (=> b!4144655 m!4740817))

(declare-fun m!4740819 () Bool)

(assert (=> b!4144664 m!4740819))

(declare-fun m!4740821 () Bool)

(assert (=> b!4144664 m!4740821))

(declare-fun m!4740823 () Bool)

(assert (=> b!4144664 m!4740823))

(declare-fun m!4740825 () Bool)

(assert (=> b!4144654 m!4740825))

(declare-fun m!4740827 () Bool)

(assert (=> b!4144654 m!4740827))

(declare-fun m!4740829 () Bool)

(assert (=> b!4144654 m!4740829))

(declare-fun m!4740831 () Bool)

(assert (=> b!4144654 m!4740831))

(assert (=> b!4144654 m!4740827))

(declare-fun m!4740833 () Bool)

(assert (=> b!4144654 m!4740833))

(declare-fun m!4740835 () Bool)

(assert (=> b!4144654 m!4740835))

(declare-fun m!4740837 () Bool)

(assert (=> b!4144670 m!4740837))

(declare-fun m!4740839 () Bool)

(assert (=> b!4144658 m!4740839))

(declare-fun m!4740841 () Bool)

(assert (=> b!4144658 m!4740841))

(declare-fun m!4740843 () Bool)

(assert (=> b!4144663 m!4740843))

(declare-fun m!4740845 () Bool)

(assert (=> b!4144663 m!4740845))

(declare-fun m!4740847 () Bool)

(assert (=> b!4144657 m!4740847))

(check-sat (not b!4144660) (not b!4144654) b_and!322027 (not b!4144671) (not b!4144673) (not b_next!118869) (not b!4144672) (not b_next!118865) (not b!4144662) b_and!322029 (not b!4144659) (not b!4144664) (not b!4144657) (not b!4144669) (not b!4144670) (not b_next!118867) b_and!322035 (not b!4144667) (not b!4144655) b_and!322033 (not b!4144674) b_and!322031 (not b!4144675) (not b!4144676) (not b!4144665) (not b_next!118863) (not b_next!118861) tp_is_empty!21517 (not b!4144663) (not b!4144658) (not b!4144661) b_and!322025 (not b_next!118859))
(check-sat (not b_next!118867) b_and!322035 b_and!322033 b_and!322027 b_and!322031 (not b_next!118869) (not b_next!118863) (not b_next!118861) (not b_next!118865) b_and!322029 b_and!322025 (not b_next!118859))

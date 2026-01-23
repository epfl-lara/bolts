; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375784 () Bool)

(assert start!375784)

(declare-fun b!3992828 () Bool)

(declare-fun b_free!110905 () Bool)

(declare-fun b_next!111609 () Bool)

(assert (=> b!3992828 (= b_free!110905 (not b_next!111609))))

(declare-fun tp!1215963 () Bool)

(declare-fun b_and!306735 () Bool)

(assert (=> b!3992828 (= tp!1215963 b_and!306735)))

(declare-fun b_free!110907 () Bool)

(declare-fun b_next!111611 () Bool)

(assert (=> b!3992828 (= b_free!110907 (not b_next!111611))))

(declare-fun tp!1215956 () Bool)

(declare-fun b_and!306737 () Bool)

(assert (=> b!3992828 (= tp!1215956 b_and!306737)))

(declare-fun b!3992820 () Bool)

(declare-fun b_free!110909 () Bool)

(declare-fun b_next!111613 () Bool)

(assert (=> b!3992820 (= b_free!110909 (not b_next!111613))))

(declare-fun tp!1215961 () Bool)

(declare-fun b_and!306739 () Bool)

(assert (=> b!3992820 (= tp!1215961 b_and!306739)))

(declare-fun b_free!110911 () Bool)

(declare-fun b_next!111615 () Bool)

(assert (=> b!3992820 (= b_free!110911 (not b_next!111615))))

(declare-fun tp!1215964 () Bool)

(declare-fun b_and!306741 () Bool)

(assert (=> b!3992820 (= tp!1215964 b_and!306741)))

(declare-fun b!3992781 () Bool)

(declare-fun e!2475247 () Bool)

(declare-fun e!2475240 () Bool)

(assert (=> b!3992781 (= e!2475247 e!2475240)))

(declare-fun res!1620788 () Bool)

(assert (=> b!3992781 (=> (not res!1620788) (not e!2475240))))

(declare-datatypes ((List!42828 0))(
  ( (Nil!42704) (Cons!42704 (h!48124 (_ BitVec 16)) (t!331867 List!42828)) )
))
(declare-datatypes ((TokenValue!6992 0))(
  ( (FloatLiteralValue!13984 (text!49389 List!42828)) (TokenValueExt!6991 (__x!26201 Int)) (Broken!34960 (value!213325 List!42828)) (Object!7115) (End!6992) (Def!6992) (Underscore!6992) (Match!6992) (Else!6992) (Error!6992) (Case!6992) (If!6992) (Extends!6992) (Abstract!6992) (Class!6992) (Val!6992) (DelimiterValue!13984 (del!7052 List!42828)) (KeywordValue!6998 (value!213326 List!42828)) (CommentValue!13984 (value!213327 List!42828)) (WhitespaceValue!13984 (value!213328 List!42828)) (IndentationValue!6992 (value!213329 List!42828)) (String!48677) (Int32!6992) (Broken!34961 (value!213330 List!42828)) (Boolean!6993) (Unit!61506) (OperatorValue!6995 (op!7052 List!42828)) (IdentifierValue!13984 (value!213331 List!42828)) (IdentifierValue!13985 (value!213332 List!42828)) (WhitespaceValue!13985 (value!213333 List!42828)) (True!13984) (False!13984) (Broken!34962 (value!213334 List!42828)) (Broken!34963 (value!213335 List!42828)) (True!13985) (RightBrace!6992) (RightBracket!6992) (Colon!6992) (Null!6992) (Comma!6992) (LeftBracket!6992) (False!13985) (LeftBrace!6992) (ImaginaryLiteralValue!6992 (text!49390 List!42828)) (StringLiteralValue!20976 (value!213336 List!42828)) (EOFValue!6992 (value!213337 List!42828)) (IdentValue!6992 (value!213338 List!42828)) (DelimiterValue!13985 (value!213339 List!42828)) (DedentValue!6992 (value!213340 List!42828)) (NewLineValue!6992 (value!213341 List!42828)) (IntegerValue!20976 (value!213342 (_ BitVec 32)) (text!49391 List!42828)) (IntegerValue!20977 (value!213343 Int) (text!49392 List!42828)) (Times!6992) (Or!6992) (Equal!6992) (Minus!6992) (Broken!34964 (value!213344 List!42828)) (And!6992) (Div!6992) (LessEqual!6992) (Mod!6992) (Concat!18659) (Not!6992) (Plus!6992) (SpaceValue!6992 (value!213345 List!42828)) (IntegerValue!20978 (value!213346 Int) (text!49393 List!42828)) (StringLiteralValue!20977 (text!49394 List!42828)) (FloatLiteralValue!13985 (text!49395 List!42828)) (BytesLiteralValue!6992 (value!213347 List!42828)) (CommentValue!13985 (value!213348 List!42828)) (StringLiteralValue!20978 (value!213349 List!42828)) (ErrorTokenValue!6992 (msg!7053 List!42828)) )
))
(declare-datatypes ((C!23520 0))(
  ( (C!23521 (val!13854 Int)) )
))
(declare-datatypes ((Regex!11667 0))(
  ( (ElementMatch!11667 (c!690952 C!23520)) (Concat!18660 (regOne!23846 Regex!11667) (regTwo!23846 Regex!11667)) (EmptyExpr!11667) (Star!11667 (reg!11996 Regex!11667)) (EmptyLang!11667) (Union!11667 (regOne!23847 Regex!11667) (regTwo!23847 Regex!11667)) )
))
(declare-datatypes ((String!48678 0))(
  ( (String!48679 (value!213350 String)) )
))
(declare-datatypes ((List!42829 0))(
  ( (Nil!42705) (Cons!42705 (h!48125 C!23520) (t!331868 List!42829)) )
))
(declare-datatypes ((IArray!25951 0))(
  ( (IArray!25952 (innerList!13033 List!42829)) )
))
(declare-datatypes ((Conc!12973 0))(
  ( (Node!12973 (left!32260 Conc!12973) (right!32590 Conc!12973) (csize!26176 Int) (cheight!13184 Int)) (Leaf!20061 (xs!16279 IArray!25951) (csize!26177 Int)) (Empty!12973) )
))
(declare-datatypes ((BalanceConc!25540 0))(
  ( (BalanceConc!25541 (c!690953 Conc!12973)) )
))
(declare-datatypes ((TokenValueInjection!13412 0))(
  ( (TokenValueInjection!13413 (toValue!9250 Int) (toChars!9109 Int)) )
))
(declare-datatypes ((Rule!13324 0))(
  ( (Rule!13325 (regex!6762 Regex!11667) (tag!7622 String!48678) (isSeparator!6762 Bool) (transformation!6762 TokenValueInjection!13412)) )
))
(declare-datatypes ((Token!12662 0))(
  ( (Token!12663 (value!213351 TokenValue!6992) (rule!9784 Rule!13324) (size!31938 Int) (originalCharacters!7362 List!42829)) )
))
(declare-datatypes ((tuple2!41904 0))(
  ( (tuple2!41905 (_1!24086 Token!12662) (_2!24086 List!42829)) )
))
(declare-datatypes ((Option!9176 0))(
  ( (None!9175) (Some!9175 (v!39531 tuple2!41904)) )
))
(declare-fun lt!1408340 () Option!9176)

(declare-fun lt!1408345 () Option!9176)

(assert (=> b!3992781 (= res!1620788 (= lt!1408340 lt!1408345))))

(declare-fun lt!1408313 () tuple2!41904)

(assert (=> b!3992781 (= lt!1408345 (Some!9175 lt!1408313))))

(declare-fun lt!1408320 () List!42829)

(declare-datatypes ((LexerInterface!6351 0))(
  ( (LexerInterfaceExt!6348 (__x!26202 Int)) (Lexer!6349) )
))
(declare-fun thiss!21717 () LexerInterface!6351)

(declare-datatypes ((List!42830 0))(
  ( (Nil!42706) (Cons!42706 (h!48126 Rule!13324) (t!331869 List!42830)) )
))
(declare-fun rules!2999 () List!42830)

(declare-fun maxPrefix!3649 (LexerInterface!6351 List!42830 List!42829) Option!9176)

(assert (=> b!3992781 (= lt!1408340 (maxPrefix!3649 thiss!21717 rules!2999 lt!1408320))))

(declare-fun token!484 () Token!12662)

(declare-fun suffixResult!105 () List!42829)

(assert (=> b!3992781 (= lt!1408313 (tuple2!41905 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!42829)

(declare-fun suffix!1299 () List!42829)

(declare-fun ++!11164 (List!42829 List!42829) List!42829)

(assert (=> b!3992781 (= lt!1408320 (++!11164 prefix!494 suffix!1299))))

(declare-fun b!3992782 () Bool)

(declare-fun e!2475221 () Bool)

(declare-fun e!2475251 () Bool)

(assert (=> b!3992782 (= e!2475221 e!2475251)))

(declare-fun res!1620792 () Bool)

(assert (=> b!3992782 (=> res!1620792 e!2475251)))

(declare-fun lt!1408314 () Int)

(declare-fun lt!1408324 () Int)

(assert (=> b!3992782 (= res!1620792 (not (= lt!1408314 lt!1408324)))))

(declare-datatypes ((Unit!61507 0))(
  ( (Unit!61508) )
))
(declare-fun lt!1408292 () Unit!61507)

(declare-fun e!2475252 () Unit!61507)

(assert (=> b!3992782 (= lt!1408292 e!2475252)))

(declare-fun c!690950 () Bool)

(assert (=> b!3992782 (= c!690950 (< lt!1408324 lt!1408314))))

(declare-fun lt!1408296 () Unit!61507)

(declare-fun e!2475238 () Unit!61507)

(assert (=> b!3992782 (= lt!1408296 e!2475238)))

(declare-fun c!690951 () Bool)

(assert (=> b!3992782 (= c!690951 (> lt!1408324 lt!1408314))))

(declare-fun lt!1408305 () Option!9176)

(declare-fun lt!1408288 () List!42829)

(assert (=> b!3992782 (= (_2!24086 (v!39531 lt!1408305)) lt!1408288)))

(declare-fun lt!1408326 () List!42829)

(declare-fun lt!1408348 () List!42829)

(declare-fun lt!1408334 () Unit!61507)

(declare-fun lemmaSamePrefixThenSameSuffix!2036 (List!42829 List!42829 List!42829 List!42829 List!42829) Unit!61507)

(assert (=> b!3992782 (= lt!1408334 (lemmaSamePrefixThenSameSuffix!2036 lt!1408348 (_2!24086 (v!39531 lt!1408305)) lt!1408348 lt!1408288 lt!1408326))))

(declare-fun lt!1408347 () List!42829)

(declare-fun isPrefix!3849 (List!42829 List!42829) Bool)

(assert (=> b!3992782 (isPrefix!3849 lt!1408348 lt!1408347)))

(declare-fun lt!1408312 () Unit!61507)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2692 (List!42829 List!42829) Unit!61507)

(assert (=> b!3992782 (= lt!1408312 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408348 lt!1408288))))

(declare-fun b!3992783 () Bool)

(declare-fun res!1620772 () Bool)

(declare-fun e!2475233 () Bool)

(assert (=> b!3992783 (=> (not res!1620772) (not e!2475233))))

(declare-fun lt!1408346 () TokenValue!6992)

(assert (=> b!3992783 (= res!1620772 (= (value!213351 token!484) lt!1408346))))

(declare-fun res!1620786 () Bool)

(declare-fun e!2475218 () Bool)

(assert (=> start!375784 (=> (not res!1620786) (not e!2475218))))

(get-info :version)

(assert (=> start!375784 (= res!1620786 ((_ is Lexer!6349) thiss!21717))))

(assert (=> start!375784 e!2475218))

(declare-fun e!2475245 () Bool)

(assert (=> start!375784 e!2475245))

(declare-fun e!2475223 () Bool)

(declare-fun inv!57038 (Token!12662) Bool)

(assert (=> start!375784 (and (inv!57038 token!484) e!2475223)))

(declare-fun e!2475246 () Bool)

(assert (=> start!375784 e!2475246))

(declare-fun e!2475241 () Bool)

(assert (=> start!375784 e!2475241))

(declare-fun e!2475243 () Bool)

(assert (=> start!375784 e!2475243))

(assert (=> start!375784 true))

(declare-fun e!2475237 () Bool)

(assert (=> start!375784 e!2475237))

(declare-fun e!2475231 () Bool)

(assert (=> start!375784 e!2475231))

(declare-fun b!3992784 () Bool)

(declare-fun tp!1215965 () Bool)

(declare-fun e!2475222 () Bool)

(declare-fun inv!21 (TokenValue!6992) Bool)

(assert (=> b!3992784 (= e!2475223 (and (inv!21 (value!213351 token!484)) e!2475222 tp!1215965))))

(declare-fun b!3992785 () Bool)

(declare-fun e!2475234 () Bool)

(assert (=> b!3992785 (= e!2475218 e!2475234)))

(declare-fun res!1620775 () Bool)

(assert (=> b!3992785 (=> (not res!1620775) (not e!2475234))))

(declare-fun lt!1408287 () Int)

(assert (=> b!3992785 (= res!1620775 (>= lt!1408287 lt!1408314))))

(declare-fun lt!1408342 () List!42829)

(declare-fun size!31939 (List!42829) Int)

(assert (=> b!3992785 (= lt!1408314 (size!31939 lt!1408342))))

(assert (=> b!3992785 (= lt!1408287 (size!31939 prefix!494))))

(declare-fun list!15856 (BalanceConc!25540) List!42829)

(declare-fun charsOf!4578 (Token!12662) BalanceConc!25540)

(assert (=> b!3992785 (= lt!1408342 (list!15856 (charsOf!4578 token!484)))))

(declare-fun b!3992786 () Bool)

(declare-fun e!2475219 () Bool)

(declare-fun e!2475229 () Bool)

(assert (=> b!3992786 (= e!2475219 e!2475229)))

(declare-fun res!1620781 () Bool)

(assert (=> b!3992786 (=> res!1620781 e!2475229)))

(declare-fun lt!1408300 () Option!9176)

(assert (=> b!3992786 (= res!1620781 (not (= lt!1408300 (Some!9175 (v!39531 lt!1408305)))))))

(declare-fun newSuffixResult!27 () List!42829)

(assert (=> b!3992786 (isPrefix!3849 lt!1408348 (++!11164 lt!1408348 newSuffixResult!27))))

(declare-fun lt!1408290 () Unit!61507)

(assert (=> b!3992786 (= lt!1408290 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408348 newSuffixResult!27))))

(declare-fun lt!1408319 () List!42829)

(assert (=> b!3992786 (isPrefix!3849 lt!1408348 lt!1408319)))

(assert (=> b!3992786 (= lt!1408319 (++!11164 lt!1408348 (_2!24086 (v!39531 lt!1408305))))))

(declare-fun lt!1408317 () Unit!61507)

(assert (=> b!3992786 (= lt!1408317 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408348 (_2!24086 (v!39531 lt!1408305))))))

(declare-fun lt!1408328 () TokenValue!6992)

(assert (=> b!3992786 (= lt!1408300 (Some!9175 (tuple2!41905 (Token!12663 lt!1408328 (rule!9784 (_1!24086 (v!39531 lt!1408305))) lt!1408324 lt!1408348) (_2!24086 (v!39531 lt!1408305)))))))

(declare-fun maxPrefixOneRule!2683 (LexerInterface!6351 Rule!13324 List!42829) Option!9176)

(assert (=> b!3992786 (= lt!1408300 (maxPrefixOneRule!2683 thiss!21717 (rule!9784 (_1!24086 (v!39531 lt!1408305))) lt!1408326))))

(assert (=> b!3992786 (= lt!1408324 (size!31939 lt!1408348))))

(declare-fun apply!9973 (TokenValueInjection!13412 BalanceConc!25540) TokenValue!6992)

(declare-fun seqFromList!5001 (List!42829) BalanceConc!25540)

(assert (=> b!3992786 (= lt!1408328 (apply!9973 (transformation!6762 (rule!9784 (_1!24086 (v!39531 lt!1408305)))) (seqFromList!5001 lt!1408348)))))

(declare-fun lt!1408333 () Unit!61507)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1505 (LexerInterface!6351 List!42830 List!42829 List!42829 List!42829 Rule!13324) Unit!61507)

(assert (=> b!3992786 (= lt!1408333 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1505 thiss!21717 rules!2999 lt!1408348 lt!1408326 (_2!24086 (v!39531 lt!1408305)) (rule!9784 (_1!24086 (v!39531 lt!1408305)))))))

(assert (=> b!3992786 (= lt!1408348 (list!15856 (charsOf!4578 (_1!24086 (v!39531 lt!1408305)))))))

(declare-fun lt!1408308 () Unit!61507)

(declare-fun lemmaInv!977 (TokenValueInjection!13412) Unit!61507)

(assert (=> b!3992786 (= lt!1408308 (lemmaInv!977 (transformation!6762 (rule!9784 (_1!24086 (v!39531 lt!1408305))))))))

(declare-fun ruleValid!2694 (LexerInterface!6351 Rule!13324) Bool)

(assert (=> b!3992786 (ruleValid!2694 thiss!21717 (rule!9784 (_1!24086 (v!39531 lt!1408305))))))

(declare-fun lt!1408341 () Unit!61507)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1768 (LexerInterface!6351 Rule!13324 List!42830) Unit!61507)

(assert (=> b!3992786 (= lt!1408341 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1768 thiss!21717 (rule!9784 (_1!24086 (v!39531 lt!1408305))) rules!2999))))

(declare-fun lt!1408329 () Unit!61507)

(declare-fun lemmaCharactersSize!1357 (Token!12662) Unit!61507)

(assert (=> b!3992786 (= lt!1408329 (lemmaCharactersSize!1357 token!484))))

(declare-fun lt!1408316 () Unit!61507)

(assert (=> b!3992786 (= lt!1408316 (lemmaCharactersSize!1357 (_1!24086 (v!39531 lt!1408305))))))

(declare-fun b!3992787 () Bool)

(declare-fun tp_is_empty!20305 () Bool)

(declare-fun tp!1215955 () Bool)

(assert (=> b!3992787 (= e!2475231 (and tp_is_empty!20305 tp!1215955))))

(declare-fun b!3992788 () Bool)

(declare-fun e!2475248 () Bool)

(assert (=> b!3992788 (= e!2475248 e!2475221)))

(declare-fun res!1620789 () Bool)

(assert (=> b!3992788 (=> res!1620789 e!2475221)))

(assert (=> b!3992788 (= res!1620789 (not (= lt!1408347 lt!1408326)))))

(assert (=> b!3992788 (= lt!1408347 (++!11164 lt!1408348 lt!1408288))))

(declare-fun getSuffix!2280 (List!42829 List!42829) List!42829)

(assert (=> b!3992788 (= lt!1408288 (getSuffix!2280 lt!1408326 lt!1408348))))

(declare-fun b!3992789 () Bool)

(declare-fun res!1620787 () Bool)

(assert (=> b!3992789 (=> (not res!1620787) (not e!2475218))))

(declare-fun newSuffix!27 () List!42829)

(assert (=> b!3992789 (= res!1620787 (>= (size!31939 suffix!1299) (size!31939 newSuffix!27)))))

(declare-fun b!3992790 () Bool)

(declare-fun e!2475220 () Bool)

(assert (=> b!3992790 (= e!2475229 e!2475220)))

(declare-fun res!1620784 () Bool)

(assert (=> b!3992790 (=> res!1620784 e!2475220)))

(declare-fun lt!1408294 () List!42829)

(assert (=> b!3992790 (= res!1620784 (not (= lt!1408294 suffix!1299)))))

(declare-fun lt!1408295 () List!42829)

(assert (=> b!3992790 (= lt!1408294 (++!11164 newSuffix!27 lt!1408295))))

(assert (=> b!3992790 (= lt!1408295 (getSuffix!2280 suffix!1299 newSuffix!27))))

(declare-fun b!3992791 () Bool)

(declare-fun e!2475226 () Bool)

(assert (=> b!3992791 (= e!2475240 (not e!2475226))))

(declare-fun res!1620785 () Bool)

(assert (=> b!3992791 (=> res!1620785 e!2475226)))

(declare-fun lt!1408349 () List!42829)

(assert (=> b!3992791 (= res!1620785 (not (= lt!1408349 lt!1408320)))))

(assert (=> b!3992791 (= lt!1408349 (++!11164 lt!1408342 suffixResult!105))))

(declare-fun lt!1408322 () Unit!61507)

(assert (=> b!3992791 (= lt!1408322 (lemmaInv!977 (transformation!6762 (rule!9784 token!484))))))

(assert (=> b!3992791 (ruleValid!2694 thiss!21717 (rule!9784 token!484))))

(declare-fun lt!1408343 () Unit!61507)

(assert (=> b!3992791 (= lt!1408343 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1768 thiss!21717 (rule!9784 token!484) rules!2999))))

(declare-fun b!3992792 () Bool)

(declare-fun e!2475249 () Bool)

(declare-fun e!2475230 () Bool)

(assert (=> b!3992792 (= e!2475249 e!2475230)))

(declare-fun res!1620763 () Bool)

(assert (=> b!3992792 (=> res!1620763 e!2475230)))

(declare-fun lt!1408330 () List!42829)

(declare-fun lt!1408307 () List!42829)

(assert (=> b!3992792 (= res!1620763 (or (not (= lt!1408320 lt!1408330)) (not (= lt!1408320 lt!1408307))))))

(assert (=> b!3992792 (= lt!1408330 lt!1408307)))

(declare-fun lt!1408293 () List!42829)

(assert (=> b!3992792 (= lt!1408307 (++!11164 lt!1408342 lt!1408293))))

(declare-fun lt!1408323 () List!42829)

(assert (=> b!3992792 (= lt!1408330 (++!11164 lt!1408323 suffix!1299))))

(declare-fun lt!1408325 () List!42829)

(assert (=> b!3992792 (= lt!1408293 (++!11164 lt!1408325 suffix!1299))))

(declare-fun lt!1408331 () Unit!61507)

(declare-fun lemmaConcatAssociativity!2484 (List!42829 List!42829 List!42829) Unit!61507)

(assert (=> b!3992792 (= lt!1408331 (lemmaConcatAssociativity!2484 lt!1408342 lt!1408325 suffix!1299))))

(declare-fun b!3992793 () Bool)

(assert (=> b!3992793 (= e!2475233 (and (= (size!31938 token!484) lt!1408314) (= (originalCharacters!7362 token!484) lt!1408342)))))

(declare-fun b!3992794 () Bool)

(declare-fun res!1620769 () Bool)

(assert (=> b!3992794 (=> (not res!1620769) (not e!2475218))))

(declare-fun isEmpty!25523 (List!42830) Bool)

(assert (=> b!3992794 (= res!1620769 (not (isEmpty!25523 rules!2999)))))

(declare-fun b!3992795 () Bool)

(declare-fun Unit!61509 () Unit!61507)

(assert (=> b!3992795 (= e!2475252 Unit!61509)))

(declare-fun b!3992796 () Bool)

(declare-fun res!1620774 () Bool)

(assert (=> b!3992796 (=> res!1620774 e!2475248)))

(assert (=> b!3992796 (= res!1620774 (not (= lt!1408319 lt!1408326)))))

(declare-fun b!3992797 () Bool)

(declare-fun tp!1215960 () Bool)

(assert (=> b!3992797 (= e!2475243 (and tp_is_empty!20305 tp!1215960))))

(declare-fun b!3992798 () Bool)

(declare-fun Unit!61510 () Unit!61507)

(assert (=> b!3992798 (= e!2475252 Unit!61510)))

(declare-fun lt!1408332 () Unit!61507)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!416 (LexerInterface!6351 List!42830 Rule!13324 List!42829 List!42829 List!42829 Rule!13324) Unit!61507)

(assert (=> b!3992798 (= lt!1408332 (lemmaMaxPrefixOutputsMaxPrefix!416 thiss!21717 rules!2999 (rule!9784 (_1!24086 (v!39531 lt!1408305))) lt!1408348 lt!1408326 lt!1408342 (rule!9784 token!484)))))

(assert (=> b!3992798 false))

(declare-fun b!3992799 () Bool)

(declare-fun tp!1215966 () Bool)

(assert (=> b!3992799 (= e!2475245 (and tp_is_empty!20305 tp!1215966))))

(declare-fun b!3992800 () Bool)

(declare-fun tp!1215962 () Bool)

(assert (=> b!3992800 (= e!2475241 (and tp_is_empty!20305 tp!1215962))))

(declare-fun b!3992801 () Bool)

(declare-fun e!2475227 () Bool)

(assert (=> b!3992801 (= e!2475251 e!2475227)))

(declare-fun res!1620773 () Bool)

(assert (=> b!3992801 (=> res!1620773 e!2475227)))

(declare-fun getIndex!532 (List!42830 Rule!13324) Int)

(assert (=> b!3992801 (= res!1620773 (>= (getIndex!532 rules!2999 (rule!9784 (_1!24086 (v!39531 lt!1408305)))) (getIndex!532 rules!2999 (rule!9784 token!484))))))

(assert (=> b!3992801 (= (_2!24086 (v!39531 lt!1408305)) newSuffixResult!27)))

(declare-fun lt!1408299 () Unit!61507)

(assert (=> b!3992801 (= lt!1408299 (lemmaSamePrefixThenSameSuffix!2036 lt!1408348 (_2!24086 (v!39531 lt!1408305)) lt!1408342 newSuffixResult!27 lt!1408326))))

(assert (=> b!3992801 (= lt!1408348 lt!1408342)))

(declare-fun lt!1408339 () Unit!61507)

(declare-fun lemmaIsPrefixSameLengthThenSameList!871 (List!42829 List!42829 List!42829) Unit!61507)

(assert (=> b!3992801 (= lt!1408339 (lemmaIsPrefixSameLengthThenSameList!871 lt!1408348 lt!1408342 lt!1408326))))

(declare-fun b!3992802 () Bool)

(declare-fun res!1620783 () Bool)

(assert (=> b!3992802 (=> res!1620783 e!2475227)))

(declare-fun contains!8497 (List!42830 Rule!13324) Bool)

(assert (=> b!3992802 (= res!1620783 (not (contains!8497 rules!2999 (rule!9784 token!484))))))

(declare-fun b!3992803 () Bool)

(declare-fun res!1620791 () Bool)

(assert (=> b!3992803 (=> res!1620791 e!2475251)))

(assert (=> b!3992803 (= res!1620791 (not (isPrefix!3849 lt!1408348 lt!1408326)))))

(declare-fun b!3992804 () Bool)

(declare-fun e!2475224 () Bool)

(assert (=> b!3992804 (= e!2475224 e!2475248)))

(declare-fun res!1620771 () Bool)

(assert (=> b!3992804 (=> res!1620771 e!2475248)))

(assert (=> b!3992804 (= res!1620771 (not (isPrefix!3849 lt!1408348 lt!1408320)))))

(declare-fun lt!1408310 () List!42829)

(assert (=> b!3992804 (isPrefix!3849 lt!1408348 lt!1408310)))

(declare-fun lt!1408337 () Unit!61507)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!682 (List!42829 List!42829 List!42829) Unit!61507)

(assert (=> b!3992804 (= lt!1408337 (lemmaPrefixStaysPrefixWhenAddingToSuffix!682 lt!1408348 lt!1408326 lt!1408295))))

(declare-fun b!3992805 () Bool)

(declare-fun e!2475228 () Bool)

(declare-fun e!2475239 () Bool)

(declare-fun tp!1215954 () Bool)

(declare-fun inv!57035 (String!48678) Bool)

(declare-fun inv!57039 (TokenValueInjection!13412) Bool)

(assert (=> b!3992805 (= e!2475239 (and tp!1215954 (inv!57035 (tag!7622 (h!48126 rules!2999))) (inv!57039 (transformation!6762 (h!48126 rules!2999))) e!2475228))))

(declare-fun b!3992806 () Bool)

(declare-fun e!2475232 () Bool)

(assert (=> b!3992806 (= e!2475230 e!2475232)))

(declare-fun res!1620765 () Bool)

(assert (=> b!3992806 (=> res!1620765 e!2475232)))

(declare-fun lt!1408306 () Option!9176)

(assert (=> b!3992806 (= res!1620765 (not (= lt!1408306 lt!1408345)))))

(declare-fun lt!1408309 () Token!12662)

(assert (=> b!3992806 (= lt!1408306 (Some!9175 (tuple2!41905 lt!1408309 suffixResult!105)))))

(assert (=> b!3992806 (= lt!1408306 (maxPrefixOneRule!2683 thiss!21717 (rule!9784 token!484) lt!1408320))))

(assert (=> b!3992806 (= lt!1408309 (Token!12663 lt!1408346 (rule!9784 token!484) lt!1408314 lt!1408342))))

(declare-fun lt!1408291 () BalanceConc!25540)

(assert (=> b!3992806 (= lt!1408346 (apply!9973 (transformation!6762 (rule!9784 token!484)) lt!1408291))))

(assert (=> b!3992806 (= lt!1408291 (seqFromList!5001 lt!1408342))))

(declare-fun lt!1408302 () Unit!61507)

(assert (=> b!3992806 (= lt!1408302 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1505 thiss!21717 rules!2999 lt!1408342 lt!1408320 suffixResult!105 (rule!9784 token!484)))))

(assert (=> b!3992806 (= lt!1408293 suffixResult!105)))

(declare-fun lt!1408321 () Unit!61507)

(assert (=> b!3992806 (= lt!1408321 (lemmaSamePrefixThenSameSuffix!2036 lt!1408342 lt!1408293 lt!1408342 suffixResult!105 lt!1408320))))

(assert (=> b!3992806 (isPrefix!3849 lt!1408342 lt!1408307)))

(declare-fun lt!1408318 () Unit!61507)

(assert (=> b!3992806 (= lt!1408318 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408342 lt!1408293))))

(declare-fun b!3992807 () Bool)

(declare-fun e!2475242 () Bool)

(assert (=> b!3992807 (= e!2475242 e!2475249)))

(declare-fun res!1620761 () Bool)

(assert (=> b!3992807 (=> res!1620761 e!2475249)))

(assert (=> b!3992807 (= res!1620761 (not (= lt!1408323 prefix!494)))))

(assert (=> b!3992807 (= lt!1408323 (++!11164 lt!1408342 lt!1408325))))

(assert (=> b!3992807 (= lt!1408325 (getSuffix!2280 prefix!494 lt!1408342))))

(assert (=> b!3992807 (isPrefix!3849 lt!1408342 prefix!494)))

(declare-fun lt!1408336 () Unit!61507)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!427 (List!42829 List!42829 List!42829) Unit!61507)

(assert (=> b!3992807 (= lt!1408336 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!427 prefix!494 lt!1408342 lt!1408320))))

(declare-fun e!2475216 () Bool)

(declare-fun tp!1215959 () Bool)

(declare-fun b!3992808 () Bool)

(assert (=> b!3992808 (= e!2475222 (and tp!1215959 (inv!57035 (tag!7622 (rule!9784 token!484))) (inv!57039 (transformation!6762 (rule!9784 token!484))) e!2475216))))

(declare-fun b!3992809 () Bool)

(declare-fun e!2475250 () Bool)

(assert (=> b!3992809 (= e!2475250 false)))

(declare-fun b!3992810 () Bool)

(declare-fun res!1620768 () Bool)

(assert (=> b!3992810 (=> (not res!1620768) (not e!2475233))))

(assert (=> b!3992810 (= res!1620768 (= (size!31938 token!484) (size!31939 (originalCharacters!7362 token!484))))))

(declare-fun b!3992811 () Bool)

(declare-fun e!2475225 () Bool)

(assert (=> b!3992811 (= e!2475232 e!2475225)))

(declare-fun res!1620766 () Bool)

(assert (=> b!3992811 (=> res!1620766 e!2475225)))

(declare-fun matchR!5644 (Regex!11667 List!42829) Bool)

(assert (=> b!3992811 (= res!1620766 (not (matchR!5644 (regex!6762 (rule!9784 token!484)) lt!1408342)))))

(assert (=> b!3992811 (isPrefix!3849 lt!1408342 lt!1408326)))

(declare-fun lt!1408303 () Unit!61507)

(assert (=> b!3992811 (= lt!1408303 (lemmaPrefixStaysPrefixWhenAddingToSuffix!682 lt!1408342 prefix!494 newSuffix!27))))

(declare-fun lt!1408327 () Unit!61507)

(assert (=> b!3992811 (= lt!1408327 (lemmaPrefixStaysPrefixWhenAddingToSuffix!682 lt!1408342 prefix!494 suffix!1299))))

(declare-fun b!3992812 () Bool)

(assert (=> b!3992812 (= e!2475227 true)))

(declare-fun lt!1408311 () Unit!61507)

(declare-fun lemmaSemiInverse!1854 (TokenValueInjection!13412 BalanceConc!25540) Unit!61507)

(assert (=> b!3992812 (= lt!1408311 (lemmaSemiInverse!1854 (transformation!6762 (rule!9784 token!484)) lt!1408291))))

(declare-fun b!3992813 () Bool)

(declare-fun tp!1215957 () Bool)

(assert (=> b!3992813 (= e!2475237 (and e!2475239 tp!1215957))))

(declare-fun b!3992814 () Bool)

(declare-fun res!1620760 () Bool)

(assert (=> b!3992814 (=> res!1620760 e!2475227)))

(declare-fun lt!1408289 () List!42829)

(assert (=> b!3992814 (= res!1620760 (not (= lt!1408340 (Some!9175 (tuple2!41905 lt!1408309 lt!1408289)))))))

(declare-fun b!3992815 () Bool)

(declare-fun res!1620767 () Bool)

(assert (=> b!3992815 (=> (not res!1620767) (not e!2475218))))

(declare-fun rulesInvariant!5694 (LexerInterface!6351 List!42830) Bool)

(assert (=> b!3992815 (= res!1620767 (rulesInvariant!5694 thiss!21717 rules!2999))))

(declare-fun b!3992816 () Bool)

(declare-fun res!1620777 () Bool)

(assert (=> b!3992816 (=> res!1620777 e!2475227)))

(declare-fun isEmpty!25524 (List!42829) Bool)

(assert (=> b!3992816 (= res!1620777 (isEmpty!25524 lt!1408342))))

(declare-fun b!3992817 () Bool)

(declare-fun Unit!61511 () Unit!61507)

(assert (=> b!3992817 (= e!2475238 Unit!61511)))

(declare-fun lt!1408286 () Unit!61507)

(assert (=> b!3992817 (= lt!1408286 (lemmaMaxPrefixOutputsMaxPrefix!416 thiss!21717 rules!2999 (rule!9784 token!484) lt!1408342 lt!1408320 lt!1408348 (rule!9784 (_1!24086 (v!39531 lt!1408305)))))))

(declare-fun res!1620778 () Bool)

(assert (=> b!3992817 (= res!1620778 (not (matchR!5644 (regex!6762 (rule!9784 (_1!24086 (v!39531 lt!1408305)))) lt!1408348)))))

(assert (=> b!3992817 (=> (not res!1620778) (not e!2475250))))

(assert (=> b!3992817 e!2475250))

(declare-fun b!3992818 () Bool)

(declare-fun Unit!61512 () Unit!61507)

(assert (=> b!3992818 (= e!2475238 Unit!61512)))

(declare-fun b!3992819 () Bool)

(assert (=> b!3992819 (= e!2475220 e!2475224)))

(declare-fun res!1620779 () Bool)

(assert (=> b!3992819 (=> res!1620779 e!2475224)))

(assert (=> b!3992819 (= res!1620779 (not (= lt!1408310 lt!1408320)))))

(assert (=> b!3992819 (= lt!1408310 (++!11164 prefix!494 lt!1408294))))

(assert (=> b!3992819 (= lt!1408310 (++!11164 lt!1408326 lt!1408295))))

(declare-fun lt!1408297 () Unit!61507)

(assert (=> b!3992819 (= lt!1408297 (lemmaConcatAssociativity!2484 prefix!494 newSuffix!27 lt!1408295))))

(assert (=> b!3992820 (= e!2475216 (and tp!1215961 tp!1215964))))

(declare-fun b!3992821 () Bool)

(declare-fun tp!1215958 () Bool)

(assert (=> b!3992821 (= e!2475246 (and tp_is_empty!20305 tp!1215958))))

(declare-fun b!3992822 () Bool)

(declare-fun res!1620762 () Bool)

(assert (=> b!3992822 (=> res!1620762 e!2475227)))

(assert (=> b!3992822 (= res!1620762 (not (contains!8497 rules!2999 (rule!9784 (_1!24086 (v!39531 lt!1408305))))))))

(declare-fun b!3992823 () Bool)

(declare-fun e!2475235 () Bool)

(assert (=> b!3992823 (= e!2475225 e!2475235)))

(declare-fun res!1620782 () Bool)

(assert (=> b!3992823 (=> res!1620782 e!2475235)))

(declare-fun lt!1408301 () List!42829)

(assert (=> b!3992823 (= res!1620782 (not (= lt!1408301 lt!1408320)))))

(assert (=> b!3992823 (= lt!1408301 (++!11164 lt!1408342 lt!1408289))))

(assert (=> b!3992823 (= lt!1408289 (getSuffix!2280 lt!1408320 lt!1408342))))

(assert (=> b!3992823 e!2475233))

(declare-fun res!1620790 () Bool)

(assert (=> b!3992823 (=> (not res!1620790) (not e!2475233))))

(assert (=> b!3992823 (= res!1620790 (isPrefix!3849 lt!1408320 lt!1408320))))

(declare-fun lt!1408304 () Unit!61507)

(declare-fun lemmaIsPrefixRefl!2441 (List!42829 List!42829) Unit!61507)

(assert (=> b!3992823 (= lt!1408304 (lemmaIsPrefixRefl!2441 lt!1408320 lt!1408320))))

(declare-fun b!3992824 () Bool)

(declare-fun res!1620780 () Bool)

(assert (=> b!3992824 (=> (not res!1620780) (not e!2475218))))

(assert (=> b!3992824 (= res!1620780 (isPrefix!3849 newSuffix!27 suffix!1299))))

(declare-fun b!3992825 () Bool)

(assert (=> b!3992825 (= e!2475235 e!2475219)))

(declare-fun res!1620764 () Bool)

(assert (=> b!3992825 (=> res!1620764 e!2475219)))

(assert (=> b!3992825 (= res!1620764 (not ((_ is Some!9175) lt!1408305)))))

(assert (=> b!3992825 (= lt!1408305 (maxPrefix!3649 thiss!21717 rules!2999 lt!1408326))))

(assert (=> b!3992825 (and (= suffixResult!105 lt!1408289) (= lt!1408313 (tuple2!41905 lt!1408309 lt!1408289)))))

(declare-fun lt!1408298 () Unit!61507)

(assert (=> b!3992825 (= lt!1408298 (lemmaSamePrefixThenSameSuffix!2036 lt!1408342 suffixResult!105 lt!1408342 lt!1408289 lt!1408320))))

(assert (=> b!3992825 (isPrefix!3849 lt!1408342 lt!1408301)))

(declare-fun lt!1408344 () Unit!61507)

(assert (=> b!3992825 (= lt!1408344 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408342 lt!1408289))))

(declare-fun b!3992826 () Bool)

(assert (=> b!3992826 (= e!2475226 e!2475242)))

(declare-fun res!1620776 () Bool)

(assert (=> b!3992826 (=> res!1620776 e!2475242)))

(assert (=> b!3992826 (= res!1620776 (not (isPrefix!3849 lt!1408342 lt!1408320)))))

(assert (=> b!3992826 (isPrefix!3849 prefix!494 lt!1408320)))

(declare-fun lt!1408315 () Unit!61507)

(assert (=> b!3992826 (= lt!1408315 (lemmaConcatTwoListThenFirstIsPrefix!2692 prefix!494 suffix!1299))))

(assert (=> b!3992826 (isPrefix!3849 lt!1408342 lt!1408349)))

(declare-fun lt!1408335 () Unit!61507)

(assert (=> b!3992826 (= lt!1408335 (lemmaConcatTwoListThenFirstIsPrefix!2692 lt!1408342 suffixResult!105))))

(declare-fun b!3992827 () Bool)

(assert (=> b!3992827 (= e!2475234 e!2475247)))

(declare-fun res!1620770 () Bool)

(assert (=> b!3992827 (=> (not res!1620770) (not e!2475247))))

(declare-fun lt!1408338 () List!42829)

(assert (=> b!3992827 (= res!1620770 (= lt!1408338 lt!1408326))))

(assert (=> b!3992827 (= lt!1408326 (++!11164 prefix!494 newSuffix!27))))

(assert (=> b!3992827 (= lt!1408338 (++!11164 lt!1408342 newSuffixResult!27))))

(assert (=> b!3992828 (= e!2475228 (and tp!1215963 tp!1215956))))

(assert (= (and start!375784 res!1620786) b!3992794))

(assert (= (and b!3992794 res!1620769) b!3992815))

(assert (= (and b!3992815 res!1620767) b!3992789))

(assert (= (and b!3992789 res!1620787) b!3992824))

(assert (= (and b!3992824 res!1620780) b!3992785))

(assert (= (and b!3992785 res!1620775) b!3992827))

(assert (= (and b!3992827 res!1620770) b!3992781))

(assert (= (and b!3992781 res!1620788) b!3992791))

(assert (= (and b!3992791 (not res!1620785)) b!3992826))

(assert (= (and b!3992826 (not res!1620776)) b!3992807))

(assert (= (and b!3992807 (not res!1620761)) b!3992792))

(assert (= (and b!3992792 (not res!1620763)) b!3992806))

(assert (= (and b!3992806 (not res!1620765)) b!3992811))

(assert (= (and b!3992811 (not res!1620766)) b!3992823))

(assert (= (and b!3992823 res!1620790) b!3992783))

(assert (= (and b!3992783 res!1620772) b!3992810))

(assert (= (and b!3992810 res!1620768) b!3992793))

(assert (= (and b!3992823 (not res!1620782)) b!3992825))

(assert (= (and b!3992825 (not res!1620764)) b!3992786))

(assert (= (and b!3992786 (not res!1620781)) b!3992790))

(assert (= (and b!3992790 (not res!1620784)) b!3992819))

(assert (= (and b!3992819 (not res!1620779)) b!3992804))

(assert (= (and b!3992804 (not res!1620771)) b!3992796))

(assert (= (and b!3992796 (not res!1620774)) b!3992788))

(assert (= (and b!3992788 (not res!1620789)) b!3992782))

(assert (= (and b!3992782 c!690951) b!3992817))

(assert (= (and b!3992782 (not c!690951)) b!3992818))

(assert (= (and b!3992817 res!1620778) b!3992809))

(assert (= (and b!3992782 c!690950) b!3992798))

(assert (= (and b!3992782 (not c!690950)) b!3992795))

(assert (= (and b!3992782 (not res!1620792)) b!3992803))

(assert (= (and b!3992803 (not res!1620791)) b!3992801))

(assert (= (and b!3992801 (not res!1620773)) b!3992814))

(assert (= (and b!3992814 (not res!1620760)) b!3992802))

(assert (= (and b!3992802 (not res!1620783)) b!3992822))

(assert (= (and b!3992822 (not res!1620762)) b!3992816))

(assert (= (and b!3992816 (not res!1620777)) b!3992812))

(assert (= (and start!375784 ((_ is Cons!42705) prefix!494)) b!3992799))

(assert (= b!3992808 b!3992820))

(assert (= b!3992784 b!3992808))

(assert (= start!375784 b!3992784))

(assert (= (and start!375784 ((_ is Cons!42705) suffixResult!105)) b!3992821))

(assert (= (and start!375784 ((_ is Cons!42705) suffix!1299)) b!3992800))

(assert (= (and start!375784 ((_ is Cons!42705) newSuffix!27)) b!3992797))

(assert (= b!3992805 b!3992828))

(assert (= b!3992813 b!3992805))

(assert (= (and start!375784 ((_ is Cons!42706) rules!2999)) b!3992813))

(assert (= (and start!375784 ((_ is Cons!42705) newSuffixResult!27)) b!3992787))

(declare-fun m!4572027 () Bool)

(assert (=> b!3992794 m!4572027))

(declare-fun m!4572029 () Bool)

(assert (=> b!3992805 m!4572029))

(declare-fun m!4572031 () Bool)

(assert (=> b!3992805 m!4572031))

(declare-fun m!4572033 () Bool)

(assert (=> b!3992786 m!4572033))

(declare-fun m!4572035 () Bool)

(assert (=> b!3992786 m!4572035))

(declare-fun m!4572037 () Bool)

(assert (=> b!3992786 m!4572037))

(declare-fun m!4572039 () Bool)

(assert (=> b!3992786 m!4572039))

(declare-fun m!4572041 () Bool)

(assert (=> b!3992786 m!4572041))

(declare-fun m!4572043 () Bool)

(assert (=> b!3992786 m!4572043))

(declare-fun m!4572045 () Bool)

(assert (=> b!3992786 m!4572045))

(declare-fun m!4572047 () Bool)

(assert (=> b!3992786 m!4572047))

(declare-fun m!4572049 () Bool)

(assert (=> b!3992786 m!4572049))

(declare-fun m!4572051 () Bool)

(assert (=> b!3992786 m!4572051))

(declare-fun m!4572053 () Bool)

(assert (=> b!3992786 m!4572053))

(declare-fun m!4572055 () Bool)

(assert (=> b!3992786 m!4572055))

(declare-fun m!4572057 () Bool)

(assert (=> b!3992786 m!4572057))

(declare-fun m!4572059 () Bool)

(assert (=> b!3992786 m!4572059))

(assert (=> b!3992786 m!4572045))

(declare-fun m!4572061 () Bool)

(assert (=> b!3992786 m!4572061))

(assert (=> b!3992786 m!4572055))

(declare-fun m!4572063 () Bool)

(assert (=> b!3992786 m!4572063))

(declare-fun m!4572065 () Bool)

(assert (=> b!3992786 m!4572065))

(assert (=> b!3992786 m!4572051))

(declare-fun m!4572067 () Bool)

(assert (=> b!3992786 m!4572067))

(declare-fun m!4572069 () Bool)

(assert (=> b!3992788 m!4572069))

(declare-fun m!4572071 () Bool)

(assert (=> b!3992788 m!4572071))

(declare-fun m!4572073 () Bool)

(assert (=> b!3992816 m!4572073))

(declare-fun m!4572075 () Bool)

(assert (=> b!3992825 m!4572075))

(declare-fun m!4572077 () Bool)

(assert (=> b!3992825 m!4572077))

(declare-fun m!4572079 () Bool)

(assert (=> b!3992825 m!4572079))

(declare-fun m!4572081 () Bool)

(assert (=> b!3992825 m!4572081))

(declare-fun m!4572083 () Bool)

(assert (=> b!3992791 m!4572083))

(declare-fun m!4572085 () Bool)

(assert (=> b!3992791 m!4572085))

(declare-fun m!4572087 () Bool)

(assert (=> b!3992791 m!4572087))

(declare-fun m!4572089 () Bool)

(assert (=> b!3992791 m!4572089))

(declare-fun m!4572091 () Bool)

(assert (=> b!3992784 m!4572091))

(declare-fun m!4572093 () Bool)

(assert (=> b!3992817 m!4572093))

(declare-fun m!4572095 () Bool)

(assert (=> b!3992817 m!4572095))

(declare-fun m!4572097 () Bool)

(assert (=> b!3992790 m!4572097))

(declare-fun m!4572099 () Bool)

(assert (=> b!3992790 m!4572099))

(declare-fun m!4572101 () Bool)

(assert (=> b!3992815 m!4572101))

(declare-fun m!4572103 () Bool)

(assert (=> b!3992822 m!4572103))

(declare-fun m!4572105 () Bool)

(assert (=> b!3992803 m!4572105))

(declare-fun m!4572107 () Bool)

(assert (=> b!3992785 m!4572107))

(declare-fun m!4572109 () Bool)

(assert (=> b!3992785 m!4572109))

(declare-fun m!4572111 () Bool)

(assert (=> b!3992785 m!4572111))

(assert (=> b!3992785 m!4572111))

(declare-fun m!4572113 () Bool)

(assert (=> b!3992785 m!4572113))

(declare-fun m!4572115 () Bool)

(assert (=> start!375784 m!4572115))

(declare-fun m!4572117 () Bool)

(assert (=> b!3992781 m!4572117))

(declare-fun m!4572119 () Bool)

(assert (=> b!3992781 m!4572119))

(declare-fun m!4572121 () Bool)

(assert (=> b!3992782 m!4572121))

(declare-fun m!4572123 () Bool)

(assert (=> b!3992782 m!4572123))

(declare-fun m!4572125 () Bool)

(assert (=> b!3992782 m!4572125))

(declare-fun m!4572127 () Bool)

(assert (=> b!3992824 m!4572127))

(declare-fun m!4572129 () Bool)

(assert (=> b!3992826 m!4572129))

(declare-fun m!4572131 () Bool)

(assert (=> b!3992826 m!4572131))

(declare-fun m!4572133 () Bool)

(assert (=> b!3992826 m!4572133))

(declare-fun m!4572135 () Bool)

(assert (=> b!3992826 m!4572135))

(declare-fun m!4572137 () Bool)

(assert (=> b!3992826 m!4572137))

(declare-fun m!4572139 () Bool)

(assert (=> b!3992812 m!4572139))

(declare-fun m!4572141 () Bool)

(assert (=> b!3992819 m!4572141))

(declare-fun m!4572143 () Bool)

(assert (=> b!3992819 m!4572143))

(declare-fun m!4572145 () Bool)

(assert (=> b!3992819 m!4572145))

(declare-fun m!4572147 () Bool)

(assert (=> b!3992827 m!4572147))

(declare-fun m!4572149 () Bool)

(assert (=> b!3992827 m!4572149))

(declare-fun m!4572151 () Bool)

(assert (=> b!3992801 m!4572151))

(declare-fun m!4572153 () Bool)

(assert (=> b!3992801 m!4572153))

(declare-fun m!4572155 () Bool)

(assert (=> b!3992801 m!4572155))

(declare-fun m!4572157 () Bool)

(assert (=> b!3992801 m!4572157))

(declare-fun m!4572159 () Bool)

(assert (=> b!3992808 m!4572159))

(declare-fun m!4572161 () Bool)

(assert (=> b!3992808 m!4572161))

(declare-fun m!4572163 () Bool)

(assert (=> b!3992804 m!4572163))

(declare-fun m!4572165 () Bool)

(assert (=> b!3992804 m!4572165))

(declare-fun m!4572167 () Bool)

(assert (=> b!3992804 m!4572167))

(declare-fun m!4572169 () Bool)

(assert (=> b!3992806 m!4572169))

(declare-fun m!4572171 () Bool)

(assert (=> b!3992806 m!4572171))

(declare-fun m!4572173 () Bool)

(assert (=> b!3992806 m!4572173))

(declare-fun m!4572175 () Bool)

(assert (=> b!3992806 m!4572175))

(declare-fun m!4572177 () Bool)

(assert (=> b!3992806 m!4572177))

(declare-fun m!4572179 () Bool)

(assert (=> b!3992806 m!4572179))

(declare-fun m!4572181 () Bool)

(assert (=> b!3992806 m!4572181))

(declare-fun m!4572183 () Bool)

(assert (=> b!3992823 m!4572183))

(declare-fun m!4572185 () Bool)

(assert (=> b!3992823 m!4572185))

(declare-fun m!4572187 () Bool)

(assert (=> b!3992823 m!4572187))

(declare-fun m!4572189 () Bool)

(assert (=> b!3992823 m!4572189))

(declare-fun m!4572191 () Bool)

(assert (=> b!3992789 m!4572191))

(declare-fun m!4572193 () Bool)

(assert (=> b!3992789 m!4572193))

(declare-fun m!4572195 () Bool)

(assert (=> b!3992802 m!4572195))

(declare-fun m!4572197 () Bool)

(assert (=> b!3992792 m!4572197))

(declare-fun m!4572199 () Bool)

(assert (=> b!3992792 m!4572199))

(declare-fun m!4572201 () Bool)

(assert (=> b!3992792 m!4572201))

(declare-fun m!4572203 () Bool)

(assert (=> b!3992792 m!4572203))

(declare-fun m!4572205 () Bool)

(assert (=> b!3992807 m!4572205))

(declare-fun m!4572207 () Bool)

(assert (=> b!3992807 m!4572207))

(declare-fun m!4572209 () Bool)

(assert (=> b!3992807 m!4572209))

(declare-fun m!4572211 () Bool)

(assert (=> b!3992807 m!4572211))

(declare-fun m!4572213 () Bool)

(assert (=> b!3992798 m!4572213))

(declare-fun m!4572215 () Bool)

(assert (=> b!3992811 m!4572215))

(declare-fun m!4572217 () Bool)

(assert (=> b!3992811 m!4572217))

(declare-fun m!4572219 () Bool)

(assert (=> b!3992811 m!4572219))

(declare-fun m!4572221 () Bool)

(assert (=> b!3992811 m!4572221))

(declare-fun m!4572223 () Bool)

(assert (=> b!3992810 m!4572223))

(check-sat b_and!306735 (not b!3992822) (not b!3992794) (not b!3992790) (not b!3992824) (not b!3992802) (not b!3992825) b_and!306739 (not b!3992816) (not b!3992823) (not b!3992807) (not b!3992798) (not b!3992811) (not b!3992819) (not b!3992803) (not b!3992799) (not b!3992787) (not b!3992792) (not b!3992789) (not b!3992808) (not b_next!111615) (not b!3992784) (not start!375784) (not b!3992800) (not b_next!111613) (not b!3992815) (not b!3992821) tp_is_empty!20305 (not b!3992797) (not b!3992806) (not b!3992781) (not b!3992804) (not b!3992801) (not b!3992788) (not b!3992827) (not b_next!111609) (not b!3992782) (not b!3992817) (not b!3992813) (not b!3992791) (not b!3992805) (not b!3992826) (not b_next!111611) (not b!3992810) (not b!3992785) (not b!3992812) (not b!3992786) b_and!306741 b_and!306737)
(check-sat b_and!306735 (not b_next!111615) (not b_next!111613) (not b_next!111609) b_and!306739 (not b_next!111611) b_and!306741 b_and!306737)

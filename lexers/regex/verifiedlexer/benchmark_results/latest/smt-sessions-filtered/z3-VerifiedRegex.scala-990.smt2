; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49780 () Bool)

(assert start!49780)

(declare-fun b!538320 () Bool)

(declare-fun b_free!14777 () Bool)

(declare-fun b_next!14793 () Bool)

(assert (=> b!538320 (= b_free!14777 (not b_next!14793))))

(declare-fun tp!171637 () Bool)

(declare-fun b_and!52651 () Bool)

(assert (=> b!538320 (= tp!171637 b_and!52651)))

(declare-fun b_free!14779 () Bool)

(declare-fun b_next!14795 () Bool)

(assert (=> b!538320 (= b_free!14779 (not b_next!14795))))

(declare-fun tp!171638 () Bool)

(declare-fun b_and!52653 () Bool)

(assert (=> b!538320 (= tp!171638 b_and!52653)))

(declare-fun b!538316 () Bool)

(declare-fun b_free!14781 () Bool)

(declare-fun b_next!14797 () Bool)

(assert (=> b!538316 (= b_free!14781 (not b_next!14797))))

(declare-fun tp!171642 () Bool)

(declare-fun b_and!52655 () Bool)

(assert (=> b!538316 (= tp!171642 b_and!52655)))

(declare-fun b_free!14783 () Bool)

(declare-fun b_next!14799 () Bool)

(assert (=> b!538316 (= b_free!14783 (not b_next!14799))))

(declare-fun tp!171644 () Bool)

(declare-fun b_and!52657 () Bool)

(assert (=> b!538316 (= tp!171644 b_and!52657)))

(declare-fun b!538293 () Bool)

(declare-fun e!324845 () Bool)

(declare-fun e!324848 () Bool)

(assert (=> b!538293 (= e!324845 e!324848)))

(declare-fun res!228211 () Bool)

(assert (=> b!538293 (=> (not res!228211) (not e!324848))))

(declare-datatypes ((C!3524 0))(
  ( (C!3525 (val!1988 Int)) )
))
(declare-datatypes ((List!5241 0))(
  ( (Nil!5231) (Cons!5231 (h!10632 C!3524) (t!74290 List!5241)) )
))
(declare-fun lt!223193 () List!5241)

(declare-fun input!2705 () List!5241)

(assert (=> b!538293 (= res!228211 (= lt!223193 input!2705))))

(declare-datatypes ((Regex!1301 0))(
  ( (ElementMatch!1301 (c!102212 C!3524)) (Concat!2292 (regOne!3114 Regex!1301) (regTwo!3114 Regex!1301)) (EmptyExpr!1301) (Star!1301 (reg!1630 Regex!1301)) (EmptyLang!1301) (Union!1301 (regOne!3115 Regex!1301) (regTwo!3115 Regex!1301)) )
))
(declare-datatypes ((List!5242 0))(
  ( (Nil!5232) (Cons!5232 (h!10633 (_ BitVec 16)) (t!74291 List!5242)) )
))
(declare-datatypes ((TokenValue!991 0))(
  ( (FloatLiteralValue!1982 (text!7382 List!5242)) (TokenValueExt!990 (__x!3880 Int)) (Broken!4955 (value!32400 List!5242)) (Object!1000) (End!991) (Def!991) (Underscore!991) (Match!991) (Else!991) (Error!991) (Case!991) (If!991) (Extends!991) (Abstract!991) (Class!991) (Val!991) (DelimiterValue!1982 (del!1051 List!5242)) (KeywordValue!997 (value!32401 List!5242)) (CommentValue!1982 (value!32402 List!5242)) (WhitespaceValue!1982 (value!32403 List!5242)) (IndentationValue!991 (value!32404 List!5242)) (String!6698) (Int32!991) (Broken!4956 (value!32405 List!5242)) (Boolean!992) (Unit!9142) (OperatorValue!994 (op!1051 List!5242)) (IdentifierValue!1982 (value!32406 List!5242)) (IdentifierValue!1983 (value!32407 List!5242)) (WhitespaceValue!1983 (value!32408 List!5242)) (True!1982) (False!1982) (Broken!4957 (value!32409 List!5242)) (Broken!4958 (value!32410 List!5242)) (True!1983) (RightBrace!991) (RightBracket!991) (Colon!991) (Null!991) (Comma!991) (LeftBracket!991) (False!1983) (LeftBrace!991) (ImaginaryLiteralValue!991 (text!7383 List!5242)) (StringLiteralValue!2973 (value!32411 List!5242)) (EOFValue!991 (value!32412 List!5242)) (IdentValue!991 (value!32413 List!5242)) (DelimiterValue!1983 (value!32414 List!5242)) (DedentValue!991 (value!32415 List!5242)) (NewLineValue!991 (value!32416 List!5242)) (IntegerValue!2973 (value!32417 (_ BitVec 32)) (text!7384 List!5242)) (IntegerValue!2974 (value!32418 Int) (text!7385 List!5242)) (Times!991) (Or!991) (Equal!991) (Minus!991) (Broken!4959 (value!32419 List!5242)) (And!991) (Div!991) (LessEqual!991) (Mod!991) (Concat!2293) (Not!991) (Plus!991) (SpaceValue!991 (value!32420 List!5242)) (IntegerValue!2975 (value!32421 Int) (text!7386 List!5242)) (StringLiteralValue!2974 (text!7387 List!5242)) (FloatLiteralValue!1983 (text!7388 List!5242)) (BytesLiteralValue!991 (value!32422 List!5242)) (CommentValue!1983 (value!32423 List!5242)) (StringLiteralValue!2975 (value!32424 List!5242)) (ErrorTokenValue!991 (msg!1052 List!5242)) )
))
(declare-datatypes ((String!6699 0))(
  ( (String!6700 (value!32425 String)) )
))
(declare-datatypes ((IArray!3369 0))(
  ( (IArray!3370 (innerList!1742 List!5241)) )
))
(declare-datatypes ((Conc!1684 0))(
  ( (Node!1684 (left!4372 Conc!1684) (right!4702 Conc!1684) (csize!3598 Int) (cheight!1895 Int)) (Leaf!2675 (xs!4321 IArray!3369) (csize!3599 Int)) (Empty!1684) )
))
(declare-datatypes ((BalanceConc!3376 0))(
  ( (BalanceConc!3377 (c!102213 Conc!1684)) )
))
(declare-datatypes ((TokenValueInjection!1750 0))(
  ( (TokenValueInjection!1751 (toValue!1814 Int) (toChars!1673 Int)) )
))
(declare-datatypes ((Rule!1734 0))(
  ( (Rule!1735 (regex!967 Regex!1301) (tag!1229 String!6699) (isSeparator!967 Bool) (transformation!967 TokenValueInjection!1750)) )
))
(declare-datatypes ((Token!1670 0))(
  ( (Token!1671 (value!32426 TokenValue!991) (rule!1675 Rule!1734) (size!4210 Int) (originalCharacters!1006 List!5241)) )
))
(declare-fun token!491 () Token!1670)

(declare-fun list!2175 (BalanceConc!3376) List!5241)

(declare-fun charsOf!596 (Token!1670) BalanceConc!3376)

(assert (=> b!538293 (= lt!223193 (list!2175 (charsOf!596 token!491)))))

(declare-fun tp!171640 () Bool)

(declare-fun e!324854 () Bool)

(declare-datatypes ((List!5243 0))(
  ( (Nil!5233) (Cons!5233 (h!10634 Rule!1734) (t!74292 List!5243)) )
))
(declare-fun rules!3103 () List!5243)

(declare-fun e!324842 () Bool)

(declare-fun b!538294 () Bool)

(declare-fun inv!6565 (String!6699) Bool)

(declare-fun inv!6568 (TokenValueInjection!1750) Bool)

(assert (=> b!538294 (= e!324854 (and tp!171640 (inv!6565 (tag!1229 (h!10634 rules!3103))) (inv!6568 (transformation!967 (h!10634 rules!3103))) e!324842))))

(declare-datatypes ((tuple2!6304 0))(
  ( (tuple2!6305 (_1!3416 Token!1670) (_2!3416 List!5241)) )
))
(declare-fun lt!223201 () tuple2!6304)

(declare-fun e!324846 () Bool)

(declare-fun lt!223198 () TokenValue!991)

(declare-fun lt!223192 () Int)

(declare-datatypes ((Option!1317 0))(
  ( (None!1316) (Some!1316 (v!16125 tuple2!6304)) )
))
(declare-fun lt!223206 () Option!1317)

(declare-fun lt!223189 () List!5241)

(declare-fun lt!223205 () List!5241)

(declare-fun b!538295 () Bool)

(assert (=> b!538295 (= e!324846 (and (= (size!4210 (_1!3416 (v!16125 lt!223206))) lt!223192) (= (originalCharacters!1006 (_1!3416 (v!16125 lt!223206))) lt!223205) (= lt!223201 (tuple2!6305 (Token!1671 lt!223198 (rule!1675 (_1!3416 (v!16125 lt!223206))) lt!223192 lt!223205) lt!223189))))))

(declare-fun b!538296 () Bool)

(declare-fun res!228199 () Bool)

(assert (=> b!538296 (=> (not res!228199) (not e!324845))))

(declare-datatypes ((LexerInterface!853 0))(
  ( (LexerInterfaceExt!850 (__x!3881 Int)) (Lexer!851) )
))
(declare-fun thiss!22590 () LexerInterface!853)

(declare-fun rulesInvariant!816 (LexerInterface!853 List!5243) Bool)

(assert (=> b!538296 (= res!228199 (rulesInvariant!816 thiss!22590 rules!3103))))

(declare-fun b!538297 () Bool)

(declare-fun e!324853 () Bool)

(assert (=> b!538297 (= e!324853 true)))

(declare-fun lt!223212 () Int)

(declare-fun size!4211 (List!5241) Int)

(assert (=> b!538297 (= lt!223212 (size!4211 input!2705))))

(declare-fun b!538298 () Bool)

(declare-fun e!324843 () Bool)

(declare-fun lt!223183 () TokenValue!991)

(declare-fun lt!223187 () List!5241)

(declare-fun suffix!1342 () List!5241)

(declare-fun lt!223199 () Int)

(assert (=> b!538298 (= e!324843 (and (= (size!4210 token!491) lt!223199) (= (originalCharacters!1006 token!491) lt!223193) (= (tuple2!6305 token!491 suffix!1342) (tuple2!6305 (Token!1671 lt!223183 (rule!1675 token!491) lt!223199 lt!223193) lt!223187))))))

(declare-fun b!538299 () Bool)

(declare-datatypes ((Unit!9143 0))(
  ( (Unit!9144) )
))
(declare-fun e!324851 () Unit!9143)

(declare-fun Unit!9145 () Unit!9143)

(assert (=> b!538299 (= e!324851 Unit!9145)))

(assert (=> b!538299 false))

(declare-fun b!538300 () Bool)

(declare-fun res!228207 () Bool)

(assert (=> b!538300 (=> (not res!228207) (not e!324843))))

(assert (=> b!538300 (= res!228207 (= (size!4210 token!491) (size!4211 (originalCharacters!1006 token!491))))))

(declare-fun b!538301 () Bool)

(declare-fun e!324856 () Bool)

(assert (=> b!538301 (= e!324848 e!324856)))

(declare-fun res!228218 () Bool)

(assert (=> b!538301 (=> (not res!228218) (not e!324856))))

(declare-fun lt!223195 () Option!1317)

(declare-fun isDefined!1129 (Option!1317) Bool)

(assert (=> b!538301 (= res!228218 (isDefined!1129 lt!223195))))

(declare-fun lt!223196 () List!5241)

(declare-fun maxPrefix!551 (LexerInterface!853 List!5243 List!5241) Option!1317)

(assert (=> b!538301 (= lt!223195 (maxPrefix!551 thiss!22590 rules!3103 lt!223196))))

(declare-fun ++!1455 (List!5241 List!5241) List!5241)

(assert (=> b!538301 (= lt!223196 (++!1455 input!2705 suffix!1342))))

(declare-fun b!538302 () Bool)

(declare-fun res!228205 () Bool)

(assert (=> b!538302 (=> res!228205 e!324853)))

(declare-fun matchR!460 (Regex!1301 List!5241) Bool)

(assert (=> b!538302 (= res!228205 (not (matchR!460 (regex!967 (rule!1675 token!491)) input!2705)))))

(declare-fun b!538303 () Bool)

(declare-fun e!324859 () Bool)

(declare-fun e!324841 () Bool)

(assert (=> b!538303 (= e!324859 (not e!324841))))

(declare-fun res!228210 () Bool)

(assert (=> b!538303 (=> res!228210 e!324841)))

(declare-fun lt!223211 () List!5241)

(declare-fun isPrefix!609 (List!5241 List!5241) Bool)

(assert (=> b!538303 (= res!228210 (not (isPrefix!609 input!2705 lt!223211)))))

(assert (=> b!538303 (isPrefix!609 lt!223193 lt!223211)))

(declare-fun lt!223190 () Unit!9143)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!460 (List!5241 List!5241) Unit!9143)

(assert (=> b!538303 (= lt!223190 (lemmaConcatTwoListThenFirstIsPrefix!460 lt!223193 suffix!1342))))

(assert (=> b!538303 (isPrefix!609 input!2705 lt!223196)))

(declare-fun lt!223197 () Unit!9143)

(assert (=> b!538303 (= lt!223197 (lemmaConcatTwoListThenFirstIsPrefix!460 input!2705 suffix!1342))))

(assert (=> b!538303 e!324846))

(declare-fun res!228214 () Bool)

(assert (=> b!538303 (=> (not res!228214) (not e!324846))))

(assert (=> b!538303 (= res!228214 (= (value!32426 (_1!3416 (v!16125 lt!223206))) lt!223198))))

(declare-fun apply!1242 (TokenValueInjection!1750 BalanceConc!3376) TokenValue!991)

(declare-fun seqFromList!1165 (List!5241) BalanceConc!3376)

(assert (=> b!538303 (= lt!223198 (apply!1242 (transformation!967 (rule!1675 (_1!3416 (v!16125 lt!223206)))) (seqFromList!1165 lt!223205)))))

(declare-fun lt!223208 () Unit!9143)

(declare-fun lemmaInv!115 (TokenValueInjection!1750) Unit!9143)

(assert (=> b!538303 (= lt!223208 (lemmaInv!115 (transformation!967 (rule!1675 token!491))))))

(declare-fun lt!223186 () Unit!9143)

(assert (=> b!538303 (= lt!223186 (lemmaInv!115 (transformation!967 (rule!1675 (_1!3416 (v!16125 lt!223206))))))))

(declare-fun ruleValid!187 (LexerInterface!853 Rule!1734) Bool)

(assert (=> b!538303 (ruleValid!187 thiss!22590 (rule!1675 token!491))))

(declare-fun lt!223188 () Unit!9143)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!46 (LexerInterface!853 Rule!1734 List!5243) Unit!9143)

(assert (=> b!538303 (= lt!223188 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!46 thiss!22590 (rule!1675 token!491) rules!3103))))

(assert (=> b!538303 (ruleValid!187 thiss!22590 (rule!1675 (_1!3416 (v!16125 lt!223206))))))

(declare-fun lt!223191 () Unit!9143)

(assert (=> b!538303 (= lt!223191 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!46 thiss!22590 (rule!1675 (_1!3416 (v!16125 lt!223206))) rules!3103))))

(assert (=> b!538303 (isPrefix!609 input!2705 input!2705)))

(declare-fun lt!223194 () Unit!9143)

(declare-fun lemmaIsPrefixRefl!349 (List!5241 List!5241) Unit!9143)

(assert (=> b!538303 (= lt!223194 (lemmaIsPrefixRefl!349 input!2705 input!2705))))

(assert (=> b!538303 (= (_2!3416 (v!16125 lt!223206)) lt!223189)))

(declare-fun lt!223204 () Unit!9143)

(declare-fun lemmaSamePrefixThenSameSuffix!336 (List!5241 List!5241 List!5241 List!5241 List!5241) Unit!9143)

(assert (=> b!538303 (= lt!223204 (lemmaSamePrefixThenSameSuffix!336 lt!223205 (_2!3416 (v!16125 lt!223206)) lt!223205 lt!223189 input!2705))))

(declare-fun getSuffix!132 (List!5241 List!5241) List!5241)

(assert (=> b!538303 (= lt!223189 (getSuffix!132 input!2705 lt!223205))))

(assert (=> b!538303 (isPrefix!609 lt!223205 (++!1455 lt!223205 (_2!3416 (v!16125 lt!223206))))))

(declare-fun lt!223202 () Unit!9143)

(assert (=> b!538303 (= lt!223202 (lemmaConcatTwoListThenFirstIsPrefix!460 lt!223205 (_2!3416 (v!16125 lt!223206))))))

(declare-fun lt!223200 () Unit!9143)

(declare-fun lemmaCharactersSize!46 (Token!1670) Unit!9143)

(assert (=> b!538303 (= lt!223200 (lemmaCharactersSize!46 token!491))))

(declare-fun lt!223209 () Unit!9143)

(assert (=> b!538303 (= lt!223209 (lemmaCharactersSize!46 (_1!3416 (v!16125 lt!223206))))))

(declare-fun lt!223185 () Unit!9143)

(assert (=> b!538303 (= lt!223185 e!324851)))

(declare-fun c!102211 () Bool)

(assert (=> b!538303 (= c!102211 (> lt!223192 lt!223199))))

(assert (=> b!538303 (= lt!223199 (size!4211 lt!223193))))

(assert (=> b!538303 (= lt!223192 (size!4211 lt!223205))))

(assert (=> b!538303 (= lt!223205 (list!2175 (charsOf!596 (_1!3416 (v!16125 lt!223206)))))))

(assert (=> b!538303 (= lt!223206 (Some!1316 lt!223201))))

(assert (=> b!538303 (= lt!223201 (tuple2!6305 (_1!3416 (v!16125 lt!223206)) (_2!3416 (v!16125 lt!223206))))))

(declare-fun lt!223184 () Unit!9143)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!52 (List!5241 List!5241 List!5241 List!5241) Unit!9143)

(assert (=> b!538303 (= lt!223184 (lemmaConcatSameAndSameSizesThenSameLists!52 lt!223193 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!538304 () Bool)

(declare-fun e!324861 () Bool)

(declare-fun tp!171639 () Bool)

(assert (=> b!538304 (= e!324861 (and e!324854 tp!171639))))

(declare-fun b!538305 () Bool)

(declare-fun e!324862 () Bool)

(declare-fun e!324840 () Bool)

(assert (=> b!538305 (= e!324862 e!324840)))

(declare-fun res!228209 () Bool)

(assert (=> b!538305 (=> (not res!228209) (not e!324840))))

(assert (=> b!538305 (= res!228209 (isDefined!1129 lt!223206))))

(declare-fun b!538306 () Bool)

(declare-fun res!228212 () Bool)

(assert (=> b!538306 (=> (not res!228212) (not e!324846))))

(assert (=> b!538306 (= res!228212 (= (size!4210 (_1!3416 (v!16125 lt!223206))) (size!4211 (originalCharacters!1006 (_1!3416 (v!16125 lt!223206))))))))

(declare-fun b!538307 () Bool)

(assert (=> b!538307 (= e!324841 e!324853)))

(declare-fun res!228215 () Bool)

(assert (=> b!538307 (=> res!228215 e!324853)))

(assert (=> b!538307 (= res!228215 (>= lt!223192 lt!223199))))

(declare-fun e!324855 () Bool)

(assert (=> b!538307 e!324855))

(declare-fun res!228204 () Bool)

(assert (=> b!538307 (=> (not res!228204) (not e!324855))))

(declare-fun maxPrefixOneRule!266 (LexerInterface!853 Rule!1734 List!5241) Option!1317)

(assert (=> b!538307 (= res!228204 (= (maxPrefixOneRule!266 thiss!22590 (rule!1675 token!491) lt!223196) (Some!1316 (tuple2!6305 (Token!1671 lt!223183 (rule!1675 token!491) lt!223199 lt!223193) suffix!1342))))))

(declare-fun lt!223213 () Unit!9143)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!18 (LexerInterface!853 List!5243 List!5241 List!5241 List!5241 Rule!1734) Unit!9143)

(assert (=> b!538307 (= lt!223213 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!18 thiss!22590 rules!3103 lt!223193 lt!223196 suffix!1342 (rule!1675 token!491)))))

(assert (=> b!538307 (= (maxPrefixOneRule!266 thiss!22590 (rule!1675 (_1!3416 (v!16125 lt!223206))) input!2705) (Some!1316 (tuple2!6305 (Token!1671 lt!223198 (rule!1675 (_1!3416 (v!16125 lt!223206))) lt!223192 lt!223205) (_2!3416 (v!16125 lt!223206)))))))

(declare-fun lt!223203 () Unit!9143)

(assert (=> b!538307 (= lt!223203 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!18 thiss!22590 rules!3103 lt!223205 input!2705 (_2!3416 (v!16125 lt!223206)) (rule!1675 (_1!3416 (v!16125 lt!223206)))))))

(assert (=> b!538307 e!324843))

(declare-fun res!228213 () Bool)

(assert (=> b!538307 (=> (not res!228213) (not e!324843))))

(assert (=> b!538307 (= res!228213 (= (value!32426 token!491) lt!223183))))

(assert (=> b!538307 (= lt!223183 (apply!1242 (transformation!967 (rule!1675 token!491)) (seqFromList!1165 lt!223193)))))

(assert (=> b!538307 (= suffix!1342 lt!223187)))

(declare-fun lt!223210 () Unit!9143)

(assert (=> b!538307 (= lt!223210 (lemmaSamePrefixThenSameSuffix!336 lt!223193 suffix!1342 lt!223193 lt!223187 lt!223196))))

(assert (=> b!538307 (= lt!223187 (getSuffix!132 lt!223196 lt!223193))))

(declare-fun res!228202 () Bool)

(assert (=> start!49780 (=> (not res!228202) (not e!324845))))

(get-info :version)

(assert (=> start!49780 (= res!228202 ((_ is Lexer!851) thiss!22590))))

(assert (=> start!49780 e!324845))

(declare-fun e!324858 () Bool)

(assert (=> start!49780 e!324858))

(assert (=> start!49780 e!324861))

(declare-fun e!324847 () Bool)

(declare-fun inv!6569 (Token!1670) Bool)

(assert (=> start!49780 (and (inv!6569 token!491) e!324847)))

(assert (=> start!49780 true))

(declare-fun e!324857 () Bool)

(assert (=> start!49780 e!324857))

(declare-fun b!538308 () Bool)

(assert (=> b!538308 (= e!324855 e!324862)))

(declare-fun res!228203 () Bool)

(assert (=> b!538308 (=> res!228203 e!324862)))

(assert (=> b!538308 (= res!228203 (>= lt!223192 lt!223199))))

(declare-fun b!538309 () Bool)

(declare-fun res!228201 () Bool)

(assert (=> b!538309 (=> (not res!228201) (not e!324845))))

(declare-fun isEmpty!3782 (List!5241) Bool)

(assert (=> b!538309 (= res!228201 (not (isEmpty!3782 input!2705)))))

(declare-fun b!538310 () Bool)

(declare-fun tp_is_empty!2957 () Bool)

(declare-fun tp!171636 () Bool)

(assert (=> b!538310 (= e!324857 (and tp_is_empty!2957 tp!171636))))

(declare-fun b!538311 () Bool)

(declare-fun get!1965 (Option!1317) tuple2!6304)

(assert (=> b!538311 (= e!324840 (= (_1!3416 (get!1965 lt!223206)) (_1!3416 (v!16125 lt!223206))))))

(declare-fun b!538312 () Bool)

(declare-fun Unit!9146 () Unit!9143)

(assert (=> b!538312 (= e!324851 Unit!9146)))

(declare-fun b!538313 () Bool)

(declare-fun tp!171643 () Bool)

(assert (=> b!538313 (= e!324858 (and tp_is_empty!2957 tp!171643))))

(declare-fun b!538314 () Bool)

(declare-fun e!324850 () Bool)

(declare-fun tp!171635 () Bool)

(declare-fun inv!21 (TokenValue!991) Bool)

(assert (=> b!538314 (= e!324847 (and (inv!21 (value!32426 token!491)) e!324850 tp!171635))))

(declare-fun b!538315 () Bool)

(declare-fun res!228216 () Bool)

(assert (=> b!538315 (=> (not res!228216) (not e!324845))))

(declare-fun isEmpty!3783 (List!5243) Bool)

(assert (=> b!538315 (= res!228216 (not (isEmpty!3783 rules!3103)))))

(assert (=> b!538316 (= e!324842 (and tp!171642 tp!171644))))

(declare-fun b!538317 () Bool)

(declare-fun res!228200 () Bool)

(assert (=> b!538317 (=> res!228200 e!324853)))

(declare-fun contains!1211 (List!5243 Rule!1734) Bool)

(assert (=> b!538317 (= res!228200 (not (contains!1211 rules!3103 (rule!1675 token!491))))))

(declare-fun b!538318 () Bool)

(declare-fun e!324852 () Bool)

(assert (=> b!538318 (= e!324856 e!324852)))

(declare-fun res!228217 () Bool)

(assert (=> b!538318 (=> (not res!228217) (not e!324852))))

(declare-fun lt!223207 () tuple2!6304)

(assert (=> b!538318 (= res!228217 (and (= (_1!3416 lt!223207) token!491) (= (_2!3416 lt!223207) suffix!1342)))))

(assert (=> b!538318 (= lt!223207 (get!1965 lt!223195))))

(declare-fun b!538319 () Bool)

(declare-fun res!228208 () Bool)

(assert (=> b!538319 (=> res!228208 e!324853)))

(assert (=> b!538319 (= res!228208 (not (isPrefix!609 lt!223193 input!2705)))))

(declare-fun e!324838 () Bool)

(assert (=> b!538320 (= e!324838 (and tp!171637 tp!171638))))

(declare-fun tp!171641 () Bool)

(declare-fun b!538321 () Bool)

(assert (=> b!538321 (= e!324850 (and tp!171641 (inv!6565 (tag!1229 (rule!1675 token!491))) (inv!6568 (transformation!967 (rule!1675 token!491))) e!324838))))

(declare-fun b!538322 () Bool)

(declare-fun e!324860 () Bool)

(assert (=> b!538322 (= e!324860 e!324859)))

(declare-fun res!228206 () Bool)

(assert (=> b!538322 (=> (not res!228206) (not e!324859))))

(assert (=> b!538322 (= res!228206 (= lt!223211 lt!223196))))

(assert (=> b!538322 (= lt!223211 (++!1455 lt!223193 suffix!1342))))

(declare-fun b!538323 () Bool)

(assert (=> b!538323 (= e!324852 e!324860)))

(declare-fun res!228198 () Bool)

(assert (=> b!538323 (=> (not res!228198) (not e!324860))))

(assert (=> b!538323 (= res!228198 ((_ is Some!1316) lt!223206))))

(assert (=> b!538323 (= lt!223206 (maxPrefix!551 thiss!22590 rules!3103 input!2705))))

(assert (= (and start!49780 res!228202) b!538315))

(assert (= (and b!538315 res!228216) b!538296))

(assert (= (and b!538296 res!228199) b!538309))

(assert (= (and b!538309 res!228201) b!538293))

(assert (= (and b!538293 res!228211) b!538301))

(assert (= (and b!538301 res!228218) b!538318))

(assert (= (and b!538318 res!228217) b!538323))

(assert (= (and b!538323 res!228198) b!538322))

(assert (= (and b!538322 res!228206) b!538303))

(assert (= (and b!538303 c!102211) b!538299))

(assert (= (and b!538303 (not c!102211)) b!538312))

(assert (= (and b!538303 res!228214) b!538306))

(assert (= (and b!538306 res!228212) b!538295))

(assert (= (and b!538303 (not res!228210)) b!538307))

(assert (= (and b!538307 res!228213) b!538300))

(assert (= (and b!538300 res!228207) b!538298))

(assert (= (and b!538307 res!228204) b!538308))

(assert (= (and b!538308 (not res!228203)) b!538305))

(assert (= (and b!538305 res!228209) b!538311))

(assert (= (and b!538307 (not res!228215)) b!538317))

(assert (= (and b!538317 (not res!228200)) b!538302))

(assert (= (and b!538302 (not res!228205)) b!538319))

(assert (= (and b!538319 (not res!228208)) b!538297))

(assert (= (and start!49780 ((_ is Cons!5231) suffix!1342)) b!538313))

(assert (= b!538294 b!538316))

(assert (= b!538304 b!538294))

(assert (= (and start!49780 ((_ is Cons!5233) rules!3103)) b!538304))

(assert (= b!538321 b!538320))

(assert (= b!538314 b!538321))

(assert (= start!49780 b!538314))

(assert (= (and start!49780 ((_ is Cons!5231) input!2705)) b!538310))

(declare-fun m!785407 () Bool)

(assert (=> b!538302 m!785407))

(declare-fun m!785409 () Bool)

(assert (=> b!538318 m!785409))

(declare-fun m!785411 () Bool)

(assert (=> b!538307 m!785411))

(declare-fun m!785413 () Bool)

(assert (=> b!538307 m!785413))

(declare-fun m!785415 () Bool)

(assert (=> b!538307 m!785415))

(declare-fun m!785417 () Bool)

(assert (=> b!538307 m!785417))

(declare-fun m!785419 () Bool)

(assert (=> b!538307 m!785419))

(declare-fun m!785421 () Bool)

(assert (=> b!538307 m!785421))

(assert (=> b!538307 m!785415))

(declare-fun m!785423 () Bool)

(assert (=> b!538307 m!785423))

(declare-fun m!785425 () Bool)

(assert (=> b!538307 m!785425))

(declare-fun m!785427 () Bool)

(assert (=> b!538297 m!785427))

(declare-fun m!785429 () Bool)

(assert (=> b!538315 m!785429))

(declare-fun m!785431 () Bool)

(assert (=> b!538314 m!785431))

(declare-fun m!785433 () Bool)

(assert (=> b!538301 m!785433))

(declare-fun m!785435 () Bool)

(assert (=> b!538301 m!785435))

(declare-fun m!785437 () Bool)

(assert (=> b!538301 m!785437))

(declare-fun m!785439 () Bool)

(assert (=> b!538321 m!785439))

(declare-fun m!785441 () Bool)

(assert (=> b!538321 m!785441))

(declare-fun m!785443 () Bool)

(assert (=> b!538293 m!785443))

(assert (=> b!538293 m!785443))

(declare-fun m!785445 () Bool)

(assert (=> b!538293 m!785445))

(declare-fun m!785447 () Bool)

(assert (=> b!538296 m!785447))

(declare-fun m!785449 () Bool)

(assert (=> b!538323 m!785449))

(declare-fun m!785451 () Bool)

(assert (=> b!538305 m!785451))

(declare-fun m!785453 () Bool)

(assert (=> b!538300 m!785453))

(declare-fun m!785455 () Bool)

(assert (=> b!538294 m!785455))

(declare-fun m!785457 () Bool)

(assert (=> b!538294 m!785457))

(declare-fun m!785459 () Bool)

(assert (=> b!538319 m!785459))

(declare-fun m!785461 () Bool)

(assert (=> b!538322 m!785461))

(declare-fun m!785463 () Bool)

(assert (=> b!538306 m!785463))

(declare-fun m!785465 () Bool)

(assert (=> b!538303 m!785465))

(declare-fun m!785467 () Bool)

(assert (=> b!538303 m!785467))

(declare-fun m!785469 () Bool)

(assert (=> b!538303 m!785469))

(declare-fun m!785471 () Bool)

(assert (=> b!538303 m!785471))

(declare-fun m!785473 () Bool)

(assert (=> b!538303 m!785473))

(declare-fun m!785475 () Bool)

(assert (=> b!538303 m!785475))

(declare-fun m!785477 () Bool)

(assert (=> b!538303 m!785477))

(declare-fun m!785479 () Bool)

(assert (=> b!538303 m!785479))

(declare-fun m!785481 () Bool)

(assert (=> b!538303 m!785481))

(declare-fun m!785483 () Bool)

(assert (=> b!538303 m!785483))

(declare-fun m!785485 () Bool)

(assert (=> b!538303 m!785485))

(declare-fun m!785487 () Bool)

(assert (=> b!538303 m!785487))

(declare-fun m!785489 () Bool)

(assert (=> b!538303 m!785489))

(declare-fun m!785491 () Bool)

(assert (=> b!538303 m!785491))

(declare-fun m!785493 () Bool)

(assert (=> b!538303 m!785493))

(declare-fun m!785495 () Bool)

(assert (=> b!538303 m!785495))

(declare-fun m!785497 () Bool)

(assert (=> b!538303 m!785497))

(declare-fun m!785499 () Bool)

(assert (=> b!538303 m!785499))

(assert (=> b!538303 m!785467))

(declare-fun m!785501 () Bool)

(assert (=> b!538303 m!785501))

(declare-fun m!785503 () Bool)

(assert (=> b!538303 m!785503))

(assert (=> b!538303 m!785487))

(declare-fun m!785505 () Bool)

(assert (=> b!538303 m!785505))

(declare-fun m!785507 () Bool)

(assert (=> b!538303 m!785507))

(assert (=> b!538303 m!785491))

(declare-fun m!785509 () Bool)

(assert (=> b!538303 m!785509))

(declare-fun m!785511 () Bool)

(assert (=> b!538303 m!785511))

(declare-fun m!785513 () Bool)

(assert (=> b!538303 m!785513))

(declare-fun m!785515 () Bool)

(assert (=> b!538303 m!785515))

(declare-fun m!785517 () Bool)

(assert (=> b!538303 m!785517))

(declare-fun m!785519 () Bool)

(assert (=> b!538309 m!785519))

(declare-fun m!785521 () Bool)

(assert (=> b!538311 m!785521))

(declare-fun m!785523 () Bool)

(assert (=> start!49780 m!785523))

(declare-fun m!785525 () Bool)

(assert (=> b!538317 m!785525))

(check-sat b_and!52653 tp_is_empty!2957 (not b!538318) (not b!538311) (not start!49780) (not b_next!14797) b_and!52651 (not b!538297) (not b_next!14793) b_and!52657 (not b!538315) (not b!538322) (not b!538317) (not b!538306) (not b!538310) b_and!52655 (not b!538309) (not b!538313) (not b_next!14795) (not b!538296) (not b!538319) (not b!538301) (not b!538304) (not b!538314) (not b!538302) (not b_next!14799) (not b!538307) (not b!538293) (not b!538303) (not b!538321) (not b!538294) (not b!538305) (not b!538300) (not b!538323))
(check-sat b_and!52653 b_and!52655 (not b_next!14795) (not b_next!14799) (not b_next!14797) b_and!52651 b_and!52657 (not b_next!14793))

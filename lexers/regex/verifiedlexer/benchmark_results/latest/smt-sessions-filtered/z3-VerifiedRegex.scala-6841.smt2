; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359652 () Bool)

(assert start!359652)

(declare-fun b!3841296 () Bool)

(declare-fun b_free!102473 () Bool)

(declare-fun b_next!103177 () Bool)

(assert (=> b!3841296 (= b_free!102473 (not b_next!103177))))

(declare-fun tp!1163641 () Bool)

(declare-fun b_and!286151 () Bool)

(assert (=> b!3841296 (= tp!1163641 b_and!286151)))

(declare-fun b_free!102475 () Bool)

(declare-fun b_next!103179 () Bool)

(assert (=> b!3841296 (= b_free!102475 (not b_next!103179))))

(declare-fun tp!1163654 () Bool)

(declare-fun b_and!286153 () Bool)

(assert (=> b!3841296 (= tp!1163654 b_and!286153)))

(declare-fun b!3841282 () Bool)

(declare-fun b_free!102477 () Bool)

(declare-fun b_next!103181 () Bool)

(assert (=> b!3841282 (= b_free!102477 (not b_next!103181))))

(declare-fun tp!1163644 () Bool)

(declare-fun b_and!286155 () Bool)

(assert (=> b!3841282 (= tp!1163644 b_and!286155)))

(declare-fun b_free!102479 () Bool)

(declare-fun b_next!103183 () Bool)

(assert (=> b!3841282 (= b_free!102479 (not b_next!103183))))

(declare-fun tp!1163658 () Bool)

(declare-fun b_and!286157 () Bool)

(assert (=> b!3841282 (= tp!1163658 b_and!286157)))

(declare-fun b!3841272 () Bool)

(declare-fun b_free!102481 () Bool)

(declare-fun b_next!103185 () Bool)

(assert (=> b!3841272 (= b_free!102481 (not b_next!103185))))

(declare-fun tp!1163659 () Bool)

(declare-fun b_and!286159 () Bool)

(assert (=> b!3841272 (= tp!1163659 b_and!286159)))

(declare-fun b_free!102483 () Bool)

(declare-fun b_next!103187 () Bool)

(assert (=> b!3841272 (= b_free!102483 (not b_next!103187))))

(declare-fun tp!1163656 () Bool)

(declare-fun b_and!286161 () Bool)

(assert (=> b!3841272 (= tp!1163656 b_and!286161)))

(declare-fun b!3841306 () Bool)

(declare-fun b_free!102485 () Bool)

(declare-fun b_next!103189 () Bool)

(assert (=> b!3841306 (= b_free!102485 (not b_next!103189))))

(declare-fun tp!1163642 () Bool)

(declare-fun b_and!286163 () Bool)

(assert (=> b!3841306 (= tp!1163642 b_and!286163)))

(declare-fun b_free!102487 () Bool)

(declare-fun b_next!103191 () Bool)

(assert (=> b!3841306 (= b_free!102487 (not b_next!103191))))

(declare-fun tp!1163646 () Bool)

(declare-fun b_and!286165 () Bool)

(assert (=> b!3841306 (= tp!1163646 b_and!286165)))

(declare-fun e!2373164 () Bool)

(assert (=> b!3841272 (= e!2373164 (and tp!1163659 tp!1163656))))

(declare-datatypes ((LexerInterface!5859 0))(
  ( (LexerInterfaceExt!5856 (__x!25217 Int)) (Lexer!5857) )
))
(declare-fun thiss!20629 () LexerInterface!5859)

(declare-datatypes ((C!22536 0))(
  ( (C!22537 (val!13362 Int)) )
))
(declare-datatypes ((List!40764 0))(
  ( (Nil!40640) (Cons!40640 (h!46060 C!22536) (t!310433 List!40764)) )
))
(declare-fun lt!1333248 () List!40764)

(declare-fun b!3841273 () Bool)

(declare-datatypes ((IArray!24967 0))(
  ( (IArray!24968 (innerList!12541 List!40764)) )
))
(declare-datatypes ((Conc!12481 0))(
  ( (Node!12481 (left!31390 Conc!12481) (right!31720 Conc!12481) (csize!25192 Int) (cheight!12692 Int)) (Leaf!19323 (xs!15787 IArray!24967) (csize!25193 Int)) (Empty!12481) )
))
(declare-datatypes ((BalanceConc!24556 0))(
  ( (BalanceConc!24557 (c!669452 Conc!12481)) )
))
(declare-datatypes ((List!40765 0))(
  ( (Nil!40641) (Cons!40641 (h!46061 (_ BitVec 16)) (t!310434 List!40765)) )
))
(declare-datatypes ((TokenValue!6500 0))(
  ( (FloatLiteralValue!13000 (text!45945 List!40765)) (TokenValueExt!6499 (__x!25218 Int)) (Broken!32500 (value!199303 List!40765)) (Object!6623) (End!6500) (Def!6500) (Underscore!6500) (Match!6500) (Else!6500) (Error!6500) (Case!6500) (If!6500) (Extends!6500) (Abstract!6500) (Class!6500) (Val!6500) (DelimiterValue!13000 (del!6560 List!40765)) (KeywordValue!6506 (value!199304 List!40765)) (CommentValue!13000 (value!199305 List!40765)) (WhitespaceValue!13000 (value!199306 List!40765)) (IndentationValue!6500 (value!199307 List!40765)) (String!46217) (Int32!6500) (Broken!32501 (value!199308 List!40765)) (Boolean!6501) (Unit!58345) (OperatorValue!6503 (op!6560 List!40765)) (IdentifierValue!13000 (value!199309 List!40765)) (IdentifierValue!13001 (value!199310 List!40765)) (WhitespaceValue!13001 (value!199311 List!40765)) (True!13000) (False!13000) (Broken!32502 (value!199312 List!40765)) (Broken!32503 (value!199313 List!40765)) (True!13001) (RightBrace!6500) (RightBracket!6500) (Colon!6500) (Null!6500) (Comma!6500) (LeftBracket!6500) (False!13001) (LeftBrace!6500) (ImaginaryLiteralValue!6500 (text!45946 List!40765)) (StringLiteralValue!19500 (value!199314 List!40765)) (EOFValue!6500 (value!199315 List!40765)) (IdentValue!6500 (value!199316 List!40765)) (DelimiterValue!13001 (value!199317 List!40765)) (DedentValue!6500 (value!199318 List!40765)) (NewLineValue!6500 (value!199319 List!40765)) (IntegerValue!19500 (value!199320 (_ BitVec 32)) (text!45947 List!40765)) (IntegerValue!19501 (value!199321 Int) (text!45948 List!40765)) (Times!6500) (Or!6500) (Equal!6500) (Minus!6500) (Broken!32504 (value!199322 List!40765)) (And!6500) (Div!6500) (LessEqual!6500) (Mod!6500) (Concat!17675) (Not!6500) (Plus!6500) (SpaceValue!6500 (value!199323 List!40765)) (IntegerValue!19502 (value!199324 Int) (text!45949 List!40765)) (StringLiteralValue!19501 (text!45950 List!40765)) (FloatLiteralValue!13001 (text!45951 List!40765)) (BytesLiteralValue!6500 (value!199325 List!40765)) (CommentValue!13001 (value!199326 List!40765)) (StringLiteralValue!19502 (value!199327 List!40765)) (ErrorTokenValue!6500 (msg!6561 List!40765)) )
))
(declare-datatypes ((Regex!11175 0))(
  ( (ElementMatch!11175 (c!669453 C!22536)) (Concat!17676 (regOne!22862 Regex!11175) (regTwo!22862 Regex!11175)) (EmptyExpr!11175) (Star!11175 (reg!11504 Regex!11175)) (EmptyLang!11175) (Union!11175 (regOne!22863 Regex!11175) (regTwo!22863 Regex!11175)) )
))
(declare-datatypes ((String!46218 0))(
  ( (String!46219 (value!199328 String)) )
))
(declare-datatypes ((TokenValueInjection!12428 0))(
  ( (TokenValueInjection!12429 (toValue!8686 Int) (toChars!8545 Int)) )
))
(declare-datatypes ((Rule!12340 0))(
  ( (Rule!12341 (regex!6270 Regex!11175) (tag!7130 String!46218) (isSeparator!6270 Bool) (transformation!6270 TokenValueInjection!12428)) )
))
(declare-datatypes ((List!40766 0))(
  ( (Nil!40642) (Cons!40642 (h!46062 Rule!12340) (t!310435 List!40766)) )
))
(declare-fun rules!2768 () List!40766)

(declare-datatypes ((Token!11678 0))(
  ( (Token!11679 (value!199329 TokenValue!6500) (rule!9108 Rule!12340) (size!30587 Int) (originalCharacters!6870 List!40764)) )
))
(declare-datatypes ((tuple2!39814 0))(
  ( (tuple2!39815 (_1!23041 Token!11678) (_2!23041 List!40764)) )
))
(declare-datatypes ((Option!8688 0))(
  ( (None!8687) (Some!8687 (v!38979 tuple2!39814)) )
))
(declare-fun lt!1333245 () Option!8688)

(declare-fun maxPrefix!3163 (LexerInterface!5859 List!40766 List!40764) Option!8688)

(assert (=> b!3841273 (= lt!1333245 (maxPrefix!3163 thiss!20629 (t!310435 rules!2768) lt!1333248))))

(declare-fun lt!1333246 () Option!8688)

(declare-fun call!281960 () Option!8688)

(assert (=> b!3841273 (= lt!1333246 call!281960)))

(declare-fun e!2373162 () Option!8688)

(get-info :version)

(assert (=> b!3841273 (= e!2373162 (ite (and ((_ is None!8687) lt!1333246) ((_ is None!8687) lt!1333245)) None!8687 (ite ((_ is None!8687) lt!1333245) lt!1333246 (ite ((_ is None!8687) lt!1333246) lt!1333245 (ite (>= (size!30587 (_1!23041 (v!38979 lt!1333246))) (size!30587 (_1!23041 (v!38979 lt!1333245)))) (Some!8687 (v!38979 lt!1333246)) lt!1333245)))))))

(declare-fun b!3841274 () Bool)

(declare-fun e!2373169 () Bool)

(declare-fun lt!1333251 () Option!8688)

(declare-fun size!30588 (List!40764) Int)

(assert (=> b!3841274 (= e!2373169 (= (size!30587 (_1!23041 (v!38979 lt!1333251))) (size!30588 (originalCharacters!6870 (_1!23041 (v!38979 lt!1333251))))))))

(declare-fun e!2373179 () Bool)

(declare-fun e!2373191 () Bool)

(declare-fun b!3841275 () Bool)

(declare-fun tp!1163653 () Bool)

(declare-fun err!4233 () Option!8688)

(declare-fun inv!21 (TokenValue!6500) Bool)

(assert (=> b!3841275 (= e!2373179 (and (inv!21 (value!199329 (_1!23041 (v!38979 err!4233)))) e!2373191 tp!1163653))))

(declare-fun b!3841276 () Bool)

(declare-datatypes ((List!40767 0))(
  ( (Nil!40643) (Cons!40643 (h!46063 Token!11678) (t!310436 List!40767)) )
))
(declare-fun suffixTokens!72 () List!40767)

(declare-fun tp!1163639 () Bool)

(declare-fun e!2373189 () Bool)

(declare-fun e!2373187 () Bool)

(assert (=> b!3841276 (= e!2373187 (and (inv!21 (value!199329 (h!46063 suffixTokens!72))) e!2373189 tp!1163639))))

(declare-fun b!3841277 () Bool)

(declare-fun e!2373171 () Option!8688)

(assert (=> b!3841277 (= e!2373171 call!281960)))

(declare-fun b!3841278 () Bool)

(declare-fun res!1554706 () Bool)

(declare-fun e!2373168 () Bool)

(assert (=> b!3841278 (=> (not res!1554706) (not e!2373168))))

(declare-fun suffixResult!91 () List!40764)

(declare-fun suffix!1176 () List!40764)

(declare-datatypes ((tuple2!39816 0))(
  ( (tuple2!39817 (_1!23042 List!40767) (_2!23042 List!40764)) )
))
(declare-fun lexList!1627 (LexerInterface!5859 List!40766 List!40764) tuple2!39816)

(assert (=> b!3841278 (= res!1554706 (= (lexList!1627 thiss!20629 rules!2768 suffix!1176) (tuple2!39817 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1163648 () Bool)

(declare-fun e!2373193 () Bool)

(declare-fun prefixTokens!80 () List!40767)

(declare-fun e!2373182 () Bool)

(declare-fun b!3841279 () Bool)

(declare-fun inv!54785 (String!46218) Bool)

(declare-fun inv!54788 (TokenValueInjection!12428) Bool)

(assert (=> b!3841279 (= e!2373193 (and tp!1163648 (inv!54785 (tag!7130 (rule!9108 (h!46063 prefixTokens!80)))) (inv!54788 (transformation!6270 (rule!9108 (h!46063 prefixTokens!80)))) e!2373182))))

(declare-fun bm!281955 () Bool)

(declare-fun maxPrefixOneRule!2247 (LexerInterface!5859 Rule!12340 List!40764) Option!8688)

(assert (=> bm!281955 (= call!281960 (maxPrefixOneRule!2247 thiss!20629 (h!46062 rules!2768) lt!1333248))))

(declare-fun b!3841280 () Bool)

(declare-fun e!2373184 () Bool)

(declare-fun e!2373178 () Bool)

(assert (=> b!3841280 (= e!2373184 e!2373178)))

(declare-fun res!1554702 () Bool)

(assert (=> b!3841280 (=> res!1554702 e!2373178)))

(declare-fun lt!1333233 () List!40767)

(declare-fun lt!1333237 () List!40767)

(declare-fun lt!1333242 () List!40764)

(declare-fun lt!1333249 () List!40767)

(declare-fun lt!1333235 () tuple2!39816)

(declare-fun prefix!426 () List!40764)

(assert (=> b!3841280 (= res!1554702 (or (not (= lt!1333249 (_1!23042 lt!1333235))) (not (= lt!1333249 lt!1333237)) (not (= prefixTokens!80 lt!1333233)) (not (= prefix!426 lt!1333242))))))

(assert (=> b!3841280 (= lt!1333242 prefix!426)))

(declare-datatypes ((Unit!58346 0))(
  ( (Unit!58347) )
))
(declare-fun lt!1333253 () Unit!58346)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!398 (List!40764 List!40764 List!40764 List!40764) Unit!58346)

(assert (=> b!3841280 (= lt!1333253 (lemmaConcatSameAndSameSizesThenSameLists!398 lt!1333242 (_2!23041 (v!38979 lt!1333251)) prefix!426 suffix!1176))))

(declare-fun b!3841281 () Bool)

(declare-fun res!1554715 () Bool)

(declare-fun e!2373165 () Bool)

(assert (=> b!3841281 (=> (not res!1554715) (not e!2373165))))

(declare-fun isEmpty!24022 (List!40764) Bool)

(assert (=> b!3841281 (= res!1554715 (not (isEmpty!24022 prefix!426)))))

(assert (=> b!3841282 (= e!2373182 (and tp!1163644 tp!1163658))))

(declare-fun b!3841284 () Bool)

(declare-fun e!2373174 () Bool)

(declare-fun tp_is_empty!19321 () Bool)

(declare-fun tp!1163652 () Bool)

(assert (=> b!3841284 (= e!2373174 (and tp_is_empty!19321 tp!1163652))))

(declare-fun b!3841285 () Bool)

(declare-fun e!2373185 () Bool)

(declare-fun e!2373177 () Bool)

(assert (=> b!3841285 (= e!2373185 e!2373177)))

(declare-fun res!1554716 () Bool)

(assert (=> b!3841285 (=> res!1554716 e!2373177)))

(declare-fun lt!1333234 () tuple2!39816)

(assert (=> b!3841285 (= res!1554716 (or (not (= lt!1333235 (tuple2!39817 lt!1333237 (_2!23042 lt!1333234)))) (not (= lt!1333234 (tuple2!39817 (_1!23042 lt!1333234) (_2!23042 lt!1333234)))) (not (= (_2!23041 (v!38979 lt!1333251)) suffix!1176))))))

(declare-fun ++!10297 (List!40767 List!40767) List!40767)

(assert (=> b!3841285 (= lt!1333237 (++!10297 lt!1333233 (_1!23042 lt!1333234)))))

(assert (=> b!3841285 (= lt!1333233 (Cons!40643 (_1!23041 (v!38979 lt!1333251)) Nil!40643))))

(declare-fun b!3841286 () Bool)

(declare-fun e!2373175 () Bool)

(assert (=> b!3841286 (= e!2373175 (not e!2373185))))

(declare-fun res!1554703 () Bool)

(assert (=> b!3841286 (=> res!1554703 e!2373185)))

(declare-fun lt!1333247 () List!40764)

(assert (=> b!3841286 (= res!1554703 (not (= lt!1333247 lt!1333248)))))

(assert (=> b!3841286 (= lt!1333234 (lexList!1627 thiss!20629 rules!2768 (_2!23041 (v!38979 lt!1333251))))))

(declare-fun lt!1333241 () TokenValue!6500)

(declare-fun lt!1333238 () List!40764)

(declare-fun lt!1333250 () Int)

(assert (=> b!3841286 (and (= (size!30587 (_1!23041 (v!38979 lt!1333251))) lt!1333250) (= (originalCharacters!6870 (_1!23041 (v!38979 lt!1333251))) lt!1333242) (= (tuple2!39815 (_1!23041 (v!38979 lt!1333251)) (_2!23041 (v!38979 lt!1333251))) (tuple2!39815 (Token!11679 lt!1333241 (rule!9108 (_1!23041 (v!38979 lt!1333251))) lt!1333250 lt!1333242) lt!1333238)))))

(assert (=> b!3841286 (= lt!1333250 (size!30588 lt!1333242))))

(assert (=> b!3841286 e!2373169))

(declare-fun res!1554717 () Bool)

(assert (=> b!3841286 (=> (not res!1554717) (not e!2373169))))

(assert (=> b!3841286 (= res!1554717 (= (value!199329 (_1!23041 (v!38979 lt!1333251))) lt!1333241))))

(declare-fun apply!9513 (TokenValueInjection!12428 BalanceConc!24556) TokenValue!6500)

(declare-fun seqFromList!4541 (List!40764) BalanceConc!24556)

(assert (=> b!3841286 (= lt!1333241 (apply!9513 (transformation!6270 (rule!9108 (_1!23041 (v!38979 lt!1333251)))) (seqFromList!4541 lt!1333242)))))

(assert (=> b!3841286 (= (_2!23041 (v!38979 lt!1333251)) lt!1333238)))

(declare-fun lt!1333239 () Unit!58346)

(declare-fun lemmaSamePrefixThenSameSuffix!1590 (List!40764 List!40764 List!40764 List!40764 List!40764) Unit!58346)

(assert (=> b!3841286 (= lt!1333239 (lemmaSamePrefixThenSameSuffix!1590 lt!1333242 (_2!23041 (v!38979 lt!1333251)) lt!1333242 lt!1333238 lt!1333248))))

(declare-fun getSuffix!1824 (List!40764 List!40764) List!40764)

(assert (=> b!3841286 (= lt!1333238 (getSuffix!1824 lt!1333248 lt!1333242))))

(declare-fun isPrefix!3369 (List!40764 List!40764) Bool)

(assert (=> b!3841286 (isPrefix!3369 lt!1333242 lt!1333247)))

(declare-fun ++!10298 (List!40764 List!40764) List!40764)

(assert (=> b!3841286 (= lt!1333247 (++!10298 lt!1333242 (_2!23041 (v!38979 lt!1333251))))))

(declare-fun lt!1333240 () Unit!58346)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2232 (List!40764 List!40764) Unit!58346)

(assert (=> b!3841286 (= lt!1333240 (lemmaConcatTwoListThenFirstIsPrefix!2232 lt!1333242 (_2!23041 (v!38979 lt!1333251))))))

(declare-fun list!15134 (BalanceConc!24556) List!40764)

(declare-fun charsOf!4098 (Token!11678) BalanceConc!24556)

(assert (=> b!3841286 (= lt!1333242 (list!15134 (charsOf!4098 (_1!23041 (v!38979 lt!1333251)))))))

(declare-fun ruleValid!2222 (LexerInterface!5859 Rule!12340) Bool)

(assert (=> b!3841286 (ruleValid!2222 thiss!20629 (rule!9108 (_1!23041 (v!38979 lt!1333251))))))

(declare-fun lt!1333244 () Unit!58346)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1302 (LexerInterface!5859 Rule!12340 List!40766) Unit!58346)

(assert (=> b!3841286 (= lt!1333244 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1302 thiss!20629 (rule!9108 (_1!23041 (v!38979 lt!1333251))) rules!2768))))

(declare-fun lt!1333236 () Unit!58346)

(declare-fun lemmaCharactersSize!931 (Token!11678) Unit!58346)

(assert (=> b!3841286 (= lt!1333236 (lemmaCharactersSize!931 (_1!23041 (v!38979 lt!1333251))))))

(declare-fun e!2373186 () Bool)

(declare-fun b!3841287 () Bool)

(declare-fun tp!1163655 () Bool)

(assert (=> b!3841287 (= e!2373189 (and tp!1163655 (inv!54785 (tag!7130 (rule!9108 (h!46063 suffixTokens!72)))) (inv!54788 (transformation!6270 (rule!9108 (h!46063 suffixTokens!72)))) e!2373186))))

(declare-fun b!3841288 () Bool)

(declare-fun res!1554709 () Bool)

(assert (=> b!3841288 (=> (not res!1554709) (not e!2373165))))

(declare-fun rulesInvariant!5202 (LexerInterface!5859 List!40766) Bool)

(assert (=> b!3841288 (= res!1554709 (rulesInvariant!5202 thiss!20629 rules!2768))))

(declare-fun b!3841289 () Bool)

(declare-fun res!1554713 () Bool)

(assert (=> b!3841289 (=> (not res!1554713) (not e!2373165))))

(declare-fun isEmpty!24023 (List!40767) Bool)

(assert (=> b!3841289 (= res!1554713 (not (isEmpty!24023 prefixTokens!80)))))

(declare-fun b!3841290 () Bool)

(assert (=> b!3841290 (= e!2373177 e!2373184)))

(declare-fun res!1554705 () Bool)

(assert (=> b!3841290 (=> res!1554705 e!2373184)))

(assert (=> b!3841290 (= res!1554705 (not (= lt!1333251 (Some!8687 (tuple2!39815 (_1!23041 (v!38979 lt!1333251)) (_2!23041 (v!38979 lt!1333251)))))))))

(declare-fun e!2373167 () Bool)

(assert (=> b!3841290 e!2373167))

(declare-fun res!1554708 () Bool)

(assert (=> b!3841290 (=> (not res!1554708) (not e!2373167))))

(assert (=> b!3841290 (= res!1554708 (isPrefix!3369 lt!1333248 lt!1333248))))

(declare-fun lt!1333252 () Unit!58346)

(declare-fun lemmaIsPrefixRefl!2142 (List!40764 List!40764) Unit!58346)

(assert (=> b!3841290 (= lt!1333252 (lemmaIsPrefixRefl!2142 lt!1333248 lt!1333248))))

(assert (=> b!3841290 (= lt!1333235 (tuple2!39817 (Cons!40643 (_1!23041 (v!38979 lt!1333251)) (_1!23042 lt!1333234)) (_2!23042 lt!1333234)))))

(declare-fun tp!1163640 () Bool)

(declare-fun e!2373192 () Bool)

(declare-fun b!3841291 () Bool)

(assert (=> b!3841291 (= e!2373192 (and (inv!21 (value!199329 (h!46063 prefixTokens!80))) e!2373193 tp!1163640))))

(declare-fun b!3841292 () Bool)

(declare-fun e!2373173 () Bool)

(declare-fun tp!1163660 () Bool)

(assert (=> b!3841292 (= e!2373173 (and tp_is_empty!19321 tp!1163660))))

(declare-fun b!3841293 () Bool)

(declare-fun res!1554710 () Bool)

(assert (=> b!3841293 (=> res!1554710 e!2373178)))

(assert (=> b!3841293 (= res!1554710 (< (size!30588 prefix!426) lt!1333250))))

(declare-fun b!3841294 () Bool)

(assert (=> b!3841294 (= e!2373178 true)))

(declare-fun lt!1333232 () List!40764)

(assert (=> b!3841294 (= lt!1333232 (++!10298 prefix!426 Nil!40640))))

(declare-fun lt!1333243 () List!40764)

(assert (=> b!3841294 (= lt!1333243 (++!10298 lt!1333242 Nil!40640))))

(declare-fun b!3841295 () Bool)

(declare-fun e!2373170 () Bool)

(declare-fun tp!1163645 () Bool)

(assert (=> b!3841295 (= e!2373170 (and tp_is_empty!19321 tp!1163645))))

(assert (=> b!3841296 (= e!2373186 (and tp!1163641 tp!1163654))))

(declare-fun b!3841297 () Bool)

(declare-fun res!1554714 () Bool)

(assert (=> b!3841297 (=> res!1554714 e!2373178)))

(assert (=> b!3841297 (= res!1554714 (< (size!30588 suffix!1176) (size!30588 Nil!40640)))))

(declare-fun b!3841298 () Bool)

(assert (=> b!3841298 true))

(declare-fun e!2373181 () Bool)

(assert (=> b!3841298 e!2373181))

(assert (=> b!3841298 (= e!2373162 err!4233)))

(declare-fun e!2373172 () Bool)

(declare-fun b!3841299 () Bool)

(declare-fun tp!1163650 () Bool)

(declare-fun inv!54789 (Token!11678) Bool)

(assert (=> b!3841299 (= e!2373172 (and (inv!54789 (h!46063 suffixTokens!72)) e!2373187 tp!1163650))))

(declare-fun b!3841300 () Bool)

(assert (=> b!3841300 (= e!2373167 (= lt!1333251 e!2373171))))

(declare-fun c!669450 () Bool)

(assert (=> b!3841300 (= c!669450 (and ((_ is Cons!40642) rules!2768) ((_ is Nil!40642) (t!310435 rules!2768))))))

(declare-fun tp!1163649 () Bool)

(declare-fun e!2373166 () Bool)

(declare-fun b!3841301 () Bool)

(assert (=> b!3841301 (= e!2373166 (and tp!1163649 (inv!54785 (tag!7130 (h!46062 rules!2768))) (inv!54788 (transformation!6270 (h!46062 rules!2768))) e!2373164))))

(declare-fun b!3841302 () Bool)

(assert (=> b!3841302 (= e!2373165 e!2373168)))

(declare-fun res!1554711 () Bool)

(assert (=> b!3841302 (=> (not res!1554711) (not e!2373168))))

(assert (=> b!3841302 (= res!1554711 (= lt!1333235 (tuple2!39817 lt!1333249 suffixResult!91)))))

(assert (=> b!3841302 (= lt!1333235 (lexList!1627 thiss!20629 rules!2768 lt!1333248))))

(assert (=> b!3841302 (= lt!1333249 (++!10297 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3841302 (= lt!1333248 (++!10298 prefix!426 suffix!1176))))

(declare-fun b!3841303 () Bool)

(declare-fun e!2373195 () Bool)

(declare-fun tp!1163643 () Bool)

(assert (=> b!3841303 (= e!2373195 (and e!2373166 tp!1163643))))

(declare-fun e!2373194 () Bool)

(declare-fun tp!1163651 () Bool)

(declare-fun b!3841304 () Bool)

(assert (=> b!3841304 (= e!2373194 (and (inv!54789 (h!46063 prefixTokens!80)) e!2373192 tp!1163651))))

(declare-fun b!3841305 () Bool)

(assert (=> b!3841305 (= e!2373168 e!2373175)))

(declare-fun res!1554712 () Bool)

(assert (=> b!3841305 (=> (not res!1554712) (not e!2373175))))

(assert (=> b!3841305 (= res!1554712 ((_ is Some!8687) lt!1333251))))

(assert (=> b!3841305 (= lt!1333251 (maxPrefix!3163 thiss!20629 rules!2768 lt!1333248))))

(declare-fun e!2373183 () Bool)

(assert (=> b!3841306 (= e!2373183 (and tp!1163642 tp!1163646))))

(declare-fun b!3841307 () Bool)

(declare-fun res!1554704 () Bool)

(assert (=> b!3841307 (=> (not res!1554704) (not e!2373165))))

(declare-fun isEmpty!24024 (List!40766) Bool)

(assert (=> b!3841307 (= res!1554704 (not (isEmpty!24024 rules!2768)))))

(declare-fun res!1554707 () Bool)

(assert (=> start!359652 (=> (not res!1554707) (not e!2373165))))

(assert (=> start!359652 (= res!1554707 ((_ is Lexer!5857) thiss!20629))))

(assert (=> start!359652 e!2373165))

(assert (=> start!359652 e!2373170))

(assert (=> start!359652 true))

(assert (=> start!359652 e!2373174))

(assert (=> start!359652 e!2373195))

(assert (=> start!359652 e!2373194))

(assert (=> start!359652 e!2373172))

(assert (=> start!359652 e!2373173))

(declare-fun tp!1163647 () Bool)

(declare-fun b!3841283 () Bool)

(assert (=> b!3841283 (= e!2373191 (and tp!1163647 (inv!54785 (tag!7130 (rule!9108 (_1!23041 (v!38979 err!4233))))) (inv!54788 (transformation!6270 (rule!9108 (_1!23041 (v!38979 err!4233))))) e!2373183))))

(declare-fun b!3841308 () Bool)

(declare-fun res!1554718 () Bool)

(assert (=> b!3841308 (=> res!1554718 e!2373178)))

(assert (=> b!3841308 (= res!1554718 (not (isPrefix!3369 Nil!40640 suffix!1176)))))

(declare-fun b!3841309 () Bool)

(declare-fun tp!1163657 () Bool)

(assert (=> b!3841309 (= e!2373181 (and (inv!54789 (_1!23041 (v!38979 err!4233))) e!2373179 tp!1163657))))

(declare-fun b!3841310 () Bool)

(assert (=> b!3841310 (= e!2373171 e!2373162)))

(declare-fun c!669451 () Bool)

(assert (=> b!3841310 (= c!669451 ((_ is Cons!40642) rules!2768))))

(assert (= (and start!359652 res!1554707) b!3841307))

(assert (= (and b!3841307 res!1554704) b!3841288))

(assert (= (and b!3841288 res!1554709) b!3841289))

(assert (= (and b!3841289 res!1554713) b!3841281))

(assert (= (and b!3841281 res!1554715) b!3841302))

(assert (= (and b!3841302 res!1554711) b!3841278))

(assert (= (and b!3841278 res!1554706) b!3841305))

(assert (= (and b!3841305 res!1554712) b!3841286))

(assert (= (and b!3841286 res!1554717) b!3841274))

(assert (= (and b!3841286 (not res!1554703)) b!3841285))

(assert (= (and b!3841285 (not res!1554716)) b!3841290))

(assert (= (and b!3841290 res!1554708) b!3841300))

(assert (= (and b!3841300 c!669450) b!3841277))

(assert (= (and b!3841300 (not c!669450)) b!3841310))

(assert (= (and b!3841310 c!669451) b!3841273))

(assert (= (and b!3841310 (not c!669451)) b!3841298))

(assert (= b!3841283 b!3841306))

(assert (= b!3841275 b!3841283))

(assert (= b!3841309 b!3841275))

(assert (= (and b!3841298 ((_ is Some!8687) err!4233)) b!3841309))

(assert (= (or b!3841277 b!3841273) bm!281955))

(assert (= (and b!3841290 (not res!1554705)) b!3841280))

(assert (= (and b!3841280 (not res!1554702)) b!3841308))

(assert (= (and b!3841308 (not res!1554718)) b!3841297))

(assert (= (and b!3841297 (not res!1554714)) b!3841293))

(assert (= (and b!3841293 (not res!1554710)) b!3841294))

(assert (= (and start!359652 ((_ is Cons!40640) suffixResult!91)) b!3841295))

(assert (= (and start!359652 ((_ is Cons!40640) suffix!1176)) b!3841284))

(assert (= b!3841301 b!3841272))

(assert (= b!3841303 b!3841301))

(assert (= (and start!359652 ((_ is Cons!40642) rules!2768)) b!3841303))

(assert (= b!3841279 b!3841282))

(assert (= b!3841291 b!3841279))

(assert (= b!3841304 b!3841291))

(assert (= (and start!359652 ((_ is Cons!40643) prefixTokens!80)) b!3841304))

(assert (= b!3841287 b!3841296))

(assert (= b!3841276 b!3841287))

(assert (= b!3841299 b!3841276))

(assert (= (and start!359652 ((_ is Cons!40643) suffixTokens!72)) b!3841299))

(assert (= (and start!359652 ((_ is Cons!40640) prefix!426)) b!3841292))

(declare-fun m!4395469 () Bool)

(assert (=> b!3841274 m!4395469))

(declare-fun m!4395471 () Bool)

(assert (=> b!3841287 m!4395471))

(declare-fun m!4395473 () Bool)

(assert (=> b!3841287 m!4395473))

(declare-fun m!4395475 () Bool)

(assert (=> b!3841290 m!4395475))

(declare-fun m!4395477 () Bool)

(assert (=> b!3841290 m!4395477))

(declare-fun m!4395479 () Bool)

(assert (=> b!3841280 m!4395479))

(declare-fun m!4395481 () Bool)

(assert (=> b!3841283 m!4395481))

(declare-fun m!4395483 () Bool)

(assert (=> b!3841283 m!4395483))

(declare-fun m!4395485 () Bool)

(assert (=> b!3841276 m!4395485))

(declare-fun m!4395487 () Bool)

(assert (=> b!3841305 m!4395487))

(declare-fun m!4395489 () Bool)

(assert (=> b!3841279 m!4395489))

(declare-fun m!4395491 () Bool)

(assert (=> b!3841279 m!4395491))

(declare-fun m!4395493 () Bool)

(assert (=> bm!281955 m!4395493))

(declare-fun m!4395495 () Bool)

(assert (=> b!3841308 m!4395495))

(declare-fun m!4395497 () Bool)

(assert (=> b!3841309 m!4395497))

(declare-fun m!4395499 () Bool)

(assert (=> b!3841273 m!4395499))

(declare-fun m!4395501 () Bool)

(assert (=> b!3841299 m!4395501))

(declare-fun m!4395503 () Bool)

(assert (=> b!3841281 m!4395503))

(declare-fun m!4395505 () Bool)

(assert (=> b!3841301 m!4395505))

(declare-fun m!4395507 () Bool)

(assert (=> b!3841301 m!4395507))

(declare-fun m!4395509 () Bool)

(assert (=> b!3841307 m!4395509))

(declare-fun m!4395511 () Bool)

(assert (=> b!3841297 m!4395511))

(declare-fun m!4395513 () Bool)

(assert (=> b!3841297 m!4395513))

(declare-fun m!4395515 () Bool)

(assert (=> b!3841294 m!4395515))

(declare-fun m!4395517 () Bool)

(assert (=> b!3841294 m!4395517))

(declare-fun m!4395519 () Bool)

(assert (=> b!3841278 m!4395519))

(declare-fun m!4395521 () Bool)

(assert (=> b!3841286 m!4395521))

(declare-fun m!4395523 () Bool)

(assert (=> b!3841286 m!4395523))

(declare-fun m!4395525 () Bool)

(assert (=> b!3841286 m!4395525))

(declare-fun m!4395527 () Bool)

(assert (=> b!3841286 m!4395527))

(declare-fun m!4395529 () Bool)

(assert (=> b!3841286 m!4395529))

(declare-fun m!4395531 () Bool)

(assert (=> b!3841286 m!4395531))

(declare-fun m!4395533 () Bool)

(assert (=> b!3841286 m!4395533))

(declare-fun m!4395535 () Bool)

(assert (=> b!3841286 m!4395535))

(declare-fun m!4395537 () Bool)

(assert (=> b!3841286 m!4395537))

(declare-fun m!4395539 () Bool)

(assert (=> b!3841286 m!4395539))

(declare-fun m!4395541 () Bool)

(assert (=> b!3841286 m!4395541))

(assert (=> b!3841286 m!4395539))

(declare-fun m!4395543 () Bool)

(assert (=> b!3841286 m!4395543))

(declare-fun m!4395545 () Bool)

(assert (=> b!3841286 m!4395545))

(assert (=> b!3841286 m!4395543))

(declare-fun m!4395547 () Bool)

(assert (=> b!3841286 m!4395547))

(declare-fun m!4395549 () Bool)

(assert (=> b!3841302 m!4395549))

(declare-fun m!4395551 () Bool)

(assert (=> b!3841302 m!4395551))

(declare-fun m!4395553 () Bool)

(assert (=> b!3841302 m!4395553))

(declare-fun m!4395555 () Bool)

(assert (=> b!3841275 m!4395555))

(declare-fun m!4395557 () Bool)

(assert (=> b!3841285 m!4395557))

(declare-fun m!4395559 () Bool)

(assert (=> b!3841304 m!4395559))

(declare-fun m!4395561 () Bool)

(assert (=> b!3841288 m!4395561))

(declare-fun m!4395563 () Bool)

(assert (=> b!3841293 m!4395563))

(declare-fun m!4395565 () Bool)

(assert (=> b!3841289 m!4395565))

(declare-fun m!4395567 () Bool)

(assert (=> b!3841291 m!4395567))

(check-sat (not b_next!103189) (not b!3841278) (not b_next!103179) (not b!3841301) (not b!3841276) b_and!286163 (not b_next!103177) (not b!3841294) (not b!3841273) (not b!3841308) (not b!3841280) (not b!3841292) (not b!3841274) (not b!3841304) (not bm!281955) b_and!286157 (not b!3841302) (not b!3841297) (not b!3841287) b_and!286153 (not b!3841307) (not b!3841309) (not b_next!103183) (not b!3841286) (not b!3841295) (not b!3841288) b_and!286161 (not b!3841284) (not b!3841279) (not b!3841281) (not b!3841290) (not b_next!103185) (not b!3841285) b_and!286159 (not b!3841293) (not b!3841289) (not b!3841299) (not b!3841303) (not b_next!103181) (not b!3841275) tp_is_empty!19321 b_and!286165 b_and!286151 (not b_next!103187) b_and!286155 (not b!3841283) (not b!3841305) (not b!3841291) (not b_next!103191))
(check-sat (not b_next!103189) b_and!286157 b_and!286153 (not b_next!103183) (not b_next!103179) b_and!286161 b_and!286163 (not b_next!103177) (not b_next!103181) (not b_next!103191) (not b_next!103185) b_and!286159 b_and!286165 b_and!286151 (not b_next!103187) b_and!286155)

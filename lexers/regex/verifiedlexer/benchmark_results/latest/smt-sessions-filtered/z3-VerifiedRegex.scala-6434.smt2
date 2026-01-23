; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336434 () Bool)

(assert start!336434)

(declare-fun b!3613230 () Bool)

(declare-fun b_free!93913 () Bool)

(declare-fun b_next!94617 () Bool)

(assert (=> b!3613230 (= b_free!93913 (not b_next!94617))))

(declare-fun tp!1104317 () Bool)

(declare-fun b_and!263675 () Bool)

(assert (=> b!3613230 (= tp!1104317 b_and!263675)))

(declare-fun b_free!93915 () Bool)

(declare-fun b_next!94619 () Bool)

(assert (=> b!3613230 (= b_free!93915 (not b_next!94619))))

(declare-fun tp!1104311 () Bool)

(declare-fun b_and!263677 () Bool)

(assert (=> b!3613230 (= tp!1104311 b_and!263677)))

(declare-fun b!3613205 () Bool)

(declare-fun b_free!93917 () Bool)

(declare-fun b_next!94621 () Bool)

(assert (=> b!3613205 (= b_free!93917 (not b_next!94621))))

(declare-fun tp!1104312 () Bool)

(declare-fun b_and!263679 () Bool)

(assert (=> b!3613205 (= tp!1104312 b_and!263679)))

(declare-fun b_free!93919 () Bool)

(declare-fun b_next!94623 () Bool)

(assert (=> b!3613205 (= b_free!93919 (not b_next!94623))))

(declare-fun tp!1104309 () Bool)

(declare-fun b_and!263681 () Bool)

(assert (=> b!3613205 (= tp!1104309 b_and!263681)))

(declare-fun b!3613211 () Bool)

(declare-fun b_free!93921 () Bool)

(declare-fun b_next!94625 () Bool)

(assert (=> b!3613211 (= b_free!93921 (not b_next!94625))))

(declare-fun tp!1104315 () Bool)

(declare-fun b_and!263683 () Bool)

(assert (=> b!3613211 (= tp!1104315 b_and!263683)))

(declare-fun b_free!93923 () Bool)

(declare-fun b_next!94627 () Bool)

(assert (=> b!3613211 (= b_free!93923 (not b_next!94627))))

(declare-fun tp!1104310 () Bool)

(declare-fun b_and!263685 () Bool)

(assert (=> b!3613211 (= tp!1104310 b_and!263685)))

(declare-fun b!3613204 () Bool)

(declare-fun b_free!93925 () Bool)

(declare-fun b_next!94629 () Bool)

(assert (=> b!3613204 (= b_free!93925 (not b_next!94629))))

(declare-fun tp!1104322 () Bool)

(declare-fun b_and!263687 () Bool)

(assert (=> b!3613204 (= tp!1104322 b_and!263687)))

(declare-fun b_free!93927 () Bool)

(declare-fun b_next!94631 () Bool)

(assert (=> b!3613204 (= b_free!93927 (not b_next!94631))))

(declare-fun tp!1104308 () Bool)

(declare-fun b_and!263689 () Bool)

(assert (=> b!3613204 (= tp!1104308 b_and!263689)))

(declare-fun b!3613189 () Bool)

(assert (=> b!3613189 false))

(declare-datatypes ((Unit!54326 0))(
  ( (Unit!54327) )
))
(declare-fun lt!1245008 () Unit!54326)

(declare-fun call!261259 () Unit!54326)

(assert (=> b!3613189 (= lt!1245008 call!261259)))

(declare-fun call!261260 () Bool)

(assert (=> b!3613189 (not call!261260)))

(declare-datatypes ((List!38161 0))(
  ( (Nil!38037) (Cons!38037 (h!43457 (_ BitVec 16)) (t!293572 List!38161)) )
))
(declare-datatypes ((TokenValue!5878 0))(
  ( (FloatLiteralValue!11756 (text!41591 List!38161)) (TokenValueExt!5877 (__x!23973 Int)) (Broken!29390 (value!181402 List!38161)) (Object!6001) (End!5878) (Def!5878) (Underscore!5878) (Match!5878) (Else!5878) (Error!5878) (Case!5878) (If!5878) (Extends!5878) (Abstract!5878) (Class!5878) (Val!5878) (DelimiterValue!11756 (del!5938 List!38161)) (KeywordValue!5884 (value!181403 List!38161)) (CommentValue!11756 (value!181404 List!38161)) (WhitespaceValue!11756 (value!181405 List!38161)) (IndentationValue!5878 (value!181406 List!38161)) (String!42723) (Int32!5878) (Broken!29391 (value!181407 List!38161)) (Boolean!5879) (Unit!54328) (OperatorValue!5881 (op!5938 List!38161)) (IdentifierValue!11756 (value!181408 List!38161)) (IdentifierValue!11757 (value!181409 List!38161)) (WhitespaceValue!11757 (value!181410 List!38161)) (True!11756) (False!11756) (Broken!29392 (value!181411 List!38161)) (Broken!29393 (value!181412 List!38161)) (True!11757) (RightBrace!5878) (RightBracket!5878) (Colon!5878) (Null!5878) (Comma!5878) (LeftBracket!5878) (False!11757) (LeftBrace!5878) (ImaginaryLiteralValue!5878 (text!41592 List!38161)) (StringLiteralValue!17634 (value!181413 List!38161)) (EOFValue!5878 (value!181414 List!38161)) (IdentValue!5878 (value!181415 List!38161)) (DelimiterValue!11757 (value!181416 List!38161)) (DedentValue!5878 (value!181417 List!38161)) (NewLineValue!5878 (value!181418 List!38161)) (IntegerValue!17634 (value!181419 (_ BitVec 32)) (text!41593 List!38161)) (IntegerValue!17635 (value!181420 Int) (text!41594 List!38161)) (Times!5878) (Or!5878) (Equal!5878) (Minus!5878) (Broken!29394 (value!181421 List!38161)) (And!5878) (Div!5878) (LessEqual!5878) (Mod!5878) (Concat!16285) (Not!5878) (Plus!5878) (SpaceValue!5878 (value!181422 List!38161)) (IntegerValue!17636 (value!181423 Int) (text!41595 List!38161)) (StringLiteralValue!17635 (text!41596 List!38161)) (FloatLiteralValue!11757 (text!41597 List!38161)) (BytesLiteralValue!5878 (value!181424 List!38161)) (CommentValue!11757 (value!181425 List!38161)) (StringLiteralValue!17636 (value!181426 List!38161)) (ErrorTokenValue!5878 (msg!5939 List!38161)) )
))
(declare-datatypes ((C!21000 0))(
  ( (C!21001 (val!12548 Int)) )
))
(declare-datatypes ((Regex!10407 0))(
  ( (ElementMatch!10407 (c!625108 C!21000)) (Concat!16286 (regOne!21326 Regex!10407) (regTwo!21326 Regex!10407)) (EmptyExpr!10407) (Star!10407 (reg!10736 Regex!10407)) (EmptyLang!10407) (Union!10407 (regOne!21327 Regex!10407) (regTwo!21327 Regex!10407)) )
))
(declare-datatypes ((String!42724 0))(
  ( (String!42725 (value!181427 String)) )
))
(declare-datatypes ((List!38162 0))(
  ( (Nil!38038) (Cons!38038 (h!43458 C!21000) (t!293573 List!38162)) )
))
(declare-datatypes ((IArray!23191 0))(
  ( (IArray!23192 (innerList!11653 List!38162)) )
))
(declare-datatypes ((Conc!11593 0))(
  ( (Node!11593 (left!29715 Conc!11593) (right!30045 Conc!11593) (csize!23416 Int) (cheight!11804 Int)) (Leaf!18028 (xs!14795 IArray!23191) (csize!23417 Int)) (Empty!11593) )
))
(declare-datatypes ((BalanceConc!22800 0))(
  ( (BalanceConc!22801 (c!625109 Conc!11593)) )
))
(declare-datatypes ((TokenValueInjection!11184 0))(
  ( (TokenValueInjection!11185 (toValue!7932 Int) (toChars!7791 Int)) )
))
(declare-datatypes ((Rule!11096 0))(
  ( (Rule!11097 (regex!5648 Regex!10407) (tag!6358 String!42724) (isSeparator!5648 Bool) (transformation!5648 TokenValueInjection!11184)) )
))
(declare-datatypes ((List!38163 0))(
  ( (Nil!38039) (Cons!38039 (h!43459 Rule!11096) (t!293574 List!38163)) )
))
(declare-fun rules!3307 () List!38163)

(declare-datatypes ((Token!10662 0))(
  ( (Token!10663 (value!181428 TokenValue!5878) (rule!8402 Rule!11096) (size!29005 Int) (originalCharacters!6362 List!38162)) )
))
(declare-datatypes ((tuple2!37928 0))(
  ( (tuple2!37929 (_1!22098 Token!10662) (_2!22098 List!38162)) )
))
(declare-fun lt!1245032 () tuple2!37928)

(declare-fun lt!1244991 () Unit!54326)

(declare-fun lt!1244994 () C!21000)

(declare-datatypes ((LexerInterface!5237 0))(
  ( (LexerInterfaceExt!5234 (__x!23974 Int)) (Lexer!5235) )
))
(declare-fun thiss!23823 () LexerInterface!5237)

(declare-fun rule!403 () Rule!11096)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!236 (LexerInterface!5237 List!38163 List!38163 Rule!11096 Rule!11096 C!21000) Unit!54326)

(assert (=> b!3613189 (= lt!1244991 (lemmaSepRuleNotContainsCharContainedInANonSepRule!236 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8402 (_1!22098 lt!1245032)) lt!1244994))))

(declare-fun e!2236258 () Unit!54326)

(declare-fun Unit!54329 () Unit!54326)

(assert (=> b!3613189 (= e!2236258 Unit!54329)))

(declare-fun b!3613190 () Bool)

(declare-fun e!2236268 () Unit!54326)

(declare-fun e!2236257 () Unit!54326)

(assert (=> b!3613190 (= e!2236268 e!2236257)))

(declare-fun lt!1245000 () Unit!54326)

(declare-fun lt!1245013 () List!38162)

(declare-fun lt!1244997 () List!38162)

(declare-fun lt!1244989 () List!38162)

(declare-fun suffix!1395 () List!38162)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!26 (List!38162 List!38162 List!38162 List!38162) Unit!54326)

(assert (=> b!3613190 (= lt!1245000 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!26 lt!1245013 suffix!1395 lt!1244997 lt!1244989))))

(declare-fun lt!1245023 () C!21000)

(declare-fun contains!7359 (List!38162 C!21000) Bool)

(assert (=> b!3613190 (contains!7359 lt!1244997 lt!1245023)))

(declare-fun c!625102 () Bool)

(assert (=> b!3613190 (= c!625102 (isSeparator!5648 rule!403))))

(declare-fun b!3613191 () Bool)

(assert (=> b!3613191 false))

(declare-fun lt!1245004 () Unit!54326)

(assert (=> b!3613191 (= lt!1245004 call!261259)))

(assert (=> b!3613191 (not call!261260)))

(declare-fun lt!1245003 () Unit!54326)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!354 (LexerInterface!5237 List!38163 List!38163 Rule!11096 Rule!11096 C!21000) Unit!54326)

(assert (=> b!3613191 (= lt!1245003 (lemmaNonSepRuleNotContainsCharContainedInASepRule!354 thiss!23823 rules!3307 rules!3307 (rule!8402 (_1!22098 lt!1245032)) rule!403 lt!1244994))))

(declare-fun e!2236248 () Unit!54326)

(declare-fun Unit!54330 () Unit!54326)

(assert (=> b!3613191 (= e!2236248 Unit!54330)))

(declare-fun b!3613192 () Bool)

(declare-fun res!1461733 () Bool)

(declare-fun e!2236276 () Bool)

(assert (=> b!3613192 (=> (not res!1461733) (not e!2236276))))

(declare-fun rulesInvariant!4634 (LexerInterface!5237 List!38163) Bool)

(assert (=> b!3613192 (= res!1461733 (rulesInvariant!4634 thiss!23823 rules!3307))))

(declare-fun b!3613193 () Bool)

(declare-fun e!2236275 () Bool)

(declare-fun e!2236243 () Bool)

(assert (=> b!3613193 (= e!2236275 e!2236243)))

(declare-fun res!1461747 () Bool)

(assert (=> b!3613193 (=> (not res!1461747) (not e!2236243))))

(declare-fun lt!1245035 () tuple2!37928)

(declare-fun token!511 () Token!10662)

(assert (=> b!3613193 (= res!1461747 (= (_1!22098 lt!1245035) token!511))))

(declare-datatypes ((Option!7926 0))(
  ( (None!7925) (Some!7925 (v!37675 tuple2!37928)) )
))
(declare-fun lt!1245031 () Option!7926)

(declare-fun get!12360 (Option!7926) tuple2!37928)

(assert (=> b!3613193 (= lt!1245035 (get!12360 lt!1245031))))

(declare-fun b!3613194 () Bool)

(declare-fun res!1461730 () Bool)

(declare-fun e!2236270 () Bool)

(assert (=> b!3613194 (=> res!1461730 e!2236270)))

(declare-fun getIndex!430 (List!38163 Rule!11096) Int)

(assert (=> b!3613194 (= res!1461730 (>= (getIndex!430 rules!3307 (rule!8402 (_1!22098 lt!1245032))) (getIndex!430 rules!3307 rule!403)))))

(declare-fun b!3613195 () Bool)

(assert (=> b!3613195 false))

(declare-fun lt!1245009 () Unit!54326)

(declare-fun call!261261 () Unit!54326)

(assert (=> b!3613195 (= lt!1245009 call!261261)))

(declare-fun call!261262 () Bool)

(assert (=> b!3613195 (not call!261262)))

(declare-fun lt!1245018 () Unit!54326)

(declare-fun anOtherTypeRule!33 () Rule!11096)

(assert (=> b!3613195 (= lt!1245018 (lemmaNonSepRuleNotContainsCharContainedInASepRule!354 thiss!23823 rules!3307 rules!3307 (rule!8402 (_1!22098 lt!1245032)) anOtherTypeRule!33 lt!1245023))))

(declare-fun Unit!54331 () Unit!54326)

(assert (=> b!3613195 (= e!2236257 Unit!54331)))

(declare-fun b!3613196 () Bool)

(declare-fun Unit!54332 () Unit!54326)

(assert (=> b!3613196 (= e!2236268 Unit!54332)))

(declare-fun b!3613198 () Bool)

(declare-fun e!2236254 () Bool)

(declare-fun e!2236247 () Bool)

(assert (=> b!3613198 (= e!2236254 e!2236247)))

(declare-fun res!1461735 () Bool)

(assert (=> b!3613198 (=> res!1461735 e!2236247)))

(declare-fun lt!1245005 () List!38162)

(assert (=> b!3613198 (= res!1461735 (contains!7359 lt!1245005 lt!1245023))))

(declare-fun head!7610 (List!38162) C!21000)

(assert (=> b!3613198 (= lt!1245023 (head!7610 suffix!1395))))

(declare-fun usedCharacters!862 (Regex!10407) List!38162)

(assert (=> b!3613198 (= lt!1245005 (usedCharacters!862 (regex!5648 rule!403)))))

(declare-fun e!2236272 () Bool)

(declare-fun e!2236261 () Bool)

(declare-fun tp!1104318 () Bool)

(declare-fun b!3613199 () Bool)

(declare-fun inv!51414 (String!42724) Bool)

(declare-fun inv!51417 (TokenValueInjection!11184) Bool)

(assert (=> b!3613199 (= e!2236272 (and tp!1104318 (inv!51414 (tag!6358 rule!403)) (inv!51417 (transformation!5648 rule!403)) e!2236261))))

(declare-fun b!3613200 () Bool)

(declare-fun e!2236246 () Unit!54326)

(assert (=> b!3613200 (= e!2236246 e!2236248)))

(declare-fun c!625105 () Bool)

(assert (=> b!3613200 (= c!625105 (not (isSeparator!5648 (rule!8402 (_1!22098 lt!1245032)))))))

(declare-fun b!3613201 () Bool)

(declare-fun e!2236264 () Bool)

(declare-fun tp_is_empty!17897 () Bool)

(declare-fun tp!1104314 () Bool)

(assert (=> b!3613201 (= e!2236264 (and tp_is_empty!17897 tp!1104314))))

(declare-fun b!3613202 () Bool)

(declare-fun e!2236250 () Bool)

(assert (=> b!3613202 (= e!2236250 e!2236270)))

(declare-fun res!1461744 () Bool)

(assert (=> b!3613202 (=> res!1461744 e!2236270)))

(assert (=> b!3613202 (= res!1461744 (= (rule!8402 (_1!22098 lt!1245032)) (rule!8402 token!511)))))

(assert (=> b!3613202 (= lt!1244997 lt!1245013)))

(declare-fun lt!1245034 () Unit!54326)

(declare-fun lemmaIsPrefixSameLengthThenSameList!585 (List!38162 List!38162 List!38162) Unit!54326)

(assert (=> b!3613202 (= lt!1245034 (lemmaIsPrefixSameLengthThenSameList!585 lt!1244997 lt!1245013 lt!1244989))))

(declare-fun lt!1245014 () Unit!54326)

(declare-fun e!2236265 () Unit!54326)

(assert (=> b!3613202 (= lt!1245014 e!2236265)))

(declare-fun c!625104 () Bool)

(declare-fun lt!1245012 () Int)

(declare-fun lt!1245019 () Int)

(assert (=> b!3613202 (= c!625104 (< lt!1245012 lt!1245019))))

(declare-fun lt!1244992 () Unit!54326)

(assert (=> b!3613202 (= lt!1244992 e!2236268)))

(declare-fun c!625106 () Bool)

(assert (=> b!3613202 (= c!625106 (> lt!1245012 lt!1245019))))

(declare-fun lt!1245020 () BalanceConc!22800)

(declare-fun size!29006 (BalanceConc!22800) Int)

(assert (=> b!3613202 (= lt!1245019 (size!29006 lt!1245020))))

(declare-fun lt!1245033 () Unit!54326)

(assert (=> b!3613202 (= lt!1245033 e!2236246)))

(declare-fun c!625101 () Bool)

(assert (=> b!3613202 (= c!625101 (isSeparator!5648 rule!403))))

(declare-fun lt!1245006 () Unit!54326)

(declare-fun e!2236253 () Unit!54326)

(assert (=> b!3613202 (= lt!1245006 e!2236253)))

(declare-fun c!625103 () Bool)

(assert (=> b!3613202 (= c!625103 (not (contains!7359 lt!1245005 lt!1244994)))))

(assert (=> b!3613202 (= lt!1244994 (head!7610 lt!1244997))))

(declare-fun b!3613203 () Bool)

(declare-fun res!1461745 () Bool)

(assert (=> b!3613203 (=> (not res!1461745) (not e!2236276))))

(declare-fun contains!7360 (List!38163 Rule!11096) Bool)

(assert (=> b!3613203 (= res!1461745 (contains!7360 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2236271 () Bool)

(assert (=> b!3613204 (= e!2236271 (and tp!1104322 tp!1104308))))

(declare-fun bm!261254 () Bool)

(declare-fun call!261263 () List!38162)

(assert (=> bm!261254 (= call!261262 (contains!7359 call!261263 lt!1245023))))

(declare-fun e!2236266 () Bool)

(assert (=> b!3613205 (= e!2236266 (and tp!1104312 tp!1104309))))

(declare-fun b!3613206 () Bool)

(declare-fun res!1461727 () Bool)

(assert (=> b!3613206 (=> (not res!1461727) (not e!2236276))))

(assert (=> b!3613206 (= res!1461727 (not (= (isSeparator!5648 anOtherTypeRule!33) (isSeparator!5648 rule!403))))))

(declare-fun b!3613207 () Bool)

(declare-fun Unit!54333 () Unit!54326)

(assert (=> b!3613207 (= e!2236253 Unit!54333)))

(declare-fun b!3613208 () Bool)

(assert (=> b!3613208 (= e!2236243 (not e!2236254))))

(declare-fun res!1461728 () Bool)

(assert (=> b!3613208 (=> res!1461728 e!2236254)))

(declare-fun matchR!4976 (Regex!10407 List!38162) Bool)

(assert (=> b!3613208 (= res!1461728 (not (matchR!4976 (regex!5648 rule!403) lt!1245013)))))

(declare-fun ruleValid!1913 (LexerInterface!5237 Rule!11096) Bool)

(assert (=> b!3613208 (ruleValid!1913 thiss!23823 rule!403)))

(declare-fun lt!1245002 () Unit!54326)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1068 (LexerInterface!5237 Rule!11096 List!38163) Unit!54326)

(assert (=> b!3613208 (= lt!1245002 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1068 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3613209 () Bool)

(declare-fun e!2236260 () Bool)

(declare-fun tp!1104320 () Bool)

(assert (=> b!3613209 (= e!2236260 (and tp!1104320 (inv!51414 (tag!6358 anOtherTypeRule!33)) (inv!51417 (transformation!5648 anOtherTypeRule!33)) e!2236271))))

(declare-fun b!3613210 () Bool)

(declare-fun e!2236274 () Bool)

(assert (=> b!3613210 (= e!2236274 e!2236250)))

(declare-fun res!1461736 () Bool)

(assert (=> b!3613210 (=> res!1461736 e!2236250)))

(declare-fun lt!1244988 () List!38162)

(declare-fun lt!1245030 () Option!7926)

(assert (=> b!3613210 (= res!1461736 (or (not (= lt!1244988 (_2!22098 lt!1245032))) (not (= lt!1245030 (Some!7925 (tuple2!37929 (_1!22098 lt!1245032) lt!1244988))))))))

(assert (=> b!3613210 (= (_2!22098 lt!1245032) lt!1244988)))

(declare-fun lt!1245026 () Unit!54326)

(declare-fun lemmaSamePrefixThenSameSuffix!1366 (List!38162 List!38162 List!38162 List!38162 List!38162) Unit!54326)

(assert (=> b!3613210 (= lt!1245026 (lemmaSamePrefixThenSameSuffix!1366 lt!1244997 (_2!22098 lt!1245032) lt!1244997 lt!1244988 lt!1244989))))

(declare-fun getSuffix!1586 (List!38162 List!38162) List!38162)

(assert (=> b!3613210 (= lt!1244988 (getSuffix!1586 lt!1244989 lt!1244997))))

(declare-fun lt!1245011 () Int)

(declare-fun lt!1244995 () TokenValue!5878)

(assert (=> b!3613210 (= lt!1245030 (Some!7925 (tuple2!37929 (Token!10663 lt!1244995 (rule!8402 (_1!22098 lt!1245032)) lt!1245011 lt!1244997) (_2!22098 lt!1245032))))))

(declare-fun maxPrefixOneRule!1915 (LexerInterface!5237 Rule!11096 List!38162) Option!7926)

(assert (=> b!3613210 (= lt!1245030 (maxPrefixOneRule!1915 thiss!23823 (rule!8402 (_1!22098 lt!1245032)) lt!1244989))))

(declare-fun size!29007 (List!38162) Int)

(assert (=> b!3613210 (= lt!1245011 (size!29007 lt!1244997))))

(declare-fun apply!9154 (TokenValueInjection!11184 BalanceConc!22800) TokenValue!5878)

(declare-fun seqFromList!4201 (List!38162) BalanceConc!22800)

(assert (=> b!3613210 (= lt!1244995 (apply!9154 (transformation!5648 (rule!8402 (_1!22098 lt!1245032))) (seqFromList!4201 lt!1244997)))))

(declare-fun lt!1245036 () Unit!54326)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!987 (LexerInterface!5237 List!38163 List!38162 List!38162 List!38162 Rule!11096) Unit!54326)

(assert (=> b!3613210 (= lt!1245036 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!987 thiss!23823 rules!3307 lt!1244997 lt!1244989 (_2!22098 lt!1245032) (rule!8402 (_1!22098 lt!1245032))))))

(declare-fun e!2236259 () Bool)

(assert (=> b!3613211 (= e!2236259 (and tp!1104315 tp!1104310))))

(declare-fun b!3613212 () Bool)

(declare-fun e!2236256 () Bool)

(declare-fun e!2236267 () Bool)

(declare-fun tp!1104319 () Bool)

(assert (=> b!3613212 (= e!2236256 (and e!2236267 tp!1104319))))

(declare-fun b!3613213 () Bool)

(declare-fun res!1461743 () Bool)

(assert (=> b!3613213 (=> (not res!1461743) (not e!2236243))))

(declare-fun isEmpty!22466 (List!38162) Bool)

(assert (=> b!3613213 (= res!1461743 (isEmpty!22466 (_2!22098 lt!1245035)))))

(declare-fun b!3613214 () Bool)

(declare-fun Unit!54334 () Unit!54326)

(assert (=> b!3613214 (= e!2236265 Unit!54334)))

(declare-fun lt!1245015 () Unit!54326)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!296 (LexerInterface!5237 List!38163 Rule!11096 List!38162 List!38162 List!38162 Rule!11096) Unit!54326)

(assert (=> b!3613214 (= lt!1245015 (lemmaMaxPrefixOutputsMaxPrefix!296 thiss!23823 rules!3307 (rule!8402 (_1!22098 lt!1245032)) lt!1244997 lt!1244989 lt!1245013 rule!403))))

(assert (=> b!3613214 false))

(declare-fun b!3613215 () Bool)

(declare-fun e!2236249 () Bool)

(declare-fun e!2236251 () Bool)

(assert (=> b!3613215 (= e!2236249 e!2236251)))

(declare-fun res!1461741 () Bool)

(assert (=> b!3613215 (=> (not res!1461741) (not e!2236251))))

(declare-fun lt!1245024 () Rule!11096)

(declare-fun list!14032 (BalanceConc!22800) List!38162)

(declare-fun charsOf!3662 (Token!10662) BalanceConc!22800)

(assert (=> b!3613215 (= res!1461741 (matchR!4976 (regex!5648 lt!1245024) (list!14032 (charsOf!3662 (_1!22098 lt!1245032)))))))

(declare-datatypes ((Option!7927 0))(
  ( (None!7926) (Some!7926 (v!37676 Rule!11096)) )
))
(declare-fun lt!1245027 () Option!7927)

(declare-fun get!12361 (Option!7927) Rule!11096)

(assert (=> b!3613215 (= lt!1245024 (get!12361 lt!1245027))))

(declare-fun b!3613216 () Bool)

(declare-fun Unit!54335 () Unit!54326)

(assert (=> b!3613216 (= e!2236253 Unit!54335)))

(declare-fun lt!1245010 () Unit!54326)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!632 (Regex!10407 List!38162 C!21000) Unit!54326)

(assert (=> b!3613216 (= lt!1245010 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!632 (regex!5648 rule!403) lt!1245013 lt!1244994))))

(assert (=> b!3613216 false))

(declare-fun b!3613217 () Bool)

(assert (=> b!3613217 (= e!2236251 (= (rule!8402 (_1!22098 lt!1245032)) lt!1245024))))

(declare-fun b!3613218 () Bool)

(declare-fun Unit!54336 () Unit!54326)

(assert (=> b!3613218 (= e!2236248 Unit!54336)))

(declare-fun bm!261255 () Bool)

(assert (=> bm!261255 (= call!261259 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!632 (regex!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244997 lt!1244994))))

(declare-fun b!3613219 () Bool)

(declare-fun e!2236263 () Bool)

(declare-fun e!2236244 () Bool)

(declare-fun tp!1104321 () Bool)

(declare-fun inv!21 (TokenValue!5878) Bool)

(assert (=> b!3613219 (= e!2236244 (and (inv!21 (value!181428 token!511)) e!2236263 tp!1104321))))

(declare-fun b!3613220 () Bool)

(assert (=> b!3613220 false))

(declare-fun lt!1244999 () Unit!54326)

(assert (=> b!3613220 (= lt!1244999 call!261261)))

(assert (=> b!3613220 (not call!261262)))

(declare-fun lt!1245016 () Unit!54326)

(assert (=> b!3613220 (= lt!1245016 (lemmaSepRuleNotContainsCharContainedInANonSepRule!236 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8402 (_1!22098 lt!1245032)) lt!1245023))))

(declare-fun Unit!54337 () Unit!54326)

(assert (=> b!3613220 (= e!2236257 Unit!54337)))

(declare-fun b!3613221 () Bool)

(assert (=> b!3613221 (= e!2236276 e!2236275)))

(declare-fun res!1461748 () Bool)

(assert (=> b!3613221 (=> (not res!1461748) (not e!2236275))))

(declare-fun isDefined!6158 (Option!7926) Bool)

(assert (=> b!3613221 (= res!1461748 (isDefined!6158 lt!1245031))))

(declare-fun maxPrefix!2771 (LexerInterface!5237 List!38163 List!38162) Option!7926)

(assert (=> b!3613221 (= lt!1245031 (maxPrefix!2771 thiss!23823 rules!3307 lt!1245013))))

(assert (=> b!3613221 (= lt!1245013 (list!14032 lt!1245020))))

(assert (=> b!3613221 (= lt!1245020 (charsOf!3662 token!511))))

(declare-fun b!3613222 () Bool)

(declare-fun res!1461737 () Bool)

(assert (=> b!3613222 (=> (not res!1461737) (not e!2236276))))

(assert (=> b!3613222 (= res!1461737 (contains!7360 rules!3307 rule!403))))

(declare-fun b!3613223 () Bool)

(declare-fun e!2236273 () Bool)

(assert (=> b!3613223 (= e!2236273 e!2236274)))

(declare-fun res!1461731 () Bool)

(assert (=> b!3613223 (=> res!1461731 e!2236274)))

(declare-fun lt!1245017 () Option!7926)

(declare-fun lt!1244996 () TokenValue!5878)

(assert (=> b!3613223 (= res!1461731 (not (= lt!1245017 (Some!7925 (tuple2!37929 (Token!10663 lt!1244996 (rule!8402 (_1!22098 lt!1245032)) lt!1245012 lt!1244997) (_2!22098 lt!1245032))))))))

(declare-fun lt!1244993 () BalanceConc!22800)

(assert (=> b!3613223 (= lt!1245012 (size!29006 lt!1244993))))

(assert (=> b!3613223 (= lt!1244996 (apply!9154 (transformation!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244993))))

(declare-fun lt!1245001 () Unit!54326)

(declare-fun lemmaCharactersSize!701 (Token!10662) Unit!54326)

(assert (=> b!3613223 (= lt!1245001 (lemmaCharactersSize!701 (_1!22098 lt!1245032)))))

(declare-fun lt!1245029 () Unit!54326)

(declare-fun lemmaEqSameImage!839 (TokenValueInjection!11184 BalanceConc!22800 BalanceConc!22800) Unit!54326)

(assert (=> b!3613223 (= lt!1245029 (lemmaEqSameImage!839 (transformation!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244993 (seqFromList!4201 (originalCharacters!6362 (_1!22098 lt!1245032)))))))

(declare-fun lt!1245022 () Unit!54326)

(declare-fun lemmaSemiInverse!1405 (TokenValueInjection!11184 BalanceConc!22800) Unit!54326)

(assert (=> b!3613223 (= lt!1245022 (lemmaSemiInverse!1405 (transformation!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244993))))

(declare-fun b!3613224 () Bool)

(declare-fun Unit!54338 () Unit!54326)

(assert (=> b!3613224 (= e!2236265 Unit!54338)))

(declare-fun b!3613225 () Bool)

(declare-fun Unit!54339 () Unit!54326)

(assert (=> b!3613225 (= e!2236258 Unit!54339)))

(declare-fun b!3613226 () Bool)

(declare-fun res!1461738 () Bool)

(assert (=> b!3613226 (=> res!1461738 e!2236254)))

(assert (=> b!3613226 (= res!1461738 (isEmpty!22466 suffix!1395))))

(declare-fun b!3613227 () Bool)

(declare-fun tp!1104313 () Bool)

(assert (=> b!3613227 (= e!2236263 (and tp!1104313 (inv!51414 (tag!6358 (rule!8402 token!511))) (inv!51417 (transformation!5648 (rule!8402 token!511))) e!2236259))))

(declare-fun b!3613228 () Bool)

(declare-fun res!1461739 () Bool)

(assert (=> b!3613228 (=> res!1461739 e!2236247)))

(assert (=> b!3613228 (= res!1461739 (not (contains!7359 (usedCharacters!862 (regex!5648 anOtherTypeRule!33)) lt!1245023)))))

(declare-fun b!3613229 () Bool)

(declare-fun res!1461742 () Bool)

(assert (=> b!3613229 (=> res!1461742 e!2236273)))

(assert (=> b!3613229 (= res!1461742 (not (matchR!4976 (regex!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244997)))))

(assert (=> b!3613230 (= e!2236261 (and tp!1104317 tp!1104311))))

(declare-fun b!3613231 () Bool)

(declare-fun res!1461749 () Bool)

(assert (=> b!3613231 (=> res!1461749 e!2236247)))

(declare-fun sepAndNonSepRulesDisjointChars!1818 (List!38163 List!38163) Bool)

(assert (=> b!3613231 (= res!1461749 (not (sepAndNonSepRulesDisjointChars!1818 rules!3307 rules!3307)))))

(declare-fun b!3613232 () Bool)

(declare-fun res!1461746 () Bool)

(assert (=> b!3613232 (=> (not res!1461746) (not e!2236243))))

(assert (=> b!3613232 (= res!1461746 (= (rule!8402 token!511) rule!403))))

(declare-fun tp!1104316 () Bool)

(declare-fun b!3613233 () Bool)

(assert (=> b!3613233 (= e!2236267 (and tp!1104316 (inv!51414 (tag!6358 (h!43459 rules!3307))) (inv!51417 (transformation!5648 (h!43459 rules!3307))) e!2236266))))

(declare-fun b!3613234 () Bool)

(assert (=> b!3613234 (= e!2236270 true)))

(declare-fun lt!1245021 () Int)

(assert (=> b!3613234 (= lt!1245021 (size!29007 lt!1245013))))

(assert (=> b!3613234 (isEmpty!22466 (getSuffix!1586 lt!1245013 lt!1245013))))

(declare-fun lt!1244998 () Unit!54326)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!142 (List!38162) Unit!54326)

(assert (=> b!3613234 (= lt!1244998 (lemmaGetSuffixOnListWithItSelfIsEmpty!142 lt!1245013))))

(declare-fun bm!261256 () Bool)

(declare-fun call!261264 () List!38162)

(assert (=> bm!261256 (= call!261260 (contains!7359 call!261264 lt!1244994))))

(declare-fun bm!261257 () Bool)

(assert (=> bm!261257 (= call!261261 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!632 (regex!5648 (rule!8402 (_1!22098 lt!1245032))) lt!1244997 lt!1245023))))

(declare-fun b!3613235 () Bool)

(assert (=> b!3613235 (= e!2236247 e!2236273)))

(declare-fun res!1461734 () Bool)

(assert (=> b!3613235 (=> res!1461734 e!2236273)))

(declare-fun isPrefix!3011 (List!38162 List!38162) Bool)

(assert (=> b!3613235 (= res!1461734 (not (isPrefix!3011 lt!1244997 lt!1244989)))))

(declare-fun ++!9464 (List!38162 List!38162) List!38162)

(assert (=> b!3613235 (isPrefix!3011 lt!1244997 (++!9464 lt!1244997 (_2!22098 lt!1245032)))))

(declare-fun lt!1245007 () Unit!54326)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1932 (List!38162 List!38162) Unit!54326)

(assert (=> b!3613235 (= lt!1245007 (lemmaConcatTwoListThenFirstIsPrefix!1932 lt!1244997 (_2!22098 lt!1245032)))))

(assert (=> b!3613235 (= lt!1244997 (list!14032 lt!1244993))))

(assert (=> b!3613235 (= lt!1244993 (charsOf!3662 (_1!22098 lt!1245032)))))

(assert (=> b!3613235 e!2236249))

(declare-fun res!1461732 () Bool)

(assert (=> b!3613235 (=> (not res!1461732) (not e!2236249))))

(declare-fun isDefined!6159 (Option!7927) Bool)

(assert (=> b!3613235 (= res!1461732 (isDefined!6159 lt!1245027))))

(declare-fun getRuleFromTag!1254 (LexerInterface!5237 List!38163 String!42724) Option!7927)

(assert (=> b!3613235 (= lt!1245027 (getRuleFromTag!1254 thiss!23823 rules!3307 (tag!6358 (rule!8402 (_1!22098 lt!1245032)))))))

(declare-fun lt!1245025 () Unit!54326)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1254 (LexerInterface!5237 List!38163 List!38162 Token!10662) Unit!54326)

(assert (=> b!3613235 (= lt!1245025 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1254 thiss!23823 rules!3307 lt!1244989 (_1!22098 lt!1245032)))))

(assert (=> b!3613235 (= lt!1245032 (get!12360 lt!1245017))))

(declare-fun lt!1245028 () Unit!54326)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!917 (LexerInterface!5237 List!38163 List!38162 List!38162) Unit!54326)

(assert (=> b!3613235 (= lt!1245028 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!917 thiss!23823 rules!3307 lt!1245013 suffix!1395))))

(assert (=> b!3613235 (= lt!1245017 (maxPrefix!2771 thiss!23823 rules!3307 lt!1244989))))

(assert (=> b!3613235 (isPrefix!3011 lt!1245013 lt!1244989)))

(declare-fun lt!1244990 () Unit!54326)

(assert (=> b!3613235 (= lt!1244990 (lemmaConcatTwoListThenFirstIsPrefix!1932 lt!1245013 suffix!1395))))

(assert (=> b!3613235 (= lt!1244989 (++!9464 lt!1245013 suffix!1395))))

(declare-fun bm!261258 () Bool)

(assert (=> bm!261258 (= call!261263 (usedCharacters!862 (regex!5648 (rule!8402 (_1!22098 lt!1245032)))))))

(declare-fun b!3613197 () Bool)

(assert (=> b!3613197 (= e!2236246 e!2236258)))

(declare-fun c!625107 () Bool)

(assert (=> b!3613197 (= c!625107 (isSeparator!5648 (rule!8402 (_1!22098 lt!1245032))))))

(declare-fun res!1461729 () Bool)

(assert (=> start!336434 (=> (not res!1461729) (not e!2236276))))

(get-info :version)

(assert (=> start!336434 (= res!1461729 ((_ is Lexer!5235) thiss!23823))))

(assert (=> start!336434 e!2236276))

(assert (=> start!336434 e!2236256))

(assert (=> start!336434 e!2236264))

(assert (=> start!336434 true))

(declare-fun inv!51418 (Token!10662) Bool)

(assert (=> start!336434 (and (inv!51418 token!511) e!2236244)))

(assert (=> start!336434 e!2236272))

(assert (=> start!336434 e!2236260))

(declare-fun bm!261259 () Bool)

(assert (=> bm!261259 (= call!261264 (usedCharacters!862 (regex!5648 (rule!8402 (_1!22098 lt!1245032)))))))

(declare-fun b!3613236 () Bool)

(declare-fun res!1461740 () Bool)

(assert (=> b!3613236 (=> (not res!1461740) (not e!2236276))))

(declare-fun isEmpty!22467 (List!38163) Bool)

(assert (=> b!3613236 (= res!1461740 (not (isEmpty!22467 rules!3307)))))

(assert (= (and start!336434 res!1461729) b!3613236))

(assert (= (and b!3613236 res!1461740) b!3613192))

(assert (= (and b!3613192 res!1461733) b!3613222))

(assert (= (and b!3613222 res!1461737) b!3613203))

(assert (= (and b!3613203 res!1461745) b!3613206))

(assert (= (and b!3613206 res!1461727) b!3613221))

(assert (= (and b!3613221 res!1461748) b!3613193))

(assert (= (and b!3613193 res!1461747) b!3613213))

(assert (= (and b!3613213 res!1461743) b!3613232))

(assert (= (and b!3613232 res!1461746) b!3613208))

(assert (= (and b!3613208 (not res!1461728)) b!3613226))

(assert (= (and b!3613226 (not res!1461738)) b!3613198))

(assert (= (and b!3613198 (not res!1461735)) b!3613228))

(assert (= (and b!3613228 (not res!1461739)) b!3613231))

(assert (= (and b!3613231 (not res!1461749)) b!3613235))

(assert (= (and b!3613235 res!1461732) b!3613215))

(assert (= (and b!3613215 res!1461741) b!3613217))

(assert (= (and b!3613235 (not res!1461734)) b!3613229))

(assert (= (and b!3613229 (not res!1461742)) b!3613223))

(assert (= (and b!3613223 (not res!1461731)) b!3613210))

(assert (= (and b!3613210 (not res!1461736)) b!3613202))

(assert (= (and b!3613202 c!625103) b!3613216))

(assert (= (and b!3613202 (not c!625103)) b!3613207))

(assert (= (and b!3613202 c!625101) b!3613200))

(assert (= (and b!3613202 (not c!625101)) b!3613197))

(assert (= (and b!3613200 c!625105) b!3613191))

(assert (= (and b!3613200 (not c!625105)) b!3613218))

(assert (= (and b!3613197 c!625107) b!3613189))

(assert (= (and b!3613197 (not c!625107)) b!3613225))

(assert (= (or b!3613191 b!3613189) bm!261255))

(assert (= (or b!3613191 b!3613189) bm!261259))

(assert (= (or b!3613191 b!3613189) bm!261256))

(assert (= (and b!3613202 c!625106) b!3613190))

(assert (= (and b!3613202 (not c!625106)) b!3613196))

(assert (= (and b!3613190 c!625102) b!3613220))

(assert (= (and b!3613190 (not c!625102)) b!3613195))

(assert (= (or b!3613220 b!3613195) bm!261257))

(assert (= (or b!3613220 b!3613195) bm!261258))

(assert (= (or b!3613220 b!3613195) bm!261254))

(assert (= (and b!3613202 c!625104) b!3613214))

(assert (= (and b!3613202 (not c!625104)) b!3613224))

(assert (= (and b!3613202 (not res!1461744)) b!3613194))

(assert (= (and b!3613194 (not res!1461730)) b!3613234))

(assert (= b!3613233 b!3613205))

(assert (= b!3613212 b!3613233))

(assert (= (and start!336434 ((_ is Cons!38039) rules!3307)) b!3613212))

(assert (= (and start!336434 ((_ is Cons!38038) suffix!1395)) b!3613201))

(assert (= b!3613227 b!3613211))

(assert (= b!3613219 b!3613227))

(assert (= start!336434 b!3613219))

(assert (= b!3613199 b!3613230))

(assert (= start!336434 b!3613199))

(assert (= b!3613209 b!3613204))

(assert (= start!336434 b!3613209))

(declare-fun m!4111303 () Bool)

(assert (=> b!3613222 m!4111303))

(declare-fun m!4111305 () Bool)

(assert (=> b!3613192 m!4111305))

(declare-fun m!4111307 () Bool)

(assert (=> b!3613219 m!4111307))

(declare-fun m!4111309 () Bool)

(assert (=> bm!261258 m!4111309))

(declare-fun m!4111311 () Bool)

(assert (=> start!336434 m!4111311))

(declare-fun m!4111313 () Bool)

(assert (=> bm!261257 m!4111313))

(declare-fun m!4111315 () Bool)

(assert (=> b!3613208 m!4111315))

(declare-fun m!4111317 () Bool)

(assert (=> b!3613208 m!4111317))

(declare-fun m!4111319 () Bool)

(assert (=> b!3613208 m!4111319))

(declare-fun m!4111321 () Bool)

(assert (=> bm!261255 m!4111321))

(declare-fun m!4111323 () Bool)

(assert (=> b!3613229 m!4111323))

(declare-fun m!4111325 () Bool)

(assert (=> b!3613203 m!4111325))

(assert (=> bm!261259 m!4111309))

(declare-fun m!4111327 () Bool)

(assert (=> b!3613220 m!4111327))

(declare-fun m!4111329 () Bool)

(assert (=> b!3613202 m!4111329))

(declare-fun m!4111331 () Bool)

(assert (=> b!3613202 m!4111331))

(declare-fun m!4111333 () Bool)

(assert (=> b!3613202 m!4111333))

(declare-fun m!4111335 () Bool)

(assert (=> b!3613202 m!4111335))

(declare-fun m!4111337 () Bool)

(assert (=> b!3613233 m!4111337))

(declare-fun m!4111339 () Bool)

(assert (=> b!3613233 m!4111339))

(declare-fun m!4111341 () Bool)

(assert (=> b!3613214 m!4111341))

(declare-fun m!4111343 () Bool)

(assert (=> b!3613226 m!4111343))

(declare-fun m!4111345 () Bool)

(assert (=> b!3613215 m!4111345))

(assert (=> b!3613215 m!4111345))

(declare-fun m!4111347 () Bool)

(assert (=> b!3613215 m!4111347))

(assert (=> b!3613215 m!4111347))

(declare-fun m!4111349 () Bool)

(assert (=> b!3613215 m!4111349))

(declare-fun m!4111351 () Bool)

(assert (=> b!3613215 m!4111351))

(declare-fun m!4111353 () Bool)

(assert (=> b!3613234 m!4111353))

(declare-fun m!4111355 () Bool)

(assert (=> b!3613234 m!4111355))

(assert (=> b!3613234 m!4111355))

(declare-fun m!4111357 () Bool)

(assert (=> b!3613234 m!4111357))

(declare-fun m!4111359 () Bool)

(assert (=> b!3613234 m!4111359))

(declare-fun m!4111361 () Bool)

(assert (=> b!3613227 m!4111361))

(declare-fun m!4111363 () Bool)

(assert (=> b!3613227 m!4111363))

(declare-fun m!4111365 () Bool)

(assert (=> b!3613189 m!4111365))

(declare-fun m!4111367 () Bool)

(assert (=> b!3613198 m!4111367))

(declare-fun m!4111369 () Bool)

(assert (=> b!3613198 m!4111369))

(declare-fun m!4111371 () Bool)

(assert (=> b!3613198 m!4111371))

(declare-fun m!4111373 () Bool)

(assert (=> b!3613231 m!4111373))

(declare-fun m!4111375 () Bool)

(assert (=> b!3613236 m!4111375))

(declare-fun m!4111377 () Bool)

(assert (=> b!3613221 m!4111377))

(declare-fun m!4111379 () Bool)

(assert (=> b!3613221 m!4111379))

(declare-fun m!4111381 () Bool)

(assert (=> b!3613221 m!4111381))

(declare-fun m!4111383 () Bool)

(assert (=> b!3613221 m!4111383))

(declare-fun m!4111385 () Bool)

(assert (=> b!3613228 m!4111385))

(assert (=> b!3613228 m!4111385))

(declare-fun m!4111387 () Bool)

(assert (=> b!3613228 m!4111387))

(declare-fun m!4111389 () Bool)

(assert (=> b!3613190 m!4111389))

(declare-fun m!4111391 () Bool)

(assert (=> b!3613190 m!4111391))

(declare-fun m!4111393 () Bool)

(assert (=> b!3613216 m!4111393))

(declare-fun m!4111395 () Bool)

(assert (=> b!3613209 m!4111395))

(declare-fun m!4111397 () Bool)

(assert (=> b!3613209 m!4111397))

(declare-fun m!4111399 () Bool)

(assert (=> b!3613223 m!4111399))

(declare-fun m!4111401 () Bool)

(assert (=> b!3613223 m!4111401))

(declare-fun m!4111403 () Bool)

(assert (=> b!3613223 m!4111403))

(declare-fun m!4111405 () Bool)

(assert (=> b!3613223 m!4111405))

(declare-fun m!4111407 () Bool)

(assert (=> b!3613223 m!4111407))

(assert (=> b!3613223 m!4111405))

(declare-fun m!4111409 () Bool)

(assert (=> b!3613223 m!4111409))

(declare-fun m!4111411 () Bool)

(assert (=> b!3613193 m!4111411))

(declare-fun m!4111413 () Bool)

(assert (=> b!3613235 m!4111413))

(declare-fun m!4111415 () Bool)

(assert (=> b!3613235 m!4111415))

(declare-fun m!4111417 () Bool)

(assert (=> b!3613235 m!4111417))

(declare-fun m!4111419 () Bool)

(assert (=> b!3613235 m!4111419))

(declare-fun m!4111421 () Bool)

(assert (=> b!3613235 m!4111421))

(declare-fun m!4111423 () Bool)

(assert (=> b!3613235 m!4111423))

(declare-fun m!4111425 () Bool)

(assert (=> b!3613235 m!4111425))

(assert (=> b!3613235 m!4111345))

(assert (=> b!3613235 m!4111415))

(declare-fun m!4111427 () Bool)

(assert (=> b!3613235 m!4111427))

(declare-fun m!4111429 () Bool)

(assert (=> b!3613235 m!4111429))

(declare-fun m!4111431 () Bool)

(assert (=> b!3613235 m!4111431))

(declare-fun m!4111433 () Bool)

(assert (=> b!3613235 m!4111433))

(declare-fun m!4111435 () Bool)

(assert (=> b!3613235 m!4111435))

(declare-fun m!4111437 () Bool)

(assert (=> b!3613235 m!4111437))

(declare-fun m!4111439 () Bool)

(assert (=> b!3613235 m!4111439))

(declare-fun m!4111441 () Bool)

(assert (=> b!3613191 m!4111441))

(declare-fun m!4111443 () Bool)

(assert (=> bm!261254 m!4111443))

(declare-fun m!4111445 () Bool)

(assert (=> b!3613199 m!4111445))

(declare-fun m!4111447 () Bool)

(assert (=> b!3613199 m!4111447))

(declare-fun m!4111449 () Bool)

(assert (=> b!3613213 m!4111449))

(declare-fun m!4111451 () Bool)

(assert (=> b!3613210 m!4111451))

(declare-fun m!4111453 () Bool)

(assert (=> b!3613210 m!4111453))

(declare-fun m!4111455 () Bool)

(assert (=> b!3613210 m!4111455))

(assert (=> b!3613210 m!4111451))

(declare-fun m!4111457 () Bool)

(assert (=> b!3613210 m!4111457))

(declare-fun m!4111459 () Bool)

(assert (=> b!3613210 m!4111459))

(declare-fun m!4111461 () Bool)

(assert (=> b!3613210 m!4111461))

(declare-fun m!4111463 () Bool)

(assert (=> b!3613210 m!4111463))

(declare-fun m!4111465 () Bool)

(assert (=> bm!261256 m!4111465))

(declare-fun m!4111467 () Bool)

(assert (=> b!3613195 m!4111467))

(declare-fun m!4111469 () Bool)

(assert (=> b!3613194 m!4111469))

(declare-fun m!4111471 () Bool)

(assert (=> b!3613194 m!4111471))

(check-sat (not b!3613190) (not b!3613198) (not b_next!94629) (not b!3613203) b_and!263683 (not b!3613223) b_and!263685 (not b_next!94619) (not b!3613208) (not b!3613213) (not b!3613195) (not bm!261256) (not b!3613193) (not b!3613212) (not b!3613209) (not b!3613234) (not bm!261259) (not b!3613189) (not b!3613201) (not b!3613235) (not bm!261258) (not b_next!94625) (not b!3613228) b_and!263689 (not start!336434) (not b!3613236) (not b!3613191) (not b!3613219) (not b!3613214) (not b!3613215) b_and!263679 (not b!3613216) (not b!3613226) (not b!3613222) (not bm!261254) (not b!3613194) (not b!3613199) (not b!3613233) (not bm!261257) (not b_next!94627) (not b!3613227) (not b!3613210) (not b!3613192) b_and!263681 (not b_next!94617) (not b_next!94631) (not b!3613202) b_and!263675 (not b!3613231) b_and!263677 (not bm!261255) (not b_next!94623) (not b!3613220) (not b_next!94621) (not b!3613229) tp_is_empty!17897 (not b!3613221) b_and!263687)
(check-sat (not b_next!94629) (not b_next!94625) b_and!263689 b_and!263683 b_and!263679 (not b_next!94627) b_and!263677 (not b_next!94623) b_and!263685 (not b_next!94619) (not b_next!94621) b_and!263687 b_and!263681 (not b_next!94617) (not b_next!94631) b_and!263675)

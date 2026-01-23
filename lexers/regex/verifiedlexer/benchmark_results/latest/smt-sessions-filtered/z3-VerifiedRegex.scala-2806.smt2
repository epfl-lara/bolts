; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156322 () Bool)

(assert start!156322)

(declare-fun b!1637081 () Bool)

(declare-fun b_free!44263 () Bool)

(declare-fun b_next!44967 () Bool)

(assert (=> b!1637081 (= b_free!44263 (not b_next!44967))))

(declare-fun tp!474616 () Bool)

(declare-fun b_and!116029 () Bool)

(assert (=> b!1637081 (= tp!474616 b_and!116029)))

(declare-fun b_free!44265 () Bool)

(declare-fun b_next!44969 () Bool)

(assert (=> b!1637081 (= b_free!44265 (not b_next!44969))))

(declare-fun tp!474613 () Bool)

(declare-fun b_and!116031 () Bool)

(assert (=> b!1637081 (= tp!474613 b_and!116031)))

(declare-fun b!1637079 () Bool)

(declare-fun b_free!44267 () Bool)

(declare-fun b_next!44971 () Bool)

(assert (=> b!1637079 (= b_free!44267 (not b_next!44971))))

(declare-fun tp!474611 () Bool)

(declare-fun b_and!116033 () Bool)

(assert (=> b!1637079 (= tp!474611 b_and!116033)))

(declare-fun b_free!44269 () Bool)

(declare-fun b_next!44973 () Bool)

(assert (=> b!1637079 (= b_free!44269 (not b_next!44973))))

(declare-fun tp!474612 () Bool)

(declare-fun b_and!116035 () Bool)

(assert (=> b!1637079 (= tp!474612 b_and!116035)))

(declare-fun b!1637066 () Bool)

(declare-fun e!1049862 () Bool)

(declare-fun e!1049853 () Bool)

(assert (=> b!1637066 (= e!1049862 e!1049853)))

(declare-fun res!733182 () Bool)

(assert (=> b!1637066 (=> res!733182 e!1049853)))

(declare-datatypes ((C!9176 0))(
  ( (C!9177 (val!5184 Int)) )
))
(declare-datatypes ((List!18077 0))(
  ( (Nil!18007) (Cons!18007 (h!23408 C!9176) (t!149786 List!18077)) )
))
(declare-fun lt!599206 () List!18077)

(declare-datatypes ((Regex!4501 0))(
  ( (ElementMatch!4501 (c!266355 C!9176)) (Concat!7764 (regOne!9514 Regex!4501) (regTwo!9514 Regex!4501)) (EmptyExpr!4501) (Star!4501 (reg!4830 Regex!4501)) (EmptyLang!4501) (Union!4501 (regOne!9515 Regex!4501) (regTwo!9515 Regex!4501)) )
))
(declare-fun lt!599221 () Regex!4501)

(declare-datatypes ((List!18078 0))(
  ( (Nil!18008) (Cons!18008 (h!23409 (_ BitVec 16)) (t!149787 List!18078)) )
))
(declare-datatypes ((TokenValue!3263 0))(
  ( (FloatLiteralValue!6526 (text!23286 List!18078)) (TokenValueExt!3262 (__x!11828 Int)) (Broken!16315 (value!100077 List!18078)) (Object!3332) (End!3263) (Def!3263) (Underscore!3263) (Match!3263) (Else!3263) (Error!3263) (Case!3263) (If!3263) (Extends!3263) (Abstract!3263) (Class!3263) (Val!3263) (DelimiterValue!6526 (del!3323 List!18078)) (KeywordValue!3269 (value!100078 List!18078)) (CommentValue!6526 (value!100079 List!18078)) (WhitespaceValue!6526 (value!100080 List!18078)) (IndentationValue!3263 (value!100081 List!18078)) (String!20646) (Int32!3263) (Broken!16316 (value!100082 List!18078)) (Boolean!3264) (Unit!29499) (OperatorValue!3266 (op!3323 List!18078)) (IdentifierValue!6526 (value!100083 List!18078)) (IdentifierValue!6527 (value!100084 List!18078)) (WhitespaceValue!6527 (value!100085 List!18078)) (True!6526) (False!6526) (Broken!16317 (value!100086 List!18078)) (Broken!16318 (value!100087 List!18078)) (True!6527) (RightBrace!3263) (RightBracket!3263) (Colon!3263) (Null!3263) (Comma!3263) (LeftBracket!3263) (False!6527) (LeftBrace!3263) (ImaginaryLiteralValue!3263 (text!23287 List!18078)) (StringLiteralValue!9789 (value!100088 List!18078)) (EOFValue!3263 (value!100089 List!18078)) (IdentValue!3263 (value!100090 List!18078)) (DelimiterValue!6527 (value!100091 List!18078)) (DedentValue!3263 (value!100092 List!18078)) (NewLineValue!3263 (value!100093 List!18078)) (IntegerValue!9789 (value!100094 (_ BitVec 32)) (text!23288 List!18078)) (IntegerValue!9790 (value!100095 Int) (text!23289 List!18078)) (Times!3263) (Or!3263) (Equal!3263) (Minus!3263) (Broken!16319 (value!100096 List!18078)) (And!3263) (Div!3263) (LessEqual!3263) (Mod!3263) (Concat!7765) (Not!3263) (Plus!3263) (SpaceValue!3263 (value!100097 List!18078)) (IntegerValue!9791 (value!100098 Int) (text!23290 List!18078)) (StringLiteralValue!9790 (text!23291 List!18078)) (FloatLiteralValue!6527 (text!23292 List!18078)) (BytesLiteralValue!3263 (value!100099 List!18078)) (CommentValue!6527 (value!100100 List!18078)) (StringLiteralValue!9791 (value!100101 List!18078)) (ErrorTokenValue!3263 (msg!3324 List!18078)) )
))
(declare-datatypes ((IArray!11993 0))(
  ( (IArray!11994 (innerList!6054 List!18077)) )
))
(declare-datatypes ((Conc!5994 0))(
  ( (Node!5994 (left!14446 Conc!5994) (right!14776 Conc!5994) (csize!12218 Int) (cheight!6205 Int)) (Leaf!8801 (xs!8830 IArray!11993) (csize!12219 Int)) (Empty!5994) )
))
(declare-datatypes ((BalanceConc!11932 0))(
  ( (BalanceConc!11933 (c!266356 Conc!5994)) )
))
(declare-datatypes ((String!20647 0))(
  ( (String!20648 (value!100102 String)) )
))
(declare-datatypes ((TokenValueInjection!6186 0))(
  ( (TokenValueInjection!6187 (toValue!4604 Int) (toChars!4463 Int)) )
))
(declare-datatypes ((Rule!6146 0))(
  ( (Rule!6147 (regex!3173 Regex!4501) (tag!3453 String!20647) (isSeparator!3173 Bool) (transformation!3173 TokenValueInjection!6186)) )
))
(declare-datatypes ((Token!5912 0))(
  ( (Token!5913 (value!100103 TokenValue!3263) (rule!5017 Rule!6146) (size!14358 Int) (originalCharacters!3987 List!18077)) )
))
(declare-datatypes ((List!18079 0))(
  ( (Nil!18009) (Cons!18009 (h!23410 Token!5912) (t!149788 List!18079)) )
))
(declare-fun tokens!457 () List!18079)

(declare-fun prefixMatch!436 (Regex!4501 List!18077) Bool)

(declare-fun ++!4825 (List!18077 List!18077) List!18077)

(assert (=> b!1637066 (= res!733182 (prefixMatch!436 lt!599221 (++!4825 (originalCharacters!3987 (h!23410 tokens!457)) lt!599206)))))

(declare-fun e!1049855 () Bool)

(assert (=> b!1637066 e!1049855))

(declare-fun res!733178 () Bool)

(assert (=> b!1637066 (=> (not res!733178) (not e!1049855))))

(declare-datatypes ((tuple2!17634 0))(
  ( (tuple2!17635 (_1!10219 Token!5912) (_2!10219 List!18077)) )
))
(declare-fun lt!599214 () tuple2!17634)

(assert (=> b!1637066 (= res!733178 (= (_1!10219 lt!599214) (h!23410 tokens!457)))))

(declare-datatypes ((Option!3385 0))(
  ( (None!3384) (Some!3384 (v!24473 tuple2!17634)) )
))
(declare-fun lt!599199 () Option!3385)

(declare-fun get!5223 (Option!3385) tuple2!17634)

(assert (=> b!1637066 (= lt!599214 (get!5223 lt!599199))))

(declare-fun isDefined!2752 (Option!3385) Bool)

(assert (=> b!1637066 (isDefined!2752 lt!599199)))

(declare-datatypes ((List!18080 0))(
  ( (Nil!18010) (Cons!18010 (h!23411 Rule!6146) (t!149789 List!18080)) )
))
(declare-fun rules!1846 () List!18080)

(declare-datatypes ((LexerInterface!2802 0))(
  ( (LexerInterfaceExt!2799 (__x!11829 Int)) (Lexer!2800) )
))
(declare-fun thiss!17113 () LexerInterface!2802)

(declare-fun lt!599207 () List!18077)

(declare-fun maxPrefix!1366 (LexerInterface!2802 List!18080 List!18077) Option!3385)

(assert (=> b!1637066 (= lt!599199 (maxPrefix!1366 thiss!17113 rules!1846 lt!599207))))

(assert (=> b!1637066 (isDefined!2752 (maxPrefix!1366 thiss!17113 rules!1846 (originalCharacters!3987 (h!23410 tokens!457))))))

(declare-fun res!733179 () Bool)

(declare-fun e!1049868 () Bool)

(assert (=> start!156322 (=> (not res!733179) (not e!1049868))))

(get-info :version)

(assert (=> start!156322 (= res!733179 ((_ is Lexer!2800) thiss!17113))))

(assert (=> start!156322 e!1049868))

(assert (=> start!156322 true))

(declare-fun e!1049848 () Bool)

(assert (=> start!156322 e!1049848))

(declare-fun e!1049866 () Bool)

(assert (=> start!156322 e!1049866))

(declare-fun e!1049870 () Bool)

(declare-fun b!1637067 () Bool)

(declare-fun e!1049850 () Bool)

(declare-fun tp!474610 () Bool)

(declare-fun inv!23357 (String!20647) Bool)

(declare-fun inv!23360 (TokenValueInjection!6186) Bool)

(assert (=> b!1637067 (= e!1049850 (and tp!474610 (inv!23357 (tag!3453 (h!23411 rules!1846))) (inv!23360 (transformation!3173 (h!23411 rules!1846))) e!1049870))))

(declare-fun b!1637068 () Bool)

(declare-fun e!1049869 () Bool)

(declare-fun e!1049860 () Bool)

(assert (=> b!1637068 (= e!1049869 e!1049860)))

(declare-fun res!733181 () Bool)

(assert (=> b!1637068 (=> res!733181 e!1049860)))

(declare-datatypes ((tuple2!17636 0))(
  ( (tuple2!17637 (_1!10220 Token!5912) (_2!10220 BalanceConc!11932)) )
))
(declare-fun lt!599218 () tuple2!17636)

(assert (=> b!1637068 (= res!733181 (not (= (h!23410 tokens!457) (_1!10220 lt!599218))))))

(declare-fun lt!599198 () BalanceConc!11932)

(declare-datatypes ((Option!3386 0))(
  ( (None!3385) (Some!3385 (v!24474 tuple2!17636)) )
))
(declare-fun get!5224 (Option!3386) tuple2!17636)

(declare-fun maxPrefixZipperSequence!697 (LexerInterface!2802 List!18080 BalanceConc!11932) Option!3386)

(assert (=> b!1637068 (= lt!599218 (get!5224 (maxPrefixZipperSequence!697 thiss!17113 rules!1846 lt!599198)))))

(declare-fun b!1637069 () Bool)

(declare-fun matchR!2000 (Regex!4501 List!18077) Bool)

(assert (=> b!1637069 (= e!1049855 (matchR!2000 (regex!3173 (rule!5017 (h!23410 tokens!457))) lt!599207))))

(declare-fun b!1637070 () Bool)

(declare-fun e!1049857 () Bool)

(assert (=> b!1637070 (= e!1049857 e!1049862)))

(declare-fun res!733163 () Bool)

(assert (=> b!1637070 (=> res!733163 e!1049862)))

(declare-fun isDefined!2753 (Option!3386) Bool)

(declare-fun seqFromList!2095 (List!18077) BalanceConc!11932)

(assert (=> b!1637070 (= res!733163 (not (isDefined!2753 (maxPrefixZipperSequence!697 thiss!17113 rules!1846 (seqFromList!2095 (originalCharacters!3987 (h!23410 tokens!457)))))))))

(declare-fun lt!599215 () List!18077)

(assert (=> b!1637070 (= lt!599215 lt!599206)))

(declare-fun lt!599224 () BalanceConc!11932)

(declare-fun head!3534 (BalanceConc!11932) C!9176)

(assert (=> b!1637070 (= lt!599206 (Cons!18007 (head!3534 lt!599224) Nil!18007))))

(declare-fun e!1049856 () Bool)

(assert (=> b!1637070 e!1049856))

(declare-fun res!733160 () Bool)

(assert (=> b!1637070 (=> (not res!733160) (not e!1049856))))

(assert (=> b!1637070 (= res!733160 (= lt!599207 (originalCharacters!3987 (h!23410 tokens!457))))))

(declare-fun b!1637071 () Bool)

(declare-fun res!733180 () Bool)

(assert (=> b!1637071 (=> (not res!733180) (not e!1049868))))

(declare-fun isEmpty!11041 (List!18080) Bool)

(assert (=> b!1637071 (= res!733180 (not (isEmpty!11041 rules!1846)))))

(declare-fun b!1637072 () Bool)

(declare-fun res!733167 () Bool)

(declare-fun e!1049865 () Bool)

(assert (=> b!1637072 (=> res!733167 e!1049865)))

(declare-fun rulesProduceIndividualToken!1454 (LexerInterface!2802 List!18080 Token!5912) Bool)

(assert (=> b!1637072 (= res!733167 (not (rulesProduceIndividualToken!1454 thiss!17113 rules!1846 (h!23410 tokens!457))))))

(declare-fun b!1637073 () Bool)

(declare-fun e!1049864 () Bool)

(declare-fun e!1049861 () Bool)

(assert (=> b!1637073 (= e!1049864 e!1049861)))

(declare-fun res!733175 () Bool)

(assert (=> b!1637073 (=> res!733175 e!1049861)))

(declare-fun lt!599217 () BalanceConc!11932)

(declare-fun lt!599211 () BalanceConc!11932)

(declare-fun prefixMatchZipperSequence!577 (Regex!4501 BalanceConc!11932) Bool)

(declare-fun ++!4826 (BalanceConc!11932 BalanceConc!11932) BalanceConc!11932)

(assert (=> b!1637073 (= res!733175 (prefixMatchZipperSequence!577 lt!599221 (++!4826 lt!599217 lt!599211)))))

(declare-fun singletonSeq!1624 (C!9176) BalanceConc!11932)

(declare-fun apply!4668 (BalanceConc!11932 Int) C!9176)

(declare-fun charsOf!1822 (Token!5912) BalanceConc!11932)

(assert (=> b!1637073 (= lt!599211 (singletonSeq!1624 (apply!4668 (charsOf!1822 (h!23410 (t!149788 tokens!457))) 0)))))

(declare-fun rulesRegex!563 (LexerInterface!2802 List!18080) Regex!4501)

(assert (=> b!1637073 (= lt!599221 (rulesRegex!563 thiss!17113 rules!1846))))

(declare-fun b!1637074 () Bool)

(declare-fun e!1049851 () Bool)

(declare-fun e!1049854 () Bool)

(assert (=> b!1637074 (= e!1049851 e!1049854)))

(declare-fun res!733170 () Bool)

(assert (=> b!1637074 (=> res!733170 e!1049854)))

(declare-fun lt!599201 () List!18079)

(declare-fun lt!599223 () List!18079)

(declare-fun lt!599208 () List!18079)

(assert (=> b!1637074 (= res!733170 (or (not (= lt!599223 lt!599208)) (not (= lt!599208 lt!599201))))))

(declare-datatypes ((IArray!11995 0))(
  ( (IArray!11996 (innerList!6055 List!18079)) )
))
(declare-datatypes ((Conc!5995 0))(
  ( (Node!5995 (left!14447 Conc!5995) (right!14777 Conc!5995) (csize!12220 Int) (cheight!6206 Int)) (Leaf!8802 (xs!8831 IArray!11995) (csize!12221 Int)) (Empty!5995) )
))
(declare-datatypes ((BalanceConc!11934 0))(
  ( (BalanceConc!11935 (c!266357 Conc!5995)) )
))
(declare-fun lt!599225 () BalanceConc!11934)

(declare-fun list!7099 (BalanceConc!11934) List!18079)

(assert (=> b!1637074 (= lt!599208 (list!7099 lt!599225))))

(assert (=> b!1637074 (= lt!599223 lt!599201)))

(declare-fun prepend!715 (BalanceConc!11934 Token!5912) BalanceConc!11934)

(declare-fun seqFromList!2096 (List!18079) BalanceConc!11934)

(assert (=> b!1637074 (= lt!599201 (list!7099 (prepend!715 (seqFromList!2096 (t!149788 (t!149788 tokens!457))) (h!23410 (t!149788 tokens!457)))))))

(declare-datatypes ((Unit!29500 0))(
  ( (Unit!29501) )
))
(declare-fun lt!599200 () Unit!29500)

(declare-datatypes ((tuple2!17638 0))(
  ( (tuple2!17639 (_1!10221 BalanceConc!11934) (_2!10221 BalanceConc!11932)) )
))
(declare-fun lt!599219 () tuple2!17638)

(declare-fun seqFromListBHdTlConstructive!250 (Token!5912 List!18079 BalanceConc!11934) Unit!29500)

(assert (=> b!1637074 (= lt!599200 (seqFromListBHdTlConstructive!250 (h!23410 (t!149788 tokens!457)) (t!149788 (t!149788 tokens!457)) (_1!10221 lt!599219)))))

(declare-fun b!1637075 () Bool)

(declare-fun res!733176 () Bool)

(assert (=> b!1637075 (=> res!733176 e!1049854)))

(declare-fun separableTokensPredicate!744 (LexerInterface!2802 Token!5912 Token!5912 List!18080) Bool)

(assert (=> b!1637075 (= res!733176 (not (separableTokensPredicate!744 thiss!17113 (h!23410 tokens!457) (h!23410 (t!149788 tokens!457)) rules!1846)))))

(declare-fun b!1637076 () Bool)

(declare-fun res!733174 () Bool)

(assert (=> b!1637076 (=> (not res!733174) (not e!1049868))))

(assert (=> b!1637076 (= res!733174 (and (not ((_ is Nil!18009) tokens!457)) (not ((_ is Nil!18009) (t!149788 tokens!457)))))))

(declare-fun b!1637077 () Bool)

(assert (=> b!1637077 (= e!1049853 e!1049869)))

(declare-fun res!733172 () Bool)

(assert (=> b!1637077 (=> res!733172 e!1049869)))

(declare-fun lt!599209 () List!18077)

(declare-fun lt!599212 () tuple2!17634)

(assert (=> b!1637077 (= res!733172 (or (not (= (_1!10219 lt!599212) (h!23410 tokens!457))) (not (= (_2!10219 lt!599212) lt!599209))))))

(declare-fun lt!599222 () Option!3385)

(assert (=> b!1637077 (= lt!599212 (get!5223 lt!599222))))

(declare-fun lt!599205 () Unit!29500)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!138 (LexerInterface!2802 List!18080 Token!5912 Rule!6146 List!18077) Unit!29500)

(assert (=> b!1637077 (= lt!599205 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!138 thiss!17113 rules!1846 (h!23410 tokens!457) (rule!5017 (h!23410 tokens!457)) lt!599209))))

(declare-fun b!1637078 () Bool)

(declare-fun e!1049849 () Bool)

(assert (=> b!1637078 (= e!1049849 (not e!1049851))))

(declare-fun res!733173 () Bool)

(assert (=> b!1637078 (=> res!733173 e!1049851)))

(assert (=> b!1637078 (= res!733173 (not (= lt!599223 (t!149788 tokens!457))))))

(assert (=> b!1637078 (= lt!599223 (list!7099 (_1!10221 lt!599219)))))

(declare-fun lt!599197 () Unit!29500)

(declare-fun theoremInvertabilityWhenTokenListSeparable!247 (LexerInterface!2802 List!18080 List!18079) Unit!29500)

(assert (=> b!1637078 (= lt!599197 (theoremInvertabilityWhenTokenListSeparable!247 thiss!17113 rules!1846 (t!149788 tokens!457)))))

(declare-fun lt!599220 () List!18077)

(declare-fun isPrefix!1433 (List!18077 List!18077) Bool)

(assert (=> b!1637078 (isPrefix!1433 lt!599207 lt!599220)))

(declare-fun lt!599216 () Unit!29500)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!958 (List!18077 List!18077) Unit!29500)

(assert (=> b!1637078 (= lt!599216 (lemmaConcatTwoListThenFirstIsPrefix!958 lt!599207 lt!599209))))

(assert (=> b!1637079 (= e!1049870 (and tp!474611 tp!474612))))

(declare-fun b!1637080 () Bool)

(assert (=> b!1637080 (= e!1049868 e!1049849)))

(declare-fun res!733161 () Bool)

(assert (=> b!1637080 (=> (not res!733161) (not e!1049849))))

(declare-fun lt!599203 () List!18077)

(assert (=> b!1637080 (= res!733161 (= lt!599203 lt!599220))))

(assert (=> b!1637080 (= lt!599220 (++!4825 lt!599207 lt!599209))))

(declare-fun list!7100 (BalanceConc!11932) List!18077)

(assert (=> b!1637080 (= lt!599203 (list!7100 lt!599198))))

(assert (=> b!1637080 (= lt!599209 (list!7100 lt!599224))))

(assert (=> b!1637080 (= lt!599207 (list!7100 lt!599217))))

(assert (=> b!1637080 (= lt!599217 (charsOf!1822 (h!23410 tokens!457)))))

(declare-fun lex!1286 (LexerInterface!2802 List!18080 BalanceConc!11932) tuple2!17638)

(assert (=> b!1637080 (= lt!599219 (lex!1286 thiss!17113 rules!1846 lt!599224))))

(declare-fun print!1333 (LexerInterface!2802 BalanceConc!11934) BalanceConc!11932)

(assert (=> b!1637080 (= lt!599224 (print!1333 thiss!17113 lt!599225))))

(assert (=> b!1637080 (= lt!599225 (seqFromList!2096 (t!149788 tokens!457)))))

(assert (=> b!1637080 (= lt!599198 (print!1333 thiss!17113 (seqFromList!2096 tokens!457)))))

(declare-fun e!1049863 () Bool)

(assert (=> b!1637081 (= e!1049863 (and tp!474616 tp!474613))))

(declare-fun b!1637082 () Bool)

(assert (=> b!1637082 (= e!1049860 true)))

(declare-fun lt!599213 () List!18077)

(assert (=> b!1637082 (= lt!599213 (list!7100 (_2!10220 lt!599218)))))

(declare-fun b!1637083 () Bool)

(declare-fun res!733168 () Bool)

(assert (=> b!1637083 (=> res!733168 e!1049853)))

(assert (=> b!1637083 (= res!733168 (prefixMatch!436 lt!599221 (++!4825 lt!599207 lt!599206)))))

(declare-fun b!1637084 () Bool)

(declare-fun res!733183 () Bool)

(assert (=> b!1637084 (=> res!733183 e!1049865)))

(declare-fun isEmpty!11042 (BalanceConc!11934) Bool)

(assert (=> b!1637084 (= res!733183 (isEmpty!11042 (_1!10221 (lex!1286 thiss!17113 rules!1846 (seqFromList!2095 lt!599207)))))))

(declare-fun b!1637085 () Bool)

(declare-fun res!733184 () Bool)

(assert (=> b!1637085 (=> (not res!733184) (not e!1049868))))

(declare-fun rulesProduceEachTokenIndividuallyList!1004 (LexerInterface!2802 List!18080 List!18079) Bool)

(assert (=> b!1637085 (= res!733184 (rulesProduceEachTokenIndividuallyList!1004 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!474608 () Bool)

(declare-fun b!1637086 () Bool)

(declare-fun e!1049859 () Bool)

(assert (=> b!1637086 (= e!1049859 (and tp!474608 (inv!23357 (tag!3453 (rule!5017 (h!23410 tokens!457)))) (inv!23360 (transformation!3173 (rule!5017 (h!23410 tokens!457)))) e!1049863))))

(declare-fun b!1637087 () Bool)

(declare-fun tp!474614 () Bool)

(assert (=> b!1637087 (= e!1049848 (and e!1049850 tp!474614))))

(declare-fun b!1637088 () Bool)

(declare-fun res!733177 () Bool)

(assert (=> b!1637088 (=> res!733177 e!1049869)))

(declare-fun maxPrefixZipper!330 (LexerInterface!2802 List!18080 List!18077) Option!3385)

(assert (=> b!1637088 (= res!733177 (not (= (h!23410 tokens!457) (_1!10219 (get!5223 (maxPrefixZipper!330 thiss!17113 rules!1846 lt!599203))))))))

(declare-fun b!1637089 () Bool)

(assert (=> b!1637089 (= e!1049865 e!1049864)))

(declare-fun res!733162 () Bool)

(assert (=> b!1637089 (=> res!733162 e!1049864)))

(assert (=> b!1637089 (= res!733162 (not (isDefined!2752 lt!599222)))))

(declare-fun lt!599204 () Unit!29500)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!376 (LexerInterface!2802 List!18080 List!18077 List!18077) Unit!29500)

(assert (=> b!1637089 (= lt!599204 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!376 thiss!17113 rules!1846 lt!599207 lt!599209))))

(declare-fun b!1637090 () Bool)

(declare-fun res!733165 () Bool)

(assert (=> b!1637090 (=> (not res!733165) (not e!1049868))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!495 (LexerInterface!2802 List!18079 List!18080) Bool)

(assert (=> b!1637090 (= res!733165 (tokensListTwoByTwoPredicateSeparableList!495 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!474609 () Bool)

(declare-fun b!1637091 () Bool)

(declare-fun e!1049847 () Bool)

(declare-fun inv!23361 (Token!5912) Bool)

(assert (=> b!1637091 (= e!1049866 (and (inv!23361 (h!23410 tokens!457)) e!1049847 tp!474609))))

(declare-fun b!1637092 () Bool)

(declare-fun res!733169 () Bool)

(assert (=> b!1637092 (=> (not res!733169) (not e!1049855))))

(declare-fun isEmpty!11043 (List!18077) Bool)

(assert (=> b!1637092 (= res!733169 (isEmpty!11043 (_2!10219 lt!599214)))))

(declare-fun b!1637093 () Bool)

(assert (=> b!1637093 (= e!1049854 e!1049865)))

(declare-fun res!733171 () Bool)

(assert (=> b!1637093 (=> res!733171 e!1049865)))

(declare-fun lt!599196 () List!18077)

(declare-fun lt!599210 () List!18077)

(assert (=> b!1637093 (= res!733171 (or (not (= lt!599210 lt!599196)) (not (= lt!599196 lt!599207)) (not (= lt!599210 lt!599207))))))

(declare-fun printList!917 (LexerInterface!2802 List!18079) List!18077)

(assert (=> b!1637093 (= lt!599196 (printList!917 thiss!17113 (Cons!18009 (h!23410 tokens!457) Nil!18009)))))

(declare-fun lt!599226 () BalanceConc!11932)

(assert (=> b!1637093 (= lt!599210 (list!7100 lt!599226))))

(declare-fun lt!599202 () BalanceConc!11934)

(declare-fun printTailRec!855 (LexerInterface!2802 BalanceConc!11934 Int BalanceConc!11932) BalanceConc!11932)

(assert (=> b!1637093 (= lt!599226 (printTailRec!855 thiss!17113 lt!599202 0 (BalanceConc!11933 Empty!5994)))))

(assert (=> b!1637093 (= lt!599226 (print!1333 thiss!17113 lt!599202))))

(declare-fun singletonSeq!1625 (Token!5912) BalanceConc!11934)

(assert (=> b!1637093 (= lt!599202 (singletonSeq!1625 (h!23410 tokens!457)))))

(assert (=> b!1637093 (= lt!599222 (maxPrefix!1366 thiss!17113 rules!1846 lt!599203))))

(declare-fun tp!474615 () Bool)

(declare-fun b!1637094 () Bool)

(declare-fun inv!21 (TokenValue!3263) Bool)

(assert (=> b!1637094 (= e!1049847 (and (inv!21 (value!100103 (h!23410 tokens!457))) e!1049859 tp!474615))))

(declare-fun b!1637095 () Bool)

(assert (=> b!1637095 (= e!1049861 e!1049857)))

(declare-fun res!733166 () Bool)

(assert (=> b!1637095 (=> res!733166 e!1049857)))

(assert (=> b!1637095 (= res!733166 (prefixMatch!436 lt!599221 (++!4825 lt!599207 lt!599215)))))

(assert (=> b!1637095 (= lt!599215 (list!7100 lt!599211))))

(declare-fun b!1637096 () Bool)

(declare-fun res!733164 () Bool)

(assert (=> b!1637096 (=> (not res!733164) (not e!1049856))))

(declare-fun head!3535 (List!18077) C!9176)

(assert (=> b!1637096 (= res!733164 (= lt!599215 (Cons!18007 (head!3535 (originalCharacters!3987 (h!23410 (t!149788 tokens!457)))) Nil!18007)))))

(declare-fun b!1637097 () Bool)

(assert (=> b!1637097 (= e!1049856 (= lt!599215 (Cons!18007 (head!3535 lt!599209) Nil!18007)))))

(declare-fun b!1637098 () Bool)

(declare-fun res!733159 () Bool)

(assert (=> b!1637098 (=> (not res!733159) (not e!1049868))))

(declare-fun rulesInvariant!2471 (LexerInterface!2802 List!18080) Bool)

(assert (=> b!1637098 (= res!733159 (rulesInvariant!2471 thiss!17113 rules!1846))))

(assert (= (and start!156322 res!733179) b!1637071))

(assert (= (and b!1637071 res!733180) b!1637098))

(assert (= (and b!1637098 res!733159) b!1637085))

(assert (= (and b!1637085 res!733184) b!1637090))

(assert (= (and b!1637090 res!733165) b!1637076))

(assert (= (and b!1637076 res!733174) b!1637080))

(assert (= (and b!1637080 res!733161) b!1637078))

(assert (= (and b!1637078 (not res!733173)) b!1637074))

(assert (= (and b!1637074 (not res!733170)) b!1637075))

(assert (= (and b!1637075 (not res!733176)) b!1637093))

(assert (= (and b!1637093 (not res!733171)) b!1637072))

(assert (= (and b!1637072 (not res!733167)) b!1637084))

(assert (= (and b!1637084 (not res!733183)) b!1637089))

(assert (= (and b!1637089 (not res!733162)) b!1637073))

(assert (= (and b!1637073 (not res!733175)) b!1637095))

(assert (= (and b!1637095 (not res!733166)) b!1637070))

(assert (= (and b!1637070 res!733160) b!1637096))

(assert (= (and b!1637096 res!733164) b!1637097))

(assert (= (and b!1637070 (not res!733163)) b!1637066))

(assert (= (and b!1637066 res!733178) b!1637092))

(assert (= (and b!1637092 res!733169) b!1637069))

(assert (= (and b!1637066 (not res!733182)) b!1637083))

(assert (= (and b!1637083 (not res!733168)) b!1637077))

(assert (= (and b!1637077 (not res!733172)) b!1637088))

(assert (= (and b!1637088 (not res!733177)) b!1637068))

(assert (= (and b!1637068 (not res!733181)) b!1637082))

(assert (= b!1637067 b!1637079))

(assert (= b!1637087 b!1637067))

(assert (= (and start!156322 ((_ is Cons!18010) rules!1846)) b!1637087))

(assert (= b!1637086 b!1637081))

(assert (= b!1637094 b!1637086))

(assert (= b!1637091 b!1637094))

(assert (= (and start!156322 ((_ is Cons!18009) tokens!457)) b!1637091))

(declare-fun m!1974815 () Bool)

(assert (=> b!1637078 m!1974815))

(declare-fun m!1974817 () Bool)

(assert (=> b!1637078 m!1974817))

(declare-fun m!1974819 () Bool)

(assert (=> b!1637078 m!1974819))

(declare-fun m!1974821 () Bool)

(assert (=> b!1637078 m!1974821))

(declare-fun m!1974823 () Bool)

(assert (=> b!1637082 m!1974823))

(declare-fun m!1974825 () Bool)

(assert (=> b!1637091 m!1974825))

(declare-fun m!1974827 () Bool)

(assert (=> b!1637097 m!1974827))

(declare-fun m!1974829 () Bool)

(assert (=> b!1637098 m!1974829))

(declare-fun m!1974831 () Bool)

(assert (=> b!1637074 m!1974831))

(declare-fun m!1974833 () Bool)

(assert (=> b!1637074 m!1974833))

(declare-fun m!1974835 () Bool)

(assert (=> b!1637074 m!1974835))

(declare-fun m!1974837 () Bool)

(assert (=> b!1637074 m!1974837))

(assert (=> b!1637074 m!1974833))

(declare-fun m!1974839 () Bool)

(assert (=> b!1637074 m!1974839))

(assert (=> b!1637074 m!1974837))

(declare-fun m!1974841 () Bool)

(assert (=> b!1637077 m!1974841))

(declare-fun m!1974843 () Bool)

(assert (=> b!1637077 m!1974843))

(declare-fun m!1974845 () Bool)

(assert (=> b!1637068 m!1974845))

(assert (=> b!1637068 m!1974845))

(declare-fun m!1974847 () Bool)

(assert (=> b!1637068 m!1974847))

(declare-fun m!1974849 () Bool)

(assert (=> b!1637070 m!1974849))

(assert (=> b!1637070 m!1974849))

(declare-fun m!1974851 () Bool)

(assert (=> b!1637070 m!1974851))

(assert (=> b!1637070 m!1974851))

(declare-fun m!1974853 () Bool)

(assert (=> b!1637070 m!1974853))

(declare-fun m!1974855 () Bool)

(assert (=> b!1637070 m!1974855))

(declare-fun m!1974857 () Bool)

(assert (=> b!1637072 m!1974857))

(declare-fun m!1974859 () Bool)

(assert (=> b!1637090 m!1974859))

(declare-fun m!1974861 () Bool)

(assert (=> b!1637089 m!1974861))

(declare-fun m!1974863 () Bool)

(assert (=> b!1637089 m!1974863))

(declare-fun m!1974865 () Bool)

(assert (=> b!1637095 m!1974865))

(assert (=> b!1637095 m!1974865))

(declare-fun m!1974867 () Bool)

(assert (=> b!1637095 m!1974867))

(declare-fun m!1974869 () Bool)

(assert (=> b!1637095 m!1974869))

(declare-fun m!1974871 () Bool)

(assert (=> b!1637094 m!1974871))

(declare-fun m!1974873 () Bool)

(assert (=> b!1637071 m!1974873))

(declare-fun m!1974875 () Bool)

(assert (=> b!1637085 m!1974875))

(declare-fun m!1974877 () Bool)

(assert (=> b!1637084 m!1974877))

(assert (=> b!1637084 m!1974877))

(declare-fun m!1974879 () Bool)

(assert (=> b!1637084 m!1974879))

(declare-fun m!1974881 () Bool)

(assert (=> b!1637084 m!1974881))

(declare-fun m!1974883 () Bool)

(assert (=> b!1637096 m!1974883))

(declare-fun m!1974885 () Bool)

(assert (=> b!1637083 m!1974885))

(assert (=> b!1637083 m!1974885))

(declare-fun m!1974887 () Bool)

(assert (=> b!1637083 m!1974887))

(declare-fun m!1974889 () Bool)

(assert (=> b!1637073 m!1974889))

(declare-fun m!1974891 () Bool)

(assert (=> b!1637073 m!1974891))

(declare-fun m!1974893 () Bool)

(assert (=> b!1637073 m!1974893))

(declare-fun m!1974895 () Bool)

(assert (=> b!1637073 m!1974895))

(assert (=> b!1637073 m!1974895))

(declare-fun m!1974897 () Bool)

(assert (=> b!1637073 m!1974897))

(declare-fun m!1974899 () Bool)

(assert (=> b!1637073 m!1974899))

(assert (=> b!1637073 m!1974891))

(assert (=> b!1637073 m!1974899))

(declare-fun m!1974901 () Bool)

(assert (=> b!1637069 m!1974901))

(declare-fun m!1974903 () Bool)

(assert (=> b!1637086 m!1974903))

(declare-fun m!1974905 () Bool)

(assert (=> b!1637086 m!1974905))

(declare-fun m!1974907 () Bool)

(assert (=> b!1637088 m!1974907))

(assert (=> b!1637088 m!1974907))

(declare-fun m!1974909 () Bool)

(assert (=> b!1637088 m!1974909))

(declare-fun m!1974911 () Bool)

(assert (=> b!1637066 m!1974911))

(declare-fun m!1974913 () Bool)

(assert (=> b!1637066 m!1974913))

(declare-fun m!1974915 () Bool)

(assert (=> b!1637066 m!1974915))

(declare-fun m!1974917 () Bool)

(assert (=> b!1637066 m!1974917))

(declare-fun m!1974919 () Bool)

(assert (=> b!1637066 m!1974919))

(declare-fun m!1974921 () Bool)

(assert (=> b!1637066 m!1974921))

(assert (=> b!1637066 m!1974921))

(declare-fun m!1974923 () Bool)

(assert (=> b!1637066 m!1974923))

(assert (=> b!1637066 m!1974913))

(declare-fun m!1974925 () Bool)

(assert (=> b!1637080 m!1974925))

(declare-fun m!1974927 () Bool)

(assert (=> b!1637080 m!1974927))

(declare-fun m!1974929 () Bool)

(assert (=> b!1637080 m!1974929))

(declare-fun m!1974931 () Bool)

(assert (=> b!1637080 m!1974931))

(declare-fun m!1974933 () Bool)

(assert (=> b!1637080 m!1974933))

(declare-fun m!1974935 () Bool)

(assert (=> b!1637080 m!1974935))

(declare-fun m!1974937 () Bool)

(assert (=> b!1637080 m!1974937))

(declare-fun m!1974939 () Bool)

(assert (=> b!1637080 m!1974939))

(declare-fun m!1974941 () Bool)

(assert (=> b!1637080 m!1974941))

(assert (=> b!1637080 m!1974935))

(declare-fun m!1974943 () Bool)

(assert (=> b!1637080 m!1974943))

(declare-fun m!1974945 () Bool)

(assert (=> b!1637067 m!1974945))

(declare-fun m!1974947 () Bool)

(assert (=> b!1637067 m!1974947))

(declare-fun m!1974949 () Bool)

(assert (=> b!1637075 m!1974949))

(declare-fun m!1974951 () Bool)

(assert (=> b!1637093 m!1974951))

(declare-fun m!1974953 () Bool)

(assert (=> b!1637093 m!1974953))

(declare-fun m!1974955 () Bool)

(assert (=> b!1637093 m!1974955))

(declare-fun m!1974957 () Bool)

(assert (=> b!1637093 m!1974957))

(declare-fun m!1974959 () Bool)

(assert (=> b!1637093 m!1974959))

(declare-fun m!1974961 () Bool)

(assert (=> b!1637093 m!1974961))

(declare-fun m!1974963 () Bool)

(assert (=> b!1637092 m!1974963))

(check-sat (not b!1637071) (not b!1637078) b_and!116033 b_and!116035 (not b!1637097) (not b!1637073) (not b!1637074) b_and!116029 (not b!1637083) (not b!1637089) (not b!1637093) (not b!1637075) (not b!1637086) (not b_next!44973) (not b!1637080) (not b!1637066) b_and!116031 (not b!1637085) (not b!1637095) (not b!1637077) (not b_next!44969) (not b!1637069) (not b!1637088) (not b!1637092) (not b!1637072) (not b!1637068) (not b!1637070) (not b!1637082) (not b_next!44967) (not b!1637094) (not b!1637091) (not b!1637090) (not b!1637067) (not b!1637087) (not b_next!44971) (not b!1637098) (not b!1637096) (not b!1637084))
(check-sat (not b_next!44973) b_and!116031 b_and!116033 (not b_next!44969) (not b_next!44967) b_and!116035 (not b_next!44971) b_and!116029)

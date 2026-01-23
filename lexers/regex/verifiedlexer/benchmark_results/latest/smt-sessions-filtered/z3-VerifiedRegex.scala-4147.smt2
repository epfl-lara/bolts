; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223244 () Bool)

(assert start!223244)

(declare-fun b!2279270 () Bool)

(declare-fun b_free!67997 () Bool)

(declare-fun b_next!68701 () Bool)

(assert (=> b!2279270 (= b_free!67997 (not b_next!68701))))

(declare-fun tp!722181 () Bool)

(declare-fun b_and!179921 () Bool)

(assert (=> b!2279270 (= tp!722181 b_and!179921)))

(declare-fun b_free!67999 () Bool)

(declare-fun b_next!68703 () Bool)

(assert (=> b!2279270 (= b_free!67999 (not b_next!68703))))

(declare-fun tp!722176 () Bool)

(declare-fun b_and!179923 () Bool)

(assert (=> b!2279270 (= tp!722176 b_and!179923)))

(declare-fun b!2279293 () Bool)

(declare-fun b_free!68001 () Bool)

(declare-fun b_next!68705 () Bool)

(assert (=> b!2279293 (= b_free!68001 (not b_next!68705))))

(declare-fun tp!722169 () Bool)

(declare-fun b_and!179925 () Bool)

(assert (=> b!2279293 (= tp!722169 b_and!179925)))

(declare-fun b_free!68003 () Bool)

(declare-fun b_next!68707 () Bool)

(assert (=> b!2279293 (= b_free!68003 (not b_next!68707))))

(declare-fun tp!722170 () Bool)

(declare-fun b_and!179927 () Bool)

(assert (=> b!2279293 (= tp!722170 b_and!179927)))

(declare-fun b!2279296 () Bool)

(declare-fun b_free!68005 () Bool)

(declare-fun b_next!68709 () Bool)

(assert (=> b!2279296 (= b_free!68005 (not b_next!68709))))

(declare-fun tp!722179 () Bool)

(declare-fun b_and!179929 () Bool)

(assert (=> b!2279296 (= tp!722179 b_and!179929)))

(declare-fun b_free!68007 () Bool)

(declare-fun b_next!68711 () Bool)

(assert (=> b!2279296 (= b_free!68007 (not b_next!68711))))

(declare-fun tp!722178 () Bool)

(declare-fun b_and!179931 () Bool)

(assert (=> b!2279296 (= tp!722178 b_and!179931)))

(declare-fun b!2279290 () Bool)

(declare-fun b_free!68009 () Bool)

(declare-fun b_next!68713 () Bool)

(assert (=> b!2279290 (= b_free!68009 (not b_next!68713))))

(declare-fun tp!722183 () Bool)

(declare-fun b_and!179933 () Bool)

(assert (=> b!2279290 (= tp!722183 b_and!179933)))

(declare-fun b_free!68011 () Bool)

(declare-fun b_next!68715 () Bool)

(assert (=> b!2279290 (= b_free!68011 (not b_next!68715))))

(declare-fun tp!722182 () Bool)

(declare-fun b_and!179935 () Bool)

(assert (=> b!2279290 (= tp!722182 b_and!179935)))

(declare-fun b!2279267 () Bool)

(declare-fun e!1459910 () Bool)

(declare-fun tp_is_empty!10567 () Bool)

(declare-fun tp!722185 () Bool)

(assert (=> b!2279267 (= e!1459910 (and tp_is_empty!10567 tp!722185))))

(declare-fun res!974113 () Bool)

(declare-fun e!1459929 () Bool)

(assert (=> start!223244 (=> (not res!974113) (not e!1459929))))

(declare-datatypes ((LexerInterface!3922 0))(
  ( (LexerInterfaceExt!3919 (__x!18034 Int)) (Lexer!3920) )
))
(declare-fun thiss!16613 () LexerInterface!3922)

(get-info :version)

(assert (=> start!223244 (= res!974113 ((_ is Lexer!3920) thiss!16613))))

(assert (=> start!223244 e!1459929))

(assert (=> start!223244 true))

(declare-fun e!1459913 () Bool)

(assert (=> start!223244 e!1459913))

(declare-fun e!1459912 () Bool)

(assert (=> start!223244 e!1459912))

(declare-fun e!1459911 () Bool)

(assert (=> start!223244 e!1459911))

(assert (=> start!223244 e!1459910))

(declare-fun e!1459902 () Bool)

(assert (=> start!223244 e!1459902))

(declare-fun e!1459918 () Bool)

(assert (=> start!223244 e!1459918))

(declare-fun e!1459921 () Bool)

(assert (=> start!223244 e!1459921))

(declare-fun b!2279268 () Bool)

(declare-fun res!974129 () Bool)

(declare-fun e!1459915 () Bool)

(assert (=> b!2279268 (=> (not res!974129) (not e!1459915))))

(declare-datatypes ((List!27189 0))(
  ( (Nil!27095) (Cons!27095 (h!32496 (_ BitVec 16)) (t!203397 List!27189)) )
))
(declare-datatypes ((TokenValue!4487 0))(
  ( (FloatLiteralValue!8974 (text!31854 List!27189)) (TokenValueExt!4486 (__x!18035 Int)) (Broken!22435 (value!137056 List!27189)) (Object!4580) (End!4487) (Def!4487) (Underscore!4487) (Match!4487) (Else!4487) (Error!4487) (Case!4487) (If!4487) (Extends!4487) (Abstract!4487) (Class!4487) (Val!4487) (DelimiterValue!8974 (del!4547 List!27189)) (KeywordValue!4493 (value!137057 List!27189)) (CommentValue!8974 (value!137058 List!27189)) (WhitespaceValue!8974 (value!137059 List!27189)) (IndentationValue!4487 (value!137060 List!27189)) (String!29538) (Int32!4487) (Broken!22436 (value!137061 List!27189)) (Boolean!4488) (Unit!40029) (OperatorValue!4490 (op!4547 List!27189)) (IdentifierValue!8974 (value!137062 List!27189)) (IdentifierValue!8975 (value!137063 List!27189)) (WhitespaceValue!8975 (value!137064 List!27189)) (True!8974) (False!8974) (Broken!22437 (value!137065 List!27189)) (Broken!22438 (value!137066 List!27189)) (True!8975) (RightBrace!4487) (RightBracket!4487) (Colon!4487) (Null!4487) (Comma!4487) (LeftBracket!4487) (False!8975) (LeftBrace!4487) (ImaginaryLiteralValue!4487 (text!31855 List!27189)) (StringLiteralValue!13461 (value!137067 List!27189)) (EOFValue!4487 (value!137068 List!27189)) (IdentValue!4487 (value!137069 List!27189)) (DelimiterValue!8975 (value!137070 List!27189)) (DedentValue!4487 (value!137071 List!27189)) (NewLineValue!4487 (value!137072 List!27189)) (IntegerValue!13461 (value!137073 (_ BitVec 32)) (text!31856 List!27189)) (IntegerValue!13462 (value!137074 Int) (text!31857 List!27189)) (Times!4487) (Or!4487) (Equal!4487) (Minus!4487) (Broken!22439 (value!137075 List!27189)) (And!4487) (Div!4487) (LessEqual!4487) (Mod!4487) (Concat!11160) (Not!4487) (Plus!4487) (SpaceValue!4487 (value!137076 List!27189)) (IntegerValue!13463 (value!137077 Int) (text!31858 List!27189)) (StringLiteralValue!13462 (text!31859 List!27189)) (FloatLiteralValue!8975 (text!31860 List!27189)) (BytesLiteralValue!4487 (value!137078 List!27189)) (CommentValue!8975 (value!137079 List!27189)) (StringLiteralValue!13463 (value!137080 List!27189)) (ErrorTokenValue!4487 (msg!4548 List!27189)) )
))
(declare-datatypes ((C!13492 0))(
  ( (C!13493 (val!7794 Int)) )
))
(declare-datatypes ((List!27190 0))(
  ( (Nil!27096) (Cons!27096 (h!32497 C!13492) (t!203398 List!27190)) )
))
(declare-datatypes ((IArray!17601 0))(
  ( (IArray!17602 (innerList!8858 List!27190)) )
))
(declare-datatypes ((Conc!8798 0))(
  ( (Node!8798 (left!20557 Conc!8798) (right!20887 Conc!8798) (csize!17826 Int) (cheight!9009 Int)) (Leaf!12946 (xs!11740 IArray!17601) (csize!17827 Int)) (Empty!8798) )
))
(declare-datatypes ((BalanceConc!17324 0))(
  ( (BalanceConc!17325 (c!361788 Conc!8798)) )
))
(declare-datatypes ((String!29539 0))(
  ( (String!29540 (value!137081 String)) )
))
(declare-datatypes ((Regex!6673 0))(
  ( (ElementMatch!6673 (c!361789 C!13492)) (Concat!11161 (regOne!13858 Regex!6673) (regTwo!13858 Regex!6673)) (EmptyExpr!6673) (Star!6673 (reg!7002 Regex!6673)) (EmptyLang!6673) (Union!6673 (regOne!13859 Regex!6673) (regTwo!13859 Regex!6673)) )
))
(declare-datatypes ((TokenValueInjection!8514 0))(
  ( (TokenValueInjection!8515 (toValue!6107 Int) (toChars!5966 Int)) )
))
(declare-datatypes ((Rule!8450 0))(
  ( (Rule!8451 (regex!4325 Regex!6673) (tag!4815 String!29539) (isSeparator!4325 Bool) (transformation!4325 TokenValueInjection!8514)) )
))
(declare-fun r!2363 () Rule!8450)

(declare-fun otherR!12 () Rule!8450)

(assert (=> b!2279268 (= res!974129 (not (= r!2363 otherR!12)))))

(declare-fun b!2279269 () Bool)

(declare-fun e!1459917 () Bool)

(declare-fun tp!722172 () Bool)

(assert (=> b!2279269 (= e!1459902 (and e!1459917 tp!722172))))

(declare-fun e!1459907 () Bool)

(assert (=> b!2279270 (= e!1459907 (and tp!722181 tp!722176))))

(declare-fun b!2279271 () Bool)

(declare-fun res!974125 () Bool)

(declare-fun e!1459914 () Bool)

(assert (=> b!2279271 (=> res!974125 e!1459914)))

(declare-datatypes ((Token!8128 0))(
  ( (Token!8129 (value!137082 TokenValue!4487) (rule!6651 Rule!8450) (size!21302 Int) (originalCharacters!5095 List!27190)) )
))
(declare-datatypes ((List!27191 0))(
  ( (Nil!27097) (Cons!27097 (h!32498 Token!8128) (t!203399 List!27191)) )
))
(declare-fun tokens!456 () List!27191)

(assert (=> b!2279271 (= res!974125 ((_ is Nil!27097) tokens!456))))

(declare-fun tp!722168 () Bool)

(declare-fun e!1459922 () Bool)

(declare-fun b!2279272 () Bool)

(declare-fun inv!36679 (String!29539) Bool)

(declare-fun inv!36682 (TokenValueInjection!8514) Bool)

(assert (=> b!2279272 (= e!1459918 (and tp!722168 (inv!36679 (tag!4815 r!2363)) (inv!36682 (transformation!4325 r!2363)) e!1459922))))

(declare-fun b!2279273 () Bool)

(declare-fun res!974112 () Bool)

(assert (=> b!2279273 (=> (not res!974112) (not e!1459915))))

(declare-fun otherP!12 () List!27190)

(declare-fun input!1722 () List!27190)

(declare-fun isPrefix!2315 (List!27190 List!27190) Bool)

(assert (=> b!2279273 (= res!974112 (isPrefix!2315 otherP!12 input!1722))))

(declare-fun e!1459924 () Bool)

(declare-fun tp!722184 () Bool)

(declare-fun b!2279274 () Bool)

(assert (=> b!2279274 (= e!1459912 (and tp!722184 (inv!36679 (tag!4815 otherR!12)) (inv!36682 (transformation!4325 otherR!12)) e!1459924))))

(declare-fun b!2279275 () Bool)

(declare-fun tp!722175 () Bool)

(assert (=> b!2279275 (= e!1459913 (and tp_is_empty!10567 tp!722175))))

(declare-fun b!2279276 () Bool)

(declare-fun e!1459906 () Bool)

(declare-fun matchR!2930 (Regex!6673 List!27190) Bool)

(declare-fun list!10552 (BalanceConc!17324) List!27190)

(declare-fun charsOf!2713 (Token!8128) BalanceConc!17324)

(declare-fun head!4932 (List!27191) Token!8128)

(assert (=> b!2279276 (= e!1459906 (not (matchR!2930 (regex!4325 r!2363) (list!10552 (charsOf!2713 (head!4932 tokens!456))))))))

(declare-fun b!2279277 () Bool)

(declare-fun e!1459908 () Bool)

(declare-fun size!21303 (BalanceConc!17324) Int)

(declare-fun size!21304 (List!27190) Int)

(assert (=> b!2279277 (= e!1459908 (<= (size!21303 (charsOf!2713 (head!4932 tokens!456))) (size!21304 otherP!12)))))

(declare-fun b!2279278 () Bool)

(declare-fun e!1459903 () Bool)

(assert (=> b!2279278 (= e!1459903 (= (rule!6651 (head!4932 tokens!456)) r!2363))))

(declare-fun b!2279279 () Bool)

(declare-fun res!974121 () Bool)

(assert (=> b!2279279 (=> (not res!974121) (not e!1459915))))

(assert (=> b!2279279 (= res!974121 e!1459903)))

(declare-fun res!974119 () Bool)

(assert (=> b!2279279 (=> res!974119 e!1459903)))

(declare-fun lt!846140 () Bool)

(assert (=> b!2279279 (= res!974119 lt!846140)))

(declare-fun b!2279280 () Bool)

(declare-fun res!974114 () Bool)

(assert (=> b!2279280 (=> (not res!974114) (not e!1459929))))

(declare-datatypes ((List!27192 0))(
  ( (Nil!27098) (Cons!27098 (h!32499 Rule!8450) (t!203400 List!27192)) )
))
(declare-fun rules!1750 () List!27192)

(declare-fun contains!4697 (List!27192 Rule!8450) Bool)

(assert (=> b!2279280 (= res!974114 (contains!4697 rules!1750 r!2363))))

(declare-fun b!2279281 () Bool)

(declare-fun e!1459901 () Bool)

(assert (=> b!2279281 (= e!1459901 e!1459915)))

(declare-fun res!974127 () Bool)

(assert (=> b!2279281 (=> (not res!974127) (not e!1459915))))

(assert (=> b!2279281 (= res!974127 e!1459908)))

(declare-fun res!974115 () Bool)

(assert (=> b!2279281 (=> res!974115 e!1459908)))

(assert (=> b!2279281 (= res!974115 lt!846140)))

(declare-fun isEmpty!15381 (List!27191) Bool)

(assert (=> b!2279281 (= lt!846140 (isEmpty!15381 tokens!456))))

(declare-fun b!2279282 () Bool)

(declare-fun tp!722173 () Bool)

(declare-fun e!1459925 () Bool)

(declare-fun inv!36683 (Token!8128) Bool)

(assert (=> b!2279282 (= e!1459921 (and (inv!36683 (h!32498 tokens!456)) e!1459925 tp!722173))))

(declare-fun b!2279283 () Bool)

(declare-fun e!1459920 () Bool)

(declare-fun lt!846134 () List!27190)

(assert (=> b!2279283 (= e!1459920 (isPrefix!2315 lt!846134 input!1722))))

(declare-fun b!2279284 () Bool)

(declare-fun e!1459928 () Bool)

(assert (=> b!2279284 (= e!1459928 e!1459920)))

(declare-fun res!974124 () Bool)

(assert (=> b!2279284 (=> res!974124 e!1459920)))

(assert (=> b!2279284 (= res!974124 (not (= (size!21304 otherP!12) (size!21304 lt!846134))))))

(declare-datatypes ((tuple2!26822 0))(
  ( (tuple2!26823 (_1!15921 Token!8128) (_2!15921 List!27190)) )
))
(declare-fun lt!846135 () tuple2!26822)

(declare-fun lt!846133 () List!27190)

(assert (=> b!2279284 (= (_2!15921 lt!846135) lt!846133)))

(declare-datatypes ((Unit!40030 0))(
  ( (Unit!40031) )
))
(declare-fun lt!846137 () Unit!40030)

(declare-fun lemmaSamePrefixThenSameSuffix!1016 (List!27190 List!27190 List!27190 List!27190 List!27190) Unit!40030)

(assert (=> b!2279284 (= lt!846137 (lemmaSamePrefixThenSameSuffix!1016 lt!846134 (_2!15921 lt!846135) lt!846134 lt!846133 input!1722))))

(declare-fun getSuffix!1106 (List!27190 List!27190) List!27190)

(assert (=> b!2279284 (= lt!846133 (getSuffix!1106 input!1722 lt!846134))))

(declare-fun ++!6617 (List!27190 List!27190) List!27190)

(assert (=> b!2279284 (isPrefix!2315 lt!846134 (++!6617 lt!846134 (_2!15921 lt!846135)))))

(declare-fun lt!846139 () Unit!40030)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1520 (List!27190 List!27190) Unit!40030)

(assert (=> b!2279284 (= lt!846139 (lemmaConcatTwoListThenFirstIsPrefix!1520 lt!846134 (_2!15921 lt!846135)))))

(assert (=> b!2279284 (= lt!846134 (list!10552 (charsOf!2713 (h!32498 tokens!456))))))

(declare-fun b!2279285 () Bool)

(declare-fun res!974120 () Bool)

(assert (=> b!2279285 (=> (not res!974120) (not e!1459929))))

(assert (=> b!2279285 (= res!974120 (contains!4697 rules!1750 otherR!12))))

(declare-fun b!2279286 () Bool)

(assert (=> b!2279286 (= e!1459914 e!1459928)))

(declare-fun res!974126 () Bool)

(assert (=> b!2279286 (=> res!974126 e!1459928)))

(assert (=> b!2279286 (= res!974126 (not (= (h!32498 tokens!456) (_1!15921 lt!846135))))))

(declare-datatypes ((Option!5311 0))(
  ( (None!5310) (Some!5310 (v!30370 tuple2!26822)) )
))
(declare-fun get!8167 (Option!5311) tuple2!26822)

(declare-fun maxPrefix!2186 (LexerInterface!3922 List!27192 List!27190) Option!5311)

(assert (=> b!2279286 (= lt!846135 (get!8167 (maxPrefix!2186 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2279287 () Bool)

(declare-fun res!974116 () Bool)

(assert (=> b!2279287 (=> (not res!974116) (not e!1459929))))

(declare-fun isEmpty!15382 (List!27192) Bool)

(assert (=> b!2279287 (= res!974116 (not (isEmpty!15382 rules!1750)))))

(declare-fun b!2279288 () Bool)

(declare-fun res!974118 () Bool)

(assert (=> b!2279288 (=> (not res!974118) (not e!1459929))))

(declare-fun rulesInvariant!3424 (LexerInterface!3922 List!27192) Bool)

(assert (=> b!2279288 (= res!974118 (rulesInvariant!3424 thiss!16613 rules!1750))))

(declare-fun b!2279289 () Bool)

(assert (=> b!2279289 (= e!1459929 e!1459901)))

(declare-fun res!974123 () Bool)

(assert (=> b!2279289 (=> (not res!974123) (not e!1459901))))

(declare-fun suffix!886 () List!27190)

(declare-datatypes ((IArray!17603 0))(
  ( (IArray!17604 (innerList!8859 List!27191)) )
))
(declare-datatypes ((Conc!8799 0))(
  ( (Node!8799 (left!20558 Conc!8799) (right!20888 Conc!8799) (csize!17828 Int) (cheight!9010 Int)) (Leaf!12947 (xs!11741 IArray!17603) (csize!17829 Int)) (Empty!8799) )
))
(declare-datatypes ((BalanceConc!17326 0))(
  ( (BalanceConc!17327 (c!361790 Conc!8799)) )
))
(declare-datatypes ((tuple2!26824 0))(
  ( (tuple2!26825 (_1!15922 BalanceConc!17326) (_2!15922 BalanceConc!17324)) )
))
(declare-fun lt!846138 () tuple2!26824)

(declare-datatypes ((tuple2!26826 0))(
  ( (tuple2!26827 (_1!15923 List!27191) (_2!15923 List!27190)) )
))
(declare-fun list!10553 (BalanceConc!17326) List!27191)

(assert (=> b!2279289 (= res!974123 (= (tuple2!26827 (list!10553 (_1!15922 lt!846138)) (list!10552 (_2!15922 lt!846138))) (tuple2!26827 tokens!456 suffix!886)))))

(declare-fun lex!1761 (LexerInterface!3922 List!27192 BalanceConc!17324) tuple2!26824)

(declare-fun seqFromList!3029 (List!27190) BalanceConc!17324)

(assert (=> b!2279289 (= lt!846138 (lex!1761 thiss!16613 rules!1750 (seqFromList!3029 input!1722)))))

(declare-fun e!1459923 () Bool)

(assert (=> b!2279290 (= e!1459923 (and tp!722183 tp!722182))))

(declare-fun b!2279291 () Bool)

(declare-fun tp!722180 () Bool)

(declare-fun e!1459905 () Bool)

(assert (=> b!2279291 (= e!1459905 (and tp!722180 (inv!36679 (tag!4815 (rule!6651 (h!32498 tokens!456)))) (inv!36682 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) e!1459907))))

(declare-fun b!2279292 () Bool)

(declare-fun tp!722171 () Bool)

(declare-fun inv!21 (TokenValue!4487) Bool)

(assert (=> b!2279292 (= e!1459925 (and (inv!21 (value!137082 (h!32498 tokens!456))) e!1459905 tp!722171))))

(assert (=> b!2279293 (= e!1459924 (and tp!722169 tp!722170))))

(declare-fun b!2279294 () Bool)

(declare-fun tp!722174 () Bool)

(assert (=> b!2279294 (= e!1459911 (and tp_is_empty!10567 tp!722174))))

(declare-fun tp!722177 () Bool)

(declare-fun b!2279295 () Bool)

(assert (=> b!2279295 (= e!1459917 (and tp!722177 (inv!36679 (tag!4815 (h!32499 rules!1750))) (inv!36682 (transformation!4325 (h!32499 rules!1750))) e!1459923))))

(assert (=> b!2279296 (= e!1459922 (and tp!722179 tp!722178))))

(declare-fun b!2279297 () Bool)

(declare-fun e!1459926 () Bool)

(assert (=> b!2279297 (= e!1459915 (not e!1459926))))

(declare-fun res!974128 () Bool)

(assert (=> b!2279297 (=> res!974128 e!1459926)))

(assert (=> b!2279297 (= res!974128 e!1459906)))

(declare-fun res!974122 () Bool)

(assert (=> b!2279297 (=> (not res!974122) (not e!1459906))))

(assert (=> b!2279297 (= res!974122 (not lt!846140))))

(declare-fun ruleValid!1415 (LexerInterface!3922 Rule!8450) Bool)

(assert (=> b!2279297 (ruleValid!1415 thiss!16613 r!2363)))

(declare-fun lt!846132 () Unit!40030)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!820 (LexerInterface!3922 Rule!8450 List!27192) Unit!40030)

(assert (=> b!2279297 (= lt!846132 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!820 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2279298 () Bool)

(assert (=> b!2279298 (= e!1459926 e!1459914)))

(declare-fun res!974117 () Bool)

(assert (=> b!2279298 (=> res!974117 e!1459914)))

(declare-fun getIndex!338 (List!27192 Rule!8450) Int)

(assert (=> b!2279298 (= res!974117 (<= (getIndex!338 rules!1750 r!2363) (getIndex!338 rules!1750 otherR!12)))))

(assert (=> b!2279298 (ruleValid!1415 thiss!16613 otherR!12)))

(declare-fun lt!846136 () Unit!40030)

(assert (=> b!2279298 (= lt!846136 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!820 thiss!16613 otherR!12 rules!1750))))

(assert (= (and start!223244 res!974113) b!2279287))

(assert (= (and b!2279287 res!974116) b!2279288))

(assert (= (and b!2279288 res!974118) b!2279280))

(assert (= (and b!2279280 res!974114) b!2279285))

(assert (= (and b!2279285 res!974120) b!2279289))

(assert (= (and b!2279289 res!974123) b!2279281))

(assert (= (and b!2279281 (not res!974115)) b!2279277))

(assert (= (and b!2279281 res!974127) b!2279279))

(assert (= (and b!2279279 (not res!974119)) b!2279278))

(assert (= (and b!2279279 res!974121) b!2279273))

(assert (= (and b!2279273 res!974112) b!2279268))

(assert (= (and b!2279268 res!974129) b!2279297))

(assert (= (and b!2279297 res!974122) b!2279276))

(assert (= (and b!2279297 (not res!974128)) b!2279298))

(assert (= (and b!2279298 (not res!974117)) b!2279271))

(assert (= (and b!2279271 (not res!974125)) b!2279286))

(assert (= (and b!2279286 (not res!974126)) b!2279284))

(assert (= (and b!2279284 (not res!974124)) b!2279283))

(assert (= (and start!223244 ((_ is Cons!27096) input!1722)) b!2279275))

(assert (= b!2279274 b!2279293))

(assert (= start!223244 b!2279274))

(assert (= (and start!223244 ((_ is Cons!27096) suffix!886)) b!2279294))

(assert (= (and start!223244 ((_ is Cons!27096) otherP!12)) b!2279267))

(assert (= b!2279295 b!2279290))

(assert (= b!2279269 b!2279295))

(assert (= (and start!223244 ((_ is Cons!27098) rules!1750)) b!2279269))

(assert (= b!2279272 b!2279296))

(assert (= start!223244 b!2279272))

(assert (= b!2279291 b!2279270))

(assert (= b!2279292 b!2279291))

(assert (= b!2279282 b!2279292))

(assert (= (and start!223244 ((_ is Cons!27097) tokens!456)) b!2279282))

(declare-fun m!2707465 () Bool)

(assert (=> b!2279295 m!2707465))

(declare-fun m!2707467 () Bool)

(assert (=> b!2279295 m!2707467))

(declare-fun m!2707469 () Bool)

(assert (=> b!2279282 m!2707469))

(declare-fun m!2707471 () Bool)

(assert (=> b!2279286 m!2707471))

(assert (=> b!2279286 m!2707471))

(declare-fun m!2707473 () Bool)

(assert (=> b!2279286 m!2707473))

(declare-fun m!2707475 () Bool)

(assert (=> b!2279274 m!2707475))

(declare-fun m!2707477 () Bool)

(assert (=> b!2279274 m!2707477))

(declare-fun m!2707479 () Bool)

(assert (=> b!2279297 m!2707479))

(declare-fun m!2707481 () Bool)

(assert (=> b!2279297 m!2707481))

(declare-fun m!2707483 () Bool)

(assert (=> b!2279291 m!2707483))

(declare-fun m!2707485 () Bool)

(assert (=> b!2279291 m!2707485))

(declare-fun m!2707487 () Bool)

(assert (=> b!2279298 m!2707487))

(declare-fun m!2707489 () Bool)

(assert (=> b!2279298 m!2707489))

(declare-fun m!2707491 () Bool)

(assert (=> b!2279298 m!2707491))

(declare-fun m!2707493 () Bool)

(assert (=> b!2279298 m!2707493))

(declare-fun m!2707495 () Bool)

(assert (=> b!2279292 m!2707495))

(declare-fun m!2707497 () Bool)

(assert (=> b!2279289 m!2707497))

(declare-fun m!2707499 () Bool)

(assert (=> b!2279289 m!2707499))

(declare-fun m!2707501 () Bool)

(assert (=> b!2279289 m!2707501))

(assert (=> b!2279289 m!2707501))

(declare-fun m!2707503 () Bool)

(assert (=> b!2279289 m!2707503))

(declare-fun m!2707505 () Bool)

(assert (=> b!2279284 m!2707505))

(declare-fun m!2707507 () Bool)

(assert (=> b!2279284 m!2707507))

(assert (=> b!2279284 m!2707505))

(declare-fun m!2707509 () Bool)

(assert (=> b!2279284 m!2707509))

(declare-fun m!2707511 () Bool)

(assert (=> b!2279284 m!2707511))

(declare-fun m!2707513 () Bool)

(assert (=> b!2279284 m!2707513))

(declare-fun m!2707515 () Bool)

(assert (=> b!2279284 m!2707515))

(assert (=> b!2279284 m!2707513))

(declare-fun m!2707517 () Bool)

(assert (=> b!2279284 m!2707517))

(declare-fun m!2707519 () Bool)

(assert (=> b!2279284 m!2707519))

(declare-fun m!2707521 () Bool)

(assert (=> b!2279284 m!2707521))

(declare-fun m!2707523 () Bool)

(assert (=> b!2279287 m!2707523))

(declare-fun m!2707525 () Bool)

(assert (=> b!2279272 m!2707525))

(declare-fun m!2707527 () Bool)

(assert (=> b!2279272 m!2707527))

(declare-fun m!2707529 () Bool)

(assert (=> b!2279283 m!2707529))

(declare-fun m!2707531 () Bool)

(assert (=> b!2279277 m!2707531))

(assert (=> b!2279277 m!2707531))

(declare-fun m!2707533 () Bool)

(assert (=> b!2279277 m!2707533))

(assert (=> b!2279277 m!2707533))

(declare-fun m!2707535 () Bool)

(assert (=> b!2279277 m!2707535))

(assert (=> b!2279277 m!2707509))

(assert (=> b!2279276 m!2707531))

(assert (=> b!2279276 m!2707531))

(assert (=> b!2279276 m!2707533))

(assert (=> b!2279276 m!2707533))

(declare-fun m!2707537 () Bool)

(assert (=> b!2279276 m!2707537))

(assert (=> b!2279276 m!2707537))

(declare-fun m!2707539 () Bool)

(assert (=> b!2279276 m!2707539))

(declare-fun m!2707541 () Bool)

(assert (=> b!2279280 m!2707541))

(declare-fun m!2707543 () Bool)

(assert (=> b!2279288 m!2707543))

(declare-fun m!2707545 () Bool)

(assert (=> b!2279281 m!2707545))

(declare-fun m!2707547 () Bool)

(assert (=> b!2279285 m!2707547))

(assert (=> b!2279278 m!2707531))

(declare-fun m!2707549 () Bool)

(assert (=> b!2279273 m!2707549))

(check-sat b_and!179925 (not b!2279281) (not b!2279273) (not b_next!68705) (not b!2279287) (not b!2279283) (not b!2279292) (not b!2279267) (not b!2279297) (not b!2279294) (not b!2279284) (not b_next!68707) (not b!2279276) (not b!2279272) b_and!179933 (not b!2279277) b_and!179929 b_and!179931 (not b!2279291) (not b!2279275) b_and!179921 b_and!179923 (not b_next!68713) (not b_next!68711) (not b!2279280) b_and!179935 b_and!179927 tp_is_empty!10567 (not b!2279285) (not b!2279289) (not b_next!68701) (not b!2279295) (not b!2279298) (not b_next!68703) (not b!2279278) (not b_next!68709) (not b!2279286) (not b!2279282) (not b_next!68715) (not b!2279269) (not b!2279288) (not b!2279274))
(check-sat b_and!179925 (not b_next!68705) b_and!179921 b_and!179935 b_and!179927 (not b_next!68701) (not b_next!68703) (not b_next!68709) (not b_next!68707) (not b_next!68715) b_and!179933 b_and!179929 b_and!179931 b_and!179923 (not b_next!68713) (not b_next!68711))
(get-model)

(declare-fun b!2279309 () Bool)

(declare-fun e!1459937 () Bool)

(declare-fun tail!3289 (List!27190) List!27190)

(assert (=> b!2279309 (= e!1459937 (isPrefix!2315 (tail!3289 lt!846134) (tail!3289 input!1722)))))

(declare-fun b!2279310 () Bool)

(declare-fun e!1459936 () Bool)

(assert (=> b!2279310 (= e!1459936 (>= (size!21304 input!1722) (size!21304 lt!846134)))))

(declare-fun b!2279308 () Bool)

(declare-fun res!974152 () Bool)

(assert (=> b!2279308 (=> (not res!974152) (not e!1459937))))

(declare-fun head!4934 (List!27190) C!13492)

(assert (=> b!2279308 (= res!974152 (= (head!4934 lt!846134) (head!4934 input!1722)))))

(declare-fun b!2279307 () Bool)

(declare-fun e!1459938 () Bool)

(assert (=> b!2279307 (= e!1459938 e!1459937)))

(declare-fun res!974151 () Bool)

(assert (=> b!2279307 (=> (not res!974151) (not e!1459937))))

(assert (=> b!2279307 (= res!974151 (not ((_ is Nil!27096) input!1722)))))

(declare-fun d!674712 () Bool)

(assert (=> d!674712 e!1459936))

(declare-fun res!974149 () Bool)

(assert (=> d!674712 (=> res!974149 e!1459936)))

(declare-fun lt!846143 () Bool)

(assert (=> d!674712 (= res!974149 (not lt!846143))))

(assert (=> d!674712 (= lt!846143 e!1459938)))

(declare-fun res!974150 () Bool)

(assert (=> d!674712 (=> res!974150 e!1459938)))

(assert (=> d!674712 (= res!974150 ((_ is Nil!27096) lt!846134))))

(assert (=> d!674712 (= (isPrefix!2315 lt!846134 input!1722) lt!846143)))

(assert (= (and d!674712 (not res!974150)) b!2279307))

(assert (= (and b!2279307 res!974151) b!2279308))

(assert (= (and b!2279308 res!974152) b!2279309))

(assert (= (and d!674712 (not res!974149)) b!2279310))

(declare-fun m!2707551 () Bool)

(assert (=> b!2279309 m!2707551))

(declare-fun m!2707553 () Bool)

(assert (=> b!2279309 m!2707553))

(assert (=> b!2279309 m!2707551))

(assert (=> b!2279309 m!2707553))

(declare-fun m!2707555 () Bool)

(assert (=> b!2279309 m!2707555))

(declare-fun m!2707557 () Bool)

(assert (=> b!2279310 m!2707557))

(assert (=> b!2279310 m!2707521))

(declare-fun m!2707559 () Bool)

(assert (=> b!2279308 m!2707559))

(declare-fun m!2707561 () Bool)

(assert (=> b!2279308 m!2707561))

(assert (=> b!2279283 d!674712))

(declare-fun d!674714 () Bool)

(assert (=> d!674714 (= (inv!36679 (tag!4815 r!2363)) (= (mod (str.len (value!137081 (tag!4815 r!2363))) 2) 0))))

(assert (=> b!2279272 d!674714))

(declare-fun d!674718 () Bool)

(declare-fun res!974167 () Bool)

(declare-fun e!1459950 () Bool)

(assert (=> d!674718 (=> (not res!974167) (not e!1459950))))

(declare-fun semiInverseModEq!1748 (Int Int) Bool)

(assert (=> d!674718 (= res!974167 (semiInverseModEq!1748 (toChars!5966 (transformation!4325 r!2363)) (toValue!6107 (transformation!4325 r!2363))))))

(assert (=> d!674718 (= (inv!36682 (transformation!4325 r!2363)) e!1459950)))

(declare-fun b!2279325 () Bool)

(declare-fun equivClasses!1667 (Int Int) Bool)

(assert (=> b!2279325 (= e!1459950 (equivClasses!1667 (toChars!5966 (transformation!4325 r!2363)) (toValue!6107 (transformation!4325 r!2363))))))

(assert (= (and d!674718 res!974167) b!2279325))

(declare-fun m!2707575 () Bool)

(assert (=> d!674718 m!2707575))

(declare-fun m!2707577 () Bool)

(assert (=> b!2279325 m!2707577))

(assert (=> b!2279272 d!674718))

(declare-fun d!674724 () Bool)

(declare-fun res!974185 () Bool)

(declare-fun e!1459965 () Bool)

(assert (=> d!674724 (=> (not res!974185) (not e!1459965))))

(declare-fun isEmpty!15384 (List!27190) Bool)

(assert (=> d!674724 (= res!974185 (not (isEmpty!15384 (originalCharacters!5095 (h!32498 tokens!456)))))))

(assert (=> d!674724 (= (inv!36683 (h!32498 tokens!456)) e!1459965)))

(declare-fun b!2279343 () Bool)

(declare-fun res!974186 () Bool)

(assert (=> b!2279343 (=> (not res!974186) (not e!1459965))))

(declare-fun dynLambda!11769 (Int TokenValue!4487) BalanceConc!17324)

(assert (=> b!2279343 (= res!974186 (= (originalCharacters!5095 (h!32498 tokens!456)) (list!10552 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (value!137082 (h!32498 tokens!456))))))))

(declare-fun b!2279344 () Bool)

(assert (=> b!2279344 (= e!1459965 (= (size!21302 (h!32498 tokens!456)) (size!21304 (originalCharacters!5095 (h!32498 tokens!456)))))))

(assert (= (and d!674724 res!974185) b!2279343))

(assert (= (and b!2279343 res!974186) b!2279344))

(declare-fun b_lambda!72561 () Bool)

(assert (=> (not b_lambda!72561) (not b!2279343)))

(declare-fun t!203402 () Bool)

(declare-fun tb!135471 () Bool)

(assert (=> (and b!2279270 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203402) tb!135471))

(declare-fun b!2279349 () Bool)

(declare-fun e!1459968 () Bool)

(declare-fun tp!722188 () Bool)

(declare-fun inv!36686 (Conc!8798) Bool)

(assert (=> b!2279349 (= e!1459968 (and (inv!36686 (c!361788 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (value!137082 (h!32498 tokens!456))))) tp!722188))))

(declare-fun result!165174 () Bool)

(declare-fun inv!36687 (BalanceConc!17324) Bool)

(assert (=> tb!135471 (= result!165174 (and (inv!36687 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (value!137082 (h!32498 tokens!456)))) e!1459968))))

(assert (= tb!135471 b!2279349))

(declare-fun m!2707595 () Bool)

(assert (=> b!2279349 m!2707595))

(declare-fun m!2707597 () Bool)

(assert (=> tb!135471 m!2707597))

(assert (=> b!2279343 t!203402))

(declare-fun b_and!179937 () Bool)

(assert (= b_and!179923 (and (=> t!203402 result!165174) b_and!179937)))

(declare-fun tb!135473 () Bool)

(declare-fun t!203404 () Bool)

(assert (=> (and b!2279293 (= (toChars!5966 (transformation!4325 otherR!12)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203404) tb!135473))

(declare-fun result!165178 () Bool)

(assert (= result!165178 result!165174))

(assert (=> b!2279343 t!203404))

(declare-fun b_and!179939 () Bool)

(assert (= b_and!179927 (and (=> t!203404 result!165178) b_and!179939)))

(declare-fun t!203406 () Bool)

(declare-fun tb!135475 () Bool)

(assert (=> (and b!2279296 (= (toChars!5966 (transformation!4325 r!2363)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203406) tb!135475))

(declare-fun result!165180 () Bool)

(assert (= result!165180 result!165174))

(assert (=> b!2279343 t!203406))

(declare-fun b_and!179941 () Bool)

(assert (= b_and!179931 (and (=> t!203406 result!165180) b_and!179941)))

(declare-fun tb!135477 () Bool)

(declare-fun t!203408 () Bool)

(assert (=> (and b!2279290 (= (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203408) tb!135477))

(declare-fun result!165182 () Bool)

(assert (= result!165182 result!165174))

(assert (=> b!2279343 t!203408))

(declare-fun b_and!179943 () Bool)

(assert (= b_and!179935 (and (=> t!203408 result!165182) b_and!179943)))

(declare-fun m!2707599 () Bool)

(assert (=> d!674724 m!2707599))

(declare-fun m!2707601 () Bool)

(assert (=> b!2279343 m!2707601))

(assert (=> b!2279343 m!2707601))

(declare-fun m!2707603 () Bool)

(assert (=> b!2279343 m!2707603))

(declare-fun m!2707605 () Bool)

(assert (=> b!2279344 m!2707605))

(assert (=> b!2279282 d!674724))

(declare-fun d!674734 () Bool)

(assert (=> d!674734 (= (isEmpty!15381 tokens!456) ((_ is Nil!27097) tokens!456))))

(assert (=> b!2279281 d!674734))

(declare-fun d!674736 () Bool)

(declare-fun c!361804 () Bool)

(assert (=> d!674736 (= c!361804 ((_ is IntegerValue!13461) (value!137082 (h!32498 tokens!456))))))

(declare-fun e!1459996 () Bool)

(assert (=> d!674736 (= (inv!21 (value!137082 (h!32498 tokens!456))) e!1459996)))

(declare-fun b!2279402 () Bool)

(declare-fun e!1459997 () Bool)

(declare-fun inv!15 (TokenValue!4487) Bool)

(assert (=> b!2279402 (= e!1459997 (inv!15 (value!137082 (h!32498 tokens!456))))))

(declare-fun b!2279403 () Bool)

(declare-fun e!1459998 () Bool)

(assert (=> b!2279403 (= e!1459996 e!1459998)))

(declare-fun c!361805 () Bool)

(assert (=> b!2279403 (= c!361805 ((_ is IntegerValue!13462) (value!137082 (h!32498 tokens!456))))))

(declare-fun b!2279404 () Bool)

(declare-fun inv!17 (TokenValue!4487) Bool)

(assert (=> b!2279404 (= e!1459998 (inv!17 (value!137082 (h!32498 tokens!456))))))

(declare-fun b!2279405 () Bool)

(declare-fun inv!16 (TokenValue!4487) Bool)

(assert (=> b!2279405 (= e!1459996 (inv!16 (value!137082 (h!32498 tokens!456))))))

(declare-fun b!2279406 () Bool)

(declare-fun res!974213 () Bool)

(assert (=> b!2279406 (=> res!974213 e!1459997)))

(assert (=> b!2279406 (= res!974213 (not ((_ is IntegerValue!13463) (value!137082 (h!32498 tokens!456)))))))

(assert (=> b!2279406 (= e!1459998 e!1459997)))

(assert (= (and d!674736 c!361804) b!2279405))

(assert (= (and d!674736 (not c!361804)) b!2279403))

(assert (= (and b!2279403 c!361805) b!2279404))

(assert (= (and b!2279403 (not c!361805)) b!2279406))

(assert (= (and b!2279406 (not res!974213)) b!2279402))

(declare-fun m!2707625 () Bool)

(assert (=> b!2279402 m!2707625))

(declare-fun m!2707627 () Bool)

(assert (=> b!2279404 m!2707627))

(declare-fun m!2707629 () Bool)

(assert (=> b!2279405 m!2707629))

(assert (=> b!2279292 d!674736))

(declare-fun d!674742 () Bool)

(assert (=> d!674742 (= (get!8167 (maxPrefix!2186 thiss!16613 rules!1750 input!1722)) (v!30370 (maxPrefix!2186 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2279286 d!674742))

(declare-fun b!2279461 () Bool)

(declare-fun res!974241 () Bool)

(declare-fun e!1460027 () Bool)

(assert (=> b!2279461 (=> (not res!974241) (not e!1460027))))

(declare-fun lt!846188 () Option!5311)

(assert (=> b!2279461 (= res!974241 (< (size!21304 (_2!15921 (get!8167 lt!846188))) (size!21304 input!1722)))))

(declare-fun bm!136401 () Bool)

(declare-fun call!136406 () Option!5311)

(declare-fun maxPrefixOneRule!1369 (LexerInterface!3922 Rule!8450 List!27190) Option!5311)

(assert (=> bm!136401 (= call!136406 (maxPrefixOneRule!1369 thiss!16613 (h!32499 rules!1750) input!1722))))

(declare-fun b!2279462 () Bool)

(declare-fun res!974240 () Bool)

(assert (=> b!2279462 (=> (not res!974240) (not e!1460027))))

(assert (=> b!2279462 (= res!974240 (= (list!10552 (charsOf!2713 (_1!15921 (get!8167 lt!846188)))) (originalCharacters!5095 (_1!15921 (get!8167 lt!846188)))))))

(declare-fun b!2279463 () Bool)

(assert (=> b!2279463 (= e!1460027 (contains!4697 rules!1750 (rule!6651 (_1!15921 (get!8167 lt!846188)))))))

(declare-fun b!2279464 () Bool)

(declare-fun e!1460025 () Option!5311)

(declare-fun lt!846189 () Option!5311)

(declare-fun lt!846185 () Option!5311)

(assert (=> b!2279464 (= e!1460025 (ite (and ((_ is None!5310) lt!846189) ((_ is None!5310) lt!846185)) None!5310 (ite ((_ is None!5310) lt!846185) lt!846189 (ite ((_ is None!5310) lt!846189) lt!846185 (ite (>= (size!21302 (_1!15921 (v!30370 lt!846189))) (size!21302 (_1!15921 (v!30370 lt!846185)))) lt!846189 lt!846185)))))))

(assert (=> b!2279464 (= lt!846189 call!136406)))

(assert (=> b!2279464 (= lt!846185 (maxPrefix!2186 thiss!16613 (t!203400 rules!1750) input!1722))))

(declare-fun d!674744 () Bool)

(declare-fun e!1460026 () Bool)

(assert (=> d!674744 e!1460026))

(declare-fun res!974239 () Bool)

(assert (=> d!674744 (=> res!974239 e!1460026)))

(declare-fun isEmpty!15386 (Option!5311) Bool)

(assert (=> d!674744 (= res!974239 (isEmpty!15386 lt!846188))))

(assert (=> d!674744 (= lt!846188 e!1460025)))

(declare-fun c!361818 () Bool)

(assert (=> d!674744 (= c!361818 (and ((_ is Cons!27098) rules!1750) ((_ is Nil!27098) (t!203400 rules!1750))))))

(declare-fun lt!846186 () Unit!40030)

(declare-fun lt!846187 () Unit!40030)

(assert (=> d!674744 (= lt!846186 lt!846187)))

(assert (=> d!674744 (isPrefix!2315 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1474 (List!27190 List!27190) Unit!40030)

(assert (=> d!674744 (= lt!846187 (lemmaIsPrefixRefl!1474 input!1722 input!1722))))

(declare-fun rulesValidInductive!1516 (LexerInterface!3922 List!27192) Bool)

(assert (=> d!674744 (rulesValidInductive!1516 thiss!16613 rules!1750)))

(assert (=> d!674744 (= (maxPrefix!2186 thiss!16613 rules!1750 input!1722) lt!846188)))

(declare-fun b!2279465 () Bool)

(declare-fun res!974242 () Bool)

(assert (=> b!2279465 (=> (not res!974242) (not e!1460027))))

(declare-fun apply!6607 (TokenValueInjection!8514 BalanceConc!17324) TokenValue!4487)

(assert (=> b!2279465 (= res!974242 (= (value!137082 (_1!15921 (get!8167 lt!846188))) (apply!6607 (transformation!4325 (rule!6651 (_1!15921 (get!8167 lt!846188)))) (seqFromList!3029 (originalCharacters!5095 (_1!15921 (get!8167 lt!846188)))))))))

(declare-fun b!2279466 () Bool)

(declare-fun res!974238 () Bool)

(assert (=> b!2279466 (=> (not res!974238) (not e!1460027))))

(assert (=> b!2279466 (= res!974238 (matchR!2930 (regex!4325 (rule!6651 (_1!15921 (get!8167 lt!846188)))) (list!10552 (charsOf!2713 (_1!15921 (get!8167 lt!846188))))))))

(declare-fun b!2279467 () Bool)

(assert (=> b!2279467 (= e!1460025 call!136406)))

(declare-fun b!2279468 () Bool)

(declare-fun res!974244 () Bool)

(assert (=> b!2279468 (=> (not res!974244) (not e!1460027))))

(assert (=> b!2279468 (= res!974244 (= (++!6617 (list!10552 (charsOf!2713 (_1!15921 (get!8167 lt!846188)))) (_2!15921 (get!8167 lt!846188))) input!1722))))

(declare-fun b!2279469 () Bool)

(assert (=> b!2279469 (= e!1460026 e!1460027)))

(declare-fun res!974243 () Bool)

(assert (=> b!2279469 (=> (not res!974243) (not e!1460027))))

(declare-fun isDefined!4212 (Option!5311) Bool)

(assert (=> b!2279469 (= res!974243 (isDefined!4212 lt!846188))))

(assert (= (and d!674744 c!361818) b!2279467))

(assert (= (and d!674744 (not c!361818)) b!2279464))

(assert (= (or b!2279467 b!2279464) bm!136401))

(assert (= (and d!674744 (not res!974239)) b!2279469))

(assert (= (and b!2279469 res!974243) b!2279462))

(assert (= (and b!2279462 res!974240) b!2279461))

(assert (= (and b!2279461 res!974241) b!2279468))

(assert (= (and b!2279468 res!974244) b!2279465))

(assert (= (and b!2279465 res!974242) b!2279466))

(assert (= (and b!2279466 res!974238) b!2279463))

(declare-fun m!2707685 () Bool)

(assert (=> b!2279468 m!2707685))

(declare-fun m!2707687 () Bool)

(assert (=> b!2279468 m!2707687))

(assert (=> b!2279468 m!2707687))

(declare-fun m!2707689 () Bool)

(assert (=> b!2279468 m!2707689))

(assert (=> b!2279468 m!2707689))

(declare-fun m!2707691 () Bool)

(assert (=> b!2279468 m!2707691))

(assert (=> b!2279466 m!2707685))

(assert (=> b!2279466 m!2707687))

(assert (=> b!2279466 m!2707687))

(assert (=> b!2279466 m!2707689))

(assert (=> b!2279466 m!2707689))

(declare-fun m!2707693 () Bool)

(assert (=> b!2279466 m!2707693))

(assert (=> b!2279462 m!2707685))

(assert (=> b!2279462 m!2707687))

(assert (=> b!2279462 m!2707687))

(assert (=> b!2279462 m!2707689))

(declare-fun m!2707695 () Bool)

(assert (=> b!2279469 m!2707695))

(declare-fun m!2707697 () Bool)

(assert (=> b!2279464 m!2707697))

(declare-fun m!2707699 () Bool)

(assert (=> bm!136401 m!2707699))

(declare-fun m!2707701 () Bool)

(assert (=> d!674744 m!2707701))

(declare-fun m!2707703 () Bool)

(assert (=> d!674744 m!2707703))

(declare-fun m!2707705 () Bool)

(assert (=> d!674744 m!2707705))

(declare-fun m!2707707 () Bool)

(assert (=> d!674744 m!2707707))

(assert (=> b!2279465 m!2707685))

(declare-fun m!2707709 () Bool)

(assert (=> b!2279465 m!2707709))

(assert (=> b!2279465 m!2707709))

(declare-fun m!2707711 () Bool)

(assert (=> b!2279465 m!2707711))

(assert (=> b!2279461 m!2707685))

(declare-fun m!2707713 () Bool)

(assert (=> b!2279461 m!2707713))

(assert (=> b!2279461 m!2707557))

(assert (=> b!2279463 m!2707685))

(declare-fun m!2707715 () Bool)

(assert (=> b!2279463 m!2707715))

(assert (=> b!2279286 d!674744))

(declare-fun d!674772 () Bool)

(declare-fun lt!846192 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3622 (List!27192) (InoxSet Rule!8450))

(assert (=> d!674772 (= lt!846192 (select (content!3622 rules!1750) otherR!12))))

(declare-fun e!1460033 () Bool)

(assert (=> d!674772 (= lt!846192 e!1460033)))

(declare-fun res!974250 () Bool)

(assert (=> d!674772 (=> (not res!974250) (not e!1460033))))

(assert (=> d!674772 (= res!974250 ((_ is Cons!27098) rules!1750))))

(assert (=> d!674772 (= (contains!4697 rules!1750 otherR!12) lt!846192)))

(declare-fun b!2279474 () Bool)

(declare-fun e!1460032 () Bool)

(assert (=> b!2279474 (= e!1460033 e!1460032)))

(declare-fun res!974249 () Bool)

(assert (=> b!2279474 (=> res!974249 e!1460032)))

(assert (=> b!2279474 (= res!974249 (= (h!32499 rules!1750) otherR!12))))

(declare-fun b!2279475 () Bool)

(assert (=> b!2279475 (= e!1460032 (contains!4697 (t!203400 rules!1750) otherR!12))))

(assert (= (and d!674772 res!974250) b!2279474))

(assert (= (and b!2279474 (not res!974249)) b!2279475))

(declare-fun m!2707717 () Bool)

(assert (=> d!674772 m!2707717))

(declare-fun m!2707719 () Bool)

(assert (=> d!674772 m!2707719))

(declare-fun m!2707721 () Bool)

(assert (=> b!2279475 m!2707721))

(assert (=> b!2279285 d!674772))

(declare-fun d!674774 () Bool)

(assert (=> d!674774 (= (inv!36679 (tag!4815 (h!32499 rules!1750))) (= (mod (str.len (value!137081 (tag!4815 (h!32499 rules!1750)))) 2) 0))))

(assert (=> b!2279295 d!674774))

(declare-fun d!674776 () Bool)

(declare-fun res!974251 () Bool)

(declare-fun e!1460034 () Bool)

(assert (=> d!674776 (=> (not res!974251) (not e!1460034))))

(assert (=> d!674776 (= res!974251 (semiInverseModEq!1748 (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toValue!6107 (transformation!4325 (h!32499 rules!1750)))))))

(assert (=> d!674776 (= (inv!36682 (transformation!4325 (h!32499 rules!1750))) e!1460034)))

(declare-fun b!2279476 () Bool)

(assert (=> b!2279476 (= e!1460034 (equivClasses!1667 (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toValue!6107 (transformation!4325 (h!32499 rules!1750)))))))

(assert (= (and d!674776 res!974251) b!2279476))

(declare-fun m!2707723 () Bool)

(assert (=> d!674776 m!2707723))

(declare-fun m!2707725 () Bool)

(assert (=> b!2279476 m!2707725))

(assert (=> b!2279295 d!674776))

(declare-fun d!674778 () Bool)

(assert (=> d!674778 (= (inv!36679 (tag!4815 otherR!12)) (= (mod (str.len (value!137081 (tag!4815 otherR!12))) 2) 0))))

(assert (=> b!2279274 d!674778))

(declare-fun d!674780 () Bool)

(declare-fun res!974252 () Bool)

(declare-fun e!1460035 () Bool)

(assert (=> d!674780 (=> (not res!974252) (not e!1460035))))

(assert (=> d!674780 (= res!974252 (semiInverseModEq!1748 (toChars!5966 (transformation!4325 otherR!12)) (toValue!6107 (transformation!4325 otherR!12))))))

(assert (=> d!674780 (= (inv!36682 (transformation!4325 otherR!12)) e!1460035)))

(declare-fun b!2279477 () Bool)

(assert (=> b!2279477 (= e!1460035 (equivClasses!1667 (toChars!5966 (transformation!4325 otherR!12)) (toValue!6107 (transformation!4325 otherR!12))))))

(assert (= (and d!674780 res!974252) b!2279477))

(declare-fun m!2707727 () Bool)

(assert (=> d!674780 m!2707727))

(declare-fun m!2707729 () Bool)

(assert (=> b!2279477 m!2707729))

(assert (=> b!2279274 d!674780))

(declare-fun b!2279480 () Bool)

(declare-fun e!1460037 () Bool)

(assert (=> b!2279480 (= e!1460037 (isPrefix!2315 (tail!3289 otherP!12) (tail!3289 input!1722)))))

(declare-fun b!2279481 () Bool)

(declare-fun e!1460036 () Bool)

(assert (=> b!2279481 (= e!1460036 (>= (size!21304 input!1722) (size!21304 otherP!12)))))

(declare-fun b!2279479 () Bool)

(declare-fun res!974256 () Bool)

(assert (=> b!2279479 (=> (not res!974256) (not e!1460037))))

(assert (=> b!2279479 (= res!974256 (= (head!4934 otherP!12) (head!4934 input!1722)))))

(declare-fun b!2279478 () Bool)

(declare-fun e!1460038 () Bool)

(assert (=> b!2279478 (= e!1460038 e!1460037)))

(declare-fun res!974255 () Bool)

(assert (=> b!2279478 (=> (not res!974255) (not e!1460037))))

(assert (=> b!2279478 (= res!974255 (not ((_ is Nil!27096) input!1722)))))

(declare-fun d!674782 () Bool)

(assert (=> d!674782 e!1460036))

(declare-fun res!974253 () Bool)

(assert (=> d!674782 (=> res!974253 e!1460036)))

(declare-fun lt!846193 () Bool)

(assert (=> d!674782 (= res!974253 (not lt!846193))))

(assert (=> d!674782 (= lt!846193 e!1460038)))

(declare-fun res!974254 () Bool)

(assert (=> d!674782 (=> res!974254 e!1460038)))

(assert (=> d!674782 (= res!974254 ((_ is Nil!27096) otherP!12))))

(assert (=> d!674782 (= (isPrefix!2315 otherP!12 input!1722) lt!846193)))

(assert (= (and d!674782 (not res!974254)) b!2279478))

(assert (= (and b!2279478 res!974255) b!2279479))

(assert (= (and b!2279479 res!974256) b!2279480))

(assert (= (and d!674782 (not res!974253)) b!2279481))

(declare-fun m!2707731 () Bool)

(assert (=> b!2279480 m!2707731))

(assert (=> b!2279480 m!2707553))

(assert (=> b!2279480 m!2707731))

(assert (=> b!2279480 m!2707553))

(declare-fun m!2707733 () Bool)

(assert (=> b!2279480 m!2707733))

(assert (=> b!2279481 m!2707557))

(assert (=> b!2279481 m!2707509))

(declare-fun m!2707735 () Bool)

(assert (=> b!2279479 m!2707735))

(assert (=> b!2279479 m!2707561))

(assert (=> b!2279273 d!674782))

(declare-fun d!674784 () Bool)

(assert (=> d!674784 (= (_2!15921 lt!846135) lt!846133)))

(declare-fun lt!846196 () Unit!40030)

(declare-fun choose!13295 (List!27190 List!27190 List!27190 List!27190 List!27190) Unit!40030)

(assert (=> d!674784 (= lt!846196 (choose!13295 lt!846134 (_2!15921 lt!846135) lt!846134 lt!846133 input!1722))))

(assert (=> d!674784 (isPrefix!2315 lt!846134 input!1722)))

(assert (=> d!674784 (= (lemmaSamePrefixThenSameSuffix!1016 lt!846134 (_2!15921 lt!846135) lt!846134 lt!846133 input!1722) lt!846196)))

(declare-fun bs!456534 () Bool)

(assert (= bs!456534 d!674784))

(declare-fun m!2707737 () Bool)

(assert (=> bs!456534 m!2707737))

(assert (=> bs!456534 m!2707529))

(assert (=> b!2279284 d!674784))

(declare-fun d!674786 () Bool)

(declare-fun lt!846199 () Int)

(assert (=> d!674786 (>= lt!846199 0)))

(declare-fun e!1460041 () Int)

(assert (=> d!674786 (= lt!846199 e!1460041)))

(declare-fun c!361821 () Bool)

(assert (=> d!674786 (= c!361821 ((_ is Nil!27096) lt!846134))))

(assert (=> d!674786 (= (size!21304 lt!846134) lt!846199)))

(declare-fun b!2279486 () Bool)

(assert (=> b!2279486 (= e!1460041 0)))

(declare-fun b!2279487 () Bool)

(assert (=> b!2279487 (= e!1460041 (+ 1 (size!21304 (t!203398 lt!846134))))))

(assert (= (and d!674786 c!361821) b!2279486))

(assert (= (and d!674786 (not c!361821)) b!2279487))

(declare-fun m!2707739 () Bool)

(assert (=> b!2279487 m!2707739))

(assert (=> b!2279284 d!674786))

(declare-fun d!674788 () Bool)

(declare-fun lt!846202 () Int)

(assert (=> d!674788 (>= lt!846202 0)))

(declare-fun e!1460048 () Int)

(assert (=> d!674788 (= lt!846202 e!1460048)))

(declare-fun c!361824 () Bool)

(assert (=> d!674788 (= c!361824 ((_ is Nil!27096) otherP!12))))

(assert (=> d!674788 (= (size!21304 otherP!12) lt!846202)))

(declare-fun b!2279494 () Bool)

(assert (=> b!2279494 (= e!1460048 0)))

(declare-fun b!2279495 () Bool)

(assert (=> b!2279495 (= e!1460048 (+ 1 (size!21304 (t!203398 otherP!12))))))

(assert (= (and d!674788 c!361824) b!2279494))

(assert (= (and d!674788 (not c!361824)) b!2279495))

(declare-fun m!2707741 () Bool)

(assert (=> b!2279495 m!2707741))

(assert (=> b!2279284 d!674788))

(declare-fun d!674790 () Bool)

(declare-fun list!10556 (Conc!8798) List!27190)

(assert (=> d!674790 (= (list!10552 (charsOf!2713 (h!32498 tokens!456))) (list!10556 (c!361788 (charsOf!2713 (h!32498 tokens!456)))))))

(declare-fun bs!456535 () Bool)

(assert (= bs!456535 d!674790))

(declare-fun m!2707743 () Bool)

(assert (=> bs!456535 m!2707743))

(assert (=> b!2279284 d!674790))

(declare-fun lt!846206 () List!27190)

(declare-fun b!2279516 () Bool)

(declare-fun e!1460057 () Bool)

(assert (=> b!2279516 (= e!1460057 (or (not (= (_2!15921 lt!846135) Nil!27096)) (= lt!846206 lt!846134)))))

(declare-fun b!2279514 () Bool)

(declare-fun e!1460056 () List!27190)

(assert (=> b!2279514 (= e!1460056 (Cons!27096 (h!32497 lt!846134) (++!6617 (t!203398 lt!846134) (_2!15921 lt!846135))))))

(declare-fun b!2279515 () Bool)

(declare-fun res!974271 () Bool)

(assert (=> b!2279515 (=> (not res!974271) (not e!1460057))))

(assert (=> b!2279515 (= res!974271 (= (size!21304 lt!846206) (+ (size!21304 lt!846134) (size!21304 (_2!15921 lt!846135)))))))

(declare-fun d!674792 () Bool)

(assert (=> d!674792 e!1460057))

(declare-fun res!974270 () Bool)

(assert (=> d!674792 (=> (not res!974270) (not e!1460057))))

(declare-fun content!3623 (List!27190) (InoxSet C!13492))

(assert (=> d!674792 (= res!974270 (= (content!3623 lt!846206) ((_ map or) (content!3623 lt!846134) (content!3623 (_2!15921 lt!846135)))))))

(assert (=> d!674792 (= lt!846206 e!1460056)))

(declare-fun c!361828 () Bool)

(assert (=> d!674792 (= c!361828 ((_ is Nil!27096) lt!846134))))

(assert (=> d!674792 (= (++!6617 lt!846134 (_2!15921 lt!846135)) lt!846206)))

(declare-fun b!2279513 () Bool)

(assert (=> b!2279513 (= e!1460056 (_2!15921 lt!846135))))

(assert (= (and d!674792 c!361828) b!2279513))

(assert (= (and d!674792 (not c!361828)) b!2279514))

(assert (= (and d!674792 res!974270) b!2279515))

(assert (= (and b!2279515 res!974271) b!2279516))

(declare-fun m!2707765 () Bool)

(assert (=> b!2279514 m!2707765))

(declare-fun m!2707767 () Bool)

(assert (=> b!2279515 m!2707767))

(assert (=> b!2279515 m!2707521))

(declare-fun m!2707769 () Bool)

(assert (=> b!2279515 m!2707769))

(declare-fun m!2707771 () Bool)

(assert (=> d!674792 m!2707771))

(declare-fun m!2707773 () Bool)

(assert (=> d!674792 m!2707773))

(declare-fun m!2707775 () Bool)

(assert (=> d!674792 m!2707775))

(assert (=> b!2279284 d!674792))

(declare-fun d!674800 () Bool)

(declare-fun lt!846209 () List!27190)

(assert (=> d!674800 (= (++!6617 lt!846134 lt!846209) input!1722)))

(declare-fun e!1460060 () List!27190)

(assert (=> d!674800 (= lt!846209 e!1460060)))

(declare-fun c!361831 () Bool)

(assert (=> d!674800 (= c!361831 ((_ is Cons!27096) lt!846134))))

(assert (=> d!674800 (>= (size!21304 input!1722) (size!21304 lt!846134))))

(assert (=> d!674800 (= (getSuffix!1106 input!1722 lt!846134) lt!846209)))

(declare-fun b!2279521 () Bool)

(assert (=> b!2279521 (= e!1460060 (getSuffix!1106 (tail!3289 input!1722) (t!203398 lt!846134)))))

(declare-fun b!2279522 () Bool)

(assert (=> b!2279522 (= e!1460060 input!1722)))

(assert (= (and d!674800 c!361831) b!2279521))

(assert (= (and d!674800 (not c!361831)) b!2279522))

(declare-fun m!2707777 () Bool)

(assert (=> d!674800 m!2707777))

(assert (=> d!674800 m!2707557))

(assert (=> d!674800 m!2707521))

(assert (=> b!2279521 m!2707553))

(assert (=> b!2279521 m!2707553))

(declare-fun m!2707779 () Bool)

(assert (=> b!2279521 m!2707779))

(assert (=> b!2279284 d!674800))

(declare-fun d!674802 () Bool)

(assert (=> d!674802 (isPrefix!2315 lt!846134 (++!6617 lt!846134 (_2!15921 lt!846135)))))

(declare-fun lt!846212 () Unit!40030)

(declare-fun choose!13296 (List!27190 List!27190) Unit!40030)

(assert (=> d!674802 (= lt!846212 (choose!13296 lt!846134 (_2!15921 lt!846135)))))

(assert (=> d!674802 (= (lemmaConcatTwoListThenFirstIsPrefix!1520 lt!846134 (_2!15921 lt!846135)) lt!846212)))

(declare-fun bs!456537 () Bool)

(assert (= bs!456537 d!674802))

(assert (=> bs!456537 m!2707505))

(assert (=> bs!456537 m!2707505))

(assert (=> bs!456537 m!2707507))

(declare-fun m!2707781 () Bool)

(assert (=> bs!456537 m!2707781))

(assert (=> b!2279284 d!674802))

(declare-fun b!2279525 () Bool)

(declare-fun e!1460062 () Bool)

(assert (=> b!2279525 (= e!1460062 (isPrefix!2315 (tail!3289 lt!846134) (tail!3289 (++!6617 lt!846134 (_2!15921 lt!846135)))))))

(declare-fun b!2279526 () Bool)

(declare-fun e!1460061 () Bool)

(assert (=> b!2279526 (= e!1460061 (>= (size!21304 (++!6617 lt!846134 (_2!15921 lt!846135))) (size!21304 lt!846134)))))

(declare-fun b!2279524 () Bool)

(declare-fun res!974275 () Bool)

(assert (=> b!2279524 (=> (not res!974275) (not e!1460062))))

(assert (=> b!2279524 (= res!974275 (= (head!4934 lt!846134) (head!4934 (++!6617 lt!846134 (_2!15921 lt!846135)))))))

(declare-fun b!2279523 () Bool)

(declare-fun e!1460063 () Bool)

(assert (=> b!2279523 (= e!1460063 e!1460062)))

(declare-fun res!974274 () Bool)

(assert (=> b!2279523 (=> (not res!974274) (not e!1460062))))

(assert (=> b!2279523 (= res!974274 (not ((_ is Nil!27096) (++!6617 lt!846134 (_2!15921 lt!846135)))))))

(declare-fun d!674804 () Bool)

(assert (=> d!674804 e!1460061))

(declare-fun res!974272 () Bool)

(assert (=> d!674804 (=> res!974272 e!1460061)))

(declare-fun lt!846213 () Bool)

(assert (=> d!674804 (= res!974272 (not lt!846213))))

(assert (=> d!674804 (= lt!846213 e!1460063)))

(declare-fun res!974273 () Bool)

(assert (=> d!674804 (=> res!974273 e!1460063)))

(assert (=> d!674804 (= res!974273 ((_ is Nil!27096) lt!846134))))

(assert (=> d!674804 (= (isPrefix!2315 lt!846134 (++!6617 lt!846134 (_2!15921 lt!846135))) lt!846213)))

(assert (= (and d!674804 (not res!974273)) b!2279523))

(assert (= (and b!2279523 res!974274) b!2279524))

(assert (= (and b!2279524 res!974275) b!2279525))

(assert (= (and d!674804 (not res!974272)) b!2279526))

(assert (=> b!2279525 m!2707551))

(assert (=> b!2279525 m!2707505))

(declare-fun m!2707783 () Bool)

(assert (=> b!2279525 m!2707783))

(assert (=> b!2279525 m!2707551))

(assert (=> b!2279525 m!2707783))

(declare-fun m!2707785 () Bool)

(assert (=> b!2279525 m!2707785))

(assert (=> b!2279526 m!2707505))

(declare-fun m!2707787 () Bool)

(assert (=> b!2279526 m!2707787))

(assert (=> b!2279526 m!2707521))

(assert (=> b!2279524 m!2707559))

(assert (=> b!2279524 m!2707505))

(declare-fun m!2707789 () Bool)

(assert (=> b!2279524 m!2707789))

(assert (=> b!2279284 d!674804))

(declare-fun d!674806 () Bool)

(declare-fun lt!846216 () BalanceConc!17324)

(assert (=> d!674806 (= (list!10552 lt!846216) (originalCharacters!5095 (h!32498 tokens!456)))))

(assert (=> d!674806 (= lt!846216 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (value!137082 (h!32498 tokens!456))))))

(assert (=> d!674806 (= (charsOf!2713 (h!32498 tokens!456)) lt!846216)))

(declare-fun b_lambda!72567 () Bool)

(assert (=> (not b_lambda!72567) (not d!674806)))

(assert (=> d!674806 t!203402))

(declare-fun b_and!179961 () Bool)

(assert (= b_and!179937 (and (=> t!203402 result!165174) b_and!179961)))

(assert (=> d!674806 t!203404))

(declare-fun b_and!179963 () Bool)

(assert (= b_and!179939 (and (=> t!203404 result!165178) b_and!179963)))

(assert (=> d!674806 t!203406))

(declare-fun b_and!179965 () Bool)

(assert (= b_and!179941 (and (=> t!203406 result!165180) b_and!179965)))

(assert (=> d!674806 t!203408))

(declare-fun b_and!179967 () Bool)

(assert (= b_and!179943 (and (=> t!203408 result!165182) b_and!179967)))

(declare-fun m!2707791 () Bool)

(assert (=> d!674806 m!2707791))

(assert (=> d!674806 m!2707601))

(assert (=> b!2279284 d!674806))

(declare-fun d!674808 () Bool)

(assert (=> d!674808 (= (head!4932 tokens!456) (h!32498 tokens!456))))

(assert (=> b!2279278 d!674808))

(declare-fun d!674810 () Bool)

(declare-fun lt!846229 () Int)

(assert (=> d!674810 (= lt!846229 (size!21304 (list!10552 (charsOf!2713 (head!4932 tokens!456)))))))

(declare-fun size!21307 (Conc!8798) Int)

(assert (=> d!674810 (= lt!846229 (size!21307 (c!361788 (charsOf!2713 (head!4932 tokens!456)))))))

(assert (=> d!674810 (= (size!21303 (charsOf!2713 (head!4932 tokens!456))) lt!846229)))

(declare-fun bs!456538 () Bool)

(assert (= bs!456538 d!674810))

(assert (=> bs!456538 m!2707533))

(assert (=> bs!456538 m!2707537))

(assert (=> bs!456538 m!2707537))

(declare-fun m!2707793 () Bool)

(assert (=> bs!456538 m!2707793))

(declare-fun m!2707795 () Bool)

(assert (=> bs!456538 m!2707795))

(assert (=> b!2279277 d!674810))

(declare-fun d!674812 () Bool)

(declare-fun lt!846230 () BalanceConc!17324)

(assert (=> d!674812 (= (list!10552 lt!846230) (originalCharacters!5095 (head!4932 tokens!456)))))

(assert (=> d!674812 (= lt!846230 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456)))) (value!137082 (head!4932 tokens!456))))))

(assert (=> d!674812 (= (charsOf!2713 (head!4932 tokens!456)) lt!846230)))

(declare-fun b_lambda!72569 () Bool)

(assert (=> (not b_lambda!72569) (not d!674812)))

(declare-fun t!203426 () Bool)

(declare-fun tb!135495 () Bool)

(assert (=> (and b!2279270 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203426) tb!135495))

(declare-fun b!2279545 () Bool)

(declare-fun e!1460070 () Bool)

(declare-fun tp!722193 () Bool)

(assert (=> b!2279545 (= e!1460070 (and (inv!36686 (c!361788 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456)))) (value!137082 (head!4932 tokens!456))))) tp!722193))))

(declare-fun result!165202 () Bool)

(assert (=> tb!135495 (= result!165202 (and (inv!36687 (dynLambda!11769 (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456)))) (value!137082 (head!4932 tokens!456)))) e!1460070))))

(assert (= tb!135495 b!2279545))

(declare-fun m!2707797 () Bool)

(assert (=> b!2279545 m!2707797))

(declare-fun m!2707799 () Bool)

(assert (=> tb!135495 m!2707799))

(assert (=> d!674812 t!203426))

(declare-fun b_and!179969 () Bool)

(assert (= b_and!179961 (and (=> t!203426 result!165202) b_and!179969)))

(declare-fun t!203428 () Bool)

(declare-fun tb!135497 () Bool)

(assert (=> (and b!2279293 (= (toChars!5966 (transformation!4325 otherR!12)) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203428) tb!135497))

(declare-fun result!165204 () Bool)

(assert (= result!165204 result!165202))

(assert (=> d!674812 t!203428))

(declare-fun b_and!179971 () Bool)

(assert (= b_and!179963 (and (=> t!203428 result!165204) b_and!179971)))

(declare-fun tb!135499 () Bool)

(declare-fun t!203430 () Bool)

(assert (=> (and b!2279296 (= (toChars!5966 (transformation!4325 r!2363)) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203430) tb!135499))

(declare-fun result!165206 () Bool)

(assert (= result!165206 result!165202))

(assert (=> d!674812 t!203430))

(declare-fun b_and!179973 () Bool)

(assert (= b_and!179965 (and (=> t!203430 result!165206) b_and!179973)))

(declare-fun t!203432 () Bool)

(declare-fun tb!135501 () Bool)

(assert (=> (and b!2279290 (= (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203432) tb!135501))

(declare-fun result!165208 () Bool)

(assert (= result!165208 result!165202))

(assert (=> d!674812 t!203432))

(declare-fun b_and!179975 () Bool)

(assert (= b_and!179967 (and (=> t!203432 result!165208) b_and!179975)))

(declare-fun m!2707801 () Bool)

(assert (=> d!674812 m!2707801))

(declare-fun m!2707803 () Bool)

(assert (=> d!674812 m!2707803))

(assert (=> b!2279277 d!674812))

(assert (=> b!2279277 d!674808))

(assert (=> b!2279277 d!674788))

(declare-fun d!674814 () Bool)

(declare-fun res!974299 () Bool)

(declare-fun e!1460076 () Bool)

(assert (=> d!674814 (=> (not res!974299) (not e!1460076))))

(declare-fun rulesValid!1592 (LexerInterface!3922 List!27192) Bool)

(assert (=> d!674814 (= res!974299 (rulesValid!1592 thiss!16613 rules!1750))))

(assert (=> d!674814 (= (rulesInvariant!3424 thiss!16613 rules!1750) e!1460076)))

(declare-fun b!2279557 () Bool)

(declare-datatypes ((List!27194 0))(
  ( (Nil!27100) (Cons!27100 (h!32501 String!29539) (t!203450 List!27194)) )
))
(declare-fun noDuplicateTag!1590 (LexerInterface!3922 List!27192 List!27194) Bool)

(assert (=> b!2279557 (= e!1460076 (noDuplicateTag!1590 thiss!16613 rules!1750 Nil!27100))))

(assert (= (and d!674814 res!974299) b!2279557))

(declare-fun m!2707811 () Bool)

(assert (=> d!674814 m!2707811))

(declare-fun m!2707815 () Bool)

(assert (=> b!2279557 m!2707815))

(assert (=> b!2279288 d!674814))

(declare-fun d!674816 () Bool)

(assert (=> d!674816 (= (isEmpty!15382 rules!1750) ((_ is Nil!27098) rules!1750))))

(assert (=> b!2279287 d!674816))

(declare-fun b!2279578 () Bool)

(declare-fun e!1460090 () Int)

(declare-fun e!1460091 () Int)

(assert (=> b!2279578 (= e!1460090 e!1460091)))

(declare-fun c!361840 () Bool)

(assert (=> b!2279578 (= c!361840 (and ((_ is Cons!27098) rules!1750) (not (= (h!32499 rules!1750) r!2363))))))

(declare-fun b!2279579 () Bool)

(assert (=> b!2279579 (= e!1460091 (+ 1 (getIndex!338 (t!203400 rules!1750) r!2363)))))

(declare-fun b!2279577 () Bool)

(assert (=> b!2279577 (= e!1460090 0)))

(declare-fun d!674820 () Bool)

(declare-fun lt!846240 () Int)

(assert (=> d!674820 (>= lt!846240 0)))

(assert (=> d!674820 (= lt!846240 e!1460090)))

(declare-fun c!361839 () Bool)

(assert (=> d!674820 (= c!361839 (and ((_ is Cons!27098) rules!1750) (= (h!32499 rules!1750) r!2363)))))

(assert (=> d!674820 (contains!4697 rules!1750 r!2363)))

(assert (=> d!674820 (= (getIndex!338 rules!1750 r!2363) lt!846240)))

(declare-fun b!2279580 () Bool)

(assert (=> b!2279580 (= e!1460091 (- 1))))

(assert (= (and d!674820 c!361839) b!2279577))

(assert (= (and d!674820 (not c!361839)) b!2279578))

(assert (= (and b!2279578 c!361840) b!2279579))

(assert (= (and b!2279578 (not c!361840)) b!2279580))

(declare-fun m!2707855 () Bool)

(assert (=> b!2279579 m!2707855))

(assert (=> d!674820 m!2707541))

(assert (=> b!2279298 d!674820))

(declare-fun b!2279582 () Bool)

(declare-fun e!1460092 () Int)

(declare-fun e!1460093 () Int)

(assert (=> b!2279582 (= e!1460092 e!1460093)))

(declare-fun c!361842 () Bool)

(assert (=> b!2279582 (= c!361842 (and ((_ is Cons!27098) rules!1750) (not (= (h!32499 rules!1750) otherR!12))))))

(declare-fun b!2279583 () Bool)

(assert (=> b!2279583 (= e!1460093 (+ 1 (getIndex!338 (t!203400 rules!1750) otherR!12)))))

(declare-fun b!2279581 () Bool)

(assert (=> b!2279581 (= e!1460092 0)))

(declare-fun d!674836 () Bool)

(declare-fun lt!846242 () Int)

(assert (=> d!674836 (>= lt!846242 0)))

(assert (=> d!674836 (= lt!846242 e!1460092)))

(declare-fun c!361841 () Bool)

(assert (=> d!674836 (= c!361841 (and ((_ is Cons!27098) rules!1750) (= (h!32499 rules!1750) otherR!12)))))

(assert (=> d!674836 (contains!4697 rules!1750 otherR!12)))

(assert (=> d!674836 (= (getIndex!338 rules!1750 otherR!12) lt!846242)))

(declare-fun b!2279584 () Bool)

(assert (=> b!2279584 (= e!1460093 (- 1))))

(assert (= (and d!674836 c!361841) b!2279581))

(assert (= (and d!674836 (not c!361841)) b!2279582))

(assert (= (and b!2279582 c!361842) b!2279583))

(assert (= (and b!2279582 (not c!361842)) b!2279584))

(declare-fun m!2707857 () Bool)

(assert (=> b!2279583 m!2707857))

(assert (=> d!674836 m!2707547))

(assert (=> b!2279298 d!674836))

(declare-fun d!674838 () Bool)

(declare-fun res!974317 () Bool)

(declare-fun e!1460098 () Bool)

(assert (=> d!674838 (=> (not res!974317) (not e!1460098))))

(declare-fun validRegex!2508 (Regex!6673) Bool)

(assert (=> d!674838 (= res!974317 (validRegex!2508 (regex!4325 otherR!12)))))

(assert (=> d!674838 (= (ruleValid!1415 thiss!16613 otherR!12) e!1460098)))

(declare-fun b!2279591 () Bool)

(declare-fun res!974318 () Bool)

(assert (=> b!2279591 (=> (not res!974318) (not e!1460098))))

(declare-fun nullable!1846 (Regex!6673) Bool)

(assert (=> b!2279591 (= res!974318 (not (nullable!1846 (regex!4325 otherR!12))))))

(declare-fun b!2279592 () Bool)

(assert (=> b!2279592 (= e!1460098 (not (= (tag!4815 otherR!12) (String!29540 ""))))))

(assert (= (and d!674838 res!974317) b!2279591))

(assert (= (and b!2279591 res!974318) b!2279592))

(declare-fun m!2707863 () Bool)

(assert (=> d!674838 m!2707863))

(declare-fun m!2707865 () Bool)

(assert (=> b!2279591 m!2707865))

(assert (=> b!2279298 d!674838))

(declare-fun d!674844 () Bool)

(assert (=> d!674844 (ruleValid!1415 thiss!16613 otherR!12)))

(declare-fun lt!846248 () Unit!40030)

(declare-fun choose!13297 (LexerInterface!3922 Rule!8450 List!27192) Unit!40030)

(assert (=> d!674844 (= lt!846248 (choose!13297 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!674844 (contains!4697 rules!1750 otherR!12)))

(assert (=> d!674844 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!820 thiss!16613 otherR!12 rules!1750) lt!846248)))

(declare-fun bs!456540 () Bool)

(assert (= bs!456540 d!674844))

(assert (=> bs!456540 m!2707491))

(declare-fun m!2707867 () Bool)

(assert (=> bs!456540 m!2707867))

(assert (=> bs!456540 m!2707547))

(assert (=> b!2279298 d!674844))

(declare-fun d!674846 () Bool)

(declare-fun res!974319 () Bool)

(declare-fun e!1460106 () Bool)

(assert (=> d!674846 (=> (not res!974319) (not e!1460106))))

(assert (=> d!674846 (= res!974319 (validRegex!2508 (regex!4325 r!2363)))))

(assert (=> d!674846 (= (ruleValid!1415 thiss!16613 r!2363) e!1460106)))

(declare-fun b!2279605 () Bool)

(declare-fun res!974320 () Bool)

(assert (=> b!2279605 (=> (not res!974320) (not e!1460106))))

(assert (=> b!2279605 (= res!974320 (not (nullable!1846 (regex!4325 r!2363))))))

(declare-fun b!2279606 () Bool)

(assert (=> b!2279606 (= e!1460106 (not (= (tag!4815 r!2363) (String!29540 ""))))))

(assert (= (and d!674846 res!974319) b!2279605))

(assert (= (and b!2279605 res!974320) b!2279606))

(declare-fun m!2707871 () Bool)

(assert (=> d!674846 m!2707871))

(declare-fun m!2707873 () Bool)

(assert (=> b!2279605 m!2707873))

(assert (=> b!2279297 d!674846))

(declare-fun d!674850 () Bool)

(assert (=> d!674850 (ruleValid!1415 thiss!16613 r!2363)))

(declare-fun lt!846251 () Unit!40030)

(assert (=> d!674850 (= lt!846251 (choose!13297 thiss!16613 r!2363 rules!1750))))

(assert (=> d!674850 (contains!4697 rules!1750 r!2363)))

(assert (=> d!674850 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!820 thiss!16613 r!2363 rules!1750) lt!846251)))

(declare-fun bs!456541 () Bool)

(assert (= bs!456541 d!674850))

(assert (=> bs!456541 m!2707479))

(declare-fun m!2707875 () Bool)

(assert (=> bs!456541 m!2707875))

(assert (=> bs!456541 m!2707541))

(assert (=> b!2279297 d!674850))

(declare-fun b!2279673 () Bool)

(declare-fun e!1460144 () Bool)

(declare-fun lt!846258 () Bool)

(declare-fun call!136412 () Bool)

(assert (=> b!2279673 (= e!1460144 (= lt!846258 call!136412))))

(declare-fun b!2279674 () Bool)

(declare-fun e!1460142 () Bool)

(declare-fun e!1460145 () Bool)

(assert (=> b!2279674 (= e!1460142 e!1460145)))

(declare-fun res!974356 () Bool)

(assert (=> b!2279674 (=> res!974356 e!1460145)))

(assert (=> b!2279674 (= res!974356 call!136412)))

(declare-fun b!2279675 () Bool)

(declare-fun e!1460141 () Bool)

(assert (=> b!2279675 (= e!1460141 (not lt!846258))))

(declare-fun b!2279676 () Bool)

(declare-fun res!974351 () Bool)

(declare-fun e!1460143 () Bool)

(assert (=> b!2279676 (=> (not res!974351) (not e!1460143))))

(assert (=> b!2279676 (= res!974351 (not call!136412))))

(declare-fun b!2279677 () Bool)

(declare-fun res!974354 () Bool)

(declare-fun e!1460139 () Bool)

(assert (=> b!2279677 (=> res!974354 e!1460139)))

(assert (=> b!2279677 (= res!974354 (not ((_ is ElementMatch!6673) (regex!4325 r!2363))))))

(assert (=> b!2279677 (= e!1460141 e!1460139)))

(declare-fun b!2279678 () Bool)

(declare-fun e!1460140 () Bool)

(assert (=> b!2279678 (= e!1460140 (nullable!1846 (regex!4325 r!2363)))))

(declare-fun b!2279679 () Bool)

(assert (=> b!2279679 (= e!1460143 (= (head!4934 (list!10552 (charsOf!2713 (head!4932 tokens!456)))) (c!361789 (regex!4325 r!2363))))))

(declare-fun d!674852 () Bool)

(assert (=> d!674852 e!1460144))

(declare-fun c!361864 () Bool)

(assert (=> d!674852 (= c!361864 ((_ is EmptyExpr!6673) (regex!4325 r!2363)))))

(assert (=> d!674852 (= lt!846258 e!1460140)))

(declare-fun c!361865 () Bool)

(assert (=> d!674852 (= c!361865 (isEmpty!15384 (list!10552 (charsOf!2713 (head!4932 tokens!456)))))))

(assert (=> d!674852 (validRegex!2508 (regex!4325 r!2363))))

(assert (=> d!674852 (= (matchR!2930 (regex!4325 r!2363) (list!10552 (charsOf!2713 (head!4932 tokens!456)))) lt!846258)))

(declare-fun b!2279680 () Bool)

(declare-fun res!974353 () Bool)

(assert (=> b!2279680 (=> (not res!974353) (not e!1460143))))

(assert (=> b!2279680 (= res!974353 (isEmpty!15384 (tail!3289 (list!10552 (charsOf!2713 (head!4932 tokens!456))))))))

(declare-fun b!2279681 () Bool)

(assert (=> b!2279681 (= e!1460145 (not (= (head!4934 (list!10552 (charsOf!2713 (head!4932 tokens!456)))) (c!361789 (regex!4325 r!2363)))))))

(declare-fun bm!136407 () Bool)

(assert (=> bm!136407 (= call!136412 (isEmpty!15384 (list!10552 (charsOf!2713 (head!4932 tokens!456)))))))

(declare-fun b!2279682 () Bool)

(assert (=> b!2279682 (= e!1460144 e!1460141)))

(declare-fun c!361863 () Bool)

(assert (=> b!2279682 (= c!361863 ((_ is EmptyLang!6673) (regex!4325 r!2363)))))

(declare-fun b!2279683 () Bool)

(assert (=> b!2279683 (= e!1460139 e!1460142)))

(declare-fun res!974352 () Bool)

(assert (=> b!2279683 (=> (not res!974352) (not e!1460142))))

(assert (=> b!2279683 (= res!974352 (not lt!846258))))

(declare-fun b!2279684 () Bool)

(declare-fun derivativeStep!1506 (Regex!6673 C!13492) Regex!6673)

(assert (=> b!2279684 (= e!1460140 (matchR!2930 (derivativeStep!1506 (regex!4325 r!2363) (head!4934 (list!10552 (charsOf!2713 (head!4932 tokens!456))))) (tail!3289 (list!10552 (charsOf!2713 (head!4932 tokens!456))))))))

(declare-fun b!2279685 () Bool)

(declare-fun res!974355 () Bool)

(assert (=> b!2279685 (=> res!974355 e!1460145)))

(assert (=> b!2279685 (= res!974355 (not (isEmpty!15384 (tail!3289 (list!10552 (charsOf!2713 (head!4932 tokens!456)))))))))

(declare-fun b!2279686 () Bool)

(declare-fun res!974350 () Bool)

(assert (=> b!2279686 (=> res!974350 e!1460139)))

(assert (=> b!2279686 (= res!974350 e!1460143)))

(declare-fun res!974349 () Bool)

(assert (=> b!2279686 (=> (not res!974349) (not e!1460143))))

(assert (=> b!2279686 (= res!974349 lt!846258)))

(assert (= (and d!674852 c!361865) b!2279678))

(assert (= (and d!674852 (not c!361865)) b!2279684))

(assert (= (and d!674852 c!361864) b!2279673))

(assert (= (and d!674852 (not c!361864)) b!2279682))

(assert (= (and b!2279682 c!361863) b!2279675))

(assert (= (and b!2279682 (not c!361863)) b!2279677))

(assert (= (and b!2279677 (not res!974354)) b!2279686))

(assert (= (and b!2279686 res!974349) b!2279676))

(assert (= (and b!2279676 res!974351) b!2279680))

(assert (= (and b!2279680 res!974353) b!2279679))

(assert (= (and b!2279686 (not res!974350)) b!2279683))

(assert (= (and b!2279683 res!974352) b!2279674))

(assert (= (and b!2279674 (not res!974356)) b!2279685))

(assert (= (and b!2279685 (not res!974355)) b!2279681))

(assert (= (or b!2279673 b!2279674 b!2279676) bm!136407))

(assert (=> d!674852 m!2707537))

(declare-fun m!2707905 () Bool)

(assert (=> d!674852 m!2707905))

(assert (=> d!674852 m!2707871))

(assert (=> b!2279679 m!2707537))

(declare-fun m!2707907 () Bool)

(assert (=> b!2279679 m!2707907))

(assert (=> b!2279678 m!2707873))

(assert (=> b!2279684 m!2707537))

(assert (=> b!2279684 m!2707907))

(assert (=> b!2279684 m!2707907))

(declare-fun m!2707909 () Bool)

(assert (=> b!2279684 m!2707909))

(assert (=> b!2279684 m!2707537))

(declare-fun m!2707911 () Bool)

(assert (=> b!2279684 m!2707911))

(assert (=> b!2279684 m!2707909))

(assert (=> b!2279684 m!2707911))

(declare-fun m!2707913 () Bool)

(assert (=> b!2279684 m!2707913))

(assert (=> bm!136407 m!2707537))

(assert (=> bm!136407 m!2707905))

(assert (=> b!2279681 m!2707537))

(assert (=> b!2279681 m!2707907))

(assert (=> b!2279680 m!2707537))

(assert (=> b!2279680 m!2707911))

(assert (=> b!2279680 m!2707911))

(declare-fun m!2707915 () Bool)

(assert (=> b!2279680 m!2707915))

(assert (=> b!2279685 m!2707537))

(assert (=> b!2279685 m!2707911))

(assert (=> b!2279685 m!2707911))

(assert (=> b!2279685 m!2707915))

(assert (=> b!2279276 d!674852))

(declare-fun d!674868 () Bool)

(assert (=> d!674868 (= (list!10552 (charsOf!2713 (head!4932 tokens!456))) (list!10556 (c!361788 (charsOf!2713 (head!4932 tokens!456)))))))

(declare-fun bs!456544 () Bool)

(assert (= bs!456544 d!674868))

(declare-fun m!2707917 () Bool)

(assert (=> bs!456544 m!2707917))

(assert (=> b!2279276 d!674868))

(assert (=> b!2279276 d!674812))

(assert (=> b!2279276 d!674808))

(declare-fun d!674870 () Bool)

(assert (=> d!674870 (= (inv!36679 (tag!4815 (rule!6651 (h!32498 tokens!456)))) (= (mod (str.len (value!137081 (tag!4815 (rule!6651 (h!32498 tokens!456))))) 2) 0))))

(assert (=> b!2279291 d!674870))

(declare-fun d!674872 () Bool)

(declare-fun res!974357 () Bool)

(declare-fun e!1460156 () Bool)

(assert (=> d!674872 (=> (not res!974357) (not e!1460156))))

(assert (=> d!674872 (= res!974357 (semiInverseModEq!1748 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (toValue!6107 (transformation!4325 (rule!6651 (h!32498 tokens!456))))))))

(assert (=> d!674872 (= (inv!36682 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) e!1460156)))

(declare-fun b!2279702 () Bool)

(assert (=> b!2279702 (= e!1460156 (equivClasses!1667 (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))) (toValue!6107 (transformation!4325 (rule!6651 (h!32498 tokens!456))))))))

(assert (= (and d!674872 res!974357) b!2279702))

(declare-fun m!2707919 () Bool)

(assert (=> d!674872 m!2707919))

(declare-fun m!2707921 () Bool)

(assert (=> b!2279702 m!2707921))

(assert (=> b!2279291 d!674872))

(declare-fun d!674874 () Bool)

(declare-fun lt!846259 () Bool)

(assert (=> d!674874 (= lt!846259 (select (content!3622 rules!1750) r!2363))))

(declare-fun e!1460160 () Bool)

(assert (=> d!674874 (= lt!846259 e!1460160)))

(declare-fun res!974359 () Bool)

(assert (=> d!674874 (=> (not res!974359) (not e!1460160))))

(assert (=> d!674874 (= res!974359 ((_ is Cons!27098) rules!1750))))

(assert (=> d!674874 (= (contains!4697 rules!1750 r!2363) lt!846259)))

(declare-fun b!2279705 () Bool)

(declare-fun e!1460159 () Bool)

(assert (=> b!2279705 (= e!1460160 e!1460159)))

(declare-fun res!974358 () Bool)

(assert (=> b!2279705 (=> res!974358 e!1460159)))

(assert (=> b!2279705 (= res!974358 (= (h!32499 rules!1750) r!2363))))

(declare-fun b!2279706 () Bool)

(assert (=> b!2279706 (= e!1460159 (contains!4697 (t!203400 rules!1750) r!2363))))

(assert (= (and d!674874 res!974359) b!2279705))

(assert (= (and b!2279705 (not res!974358)) b!2279706))

(assert (=> d!674874 m!2707717))

(declare-fun m!2707923 () Bool)

(assert (=> d!674874 m!2707923))

(declare-fun m!2707925 () Bool)

(assert (=> b!2279706 m!2707925))

(assert (=> b!2279280 d!674874))

(declare-fun d!674876 () Bool)

(declare-fun list!10557 (Conc!8799) List!27191)

(assert (=> d!674876 (= (list!10553 (_1!15922 lt!846138)) (list!10557 (c!361790 (_1!15922 lt!846138))))))

(declare-fun bs!456545 () Bool)

(assert (= bs!456545 d!674876))

(declare-fun m!2707927 () Bool)

(assert (=> bs!456545 m!2707927))

(assert (=> b!2279289 d!674876))

(declare-fun d!674878 () Bool)

(assert (=> d!674878 (= (list!10552 (_2!15922 lt!846138)) (list!10556 (c!361788 (_2!15922 lt!846138))))))

(declare-fun bs!456546 () Bool)

(assert (= bs!456546 d!674878))

(declare-fun m!2707929 () Bool)

(assert (=> bs!456546 m!2707929))

(assert (=> b!2279289 d!674878))

(declare-fun b!2279749 () Bool)

(declare-fun res!974367 () Bool)

(declare-fun e!1460197 () Bool)

(assert (=> b!2279749 (=> (not res!974367) (not e!1460197))))

(declare-fun lt!846262 () tuple2!26824)

(declare-fun lexList!1092 (LexerInterface!3922 List!27192 List!27190) tuple2!26826)

(assert (=> b!2279749 (= res!974367 (= (list!10553 (_1!15922 lt!846262)) (_1!15923 (lexList!1092 thiss!16613 rules!1750 (list!10552 (seqFromList!3029 input!1722))))))))

(declare-fun b!2279750 () Bool)

(assert (=> b!2279750 (= e!1460197 (= (list!10552 (_2!15922 lt!846262)) (_2!15923 (lexList!1092 thiss!16613 rules!1750 (list!10552 (seqFromList!3029 input!1722))))))))

(declare-fun b!2279751 () Bool)

(declare-fun e!1460196 () Bool)

(declare-fun isEmpty!15388 (BalanceConc!17326) Bool)

(assert (=> b!2279751 (= e!1460196 (not (isEmpty!15388 (_1!15922 lt!846262))))))

(declare-fun b!2279752 () Bool)

(declare-fun e!1460195 () Bool)

(assert (=> b!2279752 (= e!1460195 e!1460196)))

(declare-fun res!974366 () Bool)

(assert (=> b!2279752 (= res!974366 (< (size!21303 (_2!15922 lt!846262)) (size!21303 (seqFromList!3029 input!1722))))))

(assert (=> b!2279752 (=> (not res!974366) (not e!1460196))))

(declare-fun d!674880 () Bool)

(assert (=> d!674880 e!1460197))

(declare-fun res!974368 () Bool)

(assert (=> d!674880 (=> (not res!974368) (not e!1460197))))

(assert (=> d!674880 (= res!974368 e!1460195)))

(declare-fun c!361868 () Bool)

(declare-fun size!21308 (BalanceConc!17326) Int)

(assert (=> d!674880 (= c!361868 (> (size!21308 (_1!15922 lt!846262)) 0))))

(declare-fun lexTailRecV2!767 (LexerInterface!3922 List!27192 BalanceConc!17324 BalanceConc!17324 BalanceConc!17324 BalanceConc!17326) tuple2!26824)

(assert (=> d!674880 (= lt!846262 (lexTailRecV2!767 thiss!16613 rules!1750 (seqFromList!3029 input!1722) (BalanceConc!17325 Empty!8798) (seqFromList!3029 input!1722) (BalanceConc!17327 Empty!8799)))))

(assert (=> d!674880 (= (lex!1761 thiss!16613 rules!1750 (seqFromList!3029 input!1722)) lt!846262)))

(declare-fun b!2279753 () Bool)

(assert (=> b!2279753 (= e!1460195 (= (_2!15922 lt!846262) (seqFromList!3029 input!1722)))))

(assert (= (and d!674880 c!361868) b!2279752))

(assert (= (and d!674880 (not c!361868)) b!2279753))

(assert (= (and b!2279752 res!974366) b!2279751))

(assert (= (and d!674880 res!974368) b!2279749))

(assert (= (and b!2279749 res!974367) b!2279750))

(declare-fun m!2707943 () Bool)

(assert (=> d!674880 m!2707943))

(assert (=> d!674880 m!2707501))

(assert (=> d!674880 m!2707501))

(declare-fun m!2707945 () Bool)

(assert (=> d!674880 m!2707945))

(declare-fun m!2707947 () Bool)

(assert (=> b!2279749 m!2707947))

(assert (=> b!2279749 m!2707501))

(declare-fun m!2707949 () Bool)

(assert (=> b!2279749 m!2707949))

(assert (=> b!2279749 m!2707949))

(declare-fun m!2707951 () Bool)

(assert (=> b!2279749 m!2707951))

(declare-fun m!2707953 () Bool)

(assert (=> b!2279751 m!2707953))

(declare-fun m!2707955 () Bool)

(assert (=> b!2279750 m!2707955))

(assert (=> b!2279750 m!2707501))

(assert (=> b!2279750 m!2707949))

(assert (=> b!2279750 m!2707949))

(assert (=> b!2279750 m!2707951))

(declare-fun m!2707957 () Bool)

(assert (=> b!2279752 m!2707957))

(assert (=> b!2279752 m!2707501))

(declare-fun m!2707959 () Bool)

(assert (=> b!2279752 m!2707959))

(assert (=> b!2279289 d!674880))

(declare-fun d!674882 () Bool)

(declare-fun fromListB!1358 (List!27190) BalanceConc!17324)

(assert (=> d!674882 (= (seqFromList!3029 input!1722) (fromListB!1358 input!1722))))

(declare-fun bs!456547 () Bool)

(assert (= bs!456547 d!674882))

(declare-fun m!2707961 () Bool)

(assert (=> bs!456547 m!2707961))

(assert (=> b!2279289 d!674882))

(declare-fun b!2279758 () Bool)

(declare-fun e!1460200 () Bool)

(declare-fun tp!722259 () Bool)

(assert (=> b!2279758 (= e!1460200 (and tp_is_empty!10567 tp!722259))))

(assert (=> b!2279294 (= tp!722174 e!1460200)))

(assert (= (and b!2279294 ((_ is Cons!27096) (t!203398 suffix!886))) b!2279758))

(declare-fun b!2279772 () Bool)

(declare-fun e!1460203 () Bool)

(declare-fun tp!722272 () Bool)

(declare-fun tp!722274 () Bool)

(assert (=> b!2279772 (= e!1460203 (and tp!722272 tp!722274))))

(declare-fun b!2279771 () Bool)

(declare-fun tp!722271 () Bool)

(assert (=> b!2279771 (= e!1460203 tp!722271)))

(declare-fun b!2279769 () Bool)

(assert (=> b!2279769 (= e!1460203 tp_is_empty!10567)))

(assert (=> b!2279272 (= tp!722168 e!1460203)))

(declare-fun b!2279770 () Bool)

(declare-fun tp!722273 () Bool)

(declare-fun tp!722270 () Bool)

(assert (=> b!2279770 (= e!1460203 (and tp!722273 tp!722270))))

(assert (= (and b!2279272 ((_ is ElementMatch!6673) (regex!4325 r!2363))) b!2279769))

(assert (= (and b!2279272 ((_ is Concat!11161) (regex!4325 r!2363))) b!2279770))

(assert (= (and b!2279272 ((_ is Star!6673) (regex!4325 r!2363))) b!2279771))

(assert (= (and b!2279272 ((_ is Union!6673) (regex!4325 r!2363))) b!2279772))

(declare-fun b!2279786 () Bool)

(declare-fun b_free!68021 () Bool)

(declare-fun b_next!68725 () Bool)

(assert (=> b!2279786 (= b_free!68021 (not b_next!68725))))

(declare-fun tp!722287 () Bool)

(declare-fun b_and!179993 () Bool)

(assert (=> b!2279786 (= tp!722287 b_and!179993)))

(declare-fun b_free!68023 () Bool)

(declare-fun b_next!68727 () Bool)

(assert (=> b!2279786 (= b_free!68023 (not b_next!68727))))

(declare-fun t!203442 () Bool)

(declare-fun tb!135511 () Bool)

(assert (=> (and b!2279786 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 (t!203399 tokens!456))))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203442) tb!135511))

(declare-fun result!165232 () Bool)

(assert (= result!165232 result!165174))

(assert (=> b!2279343 t!203442))

(assert (=> d!674806 t!203442))

(declare-fun t!203444 () Bool)

(declare-fun tb!135513 () Bool)

(assert (=> (and b!2279786 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 (t!203399 tokens!456))))) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203444) tb!135513))

(declare-fun result!165234 () Bool)

(assert (= result!165234 result!165202))

(assert (=> d!674812 t!203444))

(declare-fun tp!722285 () Bool)

(declare-fun b_and!179995 () Bool)

(assert (=> b!2279786 (= tp!722285 (and (=> t!203442 result!165232) (=> t!203444 result!165234) b_and!179995))))

(declare-fun e!1460219 () Bool)

(declare-fun b!2279785 () Bool)

(declare-fun e!1460216 () Bool)

(declare-fun tp!722288 () Bool)

(assert (=> b!2279785 (= e!1460219 (and tp!722288 (inv!36679 (tag!4815 (rule!6651 (h!32498 (t!203399 tokens!456))))) (inv!36682 (transformation!4325 (rule!6651 (h!32498 (t!203399 tokens!456))))) e!1460216))))

(declare-fun e!1460217 () Bool)

(assert (=> b!2279282 (= tp!722173 e!1460217)))

(assert (=> b!2279786 (= e!1460216 (and tp!722287 tp!722285))))

(declare-fun tp!722289 () Bool)

(declare-fun b!2279783 () Bool)

(declare-fun e!1460220 () Bool)

(assert (=> b!2279783 (= e!1460217 (and (inv!36683 (h!32498 (t!203399 tokens!456))) e!1460220 tp!722289))))

(declare-fun tp!722286 () Bool)

(declare-fun b!2279784 () Bool)

(assert (=> b!2279784 (= e!1460220 (and (inv!21 (value!137082 (h!32498 (t!203399 tokens!456)))) e!1460219 tp!722286))))

(assert (= b!2279785 b!2279786))

(assert (= b!2279784 b!2279785))

(assert (= b!2279783 b!2279784))

(assert (= (and b!2279282 ((_ is Cons!27097) (t!203399 tokens!456))) b!2279783))

(declare-fun m!2707963 () Bool)

(assert (=> b!2279785 m!2707963))

(declare-fun m!2707965 () Bool)

(assert (=> b!2279785 m!2707965))

(declare-fun m!2707967 () Bool)

(assert (=> b!2279783 m!2707967))

(declare-fun m!2707969 () Bool)

(assert (=> b!2279784 m!2707969))

(declare-fun b!2279787 () Bool)

(declare-fun e!1460222 () Bool)

(declare-fun tp!722290 () Bool)

(assert (=> b!2279787 (= e!1460222 (and tp_is_empty!10567 tp!722290))))

(assert (=> b!2279292 (= tp!722171 e!1460222)))

(assert (= (and b!2279292 ((_ is Cons!27096) (originalCharacters!5095 (h!32498 tokens!456)))) b!2279787))

(declare-fun b!2279788 () Bool)

(declare-fun e!1460223 () Bool)

(declare-fun tp!722291 () Bool)

(assert (=> b!2279788 (= e!1460223 (and tp_is_empty!10567 tp!722291))))

(assert (=> b!2279275 (= tp!722175 e!1460223)))

(assert (= (and b!2279275 ((_ is Cons!27096) (t!203398 input!1722))) b!2279788))

(declare-fun b!2279792 () Bool)

(declare-fun e!1460224 () Bool)

(declare-fun tp!722294 () Bool)

(declare-fun tp!722296 () Bool)

(assert (=> b!2279792 (= e!1460224 (and tp!722294 tp!722296))))

(declare-fun b!2279791 () Bool)

(declare-fun tp!722293 () Bool)

(assert (=> b!2279791 (= e!1460224 tp!722293)))

(declare-fun b!2279789 () Bool)

(assert (=> b!2279789 (= e!1460224 tp_is_empty!10567)))

(assert (=> b!2279295 (= tp!722177 e!1460224)))

(declare-fun b!2279790 () Bool)

(declare-fun tp!722295 () Bool)

(declare-fun tp!722292 () Bool)

(assert (=> b!2279790 (= e!1460224 (and tp!722295 tp!722292))))

(assert (= (and b!2279295 ((_ is ElementMatch!6673) (regex!4325 (h!32499 rules!1750)))) b!2279789))

(assert (= (and b!2279295 ((_ is Concat!11161) (regex!4325 (h!32499 rules!1750)))) b!2279790))

(assert (= (and b!2279295 ((_ is Star!6673) (regex!4325 (h!32499 rules!1750)))) b!2279791))

(assert (= (and b!2279295 ((_ is Union!6673) (regex!4325 (h!32499 rules!1750)))) b!2279792))

(declare-fun b!2279796 () Bool)

(declare-fun e!1460225 () Bool)

(declare-fun tp!722299 () Bool)

(declare-fun tp!722301 () Bool)

(assert (=> b!2279796 (= e!1460225 (and tp!722299 tp!722301))))

(declare-fun b!2279795 () Bool)

(declare-fun tp!722298 () Bool)

(assert (=> b!2279795 (= e!1460225 tp!722298)))

(declare-fun b!2279793 () Bool)

(assert (=> b!2279793 (= e!1460225 tp_is_empty!10567)))

(assert (=> b!2279274 (= tp!722184 e!1460225)))

(declare-fun b!2279794 () Bool)

(declare-fun tp!722300 () Bool)

(declare-fun tp!722297 () Bool)

(assert (=> b!2279794 (= e!1460225 (and tp!722300 tp!722297))))

(assert (= (and b!2279274 ((_ is ElementMatch!6673) (regex!4325 otherR!12))) b!2279793))

(assert (= (and b!2279274 ((_ is Concat!11161) (regex!4325 otherR!12))) b!2279794))

(assert (= (and b!2279274 ((_ is Star!6673) (regex!4325 otherR!12))) b!2279795))

(assert (= (and b!2279274 ((_ is Union!6673) (regex!4325 otherR!12))) b!2279796))

(declare-fun b!2279797 () Bool)

(declare-fun e!1460226 () Bool)

(declare-fun tp!722302 () Bool)

(assert (=> b!2279797 (= e!1460226 (and tp_is_empty!10567 tp!722302))))

(assert (=> b!2279267 (= tp!722185 e!1460226)))

(assert (= (and b!2279267 ((_ is Cons!27096) (t!203398 otherP!12))) b!2279797))

(declare-fun b!2279801 () Bool)

(declare-fun e!1460227 () Bool)

(declare-fun tp!722305 () Bool)

(declare-fun tp!722307 () Bool)

(assert (=> b!2279801 (= e!1460227 (and tp!722305 tp!722307))))

(declare-fun b!2279800 () Bool)

(declare-fun tp!722304 () Bool)

(assert (=> b!2279800 (= e!1460227 tp!722304)))

(declare-fun b!2279798 () Bool)

(assert (=> b!2279798 (= e!1460227 tp_is_empty!10567)))

(assert (=> b!2279291 (= tp!722180 e!1460227)))

(declare-fun b!2279799 () Bool)

(declare-fun tp!722306 () Bool)

(declare-fun tp!722303 () Bool)

(assert (=> b!2279799 (= e!1460227 (and tp!722306 tp!722303))))

(assert (= (and b!2279291 ((_ is ElementMatch!6673) (regex!4325 (rule!6651 (h!32498 tokens!456))))) b!2279798))

(assert (= (and b!2279291 ((_ is Concat!11161) (regex!4325 (rule!6651 (h!32498 tokens!456))))) b!2279799))

(assert (= (and b!2279291 ((_ is Star!6673) (regex!4325 (rule!6651 (h!32498 tokens!456))))) b!2279800))

(assert (= (and b!2279291 ((_ is Union!6673) (regex!4325 (rule!6651 (h!32498 tokens!456))))) b!2279801))

(declare-fun b!2279812 () Bool)

(declare-fun b_free!68025 () Bool)

(declare-fun b_next!68729 () Bool)

(assert (=> b!2279812 (= b_free!68025 (not b_next!68729))))

(declare-fun tp!722317 () Bool)

(declare-fun b_and!179997 () Bool)

(assert (=> b!2279812 (= tp!722317 b_and!179997)))

(declare-fun b_free!68027 () Bool)

(declare-fun b_next!68731 () Bool)

(assert (=> b!2279812 (= b_free!68027 (not b_next!68731))))

(declare-fun t!203446 () Bool)

(declare-fun tb!135515 () Bool)

(assert (=> (and b!2279812 (= (toChars!5966 (transformation!4325 (h!32499 (t!203400 rules!1750)))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456))))) t!203446) tb!135515))

(declare-fun result!165238 () Bool)

(assert (= result!165238 result!165174))

(assert (=> b!2279343 t!203446))

(assert (=> d!674806 t!203446))

(declare-fun t!203448 () Bool)

(declare-fun tb!135517 () Bool)

(assert (=> (and b!2279812 (= (toChars!5966 (transformation!4325 (h!32499 (t!203400 rules!1750)))) (toChars!5966 (transformation!4325 (rule!6651 (head!4932 tokens!456))))) t!203448) tb!135517))

(declare-fun result!165240 () Bool)

(assert (= result!165240 result!165202))

(assert (=> d!674812 t!203448))

(declare-fun b_and!179999 () Bool)

(declare-fun tp!722319 () Bool)

(assert (=> b!2279812 (= tp!722319 (and (=> t!203446 result!165238) (=> t!203448 result!165240) b_and!179999))))

(declare-fun e!1460239 () Bool)

(assert (=> b!2279812 (= e!1460239 (and tp!722317 tp!722319))))

(declare-fun b!2279811 () Bool)

(declare-fun e!1460236 () Bool)

(declare-fun tp!722316 () Bool)

(assert (=> b!2279811 (= e!1460236 (and tp!722316 (inv!36679 (tag!4815 (h!32499 (t!203400 rules!1750)))) (inv!36682 (transformation!4325 (h!32499 (t!203400 rules!1750)))) e!1460239))))

(declare-fun b!2279810 () Bool)

(declare-fun e!1460237 () Bool)

(declare-fun tp!722318 () Bool)

(assert (=> b!2279810 (= e!1460237 (and e!1460236 tp!722318))))

(assert (=> b!2279269 (= tp!722172 e!1460237)))

(assert (= b!2279811 b!2279812))

(assert (= b!2279810 b!2279811))

(assert (= (and b!2279269 ((_ is Cons!27098) (t!203400 rules!1750))) b!2279810))

(declare-fun m!2707971 () Bool)

(assert (=> b!2279811 m!2707971))

(declare-fun m!2707973 () Bool)

(assert (=> b!2279811 m!2707973))

(declare-fun b_lambda!72577 () Bool)

(assert (= b_lambda!72561 (or (and b!2279786 b_free!68023 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 (t!203399 tokens!456))))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279296 b_free!68007 (= (toChars!5966 (transformation!4325 r!2363)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279812 b_free!68027 (= (toChars!5966 (transformation!4325 (h!32499 (t!203400 rules!1750)))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279293 b_free!68003 (= (toChars!5966 (transformation!4325 otherR!12)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279290 b_free!68011 (= (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279270 b_free!67999) b_lambda!72577)))

(declare-fun b_lambda!72579 () Bool)

(assert (= b_lambda!72567 (or (and b!2279786 b_free!68023 (= (toChars!5966 (transformation!4325 (rule!6651 (h!32498 (t!203399 tokens!456))))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279296 b_free!68007 (= (toChars!5966 (transformation!4325 r!2363)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279812 b_free!68027 (= (toChars!5966 (transformation!4325 (h!32499 (t!203400 rules!1750)))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279293 b_free!68003 (= (toChars!5966 (transformation!4325 otherR!12)) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279290 b_free!68011 (= (toChars!5966 (transformation!4325 (h!32499 rules!1750))) (toChars!5966 (transformation!4325 (rule!6651 (h!32498 tokens!456)))))) (and b!2279270 b_free!67999) b_lambda!72579)))

(check-sat (not d!674874) (not b_next!68703) (not d!674868) (not d!674820) (not b!2279514) (not b!2279476) (not b!2279797) (not d!674780) b_and!179925 (not tb!135495) (not d!674812) (not b!2279685) (not d!674810) (not b!2279480) (not b!2279344) (not b!2279468) (not b_lambda!72569) (not b!2279794) (not d!674814) (not b!2279404) (not b!2279605) b_and!179971 (not b!2279679) (not b_lambda!72577) (not b!2279521) (not b_next!68705) (not b!2279752) (not b!2279795) (not b!2279684) b_and!179969 (not d!674850) b_and!179929 (not b!2279524) (not d!674880) (not d!674724) (not b!2279784) (not b!2279791) (not b!2279678) (not b!2279515) (not b!2279787) (not b!2279702) b_and!179993 (not b!2279790) (not b!2279783) (not b_lambda!72579) (not d!674844) (not b!2279579) (not d!674878) (not b!2279772) (not b!2279461) (not b!2279758) (not b!2279463) (not b!2279749) (not b!2279788) b_and!179921 (not b!2279402) b_and!179995 (not b!2279799) (not b!2279479) (not d!674776) b_and!179973 (not b!2279810) (not d!674802) (not b!2279545) (not b!2279477) (not b!2279706) (not b_next!68711) (not b_next!68713) (not b!2279405) (not b!2279462) (not b!2279526) (not d!674872) (not d!674806) (not b!2279771) (not b!2279681) b_and!179999 (not d!674800) (not b!2279583) (not d!674790) (not b!2279591) (not b!2279495) (not b!2279465) (not d!674876) (not b!2279680) (not b!2279487) tp_is_empty!10567 (not b!2279464) (not d!674772) (not b!2279811) b_and!179997 (not d!674836) (not b!2279469) (not b!2279557) (not b!2279792) (not b!2279525) (not b_next!68701) (not b!2279466) (not b_next!68709) (not b!2279481) (not b!2279310) (not b!2279800) (not b_next!68725) (not b!2279475) (not b_next!68707) (not d!674852) (not b!2279309) (not b!2279751) (not b_next!68715) (not d!674846) (not b!2279801) (not b_next!68729) b_and!179975 (not bm!136407) (not b!2279325) (not b!2279785) (not bm!136401) (not b_next!68727) (not d!674882) (not b_next!68731) b_and!179933 (not b!2279349) (not d!674838) (not d!674744) (not b!2279308) (not tb!135471) (not b!2279770) (not b!2279796) (not d!674792) (not b!2279343) (not d!674784) (not d!674718) (not b!2279750))
(check-sat b_and!179925 b_and!179971 (not b_next!68705) b_and!179993 b_and!179921 b_and!179999 b_and!179997 (not b_next!68701) (not b_next!68703) (not b_next!68707) (not b_next!68715) b_and!179969 b_and!179929 b_and!179995 b_and!179973 (not b_next!68713) (not b_next!68711) (not b_next!68709) (not b_next!68725) b_and!179975 (not b_next!68729) (not b_next!68727) (not b_next!68731) b_and!179933)

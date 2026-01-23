; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!315078 () Bool)

(assert start!315078)

(declare-fun b!3381213 () Bool)

(declare-fun b_free!88513 () Bool)

(declare-fun b_next!89217 () Bool)

(assert (=> b!3381213 (= b_free!88513 (not b_next!89217))))

(declare-fun tp!1057095 () Bool)

(declare-fun b_and!234927 () Bool)

(assert (=> b!3381213 (= tp!1057095 b_and!234927)))

(declare-fun b_free!88515 () Bool)

(declare-fun b_next!89219 () Bool)

(assert (=> b!3381213 (= b_free!88515 (not b_next!89219))))

(declare-fun tp!1057099 () Bool)

(declare-fun b_and!234929 () Bool)

(assert (=> b!3381213 (= tp!1057099 b_and!234929)))

(declare-fun b!3381208 () Bool)

(declare-fun b_free!88517 () Bool)

(declare-fun b_next!89221 () Bool)

(assert (=> b!3381208 (= b_free!88517 (not b_next!89221))))

(declare-fun tp!1057091 () Bool)

(declare-fun b_and!234931 () Bool)

(assert (=> b!3381208 (= tp!1057091 b_and!234931)))

(declare-fun b_free!88519 () Bool)

(declare-fun b_next!89223 () Bool)

(assert (=> b!3381208 (= b_free!88519 (not b_next!89223))))

(declare-fun tp!1057101 () Bool)

(declare-fun b_and!234933 () Bool)

(assert (=> b!3381208 (= tp!1057101 b_and!234933)))

(declare-fun b!3381233 () Bool)

(declare-fun b_free!88521 () Bool)

(declare-fun b_next!89225 () Bool)

(assert (=> b!3381233 (= b_free!88521 (not b_next!89225))))

(declare-fun tp!1057094 () Bool)

(declare-fun b_and!234935 () Bool)

(assert (=> b!3381233 (= tp!1057094 b_and!234935)))

(declare-fun b_free!88523 () Bool)

(declare-fun b_next!89227 () Bool)

(assert (=> b!3381233 (= b_free!88523 (not b_next!89227))))

(declare-fun tp!1057093 () Bool)

(declare-fun b_and!234937 () Bool)

(assert (=> b!3381233 (= tp!1057093 b_and!234937)))

(declare-fun b!3381204 () Bool)

(declare-fun e!2099022 () Bool)

(declare-fun e!2099010 () Bool)

(declare-fun tp!1057090 () Bool)

(assert (=> b!3381204 (= e!2099022 (and e!2099010 tp!1057090))))

(declare-fun b!3381205 () Bool)

(declare-fun e!2099015 () Bool)

(declare-fun e!2099020 () Bool)

(assert (=> b!3381205 (= e!2099015 e!2099020)))

(declare-fun res!1367967 () Bool)

(assert (=> b!3381205 (=> (not res!1367967) (not e!2099020))))

(declare-datatypes ((C!20452 0))(
  ( (C!20453 (val!12274 Int)) )
))
(declare-datatypes ((Regex!10133 0))(
  ( (ElementMatch!10133 (c!575698 C!20452)) (Concat!15737 (regOne!20778 Regex!10133) (regTwo!20778 Regex!10133)) (EmptyExpr!10133) (Star!10133 (reg!10462 Regex!10133)) (EmptyLang!10133) (Union!10133 (regOne!20779 Regex!10133) (regTwo!20779 Regex!10133)) )
))
(declare-datatypes ((List!36988 0))(
  ( (Nil!36864) (Cons!36864 (h!42284 (_ BitVec 16)) (t!263195 List!36988)) )
))
(declare-datatypes ((TokenValue!5604 0))(
  ( (FloatLiteralValue!11208 (text!39673 List!36988)) (TokenValueExt!5603 (__x!23425 Int)) (Broken!28020 (value!173593 List!36988)) (Object!5727) (End!5604) (Def!5604) (Underscore!5604) (Match!5604) (Else!5604) (Error!5604) (Case!5604) (If!5604) (Extends!5604) (Abstract!5604) (Class!5604) (Val!5604) (DelimiterValue!11208 (del!5664 List!36988)) (KeywordValue!5610 (value!173594 List!36988)) (CommentValue!11208 (value!173595 List!36988)) (WhitespaceValue!11208 (value!173596 List!36988)) (IndentationValue!5604 (value!173597 List!36988)) (String!41353) (Int32!5604) (Broken!28021 (value!173598 List!36988)) (Boolean!5605) (Unit!51971) (OperatorValue!5607 (op!5664 List!36988)) (IdentifierValue!11208 (value!173599 List!36988)) (IdentifierValue!11209 (value!173600 List!36988)) (WhitespaceValue!11209 (value!173601 List!36988)) (True!11208) (False!11208) (Broken!28022 (value!173602 List!36988)) (Broken!28023 (value!173603 List!36988)) (True!11209) (RightBrace!5604) (RightBracket!5604) (Colon!5604) (Null!5604) (Comma!5604) (LeftBracket!5604) (False!11209) (LeftBrace!5604) (ImaginaryLiteralValue!5604 (text!39674 List!36988)) (StringLiteralValue!16812 (value!173604 List!36988)) (EOFValue!5604 (value!173605 List!36988)) (IdentValue!5604 (value!173606 List!36988)) (DelimiterValue!11209 (value!173607 List!36988)) (DedentValue!5604 (value!173608 List!36988)) (NewLineValue!5604 (value!173609 List!36988)) (IntegerValue!16812 (value!173610 (_ BitVec 32)) (text!39675 List!36988)) (IntegerValue!16813 (value!173611 Int) (text!39676 List!36988)) (Times!5604) (Or!5604) (Equal!5604) (Minus!5604) (Broken!28024 (value!173612 List!36988)) (And!5604) (Div!5604) (LessEqual!5604) (Mod!5604) (Concat!15738) (Not!5604) (Plus!5604) (SpaceValue!5604 (value!173613 List!36988)) (IntegerValue!16814 (value!173614 Int) (text!39677 List!36988)) (StringLiteralValue!16813 (text!39678 List!36988)) (FloatLiteralValue!11209 (text!39679 List!36988)) (BytesLiteralValue!5604 (value!173615 List!36988)) (CommentValue!11209 (value!173616 List!36988)) (StringLiteralValue!16814 (value!173617 List!36988)) (ErrorTokenValue!5604 (msg!5665 List!36988)) )
))
(declare-datatypes ((List!36989 0))(
  ( (Nil!36865) (Cons!36865 (h!42285 C!20452) (t!263196 List!36989)) )
))
(declare-datatypes ((IArray!22251 0))(
  ( (IArray!22252 (innerList!11183 List!36989)) )
))
(declare-datatypes ((Conc!11123 0))(
  ( (Node!11123 (left!28740 Conc!11123) (right!29070 Conc!11123) (csize!22476 Int) (cheight!11334 Int)) (Leaf!17421 (xs!14277 IArray!22251) (csize!22477 Int)) (Empty!11123) )
))
(declare-datatypes ((BalanceConc!21860 0))(
  ( (BalanceConc!21861 (c!575699 Conc!11123)) )
))
(declare-datatypes ((String!41354 0))(
  ( (String!41355 (value!173618 String)) )
))
(declare-datatypes ((TokenValueInjection!10636 0))(
  ( (TokenValueInjection!10637 (toValue!7558 Int) (toChars!7417 Int)) )
))
(declare-datatypes ((Rule!10548 0))(
  ( (Rule!10549 (regex!5374 Regex!10133) (tag!5950 String!41354) (isSeparator!5374 Bool) (transformation!5374 TokenValueInjection!10636)) )
))
(declare-fun lt!1148170 () Rule!10548)

(declare-fun lt!1148159 () List!36989)

(declare-fun matchR!4725 (Regex!10133 List!36989) Bool)

(assert (=> b!3381205 (= res!1367967 (matchR!4725 (regex!5374 lt!1148170) lt!1148159))))

(declare-datatypes ((Option!7395 0))(
  ( (None!7394) (Some!7394 (v!36482 Rule!10548)) )
))
(declare-fun lt!1148172 () Option!7395)

(declare-fun get!11768 (Option!7395) Rule!10548)

(assert (=> b!3381205 (= lt!1148170 (get!11768 lt!1148172))))

(declare-fun b!3381206 () Bool)

(declare-fun res!1367972 () Bool)

(declare-fun e!2099016 () Bool)

(assert (=> b!3381206 (=> (not res!1367972) (not e!2099016))))

(declare-datatypes ((List!36990 0))(
  ( (Nil!36866) (Cons!36866 (h!42286 Rule!10548) (t!263197 List!36990)) )
))
(declare-fun rules!2135 () List!36990)

(declare-fun isEmpty!21103 (List!36990) Bool)

(assert (=> b!3381206 (= res!1367972 (not (isEmpty!21103 rules!2135)))))

(declare-fun b!3381207 () Bool)

(declare-fun e!2099030 () Bool)

(declare-fun e!2099035 () Bool)

(assert (=> b!3381207 (= e!2099030 e!2099035)))

(declare-fun res!1367963 () Bool)

(assert (=> b!3381207 (=> res!1367963 e!2099035)))

(declare-fun lt!1148171 () List!36989)

(declare-fun lt!1148158 () List!36989)

(assert (=> b!3381207 (= res!1367963 (or (not (= lt!1148158 lt!1148159)) (not (= lt!1148171 lt!1148159))))))

(declare-datatypes ((Token!10114 0))(
  ( (Token!10115 (value!173619 TokenValue!5604) (rule!7926 Rule!10548) (size!27894 Int) (originalCharacters!6088 List!36989)) )
))
(declare-datatypes ((List!36991 0))(
  ( (Nil!36867) (Cons!36867 (h!42287 Token!10114) (t!263198 List!36991)) )
))
(declare-fun tokens!494 () List!36991)

(declare-fun list!13331 (BalanceConc!21860) List!36989)

(declare-fun charsOf!3388 (Token!10114) BalanceConc!21860)

(assert (=> b!3381207 (= lt!1148159 (list!13331 (charsOf!3388 (h!42287 tokens!494))))))

(declare-fun e!2099032 () Bool)

(assert (=> b!3381208 (= e!2099032 (and tp!1057091 tp!1057101))))

(declare-fun b!3381209 () Bool)

(declare-fun e!2099009 () Bool)

(assert (=> b!3381209 (= e!2099035 e!2099009)))

(declare-fun res!1367961 () Bool)

(assert (=> b!3381209 (=> res!1367961 e!2099009)))

(declare-datatypes ((LexerInterface!4963 0))(
  ( (LexerInterfaceExt!4960 (__x!23426 Int)) (Lexer!4961) )
))
(declare-fun thiss!18206 () LexerInterface!4963)

(declare-fun lt!1148173 () BalanceConc!21860)

(declare-datatypes ((IArray!22253 0))(
  ( (IArray!22254 (innerList!11184 List!36991)) )
))
(declare-datatypes ((Conc!11124 0))(
  ( (Node!11124 (left!28741 Conc!11124) (right!29071 Conc!11124) (csize!22478 Int) (cheight!11335 Int)) (Leaf!17422 (xs!14278 IArray!22253) (csize!22479 Int)) (Empty!11124) )
))
(declare-datatypes ((BalanceConc!21862 0))(
  ( (BalanceConc!21863 (c!575700 Conc!11124)) )
))
(declare-fun isEmpty!21104 (BalanceConc!21862) Bool)

(declare-datatypes ((tuple2!36452 0))(
  ( (tuple2!36453 (_1!21360 BalanceConc!21862) (_2!21360 BalanceConc!21860)) )
))
(declare-fun lex!2289 (LexerInterface!4963 List!36990 BalanceConc!21860) tuple2!36452)

(assert (=> b!3381209 (= res!1367961 (isEmpty!21104 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173))))))

(declare-fun seqFromList!3801 (List!36989) BalanceConc!21860)

(assert (=> b!3381209 (= lt!1148173 (seqFromList!3801 lt!1148159))))

(declare-fun b!3381210 () Bool)

(declare-fun e!2099008 () Bool)

(assert (=> b!3381210 (= e!2099008 (not e!2099030))))

(declare-fun res!1367970 () Bool)

(assert (=> b!3381210 (=> res!1367970 e!2099030)))

(assert (=> b!3381210 (= res!1367970 (not (= lt!1148171 lt!1148158)))))

(declare-fun printList!1511 (LexerInterface!4963 List!36991) List!36989)

(assert (=> b!3381210 (= lt!1148158 (printList!1511 thiss!18206 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))

(declare-fun lt!1148174 () BalanceConc!21860)

(assert (=> b!3381210 (= lt!1148171 (list!13331 lt!1148174))))

(declare-fun lt!1148155 () BalanceConc!21862)

(declare-fun printTailRec!1458 (LexerInterface!4963 BalanceConc!21862 Int BalanceConc!21860) BalanceConc!21860)

(assert (=> b!3381210 (= lt!1148174 (printTailRec!1458 thiss!18206 lt!1148155 0 (BalanceConc!21861 Empty!11123)))))

(declare-fun print!2028 (LexerInterface!4963 BalanceConc!21862) BalanceConc!21860)

(assert (=> b!3381210 (= lt!1148174 (print!2028 thiss!18206 lt!1148155))))

(declare-fun singletonSeq!2470 (Token!10114) BalanceConc!21862)

(assert (=> b!3381210 (= lt!1148155 (singletonSeq!2470 (h!42287 tokens!494)))))

(declare-fun b!3381211 () Bool)

(declare-fun res!1367965 () Bool)

(declare-fun e!2099028 () Bool)

(assert (=> b!3381211 (=> res!1367965 e!2099028)))

(declare-fun separatorToken!241 () Token!10114)

(declare-fun contains!6742 (List!36990 Rule!10548) Bool)

(assert (=> b!3381211 (= res!1367965 (not (contains!6742 rules!2135 (rule!7926 separatorToken!241))))))

(declare-fun b!3381212 () Bool)

(declare-fun res!1367960 () Bool)

(assert (=> b!3381212 (=> (not res!1367960) (not e!2099008))))

(assert (=> b!3381212 (= res!1367960 (isSeparator!5374 (rule!7926 separatorToken!241)))))

(declare-fun e!2099017 () Bool)

(assert (=> b!3381213 (= e!2099017 (and tp!1057095 tp!1057099))))

(declare-fun e!2099007 () Bool)

(declare-fun e!2099018 () Bool)

(declare-fun tp!1057096 () Bool)

(declare-fun b!3381214 () Bool)

(declare-fun inv!21 (TokenValue!5604) Bool)

(assert (=> b!3381214 (= e!2099018 (and (inv!21 (value!173619 separatorToken!241)) e!2099007 tp!1057096))))

(declare-fun b!3381215 () Bool)

(declare-fun res!1367957 () Bool)

(assert (=> b!3381215 (=> (not res!1367957) (not e!2099008))))

(declare-fun sepAndNonSepRulesDisjointChars!1568 (List!36990 List!36990) Bool)

(assert (=> b!3381215 (= res!1367957 (sepAndNonSepRulesDisjointChars!1568 rules!2135 rules!2135))))

(declare-fun b!3381216 () Bool)

(declare-fun res!1367974 () Bool)

(assert (=> b!3381216 (=> res!1367974 e!2099035)))

(declare-fun rulesProduceIndividualToken!2455 (LexerInterface!4963 List!36990 Token!10114) Bool)

(assert (=> b!3381216 (= res!1367974 (not (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 tokens!494))))))

(declare-fun b!3381217 () Bool)

(declare-fun e!2099021 () Bool)

(assert (=> b!3381217 (= e!2099021 false)))

(declare-fun b!3381218 () Bool)

(declare-fun e!2099012 () Bool)

(declare-fun e!2099031 () Bool)

(assert (=> b!3381218 (= e!2099012 e!2099031)))

(declare-fun res!1367956 () Bool)

(assert (=> b!3381218 (=> res!1367956 e!2099031)))

(declare-fun lt!1148157 () List!36989)

(declare-fun lt!1148156 () BalanceConc!21860)

(declare-fun ++!9009 (List!36989 List!36989) List!36989)

(assert (=> b!3381218 (= res!1367956 (not (= (list!13331 lt!1148156) (++!9009 lt!1148159 lt!1148157))))))

(assert (=> b!3381218 (= lt!1148157 (list!13331 (charsOf!3388 separatorToken!241)))))

(declare-fun lt!1148177 () BalanceConc!21862)

(declare-fun printWithSeparatorToken!154 (LexerInterface!4963 BalanceConc!21862 Token!10114) BalanceConc!21860)

(assert (=> b!3381218 (= lt!1148156 (printWithSeparatorToken!154 thiss!18206 lt!1148177 separatorToken!241))))

(declare-fun b!3381219 () Bool)

(assert (=> b!3381219 (= e!2099009 e!2099012)))

(declare-fun res!1367959 () Bool)

(assert (=> b!3381219 (=> res!1367959 e!2099012)))

(assert (=> b!3381219 (= res!1367959 (isSeparator!5374 (rule!7926 (h!42287 tokens!494))))))

(declare-datatypes ((Unit!51972 0))(
  ( (Unit!51973) )
))
(declare-fun lt!1148176 () Unit!51972)

(declare-fun lambda!120485 () Int)

(declare-fun forallContained!1321 (List!36991 Int Token!10114) Unit!51972)

(assert (=> b!3381219 (= lt!1148176 (forallContained!1321 tokens!494 lambda!120485 (h!42287 tokens!494)))))

(declare-fun b!3381220 () Bool)

(declare-fun e!2099013 () Unit!51972)

(declare-fun Unit!51974 () Unit!51972)

(assert (=> b!3381220 (= e!2099013 Unit!51974)))

(declare-fun lt!1148166 () Unit!51972)

(declare-fun lt!1148163 () C!20452)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!464 (Regex!10133 List!36989 C!20452) Unit!51972)

(assert (=> b!3381220 (= lt!1148166 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!464 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157 lt!1148163))))

(declare-fun res!1367968 () Bool)

(assert (=> b!3381220 (= res!1367968 (not (matchR!4725 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157)))))

(assert (=> b!3381220 (=> (not res!1367968) (not e!2099021))))

(assert (=> b!3381220 e!2099021))

(declare-fun b!3381221 () Bool)

(declare-fun res!1367971 () Bool)

(assert (=> b!3381221 (=> (not res!1367971) (not e!2099008))))

(declare-fun forall!7757 (List!36991 Int) Bool)

(assert (=> b!3381221 (= res!1367971 (forall!7757 tokens!494 lambda!120485))))

(declare-fun b!3381222 () Bool)

(declare-fun res!1367977 () Bool)

(assert (=> b!3381222 (=> (not res!1367977) (not e!2099008))))

(assert (=> b!3381222 (= res!1367977 (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1367973 () Bool)

(assert (=> start!315078 (=> (not res!1367973) (not e!2099016))))

(get-info :version)

(assert (=> start!315078 (= res!1367973 ((_ is Lexer!4961) thiss!18206))))

(assert (=> start!315078 e!2099016))

(assert (=> start!315078 true))

(assert (=> start!315078 e!2099022))

(declare-fun inv!49935 (Token!10114) Bool)

(assert (=> start!315078 (and (inv!49935 separatorToken!241) e!2099018)))

(declare-fun e!2099034 () Bool)

(assert (=> start!315078 e!2099034))

(declare-fun e!2099023 () Bool)

(declare-fun b!3381223 () Bool)

(declare-fun tp!1057100 () Bool)

(declare-fun e!2099014 () Bool)

(assert (=> b!3381223 (= e!2099014 (and (inv!21 (value!173619 (h!42287 tokens!494))) e!2099023 tp!1057100))))

(declare-fun b!3381224 () Bool)

(declare-fun Unit!51975 () Unit!51972)

(assert (=> b!3381224 (= e!2099013 Unit!51975)))

(declare-fun b!3381225 () Bool)

(declare-fun res!1367962 () Bool)

(assert (=> b!3381225 (=> (not res!1367962) (not e!2099016))))

(declare-fun rulesInvariant!4360 (LexerInterface!4963 List!36990) Bool)

(assert (=> b!3381225 (= res!1367962 (rulesInvariant!4360 thiss!18206 rules!2135))))

(declare-fun b!3381226 () Bool)

(declare-fun tp!1057102 () Bool)

(assert (=> b!3381226 (= e!2099034 (and (inv!49935 (h!42287 tokens!494)) e!2099014 tp!1057102))))

(declare-fun b!3381227 () Bool)

(assert (=> b!3381227 (= e!2099020 (= (rule!7926 (h!42287 tokens!494)) lt!1148170))))

(declare-fun e!2099026 () Bool)

(declare-fun b!3381228 () Bool)

(declare-fun tp!1057092 () Bool)

(declare-fun inv!49932 (String!41354) Bool)

(declare-fun inv!49936 (TokenValueInjection!10636) Bool)

(assert (=> b!3381228 (= e!2099023 (and tp!1057092 (inv!49932 (tag!5950 (rule!7926 (h!42287 tokens!494)))) (inv!49936 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) e!2099026))))

(declare-fun tp!1057097 () Bool)

(declare-fun b!3381229 () Bool)

(assert (=> b!3381229 (= e!2099010 (and tp!1057097 (inv!49932 (tag!5950 (h!42286 rules!2135))) (inv!49936 (transformation!5374 (h!42286 rules!2135))) e!2099017))))

(declare-fun b!3381230 () Bool)

(declare-fun tp!1057098 () Bool)

(assert (=> b!3381230 (= e!2099007 (and tp!1057098 (inv!49932 (tag!5950 (rule!7926 separatorToken!241))) (inv!49936 (transformation!5374 (rule!7926 separatorToken!241))) e!2099032))))

(declare-fun b!3381231 () Bool)

(declare-fun res!1367976 () Bool)

(assert (=> b!3381231 (=> (not res!1367976) (not e!2099008))))

(assert (=> b!3381231 (= res!1367976 (and (not ((_ is Nil!36867) tokens!494)) ((_ is Nil!36867) (t!263198 tokens!494))))))

(declare-fun b!3381232 () Bool)

(declare-fun e!2099027 () Bool)

(declare-fun lt!1148167 () Rule!10548)

(assert (=> b!3381232 (= e!2099027 (= (rule!7926 separatorToken!241) lt!1148167))))

(assert (=> b!3381233 (= e!2099026 (and tp!1057094 tp!1057093))))

(declare-fun b!3381234 () Bool)

(declare-fun e!2099011 () Bool)

(assert (=> b!3381234 (= e!2099031 e!2099011)))

(declare-fun res!1367964 () Bool)

(assert (=> b!3381234 (=> res!1367964 e!2099011)))

(declare-fun lt!1148160 () Bool)

(assert (=> b!3381234 (= res!1367964 lt!1148160)))

(declare-fun lt!1148168 () Unit!51972)

(assert (=> b!3381234 (= lt!1148168 e!2099013)))

(declare-fun c!575697 () Bool)

(assert (=> b!3381234 (= c!575697 lt!1148160)))

(declare-fun contains!6743 (List!36989 C!20452) Bool)

(declare-fun usedCharacters!630 (Regex!10133) List!36989)

(assert (=> b!3381234 (= lt!1148160 (not (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))) lt!1148163)))))

(declare-fun head!7225 (List!36989) C!20452)

(assert (=> b!3381234 (= lt!1148163 (head!7225 lt!1148157))))

(declare-datatypes ((tuple2!36454 0))(
  ( (tuple2!36455 (_1!21361 Token!10114) (_2!21361 List!36989)) )
))
(declare-datatypes ((Option!7396 0))(
  ( (None!7395) (Some!7395 (v!36483 tuple2!36454)) )
))
(declare-fun maxPrefixOneRule!1686 (LexerInterface!4963 Rule!10548 List!36989) Option!7396)

(declare-fun apply!8573 (TokenValueInjection!10636 BalanceConc!21860) TokenValue!5604)

(declare-fun size!27895 (List!36989) Int)

(assert (=> b!3381234 (= (maxPrefixOneRule!1686 thiss!18206 (rule!7926 (h!42287 tokens!494)) lt!1148159) (Some!7395 (tuple2!36455 (Token!10115 (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) lt!1148173) (rule!7926 (h!42287 tokens!494)) (size!27895 lt!1148159) lt!1148159) Nil!36865)))))

(declare-fun lt!1148164 () Unit!51972)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!785 (LexerInterface!4963 List!36990 List!36989 List!36989 List!36989 Rule!10548) Unit!51972)

(assert (=> b!3381234 (= lt!1148164 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!785 thiss!18206 rules!2135 lt!1148159 lt!1148159 Nil!36865 (rule!7926 (h!42287 tokens!494))))))

(declare-fun e!2099033 () Bool)

(assert (=> b!3381234 e!2099033))

(declare-fun res!1367969 () Bool)

(assert (=> b!3381234 (=> (not res!1367969) (not e!2099033))))

(declare-fun lt!1148165 () Option!7395)

(declare-fun isDefined!5713 (Option!7395) Bool)

(assert (=> b!3381234 (= res!1367969 (isDefined!5713 lt!1148165))))

(declare-fun getRuleFromTag!1029 (LexerInterface!4963 List!36990 String!41354) Option!7395)

(assert (=> b!3381234 (= lt!1148165 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))

(declare-fun lt!1148161 () Unit!51972)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1029 (LexerInterface!4963 List!36990 List!36989 Token!10114) Unit!51972)

(assert (=> b!3381234 (= lt!1148161 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1029 thiss!18206 rules!2135 lt!1148157 separatorToken!241))))

(assert (=> b!3381234 e!2099015))

(declare-fun res!1367958 () Bool)

(assert (=> b!3381234 (=> (not res!1367958) (not e!2099015))))

(assert (=> b!3381234 (= res!1367958 (isDefined!5713 lt!1148172))))

(assert (=> b!3381234 (= lt!1148172 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun lt!1148175 () Unit!51972)

(assert (=> b!3381234 (= lt!1148175 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1029 thiss!18206 rules!2135 lt!1148159 (h!42287 tokens!494)))))

(declare-fun lt!1148162 () Unit!51972)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!958 (LexerInterface!4963 List!36990 List!36991 Token!10114) Unit!51972)

(assert (=> b!3381234 (= lt!1148162 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!958 thiss!18206 rules!2135 tokens!494 (h!42287 tokens!494)))))

(declare-fun isEmpty!21105 (List!36989) Bool)

(declare-fun getSuffix!1468 (List!36989 List!36989) List!36989)

(assert (=> b!3381234 (isEmpty!21105 (getSuffix!1468 lt!1148159 lt!1148159))))

(declare-fun lt!1148178 () Unit!51972)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!126 (List!36989) Unit!51972)

(assert (=> b!3381234 (= lt!1148178 (lemmaGetSuffixOnListWithItSelfIsEmpty!126 lt!1148159))))

(declare-fun b!3381235 () Bool)

(assert (=> b!3381235 (= e!2099033 e!2099027)))

(declare-fun res!1367978 () Bool)

(assert (=> b!3381235 (=> (not res!1367978) (not e!2099027))))

(assert (=> b!3381235 (= res!1367978 (matchR!4725 (regex!5374 lt!1148167) lt!1148157))))

(assert (=> b!3381235 (= lt!1148167 (get!11768 lt!1148165))))

(declare-fun b!3381236 () Bool)

(assert (=> b!3381236 (= e!2099011 e!2099028)))

(declare-fun res!1367966 () Bool)

(assert (=> b!3381236 (=> res!1367966 e!2099028)))

(assert (=> b!3381236 (= res!1367966 (not (contains!6742 rules!2135 (rule!7926 (h!42287 tokens!494)))))))

(assert (=> b!3381236 (not (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148163))))

(declare-fun lt!1148169 () Unit!51972)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!214 (LexerInterface!4963 List!36990 List!36990 Rule!10548 Rule!10548 C!20452) Unit!51972)

(assert (=> b!3381236 (= lt!1148169 (lemmaNonSepRuleNotContainsCharContainedInASepRule!214 thiss!18206 rules!2135 rules!2135 (rule!7926 (h!42287 tokens!494)) (rule!7926 separatorToken!241) lt!1148163))))

(declare-fun b!3381237 () Bool)

(assert (=> b!3381237 (= e!2099016 e!2099008)))

(declare-fun res!1367975 () Bool)

(assert (=> b!3381237 (=> (not res!1367975) (not e!2099008))))

(declare-fun rulesProduceEachTokenIndividually!1414 (LexerInterface!4963 List!36990 BalanceConc!21862) Bool)

(assert (=> b!3381237 (= res!1367975 (rulesProduceEachTokenIndividually!1414 thiss!18206 rules!2135 lt!1148177))))

(declare-fun seqFromList!3802 (List!36991) BalanceConc!21862)

(assert (=> b!3381237 (= lt!1148177 (seqFromList!3802 tokens!494))))

(declare-fun b!3381238 () Bool)

(declare-fun isDefined!5714 (Option!7396) Bool)

(declare-fun maxPrefix!2535 (LexerInterface!4963 List!36990 List!36989) Option!7396)

(assert (=> b!3381238 (= e!2099028 (isDefined!5714 (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159)))))

(assert (= (and start!315078 res!1367973) b!3381206))

(assert (= (and b!3381206 res!1367972) b!3381225))

(assert (= (and b!3381225 res!1367962) b!3381237))

(assert (= (and b!3381237 res!1367975) b!3381222))

(assert (= (and b!3381222 res!1367977) b!3381212))

(assert (= (and b!3381212 res!1367960) b!3381221))

(assert (= (and b!3381221 res!1367971) b!3381215))

(assert (= (and b!3381215 res!1367957) b!3381231))

(assert (= (and b!3381231 res!1367976) b!3381210))

(assert (= (and b!3381210 (not res!1367970)) b!3381207))

(assert (= (and b!3381207 (not res!1367963)) b!3381216))

(assert (= (and b!3381216 (not res!1367974)) b!3381209))

(assert (= (and b!3381209 (not res!1367961)) b!3381219))

(assert (= (and b!3381219 (not res!1367959)) b!3381218))

(assert (= (and b!3381218 (not res!1367956)) b!3381234))

(assert (= (and b!3381234 res!1367958) b!3381205))

(assert (= (and b!3381205 res!1367967) b!3381227))

(assert (= (and b!3381234 res!1367969) b!3381235))

(assert (= (and b!3381235 res!1367978) b!3381232))

(assert (= (and b!3381234 c!575697) b!3381220))

(assert (= (and b!3381234 (not c!575697)) b!3381224))

(assert (= (and b!3381220 res!1367968) b!3381217))

(assert (= (and b!3381234 (not res!1367964)) b!3381236))

(assert (= (and b!3381236 (not res!1367966)) b!3381211))

(assert (= (and b!3381211 (not res!1367965)) b!3381238))

(assert (= b!3381229 b!3381213))

(assert (= b!3381204 b!3381229))

(assert (= (and start!315078 ((_ is Cons!36866) rules!2135)) b!3381204))

(assert (= b!3381230 b!3381208))

(assert (= b!3381214 b!3381230))

(assert (= start!315078 b!3381214))

(assert (= b!3381228 b!3381233))

(assert (= b!3381223 b!3381228))

(assert (= b!3381226 b!3381223))

(assert (= (and start!315078 ((_ is Cons!36867) tokens!494)) b!3381226))

(declare-fun m!3745301 () Bool)

(assert (=> b!3381205 m!3745301))

(declare-fun m!3745303 () Bool)

(assert (=> b!3381205 m!3745303))

(declare-fun m!3745305 () Bool)

(assert (=> b!3381209 m!3745305))

(declare-fun m!3745307 () Bool)

(assert (=> b!3381209 m!3745307))

(declare-fun m!3745309 () Bool)

(assert (=> b!3381209 m!3745309))

(declare-fun m!3745311 () Bool)

(assert (=> b!3381220 m!3745311))

(declare-fun m!3745313 () Bool)

(assert (=> b!3381220 m!3745313))

(declare-fun m!3745315 () Bool)

(assert (=> b!3381214 m!3745315))

(declare-fun m!3745317 () Bool)

(assert (=> b!3381218 m!3745317))

(declare-fun m!3745319 () Bool)

(assert (=> b!3381218 m!3745319))

(declare-fun m!3745321 () Bool)

(assert (=> b!3381218 m!3745321))

(assert (=> b!3381218 m!3745317))

(declare-fun m!3745323 () Bool)

(assert (=> b!3381218 m!3745323))

(declare-fun m!3745325 () Bool)

(assert (=> b!3381218 m!3745325))

(declare-fun m!3745327 () Bool)

(assert (=> b!3381226 m!3745327))

(declare-fun m!3745329 () Bool)

(assert (=> start!315078 m!3745329))

(declare-fun m!3745331 () Bool)

(assert (=> b!3381230 m!3745331))

(declare-fun m!3745333 () Bool)

(assert (=> b!3381230 m!3745333))

(declare-fun m!3745335 () Bool)

(assert (=> b!3381219 m!3745335))

(declare-fun m!3745337 () Bool)

(assert (=> b!3381236 m!3745337))

(declare-fun m!3745339 () Bool)

(assert (=> b!3381236 m!3745339))

(assert (=> b!3381236 m!3745339))

(declare-fun m!3745341 () Bool)

(assert (=> b!3381236 m!3745341))

(declare-fun m!3745343 () Bool)

(assert (=> b!3381236 m!3745343))

(declare-fun m!3745345 () Bool)

(assert (=> b!3381211 m!3745345))

(declare-fun m!3745347 () Bool)

(assert (=> b!3381221 m!3745347))

(declare-fun m!3745349 () Bool)

(assert (=> b!3381207 m!3745349))

(assert (=> b!3381207 m!3745349))

(declare-fun m!3745351 () Bool)

(assert (=> b!3381207 m!3745351))

(declare-fun m!3745353 () Bool)

(assert (=> b!3381237 m!3745353))

(declare-fun m!3745355 () Bool)

(assert (=> b!3381237 m!3745355))

(declare-fun m!3745357 () Bool)

(assert (=> b!3381228 m!3745357))

(declare-fun m!3745359 () Bool)

(assert (=> b!3381228 m!3745359))

(declare-fun m!3745361 () Bool)

(assert (=> b!3381215 m!3745361))

(declare-fun m!3745363 () Bool)

(assert (=> b!3381222 m!3745363))

(declare-fun m!3745365 () Bool)

(assert (=> b!3381229 m!3745365))

(declare-fun m!3745367 () Bool)

(assert (=> b!3381229 m!3745367))

(declare-fun m!3745369 () Bool)

(assert (=> b!3381216 m!3745369))

(declare-fun m!3745371 () Bool)

(assert (=> b!3381234 m!3745371))

(declare-fun m!3745373 () Bool)

(assert (=> b!3381234 m!3745373))

(declare-fun m!3745375 () Bool)

(assert (=> b!3381234 m!3745375))

(declare-fun m!3745377 () Bool)

(assert (=> b!3381234 m!3745377))

(declare-fun m!3745379 () Bool)

(assert (=> b!3381234 m!3745379))

(declare-fun m!3745381 () Bool)

(assert (=> b!3381234 m!3745381))

(declare-fun m!3745383 () Bool)

(assert (=> b!3381234 m!3745383))

(declare-fun m!3745385 () Bool)

(assert (=> b!3381234 m!3745385))

(declare-fun m!3745387 () Bool)

(assert (=> b!3381234 m!3745387))

(declare-fun m!3745389 () Bool)

(assert (=> b!3381234 m!3745389))

(declare-fun m!3745391 () Bool)

(assert (=> b!3381234 m!3745391))

(declare-fun m!3745393 () Bool)

(assert (=> b!3381234 m!3745393))

(declare-fun m!3745395 () Bool)

(assert (=> b!3381234 m!3745395))

(declare-fun m!3745397 () Bool)

(assert (=> b!3381234 m!3745397))

(assert (=> b!3381234 m!3745395))

(declare-fun m!3745399 () Bool)

(assert (=> b!3381234 m!3745399))

(assert (=> b!3381234 m!3745371))

(declare-fun m!3745401 () Bool)

(assert (=> b!3381234 m!3745401))

(declare-fun m!3745403 () Bool)

(assert (=> b!3381234 m!3745403))

(declare-fun m!3745405 () Bool)

(assert (=> b!3381206 m!3745405))

(declare-fun m!3745407 () Bool)

(assert (=> b!3381223 m!3745407))

(declare-fun m!3745409 () Bool)

(assert (=> b!3381210 m!3745409))

(declare-fun m!3745411 () Bool)

(assert (=> b!3381210 m!3745411))

(declare-fun m!3745413 () Bool)

(assert (=> b!3381210 m!3745413))

(declare-fun m!3745415 () Bool)

(assert (=> b!3381210 m!3745415))

(declare-fun m!3745417 () Bool)

(assert (=> b!3381210 m!3745417))

(declare-fun m!3745419 () Bool)

(assert (=> b!3381235 m!3745419))

(declare-fun m!3745421 () Bool)

(assert (=> b!3381235 m!3745421))

(declare-fun m!3745423 () Bool)

(assert (=> b!3381238 m!3745423))

(assert (=> b!3381238 m!3745423))

(declare-fun m!3745425 () Bool)

(assert (=> b!3381238 m!3745425))

(declare-fun m!3745427 () Bool)

(assert (=> b!3381225 m!3745427))

(check-sat (not b!3381214) b_and!234937 (not b!3381210) (not b!3381228) (not b!3381205) (not b!3381218) (not b!3381207) (not b_next!89227) (not b!3381223) (not b!3381226) b_and!234931 (not b!3381225) (not b!3381215) (not b_next!89225) (not b_next!89221) b_and!234935 (not b_next!89217) (not b!3381220) b_and!234929 b_and!234927 (not start!315078) b_and!234933 (not b_next!89223) (not b!3381221) (not b!3381235) (not b!3381204) (not b!3381219) (not b!3381230) (not b!3381238) (not b!3381206) (not b!3381222) (not b_next!89219) (not b!3381216) (not b!3381236) (not b!3381229) (not b!3381209) (not b!3381234) (not b!3381211) (not b!3381237))
(check-sat b_and!234931 (not b_next!89225) (not b_next!89217) b_and!234937 (not b_next!89219) (not b_next!89227) (not b_next!89221) b_and!234935 b_and!234929 b_and!234927 b_and!234933 (not b_next!89223))
(get-model)

(declare-fun d!959146 () Bool)

(declare-fun res!1367994 () Bool)

(declare-fun e!2099045 () Bool)

(assert (=> d!959146 (=> (not res!1367994) (not e!2099045))))

(declare-fun rulesValid!2003 (LexerInterface!4963 List!36990) Bool)

(assert (=> d!959146 (= res!1367994 (rulesValid!2003 thiss!18206 rules!2135))))

(assert (=> d!959146 (= (rulesInvariant!4360 thiss!18206 rules!2135) e!2099045)))

(declare-fun b!3381250 () Bool)

(declare-datatypes ((List!36993 0))(
  ( (Nil!36869) (Cons!36869 (h!42289 String!41354) (t!263274 List!36993)) )
))
(declare-fun noDuplicateTag!1999 (LexerInterface!4963 List!36990 List!36993) Bool)

(assert (=> b!3381250 (= e!2099045 (noDuplicateTag!1999 thiss!18206 rules!2135 Nil!36869))))

(assert (= (and d!959146 res!1367994) b!3381250))

(declare-fun m!3745471 () Bool)

(assert (=> d!959146 m!3745471))

(declare-fun m!3745473 () Bool)

(assert (=> b!3381250 m!3745473))

(assert (=> b!3381225 d!959146))

(declare-fun b!3381305 () Bool)

(declare-fun res!1368026 () Bool)

(declare-fun e!2099079 () Bool)

(assert (=> b!3381305 (=> res!1368026 e!2099079)))

(declare-fun tail!5355 (List!36989) List!36989)

(assert (=> b!3381305 (= res!1368026 (not (isEmpty!21105 (tail!5355 lt!1148159))))))

(declare-fun b!3381306 () Bool)

(declare-fun res!1368020 () Bool)

(declare-fun e!2099081 () Bool)

(assert (=> b!3381306 (=> res!1368020 e!2099081)))

(declare-fun e!2099078 () Bool)

(assert (=> b!3381306 (= res!1368020 e!2099078)))

(declare-fun res!1368027 () Bool)

(assert (=> b!3381306 (=> (not res!1368027) (not e!2099078))))

(declare-fun lt!1148217 () Bool)

(assert (=> b!3381306 (= res!1368027 lt!1148217)))

(declare-fun b!3381307 () Bool)

(declare-fun e!2099075 () Bool)

(declare-fun call!244523 () Bool)

(assert (=> b!3381307 (= e!2099075 (= lt!1148217 call!244523))))

(declare-fun d!959150 () Bool)

(assert (=> d!959150 e!2099075))

(declare-fun c!575718 () Bool)

(assert (=> d!959150 (= c!575718 ((_ is EmptyExpr!10133) (regex!5374 lt!1148170)))))

(declare-fun e!2099077 () Bool)

(assert (=> d!959150 (= lt!1148217 e!2099077)))

(declare-fun c!575717 () Bool)

(assert (=> d!959150 (= c!575717 (isEmpty!21105 lt!1148159))))

(declare-fun validRegex!4607 (Regex!10133) Bool)

(assert (=> d!959150 (validRegex!4607 (regex!5374 lt!1148170))))

(assert (=> d!959150 (= (matchR!4725 (regex!5374 lt!1148170) lt!1148159) lt!1148217)))

(declare-fun b!3381308 () Bool)

(declare-fun res!1368025 () Bool)

(assert (=> b!3381308 (=> res!1368025 e!2099081)))

(assert (=> b!3381308 (= res!1368025 (not ((_ is ElementMatch!10133) (regex!5374 lt!1148170))))))

(declare-fun e!2099076 () Bool)

(assert (=> b!3381308 (= e!2099076 e!2099081)))

(declare-fun b!3381309 () Bool)

(declare-fun nullable!3451 (Regex!10133) Bool)

(assert (=> b!3381309 (= e!2099077 (nullable!3451 (regex!5374 lt!1148170)))))

(declare-fun b!3381310 () Bool)

(declare-fun res!1368022 () Bool)

(assert (=> b!3381310 (=> (not res!1368022) (not e!2099078))))

(assert (=> b!3381310 (= res!1368022 (isEmpty!21105 (tail!5355 lt!1148159)))))

(declare-fun bm!244518 () Bool)

(assert (=> bm!244518 (= call!244523 (isEmpty!21105 lt!1148159))))

(declare-fun b!3381311 () Bool)

(declare-fun derivativeStep!3004 (Regex!10133 C!20452) Regex!10133)

(assert (=> b!3381311 (= e!2099077 (matchR!4725 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)) (tail!5355 lt!1148159)))))

(declare-fun b!3381312 () Bool)

(assert (=> b!3381312 (= e!2099076 (not lt!1148217))))

(declare-fun b!3381313 () Bool)

(declare-fun e!2099080 () Bool)

(assert (=> b!3381313 (= e!2099081 e!2099080)))

(declare-fun res!1368021 () Bool)

(assert (=> b!3381313 (=> (not res!1368021) (not e!2099080))))

(assert (=> b!3381313 (= res!1368021 (not lt!1148217))))

(declare-fun b!3381314 () Bool)

(assert (=> b!3381314 (= e!2099080 e!2099079)))

(declare-fun res!1368024 () Bool)

(assert (=> b!3381314 (=> res!1368024 e!2099079)))

(assert (=> b!3381314 (= res!1368024 call!244523)))

(declare-fun b!3381315 () Bool)

(assert (=> b!3381315 (= e!2099078 (= (head!7225 lt!1148159) (c!575698 (regex!5374 lt!1148170))))))

(declare-fun b!3381316 () Bool)

(assert (=> b!3381316 (= e!2099079 (not (= (head!7225 lt!1148159) (c!575698 (regex!5374 lt!1148170)))))))

(declare-fun b!3381317 () Bool)

(declare-fun res!1368023 () Bool)

(assert (=> b!3381317 (=> (not res!1368023) (not e!2099078))))

(assert (=> b!3381317 (= res!1368023 (not call!244523))))

(declare-fun b!3381318 () Bool)

(assert (=> b!3381318 (= e!2099075 e!2099076)))

(declare-fun c!575716 () Bool)

(assert (=> b!3381318 (= c!575716 ((_ is EmptyLang!10133) (regex!5374 lt!1148170)))))

(assert (= (and d!959150 c!575717) b!3381309))

(assert (= (and d!959150 (not c!575717)) b!3381311))

(assert (= (and d!959150 c!575718) b!3381307))

(assert (= (and d!959150 (not c!575718)) b!3381318))

(assert (= (and b!3381318 c!575716) b!3381312))

(assert (= (and b!3381318 (not c!575716)) b!3381308))

(assert (= (and b!3381308 (not res!1368025)) b!3381306))

(assert (= (and b!3381306 res!1368027) b!3381317))

(assert (= (and b!3381317 res!1368023) b!3381310))

(assert (= (and b!3381310 res!1368022) b!3381315))

(assert (= (and b!3381306 (not res!1368020)) b!3381313))

(assert (= (and b!3381313 res!1368021) b!3381314))

(assert (= (and b!3381314 (not res!1368024)) b!3381305))

(assert (= (and b!3381305 (not res!1368026)) b!3381316))

(assert (= (or b!3381307 b!3381314 b!3381317) bm!244518))

(declare-fun m!3745521 () Bool)

(assert (=> b!3381309 m!3745521))

(declare-fun m!3745523 () Bool)

(assert (=> bm!244518 m!3745523))

(assert (=> d!959150 m!3745523))

(declare-fun m!3745525 () Bool)

(assert (=> d!959150 m!3745525))

(declare-fun m!3745527 () Bool)

(assert (=> b!3381310 m!3745527))

(assert (=> b!3381310 m!3745527))

(declare-fun m!3745529 () Bool)

(assert (=> b!3381310 m!3745529))

(declare-fun m!3745531 () Bool)

(assert (=> b!3381311 m!3745531))

(assert (=> b!3381311 m!3745531))

(declare-fun m!3745533 () Bool)

(assert (=> b!3381311 m!3745533))

(assert (=> b!3381311 m!3745527))

(assert (=> b!3381311 m!3745533))

(assert (=> b!3381311 m!3745527))

(declare-fun m!3745535 () Bool)

(assert (=> b!3381311 m!3745535))

(assert (=> b!3381305 m!3745527))

(assert (=> b!3381305 m!3745527))

(assert (=> b!3381305 m!3745529))

(assert (=> b!3381315 m!3745531))

(assert (=> b!3381316 m!3745531))

(assert (=> b!3381205 d!959150))

(declare-fun d!959166 () Bool)

(assert (=> d!959166 (= (get!11768 lt!1148172) (v!36482 lt!1148172))))

(assert (=> b!3381205 d!959166))

(declare-fun d!959168 () Bool)

(declare-fun res!1368032 () Bool)

(declare-fun e!2099084 () Bool)

(assert (=> d!959168 (=> (not res!1368032) (not e!2099084))))

(assert (=> d!959168 (= res!1368032 (not (isEmpty!21105 (originalCharacters!6088 (h!42287 tokens!494)))))))

(assert (=> d!959168 (= (inv!49935 (h!42287 tokens!494)) e!2099084)))

(declare-fun b!3381323 () Bool)

(declare-fun res!1368033 () Bool)

(assert (=> b!3381323 (=> (not res!1368033) (not e!2099084))))

(declare-fun dynLambda!15334 (Int TokenValue!5604) BalanceConc!21860)

(assert (=> b!3381323 (= res!1368033 (= (originalCharacters!6088 (h!42287 tokens!494)) (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(declare-fun b!3381324 () Bool)

(assert (=> b!3381324 (= e!2099084 (= (size!27894 (h!42287 tokens!494)) (size!27895 (originalCharacters!6088 (h!42287 tokens!494)))))))

(assert (= (and d!959168 res!1368032) b!3381323))

(assert (= (and b!3381323 res!1368033) b!3381324))

(declare-fun b_lambda!95981 () Bool)

(assert (=> (not b_lambda!95981) (not b!3381323)))

(declare-fun t!263207 () Bool)

(declare-fun tb!180005 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263207) tb!180005))

(declare-fun b!3381329 () Bool)

(declare-fun e!2099087 () Bool)

(declare-fun tp!1057108 () Bool)

(declare-fun inv!49939 (Conc!11123) Bool)

(assert (=> b!3381329 (= e!2099087 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))) tp!1057108))))

(declare-fun result!223460 () Bool)

(declare-fun inv!49940 (BalanceConc!21860) Bool)

(assert (=> tb!180005 (= result!223460 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))) e!2099087))))

(assert (= tb!180005 b!3381329))

(declare-fun m!3745537 () Bool)

(assert (=> b!3381329 m!3745537))

(declare-fun m!3745539 () Bool)

(assert (=> tb!180005 m!3745539))

(assert (=> b!3381323 t!263207))

(declare-fun b_and!234945 () Bool)

(assert (= b_and!234929 (and (=> t!263207 result!223460) b_and!234945)))

(declare-fun t!263209 () Bool)

(declare-fun tb!180007 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263209) tb!180007))

(declare-fun result!223464 () Bool)

(assert (= result!223464 result!223460))

(assert (=> b!3381323 t!263209))

(declare-fun b_and!234947 () Bool)

(assert (= b_and!234933 (and (=> t!263209 result!223464) b_and!234947)))

(declare-fun t!263211 () Bool)

(declare-fun tb!180009 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263211) tb!180009))

(declare-fun result!223466 () Bool)

(assert (= result!223466 result!223460))

(assert (=> b!3381323 t!263211))

(declare-fun b_and!234949 () Bool)

(assert (= b_and!234937 (and (=> t!263211 result!223466) b_and!234949)))

(declare-fun m!3745541 () Bool)

(assert (=> d!959168 m!3745541))

(declare-fun m!3745543 () Bool)

(assert (=> b!3381323 m!3745543))

(assert (=> b!3381323 m!3745543))

(declare-fun m!3745545 () Bool)

(assert (=> b!3381323 m!3745545))

(declare-fun m!3745547 () Bool)

(assert (=> b!3381324 m!3745547))

(assert (=> b!3381226 d!959168))

(declare-fun d!959170 () Bool)

(assert (=> d!959170 (= (isEmpty!21103 rules!2135) ((_ is Nil!36866) rules!2135))))

(assert (=> b!3381206 d!959170))

(declare-fun d!959172 () Bool)

(declare-fun list!13334 (Conc!11123) List!36989)

(assert (=> d!959172 (= (list!13331 (charsOf!3388 (h!42287 tokens!494))) (list!13334 (c!575699 (charsOf!3388 (h!42287 tokens!494)))))))

(declare-fun bs!554769 () Bool)

(assert (= bs!554769 d!959172))

(declare-fun m!3745549 () Bool)

(assert (=> bs!554769 m!3745549))

(assert (=> b!3381207 d!959172))

(declare-fun d!959174 () Bool)

(declare-fun lt!1148220 () BalanceConc!21860)

(assert (=> d!959174 (= (list!13331 lt!1148220) (originalCharacters!6088 (h!42287 tokens!494)))))

(assert (=> d!959174 (= lt!1148220 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))

(assert (=> d!959174 (= (charsOf!3388 (h!42287 tokens!494)) lt!1148220)))

(declare-fun b_lambda!95983 () Bool)

(assert (=> (not b_lambda!95983) (not d!959174)))

(assert (=> d!959174 t!263207))

(declare-fun b_and!234951 () Bool)

(assert (= b_and!234945 (and (=> t!263207 result!223460) b_and!234951)))

(assert (=> d!959174 t!263209))

(declare-fun b_and!234953 () Bool)

(assert (= b_and!234947 (and (=> t!263209 result!223464) b_and!234953)))

(assert (=> d!959174 t!263211))

(declare-fun b_and!234955 () Bool)

(assert (= b_and!234949 (and (=> t!263211 result!223466) b_and!234955)))

(declare-fun m!3745551 () Bool)

(assert (=> d!959174 m!3745551))

(assert (=> d!959174 m!3745543))

(assert (=> b!3381207 d!959174))

(declare-fun d!959176 () Bool)

(assert (=> d!959176 (= (inv!49932 (tag!5950 (rule!7926 (h!42287 tokens!494)))) (= (mod (str.len (value!173618 (tag!5950 (rule!7926 (h!42287 tokens!494))))) 2) 0))))

(assert (=> b!3381228 d!959176))

(declare-fun d!959178 () Bool)

(declare-fun res!1368036 () Bool)

(declare-fun e!2099090 () Bool)

(assert (=> d!959178 (=> (not res!1368036) (not e!2099090))))

(declare-fun semiInverseModEq!2243 (Int Int) Bool)

(assert (=> d!959178 (= res!1368036 (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> d!959178 (= (inv!49936 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) e!2099090)))

(declare-fun b!3381332 () Bool)

(declare-fun equivClasses!2142 (Int Int) Bool)

(assert (=> b!3381332 (= e!2099090 (equivClasses!2142 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))))))

(assert (= (and d!959178 res!1368036) b!3381332))

(declare-fun m!3745553 () Bool)

(assert (=> d!959178 m!3745553))

(declare-fun m!3745555 () Bool)

(assert (=> b!3381332 m!3745555))

(assert (=> b!3381228 d!959178))

(declare-fun d!959180 () Bool)

(declare-fun res!1368037 () Bool)

(declare-fun e!2099091 () Bool)

(assert (=> d!959180 (=> (not res!1368037) (not e!2099091))))

(assert (=> d!959180 (= res!1368037 (not (isEmpty!21105 (originalCharacters!6088 separatorToken!241))))))

(assert (=> d!959180 (= (inv!49935 separatorToken!241) e!2099091)))

(declare-fun b!3381333 () Bool)

(declare-fun res!1368038 () Bool)

(assert (=> b!3381333 (=> (not res!1368038) (not e!2099091))))

(assert (=> b!3381333 (= res!1368038 (= (originalCharacters!6088 separatorToken!241) (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(declare-fun b!3381334 () Bool)

(assert (=> b!3381334 (= e!2099091 (= (size!27894 separatorToken!241) (size!27895 (originalCharacters!6088 separatorToken!241))))))

(assert (= (and d!959180 res!1368037) b!3381333))

(assert (= (and b!3381333 res!1368038) b!3381334))

(declare-fun b_lambda!95985 () Bool)

(assert (=> (not b_lambda!95985) (not b!3381333)))

(declare-fun tb!180011 () Bool)

(declare-fun t!263213 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263213) tb!180011))

(declare-fun b!3381335 () Bool)

(declare-fun e!2099092 () Bool)

(declare-fun tp!1057109 () Bool)

(assert (=> b!3381335 (= e!2099092 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))) tp!1057109))))

(declare-fun result!223468 () Bool)

(assert (=> tb!180011 (= result!223468 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))) e!2099092))))

(assert (= tb!180011 b!3381335))

(declare-fun m!3745557 () Bool)

(assert (=> b!3381335 m!3745557))

(declare-fun m!3745559 () Bool)

(assert (=> tb!180011 m!3745559))

(assert (=> b!3381333 t!263213))

(declare-fun b_and!234957 () Bool)

(assert (= b_and!234951 (and (=> t!263213 result!223468) b_and!234957)))

(declare-fun t!263215 () Bool)

(declare-fun tb!180013 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263215) tb!180013))

(declare-fun result!223470 () Bool)

(assert (= result!223470 result!223468))

(assert (=> b!3381333 t!263215))

(declare-fun b_and!234959 () Bool)

(assert (= b_and!234953 (and (=> t!263215 result!223470) b_and!234959)))

(declare-fun tb!180015 () Bool)

(declare-fun t!263217 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263217) tb!180015))

(declare-fun result!223472 () Bool)

(assert (= result!223472 result!223468))

(assert (=> b!3381333 t!263217))

(declare-fun b_and!234961 () Bool)

(assert (= b_and!234955 (and (=> t!263217 result!223472) b_and!234961)))

(declare-fun m!3745561 () Bool)

(assert (=> d!959180 m!3745561))

(declare-fun m!3745563 () Bool)

(assert (=> b!3381333 m!3745563))

(assert (=> b!3381333 m!3745563))

(declare-fun m!3745565 () Bool)

(assert (=> b!3381333 m!3745565))

(declare-fun m!3745567 () Bool)

(assert (=> b!3381334 m!3745567))

(assert (=> start!315078 d!959180))

(declare-fun d!959182 () Bool)

(assert (=> d!959182 (= (inv!49932 (tag!5950 (h!42286 rules!2135))) (= (mod (str.len (value!173618 (tag!5950 (h!42286 rules!2135)))) 2) 0))))

(assert (=> b!3381229 d!959182))

(declare-fun d!959184 () Bool)

(declare-fun res!1368039 () Bool)

(declare-fun e!2099093 () Bool)

(assert (=> d!959184 (=> (not res!1368039) (not e!2099093))))

(assert (=> d!959184 (= res!1368039 (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))))))

(assert (=> d!959184 (= (inv!49936 (transformation!5374 (h!42286 rules!2135))) e!2099093)))

(declare-fun b!3381336 () Bool)

(assert (=> b!3381336 (= e!2099093 (equivClasses!2142 (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))))))

(assert (= (and d!959184 res!1368039) b!3381336))

(declare-fun m!3745569 () Bool)

(assert (=> d!959184 m!3745569))

(declare-fun m!3745571 () Bool)

(assert (=> b!3381336 m!3745571))

(assert (=> b!3381229 d!959184))

(declare-fun d!959186 () Bool)

(declare-fun lt!1148223 () Bool)

(declare-fun isEmpty!21109 (List!36991) Bool)

(declare-fun list!13335 (BalanceConc!21862) List!36991)

(assert (=> d!959186 (= lt!1148223 (isEmpty!21109 (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))))))

(declare-fun isEmpty!21110 (Conc!11124) Bool)

(assert (=> d!959186 (= lt!1148223 (isEmpty!21110 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))))))

(assert (=> d!959186 (= (isEmpty!21104 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173))) lt!1148223)))

(declare-fun bs!554770 () Bool)

(assert (= bs!554770 d!959186))

(declare-fun m!3745573 () Bool)

(assert (=> bs!554770 m!3745573))

(assert (=> bs!554770 m!3745573))

(declare-fun m!3745575 () Bool)

(assert (=> bs!554770 m!3745575))

(declare-fun m!3745577 () Bool)

(assert (=> bs!554770 m!3745577))

(assert (=> b!3381209 d!959186))

(declare-fun b!3381347 () Bool)

(declare-fun e!2099102 () Bool)

(declare-fun lt!1148228 () tuple2!36452)

(assert (=> b!3381347 (= e!2099102 (= (_2!21360 lt!1148228) lt!1148173))))

(declare-fun d!959188 () Bool)

(declare-fun e!2099101 () Bool)

(assert (=> d!959188 e!2099101))

(declare-fun res!1368047 () Bool)

(assert (=> d!959188 (=> (not res!1368047) (not e!2099101))))

(assert (=> d!959188 (= res!1368047 e!2099102)))

(declare-fun c!575721 () Bool)

(declare-fun size!27898 (BalanceConc!21862) Int)

(assert (=> d!959188 (= c!575721 (> (size!27898 (_1!21360 lt!1148228)) 0))))

(declare-fun lexTailRecV2!1016 (LexerInterface!4963 List!36990 BalanceConc!21860 BalanceConc!21860 BalanceConc!21860 BalanceConc!21862) tuple2!36452)

(assert (=> d!959188 (= lt!1148228 (lexTailRecV2!1016 thiss!18206 rules!2135 lt!1148173 (BalanceConc!21861 Empty!11123) lt!1148173 (BalanceConc!21863 Empty!11124)))))

(assert (=> d!959188 (= (lex!2289 thiss!18206 rules!2135 lt!1148173) lt!1148228)))

(declare-fun b!3381348 () Bool)

(declare-fun res!1368046 () Bool)

(assert (=> b!3381348 (=> (not res!1368046) (not e!2099101))))

(declare-datatypes ((tuple2!36458 0))(
  ( (tuple2!36459 (_1!21363 List!36991) (_2!21363 List!36989)) )
))
(declare-fun lexList!1406 (LexerInterface!4963 List!36990 List!36989) tuple2!36458)

(assert (=> b!3381348 (= res!1368046 (= (list!13335 (_1!21360 lt!1148228)) (_1!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 lt!1148173)))))))

(declare-fun b!3381349 () Bool)

(declare-fun e!2099100 () Bool)

(assert (=> b!3381349 (= e!2099102 e!2099100)))

(declare-fun res!1368048 () Bool)

(declare-fun size!27899 (BalanceConc!21860) Int)

(assert (=> b!3381349 (= res!1368048 (< (size!27899 (_2!21360 lt!1148228)) (size!27899 lt!1148173)))))

(assert (=> b!3381349 (=> (not res!1368048) (not e!2099100))))

(declare-fun b!3381350 () Bool)

(assert (=> b!3381350 (= e!2099100 (not (isEmpty!21104 (_1!21360 lt!1148228))))))

(declare-fun b!3381351 () Bool)

(assert (=> b!3381351 (= e!2099101 (= (list!13331 (_2!21360 lt!1148228)) (_2!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 lt!1148173)))))))

(assert (= (and d!959188 c!575721) b!3381349))

(assert (= (and d!959188 (not c!575721)) b!3381347))

(assert (= (and b!3381349 res!1368048) b!3381350))

(assert (= (and d!959188 res!1368047) b!3381348))

(assert (= (and b!3381348 res!1368046) b!3381351))

(declare-fun m!3745579 () Bool)

(assert (=> b!3381351 m!3745579))

(declare-fun m!3745581 () Bool)

(assert (=> b!3381351 m!3745581))

(assert (=> b!3381351 m!3745581))

(declare-fun m!3745583 () Bool)

(assert (=> b!3381351 m!3745583))

(declare-fun m!3745585 () Bool)

(assert (=> b!3381349 m!3745585))

(declare-fun m!3745587 () Bool)

(assert (=> b!3381349 m!3745587))

(declare-fun m!3745589 () Bool)

(assert (=> d!959188 m!3745589))

(declare-fun m!3745591 () Bool)

(assert (=> d!959188 m!3745591))

(declare-fun m!3745593 () Bool)

(assert (=> b!3381350 m!3745593))

(declare-fun m!3745595 () Bool)

(assert (=> b!3381348 m!3745595))

(assert (=> b!3381348 m!3745581))

(assert (=> b!3381348 m!3745581))

(assert (=> b!3381348 m!3745583))

(assert (=> b!3381209 d!959188))

(declare-fun d!959190 () Bool)

(declare-fun fromListB!1702 (List!36989) BalanceConc!21860)

(assert (=> d!959190 (= (seqFromList!3801 lt!1148159) (fromListB!1702 lt!1148159))))

(declare-fun bs!554771 () Bool)

(assert (= bs!554771 d!959190))

(declare-fun m!3745597 () Bool)

(assert (=> bs!554771 m!3745597))

(assert (=> b!3381209 d!959190))

(declare-fun d!959192 () Bool)

(assert (=> d!959192 (= (inv!49932 (tag!5950 (rule!7926 separatorToken!241))) (= (mod (str.len (value!173618 (tag!5950 (rule!7926 separatorToken!241)))) 2) 0))))

(assert (=> b!3381230 d!959192))

(declare-fun d!959194 () Bool)

(declare-fun res!1368049 () Bool)

(declare-fun e!2099103 () Bool)

(assert (=> d!959194 (=> (not res!1368049) (not e!2099103))))

(assert (=> d!959194 (= res!1368049 (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))))))

(assert (=> d!959194 (= (inv!49936 (transformation!5374 (rule!7926 separatorToken!241))) e!2099103)))

(declare-fun b!3381352 () Bool)

(assert (=> b!3381352 (= e!2099103 (equivClasses!2142 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))))))

(assert (= (and d!959194 res!1368049) b!3381352))

(declare-fun m!3745599 () Bool)

(assert (=> d!959194 m!3745599))

(declare-fun m!3745601 () Bool)

(assert (=> b!3381352 m!3745601))

(assert (=> b!3381230 d!959194))

(declare-fun d!959196 () Bool)

(assert (=> d!959196 (= (list!13331 lt!1148174) (list!13334 (c!575699 lt!1148174)))))

(declare-fun bs!554772 () Bool)

(assert (= bs!554772 d!959196))

(declare-fun m!3745603 () Bool)

(assert (=> bs!554772 m!3745603))

(assert (=> b!3381210 d!959196))

(declare-fun d!959198 () Bool)

(declare-fun lt!1148249 () BalanceConc!21860)

(declare-fun printListTailRec!648 (LexerInterface!4963 List!36991 List!36989) List!36989)

(declare-fun dropList!1165 (BalanceConc!21862 Int) List!36991)

(assert (=> d!959198 (= (list!13331 lt!1148249) (printListTailRec!648 thiss!18206 (dropList!1165 lt!1148155 0) (list!13331 (BalanceConc!21861 Empty!11123))))))

(declare-fun e!2099109 () BalanceConc!21860)

(assert (=> d!959198 (= lt!1148249 e!2099109)))

(declare-fun c!575724 () Bool)

(assert (=> d!959198 (= c!575724 (>= 0 (size!27898 lt!1148155)))))

(declare-fun e!2099108 () Bool)

(assert (=> d!959198 e!2099108))

(declare-fun res!1368052 () Bool)

(assert (=> d!959198 (=> (not res!1368052) (not e!2099108))))

(assert (=> d!959198 (= res!1368052 (>= 0 0))))

(assert (=> d!959198 (= (printTailRec!1458 thiss!18206 lt!1148155 0 (BalanceConc!21861 Empty!11123)) lt!1148249)))

(declare-fun b!3381359 () Bool)

(assert (=> b!3381359 (= e!2099108 (<= 0 (size!27898 lt!1148155)))))

(declare-fun b!3381360 () Bool)

(assert (=> b!3381360 (= e!2099109 (BalanceConc!21861 Empty!11123))))

(declare-fun b!3381361 () Bool)

(declare-fun ++!9011 (BalanceConc!21860 BalanceConc!21860) BalanceConc!21860)

(declare-fun apply!8576 (BalanceConc!21862 Int) Token!10114)

(assert (=> b!3381361 (= e!2099109 (printTailRec!1458 thiss!18206 lt!1148155 (+ 0 1) (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0)))))))

(declare-fun lt!1148248 () List!36991)

(assert (=> b!3381361 (= lt!1148248 (list!13335 lt!1148155))))

(declare-fun lt!1148243 () Unit!51972)

(declare-fun lemmaDropApply!1123 (List!36991 Int) Unit!51972)

(assert (=> b!3381361 (= lt!1148243 (lemmaDropApply!1123 lt!1148248 0))))

(declare-fun head!7227 (List!36991) Token!10114)

(declare-fun drop!1963 (List!36991 Int) List!36991)

(declare-fun apply!8577 (List!36991 Int) Token!10114)

(assert (=> b!3381361 (= (head!7227 (drop!1963 lt!1148248 0)) (apply!8577 lt!1148248 0))))

(declare-fun lt!1148247 () Unit!51972)

(assert (=> b!3381361 (= lt!1148247 lt!1148243)))

(declare-fun lt!1148246 () List!36991)

(assert (=> b!3381361 (= lt!1148246 (list!13335 lt!1148155))))

(declare-fun lt!1148244 () Unit!51972)

(declare-fun lemmaDropTail!1007 (List!36991 Int) Unit!51972)

(assert (=> b!3381361 (= lt!1148244 (lemmaDropTail!1007 lt!1148246 0))))

(declare-fun tail!5357 (List!36991) List!36991)

(assert (=> b!3381361 (= (tail!5357 (drop!1963 lt!1148246 0)) (drop!1963 lt!1148246 (+ 0 1)))))

(declare-fun lt!1148245 () Unit!51972)

(assert (=> b!3381361 (= lt!1148245 lt!1148244)))

(assert (= (and d!959198 res!1368052) b!3381359))

(assert (= (and d!959198 c!575724) b!3381360))

(assert (= (and d!959198 (not c!575724)) b!3381361))

(declare-fun m!3745605 () Bool)

(assert (=> d!959198 m!3745605))

(declare-fun m!3745607 () Bool)

(assert (=> d!959198 m!3745607))

(declare-fun m!3745609 () Bool)

(assert (=> d!959198 m!3745609))

(declare-fun m!3745611 () Bool)

(assert (=> d!959198 m!3745611))

(declare-fun m!3745613 () Bool)

(assert (=> d!959198 m!3745613))

(assert (=> d!959198 m!3745607))

(assert (=> d!959198 m!3745609))

(assert (=> b!3381359 m!3745613))

(declare-fun m!3745615 () Bool)

(assert (=> b!3381361 m!3745615))

(declare-fun m!3745617 () Bool)

(assert (=> b!3381361 m!3745617))

(declare-fun m!3745619 () Bool)

(assert (=> b!3381361 m!3745619))

(declare-fun m!3745621 () Bool)

(assert (=> b!3381361 m!3745621))

(declare-fun m!3745623 () Bool)

(assert (=> b!3381361 m!3745623))

(assert (=> b!3381361 m!3745615))

(declare-fun m!3745625 () Bool)

(assert (=> b!3381361 m!3745625))

(declare-fun m!3745627 () Bool)

(assert (=> b!3381361 m!3745627))

(declare-fun m!3745629 () Bool)

(assert (=> b!3381361 m!3745629))

(declare-fun m!3745631 () Bool)

(assert (=> b!3381361 m!3745631))

(declare-fun m!3745633 () Bool)

(assert (=> b!3381361 m!3745633))

(declare-fun m!3745635 () Bool)

(assert (=> b!3381361 m!3745635))

(assert (=> b!3381361 m!3745623))

(assert (=> b!3381361 m!3745627))

(assert (=> b!3381361 m!3745633))

(declare-fun m!3745637 () Bool)

(assert (=> b!3381361 m!3745637))

(assert (=> b!3381361 m!3745629))

(declare-fun m!3745639 () Bool)

(assert (=> b!3381361 m!3745639))

(assert (=> b!3381210 d!959198))

(declare-fun d!959200 () Bool)

(declare-fun lt!1148252 () BalanceConc!21860)

(assert (=> d!959200 (= (list!13331 lt!1148252) (printList!1511 thiss!18206 (list!13335 lt!1148155)))))

(assert (=> d!959200 (= lt!1148252 (printTailRec!1458 thiss!18206 lt!1148155 0 (BalanceConc!21861 Empty!11123)))))

(assert (=> d!959200 (= (print!2028 thiss!18206 lt!1148155) lt!1148252)))

(declare-fun bs!554773 () Bool)

(assert (= bs!554773 d!959200))

(declare-fun m!3745641 () Bool)

(assert (=> bs!554773 m!3745641))

(assert (=> bs!554773 m!3745625))

(assert (=> bs!554773 m!3745625))

(declare-fun m!3745643 () Bool)

(assert (=> bs!554773 m!3745643))

(assert (=> bs!554773 m!3745413))

(assert (=> b!3381210 d!959200))

(declare-fun d!959202 () Bool)

(declare-fun e!2099112 () Bool)

(assert (=> d!959202 e!2099112))

(declare-fun res!1368055 () Bool)

(assert (=> d!959202 (=> (not res!1368055) (not e!2099112))))

(declare-fun lt!1148255 () BalanceConc!21862)

(assert (=> d!959202 (= res!1368055 (= (list!13335 lt!1148255) (Cons!36867 (h!42287 tokens!494) Nil!36867)))))

(declare-fun singleton!1080 (Token!10114) BalanceConc!21862)

(assert (=> d!959202 (= lt!1148255 (singleton!1080 (h!42287 tokens!494)))))

(assert (=> d!959202 (= (singletonSeq!2470 (h!42287 tokens!494)) lt!1148255)))

(declare-fun b!3381364 () Bool)

(declare-fun isBalanced!3353 (Conc!11124) Bool)

(assert (=> b!3381364 (= e!2099112 (isBalanced!3353 (c!575700 lt!1148255)))))

(assert (= (and d!959202 res!1368055) b!3381364))

(declare-fun m!3745645 () Bool)

(assert (=> d!959202 m!3745645))

(declare-fun m!3745647 () Bool)

(assert (=> d!959202 m!3745647))

(declare-fun m!3745649 () Bool)

(assert (=> b!3381364 m!3745649))

(assert (=> b!3381210 d!959202))

(declare-fun d!959204 () Bool)

(declare-fun c!575727 () Bool)

(assert (=> d!959204 (= c!575727 ((_ is Cons!36867) (Cons!36867 (h!42287 tokens!494) Nil!36867)))))

(declare-fun e!2099115 () List!36989)

(assert (=> d!959204 (= (printList!1511 thiss!18206 (Cons!36867 (h!42287 tokens!494) Nil!36867)) e!2099115)))

(declare-fun b!3381369 () Bool)

(assert (=> b!3381369 (= e!2099115 (++!9009 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))) (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))))

(declare-fun b!3381370 () Bool)

(assert (=> b!3381370 (= e!2099115 Nil!36865)))

(assert (= (and d!959204 c!575727) b!3381369))

(assert (= (and d!959204 (not c!575727)) b!3381370))

(declare-fun m!3745651 () Bool)

(assert (=> b!3381369 m!3745651))

(assert (=> b!3381369 m!3745651))

(declare-fun m!3745653 () Bool)

(assert (=> b!3381369 m!3745653))

(declare-fun m!3745655 () Bool)

(assert (=> b!3381369 m!3745655))

(assert (=> b!3381369 m!3745653))

(assert (=> b!3381369 m!3745655))

(declare-fun m!3745657 () Bool)

(assert (=> b!3381369 m!3745657))

(assert (=> b!3381210 d!959204))

(declare-fun d!959206 () Bool)

(declare-fun lt!1148258 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5080 (List!36990) (InoxSet Rule!10548))

(assert (=> d!959206 (= lt!1148258 (select (content!5080 rules!2135) (rule!7926 separatorToken!241)))))

(declare-fun e!2099120 () Bool)

(assert (=> d!959206 (= lt!1148258 e!2099120)))

(declare-fun res!1368060 () Bool)

(assert (=> d!959206 (=> (not res!1368060) (not e!2099120))))

(assert (=> d!959206 (= res!1368060 ((_ is Cons!36866) rules!2135))))

(assert (=> d!959206 (= (contains!6742 rules!2135 (rule!7926 separatorToken!241)) lt!1148258)))

(declare-fun b!3381375 () Bool)

(declare-fun e!2099121 () Bool)

(assert (=> b!3381375 (= e!2099120 e!2099121)))

(declare-fun res!1368061 () Bool)

(assert (=> b!3381375 (=> res!1368061 e!2099121)))

(assert (=> b!3381375 (= res!1368061 (= (h!42286 rules!2135) (rule!7926 separatorToken!241)))))

(declare-fun b!3381376 () Bool)

(assert (=> b!3381376 (= e!2099121 (contains!6742 (t!263197 rules!2135) (rule!7926 separatorToken!241)))))

(assert (= (and d!959206 res!1368060) b!3381375))

(assert (= (and b!3381375 (not res!1368061)) b!3381376))

(declare-fun m!3745659 () Bool)

(assert (=> d!959206 m!3745659))

(declare-fun m!3745661 () Bool)

(assert (=> d!959206 m!3745661))

(declare-fun m!3745663 () Bool)

(assert (=> b!3381376 m!3745663))

(assert (=> b!3381211 d!959206))

(declare-fun d!959208 () Bool)

(assert (=> d!959208 (= (head!7225 lt!1148157) (h!42285 lt!1148157))))

(assert (=> b!3381234 d!959208))

(declare-fun d!959210 () Bool)

(declare-fun lt!1148261 () List!36989)

(assert (=> d!959210 (= (++!9009 lt!1148159 lt!1148261) lt!1148159)))

(declare-fun e!2099124 () List!36989)

(assert (=> d!959210 (= lt!1148261 e!2099124)))

(declare-fun c!575730 () Bool)

(assert (=> d!959210 (= c!575730 ((_ is Cons!36865) lt!1148159))))

(assert (=> d!959210 (>= (size!27895 lt!1148159) (size!27895 lt!1148159))))

(assert (=> d!959210 (= (getSuffix!1468 lt!1148159 lt!1148159) lt!1148261)))

(declare-fun b!3381381 () Bool)

(assert (=> b!3381381 (= e!2099124 (getSuffix!1468 (tail!5355 lt!1148159) (t!263196 lt!1148159)))))

(declare-fun b!3381382 () Bool)

(assert (=> b!3381382 (= e!2099124 lt!1148159)))

(assert (= (and d!959210 c!575730) b!3381381))

(assert (= (and d!959210 (not c!575730)) b!3381382))

(declare-fun m!3745665 () Bool)

(assert (=> d!959210 m!3745665))

(assert (=> d!959210 m!3745389))

(assert (=> d!959210 m!3745389))

(assert (=> b!3381381 m!3745527))

(assert (=> b!3381381 m!3745527))

(declare-fun m!3745667 () Bool)

(assert (=> b!3381381 m!3745667))

(assert (=> b!3381234 d!959210))

(declare-fun b!3381395 () Bool)

(declare-fun e!2099136 () Option!7395)

(declare-fun e!2099133 () Option!7395)

(assert (=> b!3381395 (= e!2099136 e!2099133)))

(declare-fun c!575735 () Bool)

(assert (=> b!3381395 (= c!575735 (and ((_ is Cons!36866) rules!2135) (not (= (tag!5950 (h!42286 rules!2135)) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3381396 () Bool)

(declare-fun e!2099134 () Bool)

(declare-fun lt!1148268 () Option!7395)

(assert (=> b!3381396 (= e!2099134 (= (tag!5950 (get!11768 lt!1148268)) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3381397 () Bool)

(declare-fun e!2099135 () Bool)

(assert (=> b!3381397 (= e!2099135 e!2099134)))

(declare-fun res!1368067 () Bool)

(assert (=> b!3381397 (=> (not res!1368067) (not e!2099134))))

(assert (=> b!3381397 (= res!1368067 (contains!6742 rules!2135 (get!11768 lt!1148268)))))

(declare-fun d!959212 () Bool)

(assert (=> d!959212 e!2099135))

(declare-fun res!1368066 () Bool)

(assert (=> d!959212 (=> res!1368066 e!2099135)))

(declare-fun isEmpty!21113 (Option!7395) Bool)

(assert (=> d!959212 (= res!1368066 (isEmpty!21113 lt!1148268))))

(assert (=> d!959212 (= lt!1148268 e!2099136)))

(declare-fun c!575736 () Bool)

(assert (=> d!959212 (= c!575736 (and ((_ is Cons!36866) rules!2135) (= (tag!5950 (h!42286 rules!2135)) (tag!5950 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> d!959212 (rulesInvariant!4360 thiss!18206 rules!2135)))

(assert (=> d!959212 (= (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))) lt!1148268)))

(declare-fun b!3381398 () Bool)

(assert (=> b!3381398 (= e!2099136 (Some!7394 (h!42286 rules!2135)))))

(declare-fun b!3381399 () Bool)

(assert (=> b!3381399 (= e!2099133 None!7394)))

(declare-fun b!3381400 () Bool)

(declare-fun lt!1148270 () Unit!51972)

(declare-fun lt!1148269 () Unit!51972)

(assert (=> b!3381400 (= lt!1148270 lt!1148269)))

(assert (=> b!3381400 (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!400 (LexerInterface!4963 Rule!10548 List!36990) Unit!51972)

(assert (=> b!3381400 (= lt!1148269 (lemmaInvariantOnRulesThenOnTail!400 thiss!18206 (h!42286 rules!2135) (t!263197 rules!2135)))))

(assert (=> b!3381400 (= e!2099133 (getRuleFromTag!1029 thiss!18206 (t!263197 rules!2135) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))

(assert (= (and d!959212 c!575736) b!3381398))

(assert (= (and d!959212 (not c!575736)) b!3381395))

(assert (= (and b!3381395 c!575735) b!3381400))

(assert (= (and b!3381395 (not c!575735)) b!3381399))

(assert (= (and d!959212 (not res!1368066)) b!3381397))

(assert (= (and b!3381397 res!1368067) b!3381396))

(declare-fun m!3745669 () Bool)

(assert (=> b!3381396 m!3745669))

(assert (=> b!3381397 m!3745669))

(assert (=> b!3381397 m!3745669))

(declare-fun m!3745671 () Bool)

(assert (=> b!3381397 m!3745671))

(declare-fun m!3745673 () Bool)

(assert (=> d!959212 m!3745673))

(assert (=> d!959212 m!3745427))

(declare-fun m!3745675 () Bool)

(assert (=> b!3381400 m!3745675))

(declare-fun m!3745677 () Bool)

(assert (=> b!3381400 m!3745677))

(declare-fun m!3745679 () Bool)

(assert (=> b!3381400 m!3745679))

(assert (=> b!3381234 d!959212))

(declare-fun b!3381401 () Bool)

(declare-fun e!2099140 () Option!7395)

(declare-fun e!2099137 () Option!7395)

(assert (=> b!3381401 (= e!2099140 e!2099137)))

(declare-fun c!575737 () Bool)

(assert (=> b!3381401 (= c!575737 (and ((_ is Cons!36866) rules!2135) (not (= (tag!5950 (h!42286 rules!2135)) (tag!5950 (rule!7926 separatorToken!241))))))))

(declare-fun b!3381402 () Bool)

(declare-fun e!2099138 () Bool)

(declare-fun lt!1148271 () Option!7395)

(assert (=> b!3381402 (= e!2099138 (= (tag!5950 (get!11768 lt!1148271)) (tag!5950 (rule!7926 separatorToken!241))))))

(declare-fun b!3381403 () Bool)

(declare-fun e!2099139 () Bool)

(assert (=> b!3381403 (= e!2099139 e!2099138)))

(declare-fun res!1368069 () Bool)

(assert (=> b!3381403 (=> (not res!1368069) (not e!2099138))))

(assert (=> b!3381403 (= res!1368069 (contains!6742 rules!2135 (get!11768 lt!1148271)))))

(declare-fun d!959214 () Bool)

(assert (=> d!959214 e!2099139))

(declare-fun res!1368068 () Bool)

(assert (=> d!959214 (=> res!1368068 e!2099139)))

(assert (=> d!959214 (= res!1368068 (isEmpty!21113 lt!1148271))))

(assert (=> d!959214 (= lt!1148271 e!2099140)))

(declare-fun c!575738 () Bool)

(assert (=> d!959214 (= c!575738 (and ((_ is Cons!36866) rules!2135) (= (tag!5950 (h!42286 rules!2135)) (tag!5950 (rule!7926 separatorToken!241)))))))

(assert (=> d!959214 (rulesInvariant!4360 thiss!18206 rules!2135)))

(assert (=> d!959214 (= (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))) lt!1148271)))

(declare-fun b!3381404 () Bool)

(assert (=> b!3381404 (= e!2099140 (Some!7394 (h!42286 rules!2135)))))

(declare-fun b!3381405 () Bool)

(assert (=> b!3381405 (= e!2099137 None!7394)))

(declare-fun b!3381406 () Bool)

(declare-fun lt!1148273 () Unit!51972)

(declare-fun lt!1148272 () Unit!51972)

(assert (=> b!3381406 (= lt!1148273 lt!1148272)))

(assert (=> b!3381406 (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135))))

(assert (=> b!3381406 (= lt!1148272 (lemmaInvariantOnRulesThenOnTail!400 thiss!18206 (h!42286 rules!2135) (t!263197 rules!2135)))))

(assert (=> b!3381406 (= e!2099137 (getRuleFromTag!1029 thiss!18206 (t!263197 rules!2135) (tag!5950 (rule!7926 separatorToken!241))))))

(assert (= (and d!959214 c!575738) b!3381404))

(assert (= (and d!959214 (not c!575738)) b!3381401))

(assert (= (and b!3381401 c!575737) b!3381406))

(assert (= (and b!3381401 (not c!575737)) b!3381405))

(assert (= (and d!959214 (not res!1368068)) b!3381403))

(assert (= (and b!3381403 res!1368069) b!3381402))

(declare-fun m!3745681 () Bool)

(assert (=> b!3381402 m!3745681))

(assert (=> b!3381403 m!3745681))

(assert (=> b!3381403 m!3745681))

(declare-fun m!3745683 () Bool)

(assert (=> b!3381403 m!3745683))

(declare-fun m!3745685 () Bool)

(assert (=> d!959214 m!3745685))

(assert (=> d!959214 m!3745427))

(assert (=> b!3381406 m!3745675))

(assert (=> b!3381406 m!3745677))

(declare-fun m!3745687 () Bool)

(assert (=> b!3381406 m!3745687))

(assert (=> b!3381234 d!959214))

(declare-fun d!959216 () Bool)

(assert (=> d!959216 (isEmpty!21105 (getSuffix!1468 lt!1148159 lt!1148159))))

(declare-fun lt!1148276 () Unit!51972)

(declare-fun choose!19566 (List!36989) Unit!51972)

(assert (=> d!959216 (= lt!1148276 (choose!19566 lt!1148159))))

(assert (=> d!959216 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!126 lt!1148159) lt!1148276)))

(declare-fun bs!554774 () Bool)

(assert (= bs!554774 d!959216))

(assert (=> bs!554774 m!3745371))

(assert (=> bs!554774 m!3745371))

(assert (=> bs!554774 m!3745401))

(declare-fun m!3745689 () Bool)

(assert (=> bs!554774 m!3745689))

(assert (=> b!3381234 d!959216))

(declare-fun d!959218 () Bool)

(assert (=> d!959218 (= (isDefined!5713 lt!1148165) (not (isEmpty!21113 lt!1148165)))))

(declare-fun bs!554775 () Bool)

(assert (= bs!554775 d!959218))

(declare-fun m!3745691 () Bool)

(assert (=> bs!554775 m!3745691))

(assert (=> b!3381234 d!959218))

(declare-fun d!959220 () Bool)

(assert (=> d!959220 (= (isDefined!5713 lt!1148172) (not (isEmpty!21113 lt!1148172)))))

(declare-fun bs!554776 () Bool)

(assert (= bs!554776 d!959220))

(declare-fun m!3745693 () Bool)

(assert (=> bs!554776 m!3745693))

(assert (=> b!3381234 d!959220))

(declare-fun bm!244527 () Bool)

(declare-fun call!244533 () List!36989)

(declare-fun call!244535 () List!36989)

(assert (=> bm!244527 (= call!244533 call!244535)))

(declare-fun bm!244528 () Bool)

(declare-fun c!575747 () Bool)

(declare-fun call!244532 () List!36989)

(declare-fun call!244534 () List!36989)

(assert (=> bm!244528 (= call!244532 (++!9009 (ite c!575747 call!244534 call!244533) (ite c!575747 call!244533 call!244534)))))

(declare-fun bm!244529 () Bool)

(declare-fun c!575748 () Bool)

(assert (=> bm!244529 (= call!244535 (usedCharacters!630 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(declare-fun b!3381423 () Bool)

(declare-fun e!2099152 () List!36989)

(assert (=> b!3381423 (= e!2099152 call!244532)))

(declare-fun d!959222 () Bool)

(declare-fun c!575749 () Bool)

(assert (=> d!959222 (= c!575749 (or ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 separatorToken!241))) ((_ is EmptyLang!10133) (regex!5374 (rule!7926 separatorToken!241)))))))

(declare-fun e!2099151 () List!36989)

(assert (=> d!959222 (= (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))) e!2099151)))

(declare-fun bm!244530 () Bool)

(assert (=> bm!244530 (= call!244534 (usedCharacters!630 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))

(declare-fun b!3381424 () Bool)

(assert (=> b!3381424 (= e!2099151 Nil!36865)))

(declare-fun b!3381425 () Bool)

(declare-fun e!2099150 () List!36989)

(assert (=> b!3381425 (= e!2099150 e!2099152)))

(assert (=> b!3381425 (= c!575747 ((_ is Union!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun b!3381426 () Bool)

(declare-fun e!2099149 () List!36989)

(assert (=> b!3381426 (= e!2099149 (Cons!36865 (c!575698 (regex!5374 (rule!7926 separatorToken!241))) Nil!36865))))

(declare-fun b!3381427 () Bool)

(assert (=> b!3381427 (= e!2099152 call!244532)))

(declare-fun b!3381428 () Bool)

(assert (=> b!3381428 (= e!2099150 call!244535)))

(declare-fun b!3381429 () Bool)

(assert (=> b!3381429 (= c!575748 ((_ is Star!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(assert (=> b!3381429 (= e!2099149 e!2099150)))

(declare-fun b!3381430 () Bool)

(assert (=> b!3381430 (= e!2099151 e!2099149)))

(declare-fun c!575750 () Bool)

(assert (=> b!3381430 (= c!575750 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(assert (= (and d!959222 c!575749) b!3381424))

(assert (= (and d!959222 (not c!575749)) b!3381430))

(assert (= (and b!3381430 c!575750) b!3381426))

(assert (= (and b!3381430 (not c!575750)) b!3381429))

(assert (= (and b!3381429 c!575748) b!3381428))

(assert (= (and b!3381429 (not c!575748)) b!3381425))

(assert (= (and b!3381425 c!575747) b!3381427))

(assert (= (and b!3381425 (not c!575747)) b!3381423))

(assert (= (or b!3381427 b!3381423) bm!244527))

(assert (= (or b!3381427 b!3381423) bm!244530))

(assert (= (or b!3381427 b!3381423) bm!244528))

(assert (= (or b!3381428 bm!244527) bm!244529))

(declare-fun m!3745695 () Bool)

(assert (=> bm!244528 m!3745695))

(declare-fun m!3745697 () Bool)

(assert (=> bm!244529 m!3745697))

(declare-fun m!3745699 () Bool)

(assert (=> bm!244530 m!3745699))

(assert (=> b!3381234 d!959222))

(declare-fun d!959224 () Bool)

(declare-fun lt!1148279 () Int)

(assert (=> d!959224 (>= lt!1148279 0)))

(declare-fun e!2099155 () Int)

(assert (=> d!959224 (= lt!1148279 e!2099155)))

(declare-fun c!575753 () Bool)

(assert (=> d!959224 (= c!575753 ((_ is Nil!36865) lt!1148159))))

(assert (=> d!959224 (= (size!27895 lt!1148159) lt!1148279)))

(declare-fun b!3381435 () Bool)

(assert (=> b!3381435 (= e!2099155 0)))

(declare-fun b!3381436 () Bool)

(assert (=> b!3381436 (= e!2099155 (+ 1 (size!27895 (t!263196 lt!1148159))))))

(assert (= (and d!959224 c!575753) b!3381435))

(assert (= (and d!959224 (not c!575753)) b!3381436))

(declare-fun m!3745701 () Bool)

(assert (=> b!3381436 m!3745701))

(assert (=> b!3381234 d!959224))

(declare-fun d!959226 () Bool)

(assert (=> d!959226 (= (isEmpty!21105 (getSuffix!1468 lt!1148159 lt!1148159)) ((_ is Nil!36865) (getSuffix!1468 lt!1148159 lt!1148159)))))

(assert (=> b!3381234 d!959226))

(declare-fun d!959228 () Bool)

(declare-fun dynLambda!15336 (Int BalanceConc!21860) TokenValue!5604)

(assert (=> d!959228 (= (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) lt!1148173) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173))))

(declare-fun b_lambda!95987 () Bool)

(assert (=> (not b_lambda!95987) (not d!959228)))

(declare-fun tb!180017 () Bool)

(declare-fun t!263222 () Bool)

(assert (=> (and b!3381213 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263222) tb!180017))

(declare-fun result!223474 () Bool)

(assert (=> tb!180017 (= result!223474 (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(declare-fun m!3745703 () Bool)

(assert (=> tb!180017 m!3745703))

(assert (=> d!959228 t!263222))

(declare-fun b_and!234963 () Bool)

(assert (= b_and!234927 (and (=> t!263222 result!223474) b_and!234963)))

(declare-fun t!263224 () Bool)

(declare-fun tb!180019 () Bool)

(assert (=> (and b!3381208 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263224) tb!180019))

(declare-fun result!223478 () Bool)

(assert (= result!223478 result!223474))

(assert (=> d!959228 t!263224))

(declare-fun b_and!234965 () Bool)

(assert (= b_and!234931 (and (=> t!263224 result!223478) b_and!234965)))

(declare-fun t!263226 () Bool)

(declare-fun tb!180021 () Bool)

(assert (=> (and b!3381233 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263226) tb!180021))

(declare-fun result!223480 () Bool)

(assert (= result!223480 result!223474))

(assert (=> d!959228 t!263226))

(declare-fun b_and!234967 () Bool)

(assert (= b_and!234935 (and (=> t!263226 result!223480) b_and!234967)))

(declare-fun m!3745705 () Bool)

(assert (=> d!959228 m!3745705))

(assert (=> b!3381234 d!959228))

(declare-fun d!959230 () Bool)

(assert (=> d!959230 (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 tokens!494))))

(declare-fun lt!1148290 () Unit!51972)

(declare-fun choose!19569 (LexerInterface!4963 List!36990 List!36991 Token!10114) Unit!51972)

(assert (=> d!959230 (= lt!1148290 (choose!19569 thiss!18206 rules!2135 tokens!494 (h!42287 tokens!494)))))

(assert (=> d!959230 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959230 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!958 thiss!18206 rules!2135 tokens!494 (h!42287 tokens!494)) lt!1148290)))

(declare-fun bs!554781 () Bool)

(assert (= bs!554781 d!959230))

(assert (=> bs!554781 m!3745369))

(declare-fun m!3745737 () Bool)

(assert (=> bs!554781 m!3745737))

(assert (=> bs!554781 m!3745405))

(assert (=> b!3381234 d!959230))

(declare-fun b!3381492 () Bool)

(declare-fun res!1368099 () Bool)

(declare-fun e!2099194 () Bool)

(assert (=> b!3381492 (=> (not res!1368099) (not e!2099194))))

(declare-fun lt!1148306 () Option!7396)

(declare-fun get!11770 (Option!7396) tuple2!36454)

(assert (=> b!3381492 (= res!1368099 (= (value!173619 (_1!21361 (get!11770 lt!1148306))) (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))))))))

(declare-fun d!959244 () Bool)

(declare-fun e!2099195 () Bool)

(assert (=> d!959244 e!2099195))

(declare-fun res!1368100 () Bool)

(assert (=> d!959244 (=> res!1368100 e!2099195)))

(declare-fun isEmpty!21114 (Option!7396) Bool)

(assert (=> d!959244 (= res!1368100 (isEmpty!21114 lt!1148306))))

(declare-fun e!2099192 () Option!7396)

(assert (=> d!959244 (= lt!1148306 e!2099192)))

(declare-fun c!575759 () Bool)

(declare-datatypes ((tuple2!36462 0))(
  ( (tuple2!36463 (_1!21365 List!36989) (_2!21365 List!36989)) )
))
(declare-fun lt!1148305 () tuple2!36462)

(assert (=> d!959244 (= c!575759 (isEmpty!21105 (_1!21365 lt!1148305)))))

(declare-fun findLongestMatch!794 (Regex!10133 List!36989) tuple2!36462)

(assert (=> d!959244 (= lt!1148305 (findLongestMatch!794 (regex!5374 (rule!7926 (h!42287 tokens!494))) lt!1148159))))

(declare-fun ruleValid!1704 (LexerInterface!4963 Rule!10548) Bool)

(assert (=> d!959244 (ruleValid!1704 thiss!18206 (rule!7926 (h!42287 tokens!494)))))

(assert (=> d!959244 (= (maxPrefixOneRule!1686 thiss!18206 (rule!7926 (h!42287 tokens!494)) lt!1148159) lt!1148306)))

(declare-fun b!3381493 () Bool)

(declare-fun res!1368104 () Bool)

(assert (=> b!3381493 (=> (not res!1368104) (not e!2099194))))

(assert (=> b!3381493 (= res!1368104 (= (rule!7926 (_1!21361 (get!11770 lt!1148306))) (rule!7926 (h!42287 tokens!494))))))

(declare-fun b!3381494 () Bool)

(declare-fun res!1368105 () Bool)

(assert (=> b!3381494 (=> (not res!1368105) (not e!2099194))))

(assert (=> b!3381494 (= res!1368105 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))) (_2!21361 (get!11770 lt!1148306))) lt!1148159))))

(declare-fun b!3381495 () Bool)

(assert (=> b!3381495 (= e!2099192 None!7395)))

(declare-fun b!3381496 () Bool)

(assert (=> b!3381496 (= e!2099195 e!2099194)))

(declare-fun res!1368101 () Bool)

(assert (=> b!3381496 (=> (not res!1368101) (not e!2099194))))

(assert (=> b!3381496 (= res!1368101 (matchR!4725 (regex!5374 (rule!7926 (h!42287 tokens!494))) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))

(declare-fun b!3381497 () Bool)

(declare-fun e!2099193 () Bool)

(declare-fun findLongestMatchInner!879 (Regex!10133 List!36989 Int List!36989 List!36989 Int) tuple2!36462)

(assert (=> b!3381497 (= e!2099193 (matchR!4725 (regex!5374 (rule!7926 (h!42287 tokens!494))) (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(declare-fun b!3381498 () Bool)

(declare-fun res!1368103 () Bool)

(assert (=> b!3381498 (=> (not res!1368103) (not e!2099194))))

(assert (=> b!3381498 (= res!1368103 (< (size!27895 (_2!21361 (get!11770 lt!1148306))) (size!27895 lt!1148159)))))

(declare-fun b!3381499 () Bool)

(assert (=> b!3381499 (= e!2099192 (Some!7395 (tuple2!36455 (Token!10115 (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 (_1!21365 lt!1148305))) (rule!7926 (h!42287 tokens!494)) (size!27899 (seqFromList!3801 (_1!21365 lt!1148305))) (_1!21365 lt!1148305)) (_2!21365 lt!1148305))))))

(declare-fun lt!1148307 () Unit!51972)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!852 (Regex!10133 List!36989) Unit!51972)

(assert (=> b!3381499 (= lt!1148307 (longestMatchIsAcceptedByMatchOrIsEmpty!852 (regex!5374 (rule!7926 (h!42287 tokens!494))) lt!1148159))))

(declare-fun res!1368102 () Bool)

(assert (=> b!3381499 (= res!1368102 (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(assert (=> b!3381499 (=> res!1368102 e!2099193)))

(assert (=> b!3381499 e!2099193))

(declare-fun lt!1148308 () Unit!51972)

(assert (=> b!3381499 (= lt!1148308 lt!1148307)))

(declare-fun lt!1148304 () Unit!51972)

(declare-fun lemmaSemiInverse!1227 (TokenValueInjection!10636 BalanceConc!21860) Unit!51972)

(assert (=> b!3381499 (= lt!1148304 (lemmaSemiInverse!1227 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 (_1!21365 lt!1148305))))))

(declare-fun b!3381500 () Bool)

(assert (=> b!3381500 (= e!2099194 (= (size!27894 (_1!21361 (get!11770 lt!1148306))) (size!27895 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306))))))))

(assert (= (and d!959244 c!575759) b!3381495))

(assert (= (and d!959244 (not c!575759)) b!3381499))

(assert (= (and b!3381499 (not res!1368102)) b!3381497))

(assert (= (and d!959244 (not res!1368100)) b!3381496))

(assert (= (and b!3381496 res!1368101) b!3381494))

(assert (= (and b!3381494 res!1368105) b!3381498))

(assert (= (and b!3381498 res!1368103) b!3381493))

(assert (= (and b!3381493 res!1368104) b!3381492))

(assert (= (and b!3381492 res!1368099) b!3381500))

(declare-fun m!3745757 () Bool)

(assert (=> d!959244 m!3745757))

(declare-fun m!3745759 () Bool)

(assert (=> d!959244 m!3745759))

(declare-fun m!3745761 () Bool)

(assert (=> d!959244 m!3745761))

(declare-fun m!3745763 () Bool)

(assert (=> d!959244 m!3745763))

(declare-fun m!3745765 () Bool)

(assert (=> b!3381500 m!3745765))

(declare-fun m!3745767 () Bool)

(assert (=> b!3381500 m!3745767))

(assert (=> b!3381496 m!3745765))

(declare-fun m!3745769 () Bool)

(assert (=> b!3381496 m!3745769))

(assert (=> b!3381496 m!3745769))

(declare-fun m!3745771 () Bool)

(assert (=> b!3381496 m!3745771))

(assert (=> b!3381496 m!3745771))

(declare-fun m!3745773 () Bool)

(assert (=> b!3381496 m!3745773))

(declare-fun m!3745775 () Bool)

(assert (=> b!3381497 m!3745775))

(assert (=> b!3381497 m!3745389))

(assert (=> b!3381497 m!3745775))

(assert (=> b!3381497 m!3745389))

(declare-fun m!3745777 () Bool)

(assert (=> b!3381497 m!3745777))

(declare-fun m!3745779 () Bool)

(assert (=> b!3381497 m!3745779))

(assert (=> b!3381498 m!3745765))

(declare-fun m!3745781 () Bool)

(assert (=> b!3381498 m!3745781))

(assert (=> b!3381498 m!3745389))

(declare-fun m!3745783 () Bool)

(assert (=> b!3381499 m!3745783))

(declare-fun m!3745787 () Bool)

(assert (=> b!3381499 m!3745787))

(assert (=> b!3381499 m!3745783))

(declare-fun m!3745789 () Bool)

(assert (=> b!3381499 m!3745789))

(assert (=> b!3381499 m!3745783))

(declare-fun m!3745791 () Bool)

(assert (=> b!3381499 m!3745791))

(assert (=> b!3381499 m!3745389))

(declare-fun m!3745793 () Bool)

(assert (=> b!3381499 m!3745793))

(assert (=> b!3381499 m!3745775))

(assert (=> b!3381499 m!3745783))

(assert (=> b!3381499 m!3745775))

(assert (=> b!3381499 m!3745389))

(assert (=> b!3381499 m!3745777))

(declare-fun m!3745795 () Bool)

(assert (=> b!3381499 m!3745795))

(assert (=> b!3381494 m!3745765))

(assert (=> b!3381494 m!3745769))

(assert (=> b!3381494 m!3745769))

(assert (=> b!3381494 m!3745771))

(assert (=> b!3381494 m!3745771))

(declare-fun m!3745797 () Bool)

(assert (=> b!3381494 m!3745797))

(assert (=> b!3381493 m!3745765))

(assert (=> b!3381492 m!3745765))

(declare-fun m!3745799 () Bool)

(assert (=> b!3381492 m!3745799))

(assert (=> b!3381492 m!3745799))

(declare-fun m!3745801 () Bool)

(assert (=> b!3381492 m!3745801))

(assert (=> b!3381234 d!959244))

(declare-fun d!959252 () Bool)

(assert (=> d!959252 (= (maxPrefixOneRule!1686 thiss!18206 (rule!7926 (h!42287 tokens!494)) lt!1148159) (Some!7395 (tuple2!36455 (Token!10115 (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 lt!1148159)) (rule!7926 (h!42287 tokens!494)) (size!27895 lt!1148159) lt!1148159) Nil!36865)))))

(declare-fun lt!1148311 () Unit!51972)

(declare-fun choose!19570 (LexerInterface!4963 List!36990 List!36989 List!36989 List!36989 Rule!10548) Unit!51972)

(assert (=> d!959252 (= lt!1148311 (choose!19570 thiss!18206 rules!2135 lt!1148159 lt!1148159 Nil!36865 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!959252 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959252 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!785 thiss!18206 rules!2135 lt!1148159 lt!1148159 Nil!36865 (rule!7926 (h!42287 tokens!494))) lt!1148311)))

(declare-fun bs!554783 () Bool)

(assert (= bs!554783 d!959252))

(assert (=> bs!554783 m!3745309))

(assert (=> bs!554783 m!3745389))

(assert (=> bs!554783 m!3745309))

(declare-fun m!3745811 () Bool)

(assert (=> bs!554783 m!3745811))

(declare-fun m!3745813 () Bool)

(assert (=> bs!554783 m!3745813))

(assert (=> bs!554783 m!3745377))

(assert (=> bs!554783 m!3745405))

(assert (=> b!3381234 d!959252))

(declare-fun d!959258 () Bool)

(declare-fun e!2099204 () Bool)

(assert (=> d!959258 e!2099204))

(declare-fun res!1368116 () Bool)

(assert (=> d!959258 (=> (not res!1368116) (not e!2099204))))

(assert (=> d!959258 (= res!1368116 (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun lt!1148314 () Unit!51972)

(declare-fun choose!19572 (LexerInterface!4963 List!36990 List!36989 Token!10114) Unit!51972)

(assert (=> d!959258 (= lt!1148314 (choose!19572 thiss!18206 rules!2135 lt!1148159 (h!42287 tokens!494)))))

(assert (=> d!959258 (rulesInvariant!4360 thiss!18206 rules!2135)))

(assert (=> d!959258 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1029 thiss!18206 rules!2135 lt!1148159 (h!42287 tokens!494)) lt!1148314)))

(declare-fun b!3381511 () Bool)

(declare-fun res!1368117 () Bool)

(assert (=> b!3381511 (=> (not res!1368117) (not e!2099204))))

(assert (=> b!3381511 (= res!1368117 (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))) (list!13331 (charsOf!3388 (h!42287 tokens!494)))))))

(declare-fun b!3381512 () Bool)

(assert (=> b!3381512 (= e!2099204 (= (rule!7926 (h!42287 tokens!494)) (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(assert (= (and d!959258 res!1368116) b!3381511))

(assert (= (and b!3381511 res!1368117) b!3381512))

(assert (=> d!959258 m!3745375))

(assert (=> d!959258 m!3745375))

(declare-fun m!3745815 () Bool)

(assert (=> d!959258 m!3745815))

(declare-fun m!3745817 () Bool)

(assert (=> d!959258 m!3745817))

(assert (=> d!959258 m!3745427))

(assert (=> b!3381511 m!3745349))

(assert (=> b!3381511 m!3745375))

(declare-fun m!3745819 () Bool)

(assert (=> b!3381511 m!3745819))

(assert (=> b!3381511 m!3745375))

(assert (=> b!3381511 m!3745351))

(declare-fun m!3745821 () Bool)

(assert (=> b!3381511 m!3745821))

(assert (=> b!3381511 m!3745349))

(assert (=> b!3381511 m!3745351))

(assert (=> b!3381512 m!3745375))

(assert (=> b!3381512 m!3745375))

(assert (=> b!3381512 m!3745819))

(assert (=> b!3381234 d!959258))

(declare-fun d!959260 () Bool)

(declare-fun lt!1148317 () Bool)

(declare-fun content!5081 (List!36989) (InoxSet C!20452))

(assert (=> d!959260 (= lt!1148317 (select (content!5081 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) lt!1148163))))

(declare-fun e!2099210 () Bool)

(assert (=> d!959260 (= lt!1148317 e!2099210)))

(declare-fun res!1368123 () Bool)

(assert (=> d!959260 (=> (not res!1368123) (not e!2099210))))

(assert (=> d!959260 (= res!1368123 ((_ is Cons!36865) (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))))))

(assert (=> d!959260 (= (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))) lt!1148163) lt!1148317)))

(declare-fun b!3381517 () Bool)

(declare-fun e!2099209 () Bool)

(assert (=> b!3381517 (= e!2099210 e!2099209)))

(declare-fun res!1368122 () Bool)

(assert (=> b!3381517 (=> res!1368122 e!2099209)))

(assert (=> b!3381517 (= res!1368122 (= (h!42285 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) lt!1148163))))

(declare-fun b!3381518 () Bool)

(assert (=> b!3381518 (= e!2099209 (contains!6743 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) lt!1148163))))

(assert (= (and d!959260 res!1368123) b!3381517))

(assert (= (and b!3381517 (not res!1368122)) b!3381518))

(assert (=> d!959260 m!3745395))

(declare-fun m!3745823 () Bool)

(assert (=> d!959260 m!3745823))

(declare-fun m!3745825 () Bool)

(assert (=> d!959260 m!3745825))

(declare-fun m!3745827 () Bool)

(assert (=> b!3381518 m!3745827))

(assert (=> b!3381234 d!959260))

(declare-fun d!959262 () Bool)

(declare-fun e!2099211 () Bool)

(assert (=> d!959262 e!2099211))

(declare-fun res!1368124 () Bool)

(assert (=> d!959262 (=> (not res!1368124) (not e!2099211))))

(assert (=> d!959262 (= res!1368124 (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))

(declare-fun lt!1148318 () Unit!51972)

(assert (=> d!959262 (= lt!1148318 (choose!19572 thiss!18206 rules!2135 lt!1148157 separatorToken!241))))

(assert (=> d!959262 (rulesInvariant!4360 thiss!18206 rules!2135)))

(assert (=> d!959262 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1029 thiss!18206 rules!2135 lt!1148157 separatorToken!241) lt!1148318)))

(declare-fun b!3381519 () Bool)

(declare-fun res!1368125 () Bool)

(assert (=> b!3381519 (=> (not res!1368125) (not e!2099211))))

(assert (=> b!3381519 (= res!1368125 (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))) (list!13331 (charsOf!3388 separatorToken!241))))))

(declare-fun b!3381520 () Bool)

(assert (=> b!3381520 (= e!2099211 (= (rule!7926 separatorToken!241) (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))

(assert (= (and d!959262 res!1368124) b!3381519))

(assert (= (and b!3381519 res!1368125) b!3381520))

(assert (=> d!959262 m!3745383))

(assert (=> d!959262 m!3745383))

(declare-fun m!3745829 () Bool)

(assert (=> d!959262 m!3745829))

(declare-fun m!3745831 () Bool)

(assert (=> d!959262 m!3745831))

(assert (=> d!959262 m!3745427))

(assert (=> b!3381519 m!3745317))

(assert (=> b!3381519 m!3745383))

(declare-fun m!3745833 () Bool)

(assert (=> b!3381519 m!3745833))

(assert (=> b!3381519 m!3745383))

(assert (=> b!3381519 m!3745323))

(declare-fun m!3745835 () Bool)

(assert (=> b!3381519 m!3745835))

(assert (=> b!3381519 m!3745317))

(assert (=> b!3381519 m!3745323))

(assert (=> b!3381520 m!3745383))

(assert (=> b!3381520 m!3745383))

(assert (=> b!3381520 m!3745833))

(assert (=> b!3381234 d!959262))

(declare-fun b!3381521 () Bool)

(declare-fun res!1368132 () Bool)

(declare-fun e!2099216 () Bool)

(assert (=> b!3381521 (=> res!1368132 e!2099216)))

(assert (=> b!3381521 (= res!1368132 (not (isEmpty!21105 (tail!5355 lt!1148157))))))

(declare-fun b!3381522 () Bool)

(declare-fun res!1368126 () Bool)

(declare-fun e!2099218 () Bool)

(assert (=> b!3381522 (=> res!1368126 e!2099218)))

(declare-fun e!2099215 () Bool)

(assert (=> b!3381522 (= res!1368126 e!2099215)))

(declare-fun res!1368133 () Bool)

(assert (=> b!3381522 (=> (not res!1368133) (not e!2099215))))

(declare-fun lt!1148319 () Bool)

(assert (=> b!3381522 (= res!1368133 lt!1148319)))

(declare-fun b!3381523 () Bool)

(declare-fun e!2099212 () Bool)

(declare-fun call!244536 () Bool)

(assert (=> b!3381523 (= e!2099212 (= lt!1148319 call!244536))))

(declare-fun d!959264 () Bool)

(assert (=> d!959264 e!2099212))

(declare-fun c!575762 () Bool)

(assert (=> d!959264 (= c!575762 ((_ is EmptyExpr!10133) (regex!5374 lt!1148167)))))

(declare-fun e!2099214 () Bool)

(assert (=> d!959264 (= lt!1148319 e!2099214)))

(declare-fun c!575761 () Bool)

(assert (=> d!959264 (= c!575761 (isEmpty!21105 lt!1148157))))

(assert (=> d!959264 (validRegex!4607 (regex!5374 lt!1148167))))

(assert (=> d!959264 (= (matchR!4725 (regex!5374 lt!1148167) lt!1148157) lt!1148319)))

(declare-fun b!3381524 () Bool)

(declare-fun res!1368131 () Bool)

(assert (=> b!3381524 (=> res!1368131 e!2099218)))

(assert (=> b!3381524 (= res!1368131 (not ((_ is ElementMatch!10133) (regex!5374 lt!1148167))))))

(declare-fun e!2099213 () Bool)

(assert (=> b!3381524 (= e!2099213 e!2099218)))

(declare-fun b!3381525 () Bool)

(assert (=> b!3381525 (= e!2099214 (nullable!3451 (regex!5374 lt!1148167)))))

(declare-fun b!3381526 () Bool)

(declare-fun res!1368128 () Bool)

(assert (=> b!3381526 (=> (not res!1368128) (not e!2099215))))

(assert (=> b!3381526 (= res!1368128 (isEmpty!21105 (tail!5355 lt!1148157)))))

(declare-fun bm!244531 () Bool)

(assert (=> bm!244531 (= call!244536 (isEmpty!21105 lt!1148157))))

(declare-fun b!3381527 () Bool)

(assert (=> b!3381527 (= e!2099214 (matchR!4725 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)) (tail!5355 lt!1148157)))))

(declare-fun b!3381528 () Bool)

(assert (=> b!3381528 (= e!2099213 (not lt!1148319))))

(declare-fun b!3381529 () Bool)

(declare-fun e!2099217 () Bool)

(assert (=> b!3381529 (= e!2099218 e!2099217)))

(declare-fun res!1368127 () Bool)

(assert (=> b!3381529 (=> (not res!1368127) (not e!2099217))))

(assert (=> b!3381529 (= res!1368127 (not lt!1148319))))

(declare-fun b!3381530 () Bool)

(assert (=> b!3381530 (= e!2099217 e!2099216)))

(declare-fun res!1368130 () Bool)

(assert (=> b!3381530 (=> res!1368130 e!2099216)))

(assert (=> b!3381530 (= res!1368130 call!244536)))

(declare-fun b!3381531 () Bool)

(assert (=> b!3381531 (= e!2099215 (= (head!7225 lt!1148157) (c!575698 (regex!5374 lt!1148167))))))

(declare-fun b!3381532 () Bool)

(assert (=> b!3381532 (= e!2099216 (not (= (head!7225 lt!1148157) (c!575698 (regex!5374 lt!1148167)))))))

(declare-fun b!3381533 () Bool)

(declare-fun res!1368129 () Bool)

(assert (=> b!3381533 (=> (not res!1368129) (not e!2099215))))

(assert (=> b!3381533 (= res!1368129 (not call!244536))))

(declare-fun b!3381534 () Bool)

(assert (=> b!3381534 (= e!2099212 e!2099213)))

(declare-fun c!575760 () Bool)

(assert (=> b!3381534 (= c!575760 ((_ is EmptyLang!10133) (regex!5374 lt!1148167)))))

(assert (= (and d!959264 c!575761) b!3381525))

(assert (= (and d!959264 (not c!575761)) b!3381527))

(assert (= (and d!959264 c!575762) b!3381523))

(assert (= (and d!959264 (not c!575762)) b!3381534))

(assert (= (and b!3381534 c!575760) b!3381528))

(assert (= (and b!3381534 (not c!575760)) b!3381524))

(assert (= (and b!3381524 (not res!1368131)) b!3381522))

(assert (= (and b!3381522 res!1368133) b!3381533))

(assert (= (and b!3381533 res!1368129) b!3381526))

(assert (= (and b!3381526 res!1368128) b!3381531))

(assert (= (and b!3381522 (not res!1368126)) b!3381529))

(assert (= (and b!3381529 res!1368127) b!3381530))

(assert (= (and b!3381530 (not res!1368130)) b!3381521))

(assert (= (and b!3381521 (not res!1368132)) b!3381532))

(assert (= (or b!3381523 b!3381530 b!3381533) bm!244531))

(declare-fun m!3745837 () Bool)

(assert (=> b!3381525 m!3745837))

(declare-fun m!3745839 () Bool)

(assert (=> bm!244531 m!3745839))

(assert (=> d!959264 m!3745839))

(declare-fun m!3745841 () Bool)

(assert (=> d!959264 m!3745841))

(declare-fun m!3745843 () Bool)

(assert (=> b!3381526 m!3745843))

(assert (=> b!3381526 m!3745843))

(declare-fun m!3745845 () Bool)

(assert (=> b!3381526 m!3745845))

(assert (=> b!3381527 m!3745373))

(assert (=> b!3381527 m!3745373))

(declare-fun m!3745847 () Bool)

(assert (=> b!3381527 m!3745847))

(assert (=> b!3381527 m!3745843))

(assert (=> b!3381527 m!3745847))

(assert (=> b!3381527 m!3745843))

(declare-fun m!3745849 () Bool)

(assert (=> b!3381527 m!3745849))

(assert (=> b!3381521 m!3745843))

(assert (=> b!3381521 m!3745843))

(assert (=> b!3381521 m!3745845))

(assert (=> b!3381531 m!3745373))

(assert (=> b!3381532 m!3745373))

(assert (=> b!3381235 d!959264))

(declare-fun d!959266 () Bool)

(assert (=> d!959266 (= (get!11768 lt!1148165) (v!36482 lt!1148165))))

(assert (=> b!3381235 d!959266))

(declare-fun b!3381545 () Bool)

(declare-fun e!2099226 () Bool)

(declare-fun inv!16 (TokenValue!5604) Bool)

(assert (=> b!3381545 (= e!2099226 (inv!16 (value!173619 separatorToken!241)))))

(declare-fun b!3381546 () Bool)

(declare-fun e!2099225 () Bool)

(declare-fun inv!15 (TokenValue!5604) Bool)

(assert (=> b!3381546 (= e!2099225 (inv!15 (value!173619 separatorToken!241)))))

(declare-fun b!3381547 () Bool)

(declare-fun res!1368136 () Bool)

(assert (=> b!3381547 (=> res!1368136 e!2099225)))

(assert (=> b!3381547 (= res!1368136 (not ((_ is IntegerValue!16814) (value!173619 separatorToken!241))))))

(declare-fun e!2099227 () Bool)

(assert (=> b!3381547 (= e!2099227 e!2099225)))

(declare-fun d!959268 () Bool)

(declare-fun c!575768 () Bool)

(assert (=> d!959268 (= c!575768 ((_ is IntegerValue!16812) (value!173619 separatorToken!241)))))

(assert (=> d!959268 (= (inv!21 (value!173619 separatorToken!241)) e!2099226)))

(declare-fun b!3381548 () Bool)

(declare-fun inv!17 (TokenValue!5604) Bool)

(assert (=> b!3381548 (= e!2099227 (inv!17 (value!173619 separatorToken!241)))))

(declare-fun b!3381549 () Bool)

(assert (=> b!3381549 (= e!2099226 e!2099227)))

(declare-fun c!575767 () Bool)

(assert (=> b!3381549 (= c!575767 ((_ is IntegerValue!16813) (value!173619 separatorToken!241)))))

(assert (= (and d!959268 c!575768) b!3381545))

(assert (= (and d!959268 (not c!575768)) b!3381549))

(assert (= (and b!3381549 c!575767) b!3381548))

(assert (= (and b!3381549 (not c!575767)) b!3381547))

(assert (= (and b!3381547 (not res!1368136)) b!3381546))

(declare-fun m!3745851 () Bool)

(assert (=> b!3381545 m!3745851))

(declare-fun m!3745853 () Bool)

(assert (=> b!3381546 m!3745853))

(declare-fun m!3745855 () Bool)

(assert (=> b!3381548 m!3745855))

(assert (=> b!3381214 d!959268))

(declare-fun d!959270 () Bool)

(declare-fun res!1368141 () Bool)

(declare-fun e!2099232 () Bool)

(assert (=> d!959270 (=> res!1368141 e!2099232)))

(assert (=> d!959270 (= res!1368141 (not ((_ is Cons!36866) rules!2135)))))

(assert (=> d!959270 (= (sepAndNonSepRulesDisjointChars!1568 rules!2135 rules!2135) e!2099232)))

(declare-fun b!3381554 () Bool)

(declare-fun e!2099233 () Bool)

(assert (=> b!3381554 (= e!2099232 e!2099233)))

(declare-fun res!1368142 () Bool)

(assert (=> b!3381554 (=> (not res!1368142) (not e!2099233))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!679 (Rule!10548 List!36990) Bool)

(assert (=> b!3381554 (= res!1368142 (ruleDisjointCharsFromAllFromOtherType!679 (h!42286 rules!2135) rules!2135))))

(declare-fun b!3381555 () Bool)

(assert (=> b!3381555 (= e!2099233 (sepAndNonSepRulesDisjointChars!1568 rules!2135 (t!263197 rules!2135)))))

(assert (= (and d!959270 (not res!1368141)) b!3381554))

(assert (= (and b!3381554 res!1368142) b!3381555))

(declare-fun m!3745857 () Bool)

(assert (=> b!3381554 m!3745857))

(declare-fun m!3745859 () Bool)

(assert (=> b!3381555 m!3745859))

(assert (=> b!3381215 d!959270))

(declare-fun d!959272 () Bool)

(declare-fun lt!1148320 () Bool)

(assert (=> d!959272 (= lt!1148320 (select (content!5080 rules!2135) (rule!7926 (h!42287 tokens!494))))))

(declare-fun e!2099234 () Bool)

(assert (=> d!959272 (= lt!1148320 e!2099234)))

(declare-fun res!1368143 () Bool)

(assert (=> d!959272 (=> (not res!1368143) (not e!2099234))))

(assert (=> d!959272 (= res!1368143 ((_ is Cons!36866) rules!2135))))

(assert (=> d!959272 (= (contains!6742 rules!2135 (rule!7926 (h!42287 tokens!494))) lt!1148320)))

(declare-fun b!3381556 () Bool)

(declare-fun e!2099235 () Bool)

(assert (=> b!3381556 (= e!2099234 e!2099235)))

(declare-fun res!1368144 () Bool)

(assert (=> b!3381556 (=> res!1368144 e!2099235)))

(assert (=> b!3381556 (= res!1368144 (= (h!42286 rules!2135) (rule!7926 (h!42287 tokens!494))))))

(declare-fun b!3381557 () Bool)

(assert (=> b!3381557 (= e!2099235 (contains!6742 (t!263197 rules!2135) (rule!7926 (h!42287 tokens!494))))))

(assert (= (and d!959272 res!1368143) b!3381556))

(assert (= (and b!3381556 (not res!1368144)) b!3381557))

(assert (=> d!959272 m!3745659))

(declare-fun m!3745861 () Bool)

(assert (=> d!959272 m!3745861))

(declare-fun m!3745863 () Bool)

(assert (=> b!3381557 m!3745863))

(assert (=> b!3381236 d!959272))

(declare-fun d!959274 () Bool)

(declare-fun lt!1148321 () Bool)

(assert (=> d!959274 (= lt!1148321 (select (content!5081 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) lt!1148163))))

(declare-fun e!2099237 () Bool)

(assert (=> d!959274 (= lt!1148321 e!2099237)))

(declare-fun res!1368146 () Bool)

(assert (=> d!959274 (=> (not res!1368146) (not e!2099237))))

(assert (=> d!959274 (= res!1368146 ((_ is Cons!36865) (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> d!959274 (= (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148163) lt!1148321)))

(declare-fun b!3381558 () Bool)

(declare-fun e!2099236 () Bool)

(assert (=> b!3381558 (= e!2099237 e!2099236)))

(declare-fun res!1368145 () Bool)

(assert (=> b!3381558 (=> res!1368145 e!2099236)))

(assert (=> b!3381558 (= res!1368145 (= (h!42285 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) lt!1148163))))

(declare-fun b!3381559 () Bool)

(assert (=> b!3381559 (= e!2099236 (contains!6743 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) lt!1148163))))

(assert (= (and d!959274 res!1368146) b!3381558))

(assert (= (and b!3381558 (not res!1368145)) b!3381559))

(assert (=> d!959274 m!3745339))

(declare-fun m!3745865 () Bool)

(assert (=> d!959274 m!3745865))

(declare-fun m!3745867 () Bool)

(assert (=> d!959274 m!3745867))

(declare-fun m!3745869 () Bool)

(assert (=> b!3381559 m!3745869))

(assert (=> b!3381236 d!959274))

(declare-fun bm!244532 () Bool)

(declare-fun call!244538 () List!36989)

(declare-fun call!244540 () List!36989)

(assert (=> bm!244532 (= call!244538 call!244540)))

(declare-fun call!244539 () List!36989)

(declare-fun bm!244533 () Bool)

(declare-fun call!244537 () List!36989)

(declare-fun c!575769 () Bool)

(assert (=> bm!244533 (= call!244537 (++!9009 (ite c!575769 call!244539 call!244538) (ite c!575769 call!244538 call!244539)))))

(declare-fun bm!244534 () Bool)

(declare-fun c!575770 () Bool)

(assert (=> bm!244534 (= call!244540 (usedCharacters!630 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(declare-fun b!3381560 () Bool)

(declare-fun e!2099241 () List!36989)

(assert (=> b!3381560 (= e!2099241 call!244537)))

(declare-fun d!959276 () Bool)

(declare-fun c!575771 () Bool)

(assert (=> d!959276 (= c!575771 (or ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))) ((_ is EmptyLang!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun e!2099240 () List!36989)

(assert (=> d!959276 (= (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))) e!2099240)))

(declare-fun bm!244535 () Bool)

(assert (=> bm!244535 (= call!244539 (usedCharacters!630 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3381561 () Bool)

(assert (=> b!3381561 (= e!2099240 Nil!36865)))

(declare-fun b!3381562 () Bool)

(declare-fun e!2099239 () List!36989)

(assert (=> b!3381562 (= e!2099239 e!2099241)))

(assert (=> b!3381562 (= c!575769 ((_ is Union!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3381563 () Bool)

(declare-fun e!2099238 () List!36989)

(assert (=> b!3381563 (= e!2099238 (Cons!36865 (c!575698 (regex!5374 (rule!7926 (h!42287 tokens!494)))) Nil!36865))))

(declare-fun b!3381564 () Bool)

(assert (=> b!3381564 (= e!2099241 call!244537)))

(declare-fun b!3381565 () Bool)

(assert (=> b!3381565 (= e!2099239 call!244540)))

(declare-fun b!3381566 () Bool)

(assert (=> b!3381566 (= c!575770 ((_ is Star!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (=> b!3381566 (= e!2099238 e!2099239)))

(declare-fun b!3381567 () Bool)

(assert (=> b!3381567 (= e!2099240 e!2099238)))

(declare-fun c!575772 () Bool)

(assert (=> b!3381567 (= c!575772 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (= (and d!959276 c!575771) b!3381561))

(assert (= (and d!959276 (not c!575771)) b!3381567))

(assert (= (and b!3381567 c!575772) b!3381563))

(assert (= (and b!3381567 (not c!575772)) b!3381566))

(assert (= (and b!3381566 c!575770) b!3381565))

(assert (= (and b!3381566 (not c!575770)) b!3381562))

(assert (= (and b!3381562 c!575769) b!3381564))

(assert (= (and b!3381562 (not c!575769)) b!3381560))

(assert (= (or b!3381564 b!3381560) bm!244532))

(assert (= (or b!3381564 b!3381560) bm!244535))

(assert (= (or b!3381564 b!3381560) bm!244533))

(assert (= (or b!3381565 bm!244532) bm!244534))

(declare-fun m!3745871 () Bool)

(assert (=> bm!244533 m!3745871))

(declare-fun m!3745873 () Bool)

(assert (=> bm!244534 m!3745873))

(declare-fun m!3745875 () Bool)

(assert (=> bm!244535 m!3745875))

(assert (=> b!3381236 d!959276))

(declare-fun d!959278 () Bool)

(assert (=> d!959278 (not (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148163))))

(declare-fun lt!1148324 () Unit!51972)

(declare-fun choose!19574 (LexerInterface!4963 List!36990 List!36990 Rule!10548 Rule!10548 C!20452) Unit!51972)

(assert (=> d!959278 (= lt!1148324 (choose!19574 thiss!18206 rules!2135 rules!2135 (rule!7926 (h!42287 tokens!494)) (rule!7926 separatorToken!241) lt!1148163))))

(assert (=> d!959278 (rulesInvariant!4360 thiss!18206 rules!2135)))

(assert (=> d!959278 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!214 thiss!18206 rules!2135 rules!2135 (rule!7926 (h!42287 tokens!494)) (rule!7926 separatorToken!241) lt!1148163) lt!1148324)))

(declare-fun bs!554784 () Bool)

(assert (= bs!554784 d!959278))

(assert (=> bs!554784 m!3745339))

(assert (=> bs!554784 m!3745339))

(assert (=> bs!554784 m!3745341))

(declare-fun m!3745877 () Bool)

(assert (=> bs!554784 m!3745877))

(assert (=> bs!554784 m!3745427))

(assert (=> b!3381236 d!959278))

(declare-fun bs!554793 () Bool)

(declare-fun d!959280 () Bool)

(assert (= bs!554793 (and d!959280 b!3381221)))

(declare-fun lambda!120495 () Int)

(assert (=> bs!554793 (not (= lambda!120495 lambda!120485))))

(declare-fun b!3381807 () Bool)

(declare-fun e!2099389 () Bool)

(assert (=> b!3381807 (= e!2099389 true)))

(declare-fun b!3381806 () Bool)

(declare-fun e!2099388 () Bool)

(assert (=> b!3381806 (= e!2099388 e!2099389)))

(declare-fun b!3381805 () Bool)

(declare-fun e!2099387 () Bool)

(assert (=> b!3381805 (= e!2099387 e!2099388)))

(assert (=> d!959280 e!2099387))

(assert (= b!3381806 b!3381807))

(assert (= b!3381805 b!3381806))

(assert (= (and d!959280 ((_ is Cons!36866) rules!2135)) b!3381805))

(declare-fun order!19413 () Int)

(declare-fun order!19415 () Int)

(declare-fun dynLambda!15337 (Int Int) Int)

(declare-fun dynLambda!15338 (Int Int) Int)

(assert (=> b!3381807 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15338 order!19415 lambda!120495))))

(declare-fun order!19417 () Int)

(declare-fun dynLambda!15339 (Int Int) Int)

(assert (=> b!3381807 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15338 order!19415 lambda!120495))))

(assert (=> d!959280 true))

(declare-fun e!2099380 () Bool)

(assert (=> d!959280 e!2099380))

(declare-fun res!1368271 () Bool)

(assert (=> d!959280 (=> (not res!1368271) (not e!2099380))))

(declare-fun lt!1148399 () Bool)

(assert (=> d!959280 (= res!1368271 (= lt!1148399 (forall!7757 (list!13335 lt!1148177) lambda!120495)))))

(declare-fun forall!7759 (BalanceConc!21862 Int) Bool)

(assert (=> d!959280 (= lt!1148399 (forall!7759 lt!1148177 lambda!120495))))

(assert (=> d!959280 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959280 (= (rulesProduceEachTokenIndividually!1414 thiss!18206 rules!2135 lt!1148177) lt!1148399)))

(declare-fun b!3381796 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1815 (LexerInterface!4963 List!36990 List!36991) Bool)

(assert (=> b!3381796 (= e!2099380 (= lt!1148399 (rulesProduceEachTokenIndividuallyList!1815 thiss!18206 rules!2135 (list!13335 lt!1148177))))))

(assert (= (and d!959280 res!1368271) b!3381796))

(declare-fun m!3746117 () Bool)

(assert (=> d!959280 m!3746117))

(assert (=> d!959280 m!3746117))

(declare-fun m!3746119 () Bool)

(assert (=> d!959280 m!3746119))

(declare-fun m!3746121 () Bool)

(assert (=> d!959280 m!3746121))

(assert (=> d!959280 m!3745405))

(assert (=> b!3381796 m!3746117))

(assert (=> b!3381796 m!3746117))

(declare-fun m!3746123 () Bool)

(assert (=> b!3381796 m!3746123))

(assert (=> b!3381237 d!959280))

(declare-fun d!959360 () Bool)

(declare-fun fromListB!1703 (List!36991) BalanceConc!21862)

(assert (=> d!959360 (= (seqFromList!3802 tokens!494) (fromListB!1703 tokens!494))))

(declare-fun bs!554794 () Bool)

(assert (= bs!554794 d!959360))

(declare-fun m!3746125 () Bool)

(assert (=> bs!554794 m!3746125))

(assert (=> b!3381237 d!959360))

(declare-fun d!959362 () Bool)

(declare-fun lt!1148421 () Bool)

(declare-fun e!2099452 () Bool)

(assert (=> d!959362 (= lt!1148421 e!2099452)))

(declare-fun res!1368308 () Bool)

(assert (=> d!959362 (=> (not res!1368308) (not e!2099452))))

(assert (=> d!959362 (= res!1368308 (= (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))) (list!13335 (singletonSeq!2470 (h!42287 tokens!494)))))))

(declare-fun e!2099453 () Bool)

(assert (=> d!959362 (= lt!1148421 e!2099453)))

(declare-fun res!1368309 () Bool)

(assert (=> d!959362 (=> (not res!1368309) (not e!2099453))))

(declare-fun lt!1148420 () tuple2!36452)

(assert (=> d!959362 (= res!1368309 (= (size!27898 (_1!21360 lt!1148420)) 1))))

(assert (=> d!959362 (= lt!1148420 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))))

(assert (=> d!959362 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959362 (= (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 tokens!494)) lt!1148421)))

(declare-fun b!3381915 () Bool)

(declare-fun res!1368310 () Bool)

(assert (=> b!3381915 (=> (not res!1368310) (not e!2099453))))

(assert (=> b!3381915 (= res!1368310 (= (apply!8576 (_1!21360 lt!1148420) 0) (h!42287 tokens!494)))))

(declare-fun b!3381916 () Bool)

(declare-fun isEmpty!21115 (BalanceConc!21860) Bool)

(assert (=> b!3381916 (= e!2099453 (isEmpty!21115 (_2!21360 lt!1148420)))))

(declare-fun b!3381917 () Bool)

(assert (=> b!3381917 (= e!2099452 (isEmpty!21115 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))))))

(assert (= (and d!959362 res!1368309) b!3381915))

(assert (= (and b!3381915 res!1368310) b!3381916))

(assert (= (and d!959362 res!1368308) b!3381917))

(assert (=> d!959362 m!3745411))

(assert (=> d!959362 m!3745411))

(declare-fun m!3746185 () Bool)

(assert (=> d!959362 m!3746185))

(declare-fun m!3746187 () Bool)

(assert (=> d!959362 m!3746187))

(declare-fun m!3746189 () Bool)

(assert (=> d!959362 m!3746189))

(assert (=> d!959362 m!3745411))

(declare-fun m!3746191 () Bool)

(assert (=> d!959362 m!3746191))

(assert (=> d!959362 m!3745405))

(assert (=> d!959362 m!3746185))

(declare-fun m!3746193 () Bool)

(assert (=> d!959362 m!3746193))

(declare-fun m!3746195 () Bool)

(assert (=> b!3381915 m!3746195))

(declare-fun m!3746197 () Bool)

(assert (=> b!3381916 m!3746197))

(assert (=> b!3381917 m!3745411))

(assert (=> b!3381917 m!3745411))

(assert (=> b!3381917 m!3746185))

(assert (=> b!3381917 m!3746185))

(assert (=> b!3381917 m!3746193))

(declare-fun m!3746199 () Bool)

(assert (=> b!3381917 m!3746199))

(assert (=> b!3381216 d!959362))

(declare-fun d!959372 () Bool)

(assert (=> d!959372 (= (isDefined!5714 (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159)) (not (isEmpty!21114 (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159))))))

(declare-fun bs!554796 () Bool)

(assert (= bs!554796 d!959372))

(assert (=> bs!554796 m!3745423))

(declare-fun m!3746201 () Bool)

(assert (=> bs!554796 m!3746201))

(assert (=> b!3381238 d!959372))

(declare-fun b!3381936 () Bool)

(declare-fun res!1368325 () Bool)

(declare-fun e!2099460 () Bool)

(assert (=> b!3381936 (=> (not res!1368325) (not e!2099460))))

(declare-fun lt!1148436 () Option!7396)

(assert (=> b!3381936 (= res!1368325 (< (size!27895 (_2!21361 (get!11770 lt!1148436))) (size!27895 lt!1148159)))))

(declare-fun b!3381937 () Bool)

(declare-fun e!2099462 () Bool)

(assert (=> b!3381937 (= e!2099462 e!2099460)))

(declare-fun res!1368330 () Bool)

(assert (=> b!3381937 (=> (not res!1368330) (not e!2099460))))

(assert (=> b!3381937 (= res!1368330 (isDefined!5714 lt!1148436))))

(declare-fun d!959374 () Bool)

(assert (=> d!959374 e!2099462))

(declare-fun res!1368327 () Bool)

(assert (=> d!959374 (=> res!1368327 e!2099462)))

(assert (=> d!959374 (= res!1368327 (isEmpty!21114 lt!1148436))))

(declare-fun e!2099461 () Option!7396)

(assert (=> d!959374 (= lt!1148436 e!2099461)))

(declare-fun c!575837 () Bool)

(assert (=> d!959374 (= c!575837 (and ((_ is Cons!36866) rules!2135) ((_ is Nil!36866) (t!263197 rules!2135))))))

(declare-fun lt!1148434 () Unit!51972)

(declare-fun lt!1148435 () Unit!51972)

(assert (=> d!959374 (= lt!1148434 lt!1148435)))

(declare-fun isPrefix!2824 (List!36989 List!36989) Bool)

(assert (=> d!959374 (isPrefix!2824 lt!1148159 lt!1148159)))

(declare-fun lemmaIsPrefixRefl!1783 (List!36989 List!36989) Unit!51972)

(assert (=> d!959374 (= lt!1148435 (lemmaIsPrefixRefl!1783 lt!1148159 lt!1148159))))

(declare-fun rulesValidInductive!1831 (LexerInterface!4963 List!36990) Bool)

(assert (=> d!959374 (rulesValidInductive!1831 thiss!18206 rules!2135)))

(assert (=> d!959374 (= (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159) lt!1148436)))

(declare-fun b!3381938 () Bool)

(declare-fun res!1368326 () Bool)

(assert (=> b!3381938 (=> (not res!1368326) (not e!2099460))))

(assert (=> b!3381938 (= res!1368326 (= (value!173619 (_1!21361 (get!11770 lt!1148436))) (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun b!3381939 () Bool)

(declare-fun call!244567 () Option!7396)

(assert (=> b!3381939 (= e!2099461 call!244567)))

(declare-fun b!3381940 () Bool)

(declare-fun res!1368328 () Bool)

(assert (=> b!3381940 (=> (not res!1368328) (not e!2099460))))

(assert (=> b!3381940 (= res!1368328 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))) (_2!21361 (get!11770 lt!1148436))) lt!1148159))))

(declare-fun b!3381941 () Bool)

(assert (=> b!3381941 (= e!2099460 (contains!6742 rules!2135 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))

(declare-fun b!3381942 () Bool)

(declare-fun res!1368329 () Bool)

(assert (=> b!3381942 (=> (not res!1368329) (not e!2099460))))

(assert (=> b!3381942 (= res!1368329 (matchR!4725 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun b!3381943 () Bool)

(declare-fun res!1368331 () Bool)

(assert (=> b!3381943 (=> (not res!1368331) (not e!2099460))))

(assert (=> b!3381943 (= res!1368331 (= (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))) (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436)))))))

(declare-fun b!3381944 () Bool)

(declare-fun lt!1148432 () Option!7396)

(declare-fun lt!1148433 () Option!7396)

(assert (=> b!3381944 (= e!2099461 (ite (and ((_ is None!7395) lt!1148432) ((_ is None!7395) lt!1148433)) None!7395 (ite ((_ is None!7395) lt!1148433) lt!1148432 (ite ((_ is None!7395) lt!1148432) lt!1148433 (ite (>= (size!27894 (_1!21361 (v!36483 lt!1148432))) (size!27894 (_1!21361 (v!36483 lt!1148433)))) lt!1148432 lt!1148433)))))))

(assert (=> b!3381944 (= lt!1148432 call!244567)))

(assert (=> b!3381944 (= lt!1148433 (maxPrefix!2535 thiss!18206 (t!263197 rules!2135) lt!1148159))))

(declare-fun bm!244562 () Bool)

(assert (=> bm!244562 (= call!244567 (maxPrefixOneRule!1686 thiss!18206 (h!42286 rules!2135) lt!1148159))))

(assert (= (and d!959374 c!575837) b!3381939))

(assert (= (and d!959374 (not c!575837)) b!3381944))

(assert (= (or b!3381939 b!3381944) bm!244562))

(assert (= (and d!959374 (not res!1368327)) b!3381937))

(assert (= (and b!3381937 res!1368330) b!3381943))

(assert (= (and b!3381943 res!1368331) b!3381936))

(assert (= (and b!3381936 res!1368325) b!3381940))

(assert (= (and b!3381940 res!1368328) b!3381938))

(assert (= (and b!3381938 res!1368326) b!3381942))

(assert (= (and b!3381942 res!1368329) b!3381941))

(declare-fun m!3746203 () Bool)

(assert (=> b!3381941 m!3746203))

(declare-fun m!3746205 () Bool)

(assert (=> b!3381941 m!3746205))

(declare-fun m!3746207 () Bool)

(assert (=> d!959374 m!3746207))

(declare-fun m!3746209 () Bool)

(assert (=> d!959374 m!3746209))

(declare-fun m!3746211 () Bool)

(assert (=> d!959374 m!3746211))

(declare-fun m!3746213 () Bool)

(assert (=> d!959374 m!3746213))

(assert (=> b!3381943 m!3746203))

(declare-fun m!3746215 () Bool)

(assert (=> b!3381943 m!3746215))

(assert (=> b!3381943 m!3746215))

(declare-fun m!3746217 () Bool)

(assert (=> b!3381943 m!3746217))

(declare-fun m!3746219 () Bool)

(assert (=> b!3381944 m!3746219))

(assert (=> b!3381936 m!3746203))

(declare-fun m!3746221 () Bool)

(assert (=> b!3381936 m!3746221))

(assert (=> b!3381936 m!3745389))

(declare-fun m!3746223 () Bool)

(assert (=> bm!244562 m!3746223))

(declare-fun m!3746225 () Bool)

(assert (=> b!3381937 m!3746225))

(assert (=> b!3381940 m!3746203))

(assert (=> b!3381940 m!3746215))

(assert (=> b!3381940 m!3746215))

(assert (=> b!3381940 m!3746217))

(assert (=> b!3381940 m!3746217))

(declare-fun m!3746227 () Bool)

(assert (=> b!3381940 m!3746227))

(assert (=> b!3381938 m!3746203))

(declare-fun m!3746229 () Bool)

(assert (=> b!3381938 m!3746229))

(assert (=> b!3381938 m!3746229))

(declare-fun m!3746231 () Bool)

(assert (=> b!3381938 m!3746231))

(assert (=> b!3381942 m!3746203))

(assert (=> b!3381942 m!3746215))

(assert (=> b!3381942 m!3746215))

(assert (=> b!3381942 m!3746217))

(assert (=> b!3381942 m!3746217))

(declare-fun m!3746233 () Bool)

(assert (=> b!3381942 m!3746233))

(assert (=> b!3381238 d!959374))

(declare-fun d!959376 () Bool)

(declare-fun lt!1148439 () BalanceConc!21860)

(declare-fun printWithSeparatorTokenList!256 (LexerInterface!4963 List!36991 Token!10114) List!36989)

(assert (=> d!959376 (= (list!13331 lt!1148439) (printWithSeparatorTokenList!256 thiss!18206 (list!13335 lt!1148177) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!72 (LexerInterface!4963 BalanceConc!21862 Token!10114 Int BalanceConc!21860) BalanceConc!21860)

(assert (=> d!959376 (= lt!1148439 (printWithSeparatorTokenTailRec!72 thiss!18206 lt!1148177 separatorToken!241 0 (BalanceConc!21861 Empty!11123)))))

(assert (=> d!959376 (isSeparator!5374 (rule!7926 separatorToken!241))))

(assert (=> d!959376 (= (printWithSeparatorToken!154 thiss!18206 lt!1148177 separatorToken!241) lt!1148439)))

(declare-fun bs!554797 () Bool)

(assert (= bs!554797 d!959376))

(declare-fun m!3746235 () Bool)

(assert (=> bs!554797 m!3746235))

(assert (=> bs!554797 m!3746117))

(assert (=> bs!554797 m!3746117))

(declare-fun m!3746237 () Bool)

(assert (=> bs!554797 m!3746237))

(declare-fun m!3746239 () Bool)

(assert (=> bs!554797 m!3746239))

(assert (=> b!3381218 d!959376))

(declare-fun d!959378 () Bool)

(declare-fun lt!1148440 () BalanceConc!21860)

(assert (=> d!959378 (= (list!13331 lt!1148440) (originalCharacters!6088 separatorToken!241))))

(assert (=> d!959378 (= lt!1148440 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))

(assert (=> d!959378 (= (charsOf!3388 separatorToken!241) lt!1148440)))

(declare-fun b_lambda!96015 () Bool)

(assert (=> (not b_lambda!96015) (not d!959378)))

(assert (=> d!959378 t!263213))

(declare-fun b_and!235001 () Bool)

(assert (= b_and!234957 (and (=> t!263213 result!223468) b_and!235001)))

(assert (=> d!959378 t!263215))

(declare-fun b_and!235003 () Bool)

(assert (= b_and!234959 (and (=> t!263215 result!223470) b_and!235003)))

(assert (=> d!959378 t!263217))

(declare-fun b_and!235005 () Bool)

(assert (= b_and!234961 (and (=> t!263217 result!223472) b_and!235005)))

(declare-fun m!3746241 () Bool)

(assert (=> d!959378 m!3746241))

(assert (=> d!959378 m!3745563))

(assert (=> b!3381218 d!959378))

(declare-fun b!3381953 () Bool)

(declare-fun e!2099467 () List!36989)

(assert (=> b!3381953 (= e!2099467 lt!1148157)))

(declare-fun d!959380 () Bool)

(declare-fun e!2099468 () Bool)

(assert (=> d!959380 e!2099468))

(declare-fun res!1368336 () Bool)

(assert (=> d!959380 (=> (not res!1368336) (not e!2099468))))

(declare-fun lt!1148443 () List!36989)

(assert (=> d!959380 (= res!1368336 (= (content!5081 lt!1148443) ((_ map or) (content!5081 lt!1148159) (content!5081 lt!1148157))))))

(assert (=> d!959380 (= lt!1148443 e!2099467)))

(declare-fun c!575840 () Bool)

(assert (=> d!959380 (= c!575840 ((_ is Nil!36865) lt!1148159))))

(assert (=> d!959380 (= (++!9009 lt!1148159 lt!1148157) lt!1148443)))

(declare-fun b!3381956 () Bool)

(assert (=> b!3381956 (= e!2099468 (or (not (= lt!1148157 Nil!36865)) (= lt!1148443 lt!1148159)))))

(declare-fun b!3381955 () Bool)

(declare-fun res!1368337 () Bool)

(assert (=> b!3381955 (=> (not res!1368337) (not e!2099468))))

(assert (=> b!3381955 (= res!1368337 (= (size!27895 lt!1148443) (+ (size!27895 lt!1148159) (size!27895 lt!1148157))))))

(declare-fun b!3381954 () Bool)

(assert (=> b!3381954 (= e!2099467 (Cons!36865 (h!42285 lt!1148159) (++!9009 (t!263196 lt!1148159) lt!1148157)))))

(assert (= (and d!959380 c!575840) b!3381953))

(assert (= (and d!959380 (not c!575840)) b!3381954))

(assert (= (and d!959380 res!1368336) b!3381955))

(assert (= (and b!3381955 res!1368337) b!3381956))

(declare-fun m!3746243 () Bool)

(assert (=> d!959380 m!3746243))

(declare-fun m!3746245 () Bool)

(assert (=> d!959380 m!3746245))

(declare-fun m!3746247 () Bool)

(assert (=> d!959380 m!3746247))

(declare-fun m!3746249 () Bool)

(assert (=> b!3381955 m!3746249))

(assert (=> b!3381955 m!3745389))

(declare-fun m!3746251 () Bool)

(assert (=> b!3381955 m!3746251))

(declare-fun m!3746253 () Bool)

(assert (=> b!3381954 m!3746253))

(assert (=> b!3381218 d!959380))

(declare-fun d!959382 () Bool)

(assert (=> d!959382 (= (list!13331 lt!1148156) (list!13334 (c!575699 lt!1148156)))))

(declare-fun bs!554798 () Bool)

(assert (= bs!554798 d!959382))

(declare-fun m!3746255 () Bool)

(assert (=> bs!554798 m!3746255))

(assert (=> b!3381218 d!959382))

(declare-fun d!959384 () Bool)

(assert (=> d!959384 (= (list!13331 (charsOf!3388 separatorToken!241)) (list!13334 (c!575699 (charsOf!3388 separatorToken!241))))))

(declare-fun bs!554799 () Bool)

(assert (= bs!554799 d!959384))

(declare-fun m!3746257 () Bool)

(assert (=> bs!554799 m!3746257))

(assert (=> b!3381218 d!959384))

(declare-fun d!959386 () Bool)

(declare-fun dynLambda!15340 (Int Token!10114) Bool)

(assert (=> d!959386 (dynLambda!15340 lambda!120485 (h!42287 tokens!494))))

(declare-fun lt!1148446 () Unit!51972)

(declare-fun choose!19575 (List!36991 Int Token!10114) Unit!51972)

(assert (=> d!959386 (= lt!1148446 (choose!19575 tokens!494 lambda!120485 (h!42287 tokens!494)))))

(declare-fun e!2099471 () Bool)

(assert (=> d!959386 e!2099471))

(declare-fun res!1368340 () Bool)

(assert (=> d!959386 (=> (not res!1368340) (not e!2099471))))

(assert (=> d!959386 (= res!1368340 (forall!7757 tokens!494 lambda!120485))))

(assert (=> d!959386 (= (forallContained!1321 tokens!494 lambda!120485 (h!42287 tokens!494)) lt!1148446)))

(declare-fun b!3381959 () Bool)

(declare-fun contains!6745 (List!36991 Token!10114) Bool)

(assert (=> b!3381959 (= e!2099471 (contains!6745 tokens!494 (h!42287 tokens!494)))))

(assert (= (and d!959386 res!1368340) b!3381959))

(declare-fun b_lambda!96017 () Bool)

(assert (=> (not b_lambda!96017) (not d!959386)))

(declare-fun m!3746259 () Bool)

(assert (=> d!959386 m!3746259))

(declare-fun m!3746261 () Bool)

(assert (=> d!959386 m!3746261))

(assert (=> d!959386 m!3745347))

(declare-fun m!3746263 () Bool)

(assert (=> b!3381959 m!3746263))

(assert (=> b!3381219 d!959386))

(declare-fun d!959388 () Bool)

(assert (=> d!959388 (not (matchR!4725 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157))))

(declare-fun lt!1148449 () Unit!51972)

(declare-fun choose!19576 (Regex!10133 List!36989 C!20452) Unit!51972)

(assert (=> d!959388 (= lt!1148449 (choose!19576 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157 lt!1148163))))

(assert (=> d!959388 (validRegex!4607 (regex!5374 (rule!7926 separatorToken!241)))))

(assert (=> d!959388 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!464 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157 lt!1148163) lt!1148449)))

(declare-fun bs!554800 () Bool)

(assert (= bs!554800 d!959388))

(assert (=> bs!554800 m!3745313))

(declare-fun m!3746265 () Bool)

(assert (=> bs!554800 m!3746265))

(declare-fun m!3746267 () Bool)

(assert (=> bs!554800 m!3746267))

(assert (=> b!3381220 d!959388))

(declare-fun b!3381960 () Bool)

(declare-fun res!1368347 () Bool)

(declare-fun e!2099476 () Bool)

(assert (=> b!3381960 (=> res!1368347 e!2099476)))

(assert (=> b!3381960 (= res!1368347 (not (isEmpty!21105 (tail!5355 lt!1148157))))))

(declare-fun b!3381961 () Bool)

(declare-fun res!1368341 () Bool)

(declare-fun e!2099478 () Bool)

(assert (=> b!3381961 (=> res!1368341 e!2099478)))

(declare-fun e!2099475 () Bool)

(assert (=> b!3381961 (= res!1368341 e!2099475)))

(declare-fun res!1368348 () Bool)

(assert (=> b!3381961 (=> (not res!1368348) (not e!2099475))))

(declare-fun lt!1148450 () Bool)

(assert (=> b!3381961 (= res!1368348 lt!1148450)))

(declare-fun b!3381962 () Bool)

(declare-fun e!2099472 () Bool)

(declare-fun call!244568 () Bool)

(assert (=> b!3381962 (= e!2099472 (= lt!1148450 call!244568))))

(declare-fun d!959390 () Bool)

(assert (=> d!959390 e!2099472))

(declare-fun c!575844 () Bool)

(assert (=> d!959390 (= c!575844 ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun e!2099474 () Bool)

(assert (=> d!959390 (= lt!1148450 e!2099474)))

(declare-fun c!575843 () Bool)

(assert (=> d!959390 (= c!575843 (isEmpty!21105 lt!1148157))))

(assert (=> d!959390 (validRegex!4607 (regex!5374 (rule!7926 separatorToken!241)))))

(assert (=> d!959390 (= (matchR!4725 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157) lt!1148450)))

(declare-fun b!3381963 () Bool)

(declare-fun res!1368346 () Bool)

(assert (=> b!3381963 (=> res!1368346 e!2099478)))

(assert (=> b!3381963 (= res!1368346 (not ((_ is ElementMatch!10133) (regex!5374 (rule!7926 separatorToken!241)))))))

(declare-fun e!2099473 () Bool)

(assert (=> b!3381963 (= e!2099473 e!2099478)))

(declare-fun b!3381964 () Bool)

(assert (=> b!3381964 (= e!2099474 (nullable!3451 (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun b!3381965 () Bool)

(declare-fun res!1368343 () Bool)

(assert (=> b!3381965 (=> (not res!1368343) (not e!2099475))))

(assert (=> b!3381965 (= res!1368343 (isEmpty!21105 (tail!5355 lt!1148157)))))

(declare-fun bm!244563 () Bool)

(assert (=> bm!244563 (= call!244568 (isEmpty!21105 lt!1148157))))

(declare-fun b!3381966 () Bool)

(assert (=> b!3381966 (= e!2099474 (matchR!4725 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)) (tail!5355 lt!1148157)))))

(declare-fun b!3381967 () Bool)

(assert (=> b!3381967 (= e!2099473 (not lt!1148450))))

(declare-fun b!3381968 () Bool)

(declare-fun e!2099477 () Bool)

(assert (=> b!3381968 (= e!2099478 e!2099477)))

(declare-fun res!1368342 () Bool)

(assert (=> b!3381968 (=> (not res!1368342) (not e!2099477))))

(assert (=> b!3381968 (= res!1368342 (not lt!1148450))))

(declare-fun b!3381969 () Bool)

(assert (=> b!3381969 (= e!2099477 e!2099476)))

(declare-fun res!1368345 () Bool)

(assert (=> b!3381969 (=> res!1368345 e!2099476)))

(assert (=> b!3381969 (= res!1368345 call!244568)))

(declare-fun b!3381970 () Bool)

(assert (=> b!3381970 (= e!2099475 (= (head!7225 lt!1148157) (c!575698 (regex!5374 (rule!7926 separatorToken!241)))))))

(declare-fun b!3381971 () Bool)

(assert (=> b!3381971 (= e!2099476 (not (= (head!7225 lt!1148157) (c!575698 (regex!5374 (rule!7926 separatorToken!241))))))))

(declare-fun b!3381972 () Bool)

(declare-fun res!1368344 () Bool)

(assert (=> b!3381972 (=> (not res!1368344) (not e!2099475))))

(assert (=> b!3381972 (= res!1368344 (not call!244568))))

(declare-fun b!3381973 () Bool)

(assert (=> b!3381973 (= e!2099472 e!2099473)))

(declare-fun c!575842 () Bool)

(assert (=> b!3381973 (= c!575842 ((_ is EmptyLang!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(assert (= (and d!959390 c!575843) b!3381964))

(assert (= (and d!959390 (not c!575843)) b!3381966))

(assert (= (and d!959390 c!575844) b!3381962))

(assert (= (and d!959390 (not c!575844)) b!3381973))

(assert (= (and b!3381973 c!575842) b!3381967))

(assert (= (and b!3381973 (not c!575842)) b!3381963))

(assert (= (and b!3381963 (not res!1368346)) b!3381961))

(assert (= (and b!3381961 res!1368348) b!3381972))

(assert (= (and b!3381972 res!1368344) b!3381965))

(assert (= (and b!3381965 res!1368343) b!3381970))

(assert (= (and b!3381961 (not res!1368341)) b!3381968))

(assert (= (and b!3381968 res!1368342) b!3381969))

(assert (= (and b!3381969 (not res!1368345)) b!3381960))

(assert (= (and b!3381960 (not res!1368347)) b!3381971))

(assert (= (or b!3381962 b!3381969 b!3381972) bm!244563))

(declare-fun m!3746269 () Bool)

(assert (=> b!3381964 m!3746269))

(assert (=> bm!244563 m!3745839))

(assert (=> d!959390 m!3745839))

(assert (=> d!959390 m!3746267))

(assert (=> b!3381965 m!3745843))

(assert (=> b!3381965 m!3745843))

(assert (=> b!3381965 m!3745845))

(assert (=> b!3381966 m!3745373))

(assert (=> b!3381966 m!3745373))

(declare-fun m!3746271 () Bool)

(assert (=> b!3381966 m!3746271))

(assert (=> b!3381966 m!3745843))

(assert (=> b!3381966 m!3746271))

(assert (=> b!3381966 m!3745843))

(declare-fun m!3746273 () Bool)

(assert (=> b!3381966 m!3746273))

(assert (=> b!3381960 m!3745843))

(assert (=> b!3381960 m!3745843))

(assert (=> b!3381960 m!3745845))

(assert (=> b!3381970 m!3745373))

(assert (=> b!3381971 m!3745373))

(assert (=> b!3381220 d!959390))

(declare-fun d!959392 () Bool)

(declare-fun res!1368353 () Bool)

(declare-fun e!2099483 () Bool)

(assert (=> d!959392 (=> res!1368353 e!2099483)))

(assert (=> d!959392 (= res!1368353 ((_ is Nil!36867) tokens!494))))

(assert (=> d!959392 (= (forall!7757 tokens!494 lambda!120485) e!2099483)))

(declare-fun b!3381978 () Bool)

(declare-fun e!2099484 () Bool)

(assert (=> b!3381978 (= e!2099483 e!2099484)))

(declare-fun res!1368354 () Bool)

(assert (=> b!3381978 (=> (not res!1368354) (not e!2099484))))

(assert (=> b!3381978 (= res!1368354 (dynLambda!15340 lambda!120485 (h!42287 tokens!494)))))

(declare-fun b!3381979 () Bool)

(assert (=> b!3381979 (= e!2099484 (forall!7757 (t!263198 tokens!494) lambda!120485))))

(assert (= (and d!959392 (not res!1368353)) b!3381978))

(assert (= (and b!3381978 res!1368354) b!3381979))

(declare-fun b_lambda!96019 () Bool)

(assert (=> (not b_lambda!96019) (not b!3381978)))

(assert (=> b!3381978 m!3746259))

(declare-fun m!3746275 () Bool)

(assert (=> b!3381979 m!3746275))

(assert (=> b!3381221 d!959392))

(declare-fun d!959394 () Bool)

(declare-fun lt!1148452 () Bool)

(declare-fun e!2099485 () Bool)

(assert (=> d!959394 (= lt!1148452 e!2099485)))

(declare-fun res!1368355 () Bool)

(assert (=> d!959394 (=> (not res!1368355) (not e!2099485))))

(assert (=> d!959394 (= res!1368355 (= (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))) (list!13335 (singletonSeq!2470 separatorToken!241))))))

(declare-fun e!2099486 () Bool)

(assert (=> d!959394 (= lt!1148452 e!2099486)))

(declare-fun res!1368356 () Bool)

(assert (=> d!959394 (=> (not res!1368356) (not e!2099486))))

(declare-fun lt!1148451 () tuple2!36452)

(assert (=> d!959394 (= res!1368356 (= (size!27898 (_1!21360 lt!1148451)) 1))))

(assert (=> d!959394 (= lt!1148451 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))))

(assert (=> d!959394 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959394 (= (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 separatorToken!241) lt!1148452)))

(declare-fun b!3381980 () Bool)

(declare-fun res!1368357 () Bool)

(assert (=> b!3381980 (=> (not res!1368357) (not e!2099486))))

(assert (=> b!3381980 (= res!1368357 (= (apply!8576 (_1!21360 lt!1148451) 0) separatorToken!241))))

(declare-fun b!3381981 () Bool)

(assert (=> b!3381981 (= e!2099486 (isEmpty!21115 (_2!21360 lt!1148451)))))

(declare-fun b!3381982 () Bool)

(assert (=> b!3381982 (= e!2099485 (isEmpty!21115 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))))))

(assert (= (and d!959394 res!1368356) b!3381980))

(assert (= (and b!3381980 res!1368357) b!3381981))

(assert (= (and d!959394 res!1368355) b!3381982))

(declare-fun m!3746277 () Bool)

(assert (=> d!959394 m!3746277))

(assert (=> d!959394 m!3746277))

(declare-fun m!3746279 () Bool)

(assert (=> d!959394 m!3746279))

(declare-fun m!3746281 () Bool)

(assert (=> d!959394 m!3746281))

(declare-fun m!3746283 () Bool)

(assert (=> d!959394 m!3746283))

(assert (=> d!959394 m!3746277))

(declare-fun m!3746285 () Bool)

(assert (=> d!959394 m!3746285))

(assert (=> d!959394 m!3745405))

(assert (=> d!959394 m!3746279))

(declare-fun m!3746287 () Bool)

(assert (=> d!959394 m!3746287))

(declare-fun m!3746289 () Bool)

(assert (=> b!3381980 m!3746289))

(declare-fun m!3746291 () Bool)

(assert (=> b!3381981 m!3746291))

(assert (=> b!3381982 m!3746277))

(assert (=> b!3381982 m!3746277))

(assert (=> b!3381982 m!3746279))

(assert (=> b!3381982 m!3746279))

(assert (=> b!3381982 m!3746287))

(declare-fun m!3746293 () Bool)

(assert (=> b!3381982 m!3746293))

(assert (=> b!3381222 d!959394))

(declare-fun b!3381983 () Bool)

(declare-fun e!2099488 () Bool)

(assert (=> b!3381983 (= e!2099488 (inv!16 (value!173619 (h!42287 tokens!494))))))

(declare-fun b!3381984 () Bool)

(declare-fun e!2099487 () Bool)

(assert (=> b!3381984 (= e!2099487 (inv!15 (value!173619 (h!42287 tokens!494))))))

(declare-fun b!3381985 () Bool)

(declare-fun res!1368358 () Bool)

(assert (=> b!3381985 (=> res!1368358 e!2099487)))

(assert (=> b!3381985 (= res!1368358 (not ((_ is IntegerValue!16814) (value!173619 (h!42287 tokens!494)))))))

(declare-fun e!2099489 () Bool)

(assert (=> b!3381985 (= e!2099489 e!2099487)))

(declare-fun d!959396 () Bool)

(declare-fun c!575846 () Bool)

(assert (=> d!959396 (= c!575846 ((_ is IntegerValue!16812) (value!173619 (h!42287 tokens!494))))))

(assert (=> d!959396 (= (inv!21 (value!173619 (h!42287 tokens!494))) e!2099488)))

(declare-fun b!3381986 () Bool)

(assert (=> b!3381986 (= e!2099489 (inv!17 (value!173619 (h!42287 tokens!494))))))

(declare-fun b!3381987 () Bool)

(assert (=> b!3381987 (= e!2099488 e!2099489)))

(declare-fun c!575845 () Bool)

(assert (=> b!3381987 (= c!575845 ((_ is IntegerValue!16813) (value!173619 (h!42287 tokens!494))))))

(assert (= (and d!959396 c!575846) b!3381983))

(assert (= (and d!959396 (not c!575846)) b!3381987))

(assert (= (and b!3381987 c!575845) b!3381986))

(assert (= (and b!3381987 (not c!575845)) b!3381985))

(assert (= (and b!3381985 (not res!1368358)) b!3381984))

(declare-fun m!3746295 () Bool)

(assert (=> b!3381983 m!3746295))

(declare-fun m!3746297 () Bool)

(assert (=> b!3381984 m!3746297))

(declare-fun m!3746299 () Bool)

(assert (=> b!3381986 m!3746299))

(assert (=> b!3381223 d!959396))

(declare-fun e!2099492 () Bool)

(assert (=> b!3381230 (= tp!1057098 e!2099492)))

(declare-fun b!3382000 () Bool)

(declare-fun tp!1057177 () Bool)

(assert (=> b!3382000 (= e!2099492 tp!1057177)))

(declare-fun b!3381999 () Bool)

(declare-fun tp!1057179 () Bool)

(declare-fun tp!1057178 () Bool)

(assert (=> b!3381999 (= e!2099492 (and tp!1057179 tp!1057178))))

(declare-fun b!3382001 () Bool)

(declare-fun tp!1057180 () Bool)

(declare-fun tp!1057181 () Bool)

(assert (=> b!3382001 (= e!2099492 (and tp!1057180 tp!1057181))))

(declare-fun b!3381998 () Bool)

(declare-fun tp_is_empty!17477 () Bool)

(assert (=> b!3381998 (= e!2099492 tp_is_empty!17477)))

(assert (= (and b!3381230 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 separatorToken!241)))) b!3381998))

(assert (= (and b!3381230 ((_ is Concat!15737) (regex!5374 (rule!7926 separatorToken!241)))) b!3381999))

(assert (= (and b!3381230 ((_ is Star!10133) (regex!5374 (rule!7926 separatorToken!241)))) b!3382000))

(assert (= (and b!3381230 ((_ is Union!10133) (regex!5374 (rule!7926 separatorToken!241)))) b!3382001))

(declare-fun b!3382006 () Bool)

(declare-fun e!2099495 () Bool)

(declare-fun tp!1057184 () Bool)

(assert (=> b!3382006 (= e!2099495 (and tp_is_empty!17477 tp!1057184))))

(assert (=> b!3381214 (= tp!1057096 e!2099495)))

(assert (= (and b!3381214 ((_ is Cons!36865) (originalCharacters!6088 separatorToken!241))) b!3382006))

(declare-fun b!3382017 () Bool)

(declare-fun b_free!88533 () Bool)

(declare-fun b_next!89237 () Bool)

(assert (=> b!3382017 (= b_free!88533 (not b_next!89237))))

(declare-fun t!263262 () Bool)

(declare-fun tb!180047 () Bool)

(assert (=> (and b!3382017 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263262) tb!180047))

(declare-fun result!223522 () Bool)

(assert (= result!223522 result!223474))

(assert (=> d!959228 t!263262))

(declare-fun b_and!235007 () Bool)

(declare-fun tp!1057194 () Bool)

(assert (=> b!3382017 (= tp!1057194 (and (=> t!263262 result!223522) b_and!235007))))

(declare-fun b_free!88535 () Bool)

(declare-fun b_next!89239 () Bool)

(assert (=> b!3382017 (= b_free!88535 (not b_next!89239))))

(declare-fun t!263264 () Bool)

(declare-fun tb!180049 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263264) tb!180049))

(declare-fun result!223524 () Bool)

(assert (= result!223524 result!223460))

(assert (=> b!3381323 t!263264))

(assert (=> d!959174 t!263264))

(declare-fun t!263266 () Bool)

(declare-fun tb!180051 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263266) tb!180051))

(declare-fun result!223526 () Bool)

(assert (= result!223526 result!223468))

(assert (=> b!3381333 t!263266))

(assert (=> d!959378 t!263266))

(declare-fun tp!1057195 () Bool)

(declare-fun b_and!235009 () Bool)

(assert (=> b!3382017 (= tp!1057195 (and (=> t!263264 result!223524) (=> t!263266 result!223526) b_and!235009))))

(declare-fun e!2099504 () Bool)

(assert (=> b!3382017 (= e!2099504 (and tp!1057194 tp!1057195))))

(declare-fun e!2099506 () Bool)

(declare-fun tp!1057196 () Bool)

(declare-fun b!3382016 () Bool)

(assert (=> b!3382016 (= e!2099506 (and tp!1057196 (inv!49932 (tag!5950 (h!42286 (t!263197 rules!2135)))) (inv!49936 (transformation!5374 (h!42286 (t!263197 rules!2135)))) e!2099504))))

(declare-fun b!3382015 () Bool)

(declare-fun e!2099505 () Bool)

(declare-fun tp!1057193 () Bool)

(assert (=> b!3382015 (= e!2099505 (and e!2099506 tp!1057193))))

(assert (=> b!3381204 (= tp!1057090 e!2099505)))

(assert (= b!3382016 b!3382017))

(assert (= b!3382015 b!3382016))

(assert (= (and b!3381204 ((_ is Cons!36866) (t!263197 rules!2135))) b!3382015))

(declare-fun m!3746301 () Bool)

(assert (=> b!3382016 m!3746301))

(declare-fun m!3746303 () Bool)

(assert (=> b!3382016 m!3746303))

(declare-fun b!3382031 () Bool)

(declare-fun b_free!88537 () Bool)

(declare-fun b_next!89241 () Bool)

(assert (=> b!3382031 (= b_free!88537 (not b_next!89241))))

(declare-fun t!263268 () Bool)

(declare-fun tb!180053 () Bool)

(assert (=> (and b!3382031 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263268) tb!180053))

(declare-fun result!223530 () Bool)

(assert (= result!223530 result!223474))

(assert (=> d!959228 t!263268))

(declare-fun b_and!235011 () Bool)

(declare-fun tp!1057211 () Bool)

(assert (=> b!3382031 (= tp!1057211 (and (=> t!263268 result!223530) b_and!235011))))

(declare-fun b_free!88539 () Bool)

(declare-fun b_next!89243 () Bool)

(assert (=> b!3382031 (= b_free!88539 (not b_next!89243))))

(declare-fun t!263270 () Bool)

(declare-fun tb!180055 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263270) tb!180055))

(declare-fun result!223532 () Bool)

(assert (= result!223532 result!223460))

(assert (=> b!3381323 t!263270))

(assert (=> d!959174 t!263270))

(declare-fun tb!180057 () Bool)

(declare-fun t!263272 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263272) tb!180057))

(declare-fun result!223534 () Bool)

(assert (= result!223534 result!223468))

(assert (=> b!3381333 t!263272))

(assert (=> d!959378 t!263272))

(declare-fun tp!1057207 () Bool)

(declare-fun b_and!235013 () Bool)

(assert (=> b!3382031 (= tp!1057207 (and (=> t!263270 result!223532) (=> t!263272 result!223534) b_and!235013))))

(declare-fun e!2099522 () Bool)

(assert (=> b!3381226 (= tp!1057102 e!2099522)))

(declare-fun e!2099524 () Bool)

(assert (=> b!3382031 (= e!2099524 (and tp!1057211 tp!1057207))))

(declare-fun e!2099521 () Bool)

(declare-fun b!3382030 () Bool)

(declare-fun tp!1057208 () Bool)

(assert (=> b!3382030 (= e!2099521 (and tp!1057208 (inv!49932 (tag!5950 (rule!7926 (h!42287 (t!263198 tokens!494))))) (inv!49936 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) e!2099524))))

(declare-fun e!2099525 () Bool)

(declare-fun tp!1057210 () Bool)

(declare-fun b!3382028 () Bool)

(assert (=> b!3382028 (= e!2099522 (and (inv!49935 (h!42287 (t!263198 tokens!494))) e!2099525 tp!1057210))))

(declare-fun b!3382029 () Bool)

(declare-fun tp!1057209 () Bool)

(assert (=> b!3382029 (= e!2099525 (and (inv!21 (value!173619 (h!42287 (t!263198 tokens!494)))) e!2099521 tp!1057209))))

(assert (= b!3382030 b!3382031))

(assert (= b!3382029 b!3382030))

(assert (= b!3382028 b!3382029))

(assert (= (and b!3381226 ((_ is Cons!36867) (t!263198 tokens!494))) b!3382028))

(declare-fun m!3746305 () Bool)

(assert (=> b!3382030 m!3746305))

(declare-fun m!3746307 () Bool)

(assert (=> b!3382030 m!3746307))

(declare-fun m!3746309 () Bool)

(assert (=> b!3382028 m!3746309))

(declare-fun m!3746311 () Bool)

(assert (=> b!3382029 m!3746311))

(declare-fun b!3382032 () Bool)

(declare-fun e!2099526 () Bool)

(declare-fun tp!1057212 () Bool)

(assert (=> b!3382032 (= e!2099526 (and tp_is_empty!17477 tp!1057212))))

(assert (=> b!3381223 (= tp!1057100 e!2099526)))

(assert (= (and b!3381223 ((_ is Cons!36865) (originalCharacters!6088 (h!42287 tokens!494)))) b!3382032))

(declare-fun e!2099527 () Bool)

(assert (=> b!3381228 (= tp!1057092 e!2099527)))

(declare-fun b!3382035 () Bool)

(declare-fun tp!1057213 () Bool)

(assert (=> b!3382035 (= e!2099527 tp!1057213)))

(declare-fun b!3382034 () Bool)

(declare-fun tp!1057215 () Bool)

(declare-fun tp!1057214 () Bool)

(assert (=> b!3382034 (= e!2099527 (and tp!1057215 tp!1057214))))

(declare-fun b!3382036 () Bool)

(declare-fun tp!1057216 () Bool)

(declare-fun tp!1057217 () Bool)

(assert (=> b!3382036 (= e!2099527 (and tp!1057216 tp!1057217))))

(declare-fun b!3382033 () Bool)

(assert (=> b!3382033 (= e!2099527 tp_is_empty!17477)))

(assert (= (and b!3381228 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))) b!3382033))

(assert (= (and b!3381228 ((_ is Concat!15737) (regex!5374 (rule!7926 (h!42287 tokens!494))))) b!3382034))

(assert (= (and b!3381228 ((_ is Star!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))) b!3382035))

(assert (= (and b!3381228 ((_ is Union!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))) b!3382036))

(declare-fun e!2099528 () Bool)

(assert (=> b!3381229 (= tp!1057097 e!2099528)))

(declare-fun b!3382039 () Bool)

(declare-fun tp!1057218 () Bool)

(assert (=> b!3382039 (= e!2099528 tp!1057218)))

(declare-fun b!3382038 () Bool)

(declare-fun tp!1057220 () Bool)

(declare-fun tp!1057219 () Bool)

(assert (=> b!3382038 (= e!2099528 (and tp!1057220 tp!1057219))))

(declare-fun b!3382040 () Bool)

(declare-fun tp!1057221 () Bool)

(declare-fun tp!1057222 () Bool)

(assert (=> b!3382040 (= e!2099528 (and tp!1057221 tp!1057222))))

(declare-fun b!3382037 () Bool)

(assert (=> b!3382037 (= e!2099528 tp_is_empty!17477)))

(assert (= (and b!3381229 ((_ is ElementMatch!10133) (regex!5374 (h!42286 rules!2135)))) b!3382037))

(assert (= (and b!3381229 ((_ is Concat!15737) (regex!5374 (h!42286 rules!2135)))) b!3382038))

(assert (= (and b!3381229 ((_ is Star!10133) (regex!5374 (h!42286 rules!2135)))) b!3382039))

(assert (= (and b!3381229 ((_ is Union!10133) (regex!5374 (h!42286 rules!2135)))) b!3382040))

(declare-fun b_lambda!96021 () Bool)

(assert (= b_lambda!95987 (or (and b!3381233 b_free!88521) (and b!3381213 b_free!88513 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88533 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381208 b_free!88517 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88537 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) b_lambda!96021)))

(declare-fun b_lambda!96023 () Bool)

(assert (= b_lambda!95983 (or (and b!3381208 b_free!88519 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88539 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88523) b_lambda!96023)))

(declare-fun b_lambda!96025 () Bool)

(assert (= b_lambda!95981 (or (and b!3381208 b_free!88519 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88539 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88523) b_lambda!96025)))

(declare-fun b_lambda!96027 () Bool)

(assert (= b_lambda!96017 (or b!3381221 b_lambda!96027)))

(declare-fun bs!554801 () Bool)

(declare-fun d!959398 () Bool)

(assert (= bs!554801 (and d!959398 b!3381221)))

(assert (=> bs!554801 (= (dynLambda!15340 lambda!120485 (h!42287 tokens!494)) (not (isSeparator!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (=> d!959386 d!959398))

(declare-fun b_lambda!96029 () Bool)

(assert (= b_lambda!96015 (or (and b!3381208 b_free!88519) (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3382031 b_free!88539 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3381233 b_free!88523 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) b_lambda!96029)))

(declare-fun b_lambda!96031 () Bool)

(assert (= b_lambda!96019 (or b!3381221 b_lambda!96031)))

(assert (=> b!3381978 d!959398))

(declare-fun b_lambda!96033 () Bool)

(assert (= b_lambda!95985 (or (and b!3381208 b_free!88519) (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3382031 b_free!88539 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) (and b!3381233 b_free!88523 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))))) b_lambda!96033)))

(check-sat (not b!3381351) (not b!3381554) (not d!959264) (not b_next!89243) (not b!3381518) (not b!3381397) (not b_lambda!96031) (not b!3381937) (not b_next!89225) b_and!234963 (not d!959386) (not b_next!89221) (not b_lambda!96033) (not b!3381369) (not b!3381521) (not b!3381500) (not b!3381334) (not b!3381497) (not b!3381532) (not b!3381525) (not b!3381310) (not b!3381936) b_and!235005 (not b!3381966) (not d!959180) (not b!3381999) (not b!3381981) (not b!3381311) (not b!3381940) (not b_lambda!96023) (not d!959262) (not b!3381943) (not b!3382016) (not b!3382028) (not d!959198) (not b!3382001) (not b!3381333) (not bm!244531) b_and!235001 (not b_next!89217) (not d!959188) (not b!3382032) (not b!3381492) (not b!3381250) (not b!3381494) b_and!234965 (not d!959394) (not b!3382040) (not b!3381559) (not b!3381512) (not d!959388) (not b!3381335) (not d!959374) (not d!959184) (not d!959362) (not d!959168) (not b_next!89241) (not tb!180017) (not b!3381805) (not bm!244533) (not d!959278) b_and!235011 (not b!3381352) (not b!3381332) b_and!235007 (not b!3381396) (not b!3381982) (not b!3381499) (not b_next!89223) (not b!3381979) (not d!959172) (not b!3381511) (not b_next!89237) (not b!3381959) (not b!3381960) (not b!3381359) (not d!959252) (not d!959390) (not d!959384) (not b!3381984) (not bm!244529) (not d!959280) (not bm!244562) (not d!959150) (not b!3381498) (not d!959220) (not b!3382035) (not d!959174) (not b!3381349) (not d!959210) (not tb!180005) (not b!3381361) (not b!3381964) (not bm!244535) (not b!3381796) (not bm!244518) (not b!3381400) (not b!3382006) (not b!3381406) (not d!959360) (not b!3381403) (not b!3381526) (not b!3381971) (not b!3381965) (not d!959202) (not d!959258) (not b!3381527) (not b!3381915) (not d!959190) (not b!3381916) (not b!3382015) (not b!3381496) (not bm!244530) (not d!959260) (not b!3381557) (not b!3381309) (not bm!244528) (not bm!244563) (not d!959274) (not b!3381316) (not d!959378) (not b!3381545) (not b!3381555) (not b!3381546) (not b!3382038) (not d!959212) b_and!235009 (not b!3382036) (not b!3381941) (not b!3381944) (not b_lambda!96027) (not d!959194) (not b_next!89239) (not b!3381986) (not d!959376) (not b!3381402) (not d!959216) (not d!959206) (not b!3381436) (not d!959146) (not d!959186) (not b!3381954) (not b!3381980) b_and!235013 (not b!3381519) (not d!959214) (not b!3381548) (not d!959178) (not d!959372) (not b_next!89219) (not b!3382029) (not b!3381329) (not b!3381336) (not d!959380) (not b!3381324) (not b!3381942) (not d!959244) (not b_lambda!96025) (not b_next!89227) (not b!3381323) (not b!3381348) (not d!959382) (not b!3381493) (not b!3381520) (not b_lambda!96029) (not b!3382039) (not b!3381531) (not b!3381364) (not b!3381350) (not b!3382030) (not b!3381955) b_and!235003 (not d!959196) (not b!3381938) b_and!234967 (not b!3381381) tp_is_empty!17477 (not b_lambda!96021) (not b!3381315) (not d!959272) (not b!3381305) (not b!3381970) (not tb!180011) (not bm!244534) (not b!3381376) (not b!3382034) (not d!959200) (not b!3381983) (not d!959218) (not b!3381917) (not b!3382000) (not d!959230))
(check-sat (not b_next!89243) (not b_next!89225) b_and!235005 b_and!234965 b_and!235009 (not b_next!89239) (not b_next!89227) b_and!235003 b_and!234967 b_and!234963 (not b_next!89221) b_and!235001 (not b_next!89217) (not b_next!89241) b_and!235011 b_and!235007 (not b_next!89223) (not b_next!89237) b_and!235013 (not b_next!89219))
(get-model)

(declare-fun d!959430 () Bool)

(assert (=> d!959430 (= (inv!49932 (tag!5950 (h!42286 (t!263197 rules!2135)))) (= (mod (str.len (value!173618 (tag!5950 (h!42286 (t!263197 rules!2135))))) 2) 0))))

(assert (=> b!3382016 d!959430))

(declare-fun d!959432 () Bool)

(declare-fun res!1368375 () Bool)

(declare-fun e!2099565 () Bool)

(assert (=> d!959432 (=> (not res!1368375) (not e!2099565))))

(assert (=> d!959432 (= res!1368375 (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135))))))))

(assert (=> d!959432 (= (inv!49936 (transformation!5374 (h!42286 (t!263197 rules!2135)))) e!2099565)))

(declare-fun b!3382102 () Bool)

(assert (=> b!3382102 (= e!2099565 (equivClasses!2142 (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135))))))))

(assert (= (and d!959432 res!1368375) b!3382102))

(declare-fun m!3746371 () Bool)

(assert (=> d!959432 m!3746371))

(declare-fun m!3746373 () Bool)

(assert (=> b!3382102 m!3746373))

(assert (=> b!3382016 d!959432))

(declare-fun d!959434 () Bool)

(declare-fun c!575874 () Bool)

(assert (=> d!959434 (= c!575874 ((_ is Node!11123) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(declare-fun e!2099572 () Bool)

(assert (=> d!959434 (= (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))) e!2099572)))

(declare-fun b!3382117 () Bool)

(declare-fun inv!49941 (Conc!11123) Bool)

(assert (=> b!3382117 (= e!2099572 (inv!49941 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(declare-fun b!3382118 () Bool)

(declare-fun e!2099573 () Bool)

(assert (=> b!3382118 (= e!2099572 e!2099573)))

(declare-fun res!1368386 () Bool)

(assert (=> b!3382118 (= res!1368386 (not ((_ is Leaf!17421) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))))))

(assert (=> b!3382118 (=> res!1368386 e!2099573)))

(declare-fun b!3382119 () Bool)

(declare-fun inv!49942 (Conc!11123) Bool)

(assert (=> b!3382119 (= e!2099573 (inv!49942 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(assert (= (and d!959434 c!575874) b!3382117))

(assert (= (and d!959434 (not c!575874)) b!3382118))

(assert (= (and b!3382118 (not res!1368386)) b!3382119))

(declare-fun m!3746375 () Bool)

(assert (=> b!3382117 m!3746375))

(declare-fun m!3746377 () Bool)

(assert (=> b!3382119 m!3746377))

(assert (=> b!3381329 d!959434))

(declare-fun b!3382131 () Bool)

(declare-fun e!2099579 () List!36989)

(assert (=> b!3382131 (= e!2099579 (++!9009 (list!13334 (left!28740 (c!575699 lt!1148174))) (list!13334 (right!29070 (c!575699 lt!1148174)))))))

(declare-fun b!3382129 () Bool)

(declare-fun e!2099578 () List!36989)

(assert (=> b!3382129 (= e!2099578 e!2099579)))

(declare-fun c!575880 () Bool)

(assert (=> b!3382129 (= c!575880 ((_ is Leaf!17421) (c!575699 lt!1148174)))))

(declare-fun b!3382130 () Bool)

(declare-fun list!13337 (IArray!22251) List!36989)

(assert (=> b!3382130 (= e!2099579 (list!13337 (xs!14277 (c!575699 lt!1148174))))))

(declare-fun b!3382128 () Bool)

(assert (=> b!3382128 (= e!2099578 Nil!36865)))

(declare-fun d!959436 () Bool)

(declare-fun c!575879 () Bool)

(assert (=> d!959436 (= c!575879 ((_ is Empty!11123) (c!575699 lt!1148174)))))

(assert (=> d!959436 (= (list!13334 (c!575699 lt!1148174)) e!2099578)))

(assert (= (and d!959436 c!575879) b!3382128))

(assert (= (and d!959436 (not c!575879)) b!3382129))

(assert (= (and b!3382129 c!575880) b!3382130))

(assert (= (and b!3382129 (not c!575880)) b!3382131))

(declare-fun m!3746379 () Bool)

(assert (=> b!3382131 m!3746379))

(declare-fun m!3746381 () Bool)

(assert (=> b!3382131 m!3746381))

(assert (=> b!3382131 m!3746379))

(assert (=> b!3382131 m!3746381))

(declare-fun m!3746383 () Bool)

(assert (=> b!3382131 m!3746383))

(declare-fun m!3746385 () Bool)

(assert (=> b!3382130 m!3746385))

(assert (=> d!959196 d!959436))

(declare-fun d!959438 () Bool)

(declare-fun list!13338 (Conc!11124) List!36991)

(assert (=> d!959438 (= (list!13335 (_1!21360 lt!1148228)) (list!13338 (c!575700 (_1!21360 lt!1148228))))))

(declare-fun bs!554806 () Bool)

(assert (= bs!554806 d!959438))

(declare-fun m!3746387 () Bool)

(assert (=> bs!554806 m!3746387))

(assert (=> b!3381348 d!959438))

(declare-fun b!3382152 () Bool)

(declare-fun e!2099595 () Bool)

(declare-fun lt!1148477 () tuple2!36458)

(assert (=> b!3382152 (= e!2099595 (not (isEmpty!21109 (_1!21363 lt!1148477))))))

(declare-fun b!3382153 () Bool)

(declare-fun e!2099594 () tuple2!36458)

(declare-fun lt!1148478 () Option!7396)

(declare-fun lt!1148479 () tuple2!36458)

(assert (=> b!3382153 (= e!2099594 (tuple2!36459 (Cons!36867 (_1!21361 (v!36483 lt!1148478)) (_1!21363 lt!1148479)) (_2!21363 lt!1148479)))))

(assert (=> b!3382153 (= lt!1148479 (lexList!1406 thiss!18206 rules!2135 (_2!21361 (v!36483 lt!1148478))))))

(declare-fun d!959440 () Bool)

(declare-fun e!2099593 () Bool)

(assert (=> d!959440 e!2099593))

(declare-fun c!575885 () Bool)

(declare-fun size!27901 (List!36991) Int)

(assert (=> d!959440 (= c!575885 (> (size!27901 (_1!21363 lt!1148477)) 0))))

(assert (=> d!959440 (= lt!1148477 e!2099594)))

(declare-fun c!575886 () Bool)

(assert (=> d!959440 (= c!575886 ((_ is Some!7395) lt!1148478))))

(assert (=> d!959440 (= lt!1148478 (maxPrefix!2535 thiss!18206 rules!2135 (list!13331 lt!1148173)))))

(assert (=> d!959440 (= (lexList!1406 thiss!18206 rules!2135 (list!13331 lt!1148173)) lt!1148477)))

(declare-fun b!3382154 () Bool)

(assert (=> b!3382154 (= e!2099593 (= (_2!21363 lt!1148477) (list!13331 lt!1148173)))))

(declare-fun b!3382155 () Bool)

(assert (=> b!3382155 (= e!2099594 (tuple2!36459 Nil!36867 (list!13331 lt!1148173)))))

(declare-fun b!3382156 () Bool)

(assert (=> b!3382156 (= e!2099593 e!2099595)))

(declare-fun res!1368399 () Bool)

(assert (=> b!3382156 (= res!1368399 (< (size!27895 (_2!21363 lt!1148477)) (size!27895 (list!13331 lt!1148173))))))

(assert (=> b!3382156 (=> (not res!1368399) (not e!2099595))))

(assert (= (and d!959440 c!575886) b!3382153))

(assert (= (and d!959440 (not c!575886)) b!3382155))

(assert (= (and d!959440 c!575885) b!3382156))

(assert (= (and d!959440 (not c!575885)) b!3382154))

(assert (= (and b!3382156 res!1368399) b!3382152))

(declare-fun m!3746417 () Bool)

(assert (=> b!3382152 m!3746417))

(declare-fun m!3746419 () Bool)

(assert (=> b!3382153 m!3746419))

(declare-fun m!3746421 () Bool)

(assert (=> d!959440 m!3746421))

(assert (=> d!959440 m!3745581))

(declare-fun m!3746423 () Bool)

(assert (=> d!959440 m!3746423))

(declare-fun m!3746425 () Bool)

(assert (=> b!3382156 m!3746425))

(assert (=> b!3382156 m!3745581))

(declare-fun m!3746427 () Bool)

(assert (=> b!3382156 m!3746427))

(assert (=> b!3381348 d!959440))

(declare-fun d!959450 () Bool)

(assert (=> d!959450 (= (list!13331 lt!1148173) (list!13334 (c!575699 lt!1148173)))))

(declare-fun bs!554807 () Bool)

(assert (= bs!554807 d!959450))

(declare-fun m!3746429 () Bool)

(assert (=> bs!554807 m!3746429))

(assert (=> b!3381348 d!959450))

(declare-fun d!959452 () Bool)

(declare-fun res!1368401 () Bool)

(declare-fun e!2099601 () Bool)

(assert (=> d!959452 (=> (not res!1368401) (not e!2099601))))

(assert (=> d!959452 (= res!1368401 (not (isEmpty!21105 (originalCharacters!6088 (h!42287 (t!263198 tokens!494))))))))

(assert (=> d!959452 (= (inv!49935 (h!42287 (t!263198 tokens!494))) e!2099601)))

(declare-fun b!3382166 () Bool)

(declare-fun res!1368402 () Bool)

(assert (=> b!3382166 (=> (not res!1368402) (not e!2099601))))

(assert (=> b!3382166 (= res!1368402 (= (originalCharacters!6088 (h!42287 (t!263198 tokens!494))) (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (value!173619 (h!42287 (t!263198 tokens!494)))))))))

(declare-fun b!3382167 () Bool)

(assert (=> b!3382167 (= e!2099601 (= (size!27894 (h!42287 (t!263198 tokens!494))) (size!27895 (originalCharacters!6088 (h!42287 (t!263198 tokens!494))))))))

(assert (= (and d!959452 res!1368401) b!3382166))

(assert (= (and b!3382166 res!1368402) b!3382167))

(declare-fun b_lambda!96039 () Bool)

(assert (=> (not b_lambda!96039) (not b!3382166)))

(declare-fun tb!180079 () Bool)

(declare-fun t!263298 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263298) tb!180079))

(declare-fun b!3382168 () Bool)

(declare-fun e!2099602 () Bool)

(declare-fun tp!1057224 () Bool)

(assert (=> b!3382168 (= e!2099602 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (value!173619 (h!42287 (t!263198 tokens!494)))))) tp!1057224))))

(declare-fun result!223556 () Bool)

(assert (=> tb!180079 (= result!223556 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (value!173619 (h!42287 (t!263198 tokens!494))))) e!2099602))))

(assert (= tb!180079 b!3382168))

(declare-fun m!3746431 () Bool)

(assert (=> b!3382168 m!3746431))

(declare-fun m!3746433 () Bool)

(assert (=> tb!180079 m!3746433))

(assert (=> b!3382166 t!263298))

(declare-fun b_and!235035 () Bool)

(assert (= b_and!235001 (and (=> t!263298 result!223556) b_and!235035)))

(declare-fun tb!180081 () Bool)

(declare-fun t!263300 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263300) tb!180081))

(declare-fun result!223558 () Bool)

(assert (= result!223558 result!223556))

(assert (=> b!3382166 t!263300))

(declare-fun b_and!235037 () Bool)

(assert (= b_and!235009 (and (=> t!263300 result!223558) b_and!235037)))

(declare-fun t!263302 () Bool)

(declare-fun tb!180083 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263302) tb!180083))

(declare-fun result!223560 () Bool)

(assert (= result!223560 result!223556))

(assert (=> b!3382166 t!263302))

(declare-fun b_and!235039 () Bool)

(assert (= b_and!235005 (and (=> t!263302 result!223560) b_and!235039)))

(declare-fun tb!180085 () Bool)

(declare-fun t!263304 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263304) tb!180085))

(declare-fun result!223562 () Bool)

(assert (= result!223562 result!223556))

(assert (=> b!3382166 t!263304))

(declare-fun b_and!235041 () Bool)

(assert (= b_and!235003 (and (=> t!263304 result!223562) b_and!235041)))

(declare-fun t!263306 () Bool)

(declare-fun tb!180087 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263306) tb!180087))

(declare-fun result!223564 () Bool)

(assert (= result!223564 result!223556))

(assert (=> b!3382166 t!263306))

(declare-fun b_and!235043 () Bool)

(assert (= b_and!235013 (and (=> t!263306 result!223564) b_and!235043)))

(declare-fun m!3746443 () Bool)

(assert (=> d!959452 m!3746443))

(declare-fun m!3746445 () Bool)

(assert (=> b!3382166 m!3746445))

(assert (=> b!3382166 m!3746445))

(declare-fun m!3746447 () Bool)

(assert (=> b!3382166 m!3746447))

(declare-fun m!3746449 () Bool)

(assert (=> b!3382167 m!3746449))

(assert (=> b!3382028 d!959452))

(declare-fun d!959456 () Bool)

(assert (=> d!959456 (= (list!13335 lt!1148255) (list!13338 (c!575700 lt!1148255)))))

(declare-fun bs!554808 () Bool)

(assert (= bs!554808 d!959456))

(declare-fun m!3746451 () Bool)

(assert (=> bs!554808 m!3746451))

(assert (=> d!959202 d!959456))

(declare-fun d!959458 () Bool)

(declare-fun e!2099612 () Bool)

(assert (=> d!959458 e!2099612))

(declare-fun res!1368407 () Bool)

(assert (=> d!959458 (=> (not res!1368407) (not e!2099612))))

(declare-fun lt!1148491 () BalanceConc!21862)

(assert (=> d!959458 (= res!1368407 (= (list!13335 lt!1148491) (Cons!36867 (h!42287 tokens!494) Nil!36867)))))

(declare-fun choose!19578 (Token!10114) BalanceConc!21862)

(assert (=> d!959458 (= lt!1148491 (choose!19578 (h!42287 tokens!494)))))

(assert (=> d!959458 (= (singleton!1080 (h!42287 tokens!494)) lt!1148491)))

(declare-fun b!3382183 () Bool)

(assert (=> b!3382183 (= e!2099612 (isBalanced!3353 (c!575700 lt!1148491)))))

(assert (= (and d!959458 res!1368407) b!3382183))

(declare-fun m!3746469 () Bool)

(assert (=> d!959458 m!3746469))

(declare-fun m!3746471 () Bool)

(assert (=> d!959458 m!3746471))

(declare-fun m!3746473 () Bool)

(assert (=> b!3382183 m!3746473))

(assert (=> d!959202 d!959458))

(declare-fun d!959466 () Bool)

(assert (=> d!959466 (= (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))) (v!36482 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))

(assert (=> b!3381520 d!959466))

(assert (=> b!3381520 d!959214))

(declare-fun d!959468 () Bool)

(assert (=> d!959468 (= (get!11768 lt!1148268) (v!36482 lt!1148268))))

(assert (=> b!3381396 d!959468))

(declare-fun d!959470 () Bool)

(assert (=> d!959470 (= (get!11770 lt!1148306) (v!36483 lt!1148306))))

(assert (=> b!3381493 d!959470))

(assert (=> b!3381531 d!959208))

(declare-fun d!959474 () Bool)

(assert (=> d!959474 (dynLambda!15340 lambda!120485 (h!42287 tokens!494))))

(assert (=> d!959474 true))

(declare-fun _$7!1218 () Unit!51972)

(assert (=> d!959474 (= (choose!19575 tokens!494 lambda!120485 (h!42287 tokens!494)) _$7!1218)))

(declare-fun b_lambda!96041 () Bool)

(assert (=> (not b_lambda!96041) (not d!959474)))

(declare-fun bs!554810 () Bool)

(assert (= bs!554810 d!959474))

(assert (=> bs!554810 m!3746259))

(assert (=> d!959386 d!959474))

(assert (=> d!959386 d!959392))

(declare-fun d!959476 () Bool)

(declare-fun isBalanced!3355 (Conc!11123) Bool)

(assert (=> d!959476 (= (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))) (isBalanced!3355 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(declare-fun bs!554811 () Bool)

(assert (= bs!554811 d!959476))

(declare-fun m!3746499 () Bool)

(assert (=> bs!554811 m!3746499))

(assert (=> tb!180005 d!959476))

(declare-fun d!959478 () Bool)

(assert (=> d!959478 (= (isEmpty!21114 (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159)) (not ((_ is Some!7395) (maxPrefix!2535 thiss!18206 rules!2135 lt!1148159))))))

(assert (=> d!959372 d!959478))

(declare-fun b!3382187 () Bool)

(declare-fun e!2099617 () Bool)

(assert (=> b!3382187 (= e!2099617 (inv!16 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(declare-fun b!3382188 () Bool)

(declare-fun e!2099616 () Bool)

(assert (=> b!3382188 (= e!2099616 (inv!15 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(declare-fun b!3382189 () Bool)

(declare-fun res!1368411 () Bool)

(assert (=> b!3382189 (=> res!1368411 e!2099616)))

(assert (=> b!3382189 (= res!1368411 (not ((_ is IntegerValue!16814) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173))))))

(declare-fun e!2099618 () Bool)

(assert (=> b!3382189 (= e!2099618 e!2099616)))

(declare-fun d!959480 () Bool)

(declare-fun c!575897 () Bool)

(assert (=> d!959480 (= c!575897 ((_ is IntegerValue!16812) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(assert (=> d!959480 (= (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)) e!2099617)))

(declare-fun b!3382190 () Bool)

(assert (=> b!3382190 (= e!2099618 (inv!17 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(declare-fun b!3382191 () Bool)

(assert (=> b!3382191 (= e!2099617 e!2099618)))

(declare-fun c!575896 () Bool)

(assert (=> b!3382191 (= c!575896 ((_ is IntegerValue!16813) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148173)))))

(assert (= (and d!959480 c!575897) b!3382187))

(assert (= (and d!959480 (not c!575897)) b!3382191))

(assert (= (and b!3382191 c!575896) b!3382190))

(assert (= (and b!3382191 (not c!575896)) b!3382189))

(assert (= (and b!3382189 (not res!1368411)) b!3382188))

(declare-fun m!3746503 () Bool)

(assert (=> b!3382187 m!3746503))

(declare-fun m!3746505 () Bool)

(assert (=> b!3382188 m!3746505))

(declare-fun m!3746507 () Bool)

(assert (=> b!3382190 m!3746507))

(assert (=> tb!180017 d!959480))

(declare-fun b!3382206 () Bool)

(declare-fun res!1368426 () Bool)

(declare-fun e!2099630 () Bool)

(assert (=> b!3382206 (=> res!1368426 e!2099630)))

(assert (=> b!3382206 (= res!1368426 (not (isEmpty!21105 (tail!5355 (tail!5355 lt!1148157)))))))

(declare-fun b!3382207 () Bool)

(declare-fun res!1368420 () Bool)

(declare-fun e!2099632 () Bool)

(assert (=> b!3382207 (=> res!1368420 e!2099632)))

(declare-fun e!2099629 () Bool)

(assert (=> b!3382207 (= res!1368420 e!2099629)))

(declare-fun res!1368427 () Bool)

(assert (=> b!3382207 (=> (not res!1368427) (not e!2099629))))

(declare-fun lt!1148496 () Bool)

(assert (=> b!3382207 (= res!1368427 lt!1148496)))

(declare-fun b!3382208 () Bool)

(declare-fun e!2099626 () Bool)

(declare-fun call!244575 () Bool)

(assert (=> b!3382208 (= e!2099626 (= lt!1148496 call!244575))))

(declare-fun d!959486 () Bool)

(assert (=> d!959486 e!2099626))

(declare-fun c!575903 () Bool)

(assert (=> d!959486 (= c!575903 ((_ is EmptyExpr!10133) (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157))))))

(declare-fun e!2099628 () Bool)

(assert (=> d!959486 (= lt!1148496 e!2099628)))

(declare-fun c!575902 () Bool)

(assert (=> d!959486 (= c!575902 (isEmpty!21105 (tail!5355 lt!1148157)))))

(assert (=> d!959486 (validRegex!4607 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)))))

(assert (=> d!959486 (= (matchR!4725 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)) (tail!5355 lt!1148157)) lt!1148496)))

(declare-fun b!3382209 () Bool)

(declare-fun res!1368425 () Bool)

(assert (=> b!3382209 (=> res!1368425 e!2099632)))

(assert (=> b!3382209 (= res!1368425 (not ((_ is ElementMatch!10133) (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)))))))

(declare-fun e!2099627 () Bool)

(assert (=> b!3382209 (= e!2099627 e!2099632)))

(declare-fun b!3382210 () Bool)

(assert (=> b!3382210 (= e!2099628 (nullable!3451 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157))))))

(declare-fun b!3382211 () Bool)

(declare-fun res!1368422 () Bool)

(assert (=> b!3382211 (=> (not res!1368422) (not e!2099629))))

(assert (=> b!3382211 (= res!1368422 (isEmpty!21105 (tail!5355 (tail!5355 lt!1148157))))))

(declare-fun bm!244570 () Bool)

(assert (=> bm!244570 (= call!244575 (isEmpty!21105 (tail!5355 lt!1148157)))))

(declare-fun b!3382212 () Bool)

(assert (=> b!3382212 (= e!2099628 (matchR!4725 (derivativeStep!3004 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)) (head!7225 (tail!5355 lt!1148157))) (tail!5355 (tail!5355 lt!1148157))))))

(declare-fun b!3382213 () Bool)

(assert (=> b!3382213 (= e!2099627 (not lt!1148496))))

(declare-fun b!3382214 () Bool)

(declare-fun e!2099631 () Bool)

(assert (=> b!3382214 (= e!2099632 e!2099631)))

(declare-fun res!1368421 () Bool)

(assert (=> b!3382214 (=> (not res!1368421) (not e!2099631))))

(assert (=> b!3382214 (= res!1368421 (not lt!1148496))))

(declare-fun b!3382215 () Bool)

(assert (=> b!3382215 (= e!2099631 e!2099630)))

(declare-fun res!1368424 () Bool)

(assert (=> b!3382215 (=> res!1368424 e!2099630)))

(assert (=> b!3382215 (= res!1368424 call!244575)))

(declare-fun b!3382216 () Bool)

(assert (=> b!3382216 (= e!2099629 (= (head!7225 (tail!5355 lt!1148157)) (c!575698 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)))))))

(declare-fun b!3382217 () Bool)

(assert (=> b!3382217 (= e!2099630 (not (= (head!7225 (tail!5355 lt!1148157)) (c!575698 (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157))))))))

(declare-fun b!3382218 () Bool)

(declare-fun res!1368423 () Bool)

(assert (=> b!3382218 (=> (not res!1368423) (not e!2099629))))

(assert (=> b!3382218 (= res!1368423 (not call!244575))))

(declare-fun b!3382219 () Bool)

(assert (=> b!3382219 (= e!2099626 e!2099627)))

(declare-fun c!575901 () Bool)

(assert (=> b!3382219 (= c!575901 ((_ is EmptyLang!10133) (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157))))))

(assert (= (and d!959486 c!575902) b!3382210))

(assert (= (and d!959486 (not c!575902)) b!3382212))

(assert (= (and d!959486 c!575903) b!3382208))

(assert (= (and d!959486 (not c!575903)) b!3382219))

(assert (= (and b!3382219 c!575901) b!3382213))

(assert (= (and b!3382219 (not c!575901)) b!3382209))

(assert (= (and b!3382209 (not res!1368425)) b!3382207))

(assert (= (and b!3382207 res!1368427) b!3382218))

(assert (= (and b!3382218 res!1368423) b!3382211))

(assert (= (and b!3382211 res!1368422) b!3382216))

(assert (= (and b!3382207 (not res!1368420)) b!3382214))

(assert (= (and b!3382214 res!1368421) b!3382215))

(assert (= (and b!3382215 (not res!1368424)) b!3382206))

(assert (= (and b!3382206 (not res!1368426)) b!3382217))

(assert (= (or b!3382208 b!3382215 b!3382218) bm!244570))

(assert (=> b!3382210 m!3745847))

(declare-fun m!3746509 () Bool)

(assert (=> b!3382210 m!3746509))

(assert (=> bm!244570 m!3745843))

(assert (=> bm!244570 m!3745845))

(assert (=> d!959486 m!3745843))

(assert (=> d!959486 m!3745845))

(assert (=> d!959486 m!3745847))

(declare-fun m!3746513 () Bool)

(assert (=> d!959486 m!3746513))

(assert (=> b!3382211 m!3745843))

(declare-fun m!3746515 () Bool)

(assert (=> b!3382211 m!3746515))

(assert (=> b!3382211 m!3746515))

(declare-fun m!3746519 () Bool)

(assert (=> b!3382211 m!3746519))

(assert (=> b!3382212 m!3745843))

(declare-fun m!3746523 () Bool)

(assert (=> b!3382212 m!3746523))

(assert (=> b!3382212 m!3745847))

(assert (=> b!3382212 m!3746523))

(declare-fun m!3746525 () Bool)

(assert (=> b!3382212 m!3746525))

(assert (=> b!3382212 m!3745843))

(assert (=> b!3382212 m!3746515))

(assert (=> b!3382212 m!3746525))

(assert (=> b!3382212 m!3746515))

(declare-fun m!3746531 () Bool)

(assert (=> b!3382212 m!3746531))

(assert (=> b!3382206 m!3745843))

(assert (=> b!3382206 m!3746515))

(assert (=> b!3382206 m!3746515))

(assert (=> b!3382206 m!3746519))

(assert (=> b!3382216 m!3745843))

(assert (=> b!3382216 m!3746523))

(assert (=> b!3382217 m!3745843))

(assert (=> b!3382217 m!3746523))

(assert (=> b!3381527 d!959486))

(declare-fun b!3382260 () Bool)

(declare-fun e!2099656 () Regex!10133)

(declare-fun call!244595 () Regex!10133)

(assert (=> b!3382260 (= e!2099656 (Union!10133 (Concat!15737 call!244595 (regTwo!20778 (regex!5374 lt!1148167))) EmptyLang!10133))))

(declare-fun b!3382261 () Bool)

(declare-fun e!2099657 () Regex!10133)

(declare-fun e!2099653 () Regex!10133)

(assert (=> b!3382261 (= e!2099657 e!2099653)))

(declare-fun c!575926 () Bool)

(assert (=> b!3382261 (= c!575926 ((_ is ElementMatch!10133) (regex!5374 lt!1148167)))))

(declare-fun bm!244587 () Bool)

(declare-fun call!244592 () Regex!10133)

(assert (=> bm!244587 (= call!244595 call!244592)))

(declare-fun b!3382262 () Bool)

(declare-fun e!2099655 () Regex!10133)

(declare-fun e!2099654 () Regex!10133)

(assert (=> b!3382262 (= e!2099655 e!2099654)))

(declare-fun c!575927 () Bool)

(assert (=> b!3382262 (= c!575927 ((_ is Star!10133) (regex!5374 lt!1148167)))))

(declare-fun d!959488 () Bool)

(declare-fun lt!1148501 () Regex!10133)

(assert (=> d!959488 (validRegex!4607 lt!1148501)))

(assert (=> d!959488 (= lt!1148501 e!2099657)))

(declare-fun c!575929 () Bool)

(assert (=> d!959488 (= c!575929 (or ((_ is EmptyExpr!10133) (regex!5374 lt!1148167)) ((_ is EmptyLang!10133) (regex!5374 lt!1148167))))))

(assert (=> d!959488 (validRegex!4607 (regex!5374 lt!1148167))))

(assert (=> d!959488 (= (derivativeStep!3004 (regex!5374 lt!1148167) (head!7225 lt!1148157)) lt!1148501)))

(declare-fun bm!244588 () Bool)

(declare-fun c!575925 () Bool)

(declare-fun call!244594 () Regex!10133)

(assert (=> bm!244588 (= call!244594 (derivativeStep!3004 (ite c!575925 (regOne!20779 (regex!5374 lt!1148167)) (ite c!575927 (reg!10462 (regex!5374 lt!1148167)) (regOne!20778 (regex!5374 lt!1148167)))) (head!7225 lt!1148157)))))

(declare-fun b!3382263 () Bool)

(declare-fun call!244593 () Regex!10133)

(assert (=> b!3382263 (= e!2099656 (Union!10133 (Concat!15737 call!244595 (regTwo!20778 (regex!5374 lt!1148167))) call!244593))))

(declare-fun bm!244589 () Bool)

(assert (=> bm!244589 (= call!244592 call!244594)))

(declare-fun b!3382264 () Bool)

(declare-fun c!575924 () Bool)

(assert (=> b!3382264 (= c!575924 (nullable!3451 (regOne!20778 (regex!5374 lt!1148167))))))

(assert (=> b!3382264 (= e!2099654 e!2099656)))

(declare-fun b!3382265 () Bool)

(assert (=> b!3382265 (= c!575925 ((_ is Union!10133) (regex!5374 lt!1148167)))))

(assert (=> b!3382265 (= e!2099653 e!2099655)))

(declare-fun b!3382266 () Bool)

(assert (=> b!3382266 (= e!2099655 (Union!10133 call!244594 call!244593))))

(declare-fun b!3382267 () Bool)

(assert (=> b!3382267 (= e!2099657 EmptyLang!10133)))

(declare-fun b!3382268 () Bool)

(assert (=> b!3382268 (= e!2099653 (ite (= (head!7225 lt!1148157) (c!575698 (regex!5374 lt!1148167))) EmptyExpr!10133 EmptyLang!10133))))

(declare-fun b!3382269 () Bool)

(assert (=> b!3382269 (= e!2099654 (Concat!15737 call!244592 (regex!5374 lt!1148167)))))

(declare-fun bm!244590 () Bool)

(assert (=> bm!244590 (= call!244593 (derivativeStep!3004 (ite c!575925 (regTwo!20779 (regex!5374 lt!1148167)) (regTwo!20778 (regex!5374 lt!1148167))) (head!7225 lt!1148157)))))

(assert (= (and d!959488 c!575929) b!3382267))

(assert (= (and d!959488 (not c!575929)) b!3382261))

(assert (= (and b!3382261 c!575926) b!3382268))

(assert (= (and b!3382261 (not c!575926)) b!3382265))

(assert (= (and b!3382265 c!575925) b!3382266))

(assert (= (and b!3382265 (not c!575925)) b!3382262))

(assert (= (and b!3382262 c!575927) b!3382269))

(assert (= (and b!3382262 (not c!575927)) b!3382264))

(assert (= (and b!3382264 c!575924) b!3382263))

(assert (= (and b!3382264 (not c!575924)) b!3382260))

(assert (= (or b!3382263 b!3382260) bm!244587))

(assert (= (or b!3382269 bm!244587) bm!244589))

(assert (= (or b!3382266 bm!244589) bm!244588))

(assert (= (or b!3382266 b!3382263) bm!244590))

(declare-fun m!3746537 () Bool)

(assert (=> d!959488 m!3746537))

(assert (=> d!959488 m!3745841))

(assert (=> bm!244588 m!3745373))

(declare-fun m!3746543 () Bool)

(assert (=> bm!244588 m!3746543))

(declare-fun m!3746547 () Bool)

(assert (=> b!3382264 m!3746547))

(assert (=> bm!244590 m!3745373))

(declare-fun m!3746549 () Bool)

(assert (=> bm!244590 m!3746549))

(assert (=> b!3381527 d!959488))

(assert (=> b!3381527 d!959208))

(declare-fun d!959492 () Bool)

(assert (=> d!959492 (= (tail!5355 lt!1148157) (t!263196 lt!1148157))))

(assert (=> b!3381527 d!959492))

(declare-fun d!959496 () Bool)

(declare-fun lt!1148508 () Bool)

(assert (=> d!959496 (= lt!1148508 (isEmpty!21105 (list!13331 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))))

(declare-fun isEmpty!21116 (Conc!11123) Bool)

(assert (=> d!959496 (= lt!1148508 (isEmpty!21116 (c!575699 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))))

(assert (=> d!959496 (= (isEmpty!21115 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))) lt!1148508)))

(declare-fun bs!554813 () Bool)

(assert (= bs!554813 d!959496))

(declare-fun m!3746557 () Bool)

(assert (=> bs!554813 m!3746557))

(assert (=> bs!554813 m!3746557))

(declare-fun m!3746559 () Bool)

(assert (=> bs!554813 m!3746559))

(declare-fun m!3746561 () Bool)

(assert (=> bs!554813 m!3746561))

(assert (=> b!3381982 d!959496))

(declare-fun lt!1148510 () tuple2!36452)

(declare-fun e!2099665 () Bool)

(declare-fun b!3382280 () Bool)

(assert (=> b!3382280 (= e!2099665 (= (_2!21360 lt!1148510) (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))))

(declare-fun d!959502 () Bool)

(declare-fun e!2099664 () Bool)

(assert (=> d!959502 e!2099664))

(declare-fun res!1368429 () Bool)

(assert (=> d!959502 (=> (not res!1368429) (not e!2099664))))

(assert (=> d!959502 (= res!1368429 e!2099665)))

(declare-fun c!575934 () Bool)

(assert (=> d!959502 (= c!575934 (> (size!27898 (_1!21360 lt!1148510)) 0))))

(assert (=> d!959502 (= lt!1148510 (lexTailRecV2!1016 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)) (BalanceConc!21861 Empty!11123) (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)) (BalanceConc!21863 Empty!11124)))))

(assert (=> d!959502 (= (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))) lt!1148510)))

(declare-fun b!3382281 () Bool)

(declare-fun res!1368428 () Bool)

(assert (=> b!3382281 (=> (not res!1368428) (not e!2099664))))

(assert (=> b!3382281 (= res!1368428 (= (list!13335 (_1!21360 lt!1148510)) (_1!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))))

(declare-fun b!3382282 () Bool)

(declare-fun e!2099663 () Bool)

(assert (=> b!3382282 (= e!2099665 e!2099663)))

(declare-fun res!1368430 () Bool)

(assert (=> b!3382282 (= res!1368430 (< (size!27899 (_2!21360 lt!1148510)) (size!27899 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))

(assert (=> b!3382282 (=> (not res!1368430) (not e!2099663))))

(declare-fun b!3382283 () Bool)

(assert (=> b!3382283 (= e!2099663 (not (isEmpty!21104 (_1!21360 lt!1148510))))))

(declare-fun b!3382284 () Bool)

(assert (=> b!3382284 (= e!2099664 (= (list!13331 (_2!21360 lt!1148510)) (_2!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))))

(assert (= (and d!959502 c!575934) b!3382282))

(assert (= (and d!959502 (not c!575934)) b!3382280))

(assert (= (and b!3382282 res!1368430) b!3382283))

(assert (= (and d!959502 res!1368429) b!3382281))

(assert (= (and b!3382281 res!1368428) b!3382284))

(declare-fun m!3746573 () Bool)

(assert (=> b!3382284 m!3746573))

(assert (=> b!3382284 m!3746279))

(declare-fun m!3746577 () Bool)

(assert (=> b!3382284 m!3746577))

(assert (=> b!3382284 m!3746577))

(declare-fun m!3746583 () Bool)

(assert (=> b!3382284 m!3746583))

(declare-fun m!3746585 () Bool)

(assert (=> b!3382282 m!3746585))

(assert (=> b!3382282 m!3746279))

(declare-fun m!3746587 () Bool)

(assert (=> b!3382282 m!3746587))

(declare-fun m!3746589 () Bool)

(assert (=> d!959502 m!3746589))

(assert (=> d!959502 m!3746279))

(assert (=> d!959502 m!3746279))

(declare-fun m!3746593 () Bool)

(assert (=> d!959502 m!3746593))

(declare-fun m!3746595 () Bool)

(assert (=> b!3382283 m!3746595))

(declare-fun m!3746597 () Bool)

(assert (=> b!3382281 m!3746597))

(assert (=> b!3382281 m!3746279))

(assert (=> b!3382281 m!3746577))

(assert (=> b!3382281 m!3746577))

(assert (=> b!3382281 m!3746583))

(assert (=> b!3381982 d!959502))

(declare-fun d!959510 () Bool)

(declare-fun lt!1148513 () BalanceConc!21860)

(assert (=> d!959510 (= (list!13331 lt!1148513) (printList!1511 thiss!18206 (list!13335 (singletonSeq!2470 separatorToken!241))))))

(assert (=> d!959510 (= lt!1148513 (printTailRec!1458 thiss!18206 (singletonSeq!2470 separatorToken!241) 0 (BalanceConc!21861 Empty!11123)))))

(assert (=> d!959510 (= (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)) lt!1148513)))

(declare-fun bs!554816 () Bool)

(assert (= bs!554816 d!959510))

(declare-fun m!3746599 () Bool)

(assert (=> bs!554816 m!3746599))

(assert (=> bs!554816 m!3746277))

(assert (=> bs!554816 m!3746285))

(assert (=> bs!554816 m!3746285))

(declare-fun m!3746601 () Bool)

(assert (=> bs!554816 m!3746601))

(assert (=> bs!554816 m!3746277))

(declare-fun m!3746603 () Bool)

(assert (=> bs!554816 m!3746603))

(assert (=> b!3381982 d!959510))

(declare-fun d!959512 () Bool)

(declare-fun e!2099669 () Bool)

(assert (=> d!959512 e!2099669))

(declare-fun res!1368433 () Bool)

(assert (=> d!959512 (=> (not res!1368433) (not e!2099669))))

(declare-fun lt!1148514 () BalanceConc!21862)

(assert (=> d!959512 (= res!1368433 (= (list!13335 lt!1148514) (Cons!36867 separatorToken!241 Nil!36867)))))

(assert (=> d!959512 (= lt!1148514 (singleton!1080 separatorToken!241))))

(assert (=> d!959512 (= (singletonSeq!2470 separatorToken!241) lt!1148514)))

(declare-fun b!3382290 () Bool)

(assert (=> b!3382290 (= e!2099669 (isBalanced!3353 (c!575700 lt!1148514)))))

(assert (= (and d!959512 res!1368433) b!3382290))

(declare-fun m!3746607 () Bool)

(assert (=> d!959512 m!3746607))

(declare-fun m!3746611 () Bool)

(assert (=> d!959512 m!3746611))

(declare-fun m!3746613 () Bool)

(assert (=> b!3382290 m!3746613))

(assert (=> b!3381982 d!959512))

(declare-fun d!959514 () Bool)

(declare-fun lt!1148515 () Int)

(assert (=> d!959514 (>= lt!1148515 0)))

(declare-fun e!2099670 () Int)

(assert (=> d!959514 (= lt!1148515 e!2099670)))

(declare-fun c!575936 () Bool)

(assert (=> d!959514 (= c!575936 ((_ is Nil!36865) lt!1148443))))

(assert (=> d!959514 (= (size!27895 lt!1148443) lt!1148515)))

(declare-fun b!3382291 () Bool)

(assert (=> b!3382291 (= e!2099670 0)))

(declare-fun b!3382292 () Bool)

(assert (=> b!3382292 (= e!2099670 (+ 1 (size!27895 (t!263196 lt!1148443))))))

(assert (= (and d!959514 c!575936) b!3382291))

(assert (= (and d!959514 (not c!575936)) b!3382292))

(declare-fun m!3746615 () Bool)

(assert (=> b!3382292 m!3746615))

(assert (=> b!3381955 d!959514))

(assert (=> b!3381955 d!959224))

(declare-fun d!959516 () Bool)

(declare-fun lt!1148516 () Int)

(assert (=> d!959516 (>= lt!1148516 0)))

(declare-fun e!2099671 () Int)

(assert (=> d!959516 (= lt!1148516 e!2099671)))

(declare-fun c!575937 () Bool)

(assert (=> d!959516 (= c!575937 ((_ is Nil!36865) lt!1148157))))

(assert (=> d!959516 (= (size!27895 lt!1148157) lt!1148516)))

(declare-fun b!3382293 () Bool)

(assert (=> b!3382293 (= e!2099671 0)))

(declare-fun b!3382294 () Bool)

(assert (=> b!3382294 (= e!2099671 (+ 1 (size!27895 (t!263196 lt!1148157))))))

(assert (= (and d!959516 c!575937) b!3382293))

(assert (= (and d!959516 (not c!575937)) b!3382294))

(declare-fun m!3746621 () Bool)

(assert (=> b!3382294 m!3746621))

(assert (=> b!3381955 d!959516))

(declare-fun d!959520 () Bool)

(declare-fun lt!1148521 () Bool)

(declare-fun content!5083 (List!36991) (InoxSet Token!10114))

(assert (=> d!959520 (= lt!1148521 (select (content!5083 tokens!494) (h!42287 tokens!494)))))

(declare-fun e!2099689 () Bool)

(assert (=> d!959520 (= lt!1148521 e!2099689)))

(declare-fun res!1368446 () Bool)

(assert (=> d!959520 (=> (not res!1368446) (not e!2099689))))

(assert (=> d!959520 (= res!1368446 ((_ is Cons!36867) tokens!494))))

(assert (=> d!959520 (= (contains!6745 tokens!494 (h!42287 tokens!494)) lt!1148521)))

(declare-fun b!3382323 () Bool)

(declare-fun e!2099688 () Bool)

(assert (=> b!3382323 (= e!2099689 e!2099688)))

(declare-fun res!1368447 () Bool)

(assert (=> b!3382323 (=> res!1368447 e!2099688)))

(assert (=> b!3382323 (= res!1368447 (= (h!42287 tokens!494) (h!42287 tokens!494)))))

(declare-fun b!3382324 () Bool)

(assert (=> b!3382324 (= e!2099688 (contains!6745 (t!263198 tokens!494) (h!42287 tokens!494)))))

(assert (= (and d!959520 res!1368446) b!3382323))

(assert (= (and b!3382323 (not res!1368447)) b!3382324))

(declare-fun m!3746645 () Bool)

(assert (=> d!959520 m!3746645))

(declare-fun m!3746647 () Bool)

(assert (=> d!959520 m!3746647))

(declare-fun m!3746649 () Bool)

(assert (=> b!3382324 m!3746649))

(assert (=> b!3381959 d!959520))

(assert (=> b!3381511 d!959174))

(declare-fun b!3382325 () Bool)

(declare-fun res!1368454 () Bool)

(declare-fun e!2099694 () Bool)

(assert (=> b!3382325 (=> res!1368454 e!2099694)))

(assert (=> b!3382325 (= res!1368454 (not (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (h!42287 tokens!494)))))))))

(declare-fun b!3382326 () Bool)

(declare-fun res!1368448 () Bool)

(declare-fun e!2099696 () Bool)

(assert (=> b!3382326 (=> res!1368448 e!2099696)))

(declare-fun e!2099693 () Bool)

(assert (=> b!3382326 (= res!1368448 e!2099693)))

(declare-fun res!1368455 () Bool)

(assert (=> b!3382326 (=> (not res!1368455) (not e!2099693))))

(declare-fun lt!1148522 () Bool)

(assert (=> b!3382326 (= res!1368455 lt!1148522)))

(declare-fun b!3382327 () Bool)

(declare-fun e!2099690 () Bool)

(declare-fun call!244605 () Bool)

(assert (=> b!3382327 (= e!2099690 (= lt!1148522 call!244605))))

(declare-fun d!959532 () Bool)

(assert (=> d!959532 e!2099690))

(declare-fun c!575948 () Bool)

(assert (=> d!959532 (= c!575948 ((_ is EmptyExpr!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))))

(declare-fun e!2099692 () Bool)

(assert (=> d!959532 (= lt!1148522 e!2099692)))

(declare-fun c!575947 () Bool)

(assert (=> d!959532 (= c!575947 (isEmpty!21105 (list!13331 (charsOf!3388 (h!42287 tokens!494)))))))

(assert (=> d!959532 (validRegex!4607 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(assert (=> d!959532 (= (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))) (list!13331 (charsOf!3388 (h!42287 tokens!494)))) lt!1148522)))

(declare-fun b!3382328 () Bool)

(declare-fun res!1368453 () Bool)

(assert (=> b!3382328 (=> res!1368453 e!2099696)))

(assert (=> b!3382328 (= res!1368453 (not ((_ is ElementMatch!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))))

(declare-fun e!2099691 () Bool)

(assert (=> b!3382328 (= e!2099691 e!2099696)))

(declare-fun b!3382329 () Bool)

(assert (=> b!3382329 (= e!2099692 (nullable!3451 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))))

(declare-fun b!3382330 () Bool)

(declare-fun res!1368450 () Bool)

(assert (=> b!3382330 (=> (not res!1368450) (not e!2099693))))

(assert (=> b!3382330 (= res!1368450 (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (h!42287 tokens!494))))))))

(declare-fun bm!244600 () Bool)

(assert (=> bm!244600 (= call!244605 (isEmpty!21105 (list!13331 (charsOf!3388 (h!42287 tokens!494)))))))

(declare-fun b!3382331 () Bool)

(assert (=> b!3382331 (= e!2099692 (matchR!4725 (derivativeStep!3004 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))) (head!7225 (list!13331 (charsOf!3388 (h!42287 tokens!494))))) (tail!5355 (list!13331 (charsOf!3388 (h!42287 tokens!494))))))))

(declare-fun b!3382332 () Bool)

(assert (=> b!3382332 (= e!2099691 (not lt!1148522))))

(declare-fun b!3382333 () Bool)

(declare-fun e!2099695 () Bool)

(assert (=> b!3382333 (= e!2099696 e!2099695)))

(declare-fun res!1368449 () Bool)

(assert (=> b!3382333 (=> (not res!1368449) (not e!2099695))))

(assert (=> b!3382333 (= res!1368449 (not lt!1148522))))

(declare-fun b!3382334 () Bool)

(assert (=> b!3382334 (= e!2099695 e!2099694)))

(declare-fun res!1368452 () Bool)

(assert (=> b!3382334 (=> res!1368452 e!2099694)))

(assert (=> b!3382334 (= res!1368452 call!244605)))

(declare-fun b!3382335 () Bool)

(assert (=> b!3382335 (= e!2099693 (= (head!7225 (list!13331 (charsOf!3388 (h!42287 tokens!494)))) (c!575698 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))))

(declare-fun b!3382336 () Bool)

(assert (=> b!3382336 (= e!2099694 (not (= (head!7225 (list!13331 (charsOf!3388 (h!42287 tokens!494)))) (c!575698 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))))))

(declare-fun b!3382337 () Bool)

(declare-fun res!1368451 () Bool)

(assert (=> b!3382337 (=> (not res!1368451) (not e!2099693))))

(assert (=> b!3382337 (= res!1368451 (not call!244605))))

(declare-fun b!3382338 () Bool)

(assert (=> b!3382338 (= e!2099690 e!2099691)))

(declare-fun c!575946 () Bool)

(assert (=> b!3382338 (= c!575946 ((_ is EmptyLang!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))))

(assert (= (and d!959532 c!575947) b!3382329))

(assert (= (and d!959532 (not c!575947)) b!3382331))

(assert (= (and d!959532 c!575948) b!3382327))

(assert (= (and d!959532 (not c!575948)) b!3382338))

(assert (= (and b!3382338 c!575946) b!3382332))

(assert (= (and b!3382338 (not c!575946)) b!3382328))

(assert (= (and b!3382328 (not res!1368453)) b!3382326))

(assert (= (and b!3382326 res!1368455) b!3382337))

(assert (= (and b!3382337 res!1368451) b!3382330))

(assert (= (and b!3382330 res!1368450) b!3382335))

(assert (= (and b!3382326 (not res!1368448)) b!3382333))

(assert (= (and b!3382333 res!1368449) b!3382334))

(assert (= (and b!3382334 (not res!1368452)) b!3382325))

(assert (= (and b!3382325 (not res!1368454)) b!3382336))

(assert (= (or b!3382327 b!3382334 b!3382337) bm!244600))

(declare-fun m!3746651 () Bool)

(assert (=> b!3382329 m!3746651))

(assert (=> bm!244600 m!3745351))

(declare-fun m!3746653 () Bool)

(assert (=> bm!244600 m!3746653))

(assert (=> d!959532 m!3745351))

(assert (=> d!959532 m!3746653))

(declare-fun m!3746655 () Bool)

(assert (=> d!959532 m!3746655))

(assert (=> b!3382330 m!3745351))

(declare-fun m!3746657 () Bool)

(assert (=> b!3382330 m!3746657))

(assert (=> b!3382330 m!3746657))

(declare-fun m!3746659 () Bool)

(assert (=> b!3382330 m!3746659))

(assert (=> b!3382331 m!3745351))

(declare-fun m!3746661 () Bool)

(assert (=> b!3382331 m!3746661))

(assert (=> b!3382331 m!3746661))

(declare-fun m!3746663 () Bool)

(assert (=> b!3382331 m!3746663))

(assert (=> b!3382331 m!3745351))

(assert (=> b!3382331 m!3746657))

(assert (=> b!3382331 m!3746663))

(assert (=> b!3382331 m!3746657))

(declare-fun m!3746665 () Bool)

(assert (=> b!3382331 m!3746665))

(assert (=> b!3382325 m!3745351))

(assert (=> b!3382325 m!3746657))

(assert (=> b!3382325 m!3746657))

(assert (=> b!3382325 m!3746659))

(assert (=> b!3382335 m!3745351))

(assert (=> b!3382335 m!3746661))

(assert (=> b!3382336 m!3745351))

(assert (=> b!3382336 m!3746661))

(assert (=> b!3381511 d!959532))

(assert (=> b!3381511 d!959212))

(declare-fun d!959534 () Bool)

(assert (=> d!959534 (= (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))) (v!36482 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> b!3381511 d!959534))

(assert (=> b!3381511 d!959172))

(declare-fun d!959536 () Bool)

(declare-fun lt!1148527 () Int)

(assert (=> d!959536 (= lt!1148527 (size!27901 (list!13335 (_1!21360 lt!1148228))))))

(declare-fun size!27903 (Conc!11124) Int)

(assert (=> d!959536 (= lt!1148527 (size!27903 (c!575700 (_1!21360 lt!1148228))))))

(assert (=> d!959536 (= (size!27898 (_1!21360 lt!1148228)) lt!1148527)))

(declare-fun bs!554817 () Bool)

(assert (= bs!554817 d!959536))

(assert (=> bs!554817 m!3745595))

(assert (=> bs!554817 m!3745595))

(declare-fun m!3746667 () Bool)

(assert (=> bs!554817 m!3746667))

(declare-fun m!3746669 () Bool)

(assert (=> bs!554817 m!3746669))

(assert (=> d!959188 d!959536))

(declare-fun b!3382488 () Bool)

(declare-fun e!2099781 () tuple2!36452)

(assert (=> b!3382488 (= e!2099781 (tuple2!36453 (BalanceConc!21863 Empty!11124) lt!1148173))))

(declare-fun d!959538 () Bool)

(declare-fun e!2099783 () Bool)

(assert (=> d!959538 e!2099783))

(declare-fun res!1368499 () Bool)

(assert (=> d!959538 (=> (not res!1368499) (not e!2099783))))

(declare-fun lt!1148718 () tuple2!36452)

(declare-fun lexRec!728 (LexerInterface!4963 List!36990 BalanceConc!21860) tuple2!36452)

(assert (=> d!959538 (= res!1368499 (= (list!13335 (_1!21360 lt!1148718)) (list!13335 (_1!21360 (lexRec!728 thiss!18206 rules!2135 lt!1148173)))))))

(declare-fun e!2099784 () tuple2!36452)

(assert (=> d!959538 (= lt!1148718 e!2099784)))

(declare-fun c!576002 () Bool)

(declare-datatypes ((tuple2!36464 0))(
  ( (tuple2!36465 (_1!21366 Token!10114) (_2!21366 BalanceConc!21860)) )
))
(declare-datatypes ((Option!7397 0))(
  ( (None!7396) (Some!7396 (v!36498 tuple2!36464)) )
))
(declare-fun lt!1148742 () Option!7397)

(assert (=> d!959538 (= c!576002 ((_ is Some!7396) lt!1148742))))

(declare-fun maxPrefixZipperSequenceV2!515 (LexerInterface!4963 List!36990 BalanceConc!21860 BalanceConc!21860) Option!7397)

(assert (=> d!959538 (= lt!1148742 (maxPrefixZipperSequenceV2!515 thiss!18206 rules!2135 lt!1148173 lt!1148173))))

(declare-fun lt!1148745 () Unit!51972)

(declare-fun lt!1148737 () Unit!51972)

(assert (=> d!959538 (= lt!1148745 lt!1148737)))

(declare-fun lt!1148722 () List!36989)

(declare-fun lt!1148733 () List!36989)

(declare-fun isSuffix!890 (List!36989 List!36989) Bool)

(assert (=> d!959538 (isSuffix!890 lt!1148722 (++!9009 lt!1148733 lt!1148722))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!575 (List!36989 List!36989) Unit!51972)

(assert (=> d!959538 (= lt!1148737 (lemmaConcatTwoListThenFSndIsSuffix!575 lt!1148733 lt!1148722))))

(assert (=> d!959538 (= lt!1148722 (list!13331 lt!1148173))))

(assert (=> d!959538 (= lt!1148733 (list!13331 (BalanceConc!21861 Empty!11123)))))

(assert (=> d!959538 (= (lexTailRecV2!1016 thiss!18206 rules!2135 lt!1148173 (BalanceConc!21861 Empty!11123) lt!1148173 (BalanceConc!21863 Empty!11124)) lt!1148718)))

(declare-fun lt!1148720 () Option!7397)

(declare-fun lt!1148747 () tuple2!36452)

(declare-fun b!3382489 () Bool)

(assert (=> b!3382489 (= lt!1148747 (lexRec!728 thiss!18206 rules!2135 (_2!21366 (v!36498 lt!1148720))))))

(declare-fun e!2099782 () tuple2!36452)

(declare-fun prepend!1232 (BalanceConc!21862 Token!10114) BalanceConc!21862)

(assert (=> b!3382489 (= e!2099782 (tuple2!36453 (prepend!1232 (_1!21360 lt!1148747) (_1!21366 (v!36498 lt!1148720))) (_2!21360 lt!1148747)))))

(declare-fun b!3382490 () Bool)

(assert (=> b!3382490 (= e!2099783 (= (list!13331 (_2!21360 lt!1148718)) (list!13331 (_2!21360 (lexRec!728 thiss!18206 rules!2135 lt!1148173)))))))

(declare-fun lt!1148719 () tuple2!36452)

(declare-fun lt!1148746 () Option!7397)

(declare-fun b!3382491 () Bool)

(assert (=> b!3382491 (= lt!1148719 (lexRec!728 thiss!18206 rules!2135 (_2!21366 (v!36498 lt!1148746))))))

(assert (=> b!3382491 (= e!2099781 (tuple2!36453 (prepend!1232 (_1!21360 lt!1148719) (_1!21366 (v!36498 lt!1148746))) (_2!21360 lt!1148719)))))

(declare-fun b!3382492 () Bool)

(declare-fun lt!1148748 () BalanceConc!21860)

(assert (=> b!3382492 (= e!2099782 (tuple2!36453 (BalanceConc!21863 Empty!11124) lt!1148748))))

(declare-fun lt!1148744 () BalanceConc!21860)

(declare-fun b!3382493 () Bool)

(declare-fun append!932 (BalanceConc!21862 Token!10114) BalanceConc!21862)

(assert (=> b!3382493 (= e!2099784 (lexTailRecV2!1016 thiss!18206 rules!2135 lt!1148173 lt!1148744 (_2!21366 (v!36498 lt!1148742)) (append!932 (BalanceConc!21863 Empty!11124) (_1!21366 (v!36498 lt!1148742)))))))

(declare-fun lt!1148731 () tuple2!36452)

(assert (=> b!3382493 (= lt!1148731 (lexRec!728 thiss!18206 rules!2135 (_2!21366 (v!36498 lt!1148742))))))

(declare-fun lt!1148750 () List!36989)

(assert (=> b!3382493 (= lt!1148750 (list!13331 (BalanceConc!21861 Empty!11123)))))

(declare-fun lt!1148743 () List!36989)

(assert (=> b!3382493 (= lt!1148743 (list!13331 (charsOf!3388 (_1!21366 (v!36498 lt!1148742)))))))

(declare-fun lt!1148735 () List!36989)

(assert (=> b!3382493 (= lt!1148735 (list!13331 (_2!21366 (v!36498 lt!1148742))))))

(declare-fun lt!1148721 () Unit!51972)

(declare-fun lemmaConcatAssociativity!1877 (List!36989 List!36989 List!36989) Unit!51972)

(assert (=> b!3382493 (= lt!1148721 (lemmaConcatAssociativity!1877 lt!1148750 lt!1148743 lt!1148735))))

(assert (=> b!3382493 (= (++!9009 (++!9009 lt!1148750 lt!1148743) lt!1148735) (++!9009 lt!1148750 (++!9009 lt!1148743 lt!1148735)))))

(declare-fun lt!1148728 () Unit!51972)

(assert (=> b!3382493 (= lt!1148728 lt!1148721)))

(declare-fun maxPrefixZipperSequence!1121 (LexerInterface!4963 List!36990 BalanceConc!21860) Option!7397)

(assert (=> b!3382493 (= lt!1148746 (maxPrefixZipperSequence!1121 thiss!18206 rules!2135 lt!1148173))))

(declare-fun c!576001 () Bool)

(assert (=> b!3382493 (= c!576001 ((_ is Some!7396) lt!1148746))))

(assert (=> b!3382493 (= (lexRec!728 thiss!18206 rules!2135 lt!1148173) e!2099781)))

(declare-fun lt!1148723 () Unit!51972)

(declare-fun Unit!51976 () Unit!51972)

(assert (=> b!3382493 (= lt!1148723 Unit!51976)))

(declare-fun lt!1148741 () List!36991)

(assert (=> b!3382493 (= lt!1148741 (list!13335 (BalanceConc!21863 Empty!11124)))))

(declare-fun lt!1148724 () List!36991)

(assert (=> b!3382493 (= lt!1148724 (Cons!36867 (_1!21366 (v!36498 lt!1148742)) Nil!36867))))

(declare-fun lt!1148732 () List!36991)

(assert (=> b!3382493 (= lt!1148732 (list!13335 (_1!21360 lt!1148731)))))

(declare-fun lt!1148730 () Unit!51972)

(declare-fun lemmaConcatAssociativity!1878 (List!36991 List!36991 List!36991) Unit!51972)

(assert (=> b!3382493 (= lt!1148730 (lemmaConcatAssociativity!1878 lt!1148741 lt!1148724 lt!1148732))))

(declare-fun ++!9013 (List!36991 List!36991) List!36991)

(assert (=> b!3382493 (= (++!9013 (++!9013 lt!1148741 lt!1148724) lt!1148732) (++!9013 lt!1148741 (++!9013 lt!1148724 lt!1148732)))))

(declare-fun lt!1148726 () Unit!51972)

(assert (=> b!3382493 (= lt!1148726 lt!1148730)))

(declare-fun lt!1148736 () List!36989)

(assert (=> b!3382493 (= lt!1148736 (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) (list!13331 (charsOf!3388 (_1!21366 (v!36498 lt!1148742))))))))

(declare-fun lt!1148727 () List!36989)

(assert (=> b!3382493 (= lt!1148727 (list!13331 (_2!21366 (v!36498 lt!1148742))))))

(declare-fun lt!1148740 () List!36991)

(assert (=> b!3382493 (= lt!1148740 (list!13335 (append!932 (BalanceConc!21863 Empty!11124) (_1!21366 (v!36498 lt!1148742)))))))

(declare-fun lt!1148749 () Unit!51972)

(declare-fun lemmaLexThenLexPrefix!493 (LexerInterface!4963 List!36990 List!36989 List!36989 List!36991 List!36991 List!36989) Unit!51972)

(assert (=> b!3382493 (= lt!1148749 (lemmaLexThenLexPrefix!493 thiss!18206 rules!2135 lt!1148736 lt!1148727 lt!1148740 (list!13335 (_1!21360 lt!1148731)) (list!13331 (_2!21360 lt!1148731))))))

(assert (=> b!3382493 (= (lexList!1406 thiss!18206 rules!2135 lt!1148736) (tuple2!36459 lt!1148740 Nil!36865))))

(declare-fun lt!1148729 () Unit!51972)

(assert (=> b!3382493 (= lt!1148729 lt!1148749)))

(assert (=> b!3382493 (= lt!1148748 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (_1!21366 (v!36498 lt!1148742)))))))

(assert (=> b!3382493 (= lt!1148720 (maxPrefixZipperSequence!1121 thiss!18206 rules!2135 lt!1148748))))

(declare-fun c!576000 () Bool)

(assert (=> b!3382493 (= c!576000 ((_ is Some!7396) lt!1148720))))

(assert (=> b!3382493 (= (lexRec!728 thiss!18206 rules!2135 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (_1!21366 (v!36498 lt!1148742))))) e!2099782)))

(declare-fun lt!1148717 () Unit!51972)

(declare-fun Unit!51977 () Unit!51972)

(assert (=> b!3382493 (= lt!1148717 Unit!51977)))

(assert (=> b!3382493 (= lt!1148744 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (_1!21366 (v!36498 lt!1148742)))))))

(declare-fun lt!1148738 () List!36989)

(assert (=> b!3382493 (= lt!1148738 (list!13331 lt!1148744))))

(declare-fun lt!1148725 () List!36989)

(assert (=> b!3382493 (= lt!1148725 (list!13331 (_2!21366 (v!36498 lt!1148742))))))

(declare-fun lt!1148739 () Unit!51972)

(assert (=> b!3382493 (= lt!1148739 (lemmaConcatTwoListThenFSndIsSuffix!575 lt!1148738 lt!1148725))))

(assert (=> b!3382493 (isSuffix!890 lt!1148725 (++!9009 lt!1148738 lt!1148725))))

(declare-fun lt!1148734 () Unit!51972)

(assert (=> b!3382493 (= lt!1148734 lt!1148739)))

(declare-fun b!3382494 () Bool)

(assert (=> b!3382494 (= e!2099784 (tuple2!36453 (BalanceConc!21863 Empty!11124) lt!1148173))))

(assert (= (and d!959538 c!576002) b!3382493))

(assert (= (and d!959538 (not c!576002)) b!3382494))

(assert (= (and b!3382493 c!576001) b!3382491))

(assert (= (and b!3382493 (not c!576001)) b!3382488))

(assert (= (and b!3382493 c!576000) b!3382489))

(assert (= (and b!3382493 (not c!576000)) b!3382492))

(assert (= (and d!959538 res!1368499) b!3382490))

(declare-fun m!3746909 () Bool)

(assert (=> b!3382490 m!3746909))

(declare-fun m!3746911 () Bool)

(assert (=> b!3382490 m!3746911))

(declare-fun m!3746913 () Bool)

(assert (=> b!3382490 m!3746913))

(declare-fun m!3746915 () Bool)

(assert (=> b!3382491 m!3746915))

(declare-fun m!3746917 () Bool)

(assert (=> b!3382491 m!3746917))

(assert (=> b!3382493 m!3745609))

(declare-fun m!3746919 () Bool)

(assert (=> b!3382493 m!3746919))

(declare-fun m!3746921 () Bool)

(assert (=> b!3382493 m!3746921))

(declare-fun m!3746923 () Bool)

(assert (=> b!3382493 m!3746923))

(declare-fun m!3746925 () Bool)

(assert (=> b!3382493 m!3746925))

(assert (=> b!3382493 m!3745609))

(declare-fun m!3746927 () Bool)

(assert (=> b!3382493 m!3746927))

(declare-fun m!3746929 () Bool)

(assert (=> b!3382493 m!3746929))

(assert (=> b!3382493 m!3746911))

(declare-fun m!3746931 () Bool)

(assert (=> b!3382493 m!3746931))

(declare-fun m!3746933 () Bool)

(assert (=> b!3382493 m!3746933))

(declare-fun m!3746935 () Bool)

(assert (=> b!3382493 m!3746935))

(declare-fun m!3746937 () Bool)

(assert (=> b!3382493 m!3746937))

(declare-fun m!3746939 () Bool)

(assert (=> b!3382493 m!3746939))

(declare-fun m!3746941 () Bool)

(assert (=> b!3382493 m!3746941))

(declare-fun m!3746943 () Bool)

(assert (=> b!3382493 m!3746943))

(declare-fun m!3746945 () Bool)

(assert (=> b!3382493 m!3746945))

(assert (=> b!3382493 m!3746933))

(declare-fun m!3746947 () Bool)

(assert (=> b!3382493 m!3746947))

(declare-fun m!3746949 () Bool)

(assert (=> b!3382493 m!3746949))

(declare-fun m!3746951 () Bool)

(assert (=> b!3382493 m!3746951))

(assert (=> b!3382493 m!3746947))

(declare-fun m!3746953 () Bool)

(assert (=> b!3382493 m!3746953))

(declare-fun m!3746955 () Bool)

(assert (=> b!3382493 m!3746955))

(declare-fun m!3746957 () Bool)

(assert (=> b!3382493 m!3746957))

(assert (=> b!3382493 m!3746923))

(declare-fun m!3746959 () Bool)

(assert (=> b!3382493 m!3746959))

(declare-fun m!3746961 () Bool)

(assert (=> b!3382493 m!3746961))

(declare-fun m!3746963 () Bool)

(assert (=> b!3382493 m!3746963))

(declare-fun m!3746965 () Bool)

(assert (=> b!3382493 m!3746965))

(assert (=> b!3382493 m!3746927))

(declare-fun m!3746967 () Bool)

(assert (=> b!3382493 m!3746967))

(assert (=> b!3382493 m!3746929))

(declare-fun m!3746969 () Bool)

(assert (=> b!3382493 m!3746969))

(declare-fun m!3746971 () Bool)

(assert (=> b!3382493 m!3746971))

(assert (=> b!3382493 m!3746933))

(assert (=> b!3382493 m!3746919))

(assert (=> b!3382493 m!3746955))

(assert (=> b!3382493 m!3746959))

(assert (=> b!3382493 m!3746937))

(assert (=> b!3382493 m!3746963))

(assert (=> b!3382493 m!3746971))

(declare-fun m!3746973 () Bool)

(assert (=> b!3382493 m!3746973))

(declare-fun m!3746975 () Bool)

(assert (=> b!3382493 m!3746975))

(assert (=> b!3382493 m!3746937))

(declare-fun m!3746977 () Bool)

(assert (=> b!3382493 m!3746977))

(declare-fun m!3746979 () Bool)

(assert (=> b!3382493 m!3746979))

(declare-fun m!3746981 () Bool)

(assert (=> b!3382489 m!3746981))

(declare-fun m!3746983 () Bool)

(assert (=> b!3382489 m!3746983))

(declare-fun m!3746985 () Bool)

(assert (=> d!959538 m!3746985))

(assert (=> d!959538 m!3745609))

(declare-fun m!3746987 () Bool)

(assert (=> d!959538 m!3746987))

(declare-fun m!3746989 () Bool)

(assert (=> d!959538 m!3746989))

(declare-fun m!3746991 () Bool)

(assert (=> d!959538 m!3746991))

(declare-fun m!3746993 () Bool)

(assert (=> d!959538 m!3746993))

(assert (=> d!959538 m!3745581))

(assert (=> d!959538 m!3746911))

(declare-fun m!3746995 () Bool)

(assert (=> d!959538 m!3746995))

(assert (=> d!959538 m!3746987))

(assert (=> d!959188 d!959538))

(declare-fun d!959594 () Bool)

(assert (=> d!959594 true))

(declare-fun lambda!120501 () Int)

(declare-fun order!19421 () Int)

(declare-fun dynLambda!15342 (Int Int) Int)

(assert (=> d!959594 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15342 order!19421 lambda!120501))))

(declare-fun Forall2!913 (Int) Bool)

(assert (=> d!959594 (= (equivClasses!2142 (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (Forall2!913 lambda!120501))))

(declare-fun bs!554826 () Bool)

(assert (= bs!554826 d!959594))

(declare-fun m!3747007 () Bool)

(assert (=> bs!554826 m!3747007))

(assert (=> b!3381336 d!959594))

(declare-fun d!959602 () Bool)

(assert (=> d!959602 (= (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))) (isBalanced!3355 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(declare-fun bs!554827 () Bool)

(assert (= bs!554827 d!959602))

(declare-fun m!3747009 () Bool)

(assert (=> bs!554827 m!3747009))

(assert (=> tb!180011 d!959602))

(declare-fun d!959606 () Bool)

(assert (=> d!959606 (= (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))) (list!13334 (c!575699 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun bs!554828 () Bool)

(assert (= bs!554828 d!959606))

(declare-fun m!3747011 () Bool)

(assert (=> bs!554828 m!3747011))

(assert (=> b!3381943 d!959606))

(declare-fun d!959610 () Bool)

(declare-fun lt!1148751 () BalanceConc!21860)

(assert (=> d!959610 (= (list!13331 lt!1148751) (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436))))))

(assert (=> d!959610 (= lt!1148751 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))) (value!173619 (_1!21361 (get!11770 lt!1148436)))))))

(assert (=> d!959610 (= (charsOf!3388 (_1!21361 (get!11770 lt!1148436))) lt!1148751)))

(declare-fun b_lambda!96051 () Bool)

(assert (=> (not b_lambda!96051) (not d!959610)))

(declare-fun tb!180119 () Bool)

(declare-fun t!263339 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263339) tb!180119))

(declare-fun b!3382514 () Bool)

(declare-fun e!2099799 () Bool)

(declare-fun tp!1057227 () Bool)

(assert (=> b!3382514 (= e!2099799 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))) (value!173619 (_1!21361 (get!11770 lt!1148436)))))) tp!1057227))))

(declare-fun result!223596 () Bool)

(assert (=> tb!180119 (= result!223596 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))) (value!173619 (_1!21361 (get!11770 lt!1148436))))) e!2099799))))

(assert (= tb!180119 b!3382514))

(declare-fun m!3747013 () Bool)

(assert (=> b!3382514 m!3747013))

(declare-fun m!3747015 () Bool)

(assert (=> tb!180119 m!3747015))

(assert (=> d!959610 t!263339))

(declare-fun b_and!235085 () Bool)

(assert (= b_and!235039 (and (=> t!263339 result!223596) b_and!235085)))

(declare-fun t!263341 () Bool)

(declare-fun tb!180121 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263341) tb!180121))

(declare-fun result!223598 () Bool)

(assert (= result!223598 result!223596))

(assert (=> d!959610 t!263341))

(declare-fun b_and!235087 () Bool)

(assert (= b_and!235043 (and (=> t!263341 result!223598) b_and!235087)))

(declare-fun t!263343 () Bool)

(declare-fun tb!180123 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263343) tb!180123))

(declare-fun result!223600 () Bool)

(assert (= result!223600 result!223596))

(assert (=> d!959610 t!263343))

(declare-fun b_and!235089 () Bool)

(assert (= b_and!235035 (and (=> t!263343 result!223600) b_and!235089)))

(declare-fun t!263345 () Bool)

(declare-fun tb!180125 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263345) tb!180125))

(declare-fun result!223602 () Bool)

(assert (= result!223602 result!223596))

(assert (=> d!959610 t!263345))

(declare-fun b_and!235091 () Bool)

(assert (= b_and!235037 (and (=> t!263345 result!223602) b_and!235091)))

(declare-fun t!263347 () Bool)

(declare-fun tb!180127 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263347) tb!180127))

(declare-fun result!223604 () Bool)

(assert (= result!223604 result!223596))

(assert (=> d!959610 t!263347))

(declare-fun b_and!235093 () Bool)

(assert (= b_and!235041 (and (=> t!263347 result!223604) b_and!235093)))

(declare-fun m!3747017 () Bool)

(assert (=> d!959610 m!3747017))

(declare-fun m!3747019 () Bool)

(assert (=> d!959610 m!3747019))

(assert (=> b!3381943 d!959610))

(declare-fun d!959612 () Bool)

(assert (=> d!959612 (= (get!11770 lt!1148436) (v!36483 lt!1148436))))

(assert (=> b!3381943 d!959612))

(declare-fun bm!244633 () Bool)

(declare-fun call!244638 () Int)

(assert (=> bm!244633 (= call!244638 (size!27901 lt!1148246))))

(declare-fun b!3382533 () Bool)

(declare-fun e!2099813 () Bool)

(declare-fun lt!1148754 () List!36991)

(declare-fun e!2099812 () Int)

(assert (=> b!3382533 (= e!2099813 (= (size!27901 lt!1148754) e!2099812))))

(declare-fun c!576015 () Bool)

(assert (=> b!3382533 (= c!576015 (<= (+ 0 1) 0))))

(declare-fun b!3382534 () Bool)

(declare-fun e!2099810 () List!36991)

(assert (=> b!3382534 (= e!2099810 Nil!36867)))

(declare-fun b!3382536 () Bool)

(declare-fun e!2099811 () Int)

(assert (=> b!3382536 (= e!2099812 e!2099811)))

(declare-fun c!576018 () Bool)

(assert (=> b!3382536 (= c!576018 (>= (+ 0 1) call!244638))))

(declare-fun b!3382537 () Bool)

(declare-fun e!2099814 () List!36991)

(assert (=> b!3382537 (= e!2099814 (drop!1963 (t!263198 lt!1148246) (- (+ 0 1) 1)))))

(declare-fun b!3382538 () Bool)

(assert (=> b!3382538 (= e!2099811 (- call!244638 (+ 0 1)))))

(declare-fun b!3382539 () Bool)

(assert (=> b!3382539 (= e!2099811 0)))

(declare-fun b!3382540 () Bool)

(assert (=> b!3382540 (= e!2099810 e!2099814)))

(declare-fun c!576017 () Bool)

(assert (=> b!3382540 (= c!576017 (<= (+ 0 1) 0))))

(declare-fun b!3382541 () Bool)

(assert (=> b!3382541 (= e!2099814 lt!1148246)))

(declare-fun d!959614 () Bool)

(assert (=> d!959614 e!2099813))

(declare-fun res!1368513 () Bool)

(assert (=> d!959614 (=> (not res!1368513) (not e!2099813))))

(assert (=> d!959614 (= res!1368513 (= ((_ map implies) (content!5083 lt!1148754) (content!5083 lt!1148246)) ((as const (InoxSet Token!10114)) true)))))

(assert (=> d!959614 (= lt!1148754 e!2099810)))

(declare-fun c!576016 () Bool)

(assert (=> d!959614 (= c!576016 ((_ is Nil!36867) lt!1148246))))

(assert (=> d!959614 (= (drop!1963 lt!1148246 (+ 0 1)) lt!1148754)))

(declare-fun b!3382535 () Bool)

(assert (=> b!3382535 (= e!2099812 call!244638)))

(assert (= (and d!959614 c!576016) b!3382534))

(assert (= (and d!959614 (not c!576016)) b!3382540))

(assert (= (and b!3382540 c!576017) b!3382541))

(assert (= (and b!3382540 (not c!576017)) b!3382537))

(assert (= (and d!959614 res!1368513) b!3382533))

(assert (= (and b!3382533 c!576015) b!3382535))

(assert (= (and b!3382533 (not c!576015)) b!3382536))

(assert (= (and b!3382536 c!576018) b!3382539))

(assert (= (and b!3382536 (not c!576018)) b!3382538))

(assert (= (or b!3382535 b!3382536 b!3382538) bm!244633))

(declare-fun m!3747021 () Bool)

(assert (=> bm!244633 m!3747021))

(declare-fun m!3747023 () Bool)

(assert (=> b!3382533 m!3747023))

(declare-fun m!3747025 () Bool)

(assert (=> b!3382537 m!3747025))

(declare-fun m!3747027 () Bool)

(assert (=> d!959614 m!3747027))

(declare-fun m!3747029 () Bool)

(assert (=> d!959614 m!3747029))

(assert (=> b!3381361 d!959614))

(declare-fun d!959616 () Bool)

(assert (=> d!959616 (= (head!7227 (drop!1963 lt!1148248 0)) (h!42287 (drop!1963 lt!1148248 0)))))

(assert (=> b!3381361 d!959616))

(declare-fun d!959618 () Bool)

(declare-fun lt!1148777 () BalanceConc!21860)

(assert (=> d!959618 (= (list!13331 lt!1148777) (printListTailRec!648 thiss!18206 (dropList!1165 lt!1148155 (+ 0 1)) (list!13331 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0))))))))

(declare-fun e!2099816 () BalanceConc!21860)

(assert (=> d!959618 (= lt!1148777 e!2099816)))

(declare-fun c!576019 () Bool)

(assert (=> d!959618 (= c!576019 (>= (+ 0 1) (size!27898 lt!1148155)))))

(declare-fun e!2099815 () Bool)

(assert (=> d!959618 e!2099815))

(declare-fun res!1368514 () Bool)

(assert (=> d!959618 (=> (not res!1368514) (not e!2099815))))

(assert (=> d!959618 (= res!1368514 (>= (+ 0 1) 0))))

(assert (=> d!959618 (= (printTailRec!1458 thiss!18206 lt!1148155 (+ 0 1) (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0)))) lt!1148777)))

(declare-fun b!3382542 () Bool)

(assert (=> b!3382542 (= e!2099815 (<= (+ 0 1) (size!27898 lt!1148155)))))

(declare-fun b!3382543 () Bool)

(assert (=> b!3382543 (= e!2099816 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0))))))

(declare-fun b!3382544 () Bool)

(assert (=> b!3382544 (= e!2099816 (printTailRec!1458 thiss!18206 lt!1148155 (+ 0 1 1) (++!9011 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0))) (charsOf!3388 (apply!8576 lt!1148155 (+ 0 1))))))))

(declare-fun lt!1148776 () List!36991)

(assert (=> b!3382544 (= lt!1148776 (list!13335 lt!1148155))))

(declare-fun lt!1148771 () Unit!51972)

(assert (=> b!3382544 (= lt!1148771 (lemmaDropApply!1123 lt!1148776 (+ 0 1)))))

(assert (=> b!3382544 (= (head!7227 (drop!1963 lt!1148776 (+ 0 1))) (apply!8577 lt!1148776 (+ 0 1)))))

(declare-fun lt!1148775 () Unit!51972)

(assert (=> b!3382544 (= lt!1148775 lt!1148771)))

(declare-fun lt!1148774 () List!36991)

(assert (=> b!3382544 (= lt!1148774 (list!13335 lt!1148155))))

(declare-fun lt!1148772 () Unit!51972)

(assert (=> b!3382544 (= lt!1148772 (lemmaDropTail!1007 lt!1148774 (+ 0 1)))))

(assert (=> b!3382544 (= (tail!5357 (drop!1963 lt!1148774 (+ 0 1))) (drop!1963 lt!1148774 (+ 0 1 1)))))

(declare-fun lt!1148773 () Unit!51972)

(assert (=> b!3382544 (= lt!1148773 lt!1148772)))

(assert (= (and d!959618 res!1368514) b!3382542))

(assert (= (and d!959618 c!576019) b!3382543))

(assert (= (and d!959618 (not c!576019)) b!3382544))

(declare-fun m!3747031 () Bool)

(assert (=> d!959618 m!3747031))

(declare-fun m!3747033 () Bool)

(assert (=> d!959618 m!3747033))

(declare-fun m!3747035 () Bool)

(assert (=> d!959618 m!3747035))

(declare-fun m!3747037 () Bool)

(assert (=> d!959618 m!3747037))

(assert (=> d!959618 m!3745613))

(assert (=> d!959618 m!3747033))

(assert (=> d!959618 m!3745629))

(assert (=> d!959618 m!3747035))

(assert (=> b!3382542 m!3745613))

(declare-fun m!3747039 () Bool)

(assert (=> b!3382544 m!3747039))

(declare-fun m!3747041 () Bool)

(assert (=> b!3382544 m!3747041))

(declare-fun m!3747043 () Bool)

(assert (=> b!3382544 m!3747043))

(declare-fun m!3747045 () Bool)

(assert (=> b!3382544 m!3747045))

(declare-fun m!3747047 () Bool)

(assert (=> b!3382544 m!3747047))

(assert (=> b!3382544 m!3747039))

(assert (=> b!3382544 m!3745625))

(assert (=> b!3382544 m!3745629))

(declare-fun m!3747049 () Bool)

(assert (=> b!3382544 m!3747049))

(declare-fun m!3747051 () Bool)

(assert (=> b!3382544 m!3747051))

(declare-fun m!3747053 () Bool)

(assert (=> b!3382544 m!3747053))

(declare-fun m!3747055 () Bool)

(assert (=> b!3382544 m!3747055))

(declare-fun m!3747057 () Bool)

(assert (=> b!3382544 m!3747057))

(assert (=> b!3382544 m!3747047))

(assert (=> b!3382544 m!3747049))

(assert (=> b!3382544 m!3747055))

(declare-fun m!3747061 () Bool)

(assert (=> b!3382544 m!3747061))

(assert (=> b!3382544 m!3747051))

(declare-fun m!3747067 () Bool)

(assert (=> b!3382544 m!3747067))

(assert (=> b!3381361 d!959618))

(declare-fun d!959620 () Bool)

(assert (=> d!959620 (= (tail!5357 (drop!1963 lt!1148246 0)) (drop!1963 lt!1148246 (+ 0 1)))))

(declare-fun lt!1148788 () Unit!51972)

(declare-fun choose!19580 (List!36991 Int) Unit!51972)

(assert (=> d!959620 (= lt!1148788 (choose!19580 lt!1148246 0))))

(declare-fun e!2099822 () Bool)

(assert (=> d!959620 e!2099822))

(declare-fun res!1368523 () Bool)

(assert (=> d!959620 (=> (not res!1368523) (not e!2099822))))

(assert (=> d!959620 (= res!1368523 (>= 0 0))))

(assert (=> d!959620 (= (lemmaDropTail!1007 lt!1148246 0) lt!1148788)))

(declare-fun b!3382553 () Bool)

(assert (=> b!3382553 (= e!2099822 (< 0 (size!27901 lt!1148246)))))

(assert (= (and d!959620 res!1368523) b!3382553))

(assert (=> d!959620 m!3745633))

(assert (=> d!959620 m!3745633))

(assert (=> d!959620 m!3745635))

(assert (=> d!959620 m!3745631))

(declare-fun m!3747079 () Bool)

(assert (=> d!959620 m!3747079))

(assert (=> b!3382553 m!3747021))

(assert (=> b!3381361 d!959620))

(declare-fun d!959626 () Bool)

(declare-fun lt!1148791 () Token!10114)

(assert (=> d!959626 (contains!6745 lt!1148248 lt!1148791)))

(declare-fun e!2099829 () Token!10114)

(assert (=> d!959626 (= lt!1148791 e!2099829)))

(declare-fun c!576022 () Bool)

(assert (=> d!959626 (= c!576022 (= 0 0))))

(declare-fun e!2099830 () Bool)

(assert (=> d!959626 e!2099830))

(declare-fun res!1368528 () Bool)

(assert (=> d!959626 (=> (not res!1368528) (not e!2099830))))

(assert (=> d!959626 (= res!1368528 (<= 0 0))))

(assert (=> d!959626 (= (apply!8577 lt!1148248 0) lt!1148791)))

(declare-fun b!3382564 () Bool)

(assert (=> b!3382564 (= e!2099830 (< 0 (size!27901 lt!1148248)))))

(declare-fun b!3382565 () Bool)

(assert (=> b!3382565 (= e!2099829 (head!7227 lt!1148248))))

(declare-fun b!3382566 () Bool)

(assert (=> b!3382566 (= e!2099829 (apply!8577 (tail!5357 lt!1148248) (- 0 1)))))

(assert (= (and d!959626 res!1368528) b!3382564))

(assert (= (and d!959626 c!576022) b!3382565))

(assert (= (and d!959626 (not c!576022)) b!3382566))

(declare-fun m!3747083 () Bool)

(assert (=> d!959626 m!3747083))

(declare-fun m!3747085 () Bool)

(assert (=> b!3382564 m!3747085))

(declare-fun m!3747087 () Bool)

(assert (=> b!3382565 m!3747087))

(declare-fun m!3747089 () Bool)

(assert (=> b!3382566 m!3747089))

(assert (=> b!3382566 m!3747089))

(declare-fun m!3747091 () Bool)

(assert (=> b!3382566 m!3747091))

(assert (=> b!3381361 d!959626))

(declare-fun d!959630 () Bool)

(declare-fun lt!1148798 () Token!10114)

(assert (=> d!959630 (= lt!1148798 (apply!8577 (list!13335 lt!1148155) 0))))

(declare-fun apply!8579 (Conc!11124 Int) Token!10114)

(assert (=> d!959630 (= lt!1148798 (apply!8579 (c!575700 lt!1148155) 0))))

(declare-fun e!2099840 () Bool)

(assert (=> d!959630 e!2099840))

(declare-fun res!1368534 () Bool)

(assert (=> d!959630 (=> (not res!1368534) (not e!2099840))))

(assert (=> d!959630 (= res!1368534 (<= 0 0))))

(assert (=> d!959630 (= (apply!8576 lt!1148155 0) lt!1148798)))

(declare-fun b!3382582 () Bool)

(assert (=> b!3382582 (= e!2099840 (< 0 (size!27898 lt!1148155)))))

(assert (= (and d!959630 res!1368534) b!3382582))

(assert (=> d!959630 m!3745625))

(assert (=> d!959630 m!3745625))

(declare-fun m!3747127 () Bool)

(assert (=> d!959630 m!3747127))

(declare-fun m!3747129 () Bool)

(assert (=> d!959630 m!3747129))

(assert (=> b!3382582 m!3745613))

(assert (=> b!3381361 d!959630))

(declare-fun b!3382608 () Bool)

(declare-fun e!2099849 () Bool)

(declare-fun lt!1148810 () BalanceConc!21860)

(assert (=> b!3382608 (= e!2099849 (= (list!13331 lt!1148810) (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) (list!13331 (charsOf!3388 (apply!8576 lt!1148155 0))))))))

(declare-fun b!3382607 () Bool)

(declare-fun res!1368553 () Bool)

(assert (=> b!3382607 (=> (not res!1368553) (not e!2099849))))

(declare-fun height!1654 (Conc!11123) Int)

(declare-fun ++!9014 (Conc!11123 Conc!11123) Conc!11123)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3382607 (= res!1368553 (>= (height!1654 (++!9014 (c!575699 (BalanceConc!21861 Empty!11123)) (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0))))) (max!0 (height!1654 (c!575699 (BalanceConc!21861 Empty!11123))) (height!1654 (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0)))))))))

(declare-fun d!959642 () Bool)

(assert (=> d!959642 e!2099849))

(declare-fun res!1368554 () Bool)

(assert (=> d!959642 (=> (not res!1368554) (not e!2099849))))

(declare-fun appendAssocInst!783 (Conc!11123 Conc!11123) Bool)

(assert (=> d!959642 (= res!1368554 (appendAssocInst!783 (c!575699 (BalanceConc!21861 Empty!11123)) (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0)))))))

(assert (=> d!959642 (= lt!1148810 (BalanceConc!21861 (++!9014 (c!575699 (BalanceConc!21861 Empty!11123)) (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0))))))))

(assert (=> d!959642 (= (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148155 0))) lt!1148810)))

(declare-fun b!3382606 () Bool)

(declare-fun res!1368551 () Bool)

(assert (=> b!3382606 (=> (not res!1368551) (not e!2099849))))

(assert (=> b!3382606 (= res!1368551 (<= (height!1654 (++!9014 (c!575699 (BalanceConc!21861 Empty!11123)) (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0))))) (+ (max!0 (height!1654 (c!575699 (BalanceConc!21861 Empty!11123))) (height!1654 (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0))))) 1)))))

(declare-fun b!3382605 () Bool)

(declare-fun res!1368552 () Bool)

(assert (=> b!3382605 (=> (not res!1368552) (not e!2099849))))

(assert (=> b!3382605 (= res!1368552 (isBalanced!3355 (++!9014 (c!575699 (BalanceConc!21861 Empty!11123)) (c!575699 (charsOf!3388 (apply!8576 lt!1148155 0))))))))

(assert (= (and d!959642 res!1368554) b!3382605))

(assert (= (and b!3382605 res!1368552) b!3382606))

(assert (= (and b!3382606 res!1368551) b!3382607))

(assert (= (and b!3382607 res!1368553) b!3382608))

(declare-fun m!3747177 () Bool)

(assert (=> b!3382607 m!3747177))

(declare-fun m!3747179 () Bool)

(assert (=> b!3382607 m!3747179))

(assert (=> b!3382607 m!3747177))

(assert (=> b!3382607 m!3747179))

(declare-fun m!3747181 () Bool)

(assert (=> b!3382607 m!3747181))

(declare-fun m!3747183 () Bool)

(assert (=> b!3382607 m!3747183))

(assert (=> b!3382607 m!3747183))

(declare-fun m!3747185 () Bool)

(assert (=> b!3382607 m!3747185))

(assert (=> b!3382606 m!3747177))

(assert (=> b!3382606 m!3747179))

(assert (=> b!3382606 m!3747177))

(assert (=> b!3382606 m!3747179))

(assert (=> b!3382606 m!3747181))

(assert (=> b!3382606 m!3747183))

(assert (=> b!3382606 m!3747183))

(assert (=> b!3382606 m!3747185))

(declare-fun m!3747187 () Bool)

(assert (=> d!959642 m!3747187))

(assert (=> d!959642 m!3747183))

(declare-fun m!3747189 () Bool)

(assert (=> b!3382608 m!3747189))

(assert (=> b!3382608 m!3745609))

(assert (=> b!3382608 m!3745627))

(declare-fun m!3747191 () Bool)

(assert (=> b!3382608 m!3747191))

(assert (=> b!3382608 m!3745609))

(assert (=> b!3382608 m!3747191))

(declare-fun m!3747193 () Bool)

(assert (=> b!3382608 m!3747193))

(assert (=> b!3382605 m!3747183))

(assert (=> b!3382605 m!3747183))

(declare-fun m!3747195 () Bool)

(assert (=> b!3382605 m!3747195))

(assert (=> b!3381361 d!959642))

(declare-fun bm!244639 () Bool)

(declare-fun call!244644 () Int)

(assert (=> bm!244639 (= call!244644 (size!27901 lt!1148246))))

(declare-fun b!3382609 () Bool)

(declare-fun e!2099853 () Bool)

(declare-fun lt!1148811 () List!36991)

(declare-fun e!2099852 () Int)

(assert (=> b!3382609 (= e!2099853 (= (size!27901 lt!1148811) e!2099852))))

(declare-fun c!576034 () Bool)

(assert (=> b!3382609 (= c!576034 (<= 0 0))))

(declare-fun b!3382610 () Bool)

(declare-fun e!2099850 () List!36991)

(assert (=> b!3382610 (= e!2099850 Nil!36867)))

(declare-fun b!3382612 () Bool)

(declare-fun e!2099851 () Int)

(assert (=> b!3382612 (= e!2099852 e!2099851)))

(declare-fun c!576037 () Bool)

(assert (=> b!3382612 (= c!576037 (>= 0 call!244644))))

(declare-fun b!3382613 () Bool)

(declare-fun e!2099854 () List!36991)

(assert (=> b!3382613 (= e!2099854 (drop!1963 (t!263198 lt!1148246) (- 0 1)))))

(declare-fun b!3382614 () Bool)

(assert (=> b!3382614 (= e!2099851 (- call!244644 0))))

(declare-fun b!3382615 () Bool)

(assert (=> b!3382615 (= e!2099851 0)))

(declare-fun b!3382616 () Bool)

(assert (=> b!3382616 (= e!2099850 e!2099854)))

(declare-fun c!576036 () Bool)

(assert (=> b!3382616 (= c!576036 (<= 0 0))))

(declare-fun b!3382617 () Bool)

(assert (=> b!3382617 (= e!2099854 lt!1148246)))

(declare-fun d!959660 () Bool)

(assert (=> d!959660 e!2099853))

(declare-fun res!1368555 () Bool)

(assert (=> d!959660 (=> (not res!1368555) (not e!2099853))))

(assert (=> d!959660 (= res!1368555 (= ((_ map implies) (content!5083 lt!1148811) (content!5083 lt!1148246)) ((as const (InoxSet Token!10114)) true)))))

(assert (=> d!959660 (= lt!1148811 e!2099850)))

(declare-fun c!576035 () Bool)

(assert (=> d!959660 (= c!576035 ((_ is Nil!36867) lt!1148246))))

(assert (=> d!959660 (= (drop!1963 lt!1148246 0) lt!1148811)))

(declare-fun b!3382611 () Bool)

(assert (=> b!3382611 (= e!2099852 call!244644)))

(assert (= (and d!959660 c!576035) b!3382610))

(assert (= (and d!959660 (not c!576035)) b!3382616))

(assert (= (and b!3382616 c!576036) b!3382617))

(assert (= (and b!3382616 (not c!576036)) b!3382613))

(assert (= (and d!959660 res!1368555) b!3382609))

(assert (= (and b!3382609 c!576034) b!3382611))

(assert (= (and b!3382609 (not c!576034)) b!3382612))

(assert (= (and b!3382612 c!576037) b!3382615))

(assert (= (and b!3382612 (not c!576037)) b!3382614))

(assert (= (or b!3382611 b!3382612 b!3382614) bm!244639))

(assert (=> bm!244639 m!3747021))

(declare-fun m!3747197 () Bool)

(assert (=> b!3382609 m!3747197))

(declare-fun m!3747199 () Bool)

(assert (=> b!3382613 m!3747199))

(declare-fun m!3747201 () Bool)

(assert (=> d!959660 m!3747201))

(assert (=> d!959660 m!3747029))

(assert (=> b!3381361 d!959660))

(declare-fun d!959662 () Bool)

(assert (=> d!959662 (= (list!13335 lt!1148155) (list!13338 (c!575700 lt!1148155)))))

(declare-fun bs!554837 () Bool)

(assert (= bs!554837 d!959662))

(declare-fun m!3747203 () Bool)

(assert (=> bs!554837 m!3747203))

(assert (=> b!3381361 d!959662))

(declare-fun d!959664 () Bool)

(assert (=> d!959664 (= (head!7227 (drop!1963 lt!1148248 0)) (apply!8577 lt!1148248 0))))

(declare-fun lt!1148814 () Unit!51972)

(declare-fun choose!19582 (List!36991 Int) Unit!51972)

(assert (=> d!959664 (= lt!1148814 (choose!19582 lt!1148248 0))))

(declare-fun e!2099857 () Bool)

(assert (=> d!959664 e!2099857))

(declare-fun res!1368558 () Bool)

(assert (=> d!959664 (=> (not res!1368558) (not e!2099857))))

(assert (=> d!959664 (= res!1368558 (>= 0 0))))

(assert (=> d!959664 (= (lemmaDropApply!1123 lt!1148248 0) lt!1148814)))

(declare-fun b!3382620 () Bool)

(assert (=> b!3382620 (= e!2099857 (< 0 (size!27901 lt!1148248)))))

(assert (= (and d!959664 res!1368558) b!3382620))

(assert (=> d!959664 m!3745615))

(assert (=> d!959664 m!3745615))

(assert (=> d!959664 m!3745617))

(assert (=> d!959664 m!3745621))

(declare-fun m!3747205 () Bool)

(assert (=> d!959664 m!3747205))

(assert (=> b!3382620 m!3747085))

(assert (=> b!3381361 d!959664))

(declare-fun bm!244640 () Bool)

(declare-fun call!244645 () Int)

(assert (=> bm!244640 (= call!244645 (size!27901 lt!1148248))))

(declare-fun b!3382621 () Bool)

(declare-fun e!2099861 () Bool)

(declare-fun lt!1148815 () List!36991)

(declare-fun e!2099860 () Int)

(assert (=> b!3382621 (= e!2099861 (= (size!27901 lt!1148815) e!2099860))))

(declare-fun c!576038 () Bool)

(assert (=> b!3382621 (= c!576038 (<= 0 0))))

(declare-fun b!3382622 () Bool)

(declare-fun e!2099858 () List!36991)

(assert (=> b!3382622 (= e!2099858 Nil!36867)))

(declare-fun b!3382624 () Bool)

(declare-fun e!2099859 () Int)

(assert (=> b!3382624 (= e!2099860 e!2099859)))

(declare-fun c!576041 () Bool)

(assert (=> b!3382624 (= c!576041 (>= 0 call!244645))))

(declare-fun b!3382625 () Bool)

(declare-fun e!2099862 () List!36991)

(assert (=> b!3382625 (= e!2099862 (drop!1963 (t!263198 lt!1148248) (- 0 1)))))

(declare-fun b!3382626 () Bool)

(assert (=> b!3382626 (= e!2099859 (- call!244645 0))))

(declare-fun b!3382627 () Bool)

(assert (=> b!3382627 (= e!2099859 0)))

(declare-fun b!3382628 () Bool)

(assert (=> b!3382628 (= e!2099858 e!2099862)))

(declare-fun c!576040 () Bool)

(assert (=> b!3382628 (= c!576040 (<= 0 0))))

(declare-fun b!3382629 () Bool)

(assert (=> b!3382629 (= e!2099862 lt!1148248)))

(declare-fun d!959666 () Bool)

(assert (=> d!959666 e!2099861))

(declare-fun res!1368559 () Bool)

(assert (=> d!959666 (=> (not res!1368559) (not e!2099861))))

(assert (=> d!959666 (= res!1368559 (= ((_ map implies) (content!5083 lt!1148815) (content!5083 lt!1148248)) ((as const (InoxSet Token!10114)) true)))))

(assert (=> d!959666 (= lt!1148815 e!2099858)))

(declare-fun c!576039 () Bool)

(assert (=> d!959666 (= c!576039 ((_ is Nil!36867) lt!1148248))))

(assert (=> d!959666 (= (drop!1963 lt!1148248 0) lt!1148815)))

(declare-fun b!3382623 () Bool)

(assert (=> b!3382623 (= e!2099860 call!244645)))

(assert (= (and d!959666 c!576039) b!3382622))

(assert (= (and d!959666 (not c!576039)) b!3382628))

(assert (= (and b!3382628 c!576040) b!3382629))

(assert (= (and b!3382628 (not c!576040)) b!3382625))

(assert (= (and d!959666 res!1368559) b!3382621))

(assert (= (and b!3382621 c!576038) b!3382623))

(assert (= (and b!3382621 (not c!576038)) b!3382624))

(assert (= (and b!3382624 c!576041) b!3382627))

(assert (= (and b!3382624 (not c!576041)) b!3382626))

(assert (= (or b!3382623 b!3382624 b!3382626) bm!244640))

(assert (=> bm!244640 m!3747085))

(declare-fun m!3747207 () Bool)

(assert (=> b!3382621 m!3747207))

(declare-fun m!3747209 () Bool)

(assert (=> b!3382625 m!3747209))

(declare-fun m!3747211 () Bool)

(assert (=> d!959666 m!3747211))

(declare-fun m!3747213 () Bool)

(assert (=> d!959666 m!3747213))

(assert (=> b!3381361 d!959666))

(declare-fun d!959668 () Bool)

(assert (=> d!959668 (= (tail!5357 (drop!1963 lt!1148246 0)) (t!263198 (drop!1963 lt!1148246 0)))))

(assert (=> b!3381361 d!959668))

(declare-fun d!959670 () Bool)

(declare-fun lt!1148816 () BalanceConc!21860)

(assert (=> d!959670 (= (list!13331 lt!1148816) (originalCharacters!6088 (apply!8576 lt!1148155 0)))))

(assert (=> d!959670 (= lt!1148816 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0)))) (value!173619 (apply!8576 lt!1148155 0))))))

(assert (=> d!959670 (= (charsOf!3388 (apply!8576 lt!1148155 0)) lt!1148816)))

(declare-fun b_lambda!96053 () Bool)

(assert (=> (not b_lambda!96053) (not d!959670)))

(declare-fun t!263349 () Bool)

(declare-fun tb!180129 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263349) tb!180129))

(declare-fun b!3382630 () Bool)

(declare-fun e!2099863 () Bool)

(declare-fun tp!1057228 () Bool)

(assert (=> b!3382630 (= e!2099863 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0)))) (value!173619 (apply!8576 lt!1148155 0))))) tp!1057228))))

(declare-fun result!223606 () Bool)

(assert (=> tb!180129 (= result!223606 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0)))) (value!173619 (apply!8576 lt!1148155 0)))) e!2099863))))

(assert (= tb!180129 b!3382630))

(declare-fun m!3747215 () Bool)

(assert (=> b!3382630 m!3747215))

(declare-fun m!3747217 () Bool)

(assert (=> tb!180129 m!3747217))

(assert (=> d!959670 t!263349))

(declare-fun b_and!235095 () Bool)

(assert (= b_and!235089 (and (=> t!263349 result!223606) b_and!235095)))

(declare-fun t!263351 () Bool)

(declare-fun tb!180131 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263351) tb!180131))

(declare-fun result!223608 () Bool)

(assert (= result!223608 result!223606))

(assert (=> d!959670 t!263351))

(declare-fun b_and!235097 () Bool)

(assert (= b_and!235091 (and (=> t!263351 result!223608) b_and!235097)))

(declare-fun t!263353 () Bool)

(declare-fun tb!180133 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263353) tb!180133))

(declare-fun result!223610 () Bool)

(assert (= result!223610 result!223606))

(assert (=> d!959670 t!263353))

(declare-fun b_and!235099 () Bool)

(assert (= b_and!235087 (and (=> t!263353 result!223610) b_and!235099)))

(declare-fun t!263355 () Bool)

(declare-fun tb!180135 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263355) tb!180135))

(declare-fun result!223612 () Bool)

(assert (= result!223612 result!223606))

(assert (=> d!959670 t!263355))

(declare-fun b_and!235101 () Bool)

(assert (= b_and!235093 (and (=> t!263355 result!223612) b_and!235101)))

(declare-fun t!263357 () Bool)

(declare-fun tb!180137 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263357) tb!180137))

(declare-fun result!223614 () Bool)

(assert (= result!223614 result!223606))

(assert (=> d!959670 t!263357))

(declare-fun b_and!235103 () Bool)

(assert (= b_and!235085 (and (=> t!263357 result!223614) b_and!235103)))

(declare-fun m!3747219 () Bool)

(assert (=> d!959670 m!3747219))

(declare-fun m!3747221 () Bool)

(assert (=> d!959670 m!3747221))

(assert (=> b!3381361 d!959670))

(declare-fun d!959672 () Bool)

(declare-fun charsToBigInt!0 (List!36988 Int) Int)

(assert (=> d!959672 (= (inv!15 (value!173619 separatorToken!241)) (= (charsToBigInt!0 (text!39677 (value!173619 separatorToken!241)) 0) (value!173614 (value!173619 separatorToken!241))))))

(declare-fun bs!554838 () Bool)

(assert (= bs!554838 d!959672))

(declare-fun m!3747223 () Bool)

(assert (=> bs!554838 m!3747223))

(assert (=> b!3381546 d!959672))

(declare-fun bs!554846 () Bool)

(declare-fun d!959674 () Bool)

(assert (= bs!554846 (and d!959674 b!3381221)))

(declare-fun lambda!120507 () Int)

(assert (=> bs!554846 (not (= lambda!120507 lambda!120485))))

(declare-fun bs!554847 () Bool)

(assert (= bs!554847 (and d!959674 d!959280)))

(assert (=> bs!554847 (= lambda!120507 lambda!120495)))

(declare-fun b!3382729 () Bool)

(declare-fun e!2099932 () Bool)

(assert (=> b!3382729 (= e!2099932 true)))

(declare-fun b!3382728 () Bool)

(declare-fun e!2099931 () Bool)

(assert (=> b!3382728 (= e!2099931 e!2099932)))

(declare-fun b!3382727 () Bool)

(declare-fun e!2099930 () Bool)

(assert (=> b!3382727 (= e!2099930 e!2099931)))

(assert (=> d!959674 e!2099930))

(assert (= b!3382728 b!3382729))

(assert (= b!3382727 b!3382728))

(assert (= (and d!959674 ((_ is Cons!36866) rules!2135)) b!3382727))

(assert (=> b!3382729 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15338 order!19415 lambda!120507))))

(assert (=> b!3382729 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15338 order!19415 lambda!120507))))

(assert (=> d!959674 true))

(declare-fun lt!1148838 () Bool)

(assert (=> d!959674 (= lt!1148838 (forall!7757 (list!13335 lt!1148177) lambda!120507))))

(declare-fun e!2099929 () Bool)

(assert (=> d!959674 (= lt!1148838 e!2099929)))

(declare-fun res!1368604 () Bool)

(assert (=> d!959674 (=> res!1368604 e!2099929)))

(assert (=> d!959674 (= res!1368604 (not ((_ is Cons!36867) (list!13335 lt!1148177))))))

(assert (=> d!959674 (not (isEmpty!21103 rules!2135))))

(assert (=> d!959674 (= (rulesProduceEachTokenIndividuallyList!1815 thiss!18206 rules!2135 (list!13335 lt!1148177)) lt!1148838)))

(declare-fun b!3382725 () Bool)

(declare-fun e!2099928 () Bool)

(assert (=> b!3382725 (= e!2099929 e!2099928)))

(declare-fun res!1368605 () Bool)

(assert (=> b!3382725 (=> (not res!1368605) (not e!2099928))))

(assert (=> b!3382725 (= res!1368605 (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 (list!13335 lt!1148177))))))

(declare-fun b!3382726 () Bool)

(assert (=> b!3382726 (= e!2099928 (rulesProduceEachTokenIndividuallyList!1815 thiss!18206 rules!2135 (t!263198 (list!13335 lt!1148177))))))

(assert (= (and d!959674 (not res!1368604)) b!3382725))

(assert (= (and b!3382725 res!1368605) b!3382726))

(assert (=> d!959674 m!3746117))

(declare-fun m!3747329 () Bool)

(assert (=> d!959674 m!3747329))

(assert (=> d!959674 m!3745405))

(declare-fun m!3747331 () Bool)

(assert (=> b!3382725 m!3747331))

(declare-fun m!3747333 () Bool)

(assert (=> b!3382726 m!3747333))

(assert (=> b!3381796 d!959674))

(declare-fun d!959720 () Bool)

(assert (=> d!959720 (= (list!13335 lt!1148177) (list!13338 (c!575700 lt!1148177)))))

(declare-fun bs!554848 () Bool)

(assert (= bs!554848 d!959720))

(declare-fun m!3747335 () Bool)

(assert (=> bs!554848 m!3747335))

(assert (=> b!3381796 d!959720))

(declare-fun b!3382730 () Bool)

(declare-fun res!1368612 () Bool)

(declare-fun e!2099937 () Bool)

(assert (=> b!3382730 (=> res!1368612 e!2099937)))

(assert (=> b!3382730 (= res!1368612 (not (isEmpty!21105 (tail!5355 (tail!5355 lt!1148159)))))))

(declare-fun b!3382731 () Bool)

(declare-fun res!1368606 () Bool)

(declare-fun e!2099939 () Bool)

(assert (=> b!3382731 (=> res!1368606 e!2099939)))

(declare-fun e!2099936 () Bool)

(assert (=> b!3382731 (= res!1368606 e!2099936)))

(declare-fun res!1368613 () Bool)

(assert (=> b!3382731 (=> (not res!1368613) (not e!2099936))))

(declare-fun lt!1148839 () Bool)

(assert (=> b!3382731 (= res!1368613 lt!1148839)))

(declare-fun b!3382732 () Bool)

(declare-fun e!2099933 () Bool)

(declare-fun call!244663 () Bool)

(assert (=> b!3382732 (= e!2099933 (= lt!1148839 call!244663))))

(declare-fun d!959722 () Bool)

(assert (=> d!959722 e!2099933))

(declare-fun c!576069 () Bool)

(assert (=> d!959722 (= c!576069 ((_ is EmptyExpr!10133) (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159))))))

(declare-fun e!2099935 () Bool)

(assert (=> d!959722 (= lt!1148839 e!2099935)))

(declare-fun c!576068 () Bool)

(assert (=> d!959722 (= c!576068 (isEmpty!21105 (tail!5355 lt!1148159)))))

(assert (=> d!959722 (validRegex!4607 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)))))

(assert (=> d!959722 (= (matchR!4725 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)) (tail!5355 lt!1148159)) lt!1148839)))

(declare-fun b!3382733 () Bool)

(declare-fun res!1368611 () Bool)

(assert (=> b!3382733 (=> res!1368611 e!2099939)))

(assert (=> b!3382733 (= res!1368611 (not ((_ is ElementMatch!10133) (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)))))))

(declare-fun e!2099934 () Bool)

(assert (=> b!3382733 (= e!2099934 e!2099939)))

(declare-fun b!3382734 () Bool)

(assert (=> b!3382734 (= e!2099935 (nullable!3451 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159))))))

(declare-fun b!3382735 () Bool)

(declare-fun res!1368608 () Bool)

(assert (=> b!3382735 (=> (not res!1368608) (not e!2099936))))

(assert (=> b!3382735 (= res!1368608 (isEmpty!21105 (tail!5355 (tail!5355 lt!1148159))))))

(declare-fun bm!244658 () Bool)

(assert (=> bm!244658 (= call!244663 (isEmpty!21105 (tail!5355 lt!1148159)))))

(declare-fun b!3382736 () Bool)

(assert (=> b!3382736 (= e!2099935 (matchR!4725 (derivativeStep!3004 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)) (head!7225 (tail!5355 lt!1148159))) (tail!5355 (tail!5355 lt!1148159))))))

(declare-fun b!3382737 () Bool)

(assert (=> b!3382737 (= e!2099934 (not lt!1148839))))

(declare-fun b!3382738 () Bool)

(declare-fun e!2099938 () Bool)

(assert (=> b!3382738 (= e!2099939 e!2099938)))

(declare-fun res!1368607 () Bool)

(assert (=> b!3382738 (=> (not res!1368607) (not e!2099938))))

(assert (=> b!3382738 (= res!1368607 (not lt!1148839))))

(declare-fun b!3382739 () Bool)

(assert (=> b!3382739 (= e!2099938 e!2099937)))

(declare-fun res!1368610 () Bool)

(assert (=> b!3382739 (=> res!1368610 e!2099937)))

(assert (=> b!3382739 (= res!1368610 call!244663)))

(declare-fun b!3382740 () Bool)

(assert (=> b!3382740 (= e!2099936 (= (head!7225 (tail!5355 lt!1148159)) (c!575698 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)))))))

(declare-fun b!3382741 () Bool)

(assert (=> b!3382741 (= e!2099937 (not (= (head!7225 (tail!5355 lt!1148159)) (c!575698 (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159))))))))

(declare-fun b!3382742 () Bool)

(declare-fun res!1368609 () Bool)

(assert (=> b!3382742 (=> (not res!1368609) (not e!2099936))))

(assert (=> b!3382742 (= res!1368609 (not call!244663))))

(declare-fun b!3382743 () Bool)

(assert (=> b!3382743 (= e!2099933 e!2099934)))

(declare-fun c!576067 () Bool)

(assert (=> b!3382743 (= c!576067 ((_ is EmptyLang!10133) (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159))))))

(assert (= (and d!959722 c!576068) b!3382734))

(assert (= (and d!959722 (not c!576068)) b!3382736))

(assert (= (and d!959722 c!576069) b!3382732))

(assert (= (and d!959722 (not c!576069)) b!3382743))

(assert (= (and b!3382743 c!576067) b!3382737))

(assert (= (and b!3382743 (not c!576067)) b!3382733))

(assert (= (and b!3382733 (not res!1368611)) b!3382731))

(assert (= (and b!3382731 res!1368613) b!3382742))

(assert (= (and b!3382742 res!1368609) b!3382735))

(assert (= (and b!3382735 res!1368608) b!3382740))

(assert (= (and b!3382731 (not res!1368606)) b!3382738))

(assert (= (and b!3382738 res!1368607) b!3382739))

(assert (= (and b!3382739 (not res!1368610)) b!3382730))

(assert (= (and b!3382730 (not res!1368612)) b!3382741))

(assert (= (or b!3382732 b!3382739 b!3382742) bm!244658))

(assert (=> b!3382734 m!3745533))

(declare-fun m!3747337 () Bool)

(assert (=> b!3382734 m!3747337))

(assert (=> bm!244658 m!3745527))

(assert (=> bm!244658 m!3745529))

(assert (=> d!959722 m!3745527))

(assert (=> d!959722 m!3745529))

(assert (=> d!959722 m!3745533))

(declare-fun m!3747339 () Bool)

(assert (=> d!959722 m!3747339))

(assert (=> b!3382735 m!3745527))

(declare-fun m!3747341 () Bool)

(assert (=> b!3382735 m!3747341))

(assert (=> b!3382735 m!3747341))

(declare-fun m!3747343 () Bool)

(assert (=> b!3382735 m!3747343))

(assert (=> b!3382736 m!3745527))

(declare-fun m!3747345 () Bool)

(assert (=> b!3382736 m!3747345))

(assert (=> b!3382736 m!3745533))

(assert (=> b!3382736 m!3747345))

(declare-fun m!3747347 () Bool)

(assert (=> b!3382736 m!3747347))

(assert (=> b!3382736 m!3745527))

(assert (=> b!3382736 m!3747341))

(assert (=> b!3382736 m!3747347))

(assert (=> b!3382736 m!3747341))

(declare-fun m!3747349 () Bool)

(assert (=> b!3382736 m!3747349))

(assert (=> b!3382730 m!3745527))

(assert (=> b!3382730 m!3747341))

(assert (=> b!3382730 m!3747341))

(assert (=> b!3382730 m!3747343))

(assert (=> b!3382740 m!3745527))

(assert (=> b!3382740 m!3747345))

(assert (=> b!3382741 m!3745527))

(assert (=> b!3382741 m!3747345))

(assert (=> b!3381311 d!959722))

(declare-fun b!3382744 () Bool)

(declare-fun e!2099943 () Regex!10133)

(declare-fun call!244667 () Regex!10133)

(assert (=> b!3382744 (= e!2099943 (Union!10133 (Concat!15737 call!244667 (regTwo!20778 (regex!5374 lt!1148170))) EmptyLang!10133))))

(declare-fun b!3382745 () Bool)

(declare-fun e!2099944 () Regex!10133)

(declare-fun e!2099940 () Regex!10133)

(assert (=> b!3382745 (= e!2099944 e!2099940)))

(declare-fun c!576072 () Bool)

(assert (=> b!3382745 (= c!576072 ((_ is ElementMatch!10133) (regex!5374 lt!1148170)))))

(declare-fun bm!244659 () Bool)

(declare-fun call!244664 () Regex!10133)

(assert (=> bm!244659 (= call!244667 call!244664)))

(declare-fun b!3382746 () Bool)

(declare-fun e!2099942 () Regex!10133)

(declare-fun e!2099941 () Regex!10133)

(assert (=> b!3382746 (= e!2099942 e!2099941)))

(declare-fun c!576073 () Bool)

(assert (=> b!3382746 (= c!576073 ((_ is Star!10133) (regex!5374 lt!1148170)))))

(declare-fun d!959724 () Bool)

(declare-fun lt!1148840 () Regex!10133)

(assert (=> d!959724 (validRegex!4607 lt!1148840)))

(assert (=> d!959724 (= lt!1148840 e!2099944)))

(declare-fun c!576074 () Bool)

(assert (=> d!959724 (= c!576074 (or ((_ is EmptyExpr!10133) (regex!5374 lt!1148170)) ((_ is EmptyLang!10133) (regex!5374 lt!1148170))))))

(assert (=> d!959724 (validRegex!4607 (regex!5374 lt!1148170))))

(assert (=> d!959724 (= (derivativeStep!3004 (regex!5374 lt!1148170) (head!7225 lt!1148159)) lt!1148840)))

(declare-fun c!576071 () Bool)

(declare-fun bm!244660 () Bool)

(declare-fun call!244666 () Regex!10133)

(assert (=> bm!244660 (= call!244666 (derivativeStep!3004 (ite c!576071 (regOne!20779 (regex!5374 lt!1148170)) (ite c!576073 (reg!10462 (regex!5374 lt!1148170)) (regOne!20778 (regex!5374 lt!1148170)))) (head!7225 lt!1148159)))))

(declare-fun b!3382747 () Bool)

(declare-fun call!244665 () Regex!10133)

(assert (=> b!3382747 (= e!2099943 (Union!10133 (Concat!15737 call!244667 (regTwo!20778 (regex!5374 lt!1148170))) call!244665))))

(declare-fun bm!244661 () Bool)

(assert (=> bm!244661 (= call!244664 call!244666)))

(declare-fun b!3382748 () Bool)

(declare-fun c!576070 () Bool)

(assert (=> b!3382748 (= c!576070 (nullable!3451 (regOne!20778 (regex!5374 lt!1148170))))))

(assert (=> b!3382748 (= e!2099941 e!2099943)))

(declare-fun b!3382749 () Bool)

(assert (=> b!3382749 (= c!576071 ((_ is Union!10133) (regex!5374 lt!1148170)))))

(assert (=> b!3382749 (= e!2099940 e!2099942)))

(declare-fun b!3382750 () Bool)

(assert (=> b!3382750 (= e!2099942 (Union!10133 call!244666 call!244665))))

(declare-fun b!3382751 () Bool)

(assert (=> b!3382751 (= e!2099944 EmptyLang!10133)))

(declare-fun b!3382752 () Bool)

(assert (=> b!3382752 (= e!2099940 (ite (= (head!7225 lt!1148159) (c!575698 (regex!5374 lt!1148170))) EmptyExpr!10133 EmptyLang!10133))))

(declare-fun b!3382753 () Bool)

(assert (=> b!3382753 (= e!2099941 (Concat!15737 call!244664 (regex!5374 lt!1148170)))))

(declare-fun bm!244662 () Bool)

(assert (=> bm!244662 (= call!244665 (derivativeStep!3004 (ite c!576071 (regTwo!20779 (regex!5374 lt!1148170)) (regTwo!20778 (regex!5374 lt!1148170))) (head!7225 lt!1148159)))))

(assert (= (and d!959724 c!576074) b!3382751))

(assert (= (and d!959724 (not c!576074)) b!3382745))

(assert (= (and b!3382745 c!576072) b!3382752))

(assert (= (and b!3382745 (not c!576072)) b!3382749))

(assert (= (and b!3382749 c!576071) b!3382750))

(assert (= (and b!3382749 (not c!576071)) b!3382746))

(assert (= (and b!3382746 c!576073) b!3382753))

(assert (= (and b!3382746 (not c!576073)) b!3382748))

(assert (= (and b!3382748 c!576070) b!3382747))

(assert (= (and b!3382748 (not c!576070)) b!3382744))

(assert (= (or b!3382747 b!3382744) bm!244659))

(assert (= (or b!3382753 bm!244659) bm!244661))

(assert (= (or b!3382750 bm!244661) bm!244660))

(assert (= (or b!3382750 b!3382747) bm!244662))

(declare-fun m!3747351 () Bool)

(assert (=> d!959724 m!3747351))

(assert (=> d!959724 m!3745525))

(assert (=> bm!244660 m!3745531))

(declare-fun m!3747353 () Bool)

(assert (=> bm!244660 m!3747353))

(declare-fun m!3747355 () Bool)

(assert (=> b!3382748 m!3747355))

(assert (=> bm!244662 m!3745531))

(declare-fun m!3747357 () Bool)

(assert (=> bm!244662 m!3747357))

(assert (=> b!3381311 d!959724))

(declare-fun d!959726 () Bool)

(assert (=> d!959726 (= (head!7225 lt!1148159) (h!42285 lt!1148159))))

(assert (=> b!3381311 d!959726))

(declare-fun d!959728 () Bool)

(assert (=> d!959728 (= (tail!5355 lt!1148159) (t!263196 lt!1148159))))

(assert (=> b!3381311 d!959728))

(declare-fun bm!244663 () Bool)

(declare-fun call!244669 () List!36989)

(declare-fun call!244671 () List!36989)

(assert (=> bm!244663 (= call!244669 call!244671)))

(declare-fun call!244668 () List!36989)

(declare-fun call!244670 () List!36989)

(declare-fun c!576075 () Bool)

(declare-fun bm!244664 () Bool)

(assert (=> bm!244664 (= call!244668 (++!9009 (ite c!576075 call!244670 call!244669) (ite c!576075 call!244669 call!244670)))))

(declare-fun c!576076 () Bool)

(declare-fun bm!244665 () Bool)

(assert (=> bm!244665 (= call!244671 (usedCharacters!630 (ite c!576076 (reg!10462 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) (ite c!576075 (regTwo!20779 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) (regOne!20778 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))))

(declare-fun b!3382754 () Bool)

(declare-fun e!2099948 () List!36989)

(assert (=> b!3382754 (= e!2099948 call!244668)))

(declare-fun d!959730 () Bool)

(declare-fun c!576077 () Bool)

(assert (=> d!959730 (= c!576077 (or ((_ is EmptyExpr!10133) (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) ((_ is EmptyLang!10133) (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(declare-fun e!2099947 () List!36989)

(assert (=> d!959730 (= (usedCharacters!630 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) e!2099947)))

(declare-fun bm!244666 () Bool)

(assert (=> bm!244666 (= call!244670 (usedCharacters!630 (ite c!576075 (regOne!20779 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) (regTwo!20778 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))))

(declare-fun b!3382755 () Bool)

(assert (=> b!3382755 (= e!2099947 Nil!36865)))

(declare-fun b!3382756 () Bool)

(declare-fun e!2099946 () List!36989)

(assert (=> b!3382756 (= e!2099946 e!2099948)))

(assert (=> b!3382756 (= c!576075 ((_ is Union!10133) (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3382757 () Bool)

(declare-fun e!2099945 () List!36989)

(assert (=> b!3382757 (= e!2099945 (Cons!36865 (c!575698 (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) Nil!36865))))

(declare-fun b!3382758 () Bool)

(assert (=> b!3382758 (= e!2099948 call!244668)))

(declare-fun b!3382759 () Bool)

(assert (=> b!3382759 (= e!2099946 call!244671)))

(declare-fun b!3382760 () Bool)

(assert (=> b!3382760 (= c!576076 ((_ is Star!10133) (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(assert (=> b!3382760 (= e!2099945 e!2099946)))

(declare-fun b!3382761 () Bool)

(assert (=> b!3382761 (= e!2099947 e!2099945)))

(declare-fun c!576078 () Bool)

(assert (=> b!3382761 (= c!576078 ((_ is ElementMatch!10133) (ite c!575769 (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(assert (= (and d!959730 c!576077) b!3382755))

(assert (= (and d!959730 (not c!576077)) b!3382761))

(assert (= (and b!3382761 c!576078) b!3382757))

(assert (= (and b!3382761 (not c!576078)) b!3382760))

(assert (= (and b!3382760 c!576076) b!3382759))

(assert (= (and b!3382760 (not c!576076)) b!3382756))

(assert (= (and b!3382756 c!576075) b!3382758))

(assert (= (and b!3382756 (not c!576075)) b!3382754))

(assert (= (or b!3382758 b!3382754) bm!244663))

(assert (= (or b!3382758 b!3382754) bm!244666))

(assert (= (or b!3382758 b!3382754) bm!244664))

(assert (= (or b!3382759 bm!244663) bm!244665))

(declare-fun m!3747359 () Bool)

(assert (=> bm!244664 m!3747359))

(declare-fun m!3747361 () Bool)

(assert (=> bm!244665 m!3747361))

(declare-fun m!3747363 () Bool)

(assert (=> bm!244666 m!3747363))

(assert (=> bm!244535 d!959730))

(declare-fun d!959732 () Bool)

(assert (=> d!959732 (= (inv!15 (value!173619 (h!42287 tokens!494))) (= (charsToBigInt!0 (text!39677 (value!173619 (h!42287 tokens!494))) 0) (value!173614 (value!173619 (h!42287 tokens!494)))))))

(declare-fun bs!554849 () Bool)

(assert (= bs!554849 d!959732))

(declare-fun m!3747365 () Bool)

(assert (=> bs!554849 m!3747365))

(assert (=> b!3381984 d!959732))

(declare-fun bs!554850 () Bool)

(declare-fun d!959734 () Bool)

(assert (= bs!554850 (and d!959734 d!959594)))

(declare-fun lambda!120508 () Int)

(assert (=> bs!554850 (= (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (= lambda!120508 lambda!120501))))

(assert (=> d!959734 true))

(assert (=> d!959734 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (dynLambda!15342 order!19421 lambda!120508))))

(assert (=> d!959734 (= (equivClasses!2142 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (Forall2!913 lambda!120508))))

(declare-fun bs!554851 () Bool)

(assert (= bs!554851 d!959734))

(declare-fun m!3747367 () Bool)

(assert (=> bs!554851 m!3747367))

(assert (=> b!3381332 d!959734))

(declare-fun e!2099949 () List!36989)

(declare-fun b!3382762 () Bool)

(assert (=> b!3382762 (= e!2099949 (ite c!575747 call!244533 call!244534))))

(declare-fun d!959736 () Bool)

(declare-fun e!2099950 () Bool)

(assert (=> d!959736 e!2099950))

(declare-fun res!1368614 () Bool)

(assert (=> d!959736 (=> (not res!1368614) (not e!2099950))))

(declare-fun lt!1148841 () List!36989)

(assert (=> d!959736 (= res!1368614 (= (content!5081 lt!1148841) ((_ map or) (content!5081 (ite c!575747 call!244534 call!244533)) (content!5081 (ite c!575747 call!244533 call!244534)))))))

(assert (=> d!959736 (= lt!1148841 e!2099949)))

(declare-fun c!576079 () Bool)

(assert (=> d!959736 (= c!576079 ((_ is Nil!36865) (ite c!575747 call!244534 call!244533)))))

(assert (=> d!959736 (= (++!9009 (ite c!575747 call!244534 call!244533) (ite c!575747 call!244533 call!244534)) lt!1148841)))

(declare-fun b!3382765 () Bool)

(assert (=> b!3382765 (= e!2099950 (or (not (= (ite c!575747 call!244533 call!244534) Nil!36865)) (= lt!1148841 (ite c!575747 call!244534 call!244533))))))

(declare-fun b!3382764 () Bool)

(declare-fun res!1368615 () Bool)

(assert (=> b!3382764 (=> (not res!1368615) (not e!2099950))))

(assert (=> b!3382764 (= res!1368615 (= (size!27895 lt!1148841) (+ (size!27895 (ite c!575747 call!244534 call!244533)) (size!27895 (ite c!575747 call!244533 call!244534)))))))

(declare-fun b!3382763 () Bool)

(assert (=> b!3382763 (= e!2099949 (Cons!36865 (h!42285 (ite c!575747 call!244534 call!244533)) (++!9009 (t!263196 (ite c!575747 call!244534 call!244533)) (ite c!575747 call!244533 call!244534))))))

(assert (= (and d!959736 c!576079) b!3382762))

(assert (= (and d!959736 (not c!576079)) b!3382763))

(assert (= (and d!959736 res!1368614) b!3382764))

(assert (= (and b!3382764 res!1368615) b!3382765))

(declare-fun m!3747369 () Bool)

(assert (=> d!959736 m!3747369))

(declare-fun m!3747371 () Bool)

(assert (=> d!959736 m!3747371))

(declare-fun m!3747373 () Bool)

(assert (=> d!959736 m!3747373))

(declare-fun m!3747375 () Bool)

(assert (=> b!3382764 m!3747375))

(declare-fun m!3747377 () Bool)

(assert (=> b!3382764 m!3747377))

(declare-fun m!3747379 () Bool)

(assert (=> b!3382764 m!3747379))

(declare-fun m!3747381 () Bool)

(assert (=> b!3382763 m!3747381))

(assert (=> bm!244528 d!959736))

(declare-fun d!959738 () Bool)

(declare-fun lt!1148842 () Bool)

(assert (=> d!959738 (= lt!1148842 (select (content!5081 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) lt!1148163))))

(declare-fun e!2099952 () Bool)

(assert (=> d!959738 (= lt!1148842 e!2099952)))

(declare-fun res!1368617 () Bool)

(assert (=> d!959738 (=> (not res!1368617) (not e!2099952))))

(assert (=> d!959738 (= res!1368617 ((_ is Cons!36865) (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(assert (=> d!959738 (= (contains!6743 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) lt!1148163) lt!1148842)))

(declare-fun b!3382766 () Bool)

(declare-fun e!2099951 () Bool)

(assert (=> b!3382766 (= e!2099952 e!2099951)))

(declare-fun res!1368616 () Bool)

(assert (=> b!3382766 (=> res!1368616 e!2099951)))

(assert (=> b!3382766 (= res!1368616 (= (h!42285 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) lt!1148163))))

(declare-fun b!3382767 () Bool)

(assert (=> b!3382767 (= e!2099951 (contains!6743 (t!263196 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) lt!1148163))))

(assert (= (and d!959738 res!1368617) b!3382766))

(assert (= (and b!3382766 (not res!1368616)) b!3382767))

(declare-fun m!3747383 () Bool)

(assert (=> d!959738 m!3747383))

(declare-fun m!3747385 () Bool)

(assert (=> d!959738 m!3747385))

(declare-fun m!3747387 () Bool)

(assert (=> b!3382767 m!3747387))

(assert (=> b!3381559 d!959738))

(declare-fun d!959740 () Bool)

(assert (=> d!959740 (= (isEmpty!21105 lt!1148157) ((_ is Nil!36865) lt!1148157))))

(assert (=> bm!244563 d!959740))

(assert (=> b!3381315 d!959726))

(declare-fun d!959742 () Bool)

(assert (=> d!959742 (= (isEmpty!21114 lt!1148436) (not ((_ is Some!7395) lt!1148436)))))

(assert (=> d!959374 d!959742))

(declare-fun b!3382778 () Bool)

(declare-fun e!2099960 () Bool)

(assert (=> b!3382778 (= e!2099960 (isPrefix!2824 (tail!5355 lt!1148159) (tail!5355 lt!1148159)))))

(declare-fun d!959744 () Bool)

(declare-fun e!2099961 () Bool)

(assert (=> d!959744 e!2099961))

(declare-fun res!1368629 () Bool)

(assert (=> d!959744 (=> res!1368629 e!2099961)))

(declare-fun lt!1148845 () Bool)

(assert (=> d!959744 (= res!1368629 (not lt!1148845))))

(declare-fun e!2099959 () Bool)

(assert (=> d!959744 (= lt!1148845 e!2099959)))

(declare-fun res!1368627 () Bool)

(assert (=> d!959744 (=> res!1368627 e!2099959)))

(assert (=> d!959744 (= res!1368627 ((_ is Nil!36865) lt!1148159))))

(assert (=> d!959744 (= (isPrefix!2824 lt!1148159 lt!1148159) lt!1148845)))

(declare-fun b!3382779 () Bool)

(assert (=> b!3382779 (= e!2099961 (>= (size!27895 lt!1148159) (size!27895 lt!1148159)))))

(declare-fun b!3382776 () Bool)

(assert (=> b!3382776 (= e!2099959 e!2099960)))

(declare-fun res!1368626 () Bool)

(assert (=> b!3382776 (=> (not res!1368626) (not e!2099960))))

(assert (=> b!3382776 (= res!1368626 (not ((_ is Nil!36865) lt!1148159)))))

(declare-fun b!3382777 () Bool)

(declare-fun res!1368628 () Bool)

(assert (=> b!3382777 (=> (not res!1368628) (not e!2099960))))

(assert (=> b!3382777 (= res!1368628 (= (head!7225 lt!1148159) (head!7225 lt!1148159)))))

(assert (= (and d!959744 (not res!1368627)) b!3382776))

(assert (= (and b!3382776 res!1368626) b!3382777))

(assert (= (and b!3382777 res!1368628) b!3382778))

(assert (= (and d!959744 (not res!1368629)) b!3382779))

(assert (=> b!3382778 m!3745527))

(assert (=> b!3382778 m!3745527))

(assert (=> b!3382778 m!3745527))

(assert (=> b!3382778 m!3745527))

(declare-fun m!3747389 () Bool)

(assert (=> b!3382778 m!3747389))

(assert (=> b!3382779 m!3745389))

(assert (=> b!3382779 m!3745389))

(assert (=> b!3382777 m!3745531))

(assert (=> b!3382777 m!3745531))

(assert (=> d!959374 d!959744))

(declare-fun d!959746 () Bool)

(assert (=> d!959746 (isPrefix!2824 lt!1148159 lt!1148159)))

(declare-fun lt!1148848 () Unit!51972)

(declare-fun choose!19583 (List!36989 List!36989) Unit!51972)

(assert (=> d!959746 (= lt!1148848 (choose!19583 lt!1148159 lt!1148159))))

(assert (=> d!959746 (= (lemmaIsPrefixRefl!1783 lt!1148159 lt!1148159) lt!1148848)))

(declare-fun bs!554852 () Bool)

(assert (= bs!554852 d!959746))

(assert (=> bs!554852 m!3746209))

(declare-fun m!3747391 () Bool)

(assert (=> bs!554852 m!3747391))

(assert (=> d!959374 d!959746))

(declare-fun d!959748 () Bool)

(assert (=> d!959748 true))

(declare-fun lt!1148853 () Bool)

(declare-fun lambda!120511 () Int)

(declare-fun forall!7760 (List!36990 Int) Bool)

(assert (=> d!959748 (= lt!1148853 (forall!7760 rules!2135 lambda!120511))))

(declare-fun e!2099971 () Bool)

(assert (=> d!959748 (= lt!1148853 e!2099971)))

(declare-fun res!1368636 () Bool)

(assert (=> d!959748 (=> res!1368636 e!2099971)))

(assert (=> d!959748 (= res!1368636 (not ((_ is Cons!36866) rules!2135)))))

(assert (=> d!959748 (= (rulesValidInductive!1831 thiss!18206 rules!2135) lt!1148853)))

(declare-fun b!3382792 () Bool)

(declare-fun e!2099972 () Bool)

(assert (=> b!3382792 (= e!2099971 e!2099972)))

(declare-fun res!1368637 () Bool)

(assert (=> b!3382792 (=> (not res!1368637) (not e!2099972))))

(assert (=> b!3382792 (= res!1368637 (ruleValid!1704 thiss!18206 (h!42286 rules!2135)))))

(declare-fun b!3382793 () Bool)

(assert (=> b!3382793 (= e!2099972 (rulesValidInductive!1831 thiss!18206 (t!263197 rules!2135)))))

(assert (= (and d!959748 (not res!1368636)) b!3382792))

(assert (= (and b!3382792 res!1368637) b!3382793))

(declare-fun m!3747411 () Bool)

(assert (=> d!959748 m!3747411))

(declare-fun m!3747413 () Bool)

(assert (=> b!3382792 m!3747413))

(declare-fun m!3747415 () Bool)

(assert (=> b!3382793 m!3747415))

(assert (=> d!959374 d!959748))

(declare-fun b!3382796 () Bool)

(declare-fun e!2099973 () List!36989)

(assert (=> b!3382796 (= e!2099973 (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))

(declare-fun d!959764 () Bool)

(declare-fun e!2099974 () Bool)

(assert (=> d!959764 e!2099974))

(declare-fun res!1368638 () Bool)

(assert (=> d!959764 (=> (not res!1368638) (not e!2099974))))

(declare-fun lt!1148854 () List!36989)

(assert (=> d!959764 (= res!1368638 (= (content!5081 lt!1148854) ((_ map or) (content!5081 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (content!5081 (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))))))

(assert (=> d!959764 (= lt!1148854 e!2099973)))

(declare-fun c!576083 () Bool)

(assert (=> d!959764 (= c!576083 ((_ is Nil!36865) (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))))

(assert (=> d!959764 (= (++!9009 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))) (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867)))) lt!1148854)))

(declare-fun b!3382799 () Bool)

(assert (=> b!3382799 (= e!2099974 (or (not (= (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))) Nil!36865)) (= lt!1148854 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))))))

(declare-fun b!3382798 () Bool)

(declare-fun res!1368639 () Bool)

(assert (=> b!3382798 (=> (not res!1368639) (not e!2099974))))

(assert (=> b!3382798 (= res!1368639 (= (size!27895 lt!1148854) (+ (size!27895 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (size!27895 (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))))))

(declare-fun b!3382797 () Bool)

(assert (=> b!3382797 (= e!2099973 (Cons!36865 (h!42285 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (++!9009 (t!263196 (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))))

(assert (= (and d!959764 c!576083) b!3382796))

(assert (= (and d!959764 (not c!576083)) b!3382797))

(assert (= (and d!959764 res!1368638) b!3382798))

(assert (= (and b!3382798 res!1368639) b!3382799))

(declare-fun m!3747417 () Bool)

(assert (=> d!959764 m!3747417))

(assert (=> d!959764 m!3745653))

(declare-fun m!3747419 () Bool)

(assert (=> d!959764 m!3747419))

(assert (=> d!959764 m!3745655))

(declare-fun m!3747421 () Bool)

(assert (=> d!959764 m!3747421))

(declare-fun m!3747423 () Bool)

(assert (=> b!3382798 m!3747423))

(assert (=> b!3382798 m!3745653))

(declare-fun m!3747425 () Bool)

(assert (=> b!3382798 m!3747425))

(assert (=> b!3382798 m!3745655))

(declare-fun m!3747427 () Bool)

(assert (=> b!3382798 m!3747427))

(assert (=> b!3382797 m!3745655))

(declare-fun m!3747429 () Bool)

(assert (=> b!3382797 m!3747429))

(assert (=> b!3381369 d!959764))

(declare-fun d!959766 () Bool)

(assert (=> d!959766 (= (list!13331 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))) (list!13334 (c!575699 (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))))

(declare-fun bs!554855 () Bool)

(assert (= bs!554855 d!959766))

(declare-fun m!3747431 () Bool)

(assert (=> bs!554855 m!3747431))

(assert (=> b!3381369 d!959766))

(declare-fun d!959768 () Bool)

(declare-fun lt!1148855 () BalanceConc!21860)

(assert (=> d!959768 (= (list!13331 lt!1148855) (originalCharacters!6088 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))

(assert (=> d!959768 (= lt!1148855 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (value!173619 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))))

(assert (=> d!959768 (= (charsOf!3388 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))) lt!1148855)))

(declare-fun b_lambda!96055 () Bool)

(assert (=> (not b_lambda!96055) (not d!959768)))

(declare-fun t!263362 () Bool)

(declare-fun tb!180139 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263362) tb!180139))

(declare-fun b!3382800 () Bool)

(declare-fun e!2099975 () Bool)

(declare-fun tp!1057229 () Bool)

(assert (=> b!3382800 (= e!2099975 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (value!173619 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) tp!1057229))))

(declare-fun result!223616 () Bool)

(assert (=> tb!180139 (= result!223616 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (value!173619 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) e!2099975))))

(assert (= tb!180139 b!3382800))

(declare-fun m!3747433 () Bool)

(assert (=> b!3382800 m!3747433))

(declare-fun m!3747435 () Bool)

(assert (=> tb!180139 m!3747435))

(assert (=> d!959768 t!263362))

(declare-fun b_and!235105 () Bool)

(assert (= b_and!235101 (and (=> t!263362 result!223616) b_and!235105)))

(declare-fun t!263364 () Bool)

(declare-fun tb!180141 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263364) tb!180141))

(declare-fun result!223618 () Bool)

(assert (= result!223618 result!223616))

(assert (=> d!959768 t!263364))

(declare-fun b_and!235107 () Bool)

(assert (= b_and!235103 (and (=> t!263364 result!223618) b_and!235107)))

(declare-fun tb!180143 () Bool)

(declare-fun t!263366 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263366) tb!180143))

(declare-fun result!223620 () Bool)

(assert (= result!223620 result!223616))

(assert (=> d!959768 t!263366))

(declare-fun b_and!235109 () Bool)

(assert (= b_and!235095 (and (=> t!263366 result!223620) b_and!235109)))

(declare-fun t!263368 () Bool)

(declare-fun tb!180145 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263368) tb!180145))

(declare-fun result!223622 () Bool)

(assert (= result!223622 result!223616))

(assert (=> d!959768 t!263368))

(declare-fun b_and!235111 () Bool)

(assert (= b_and!235099 (and (=> t!263368 result!223622) b_and!235111)))

(declare-fun t!263370 () Bool)

(declare-fun tb!180147 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263370) tb!180147))

(declare-fun result!223624 () Bool)

(assert (= result!223624 result!223616))

(assert (=> d!959768 t!263370))

(declare-fun b_and!235113 () Bool)

(assert (= b_and!235097 (and (=> t!263370 result!223624) b_and!235113)))

(declare-fun m!3747437 () Bool)

(assert (=> d!959768 m!3747437))

(declare-fun m!3747439 () Bool)

(assert (=> d!959768 m!3747439))

(assert (=> b!3381369 d!959768))

(declare-fun d!959770 () Bool)

(declare-fun c!576084 () Bool)

(assert (=> d!959770 (= c!576084 ((_ is Cons!36867) (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))

(declare-fun e!2099976 () List!36989)

(assert (=> d!959770 (= (printList!1511 thiss!18206 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))) e!2099976)))

(declare-fun b!3382801 () Bool)

(assert (=> b!3382801 (= e!2099976 (++!9009 (list!13331 (charsOf!3388 (h!42287 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))))) (printList!1511 thiss!18206 (t!263198 (t!263198 (Cons!36867 (h!42287 tokens!494) Nil!36867))))))))

(declare-fun b!3382802 () Bool)

(assert (=> b!3382802 (= e!2099976 Nil!36865)))

(assert (= (and d!959770 c!576084) b!3382801))

(assert (= (and d!959770 (not c!576084)) b!3382802))

(declare-fun m!3747441 () Bool)

(assert (=> b!3382801 m!3747441))

(assert (=> b!3382801 m!3747441))

(declare-fun m!3747443 () Bool)

(assert (=> b!3382801 m!3747443))

(declare-fun m!3747445 () Bool)

(assert (=> b!3382801 m!3747445))

(assert (=> b!3382801 m!3747443))

(assert (=> b!3382801 m!3747445))

(declare-fun m!3747447 () Bool)

(assert (=> b!3382801 m!3747447))

(assert (=> b!3381369 d!959770))

(declare-fun d!959772 () Bool)

(declare-fun lt!1148856 () List!36989)

(assert (=> d!959772 (= (++!9009 (t!263196 lt!1148159) lt!1148856) (tail!5355 lt!1148159))))

(declare-fun e!2099977 () List!36989)

(assert (=> d!959772 (= lt!1148856 e!2099977)))

(declare-fun c!576085 () Bool)

(assert (=> d!959772 (= c!576085 ((_ is Cons!36865) (t!263196 lt!1148159)))))

(assert (=> d!959772 (>= (size!27895 (tail!5355 lt!1148159)) (size!27895 (t!263196 lt!1148159)))))

(assert (=> d!959772 (= (getSuffix!1468 (tail!5355 lt!1148159) (t!263196 lt!1148159)) lt!1148856)))

(declare-fun b!3382803 () Bool)

(assert (=> b!3382803 (= e!2099977 (getSuffix!1468 (tail!5355 (tail!5355 lt!1148159)) (t!263196 (t!263196 lt!1148159))))))

(declare-fun b!3382804 () Bool)

(assert (=> b!3382804 (= e!2099977 (tail!5355 lt!1148159))))

(assert (= (and d!959772 c!576085) b!3382803))

(assert (= (and d!959772 (not c!576085)) b!3382804))

(declare-fun m!3747449 () Bool)

(assert (=> d!959772 m!3747449))

(assert (=> d!959772 m!3745527))

(declare-fun m!3747451 () Bool)

(assert (=> d!959772 m!3747451))

(assert (=> d!959772 m!3745701))

(assert (=> b!3382803 m!3745527))

(assert (=> b!3382803 m!3747341))

(assert (=> b!3382803 m!3747341))

(declare-fun m!3747453 () Bool)

(assert (=> b!3382803 m!3747453))

(assert (=> b!3381381 d!959772))

(assert (=> b!3381381 d!959728))

(declare-fun d!959774 () Bool)

(declare-fun res!1368640 () Bool)

(declare-fun e!2099978 () Bool)

(assert (=> d!959774 (=> (not res!1368640) (not e!2099978))))

(assert (=> d!959774 (= res!1368640 (rulesValid!2003 thiss!18206 (t!263197 rules!2135)))))

(assert (=> d!959774 (= (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135)) e!2099978)))

(declare-fun b!3382805 () Bool)

(assert (=> b!3382805 (= e!2099978 (noDuplicateTag!1999 thiss!18206 (t!263197 rules!2135) Nil!36869))))

(assert (= (and d!959774 res!1368640) b!3382805))

(declare-fun m!3747455 () Bool)

(assert (=> d!959774 m!3747455))

(declare-fun m!3747457 () Bool)

(assert (=> b!3382805 m!3747457))

(assert (=> b!3381400 d!959774))

(declare-fun d!959776 () Bool)

(assert (=> d!959776 (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135))))

(declare-fun lt!1148859 () Unit!51972)

(declare-fun choose!19584 (LexerInterface!4963 Rule!10548 List!36990) Unit!51972)

(assert (=> d!959776 (= lt!1148859 (choose!19584 thiss!18206 (h!42286 rules!2135) (t!263197 rules!2135)))))

(assert (=> d!959776 (rulesInvariant!4360 thiss!18206 (Cons!36866 (h!42286 rules!2135) (t!263197 rules!2135)))))

(assert (=> d!959776 (= (lemmaInvariantOnRulesThenOnTail!400 thiss!18206 (h!42286 rules!2135) (t!263197 rules!2135)) lt!1148859)))

(declare-fun bs!554856 () Bool)

(assert (= bs!554856 d!959776))

(assert (=> bs!554856 m!3745675))

(declare-fun m!3747459 () Bool)

(assert (=> bs!554856 m!3747459))

(declare-fun m!3747461 () Bool)

(assert (=> bs!554856 m!3747461))

(assert (=> b!3381400 d!959776))

(declare-fun b!3382806 () Bool)

(declare-fun e!2099982 () Option!7395)

(declare-fun e!2099979 () Option!7395)

(assert (=> b!3382806 (= e!2099982 e!2099979)))

(declare-fun c!576086 () Bool)

(assert (=> b!3382806 (= c!576086 (and ((_ is Cons!36866) (t!263197 rules!2135)) (not (= (tag!5950 (h!42286 (t!263197 rules!2135))) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3382807 () Bool)

(declare-fun e!2099980 () Bool)

(declare-fun lt!1148860 () Option!7395)

(assert (=> b!3382807 (= e!2099980 (= (tag!5950 (get!11768 lt!1148860)) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3382808 () Bool)

(declare-fun e!2099981 () Bool)

(assert (=> b!3382808 (= e!2099981 e!2099980)))

(declare-fun res!1368642 () Bool)

(assert (=> b!3382808 (=> (not res!1368642) (not e!2099980))))

(assert (=> b!3382808 (= res!1368642 (contains!6742 (t!263197 rules!2135) (get!11768 lt!1148860)))))

(declare-fun d!959778 () Bool)

(assert (=> d!959778 e!2099981))

(declare-fun res!1368641 () Bool)

(assert (=> d!959778 (=> res!1368641 e!2099981)))

(assert (=> d!959778 (= res!1368641 (isEmpty!21113 lt!1148860))))

(assert (=> d!959778 (= lt!1148860 e!2099982)))

(declare-fun c!576087 () Bool)

(assert (=> d!959778 (= c!576087 (and ((_ is Cons!36866) (t!263197 rules!2135)) (= (tag!5950 (h!42286 (t!263197 rules!2135))) (tag!5950 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> d!959778 (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135))))

(assert (=> d!959778 (= (getRuleFromTag!1029 thiss!18206 (t!263197 rules!2135) (tag!5950 (rule!7926 (h!42287 tokens!494)))) lt!1148860)))

(declare-fun b!3382809 () Bool)

(assert (=> b!3382809 (= e!2099982 (Some!7394 (h!42286 (t!263197 rules!2135))))))

(declare-fun b!3382810 () Bool)

(assert (=> b!3382810 (= e!2099979 None!7394)))

(declare-fun b!3382811 () Bool)

(declare-fun lt!1148862 () Unit!51972)

(declare-fun lt!1148861 () Unit!51972)

(assert (=> b!3382811 (= lt!1148862 lt!1148861)))

(assert (=> b!3382811 (rulesInvariant!4360 thiss!18206 (t!263197 (t!263197 rules!2135)))))

(assert (=> b!3382811 (= lt!1148861 (lemmaInvariantOnRulesThenOnTail!400 thiss!18206 (h!42286 (t!263197 rules!2135)) (t!263197 (t!263197 rules!2135))))))

(assert (=> b!3382811 (= e!2099979 (getRuleFromTag!1029 thiss!18206 (t!263197 (t!263197 rules!2135)) (tag!5950 (rule!7926 (h!42287 tokens!494)))))))

(assert (= (and d!959778 c!576087) b!3382809))

(assert (= (and d!959778 (not c!576087)) b!3382806))

(assert (= (and b!3382806 c!576086) b!3382811))

(assert (= (and b!3382806 (not c!576086)) b!3382810))

(assert (= (and d!959778 (not res!1368641)) b!3382808))

(assert (= (and b!3382808 res!1368642) b!3382807))

(declare-fun m!3747463 () Bool)

(assert (=> b!3382807 m!3747463))

(assert (=> b!3382808 m!3747463))

(assert (=> b!3382808 m!3747463))

(declare-fun m!3747465 () Bool)

(assert (=> b!3382808 m!3747465))

(declare-fun m!3747467 () Bool)

(assert (=> d!959778 m!3747467))

(assert (=> d!959778 m!3745675))

(declare-fun m!3747469 () Bool)

(assert (=> b!3382811 m!3747469))

(declare-fun m!3747471 () Bool)

(assert (=> b!3382811 m!3747471))

(declare-fun m!3747473 () Bool)

(assert (=> b!3382811 m!3747473))

(assert (=> b!3381400 d!959778))

(declare-fun b!3382812 () Bool)

(declare-fun res!1368649 () Bool)

(declare-fun e!2099987 () Bool)

(assert (=> b!3382812 (=> res!1368649 e!2099987)))

(assert (=> b!3382812 (= res!1368649 (not (isEmpty!21105 (tail!5355 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))))

(declare-fun b!3382813 () Bool)

(declare-fun res!1368643 () Bool)

(declare-fun e!2099989 () Bool)

(assert (=> b!3382813 (=> res!1368643 e!2099989)))

(declare-fun e!2099986 () Bool)

(assert (=> b!3382813 (= res!1368643 e!2099986)))

(declare-fun res!1368650 () Bool)

(assert (=> b!3382813 (=> (not res!1368650) (not e!2099986))))

(declare-fun lt!1148863 () Bool)

(assert (=> b!3382813 (= res!1368650 lt!1148863)))

(declare-fun b!3382814 () Bool)

(declare-fun e!2099983 () Bool)

(declare-fun call!244672 () Bool)

(assert (=> b!3382814 (= e!2099983 (= lt!1148863 call!244672))))

(declare-fun d!959780 () Bool)

(assert (=> d!959780 e!2099983))

(declare-fun c!576090 () Bool)

(assert (=> d!959780 (= c!576090 ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun e!2099985 () Bool)

(assert (=> d!959780 (= lt!1148863 e!2099985)))

(declare-fun c!576089 () Bool)

(assert (=> d!959780 (= c!576089 (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(assert (=> d!959780 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!959780 (= (matchR!4725 (regex!5374 (rule!7926 (h!42287 tokens!494))) (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))) lt!1148863)))

(declare-fun b!3382815 () Bool)

(declare-fun res!1368648 () Bool)

(assert (=> b!3382815 (=> res!1368648 e!2099989)))

(assert (=> b!3382815 (= res!1368648 (not ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun e!2099984 () Bool)

(assert (=> b!3382815 (= e!2099984 e!2099989)))

(declare-fun b!3382816 () Bool)

(assert (=> b!3382816 (= e!2099985 (nullable!3451 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3382817 () Bool)

(declare-fun res!1368645 () Bool)

(assert (=> b!3382817 (=> (not res!1368645) (not e!2099986))))

(assert (=> b!3382817 (= res!1368645 (isEmpty!21105 (tail!5355 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159))))))))

(declare-fun bm!244667 () Bool)

(assert (=> bm!244667 (= call!244672 (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(declare-fun b!3382818 () Bool)

(assert (=> b!3382818 (= e!2099985 (matchR!4725 (derivativeStep!3004 (regex!5374 (rule!7926 (h!42287 tokens!494))) (head!7225 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159))))) (tail!5355 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159))))))))

(declare-fun b!3382819 () Bool)

(assert (=> b!3382819 (= e!2099984 (not lt!1148863))))

(declare-fun b!3382820 () Bool)

(declare-fun e!2099988 () Bool)

(assert (=> b!3382820 (= e!2099989 e!2099988)))

(declare-fun res!1368644 () Bool)

(assert (=> b!3382820 (=> (not res!1368644) (not e!2099988))))

(assert (=> b!3382820 (= res!1368644 (not lt!1148863))))

(declare-fun b!3382821 () Bool)

(assert (=> b!3382821 (= e!2099988 e!2099987)))

(declare-fun res!1368647 () Bool)

(assert (=> b!3382821 (=> res!1368647 e!2099987)))

(assert (=> b!3382821 (= res!1368647 call!244672)))

(declare-fun b!3382822 () Bool)

(assert (=> b!3382822 (= e!2099986 (= (head!7225 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))) (c!575698 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun b!3382823 () Bool)

(assert (=> b!3382823 (= e!2099987 (not (= (head!7225 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))) (c!575698 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3382824 () Bool)

(declare-fun res!1368646 () Bool)

(assert (=> b!3382824 (=> (not res!1368646) (not e!2099986))))

(assert (=> b!3382824 (= res!1368646 (not call!244672))))

(declare-fun b!3382825 () Bool)

(assert (=> b!3382825 (= e!2099983 e!2099984)))

(declare-fun c!576088 () Bool)

(assert (=> b!3382825 (= c!576088 ((_ is EmptyLang!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (= (and d!959780 c!576089) b!3382816))

(assert (= (and d!959780 (not c!576089)) b!3382818))

(assert (= (and d!959780 c!576090) b!3382814))

(assert (= (and d!959780 (not c!576090)) b!3382825))

(assert (= (and b!3382825 c!576088) b!3382819))

(assert (= (and b!3382825 (not c!576088)) b!3382815))

(assert (= (and b!3382815 (not res!1368648)) b!3382813))

(assert (= (and b!3382813 res!1368650) b!3382824))

(assert (= (and b!3382824 res!1368646) b!3382817))

(assert (= (and b!3382817 res!1368645) b!3382822))

(assert (= (and b!3382813 (not res!1368643)) b!3382820))

(assert (= (and b!3382820 res!1368644) b!3382821))

(assert (= (and b!3382821 (not res!1368647)) b!3382812))

(assert (= (and b!3382812 (not res!1368649)) b!3382823))

(assert (= (or b!3382814 b!3382821 b!3382824) bm!244667))

(declare-fun m!3747475 () Bool)

(assert (=> b!3382816 m!3747475))

(assert (=> bm!244667 m!3745793))

(assert (=> d!959780 m!3745793))

(declare-fun m!3747477 () Bool)

(assert (=> d!959780 m!3747477))

(declare-fun m!3747479 () Bool)

(assert (=> b!3382817 m!3747479))

(assert (=> b!3382817 m!3747479))

(declare-fun m!3747481 () Bool)

(assert (=> b!3382817 m!3747481))

(declare-fun m!3747483 () Bool)

(assert (=> b!3382818 m!3747483))

(assert (=> b!3382818 m!3747483))

(declare-fun m!3747485 () Bool)

(assert (=> b!3382818 m!3747485))

(assert (=> b!3382818 m!3747479))

(assert (=> b!3382818 m!3747485))

(assert (=> b!3382818 m!3747479))

(declare-fun m!3747487 () Bool)

(assert (=> b!3382818 m!3747487))

(assert (=> b!3382812 m!3747479))

(assert (=> b!3382812 m!3747479))

(assert (=> b!3382812 m!3747481))

(assert (=> b!3382822 m!3747483))

(assert (=> b!3382823 m!3747483))

(assert (=> b!3381497 d!959780))

(declare-fun bm!244684 () Bool)

(declare-fun call!244693 () Bool)

(assert (=> bm!244684 (= call!244693 (nullable!3451 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3382855 () Bool)

(declare-fun e!2100011 () tuple2!36462)

(assert (=> b!3382855 (= e!2100011 (tuple2!36463 Nil!36865 lt!1148159))))

(declare-fun b!3382856 () Bool)

(declare-fun e!2100007 () tuple2!36462)

(declare-fun e!2100008 () tuple2!36462)

(assert (=> b!3382856 (= e!2100007 e!2100008)))

(declare-fun c!576104 () Bool)

(assert (=> b!3382856 (= c!576104 (= (size!27895 Nil!36865) (size!27895 lt!1148159)))))

(declare-fun bm!244685 () Bool)

(declare-fun call!244695 () Unit!51972)

(declare-fun lemmaIsPrefixSameLengthThenSameList!543 (List!36989 List!36989 List!36989) Unit!51972)

(assert (=> bm!244685 (= call!244695 (lemmaIsPrefixSameLengthThenSameList!543 lt!1148159 Nil!36865 lt!1148159))))

(declare-fun b!3382857 () Bool)

(assert (=> b!3382857 (= e!2100011 (tuple2!36463 Nil!36865 Nil!36865))))

(declare-fun b!3382858 () Bool)

(declare-fun e!2100012 () Unit!51972)

(declare-fun Unit!51981 () Unit!51972)

(assert (=> b!3382858 (= e!2100012 Unit!51981)))

(declare-fun lt!1148932 () Unit!51972)

(declare-fun call!244694 () Unit!51972)

(assert (=> b!3382858 (= lt!1148932 call!244694)))

(declare-fun call!244692 () Bool)

(assert (=> b!3382858 call!244692))

(declare-fun lt!1148921 () Unit!51972)

(assert (=> b!3382858 (= lt!1148921 lt!1148932)))

(declare-fun lt!1148941 () Unit!51972)

(assert (=> b!3382858 (= lt!1148941 call!244695)))

(assert (=> b!3382858 (= lt!1148159 Nil!36865)))

(declare-fun lt!1148931 () Unit!51972)

(assert (=> b!3382858 (= lt!1148931 lt!1148941)))

(assert (=> b!3382858 false))

(declare-fun bm!244686 () Bool)

(declare-fun call!244690 () Regex!10133)

(declare-fun call!244691 () C!20452)

(assert (=> bm!244686 (= call!244690 (derivativeStep!3004 (regex!5374 (rule!7926 (h!42287 tokens!494))) call!244691))))

(declare-fun b!3382859 () Bool)

(declare-fun c!576108 () Bool)

(assert (=> b!3382859 (= c!576108 call!244693)))

(declare-fun lt!1148923 () Unit!51972)

(declare-fun lt!1148933 () Unit!51972)

(assert (=> b!3382859 (= lt!1148923 lt!1148933)))

(assert (=> b!3382859 (= lt!1148159 Nil!36865)))

(assert (=> b!3382859 (= lt!1148933 call!244695)))

(declare-fun lt!1148938 () Unit!51972)

(declare-fun lt!1148945 () Unit!51972)

(assert (=> b!3382859 (= lt!1148938 lt!1148945)))

(assert (=> b!3382859 call!244692))

(assert (=> b!3382859 (= lt!1148945 call!244694)))

(assert (=> b!3382859 (= e!2100008 e!2100011)))

(declare-fun b!3382860 () Bool)

(declare-fun e!2100013 () tuple2!36462)

(declare-fun lt!1148925 () tuple2!36462)

(assert (=> b!3382860 (= e!2100013 lt!1148925)))

(declare-fun d!959782 () Bool)

(declare-fun e!2100006 () Bool)

(assert (=> d!959782 e!2100006))

(declare-fun res!1368655 () Bool)

(assert (=> d!959782 (=> (not res!1368655) (not e!2100006))))

(declare-fun lt!1148946 () tuple2!36462)

(assert (=> d!959782 (= res!1368655 (= (++!9009 (_1!21365 lt!1148946) (_2!21365 lt!1148946)) lt!1148159))))

(assert (=> d!959782 (= lt!1148946 e!2100007)))

(declare-fun c!576107 () Bool)

(declare-fun lostCause!910 (Regex!10133) Bool)

(assert (=> d!959782 (= c!576107 (lostCause!910 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun lt!1148927 () Unit!51972)

(declare-fun Unit!51982 () Unit!51972)

(assert (=> d!959782 (= lt!1148927 Unit!51982)))

(assert (=> d!959782 (= (getSuffix!1468 lt!1148159 Nil!36865) lt!1148159)))

(declare-fun lt!1148926 () Unit!51972)

(declare-fun lt!1148942 () Unit!51972)

(assert (=> d!959782 (= lt!1148926 lt!1148942)))

(declare-fun lt!1148943 () List!36989)

(assert (=> d!959782 (= lt!1148159 lt!1148943)))

(declare-fun lemmaSamePrefixThenSameSuffix!1260 (List!36989 List!36989 List!36989 List!36989 List!36989) Unit!51972)

(assert (=> d!959782 (= lt!1148942 (lemmaSamePrefixThenSameSuffix!1260 Nil!36865 lt!1148159 Nil!36865 lt!1148943 lt!1148159))))

(assert (=> d!959782 (= lt!1148943 (getSuffix!1468 lt!1148159 Nil!36865))))

(declare-fun lt!1148937 () Unit!51972)

(declare-fun lt!1148930 () Unit!51972)

(assert (=> d!959782 (= lt!1148937 lt!1148930)))

(assert (=> d!959782 (isPrefix!2824 Nil!36865 (++!9009 Nil!36865 lt!1148159))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1794 (List!36989 List!36989) Unit!51972)

(assert (=> d!959782 (= lt!1148930 (lemmaConcatTwoListThenFirstIsPrefix!1794 Nil!36865 lt!1148159))))

(assert (=> d!959782 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!959782 (= (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)) lt!1148946)))

(declare-fun b!3382854 () Bool)

(assert (=> b!3382854 (= e!2100013 (tuple2!36463 Nil!36865 lt!1148159))))

(declare-fun b!3382861 () Bool)

(declare-fun e!2100010 () tuple2!36462)

(declare-fun call!244696 () tuple2!36462)

(assert (=> b!3382861 (= e!2100010 call!244696)))

(declare-fun b!3382862 () Bool)

(declare-fun e!2100009 () Bool)

(assert (=> b!3382862 (= e!2100006 e!2100009)))

(declare-fun res!1368656 () Bool)

(assert (=> b!3382862 (=> res!1368656 e!2100009)))

(assert (=> b!3382862 (= res!1368656 (isEmpty!21105 (_1!21365 lt!1148946)))))

(declare-fun b!3382863 () Bool)

(assert (=> b!3382863 (= e!2100007 (tuple2!36463 Nil!36865 lt!1148159))))

(declare-fun bm!244687 () Bool)

(declare-fun call!244689 () List!36989)

(assert (=> bm!244687 (= call!244689 (tail!5355 lt!1148159))))

(declare-fun bm!244688 () Bool)

(assert (=> bm!244688 (= call!244691 (head!7225 lt!1148159))))

(declare-fun b!3382864 () Bool)

(assert (=> b!3382864 (= e!2100010 e!2100013)))

(assert (=> b!3382864 (= lt!1148925 call!244696)))

(declare-fun c!576105 () Bool)

(assert (=> b!3382864 (= c!576105 (isEmpty!21105 (_1!21365 lt!1148925)))))

(declare-fun b!3382865 () Bool)

(declare-fun Unit!51983 () Unit!51972)

(assert (=> b!3382865 (= e!2100012 Unit!51983)))

(declare-fun bm!244689 () Bool)

(assert (=> bm!244689 (= call!244692 (isPrefix!2824 lt!1148159 lt!1148159))))

(declare-fun bm!244690 () Bool)

(assert (=> bm!244690 (= call!244694 (lemmaIsPrefixRefl!1783 lt!1148159 lt!1148159))))

(declare-fun b!3382866 () Bool)

(declare-fun c!576103 () Bool)

(assert (=> b!3382866 (= c!576103 call!244693)))

(declare-fun lt!1148928 () Unit!51972)

(declare-fun lt!1148929 () Unit!51972)

(assert (=> b!3382866 (= lt!1148928 lt!1148929)))

(declare-fun lt!1148920 () C!20452)

(declare-fun lt!1148939 () List!36989)

(assert (=> b!3382866 (= (++!9009 (++!9009 Nil!36865 (Cons!36865 lt!1148920 Nil!36865)) lt!1148939) lt!1148159)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1148 (List!36989 C!20452 List!36989 List!36989) Unit!51972)

(assert (=> b!3382866 (= lt!1148929 (lemmaMoveElementToOtherListKeepsConcatEq!1148 Nil!36865 lt!1148920 lt!1148939 lt!1148159))))

(assert (=> b!3382866 (= lt!1148939 (tail!5355 lt!1148159))))

(assert (=> b!3382866 (= lt!1148920 (head!7225 lt!1148159))))

(declare-fun lt!1148922 () Unit!51972)

(declare-fun lt!1148934 () Unit!51972)

(assert (=> b!3382866 (= lt!1148922 lt!1148934)))

(assert (=> b!3382866 (isPrefix!2824 (++!9009 Nil!36865 (Cons!36865 (head!7225 (getSuffix!1468 lt!1148159 Nil!36865)) Nil!36865)) lt!1148159)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!536 (List!36989 List!36989) Unit!51972)

(assert (=> b!3382866 (= lt!1148934 (lemmaAddHeadSuffixToPrefixStillPrefix!536 Nil!36865 lt!1148159))))

(declare-fun lt!1148940 () Unit!51972)

(declare-fun lt!1148944 () Unit!51972)

(assert (=> b!3382866 (= lt!1148940 lt!1148944)))

(assert (=> b!3382866 (= lt!1148944 (lemmaAddHeadSuffixToPrefixStillPrefix!536 Nil!36865 lt!1148159))))

(declare-fun lt!1148947 () List!36989)

(assert (=> b!3382866 (= lt!1148947 (++!9009 Nil!36865 (Cons!36865 (head!7225 lt!1148159) Nil!36865)))))

(declare-fun lt!1148936 () Unit!51972)

(assert (=> b!3382866 (= lt!1148936 e!2100012)))

(declare-fun c!576106 () Bool)

(assert (=> b!3382866 (= c!576106 (= (size!27895 Nil!36865) (size!27895 lt!1148159)))))

(declare-fun lt!1148935 () Unit!51972)

(declare-fun lt!1148924 () Unit!51972)

(assert (=> b!3382866 (= lt!1148935 lt!1148924)))

(assert (=> b!3382866 (<= (size!27895 Nil!36865) (size!27895 lt!1148159))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!344 (List!36989 List!36989) Unit!51972)

(assert (=> b!3382866 (= lt!1148924 (lemmaIsPrefixThenSmallerEqSize!344 Nil!36865 lt!1148159))))

(assert (=> b!3382866 (= e!2100008 e!2100010)))

(declare-fun b!3382867 () Bool)

(assert (=> b!3382867 (= e!2100009 (>= (size!27895 (_1!21365 lt!1148946)) (size!27895 Nil!36865)))))

(declare-fun bm!244691 () Bool)

(assert (=> bm!244691 (= call!244696 (findLongestMatchInner!879 call!244690 lt!1148947 (+ (size!27895 Nil!36865) 1) call!244689 lt!1148159 (size!27895 lt!1148159)))))

(assert (= (and d!959782 c!576107) b!3382863))

(assert (= (and d!959782 (not c!576107)) b!3382856))

(assert (= (and b!3382856 c!576104) b!3382859))

(assert (= (and b!3382856 (not c!576104)) b!3382866))

(assert (= (and b!3382859 c!576108) b!3382857))

(assert (= (and b!3382859 (not c!576108)) b!3382855))

(assert (= (and b!3382866 c!576106) b!3382858))

(assert (= (and b!3382866 (not c!576106)) b!3382865))

(assert (= (and b!3382866 c!576103) b!3382864))

(assert (= (and b!3382866 (not c!576103)) b!3382861))

(assert (= (and b!3382864 c!576105) b!3382854))

(assert (= (and b!3382864 (not c!576105)) b!3382860))

(assert (= (or b!3382864 b!3382861) bm!244688))

(assert (= (or b!3382864 b!3382861) bm!244687))

(assert (= (or b!3382864 b!3382861) bm!244686))

(assert (= (or b!3382864 b!3382861) bm!244691))

(assert (= (or b!3382859 b!3382858) bm!244690))

(assert (= (or b!3382859 b!3382858) bm!244689))

(assert (= (or b!3382859 b!3382858) bm!244685))

(assert (= (or b!3382859 b!3382866) bm!244684))

(assert (= (and d!959782 res!1368655) b!3382862))

(assert (= (and b!3382862 (not res!1368656)) b!3382867))

(assert (=> bm!244687 m!3745527))

(declare-fun m!3747489 () Bool)

(assert (=> d!959782 m!3747489))

(assert (=> d!959782 m!3747477))

(declare-fun m!3747491 () Bool)

(assert (=> d!959782 m!3747491))

(declare-fun m!3747493 () Bool)

(assert (=> d!959782 m!3747493))

(assert (=> d!959782 m!3747491))

(declare-fun m!3747495 () Bool)

(assert (=> d!959782 m!3747495))

(declare-fun m!3747497 () Bool)

(assert (=> d!959782 m!3747497))

(declare-fun m!3747499 () Bool)

(assert (=> d!959782 m!3747499))

(declare-fun m!3747501 () Bool)

(assert (=> d!959782 m!3747501))

(declare-fun m!3747503 () Bool)

(assert (=> b!3382864 m!3747503))

(declare-fun m!3747505 () Bool)

(assert (=> b!3382867 m!3747505))

(assert (=> b!3382867 m!3745775))

(assert (=> bm!244690 m!3746211))

(assert (=> bm!244691 m!3745389))

(declare-fun m!3747507 () Bool)

(assert (=> bm!244691 m!3747507))

(declare-fun m!3747509 () Bool)

(assert (=> bm!244685 m!3747509))

(assert (=> bm!244688 m!3745531))

(declare-fun m!3747511 () Bool)

(assert (=> b!3382862 m!3747511))

(assert (=> bm!244684 m!3747475))

(assert (=> bm!244689 m!3746209))

(declare-fun m!3747513 () Bool)

(assert (=> b!3382866 m!3747513))

(declare-fun m!3747515 () Bool)

(assert (=> b!3382866 m!3747515))

(declare-fun m!3747517 () Bool)

(assert (=> b!3382866 m!3747517))

(declare-fun m!3747519 () Bool)

(assert (=> b!3382866 m!3747519))

(declare-fun m!3747521 () Bool)

(assert (=> b!3382866 m!3747521))

(declare-fun m!3747523 () Bool)

(assert (=> b!3382866 m!3747523))

(assert (=> b!3382866 m!3745527))

(assert (=> b!3382866 m!3745389))

(assert (=> b!3382866 m!3745531))

(assert (=> b!3382866 m!3747501))

(declare-fun m!3747525 () Bool)

(assert (=> b!3382866 m!3747525))

(assert (=> b!3382866 m!3745775))

(assert (=> b!3382866 m!3747501))

(assert (=> b!3382866 m!3747519))

(declare-fun m!3747527 () Bool)

(assert (=> b!3382866 m!3747527))

(assert (=> b!3382866 m!3747513))

(declare-fun m!3747529 () Bool)

(assert (=> b!3382866 m!3747529))

(declare-fun m!3747531 () Bool)

(assert (=> bm!244686 m!3747531))

(assert (=> b!3381497 d!959782))

(declare-fun d!959784 () Bool)

(declare-fun lt!1148948 () Int)

(assert (=> d!959784 (>= lt!1148948 0)))

(declare-fun e!2100014 () Int)

(assert (=> d!959784 (= lt!1148948 e!2100014)))

(declare-fun c!576109 () Bool)

(assert (=> d!959784 (= c!576109 ((_ is Nil!36865) Nil!36865))))

(assert (=> d!959784 (= (size!27895 Nil!36865) lt!1148948)))

(declare-fun b!3382868 () Bool)

(assert (=> b!3382868 (= e!2100014 0)))

(declare-fun b!3382869 () Bool)

(assert (=> b!3382869 (= e!2100014 (+ 1 (size!27895 (t!263196 Nil!36865))))))

(assert (= (and d!959784 c!576109) b!3382868))

(assert (= (and d!959784 (not c!576109)) b!3382869))

(declare-fun m!3747533 () Bool)

(assert (=> b!3382869 m!3747533))

(assert (=> b!3381497 d!959784))

(assert (=> b!3381497 d!959224))

(declare-fun d!959786 () Bool)

(assert (=> d!959786 (= (isEmpty!21105 (originalCharacters!6088 (h!42287 tokens!494))) ((_ is Nil!36865) (originalCharacters!6088 (h!42287 tokens!494))))))

(assert (=> d!959168 d!959786))

(declare-fun d!959788 () Bool)

(declare-fun lt!1148951 () Int)

(assert (=> d!959788 (= lt!1148951 (size!27895 (list!13331 (_2!21360 lt!1148228))))))

(declare-fun size!27904 (Conc!11123) Int)

(assert (=> d!959788 (= lt!1148951 (size!27904 (c!575699 (_2!21360 lt!1148228))))))

(assert (=> d!959788 (= (size!27899 (_2!21360 lt!1148228)) lt!1148951)))

(declare-fun bs!554857 () Bool)

(assert (= bs!554857 d!959788))

(assert (=> bs!554857 m!3745579))

(assert (=> bs!554857 m!3745579))

(declare-fun m!3747535 () Bool)

(assert (=> bs!554857 m!3747535))

(declare-fun m!3747537 () Bool)

(assert (=> bs!554857 m!3747537))

(assert (=> b!3381349 d!959788))

(declare-fun d!959790 () Bool)

(declare-fun lt!1148952 () Int)

(assert (=> d!959790 (= lt!1148952 (size!27895 (list!13331 lt!1148173)))))

(assert (=> d!959790 (= lt!1148952 (size!27904 (c!575699 lt!1148173)))))

(assert (=> d!959790 (= (size!27899 lt!1148173) lt!1148952)))

(declare-fun bs!554858 () Bool)

(assert (= bs!554858 d!959790))

(assert (=> bs!554858 m!3745581))

(assert (=> bs!554858 m!3745581))

(assert (=> bs!554858 m!3746427))

(declare-fun m!3747539 () Bool)

(assert (=> bs!554858 m!3747539))

(assert (=> b!3381349 d!959790))

(declare-fun d!959792 () Bool)

(declare-fun lt!1148953 () Bool)

(assert (=> d!959792 (= lt!1148953 (select (content!5080 rules!2135) (get!11768 lt!1148268)))))

(declare-fun e!2100015 () Bool)

(assert (=> d!959792 (= lt!1148953 e!2100015)))

(declare-fun res!1368657 () Bool)

(assert (=> d!959792 (=> (not res!1368657) (not e!2100015))))

(assert (=> d!959792 (= res!1368657 ((_ is Cons!36866) rules!2135))))

(assert (=> d!959792 (= (contains!6742 rules!2135 (get!11768 lt!1148268)) lt!1148953)))

(declare-fun b!3382870 () Bool)

(declare-fun e!2100016 () Bool)

(assert (=> b!3382870 (= e!2100015 e!2100016)))

(declare-fun res!1368658 () Bool)

(assert (=> b!3382870 (=> res!1368658 e!2100016)))

(assert (=> b!3382870 (= res!1368658 (= (h!42286 rules!2135) (get!11768 lt!1148268)))))

(declare-fun b!3382871 () Bool)

(assert (=> b!3382871 (= e!2100016 (contains!6742 (t!263197 rules!2135) (get!11768 lt!1148268)))))

(assert (= (and d!959792 res!1368657) b!3382870))

(assert (= (and b!3382870 (not res!1368658)) b!3382871))

(assert (=> d!959792 m!3745659))

(assert (=> d!959792 m!3745669))

(declare-fun m!3747541 () Bool)

(assert (=> d!959792 m!3747541))

(assert (=> b!3382871 m!3745669))

(declare-fun m!3747543 () Bool)

(assert (=> b!3382871 m!3747543))

(assert (=> b!3381397 d!959792))

(assert (=> b!3381397 d!959468))

(declare-fun d!959794 () Bool)

(declare-fun res!1368659 () Bool)

(declare-fun e!2100017 () Bool)

(assert (=> d!959794 (=> res!1368659 e!2100017)))

(assert (=> d!959794 (= res!1368659 ((_ is Nil!36867) (t!263198 tokens!494)))))

(assert (=> d!959794 (= (forall!7757 (t!263198 tokens!494) lambda!120485) e!2100017)))

(declare-fun b!3382872 () Bool)

(declare-fun e!2100018 () Bool)

(assert (=> b!3382872 (= e!2100017 e!2100018)))

(declare-fun res!1368660 () Bool)

(assert (=> b!3382872 (=> (not res!1368660) (not e!2100018))))

(assert (=> b!3382872 (= res!1368660 (dynLambda!15340 lambda!120485 (h!42287 (t!263198 tokens!494))))))

(declare-fun b!3382873 () Bool)

(assert (=> b!3382873 (= e!2100018 (forall!7757 (t!263198 (t!263198 tokens!494)) lambda!120485))))

(assert (= (and d!959794 (not res!1368659)) b!3382872))

(assert (= (and b!3382872 res!1368660) b!3382873))

(declare-fun b_lambda!96057 () Bool)

(assert (=> (not b_lambda!96057) (not b!3382872)))

(declare-fun m!3747545 () Bool)

(assert (=> b!3382872 m!3747545))

(declare-fun m!3747547 () Bool)

(assert (=> b!3382873 m!3747547))

(assert (=> b!3381979 d!959794))

(declare-fun b!3382874 () Bool)

(declare-fun e!2100020 () Bool)

(assert (=> b!3382874 (= e!2100020 (inv!16 (value!173619 (h!42287 (t!263198 tokens!494)))))))

(declare-fun b!3382875 () Bool)

(declare-fun e!2100019 () Bool)

(assert (=> b!3382875 (= e!2100019 (inv!15 (value!173619 (h!42287 (t!263198 tokens!494)))))))

(declare-fun b!3382876 () Bool)

(declare-fun res!1368661 () Bool)

(assert (=> b!3382876 (=> res!1368661 e!2100019)))

(assert (=> b!3382876 (= res!1368661 (not ((_ is IntegerValue!16814) (value!173619 (h!42287 (t!263198 tokens!494))))))))

(declare-fun e!2100021 () Bool)

(assert (=> b!3382876 (= e!2100021 e!2100019)))

(declare-fun d!959796 () Bool)

(declare-fun c!576111 () Bool)

(assert (=> d!959796 (= c!576111 ((_ is IntegerValue!16812) (value!173619 (h!42287 (t!263198 tokens!494)))))))

(assert (=> d!959796 (= (inv!21 (value!173619 (h!42287 (t!263198 tokens!494)))) e!2100020)))

(declare-fun b!3382877 () Bool)

(assert (=> b!3382877 (= e!2100021 (inv!17 (value!173619 (h!42287 (t!263198 tokens!494)))))))

(declare-fun b!3382878 () Bool)

(assert (=> b!3382878 (= e!2100020 e!2100021)))

(declare-fun c!576110 () Bool)

(assert (=> b!3382878 (= c!576110 ((_ is IntegerValue!16813) (value!173619 (h!42287 (t!263198 tokens!494)))))))

(assert (= (and d!959796 c!576111) b!3382874))

(assert (= (and d!959796 (not c!576111)) b!3382878))

(assert (= (and b!3382878 c!576110) b!3382877))

(assert (= (and b!3382878 (not c!576110)) b!3382876))

(assert (= (and b!3382876 (not res!1368661)) b!3382875))

(declare-fun m!3747549 () Bool)

(assert (=> b!3382874 m!3747549))

(declare-fun m!3747551 () Bool)

(assert (=> b!3382875 m!3747551))

(declare-fun m!3747553 () Bool)

(assert (=> b!3382877 m!3747553))

(assert (=> b!3382029 d!959796))

(declare-fun b!3382879 () Bool)

(declare-fun e!2100022 () List!36989)

(assert (=> b!3382879 (= e!2100022 (_2!21361 (get!11770 lt!1148306)))))

(declare-fun d!959798 () Bool)

(declare-fun e!2100023 () Bool)

(assert (=> d!959798 e!2100023))

(declare-fun res!1368662 () Bool)

(assert (=> d!959798 (=> (not res!1368662) (not e!2100023))))

(declare-fun lt!1148954 () List!36989)

(assert (=> d!959798 (= res!1368662 (= (content!5081 lt!1148954) ((_ map or) (content!5081 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (content!5081 (_2!21361 (get!11770 lt!1148306))))))))

(assert (=> d!959798 (= lt!1148954 e!2100022)))

(declare-fun c!576112 () Bool)

(assert (=> d!959798 (= c!576112 ((_ is Nil!36865) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))

(assert (=> d!959798 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))) (_2!21361 (get!11770 lt!1148306))) lt!1148954)))

(declare-fun b!3382882 () Bool)

(assert (=> b!3382882 (= e!2100023 (or (not (= (_2!21361 (get!11770 lt!1148306)) Nil!36865)) (= lt!1148954 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))))))))

(declare-fun b!3382881 () Bool)

(declare-fun res!1368663 () Bool)

(assert (=> b!3382881 (=> (not res!1368663) (not e!2100023))))

(assert (=> b!3382881 (= res!1368663 (= (size!27895 lt!1148954) (+ (size!27895 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (size!27895 (_2!21361 (get!11770 lt!1148306))))))))

(declare-fun b!3382880 () Bool)

(assert (=> b!3382880 (= e!2100022 (Cons!36865 (h!42285 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (++!9009 (t!263196 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (_2!21361 (get!11770 lt!1148306)))))))

(assert (= (and d!959798 c!576112) b!3382879))

(assert (= (and d!959798 (not c!576112)) b!3382880))

(assert (= (and d!959798 res!1368662) b!3382881))

(assert (= (and b!3382881 res!1368663) b!3382882))

(declare-fun m!3747555 () Bool)

(assert (=> d!959798 m!3747555))

(assert (=> d!959798 m!3745771))

(declare-fun m!3747557 () Bool)

(assert (=> d!959798 m!3747557))

(declare-fun m!3747559 () Bool)

(assert (=> d!959798 m!3747559))

(declare-fun m!3747561 () Bool)

(assert (=> b!3382881 m!3747561))

(assert (=> b!3382881 m!3745771))

(declare-fun m!3747563 () Bool)

(assert (=> b!3382881 m!3747563))

(assert (=> b!3382881 m!3745781))

(declare-fun m!3747565 () Bool)

(assert (=> b!3382880 m!3747565))

(assert (=> b!3381494 d!959798))

(declare-fun d!959800 () Bool)

(assert (=> d!959800 (= (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))) (list!13334 (c!575699 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))

(declare-fun bs!554859 () Bool)

(assert (= bs!554859 d!959800))

(declare-fun m!3747567 () Bool)

(assert (=> bs!554859 m!3747567))

(assert (=> b!3381494 d!959800))

(declare-fun d!959802 () Bool)

(declare-fun lt!1148955 () BalanceConc!21860)

(assert (=> d!959802 (= (list!13331 lt!1148955) (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306))))))

(assert (=> d!959802 (= lt!1148955 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306))))) (value!173619 (_1!21361 (get!11770 lt!1148306)))))))

(assert (=> d!959802 (= (charsOf!3388 (_1!21361 (get!11770 lt!1148306))) lt!1148955)))

(declare-fun b_lambda!96059 () Bool)

(assert (=> (not b_lambda!96059) (not d!959802)))

(declare-fun t!263372 () Bool)

(declare-fun tb!180149 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263372) tb!180149))

(declare-fun b!3382883 () Bool)

(declare-fun e!2100024 () Bool)

(declare-fun tp!1057230 () Bool)

(assert (=> b!3382883 (= e!2100024 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306))))) (value!173619 (_1!21361 (get!11770 lt!1148306)))))) tp!1057230))))

(declare-fun result!223626 () Bool)

(assert (=> tb!180149 (= result!223626 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306))))) (value!173619 (_1!21361 (get!11770 lt!1148306))))) e!2100024))))

(assert (= tb!180149 b!3382883))

(declare-fun m!3747569 () Bool)

(assert (=> b!3382883 m!3747569))

(declare-fun m!3747571 () Bool)

(assert (=> tb!180149 m!3747571))

(assert (=> d!959802 t!263372))

(declare-fun b_and!235115 () Bool)

(assert (= b_and!235109 (and (=> t!263372 result!223626) b_and!235115)))

(declare-fun tb!180151 () Bool)

(declare-fun t!263374 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263374) tb!180151))

(declare-fun result!223628 () Bool)

(assert (= result!223628 result!223626))

(assert (=> d!959802 t!263374))

(declare-fun b_and!235117 () Bool)

(assert (= b_and!235111 (and (=> t!263374 result!223628) b_and!235117)))

(declare-fun tb!180153 () Bool)

(declare-fun t!263376 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263376) tb!180153))

(declare-fun result!223630 () Bool)

(assert (= result!223630 result!223626))

(assert (=> d!959802 t!263376))

(declare-fun b_and!235119 () Bool)

(assert (= b_and!235107 (and (=> t!263376 result!223630) b_and!235119)))

(declare-fun tb!180155 () Bool)

(declare-fun t!263378 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263378) tb!180155))

(declare-fun result!223632 () Bool)

(assert (= result!223632 result!223626))

(assert (=> d!959802 t!263378))

(declare-fun b_and!235121 () Bool)

(assert (= b_and!235113 (and (=> t!263378 result!223632) b_and!235121)))

(declare-fun t!263380 () Bool)

(declare-fun tb!180157 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263380) tb!180157))

(declare-fun result!223634 () Bool)

(assert (= result!223634 result!223626))

(assert (=> d!959802 t!263380))

(declare-fun b_and!235123 () Bool)

(assert (= b_and!235105 (and (=> t!263380 result!223634) b_and!235123)))

(declare-fun m!3747573 () Bool)

(assert (=> d!959802 m!3747573))

(declare-fun m!3747575 () Bool)

(assert (=> d!959802 m!3747575))

(assert (=> b!3381494 d!959802))

(assert (=> b!3381494 d!959470))

(assert (=> b!3381532 d!959208))

(declare-fun d!959804 () Bool)

(assert (=> d!959804 (= (isEmpty!21113 lt!1148172) (not ((_ is Some!7394) lt!1148172)))))

(assert (=> d!959220 d!959804))

(declare-fun d!959806 () Bool)

(declare-fun c!576115 () Bool)

(assert (=> d!959806 (= c!576115 ((_ is Nil!36865) (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun e!2100027 () (InoxSet C!20452))

(assert (=> d!959806 (= (content!5081 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) e!2100027)))

(declare-fun b!3382890 () Bool)

(assert (=> b!3382890 (= e!2100027 ((as const (Array C!20452 Bool)) false))))

(declare-fun b!3382891 () Bool)

(assert (=> b!3382891 (= e!2100027 ((_ map or) (store ((as const (Array C!20452 Bool)) false) (h!42285 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))) true) (content!5081 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(assert (= (and d!959806 c!576115) b!3382890))

(assert (= (and d!959806 (not c!576115)) b!3382891))

(declare-fun m!3747577 () Bool)

(assert (=> b!3382891 m!3747577))

(assert (=> b!3382891 m!3747383))

(assert (=> d!959274 d!959806))

(declare-fun d!959808 () Bool)

(assert (=> d!959808 true))

(declare-fun order!19425 () Int)

(declare-fun lambda!120514 () Int)

(declare-fun dynLambda!15344 (Int Int) Int)

(assert (=> d!959808 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (dynLambda!15344 order!19425 lambda!120514))))

(assert (=> d!959808 true))

(assert (=> d!959808 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (dynLambda!15344 order!19425 lambda!120514))))

(declare-fun Forall!1316 (Int) Bool)

(assert (=> d!959808 (= (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (Forall!1316 lambda!120514))))

(declare-fun bs!554860 () Bool)

(assert (= bs!554860 d!959808))

(declare-fun m!3747579 () Bool)

(assert (=> bs!554860 m!3747579))

(assert (=> d!959178 d!959808))

(declare-fun d!959810 () Bool)

(declare-fun lt!1149024 () Token!10114)

(assert (=> d!959810 (= lt!1149024 (apply!8577 (list!13335 (_1!21360 lt!1148420)) 0))))

(assert (=> d!959810 (= lt!1149024 (apply!8579 (c!575700 (_1!21360 lt!1148420)) 0))))

(declare-fun e!2100034 () Bool)

(assert (=> d!959810 e!2100034))

(declare-fun res!1368664 () Bool)

(assert (=> d!959810 (=> (not res!1368664) (not e!2100034))))

(assert (=> d!959810 (= res!1368664 (<= 0 0))))

(assert (=> d!959810 (= (apply!8576 (_1!21360 lt!1148420) 0) lt!1149024)))

(declare-fun b!3382906 () Bool)

(assert (=> b!3382906 (= e!2100034 (< 0 (size!27898 (_1!21360 lt!1148420))))))

(assert (= (and d!959810 res!1368664) b!3382906))

(declare-fun m!3747581 () Bool)

(assert (=> d!959810 m!3747581))

(assert (=> d!959810 m!3747581))

(declare-fun m!3747583 () Bool)

(assert (=> d!959810 m!3747583))

(declare-fun m!3747585 () Bool)

(assert (=> d!959810 m!3747585))

(assert (=> b!3382906 m!3746189))

(assert (=> b!3381915 d!959810))

(declare-fun d!959812 () Bool)

(declare-fun res!1368665 () Bool)

(declare-fun e!2100035 () Bool)

(assert (=> d!959812 (=> res!1368665 e!2100035)))

(assert (=> d!959812 (= res!1368665 ((_ is Nil!36867) (list!13335 lt!1148177)))))

(assert (=> d!959812 (= (forall!7757 (list!13335 lt!1148177) lambda!120495) e!2100035)))

(declare-fun b!3382907 () Bool)

(declare-fun e!2100036 () Bool)

(assert (=> b!3382907 (= e!2100035 e!2100036)))

(declare-fun res!1368666 () Bool)

(assert (=> b!3382907 (=> (not res!1368666) (not e!2100036))))

(assert (=> b!3382907 (= res!1368666 (dynLambda!15340 lambda!120495 (h!42287 (list!13335 lt!1148177))))))

(declare-fun b!3382908 () Bool)

(assert (=> b!3382908 (= e!2100036 (forall!7757 (t!263198 (list!13335 lt!1148177)) lambda!120495))))

(assert (= (and d!959812 (not res!1368665)) b!3382907))

(assert (= (and b!3382907 res!1368666) b!3382908))

(declare-fun b_lambda!96061 () Bool)

(assert (=> (not b_lambda!96061) (not b!3382907)))

(declare-fun m!3747587 () Bool)

(assert (=> b!3382907 m!3747587))

(declare-fun m!3747589 () Bool)

(assert (=> b!3382908 m!3747589))

(assert (=> d!959280 d!959812))

(assert (=> d!959280 d!959720))

(declare-fun d!959814 () Bool)

(declare-fun lt!1149027 () Bool)

(assert (=> d!959814 (= lt!1149027 (forall!7757 (list!13335 lt!1148177) lambda!120495))))

(declare-fun forall!7761 (Conc!11124 Int) Bool)

(assert (=> d!959814 (= lt!1149027 (forall!7761 (c!575700 lt!1148177) lambda!120495))))

(assert (=> d!959814 (= (forall!7759 lt!1148177 lambda!120495) lt!1149027)))

(declare-fun bs!554861 () Bool)

(assert (= bs!554861 d!959814))

(assert (=> bs!554861 m!3746117))

(assert (=> bs!554861 m!3746117))

(assert (=> bs!554861 m!3746119))

(declare-fun m!3747591 () Bool)

(assert (=> bs!554861 m!3747591))

(assert (=> d!959280 d!959814))

(assert (=> d!959280 d!959170))

(declare-fun d!959816 () Bool)

(assert (=> d!959816 (= (list!13331 lt!1148249) (list!13334 (c!575699 lt!1148249)))))

(declare-fun bs!554862 () Bool)

(assert (= bs!554862 d!959816))

(declare-fun m!3747593 () Bool)

(assert (=> bs!554862 m!3747593))

(assert (=> d!959198 d!959816))

(declare-fun d!959818 () Bool)

(assert (=> d!959818 (= (list!13331 (BalanceConc!21861 Empty!11123)) (list!13334 (c!575699 (BalanceConc!21861 Empty!11123))))))

(declare-fun bs!554863 () Bool)

(assert (= bs!554863 d!959818))

(declare-fun m!3747595 () Bool)

(assert (=> bs!554863 m!3747595))

(assert (=> d!959198 d!959818))

(declare-fun d!959820 () Bool)

(declare-fun lt!1149028 () Int)

(assert (=> d!959820 (= lt!1149028 (size!27901 (list!13335 lt!1148155)))))

(assert (=> d!959820 (= lt!1149028 (size!27903 (c!575700 lt!1148155)))))

(assert (=> d!959820 (= (size!27898 lt!1148155) lt!1149028)))

(declare-fun bs!554864 () Bool)

(assert (= bs!554864 d!959820))

(assert (=> bs!554864 m!3745625))

(assert (=> bs!554864 m!3745625))

(declare-fun m!3747597 () Bool)

(assert (=> bs!554864 m!3747597))

(declare-fun m!3747599 () Bool)

(assert (=> bs!554864 m!3747599))

(assert (=> d!959198 d!959820))

(declare-fun d!959822 () Bool)

(assert (=> d!959822 (= (dropList!1165 lt!1148155 0) (drop!1963 (list!13338 (c!575700 lt!1148155)) 0))))

(declare-fun bs!554865 () Bool)

(assert (= bs!554865 d!959822))

(assert (=> bs!554865 m!3747203))

(assert (=> bs!554865 m!3747203))

(declare-fun m!3747601 () Bool)

(assert (=> bs!554865 m!3747601))

(assert (=> d!959198 d!959822))

(declare-fun d!959824 () Bool)

(declare-fun lt!1149074 () List!36989)

(assert (=> d!959824 (= lt!1149074 (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) (printList!1511 thiss!18206 (dropList!1165 lt!1148155 0))))))

(declare-fun e!2100045 () List!36989)

(assert (=> d!959824 (= lt!1149074 e!2100045)))

(declare-fun c!576127 () Bool)

(assert (=> d!959824 (= c!576127 ((_ is Cons!36867) (dropList!1165 lt!1148155 0)))))

(assert (=> d!959824 (= (printListTailRec!648 thiss!18206 (dropList!1165 lt!1148155 0) (list!13331 (BalanceConc!21861 Empty!11123))) lt!1149074)))

(declare-fun b!3382922 () Bool)

(assert (=> b!3382922 (= e!2100045 (printListTailRec!648 thiss!18206 (t!263198 (dropList!1165 lt!1148155 0)) (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) (list!13331 (charsOf!3388 (h!42287 (dropList!1165 lt!1148155 0)))))))))

(declare-fun lt!1149073 () List!36989)

(assert (=> b!3382922 (= lt!1149073 (list!13331 (charsOf!3388 (h!42287 (dropList!1165 lt!1148155 0)))))))

(declare-fun lt!1149076 () List!36989)

(assert (=> b!3382922 (= lt!1149076 (printList!1511 thiss!18206 (t!263198 (dropList!1165 lt!1148155 0))))))

(declare-fun lt!1149075 () Unit!51972)

(assert (=> b!3382922 (= lt!1149075 (lemmaConcatAssociativity!1877 (list!13331 (BalanceConc!21861 Empty!11123)) lt!1149073 lt!1149076))))

(assert (=> b!3382922 (= (++!9009 (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) lt!1149073) lt!1149076) (++!9009 (list!13331 (BalanceConc!21861 Empty!11123)) (++!9009 lt!1149073 lt!1149076)))))

(declare-fun lt!1149077 () Unit!51972)

(assert (=> b!3382922 (= lt!1149077 lt!1149075)))

(declare-fun b!3382923 () Bool)

(assert (=> b!3382923 (= e!2100045 (list!13331 (BalanceConc!21861 Empty!11123)))))

(assert (= (and d!959824 c!576127) b!3382922))

(assert (= (and d!959824 (not c!576127)) b!3382923))

(assert (=> d!959824 m!3745607))

(declare-fun m!3747631 () Bool)

(assert (=> d!959824 m!3747631))

(assert (=> d!959824 m!3745609))

(assert (=> d!959824 m!3747631))

(declare-fun m!3747637 () Bool)

(assert (=> d!959824 m!3747637))

(declare-fun m!3747641 () Bool)

(assert (=> b!3382922 m!3747641))

(assert (=> b!3382922 m!3745609))

(declare-fun m!3747643 () Bool)

(assert (=> b!3382922 m!3747643))

(assert (=> b!3382922 m!3745609))

(declare-fun m!3747649 () Bool)

(assert (=> b!3382922 m!3747649))

(declare-fun m!3747655 () Bool)

(assert (=> b!3382922 m!3747655))

(declare-fun m!3747659 () Bool)

(assert (=> b!3382922 m!3747659))

(assert (=> b!3382922 m!3745609))

(assert (=> b!3382922 m!3747641))

(declare-fun m!3747661 () Bool)

(assert (=> b!3382922 m!3747661))

(declare-fun m!3747663 () Bool)

(assert (=> b!3382922 m!3747663))

(declare-fun m!3747665 () Bool)

(assert (=> b!3382922 m!3747665))

(assert (=> b!3382922 m!3745609))

(declare-fun m!3747671 () Bool)

(assert (=> b!3382922 m!3747671))

(assert (=> b!3382922 m!3747655))

(assert (=> b!3382922 m!3747663))

(assert (=> b!3382922 m!3747671))

(assert (=> b!3382922 m!3747643))

(declare-fun m!3747677 () Bool)

(assert (=> b!3382922 m!3747677))

(assert (=> d!959198 d!959824))

(declare-fun d!959826 () Bool)

(assert (=> d!959826 (= (isEmpty!21113 lt!1148271) (not ((_ is Some!7394) lt!1148271)))))

(assert (=> d!959214 d!959826))

(assert (=> d!959214 d!959146))

(declare-fun d!959828 () Bool)

(assert (=> d!959828 (= (list!13331 lt!1148252) (list!13334 (c!575699 lt!1148252)))))

(declare-fun bs!554866 () Bool)

(assert (= bs!554866 d!959828))

(declare-fun m!3747691 () Bool)

(assert (=> bs!554866 m!3747691))

(assert (=> d!959200 d!959828))

(declare-fun d!959830 () Bool)

(declare-fun c!576128 () Bool)

(assert (=> d!959830 (= c!576128 ((_ is Cons!36867) (list!13335 lt!1148155)))))

(declare-fun e!2100046 () List!36989)

(assert (=> d!959830 (= (printList!1511 thiss!18206 (list!13335 lt!1148155)) e!2100046)))

(declare-fun b!3382924 () Bool)

(assert (=> b!3382924 (= e!2100046 (++!9009 (list!13331 (charsOf!3388 (h!42287 (list!13335 lt!1148155)))) (printList!1511 thiss!18206 (t!263198 (list!13335 lt!1148155)))))))

(declare-fun b!3382925 () Bool)

(assert (=> b!3382925 (= e!2100046 Nil!36865)))

(assert (= (and d!959830 c!576128) b!3382924))

(assert (= (and d!959830 (not c!576128)) b!3382925))

(declare-fun m!3747707 () Bool)

(assert (=> b!3382924 m!3747707))

(assert (=> b!3382924 m!3747707))

(declare-fun m!3747711 () Bool)

(assert (=> b!3382924 m!3747711))

(declare-fun m!3747715 () Bool)

(assert (=> b!3382924 m!3747715))

(assert (=> b!3382924 m!3747711))

(assert (=> b!3382924 m!3747715))

(declare-fun m!3747723 () Bool)

(assert (=> b!3382924 m!3747723))

(assert (=> d!959200 d!959830))

(assert (=> d!959200 d!959662))

(assert (=> d!959200 d!959198))

(declare-fun bs!554867 () Bool)

(declare-fun d!959832 () Bool)

(assert (= bs!554867 (and d!959832 d!959748)))

(declare-fun lambda!120517 () Int)

(assert (=> bs!554867 (= lambda!120517 lambda!120511)))

(assert (=> d!959832 true))

(declare-fun lt!1149081 () Bool)

(assert (=> d!959832 (= lt!1149081 (rulesValidInductive!1831 thiss!18206 rules!2135))))

(assert (=> d!959832 (= lt!1149081 (forall!7760 rules!2135 lambda!120517))))

(assert (=> d!959832 (= (rulesValid!2003 thiss!18206 rules!2135) lt!1149081)))

(declare-fun bs!554868 () Bool)

(assert (= bs!554868 d!959832))

(assert (=> bs!554868 m!3746213))

(declare-fun m!3747729 () Bool)

(assert (=> bs!554868 m!3747729))

(assert (=> d!959146 d!959832))

(assert (=> b!3381512 d!959534))

(assert (=> b!3381512 d!959212))

(declare-fun b!3382927 () Bool)

(declare-fun res!1368671 () Bool)

(declare-fun e!2100050 () Bool)

(assert (=> b!3382927 (=> (not res!1368671) (not e!2100050))))

(declare-fun lt!1149084 () Option!7396)

(assert (=> b!3382927 (= res!1368671 (= (value!173619 (_1!21361 (get!11770 lt!1149084))) (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1149084)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1149084)))))))))

(declare-fun d!959838 () Bool)

(declare-fun e!2100051 () Bool)

(assert (=> d!959838 e!2100051))

(declare-fun res!1368672 () Bool)

(assert (=> d!959838 (=> res!1368672 e!2100051)))

(assert (=> d!959838 (= res!1368672 (isEmpty!21114 lt!1149084))))

(declare-fun e!2100048 () Option!7396)

(assert (=> d!959838 (= lt!1149084 e!2100048)))

(declare-fun c!576129 () Bool)

(declare-fun lt!1149083 () tuple2!36462)

(assert (=> d!959838 (= c!576129 (isEmpty!21105 (_1!21365 lt!1149083)))))

(assert (=> d!959838 (= lt!1149083 (findLongestMatch!794 (regex!5374 (h!42286 rules!2135)) lt!1148159))))

(assert (=> d!959838 (ruleValid!1704 thiss!18206 (h!42286 rules!2135))))

(assert (=> d!959838 (= (maxPrefixOneRule!1686 thiss!18206 (h!42286 rules!2135) lt!1148159) lt!1149084)))

(declare-fun b!3382928 () Bool)

(declare-fun res!1368676 () Bool)

(assert (=> b!3382928 (=> (not res!1368676) (not e!2100050))))

(assert (=> b!3382928 (= res!1368676 (= (rule!7926 (_1!21361 (get!11770 lt!1149084))) (h!42286 rules!2135)))))

(declare-fun b!3382929 () Bool)

(declare-fun res!1368677 () Bool)

(assert (=> b!3382929 (=> (not res!1368677) (not e!2100050))))

(assert (=> b!3382929 (= res!1368677 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1149084)))) (_2!21361 (get!11770 lt!1149084))) lt!1148159))))

(declare-fun b!3382930 () Bool)

(assert (=> b!3382930 (= e!2100048 None!7395)))

(declare-fun b!3382931 () Bool)

(assert (=> b!3382931 (= e!2100051 e!2100050)))

(declare-fun res!1368673 () Bool)

(assert (=> b!3382931 (=> (not res!1368673) (not e!2100050))))

(assert (=> b!3382931 (= res!1368673 (matchR!4725 (regex!5374 (h!42286 rules!2135)) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1149084))))))))

(declare-fun b!3382932 () Bool)

(declare-fun e!2100049 () Bool)

(assert (=> b!3382932 (= e!2100049 (matchR!4725 (regex!5374 (h!42286 rules!2135)) (_1!21365 (findLongestMatchInner!879 (regex!5374 (h!42286 rules!2135)) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(declare-fun b!3382933 () Bool)

(declare-fun res!1368675 () Bool)

(assert (=> b!3382933 (=> (not res!1368675) (not e!2100050))))

(assert (=> b!3382933 (= res!1368675 (< (size!27895 (_2!21361 (get!11770 lt!1149084))) (size!27895 lt!1148159)))))

(declare-fun b!3382934 () Bool)

(assert (=> b!3382934 (= e!2100048 (Some!7395 (tuple2!36455 (Token!10115 (apply!8573 (transformation!5374 (h!42286 rules!2135)) (seqFromList!3801 (_1!21365 lt!1149083))) (h!42286 rules!2135) (size!27899 (seqFromList!3801 (_1!21365 lt!1149083))) (_1!21365 lt!1149083)) (_2!21365 lt!1149083))))))

(declare-fun lt!1149085 () Unit!51972)

(assert (=> b!3382934 (= lt!1149085 (longestMatchIsAcceptedByMatchOrIsEmpty!852 (regex!5374 (h!42286 rules!2135)) lt!1148159))))

(declare-fun res!1368674 () Bool)

(assert (=> b!3382934 (= res!1368674 (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (h!42286 rules!2135)) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(assert (=> b!3382934 (=> res!1368674 e!2100049)))

(assert (=> b!3382934 e!2100049))

(declare-fun lt!1149086 () Unit!51972)

(assert (=> b!3382934 (= lt!1149086 lt!1149085)))

(declare-fun lt!1149082 () Unit!51972)

(assert (=> b!3382934 (= lt!1149082 (lemmaSemiInverse!1227 (transformation!5374 (h!42286 rules!2135)) (seqFromList!3801 (_1!21365 lt!1149083))))))

(declare-fun b!3382935 () Bool)

(assert (=> b!3382935 (= e!2100050 (= (size!27894 (_1!21361 (get!11770 lt!1149084))) (size!27895 (originalCharacters!6088 (_1!21361 (get!11770 lt!1149084))))))))

(assert (= (and d!959838 c!576129) b!3382930))

(assert (= (and d!959838 (not c!576129)) b!3382934))

(assert (= (and b!3382934 (not res!1368674)) b!3382932))

(assert (= (and d!959838 (not res!1368672)) b!3382931))

(assert (= (and b!3382931 res!1368673) b!3382929))

(assert (= (and b!3382929 res!1368677) b!3382933))

(assert (= (and b!3382933 res!1368675) b!3382928))

(assert (= (and b!3382928 res!1368676) b!3382927))

(assert (= (and b!3382927 res!1368671) b!3382935))

(declare-fun m!3747731 () Bool)

(assert (=> d!959838 m!3747731))

(declare-fun m!3747733 () Bool)

(assert (=> d!959838 m!3747733))

(declare-fun m!3747735 () Bool)

(assert (=> d!959838 m!3747735))

(assert (=> d!959838 m!3747413))

(declare-fun m!3747737 () Bool)

(assert (=> b!3382935 m!3747737))

(declare-fun m!3747739 () Bool)

(assert (=> b!3382935 m!3747739))

(assert (=> b!3382931 m!3747737))

(declare-fun m!3747741 () Bool)

(assert (=> b!3382931 m!3747741))

(assert (=> b!3382931 m!3747741))

(declare-fun m!3747743 () Bool)

(assert (=> b!3382931 m!3747743))

(assert (=> b!3382931 m!3747743))

(declare-fun m!3747745 () Bool)

(assert (=> b!3382931 m!3747745))

(assert (=> b!3382932 m!3745775))

(assert (=> b!3382932 m!3745389))

(assert (=> b!3382932 m!3745775))

(assert (=> b!3382932 m!3745389))

(declare-fun m!3747747 () Bool)

(assert (=> b!3382932 m!3747747))

(declare-fun m!3747749 () Bool)

(assert (=> b!3382932 m!3747749))

(assert (=> b!3382933 m!3747737))

(declare-fun m!3747751 () Bool)

(assert (=> b!3382933 m!3747751))

(assert (=> b!3382933 m!3745389))

(declare-fun m!3747753 () Bool)

(assert (=> b!3382934 m!3747753))

(declare-fun m!3747755 () Bool)

(assert (=> b!3382934 m!3747755))

(assert (=> b!3382934 m!3747753))

(declare-fun m!3747757 () Bool)

(assert (=> b!3382934 m!3747757))

(assert (=> b!3382934 m!3747753))

(declare-fun m!3747759 () Bool)

(assert (=> b!3382934 m!3747759))

(assert (=> b!3382934 m!3745389))

(declare-fun m!3747761 () Bool)

(assert (=> b!3382934 m!3747761))

(assert (=> b!3382934 m!3745775))

(assert (=> b!3382934 m!3747753))

(assert (=> b!3382934 m!3745775))

(assert (=> b!3382934 m!3745389))

(assert (=> b!3382934 m!3747747))

(declare-fun m!3747763 () Bool)

(assert (=> b!3382934 m!3747763))

(assert (=> b!3382929 m!3747737))

(assert (=> b!3382929 m!3747741))

(assert (=> b!3382929 m!3747741))

(assert (=> b!3382929 m!3747743))

(assert (=> b!3382929 m!3747743))

(declare-fun m!3747765 () Bool)

(assert (=> b!3382929 m!3747765))

(assert (=> b!3382928 m!3747737))

(assert (=> b!3382927 m!3747737))

(declare-fun m!3747767 () Bool)

(assert (=> b!3382927 m!3747767))

(assert (=> b!3382927 m!3747767))

(declare-fun m!3747769 () Bool)

(assert (=> b!3382927 m!3747769))

(assert (=> bm!244562 d!959838))

(declare-fun b!3382936 () Bool)

(declare-fun res!1368678 () Bool)

(declare-fun e!2100052 () Bool)

(assert (=> b!3382936 (=> (not res!1368678) (not e!2100052))))

(declare-fun lt!1149091 () Option!7396)

(assert (=> b!3382936 (= res!1368678 (< (size!27895 (_2!21361 (get!11770 lt!1149091))) (size!27895 lt!1148159)))))

(declare-fun b!3382937 () Bool)

(declare-fun e!2100054 () Bool)

(assert (=> b!3382937 (= e!2100054 e!2100052)))

(declare-fun res!1368683 () Bool)

(assert (=> b!3382937 (=> (not res!1368683) (not e!2100052))))

(assert (=> b!3382937 (= res!1368683 (isDefined!5714 lt!1149091))))

(declare-fun d!959840 () Bool)

(assert (=> d!959840 e!2100054))

(declare-fun res!1368680 () Bool)

(assert (=> d!959840 (=> res!1368680 e!2100054)))

(assert (=> d!959840 (= res!1368680 (isEmpty!21114 lt!1149091))))

(declare-fun e!2100053 () Option!7396)

(assert (=> d!959840 (= lt!1149091 e!2100053)))

(declare-fun c!576130 () Bool)

(assert (=> d!959840 (= c!576130 (and ((_ is Cons!36866) (t!263197 rules!2135)) ((_ is Nil!36866) (t!263197 (t!263197 rules!2135)))))))

(declare-fun lt!1149089 () Unit!51972)

(declare-fun lt!1149090 () Unit!51972)

(assert (=> d!959840 (= lt!1149089 lt!1149090)))

(assert (=> d!959840 (isPrefix!2824 lt!1148159 lt!1148159)))

(assert (=> d!959840 (= lt!1149090 (lemmaIsPrefixRefl!1783 lt!1148159 lt!1148159))))

(assert (=> d!959840 (rulesValidInductive!1831 thiss!18206 (t!263197 rules!2135))))

(assert (=> d!959840 (= (maxPrefix!2535 thiss!18206 (t!263197 rules!2135) lt!1148159) lt!1149091)))

(declare-fun b!3382938 () Bool)

(declare-fun res!1368679 () Bool)

(assert (=> b!3382938 (=> (not res!1368679) (not e!2100052))))

(assert (=> b!3382938 (= res!1368679 (= (value!173619 (_1!21361 (get!11770 lt!1149091))) (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1149091)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1149091)))))))))

(declare-fun b!3382939 () Bool)

(declare-fun call!244697 () Option!7396)

(assert (=> b!3382939 (= e!2100053 call!244697)))

(declare-fun b!3382940 () Bool)

(declare-fun res!1368681 () Bool)

(assert (=> b!3382940 (=> (not res!1368681) (not e!2100052))))

(assert (=> b!3382940 (= res!1368681 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1149091)))) (_2!21361 (get!11770 lt!1149091))) lt!1148159))))

(declare-fun b!3382941 () Bool)

(assert (=> b!3382941 (= e!2100052 (contains!6742 (t!263197 rules!2135) (rule!7926 (_1!21361 (get!11770 lt!1149091)))))))

(declare-fun b!3382942 () Bool)

(declare-fun res!1368682 () Bool)

(assert (=> b!3382942 (=> (not res!1368682) (not e!2100052))))

(assert (=> b!3382942 (= res!1368682 (matchR!4725 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1149091)))) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1149091))))))))

(declare-fun b!3382943 () Bool)

(declare-fun res!1368684 () Bool)

(assert (=> b!3382943 (=> (not res!1368684) (not e!2100052))))

(assert (=> b!3382943 (= res!1368684 (= (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1149091)))) (originalCharacters!6088 (_1!21361 (get!11770 lt!1149091)))))))

(declare-fun b!3382944 () Bool)

(declare-fun lt!1149087 () Option!7396)

(declare-fun lt!1149088 () Option!7396)

(assert (=> b!3382944 (= e!2100053 (ite (and ((_ is None!7395) lt!1149087) ((_ is None!7395) lt!1149088)) None!7395 (ite ((_ is None!7395) lt!1149088) lt!1149087 (ite ((_ is None!7395) lt!1149087) lt!1149088 (ite (>= (size!27894 (_1!21361 (v!36483 lt!1149087))) (size!27894 (_1!21361 (v!36483 lt!1149088)))) lt!1149087 lt!1149088)))))))

(assert (=> b!3382944 (= lt!1149087 call!244697)))

(assert (=> b!3382944 (= lt!1149088 (maxPrefix!2535 thiss!18206 (t!263197 (t!263197 rules!2135)) lt!1148159))))

(declare-fun bm!244692 () Bool)

(assert (=> bm!244692 (= call!244697 (maxPrefixOneRule!1686 thiss!18206 (h!42286 (t!263197 rules!2135)) lt!1148159))))

(assert (= (and d!959840 c!576130) b!3382939))

(assert (= (and d!959840 (not c!576130)) b!3382944))

(assert (= (or b!3382939 b!3382944) bm!244692))

(assert (= (and d!959840 (not res!1368680)) b!3382937))

(assert (= (and b!3382937 res!1368683) b!3382943))

(assert (= (and b!3382943 res!1368684) b!3382936))

(assert (= (and b!3382936 res!1368678) b!3382940))

(assert (= (and b!3382940 res!1368681) b!3382938))

(assert (= (and b!3382938 res!1368679) b!3382942))

(assert (= (and b!3382942 res!1368682) b!3382941))

(declare-fun m!3747771 () Bool)

(assert (=> b!3382941 m!3747771))

(declare-fun m!3747773 () Bool)

(assert (=> b!3382941 m!3747773))

(declare-fun m!3747775 () Bool)

(assert (=> d!959840 m!3747775))

(assert (=> d!959840 m!3746209))

(assert (=> d!959840 m!3746211))

(assert (=> d!959840 m!3747415))

(assert (=> b!3382943 m!3747771))

(declare-fun m!3747777 () Bool)

(assert (=> b!3382943 m!3747777))

(assert (=> b!3382943 m!3747777))

(declare-fun m!3747779 () Bool)

(assert (=> b!3382943 m!3747779))

(declare-fun m!3747781 () Bool)

(assert (=> b!3382944 m!3747781))

(assert (=> b!3382936 m!3747771))

(declare-fun m!3747783 () Bool)

(assert (=> b!3382936 m!3747783))

(assert (=> b!3382936 m!3745389))

(declare-fun m!3747785 () Bool)

(assert (=> bm!244692 m!3747785))

(declare-fun m!3747787 () Bool)

(assert (=> b!3382937 m!3747787))

(assert (=> b!3382940 m!3747771))

(assert (=> b!3382940 m!3747777))

(assert (=> b!3382940 m!3747777))

(assert (=> b!3382940 m!3747779))

(assert (=> b!3382940 m!3747779))

(declare-fun m!3747789 () Bool)

(assert (=> b!3382940 m!3747789))

(assert (=> b!3382938 m!3747771))

(declare-fun m!3747791 () Bool)

(assert (=> b!3382938 m!3747791))

(assert (=> b!3382938 m!3747791))

(declare-fun m!3747793 () Bool)

(assert (=> b!3382938 m!3747793))

(assert (=> b!3382942 m!3747771))

(assert (=> b!3382942 m!3747777))

(assert (=> b!3382942 m!3747777))

(assert (=> b!3382942 m!3747779))

(assert (=> b!3382942 m!3747779))

(declare-fun m!3747795 () Bool)

(assert (=> b!3382942 m!3747795))

(assert (=> b!3381944 d!959840))

(declare-fun d!959842 () Bool)

(declare-fun nullableFct!996 (Regex!10133) Bool)

(assert (=> d!959842 (= (nullable!3451 (regex!5374 lt!1148170)) (nullableFct!996 (regex!5374 lt!1148170)))))

(declare-fun bs!554869 () Bool)

(assert (= bs!554869 d!959842))

(declare-fun m!3747797 () Bool)

(assert (=> bs!554869 m!3747797))

(assert (=> b!3381309 d!959842))

(declare-fun d!959844 () Bool)

(assert (=> d!959844 (= (list!13331 lt!1148440) (list!13334 (c!575699 lt!1148440)))))

(declare-fun bs!554870 () Bool)

(assert (= bs!554870 d!959844))

(declare-fun m!3747799 () Bool)

(assert (=> bs!554870 m!3747799))

(assert (=> d!959378 d!959844))

(assert (=> b!3381970 d!959208))

(declare-fun b!3382945 () Bool)

(declare-fun e!2100055 () List!36989)

(assert (=> b!3382945 (= e!2100055 (_2!21361 (get!11770 lt!1148436)))))

(declare-fun d!959846 () Bool)

(declare-fun e!2100056 () Bool)

(assert (=> d!959846 e!2100056))

(declare-fun res!1368685 () Bool)

(assert (=> d!959846 (=> (not res!1368685) (not e!2100056))))

(declare-fun lt!1149092 () List!36989)

(assert (=> d!959846 (= res!1368685 (= (content!5081 lt!1149092) ((_ map or) (content!5081 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (content!5081 (_2!21361 (get!11770 lt!1148436))))))))

(assert (=> d!959846 (= lt!1149092 e!2100055)))

(declare-fun c!576131 () Bool)

(assert (=> d!959846 (= c!576131 ((_ is Nil!36865) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))

(assert (=> d!959846 (= (++!9009 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))) (_2!21361 (get!11770 lt!1148436))) lt!1149092)))

(declare-fun b!3382948 () Bool)

(assert (=> b!3382948 (= e!2100056 (or (not (= (_2!21361 (get!11770 lt!1148436)) Nil!36865)) (= lt!1149092 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun b!3382947 () Bool)

(declare-fun res!1368686 () Bool)

(assert (=> b!3382947 (=> (not res!1368686) (not e!2100056))))

(assert (=> b!3382947 (= res!1368686 (= (size!27895 lt!1149092) (+ (size!27895 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (size!27895 (_2!21361 (get!11770 lt!1148436))))))))

(declare-fun b!3382946 () Bool)

(assert (=> b!3382946 (= e!2100055 (Cons!36865 (h!42285 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (++!9009 (t!263196 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (_2!21361 (get!11770 lt!1148436)))))))

(assert (= (and d!959846 c!576131) b!3382945))

(assert (= (and d!959846 (not c!576131)) b!3382946))

(assert (= (and d!959846 res!1368685) b!3382947))

(assert (= (and b!3382947 res!1368686) b!3382948))

(declare-fun m!3747801 () Bool)

(assert (=> d!959846 m!3747801))

(assert (=> d!959846 m!3746217))

(declare-fun m!3747803 () Bool)

(assert (=> d!959846 m!3747803))

(declare-fun m!3747805 () Bool)

(assert (=> d!959846 m!3747805))

(declare-fun m!3747807 () Bool)

(assert (=> b!3382947 m!3747807))

(assert (=> b!3382947 m!3746217))

(declare-fun m!3747809 () Bool)

(assert (=> b!3382947 m!3747809))

(assert (=> b!3382947 m!3746221))

(declare-fun m!3747811 () Bool)

(assert (=> b!3382946 m!3747811))

(assert (=> b!3381940 d!959846))

(assert (=> b!3381940 d!959606))

(assert (=> b!3381940 d!959610))

(assert (=> b!3381940 d!959612))

(declare-fun d!959848 () Bool)

(declare-fun c!576132 () Bool)

(assert (=> d!959848 (= c!576132 ((_ is Node!11123) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(declare-fun e!2100057 () Bool)

(assert (=> d!959848 (= (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))) e!2100057)))

(declare-fun b!3382949 () Bool)

(assert (=> b!3382949 (= e!2100057 (inv!49941 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(declare-fun b!3382950 () Bool)

(declare-fun e!2100058 () Bool)

(assert (=> b!3382950 (= e!2100057 e!2100058)))

(declare-fun res!1368687 () Bool)

(assert (=> b!3382950 (= res!1368687 (not ((_ is Leaf!17421) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))))))

(assert (=> b!3382950 (=> res!1368687 e!2100058)))

(declare-fun b!3382951 () Bool)

(assert (=> b!3382951 (= e!2100058 (inv!49942 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(assert (= (and d!959848 c!576132) b!3382949))

(assert (= (and d!959848 (not c!576132)) b!3382950))

(assert (= (and b!3382950 (not res!1368687)) b!3382951))

(declare-fun m!3747813 () Bool)

(assert (=> b!3382949 m!3747813))

(declare-fun m!3747815 () Bool)

(assert (=> b!3382951 m!3747815))

(assert (=> b!3381335 d!959848))

(declare-fun d!959850 () Bool)

(declare-fun c!576135 () Bool)

(assert (=> d!959850 (= c!576135 ((_ is Nil!36866) rules!2135))))

(declare-fun e!2100061 () (InoxSet Rule!10548))

(assert (=> d!959850 (= (content!5080 rules!2135) e!2100061)))

(declare-fun b!3382956 () Bool)

(assert (=> b!3382956 (= e!2100061 ((as const (Array Rule!10548 Bool)) false))))

(declare-fun b!3382957 () Bool)

(assert (=> b!3382957 (= e!2100061 ((_ map or) (store ((as const (Array Rule!10548 Bool)) false) (h!42286 rules!2135) true) (content!5080 (t!263197 rules!2135))))))

(assert (= (and d!959850 c!576135) b!3382956))

(assert (= (and d!959850 (not c!576135)) b!3382957))

(declare-fun m!3747817 () Bool)

(assert (=> b!3382957 m!3747817))

(declare-fun m!3747819 () Bool)

(assert (=> b!3382957 m!3747819))

(assert (=> d!959272 d!959850))

(declare-fun bm!244693 () Bool)

(declare-fun call!244699 () List!36989)

(declare-fun call!244701 () List!36989)

(assert (=> bm!244693 (= call!244699 call!244701)))

(declare-fun bm!244694 () Bool)

(declare-fun c!576136 () Bool)

(declare-fun call!244700 () List!36989)

(declare-fun call!244698 () List!36989)

(assert (=> bm!244694 (= call!244698 (++!9009 (ite c!576136 call!244700 call!244699) (ite c!576136 call!244699 call!244700)))))

(declare-fun bm!244695 () Bool)

(declare-fun c!576137 () Bool)

(assert (=> bm!244695 (= call!244701 (usedCharacters!630 (ite c!576137 (reg!10462 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) (ite c!576136 (regTwo!20779 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) (regOne!20778 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))))))))))

(declare-fun b!3382958 () Bool)

(declare-fun e!2100065 () List!36989)

(assert (=> b!3382958 (= e!2100065 call!244698)))

(declare-fun c!576138 () Bool)

(declare-fun d!959852 () Bool)

(assert (=> d!959852 (= c!576138 (or ((_ is EmptyExpr!10133) (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) ((_ is EmptyLang!10133) (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))))))))

(declare-fun e!2100064 () List!36989)

(assert (=> d!959852 (= (usedCharacters!630 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) e!2100064)))

(declare-fun bm!244696 () Bool)

(assert (=> bm!244696 (= call!244700 (usedCharacters!630 (ite c!576136 (regOne!20779 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) (regTwo!20778 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))))

(declare-fun b!3382959 () Bool)

(assert (=> b!3382959 (= e!2100064 Nil!36865)))

(declare-fun b!3382960 () Bool)

(declare-fun e!2100063 () List!36989)

(assert (=> b!3382960 (= e!2100063 e!2100065)))

(assert (=> b!3382960 (= c!576136 ((_ is Union!10133) (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(declare-fun e!2100062 () List!36989)

(declare-fun b!3382961 () Bool)

(assert (=> b!3382961 (= e!2100062 (Cons!36865 (c!575698 (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))) Nil!36865))))

(declare-fun b!3382962 () Bool)

(assert (=> b!3382962 (= e!2100065 call!244698)))

(declare-fun b!3382963 () Bool)

(assert (=> b!3382963 (= e!2100063 call!244701)))

(declare-fun b!3382964 () Bool)

(assert (=> b!3382964 (= c!576137 ((_ is Star!10133) (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(assert (=> b!3382964 (= e!2100062 e!2100063)))

(declare-fun b!3382965 () Bool)

(assert (=> b!3382965 (= e!2100064 e!2100062)))

(declare-fun c!576139 () Bool)

(assert (=> b!3382965 (= c!576139 ((_ is ElementMatch!10133) (ite c!575748 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!575747 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(assert (= (and d!959852 c!576138) b!3382959))

(assert (= (and d!959852 (not c!576138)) b!3382965))

(assert (= (and b!3382965 c!576139) b!3382961))

(assert (= (and b!3382965 (not c!576139)) b!3382964))

(assert (= (and b!3382964 c!576137) b!3382963))

(assert (= (and b!3382964 (not c!576137)) b!3382960))

(assert (= (and b!3382960 c!576136) b!3382962))

(assert (= (and b!3382960 (not c!576136)) b!3382958))

(assert (= (or b!3382962 b!3382958) bm!244693))

(assert (= (or b!3382962 b!3382958) bm!244696))

(assert (= (or b!3382962 b!3382958) bm!244694))

(assert (= (or b!3382963 bm!244693) bm!244695))

(declare-fun m!3747821 () Bool)

(assert (=> bm!244694 m!3747821))

(declare-fun m!3747823 () Bool)

(assert (=> bm!244695 m!3747823))

(declare-fun m!3747825 () Bool)

(assert (=> bm!244696 m!3747825))

(assert (=> bm!244529 d!959852))

(declare-fun b!3382966 () Bool)

(declare-fun res!1368694 () Bool)

(declare-fun e!2100070 () Bool)

(assert (=> b!3382966 (=> res!1368694 e!2100070)))

(assert (=> b!3382966 (= res!1368694 (not (isEmpty!21105 (tail!5355 (tail!5355 lt!1148157)))))))

(declare-fun b!3382967 () Bool)

(declare-fun res!1368688 () Bool)

(declare-fun e!2100072 () Bool)

(assert (=> b!3382967 (=> res!1368688 e!2100072)))

(declare-fun e!2100069 () Bool)

(assert (=> b!3382967 (= res!1368688 e!2100069)))

(declare-fun res!1368695 () Bool)

(assert (=> b!3382967 (=> (not res!1368695) (not e!2100069))))

(declare-fun lt!1149093 () Bool)

(assert (=> b!3382967 (= res!1368695 lt!1149093)))

(declare-fun b!3382968 () Bool)

(declare-fun e!2100066 () Bool)

(declare-fun call!244702 () Bool)

(assert (=> b!3382968 (= e!2100066 (= lt!1149093 call!244702))))

(declare-fun d!959854 () Bool)

(assert (=> d!959854 e!2100066))

(declare-fun c!576142 () Bool)

(assert (=> d!959854 (= c!576142 ((_ is EmptyExpr!10133) (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157))))))

(declare-fun e!2100068 () Bool)

(assert (=> d!959854 (= lt!1149093 e!2100068)))

(declare-fun c!576141 () Bool)

(assert (=> d!959854 (= c!576141 (isEmpty!21105 (tail!5355 lt!1148157)))))

(assert (=> d!959854 (validRegex!4607 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)))))

(assert (=> d!959854 (= (matchR!4725 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)) (tail!5355 lt!1148157)) lt!1149093)))

(declare-fun b!3382969 () Bool)

(declare-fun res!1368693 () Bool)

(assert (=> b!3382969 (=> res!1368693 e!2100072)))

(assert (=> b!3382969 (= res!1368693 (not ((_ is ElementMatch!10133) (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)))))))

(declare-fun e!2100067 () Bool)

(assert (=> b!3382969 (= e!2100067 e!2100072)))

(declare-fun b!3382970 () Bool)

(assert (=> b!3382970 (= e!2100068 (nullable!3451 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157))))))

(declare-fun b!3382971 () Bool)

(declare-fun res!1368690 () Bool)

(assert (=> b!3382971 (=> (not res!1368690) (not e!2100069))))

(assert (=> b!3382971 (= res!1368690 (isEmpty!21105 (tail!5355 (tail!5355 lt!1148157))))))

(declare-fun bm!244697 () Bool)

(assert (=> bm!244697 (= call!244702 (isEmpty!21105 (tail!5355 lt!1148157)))))

(declare-fun b!3382972 () Bool)

(assert (=> b!3382972 (= e!2100068 (matchR!4725 (derivativeStep!3004 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)) (head!7225 (tail!5355 lt!1148157))) (tail!5355 (tail!5355 lt!1148157))))))

(declare-fun b!3382973 () Bool)

(assert (=> b!3382973 (= e!2100067 (not lt!1149093))))

(declare-fun b!3382974 () Bool)

(declare-fun e!2100071 () Bool)

(assert (=> b!3382974 (= e!2100072 e!2100071)))

(declare-fun res!1368689 () Bool)

(assert (=> b!3382974 (=> (not res!1368689) (not e!2100071))))

(assert (=> b!3382974 (= res!1368689 (not lt!1149093))))

(declare-fun b!3382975 () Bool)

(assert (=> b!3382975 (= e!2100071 e!2100070)))

(declare-fun res!1368692 () Bool)

(assert (=> b!3382975 (=> res!1368692 e!2100070)))

(assert (=> b!3382975 (= res!1368692 call!244702)))

(declare-fun b!3382976 () Bool)

(assert (=> b!3382976 (= e!2100069 (= (head!7225 (tail!5355 lt!1148157)) (c!575698 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)))))))

(declare-fun b!3382977 () Bool)

(assert (=> b!3382977 (= e!2100070 (not (= (head!7225 (tail!5355 lt!1148157)) (c!575698 (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157))))))))

(declare-fun b!3382978 () Bool)

(declare-fun res!1368691 () Bool)

(assert (=> b!3382978 (=> (not res!1368691) (not e!2100069))))

(assert (=> b!3382978 (= res!1368691 (not call!244702))))

(declare-fun b!3382979 () Bool)

(assert (=> b!3382979 (= e!2100066 e!2100067)))

(declare-fun c!576140 () Bool)

(assert (=> b!3382979 (= c!576140 ((_ is EmptyLang!10133) (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157))))))

(assert (= (and d!959854 c!576141) b!3382970))

(assert (= (and d!959854 (not c!576141)) b!3382972))

(assert (= (and d!959854 c!576142) b!3382968))

(assert (= (and d!959854 (not c!576142)) b!3382979))

(assert (= (and b!3382979 c!576140) b!3382973))

(assert (= (and b!3382979 (not c!576140)) b!3382969))

(assert (= (and b!3382969 (not res!1368693)) b!3382967))

(assert (= (and b!3382967 res!1368695) b!3382978))

(assert (= (and b!3382978 res!1368691) b!3382971))

(assert (= (and b!3382971 res!1368690) b!3382976))

(assert (= (and b!3382967 (not res!1368688)) b!3382974))

(assert (= (and b!3382974 res!1368689) b!3382975))

(assert (= (and b!3382975 (not res!1368692)) b!3382966))

(assert (= (and b!3382966 (not res!1368694)) b!3382977))

(assert (= (or b!3382968 b!3382975 b!3382978) bm!244697))

(assert (=> b!3382970 m!3746271))

(declare-fun m!3747827 () Bool)

(assert (=> b!3382970 m!3747827))

(assert (=> bm!244697 m!3745843))

(assert (=> bm!244697 m!3745845))

(assert (=> d!959854 m!3745843))

(assert (=> d!959854 m!3745845))

(assert (=> d!959854 m!3746271))

(declare-fun m!3747829 () Bool)

(assert (=> d!959854 m!3747829))

(assert (=> b!3382971 m!3745843))

(assert (=> b!3382971 m!3746515))

(assert (=> b!3382971 m!3746515))

(assert (=> b!3382971 m!3746519))

(assert (=> b!3382972 m!3745843))

(assert (=> b!3382972 m!3746523))

(assert (=> b!3382972 m!3746271))

(assert (=> b!3382972 m!3746523))

(declare-fun m!3747831 () Bool)

(assert (=> b!3382972 m!3747831))

(assert (=> b!3382972 m!3745843))

(assert (=> b!3382972 m!3746515))

(assert (=> b!3382972 m!3747831))

(assert (=> b!3382972 m!3746515))

(declare-fun m!3747833 () Bool)

(assert (=> b!3382972 m!3747833))

(assert (=> b!3382966 m!3745843))

(assert (=> b!3382966 m!3746515))

(assert (=> b!3382966 m!3746515))

(assert (=> b!3382966 m!3746519))

(assert (=> b!3382976 m!3745843))

(assert (=> b!3382976 m!3746523))

(assert (=> b!3382977 m!3745843))

(assert (=> b!3382977 m!3746523))

(assert (=> b!3381966 d!959854))

(declare-fun b!3382980 () Bool)

(declare-fun e!2100076 () Regex!10133)

(declare-fun call!244706 () Regex!10133)

(assert (=> b!3382980 (= e!2100076 (Union!10133 (Concat!15737 call!244706 (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241)))) EmptyLang!10133))))

(declare-fun b!3382981 () Bool)

(declare-fun e!2100077 () Regex!10133)

(declare-fun e!2100073 () Regex!10133)

(assert (=> b!3382981 (= e!2100077 e!2100073)))

(declare-fun c!576145 () Bool)

(assert (=> b!3382981 (= c!576145 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun bm!244698 () Bool)

(declare-fun call!244703 () Regex!10133)

(assert (=> bm!244698 (= call!244706 call!244703)))

(declare-fun b!3382982 () Bool)

(declare-fun e!2100075 () Regex!10133)

(declare-fun e!2100074 () Regex!10133)

(assert (=> b!3382982 (= e!2100075 e!2100074)))

(declare-fun c!576146 () Bool)

(assert (=> b!3382982 (= c!576146 ((_ is Star!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun d!959856 () Bool)

(declare-fun lt!1149094 () Regex!10133)

(assert (=> d!959856 (validRegex!4607 lt!1149094)))

(assert (=> d!959856 (= lt!1149094 e!2100077)))

(declare-fun c!576147 () Bool)

(assert (=> d!959856 (= c!576147 (or ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 separatorToken!241))) ((_ is EmptyLang!10133) (regex!5374 (rule!7926 separatorToken!241)))))))

(assert (=> d!959856 (validRegex!4607 (regex!5374 (rule!7926 separatorToken!241)))))

(assert (=> d!959856 (= (derivativeStep!3004 (regex!5374 (rule!7926 separatorToken!241)) (head!7225 lt!1148157)) lt!1149094)))

(declare-fun bm!244699 () Bool)

(declare-fun c!576144 () Bool)

(declare-fun call!244705 () Regex!10133)

(assert (=> bm!244699 (= call!244705 (derivativeStep!3004 (ite c!576144 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (ite c!576146 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))) (head!7225 lt!1148157)))))

(declare-fun b!3382983 () Bool)

(declare-fun call!244704 () Regex!10133)

(assert (=> b!3382983 (= e!2100076 (Union!10133 (Concat!15737 call!244706 (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241)))) call!244704))))

(declare-fun bm!244700 () Bool)

(assert (=> bm!244700 (= call!244703 call!244705)))

(declare-fun b!3382984 () Bool)

(declare-fun c!576143 () Bool)

(assert (=> b!3382984 (= c!576143 (nullable!3451 (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))

(assert (=> b!3382984 (= e!2100074 e!2100076)))

(declare-fun b!3382985 () Bool)

(assert (=> b!3382985 (= c!576144 ((_ is Union!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(assert (=> b!3382985 (= e!2100073 e!2100075)))

(declare-fun b!3382986 () Bool)

(assert (=> b!3382986 (= e!2100075 (Union!10133 call!244705 call!244704))))

(declare-fun b!3382987 () Bool)

(assert (=> b!3382987 (= e!2100077 EmptyLang!10133)))

(declare-fun b!3382988 () Bool)

(assert (=> b!3382988 (= e!2100073 (ite (= (head!7225 lt!1148157) (c!575698 (regex!5374 (rule!7926 separatorToken!241)))) EmptyExpr!10133 EmptyLang!10133))))

(declare-fun b!3382989 () Bool)

(assert (=> b!3382989 (= e!2100074 (Concat!15737 call!244703 (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun bm!244701 () Bool)

(assert (=> bm!244701 (= call!244704 (derivativeStep!3004 (ite c!576144 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241)))) (head!7225 lt!1148157)))))

(assert (= (and d!959856 c!576147) b!3382987))

(assert (= (and d!959856 (not c!576147)) b!3382981))

(assert (= (and b!3382981 c!576145) b!3382988))

(assert (= (and b!3382981 (not c!576145)) b!3382985))

(assert (= (and b!3382985 c!576144) b!3382986))

(assert (= (and b!3382985 (not c!576144)) b!3382982))

(assert (= (and b!3382982 c!576146) b!3382989))

(assert (= (and b!3382982 (not c!576146)) b!3382984))

(assert (= (and b!3382984 c!576143) b!3382983))

(assert (= (and b!3382984 (not c!576143)) b!3382980))

(assert (= (or b!3382983 b!3382980) bm!244698))

(assert (= (or b!3382989 bm!244698) bm!244700))

(assert (= (or b!3382986 bm!244700) bm!244699))

(assert (= (or b!3382986 b!3382983) bm!244701))

(declare-fun m!3747835 () Bool)

(assert (=> d!959856 m!3747835))

(assert (=> d!959856 m!3746267))

(assert (=> bm!244699 m!3745373))

(declare-fun m!3747837 () Bool)

(assert (=> bm!244699 m!3747837))

(declare-fun m!3747839 () Bool)

(assert (=> b!3382984 m!3747839))

(assert (=> bm!244701 m!3745373))

(declare-fun m!3747841 () Bool)

(assert (=> bm!244701 m!3747841))

(assert (=> b!3381966 d!959856))

(assert (=> b!3381966 d!959208))

(assert (=> b!3381966 d!959492))

(declare-fun b!3382990 () Bool)

(declare-fun e!2100078 () List!36989)

(assert (=> b!3382990 (= e!2100078 (ite c!575769 call!244538 call!244539))))

(declare-fun d!959858 () Bool)

(declare-fun e!2100079 () Bool)

(assert (=> d!959858 e!2100079))

(declare-fun res!1368696 () Bool)

(assert (=> d!959858 (=> (not res!1368696) (not e!2100079))))

(declare-fun lt!1149095 () List!36989)

(assert (=> d!959858 (= res!1368696 (= (content!5081 lt!1149095) ((_ map or) (content!5081 (ite c!575769 call!244539 call!244538)) (content!5081 (ite c!575769 call!244538 call!244539)))))))

(assert (=> d!959858 (= lt!1149095 e!2100078)))

(declare-fun c!576148 () Bool)

(assert (=> d!959858 (= c!576148 ((_ is Nil!36865) (ite c!575769 call!244539 call!244538)))))

(assert (=> d!959858 (= (++!9009 (ite c!575769 call!244539 call!244538) (ite c!575769 call!244538 call!244539)) lt!1149095)))

(declare-fun b!3382993 () Bool)

(assert (=> b!3382993 (= e!2100079 (or (not (= (ite c!575769 call!244538 call!244539) Nil!36865)) (= lt!1149095 (ite c!575769 call!244539 call!244538))))))

(declare-fun b!3382992 () Bool)

(declare-fun res!1368697 () Bool)

(assert (=> b!3382992 (=> (not res!1368697) (not e!2100079))))

(assert (=> b!3382992 (= res!1368697 (= (size!27895 lt!1149095) (+ (size!27895 (ite c!575769 call!244539 call!244538)) (size!27895 (ite c!575769 call!244538 call!244539)))))))

(declare-fun b!3382991 () Bool)

(assert (=> b!3382991 (= e!2100078 (Cons!36865 (h!42285 (ite c!575769 call!244539 call!244538)) (++!9009 (t!263196 (ite c!575769 call!244539 call!244538)) (ite c!575769 call!244538 call!244539))))))

(assert (= (and d!959858 c!576148) b!3382990))

(assert (= (and d!959858 (not c!576148)) b!3382991))

(assert (= (and d!959858 res!1368696) b!3382992))

(assert (= (and b!3382992 res!1368697) b!3382993))

(declare-fun m!3747843 () Bool)

(assert (=> d!959858 m!3747843))

(declare-fun m!3747845 () Bool)

(assert (=> d!959858 m!3747845))

(declare-fun m!3747847 () Bool)

(assert (=> d!959858 m!3747847))

(declare-fun m!3747849 () Bool)

(assert (=> b!3382992 m!3747849))

(declare-fun m!3747851 () Bool)

(assert (=> b!3382992 m!3747851))

(declare-fun m!3747853 () Bool)

(assert (=> b!3382992 m!3747853))

(declare-fun m!3747855 () Bool)

(assert (=> b!3382991 m!3747855))

(assert (=> bm!244533 d!959858))

(declare-fun d!959860 () Bool)

(assert (=> d!959860 (= (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))) (list!13334 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))))))

(declare-fun bs!554871 () Bool)

(assert (= bs!554871 d!959860))

(declare-fun m!3747857 () Bool)

(assert (=> bs!554871 m!3747857))

(assert (=> b!3381323 d!959860))

(declare-fun d!959862 () Bool)

(declare-fun lt!1149096 () Int)

(assert (=> d!959862 (>= lt!1149096 0)))

(declare-fun e!2100080 () Int)

(assert (=> d!959862 (= lt!1149096 e!2100080)))

(declare-fun c!576149 () Bool)

(assert (=> d!959862 (= c!576149 ((_ is Nil!36865) (_2!21361 (get!11770 lt!1148436))))))

(assert (=> d!959862 (= (size!27895 (_2!21361 (get!11770 lt!1148436))) lt!1149096)))

(declare-fun b!3382994 () Bool)

(assert (=> b!3382994 (= e!2100080 0)))

(declare-fun b!3382995 () Bool)

(assert (=> b!3382995 (= e!2100080 (+ 1 (size!27895 (t!263196 (_2!21361 (get!11770 lt!1148436))))))))

(assert (= (and d!959862 c!576149) b!3382994))

(assert (= (and d!959862 (not c!576149)) b!3382995))

(declare-fun m!3747859 () Bool)

(assert (=> b!3382995 m!3747859))

(assert (=> b!3381936 d!959862))

(assert (=> b!3381936 d!959612))

(assert (=> b!3381936 d!959224))

(assert (=> b!3381316 d!959726))

(declare-fun d!959864 () Bool)

(declare-fun lt!1149097 () Int)

(assert (=> d!959864 (>= lt!1149097 0)))

(declare-fun e!2100081 () Int)

(assert (=> d!959864 (= lt!1149097 e!2100081)))

(declare-fun c!576150 () Bool)

(assert (=> d!959864 (= c!576150 ((_ is Nil!36865) (_2!21361 (get!11770 lt!1148306))))))

(assert (=> d!959864 (= (size!27895 (_2!21361 (get!11770 lt!1148306))) lt!1149097)))

(declare-fun b!3382996 () Bool)

(assert (=> b!3382996 (= e!2100081 0)))

(declare-fun b!3382997 () Bool)

(assert (=> b!3382997 (= e!2100081 (+ 1 (size!27895 (t!263196 (_2!21361 (get!11770 lt!1148306))))))))

(assert (= (and d!959864 c!576150) b!3382996))

(assert (= (and d!959864 (not c!576150)) b!3382997))

(declare-fun m!3747861 () Bool)

(assert (=> b!3382997 m!3747861))

(assert (=> b!3381498 d!959864))

(assert (=> b!3381498 d!959470))

(assert (=> b!3381498 d!959224))

(declare-fun d!959866 () Bool)

(declare-fun res!1368702 () Bool)

(declare-fun e!2100086 () Bool)

(assert (=> d!959866 (=> res!1368702 e!2100086)))

(assert (=> d!959866 (= res!1368702 ((_ is Nil!36866) rules!2135))))

(assert (=> d!959866 (= (noDuplicateTag!1999 thiss!18206 rules!2135 Nil!36869) e!2100086)))

(declare-fun b!3383002 () Bool)

(declare-fun e!2100087 () Bool)

(assert (=> b!3383002 (= e!2100086 e!2100087)))

(declare-fun res!1368703 () Bool)

(assert (=> b!3383002 (=> (not res!1368703) (not e!2100087))))

(declare-fun contains!6747 (List!36993 String!41354) Bool)

(assert (=> b!3383002 (= res!1368703 (not (contains!6747 Nil!36869 (tag!5950 (h!42286 rules!2135)))))))

(declare-fun b!3383003 () Bool)

(assert (=> b!3383003 (= e!2100087 (noDuplicateTag!1999 thiss!18206 (t!263197 rules!2135) (Cons!36869 (tag!5950 (h!42286 rules!2135)) Nil!36869)))))

(assert (= (and d!959866 (not res!1368702)) b!3383002))

(assert (= (and b!3383002 res!1368703) b!3383003))

(declare-fun m!3747863 () Bool)

(assert (=> b!3383002 m!3747863))

(declare-fun m!3747865 () Bool)

(assert (=> b!3383003 m!3747865))

(assert (=> b!3381250 d!959866))

(declare-fun d!959868 () Bool)

(declare-fun c!576151 () Bool)

(assert (=> d!959868 (= c!576151 ((_ is Nil!36865) lt!1148443))))

(declare-fun e!2100088 () (InoxSet C!20452))

(assert (=> d!959868 (= (content!5081 lt!1148443) e!2100088)))

(declare-fun b!3383004 () Bool)

(assert (=> b!3383004 (= e!2100088 ((as const (Array C!20452 Bool)) false))))

(declare-fun b!3383005 () Bool)

(assert (=> b!3383005 (= e!2100088 ((_ map or) (store ((as const (Array C!20452 Bool)) false) (h!42285 lt!1148443) true) (content!5081 (t!263196 lt!1148443))))))

(assert (= (and d!959868 c!576151) b!3383004))

(assert (= (and d!959868 (not c!576151)) b!3383005))

(declare-fun m!3747867 () Bool)

(assert (=> b!3383005 m!3747867))

(declare-fun m!3747869 () Bool)

(assert (=> b!3383005 m!3747869))

(assert (=> d!959380 d!959868))

(declare-fun d!959870 () Bool)

(declare-fun c!576152 () Bool)

(assert (=> d!959870 (= c!576152 ((_ is Nil!36865) lt!1148159))))

(declare-fun e!2100089 () (InoxSet C!20452))

(assert (=> d!959870 (= (content!5081 lt!1148159) e!2100089)))

(declare-fun b!3383006 () Bool)

(assert (=> b!3383006 (= e!2100089 ((as const (Array C!20452 Bool)) false))))

(declare-fun b!3383007 () Bool)

(assert (=> b!3383007 (= e!2100089 ((_ map or) (store ((as const (Array C!20452 Bool)) false) (h!42285 lt!1148159) true) (content!5081 (t!263196 lt!1148159))))))

(assert (= (and d!959870 c!576152) b!3383006))

(assert (= (and d!959870 (not c!576152)) b!3383007))

(declare-fun m!3747871 () Bool)

(assert (=> b!3383007 m!3747871))

(declare-fun m!3747873 () Bool)

(assert (=> b!3383007 m!3747873))

(assert (=> d!959380 d!959870))

(declare-fun d!959872 () Bool)

(declare-fun c!576153 () Bool)

(assert (=> d!959872 (= c!576153 ((_ is Nil!36865) lt!1148157))))

(declare-fun e!2100090 () (InoxSet C!20452))

(assert (=> d!959872 (= (content!5081 lt!1148157) e!2100090)))

(declare-fun b!3383008 () Bool)

(assert (=> b!3383008 (= e!2100090 ((as const (Array C!20452 Bool)) false))))

(declare-fun b!3383009 () Bool)

(assert (=> b!3383009 (= e!2100090 ((_ map or) (store ((as const (Array C!20452 Bool)) false) (h!42285 lt!1148157) true) (content!5081 (t!263196 lt!1148157))))))

(assert (= (and d!959872 c!576153) b!3383008))

(assert (= (and d!959872 (not c!576153)) b!3383009))

(declare-fun m!3747875 () Bool)

(assert (=> b!3383009 m!3747875))

(declare-fun m!3747877 () Bool)

(assert (=> b!3383009 m!3747877))

(assert (=> d!959380 d!959872))

(assert (=> d!959278 d!959274))

(assert (=> d!959278 d!959276))

(declare-fun d!959874 () Bool)

(assert (=> d!959874 (not (contains!6743 (usedCharacters!630 (regex!5374 (rule!7926 (h!42287 tokens!494)))) lt!1148163))))

(assert (=> d!959874 true))

(declare-fun _$73!238 () Unit!51972)

(assert (=> d!959874 (= (choose!19574 thiss!18206 rules!2135 rules!2135 (rule!7926 (h!42287 tokens!494)) (rule!7926 separatorToken!241) lt!1148163) _$73!238)))

(declare-fun bs!554872 () Bool)

(assert (= bs!554872 d!959874))

(assert (=> bs!554872 m!3745339))

(assert (=> bs!554872 m!3745339))

(assert (=> bs!554872 m!3745341))

(assert (=> d!959278 d!959874))

(assert (=> d!959278 d!959146))

(declare-fun d!959876 () Bool)

(assert (=> d!959876 (= (nullable!3451 (regex!5374 (rule!7926 separatorToken!241))) (nullableFct!996 (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun bs!554873 () Bool)

(assert (= bs!554873 d!959876))

(declare-fun m!3747879 () Bool)

(assert (=> bs!554873 m!3747879))

(assert (=> b!3381964 d!959876))

(declare-fun d!959878 () Bool)

(assert (=> d!959878 (= (inv!49932 (tag!5950 (rule!7926 (h!42287 (t!263198 tokens!494))))) (= (mod (str.len (value!173618 (tag!5950 (rule!7926 (h!42287 (t!263198 tokens!494)))))) 2) 0))))

(assert (=> b!3382030 d!959878))

(declare-fun d!959880 () Bool)

(declare-fun res!1368704 () Bool)

(declare-fun e!2100091 () Bool)

(assert (=> d!959880 (=> (not res!1368704) (not e!2100091))))

(assert (=> d!959880 (= res!1368704 (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))))))

(assert (=> d!959880 (= (inv!49936 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) e!2100091)))

(declare-fun b!3383010 () Bool)

(assert (=> b!3383010 (= e!2100091 (equivClasses!2142 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))))))

(assert (= (and d!959880 res!1368704) b!3383010))

(declare-fun m!3747881 () Bool)

(assert (=> d!959880 m!3747881))

(declare-fun m!3747883 () Bool)

(assert (=> b!3383010 m!3747883))

(assert (=> b!3382030 d!959880))

(declare-fun d!959882 () Bool)

(assert (=> d!959882 (= (isEmpty!21105 (originalCharacters!6088 separatorToken!241)) ((_ is Nil!36865) (originalCharacters!6088 separatorToken!241)))))

(assert (=> d!959180 d!959882))

(declare-fun d!959884 () Bool)

(declare-fun e!2100094 () Bool)

(assert (=> d!959884 e!2100094))

(declare-fun res!1368707 () Bool)

(assert (=> d!959884 (=> (not res!1368707) (not e!2100094))))

(declare-fun lt!1149100 () BalanceConc!21860)

(assert (=> d!959884 (= res!1368707 (= (list!13331 lt!1149100) lt!1148159))))

(declare-fun fromList!702 (List!36989) Conc!11123)

(assert (=> d!959884 (= lt!1149100 (BalanceConc!21861 (fromList!702 lt!1148159)))))

(assert (=> d!959884 (= (fromListB!1702 lt!1148159) lt!1149100)))

(declare-fun b!3383013 () Bool)

(assert (=> b!3383013 (= e!2100094 (isBalanced!3355 (fromList!702 lt!1148159)))))

(assert (= (and d!959884 res!1368707) b!3383013))

(declare-fun m!3747885 () Bool)

(assert (=> d!959884 m!3747885))

(declare-fun m!3747887 () Bool)

(assert (=> d!959884 m!3747887))

(assert (=> b!3383013 m!3747887))

(assert (=> b!3383013 m!3747887))

(declare-fun m!3747889 () Bool)

(assert (=> b!3383013 m!3747889))

(assert (=> d!959190 d!959884))

(assert (=> d!959252 d!959224))

(declare-fun d!959886 () Bool)

(assert (=> d!959886 (= (maxPrefixOneRule!1686 thiss!18206 (rule!7926 (h!42287 tokens!494)) lt!1148159) (Some!7395 (tuple2!36455 (Token!10115 (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 lt!1148159)) (rule!7926 (h!42287 tokens!494)) (size!27895 lt!1148159) lt!1148159) Nil!36865)))))

(assert (=> d!959886 true))

(declare-fun _$59!460 () Unit!51972)

(assert (=> d!959886 (= (choose!19570 thiss!18206 rules!2135 lt!1148159 lt!1148159 Nil!36865 (rule!7926 (h!42287 tokens!494))) _$59!460)))

(declare-fun bs!554874 () Bool)

(assert (= bs!554874 d!959886))

(assert (=> bs!554874 m!3745377))

(assert (=> bs!554874 m!3745309))

(assert (=> bs!554874 m!3745309))

(assert (=> bs!554874 m!3745811))

(assert (=> bs!554874 m!3745389))

(assert (=> d!959252 d!959886))

(assert (=> d!959252 d!959170))

(declare-fun d!959888 () Bool)

(assert (=> d!959888 (= (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 lt!1148159)) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 lt!1148159)))))

(declare-fun b_lambda!96063 () Bool)

(assert (=> (not b_lambda!96063) (not d!959888)))

(declare-fun tb!180159 () Bool)

(declare-fun t!263382 () Bool)

(assert (=> (and b!3381208 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263382) tb!180159))

(declare-fun result!223636 () Bool)

(assert (=> tb!180159 (= result!223636 (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 lt!1148159))))))

(declare-fun m!3747891 () Bool)

(assert (=> tb!180159 m!3747891))

(assert (=> d!959888 t!263382))

(declare-fun b_and!235125 () Bool)

(assert (= b_and!234965 (and (=> t!263382 result!223636) b_and!235125)))

(declare-fun t!263384 () Bool)

(declare-fun tb!180161 () Bool)

(assert (=> (and b!3381233 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263384) tb!180161))

(declare-fun result!223638 () Bool)

(assert (= result!223638 result!223636))

(assert (=> d!959888 t!263384))

(declare-fun b_and!235127 () Bool)

(assert (= b_and!234967 (and (=> t!263384 result!223638) b_and!235127)))

(declare-fun tb!180163 () Bool)

(declare-fun t!263386 () Bool)

(assert (=> (and b!3382017 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263386) tb!180163))

(declare-fun result!223640 () Bool)

(assert (= result!223640 result!223636))

(assert (=> d!959888 t!263386))

(declare-fun b_and!235129 () Bool)

(assert (= b_and!235007 (and (=> t!263386 result!223640) b_and!235129)))

(declare-fun t!263388 () Bool)

(declare-fun tb!180165 () Bool)

(assert (=> (and b!3382031 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263388) tb!180165))

(declare-fun result!223642 () Bool)

(assert (= result!223642 result!223636))

(assert (=> d!959888 t!263388))

(declare-fun b_and!235131 () Bool)

(assert (= b_and!235011 (and (=> t!263388 result!223642) b_and!235131)))

(declare-fun tb!180167 () Bool)

(declare-fun t!263390 () Bool)

(assert (=> (and b!3381213 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263390) tb!180167))

(declare-fun result!223644 () Bool)

(assert (= result!223644 result!223636))

(assert (=> d!959888 t!263390))

(declare-fun b_and!235133 () Bool)

(assert (= b_and!234963 (and (=> t!263390 result!223644) b_and!235133)))

(assert (=> d!959888 m!3745309))

(declare-fun m!3747893 () Bool)

(assert (=> d!959888 m!3747893))

(assert (=> d!959252 d!959888))

(assert (=> d!959252 d!959244))

(assert (=> d!959252 d!959190))

(declare-fun b!3383022 () Bool)

(declare-fun e!2100102 () Bool)

(declare-fun e!2100103 () Bool)

(assert (=> b!3383022 (= e!2100102 e!2100103)))

(declare-fun res!1368712 () Bool)

(assert (=> b!3383022 (= res!1368712 (not ((_ is Cons!36866) rules!2135)))))

(assert (=> b!3383022 (=> res!1368712 e!2100103)))

(declare-fun b!3383023 () Bool)

(declare-fun e!2100104 () Bool)

(assert (=> b!3383023 (= e!2100102 e!2100104)))

(declare-fun res!1368713 () Bool)

(declare-fun rulesUseDisjointChars!320 (Rule!10548 Rule!10548) Bool)

(assert (=> b!3383023 (= res!1368713 (rulesUseDisjointChars!320 (h!42286 rules!2135) (h!42286 rules!2135)))))

(assert (=> b!3383023 (=> (not res!1368713) (not e!2100104))))

(declare-fun bm!244704 () Bool)

(declare-fun call!244709 () Bool)

(assert (=> bm!244704 (= call!244709 (ruleDisjointCharsFromAllFromOtherType!679 (h!42286 rules!2135) (t!263197 rules!2135)))))

(declare-fun b!3383025 () Bool)

(assert (=> b!3383025 (= e!2100103 call!244709)))

(declare-fun b!3383024 () Bool)

(assert (=> b!3383024 (= e!2100104 call!244709)))

(declare-fun d!959890 () Bool)

(declare-fun c!576158 () Bool)

(assert (=> d!959890 (= c!576158 (and ((_ is Cons!36866) rules!2135) (not (= (isSeparator!5374 (h!42286 rules!2135)) (isSeparator!5374 (h!42286 rules!2135))))))))

(assert (=> d!959890 (= (ruleDisjointCharsFromAllFromOtherType!679 (h!42286 rules!2135) rules!2135) e!2100102)))

(assert (= (and d!959890 c!576158) b!3383023))

(assert (= (and d!959890 (not c!576158)) b!3383022))

(assert (= (and b!3383023 res!1368713) b!3383024))

(assert (= (and b!3383022 (not res!1368712)) b!3383025))

(assert (= (or b!3383024 b!3383025) bm!244704))

(declare-fun m!3747895 () Bool)

(assert (=> b!3383023 m!3747895))

(declare-fun m!3747897 () Bool)

(assert (=> bm!244704 m!3747897))

(assert (=> b!3381554 d!959890))

(assert (=> d!959390 d!959740))

(declare-fun b!3383044 () Bool)

(declare-fun e!2100124 () Bool)

(declare-fun e!2100125 () Bool)

(assert (=> b!3383044 (= e!2100124 e!2100125)))

(declare-fun res!1368724 () Bool)

(assert (=> b!3383044 (= res!1368724 (not (nullable!3451 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))))))))

(assert (=> b!3383044 (=> (not res!1368724) (not e!2100125))))

(declare-fun b!3383045 () Bool)

(declare-fun e!2100120 () Bool)

(declare-fun call!244718 () Bool)

(assert (=> b!3383045 (= e!2100120 call!244718)))

(declare-fun b!3383046 () Bool)

(declare-fun res!1368726 () Bool)

(assert (=> b!3383046 (=> (not res!1368726) (not e!2100120))))

(declare-fun call!244717 () Bool)

(assert (=> b!3383046 (= res!1368726 call!244717)))

(declare-fun e!2100119 () Bool)

(assert (=> b!3383046 (= e!2100119 e!2100120)))

(declare-fun bm!244711 () Bool)

(declare-fun c!576163 () Bool)

(assert (=> bm!244711 (= call!244718 (validRegex!4607 (ite c!576163 (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))

(declare-fun b!3383047 () Bool)

(declare-fun res!1368727 () Bool)

(declare-fun e!2100121 () Bool)

(assert (=> b!3383047 (=> res!1368727 e!2100121)))

(assert (=> b!3383047 (= res!1368727 (not ((_ is Concat!15737) (regex!5374 (rule!7926 separatorToken!241)))))))

(assert (=> b!3383047 (= e!2100119 e!2100121)))

(declare-fun bm!244712 () Bool)

(declare-fun call!244716 () Bool)

(assert (=> bm!244712 (= call!244717 call!244716)))

(declare-fun bm!244713 () Bool)

(declare-fun c!576164 () Bool)

(assert (=> bm!244713 (= call!244716 (validRegex!4607 (ite c!576164 (reg!10462 (regex!5374 (rule!7926 separatorToken!241))) (ite c!576163 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(declare-fun d!959892 () Bool)

(declare-fun res!1368728 () Bool)

(declare-fun e!2100122 () Bool)

(assert (=> d!959892 (=> res!1368728 e!2100122)))

(assert (=> d!959892 (= res!1368728 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(assert (=> d!959892 (= (validRegex!4607 (regex!5374 (rule!7926 separatorToken!241))) e!2100122)))

(declare-fun b!3383048 () Bool)

(declare-fun e!2100123 () Bool)

(assert (=> b!3383048 (= e!2100121 e!2100123)))

(declare-fun res!1368725 () Bool)

(assert (=> b!3383048 (=> (not res!1368725) (not e!2100123))))

(assert (=> b!3383048 (= res!1368725 call!244717)))

(declare-fun b!3383049 () Bool)

(assert (=> b!3383049 (= e!2100123 call!244718)))

(declare-fun b!3383050 () Bool)

(assert (=> b!3383050 (= e!2100124 e!2100119)))

(assert (=> b!3383050 (= c!576163 ((_ is Union!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun b!3383051 () Bool)

(assert (=> b!3383051 (= e!2100122 e!2100124)))

(assert (=> b!3383051 (= c!576164 ((_ is Star!10133) (regex!5374 (rule!7926 separatorToken!241))))))

(declare-fun b!3383052 () Bool)

(assert (=> b!3383052 (= e!2100125 call!244716)))

(assert (= (and d!959892 (not res!1368728)) b!3383051))

(assert (= (and b!3383051 c!576164) b!3383044))

(assert (= (and b!3383051 (not c!576164)) b!3383050))

(assert (= (and b!3383044 res!1368724) b!3383052))

(assert (= (and b!3383050 c!576163) b!3383046))

(assert (= (and b!3383050 (not c!576163)) b!3383047))

(assert (= (and b!3383046 res!1368726) b!3383045))

(assert (= (and b!3383047 (not res!1368727)) b!3383048))

(assert (= (and b!3383048 res!1368725) b!3383049))

(assert (= (or b!3383045 b!3383049) bm!244711))

(assert (= (or b!3383046 b!3383048) bm!244712))

(assert (= (or b!3383052 bm!244712) bm!244713))

(declare-fun m!3747899 () Bool)

(assert (=> b!3383044 m!3747899))

(declare-fun m!3747901 () Bool)

(assert (=> bm!244711 m!3747901))

(declare-fun m!3747903 () Bool)

(assert (=> bm!244713 m!3747903))

(assert (=> d!959390 d!959892))

(declare-fun d!959894 () Bool)

(declare-fun lt!1149101 () Bool)

(assert (=> d!959894 (= lt!1149101 (isEmpty!21109 (list!13335 (_1!21360 lt!1148228))))))

(assert (=> d!959894 (= lt!1149101 (isEmpty!21110 (c!575700 (_1!21360 lt!1148228))))))

(assert (=> d!959894 (= (isEmpty!21104 (_1!21360 lt!1148228)) lt!1149101)))

(declare-fun bs!554875 () Bool)

(assert (= bs!554875 d!959894))

(assert (=> bs!554875 m!3745595))

(assert (=> bs!554875 m!3745595))

(declare-fun m!3747905 () Bool)

(assert (=> bs!554875 m!3747905))

(declare-fun m!3747907 () Bool)

(assert (=> bs!554875 m!3747907))

(assert (=> b!3381350 d!959894))

(declare-fun d!959896 () Bool)

(declare-fun lt!1149102 () Bool)

(assert (=> d!959896 (= lt!1149102 (isEmpty!21105 (list!13331 (_2!21360 lt!1148420))))))

(assert (=> d!959896 (= lt!1149102 (isEmpty!21116 (c!575699 (_2!21360 lt!1148420))))))

(assert (=> d!959896 (= (isEmpty!21115 (_2!21360 lt!1148420)) lt!1149102)))

(declare-fun bs!554876 () Bool)

(assert (= bs!554876 d!959896))

(declare-fun m!3747909 () Bool)

(assert (=> bs!554876 m!3747909))

(assert (=> bs!554876 m!3747909))

(declare-fun m!3747911 () Bool)

(assert (=> bs!554876 m!3747911))

(declare-fun m!3747913 () Bool)

(assert (=> bs!554876 m!3747913))

(assert (=> b!3381916 d!959896))

(declare-fun d!959898 () Bool)

(declare-fun lt!1149103 () Int)

(assert (=> d!959898 (>= lt!1149103 0)))

(declare-fun e!2100126 () Int)

(assert (=> d!959898 (= lt!1149103 e!2100126)))

(declare-fun c!576165 () Bool)

(assert (=> d!959898 (= c!576165 ((_ is Nil!36865) (t!263196 lt!1148159)))))

(assert (=> d!959898 (= (size!27895 (t!263196 lt!1148159)) lt!1149103)))

(declare-fun b!3383053 () Bool)

(assert (=> b!3383053 (= e!2100126 0)))

(declare-fun b!3383054 () Bool)

(assert (=> b!3383054 (= e!2100126 (+ 1 (size!27895 (t!263196 (t!263196 lt!1148159)))))))

(assert (= (and d!959898 c!576165) b!3383053))

(assert (= (and d!959898 (not c!576165)) b!3383054))

(declare-fun m!3747915 () Bool)

(assert (=> b!3383054 m!3747915))

(assert (=> b!3381436 d!959898))

(declare-fun d!959900 () Bool)

(assert (=> d!959900 (= (isEmpty!21105 (tail!5355 lt!1148157)) ((_ is Nil!36865) (tail!5355 lt!1148157)))))

(assert (=> b!3381960 d!959900))

(assert (=> b!3381960 d!959492))

(declare-fun d!959902 () Bool)

(assert (=> d!959902 (= (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))) (list!13334 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))))))

(declare-fun bs!554877 () Bool)

(assert (= bs!554877 d!959902))

(declare-fun m!3747917 () Bool)

(assert (=> bs!554877 m!3747917))

(assert (=> b!3381333 d!959902))

(declare-fun d!959904 () Bool)

(assert (=> d!959904 (= (isEmpty!21105 (tail!5355 lt!1148159)) ((_ is Nil!36865) (tail!5355 lt!1148159)))))

(assert (=> b!3381305 d!959904))

(assert (=> b!3381305 d!959728))

(declare-fun d!959906 () Bool)

(declare-fun lt!1149104 () Bool)

(assert (=> d!959906 (= lt!1149104 (select (content!5080 (t!263197 rules!2135)) (rule!7926 separatorToken!241)))))

(declare-fun e!2100127 () Bool)

(assert (=> d!959906 (= lt!1149104 e!2100127)))

(declare-fun res!1368729 () Bool)

(assert (=> d!959906 (=> (not res!1368729) (not e!2100127))))

(assert (=> d!959906 (= res!1368729 ((_ is Cons!36866) (t!263197 rules!2135)))))

(assert (=> d!959906 (= (contains!6742 (t!263197 rules!2135) (rule!7926 separatorToken!241)) lt!1149104)))

(declare-fun b!3383055 () Bool)

(declare-fun e!2100128 () Bool)

(assert (=> b!3383055 (= e!2100127 e!2100128)))

(declare-fun res!1368730 () Bool)

(assert (=> b!3383055 (=> res!1368730 e!2100128)))

(assert (=> b!3383055 (= res!1368730 (= (h!42286 (t!263197 rules!2135)) (rule!7926 separatorToken!241)))))

(declare-fun b!3383056 () Bool)

(assert (=> b!3383056 (= e!2100128 (contains!6742 (t!263197 (t!263197 rules!2135)) (rule!7926 separatorToken!241)))))

(assert (= (and d!959906 res!1368729) b!3383055))

(assert (= (and b!3383055 (not res!1368730)) b!3383056))

(assert (=> d!959906 m!3747819))

(declare-fun m!3747919 () Bool)

(assert (=> d!959906 m!3747919))

(declare-fun m!3747921 () Bool)

(assert (=> b!3383056 m!3747921))

(assert (=> b!3381376 d!959906))

(declare-fun d!959908 () Bool)

(declare-fun lt!1149105 () Token!10114)

(assert (=> d!959908 (= lt!1149105 (apply!8577 (list!13335 (_1!21360 lt!1148451)) 0))))

(assert (=> d!959908 (= lt!1149105 (apply!8579 (c!575700 (_1!21360 lt!1148451)) 0))))

(declare-fun e!2100129 () Bool)

(assert (=> d!959908 e!2100129))

(declare-fun res!1368731 () Bool)

(assert (=> d!959908 (=> (not res!1368731) (not e!2100129))))

(assert (=> d!959908 (= res!1368731 (<= 0 0))))

(assert (=> d!959908 (= (apply!8576 (_1!21360 lt!1148451) 0) lt!1149105)))

(declare-fun b!3383057 () Bool)

(assert (=> b!3383057 (= e!2100129 (< 0 (size!27898 (_1!21360 lt!1148451))))))

(assert (= (and d!959908 res!1368731) b!3383057))

(declare-fun m!3747923 () Bool)

(assert (=> d!959908 m!3747923))

(assert (=> d!959908 m!3747923))

(declare-fun m!3747925 () Bool)

(assert (=> d!959908 m!3747925))

(declare-fun m!3747927 () Bool)

(assert (=> d!959908 m!3747927))

(assert (=> b!3383057 m!3746283))

(assert (=> b!3381980 d!959908))

(declare-fun bs!554878 () Bool)

(declare-fun d!959910 () Bool)

(assert (= bs!554878 (and d!959910 d!959808)))

(declare-fun lambda!120518 () Int)

(assert (=> bs!554878 (= (and (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (= lambda!120518 lambda!120514))))

(assert (=> d!959910 true))

(assert (=> d!959910 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15344 order!19425 lambda!120518))))

(assert (=> d!959910 true))

(assert (=> d!959910 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (dynLambda!15344 order!19425 lambda!120518))))

(assert (=> d!959910 (= (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (Forall!1316 lambda!120518))))

(declare-fun bs!554879 () Bool)

(assert (= bs!554879 d!959910))

(declare-fun m!3747929 () Bool)

(assert (=> bs!554879 m!3747929))

(assert (=> d!959184 d!959910))

(declare-fun d!959912 () Bool)

(assert (=> d!959912 (= (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))) (not (isEmpty!21113 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))

(declare-fun bs!554880 () Bool)

(assert (= bs!554880 d!959912))

(assert (=> bs!554880 m!3745383))

(declare-fun m!3747931 () Bool)

(assert (=> bs!554880 m!3747931))

(assert (=> d!959262 d!959912))

(assert (=> d!959262 d!959214))

(declare-fun d!959914 () Bool)

(declare-fun e!2100132 () Bool)

(assert (=> d!959914 e!2100132))

(declare-fun res!1368736 () Bool)

(assert (=> d!959914 (=> (not res!1368736) (not e!2100132))))

(assert (=> d!959914 (= res!1368736 (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))

(assert (=> d!959914 true))

(declare-fun _$52!1770 () Unit!51972)

(assert (=> d!959914 (= (choose!19572 thiss!18206 rules!2135 lt!1148157 separatorToken!241) _$52!1770)))

(declare-fun b!3383062 () Bool)

(declare-fun res!1368737 () Bool)

(assert (=> b!3383062 (=> (not res!1368737) (not e!2100132))))

(assert (=> b!3383062 (= res!1368737 (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))) (list!13331 (charsOf!3388 separatorToken!241))))))

(declare-fun b!3383063 () Bool)

(assert (=> b!3383063 (= e!2100132 (= (rule!7926 separatorToken!241) (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))

(assert (= (and d!959914 res!1368736) b!3383062))

(assert (= (and b!3383062 res!1368737) b!3383063))

(assert (=> d!959914 m!3745383))

(assert (=> d!959914 m!3745383))

(assert (=> d!959914 m!3745829))

(assert (=> b!3383062 m!3745317))

(assert (=> b!3383062 m!3745383))

(assert (=> b!3383062 m!3745323))

(assert (=> b!3383062 m!3745835))

(assert (=> b!3383062 m!3745317))

(assert (=> b!3383062 m!3745323))

(assert (=> b!3383062 m!3745383))

(assert (=> b!3383062 m!3745833))

(assert (=> b!3383063 m!3745383))

(assert (=> b!3383063 m!3745383))

(assert (=> b!3383063 m!3745833))

(assert (=> d!959262 d!959914))

(assert (=> d!959262 d!959146))

(assert (=> b!3381526 d!959900))

(assert (=> b!3381526 d!959492))

(declare-fun d!959916 () Bool)

(assert (=> d!959916 (= (nullable!3451 (regex!5374 lt!1148167)) (nullableFct!996 (regex!5374 lt!1148167)))))

(declare-fun bs!554881 () Bool)

(assert (= bs!554881 d!959916))

(declare-fun m!3747933 () Bool)

(assert (=> bs!554881 m!3747933))

(assert (=> b!3381525 d!959916))

(assert (=> b!3381359 d!959820))

(assert (=> b!3381406 d!959774))

(assert (=> b!3381406 d!959776))

(declare-fun b!3383064 () Bool)

(declare-fun e!2100136 () Option!7395)

(declare-fun e!2100133 () Option!7395)

(assert (=> b!3383064 (= e!2100136 e!2100133)))

(declare-fun c!576166 () Bool)

(assert (=> b!3383064 (= c!576166 (and ((_ is Cons!36866) (t!263197 rules!2135)) (not (= (tag!5950 (h!42286 (t!263197 rules!2135))) (tag!5950 (rule!7926 separatorToken!241))))))))

(declare-fun b!3383065 () Bool)

(declare-fun e!2100134 () Bool)

(declare-fun lt!1149106 () Option!7395)

(assert (=> b!3383065 (= e!2100134 (= (tag!5950 (get!11768 lt!1149106)) (tag!5950 (rule!7926 separatorToken!241))))))

(declare-fun b!3383066 () Bool)

(declare-fun e!2100135 () Bool)

(assert (=> b!3383066 (= e!2100135 e!2100134)))

(declare-fun res!1368739 () Bool)

(assert (=> b!3383066 (=> (not res!1368739) (not e!2100134))))

(assert (=> b!3383066 (= res!1368739 (contains!6742 (t!263197 rules!2135) (get!11768 lt!1149106)))))

(declare-fun d!959918 () Bool)

(assert (=> d!959918 e!2100135))

(declare-fun res!1368738 () Bool)

(assert (=> d!959918 (=> res!1368738 e!2100135)))

(assert (=> d!959918 (= res!1368738 (isEmpty!21113 lt!1149106))))

(assert (=> d!959918 (= lt!1149106 e!2100136)))

(declare-fun c!576167 () Bool)

(assert (=> d!959918 (= c!576167 (and ((_ is Cons!36866) (t!263197 rules!2135)) (= (tag!5950 (h!42286 (t!263197 rules!2135))) (tag!5950 (rule!7926 separatorToken!241)))))))

(assert (=> d!959918 (rulesInvariant!4360 thiss!18206 (t!263197 rules!2135))))

(assert (=> d!959918 (= (getRuleFromTag!1029 thiss!18206 (t!263197 rules!2135) (tag!5950 (rule!7926 separatorToken!241))) lt!1149106)))

(declare-fun b!3383067 () Bool)

(assert (=> b!3383067 (= e!2100136 (Some!7394 (h!42286 (t!263197 rules!2135))))))

(declare-fun b!3383068 () Bool)

(assert (=> b!3383068 (= e!2100133 None!7394)))

(declare-fun b!3383069 () Bool)

(declare-fun lt!1149108 () Unit!51972)

(declare-fun lt!1149107 () Unit!51972)

(assert (=> b!3383069 (= lt!1149108 lt!1149107)))

(assert (=> b!3383069 (rulesInvariant!4360 thiss!18206 (t!263197 (t!263197 rules!2135)))))

(assert (=> b!3383069 (= lt!1149107 (lemmaInvariantOnRulesThenOnTail!400 thiss!18206 (h!42286 (t!263197 rules!2135)) (t!263197 (t!263197 rules!2135))))))

(assert (=> b!3383069 (= e!2100133 (getRuleFromTag!1029 thiss!18206 (t!263197 (t!263197 rules!2135)) (tag!5950 (rule!7926 separatorToken!241))))))

(assert (= (and d!959918 c!576167) b!3383067))

(assert (= (and d!959918 (not c!576167)) b!3383064))

(assert (= (and b!3383064 c!576166) b!3383069))

(assert (= (and b!3383064 (not c!576166)) b!3383068))

(assert (= (and d!959918 (not res!1368738)) b!3383066))

(assert (= (and b!3383066 res!1368739) b!3383065))

(declare-fun m!3747935 () Bool)

(assert (=> b!3383065 m!3747935))

(assert (=> b!3383066 m!3747935))

(assert (=> b!3383066 m!3747935))

(declare-fun m!3747937 () Bool)

(assert (=> b!3383066 m!3747937))

(declare-fun m!3747939 () Bool)

(assert (=> d!959918 m!3747939))

(assert (=> d!959918 m!3745675))

(assert (=> b!3383069 m!3747469))

(assert (=> b!3383069 m!3747471))

(declare-fun m!3747941 () Bool)

(assert (=> b!3383069 m!3747941))

(assert (=> b!3381406 d!959918))

(declare-fun d!959920 () Bool)

(assert (=> d!959920 (= (isEmpty!21113 lt!1148165) (not ((_ is Some!7394) lt!1148165)))))

(assert (=> d!959218 d!959920))

(declare-fun d!959922 () Bool)

(declare-fun charsToBigInt!1 (List!36988) Int)

(assert (=> d!959922 (= (inv!17 (value!173619 separatorToken!241)) (= (charsToBigInt!1 (text!39676 (value!173619 separatorToken!241))) (value!173611 (value!173619 separatorToken!241))))))

(declare-fun bs!554882 () Bool)

(assert (= bs!554882 d!959922))

(declare-fun m!3747943 () Bool)

(assert (=> bs!554882 m!3747943))

(assert (=> b!3381548 d!959922))

(assert (=> b!3381310 d!959904))

(assert (=> b!3381310 d!959728))

(declare-fun d!959924 () Bool)

(declare-fun lt!1149109 () Bool)

(assert (=> d!959924 (= lt!1149109 (select (content!5080 rules!2135) (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))

(declare-fun e!2100137 () Bool)

(assert (=> d!959924 (= lt!1149109 e!2100137)))

(declare-fun res!1368740 () Bool)

(assert (=> d!959924 (=> (not res!1368740) (not e!2100137))))

(assert (=> d!959924 (= res!1368740 ((_ is Cons!36866) rules!2135))))

(assert (=> d!959924 (= (contains!6742 rules!2135 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) lt!1149109)))

(declare-fun b!3383070 () Bool)

(declare-fun e!2100138 () Bool)

(assert (=> b!3383070 (= e!2100137 e!2100138)))

(declare-fun res!1368741 () Bool)

(assert (=> b!3383070 (=> res!1368741 e!2100138)))

(assert (=> b!3383070 (= res!1368741 (= (h!42286 rules!2135) (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))

(declare-fun b!3383071 () Bool)

(assert (=> b!3383071 (= e!2100138 (contains!6742 (t!263197 rules!2135) (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))

(assert (= (and d!959924 res!1368740) b!3383070))

(assert (= (and b!3383070 (not res!1368741)) b!3383071))

(assert (=> d!959924 m!3745659))

(declare-fun m!3747945 () Bool)

(assert (=> d!959924 m!3747945))

(declare-fun m!3747947 () Bool)

(assert (=> b!3383071 m!3747947))

(assert (=> b!3381941 d!959924))

(assert (=> b!3381941 d!959612))

(assert (=> d!959230 d!959362))

(declare-fun d!959926 () Bool)

(assert (=> d!959926 (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 tokens!494))))

(assert (=> d!959926 true))

(declare-fun _$77!914 () Unit!51972)

(assert (=> d!959926 (= (choose!19569 thiss!18206 rules!2135 tokens!494 (h!42287 tokens!494)) _$77!914)))

(declare-fun bs!554911 () Bool)

(assert (= bs!554911 d!959926))

(assert (=> bs!554911 m!3745369))

(assert (=> d!959230 d!959926))

(assert (=> d!959230 d!959170))

(assert (=> b!3381971 d!959208))

(assert (=> d!959264 d!959740))

(declare-fun b!3383186 () Bool)

(declare-fun e!2100213 () Bool)

(declare-fun e!2100214 () Bool)

(assert (=> b!3383186 (= e!2100213 e!2100214)))

(declare-fun res!1368813 () Bool)

(assert (=> b!3383186 (= res!1368813 (not (nullable!3451 (reg!10462 (regex!5374 lt!1148167)))))))

(assert (=> b!3383186 (=> (not res!1368813) (not e!2100214))))

(declare-fun b!3383187 () Bool)

(declare-fun e!2100209 () Bool)

(declare-fun call!244727 () Bool)

(assert (=> b!3383187 (= e!2100209 call!244727)))

(declare-fun b!3383188 () Bool)

(declare-fun res!1368815 () Bool)

(assert (=> b!3383188 (=> (not res!1368815) (not e!2100209))))

(declare-fun call!244726 () Bool)

(assert (=> b!3383188 (= res!1368815 call!244726)))

(declare-fun e!2100208 () Bool)

(assert (=> b!3383188 (= e!2100208 e!2100209)))

(declare-fun bm!244720 () Bool)

(declare-fun c!576186 () Bool)

(assert (=> bm!244720 (= call!244727 (validRegex!4607 (ite c!576186 (regTwo!20779 (regex!5374 lt!1148167)) (regTwo!20778 (regex!5374 lt!1148167)))))))

(declare-fun b!3383189 () Bool)

(declare-fun res!1368816 () Bool)

(declare-fun e!2100210 () Bool)

(assert (=> b!3383189 (=> res!1368816 e!2100210)))

(assert (=> b!3383189 (= res!1368816 (not ((_ is Concat!15737) (regex!5374 lt!1148167))))))

(assert (=> b!3383189 (= e!2100208 e!2100210)))

(declare-fun bm!244721 () Bool)

(declare-fun call!244725 () Bool)

(assert (=> bm!244721 (= call!244726 call!244725)))

(declare-fun c!576187 () Bool)

(declare-fun bm!244722 () Bool)

(assert (=> bm!244722 (= call!244725 (validRegex!4607 (ite c!576187 (reg!10462 (regex!5374 lt!1148167)) (ite c!576186 (regOne!20779 (regex!5374 lt!1148167)) (regOne!20778 (regex!5374 lt!1148167))))))))

(declare-fun d!960012 () Bool)

(declare-fun res!1368817 () Bool)

(declare-fun e!2100211 () Bool)

(assert (=> d!960012 (=> res!1368817 e!2100211)))

(assert (=> d!960012 (= res!1368817 ((_ is ElementMatch!10133) (regex!5374 lt!1148167)))))

(assert (=> d!960012 (= (validRegex!4607 (regex!5374 lt!1148167)) e!2100211)))

(declare-fun b!3383190 () Bool)

(declare-fun e!2100212 () Bool)

(assert (=> b!3383190 (= e!2100210 e!2100212)))

(declare-fun res!1368814 () Bool)

(assert (=> b!3383190 (=> (not res!1368814) (not e!2100212))))

(assert (=> b!3383190 (= res!1368814 call!244726)))

(declare-fun b!3383191 () Bool)

(assert (=> b!3383191 (= e!2100212 call!244727)))

(declare-fun b!3383192 () Bool)

(assert (=> b!3383192 (= e!2100213 e!2100208)))

(assert (=> b!3383192 (= c!576186 ((_ is Union!10133) (regex!5374 lt!1148167)))))

(declare-fun b!3383193 () Bool)

(assert (=> b!3383193 (= e!2100211 e!2100213)))

(assert (=> b!3383193 (= c!576187 ((_ is Star!10133) (regex!5374 lt!1148167)))))

(declare-fun b!3383194 () Bool)

(assert (=> b!3383194 (= e!2100214 call!244725)))

(assert (= (and d!960012 (not res!1368817)) b!3383193))

(assert (= (and b!3383193 c!576187) b!3383186))

(assert (= (and b!3383193 (not c!576187)) b!3383192))

(assert (= (and b!3383186 res!1368813) b!3383194))

(assert (= (and b!3383192 c!576186) b!3383188))

(assert (= (and b!3383192 (not c!576186)) b!3383189))

(assert (= (and b!3383188 res!1368815) b!3383187))

(assert (= (and b!3383189 (not res!1368816)) b!3383190))

(assert (= (and b!3383190 res!1368814) b!3383191))

(assert (= (or b!3383187 b!3383191) bm!244720))

(assert (= (or b!3383188 b!3383190) bm!244721))

(assert (= (or b!3383194 bm!244721) bm!244722))

(declare-fun m!3748119 () Bool)

(assert (=> b!3383186 m!3748119))

(declare-fun m!3748121 () Bool)

(assert (=> bm!244720 m!3748121))

(declare-fun m!3748123 () Bool)

(assert (=> bm!244722 m!3748123))

(assert (=> d!959264 d!960012))

(assert (=> b!3381521 d!959900))

(assert (=> b!3381521 d!959492))

(declare-fun d!960014 () Bool)

(assert (=> d!960014 (= (get!11768 lt!1148271) (v!36482 lt!1148271))))

(assert (=> b!3381402 d!960014))

(declare-fun d!960016 () Bool)

(assert (=> d!960016 (= (inv!17 (value!173619 (h!42287 tokens!494))) (= (charsToBigInt!1 (text!39676 (value!173619 (h!42287 tokens!494)))) (value!173611 (value!173619 (h!42287 tokens!494)))))))

(declare-fun bs!554912 () Bool)

(assert (= bs!554912 d!960016))

(declare-fun m!3748125 () Bool)

(assert (=> bs!554912 m!3748125))

(assert (=> b!3381986 d!960016))

(declare-fun bs!554913 () Bool)

(declare-fun d!960018 () Bool)

(assert (= bs!554913 (and d!960018 d!959594)))

(declare-fun lambda!120531 () Int)

(assert (=> bs!554913 (= (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (h!42286 rules!2135)))) (= lambda!120531 lambda!120501))))

(declare-fun bs!554914 () Bool)

(assert (= bs!554914 (and d!960018 d!959734)))

(assert (=> bs!554914 (= (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (= lambda!120531 lambda!120508))))

(assert (=> d!960018 true))

(assert (=> d!960018 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))) (dynLambda!15342 order!19421 lambda!120531))))

(assert (=> d!960018 (= (equivClasses!2142 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))) (Forall2!913 lambda!120531))))

(declare-fun bs!554915 () Bool)

(assert (= bs!554915 d!960018))

(declare-fun m!3748127 () Bool)

(assert (=> bs!554915 m!3748127))

(assert (=> b!3381352 d!960018))

(declare-fun bm!244723 () Bool)

(declare-fun call!244729 () List!36989)

(declare-fun call!244731 () List!36989)

(assert (=> bm!244723 (= call!244729 call!244731)))

(declare-fun call!244728 () List!36989)

(declare-fun call!244730 () List!36989)

(declare-fun c!576190 () Bool)

(declare-fun bm!244724 () Bool)

(assert (=> bm!244724 (= call!244728 (++!9009 (ite c!576190 call!244730 call!244729) (ite c!576190 call!244729 call!244730)))))

(declare-fun c!576191 () Bool)

(declare-fun bm!244725 () Bool)

(assert (=> bm!244725 (= call!244731 (usedCharacters!630 (ite c!576191 (reg!10462 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) (ite c!576190 (regTwo!20779 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) (regOne!20778 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))))))

(declare-fun b!3383199 () Bool)

(declare-fun e!2100220 () List!36989)

(assert (=> b!3383199 (= e!2100220 call!244728)))

(declare-fun d!960020 () Bool)

(declare-fun c!576192 () Bool)

(assert (=> d!960020 (= c!576192 (or ((_ is EmptyExpr!10133) (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) ((_ is EmptyLang!10133) (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))))

(declare-fun e!2100219 () List!36989)

(assert (=> d!960020 (= (usedCharacters!630 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) e!2100219)))

(declare-fun bm!244726 () Bool)

(assert (=> bm!244726 (= call!244730 (usedCharacters!630 (ite c!576190 (regOne!20779 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) (regTwo!20778 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))))

(declare-fun b!3383200 () Bool)

(assert (=> b!3383200 (= e!2100219 Nil!36865)))

(declare-fun b!3383201 () Bool)

(declare-fun e!2100218 () List!36989)

(assert (=> b!3383201 (= e!2100218 e!2100220)))

(assert (=> b!3383201 (= c!576190 ((_ is Union!10133) (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(declare-fun e!2100217 () List!36989)

(declare-fun b!3383202 () Bool)

(assert (=> b!3383202 (= e!2100217 (Cons!36865 (c!575698 (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))) Nil!36865))))

(declare-fun b!3383203 () Bool)

(assert (=> b!3383203 (= e!2100220 call!244728)))

(declare-fun b!3383204 () Bool)

(assert (=> b!3383204 (= e!2100218 call!244731)))

(declare-fun b!3383205 () Bool)

(assert (=> b!3383205 (= c!576191 ((_ is Star!10133) (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(assert (=> b!3383205 (= e!2100217 e!2100218)))

(declare-fun b!3383206 () Bool)

(assert (=> b!3383206 (= e!2100219 e!2100217)))

(declare-fun c!576193 () Bool)

(assert (=> b!3383206 (= c!576193 ((_ is ElementMatch!10133) (ite c!575770 (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (ite c!575769 (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))))

(assert (= (and d!960020 c!576192) b!3383200))

(assert (= (and d!960020 (not c!576192)) b!3383206))

(assert (= (and b!3383206 c!576193) b!3383202))

(assert (= (and b!3383206 (not c!576193)) b!3383205))

(assert (= (and b!3383205 c!576191) b!3383204))

(assert (= (and b!3383205 (not c!576191)) b!3383201))

(assert (= (and b!3383201 c!576190) b!3383203))

(assert (= (and b!3383201 (not c!576190)) b!3383199))

(assert (= (or b!3383203 b!3383199) bm!244723))

(assert (= (or b!3383203 b!3383199) bm!244726))

(assert (= (or b!3383203 b!3383199) bm!244724))

(assert (= (or b!3383204 bm!244723) bm!244725))

(declare-fun m!3748129 () Bool)

(assert (=> bm!244724 m!3748129))

(declare-fun m!3748131 () Bool)

(assert (=> bm!244725 m!3748131))

(declare-fun m!3748133 () Bool)

(assert (=> bm!244726 m!3748133))

(assert (=> bm!244534 d!960020))

(declare-fun d!960022 () Bool)

(assert (=> d!960022 (= (isDefined!5714 lt!1148436) (not (isEmpty!21114 lt!1148436)))))

(declare-fun bs!554916 () Bool)

(assert (= bs!554916 d!960022))

(assert (=> bs!554916 m!3746207))

(assert (=> b!3381937 d!960022))

(declare-fun d!960024 () Bool)

(assert (=> d!960024 (= (isEmpty!21109 (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))) ((_ is Nil!36867) (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))))))

(assert (=> d!959186 d!960024))

(declare-fun d!960026 () Bool)

(assert (=> d!960026 (= (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173))) (list!13338 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))))))

(declare-fun bs!554917 () Bool)

(assert (= bs!554917 d!960026))

(declare-fun m!3748135 () Bool)

(assert (=> bs!554917 m!3748135))

(assert (=> d!959186 d!960026))

(declare-fun d!960028 () Bool)

(declare-fun lt!1149164 () Bool)

(assert (=> d!960028 (= lt!1149164 (isEmpty!21109 (list!13338 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173))))))))

(assert (=> d!960028 (= lt!1149164 (= (size!27903 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))) 0))))

(assert (=> d!960028 (= (isEmpty!21110 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 lt!1148173)))) lt!1149164)))

(declare-fun bs!554919 () Bool)

(assert (= bs!554919 d!960028))

(assert (=> bs!554919 m!3748135))

(assert (=> bs!554919 m!3748135))

(declare-fun m!3748163 () Bool)

(assert (=> bs!554919 m!3748163))

(declare-fun m!3748165 () Bool)

(assert (=> bs!554919 m!3748165))

(assert (=> d!959186 d!960028))

(declare-fun b!3383227 () Bool)

(declare-fun res!1368831 () Bool)

(declare-fun e!2100230 () Bool)

(assert (=> b!3383227 (=> (not res!1368831) (not e!2100230))))

(assert (=> b!3383227 (= res!1368831 (not (isEmpty!21110 (left!28741 (c!575700 lt!1148255)))))))

(declare-fun b!3383228 () Bool)

(assert (=> b!3383228 (= e!2100230 (not (isEmpty!21110 (right!29071 (c!575700 lt!1148255)))))))

(declare-fun b!3383229 () Bool)

(declare-fun res!1368830 () Bool)

(assert (=> b!3383229 (=> (not res!1368830) (not e!2100230))))

(assert (=> b!3383229 (= res!1368830 (isBalanced!3353 (right!29071 (c!575700 lt!1148255))))))

(declare-fun d!960034 () Bool)

(declare-fun res!1368835 () Bool)

(declare-fun e!2100229 () Bool)

(assert (=> d!960034 (=> res!1368835 e!2100229)))

(assert (=> d!960034 (= res!1368835 (not ((_ is Node!11124) (c!575700 lt!1148255))))))

(assert (=> d!960034 (= (isBalanced!3353 (c!575700 lt!1148255)) e!2100229)))

(declare-fun b!3383230 () Bool)

(assert (=> b!3383230 (= e!2100229 e!2100230)))

(declare-fun res!1368833 () Bool)

(assert (=> b!3383230 (=> (not res!1368833) (not e!2100230))))

(declare-fun height!1656 (Conc!11124) Int)

(assert (=> b!3383230 (= res!1368833 (<= (- 1) (- (height!1656 (left!28741 (c!575700 lt!1148255))) (height!1656 (right!29071 (c!575700 lt!1148255))))))))

(declare-fun b!3383231 () Bool)

(declare-fun res!1368832 () Bool)

(assert (=> b!3383231 (=> (not res!1368832) (not e!2100230))))

(assert (=> b!3383231 (= res!1368832 (isBalanced!3353 (left!28741 (c!575700 lt!1148255))))))

(declare-fun b!3383232 () Bool)

(declare-fun res!1368834 () Bool)

(assert (=> b!3383232 (=> (not res!1368834) (not e!2100230))))

(assert (=> b!3383232 (= res!1368834 (<= (- (height!1656 (left!28741 (c!575700 lt!1148255))) (height!1656 (right!29071 (c!575700 lt!1148255)))) 1))))

(assert (= (and d!960034 (not res!1368835)) b!3383230))

(assert (= (and b!3383230 res!1368833) b!3383232))

(assert (= (and b!3383232 res!1368834) b!3383231))

(assert (= (and b!3383231 res!1368832) b!3383229))

(assert (= (and b!3383229 res!1368830) b!3383227))

(assert (= (and b!3383227 res!1368831) b!3383228))

(declare-fun m!3748173 () Bool)

(assert (=> b!3383232 m!3748173))

(declare-fun m!3748175 () Bool)

(assert (=> b!3383232 m!3748175))

(assert (=> b!3383230 m!3748173))

(assert (=> b!3383230 m!3748175))

(declare-fun m!3748177 () Bool)

(assert (=> b!3383231 m!3748177))

(declare-fun m!3748179 () Bool)

(assert (=> b!3383228 m!3748179))

(declare-fun m!3748181 () Bool)

(assert (=> b!3383229 m!3748181))

(declare-fun m!3748183 () Bool)

(assert (=> b!3383227 m!3748183))

(assert (=> b!3381364 d!960034))

(assert (=> b!3381499 d!959224))

(declare-fun d!960042 () Bool)

(assert (=> d!960042 (= (seqFromList!3801 (_1!21365 lt!1148305)) (fromListB!1702 (_1!21365 lt!1148305)))))

(declare-fun bs!554924 () Bool)

(assert (= bs!554924 d!960042))

(declare-fun m!3748185 () Bool)

(assert (=> bs!554924 m!3748185))

(assert (=> b!3381499 d!960042))

(declare-fun bs!554926 () Bool)

(declare-fun d!960044 () Bool)

(assert (= bs!554926 (and d!960044 d!959808)))

(declare-fun lambda!120535 () Int)

(assert (=> bs!554926 (= lambda!120535 lambda!120514)))

(declare-fun bs!554928 () Bool)

(assert (= bs!554928 (and d!960044 d!959910)))

(assert (=> bs!554928 (= (and (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (h!42286 rules!2135)))) (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (h!42286 rules!2135))))) (= lambda!120535 lambda!120518))))

(declare-fun b!3383254 () Bool)

(declare-fun e!2100245 () Bool)

(assert (=> b!3383254 (= e!2100245 true)))

(assert (=> d!960044 e!2100245))

(assert (= d!960044 b!3383254))

(assert (=> b!3383254 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (dynLambda!15344 order!19425 lambda!120535))))

(assert (=> b!3383254 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (dynLambda!15344 order!19425 lambda!120535))))

(assert (=> d!960044 (= (list!13331 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 (_1!21365 lt!1148305))))) (list!13331 (seqFromList!3801 (_1!21365 lt!1148305))))))

(declare-fun lt!1149168 () Unit!51972)

(declare-fun ForallOf!582 (Int BalanceConc!21860) Unit!51972)

(assert (=> d!960044 (= lt!1149168 (ForallOf!582 lambda!120535 (seqFromList!3801 (_1!21365 lt!1148305))))))

(assert (=> d!960044 (= (lemmaSemiInverse!1227 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 (_1!21365 lt!1148305))) lt!1149168)))

(declare-fun b_lambda!96075 () Bool)

(assert (=> (not b_lambda!96075) (not d!960044)))

(declare-fun t!263419 () Bool)

(declare-fun tb!180189 () Bool)

(assert (=> (and b!3382031 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263419) tb!180189))

(declare-fun b!3383259 () Bool)

(declare-fun e!2100248 () Bool)

(declare-fun tp!1057232 () Bool)

(assert (=> b!3383259 (= e!2100248 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 (_1!21365 lt!1148305)))))) tp!1057232))))

(declare-fun result!223666 () Bool)

(assert (=> tb!180189 (= result!223666 (and (inv!49940 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 (_1!21365 lt!1148305))))) e!2100248))))

(assert (= tb!180189 b!3383259))

(declare-fun m!3748227 () Bool)

(assert (=> b!3383259 m!3748227))

(declare-fun m!3748229 () Bool)

(assert (=> tb!180189 m!3748229))

(assert (=> d!960044 t!263419))

(declare-fun b_and!235155 () Bool)

(assert (= b_and!235117 (and (=> t!263419 result!223666) b_and!235155)))

(declare-fun t!263421 () Bool)

(declare-fun tb!180191 () Bool)

(assert (=> (and b!3381233 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263421) tb!180191))

(declare-fun result!223668 () Bool)

(assert (= result!223668 result!223666))

(assert (=> d!960044 t!263421))

(declare-fun b_and!235157 () Bool)

(assert (= b_and!235119 (and (=> t!263421 result!223668) b_and!235157)))

(declare-fun t!263423 () Bool)

(declare-fun tb!180193 () Bool)

(assert (=> (and b!3381213 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263423) tb!180193))

(declare-fun result!223670 () Bool)

(assert (= result!223670 result!223666))

(assert (=> d!960044 t!263423))

(declare-fun b_and!235159 () Bool)

(assert (= b_and!235115 (and (=> t!263423 result!223670) b_and!235159)))

(declare-fun t!263425 () Bool)

(declare-fun tb!180195 () Bool)

(assert (=> (and b!3382017 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263425) tb!180195))

(declare-fun result!223672 () Bool)

(assert (= result!223672 result!223666))

(assert (=> d!960044 t!263425))

(declare-fun b_and!235161 () Bool)

(assert (= b_and!235121 (and (=> t!263425 result!223672) b_and!235161)))

(declare-fun t!263427 () Bool)

(declare-fun tb!180197 () Bool)

(assert (=> (and b!3381208 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263427) tb!180197))

(declare-fun result!223674 () Bool)

(assert (= result!223674 result!223666))

(assert (=> d!960044 t!263427))

(declare-fun b_and!235163 () Bool)

(assert (= b_and!235123 (and (=> t!263427 result!223674) b_and!235163)))

(declare-fun b_lambda!96077 () Bool)

(assert (=> (not b_lambda!96077) (not d!960044)))

(declare-fun t!263429 () Bool)

(declare-fun tb!180199 () Bool)

(assert (=> (and b!3382017 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263429) tb!180199))

(declare-fun result!223676 () Bool)

(assert (=> tb!180199 (= result!223676 (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 (_1!21365 lt!1148305)))))))

(declare-fun m!3748231 () Bool)

(assert (=> tb!180199 m!3748231))

(assert (=> d!960044 t!263429))

(declare-fun b_and!235165 () Bool)

(assert (= b_and!235129 (and (=> t!263429 result!223676) b_and!235165)))

(declare-fun t!263431 () Bool)

(declare-fun tb!180201 () Bool)

(assert (=> (and b!3382031 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263431) tb!180201))

(declare-fun result!223678 () Bool)

(assert (= result!223678 result!223676))

(assert (=> d!960044 t!263431))

(declare-fun b_and!235167 () Bool)

(assert (= b_and!235131 (and (=> t!263431 result!223678) b_and!235167)))

(declare-fun t!263433 () Bool)

(declare-fun tb!180203 () Bool)

(assert (=> (and b!3381213 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263433) tb!180203))

(declare-fun result!223680 () Bool)

(assert (= result!223680 result!223676))

(assert (=> d!960044 t!263433))

(declare-fun b_and!235169 () Bool)

(assert (= b_and!235133 (and (=> t!263433 result!223680) b_and!235169)))

(declare-fun t!263435 () Bool)

(declare-fun tb!180205 () Bool)

(assert (=> (and b!3381208 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263435) tb!180205))

(declare-fun result!223682 () Bool)

(assert (= result!223682 result!223676))

(assert (=> d!960044 t!263435))

(declare-fun b_and!235171 () Bool)

(assert (= b_and!235125 (and (=> t!263435 result!223682) b_and!235171)))

(declare-fun t!263437 () Bool)

(declare-fun tb!180207 () Bool)

(assert (=> (and b!3381233 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263437) tb!180207))

(declare-fun result!223684 () Bool)

(assert (= result!223684 result!223676))

(assert (=> d!960044 t!263437))

(declare-fun b_and!235173 () Bool)

(assert (= b_and!235127 (and (=> t!263437 result!223684) b_and!235173)))

(assert (=> d!960044 m!3745783))

(declare-fun m!3748233 () Bool)

(assert (=> d!960044 m!3748233))

(assert (=> d!960044 m!3745783))

(declare-fun m!3748235 () Bool)

(assert (=> d!960044 m!3748235))

(declare-fun m!3748237 () Bool)

(assert (=> d!960044 m!3748237))

(declare-fun m!3748239 () Bool)

(assert (=> d!960044 m!3748239))

(assert (=> d!960044 m!3745783))

(declare-fun m!3748241 () Bool)

(assert (=> d!960044 m!3748241))

(assert (=> d!960044 m!3748233))

(assert (=> d!960044 m!3748237))

(assert (=> b!3381499 d!960044))

(declare-fun d!960062 () Bool)

(assert (=> d!960062 (= (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))) ((_ is Nil!36865) (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(assert (=> b!3381499 d!960062))

(assert (=> b!3381499 d!959784))

(declare-fun d!960064 () Bool)

(declare-fun lt!1149173 () Int)

(assert (=> d!960064 (= lt!1149173 (size!27895 (list!13331 (seqFromList!3801 (_1!21365 lt!1148305)))))))

(assert (=> d!960064 (= lt!1149173 (size!27904 (c!575699 (seqFromList!3801 (_1!21365 lt!1148305)))))))

(assert (=> d!960064 (= (size!27899 (seqFromList!3801 (_1!21365 lt!1148305))) lt!1149173)))

(declare-fun bs!554930 () Bool)

(assert (= bs!554930 d!960064))

(assert (=> bs!554930 m!3745783))

(assert (=> bs!554930 m!3748241))

(assert (=> bs!554930 m!3748241))

(declare-fun m!3748243 () Bool)

(assert (=> bs!554930 m!3748243))

(declare-fun m!3748245 () Bool)

(assert (=> bs!554930 m!3748245))

(assert (=> b!3381499 d!960064))

(declare-fun d!960066 () Bool)

(declare-fun e!2100265 () Bool)

(assert (=> d!960066 e!2100265))

(declare-fun res!1368860 () Bool)

(assert (=> d!960066 (=> res!1368860 e!2100265)))

(assert (=> d!960066 (= res!1368860 (isEmpty!21105 (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(declare-fun lt!1149184 () Unit!51972)

(declare-fun choose!19587 (Regex!10133 List!36989) Unit!51972)

(assert (=> d!960066 (= lt!1149184 (choose!19587 (regex!5374 (rule!7926 (h!42287 tokens!494))) lt!1148159))))

(assert (=> d!960066 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!960066 (= (longestMatchIsAcceptedByMatchOrIsEmpty!852 (regex!5374 (rule!7926 (h!42287 tokens!494))) lt!1148159) lt!1149184)))

(declare-fun b!3383277 () Bool)

(assert (=> b!3383277 (= e!2100265 (matchR!4725 (regex!5374 (rule!7926 (h!42287 tokens!494))) (_1!21365 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 (size!27895 Nil!36865) lt!1148159 lt!1148159 (size!27895 lt!1148159)))))))

(assert (= (and d!960066 (not res!1368860)) b!3383277))

(assert (=> d!960066 m!3745775))

(assert (=> d!960066 m!3745389))

(assert (=> d!960066 m!3745777))

(assert (=> d!960066 m!3745389))

(declare-fun m!3748281 () Bool)

(assert (=> d!960066 m!3748281))

(assert (=> d!960066 m!3747477))

(assert (=> d!960066 m!3745793))

(assert (=> d!960066 m!3745775))

(assert (=> b!3383277 m!3745775))

(assert (=> b!3383277 m!3745389))

(assert (=> b!3383277 m!3745775))

(assert (=> b!3383277 m!3745389))

(assert (=> b!3383277 m!3745777))

(assert (=> b!3383277 m!3745779))

(assert (=> b!3381499 d!960066))

(assert (=> b!3381499 d!959782))

(declare-fun d!960078 () Bool)

(assert (=> d!960078 (= (apply!8573 (transformation!5374 (rule!7926 (h!42287 tokens!494))) (seqFromList!3801 (_1!21365 lt!1148305))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (seqFromList!3801 (_1!21365 lt!1148305))))))

(declare-fun b_lambda!96081 () Bool)

(assert (=> (not b_lambda!96081) (not d!960078)))

(assert (=> d!960078 t!263431))

(declare-fun b_and!235185 () Bool)

(assert (= b_and!235167 (and (=> t!263431 result!223678) b_and!235185)))

(assert (=> d!960078 t!263433))

(declare-fun b_and!235187 () Bool)

(assert (= b_and!235169 (and (=> t!263433 result!223680) b_and!235187)))

(assert (=> d!960078 t!263437))

(declare-fun b_and!235189 () Bool)

(assert (= b_and!235173 (and (=> t!263437 result!223684) b_and!235189)))

(assert (=> d!960078 t!263429))

(declare-fun b_and!235191 () Bool)

(assert (= b_and!235165 (and (=> t!263429 result!223676) b_and!235191)))

(assert (=> d!960078 t!263435))

(declare-fun b_and!235193 () Bool)

(assert (= b_and!235171 (and (=> t!263435 result!223682) b_and!235193)))

(assert (=> d!960078 m!3745783))

(assert (=> d!960078 m!3748233))

(assert (=> b!3381499 d!960078))

(declare-fun d!960082 () Bool)

(assert (=> d!960082 (= (list!13331 lt!1148439) (list!13334 (c!575699 lt!1148439)))))

(declare-fun bs!554932 () Bool)

(assert (= bs!554932 d!960082))

(declare-fun m!3748295 () Bool)

(assert (=> bs!554932 m!3748295))

(assert (=> d!959376 d!960082))

(declare-fun d!960084 () Bool)

(declare-fun c!576212 () Bool)

(assert (=> d!960084 (= c!576212 ((_ is Cons!36867) (list!13335 lt!1148177)))))

(declare-fun e!2100278 () List!36989)

(assert (=> d!960084 (= (printWithSeparatorTokenList!256 thiss!18206 (list!13335 lt!1148177) separatorToken!241) e!2100278)))

(declare-fun b!3383297 () Bool)

(assert (=> b!3383297 (= e!2100278 (++!9009 (++!9009 (list!13331 (charsOf!3388 (h!42287 (list!13335 lt!1148177)))) (list!13331 (charsOf!3388 separatorToken!241))) (printWithSeparatorTokenList!256 thiss!18206 (t!263198 (list!13335 lt!1148177)) separatorToken!241)))))

(declare-fun b!3383298 () Bool)

(assert (=> b!3383298 (= e!2100278 Nil!36865)))

(assert (= (and d!960084 c!576212) b!3383297))

(assert (= (and d!960084 (not c!576212)) b!3383298))

(assert (=> b!3383297 m!3745317))

(assert (=> b!3383297 m!3745323))

(declare-fun m!3748345 () Bool)

(assert (=> b!3383297 m!3748345))

(assert (=> b!3383297 m!3745323))

(declare-fun m!3748347 () Bool)

(assert (=> b!3383297 m!3748347))

(declare-fun m!3748349 () Bool)

(assert (=> b!3383297 m!3748349))

(assert (=> b!3383297 m!3748347))

(declare-fun m!3748351 () Bool)

(assert (=> b!3383297 m!3748351))

(declare-fun m!3748353 () Bool)

(assert (=> b!3383297 m!3748353))

(assert (=> b!3383297 m!3748349))

(assert (=> b!3383297 m!3748345))

(assert (=> b!3383297 m!3748351))

(assert (=> b!3383297 m!3745317))

(assert (=> d!959376 d!960084))

(assert (=> d!959376 d!959720))

(declare-fun lt!1149210 () BalanceConc!21860)

(declare-fun d!960100 () Bool)

(declare-fun printWithSeparatorTokenListTailRec!36 (LexerInterface!4963 List!36991 Token!10114 List!36989) List!36989)

(assert (=> d!960100 (= (list!13331 lt!1149210) (printWithSeparatorTokenListTailRec!36 thiss!18206 (dropList!1165 lt!1148177 0) separatorToken!241 (list!13331 (BalanceConc!21861 Empty!11123))))))

(declare-fun e!2100292 () BalanceConc!21860)

(assert (=> d!960100 (= lt!1149210 e!2100292)))

(declare-fun c!576222 () Bool)

(assert (=> d!960100 (= c!576222 (>= 0 (size!27898 lt!1148177)))))

(declare-fun e!2100291 () Bool)

(assert (=> d!960100 e!2100291))

(declare-fun res!1368870 () Bool)

(assert (=> d!960100 (=> (not res!1368870) (not e!2100291))))

(assert (=> d!960100 (= res!1368870 (>= 0 0))))

(assert (=> d!960100 (= (printWithSeparatorTokenTailRec!72 thiss!18206 lt!1148177 separatorToken!241 0 (BalanceConc!21861 Empty!11123)) lt!1149210)))

(declare-fun b!3383318 () Bool)

(assert (=> b!3383318 (= e!2100291 (<= 0 (size!27898 lt!1148177)))))

(declare-fun b!3383319 () Bool)

(assert (=> b!3383319 (= e!2100292 (BalanceConc!21861 Empty!11123))))

(declare-fun b!3383320 () Bool)

(assert (=> b!3383320 (= e!2100292 (printWithSeparatorTokenTailRec!72 thiss!18206 lt!1148177 separatorToken!241 (+ 0 1) (++!9011 (++!9011 (BalanceConc!21861 Empty!11123) (charsOf!3388 (apply!8576 lt!1148177 0))) (charsOf!3388 separatorToken!241))))))

(declare-fun lt!1149215 () List!36991)

(assert (=> b!3383320 (= lt!1149215 (list!13335 lt!1148177))))

(declare-fun lt!1149213 () Unit!51972)

(assert (=> b!3383320 (= lt!1149213 (lemmaDropApply!1123 lt!1149215 0))))

(assert (=> b!3383320 (= (head!7227 (drop!1963 lt!1149215 0)) (apply!8577 lt!1149215 0))))

(declare-fun lt!1149216 () Unit!51972)

(assert (=> b!3383320 (= lt!1149216 lt!1149213)))

(declare-fun lt!1149211 () List!36991)

(assert (=> b!3383320 (= lt!1149211 (list!13335 lt!1148177))))

(declare-fun lt!1149214 () Unit!51972)

(assert (=> b!3383320 (= lt!1149214 (lemmaDropTail!1007 lt!1149211 0))))

(assert (=> b!3383320 (= (tail!5357 (drop!1963 lt!1149211 0)) (drop!1963 lt!1149211 (+ 0 1)))))

(declare-fun lt!1149212 () Unit!51972)

(assert (=> b!3383320 (= lt!1149212 lt!1149214)))

(assert (= (and d!960100 res!1368870) b!3383318))

(assert (= (and d!960100 c!576222) b!3383319))

(assert (= (and d!960100 (not c!576222)) b!3383320))

(assert (=> d!960100 m!3745609))

(declare-fun m!3748383 () Bool)

(assert (=> d!960100 m!3748383))

(assert (=> d!960100 m!3748383))

(assert (=> d!960100 m!3745609))

(declare-fun m!3748385 () Bool)

(assert (=> d!960100 m!3748385))

(declare-fun m!3748387 () Bool)

(assert (=> d!960100 m!3748387))

(declare-fun m!3748389 () Bool)

(assert (=> d!960100 m!3748389))

(assert (=> b!3383318 m!3748389))

(declare-fun m!3748391 () Bool)

(assert (=> b!3383320 m!3748391))

(assert (=> b!3383320 m!3745317))

(declare-fun m!3748393 () Bool)

(assert (=> b!3383320 m!3748393))

(declare-fun m!3748395 () Bool)

(assert (=> b!3383320 m!3748395))

(assert (=> b!3383320 m!3748391))

(declare-fun m!3748397 () Bool)

(assert (=> b!3383320 m!3748397))

(declare-fun m!3748399 () Bool)

(assert (=> b!3383320 m!3748399))

(declare-fun m!3748401 () Bool)

(assert (=> b!3383320 m!3748401))

(assert (=> b!3383320 m!3746117))

(declare-fun m!3748403 () Bool)

(assert (=> b!3383320 m!3748403))

(assert (=> b!3383320 m!3748401))

(declare-fun m!3748405 () Bool)

(assert (=> b!3383320 m!3748405))

(declare-fun m!3748407 () Bool)

(assert (=> b!3383320 m!3748407))

(declare-fun m!3748409 () Bool)

(assert (=> b!3383320 m!3748409))

(declare-fun m!3748411 () Bool)

(assert (=> b!3383320 m!3748411))

(assert (=> b!3383320 m!3748393))

(declare-fun m!3748413 () Bool)

(assert (=> b!3383320 m!3748413))

(declare-fun m!3748415 () Bool)

(assert (=> b!3383320 m!3748415))

(assert (=> b!3383320 m!3745317))

(assert (=> b!3383320 m!3748407))

(assert (=> b!3383320 m!3748397))

(assert (=> b!3383320 m!3748415))

(assert (=> d!959376 d!960100))

(assert (=> d!959388 d!959390))

(declare-fun d!960128 () Bool)

(assert (=> d!960128 (not (matchR!4725 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157))))

(assert (=> d!960128 true))

(declare-fun _$127!338 () Unit!51972)

(assert (=> d!960128 (= (choose!19576 (regex!5374 (rule!7926 separatorToken!241)) lt!1148157 lt!1148163) _$127!338)))

(declare-fun bs!554943 () Bool)

(assert (= bs!554943 d!960128))

(assert (=> bs!554943 m!3745313))

(assert (=> d!959388 d!960128))

(assert (=> d!959388 d!959892))

(declare-fun d!960138 () Bool)

(declare-fun lt!1149218 () Int)

(assert (=> d!960138 (>= lt!1149218 0)))

(declare-fun e!2100301 () Int)

(assert (=> d!960138 (= lt!1149218 e!2100301)))

(declare-fun c!576228 () Bool)

(assert (=> d!960138 (= c!576228 ((_ is Nil!36865) (originalCharacters!6088 (h!42287 tokens!494))))))

(assert (=> d!960138 (= (size!27895 (originalCharacters!6088 (h!42287 tokens!494))) lt!1149218)))

(declare-fun b!3383334 () Bool)

(assert (=> b!3383334 (= e!2100301 0)))

(declare-fun b!3383335 () Bool)

(assert (=> b!3383335 (= e!2100301 (+ 1 (size!27895 (t!263196 (originalCharacters!6088 (h!42287 tokens!494))))))))

(assert (= (and d!960138 c!576228) b!3383334))

(assert (= (and d!960138 (not c!576228)) b!3383335))

(declare-fun m!3748437 () Bool)

(assert (=> b!3383335 m!3748437))

(assert (=> b!3381324 d!960138))

(declare-fun d!960142 () Bool)

(assert (=> d!960142 (= (isEmpty!21114 lt!1148306) (not ((_ is Some!7395) lt!1148306)))))

(assert (=> d!959244 d!960142))

(declare-fun d!960144 () Bool)

(assert (=> d!960144 (= (isEmpty!21105 (_1!21365 lt!1148305)) ((_ is Nil!36865) (_1!21365 lt!1148305)))))

(assert (=> d!959244 d!960144))

(declare-fun d!960146 () Bool)

(declare-fun lt!1149245 () tuple2!36462)

(assert (=> d!960146 (= (++!9009 (_1!21365 lt!1149245) (_2!21365 lt!1149245)) lt!1148159)))

(declare-fun sizeTr!189 (List!36989 Int) Int)

(assert (=> d!960146 (= lt!1149245 (findLongestMatchInner!879 (regex!5374 (rule!7926 (h!42287 tokens!494))) Nil!36865 0 lt!1148159 lt!1148159 (sizeTr!189 lt!1148159 0)))))

(declare-fun lt!1149244 () Unit!51972)

(declare-fun lt!1149242 () Unit!51972)

(assert (=> d!960146 (= lt!1149244 lt!1149242)))

(declare-fun lt!1149238 () List!36989)

(declare-fun lt!1149239 () Int)

(assert (=> d!960146 (= (sizeTr!189 lt!1149238 lt!1149239) (+ (size!27895 lt!1149238) lt!1149239))))

(declare-fun lemmaSizeTrEqualsSize!188 (List!36989 Int) Unit!51972)

(assert (=> d!960146 (= lt!1149242 (lemmaSizeTrEqualsSize!188 lt!1149238 lt!1149239))))

(assert (=> d!960146 (= lt!1149239 0)))

(assert (=> d!960146 (= lt!1149238 Nil!36865)))

(declare-fun lt!1149243 () Unit!51972)

(declare-fun lt!1149241 () Unit!51972)

(assert (=> d!960146 (= lt!1149243 lt!1149241)))

(declare-fun lt!1149240 () Int)

(assert (=> d!960146 (= (sizeTr!189 lt!1148159 lt!1149240) (+ (size!27895 lt!1148159) lt!1149240))))

(assert (=> d!960146 (= lt!1149241 (lemmaSizeTrEqualsSize!188 lt!1148159 lt!1149240))))

(assert (=> d!960146 (= lt!1149240 0)))

(assert (=> d!960146 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!960146 (= (findLongestMatch!794 (regex!5374 (rule!7926 (h!42287 tokens!494))) lt!1148159) lt!1149245)))

(declare-fun bs!554948 () Bool)

(assert (= bs!554948 d!960146))

(assert (=> bs!554948 m!3745389))

(assert (=> bs!554948 m!3747477))

(declare-fun m!3748481 () Bool)

(assert (=> bs!554948 m!3748481))

(declare-fun m!3748483 () Bool)

(assert (=> bs!554948 m!3748483))

(declare-fun m!3748485 () Bool)

(assert (=> bs!554948 m!3748485))

(declare-fun m!3748487 () Bool)

(assert (=> bs!554948 m!3748487))

(declare-fun m!3748489 () Bool)

(assert (=> bs!554948 m!3748489))

(declare-fun m!3748491 () Bool)

(assert (=> bs!554948 m!3748491))

(declare-fun m!3748493 () Bool)

(assert (=> bs!554948 m!3748493))

(assert (=> bs!554948 m!3748489))

(declare-fun m!3748495 () Bool)

(assert (=> bs!554948 m!3748495))

(assert (=> d!959244 d!960146))

(declare-fun d!960166 () Bool)

(declare-fun res!1368896 () Bool)

(declare-fun e!2100358 () Bool)

(assert (=> d!960166 (=> (not res!1368896) (not e!2100358))))

(assert (=> d!960166 (= res!1368896 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (=> d!960166 (= (ruleValid!1704 thiss!18206 (rule!7926 (h!42287 tokens!494))) e!2100358)))

(declare-fun b!3383451 () Bool)

(declare-fun res!1368897 () Bool)

(assert (=> b!3383451 (=> (not res!1368897) (not e!2100358))))

(assert (=> b!3383451 (= res!1368897 (not (nullable!3451 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun b!3383452 () Bool)

(assert (=> b!3383452 (= e!2100358 (not (= (tag!5950 (rule!7926 (h!42287 tokens!494))) (String!41355 ""))))))

(assert (= (and d!960166 res!1368896) b!3383451))

(assert (= (and b!3383451 res!1368897) b!3383452))

(assert (=> d!960166 m!3747477))

(assert (=> b!3383451 m!3747475))

(assert (=> d!959244 d!960166))

(declare-fun b!3383453 () Bool)

(declare-fun res!1368904 () Bool)

(declare-fun e!2100363 () Bool)

(assert (=> b!3383453 (=> res!1368904 e!2100363)))

(assert (=> b!3383453 (= res!1368904 (not (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))))

(declare-fun b!3383454 () Bool)

(declare-fun res!1368898 () Bool)

(declare-fun e!2100365 () Bool)

(assert (=> b!3383454 (=> res!1368898 e!2100365)))

(declare-fun e!2100362 () Bool)

(assert (=> b!3383454 (= res!1368898 e!2100362)))

(declare-fun res!1368905 () Bool)

(assert (=> b!3383454 (=> (not res!1368905) (not e!2100362))))

(declare-fun lt!1149246 () Bool)

(assert (=> b!3383454 (= res!1368905 lt!1149246)))

(declare-fun b!3383455 () Bool)

(declare-fun e!2100359 () Bool)

(declare-fun call!244743 () Bool)

(assert (=> b!3383455 (= e!2100359 (= lt!1149246 call!244743))))

(declare-fun d!960168 () Bool)

(assert (=> d!960168 e!2100359))

(declare-fun c!576239 () Bool)

(assert (=> d!960168 (= c!576239 ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun e!2100361 () Bool)

(assert (=> d!960168 (= lt!1149246 e!2100361)))

(declare-fun c!576238 () Bool)

(assert (=> d!960168 (= c!576238 (isEmpty!21105 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))

(assert (=> d!960168 (validRegex!4607 (regex!5374 (rule!7926 (h!42287 tokens!494))))))

(assert (=> d!960168 (= (matchR!4725 (regex!5374 (rule!7926 (h!42287 tokens!494))) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) lt!1149246)))

(declare-fun b!3383456 () Bool)

(declare-fun res!1368903 () Bool)

(assert (=> b!3383456 (=> res!1368903 e!2100365)))

(assert (=> b!3383456 (= res!1368903 (not ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun e!2100360 () Bool)

(assert (=> b!3383456 (= e!2100360 e!2100365)))

(declare-fun b!3383457 () Bool)

(assert (=> b!3383457 (= e!2100361 (nullable!3451 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(declare-fun b!3383458 () Bool)

(declare-fun res!1368900 () Bool)

(assert (=> b!3383458 (=> (not res!1368900) (not e!2100362))))

(assert (=> b!3383458 (= res!1368900 (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))))))))

(declare-fun bm!244738 () Bool)

(assert (=> bm!244738 (= call!244743 (isEmpty!21105 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))))))

(declare-fun b!3383459 () Bool)

(assert (=> b!3383459 (= e!2100361 (matchR!4725 (derivativeStep!3004 (regex!5374 (rule!7926 (h!42287 tokens!494))) (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))))) (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306)))))))))

(declare-fun b!3383460 () Bool)

(assert (=> b!3383460 (= e!2100360 (not lt!1149246))))

(declare-fun b!3383461 () Bool)

(declare-fun e!2100364 () Bool)

(assert (=> b!3383461 (= e!2100365 e!2100364)))

(declare-fun res!1368899 () Bool)

(assert (=> b!3383461 (=> (not res!1368899) (not e!2100364))))

(assert (=> b!3383461 (= res!1368899 (not lt!1149246))))

(declare-fun b!3383462 () Bool)

(assert (=> b!3383462 (= e!2100364 e!2100363)))

(declare-fun res!1368902 () Bool)

(assert (=> b!3383462 (=> res!1368902 e!2100363)))

(assert (=> b!3383462 (= res!1368902 call!244743)))

(declare-fun b!3383463 () Bool)

(assert (=> b!3383463 (= e!2100362 (= (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (c!575698 (regex!5374 (rule!7926 (h!42287 tokens!494))))))))

(declare-fun b!3383464 () Bool)

(assert (=> b!3383464 (= e!2100363 (not (= (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148306))))) (c!575698 (regex!5374 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun b!3383465 () Bool)

(declare-fun res!1368901 () Bool)

(assert (=> b!3383465 (=> (not res!1368901) (not e!2100362))))

(assert (=> b!3383465 (= res!1368901 (not call!244743))))

(declare-fun b!3383466 () Bool)

(assert (=> b!3383466 (= e!2100359 e!2100360)))

(declare-fun c!576237 () Bool)

(assert (=> b!3383466 (= c!576237 ((_ is EmptyLang!10133) (regex!5374 (rule!7926 (h!42287 tokens!494)))))))

(assert (= (and d!960168 c!576238) b!3383457))

(assert (= (and d!960168 (not c!576238)) b!3383459))

(assert (= (and d!960168 c!576239) b!3383455))

(assert (= (and d!960168 (not c!576239)) b!3383466))

(assert (= (and b!3383466 c!576237) b!3383460))

(assert (= (and b!3383466 (not c!576237)) b!3383456))

(assert (= (and b!3383456 (not res!1368903)) b!3383454))

(assert (= (and b!3383454 res!1368905) b!3383465))

(assert (= (and b!3383465 res!1368901) b!3383458))

(assert (= (and b!3383458 res!1368900) b!3383463))

(assert (= (and b!3383454 (not res!1368898)) b!3383461))

(assert (= (and b!3383461 res!1368899) b!3383462))

(assert (= (and b!3383462 (not res!1368902)) b!3383453))

(assert (= (and b!3383453 (not res!1368904)) b!3383464))

(assert (= (or b!3383455 b!3383462 b!3383465) bm!244738))

(assert (=> b!3383457 m!3747475))

(assert (=> bm!244738 m!3745771))

(declare-fun m!3748515 () Bool)

(assert (=> bm!244738 m!3748515))

(assert (=> d!960168 m!3745771))

(assert (=> d!960168 m!3748515))

(assert (=> d!960168 m!3747477))

(assert (=> b!3383458 m!3745771))

(declare-fun m!3748517 () Bool)

(assert (=> b!3383458 m!3748517))

(assert (=> b!3383458 m!3748517))

(declare-fun m!3748519 () Bool)

(assert (=> b!3383458 m!3748519))

(assert (=> b!3383459 m!3745771))

(declare-fun m!3748521 () Bool)

(assert (=> b!3383459 m!3748521))

(assert (=> b!3383459 m!3748521))

(declare-fun m!3748523 () Bool)

(assert (=> b!3383459 m!3748523))

(assert (=> b!3383459 m!3745771))

(assert (=> b!3383459 m!3748517))

(assert (=> b!3383459 m!3748523))

(assert (=> b!3383459 m!3748517))

(declare-fun m!3748525 () Bool)

(assert (=> b!3383459 m!3748525))

(assert (=> b!3383453 m!3745771))

(assert (=> b!3383453 m!3748517))

(assert (=> b!3383453 m!3748517))

(assert (=> b!3383453 m!3748519))

(assert (=> b!3383463 m!3745771))

(assert (=> b!3383463 m!3748521))

(assert (=> b!3383464 m!3745771))

(assert (=> b!3383464 m!3748521))

(assert (=> b!3381496 d!960168))

(assert (=> b!3381496 d!959800))

(assert (=> b!3381496 d!959802))

(assert (=> b!3381496 d!959470))

(assert (=> d!959216 d!959226))

(assert (=> d!959216 d!959210))

(declare-fun d!960170 () Bool)

(assert (=> d!960170 (isEmpty!21105 (getSuffix!1468 lt!1148159 lt!1148159))))

(assert (=> d!960170 true))

(declare-fun _$66!454 () Unit!51972)

(assert (=> d!960170 (= (choose!19566 lt!1148159) _$66!454)))

(declare-fun bs!554951 () Bool)

(assert (= bs!554951 d!960170))

(assert (=> bs!554951 m!3745371))

(assert (=> bs!554951 m!3745371))

(assert (=> bs!554951 m!3745401))

(assert (=> d!959216 d!960170))

(declare-fun d!960176 () Bool)

(declare-fun lt!1149247 () Bool)

(assert (=> d!960176 (= lt!1149247 (isEmpty!21105 (list!13331 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))))

(assert (=> d!960176 (= lt!1149247 (isEmpty!21116 (c!575699 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))))

(assert (=> d!960176 (= (isEmpty!21115 (_2!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))) lt!1149247)))

(declare-fun bs!554952 () Bool)

(assert (= bs!554952 d!960176))

(declare-fun m!3748527 () Bool)

(assert (=> bs!554952 m!3748527))

(assert (=> bs!554952 m!3748527))

(declare-fun m!3748529 () Bool)

(assert (=> bs!554952 m!3748529))

(declare-fun m!3748531 () Bool)

(assert (=> bs!554952 m!3748531))

(assert (=> b!3381917 d!960176))

(declare-fun b!3383483 () Bool)

(declare-fun e!2100375 () Bool)

(declare-fun lt!1149248 () tuple2!36452)

(assert (=> b!3383483 (= e!2100375 (= (_2!21360 lt!1149248) (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))))

(declare-fun d!960178 () Bool)

(declare-fun e!2100374 () Bool)

(assert (=> d!960178 e!2100374))

(declare-fun res!1368907 () Bool)

(assert (=> d!960178 (=> (not res!1368907) (not e!2100374))))

(assert (=> d!960178 (= res!1368907 e!2100375)))

(declare-fun c!576240 () Bool)

(assert (=> d!960178 (= c!576240 (> (size!27898 (_1!21360 lt!1149248)) 0))))

(assert (=> d!960178 (= lt!1149248 (lexTailRecV2!1016 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))) (BalanceConc!21861 Empty!11123) (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))) (BalanceConc!21863 Empty!11124)))))

(assert (=> d!960178 (= (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))) lt!1149248)))

(declare-fun b!3383484 () Bool)

(declare-fun res!1368906 () Bool)

(assert (=> b!3383484 (=> (not res!1368906) (not e!2100374))))

(assert (=> b!3383484 (= res!1368906 (= (list!13335 (_1!21360 lt!1149248)) (_1!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))))

(declare-fun b!3383485 () Bool)

(declare-fun e!2100373 () Bool)

(assert (=> b!3383485 (= e!2100375 e!2100373)))

(declare-fun res!1368908 () Bool)

(assert (=> b!3383485 (= res!1368908 (< (size!27899 (_2!21360 lt!1149248)) (size!27899 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))

(assert (=> b!3383485 (=> (not res!1368908) (not e!2100373))))

(declare-fun b!3383486 () Bool)

(assert (=> b!3383486 (= e!2100373 (not (isEmpty!21104 (_1!21360 lt!1149248))))))

(declare-fun b!3383487 () Bool)

(assert (=> b!3383487 (= e!2100374 (= (list!13331 (_2!21360 lt!1149248)) (_2!21363 (lexList!1406 thiss!18206 rules!2135 (list!13331 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))))

(assert (= (and d!960178 c!576240) b!3383485))

(assert (= (and d!960178 (not c!576240)) b!3383483))

(assert (= (and b!3383485 res!1368908) b!3383486))

(assert (= (and d!960178 res!1368907) b!3383484))

(assert (= (and b!3383484 res!1368906) b!3383487))

(declare-fun m!3748533 () Bool)

(assert (=> b!3383487 m!3748533))

(assert (=> b!3383487 m!3746185))

(declare-fun m!3748535 () Bool)

(assert (=> b!3383487 m!3748535))

(assert (=> b!3383487 m!3748535))

(declare-fun m!3748537 () Bool)

(assert (=> b!3383487 m!3748537))

(declare-fun m!3748539 () Bool)

(assert (=> b!3383485 m!3748539))

(assert (=> b!3383485 m!3746185))

(declare-fun m!3748541 () Bool)

(assert (=> b!3383485 m!3748541))

(declare-fun m!3748543 () Bool)

(assert (=> d!960178 m!3748543))

(assert (=> d!960178 m!3746185))

(assert (=> d!960178 m!3746185))

(declare-fun m!3748545 () Bool)

(assert (=> d!960178 m!3748545))

(declare-fun m!3748547 () Bool)

(assert (=> b!3383486 m!3748547))

(declare-fun m!3748549 () Bool)

(assert (=> b!3383484 m!3748549))

(assert (=> b!3383484 m!3746185))

(assert (=> b!3383484 m!3748535))

(assert (=> b!3383484 m!3748535))

(assert (=> b!3383484 m!3748537))

(assert (=> b!3381917 d!960178))

(declare-fun d!960180 () Bool)

(declare-fun lt!1149249 () BalanceConc!21860)

(assert (=> d!960180 (= (list!13331 lt!1149249) (printList!1511 thiss!18206 (list!13335 (singletonSeq!2470 (h!42287 tokens!494)))))))

(assert (=> d!960180 (= lt!1149249 (printTailRec!1458 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)) 0 (BalanceConc!21861 Empty!11123)))))

(assert (=> d!960180 (= (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))) lt!1149249)))

(declare-fun bs!554953 () Bool)

(assert (= bs!554953 d!960180))

(declare-fun m!3748551 () Bool)

(assert (=> bs!554953 m!3748551))

(assert (=> bs!554953 m!3745411))

(assert (=> bs!554953 m!3746191))

(assert (=> bs!554953 m!3746191))

(declare-fun m!3748553 () Bool)

(assert (=> bs!554953 m!3748553))

(assert (=> bs!554953 m!3745411))

(declare-fun m!3748555 () Bool)

(assert (=> bs!554953 m!3748555))

(assert (=> b!3381917 d!960180))

(assert (=> b!3381917 d!959202))

(declare-fun d!960182 () Bool)

(declare-fun res!1368909 () Bool)

(declare-fun e!2100376 () Bool)

(assert (=> d!960182 (=> res!1368909 e!2100376)))

(assert (=> d!960182 (= res!1368909 (not ((_ is Cons!36866) (t!263197 rules!2135))))))

(assert (=> d!960182 (= (sepAndNonSepRulesDisjointChars!1568 rules!2135 (t!263197 rules!2135)) e!2100376)))

(declare-fun b!3383488 () Bool)

(declare-fun e!2100377 () Bool)

(assert (=> b!3383488 (= e!2100376 e!2100377)))

(declare-fun res!1368910 () Bool)

(assert (=> b!3383488 (=> (not res!1368910) (not e!2100377))))

(assert (=> b!3383488 (= res!1368910 (ruleDisjointCharsFromAllFromOtherType!679 (h!42286 (t!263197 rules!2135)) rules!2135))))

(declare-fun b!3383489 () Bool)

(assert (=> b!3383489 (= e!2100377 (sepAndNonSepRulesDisjointChars!1568 rules!2135 (t!263197 (t!263197 rules!2135))))))

(assert (= (and d!960182 (not res!1368909)) b!3383488))

(assert (= (and b!3383488 res!1368910) b!3383489))

(declare-fun m!3748557 () Bool)

(assert (=> b!3383488 m!3748557))

(declare-fun m!3748559 () Bool)

(assert (=> b!3383489 m!3748559))

(assert (=> b!3381555 d!960182))

(declare-fun d!960184 () Bool)

(assert (=> d!960184 (= (list!13331 lt!1148220) (list!13334 (c!575699 lt!1148220)))))

(declare-fun bs!554954 () Bool)

(assert (= bs!554954 d!960184))

(declare-fun m!3748561 () Bool)

(assert (=> bs!554954 m!3748561))

(assert (=> d!959174 d!960184))

(assert (=> b!3381519 d!959466))

(assert (=> b!3381519 d!959214))

(declare-fun b!3383490 () Bool)

(declare-fun res!1368917 () Bool)

(declare-fun e!2100382 () Bool)

(assert (=> b!3383490 (=> res!1368917 e!2100382)))

(assert (=> b!3383490 (= res!1368917 (not (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 separatorToken!241))))))))

(declare-fun b!3383491 () Bool)

(declare-fun res!1368911 () Bool)

(declare-fun e!2100384 () Bool)

(assert (=> b!3383491 (=> res!1368911 e!2100384)))

(declare-fun e!2100381 () Bool)

(assert (=> b!3383491 (= res!1368911 e!2100381)))

(declare-fun res!1368918 () Bool)

(assert (=> b!3383491 (=> (not res!1368918) (not e!2100381))))

(declare-fun lt!1149250 () Bool)

(assert (=> b!3383491 (= res!1368918 lt!1149250)))

(declare-fun b!3383492 () Bool)

(declare-fun e!2100378 () Bool)

(declare-fun call!244744 () Bool)

(assert (=> b!3383492 (= e!2100378 (= lt!1149250 call!244744))))

(declare-fun d!960186 () Bool)

(assert (=> d!960186 e!2100378))

(declare-fun c!576243 () Bool)

(assert (=> d!960186 (= c!576243 ((_ is EmptyExpr!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))))

(declare-fun e!2100380 () Bool)

(assert (=> d!960186 (= lt!1149250 e!2100380)))

(declare-fun c!576242 () Bool)

(assert (=> d!960186 (= c!576242 (isEmpty!21105 (list!13331 (charsOf!3388 separatorToken!241))))))

(assert (=> d!960186 (validRegex!4607 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))

(assert (=> d!960186 (= (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))) (list!13331 (charsOf!3388 separatorToken!241))) lt!1149250)))

(declare-fun b!3383493 () Bool)

(declare-fun res!1368916 () Bool)

(assert (=> b!3383493 (=> res!1368916 e!2100384)))

(assert (=> b!3383493 (= res!1368916 (not ((_ is ElementMatch!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))))

(declare-fun e!2100379 () Bool)

(assert (=> b!3383493 (= e!2100379 e!2100384)))

(declare-fun b!3383494 () Bool)

(assert (=> b!3383494 (= e!2100380 (nullable!3451 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))))

(declare-fun b!3383495 () Bool)

(declare-fun res!1368913 () Bool)

(assert (=> b!3383495 (=> (not res!1368913) (not e!2100381))))

(assert (=> b!3383495 (= res!1368913 (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 separatorToken!241)))))))

(declare-fun bm!244739 () Bool)

(assert (=> bm!244739 (= call!244744 (isEmpty!21105 (list!13331 (charsOf!3388 separatorToken!241))))))

(declare-fun b!3383496 () Bool)

(assert (=> b!3383496 (= e!2100380 (matchR!4725 (derivativeStep!3004 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))) (head!7225 (list!13331 (charsOf!3388 separatorToken!241)))) (tail!5355 (list!13331 (charsOf!3388 separatorToken!241)))))))

(declare-fun b!3383497 () Bool)

(assert (=> b!3383497 (= e!2100379 (not lt!1149250))))

(declare-fun b!3383498 () Bool)

(declare-fun e!2100383 () Bool)

(assert (=> b!3383498 (= e!2100384 e!2100383)))

(declare-fun res!1368912 () Bool)

(assert (=> b!3383498 (=> (not res!1368912) (not e!2100383))))

(assert (=> b!3383498 (= res!1368912 (not lt!1149250))))

(declare-fun b!3383499 () Bool)

(assert (=> b!3383499 (= e!2100383 e!2100382)))

(declare-fun res!1368915 () Bool)

(assert (=> b!3383499 (=> res!1368915 e!2100382)))

(assert (=> b!3383499 (= res!1368915 call!244744)))

(declare-fun b!3383500 () Bool)

(assert (=> b!3383500 (= e!2100381 (= (head!7225 (list!13331 (charsOf!3388 separatorToken!241))) (c!575698 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241))))))))))

(declare-fun b!3383501 () Bool)

(assert (=> b!3383501 (= e!2100382 (not (= (head!7225 (list!13331 (charsOf!3388 separatorToken!241))) (c!575698 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))))))

(declare-fun b!3383502 () Bool)

(declare-fun res!1368914 () Bool)

(assert (=> b!3383502 (=> (not res!1368914) (not e!2100381))))

(assert (=> b!3383502 (= res!1368914 (not call!244744))))

(declare-fun b!3383503 () Bool)

(assert (=> b!3383503 (= e!2100378 e!2100379)))

(declare-fun c!576241 () Bool)

(assert (=> b!3383503 (= c!576241 ((_ is EmptyLang!10133) (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 separatorToken!241)))))))))

(assert (= (and d!960186 c!576242) b!3383494))

(assert (= (and d!960186 (not c!576242)) b!3383496))

(assert (= (and d!960186 c!576243) b!3383492))

(assert (= (and d!960186 (not c!576243)) b!3383503))

(assert (= (and b!3383503 c!576241) b!3383497))

(assert (= (and b!3383503 (not c!576241)) b!3383493))

(assert (= (and b!3383493 (not res!1368916)) b!3383491))

(assert (= (and b!3383491 res!1368918) b!3383502))

(assert (= (and b!3383502 res!1368914) b!3383495))

(assert (= (and b!3383495 res!1368913) b!3383500))

(assert (= (and b!3383491 (not res!1368911)) b!3383498))

(assert (= (and b!3383498 res!1368912) b!3383499))

(assert (= (and b!3383499 (not res!1368915)) b!3383490))

(assert (= (and b!3383490 (not res!1368917)) b!3383501))

(assert (= (or b!3383492 b!3383499 b!3383502) bm!244739))

(declare-fun m!3748563 () Bool)

(assert (=> b!3383494 m!3748563))

(assert (=> bm!244739 m!3745323))

(declare-fun m!3748565 () Bool)

(assert (=> bm!244739 m!3748565))

(assert (=> d!960186 m!3745323))

(assert (=> d!960186 m!3748565))

(declare-fun m!3748567 () Bool)

(assert (=> d!960186 m!3748567))

(assert (=> b!3383495 m!3745323))

(declare-fun m!3748569 () Bool)

(assert (=> b!3383495 m!3748569))

(assert (=> b!3383495 m!3748569))

(declare-fun m!3748571 () Bool)

(assert (=> b!3383495 m!3748571))

(assert (=> b!3383496 m!3745323))

(declare-fun m!3748573 () Bool)

(assert (=> b!3383496 m!3748573))

(assert (=> b!3383496 m!3748573))

(declare-fun m!3748575 () Bool)

(assert (=> b!3383496 m!3748575))

(assert (=> b!3383496 m!3745323))

(assert (=> b!3383496 m!3748569))

(assert (=> b!3383496 m!3748575))

(assert (=> b!3383496 m!3748569))

(declare-fun m!3748577 () Bool)

(assert (=> b!3383496 m!3748577))

(assert (=> b!3383490 m!3745323))

(assert (=> b!3383490 m!3748569))

(assert (=> b!3383490 m!3748569))

(assert (=> b!3383490 m!3748571))

(assert (=> b!3383500 m!3745323))

(assert (=> b!3383500 m!3748573))

(assert (=> b!3383501 m!3745323))

(assert (=> b!3383501 m!3748573))

(assert (=> b!3381519 d!960186))

(assert (=> b!3381519 d!959378))

(assert (=> b!3381519 d!959384))

(declare-fun d!960188 () Bool)

(assert (=> d!960188 (= (list!13331 (_2!21360 lt!1148228)) (list!13334 (c!575699 (_2!21360 lt!1148228))))))

(declare-fun bs!554955 () Bool)

(assert (= bs!554955 d!960188))

(declare-fun m!3748579 () Bool)

(assert (=> bs!554955 m!3748579))

(assert (=> b!3381351 d!960188))

(assert (=> b!3381351 d!959440))

(assert (=> b!3381351 d!959450))

(assert (=> b!3381492 d!959470))

(declare-fun d!960190 () Bool)

(assert (=> d!960190 (= (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306))))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306))))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306))))))))

(declare-fun b_lambda!96103 () Bool)

(assert (=> (not b_lambda!96103) (not d!960190)))

(declare-fun t!263522 () Bool)

(declare-fun tb!180291 () Bool)

(assert (=> (and b!3381208 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263522) tb!180291))

(declare-fun result!223770 () Bool)

(assert (=> tb!180291 (= result!223770 (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306))))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))))))))

(declare-fun m!3748581 () Bool)

(assert (=> tb!180291 m!3748581))

(assert (=> d!960190 t!263522))

(declare-fun b_and!235223 () Bool)

(assert (= b_and!235193 (and (=> t!263522 result!223770) b_and!235223)))

(declare-fun tb!180293 () Bool)

(declare-fun t!263524 () Bool)

(assert (=> (and b!3382031 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263524) tb!180293))

(declare-fun result!223772 () Bool)

(assert (= result!223772 result!223770))

(assert (=> d!960190 t!263524))

(declare-fun b_and!235225 () Bool)

(assert (= b_and!235185 (and (=> t!263524 result!223772) b_and!235225)))

(declare-fun tb!180295 () Bool)

(declare-fun t!263526 () Bool)

(assert (=> (and b!3381213 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263526) tb!180295))

(declare-fun result!223774 () Bool)

(assert (= result!223774 result!223770))

(assert (=> d!960190 t!263526))

(declare-fun b_and!235227 () Bool)

(assert (= b_and!235187 (and (=> t!263526 result!223774) b_and!235227)))

(declare-fun tb!180297 () Bool)

(declare-fun t!263528 () Bool)

(assert (=> (and b!3381233 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263528) tb!180297))

(declare-fun result!223776 () Bool)

(assert (= result!223776 result!223770))

(assert (=> d!960190 t!263528))

(declare-fun b_and!235229 () Bool)

(assert (= b_and!235189 (and (=> t!263528 result!223776) b_and!235229)))

(declare-fun t!263530 () Bool)

(declare-fun tb!180299 () Bool)

(assert (=> (and b!3382017 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263530) tb!180299))

(declare-fun result!223778 () Bool)

(assert (= result!223778 result!223770))

(assert (=> d!960190 t!263530))

(declare-fun b_and!235231 () Bool)

(assert (= b_and!235191 (and (=> t!263530 result!223778) b_and!235231)))

(assert (=> d!960190 m!3745799))

(declare-fun m!3748583 () Bool)

(assert (=> d!960190 m!3748583))

(assert (=> b!3381492 d!960190))

(declare-fun d!960192 () Bool)

(assert (=> d!960192 (= (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))) (fromListB!1702 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))))))

(declare-fun bs!554956 () Bool)

(assert (= bs!554956 d!960192))

(declare-fun m!3748585 () Bool)

(assert (=> bs!554956 m!3748585))

(assert (=> b!3381492 d!960192))

(declare-fun d!960194 () Bool)

(assert (=> d!960194 (= (isEmpty!21105 lt!1148159) ((_ is Nil!36865) lt!1148159))))

(assert (=> d!959150 d!960194))

(declare-fun b!3383504 () Bool)

(declare-fun e!2100391 () Bool)

(declare-fun e!2100392 () Bool)

(assert (=> b!3383504 (= e!2100391 e!2100392)))

(declare-fun res!1368919 () Bool)

(assert (=> b!3383504 (= res!1368919 (not (nullable!3451 (reg!10462 (regex!5374 lt!1148170)))))))

(assert (=> b!3383504 (=> (not res!1368919) (not e!2100392))))

(declare-fun b!3383505 () Bool)

(declare-fun e!2100387 () Bool)

(declare-fun call!244747 () Bool)

(assert (=> b!3383505 (= e!2100387 call!244747)))

(declare-fun b!3383506 () Bool)

(declare-fun res!1368921 () Bool)

(assert (=> b!3383506 (=> (not res!1368921) (not e!2100387))))

(declare-fun call!244746 () Bool)

(assert (=> b!3383506 (= res!1368921 call!244746)))

(declare-fun e!2100386 () Bool)

(assert (=> b!3383506 (= e!2100386 e!2100387)))

(declare-fun bm!244740 () Bool)

(declare-fun c!576244 () Bool)

(assert (=> bm!244740 (= call!244747 (validRegex!4607 (ite c!576244 (regTwo!20779 (regex!5374 lt!1148170)) (regTwo!20778 (regex!5374 lt!1148170)))))))

(declare-fun b!3383507 () Bool)

(declare-fun res!1368922 () Bool)

(declare-fun e!2100388 () Bool)

(assert (=> b!3383507 (=> res!1368922 e!2100388)))

(assert (=> b!3383507 (= res!1368922 (not ((_ is Concat!15737) (regex!5374 lt!1148170))))))

(assert (=> b!3383507 (= e!2100386 e!2100388)))

(declare-fun bm!244741 () Bool)

(declare-fun call!244745 () Bool)

(assert (=> bm!244741 (= call!244746 call!244745)))

(declare-fun c!576245 () Bool)

(declare-fun bm!244742 () Bool)

(assert (=> bm!244742 (= call!244745 (validRegex!4607 (ite c!576245 (reg!10462 (regex!5374 lt!1148170)) (ite c!576244 (regOne!20779 (regex!5374 lt!1148170)) (regOne!20778 (regex!5374 lt!1148170))))))))

(declare-fun d!960196 () Bool)

(declare-fun res!1368923 () Bool)

(declare-fun e!2100389 () Bool)

(assert (=> d!960196 (=> res!1368923 e!2100389)))

(assert (=> d!960196 (= res!1368923 ((_ is ElementMatch!10133) (regex!5374 lt!1148170)))))

(assert (=> d!960196 (= (validRegex!4607 (regex!5374 lt!1148170)) e!2100389)))

(declare-fun b!3383508 () Bool)

(declare-fun e!2100390 () Bool)

(assert (=> b!3383508 (= e!2100388 e!2100390)))

(declare-fun res!1368920 () Bool)

(assert (=> b!3383508 (=> (not res!1368920) (not e!2100390))))

(assert (=> b!3383508 (= res!1368920 call!244746)))

(declare-fun b!3383509 () Bool)

(assert (=> b!3383509 (= e!2100390 call!244747)))

(declare-fun b!3383510 () Bool)

(assert (=> b!3383510 (= e!2100391 e!2100386)))

(assert (=> b!3383510 (= c!576244 ((_ is Union!10133) (regex!5374 lt!1148170)))))

(declare-fun b!3383511 () Bool)

(assert (=> b!3383511 (= e!2100389 e!2100391)))

(assert (=> b!3383511 (= c!576245 ((_ is Star!10133) (regex!5374 lt!1148170)))))

(declare-fun b!3383512 () Bool)

(assert (=> b!3383512 (= e!2100392 call!244745)))

(assert (= (and d!960196 (not res!1368923)) b!3383511))

(assert (= (and b!3383511 c!576245) b!3383504))

(assert (= (and b!3383511 (not c!576245)) b!3383510))

(assert (= (and b!3383504 res!1368919) b!3383512))

(assert (= (and b!3383510 c!576244) b!3383506))

(assert (= (and b!3383510 (not c!576244)) b!3383507))

(assert (= (and b!3383506 res!1368921) b!3383505))

(assert (= (and b!3383507 (not res!1368922)) b!3383508))

(assert (= (and b!3383508 res!1368920) b!3383509))

(assert (= (or b!3383505 b!3383509) bm!244740))

(assert (= (or b!3383506 b!3383508) bm!244741))

(assert (= (or b!3383512 bm!244741) bm!244742))

(declare-fun m!3748587 () Bool)

(assert (=> b!3383504 m!3748587))

(declare-fun m!3748589 () Bool)

(assert (=> bm!244740 m!3748589))

(declare-fun m!3748591 () Bool)

(assert (=> bm!244742 m!3748591))

(assert (=> d!959150 d!960196))

(declare-fun d!960198 () Bool)

(declare-fun e!2100395 () Bool)

(assert (=> d!960198 e!2100395))

(declare-fun res!1368926 () Bool)

(assert (=> d!960198 (=> (not res!1368926) (not e!2100395))))

(declare-fun lt!1149253 () BalanceConc!21862)

(assert (=> d!960198 (= res!1368926 (= (list!13335 lt!1149253) tokens!494))))

(declare-fun fromList!705 (List!36991) Conc!11124)

(assert (=> d!960198 (= lt!1149253 (BalanceConc!21863 (fromList!705 tokens!494)))))

(assert (=> d!960198 (= (fromListB!1703 tokens!494) lt!1149253)))

(declare-fun b!3383515 () Bool)

(assert (=> b!3383515 (= e!2100395 (isBalanced!3353 (fromList!705 tokens!494)))))

(assert (= (and d!960198 res!1368926) b!3383515))

(declare-fun m!3748593 () Bool)

(assert (=> d!960198 m!3748593))

(declare-fun m!3748595 () Bool)

(assert (=> d!960198 m!3748595))

(assert (=> b!3383515 m!3748595))

(assert (=> b!3383515 m!3748595))

(declare-fun m!3748597 () Bool)

(assert (=> b!3383515 m!3748597))

(assert (=> d!959360 d!960198))

(declare-fun d!960200 () Bool)

(declare-fun lt!1149254 () Int)

(assert (=> d!960200 (>= lt!1149254 0)))

(declare-fun e!2100396 () Int)

(assert (=> d!960200 (= lt!1149254 e!2100396)))

(declare-fun c!576247 () Bool)

(assert (=> d!960200 (= c!576247 ((_ is Nil!36865) (originalCharacters!6088 separatorToken!241)))))

(assert (=> d!960200 (= (size!27895 (originalCharacters!6088 separatorToken!241)) lt!1149254)))

(declare-fun b!3383516 () Bool)

(assert (=> b!3383516 (= e!2100396 0)))

(declare-fun b!3383517 () Bool)

(assert (=> b!3383517 (= e!2100396 (+ 1 (size!27895 (t!263196 (originalCharacters!6088 separatorToken!241)))))))

(assert (= (and d!960200 c!576247) b!3383516))

(assert (= (and d!960200 (not c!576247)) b!3383517))

(declare-fun m!3748599 () Bool)

(assert (=> b!3383517 m!3748599))

(assert (=> b!3381334 d!960200))

(assert (=> bm!244531 d!959740))

(declare-fun d!960202 () Bool)

(declare-fun lt!1149255 () Bool)

(assert (=> d!960202 (= lt!1149255 (isEmpty!21105 (list!13331 (_2!21360 lt!1148451))))))

(assert (=> d!960202 (= lt!1149255 (isEmpty!21116 (c!575699 (_2!21360 lt!1148451))))))

(assert (=> d!960202 (= (isEmpty!21115 (_2!21360 lt!1148451)) lt!1149255)))

(declare-fun bs!554957 () Bool)

(assert (= bs!554957 d!960202))

(declare-fun m!3748601 () Bool)

(assert (=> bs!554957 m!3748601))

(assert (=> bs!554957 m!3748601))

(declare-fun m!3748603 () Bool)

(assert (=> bs!554957 m!3748603))

(declare-fun m!3748605 () Bool)

(assert (=> bs!554957 m!3748605))

(assert (=> b!3381981 d!960202))

(declare-fun b!3383521 () Bool)

(declare-fun e!2100398 () List!36989)

(assert (=> b!3383521 (= e!2100398 (++!9009 (list!13334 (left!28740 (c!575699 (charsOf!3388 separatorToken!241)))) (list!13334 (right!29070 (c!575699 (charsOf!3388 separatorToken!241))))))))

(declare-fun b!3383519 () Bool)

(declare-fun e!2100397 () List!36989)

(assert (=> b!3383519 (= e!2100397 e!2100398)))

(declare-fun c!576249 () Bool)

(assert (=> b!3383519 (= c!576249 ((_ is Leaf!17421) (c!575699 (charsOf!3388 separatorToken!241))))))

(declare-fun b!3383520 () Bool)

(assert (=> b!3383520 (= e!2100398 (list!13337 (xs!14277 (c!575699 (charsOf!3388 separatorToken!241)))))))

(declare-fun b!3383518 () Bool)

(assert (=> b!3383518 (= e!2100397 Nil!36865)))

(declare-fun d!960204 () Bool)

(declare-fun c!576248 () Bool)

(assert (=> d!960204 (= c!576248 ((_ is Empty!11123) (c!575699 (charsOf!3388 separatorToken!241))))))

(assert (=> d!960204 (= (list!13334 (c!575699 (charsOf!3388 separatorToken!241))) e!2100397)))

(assert (= (and d!960204 c!576248) b!3383518))

(assert (= (and d!960204 (not c!576248)) b!3383519))

(assert (= (and b!3383519 c!576249) b!3383520))

(assert (= (and b!3383519 (not c!576249)) b!3383521))

(declare-fun m!3748607 () Bool)

(assert (=> b!3383521 m!3748607))

(declare-fun m!3748609 () Bool)

(assert (=> b!3383521 m!3748609))

(assert (=> b!3383521 m!3748607))

(assert (=> b!3383521 m!3748609))

(declare-fun m!3748611 () Bool)

(assert (=> b!3383521 m!3748611))

(declare-fun m!3748613 () Bool)

(assert (=> b!3383520 m!3748613))

(assert (=> d!959384 d!960204))

(declare-fun d!960206 () Bool)

(declare-fun lt!1149256 () Bool)

(assert (=> d!960206 (= lt!1149256 (select (content!5080 (t!263197 rules!2135)) (rule!7926 (h!42287 tokens!494))))))

(declare-fun e!2100399 () Bool)

(assert (=> d!960206 (= lt!1149256 e!2100399)))

(declare-fun res!1368927 () Bool)

(assert (=> d!960206 (=> (not res!1368927) (not e!2100399))))

(assert (=> d!960206 (= res!1368927 ((_ is Cons!36866) (t!263197 rules!2135)))))

(assert (=> d!960206 (= (contains!6742 (t!263197 rules!2135) (rule!7926 (h!42287 tokens!494))) lt!1149256)))

(declare-fun b!3383522 () Bool)

(declare-fun e!2100400 () Bool)

(assert (=> b!3383522 (= e!2100399 e!2100400)))

(declare-fun res!1368928 () Bool)

(assert (=> b!3383522 (=> res!1368928 e!2100400)))

(assert (=> b!3383522 (= res!1368928 (= (h!42286 (t!263197 rules!2135)) (rule!7926 (h!42287 tokens!494))))))

(declare-fun b!3383523 () Bool)

(assert (=> b!3383523 (= e!2100400 (contains!6742 (t!263197 (t!263197 rules!2135)) (rule!7926 (h!42287 tokens!494))))))

(assert (= (and d!960206 res!1368927) b!3383522))

(assert (= (and b!3383522 (not res!1368928)) b!3383523))

(assert (=> d!960206 m!3747819))

(declare-fun m!3748615 () Bool)

(assert (=> d!960206 m!3748615))

(declare-fun m!3748617 () Bool)

(assert (=> b!3383523 m!3748617))

(assert (=> b!3381557 d!960206))

(declare-fun b!3383524 () Bool)

(declare-fun e!2100401 () List!36989)

(assert (=> b!3383524 (= e!2100401 lt!1148157)))

(declare-fun d!960208 () Bool)

(declare-fun e!2100402 () Bool)

(assert (=> d!960208 e!2100402))

(declare-fun res!1368929 () Bool)

(assert (=> d!960208 (=> (not res!1368929) (not e!2100402))))

(declare-fun lt!1149257 () List!36989)

(assert (=> d!960208 (= res!1368929 (= (content!5081 lt!1149257) ((_ map or) (content!5081 (t!263196 lt!1148159)) (content!5081 lt!1148157))))))

(assert (=> d!960208 (= lt!1149257 e!2100401)))

(declare-fun c!576250 () Bool)

(assert (=> d!960208 (= c!576250 ((_ is Nil!36865) (t!263196 lt!1148159)))))

(assert (=> d!960208 (= (++!9009 (t!263196 lt!1148159) lt!1148157) lt!1149257)))

(declare-fun b!3383527 () Bool)

(assert (=> b!3383527 (= e!2100402 (or (not (= lt!1148157 Nil!36865)) (= lt!1149257 (t!263196 lt!1148159))))))

(declare-fun b!3383526 () Bool)

(declare-fun res!1368930 () Bool)

(assert (=> b!3383526 (=> (not res!1368930) (not e!2100402))))

(assert (=> b!3383526 (= res!1368930 (= (size!27895 lt!1149257) (+ (size!27895 (t!263196 lt!1148159)) (size!27895 lt!1148157))))))

(declare-fun b!3383525 () Bool)

(assert (=> b!3383525 (= e!2100401 (Cons!36865 (h!42285 (t!263196 lt!1148159)) (++!9009 (t!263196 (t!263196 lt!1148159)) lt!1148157)))))

(assert (= (and d!960208 c!576250) b!3383524))

(assert (= (and d!960208 (not c!576250)) b!3383525))

(assert (= (and d!960208 res!1368929) b!3383526))

(assert (= (and b!3383526 res!1368930) b!3383527))

(declare-fun m!3748619 () Bool)

(assert (=> d!960208 m!3748619))

(assert (=> d!960208 m!3747873))

(assert (=> d!960208 m!3746247))

(declare-fun m!3748621 () Bool)

(assert (=> b!3383526 m!3748621))

(assert (=> b!3383526 m!3745701))

(assert (=> b!3383526 m!3746251))

(declare-fun m!3748623 () Bool)

(assert (=> b!3383525 m!3748623))

(assert (=> b!3381954 d!960208))

(assert (=> d!959206 d!959850))

(declare-fun d!960210 () Bool)

(assert (=> d!960210 (= (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))) (not (isEmpty!21113 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(declare-fun bs!554958 () Bool)

(assert (= bs!554958 d!960210))

(assert (=> bs!554958 m!3745375))

(declare-fun m!3748625 () Bool)

(assert (=> bs!554958 m!3748625))

(assert (=> d!959258 d!960210))

(assert (=> d!959258 d!959212))

(declare-fun d!960212 () Bool)

(declare-fun e!2100403 () Bool)

(assert (=> d!960212 e!2100403))

(declare-fun res!1368931 () Bool)

(assert (=> d!960212 (=> (not res!1368931) (not e!2100403))))

(assert (=> d!960212 (= res!1368931 (isDefined!5713 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494))))))))

(assert (=> d!960212 true))

(declare-fun _$52!1772 () Unit!51972)

(assert (=> d!960212 (= (choose!19572 thiss!18206 rules!2135 lt!1148159 (h!42287 tokens!494)) _$52!1772)))

(declare-fun b!3383528 () Bool)

(declare-fun res!1368932 () Bool)

(assert (=> b!3383528 (=> (not res!1368932) (not e!2100403))))

(assert (=> b!3383528 (= res!1368932 (matchR!4725 (regex!5374 (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))) (list!13331 (charsOf!3388 (h!42287 tokens!494)))))))

(declare-fun b!3383529 () Bool)

(assert (=> b!3383529 (= e!2100403 (= (rule!7926 (h!42287 tokens!494)) (get!11768 (getRuleFromTag!1029 thiss!18206 rules!2135 (tag!5950 (rule!7926 (h!42287 tokens!494)))))))))

(assert (= (and d!960212 res!1368931) b!3383528))

(assert (= (and b!3383528 res!1368932) b!3383529))

(assert (=> d!960212 m!3745375))

(assert (=> d!960212 m!3745375))

(assert (=> d!960212 m!3745815))

(assert (=> b!3383528 m!3745349))

(assert (=> b!3383528 m!3745375))

(assert (=> b!3383528 m!3745351))

(assert (=> b!3383528 m!3745821))

(assert (=> b!3383528 m!3745349))

(assert (=> b!3383528 m!3745351))

(assert (=> b!3383528 m!3745375))

(assert (=> b!3383528 m!3745819))

(assert (=> b!3383529 m!3745375))

(assert (=> b!3383529 m!3745375))

(assert (=> b!3383529 m!3745819))

(assert (=> d!959258 d!960212))

(assert (=> d!959258 d!959146))

(declare-fun b!3383530 () Bool)

(declare-fun res!1368939 () Bool)

(declare-fun e!2100408 () Bool)

(assert (=> b!3383530 (=> res!1368939 e!2100408)))

(assert (=> b!3383530 (= res!1368939 (not (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))))

(declare-fun b!3383531 () Bool)

(declare-fun res!1368933 () Bool)

(declare-fun e!2100410 () Bool)

(assert (=> b!3383531 (=> res!1368933 e!2100410)))

(declare-fun e!2100407 () Bool)

(assert (=> b!3383531 (= res!1368933 e!2100407)))

(declare-fun res!1368940 () Bool)

(assert (=> b!3383531 (=> (not res!1368940) (not e!2100407))))

(declare-fun lt!1149258 () Bool)

(assert (=> b!3383531 (= res!1368940 lt!1149258)))

(declare-fun b!3383532 () Bool)

(declare-fun e!2100404 () Bool)

(declare-fun call!244748 () Bool)

(assert (=> b!3383532 (= e!2100404 (= lt!1149258 call!244748))))

(declare-fun d!960214 () Bool)

(assert (=> d!960214 e!2100404))

(declare-fun c!576253 () Bool)

(assert (=> d!960214 (= c!576253 ((_ is EmptyExpr!10133) (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun e!2100406 () Bool)

(assert (=> d!960214 (= lt!1149258 e!2100406)))

(declare-fun c!576252 () Bool)

(assert (=> d!960214 (= c!576252 (isEmpty!21105 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))

(assert (=> d!960214 (validRegex!4607 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))

(assert (=> d!960214 (= (matchR!4725 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) lt!1149258)))

(declare-fun b!3383533 () Bool)

(declare-fun res!1368938 () Bool)

(assert (=> b!3383533 (=> res!1368938 e!2100410)))

(assert (=> b!3383533 (= res!1368938 (not ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun e!2100405 () Bool)

(assert (=> b!3383533 (= e!2100405 e!2100410)))

(declare-fun b!3383534 () Bool)

(assert (=> b!3383534 (= e!2100406 (nullable!3451 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun b!3383535 () Bool)

(declare-fun res!1368935 () Bool)

(assert (=> b!3383535 (=> (not res!1368935) (not e!2100407))))

(assert (=> b!3383535 (= res!1368935 (isEmpty!21105 (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun bm!244743 () Bool)

(assert (=> bm!244743 (= call!244748 (isEmpty!21105 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun b!3383536 () Bool)

(assert (=> b!3383536 (= e!2100406 (matchR!4725 (derivativeStep!3004 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))))) (tail!5355 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun b!3383537 () Bool)

(assert (=> b!3383537 (= e!2100405 (not lt!1149258))))

(declare-fun b!3383538 () Bool)

(declare-fun e!2100409 () Bool)

(assert (=> b!3383538 (= e!2100410 e!2100409)))

(declare-fun res!1368934 () Bool)

(assert (=> b!3383538 (=> (not res!1368934) (not e!2100409))))

(assert (=> b!3383538 (= res!1368934 (not lt!1149258))))

(declare-fun b!3383539 () Bool)

(assert (=> b!3383539 (= e!2100409 e!2100408)))

(declare-fun res!1368937 () Bool)

(assert (=> b!3383539 (=> res!1368937 e!2100408)))

(assert (=> b!3383539 (= res!1368937 call!244748)))

(declare-fun b!3383540 () Bool)

(assert (=> b!3383540 (= e!2100407 (= (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (c!575698 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun b!3383541 () Bool)

(assert (=> b!3383541 (= e!2100408 (not (= (head!7225 (list!13331 (charsOf!3388 (_1!21361 (get!11770 lt!1148436))))) (c!575698 (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))))))))

(declare-fun b!3383542 () Bool)

(declare-fun res!1368936 () Bool)

(assert (=> b!3383542 (=> (not res!1368936) (not e!2100407))))

(assert (=> b!3383542 (= res!1368936 (not call!244748))))

(declare-fun b!3383543 () Bool)

(assert (=> b!3383543 (= e!2100404 e!2100405)))

(declare-fun c!576251 () Bool)

(assert (=> b!3383543 (= c!576251 ((_ is EmptyLang!10133) (regex!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))))))

(assert (= (and d!960214 c!576252) b!3383534))

(assert (= (and d!960214 (not c!576252)) b!3383536))

(assert (= (and d!960214 c!576253) b!3383532))

(assert (= (and d!960214 (not c!576253)) b!3383543))

(assert (= (and b!3383543 c!576251) b!3383537))

(assert (= (and b!3383543 (not c!576251)) b!3383533))

(assert (= (and b!3383533 (not res!1368938)) b!3383531))

(assert (= (and b!3383531 res!1368940) b!3383542))

(assert (= (and b!3383542 res!1368936) b!3383535))

(assert (= (and b!3383535 res!1368935) b!3383540))

(assert (= (and b!3383531 (not res!1368933)) b!3383538))

(assert (= (and b!3383538 res!1368934) b!3383539))

(assert (= (and b!3383539 (not res!1368937)) b!3383530))

(assert (= (and b!3383530 (not res!1368939)) b!3383541))

(assert (= (or b!3383532 b!3383539 b!3383542) bm!244743))

(declare-fun m!3748627 () Bool)

(assert (=> b!3383534 m!3748627))

(assert (=> bm!244743 m!3746217))

(declare-fun m!3748629 () Bool)

(assert (=> bm!244743 m!3748629))

(assert (=> d!960214 m!3746217))

(assert (=> d!960214 m!3748629))

(declare-fun m!3748631 () Bool)

(assert (=> d!960214 m!3748631))

(assert (=> b!3383535 m!3746217))

(declare-fun m!3748633 () Bool)

(assert (=> b!3383535 m!3748633))

(assert (=> b!3383535 m!3748633))

(declare-fun m!3748635 () Bool)

(assert (=> b!3383535 m!3748635))

(assert (=> b!3383536 m!3746217))

(declare-fun m!3748637 () Bool)

(assert (=> b!3383536 m!3748637))

(assert (=> b!3383536 m!3748637))

(declare-fun m!3748639 () Bool)

(assert (=> b!3383536 m!3748639))

(assert (=> b!3383536 m!3746217))

(assert (=> b!3383536 m!3748633))

(assert (=> b!3383536 m!3748639))

(assert (=> b!3383536 m!3748633))

(declare-fun m!3748641 () Bool)

(assert (=> b!3383536 m!3748641))

(assert (=> b!3383530 m!3746217))

(assert (=> b!3383530 m!3748633))

(assert (=> b!3383530 m!3748633))

(assert (=> b!3383530 m!3748635))

(assert (=> b!3383540 m!3746217))

(assert (=> b!3383540 m!3748637))

(assert (=> b!3383541 m!3746217))

(assert (=> b!3383541 m!3748637))

(assert (=> b!3381942 d!960214))

(assert (=> b!3381942 d!959612))

(assert (=> b!3381942 d!959606))

(assert (=> b!3381942 d!959610))

(declare-fun d!960216 () Bool)

(assert (=> d!960216 (= (isEmpty!21113 lt!1148268) (not ((_ is Some!7394) lt!1148268)))))

(assert (=> d!959212 d!960216))

(assert (=> d!959212 d!959146))

(declare-fun bs!554959 () Bool)

(declare-fun d!960218 () Bool)

(assert (= bs!554959 (and d!960218 d!959808)))

(declare-fun lambda!120539 () Int)

(assert (=> bs!554959 (= (and (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (= lambda!120539 lambda!120514))))

(declare-fun bs!554960 () Bool)

(assert (= bs!554960 (and d!960218 d!959910)))

(assert (=> bs!554960 (= (and (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (h!42286 rules!2135)))) (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (h!42286 rules!2135))))) (= lambda!120539 lambda!120518))))

(declare-fun bs!554961 () Bool)

(assert (= bs!554961 (and d!960218 d!960044)))

(assert (=> bs!554961 (= (and (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (= lambda!120539 lambda!120535))))

(assert (=> d!960218 true))

(assert (=> d!960218 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) (dynLambda!15344 order!19425 lambda!120539))))

(assert (=> d!960218 true))

(assert (=> d!960218 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))) (dynLambda!15344 order!19425 lambda!120539))))

(assert (=> d!960218 (= (semiInverseModEq!2243 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241)))) (Forall!1316 lambda!120539))))

(declare-fun bs!554962 () Bool)

(assert (= bs!554962 d!960218))

(declare-fun m!3748643 () Bool)

(assert (=> bs!554962 m!3748643))

(assert (=> d!959194 d!960218))

(assert (=> bm!244518 d!960194))

(declare-fun d!960220 () Bool)

(declare-fun lt!1149259 () Bool)

(assert (=> d!960220 (= lt!1149259 (select (content!5080 rules!2135) (get!11768 lt!1148271)))))

(declare-fun e!2100411 () Bool)

(assert (=> d!960220 (= lt!1149259 e!2100411)))

(declare-fun res!1368941 () Bool)

(assert (=> d!960220 (=> (not res!1368941) (not e!2100411))))

(assert (=> d!960220 (= res!1368941 ((_ is Cons!36866) rules!2135))))

(assert (=> d!960220 (= (contains!6742 rules!2135 (get!11768 lt!1148271)) lt!1149259)))

(declare-fun b!3383544 () Bool)

(declare-fun e!2100412 () Bool)

(assert (=> b!3383544 (= e!2100411 e!2100412)))

(declare-fun res!1368942 () Bool)

(assert (=> b!3383544 (=> res!1368942 e!2100412)))

(assert (=> b!3383544 (= res!1368942 (= (h!42286 rules!2135) (get!11768 lt!1148271)))))

(declare-fun b!3383545 () Bool)

(assert (=> b!3383545 (= e!2100412 (contains!6742 (t!263197 rules!2135) (get!11768 lt!1148271)))))

(assert (= (and d!960220 res!1368941) b!3383544))

(assert (= (and b!3383544 (not res!1368942)) b!3383545))

(assert (=> d!960220 m!3745659))

(assert (=> d!960220 m!3745681))

(declare-fun m!3748645 () Bool)

(assert (=> d!960220 m!3748645))

(assert (=> b!3383545 m!3745681))

(declare-fun m!3748647 () Bool)

(assert (=> b!3383545 m!3748647))

(assert (=> b!3381403 d!960220))

(assert (=> b!3381403 d!960014))

(declare-fun d!960222 () Bool)

(declare-fun charsToInt!0 (List!36988) (_ BitVec 32))

(assert (=> d!960222 (= (inv!16 (value!173619 separatorToken!241)) (= (charsToInt!0 (text!39675 (value!173619 separatorToken!241))) (value!173610 (value!173619 separatorToken!241))))))

(declare-fun bs!554963 () Bool)

(assert (= bs!554963 d!960222))

(declare-fun m!3748649 () Bool)

(assert (=> bs!554963 m!3748649))

(assert (=> b!3381545 d!960222))

(declare-fun bm!244744 () Bool)

(declare-fun call!244750 () List!36989)

(declare-fun call!244752 () List!36989)

(assert (=> bm!244744 (= call!244750 call!244752)))

(declare-fun bm!244745 () Bool)

(declare-fun c!576254 () Bool)

(declare-fun call!244749 () List!36989)

(declare-fun call!244751 () List!36989)

(assert (=> bm!244745 (= call!244749 (++!9009 (ite c!576254 call!244751 call!244750) (ite c!576254 call!244750 call!244751)))))

(declare-fun c!576255 () Bool)

(declare-fun bm!244746 () Bool)

(assert (=> bm!244746 (= call!244752 (usedCharacters!630 (ite c!576255 (reg!10462 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) (ite c!576254 (regTwo!20779 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) (regOne!20778 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))))

(declare-fun b!3383546 () Bool)

(declare-fun e!2100416 () List!36989)

(assert (=> b!3383546 (= e!2100416 call!244749)))

(declare-fun d!960224 () Bool)

(declare-fun c!576256 () Bool)

(assert (=> d!960224 (= c!576256 (or ((_ is EmptyExpr!10133) (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) ((_ is EmptyLang!10133) (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241)))))))))

(declare-fun e!2100415 () List!36989)

(assert (=> d!960224 (= (usedCharacters!630 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) e!2100415)))

(declare-fun bm!244747 () Bool)

(assert (=> bm!244747 (= call!244751 (usedCharacters!630 (ite c!576254 (regOne!20779 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) (regTwo!20778 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))))

(declare-fun b!3383547 () Bool)

(assert (=> b!3383547 (= e!2100415 Nil!36865)))

(declare-fun b!3383548 () Bool)

(declare-fun e!2100414 () List!36989)

(assert (=> b!3383548 (= e!2100414 e!2100416)))

(assert (=> b!3383548 (= c!576254 ((_ is Union!10133) (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))

(declare-fun b!3383549 () Bool)

(declare-fun e!2100413 () List!36989)

(assert (=> b!3383549 (= e!2100413 (Cons!36865 (c!575698 (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) Nil!36865))))

(declare-fun b!3383550 () Bool)

(assert (=> b!3383550 (= e!2100416 call!244749)))

(declare-fun b!3383551 () Bool)

(assert (=> b!3383551 (= e!2100414 call!244752)))

(declare-fun b!3383552 () Bool)

(assert (=> b!3383552 (= c!576255 ((_ is Star!10133) (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))

(assert (=> b!3383552 (= e!2100413 e!2100414)))

(declare-fun b!3383553 () Bool)

(assert (=> b!3383553 (= e!2100415 e!2100413)))

(declare-fun c!576257 () Bool)

(assert (=> b!3383553 (= c!576257 ((_ is ElementMatch!10133) (ite c!575747 (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))))))

(assert (= (and d!960224 c!576256) b!3383547))

(assert (= (and d!960224 (not c!576256)) b!3383553))

(assert (= (and b!3383553 c!576257) b!3383549))

(assert (= (and b!3383553 (not c!576257)) b!3383552))

(assert (= (and b!3383552 c!576255) b!3383551))

(assert (= (and b!3383552 (not c!576255)) b!3383548))

(assert (= (and b!3383548 c!576254) b!3383550))

(assert (= (and b!3383548 (not c!576254)) b!3383546))

(assert (= (or b!3383550 b!3383546) bm!244744))

(assert (= (or b!3383550 b!3383546) bm!244747))

(assert (= (or b!3383550 b!3383546) bm!244745))

(assert (= (or b!3383551 bm!244744) bm!244746))

(declare-fun m!3748651 () Bool)

(assert (=> bm!244745 m!3748651))

(declare-fun m!3748653 () Bool)

(assert (=> bm!244746 m!3748653))

(declare-fun m!3748655 () Bool)

(assert (=> bm!244747 m!3748655))

(assert (=> bm!244530 d!960224))

(declare-fun b!3383557 () Bool)

(declare-fun e!2100418 () List!36989)

(assert (=> b!3383557 (= e!2100418 (++!9009 (list!13334 (left!28740 (c!575699 lt!1148156))) (list!13334 (right!29070 (c!575699 lt!1148156)))))))

(declare-fun b!3383555 () Bool)

(declare-fun e!2100417 () List!36989)

(assert (=> b!3383555 (= e!2100417 e!2100418)))

(declare-fun c!576259 () Bool)

(assert (=> b!3383555 (= c!576259 ((_ is Leaf!17421) (c!575699 lt!1148156)))))

(declare-fun b!3383556 () Bool)

(assert (=> b!3383556 (= e!2100418 (list!13337 (xs!14277 (c!575699 lt!1148156))))))

(declare-fun b!3383554 () Bool)

(assert (=> b!3383554 (= e!2100417 Nil!36865)))

(declare-fun d!960226 () Bool)

(declare-fun c!576258 () Bool)

(assert (=> d!960226 (= c!576258 ((_ is Empty!11123) (c!575699 lt!1148156)))))

(assert (=> d!960226 (= (list!13334 (c!575699 lt!1148156)) e!2100417)))

(assert (= (and d!960226 c!576258) b!3383554))

(assert (= (and d!960226 (not c!576258)) b!3383555))

(assert (= (and b!3383555 c!576259) b!3383556))

(assert (= (and b!3383555 (not c!576259)) b!3383557))

(declare-fun m!3748657 () Bool)

(assert (=> b!3383557 m!3748657))

(declare-fun m!3748659 () Bool)

(assert (=> b!3383557 m!3748659))

(assert (=> b!3383557 m!3748657))

(assert (=> b!3383557 m!3748659))

(declare-fun m!3748661 () Bool)

(assert (=> b!3383557 m!3748661))

(declare-fun m!3748663 () Bool)

(assert (=> b!3383556 m!3748663))

(assert (=> d!959382 d!960226))

(declare-fun b!3383561 () Bool)

(declare-fun e!2100420 () List!36989)

(assert (=> b!3383561 (= e!2100420 (++!9009 (list!13334 (left!28740 (c!575699 (charsOf!3388 (h!42287 tokens!494))))) (list!13334 (right!29070 (c!575699 (charsOf!3388 (h!42287 tokens!494)))))))))

(declare-fun b!3383559 () Bool)

(declare-fun e!2100419 () List!36989)

(assert (=> b!3383559 (= e!2100419 e!2100420)))

(declare-fun c!576261 () Bool)

(assert (=> b!3383559 (= c!576261 ((_ is Leaf!17421) (c!575699 (charsOf!3388 (h!42287 tokens!494)))))))

(declare-fun b!3383560 () Bool)

(assert (=> b!3383560 (= e!2100420 (list!13337 (xs!14277 (c!575699 (charsOf!3388 (h!42287 tokens!494))))))))

(declare-fun b!3383558 () Bool)

(assert (=> b!3383558 (= e!2100419 Nil!36865)))

(declare-fun d!960228 () Bool)

(declare-fun c!576260 () Bool)

(assert (=> d!960228 (= c!576260 ((_ is Empty!11123) (c!575699 (charsOf!3388 (h!42287 tokens!494)))))))

(assert (=> d!960228 (= (list!13334 (c!575699 (charsOf!3388 (h!42287 tokens!494)))) e!2100419)))

(assert (= (and d!960228 c!576260) b!3383558))

(assert (= (and d!960228 (not c!576260)) b!3383559))

(assert (= (and b!3383559 c!576261) b!3383560))

(assert (= (and b!3383559 (not c!576261)) b!3383561))

(declare-fun m!3748665 () Bool)

(assert (=> b!3383561 m!3748665))

(declare-fun m!3748667 () Bool)

(assert (=> b!3383561 m!3748667))

(assert (=> b!3383561 m!3748665))

(assert (=> b!3383561 m!3748667))

(declare-fun m!3748669 () Bool)

(assert (=> b!3383561 m!3748669))

(declare-fun m!3748671 () Bool)

(assert (=> b!3383560 m!3748671))

(assert (=> d!959172 d!960228))

(declare-fun b!3383562 () Bool)

(declare-fun e!2100421 () List!36989)

(assert (=> b!3383562 (= e!2100421 lt!1148261)))

(declare-fun d!960230 () Bool)

(declare-fun e!2100422 () Bool)

(assert (=> d!960230 e!2100422))

(declare-fun res!1368943 () Bool)

(assert (=> d!960230 (=> (not res!1368943) (not e!2100422))))

(declare-fun lt!1149260 () List!36989)

(assert (=> d!960230 (= res!1368943 (= (content!5081 lt!1149260) ((_ map or) (content!5081 lt!1148159) (content!5081 lt!1148261))))))

(assert (=> d!960230 (= lt!1149260 e!2100421)))

(declare-fun c!576262 () Bool)

(assert (=> d!960230 (= c!576262 ((_ is Nil!36865) lt!1148159))))

(assert (=> d!960230 (= (++!9009 lt!1148159 lt!1148261) lt!1149260)))

(declare-fun b!3383565 () Bool)

(assert (=> b!3383565 (= e!2100422 (or (not (= lt!1148261 Nil!36865)) (= lt!1149260 lt!1148159)))))

(declare-fun b!3383564 () Bool)

(declare-fun res!1368944 () Bool)

(assert (=> b!3383564 (=> (not res!1368944) (not e!2100422))))

(assert (=> b!3383564 (= res!1368944 (= (size!27895 lt!1149260) (+ (size!27895 lt!1148159) (size!27895 lt!1148261))))))

(declare-fun b!3383563 () Bool)

(assert (=> b!3383563 (= e!2100421 (Cons!36865 (h!42285 lt!1148159) (++!9009 (t!263196 lt!1148159) lt!1148261)))))

(assert (= (and d!960230 c!576262) b!3383562))

(assert (= (and d!960230 (not c!576262)) b!3383563))

(assert (= (and d!960230 res!1368943) b!3383564))

(assert (= (and b!3383564 res!1368944) b!3383565))

(declare-fun m!3748673 () Bool)

(assert (=> d!960230 m!3748673))

(assert (=> d!960230 m!3746245))

(declare-fun m!3748675 () Bool)

(assert (=> d!960230 m!3748675))

(declare-fun m!3748677 () Bool)

(assert (=> b!3383564 m!3748677))

(assert (=> b!3383564 m!3745389))

(declare-fun m!3748679 () Bool)

(assert (=> b!3383564 m!3748679))

(declare-fun m!3748681 () Bool)

(assert (=> b!3383563 m!3748681))

(assert (=> d!959210 d!960230))

(assert (=> d!959210 d!959224))

(assert (=> b!3381938 d!959612))

(declare-fun d!960232 () Bool)

(assert (=> d!960232 (= (apply!8573 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436))))) (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436))))))))

(declare-fun b_lambda!96105 () Bool)

(assert (=> (not b_lambda!96105) (not d!960232)))

(declare-fun t!263532 () Bool)

(declare-fun tb!180301 () Bool)

(assert (=> (and b!3382031 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263532) tb!180301))

(declare-fun result!223780 () Bool)

(assert (=> tb!180301 (= result!223780 (inv!21 (dynLambda!15336 (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436))))) (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436)))))))))

(declare-fun m!3748683 () Bool)

(assert (=> tb!180301 m!3748683))

(assert (=> d!960232 t!263532))

(declare-fun b_and!235233 () Bool)

(assert (= b_and!235225 (and (=> t!263532 result!223780) b_and!235233)))

(declare-fun t!263534 () Bool)

(declare-fun tb!180303 () Bool)

(assert (=> (and b!3382017 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263534) tb!180303))

(declare-fun result!223782 () Bool)

(assert (= result!223782 result!223780))

(assert (=> d!960232 t!263534))

(declare-fun b_and!235235 () Bool)

(assert (= b_and!235231 (and (=> t!263534 result!223782) b_and!235235)))

(declare-fun tb!180305 () Bool)

(declare-fun t!263536 () Bool)

(assert (=> (and b!3381233 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263536) tb!180305))

(declare-fun result!223784 () Bool)

(assert (= result!223784 result!223780))

(assert (=> d!960232 t!263536))

(declare-fun b_and!235237 () Bool)

(assert (= b_and!235229 (and (=> t!263536 result!223784) b_and!235237)))

(declare-fun tb!180307 () Bool)

(declare-fun t!263538 () Bool)

(assert (=> (and b!3381213 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263538) tb!180307))

(declare-fun result!223786 () Bool)

(assert (= result!223786 result!223780))

(assert (=> d!960232 t!263538))

(declare-fun b_and!235239 () Bool)

(assert (= b_and!235227 (and (=> t!263538 result!223786) b_and!235239)))

(declare-fun tb!180309 () Bool)

(declare-fun t!263540 () Bool)

(assert (=> (and b!3381208 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263540) tb!180309))

(declare-fun result!223788 () Bool)

(assert (= result!223788 result!223780))

(assert (=> d!960232 t!263540))

(declare-fun b_and!235241 () Bool)

(assert (= b_and!235223 (and (=> t!263540 result!223788) b_and!235241)))

(assert (=> d!960232 m!3746229))

(declare-fun m!3748685 () Bool)

(assert (=> d!960232 m!3748685))

(assert (=> b!3381938 d!960232))

(declare-fun d!960234 () Bool)

(assert (=> d!960234 (= (seqFromList!3801 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436)))) (fromListB!1702 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148436)))))))

(declare-fun bs!554964 () Bool)

(assert (= bs!554964 d!960234))

(declare-fun m!3748687 () Bool)

(assert (=> bs!554964 m!3748687))

(assert (=> b!3381938 d!960234))

(declare-fun d!960236 () Bool)

(assert (=> d!960236 (= (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241))))) (list!13338 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 separatorToken!241)))))))))

(declare-fun bs!554965 () Bool)

(assert (= bs!554965 d!960236))

(declare-fun m!3748689 () Bool)

(assert (=> bs!554965 m!3748689))

(assert (=> d!959394 d!960236))

(assert (=> d!959394 d!959512))

(assert (=> d!959394 d!959510))

(assert (=> d!959394 d!959170))

(assert (=> d!959394 d!959502))

(declare-fun d!960238 () Bool)

(declare-fun lt!1149261 () Int)

(assert (=> d!960238 (= lt!1149261 (size!27901 (list!13335 (_1!21360 lt!1148451))))))

(assert (=> d!960238 (= lt!1149261 (size!27903 (c!575700 (_1!21360 lt!1148451))))))

(assert (=> d!960238 (= (size!27898 (_1!21360 lt!1148451)) lt!1149261)))

(declare-fun bs!554966 () Bool)

(assert (= bs!554966 d!960238))

(assert (=> bs!554966 m!3747923))

(assert (=> bs!554966 m!3747923))

(declare-fun m!3748691 () Bool)

(assert (=> bs!554966 m!3748691))

(declare-fun m!3748693 () Bool)

(assert (=> bs!554966 m!3748693))

(assert (=> d!959394 d!960238))

(declare-fun d!960240 () Bool)

(assert (=> d!960240 (= (list!13335 (singletonSeq!2470 separatorToken!241)) (list!13338 (c!575700 (singletonSeq!2470 separatorToken!241))))))

(declare-fun bs!554967 () Bool)

(assert (= bs!554967 d!960240))

(declare-fun m!3748695 () Bool)

(assert (=> bs!554967 m!3748695))

(assert (=> d!959394 d!960240))

(declare-fun d!960242 () Bool)

(declare-fun lt!1149262 () Bool)

(assert (=> d!960242 (= lt!1149262 (select (content!5081 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))))) lt!1148163))))

(declare-fun e!2100425 () Bool)

(assert (=> d!960242 (= lt!1149262 e!2100425)))

(declare-fun res!1368946 () Bool)

(assert (=> d!960242 (=> (not res!1368946) (not e!2100425))))

(assert (=> d!960242 (= res!1368946 ((_ is Cons!36865) (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))))))))

(assert (=> d!960242 (= (contains!6743 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) lt!1148163) lt!1149262)))

(declare-fun b!3383566 () Bool)

(declare-fun e!2100424 () Bool)

(assert (=> b!3383566 (= e!2100425 e!2100424)))

(declare-fun res!1368945 () Bool)

(assert (=> b!3383566 (=> res!1368945 e!2100424)))

(assert (=> b!3383566 (= res!1368945 (= (h!42285 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))))) lt!1148163))))

(declare-fun b!3383567 () Bool)

(assert (=> b!3383567 (= e!2100424 (contains!6743 (t!263196 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241))))) lt!1148163))))

(assert (= (and d!960242 res!1368946) b!3383566))

(assert (= (and b!3383566 (not res!1368945)) b!3383567))

(declare-fun m!3748697 () Bool)

(assert (=> d!960242 m!3748697))

(declare-fun m!3748699 () Bool)

(assert (=> d!960242 m!3748699))

(declare-fun m!3748701 () Bool)

(assert (=> b!3383567 m!3748701))

(assert (=> b!3381518 d!960242))

(assert (=> b!3381500 d!959470))

(declare-fun d!960244 () Bool)

(declare-fun lt!1149263 () Int)

(assert (=> d!960244 (>= lt!1149263 0)))

(declare-fun e!2100426 () Int)

(assert (=> d!960244 (= lt!1149263 e!2100426)))

(declare-fun c!576263 () Bool)

(assert (=> d!960244 (= c!576263 ((_ is Nil!36865) (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))))))

(assert (=> d!960244 (= (size!27895 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))) lt!1149263)))

(declare-fun b!3383568 () Bool)

(assert (=> b!3383568 (= e!2100426 0)))

(declare-fun b!3383569 () Bool)

(assert (=> b!3383569 (= e!2100426 (+ 1 (size!27895 (t!263196 (originalCharacters!6088 (_1!21361 (get!11770 lt!1148306)))))))))

(assert (= (and d!960244 c!576263) b!3383568))

(assert (= (and d!960244 (not c!576263)) b!3383569))

(declare-fun m!3748703 () Bool)

(assert (=> b!3383569 m!3748703))

(assert (=> b!3381500 d!960244))

(declare-fun d!960246 () Bool)

(assert (=> d!960246 (= (inv!16 (value!173619 (h!42287 tokens!494))) (= (charsToInt!0 (text!39675 (value!173619 (h!42287 tokens!494)))) (value!173610 (value!173619 (h!42287 tokens!494)))))))

(declare-fun bs!554968 () Bool)

(assert (= bs!554968 d!960246))

(declare-fun m!3748705 () Bool)

(assert (=> bs!554968 m!3748705))

(assert (=> b!3381983 d!960246))

(declare-fun d!960248 () Bool)

(assert (=> d!960248 (= (list!13335 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494)))))) (list!13338 (c!575700 (_1!21360 (lex!2289 thiss!18206 rules!2135 (print!2028 thiss!18206 (singletonSeq!2470 (h!42287 tokens!494))))))))))

(declare-fun bs!554969 () Bool)

(assert (= bs!554969 d!960248))

(declare-fun m!3748707 () Bool)

(assert (=> bs!554969 m!3748707))

(assert (=> d!959362 d!960248))

(assert (=> d!959362 d!960178))

(assert (=> d!959362 d!960180))

(declare-fun d!960250 () Bool)

(assert (=> d!960250 (= (list!13335 (singletonSeq!2470 (h!42287 tokens!494))) (list!13338 (c!575700 (singletonSeq!2470 (h!42287 tokens!494)))))))

(declare-fun bs!554970 () Bool)

(assert (= bs!554970 d!960250))

(declare-fun m!3748709 () Bool)

(assert (=> bs!554970 m!3748709))

(assert (=> d!959362 d!960250))

(assert (=> d!959362 d!959202))

(declare-fun d!960252 () Bool)

(declare-fun lt!1149264 () Int)

(assert (=> d!960252 (= lt!1149264 (size!27901 (list!13335 (_1!21360 lt!1148420))))))

(assert (=> d!960252 (= lt!1149264 (size!27903 (c!575700 (_1!21360 lt!1148420))))))

(assert (=> d!960252 (= (size!27898 (_1!21360 lt!1148420)) lt!1149264)))

(declare-fun bs!554971 () Bool)

(assert (= bs!554971 d!960252))

(assert (=> bs!554971 m!3747581))

(assert (=> bs!554971 m!3747581))

(declare-fun m!3748711 () Bool)

(assert (=> bs!554971 m!3748711))

(declare-fun m!3748713 () Bool)

(assert (=> bs!554971 m!3748713))

(assert (=> d!959362 d!960252))

(assert (=> d!959362 d!959170))

(declare-fun d!960254 () Bool)

(declare-fun c!576264 () Bool)

(assert (=> d!960254 (= c!576264 ((_ is Nil!36865) (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))))))

(declare-fun e!2100427 () (InoxSet C!20452))

(assert (=> d!960254 (= (content!5081 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) e!2100427)))

(declare-fun b!3383570 () Bool)

(assert (=> b!3383570 (= e!2100427 ((as const (Array C!20452 Bool)) false))))

(declare-fun b!3383571 () Bool)

(assert (=> b!3383571 (= e!2100427 ((_ map or) (store ((as const (Array C!20452 Bool)) false) (h!42285 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))) true) (content!5081 (t!263196 (usedCharacters!630 (regex!5374 (rule!7926 separatorToken!241)))))))))

(assert (= (and d!960254 c!576264) b!3383570))

(assert (= (and d!960254 (not c!576264)) b!3383571))

(declare-fun m!3748715 () Bool)

(assert (=> b!3383571 m!3748715))

(assert (=> b!3383571 m!3748697))

(assert (=> d!959260 d!960254))

(assert (=> b!3381965 d!959900))

(assert (=> b!3381965 d!959492))

(declare-fun e!2100428 () Bool)

(assert (=> b!3382016 (= tp!1057196 e!2100428)))

(declare-fun b!3383574 () Bool)

(declare-fun tp!1057344 () Bool)

(assert (=> b!3383574 (= e!2100428 tp!1057344)))

(declare-fun b!3383573 () Bool)

(declare-fun tp!1057346 () Bool)

(declare-fun tp!1057345 () Bool)

(assert (=> b!3383573 (= e!2100428 (and tp!1057346 tp!1057345))))

(declare-fun b!3383575 () Bool)

(declare-fun tp!1057347 () Bool)

(declare-fun tp!1057348 () Bool)

(assert (=> b!3383575 (= e!2100428 (and tp!1057347 tp!1057348))))

(declare-fun b!3383572 () Bool)

(assert (=> b!3383572 (= e!2100428 tp_is_empty!17477)))

(assert (= (and b!3382016 ((_ is ElementMatch!10133) (regex!5374 (h!42286 (t!263197 rules!2135))))) b!3383572))

(assert (= (and b!3382016 ((_ is Concat!15737) (regex!5374 (h!42286 (t!263197 rules!2135))))) b!3383573))

(assert (= (and b!3382016 ((_ is Star!10133) (regex!5374 (h!42286 (t!263197 rules!2135))))) b!3383574))

(assert (= (and b!3382016 ((_ is Union!10133) (regex!5374 (h!42286 (t!263197 rules!2135))))) b!3383575))

(declare-fun e!2100433 () Bool)

(declare-fun tp!1057355 () Bool)

(declare-fun tp!1057357 () Bool)

(declare-fun b!3383584 () Bool)

(assert (=> b!3383584 (= e!2100433 (and (inv!49939 (left!28740 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))) tp!1057357 (inv!49939 (right!29070 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))) tp!1057355))))

(declare-fun b!3383586 () Bool)

(declare-fun e!2100434 () Bool)

(declare-fun tp!1057356 () Bool)

(assert (=> b!3383586 (= e!2100434 tp!1057356)))

(declare-fun b!3383585 () Bool)

(declare-fun inv!49945 (IArray!22251) Bool)

(assert (=> b!3383585 (= e!2100433 (and (inv!49945 (xs!14277 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))) e!2100434))))

(assert (=> b!3381329 (= tp!1057108 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494))))) e!2100433))))

(assert (= (and b!3381329 ((_ is Node!11123) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))) b!3383584))

(assert (= b!3383585 b!3383586))

(assert (= (and b!3381329 ((_ is Leaf!17421) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (value!173619 (h!42287 tokens!494)))))) b!3383585))

(declare-fun m!3748717 () Bool)

(assert (=> b!3383584 m!3748717))

(declare-fun m!3748719 () Bool)

(assert (=> b!3383584 m!3748719))

(declare-fun m!3748721 () Bool)

(assert (=> b!3383585 m!3748721))

(assert (=> b!3381329 m!3745537))

(declare-fun e!2100435 () Bool)

(assert (=> b!3382040 (= tp!1057221 e!2100435)))

(declare-fun b!3383589 () Bool)

(declare-fun tp!1057358 () Bool)

(assert (=> b!3383589 (= e!2100435 tp!1057358)))

(declare-fun b!3383588 () Bool)

(declare-fun tp!1057360 () Bool)

(declare-fun tp!1057359 () Bool)

(assert (=> b!3383588 (= e!2100435 (and tp!1057360 tp!1057359))))

(declare-fun b!3383590 () Bool)

(declare-fun tp!1057361 () Bool)

(declare-fun tp!1057362 () Bool)

(assert (=> b!3383590 (= e!2100435 (and tp!1057361 tp!1057362))))

(declare-fun b!3383587 () Bool)

(assert (=> b!3383587 (= e!2100435 tp_is_empty!17477)))

(assert (= (and b!3382040 ((_ is ElementMatch!10133) (regOne!20779 (regex!5374 (h!42286 rules!2135))))) b!3383587))

(assert (= (and b!3382040 ((_ is Concat!15737) (regOne!20779 (regex!5374 (h!42286 rules!2135))))) b!3383588))

(assert (= (and b!3382040 ((_ is Star!10133) (regOne!20779 (regex!5374 (h!42286 rules!2135))))) b!3383589))

(assert (= (and b!3382040 ((_ is Union!10133) (regOne!20779 (regex!5374 (h!42286 rules!2135))))) b!3383590))

(declare-fun e!2100436 () Bool)

(assert (=> b!3382040 (= tp!1057222 e!2100436)))

(declare-fun b!3383593 () Bool)

(declare-fun tp!1057363 () Bool)

(assert (=> b!3383593 (= e!2100436 tp!1057363)))

(declare-fun b!3383592 () Bool)

(declare-fun tp!1057365 () Bool)

(declare-fun tp!1057364 () Bool)

(assert (=> b!3383592 (= e!2100436 (and tp!1057365 tp!1057364))))

(declare-fun b!3383594 () Bool)

(declare-fun tp!1057366 () Bool)

(declare-fun tp!1057367 () Bool)

(assert (=> b!3383594 (= e!2100436 (and tp!1057366 tp!1057367))))

(declare-fun b!3383591 () Bool)

(assert (=> b!3383591 (= e!2100436 tp_is_empty!17477)))

(assert (= (and b!3382040 ((_ is ElementMatch!10133) (regTwo!20779 (regex!5374 (h!42286 rules!2135))))) b!3383591))

(assert (= (and b!3382040 ((_ is Concat!15737) (regTwo!20779 (regex!5374 (h!42286 rules!2135))))) b!3383592))

(assert (= (and b!3382040 ((_ is Star!10133) (regTwo!20779 (regex!5374 (h!42286 rules!2135))))) b!3383593))

(assert (= (and b!3382040 ((_ is Union!10133) (regTwo!20779 (regex!5374 (h!42286 rules!2135))))) b!3383594))

(declare-fun e!2100437 () Bool)

(assert (=> b!3382030 (= tp!1057208 e!2100437)))

(declare-fun b!3383597 () Bool)

(declare-fun tp!1057368 () Bool)

(assert (=> b!3383597 (= e!2100437 tp!1057368)))

(declare-fun b!3383596 () Bool)

(declare-fun tp!1057370 () Bool)

(declare-fun tp!1057369 () Bool)

(assert (=> b!3383596 (= e!2100437 (and tp!1057370 tp!1057369))))

(declare-fun b!3383598 () Bool)

(declare-fun tp!1057371 () Bool)

(declare-fun tp!1057372 () Bool)

(assert (=> b!3383598 (= e!2100437 (and tp!1057371 tp!1057372))))

(declare-fun b!3383595 () Bool)

(assert (=> b!3383595 (= e!2100437 tp_is_empty!17477)))

(assert (= (and b!3382030 ((_ is ElementMatch!10133) (regex!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) b!3383595))

(assert (= (and b!3382030 ((_ is Concat!15737) (regex!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) b!3383596))

(assert (= (and b!3382030 ((_ is Star!10133) (regex!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) b!3383597))

(assert (= (and b!3382030 ((_ is Union!10133) (regex!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) b!3383598))

(declare-fun b!3383599 () Bool)

(declare-fun e!2100438 () Bool)

(declare-fun tp!1057373 () Bool)

(assert (=> b!3383599 (= e!2100438 (and tp_is_empty!17477 tp!1057373))))

(assert (=> b!3382032 (= tp!1057212 e!2100438)))

(assert (= (and b!3382032 ((_ is Cons!36865) (t!263196 (originalCharacters!6088 (h!42287 tokens!494))))) b!3383599))

(declare-fun e!2100439 () Bool)

(assert (=> b!3382038 (= tp!1057220 e!2100439)))

(declare-fun b!3383602 () Bool)

(declare-fun tp!1057374 () Bool)

(assert (=> b!3383602 (= e!2100439 tp!1057374)))

(declare-fun b!3383601 () Bool)

(declare-fun tp!1057376 () Bool)

(declare-fun tp!1057375 () Bool)

(assert (=> b!3383601 (= e!2100439 (and tp!1057376 tp!1057375))))

(declare-fun b!3383603 () Bool)

(declare-fun tp!1057377 () Bool)

(declare-fun tp!1057378 () Bool)

(assert (=> b!3383603 (= e!2100439 (and tp!1057377 tp!1057378))))

(declare-fun b!3383600 () Bool)

(assert (=> b!3383600 (= e!2100439 tp_is_empty!17477)))

(assert (= (and b!3382038 ((_ is ElementMatch!10133) (regOne!20778 (regex!5374 (h!42286 rules!2135))))) b!3383600))

(assert (= (and b!3382038 ((_ is Concat!15737) (regOne!20778 (regex!5374 (h!42286 rules!2135))))) b!3383601))

(assert (= (and b!3382038 ((_ is Star!10133) (regOne!20778 (regex!5374 (h!42286 rules!2135))))) b!3383602))

(assert (= (and b!3382038 ((_ is Union!10133) (regOne!20778 (regex!5374 (h!42286 rules!2135))))) b!3383603))

(declare-fun e!2100440 () Bool)

(assert (=> b!3382038 (= tp!1057219 e!2100440)))

(declare-fun b!3383606 () Bool)

(declare-fun tp!1057379 () Bool)

(assert (=> b!3383606 (= e!2100440 tp!1057379)))

(declare-fun b!3383605 () Bool)

(declare-fun tp!1057381 () Bool)

(declare-fun tp!1057380 () Bool)

(assert (=> b!3383605 (= e!2100440 (and tp!1057381 tp!1057380))))

(declare-fun b!3383607 () Bool)

(declare-fun tp!1057382 () Bool)

(declare-fun tp!1057383 () Bool)

(assert (=> b!3383607 (= e!2100440 (and tp!1057382 tp!1057383))))

(declare-fun b!3383604 () Bool)

(assert (=> b!3383604 (= e!2100440 tp_is_empty!17477)))

(assert (= (and b!3382038 ((_ is ElementMatch!10133) (regTwo!20778 (regex!5374 (h!42286 rules!2135))))) b!3383604))

(assert (= (and b!3382038 ((_ is Concat!15737) (regTwo!20778 (regex!5374 (h!42286 rules!2135))))) b!3383605))

(assert (= (and b!3382038 ((_ is Star!10133) (regTwo!20778 (regex!5374 (h!42286 rules!2135))))) b!3383606))

(assert (= (and b!3382038 ((_ is Union!10133) (regTwo!20778 (regex!5374 (h!42286 rules!2135))))) b!3383607))

(declare-fun b!3383611 () Bool)

(declare-fun b_free!88549 () Bool)

(declare-fun b_next!89253 () Bool)

(assert (=> b!3383611 (= b_free!88549 (not b_next!89253))))

(declare-fun t!263542 () Bool)

(declare-fun tb!180311 () Bool)

(assert (=> (and b!3383611 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263542) tb!180311))

(declare-fun result!223792 () Bool)

(assert (= result!223792 result!223770))

(assert (=> d!960190 t!263542))

(declare-fun t!263544 () Bool)

(declare-fun tb!180313 () Bool)

(assert (=> (and b!3383611 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263544) tb!180313))

(declare-fun result!223794 () Bool)

(assert (= result!223794 result!223636))

(assert (=> d!959888 t!263544))

(declare-fun t!263546 () Bool)

(declare-fun tb!180315 () Bool)

(assert (=> (and b!3383611 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263546) tb!180315))

(declare-fun result!223796 () Bool)

(assert (= result!223796 result!223474))

(assert (=> d!959228 t!263546))

(declare-fun t!263548 () Bool)

(declare-fun tb!180317 () Bool)

(assert (=> (and b!3383611 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263548) tb!180317))

(declare-fun result!223798 () Bool)

(assert (= result!223798 result!223676))

(assert (=> d!960078 t!263548))

(assert (=> d!960044 t!263548))

(declare-fun tb!180319 () Bool)

(declare-fun t!263550 () Bool)

(assert (=> (and b!3383611 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263550) tb!180319))

(declare-fun result!223800 () Bool)

(assert (= result!223800 result!223780))

(assert (=> d!960232 t!263550))

(declare-fun tp!1057388 () Bool)

(declare-fun b_and!235243 () Bool)

(assert (=> b!3383611 (= tp!1057388 (and (=> t!263548 result!223798) (=> t!263544 result!223794) (=> t!263550 result!223800) (=> t!263542 result!223792) (=> t!263546 result!223796) b_and!235243))))

(declare-fun b_free!88551 () Bool)

(declare-fun b_next!89255 () Bool)

(assert (=> b!3383611 (= b_free!88551 (not b_next!89255))))

(declare-fun t!263552 () Bool)

(declare-fun tb!180321 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263552) tb!180321))

(declare-fun result!223802 () Bool)

(assert (= result!223802 result!223616))

(assert (=> d!959768 t!263552))

(declare-fun tb!180323 () Bool)

(declare-fun t!263554 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263554) tb!180323))

(declare-fun result!223804 () Bool)

(assert (= result!223804 result!223468))

(assert (=> d!959378 t!263554))

(declare-fun tb!180325 () Bool)

(declare-fun t!263556 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263556) tb!180325))

(declare-fun result!223806 () Bool)

(assert (= result!223806 result!223626))

(assert (=> d!959802 t!263556))

(declare-fun t!263558 () Bool)

(declare-fun tb!180327 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263558) tb!180327))

(declare-fun result!223808 () Bool)

(assert (= result!223808 result!223460))

(assert (=> d!959174 t!263558))

(declare-fun tb!180329 () Bool)

(declare-fun t!263560 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263560) tb!180329))

(declare-fun result!223810 () Bool)

(assert (= result!223810 result!223606))

(assert (=> d!959670 t!263560))

(assert (=> b!3381323 t!263558))

(declare-fun t!263562 () Bool)

(declare-fun tb!180331 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263562) tb!180331))

(declare-fun result!223812 () Bool)

(assert (= result!223812 result!223556))

(assert (=> b!3382166 t!263562))

(declare-fun t!263564 () Bool)

(declare-fun tb!180333 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263564) tb!180333))

(declare-fun result!223814 () Bool)

(assert (= result!223814 result!223666))

(assert (=> d!960044 t!263564))

(assert (=> b!3381333 t!263554))

(declare-fun t!263566 () Bool)

(declare-fun tb!180335 () Bool)

(assert (=> (and b!3383611 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263566) tb!180335))

(declare-fun result!223816 () Bool)

(assert (= result!223816 result!223596))

(assert (=> d!959610 t!263566))

(declare-fun tp!1057384 () Bool)

(declare-fun b_and!235245 () Bool)

(assert (=> b!3383611 (= tp!1057384 (and (=> t!263564 result!223814) (=> t!263566 result!223816) (=> t!263554 result!223804) (=> t!263552 result!223802) (=> t!263560 result!223810) (=> t!263558 result!223808) (=> t!263562 result!223812) (=> t!263556 result!223806) b_and!235245))))

(declare-fun e!2100443 () Bool)

(assert (=> b!3382028 (= tp!1057210 e!2100443)))

(declare-fun e!2100445 () Bool)

(assert (=> b!3383611 (= e!2100445 (and tp!1057388 tp!1057384))))

(declare-fun tp!1057385 () Bool)

(declare-fun e!2100442 () Bool)

(declare-fun b!3383610 () Bool)

(assert (=> b!3383610 (= e!2100442 (and tp!1057385 (inv!49932 (tag!5950 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (inv!49936 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) e!2100445))))

(declare-fun b!3383608 () Bool)

(declare-fun tp!1057387 () Bool)

(declare-fun e!2100446 () Bool)

(assert (=> b!3383608 (= e!2100443 (and (inv!49935 (h!42287 (t!263198 (t!263198 tokens!494)))) e!2100446 tp!1057387))))

(declare-fun tp!1057386 () Bool)

(declare-fun b!3383609 () Bool)

(assert (=> b!3383609 (= e!2100446 (and (inv!21 (value!173619 (h!42287 (t!263198 (t!263198 tokens!494))))) e!2100442 tp!1057386))))

(assert (= b!3383610 b!3383611))

(assert (= b!3383609 b!3383610))

(assert (= b!3383608 b!3383609))

(assert (= (and b!3382028 ((_ is Cons!36867) (t!263198 (t!263198 tokens!494)))) b!3383608))

(declare-fun m!3748723 () Bool)

(assert (=> b!3383610 m!3748723))

(declare-fun m!3748725 () Bool)

(assert (=> b!3383610 m!3748725))

(declare-fun m!3748727 () Bool)

(assert (=> b!3383608 m!3748727))

(declare-fun m!3748729 () Bool)

(assert (=> b!3383609 m!3748729))

(declare-fun b!3383614 () Bool)

(declare-fun b_free!88553 () Bool)

(declare-fun b_next!89257 () Bool)

(assert (=> b!3383614 (= b_free!88553 (not b_next!89257))))

(declare-fun t!263568 () Bool)

(declare-fun tb!180337 () Bool)

(assert (=> (and b!3383614 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263568) tb!180337))

(declare-fun result!223818 () Bool)

(assert (= result!223818 result!223770))

(assert (=> d!960190 t!263568))

(declare-fun tb!180339 () Bool)

(declare-fun t!263570 () Bool)

(assert (=> (and b!3383614 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263570) tb!180339))

(declare-fun result!223820 () Bool)

(assert (= result!223820 result!223636))

(assert (=> d!959888 t!263570))

(declare-fun t!263572 () Bool)

(declare-fun tb!180341 () Bool)

(assert (=> (and b!3383614 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263572) tb!180341))

(declare-fun result!223822 () Bool)

(assert (= result!223822 result!223474))

(assert (=> d!959228 t!263572))

(declare-fun tb!180343 () Bool)

(declare-fun t!263574 () Bool)

(assert (=> (and b!3383614 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263574) tb!180343))

(declare-fun result!223824 () Bool)

(assert (= result!223824 result!223676))

(assert (=> d!960078 t!263574))

(assert (=> d!960044 t!263574))

(declare-fun t!263576 () Bool)

(declare-fun tb!180345 () Bool)

(assert (=> (and b!3383614 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263576) tb!180345))

(declare-fun result!223826 () Bool)

(assert (= result!223826 result!223780))

(assert (=> d!960232 t!263576))

(declare-fun tp!1057390 () Bool)

(declare-fun b_and!235247 () Bool)

(assert (=> b!3383614 (= tp!1057390 (and (=> t!263576 result!223826) (=> t!263568 result!223818) (=> t!263570 result!223820) (=> t!263572 result!223822) (=> t!263574 result!223824) b_and!235247))))

(declare-fun b_free!88555 () Bool)

(declare-fun b_next!89259 () Bool)

(assert (=> b!3383614 (= b_free!88555 (not b_next!89259))))

(declare-fun tb!180347 () Bool)

(declare-fun t!263578 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (Cons!36867 (h!42287 tokens!494) Nil!36867)))))) t!263578) tb!180347))

(declare-fun result!223828 () Bool)

(assert (= result!223828 result!223616))

(assert (=> d!959768 t!263578))

(declare-fun tb!180349 () Bool)

(declare-fun t!263580 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241)))) t!263580) tb!180349))

(declare-fun result!223830 () Bool)

(assert (= result!223830 result!223468))

(assert (=> d!959378 t!263580))

(declare-fun t!263582 () Bool)

(declare-fun tb!180351 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148306)))))) t!263582) tb!180351))

(declare-fun result!223832 () Bool)

(assert (= result!223832 result!223626))

(assert (=> d!959802 t!263582))

(declare-fun tb!180353 () Bool)

(declare-fun t!263584 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263584) tb!180353))

(declare-fun result!223834 () Bool)

(assert (= result!223834 result!223460))

(assert (=> d!959174 t!263584))

(declare-fun t!263586 () Bool)

(declare-fun tb!180355 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (apply!8576 lt!1148155 0))))) t!263586) tb!180355))

(declare-fun result!223836 () Bool)

(assert (= result!223836 result!223606))

(assert (=> d!959670 t!263586))

(assert (=> b!3381323 t!263584))

(declare-fun tb!180357 () Bool)

(declare-fun t!263588 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494)))))) t!263588) tb!180357))

(declare-fun result!223838 () Bool)

(assert (= result!223838 result!223556))

(assert (=> b!3382166 t!263588))

(declare-fun tb!180359 () Bool)

(declare-fun t!263590 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494))))) t!263590) tb!180359))

(declare-fun result!223840 () Bool)

(assert (= result!223840 result!223666))

(assert (=> d!960044 t!263590))

(assert (=> b!3381333 t!263580))

(declare-fun t!263592 () Bool)

(declare-fun tb!180361 () Bool)

(assert (=> (and b!3383614 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (_1!21361 (get!11770 lt!1148436)))))) t!263592) tb!180361))

(declare-fun result!223842 () Bool)

(assert (= result!223842 result!223596))

(assert (=> d!959610 t!263592))

(declare-fun tp!1057391 () Bool)

(declare-fun b_and!235249 () Bool)

(assert (=> b!3383614 (= tp!1057391 (and (=> t!263586 result!223836) (=> t!263584 result!223834) (=> t!263592 result!223842) (=> t!263580 result!223830) (=> t!263582 result!223832) (=> t!263578 result!223828) (=> t!263590 result!223840) (=> t!263588 result!223838) b_and!235249))))

(declare-fun e!2100447 () Bool)

(assert (=> b!3383614 (= e!2100447 (and tp!1057390 tp!1057391))))

(declare-fun b!3383613 () Bool)

(declare-fun tp!1057392 () Bool)

(declare-fun e!2100449 () Bool)

(assert (=> b!3383613 (= e!2100449 (and tp!1057392 (inv!49932 (tag!5950 (h!42286 (t!263197 (t!263197 rules!2135))))) (inv!49936 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) e!2100447))))

(declare-fun b!3383612 () Bool)

(declare-fun e!2100448 () Bool)

(declare-fun tp!1057389 () Bool)

(assert (=> b!3383612 (= e!2100448 (and e!2100449 tp!1057389))))

(assert (=> b!3382015 (= tp!1057193 e!2100448)))

(assert (= b!3383613 b!3383614))

(assert (= b!3383612 b!3383613))

(assert (= (and b!3382015 ((_ is Cons!36866) (t!263197 (t!263197 rules!2135)))) b!3383612))

(declare-fun m!3748731 () Bool)

(assert (=> b!3383613 m!3748731))

(declare-fun m!3748733 () Bool)

(assert (=> b!3383613 m!3748733))

(declare-fun e!2100451 () Bool)

(assert (=> b!3382039 (= tp!1057218 e!2100451)))

(declare-fun b!3383617 () Bool)

(declare-fun tp!1057393 () Bool)

(assert (=> b!3383617 (= e!2100451 tp!1057393)))

(declare-fun b!3383616 () Bool)

(declare-fun tp!1057395 () Bool)

(declare-fun tp!1057394 () Bool)

(assert (=> b!3383616 (= e!2100451 (and tp!1057395 tp!1057394))))

(declare-fun b!3383618 () Bool)

(declare-fun tp!1057396 () Bool)

(declare-fun tp!1057397 () Bool)

(assert (=> b!3383618 (= e!2100451 (and tp!1057396 tp!1057397))))

(declare-fun b!3383615 () Bool)

(assert (=> b!3383615 (= e!2100451 tp_is_empty!17477)))

(assert (= (and b!3382039 ((_ is ElementMatch!10133) (reg!10462 (regex!5374 (h!42286 rules!2135))))) b!3383615))

(assert (= (and b!3382039 ((_ is Concat!15737) (reg!10462 (regex!5374 (h!42286 rules!2135))))) b!3383616))

(assert (= (and b!3382039 ((_ is Star!10133) (reg!10462 (regex!5374 (h!42286 rules!2135))))) b!3383617))

(assert (= (and b!3382039 ((_ is Union!10133) (reg!10462 (regex!5374 (h!42286 rules!2135))))) b!3383618))

(declare-fun b!3383619 () Bool)

(declare-fun e!2100452 () Bool)

(declare-fun tp!1057398 () Bool)

(assert (=> b!3383619 (= e!2100452 (and tp_is_empty!17477 tp!1057398))))

(assert (=> b!3382029 (= tp!1057209 e!2100452)))

(assert (= (and b!3382029 ((_ is Cons!36865) (originalCharacters!6088 (h!42287 (t!263198 tokens!494))))) b!3383619))

(declare-fun b!3383622 () Bool)

(declare-fun e!2100455 () Bool)

(assert (=> b!3383622 (= e!2100455 true)))

(declare-fun b!3383621 () Bool)

(declare-fun e!2100454 () Bool)

(assert (=> b!3383621 (= e!2100454 e!2100455)))

(declare-fun b!3383620 () Bool)

(declare-fun e!2100453 () Bool)

(assert (=> b!3383620 (= e!2100453 e!2100454)))

(assert (=> b!3381805 e!2100453))

(assert (= b!3383621 b!3383622))

(assert (= b!3383620 b!3383621))

(assert (= (and b!3381805 ((_ is Cons!36866) (t!263197 rules!2135))) b!3383620))

(assert (=> b!3383622 (< (dynLambda!15337 order!19413 (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135))))) (dynLambda!15338 order!19415 lambda!120495))))

(assert (=> b!3383622 (< (dynLambda!15339 order!19417 (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135))))) (dynLambda!15338 order!19415 lambda!120495))))

(declare-fun e!2100456 () Bool)

(assert (=> b!3382036 (= tp!1057216 e!2100456)))

(declare-fun b!3383625 () Bool)

(declare-fun tp!1057399 () Bool)

(assert (=> b!3383625 (= e!2100456 tp!1057399)))

(declare-fun b!3383624 () Bool)

(declare-fun tp!1057401 () Bool)

(declare-fun tp!1057400 () Bool)

(assert (=> b!3383624 (= e!2100456 (and tp!1057401 tp!1057400))))

(declare-fun b!3383626 () Bool)

(declare-fun tp!1057402 () Bool)

(declare-fun tp!1057403 () Bool)

(assert (=> b!3383626 (= e!2100456 (and tp!1057402 tp!1057403))))

(declare-fun b!3383623 () Bool)

(assert (=> b!3383623 (= e!2100456 tp_is_empty!17477)))

(assert (= (and b!3382036 ((_ is ElementMatch!10133) (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383623))

(assert (= (and b!3382036 ((_ is Concat!15737) (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383624))

(assert (= (and b!3382036 ((_ is Star!10133) (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383625))

(assert (= (and b!3382036 ((_ is Union!10133) (regOne!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383626))

(declare-fun e!2100457 () Bool)

(assert (=> b!3382036 (= tp!1057217 e!2100457)))

(declare-fun b!3383629 () Bool)

(declare-fun tp!1057404 () Bool)

(assert (=> b!3383629 (= e!2100457 tp!1057404)))

(declare-fun b!3383628 () Bool)

(declare-fun tp!1057406 () Bool)

(declare-fun tp!1057405 () Bool)

(assert (=> b!3383628 (= e!2100457 (and tp!1057406 tp!1057405))))

(declare-fun b!3383630 () Bool)

(declare-fun tp!1057407 () Bool)

(declare-fun tp!1057408 () Bool)

(assert (=> b!3383630 (= e!2100457 (and tp!1057407 tp!1057408))))

(declare-fun b!3383627 () Bool)

(assert (=> b!3383627 (= e!2100457 tp_is_empty!17477)))

(assert (= (and b!3382036 ((_ is ElementMatch!10133) (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383627))

(assert (= (and b!3382036 ((_ is Concat!15737) (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383628))

(assert (= (and b!3382036 ((_ is Star!10133) (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383629))

(assert (= (and b!3382036 ((_ is Union!10133) (regTwo!20779 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383630))

(declare-fun e!2100458 () Bool)

(assert (=> b!3382001 (= tp!1057180 e!2100458)))

(declare-fun b!3383633 () Bool)

(declare-fun tp!1057409 () Bool)

(assert (=> b!3383633 (= e!2100458 tp!1057409)))

(declare-fun b!3383632 () Bool)

(declare-fun tp!1057411 () Bool)

(declare-fun tp!1057410 () Bool)

(assert (=> b!3383632 (= e!2100458 (and tp!1057411 tp!1057410))))

(declare-fun b!3383634 () Bool)

(declare-fun tp!1057412 () Bool)

(declare-fun tp!1057413 () Bool)

(assert (=> b!3383634 (= e!2100458 (and tp!1057412 tp!1057413))))

(declare-fun b!3383631 () Bool)

(assert (=> b!3383631 (= e!2100458 tp_is_empty!17477)))

(assert (= (and b!3382001 ((_ is ElementMatch!10133) (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383631))

(assert (= (and b!3382001 ((_ is Concat!15737) (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383632))

(assert (= (and b!3382001 ((_ is Star!10133) (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383633))

(assert (= (and b!3382001 ((_ is Union!10133) (regOne!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383634))

(declare-fun e!2100459 () Bool)

(assert (=> b!3382001 (= tp!1057181 e!2100459)))

(declare-fun b!3383637 () Bool)

(declare-fun tp!1057414 () Bool)

(assert (=> b!3383637 (= e!2100459 tp!1057414)))

(declare-fun b!3383636 () Bool)

(declare-fun tp!1057416 () Bool)

(declare-fun tp!1057415 () Bool)

(assert (=> b!3383636 (= e!2100459 (and tp!1057416 tp!1057415))))

(declare-fun b!3383638 () Bool)

(declare-fun tp!1057417 () Bool)

(declare-fun tp!1057418 () Bool)

(assert (=> b!3383638 (= e!2100459 (and tp!1057417 tp!1057418))))

(declare-fun b!3383635 () Bool)

(assert (=> b!3383635 (= e!2100459 tp_is_empty!17477)))

(assert (= (and b!3382001 ((_ is ElementMatch!10133) (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383635))

(assert (= (and b!3382001 ((_ is Concat!15737) (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383636))

(assert (= (and b!3382001 ((_ is Star!10133) (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383637))

(assert (= (and b!3382001 ((_ is Union!10133) (regTwo!20779 (regex!5374 (rule!7926 separatorToken!241))))) b!3383638))

(declare-fun e!2100460 () Bool)

(assert (=> b!3382035 (= tp!1057213 e!2100460)))

(declare-fun b!3383641 () Bool)

(declare-fun tp!1057419 () Bool)

(assert (=> b!3383641 (= e!2100460 tp!1057419)))

(declare-fun b!3383640 () Bool)

(declare-fun tp!1057421 () Bool)

(declare-fun tp!1057420 () Bool)

(assert (=> b!3383640 (= e!2100460 (and tp!1057421 tp!1057420))))

(declare-fun b!3383642 () Bool)

(declare-fun tp!1057422 () Bool)

(declare-fun tp!1057423 () Bool)

(assert (=> b!3383642 (= e!2100460 (and tp!1057422 tp!1057423))))

(declare-fun b!3383639 () Bool)

(assert (=> b!3383639 (= e!2100460 tp_is_empty!17477)))

(assert (= (and b!3382035 ((_ is ElementMatch!10133) (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383639))

(assert (= (and b!3382035 ((_ is Concat!15737) (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383640))

(assert (= (and b!3382035 ((_ is Star!10133) (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383641))

(assert (= (and b!3382035 ((_ is Union!10133) (reg!10462 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383642))

(declare-fun e!2100461 () Bool)

(assert (=> b!3382000 (= tp!1057177 e!2100461)))

(declare-fun b!3383645 () Bool)

(declare-fun tp!1057424 () Bool)

(assert (=> b!3383645 (= e!2100461 tp!1057424)))

(declare-fun b!3383644 () Bool)

(declare-fun tp!1057426 () Bool)

(declare-fun tp!1057425 () Bool)

(assert (=> b!3383644 (= e!2100461 (and tp!1057426 tp!1057425))))

(declare-fun b!3383646 () Bool)

(declare-fun tp!1057427 () Bool)

(declare-fun tp!1057428 () Bool)

(assert (=> b!3383646 (= e!2100461 (and tp!1057427 tp!1057428))))

(declare-fun b!3383643 () Bool)

(assert (=> b!3383643 (= e!2100461 tp_is_empty!17477)))

(assert (= (and b!3382000 ((_ is ElementMatch!10133) (reg!10462 (regex!5374 (rule!7926 separatorToken!241))))) b!3383643))

(assert (= (and b!3382000 ((_ is Concat!15737) (reg!10462 (regex!5374 (rule!7926 separatorToken!241))))) b!3383644))

(assert (= (and b!3382000 ((_ is Star!10133) (reg!10462 (regex!5374 (rule!7926 separatorToken!241))))) b!3383645))

(assert (= (and b!3382000 ((_ is Union!10133) (reg!10462 (regex!5374 (rule!7926 separatorToken!241))))) b!3383646))

(declare-fun e!2100462 () Bool)

(assert (=> b!3382034 (= tp!1057215 e!2100462)))

(declare-fun b!3383649 () Bool)

(declare-fun tp!1057429 () Bool)

(assert (=> b!3383649 (= e!2100462 tp!1057429)))

(declare-fun b!3383648 () Bool)

(declare-fun tp!1057431 () Bool)

(declare-fun tp!1057430 () Bool)

(assert (=> b!3383648 (= e!2100462 (and tp!1057431 tp!1057430))))

(declare-fun b!3383650 () Bool)

(declare-fun tp!1057432 () Bool)

(declare-fun tp!1057433 () Bool)

(assert (=> b!3383650 (= e!2100462 (and tp!1057432 tp!1057433))))

(declare-fun b!3383647 () Bool)

(assert (=> b!3383647 (= e!2100462 tp_is_empty!17477)))

(assert (= (and b!3382034 ((_ is ElementMatch!10133) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383647))

(assert (= (and b!3382034 ((_ is Concat!15737) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383648))

(assert (= (and b!3382034 ((_ is Star!10133) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383649))

(assert (= (and b!3382034 ((_ is Union!10133) (regOne!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383650))

(declare-fun e!2100463 () Bool)

(assert (=> b!3382034 (= tp!1057214 e!2100463)))

(declare-fun b!3383653 () Bool)

(declare-fun tp!1057434 () Bool)

(assert (=> b!3383653 (= e!2100463 tp!1057434)))

(declare-fun b!3383652 () Bool)

(declare-fun tp!1057436 () Bool)

(declare-fun tp!1057435 () Bool)

(assert (=> b!3383652 (= e!2100463 (and tp!1057436 tp!1057435))))

(declare-fun b!3383654 () Bool)

(declare-fun tp!1057437 () Bool)

(declare-fun tp!1057438 () Bool)

(assert (=> b!3383654 (= e!2100463 (and tp!1057437 tp!1057438))))

(declare-fun b!3383651 () Bool)

(assert (=> b!3383651 (= e!2100463 tp_is_empty!17477)))

(assert (= (and b!3382034 ((_ is ElementMatch!10133) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383651))

(assert (= (and b!3382034 ((_ is Concat!15737) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383652))

(assert (= (and b!3382034 ((_ is Star!10133) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383653))

(assert (= (and b!3382034 ((_ is Union!10133) (regTwo!20778 (regex!5374 (rule!7926 (h!42287 tokens!494)))))) b!3383654))

(declare-fun e!2100464 () Bool)

(assert (=> b!3381999 (= tp!1057179 e!2100464)))

(declare-fun b!3383657 () Bool)

(declare-fun tp!1057439 () Bool)

(assert (=> b!3383657 (= e!2100464 tp!1057439)))

(declare-fun b!3383656 () Bool)

(declare-fun tp!1057441 () Bool)

(declare-fun tp!1057440 () Bool)

(assert (=> b!3383656 (= e!2100464 (and tp!1057441 tp!1057440))))

(declare-fun b!3383658 () Bool)

(declare-fun tp!1057442 () Bool)

(declare-fun tp!1057443 () Bool)

(assert (=> b!3383658 (= e!2100464 (and tp!1057442 tp!1057443))))

(declare-fun b!3383655 () Bool)

(assert (=> b!3383655 (= e!2100464 tp_is_empty!17477)))

(assert (= (and b!3381999 ((_ is ElementMatch!10133) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383655))

(assert (= (and b!3381999 ((_ is Concat!15737) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383656))

(assert (= (and b!3381999 ((_ is Star!10133) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383657))

(assert (= (and b!3381999 ((_ is Union!10133) (regOne!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383658))

(declare-fun e!2100465 () Bool)

(assert (=> b!3381999 (= tp!1057178 e!2100465)))

(declare-fun b!3383661 () Bool)

(declare-fun tp!1057444 () Bool)

(assert (=> b!3383661 (= e!2100465 tp!1057444)))

(declare-fun b!3383660 () Bool)

(declare-fun tp!1057446 () Bool)

(declare-fun tp!1057445 () Bool)

(assert (=> b!3383660 (= e!2100465 (and tp!1057446 tp!1057445))))

(declare-fun b!3383662 () Bool)

(declare-fun tp!1057447 () Bool)

(declare-fun tp!1057448 () Bool)

(assert (=> b!3383662 (= e!2100465 (and tp!1057447 tp!1057448))))

(declare-fun b!3383659 () Bool)

(assert (=> b!3383659 (= e!2100465 tp_is_empty!17477)))

(assert (= (and b!3381999 ((_ is ElementMatch!10133) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383659))

(assert (= (and b!3381999 ((_ is Concat!15737) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383660))

(assert (= (and b!3381999 ((_ is Star!10133) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383661))

(assert (= (and b!3381999 ((_ is Union!10133) (regTwo!20778 (regex!5374 (rule!7926 separatorToken!241))))) b!3383662))

(declare-fun tp!1057451 () Bool)

(declare-fun b!3383663 () Bool)

(declare-fun tp!1057449 () Bool)

(declare-fun e!2100466 () Bool)

(assert (=> b!3383663 (= e!2100466 (and (inv!49939 (left!28740 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))) tp!1057451 (inv!49939 (right!29070 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))) tp!1057449))))

(declare-fun b!3383665 () Bool)

(declare-fun e!2100467 () Bool)

(declare-fun tp!1057450 () Bool)

(assert (=> b!3383665 (= e!2100467 tp!1057450)))

(declare-fun b!3383664 () Bool)

(assert (=> b!3383664 (= e!2100466 (and (inv!49945 (xs!14277 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))) e!2100467))))

(assert (=> b!3381335 (= tp!1057109 (and (inv!49939 (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241)))) e!2100466))))

(assert (= (and b!3381335 ((_ is Node!11123) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))) b!3383663))

(assert (= b!3383664 b!3383665))

(assert (= (and b!3381335 ((_ is Leaf!17421) (c!575699 (dynLambda!15334 (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (value!173619 separatorToken!241))))) b!3383664))

(declare-fun m!3748735 () Bool)

(assert (=> b!3383663 m!3748735))

(declare-fun m!3748737 () Bool)

(assert (=> b!3383663 m!3748737))

(declare-fun m!3748739 () Bool)

(assert (=> b!3383664 m!3748739))

(assert (=> b!3381335 m!3745557))

(declare-fun b!3383666 () Bool)

(declare-fun e!2100468 () Bool)

(declare-fun tp!1057452 () Bool)

(assert (=> b!3383666 (= e!2100468 (and tp_is_empty!17477 tp!1057452))))

(assert (=> b!3382006 (= tp!1057184 e!2100468)))

(assert (= (and b!3382006 ((_ is Cons!36865) (t!263196 (originalCharacters!6088 separatorToken!241)))) b!3383666))

(declare-fun b_lambda!96107 () Bool)

(assert (= b_lambda!96041 (or b!3381221 b_lambda!96107)))

(assert (=> d!959474 d!959398))

(declare-fun b_lambda!96109 () Bool)

(assert (= b_lambda!96057 (or b!3381221 b_lambda!96109)))

(declare-fun bs!554972 () Bool)

(declare-fun d!960256 () Bool)

(assert (= bs!554972 (and d!960256 b!3381221)))

(assert (=> bs!554972 (= (dynLambda!15340 lambda!120485 (h!42287 (t!263198 tokens!494))) (not (isSeparator!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))))

(assert (=> b!3382872 d!960256))

(declare-fun b_lambda!96111 () Bool)

(assert (= b_lambda!96081 (or (and b!3383614 b_free!88553 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3383611 b_free!88549 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88521) (and b!3381213 b_free!88513 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88533 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381208 b_free!88517 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88537 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) b_lambda!96111)))

(declare-fun b_lambda!96113 () Bool)

(assert (= b_lambda!96075 (or (and b!3381208 b_free!88519 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3383611 b_free!88551 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88539 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3383614 b_free!88555 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88523) b_lambda!96113)))

(declare-fun b_lambda!96115 () Bool)

(assert (= b_lambda!96063 (or (and b!3383614 b_free!88553 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3383611 b_free!88549 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88521) (and b!3381213 b_free!88513 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88533 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381208 b_free!88517 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88537 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) b_lambda!96115)))

(declare-fun b_lambda!96117 () Bool)

(assert (= b_lambda!96039 (or (and b!3381213 b_free!88515 (= (toChars!7417 (transformation!5374 (h!42286 rules!2135))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) (and b!3381208 b_free!88519 (= (toChars!7417 (transformation!5374 (rule!7926 separatorToken!241))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) (and b!3382017 b_free!88535 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) (and b!3383614 b_free!88555 (= (toChars!7417 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) (and b!3381233 b_free!88523 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 tokens!494)))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) (and b!3382031 b_free!88539) (and b!3383611 b_free!88551 (= (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toChars!7417 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))))) b_lambda!96117)))

(declare-fun b_lambda!96119 () Bool)

(assert (= b_lambda!96061 (or d!959280 b_lambda!96119)))

(declare-fun bs!554973 () Bool)

(declare-fun d!960258 () Bool)

(assert (= bs!554973 (and d!960258 d!959280)))

(assert (=> bs!554973 (= (dynLambda!15340 lambda!120495 (h!42287 (list!13335 lt!1148177))) (rulesProduceIndividualToken!2455 thiss!18206 rules!2135 (h!42287 (list!13335 lt!1148177))))))

(assert (=> bs!554973 m!3747331))

(assert (=> b!3382907 d!960258))

(declare-fun b_lambda!96121 () Bool)

(assert (= b_lambda!96077 (or (and b!3383614 b_free!88553 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 (t!263197 rules!2135))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3383611 b_free!88549 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 (t!263198 tokens!494)))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381233 b_free!88521) (and b!3381213 b_free!88513 (= (toValue!7558 (transformation!5374 (h!42286 rules!2135))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382017 b_free!88533 (= (toValue!7558 (transformation!5374 (h!42286 (t!263197 rules!2135)))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3381208 b_free!88517 (= (toValue!7558 (transformation!5374 (rule!7926 separatorToken!241))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) (and b!3382031 b_free!88537 (= (toValue!7558 (transformation!5374 (rule!7926 (h!42287 (t!263198 tokens!494))))) (toValue!7558 (transformation!5374 (rule!7926 (h!42287 tokens!494)))))) b_lambda!96121)))

(check-sat (not d!959908) (not b!3382290) (not b_lambda!96053) (not b!3383569) (not b!3382935) (not b!3383606) (not d!960128) (not b!3382131) (not b!3382877) (not d!959778) (not bm!244742) (not b!3382514) (not d!960184) (not b!3383515) (not b!3383259) (not b!3382995) (not b_next!89243) (not bm!244739) (not b!3382324) (not d!959918) (not b_lambda!96031) (not b!3382630) (not d!960178) (not d!959594) (not b_next!89225) (not b!3382625) (not b!3382874) (not b!3383620) (not bm!244692) (not b!3383556) (not bm!244722) (not d!959838) (not b!3383044) (not b!3382533) (not d!959792) (not d!960028) (not b!3383002) (not b_next!89221) (not b_lambda!96033) (not bm!244701) (not b!3382152) (not b!3382212) (not b!3382949) (not d!959720) (not d!959926) (not d!959456) (not bm!244724) (not bm!244689) (not b!3382779) (not b!3382800) (not b!3382188) (not bm!244685) (not tb!180199) (not bm!244738) (not b!3382792) (not b!3383010) (not b!3383613) (not tb!180119) (not b!3382812) (not b!3382542) (not b!3382927) b_and!235235 (not b!3382206) (not b!3383597) (not d!959814) (not b!3383598) (not b!3382741) (not bm!244665) (not d!960214) (not b!3383596) (not d!960238) (not d!959510) (not b_lambda!96023) (not b!3382992) (not b!3382929) (not b!3383633) (not b!3382862) (not b!3383589) (not b!3383065) (not b!3382167) (not b!3383463) (not b!3383592) (not d!959496) (not b!3383640) (not b!3383574) (not d!959610) (not d!959664) (not b!3382491) b_and!235237 (not b!3382336) (not b!3382807) (not b!3382282) (not b!3383003) (not d!959802) (not d!959832) (not d!959774) (not b!3382725) (not bm!244588) (not b!3383504) (not b!3382331) (not b!3382740) (not bm!244726) (not d!959894) (not b!3383521) (not d!960252) (not bm!244720) (not bm!244684) (not b!3383605) (not b!3382801) (not b!3383529) (not d!960230) (not d!959782) (not tb!180079) (not b!3382922) (not b_next!89217) (not bm!244745) (not b!3383528) (not bm!244687) (not b!3383630) (not d!959722) (not b!3383062) (not b!3383663) (not tb!180159) (not bm!244696) (not b!3383586) (not b!3382620) (not bm!244691) (not d!959822) (not b!3383657) (not b!3383318) (not b!3382867) (not b!3383661) (not b!3383023) (not b!3382942) (not b!3382984) (not d!960016) (not b!3382292) (not b!3382730) (not b!3383662) (not b!3382818) (not d!959858) (not b!3383660) (not d!959734) (not b!3382777) (not b!3382941) (not d!959772) (not b_next!89255) (not b!3383464) (not b!3383007) (not b!3383588) (not d!959620) (not tb!180189) (not d!959488) (not b!3382933) (not d!960240) (not b!3383229) (not b!3382726) (not b!3382608) (not b_lambda!96055) (not b_lambda!96105) (not b!3383612) (not d!959532) (not b!3381335) (not d!960064) (not d!960242) (not b_next!89257) (not b!3383626) (not b!3383056) (not b!3382823) (not b!3383335) (not d!959538) (not b!3383495) (not b!3383232) (not b!3382971) (not b!3383602) (not b!3383584) (not b!3383500) (not d!959660) (not d!959896) (not b!3383590) (not d!960044) (not b_next!89241) (not b!3383069) b_and!235159 (not b!3383599) (not d!960100) (not b!3382866) (not d!960234) (not d!959788) (not b!3383501) (not d!959662) (not d!960250) (not d!959800) (not b!3383644) (not d!959536) (not b!3382217) (not bm!244686) (not d!959922) (not b!3383231) b_and!235243 b_and!235161 (not b!3382997) (not b!3383517) (not b!3382875) (not b!3383545) (not b_next!89237) (not b!3382934) (not d!959606) (not b!3383636) (not b!3382489) (not b_next!89223) (not b!3383451) (not bm!244690) (not b!3382991) (not d!960170) (not b!3383488) (not b!3383230) (not b_lambda!96059) (not bm!244711) (not d!959736) (not b!3383628) (not b!3383632) (not d!960192) (not d!959876) (not b!3383489) (not b!3383653) (not tb!180301) (not b!3382947) (not b!3382119) (not b!3382924) (not d!960022) (not b!3382264) (not d!960202) (not d!960176) (not b!3383523) (not b!3382764) (not b!3383618) (not d!959502) (not b!3382763) (not b!3382490) (not d!960210) (not b!3383453) (not d!959666) (not b_lambda!96115) (not d!960180) (not b!3382330) (not b!3383638) (not b!3382946) (not bm!244747) (not b!3383228) (not b!3382565) (not d!959824) (not bm!244664) (not b!3382605) (not b!3382938) (not d!960206) (not b!3383609) (not d!959828) (not bm!244633) (not d!959732) (not b!3382881) (not b!3383227) (not b!3382880) (not b!3382537) (not b!3383593) (not bm!244666) (not tb!180149) (not b!3383567) (not b!3382808) (not b!3382937) (not b!3382957) (not d!959724) (not b!3382102) (not b!3383607) (not d!959842) (not b!3383648) (not b!3383277) (not b!3382609) (not d!960186) (not b!3383525) (not b!3383057) (not b!3383561) (not b_lambda!96051) (not d!959916) (not b!3383520) (not b!3383575) (not d!960208) (not b!3383649) (not d!959670) (not b!3383646) (not bs!554973) (not b!3383297) (not b!3382805) (not bm!244590) (not bm!244688) (not bm!244662) (not b!3383526) (not d!959614) (not b!3382944) (not b!3383637) (not tb!180139) (not b!3382932) (not b!3382606) (not b!3383496) (not b!3383654) (not b!3382936) (not d!959618) (not d!959746) (not b!3383664) (not d!960222) (not b!3382117) (not b!3383652) (not b_lambda!96121) (not b!3383603) (not bm!244639) (not b!3383530) (not d!960168) (not b!3382817) (not b!3382736) (not b!3382621) (not b!3382908) (not b_next!89259) (not bm!244694) (not d!959902) (not d!959776) (not tb!180129) (not b!3382281) (not b!3382493) b_and!235155 (not bm!244746) (not b!3383063) (not d!959520) (not b!3382906) (not b!3383642) (not d!959764) (not b!3382607) (not d!959602) (not b!3383486) (not d!959820) (not b!3382966) (not b_lambda!96027) (not bm!244570) (not d!959766) (not b_next!89239) (not d!960236) (not b!3382216) (not b_lambda!96117) (not b!3382972) (not d!959458) (not b!3383005) (not b!3382566) (not b!3382156) (not d!959626) (not b!3383564) (not b!3383624) (not d!960212) (not b!3383540) (not d!960026) (not d!959674) b_and!235241 (not b!3382748) (not bm!244667) (not b!3382928) (not b!3382793) (not b!3383658) (not d!959440) (not d!959860) (not b!3382873) (not d!959906) (not b!3383494) b_and!235157 (not tb!180291) (not d!959790) (not b!3382940) (not d!959780) (not b_lambda!96111) (not d!959816) (not b!3382564) b_and!235249 (not d!959808) (not bm!244697) (not b!3383617) (not b!3383490) (not b!3382325) (not d!959512) (not b_lambda!96107) (not b!3383534) (not d!959798) (not bm!244743) (not b!3382190) (not b_next!89219) (not d!959914) (not b!3383457) (not b!3382130) (not d!959912) (not b!3382335) (not b!3382166) (not b!3383573) (not b!3382811) (not d!959880) (not b!3383610) (not b!3381329) (not b!3383625) (not b!3382871) (not b!3382153) (not b!3383054) (not d!959844) (not b_lambda!96103) (not d!959884) (not b!3382329) (not b!3383320) (not d!959840) (not b!3382294) b_and!235245 (not bm!244695) (not b!3383557) (not b!3382883) (not b!3383535) (not b!3382822) (not b!3383619) (not d!959738) (not b!3382211) (not b!3382951) (not b!3382976) (not bm!244660) (not b!3383650) (not b!3383571) (not b!3382553) (not b!3382283) (not bm!244725) (not b_lambda!96025) (not b_next!89253) (not b_next!89227) (not b_lambda!96113) (not b!3383459) (not b!3382816) (not d!960146) (not b!3382168) (not b!3383656) (not b!3382727) (not b_lambda!96029) (not d!959924) (not b!3383629) (not b!3382891) (not b!3382869) (not b!3382613) (not b!3383645) (not d!959672) (not bm!244704) (not b!3383487) (not b!3382767) (not b!3383563) (not b!3383458) (not b!3382778) (not b!3382183) (not b!3383594) (not b!3382931) (not b!3383541) (not d!959642) (not b!3382582) (not d!960188) (not d!960218) (not d!960246) (not d!960220) (not b!3383186) (not b!3383666) (not b!3383601) (not d!959768) (not d!960198) (not b!3383634) b_and!235233 (not d!959450) (not bm!244740) (not b!3383484) (not b!3382544) (not d!959438) (not b!3382210) (not b!3383665) (not b_lambda!96119) (not b!3382187) (not b!3383009) (not b!3382798) (not b!3383536) (not b!3383585) (not b!3383560) (not d!959854) (not d!959910) (not b!3382970) (not b!3382734) tp_is_empty!17477 (not b_lambda!96021) (not b!3382284) (not b!3383608) (not bm!244600) (not d!959486) (not d!959856) (not d!959432) (not b!3383013) (not b!3382864) b_and!235247 (not d!959846) (not d!960066) (not d!960018) (not d!959748) (not b!3382977) (not d!959810) (not b!3382803) (not b!3383616) (not d!960082) b_and!235163 (not b!3383485) (not b!3382943) b_and!235239 (not d!959818) (not bm!244640) (not b!3382797) (not d!959874) (not b!3383066) (not bm!244658) (not b!3382735) (not b_lambda!96109) (not b!3383071) (not d!959630) (not d!959886) (not d!960248) (not d!960166) (not d!959476) (not bm!244699) (not d!959452) (not bm!244713) (not d!960042) (not b!3383641))
(check-sat (not b_next!89243) (not b_next!89225) (not b_next!89221) b_and!235235 b_and!235237 (not b_next!89217) (not b_next!89255) (not b_next!89257) (not b_next!89239) b_and!235245 b_and!235233 (not b_next!89241) b_and!235159 b_and!235243 b_and!235161 (not b_next!89223) (not b_next!89237) b_and!235155 (not b_next!89259) b_and!235157 b_and!235241 b_and!235249 (not b_next!89219) (not b_next!89253) (not b_next!89227) b_and!235247 b_and!235163 b_and!235239)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25994 () Bool)

(assert start!25994)

(declare-fun b!245192 () Bool)

(declare-fun b_free!9065 () Bool)

(declare-fun b_next!9065 () Bool)

(assert (=> b!245192 (= b_free!9065 (not b_next!9065))))

(declare-fun tp!96040 () Bool)

(declare-fun b_and!18437 () Bool)

(assert (=> b!245192 (= tp!96040 b_and!18437)))

(declare-fun b_free!9067 () Bool)

(declare-fun b_next!9067 () Bool)

(assert (=> b!245192 (= b_free!9067 (not b_next!9067))))

(declare-fun tp!96051 () Bool)

(declare-fun b_and!18439 () Bool)

(assert (=> b!245192 (= tp!96051 b_and!18439)))

(declare-fun b!245176 () Bool)

(declare-fun b_free!9069 () Bool)

(declare-fun b_next!9069 () Bool)

(assert (=> b!245176 (= b_free!9069 (not b_next!9069))))

(declare-fun tp!96039 () Bool)

(declare-fun b_and!18441 () Bool)

(assert (=> b!245176 (= tp!96039 b_and!18441)))

(declare-fun b_free!9071 () Bool)

(declare-fun b_next!9071 () Bool)

(assert (=> b!245176 (= b_free!9071 (not b_next!9071))))

(declare-fun tp!96048 () Bool)

(declare-fun b_and!18443 () Bool)

(assert (=> b!245176 (= tp!96048 b_and!18443)))

(declare-fun b!245184 () Bool)

(declare-fun b_free!9073 () Bool)

(declare-fun b_next!9073 () Bool)

(assert (=> b!245184 (= b_free!9073 (not b_next!9073))))

(declare-fun tp!96050 () Bool)

(declare-fun b_and!18445 () Bool)

(assert (=> b!245184 (= tp!96050 b_and!18445)))

(declare-fun b_free!9075 () Bool)

(declare-fun b_next!9075 () Bool)

(assert (=> b!245184 (= b_free!9075 (not b_next!9075))))

(declare-fun tp!96043 () Bool)

(declare-fun b_and!18447 () Bool)

(assert (=> b!245184 (= tp!96043 b_and!18447)))

(declare-fun bs!26334 () Bool)

(declare-fun b!245177 () Bool)

(declare-fun b!245191 () Bool)

(assert (= bs!26334 (and b!245177 b!245191)))

(declare-fun lambda!8012 () Int)

(declare-fun lambda!8011 () Int)

(assert (=> bs!26334 (not (= lambda!8012 lambda!8011))))

(declare-fun b!245204 () Bool)

(declare-fun e!151972 () Bool)

(assert (=> b!245204 (= e!151972 true)))

(declare-fun b!245203 () Bool)

(declare-fun e!151971 () Bool)

(assert (=> b!245203 (= e!151971 e!151972)))

(declare-fun b!245202 () Bool)

(declare-fun e!151970 () Bool)

(assert (=> b!245202 (= e!151970 e!151971)))

(assert (=> b!245177 e!151970))

(assert (= b!245203 b!245204))

(assert (= b!245202 b!245203))

(declare-datatypes ((List!3609 0))(
  ( (Nil!3599) (Cons!3599 (h!8996 (_ BitVec 16)) (t!35085 List!3609)) )
))
(declare-datatypes ((TokenValue!703 0))(
  ( (FloatLiteralValue!1406 (text!5366 List!3609)) (TokenValueExt!702 (__x!2893 Int)) (Broken!3515 (value!23698 List!3609)) (Object!712) (End!703) (Def!703) (Underscore!703) (Match!703) (Else!703) (Error!703) (Case!703) (If!703) (Extends!703) (Abstract!703) (Class!703) (Val!703) (DelimiterValue!1406 (del!763 List!3609)) (KeywordValue!709 (value!23699 List!3609)) (CommentValue!1406 (value!23700 List!3609)) (WhitespaceValue!1406 (value!23701 List!3609)) (IndentationValue!703 (value!23702 List!3609)) (String!4594) (Int32!703) (Broken!3516 (value!23703 List!3609)) (Boolean!704) (Unit!4369) (OperatorValue!706 (op!763 List!3609)) (IdentifierValue!1406 (value!23704 List!3609)) (IdentifierValue!1407 (value!23705 List!3609)) (WhitespaceValue!1407 (value!23706 List!3609)) (True!1406) (False!1406) (Broken!3517 (value!23707 List!3609)) (Broken!3518 (value!23708 List!3609)) (True!1407) (RightBrace!703) (RightBracket!703) (Colon!703) (Null!703) (Comma!703) (LeftBracket!703) (False!1407) (LeftBrace!703) (ImaginaryLiteralValue!703 (text!5367 List!3609)) (StringLiteralValue!2109 (value!23709 List!3609)) (EOFValue!703 (value!23710 List!3609)) (IdentValue!703 (value!23711 List!3609)) (DelimiterValue!1407 (value!23712 List!3609)) (DedentValue!703 (value!23713 List!3609)) (NewLineValue!703 (value!23714 List!3609)) (IntegerValue!2109 (value!23715 (_ BitVec 32)) (text!5368 List!3609)) (IntegerValue!2110 (value!23716 Int) (text!5369 List!3609)) (Times!703) (Or!703) (Equal!703) (Minus!703) (Broken!3519 (value!23717 List!3609)) (And!703) (Div!703) (LessEqual!703) (Mod!703) (Concat!1608) (Not!703) (Plus!703) (SpaceValue!703 (value!23718 List!3609)) (IntegerValue!2111 (value!23719 Int) (text!5370 List!3609)) (StringLiteralValue!2110 (text!5371 List!3609)) (FloatLiteralValue!1407 (text!5372 List!3609)) (BytesLiteralValue!703 (value!23720 List!3609)) (CommentValue!1407 (value!23721 List!3609)) (StringLiteralValue!2111 (value!23722 List!3609)) (ErrorTokenValue!703 (msg!764 List!3609)) )
))
(declare-datatypes ((C!2732 0))(
  ( (C!2733 (val!1252 Int)) )
))
(declare-datatypes ((List!3610 0))(
  ( (Nil!3600) (Cons!3600 (h!8997 C!2732) (t!35086 List!3610)) )
))
(declare-datatypes ((IArray!2369 0))(
  ( (IArray!2370 (innerList!1242 List!3610)) )
))
(declare-datatypes ((Conc!1184 0))(
  ( (Node!1184 (left!2943 Conc!1184) (right!3273 Conc!1184) (csize!2598 Int) (cheight!1395 Int)) (Leaf!1864 (xs!3779 IArray!2369) (csize!2599 Int)) (Empty!1184) )
))
(declare-datatypes ((BalanceConc!2376 0))(
  ( (BalanceConc!2377 (c!46892 Conc!1184)) )
))
(declare-datatypes ((TokenValueInjection!1178 0))(
  ( (TokenValueInjection!1179 (toValue!1384 Int) (toChars!1243 Int)) )
))
(declare-datatypes ((Regex!905 0))(
  ( (ElementMatch!905 (c!46893 C!2732)) (Concat!1609 (regOne!2322 Regex!905) (regTwo!2322 Regex!905)) (EmptyExpr!905) (Star!905 (reg!1234 Regex!905)) (EmptyLang!905) (Union!905 (regOne!2323 Regex!905) (regTwo!2323 Regex!905)) )
))
(declare-datatypes ((String!4595 0))(
  ( (String!4596 (value!23723 String)) )
))
(declare-datatypes ((Rule!1162 0))(
  ( (Rule!1163 (regex!681 Regex!905) (tag!889 String!4595) (isSeparator!681 Bool) (transformation!681 TokenValueInjection!1178)) )
))
(declare-datatypes ((List!3611 0))(
  ( (Nil!3601) (Cons!3601 (h!8998 Rule!1162) (t!35087 List!3611)) )
))
(declare-fun rules!1920 () List!3611)

(get-info :version)

(assert (= (and b!245177 ((_ is Cons!3601) rules!1920)) b!245202))

(declare-fun order!2627 () Int)

(declare-fun order!2625 () Int)

(declare-fun dynLambda!1741 (Int Int) Int)

(declare-fun dynLambda!1742 (Int Int) Int)

(assert (=> b!245204 (< (dynLambda!1741 order!2625 (toValue!1384 (transformation!681 (h!8998 rules!1920)))) (dynLambda!1742 order!2627 lambda!8012))))

(declare-fun order!2629 () Int)

(declare-fun dynLambda!1743 (Int Int) Int)

(assert (=> b!245204 (< (dynLambda!1743 order!2629 (toChars!1243 (transformation!681 (h!8998 rules!1920)))) (dynLambda!1742 order!2627 lambda!8012))))

(assert (=> b!245177 true))

(declare-fun b!245160 () Bool)

(declare-fun res!113343 () Bool)

(declare-fun e!151960 () Bool)

(assert (=> b!245160 (=> (not res!113343) (not e!151960))))

(declare-fun lt!99266 () List!3610)

(declare-fun lt!99262 () List!3610)

(declare-fun list!1413 (BalanceConc!2376) List!3610)

(declare-fun seqFromList!739 (List!3610) BalanceConc!2376)

(assert (=> b!245160 (= res!113343 (= (list!1413 (seqFromList!739 lt!99266)) lt!99262))))

(declare-fun tp!96041 () Bool)

(declare-fun e!151938 () Bool)

(declare-fun b!245161 () Bool)

(declare-datatypes ((Token!1106 0))(
  ( (Token!1107 (value!23724 TokenValue!703) (rule!1258 Rule!1162) (size!2863 Int) (originalCharacters!724 List!3610)) )
))
(declare-datatypes ((List!3612 0))(
  ( (Nil!3602) (Cons!3602 (h!8999 Token!1106) (t!35088 List!3612)) )
))
(declare-fun tokens!465 () List!3612)

(declare-fun e!151957 () Bool)

(declare-fun inv!4455 (Token!1106) Bool)

(assert (=> b!245161 (= e!151938 (and (inv!4455 (h!8999 tokens!465)) e!151957 tp!96041))))

(declare-fun res!113352 () Bool)

(declare-fun e!151963 () Bool)

(assert (=> start!25994 (=> (not res!113352) (not e!151963))))

(declare-datatypes ((LexerInterface!567 0))(
  ( (LexerInterfaceExt!564 (__x!2894 Int)) (Lexer!565) )
))
(declare-fun thiss!17480 () LexerInterface!567)

(assert (=> start!25994 (= res!113352 ((_ is Lexer!565) thiss!17480))))

(assert (=> start!25994 e!151963))

(assert (=> start!25994 true))

(declare-fun e!151954 () Bool)

(assert (=> start!25994 e!151954))

(declare-fun separatorToken!170 () Token!1106)

(declare-fun e!151939 () Bool)

(assert (=> start!25994 (and (inv!4455 separatorToken!170) e!151939)))

(assert (=> start!25994 e!151938))

(declare-fun b!245162 () Bool)

(declare-fun e!151951 () Bool)

(declare-fun lt!99267 () List!3610)

(declare-fun matchR!243 (Regex!905 List!3610) Bool)

(assert (=> b!245162 (= e!151951 (matchR!243 (regex!681 (rule!1258 (h!8999 tokens!465))) lt!99267))))

(declare-fun b!245163 () Bool)

(declare-fun e!151950 () Bool)

(declare-fun tp!96049 () Bool)

(assert (=> b!245163 (= e!151954 (and e!151950 tp!96049))))

(declare-fun b!245164 () Bool)

(declare-fun e!151948 () Bool)

(declare-fun e!151942 () Bool)

(assert (=> b!245164 (= e!151948 e!151942)))

(declare-fun res!113344 () Bool)

(assert (=> b!245164 (=> res!113344 e!151942)))

(declare-fun e!151944 () Bool)

(assert (=> b!245164 (= res!113344 e!151944)))

(declare-fun res!113355 () Bool)

(assert (=> b!245164 (=> (not res!113355) (not e!151944))))

(declare-fun lt!99271 () Bool)

(assert (=> b!245164 (= res!113355 (not lt!99271))))

(declare-fun lt!99275 () List!3610)

(assert (=> b!245164 (= lt!99271 (= lt!99266 lt!99275))))

(declare-fun b!245165 () Bool)

(declare-fun res!113364 () Bool)

(declare-fun e!151949 () Bool)

(assert (=> b!245165 (=> res!113364 e!151949)))

(declare-datatypes ((IArray!2371 0))(
  ( (IArray!2372 (innerList!1243 List!3612)) )
))
(declare-datatypes ((Conc!1185 0))(
  ( (Node!1185 (left!2944 Conc!1185) (right!3274 Conc!1185) (csize!2600 Int) (cheight!1396 Int)) (Leaf!1865 (xs!3780 IArray!2371) (csize!2601 Int)) (Empty!1185) )
))
(declare-datatypes ((BalanceConc!2378 0))(
  ( (BalanceConc!2379 (c!46894 Conc!1185)) )
))
(declare-fun isEmpty!2181 (BalanceConc!2378) Bool)

(declare-datatypes ((tuple2!3994 0))(
  ( (tuple2!3995 (_1!2213 BalanceConc!2378) (_2!2213 BalanceConc!2376)) )
))
(declare-fun lex!367 (LexerInterface!567 List!3611 BalanceConc!2376) tuple2!3994)

(assert (=> b!245165 (= res!113364 (isEmpty!2181 (_1!2213 (lex!367 thiss!17480 rules!1920 (seqFromList!739 lt!99267)))))))

(declare-fun b!245166 () Bool)

(declare-fun res!113351 () Bool)

(declare-fun e!151936 () Bool)

(assert (=> b!245166 (=> (not res!113351) (not e!151936))))

(declare-fun sepAndNonSepRulesDisjointChars!270 (List!3611 List!3611) Bool)

(assert (=> b!245166 (= res!113351 (sepAndNonSepRulesDisjointChars!270 rules!1920 rules!1920))))

(declare-fun b!245167 () Bool)

(declare-fun res!113350 () Bool)

(assert (=> b!245167 (=> (not res!113350) (not e!151963))))

(declare-fun isEmpty!2182 (List!3611) Bool)

(assert (=> b!245167 (= res!113350 (not (isEmpty!2182 rules!1920)))))

(declare-fun tp!96045 () Bool)

(declare-fun b!245168 () Bool)

(declare-fun e!151943 () Bool)

(declare-fun inv!21 (TokenValue!703) Bool)

(assert (=> b!245168 (= e!151939 (and (inv!21 (value!23724 separatorToken!170)) e!151943 tp!96045))))

(declare-fun b!245169 () Bool)

(assert (=> b!245169 (= e!151942 e!151949)))

(declare-fun res!113356 () Bool)

(assert (=> b!245169 (=> res!113356 e!151949)))

(declare-fun lt!99257 () List!3610)

(declare-fun lt!99270 () List!3610)

(assert (=> b!245169 (= res!113356 (or (not (= lt!99257 lt!99270)) (not (= lt!99270 lt!99267)) (not (= lt!99257 lt!99267))))))

(declare-fun printList!251 (LexerInterface!567 List!3612) List!3610)

(assert (=> b!245169 (= lt!99270 (printList!251 thiss!17480 (Cons!3602 (h!8999 tokens!465) Nil!3602)))))

(declare-fun lt!99256 () BalanceConc!2376)

(assert (=> b!245169 (= lt!99257 (list!1413 lt!99256))))

(declare-fun lt!99264 () BalanceConc!2378)

(declare-fun printTailRec!261 (LexerInterface!567 BalanceConc!2378 Int BalanceConc!2376) BalanceConc!2376)

(assert (=> b!245169 (= lt!99256 (printTailRec!261 thiss!17480 lt!99264 0 (BalanceConc!2377 Empty!1184)))))

(declare-fun print!298 (LexerInterface!567 BalanceConc!2378) BalanceConc!2376)

(assert (=> b!245169 (= lt!99256 (print!298 thiss!17480 lt!99264))))

(declare-fun singletonSeq!233 (Token!1106) BalanceConc!2378)

(assert (=> b!245169 (= lt!99264 (singletonSeq!233 (h!8999 tokens!465)))))

(declare-fun b!245170 () Bool)

(declare-fun e!151958 () Bool)

(declare-fun e!151945 () Bool)

(assert (=> b!245170 (= e!151958 e!151945)))

(declare-fun res!113360 () Bool)

(assert (=> b!245170 (=> (not res!113360) (not e!151945))))

(declare-datatypes ((tuple2!3996 0))(
  ( (tuple2!3997 (_1!2214 Token!1106) (_2!2214 List!3610)) )
))
(declare-datatypes ((Option!724 0))(
  ( (None!723) (Some!723 (v!14484 tuple2!3996)) )
))
(declare-fun lt!99261 () Option!724)

(declare-fun isDefined!575 (Option!724) Bool)

(assert (=> b!245170 (= res!113360 (isDefined!575 lt!99261))))

(declare-fun maxPrefix!297 (LexerInterface!567 List!3611 List!3610) Option!724)

(assert (=> b!245170 (= lt!99261 (maxPrefix!297 thiss!17480 rules!1920 lt!99266))))

(declare-fun lt!99268 () List!3610)

(declare-fun b!245171 () Bool)

(declare-fun ++!918 (List!3610 List!3610) List!3610)

(assert (=> b!245171 (= e!151944 (not (= lt!99266 (++!918 lt!99267 lt!99268))))))

(declare-fun b!245172 () Bool)

(declare-fun res!113345 () Bool)

(assert (=> b!245172 (=> res!113345 e!151949)))

(declare-fun rulesProduceIndividualToken!316 (LexerInterface!567 List!3611 Token!1106) Bool)

(assert (=> b!245172 (= res!113345 (not (rulesProduceIndividualToken!316 thiss!17480 rules!1920 (h!8999 tokens!465))))))

(declare-fun b!245173 () Bool)

(declare-fun e!151955 () Bool)

(declare-fun e!151961 () Bool)

(assert (=> b!245173 (= e!151955 e!151961)))

(declare-fun res!113362 () Bool)

(assert (=> b!245173 (=> res!113362 e!151961)))

(declare-fun lt!99276 () BalanceConc!2378)

(declare-fun rulesProduceEachTokenIndividually!359 (LexerInterface!567 List!3611 BalanceConc!2378) Bool)

(assert (=> b!245173 (= res!113362 (not (rulesProduceEachTokenIndividually!359 thiss!17480 rules!1920 lt!99276)))))

(assert (=> b!245173 e!151958))

(declare-fun res!113361 () Bool)

(assert (=> b!245173 (=> res!113361 e!151958)))

(declare-fun isEmpty!2183 (List!3612) Bool)

(assert (=> b!245173 (= res!113361 (isEmpty!2183 tokens!465))))

(declare-datatypes ((Unit!4370 0))(
  ( (Unit!4371) )
))
(declare-fun lt!99269 () Unit!4370)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!136 (LexerInterface!567 List!3611 List!3612 Token!1106) Unit!4370)

(assert (=> b!245173 (= lt!99269 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!136 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245174 () Bool)

(declare-fun e!151940 () Bool)

(assert (=> b!245174 (= e!151940 e!151955)))

(declare-fun res!113346 () Bool)

(assert (=> b!245174 (=> res!113346 e!151955)))

(assert (=> b!245174 (= res!113346 lt!99271)))

(assert (=> b!245174 e!151951))

(declare-fun res!113358 () Bool)

(assert (=> b!245174 (=> (not res!113358) (not e!151951))))

(declare-fun lt!99274 () tuple2!3996)

(assert (=> b!245174 (= res!113358 (= (_1!2214 lt!99274) (h!8999 tokens!465)))))

(declare-fun lt!99258 () Option!724)

(declare-fun get!1176 (Option!724) tuple2!3996)

(assert (=> b!245174 (= lt!99274 (get!1176 lt!99258))))

(assert (=> b!245174 (isDefined!575 lt!99258)))

(assert (=> b!245174 (= lt!99258 (maxPrefix!297 thiss!17480 rules!1920 lt!99267))))

(declare-fun b!245175 () Bool)

(assert (=> b!245175 (= e!151963 e!151936)))

(declare-fun res!113347 () Bool)

(assert (=> b!245175 (=> (not res!113347) (not e!151936))))

(declare-fun lt!99259 () BalanceConc!2378)

(assert (=> b!245175 (= res!113347 (rulesProduceEachTokenIndividually!359 thiss!17480 rules!1920 lt!99259))))

(declare-fun seqFromList!740 (List!3612) BalanceConc!2378)

(assert (=> b!245175 (= lt!99259 (seqFromList!740 tokens!465))))

(declare-fun e!151952 () Bool)

(assert (=> b!245176 (= e!151952 (and tp!96039 tp!96048))))

(assert (=> b!245177 (= e!151949 e!151940)))

(declare-fun res!113359 () Bool)

(assert (=> b!245177 (=> res!113359 e!151940)))

(declare-datatypes ((tuple2!3998 0))(
  ( (tuple2!3999 (_1!2215 Token!1106) (_2!2215 BalanceConc!2376)) )
))
(declare-datatypes ((Option!725 0))(
  ( (None!724) (Some!724 (v!14485 tuple2!3998)) )
))
(declare-fun isDefined!576 (Option!725) Bool)

(declare-fun maxPrefixZipperSequence!260 (LexerInterface!567 List!3611 BalanceConc!2376) Option!725)

(assert (=> b!245177 (= res!113359 (not (isDefined!576 (maxPrefixZipperSequence!260 thiss!17480 rules!1920 (seqFromList!739 (originalCharacters!724 (h!8999 tokens!465)))))))))

(declare-fun lt!99265 () Unit!4370)

(declare-fun forallContained!248 (List!3612 Int Token!1106) Unit!4370)

(assert (=> b!245177 (= lt!99265 (forallContained!248 tokens!465 lambda!8012 (h!8999 tokens!465)))))

(assert (=> b!245177 (= lt!99267 (originalCharacters!724 (h!8999 tokens!465)))))

(declare-fun b!245178 () Bool)

(assert (=> b!245178 (= e!151961 true)))

(declare-fun e!151956 () Bool)

(declare-fun tp!96044 () Bool)

(declare-fun b!245179 () Bool)

(declare-fun inv!4452 (String!4595) Bool)

(declare-fun inv!4456 (TokenValueInjection!1178) Bool)

(assert (=> b!245179 (= e!151943 (and tp!96044 (inv!4452 (tag!889 (rule!1258 separatorToken!170))) (inv!4456 (transformation!681 (rule!1258 separatorToken!170))) e!151956))))

(declare-fun b!245180 () Bool)

(declare-fun res!113363 () Bool)

(assert (=> b!245180 (=> (not res!113363) (not e!151936))))

(assert (=> b!245180 (= res!113363 (isSeparator!681 (rule!1258 separatorToken!170)))))

(declare-fun b!245181 () Bool)

(declare-fun res!113341 () Bool)

(assert (=> b!245181 (=> (not res!113341) (not e!151936))))

(assert (=> b!245181 (= res!113341 ((_ is Cons!3602) tokens!465))))

(declare-fun b!245182 () Bool)

(declare-fun res!113349 () Bool)

(assert (=> b!245182 (=> (not res!113349) (not e!151951))))

(declare-fun isEmpty!2184 (List!3610) Bool)

(assert (=> b!245182 (= res!113349 (isEmpty!2184 (_2!2214 lt!99274)))))

(declare-fun b!245183 () Bool)

(declare-fun res!113348 () Bool)

(assert (=> b!245183 (=> (not res!113348) (not e!151963))))

(declare-fun rulesInvariant!533 (LexerInterface!567 List!3611) Bool)

(assert (=> b!245183 (= res!113348 (rulesInvariant!533 thiss!17480 rules!1920))))

(declare-fun e!151953 () Bool)

(assert (=> b!245184 (= e!151953 (and tp!96050 tp!96043))))

(declare-fun b!245185 () Bool)

(declare-fun e!151946 () Bool)

(declare-fun tp!96047 () Bool)

(assert (=> b!245185 (= e!151957 (and (inv!21 (value!23724 (h!8999 tokens!465))) e!151946 tp!96047))))

(declare-fun b!245186 () Bool)

(declare-fun head!840 (List!3612) Token!1106)

(assert (=> b!245186 (= e!151945 (= (_1!2214 (get!1176 lt!99261)) (head!840 tokens!465)))))

(declare-fun b!245187 () Bool)

(assert (=> b!245187 (= e!151936 e!151960)))

(declare-fun res!113354 () Bool)

(assert (=> b!245187 (=> (not res!113354) (not e!151960))))

(assert (=> b!245187 (= res!113354 (= lt!99266 lt!99262))))

(declare-fun printWithSeparatorTokenWhenNeededRec!250 (LexerInterface!567 List!3611 BalanceConc!2378 Token!1106 Int) BalanceConc!2376)

(assert (=> b!245187 (= lt!99262 (list!1413 (printWithSeparatorTokenWhenNeededRec!250 thiss!17480 rules!1920 lt!99259 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!260 (LexerInterface!567 List!3611 List!3612 Token!1106) List!3610)

(assert (=> b!245187 (= lt!99266 (printWithSeparatorTokenWhenNeededList!260 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245188 () Bool)

(declare-fun res!113342 () Bool)

(assert (=> b!245188 (=> (not res!113342) (not e!151936))))

(assert (=> b!245188 (= res!113342 (rulesProduceIndividualToken!316 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!245189 () Bool)

(declare-fun tp!96042 () Bool)

(assert (=> b!245189 (= e!151950 (and tp!96042 (inv!4452 (tag!889 (h!8998 rules!1920))) (inv!4456 (transformation!681 (h!8998 rules!1920))) e!151952))))

(declare-fun b!245190 () Bool)

(assert (=> b!245190 (= e!151960 (not e!151948))))

(declare-fun res!113353 () Bool)

(assert (=> b!245190 (=> res!113353 e!151948)))

(assert (=> b!245190 (= res!113353 (not (= lt!99268 (list!1413 (printWithSeparatorTokenWhenNeededRec!250 thiss!17480 rules!1920 lt!99276 separatorToken!170 0)))))))

(assert (=> b!245190 (= lt!99276 (seqFromList!740 (t!35088 tokens!465)))))

(declare-fun lt!99272 () List!3610)

(assert (=> b!245190 (= lt!99272 lt!99275)))

(declare-fun lt!99273 () List!3610)

(assert (=> b!245190 (= lt!99275 (++!918 lt!99267 lt!99273))))

(declare-fun lt!99263 () List!3610)

(assert (=> b!245190 (= lt!99272 (++!918 (++!918 lt!99267 lt!99263) lt!99268))))

(declare-fun lt!99260 () Unit!4370)

(declare-fun lemmaConcatAssociativity!386 (List!3610 List!3610 List!3610) Unit!4370)

(assert (=> b!245190 (= lt!99260 (lemmaConcatAssociativity!386 lt!99267 lt!99263 lt!99268))))

(declare-fun charsOf!336 (Token!1106) BalanceConc!2376)

(assert (=> b!245190 (= lt!99267 (list!1413 (charsOf!336 (h!8999 tokens!465))))))

(assert (=> b!245190 (= lt!99273 (++!918 lt!99263 lt!99268))))

(assert (=> b!245190 (= lt!99268 (printWithSeparatorTokenWhenNeededList!260 thiss!17480 rules!1920 (t!35088 tokens!465) separatorToken!170))))

(assert (=> b!245190 (= lt!99263 (list!1413 (charsOf!336 separatorToken!170)))))

(declare-fun res!113357 () Bool)

(assert (=> b!245191 (=> (not res!113357) (not e!151936))))

(declare-fun forall!837 (List!3612 Int) Bool)

(assert (=> b!245191 (= res!113357 (forall!837 tokens!465 lambda!8011))))

(assert (=> b!245192 (= e!151956 (and tp!96040 tp!96051))))

(declare-fun tp!96046 () Bool)

(declare-fun b!245193 () Bool)

(assert (=> b!245193 (= e!151946 (and tp!96046 (inv!4452 (tag!889 (rule!1258 (h!8999 tokens!465)))) (inv!4456 (transformation!681 (rule!1258 (h!8999 tokens!465)))) e!151953))))

(assert (= (and start!25994 res!113352) b!245167))

(assert (= (and b!245167 res!113350) b!245183))

(assert (= (and b!245183 res!113348) b!245175))

(assert (= (and b!245175 res!113347) b!245188))

(assert (= (and b!245188 res!113342) b!245180))

(assert (= (and b!245180 res!113363) b!245191))

(assert (= (and b!245191 res!113357) b!245166))

(assert (= (and b!245166 res!113351) b!245181))

(assert (= (and b!245181 res!113341) b!245187))

(assert (= (and b!245187 res!113354) b!245160))

(assert (= (and b!245160 res!113343) b!245190))

(assert (= (and b!245190 (not res!113353)) b!245164))

(assert (= (and b!245164 res!113355) b!245171))

(assert (= (and b!245164 (not res!113344)) b!245169))

(assert (= (and b!245169 (not res!113356)) b!245172))

(assert (= (and b!245172 (not res!113345)) b!245165))

(assert (= (and b!245165 (not res!113364)) b!245177))

(assert (= (and b!245177 (not res!113359)) b!245174))

(assert (= (and b!245174 res!113358) b!245182))

(assert (= (and b!245182 res!113349) b!245162))

(assert (= (and b!245174 (not res!113346)) b!245173))

(assert (= (and b!245173 (not res!113361)) b!245170))

(assert (= (and b!245170 res!113360) b!245186))

(assert (= (and b!245173 (not res!113362)) b!245178))

(assert (= b!245189 b!245176))

(assert (= b!245163 b!245189))

(assert (= (and start!25994 ((_ is Cons!3601) rules!1920)) b!245163))

(assert (= b!245179 b!245192))

(assert (= b!245168 b!245179))

(assert (= start!25994 b!245168))

(assert (= b!245193 b!245184))

(assert (= b!245185 b!245193))

(assert (= b!245161 b!245185))

(assert (= (and start!25994 ((_ is Cons!3602) tokens!465)) b!245161))

(declare-fun m!299825 () Bool)

(assert (=> b!245175 m!299825))

(declare-fun m!299827 () Bool)

(assert (=> b!245175 m!299827))

(declare-fun m!299829 () Bool)

(assert (=> start!25994 m!299829))

(declare-fun m!299831 () Bool)

(assert (=> b!245165 m!299831))

(assert (=> b!245165 m!299831))

(declare-fun m!299833 () Bool)

(assert (=> b!245165 m!299833))

(declare-fun m!299835 () Bool)

(assert (=> b!245165 m!299835))

(declare-fun m!299837 () Bool)

(assert (=> b!245172 m!299837))

(declare-fun m!299839 () Bool)

(assert (=> b!245160 m!299839))

(assert (=> b!245160 m!299839))

(declare-fun m!299841 () Bool)

(assert (=> b!245160 m!299841))

(declare-fun m!299843 () Bool)

(assert (=> b!245169 m!299843))

(declare-fun m!299845 () Bool)

(assert (=> b!245169 m!299845))

(declare-fun m!299847 () Bool)

(assert (=> b!245169 m!299847))

(declare-fun m!299849 () Bool)

(assert (=> b!245169 m!299849))

(declare-fun m!299851 () Bool)

(assert (=> b!245169 m!299851))

(declare-fun m!299853 () Bool)

(assert (=> b!245191 m!299853))

(declare-fun m!299855 () Bool)

(assert (=> b!245189 m!299855))

(declare-fun m!299857 () Bool)

(assert (=> b!245189 m!299857))

(declare-fun m!299859 () Bool)

(assert (=> b!245193 m!299859))

(declare-fun m!299861 () Bool)

(assert (=> b!245193 m!299861))

(declare-fun m!299863 () Bool)

(assert (=> b!245187 m!299863))

(assert (=> b!245187 m!299863))

(declare-fun m!299865 () Bool)

(assert (=> b!245187 m!299865))

(declare-fun m!299867 () Bool)

(assert (=> b!245187 m!299867))

(declare-fun m!299869 () Bool)

(assert (=> b!245167 m!299869))

(declare-fun m!299871 () Bool)

(assert (=> b!245168 m!299871))

(declare-fun m!299873 () Bool)

(assert (=> b!245177 m!299873))

(assert (=> b!245177 m!299873))

(declare-fun m!299875 () Bool)

(assert (=> b!245177 m!299875))

(assert (=> b!245177 m!299875))

(declare-fun m!299877 () Bool)

(assert (=> b!245177 m!299877))

(declare-fun m!299879 () Bool)

(assert (=> b!245177 m!299879))

(declare-fun m!299881 () Bool)

(assert (=> b!245185 m!299881))

(declare-fun m!299883 () Bool)

(assert (=> b!245186 m!299883))

(declare-fun m!299885 () Bool)

(assert (=> b!245186 m!299885))

(declare-fun m!299887 () Bool)

(assert (=> b!245174 m!299887))

(declare-fun m!299889 () Bool)

(assert (=> b!245174 m!299889))

(declare-fun m!299891 () Bool)

(assert (=> b!245174 m!299891))

(declare-fun m!299893 () Bool)

(assert (=> b!245173 m!299893))

(declare-fun m!299895 () Bool)

(assert (=> b!245173 m!299895))

(declare-fun m!299897 () Bool)

(assert (=> b!245173 m!299897))

(declare-fun m!299899 () Bool)

(assert (=> b!245179 m!299899))

(declare-fun m!299901 () Bool)

(assert (=> b!245179 m!299901))

(declare-fun m!299903 () Bool)

(assert (=> b!245166 m!299903))

(declare-fun m!299905 () Bool)

(assert (=> b!245162 m!299905))

(declare-fun m!299907 () Bool)

(assert (=> b!245182 m!299907))

(declare-fun m!299909 () Bool)

(assert (=> b!245183 m!299909))

(declare-fun m!299911 () Bool)

(assert (=> b!245170 m!299911))

(declare-fun m!299913 () Bool)

(assert (=> b!245170 m!299913))

(declare-fun m!299915 () Bool)

(assert (=> b!245190 m!299915))

(declare-fun m!299917 () Bool)

(assert (=> b!245190 m!299917))

(declare-fun m!299919 () Bool)

(assert (=> b!245190 m!299919))

(declare-fun m!299921 () Bool)

(assert (=> b!245190 m!299921))

(declare-fun m!299923 () Bool)

(assert (=> b!245190 m!299923))

(assert (=> b!245190 m!299921))

(declare-fun m!299925 () Bool)

(assert (=> b!245190 m!299925))

(declare-fun m!299927 () Bool)

(assert (=> b!245190 m!299927))

(assert (=> b!245190 m!299927))

(declare-fun m!299929 () Bool)

(assert (=> b!245190 m!299929))

(declare-fun m!299931 () Bool)

(assert (=> b!245190 m!299931))

(declare-fun m!299933 () Bool)

(assert (=> b!245190 m!299933))

(declare-fun m!299935 () Bool)

(assert (=> b!245190 m!299935))

(declare-fun m!299937 () Bool)

(assert (=> b!245190 m!299937))

(assert (=> b!245190 m!299931))

(assert (=> b!245190 m!299937))

(declare-fun m!299939 () Bool)

(assert (=> b!245190 m!299939))

(declare-fun m!299941 () Bool)

(assert (=> b!245188 m!299941))

(declare-fun m!299943 () Bool)

(assert (=> b!245171 m!299943))

(declare-fun m!299945 () Bool)

(assert (=> b!245161 m!299945))

(check-sat (not start!25994) (not b!245166) (not b_next!9073) (not b_next!9067) (not b!245188) b_and!18441 (not b!245167) (not b!245193) b_and!18439 b_and!18437 (not b_next!9075) (not b!245187) (not b!245179) (not b!245183) (not b!245182) (not b!245185) (not b!245162) (not b!245170) (not b!245177) (not b!245168) (not b!245189) (not b!245190) (not b!245165) b_and!18447 (not b!245186) (not b!245191) (not b!245174) (not b_next!9071) (not b!245202) (not b_next!9069) (not b!245169) (not b!245160) (not b!245173) b_and!18445 (not b!245175) (not b!245172) (not b!245163) (not b!245171) (not b_next!9065) (not b!245161) b_and!18443)
(check-sat (not b_next!9073) b_and!18447 (not b_next!9067) b_and!18441 b_and!18439 (not b_next!9071) b_and!18437 (not b_next!9075) (not b_next!9069) b_and!18445 (not b_next!9065) b_and!18443)

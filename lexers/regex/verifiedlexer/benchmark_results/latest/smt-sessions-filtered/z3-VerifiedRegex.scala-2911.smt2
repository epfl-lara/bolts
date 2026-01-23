; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170522 () Bool)

(assert start!170522)

(declare-fun b!1734216 () Bool)

(declare-fun b_free!47539 () Bool)

(declare-fun b_next!48243 () Bool)

(assert (=> b!1734216 (= b_free!47539 (not b_next!48243))))

(declare-fun tp!494371 () Bool)

(declare-fun b_and!128239 () Bool)

(assert (=> b!1734216 (= tp!494371 b_and!128239)))

(declare-fun b_free!47541 () Bool)

(declare-fun b_next!48245 () Bool)

(assert (=> b!1734216 (= b_free!47541 (not b_next!48245))))

(declare-fun tp!494368 () Bool)

(declare-fun b_and!128241 () Bool)

(assert (=> b!1734216 (= tp!494368 b_and!128241)))

(declare-fun b!1734229 () Bool)

(declare-fun b_free!47543 () Bool)

(declare-fun b_next!48247 () Bool)

(assert (=> b!1734229 (= b_free!47543 (not b_next!48247))))

(declare-fun tp!494376 () Bool)

(declare-fun b_and!128243 () Bool)

(assert (=> b!1734229 (= tp!494376 b_and!128243)))

(declare-fun b_free!47545 () Bool)

(declare-fun b_next!48249 () Bool)

(assert (=> b!1734229 (= b_free!47545 (not b_next!48249))))

(declare-fun tp!494365 () Bool)

(declare-fun b_and!128245 () Bool)

(assert (=> b!1734229 (= tp!494365 b_and!128245)))

(declare-fun b!1734231 () Bool)

(declare-fun b_free!47547 () Bool)

(declare-fun b_next!48251 () Bool)

(assert (=> b!1734231 (= b_free!47547 (not b_next!48251))))

(declare-fun tp!494369 () Bool)

(declare-fun b_and!128247 () Bool)

(assert (=> b!1734231 (= tp!494369 b_and!128247)))

(declare-fun b_free!47549 () Bool)

(declare-fun b_next!48253 () Bool)

(assert (=> b!1734231 (= b_free!47549 (not b_next!48253))))

(declare-fun tp!494373 () Bool)

(declare-fun b_and!128249 () Bool)

(assert (=> b!1734231 (= tp!494373 b_and!128249)))

(declare-fun b!1734262 () Bool)

(declare-fun e!1109773 () Bool)

(assert (=> b!1734262 (= e!1109773 true)))

(declare-fun b!1734261 () Bool)

(declare-fun e!1109772 () Bool)

(assert (=> b!1734261 (= e!1109772 e!1109773)))

(declare-fun b!1734260 () Bool)

(declare-fun e!1109771 () Bool)

(assert (=> b!1734260 (= e!1109771 e!1109772)))

(declare-fun b!1734251 () Bool)

(assert (=> b!1734251 e!1109771))

(assert (= b!1734261 b!1734262))

(assert (= b!1734260 b!1734261))

(assert (= b!1734251 b!1734260))

(declare-datatypes ((C!9596 0))(
  ( (C!9597 (val!5394 Int)) )
))
(declare-datatypes ((List!19103 0))(
  ( (Nil!19033) (Cons!19033 (h!24434 C!9596) (t!161134 List!19103)) )
))
(declare-datatypes ((Regex!4711 0))(
  ( (ElementMatch!4711 (c!283134 C!9596)) (Concat!8184 (regOne!9934 Regex!4711) (regTwo!9934 Regex!4711)) (EmptyExpr!4711) (Star!4711 (reg!5040 Regex!4711)) (EmptyLang!4711) (Union!4711 (regOne!9935 Regex!4711) (regTwo!9935 Regex!4711)) )
))
(declare-datatypes ((String!21696 0))(
  ( (String!21697 (value!106062 String)) )
))
(declare-datatypes ((List!19104 0))(
  ( (Nil!19034) (Cons!19034 (h!24435 (_ BitVec 16)) (t!161135 List!19104)) )
))
(declare-datatypes ((TokenValue!3473 0))(
  ( (FloatLiteralValue!6946 (text!24756 List!19104)) (TokenValueExt!3472 (__x!12248 Int)) (Broken!17365 (value!106063 List!19104)) (Object!3542) (End!3473) (Def!3473) (Underscore!3473) (Match!3473) (Else!3473) (Error!3473) (Case!3473) (If!3473) (Extends!3473) (Abstract!3473) (Class!3473) (Val!3473) (DelimiterValue!6946 (del!3533 List!19104)) (KeywordValue!3479 (value!106064 List!19104)) (CommentValue!6946 (value!106065 List!19104)) (WhitespaceValue!6946 (value!106066 List!19104)) (IndentationValue!3473 (value!106067 List!19104)) (String!21698) (Int32!3473) (Broken!17366 (value!106068 List!19104)) (Boolean!3474) (Unit!32918) (OperatorValue!3476 (op!3533 List!19104)) (IdentifierValue!6946 (value!106069 List!19104)) (IdentifierValue!6947 (value!106070 List!19104)) (WhitespaceValue!6947 (value!106071 List!19104)) (True!6946) (False!6946) (Broken!17367 (value!106072 List!19104)) (Broken!17368 (value!106073 List!19104)) (True!6947) (RightBrace!3473) (RightBracket!3473) (Colon!3473) (Null!3473) (Comma!3473) (LeftBracket!3473) (False!6947) (LeftBrace!3473) (ImaginaryLiteralValue!3473 (text!24757 List!19104)) (StringLiteralValue!10419 (value!106074 List!19104)) (EOFValue!3473 (value!106075 List!19104)) (IdentValue!3473 (value!106076 List!19104)) (DelimiterValue!6947 (value!106077 List!19104)) (DedentValue!3473 (value!106078 List!19104)) (NewLineValue!3473 (value!106079 List!19104)) (IntegerValue!10419 (value!106080 (_ BitVec 32)) (text!24758 List!19104)) (IntegerValue!10420 (value!106081 Int) (text!24759 List!19104)) (Times!3473) (Or!3473) (Equal!3473) (Minus!3473) (Broken!17369 (value!106082 List!19104)) (And!3473) (Div!3473) (LessEqual!3473) (Mod!3473) (Concat!8185) (Not!3473) (Plus!3473) (SpaceValue!3473 (value!106083 List!19104)) (IntegerValue!10421 (value!106084 Int) (text!24760 List!19104)) (StringLiteralValue!10420 (text!24761 List!19104)) (FloatLiteralValue!6947 (text!24762 List!19104)) (BytesLiteralValue!3473 (value!106085 List!19104)) (CommentValue!6947 (value!106086 List!19104)) (StringLiteralValue!10421 (value!106087 List!19104)) (ErrorTokenValue!3473 (msg!3534 List!19104)) )
))
(declare-datatypes ((IArray!12667 0))(
  ( (IArray!12668 (innerList!6391 List!19103)) )
))
(declare-datatypes ((Conc!6331 0))(
  ( (Node!6331 (left!15212 Conc!6331) (right!15542 Conc!6331) (csize!12892 Int) (cheight!6542 Int)) (Leaf!9243 (xs!9207 IArray!12667) (csize!12893 Int)) (Empty!6331) )
))
(declare-datatypes ((BalanceConc!12606 0))(
  ( (BalanceConc!12607 (c!283135 Conc!6331)) )
))
(declare-datatypes ((TokenValueInjection!6606 0))(
  ( (TokenValueInjection!6607 (toValue!4890 Int) (toChars!4749 Int)) )
))
(declare-datatypes ((Rule!6566 0))(
  ( (Rule!6567 (regex!3383 Regex!4711) (tag!3713 String!21696) (isSeparator!3383 Bool) (transformation!3383 TokenValueInjection!6606)) )
))
(declare-datatypes ((Token!6332 0))(
  ( (Token!6333 (value!106088 TokenValue!3473) (rule!5369 Rule!6566) (size!15126 Int) (originalCharacters!4197 List!19103)) )
))
(declare-datatypes ((tuple2!18702 0))(
  ( (tuple2!18703 (_1!10753 Token!6332) (_2!10753 List!19103)) )
))
(declare-fun lt!666440 () tuple2!18702)

(declare-fun order!11793 () Int)

(declare-fun order!11791 () Int)

(declare-fun lambda!69452 () Int)

(declare-fun dynLambda!8922 (Int Int) Int)

(declare-fun dynLambda!8923 (Int Int) Int)

(assert (=> b!1734262 (< (dynLambda!8922 order!11791 (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) (dynLambda!8923 order!11793 lambda!69452))))

(declare-fun order!11795 () Int)

(declare-fun dynLambda!8924 (Int Int) Int)

(assert (=> b!1734262 (< (dynLambda!8924 order!11795 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) (dynLambda!8923 order!11793 lambda!69452))))

(declare-fun e!1109745 () Bool)

(assert (=> b!1734216 (= e!1109745 (and tp!494371 tp!494368))))

(declare-fun b!1734217 () Bool)

(declare-fun e!1109755 () Bool)

(declare-datatypes ((List!19105 0))(
  ( (Nil!19035) (Cons!19035 (h!24436 Rule!6566) (t!161136 List!19105)) )
))
(declare-fun rules!3447 () List!19105)

(declare-fun token!523 () Token!6332)

(declare-fun contains!3405 (List!19105 Rule!6566) Bool)

(assert (=> b!1734217 (= e!1109755 (contains!3405 rules!3447 (rule!5369 token!523)))))

(declare-fun b!1734218 () Bool)

(declare-fun res!779182 () Bool)

(declare-fun e!1109761 () Bool)

(assert (=> b!1734218 (=> res!779182 e!1109761)))

(declare-fun lt!666445 () BalanceConc!12606)

(declare-fun dynLambda!8925 (Int TokenValue!3473) BalanceConc!12606)

(assert (=> b!1734218 (= res!779182 (not (= lt!666445 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (value!106088 (_1!10753 lt!666440))))))))

(declare-fun b!1734219 () Bool)

(declare-fun e!1109757 () Bool)

(declare-fun e!1109737 () Bool)

(assert (=> b!1734219 (= e!1109757 e!1109737)))

(declare-fun res!779189 () Bool)

(assert (=> b!1734219 (=> (not res!779189) (not e!1109737))))

(declare-fun lt!666419 () Rule!6566)

(declare-fun matchR!2185 (Regex!4711 List!19103) Bool)

(declare-fun list!7696 (BalanceConc!12606) List!19103)

(declare-fun charsOf!2032 (Token!6332) BalanceConc!12606)

(assert (=> b!1734219 (= res!779189 (matchR!2185 (regex!3383 lt!666419) (list!7696 (charsOf!2032 (_1!10753 lt!666440)))))))

(declare-datatypes ((Option!3790 0))(
  ( (None!3789) (Some!3789 (v!25212 Rule!6566)) )
))
(declare-fun lt!666430 () Option!3790)

(declare-fun get!5699 (Option!3790) Rule!6566)

(assert (=> b!1734219 (= lt!666419 (get!5699 lt!666430))))

(declare-fun b!1734220 () Bool)

(declare-fun e!1109763 () Bool)

(declare-fun tp_is_empty!7665 () Bool)

(declare-fun tp!494366 () Bool)

(assert (=> b!1734220 (= e!1109763 (and tp_is_empty!7665 tp!494366))))

(declare-fun b!1734221 () Bool)

(declare-fun res!779176 () Bool)

(declare-fun e!1109750 () Bool)

(assert (=> b!1734221 (=> (not res!779176) (not e!1109750))))

(declare-fun lt!666431 () tuple2!18702)

(declare-fun isEmpty!11977 (List!19103) Bool)

(assert (=> b!1734221 (= res!779176 (isEmpty!11977 (_2!10753 lt!666431)))))

(declare-fun b!1734222 () Bool)

(declare-datatypes ((Unit!32919 0))(
  ( (Unit!32920) )
))
(declare-fun e!1109749 () Unit!32919)

(declare-fun Unit!32921 () Unit!32919)

(assert (=> b!1734222 (= e!1109749 Unit!32921)))

(declare-fun lt!666434 () Unit!32919)

(declare-datatypes ((LexerInterface!3012 0))(
  ( (LexerInterfaceExt!3009 (__x!12249 Int)) (Lexer!3010) )
))
(declare-fun thiss!24550 () LexerInterface!3012)

(declare-fun lt!666452 () List!19103)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!132 (LexerInterface!3012 List!19105 List!19103 Token!6332 Rule!6566 List!19103) Unit!32919)

(assert (=> b!1734222 (= lt!666434 (lemmaMaxPrefixThenMatchesRulesRegex!132 thiss!24550 rules!3447 lt!666452 (_1!10753 lt!666440) (rule!5369 (_1!10753 lt!666440)) (_2!10753 lt!666440)))))

(declare-fun lt!666451 () Regex!4711)

(declare-fun lt!666412 () List!19103)

(assert (=> b!1734222 (matchR!2185 lt!666451 lt!666412)))

(declare-fun lt!666411 () List!19103)

(declare-fun lt!666442 () List!19103)

(declare-fun getSuffix!818 (List!19103 List!19103) List!19103)

(assert (=> b!1734222 (= lt!666411 (getSuffix!818 lt!666452 lt!666442))))

(declare-fun suffix!1421 () List!19103)

(declare-fun lt!666437 () Unit!32919)

(declare-fun lemmaSamePrefixThenSameSuffix!768 (List!19103 List!19103 List!19103 List!19103 List!19103) Unit!32919)

(assert (=> b!1734222 (= lt!666437 (lemmaSamePrefixThenSameSuffix!768 lt!666442 suffix!1421 lt!666442 lt!666411 lt!666452))))

(assert (=> b!1734222 (= suffix!1421 lt!666411)))

(declare-fun lt!666420 () Unit!32919)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!219 (List!19103 List!19103) Unit!32919)

(assert (=> b!1734222 (= lt!666420 (lemmaAddHeadSuffixToPrefixStillPrefix!219 lt!666442 lt!666452))))

(declare-fun isPrefix!1624 (List!19103 List!19103) Bool)

(declare-fun ++!5208 (List!19103 List!19103) List!19103)

(declare-fun head!3956 (List!19103) C!9596)

(assert (=> b!1734222 (isPrefix!1624 (++!5208 lt!666442 (Cons!19033 (head!3956 lt!666411) Nil!19033)) lt!666452)))

(declare-fun lt!666415 () Unit!32919)

(declare-fun lt!666410 () List!19103)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!99 (List!19103 List!19103 List!19103) Unit!32919)

(assert (=> b!1734222 (= lt!666415 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!99 lt!666412 lt!666410 lt!666452))))

(assert (=> b!1734222 (isPrefix!1624 lt!666410 lt!666412)))

(declare-fun lt!666433 () Unit!32919)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!92 (Regex!4711 List!19103 List!19103) Unit!32919)

(assert (=> b!1734222 (= lt!666433 (lemmaNotPrefixMatchThenCannotMatchLonger!92 lt!666451 lt!666410 lt!666412))))

(assert (=> b!1734222 false))

(declare-fun b!1734223 () Bool)

(declare-fun e!1109762 () Unit!32919)

(declare-fun Unit!32922 () Unit!32919)

(assert (=> b!1734223 (= e!1109762 Unit!32922)))

(declare-fun rule!422 () Rule!6566)

(declare-fun lt!666435 () Unit!32919)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!180 (LexerInterface!3012 List!19105 Rule!6566 List!19103 List!19103 List!19103 Rule!6566) Unit!32919)

(assert (=> b!1734223 (= lt!666435 (lemmaMaxPrefixOutputsMaxPrefix!180 thiss!24550 rules!3447 (rule!5369 (_1!10753 lt!666440)) lt!666412 lt!666452 lt!666442 rule!422))))

(assert (=> b!1734223 false))

(declare-fun b!1734224 () Bool)

(declare-fun res!779180 () Bool)

(declare-fun e!1109746 () Bool)

(assert (=> b!1734224 (=> res!779180 e!1109746)))

(assert (=> b!1734224 (= res!779180 (not (matchR!2185 (regex!3383 (rule!5369 (_1!10753 lt!666440))) lt!666412)))))

(declare-fun b!1734225 () Bool)

(declare-fun e!1109753 () Bool)

(declare-fun e!1109741 () Bool)

(declare-fun tp!494370 () Bool)

(assert (=> b!1734225 (= e!1109753 (and e!1109741 tp!494370))))

(declare-fun b!1734226 () Bool)

(declare-fun res!779183 () Bool)

(declare-fun e!1109742 () Bool)

(assert (=> b!1734226 (=> (not res!779183) (not e!1109742))))

(declare-fun isEmpty!11978 (List!19105) Bool)

(assert (=> b!1734226 (= res!779183 (not (isEmpty!11978 rules!3447)))))

(declare-fun e!1109754 () Bool)

(declare-fun e!1109736 () Bool)

(declare-fun tp!494375 () Bool)

(declare-fun b!1734227 () Bool)

(declare-fun inv!21 (TokenValue!3473) Bool)

(assert (=> b!1734227 (= e!1109754 (and (inv!21 (value!106088 token!523)) e!1109736 tp!494375))))

(declare-fun e!1109738 () Bool)

(assert (=> b!1734229 (= e!1109738 (and tp!494376 tp!494365))))

(declare-fun b!1734230 () Bool)

(declare-fun Unit!32923 () Unit!32919)

(assert (=> b!1734230 (= e!1109749 Unit!32923)))

(declare-fun e!1109748 () Bool)

(assert (=> b!1734231 (= e!1109748 (and tp!494369 tp!494373))))

(declare-fun b!1734232 () Bool)

(declare-fun e!1109740 () Bool)

(declare-fun e!1109760 () Bool)

(assert (=> b!1734232 (= e!1109740 e!1109760)))

(declare-fun res!779172 () Bool)

(assert (=> b!1734232 (=> res!779172 e!1109760)))

(declare-fun lt!666414 () Bool)

(assert (=> b!1734232 (= res!779172 lt!666414)))

(declare-fun lt!666443 () Unit!32919)

(assert (=> b!1734232 (= lt!666443 e!1109749)))

(declare-fun c!283133 () Bool)

(assert (=> b!1734232 (= c!283133 lt!666414)))

(declare-fun lt!666413 () Int)

(declare-fun lt!666421 () Int)

(assert (=> b!1734232 (= lt!666414 (> lt!666413 lt!666421))))

(declare-fun lt!666447 () BalanceConc!12606)

(declare-fun size!15127 (BalanceConc!12606) Int)

(assert (=> b!1734232 (= lt!666421 (size!15127 lt!666447))))

(assert (=> b!1734232 (matchR!2185 lt!666451 lt!666442)))

(declare-fun lt!666441 () Unit!32919)

(assert (=> b!1734232 (= lt!666441 (lemmaMaxPrefixThenMatchesRulesRegex!132 thiss!24550 rules!3447 lt!666442 token!523 rule!422 Nil!19033))))

(declare-fun b!1734233 () Bool)

(declare-fun e!1109764 () Bool)

(assert (=> b!1734233 (= e!1109760 e!1109764)))

(declare-fun res!779174 () Bool)

(assert (=> b!1734233 (=> res!779174 e!1109764)))

(assert (=> b!1734233 (= res!779174 (not (= lt!666413 lt!666421)))))

(declare-fun lt!666426 () Unit!32919)

(assert (=> b!1734233 (= lt!666426 e!1109762)))

(declare-fun c!283132 () Bool)

(assert (=> b!1734233 (= c!283132 (< lt!666413 lt!666421))))

(declare-fun b!1734234 () Bool)

(declare-fun e!1109744 () Bool)

(assert (=> b!1734234 (= e!1109742 e!1109744)))

(declare-fun res!779179 () Bool)

(assert (=> b!1734234 (=> (not res!779179) (not e!1109744))))

(declare-datatypes ((Option!3791 0))(
  ( (None!3790) (Some!3790 (v!25213 tuple2!18702)) )
))
(declare-fun lt!666450 () Option!3791)

(declare-fun isDefined!3133 (Option!3791) Bool)

(assert (=> b!1734234 (= res!779179 (isDefined!3133 lt!666450))))

(declare-fun maxPrefix!1566 (LexerInterface!3012 List!19105 List!19103) Option!3791)

(assert (=> b!1734234 (= lt!666450 (maxPrefix!1566 thiss!24550 rules!3447 lt!666442))))

(assert (=> b!1734234 (= lt!666442 (list!7696 lt!666447))))

(assert (=> b!1734234 (= lt!666447 (charsOf!2032 token!523))))

(declare-fun b!1734235 () Bool)

(assert (=> b!1734235 (= e!1109737 (= (rule!5369 (_1!10753 lt!666440)) lt!666419))))

(declare-fun b!1734236 () Bool)

(declare-fun e!1109751 () Bool)

(assert (=> b!1734236 (= e!1109761 e!1109751)))

(declare-fun res!779192 () Bool)

(assert (=> b!1734236 (=> res!779192 e!1109751)))

(declare-fun lt!666409 () TokenValue!3473)

(declare-fun lt!666427 () Option!3791)

(assert (=> b!1734236 (= res!779192 (not (= lt!666427 (Some!3790 (tuple2!18703 (Token!6333 lt!666409 (rule!5369 (_1!10753 lt!666440)) lt!666413 lt!666412) (_2!10753 lt!666440))))))))

(assert (=> b!1734236 (= lt!666413 (size!15127 lt!666445))))

(declare-fun apply!5188 (TokenValueInjection!6606 BalanceConc!12606) TokenValue!3473)

(assert (=> b!1734236 (= lt!666409 (apply!5188 (transformation!3383 (rule!5369 (_1!10753 lt!666440))) lt!666445))))

(declare-fun lt!666438 () Unit!32919)

(declare-fun lemmaCharactersSize!455 (Token!6332) Unit!32919)

(assert (=> b!1734236 (= lt!666438 (lemmaCharactersSize!455 (_1!10753 lt!666440)))))

(declare-fun lt!666444 () Unit!32919)

(declare-fun lemmaEqSameImage!308 (TokenValueInjection!6606 BalanceConc!12606 BalanceConc!12606) Unit!32919)

(declare-fun seqFromList!2357 (List!19103) BalanceConc!12606)

(assert (=> b!1734236 (= lt!666444 (lemmaEqSameImage!308 (transformation!3383 (rule!5369 (_1!10753 lt!666440))) lt!666445 (seqFromList!2357 (originalCharacters!4197 (_1!10753 lt!666440)))))))

(declare-fun b!1734237 () Bool)

(declare-fun Unit!32924 () Unit!32919)

(assert (=> b!1734237 (= e!1109762 Unit!32924)))

(declare-fun b!1734238 () Bool)

(declare-fun res!779175 () Bool)

(assert (=> b!1734238 (=> (not res!779175) (not e!1109742))))

(assert (=> b!1734238 (= res!779175 (contains!3405 rules!3447 rule!422))))

(declare-fun b!1734239 () Bool)

(declare-fun e!1109756 () Bool)

(assert (=> b!1734239 (= e!1109756 e!1109761)))

(declare-fun res!779193 () Bool)

(assert (=> b!1734239 (=> res!779193 e!1109761)))

(declare-fun dynLambda!8926 (Int BalanceConc!12606) TokenValue!3473)

(assert (=> b!1734239 (= res!779193 (not (= (list!7696 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (dynLambda!8926 (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) lt!666445))) lt!666412)))))

(declare-fun lt!666423 () Unit!32919)

(declare-fun lemmaSemiInverse!529 (TokenValueInjection!6606 BalanceConc!12606) Unit!32919)

(assert (=> b!1734239 (= lt!666423 (lemmaSemiInverse!529 (transformation!3383 (rule!5369 (_1!10753 lt!666440))) lt!666445))))

(declare-fun b!1734240 () Bool)

(declare-fun res!779190 () Bool)

(assert (=> b!1734240 (=> (not res!779190) (not e!1109742))))

(declare-fun rulesInvariant!2681 (LexerInterface!3012 List!19105) Bool)

(assert (=> b!1734240 (= res!779190 (rulesInvariant!2681 thiss!24550 rules!3447))))

(declare-fun b!1734241 () Bool)

(declare-fun res!779194 () Bool)

(declare-fun e!1109739 () Bool)

(assert (=> b!1734241 (=> res!779194 e!1109739)))

(assert (=> b!1734241 (= res!779194 (isEmpty!11977 suffix!1421))))

(declare-fun b!1734242 () Bool)

(assert (=> b!1734242 (= e!1109764 e!1109755)))

(declare-fun res!779184 () Bool)

(assert (=> b!1734242 (=> res!779184 e!1109755)))

(assert (=> b!1734242 (= res!779184 (= (rule!5369 (_1!10753 lt!666440)) (rule!5369 token!523)))))

(assert (=> b!1734242 (= suffix!1421 (_2!10753 lt!666440))))

(declare-fun lt!666429 () Unit!32919)

(assert (=> b!1734242 (= lt!666429 (lemmaSamePrefixThenSameSuffix!768 lt!666442 suffix!1421 lt!666442 (_2!10753 lt!666440) lt!666452))))

(assert (=> b!1734242 (= lt!666412 lt!666442)))

(declare-fun lt!666416 () Unit!32919)

(declare-fun lemmaIsPrefixSameLengthThenSameList!211 (List!19103 List!19103 List!19103) Unit!32919)

(assert (=> b!1734242 (= lt!666416 (lemmaIsPrefixSameLengthThenSameList!211 lt!666412 lt!666442 lt!666452))))

(declare-fun tp!494374 () Bool)

(declare-fun b!1734243 () Bool)

(declare-fun e!1109759 () Bool)

(declare-fun inv!24634 (String!21696) Bool)

(declare-fun inv!24639 (TokenValueInjection!6606) Bool)

(assert (=> b!1734243 (= e!1109759 (and tp!494374 (inv!24634 (tag!3713 rule!422)) (inv!24639 (transformation!3383 rule!422)) e!1109748))))

(declare-fun b!1734244 () Bool)

(declare-fun e!1109747 () Bool)

(assert (=> b!1734244 (= e!1109739 e!1109747)))

(declare-fun res!779186 () Bool)

(assert (=> b!1734244 (=> res!779186 e!1109747)))

(declare-fun prefixMatch!596 (Regex!4711 List!19103) Bool)

(assert (=> b!1734244 (= res!779186 (prefixMatch!596 lt!666451 lt!666410))))

(assert (=> b!1734244 (= lt!666410 (++!5208 lt!666442 (Cons!19033 (head!3956 suffix!1421) Nil!19033)))))

(declare-fun rulesRegex!741 (LexerInterface!3012 List!19105) Regex!4711)

(assert (=> b!1734244 (= lt!666451 (rulesRegex!741 thiss!24550 rules!3447))))

(declare-fun b!1734245 () Bool)

(declare-fun res!779181 () Bool)

(assert (=> b!1734245 (=> (not res!779181) (not e!1109750))))

(assert (=> b!1734245 (= res!779181 (= (rule!5369 token!523) rule!422))))

(declare-fun b!1734246 () Bool)

(assert (=> b!1734246 (= e!1109747 e!1109746)))

(declare-fun res!779173 () Bool)

(assert (=> b!1734246 (=> res!779173 e!1109746)))

(assert (=> b!1734246 (= res!779173 (not (isPrefix!1624 lt!666412 lt!666452)))))

(assert (=> b!1734246 (isPrefix!1624 lt!666412 (++!5208 lt!666412 (_2!10753 lt!666440)))))

(declare-fun lt!666425 () Unit!32919)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1134 (List!19103 List!19103) Unit!32919)

(assert (=> b!1734246 (= lt!666425 (lemmaConcatTwoListThenFirstIsPrefix!1134 lt!666412 (_2!10753 lt!666440)))))

(assert (=> b!1734246 (= lt!666412 (list!7696 lt!666445))))

(assert (=> b!1734246 (= lt!666445 (charsOf!2032 (_1!10753 lt!666440)))))

(assert (=> b!1734246 e!1109757))

(declare-fun res!779191 () Bool)

(assert (=> b!1734246 (=> (not res!779191) (not e!1109757))))

(declare-fun isDefined!3134 (Option!3790) Bool)

(assert (=> b!1734246 (= res!779191 (isDefined!3134 lt!666430))))

(declare-fun getRuleFromTag!433 (LexerInterface!3012 List!19105 String!21696) Option!3790)

(assert (=> b!1734246 (= lt!666430 (getRuleFromTag!433 thiss!24550 rules!3447 (tag!3713 (rule!5369 (_1!10753 lt!666440)))))))

(declare-fun lt!666432 () Unit!32919)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!433 (LexerInterface!3012 List!19105 List!19103 Token!6332) Unit!32919)

(assert (=> b!1734246 (= lt!666432 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!433 thiss!24550 rules!3447 lt!666452 (_1!10753 lt!666440)))))

(declare-fun get!5700 (Option!3791) tuple2!18702)

(assert (=> b!1734246 (= lt!666440 (get!5700 lt!666427))))

(declare-fun lt!666424 () Unit!32919)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!536 (LexerInterface!3012 List!19105 List!19103 List!19103) Unit!32919)

(assert (=> b!1734246 (= lt!666424 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!536 thiss!24550 rules!3447 lt!666442 suffix!1421))))

(assert (=> b!1734246 (= lt!666427 (maxPrefix!1566 thiss!24550 rules!3447 lt!666452))))

(assert (=> b!1734246 (isPrefix!1624 lt!666442 lt!666452)))

(declare-fun lt!666418 () Unit!32919)

(assert (=> b!1734246 (= lt!666418 (lemmaConcatTwoListThenFirstIsPrefix!1134 lt!666442 suffix!1421))))

(assert (=> b!1734246 (= lt!666452 (++!5208 lt!666442 suffix!1421))))

(declare-fun b!1734247 () Bool)

(declare-fun tp!494367 () Bool)

(assert (=> b!1734247 (= e!1109736 (and tp!494367 (inv!24634 (tag!3713 (rule!5369 token!523))) (inv!24639 (transformation!3383 (rule!5369 token!523))) e!1109738))))

(declare-fun b!1734248 () Bool)

(assert (=> b!1734248 (= e!1109750 (not e!1109739))))

(declare-fun res!779185 () Bool)

(assert (=> b!1734248 (=> res!779185 e!1109739)))

(assert (=> b!1734248 (= res!779185 (not (matchR!2185 (regex!3383 rule!422) lt!666442)))))

(declare-fun ruleValid!882 (LexerInterface!3012 Rule!6566) Bool)

(assert (=> b!1734248 (ruleValid!882 thiss!24550 rule!422)))

(declare-fun lt!666449 () Unit!32919)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!406 (LexerInterface!3012 Rule!6566 List!19105) Unit!32919)

(assert (=> b!1734248 (= lt!666449 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!406 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1734249 () Bool)

(assert (=> b!1734249 (= e!1109744 e!1109750)))

(declare-fun res!779187 () Bool)

(assert (=> b!1734249 (=> (not res!779187) (not e!1109750))))

(assert (=> b!1734249 (= res!779187 (= (_1!10753 lt!666431) token!523))))

(assert (=> b!1734249 (= lt!666431 (get!5700 lt!666450))))

(declare-fun b!1734228 () Bool)

(assert (=> b!1734228 (= e!1109751 e!1109740)))

(declare-fun res!779178 () Bool)

(assert (=> b!1734228 (=> res!779178 e!1109740)))

(declare-fun lt!666439 () Option!3791)

(declare-fun lt!666422 () List!19103)

(assert (=> b!1734228 (= res!779178 (or (not (= lt!666422 (_2!10753 lt!666440))) (not (= lt!666439 (Some!3790 (tuple2!18703 (_1!10753 lt!666440) lt!666422))))))))

(assert (=> b!1734228 (= (_2!10753 lt!666440) lt!666422)))

(declare-fun lt!666446 () Unit!32919)

(assert (=> b!1734228 (= lt!666446 (lemmaSamePrefixThenSameSuffix!768 lt!666412 (_2!10753 lt!666440) lt!666412 lt!666422 lt!666452))))

(assert (=> b!1734228 (= lt!666422 (getSuffix!818 lt!666452 lt!666412))))

(declare-fun lt!666436 () TokenValue!3473)

(declare-fun lt!666417 () Int)

(assert (=> b!1734228 (= lt!666439 (Some!3790 (tuple2!18703 (Token!6333 lt!666436 (rule!5369 (_1!10753 lt!666440)) lt!666417 lt!666412) (_2!10753 lt!666440))))))

(declare-fun maxPrefixOneRule!942 (LexerInterface!3012 Rule!6566 List!19103) Option!3791)

(assert (=> b!1734228 (= lt!666439 (maxPrefixOneRule!942 thiss!24550 (rule!5369 (_1!10753 lt!666440)) lt!666452))))

(declare-fun size!15128 (List!19103) Int)

(assert (=> b!1734228 (= lt!666417 (size!15128 lt!666412))))

(assert (=> b!1734228 (= lt!666436 (apply!5188 (transformation!3383 (rule!5369 (_1!10753 lt!666440))) (seqFromList!2357 lt!666412)))))

(declare-fun lt!666428 () Unit!32919)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!341 (LexerInterface!3012 List!19105 List!19103 List!19103 List!19103 Rule!6566) Unit!32919)

(assert (=> b!1734228 (= lt!666428 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!341 thiss!24550 rules!3447 lt!666412 lt!666452 (_2!10753 lt!666440) (rule!5369 (_1!10753 lt!666440))))))

(declare-fun res!779177 () Bool)

(assert (=> start!170522 (=> (not res!779177) (not e!1109742))))

(get-info :version)

(assert (=> start!170522 (= res!779177 ((_ is Lexer!3010) thiss!24550))))

(assert (=> start!170522 e!1109742))

(assert (=> start!170522 e!1109763))

(assert (=> start!170522 e!1109759))

(assert (=> start!170522 true))

(declare-fun inv!24640 (Token!6332) Bool)

(assert (=> start!170522 (and (inv!24640 token!523) e!1109754)))

(assert (=> start!170522 e!1109753))

(declare-fun b!1734250 () Bool)

(declare-fun tp!494372 () Bool)

(assert (=> b!1734250 (= e!1109741 (and tp!494372 (inv!24634 (tag!3713 (h!24436 rules!3447))) (inv!24639 (transformation!3383 (h!24436 rules!3447))) e!1109745))))

(assert (=> b!1734251 (= e!1109746 e!1109756)))

(declare-fun res!779188 () Bool)

(assert (=> b!1734251 (=> res!779188 e!1109756)))

(declare-fun Forall!758 (Int) Bool)

(assert (=> b!1734251 (= res!779188 (not (Forall!758 lambda!69452)))))

(declare-fun lt!666448 () Unit!32919)

(declare-fun lemmaInv!590 (TokenValueInjection!6606) Unit!32919)

(assert (=> b!1734251 (= lt!666448 (lemmaInv!590 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))))))

(assert (= (and start!170522 res!779177) b!1734226))

(assert (= (and b!1734226 res!779183) b!1734240))

(assert (= (and b!1734240 res!779190) b!1734238))

(assert (= (and b!1734238 res!779175) b!1734234))

(assert (= (and b!1734234 res!779179) b!1734249))

(assert (= (and b!1734249 res!779187) b!1734221))

(assert (= (and b!1734221 res!779176) b!1734245))

(assert (= (and b!1734245 res!779181) b!1734248))

(assert (= (and b!1734248 (not res!779185)) b!1734241))

(assert (= (and b!1734241 (not res!779194)) b!1734244))

(assert (= (and b!1734244 (not res!779186)) b!1734246))

(assert (= (and b!1734246 res!779191) b!1734219))

(assert (= (and b!1734219 res!779189) b!1734235))

(assert (= (and b!1734246 (not res!779173)) b!1734224))

(assert (= (and b!1734224 (not res!779180)) b!1734251))

(assert (= (and b!1734251 (not res!779188)) b!1734239))

(assert (= (and b!1734239 (not res!779193)) b!1734218))

(assert (= (and b!1734218 (not res!779182)) b!1734236))

(assert (= (and b!1734236 (not res!779192)) b!1734228))

(assert (= (and b!1734228 (not res!779178)) b!1734232))

(assert (= (and b!1734232 c!283133) b!1734222))

(assert (= (and b!1734232 (not c!283133)) b!1734230))

(assert (= (and b!1734232 (not res!779172)) b!1734233))

(assert (= (and b!1734233 c!283132) b!1734223))

(assert (= (and b!1734233 (not c!283132)) b!1734237))

(assert (= (and b!1734233 (not res!779174)) b!1734242))

(assert (= (and b!1734242 (not res!779184)) b!1734217))

(assert (= (and start!170522 ((_ is Cons!19033) suffix!1421)) b!1734220))

(assert (= b!1734243 b!1734231))

(assert (= start!170522 b!1734243))

(assert (= b!1734247 b!1734229))

(assert (= b!1734227 b!1734247))

(assert (= start!170522 b!1734227))

(assert (= b!1734250 b!1734216))

(assert (= b!1734225 b!1734250))

(assert (= (and start!170522 ((_ is Cons!19035) rules!3447)) b!1734225))

(declare-fun b_lambda!55415 () Bool)

(assert (=> (not b_lambda!55415) (not b!1734218)))

(declare-fun tb!103449 () Bool)

(declare-fun t!161117 () Bool)

(assert (=> (and b!1734216 (= (toChars!4749 (transformation!3383 (h!24436 rules!3447))) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161117) tb!103449))

(declare-fun b!1734267 () Bool)

(declare-fun e!1109776 () Bool)

(declare-fun tp!494379 () Bool)

(declare-fun inv!24641 (Conc!6331) Bool)

(assert (=> b!1734267 (= e!1109776 (and (inv!24641 (c!283135 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (value!106088 (_1!10753 lt!666440))))) tp!494379))))

(declare-fun result!124396 () Bool)

(declare-fun inv!24642 (BalanceConc!12606) Bool)

(assert (=> tb!103449 (= result!124396 (and (inv!24642 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (value!106088 (_1!10753 lt!666440)))) e!1109776))))

(assert (= tb!103449 b!1734267))

(declare-fun m!2143453 () Bool)

(assert (=> b!1734267 m!2143453))

(declare-fun m!2143455 () Bool)

(assert (=> tb!103449 m!2143455))

(assert (=> b!1734218 t!161117))

(declare-fun b_and!128251 () Bool)

(assert (= b_and!128241 (and (=> t!161117 result!124396) b_and!128251)))

(declare-fun t!161119 () Bool)

(declare-fun tb!103451 () Bool)

(assert (=> (and b!1734229 (= (toChars!4749 (transformation!3383 (rule!5369 token!523))) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161119) tb!103451))

(declare-fun result!124400 () Bool)

(assert (= result!124400 result!124396))

(assert (=> b!1734218 t!161119))

(declare-fun b_and!128253 () Bool)

(assert (= b_and!128245 (and (=> t!161119 result!124400) b_and!128253)))

(declare-fun tb!103453 () Bool)

(declare-fun t!161121 () Bool)

(assert (=> (and b!1734231 (= (toChars!4749 (transformation!3383 rule!422)) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161121) tb!103453))

(declare-fun result!124402 () Bool)

(assert (= result!124402 result!124396))

(assert (=> b!1734218 t!161121))

(declare-fun b_and!128255 () Bool)

(assert (= b_and!128249 (and (=> t!161121 result!124402) b_and!128255)))

(declare-fun b_lambda!55417 () Bool)

(assert (=> (not b_lambda!55417) (not b!1734239)))

(declare-fun t!161123 () Bool)

(declare-fun tb!103455 () Bool)

(assert (=> (and b!1734216 (= (toChars!4749 (transformation!3383 (h!24436 rules!3447))) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161123) tb!103455))

(declare-fun b!1734268 () Bool)

(declare-fun tp!494380 () Bool)

(declare-fun e!1109777 () Bool)

(assert (=> b!1734268 (= e!1109777 (and (inv!24641 (c!283135 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (dynLambda!8926 (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) lt!666445)))) tp!494380))))

(declare-fun result!124404 () Bool)

(assert (=> tb!103455 (= result!124404 (and (inv!24642 (dynLambda!8925 (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) (dynLambda!8926 (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) lt!666445))) e!1109777))))

(assert (= tb!103455 b!1734268))

(declare-fun m!2143457 () Bool)

(assert (=> b!1734268 m!2143457))

(declare-fun m!2143459 () Bool)

(assert (=> tb!103455 m!2143459))

(assert (=> b!1734239 t!161123))

(declare-fun b_and!128257 () Bool)

(assert (= b_and!128251 (and (=> t!161123 result!124404) b_and!128257)))

(declare-fun tb!103457 () Bool)

(declare-fun t!161125 () Bool)

(assert (=> (and b!1734229 (= (toChars!4749 (transformation!3383 (rule!5369 token!523))) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161125) tb!103457))

(declare-fun result!124406 () Bool)

(assert (= result!124406 result!124404))

(assert (=> b!1734239 t!161125))

(declare-fun b_and!128259 () Bool)

(assert (= b_and!128253 (and (=> t!161125 result!124406) b_and!128259)))

(declare-fun t!161127 () Bool)

(declare-fun tb!103459 () Bool)

(assert (=> (and b!1734231 (= (toChars!4749 (transformation!3383 rule!422)) (toChars!4749 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161127) tb!103459))

(declare-fun result!124408 () Bool)

(assert (= result!124408 result!124404))

(assert (=> b!1734239 t!161127))

(declare-fun b_and!128261 () Bool)

(assert (= b_and!128255 (and (=> t!161127 result!124408) b_and!128261)))

(declare-fun b_lambda!55419 () Bool)

(assert (=> (not b_lambda!55419) (not b!1734239)))

(declare-fun t!161129 () Bool)

(declare-fun tb!103461 () Bool)

(assert (=> (and b!1734216 (= (toValue!4890 (transformation!3383 (h!24436 rules!3447))) (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161129) tb!103461))

(declare-fun result!124410 () Bool)

(assert (=> tb!103461 (= result!124410 (inv!21 (dynLambda!8926 (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440)))) lt!666445)))))

(declare-fun m!2143461 () Bool)

(assert (=> tb!103461 m!2143461))

(assert (=> b!1734239 t!161129))

(declare-fun b_and!128263 () Bool)

(assert (= b_and!128239 (and (=> t!161129 result!124410) b_and!128263)))

(declare-fun t!161131 () Bool)

(declare-fun tb!103463 () Bool)

(assert (=> (and b!1734229 (= (toValue!4890 (transformation!3383 (rule!5369 token!523))) (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161131) tb!103463))

(declare-fun result!124414 () Bool)

(assert (= result!124414 result!124410))

(assert (=> b!1734239 t!161131))

(declare-fun b_and!128265 () Bool)

(assert (= b_and!128243 (and (=> t!161131 result!124414) b_and!128265)))

(declare-fun t!161133 () Bool)

(declare-fun tb!103465 () Bool)

(assert (=> (and b!1734231 (= (toValue!4890 (transformation!3383 rule!422)) (toValue!4890 (transformation!3383 (rule!5369 (_1!10753 lt!666440))))) t!161133) tb!103465))

(declare-fun result!124416 () Bool)

(assert (= result!124416 result!124410))

(assert (=> b!1734239 t!161133))

(declare-fun b_and!128267 () Bool)

(assert (= b_and!128247 (and (=> t!161133 result!124416) b_and!128267)))

(declare-fun m!2143463 () Bool)

(assert (=> b!1734219 m!2143463))

(assert (=> b!1734219 m!2143463))

(declare-fun m!2143465 () Bool)

(assert (=> b!1734219 m!2143465))

(assert (=> b!1734219 m!2143465))

(declare-fun m!2143467 () Bool)

(assert (=> b!1734219 m!2143467))

(declare-fun m!2143469 () Bool)

(assert (=> b!1734219 m!2143469))

(declare-fun m!2143471 () Bool)

(assert (=> b!1734222 m!2143471))

(declare-fun m!2143473 () Bool)

(assert (=> b!1734222 m!2143473))

(declare-fun m!2143475 () Bool)

(assert (=> b!1734222 m!2143475))

(declare-fun m!2143477 () Bool)

(assert (=> b!1734222 m!2143477))

(declare-fun m!2143479 () Bool)

(assert (=> b!1734222 m!2143479))

(declare-fun m!2143481 () Bool)

(assert (=> b!1734222 m!2143481))

(declare-fun m!2143483 () Bool)

(assert (=> b!1734222 m!2143483))

(declare-fun m!2143485 () Bool)

(assert (=> b!1734222 m!2143485))

(assert (=> b!1734222 m!2143471))

(declare-fun m!2143487 () Bool)

(assert (=> b!1734222 m!2143487))

(declare-fun m!2143489 () Bool)

(assert (=> b!1734222 m!2143489))

(declare-fun m!2143491 () Bool)

(assert (=> b!1734222 m!2143491))

(declare-fun m!2143493 () Bool)

(assert (=> b!1734227 m!2143493))

(declare-fun m!2143495 () Bool)

(assert (=> b!1734242 m!2143495))

(declare-fun m!2143497 () Bool)

(assert (=> b!1734242 m!2143497))

(declare-fun m!2143499 () Bool)

(assert (=> start!170522 m!2143499))

(declare-fun m!2143501 () Bool)

(assert (=> b!1734228 m!2143501))

(declare-fun m!2143503 () Bool)

(assert (=> b!1734228 m!2143503))

(declare-fun m!2143505 () Bool)

(assert (=> b!1734228 m!2143505))

(declare-fun m!2143507 () Bool)

(assert (=> b!1734228 m!2143507))

(declare-fun m!2143509 () Bool)

(assert (=> b!1734228 m!2143509))

(assert (=> b!1734228 m!2143507))

(declare-fun m!2143511 () Bool)

(assert (=> b!1734228 m!2143511))

(declare-fun m!2143513 () Bool)

(assert (=> b!1734228 m!2143513))

(declare-fun m!2143515 () Bool)

(assert (=> b!1734236 m!2143515))

(declare-fun m!2143517 () Bool)

(assert (=> b!1734236 m!2143517))

(declare-fun m!2143519 () Bool)

(assert (=> b!1734236 m!2143519))

(declare-fun m!2143521 () Bool)

(assert (=> b!1734236 m!2143521))

(assert (=> b!1734236 m!2143521))

(declare-fun m!2143523 () Bool)

(assert (=> b!1734236 m!2143523))

(declare-fun m!2143525 () Bool)

(assert (=> b!1734218 m!2143525))

(declare-fun m!2143527 () Bool)

(assert (=> b!1734239 m!2143527))

(assert (=> b!1734239 m!2143527))

(declare-fun m!2143529 () Bool)

(assert (=> b!1734239 m!2143529))

(assert (=> b!1734239 m!2143529))

(declare-fun m!2143531 () Bool)

(assert (=> b!1734239 m!2143531))

(declare-fun m!2143533 () Bool)

(assert (=> b!1734239 m!2143533))

(declare-fun m!2143535 () Bool)

(assert (=> b!1734251 m!2143535))

(declare-fun m!2143537 () Bool)

(assert (=> b!1734251 m!2143537))

(declare-fun m!2143539 () Bool)

(assert (=> b!1734240 m!2143539))

(declare-fun m!2143541 () Bool)

(assert (=> b!1734224 m!2143541))

(declare-fun m!2143543 () Bool)

(assert (=> b!1734223 m!2143543))

(declare-fun m!2143545 () Bool)

(assert (=> b!1734221 m!2143545))

(declare-fun m!2143547 () Bool)

(assert (=> b!1734226 m!2143547))

(declare-fun m!2143549 () Bool)

(assert (=> b!1734232 m!2143549))

(declare-fun m!2143551 () Bool)

(assert (=> b!1734232 m!2143551))

(declare-fun m!2143553 () Bool)

(assert (=> b!1734232 m!2143553))

(declare-fun m!2143555 () Bool)

(assert (=> b!1734249 m!2143555))

(declare-fun m!2143557 () Bool)

(assert (=> b!1734246 m!2143557))

(declare-fun m!2143559 () Bool)

(assert (=> b!1734246 m!2143559))

(assert (=> b!1734246 m!2143463))

(declare-fun m!2143561 () Bool)

(assert (=> b!1734246 m!2143561))

(declare-fun m!2143563 () Bool)

(assert (=> b!1734246 m!2143563))

(declare-fun m!2143565 () Bool)

(assert (=> b!1734246 m!2143565))

(declare-fun m!2143567 () Bool)

(assert (=> b!1734246 m!2143567))

(declare-fun m!2143569 () Bool)

(assert (=> b!1734246 m!2143569))

(assert (=> b!1734246 m!2143565))

(declare-fun m!2143571 () Bool)

(assert (=> b!1734246 m!2143571))

(declare-fun m!2143573 () Bool)

(assert (=> b!1734246 m!2143573))

(declare-fun m!2143575 () Bool)

(assert (=> b!1734246 m!2143575))

(declare-fun m!2143577 () Bool)

(assert (=> b!1734246 m!2143577))

(declare-fun m!2143579 () Bool)

(assert (=> b!1734246 m!2143579))

(declare-fun m!2143581 () Bool)

(assert (=> b!1734246 m!2143581))

(declare-fun m!2143583 () Bool)

(assert (=> b!1734246 m!2143583))

(declare-fun m!2143585 () Bool)

(assert (=> b!1734234 m!2143585))

(declare-fun m!2143587 () Bool)

(assert (=> b!1734234 m!2143587))

(declare-fun m!2143589 () Bool)

(assert (=> b!1734234 m!2143589))

(declare-fun m!2143591 () Bool)

(assert (=> b!1734234 m!2143591))

(declare-fun m!2143593 () Bool)

(assert (=> b!1734250 m!2143593))

(declare-fun m!2143595 () Bool)

(assert (=> b!1734250 m!2143595))

(declare-fun m!2143597 () Bool)

(assert (=> b!1734248 m!2143597))

(declare-fun m!2143599 () Bool)

(assert (=> b!1734248 m!2143599))

(declare-fun m!2143601 () Bool)

(assert (=> b!1734248 m!2143601))

(declare-fun m!2143603 () Bool)

(assert (=> b!1734217 m!2143603))

(declare-fun m!2143605 () Bool)

(assert (=> b!1734243 m!2143605))

(declare-fun m!2143607 () Bool)

(assert (=> b!1734243 m!2143607))

(declare-fun m!2143609 () Bool)

(assert (=> b!1734247 m!2143609))

(declare-fun m!2143611 () Bool)

(assert (=> b!1734247 m!2143611))

(declare-fun m!2143613 () Bool)

(assert (=> b!1734238 m!2143613))

(declare-fun m!2143615 () Bool)

(assert (=> b!1734244 m!2143615))

(declare-fun m!2143617 () Bool)

(assert (=> b!1734244 m!2143617))

(declare-fun m!2143619 () Bool)

(assert (=> b!1734244 m!2143619))

(declare-fun m!2143621 () Bool)

(assert (=> b!1734244 m!2143621))

(declare-fun m!2143623 () Bool)

(assert (=> b!1734241 m!2143623))

(check-sat (not b!1734268) b_and!128265 (not b!1734224) b_and!128257 (not b!1734267) (not b_lambda!55419) b_and!128267 (not tb!103449) (not b!1734246) (not b_lambda!55417) tp_is_empty!7665 (not tb!103461) (not b!1734223) (not b!1734250) (not b!1734234) (not b_next!48251) (not b_next!48253) (not b!1734219) (not b!1734247) (not b!1734221) (not tb!103455) (not start!170522) (not b!1734217) (not b_next!48243) (not b!1734248) (not b!1734249) (not b_next!48245) (not b_next!48249) (not b!1734225) (not b_next!48247) b_and!128263 (not b!1734242) (not b!1734228) b_and!128259 (not b!1734238) (not b_lambda!55415) (not b!1734222) (not b!1734239) (not b!1734232) (not b!1734220) (not b!1734243) (not b!1734251) (not b!1734227) (not b!1734236) (not b!1734244) (not b!1734240) b_and!128261 (not b!1734241) (not b!1734226))
(check-sat b_and!128265 (not b_next!48243) (not b_next!48247) b_and!128263 b_and!128257 b_and!128259 b_and!128267 b_and!128261 (not b_next!48253) (not b_next!48251) (not b_next!48245) (not b_next!48249))

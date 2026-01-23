; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173774 () Bool)

(assert start!173774)

(declare-fun b!1758448 () Bool)

(declare-fun b_free!48607 () Bool)

(declare-fun b_next!49311 () Bool)

(assert (=> b!1758448 (= b_free!48607 (not b_next!49311))))

(declare-fun tp!499767 () Bool)

(declare-fun b_and!132371 () Bool)

(assert (=> b!1758448 (= tp!499767 b_and!132371)))

(declare-fun b_free!48609 () Bool)

(declare-fun b_next!49313 () Bool)

(assert (=> b!1758448 (= b_free!48609 (not b_next!49313))))

(declare-fun tp!499776 () Bool)

(declare-fun b_and!132373 () Bool)

(assert (=> b!1758448 (= tp!499776 b_and!132373)))

(declare-fun b!1758455 () Bool)

(declare-fun b_free!48611 () Bool)

(declare-fun b_next!49315 () Bool)

(assert (=> b!1758455 (= b_free!48611 (not b_next!49315))))

(declare-fun tp!499768 () Bool)

(declare-fun b_and!132375 () Bool)

(assert (=> b!1758455 (= tp!499768 b_and!132375)))

(declare-fun b_free!48613 () Bool)

(declare-fun b_next!49317 () Bool)

(assert (=> b!1758455 (= b_free!48613 (not b_next!49317))))

(declare-fun tp!499773 () Bool)

(declare-fun b_and!132377 () Bool)

(assert (=> b!1758455 (= tp!499773 b_and!132377)))

(declare-fun b!1758456 () Bool)

(declare-fun b_free!48615 () Bool)

(declare-fun b_next!49319 () Bool)

(assert (=> b!1758456 (= b_free!48615 (not b_next!49319))))

(declare-fun tp!499775 () Bool)

(declare-fun b_and!132379 () Bool)

(assert (=> b!1758456 (= tp!499775 b_and!132379)))

(declare-fun b_free!48617 () Bool)

(declare-fun b_next!49321 () Bool)

(assert (=> b!1758456 (= b_free!48617 (not b_next!49321))))

(declare-fun tp!499778 () Bool)

(declare-fun b_and!132381 () Bool)

(assert (=> b!1758456 (= tp!499778 b_and!132381)))

(declare-fun b!1758478 () Bool)

(declare-fun e!1125475 () Bool)

(assert (=> b!1758478 (= e!1125475 true)))

(declare-fun b!1758477 () Bool)

(declare-fun e!1125474 () Bool)

(assert (=> b!1758477 (= e!1125474 e!1125475)))

(declare-fun b!1758476 () Bool)

(declare-fun e!1125473 () Bool)

(assert (=> b!1758476 (= e!1125473 e!1125474)))

(declare-fun b!1758461 () Bool)

(assert (=> b!1758461 e!1125473))

(assert (= b!1758477 b!1758478))

(assert (= b!1758476 b!1758477))

(assert (= b!1758461 b!1758476))

(declare-fun order!12251 () Int)

(declare-fun lambda!70084 () Int)

(declare-datatypes ((List!19427 0))(
  ( (Nil!19357) (Cons!19357 (h!24758 (_ BitVec 16)) (t!163818 List!19427)) )
))
(declare-datatypes ((TokenValue!3549 0))(
  ( (FloatLiteralValue!7098 (text!25288 List!19427)) (TokenValueExt!3548 (__x!12400 Int)) (Broken!17745 (value!108228 List!19427)) (Object!3618) (End!3549) (Def!3549) (Underscore!3549) (Match!3549) (Else!3549) (Error!3549) (Case!3549) (If!3549) (Extends!3549) (Abstract!3549) (Class!3549) (Val!3549) (DelimiterValue!7098 (del!3609 List!19427)) (KeywordValue!3555 (value!108229 List!19427)) (CommentValue!7098 (value!108230 List!19427)) (WhitespaceValue!7098 (value!108231 List!19427)) (IndentationValue!3549 (value!108232 List!19427)) (String!22076) (Int32!3549) (Broken!17746 (value!108233 List!19427)) (Boolean!3550) (Unit!33526) (OperatorValue!3552 (op!3609 List!19427)) (IdentifierValue!7098 (value!108234 List!19427)) (IdentifierValue!7099 (value!108235 List!19427)) (WhitespaceValue!7099 (value!108236 List!19427)) (True!7098) (False!7098) (Broken!17747 (value!108237 List!19427)) (Broken!17748 (value!108238 List!19427)) (True!7099) (RightBrace!3549) (RightBracket!3549) (Colon!3549) (Null!3549) (Comma!3549) (LeftBracket!3549) (False!7099) (LeftBrace!3549) (ImaginaryLiteralValue!3549 (text!25289 List!19427)) (StringLiteralValue!10647 (value!108239 List!19427)) (EOFValue!3549 (value!108240 List!19427)) (IdentValue!3549 (value!108241 List!19427)) (DelimiterValue!7099 (value!108242 List!19427)) (DedentValue!3549 (value!108243 List!19427)) (NewLineValue!3549 (value!108244 List!19427)) (IntegerValue!10647 (value!108245 (_ BitVec 32)) (text!25290 List!19427)) (IntegerValue!10648 (value!108246 Int) (text!25291 List!19427)) (Times!3549) (Or!3549) (Equal!3549) (Minus!3549) (Broken!17749 (value!108247 List!19427)) (And!3549) (Div!3549) (LessEqual!3549) (Mod!3549) (Concat!8336) (Not!3549) (Plus!3549) (SpaceValue!3549 (value!108248 List!19427)) (IntegerValue!10649 (value!108249 Int) (text!25292 List!19427)) (StringLiteralValue!10648 (text!25293 List!19427)) (FloatLiteralValue!7099 (text!25294 List!19427)) (BytesLiteralValue!3549 (value!108250 List!19427)) (CommentValue!7099 (value!108251 List!19427)) (StringLiteralValue!10649 (value!108252 List!19427)) (ErrorTokenValue!3549 (msg!3610 List!19427)) )
))
(declare-datatypes ((C!9748 0))(
  ( (C!9749 (val!5470 Int)) )
))
(declare-datatypes ((List!19428 0))(
  ( (Nil!19358) (Cons!19358 (h!24759 C!9748) (t!163819 List!19428)) )
))
(declare-datatypes ((String!22077 0))(
  ( (String!22078 (value!108253 String)) )
))
(declare-datatypes ((Regex!4787 0))(
  ( (ElementMatch!4787 (c!286524 C!9748)) (Concat!8337 (regOne!10086 Regex!4787) (regTwo!10086 Regex!4787)) (EmptyExpr!4787) (Star!4787 (reg!5116 Regex!4787)) (EmptyLang!4787) (Union!4787 (regOne!10087 Regex!4787) (regTwo!10087 Regex!4787)) )
))
(declare-datatypes ((IArray!12883 0))(
  ( (IArray!12884 (innerList!6499 List!19428)) )
))
(declare-datatypes ((Conc!6439 0))(
  ( (Node!6439 (left!15498 Conc!6439) (right!15828 Conc!6439) (csize!13108 Int) (cheight!6650 Int)) (Leaf!9389 (xs!9315 IArray!12883) (csize!13109 Int)) (Empty!6439) )
))
(declare-datatypes ((BalanceConc!12822 0))(
  ( (BalanceConc!12823 (c!286525 Conc!6439)) )
))
(declare-datatypes ((TokenValueInjection!6758 0))(
  ( (TokenValueInjection!6759 (toValue!4978 Int) (toChars!4837 Int)) )
))
(declare-datatypes ((Rule!6718 0))(
  ( (Rule!6719 (regex!3459 Regex!4787) (tag!3821 String!22077) (isSeparator!3459 Bool) (transformation!3459 TokenValueInjection!6758)) )
))
(declare-datatypes ((Token!6484 0))(
  ( (Token!6485 (value!108254 TokenValue!3549) (rule!5473 Rule!6718) (size!15377 Int) (originalCharacters!4273 List!19428)) )
))
(declare-datatypes ((tuple2!18966 0))(
  ( (tuple2!18967 (_1!10885 Token!6484) (_2!10885 List!19428)) )
))
(declare-fun lt!679485 () tuple2!18966)

(declare-fun order!12253 () Int)

(declare-fun dynLambda!9305 (Int Int) Int)

(declare-fun dynLambda!9306 (Int Int) Int)

(assert (=> b!1758478 (< (dynLambda!9305 order!12251 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9306 order!12253 lambda!70084))))

(declare-fun order!12255 () Int)

(declare-fun dynLambda!9307 (Int Int) Int)

(assert (=> b!1758478 (< (dynLambda!9307 order!12255 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9306 order!12253 lambda!70084))))

(declare-fun b!1758440 () Bool)

(declare-fun e!1125444 () Bool)

(declare-fun e!1125456 () Bool)

(declare-fun tp!499772 () Bool)

(assert (=> b!1758440 (= e!1125444 (and e!1125456 tp!499772))))

(declare-fun b!1758441 () Bool)

(declare-fun e!1125447 () Bool)

(declare-fun lt!679468 () Rule!6718)

(assert (=> b!1758441 (= e!1125447 (= (rule!5473 (_1!10885 lt!679485)) lt!679468))))

(declare-fun b!1758442 () Bool)

(declare-fun e!1125448 () Bool)

(declare-fun e!1125454 () Bool)

(assert (=> b!1758442 (= e!1125448 (not e!1125454))))

(declare-fun res!791301 () Bool)

(assert (=> b!1758442 (=> res!791301 e!1125454)))

(declare-fun rule!422 () Rule!6718)

(declare-fun lt!679477 () List!19428)

(declare-fun matchR!2260 (Regex!4787 List!19428) Bool)

(assert (=> b!1758442 (= res!791301 (not (matchR!2260 (regex!3459 rule!422) lt!679477)))))

(declare-datatypes ((LexerInterface!3088 0))(
  ( (LexerInterfaceExt!3085 (__x!12401 Int)) (Lexer!3086) )
))
(declare-fun thiss!24550 () LexerInterface!3088)

(declare-fun ruleValid!957 (LexerInterface!3088 Rule!6718) Bool)

(assert (=> b!1758442 (ruleValid!957 thiss!24550 rule!422)))

(declare-datatypes ((List!19429 0))(
  ( (Nil!19359) (Cons!19359 (h!24760 Rule!6718) (t!163820 List!19429)) )
))
(declare-fun rules!3447 () List!19429)

(declare-datatypes ((Unit!33527 0))(
  ( (Unit!33528) )
))
(declare-fun lt!679484 () Unit!33527)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!480 (LexerInterface!3088 Rule!6718 List!19429) Unit!33527)

(assert (=> b!1758442 (= lt!679484 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!480 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1758443 () Bool)

(declare-fun e!1125466 () Bool)

(assert (=> b!1758443 (= e!1125454 e!1125466)))

(declare-fun res!791288 () Bool)

(assert (=> b!1758443 (=> res!791288 e!1125466)))

(declare-fun lt!679472 () List!19428)

(declare-fun lt!679469 () List!19428)

(declare-fun isPrefix!1699 (List!19428 List!19428) Bool)

(assert (=> b!1758443 (= res!791288 (not (isPrefix!1699 lt!679472 lt!679469)))))

(declare-fun lt!679488 () List!19428)

(assert (=> b!1758443 (isPrefix!1699 lt!679472 lt!679488)))

(declare-fun ++!5283 (List!19428 List!19428) List!19428)

(assert (=> b!1758443 (= lt!679488 (++!5283 lt!679472 (_2!10885 lt!679485)))))

(declare-fun lt!679482 () Unit!33527)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1208 (List!19428 List!19428) Unit!33527)

(assert (=> b!1758443 (= lt!679482 (lemmaConcatTwoListThenFirstIsPrefix!1208 lt!679472 (_2!10885 lt!679485)))))

(declare-fun lt!679479 () BalanceConc!12822)

(declare-fun list!7849 (BalanceConc!12822) List!19428)

(assert (=> b!1758443 (= lt!679472 (list!7849 lt!679479))))

(declare-fun charsOf!2108 (Token!6484) BalanceConc!12822)

(assert (=> b!1758443 (= lt!679479 (charsOf!2108 (_1!10885 lt!679485)))))

(declare-fun e!1125449 () Bool)

(assert (=> b!1758443 e!1125449))

(declare-fun res!791302 () Bool)

(assert (=> b!1758443 (=> (not res!791302) (not e!1125449))))

(declare-datatypes ((Option!3940 0))(
  ( (None!3939) (Some!3939 (v!25396 Rule!6718)) )
))
(declare-fun lt!679467 () Option!3940)

(declare-fun isDefined!3283 (Option!3940) Bool)

(assert (=> b!1758443 (= res!791302 (isDefined!3283 lt!679467))))

(declare-fun getRuleFromTag!507 (LexerInterface!3088 List!19429 String!22077) Option!3940)

(assert (=> b!1758443 (= lt!679467 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun lt!679471 () Unit!33527)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!507 (LexerInterface!3088 List!19429 List!19428 Token!6484) Unit!33527)

(assert (=> b!1758443 (= lt!679471 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!507 thiss!24550 rules!3447 lt!679469 (_1!10885 lt!679485)))))

(declare-datatypes ((Option!3941 0))(
  ( (None!3940) (Some!3940 (v!25397 tuple2!18966)) )
))
(declare-fun lt!679476 () Option!3941)

(declare-fun get!5887 (Option!3941) tuple2!18966)

(assert (=> b!1758443 (= lt!679485 (get!5887 lt!679476))))

(declare-fun suffix!1421 () List!19428)

(declare-fun lt!679474 () Unit!33527)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!610 (LexerInterface!3088 List!19429 List!19428 List!19428) Unit!33527)

(assert (=> b!1758443 (= lt!679474 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!610 thiss!24550 rules!3447 lt!679477 suffix!1421))))

(declare-fun maxPrefix!1642 (LexerInterface!3088 List!19429 List!19428) Option!3941)

(assert (=> b!1758443 (= lt!679476 (maxPrefix!1642 thiss!24550 rules!3447 lt!679469))))

(assert (=> b!1758443 (isPrefix!1699 lt!679477 lt!679469)))

(declare-fun lt!679470 () Unit!33527)

(assert (=> b!1758443 (= lt!679470 (lemmaConcatTwoListThenFirstIsPrefix!1208 lt!679477 suffix!1421))))

(assert (=> b!1758443 (= lt!679469 (++!5283 lt!679477 suffix!1421))))

(declare-fun e!1125450 () Bool)

(declare-fun tp!499777 () Bool)

(declare-fun b!1758444 () Bool)

(declare-fun e!1125463 () Bool)

(declare-fun inv!25130 (String!22077) Bool)

(declare-fun inv!25135 (TokenValueInjection!6758) Bool)

(assert (=> b!1758444 (= e!1125450 (and tp!499777 (inv!25130 (tag!3821 rule!422)) (inv!25135 (transformation!3459 rule!422)) e!1125463))))

(declare-fun b!1758445 () Bool)

(declare-fun e!1125461 () Bool)

(declare-fun e!1125457 () Bool)

(assert (=> b!1758445 (= e!1125461 e!1125457)))

(declare-fun res!791290 () Bool)

(assert (=> b!1758445 (=> res!791290 e!1125457)))

(declare-fun dynLambda!9308 (Int TokenValue!3549) BalanceConc!12822)

(declare-fun dynLambda!9309 (Int BalanceConc!12822) TokenValue!3549)

(assert (=> b!1758445 (= res!791290 (not (= (list!7849 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))) lt!679472)))))

(declare-fun lt!679487 () Unit!33527)

(declare-fun lemmaSemiInverse!597 (TokenValueInjection!6758 BalanceConc!12822) Unit!33527)

(assert (=> b!1758445 (= lt!679487 (lemmaSemiInverse!597 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479))))

(declare-fun b!1758446 () Bool)

(declare-fun e!1125460 () Bool)

(declare-fun e!1125455 () Bool)

(assert (=> b!1758446 (= e!1125460 e!1125455)))

(declare-fun res!791289 () Bool)

(assert (=> b!1758446 (=> (not res!791289) (not e!1125455))))

(declare-fun lt!679475 () Option!3941)

(declare-fun isDefined!3284 (Option!3941) Bool)

(assert (=> b!1758446 (= res!791289 (isDefined!3284 lt!679475))))

(assert (=> b!1758446 (= lt!679475 (maxPrefix!1642 thiss!24550 rules!3447 lt!679477))))

(declare-fun token!523 () Token!6484)

(assert (=> b!1758446 (= lt!679477 (list!7849 (charsOf!2108 token!523)))))

(declare-fun b!1758447 () Bool)

(declare-fun e!1125462 () Bool)

(assert (=> b!1758447 (= e!1125457 e!1125462)))

(declare-fun res!791295 () Bool)

(assert (=> b!1758447 (=> res!791295 e!1125462)))

(declare-fun apply!5259 (TokenValueInjection!6758 BalanceConc!12822) TokenValue!3549)

(declare-fun size!15378 (BalanceConc!12822) Int)

(assert (=> b!1758447 (= res!791295 (not (= lt!679476 (Some!3940 (tuple2!18967 (Token!6485 (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479) (rule!5473 (_1!10885 lt!679485)) (size!15378 lt!679479) lt!679472) (_2!10885 lt!679485))))))))

(declare-fun lt!679481 () Unit!33527)

(declare-fun lemmaCharactersSize!517 (Token!6484) Unit!33527)

(assert (=> b!1758447 (= lt!679481 (lemmaCharactersSize!517 (_1!10885 lt!679485)))))

(declare-fun lt!679486 () Unit!33527)

(declare-fun lemmaEqSameImage!370 (TokenValueInjection!6758 BalanceConc!12822 BalanceConc!12822) Unit!33527)

(declare-fun seqFromList!2428 (List!19428) BalanceConc!12822)

(assert (=> b!1758447 (= lt!679486 (lemmaEqSameImage!370 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479 (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485)))))))

(declare-fun e!1125453 () Bool)

(assert (=> b!1758448 (= e!1125453 (and tp!499767 tp!499776))))

(declare-fun b!1758449 () Bool)

(assert (=> b!1758449 (= e!1125449 e!1125447)))

(declare-fun res!791303 () Bool)

(assert (=> b!1758449 (=> (not res!791303) (not e!1125447))))

(assert (=> b!1758449 (= res!791303 (matchR!2260 (regex!3459 lt!679468) (list!7849 (charsOf!2108 (_1!10885 lt!679485)))))))

(declare-fun get!5888 (Option!3940) Rule!6718)

(assert (=> b!1758449 (= lt!679468 (get!5888 lt!679467))))

(declare-fun b!1758450 () Bool)

(declare-fun res!791292 () Bool)

(assert (=> b!1758450 (=> (not res!791292) (not e!1125448))))

(assert (=> b!1758450 (= res!791292 (= (rule!5473 token!523) rule!422))))

(declare-fun b!1758451 () Bool)

(declare-fun e!1125452 () Bool)

(declare-fun tp_is_empty!7817 () Bool)

(declare-fun tp!499774 () Bool)

(assert (=> b!1758451 (= e!1125452 (and tp_is_empty!7817 tp!499774))))

(declare-fun res!791300 () Bool)

(assert (=> start!173774 (=> (not res!791300) (not e!1125460))))

(get-info :version)

(assert (=> start!173774 (= res!791300 ((_ is Lexer!3086) thiss!24550))))

(assert (=> start!173774 e!1125460))

(assert (=> start!173774 e!1125452))

(assert (=> start!173774 e!1125450))

(assert (=> start!173774 true))

(declare-fun e!1125464 () Bool)

(declare-fun inv!25136 (Token!6484) Bool)

(assert (=> start!173774 (and (inv!25136 token!523) e!1125464)))

(assert (=> start!173774 e!1125444))

(declare-fun b!1758452 () Bool)

(assert (=> b!1758452 (= e!1125462 (= lt!679488 lt!679469))))

(declare-fun lt!679473 () List!19428)

(declare-fun getSuffix!866 (List!19428 List!19428) List!19428)

(assert (=> b!1758452 (= lt!679473 (getSuffix!866 lt!679469 lt!679472))))

(declare-fun maxPrefixOneRule!1011 (LexerInterface!3088 Rule!6718 List!19428) Option!3941)

(declare-fun size!15379 (List!19428) Int)

(assert (=> b!1758452 (= (maxPrefixOneRule!1011 thiss!24550 (rule!5473 (_1!10885 lt!679485)) lt!679469) (Some!3940 (tuple2!18967 (Token!6485 (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) (seqFromList!2428 lt!679472)) (rule!5473 (_1!10885 lt!679485)) (size!15379 lt!679472) lt!679472) (_2!10885 lt!679485))))))

(declare-fun lt!679480 () Unit!33527)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!389 (LexerInterface!3088 List!19429 List!19428 List!19428 List!19428 Rule!6718) Unit!33527)

(assert (=> b!1758452 (= lt!679480 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!389 thiss!24550 rules!3447 lt!679472 lt!679469 (_2!10885 lt!679485) (rule!5473 (_1!10885 lt!679485))))))

(declare-fun b!1758453 () Bool)

(assert (=> b!1758453 (= e!1125455 e!1125448)))

(declare-fun res!791293 () Bool)

(assert (=> b!1758453 (=> (not res!791293) (not e!1125448))))

(declare-fun lt!679478 () tuple2!18966)

(assert (=> b!1758453 (= res!791293 (= (_1!10885 lt!679478) token!523))))

(assert (=> b!1758453 (= lt!679478 (get!5887 lt!679475))))

(declare-fun b!1758454 () Bool)

(declare-fun res!791294 () Bool)

(assert (=> b!1758454 (=> (not res!791294) (not e!1125460))))

(declare-fun rulesInvariant!2757 (LexerInterface!3088 List!19429) Bool)

(assert (=> b!1758454 (= res!791294 (rulesInvariant!2757 thiss!24550 rules!3447))))

(declare-fun e!1125459 () Bool)

(assert (=> b!1758455 (= e!1125459 (and tp!499768 tp!499773))))

(assert (=> b!1758456 (= e!1125463 (and tp!499775 tp!499778))))

(declare-fun b!1758457 () Bool)

(declare-fun res!791297 () Bool)

(assert (=> b!1758457 (=> (not res!791297) (not e!1125460))))

(declare-fun isEmpty!12210 (List!19429) Bool)

(assert (=> b!1758457 (= res!791297 (not (isEmpty!12210 rules!3447)))))

(declare-fun b!1758458 () Bool)

(declare-fun res!791296 () Bool)

(assert (=> b!1758458 (=> (not res!791296) (not e!1125460))))

(declare-fun contains!3487 (List!19429 Rule!6718) Bool)

(assert (=> b!1758458 (= res!791296 (contains!3487 rules!3447 rule!422))))

(declare-fun tp!499770 () Bool)

(declare-fun b!1758459 () Bool)

(declare-fun e!1125446 () Bool)

(declare-fun inv!21 (TokenValue!3549) Bool)

(assert (=> b!1758459 (= e!1125464 (and (inv!21 (value!108254 token!523)) e!1125446 tp!499770))))

(declare-fun b!1758460 () Bool)

(declare-fun res!791304 () Bool)

(assert (=> b!1758460 (=> res!791304 e!1125466)))

(assert (=> b!1758460 (= res!791304 (not (matchR!2260 (regex!3459 (rule!5473 (_1!10885 lt!679485))) lt!679472)))))

(assert (=> b!1758461 (= e!1125466 e!1125461)))

(declare-fun res!791298 () Bool)

(assert (=> b!1758461 (=> res!791298 e!1125461)))

(declare-fun Forall!826 (Int) Bool)

(assert (=> b!1758461 (= res!791298 (not (Forall!826 lambda!70084)))))

(declare-fun lt!679483 () Unit!33527)

(declare-fun lemmaInv!658 (TokenValueInjection!6758) Unit!33527)

(assert (=> b!1758461 (= lt!679483 (lemmaInv!658 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun b!1758462 () Bool)

(declare-fun tp!499771 () Bool)

(assert (=> b!1758462 (= e!1125446 (and tp!499771 (inv!25130 (tag!3821 (rule!5473 token!523))) (inv!25135 (transformation!3459 (rule!5473 token!523))) e!1125453))))

(declare-fun tp!499769 () Bool)

(declare-fun b!1758463 () Bool)

(assert (=> b!1758463 (= e!1125456 (and tp!499769 (inv!25130 (tag!3821 (h!24760 rules!3447))) (inv!25135 (transformation!3459 (h!24760 rules!3447))) e!1125459))))

(declare-fun b!1758464 () Bool)

(declare-fun res!791299 () Bool)

(assert (=> b!1758464 (=> res!791299 e!1125454)))

(declare-fun isEmpty!12211 (List!19428) Bool)

(assert (=> b!1758464 (= res!791299 (isEmpty!12211 suffix!1421))))

(declare-fun b!1758465 () Bool)

(declare-fun res!791286 () Bool)

(assert (=> b!1758465 (=> (not res!791286) (not e!1125448))))

(assert (=> b!1758465 (= res!791286 (isEmpty!12211 (_2!10885 lt!679478)))))

(declare-fun b!1758466 () Bool)

(declare-fun res!791291 () Bool)

(assert (=> b!1758466 (=> res!791291 e!1125457)))

(assert (=> b!1758466 (= res!791291 (not (= lt!679479 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))))

(declare-fun b!1758467 () Bool)

(declare-fun res!791287 () Bool)

(assert (=> b!1758467 (=> res!791287 e!1125454)))

(declare-fun prefixMatch!670 (Regex!4787 List!19428) Bool)

(declare-fun rulesRegex!815 (LexerInterface!3088 List!19429) Regex!4787)

(declare-fun head!4068 (List!19428) C!9748)

(assert (=> b!1758467 (= res!791287 (prefixMatch!670 (rulesRegex!815 thiss!24550 rules!3447) (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358))))))

(assert (= (and start!173774 res!791300) b!1758457))

(assert (= (and b!1758457 res!791297) b!1758454))

(assert (= (and b!1758454 res!791294) b!1758458))

(assert (= (and b!1758458 res!791296) b!1758446))

(assert (= (and b!1758446 res!791289) b!1758453))

(assert (= (and b!1758453 res!791293) b!1758465))

(assert (= (and b!1758465 res!791286) b!1758450))

(assert (= (and b!1758450 res!791292) b!1758442))

(assert (= (and b!1758442 (not res!791301)) b!1758464))

(assert (= (and b!1758464 (not res!791299)) b!1758467))

(assert (= (and b!1758467 (not res!791287)) b!1758443))

(assert (= (and b!1758443 res!791302) b!1758449))

(assert (= (and b!1758449 res!791303) b!1758441))

(assert (= (and b!1758443 (not res!791288)) b!1758460))

(assert (= (and b!1758460 (not res!791304)) b!1758461))

(assert (= (and b!1758461 (not res!791298)) b!1758445))

(assert (= (and b!1758445 (not res!791290)) b!1758466))

(assert (= (and b!1758466 (not res!791291)) b!1758447))

(assert (= (and b!1758447 (not res!791295)) b!1758452))

(assert (= (and start!173774 ((_ is Cons!19358) suffix!1421)) b!1758451))

(assert (= b!1758444 b!1758456))

(assert (= start!173774 b!1758444))

(assert (= b!1758462 b!1758448))

(assert (= b!1758459 b!1758462))

(assert (= start!173774 b!1758459))

(assert (= b!1758463 b!1758455))

(assert (= b!1758440 b!1758463))

(assert (= (and start!173774 ((_ is Cons!19359) rules!3447)) b!1758440))

(declare-fun b_lambda!56807 () Bool)

(assert (=> (not b_lambda!56807) (not b!1758445)))

(declare-fun tb!105795 () Bool)

(declare-fun t!163801 () Bool)

(assert (=> (and b!1758448 (= (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163801) tb!105795))

(declare-fun e!1125478 () Bool)

(declare-fun tp!499781 () Bool)

(declare-fun b!1758483 () Bool)

(declare-fun inv!25137 (Conc!6439) Bool)

(assert (=> b!1758483 (= e!1125478 (and (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))) tp!499781))))

(declare-fun result!127286 () Bool)

(declare-fun inv!25138 (BalanceConc!12822) Bool)

(assert (=> tb!105795 (= result!127286 (and (inv!25138 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))) e!1125478))))

(assert (= tb!105795 b!1758483))

(declare-fun m!2173683 () Bool)

(assert (=> b!1758483 m!2173683))

(declare-fun m!2173685 () Bool)

(assert (=> tb!105795 m!2173685))

(assert (=> b!1758445 t!163801))

(declare-fun b_and!132383 () Bool)

(assert (= b_and!132373 (and (=> t!163801 result!127286) b_and!132383)))

(declare-fun t!163803 () Bool)

(declare-fun tb!105797 () Bool)

(assert (=> (and b!1758455 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163803) tb!105797))

(declare-fun result!127290 () Bool)

(assert (= result!127290 result!127286))

(assert (=> b!1758445 t!163803))

(declare-fun b_and!132385 () Bool)

(assert (= b_and!132377 (and (=> t!163803 result!127290) b_and!132385)))

(declare-fun tb!105799 () Bool)

(declare-fun t!163805 () Bool)

(assert (=> (and b!1758456 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163805) tb!105799))

(declare-fun result!127292 () Bool)

(assert (= result!127292 result!127286))

(assert (=> b!1758445 t!163805))

(declare-fun b_and!132387 () Bool)

(assert (= b_and!132381 (and (=> t!163805 result!127292) b_and!132387)))

(declare-fun b_lambda!56809 () Bool)

(assert (=> (not b_lambda!56809) (not b!1758445)))

(declare-fun tb!105801 () Bool)

(declare-fun t!163807 () Bool)

(assert (=> (and b!1758448 (= (toValue!4978 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163807) tb!105801))

(declare-fun result!127294 () Bool)

(assert (=> tb!105801 (= result!127294 (inv!21 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(declare-fun m!2173687 () Bool)

(assert (=> tb!105801 m!2173687))

(assert (=> b!1758445 t!163807))

(declare-fun b_and!132389 () Bool)

(assert (= b_and!132371 (and (=> t!163807 result!127294) b_and!132389)))

(declare-fun t!163809 () Bool)

(declare-fun tb!105803 () Bool)

(assert (=> (and b!1758455 (= (toValue!4978 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163809) tb!105803))

(declare-fun result!127298 () Bool)

(assert (= result!127298 result!127294))

(assert (=> b!1758445 t!163809))

(declare-fun b_and!132391 () Bool)

(assert (= b_and!132375 (and (=> t!163809 result!127298) b_and!132391)))

(declare-fun tb!105805 () Bool)

(declare-fun t!163811 () Bool)

(assert (=> (and b!1758456 (= (toValue!4978 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163811) tb!105805))

(declare-fun result!127300 () Bool)

(assert (= result!127300 result!127294))

(assert (=> b!1758445 t!163811))

(declare-fun b_and!132393 () Bool)

(assert (= b_and!132379 (and (=> t!163811 result!127300) b_and!132393)))

(declare-fun b_lambda!56811 () Bool)

(assert (=> (not b_lambda!56811) (not b!1758466)))

(declare-fun t!163813 () Bool)

(declare-fun tb!105807 () Bool)

(assert (=> (and b!1758448 (= (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163813) tb!105807))

(declare-fun b!1758486 () Bool)

(declare-fun e!1125482 () Bool)

(declare-fun tp!499782 () Bool)

(assert (=> b!1758486 (= e!1125482 (and (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))) tp!499782))))

(declare-fun result!127302 () Bool)

(assert (=> tb!105807 (= result!127302 (and (inv!25138 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))) e!1125482))))

(assert (= tb!105807 b!1758486))

(declare-fun m!2173689 () Bool)

(assert (=> b!1758486 m!2173689))

(declare-fun m!2173691 () Bool)

(assert (=> tb!105807 m!2173691))

(assert (=> b!1758466 t!163813))

(declare-fun b_and!132395 () Bool)

(assert (= b_and!132383 (and (=> t!163813 result!127302) b_and!132395)))

(declare-fun tb!105809 () Bool)

(declare-fun t!163815 () Bool)

(assert (=> (and b!1758455 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163815) tb!105809))

(declare-fun result!127304 () Bool)

(assert (= result!127304 result!127302))

(assert (=> b!1758466 t!163815))

(declare-fun b_and!132397 () Bool)

(assert (= b_and!132385 (and (=> t!163815 result!127304) b_and!132397)))

(declare-fun t!163817 () Bool)

(declare-fun tb!105811 () Bool)

(assert (=> (and b!1758456 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163817) tb!105811))

(declare-fun result!127306 () Bool)

(assert (= result!127306 result!127302))

(assert (=> b!1758466 t!163817))

(declare-fun b_and!132399 () Bool)

(assert (= b_and!132387 (and (=> t!163817 result!127306) b_and!132399)))

(declare-fun m!2173693 () Bool)

(assert (=> b!1758457 m!2173693))

(declare-fun m!2173695 () Bool)

(assert (=> b!1758444 m!2173695))

(declare-fun m!2173697 () Bool)

(assert (=> b!1758444 m!2173697))

(declare-fun m!2173699 () Bool)

(assert (=> b!1758461 m!2173699))

(declare-fun m!2173701 () Bool)

(assert (=> b!1758461 m!2173701))

(declare-fun m!2173703 () Bool)

(assert (=> b!1758445 m!2173703))

(assert (=> b!1758445 m!2173703))

(declare-fun m!2173705 () Bool)

(assert (=> b!1758445 m!2173705))

(assert (=> b!1758445 m!2173705))

(declare-fun m!2173707 () Bool)

(assert (=> b!1758445 m!2173707))

(declare-fun m!2173709 () Bool)

(assert (=> b!1758445 m!2173709))

(declare-fun m!2173711 () Bool)

(assert (=> b!1758454 m!2173711))

(declare-fun m!2173713 () Bool)

(assert (=> b!1758447 m!2173713))

(assert (=> b!1758447 m!2173713))

(declare-fun m!2173715 () Bool)

(assert (=> b!1758447 m!2173715))

(declare-fun m!2173717 () Bool)

(assert (=> b!1758447 m!2173717))

(declare-fun m!2173719 () Bool)

(assert (=> b!1758447 m!2173719))

(declare-fun m!2173721 () Bool)

(assert (=> b!1758447 m!2173721))

(declare-fun m!2173723 () Bool)

(assert (=> b!1758465 m!2173723))

(declare-fun m!2173725 () Bool)

(assert (=> b!1758466 m!2173725))

(declare-fun m!2173727 () Bool)

(assert (=> b!1758463 m!2173727))

(declare-fun m!2173729 () Bool)

(assert (=> b!1758463 m!2173729))

(declare-fun m!2173731 () Bool)

(assert (=> b!1758462 m!2173731))

(declare-fun m!2173733 () Bool)

(assert (=> b!1758462 m!2173733))

(declare-fun m!2173735 () Bool)

(assert (=> b!1758453 m!2173735))

(declare-fun m!2173737 () Bool)

(assert (=> b!1758458 m!2173737))

(declare-fun m!2173739 () Bool)

(assert (=> b!1758443 m!2173739))

(declare-fun m!2173741 () Bool)

(assert (=> b!1758443 m!2173741))

(declare-fun m!2173743 () Bool)

(assert (=> b!1758443 m!2173743))

(declare-fun m!2173745 () Bool)

(assert (=> b!1758443 m!2173745))

(declare-fun m!2173747 () Bool)

(assert (=> b!1758443 m!2173747))

(declare-fun m!2173749 () Bool)

(assert (=> b!1758443 m!2173749))

(declare-fun m!2173751 () Bool)

(assert (=> b!1758443 m!2173751))

(declare-fun m!2173753 () Bool)

(assert (=> b!1758443 m!2173753))

(declare-fun m!2173755 () Bool)

(assert (=> b!1758443 m!2173755))

(declare-fun m!2173757 () Bool)

(assert (=> b!1758443 m!2173757))

(declare-fun m!2173759 () Bool)

(assert (=> b!1758443 m!2173759))

(declare-fun m!2173761 () Bool)

(assert (=> b!1758443 m!2173761))

(declare-fun m!2173763 () Bool)

(assert (=> b!1758443 m!2173763))

(declare-fun m!2173765 () Bool)

(assert (=> b!1758443 m!2173765))

(declare-fun m!2173767 () Bool)

(assert (=> b!1758443 m!2173767))

(declare-fun m!2173769 () Bool)

(assert (=> b!1758460 m!2173769))

(declare-fun m!2173771 () Bool)

(assert (=> b!1758442 m!2173771))

(declare-fun m!2173773 () Bool)

(assert (=> b!1758442 m!2173773))

(declare-fun m!2173775 () Bool)

(assert (=> b!1758442 m!2173775))

(declare-fun m!2173777 () Bool)

(assert (=> b!1758446 m!2173777))

(declare-fun m!2173779 () Bool)

(assert (=> b!1758446 m!2173779))

(declare-fun m!2173781 () Bool)

(assert (=> b!1758446 m!2173781))

(assert (=> b!1758446 m!2173781))

(declare-fun m!2173783 () Bool)

(assert (=> b!1758446 m!2173783))

(declare-fun m!2173785 () Bool)

(assert (=> b!1758467 m!2173785))

(declare-fun m!2173787 () Bool)

(assert (=> b!1758467 m!2173787))

(declare-fun m!2173789 () Bool)

(assert (=> b!1758467 m!2173789))

(assert (=> b!1758467 m!2173785))

(assert (=> b!1758467 m!2173789))

(declare-fun m!2173791 () Bool)

(assert (=> b!1758467 m!2173791))

(declare-fun m!2173793 () Bool)

(assert (=> b!1758452 m!2173793))

(declare-fun m!2173795 () Bool)

(assert (=> b!1758452 m!2173795))

(declare-fun m!2173797 () Bool)

(assert (=> b!1758452 m!2173797))

(declare-fun m!2173799 () Bool)

(assert (=> b!1758452 m!2173799))

(declare-fun m!2173801 () Bool)

(assert (=> b!1758452 m!2173801))

(declare-fun m!2173803 () Bool)

(assert (=> b!1758452 m!2173803))

(assert (=> b!1758452 m!2173793))

(assert (=> b!1758449 m!2173743))

(assert (=> b!1758449 m!2173743))

(declare-fun m!2173805 () Bool)

(assert (=> b!1758449 m!2173805))

(assert (=> b!1758449 m!2173805))

(declare-fun m!2173807 () Bool)

(assert (=> b!1758449 m!2173807))

(declare-fun m!2173809 () Bool)

(assert (=> b!1758449 m!2173809))

(declare-fun m!2173811 () Bool)

(assert (=> start!173774 m!2173811))

(declare-fun m!2173813 () Bool)

(assert (=> b!1758459 m!2173813))

(declare-fun m!2173815 () Bool)

(assert (=> b!1758464 m!2173815))

(check-sat b_and!132393 (not b!1758457) (not b!1758443) b_and!132391 (not b!1758454) (not b!1758447) (not b_next!49313) (not b!1758460) (not b!1758486) b_and!132395 (not b!1758467) (not b_next!49317) (not start!173774) (not b_lambda!56811) (not b_next!49311) tp_is_empty!7817 (not b!1758459) (not b!1758462) (not b!1758483) (not b!1758445) b_and!132399 (not b_next!49315) (not b!1758464) (not tb!105795) (not b!1758452) (not b!1758458) (not tb!105801) (not b_lambda!56809) (not b!1758453) (not b!1758440) (not b!1758463) b_and!132397 (not b!1758444) (not b!1758451) (not b!1758465) (not b_lambda!56807) (not tb!105807) (not b!1758446) (not b!1758461) b_and!132389 (not b_next!49319) (not b_next!49321) (not b!1758442) (not b!1758449))
(check-sat (not b_next!49317) (not b_next!49311) b_and!132393 b_and!132391 (not b_next!49313) b_and!132397 b_and!132395 (not b_next!49321) b_and!132399 (not b_next!49315) b_and!132389 (not b_next!49319))
(get-model)

(declare-fun b!1758536 () Bool)

(declare-fun e!1125516 () Bool)

(declare-fun inv!17 (TokenValue!3549) Bool)

(assert (=> b!1758536 (= e!1125516 (inv!17 (value!108254 token!523)))))

(declare-fun b!1758537 () Bool)

(declare-fun e!1125517 () Bool)

(declare-fun inv!15 (TokenValue!3549) Bool)

(assert (=> b!1758537 (= e!1125517 (inv!15 (value!108254 token!523)))))

(declare-fun d!537066 () Bool)

(declare-fun c!286537 () Bool)

(assert (=> d!537066 (= c!286537 ((_ is IntegerValue!10647) (value!108254 token!523)))))

(declare-fun e!1125518 () Bool)

(assert (=> d!537066 (= (inv!21 (value!108254 token!523)) e!1125518)))

(declare-fun b!1758538 () Bool)

(declare-fun res!791334 () Bool)

(assert (=> b!1758538 (=> res!791334 e!1125517)))

(assert (=> b!1758538 (= res!791334 (not ((_ is IntegerValue!10649) (value!108254 token!523))))))

(assert (=> b!1758538 (= e!1125516 e!1125517)))

(declare-fun b!1758539 () Bool)

(assert (=> b!1758539 (= e!1125518 e!1125516)))

(declare-fun c!286536 () Bool)

(assert (=> b!1758539 (= c!286536 ((_ is IntegerValue!10648) (value!108254 token!523)))))

(declare-fun b!1758540 () Bool)

(declare-fun inv!16 (TokenValue!3549) Bool)

(assert (=> b!1758540 (= e!1125518 (inv!16 (value!108254 token!523)))))

(assert (= (and d!537066 c!286537) b!1758540))

(assert (= (and d!537066 (not c!286537)) b!1758539))

(assert (= (and b!1758539 c!286536) b!1758536))

(assert (= (and b!1758539 (not c!286536)) b!1758538))

(assert (= (and b!1758538 (not res!791334)) b!1758537))

(declare-fun m!2173863 () Bool)

(assert (=> b!1758536 m!2173863))

(declare-fun m!2173865 () Bool)

(assert (=> b!1758537 m!2173865))

(declare-fun m!2173867 () Bool)

(assert (=> b!1758540 m!2173867))

(assert (=> b!1758459 d!537066))

(declare-fun d!537068 () Bool)

(declare-fun lt!679509 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2790 (List!19429) (InoxSet Rule!6718))

(assert (=> d!537068 (= lt!679509 (select (content!2790 rules!3447) rule!422))))

(declare-fun e!1125524 () Bool)

(assert (=> d!537068 (= lt!679509 e!1125524)))

(declare-fun res!791339 () Bool)

(assert (=> d!537068 (=> (not res!791339) (not e!1125524))))

(assert (=> d!537068 (= res!791339 ((_ is Cons!19359) rules!3447))))

(assert (=> d!537068 (= (contains!3487 rules!3447 rule!422) lt!679509)))

(declare-fun b!1758545 () Bool)

(declare-fun e!1125523 () Bool)

(assert (=> b!1758545 (= e!1125524 e!1125523)))

(declare-fun res!791340 () Bool)

(assert (=> b!1758545 (=> res!791340 e!1125523)))

(assert (=> b!1758545 (= res!791340 (= (h!24760 rules!3447) rule!422))))

(declare-fun b!1758546 () Bool)

(assert (=> b!1758546 (= e!1125523 (contains!3487 (t!163820 rules!3447) rule!422))))

(assert (= (and d!537068 res!791339) b!1758545))

(assert (= (and b!1758545 (not res!791340)) b!1758546))

(declare-fun m!2173869 () Bool)

(assert (=> d!537068 m!2173869))

(declare-fun m!2173871 () Bool)

(assert (=> d!537068 m!2173871))

(declare-fun m!2173873 () Bool)

(assert (=> b!1758546 m!2173873))

(assert (=> b!1758458 d!537068))

(declare-fun d!537070 () Bool)

(assert (=> d!537070 (= (isEmpty!12210 rules!3447) ((_ is Nil!19359) rules!3447))))

(assert (=> b!1758457 d!537070))

(declare-fun d!537072 () Bool)

(declare-fun res!791345 () Bool)

(declare-fun e!1125527 () Bool)

(assert (=> d!537072 (=> (not res!791345) (not e!1125527))))

(assert (=> d!537072 (= res!791345 (not (isEmpty!12211 (originalCharacters!4273 token!523))))))

(assert (=> d!537072 (= (inv!25136 token!523) e!1125527)))

(declare-fun b!1758551 () Bool)

(declare-fun res!791346 () Bool)

(assert (=> b!1758551 (=> (not res!791346) (not e!1125527))))

(assert (=> b!1758551 (= res!791346 (= (originalCharacters!4273 token!523) (list!7849 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (value!108254 token!523)))))))

(declare-fun b!1758552 () Bool)

(assert (=> b!1758552 (= e!1125527 (= (size!15377 token!523) (size!15379 (originalCharacters!4273 token!523))))))

(assert (= (and d!537072 res!791345) b!1758551))

(assert (= (and b!1758551 res!791346) b!1758552))

(declare-fun b_lambda!56813 () Bool)

(assert (=> (not b_lambda!56813) (not b!1758551)))

(declare-fun t!163822 () Bool)

(declare-fun tb!105813 () Bool)

(assert (=> (and b!1758448 (= (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toChars!4837 (transformation!3459 (rule!5473 token!523)))) t!163822) tb!105813))

(declare-fun b!1758553 () Bool)

(declare-fun e!1125528 () Bool)

(declare-fun tp!499783 () Bool)

(assert (=> b!1758553 (= e!1125528 (and (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (value!108254 token!523)))) tp!499783))))

(declare-fun result!127308 () Bool)

(assert (=> tb!105813 (= result!127308 (and (inv!25138 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (value!108254 token!523))) e!1125528))))

(assert (= tb!105813 b!1758553))

(declare-fun m!2173875 () Bool)

(assert (=> b!1758553 m!2173875))

(declare-fun m!2173877 () Bool)

(assert (=> tb!105813 m!2173877))

(assert (=> b!1758551 t!163822))

(declare-fun b_and!132401 () Bool)

(assert (= b_and!132395 (and (=> t!163822 result!127308) b_and!132401)))

(declare-fun t!163824 () Bool)

(declare-fun tb!105815 () Bool)

(assert (=> (and b!1758455 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 token!523)))) t!163824) tb!105815))

(declare-fun result!127310 () Bool)

(assert (= result!127310 result!127308))

(assert (=> b!1758551 t!163824))

(declare-fun b_and!132403 () Bool)

(assert (= b_and!132397 (and (=> t!163824 result!127310) b_and!132403)))

(declare-fun t!163826 () Bool)

(declare-fun tb!105817 () Bool)

(assert (=> (and b!1758456 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 token!523)))) t!163826) tb!105817))

(declare-fun result!127312 () Bool)

(assert (= result!127312 result!127308))

(assert (=> b!1758551 t!163826))

(declare-fun b_and!132405 () Bool)

(assert (= b_and!132399 (and (=> t!163826 result!127312) b_and!132405)))

(declare-fun m!2173879 () Bool)

(assert (=> d!537072 m!2173879))

(declare-fun m!2173881 () Bool)

(assert (=> b!1758551 m!2173881))

(assert (=> b!1758551 m!2173881))

(declare-fun m!2173883 () Bool)

(assert (=> b!1758551 m!2173883))

(declare-fun m!2173885 () Bool)

(assert (=> b!1758552 m!2173885))

(assert (=> start!173774 d!537072))

(declare-fun d!537074 () Bool)

(assert (=> d!537074 (= (inv!25130 (tag!3821 (rule!5473 token!523))) (= (mod (str.len (value!108253 (tag!3821 (rule!5473 token!523)))) 2) 0))))

(assert (=> b!1758462 d!537074))

(declare-fun d!537076 () Bool)

(declare-fun res!791349 () Bool)

(declare-fun e!1125531 () Bool)

(assert (=> d!537076 (=> (not res!791349) (not e!1125531))))

(declare-fun semiInverseModEq!1372 (Int Int) Bool)

(assert (=> d!537076 (= res!791349 (semiInverseModEq!1372 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 token!523)))))))

(assert (=> d!537076 (= (inv!25135 (transformation!3459 (rule!5473 token!523))) e!1125531)))

(declare-fun b!1758556 () Bool)

(declare-fun equivClasses!1313 (Int Int) Bool)

(assert (=> b!1758556 (= e!1125531 (equivClasses!1313 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 token!523)))))))

(assert (= (and d!537076 res!791349) b!1758556))

(declare-fun m!2173887 () Bool)

(assert (=> d!537076 m!2173887))

(declare-fun m!2173889 () Bool)

(assert (=> b!1758556 m!2173889))

(assert (=> b!1758462 d!537076))

(declare-fun d!537078 () Bool)

(declare-fun choose!10876 (Int) Bool)

(assert (=> d!537078 (= (Forall!826 lambda!70084) (choose!10876 lambda!70084))))

(declare-fun bs!403927 () Bool)

(assert (= bs!403927 d!537078))

(declare-fun m!2173891 () Bool)

(assert (=> bs!403927 m!2173891))

(assert (=> b!1758461 d!537078))

(declare-fun d!537080 () Bool)

(declare-fun e!1125534 () Bool)

(assert (=> d!537080 e!1125534))

(declare-fun res!791352 () Bool)

(assert (=> d!537080 (=> (not res!791352) (not e!1125534))))

(assert (=> d!537080 (= res!791352 (semiInverseModEq!1372 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))))))

(declare-fun Unit!33532 () Unit!33527)

(assert (=> d!537080 (= (lemmaInv!658 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) Unit!33532)))

(declare-fun b!1758559 () Bool)

(assert (=> b!1758559 (= e!1125534 (equivClasses!1313 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))))))

(assert (= (and d!537080 res!791352) b!1758559))

(declare-fun m!2173893 () Bool)

(assert (=> d!537080 m!2173893))

(declare-fun m!2173895 () Bool)

(assert (=> b!1758559 m!2173895))

(assert (=> b!1758461 d!537080))

(declare-fun d!537082 () Bool)

(declare-fun isBalanced!2010 (Conc!6439) Bool)

(assert (=> d!537082 (= (inv!25138 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))) (isBalanced!2010 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))))

(declare-fun bs!403928 () Bool)

(assert (= bs!403928 d!537082))

(declare-fun m!2173897 () Bool)

(assert (=> bs!403928 m!2173897))

(assert (=> tb!105807 d!537082))

(declare-fun d!537084 () Bool)

(declare-fun c!286540 () Bool)

(assert (=> d!537084 (= c!286540 ((_ is Node!6439) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))))

(declare-fun e!1125539 () Bool)

(assert (=> d!537084 (= (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))) e!1125539)))

(declare-fun b!1758566 () Bool)

(declare-fun inv!25139 (Conc!6439) Bool)

(assert (=> b!1758566 (= e!1125539 (inv!25139 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))))

(declare-fun b!1758567 () Bool)

(declare-fun e!1125540 () Bool)

(assert (=> b!1758567 (= e!1125539 e!1125540)))

(declare-fun res!791355 () Bool)

(assert (=> b!1758567 (= res!791355 (not ((_ is Leaf!9389) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))))))

(assert (=> b!1758567 (=> res!791355 e!1125540)))

(declare-fun b!1758568 () Bool)

(declare-fun inv!25140 (Conc!6439) Bool)

(assert (=> b!1758568 (= e!1125540 (inv!25140 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))))

(assert (= (and d!537084 c!286540) b!1758566))

(assert (= (and d!537084 (not c!286540)) b!1758567))

(assert (= (and b!1758567 (not res!791355)) b!1758568))

(declare-fun m!2173899 () Bool)

(assert (=> b!1758566 m!2173899))

(declare-fun m!2173901 () Bool)

(assert (=> b!1758568 m!2173901))

(assert (=> b!1758483 d!537084))

(declare-fun b!1758597 () Bool)

(declare-fun e!1125555 () Bool)

(declare-fun e!1125560 () Bool)

(assert (=> b!1758597 (= e!1125555 e!1125560)))

(declare-fun res!791378 () Bool)

(assert (=> b!1758597 (=> (not res!791378) (not e!1125560))))

(declare-fun lt!679512 () Bool)

(assert (=> b!1758597 (= res!791378 (not lt!679512))))

(declare-fun b!1758598 () Bool)

(declare-fun res!791374 () Bool)

(assert (=> b!1758598 (=> res!791374 e!1125555)))

(assert (=> b!1758598 (= res!791374 (not ((_ is ElementMatch!4787) (regex!3459 (rule!5473 (_1!10885 lt!679485))))))))

(declare-fun e!1125558 () Bool)

(assert (=> b!1758598 (= e!1125558 e!1125555)))

(declare-fun b!1758599 () Bool)

(declare-fun e!1125557 () Bool)

(assert (=> b!1758599 (= e!1125557 (not (= (head!4068 lt!679472) (c!286524 (regex!3459 (rule!5473 (_1!10885 lt!679485)))))))))

(declare-fun b!1758600 () Bool)

(declare-fun e!1125561 () Bool)

(assert (=> b!1758600 (= e!1125561 (= (head!4068 lt!679472) (c!286524 (regex!3459 (rule!5473 (_1!10885 lt!679485))))))))

(declare-fun b!1758601 () Bool)

(declare-fun res!791372 () Bool)

(assert (=> b!1758601 (=> res!791372 e!1125555)))

(assert (=> b!1758601 (= res!791372 e!1125561)))

(declare-fun res!791373 () Bool)

(assert (=> b!1758601 (=> (not res!791373) (not e!1125561))))

(assert (=> b!1758601 (= res!791373 lt!679512)))

(declare-fun b!1758602 () Bool)

(assert (=> b!1758602 (= e!1125558 (not lt!679512))))

(declare-fun d!537086 () Bool)

(declare-fun e!1125559 () Bool)

(assert (=> d!537086 e!1125559))

(declare-fun c!286549 () Bool)

(assert (=> d!537086 (= c!286549 ((_ is EmptyExpr!4787) (regex!3459 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun e!1125556 () Bool)

(assert (=> d!537086 (= lt!679512 e!1125556)))

(declare-fun c!286548 () Bool)

(assert (=> d!537086 (= c!286548 (isEmpty!12211 lt!679472))))

(declare-fun validRegex!1930 (Regex!4787) Bool)

(assert (=> d!537086 (validRegex!1930 (regex!3459 (rule!5473 (_1!10885 lt!679485))))))

(assert (=> d!537086 (= (matchR!2260 (regex!3459 (rule!5473 (_1!10885 lt!679485))) lt!679472) lt!679512)))

(declare-fun b!1758603 () Bool)

(assert (=> b!1758603 (= e!1125560 e!1125557)))

(declare-fun res!791376 () Bool)

(assert (=> b!1758603 (=> res!791376 e!1125557)))

(declare-fun call!110595 () Bool)

(assert (=> b!1758603 (= res!791376 call!110595)))

(declare-fun b!1758604 () Bool)

(declare-fun res!791379 () Bool)

(assert (=> b!1758604 (=> res!791379 e!1125557)))

(declare-fun tail!2629 (List!19428) List!19428)

(assert (=> b!1758604 (= res!791379 (not (isEmpty!12211 (tail!2629 lt!679472))))))

(declare-fun b!1758605 () Bool)

(declare-fun res!791377 () Bool)

(assert (=> b!1758605 (=> (not res!791377) (not e!1125561))))

(assert (=> b!1758605 (= res!791377 (isEmpty!12211 (tail!2629 lt!679472)))))

(declare-fun b!1758606 () Bool)

(assert (=> b!1758606 (= e!1125559 (= lt!679512 call!110595))))

(declare-fun b!1758607 () Bool)

(declare-fun nullable!1456 (Regex!4787) Bool)

(assert (=> b!1758607 (= e!1125556 (nullable!1456 (regex!3459 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun bm!110590 () Bool)

(assert (=> bm!110590 (= call!110595 (isEmpty!12211 lt!679472))))

(declare-fun b!1758608 () Bool)

(assert (=> b!1758608 (= e!1125559 e!1125558)))

(declare-fun c!286547 () Bool)

(assert (=> b!1758608 (= c!286547 ((_ is EmptyLang!4787) (regex!3459 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun b!1758609 () Bool)

(declare-fun res!791375 () Bool)

(assert (=> b!1758609 (=> (not res!791375) (not e!1125561))))

(assert (=> b!1758609 (= res!791375 (not call!110595))))

(declare-fun b!1758610 () Bool)

(declare-fun derivativeStep!1225 (Regex!4787 C!9748) Regex!4787)

(assert (=> b!1758610 (= e!1125556 (matchR!2260 (derivativeStep!1225 (regex!3459 (rule!5473 (_1!10885 lt!679485))) (head!4068 lt!679472)) (tail!2629 lt!679472)))))

(assert (= (and d!537086 c!286548) b!1758607))

(assert (= (and d!537086 (not c!286548)) b!1758610))

(assert (= (and d!537086 c!286549) b!1758606))

(assert (= (and d!537086 (not c!286549)) b!1758608))

(assert (= (and b!1758608 c!286547) b!1758602))

(assert (= (and b!1758608 (not c!286547)) b!1758598))

(assert (= (and b!1758598 (not res!791374)) b!1758601))

(assert (= (and b!1758601 res!791373) b!1758609))

(assert (= (and b!1758609 res!791375) b!1758605))

(assert (= (and b!1758605 res!791377) b!1758600))

(assert (= (and b!1758601 (not res!791372)) b!1758597))

(assert (= (and b!1758597 res!791378) b!1758603))

(assert (= (and b!1758603 (not res!791376)) b!1758604))

(assert (= (and b!1758604 (not res!791379)) b!1758599))

(assert (= (or b!1758606 b!1758609 b!1758603) bm!110590))

(declare-fun m!2173903 () Bool)

(assert (=> b!1758610 m!2173903))

(assert (=> b!1758610 m!2173903))

(declare-fun m!2173905 () Bool)

(assert (=> b!1758610 m!2173905))

(declare-fun m!2173907 () Bool)

(assert (=> b!1758610 m!2173907))

(assert (=> b!1758610 m!2173905))

(assert (=> b!1758610 m!2173907))

(declare-fun m!2173909 () Bool)

(assert (=> b!1758610 m!2173909))

(declare-fun m!2173911 () Bool)

(assert (=> bm!110590 m!2173911))

(assert (=> b!1758604 m!2173907))

(assert (=> b!1758604 m!2173907))

(declare-fun m!2173913 () Bool)

(assert (=> b!1758604 m!2173913))

(assert (=> b!1758605 m!2173907))

(assert (=> b!1758605 m!2173907))

(assert (=> b!1758605 m!2173913))

(declare-fun m!2173915 () Bool)

(assert (=> b!1758607 m!2173915))

(assert (=> b!1758599 m!2173903))

(assert (=> d!537086 m!2173911))

(declare-fun m!2173917 () Bool)

(assert (=> d!537086 m!2173917))

(assert (=> b!1758600 m!2173903))

(assert (=> b!1758460 d!537086))

(declare-fun b!1758619 () Bool)

(declare-fun e!1125570 () Bool)

(declare-fun e!1125569 () Bool)

(assert (=> b!1758619 (= e!1125570 e!1125569)))

(declare-fun res!791391 () Bool)

(assert (=> b!1758619 (=> (not res!791391) (not e!1125569))))

(assert (=> b!1758619 (= res!791391 (not ((_ is Nil!19358) lt!679469)))))

(declare-fun b!1758622 () Bool)

(declare-fun e!1125568 () Bool)

(assert (=> b!1758622 (= e!1125568 (>= (size!15379 lt!679469) (size!15379 lt!679477)))))

(declare-fun b!1758620 () Bool)

(declare-fun res!791389 () Bool)

(assert (=> b!1758620 (=> (not res!791389) (not e!1125569))))

(assert (=> b!1758620 (= res!791389 (= (head!4068 lt!679477) (head!4068 lt!679469)))))

(declare-fun d!537088 () Bool)

(assert (=> d!537088 e!1125568))

(declare-fun res!791388 () Bool)

(assert (=> d!537088 (=> res!791388 e!1125568)))

(declare-fun lt!679515 () Bool)

(assert (=> d!537088 (= res!791388 (not lt!679515))))

(assert (=> d!537088 (= lt!679515 e!1125570)))

(declare-fun res!791390 () Bool)

(assert (=> d!537088 (=> res!791390 e!1125570)))

(assert (=> d!537088 (= res!791390 ((_ is Nil!19358) lt!679477))))

(assert (=> d!537088 (= (isPrefix!1699 lt!679477 lt!679469) lt!679515)))

(declare-fun b!1758621 () Bool)

(assert (=> b!1758621 (= e!1125569 (isPrefix!1699 (tail!2629 lt!679477) (tail!2629 lt!679469)))))

(assert (= (and d!537088 (not res!791390)) b!1758619))

(assert (= (and b!1758619 res!791391) b!1758620))

(assert (= (and b!1758620 res!791389) b!1758621))

(assert (= (and d!537088 (not res!791388)) b!1758622))

(declare-fun m!2173919 () Bool)

(assert (=> b!1758622 m!2173919))

(declare-fun m!2173921 () Bool)

(assert (=> b!1758622 m!2173921))

(declare-fun m!2173923 () Bool)

(assert (=> b!1758620 m!2173923))

(declare-fun m!2173925 () Bool)

(assert (=> b!1758620 m!2173925))

(declare-fun m!2173927 () Bool)

(assert (=> b!1758621 m!2173927))

(declare-fun m!2173929 () Bool)

(assert (=> b!1758621 m!2173929))

(assert (=> b!1758621 m!2173927))

(assert (=> b!1758621 m!2173929))

(declare-fun m!2173931 () Bool)

(assert (=> b!1758621 m!2173931))

(assert (=> b!1758443 d!537088))

(declare-fun d!537090 () Bool)

(assert (=> d!537090 (= (get!5887 lt!679476) (v!25397 lt!679476))))

(assert (=> b!1758443 d!537090))

(declare-fun d!537092 () Bool)

(declare-fun list!7852 (Conc!6439) List!19428)

(assert (=> d!537092 (= (list!7849 lt!679479) (list!7852 (c!286525 lt!679479)))))

(declare-fun bs!403929 () Bool)

(assert (= bs!403929 d!537092))

(declare-fun m!2173933 () Bool)

(assert (=> bs!403929 m!2173933))

(assert (=> b!1758443 d!537092))

(declare-fun b!1758632 () Bool)

(declare-fun e!1125576 () List!19428)

(assert (=> b!1758632 (= e!1125576 (Cons!19358 (h!24759 lt!679477) (++!5283 (t!163819 lt!679477) suffix!1421)))))

(declare-fun d!537094 () Bool)

(declare-fun e!1125575 () Bool)

(assert (=> d!537094 e!1125575))

(declare-fun res!791396 () Bool)

(assert (=> d!537094 (=> (not res!791396) (not e!1125575))))

(declare-fun lt!679518 () List!19428)

(declare-fun content!2791 (List!19428) (InoxSet C!9748))

(assert (=> d!537094 (= res!791396 (= (content!2791 lt!679518) ((_ map or) (content!2791 lt!679477) (content!2791 suffix!1421))))))

(assert (=> d!537094 (= lt!679518 e!1125576)))

(declare-fun c!286552 () Bool)

(assert (=> d!537094 (= c!286552 ((_ is Nil!19358) lt!679477))))

(assert (=> d!537094 (= (++!5283 lt!679477 suffix!1421) lt!679518)))

(declare-fun b!1758633 () Bool)

(declare-fun res!791397 () Bool)

(assert (=> b!1758633 (=> (not res!791397) (not e!1125575))))

(assert (=> b!1758633 (= res!791397 (= (size!15379 lt!679518) (+ (size!15379 lt!679477) (size!15379 suffix!1421))))))

(declare-fun b!1758634 () Bool)

(assert (=> b!1758634 (= e!1125575 (or (not (= suffix!1421 Nil!19358)) (= lt!679518 lt!679477)))))

(declare-fun b!1758631 () Bool)

(assert (=> b!1758631 (= e!1125576 suffix!1421)))

(assert (= (and d!537094 c!286552) b!1758631))

(assert (= (and d!537094 (not c!286552)) b!1758632))

(assert (= (and d!537094 res!791396) b!1758633))

(assert (= (and b!1758633 res!791397) b!1758634))

(declare-fun m!2173935 () Bool)

(assert (=> b!1758632 m!2173935))

(declare-fun m!2173937 () Bool)

(assert (=> d!537094 m!2173937))

(declare-fun m!2173939 () Bool)

(assert (=> d!537094 m!2173939))

(declare-fun m!2173941 () Bool)

(assert (=> d!537094 m!2173941))

(declare-fun m!2173943 () Bool)

(assert (=> b!1758633 m!2173943))

(assert (=> b!1758633 m!2173921))

(declare-fun m!2173945 () Bool)

(assert (=> b!1758633 m!2173945))

(assert (=> b!1758443 d!537094))

(declare-fun b!1758655 () Bool)

(declare-fun e!1125589 () Option!3940)

(assert (=> b!1758655 (= e!1125589 None!3939)))

(declare-fun b!1758656 () Bool)

(declare-fun e!1125591 () Bool)

(declare-fun lt!679560 () Option!3940)

(assert (=> b!1758656 (= e!1125591 (= (tag!3821 (get!5888 lt!679560)) (tag!3821 (rule!5473 (_1!10885 lt!679485)))))))

(declare-fun d!537096 () Bool)

(declare-fun e!1125592 () Bool)

(assert (=> d!537096 e!1125592))

(declare-fun res!791407 () Bool)

(assert (=> d!537096 (=> res!791407 e!1125592)))

(declare-fun isEmpty!12214 (Option!3940) Bool)

(assert (=> d!537096 (= res!791407 (isEmpty!12214 lt!679560))))

(declare-fun e!1125590 () Option!3940)

(assert (=> d!537096 (= lt!679560 e!1125590)))

(declare-fun c!286559 () Bool)

(assert (=> d!537096 (= c!286559 (and ((_ is Cons!19359) rules!3447) (= (tag!3821 (h!24760 rules!3447)) (tag!3821 (rule!5473 (_1!10885 lt!679485))))))))

(assert (=> d!537096 (rulesInvariant!2757 thiss!24550 rules!3447)))

(assert (=> d!537096 (= (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 (_1!10885 lt!679485)))) lt!679560)))

(declare-fun b!1758657 () Bool)

(assert (=> b!1758657 (= e!1125590 (Some!3939 (h!24760 rules!3447)))))

(declare-fun b!1758658 () Bool)

(assert (=> b!1758658 (= e!1125590 e!1125589)))

(declare-fun c!286560 () Bool)

(assert (=> b!1758658 (= c!286560 (and ((_ is Cons!19359) rules!3447) (not (= (tag!3821 (h!24760 rules!3447)) (tag!3821 (rule!5473 (_1!10885 lt!679485)))))))))

(declare-fun b!1758659 () Bool)

(assert (=> b!1758659 (= e!1125592 e!1125591)))

(declare-fun res!791406 () Bool)

(assert (=> b!1758659 (=> (not res!791406) (not e!1125591))))

(assert (=> b!1758659 (= res!791406 (contains!3487 rules!3447 (get!5888 lt!679560)))))

(declare-fun b!1758660 () Bool)

(declare-fun lt!679559 () Unit!33527)

(declare-fun lt!679561 () Unit!33527)

(assert (=> b!1758660 (= lt!679559 lt!679561)))

(assert (=> b!1758660 (rulesInvariant!2757 thiss!24550 (t!163820 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!186 (LexerInterface!3088 Rule!6718 List!19429) Unit!33527)

(assert (=> b!1758660 (= lt!679561 (lemmaInvariantOnRulesThenOnTail!186 thiss!24550 (h!24760 rules!3447) (t!163820 rules!3447)))))

(assert (=> b!1758660 (= e!1125589 (getRuleFromTag!507 thiss!24550 (t!163820 rules!3447) (tag!3821 (rule!5473 (_1!10885 lt!679485)))))))

(assert (= (and d!537096 c!286559) b!1758657))

(assert (= (and d!537096 (not c!286559)) b!1758658))

(assert (= (and b!1758658 c!286560) b!1758660))

(assert (= (and b!1758658 (not c!286560)) b!1758655))

(assert (= (and d!537096 (not res!791407)) b!1758659))

(assert (= (and b!1758659 res!791406) b!1758656))

(declare-fun m!2173947 () Bool)

(assert (=> b!1758656 m!2173947))

(declare-fun m!2173949 () Bool)

(assert (=> d!537096 m!2173949))

(assert (=> d!537096 m!2173711))

(assert (=> b!1758659 m!2173947))

(assert (=> b!1758659 m!2173947))

(declare-fun m!2173951 () Bool)

(assert (=> b!1758659 m!2173951))

(declare-fun m!2173953 () Bool)

(assert (=> b!1758660 m!2173953))

(declare-fun m!2173955 () Bool)

(assert (=> b!1758660 m!2173955))

(declare-fun m!2173957 () Bool)

(assert (=> b!1758660 m!2173957))

(assert (=> b!1758443 d!537096))

(declare-fun d!537098 () Bool)

(assert (=> d!537098 (isPrefix!1699 lt!679472 (++!5283 lt!679472 (_2!10885 lt!679485)))))

(declare-fun lt!679564 () Unit!33527)

(declare-fun choose!10878 (List!19428 List!19428) Unit!33527)

(assert (=> d!537098 (= lt!679564 (choose!10878 lt!679472 (_2!10885 lt!679485)))))

(assert (=> d!537098 (= (lemmaConcatTwoListThenFirstIsPrefix!1208 lt!679472 (_2!10885 lt!679485)) lt!679564)))

(declare-fun bs!403930 () Bool)

(assert (= bs!403930 d!537098))

(assert (=> bs!403930 m!2173741))

(assert (=> bs!403930 m!2173741))

(declare-fun m!2173959 () Bool)

(assert (=> bs!403930 m!2173959))

(declare-fun m!2173961 () Bool)

(assert (=> bs!403930 m!2173961))

(assert (=> b!1758443 d!537098))

(declare-fun d!537100 () Bool)

(assert (=> d!537100 (= (isDefined!3283 lt!679467) (not (isEmpty!12214 lt!679467)))))

(declare-fun bs!403931 () Bool)

(assert (= bs!403931 d!537100))

(declare-fun m!2173963 () Bool)

(assert (=> bs!403931 m!2173963))

(assert (=> b!1758443 d!537100))

(declare-fun b!1758662 () Bool)

(declare-fun e!1125594 () List!19428)

(assert (=> b!1758662 (= e!1125594 (Cons!19358 (h!24759 lt!679472) (++!5283 (t!163819 lt!679472) (_2!10885 lt!679485))))))

(declare-fun d!537102 () Bool)

(declare-fun e!1125593 () Bool)

(assert (=> d!537102 e!1125593))

(declare-fun res!791408 () Bool)

(assert (=> d!537102 (=> (not res!791408) (not e!1125593))))

(declare-fun lt!679565 () List!19428)

(assert (=> d!537102 (= res!791408 (= (content!2791 lt!679565) ((_ map or) (content!2791 lt!679472) (content!2791 (_2!10885 lt!679485)))))))

(assert (=> d!537102 (= lt!679565 e!1125594)))

(declare-fun c!286561 () Bool)

(assert (=> d!537102 (= c!286561 ((_ is Nil!19358) lt!679472))))

(assert (=> d!537102 (= (++!5283 lt!679472 (_2!10885 lt!679485)) lt!679565)))

(declare-fun b!1758663 () Bool)

(declare-fun res!791409 () Bool)

(assert (=> b!1758663 (=> (not res!791409) (not e!1125593))))

(assert (=> b!1758663 (= res!791409 (= (size!15379 lt!679565) (+ (size!15379 lt!679472) (size!15379 (_2!10885 lt!679485)))))))

(declare-fun b!1758664 () Bool)

(assert (=> b!1758664 (= e!1125593 (or (not (= (_2!10885 lt!679485) Nil!19358)) (= lt!679565 lt!679472)))))

(declare-fun b!1758661 () Bool)

(assert (=> b!1758661 (= e!1125594 (_2!10885 lt!679485))))

(assert (= (and d!537102 c!286561) b!1758661))

(assert (= (and d!537102 (not c!286561)) b!1758662))

(assert (= (and d!537102 res!791408) b!1758663))

(assert (= (and b!1758663 res!791409) b!1758664))

(declare-fun m!2173965 () Bool)

(assert (=> b!1758662 m!2173965))

(declare-fun m!2173967 () Bool)

(assert (=> d!537102 m!2173967))

(declare-fun m!2173969 () Bool)

(assert (=> d!537102 m!2173969))

(declare-fun m!2173971 () Bool)

(assert (=> d!537102 m!2173971))

(declare-fun m!2173973 () Bool)

(assert (=> b!1758663 m!2173973))

(assert (=> b!1758663 m!2173797))

(declare-fun m!2173975 () Bool)

(assert (=> b!1758663 m!2173975))

(assert (=> b!1758443 d!537102))

(declare-fun d!537104 () Bool)

(declare-fun lt!679585 () BalanceConc!12822)

(assert (=> d!537104 (= (list!7849 lt!679585) (originalCharacters!4273 (_1!10885 lt!679485)))))

(assert (=> d!537104 (= lt!679585 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))

(assert (=> d!537104 (= (charsOf!2108 (_1!10885 lt!679485)) lt!679585)))

(declare-fun b_lambda!56815 () Bool)

(assert (=> (not b_lambda!56815) (not d!537104)))

(assert (=> d!537104 t!163813))

(declare-fun b_and!132407 () Bool)

(assert (= b_and!132401 (and (=> t!163813 result!127302) b_and!132407)))

(assert (=> d!537104 t!163815))

(declare-fun b_and!132409 () Bool)

(assert (= b_and!132403 (and (=> t!163815 result!127304) b_and!132409)))

(assert (=> d!537104 t!163817))

(declare-fun b_and!132411 () Bool)

(assert (= b_and!132405 (and (=> t!163817 result!127306) b_and!132411)))

(declare-fun m!2173977 () Bool)

(assert (=> d!537104 m!2173977))

(assert (=> d!537104 m!2173725))

(assert (=> b!1758443 d!537104))

(declare-fun b!1758707 () Bool)

(declare-fun e!1125616 () Option!3941)

(declare-fun lt!679611 () Option!3941)

(declare-fun lt!679612 () Option!3941)

(assert (=> b!1758707 (= e!1125616 (ite (and ((_ is None!3940) lt!679611) ((_ is None!3940) lt!679612)) None!3940 (ite ((_ is None!3940) lt!679612) lt!679611 (ite ((_ is None!3940) lt!679611) lt!679612 (ite (>= (size!15377 (_1!10885 (v!25397 lt!679611))) (size!15377 (_1!10885 (v!25397 lt!679612)))) lt!679611 lt!679612)))))))

(declare-fun call!110600 () Option!3941)

(assert (=> b!1758707 (= lt!679611 call!110600)))

(assert (=> b!1758707 (= lt!679612 (maxPrefix!1642 thiss!24550 (t!163820 rules!3447) lt!679469))))

(declare-fun b!1758708 () Bool)

(declare-fun res!791437 () Bool)

(declare-fun e!1125614 () Bool)

(assert (=> b!1758708 (=> (not res!791437) (not e!1125614))))

(declare-fun lt!679614 () Option!3941)

(assert (=> b!1758708 (= res!791437 (matchR!2260 (regex!3459 (rule!5473 (_1!10885 (get!5887 lt!679614)))) (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679614))))))))

(declare-fun b!1758709 () Bool)

(declare-fun e!1125615 () Bool)

(assert (=> b!1758709 (= e!1125615 e!1125614)))

(declare-fun res!791441 () Bool)

(assert (=> b!1758709 (=> (not res!791441) (not e!1125614))))

(assert (=> b!1758709 (= res!791441 (isDefined!3284 lt!679614))))

(declare-fun b!1758710 () Bool)

(assert (=> b!1758710 (= e!1125614 (contains!3487 rules!3447 (rule!5473 (_1!10885 (get!5887 lt!679614)))))))

(declare-fun b!1758711 () Bool)

(declare-fun res!791440 () Bool)

(assert (=> b!1758711 (=> (not res!791440) (not e!1125614))))

(assert (=> b!1758711 (= res!791440 (= (value!108254 (_1!10885 (get!5887 lt!679614))) (apply!5259 (transformation!3459 (rule!5473 (_1!10885 (get!5887 lt!679614)))) (seqFromList!2428 (originalCharacters!4273 (_1!10885 (get!5887 lt!679614)))))))))

(declare-fun b!1758713 () Bool)

(declare-fun res!791439 () Bool)

(assert (=> b!1758713 (=> (not res!791439) (not e!1125614))))

(assert (=> b!1758713 (= res!791439 (< (size!15379 (_2!10885 (get!5887 lt!679614))) (size!15379 lt!679469)))))

(declare-fun bm!110593 () Bool)

(assert (=> bm!110593 (= call!110600 (maxPrefixOneRule!1011 thiss!24550 (h!24760 rules!3447) lt!679469))))

(declare-fun b!1758714 () Bool)

(declare-fun res!791438 () Bool)

(assert (=> b!1758714 (=> (not res!791438) (not e!1125614))))

(assert (=> b!1758714 (= res!791438 (= (++!5283 (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679614)))) (_2!10885 (get!5887 lt!679614))) lt!679469))))

(declare-fun b!1758715 () Bool)

(declare-fun res!791442 () Bool)

(assert (=> b!1758715 (=> (not res!791442) (not e!1125614))))

(assert (=> b!1758715 (= res!791442 (= (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679614)))) (originalCharacters!4273 (_1!10885 (get!5887 lt!679614)))))))

(declare-fun b!1758712 () Bool)

(assert (=> b!1758712 (= e!1125616 call!110600)))

(declare-fun d!537106 () Bool)

(assert (=> d!537106 e!1125615))

(declare-fun res!791436 () Bool)

(assert (=> d!537106 (=> res!791436 e!1125615)))

(declare-fun isEmpty!12215 (Option!3941) Bool)

(assert (=> d!537106 (= res!791436 (isEmpty!12215 lt!679614))))

(assert (=> d!537106 (= lt!679614 e!1125616)))

(declare-fun c!286570 () Bool)

(assert (=> d!537106 (= c!286570 (and ((_ is Cons!19359) rules!3447) ((_ is Nil!19359) (t!163820 rules!3447))))))

(declare-fun lt!679615 () Unit!33527)

(declare-fun lt!679613 () Unit!33527)

(assert (=> d!537106 (= lt!679615 lt!679613)))

(assert (=> d!537106 (isPrefix!1699 lt!679469 lt!679469)))

(declare-fun lemmaIsPrefixRefl!1124 (List!19428 List!19428) Unit!33527)

(assert (=> d!537106 (= lt!679613 (lemmaIsPrefixRefl!1124 lt!679469 lt!679469))))

(declare-fun rulesValidInductive!1162 (LexerInterface!3088 List!19429) Bool)

(assert (=> d!537106 (rulesValidInductive!1162 thiss!24550 rules!3447)))

(assert (=> d!537106 (= (maxPrefix!1642 thiss!24550 rules!3447 lt!679469) lt!679614)))

(assert (= (and d!537106 c!286570) b!1758712))

(assert (= (and d!537106 (not c!286570)) b!1758707))

(assert (= (or b!1758712 b!1758707) bm!110593))

(assert (= (and d!537106 (not res!791436)) b!1758709))

(assert (= (and b!1758709 res!791441) b!1758715))

(assert (= (and b!1758715 res!791442) b!1758713))

(assert (= (and b!1758713 res!791439) b!1758714))

(assert (= (and b!1758714 res!791438) b!1758711))

(assert (= (and b!1758711 res!791440) b!1758708))

(assert (= (and b!1758708 res!791437) b!1758710))

(declare-fun m!2174053 () Bool)

(assert (=> bm!110593 m!2174053))

(declare-fun m!2174055 () Bool)

(assert (=> b!1758713 m!2174055))

(declare-fun m!2174057 () Bool)

(assert (=> b!1758713 m!2174057))

(assert (=> b!1758713 m!2173919))

(assert (=> b!1758715 m!2174055))

(declare-fun m!2174059 () Bool)

(assert (=> b!1758715 m!2174059))

(assert (=> b!1758715 m!2174059))

(declare-fun m!2174061 () Bool)

(assert (=> b!1758715 m!2174061))

(assert (=> b!1758708 m!2174055))

(assert (=> b!1758708 m!2174059))

(assert (=> b!1758708 m!2174059))

(assert (=> b!1758708 m!2174061))

(assert (=> b!1758708 m!2174061))

(declare-fun m!2174063 () Bool)

(assert (=> b!1758708 m!2174063))

(declare-fun m!2174065 () Bool)

(assert (=> b!1758709 m!2174065))

(assert (=> b!1758711 m!2174055))

(declare-fun m!2174067 () Bool)

(assert (=> b!1758711 m!2174067))

(assert (=> b!1758711 m!2174067))

(declare-fun m!2174069 () Bool)

(assert (=> b!1758711 m!2174069))

(assert (=> b!1758714 m!2174055))

(assert (=> b!1758714 m!2174059))

(assert (=> b!1758714 m!2174059))

(assert (=> b!1758714 m!2174061))

(assert (=> b!1758714 m!2174061))

(declare-fun m!2174071 () Bool)

(assert (=> b!1758714 m!2174071))

(assert (=> b!1758710 m!2174055))

(declare-fun m!2174073 () Bool)

(assert (=> b!1758710 m!2174073))

(declare-fun m!2174075 () Bool)

(assert (=> d!537106 m!2174075))

(declare-fun m!2174077 () Bool)

(assert (=> d!537106 m!2174077))

(declare-fun m!2174079 () Bool)

(assert (=> d!537106 m!2174079))

(declare-fun m!2174081 () Bool)

(assert (=> d!537106 m!2174081))

(declare-fun m!2174083 () Bool)

(assert (=> b!1758707 m!2174083))

(assert (=> b!1758443 d!537106))

(declare-fun d!537118 () Bool)

(assert (=> d!537118 (isPrefix!1699 lt!679477 (++!5283 lt!679477 suffix!1421))))

(declare-fun lt!679616 () Unit!33527)

(assert (=> d!537118 (= lt!679616 (choose!10878 lt!679477 suffix!1421))))

(assert (=> d!537118 (= (lemmaConcatTwoListThenFirstIsPrefix!1208 lt!679477 suffix!1421) lt!679616)))

(declare-fun bs!403934 () Bool)

(assert (= bs!403934 d!537118))

(assert (=> bs!403934 m!2173745))

(assert (=> bs!403934 m!2173745))

(declare-fun m!2174085 () Bool)

(assert (=> bs!403934 m!2174085))

(declare-fun m!2174087 () Bool)

(assert (=> bs!403934 m!2174087))

(assert (=> b!1758443 d!537118))

(declare-fun b!1758730 () Bool)

(declare-fun e!1125623 () Bool)

(declare-fun e!1125622 () Bool)

(assert (=> b!1758730 (= e!1125623 e!1125622)))

(declare-fun res!791460 () Bool)

(assert (=> b!1758730 (=> (not res!791460) (not e!1125622))))

(assert (=> b!1758730 (= res!791460 (not ((_ is Nil!19358) lt!679469)))))

(declare-fun b!1758733 () Bool)

(declare-fun e!1125621 () Bool)

(assert (=> b!1758733 (= e!1125621 (>= (size!15379 lt!679469) (size!15379 lt!679472)))))

(declare-fun b!1758731 () Bool)

(declare-fun res!791458 () Bool)

(assert (=> b!1758731 (=> (not res!791458) (not e!1125622))))

(assert (=> b!1758731 (= res!791458 (= (head!4068 lt!679472) (head!4068 lt!679469)))))

(declare-fun d!537120 () Bool)

(assert (=> d!537120 e!1125621))

(declare-fun res!791457 () Bool)

(assert (=> d!537120 (=> res!791457 e!1125621)))

(declare-fun lt!679617 () Bool)

(assert (=> d!537120 (= res!791457 (not lt!679617))))

(assert (=> d!537120 (= lt!679617 e!1125623)))

(declare-fun res!791459 () Bool)

(assert (=> d!537120 (=> res!791459 e!1125623)))

(assert (=> d!537120 (= res!791459 ((_ is Nil!19358) lt!679472))))

(assert (=> d!537120 (= (isPrefix!1699 lt!679472 lt!679469) lt!679617)))

(declare-fun b!1758732 () Bool)

(assert (=> b!1758732 (= e!1125622 (isPrefix!1699 (tail!2629 lt!679472) (tail!2629 lt!679469)))))

(assert (= (and d!537120 (not res!791459)) b!1758730))

(assert (= (and b!1758730 res!791460) b!1758731))

(assert (= (and b!1758731 res!791458) b!1758732))

(assert (= (and d!537120 (not res!791457)) b!1758733))

(assert (=> b!1758733 m!2173919))

(assert (=> b!1758733 m!2173797))

(assert (=> b!1758731 m!2173903))

(assert (=> b!1758731 m!2173925))

(assert (=> b!1758732 m!2173907))

(assert (=> b!1758732 m!2173929))

(assert (=> b!1758732 m!2173907))

(assert (=> b!1758732 m!2173929))

(declare-fun m!2174089 () Bool)

(assert (=> b!1758732 m!2174089))

(assert (=> b!1758443 d!537120))

(declare-fun d!537122 () Bool)

(declare-fun e!1125629 () Bool)

(assert (=> d!537122 e!1125629))

(declare-fun res!791472 () Bool)

(assert (=> d!537122 (=> (not res!791472) (not e!1125629))))

(assert (=> d!537122 (= res!791472 (isDefined!3283 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 (_1!10885 lt!679485))))))))

(declare-fun lt!679627 () Unit!33527)

(declare-fun choose!10879 (LexerInterface!3088 List!19429 List!19428 Token!6484) Unit!33527)

(assert (=> d!537122 (= lt!679627 (choose!10879 thiss!24550 rules!3447 lt!679469 (_1!10885 lt!679485)))))

(assert (=> d!537122 (rulesInvariant!2757 thiss!24550 rules!3447)))

(assert (=> d!537122 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!507 thiss!24550 rules!3447 lt!679469 (_1!10885 lt!679485)) lt!679627)))

(declare-fun b!1758747 () Bool)

(declare-fun res!791473 () Bool)

(assert (=> b!1758747 (=> (not res!791473) (not e!1125629))))

(assert (=> b!1758747 (= res!791473 (matchR!2260 (regex!3459 (get!5888 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 (_1!10885 lt!679485)))))) (list!7849 (charsOf!2108 (_1!10885 lt!679485)))))))

(declare-fun b!1758748 () Bool)

(assert (=> b!1758748 (= e!1125629 (= (rule!5473 (_1!10885 lt!679485)) (get!5888 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 (_1!10885 lt!679485)))))))))

(assert (= (and d!537122 res!791472) b!1758747))

(assert (= (and b!1758747 res!791473) b!1758748))

(assert (=> d!537122 m!2173749))

(assert (=> d!537122 m!2173749))

(declare-fun m!2174123 () Bool)

(assert (=> d!537122 m!2174123))

(declare-fun m!2174125 () Bool)

(assert (=> d!537122 m!2174125))

(assert (=> d!537122 m!2173711))

(assert (=> b!1758747 m!2173743))

(assert (=> b!1758747 m!2173805))

(declare-fun m!2174127 () Bool)

(assert (=> b!1758747 m!2174127))

(assert (=> b!1758747 m!2173749))

(declare-fun m!2174129 () Bool)

(assert (=> b!1758747 m!2174129))

(assert (=> b!1758747 m!2173749))

(assert (=> b!1758747 m!2173743))

(assert (=> b!1758747 m!2173805))

(assert (=> b!1758748 m!2173749))

(assert (=> b!1758748 m!2173749))

(assert (=> b!1758748 m!2174129))

(assert (=> b!1758443 d!537122))

(declare-fun b!1758749 () Bool)

(declare-fun e!1125632 () Bool)

(declare-fun e!1125631 () Bool)

(assert (=> b!1758749 (= e!1125632 e!1125631)))

(declare-fun res!791477 () Bool)

(assert (=> b!1758749 (=> (not res!791477) (not e!1125631))))

(assert (=> b!1758749 (= res!791477 (not ((_ is Nil!19358) lt!679488)))))

(declare-fun b!1758752 () Bool)

(declare-fun e!1125630 () Bool)

(assert (=> b!1758752 (= e!1125630 (>= (size!15379 lt!679488) (size!15379 lt!679472)))))

(declare-fun b!1758750 () Bool)

(declare-fun res!791475 () Bool)

(assert (=> b!1758750 (=> (not res!791475) (not e!1125631))))

(assert (=> b!1758750 (= res!791475 (= (head!4068 lt!679472) (head!4068 lt!679488)))))

(declare-fun d!537126 () Bool)

(assert (=> d!537126 e!1125630))

(declare-fun res!791474 () Bool)

(assert (=> d!537126 (=> res!791474 e!1125630)))

(declare-fun lt!679629 () Bool)

(assert (=> d!537126 (= res!791474 (not lt!679629))))

(assert (=> d!537126 (= lt!679629 e!1125632)))

(declare-fun res!791476 () Bool)

(assert (=> d!537126 (=> res!791476 e!1125632)))

(assert (=> d!537126 (= res!791476 ((_ is Nil!19358) lt!679472))))

(assert (=> d!537126 (= (isPrefix!1699 lt!679472 lt!679488) lt!679629)))

(declare-fun b!1758751 () Bool)

(assert (=> b!1758751 (= e!1125631 (isPrefix!1699 (tail!2629 lt!679472) (tail!2629 lt!679488)))))

(assert (= (and d!537126 (not res!791476)) b!1758749))

(assert (= (and b!1758749 res!791477) b!1758750))

(assert (= (and b!1758750 res!791475) b!1758751))

(assert (= (and d!537126 (not res!791474)) b!1758752))

(declare-fun m!2174133 () Bool)

(assert (=> b!1758752 m!2174133))

(assert (=> b!1758752 m!2173797))

(assert (=> b!1758750 m!2173903))

(declare-fun m!2174135 () Bool)

(assert (=> b!1758750 m!2174135))

(assert (=> b!1758751 m!2173907))

(declare-fun m!2174137 () Bool)

(assert (=> b!1758751 m!2174137))

(assert (=> b!1758751 m!2173907))

(assert (=> b!1758751 m!2174137))

(declare-fun m!2174139 () Bool)

(assert (=> b!1758751 m!2174139))

(assert (=> b!1758443 d!537126))

(declare-fun b!1758883 () Bool)

(declare-fun e!1125702 () Unit!33527)

(declare-fun Unit!33533 () Unit!33527)

(assert (=> b!1758883 (= e!1125702 Unit!33533)))

(declare-fun lt!679712 () List!19428)

(assert (=> b!1758883 (= lt!679712 (++!5283 lt!679477 suffix!1421))))

(declare-fun lt!679701 () Token!6484)

(declare-fun lt!679713 () Unit!33527)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!315 (LexerInterface!3088 Rule!6718 List!19429 List!19428) Unit!33527)

(assert (=> b!1758883 (= lt!679713 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!315 thiss!24550 (rule!5473 lt!679701) rules!3447 lt!679712))))

(assert (=> b!1758883 (isEmpty!12215 (maxPrefixOneRule!1011 thiss!24550 (rule!5473 lt!679701) lt!679712))))

(declare-fun lt!679702 () Unit!33527)

(assert (=> b!1758883 (= lt!679702 lt!679713)))

(declare-fun lt!679703 () List!19428)

(assert (=> b!1758883 (= lt!679703 (list!7849 (charsOf!2108 lt!679701)))))

(declare-fun lt!679705 () Unit!33527)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!311 (LexerInterface!3088 Rule!6718 List!19428 List!19428) Unit!33527)

(assert (=> b!1758883 (= lt!679705 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!311 thiss!24550 (rule!5473 lt!679701) lt!679703 (++!5283 lt!679477 suffix!1421)))))

(assert (=> b!1758883 (not (matchR!2260 (regex!3459 (rule!5473 lt!679701)) lt!679703))))

(declare-fun lt!679700 () Unit!33527)

(assert (=> b!1758883 (= lt!679700 lt!679705)))

(assert (=> b!1758883 false))

(declare-fun e!1125703 () Bool)

(declare-fun b!1758882 () Bool)

(assert (=> b!1758882 (= e!1125703 (= (rule!5473 lt!679701) (get!5888 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 lt!679701))))))))

(declare-fun d!537130 () Bool)

(assert (=> d!537130 (isDefined!3284 (maxPrefix!1642 thiss!24550 rules!3447 (++!5283 lt!679477 suffix!1421)))))

(declare-fun lt!679699 () Unit!33527)

(assert (=> d!537130 (= lt!679699 e!1125702)))

(declare-fun c!286602 () Bool)

(assert (=> d!537130 (= c!286602 (isEmpty!12215 (maxPrefix!1642 thiss!24550 rules!3447 (++!5283 lt!679477 suffix!1421))))))

(declare-fun lt!679707 () Unit!33527)

(declare-fun lt!679715 () Unit!33527)

(assert (=> d!537130 (= lt!679707 lt!679715)))

(assert (=> d!537130 e!1125703))

(declare-fun res!791542 () Bool)

(assert (=> d!537130 (=> (not res!791542) (not e!1125703))))

(assert (=> d!537130 (= res!791542 (isDefined!3283 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 lt!679701)))))))

(assert (=> d!537130 (= lt!679715 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!507 thiss!24550 rules!3447 lt!679477 lt!679701))))

(declare-fun lt!679706 () Unit!33527)

(declare-fun lt!679704 () Unit!33527)

(assert (=> d!537130 (= lt!679706 lt!679704)))

(declare-fun lt!679711 () List!19428)

(assert (=> d!537130 (isPrefix!1699 lt!679711 (++!5283 lt!679477 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!307 (List!19428 List!19428 List!19428) Unit!33527)

(assert (=> d!537130 (= lt!679704 (lemmaPrefixStaysPrefixWhenAddingToSuffix!307 lt!679711 lt!679477 suffix!1421))))

(assert (=> d!537130 (= lt!679711 (list!7849 (charsOf!2108 lt!679701)))))

(declare-fun lt!679708 () Unit!33527)

(declare-fun lt!679709 () Unit!33527)

(assert (=> d!537130 (= lt!679708 lt!679709)))

(declare-fun lt!679714 () List!19428)

(declare-fun lt!679710 () List!19428)

(assert (=> d!537130 (isPrefix!1699 lt!679714 (++!5283 lt!679714 lt!679710))))

(assert (=> d!537130 (= lt!679709 (lemmaConcatTwoListThenFirstIsPrefix!1208 lt!679714 lt!679710))))

(assert (=> d!537130 (= lt!679710 (_2!10885 (get!5887 (maxPrefix!1642 thiss!24550 rules!3447 lt!679477))))))

(assert (=> d!537130 (= lt!679714 (list!7849 (charsOf!2108 lt!679701)))))

(declare-datatypes ((List!19431 0))(
  ( (Nil!19361) (Cons!19361 (h!24762 Token!6484) (t!163882 List!19431)) )
))
(declare-fun head!4070 (List!19431) Token!6484)

(declare-datatypes ((IArray!12887 0))(
  ( (IArray!12888 (innerList!6501 List!19431)) )
))
(declare-datatypes ((Conc!6441 0))(
  ( (Node!6441 (left!15500 Conc!6441) (right!15830 Conc!6441) (csize!13112 Int) (cheight!6652 Int)) (Leaf!9391 (xs!9317 IArray!12887) (csize!13113 Int)) (Empty!6441) )
))
(declare-datatypes ((BalanceConc!12826 0))(
  ( (BalanceConc!12827 (c!286643 Conc!6441)) )
))
(declare-fun list!7853 (BalanceConc!12826) List!19431)

(declare-datatypes ((tuple2!18972 0))(
  ( (tuple2!18973 (_1!10888 BalanceConc!12826) (_2!10888 BalanceConc!12822)) )
))
(declare-fun lex!1446 (LexerInterface!3088 List!19429 BalanceConc!12822) tuple2!18972)

(assert (=> d!537130 (= lt!679701 (head!4070 (list!7853 (_1!10888 (lex!1446 thiss!24550 rules!3447 (seqFromList!2428 lt!679477))))))))

(assert (=> d!537130 (not (isEmpty!12210 rules!3447))))

(assert (=> d!537130 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!610 thiss!24550 rules!3447 lt!679477 suffix!1421) lt!679699)))

(declare-fun b!1758884 () Bool)

(declare-fun Unit!33535 () Unit!33527)

(assert (=> b!1758884 (= e!1125702 Unit!33535)))

(declare-fun b!1758881 () Bool)

(declare-fun res!791541 () Bool)

(assert (=> b!1758881 (=> (not res!791541) (not e!1125703))))

(assert (=> b!1758881 (= res!791541 (matchR!2260 (regex!3459 (get!5888 (getRuleFromTag!507 thiss!24550 rules!3447 (tag!3821 (rule!5473 lt!679701))))) (list!7849 (charsOf!2108 lt!679701))))))

(assert (= (and d!537130 res!791542) b!1758881))

(assert (= (and b!1758881 res!791541) b!1758882))

(assert (= (and d!537130 c!286602) b!1758883))

(assert (= (and d!537130 (not c!286602)) b!1758884))

(declare-fun m!2174249 () Bool)

(assert (=> b!1758883 m!2174249))

(declare-fun m!2174251 () Bool)

(assert (=> b!1758883 m!2174251))

(declare-fun m!2174253 () Bool)

(assert (=> b!1758883 m!2174253))

(declare-fun m!2174255 () Bool)

(assert (=> b!1758883 m!2174255))

(assert (=> b!1758883 m!2174249))

(assert (=> b!1758883 m!2174255))

(declare-fun m!2174259 () Bool)

(assert (=> b!1758883 m!2174259))

(declare-fun m!2174263 () Bool)

(assert (=> b!1758883 m!2174263))

(assert (=> b!1758883 m!2173745))

(declare-fun m!2174267 () Bool)

(assert (=> b!1758883 m!2174267))

(assert (=> b!1758883 m!2173745))

(declare-fun m!2174269 () Bool)

(assert (=> b!1758882 m!2174269))

(assert (=> b!1758882 m!2174269))

(declare-fun m!2174271 () Bool)

(assert (=> b!1758882 m!2174271))

(assert (=> d!537130 m!2174249))

(assert (=> d!537130 m!2174251))

(assert (=> d!537130 m!2173745))

(declare-fun m!2174273 () Bool)

(assert (=> d!537130 m!2174273))

(declare-fun m!2174275 () Bool)

(assert (=> d!537130 m!2174275))

(assert (=> d!537130 m!2173745))

(declare-fun m!2174277 () Bool)

(assert (=> d!537130 m!2174277))

(assert (=> d!537130 m!2173693))

(assert (=> d!537130 m!2174269))

(declare-fun m!2174279 () Bool)

(assert (=> d!537130 m!2174279))

(assert (=> d!537130 m!2174249))

(declare-fun m!2174281 () Bool)

(assert (=> d!537130 m!2174281))

(declare-fun m!2174283 () Bool)

(assert (=> d!537130 m!2174283))

(declare-fun m!2174285 () Bool)

(assert (=> d!537130 m!2174285))

(assert (=> d!537130 m!2174273))

(declare-fun m!2174287 () Bool)

(assert (=> d!537130 m!2174287))

(declare-fun m!2174289 () Bool)

(assert (=> d!537130 m!2174289))

(declare-fun m!2174293 () Bool)

(assert (=> d!537130 m!2174293))

(assert (=> d!537130 m!2174283))

(assert (=> d!537130 m!2174289))

(assert (=> d!537130 m!2173745))

(declare-fun m!2174295 () Bool)

(assert (=> d!537130 m!2174295))

(assert (=> d!537130 m!2174269))

(assert (=> d!537130 m!2173779))

(declare-fun m!2174297 () Bool)

(assert (=> d!537130 m!2174297))

(assert (=> d!537130 m!2174273))

(declare-fun m!2174299 () Bool)

(assert (=> d!537130 m!2174299))

(declare-fun m!2174301 () Bool)

(assert (=> d!537130 m!2174301))

(assert (=> d!537130 m!2173779))

(assert (=> d!537130 m!2174281))

(declare-fun m!2174303 () Bool)

(assert (=> d!537130 m!2174303))

(assert (=> b!1758881 m!2174249))

(assert (=> b!1758881 m!2174251))

(assert (=> b!1758881 m!2174269))

(assert (=> b!1758881 m!2174251))

(declare-fun m!2174305 () Bool)

(assert (=> b!1758881 m!2174305))

(assert (=> b!1758881 m!2174249))

(assert (=> b!1758881 m!2174269))

(assert (=> b!1758881 m!2174271))

(assert (=> b!1758443 d!537130))

(declare-fun d!537166 () Bool)

(assert (=> d!537166 (= (inv!25138 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))) (isBalanced!2010 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))))

(declare-fun bs!403940 () Bool)

(assert (= bs!403940 d!537166))

(declare-fun m!2174307 () Bool)

(assert (=> bs!403940 m!2174307))

(assert (=> tb!105795 d!537166))

(declare-fun d!537168 () Bool)

(assert (=> d!537168 (= (isEmpty!12211 suffix!1421) ((_ is Nil!19358) suffix!1421))))

(assert (=> b!1758464 d!537168))

(declare-fun b!1758885 () Bool)

(declare-fun e!1125705 () Bool)

(declare-fun e!1125710 () Bool)

(assert (=> b!1758885 (= e!1125705 e!1125710)))

(declare-fun res!791549 () Bool)

(assert (=> b!1758885 (=> (not res!791549) (not e!1125710))))

(declare-fun lt!679716 () Bool)

(assert (=> b!1758885 (= res!791549 (not lt!679716))))

(declare-fun b!1758886 () Bool)

(declare-fun res!791545 () Bool)

(assert (=> b!1758886 (=> res!791545 e!1125705)))

(assert (=> b!1758886 (= res!791545 (not ((_ is ElementMatch!4787) (regex!3459 rule!422))))))

(declare-fun e!1125708 () Bool)

(assert (=> b!1758886 (= e!1125708 e!1125705)))

(declare-fun b!1758887 () Bool)

(declare-fun e!1125707 () Bool)

(assert (=> b!1758887 (= e!1125707 (not (= (head!4068 lt!679477) (c!286524 (regex!3459 rule!422)))))))

(declare-fun b!1758888 () Bool)

(declare-fun e!1125711 () Bool)

(assert (=> b!1758888 (= e!1125711 (= (head!4068 lt!679477) (c!286524 (regex!3459 rule!422))))))

(declare-fun b!1758889 () Bool)

(declare-fun res!791543 () Bool)

(assert (=> b!1758889 (=> res!791543 e!1125705)))

(assert (=> b!1758889 (= res!791543 e!1125711)))

(declare-fun res!791544 () Bool)

(assert (=> b!1758889 (=> (not res!791544) (not e!1125711))))

(assert (=> b!1758889 (= res!791544 lt!679716)))

(declare-fun b!1758890 () Bool)

(assert (=> b!1758890 (= e!1125708 (not lt!679716))))

(declare-fun d!537170 () Bool)

(declare-fun e!1125709 () Bool)

(assert (=> d!537170 e!1125709))

(declare-fun c!286605 () Bool)

(assert (=> d!537170 (= c!286605 ((_ is EmptyExpr!4787) (regex!3459 rule!422)))))

(declare-fun e!1125706 () Bool)

(assert (=> d!537170 (= lt!679716 e!1125706)))

(declare-fun c!286604 () Bool)

(assert (=> d!537170 (= c!286604 (isEmpty!12211 lt!679477))))

(assert (=> d!537170 (validRegex!1930 (regex!3459 rule!422))))

(assert (=> d!537170 (= (matchR!2260 (regex!3459 rule!422) lt!679477) lt!679716)))

(declare-fun b!1758891 () Bool)

(assert (=> b!1758891 (= e!1125710 e!1125707)))

(declare-fun res!791547 () Bool)

(assert (=> b!1758891 (=> res!791547 e!1125707)))

(declare-fun call!110605 () Bool)

(assert (=> b!1758891 (= res!791547 call!110605)))

(declare-fun b!1758892 () Bool)

(declare-fun res!791550 () Bool)

(assert (=> b!1758892 (=> res!791550 e!1125707)))

(assert (=> b!1758892 (= res!791550 (not (isEmpty!12211 (tail!2629 lt!679477))))))

(declare-fun b!1758893 () Bool)

(declare-fun res!791548 () Bool)

(assert (=> b!1758893 (=> (not res!791548) (not e!1125711))))

(assert (=> b!1758893 (= res!791548 (isEmpty!12211 (tail!2629 lt!679477)))))

(declare-fun b!1758894 () Bool)

(assert (=> b!1758894 (= e!1125709 (= lt!679716 call!110605))))

(declare-fun b!1758895 () Bool)

(assert (=> b!1758895 (= e!1125706 (nullable!1456 (regex!3459 rule!422)))))

(declare-fun bm!110600 () Bool)

(assert (=> bm!110600 (= call!110605 (isEmpty!12211 lt!679477))))

(declare-fun b!1758896 () Bool)

(assert (=> b!1758896 (= e!1125709 e!1125708)))

(declare-fun c!286603 () Bool)

(assert (=> b!1758896 (= c!286603 ((_ is EmptyLang!4787) (regex!3459 rule!422)))))

(declare-fun b!1758897 () Bool)

(declare-fun res!791546 () Bool)

(assert (=> b!1758897 (=> (not res!791546) (not e!1125711))))

(assert (=> b!1758897 (= res!791546 (not call!110605))))

(declare-fun b!1758898 () Bool)

(assert (=> b!1758898 (= e!1125706 (matchR!2260 (derivativeStep!1225 (regex!3459 rule!422) (head!4068 lt!679477)) (tail!2629 lt!679477)))))

(assert (= (and d!537170 c!286604) b!1758895))

(assert (= (and d!537170 (not c!286604)) b!1758898))

(assert (= (and d!537170 c!286605) b!1758894))

(assert (= (and d!537170 (not c!286605)) b!1758896))

(assert (= (and b!1758896 c!286603) b!1758890))

(assert (= (and b!1758896 (not c!286603)) b!1758886))

(assert (= (and b!1758886 (not res!791545)) b!1758889))

(assert (= (and b!1758889 res!791544) b!1758897))

(assert (= (and b!1758897 res!791546) b!1758893))

(assert (= (and b!1758893 res!791548) b!1758888))

(assert (= (and b!1758889 (not res!791543)) b!1758885))

(assert (= (and b!1758885 res!791549) b!1758891))

(assert (= (and b!1758891 (not res!791547)) b!1758892))

(assert (= (and b!1758892 (not res!791550)) b!1758887))

(assert (= (or b!1758894 b!1758897 b!1758891) bm!110600))

(assert (=> b!1758898 m!2173923))

(assert (=> b!1758898 m!2173923))

(declare-fun m!2174311 () Bool)

(assert (=> b!1758898 m!2174311))

(assert (=> b!1758898 m!2173927))

(assert (=> b!1758898 m!2174311))

(assert (=> b!1758898 m!2173927))

(declare-fun m!2174313 () Bool)

(assert (=> b!1758898 m!2174313))

(declare-fun m!2174315 () Bool)

(assert (=> bm!110600 m!2174315))

(assert (=> b!1758892 m!2173927))

(assert (=> b!1758892 m!2173927))

(declare-fun m!2174317 () Bool)

(assert (=> b!1758892 m!2174317))

(assert (=> b!1758893 m!2173927))

(assert (=> b!1758893 m!2173927))

(assert (=> b!1758893 m!2174317))

(declare-fun m!2174319 () Bool)

(assert (=> b!1758895 m!2174319))

(assert (=> b!1758887 m!2173923))

(assert (=> d!537170 m!2174315))

(declare-fun m!2174321 () Bool)

(assert (=> d!537170 m!2174321))

(assert (=> b!1758888 m!2173923))

(assert (=> b!1758442 d!537170))

(declare-fun d!537174 () Bool)

(declare-fun res!791557 () Bool)

(declare-fun e!1125716 () Bool)

(assert (=> d!537174 (=> (not res!791557) (not e!1125716))))

(assert (=> d!537174 (= res!791557 (validRegex!1930 (regex!3459 rule!422)))))

(assert (=> d!537174 (= (ruleValid!957 thiss!24550 rule!422) e!1125716)))

(declare-fun b!1758905 () Bool)

(declare-fun res!791558 () Bool)

(assert (=> b!1758905 (=> (not res!791558) (not e!1125716))))

(assert (=> b!1758905 (= res!791558 (not (nullable!1456 (regex!3459 rule!422))))))

(declare-fun b!1758906 () Bool)

(assert (=> b!1758906 (= e!1125716 (not (= (tag!3821 rule!422) (String!22078 ""))))))

(assert (= (and d!537174 res!791557) b!1758905))

(assert (= (and b!1758905 res!791558) b!1758906))

(assert (=> d!537174 m!2174321))

(assert (=> b!1758905 m!2174319))

(assert (=> b!1758442 d!537174))

(declare-fun d!537178 () Bool)

(assert (=> d!537178 (ruleValid!957 thiss!24550 rule!422)))

(declare-fun lt!679719 () Unit!33527)

(declare-fun choose!10881 (LexerInterface!3088 Rule!6718 List!19429) Unit!33527)

(assert (=> d!537178 (= lt!679719 (choose!10881 thiss!24550 rule!422 rules!3447))))

(assert (=> d!537178 (contains!3487 rules!3447 rule!422)))

(assert (=> d!537178 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!480 thiss!24550 rule!422 rules!3447) lt!679719)))

(declare-fun bs!403942 () Bool)

(assert (= bs!403942 d!537178))

(assert (=> bs!403942 m!2173773))

(declare-fun m!2174327 () Bool)

(assert (=> bs!403942 m!2174327))

(assert (=> bs!403942 m!2173737))

(assert (=> b!1758442 d!537178))

(declare-fun d!537184 () Bool)

(assert (=> d!537184 (= (inv!25130 (tag!3821 (h!24760 rules!3447))) (= (mod (str.len (value!108253 (tag!3821 (h!24760 rules!3447)))) 2) 0))))

(assert (=> b!1758463 d!537184))

(declare-fun d!537186 () Bool)

(declare-fun res!791560 () Bool)

(declare-fun e!1125718 () Bool)

(assert (=> d!537186 (=> (not res!791560) (not e!1125718))))

(assert (=> d!537186 (= res!791560 (semiInverseModEq!1372 (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (h!24760 rules!3447)))))))

(assert (=> d!537186 (= (inv!25135 (transformation!3459 (h!24760 rules!3447))) e!1125718)))

(declare-fun b!1758908 () Bool)

(assert (=> b!1758908 (= e!1125718 (equivClasses!1313 (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (h!24760 rules!3447)))))))

(assert (= (and d!537186 res!791560) b!1758908))

(declare-fun m!2174329 () Bool)

(assert (=> d!537186 m!2174329))

(declare-fun m!2174331 () Bool)

(assert (=> b!1758908 m!2174331))

(assert (=> b!1758463 d!537186))

(declare-fun d!537188 () Bool)

(assert (=> d!537188 (= (isDefined!3284 lt!679475) (not (isEmpty!12215 lt!679475)))))

(declare-fun bs!403943 () Bool)

(assert (= bs!403943 d!537188))

(declare-fun m!2174333 () Bool)

(assert (=> bs!403943 m!2174333))

(assert (=> b!1758446 d!537188))

(declare-fun b!1758909 () Bool)

(declare-fun e!1125721 () Option!3941)

(declare-fun lt!679720 () Option!3941)

(declare-fun lt!679721 () Option!3941)

(assert (=> b!1758909 (= e!1125721 (ite (and ((_ is None!3940) lt!679720) ((_ is None!3940) lt!679721)) None!3940 (ite ((_ is None!3940) lt!679721) lt!679720 (ite ((_ is None!3940) lt!679720) lt!679721 (ite (>= (size!15377 (_1!10885 (v!25397 lt!679720))) (size!15377 (_1!10885 (v!25397 lt!679721)))) lt!679720 lt!679721)))))))

(declare-fun call!110606 () Option!3941)

(assert (=> b!1758909 (= lt!679720 call!110606)))

(assert (=> b!1758909 (= lt!679721 (maxPrefix!1642 thiss!24550 (t!163820 rules!3447) lt!679477))))

(declare-fun b!1758910 () Bool)

(declare-fun res!791562 () Bool)

(declare-fun e!1125719 () Bool)

(assert (=> b!1758910 (=> (not res!791562) (not e!1125719))))

(declare-fun lt!679723 () Option!3941)

(assert (=> b!1758910 (= res!791562 (matchR!2260 (regex!3459 (rule!5473 (_1!10885 (get!5887 lt!679723)))) (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679723))))))))

(declare-fun b!1758911 () Bool)

(declare-fun e!1125720 () Bool)

(assert (=> b!1758911 (= e!1125720 e!1125719)))

(declare-fun res!791566 () Bool)

(assert (=> b!1758911 (=> (not res!791566) (not e!1125719))))

(assert (=> b!1758911 (= res!791566 (isDefined!3284 lt!679723))))

(declare-fun b!1758912 () Bool)

(assert (=> b!1758912 (= e!1125719 (contains!3487 rules!3447 (rule!5473 (_1!10885 (get!5887 lt!679723)))))))

(declare-fun b!1758913 () Bool)

(declare-fun res!791565 () Bool)

(assert (=> b!1758913 (=> (not res!791565) (not e!1125719))))

(assert (=> b!1758913 (= res!791565 (= (value!108254 (_1!10885 (get!5887 lt!679723))) (apply!5259 (transformation!3459 (rule!5473 (_1!10885 (get!5887 lt!679723)))) (seqFromList!2428 (originalCharacters!4273 (_1!10885 (get!5887 lt!679723)))))))))

(declare-fun b!1758915 () Bool)

(declare-fun res!791564 () Bool)

(assert (=> b!1758915 (=> (not res!791564) (not e!1125719))))

(assert (=> b!1758915 (= res!791564 (< (size!15379 (_2!10885 (get!5887 lt!679723))) (size!15379 lt!679477)))))

(declare-fun bm!110601 () Bool)

(assert (=> bm!110601 (= call!110606 (maxPrefixOneRule!1011 thiss!24550 (h!24760 rules!3447) lt!679477))))

(declare-fun b!1758916 () Bool)

(declare-fun res!791563 () Bool)

(assert (=> b!1758916 (=> (not res!791563) (not e!1125719))))

(assert (=> b!1758916 (= res!791563 (= (++!5283 (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679723)))) (_2!10885 (get!5887 lt!679723))) lt!679477))))

(declare-fun b!1758917 () Bool)

(declare-fun res!791567 () Bool)

(assert (=> b!1758917 (=> (not res!791567) (not e!1125719))))

(assert (=> b!1758917 (= res!791567 (= (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679723)))) (originalCharacters!4273 (_1!10885 (get!5887 lt!679723)))))))

(declare-fun b!1758914 () Bool)

(assert (=> b!1758914 (= e!1125721 call!110606)))

(declare-fun d!537190 () Bool)

(assert (=> d!537190 e!1125720))

(declare-fun res!791561 () Bool)

(assert (=> d!537190 (=> res!791561 e!1125720)))

(assert (=> d!537190 (= res!791561 (isEmpty!12215 lt!679723))))

(assert (=> d!537190 (= lt!679723 e!1125721)))

(declare-fun c!286606 () Bool)

(assert (=> d!537190 (= c!286606 (and ((_ is Cons!19359) rules!3447) ((_ is Nil!19359) (t!163820 rules!3447))))))

(declare-fun lt!679724 () Unit!33527)

(declare-fun lt!679722 () Unit!33527)

(assert (=> d!537190 (= lt!679724 lt!679722)))

(assert (=> d!537190 (isPrefix!1699 lt!679477 lt!679477)))

(assert (=> d!537190 (= lt!679722 (lemmaIsPrefixRefl!1124 lt!679477 lt!679477))))

(assert (=> d!537190 (rulesValidInductive!1162 thiss!24550 rules!3447)))

(assert (=> d!537190 (= (maxPrefix!1642 thiss!24550 rules!3447 lt!679477) lt!679723)))

(assert (= (and d!537190 c!286606) b!1758914))

(assert (= (and d!537190 (not c!286606)) b!1758909))

(assert (= (or b!1758914 b!1758909) bm!110601))

(assert (= (and d!537190 (not res!791561)) b!1758911))

(assert (= (and b!1758911 res!791566) b!1758917))

(assert (= (and b!1758917 res!791567) b!1758915))

(assert (= (and b!1758915 res!791564) b!1758916))

(assert (= (and b!1758916 res!791563) b!1758913))

(assert (= (and b!1758913 res!791565) b!1758910))

(assert (= (and b!1758910 res!791562) b!1758912))

(declare-fun m!2174335 () Bool)

(assert (=> bm!110601 m!2174335))

(declare-fun m!2174337 () Bool)

(assert (=> b!1758915 m!2174337))

(declare-fun m!2174339 () Bool)

(assert (=> b!1758915 m!2174339))

(assert (=> b!1758915 m!2173921))

(assert (=> b!1758917 m!2174337))

(declare-fun m!2174341 () Bool)

(assert (=> b!1758917 m!2174341))

(assert (=> b!1758917 m!2174341))

(declare-fun m!2174343 () Bool)

(assert (=> b!1758917 m!2174343))

(assert (=> b!1758910 m!2174337))

(assert (=> b!1758910 m!2174341))

(assert (=> b!1758910 m!2174341))

(assert (=> b!1758910 m!2174343))

(assert (=> b!1758910 m!2174343))

(declare-fun m!2174345 () Bool)

(assert (=> b!1758910 m!2174345))

(declare-fun m!2174347 () Bool)

(assert (=> b!1758911 m!2174347))

(assert (=> b!1758913 m!2174337))

(declare-fun m!2174349 () Bool)

(assert (=> b!1758913 m!2174349))

(assert (=> b!1758913 m!2174349))

(declare-fun m!2174351 () Bool)

(assert (=> b!1758913 m!2174351))

(assert (=> b!1758916 m!2174337))

(assert (=> b!1758916 m!2174341))

(assert (=> b!1758916 m!2174341))

(assert (=> b!1758916 m!2174343))

(assert (=> b!1758916 m!2174343))

(declare-fun m!2174357 () Bool)

(assert (=> b!1758916 m!2174357))

(assert (=> b!1758912 m!2174337))

(declare-fun m!2174359 () Bool)

(assert (=> b!1758912 m!2174359))

(declare-fun m!2174361 () Bool)

(assert (=> d!537190 m!2174361))

(declare-fun m!2174363 () Bool)

(assert (=> d!537190 m!2174363))

(declare-fun m!2174365 () Bool)

(assert (=> d!537190 m!2174365))

(assert (=> d!537190 m!2174081))

(declare-fun m!2174367 () Bool)

(assert (=> b!1758909 m!2174367))

(assert (=> b!1758446 d!537190))

(declare-fun d!537194 () Bool)

(assert (=> d!537194 (= (list!7849 (charsOf!2108 token!523)) (list!7852 (c!286525 (charsOf!2108 token!523))))))

(declare-fun bs!403944 () Bool)

(assert (= bs!403944 d!537194))

(declare-fun m!2174369 () Bool)

(assert (=> bs!403944 m!2174369))

(assert (=> b!1758446 d!537194))

(declare-fun d!537196 () Bool)

(declare-fun lt!679726 () BalanceConc!12822)

(assert (=> d!537196 (= (list!7849 lt!679726) (originalCharacters!4273 token!523))))

(assert (=> d!537196 (= lt!679726 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 token!523))) (value!108254 token!523)))))

(assert (=> d!537196 (= (charsOf!2108 token!523) lt!679726)))

(declare-fun b_lambda!56827 () Bool)

(assert (=> (not b_lambda!56827) (not d!537196)))

(assert (=> d!537196 t!163822))

(declare-fun b_and!132443 () Bool)

(assert (= b_and!132407 (and (=> t!163822 result!127308) b_and!132443)))

(assert (=> d!537196 t!163824))

(declare-fun b_and!132445 () Bool)

(assert (= b_and!132409 (and (=> t!163824 result!127310) b_and!132445)))

(assert (=> d!537196 t!163826))

(declare-fun b_and!132447 () Bool)

(assert (= b_and!132411 (and (=> t!163826 result!127312) b_and!132447)))

(declare-fun m!2174371 () Bool)

(assert (=> d!537196 m!2174371))

(assert (=> d!537196 m!2173881))

(assert (=> b!1758446 d!537196))

(declare-fun b!1758935 () Bool)

(declare-fun e!1125732 () Bool)

(assert (=> b!1758935 (= e!1125732 (inv!17 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(declare-fun b!1758936 () Bool)

(declare-fun e!1125733 () Bool)

(assert (=> b!1758936 (= e!1125733 (inv!15 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(declare-fun d!537198 () Bool)

(declare-fun c!286611 () Bool)

(assert (=> d!537198 (= c!286611 ((_ is IntegerValue!10647) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(declare-fun e!1125734 () Bool)

(assert (=> d!537198 (= (inv!21 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)) e!1125734)))

(declare-fun b!1758937 () Bool)

(declare-fun res!791579 () Bool)

(assert (=> b!1758937 (=> res!791579 e!1125733)))

(assert (=> b!1758937 (= res!791579 (not ((_ is IntegerValue!10649) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))))

(assert (=> b!1758937 (= e!1125732 e!1125733)))

(declare-fun b!1758938 () Bool)

(assert (=> b!1758938 (= e!1125734 e!1125732)))

(declare-fun c!286610 () Bool)

(assert (=> b!1758938 (= c!286610 ((_ is IntegerValue!10648) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(declare-fun b!1758939 () Bool)

(assert (=> b!1758939 (= e!1125734 (inv!16 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))

(assert (= (and d!537198 c!286611) b!1758939))

(assert (= (and d!537198 (not c!286611)) b!1758938))

(assert (= (and b!1758938 c!286610) b!1758935))

(assert (= (and b!1758938 (not c!286610)) b!1758937))

(assert (= (and b!1758937 (not res!791579)) b!1758936))

(declare-fun m!2174373 () Bool)

(assert (=> b!1758935 m!2174373))

(declare-fun m!2174375 () Bool)

(assert (=> b!1758936 m!2174375))

(declare-fun m!2174377 () Bool)

(assert (=> b!1758939 m!2174377))

(assert (=> tb!105801 d!537198))

(declare-fun d!537200 () Bool)

(declare-fun c!286614 () Bool)

(assert (=> d!537200 (= c!286614 (isEmpty!12211 (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358))))))

(declare-fun e!1125739 () Bool)

(assert (=> d!537200 (= (prefixMatch!670 (rulesRegex!815 thiss!24550 rules!3447) (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358))) e!1125739)))

(declare-fun b!1758948 () Bool)

(declare-fun lostCause!568 (Regex!4787) Bool)

(assert (=> b!1758948 (= e!1125739 (not (lostCause!568 (rulesRegex!815 thiss!24550 rules!3447))))))

(declare-fun b!1758949 () Bool)

(assert (=> b!1758949 (= e!1125739 (prefixMatch!670 (derivativeStep!1225 (rulesRegex!815 thiss!24550 rules!3447) (head!4068 (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358)))) (tail!2629 (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358)))))))

(assert (= (and d!537200 c!286614) b!1758948))

(assert (= (and d!537200 (not c!286614)) b!1758949))

(assert (=> d!537200 m!2173789))

(declare-fun m!2174391 () Bool)

(assert (=> d!537200 m!2174391))

(assert (=> b!1758948 m!2173785))

(declare-fun m!2174393 () Bool)

(assert (=> b!1758948 m!2174393))

(assert (=> b!1758949 m!2173789))

(declare-fun m!2174395 () Bool)

(assert (=> b!1758949 m!2174395))

(assert (=> b!1758949 m!2173785))

(assert (=> b!1758949 m!2174395))

(declare-fun m!2174397 () Bool)

(assert (=> b!1758949 m!2174397))

(assert (=> b!1758949 m!2173789))

(declare-fun m!2174399 () Bool)

(assert (=> b!1758949 m!2174399))

(assert (=> b!1758949 m!2174397))

(assert (=> b!1758949 m!2174399))

(declare-fun m!2174401 () Bool)

(assert (=> b!1758949 m!2174401))

(assert (=> b!1758467 d!537200))

(declare-fun d!537206 () Bool)

(declare-fun lt!679731 () Unit!33527)

(declare-fun lemma!381 (List!19429 LexerInterface!3088 List!19429) Unit!33527)

(assert (=> d!537206 (= lt!679731 (lemma!381 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70090 () Int)

(declare-datatypes ((List!19434 0))(
  ( (Nil!19364) (Cons!19364 (h!24765 Regex!4787) (t!163885 List!19434)) )
))
(declare-fun generalisedUnion!389 (List!19434) Regex!4787)

(declare-fun map!3990 (List!19429 Int) List!19434)

(assert (=> d!537206 (= (rulesRegex!815 thiss!24550 rules!3447) (generalisedUnion!389 (map!3990 rules!3447 lambda!70090)))))

(declare-fun bs!403945 () Bool)

(assert (= bs!403945 d!537206))

(declare-fun m!2174403 () Bool)

(assert (=> bs!403945 m!2174403))

(declare-fun m!2174405 () Bool)

(assert (=> bs!403945 m!2174405))

(assert (=> bs!403945 m!2174405))

(declare-fun m!2174409 () Bool)

(assert (=> bs!403945 m!2174409))

(assert (=> b!1758467 d!537206))

(declare-fun b!1758953 () Bool)

(declare-fun e!1125742 () List!19428)

(assert (=> b!1758953 (= e!1125742 (Cons!19358 (h!24759 lt!679477) (++!5283 (t!163819 lt!679477) (Cons!19358 (head!4068 suffix!1421) Nil!19358))))))

(declare-fun d!537208 () Bool)

(declare-fun e!1125741 () Bool)

(assert (=> d!537208 e!1125741))

(declare-fun res!791586 () Bool)

(assert (=> d!537208 (=> (not res!791586) (not e!1125741))))

(declare-fun lt!679733 () List!19428)

(assert (=> d!537208 (= res!791586 (= (content!2791 lt!679733) ((_ map or) (content!2791 lt!679477) (content!2791 (Cons!19358 (head!4068 suffix!1421) Nil!19358)))))))

(assert (=> d!537208 (= lt!679733 e!1125742)))

(declare-fun c!286615 () Bool)

(assert (=> d!537208 (= c!286615 ((_ is Nil!19358) lt!679477))))

(assert (=> d!537208 (= (++!5283 lt!679477 (Cons!19358 (head!4068 suffix!1421) Nil!19358)) lt!679733)))

(declare-fun b!1758954 () Bool)

(declare-fun res!791587 () Bool)

(assert (=> b!1758954 (=> (not res!791587) (not e!1125741))))

(assert (=> b!1758954 (= res!791587 (= (size!15379 lt!679733) (+ (size!15379 lt!679477) (size!15379 (Cons!19358 (head!4068 suffix!1421) Nil!19358)))))))

(declare-fun b!1758955 () Bool)

(assert (=> b!1758955 (= e!1125741 (or (not (= (Cons!19358 (head!4068 suffix!1421) Nil!19358) Nil!19358)) (= lt!679733 lt!679477)))))

(declare-fun b!1758952 () Bool)

(assert (=> b!1758952 (= e!1125742 (Cons!19358 (head!4068 suffix!1421) Nil!19358))))

(assert (= (and d!537208 c!286615) b!1758952))

(assert (= (and d!537208 (not c!286615)) b!1758953))

(assert (= (and d!537208 res!791586) b!1758954))

(assert (= (and b!1758954 res!791587) b!1758955))

(declare-fun m!2174413 () Bool)

(assert (=> b!1758953 m!2174413))

(declare-fun m!2174415 () Bool)

(assert (=> d!537208 m!2174415))

(assert (=> d!537208 m!2173939))

(declare-fun m!2174417 () Bool)

(assert (=> d!537208 m!2174417))

(declare-fun m!2174419 () Bool)

(assert (=> b!1758954 m!2174419))

(assert (=> b!1758954 m!2173921))

(declare-fun m!2174421 () Bool)

(assert (=> b!1758954 m!2174421))

(assert (=> b!1758467 d!537208))

(declare-fun d!537214 () Bool)

(assert (=> d!537214 (= (head!4068 suffix!1421) (h!24759 suffix!1421))))

(assert (=> b!1758467 d!537214))

(declare-fun d!537216 () Bool)

(declare-fun c!286616 () Bool)

(assert (=> d!537216 (= c!286616 ((_ is Node!6439) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))))

(declare-fun e!1125743 () Bool)

(assert (=> d!537216 (= (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))) e!1125743)))

(declare-fun b!1758956 () Bool)

(assert (=> b!1758956 (= e!1125743 (inv!25139 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))))

(declare-fun b!1758957 () Bool)

(declare-fun e!1125744 () Bool)

(assert (=> b!1758957 (= e!1125743 e!1125744)))

(declare-fun res!791588 () Bool)

(assert (=> b!1758957 (= res!791588 (not ((_ is Leaf!9389) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))))))

(assert (=> b!1758957 (=> res!791588 e!1125744)))

(declare-fun b!1758958 () Bool)

(assert (=> b!1758958 (= e!1125744 (inv!25140 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))))))

(assert (= (and d!537216 c!286616) b!1758956))

(assert (= (and d!537216 (not c!286616)) b!1758957))

(assert (= (and b!1758957 (not res!791588)) b!1758958))

(declare-fun m!2174423 () Bool)

(assert (=> b!1758956 m!2174423))

(declare-fun m!2174425 () Bool)

(assert (=> b!1758958 m!2174425))

(assert (=> b!1758486 d!537216))

(declare-fun d!537218 () Bool)

(assert (=> d!537218 (= (list!7849 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))) (list!7852 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))))))

(declare-fun bs!403948 () Bool)

(assert (= bs!403948 d!537218))

(declare-fun m!2174427 () Bool)

(assert (=> bs!403948 m!2174427))

(assert (=> b!1758445 d!537218))

(declare-fun bs!403949 () Bool)

(declare-fun d!537220 () Bool)

(assert (= bs!403949 (and d!537220 b!1758461)))

(declare-fun lambda!70095 () Int)

(assert (=> bs!403949 (= lambda!70095 lambda!70084)))

(declare-fun b!1758965 () Bool)

(declare-fun e!1125747 () Bool)

(assert (=> b!1758965 (= e!1125747 true)))

(assert (=> d!537220 e!1125747))

(assert (= d!537220 b!1758965))

(assert (=> b!1758965 (< (dynLambda!9305 order!12251 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9306 order!12253 lambda!70095))))

(assert (=> b!1758965 (< (dynLambda!9307 order!12255 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9306 order!12253 lambda!70095))))

(assert (=> d!537220 (= (list!7849 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))) (list!7849 lt!679479))))

(declare-fun lt!679738 () Unit!33527)

(declare-fun ForallOf!310 (Int BalanceConc!12822) Unit!33527)

(assert (=> d!537220 (= lt!679738 (ForallOf!310 lambda!70095 lt!679479))))

(assert (=> d!537220 (= (lemmaSemiInverse!597 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479) lt!679738)))

(declare-fun b_lambda!56829 () Bool)

(assert (=> (not b_lambda!56829) (not d!537220)))

(assert (=> d!537220 t!163801))

(declare-fun b_and!132449 () Bool)

(assert (= b_and!132443 (and (=> t!163801 result!127286) b_and!132449)))

(assert (=> d!537220 t!163803))

(declare-fun b_and!132451 () Bool)

(assert (= b_and!132445 (and (=> t!163803 result!127290) b_and!132451)))

(assert (=> d!537220 t!163805))

(declare-fun b_and!132453 () Bool)

(assert (= b_and!132447 (and (=> t!163805 result!127292) b_and!132453)))

(declare-fun b_lambda!56831 () Bool)

(assert (=> (not b_lambda!56831) (not d!537220)))

(assert (=> d!537220 t!163807))

(declare-fun b_and!132455 () Bool)

(assert (= b_and!132389 (and (=> t!163807 result!127294) b_and!132455)))

(assert (=> d!537220 t!163809))

(declare-fun b_and!132457 () Bool)

(assert (= b_and!132391 (and (=> t!163809 result!127298) b_and!132457)))

(assert (=> d!537220 t!163811))

(declare-fun b_and!132459 () Bool)

(assert (= b_and!132393 (and (=> t!163811 result!127300) b_and!132459)))

(assert (=> d!537220 m!2173705))

(assert (=> d!537220 m!2173707))

(assert (=> d!537220 m!2173751))

(assert (=> d!537220 m!2173703))

(assert (=> d!537220 m!2173705))

(assert (=> d!537220 m!2173703))

(declare-fun m!2174429 () Bool)

(assert (=> d!537220 m!2174429))

(assert (=> b!1758445 d!537220))

(declare-fun d!537222 () Bool)

(assert (=> d!537222 (= (inv!25130 (tag!3821 rule!422)) (= (mod (str.len (value!108253 (tag!3821 rule!422))) 2) 0))))

(assert (=> b!1758444 d!537222))

(declare-fun d!537224 () Bool)

(declare-fun res!791589 () Bool)

(declare-fun e!1125751 () Bool)

(assert (=> d!537224 (=> (not res!791589) (not e!1125751))))

(assert (=> d!537224 (= res!791589 (semiInverseModEq!1372 (toChars!4837 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 rule!422))))))

(assert (=> d!537224 (= (inv!25135 (transformation!3459 rule!422)) e!1125751)))

(declare-fun b!1758969 () Bool)

(assert (=> b!1758969 (= e!1125751 (equivClasses!1313 (toChars!4837 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 rule!422))))))

(assert (= (and d!537224 res!791589) b!1758969))

(declare-fun m!2174431 () Bool)

(assert (=> d!537224 m!2174431))

(declare-fun m!2174433 () Bool)

(assert (=> b!1758969 m!2174433))

(assert (=> b!1758444 d!537224))

(declare-fun d!537226 () Bool)

(assert (=> d!537226 (= (isEmpty!12211 (_2!10885 lt!679478)) ((_ is Nil!19358) (_2!10885 lt!679478)))))

(assert (=> b!1758465 d!537226))

(declare-fun d!537228 () Bool)

(declare-fun lt!679742 () Int)

(assert (=> d!537228 (= lt!679742 (size!15379 (list!7849 lt!679479)))))

(declare-fun size!15381 (Conc!6439) Int)

(assert (=> d!537228 (= lt!679742 (size!15381 (c!286525 lt!679479)))))

(assert (=> d!537228 (= (size!15378 lt!679479) lt!679742)))

(declare-fun bs!403951 () Bool)

(assert (= bs!403951 d!537228))

(assert (=> bs!403951 m!2173751))

(assert (=> bs!403951 m!2173751))

(declare-fun m!2174447 () Bool)

(assert (=> bs!403951 m!2174447))

(declare-fun m!2174449 () Bool)

(assert (=> bs!403951 m!2174449))

(assert (=> b!1758447 d!537228))

(declare-fun d!537240 () Bool)

(assert (=> d!537240 (= (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))

(declare-fun b_lambda!56837 () Bool)

(assert (=> (not b_lambda!56837) (not d!537240)))

(assert (=> d!537240 t!163807))

(declare-fun b_and!132473 () Bool)

(assert (= b_and!132455 (and (=> t!163807 result!127294) b_and!132473)))

(assert (=> d!537240 t!163809))

(declare-fun b_and!132475 () Bool)

(assert (= b_and!132457 (and (=> t!163809 result!127298) b_and!132475)))

(assert (=> d!537240 t!163811))

(declare-fun b_and!132477 () Bool)

(assert (= b_and!132459 (and (=> t!163811 result!127300) b_and!132477)))

(assert (=> d!537240 m!2173703))

(assert (=> b!1758447 d!537240))

(declare-fun d!537242 () Bool)

(declare-fun fromListB!1106 (List!19428) BalanceConc!12822)

(assert (=> d!537242 (= (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485))) (fromListB!1106 (originalCharacters!4273 (_1!10885 lt!679485))))))

(declare-fun bs!403952 () Bool)

(assert (= bs!403952 d!537242))

(declare-fun m!2174451 () Bool)

(assert (=> bs!403952 m!2174451))

(assert (=> b!1758447 d!537242))

(declare-fun b!1759011 () Bool)

(declare-fun e!1125775 () Bool)

(assert (=> b!1759011 (= e!1125775 true)))

(declare-fun d!537244 () Bool)

(assert (=> d!537244 e!1125775))

(assert (= d!537244 b!1759011))

(declare-fun lambda!70102 () Int)

(declare-fun order!12259 () Int)

(declare-fun dynLambda!9311 (Int Int) Int)

(assert (=> b!1759011 (< (dynLambda!9305 order!12251 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9311 order!12259 lambda!70102))))

(assert (=> b!1759011 (< (dynLambda!9307 order!12255 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) (dynLambda!9311 order!12259 lambda!70102))))

(assert (=> d!537244 (= (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485)))))))

(declare-fun lt!679750 () Unit!33527)

(declare-fun Forall2of!119 (Int BalanceConc!12822 BalanceConc!12822) Unit!33527)

(assert (=> d!537244 (= lt!679750 (Forall2of!119 lambda!70102 lt!679479 (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485)))))))

(assert (=> d!537244 (= (list!7849 lt!679479) (list!7849 (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485)))))))

(assert (=> d!537244 (= (lemmaEqSameImage!370 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) lt!679479 (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485)))) lt!679750)))

(declare-fun b_lambda!56839 () Bool)

(assert (=> (not b_lambda!56839) (not d!537244)))

(assert (=> d!537244 t!163807))

(declare-fun b_and!132479 () Bool)

(assert (= b_and!132473 (and (=> t!163807 result!127294) b_and!132479)))

(assert (=> d!537244 t!163809))

(declare-fun b_and!132481 () Bool)

(assert (= b_and!132475 (and (=> t!163809 result!127298) b_and!132481)))

(assert (=> d!537244 t!163811))

(declare-fun b_and!132483 () Bool)

(assert (= b_and!132477 (and (=> t!163811 result!127300) b_and!132483)))

(declare-fun b_lambda!56841 () Bool)

(assert (=> (not b_lambda!56841) (not d!537244)))

(declare-fun tb!105831 () Bool)

(declare-fun t!163840 () Bool)

(assert (=> (and b!1758448 (= (toValue!4978 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163840) tb!105831))

(declare-fun result!127326 () Bool)

(assert (=> tb!105831 (= result!127326 (inv!21 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (seqFromList!2428 (originalCharacters!4273 (_1!10885 lt!679485))))))))

(declare-fun m!2174503 () Bool)

(assert (=> tb!105831 m!2174503))

(assert (=> d!537244 t!163840))

(declare-fun b_and!132485 () Bool)

(assert (= b_and!132479 (and (=> t!163840 result!127326) b_and!132485)))

(declare-fun t!163842 () Bool)

(declare-fun tb!105833 () Bool)

(assert (=> (and b!1758455 (= (toValue!4978 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163842) tb!105833))

(declare-fun result!127328 () Bool)

(assert (= result!127328 result!127326))

(assert (=> d!537244 t!163842))

(declare-fun b_and!132487 () Bool)

(assert (= b_and!132481 (and (=> t!163842 result!127328) b_and!132487)))

(declare-fun t!163846 () Bool)

(declare-fun tb!105837 () Bool)

(assert (=> (and b!1758456 (= (toValue!4978 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163846) tb!105837))

(declare-fun result!127332 () Bool)

(assert (= result!127332 result!127326))

(assert (=> d!537244 t!163846))

(declare-fun b_and!132489 () Bool)

(assert (= b_and!132483 (and (=> t!163846 result!127332) b_and!132489)))

(assert (=> d!537244 m!2173751))

(assert (=> d!537244 m!2173713))

(declare-fun m!2174509 () Bool)

(assert (=> d!537244 m!2174509))

(assert (=> d!537244 m!2173703))

(assert (=> d!537244 m!2173713))

(declare-fun m!2174511 () Bool)

(assert (=> d!537244 m!2174511))

(assert (=> d!537244 m!2173713))

(declare-fun m!2174513 () Bool)

(assert (=> d!537244 m!2174513))

(assert (=> b!1758447 d!537244))

(declare-fun d!537264 () Bool)

(assert (=> d!537264 (= (size!15377 (_1!10885 lt!679485)) (size!15379 (originalCharacters!4273 (_1!10885 lt!679485))))))

(declare-fun Unit!33536 () Unit!33527)

(assert (=> d!537264 (= (lemmaCharactersSize!517 (_1!10885 lt!679485)) Unit!33536)))

(declare-fun bs!403955 () Bool)

(assert (= bs!403955 d!537264))

(declare-fun m!2174523 () Bool)

(assert (=> bs!403955 m!2174523))

(assert (=> b!1758447 d!537264))

(declare-fun b!1759015 () Bool)

(declare-fun e!1125779 () Bool)

(declare-fun e!1125784 () Bool)

(assert (=> b!1759015 (= e!1125779 e!1125784)))

(declare-fun res!791617 () Bool)

(assert (=> b!1759015 (=> (not res!791617) (not e!1125784))))

(declare-fun lt!679751 () Bool)

(assert (=> b!1759015 (= res!791617 (not lt!679751))))

(declare-fun b!1759016 () Bool)

(declare-fun res!791613 () Bool)

(assert (=> b!1759016 (=> res!791613 e!1125779)))

(assert (=> b!1759016 (= res!791613 (not ((_ is ElementMatch!4787) (regex!3459 lt!679468))))))

(declare-fun e!1125782 () Bool)

(assert (=> b!1759016 (= e!1125782 e!1125779)))

(declare-fun b!1759017 () Bool)

(declare-fun e!1125781 () Bool)

(assert (=> b!1759017 (= e!1125781 (not (= (head!4068 (list!7849 (charsOf!2108 (_1!10885 lt!679485)))) (c!286524 (regex!3459 lt!679468)))))))

(declare-fun b!1759018 () Bool)

(declare-fun e!1125785 () Bool)

(assert (=> b!1759018 (= e!1125785 (= (head!4068 (list!7849 (charsOf!2108 (_1!10885 lt!679485)))) (c!286524 (regex!3459 lt!679468))))))

(declare-fun b!1759019 () Bool)

(declare-fun res!791611 () Bool)

(assert (=> b!1759019 (=> res!791611 e!1125779)))

(assert (=> b!1759019 (= res!791611 e!1125785)))

(declare-fun res!791612 () Bool)

(assert (=> b!1759019 (=> (not res!791612) (not e!1125785))))

(assert (=> b!1759019 (= res!791612 lt!679751)))

(declare-fun b!1759020 () Bool)

(assert (=> b!1759020 (= e!1125782 (not lt!679751))))

(declare-fun d!537270 () Bool)

(declare-fun e!1125783 () Bool)

(assert (=> d!537270 e!1125783))

(declare-fun c!286630 () Bool)

(assert (=> d!537270 (= c!286630 ((_ is EmptyExpr!4787) (regex!3459 lt!679468)))))

(declare-fun e!1125780 () Bool)

(assert (=> d!537270 (= lt!679751 e!1125780)))

(declare-fun c!286629 () Bool)

(assert (=> d!537270 (= c!286629 (isEmpty!12211 (list!7849 (charsOf!2108 (_1!10885 lt!679485)))))))

(assert (=> d!537270 (validRegex!1930 (regex!3459 lt!679468))))

(assert (=> d!537270 (= (matchR!2260 (regex!3459 lt!679468) (list!7849 (charsOf!2108 (_1!10885 lt!679485)))) lt!679751)))

(declare-fun b!1759021 () Bool)

(assert (=> b!1759021 (= e!1125784 e!1125781)))

(declare-fun res!791615 () Bool)

(assert (=> b!1759021 (=> res!791615 e!1125781)))

(declare-fun call!110609 () Bool)

(assert (=> b!1759021 (= res!791615 call!110609)))

(declare-fun b!1759022 () Bool)

(declare-fun res!791618 () Bool)

(assert (=> b!1759022 (=> res!791618 e!1125781)))

(assert (=> b!1759022 (= res!791618 (not (isEmpty!12211 (tail!2629 (list!7849 (charsOf!2108 (_1!10885 lt!679485)))))))))

(declare-fun b!1759023 () Bool)

(declare-fun res!791616 () Bool)

(assert (=> b!1759023 (=> (not res!791616) (not e!1125785))))

(assert (=> b!1759023 (= res!791616 (isEmpty!12211 (tail!2629 (list!7849 (charsOf!2108 (_1!10885 lt!679485))))))))

(declare-fun b!1759024 () Bool)

(assert (=> b!1759024 (= e!1125783 (= lt!679751 call!110609))))

(declare-fun b!1759025 () Bool)

(assert (=> b!1759025 (= e!1125780 (nullable!1456 (regex!3459 lt!679468)))))

(declare-fun bm!110604 () Bool)

(assert (=> bm!110604 (= call!110609 (isEmpty!12211 (list!7849 (charsOf!2108 (_1!10885 lt!679485)))))))

(declare-fun b!1759026 () Bool)

(assert (=> b!1759026 (= e!1125783 e!1125782)))

(declare-fun c!286628 () Bool)

(assert (=> b!1759026 (= c!286628 ((_ is EmptyLang!4787) (regex!3459 lt!679468)))))

(declare-fun b!1759027 () Bool)

(declare-fun res!791614 () Bool)

(assert (=> b!1759027 (=> (not res!791614) (not e!1125785))))

(assert (=> b!1759027 (= res!791614 (not call!110609))))

(declare-fun b!1759028 () Bool)

(assert (=> b!1759028 (= e!1125780 (matchR!2260 (derivativeStep!1225 (regex!3459 lt!679468) (head!4068 (list!7849 (charsOf!2108 (_1!10885 lt!679485))))) (tail!2629 (list!7849 (charsOf!2108 (_1!10885 lt!679485))))))))

(assert (= (and d!537270 c!286629) b!1759025))

(assert (= (and d!537270 (not c!286629)) b!1759028))

(assert (= (and d!537270 c!286630) b!1759024))

(assert (= (and d!537270 (not c!286630)) b!1759026))

(assert (= (and b!1759026 c!286628) b!1759020))

(assert (= (and b!1759026 (not c!286628)) b!1759016))

(assert (= (and b!1759016 (not res!791613)) b!1759019))

(assert (= (and b!1759019 res!791612) b!1759027))

(assert (= (and b!1759027 res!791614) b!1759023))

(assert (= (and b!1759023 res!791616) b!1759018))

(assert (= (and b!1759019 (not res!791611)) b!1759015))

(assert (= (and b!1759015 res!791617) b!1759021))

(assert (= (and b!1759021 (not res!791615)) b!1759022))

(assert (= (and b!1759022 (not res!791618)) b!1759017))

(assert (= (or b!1759024 b!1759027 b!1759021) bm!110604))

(assert (=> b!1759028 m!2173805))

(declare-fun m!2174527 () Bool)

(assert (=> b!1759028 m!2174527))

(assert (=> b!1759028 m!2174527))

(declare-fun m!2174529 () Bool)

(assert (=> b!1759028 m!2174529))

(assert (=> b!1759028 m!2173805))

(declare-fun m!2174531 () Bool)

(assert (=> b!1759028 m!2174531))

(assert (=> b!1759028 m!2174529))

(assert (=> b!1759028 m!2174531))

(declare-fun m!2174533 () Bool)

(assert (=> b!1759028 m!2174533))

(assert (=> bm!110604 m!2173805))

(declare-fun m!2174535 () Bool)

(assert (=> bm!110604 m!2174535))

(assert (=> b!1759022 m!2173805))

(assert (=> b!1759022 m!2174531))

(assert (=> b!1759022 m!2174531))

(declare-fun m!2174537 () Bool)

(assert (=> b!1759022 m!2174537))

(assert (=> b!1759023 m!2173805))

(assert (=> b!1759023 m!2174531))

(assert (=> b!1759023 m!2174531))

(assert (=> b!1759023 m!2174537))

(declare-fun m!2174539 () Bool)

(assert (=> b!1759025 m!2174539))

(assert (=> b!1759017 m!2173805))

(assert (=> b!1759017 m!2174527))

(assert (=> d!537270 m!2173805))

(assert (=> d!537270 m!2174535))

(declare-fun m!2174541 () Bool)

(assert (=> d!537270 m!2174541))

(assert (=> b!1759018 m!2173805))

(assert (=> b!1759018 m!2174527))

(assert (=> b!1758449 d!537270))

(declare-fun d!537274 () Bool)

(assert (=> d!537274 (= (list!7849 (charsOf!2108 (_1!10885 lt!679485))) (list!7852 (c!286525 (charsOf!2108 (_1!10885 lt!679485)))))))

(declare-fun bs!403957 () Bool)

(assert (= bs!403957 d!537274))

(declare-fun m!2174543 () Bool)

(assert (=> bs!403957 m!2174543))

(assert (=> b!1758449 d!537274))

(assert (=> b!1758449 d!537104))

(declare-fun d!537276 () Bool)

(assert (=> d!537276 (= (get!5888 lt!679467) (v!25396 lt!679467))))

(assert (=> b!1758449 d!537276))

(declare-fun d!537278 () Bool)

(declare-fun res!791629 () Bool)

(declare-fun e!1125793 () Bool)

(assert (=> d!537278 (=> (not res!791629) (not e!1125793))))

(declare-fun rulesValid!1298 (LexerInterface!3088 List!19429) Bool)

(assert (=> d!537278 (= res!791629 (rulesValid!1298 thiss!24550 rules!3447))))

(assert (=> d!537278 (= (rulesInvariant!2757 thiss!24550 rules!3447) e!1125793)))

(declare-fun b!1759043 () Bool)

(declare-datatypes ((List!19435 0))(
  ( (Nil!19365) (Cons!19365 (h!24766 String!22077) (t!163886 List!19435)) )
))
(declare-fun noDuplicateTag!1298 (LexerInterface!3088 List!19429 List!19435) Bool)

(assert (=> b!1759043 (= e!1125793 (noDuplicateTag!1298 thiss!24550 rules!3447 Nil!19365))))

(assert (= (and d!537278 res!791629) b!1759043))

(declare-fun m!2174585 () Bool)

(assert (=> d!537278 m!2174585))

(declare-fun m!2174587 () Bool)

(assert (=> b!1759043 m!2174587))

(assert (=> b!1758454 d!537278))

(declare-fun d!537290 () Bool)

(assert (=> d!537290 (= (get!5887 lt!679475) (v!25397 lt!679475))))

(assert (=> b!1758453 d!537290))

(declare-fun d!537292 () Bool)

(assert (=> d!537292 (= (maxPrefixOneRule!1011 thiss!24550 (rule!5473 (_1!10885 lt!679485)) lt!679469) (Some!3940 (tuple2!18967 (Token!6485 (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) (seqFromList!2428 lt!679472)) (rule!5473 (_1!10885 lt!679485)) (size!15379 lt!679472) lt!679472) (_2!10885 lt!679485))))))

(declare-fun lt!679763 () Unit!33527)

(declare-fun choose!10882 (LexerInterface!3088 List!19429 List!19428 List!19428 List!19428 Rule!6718) Unit!33527)

(assert (=> d!537292 (= lt!679763 (choose!10882 thiss!24550 rules!3447 lt!679472 lt!679469 (_2!10885 lt!679485) (rule!5473 (_1!10885 lt!679485))))))

(assert (=> d!537292 (not (isEmpty!12210 rules!3447))))

(assert (=> d!537292 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!389 thiss!24550 rules!3447 lt!679472 lt!679469 (_2!10885 lt!679485) (rule!5473 (_1!10885 lt!679485))) lt!679763)))

(declare-fun bs!403960 () Bool)

(assert (= bs!403960 d!537292))

(assert (=> bs!403960 m!2173797))

(assert (=> bs!403960 m!2173693))

(assert (=> bs!403960 m!2173801))

(declare-fun m!2174611 () Bool)

(assert (=> bs!403960 m!2174611))

(assert (=> bs!403960 m!2173793))

(assert (=> bs!403960 m!2173795))

(assert (=> bs!403960 m!2173793))

(assert (=> b!1758452 d!537292))

(declare-fun d!537294 () Bool)

(declare-fun e!1125838 () Bool)

(assert (=> d!537294 e!1125838))

(declare-fun res!791656 () Bool)

(assert (=> d!537294 (=> res!791656 e!1125838)))

(declare-fun lt!679778 () Option!3941)

(assert (=> d!537294 (= res!791656 (isEmpty!12215 lt!679778))))

(declare-fun e!1125840 () Option!3941)

(assert (=> d!537294 (= lt!679778 e!1125840)))

(declare-fun c!286635 () Bool)

(declare-datatypes ((tuple2!18974 0))(
  ( (tuple2!18975 (_1!10889 List!19428) (_2!10889 List!19428)) )
))
(declare-fun lt!679775 () tuple2!18974)

(assert (=> d!537294 (= c!286635 (isEmpty!12211 (_1!10889 lt!679775)))))

(declare-fun findLongestMatch!362 (Regex!4787 List!19428) tuple2!18974)

(assert (=> d!537294 (= lt!679775 (findLongestMatch!362 (regex!3459 (rule!5473 (_1!10885 lt!679485))) lt!679469))))

(assert (=> d!537294 (ruleValid!957 thiss!24550 (rule!5473 (_1!10885 lt!679485)))))

(assert (=> d!537294 (= (maxPrefixOneRule!1011 thiss!24550 (rule!5473 (_1!10885 lt!679485)) lt!679469) lt!679778)))

(declare-fun b!1759121 () Bool)

(declare-fun res!791651 () Bool)

(declare-fun e!1125839 () Bool)

(assert (=> b!1759121 (=> (not res!791651) (not e!1125839))))

(assert (=> b!1759121 (= res!791651 (= (value!108254 (_1!10885 (get!5887 lt!679778))) (apply!5259 (transformation!3459 (rule!5473 (_1!10885 (get!5887 lt!679778)))) (seqFromList!2428 (originalCharacters!4273 (_1!10885 (get!5887 lt!679778)))))))))

(declare-fun b!1759122 () Bool)

(assert (=> b!1759122 (= e!1125838 e!1125839)))

(declare-fun res!791652 () Bool)

(assert (=> b!1759122 (=> (not res!791652) (not e!1125839))))

(assert (=> b!1759122 (= res!791652 (matchR!2260 (regex!3459 (rule!5473 (_1!10885 lt!679485))) (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679778))))))))

(declare-fun b!1759123 () Bool)

(assert (=> b!1759123 (= e!1125840 None!3940)))

(declare-fun b!1759124 () Bool)

(declare-fun e!1125837 () Bool)

(declare-fun findLongestMatchInner!435 (Regex!4787 List!19428 Int List!19428 List!19428 Int) tuple2!18974)

(assert (=> b!1759124 (= e!1125837 (matchR!2260 (regex!3459 (rule!5473 (_1!10885 lt!679485))) (_1!10889 (findLongestMatchInner!435 (regex!3459 (rule!5473 (_1!10885 lt!679485))) Nil!19358 (size!15379 Nil!19358) lt!679469 lt!679469 (size!15379 lt!679469)))))))

(declare-fun b!1759125 () Bool)

(assert (=> b!1759125 (= e!1125840 (Some!3940 (tuple2!18967 (Token!6485 (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) (seqFromList!2428 (_1!10889 lt!679775))) (rule!5473 (_1!10885 lt!679485)) (size!15378 (seqFromList!2428 (_1!10889 lt!679775))) (_1!10889 lt!679775)) (_2!10889 lt!679775))))))

(declare-fun lt!679774 () Unit!33527)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!419 (Regex!4787 List!19428) Unit!33527)

(assert (=> b!1759125 (= lt!679774 (longestMatchIsAcceptedByMatchOrIsEmpty!419 (regex!3459 (rule!5473 (_1!10885 lt!679485))) lt!679469))))

(declare-fun res!791655 () Bool)

(assert (=> b!1759125 (= res!791655 (isEmpty!12211 (_1!10889 (findLongestMatchInner!435 (regex!3459 (rule!5473 (_1!10885 lt!679485))) Nil!19358 (size!15379 Nil!19358) lt!679469 lt!679469 (size!15379 lt!679469)))))))

(assert (=> b!1759125 (=> res!791655 e!1125837)))

(assert (=> b!1759125 e!1125837))

(declare-fun lt!679776 () Unit!33527)

(assert (=> b!1759125 (= lt!679776 lt!679774)))

(declare-fun lt!679777 () Unit!33527)

(assert (=> b!1759125 (= lt!679777 (lemmaSemiInverse!597 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) (seqFromList!2428 (_1!10889 lt!679775))))))

(declare-fun b!1759126 () Bool)

(assert (=> b!1759126 (= e!1125839 (= (size!15377 (_1!10885 (get!5887 lt!679778))) (size!15379 (originalCharacters!4273 (_1!10885 (get!5887 lt!679778))))))))

(declare-fun b!1759127 () Bool)

(declare-fun res!791650 () Bool)

(assert (=> b!1759127 (=> (not res!791650) (not e!1125839))))

(assert (=> b!1759127 (= res!791650 (< (size!15379 (_2!10885 (get!5887 lt!679778))) (size!15379 lt!679469)))))

(declare-fun b!1759128 () Bool)

(declare-fun res!791653 () Bool)

(assert (=> b!1759128 (=> (not res!791653) (not e!1125839))))

(assert (=> b!1759128 (= res!791653 (= (++!5283 (list!7849 (charsOf!2108 (_1!10885 (get!5887 lt!679778)))) (_2!10885 (get!5887 lt!679778))) lt!679469))))

(declare-fun b!1759129 () Bool)

(declare-fun res!791654 () Bool)

(assert (=> b!1759129 (=> (not res!791654) (not e!1125839))))

(assert (=> b!1759129 (= res!791654 (= (rule!5473 (_1!10885 (get!5887 lt!679778))) (rule!5473 (_1!10885 lt!679485))))))

(assert (= (and d!537294 c!286635) b!1759123))

(assert (= (and d!537294 (not c!286635)) b!1759125))

(assert (= (and b!1759125 (not res!791655)) b!1759124))

(assert (= (and d!537294 (not res!791656)) b!1759122))

(assert (= (and b!1759122 res!791652) b!1759128))

(assert (= (and b!1759128 res!791653) b!1759127))

(assert (= (and b!1759127 res!791650) b!1759129))

(assert (= (and b!1759129 res!791654) b!1759121))

(assert (= (and b!1759121 res!791651) b!1759126))

(declare-fun m!2174613 () Bool)

(assert (=> b!1759127 m!2174613))

(declare-fun m!2174615 () Bool)

(assert (=> b!1759127 m!2174615))

(assert (=> b!1759127 m!2173919))

(assert (=> b!1759126 m!2174613))

(declare-fun m!2174617 () Bool)

(assert (=> b!1759126 m!2174617))

(assert (=> b!1759128 m!2174613))

(declare-fun m!2174619 () Bool)

(assert (=> b!1759128 m!2174619))

(assert (=> b!1759128 m!2174619))

(declare-fun m!2174621 () Bool)

(assert (=> b!1759128 m!2174621))

(assert (=> b!1759128 m!2174621))

(declare-fun m!2174623 () Bool)

(assert (=> b!1759128 m!2174623))

(assert (=> b!1759129 m!2174613))

(assert (=> b!1759122 m!2174613))

(assert (=> b!1759122 m!2174619))

(assert (=> b!1759122 m!2174619))

(assert (=> b!1759122 m!2174621))

(assert (=> b!1759122 m!2174621))

(declare-fun m!2174625 () Bool)

(assert (=> b!1759122 m!2174625))

(declare-fun m!2174627 () Bool)

(assert (=> b!1759125 m!2174627))

(declare-fun m!2174629 () Bool)

(assert (=> b!1759125 m!2174629))

(declare-fun m!2174631 () Bool)

(assert (=> b!1759125 m!2174631))

(assert (=> b!1759125 m!2174629))

(declare-fun m!2174633 () Bool)

(assert (=> b!1759125 m!2174633))

(declare-fun m!2174635 () Bool)

(assert (=> b!1759125 m!2174635))

(assert (=> b!1759125 m!2174627))

(assert (=> b!1759125 m!2173919))

(declare-fun m!2174637 () Bool)

(assert (=> b!1759125 m!2174637))

(assert (=> b!1759125 m!2173919))

(assert (=> b!1759125 m!2174629))

(declare-fun m!2174639 () Bool)

(assert (=> b!1759125 m!2174639))

(assert (=> b!1759125 m!2174629))

(declare-fun m!2174641 () Bool)

(assert (=> b!1759125 m!2174641))

(declare-fun m!2174643 () Bool)

(assert (=> d!537294 m!2174643))

(declare-fun m!2174645 () Bool)

(assert (=> d!537294 m!2174645))

(declare-fun m!2174647 () Bool)

(assert (=> d!537294 m!2174647))

(declare-fun m!2174649 () Bool)

(assert (=> d!537294 m!2174649))

(assert (=> b!1759121 m!2174613))

(declare-fun m!2174651 () Bool)

(assert (=> b!1759121 m!2174651))

(assert (=> b!1759121 m!2174651))

(declare-fun m!2174653 () Bool)

(assert (=> b!1759121 m!2174653))

(assert (=> b!1759124 m!2174627))

(assert (=> b!1759124 m!2173919))

(assert (=> b!1759124 m!2174627))

(assert (=> b!1759124 m!2173919))

(assert (=> b!1759124 m!2174637))

(declare-fun m!2174655 () Bool)

(assert (=> b!1759124 m!2174655))

(assert (=> b!1758452 d!537294))

(declare-fun d!537296 () Bool)

(declare-fun lt!679781 () List!19428)

(assert (=> d!537296 (= (++!5283 lt!679472 lt!679781) lt!679469)))

(declare-fun e!1125843 () List!19428)

(assert (=> d!537296 (= lt!679781 e!1125843)))

(declare-fun c!286639 () Bool)

(assert (=> d!537296 (= c!286639 ((_ is Cons!19358) lt!679472))))

(assert (=> d!537296 (>= (size!15379 lt!679469) (size!15379 lt!679472))))

(assert (=> d!537296 (= (getSuffix!866 lt!679469 lt!679472) lt!679781)))

(declare-fun b!1759134 () Bool)

(assert (=> b!1759134 (= e!1125843 (getSuffix!866 (tail!2629 lt!679469) (t!163819 lt!679472)))))

(declare-fun b!1759135 () Bool)

(assert (=> b!1759135 (= e!1125843 lt!679469)))

(assert (= (and d!537296 c!286639) b!1759134))

(assert (= (and d!537296 (not c!286639)) b!1759135))

(declare-fun m!2174657 () Bool)

(assert (=> d!537296 m!2174657))

(assert (=> d!537296 m!2173919))

(assert (=> d!537296 m!2173797))

(assert (=> b!1759134 m!2173929))

(assert (=> b!1759134 m!2173929))

(declare-fun m!2174659 () Bool)

(assert (=> b!1759134 m!2174659))

(assert (=> b!1758452 d!537296))

(declare-fun d!537298 () Bool)

(assert (=> d!537298 (= (apply!5259 (transformation!3459 (rule!5473 (_1!10885 lt!679485))) (seqFromList!2428 lt!679472)) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (seqFromList!2428 lt!679472)))))

(declare-fun b_lambda!56857 () Bool)

(assert (=> (not b_lambda!56857) (not d!537298)))

(declare-fun t!163865 () Bool)

(declare-fun tb!105855 () Bool)

(assert (=> (and b!1758448 (= (toValue!4978 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163865) tb!105855))

(declare-fun result!127358 () Bool)

(assert (=> tb!105855 (= result!127358 (inv!21 (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (seqFromList!2428 lt!679472))))))

(declare-fun m!2174661 () Bool)

(assert (=> tb!105855 m!2174661))

(assert (=> d!537298 t!163865))

(declare-fun b_and!132507 () Bool)

(assert (= b_and!132485 (and (=> t!163865 result!127358) b_and!132507)))

(declare-fun tb!105857 () Bool)

(declare-fun t!163867 () Bool)

(assert (=> (and b!1758455 (= (toValue!4978 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163867) tb!105857))

(declare-fun result!127360 () Bool)

(assert (= result!127360 result!127358))

(assert (=> d!537298 t!163867))

(declare-fun b_and!132509 () Bool)

(assert (= b_and!132487 (and (=> t!163867 result!127360) b_and!132509)))

(declare-fun tb!105859 () Bool)

(declare-fun t!163869 () Bool)

(assert (=> (and b!1758456 (= (toValue!4978 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163869) tb!105859))

(declare-fun result!127362 () Bool)

(assert (= result!127362 result!127358))

(assert (=> d!537298 t!163869))

(declare-fun b_and!132511 () Bool)

(assert (= b_and!132489 (and (=> t!163869 result!127362) b_and!132511)))

(assert (=> d!537298 m!2173793))

(declare-fun m!2174663 () Bool)

(assert (=> d!537298 m!2174663))

(assert (=> b!1758452 d!537298))

(declare-fun d!537300 () Bool)

(declare-fun lt!679784 () Int)

(assert (=> d!537300 (>= lt!679784 0)))

(declare-fun e!1125847 () Int)

(assert (=> d!537300 (= lt!679784 e!1125847)))

(declare-fun c!286642 () Bool)

(assert (=> d!537300 (= c!286642 ((_ is Nil!19358) lt!679472))))

(assert (=> d!537300 (= (size!15379 lt!679472) lt!679784)))

(declare-fun b!1759140 () Bool)

(assert (=> b!1759140 (= e!1125847 0)))

(declare-fun b!1759141 () Bool)

(assert (=> b!1759141 (= e!1125847 (+ 1 (size!15379 (t!163819 lt!679472))))))

(assert (= (and d!537300 c!286642) b!1759140))

(assert (= (and d!537300 (not c!286642)) b!1759141))

(declare-fun m!2174665 () Bool)

(assert (=> b!1759141 m!2174665))

(assert (=> b!1758452 d!537300))

(declare-fun d!537302 () Bool)

(assert (=> d!537302 (= (seqFromList!2428 lt!679472) (fromListB!1106 lt!679472))))

(declare-fun bs!403961 () Bool)

(assert (= bs!403961 d!537302))

(declare-fun m!2174667 () Bool)

(assert (=> bs!403961 m!2174667))

(assert (=> b!1758452 d!537302))

(declare-fun b!1759146 () Bool)

(declare-fun e!1125850 () Bool)

(declare-fun tp!499840 () Bool)

(assert (=> b!1759146 (= e!1125850 (and tp_is_empty!7817 tp!499840))))

(assert (=> b!1758459 (= tp!499770 e!1125850)))

(assert (= (and b!1758459 ((_ is Cons!19358) (originalCharacters!4273 token!523))) b!1759146))

(declare-fun b!1759160 () Bool)

(declare-fun e!1125853 () Bool)

(declare-fun tp!499855 () Bool)

(declare-fun tp!499853 () Bool)

(assert (=> b!1759160 (= e!1125853 (and tp!499855 tp!499853))))

(declare-fun b!1759159 () Bool)

(declare-fun tp!499854 () Bool)

(assert (=> b!1759159 (= e!1125853 tp!499854)))

(declare-fun b!1759157 () Bool)

(assert (=> b!1759157 (= e!1125853 tp_is_empty!7817)))

(declare-fun b!1759158 () Bool)

(declare-fun tp!499852 () Bool)

(declare-fun tp!499851 () Bool)

(assert (=> b!1759158 (= e!1125853 (and tp!499852 tp!499851))))

(assert (=> b!1758463 (= tp!499769 e!1125853)))

(assert (= (and b!1758463 ((_ is ElementMatch!4787) (regex!3459 (h!24760 rules!3447)))) b!1759157))

(assert (= (and b!1758463 ((_ is Concat!8337) (regex!3459 (h!24760 rules!3447)))) b!1759158))

(assert (= (and b!1758463 ((_ is Star!4787) (regex!3459 (h!24760 rules!3447)))) b!1759159))

(assert (= (and b!1758463 ((_ is Union!4787) (regex!3459 (h!24760 rules!3447)))) b!1759160))

(declare-fun b!1759164 () Bool)

(declare-fun e!1125854 () Bool)

(declare-fun tp!499860 () Bool)

(declare-fun tp!499858 () Bool)

(assert (=> b!1759164 (= e!1125854 (and tp!499860 tp!499858))))

(declare-fun b!1759163 () Bool)

(declare-fun tp!499859 () Bool)

(assert (=> b!1759163 (= e!1125854 tp!499859)))

(declare-fun b!1759161 () Bool)

(assert (=> b!1759161 (= e!1125854 tp_is_empty!7817)))

(declare-fun b!1759162 () Bool)

(declare-fun tp!499857 () Bool)

(declare-fun tp!499856 () Bool)

(assert (=> b!1759162 (= e!1125854 (and tp!499857 tp!499856))))

(assert (=> b!1758462 (= tp!499771 e!1125854)))

(assert (= (and b!1758462 ((_ is ElementMatch!4787) (regex!3459 (rule!5473 token!523)))) b!1759161))

(assert (= (and b!1758462 ((_ is Concat!8337) (regex!3459 (rule!5473 token!523)))) b!1759162))

(assert (= (and b!1758462 ((_ is Star!4787) (regex!3459 (rule!5473 token!523)))) b!1759163))

(assert (= (and b!1758462 ((_ is Union!4787) (regex!3459 (rule!5473 token!523)))) b!1759164))

(declare-fun b!1759165 () Bool)

(declare-fun e!1125855 () Bool)

(declare-fun tp!499861 () Bool)

(assert (=> b!1759165 (= e!1125855 (and tp_is_empty!7817 tp!499861))))

(assert (=> b!1758451 (= tp!499774 e!1125855)))

(assert (= (and b!1758451 ((_ is Cons!19358) (t!163819 suffix!1421))) b!1759165))

(declare-fun b!1759176 () Bool)

(declare-fun b_free!48623 () Bool)

(declare-fun b_next!49327 () Bool)

(assert (=> b!1759176 (= b_free!48623 (not b_next!49327))))

(declare-fun t!163871 () Bool)

(declare-fun tb!105861 () Bool)

(assert (=> (and b!1759176 (= (toValue!4978 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163871) tb!105861))

(declare-fun result!127370 () Bool)

(assert (= result!127370 result!127294))

(assert (=> d!537240 t!163871))

(assert (=> d!537244 t!163871))

(assert (=> d!537220 t!163871))

(declare-fun t!163873 () Bool)

(declare-fun tb!105863 () Bool)

(assert (=> (and b!1759176 (= (toValue!4978 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163873) tb!105863))

(declare-fun result!127372 () Bool)

(assert (= result!127372 result!127358))

(assert (=> d!537298 t!163873))

(declare-fun t!163875 () Bool)

(declare-fun tb!105865 () Bool)

(assert (=> (and b!1759176 (= (toValue!4978 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163875) tb!105865))

(declare-fun result!127374 () Bool)

(assert (= result!127374 result!127326))

(assert (=> d!537244 t!163875))

(assert (=> b!1758445 t!163871))

(declare-fun tp!499872 () Bool)

(declare-fun b_and!132513 () Bool)

(assert (=> b!1759176 (= tp!499872 (and (=> t!163871 result!127370) (=> t!163873 result!127372) (=> t!163875 result!127374) b_and!132513))))

(declare-fun b_free!48625 () Bool)

(declare-fun b_next!49329 () Bool)

(assert (=> b!1759176 (= b_free!48625 (not b_next!49329))))

(declare-fun tb!105867 () Bool)

(declare-fun t!163877 () Bool)

(assert (=> (and b!1759176 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163877) tb!105867))

(declare-fun result!127376 () Bool)

(assert (= result!127376 result!127286))

(assert (=> d!537220 t!163877))

(declare-fun t!163879 () Bool)

(declare-fun tb!105869 () Bool)

(assert (=> (and b!1759176 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485))))) t!163879) tb!105869))

(declare-fun result!127378 () Bool)

(assert (= result!127378 result!127302))

(assert (=> d!537104 t!163879))

(declare-fun tb!105871 () Bool)

(declare-fun t!163881 () Bool)

(assert (=> (and b!1759176 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 token!523)))) t!163881) tb!105871))

(declare-fun result!127380 () Bool)

(assert (= result!127380 result!127308))

(assert (=> d!537196 t!163881))

(assert (=> b!1758466 t!163879))

(assert (=> b!1758445 t!163877))

(assert (=> b!1758551 t!163881))

(declare-fun b_and!132515 () Bool)

(declare-fun tp!499870 () Bool)

(assert (=> b!1759176 (= tp!499870 (and (=> t!163877 result!127376) (=> t!163879 result!127378) (=> t!163881 result!127380) b_and!132515))))

(declare-fun e!1125864 () Bool)

(assert (=> b!1759176 (= e!1125864 (and tp!499872 tp!499870))))

(declare-fun e!1125866 () Bool)

(declare-fun b!1759175 () Bool)

(declare-fun tp!499871 () Bool)

(assert (=> b!1759175 (= e!1125866 (and tp!499871 (inv!25130 (tag!3821 (h!24760 (t!163820 rules!3447)))) (inv!25135 (transformation!3459 (h!24760 (t!163820 rules!3447)))) e!1125864))))

(declare-fun b!1759174 () Bool)

(declare-fun e!1125865 () Bool)

(declare-fun tp!499873 () Bool)

(assert (=> b!1759174 (= e!1125865 (and e!1125866 tp!499873))))

(assert (=> b!1758440 (= tp!499772 e!1125865)))

(assert (= b!1759175 b!1759176))

(assert (= b!1759174 b!1759175))

(assert (= (and b!1758440 ((_ is Cons!19359) (t!163820 rules!3447))) b!1759174))

(declare-fun m!2174669 () Bool)

(assert (=> b!1759175 m!2174669))

(declare-fun m!2174671 () Bool)

(assert (=> b!1759175 m!2174671))

(declare-fun tp!499882 () Bool)

(declare-fun e!1125872 () Bool)

(declare-fun tp!499881 () Bool)

(declare-fun b!1759185 () Bool)

(assert (=> b!1759185 (= e!1125872 (and (inv!25137 (left!15498 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))) tp!499882 (inv!25137 (right!15828 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))) tp!499881))))

(declare-fun b!1759187 () Bool)

(declare-fun e!1125873 () Bool)

(declare-fun tp!499880 () Bool)

(assert (=> b!1759187 (= e!1125873 tp!499880)))

(declare-fun b!1759186 () Bool)

(declare-fun inv!25144 (IArray!12883) Bool)

(assert (=> b!1759186 (= e!1125872 (and (inv!25144 (xs!9315 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))) e!1125873))))

(assert (=> b!1758486 (= tp!499782 (and (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485))))) e!1125872))))

(assert (= (and b!1758486 ((_ is Node!6439) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))) b!1759185))

(assert (= b!1759186 b!1759187))

(assert (= (and b!1758486 ((_ is Leaf!9389) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (value!108254 (_1!10885 lt!679485)))))) b!1759186))

(declare-fun m!2174673 () Bool)

(assert (=> b!1759185 m!2174673))

(declare-fun m!2174675 () Bool)

(assert (=> b!1759185 m!2174675))

(declare-fun m!2174677 () Bool)

(assert (=> b!1759186 m!2174677))

(assert (=> b!1758486 m!2173689))

(declare-fun tp!499884 () Bool)

(declare-fun b!1759188 () Bool)

(declare-fun e!1125874 () Bool)

(declare-fun tp!499885 () Bool)

(assert (=> b!1759188 (= e!1125874 (and (inv!25137 (left!15498 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))) tp!499885 (inv!25137 (right!15828 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))) tp!499884))))

(declare-fun b!1759190 () Bool)

(declare-fun e!1125875 () Bool)

(declare-fun tp!499883 () Bool)

(assert (=> b!1759190 (= e!1125875 tp!499883)))

(declare-fun b!1759189 () Bool)

(assert (=> b!1759189 (= e!1125874 (and (inv!25144 (xs!9315 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))) e!1125875))))

(assert (=> b!1758483 (= tp!499781 (and (inv!25137 (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479)))) e!1125874))))

(assert (= (and b!1758483 ((_ is Node!6439) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))) b!1759188))

(assert (= b!1759189 b!1759190))

(assert (= (and b!1758483 ((_ is Leaf!9389) (c!286525 (dynLambda!9308 (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) (dynLambda!9309 (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))) lt!679479))))) b!1759189))

(declare-fun m!2174679 () Bool)

(assert (=> b!1759188 m!2174679))

(declare-fun m!2174681 () Bool)

(assert (=> b!1759188 m!2174681))

(declare-fun m!2174683 () Bool)

(assert (=> b!1759189 m!2174683))

(assert (=> b!1758483 m!2173683))

(declare-fun b!1759194 () Bool)

(declare-fun e!1125876 () Bool)

(declare-fun tp!499890 () Bool)

(declare-fun tp!499888 () Bool)

(assert (=> b!1759194 (= e!1125876 (and tp!499890 tp!499888))))

(declare-fun b!1759193 () Bool)

(declare-fun tp!499889 () Bool)

(assert (=> b!1759193 (= e!1125876 tp!499889)))

(declare-fun b!1759191 () Bool)

(assert (=> b!1759191 (= e!1125876 tp_is_empty!7817)))

(declare-fun b!1759192 () Bool)

(declare-fun tp!499887 () Bool)

(declare-fun tp!499886 () Bool)

(assert (=> b!1759192 (= e!1125876 (and tp!499887 tp!499886))))

(assert (=> b!1758444 (= tp!499777 e!1125876)))

(assert (= (and b!1758444 ((_ is ElementMatch!4787) (regex!3459 rule!422))) b!1759191))

(assert (= (and b!1758444 ((_ is Concat!8337) (regex!3459 rule!422))) b!1759192))

(assert (= (and b!1758444 ((_ is Star!4787) (regex!3459 rule!422))) b!1759193))

(assert (= (and b!1758444 ((_ is Union!4787) (regex!3459 rule!422))) b!1759194))

(declare-fun b_lambda!56859 () Bool)

(assert (= b_lambda!56807 (or (and b!1758448 b_free!48609 (= (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758455 b_free!48613 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758456 b_free!48617 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1759176 b_free!48625 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) b_lambda!56859)))

(declare-fun b_lambda!56861 () Bool)

(assert (= b_lambda!56811 (or (and b!1758448 b_free!48609 (= (toChars!4837 (transformation!3459 (rule!5473 token!523))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758455 b_free!48613 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758456 b_free!48617 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1759176 b_free!48625 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) b_lambda!56861)))

(declare-fun b_lambda!56863 () Bool)

(assert (= b_lambda!56827 (or (and b!1758448 b_free!48609) (and b!1758455 b_free!48613 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) (and b!1758456 b_free!48617 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) (and b!1759176 b_free!48625 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) b_lambda!56863)))

(declare-fun b_lambda!56865 () Bool)

(assert (= b_lambda!56813 (or (and b!1758448 b_free!48609) (and b!1758455 b_free!48613 (= (toChars!4837 (transformation!3459 (h!24760 rules!3447))) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) (and b!1758456 b_free!48617 (= (toChars!4837 (transformation!3459 rule!422)) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) (and b!1759176 b_free!48625 (= (toChars!4837 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toChars!4837 (transformation!3459 (rule!5473 token!523))))) b_lambda!56865)))

(declare-fun b_lambda!56867 () Bool)

(assert (= b_lambda!56809 (or (and b!1758448 b_free!48607 (= (toValue!4978 (transformation!3459 (rule!5473 token!523))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758455 b_free!48611 (= (toValue!4978 (transformation!3459 (h!24760 rules!3447))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1758456 b_free!48615 (= (toValue!4978 (transformation!3459 rule!422)) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) (and b!1759176 b_free!48623 (= (toValue!4978 (transformation!3459 (h!24760 (t!163820 rules!3447)))) (toValue!4978 (transformation!3459 (rule!5473 (_1!10885 lt!679485)))))) b_lambda!56867)))

(check-sat (not b_next!49317) (not b!1759159) (not bm!110601) (not b_next!49311) (not b!1758949) (not b!1758752) (not b!1759165) tp_is_empty!7817 (not b!1758917) (not d!537130) (not b!1759043) (not b!1758958) (not b!1758888) (not b_lambda!56859) (not b!1758483) (not b!1758913) (not b!1758916) (not b!1759124) (not b!1758909) (not d!537092) (not d!537200) b_and!132515 (not b!1758732) (not b!1758911) (not b!1758546) (not b!1758748) (not b!1759188) (not b!1759189) (not d!537104) (not b!1758662) b_and!132451 (not b!1758632) (not tb!105813) b_and!132449 (not b!1758954) (not d!537098) (not b!1758893) (not d!537190) (not b!1758895) (not b_next!49315) (not d!537194) (not b!1759022) (not b!1758939) (not b!1758610) (not b!1758715) (not b!1758622) (not d!537218) (not b!1758908) (not b!1758620) b_and!132511 (not b!1758656) (not b!1759175) (not b!1759164) (not b!1758566) (not b_lambda!56831) (not b!1759128) (not b!1758552) (not b!1758536) (not b!1759121) (not b!1758751) (not b!1759023) (not b!1758559) (not b!1758709) (not d!537206) (not b!1758881) (not b!1758607) (not b!1758887) (not b!1759187) (not b!1758714) (not d!537188) b_and!132513 (not b_next!49327) (not b!1758948) (not d!537294) (not b!1758898) (not b!1758553) (not b!1758707) (not b_lambda!56837) (not b!1759025) (not d!537166) (not d!537086) (not b!1759129) (not d!537118) b_and!132453 (not b!1759194) (not b!1759160) (not tb!105855) (not b!1759122) (not d!537082) (not b!1759162) (not bm!110604) (not b!1758733) b_and!132509 (not b!1759146) (not b!1759126) (not b!1759163) (not b_next!49313) (not d!537100) (not d!537186) (not b!1758915) (not d!537072) (not bm!110590) (not b!1759174) (not d!537224) (not d!537178) (not b!1758556) (not b_next!49329) (not b!1758710) (not b!1759018) (not b!1759125) (not b!1759134) (not b!1759190) (not tb!105831) (not d!537068) (not b!1758747) (not b_lambda!56867) (not b!1758750) (not b!1758568) (not d!537094) (not d!537196) (not b!1758969) (not b!1758551) (not b!1758936) (not d!537270) (not b!1758882) b_and!132507 (not b!1758935) (not b!1758711) (not b_lambda!56865) (not b!1758713) (not b!1758731) (not b!1758659) (not d!537278) (not d!537292) (not b!1758621) (not b!1758605) (not b!1758604) (not d!537228) (not d!537076) (not b!1758910) (not d!537220) (not b!1758633) (not b!1759193) (not b!1758486) (not b!1758956) (not b!1759185) (not d!537274) (not b_lambda!56863) (not b!1758905) (not b!1759127) (not d!537244) (not b!1759028) (not b!1758663) (not b!1759186) (not d!537096) (not b!1758537) (not b!1759192) (not d!537208) (not d!537174) (not d!537170) (not d!537106) (not b!1759017) (not d!537078) (not d!537264) (not d!537080) (not b_lambda!56861) (not b!1758953) (not b_lambda!56815) (not bm!110600) (not d!537122) (not d!537296) (not b!1759141) (not b!1758883) (not b!1758892) (not b_lambda!56841) (not b!1758660) (not bm!110593) (not b_next!49319) (not b!1758912) (not b!1758600) (not b_lambda!56829) (not b!1758540) (not b!1759158) (not b_lambda!56857) (not b_next!49321) (not d!537102) (not d!537302) (not b_lambda!56839) (not b!1758599) (not d!537242) (not b!1758708))
(check-sat (not b_next!49317) (not b_next!49311) b_and!132515 (not b_next!49315) b_and!132511 b_and!132453 b_and!132509 (not b_next!49313) (not b_next!49329) b_and!132507 (not b_next!49319) (not b_next!49321) b_and!132449 b_and!132451 b_and!132513 (not b_next!49327))

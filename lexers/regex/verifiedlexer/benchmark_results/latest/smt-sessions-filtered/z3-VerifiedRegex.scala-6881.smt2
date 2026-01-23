; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362472 () Bool)

(assert start!362472)

(declare-fun b!3864347 () Bool)

(declare-fun b_free!104053 () Bool)

(declare-fun b_next!104757 () Bool)

(assert (=> b!3864347 (= b_free!104053 (not b_next!104757))))

(declare-fun tp!1171526 () Bool)

(declare-fun b_and!289419 () Bool)

(assert (=> b!3864347 (= tp!1171526 b_and!289419)))

(declare-fun b_free!104055 () Bool)

(declare-fun b_next!104759 () Bool)

(assert (=> b!3864347 (= b_free!104055 (not b_next!104759))))

(declare-fun tp!1171528 () Bool)

(declare-fun b_and!289421 () Bool)

(assert (=> b!3864347 (= tp!1171528 b_and!289421)))

(declare-fun b!3864342 () Bool)

(declare-fun b_free!104057 () Bool)

(declare-fun b_next!104761 () Bool)

(assert (=> b!3864342 (= b_free!104057 (not b_next!104761))))

(declare-fun tp!1171541 () Bool)

(declare-fun b_and!289423 () Bool)

(assert (=> b!3864342 (= tp!1171541 b_and!289423)))

(declare-fun b_free!104059 () Bool)

(declare-fun b_next!104763 () Bool)

(assert (=> b!3864342 (= b_free!104059 (not b_next!104763))))

(declare-fun tp!1171538 () Bool)

(declare-fun b_and!289425 () Bool)

(assert (=> b!3864342 (= tp!1171538 b_and!289425)))

(declare-fun b!3864344 () Bool)

(declare-fun b_free!104061 () Bool)

(declare-fun b_next!104765 () Bool)

(assert (=> b!3864344 (= b_free!104061 (not b_next!104765))))

(declare-fun tp!1171534 () Bool)

(declare-fun b_and!289427 () Bool)

(assert (=> b!3864344 (= tp!1171534 b_and!289427)))

(declare-fun b_free!104063 () Bool)

(declare-fun b_next!104767 () Bool)

(assert (=> b!3864344 (= b_free!104063 (not b_next!104767))))

(declare-fun tp!1171533 () Bool)

(declare-fun b_and!289429 () Bool)

(assert (=> b!3864344 (= tp!1171533 b_and!289429)))

(declare-fun e!2389419 () Bool)

(declare-fun b!3864330 () Bool)

(declare-fun tp!1171530 () Bool)

(declare-datatypes ((List!41122 0))(
  ( (Nil!40998) (Cons!40998 (h!46418 (_ BitVec 16)) (t!313805 List!41122)) )
))
(declare-datatypes ((TokenValue!6580 0))(
  ( (FloatLiteralValue!13160 (text!46505 List!41122)) (TokenValueExt!6579 (__x!25377 Int)) (Broken!32900 (value!201583 List!41122)) (Object!6703) (End!6580) (Def!6580) (Underscore!6580) (Match!6580) (Else!6580) (Error!6580) (Case!6580) (If!6580) (Extends!6580) (Abstract!6580) (Class!6580) (Val!6580) (DelimiterValue!13160 (del!6640 List!41122)) (KeywordValue!6586 (value!201584 List!41122)) (CommentValue!13160 (value!201585 List!41122)) (WhitespaceValue!13160 (value!201586 List!41122)) (IndentationValue!6580 (value!201587 List!41122)) (String!46617) (Int32!6580) (Broken!32901 (value!201588 List!41122)) (Boolean!6581) (Unit!58668) (OperatorValue!6583 (op!6640 List!41122)) (IdentifierValue!13160 (value!201589 List!41122)) (IdentifierValue!13161 (value!201590 List!41122)) (WhitespaceValue!13161 (value!201591 List!41122)) (True!13160) (False!13160) (Broken!32902 (value!201592 List!41122)) (Broken!32903 (value!201593 List!41122)) (True!13161) (RightBrace!6580) (RightBracket!6580) (Colon!6580) (Null!6580) (Comma!6580) (LeftBracket!6580) (False!13161) (LeftBrace!6580) (ImaginaryLiteralValue!6580 (text!46506 List!41122)) (StringLiteralValue!19740 (value!201594 List!41122)) (EOFValue!6580 (value!201595 List!41122)) (IdentValue!6580 (value!201596 List!41122)) (DelimiterValue!13161 (value!201597 List!41122)) (DedentValue!6580 (value!201598 List!41122)) (NewLineValue!6580 (value!201599 List!41122)) (IntegerValue!19740 (value!201600 (_ BitVec 32)) (text!46507 List!41122)) (IntegerValue!19741 (value!201601 Int) (text!46508 List!41122)) (Times!6580) (Or!6580) (Equal!6580) (Minus!6580) (Broken!32904 (value!201602 List!41122)) (And!6580) (Div!6580) (LessEqual!6580) (Mod!6580) (Concat!17835) (Not!6580) (Plus!6580) (SpaceValue!6580 (value!201603 List!41122)) (IntegerValue!19742 (value!201604 Int) (text!46509 List!41122)) (StringLiteralValue!19741 (text!46510 List!41122)) (FloatLiteralValue!13161 (text!46511 List!41122)) (BytesLiteralValue!6580 (value!201605 List!41122)) (CommentValue!13161 (value!201606 List!41122)) (StringLiteralValue!19742 (value!201607 List!41122)) (ErrorTokenValue!6580 (msg!6641 List!41122)) )
))
(declare-datatypes ((C!22696 0))(
  ( (C!22697 (val!13442 Int)) )
))
(declare-datatypes ((Regex!11255 0))(
  ( (ElementMatch!11255 (c!672632 C!22696)) (Concat!17836 (regOne!23022 Regex!11255) (regTwo!23022 Regex!11255)) (EmptyExpr!11255) (Star!11255 (reg!11584 Regex!11255)) (EmptyLang!11255) (Union!11255 (regOne!23023 Regex!11255) (regTwo!23023 Regex!11255)) )
))
(declare-datatypes ((String!46618 0))(
  ( (String!46619 (value!201608 String)) )
))
(declare-datatypes ((List!41123 0))(
  ( (Nil!40999) (Cons!40999 (h!46419 C!22696) (t!313806 List!41123)) )
))
(declare-datatypes ((IArray!25127 0))(
  ( (IArray!25128 (innerList!12621 List!41123)) )
))
(declare-datatypes ((Conc!12561 0))(
  ( (Node!12561 (left!31554 Conc!12561) (right!31884 Conc!12561) (csize!25352 Int) (cheight!12772 Int)) (Leaf!19443 (xs!15867 IArray!25127) (csize!25353 Int)) (Empty!12561) )
))
(declare-datatypes ((BalanceConc!24716 0))(
  ( (BalanceConc!24717 (c!672633 Conc!12561)) )
))
(declare-datatypes ((TokenValueInjection!12588 0))(
  ( (TokenValueInjection!12589 (toValue!8778 Int) (toChars!8637 Int)) )
))
(declare-datatypes ((Rule!12500 0))(
  ( (Rule!12501 (regex!6350 Regex!11255) (tag!7210 String!46618) (isSeparator!6350 Bool) (transformation!6350 TokenValueInjection!12588)) )
))
(declare-datatypes ((Token!11838 0))(
  ( (Token!11839 (value!201609 TokenValue!6580) (rule!9226 Rule!12500) (size!30829 Int) (originalCharacters!6950 List!41123)) )
))
(declare-datatypes ((List!41124 0))(
  ( (Nil!41000) (Cons!41000 (h!46420 Token!11838) (t!313807 List!41124)) )
))
(declare-fun prefixTokens!80 () List!41124)

(declare-fun e!2389398 () Bool)

(declare-fun inv!55158 (String!46618) Bool)

(declare-fun inv!55161 (TokenValueInjection!12588) Bool)

(assert (=> b!3864330 (= e!2389419 (and tp!1171530 (inv!55158 (tag!7210 (rule!9226 (h!46420 prefixTokens!80)))) (inv!55161 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) e!2389398))))

(declare-fun b!3864331 () Bool)

(declare-fun e!2389404 () Bool)

(declare-fun e!2389395 () Bool)

(assert (=> b!3864331 (= e!2389404 e!2389395)))

(declare-fun res!1564954 () Bool)

(assert (=> b!3864331 (=> res!1564954 e!2389395)))

(declare-fun lt!1343220 () Int)

(declare-fun lt!1343204 () Int)

(assert (=> b!3864331 (= res!1564954 (>= lt!1343220 lt!1343204))))

(declare-fun suffix!1176 () List!41123)

(declare-fun size!30830 (List!41123) Int)

(assert (=> b!3864331 (= lt!1343204 (size!30830 suffix!1176))))

(declare-datatypes ((tuple2!40210 0))(
  ( (tuple2!40211 (_1!23239 Token!11838) (_2!23239 List!41123)) )
))
(declare-datatypes ((Option!8768 0))(
  ( (None!8767) (Some!8767 (v!39065 tuple2!40210)) )
))
(declare-fun lt!1343228 () Option!8768)

(assert (=> b!3864331 (= lt!1343220 (size!30830 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun b!3864332 () Bool)

(declare-fun res!1564948 () Bool)

(assert (=> b!3864332 (=> res!1564948 e!2389404)))

(declare-datatypes ((tuple2!40212 0))(
  ( (tuple2!40213 (_1!23240 List!41124) (_2!23240 List!41123)) )
))
(declare-fun lt!1343226 () tuple2!40212)

(declare-fun lt!1343221 () tuple2!40212)

(declare-fun ++!10457 (List!41124 List!41124) List!41124)

(assert (=> b!3864332 (= res!1564948 (not (= lt!1343226 (tuple2!40213 (++!10457 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000) (_1!23240 lt!1343221)) (_2!23240 lt!1343221)))))))

(declare-fun res!1564951 () Bool)

(declare-fun e!2389411 () Bool)

(assert (=> start!362472 (=> (not res!1564951) (not e!2389411))))

(declare-datatypes ((LexerInterface!5939 0))(
  ( (LexerInterfaceExt!5936 (__x!25378 Int)) (Lexer!5937) )
))
(declare-fun thiss!20629 () LexerInterface!5939)

(get-info :version)

(assert (=> start!362472 (= res!1564951 ((_ is Lexer!5937) thiss!20629))))

(assert (=> start!362472 e!2389411))

(declare-fun e!2389410 () Bool)

(assert (=> start!362472 e!2389410))

(assert (=> start!362472 true))

(declare-fun e!2389428 () Bool)

(assert (=> start!362472 e!2389428))

(declare-fun e!2389418 () Bool)

(assert (=> start!362472 e!2389418))

(declare-fun e!2389423 () Bool)

(assert (=> start!362472 e!2389423))

(declare-fun e!2389400 () Bool)

(assert (=> start!362472 e!2389400))

(declare-fun e!2389397 () Bool)

(assert (=> start!362472 e!2389397))

(declare-fun b!3864333 () Bool)

(declare-datatypes ((Unit!58669 0))(
  ( (Unit!58670) )
))
(declare-fun e!2389412 () Unit!58669)

(declare-fun e!2389426 () Unit!58669)

(assert (=> b!3864333 (= e!2389412 e!2389426)))

(declare-fun lt!1343206 () List!41124)

(declare-fun tail!5873 (List!41124) List!41124)

(assert (=> b!3864333 (= lt!1343206 (tail!5873 prefixTokens!80))))

(declare-fun c!672631 () Bool)

(declare-fun isEmpty!24300 (List!41124) Bool)

(assert (=> b!3864333 (= c!672631 (isEmpty!24300 lt!1343206))))

(declare-fun tp!1171537 () Bool)

(declare-fun e!2389405 () Bool)

(declare-fun suffixTokens!72 () List!41124)

(declare-fun e!2389403 () Bool)

(declare-fun b!3864334 () Bool)

(declare-fun inv!21 (TokenValue!6580) Bool)

(assert (=> b!3864334 (= e!2389403 (and (inv!21 (value!201609 (h!46420 suffixTokens!72))) e!2389405 tp!1171537))))

(declare-fun b!3864335 () Bool)

(declare-fun res!1564955 () Bool)

(assert (=> b!3864335 (=> (not res!1564955) (not e!2389411))))

(declare-datatypes ((List!41125 0))(
  ( (Nil!41001) (Cons!41001 (h!46421 Rule!12500) (t!313808 List!41125)) )
))
(declare-fun rules!2768 () List!41125)

(declare-fun isEmpty!24301 (List!41125) Bool)

(assert (=> b!3864335 (= res!1564955 (not (isEmpty!24301 rules!2768)))))

(declare-fun b!3864336 () Bool)

(declare-fun e!2389421 () Bool)

(assert (=> b!3864336 e!2389421))

(declare-fun res!1564943 () Bool)

(assert (=> b!3864336 (=> (not res!1564943) (not e!2389421))))

(declare-fun call!282606 () tuple2!40212)

(declare-fun lt!1343223 () tuple2!40212)

(assert (=> b!3864336 (= res!1564943 (not (= call!282606 lt!1343223)))))

(declare-fun suffixResult!91 () List!41123)

(declare-fun lt!1343229 () Unit!58669)

(declare-fun lt!1343224 () tuple2!40210)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!10 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41124 List!41123) Unit!58669)

(assert (=> b!3864336 (= lt!1343229 (lemmaLexWithSmallerInputCannotProduceSameResults!10 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91))))

(assert (=> b!3864336 (= (_2!23239 (v!39065 lt!1343228)) (_2!23239 lt!1343224))))

(declare-fun lt!1343222 () Unit!58669)

(declare-fun lt!1343209 () List!41123)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!434 (List!41123 List!41123 List!41123 List!41123) Unit!58669)

(assert (=> b!3864336 (= lt!1343222 (lemmaConcatSameAndSameSizesThenSameLists!434 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 (_2!23239 lt!1343224)))))

(declare-fun Unit!58671 () Unit!58669)

(assert (=> b!3864336 (= e!2389426 Unit!58671)))

(declare-fun b!3864337 () Bool)

(declare-fun e!2389396 () Bool)

(assert (=> b!3864337 (= e!2389411 e!2389396)))

(declare-fun res!1564950 () Bool)

(assert (=> b!3864337 (=> (not res!1564950) (not e!2389396))))

(declare-fun lt!1343212 () List!41124)

(assert (=> b!3864337 (= res!1564950 (= lt!1343226 (tuple2!40213 lt!1343212 suffixResult!91)))))

(declare-fun lt!1343227 () List!41123)

(declare-fun lexList!1707 (LexerInterface!5939 List!41125 List!41123) tuple2!40212)

(assert (=> b!3864337 (= lt!1343226 (lexList!1707 thiss!20629 rules!2768 lt!1343227))))

(assert (=> b!3864337 (= lt!1343212 (++!10457 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41123)

(declare-fun ++!10458 (List!41123 List!41123) List!41123)

(assert (=> b!3864337 (= lt!1343227 (++!10458 prefix!426 suffix!1176))))

(declare-fun b!3864338 () Bool)

(declare-fun e!2389399 () Bool)

(declare-fun tp!1171542 () Bool)

(assert (=> b!3864338 (= e!2389418 (and e!2389399 tp!1171542))))

(declare-fun b!3864339 () Bool)

(declare-fun res!1564953 () Bool)

(assert (=> b!3864339 (=> res!1564953 e!2389404)))

(assert (=> b!3864339 (= res!1564953 (or (not (= lt!1343221 (tuple2!40213 (_1!23240 lt!1343221) (_2!23240 lt!1343221)))) (= (_2!23239 (v!39065 lt!1343228)) suffix!1176)))))

(declare-fun e!2389424 () Bool)

(declare-fun b!3864340 () Bool)

(declare-fun tp!1171532 () Bool)

(assert (=> b!3864340 (= e!2389399 (and tp!1171532 (inv!55158 (tag!7210 (h!46421 rules!2768))) (inv!55161 (transformation!6350 (h!46421 rules!2768))) e!2389424))))

(declare-fun tp!1171536 () Bool)

(declare-fun e!2389422 () Bool)

(declare-fun b!3864341 () Bool)

(assert (=> b!3864341 (= e!2389422 (and (inv!21 (value!201609 (h!46420 prefixTokens!80))) e!2389419 tp!1171536))))

(assert (=> b!3864342 (= e!2389424 (and tp!1171541 tp!1171538))))

(declare-fun b!3864343 () Bool)

(declare-fun e!2389417 () Bool)

(declare-fun e!2389409 () Bool)

(assert (=> b!3864343 (= e!2389417 e!2389409)))

(declare-fun res!1564945 () Bool)

(assert (=> b!3864343 (=> res!1564945 e!2389409)))

(declare-fun head!8162 (List!41124) Token!11838)

(assert (=> b!3864343 (= res!1564945 (not (= (_1!23239 lt!1343224) (head!8162 prefixTokens!80))))))

(declare-fun get!13565 (Option!8768) tuple2!40210)

(assert (=> b!3864343 (= lt!1343224 (get!13565 lt!1343228))))

(declare-fun e!2389416 () Bool)

(assert (=> b!3864344 (= e!2389416 (and tp!1171534 tp!1171533))))

(declare-fun b!3864345 () Bool)

(assert (=> b!3864345 (= e!2389421 false)))

(declare-fun b!3864346 () Bool)

(declare-fun e!2389406 () Bool)

(assert (=> b!3864346 e!2389406))

(declare-fun res!1564957 () Bool)

(assert (=> b!3864346 (=> (not res!1564957) (not e!2389406))))

(assert (=> b!3864346 (= res!1564957 (not (= call!282606 (tuple2!40213 (++!10457 lt!1343206 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1343211 () Unit!58669)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!10 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41124 List!41123 List!41124) Unit!58669)

(assert (=> b!3864346 (= lt!1343211 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!10 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91 lt!1343206))))

(declare-fun Unit!58672 () Unit!58669)

(assert (=> b!3864346 (= e!2389426 Unit!58672)))

(assert (=> b!3864347 (= e!2389398 (and tp!1171526 tp!1171528))))

(declare-fun b!3864348 () Bool)

(declare-fun e!2389415 () Bool)

(assert (=> b!3864348 (= e!2389415 e!2389417)))

(declare-fun res!1564946 () Bool)

(assert (=> b!3864348 (=> res!1564946 e!2389417)))

(declare-fun matchR!5402 (Regex!11255 List!41123) Bool)

(assert (=> b!3864348 (= res!1564946 (not (matchR!5402 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) lt!1343209)))))

(declare-fun lt!1343225 () TokenValue!6580)

(declare-fun lt!1343217 () Int)

(declare-fun maxPrefixOneRule!2325 (LexerInterface!5939 Rule!12500 List!41123) Option!8768)

(assert (=> b!3864348 (= (maxPrefixOneRule!2325 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) lt!1343227) (Some!8767 (tuple2!40211 (Token!11839 lt!1343225 (rule!9226 (_1!23239 (v!39065 lt!1343228))) lt!1343217 lt!1343209) (_2!23239 (v!39065 lt!1343228)))))))

(declare-fun lt!1343215 () Unit!58669)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1223 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41123 Rule!12500) Unit!58669)

(assert (=> b!3864348 (= lt!1343215 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1223 thiss!20629 rules!2768 lt!1343209 lt!1343227 (_2!23239 (v!39065 lt!1343228)) (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))

(declare-fun b!3864349 () Bool)

(declare-fun res!1564942 () Bool)

(assert (=> b!3864349 (=> (not res!1564942) (not e!2389411))))

(assert (=> b!3864349 (= res!1564942 (not (isEmpty!24300 prefixTokens!80)))))

(declare-fun b!3864350 () Bool)

(declare-fun e!2389413 () Bool)

(assert (=> b!3864350 (= e!2389413 (not e!2389404))))

(declare-fun res!1564947 () Bool)

(assert (=> b!3864350 (=> res!1564947 e!2389404)))

(declare-fun lt!1343207 () List!41123)

(assert (=> b!3864350 (= res!1564947 (not (= lt!1343207 lt!1343227)))))

(assert (=> b!3864350 (= lt!1343221 (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun lt!1343205 () List!41123)

(assert (=> b!3864350 (and (= (size!30829 (_1!23239 (v!39065 lt!1343228))) lt!1343217) (= (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228))) lt!1343209) (= (v!39065 lt!1343228) (tuple2!40211 (Token!11839 lt!1343225 (rule!9226 (_1!23239 (v!39065 lt!1343228))) lt!1343217 lt!1343209) lt!1343205)))))

(assert (=> b!3864350 (= lt!1343217 (size!30830 lt!1343209))))

(declare-fun e!2389420 () Bool)

(assert (=> b!3864350 e!2389420))

(declare-fun res!1564956 () Bool)

(assert (=> b!3864350 (=> (not res!1564956) (not e!2389420))))

(assert (=> b!3864350 (= res!1564956 (= (value!201609 (_1!23239 (v!39065 lt!1343228))) lt!1343225))))

(declare-fun apply!9593 (TokenValueInjection!12588 BalanceConc!24716) TokenValue!6580)

(declare-fun seqFromList!4621 (List!41123) BalanceConc!24716)

(assert (=> b!3864350 (= lt!1343225 (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (seqFromList!4621 lt!1343209)))))

(assert (=> b!3864350 (= (_2!23239 (v!39065 lt!1343228)) lt!1343205)))

(declare-fun lt!1343203 () Unit!58669)

(declare-fun lemmaSamePrefixThenSameSuffix!1670 (List!41123 List!41123 List!41123 List!41123 List!41123) Unit!58669)

(assert (=> b!3864350 (= lt!1343203 (lemmaSamePrefixThenSameSuffix!1670 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 lt!1343205 lt!1343227))))

(declare-fun getSuffix!1904 (List!41123 List!41123) List!41123)

(assert (=> b!3864350 (= lt!1343205 (getSuffix!1904 lt!1343227 lt!1343209))))

(declare-fun isPrefix!3449 (List!41123 List!41123) Bool)

(assert (=> b!3864350 (isPrefix!3449 lt!1343209 lt!1343207)))

(assert (=> b!3864350 (= lt!1343207 (++!10458 lt!1343209 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun lt!1343208 () Unit!58669)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2312 (List!41123 List!41123) Unit!58669)

(assert (=> b!3864350 (= lt!1343208 (lemmaConcatTwoListThenFirstIsPrefix!2312 lt!1343209 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun list!15258 (BalanceConc!24716) List!41123)

(declare-fun charsOf!4178 (Token!11838) BalanceConc!24716)

(assert (=> b!3864350 (= lt!1343209 (list!15258 (charsOf!4178 (_1!23239 (v!39065 lt!1343228)))))))

(declare-fun ruleValid!2302 (LexerInterface!5939 Rule!12500) Bool)

(assert (=> b!3864350 (ruleValid!2302 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))

(declare-fun lt!1343210 () Unit!58669)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1382 (LexerInterface!5939 Rule!12500 List!41125) Unit!58669)

(assert (=> b!3864350 (= lt!1343210 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1382 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) rules!2768))))

(declare-fun lt!1343218 () Unit!58669)

(declare-fun lemmaCharactersSize!1011 (Token!11838) Unit!58669)

(assert (=> b!3864350 (= lt!1343218 (lemmaCharactersSize!1011 (_1!23239 (v!39065 lt!1343228))))))

(declare-fun b!3864351 () Bool)

(declare-fun lt!1343219 () Bool)

(assert (=> b!3864351 (= e!2389409 (or lt!1343219 (not (= prefixTokens!80 Nil!41000))))))

(declare-fun lt!1343213 () Unit!58669)

(assert (=> b!3864351 (= lt!1343213 e!2389412)))

(declare-fun c!672630 () Bool)

(assert (=> b!3864351 (= c!672630 lt!1343219)))

(assert (=> b!3864351 (= lt!1343219 (< (size!30830 (_2!23239 lt!1343224)) lt!1343204))))

(declare-fun b!3864352 () Bool)

(declare-fun e!2389425 () Bool)

(assert (=> b!3864352 (= e!2389425 e!2389415)))

(declare-fun res!1564944 () Bool)

(assert (=> b!3864352 (=> res!1564944 e!2389415)))

(declare-fun lt!1343214 () Int)

(declare-fun lt!1343216 () Int)

(assert (=> b!3864352 (= res!1564944 (or (not (= (+ lt!1343216 lt!1343204) lt!1343214)) (<= lt!1343217 lt!1343216)))))

(assert (=> b!3864352 (= lt!1343216 (size!30830 prefix!426))))

(declare-fun b!3864353 () Bool)

(declare-fun tp!1171540 () Bool)

(declare-fun inv!55162 (Token!11838) Bool)

(assert (=> b!3864353 (= e!2389423 (and (inv!55162 (h!46420 prefixTokens!80)) e!2389422 tp!1171540))))

(declare-fun b!3864354 () Bool)

(declare-fun res!1564941 () Bool)

(assert (=> b!3864354 (=> (not res!1564941) (not e!2389411))))

(declare-fun isEmpty!24302 (List!41123) Bool)

(assert (=> b!3864354 (= res!1564941 (not (isEmpty!24302 prefix!426)))))

(declare-fun b!3864355 () Bool)

(declare-fun tp!1171531 () Bool)

(assert (=> b!3864355 (= e!2389400 (and (inv!55162 (h!46420 suffixTokens!72)) e!2389403 tp!1171531))))

(declare-fun b!3864356 () Bool)

(declare-fun res!1564952 () Bool)

(assert (=> b!3864356 (=> (not res!1564952) (not e!2389411))))

(declare-fun rulesInvariant!5282 (LexerInterface!5939 List!41125) Bool)

(assert (=> b!3864356 (= res!1564952 (rulesInvariant!5282 thiss!20629 rules!2768))))

(declare-fun b!3864357 () Bool)

(declare-fun e!2389427 () Bool)

(assert (=> b!3864357 (= e!2389427 e!2389413)))

(declare-fun res!1564959 () Bool)

(assert (=> b!3864357 (=> (not res!1564959) (not e!2389413))))

(assert (=> b!3864357 (= res!1564959 ((_ is Some!8767) lt!1343228))))

(declare-fun maxPrefix!3243 (LexerInterface!5939 List!41125 List!41123) Option!8768)

(assert (=> b!3864357 (= lt!1343228 (maxPrefix!3243 thiss!20629 rules!2768 lt!1343227))))

(declare-fun b!3864358 () Bool)

(assert (=> b!3864358 (= e!2389396 e!2389427)))

(declare-fun res!1564958 () Bool)

(assert (=> b!3864358 (=> (not res!1564958) (not e!2389427))))

(assert (=> b!3864358 (= res!1564958 (= (lexList!1707 thiss!20629 rules!2768 suffix!1176) lt!1343223))))

(assert (=> b!3864358 (= lt!1343223 (tuple2!40213 suffixTokens!72 suffixResult!91))))

(declare-fun b!3864359 () Bool)

(assert (=> b!3864359 (= e!2389395 e!2389425)))

(declare-fun res!1564949 () Bool)

(assert (=> b!3864359 (=> res!1564949 e!2389425)))

(assert (=> b!3864359 (= res!1564949 (not (= (+ lt!1343217 lt!1343220) lt!1343214)))))

(assert (=> b!3864359 (= lt!1343214 (size!30830 lt!1343227))))

(declare-fun b!3864360 () Bool)

(declare-fun tp_is_empty!19481 () Bool)

(declare-fun tp!1171535 () Bool)

(assert (=> b!3864360 (= e!2389410 (and tp_is_empty!19481 tp!1171535))))

(declare-fun b!3864361 () Bool)

(declare-fun Unit!58673 () Unit!58669)

(assert (=> b!3864361 (= e!2389412 Unit!58673)))

(declare-fun b!3864362 () Bool)

(assert (=> b!3864362 (= e!2389406 false)))

(declare-fun b!3864363 () Bool)

(declare-fun tp!1171527 () Bool)

(assert (=> b!3864363 (= e!2389397 (and tp_is_empty!19481 tp!1171527))))

(declare-fun b!3864364 () Bool)

(declare-fun tp!1171529 () Bool)

(assert (=> b!3864364 (= e!2389428 (and tp_is_empty!19481 tp!1171529))))

(declare-fun tp!1171539 () Bool)

(declare-fun b!3864365 () Bool)

(assert (=> b!3864365 (= e!2389405 (and tp!1171539 (inv!55158 (tag!7210 (rule!9226 (h!46420 suffixTokens!72)))) (inv!55161 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) e!2389416))))

(declare-fun bm!282601 () Bool)

(assert (=> bm!282601 (= call!282606 (lexList!1707 thiss!20629 rules!2768 (_2!23239 lt!1343224)))))

(declare-fun b!3864366 () Bool)

(assert (=> b!3864366 (= e!2389420 (= (size!30829 (_1!23239 (v!39065 lt!1343228))) (size!30830 (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228))))))))

(assert (= (and start!362472 res!1564951) b!3864335))

(assert (= (and b!3864335 res!1564955) b!3864356))

(assert (= (and b!3864356 res!1564952) b!3864349))

(assert (= (and b!3864349 res!1564942) b!3864354))

(assert (= (and b!3864354 res!1564941) b!3864337))

(assert (= (and b!3864337 res!1564950) b!3864358))

(assert (= (and b!3864358 res!1564958) b!3864357))

(assert (= (and b!3864357 res!1564959) b!3864350))

(assert (= (and b!3864350 res!1564956) b!3864366))

(assert (= (and b!3864350 (not res!1564947)) b!3864332))

(assert (= (and b!3864332 (not res!1564948)) b!3864339))

(assert (= (and b!3864339 (not res!1564953)) b!3864331))

(assert (= (and b!3864331 (not res!1564954)) b!3864359))

(assert (= (and b!3864359 (not res!1564949)) b!3864352))

(assert (= (and b!3864352 (not res!1564944)) b!3864348))

(assert (= (and b!3864348 (not res!1564946)) b!3864343))

(assert (= (and b!3864343 (not res!1564945)) b!3864351))

(assert (= (and b!3864351 c!672630) b!3864333))

(assert (= (and b!3864351 (not c!672630)) b!3864361))

(assert (= (and b!3864333 c!672631) b!3864336))

(assert (= (and b!3864333 (not c!672631)) b!3864346))

(assert (= (and b!3864336 res!1564943) b!3864345))

(assert (= (and b!3864346 res!1564957) b!3864362))

(assert (= (or b!3864336 b!3864346) bm!282601))

(assert (= (and start!362472 ((_ is Cons!40999) suffixResult!91)) b!3864360))

(assert (= (and start!362472 ((_ is Cons!40999) suffix!1176)) b!3864364))

(assert (= b!3864340 b!3864342))

(assert (= b!3864338 b!3864340))

(assert (= (and start!362472 ((_ is Cons!41001) rules!2768)) b!3864338))

(assert (= b!3864330 b!3864347))

(assert (= b!3864341 b!3864330))

(assert (= b!3864353 b!3864341))

(assert (= (and start!362472 ((_ is Cons!41000) prefixTokens!80)) b!3864353))

(assert (= b!3864365 b!3864344))

(assert (= b!3864334 b!3864365))

(assert (= b!3864355 b!3864334))

(assert (= (and start!362472 ((_ is Cons!41000) suffixTokens!72)) b!3864355))

(assert (= (and start!362472 ((_ is Cons!40999) prefix!426)) b!3864363))

(declare-fun m!4419777 () Bool)

(assert (=> b!3864343 m!4419777))

(declare-fun m!4419779 () Bool)

(assert (=> b!3864343 m!4419779))

(declare-fun m!4419781 () Bool)

(assert (=> b!3864351 m!4419781))

(declare-fun m!4419783 () Bool)

(assert (=> b!3864359 m!4419783))

(declare-fun m!4419785 () Bool)

(assert (=> b!3864340 m!4419785))

(declare-fun m!4419787 () Bool)

(assert (=> b!3864340 m!4419787))

(declare-fun m!4419789 () Bool)

(assert (=> b!3864348 m!4419789))

(declare-fun m!4419791 () Bool)

(assert (=> b!3864348 m!4419791))

(declare-fun m!4419793 () Bool)

(assert (=> b!3864348 m!4419793))

(declare-fun m!4419795 () Bool)

(assert (=> b!3864357 m!4419795))

(declare-fun m!4419797 () Bool)

(assert (=> b!3864352 m!4419797))

(declare-fun m!4419799 () Bool)

(assert (=> b!3864334 m!4419799))

(declare-fun m!4419801 () Bool)

(assert (=> b!3864365 m!4419801))

(declare-fun m!4419803 () Bool)

(assert (=> b!3864365 m!4419803))

(declare-fun m!4419805 () Bool)

(assert (=> b!3864346 m!4419805))

(declare-fun m!4419807 () Bool)

(assert (=> b!3864346 m!4419807))

(declare-fun m!4419809 () Bool)

(assert (=> b!3864349 m!4419809))

(declare-fun m!4419811 () Bool)

(assert (=> b!3864353 m!4419811))

(declare-fun m!4419813 () Bool)

(assert (=> b!3864341 m!4419813))

(declare-fun m!4419815 () Bool)

(assert (=> b!3864332 m!4419815))

(declare-fun m!4419817 () Bool)

(assert (=> b!3864355 m!4419817))

(declare-fun m!4419819 () Bool)

(assert (=> b!3864335 m!4419819))

(declare-fun m!4419821 () Bool)

(assert (=> b!3864337 m!4419821))

(declare-fun m!4419823 () Bool)

(assert (=> b!3864337 m!4419823))

(declare-fun m!4419825 () Bool)

(assert (=> b!3864337 m!4419825))

(declare-fun m!4419827 () Bool)

(assert (=> bm!282601 m!4419827))

(declare-fun m!4419829 () Bool)

(assert (=> b!3864356 m!4419829))

(declare-fun m!4419831 () Bool)

(assert (=> b!3864350 m!4419831))

(declare-fun m!4419833 () Bool)

(assert (=> b!3864350 m!4419833))

(declare-fun m!4419835 () Bool)

(assert (=> b!3864350 m!4419835))

(declare-fun m!4419837 () Bool)

(assert (=> b!3864350 m!4419837))

(declare-fun m!4419839 () Bool)

(assert (=> b!3864350 m!4419839))

(declare-fun m!4419841 () Bool)

(assert (=> b!3864350 m!4419841))

(declare-fun m!4419843 () Bool)

(assert (=> b!3864350 m!4419843))

(declare-fun m!4419845 () Bool)

(assert (=> b!3864350 m!4419845))

(assert (=> b!3864350 m!4419831))

(declare-fun m!4419847 () Bool)

(assert (=> b!3864350 m!4419847))

(assert (=> b!3864350 m!4419845))

(declare-fun m!4419849 () Bool)

(assert (=> b!3864350 m!4419849))

(declare-fun m!4419851 () Bool)

(assert (=> b!3864350 m!4419851))

(declare-fun m!4419853 () Bool)

(assert (=> b!3864350 m!4419853))

(declare-fun m!4419855 () Bool)

(assert (=> b!3864350 m!4419855))

(declare-fun m!4419857 () Bool)

(assert (=> b!3864350 m!4419857))

(declare-fun m!4419859 () Bool)

(assert (=> b!3864336 m!4419859))

(declare-fun m!4419861 () Bool)

(assert (=> b!3864336 m!4419861))

(declare-fun m!4419863 () Bool)

(assert (=> b!3864354 m!4419863))

(declare-fun m!4419865 () Bool)

(assert (=> b!3864333 m!4419865))

(declare-fun m!4419867 () Bool)

(assert (=> b!3864333 m!4419867))

(declare-fun m!4419869 () Bool)

(assert (=> b!3864358 m!4419869))

(declare-fun m!4419871 () Bool)

(assert (=> b!3864330 m!4419871))

(declare-fun m!4419873 () Bool)

(assert (=> b!3864330 m!4419873))

(declare-fun m!4419875 () Bool)

(assert (=> b!3864366 m!4419875))

(declare-fun m!4419877 () Bool)

(assert (=> b!3864331 m!4419877))

(declare-fun m!4419879 () Bool)

(assert (=> b!3864331 m!4419879))

(check-sat (not b!3864350) (not b!3864353) (not b!3864334) tp_is_empty!19481 (not b!3864355) (not b_next!104765) (not b_next!104759) (not b!3864366) (not b!3864332) (not b!3864341) (not b!3864354) (not b!3864360) (not b!3864335) (not b_next!104757) (not b!3864359) b_and!289425 (not b!3864336) (not b!3864337) b_and!289419 (not b!3864356) (not b!3864340) (not b!3864348) (not b!3864357) (not b!3864331) (not b!3864365) (not b!3864330) (not bm!282601) (not b!3864338) b_and!289427 b_and!289423 b_and!289421 (not b!3864346) (not b!3864364) (not b!3864363) (not b_next!104761) (not b!3864351) (not b_next!104763) b_and!289429 (not b!3864358) (not b!3864333) (not b!3864349) (not b!3864343) (not b_next!104767) (not b!3864352))
(check-sat b_and!289425 b_and!289419 (not b_next!104765) (not b_next!104759) (not b_next!104761) (not b_next!104767) (not b_next!104757) b_and!289427 b_and!289423 b_and!289421 (not b_next!104763) b_and!289429)
(get-model)

(declare-fun d!1145046 () Bool)

(assert (=> d!1145046 (= (isEmpty!24302 prefix!426) ((_ is Nil!40999) prefix!426))))

(assert (=> b!3864354 d!1145046))

(declare-fun d!1145048 () Bool)

(declare-fun res!1564971 () Bool)

(declare-fun e!2389431 () Bool)

(assert (=> d!1145048 (=> (not res!1564971) (not e!2389431))))

(assert (=> d!1145048 (= res!1564971 (not (isEmpty!24302 (originalCharacters!6950 (h!46420 prefixTokens!80)))))))

(assert (=> d!1145048 (= (inv!55162 (h!46420 prefixTokens!80)) e!2389431)))

(declare-fun b!3864371 () Bool)

(declare-fun res!1564972 () Bool)

(assert (=> b!3864371 (=> (not res!1564972) (not e!2389431))))

(declare-fun dynLambda!17671 (Int TokenValue!6580) BalanceConc!24716)

(assert (=> b!3864371 (= res!1564972 (= (originalCharacters!6950 (h!46420 prefixTokens!80)) (list!15258 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (value!201609 (h!46420 prefixTokens!80))))))))

(declare-fun b!3864372 () Bool)

(assert (=> b!3864372 (= e!2389431 (= (size!30829 (h!46420 prefixTokens!80)) (size!30830 (originalCharacters!6950 (h!46420 prefixTokens!80)))))))

(assert (= (and d!1145048 res!1564971) b!3864371))

(assert (= (and b!3864371 res!1564972) b!3864372))

(declare-fun b_lambda!112935 () Bool)

(assert (=> (not b_lambda!112935) (not b!3864371)))

(declare-fun t!313810 () Bool)

(declare-fun tb!223985 () Bool)

(assert (=> (and b!3864347 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313810) tb!223985))

(declare-fun b!3864377 () Bool)

(declare-fun e!2389434 () Bool)

(declare-fun tp!1171545 () Bool)

(declare-fun inv!55163 (Conc!12561) Bool)

(assert (=> b!3864377 (= e!2389434 (and (inv!55163 (c!672633 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (value!201609 (h!46420 prefixTokens!80))))) tp!1171545))))

(declare-fun result!272794 () Bool)

(declare-fun inv!55164 (BalanceConc!24716) Bool)

(assert (=> tb!223985 (= result!272794 (and (inv!55164 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (value!201609 (h!46420 prefixTokens!80)))) e!2389434))))

(assert (= tb!223985 b!3864377))

(declare-fun m!4419881 () Bool)

(assert (=> b!3864377 m!4419881))

(declare-fun m!4419883 () Bool)

(assert (=> tb!223985 m!4419883))

(assert (=> b!3864371 t!313810))

(declare-fun b_and!289431 () Bool)

(assert (= b_and!289421 (and (=> t!313810 result!272794) b_and!289431)))

(declare-fun t!313812 () Bool)

(declare-fun tb!223987 () Bool)

(assert (=> (and b!3864342 (= (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313812) tb!223987))

(declare-fun result!272798 () Bool)

(assert (= result!272798 result!272794))

(assert (=> b!3864371 t!313812))

(declare-fun b_and!289433 () Bool)

(assert (= b_and!289425 (and (=> t!313812 result!272798) b_and!289433)))

(declare-fun tb!223989 () Bool)

(declare-fun t!313814 () Bool)

(assert (=> (and b!3864344 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313814) tb!223989))

(declare-fun result!272800 () Bool)

(assert (= result!272800 result!272794))

(assert (=> b!3864371 t!313814))

(declare-fun b_and!289435 () Bool)

(assert (= b_and!289429 (and (=> t!313814 result!272800) b_and!289435)))

(declare-fun m!4419885 () Bool)

(assert (=> d!1145048 m!4419885))

(declare-fun m!4419887 () Bool)

(assert (=> b!3864371 m!4419887))

(assert (=> b!3864371 m!4419887))

(declare-fun m!4419889 () Bool)

(assert (=> b!3864371 m!4419889))

(declare-fun m!4419891 () Bool)

(assert (=> b!3864372 m!4419891))

(assert (=> b!3864353 d!1145048))

(declare-fun b!3864392 () Bool)

(declare-fun e!2389443 () List!41124)

(assert (=> b!3864392 (= e!2389443 (_1!23240 lt!1343221))))

(declare-fun b!3864393 () Bool)

(assert (=> b!3864393 (= e!2389443 (Cons!41000 (h!46420 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000)) (++!10457 (t!313807 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000)) (_1!23240 lt!1343221))))))

(declare-fun b!3864394 () Bool)

(declare-fun res!1564977 () Bool)

(declare-fun e!2389442 () Bool)

(assert (=> b!3864394 (=> (not res!1564977) (not e!2389442))))

(declare-fun lt!1343235 () List!41124)

(declare-fun size!30832 (List!41124) Int)

(assert (=> b!3864394 (= res!1564977 (= (size!30832 lt!1343235) (+ (size!30832 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000)) (size!30832 (_1!23240 lt!1343221)))))))

(declare-fun d!1145050 () Bool)

(assert (=> d!1145050 e!2389442))

(declare-fun res!1564978 () Bool)

(assert (=> d!1145050 (=> (not res!1564978) (not e!2389442))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6118 (List!41124) (InoxSet Token!11838))

(assert (=> d!1145050 (= res!1564978 (= (content!6118 lt!1343235) ((_ map or) (content!6118 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000)) (content!6118 (_1!23240 lt!1343221)))))))

(assert (=> d!1145050 (= lt!1343235 e!2389443)))

(declare-fun c!672639 () Bool)

(assert (=> d!1145050 (= c!672639 ((_ is Nil!41000) (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000)))))

(assert (=> d!1145050 (= (++!10457 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000) (_1!23240 lt!1343221)) lt!1343235)))

(declare-fun b!3864395 () Bool)

(assert (=> b!3864395 (= e!2389442 (or (not (= (_1!23240 lt!1343221) Nil!41000)) (= lt!1343235 (Cons!41000 (_1!23239 (v!39065 lt!1343228)) Nil!41000))))))

(assert (= (and d!1145050 c!672639) b!3864392))

(assert (= (and d!1145050 (not c!672639)) b!3864393))

(assert (= (and d!1145050 res!1564978) b!3864394))

(assert (= (and b!3864394 res!1564977) b!3864395))

(declare-fun m!4419895 () Bool)

(assert (=> b!3864393 m!4419895))

(declare-fun m!4419897 () Bool)

(assert (=> b!3864394 m!4419897))

(declare-fun m!4419899 () Bool)

(assert (=> b!3864394 m!4419899))

(declare-fun m!4419901 () Bool)

(assert (=> b!3864394 m!4419901))

(declare-fun m!4419903 () Bool)

(assert (=> d!1145050 m!4419903))

(declare-fun m!4419905 () Bool)

(assert (=> d!1145050 m!4419905))

(declare-fun m!4419907 () Bool)

(assert (=> d!1145050 m!4419907))

(assert (=> b!3864332 d!1145050))

(declare-fun d!1145056 () Bool)

(declare-fun lt!1343238 () Int)

(assert (=> d!1145056 (>= lt!1343238 0)))

(declare-fun e!2389446 () Int)

(assert (=> d!1145056 (= lt!1343238 e!2389446)))

(declare-fun c!672642 () Bool)

(assert (=> d!1145056 (= c!672642 ((_ is Nil!40999) suffix!1176))))

(assert (=> d!1145056 (= (size!30830 suffix!1176) lt!1343238)))

(declare-fun b!3864400 () Bool)

(assert (=> b!3864400 (= e!2389446 0)))

(declare-fun b!3864401 () Bool)

(assert (=> b!3864401 (= e!2389446 (+ 1 (size!30830 (t!313806 suffix!1176))))))

(assert (= (and d!1145056 c!672642) b!3864400))

(assert (= (and d!1145056 (not c!672642)) b!3864401))

(declare-fun m!4419909 () Bool)

(assert (=> b!3864401 m!4419909))

(assert (=> b!3864331 d!1145056))

(declare-fun d!1145058 () Bool)

(declare-fun lt!1343239 () Int)

(assert (=> d!1145058 (>= lt!1343239 0)))

(declare-fun e!2389447 () Int)

(assert (=> d!1145058 (= lt!1343239 e!2389447)))

(declare-fun c!672643 () Bool)

(assert (=> d!1145058 (= c!672643 ((_ is Nil!40999) (_2!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145058 (= (size!30830 (_2!23239 (v!39065 lt!1343228))) lt!1343239)))

(declare-fun b!3864402 () Bool)

(assert (=> b!3864402 (= e!2389447 0)))

(declare-fun b!3864403 () Bool)

(assert (=> b!3864403 (= e!2389447 (+ 1 (size!30830 (t!313806 (_2!23239 (v!39065 lt!1343228))))))))

(assert (= (and d!1145058 c!672643) b!3864402))

(assert (= (and d!1145058 (not c!672643)) b!3864403))

(declare-fun m!4419911 () Bool)

(assert (=> b!3864403 m!4419911))

(assert (=> b!3864331 d!1145058))

(declare-fun d!1145060 () Bool)

(declare-fun lt!1343240 () Int)

(assert (=> d!1145060 (>= lt!1343240 0)))

(declare-fun e!2389448 () Int)

(assert (=> d!1145060 (= lt!1343240 e!2389448)))

(declare-fun c!672644 () Bool)

(assert (=> d!1145060 (= c!672644 ((_ is Nil!40999) prefix!426))))

(assert (=> d!1145060 (= (size!30830 prefix!426) lt!1343240)))

(declare-fun b!3864404 () Bool)

(assert (=> b!3864404 (= e!2389448 0)))

(declare-fun b!3864405 () Bool)

(assert (=> b!3864405 (= e!2389448 (+ 1 (size!30830 (t!313806 prefix!426))))))

(assert (= (and d!1145060 c!672644) b!3864404))

(assert (= (and d!1145060 (not c!672644)) b!3864405))

(declare-fun m!4419913 () Bool)

(assert (=> b!3864405 m!4419913))

(assert (=> b!3864352 d!1145060))

(declare-fun d!1145062 () Bool)

(assert (=> d!1145062 (= (isEmpty!24301 rules!2768) ((_ is Nil!41001) rules!2768))))

(assert (=> b!3864335 d!1145062))

(declare-fun d!1145064 () Bool)

(declare-fun res!1564985 () Bool)

(declare-fun e!2389463 () Bool)

(assert (=> d!1145064 (=> (not res!1564985) (not e!2389463))))

(declare-fun rulesValid!2460 (LexerInterface!5939 List!41125) Bool)

(assert (=> d!1145064 (= res!1564985 (rulesValid!2460 thiss!20629 rules!2768))))

(assert (=> d!1145064 (= (rulesInvariant!5282 thiss!20629 rules!2768) e!2389463)))

(declare-fun b!3864428 () Bool)

(declare-datatypes ((List!41127 0))(
  ( (Nil!41003) (Cons!41003 (h!46423 String!46618) (t!313906 List!41127)) )
))
(declare-fun noDuplicateTag!2461 (LexerInterface!5939 List!41125 List!41127) Bool)

(assert (=> b!3864428 (= e!2389463 (noDuplicateTag!2461 thiss!20629 rules!2768 Nil!41003))))

(assert (= (and d!1145064 res!1564985) b!3864428))

(declare-fun m!4419935 () Bool)

(assert (=> d!1145064 m!4419935))

(declare-fun m!4419937 () Bool)

(assert (=> b!3864428 m!4419937))

(assert (=> b!3864356 d!1145064))

(declare-fun d!1145070 () Bool)

(declare-fun res!1564986 () Bool)

(declare-fun e!2389464 () Bool)

(assert (=> d!1145070 (=> (not res!1564986) (not e!2389464))))

(assert (=> d!1145070 (= res!1564986 (not (isEmpty!24302 (originalCharacters!6950 (h!46420 suffixTokens!72)))))))

(assert (=> d!1145070 (= (inv!55162 (h!46420 suffixTokens!72)) e!2389464)))

(declare-fun b!3864429 () Bool)

(declare-fun res!1564987 () Bool)

(assert (=> b!3864429 (=> (not res!1564987) (not e!2389464))))

(assert (=> b!3864429 (= res!1564987 (= (originalCharacters!6950 (h!46420 suffixTokens!72)) (list!15258 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (value!201609 (h!46420 suffixTokens!72))))))))

(declare-fun b!3864430 () Bool)

(assert (=> b!3864430 (= e!2389464 (= (size!30829 (h!46420 suffixTokens!72)) (size!30830 (originalCharacters!6950 (h!46420 suffixTokens!72)))))))

(assert (= (and d!1145070 res!1564986) b!3864429))

(assert (= (and b!3864429 res!1564987) b!3864430))

(declare-fun b_lambda!112937 () Bool)

(assert (=> (not b_lambda!112937) (not b!3864429)))

(declare-fun t!313816 () Bool)

(declare-fun tb!223991 () Bool)

(assert (=> (and b!3864347 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313816) tb!223991))

(declare-fun b!3864441 () Bool)

(declare-fun e!2389471 () Bool)

(declare-fun tp!1171546 () Bool)

(assert (=> b!3864441 (= e!2389471 (and (inv!55163 (c!672633 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (value!201609 (h!46420 suffixTokens!72))))) tp!1171546))))

(declare-fun result!272802 () Bool)

(assert (=> tb!223991 (= result!272802 (and (inv!55164 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (value!201609 (h!46420 suffixTokens!72)))) e!2389471))))

(assert (= tb!223991 b!3864441))

(declare-fun m!4419939 () Bool)

(assert (=> b!3864441 m!4419939))

(declare-fun m!4419941 () Bool)

(assert (=> tb!223991 m!4419941))

(assert (=> b!3864429 t!313816))

(declare-fun b_and!289437 () Bool)

(assert (= b_and!289431 (and (=> t!313816 result!272802) b_and!289437)))

(declare-fun tb!223993 () Bool)

(declare-fun t!313818 () Bool)

(assert (=> (and b!3864342 (= (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313818) tb!223993))

(declare-fun result!272804 () Bool)

(assert (= result!272804 result!272802))

(assert (=> b!3864429 t!313818))

(declare-fun b_and!289439 () Bool)

(assert (= b_and!289433 (and (=> t!313818 result!272804) b_and!289439)))

(declare-fun t!313820 () Bool)

(declare-fun tb!223995 () Bool)

(assert (=> (and b!3864344 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313820) tb!223995))

(declare-fun result!272806 () Bool)

(assert (= result!272806 result!272802))

(assert (=> b!3864429 t!313820))

(declare-fun b_and!289441 () Bool)

(assert (= b_and!289435 (and (=> t!313820 result!272806) b_and!289441)))

(declare-fun m!4419943 () Bool)

(assert (=> d!1145070 m!4419943))

(declare-fun m!4419945 () Bool)

(assert (=> b!3864429 m!4419945))

(assert (=> b!3864429 m!4419945))

(declare-fun m!4419947 () Bool)

(assert (=> b!3864429 m!4419947))

(declare-fun m!4419949 () Bool)

(assert (=> b!3864430 m!4419949))

(assert (=> b!3864355 d!1145070))

(declare-fun d!1145072 () Bool)

(declare-fun c!672665 () Bool)

(assert (=> d!1145072 (= c!672665 ((_ is IntegerValue!19740) (value!201609 (h!46420 suffixTokens!72))))))

(declare-fun e!2389491 () Bool)

(assert (=> d!1145072 (= (inv!21 (value!201609 (h!46420 suffixTokens!72))) e!2389491)))

(declare-fun b!3864468 () Bool)

(declare-fun e!2389492 () Bool)

(assert (=> b!3864468 (= e!2389491 e!2389492)))

(declare-fun c!672666 () Bool)

(assert (=> b!3864468 (= c!672666 ((_ is IntegerValue!19741) (value!201609 (h!46420 suffixTokens!72))))))

(declare-fun b!3864469 () Bool)

(declare-fun inv!16 (TokenValue!6580) Bool)

(assert (=> b!3864469 (= e!2389491 (inv!16 (value!201609 (h!46420 suffixTokens!72))))))

(declare-fun b!3864470 () Bool)

(declare-fun res!1565000 () Bool)

(declare-fun e!2389490 () Bool)

(assert (=> b!3864470 (=> res!1565000 e!2389490)))

(assert (=> b!3864470 (= res!1565000 (not ((_ is IntegerValue!19742) (value!201609 (h!46420 suffixTokens!72)))))))

(assert (=> b!3864470 (= e!2389492 e!2389490)))

(declare-fun b!3864471 () Bool)

(declare-fun inv!17 (TokenValue!6580) Bool)

(assert (=> b!3864471 (= e!2389492 (inv!17 (value!201609 (h!46420 suffixTokens!72))))))

(declare-fun b!3864472 () Bool)

(declare-fun inv!15 (TokenValue!6580) Bool)

(assert (=> b!3864472 (= e!2389490 (inv!15 (value!201609 (h!46420 suffixTokens!72))))))

(assert (= (and d!1145072 c!672665) b!3864469))

(assert (= (and d!1145072 (not c!672665)) b!3864468))

(assert (= (and b!3864468 c!672666) b!3864471))

(assert (= (and b!3864468 (not c!672666)) b!3864470))

(assert (= (and b!3864470 (not res!1565000)) b!3864472))

(declare-fun m!4419971 () Bool)

(assert (=> b!3864469 m!4419971))

(declare-fun m!4419973 () Bool)

(assert (=> b!3864471 m!4419973))

(declare-fun m!4419975 () Bool)

(assert (=> b!3864472 m!4419975))

(assert (=> b!3864334 d!1145072))

(declare-fun d!1145086 () Bool)

(assert (=> d!1145086 (= (tail!5873 prefixTokens!80) (t!313807 prefixTokens!80))))

(assert (=> b!3864333 d!1145086))

(declare-fun d!1145088 () Bool)

(assert (=> d!1145088 (= (isEmpty!24300 lt!1343206) ((_ is Nil!41000) lt!1343206))))

(assert (=> b!3864333 d!1145088))

(declare-fun d!1145090 () Bool)

(declare-fun lt!1343253 () Int)

(assert (=> d!1145090 (>= lt!1343253 0)))

(declare-fun e!2389493 () Int)

(assert (=> d!1145090 (= lt!1343253 e!2389493)))

(declare-fun c!672667 () Bool)

(assert (=> d!1145090 (= c!672667 ((_ is Nil!40999) lt!1343227))))

(assert (=> d!1145090 (= (size!30830 lt!1343227) lt!1343253)))

(declare-fun b!3864473 () Bool)

(assert (=> b!3864473 (= e!2389493 0)))

(declare-fun b!3864474 () Bool)

(assert (=> b!3864474 (= e!2389493 (+ 1 (size!30830 (t!313806 lt!1343227))))))

(assert (= (and d!1145090 c!672667) b!3864473))

(assert (= (and d!1145090 (not c!672667)) b!3864474))

(declare-fun m!4419977 () Bool)

(assert (=> b!3864474 m!4419977))

(assert (=> b!3864359 d!1145090))

(declare-fun b!3864512 () Bool)

(declare-fun e!2389511 () Bool)

(declare-fun e!2389509 () Bool)

(assert (=> b!3864512 (= e!2389511 e!2389509)))

(declare-fun res!1565024 () Bool)

(declare-fun lt!1343281 () tuple2!40212)

(assert (=> b!3864512 (= res!1565024 (< (size!30830 (_2!23240 lt!1343281)) (size!30830 lt!1343227)))))

(assert (=> b!3864512 (=> (not res!1565024) (not e!2389509))))

(declare-fun b!3864513 () Bool)

(assert (=> b!3864513 (= e!2389509 (not (isEmpty!24300 (_1!23240 lt!1343281))))))

(declare-fun d!1145092 () Bool)

(assert (=> d!1145092 e!2389511))

(declare-fun c!672676 () Bool)

(assert (=> d!1145092 (= c!672676 (> (size!30832 (_1!23240 lt!1343281)) 0))))

(declare-fun e!2389510 () tuple2!40212)

(assert (=> d!1145092 (= lt!1343281 e!2389510)))

(declare-fun c!672675 () Bool)

(declare-fun lt!1343282 () Option!8768)

(assert (=> d!1145092 (= c!672675 ((_ is Some!8767) lt!1343282))))

(assert (=> d!1145092 (= lt!1343282 (maxPrefix!3243 thiss!20629 rules!2768 lt!1343227))))

(assert (=> d!1145092 (= (lexList!1707 thiss!20629 rules!2768 lt!1343227) lt!1343281)))

(declare-fun b!3864514 () Bool)

(assert (=> b!3864514 (= e!2389510 (tuple2!40213 Nil!41000 lt!1343227))))

(declare-fun b!3864515 () Bool)

(assert (=> b!3864515 (= e!2389511 (= (_2!23240 lt!1343281) lt!1343227))))

(declare-fun b!3864516 () Bool)

(declare-fun lt!1343280 () tuple2!40212)

(assert (=> b!3864516 (= e!2389510 (tuple2!40213 (Cons!41000 (_1!23239 (v!39065 lt!1343282)) (_1!23240 lt!1343280)) (_2!23240 lt!1343280)))))

(assert (=> b!3864516 (= lt!1343280 (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343282))))))

(assert (= (and d!1145092 c!672675) b!3864516))

(assert (= (and d!1145092 (not c!672675)) b!3864514))

(assert (= (and d!1145092 c!672676) b!3864512))

(assert (= (and d!1145092 (not c!672676)) b!3864515))

(assert (= (and b!3864512 res!1565024) b!3864513))

(declare-fun m!4420019 () Bool)

(assert (=> b!3864512 m!4420019))

(assert (=> b!3864512 m!4419783))

(declare-fun m!4420023 () Bool)

(assert (=> b!3864513 m!4420023))

(declare-fun m!4420027 () Bool)

(assert (=> d!1145092 m!4420027))

(assert (=> d!1145092 m!4419795))

(declare-fun m!4420033 () Bool)

(assert (=> b!3864516 m!4420033))

(assert (=> b!3864337 d!1145092))

(declare-fun b!3864522 () Bool)

(declare-fun e!2389516 () List!41124)

(assert (=> b!3864522 (= e!2389516 suffixTokens!72)))

(declare-fun b!3864523 () Bool)

(assert (=> b!3864523 (= e!2389516 (Cons!41000 (h!46420 prefixTokens!80) (++!10457 (t!313807 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3864524 () Bool)

(declare-fun res!1565026 () Bool)

(declare-fun e!2389515 () Bool)

(assert (=> b!3864524 (=> (not res!1565026) (not e!2389515))))

(declare-fun lt!1343287 () List!41124)

(assert (=> b!3864524 (= res!1565026 (= (size!30832 lt!1343287) (+ (size!30832 prefixTokens!80) (size!30832 suffixTokens!72))))))

(declare-fun d!1145102 () Bool)

(assert (=> d!1145102 e!2389515))

(declare-fun res!1565027 () Bool)

(assert (=> d!1145102 (=> (not res!1565027) (not e!2389515))))

(assert (=> d!1145102 (= res!1565027 (= (content!6118 lt!1343287) ((_ map or) (content!6118 prefixTokens!80) (content!6118 suffixTokens!72))))))

(assert (=> d!1145102 (= lt!1343287 e!2389516)))

(declare-fun c!672679 () Bool)

(assert (=> d!1145102 (= c!672679 ((_ is Nil!41000) prefixTokens!80))))

(assert (=> d!1145102 (= (++!10457 prefixTokens!80 suffixTokens!72) lt!1343287)))

(declare-fun b!3864525 () Bool)

(assert (=> b!3864525 (= e!2389515 (or (not (= suffixTokens!72 Nil!41000)) (= lt!1343287 prefixTokens!80)))))

(assert (= (and d!1145102 c!672679) b!3864522))

(assert (= (and d!1145102 (not c!672679)) b!3864523))

(assert (= (and d!1145102 res!1565027) b!3864524))

(assert (= (and b!3864524 res!1565026) b!3864525))

(declare-fun m!4420037 () Bool)

(assert (=> b!3864523 m!4420037))

(declare-fun m!4420039 () Bool)

(assert (=> b!3864524 m!4420039))

(declare-fun m!4420041 () Bool)

(assert (=> b!3864524 m!4420041))

(declare-fun m!4420043 () Bool)

(assert (=> b!3864524 m!4420043))

(declare-fun m!4420045 () Bool)

(assert (=> d!1145102 m!4420045))

(declare-fun m!4420047 () Bool)

(assert (=> d!1145102 m!4420047))

(declare-fun m!4420049 () Bool)

(assert (=> d!1145102 m!4420049))

(assert (=> b!3864337 d!1145102))

(declare-fun lt!1343293 () List!41123)

(declare-fun b!3864539 () Bool)

(declare-fun e!2389524 () Bool)

(assert (=> b!3864539 (= e!2389524 (or (not (= suffix!1176 Nil!40999)) (= lt!1343293 prefix!426)))))

(declare-fun b!3864536 () Bool)

(declare-fun e!2389525 () List!41123)

(assert (=> b!3864536 (= e!2389525 suffix!1176)))

(declare-fun b!3864538 () Bool)

(declare-fun res!1565033 () Bool)

(assert (=> b!3864538 (=> (not res!1565033) (not e!2389524))))

(assert (=> b!3864538 (= res!1565033 (= (size!30830 lt!1343293) (+ (size!30830 prefix!426) (size!30830 suffix!1176))))))

(declare-fun d!1145104 () Bool)

(assert (=> d!1145104 e!2389524))

(declare-fun res!1565032 () Bool)

(assert (=> d!1145104 (=> (not res!1565032) (not e!2389524))))

(declare-fun content!6121 (List!41123) (InoxSet C!22696))

(assert (=> d!1145104 (= res!1565032 (= (content!6121 lt!1343293) ((_ map or) (content!6121 prefix!426) (content!6121 suffix!1176))))))

(assert (=> d!1145104 (= lt!1343293 e!2389525)))

(declare-fun c!672682 () Bool)

(assert (=> d!1145104 (= c!672682 ((_ is Nil!40999) prefix!426))))

(assert (=> d!1145104 (= (++!10458 prefix!426 suffix!1176) lt!1343293)))

(declare-fun b!3864537 () Bool)

(assert (=> b!3864537 (= e!2389525 (Cons!40999 (h!46419 prefix!426) (++!10458 (t!313806 prefix!426) suffix!1176)))))

(assert (= (and d!1145104 c!672682) b!3864536))

(assert (= (and d!1145104 (not c!672682)) b!3864537))

(assert (= (and d!1145104 res!1565032) b!3864538))

(assert (= (and b!3864538 res!1565033) b!3864539))

(declare-fun m!4420063 () Bool)

(assert (=> b!3864538 m!4420063))

(assert (=> b!3864538 m!4419797))

(assert (=> b!3864538 m!4419877))

(declare-fun m!4420065 () Bool)

(assert (=> d!1145104 m!4420065))

(declare-fun m!4420067 () Bool)

(assert (=> d!1145104 m!4420067))

(declare-fun m!4420069 () Bool)

(assert (=> d!1145104 m!4420069))

(declare-fun m!4420071 () Bool)

(assert (=> b!3864537 m!4420071))

(assert (=> b!3864337 d!1145104))

(declare-fun b!3864544 () Bool)

(declare-fun e!2389530 () Bool)

(declare-fun e!2389528 () Bool)

(assert (=> b!3864544 (= e!2389530 e!2389528)))

(declare-fun res!1565038 () Bool)

(declare-fun lt!1343295 () tuple2!40212)

(assert (=> b!3864544 (= res!1565038 (< (size!30830 (_2!23240 lt!1343295)) (size!30830 suffix!1176)))))

(assert (=> b!3864544 (=> (not res!1565038) (not e!2389528))))

(declare-fun b!3864545 () Bool)

(assert (=> b!3864545 (= e!2389528 (not (isEmpty!24300 (_1!23240 lt!1343295))))))

(declare-fun d!1145116 () Bool)

(assert (=> d!1145116 e!2389530))

(declare-fun c!672684 () Bool)

(assert (=> d!1145116 (= c!672684 (> (size!30832 (_1!23240 lt!1343295)) 0))))

(declare-fun e!2389529 () tuple2!40212)

(assert (=> d!1145116 (= lt!1343295 e!2389529)))

(declare-fun c!672683 () Bool)

(declare-fun lt!1343296 () Option!8768)

(assert (=> d!1145116 (= c!672683 ((_ is Some!8767) lt!1343296))))

(assert (=> d!1145116 (= lt!1343296 (maxPrefix!3243 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1145116 (= (lexList!1707 thiss!20629 rules!2768 suffix!1176) lt!1343295)))

(declare-fun b!3864546 () Bool)

(assert (=> b!3864546 (= e!2389529 (tuple2!40213 Nil!41000 suffix!1176))))

(declare-fun b!3864547 () Bool)

(assert (=> b!3864547 (= e!2389530 (= (_2!23240 lt!1343295) suffix!1176))))

(declare-fun b!3864548 () Bool)

(declare-fun lt!1343294 () tuple2!40212)

(assert (=> b!3864548 (= e!2389529 (tuple2!40213 (Cons!41000 (_1!23239 (v!39065 lt!1343296)) (_1!23240 lt!1343294)) (_2!23240 lt!1343294)))))

(assert (=> b!3864548 (= lt!1343294 (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343296))))))

(assert (= (and d!1145116 c!672683) b!3864548))

(assert (= (and d!1145116 (not c!672683)) b!3864546))

(assert (= (and d!1145116 c!672684) b!3864544))

(assert (= (and d!1145116 (not c!672684)) b!3864547))

(assert (= (and b!3864544 res!1565038) b!3864545))

(declare-fun m!4420077 () Bool)

(assert (=> b!3864544 m!4420077))

(assert (=> b!3864544 m!4419877))

(declare-fun m!4420079 () Bool)

(assert (=> b!3864545 m!4420079))

(declare-fun m!4420081 () Bool)

(assert (=> d!1145116 m!4420081))

(declare-fun m!4420083 () Bool)

(assert (=> d!1145116 m!4420083))

(declare-fun m!4420085 () Bool)

(assert (=> b!3864548 m!4420085))

(assert (=> b!3864358 d!1145116))

(declare-fun b!3864637 () Bool)

(declare-fun res!1565094 () Bool)

(declare-fun e!2389577 () Bool)

(assert (=> b!3864637 (=> (not res!1565094) (not e!2389577))))

(declare-fun lt!1343327 () Option!8768)

(assert (=> b!3864637 (= res!1565094 (matchR!5402 (regex!6350 (rule!9226 (_1!23239 (get!13565 lt!1343327)))) (list!15258 (charsOf!4178 (_1!23239 (get!13565 lt!1343327))))))))

(declare-fun b!3864638 () Bool)

(declare-fun res!1565089 () Bool)

(assert (=> b!3864638 (=> (not res!1565089) (not e!2389577))))

(assert (=> b!3864638 (= res!1565089 (= (value!201609 (_1!23239 (get!13565 lt!1343327))) (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (get!13565 lt!1343327)))) (seqFromList!4621 (originalCharacters!6950 (_1!23239 (get!13565 lt!1343327)))))))))

(declare-fun b!3864639 () Bool)

(declare-fun e!2389579 () Option!8768)

(declare-fun call!282612 () Option!8768)

(assert (=> b!3864639 (= e!2389579 call!282612)))

(declare-fun d!1145120 () Bool)

(declare-fun e!2389578 () Bool)

(assert (=> d!1145120 e!2389578))

(declare-fun res!1565095 () Bool)

(assert (=> d!1145120 (=> res!1565095 e!2389578)))

(declare-fun isEmpty!24304 (Option!8768) Bool)

(assert (=> d!1145120 (= res!1565095 (isEmpty!24304 lt!1343327))))

(assert (=> d!1145120 (= lt!1343327 e!2389579)))

(declare-fun c!672701 () Bool)

(assert (=> d!1145120 (= c!672701 (and ((_ is Cons!41001) rules!2768) ((_ is Nil!41001) (t!313808 rules!2768))))))

(declare-fun lt!1343329 () Unit!58669)

(declare-fun lt!1343331 () Unit!58669)

(assert (=> d!1145120 (= lt!1343329 lt!1343331)))

(assert (=> d!1145120 (isPrefix!3449 lt!1343227 lt!1343227)))

(declare-fun lemmaIsPrefixRefl!2196 (List!41123 List!41123) Unit!58669)

(assert (=> d!1145120 (= lt!1343331 (lemmaIsPrefixRefl!2196 lt!1343227 lt!1343227))))

(declare-fun rulesValidInductive!2270 (LexerInterface!5939 List!41125) Bool)

(assert (=> d!1145120 (rulesValidInductive!2270 thiss!20629 rules!2768)))

(assert (=> d!1145120 (= (maxPrefix!3243 thiss!20629 rules!2768 lt!1343227) lt!1343327)))

(declare-fun b!3864640 () Bool)

(declare-fun contains!8277 (List!41125 Rule!12500) Bool)

(assert (=> b!3864640 (= e!2389577 (contains!8277 rules!2768 (rule!9226 (_1!23239 (get!13565 lt!1343327)))))))

(declare-fun b!3864641 () Bool)

(declare-fun res!1565091 () Bool)

(assert (=> b!3864641 (=> (not res!1565091) (not e!2389577))))

(assert (=> b!3864641 (= res!1565091 (= (list!15258 (charsOf!4178 (_1!23239 (get!13565 lt!1343327)))) (originalCharacters!6950 (_1!23239 (get!13565 lt!1343327)))))))

(declare-fun b!3864642 () Bool)

(declare-fun res!1565093 () Bool)

(assert (=> b!3864642 (=> (not res!1565093) (not e!2389577))))

(assert (=> b!3864642 (= res!1565093 (< (size!30830 (_2!23239 (get!13565 lt!1343327))) (size!30830 lt!1343227)))))

(declare-fun b!3864643 () Bool)

(declare-fun res!1565092 () Bool)

(assert (=> b!3864643 (=> (not res!1565092) (not e!2389577))))

(assert (=> b!3864643 (= res!1565092 (= (++!10458 (list!15258 (charsOf!4178 (_1!23239 (get!13565 lt!1343327)))) (_2!23239 (get!13565 lt!1343327))) lt!1343227))))

(declare-fun bm!282607 () Bool)

(assert (=> bm!282607 (= call!282612 (maxPrefixOneRule!2325 thiss!20629 (h!46421 rules!2768) lt!1343227))))

(declare-fun b!3864644 () Bool)

(declare-fun lt!1343328 () Option!8768)

(declare-fun lt!1343330 () Option!8768)

(assert (=> b!3864644 (= e!2389579 (ite (and ((_ is None!8767) lt!1343328) ((_ is None!8767) lt!1343330)) None!8767 (ite ((_ is None!8767) lt!1343330) lt!1343328 (ite ((_ is None!8767) lt!1343328) lt!1343330 (ite (>= (size!30829 (_1!23239 (v!39065 lt!1343328))) (size!30829 (_1!23239 (v!39065 lt!1343330)))) lt!1343328 lt!1343330)))))))

(assert (=> b!3864644 (= lt!1343328 call!282612)))

(assert (=> b!3864644 (= lt!1343330 (maxPrefix!3243 thiss!20629 (t!313808 rules!2768) lt!1343227))))

(declare-fun b!3864645 () Bool)

(assert (=> b!3864645 (= e!2389578 e!2389577)))

(declare-fun res!1565090 () Bool)

(assert (=> b!3864645 (=> (not res!1565090) (not e!2389577))))

(declare-fun isDefined!6873 (Option!8768) Bool)

(assert (=> b!3864645 (= res!1565090 (isDefined!6873 lt!1343327))))

(assert (= (and d!1145120 c!672701) b!3864639))

(assert (= (and d!1145120 (not c!672701)) b!3864644))

(assert (= (or b!3864639 b!3864644) bm!282607))

(assert (= (and d!1145120 (not res!1565095)) b!3864645))

(assert (= (and b!3864645 res!1565090) b!3864641))

(assert (= (and b!3864641 res!1565091) b!3864642))

(assert (= (and b!3864642 res!1565093) b!3864643))

(assert (= (and b!3864643 res!1565092) b!3864638))

(assert (= (and b!3864638 res!1565089) b!3864637))

(assert (= (and b!3864637 res!1565094) b!3864640))

(declare-fun m!4420179 () Bool)

(assert (=> b!3864640 m!4420179))

(declare-fun m!4420181 () Bool)

(assert (=> b!3864640 m!4420181))

(assert (=> b!3864638 m!4420179))

(declare-fun m!4420183 () Bool)

(assert (=> b!3864638 m!4420183))

(assert (=> b!3864638 m!4420183))

(declare-fun m!4420185 () Bool)

(assert (=> b!3864638 m!4420185))

(declare-fun m!4420187 () Bool)

(assert (=> d!1145120 m!4420187))

(declare-fun m!4420189 () Bool)

(assert (=> d!1145120 m!4420189))

(declare-fun m!4420191 () Bool)

(assert (=> d!1145120 m!4420191))

(declare-fun m!4420193 () Bool)

(assert (=> d!1145120 m!4420193))

(assert (=> b!3864641 m!4420179))

(declare-fun m!4420195 () Bool)

(assert (=> b!3864641 m!4420195))

(assert (=> b!3864641 m!4420195))

(declare-fun m!4420197 () Bool)

(assert (=> b!3864641 m!4420197))

(assert (=> b!3864643 m!4420179))

(assert (=> b!3864643 m!4420195))

(assert (=> b!3864643 m!4420195))

(assert (=> b!3864643 m!4420197))

(assert (=> b!3864643 m!4420197))

(declare-fun m!4420199 () Bool)

(assert (=> b!3864643 m!4420199))

(assert (=> b!3864642 m!4420179))

(declare-fun m!4420201 () Bool)

(assert (=> b!3864642 m!4420201))

(assert (=> b!3864642 m!4419783))

(assert (=> b!3864637 m!4420179))

(assert (=> b!3864637 m!4420195))

(assert (=> b!3864637 m!4420195))

(assert (=> b!3864637 m!4420197))

(assert (=> b!3864637 m!4420197))

(declare-fun m!4420203 () Bool)

(assert (=> b!3864637 m!4420203))

(declare-fun m!4420205 () Bool)

(assert (=> bm!282607 m!4420205))

(declare-fun m!4420207 () Bool)

(assert (=> b!3864645 m!4420207))

(declare-fun m!4420209 () Bool)

(assert (=> b!3864644 m!4420209))

(assert (=> b!3864357 d!1145120))

(declare-fun d!1145160 () Bool)

(assert (=> d!1145160 (not (= (lexList!1707 thiss!20629 rules!2768 (_2!23239 lt!1343224)) (tuple2!40213 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1343339 () Unit!58669)

(declare-fun choose!22776 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41124 List!41123) Unit!58669)

(assert (=> d!1145160 (= lt!1343339 (choose!22776 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91))))

(assert (=> d!1145160 (not (isEmpty!24301 rules!2768))))

(assert (=> d!1145160 (= (lemmaLexWithSmallerInputCannotProduceSameResults!10 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91) lt!1343339)))

(declare-fun bs!583262 () Bool)

(assert (= bs!583262 d!1145160))

(assert (=> bs!583262 m!4419827))

(declare-fun m!4420217 () Bool)

(assert (=> bs!583262 m!4420217))

(assert (=> bs!583262 m!4419819))

(assert (=> b!3864336 d!1145160))

(declare-fun d!1145172 () Bool)

(assert (=> d!1145172 (and (= lt!1343209 lt!1343209) (= (_2!23239 (v!39065 lt!1343228)) (_2!23239 lt!1343224)))))

(declare-fun lt!1343344 () Unit!58669)

(declare-fun choose!22777 (List!41123 List!41123 List!41123 List!41123) Unit!58669)

(assert (=> d!1145172 (= lt!1343344 (choose!22777 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 (_2!23239 lt!1343224)))))

(assert (=> d!1145172 (= (++!10458 lt!1343209 (_2!23239 (v!39065 lt!1343228))) (++!10458 lt!1343209 (_2!23239 lt!1343224)))))

(assert (=> d!1145172 (= (lemmaConcatSameAndSameSizesThenSameLists!434 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 (_2!23239 lt!1343224)) lt!1343344)))

(declare-fun bs!583263 () Bool)

(assert (= bs!583263 d!1145172))

(declare-fun m!4420219 () Bool)

(assert (=> bs!583263 m!4420219))

(assert (=> bs!583263 m!4419853))

(declare-fun m!4420221 () Bool)

(assert (=> bs!583263 m!4420221))

(assert (=> b!3864336 d!1145172))

(declare-fun d!1145174 () Bool)

(assert (=> d!1145174 (= (inv!55158 (tag!7210 (h!46421 rules!2768))) (= (mod (str.len (value!201608 (tag!7210 (h!46421 rules!2768)))) 2) 0))))

(assert (=> b!3864340 d!1145174))

(declare-fun d!1145176 () Bool)

(declare-fun res!1565114 () Bool)

(declare-fun e!2389598 () Bool)

(assert (=> d!1145176 (=> (not res!1565114) (not e!2389598))))

(declare-fun semiInverseModEq!2725 (Int Int) Bool)

(assert (=> d!1145176 (= res!1565114 (semiInverseModEq!2725 (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toValue!8778 (transformation!6350 (h!46421 rules!2768)))))))

(assert (=> d!1145176 (= (inv!55161 (transformation!6350 (h!46421 rules!2768))) e!2389598)))

(declare-fun b!3864680 () Bool)

(declare-fun equivClasses!2624 (Int Int) Bool)

(assert (=> b!3864680 (= e!2389598 (equivClasses!2624 (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toValue!8778 (transformation!6350 (h!46421 rules!2768)))))))

(assert (= (and d!1145176 res!1565114) b!3864680))

(declare-fun m!4420223 () Bool)

(assert (=> d!1145176 m!4420223))

(declare-fun m!4420225 () Bool)

(assert (=> b!3864680 m!4420225))

(assert (=> b!3864340 d!1145176))

(declare-fun d!1145178 () Bool)

(assert (=> d!1145178 (= (head!8162 prefixTokens!80) (h!46420 prefixTokens!80))))

(assert (=> b!3864343 d!1145178))

(declare-fun d!1145180 () Bool)

(assert (=> d!1145180 (= (get!13565 lt!1343228) (v!39065 lt!1343228))))

(assert (=> b!3864343 d!1145180))

(declare-fun d!1145182 () Bool)

(declare-fun c!672713 () Bool)

(assert (=> d!1145182 (= c!672713 ((_ is IntegerValue!19740) (value!201609 (h!46420 prefixTokens!80))))))

(declare-fun e!2389607 () Bool)

(assert (=> d!1145182 (= (inv!21 (value!201609 (h!46420 prefixTokens!80))) e!2389607)))

(declare-fun b!3864695 () Bool)

(declare-fun e!2389608 () Bool)

(assert (=> b!3864695 (= e!2389607 e!2389608)))

(declare-fun c!672714 () Bool)

(assert (=> b!3864695 (= c!672714 ((_ is IntegerValue!19741) (value!201609 (h!46420 prefixTokens!80))))))

(declare-fun b!3864696 () Bool)

(assert (=> b!3864696 (= e!2389607 (inv!16 (value!201609 (h!46420 prefixTokens!80))))))

(declare-fun b!3864697 () Bool)

(declare-fun res!1565123 () Bool)

(declare-fun e!2389606 () Bool)

(assert (=> b!3864697 (=> res!1565123 e!2389606)))

(assert (=> b!3864697 (= res!1565123 (not ((_ is IntegerValue!19742) (value!201609 (h!46420 prefixTokens!80)))))))

(assert (=> b!3864697 (= e!2389608 e!2389606)))

(declare-fun b!3864698 () Bool)

(assert (=> b!3864698 (= e!2389608 (inv!17 (value!201609 (h!46420 prefixTokens!80))))))

(declare-fun b!3864699 () Bool)

(assert (=> b!3864699 (= e!2389606 (inv!15 (value!201609 (h!46420 prefixTokens!80))))))

(assert (= (and d!1145182 c!672713) b!3864696))

(assert (= (and d!1145182 (not c!672713)) b!3864695))

(assert (= (and b!3864695 c!672714) b!3864698))

(assert (= (and b!3864695 (not c!672714)) b!3864697))

(assert (= (and b!3864697 (not res!1565123)) b!3864699))

(declare-fun m!4420233 () Bool)

(assert (=> b!3864696 m!4420233))

(declare-fun m!4420235 () Bool)

(assert (=> b!3864698 m!4420235))

(declare-fun m!4420237 () Bool)

(assert (=> b!3864699 m!4420237))

(assert (=> b!3864341 d!1145182))

(declare-fun d!1145184 () Bool)

(declare-fun lt!1343346 () Int)

(assert (=> d!1145184 (>= lt!1343346 0)))

(declare-fun e!2389609 () Int)

(assert (=> d!1145184 (= lt!1343346 e!2389609)))

(declare-fun c!672715 () Bool)

(assert (=> d!1145184 (= c!672715 ((_ is Nil!40999) (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228)))))))

(assert (=> d!1145184 (= (size!30830 (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228)))) lt!1343346)))

(declare-fun b!3864700 () Bool)

(assert (=> b!3864700 (= e!2389609 0)))

(declare-fun b!3864701 () Bool)

(assert (=> b!3864701 (= e!2389609 (+ 1 (size!30830 (t!313806 (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228)))))))))

(assert (= (and d!1145184 c!672715) b!3864700))

(assert (= (and d!1145184 (not c!672715)) b!3864701))

(declare-fun m!4420241 () Bool)

(assert (=> b!3864701 m!4420241))

(assert (=> b!3864366 d!1145184))

(declare-fun b!3864702 () Bool)

(declare-fun e!2389611 () List!41124)

(assert (=> b!3864702 (= e!2389611 suffixTokens!72)))

(declare-fun b!3864703 () Bool)

(assert (=> b!3864703 (= e!2389611 (Cons!41000 (h!46420 lt!1343206) (++!10457 (t!313807 lt!1343206) suffixTokens!72)))))

(declare-fun b!3864704 () Bool)

(declare-fun res!1565124 () Bool)

(declare-fun e!2389610 () Bool)

(assert (=> b!3864704 (=> (not res!1565124) (not e!2389610))))

(declare-fun lt!1343347 () List!41124)

(assert (=> b!3864704 (= res!1565124 (= (size!30832 lt!1343347) (+ (size!30832 lt!1343206) (size!30832 suffixTokens!72))))))

(declare-fun d!1145188 () Bool)

(assert (=> d!1145188 e!2389610))

(declare-fun res!1565125 () Bool)

(assert (=> d!1145188 (=> (not res!1565125) (not e!2389610))))

(assert (=> d!1145188 (= res!1565125 (= (content!6118 lt!1343347) ((_ map or) (content!6118 lt!1343206) (content!6118 suffixTokens!72))))))

(assert (=> d!1145188 (= lt!1343347 e!2389611)))

(declare-fun c!672716 () Bool)

(assert (=> d!1145188 (= c!672716 ((_ is Nil!41000) lt!1343206))))

(assert (=> d!1145188 (= (++!10457 lt!1343206 suffixTokens!72) lt!1343347)))

(declare-fun b!3864705 () Bool)

(assert (=> b!3864705 (= e!2389610 (or (not (= suffixTokens!72 Nil!41000)) (= lt!1343347 lt!1343206)))))

(assert (= (and d!1145188 c!672716) b!3864702))

(assert (= (and d!1145188 (not c!672716)) b!3864703))

(assert (= (and d!1145188 res!1565125) b!3864704))

(assert (= (and b!3864704 res!1565124) b!3864705))

(declare-fun m!4420243 () Bool)

(assert (=> b!3864703 m!4420243))

(declare-fun m!4420245 () Bool)

(assert (=> b!3864704 m!4420245))

(declare-fun m!4420247 () Bool)

(assert (=> b!3864704 m!4420247))

(assert (=> b!3864704 m!4420043))

(declare-fun m!4420249 () Bool)

(assert (=> d!1145188 m!4420249))

(declare-fun m!4420251 () Bool)

(assert (=> d!1145188 m!4420251))

(assert (=> d!1145188 m!4420049))

(assert (=> b!3864346 d!1145188))

(declare-fun d!1145190 () Bool)

(assert (=> d!1145190 (not (= (lexList!1707 thiss!20629 rules!2768 (_2!23239 lt!1343224)) (tuple2!40213 (++!10457 lt!1343206 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1343350 () Unit!58669)

(declare-fun choose!22779 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41124 List!41123 List!41124) Unit!58669)

(assert (=> d!1145190 (= lt!1343350 (choose!22779 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91 lt!1343206))))

(assert (=> d!1145190 (not (isEmpty!24301 rules!2768))))

(assert (=> d!1145190 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!10 thiss!20629 rules!2768 suffix!1176 (_2!23239 lt!1343224) suffixTokens!72 suffixResult!91 lt!1343206) lt!1343350)))

(declare-fun bs!583264 () Bool)

(assert (= bs!583264 d!1145190))

(assert (=> bs!583264 m!4419827))

(assert (=> bs!583264 m!4419805))

(declare-fun m!4420253 () Bool)

(assert (=> bs!583264 m!4420253))

(assert (=> bs!583264 m!4419819))

(assert (=> b!3864346 d!1145190))

(declare-fun b!3864706 () Bool)

(declare-fun e!2389614 () Bool)

(declare-fun e!2389612 () Bool)

(assert (=> b!3864706 (= e!2389614 e!2389612)))

(declare-fun res!1565126 () Bool)

(declare-fun lt!1343352 () tuple2!40212)

(assert (=> b!3864706 (= res!1565126 (< (size!30830 (_2!23240 lt!1343352)) (size!30830 (_2!23239 lt!1343224))))))

(assert (=> b!3864706 (=> (not res!1565126) (not e!2389612))))

(declare-fun b!3864707 () Bool)

(assert (=> b!3864707 (= e!2389612 (not (isEmpty!24300 (_1!23240 lt!1343352))))))

(declare-fun d!1145192 () Bool)

(assert (=> d!1145192 e!2389614))

(declare-fun c!672718 () Bool)

(assert (=> d!1145192 (= c!672718 (> (size!30832 (_1!23240 lt!1343352)) 0))))

(declare-fun e!2389613 () tuple2!40212)

(assert (=> d!1145192 (= lt!1343352 e!2389613)))

(declare-fun c!672717 () Bool)

(declare-fun lt!1343353 () Option!8768)

(assert (=> d!1145192 (= c!672717 ((_ is Some!8767) lt!1343353))))

(assert (=> d!1145192 (= lt!1343353 (maxPrefix!3243 thiss!20629 rules!2768 (_2!23239 lt!1343224)))))

(assert (=> d!1145192 (= (lexList!1707 thiss!20629 rules!2768 (_2!23239 lt!1343224)) lt!1343352)))

(declare-fun b!3864708 () Bool)

(assert (=> b!3864708 (= e!2389613 (tuple2!40213 Nil!41000 (_2!23239 lt!1343224)))))

(declare-fun b!3864709 () Bool)

(assert (=> b!3864709 (= e!2389614 (= (_2!23240 lt!1343352) (_2!23239 lt!1343224)))))

(declare-fun b!3864710 () Bool)

(declare-fun lt!1343351 () tuple2!40212)

(assert (=> b!3864710 (= e!2389613 (tuple2!40213 (Cons!41000 (_1!23239 (v!39065 lt!1343353)) (_1!23240 lt!1343351)) (_2!23240 lt!1343351)))))

(assert (=> b!3864710 (= lt!1343351 (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343353))))))

(assert (= (and d!1145192 c!672717) b!3864710))

(assert (= (and d!1145192 (not c!672717)) b!3864708))

(assert (= (and d!1145192 c!672718) b!3864706))

(assert (= (and d!1145192 (not c!672718)) b!3864709))

(assert (= (and b!3864706 res!1565126) b!3864707))

(declare-fun m!4420255 () Bool)

(assert (=> b!3864706 m!4420255))

(assert (=> b!3864706 m!4419781))

(declare-fun m!4420257 () Bool)

(assert (=> b!3864707 m!4420257))

(declare-fun m!4420259 () Bool)

(assert (=> d!1145192 m!4420259))

(declare-fun m!4420261 () Bool)

(assert (=> d!1145192 m!4420261))

(declare-fun m!4420263 () Bool)

(assert (=> b!3864710 m!4420263))

(assert (=> bm!282601 d!1145192))

(declare-fun d!1145194 () Bool)

(assert (=> d!1145194 (= (inv!55158 (tag!7210 (rule!9226 (h!46420 suffixTokens!72)))) (= (mod (str.len (value!201608 (tag!7210 (rule!9226 (h!46420 suffixTokens!72))))) 2) 0))))

(assert (=> b!3864365 d!1145194))

(declare-fun d!1145196 () Bool)

(declare-fun res!1565127 () Bool)

(declare-fun e!2389615 () Bool)

(assert (=> d!1145196 (=> (not res!1565127) (not e!2389615))))

(assert (=> d!1145196 (= res!1565127 (semiInverseModEq!2725 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toValue!8778 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))))))

(assert (=> d!1145196 (= (inv!55161 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) e!2389615)))

(declare-fun b!3864711 () Bool)

(assert (=> b!3864711 (= e!2389615 (equivClasses!2624 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toValue!8778 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))))))

(assert (= (and d!1145196 res!1565127) b!3864711))

(declare-fun m!4420265 () Bool)

(assert (=> d!1145196 m!4420265))

(declare-fun m!4420267 () Bool)

(assert (=> b!3864711 m!4420267))

(assert (=> b!3864365 d!1145196))

(declare-fun d!1145198 () Bool)

(declare-fun e!2389630 () Bool)

(assert (=> d!1145198 e!2389630))

(declare-fun c!672725 () Bool)

(assert (=> d!1145198 (= c!672725 ((_ is EmptyExpr!11255) (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))))

(declare-fun lt!1343356 () Bool)

(declare-fun e!2389636 () Bool)

(assert (=> d!1145198 (= lt!1343356 e!2389636)))

(declare-fun c!672726 () Bool)

(assert (=> d!1145198 (= c!672726 (isEmpty!24302 lt!1343209))))

(declare-fun validRegex!5124 (Regex!11255) Bool)

(assert (=> d!1145198 (validRegex!5124 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))

(assert (=> d!1145198 (= (matchR!5402 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) lt!1343209) lt!1343356)))

(declare-fun b!3864740 () Bool)

(declare-fun e!2389633 () Bool)

(assert (=> b!3864740 (= e!2389633 (not lt!1343356))))

(declare-fun b!3864741 () Bool)

(declare-fun res!1565147 () Bool)

(declare-fun e!2389632 () Bool)

(assert (=> b!3864741 (=> res!1565147 e!2389632)))

(assert (=> b!3864741 (= res!1565147 (not ((_ is ElementMatch!11255) (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))))

(assert (=> b!3864741 (= e!2389633 e!2389632)))

(declare-fun b!3864742 () Bool)

(declare-fun nullable!3925 (Regex!11255) Bool)

(assert (=> b!3864742 (= e!2389636 (nullable!3925 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))))

(declare-fun b!3864743 () Bool)

(declare-fun derivativeStep!3424 (Regex!11255 C!22696) Regex!11255)

(declare-fun head!8164 (List!41123) C!22696)

(declare-fun tail!5875 (List!41123) List!41123)

(assert (=> b!3864743 (= e!2389636 (matchR!5402 (derivativeStep!3424 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (head!8164 lt!1343209)) (tail!5875 lt!1343209)))))

(declare-fun b!3864744 () Bool)

(declare-fun e!2389631 () Bool)

(assert (=> b!3864744 (= e!2389632 e!2389631)))

(declare-fun res!1565148 () Bool)

(assert (=> b!3864744 (=> (not res!1565148) (not e!2389631))))

(assert (=> b!3864744 (= res!1565148 (not lt!1343356))))

(declare-fun b!3864745 () Bool)

(declare-fun e!2389635 () Bool)

(assert (=> b!3864745 (= e!2389635 (= (head!8164 lt!1343209) (c!672632 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))))

(declare-fun b!3864746 () Bool)

(declare-fun res!1565150 () Bool)

(declare-fun e!2389634 () Bool)

(assert (=> b!3864746 (=> res!1565150 e!2389634)))

(assert (=> b!3864746 (= res!1565150 (not (isEmpty!24302 (tail!5875 lt!1343209))))))

(declare-fun b!3864747 () Bool)

(assert (=> b!3864747 (= e!2389634 (not (= (head!8164 lt!1343209) (c!672632 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))))))

(declare-fun b!3864748 () Bool)

(declare-fun res!1565146 () Bool)

(assert (=> b!3864748 (=> (not res!1565146) (not e!2389635))))

(declare-fun call!282618 () Bool)

(assert (=> b!3864748 (= res!1565146 (not call!282618))))

(declare-fun b!3864749 () Bool)

(declare-fun res!1565145 () Bool)

(assert (=> b!3864749 (=> res!1565145 e!2389632)))

(assert (=> b!3864749 (= res!1565145 e!2389635)))

(declare-fun res!1565151 () Bool)

(assert (=> b!3864749 (=> (not res!1565151) (not e!2389635))))

(assert (=> b!3864749 (= res!1565151 lt!1343356)))

(declare-fun b!3864750 () Bool)

(declare-fun res!1565149 () Bool)

(assert (=> b!3864750 (=> (not res!1565149) (not e!2389635))))

(assert (=> b!3864750 (= res!1565149 (isEmpty!24302 (tail!5875 lt!1343209)))))

(declare-fun b!3864751 () Bool)

(assert (=> b!3864751 (= e!2389630 (= lt!1343356 call!282618))))

(declare-fun bm!282613 () Bool)

(assert (=> bm!282613 (= call!282618 (isEmpty!24302 lt!1343209))))

(declare-fun b!3864752 () Bool)

(assert (=> b!3864752 (= e!2389630 e!2389633)))

(declare-fun c!672727 () Bool)

(assert (=> b!3864752 (= c!672727 ((_ is EmptyLang!11255) (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))))

(declare-fun b!3864753 () Bool)

(assert (=> b!3864753 (= e!2389631 e!2389634)))

(declare-fun res!1565144 () Bool)

(assert (=> b!3864753 (=> res!1565144 e!2389634)))

(assert (=> b!3864753 (= res!1565144 call!282618)))

(assert (= (and d!1145198 c!672726) b!3864742))

(assert (= (and d!1145198 (not c!672726)) b!3864743))

(assert (= (and d!1145198 c!672725) b!3864751))

(assert (= (and d!1145198 (not c!672725)) b!3864752))

(assert (= (and b!3864752 c!672727) b!3864740))

(assert (= (and b!3864752 (not c!672727)) b!3864741))

(assert (= (and b!3864741 (not res!1565147)) b!3864749))

(assert (= (and b!3864749 res!1565151) b!3864748))

(assert (= (and b!3864748 res!1565146) b!3864750))

(assert (= (and b!3864750 res!1565149) b!3864745))

(assert (= (and b!3864749 (not res!1565145)) b!3864744))

(assert (= (and b!3864744 res!1565148) b!3864753))

(assert (= (and b!3864753 (not res!1565144)) b!3864746))

(assert (= (and b!3864746 (not res!1565150)) b!3864747))

(assert (= (or b!3864751 b!3864748 b!3864753) bm!282613))

(declare-fun m!4420269 () Bool)

(assert (=> b!3864750 m!4420269))

(assert (=> b!3864750 m!4420269))

(declare-fun m!4420271 () Bool)

(assert (=> b!3864750 m!4420271))

(assert (=> b!3864746 m!4420269))

(assert (=> b!3864746 m!4420269))

(assert (=> b!3864746 m!4420271))

(declare-fun m!4420273 () Bool)

(assert (=> d!1145198 m!4420273))

(declare-fun m!4420275 () Bool)

(assert (=> d!1145198 m!4420275))

(declare-fun m!4420277 () Bool)

(assert (=> b!3864743 m!4420277))

(assert (=> b!3864743 m!4420277))

(declare-fun m!4420279 () Bool)

(assert (=> b!3864743 m!4420279))

(assert (=> b!3864743 m!4420269))

(assert (=> b!3864743 m!4420279))

(assert (=> b!3864743 m!4420269))

(declare-fun m!4420281 () Bool)

(assert (=> b!3864743 m!4420281))

(declare-fun m!4420283 () Bool)

(assert (=> b!3864742 m!4420283))

(assert (=> b!3864747 m!4420277))

(assert (=> bm!282613 m!4420273))

(assert (=> b!3864745 m!4420277))

(assert (=> b!3864348 d!1145198))

(declare-fun b!3864815 () Bool)

(declare-fun res!1565200 () Bool)

(declare-fun e!2389666 () Bool)

(assert (=> b!3864815 (=> (not res!1565200) (not e!2389666))))

(declare-fun lt!1343393 () Option!8768)

(assert (=> b!3864815 (= res!1565200 (= (++!10458 (list!15258 (charsOf!4178 (_1!23239 (get!13565 lt!1343393)))) (_2!23239 (get!13565 lt!1343393))) lt!1343227))))

(declare-fun b!3864817 () Bool)

(declare-fun res!1565195 () Bool)

(assert (=> b!3864817 (=> (not res!1565195) (not e!2389666))))

(assert (=> b!3864817 (= res!1565195 (= (value!201609 (_1!23239 (get!13565 lt!1343393))) (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (get!13565 lt!1343393)))) (seqFromList!4621 (originalCharacters!6950 (_1!23239 (get!13565 lt!1343393)))))))))

(declare-fun b!3864818 () Bool)

(declare-fun e!2389667 () Bool)

(assert (=> b!3864818 (= e!2389667 e!2389666)))

(declare-fun res!1565196 () Bool)

(assert (=> b!3864818 (=> (not res!1565196) (not e!2389666))))

(assert (=> b!3864818 (= res!1565196 (matchR!5402 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (list!15258 (charsOf!4178 (_1!23239 (get!13565 lt!1343393))))))))

(declare-fun b!3864819 () Bool)

(declare-fun e!2389668 () Option!8768)

(assert (=> b!3864819 (= e!2389668 None!8767)))

(declare-fun b!3864820 () Bool)

(assert (=> b!3864820 (= e!2389666 (= (size!30829 (_1!23239 (get!13565 lt!1343393))) (size!30830 (originalCharacters!6950 (_1!23239 (get!13565 lt!1343393))))))))

(declare-fun b!3864821 () Bool)

(declare-fun res!1565199 () Bool)

(assert (=> b!3864821 (=> (not res!1565199) (not e!2389666))))

(assert (=> b!3864821 (= res!1565199 (= (rule!9226 (_1!23239 (get!13565 lt!1343393))) (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))

(declare-fun b!3864816 () Bool)

(declare-fun e!2389669 () Bool)

(declare-datatypes ((tuple2!40216 0))(
  ( (tuple2!40217 (_1!23242 List!41123) (_2!23242 List!41123)) )
))
(declare-fun findLongestMatchInner!1192 (Regex!11255 List!41123 Int List!41123 List!41123 Int) tuple2!40216)

(assert (=> b!3864816 (= e!2389669 (matchR!5402 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (_1!23242 (findLongestMatchInner!1192 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) Nil!40999 (size!30830 Nil!40999) lt!1343227 lt!1343227 (size!30830 lt!1343227)))))))

(declare-fun d!1145200 () Bool)

(assert (=> d!1145200 e!2389667))

(declare-fun res!1565194 () Bool)

(assert (=> d!1145200 (=> res!1565194 e!2389667)))

(assert (=> d!1145200 (= res!1565194 (isEmpty!24304 lt!1343393))))

(assert (=> d!1145200 (= lt!1343393 e!2389668)))

(declare-fun c!672737 () Bool)

(declare-fun lt!1343394 () tuple2!40216)

(assert (=> d!1145200 (= c!672737 (isEmpty!24302 (_1!23242 lt!1343394)))))

(declare-fun findLongestMatch!1105 (Regex!11255 List!41123) tuple2!40216)

(assert (=> d!1145200 (= lt!1343394 (findLongestMatch!1105 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) lt!1343227))))

(assert (=> d!1145200 (ruleValid!2302 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145200 (= (maxPrefixOneRule!2325 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) lt!1343227) lt!1343393)))

(declare-fun b!3864822 () Bool)

(declare-fun res!1565197 () Bool)

(assert (=> b!3864822 (=> (not res!1565197) (not e!2389666))))

(assert (=> b!3864822 (= res!1565197 (< (size!30830 (_2!23239 (get!13565 lt!1343393))) (size!30830 lt!1343227)))))

(declare-fun b!3864823 () Bool)

(declare-fun size!30834 (BalanceConc!24716) Int)

(assert (=> b!3864823 (= e!2389668 (Some!8767 (tuple2!40211 (Token!11839 (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (seqFromList!4621 (_1!23242 lt!1343394))) (rule!9226 (_1!23239 (v!39065 lt!1343228))) (size!30834 (seqFromList!4621 (_1!23242 lt!1343394))) (_1!23242 lt!1343394)) (_2!23242 lt!1343394))))))

(declare-fun lt!1343391 () Unit!58669)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1165 (Regex!11255 List!41123) Unit!58669)

(assert (=> b!3864823 (= lt!1343391 (longestMatchIsAcceptedByMatchOrIsEmpty!1165 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) lt!1343227))))

(declare-fun res!1565198 () Bool)

(assert (=> b!3864823 (= res!1565198 (isEmpty!24302 (_1!23242 (findLongestMatchInner!1192 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) Nil!40999 (size!30830 Nil!40999) lt!1343227 lt!1343227 (size!30830 lt!1343227)))))))

(assert (=> b!3864823 (=> res!1565198 e!2389669)))

(assert (=> b!3864823 e!2389669))

(declare-fun lt!1343390 () Unit!58669)

(assert (=> b!3864823 (= lt!1343390 lt!1343391)))

(declare-fun lt!1343392 () Unit!58669)

(declare-fun lemmaSemiInverse!1698 (TokenValueInjection!12588 BalanceConc!24716) Unit!58669)

(assert (=> b!3864823 (= lt!1343392 (lemmaSemiInverse!1698 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (seqFromList!4621 (_1!23242 lt!1343394))))))

(assert (= (and d!1145200 c!672737) b!3864819))

(assert (= (and d!1145200 (not c!672737)) b!3864823))

(assert (= (and b!3864823 (not res!1565198)) b!3864816))

(assert (= (and d!1145200 (not res!1565194)) b!3864818))

(assert (= (and b!3864818 res!1565196) b!3864815))

(assert (= (and b!3864815 res!1565200) b!3864822))

(assert (= (and b!3864822 res!1565197) b!3864821))

(assert (= (and b!3864821 res!1565199) b!3864817))

(assert (= (and b!3864817 res!1565195) b!3864820))

(declare-fun m!4420369 () Bool)

(assert (=> d!1145200 m!4420369))

(declare-fun m!4420371 () Bool)

(assert (=> d!1145200 m!4420371))

(declare-fun m!4420373 () Bool)

(assert (=> d!1145200 m!4420373))

(assert (=> d!1145200 m!4419837))

(declare-fun m!4420375 () Bool)

(assert (=> b!3864823 m!4420375))

(declare-fun m!4420377 () Bool)

(assert (=> b!3864823 m!4420377))

(declare-fun m!4420379 () Bool)

(assert (=> b!3864823 m!4420379))

(assert (=> b!3864823 m!4420377))

(declare-fun m!4420381 () Bool)

(assert (=> b!3864823 m!4420381))

(declare-fun m!4420383 () Bool)

(assert (=> b!3864823 m!4420383))

(assert (=> b!3864823 m!4420377))

(declare-fun m!4420385 () Bool)

(assert (=> b!3864823 m!4420385))

(assert (=> b!3864823 m!4420377))

(declare-fun m!4420387 () Bool)

(assert (=> b!3864823 m!4420387))

(assert (=> b!3864823 m!4420381))

(assert (=> b!3864823 m!4419783))

(declare-fun m!4420389 () Bool)

(assert (=> b!3864823 m!4420389))

(assert (=> b!3864823 m!4419783))

(declare-fun m!4420391 () Bool)

(assert (=> b!3864821 m!4420391))

(assert (=> b!3864816 m!4420381))

(assert (=> b!3864816 m!4419783))

(assert (=> b!3864816 m!4420381))

(assert (=> b!3864816 m!4419783))

(assert (=> b!3864816 m!4420389))

(declare-fun m!4420393 () Bool)

(assert (=> b!3864816 m!4420393))

(assert (=> b!3864822 m!4420391))

(declare-fun m!4420395 () Bool)

(assert (=> b!3864822 m!4420395))

(assert (=> b!3864822 m!4419783))

(assert (=> b!3864817 m!4420391))

(declare-fun m!4420397 () Bool)

(assert (=> b!3864817 m!4420397))

(assert (=> b!3864817 m!4420397))

(declare-fun m!4420399 () Bool)

(assert (=> b!3864817 m!4420399))

(assert (=> b!3864820 m!4420391))

(declare-fun m!4420401 () Bool)

(assert (=> b!3864820 m!4420401))

(assert (=> b!3864815 m!4420391))

(declare-fun m!4420403 () Bool)

(assert (=> b!3864815 m!4420403))

(assert (=> b!3864815 m!4420403))

(declare-fun m!4420405 () Bool)

(assert (=> b!3864815 m!4420405))

(assert (=> b!3864815 m!4420405))

(declare-fun m!4420407 () Bool)

(assert (=> b!3864815 m!4420407))

(assert (=> b!3864818 m!4420391))

(assert (=> b!3864818 m!4420403))

(assert (=> b!3864818 m!4420403))

(assert (=> b!3864818 m!4420405))

(assert (=> b!3864818 m!4420405))

(declare-fun m!4420409 () Bool)

(assert (=> b!3864818 m!4420409))

(assert (=> b!3864348 d!1145200))

(declare-fun d!1145214 () Bool)

(assert (=> d!1145214 (= (maxPrefixOneRule!2325 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) lt!1343227) (Some!8767 (tuple2!40211 (Token!11839 (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (seqFromList!4621 lt!1343209)) (rule!9226 (_1!23239 (v!39065 lt!1343228))) (size!30830 lt!1343209) lt!1343209) (_2!23239 (v!39065 lt!1343228)))))))

(declare-fun lt!1343403 () Unit!58669)

(declare-fun choose!22781 (LexerInterface!5939 List!41125 List!41123 List!41123 List!41123 Rule!12500) Unit!58669)

(assert (=> d!1145214 (= lt!1343403 (choose!22781 thiss!20629 rules!2768 lt!1343209 lt!1343227 (_2!23239 (v!39065 lt!1343228)) (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))

(assert (=> d!1145214 (not (isEmpty!24301 rules!2768))))

(assert (=> d!1145214 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1223 thiss!20629 rules!2768 lt!1343209 lt!1343227 (_2!23239 (v!39065 lt!1343228)) (rule!9226 (_1!23239 (v!39065 lt!1343228)))) lt!1343403)))

(declare-fun bs!583268 () Bool)

(assert (= bs!583268 d!1145214))

(assert (=> bs!583268 m!4419857))

(assert (=> bs!583268 m!4419819))

(assert (=> bs!583268 m!4419831))

(assert (=> bs!583268 m!4419791))

(assert (=> bs!583268 m!4419831))

(assert (=> bs!583268 m!4419833))

(declare-fun m!4420433 () Bool)

(assert (=> bs!583268 m!4420433))

(assert (=> b!3864348 d!1145214))

(declare-fun d!1145218 () Bool)

(declare-fun lt!1343404 () Int)

(assert (=> d!1145218 (>= lt!1343404 0)))

(declare-fun e!2389713 () Int)

(assert (=> d!1145218 (= lt!1343404 e!2389713)))

(declare-fun c!672738 () Bool)

(assert (=> d!1145218 (= c!672738 ((_ is Nil!40999) (_2!23239 lt!1343224)))))

(assert (=> d!1145218 (= (size!30830 (_2!23239 lt!1343224)) lt!1343404)))

(declare-fun b!3864880 () Bool)

(assert (=> b!3864880 (= e!2389713 0)))

(declare-fun b!3864881 () Bool)

(assert (=> b!3864881 (= e!2389713 (+ 1 (size!30830 (t!313806 (_2!23239 lt!1343224)))))))

(assert (= (and d!1145218 c!672738) b!3864880))

(assert (= (and d!1145218 (not c!672738)) b!3864881))

(declare-fun m!4420435 () Bool)

(assert (=> b!3864881 m!4420435))

(assert (=> b!3864351 d!1145218))

(declare-fun d!1145220 () Bool)

(assert (=> d!1145220 (= (inv!55158 (tag!7210 (rule!9226 (h!46420 prefixTokens!80)))) (= (mod (str.len (value!201608 (tag!7210 (rule!9226 (h!46420 prefixTokens!80))))) 2) 0))))

(assert (=> b!3864330 d!1145220))

(declare-fun d!1145222 () Bool)

(declare-fun res!1565201 () Bool)

(declare-fun e!2389714 () Bool)

(assert (=> d!1145222 (=> (not res!1565201) (not e!2389714))))

(assert (=> d!1145222 (= res!1565201 (semiInverseModEq!2725 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toValue!8778 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))))))

(assert (=> d!1145222 (= (inv!55161 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) e!2389714)))

(declare-fun b!3864882 () Bool)

(assert (=> b!3864882 (= e!2389714 (equivClasses!2624 (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toValue!8778 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))))))

(assert (= (and d!1145222 res!1565201) b!3864882))

(declare-fun m!4420437 () Bool)

(assert (=> d!1145222 m!4420437))

(declare-fun m!4420439 () Bool)

(assert (=> b!3864882 m!4420439))

(assert (=> b!3864330 d!1145222))

(declare-fun b!3864896 () Bool)

(declare-fun res!1565211 () Bool)

(declare-fun e!2389726 () Bool)

(assert (=> b!3864896 (=> (not res!1565211) (not e!2389726))))

(assert (=> b!3864896 (= res!1565211 (= (head!8164 lt!1343209) (head!8164 lt!1343207)))))

(declare-fun b!3864895 () Bool)

(declare-fun e!2389727 () Bool)

(assert (=> b!3864895 (= e!2389727 e!2389726)))

(declare-fun res!1565210 () Bool)

(assert (=> b!3864895 (=> (not res!1565210) (not e!2389726))))

(assert (=> b!3864895 (= res!1565210 (not ((_ is Nil!40999) lt!1343207)))))

(declare-fun b!3864897 () Bool)

(assert (=> b!3864897 (= e!2389726 (isPrefix!3449 (tail!5875 lt!1343209) (tail!5875 lt!1343207)))))

(declare-fun b!3864898 () Bool)

(declare-fun e!2389728 () Bool)

(assert (=> b!3864898 (= e!2389728 (>= (size!30830 lt!1343207) (size!30830 lt!1343209)))))

(declare-fun d!1145224 () Bool)

(assert (=> d!1145224 e!2389728))

(declare-fun res!1565212 () Bool)

(assert (=> d!1145224 (=> res!1565212 e!2389728)))

(declare-fun lt!1343407 () Bool)

(assert (=> d!1145224 (= res!1565212 (not lt!1343407))))

(assert (=> d!1145224 (= lt!1343407 e!2389727)))

(declare-fun res!1565213 () Bool)

(assert (=> d!1145224 (=> res!1565213 e!2389727)))

(assert (=> d!1145224 (= res!1565213 ((_ is Nil!40999) lt!1343209))))

(assert (=> d!1145224 (= (isPrefix!3449 lt!1343209 lt!1343207) lt!1343407)))

(assert (= (and d!1145224 (not res!1565213)) b!3864895))

(assert (= (and b!3864895 res!1565210) b!3864896))

(assert (= (and b!3864896 res!1565211) b!3864897))

(assert (= (and d!1145224 (not res!1565212)) b!3864898))

(assert (=> b!3864896 m!4420277))

(declare-fun m!4420445 () Bool)

(assert (=> b!3864896 m!4420445))

(assert (=> b!3864897 m!4420269))

(declare-fun m!4420447 () Bool)

(assert (=> b!3864897 m!4420447))

(assert (=> b!3864897 m!4420269))

(assert (=> b!3864897 m!4420447))

(declare-fun m!4420449 () Bool)

(assert (=> b!3864897 m!4420449))

(declare-fun m!4420451 () Bool)

(assert (=> b!3864898 m!4420451))

(assert (=> b!3864898 m!4419857))

(assert (=> b!3864350 d!1145224))

(declare-fun d!1145226 () Bool)

(declare-fun res!1565218 () Bool)

(declare-fun e!2389731 () Bool)

(assert (=> d!1145226 (=> (not res!1565218) (not e!2389731))))

(assert (=> d!1145226 (= res!1565218 (validRegex!5124 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))))

(assert (=> d!1145226 (= (ruleValid!2302 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) e!2389731)))

(declare-fun b!3864903 () Bool)

(declare-fun res!1565219 () Bool)

(assert (=> b!3864903 (=> (not res!1565219) (not e!2389731))))

(assert (=> b!3864903 (= res!1565219 (not (nullable!3925 (regex!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))))))

(declare-fun b!3864904 () Bool)

(assert (=> b!3864904 (= e!2389731 (not (= (tag!7210 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (String!46619 ""))))))

(assert (= (and d!1145226 res!1565218) b!3864903))

(assert (= (and b!3864903 res!1565219) b!3864904))

(assert (=> d!1145226 m!4420275))

(assert (=> b!3864903 m!4420283))

(assert (=> b!3864350 d!1145226))

(declare-fun d!1145228 () Bool)

(assert (=> d!1145228 (= (_2!23239 (v!39065 lt!1343228)) lt!1343205)))

(declare-fun lt!1343410 () Unit!58669)

(declare-fun choose!22783 (List!41123 List!41123 List!41123 List!41123 List!41123) Unit!58669)

(assert (=> d!1145228 (= lt!1343410 (choose!22783 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 lt!1343205 lt!1343227))))

(assert (=> d!1145228 (isPrefix!3449 lt!1343209 lt!1343227)))

(assert (=> d!1145228 (= (lemmaSamePrefixThenSameSuffix!1670 lt!1343209 (_2!23239 (v!39065 lt!1343228)) lt!1343209 lt!1343205 lt!1343227) lt!1343410)))

(declare-fun bs!583269 () Bool)

(assert (= bs!583269 d!1145228))

(declare-fun m!4420453 () Bool)

(assert (=> bs!583269 m!4420453))

(declare-fun m!4420455 () Bool)

(assert (=> bs!583269 m!4420455))

(assert (=> b!3864350 d!1145228))

(declare-fun d!1145230 () Bool)

(assert (=> d!1145230 (= (size!30829 (_1!23239 (v!39065 lt!1343228))) (size!30830 (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228)))))))

(declare-fun Unit!58675 () Unit!58669)

(assert (=> d!1145230 (= (lemmaCharactersSize!1011 (_1!23239 (v!39065 lt!1343228))) Unit!58675)))

(declare-fun bs!583270 () Bool)

(assert (= bs!583270 d!1145230))

(assert (=> bs!583270 m!4419875))

(assert (=> b!3864350 d!1145230))

(declare-fun b!3864905 () Bool)

(declare-fun e!2389734 () Bool)

(declare-fun e!2389732 () Bool)

(assert (=> b!3864905 (= e!2389734 e!2389732)))

(declare-fun res!1565220 () Bool)

(declare-fun lt!1343412 () tuple2!40212)

(assert (=> b!3864905 (= res!1565220 (< (size!30830 (_2!23240 lt!1343412)) (size!30830 (_2!23239 (v!39065 lt!1343228)))))))

(assert (=> b!3864905 (=> (not res!1565220) (not e!2389732))))

(declare-fun b!3864906 () Bool)

(assert (=> b!3864906 (= e!2389732 (not (isEmpty!24300 (_1!23240 lt!1343412))))))

(declare-fun d!1145232 () Bool)

(assert (=> d!1145232 e!2389734))

(declare-fun c!672740 () Bool)

(assert (=> d!1145232 (= c!672740 (> (size!30832 (_1!23240 lt!1343412)) 0))))

(declare-fun e!2389733 () tuple2!40212)

(assert (=> d!1145232 (= lt!1343412 e!2389733)))

(declare-fun c!672739 () Bool)

(declare-fun lt!1343413 () Option!8768)

(assert (=> d!1145232 (= c!672739 ((_ is Some!8767) lt!1343413))))

(assert (=> d!1145232 (= lt!1343413 (maxPrefix!3243 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145232 (= (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343228))) lt!1343412)))

(declare-fun b!3864907 () Bool)

(assert (=> b!3864907 (= e!2389733 (tuple2!40213 Nil!41000 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun b!3864908 () Bool)

(assert (=> b!3864908 (= e!2389734 (= (_2!23240 lt!1343412) (_2!23239 (v!39065 lt!1343228))))))

(declare-fun b!3864909 () Bool)

(declare-fun lt!1343411 () tuple2!40212)

(assert (=> b!3864909 (= e!2389733 (tuple2!40213 (Cons!41000 (_1!23239 (v!39065 lt!1343413)) (_1!23240 lt!1343411)) (_2!23240 lt!1343411)))))

(assert (=> b!3864909 (= lt!1343411 (lexList!1707 thiss!20629 rules!2768 (_2!23239 (v!39065 lt!1343413))))))

(assert (= (and d!1145232 c!672739) b!3864909))

(assert (= (and d!1145232 (not c!672739)) b!3864907))

(assert (= (and d!1145232 c!672740) b!3864905))

(assert (= (and d!1145232 (not c!672740)) b!3864908))

(assert (= (and b!3864905 res!1565220) b!3864906))

(declare-fun m!4420457 () Bool)

(assert (=> b!3864905 m!4420457))

(assert (=> b!3864905 m!4419879))

(declare-fun m!4420459 () Bool)

(assert (=> b!3864906 m!4420459))

(declare-fun m!4420461 () Bool)

(assert (=> d!1145232 m!4420461))

(declare-fun m!4420463 () Bool)

(assert (=> d!1145232 m!4420463))

(declare-fun m!4420465 () Bool)

(assert (=> b!3864909 m!4420465))

(assert (=> b!3864350 d!1145232))

(declare-fun d!1145234 () Bool)

(declare-fun lt!1343416 () List!41123)

(assert (=> d!1145234 (= (++!10458 lt!1343209 lt!1343416) lt!1343227)))

(declare-fun e!2389737 () List!41123)

(assert (=> d!1145234 (= lt!1343416 e!2389737)))

(declare-fun c!672743 () Bool)

(assert (=> d!1145234 (= c!672743 ((_ is Cons!40999) lt!1343209))))

(assert (=> d!1145234 (>= (size!30830 lt!1343227) (size!30830 lt!1343209))))

(assert (=> d!1145234 (= (getSuffix!1904 lt!1343227 lt!1343209) lt!1343416)))

(declare-fun b!3864914 () Bool)

(assert (=> b!3864914 (= e!2389737 (getSuffix!1904 (tail!5875 lt!1343227) (t!313806 lt!1343209)))))

(declare-fun b!3864915 () Bool)

(assert (=> b!3864915 (= e!2389737 lt!1343227)))

(assert (= (and d!1145234 c!672743) b!3864914))

(assert (= (and d!1145234 (not c!672743)) b!3864915))

(declare-fun m!4420467 () Bool)

(assert (=> d!1145234 m!4420467))

(assert (=> d!1145234 m!4419783))

(assert (=> d!1145234 m!4419857))

(declare-fun m!4420469 () Bool)

(assert (=> b!3864914 m!4420469))

(assert (=> b!3864914 m!4420469))

(declare-fun m!4420471 () Bool)

(assert (=> b!3864914 m!4420471))

(assert (=> b!3864350 d!1145234))

(declare-fun d!1145236 () Bool)

(declare-fun lt!1343419 () BalanceConc!24716)

(assert (=> d!1145236 (= (list!15258 lt!1343419) (originalCharacters!6950 (_1!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145236 (= lt!1343419 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))) (value!201609 (_1!23239 (v!39065 lt!1343228)))))))

(assert (=> d!1145236 (= (charsOf!4178 (_1!23239 (v!39065 lt!1343228))) lt!1343419)))

(declare-fun b_lambda!112951 () Bool)

(assert (=> (not b_lambda!112951) (not d!1145236)))

(declare-fun t!313870 () Bool)

(declare-fun tb!224045 () Bool)

(assert (=> (and b!3864347 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313870) tb!224045))

(declare-fun b!3864916 () Bool)

(declare-fun e!2389738 () Bool)

(declare-fun tp!1171616 () Bool)

(assert (=> b!3864916 (= e!2389738 (and (inv!55163 (c!672633 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))) (value!201609 (_1!23239 (v!39065 lt!1343228)))))) tp!1171616))))

(declare-fun result!272868 () Bool)

(assert (=> tb!224045 (= result!272868 (and (inv!55164 (dynLambda!17671 (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))) (value!201609 (_1!23239 (v!39065 lt!1343228))))) e!2389738))))

(assert (= tb!224045 b!3864916))

(declare-fun m!4420473 () Bool)

(assert (=> b!3864916 m!4420473))

(declare-fun m!4420475 () Bool)

(assert (=> tb!224045 m!4420475))

(assert (=> d!1145236 t!313870))

(declare-fun b_and!289479 () Bool)

(assert (= b_and!289437 (and (=> t!313870 result!272868) b_and!289479)))

(declare-fun tb!224047 () Bool)

(declare-fun t!313872 () Bool)

(assert (=> (and b!3864342 (= (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313872) tb!224047))

(declare-fun result!272870 () Bool)

(assert (= result!272870 result!272868))

(assert (=> d!1145236 t!313872))

(declare-fun b_and!289481 () Bool)

(assert (= b_and!289439 (and (=> t!313872 result!272870) b_and!289481)))

(declare-fun tb!224049 () Bool)

(declare-fun t!313874 () Bool)

(assert (=> (and b!3864344 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313874) tb!224049))

(declare-fun result!272872 () Bool)

(assert (= result!272872 result!272868))

(assert (=> d!1145236 t!313874))

(declare-fun b_and!289483 () Bool)

(assert (= b_and!289441 (and (=> t!313874 result!272872) b_and!289483)))

(declare-fun m!4420477 () Bool)

(assert (=> d!1145236 m!4420477))

(declare-fun m!4420479 () Bool)

(assert (=> d!1145236 m!4420479))

(assert (=> b!3864350 d!1145236))

(declare-fun d!1145238 () Bool)

(declare-fun lt!1343420 () Int)

(assert (=> d!1145238 (>= lt!1343420 0)))

(declare-fun e!2389739 () Int)

(assert (=> d!1145238 (= lt!1343420 e!2389739)))

(declare-fun c!672744 () Bool)

(assert (=> d!1145238 (= c!672744 ((_ is Nil!40999) lt!1343209))))

(assert (=> d!1145238 (= (size!30830 lt!1343209) lt!1343420)))

(declare-fun b!3864917 () Bool)

(assert (=> b!3864917 (= e!2389739 0)))

(declare-fun b!3864918 () Bool)

(assert (=> b!3864918 (= e!2389739 (+ 1 (size!30830 (t!313806 lt!1343209))))))

(assert (= (and d!1145238 c!672744) b!3864917))

(assert (= (and d!1145238 (not c!672744)) b!3864918))

(declare-fun m!4420481 () Bool)

(assert (=> b!3864918 m!4420481))

(assert (=> b!3864350 d!1145238))

(declare-fun d!1145240 () Bool)

(declare-fun list!15260 (Conc!12561) List!41123)

(assert (=> d!1145240 (= (list!15258 (charsOf!4178 (_1!23239 (v!39065 lt!1343228)))) (list!15260 (c!672633 (charsOf!4178 (_1!23239 (v!39065 lt!1343228))))))))

(declare-fun bs!583271 () Bool)

(assert (= bs!583271 d!1145240))

(declare-fun m!4420483 () Bool)

(assert (=> bs!583271 m!4420483))

(assert (=> b!3864350 d!1145240))

(declare-fun d!1145242 () Bool)

(assert (=> d!1145242 (ruleValid!2302 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))

(declare-fun lt!1343423 () Unit!58669)

(declare-fun choose!22785 (LexerInterface!5939 Rule!12500 List!41125) Unit!58669)

(assert (=> d!1145242 (= lt!1343423 (choose!22785 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) rules!2768))))

(assert (=> d!1145242 (contains!8277 rules!2768 (rule!9226 (_1!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145242 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1382 thiss!20629 (rule!9226 (_1!23239 (v!39065 lt!1343228))) rules!2768) lt!1343423)))

(declare-fun bs!583272 () Bool)

(assert (= bs!583272 d!1145242))

(assert (=> bs!583272 m!4419837))

(declare-fun m!4420485 () Bool)

(assert (=> bs!583272 m!4420485))

(declare-fun m!4420487 () Bool)

(assert (=> bs!583272 m!4420487))

(assert (=> b!3864350 d!1145242))

(declare-fun lt!1343424 () List!41123)

(declare-fun e!2389740 () Bool)

(declare-fun b!3864922 () Bool)

(assert (=> b!3864922 (= e!2389740 (or (not (= (_2!23239 (v!39065 lt!1343228)) Nil!40999)) (= lt!1343424 lt!1343209)))))

(declare-fun b!3864919 () Bool)

(declare-fun e!2389741 () List!41123)

(assert (=> b!3864919 (= e!2389741 (_2!23239 (v!39065 lt!1343228)))))

(declare-fun b!3864921 () Bool)

(declare-fun res!1565222 () Bool)

(assert (=> b!3864921 (=> (not res!1565222) (not e!2389740))))

(assert (=> b!3864921 (= res!1565222 (= (size!30830 lt!1343424) (+ (size!30830 lt!1343209) (size!30830 (_2!23239 (v!39065 lt!1343228))))))))

(declare-fun d!1145244 () Bool)

(assert (=> d!1145244 e!2389740))

(declare-fun res!1565221 () Bool)

(assert (=> d!1145244 (=> (not res!1565221) (not e!2389740))))

(assert (=> d!1145244 (= res!1565221 (= (content!6121 lt!1343424) ((_ map or) (content!6121 lt!1343209) (content!6121 (_2!23239 (v!39065 lt!1343228))))))))

(assert (=> d!1145244 (= lt!1343424 e!2389741)))

(declare-fun c!672745 () Bool)

(assert (=> d!1145244 (= c!672745 ((_ is Nil!40999) lt!1343209))))

(assert (=> d!1145244 (= (++!10458 lt!1343209 (_2!23239 (v!39065 lt!1343228))) lt!1343424)))

(declare-fun b!3864920 () Bool)

(assert (=> b!3864920 (= e!2389741 (Cons!40999 (h!46419 lt!1343209) (++!10458 (t!313806 lt!1343209) (_2!23239 (v!39065 lt!1343228)))))))

(assert (= (and d!1145244 c!672745) b!3864919))

(assert (= (and d!1145244 (not c!672745)) b!3864920))

(assert (= (and d!1145244 res!1565221) b!3864921))

(assert (= (and b!3864921 res!1565222) b!3864922))

(declare-fun m!4420489 () Bool)

(assert (=> b!3864921 m!4420489))

(assert (=> b!3864921 m!4419857))

(assert (=> b!3864921 m!4419879))

(declare-fun m!4420491 () Bool)

(assert (=> d!1145244 m!4420491))

(declare-fun m!4420493 () Bool)

(assert (=> d!1145244 m!4420493))

(declare-fun m!4420495 () Bool)

(assert (=> d!1145244 m!4420495))

(declare-fun m!4420497 () Bool)

(assert (=> b!3864920 m!4420497))

(assert (=> b!3864350 d!1145244))

(declare-fun d!1145246 () Bool)

(declare-fun fromListB!2135 (List!41123) BalanceConc!24716)

(assert (=> d!1145246 (= (seqFromList!4621 lt!1343209) (fromListB!2135 lt!1343209))))

(declare-fun bs!583273 () Bool)

(assert (= bs!583273 d!1145246))

(declare-fun m!4420499 () Bool)

(assert (=> bs!583273 m!4420499))

(assert (=> b!3864350 d!1145246))

(declare-fun d!1145248 () Bool)

(declare-fun dynLambda!17674 (Int BalanceConc!24716) TokenValue!6580)

(assert (=> d!1145248 (= (apply!9593 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))) (seqFromList!4621 lt!1343209)) (dynLambda!17674 (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))) (seqFromList!4621 lt!1343209)))))

(declare-fun b_lambda!112953 () Bool)

(assert (=> (not b_lambda!112953) (not d!1145248)))

(declare-fun t!313877 () Bool)

(declare-fun tb!224051 () Bool)

(assert (=> (and b!3864347 (= (toValue!8778 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313877) tb!224051))

(declare-fun result!272874 () Bool)

(assert (=> tb!224051 (= result!272874 (inv!21 (dynLambda!17674 (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228))))) (seqFromList!4621 lt!1343209))))))

(declare-fun m!4420501 () Bool)

(assert (=> tb!224051 m!4420501))

(assert (=> d!1145248 t!313877))

(declare-fun b_and!289485 () Bool)

(assert (= b_and!289419 (and (=> t!313877 result!272874) b_and!289485)))

(declare-fun t!313879 () Bool)

(declare-fun tb!224053 () Bool)

(assert (=> (and b!3864342 (= (toValue!8778 (transformation!6350 (h!46421 rules!2768))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313879) tb!224053))

(declare-fun result!272878 () Bool)

(assert (= result!272878 result!272874))

(assert (=> d!1145248 t!313879))

(declare-fun b_and!289487 () Bool)

(assert (= b_and!289423 (and (=> t!313879 result!272878) b_and!289487)))

(declare-fun tb!224055 () Bool)

(declare-fun t!313881 () Bool)

(assert (=> (and b!3864344 (= (toValue!8778 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313881) tb!224055))

(declare-fun result!272880 () Bool)

(assert (= result!272880 result!272874))

(assert (=> d!1145248 t!313881))

(declare-fun b_and!289489 () Bool)

(assert (= b_and!289427 (and (=> t!313881 result!272880) b_and!289489)))

(assert (=> d!1145248 m!4419831))

(declare-fun m!4420503 () Bool)

(assert (=> d!1145248 m!4420503))

(assert (=> b!3864350 d!1145248))

(declare-fun d!1145250 () Bool)

(assert (=> d!1145250 (isPrefix!3449 lt!1343209 (++!10458 lt!1343209 (_2!23239 (v!39065 lt!1343228))))))

(declare-fun lt!1343427 () Unit!58669)

(declare-fun choose!22786 (List!41123 List!41123) Unit!58669)

(assert (=> d!1145250 (= lt!1343427 (choose!22786 lt!1343209 (_2!23239 (v!39065 lt!1343228))))))

(assert (=> d!1145250 (= (lemmaConcatTwoListThenFirstIsPrefix!2312 lt!1343209 (_2!23239 (v!39065 lt!1343228))) lt!1343427)))

(declare-fun bs!583274 () Bool)

(assert (= bs!583274 d!1145250))

(assert (=> bs!583274 m!4419853))

(assert (=> bs!583274 m!4419853))

(declare-fun m!4420505 () Bool)

(assert (=> bs!583274 m!4420505))

(declare-fun m!4420507 () Bool)

(assert (=> bs!583274 m!4420507))

(assert (=> b!3864350 d!1145250))

(declare-fun d!1145252 () Bool)

(assert (=> d!1145252 (= (isEmpty!24300 prefixTokens!80) ((_ is Nil!41000) prefixTokens!80))))

(assert (=> b!3864349 d!1145252))

(declare-fun b!3864938 () Bool)

(declare-fun b_free!104077 () Bool)

(declare-fun b_next!104781 () Bool)

(assert (=> b!3864938 (= b_free!104077 (not b_next!104781))))

(declare-fun t!313883 () Bool)

(declare-fun tb!224057 () Bool)

(assert (=> (and b!3864938 (= (toValue!8778 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313883) tb!224057))

(declare-fun result!272884 () Bool)

(assert (= result!272884 result!272874))

(assert (=> d!1145248 t!313883))

(declare-fun tp!1171630 () Bool)

(declare-fun b_and!289491 () Bool)

(assert (=> b!3864938 (= tp!1171630 (and (=> t!313883 result!272884) b_and!289491))))

(declare-fun b_free!104079 () Bool)

(declare-fun b_next!104783 () Bool)

(assert (=> b!3864938 (= b_free!104079 (not b_next!104783))))

(declare-fun t!313885 () Bool)

(declare-fun tb!224059 () Bool)

(assert (=> (and b!3864938 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313885) tb!224059))

(declare-fun result!272886 () Bool)

(assert (= result!272886 result!272794))

(assert (=> b!3864371 t!313885))

(declare-fun t!313887 () Bool)

(declare-fun tb!224061 () Bool)

(assert (=> (and b!3864938 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313887) tb!224061))

(declare-fun result!272888 () Bool)

(assert (= result!272888 result!272802))

(assert (=> b!3864429 t!313887))

(declare-fun tb!224063 () Bool)

(declare-fun t!313889 () Bool)

(assert (=> (and b!3864938 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313889) tb!224063))

(declare-fun result!272890 () Bool)

(assert (= result!272890 result!272868))

(assert (=> d!1145236 t!313889))

(declare-fun b_and!289493 () Bool)

(declare-fun tp!1171628 () Bool)

(assert (=> b!3864938 (= tp!1171628 (and (=> t!313885 result!272886) (=> t!313887 result!272888) (=> t!313889 result!272890) b_and!289493))))

(declare-fun e!2389762 () Bool)

(declare-fun e!2389760 () Bool)

(declare-fun tp!1171631 () Bool)

(declare-fun b!3864935 () Bool)

(assert (=> b!3864935 (= e!2389762 (and (inv!55162 (h!46420 (t!313807 prefixTokens!80))) e!2389760 tp!1171631))))

(assert (=> b!3864353 (= tp!1171540 e!2389762)))

(declare-fun e!2389757 () Bool)

(declare-fun tp!1171627 () Bool)

(declare-fun b!3864936 () Bool)

(assert (=> b!3864936 (= e!2389760 (and (inv!21 (value!201609 (h!46420 (t!313807 prefixTokens!80)))) e!2389757 tp!1171627))))

(declare-fun tp!1171629 () Bool)

(declare-fun e!2389761 () Bool)

(declare-fun b!3864937 () Bool)

(assert (=> b!3864937 (= e!2389757 (and tp!1171629 (inv!55158 (tag!7210 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (inv!55161 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) e!2389761))))

(assert (=> b!3864938 (= e!2389761 (and tp!1171630 tp!1171628))))

(assert (= b!3864937 b!3864938))

(assert (= b!3864936 b!3864937))

(assert (= b!3864935 b!3864936))

(assert (= (and b!3864353 ((_ is Cons!41000) (t!313807 prefixTokens!80))) b!3864935))

(declare-fun m!4420509 () Bool)

(assert (=> b!3864935 m!4420509))

(declare-fun m!4420511 () Bool)

(assert (=> b!3864936 m!4420511))

(declare-fun m!4420513 () Bool)

(assert (=> b!3864937 m!4420513))

(declare-fun m!4420515 () Bool)

(assert (=> b!3864937 m!4420515))

(declare-fun b!3864943 () Bool)

(declare-fun e!2389765 () Bool)

(declare-fun tp!1171634 () Bool)

(assert (=> b!3864943 (= e!2389765 (and tp_is_empty!19481 tp!1171634))))

(assert (=> b!3864364 (= tp!1171529 e!2389765)))

(assert (= (and b!3864364 ((_ is Cons!40999) (t!313806 suffix!1176))) b!3864943))

(declare-fun b!3864944 () Bool)

(declare-fun e!2389766 () Bool)

(declare-fun tp!1171635 () Bool)

(assert (=> b!3864944 (= e!2389766 (and tp_is_empty!19481 tp!1171635))))

(assert (=> b!3864363 (= tp!1171527 e!2389766)))

(assert (= (and b!3864363 ((_ is Cons!40999) (t!313806 prefix!426))) b!3864944))

(declare-fun b!3864945 () Bool)

(declare-fun e!2389767 () Bool)

(declare-fun tp!1171636 () Bool)

(assert (=> b!3864945 (= e!2389767 (and tp_is_empty!19481 tp!1171636))))

(assert (=> b!3864341 (= tp!1171536 e!2389767)))

(assert (= (and b!3864341 ((_ is Cons!40999) (originalCharacters!6950 (h!46420 prefixTokens!80)))) b!3864945))

(declare-fun b!3864949 () Bool)

(declare-fun b_free!104081 () Bool)

(declare-fun b_next!104785 () Bool)

(assert (=> b!3864949 (= b_free!104081 (not b_next!104785))))

(declare-fun tb!224065 () Bool)

(declare-fun t!313891 () Bool)

(assert (=> (and b!3864949 (= (toValue!8778 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313891) tb!224065))

(declare-fun result!272894 () Bool)

(assert (= result!272894 result!272874))

(assert (=> d!1145248 t!313891))

(declare-fun b_and!289495 () Bool)

(declare-fun tp!1171640 () Bool)

(assert (=> b!3864949 (= tp!1171640 (and (=> t!313891 result!272894) b_and!289495))))

(declare-fun b_free!104083 () Bool)

(declare-fun b_next!104787 () Bool)

(assert (=> b!3864949 (= b_free!104083 (not b_next!104787))))

(declare-fun t!313893 () Bool)

(declare-fun tb!224067 () Bool)

(assert (=> (and b!3864949 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313893) tb!224067))

(declare-fun result!272896 () Bool)

(assert (= result!272896 result!272794))

(assert (=> b!3864371 t!313893))

(declare-fun t!313895 () Bool)

(declare-fun tb!224069 () Bool)

(assert (=> (and b!3864949 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313895) tb!224069))

(declare-fun result!272898 () Bool)

(assert (= result!272898 result!272802))

(assert (=> b!3864429 t!313895))

(declare-fun tb!224071 () Bool)

(declare-fun t!313897 () Bool)

(assert (=> (and b!3864949 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313897) tb!224071))

(declare-fun result!272900 () Bool)

(assert (= result!272900 result!272868))

(assert (=> d!1145236 t!313897))

(declare-fun tp!1171638 () Bool)

(declare-fun b_and!289497 () Bool)

(assert (=> b!3864949 (= tp!1171638 (and (=> t!313893 result!272896) (=> t!313895 result!272898) (=> t!313897 result!272900) b_and!289497))))

(declare-fun tp!1171641 () Bool)

(declare-fun e!2389773 () Bool)

(declare-fun e!2389771 () Bool)

(declare-fun b!3864946 () Bool)

(assert (=> b!3864946 (= e!2389773 (and (inv!55162 (h!46420 (t!313807 suffixTokens!72))) e!2389771 tp!1171641))))

(assert (=> b!3864355 (= tp!1171531 e!2389773)))

(declare-fun tp!1171637 () Bool)

(declare-fun b!3864947 () Bool)

(declare-fun e!2389768 () Bool)

(assert (=> b!3864947 (= e!2389771 (and (inv!21 (value!201609 (h!46420 (t!313807 suffixTokens!72)))) e!2389768 tp!1171637))))

(declare-fun tp!1171639 () Bool)

(declare-fun b!3864948 () Bool)

(declare-fun e!2389772 () Bool)

(assert (=> b!3864948 (= e!2389768 (and tp!1171639 (inv!55158 (tag!7210 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (inv!55161 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) e!2389772))))

(assert (=> b!3864949 (= e!2389772 (and tp!1171640 tp!1171638))))

(assert (= b!3864948 b!3864949))

(assert (= b!3864947 b!3864948))

(assert (= b!3864946 b!3864947))

(assert (= (and b!3864355 ((_ is Cons!41000) (t!313807 suffixTokens!72))) b!3864946))

(declare-fun m!4420517 () Bool)

(assert (=> b!3864946 m!4420517))

(declare-fun m!4420519 () Bool)

(assert (=> b!3864947 m!4420519))

(declare-fun m!4420521 () Bool)

(assert (=> b!3864948 m!4420521))

(declare-fun m!4420523 () Bool)

(assert (=> b!3864948 m!4420523))

(declare-fun b!3864950 () Bool)

(declare-fun e!2389774 () Bool)

(declare-fun tp!1171642 () Bool)

(assert (=> b!3864950 (= e!2389774 (and tp_is_empty!19481 tp!1171642))))

(assert (=> b!3864334 (= tp!1171537 e!2389774)))

(assert (= (and b!3864334 ((_ is Cons!40999) (originalCharacters!6950 (h!46420 suffixTokens!72)))) b!3864950))

(declare-fun b!3864962 () Bool)

(declare-fun e!2389777 () Bool)

(declare-fun tp!1171657 () Bool)

(declare-fun tp!1171653 () Bool)

(assert (=> b!3864962 (= e!2389777 (and tp!1171657 tp!1171653))))

(declare-fun b!3864961 () Bool)

(assert (=> b!3864961 (= e!2389777 tp_is_empty!19481)))

(declare-fun b!3864964 () Bool)

(declare-fun tp!1171654 () Bool)

(declare-fun tp!1171655 () Bool)

(assert (=> b!3864964 (= e!2389777 (and tp!1171654 tp!1171655))))

(assert (=> b!3864365 (= tp!1171539 e!2389777)))

(declare-fun b!3864963 () Bool)

(declare-fun tp!1171656 () Bool)

(assert (=> b!3864963 (= e!2389777 tp!1171656)))

(assert (= (and b!3864365 ((_ is ElementMatch!11255) (regex!6350 (rule!9226 (h!46420 suffixTokens!72))))) b!3864961))

(assert (= (and b!3864365 ((_ is Concat!17836) (regex!6350 (rule!9226 (h!46420 suffixTokens!72))))) b!3864962))

(assert (= (and b!3864365 ((_ is Star!11255) (regex!6350 (rule!9226 (h!46420 suffixTokens!72))))) b!3864963))

(assert (= (and b!3864365 ((_ is Union!11255) (regex!6350 (rule!9226 (h!46420 suffixTokens!72))))) b!3864964))

(declare-fun b!3864975 () Bool)

(declare-fun b_free!104085 () Bool)

(declare-fun b_next!104789 () Bool)

(assert (=> b!3864975 (= b_free!104085 (not b_next!104789))))

(declare-fun t!313899 () Bool)

(declare-fun tb!224073 () Bool)

(assert (=> (and b!3864975 (= (toValue!8778 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toValue!8778 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313899) tb!224073))

(declare-fun result!272906 () Bool)

(assert (= result!272906 result!272874))

(assert (=> d!1145248 t!313899))

(declare-fun tp!1171666 () Bool)

(declare-fun b_and!289499 () Bool)

(assert (=> b!3864975 (= tp!1171666 (and (=> t!313899 result!272906) b_and!289499))))

(declare-fun b_free!104087 () Bool)

(declare-fun b_next!104791 () Bool)

(assert (=> b!3864975 (= b_free!104087 (not b_next!104791))))

(declare-fun t!313901 () Bool)

(declare-fun tb!224075 () Bool)

(assert (=> (and b!3864975 (= (toChars!8637 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80))))) t!313901) tb!224075))

(declare-fun result!272908 () Bool)

(assert (= result!272908 result!272794))

(assert (=> b!3864371 t!313901))

(declare-fun tb!224077 () Bool)

(declare-fun t!313903 () Bool)

(assert (=> (and b!3864975 (= (toChars!8637 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72))))) t!313903) tb!224077))

(declare-fun result!272910 () Bool)

(assert (= result!272910 result!272802))

(assert (=> b!3864429 t!313903))

(declare-fun t!313905 () Bool)

(declare-fun tb!224079 () Bool)

(assert (=> (and b!3864975 (= (toChars!8637 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toChars!8637 (transformation!6350 (rule!9226 (_1!23239 (v!39065 lt!1343228)))))) t!313905) tb!224079))

(declare-fun result!272912 () Bool)

(assert (= result!272912 result!272868))

(assert (=> d!1145236 t!313905))

(declare-fun tp!1171669 () Bool)

(declare-fun b_and!289501 () Bool)

(assert (=> b!3864975 (= tp!1171669 (and (=> t!313901 result!272908) (=> t!313903 result!272910) (=> t!313905 result!272912) b_and!289501))))

(declare-fun e!2389787 () Bool)

(assert (=> b!3864975 (= e!2389787 (and tp!1171666 tp!1171669))))

(declare-fun tp!1171667 () Bool)

(declare-fun e!2389788 () Bool)

(declare-fun b!3864974 () Bool)

(assert (=> b!3864974 (= e!2389788 (and tp!1171667 (inv!55158 (tag!7210 (h!46421 (t!313808 rules!2768)))) (inv!55161 (transformation!6350 (h!46421 (t!313808 rules!2768)))) e!2389787))))

(declare-fun b!3864973 () Bool)

(declare-fun e!2389786 () Bool)

(declare-fun tp!1171668 () Bool)

(assert (=> b!3864973 (= e!2389786 (and e!2389788 tp!1171668))))

(assert (=> b!3864338 (= tp!1171542 e!2389786)))

(assert (= b!3864974 b!3864975))

(assert (= b!3864973 b!3864974))

(assert (= (and b!3864338 ((_ is Cons!41001) (t!313808 rules!2768))) b!3864973))

(declare-fun m!4420525 () Bool)

(assert (=> b!3864974 m!4420525))

(declare-fun m!4420527 () Bool)

(assert (=> b!3864974 m!4420527))

(declare-fun b!3864977 () Bool)

(declare-fun e!2389790 () Bool)

(declare-fun tp!1171674 () Bool)

(declare-fun tp!1171670 () Bool)

(assert (=> b!3864977 (= e!2389790 (and tp!1171674 tp!1171670))))

(declare-fun b!3864976 () Bool)

(assert (=> b!3864976 (= e!2389790 tp_is_empty!19481)))

(declare-fun b!3864979 () Bool)

(declare-fun tp!1171671 () Bool)

(declare-fun tp!1171672 () Bool)

(assert (=> b!3864979 (= e!2389790 (and tp!1171671 tp!1171672))))

(assert (=> b!3864330 (= tp!1171530 e!2389790)))

(declare-fun b!3864978 () Bool)

(declare-fun tp!1171673 () Bool)

(assert (=> b!3864978 (= e!2389790 tp!1171673)))

(assert (= (and b!3864330 ((_ is ElementMatch!11255) (regex!6350 (rule!9226 (h!46420 prefixTokens!80))))) b!3864976))

(assert (= (and b!3864330 ((_ is Concat!17836) (regex!6350 (rule!9226 (h!46420 prefixTokens!80))))) b!3864977))

(assert (= (and b!3864330 ((_ is Star!11255) (regex!6350 (rule!9226 (h!46420 prefixTokens!80))))) b!3864978))

(assert (= (and b!3864330 ((_ is Union!11255) (regex!6350 (rule!9226 (h!46420 prefixTokens!80))))) b!3864979))

(declare-fun b!3864981 () Bool)

(declare-fun e!2389791 () Bool)

(declare-fun tp!1171679 () Bool)

(declare-fun tp!1171675 () Bool)

(assert (=> b!3864981 (= e!2389791 (and tp!1171679 tp!1171675))))

(declare-fun b!3864980 () Bool)

(assert (=> b!3864980 (= e!2389791 tp_is_empty!19481)))

(declare-fun b!3864983 () Bool)

(declare-fun tp!1171676 () Bool)

(declare-fun tp!1171677 () Bool)

(assert (=> b!3864983 (= e!2389791 (and tp!1171676 tp!1171677))))

(assert (=> b!3864340 (= tp!1171532 e!2389791)))

(declare-fun b!3864982 () Bool)

(declare-fun tp!1171678 () Bool)

(assert (=> b!3864982 (= e!2389791 tp!1171678)))

(assert (= (and b!3864340 ((_ is ElementMatch!11255) (regex!6350 (h!46421 rules!2768)))) b!3864980))

(assert (= (and b!3864340 ((_ is Concat!17836) (regex!6350 (h!46421 rules!2768)))) b!3864981))

(assert (= (and b!3864340 ((_ is Star!11255) (regex!6350 (h!46421 rules!2768)))) b!3864982))

(assert (= (and b!3864340 ((_ is Union!11255) (regex!6350 (h!46421 rules!2768)))) b!3864983))

(declare-fun b!3864984 () Bool)

(declare-fun e!2389792 () Bool)

(declare-fun tp!1171680 () Bool)

(assert (=> b!3864984 (= e!2389792 (and tp_is_empty!19481 tp!1171680))))

(assert (=> b!3864360 (= tp!1171535 e!2389792)))

(assert (= (and b!3864360 ((_ is Cons!40999) (t!313806 suffixResult!91))) b!3864984))

(declare-fun b_lambda!112955 () Bool)

(assert (= b_lambda!112935 (or (and b!3864975 b_free!104087 (= (toChars!8637 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))))) (and b!3864342 b_free!104059 (= (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))))) (and b!3864949 b_free!104083 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))))) (and b!3864938 b_free!104079 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))))) (and b!3864344 b_free!104063 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))))) (and b!3864347 b_free!104055) b_lambda!112955)))

(declare-fun b_lambda!112957 () Bool)

(assert (= b_lambda!112937 (or (and b!3864347 b_free!104055 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 prefixTokens!80)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))))) (and b!3864949 b_free!104083 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 suffixTokens!72))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))))) (and b!3864342 b_free!104059 (= (toChars!8637 (transformation!6350 (h!46421 rules!2768))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))))) (and b!3864975 b_free!104087 (= (toChars!8637 (transformation!6350 (h!46421 (t!313808 rules!2768)))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))))) (and b!3864344 b_free!104063) (and b!3864938 b_free!104079 (= (toChars!8637 (transformation!6350 (rule!9226 (h!46420 (t!313807 prefixTokens!80))))) (toChars!8637 (transformation!6350 (rule!9226 (h!46420 suffixTokens!72)))))) b_lambda!112957)))

(check-sat (not d!1145198) b_and!289501 (not b!3864882) (not b!3864914) (not d!1145226) (not b!3864983) (not b!3864696) (not b!3864817) (not tb!224045) (not b!3864815) (not b_lambda!112951) (not d!1145234) (not d!1145102) (not b!3864512) b_and!289485 (not b!3864704) (not b!3864645) (not b!3864920) (not b!3864637) (not b!3864945) (not d!1145190) (not b!3864818) (not b!3864545) (not b!3864544) b_and!289493 (not b_next!104783) (not b!3864524) (not b!3864821) b_and!289495 (not d!1145230) (not b!3864472) (not b!3864820) (not d!1145246) (not b!3864745) (not b_lambda!112953) (not tb!223991) (not b_lambda!112957) (not b!3864963) (not d!1145240) (not b!3864947) tp_is_empty!19481 (not d!1145070) (not b_next!104785) (not b!3864905) (not b!3864746) (not b!3864742) (not b!3864906) (not d!1145192) (not b_next!104791) (not d!1145196) (not b!3864643) (not b!3864816) (not b!3864903) (not b_lambda!112955) (not d!1145228) (not b!3864394) (not b!3864428) (not b!3864642) (not d!1145092) (not b!3864747) (not b!3864701) (not b!3864823) (not b_next!104765) (not b!3864981) (not d!1145172) (not d!1145200) (not b!3864943) (not b!3864909) (not b!3864977) (not bm!282607) (not b!3864537) (not b!3864703) (not d!1145188) (not b_next!104759) (not b!3864680) (not b!3864371) (not b!3864372) b_and!289487 (not b!3864638) (not b!3864698) (not b!3864393) (not b!3864710) (not b!3864699) (not tb!224051) (not b!3864937) (not b!3864948) (not d!1145250) (not b!3864644) (not b!3864641) (not b!3864441) (not b!3864513) b_and!289481 (not b!3864946) (not d!1145064) (not b!3864944) (not b!3864471) (not b!3864750) (not b!3864822) (not bm!282613) (not b!3864523) (not b!3864918) (not b_next!104761) (not d!1145244) (not b!3864898) (not b!3864916) (not b!3864881) (not b!3864548) (not b!3864711) (not b!3864897) (not d!1145104) (not b_next!104763) b_and!289483 (not b_next!104789) (not b!3864538) (not b!3864964) (not d!1145050) (not b!3864979) (not b!3864896) (not b!3864978) (not b!3864974) (not b!3864973) (not b!3864377) (not d!1145242) (not b_next!104787) b_and!289491 (not b!3864405) (not b!3864921) (not d!1145116) (not d!1145048) (not b!3864516) (not b!3864403) (not tb!223985) (not b!3864743) (not b!3864640) (not b_next!104767) (not b!3864474) (not b!3864935) (not b!3864936) (not b_next!104781) b_and!289489 b_and!289479 (not d!1145222) (not b!3864430) b_and!289497 (not b!3864962) (not d!1145176) (not b!3864707) (not b!3864982) (not d!1145160) b_and!289499 (not b!3864429) (not b!3864401) (not b!3864706) (not d!1145120) (not b_next!104757) (not b!3864469) (not d!1145236) (not b!3864984) (not b!3864950) (not d!1145232) (not d!1145214))
(check-sat b_and!289501 b_and!289485 b_and!289495 (not b_next!104785) (not b_next!104791) (not b_next!104765) (not b_next!104759) b_and!289487 b_and!289481 (not b_next!104761) (not b_next!104767) b_and!289493 (not b_next!104783) (not b_next!104789) (not b_next!104763) b_and!289483 (not b_next!104787) b_and!289491 (not b_next!104781) b_and!289489 b_and!289479 b_and!289497 b_and!289499 (not b_next!104757))

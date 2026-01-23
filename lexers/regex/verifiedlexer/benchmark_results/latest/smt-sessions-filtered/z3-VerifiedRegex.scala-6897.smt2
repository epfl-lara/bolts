; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363504 () Bool)

(assert start!363504)

(declare-fun b!3872596 () Bool)

(declare-fun b_free!104605 () Bool)

(declare-fun b_next!105309 () Bool)

(assert (=> b!3872596 (= b_free!104605 (not b_next!105309))))

(declare-fun tp!1174134 () Bool)

(declare-fun b_and!290307 () Bool)

(assert (=> b!3872596 (= tp!1174134 b_and!290307)))

(declare-fun b_free!104607 () Bool)

(declare-fun b_next!105311 () Bool)

(assert (=> b!3872596 (= b_free!104607 (not b_next!105311))))

(declare-fun tp!1174133 () Bool)

(declare-fun b_and!290309 () Bool)

(assert (=> b!3872596 (= tp!1174133 b_and!290309)))

(declare-fun b!3872597 () Bool)

(declare-fun b_free!104609 () Bool)

(declare-fun b_next!105313 () Bool)

(assert (=> b!3872597 (= b_free!104609 (not b_next!105313))))

(declare-fun tp!1174138 () Bool)

(declare-fun b_and!290311 () Bool)

(assert (=> b!3872597 (= tp!1174138 b_and!290311)))

(declare-fun b_free!104611 () Bool)

(declare-fun b_next!105315 () Bool)

(assert (=> b!3872597 (= b_free!104611 (not b_next!105315))))

(declare-fun tp!1174137 () Bool)

(declare-fun b_and!290313 () Bool)

(assert (=> b!3872597 (= tp!1174137 b_and!290313)))

(declare-fun b!3872630 () Bool)

(declare-fun b_free!104613 () Bool)

(declare-fun b_next!105317 () Bool)

(assert (=> b!3872630 (= b_free!104613 (not b_next!105317))))

(declare-fun tp!1174127 () Bool)

(declare-fun b_and!290315 () Bool)

(assert (=> b!3872630 (= tp!1174127 b_and!290315)))

(declare-fun b_free!104615 () Bool)

(declare-fun b_next!105319 () Bool)

(assert (=> b!3872630 (= b_free!104615 (not b_next!105319))))

(declare-fun tp!1174139 () Bool)

(declare-fun b_and!290317 () Bool)

(assert (=> b!3872630 (= tp!1174139 b_and!290317)))

(declare-fun b!3872585 () Bool)

(declare-fun res!1568662 () Bool)

(declare-fun e!2395419 () Bool)

(assert (=> b!3872585 (=> (not res!1568662) (not e!2395419))))

(declare-datatypes ((List!41264 0))(
  ( (Nil!41140) (Cons!41140 (h!46560 (_ BitVec 16)) (t!314619 List!41264)) )
))
(declare-datatypes ((TokenValue!6612 0))(
  ( (FloatLiteralValue!13224 (text!46729 List!41264)) (TokenValueExt!6611 (__x!25441 Int)) (Broken!33060 (value!202495 List!41264)) (Object!6735) (End!6612) (Def!6612) (Underscore!6612) (Match!6612) (Else!6612) (Error!6612) (Case!6612) (If!6612) (Extends!6612) (Abstract!6612) (Class!6612) (Val!6612) (DelimiterValue!13224 (del!6672 List!41264)) (KeywordValue!6618 (value!202496 List!41264)) (CommentValue!13224 (value!202497 List!41264)) (WhitespaceValue!13224 (value!202498 List!41264)) (IndentationValue!6612 (value!202499 List!41264)) (String!46777) (Int32!6612) (Broken!33061 (value!202500 List!41264)) (Boolean!6613) (Unit!59008) (OperatorValue!6615 (op!6672 List!41264)) (IdentifierValue!13224 (value!202501 List!41264)) (IdentifierValue!13225 (value!202502 List!41264)) (WhitespaceValue!13225 (value!202503 List!41264)) (True!13224) (False!13224) (Broken!33062 (value!202504 List!41264)) (Broken!33063 (value!202505 List!41264)) (True!13225) (RightBrace!6612) (RightBracket!6612) (Colon!6612) (Null!6612) (Comma!6612) (LeftBracket!6612) (False!13225) (LeftBrace!6612) (ImaginaryLiteralValue!6612 (text!46730 List!41264)) (StringLiteralValue!19836 (value!202506 List!41264)) (EOFValue!6612 (value!202507 List!41264)) (IdentValue!6612 (value!202508 List!41264)) (DelimiterValue!13225 (value!202509 List!41264)) (DedentValue!6612 (value!202510 List!41264)) (NewLineValue!6612 (value!202511 List!41264)) (IntegerValue!19836 (value!202512 (_ BitVec 32)) (text!46731 List!41264)) (IntegerValue!19837 (value!202513 Int) (text!46732 List!41264)) (Times!6612) (Or!6612) (Equal!6612) (Minus!6612) (Broken!33064 (value!202514 List!41264)) (And!6612) (Div!6612) (LessEqual!6612) (Mod!6612) (Concat!17899) (Not!6612) (Plus!6612) (SpaceValue!6612 (value!202515 List!41264)) (IntegerValue!19838 (value!202516 Int) (text!46733 List!41264)) (StringLiteralValue!19837 (text!46734 List!41264)) (FloatLiteralValue!13225 (text!46735 List!41264)) (BytesLiteralValue!6612 (value!202517 List!41264)) (CommentValue!13225 (value!202518 List!41264)) (StringLiteralValue!19838 (value!202519 List!41264)) (ErrorTokenValue!6612 (msg!6673 List!41264)) )
))
(declare-datatypes ((C!22760 0))(
  ( (C!22761 (val!13474 Int)) )
))
(declare-datatypes ((Regex!11287 0))(
  ( (ElementMatch!11287 (c!673874 C!22760)) (Concat!17900 (regOne!23086 Regex!11287) (regTwo!23086 Regex!11287)) (EmptyExpr!11287) (Star!11287 (reg!11616 Regex!11287)) (EmptyLang!11287) (Union!11287 (regOne!23087 Regex!11287) (regTwo!23087 Regex!11287)) )
))
(declare-datatypes ((String!46778 0))(
  ( (String!46779 (value!202520 String)) )
))
(declare-datatypes ((List!41265 0))(
  ( (Nil!41141) (Cons!41141 (h!46561 C!22760) (t!314620 List!41265)) )
))
(declare-datatypes ((IArray!25191 0))(
  ( (IArray!25192 (innerList!12653 List!41265)) )
))
(declare-datatypes ((Conc!12593 0))(
  ( (Node!12593 (left!31602 Conc!12593) (right!31932 Conc!12593) (csize!25416 Int) (cheight!12804 Int)) (Leaf!19491 (xs!15899 IArray!25191) (csize!25417 Int)) (Empty!12593) )
))
(declare-datatypes ((BalanceConc!24780 0))(
  ( (BalanceConc!24781 (c!673875 Conc!12593)) )
))
(declare-datatypes ((TokenValueInjection!12652 0))(
  ( (TokenValueInjection!12653 (toValue!8810 Int) (toChars!8669 Int)) )
))
(declare-datatypes ((Rule!12564 0))(
  ( (Rule!12565 (regex!6382 Regex!11287) (tag!7242 String!46778) (isSeparator!6382 Bool) (transformation!6382 TokenValueInjection!12652)) )
))
(declare-datatypes ((Token!11902 0))(
  ( (Token!11903 (value!202521 TokenValue!6612) (rule!9272 Rule!12564) (size!30921 Int) (originalCharacters!6982 List!41265)) )
))
(declare-datatypes ((List!41266 0))(
  ( (Nil!41142) (Cons!41142 (h!46562 Token!11902) (t!314621 List!41266)) )
))
(declare-fun prefixTokens!80 () List!41266)

(declare-fun isEmpty!24410 (List!41266) Bool)

(assert (=> b!3872585 (= res!1568662 (not (isEmpty!24410 prefixTokens!80)))))

(declare-fun tp!1174136 () Bool)

(declare-fun e!2395427 () Bool)

(declare-fun b!3872586 () Bool)

(declare-fun suffixTokens!72 () List!41266)

(declare-fun e!2395424 () Bool)

(declare-fun inv!21 (TokenValue!6612) Bool)

(assert (=> b!3872586 (= e!2395424 (and (inv!21 (value!202521 (h!46562 suffixTokens!72))) e!2395427 tp!1174136))))

(declare-fun b!3872587 () Bool)

(declare-fun e!2395405 () Bool)

(declare-fun e!2395404 () Bool)

(assert (=> b!3872587 (= e!2395405 e!2395404)))

(declare-fun res!1568666 () Bool)

(assert (=> b!3872587 (=> res!1568666 e!2395404)))

(declare-fun lt!1348592 () List!41265)

(declare-datatypes ((tuple2!40366 0))(
  ( (tuple2!40367 (_1!23317 Token!11902) (_2!23317 List!41265)) )
))
(declare-datatypes ((Option!8800 0))(
  ( (None!8799) (Some!8799 (v!39097 tuple2!40366)) )
))
(declare-fun lt!1348557 () Option!8800)

(assert (=> b!3872587 (= res!1568666 (not (= lt!1348592 (_2!23317 (v!39097 lt!1348557)))))))

(assert (=> b!3872587 (= (_2!23317 (v!39097 lt!1348557)) lt!1348592)))

(declare-datatypes ((Unit!59009 0))(
  ( (Unit!59010) )
))
(declare-fun lt!1348583 () Unit!59009)

(declare-fun lt!1348555 () List!41265)

(declare-fun lt!1348575 () List!41265)

(declare-fun lemmaSamePrefixThenSameSuffix!1702 (List!41265 List!41265 List!41265 List!41265 List!41265) Unit!59009)

(assert (=> b!3872587 (= lt!1348583 (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348592 lt!1348555))))

(declare-fun lt!1348567 () List!41265)

(declare-fun isPrefix!3481 (List!41265 List!41265) Bool)

(assert (=> b!3872587 (isPrefix!3481 lt!1348575 lt!1348567)))

(declare-fun lt!1348566 () Unit!59009)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2344 (List!41265 List!41265) Unit!59009)

(assert (=> b!3872587 (= lt!1348566 (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348575 lt!1348592))))

(declare-fun b!3872588 () Bool)

(declare-fun e!2395408 () Unit!59009)

(declare-fun Unit!59011 () Unit!59009)

(assert (=> b!3872588 (= e!2395408 Unit!59011)))

(declare-fun suffixResult!91 () List!41265)

(declare-datatypes ((LexerInterface!5971 0))(
  ( (LexerInterfaceExt!5968 (__x!25442 Int)) (Lexer!5969) )
))
(declare-fun thiss!20629 () LexerInterface!5971)

(declare-fun suffix!1176 () List!41265)

(declare-datatypes ((List!41267 0))(
  ( (Nil!41143) (Cons!41143 (h!46563 Rule!12564) (t!314622 List!41267)) )
))
(declare-fun rules!2768 () List!41267)

(declare-fun lt!1348588 () List!41266)

(declare-fun lt!1348579 () tuple2!40366)

(declare-fun lt!1348599 () Unit!59009)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!42 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41266 List!41265 List!41266) Unit!59009)

(assert (=> b!3872588 (= lt!1348599 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!42 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91 lt!1348588))))

(declare-fun res!1568665 () Bool)

(declare-datatypes ((tuple2!40368 0))(
  ( (tuple2!40369 (_1!23318 List!41266) (_2!23318 List!41265)) )
))
(declare-fun call!282750 () tuple2!40368)

(declare-fun ++!10521 (List!41266 List!41266) List!41266)

(assert (=> b!3872588 (= res!1568665 (not (= call!282750 (tuple2!40369 (++!10521 lt!1348588 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2395412 () Bool)

(assert (=> b!3872588 (=> (not res!1568665) (not e!2395412))))

(assert (=> b!3872588 e!2395412))

(declare-fun b!3872589 () Bool)

(declare-fun c!673869 () Bool)

(assert (=> b!3872589 (= c!673869 (isEmpty!24410 lt!1348588))))

(declare-fun tail!5919 (List!41266) List!41266)

(assert (=> b!3872589 (= lt!1348588 (tail!5919 prefixTokens!80))))

(declare-fun e!2395438 () Unit!59009)

(assert (=> b!3872589 (= e!2395438 e!2395408)))

(declare-fun b!3872590 () Bool)

(declare-fun Unit!59012 () Unit!59009)

(assert (=> b!3872590 (= e!2395408 Unit!59012)))

(declare-fun lt!1348561 () Unit!59009)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!466 (List!41265 List!41265 List!41265 List!41265) Unit!59009)

(assert (=> b!3872590 (= lt!1348561 (lemmaConcatSameAndSameSizesThenSameLists!466 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 (_2!23317 lt!1348579)))))

(assert (=> b!3872590 (= (_2!23317 (v!39097 lt!1348557)) (_2!23317 lt!1348579))))

(declare-fun lt!1348581 () Unit!59009)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!42 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41266 List!41265) Unit!59009)

(assert (=> b!3872590 (= lt!1348581 (lemmaLexWithSmallerInputCannotProduceSameResults!42 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91))))

(declare-fun res!1568671 () Bool)

(declare-fun lt!1348600 () tuple2!40368)

(assert (=> b!3872590 (= res!1568671 (not (= call!282750 lt!1348600)))))

(declare-fun e!2395415 () Bool)

(assert (=> b!3872590 (=> (not res!1568671) (not e!2395415))))

(assert (=> b!3872590 e!2395415))

(declare-fun b!3872591 () Bool)

(declare-fun e!2395421 () Bool)

(declare-fun tp_is_empty!19545 () Bool)

(declare-fun tp!1174125 () Bool)

(assert (=> b!3872591 (= e!2395421 (and tp_is_empty!19545 tp!1174125))))

(declare-fun b!3872592 () Bool)

(declare-fun e!2395432 () Bool)

(declare-fun e!2395440 () Bool)

(declare-fun tp!1174128 () Bool)

(assert (=> b!3872592 (= e!2395432 (and e!2395440 tp!1174128))))

(declare-fun b!3872593 () Bool)

(declare-fun e!2395430 () Unit!59009)

(declare-fun Unit!59013 () Unit!59009)

(assert (=> b!3872593 (= e!2395430 Unit!59013)))

(declare-fun b!3872594 () Bool)

(declare-fun e!2395418 () Bool)

(declare-fun e!2395413 () Bool)

(assert (=> b!3872594 (= e!2395418 e!2395413)))

(declare-fun res!1568668 () Bool)

(assert (=> b!3872594 (=> (not res!1568668) (not e!2395413))))

(get-info :version)

(assert (=> b!3872594 (= res!1568668 ((_ is Some!8799) lt!1348557))))

(declare-fun maxPrefix!3275 (LexerInterface!5971 List!41267 List!41265) Option!8800)

(assert (=> b!3872594 (= lt!1348557 (maxPrefix!3275 thiss!20629 rules!2768 lt!1348555))))

(declare-fun res!1568652 () Bool)

(assert (=> start!363504 (=> (not res!1568652) (not e!2395419))))

(assert (=> start!363504 (= res!1568652 ((_ is Lexer!5969) thiss!20629))))

(assert (=> start!363504 e!2395419))

(assert (=> start!363504 e!2395421))

(assert (=> start!363504 true))

(declare-fun e!2395416 () Bool)

(assert (=> start!363504 e!2395416))

(assert (=> start!363504 e!2395432))

(declare-fun e!2395411 () Bool)

(assert (=> start!363504 e!2395411))

(declare-fun e!2395406 () Bool)

(assert (=> start!363504 e!2395406))

(declare-fun e!2395403 () Bool)

(assert (=> start!363504 e!2395403))

(declare-fun e!2395407 () Bool)

(declare-fun tp!1174129 () Bool)

(declare-fun b!3872595 () Bool)

(declare-fun inv!55301 (Token!11902) Bool)

(assert (=> b!3872595 (= e!2395411 (and (inv!55301 (h!46562 prefixTokens!80)) e!2395407 tp!1174129))))

(declare-fun e!2395431 () Bool)

(assert (=> b!3872596 (= e!2395431 (and tp!1174134 tp!1174133))))

(declare-fun e!2395402 () Bool)

(assert (=> b!3872597 (= e!2395402 (and tp!1174138 tp!1174137))))

(declare-fun b!3872598 () Bool)

(declare-fun res!1568651 () Bool)

(declare-fun e!2395409 () Bool)

(assert (=> b!3872598 (=> res!1568651 e!2395409)))

(declare-fun lt!1348593 () tuple2!40368)

(declare-fun lexList!1739 (LexerInterface!5971 List!41267 List!41265) tuple2!40368)

(assert (=> b!3872598 (= res!1568651 (not (= (lexList!1739 thiss!20629 rules!2768 lt!1348592) lt!1348593)))))

(declare-fun b!3872599 () Bool)

(declare-fun res!1568661 () Bool)

(declare-fun e!2395439 () Bool)

(assert (=> b!3872599 (=> res!1568661 e!2395439)))

(declare-fun head!8202 (List!41266) Token!11902)

(assert (=> b!3872599 (= res!1568661 (not (= (head!8202 prefixTokens!80) (_1!23317 (v!39097 lt!1348557)))))))

(declare-fun b!3872600 () Bool)

(declare-fun e!2395414 () Bool)

(assert (=> b!3872600 (= e!2395413 (not e!2395414))))

(declare-fun res!1568664 () Bool)

(assert (=> b!3872600 (=> res!1568664 e!2395414)))

(declare-fun lt!1348565 () List!41265)

(assert (=> b!3872600 (= res!1568664 (not (= lt!1348565 lt!1348555)))))

(declare-fun lt!1348586 () tuple2!40368)

(assert (=> b!3872600 (= lt!1348586 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun lt!1348589 () List!41265)

(declare-fun lt!1348570 () Int)

(declare-fun lt!1348591 () TokenValue!6612)

(assert (=> b!3872600 (and (= (size!30921 (_1!23317 (v!39097 lt!1348557))) lt!1348570) (= (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557))) lt!1348575) (= (v!39097 lt!1348557) (tuple2!40367 (Token!11903 lt!1348591 (rule!9272 (_1!23317 (v!39097 lt!1348557))) lt!1348570 lt!1348575) lt!1348589)))))

(declare-fun size!30922 (List!41265) Int)

(assert (=> b!3872600 (= lt!1348570 (size!30922 lt!1348575))))

(declare-fun e!2395436 () Bool)

(assert (=> b!3872600 e!2395436))

(declare-fun res!1568672 () Bool)

(assert (=> b!3872600 (=> (not res!1568672) (not e!2395436))))

(assert (=> b!3872600 (= res!1568672 (= (value!202521 (_1!23317 (v!39097 lt!1348557))) lt!1348591))))

(declare-fun apply!9625 (TokenValueInjection!12652 BalanceConc!24780) TokenValue!6612)

(declare-fun seqFromList!4653 (List!41265) BalanceConc!24780)

(assert (=> b!3872600 (= lt!1348591 (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (seqFromList!4653 lt!1348575)))))

(assert (=> b!3872600 (= (_2!23317 (v!39097 lt!1348557)) lt!1348589)))

(declare-fun lt!1348598 () Unit!59009)

(assert (=> b!3872600 (= lt!1348598 (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348589 lt!1348555))))

(declare-fun getSuffix!1936 (List!41265 List!41265) List!41265)

(assert (=> b!3872600 (= lt!1348589 (getSuffix!1936 lt!1348555 lt!1348575))))

(assert (=> b!3872600 (isPrefix!3481 lt!1348575 lt!1348565)))

(declare-fun ++!10522 (List!41265 List!41265) List!41265)

(assert (=> b!3872600 (= lt!1348565 (++!10522 lt!1348575 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun lt!1348556 () Unit!59009)

(assert (=> b!3872600 (= lt!1348556 (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348575 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun list!15304 (BalanceConc!24780) List!41265)

(declare-fun charsOf!4210 (Token!11902) BalanceConc!24780)

(assert (=> b!3872600 (= lt!1348575 (list!15304 (charsOf!4210 (_1!23317 (v!39097 lt!1348557)))))))

(declare-fun ruleValid!2334 (LexerInterface!5971 Rule!12564) Bool)

(assert (=> b!3872600 (ruleValid!2334 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))))))

(declare-fun lt!1348577 () Unit!59009)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1414 (LexerInterface!5971 Rule!12564 List!41267) Unit!59009)

(assert (=> b!3872600 (= lt!1348577 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1414 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) rules!2768))))

(declare-fun lt!1348587 () Unit!59009)

(declare-fun lemmaCharactersSize!1043 (Token!11902) Unit!59009)

(assert (=> b!3872600 (= lt!1348587 (lemmaCharactersSize!1043 (_1!23317 (v!39097 lt!1348557))))))

(declare-fun b!3872601 () Bool)

(declare-fun e!2395420 () Unit!59009)

(declare-fun Unit!59014 () Unit!59009)

(assert (=> b!3872601 (= e!2395420 Unit!59014)))

(declare-fun lt!1348590 () Unit!59009)

(assert (=> b!3872601 (= lt!1348590 (lemmaLexWithSmallerInputCannotProduceSameResults!42 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3872601 false))

(declare-fun b!3872602 () Bool)

(declare-fun e!2395400 () Bool)

(assert (=> b!3872602 (= e!2395400 e!2395439)))

(declare-fun res!1568655 () Bool)

(assert (=> b!3872602 (=> res!1568655 e!2395439)))

(declare-fun lt!1348572 () Int)

(declare-fun lt!1348574 () Int)

(assert (=> b!3872602 (= res!1568655 (<= lt!1348572 lt!1348574))))

(declare-fun lt!1348562 () Unit!59009)

(assert (=> b!3872602 (= lt!1348562 e!2395430)))

(declare-fun c!673872 () Bool)

(assert (=> b!3872602 (= c!673872 (= lt!1348572 lt!1348574))))

(declare-fun lt!1348573 () Unit!59009)

(declare-fun e!2395428 () Unit!59009)

(assert (=> b!3872602 (= lt!1348573 e!2395428)))

(declare-fun c!673870 () Bool)

(assert (=> b!3872602 (= c!673870 (< lt!1348572 lt!1348574))))

(assert (=> b!3872602 (= lt!1348574 (size!30922 suffix!1176))))

(assert (=> b!3872602 (= lt!1348572 (size!30922 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun b!3872603 () Bool)

(assert (=> b!3872603 (= e!2395436 (= (size!30921 (_1!23317 (v!39097 lt!1348557))) (size!30922 (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557))))))))

(declare-fun e!2395433 () Bool)

(declare-fun b!3872604 () Bool)

(declare-fun tp!1174131 () Bool)

(declare-fun inv!55298 (String!46778) Bool)

(declare-fun inv!55302 (TokenValueInjection!12652) Bool)

(assert (=> b!3872604 (= e!2395433 (and tp!1174131 (inv!55298 (tag!7242 (rule!9272 (h!46562 prefixTokens!80)))) (inv!55302 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) e!2395402))))

(declare-fun b!3872605 () Bool)

(declare-fun e!2395410 () Bool)

(declare-fun tp!1174124 () Bool)

(assert (=> b!3872605 (= e!2395427 (and tp!1174124 (inv!55298 (tag!7242 (rule!9272 (h!46562 suffixTokens!72)))) (inv!55302 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) e!2395410))))

(declare-fun b!3872606 () Bool)

(declare-fun e!2395435 () Bool)

(declare-fun e!2395437 () Bool)

(assert (=> b!3872606 (= e!2395435 e!2395437)))

(declare-fun res!1568657 () Bool)

(assert (=> b!3872606 (=> res!1568657 e!2395437)))

(declare-fun lt!1348582 () List!41265)

(declare-fun prefix!426 () List!41265)

(assert (=> b!3872606 (= res!1568657 (not (= lt!1348582 prefix!426)))))

(declare-fun lt!1348569 () List!41265)

(assert (=> b!3872606 (= lt!1348582 (++!10522 lt!1348575 lt!1348569))))

(assert (=> b!3872606 (= lt!1348569 (getSuffix!1936 prefix!426 lt!1348575))))

(declare-fun b!3872607 () Bool)

(declare-fun tp!1174140 () Bool)

(assert (=> b!3872607 (= e!2395416 (and tp_is_empty!19545 tp!1174140))))

(declare-fun b!3872608 () Bool)

(declare-fun Unit!59015 () Unit!59009)

(assert (=> b!3872608 (= e!2395428 Unit!59015)))

(declare-fun b!3872609 () Bool)

(assert (=> b!3872609 (= e!2395414 e!2395400)))

(declare-fun res!1568659 () Bool)

(assert (=> b!3872609 (=> res!1568659 e!2395400)))

(declare-fun lt!1348564 () List!41266)

(declare-fun lt!1348554 () tuple2!40368)

(assert (=> b!3872609 (= res!1568659 (not (= lt!1348554 (tuple2!40369 (++!10521 lt!1348564 (_1!23318 lt!1348586)) (_2!23318 lt!1348586)))))))

(assert (=> b!3872609 (= lt!1348564 (Cons!41142 (_1!23317 (v!39097 lt!1348557)) Nil!41142))))

(declare-fun b!3872610 () Bool)

(declare-fun e!2395429 () Bool)

(assert (=> b!3872610 (= e!2395404 e!2395429)))

(declare-fun res!1568670 () Bool)

(assert (=> b!3872610 (=> res!1568670 e!2395429)))

(assert (=> b!3872610 (= res!1568670 (not (= lt!1348586 lt!1348593)))))

(declare-fun lt!1348594 () List!41266)

(assert (=> b!3872610 (= lt!1348593 (tuple2!40369 lt!1348594 suffixResult!91))))

(declare-fun lt!1348601 () List!41266)

(assert (=> b!3872610 (= lt!1348594 (++!10521 lt!1348601 suffixTokens!72))))

(assert (=> b!3872610 (= lt!1348601 (tail!5919 prefixTokens!80))))

(assert (=> b!3872610 (isPrefix!3481 lt!1348569 lt!1348592)))

(declare-fun lt!1348595 () Unit!59009)

(assert (=> b!3872610 (= lt!1348595 (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348569 suffix!1176))))

(declare-fun tp!1174130 () Bool)

(declare-fun b!3872611 () Bool)

(assert (=> b!3872611 (= e!2395440 (and tp!1174130 (inv!55298 (tag!7242 (h!46563 rules!2768))) (inv!55302 (transformation!6382 (h!46563 rules!2768))) e!2395431))))

(declare-fun b!3872612 () Bool)

(assert (=> b!3872612 (= e!2395409 (not (= prefixTokens!80 Nil!41142)))))

(declare-fun b!3872613 () Bool)

(assert (=> b!3872613 (= e!2395429 e!2395409)))

(declare-fun res!1568674 () Bool)

(assert (=> b!3872613 (=> res!1568674 e!2395409)))

(declare-fun lt!1348580 () List!41266)

(declare-fun lt!1348571 () List!41266)

(assert (=> b!3872613 (= res!1568674 (not (= lt!1348580 lt!1348571)))))

(assert (=> b!3872613 (= lt!1348580 (++!10521 lt!1348564 lt!1348594))))

(assert (=> b!3872613 (= lt!1348580 (++!10521 (++!10521 lt!1348564 lt!1348601) suffixTokens!72))))

(declare-fun lt!1348584 () Unit!59009)

(declare-fun lemmaConcatAssociativity!2235 (List!41266 List!41266 List!41266) Unit!59009)

(assert (=> b!3872613 (= lt!1348584 (lemmaConcatAssociativity!2235 lt!1348564 lt!1348601 suffixTokens!72))))

(declare-fun lt!1348563 () Unit!59009)

(assert (=> b!3872613 (= lt!1348563 e!2395420)))

(declare-fun c!673871 () Bool)

(assert (=> b!3872613 (= c!673871 (isEmpty!24410 lt!1348601))))

(declare-fun b!3872614 () Bool)

(declare-fun res!1568669 () Bool)

(assert (=> b!3872614 (=> (not res!1568669) (not e!2395419))))

(declare-fun rulesInvariant!5314 (LexerInterface!5971 List!41267) Bool)

(assert (=> b!3872614 (= res!1568669 (rulesInvariant!5314 thiss!20629 rules!2768))))

(declare-fun b!3872615 () Bool)

(declare-fun res!1568663 () Bool)

(assert (=> b!3872615 (=> res!1568663 e!2395400)))

(assert (=> b!3872615 (= res!1568663 (or (not (= lt!1348586 (tuple2!40369 (_1!23318 lt!1348586) (_2!23318 lt!1348586)))) (= (_2!23317 (v!39097 lt!1348557)) suffix!1176)))))

(declare-fun bm!282745 () Bool)

(assert (=> bm!282745 (= call!282750 (lexList!1739 thiss!20629 rules!2768 (_2!23317 lt!1348579)))))

(declare-fun b!3872616 () Bool)

(declare-fun Unit!59016 () Unit!59009)

(assert (=> b!3872616 (= e!2395430 Unit!59016)))

(declare-fun lt!1348558 () Unit!59009)

(assert (=> b!3872616 (= lt!1348558 (lemmaConcatTwoListThenFirstIsPrefix!2344 prefix!426 suffix!1176))))

(assert (=> b!3872616 (isPrefix!3481 prefix!426 lt!1348555)))

(declare-fun lt!1348559 () Unit!59009)

(declare-fun lemmaIsPrefixSameLengthThenSameList!733 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> b!3872616 (= lt!1348559 (lemmaIsPrefixSameLengthThenSameList!733 lt!1348575 prefix!426 lt!1348555))))

(assert (=> b!3872616 (= lt!1348575 prefix!426)))

(declare-fun lt!1348576 () Unit!59009)

(assert (=> b!3872616 (= lt!1348576 (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) prefix!426 suffix!1176 lt!1348555))))

(assert (=> b!3872616 false))

(declare-fun b!3872617 () Bool)

(assert (=> b!3872617 (= e!2395439 e!2395435)))

(declare-fun res!1568653 () Bool)

(assert (=> b!3872617 (=> res!1568653 e!2395435)))

(assert (=> b!3872617 (= res!1568653 (>= lt!1348570 (size!30922 prefix!426)))))

(assert (=> b!3872617 (isPrefix!3481 lt!1348575 prefix!426)))

(declare-fun lt!1348568 () Unit!59009)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!231 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> b!3872617 (= lt!1348568 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!231 prefix!426 lt!1348575 lt!1348555))))

(assert (=> b!3872617 (isPrefix!3481 prefix!426 lt!1348555)))

(declare-fun lt!1348596 () Unit!59009)

(assert (=> b!3872617 (= lt!1348596 (lemmaConcatTwoListThenFirstIsPrefix!2344 prefix!426 suffix!1176))))

(declare-fun b!3872618 () Bool)

(declare-fun tp!1174132 () Bool)

(assert (=> b!3872618 (= e!2395407 (and (inv!21 (value!202521 (h!46562 prefixTokens!80))) e!2395433 tp!1174132))))

(declare-fun tp!1174135 () Bool)

(declare-fun b!3872619 () Bool)

(assert (=> b!3872619 (= e!2395406 (and (inv!55301 (h!46562 suffixTokens!72)) e!2395424 tp!1174135))))

(declare-fun b!3872620 () Bool)

(declare-fun res!1568667 () Bool)

(assert (=> b!3872620 (=> (not res!1568667) (not e!2395419))))

(declare-fun isEmpty!24411 (List!41267) Bool)

(assert (=> b!3872620 (= res!1568667 (not (isEmpty!24411 rules!2768)))))

(declare-fun b!3872621 () Bool)

(declare-fun Unit!59017 () Unit!59009)

(assert (=> b!3872621 (= e!2395420 Unit!59017)))

(declare-fun b!3872622 () Bool)

(assert (=> b!3872622 (= e!2395412 false)))

(declare-fun b!3872623 () Bool)

(declare-fun e!2395422 () Bool)

(assert (=> b!3872623 (= e!2395422 e!2395405)))

(declare-fun res!1568654 () Bool)

(assert (=> b!3872623 (=> res!1568654 e!2395405)))

(declare-fun lt!1348585 () List!41265)

(assert (=> b!3872623 (= res!1568654 (or (not (= lt!1348555 lt!1348585)) (not (= lt!1348555 lt!1348567)) (not (= lt!1348565 lt!1348567))))))

(assert (=> b!3872623 (= lt!1348585 lt!1348567)))

(assert (=> b!3872623 (= lt!1348567 (++!10522 lt!1348575 lt!1348592))))

(assert (=> b!3872623 (= lt!1348592 (++!10522 lt!1348569 suffix!1176))))

(declare-fun lt!1348578 () Unit!59009)

(declare-fun lemmaConcatAssociativity!2236 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> b!3872623 (= lt!1348578 (lemmaConcatAssociativity!2236 lt!1348575 lt!1348569 suffix!1176))))

(declare-fun b!3872624 () Bool)

(declare-fun e!2395434 () Bool)

(assert (=> b!3872624 (= e!2395434 e!2395418)))

(declare-fun res!1568673 () Bool)

(assert (=> b!3872624 (=> (not res!1568673) (not e!2395418))))

(assert (=> b!3872624 (= res!1568673 (= (lexList!1739 thiss!20629 rules!2768 suffix!1176) lt!1348600))))

(assert (=> b!3872624 (= lt!1348600 (tuple2!40369 suffixTokens!72 suffixResult!91))))

(declare-fun b!3872625 () Bool)

(declare-fun tp!1174126 () Bool)

(assert (=> b!3872625 (= e!2395403 (and tp_is_empty!19545 tp!1174126))))

(declare-fun b!3872626 () Bool)

(declare-fun Unit!59018 () Unit!59009)

(assert (=> b!3872626 (= e!2395428 Unit!59018)))

(declare-fun lt!1348560 () Int)

(assert (=> b!3872626 (= lt!1348560 (size!30922 lt!1348555))))

(declare-fun lt!1348553 () Unit!59009)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1255 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41265 Rule!12564) Unit!59009)

(assert (=> b!3872626 (= lt!1348553 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1255 thiss!20629 rules!2768 lt!1348575 lt!1348555 (_2!23317 (v!39097 lt!1348557)) (rule!9272 (_1!23317 (v!39097 lt!1348557)))))))

(declare-fun maxPrefixOneRule!2357 (LexerInterface!5971 Rule!12564 List!41265) Option!8800)

(assert (=> b!3872626 (= (maxPrefixOneRule!2357 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) lt!1348555) (Some!8799 (tuple2!40367 (Token!11903 lt!1348591 (rule!9272 (_1!23317 (v!39097 lt!1348557))) lt!1348570 lt!1348575) (_2!23317 (v!39097 lt!1348557)))))))

(declare-fun get!13613 (Option!8800) tuple2!40366)

(assert (=> b!3872626 (= lt!1348579 (get!13613 lt!1348557))))

(declare-fun c!673873 () Bool)

(assert (=> b!3872626 (= c!673873 (< (size!30922 (_2!23317 lt!1348579)) lt!1348574))))

(declare-fun lt!1348597 () Unit!59009)

(assert (=> b!3872626 (= lt!1348597 e!2395438)))

(assert (=> b!3872626 false))

(declare-fun b!3872627 () Bool)

(assert (=> b!3872627 (= e!2395437 e!2395422)))

(declare-fun res!1568660 () Bool)

(assert (=> b!3872627 (=> res!1568660 e!2395422)))

(assert (=> b!3872627 (= res!1568660 (or (not (= lt!1348585 lt!1348555)) (not (= lt!1348585 lt!1348565))))))

(assert (=> b!3872627 (= lt!1348585 (++!10522 lt!1348582 suffix!1176))))

(declare-fun b!3872628 () Bool)

(declare-fun Unit!59019 () Unit!59009)

(assert (=> b!3872628 (= e!2395438 Unit!59019)))

(declare-fun b!3872629 () Bool)

(assert (=> b!3872629 (= e!2395415 false)))

(assert (=> b!3872630 (= e!2395410 (and tp!1174127 tp!1174139))))

(declare-fun b!3872631 () Bool)

(assert (=> b!3872631 (= e!2395419 e!2395434)))

(declare-fun res!1568658 () Bool)

(assert (=> b!3872631 (=> (not res!1568658) (not e!2395434))))

(assert (=> b!3872631 (= res!1568658 (= lt!1348554 (tuple2!40369 lt!1348571 suffixResult!91)))))

(assert (=> b!3872631 (= lt!1348554 (lexList!1739 thiss!20629 rules!2768 lt!1348555))))

(assert (=> b!3872631 (= lt!1348571 (++!10521 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3872631 (= lt!1348555 (++!10522 prefix!426 suffix!1176))))

(declare-fun b!3872632 () Bool)

(declare-fun res!1568656 () Bool)

(assert (=> b!3872632 (=> (not res!1568656) (not e!2395419))))

(declare-fun isEmpty!24412 (List!41265) Bool)

(assert (=> b!3872632 (= res!1568656 (not (isEmpty!24412 prefix!426)))))

(assert (= (and start!363504 res!1568652) b!3872620))

(assert (= (and b!3872620 res!1568667) b!3872614))

(assert (= (and b!3872614 res!1568669) b!3872585))

(assert (= (and b!3872585 res!1568662) b!3872632))

(assert (= (and b!3872632 res!1568656) b!3872631))

(assert (= (and b!3872631 res!1568658) b!3872624))

(assert (= (and b!3872624 res!1568673) b!3872594))

(assert (= (and b!3872594 res!1568668) b!3872600))

(assert (= (and b!3872600 res!1568672) b!3872603))

(assert (= (and b!3872600 (not res!1568664)) b!3872609))

(assert (= (and b!3872609 (not res!1568659)) b!3872615))

(assert (= (and b!3872615 (not res!1568663)) b!3872602))

(assert (= (and b!3872602 c!673870) b!3872626))

(assert (= (and b!3872602 (not c!673870)) b!3872608))

(assert (= (and b!3872626 c!673873) b!3872589))

(assert (= (and b!3872626 (not c!673873)) b!3872628))

(assert (= (and b!3872589 c!673869) b!3872590))

(assert (= (and b!3872589 (not c!673869)) b!3872588))

(assert (= (and b!3872590 res!1568671) b!3872629))

(assert (= (and b!3872588 res!1568665) b!3872622))

(assert (= (or b!3872590 b!3872588) bm!282745))

(assert (= (and b!3872602 c!673872) b!3872616))

(assert (= (and b!3872602 (not c!673872)) b!3872593))

(assert (= (and b!3872602 (not res!1568655)) b!3872599))

(assert (= (and b!3872599 (not res!1568661)) b!3872617))

(assert (= (and b!3872617 (not res!1568653)) b!3872606))

(assert (= (and b!3872606 (not res!1568657)) b!3872627))

(assert (= (and b!3872627 (not res!1568660)) b!3872623))

(assert (= (and b!3872623 (not res!1568654)) b!3872587))

(assert (= (and b!3872587 (not res!1568666)) b!3872610))

(assert (= (and b!3872610 (not res!1568670)) b!3872613))

(assert (= (and b!3872613 c!673871) b!3872601))

(assert (= (and b!3872613 (not c!673871)) b!3872621))

(assert (= (and b!3872613 (not res!1568674)) b!3872598))

(assert (= (and b!3872598 (not res!1568651)) b!3872612))

(assert (= (and start!363504 ((_ is Cons!41141) suffixResult!91)) b!3872591))

(assert (= (and start!363504 ((_ is Cons!41141) suffix!1176)) b!3872607))

(assert (= b!3872611 b!3872596))

(assert (= b!3872592 b!3872611))

(assert (= (and start!363504 ((_ is Cons!41143) rules!2768)) b!3872592))

(assert (= b!3872604 b!3872597))

(assert (= b!3872618 b!3872604))

(assert (= b!3872595 b!3872618))

(assert (= (and start!363504 ((_ is Cons!41142) prefixTokens!80)) b!3872595))

(assert (= b!3872605 b!3872630))

(assert (= b!3872586 b!3872605))

(assert (= b!3872619 b!3872586))

(assert (= (and start!363504 ((_ is Cons!41142) suffixTokens!72)) b!3872619))

(assert (= (and start!363504 ((_ is Cons!41141) prefix!426)) b!3872625))

(declare-fun m!4429517 () Bool)

(assert (=> b!3872614 m!4429517))

(declare-fun m!4429519 () Bool)

(assert (=> b!3872606 m!4429519))

(declare-fun m!4429521 () Bool)

(assert (=> b!3872606 m!4429521))

(declare-fun m!4429523 () Bool)

(assert (=> b!3872618 m!4429523))

(declare-fun m!4429525 () Bool)

(assert (=> b!3872595 m!4429525))

(declare-fun m!4429527 () Bool)

(assert (=> b!3872587 m!4429527))

(declare-fun m!4429529 () Bool)

(assert (=> b!3872587 m!4429529))

(declare-fun m!4429531 () Bool)

(assert (=> b!3872587 m!4429531))

(declare-fun m!4429533 () Bool)

(assert (=> b!3872623 m!4429533))

(declare-fun m!4429535 () Bool)

(assert (=> b!3872623 m!4429535))

(declare-fun m!4429537 () Bool)

(assert (=> b!3872623 m!4429537))

(declare-fun m!4429539 () Bool)

(assert (=> b!3872600 m!4429539))

(declare-fun m!4429541 () Bool)

(assert (=> b!3872600 m!4429541))

(declare-fun m!4429543 () Bool)

(assert (=> b!3872600 m!4429543))

(declare-fun m!4429545 () Bool)

(assert (=> b!3872600 m!4429545))

(declare-fun m!4429547 () Bool)

(assert (=> b!3872600 m!4429547))

(assert (=> b!3872600 m!4429545))

(declare-fun m!4429549 () Bool)

(assert (=> b!3872600 m!4429549))

(declare-fun m!4429551 () Bool)

(assert (=> b!3872600 m!4429551))

(assert (=> b!3872600 m!4429549))

(declare-fun m!4429553 () Bool)

(assert (=> b!3872600 m!4429553))

(declare-fun m!4429555 () Bool)

(assert (=> b!3872600 m!4429555))

(declare-fun m!4429557 () Bool)

(assert (=> b!3872600 m!4429557))

(declare-fun m!4429559 () Bool)

(assert (=> b!3872600 m!4429559))

(declare-fun m!4429561 () Bool)

(assert (=> b!3872600 m!4429561))

(declare-fun m!4429563 () Bool)

(assert (=> b!3872600 m!4429563))

(declare-fun m!4429565 () Bool)

(assert (=> b!3872600 m!4429565))

(declare-fun m!4429567 () Bool)

(assert (=> b!3872605 m!4429567))

(declare-fun m!4429569 () Bool)

(assert (=> b!3872605 m!4429569))

(declare-fun m!4429571 () Bool)

(assert (=> b!3872613 m!4429571))

(declare-fun m!4429573 () Bool)

(assert (=> b!3872613 m!4429573))

(declare-fun m!4429575 () Bool)

(assert (=> b!3872613 m!4429575))

(declare-fun m!4429577 () Bool)

(assert (=> b!3872613 m!4429577))

(assert (=> b!3872613 m!4429577))

(declare-fun m!4429579 () Bool)

(assert (=> b!3872613 m!4429579))

(declare-fun m!4429581 () Bool)

(assert (=> b!3872590 m!4429581))

(declare-fun m!4429583 () Bool)

(assert (=> b!3872590 m!4429583))

(declare-fun m!4429585 () Bool)

(assert (=> b!3872603 m!4429585))

(declare-fun m!4429587 () Bool)

(assert (=> b!3872611 m!4429587))

(declare-fun m!4429589 () Bool)

(assert (=> b!3872611 m!4429589))

(declare-fun m!4429591 () Bool)

(assert (=> b!3872624 m!4429591))

(declare-fun m!4429593 () Bool)

(assert (=> b!3872617 m!4429593))

(declare-fun m!4429595 () Bool)

(assert (=> b!3872617 m!4429595))

(declare-fun m!4429597 () Bool)

(assert (=> b!3872617 m!4429597))

(declare-fun m!4429599 () Bool)

(assert (=> b!3872617 m!4429599))

(declare-fun m!4429601 () Bool)

(assert (=> b!3872617 m!4429601))

(assert (=> b!3872616 m!4429597))

(assert (=> b!3872616 m!4429593))

(declare-fun m!4429603 () Bool)

(assert (=> b!3872616 m!4429603))

(declare-fun m!4429605 () Bool)

(assert (=> b!3872616 m!4429605))

(declare-fun m!4429607 () Bool)

(assert (=> b!3872598 m!4429607))

(declare-fun m!4429609 () Bool)

(assert (=> b!3872632 m!4429609))

(declare-fun m!4429611 () Bool)

(assert (=> b!3872609 m!4429611))

(declare-fun m!4429613 () Bool)

(assert (=> b!3872610 m!4429613))

(declare-fun m!4429615 () Bool)

(assert (=> b!3872610 m!4429615))

(declare-fun m!4429617 () Bool)

(assert (=> b!3872610 m!4429617))

(declare-fun m!4429619 () Bool)

(assert (=> b!3872610 m!4429619))

(declare-fun m!4429621 () Bool)

(assert (=> b!3872601 m!4429621))

(declare-fun m!4429623 () Bool)

(assert (=> b!3872602 m!4429623))

(declare-fun m!4429625 () Bool)

(assert (=> b!3872602 m!4429625))

(declare-fun m!4429627 () Bool)

(assert (=> b!3872599 m!4429627))

(declare-fun m!4429629 () Bool)

(assert (=> b!3872589 m!4429629))

(assert (=> b!3872589 m!4429615))

(declare-fun m!4429631 () Bool)

(assert (=> bm!282745 m!4429631))

(declare-fun m!4429633 () Bool)

(assert (=> b!3872619 m!4429633))

(declare-fun m!4429635 () Bool)

(assert (=> b!3872594 m!4429635))

(declare-fun m!4429637 () Bool)

(assert (=> b!3872626 m!4429637))

(declare-fun m!4429639 () Bool)

(assert (=> b!3872626 m!4429639))

(declare-fun m!4429641 () Bool)

(assert (=> b!3872626 m!4429641))

(declare-fun m!4429643 () Bool)

(assert (=> b!3872626 m!4429643))

(declare-fun m!4429645 () Bool)

(assert (=> b!3872626 m!4429645))

(declare-fun m!4429647 () Bool)

(assert (=> b!3872588 m!4429647))

(declare-fun m!4429649 () Bool)

(assert (=> b!3872588 m!4429649))

(declare-fun m!4429651 () Bool)

(assert (=> b!3872604 m!4429651))

(declare-fun m!4429653 () Bool)

(assert (=> b!3872604 m!4429653))

(declare-fun m!4429655 () Bool)

(assert (=> b!3872620 m!4429655))

(declare-fun m!4429657 () Bool)

(assert (=> b!3872585 m!4429657))

(declare-fun m!4429659 () Bool)

(assert (=> b!3872631 m!4429659))

(declare-fun m!4429661 () Bool)

(assert (=> b!3872631 m!4429661))

(declare-fun m!4429663 () Bool)

(assert (=> b!3872631 m!4429663))

(declare-fun m!4429665 () Bool)

(assert (=> b!3872586 m!4429665))

(declare-fun m!4429667 () Bool)

(assert (=> b!3872627 m!4429667))

(check-sat (not b!3872611) (not b!3872600) (not b!3872586) (not b!3872594) (not b!3872605) (not b!3872585) (not b!3872618) (not b!3872599) (not b!3872623) (not b!3872609) (not b!3872614) (not b!3872620) (not b!3872606) (not b!3872617) (not b!3872595) (not b!3872613) b_and!290313 (not b!3872616) (not b!3872598) (not b!3872632) (not b!3872587) (not b!3872603) (not b_next!105317) (not b!3872610) (not b_next!105313) (not b!3872602) (not b!3872626) b_and!290311 (not b!3872607) (not b!3872624) b_and!290307 (not b!3872625) (not b!3872590) (not b!3872619) (not b!3872604) b_and!290317 (not b_next!105319) (not b!3872588) (not b_next!105309) (not b!3872601) (not b!3872591) (not b!3872592) (not bm!282745) b_and!290309 (not b_next!105311) (not b!3872627) (not b_next!105315) (not b!3872589) b_and!290315 tp_is_empty!19545 (not b!3872631))
(check-sat b_and!290313 (not b_next!105317) (not b_next!105313) b_and!290311 b_and!290307 (not b_next!105309) b_and!290309 b_and!290315 b_and!290317 (not b_next!105319) (not b_next!105311) (not b_next!105315))
(get-model)

(declare-fun b!3872644 () Bool)

(declare-fun lt!1348604 () List!41266)

(declare-fun e!2395445 () Bool)

(assert (=> b!3872644 (= e!2395445 (or (not (= (_1!23318 lt!1348586) Nil!41142)) (= lt!1348604 lt!1348564)))))

(declare-fun b!3872641 () Bool)

(declare-fun e!2395446 () List!41266)

(assert (=> b!3872641 (= e!2395446 (_1!23318 lt!1348586))))

(declare-fun b!3872642 () Bool)

(assert (=> b!3872642 (= e!2395446 (Cons!41142 (h!46562 lt!1348564) (++!10521 (t!314621 lt!1348564) (_1!23318 lt!1348586))))))

(declare-fun b!3872643 () Bool)

(declare-fun res!1568684 () Bool)

(assert (=> b!3872643 (=> (not res!1568684) (not e!2395445))))

(declare-fun size!30923 (List!41266) Int)

(assert (=> b!3872643 (= res!1568684 (= (size!30923 lt!1348604) (+ (size!30923 lt!1348564) (size!30923 (_1!23318 lt!1348586)))))))

(declare-fun d!1146914 () Bool)

(assert (=> d!1146914 e!2395445))

(declare-fun res!1568683 () Bool)

(assert (=> d!1146914 (=> (not res!1568683) (not e!2395445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6146 (List!41266) (InoxSet Token!11902))

(assert (=> d!1146914 (= res!1568683 (= (content!6146 lt!1348604) ((_ map or) (content!6146 lt!1348564) (content!6146 (_1!23318 lt!1348586)))))))

(assert (=> d!1146914 (= lt!1348604 e!2395446)))

(declare-fun c!673878 () Bool)

(assert (=> d!1146914 (= c!673878 ((_ is Nil!41142) lt!1348564))))

(assert (=> d!1146914 (= (++!10521 lt!1348564 (_1!23318 lt!1348586)) lt!1348604)))

(assert (= (and d!1146914 c!673878) b!3872641))

(assert (= (and d!1146914 (not c!673878)) b!3872642))

(assert (= (and d!1146914 res!1568683) b!3872643))

(assert (= (and b!3872643 res!1568684) b!3872644))

(declare-fun m!4429669 () Bool)

(assert (=> b!3872642 m!4429669))

(declare-fun m!4429671 () Bool)

(assert (=> b!3872643 m!4429671))

(declare-fun m!4429673 () Bool)

(assert (=> b!3872643 m!4429673))

(declare-fun m!4429675 () Bool)

(assert (=> b!3872643 m!4429675))

(declare-fun m!4429677 () Bool)

(assert (=> d!1146914 m!4429677))

(declare-fun m!4429679 () Bool)

(assert (=> d!1146914 m!4429679))

(declare-fun m!4429681 () Bool)

(assert (=> d!1146914 m!4429681))

(assert (=> b!3872609 d!1146914))

(declare-fun d!1146916 () Bool)

(assert (=> d!1146916 (not (= (lexList!1739 thiss!20629 rules!2768 (_2!23317 lt!1348579)) (tuple2!40369 (++!10521 lt!1348588 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1348607 () Unit!59009)

(declare-fun choose!22907 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41266 List!41265 List!41266) Unit!59009)

(assert (=> d!1146916 (= lt!1348607 (choose!22907 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91 lt!1348588))))

(assert (=> d!1146916 (not (isEmpty!24411 rules!2768))))

(assert (=> d!1146916 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!42 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91 lt!1348588) lt!1348607)))

(declare-fun bs!583523 () Bool)

(assert (= bs!583523 d!1146916))

(assert (=> bs!583523 m!4429631))

(assert (=> bs!583523 m!4429649))

(declare-fun m!4429683 () Bool)

(assert (=> bs!583523 m!4429683))

(assert (=> bs!583523 m!4429655))

(assert (=> b!3872588 d!1146916))

(declare-fun b!3872648 () Bool)

(declare-fun lt!1348608 () List!41266)

(declare-fun e!2395447 () Bool)

(assert (=> b!3872648 (= e!2395447 (or (not (= suffixTokens!72 Nil!41142)) (= lt!1348608 lt!1348588)))))

(declare-fun b!3872645 () Bool)

(declare-fun e!2395448 () List!41266)

(assert (=> b!3872645 (= e!2395448 suffixTokens!72)))

(declare-fun b!3872646 () Bool)

(assert (=> b!3872646 (= e!2395448 (Cons!41142 (h!46562 lt!1348588) (++!10521 (t!314621 lt!1348588) suffixTokens!72)))))

(declare-fun b!3872647 () Bool)

(declare-fun res!1568686 () Bool)

(assert (=> b!3872647 (=> (not res!1568686) (not e!2395447))))

(assert (=> b!3872647 (= res!1568686 (= (size!30923 lt!1348608) (+ (size!30923 lt!1348588) (size!30923 suffixTokens!72))))))

(declare-fun d!1146918 () Bool)

(assert (=> d!1146918 e!2395447))

(declare-fun res!1568685 () Bool)

(assert (=> d!1146918 (=> (not res!1568685) (not e!2395447))))

(assert (=> d!1146918 (= res!1568685 (= (content!6146 lt!1348608) ((_ map or) (content!6146 lt!1348588) (content!6146 suffixTokens!72))))))

(assert (=> d!1146918 (= lt!1348608 e!2395448)))

(declare-fun c!673879 () Bool)

(assert (=> d!1146918 (= c!673879 ((_ is Nil!41142) lt!1348588))))

(assert (=> d!1146918 (= (++!10521 lt!1348588 suffixTokens!72) lt!1348608)))

(assert (= (and d!1146918 c!673879) b!3872645))

(assert (= (and d!1146918 (not c!673879)) b!3872646))

(assert (= (and d!1146918 res!1568685) b!3872647))

(assert (= (and b!3872647 res!1568686) b!3872648))

(declare-fun m!4429685 () Bool)

(assert (=> b!3872646 m!4429685))

(declare-fun m!4429687 () Bool)

(assert (=> b!3872647 m!4429687))

(declare-fun m!4429689 () Bool)

(assert (=> b!3872647 m!4429689))

(declare-fun m!4429691 () Bool)

(assert (=> b!3872647 m!4429691))

(declare-fun m!4429693 () Bool)

(assert (=> d!1146918 m!4429693))

(declare-fun m!4429695 () Bool)

(assert (=> d!1146918 m!4429695))

(declare-fun m!4429697 () Bool)

(assert (=> d!1146918 m!4429697))

(assert (=> b!3872588 d!1146918))

(declare-fun b!3872652 () Bool)

(declare-fun e!2395449 () Bool)

(declare-fun lt!1348609 () List!41266)

(assert (=> b!3872652 (= e!2395449 (or (not (= suffixTokens!72 Nil!41142)) (= lt!1348609 lt!1348601)))))

(declare-fun b!3872649 () Bool)

(declare-fun e!2395450 () List!41266)

(assert (=> b!3872649 (= e!2395450 suffixTokens!72)))

(declare-fun b!3872650 () Bool)

(assert (=> b!3872650 (= e!2395450 (Cons!41142 (h!46562 lt!1348601) (++!10521 (t!314621 lt!1348601) suffixTokens!72)))))

(declare-fun b!3872651 () Bool)

(declare-fun res!1568688 () Bool)

(assert (=> b!3872651 (=> (not res!1568688) (not e!2395449))))

(assert (=> b!3872651 (= res!1568688 (= (size!30923 lt!1348609) (+ (size!30923 lt!1348601) (size!30923 suffixTokens!72))))))

(declare-fun d!1146920 () Bool)

(assert (=> d!1146920 e!2395449))

(declare-fun res!1568687 () Bool)

(assert (=> d!1146920 (=> (not res!1568687) (not e!2395449))))

(assert (=> d!1146920 (= res!1568687 (= (content!6146 lt!1348609) ((_ map or) (content!6146 lt!1348601) (content!6146 suffixTokens!72))))))

(assert (=> d!1146920 (= lt!1348609 e!2395450)))

(declare-fun c!673880 () Bool)

(assert (=> d!1146920 (= c!673880 ((_ is Nil!41142) lt!1348601))))

(assert (=> d!1146920 (= (++!10521 lt!1348601 suffixTokens!72) lt!1348609)))

(assert (= (and d!1146920 c!673880) b!3872649))

(assert (= (and d!1146920 (not c!673880)) b!3872650))

(assert (= (and d!1146920 res!1568687) b!3872651))

(assert (= (and b!3872651 res!1568688) b!3872652))

(declare-fun m!4429699 () Bool)

(assert (=> b!3872650 m!4429699))

(declare-fun m!4429701 () Bool)

(assert (=> b!3872651 m!4429701))

(declare-fun m!4429703 () Bool)

(assert (=> b!3872651 m!4429703))

(assert (=> b!3872651 m!4429691))

(declare-fun m!4429705 () Bool)

(assert (=> d!1146920 m!4429705))

(declare-fun m!4429707 () Bool)

(assert (=> d!1146920 m!4429707))

(assert (=> d!1146920 m!4429697))

(assert (=> b!3872610 d!1146920))

(declare-fun d!1146922 () Bool)

(assert (=> d!1146922 (= (tail!5919 prefixTokens!80) (t!314621 prefixTokens!80))))

(assert (=> b!3872610 d!1146922))

(declare-fun b!3872663 () Bool)

(declare-fun e!2395458 () Bool)

(declare-fun tail!5920 (List!41265) List!41265)

(assert (=> b!3872663 (= e!2395458 (isPrefix!3481 (tail!5920 lt!1348569) (tail!5920 lt!1348592)))))

(declare-fun b!3872661 () Bool)

(declare-fun e!2395457 () Bool)

(assert (=> b!3872661 (= e!2395457 e!2395458)))

(declare-fun res!1568700 () Bool)

(assert (=> b!3872661 (=> (not res!1568700) (not e!2395458))))

(assert (=> b!3872661 (= res!1568700 (not ((_ is Nil!41141) lt!1348592)))))

(declare-fun b!3872662 () Bool)

(declare-fun res!1568699 () Bool)

(assert (=> b!3872662 (=> (not res!1568699) (not e!2395458))))

(declare-fun head!8203 (List!41265) C!22760)

(assert (=> b!3872662 (= res!1568699 (= (head!8203 lt!1348569) (head!8203 lt!1348592)))))

(declare-fun b!3872664 () Bool)

(declare-fun e!2395459 () Bool)

(assert (=> b!3872664 (= e!2395459 (>= (size!30922 lt!1348592) (size!30922 lt!1348569)))))

(declare-fun d!1146924 () Bool)

(assert (=> d!1146924 e!2395459))

(declare-fun res!1568698 () Bool)

(assert (=> d!1146924 (=> res!1568698 e!2395459)))

(declare-fun lt!1348612 () Bool)

(assert (=> d!1146924 (= res!1568698 (not lt!1348612))))

(assert (=> d!1146924 (= lt!1348612 e!2395457)))

(declare-fun res!1568697 () Bool)

(assert (=> d!1146924 (=> res!1568697 e!2395457)))

(assert (=> d!1146924 (= res!1568697 ((_ is Nil!41141) lt!1348569))))

(assert (=> d!1146924 (= (isPrefix!3481 lt!1348569 lt!1348592) lt!1348612)))

(assert (= (and d!1146924 (not res!1568697)) b!3872661))

(assert (= (and b!3872661 res!1568700) b!3872662))

(assert (= (and b!3872662 res!1568699) b!3872663))

(assert (= (and d!1146924 (not res!1568698)) b!3872664))

(declare-fun m!4429709 () Bool)

(assert (=> b!3872663 m!4429709))

(declare-fun m!4429711 () Bool)

(assert (=> b!3872663 m!4429711))

(assert (=> b!3872663 m!4429709))

(assert (=> b!3872663 m!4429711))

(declare-fun m!4429713 () Bool)

(assert (=> b!3872663 m!4429713))

(declare-fun m!4429715 () Bool)

(assert (=> b!3872662 m!4429715))

(declare-fun m!4429717 () Bool)

(assert (=> b!3872662 m!4429717))

(declare-fun m!4429719 () Bool)

(assert (=> b!3872664 m!4429719))

(declare-fun m!4429721 () Bool)

(assert (=> b!3872664 m!4429721))

(assert (=> b!3872610 d!1146924))

(declare-fun d!1146926 () Bool)

(assert (=> d!1146926 (isPrefix!3481 lt!1348569 (++!10522 lt!1348569 suffix!1176))))

(declare-fun lt!1348615 () Unit!59009)

(declare-fun choose!22908 (List!41265 List!41265) Unit!59009)

(assert (=> d!1146926 (= lt!1348615 (choose!22908 lt!1348569 suffix!1176))))

(assert (=> d!1146926 (= (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348569 suffix!1176) lt!1348615)))

(declare-fun bs!583524 () Bool)

(assert (= bs!583524 d!1146926))

(assert (=> bs!583524 m!4429535))

(assert (=> bs!583524 m!4429535))

(declare-fun m!4429723 () Bool)

(assert (=> bs!583524 m!4429723))

(declare-fun m!4429725 () Bool)

(assert (=> bs!583524 m!4429725))

(assert (=> b!3872610 d!1146926))

(declare-fun d!1146928 () Bool)

(assert (=> d!1146928 (= (isEmpty!24410 lt!1348588) ((_ is Nil!41142) lt!1348588))))

(assert (=> b!3872589 d!1146928))

(assert (=> b!3872589 d!1146922))

(declare-fun b!3872675 () Bool)

(declare-fun e!2395467 () Bool)

(declare-fun lt!1348624 () tuple2!40368)

(assert (=> b!3872675 (= e!2395467 (not (isEmpty!24410 (_1!23318 lt!1348624))))))

(declare-fun b!3872676 () Bool)

(declare-fun e!2395466 () Bool)

(assert (=> b!3872676 (= e!2395466 e!2395467)))

(declare-fun res!1568703 () Bool)

(assert (=> b!3872676 (= res!1568703 (< (size!30922 (_2!23318 lt!1348624)) (size!30922 lt!1348555)))))

(assert (=> b!3872676 (=> (not res!1568703) (not e!2395467))))

(declare-fun b!3872677 () Bool)

(assert (=> b!3872677 (= e!2395466 (= (_2!23318 lt!1348624) lt!1348555))))

(declare-fun d!1146930 () Bool)

(assert (=> d!1146930 e!2395466))

(declare-fun c!673885 () Bool)

(assert (=> d!1146930 (= c!673885 (> (size!30923 (_1!23318 lt!1348624)) 0))))

(declare-fun e!2395468 () tuple2!40368)

(assert (=> d!1146930 (= lt!1348624 e!2395468)))

(declare-fun c!673886 () Bool)

(declare-fun lt!1348623 () Option!8800)

(assert (=> d!1146930 (= c!673886 ((_ is Some!8799) lt!1348623))))

(assert (=> d!1146930 (= lt!1348623 (maxPrefix!3275 thiss!20629 rules!2768 lt!1348555))))

(assert (=> d!1146930 (= (lexList!1739 thiss!20629 rules!2768 lt!1348555) lt!1348624)))

(declare-fun b!3872678 () Bool)

(assert (=> b!3872678 (= e!2395468 (tuple2!40369 Nil!41142 lt!1348555))))

(declare-fun b!3872679 () Bool)

(declare-fun lt!1348622 () tuple2!40368)

(assert (=> b!3872679 (= e!2395468 (tuple2!40369 (Cons!41142 (_1!23317 (v!39097 lt!1348623)) (_1!23318 lt!1348622)) (_2!23318 lt!1348622)))))

(assert (=> b!3872679 (= lt!1348622 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348623))))))

(assert (= (and d!1146930 c!673886) b!3872679))

(assert (= (and d!1146930 (not c!673886)) b!3872678))

(assert (= (and d!1146930 c!673885) b!3872676))

(assert (= (and d!1146930 (not c!673885)) b!3872677))

(assert (= (and b!3872676 res!1568703) b!3872675))

(declare-fun m!4429727 () Bool)

(assert (=> b!3872675 m!4429727))

(declare-fun m!4429729 () Bool)

(assert (=> b!3872676 m!4429729))

(assert (=> b!3872676 m!4429641))

(declare-fun m!4429731 () Bool)

(assert (=> d!1146930 m!4429731))

(assert (=> d!1146930 m!4429635))

(declare-fun m!4429733 () Bool)

(assert (=> b!3872679 m!4429733))

(assert (=> b!3872631 d!1146930))

(declare-fun e!2395469 () Bool)

(declare-fun b!3872683 () Bool)

(declare-fun lt!1348625 () List!41266)

(assert (=> b!3872683 (= e!2395469 (or (not (= suffixTokens!72 Nil!41142)) (= lt!1348625 prefixTokens!80)))))

(declare-fun b!3872680 () Bool)

(declare-fun e!2395470 () List!41266)

(assert (=> b!3872680 (= e!2395470 suffixTokens!72)))

(declare-fun b!3872681 () Bool)

(assert (=> b!3872681 (= e!2395470 (Cons!41142 (h!46562 prefixTokens!80) (++!10521 (t!314621 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3872682 () Bool)

(declare-fun res!1568705 () Bool)

(assert (=> b!3872682 (=> (not res!1568705) (not e!2395469))))

(assert (=> b!3872682 (= res!1568705 (= (size!30923 lt!1348625) (+ (size!30923 prefixTokens!80) (size!30923 suffixTokens!72))))))

(declare-fun d!1146932 () Bool)

(assert (=> d!1146932 e!2395469))

(declare-fun res!1568704 () Bool)

(assert (=> d!1146932 (=> (not res!1568704) (not e!2395469))))

(assert (=> d!1146932 (= res!1568704 (= (content!6146 lt!1348625) ((_ map or) (content!6146 prefixTokens!80) (content!6146 suffixTokens!72))))))

(assert (=> d!1146932 (= lt!1348625 e!2395470)))

(declare-fun c!673887 () Bool)

(assert (=> d!1146932 (= c!673887 ((_ is Nil!41142) prefixTokens!80))))

(assert (=> d!1146932 (= (++!10521 prefixTokens!80 suffixTokens!72) lt!1348625)))

(assert (= (and d!1146932 c!673887) b!3872680))

(assert (= (and d!1146932 (not c!673887)) b!3872681))

(assert (= (and d!1146932 res!1568704) b!3872682))

(assert (= (and b!3872682 res!1568705) b!3872683))

(declare-fun m!4429735 () Bool)

(assert (=> b!3872681 m!4429735))

(declare-fun m!4429737 () Bool)

(assert (=> b!3872682 m!4429737))

(declare-fun m!4429739 () Bool)

(assert (=> b!3872682 m!4429739))

(assert (=> b!3872682 m!4429691))

(declare-fun m!4429741 () Bool)

(assert (=> d!1146932 m!4429741))

(declare-fun m!4429743 () Bool)

(assert (=> d!1146932 m!4429743))

(assert (=> d!1146932 m!4429697))

(assert (=> b!3872631 d!1146932))

(declare-fun d!1146934 () Bool)

(declare-fun e!2395475 () Bool)

(assert (=> d!1146934 e!2395475))

(declare-fun res!1568710 () Bool)

(assert (=> d!1146934 (=> (not res!1568710) (not e!2395475))))

(declare-fun lt!1348628 () List!41265)

(declare-fun content!6147 (List!41265) (InoxSet C!22760))

(assert (=> d!1146934 (= res!1568710 (= (content!6147 lt!1348628) ((_ map or) (content!6147 prefix!426) (content!6147 suffix!1176))))))

(declare-fun e!2395476 () List!41265)

(assert (=> d!1146934 (= lt!1348628 e!2395476)))

(declare-fun c!673890 () Bool)

(assert (=> d!1146934 (= c!673890 ((_ is Nil!41141) prefix!426))))

(assert (=> d!1146934 (= (++!10522 prefix!426 suffix!1176) lt!1348628)))

(declare-fun b!3872692 () Bool)

(assert (=> b!3872692 (= e!2395476 suffix!1176)))

(declare-fun b!3872695 () Bool)

(assert (=> b!3872695 (= e!2395475 (or (not (= suffix!1176 Nil!41141)) (= lt!1348628 prefix!426)))))

(declare-fun b!3872694 () Bool)

(declare-fun res!1568711 () Bool)

(assert (=> b!3872694 (=> (not res!1568711) (not e!2395475))))

(assert (=> b!3872694 (= res!1568711 (= (size!30922 lt!1348628) (+ (size!30922 prefix!426) (size!30922 suffix!1176))))))

(declare-fun b!3872693 () Bool)

(assert (=> b!3872693 (= e!2395476 (Cons!41141 (h!46561 prefix!426) (++!10522 (t!314620 prefix!426) suffix!1176)))))

(assert (= (and d!1146934 c!673890) b!3872692))

(assert (= (and d!1146934 (not c!673890)) b!3872693))

(assert (= (and d!1146934 res!1568710) b!3872694))

(assert (= (and b!3872694 res!1568711) b!3872695))

(declare-fun m!4429745 () Bool)

(assert (=> d!1146934 m!4429745))

(declare-fun m!4429747 () Bool)

(assert (=> d!1146934 m!4429747))

(declare-fun m!4429749 () Bool)

(assert (=> d!1146934 m!4429749))

(declare-fun m!4429751 () Bool)

(assert (=> b!3872694 m!4429751))

(assert (=> b!3872694 m!4429595))

(assert (=> b!3872694 m!4429623))

(declare-fun m!4429753 () Bool)

(assert (=> b!3872693 m!4429753))

(assert (=> b!3872631 d!1146934))

(declare-fun d!1146936 () Bool)

(assert (=> d!1146936 (= (inv!55298 (tag!7242 (h!46563 rules!2768))) (= (mod (str.len (value!202520 (tag!7242 (h!46563 rules!2768)))) 2) 0))))

(assert (=> b!3872611 d!1146936))

(declare-fun d!1146938 () Bool)

(declare-fun res!1568714 () Bool)

(declare-fun e!2395479 () Bool)

(assert (=> d!1146938 (=> (not res!1568714) (not e!2395479))))

(declare-fun semiInverseModEq!2738 (Int Int) Bool)

(assert (=> d!1146938 (= res!1568714 (semiInverseModEq!2738 (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toValue!8810 (transformation!6382 (h!46563 rules!2768)))))))

(assert (=> d!1146938 (= (inv!55302 (transformation!6382 (h!46563 rules!2768))) e!2395479)))

(declare-fun b!3872698 () Bool)

(declare-fun equivClasses!2637 (Int Int) Bool)

(assert (=> b!3872698 (= e!2395479 (equivClasses!2637 (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toValue!8810 (transformation!6382 (h!46563 rules!2768)))))))

(assert (= (and d!1146938 res!1568714) b!3872698))

(declare-fun m!4429755 () Bool)

(assert (=> d!1146938 m!4429755))

(declare-fun m!4429757 () Bool)

(assert (=> b!3872698 m!4429757))

(assert (=> b!3872611 d!1146938))

(declare-fun d!1146940 () Bool)

(assert (=> d!1146940 (and (= lt!1348575 lt!1348575) (= (_2!23317 (v!39097 lt!1348557)) (_2!23317 lt!1348579)))))

(declare-fun lt!1348631 () Unit!59009)

(declare-fun choose!22909 (List!41265 List!41265 List!41265 List!41265) Unit!59009)

(assert (=> d!1146940 (= lt!1348631 (choose!22909 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 (_2!23317 lt!1348579)))))

(assert (=> d!1146940 (= (++!10522 lt!1348575 (_2!23317 (v!39097 lt!1348557))) (++!10522 lt!1348575 (_2!23317 lt!1348579)))))

(assert (=> d!1146940 (= (lemmaConcatSameAndSameSizesThenSameLists!466 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 (_2!23317 lt!1348579)) lt!1348631)))

(declare-fun bs!583525 () Bool)

(assert (= bs!583525 d!1146940))

(declare-fun m!4429759 () Bool)

(assert (=> bs!583525 m!4429759))

(assert (=> bs!583525 m!4429541))

(declare-fun m!4429761 () Bool)

(assert (=> bs!583525 m!4429761))

(assert (=> b!3872590 d!1146940))

(declare-fun d!1146942 () Bool)

(assert (=> d!1146942 (not (= (lexList!1739 thiss!20629 rules!2768 (_2!23317 lt!1348579)) (tuple2!40369 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1348634 () Unit!59009)

(declare-fun choose!22910 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41266 List!41265) Unit!59009)

(assert (=> d!1146942 (= lt!1348634 (choose!22910 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91))))

(assert (=> d!1146942 (not (isEmpty!24411 rules!2768))))

(assert (=> d!1146942 (= (lemmaLexWithSmallerInputCannotProduceSameResults!42 thiss!20629 rules!2768 suffix!1176 (_2!23317 lt!1348579) suffixTokens!72 suffixResult!91) lt!1348634)))

(declare-fun bs!583526 () Bool)

(assert (= bs!583526 d!1146942))

(assert (=> bs!583526 m!4429631))

(declare-fun m!4429763 () Bool)

(assert (=> bs!583526 m!4429763))

(assert (=> bs!583526 m!4429655))

(assert (=> b!3872590 d!1146942))

(declare-fun d!1146944 () Bool)

(assert (=> d!1146944 (= (isEmpty!24412 prefix!426) ((_ is Nil!41141) prefix!426))))

(assert (=> b!3872632 d!1146944))

(declare-fun d!1146946 () Bool)

(assert (=> d!1146946 (= (isEmpty!24410 lt!1348601) ((_ is Nil!41142) lt!1348601))))

(assert (=> b!3872613 d!1146946))

(declare-fun b!3872702 () Bool)

(declare-fun lt!1348635 () List!41266)

(declare-fun e!2395480 () Bool)

(assert (=> b!3872702 (= e!2395480 (or (not (= lt!1348601 Nil!41142)) (= lt!1348635 lt!1348564)))))

(declare-fun b!3872699 () Bool)

(declare-fun e!2395481 () List!41266)

(assert (=> b!3872699 (= e!2395481 lt!1348601)))

(declare-fun b!3872700 () Bool)

(assert (=> b!3872700 (= e!2395481 (Cons!41142 (h!46562 lt!1348564) (++!10521 (t!314621 lt!1348564) lt!1348601)))))

(declare-fun b!3872701 () Bool)

(declare-fun res!1568716 () Bool)

(assert (=> b!3872701 (=> (not res!1568716) (not e!2395480))))

(assert (=> b!3872701 (= res!1568716 (= (size!30923 lt!1348635) (+ (size!30923 lt!1348564) (size!30923 lt!1348601))))))

(declare-fun d!1146948 () Bool)

(assert (=> d!1146948 e!2395480))

(declare-fun res!1568715 () Bool)

(assert (=> d!1146948 (=> (not res!1568715) (not e!2395480))))

(assert (=> d!1146948 (= res!1568715 (= (content!6146 lt!1348635) ((_ map or) (content!6146 lt!1348564) (content!6146 lt!1348601))))))

(assert (=> d!1146948 (= lt!1348635 e!2395481)))

(declare-fun c!673891 () Bool)

(assert (=> d!1146948 (= c!673891 ((_ is Nil!41142) lt!1348564))))

(assert (=> d!1146948 (= (++!10521 lt!1348564 lt!1348601) lt!1348635)))

(assert (= (and d!1146948 c!673891) b!3872699))

(assert (= (and d!1146948 (not c!673891)) b!3872700))

(assert (= (and d!1146948 res!1568715) b!3872701))

(assert (= (and b!3872701 res!1568716) b!3872702))

(declare-fun m!4429765 () Bool)

(assert (=> b!3872700 m!4429765))

(declare-fun m!4429767 () Bool)

(assert (=> b!3872701 m!4429767))

(assert (=> b!3872701 m!4429673))

(assert (=> b!3872701 m!4429703))

(declare-fun m!4429769 () Bool)

(assert (=> d!1146948 m!4429769))

(assert (=> d!1146948 m!4429679))

(assert (=> d!1146948 m!4429707))

(assert (=> b!3872613 d!1146948))

(declare-fun b!3872706 () Bool)

(declare-fun lt!1348636 () List!41266)

(declare-fun e!2395482 () Bool)

(assert (=> b!3872706 (= e!2395482 (or (not (= lt!1348594 Nil!41142)) (= lt!1348636 lt!1348564)))))

(declare-fun b!3872703 () Bool)

(declare-fun e!2395483 () List!41266)

(assert (=> b!3872703 (= e!2395483 lt!1348594)))

(declare-fun b!3872704 () Bool)

(assert (=> b!3872704 (= e!2395483 (Cons!41142 (h!46562 lt!1348564) (++!10521 (t!314621 lt!1348564) lt!1348594)))))

(declare-fun b!3872705 () Bool)

(declare-fun res!1568718 () Bool)

(assert (=> b!3872705 (=> (not res!1568718) (not e!2395482))))

(assert (=> b!3872705 (= res!1568718 (= (size!30923 lt!1348636) (+ (size!30923 lt!1348564) (size!30923 lt!1348594))))))

(declare-fun d!1146950 () Bool)

(assert (=> d!1146950 e!2395482))

(declare-fun res!1568717 () Bool)

(assert (=> d!1146950 (=> (not res!1568717) (not e!2395482))))

(assert (=> d!1146950 (= res!1568717 (= (content!6146 lt!1348636) ((_ map or) (content!6146 lt!1348564) (content!6146 lt!1348594))))))

(assert (=> d!1146950 (= lt!1348636 e!2395483)))

(declare-fun c!673892 () Bool)

(assert (=> d!1146950 (= c!673892 ((_ is Nil!41142) lt!1348564))))

(assert (=> d!1146950 (= (++!10521 lt!1348564 lt!1348594) lt!1348636)))

(assert (= (and d!1146950 c!673892) b!3872703))

(assert (= (and d!1146950 (not c!673892)) b!3872704))

(assert (= (and d!1146950 res!1568717) b!3872705))

(assert (= (and b!3872705 res!1568718) b!3872706))

(declare-fun m!4429771 () Bool)

(assert (=> b!3872704 m!4429771))

(declare-fun m!4429773 () Bool)

(assert (=> b!3872705 m!4429773))

(assert (=> b!3872705 m!4429673))

(declare-fun m!4429775 () Bool)

(assert (=> b!3872705 m!4429775))

(declare-fun m!4429777 () Bool)

(assert (=> d!1146950 m!4429777))

(assert (=> d!1146950 m!4429679))

(declare-fun m!4429779 () Bool)

(assert (=> d!1146950 m!4429779))

(assert (=> b!3872613 d!1146950))

(declare-fun b!3872710 () Bool)

(declare-fun lt!1348637 () List!41266)

(declare-fun e!2395484 () Bool)

(assert (=> b!3872710 (= e!2395484 (or (not (= suffixTokens!72 Nil!41142)) (= lt!1348637 (++!10521 lt!1348564 lt!1348601))))))

(declare-fun b!3872707 () Bool)

(declare-fun e!2395485 () List!41266)

(assert (=> b!3872707 (= e!2395485 suffixTokens!72)))

(declare-fun b!3872708 () Bool)

(assert (=> b!3872708 (= e!2395485 (Cons!41142 (h!46562 (++!10521 lt!1348564 lt!1348601)) (++!10521 (t!314621 (++!10521 lt!1348564 lt!1348601)) suffixTokens!72)))))

(declare-fun b!3872709 () Bool)

(declare-fun res!1568720 () Bool)

(assert (=> b!3872709 (=> (not res!1568720) (not e!2395484))))

(assert (=> b!3872709 (= res!1568720 (= (size!30923 lt!1348637) (+ (size!30923 (++!10521 lt!1348564 lt!1348601)) (size!30923 suffixTokens!72))))))

(declare-fun d!1146952 () Bool)

(assert (=> d!1146952 e!2395484))

(declare-fun res!1568719 () Bool)

(assert (=> d!1146952 (=> (not res!1568719) (not e!2395484))))

(assert (=> d!1146952 (= res!1568719 (= (content!6146 lt!1348637) ((_ map or) (content!6146 (++!10521 lt!1348564 lt!1348601)) (content!6146 suffixTokens!72))))))

(assert (=> d!1146952 (= lt!1348637 e!2395485)))

(declare-fun c!673893 () Bool)

(assert (=> d!1146952 (= c!673893 ((_ is Nil!41142) (++!10521 lt!1348564 lt!1348601)))))

(assert (=> d!1146952 (= (++!10521 (++!10521 lt!1348564 lt!1348601) suffixTokens!72) lt!1348637)))

(assert (= (and d!1146952 c!673893) b!3872707))

(assert (= (and d!1146952 (not c!673893)) b!3872708))

(assert (= (and d!1146952 res!1568719) b!3872709))

(assert (= (and b!3872709 res!1568720) b!3872710))

(declare-fun m!4429781 () Bool)

(assert (=> b!3872708 m!4429781))

(declare-fun m!4429783 () Bool)

(assert (=> b!3872709 m!4429783))

(assert (=> b!3872709 m!4429577))

(declare-fun m!4429785 () Bool)

(assert (=> b!3872709 m!4429785))

(assert (=> b!3872709 m!4429691))

(declare-fun m!4429787 () Bool)

(assert (=> d!1146952 m!4429787))

(assert (=> d!1146952 m!4429577))

(declare-fun m!4429789 () Bool)

(assert (=> d!1146952 m!4429789))

(assert (=> d!1146952 m!4429697))

(assert (=> b!3872613 d!1146952))

(declare-fun d!1146954 () Bool)

(assert (=> d!1146954 (= (++!10521 (++!10521 lt!1348564 lt!1348601) suffixTokens!72) (++!10521 lt!1348564 (++!10521 lt!1348601 suffixTokens!72)))))

(declare-fun lt!1348640 () Unit!59009)

(declare-fun choose!22911 (List!41266 List!41266 List!41266) Unit!59009)

(assert (=> d!1146954 (= lt!1348640 (choose!22911 lt!1348564 lt!1348601 suffixTokens!72))))

(assert (=> d!1146954 (= (lemmaConcatAssociativity!2235 lt!1348564 lt!1348601 suffixTokens!72) lt!1348640)))

(declare-fun bs!583527 () Bool)

(assert (= bs!583527 d!1146954))

(assert (=> bs!583527 m!4429577))

(assert (=> bs!583527 m!4429579))

(assert (=> bs!583527 m!4429577))

(assert (=> bs!583527 m!4429613))

(declare-fun m!4429791 () Bool)

(assert (=> bs!583527 m!4429791))

(declare-fun m!4429793 () Bool)

(assert (=> bs!583527 m!4429793))

(assert (=> bs!583527 m!4429613))

(assert (=> b!3872613 d!1146954))

(declare-fun b!3872711 () Bool)

(declare-fun e!2395487 () Bool)

(declare-fun lt!1348643 () tuple2!40368)

(assert (=> b!3872711 (= e!2395487 (not (isEmpty!24410 (_1!23318 lt!1348643))))))

(declare-fun b!3872712 () Bool)

(declare-fun e!2395486 () Bool)

(assert (=> b!3872712 (= e!2395486 e!2395487)))

(declare-fun res!1568721 () Bool)

(assert (=> b!3872712 (= res!1568721 (< (size!30922 (_2!23318 lt!1348643)) (size!30922 suffix!1176)))))

(assert (=> b!3872712 (=> (not res!1568721) (not e!2395487))))

(declare-fun b!3872713 () Bool)

(assert (=> b!3872713 (= e!2395486 (= (_2!23318 lt!1348643) suffix!1176))))

(declare-fun d!1146956 () Bool)

(assert (=> d!1146956 e!2395486))

(declare-fun c!673894 () Bool)

(assert (=> d!1146956 (= c!673894 (> (size!30923 (_1!23318 lt!1348643)) 0))))

(declare-fun e!2395488 () tuple2!40368)

(assert (=> d!1146956 (= lt!1348643 e!2395488)))

(declare-fun c!673895 () Bool)

(declare-fun lt!1348642 () Option!8800)

(assert (=> d!1146956 (= c!673895 ((_ is Some!8799) lt!1348642))))

(assert (=> d!1146956 (= lt!1348642 (maxPrefix!3275 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1146956 (= (lexList!1739 thiss!20629 rules!2768 suffix!1176) lt!1348643)))

(declare-fun b!3872714 () Bool)

(assert (=> b!3872714 (= e!2395488 (tuple2!40369 Nil!41142 suffix!1176))))

(declare-fun b!3872715 () Bool)

(declare-fun lt!1348641 () tuple2!40368)

(assert (=> b!3872715 (= e!2395488 (tuple2!40369 (Cons!41142 (_1!23317 (v!39097 lt!1348642)) (_1!23318 lt!1348641)) (_2!23318 lt!1348641)))))

(assert (=> b!3872715 (= lt!1348641 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348642))))))

(assert (= (and d!1146956 c!673895) b!3872715))

(assert (= (and d!1146956 (not c!673895)) b!3872714))

(assert (= (and d!1146956 c!673894) b!3872712))

(assert (= (and d!1146956 (not c!673894)) b!3872713))

(assert (= (and b!3872712 res!1568721) b!3872711))

(declare-fun m!4429795 () Bool)

(assert (=> b!3872711 m!4429795))

(declare-fun m!4429797 () Bool)

(assert (=> b!3872712 m!4429797))

(assert (=> b!3872712 m!4429623))

(declare-fun m!4429799 () Bool)

(assert (=> d!1146956 m!4429799))

(declare-fun m!4429801 () Bool)

(assert (=> d!1146956 m!4429801))

(declare-fun m!4429803 () Bool)

(assert (=> b!3872715 m!4429803))

(assert (=> b!3872624 d!1146956))

(declare-fun d!1146958 () Bool)

(assert (=> d!1146958 (= (inv!55298 (tag!7242 (rule!9272 (h!46562 prefixTokens!80)))) (= (mod (str.len (value!202520 (tag!7242 (rule!9272 (h!46562 prefixTokens!80))))) 2) 0))))

(assert (=> b!3872604 d!1146958))

(declare-fun d!1146960 () Bool)

(declare-fun res!1568722 () Bool)

(declare-fun e!2395489 () Bool)

(assert (=> d!1146960 (=> (not res!1568722) (not e!2395489))))

(assert (=> d!1146960 (= res!1568722 (semiInverseModEq!2738 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toValue!8810 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))))))

(assert (=> d!1146960 (= (inv!55302 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) e!2395489)))

(declare-fun b!3872716 () Bool)

(assert (=> b!3872716 (= e!2395489 (equivClasses!2637 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toValue!8810 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))))))

(assert (= (and d!1146960 res!1568722) b!3872716))

(declare-fun m!4429805 () Bool)

(assert (=> d!1146960 m!4429805))

(declare-fun m!4429807 () Bool)

(assert (=> b!3872716 m!4429807))

(assert (=> b!3872604 d!1146960))

(declare-fun d!1146962 () Bool)

(assert (=> d!1146962 (= (inv!55298 (tag!7242 (rule!9272 (h!46562 suffixTokens!72)))) (= (mod (str.len (value!202520 (tag!7242 (rule!9272 (h!46562 suffixTokens!72))))) 2) 0))))

(assert (=> b!3872605 d!1146962))

(declare-fun d!1146964 () Bool)

(declare-fun res!1568723 () Bool)

(declare-fun e!2395490 () Bool)

(assert (=> d!1146964 (=> (not res!1568723) (not e!2395490))))

(assert (=> d!1146964 (= res!1568723 (semiInverseModEq!2738 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toValue!8810 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))))))

(assert (=> d!1146964 (= (inv!55302 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) e!2395490)))

(declare-fun b!3872717 () Bool)

(assert (=> b!3872717 (= e!2395490 (equivClasses!2637 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toValue!8810 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))))))

(assert (= (and d!1146964 res!1568723) b!3872717))

(declare-fun m!4429809 () Bool)

(assert (=> d!1146964 m!4429809))

(declare-fun m!4429811 () Bool)

(assert (=> b!3872717 m!4429811))

(assert (=> b!3872605 d!1146964))

(declare-fun d!1146966 () Bool)

(declare-fun lt!1348646 () Int)

(assert (=> d!1146966 (>= lt!1348646 0)))

(declare-fun e!2395493 () Int)

(assert (=> d!1146966 (= lt!1348646 e!2395493)))

(declare-fun c!673898 () Bool)

(assert (=> d!1146966 (= c!673898 ((_ is Nil!41141) lt!1348555))))

(assert (=> d!1146966 (= (size!30922 lt!1348555) lt!1348646)))

(declare-fun b!3872722 () Bool)

(assert (=> b!3872722 (= e!2395493 0)))

(declare-fun b!3872723 () Bool)

(assert (=> b!3872723 (= e!2395493 (+ 1 (size!30922 (t!314620 lt!1348555))))))

(assert (= (and d!1146966 c!673898) b!3872722))

(assert (= (and d!1146966 (not c!673898)) b!3872723))

(declare-fun m!4429813 () Bool)

(assert (=> b!3872723 m!4429813))

(assert (=> b!3872626 d!1146966))

(declare-fun d!1146968 () Bool)

(declare-fun lt!1348647 () Int)

(assert (=> d!1146968 (>= lt!1348647 0)))

(declare-fun e!2395494 () Int)

(assert (=> d!1146968 (= lt!1348647 e!2395494)))

(declare-fun c!673899 () Bool)

(assert (=> d!1146968 (= c!673899 ((_ is Nil!41141) (_2!23317 lt!1348579)))))

(assert (=> d!1146968 (= (size!30922 (_2!23317 lt!1348579)) lt!1348647)))

(declare-fun b!3872724 () Bool)

(assert (=> b!3872724 (= e!2395494 0)))

(declare-fun b!3872725 () Bool)

(assert (=> b!3872725 (= e!2395494 (+ 1 (size!30922 (t!314620 (_2!23317 lt!1348579)))))))

(assert (= (and d!1146968 c!673899) b!3872724))

(assert (= (and d!1146968 (not c!673899)) b!3872725))

(declare-fun m!4429815 () Bool)

(assert (=> b!3872725 m!4429815))

(assert (=> b!3872626 d!1146968))

(declare-fun d!1146970 () Bool)

(declare-fun e!2395519 () Bool)

(assert (=> d!1146970 e!2395519))

(declare-fun res!1568753 () Bool)

(assert (=> d!1146970 (=> res!1568753 e!2395519)))

(declare-fun lt!1348673 () Option!8800)

(declare-fun isEmpty!24413 (Option!8800) Bool)

(assert (=> d!1146970 (= res!1568753 (isEmpty!24413 lt!1348673))))

(declare-fun e!2395518 () Option!8800)

(assert (=> d!1146970 (= lt!1348673 e!2395518)))

(declare-fun c!673910 () Bool)

(declare-datatypes ((tuple2!40370 0))(
  ( (tuple2!40371 (_1!23319 List!41265) (_2!23319 List!41265)) )
))
(declare-fun lt!1348669 () tuple2!40370)

(assert (=> d!1146970 (= c!673910 (isEmpty!24412 (_1!23319 lt!1348669)))))

(declare-fun findLongestMatch!1118 (Regex!11287 List!41265) tuple2!40370)

(assert (=> d!1146970 (= lt!1348669 (findLongestMatch!1118 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) lt!1348555))))

(assert (=> d!1146970 (ruleValid!2334 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))))))

(assert (=> d!1146970 (= (maxPrefixOneRule!2357 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) lt!1348555) lt!1348673)))

(declare-fun b!3872767 () Bool)

(assert (=> b!3872767 (= e!2395518 None!8799)))

(declare-fun b!3872768 () Bool)

(declare-fun res!1568749 () Bool)

(declare-fun e!2395516 () Bool)

(assert (=> b!3872768 (=> (not res!1568749) (not e!2395516))))

(assert (=> b!3872768 (= res!1568749 (= (++!10522 (list!15304 (charsOf!4210 (_1!23317 (get!13613 lt!1348673)))) (_2!23317 (get!13613 lt!1348673))) lt!1348555))))

(declare-fun b!3872769 () Bool)

(declare-fun size!30924 (BalanceConc!24780) Int)

(assert (=> b!3872769 (= e!2395518 (Some!8799 (tuple2!40367 (Token!11903 (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (seqFromList!4653 (_1!23319 lt!1348669))) (rule!9272 (_1!23317 (v!39097 lt!1348557))) (size!30924 (seqFromList!4653 (_1!23319 lt!1348669))) (_1!23319 lt!1348669)) (_2!23319 lt!1348669))))))

(declare-fun lt!1348670 () Unit!59009)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1178 (Regex!11287 List!41265) Unit!59009)

(assert (=> b!3872769 (= lt!1348670 (longestMatchIsAcceptedByMatchOrIsEmpty!1178 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) lt!1348555))))

(declare-fun res!1568748 () Bool)

(declare-fun findLongestMatchInner!1205 (Regex!11287 List!41265 Int List!41265 List!41265 Int) tuple2!40370)

(assert (=> b!3872769 (= res!1568748 (isEmpty!24412 (_1!23319 (findLongestMatchInner!1205 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) Nil!41141 (size!30922 Nil!41141) lt!1348555 lt!1348555 (size!30922 lt!1348555)))))))

(declare-fun e!2395517 () Bool)

(assert (=> b!3872769 (=> res!1568748 e!2395517)))

(assert (=> b!3872769 e!2395517))

(declare-fun lt!1348672 () Unit!59009)

(assert (=> b!3872769 (= lt!1348672 lt!1348670)))

(declare-fun lt!1348671 () Unit!59009)

(declare-fun lemmaSemiInverse!1711 (TokenValueInjection!12652 BalanceConc!24780) Unit!59009)

(assert (=> b!3872769 (= lt!1348671 (lemmaSemiInverse!1711 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (seqFromList!4653 (_1!23319 lt!1348669))))))

(declare-fun b!3872770 () Bool)

(declare-fun matchR!5415 (Regex!11287 List!41265) Bool)

(assert (=> b!3872770 (= e!2395517 (matchR!5415 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (_1!23319 (findLongestMatchInner!1205 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) Nil!41141 (size!30922 Nil!41141) lt!1348555 lt!1348555 (size!30922 lt!1348555)))))))

(declare-fun b!3872771 () Bool)

(declare-fun res!1568750 () Bool)

(assert (=> b!3872771 (=> (not res!1568750) (not e!2395516))))

(assert (=> b!3872771 (= res!1568750 (= (rule!9272 (_1!23317 (get!13613 lt!1348673))) (rule!9272 (_1!23317 (v!39097 lt!1348557)))))))

(declare-fun b!3872772 () Bool)

(declare-fun res!1568752 () Bool)

(assert (=> b!3872772 (=> (not res!1568752) (not e!2395516))))

(assert (=> b!3872772 (= res!1568752 (< (size!30922 (_2!23317 (get!13613 lt!1348673))) (size!30922 lt!1348555)))))

(declare-fun b!3872773 () Bool)

(assert (=> b!3872773 (= e!2395516 (= (size!30921 (_1!23317 (get!13613 lt!1348673))) (size!30922 (originalCharacters!6982 (_1!23317 (get!13613 lt!1348673))))))))

(declare-fun b!3872774 () Bool)

(declare-fun res!1568751 () Bool)

(assert (=> b!3872774 (=> (not res!1568751) (not e!2395516))))

(assert (=> b!3872774 (= res!1568751 (= (value!202521 (_1!23317 (get!13613 lt!1348673))) (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (get!13613 lt!1348673)))) (seqFromList!4653 (originalCharacters!6982 (_1!23317 (get!13613 lt!1348673)))))))))

(declare-fun b!3872775 () Bool)

(assert (=> b!3872775 (= e!2395519 e!2395516)))

(declare-fun res!1568754 () Bool)

(assert (=> b!3872775 (=> (not res!1568754) (not e!2395516))))

(assert (=> b!3872775 (= res!1568754 (matchR!5415 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (list!15304 (charsOf!4210 (_1!23317 (get!13613 lt!1348673))))))))

(assert (= (and d!1146970 c!673910) b!3872767))

(assert (= (and d!1146970 (not c!673910)) b!3872769))

(assert (= (and b!3872769 (not res!1568748)) b!3872770))

(assert (= (and d!1146970 (not res!1568753)) b!3872775))

(assert (= (and b!3872775 res!1568754) b!3872768))

(assert (= (and b!3872768 res!1568749) b!3872772))

(assert (= (and b!3872772 res!1568752) b!3872771))

(assert (= (and b!3872771 res!1568750) b!3872774))

(assert (= (and b!3872774 res!1568751) b!3872773))

(declare-fun m!4429839 () Bool)

(assert (=> b!3872771 m!4429839))

(assert (=> b!3872772 m!4429839))

(declare-fun m!4429841 () Bool)

(assert (=> b!3872772 m!4429841))

(assert (=> b!3872772 m!4429641))

(declare-fun m!4429843 () Bool)

(assert (=> b!3872769 m!4429843))

(declare-fun m!4429845 () Bool)

(assert (=> b!3872769 m!4429845))

(declare-fun m!4429847 () Bool)

(assert (=> b!3872769 m!4429847))

(declare-fun m!4429849 () Bool)

(assert (=> b!3872769 m!4429849))

(assert (=> b!3872769 m!4429641))

(declare-fun m!4429851 () Bool)

(assert (=> b!3872769 m!4429851))

(assert (=> b!3872769 m!4429849))

(assert (=> b!3872769 m!4429845))

(assert (=> b!3872769 m!4429845))

(declare-fun m!4429853 () Bool)

(assert (=> b!3872769 m!4429853))

(declare-fun m!4429855 () Bool)

(assert (=> b!3872769 m!4429855))

(assert (=> b!3872769 m!4429845))

(declare-fun m!4429857 () Bool)

(assert (=> b!3872769 m!4429857))

(assert (=> b!3872769 m!4429641))

(assert (=> b!3872773 m!4429839))

(declare-fun m!4429859 () Bool)

(assert (=> b!3872773 m!4429859))

(assert (=> b!3872768 m!4429839))

(declare-fun m!4429861 () Bool)

(assert (=> b!3872768 m!4429861))

(assert (=> b!3872768 m!4429861))

(declare-fun m!4429863 () Bool)

(assert (=> b!3872768 m!4429863))

(assert (=> b!3872768 m!4429863))

(declare-fun m!4429865 () Bool)

(assert (=> b!3872768 m!4429865))

(assert (=> b!3872774 m!4429839))

(declare-fun m!4429867 () Bool)

(assert (=> b!3872774 m!4429867))

(assert (=> b!3872774 m!4429867))

(declare-fun m!4429869 () Bool)

(assert (=> b!3872774 m!4429869))

(declare-fun m!4429871 () Bool)

(assert (=> d!1146970 m!4429871))

(declare-fun m!4429873 () Bool)

(assert (=> d!1146970 m!4429873))

(declare-fun m!4429875 () Bool)

(assert (=> d!1146970 m!4429875))

(assert (=> d!1146970 m!4429553))

(assert (=> b!3872775 m!4429839))

(assert (=> b!3872775 m!4429861))

(assert (=> b!3872775 m!4429861))

(assert (=> b!3872775 m!4429863))

(assert (=> b!3872775 m!4429863))

(declare-fun m!4429877 () Bool)

(assert (=> b!3872775 m!4429877))

(assert (=> b!3872770 m!4429849))

(assert (=> b!3872770 m!4429641))

(assert (=> b!3872770 m!4429849))

(assert (=> b!3872770 m!4429641))

(assert (=> b!3872770 m!4429851))

(declare-fun m!4429879 () Bool)

(assert (=> b!3872770 m!4429879))

(assert (=> b!3872626 d!1146970))

(declare-fun d!1146978 () Bool)

(assert (=> d!1146978 (= (maxPrefixOneRule!2357 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) lt!1348555) (Some!8799 (tuple2!40367 (Token!11903 (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (seqFromList!4653 lt!1348575)) (rule!9272 (_1!23317 (v!39097 lt!1348557))) (size!30922 lt!1348575) lt!1348575) (_2!23317 (v!39097 lt!1348557)))))))

(declare-fun lt!1348692 () Unit!59009)

(declare-fun choose!22912 (LexerInterface!5971 List!41267 List!41265 List!41265 List!41265 Rule!12564) Unit!59009)

(assert (=> d!1146978 (= lt!1348692 (choose!22912 thiss!20629 rules!2768 lt!1348575 lt!1348555 (_2!23317 (v!39097 lt!1348557)) (rule!9272 (_1!23317 (v!39097 lt!1348557)))))))

(assert (=> d!1146978 (not (isEmpty!24411 rules!2768))))

(assert (=> d!1146978 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1255 thiss!20629 rules!2768 lt!1348575 lt!1348555 (_2!23317 (v!39097 lt!1348557)) (rule!9272 (_1!23317 (v!39097 lt!1348557)))) lt!1348692)))

(declare-fun bs!583530 () Bool)

(assert (= bs!583530 d!1146978))

(assert (=> bs!583530 m!4429545))

(assert (=> bs!583530 m!4429643))

(assert (=> bs!583530 m!4429561))

(declare-fun m!4429913 () Bool)

(assert (=> bs!583530 m!4429913))

(assert (=> bs!583530 m!4429545))

(assert (=> bs!583530 m!4429547))

(assert (=> bs!583530 m!4429655))

(assert (=> b!3872626 d!1146978))

(declare-fun d!1146990 () Bool)

(assert (=> d!1146990 (= (get!13613 lt!1348557) (v!39097 lt!1348557))))

(assert (=> b!3872626 d!1146990))

(declare-fun d!1146994 () Bool)

(declare-fun e!2395543 () Bool)

(assert (=> d!1146994 e!2395543))

(declare-fun res!1568779 () Bool)

(assert (=> d!1146994 (=> (not res!1568779) (not e!2395543))))

(declare-fun lt!1348694 () List!41265)

(assert (=> d!1146994 (= res!1568779 (= (content!6147 lt!1348694) ((_ map or) (content!6147 lt!1348575) (content!6147 lt!1348569))))))

(declare-fun e!2395544 () List!41265)

(assert (=> d!1146994 (= lt!1348694 e!2395544)))

(declare-fun c!673918 () Bool)

(assert (=> d!1146994 (= c!673918 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1146994 (= (++!10522 lt!1348575 lt!1348569) lt!1348694)))

(declare-fun b!3872814 () Bool)

(assert (=> b!3872814 (= e!2395544 lt!1348569)))

(declare-fun b!3872817 () Bool)

(assert (=> b!3872817 (= e!2395543 (or (not (= lt!1348569 Nil!41141)) (= lt!1348694 lt!1348575)))))

(declare-fun b!3872816 () Bool)

(declare-fun res!1568780 () Bool)

(assert (=> b!3872816 (=> (not res!1568780) (not e!2395543))))

(assert (=> b!3872816 (= res!1568780 (= (size!30922 lt!1348694) (+ (size!30922 lt!1348575) (size!30922 lt!1348569))))))

(declare-fun b!3872815 () Bool)

(assert (=> b!3872815 (= e!2395544 (Cons!41141 (h!46561 lt!1348575) (++!10522 (t!314620 lt!1348575) lt!1348569)))))

(assert (= (and d!1146994 c!673918) b!3872814))

(assert (= (and d!1146994 (not c!673918)) b!3872815))

(assert (= (and d!1146994 res!1568779) b!3872816))

(assert (= (and b!3872816 res!1568780) b!3872817))

(declare-fun m!4429917 () Bool)

(assert (=> d!1146994 m!4429917))

(declare-fun m!4429919 () Bool)

(assert (=> d!1146994 m!4429919))

(declare-fun m!4429921 () Bool)

(assert (=> d!1146994 m!4429921))

(declare-fun m!4429923 () Bool)

(assert (=> b!3872816 m!4429923))

(assert (=> b!3872816 m!4429561))

(assert (=> b!3872816 m!4429721))

(declare-fun m!4429925 () Bool)

(assert (=> b!3872815 m!4429925))

(assert (=> b!3872606 d!1146994))

(declare-fun d!1146996 () Bool)

(declare-fun lt!1348699 () List!41265)

(assert (=> d!1146996 (= (++!10522 lt!1348575 lt!1348699) prefix!426)))

(declare-fun e!2395555 () List!41265)

(assert (=> d!1146996 (= lt!1348699 e!2395555)))

(declare-fun c!673922 () Bool)

(assert (=> d!1146996 (= c!673922 ((_ is Cons!41141) lt!1348575))))

(assert (=> d!1146996 (>= (size!30922 prefix!426) (size!30922 lt!1348575))))

(assert (=> d!1146996 (= (getSuffix!1936 prefix!426 lt!1348575) lt!1348699)))

(declare-fun b!3872833 () Bool)

(assert (=> b!3872833 (= e!2395555 (getSuffix!1936 (tail!5920 prefix!426) (t!314620 lt!1348575)))))

(declare-fun b!3872834 () Bool)

(assert (=> b!3872834 (= e!2395555 prefix!426)))

(assert (= (and d!1146996 c!673922) b!3872833))

(assert (= (and d!1146996 (not c!673922)) b!3872834))

(declare-fun m!4429945 () Bool)

(assert (=> d!1146996 m!4429945))

(assert (=> d!1146996 m!4429595))

(assert (=> d!1146996 m!4429561))

(declare-fun m!4429951 () Bool)

(assert (=> b!3872833 m!4429951))

(assert (=> b!3872833 m!4429951))

(declare-fun m!4429957 () Bool)

(assert (=> b!3872833 m!4429957))

(assert (=> b!3872606 d!1146996))

(declare-fun d!1147005 () Bool)

(assert (=> d!1147005 (= (isEmpty!24410 prefixTokens!80) ((_ is Nil!41142) prefixTokens!80))))

(assert (=> b!3872585 d!1147005))

(declare-fun d!1147008 () Bool)

(declare-fun e!2395556 () Bool)

(assert (=> d!1147008 e!2395556))

(declare-fun res!1568790 () Bool)

(assert (=> d!1147008 (=> (not res!1568790) (not e!2395556))))

(declare-fun lt!1348701 () List!41265)

(assert (=> d!1147008 (= res!1568790 (= (content!6147 lt!1348701) ((_ map or) (content!6147 lt!1348582) (content!6147 suffix!1176))))))

(declare-fun e!2395557 () List!41265)

(assert (=> d!1147008 (= lt!1348701 e!2395557)))

(declare-fun c!673923 () Bool)

(assert (=> d!1147008 (= c!673923 ((_ is Nil!41141) lt!1348582))))

(assert (=> d!1147008 (= (++!10522 lt!1348582 suffix!1176) lt!1348701)))

(declare-fun b!3872835 () Bool)

(assert (=> b!3872835 (= e!2395557 suffix!1176)))

(declare-fun b!3872838 () Bool)

(assert (=> b!3872838 (= e!2395556 (or (not (= suffix!1176 Nil!41141)) (= lt!1348701 lt!1348582)))))

(declare-fun b!3872837 () Bool)

(declare-fun res!1568791 () Bool)

(assert (=> b!3872837 (=> (not res!1568791) (not e!2395556))))

(assert (=> b!3872837 (= res!1568791 (= (size!30922 lt!1348701) (+ (size!30922 lt!1348582) (size!30922 suffix!1176))))))

(declare-fun b!3872836 () Bool)

(assert (=> b!3872836 (= e!2395557 (Cons!41141 (h!46561 lt!1348582) (++!10522 (t!314620 lt!1348582) suffix!1176)))))

(assert (= (and d!1147008 c!673923) b!3872835))

(assert (= (and d!1147008 (not c!673923)) b!3872836))

(assert (= (and d!1147008 res!1568790) b!3872837))

(assert (= (and b!3872837 res!1568791) b!3872838))

(declare-fun m!4429965 () Bool)

(assert (=> d!1147008 m!4429965))

(declare-fun m!4429967 () Bool)

(assert (=> d!1147008 m!4429967))

(assert (=> d!1147008 m!4429749))

(declare-fun m!4429969 () Bool)

(assert (=> b!3872837 m!4429969))

(declare-fun m!4429971 () Bool)

(assert (=> b!3872837 m!4429971))

(assert (=> b!3872837 m!4429623))

(declare-fun m!4429973 () Bool)

(assert (=> b!3872836 m!4429973))

(assert (=> b!3872627 d!1147008))

(declare-fun b!3872854 () Bool)

(declare-fun e!2395569 () Bool)

(declare-fun inv!17 (TokenValue!6612) Bool)

(assert (=> b!3872854 (= e!2395569 (inv!17 (value!202521 (h!46562 suffixTokens!72))))))

(declare-fun d!1147012 () Bool)

(declare-fun c!673930 () Bool)

(assert (=> d!1147012 (= c!673930 ((_ is IntegerValue!19836) (value!202521 (h!46562 suffixTokens!72))))))

(declare-fun e!2395568 () Bool)

(assert (=> d!1147012 (= (inv!21 (value!202521 (h!46562 suffixTokens!72))) e!2395568)))

(declare-fun b!3872855 () Bool)

(assert (=> b!3872855 (= e!2395568 e!2395569)))

(declare-fun c!673931 () Bool)

(assert (=> b!3872855 (= c!673931 ((_ is IntegerValue!19837) (value!202521 (h!46562 suffixTokens!72))))))

(declare-fun b!3872856 () Bool)

(declare-fun inv!16 (TokenValue!6612) Bool)

(assert (=> b!3872856 (= e!2395568 (inv!16 (value!202521 (h!46562 suffixTokens!72))))))

(declare-fun b!3872857 () Bool)

(declare-fun res!1568795 () Bool)

(declare-fun e!2395567 () Bool)

(assert (=> b!3872857 (=> res!1568795 e!2395567)))

(assert (=> b!3872857 (= res!1568795 (not ((_ is IntegerValue!19838) (value!202521 (h!46562 suffixTokens!72)))))))

(assert (=> b!3872857 (= e!2395569 e!2395567)))

(declare-fun b!3872858 () Bool)

(declare-fun inv!15 (TokenValue!6612) Bool)

(assert (=> b!3872858 (= e!2395567 (inv!15 (value!202521 (h!46562 suffixTokens!72))))))

(assert (= (and d!1147012 c!673930) b!3872856))

(assert (= (and d!1147012 (not c!673930)) b!3872855))

(assert (= (and b!3872855 c!673931) b!3872854))

(assert (= (and b!3872855 (not c!673931)) b!3872857))

(assert (= (and b!3872857 (not res!1568795)) b!3872858))

(declare-fun m!4429985 () Bool)

(assert (=> b!3872854 m!4429985))

(declare-fun m!4429987 () Bool)

(assert (=> b!3872856 m!4429987))

(declare-fun m!4429989 () Bool)

(assert (=> b!3872858 m!4429989))

(assert (=> b!3872586 d!1147012))

(declare-fun d!1147016 () Bool)

(assert (=> d!1147016 (= (_2!23317 (v!39097 lt!1348557)) lt!1348592)))

(declare-fun lt!1348707 () Unit!59009)

(declare-fun choose!22913 (List!41265 List!41265 List!41265 List!41265 List!41265) Unit!59009)

(assert (=> d!1147016 (= lt!1348707 (choose!22913 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348592 lt!1348555))))

(assert (=> d!1147016 (isPrefix!3481 lt!1348575 lt!1348555)))

(assert (=> d!1147016 (= (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348592 lt!1348555) lt!1348707)))

(declare-fun bs!583532 () Bool)

(assert (= bs!583532 d!1147016))

(declare-fun m!4429991 () Bool)

(assert (=> bs!583532 m!4429991))

(declare-fun m!4429993 () Bool)

(assert (=> bs!583532 m!4429993))

(assert (=> b!3872587 d!1147016))

(declare-fun b!3872861 () Bool)

(declare-fun e!2395571 () Bool)

(assert (=> b!3872861 (= e!2395571 (isPrefix!3481 (tail!5920 lt!1348575) (tail!5920 lt!1348567)))))

(declare-fun b!3872859 () Bool)

(declare-fun e!2395570 () Bool)

(assert (=> b!3872859 (= e!2395570 e!2395571)))

(declare-fun res!1568799 () Bool)

(assert (=> b!3872859 (=> (not res!1568799) (not e!2395571))))

(assert (=> b!3872859 (= res!1568799 (not ((_ is Nil!41141) lt!1348567)))))

(declare-fun b!3872860 () Bool)

(declare-fun res!1568798 () Bool)

(assert (=> b!3872860 (=> (not res!1568798) (not e!2395571))))

(assert (=> b!3872860 (= res!1568798 (= (head!8203 lt!1348575) (head!8203 lt!1348567)))))

(declare-fun b!3872862 () Bool)

(declare-fun e!2395572 () Bool)

(assert (=> b!3872862 (= e!2395572 (>= (size!30922 lt!1348567) (size!30922 lt!1348575)))))

(declare-fun d!1147018 () Bool)

(assert (=> d!1147018 e!2395572))

(declare-fun res!1568797 () Bool)

(assert (=> d!1147018 (=> res!1568797 e!2395572)))

(declare-fun lt!1348708 () Bool)

(assert (=> d!1147018 (= res!1568797 (not lt!1348708))))

(assert (=> d!1147018 (= lt!1348708 e!2395570)))

(declare-fun res!1568796 () Bool)

(assert (=> d!1147018 (=> res!1568796 e!2395570)))

(assert (=> d!1147018 (= res!1568796 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147018 (= (isPrefix!3481 lt!1348575 lt!1348567) lt!1348708)))

(assert (= (and d!1147018 (not res!1568796)) b!3872859))

(assert (= (and b!3872859 res!1568799) b!3872860))

(assert (= (and b!3872860 res!1568798) b!3872861))

(assert (= (and d!1147018 (not res!1568797)) b!3872862))

(declare-fun m!4429995 () Bool)

(assert (=> b!3872861 m!4429995))

(declare-fun m!4429997 () Bool)

(assert (=> b!3872861 m!4429997))

(assert (=> b!3872861 m!4429995))

(assert (=> b!3872861 m!4429997))

(declare-fun m!4429999 () Bool)

(assert (=> b!3872861 m!4429999))

(declare-fun m!4430001 () Bool)

(assert (=> b!3872860 m!4430001))

(declare-fun m!4430003 () Bool)

(assert (=> b!3872860 m!4430003))

(declare-fun m!4430005 () Bool)

(assert (=> b!3872862 m!4430005))

(assert (=> b!3872862 m!4429561))

(assert (=> b!3872587 d!1147018))

(declare-fun d!1147020 () Bool)

(assert (=> d!1147020 (isPrefix!3481 lt!1348575 (++!10522 lt!1348575 lt!1348592))))

(declare-fun lt!1348709 () Unit!59009)

(assert (=> d!1147020 (= lt!1348709 (choose!22908 lt!1348575 lt!1348592))))

(assert (=> d!1147020 (= (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348575 lt!1348592) lt!1348709)))

(declare-fun bs!583533 () Bool)

(assert (= bs!583533 d!1147020))

(assert (=> bs!583533 m!4429533))

(assert (=> bs!583533 m!4429533))

(declare-fun m!4430007 () Bool)

(assert (=> bs!583533 m!4430007))

(declare-fun m!4430009 () Bool)

(assert (=> bs!583533 m!4430009))

(assert (=> b!3872587 d!1147020))

(declare-fun b!3872863 () Bool)

(declare-fun e!2395574 () Bool)

(declare-fun lt!1348712 () tuple2!40368)

(assert (=> b!3872863 (= e!2395574 (not (isEmpty!24410 (_1!23318 lt!1348712))))))

(declare-fun b!3872864 () Bool)

(declare-fun e!2395573 () Bool)

(assert (=> b!3872864 (= e!2395573 e!2395574)))

(declare-fun res!1568800 () Bool)

(assert (=> b!3872864 (= res!1568800 (< (size!30922 (_2!23318 lt!1348712)) (size!30922 lt!1348592)))))

(assert (=> b!3872864 (=> (not res!1568800) (not e!2395574))))

(declare-fun b!3872865 () Bool)

(assert (=> b!3872865 (= e!2395573 (= (_2!23318 lt!1348712) lt!1348592))))

(declare-fun d!1147022 () Bool)

(assert (=> d!1147022 e!2395573))

(declare-fun c!673932 () Bool)

(assert (=> d!1147022 (= c!673932 (> (size!30923 (_1!23318 lt!1348712)) 0))))

(declare-fun e!2395575 () tuple2!40368)

(assert (=> d!1147022 (= lt!1348712 e!2395575)))

(declare-fun c!673933 () Bool)

(declare-fun lt!1348711 () Option!8800)

(assert (=> d!1147022 (= c!673933 ((_ is Some!8799) lt!1348711))))

(assert (=> d!1147022 (= lt!1348711 (maxPrefix!3275 thiss!20629 rules!2768 lt!1348592))))

(assert (=> d!1147022 (= (lexList!1739 thiss!20629 rules!2768 lt!1348592) lt!1348712)))

(declare-fun b!3872866 () Bool)

(assert (=> b!3872866 (= e!2395575 (tuple2!40369 Nil!41142 lt!1348592))))

(declare-fun b!3872867 () Bool)

(declare-fun lt!1348710 () tuple2!40368)

(assert (=> b!3872867 (= e!2395575 (tuple2!40369 (Cons!41142 (_1!23317 (v!39097 lt!1348711)) (_1!23318 lt!1348710)) (_2!23318 lt!1348710)))))

(assert (=> b!3872867 (= lt!1348710 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348711))))))

(assert (= (and d!1147022 c!673933) b!3872867))

(assert (= (and d!1147022 (not c!673933)) b!3872866))

(assert (= (and d!1147022 c!673932) b!3872864))

(assert (= (and d!1147022 (not c!673932)) b!3872865))

(assert (= (and b!3872864 res!1568800) b!3872863))

(declare-fun m!4430011 () Bool)

(assert (=> b!3872863 m!4430011))

(declare-fun m!4430013 () Bool)

(assert (=> b!3872864 m!4430013))

(assert (=> b!3872864 m!4429719))

(declare-fun m!4430015 () Bool)

(assert (=> d!1147022 m!4430015))

(declare-fun m!4430017 () Bool)

(assert (=> d!1147022 m!4430017))

(declare-fun m!4430019 () Bool)

(assert (=> b!3872867 m!4430019))

(assert (=> b!3872598 d!1147022))

(declare-fun d!1147024 () Bool)

(declare-fun res!1568805 () Bool)

(declare-fun e!2395578 () Bool)

(assert (=> d!1147024 (=> (not res!1568805) (not e!2395578))))

(assert (=> d!1147024 (= res!1568805 (not (isEmpty!24412 (originalCharacters!6982 (h!46562 suffixTokens!72)))))))

(assert (=> d!1147024 (= (inv!55301 (h!46562 suffixTokens!72)) e!2395578)))

(declare-fun b!3872872 () Bool)

(declare-fun res!1568806 () Bool)

(assert (=> b!3872872 (=> (not res!1568806) (not e!2395578))))

(declare-fun dynLambda!17699 (Int TokenValue!6612) BalanceConc!24780)

(assert (=> b!3872872 (= res!1568806 (= (originalCharacters!6982 (h!46562 suffixTokens!72)) (list!15304 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (value!202521 (h!46562 suffixTokens!72))))))))

(declare-fun b!3872873 () Bool)

(assert (=> b!3872873 (= e!2395578 (= (size!30921 (h!46562 suffixTokens!72)) (size!30922 (originalCharacters!6982 (h!46562 suffixTokens!72)))))))

(assert (= (and d!1147024 res!1568805) b!3872872))

(assert (= (and b!3872872 res!1568806) b!3872873))

(declare-fun b_lambda!113103 () Bool)

(assert (=> (not b_lambda!113103) (not b!3872872)))

(declare-fun t!314624 () Bool)

(declare-fun tb!224657 () Bool)

(assert (=> (and b!3872596 (= (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314624) tb!224657))

(declare-fun b!3872878 () Bool)

(declare-fun e!2395581 () Bool)

(declare-fun tp!1174143 () Bool)

(declare-fun inv!55303 (Conc!12593) Bool)

(assert (=> b!3872878 (= e!2395581 (and (inv!55303 (c!673875 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (value!202521 (h!46562 suffixTokens!72))))) tp!1174143))))

(declare-fun result!273634 () Bool)

(declare-fun inv!55304 (BalanceConc!24780) Bool)

(assert (=> tb!224657 (= result!273634 (and (inv!55304 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (value!202521 (h!46562 suffixTokens!72)))) e!2395581))))

(assert (= tb!224657 b!3872878))

(declare-fun m!4430021 () Bool)

(assert (=> b!3872878 m!4430021))

(declare-fun m!4430023 () Bool)

(assert (=> tb!224657 m!4430023))

(assert (=> b!3872872 t!314624))

(declare-fun b_and!290319 () Bool)

(assert (= b_and!290309 (and (=> t!314624 result!273634) b_and!290319)))

(declare-fun t!314626 () Bool)

(declare-fun tb!224659 () Bool)

(assert (=> (and b!3872597 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314626) tb!224659))

(declare-fun result!273638 () Bool)

(assert (= result!273638 result!273634))

(assert (=> b!3872872 t!314626))

(declare-fun b_and!290321 () Bool)

(assert (= b_and!290313 (and (=> t!314626 result!273638) b_and!290321)))

(declare-fun t!314628 () Bool)

(declare-fun tb!224661 () Bool)

(assert (=> (and b!3872630 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314628) tb!224661))

(declare-fun result!273640 () Bool)

(assert (= result!273640 result!273634))

(assert (=> b!3872872 t!314628))

(declare-fun b_and!290323 () Bool)

(assert (= b_and!290317 (and (=> t!314628 result!273640) b_and!290323)))

(declare-fun m!4430025 () Bool)

(assert (=> d!1147024 m!4430025))

(declare-fun m!4430027 () Bool)

(assert (=> b!3872872 m!4430027))

(assert (=> b!3872872 m!4430027))

(declare-fun m!4430029 () Bool)

(assert (=> b!3872872 m!4430029))

(declare-fun m!4430031 () Bool)

(assert (=> b!3872873 m!4430031))

(assert (=> b!3872619 d!1147024))

(declare-fun d!1147026 () Bool)

(assert (=> d!1147026 (= (head!8202 prefixTokens!80) (h!46562 prefixTokens!80))))

(assert (=> b!3872599 d!1147026))

(declare-fun d!1147028 () Bool)

(assert (=> d!1147028 (= (isEmpty!24411 rules!2768) ((_ is Nil!41143) rules!2768))))

(assert (=> b!3872620 d!1147028))

(declare-fun d!1147030 () Bool)

(declare-fun lt!1348713 () List!41265)

(assert (=> d!1147030 (= (++!10522 lt!1348575 lt!1348713) lt!1348555)))

(declare-fun e!2395582 () List!41265)

(assert (=> d!1147030 (= lt!1348713 e!2395582)))

(declare-fun c!673934 () Bool)

(assert (=> d!1147030 (= c!673934 ((_ is Cons!41141) lt!1348575))))

(assert (=> d!1147030 (>= (size!30922 lt!1348555) (size!30922 lt!1348575))))

(assert (=> d!1147030 (= (getSuffix!1936 lt!1348555 lt!1348575) lt!1348713)))

(declare-fun b!3872879 () Bool)

(assert (=> b!3872879 (= e!2395582 (getSuffix!1936 (tail!5920 lt!1348555) (t!314620 lt!1348575)))))

(declare-fun b!3872880 () Bool)

(assert (=> b!3872880 (= e!2395582 lt!1348555)))

(assert (= (and d!1147030 c!673934) b!3872879))

(assert (= (and d!1147030 (not c!673934)) b!3872880))

(declare-fun m!4430033 () Bool)

(assert (=> d!1147030 m!4430033))

(assert (=> d!1147030 m!4429641))

(assert (=> d!1147030 m!4429561))

(declare-fun m!4430035 () Bool)

(assert (=> b!3872879 m!4430035))

(assert (=> b!3872879 m!4430035))

(declare-fun m!4430037 () Bool)

(assert (=> b!3872879 m!4430037))

(assert (=> b!3872600 d!1147030))

(declare-fun d!1147032 () Bool)

(declare-fun dynLambda!17700 (Int BalanceConc!24780) TokenValue!6612)

(assert (=> d!1147032 (= (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (seqFromList!4653 lt!1348575)) (dynLambda!17700 (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))) (seqFromList!4653 lt!1348575)))))

(declare-fun b_lambda!113105 () Bool)

(assert (=> (not b_lambda!113105) (not d!1147032)))

(declare-fun t!314630 () Bool)

(declare-fun tb!224663 () Bool)

(assert (=> (and b!3872596 (= (toValue!8810 (transformation!6382 (h!46563 rules!2768))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314630) tb!224663))

(declare-fun result!273642 () Bool)

(assert (=> tb!224663 (= result!273642 (inv!21 (dynLambda!17700 (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))) (seqFromList!4653 lt!1348575))))))

(declare-fun m!4430039 () Bool)

(assert (=> tb!224663 m!4430039))

(assert (=> d!1147032 t!314630))

(declare-fun b_and!290325 () Bool)

(assert (= b_and!290307 (and (=> t!314630 result!273642) b_and!290325)))

(declare-fun t!314632 () Bool)

(declare-fun tb!224665 () Bool)

(assert (=> (and b!3872597 (= (toValue!8810 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314632) tb!224665))

(declare-fun result!273646 () Bool)

(assert (= result!273646 result!273642))

(assert (=> d!1147032 t!314632))

(declare-fun b_and!290327 () Bool)

(assert (= b_and!290311 (and (=> t!314632 result!273646) b_and!290327)))

(declare-fun tb!224667 () Bool)

(declare-fun t!314634 () Bool)

(assert (=> (and b!3872630 (= (toValue!8810 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314634) tb!224667))

(declare-fun result!273648 () Bool)

(assert (= result!273648 result!273642))

(assert (=> d!1147032 t!314634))

(declare-fun b_and!290329 () Bool)

(assert (= b_and!290315 (and (=> t!314634 result!273648) b_and!290329)))

(assert (=> d!1147032 m!4429545))

(declare-fun m!4430041 () Bool)

(assert (=> d!1147032 m!4430041))

(assert (=> b!3872600 d!1147032))

(declare-fun d!1147034 () Bool)

(declare-fun lt!1348714 () Int)

(assert (=> d!1147034 (>= lt!1348714 0)))

(declare-fun e!2395586 () Int)

(assert (=> d!1147034 (= lt!1348714 e!2395586)))

(declare-fun c!673935 () Bool)

(assert (=> d!1147034 (= c!673935 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147034 (= (size!30922 lt!1348575) lt!1348714)))

(declare-fun b!3872883 () Bool)

(assert (=> b!3872883 (= e!2395586 0)))

(declare-fun b!3872884 () Bool)

(assert (=> b!3872884 (= e!2395586 (+ 1 (size!30922 (t!314620 lt!1348575))))))

(assert (= (and d!1147034 c!673935) b!3872883))

(assert (= (and d!1147034 (not c!673935)) b!3872884))

(declare-fun m!4430043 () Bool)

(assert (=> b!3872884 m!4430043))

(assert (=> b!3872600 d!1147034))

(declare-fun d!1147036 () Bool)

(declare-fun list!15305 (Conc!12593) List!41265)

(assert (=> d!1147036 (= (list!15304 (charsOf!4210 (_1!23317 (v!39097 lt!1348557)))) (list!15305 (c!673875 (charsOf!4210 (_1!23317 (v!39097 lt!1348557))))))))

(declare-fun bs!583534 () Bool)

(assert (= bs!583534 d!1147036))

(declare-fun m!4430045 () Bool)

(assert (=> bs!583534 m!4430045))

(assert (=> b!3872600 d!1147036))

(declare-fun d!1147038 () Bool)

(assert (=> d!1147038 (isPrefix!3481 lt!1348575 (++!10522 lt!1348575 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun lt!1348715 () Unit!59009)

(assert (=> d!1147038 (= lt!1348715 (choose!22908 lt!1348575 (_2!23317 (v!39097 lt!1348557))))))

(assert (=> d!1147038 (= (lemmaConcatTwoListThenFirstIsPrefix!2344 lt!1348575 (_2!23317 (v!39097 lt!1348557))) lt!1348715)))

(declare-fun bs!583535 () Bool)

(assert (= bs!583535 d!1147038))

(assert (=> bs!583535 m!4429541))

(assert (=> bs!583535 m!4429541))

(declare-fun m!4430047 () Bool)

(assert (=> bs!583535 m!4430047))

(declare-fun m!4430049 () Bool)

(assert (=> bs!583535 m!4430049))

(assert (=> b!3872600 d!1147038))

(declare-fun d!1147040 () Bool)

(declare-fun res!1568811 () Bool)

(declare-fun e!2395589 () Bool)

(assert (=> d!1147040 (=> (not res!1568811) (not e!2395589))))

(declare-fun validRegex!5137 (Regex!11287) Bool)

(assert (=> d!1147040 (= res!1568811 (validRegex!5137 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))))))

(assert (=> d!1147040 (= (ruleValid!2334 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) e!2395589)))

(declare-fun b!3872889 () Bool)

(declare-fun res!1568812 () Bool)

(assert (=> b!3872889 (=> (not res!1568812) (not e!2395589))))

(declare-fun nullable!3938 (Regex!11287) Bool)

(assert (=> b!3872889 (= res!1568812 (not (nullable!3938 (regex!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))))))

(declare-fun b!3872890 () Bool)

(assert (=> b!3872890 (= e!2395589 (not (= (tag!7242 (rule!9272 (_1!23317 (v!39097 lt!1348557)))) (String!46779 ""))))))

(assert (= (and d!1147040 res!1568811) b!3872889))

(assert (= (and b!3872889 res!1568812) b!3872890))

(declare-fun m!4430051 () Bool)

(assert (=> d!1147040 m!4430051))

(declare-fun m!4430053 () Bool)

(assert (=> b!3872889 m!4430053))

(assert (=> b!3872600 d!1147040))

(declare-fun b!3872893 () Bool)

(declare-fun e!2395591 () Bool)

(assert (=> b!3872893 (= e!2395591 (isPrefix!3481 (tail!5920 lt!1348575) (tail!5920 lt!1348565)))))

(declare-fun b!3872891 () Bool)

(declare-fun e!2395590 () Bool)

(assert (=> b!3872891 (= e!2395590 e!2395591)))

(declare-fun res!1568816 () Bool)

(assert (=> b!3872891 (=> (not res!1568816) (not e!2395591))))

(assert (=> b!3872891 (= res!1568816 (not ((_ is Nil!41141) lt!1348565)))))

(declare-fun b!3872892 () Bool)

(declare-fun res!1568815 () Bool)

(assert (=> b!3872892 (=> (not res!1568815) (not e!2395591))))

(assert (=> b!3872892 (= res!1568815 (= (head!8203 lt!1348575) (head!8203 lt!1348565)))))

(declare-fun b!3872894 () Bool)

(declare-fun e!2395592 () Bool)

(assert (=> b!3872894 (= e!2395592 (>= (size!30922 lt!1348565) (size!30922 lt!1348575)))))

(declare-fun d!1147042 () Bool)

(assert (=> d!1147042 e!2395592))

(declare-fun res!1568814 () Bool)

(assert (=> d!1147042 (=> res!1568814 e!2395592)))

(declare-fun lt!1348716 () Bool)

(assert (=> d!1147042 (= res!1568814 (not lt!1348716))))

(assert (=> d!1147042 (= lt!1348716 e!2395590)))

(declare-fun res!1568813 () Bool)

(assert (=> d!1147042 (=> res!1568813 e!2395590)))

(assert (=> d!1147042 (= res!1568813 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147042 (= (isPrefix!3481 lt!1348575 lt!1348565) lt!1348716)))

(assert (= (and d!1147042 (not res!1568813)) b!3872891))

(assert (= (and b!3872891 res!1568816) b!3872892))

(assert (= (and b!3872892 res!1568815) b!3872893))

(assert (= (and d!1147042 (not res!1568814)) b!3872894))

(assert (=> b!3872893 m!4429995))

(declare-fun m!4430055 () Bool)

(assert (=> b!3872893 m!4430055))

(assert (=> b!3872893 m!4429995))

(assert (=> b!3872893 m!4430055))

(declare-fun m!4430057 () Bool)

(assert (=> b!3872893 m!4430057))

(assert (=> b!3872892 m!4430001))

(declare-fun m!4430059 () Bool)

(assert (=> b!3872892 m!4430059))

(declare-fun m!4430061 () Bool)

(assert (=> b!3872894 m!4430061))

(assert (=> b!3872894 m!4429561))

(assert (=> b!3872600 d!1147042))

(declare-fun d!1147044 () Bool)

(assert (=> d!1147044 (= (size!30921 (_1!23317 (v!39097 lt!1348557))) (size!30922 (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557)))))))

(declare-fun Unit!59020 () Unit!59009)

(assert (=> d!1147044 (= (lemmaCharactersSize!1043 (_1!23317 (v!39097 lt!1348557))) Unit!59020)))

(declare-fun bs!583536 () Bool)

(assert (= bs!583536 d!1147044))

(assert (=> bs!583536 m!4429585))

(assert (=> b!3872600 d!1147044))

(declare-fun d!1147046 () Bool)

(declare-fun fromListB!2148 (List!41265) BalanceConc!24780)

(assert (=> d!1147046 (= (seqFromList!4653 lt!1348575) (fromListB!2148 lt!1348575))))

(declare-fun bs!583537 () Bool)

(assert (= bs!583537 d!1147046))

(declare-fun m!4430063 () Bool)

(assert (=> bs!583537 m!4430063))

(assert (=> b!3872600 d!1147046))

(declare-fun d!1147048 () Bool)

(declare-fun lt!1348729 () BalanceConc!24780)

(assert (=> d!1147048 (= (list!15304 lt!1348729) (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557))))))

(assert (=> d!1147048 (= lt!1348729 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))) (value!202521 (_1!23317 (v!39097 lt!1348557)))))))

(assert (=> d!1147048 (= (charsOf!4210 (_1!23317 (v!39097 lt!1348557))) lt!1348729)))

(declare-fun b_lambda!113107 () Bool)

(assert (=> (not b_lambda!113107) (not d!1147048)))

(declare-fun tb!224669 () Bool)

(declare-fun t!314636 () Bool)

(assert (=> (and b!3872596 (= (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314636) tb!224669))

(declare-fun b!3872911 () Bool)

(declare-fun e!2395599 () Bool)

(declare-fun tp!1174144 () Bool)

(assert (=> b!3872911 (= e!2395599 (and (inv!55303 (c!673875 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))) (value!202521 (_1!23317 (v!39097 lt!1348557)))))) tp!1174144))))

(declare-fun result!273650 () Bool)

(assert (=> tb!224669 (= result!273650 (and (inv!55304 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557))))) (value!202521 (_1!23317 (v!39097 lt!1348557))))) e!2395599))))

(assert (= tb!224669 b!3872911))

(declare-fun m!4430065 () Bool)

(assert (=> b!3872911 m!4430065))

(declare-fun m!4430067 () Bool)

(assert (=> tb!224669 m!4430067))

(assert (=> d!1147048 t!314636))

(declare-fun b_and!290331 () Bool)

(assert (= b_and!290319 (and (=> t!314636 result!273650) b_and!290331)))

(declare-fun tb!224671 () Bool)

(declare-fun t!314638 () Bool)

(assert (=> (and b!3872597 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314638) tb!224671))

(declare-fun result!273652 () Bool)

(assert (= result!273652 result!273650))

(assert (=> d!1147048 t!314638))

(declare-fun b_and!290333 () Bool)

(assert (= b_and!290321 (and (=> t!314638 result!273652) b_and!290333)))

(declare-fun t!314640 () Bool)

(declare-fun tb!224673 () Bool)

(assert (=> (and b!3872630 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314640) tb!224673))

(declare-fun result!273654 () Bool)

(assert (= result!273654 result!273650))

(assert (=> d!1147048 t!314640))

(declare-fun b_and!290335 () Bool)

(assert (= b_and!290323 (and (=> t!314640 result!273654) b_and!290335)))

(declare-fun m!4430069 () Bool)

(assert (=> d!1147048 m!4430069))

(declare-fun m!4430071 () Bool)

(assert (=> d!1147048 m!4430071))

(assert (=> b!3872600 d!1147048))

(declare-fun d!1147050 () Bool)

(assert (=> d!1147050 (ruleValid!2334 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))))))

(declare-fun lt!1348732 () Unit!59009)

(declare-fun choose!22917 (LexerInterface!5971 Rule!12564 List!41267) Unit!59009)

(assert (=> d!1147050 (= lt!1348732 (choose!22917 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) rules!2768))))

(declare-fun contains!8291 (List!41267 Rule!12564) Bool)

(assert (=> d!1147050 (contains!8291 rules!2768 (rule!9272 (_1!23317 (v!39097 lt!1348557))))))

(assert (=> d!1147050 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1414 thiss!20629 (rule!9272 (_1!23317 (v!39097 lt!1348557))) rules!2768) lt!1348732)))

(declare-fun bs!583538 () Bool)

(assert (= bs!583538 d!1147050))

(assert (=> bs!583538 m!4429553))

(declare-fun m!4430073 () Bool)

(assert (=> bs!583538 m!4430073))

(declare-fun m!4430075 () Bool)

(assert (=> bs!583538 m!4430075))

(assert (=> b!3872600 d!1147050))

(declare-fun b!3872914 () Bool)

(declare-fun e!2395601 () Bool)

(declare-fun lt!1348735 () tuple2!40368)

(assert (=> b!3872914 (= e!2395601 (not (isEmpty!24410 (_1!23318 lt!1348735))))))

(declare-fun b!3872915 () Bool)

(declare-fun e!2395600 () Bool)

(assert (=> b!3872915 (= e!2395600 e!2395601)))

(declare-fun res!1568831 () Bool)

(assert (=> b!3872915 (= res!1568831 (< (size!30922 (_2!23318 lt!1348735)) (size!30922 (_2!23317 (v!39097 lt!1348557)))))))

(assert (=> b!3872915 (=> (not res!1568831) (not e!2395601))))

(declare-fun b!3872916 () Bool)

(assert (=> b!3872916 (= e!2395600 (= (_2!23318 lt!1348735) (_2!23317 (v!39097 lt!1348557))))))

(declare-fun d!1147052 () Bool)

(assert (=> d!1147052 e!2395600))

(declare-fun c!673938 () Bool)

(assert (=> d!1147052 (= c!673938 (> (size!30923 (_1!23318 lt!1348735)) 0))))

(declare-fun e!2395602 () tuple2!40368)

(assert (=> d!1147052 (= lt!1348735 e!2395602)))

(declare-fun c!673939 () Bool)

(declare-fun lt!1348734 () Option!8800)

(assert (=> d!1147052 (= c!673939 ((_ is Some!8799) lt!1348734))))

(assert (=> d!1147052 (= lt!1348734 (maxPrefix!3275 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557))))))

(assert (=> d!1147052 (= (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557))) lt!1348735)))

(declare-fun b!3872917 () Bool)

(assert (=> b!3872917 (= e!2395602 (tuple2!40369 Nil!41142 (_2!23317 (v!39097 lt!1348557))))))

(declare-fun b!3872918 () Bool)

(declare-fun lt!1348733 () tuple2!40368)

(assert (=> b!3872918 (= e!2395602 (tuple2!40369 (Cons!41142 (_1!23317 (v!39097 lt!1348734)) (_1!23318 lt!1348733)) (_2!23318 lt!1348733)))))

(assert (=> b!3872918 (= lt!1348733 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348734))))))

(assert (= (and d!1147052 c!673939) b!3872918))

(assert (= (and d!1147052 (not c!673939)) b!3872917))

(assert (= (and d!1147052 c!673938) b!3872915))

(assert (= (and d!1147052 (not c!673938)) b!3872916))

(assert (= (and b!3872915 res!1568831) b!3872914))

(declare-fun m!4430077 () Bool)

(assert (=> b!3872914 m!4430077))

(declare-fun m!4430079 () Bool)

(assert (=> b!3872915 m!4430079))

(assert (=> b!3872915 m!4429625))

(declare-fun m!4430081 () Bool)

(assert (=> d!1147052 m!4430081))

(declare-fun m!4430083 () Bool)

(assert (=> d!1147052 m!4430083))

(declare-fun m!4430085 () Bool)

(assert (=> b!3872918 m!4430085))

(assert (=> b!3872600 d!1147052))

(declare-fun d!1147054 () Bool)

(assert (=> d!1147054 (= (_2!23317 (v!39097 lt!1348557)) lt!1348589)))

(declare-fun lt!1348736 () Unit!59009)

(assert (=> d!1147054 (= lt!1348736 (choose!22913 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348589 lt!1348555))))

(assert (=> d!1147054 (isPrefix!3481 lt!1348575 lt!1348555)))

(assert (=> d!1147054 (= (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) lt!1348575 lt!1348589 lt!1348555) lt!1348736)))

(declare-fun bs!583539 () Bool)

(assert (= bs!583539 d!1147054))

(declare-fun m!4430087 () Bool)

(assert (=> bs!583539 m!4430087))

(assert (=> bs!583539 m!4429993))

(assert (=> b!3872600 d!1147054))

(declare-fun d!1147056 () Bool)

(declare-fun e!2395603 () Bool)

(assert (=> d!1147056 e!2395603))

(declare-fun res!1568832 () Bool)

(assert (=> d!1147056 (=> (not res!1568832) (not e!2395603))))

(declare-fun lt!1348737 () List!41265)

(assert (=> d!1147056 (= res!1568832 (= (content!6147 lt!1348737) ((_ map or) (content!6147 lt!1348575) (content!6147 (_2!23317 (v!39097 lt!1348557))))))))

(declare-fun e!2395604 () List!41265)

(assert (=> d!1147056 (= lt!1348737 e!2395604)))

(declare-fun c!673940 () Bool)

(assert (=> d!1147056 (= c!673940 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147056 (= (++!10522 lt!1348575 (_2!23317 (v!39097 lt!1348557))) lt!1348737)))

(declare-fun b!3872919 () Bool)

(assert (=> b!3872919 (= e!2395604 (_2!23317 (v!39097 lt!1348557)))))

(declare-fun b!3872922 () Bool)

(assert (=> b!3872922 (= e!2395603 (or (not (= (_2!23317 (v!39097 lt!1348557)) Nil!41141)) (= lt!1348737 lt!1348575)))))

(declare-fun b!3872921 () Bool)

(declare-fun res!1568833 () Bool)

(assert (=> b!3872921 (=> (not res!1568833) (not e!2395603))))

(assert (=> b!3872921 (= res!1568833 (= (size!30922 lt!1348737) (+ (size!30922 lt!1348575) (size!30922 (_2!23317 (v!39097 lt!1348557))))))))

(declare-fun b!3872920 () Bool)

(assert (=> b!3872920 (= e!2395604 (Cons!41141 (h!46561 lt!1348575) (++!10522 (t!314620 lt!1348575) (_2!23317 (v!39097 lt!1348557)))))))

(assert (= (and d!1147056 c!673940) b!3872919))

(assert (= (and d!1147056 (not c!673940)) b!3872920))

(assert (= (and d!1147056 res!1568832) b!3872921))

(assert (= (and b!3872921 res!1568833) b!3872922))

(declare-fun m!4430089 () Bool)

(assert (=> d!1147056 m!4430089))

(assert (=> d!1147056 m!4429919))

(declare-fun m!4430091 () Bool)

(assert (=> d!1147056 m!4430091))

(declare-fun m!4430093 () Bool)

(assert (=> b!3872921 m!4430093))

(assert (=> b!3872921 m!4429561))

(assert (=> b!3872921 m!4429625))

(declare-fun m!4430095 () Bool)

(assert (=> b!3872920 m!4430095))

(assert (=> b!3872600 d!1147056))

(declare-fun d!1147058 () Bool)

(assert (=> d!1147058 (not (= (lexList!1739 thiss!20629 rules!2768 suffix!1176) (tuple2!40369 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1348738 () Unit!59009)

(assert (=> d!1147058 (= lt!1348738 (choose!22910 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147058 (not (isEmpty!24411 rules!2768))))

(assert (=> d!1147058 (= (lemmaLexWithSmallerInputCannotProduceSameResults!42 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348557)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1348738)))

(declare-fun bs!583540 () Bool)

(assert (= bs!583540 d!1147058))

(assert (=> bs!583540 m!4429591))

(declare-fun m!4430097 () Bool)

(assert (=> bs!583540 m!4430097))

(assert (=> bs!583540 m!4429655))

(assert (=> b!3872601 d!1147058))

(declare-fun d!1147060 () Bool)

(declare-fun lt!1348739 () Int)

(assert (=> d!1147060 (>= lt!1348739 0)))

(declare-fun e!2395605 () Int)

(assert (=> d!1147060 (= lt!1348739 e!2395605)))

(declare-fun c!673941 () Bool)

(assert (=> d!1147060 (= c!673941 ((_ is Nil!41141) suffix!1176))))

(assert (=> d!1147060 (= (size!30922 suffix!1176) lt!1348739)))

(declare-fun b!3872923 () Bool)

(assert (=> b!3872923 (= e!2395605 0)))

(declare-fun b!3872924 () Bool)

(assert (=> b!3872924 (= e!2395605 (+ 1 (size!30922 (t!314620 suffix!1176))))))

(assert (= (and d!1147060 c!673941) b!3872923))

(assert (= (and d!1147060 (not c!673941)) b!3872924))

(declare-fun m!4430099 () Bool)

(assert (=> b!3872924 m!4430099))

(assert (=> b!3872602 d!1147060))

(declare-fun d!1147062 () Bool)

(declare-fun lt!1348745 () Int)

(assert (=> d!1147062 (>= lt!1348745 0)))

(declare-fun e!2395609 () Int)

(assert (=> d!1147062 (= lt!1348745 e!2395609)))

(declare-fun c!673943 () Bool)

(assert (=> d!1147062 (= c!673943 ((_ is Nil!41141) (_2!23317 (v!39097 lt!1348557))))))

(assert (=> d!1147062 (= (size!30922 (_2!23317 (v!39097 lt!1348557))) lt!1348745)))

(declare-fun b!3872934 () Bool)

(assert (=> b!3872934 (= e!2395609 0)))

(declare-fun b!3872935 () Bool)

(assert (=> b!3872935 (= e!2395609 (+ 1 (size!30922 (t!314620 (_2!23317 (v!39097 lt!1348557))))))))

(assert (= (and d!1147062 c!673943) b!3872934))

(assert (= (and d!1147062 (not c!673943)) b!3872935))

(declare-fun m!4430101 () Bool)

(assert (=> b!3872935 m!4430101))

(assert (=> b!3872602 d!1147062))

(declare-fun d!1147064 () Bool)

(declare-fun e!2395610 () Bool)

(assert (=> d!1147064 e!2395610))

(declare-fun res!1568841 () Bool)

(assert (=> d!1147064 (=> (not res!1568841) (not e!2395610))))

(declare-fun lt!1348746 () List!41265)

(assert (=> d!1147064 (= res!1568841 (= (content!6147 lt!1348746) ((_ map or) (content!6147 lt!1348575) (content!6147 lt!1348592))))))

(declare-fun e!2395611 () List!41265)

(assert (=> d!1147064 (= lt!1348746 e!2395611)))

(declare-fun c!673944 () Bool)

(assert (=> d!1147064 (= c!673944 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147064 (= (++!10522 lt!1348575 lt!1348592) lt!1348746)))

(declare-fun b!3872936 () Bool)

(assert (=> b!3872936 (= e!2395611 lt!1348592)))

(declare-fun b!3872939 () Bool)

(assert (=> b!3872939 (= e!2395610 (or (not (= lt!1348592 Nil!41141)) (= lt!1348746 lt!1348575)))))

(declare-fun b!3872938 () Bool)

(declare-fun res!1568842 () Bool)

(assert (=> b!3872938 (=> (not res!1568842) (not e!2395610))))

(assert (=> b!3872938 (= res!1568842 (= (size!30922 lt!1348746) (+ (size!30922 lt!1348575) (size!30922 lt!1348592))))))

(declare-fun b!3872937 () Bool)

(assert (=> b!3872937 (= e!2395611 (Cons!41141 (h!46561 lt!1348575) (++!10522 (t!314620 lt!1348575) lt!1348592)))))

(assert (= (and d!1147064 c!673944) b!3872936))

(assert (= (and d!1147064 (not c!673944)) b!3872937))

(assert (= (and d!1147064 res!1568841) b!3872938))

(assert (= (and b!3872938 res!1568842) b!3872939))

(declare-fun m!4430103 () Bool)

(assert (=> d!1147064 m!4430103))

(assert (=> d!1147064 m!4429919))

(declare-fun m!4430105 () Bool)

(assert (=> d!1147064 m!4430105))

(declare-fun m!4430107 () Bool)

(assert (=> b!3872938 m!4430107))

(assert (=> b!3872938 m!4429561))

(assert (=> b!3872938 m!4429719))

(declare-fun m!4430109 () Bool)

(assert (=> b!3872937 m!4430109))

(assert (=> b!3872623 d!1147064))

(declare-fun d!1147066 () Bool)

(declare-fun e!2395612 () Bool)

(assert (=> d!1147066 e!2395612))

(declare-fun res!1568843 () Bool)

(assert (=> d!1147066 (=> (not res!1568843) (not e!2395612))))

(declare-fun lt!1348747 () List!41265)

(assert (=> d!1147066 (= res!1568843 (= (content!6147 lt!1348747) ((_ map or) (content!6147 lt!1348569) (content!6147 suffix!1176))))))

(declare-fun e!2395613 () List!41265)

(assert (=> d!1147066 (= lt!1348747 e!2395613)))

(declare-fun c!673945 () Bool)

(assert (=> d!1147066 (= c!673945 ((_ is Nil!41141) lt!1348569))))

(assert (=> d!1147066 (= (++!10522 lt!1348569 suffix!1176) lt!1348747)))

(declare-fun b!3872940 () Bool)

(assert (=> b!3872940 (= e!2395613 suffix!1176)))

(declare-fun b!3872943 () Bool)

(assert (=> b!3872943 (= e!2395612 (or (not (= suffix!1176 Nil!41141)) (= lt!1348747 lt!1348569)))))

(declare-fun b!3872942 () Bool)

(declare-fun res!1568844 () Bool)

(assert (=> b!3872942 (=> (not res!1568844) (not e!2395612))))

(assert (=> b!3872942 (= res!1568844 (= (size!30922 lt!1348747) (+ (size!30922 lt!1348569) (size!30922 suffix!1176))))))

(declare-fun b!3872941 () Bool)

(assert (=> b!3872941 (= e!2395613 (Cons!41141 (h!46561 lt!1348569) (++!10522 (t!314620 lt!1348569) suffix!1176)))))

(assert (= (and d!1147066 c!673945) b!3872940))

(assert (= (and d!1147066 (not c!673945)) b!3872941))

(assert (= (and d!1147066 res!1568843) b!3872942))

(assert (= (and b!3872942 res!1568844) b!3872943))

(declare-fun m!4430111 () Bool)

(assert (=> d!1147066 m!4430111))

(assert (=> d!1147066 m!4429921))

(assert (=> d!1147066 m!4429749))

(declare-fun m!4430113 () Bool)

(assert (=> b!3872942 m!4430113))

(assert (=> b!3872942 m!4429721))

(assert (=> b!3872942 m!4429623))

(declare-fun m!4430115 () Bool)

(assert (=> b!3872941 m!4430115))

(assert (=> b!3872623 d!1147066))

(declare-fun d!1147068 () Bool)

(assert (=> d!1147068 (= (++!10522 (++!10522 lt!1348575 lt!1348569) suffix!1176) (++!10522 lt!1348575 (++!10522 lt!1348569 suffix!1176)))))

(declare-fun lt!1348751 () Unit!59009)

(declare-fun choose!22918 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> d!1147068 (= lt!1348751 (choose!22918 lt!1348575 lt!1348569 suffix!1176))))

(assert (=> d!1147068 (= (lemmaConcatAssociativity!2236 lt!1348575 lt!1348569 suffix!1176) lt!1348751)))

(declare-fun bs!583541 () Bool)

(assert (= bs!583541 d!1147068))

(assert (=> bs!583541 m!4429535))

(declare-fun m!4430151 () Bool)

(assert (=> bs!583541 m!4430151))

(assert (=> bs!583541 m!4429519))

(declare-fun m!4430153 () Bool)

(assert (=> bs!583541 m!4430153))

(assert (=> bs!583541 m!4429535))

(assert (=> bs!583541 m!4429519))

(declare-fun m!4430155 () Bool)

(assert (=> bs!583541 m!4430155))

(assert (=> b!3872623 d!1147068))

(declare-fun d!1147074 () Bool)

(declare-fun lt!1348752 () Int)

(assert (=> d!1147074 (>= lt!1348752 0)))

(declare-fun e!2395615 () Int)

(assert (=> d!1147074 (= lt!1348752 e!2395615)))

(declare-fun c!673947 () Bool)

(assert (=> d!1147074 (= c!673947 ((_ is Nil!41141) (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557)))))))

(assert (=> d!1147074 (= (size!30922 (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557)))) lt!1348752)))

(declare-fun b!3872946 () Bool)

(assert (=> b!3872946 (= e!2395615 0)))

(declare-fun b!3872947 () Bool)

(assert (=> b!3872947 (= e!2395615 (+ 1 (size!30922 (t!314620 (originalCharacters!6982 (_1!23317 (v!39097 lt!1348557)))))))))

(assert (= (and d!1147074 c!673947) b!3872946))

(assert (= (and d!1147074 (not c!673947)) b!3872947))

(declare-fun m!4430157 () Bool)

(assert (=> b!3872947 m!4430157))

(assert (=> b!3872603 d!1147074))

(declare-fun d!1147076 () Bool)

(declare-fun res!1568847 () Bool)

(declare-fun e!2395618 () Bool)

(assert (=> d!1147076 (=> (not res!1568847) (not e!2395618))))

(declare-fun rulesValid!2474 (LexerInterface!5971 List!41267) Bool)

(assert (=> d!1147076 (= res!1568847 (rulesValid!2474 thiss!20629 rules!2768))))

(assert (=> d!1147076 (= (rulesInvariant!5314 thiss!20629 rules!2768) e!2395618)))

(declare-fun b!3872950 () Bool)

(declare-datatypes ((List!41269 0))(
  ( (Nil!41145) (Cons!41145 (h!46565 String!46778) (t!314720 List!41269)) )
))
(declare-fun noDuplicateTag!2475 (LexerInterface!5971 List!41267 List!41269) Bool)

(assert (=> b!3872950 (= e!2395618 (noDuplicateTag!2475 thiss!20629 rules!2768 Nil!41145))))

(assert (= (and d!1147076 res!1568847) b!3872950))

(declare-fun m!4430159 () Bool)

(assert (=> d!1147076 m!4430159))

(declare-fun m!4430161 () Bool)

(assert (=> b!3872950 m!4430161))

(assert (=> b!3872614 d!1147076))

(declare-fun b!3872969 () Bool)

(declare-fun e!2395625 () Option!8800)

(declare-fun call!282756 () Option!8800)

(assert (=> b!3872969 (= e!2395625 call!282756)))

(declare-fun b!3872970 () Bool)

(declare-fun e!2395627 () Bool)

(declare-fun lt!1348770 () Option!8800)

(assert (=> b!3872970 (= e!2395627 (contains!8291 rules!2768 (rule!9272 (_1!23317 (get!13613 lt!1348770)))))))

(declare-fun b!3872971 () Bool)

(declare-fun e!2395626 () Bool)

(assert (=> b!3872971 (= e!2395626 e!2395627)))

(declare-fun res!1568865 () Bool)

(assert (=> b!3872971 (=> (not res!1568865) (not e!2395627))))

(declare-fun isDefined!6887 (Option!8800) Bool)

(assert (=> b!3872971 (= res!1568865 (isDefined!6887 lt!1348770))))

(declare-fun b!3872972 () Bool)

(declare-fun lt!1348767 () Option!8800)

(declare-fun lt!1348766 () Option!8800)

(assert (=> b!3872972 (= e!2395625 (ite (and ((_ is None!8799) lt!1348767) ((_ is None!8799) lt!1348766)) None!8799 (ite ((_ is None!8799) lt!1348766) lt!1348767 (ite ((_ is None!8799) lt!1348767) lt!1348766 (ite (>= (size!30921 (_1!23317 (v!39097 lt!1348767))) (size!30921 (_1!23317 (v!39097 lt!1348766)))) lt!1348767 lt!1348766)))))))

(assert (=> b!3872972 (= lt!1348767 call!282756)))

(assert (=> b!3872972 (= lt!1348766 (maxPrefix!3275 thiss!20629 (t!314622 rules!2768) lt!1348555))))

(declare-fun bm!282751 () Bool)

(assert (=> bm!282751 (= call!282756 (maxPrefixOneRule!2357 thiss!20629 (h!46563 rules!2768) lt!1348555))))

(declare-fun b!3872973 () Bool)

(declare-fun res!1568867 () Bool)

(assert (=> b!3872973 (=> (not res!1568867) (not e!2395627))))

(assert (=> b!3872973 (= res!1568867 (= (value!202521 (_1!23317 (get!13613 lt!1348770))) (apply!9625 (transformation!6382 (rule!9272 (_1!23317 (get!13613 lt!1348770)))) (seqFromList!4653 (originalCharacters!6982 (_1!23317 (get!13613 lt!1348770)))))))))

(declare-fun b!3872975 () Bool)

(declare-fun res!1568868 () Bool)

(assert (=> b!3872975 (=> (not res!1568868) (not e!2395627))))

(assert (=> b!3872975 (= res!1568868 (= (++!10522 (list!15304 (charsOf!4210 (_1!23317 (get!13613 lt!1348770)))) (_2!23317 (get!13613 lt!1348770))) lt!1348555))))

(declare-fun d!1147078 () Bool)

(assert (=> d!1147078 e!2395626))

(declare-fun res!1568862 () Bool)

(assert (=> d!1147078 (=> res!1568862 e!2395626)))

(assert (=> d!1147078 (= res!1568862 (isEmpty!24413 lt!1348770))))

(assert (=> d!1147078 (= lt!1348770 e!2395625)))

(declare-fun c!673950 () Bool)

(assert (=> d!1147078 (= c!673950 (and ((_ is Cons!41143) rules!2768) ((_ is Nil!41143) (t!314622 rules!2768))))))

(declare-fun lt!1348768 () Unit!59009)

(declare-fun lt!1348769 () Unit!59009)

(assert (=> d!1147078 (= lt!1348768 lt!1348769)))

(assert (=> d!1147078 (isPrefix!3481 lt!1348555 lt!1348555)))

(declare-fun lemmaIsPrefixRefl!2210 (List!41265 List!41265) Unit!59009)

(assert (=> d!1147078 (= lt!1348769 (lemmaIsPrefixRefl!2210 lt!1348555 lt!1348555))))

(declare-fun rulesValidInductive!2284 (LexerInterface!5971 List!41267) Bool)

(assert (=> d!1147078 (rulesValidInductive!2284 thiss!20629 rules!2768)))

(assert (=> d!1147078 (= (maxPrefix!3275 thiss!20629 rules!2768 lt!1348555) lt!1348770)))

(declare-fun b!3872974 () Bool)

(declare-fun res!1568864 () Bool)

(assert (=> b!3872974 (=> (not res!1568864) (not e!2395627))))

(assert (=> b!3872974 (= res!1568864 (< (size!30922 (_2!23317 (get!13613 lt!1348770))) (size!30922 lt!1348555)))))

(declare-fun b!3872976 () Bool)

(declare-fun res!1568863 () Bool)

(assert (=> b!3872976 (=> (not res!1568863) (not e!2395627))))

(assert (=> b!3872976 (= res!1568863 (matchR!5415 (regex!6382 (rule!9272 (_1!23317 (get!13613 lt!1348770)))) (list!15304 (charsOf!4210 (_1!23317 (get!13613 lt!1348770))))))))

(declare-fun b!3872977 () Bool)

(declare-fun res!1568866 () Bool)

(assert (=> b!3872977 (=> (not res!1568866) (not e!2395627))))

(assert (=> b!3872977 (= res!1568866 (= (list!15304 (charsOf!4210 (_1!23317 (get!13613 lt!1348770)))) (originalCharacters!6982 (_1!23317 (get!13613 lt!1348770)))))))

(assert (= (and d!1147078 c!673950) b!3872969))

(assert (= (and d!1147078 (not c!673950)) b!3872972))

(assert (= (or b!3872969 b!3872972) bm!282751))

(assert (= (and d!1147078 (not res!1568862)) b!3872971))

(assert (= (and b!3872971 res!1568865) b!3872977))

(assert (= (and b!3872977 res!1568866) b!3872974))

(assert (= (and b!3872974 res!1568864) b!3872975))

(assert (= (and b!3872975 res!1568868) b!3872973))

(assert (= (and b!3872973 res!1568867) b!3872976))

(assert (= (and b!3872976 res!1568863) b!3872970))

(declare-fun m!4430165 () Bool)

(assert (=> b!3872971 m!4430165))

(declare-fun m!4430167 () Bool)

(assert (=> b!3872974 m!4430167))

(declare-fun m!4430169 () Bool)

(assert (=> b!3872974 m!4430169))

(assert (=> b!3872974 m!4429641))

(declare-fun m!4430171 () Bool)

(assert (=> bm!282751 m!4430171))

(assert (=> b!3872975 m!4430167))

(declare-fun m!4430173 () Bool)

(assert (=> b!3872975 m!4430173))

(assert (=> b!3872975 m!4430173))

(declare-fun m!4430175 () Bool)

(assert (=> b!3872975 m!4430175))

(assert (=> b!3872975 m!4430175))

(declare-fun m!4430177 () Bool)

(assert (=> b!3872975 m!4430177))

(declare-fun m!4430179 () Bool)

(assert (=> d!1147078 m!4430179))

(declare-fun m!4430181 () Bool)

(assert (=> d!1147078 m!4430181))

(declare-fun m!4430183 () Bool)

(assert (=> d!1147078 m!4430183))

(declare-fun m!4430185 () Bool)

(assert (=> d!1147078 m!4430185))

(assert (=> b!3872973 m!4430167))

(declare-fun m!4430187 () Bool)

(assert (=> b!3872973 m!4430187))

(assert (=> b!3872973 m!4430187))

(declare-fun m!4430189 () Bool)

(assert (=> b!3872973 m!4430189))

(assert (=> b!3872970 m!4430167))

(declare-fun m!4430191 () Bool)

(assert (=> b!3872970 m!4430191))

(declare-fun m!4430193 () Bool)

(assert (=> b!3872972 m!4430193))

(assert (=> b!3872977 m!4430167))

(assert (=> b!3872977 m!4430173))

(assert (=> b!3872977 m!4430173))

(assert (=> b!3872977 m!4430175))

(assert (=> b!3872976 m!4430167))

(assert (=> b!3872976 m!4430173))

(assert (=> b!3872976 m!4430173))

(assert (=> b!3872976 m!4430175))

(assert (=> b!3872976 m!4430175))

(declare-fun m!4430195 () Bool)

(assert (=> b!3872976 m!4430195))

(assert (=> b!3872594 d!1147078))

(declare-fun b!3872978 () Bool)

(declare-fun e!2395629 () Bool)

(declare-fun lt!1348773 () tuple2!40368)

(assert (=> b!3872978 (= e!2395629 (not (isEmpty!24410 (_1!23318 lt!1348773))))))

(declare-fun b!3872979 () Bool)

(declare-fun e!2395628 () Bool)

(assert (=> b!3872979 (= e!2395628 e!2395629)))

(declare-fun res!1568869 () Bool)

(assert (=> b!3872979 (= res!1568869 (< (size!30922 (_2!23318 lt!1348773)) (size!30922 (_2!23317 lt!1348579))))))

(assert (=> b!3872979 (=> (not res!1568869) (not e!2395629))))

(declare-fun b!3872980 () Bool)

(assert (=> b!3872980 (= e!2395628 (= (_2!23318 lt!1348773) (_2!23317 lt!1348579)))))

(declare-fun d!1147084 () Bool)

(assert (=> d!1147084 e!2395628))

(declare-fun c!673951 () Bool)

(assert (=> d!1147084 (= c!673951 (> (size!30923 (_1!23318 lt!1348773)) 0))))

(declare-fun e!2395630 () tuple2!40368)

(assert (=> d!1147084 (= lt!1348773 e!2395630)))

(declare-fun c!673952 () Bool)

(declare-fun lt!1348772 () Option!8800)

(assert (=> d!1147084 (= c!673952 ((_ is Some!8799) lt!1348772))))

(assert (=> d!1147084 (= lt!1348772 (maxPrefix!3275 thiss!20629 rules!2768 (_2!23317 lt!1348579)))))

(assert (=> d!1147084 (= (lexList!1739 thiss!20629 rules!2768 (_2!23317 lt!1348579)) lt!1348773)))

(declare-fun b!3872981 () Bool)

(assert (=> b!3872981 (= e!2395630 (tuple2!40369 Nil!41142 (_2!23317 lt!1348579)))))

(declare-fun b!3872982 () Bool)

(declare-fun lt!1348771 () tuple2!40368)

(assert (=> b!3872982 (= e!2395630 (tuple2!40369 (Cons!41142 (_1!23317 (v!39097 lt!1348772)) (_1!23318 lt!1348771)) (_2!23318 lt!1348771)))))

(assert (=> b!3872982 (= lt!1348771 (lexList!1739 thiss!20629 rules!2768 (_2!23317 (v!39097 lt!1348772))))))

(assert (= (and d!1147084 c!673952) b!3872982))

(assert (= (and d!1147084 (not c!673952)) b!3872981))

(assert (= (and d!1147084 c!673951) b!3872979))

(assert (= (and d!1147084 (not c!673951)) b!3872980))

(assert (= (and b!3872979 res!1568869) b!3872978))

(declare-fun m!4430197 () Bool)

(assert (=> b!3872978 m!4430197))

(declare-fun m!4430199 () Bool)

(assert (=> b!3872979 m!4430199))

(assert (=> b!3872979 m!4429645))

(declare-fun m!4430201 () Bool)

(assert (=> d!1147084 m!4430201))

(declare-fun m!4430203 () Bool)

(assert (=> d!1147084 m!4430203))

(declare-fun m!4430205 () Bool)

(assert (=> b!3872982 m!4430205))

(assert (=> bm!282745 d!1147084))

(declare-fun d!1147086 () Bool)

(declare-fun res!1568870 () Bool)

(declare-fun e!2395631 () Bool)

(assert (=> d!1147086 (=> (not res!1568870) (not e!2395631))))

(assert (=> d!1147086 (= res!1568870 (not (isEmpty!24412 (originalCharacters!6982 (h!46562 prefixTokens!80)))))))

(assert (=> d!1147086 (= (inv!55301 (h!46562 prefixTokens!80)) e!2395631)))

(declare-fun b!3872983 () Bool)

(declare-fun res!1568871 () Bool)

(assert (=> b!3872983 (=> (not res!1568871) (not e!2395631))))

(assert (=> b!3872983 (= res!1568871 (= (originalCharacters!6982 (h!46562 prefixTokens!80)) (list!15304 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (value!202521 (h!46562 prefixTokens!80))))))))

(declare-fun b!3872984 () Bool)

(assert (=> b!3872984 (= e!2395631 (= (size!30921 (h!46562 prefixTokens!80)) (size!30922 (originalCharacters!6982 (h!46562 prefixTokens!80)))))))

(assert (= (and d!1147086 res!1568870) b!3872983))

(assert (= (and b!3872983 res!1568871) b!3872984))

(declare-fun b_lambda!113109 () Bool)

(assert (=> (not b_lambda!113109) (not b!3872983)))

(declare-fun tb!224675 () Bool)

(declare-fun t!314642 () Bool)

(assert (=> (and b!3872596 (= (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314642) tb!224675))

(declare-fun b!3872985 () Bool)

(declare-fun e!2395632 () Bool)

(declare-fun tp!1174145 () Bool)

(assert (=> b!3872985 (= e!2395632 (and (inv!55303 (c!673875 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (value!202521 (h!46562 prefixTokens!80))))) tp!1174145))))

(declare-fun result!273656 () Bool)

(assert (=> tb!224675 (= result!273656 (and (inv!55304 (dynLambda!17699 (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (value!202521 (h!46562 prefixTokens!80)))) e!2395632))))

(assert (= tb!224675 b!3872985))

(declare-fun m!4430207 () Bool)

(assert (=> b!3872985 m!4430207))

(declare-fun m!4430209 () Bool)

(assert (=> tb!224675 m!4430209))

(assert (=> b!3872983 t!314642))

(declare-fun b_and!290337 () Bool)

(assert (= b_and!290331 (and (=> t!314642 result!273656) b_and!290337)))

(declare-fun t!314644 () Bool)

(declare-fun tb!224677 () Bool)

(assert (=> (and b!3872597 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314644) tb!224677))

(declare-fun result!273658 () Bool)

(assert (= result!273658 result!273656))

(assert (=> b!3872983 t!314644))

(declare-fun b_and!290339 () Bool)

(assert (= b_and!290333 (and (=> t!314644 result!273658) b_and!290339)))

(declare-fun t!314646 () Bool)

(declare-fun tb!224679 () Bool)

(assert (=> (and b!3872630 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314646) tb!224679))

(declare-fun result!273660 () Bool)

(assert (= result!273660 result!273656))

(assert (=> b!3872983 t!314646))

(declare-fun b_and!290341 () Bool)

(assert (= b_and!290335 (and (=> t!314646 result!273660) b_and!290341)))

(declare-fun m!4430211 () Bool)

(assert (=> d!1147086 m!4430211))

(declare-fun m!4430213 () Bool)

(assert (=> b!3872983 m!4430213))

(assert (=> b!3872983 m!4430213))

(declare-fun m!4430215 () Bool)

(assert (=> b!3872983 m!4430215))

(declare-fun m!4430217 () Bool)

(assert (=> b!3872984 m!4430217))

(assert (=> b!3872595 d!1147086))

(declare-fun d!1147088 () Bool)

(assert (=> d!1147088 (isPrefix!3481 prefix!426 (++!10522 prefix!426 suffix!1176))))

(declare-fun lt!1348774 () Unit!59009)

(assert (=> d!1147088 (= lt!1348774 (choose!22908 prefix!426 suffix!1176))))

(assert (=> d!1147088 (= (lemmaConcatTwoListThenFirstIsPrefix!2344 prefix!426 suffix!1176) lt!1348774)))

(declare-fun bs!583543 () Bool)

(assert (= bs!583543 d!1147088))

(assert (=> bs!583543 m!4429663))

(assert (=> bs!583543 m!4429663))

(declare-fun m!4430219 () Bool)

(assert (=> bs!583543 m!4430219))

(declare-fun m!4430221 () Bool)

(assert (=> bs!583543 m!4430221))

(assert (=> b!3872616 d!1147088))

(declare-fun b!3872988 () Bool)

(declare-fun e!2395634 () Bool)

(assert (=> b!3872988 (= e!2395634 (isPrefix!3481 (tail!5920 prefix!426) (tail!5920 lt!1348555)))))

(declare-fun b!3872986 () Bool)

(declare-fun e!2395633 () Bool)

(assert (=> b!3872986 (= e!2395633 e!2395634)))

(declare-fun res!1568875 () Bool)

(assert (=> b!3872986 (=> (not res!1568875) (not e!2395634))))

(assert (=> b!3872986 (= res!1568875 (not ((_ is Nil!41141) lt!1348555)))))

(declare-fun b!3872987 () Bool)

(declare-fun res!1568874 () Bool)

(assert (=> b!3872987 (=> (not res!1568874) (not e!2395634))))

(assert (=> b!3872987 (= res!1568874 (= (head!8203 prefix!426) (head!8203 lt!1348555)))))

(declare-fun b!3872989 () Bool)

(declare-fun e!2395635 () Bool)

(assert (=> b!3872989 (= e!2395635 (>= (size!30922 lt!1348555) (size!30922 prefix!426)))))

(declare-fun d!1147090 () Bool)

(assert (=> d!1147090 e!2395635))

(declare-fun res!1568873 () Bool)

(assert (=> d!1147090 (=> res!1568873 e!2395635)))

(declare-fun lt!1348775 () Bool)

(assert (=> d!1147090 (= res!1568873 (not lt!1348775))))

(assert (=> d!1147090 (= lt!1348775 e!2395633)))

(declare-fun res!1568872 () Bool)

(assert (=> d!1147090 (=> res!1568872 e!2395633)))

(assert (=> d!1147090 (= res!1568872 ((_ is Nil!41141) prefix!426))))

(assert (=> d!1147090 (= (isPrefix!3481 prefix!426 lt!1348555) lt!1348775)))

(assert (= (and d!1147090 (not res!1568872)) b!3872986))

(assert (= (and b!3872986 res!1568875) b!3872987))

(assert (= (and b!3872987 res!1568874) b!3872988))

(assert (= (and d!1147090 (not res!1568873)) b!3872989))

(assert (=> b!3872988 m!4429951))

(assert (=> b!3872988 m!4430035))

(assert (=> b!3872988 m!4429951))

(assert (=> b!3872988 m!4430035))

(declare-fun m!4430223 () Bool)

(assert (=> b!3872988 m!4430223))

(declare-fun m!4430225 () Bool)

(assert (=> b!3872987 m!4430225))

(declare-fun m!4430227 () Bool)

(assert (=> b!3872987 m!4430227))

(assert (=> b!3872989 m!4429641))

(assert (=> b!3872989 m!4429595))

(assert (=> b!3872616 d!1147090))

(declare-fun d!1147092 () Bool)

(assert (=> d!1147092 (= lt!1348575 prefix!426)))

(declare-fun lt!1348778 () Unit!59009)

(declare-fun choose!22922 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> d!1147092 (= lt!1348778 (choose!22922 lt!1348575 prefix!426 lt!1348555))))

(assert (=> d!1147092 (isPrefix!3481 lt!1348575 lt!1348555)))

(assert (=> d!1147092 (= (lemmaIsPrefixSameLengthThenSameList!733 lt!1348575 prefix!426 lt!1348555) lt!1348778)))

(declare-fun bs!583544 () Bool)

(assert (= bs!583544 d!1147092))

(declare-fun m!4430229 () Bool)

(assert (=> bs!583544 m!4430229))

(assert (=> bs!583544 m!4429993))

(assert (=> b!3872616 d!1147092))

(declare-fun d!1147094 () Bool)

(assert (=> d!1147094 (= (_2!23317 (v!39097 lt!1348557)) suffix!1176)))

(declare-fun lt!1348779 () Unit!59009)

(assert (=> d!1147094 (= lt!1348779 (choose!22913 lt!1348575 (_2!23317 (v!39097 lt!1348557)) prefix!426 suffix!1176 lt!1348555))))

(assert (=> d!1147094 (isPrefix!3481 lt!1348575 lt!1348555)))

(assert (=> d!1147094 (= (lemmaSamePrefixThenSameSuffix!1702 lt!1348575 (_2!23317 (v!39097 lt!1348557)) prefix!426 suffix!1176 lt!1348555) lt!1348779)))

(declare-fun bs!583545 () Bool)

(assert (= bs!583545 d!1147094))

(declare-fun m!4430231 () Bool)

(assert (=> bs!583545 m!4430231))

(assert (=> bs!583545 m!4429993))

(assert (=> b!3872616 d!1147094))

(assert (=> b!3872617 d!1147090))

(assert (=> b!3872617 d!1147088))

(declare-fun d!1147096 () Bool)

(declare-fun lt!1348780 () Int)

(assert (=> d!1147096 (>= lt!1348780 0)))

(declare-fun e!2395636 () Int)

(assert (=> d!1147096 (= lt!1348780 e!2395636)))

(declare-fun c!673953 () Bool)

(assert (=> d!1147096 (= c!673953 ((_ is Nil!41141) prefix!426))))

(assert (=> d!1147096 (= (size!30922 prefix!426) lt!1348780)))

(declare-fun b!3872990 () Bool)

(assert (=> b!3872990 (= e!2395636 0)))

(declare-fun b!3872991 () Bool)

(assert (=> b!3872991 (= e!2395636 (+ 1 (size!30922 (t!314620 prefix!426))))))

(assert (= (and d!1147096 c!673953) b!3872990))

(assert (= (and d!1147096 (not c!673953)) b!3872991))

(declare-fun m!4430233 () Bool)

(assert (=> b!3872991 m!4430233))

(assert (=> b!3872617 d!1147096))

(declare-fun d!1147098 () Bool)

(assert (=> d!1147098 (isPrefix!3481 lt!1348575 prefix!426)))

(declare-fun lt!1348783 () Unit!59009)

(declare-fun choose!22925 (List!41265 List!41265 List!41265) Unit!59009)

(assert (=> d!1147098 (= lt!1348783 (choose!22925 prefix!426 lt!1348575 lt!1348555))))

(assert (=> d!1147098 (isPrefix!3481 prefix!426 lt!1348555)))

(assert (=> d!1147098 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!231 prefix!426 lt!1348575 lt!1348555) lt!1348783)))

(declare-fun bs!583546 () Bool)

(assert (= bs!583546 d!1147098))

(assert (=> bs!583546 m!4429601))

(declare-fun m!4430235 () Bool)

(assert (=> bs!583546 m!4430235))

(assert (=> bs!583546 m!4429593))

(assert (=> b!3872617 d!1147098))

(declare-fun b!3872994 () Bool)

(declare-fun e!2395638 () Bool)

(assert (=> b!3872994 (= e!2395638 (isPrefix!3481 (tail!5920 lt!1348575) (tail!5920 prefix!426)))))

(declare-fun b!3872992 () Bool)

(declare-fun e!2395637 () Bool)

(assert (=> b!3872992 (= e!2395637 e!2395638)))

(declare-fun res!1568879 () Bool)

(assert (=> b!3872992 (=> (not res!1568879) (not e!2395638))))

(assert (=> b!3872992 (= res!1568879 (not ((_ is Nil!41141) prefix!426)))))

(declare-fun b!3872993 () Bool)

(declare-fun res!1568878 () Bool)

(assert (=> b!3872993 (=> (not res!1568878) (not e!2395638))))

(assert (=> b!3872993 (= res!1568878 (= (head!8203 lt!1348575) (head!8203 prefix!426)))))

(declare-fun b!3872995 () Bool)

(declare-fun e!2395639 () Bool)

(assert (=> b!3872995 (= e!2395639 (>= (size!30922 prefix!426) (size!30922 lt!1348575)))))

(declare-fun d!1147100 () Bool)

(assert (=> d!1147100 e!2395639))

(declare-fun res!1568877 () Bool)

(assert (=> d!1147100 (=> res!1568877 e!2395639)))

(declare-fun lt!1348784 () Bool)

(assert (=> d!1147100 (= res!1568877 (not lt!1348784))))

(assert (=> d!1147100 (= lt!1348784 e!2395637)))

(declare-fun res!1568876 () Bool)

(assert (=> d!1147100 (=> res!1568876 e!2395637)))

(assert (=> d!1147100 (= res!1568876 ((_ is Nil!41141) lt!1348575))))

(assert (=> d!1147100 (= (isPrefix!3481 lt!1348575 prefix!426) lt!1348784)))

(assert (= (and d!1147100 (not res!1568876)) b!3872992))

(assert (= (and b!3872992 res!1568879) b!3872993))

(assert (= (and b!3872993 res!1568878) b!3872994))

(assert (= (and d!1147100 (not res!1568877)) b!3872995))

(assert (=> b!3872994 m!4429995))

(assert (=> b!3872994 m!4429951))

(assert (=> b!3872994 m!4429995))

(assert (=> b!3872994 m!4429951))

(declare-fun m!4430237 () Bool)

(assert (=> b!3872994 m!4430237))

(assert (=> b!3872993 m!4430001))

(assert (=> b!3872993 m!4430225))

(assert (=> b!3872995 m!4429595))

(assert (=> b!3872995 m!4429561))

(assert (=> b!3872617 d!1147100))

(declare-fun b!3872996 () Bool)

(declare-fun e!2395642 () Bool)

(assert (=> b!3872996 (= e!2395642 (inv!17 (value!202521 (h!46562 prefixTokens!80))))))

(declare-fun d!1147102 () Bool)

(declare-fun c!673954 () Bool)

(assert (=> d!1147102 (= c!673954 ((_ is IntegerValue!19836) (value!202521 (h!46562 prefixTokens!80))))))

(declare-fun e!2395641 () Bool)

(assert (=> d!1147102 (= (inv!21 (value!202521 (h!46562 prefixTokens!80))) e!2395641)))

(declare-fun b!3872997 () Bool)

(assert (=> b!3872997 (= e!2395641 e!2395642)))

(declare-fun c!673955 () Bool)

(assert (=> b!3872997 (= c!673955 ((_ is IntegerValue!19837) (value!202521 (h!46562 prefixTokens!80))))))

(declare-fun b!3872998 () Bool)

(assert (=> b!3872998 (= e!2395641 (inv!16 (value!202521 (h!46562 prefixTokens!80))))))

(declare-fun b!3872999 () Bool)

(declare-fun res!1568880 () Bool)

(declare-fun e!2395640 () Bool)

(assert (=> b!3872999 (=> res!1568880 e!2395640)))

(assert (=> b!3872999 (= res!1568880 (not ((_ is IntegerValue!19838) (value!202521 (h!46562 prefixTokens!80)))))))

(assert (=> b!3872999 (= e!2395642 e!2395640)))

(declare-fun b!3873000 () Bool)

(assert (=> b!3873000 (= e!2395640 (inv!15 (value!202521 (h!46562 prefixTokens!80))))))

(assert (= (and d!1147102 c!673954) b!3872998))

(assert (= (and d!1147102 (not c!673954)) b!3872997))

(assert (= (and b!3872997 c!673955) b!3872996))

(assert (= (and b!3872997 (not c!673955)) b!3872999))

(assert (= (and b!3872999 (not res!1568880)) b!3873000))

(declare-fun m!4430239 () Bool)

(assert (=> b!3872996 m!4430239))

(declare-fun m!4430241 () Bool)

(assert (=> b!3872998 m!4430241))

(declare-fun m!4430243 () Bool)

(assert (=> b!3873000 m!4430243))

(assert (=> b!3872618 d!1147102))

(declare-fun b!3873014 () Bool)

(declare-fun b_free!104617 () Bool)

(declare-fun b_next!105321 () Bool)

(assert (=> b!3873014 (= b_free!104617 (not b_next!105321))))

(declare-fun tb!224681 () Bool)

(declare-fun t!314648 () Bool)

(assert (=> (and b!3873014 (= (toValue!8810 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314648) tb!224681))

(declare-fun result!273664 () Bool)

(assert (= result!273664 result!273642))

(assert (=> d!1147032 t!314648))

(declare-fun tp!1174156 () Bool)

(declare-fun b_and!290343 () Bool)

(assert (=> b!3873014 (= tp!1174156 (and (=> t!314648 result!273664) b_and!290343))))

(declare-fun b_free!104619 () Bool)

(declare-fun b_next!105323 () Bool)

(assert (=> b!3873014 (= b_free!104619 (not b_next!105323))))

(declare-fun t!314650 () Bool)

(declare-fun tb!224683 () Bool)

(assert (=> (and b!3873014 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314650) tb!224683))

(declare-fun result!273666 () Bool)

(assert (= result!273666 result!273634))

(assert (=> b!3872872 t!314650))

(declare-fun t!314652 () Bool)

(declare-fun tb!224685 () Bool)

(assert (=> (and b!3873014 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314652) tb!224685))

(declare-fun result!273668 () Bool)

(assert (= result!273668 result!273650))

(assert (=> d!1147048 t!314652))

(declare-fun t!314654 () Bool)

(declare-fun tb!224687 () Bool)

(assert (=> (and b!3873014 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314654) tb!224687))

(declare-fun result!273670 () Bool)

(assert (= result!273670 result!273656))

(assert (=> b!3872983 t!314654))

(declare-fun tp!1174158 () Bool)

(declare-fun b_and!290345 () Bool)

(assert (=> b!3873014 (= tp!1174158 (and (=> t!314650 result!273666) (=> t!314652 result!273668) (=> t!314654 result!273670) b_and!290345))))

(declare-fun e!2395657 () Bool)

(declare-fun b!3873013 () Bool)

(declare-fun tp!1174157 () Bool)

(declare-fun e!2395658 () Bool)

(assert (=> b!3873013 (= e!2395657 (and tp!1174157 (inv!55298 (tag!7242 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (inv!55302 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) e!2395658))))

(assert (=> b!3873014 (= e!2395658 (and tp!1174156 tp!1174158))))

(declare-fun e!2395660 () Bool)

(assert (=> b!3872619 (= tp!1174135 e!2395660)))

(declare-fun tp!1174160 () Bool)

(declare-fun b!3873012 () Bool)

(declare-fun e!2395659 () Bool)

(assert (=> b!3873012 (= e!2395659 (and (inv!21 (value!202521 (h!46562 (t!314621 suffixTokens!72)))) e!2395657 tp!1174160))))

(declare-fun b!3873011 () Bool)

(declare-fun tp!1174159 () Bool)

(assert (=> b!3873011 (= e!2395660 (and (inv!55301 (h!46562 (t!314621 suffixTokens!72))) e!2395659 tp!1174159))))

(assert (= b!3873013 b!3873014))

(assert (= b!3873012 b!3873013))

(assert (= b!3873011 b!3873012))

(assert (= (and b!3872619 ((_ is Cons!41142) (t!314621 suffixTokens!72))) b!3873011))

(declare-fun m!4430245 () Bool)

(assert (=> b!3873013 m!4430245))

(declare-fun m!4430247 () Bool)

(assert (=> b!3873013 m!4430247))

(declare-fun m!4430249 () Bool)

(assert (=> b!3873012 m!4430249))

(declare-fun m!4430251 () Bool)

(assert (=> b!3873011 m!4430251))

(declare-fun e!2395663 () Bool)

(assert (=> b!3872611 (= tp!1174130 e!2395663)))

(declare-fun b!3873026 () Bool)

(declare-fun tp!1174171 () Bool)

(declare-fun tp!1174174 () Bool)

(assert (=> b!3873026 (= e!2395663 (and tp!1174171 tp!1174174))))

(declare-fun b!3873025 () Bool)

(assert (=> b!3873025 (= e!2395663 tp_is_empty!19545)))

(declare-fun b!3873028 () Bool)

(declare-fun tp!1174172 () Bool)

(declare-fun tp!1174175 () Bool)

(assert (=> b!3873028 (= e!2395663 (and tp!1174172 tp!1174175))))

(declare-fun b!3873027 () Bool)

(declare-fun tp!1174173 () Bool)

(assert (=> b!3873027 (= e!2395663 tp!1174173)))

(assert (= (and b!3872611 ((_ is ElementMatch!11287) (regex!6382 (h!46563 rules!2768)))) b!3873025))

(assert (= (and b!3872611 ((_ is Concat!17900) (regex!6382 (h!46563 rules!2768)))) b!3873026))

(assert (= (and b!3872611 ((_ is Star!11287) (regex!6382 (h!46563 rules!2768)))) b!3873027))

(assert (= (and b!3872611 ((_ is Union!11287) (regex!6382 (h!46563 rules!2768)))) b!3873028))

(declare-fun b!3873033 () Bool)

(declare-fun e!2395666 () Bool)

(declare-fun tp!1174178 () Bool)

(assert (=> b!3873033 (= e!2395666 (and tp_is_empty!19545 tp!1174178))))

(assert (=> b!3872591 (= tp!1174125 e!2395666)))

(assert (= (and b!3872591 ((_ is Cons!41141) (t!314620 suffixResult!91))) b!3873033))

(declare-fun b!3873044 () Bool)

(declare-fun b_free!104621 () Bool)

(declare-fun b_next!105325 () Bool)

(assert (=> b!3873044 (= b_free!104621 (not b_next!105325))))

(declare-fun tb!224689 () Bool)

(declare-fun t!314656 () Bool)

(assert (=> (and b!3873044 (= (toValue!8810 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314656) tb!224689))

(declare-fun result!273678 () Bool)

(assert (= result!273678 result!273642))

(assert (=> d!1147032 t!314656))

(declare-fun tp!1174188 () Bool)

(declare-fun b_and!290347 () Bool)

(assert (=> b!3873044 (= tp!1174188 (and (=> t!314656 result!273678) b_and!290347))))

(declare-fun b_free!104623 () Bool)

(declare-fun b_next!105327 () Bool)

(assert (=> b!3873044 (= b_free!104623 (not b_next!105327))))

(declare-fun tb!224691 () Bool)

(declare-fun t!314658 () Bool)

(assert (=> (and b!3873044 (= (toChars!8669 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314658) tb!224691))

(declare-fun result!273680 () Bool)

(assert (= result!273680 result!273634))

(assert (=> b!3872872 t!314658))

(declare-fun t!314660 () Bool)

(declare-fun tb!224693 () Bool)

(assert (=> (and b!3873044 (= (toChars!8669 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314660) tb!224693))

(declare-fun result!273682 () Bool)

(assert (= result!273682 result!273650))

(assert (=> d!1147048 t!314660))

(declare-fun t!314662 () Bool)

(declare-fun tb!224695 () Bool)

(assert (=> (and b!3873044 (= (toChars!8669 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314662) tb!224695))

(declare-fun result!273684 () Bool)

(assert (= result!273684 result!273656))

(assert (=> b!3872983 t!314662))

(declare-fun b_and!290349 () Bool)

(declare-fun tp!1174189 () Bool)

(assert (=> b!3873044 (= tp!1174189 (and (=> t!314658 result!273680) (=> t!314660 result!273682) (=> t!314662 result!273684) b_and!290349))))

(declare-fun e!2395678 () Bool)

(assert (=> b!3873044 (= e!2395678 (and tp!1174188 tp!1174189))))

(declare-fun e!2395676 () Bool)

(declare-fun tp!1174187 () Bool)

(declare-fun b!3873043 () Bool)

(assert (=> b!3873043 (= e!2395676 (and tp!1174187 (inv!55298 (tag!7242 (h!46563 (t!314622 rules!2768)))) (inv!55302 (transformation!6382 (h!46563 (t!314622 rules!2768)))) e!2395678))))

(declare-fun b!3873042 () Bool)

(declare-fun e!2395675 () Bool)

(declare-fun tp!1174190 () Bool)

(assert (=> b!3873042 (= e!2395675 (and e!2395676 tp!1174190))))

(assert (=> b!3872592 (= tp!1174128 e!2395675)))

(assert (= b!3873043 b!3873044))

(assert (= b!3873042 b!3873043))

(assert (= (and b!3872592 ((_ is Cons!41143) (t!314622 rules!2768))) b!3873042))

(declare-fun m!4430253 () Bool)

(assert (=> b!3873043 m!4430253))

(declare-fun m!4430255 () Bool)

(assert (=> b!3873043 m!4430255))

(declare-fun e!2395679 () Bool)

(assert (=> b!3872604 (= tp!1174131 e!2395679)))

(declare-fun b!3873046 () Bool)

(declare-fun tp!1174191 () Bool)

(declare-fun tp!1174194 () Bool)

(assert (=> b!3873046 (= e!2395679 (and tp!1174191 tp!1174194))))

(declare-fun b!3873045 () Bool)

(assert (=> b!3873045 (= e!2395679 tp_is_empty!19545)))

(declare-fun b!3873048 () Bool)

(declare-fun tp!1174192 () Bool)

(declare-fun tp!1174195 () Bool)

(assert (=> b!3873048 (= e!2395679 (and tp!1174192 tp!1174195))))

(declare-fun b!3873047 () Bool)

(declare-fun tp!1174193 () Bool)

(assert (=> b!3873047 (= e!2395679 tp!1174193)))

(assert (= (and b!3872604 ((_ is ElementMatch!11287) (regex!6382 (rule!9272 (h!46562 prefixTokens!80))))) b!3873045))

(assert (= (and b!3872604 ((_ is Concat!17900) (regex!6382 (rule!9272 (h!46562 prefixTokens!80))))) b!3873046))

(assert (= (and b!3872604 ((_ is Star!11287) (regex!6382 (rule!9272 (h!46562 prefixTokens!80))))) b!3873047))

(assert (= (and b!3872604 ((_ is Union!11287) (regex!6382 (rule!9272 (h!46562 prefixTokens!80))))) b!3873048))

(declare-fun b!3873049 () Bool)

(declare-fun e!2395680 () Bool)

(declare-fun tp!1174196 () Bool)

(assert (=> b!3873049 (= e!2395680 (and tp_is_empty!19545 tp!1174196))))

(assert (=> b!3872625 (= tp!1174126 e!2395680)))

(assert (= (and b!3872625 ((_ is Cons!41141) (t!314620 prefix!426))) b!3873049))

(declare-fun e!2395681 () Bool)

(assert (=> b!3872605 (= tp!1174124 e!2395681)))

(declare-fun b!3873051 () Bool)

(declare-fun tp!1174197 () Bool)

(declare-fun tp!1174200 () Bool)

(assert (=> b!3873051 (= e!2395681 (and tp!1174197 tp!1174200))))

(declare-fun b!3873050 () Bool)

(assert (=> b!3873050 (= e!2395681 tp_is_empty!19545)))

(declare-fun b!3873053 () Bool)

(declare-fun tp!1174198 () Bool)

(declare-fun tp!1174201 () Bool)

(assert (=> b!3873053 (= e!2395681 (and tp!1174198 tp!1174201))))

(declare-fun b!3873052 () Bool)

(declare-fun tp!1174199 () Bool)

(assert (=> b!3873052 (= e!2395681 tp!1174199)))

(assert (= (and b!3872605 ((_ is ElementMatch!11287) (regex!6382 (rule!9272 (h!46562 suffixTokens!72))))) b!3873050))

(assert (= (and b!3872605 ((_ is Concat!17900) (regex!6382 (rule!9272 (h!46562 suffixTokens!72))))) b!3873051))

(assert (= (and b!3872605 ((_ is Star!11287) (regex!6382 (rule!9272 (h!46562 suffixTokens!72))))) b!3873052))

(assert (= (and b!3872605 ((_ is Union!11287) (regex!6382 (rule!9272 (h!46562 suffixTokens!72))))) b!3873053))

(declare-fun b!3873057 () Bool)

(declare-fun b_free!104625 () Bool)

(declare-fun b_next!105329 () Bool)

(assert (=> b!3873057 (= b_free!104625 (not b_next!105329))))

(declare-fun t!314664 () Bool)

(declare-fun tb!224697 () Bool)

(assert (=> (and b!3873057 (= (toValue!8810 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toValue!8810 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314664) tb!224697))

(declare-fun result!273686 () Bool)

(assert (= result!273686 result!273642))

(assert (=> d!1147032 t!314664))

(declare-fun tp!1174202 () Bool)

(declare-fun b_and!290351 () Bool)

(assert (=> b!3873057 (= tp!1174202 (and (=> t!314664 result!273686) b_and!290351))))

(declare-fun b_free!104627 () Bool)

(declare-fun b_next!105331 () Bool)

(assert (=> b!3873057 (= b_free!104627 (not b_next!105331))))

(declare-fun tb!224699 () Bool)

(declare-fun t!314666 () Bool)

(assert (=> (and b!3873057 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72))))) t!314666) tb!224699))

(declare-fun result!273688 () Bool)

(assert (= result!273688 result!273634))

(assert (=> b!3872872 t!314666))

(declare-fun tb!224701 () Bool)

(declare-fun t!314668 () Bool)

(assert (=> (and b!3873057 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toChars!8669 (transformation!6382 (rule!9272 (_1!23317 (v!39097 lt!1348557)))))) t!314668) tb!224701))

(declare-fun result!273690 () Bool)

(assert (= result!273690 result!273650))

(assert (=> d!1147048 t!314668))

(declare-fun t!314670 () Bool)

(declare-fun tb!224703 () Bool)

(assert (=> (and b!3873057 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80))))) t!314670) tb!224703))

(declare-fun result!273692 () Bool)

(assert (= result!273692 result!273656))

(assert (=> b!3872983 t!314670))

(declare-fun b_and!290353 () Bool)

(declare-fun tp!1174204 () Bool)

(assert (=> b!3873057 (= tp!1174204 (and (=> t!314666 result!273688) (=> t!314668 result!273690) (=> t!314670 result!273692) b_and!290353))))

(declare-fun b!3873056 () Bool)

(declare-fun e!2395685 () Bool)

(declare-fun tp!1174203 () Bool)

(declare-fun e!2395684 () Bool)

(assert (=> b!3873056 (= e!2395684 (and tp!1174203 (inv!55298 (tag!7242 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (inv!55302 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) e!2395685))))

(assert (=> b!3873057 (= e!2395685 (and tp!1174202 tp!1174204))))

(declare-fun e!2395687 () Bool)

(assert (=> b!3872595 (= tp!1174129 e!2395687)))

(declare-fun tp!1174206 () Bool)

(declare-fun b!3873055 () Bool)

(declare-fun e!2395686 () Bool)

(assert (=> b!3873055 (= e!2395686 (and (inv!21 (value!202521 (h!46562 (t!314621 prefixTokens!80)))) e!2395684 tp!1174206))))

(declare-fun tp!1174205 () Bool)

(declare-fun b!3873054 () Bool)

(assert (=> b!3873054 (= e!2395687 (and (inv!55301 (h!46562 (t!314621 prefixTokens!80))) e!2395686 tp!1174205))))

(assert (= b!3873056 b!3873057))

(assert (= b!3873055 b!3873056))

(assert (= b!3873054 b!3873055))

(assert (= (and b!3872595 ((_ is Cons!41142) (t!314621 prefixTokens!80))) b!3873054))

(declare-fun m!4430257 () Bool)

(assert (=> b!3873056 m!4430257))

(declare-fun m!4430259 () Bool)

(assert (=> b!3873056 m!4430259))

(declare-fun m!4430261 () Bool)

(assert (=> b!3873055 m!4430261))

(declare-fun m!4430263 () Bool)

(assert (=> b!3873054 m!4430263))

(declare-fun b!3873062 () Bool)

(declare-fun e!2395690 () Bool)

(declare-fun tp!1174207 () Bool)

(assert (=> b!3873062 (= e!2395690 (and tp_is_empty!19545 tp!1174207))))

(assert (=> b!3872607 (= tp!1174140 e!2395690)))

(assert (= (and b!3872607 ((_ is Cons!41141) (t!314620 suffix!1176))) b!3873062))

(declare-fun b!3873065 () Bool)

(declare-fun e!2395693 () Bool)

(declare-fun tp!1174208 () Bool)

(assert (=> b!3873065 (= e!2395693 (and tp_is_empty!19545 tp!1174208))))

(assert (=> b!3872586 (= tp!1174136 e!2395693)))

(assert (= (and b!3872586 ((_ is Cons!41141) (originalCharacters!6982 (h!46562 suffixTokens!72)))) b!3873065))

(declare-fun b!3873066 () Bool)

(declare-fun e!2395694 () Bool)

(declare-fun tp!1174209 () Bool)

(assert (=> b!3873066 (= e!2395694 (and tp_is_empty!19545 tp!1174209))))

(assert (=> b!3872618 (= tp!1174132 e!2395694)))

(assert (= (and b!3872618 ((_ is Cons!41141) (originalCharacters!6982 (h!46562 prefixTokens!80)))) b!3873066))

(declare-fun b_lambda!113111 () Bool)

(assert (= b_lambda!113109 (or (and b!3872630 b_free!104615 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))))) (and b!3873014 b_free!104619 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))))) (and b!3873057 b_free!104627 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))))) (and b!3872596 b_free!104607 (= (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))))) (and b!3873044 b_free!104623 (= (toChars!8669 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))))) (and b!3872597 b_free!104611) b_lambda!113111)))

(declare-fun b_lambda!113113 () Bool)

(assert (= b_lambda!113103 (or (and b!3873057 b_free!104627 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 prefixTokens!80))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))))) (and b!3872597 b_free!104611 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 prefixTokens!80)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))))) (and b!3872630 b_free!104615) (and b!3873044 b_free!104623 (= (toChars!8669 (transformation!6382 (h!46563 (t!314622 rules!2768)))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))))) (and b!3873014 b_free!104619 (= (toChars!8669 (transformation!6382 (rule!9272 (h!46562 (t!314621 suffixTokens!72))))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))))) (and b!3872596 b_free!104607 (= (toChars!8669 (transformation!6382 (h!46563 rules!2768))) (toChars!8669 (transformation!6382 (rule!9272 (h!46562 suffixTokens!72)))))) b_lambda!113113)))

(check-sat (not b!3873053) (not b!3873026) (not d!1146932) (not b!3872698) (not b!3872918) (not b!3872924) (not b!3873011) (not b!3872647) (not b!3873051) (not b!3872863) (not b!3872662) (not b!3872974) (not b!3872994) b_and!290343 (not d!1146926) (not d!1147016) (not b!3873033) (not d!1146940) (not b!3872977) (not d!1147058) (not d!1147092) (not b!3872911) (not b!3872709) (not b!3872873) b_and!290339 (not b!3872970) (not b!3872774) (not d!1147056) (not b!3872982) (not b!3872717) (not d!1147038) (not d!1147044) (not b!3872663) (not b!3872862) b_and!290347 (not b!3872947) (not b!3873042) (not b!3872921) (not b_lambda!113111) (not b!3872679) (not b!3873052) (not b_lambda!113105) (not b!3872861) (not b!3872983) (not b!3872836) (not d!1146964) b_and!290353 (not d!1147052) (not d!1146920) (not b_lambda!113107) (not d!1147046) (not d!1147030) (not b!3872988) (not b_next!105317) (not b!3872935) (not b!3872715) (not b_next!105313) (not b!3872701) (not b!3872693) (not b!3872985) b_and!290351 (not d!1147088) (not b_next!105331) (not b!3872858) (not b!3873028) (not b!3872998) (not tb!224675) (not d!1146956) (not b!3873062) (not b!3872996) (not b!3873048) (not b!3872864) (not b_lambda!113113) (not b!3872775) (not b!3873000) (not b!3873055) (not b!3872938) (not b!3872816) (not tb!224669) (not b!3872860) (not b!3873056) (not b!3872769) (not b!3872708) (not d!1146960) (not b_next!105319) (not d!1146934) (not d!1147040) (not b!3872770) (not b!3872712) (not d!1146996) (not b!3873065) (not d!1146914) (not b!3872892) (not b!3872915) (not b_next!105329) (not d!1147086) (not d!1147008) (not b!3872867) (not b!3872889) (not b!3872650) (not b!3872987) (not b!3872937) (not b!3872664) (not b!3872920) (not b!3872773) (not b!3872700) (not b!3872995) (not b!3872878) (not b_next!105327) (not b!3872833) (not b!3872971) (not d!1146994) (not b!3872856) (not b_next!105309) (not b!3872854) (not b!3872646) (not b!3872768) (not b!3873066) (not d!1147020) (not b!3873049) (not d!1146930) (not b!3872942) (not b!3872950) (not d!1147036) (not b!3873012) (not b!3872972) (not b!3872984) (not b!3873043) (not d!1147098) (not d!1147084) (not d!1146916) (not d!1146978) (not b!3872989) (not b!3872711) (not b!3872676) (not b!3872884) (not b!3873054) (not d!1146938) (not b!3872914) (not b!3872893) (not d!1147048) (not b_next!105321) b_and!290341 (not b!3872716) (not b!3872705) (not d!1146970) (not d!1147024) (not tb!224663) (not b!3872704) (not b_next!105325) (not b!3872837) (not b_next!105323) (not b!3872643) (not d!1147022) (not d!1147050) (not d!1146948) (not b!3872694) (not d!1146918) (not d!1146942) b_and!290329 (not d!1147068) (not b!3872675) (not b!3872978) b_and!290345 (not d!1147078) (not b!3872993) (not b!3872723) (not b!3872991) (not b!3872975) (not b!3872651) (not b!3872772) (not b!3872979) (not tb!224657) (not d!1147064) (not b!3872771) (not b!3872682) b_and!290327 (not d!1147076) (not b!3873027) (not b!3872815) (not d!1147054) (not b!3872894) (not b!3872642) (not b!3873046) (not b!3872976) (not b!3872681) (not b!3873013) (not b!3872973) (not d!1147066) (not d!1146952) (not bm!282751) (not b_next!105315) (not b_next!105311) (not d!1146954) b_and!290349 tp_is_empty!19545 (not d!1147094) b_and!290325 (not b!3872872) (not b!3872879) (not d!1146950) (not b!3872725) (not b!3872941) (not b!3873047) b_and!290337)
(check-sat b_and!290343 b_and!290339 b_and!290347 b_and!290353 (not b_next!105317) (not b_next!105331) (not b_next!105319) (not b_next!105329) (not b_next!105327) (not b_next!105309) b_and!290327 b_and!290349 (not b_next!105313) b_and!290351 (not b_next!105321) b_and!290341 (not b_next!105325) (not b_next!105323) b_and!290329 b_and!290345 (not b_next!105311) (not b_next!105315) b_and!290325 b_and!290337)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359780 () Bool)

(assert start!359780)

(declare-fun b!3842553 () Bool)

(declare-fun b_free!102593 () Bool)

(declare-fun b_next!103297 () Bool)

(assert (=> b!3842553 (= b_free!102593 (not b_next!103297))))

(declare-fun tp!1164203 () Bool)

(declare-fun b_and!286351 () Bool)

(assert (=> b!3842553 (= tp!1164203 b_and!286351)))

(declare-fun b_free!102595 () Bool)

(declare-fun b_next!103299 () Bool)

(assert (=> b!3842553 (= b_free!102595 (not b_next!103299))))

(declare-fun tp!1164196 () Bool)

(declare-fun b_and!286353 () Bool)

(assert (=> b!3842553 (= tp!1164196 b_and!286353)))

(declare-fun b!3842574 () Bool)

(declare-fun b_free!102597 () Bool)

(declare-fun b_next!103301 () Bool)

(assert (=> b!3842574 (= b_free!102597 (not b_next!103301))))

(declare-fun tp!1164193 () Bool)

(declare-fun b_and!286355 () Bool)

(assert (=> b!3842574 (= tp!1164193 b_and!286355)))

(declare-fun b_free!102599 () Bool)

(declare-fun b_next!103303 () Bool)

(assert (=> b!3842574 (= b_free!102599 (not b_next!103303))))

(declare-fun tp!1164199 () Bool)

(declare-fun b_and!286357 () Bool)

(assert (=> b!3842574 (= tp!1164199 b_and!286357)))

(declare-fun b!3842578 () Bool)

(declare-fun b_free!102601 () Bool)

(declare-fun b_next!103305 () Bool)

(assert (=> b!3842578 (= b_free!102601 (not b_next!103305))))

(declare-fun tp!1164210 () Bool)

(declare-fun b_and!286359 () Bool)

(assert (=> b!3842578 (= tp!1164210 b_and!286359)))

(declare-fun b_free!102603 () Bool)

(declare-fun b_next!103307 () Bool)

(assert (=> b!3842578 (= b_free!102603 (not b_next!103307))))

(declare-fun tp!1164190 () Bool)

(declare-fun b_and!286361 () Bool)

(assert (=> b!3842578 (= tp!1164190 b_and!286361)))

(declare-fun b!3842549 () Bool)

(declare-fun b_free!102605 () Bool)

(declare-fun b_next!103309 () Bool)

(assert (=> b!3842549 (= b_free!102605 (not b_next!103309))))

(declare-fun tp!1164198 () Bool)

(declare-fun b_and!286363 () Bool)

(assert (=> b!3842549 (= tp!1164198 b_and!286363)))

(declare-fun b_free!102607 () Bool)

(declare-fun b_next!103311 () Bool)

(assert (=> b!3842549 (= b_free!102607 (not b_next!103311))))

(declare-fun tp!1164204 () Bool)

(declare-fun b_and!286365 () Bool)

(assert (=> b!3842549 (= tp!1164204 b_and!286365)))

(declare-fun b!3842542 () Bool)

(declare-datatypes ((List!40790 0))(
  ( (Nil!40666) (Cons!40666 (h!46086 (_ BitVec 16)) (t!310599 List!40790)) )
))
(declare-datatypes ((TokenValue!6506 0))(
  ( (FloatLiteralValue!13012 (text!45987 List!40790)) (TokenValueExt!6505 (__x!25229 Int)) (Broken!32530 (value!199474 List!40790)) (Object!6629) (End!6506) (Def!6506) (Underscore!6506) (Match!6506) (Else!6506) (Error!6506) (Case!6506) (If!6506) (Extends!6506) (Abstract!6506) (Class!6506) (Val!6506) (DelimiterValue!13012 (del!6566 List!40790)) (KeywordValue!6512 (value!199475 List!40790)) (CommentValue!13012 (value!199476 List!40790)) (WhitespaceValue!13012 (value!199477 List!40790)) (IndentationValue!6506 (value!199478 List!40790)) (String!46247) (Int32!6506) (Broken!32531 (value!199479 List!40790)) (Boolean!6507) (Unit!58365) (OperatorValue!6509 (op!6566 List!40790)) (IdentifierValue!13012 (value!199480 List!40790)) (IdentifierValue!13013 (value!199481 List!40790)) (WhitespaceValue!13013 (value!199482 List!40790)) (True!13012) (False!13012) (Broken!32532 (value!199483 List!40790)) (Broken!32533 (value!199484 List!40790)) (True!13013) (RightBrace!6506) (RightBracket!6506) (Colon!6506) (Null!6506) (Comma!6506) (LeftBracket!6506) (False!13013) (LeftBrace!6506) (ImaginaryLiteralValue!6506 (text!45988 List!40790)) (StringLiteralValue!19518 (value!199485 List!40790)) (EOFValue!6506 (value!199486 List!40790)) (IdentValue!6506 (value!199487 List!40790)) (DelimiterValue!13013 (value!199488 List!40790)) (DedentValue!6506 (value!199489 List!40790)) (NewLineValue!6506 (value!199490 List!40790)) (IntegerValue!19518 (value!199491 (_ BitVec 32)) (text!45989 List!40790)) (IntegerValue!19519 (value!199492 Int) (text!45990 List!40790)) (Times!6506) (Or!6506) (Equal!6506) (Minus!6506) (Broken!32534 (value!199493 List!40790)) (And!6506) (Div!6506) (LessEqual!6506) (Mod!6506) (Concat!17687) (Not!6506) (Plus!6506) (SpaceValue!6506 (value!199494 List!40790)) (IntegerValue!19520 (value!199495 Int) (text!45991 List!40790)) (StringLiteralValue!19519 (text!45992 List!40790)) (FloatLiteralValue!13013 (text!45993 List!40790)) (BytesLiteralValue!6506 (value!199496 List!40790)) (CommentValue!13013 (value!199497 List!40790)) (StringLiteralValue!19520 (value!199498 List!40790)) (ErrorTokenValue!6506 (msg!6567 List!40790)) )
))
(declare-datatypes ((C!22548 0))(
  ( (C!22549 (val!13368 Int)) )
))
(declare-datatypes ((Regex!11181 0))(
  ( (ElementMatch!11181 (c!669594 C!22548)) (Concat!17688 (regOne!22874 Regex!11181) (regTwo!22874 Regex!11181)) (EmptyExpr!11181) (Star!11181 (reg!11510 Regex!11181)) (EmptyLang!11181) (Union!11181 (regOne!22875 Regex!11181) (regTwo!22875 Regex!11181)) )
))
(declare-datatypes ((String!46248 0))(
  ( (String!46249 (value!199499 String)) )
))
(declare-datatypes ((List!40791 0))(
  ( (Nil!40667) (Cons!40667 (h!46087 C!22548) (t!310600 List!40791)) )
))
(declare-datatypes ((IArray!24979 0))(
  ( (IArray!24980 (innerList!12547 List!40791)) )
))
(declare-datatypes ((Conc!12487 0))(
  ( (Node!12487 (left!31403 Conc!12487) (right!31733 Conc!12487) (csize!25204 Int) (cheight!12698 Int)) (Leaf!19332 (xs!15793 IArray!24979) (csize!25205 Int)) (Empty!12487) )
))
(declare-datatypes ((BalanceConc!24568 0))(
  ( (BalanceConc!24569 (c!669595 Conc!12487)) )
))
(declare-datatypes ((TokenValueInjection!12440 0))(
  ( (TokenValueInjection!12441 (toValue!8692 Int) (toChars!8551 Int)) )
))
(declare-datatypes ((Rule!12352 0))(
  ( (Rule!12353 (regex!6276 Regex!11181) (tag!7136 String!46248) (isSeparator!6276 Bool) (transformation!6276 TokenValueInjection!12440)) )
))
(declare-datatypes ((Token!11690 0))(
  ( (Token!11691 (value!199500 TokenValue!6506) (rule!9116 Rule!12352) (size!30603 Int) (originalCharacters!6876 List!40791)) )
))
(declare-datatypes ((tuple2!39842 0))(
  ( (tuple2!39843 (_1!23055 Token!11690) (_2!23055 List!40791)) )
))
(declare-datatypes ((Option!8694 0))(
  ( (None!8693) (Some!8693 (v!38985 tuple2!39842)) )
))
(declare-fun e!2374169 () Option!8694)

(declare-fun call!281988 () Option!8694)

(assert (=> b!3842542 (= e!2374169 call!281988)))

(declare-fun b!3842543 () Bool)

(declare-fun e!2374190 () Bool)

(declare-fun e!2374187 () Bool)

(assert (=> b!3842543 (= e!2374190 e!2374187)))

(declare-fun res!1555257 () Bool)

(assert (=> b!3842543 (=> res!1555257 e!2374187)))

(declare-datatypes ((List!40792 0))(
  ( (Nil!40668) (Cons!40668 (h!46088 Token!11690) (t!310601 List!40792)) )
))
(declare-fun lt!1333818 () List!40792)

(declare-fun lt!1333830 () List!40792)

(declare-fun lt!1333837 () List!40792)

(declare-fun prefixTokens!80 () List!40792)

(declare-datatypes ((tuple2!39844 0))(
  ( (tuple2!39845 (_1!23056 List!40792) (_2!23056 List!40791)) )
))
(declare-fun lt!1333825 () tuple2!39844)

(declare-fun prefix!426 () List!40791)

(declare-fun lt!1333827 () List!40791)

(assert (=> b!3842543 (= res!1555257 (or (not (= lt!1333818 (_1!23056 lt!1333825))) (not (= lt!1333818 lt!1333830)) (not (= prefixTokens!80 lt!1333837)) (not (= prefix!426 lt!1333827))))))

(assert (=> b!3842543 (= lt!1333827 prefix!426)))

(declare-fun lt!1333835 () Option!8694)

(declare-fun suffix!1176 () List!40791)

(declare-datatypes ((Unit!58366 0))(
  ( (Unit!58367) )
))
(declare-fun lt!1333836 () Unit!58366)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!404 (List!40791 List!40791 List!40791 List!40791) Unit!58366)

(assert (=> b!3842543 (= lt!1333836 (lemmaConcatSameAndSameSizesThenSameLists!404 lt!1333827 (_2!23055 (v!38985 lt!1333835)) prefix!426 suffix!1176))))

(declare-fun b!3842544 () Bool)

(declare-fun e!2374186 () Bool)

(declare-fun tp_is_empty!19333 () Bool)

(declare-fun tp!1164202 () Bool)

(assert (=> b!3842544 (= e!2374186 (and tp_is_empty!19333 tp!1164202))))

(declare-fun b!3842545 () Bool)

(declare-fun e!2374197 () Bool)

(declare-fun e!2374188 () Bool)

(assert (=> b!3842545 (= e!2374197 e!2374188)))

(declare-fun res!1555267 () Bool)

(assert (=> b!3842545 (=> res!1555267 e!2374188)))

(declare-fun lt!1333832 () tuple2!39844)

(assert (=> b!3842545 (= res!1555267 (or (not (= lt!1333825 (tuple2!39845 lt!1333830 (_2!23056 lt!1333832)))) (not (= lt!1333832 (tuple2!39845 (_1!23056 lt!1333832) (_2!23056 lt!1333832)))) (not (= (_2!23055 (v!38985 lt!1333835)) suffix!1176))))))

(declare-fun ++!10309 (List!40792 List!40792) List!40792)

(assert (=> b!3842545 (= lt!1333830 (++!10309 lt!1333837 (_1!23056 lt!1333832)))))

(assert (=> b!3842545 (= lt!1333837 (Cons!40668 (_1!23055 (v!38985 lt!1333835)) Nil!40668))))

(declare-fun b!3842546 () Bool)

(declare-fun e!2374191 () Bool)

(declare-fun tp!1164191 () Bool)

(assert (=> b!3842546 (= e!2374191 (and tp_is_empty!19333 tp!1164191))))

(declare-fun b!3842547 () Bool)

(assert (=> b!3842547 (= e!2374188 e!2374190)))

(declare-fun res!1555254 () Bool)

(assert (=> b!3842547 (=> res!1555254 e!2374190)))

(assert (=> b!3842547 (= res!1555254 (not (= lt!1333835 (Some!8693 (tuple2!39843 (_1!23055 (v!38985 lt!1333835)) (_2!23055 (v!38985 lt!1333835)))))))))

(declare-fun e!2374198 () Bool)

(assert (=> b!3842547 e!2374198))

(declare-fun res!1555258 () Bool)

(assert (=> b!3842547 (=> (not res!1555258) (not e!2374198))))

(declare-fun lt!1333816 () List!40791)

(declare-fun isPrefix!3375 (List!40791 List!40791) Bool)

(assert (=> b!3842547 (= res!1555258 (isPrefix!3375 lt!1333816 lt!1333816))))

(declare-fun lt!1333817 () Unit!58366)

(declare-fun lemmaIsPrefixRefl!2148 (List!40791 List!40791) Unit!58366)

(assert (=> b!3842547 (= lt!1333817 (lemmaIsPrefixRefl!2148 lt!1333816 lt!1333816))))

(assert (=> b!3842547 (= lt!1333825 (tuple2!39845 (Cons!40668 (_1!23055 (v!38985 lt!1333835)) (_1!23056 lt!1333832)) (_2!23056 lt!1333832)))))

(declare-fun tp!1164207 () Bool)

(declare-fun e!2374177 () Bool)

(declare-fun e!2374176 () Bool)

(declare-fun b!3842548 () Bool)

(declare-fun suffixTokens!72 () List!40792)

(declare-fun inv!54813 (Token!11690) Bool)

(assert (=> b!3842548 (= e!2374177 (and (inv!54813 (h!46088 suffixTokens!72)) e!2374176 tp!1164207))))

(declare-fun e!2374178 () Bool)

(assert (=> b!3842549 (= e!2374178 (and tp!1164198 tp!1164204))))

(declare-fun b!3842550 () Bool)

(declare-fun res!1555261 () Bool)

(declare-fun e!2374184 () Bool)

(assert (=> b!3842550 (=> (not res!1555261) (not e!2374184))))

(declare-fun isEmpty!24042 (List!40792) Bool)

(assert (=> b!3842550 (= res!1555261 (not (isEmpty!24042 prefixTokens!80)))))

(declare-fun b!3842551 () Bool)

(assert (=> b!3842551 true))

(declare-fun e!2374181 () Bool)

(assert (=> b!3842551 e!2374181))

(declare-fun e!2374201 () Option!8694)

(declare-fun err!4257 () Option!8694)

(assert (=> b!3842551 (= e!2374201 err!4257)))

(declare-fun tp!1164197 () Bool)

(declare-datatypes ((List!40793 0))(
  ( (Nil!40669) (Cons!40669 (h!46089 Rule!12352) (t!310602 List!40793)) )
))
(declare-fun rules!2768 () List!40793)

(declare-fun e!2374200 () Bool)

(declare-fun b!3842552 () Bool)

(declare-fun e!2374189 () Bool)

(declare-fun inv!54810 (String!46248) Bool)

(declare-fun inv!54814 (TokenValueInjection!12440) Bool)

(assert (=> b!3842552 (= e!2374189 (and tp!1164197 (inv!54810 (tag!7136 (h!46089 rules!2768))) (inv!54814 (transformation!6276 (h!46089 rules!2768))) e!2374200))))

(declare-fun e!2374204 () Bool)

(assert (=> b!3842553 (= e!2374204 (and tp!1164203 tp!1164196))))

(declare-fun b!3842554 () Bool)

(declare-fun res!1555268 () Bool)

(assert (=> b!3842554 (=> (not res!1555268) (not e!2374184))))

(declare-fun isEmpty!24043 (List!40793) Bool)

(assert (=> b!3842554 (= res!1555268 (not (isEmpty!24043 rules!2768)))))

(declare-fun e!2374193 () Bool)

(declare-fun e!2374185 () Bool)

(declare-fun tp!1164194 () Bool)

(declare-fun b!3842555 () Bool)

(declare-fun inv!21 (TokenValue!6506) Bool)

(assert (=> b!3842555 (= e!2374193 (and (inv!21 (value!199500 (_1!23055 (v!38985 err!4257)))) e!2374185 tp!1164194))))

(declare-fun e!2374195 () Bool)

(declare-fun b!3842556 () Bool)

(declare-fun tp!1164192 () Bool)

(declare-fun e!2374183 () Bool)

(assert (=> b!3842556 (= e!2374183 (and (inv!54813 (h!46088 prefixTokens!80)) e!2374195 tp!1164192))))

(declare-fun b!3842557 () Bool)

(declare-fun tp!1164205 () Bool)

(declare-fun e!2374192 () Bool)

(declare-fun e!2374179 () Bool)

(assert (=> b!3842557 (= e!2374179 (and tp!1164205 (inv!54810 (tag!7136 (rule!9116 (h!46088 suffixTokens!72)))) (inv!54814 (transformation!6276 (rule!9116 (h!46088 suffixTokens!72)))) e!2374192))))

(declare-fun b!3842558 () Bool)

(assert (=> b!3842558 (= e!2374198 (= lt!1333835 e!2374169))))

(declare-fun c!669592 () Bool)

(get-info :version)

(assert (=> b!3842558 (= c!669592 (and ((_ is Cons!40669) rules!2768) ((_ is Nil!40669) (t!310602 rules!2768))))))

(declare-datatypes ((LexerInterface!5865 0))(
  ( (LexerInterfaceExt!5862 (__x!25230 Int)) (Lexer!5863) )
))
(declare-fun thiss!20629 () LexerInterface!5865)

(declare-fun bm!281983 () Bool)

(declare-fun maxPrefixOneRule!2253 (LexerInterface!5865 Rule!12352 List!40791) Option!8694)

(assert (=> bm!281983 (= call!281988 (maxPrefixOneRule!2253 thiss!20629 (h!46089 rules!2768) lt!1333816))))

(declare-fun e!2374173 () Bool)

(declare-fun tp!1164200 () Bool)

(declare-fun b!3842559 () Bool)

(assert (=> b!3842559 (= e!2374173 (and tp!1164200 (inv!54810 (tag!7136 (rule!9116 (h!46088 prefixTokens!80)))) (inv!54814 (transformation!6276 (rule!9116 (h!46088 prefixTokens!80)))) e!2374204))))

(declare-fun b!3842560 () Bool)

(declare-fun e!2374199 () Bool)

(declare-fun e!2374202 () Bool)

(assert (=> b!3842560 (= e!2374199 e!2374202)))

(declare-fun res!1555255 () Bool)

(assert (=> b!3842560 (=> (not res!1555255) (not e!2374202))))

(assert (=> b!3842560 (= res!1555255 ((_ is Some!8693) lt!1333835))))

(declare-fun maxPrefix!3169 (LexerInterface!5865 List!40793 List!40791) Option!8694)

(assert (=> b!3842560 (= lt!1333835 (maxPrefix!3169 thiss!20629 rules!2768 lt!1333816))))

(declare-fun b!3842561 () Bool)

(declare-fun e!2374172 () Bool)

(declare-fun tp!1164201 () Bool)

(assert (=> b!3842561 (= e!2374172 (and e!2374189 tp!1164201))))

(declare-fun b!3842562 () Bool)

(declare-fun res!1555264 () Bool)

(assert (=> b!3842562 (=> (not res!1555264) (not e!2374184))))

(declare-fun isEmpty!24044 (List!40791) Bool)

(assert (=> b!3842562 (= res!1555264 (not (isEmpty!24044 prefix!426)))))

(declare-fun tp!1164209 () Bool)

(declare-fun b!3842563 () Bool)

(assert (=> b!3842563 (= e!2374195 (and (inv!21 (value!199500 (h!46088 prefixTokens!80))) e!2374173 tp!1164209))))

(declare-fun b!3842564 () Bool)

(assert (=> b!3842564 (= e!2374184 e!2374199)))

(declare-fun res!1555260 () Bool)

(assert (=> b!3842564 (=> (not res!1555260) (not e!2374199))))

(declare-fun suffixResult!91 () List!40791)

(assert (=> b!3842564 (= res!1555260 (= lt!1333825 (tuple2!39845 lt!1333818 suffixResult!91)))))

(declare-fun lexList!1633 (LexerInterface!5865 List!40793 List!40791) tuple2!39844)

(assert (=> b!3842564 (= lt!1333825 (lexList!1633 thiss!20629 rules!2768 lt!1333816))))

(assert (=> b!3842564 (= lt!1333818 (++!10309 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10310 (List!40791 List!40791) List!40791)

(assert (=> b!3842564 (= lt!1333816 (++!10310 prefix!426 suffix!1176))))

(declare-fun lt!1333826 () Option!8694)

(declare-fun b!3842565 () Bool)

(assert (=> b!3842565 (= lt!1333826 (maxPrefix!3169 thiss!20629 (t!310602 rules!2768) lt!1333816))))

(declare-fun lt!1333822 () Option!8694)

(assert (=> b!3842565 (= lt!1333822 call!281988)))

(assert (=> b!3842565 (= e!2374201 (ite (and ((_ is None!8693) lt!1333822) ((_ is None!8693) lt!1333826)) None!8693 (ite ((_ is None!8693) lt!1333826) lt!1333822 (ite ((_ is None!8693) lt!1333822) lt!1333826 (ite (>= (size!30603 (_1!23055 (v!38985 lt!1333822))) (size!30603 (_1!23055 (v!38985 lt!1333826)))) (Some!8693 (v!38985 lt!1333822)) lt!1333826)))))))

(declare-fun b!3842566 () Bool)

(declare-fun tp!1164206 () Bool)

(assert (=> b!3842566 (= e!2374181 (and (inv!54813 (_1!23055 (v!38985 err!4257))) e!2374193 tp!1164206))))

(declare-fun b!3842567 () Bool)

(declare-fun e!2374194 () Bool)

(declare-fun tp!1164208 () Bool)

(assert (=> b!3842567 (= e!2374194 (and tp_is_empty!19333 tp!1164208))))

(declare-fun b!3842568 () Bool)

(declare-fun res!1555263 () Bool)

(assert (=> b!3842568 (=> (not res!1555263) (not e!2374199))))

(assert (=> b!3842568 (= res!1555263 (= (lexList!1633 thiss!20629 rules!2768 suffix!1176) (tuple2!39845 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3842569 () Bool)

(declare-fun e!2374182 () Bool)

(declare-fun size!30604 (List!40791) Int)

(assert (=> b!3842569 (= e!2374182 (= (size!30603 (_1!23055 (v!38985 lt!1333835))) (size!30604 (originalCharacters!6876 (_1!23055 (v!38985 lt!1333835))))))))

(declare-fun b!3842570 () Bool)

(assert (=> b!3842570 (= e!2374187 true)))

(declare-fun lt!1333828 () Bool)

(declare-fun rulesValidInductive!2218 (LexerInterface!5865 List!40793) Bool)

(assert (=> b!3842570 (= lt!1333828 (rulesValidInductive!2218 thiss!20629 rules!2768))))

(assert (=> b!3842570 (= (maxPrefix!3169 thiss!20629 rules!2768 (++!10310 prefix!426 Nil!40667)) (Some!8693 (tuple2!39843 (_1!23055 (v!38985 lt!1333835)) Nil!40667)))))

(declare-fun lt!1333823 () Unit!58366)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!6 (LexerInterface!5865 List!40793 List!40791 List!40791 List!40791 Token!11690 List!40791 List!40791) Unit!58366)

(assert (=> b!3842570 (= lt!1333823 (lemmaMaxPrefixThenWithShorterSuffix!6 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40667 (_1!23055 (v!38985 lt!1333835)) suffix!1176 Nil!40667))))

(declare-fun b!3842571 () Bool)

(assert (=> b!3842571 (= e!2374202 (not e!2374197))))

(declare-fun res!1555266 () Bool)

(assert (=> b!3842571 (=> res!1555266 e!2374197)))

(declare-fun lt!1333821 () List!40791)

(assert (=> b!3842571 (= res!1555266 (not (= lt!1333821 lt!1333816)))))

(assert (=> b!3842571 (= lt!1333832 (lexList!1633 thiss!20629 rules!2768 (_2!23055 (v!38985 lt!1333835))))))

(declare-fun lt!1333820 () TokenValue!6506)

(declare-fun lt!1333824 () Int)

(declare-fun lt!1333834 () List!40791)

(assert (=> b!3842571 (and (= (size!30603 (_1!23055 (v!38985 lt!1333835))) lt!1333824) (= (originalCharacters!6876 (_1!23055 (v!38985 lt!1333835))) lt!1333827) (= (tuple2!39843 (_1!23055 (v!38985 lt!1333835)) (_2!23055 (v!38985 lt!1333835))) (tuple2!39843 (Token!11691 lt!1333820 (rule!9116 (_1!23055 (v!38985 lt!1333835))) lt!1333824 lt!1333827) lt!1333834)))))

(assert (=> b!3842571 (= lt!1333824 (size!30604 lt!1333827))))

(assert (=> b!3842571 e!2374182))

(declare-fun res!1555259 () Bool)

(assert (=> b!3842571 (=> (not res!1555259) (not e!2374182))))

(assert (=> b!3842571 (= res!1555259 (= (value!199500 (_1!23055 (v!38985 lt!1333835))) lt!1333820))))

(declare-fun apply!9519 (TokenValueInjection!12440 BalanceConc!24568) TokenValue!6506)

(declare-fun seqFromList!4547 (List!40791) BalanceConc!24568)

(assert (=> b!3842571 (= lt!1333820 (apply!9519 (transformation!6276 (rule!9116 (_1!23055 (v!38985 lt!1333835)))) (seqFromList!4547 lt!1333827)))))

(assert (=> b!3842571 (= (_2!23055 (v!38985 lt!1333835)) lt!1333834)))

(declare-fun lt!1333829 () Unit!58366)

(declare-fun lemmaSamePrefixThenSameSuffix!1596 (List!40791 List!40791 List!40791 List!40791 List!40791) Unit!58366)

(assert (=> b!3842571 (= lt!1333829 (lemmaSamePrefixThenSameSuffix!1596 lt!1333827 (_2!23055 (v!38985 lt!1333835)) lt!1333827 lt!1333834 lt!1333816))))

(declare-fun getSuffix!1830 (List!40791 List!40791) List!40791)

(assert (=> b!3842571 (= lt!1333834 (getSuffix!1830 lt!1333816 lt!1333827))))

(assert (=> b!3842571 (isPrefix!3375 lt!1333827 lt!1333821)))

(assert (=> b!3842571 (= lt!1333821 (++!10310 lt!1333827 (_2!23055 (v!38985 lt!1333835))))))

(declare-fun lt!1333833 () Unit!58366)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2238 (List!40791 List!40791) Unit!58366)

(assert (=> b!3842571 (= lt!1333833 (lemmaConcatTwoListThenFirstIsPrefix!2238 lt!1333827 (_2!23055 (v!38985 lt!1333835))))))

(declare-fun list!15142 (BalanceConc!24568) List!40791)

(declare-fun charsOf!4104 (Token!11690) BalanceConc!24568)

(assert (=> b!3842571 (= lt!1333827 (list!15142 (charsOf!4104 (_1!23055 (v!38985 lt!1333835)))))))

(declare-fun ruleValid!2228 (LexerInterface!5865 Rule!12352) Bool)

(assert (=> b!3842571 (ruleValid!2228 thiss!20629 (rule!9116 (_1!23055 (v!38985 lt!1333835))))))

(declare-fun lt!1333831 () Unit!58366)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1308 (LexerInterface!5865 Rule!12352 List!40793) Unit!58366)

(assert (=> b!3842571 (= lt!1333831 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1308 thiss!20629 (rule!9116 (_1!23055 (v!38985 lt!1333835))) rules!2768))))

(declare-fun lt!1333819 () Unit!58366)

(declare-fun lemmaCharactersSize!937 (Token!11690) Unit!58366)

(assert (=> b!3842571 (= lt!1333819 (lemmaCharactersSize!937 (_1!23055 (v!38985 lt!1333835))))))

(declare-fun res!1555265 () Bool)

(assert (=> start!359780 (=> (not res!1555265) (not e!2374184))))

(assert (=> start!359780 (= res!1555265 ((_ is Lexer!5863) thiss!20629))))

(assert (=> start!359780 e!2374184))

(assert (=> start!359780 e!2374194))

(assert (=> start!359780 true))

(assert (=> start!359780 e!2374191))

(assert (=> start!359780 e!2374172))

(assert (=> start!359780 e!2374183))

(assert (=> start!359780 e!2374177))

(assert (=> start!359780 e!2374186))

(declare-fun b!3842572 () Bool)

(declare-fun res!1555256 () Bool)

(assert (=> b!3842572 (=> (not res!1555256) (not e!2374184))))

(declare-fun rulesInvariant!5208 (LexerInterface!5865 List!40793) Bool)

(assert (=> b!3842572 (= res!1555256 (rulesInvariant!5208 thiss!20629 rules!2768))))

(declare-fun b!3842573 () Bool)

(declare-fun tp!1164189 () Bool)

(assert (=> b!3842573 (= e!2374185 (and tp!1164189 (inv!54810 (tag!7136 (rule!9116 (_1!23055 (v!38985 err!4257))))) (inv!54814 (transformation!6276 (rule!9116 (_1!23055 (v!38985 err!4257))))) e!2374178))))

(assert (=> b!3842574 (= e!2374200 (and tp!1164193 tp!1164199))))

(declare-fun b!3842575 () Bool)

(assert (=> b!3842575 (= e!2374169 e!2374201)))

(declare-fun c!669593 () Bool)

(assert (=> b!3842575 (= c!669593 ((_ is Cons!40669) rules!2768))))

(declare-fun b!3842576 () Bool)

(declare-fun res!1555262 () Bool)

(assert (=> b!3842576 (=> res!1555262 e!2374187)))

(assert (=> b!3842576 (= res!1555262 (not (isPrefix!3375 Nil!40667 suffix!1176)))))

(declare-fun b!3842577 () Bool)

(declare-fun tp!1164195 () Bool)

(assert (=> b!3842577 (= e!2374176 (and (inv!21 (value!199500 (h!46088 suffixTokens!72))) e!2374179 tp!1164195))))

(assert (=> b!3842578 (= e!2374192 (and tp!1164210 tp!1164190))))

(assert (= (and start!359780 res!1555265) b!3842554))

(assert (= (and b!3842554 res!1555268) b!3842572))

(assert (= (and b!3842572 res!1555256) b!3842550))

(assert (= (and b!3842550 res!1555261) b!3842562))

(assert (= (and b!3842562 res!1555264) b!3842564))

(assert (= (and b!3842564 res!1555260) b!3842568))

(assert (= (and b!3842568 res!1555263) b!3842560))

(assert (= (and b!3842560 res!1555255) b!3842571))

(assert (= (and b!3842571 res!1555259) b!3842569))

(assert (= (and b!3842571 (not res!1555266)) b!3842545))

(assert (= (and b!3842545 (not res!1555267)) b!3842547))

(assert (= (and b!3842547 res!1555258) b!3842558))

(assert (= (and b!3842558 c!669592) b!3842542))

(assert (= (and b!3842558 (not c!669592)) b!3842575))

(assert (= (and b!3842575 c!669593) b!3842565))

(assert (= (and b!3842575 (not c!669593)) b!3842551))

(assert (= b!3842573 b!3842549))

(assert (= b!3842555 b!3842573))

(assert (= b!3842566 b!3842555))

(assert (= (and b!3842551 ((_ is Some!8693) err!4257)) b!3842566))

(assert (= (or b!3842542 b!3842565) bm!281983))

(assert (= (and b!3842547 (not res!1555254)) b!3842543))

(assert (= (and b!3842543 (not res!1555257)) b!3842576))

(assert (= (and b!3842576 (not res!1555262)) b!3842570))

(assert (= (and start!359780 ((_ is Cons!40667) suffixResult!91)) b!3842567))

(assert (= (and start!359780 ((_ is Cons!40667) suffix!1176)) b!3842546))

(assert (= b!3842552 b!3842574))

(assert (= b!3842561 b!3842552))

(assert (= (and start!359780 ((_ is Cons!40669) rules!2768)) b!3842561))

(assert (= b!3842559 b!3842553))

(assert (= b!3842563 b!3842559))

(assert (= b!3842556 b!3842563))

(assert (= (and start!359780 ((_ is Cons!40668) prefixTokens!80)) b!3842556))

(assert (= b!3842557 b!3842578))

(assert (= b!3842577 b!3842557))

(assert (= b!3842548 b!3842577))

(assert (= (and start!359780 ((_ is Cons!40668) suffixTokens!72)) b!3842548))

(assert (= (and start!359780 ((_ is Cons!40667) prefix!426)) b!3842544))

(declare-fun m!4396831 () Bool)

(assert (=> b!3842571 m!4396831))

(declare-fun m!4396833 () Bool)

(assert (=> b!3842571 m!4396833))

(declare-fun m!4396835 () Bool)

(assert (=> b!3842571 m!4396835))

(declare-fun m!4396837 () Bool)

(assert (=> b!3842571 m!4396837))

(declare-fun m!4396839 () Bool)

(assert (=> b!3842571 m!4396839))

(declare-fun m!4396841 () Bool)

(assert (=> b!3842571 m!4396841))

(declare-fun m!4396843 () Bool)

(assert (=> b!3842571 m!4396843))

(declare-fun m!4396845 () Bool)

(assert (=> b!3842571 m!4396845))

(declare-fun m!4396847 () Bool)

(assert (=> b!3842571 m!4396847))

(assert (=> b!3842571 m!4396847))

(declare-fun m!4396849 () Bool)

(assert (=> b!3842571 m!4396849))

(declare-fun m!4396851 () Bool)

(assert (=> b!3842571 m!4396851))

(declare-fun m!4396853 () Bool)

(assert (=> b!3842571 m!4396853))

(declare-fun m!4396855 () Bool)

(assert (=> b!3842571 m!4396855))

(assert (=> b!3842571 m!4396843))

(declare-fun m!4396857 () Bool)

(assert (=> b!3842571 m!4396857))

(declare-fun m!4396859 () Bool)

(assert (=> b!3842565 m!4396859))

(declare-fun m!4396861 () Bool)

(assert (=> b!3842545 m!4396861))

(declare-fun m!4396863 () Bool)

(assert (=> b!3842548 m!4396863))

(declare-fun m!4396865 () Bool)

(assert (=> b!3842554 m!4396865))

(declare-fun m!4396867 () Bool)

(assert (=> b!3842566 m!4396867))

(declare-fun m!4396869 () Bool)

(assert (=> b!3842570 m!4396869))

(declare-fun m!4396871 () Bool)

(assert (=> b!3842570 m!4396871))

(assert (=> b!3842570 m!4396871))

(declare-fun m!4396873 () Bool)

(assert (=> b!3842570 m!4396873))

(declare-fun m!4396875 () Bool)

(assert (=> b!3842570 m!4396875))

(declare-fun m!4396877 () Bool)

(assert (=> b!3842557 m!4396877))

(declare-fun m!4396879 () Bool)

(assert (=> b!3842557 m!4396879))

(declare-fun m!4396881 () Bool)

(assert (=> b!3842550 m!4396881))

(declare-fun m!4396883 () Bool)

(assert (=> b!3842556 m!4396883))

(declare-fun m!4396885 () Bool)

(assert (=> b!3842564 m!4396885))

(declare-fun m!4396887 () Bool)

(assert (=> b!3842564 m!4396887))

(declare-fun m!4396889 () Bool)

(assert (=> b!3842564 m!4396889))

(declare-fun m!4396891 () Bool)

(assert (=> b!3842555 m!4396891))

(declare-fun m!4396893 () Bool)

(assert (=> b!3842560 m!4396893))

(declare-fun m!4396895 () Bool)

(assert (=> b!3842562 m!4396895))

(declare-fun m!4396897 () Bool)

(assert (=> b!3842559 m!4396897))

(declare-fun m!4396899 () Bool)

(assert (=> b!3842559 m!4396899))

(declare-fun m!4396901 () Bool)

(assert (=> b!3842547 m!4396901))

(declare-fun m!4396903 () Bool)

(assert (=> b!3842547 m!4396903))

(declare-fun m!4396905 () Bool)

(assert (=> b!3842573 m!4396905))

(declare-fun m!4396907 () Bool)

(assert (=> b!3842573 m!4396907))

(declare-fun m!4396909 () Bool)

(assert (=> b!3842577 m!4396909))

(declare-fun m!4396911 () Bool)

(assert (=> b!3842569 m!4396911))

(declare-fun m!4396913 () Bool)

(assert (=> b!3842563 m!4396913))

(declare-fun m!4396915 () Bool)

(assert (=> b!3842552 m!4396915))

(declare-fun m!4396917 () Bool)

(assert (=> b!3842552 m!4396917))

(declare-fun m!4396919 () Bool)

(assert (=> bm!281983 m!4396919))

(declare-fun m!4396921 () Bool)

(assert (=> b!3842576 m!4396921))

(declare-fun m!4396923 () Bool)

(assert (=> b!3842572 m!4396923))

(declare-fun m!4396925 () Bool)

(assert (=> b!3842568 m!4396925))

(declare-fun m!4396927 () Bool)

(assert (=> b!3842543 m!4396927))

(check-sat (not b!3842569) (not b!3842566) (not b_next!103309) (not bm!281983) b_and!286361 (not b!3842564) (not b_next!103307) (not b!3842556) (not b!3842545) b_and!286359 (not b!3842577) (not b!3842543) (not b!3842565) (not b!3842550) (not b!3842562) (not b!3842544) (not b!3842570) (not b!3842559) tp_is_empty!19333 (not b_next!103301) (not b!3842571) (not b_next!103303) (not b!3842568) b_and!286357 (not b!3842561) (not b!3842546) (not b!3842555) (not b!3842573) b_and!286355 (not b_next!103305) (not b!3842567) (not b!3842548) b_and!286363 (not b!3842560) (not b!3842547) (not b!3842557) b_and!286353 b_and!286351 (not b_next!103299) (not b!3842572) (not b_next!103311) (not b!3842563) (not b!3842554) (not b!3842552) (not b!3842576) b_and!286365 (not b_next!103297))
(check-sat (not b_next!103301) (not b_next!103309) (not b_next!103303) b_and!286357 b_and!286361 (not b_next!103307) b_and!286359 b_and!286363 (not b_next!103299) (not b_next!103311) b_and!286355 (not b_next!103305) b_and!286353 b_and!286351 b_and!286365 (not b_next!103297))

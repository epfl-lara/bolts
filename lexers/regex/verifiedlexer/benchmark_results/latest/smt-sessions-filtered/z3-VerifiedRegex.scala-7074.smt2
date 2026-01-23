; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375104 () Bool)

(assert start!375104)

(declare-fun b!3985419 () Bool)

(declare-fun b_free!110657 () Bool)

(declare-fun b_next!111361 () Bool)

(assert (=> b!3985419 (= b_free!110657 (not b_next!111361))))

(declare-fun tp!1214511 () Bool)

(declare-fun b_and!306287 () Bool)

(assert (=> b!3985419 (= tp!1214511 b_and!306287)))

(declare-fun b_free!110659 () Bool)

(declare-fun b_next!111363 () Bool)

(assert (=> b!3985419 (= b_free!110659 (not b_next!111363))))

(declare-fun tp!1214504 () Bool)

(declare-fun b_and!306289 () Bool)

(assert (=> b!3985419 (= tp!1214504 b_and!306289)))

(declare-fun b!3985403 () Bool)

(declare-fun b_free!110661 () Bool)

(declare-fun b_next!111365 () Bool)

(assert (=> b!3985403 (= b_free!110661 (not b_next!111365))))

(declare-fun tp!1214502 () Bool)

(declare-fun b_and!306291 () Bool)

(assert (=> b!3985403 (= tp!1214502 b_and!306291)))

(declare-fun b_free!110663 () Bool)

(declare-fun b_next!111367 () Bool)

(assert (=> b!3985403 (= b_free!110663 (not b_next!111367))))

(declare-fun tp!1214505 () Bool)

(declare-fun b_and!306293 () Bool)

(assert (=> b!3985403 (= tp!1214505 b_and!306293)))

(declare-fun b!3985397 () Bool)

(declare-fun e!2470157 () Bool)

(declare-fun e!2470132 () Bool)

(assert (=> b!3985397 (= e!2470157 e!2470132)))

(declare-fun res!1616224 () Bool)

(assert (=> b!3985397 (=> res!1616224 e!2470132)))

(declare-datatypes ((C!23468 0))(
  ( (C!23469 (val!13828 Int)) )
))
(declare-datatypes ((List!42740 0))(
  ( (Nil!42616) (Cons!42616 (h!48036 C!23468) (t!331539 List!42740)) )
))
(declare-datatypes ((IArray!25899 0))(
  ( (IArray!25900 (innerList!13007 List!42740)) )
))
(declare-datatypes ((Conc!12947 0))(
  ( (Node!12947 (left!32217 Conc!12947) (right!32547 Conc!12947) (csize!26124 Int) (cheight!13158 Int)) (Leaf!20022 (xs!16253 IArray!25899) (csize!26125 Int)) (Empty!12947) )
))
(declare-datatypes ((BalanceConc!25488 0))(
  ( (BalanceConc!25489 (c!690104 Conc!12947)) )
))
(declare-datatypes ((List!42741 0))(
  ( (Nil!42617) (Cons!42617 (h!48037 (_ BitVec 16)) (t!331540 List!42741)) )
))
(declare-datatypes ((TokenValue!6966 0))(
  ( (FloatLiteralValue!13932 (text!49207 List!42741)) (TokenValueExt!6965 (__x!26149 Int)) (Broken!34830 (value!212584 List!42741)) (Object!7089) (End!6966) (Def!6966) (Underscore!6966) (Match!6966) (Else!6966) (Error!6966) (Case!6966) (If!6966) (Extends!6966) (Abstract!6966) (Class!6966) (Val!6966) (DelimiterValue!13932 (del!7026 List!42741)) (KeywordValue!6972 (value!212585 List!42741)) (CommentValue!13932 (value!212586 List!42741)) (WhitespaceValue!13932 (value!212587 List!42741)) (IndentationValue!6966 (value!212588 List!42741)) (String!48547) (Int32!6966) (Broken!34831 (value!212589 List!42741)) (Boolean!6967) (Unit!61301) (OperatorValue!6969 (op!7026 List!42741)) (IdentifierValue!13932 (value!212590 List!42741)) (IdentifierValue!13933 (value!212591 List!42741)) (WhitespaceValue!13933 (value!212592 List!42741)) (True!13932) (False!13932) (Broken!34832 (value!212593 List!42741)) (Broken!34833 (value!212594 List!42741)) (True!13933) (RightBrace!6966) (RightBracket!6966) (Colon!6966) (Null!6966) (Comma!6966) (LeftBracket!6966) (False!13933) (LeftBrace!6966) (ImaginaryLiteralValue!6966 (text!49208 List!42741)) (StringLiteralValue!20898 (value!212595 List!42741)) (EOFValue!6966 (value!212596 List!42741)) (IdentValue!6966 (value!212597 List!42741)) (DelimiterValue!13933 (value!212598 List!42741)) (DedentValue!6966 (value!212599 List!42741)) (NewLineValue!6966 (value!212600 List!42741)) (IntegerValue!20898 (value!212601 (_ BitVec 32)) (text!49209 List!42741)) (IntegerValue!20899 (value!212602 Int) (text!49210 List!42741)) (Times!6966) (Or!6966) (Equal!6966) (Minus!6966) (Broken!34834 (value!212603 List!42741)) (And!6966) (Div!6966) (LessEqual!6966) (Mod!6966) (Concat!18607) (Not!6966) (Plus!6966) (SpaceValue!6966 (value!212604 List!42741)) (IntegerValue!20900 (value!212605 Int) (text!49211 List!42741)) (StringLiteralValue!20899 (text!49212 List!42741)) (FloatLiteralValue!13933 (text!49213 List!42741)) (BytesLiteralValue!6966 (value!212606 List!42741)) (CommentValue!13933 (value!212607 List!42741)) (StringLiteralValue!20900 (value!212608 List!42741)) (ErrorTokenValue!6966 (msg!7027 List!42741)) )
))
(declare-datatypes ((Regex!11641 0))(
  ( (ElementMatch!11641 (c!690105 C!23468)) (Concat!18608 (regOne!23794 Regex!11641) (regTwo!23794 Regex!11641)) (EmptyExpr!11641) (Star!11641 (reg!11970 Regex!11641)) (EmptyLang!11641) (Union!11641 (regOne!23795 Regex!11641) (regTwo!23795 Regex!11641)) )
))
(declare-datatypes ((String!48548 0))(
  ( (String!48549 (value!212609 String)) )
))
(declare-datatypes ((TokenValueInjection!13360 0))(
  ( (TokenValueInjection!13361 (toValue!9224 Int) (toChars!9083 Int)) )
))
(declare-datatypes ((Rule!13272 0))(
  ( (Rule!13273 (regex!6736 Regex!11641) (tag!7596 String!48548) (isSeparator!6736 Bool) (transformation!6736 TokenValueInjection!13360)) )
))
(declare-datatypes ((Token!12610 0))(
  ( (Token!12611 (value!212610 TokenValue!6966) (rule!9748 Rule!13272) (size!31876 Int) (originalCharacters!7336 List!42740)) )
))
(declare-datatypes ((tuple2!41832 0))(
  ( (tuple2!41833 (_1!24050 Token!12610) (_2!24050 List!42740)) )
))
(declare-datatypes ((Option!9150 0))(
  ( (None!9149) (Some!9149 (v!39501 tuple2!41832)) )
))
(declare-fun lt!1402090 () Option!9150)

(declare-fun lt!1402071 () Option!9150)

(assert (=> b!3985397 (= res!1616224 (not (= lt!1402090 (Some!9149 (v!39501 lt!1402071)))))))

(declare-fun lt!1402097 () List!42740)

(declare-fun newSuffixResult!27 () List!42740)

(declare-fun isPrefix!3823 (List!42740 List!42740) Bool)

(declare-fun ++!11138 (List!42740 List!42740) List!42740)

(assert (=> b!3985397 (isPrefix!3823 lt!1402097 (++!11138 lt!1402097 newSuffixResult!27))))

(declare-datatypes ((Unit!61302 0))(
  ( (Unit!61303) )
))
(declare-fun lt!1402103 () Unit!61302)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2666 (List!42740 List!42740) Unit!61302)

(assert (=> b!3985397 (= lt!1402103 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402097 newSuffixResult!27))))

(declare-fun lt!1402112 () List!42740)

(assert (=> b!3985397 (isPrefix!3823 lt!1402097 lt!1402112)))

(assert (=> b!3985397 (= lt!1402112 (++!11138 lt!1402097 (_2!24050 (v!39501 lt!1402071))))))

(declare-fun lt!1402088 () Unit!61302)

(assert (=> b!3985397 (= lt!1402088 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402097 (_2!24050 (v!39501 lt!1402071))))))

(declare-fun lt!1402119 () Int)

(declare-fun lt!1402120 () TokenValue!6966)

(assert (=> b!3985397 (= lt!1402090 (Some!9149 (tuple2!41833 (Token!12611 lt!1402120 (rule!9748 (_1!24050 (v!39501 lt!1402071))) lt!1402119 lt!1402097) (_2!24050 (v!39501 lt!1402071)))))))

(declare-fun lt!1402095 () List!42740)

(declare-datatypes ((LexerInterface!6325 0))(
  ( (LexerInterfaceExt!6322 (__x!26150 Int)) (Lexer!6323) )
))
(declare-fun thiss!21717 () LexerInterface!6325)

(declare-fun maxPrefixOneRule!2657 (LexerInterface!6325 Rule!13272 List!42740) Option!9150)

(assert (=> b!3985397 (= lt!1402090 (maxPrefixOneRule!2657 thiss!21717 (rule!9748 (_1!24050 (v!39501 lt!1402071))) lt!1402095))))

(declare-fun size!31877 (List!42740) Int)

(assert (=> b!3985397 (= lt!1402119 (size!31877 lt!1402097))))

(declare-fun apply!9947 (TokenValueInjection!13360 BalanceConc!25488) TokenValue!6966)

(declare-fun seqFromList!4975 (List!42740) BalanceConc!25488)

(assert (=> b!3985397 (= lt!1402120 (apply!9947 (transformation!6736 (rule!9748 (_1!24050 (v!39501 lt!1402071)))) (seqFromList!4975 lt!1402097)))))

(declare-datatypes ((List!42742 0))(
  ( (Nil!42618) (Cons!42618 (h!48038 Rule!13272) (t!331541 List!42742)) )
))
(declare-fun rules!2999 () List!42742)

(declare-fun lt!1402072 () Unit!61302)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1479 (LexerInterface!6325 List!42742 List!42740 List!42740 List!42740 Rule!13272) Unit!61302)

(assert (=> b!3985397 (= lt!1402072 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1479 thiss!21717 rules!2999 lt!1402097 lt!1402095 (_2!24050 (v!39501 lt!1402071)) (rule!9748 (_1!24050 (v!39501 lt!1402071)))))))

(declare-fun list!15820 (BalanceConc!25488) List!42740)

(declare-fun charsOf!4552 (Token!12610) BalanceConc!25488)

(assert (=> b!3985397 (= lt!1402097 (list!15820 (charsOf!4552 (_1!24050 (v!39501 lt!1402071)))))))

(declare-fun lt!1402125 () Unit!61302)

(declare-fun lemmaInv!951 (TokenValueInjection!13360) Unit!61302)

(assert (=> b!3985397 (= lt!1402125 (lemmaInv!951 (transformation!6736 (rule!9748 (_1!24050 (v!39501 lt!1402071))))))))

(declare-fun ruleValid!2668 (LexerInterface!6325 Rule!13272) Bool)

(assert (=> b!3985397 (ruleValid!2668 thiss!21717 (rule!9748 (_1!24050 (v!39501 lt!1402071))))))

(declare-fun lt!1402110 () Unit!61302)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1742 (LexerInterface!6325 Rule!13272 List!42742) Unit!61302)

(assert (=> b!3985397 (= lt!1402110 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1742 thiss!21717 (rule!9748 (_1!24050 (v!39501 lt!1402071))) rules!2999))))

(declare-fun lt!1402101 () Unit!61302)

(declare-fun token!484 () Token!12610)

(declare-fun lemmaCharactersSize!1331 (Token!12610) Unit!61302)

(assert (=> b!3985397 (= lt!1402101 (lemmaCharactersSize!1331 token!484))))

(declare-fun lt!1402113 () Unit!61302)

(assert (=> b!3985397 (= lt!1402113 (lemmaCharactersSize!1331 (_1!24050 (v!39501 lt!1402071))))))

(declare-fun b!3985398 () Bool)

(declare-fun res!1616214 () Bool)

(declare-fun e!2470141 () Bool)

(assert (=> b!3985398 (=> (not res!1616214) (not e!2470141))))

(declare-fun isEmpty!25476 (List!42742) Bool)

(assert (=> b!3985398 (= res!1616214 (not (isEmpty!25476 rules!2999)))))

(declare-fun b!3985399 () Bool)

(declare-fun e!2470128 () Bool)

(declare-fun e!2470135 () Bool)

(assert (=> b!3985399 (= e!2470128 e!2470135)))

(declare-fun res!1616237 () Bool)

(assert (=> b!3985399 (=> (not res!1616237) (not e!2470135))))

(declare-fun lt!1402121 () Option!9150)

(declare-fun lt!1402077 () List!42740)

(declare-fun maxPrefix!3623 (LexerInterface!6325 List!42742 List!42740) Option!9150)

(assert (=> b!3985399 (= res!1616237 (= (maxPrefix!3623 thiss!21717 rules!2999 lt!1402077) lt!1402121))))

(declare-fun lt!1402115 () tuple2!41832)

(assert (=> b!3985399 (= lt!1402121 (Some!9149 lt!1402115))))

(declare-fun suffixResult!105 () List!42740)

(assert (=> b!3985399 (= lt!1402115 (tuple2!41833 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!42740)

(declare-fun suffix!1299 () List!42740)

(assert (=> b!3985399 (= lt!1402077 (++!11138 prefix!494 suffix!1299))))

(declare-fun b!3985401 () Bool)

(declare-fun e!2470144 () Bool)

(assert (=> b!3985401 (= e!2470141 e!2470144)))

(declare-fun res!1616228 () Bool)

(assert (=> b!3985401 (=> (not res!1616228) (not e!2470144))))

(declare-fun lt!1402082 () Int)

(declare-fun lt!1402074 () Int)

(assert (=> b!3985401 (= res!1616228 (>= lt!1402082 lt!1402074))))

(declare-fun lt!1402092 () List!42740)

(assert (=> b!3985401 (= lt!1402074 (size!31877 lt!1402092))))

(assert (=> b!3985401 (= lt!1402082 (size!31877 prefix!494))))

(assert (=> b!3985401 (= lt!1402092 (list!15820 (charsOf!4552 token!484)))))

(declare-fun b!3985402 () Bool)

(declare-fun e!2470152 () Bool)

(assert (=> b!3985402 (= e!2470152 (and (= (size!31876 token!484) lt!1402074) (= (originalCharacters!7336 token!484) lt!1402092)))))

(declare-fun e!2470133 () Bool)

(assert (=> b!3985403 (= e!2470133 (and tp!1214502 tp!1214505))))

(declare-fun b!3985404 () Bool)

(declare-fun e!2470155 () Bool)

(declare-fun tp_is_empty!20253 () Bool)

(declare-fun tp!1214507 () Bool)

(assert (=> b!3985404 (= e!2470155 (and tp_is_empty!20253 tp!1214507))))

(declare-fun b!3985405 () Bool)

(declare-fun res!1616223 () Bool)

(declare-fun e!2470146 () Bool)

(assert (=> b!3985405 (=> res!1616223 e!2470146)))

(declare-fun contains!8481 (List!42742 Rule!13272) Bool)

(assert (=> b!3985405 (= res!1616223 (not (contains!8481 rules!2999 (rule!9748 (_1!24050 (v!39501 lt!1402071))))))))

(declare-fun b!3985406 () Bool)

(declare-fun res!1616235 () Bool)

(assert (=> b!3985406 (=> (not res!1616235) (not e!2470141))))

(declare-fun newSuffix!27 () List!42740)

(assert (=> b!3985406 (= res!1616235 (isPrefix!3823 newSuffix!27 suffix!1299))))

(declare-fun b!3985407 () Bool)

(declare-fun res!1616221 () Bool)

(assert (=> b!3985407 (=> (not res!1616221) (not e!2470152))))

(assert (=> b!3985407 (= res!1616221 (= (size!31876 token!484) (size!31877 (originalCharacters!7336 token!484))))))

(declare-fun b!3985408 () Bool)

(declare-fun e!2470142 () Bool)

(assert (=> b!3985408 (= e!2470142 e!2470157)))

(declare-fun res!1616220 () Bool)

(assert (=> b!3985408 (=> res!1616220 e!2470157)))

(get-info :version)

(assert (=> b!3985408 (= res!1616220 (not ((_ is Some!9149) lt!1402071)))))

(assert (=> b!3985408 (= lt!1402071 (maxPrefix!3623 thiss!21717 rules!2999 lt!1402095))))

(declare-fun lt!1402111 () Token!12610)

(declare-fun lt!1402098 () List!42740)

(assert (=> b!3985408 (and (= suffixResult!105 lt!1402098) (= lt!1402115 (tuple2!41833 lt!1402111 lt!1402098)))))

(declare-fun lt!1402104 () Unit!61302)

(declare-fun lemmaSamePrefixThenSameSuffix!2010 (List!42740 List!42740 List!42740 List!42740 List!42740) Unit!61302)

(assert (=> b!3985408 (= lt!1402104 (lemmaSamePrefixThenSameSuffix!2010 lt!1402092 suffixResult!105 lt!1402092 lt!1402098 lt!1402077))))

(declare-fun lt!1402117 () List!42740)

(assert (=> b!3985408 (isPrefix!3823 lt!1402092 lt!1402117)))

(declare-fun lt!1402091 () Unit!61302)

(assert (=> b!3985408 (= lt!1402091 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402092 lt!1402098))))

(declare-fun b!3985409 () Bool)

(declare-fun e!2470127 () Bool)

(declare-fun e!2470130 () Bool)

(assert (=> b!3985409 (= e!2470127 e!2470130)))

(declare-fun res!1616213 () Bool)

(assert (=> b!3985409 (=> res!1616213 e!2470130)))

(declare-fun matchR!5618 (Regex!11641 List!42740) Bool)

(assert (=> b!3985409 (= res!1616213 (not (matchR!5618 (regex!6736 (rule!9748 token!484)) lt!1402092)))))

(assert (=> b!3985409 (isPrefix!3823 lt!1402092 lt!1402095)))

(declare-fun lt!1402099 () Unit!61302)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!656 (List!42740 List!42740 List!42740) Unit!61302)

(assert (=> b!3985409 (= lt!1402099 (lemmaPrefixStaysPrefixWhenAddingToSuffix!656 lt!1402092 prefix!494 newSuffix!27))))

(declare-fun lt!1402107 () Unit!61302)

(assert (=> b!3985409 (= lt!1402107 (lemmaPrefixStaysPrefixWhenAddingToSuffix!656 lt!1402092 prefix!494 suffix!1299))))

(declare-fun e!2470143 () Bool)

(declare-fun tp!1214501 () Bool)

(declare-fun e!2470140 () Bool)

(declare-fun b!3985410 () Bool)

(declare-fun inv!21 (TokenValue!6966) Bool)

(assert (=> b!3985410 (= e!2470143 (and (inv!21 (value!212610 token!484)) e!2470140 tp!1214501))))

(declare-fun b!3985411 () Bool)

(declare-fun e!2470147 () Bool)

(assert (=> b!3985411 (= e!2470132 e!2470147)))

(declare-fun res!1616225 () Bool)

(assert (=> b!3985411 (=> res!1616225 e!2470147)))

(declare-fun lt!1402096 () List!42740)

(assert (=> b!3985411 (= res!1616225 (not (= lt!1402096 suffix!1299)))))

(declare-fun lt!1402089 () List!42740)

(assert (=> b!3985411 (= lt!1402096 (++!11138 newSuffix!27 lt!1402089))))

(declare-fun getSuffix!2254 (List!42740 List!42740) List!42740)

(assert (=> b!3985411 (= lt!1402089 (getSuffix!2254 suffix!1299 newSuffix!27))))

(declare-fun b!3985412 () Bool)

(declare-fun e!2470137 () Bool)

(declare-fun e!2470158 () Bool)

(assert (=> b!3985412 (= e!2470137 e!2470158)))

(declare-fun res!1616217 () Bool)

(assert (=> b!3985412 (=> res!1616217 e!2470158)))

(declare-fun lt!1402078 () List!42740)

(assert (=> b!3985412 (= res!1616217 (not (= lt!1402078 lt!1402095)))))

(declare-fun lt!1402087 () List!42740)

(assert (=> b!3985412 (= lt!1402078 (++!11138 lt!1402097 lt!1402087))))

(assert (=> b!3985412 (= lt!1402087 (getSuffix!2254 lt!1402095 lt!1402097))))

(declare-fun res!1616222 () Bool)

(assert (=> start!375104 (=> (not res!1616222) (not e!2470141))))

(assert (=> start!375104 (= res!1616222 ((_ is Lexer!6323) thiss!21717))))

(assert (=> start!375104 e!2470141))

(declare-fun e!2470154 () Bool)

(assert (=> start!375104 e!2470154))

(declare-fun inv!56927 (Token!12610) Bool)

(assert (=> start!375104 (and (inv!56927 token!484) e!2470143)))

(assert (=> start!375104 e!2470155))

(declare-fun e!2470156 () Bool)

(assert (=> start!375104 e!2470156))

(declare-fun e!2470131 () Bool)

(assert (=> start!375104 e!2470131))

(assert (=> start!375104 true))

(declare-fun e!2470148 () Bool)

(assert (=> start!375104 e!2470148))

(declare-fun e!2470138 () Bool)

(assert (=> start!375104 e!2470138))

(declare-fun b!3985400 () Bool)

(declare-fun res!1616226 () Bool)

(assert (=> b!3985400 (=> res!1616226 e!2470137)))

(assert (=> b!3985400 (= res!1616226 (not (= lt!1402112 lt!1402095)))))

(declare-fun b!3985413 () Bool)

(declare-fun tp!1214500 () Bool)

(assert (=> b!3985413 (= e!2470138 (and tp_is_empty!20253 tp!1214500))))

(declare-fun b!3985414 () Bool)

(declare-fun e!2470134 () Bool)

(declare-fun tp!1214510 () Bool)

(assert (=> b!3985414 (= e!2470148 (and e!2470134 tp!1214510))))

(declare-fun b!3985415 () Bool)

(declare-fun res!1616227 () Bool)

(assert (=> b!3985415 (=> res!1616227 e!2470146)))

(assert (=> b!3985415 (= res!1616227 (not (isPrefix!3823 lt!1402097 lt!1402095)))))

(declare-fun b!3985416 () Bool)

(declare-fun res!1616219 () Bool)

(assert (=> b!3985416 (=> res!1616219 e!2470146)))

(assert (=> b!3985416 (= res!1616219 (not (contains!8481 rules!2999 (rule!9748 token!484))))))

(declare-fun b!3985417 () Bool)

(declare-fun e!2470145 () Bool)

(assert (=> b!3985417 (= e!2470135 (not e!2470145))))

(declare-fun res!1616240 () Bool)

(assert (=> b!3985417 (=> res!1616240 e!2470145)))

(declare-fun lt!1402093 () List!42740)

(assert (=> b!3985417 (= res!1616240 (not (= lt!1402093 lt!1402077)))))

(assert (=> b!3985417 (= lt!1402093 (++!11138 lt!1402092 suffixResult!105))))

(declare-fun lt!1402109 () Unit!61302)

(assert (=> b!3985417 (= lt!1402109 (lemmaInv!951 (transformation!6736 (rule!9748 token!484))))))

(assert (=> b!3985417 (ruleValid!2668 thiss!21717 (rule!9748 token!484))))

(declare-fun lt!1402084 () Unit!61302)

(assert (=> b!3985417 (= lt!1402084 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1742 thiss!21717 (rule!9748 token!484) rules!2999))))

(declare-fun b!3985418 () Bool)

(declare-fun e!2470151 () Bool)

(assert (=> b!3985418 (= e!2470151 e!2470127)))

(declare-fun res!1616234 () Bool)

(assert (=> b!3985418 (=> res!1616234 e!2470127)))

(declare-fun lt!1402118 () Option!9150)

(assert (=> b!3985418 (= res!1616234 (not (= lt!1402118 lt!1402121)))))

(assert (=> b!3985418 (= lt!1402118 (Some!9149 (tuple2!41833 lt!1402111 suffixResult!105)))))

(assert (=> b!3985418 (= lt!1402118 (maxPrefixOneRule!2657 thiss!21717 (rule!9748 token!484) lt!1402077))))

(declare-fun lt!1402079 () TokenValue!6966)

(assert (=> b!3985418 (= lt!1402111 (Token!12611 lt!1402079 (rule!9748 token!484) lt!1402074 lt!1402092))))

(assert (=> b!3985418 (= lt!1402079 (apply!9947 (transformation!6736 (rule!9748 token!484)) (seqFromList!4975 lt!1402092)))))

(declare-fun lt!1402073 () Unit!61302)

(assert (=> b!3985418 (= lt!1402073 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1479 thiss!21717 rules!2999 lt!1402092 lt!1402077 suffixResult!105 (rule!9748 token!484)))))

(declare-fun lt!1402081 () List!42740)

(assert (=> b!3985418 (= lt!1402081 suffixResult!105)))

(declare-fun lt!1402076 () Unit!61302)

(assert (=> b!3985418 (= lt!1402076 (lemmaSamePrefixThenSameSuffix!2010 lt!1402092 lt!1402081 lt!1402092 suffixResult!105 lt!1402077))))

(declare-fun lt!1402080 () List!42740)

(assert (=> b!3985418 (isPrefix!3823 lt!1402092 lt!1402080)))

(declare-fun lt!1402116 () Unit!61302)

(assert (=> b!3985418 (= lt!1402116 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402092 lt!1402081))))

(declare-fun e!2470153 () Bool)

(assert (=> b!3985419 (= e!2470153 (and tp!1214511 tp!1214504))))

(declare-fun b!3985420 () Bool)

(assert (=> b!3985420 (= e!2470130 e!2470142)))

(declare-fun res!1616215 () Bool)

(assert (=> b!3985420 (=> res!1616215 e!2470142)))

(assert (=> b!3985420 (= res!1616215 (not (= lt!1402117 lt!1402077)))))

(assert (=> b!3985420 (= lt!1402117 (++!11138 lt!1402092 lt!1402098))))

(assert (=> b!3985420 (= lt!1402098 (getSuffix!2254 lt!1402077 lt!1402092))))

(assert (=> b!3985420 e!2470152))

(declare-fun res!1616236 () Bool)

(assert (=> b!3985420 (=> (not res!1616236) (not e!2470152))))

(assert (=> b!3985420 (= res!1616236 (isPrefix!3823 lt!1402077 lt!1402077))))

(declare-fun lt!1402094 () Unit!61302)

(declare-fun lemmaIsPrefixRefl!2415 (List!42740 List!42740) Unit!61302)

(assert (=> b!3985420 (= lt!1402094 (lemmaIsPrefixRefl!2415 lt!1402077 lt!1402077))))

(declare-fun b!3985421 () Bool)

(declare-fun tp!1214512 () Bool)

(assert (=> b!3985421 (= e!2470154 (and tp_is_empty!20253 tp!1214512))))

(declare-fun b!3985422 () Bool)

(declare-fun res!1616231 () Bool)

(assert (=> b!3985422 (=> (not res!1616231) (not e!2470141))))

(declare-fun rulesInvariant!5668 (LexerInterface!6325 List!42742) Bool)

(assert (=> b!3985422 (= res!1616231 (rulesInvariant!5668 thiss!21717 rules!2999))))

(declare-fun b!3985423 () Bool)

(assert (=> b!3985423 (= e!2470158 e!2470146)))

(declare-fun res!1616230 () Bool)

(assert (=> b!3985423 (=> res!1616230 e!2470146)))

(assert (=> b!3985423 (= res!1616230 (<= lt!1402119 lt!1402074))))

(assert (=> b!3985423 (= (_2!24050 (v!39501 lt!1402071)) lt!1402087)))

(declare-fun lt!1402086 () Unit!61302)

(assert (=> b!3985423 (= lt!1402086 (lemmaSamePrefixThenSameSuffix!2010 lt!1402097 (_2!24050 (v!39501 lt!1402071)) lt!1402097 lt!1402087 lt!1402095))))

(assert (=> b!3985423 (isPrefix!3823 lt!1402097 lt!1402078)))

(declare-fun lt!1402124 () Unit!61302)

(assert (=> b!3985423 (= lt!1402124 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402097 lt!1402087))))

(declare-fun b!3985424 () Bool)

(declare-fun tp!1214509 () Bool)

(assert (=> b!3985424 (= e!2470131 (and tp_is_empty!20253 tp!1214509))))

(declare-fun b!3985425 () Bool)

(declare-fun res!1616232 () Bool)

(assert (=> b!3985425 (=> (not res!1616232) (not e!2470152))))

(assert (=> b!3985425 (= res!1616232 (= (value!212610 token!484) lt!1402079))))

(declare-fun b!3985426 () Bool)

(declare-fun e!2470150 () Bool)

(assert (=> b!3985426 (= e!2470147 e!2470150)))

(declare-fun res!1616218 () Bool)

(assert (=> b!3985426 (=> res!1616218 e!2470150)))

(declare-fun lt!1402100 () List!42740)

(assert (=> b!3985426 (= res!1616218 (not (= lt!1402100 lt!1402077)))))

(assert (=> b!3985426 (= lt!1402100 (++!11138 prefix!494 lt!1402096))))

(assert (=> b!3985426 (= lt!1402100 (++!11138 lt!1402095 lt!1402089))))

(declare-fun lt!1402123 () Unit!61302)

(declare-fun lemmaConcatAssociativity!2458 (List!42740 List!42740 List!42740) Unit!61302)

(assert (=> b!3985426 (= lt!1402123 (lemmaConcatAssociativity!2458 prefix!494 newSuffix!27 lt!1402089))))

(declare-fun b!3985427 () Bool)

(declare-fun tp!1214506 () Bool)

(declare-fun inv!56924 (String!48548) Bool)

(declare-fun inv!56928 (TokenValueInjection!13360) Bool)

(assert (=> b!3985427 (= e!2470140 (and tp!1214506 (inv!56924 (tag!7596 (rule!9748 token!484))) (inv!56928 (transformation!6736 (rule!9748 token!484))) e!2470133))))

(declare-fun b!3985428 () Bool)

(assert (=> b!3985428 (= e!2470146 true)))

(declare-fun lt!1402075 () Int)

(assert (=> b!3985428 (= lt!1402075 (size!31877 lt!1402077))))

(declare-fun tp!1214503 () Bool)

(declare-fun b!3985429 () Bool)

(assert (=> b!3985429 (= e!2470134 (and tp!1214503 (inv!56924 (tag!7596 (h!48038 rules!2999))) (inv!56928 (transformation!6736 (h!48038 rules!2999))) e!2470153))))

(declare-fun b!3985430 () Bool)

(declare-fun e!2470149 () Bool)

(assert (=> b!3985430 (= e!2470145 e!2470149)))

(declare-fun res!1616229 () Bool)

(assert (=> b!3985430 (=> res!1616229 e!2470149)))

(assert (=> b!3985430 (= res!1616229 (not (isPrefix!3823 lt!1402092 lt!1402077)))))

(assert (=> b!3985430 (isPrefix!3823 prefix!494 lt!1402077)))

(declare-fun lt!1402108 () Unit!61302)

(assert (=> b!3985430 (= lt!1402108 (lemmaConcatTwoListThenFirstIsPrefix!2666 prefix!494 suffix!1299))))

(assert (=> b!3985430 (isPrefix!3823 lt!1402092 lt!1402093)))

(declare-fun lt!1402085 () Unit!61302)

(assert (=> b!3985430 (= lt!1402085 (lemmaConcatTwoListThenFirstIsPrefix!2666 lt!1402092 suffixResult!105))))

(declare-fun b!3985431 () Bool)

(declare-fun tp!1214508 () Bool)

(assert (=> b!3985431 (= e!2470156 (and tp_is_empty!20253 tp!1214508))))

(declare-fun b!3985432 () Bool)

(declare-fun e!2470139 () Bool)

(assert (=> b!3985432 (= e!2470139 e!2470151)))

(declare-fun res!1616212 () Bool)

(assert (=> b!3985432 (=> res!1616212 e!2470151)))

(declare-fun lt!1402102 () List!42740)

(assert (=> b!3985432 (= res!1616212 (or (not (= lt!1402077 lt!1402102)) (not (= lt!1402077 lt!1402080))))))

(assert (=> b!3985432 (= lt!1402102 lt!1402080)))

(assert (=> b!3985432 (= lt!1402080 (++!11138 lt!1402092 lt!1402081))))

(declare-fun lt!1402106 () List!42740)

(assert (=> b!3985432 (= lt!1402102 (++!11138 lt!1402106 suffix!1299))))

(declare-fun lt!1402122 () List!42740)

(assert (=> b!3985432 (= lt!1402081 (++!11138 lt!1402122 suffix!1299))))

(declare-fun lt!1402114 () Unit!61302)

(assert (=> b!3985432 (= lt!1402114 (lemmaConcatAssociativity!2458 lt!1402092 lt!1402122 suffix!1299))))

(declare-fun b!3985433 () Bool)

(assert (=> b!3985433 (= e!2470144 e!2470128)))

(declare-fun res!1616233 () Bool)

(assert (=> b!3985433 (=> (not res!1616233) (not e!2470128))))

(declare-fun lt!1402070 () List!42740)

(assert (=> b!3985433 (= res!1616233 (= lt!1402070 lt!1402095))))

(assert (=> b!3985433 (= lt!1402095 (++!11138 prefix!494 newSuffix!27))))

(assert (=> b!3985433 (= lt!1402070 (++!11138 lt!1402092 newSuffixResult!27))))

(declare-fun b!3985434 () Bool)

(declare-fun res!1616216 () Bool)

(assert (=> b!3985434 (=> (not res!1616216) (not e!2470141))))

(assert (=> b!3985434 (= res!1616216 (>= (size!31877 suffix!1299) (size!31877 newSuffix!27)))))

(declare-fun b!3985435 () Bool)

(assert (=> b!3985435 (= e!2470150 e!2470137)))

(declare-fun res!1616239 () Bool)

(assert (=> b!3985435 (=> res!1616239 e!2470137)))

(assert (=> b!3985435 (= res!1616239 (not (isPrefix!3823 lt!1402097 lt!1402077)))))

(assert (=> b!3985435 (isPrefix!3823 lt!1402097 lt!1402100)))

(declare-fun lt!1402105 () Unit!61302)

(assert (=> b!3985435 (= lt!1402105 (lemmaPrefixStaysPrefixWhenAddingToSuffix!656 lt!1402097 lt!1402095 lt!1402089))))

(declare-fun b!3985436 () Bool)

(assert (=> b!3985436 (= e!2470149 e!2470139)))

(declare-fun res!1616238 () Bool)

(assert (=> b!3985436 (=> res!1616238 e!2470139)))

(assert (=> b!3985436 (= res!1616238 (not (= lt!1402106 prefix!494)))))

(assert (=> b!3985436 (= lt!1402106 (++!11138 lt!1402092 lt!1402122))))

(assert (=> b!3985436 (= lt!1402122 (getSuffix!2254 prefix!494 lt!1402092))))

(assert (=> b!3985436 (isPrefix!3823 lt!1402092 prefix!494)))

(declare-fun lt!1402083 () Unit!61302)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!401 (List!42740 List!42740 List!42740) Unit!61302)

(assert (=> b!3985436 (= lt!1402083 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!401 prefix!494 lt!1402092 lt!1402077))))

(assert (= (and start!375104 res!1616222) b!3985398))

(assert (= (and b!3985398 res!1616214) b!3985422))

(assert (= (and b!3985422 res!1616231) b!3985434))

(assert (= (and b!3985434 res!1616216) b!3985406))

(assert (= (and b!3985406 res!1616235) b!3985401))

(assert (= (and b!3985401 res!1616228) b!3985433))

(assert (= (and b!3985433 res!1616233) b!3985399))

(assert (= (and b!3985399 res!1616237) b!3985417))

(assert (= (and b!3985417 (not res!1616240)) b!3985430))

(assert (= (and b!3985430 (not res!1616229)) b!3985436))

(assert (= (and b!3985436 (not res!1616238)) b!3985432))

(assert (= (and b!3985432 (not res!1616212)) b!3985418))

(assert (= (and b!3985418 (not res!1616234)) b!3985409))

(assert (= (and b!3985409 (not res!1616213)) b!3985420))

(assert (= (and b!3985420 res!1616236) b!3985425))

(assert (= (and b!3985425 res!1616232) b!3985407))

(assert (= (and b!3985407 res!1616221) b!3985402))

(assert (= (and b!3985420 (not res!1616215)) b!3985408))

(assert (= (and b!3985408 (not res!1616220)) b!3985397))

(assert (= (and b!3985397 (not res!1616224)) b!3985411))

(assert (= (and b!3985411 (not res!1616225)) b!3985426))

(assert (= (and b!3985426 (not res!1616218)) b!3985435))

(assert (= (and b!3985435 (not res!1616239)) b!3985400))

(assert (= (and b!3985400 (not res!1616226)) b!3985412))

(assert (= (and b!3985412 (not res!1616217)) b!3985423))

(assert (= (and b!3985423 (not res!1616230)) b!3985415))

(assert (= (and b!3985415 (not res!1616227)) b!3985416))

(assert (= (and b!3985416 (not res!1616219)) b!3985405))

(assert (= (and b!3985405 (not res!1616223)) b!3985428))

(assert (= (and start!375104 ((_ is Cons!42616) prefix!494)) b!3985421))

(assert (= b!3985427 b!3985403))

(assert (= b!3985410 b!3985427))

(assert (= start!375104 b!3985410))

(assert (= (and start!375104 ((_ is Cons!42616) suffixResult!105)) b!3985404))

(assert (= (and start!375104 ((_ is Cons!42616) suffix!1299)) b!3985431))

(assert (= (and start!375104 ((_ is Cons!42616) newSuffix!27)) b!3985424))

(assert (= b!3985429 b!3985419))

(assert (= b!3985414 b!3985429))

(assert (= (and start!375104 ((_ is Cons!42618) rules!2999)) b!3985414))

(assert (= (and start!375104 ((_ is Cons!42616) newSuffixResult!27)) b!3985413))

(declare-fun m!4561243 () Bool)

(assert (=> b!3985412 m!4561243))

(declare-fun m!4561245 () Bool)

(assert (=> b!3985412 m!4561245))

(declare-fun m!4561247 () Bool)

(assert (=> b!3985409 m!4561247))

(declare-fun m!4561249 () Bool)

(assert (=> b!3985409 m!4561249))

(declare-fun m!4561251 () Bool)

(assert (=> b!3985409 m!4561251))

(declare-fun m!4561253 () Bool)

(assert (=> b!3985409 m!4561253))

(declare-fun m!4561255 () Bool)

(assert (=> b!3985427 m!4561255))

(declare-fun m!4561257 () Bool)

(assert (=> b!3985427 m!4561257))

(declare-fun m!4561259 () Bool)

(assert (=> b!3985426 m!4561259))

(declare-fun m!4561261 () Bool)

(assert (=> b!3985426 m!4561261))

(declare-fun m!4561263 () Bool)

(assert (=> b!3985426 m!4561263))

(declare-fun m!4561265 () Bool)

(assert (=> b!3985408 m!4561265))

(declare-fun m!4561267 () Bool)

(assert (=> b!3985408 m!4561267))

(declare-fun m!4561269 () Bool)

(assert (=> b!3985408 m!4561269))

(declare-fun m!4561271 () Bool)

(assert (=> b!3985408 m!4561271))

(declare-fun m!4561273 () Bool)

(assert (=> b!3985416 m!4561273))

(declare-fun m!4561275 () Bool)

(assert (=> b!3985432 m!4561275))

(declare-fun m!4561277 () Bool)

(assert (=> b!3985432 m!4561277))

(declare-fun m!4561279 () Bool)

(assert (=> b!3985432 m!4561279))

(declare-fun m!4561281 () Bool)

(assert (=> b!3985432 m!4561281))

(declare-fun m!4561283 () Bool)

(assert (=> b!3985415 m!4561283))

(declare-fun m!4561285 () Bool)

(assert (=> b!3985435 m!4561285))

(declare-fun m!4561287 () Bool)

(assert (=> b!3985435 m!4561287))

(declare-fun m!4561289 () Bool)

(assert (=> b!3985435 m!4561289))

(declare-fun m!4561291 () Bool)

(assert (=> b!3985397 m!4561291))

(declare-fun m!4561293 () Bool)

(assert (=> b!3985397 m!4561293))

(declare-fun m!4561295 () Bool)

(assert (=> b!3985397 m!4561295))

(declare-fun m!4561297 () Bool)

(assert (=> b!3985397 m!4561297))

(declare-fun m!4561299 () Bool)

(assert (=> b!3985397 m!4561299))

(declare-fun m!4561301 () Bool)

(assert (=> b!3985397 m!4561301))

(declare-fun m!4561303 () Bool)

(assert (=> b!3985397 m!4561303))

(declare-fun m!4561305 () Bool)

(assert (=> b!3985397 m!4561305))

(declare-fun m!4561307 () Bool)

(assert (=> b!3985397 m!4561307))

(declare-fun m!4561309 () Bool)

(assert (=> b!3985397 m!4561309))

(assert (=> b!3985397 m!4561305))

(declare-fun m!4561311 () Bool)

(assert (=> b!3985397 m!4561311))

(declare-fun m!4561313 () Bool)

(assert (=> b!3985397 m!4561313))

(declare-fun m!4561315 () Bool)

(assert (=> b!3985397 m!4561315))

(declare-fun m!4561317 () Bool)

(assert (=> b!3985397 m!4561317))

(assert (=> b!3985397 m!4561313))

(declare-fun m!4561319 () Bool)

(assert (=> b!3985397 m!4561319))

(assert (=> b!3985397 m!4561291))

(declare-fun m!4561321 () Bool)

(assert (=> b!3985397 m!4561321))

(declare-fun m!4561323 () Bool)

(assert (=> b!3985397 m!4561323))

(declare-fun m!4561325 () Bool)

(assert (=> b!3985397 m!4561325))

(declare-fun m!4561327 () Bool)

(assert (=> start!375104 m!4561327))

(declare-fun m!4561329 () Bool)

(assert (=> b!3985429 m!4561329))

(declare-fun m!4561331 () Bool)

(assert (=> b!3985429 m!4561331))

(declare-fun m!4561333 () Bool)

(assert (=> b!3985418 m!4561333))

(declare-fun m!4561335 () Bool)

(assert (=> b!3985418 m!4561335))

(declare-fun m!4561337 () Bool)

(assert (=> b!3985418 m!4561337))

(declare-fun m!4561339 () Bool)

(assert (=> b!3985418 m!4561339))

(assert (=> b!3985418 m!4561335))

(declare-fun m!4561341 () Bool)

(assert (=> b!3985418 m!4561341))

(declare-fun m!4561343 () Bool)

(assert (=> b!3985418 m!4561343))

(declare-fun m!4561345 () Bool)

(assert (=> b!3985418 m!4561345))

(declare-fun m!4561347 () Bool)

(assert (=> b!3985422 m!4561347))

(declare-fun m!4561349 () Bool)

(assert (=> b!3985410 m!4561349))

(declare-fun m!4561351 () Bool)

(assert (=> b!3985417 m!4561351))

(declare-fun m!4561353 () Bool)

(assert (=> b!3985417 m!4561353))

(declare-fun m!4561355 () Bool)

(assert (=> b!3985417 m!4561355))

(declare-fun m!4561357 () Bool)

(assert (=> b!3985417 m!4561357))

(declare-fun m!4561359 () Bool)

(assert (=> b!3985399 m!4561359))

(declare-fun m!4561361 () Bool)

(assert (=> b!3985399 m!4561361))

(declare-fun m!4561363 () Bool)

(assert (=> b!3985436 m!4561363))

(declare-fun m!4561365 () Bool)

(assert (=> b!3985436 m!4561365))

(declare-fun m!4561367 () Bool)

(assert (=> b!3985436 m!4561367))

(declare-fun m!4561369 () Bool)

(assert (=> b!3985436 m!4561369))

(declare-fun m!4561371 () Bool)

(assert (=> b!3985428 m!4561371))

(declare-fun m!4561373 () Bool)

(assert (=> b!3985433 m!4561373))

(declare-fun m!4561375 () Bool)

(assert (=> b!3985433 m!4561375))

(declare-fun m!4561377 () Bool)

(assert (=> b!3985406 m!4561377))

(declare-fun m!4561379 () Bool)

(assert (=> b!3985411 m!4561379))

(declare-fun m!4561381 () Bool)

(assert (=> b!3985411 m!4561381))

(declare-fun m!4561383 () Bool)

(assert (=> b!3985398 m!4561383))

(declare-fun m!4561385 () Bool)

(assert (=> b!3985401 m!4561385))

(declare-fun m!4561387 () Bool)

(assert (=> b!3985401 m!4561387))

(declare-fun m!4561389 () Bool)

(assert (=> b!3985401 m!4561389))

(assert (=> b!3985401 m!4561389))

(declare-fun m!4561391 () Bool)

(assert (=> b!3985401 m!4561391))

(declare-fun m!4561393 () Bool)

(assert (=> b!3985407 m!4561393))

(declare-fun m!4561395 () Bool)

(assert (=> b!3985420 m!4561395))

(declare-fun m!4561397 () Bool)

(assert (=> b!3985420 m!4561397))

(declare-fun m!4561399 () Bool)

(assert (=> b!3985420 m!4561399))

(declare-fun m!4561401 () Bool)

(assert (=> b!3985420 m!4561401))

(declare-fun m!4561403 () Bool)

(assert (=> b!3985423 m!4561403))

(declare-fun m!4561405 () Bool)

(assert (=> b!3985423 m!4561405))

(declare-fun m!4561407 () Bool)

(assert (=> b!3985423 m!4561407))

(declare-fun m!4561409 () Bool)

(assert (=> b!3985434 m!4561409))

(declare-fun m!4561411 () Bool)

(assert (=> b!3985434 m!4561411))

(declare-fun m!4561413 () Bool)

(assert (=> b!3985405 m!4561413))

(declare-fun m!4561415 () Bool)

(assert (=> b!3985430 m!4561415))

(declare-fun m!4561417 () Bool)

(assert (=> b!3985430 m!4561417))

(declare-fun m!4561419 () Bool)

(assert (=> b!3985430 m!4561419))

(declare-fun m!4561421 () Bool)

(assert (=> b!3985430 m!4561421))

(declare-fun m!4561423 () Bool)

(assert (=> b!3985430 m!4561423))

(check-sat (not b!3985409) (not b!3985424) (not b!3985410) (not b!3985428) b_and!306293 (not b!3985397) (not b!3985416) (not b!3985399) (not b!3985418) (not b_next!111361) b_and!306291 (not b!3985412) tp_is_empty!20253 (not b!3985423) (not b_next!111367) (not b!3985421) (not b!3985398) (not b!3985429) (not b!3985405) (not b!3985434) (not b!3985430) (not b!3985436) (not b!3985432) (not b!3985408) b_and!306289 (not b!3985426) (not b!3985427) (not b!3985420) (not b!3985406) (not b!3985407) (not b!3985417) (not b!3985431) (not b!3985411) (not b!3985415) (not b_next!111365) (not b!3985404) (not b!3985401) (not b!3985414) (not start!375104) (not b!3985433) (not b!3985422) (not b!3985435) (not b_next!111363) b_and!306287 (not b!3985413))
(check-sat (not b_next!111367) b_and!306293 b_and!306289 (not b_next!111361) b_and!306291 (not b_next!111365) (not b_next!111363) b_and!306287)

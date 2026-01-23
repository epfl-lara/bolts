; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223360 () Bool)

(assert start!223360)

(declare-fun b!2280195 () Bool)

(declare-fun b_free!68077 () Bool)

(declare-fun b_next!68781 () Bool)

(assert (=> b!2280195 (= b_free!68077 (not b_next!68781))))

(declare-fun tp!722524 () Bool)

(declare-fun b_and!180049 () Bool)

(assert (=> b!2280195 (= tp!722524 b_and!180049)))

(declare-fun b_free!68079 () Bool)

(declare-fun b_next!68783 () Bool)

(assert (=> b!2280195 (= b_free!68079 (not b_next!68783))))

(declare-fun tp!722521 () Bool)

(declare-fun b_and!180051 () Bool)

(assert (=> b!2280195 (= tp!722521 b_and!180051)))

(declare-fun b!2280174 () Bool)

(declare-fun b_free!68081 () Bool)

(declare-fun b_next!68785 () Bool)

(assert (=> b!2280174 (= b_free!68081 (not b_next!68785))))

(declare-fun tp!722528 () Bool)

(declare-fun b_and!180053 () Bool)

(assert (=> b!2280174 (= tp!722528 b_and!180053)))

(declare-fun b_free!68083 () Bool)

(declare-fun b_next!68787 () Bool)

(assert (=> b!2280174 (= b_free!68083 (not b_next!68787))))

(declare-fun tp!722529 () Bool)

(declare-fun b_and!180055 () Bool)

(assert (=> b!2280174 (= tp!722529 b_and!180055)))

(declare-fun b!2280171 () Bool)

(declare-fun b_free!68085 () Bool)

(declare-fun b_next!68789 () Bool)

(assert (=> b!2280171 (= b_free!68085 (not b_next!68789))))

(declare-fun tp!722533 () Bool)

(declare-fun b_and!180057 () Bool)

(assert (=> b!2280171 (= tp!722533 b_and!180057)))

(declare-fun b_free!68087 () Bool)

(declare-fun b_next!68791 () Bool)

(assert (=> b!2280171 (= b_free!68087 (not b_next!68791))))

(declare-fun tp!722527 () Bool)

(declare-fun b_and!180059 () Bool)

(assert (=> b!2280171 (= tp!722527 b_and!180059)))

(declare-fun b!2280186 () Bool)

(declare-fun b_free!68089 () Bool)

(declare-fun b_next!68793 () Bool)

(assert (=> b!2280186 (= b_free!68089 (not b_next!68793))))

(declare-fun tp!722518 () Bool)

(declare-fun b_and!180061 () Bool)

(assert (=> b!2280186 (= tp!722518 b_and!180061)))

(declare-fun b_free!68091 () Bool)

(declare-fun b_next!68795 () Bool)

(assert (=> b!2280186 (= b_free!68091 (not b_next!68795))))

(declare-fun tp!722522 () Bool)

(declare-fun b_and!180063 () Bool)

(assert (=> b!2280186 (= tp!722522 b_and!180063)))

(declare-fun e!1460576 () Bool)

(assert (=> b!2280171 (= e!1460576 (and tp!722533 tp!722527))))

(declare-fun b!2280172 () Bool)

(declare-fun e!1460583 () Bool)

(declare-fun tp_is_empty!10575 () Bool)

(declare-fun tp!722532 () Bool)

(assert (=> b!2280172 (= e!1460583 (and tp_is_empty!10575 tp!722532))))

(declare-fun b!2280173 () Bool)

(declare-fun res!974574 () Bool)

(declare-fun e!1460582 () Bool)

(assert (=> b!2280173 (=> (not res!974574) (not e!1460582))))

(declare-datatypes ((List!27207 0))(
  ( (Nil!27113) (Cons!27113 (h!32514 (_ BitVec 16)) (t!203463 List!27207)) )
))
(declare-datatypes ((TokenValue!4491 0))(
  ( (FloatLiteralValue!8982 (text!31882 List!27207)) (TokenValueExt!4490 (__x!18042 Int)) (Broken!22455 (value!137170 List!27207)) (Object!4584) (End!4491) (Def!4491) (Underscore!4491) (Match!4491) (Else!4491) (Error!4491) (Case!4491) (If!4491) (Extends!4491) (Abstract!4491) (Class!4491) (Val!4491) (DelimiterValue!8982 (del!4551 List!27207)) (KeywordValue!4497 (value!137171 List!27207)) (CommentValue!8982 (value!137172 List!27207)) (WhitespaceValue!8982 (value!137173 List!27207)) (IndentationValue!4491 (value!137174 List!27207)) (String!29558) (Int32!4491) (Broken!22456 (value!137175 List!27207)) (Boolean!4492) (Unit!40041) (OperatorValue!4494 (op!4551 List!27207)) (IdentifierValue!8982 (value!137176 List!27207)) (IdentifierValue!8983 (value!137177 List!27207)) (WhitespaceValue!8983 (value!137178 List!27207)) (True!8982) (False!8982) (Broken!22457 (value!137179 List!27207)) (Broken!22458 (value!137180 List!27207)) (True!8983) (RightBrace!4491) (RightBracket!4491) (Colon!4491) (Null!4491) (Comma!4491) (LeftBracket!4491) (False!8983) (LeftBrace!4491) (ImaginaryLiteralValue!4491 (text!31883 List!27207)) (StringLiteralValue!13473 (value!137181 List!27207)) (EOFValue!4491 (value!137182 List!27207)) (IdentValue!4491 (value!137183 List!27207)) (DelimiterValue!8983 (value!137184 List!27207)) (DedentValue!4491 (value!137185 List!27207)) (NewLineValue!4491 (value!137186 List!27207)) (IntegerValue!13473 (value!137187 (_ BitVec 32)) (text!31884 List!27207)) (IntegerValue!13474 (value!137188 Int) (text!31885 List!27207)) (Times!4491) (Or!4491) (Equal!4491) (Minus!4491) (Broken!22459 (value!137189 List!27207)) (And!4491) (Div!4491) (LessEqual!4491) (Mod!4491) (Concat!11168) (Not!4491) (Plus!4491) (SpaceValue!4491 (value!137190 List!27207)) (IntegerValue!13475 (value!137191 Int) (text!31886 List!27207)) (StringLiteralValue!13474 (text!31887 List!27207)) (FloatLiteralValue!8983 (text!31888 List!27207)) (BytesLiteralValue!4491 (value!137192 List!27207)) (CommentValue!8983 (value!137193 List!27207)) (StringLiteralValue!13475 (value!137194 List!27207)) (ErrorTokenValue!4491 (msg!4552 List!27207)) )
))
(declare-datatypes ((C!13500 0))(
  ( (C!13501 (val!7798 Int)) )
))
(declare-datatypes ((List!27208 0))(
  ( (Nil!27114) (Cons!27114 (h!32515 C!13500) (t!203464 List!27208)) )
))
(declare-datatypes ((IArray!17617 0))(
  ( (IArray!17618 (innerList!8866 List!27208)) )
))
(declare-datatypes ((Conc!8806 0))(
  ( (Node!8806 (left!20567 Conc!8806) (right!20897 Conc!8806) (csize!17842 Int) (cheight!9017 Int)) (Leaf!12956 (xs!11748 IArray!17617) (csize!17843 Int)) (Empty!8806) )
))
(declare-datatypes ((BalanceConc!17340 0))(
  ( (BalanceConc!17341 (c!361882 Conc!8806)) )
))
(declare-datatypes ((String!29559 0))(
  ( (String!29560 (value!137195 String)) )
))
(declare-datatypes ((Regex!6677 0))(
  ( (ElementMatch!6677 (c!361883 C!13500)) (Concat!11169 (regOne!13866 Regex!6677) (regTwo!13866 Regex!6677)) (EmptyExpr!6677) (Star!6677 (reg!7006 Regex!6677)) (EmptyLang!6677) (Union!6677 (regOne!13867 Regex!6677) (regTwo!13867 Regex!6677)) )
))
(declare-datatypes ((TokenValueInjection!8522 0))(
  ( (TokenValueInjection!8523 (toValue!6111 Int) (toChars!5970 Int)) )
))
(declare-datatypes ((Rule!8458 0))(
  ( (Rule!8459 (regex!4329 Regex!6677) (tag!4819 String!29559) (isSeparator!4329 Bool) (transformation!4329 TokenValueInjection!8522)) )
))
(declare-datatypes ((List!27209 0))(
  ( (Nil!27115) (Cons!27115 (h!32516 Rule!8458) (t!203465 List!27209)) )
))
(declare-fun rules!1750 () List!27209)

(declare-fun r!2363 () Rule!8458)

(declare-fun contains!4701 (List!27209 Rule!8458) Bool)

(assert (=> b!2280173 (= res!974574 (contains!4701 rules!1750 r!2363))))

(declare-fun e!1460571 () Bool)

(assert (=> b!2280174 (= e!1460571 (and tp!722528 tp!722529))))

(declare-fun b!2280175 () Bool)

(declare-fun e!1460562 () Bool)

(declare-fun e!1460574 () Bool)

(assert (=> b!2280175 (= e!1460562 e!1460574)))

(declare-fun res!974582 () Bool)

(assert (=> b!2280175 (=> res!974582 e!1460574)))

(declare-fun otherR!12 () Rule!8458)

(declare-fun getIndex!342 (List!27209 Rule!8458) Int)

(assert (=> b!2280175 (= res!974582 (<= (getIndex!342 rules!1750 r!2363) (getIndex!342 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3926 0))(
  ( (LexerInterfaceExt!3923 (__x!18043 Int)) (Lexer!3924) )
))
(declare-fun thiss!16613 () LexerInterface!3926)

(declare-fun ruleValid!1419 (LexerInterface!3926 Rule!8458) Bool)

(assert (=> b!2280175 (ruleValid!1419 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40042 0))(
  ( (Unit!40043) )
))
(declare-fun lt!846379 () Unit!40042)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!824 (LexerInterface!3926 Rule!8458 List!27209) Unit!40042)

(assert (=> b!2280175 (= lt!846379 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!824 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2280176 () Bool)

(declare-fun res!974577 () Bool)

(declare-fun e!1460568 () Bool)

(assert (=> b!2280176 (=> (not res!974577) (not e!1460568))))

(declare-fun e!1460567 () Bool)

(assert (=> b!2280176 (= res!974577 e!1460567)))

(declare-fun res!974575 () Bool)

(assert (=> b!2280176 (=> res!974575 e!1460567)))

(declare-fun lt!846388 () Bool)

(assert (=> b!2280176 (= res!974575 lt!846388)))

(declare-fun b!2280177 () Bool)

(declare-fun e!1460575 () Bool)

(declare-fun tp!722526 () Bool)

(assert (=> b!2280177 (= e!1460575 (and tp_is_empty!10575 tp!722526))))

(declare-fun b!2280178 () Bool)

(declare-fun tp!722535 () Bool)

(declare-datatypes ((Token!8136 0))(
  ( (Token!8137 (value!137196 TokenValue!4491) (rule!6655 Rule!8458) (size!21318 Int) (originalCharacters!5099 List!27208)) )
))
(declare-datatypes ((List!27210 0))(
  ( (Nil!27116) (Cons!27116 (h!32517 Token!8136) (t!203466 List!27210)) )
))
(declare-fun tokens!456 () List!27210)

(declare-fun e!1460587 () Bool)

(declare-fun e!1460563 () Bool)

(declare-fun inv!36700 (Token!8136) Bool)

(assert (=> b!2280178 (= e!1460587 (and (inv!36700 (h!32517 tokens!456)) e!1460563 tp!722535))))

(declare-fun b!2280179 () Bool)

(declare-fun res!974588 () Bool)

(assert (=> b!2280179 (=> res!974588 e!1460574)))

(get-info :version)

(assert (=> b!2280179 (= res!974588 ((_ is Nil!27116) tokens!456))))

(declare-fun b!2280180 () Bool)

(declare-fun e!1460579 () Bool)

(declare-fun e!1460577 () Bool)

(assert (=> b!2280180 (= e!1460579 e!1460577)))

(declare-fun res!974580 () Bool)

(assert (=> b!2280180 (=> res!974580 e!1460577)))

(declare-fun otherP!12 () List!27208)

(declare-fun lt!846384 () List!27208)

(declare-fun size!21319 (List!27208) Int)

(assert (=> b!2280180 (= res!974580 (not (= (size!21319 otherP!12) (size!21319 lt!846384))))))

(declare-datatypes ((tuple2!26846 0))(
  ( (tuple2!26847 (_1!15933 Token!8136) (_2!15933 List!27208)) )
))
(declare-fun lt!846383 () tuple2!26846)

(declare-fun lt!846386 () List!27208)

(assert (=> b!2280180 (= (_2!15933 lt!846383) lt!846386)))

(declare-fun lt!846385 () Unit!40042)

(declare-fun input!1722 () List!27208)

(declare-fun lemmaSamePrefixThenSameSuffix!1020 (List!27208 List!27208 List!27208 List!27208 List!27208) Unit!40042)

(assert (=> b!2280180 (= lt!846385 (lemmaSamePrefixThenSameSuffix!1020 lt!846384 (_2!15933 lt!846383) lt!846384 lt!846386 input!1722))))

(declare-fun getSuffix!1110 (List!27208 List!27208) List!27208)

(assert (=> b!2280180 (= lt!846386 (getSuffix!1110 input!1722 lt!846384))))

(declare-fun isPrefix!2319 (List!27208 List!27208) Bool)

(declare-fun ++!6621 (List!27208 List!27208) List!27208)

(assert (=> b!2280180 (isPrefix!2319 lt!846384 (++!6621 lt!846384 (_2!15933 lt!846383)))))

(declare-fun lt!846387 () Unit!40042)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1524 (List!27208 List!27208) Unit!40042)

(assert (=> b!2280180 (= lt!846387 (lemmaConcatTwoListThenFirstIsPrefix!1524 lt!846384 (_2!15933 lt!846383)))))

(declare-fun list!10564 (BalanceConc!17340) List!27208)

(declare-fun charsOf!2717 (Token!8136) BalanceConc!17340)

(assert (=> b!2280180 (= lt!846384 (list!10564 (charsOf!2717 (h!32517 tokens!456))))))

(declare-fun b!2280181 () Bool)

(declare-fun e!1460566 () Bool)

(assert (=> b!2280181 (= e!1460582 e!1460566)))

(declare-fun res!974573 () Bool)

(assert (=> b!2280181 (=> (not res!974573) (not e!1460566))))

(declare-fun suffix!886 () List!27208)

(declare-datatypes ((IArray!17619 0))(
  ( (IArray!17620 (innerList!8867 List!27210)) )
))
(declare-datatypes ((Conc!8807 0))(
  ( (Node!8807 (left!20568 Conc!8807) (right!20898 Conc!8807) (csize!17844 Int) (cheight!9018 Int)) (Leaf!12957 (xs!11749 IArray!17619) (csize!17845 Int)) (Empty!8807) )
))
(declare-datatypes ((BalanceConc!17342 0))(
  ( (BalanceConc!17343 (c!361884 Conc!8807)) )
))
(declare-datatypes ((tuple2!26848 0))(
  ( (tuple2!26849 (_1!15934 BalanceConc!17342) (_2!15934 BalanceConc!17340)) )
))
(declare-fun lt!846382 () tuple2!26848)

(declare-datatypes ((tuple2!26850 0))(
  ( (tuple2!26851 (_1!15935 List!27210) (_2!15935 List!27208)) )
))
(declare-fun list!10565 (BalanceConc!17342) List!27210)

(assert (=> b!2280181 (= res!974573 (= (tuple2!26851 (list!10565 (_1!15934 lt!846382)) (list!10564 (_2!15934 lt!846382))) (tuple2!26851 tokens!456 suffix!886)))))

(declare-fun lex!1765 (LexerInterface!3926 List!27209 BalanceConc!17340) tuple2!26848)

(declare-fun seqFromList!3033 (List!27208) BalanceConc!17340)

(assert (=> b!2280181 (= lt!846382 (lex!1765 thiss!16613 rules!1750 (seqFromList!3033 input!1722)))))

(declare-fun tp!722519 () Bool)

(declare-fun e!1460570 () Bool)

(declare-fun b!2280182 () Bool)

(declare-fun e!1460586 () Bool)

(declare-fun inv!36697 (String!29559) Bool)

(declare-fun inv!36701 (TokenValueInjection!8522) Bool)

(assert (=> b!2280182 (= e!1460570 (and tp!722519 (inv!36697 (tag!4819 (h!32516 rules!1750))) (inv!36701 (transformation!4329 (h!32516 rules!1750))) e!1460586))))

(declare-fun b!2280183 () Bool)

(assert (=> b!2280183 (= e!1460566 e!1460568)))

(declare-fun res!974585 () Bool)

(assert (=> b!2280183 (=> (not res!974585) (not e!1460568))))

(declare-fun e!1460561 () Bool)

(assert (=> b!2280183 (= res!974585 e!1460561)))

(declare-fun res!974586 () Bool)

(assert (=> b!2280183 (=> res!974586 e!1460561)))

(assert (=> b!2280183 (= res!974586 lt!846388)))

(declare-fun isEmpty!15395 (List!27210) Bool)

(assert (=> b!2280183 (= lt!846388 (isEmpty!15395 tokens!456))))

(declare-fun b!2280184 () Bool)

(declare-fun tp!722520 () Bool)

(declare-fun e!1460581 () Bool)

(assert (=> b!2280184 (= e!1460581 (and tp!722520 (inv!36697 (tag!4819 otherR!12)) (inv!36701 (transformation!4329 otherR!12)) e!1460576))))

(declare-fun b!2280185 () Bool)

(declare-fun res!974583 () Bool)

(assert (=> b!2280185 (=> (not res!974583) (not e!1460568))))

(assert (=> b!2280185 (= res!974583 (not (= r!2363 otherR!12)))))

(declare-fun e!1460572 () Bool)

(assert (=> b!2280186 (= e!1460572 (and tp!722518 tp!722522))))

(declare-fun tp!722534 () Bool)

(declare-fun b!2280187 () Bool)

(declare-fun e!1460565 () Bool)

(assert (=> b!2280187 (= e!1460565 (and tp!722534 (inv!36697 (tag!4819 (rule!6655 (h!32517 tokens!456)))) (inv!36701 (transformation!4329 (rule!6655 (h!32517 tokens!456)))) e!1460571))))

(declare-fun b!2280188 () Bool)

(declare-fun res!974581 () Bool)

(assert (=> b!2280188 (=> (not res!974581) (not e!1460582))))

(declare-fun rulesInvariant!3428 (LexerInterface!3926 List!27209) Bool)

(assert (=> b!2280188 (= res!974581 (rulesInvariant!3428 thiss!16613 rules!1750))))

(declare-fun b!2280189 () Bool)

(declare-fun e!1460560 () Bool)

(declare-fun tp!722523 () Bool)

(assert (=> b!2280189 (= e!1460560 (and tp_is_empty!10575 tp!722523))))

(declare-fun b!2280190 () Bool)

(declare-fun e!1460580 () Bool)

(declare-fun tp!722530 () Bool)

(assert (=> b!2280190 (= e!1460580 (and e!1460570 tp!722530))))

(declare-fun b!2280191 () Bool)

(declare-fun res!974589 () Bool)

(assert (=> b!2280191 (=> (not res!974589) (not e!1460582))))

(assert (=> b!2280191 (= res!974589 (contains!4701 rules!1750 otherR!12))))

(declare-fun b!2280192 () Bool)

(assert (=> b!2280192 (= e!1460568 (not e!1460562))))

(declare-fun res!974584 () Bool)

(assert (=> b!2280192 (=> res!974584 e!1460562)))

(declare-fun e!1460585 () Bool)

(assert (=> b!2280192 (= res!974584 e!1460585)))

(declare-fun res!974587 () Bool)

(assert (=> b!2280192 (=> (not res!974587) (not e!1460585))))

(assert (=> b!2280192 (= res!974587 (not lt!846388))))

(assert (=> b!2280192 (ruleValid!1419 thiss!16613 r!2363)))

(declare-fun lt!846380 () Unit!40042)

(assert (=> b!2280192 (= lt!846380 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!824 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2280193 () Bool)

(declare-fun res!974579 () Bool)

(assert (=> b!2280193 (=> (not res!974579) (not e!1460582))))

(declare-fun isEmpty!15396 (List!27209) Bool)

(assert (=> b!2280193 (= res!974579 (not (isEmpty!15396 rules!1750)))))

(declare-fun res!974578 () Bool)

(assert (=> start!223360 (=> (not res!974578) (not e!1460582))))

(assert (=> start!223360 (= res!974578 ((_ is Lexer!3924) thiss!16613))))

(assert (=> start!223360 e!1460582))

(assert (=> start!223360 true))

(assert (=> start!223360 e!1460583))

(assert (=> start!223360 e!1460581))

(assert (=> start!223360 e!1460560))

(assert (=> start!223360 e!1460575))

(assert (=> start!223360 e!1460580))

(declare-fun e!1460564 () Bool)

(assert (=> start!223360 e!1460564))

(assert (=> start!223360 e!1460587))

(declare-fun b!2280194 () Bool)

(declare-fun head!4938 (List!27210) Token!8136)

(assert (=> b!2280194 (= e!1460567 (= (rule!6655 (head!4938 tokens!456)) r!2363))))

(assert (=> b!2280195 (= e!1460586 (and tp!722524 tp!722521))))

(declare-fun b!2280196 () Bool)

(declare-fun res!974590 () Bool)

(assert (=> b!2280196 (=> (not res!974590) (not e!1460568))))

(assert (=> b!2280196 (= res!974590 (isPrefix!2319 otherP!12 input!1722))))

(declare-fun b!2280197 () Bool)

(assert (=> b!2280197 (= e!1460577 true)))

(assert (=> b!2280197 (= lt!846384 otherP!12)))

(declare-fun lt!846381 () Unit!40042)

(declare-fun lemmaIsPrefixSameLengthThenSameList!385 (List!27208 List!27208 List!27208) Unit!40042)

(assert (=> b!2280197 (= lt!846381 (lemmaIsPrefixSameLengthThenSameList!385 lt!846384 otherP!12 input!1722))))

(declare-fun b!2280198 () Bool)

(declare-fun size!21320 (BalanceConc!17340) Int)

(assert (=> b!2280198 (= e!1460561 (<= (size!21320 (charsOf!2717 (head!4938 tokens!456))) (size!21319 otherP!12)))))

(declare-fun b!2280199 () Bool)

(declare-fun matchR!2934 (Regex!6677 List!27208) Bool)

(assert (=> b!2280199 (= e!1460585 (not (matchR!2934 (regex!4329 r!2363) (list!10564 (charsOf!2717 (head!4938 tokens!456))))))))

(declare-fun b!2280200 () Bool)

(declare-fun tp!722531 () Bool)

(declare-fun inv!21 (TokenValue!4491) Bool)

(assert (=> b!2280200 (= e!1460563 (and (inv!21 (value!137196 (h!32517 tokens!456))) e!1460565 tp!722531))))

(declare-fun tp!722525 () Bool)

(declare-fun b!2280201 () Bool)

(assert (=> b!2280201 (= e!1460564 (and tp!722525 (inv!36697 (tag!4819 r!2363)) (inv!36701 (transformation!4329 r!2363)) e!1460572))))

(declare-fun b!2280202 () Bool)

(assert (=> b!2280202 (= e!1460574 e!1460579)))

(declare-fun res!974576 () Bool)

(assert (=> b!2280202 (=> res!974576 e!1460579)))

(assert (=> b!2280202 (= res!974576 (not (= (h!32517 tokens!456) (_1!15933 lt!846383))))))

(declare-datatypes ((Option!5315 0))(
  ( (None!5314) (Some!5314 (v!30376 tuple2!26846)) )
))
(declare-fun get!8173 (Option!5315) tuple2!26846)

(declare-fun maxPrefix!2190 (LexerInterface!3926 List!27209 List!27208) Option!5315)

(assert (=> b!2280202 (= lt!846383 (get!8173 (maxPrefix!2190 thiss!16613 rules!1750 input!1722)))))

(assert (= (and start!223360 res!974578) b!2280193))

(assert (= (and b!2280193 res!974579) b!2280188))

(assert (= (and b!2280188 res!974581) b!2280173))

(assert (= (and b!2280173 res!974574) b!2280191))

(assert (= (and b!2280191 res!974589) b!2280181))

(assert (= (and b!2280181 res!974573) b!2280183))

(assert (= (and b!2280183 (not res!974586)) b!2280198))

(assert (= (and b!2280183 res!974585) b!2280176))

(assert (= (and b!2280176 (not res!974575)) b!2280194))

(assert (= (and b!2280176 res!974577) b!2280196))

(assert (= (and b!2280196 res!974590) b!2280185))

(assert (= (and b!2280185 res!974583) b!2280192))

(assert (= (and b!2280192 res!974587) b!2280199))

(assert (= (and b!2280192 (not res!974584)) b!2280175))

(assert (= (and b!2280175 (not res!974582)) b!2280179))

(assert (= (and b!2280179 (not res!974588)) b!2280202))

(assert (= (and b!2280202 (not res!974576)) b!2280180))

(assert (= (and b!2280180 (not res!974580)) b!2280197))

(assert (= (and start!223360 ((_ is Cons!27114) input!1722)) b!2280172))

(assert (= b!2280184 b!2280171))

(assert (= start!223360 b!2280184))

(assert (= (and start!223360 ((_ is Cons!27114) suffix!886)) b!2280189))

(assert (= (and start!223360 ((_ is Cons!27114) otherP!12)) b!2280177))

(assert (= b!2280182 b!2280195))

(assert (= b!2280190 b!2280182))

(assert (= (and start!223360 ((_ is Cons!27115) rules!1750)) b!2280190))

(assert (= b!2280201 b!2280186))

(assert (= start!223360 b!2280201))

(assert (= b!2280187 b!2280174))

(assert (= b!2280200 b!2280187))

(assert (= b!2280178 b!2280200))

(assert (= (and start!223360 ((_ is Cons!27116) tokens!456)) b!2280178))

(declare-fun m!2708233 () Bool)

(assert (=> b!2280178 m!2708233))

(declare-fun m!2708235 () Bool)

(assert (=> b!2280180 m!2708235))

(declare-fun m!2708237 () Bool)

(assert (=> b!2280180 m!2708237))

(declare-fun m!2708239 () Bool)

(assert (=> b!2280180 m!2708239))

(declare-fun m!2708241 () Bool)

(assert (=> b!2280180 m!2708241))

(declare-fun m!2708243 () Bool)

(assert (=> b!2280180 m!2708243))

(declare-fun m!2708245 () Bool)

(assert (=> b!2280180 m!2708245))

(assert (=> b!2280180 m!2708241))

(declare-fun m!2708247 () Bool)

(assert (=> b!2280180 m!2708247))

(declare-fun m!2708249 () Bool)

(assert (=> b!2280180 m!2708249))

(assert (=> b!2280180 m!2708249))

(declare-fun m!2708251 () Bool)

(assert (=> b!2280180 m!2708251))

(declare-fun m!2708253 () Bool)

(assert (=> b!2280187 m!2708253))

(declare-fun m!2708255 () Bool)

(assert (=> b!2280187 m!2708255))

(declare-fun m!2708257 () Bool)

(assert (=> b!2280192 m!2708257))

(declare-fun m!2708259 () Bool)

(assert (=> b!2280192 m!2708259))

(declare-fun m!2708261 () Bool)

(assert (=> b!2280193 m!2708261))

(declare-fun m!2708263 () Bool)

(assert (=> b!2280194 m!2708263))

(assert (=> b!2280199 m!2708263))

(assert (=> b!2280199 m!2708263))

(declare-fun m!2708265 () Bool)

(assert (=> b!2280199 m!2708265))

(assert (=> b!2280199 m!2708265))

(declare-fun m!2708267 () Bool)

(assert (=> b!2280199 m!2708267))

(assert (=> b!2280199 m!2708267))

(declare-fun m!2708269 () Bool)

(assert (=> b!2280199 m!2708269))

(declare-fun m!2708271 () Bool)

(assert (=> b!2280191 m!2708271))

(declare-fun m!2708273 () Bool)

(assert (=> b!2280184 m!2708273))

(declare-fun m!2708275 () Bool)

(assert (=> b!2280184 m!2708275))

(declare-fun m!2708277 () Bool)

(assert (=> b!2280201 m!2708277))

(declare-fun m!2708279 () Bool)

(assert (=> b!2280201 m!2708279))

(declare-fun m!2708281 () Bool)

(assert (=> b!2280197 m!2708281))

(declare-fun m!2708283 () Bool)

(assert (=> b!2280181 m!2708283))

(declare-fun m!2708285 () Bool)

(assert (=> b!2280181 m!2708285))

(declare-fun m!2708287 () Bool)

(assert (=> b!2280181 m!2708287))

(assert (=> b!2280181 m!2708287))

(declare-fun m!2708289 () Bool)

(assert (=> b!2280181 m!2708289))

(declare-fun m!2708291 () Bool)

(assert (=> b!2280200 m!2708291))

(declare-fun m!2708293 () Bool)

(assert (=> b!2280183 m!2708293))

(assert (=> b!2280198 m!2708263))

(assert (=> b!2280198 m!2708263))

(assert (=> b!2280198 m!2708265))

(assert (=> b!2280198 m!2708265))

(declare-fun m!2708295 () Bool)

(assert (=> b!2280198 m!2708295))

(assert (=> b!2280198 m!2708243))

(declare-fun m!2708297 () Bool)

(assert (=> b!2280202 m!2708297))

(assert (=> b!2280202 m!2708297))

(declare-fun m!2708299 () Bool)

(assert (=> b!2280202 m!2708299))

(declare-fun m!2708301 () Bool)

(assert (=> b!2280175 m!2708301))

(declare-fun m!2708303 () Bool)

(assert (=> b!2280175 m!2708303))

(declare-fun m!2708305 () Bool)

(assert (=> b!2280175 m!2708305))

(declare-fun m!2708307 () Bool)

(assert (=> b!2280175 m!2708307))

(declare-fun m!2708309 () Bool)

(assert (=> b!2280196 m!2708309))

(declare-fun m!2708311 () Bool)

(assert (=> b!2280182 m!2708311))

(declare-fun m!2708313 () Bool)

(assert (=> b!2280182 m!2708313))

(declare-fun m!2708315 () Bool)

(assert (=> b!2280173 m!2708315))

(declare-fun m!2708317 () Bool)

(assert (=> b!2280188 m!2708317))

(check-sat (not b!2280196) (not b!2280202) (not b!2280189) (not b!2280184) b_and!180059 b_and!180049 b_and!180057 (not b!2280177) (not b_next!68789) (not b!2280182) (not b!2280192) (not b_next!68787) (not b!2280188) b_and!180061 tp_is_empty!10575 (not b!2280191) (not b!2280197) (not b_next!68795) b_and!180051 b_and!180063 (not b_next!68781) (not b!2280173) (not b!2280180) (not b!2280183) b_and!180053 (not b!2280194) (not b!2280175) (not b!2280201) (not b!2280193) (not b!2280178) (not b_next!68791) (not b!2280200) (not b_next!68793) b_and!180055 (not b_next!68785) (not b!2280199) (not b!2280181) (not b_next!68783) (not b!2280172) (not b!2280198) (not b!2280190) (not b!2280187))
(check-sat (not b_next!68787) b_and!180061 b_and!180053 b_and!180059 (not b_next!68791) (not b_next!68785) b_and!180049 b_and!180057 (not b_next!68789) (not b_next!68783) (not b_next!68795) b_and!180051 b_and!180063 (not b_next!68781) (not b_next!68793) b_and!180055)

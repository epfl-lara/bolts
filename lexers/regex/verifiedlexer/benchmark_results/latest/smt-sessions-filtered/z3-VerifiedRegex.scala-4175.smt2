; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225732 () Bool)

(assert start!225732)

(declare-fun b!2297179 () Bool)

(declare-fun b_free!69213 () Bool)

(declare-fun b_next!69917 () Bool)

(assert (=> b!2297179 (= b_free!69213 (not b_next!69917))))

(declare-fun tp!728615 () Bool)

(declare-fun b_and!182777 () Bool)

(assert (=> b!2297179 (= tp!728615 b_and!182777)))

(declare-fun b_free!69215 () Bool)

(declare-fun b_next!69919 () Bool)

(assert (=> b!2297179 (= b_free!69215 (not b_next!69919))))

(declare-fun tp!728623 () Bool)

(declare-fun b_and!182779 () Bool)

(assert (=> b!2297179 (= tp!728623 b_and!182779)))

(declare-fun b!2297176 () Bool)

(declare-fun b_free!69217 () Bool)

(declare-fun b_next!69921 () Bool)

(assert (=> b!2297176 (= b_free!69217 (not b_next!69921))))

(declare-fun tp!728616 () Bool)

(declare-fun b_and!182781 () Bool)

(assert (=> b!2297176 (= tp!728616 b_and!182781)))

(declare-fun b_free!69219 () Bool)

(declare-fun b_next!69923 () Bool)

(assert (=> b!2297176 (= b_free!69219 (not b_next!69923))))

(declare-fun tp!728620 () Bool)

(declare-fun b_and!182783 () Bool)

(assert (=> b!2297176 (= tp!728620 b_and!182783)))

(declare-fun b!2297189 () Bool)

(declare-fun b_free!69221 () Bool)

(declare-fun b_next!69925 () Bool)

(assert (=> b!2297189 (= b_free!69221 (not b_next!69925))))

(declare-fun tp!728627 () Bool)

(declare-fun b_and!182785 () Bool)

(assert (=> b!2297189 (= tp!728627 b_and!182785)))

(declare-fun b_free!69223 () Bool)

(declare-fun b_next!69927 () Bool)

(assert (=> b!2297189 (= b_free!69223 (not b_next!69927))))

(declare-fun tp!728628 () Bool)

(declare-fun b_and!182787 () Bool)

(assert (=> b!2297189 (= tp!728628 b_and!182787)))

(declare-fun b!2297175 () Bool)

(declare-fun b_free!69225 () Bool)

(declare-fun b_next!69929 () Bool)

(assert (=> b!2297175 (= b_free!69225 (not b_next!69929))))

(declare-fun tp!728621 () Bool)

(declare-fun b_and!182789 () Bool)

(assert (=> b!2297175 (= tp!728621 b_and!182789)))

(declare-fun b_free!69227 () Bool)

(declare-fun b_next!69931 () Bool)

(assert (=> b!2297175 (= b_free!69227 (not b_next!69931))))

(declare-fun tp!728630 () Bool)

(declare-fun b_and!182791 () Bool)

(assert (=> b!2297175 (= tp!728630 b_and!182791)))

(declare-fun b!2297164 () Bool)

(declare-fun e!1472089 () Bool)

(assert (=> b!2297164 (= e!1472089 true)))

(declare-fun lt!852200 () Bool)

(declare-fun e!1472071 () Bool)

(assert (=> b!2297164 (= lt!852200 e!1472071)))

(declare-fun res!982181 () Bool)

(assert (=> b!2297164 (=> res!982181 e!1472071)))

(declare-datatypes ((List!27443 0))(
  ( (Nil!27349) (Cons!27349 (h!32750 (_ BitVec 16)) (t!205441 List!27443)) )
))
(declare-datatypes ((TokenValue!4543 0))(
  ( (FloatLiteralValue!9086 (text!32246 List!27443)) (TokenValueExt!4542 (__x!18146 Int)) (Broken!22715 (value!138652 List!27443)) (Object!4636) (End!4543) (Def!4543) (Underscore!4543) (Match!4543) (Else!4543) (Error!4543) (Case!4543) (If!4543) (Extends!4543) (Abstract!4543) (Class!4543) (Val!4543) (DelimiterValue!9086 (del!4603 List!27443)) (KeywordValue!4549 (value!138653 List!27443)) (CommentValue!9086 (value!138654 List!27443)) (WhitespaceValue!9086 (value!138655 List!27443)) (IndentationValue!4543 (value!138656 List!27443)) (String!29818) (Int32!4543) (Broken!22716 (value!138657 List!27443)) (Boolean!4544) (Unit!40241) (OperatorValue!4546 (op!4603 List!27443)) (IdentifierValue!9086 (value!138658 List!27443)) (IdentifierValue!9087 (value!138659 List!27443)) (WhitespaceValue!9087 (value!138660 List!27443)) (True!9086) (False!9086) (Broken!22717 (value!138661 List!27443)) (Broken!22718 (value!138662 List!27443)) (True!9087) (RightBrace!4543) (RightBracket!4543) (Colon!4543) (Null!4543) (Comma!4543) (LeftBracket!4543) (False!9087) (LeftBrace!4543) (ImaginaryLiteralValue!4543 (text!32247 List!27443)) (StringLiteralValue!13629 (value!138663 List!27443)) (EOFValue!4543 (value!138664 List!27443)) (IdentValue!4543 (value!138665 List!27443)) (DelimiterValue!9087 (value!138666 List!27443)) (DedentValue!4543 (value!138667 List!27443)) (NewLineValue!4543 (value!138668 List!27443)) (IntegerValue!13629 (value!138669 (_ BitVec 32)) (text!32248 List!27443)) (IntegerValue!13630 (value!138670 Int) (text!32249 List!27443)) (Times!4543) (Or!4543) (Equal!4543) (Minus!4543) (Broken!22719 (value!138671 List!27443)) (And!4543) (Div!4543) (LessEqual!4543) (Mod!4543) (Concat!11272) (Not!4543) (Plus!4543) (SpaceValue!4543 (value!138672 List!27443)) (IntegerValue!13631 (value!138673 Int) (text!32250 List!27443)) (StringLiteralValue!13630 (text!32251 List!27443)) (FloatLiteralValue!9087 (text!32252 List!27443)) (BytesLiteralValue!4543 (value!138674 List!27443)) (CommentValue!9087 (value!138675 List!27443)) (StringLiteralValue!13631 (value!138676 List!27443)) (ErrorTokenValue!4543 (msg!4604 List!27443)) )
))
(declare-datatypes ((C!13604 0))(
  ( (C!13605 (val!7850 Int)) )
))
(declare-datatypes ((List!27444 0))(
  ( (Nil!27350) (Cons!27350 (h!32751 C!13604) (t!205442 List!27444)) )
))
(declare-datatypes ((IArray!17825 0))(
  ( (IArray!17826 (innerList!8970 List!27444)) )
))
(declare-datatypes ((Conc!8910 0))(
  ( (Node!8910 (left!20729 Conc!8910) (right!21059 Conc!8910) (csize!18050 Int) (cheight!9121 Int)) (Leaf!13086 (xs!11852 IArray!17825) (csize!18051 Int)) (Empty!8910) )
))
(declare-datatypes ((BalanceConc!17548 0))(
  ( (BalanceConc!17549 (c!364206 Conc!8910)) )
))
(declare-datatypes ((Regex!6729 0))(
  ( (ElementMatch!6729 (c!364207 C!13604)) (Concat!11273 (regOne!13970 Regex!6729) (regTwo!13970 Regex!6729)) (EmptyExpr!6729) (Star!6729 (reg!7058 Regex!6729)) (EmptyLang!6729) (Union!6729 (regOne!13971 Regex!6729) (regTwo!13971 Regex!6729)) )
))
(declare-datatypes ((String!29819 0))(
  ( (String!29820 (value!138677 String)) )
))
(declare-datatypes ((TokenValueInjection!8626 0))(
  ( (TokenValueInjection!8627 (toValue!6183 Int) (toChars!6042 Int)) )
))
(declare-datatypes ((Rule!8562 0))(
  ( (Rule!8563 (regex!4381 Regex!6729) (tag!4871 String!29819) (isSeparator!4381 Bool) (transformation!4381 TokenValueInjection!8626)) )
))
(declare-datatypes ((Token!8240 0))(
  ( (Token!8241 (value!138678 TokenValue!4543) (rule!6723 Rule!8562) (size!21553 Int) (originalCharacters!5151 List!27444)) )
))
(declare-datatypes ((List!27445 0))(
  ( (Nil!27351) (Cons!27351 (h!32752 Token!8240) (t!205443 List!27445)) )
))
(declare-fun tokens!456 () List!27445)

(declare-fun size!21554 (List!27445) Int)

(assert (=> b!2297164 (= res!982181 (<= (size!21554 tokens!456) 0))))

(declare-fun b!2297165 () Bool)

(declare-fun e!1472096 () Bool)

(declare-fun r!2363 () Rule!8562)

(declare-fun matchR!2986 (Regex!6729 List!27444) Bool)

(declare-fun list!10744 (BalanceConc!17548) List!27444)

(declare-fun charsOf!2769 (Token!8240) BalanceConc!17548)

(declare-fun head!5018 (List!27445) Token!8240)

(assert (=> b!2297165 (= e!1472096 (not (matchR!2986 (regex!4381 r!2363) (list!10744 (charsOf!2769 (head!5018 tokens!456))))))))

(declare-fun b!2297167 () Bool)

(declare-fun e!1472097 () Bool)

(declare-fun e!1472087 () Bool)

(declare-fun tp!728618 () Bool)

(declare-fun inv!21 (TokenValue!4543) Bool)

(assert (=> b!2297167 (= e!1472087 (and (inv!21 (value!138678 (h!32752 tokens!456))) e!1472097 tp!728618))))

(declare-fun b!2297168 () Bool)

(declare-datatypes ((Unit!40242 0))(
  ( (Unit!40243) )
))
(declare-fun e!1472093 () Unit!40242)

(declare-fun Unit!40244 () Unit!40242)

(assert (=> b!2297168 (= e!1472093 Unit!40244)))

(declare-fun b!2297169 () Bool)

(declare-fun res!982180 () Bool)

(declare-fun e!1472069 () Bool)

(assert (=> b!2297169 (=> (not res!982180) (not e!1472069))))

(declare-datatypes ((List!27446 0))(
  ( (Nil!27352) (Cons!27352 (h!32753 Rule!8562) (t!205444 List!27446)) )
))
(declare-fun rules!1750 () List!27446)

(declare-fun otherR!12 () Rule!8562)

(declare-fun contains!4763 (List!27446 Rule!8562) Bool)

(assert (=> b!2297169 (= res!982180 (contains!4763 rules!1750 otherR!12))))

(declare-fun b!2297170 () Bool)

(declare-fun e!1472073 () Bool)

(assert (=> b!2297170 (= e!1472069 e!1472073)))

(declare-fun res!982169 () Bool)

(assert (=> b!2297170 (=> (not res!982169) (not e!1472073))))

(declare-fun suffix!886 () List!27444)

(declare-datatypes ((IArray!17827 0))(
  ( (IArray!17828 (innerList!8971 List!27445)) )
))
(declare-datatypes ((Conc!8911 0))(
  ( (Node!8911 (left!20730 Conc!8911) (right!21060 Conc!8911) (csize!18052 Int) (cheight!9122 Int)) (Leaf!13087 (xs!11853 IArray!17827) (csize!18053 Int)) (Empty!8911) )
))
(declare-datatypes ((BalanceConc!17550 0))(
  ( (BalanceConc!17551 (c!364208 Conc!8911)) )
))
(declare-datatypes ((tuple2!27202 0))(
  ( (tuple2!27203 (_1!16111 BalanceConc!17550) (_2!16111 BalanceConc!17548)) )
))
(declare-fun lt!852194 () tuple2!27202)

(declare-datatypes ((tuple2!27204 0))(
  ( (tuple2!27205 (_1!16112 List!27445) (_2!16112 List!27444)) )
))
(declare-fun list!10745 (BalanceConc!17550) List!27445)

(assert (=> b!2297170 (= res!982169 (= (tuple2!27205 (list!10745 (_1!16111 lt!852194)) (list!10744 (_2!16111 lt!852194))) (tuple2!27205 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3978 0))(
  ( (LexerInterfaceExt!3975 (__x!18147 Int)) (Lexer!3976) )
))
(declare-fun thiss!16613 () LexerInterface!3978)

(declare-fun input!1722 () List!27444)

(declare-fun lex!1817 (LexerInterface!3978 List!27446 BalanceConc!17548) tuple2!27202)

(declare-fun seqFromList!3085 (List!27444) BalanceConc!17548)

(assert (=> b!2297170 (= lt!852194 (lex!1817 thiss!16613 rules!1750 (seqFromList!3085 input!1722)))))

(declare-fun tp!728629 () Bool)

(declare-fun e!1472070 () Bool)

(declare-fun b!2297171 () Bool)

(declare-fun e!1472080 () Bool)

(declare-fun inv!36965 (String!29819) Bool)

(declare-fun inv!36968 (TokenValueInjection!8626) Bool)

(assert (=> b!2297171 (= e!1472080 (and tp!728629 (inv!36965 (tag!4871 r!2363)) (inv!36968 (transformation!4381 r!2363)) e!1472070))))

(declare-fun b!2297172 () Bool)

(declare-fun Unit!40245 () Unit!40242)

(assert (=> b!2297172 (= e!1472093 Unit!40245)))

(declare-fun lt!852204 () Unit!40242)

(declare-fun lemmaSameIndexThenSameElement!174 (List!27446 Rule!8562 Rule!8562) Unit!40242)

(assert (=> b!2297172 (= lt!852204 (lemmaSameIndexThenSameElement!174 rules!1750 r!2363 otherR!12))))

(assert (=> b!2297172 false))

(declare-fun b!2297173 () Bool)

(declare-fun tp!728619 () Bool)

(declare-fun e!1472076 () Bool)

(assert (=> b!2297173 (= e!1472097 (and tp!728619 (inv!36965 (tag!4871 (rule!6723 (h!32752 tokens!456)))) (inv!36968 (transformation!4381 (rule!6723 (h!32752 tokens!456)))) e!1472076))))

(declare-fun b!2297174 () Bool)

(declare-fun res!982179 () Bool)

(assert (=> b!2297174 (=> (not res!982179) (not e!1472069))))

(declare-fun isEmpty!15596 (List!27446) Bool)

(assert (=> b!2297174 (= res!982179 (not (isEmpty!15596 rules!1750)))))

(assert (=> b!2297175 (= e!1472070 (and tp!728621 tp!728630))))

(declare-fun e!1472072 () Bool)

(assert (=> b!2297176 (= e!1472072 (and tp!728616 tp!728620))))

(declare-fun b!2297177 () Bool)

(declare-fun e!1472067 () Bool)

(assert (=> b!2297177 (= e!1472067 e!1472089)))

(declare-fun res!982182 () Bool)

(assert (=> b!2297177 (=> res!982182 e!1472089)))

(declare-fun lt!852197 () Int)

(declare-fun lt!852201 () Int)

(assert (=> b!2297177 (= res!982182 (< lt!852197 lt!852201))))

(declare-fun otherP!12 () List!27444)

(assert (=> b!2297177 (not (matchR!2986 (regex!4381 otherR!12) otherP!12))))

(declare-fun lt!852198 () Unit!40242)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!405 (LexerInterface!3978 Rule!8562 List!27444 List!27444) Unit!40242)

(assert (=> b!2297177 (= lt!852198 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!405 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun tp!728614 () Bool)

(declare-fun e!1472083 () Bool)

(declare-fun b!2297178 () Bool)

(declare-fun inv!36969 (Token!8240) Bool)

(assert (=> b!2297178 (= e!1472083 (and (inv!36969 (h!32752 tokens!456)) e!1472087 tp!728614))))

(assert (=> b!2297179 (= e!1472076 (and tp!728615 tp!728623))))

(declare-fun b!2297180 () Bool)

(declare-fun e!1472086 () Bool)

(declare-fun e!1472084 () Bool)

(declare-fun tp!728622 () Bool)

(assert (=> b!2297180 (= e!1472086 (and e!1472084 tp!728622))))

(declare-fun b!2297166 () Bool)

(declare-fun e!1472095 () Bool)

(assert (=> b!2297166 (= e!1472095 e!1472067)))

(declare-fun res!982164 () Bool)

(assert (=> b!2297166 (=> res!982164 e!1472067)))

(declare-datatypes ((tuple2!27206 0))(
  ( (tuple2!27207 (_1!16113 Token!8240) (_2!16113 List!27444)) )
))
(declare-datatypes ((Option!5373 0))(
  ( (None!5372) (Some!5372 (v!30462 tuple2!27206)) )
))
(declare-fun lt!852196 () Option!5373)

(assert (=> b!2297166 (= res!982164 (not (= lt!852196 None!5372)))))

(declare-fun isEmpty!15597 (Option!5373) Bool)

(assert (=> b!2297166 (isEmpty!15597 lt!852196)))

(declare-fun maxPrefixOneRule!1406 (LexerInterface!3978 Rule!8562 List!27444) Option!5373)

(assert (=> b!2297166 (= lt!852196 (maxPrefixOneRule!1406 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!852195 () Unit!40242)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!417 (LexerInterface!3978 Rule!8562 List!27446 List!27444) Unit!40242)

(assert (=> b!2297166 (= lt!852195 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!417 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun res!982173 () Bool)

(assert (=> start!225732 (=> (not res!982173) (not e!1472069))))

(get-info :version)

(assert (=> start!225732 (= res!982173 ((_ is Lexer!3976) thiss!16613))))

(assert (=> start!225732 e!1472069))

(assert (=> start!225732 true))

(declare-fun e!1472077 () Bool)

(assert (=> start!225732 e!1472077))

(declare-fun e!1472068 () Bool)

(assert (=> start!225732 e!1472068))

(declare-fun e!1472090 () Bool)

(assert (=> start!225732 e!1472090))

(declare-fun e!1472085 () Bool)

(assert (=> start!225732 e!1472085))

(assert (=> start!225732 e!1472086))

(assert (=> start!225732 e!1472080))

(assert (=> start!225732 e!1472083))

(declare-fun b!2297181 () Bool)

(declare-fun e!1472081 () Bool)

(assert (=> b!2297181 (= e!1472081 e!1472095)))

(declare-fun res!982165 () Bool)

(assert (=> b!2297181 (=> res!982165 e!1472095)))

(assert (=> b!2297181 (= res!982165 (not ((_ is Nil!27351) tokens!456)))))

(declare-fun lt!852193 () Unit!40242)

(assert (=> b!2297181 (= lt!852193 e!1472093)))

(declare-fun c!364205 () Bool)

(assert (=> b!2297181 (= c!364205 (= lt!852201 lt!852197))))

(declare-fun b!2297182 () Bool)

(declare-fun res!982171 () Bool)

(declare-fun e!1472074 () Bool)

(assert (=> b!2297182 (=> (not res!982171) (not e!1472074))))

(declare-fun isPrefix!2371 (List!27444 List!27444) Bool)

(assert (=> b!2297182 (= res!982171 (isPrefix!2371 otherP!12 input!1722))))

(declare-fun b!2297183 () Bool)

(declare-fun res!982175 () Bool)

(assert (=> b!2297183 (=> (not res!982175) (not e!1472069))))

(assert (=> b!2297183 (= res!982175 (contains!4763 rules!1750 r!2363))))

(declare-fun b!2297184 () Bool)

(declare-fun tp_is_empty!10679 () Bool)

(declare-fun tp!728624 () Bool)

(assert (=> b!2297184 (= e!1472090 (and tp_is_empty!10679 tp!728624))))

(declare-fun b!2297185 () Bool)

(declare-fun res!982170 () Bool)

(assert (=> b!2297185 (=> (not res!982170) (not e!1472074))))

(assert (=> b!2297185 (= res!982170 (not (= r!2363 otherR!12)))))

(declare-fun b!2297186 () Bool)

(declare-fun tp!728625 () Bool)

(assert (=> b!2297186 (= e!1472077 (and tp_is_empty!10679 tp!728625))))

(declare-fun e!1472078 () Bool)

(declare-fun b!2297187 () Bool)

(declare-fun tp!728626 () Bool)

(assert (=> b!2297187 (= e!1472084 (and tp!728626 (inv!36965 (tag!4871 (h!32753 rules!1750))) (inv!36968 (transformation!4381 (h!32753 rules!1750))) e!1472078))))

(declare-fun tp!728617 () Bool)

(declare-fun b!2297188 () Bool)

(assert (=> b!2297188 (= e!1472068 (and tp!728617 (inv!36965 (tag!4871 otherR!12)) (inv!36968 (transformation!4381 otherR!12)) e!1472072))))

(assert (=> b!2297189 (= e!1472078 (and tp!728627 tp!728628))))

(declare-fun b!2297190 () Bool)

(declare-fun size!21555 (List!27444) Int)

(declare-fun size!21556 (BalanceConc!17548) Int)

(assert (=> b!2297190 (= e!1472071 (> (size!21555 otherP!12) (size!21556 (charsOf!2769 (head!5018 tokens!456)))))))

(declare-fun b!2297191 () Bool)

(declare-fun e!1472079 () Bool)

(assert (=> b!2297191 (= e!1472079 e!1472081)))

(declare-fun res!982176 () Bool)

(assert (=> b!2297191 (=> res!982176 e!1472081)))

(assert (=> b!2297191 (= res!982176 (> lt!852201 lt!852197))))

(declare-fun getIndex!394 (List!27446 Rule!8562) Int)

(assert (=> b!2297191 (= lt!852197 (getIndex!394 rules!1750 otherR!12))))

(assert (=> b!2297191 (= lt!852201 (getIndex!394 rules!1750 r!2363))))

(declare-fun ruleValid!1471 (LexerInterface!3978 Rule!8562) Bool)

(assert (=> b!2297191 (ruleValid!1471 thiss!16613 otherR!12)))

(declare-fun lt!852203 () Unit!40242)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!876 (LexerInterface!3978 Rule!8562 List!27446) Unit!40242)

(assert (=> b!2297191 (= lt!852203 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!876 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2297192 () Bool)

(declare-fun res!982178 () Bool)

(assert (=> b!2297192 (=> (not res!982178) (not e!1472074))))

(declare-fun e!1472094 () Bool)

(assert (=> b!2297192 (= res!982178 e!1472094)))

(declare-fun res!982166 () Bool)

(assert (=> b!2297192 (=> res!982166 e!1472094)))

(declare-fun lt!852199 () Bool)

(assert (=> b!2297192 (= res!982166 lt!852199)))

(declare-fun b!2297193 () Bool)

(declare-fun res!982172 () Bool)

(assert (=> b!2297193 (=> (not res!982172) (not e!1472069))))

(declare-fun rulesInvariant!3480 (LexerInterface!3978 List!27446) Bool)

(assert (=> b!2297193 (= res!982172 (rulesInvariant!3480 thiss!16613 rules!1750))))

(declare-fun b!2297194 () Bool)

(assert (=> b!2297194 (= e!1472094 (= (rule!6723 (head!5018 tokens!456)) r!2363))))

(declare-fun b!2297195 () Bool)

(declare-fun e!1472082 () Bool)

(assert (=> b!2297195 (= e!1472082 (<= (size!21556 (charsOf!2769 (head!5018 tokens!456))) (size!21555 otherP!12)))))

(declare-fun b!2297196 () Bool)

(declare-fun tp!728631 () Bool)

(assert (=> b!2297196 (= e!1472085 (and tp_is_empty!10679 tp!728631))))

(declare-fun b!2297197 () Bool)

(assert (=> b!2297197 (= e!1472074 (not e!1472079))))

(declare-fun res!982167 () Bool)

(assert (=> b!2297197 (=> res!982167 e!1472079)))

(assert (=> b!2297197 (= res!982167 e!1472096)))

(declare-fun res!982177 () Bool)

(assert (=> b!2297197 (=> (not res!982177) (not e!1472096))))

(assert (=> b!2297197 (= res!982177 (not lt!852199))))

(assert (=> b!2297197 (ruleValid!1471 thiss!16613 r!2363)))

(declare-fun lt!852202 () Unit!40242)

(assert (=> b!2297197 (= lt!852202 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!876 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2297198 () Bool)

(assert (=> b!2297198 (= e!1472073 e!1472074)))

(declare-fun res!982168 () Bool)

(assert (=> b!2297198 (=> (not res!982168) (not e!1472074))))

(assert (=> b!2297198 (= res!982168 e!1472082)))

(declare-fun res!982174 () Bool)

(assert (=> b!2297198 (=> res!982174 e!1472082)))

(assert (=> b!2297198 (= res!982174 lt!852199)))

(declare-fun isEmpty!15598 (List!27445) Bool)

(assert (=> b!2297198 (= lt!852199 (isEmpty!15598 tokens!456))))

(assert (= (and start!225732 res!982173) b!2297174))

(assert (= (and b!2297174 res!982179) b!2297193))

(assert (= (and b!2297193 res!982172) b!2297183))

(assert (= (and b!2297183 res!982175) b!2297169))

(assert (= (and b!2297169 res!982180) b!2297170))

(assert (= (and b!2297170 res!982169) b!2297198))

(assert (= (and b!2297198 (not res!982174)) b!2297195))

(assert (= (and b!2297198 res!982168) b!2297192))

(assert (= (and b!2297192 (not res!982166)) b!2297194))

(assert (= (and b!2297192 res!982178) b!2297182))

(assert (= (and b!2297182 res!982171) b!2297185))

(assert (= (and b!2297185 res!982170) b!2297197))

(assert (= (and b!2297197 res!982177) b!2297165))

(assert (= (and b!2297197 (not res!982167)) b!2297191))

(assert (= (and b!2297191 (not res!982176)) b!2297181))

(assert (= (and b!2297181 c!364205) b!2297172))

(assert (= (and b!2297181 (not c!364205)) b!2297168))

(assert (= (and b!2297181 (not res!982165)) b!2297166))

(assert (= (and b!2297166 (not res!982164)) b!2297177))

(assert (= (and b!2297177 (not res!982182)) b!2297164))

(assert (= (and b!2297164 (not res!982181)) b!2297190))

(assert (= (and start!225732 ((_ is Cons!27350) input!1722)) b!2297186))

(assert (= b!2297188 b!2297176))

(assert (= start!225732 b!2297188))

(assert (= (and start!225732 ((_ is Cons!27350) suffix!886)) b!2297184))

(assert (= (and start!225732 ((_ is Cons!27350) otherP!12)) b!2297196))

(assert (= b!2297187 b!2297189))

(assert (= b!2297180 b!2297187))

(assert (= (and start!225732 ((_ is Cons!27352) rules!1750)) b!2297180))

(assert (= b!2297171 b!2297175))

(assert (= start!225732 b!2297171))

(assert (= b!2297173 b!2297179))

(assert (= b!2297167 b!2297173))

(assert (= b!2297178 b!2297167))

(assert (= (and start!225732 ((_ is Cons!27351) tokens!456)) b!2297178))

(declare-fun m!2724501 () Bool)

(assert (=> b!2297171 m!2724501))

(declare-fun m!2724503 () Bool)

(assert (=> b!2297171 m!2724503))

(declare-fun m!2724505 () Bool)

(assert (=> b!2297165 m!2724505))

(assert (=> b!2297165 m!2724505))

(declare-fun m!2724507 () Bool)

(assert (=> b!2297165 m!2724507))

(assert (=> b!2297165 m!2724507))

(declare-fun m!2724509 () Bool)

(assert (=> b!2297165 m!2724509))

(assert (=> b!2297165 m!2724509))

(declare-fun m!2724511 () Bool)

(assert (=> b!2297165 m!2724511))

(assert (=> b!2297195 m!2724505))

(assert (=> b!2297195 m!2724505))

(assert (=> b!2297195 m!2724507))

(assert (=> b!2297195 m!2724507))

(declare-fun m!2724513 () Bool)

(assert (=> b!2297195 m!2724513))

(declare-fun m!2724515 () Bool)

(assert (=> b!2297195 m!2724515))

(declare-fun m!2724517 () Bool)

(assert (=> b!2297170 m!2724517))

(declare-fun m!2724519 () Bool)

(assert (=> b!2297170 m!2724519))

(declare-fun m!2724521 () Bool)

(assert (=> b!2297170 m!2724521))

(assert (=> b!2297170 m!2724521))

(declare-fun m!2724523 () Bool)

(assert (=> b!2297170 m!2724523))

(declare-fun m!2724525 () Bool)

(assert (=> b!2297182 m!2724525))

(declare-fun m!2724527 () Bool)

(assert (=> b!2297197 m!2724527))

(declare-fun m!2724529 () Bool)

(assert (=> b!2297197 m!2724529))

(declare-fun m!2724531 () Bool)

(assert (=> b!2297164 m!2724531))

(assert (=> b!2297190 m!2724515))

(assert (=> b!2297190 m!2724505))

(assert (=> b!2297190 m!2724505))

(assert (=> b!2297190 m!2724507))

(assert (=> b!2297190 m!2724507))

(assert (=> b!2297190 m!2724513))

(declare-fun m!2724533 () Bool)

(assert (=> b!2297172 m!2724533))

(declare-fun m!2724535 () Bool)

(assert (=> b!2297177 m!2724535))

(declare-fun m!2724537 () Bool)

(assert (=> b!2297177 m!2724537))

(declare-fun m!2724539 () Bool)

(assert (=> b!2297173 m!2724539))

(declare-fun m!2724541 () Bool)

(assert (=> b!2297173 m!2724541))

(declare-fun m!2724543 () Bool)

(assert (=> b!2297169 m!2724543))

(declare-fun m!2724545 () Bool)

(assert (=> b!2297191 m!2724545))

(declare-fun m!2724547 () Bool)

(assert (=> b!2297191 m!2724547))

(declare-fun m!2724549 () Bool)

(assert (=> b!2297191 m!2724549))

(declare-fun m!2724551 () Bool)

(assert (=> b!2297191 m!2724551))

(declare-fun m!2724553 () Bool)

(assert (=> b!2297166 m!2724553))

(declare-fun m!2724555 () Bool)

(assert (=> b!2297166 m!2724555))

(declare-fun m!2724557 () Bool)

(assert (=> b!2297166 m!2724557))

(declare-fun m!2724559 () Bool)

(assert (=> b!2297193 m!2724559))

(declare-fun m!2724561 () Bool)

(assert (=> b!2297188 m!2724561))

(declare-fun m!2724563 () Bool)

(assert (=> b!2297188 m!2724563))

(assert (=> b!2297194 m!2724505))

(declare-fun m!2724565 () Bool)

(assert (=> b!2297187 m!2724565))

(declare-fun m!2724567 () Bool)

(assert (=> b!2297187 m!2724567))

(declare-fun m!2724569 () Bool)

(assert (=> b!2297174 m!2724569))

(declare-fun m!2724571 () Bool)

(assert (=> b!2297183 m!2724571))

(declare-fun m!2724573 () Bool)

(assert (=> b!2297167 m!2724573))

(declare-fun m!2724575 () Bool)

(assert (=> b!2297198 m!2724575))

(declare-fun m!2724577 () Bool)

(assert (=> b!2297178 m!2724577))

(check-sat (not b_next!69919) b_and!182789 (not b!2297183) (not b!2297194) (not b!2297165) (not b!2297173) (not b!2297171) (not b_next!69921) (not b!2297170) (not b!2297166) (not b!2297180) (not b!2297190) b_and!182791 (not b!2297167) (not b_next!69917) (not b_next!69929) (not b!2297164) (not b!2297182) (not b!2297196) (not b_next!69925) (not b!2297186) (not b!2297188) (not b!2297195) (not b!2297197) (not b!2297193) (not b!2297172) (not b_next!69923) b_and!182781 b_and!182777 (not b!2297191) (not b!2297169) (not b!2297177) (not b!2297178) b_and!182785 (not b!2297174) (not b_next!69927) b_and!182787 (not b!2297184) tp_is_empty!10679 b_and!182779 (not b!2297198) b_and!182783 (not b_next!69931) (not b!2297187))
(check-sat b_and!182791 (not b_next!69919) (not b_next!69925) b_and!182789 b_and!182777 b_and!182785 b_and!182779 b_and!182783 (not b_next!69921) (not b_next!69931) (not b_next!69917) (not b_next!69929) (not b_next!69923) b_and!182781 (not b_next!69927) b_and!182787)

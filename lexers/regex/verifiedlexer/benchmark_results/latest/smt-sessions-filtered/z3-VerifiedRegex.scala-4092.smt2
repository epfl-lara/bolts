; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219096 () Bool)

(assert start!219096)

(declare-fun b!2247099 () Bool)

(declare-fun b_free!65661 () Bool)

(declare-fun b_next!66365 () Bool)

(assert (=> b!2247099 (= b_free!65661 (not b_next!66365))))

(declare-fun tp!709562 () Bool)

(declare-fun b_and!175833 () Bool)

(assert (=> b!2247099 (= tp!709562 b_and!175833)))

(declare-fun b_free!65663 () Bool)

(declare-fun b_next!66367 () Bool)

(assert (=> b!2247099 (= b_free!65663 (not b_next!66367))))

(declare-fun tp!709571 () Bool)

(declare-fun b_and!175835 () Bool)

(assert (=> b!2247099 (= tp!709571 b_and!175835)))

(declare-fun b!2247107 () Bool)

(declare-fun b_free!65665 () Bool)

(declare-fun b_next!66369 () Bool)

(assert (=> b!2247107 (= b_free!65665 (not b_next!66369))))

(declare-fun tp!709568 () Bool)

(declare-fun b_and!175837 () Bool)

(assert (=> b!2247107 (= tp!709568 b_and!175837)))

(declare-fun b_free!65667 () Bool)

(declare-fun b_next!66371 () Bool)

(assert (=> b!2247107 (= b_free!65667 (not b_next!66371))))

(declare-fun tp!709577 () Bool)

(declare-fun b_and!175839 () Bool)

(assert (=> b!2247107 (= tp!709577 b_and!175839)))

(declare-fun b!2247118 () Bool)

(declare-fun b_free!65669 () Bool)

(declare-fun b_next!66373 () Bool)

(assert (=> b!2247118 (= b_free!65669 (not b_next!66373))))

(declare-fun tp!709563 () Bool)

(declare-fun b_and!175841 () Bool)

(assert (=> b!2247118 (= tp!709563 b_and!175841)))

(declare-fun b_free!65671 () Bool)

(declare-fun b_next!66375 () Bool)

(assert (=> b!2247118 (= b_free!65671 (not b_next!66375))))

(declare-fun tp!709578 () Bool)

(declare-fun b_and!175843 () Bool)

(assert (=> b!2247118 (= tp!709578 b_and!175843)))

(declare-fun b!2247122 () Bool)

(declare-fun b_free!65673 () Bool)

(declare-fun b_next!66377 () Bool)

(assert (=> b!2247122 (= b_free!65673 (not b_next!66377))))

(declare-fun tp!709579 () Bool)

(declare-fun b_and!175845 () Bool)

(assert (=> b!2247122 (= tp!709579 b_and!175845)))

(declare-fun b_free!65675 () Bool)

(declare-fun b_next!66379 () Bool)

(assert (=> b!2247122 (= b_free!65675 (not b_next!66379))))

(declare-fun tp!709572 () Bool)

(declare-fun b_and!175847 () Bool)

(assert (=> b!2247122 (= tp!709572 b_and!175847)))

(declare-fun b!2247090 () Bool)

(declare-fun e!1437841 () Bool)

(declare-fun e!1437861 () Bool)

(assert (=> b!2247090 (= e!1437841 e!1437861)))

(declare-fun res!960252 () Bool)

(assert (=> b!2247090 (=> (not res!960252) (not e!1437861))))

(declare-fun e!1437866 () Bool)

(assert (=> b!2247090 (= res!960252 e!1437866)))

(declare-fun res!960259 () Bool)

(assert (=> b!2247090 (=> res!960259 e!1437866)))

(declare-fun lt!835638 () Bool)

(assert (=> b!2247090 (= res!960259 lt!835638)))

(declare-datatypes ((List!26703 0))(
  ( (Nil!26609) (Cons!26609 (h!32010 (_ BitVec 16)) (t!200449 List!26703)) )
))
(declare-datatypes ((TokenValue!4377 0))(
  ( (FloatLiteralValue!8754 (text!31084 List!26703)) (TokenValueExt!4376 (__x!17814 Int)) (Broken!21885 (value!133921 List!26703)) (Object!4470) (End!4377) (Def!4377) (Underscore!4377) (Match!4377) (Else!4377) (Error!4377) (Case!4377) (If!4377) (Extends!4377) (Abstract!4377) (Class!4377) (Val!4377) (DelimiterValue!8754 (del!4437 List!26703)) (KeywordValue!4383 (value!133922 List!26703)) (CommentValue!8754 (value!133923 List!26703)) (WhitespaceValue!8754 (value!133924 List!26703)) (IndentationValue!4377 (value!133925 List!26703)) (String!28988) (Int32!4377) (Broken!21886 (value!133926 List!26703)) (Boolean!4378) (Unit!39561) (OperatorValue!4380 (op!4437 List!26703)) (IdentifierValue!8754 (value!133927 List!26703)) (IdentifierValue!8755 (value!133928 List!26703)) (WhitespaceValue!8755 (value!133929 List!26703)) (True!8754) (False!8754) (Broken!21887 (value!133930 List!26703)) (Broken!21888 (value!133931 List!26703)) (True!8755) (RightBrace!4377) (RightBracket!4377) (Colon!4377) (Null!4377) (Comma!4377) (LeftBracket!4377) (False!8755) (LeftBrace!4377) (ImaginaryLiteralValue!4377 (text!31085 List!26703)) (StringLiteralValue!13131 (value!133932 List!26703)) (EOFValue!4377 (value!133933 List!26703)) (IdentValue!4377 (value!133934 List!26703)) (DelimiterValue!8755 (value!133935 List!26703)) (DedentValue!4377 (value!133936 List!26703)) (NewLineValue!4377 (value!133937 List!26703)) (IntegerValue!13131 (value!133938 (_ BitVec 32)) (text!31086 List!26703)) (IntegerValue!13132 (value!133939 Int) (text!31087 List!26703)) (Times!4377) (Or!4377) (Equal!4377) (Minus!4377) (Broken!21889 (value!133940 List!26703)) (And!4377) (Div!4377) (LessEqual!4377) (Mod!4377) (Concat!10940) (Not!4377) (Plus!4377) (SpaceValue!4377 (value!133941 List!26703)) (IntegerValue!13133 (value!133942 Int) (text!31088 List!26703)) (StringLiteralValue!13132 (text!31089 List!26703)) (FloatLiteralValue!8755 (text!31090 List!26703)) (BytesLiteralValue!4377 (value!133943 List!26703)) (CommentValue!8755 (value!133944 List!26703)) (StringLiteralValue!13133 (value!133945 List!26703)) (ErrorTokenValue!4377 (msg!4438 List!26703)) )
))
(declare-datatypes ((C!13272 0))(
  ( (C!13273 (val!7684 Int)) )
))
(declare-datatypes ((List!26704 0))(
  ( (Nil!26610) (Cons!26610 (h!32011 C!13272) (t!200450 List!26704)) )
))
(declare-datatypes ((IArray!17161 0))(
  ( (IArray!17162 (innerList!8638 List!26704)) )
))
(declare-datatypes ((Conc!8578 0))(
  ( (Node!8578 (left!20218 Conc!8578) (right!20548 Conc!8578) (csize!17386 Int) (cheight!8789 Int)) (Leaf!12671 (xs!11520 IArray!17161) (csize!17387 Int)) (Empty!8578) )
))
(declare-datatypes ((BalanceConc!16884 0))(
  ( (BalanceConc!16885 (c!357448 Conc!8578)) )
))
(declare-datatypes ((Regex!6563 0))(
  ( (ElementMatch!6563 (c!357449 C!13272)) (Concat!10941 (regOne!13638 Regex!6563) (regTwo!13638 Regex!6563)) (EmptyExpr!6563) (Star!6563 (reg!6892 Regex!6563)) (EmptyLang!6563) (Union!6563 (regOne!13639 Regex!6563) (regTwo!13639 Regex!6563)) )
))
(declare-datatypes ((String!28989 0))(
  ( (String!28990 (value!133946 String)) )
))
(declare-datatypes ((TokenValueInjection!8294 0))(
  ( (TokenValueInjection!8295 (toValue!5945 Int) (toChars!5804 Int)) )
))
(declare-datatypes ((Rule!8230 0))(
  ( (Rule!8231 (regex!4215 Regex!6563) (tag!4705 String!28989) (isSeparator!4215 Bool) (transformation!4215 TokenValueInjection!8294)) )
))
(declare-datatypes ((Token!7908 0))(
  ( (Token!7909 (value!133947 TokenValue!4377) (rule!6515 Rule!8230) (size!20810 Int) (originalCharacters!4985 List!26704)) )
))
(declare-datatypes ((List!26705 0))(
  ( (Nil!26611) (Cons!26611 (h!32012 Token!7908) (t!200451 List!26705)) )
))
(declare-fun tokens!456 () List!26705)

(declare-fun isEmpty!14992 (List!26705) Bool)

(assert (=> b!2247090 (= lt!835638 (isEmpty!14992 tokens!456))))

(declare-fun b!2247091 () Bool)

(declare-fun e!1437859 () Bool)

(declare-fun otherR!12 () Rule!8230)

(declare-fun validRegex!2452 (Regex!6563) Bool)

(assert (=> b!2247091 (= e!1437859 (validRegex!2452 (regex!4215 otherR!12)))))

(declare-fun tp!709575 () Bool)

(declare-fun e!1437864 () Bool)

(declare-fun b!2247092 () Bool)

(declare-fun e!1437865 () Bool)

(declare-fun inv!36132 (String!28989) Bool)

(declare-fun inv!36135 (TokenValueInjection!8294) Bool)

(assert (=> b!2247092 (= e!1437864 (and tp!709575 (inv!36132 (tag!4705 (rule!6515 (h!32012 tokens!456)))) (inv!36135 (transformation!4215 (rule!6515 (h!32012 tokens!456)))) e!1437865))))

(declare-fun b!2247093 () Bool)

(declare-fun e!1437856 () Bool)

(assert (=> b!2247093 (= e!1437856 e!1437841)))

(declare-fun res!960256 () Bool)

(assert (=> b!2247093 (=> (not res!960256) (not e!1437841))))

(declare-datatypes ((IArray!17163 0))(
  ( (IArray!17164 (innerList!8639 List!26705)) )
))
(declare-datatypes ((Conc!8579 0))(
  ( (Node!8579 (left!20219 Conc!8579) (right!20549 Conc!8579) (csize!17388 Int) (cheight!8790 Int)) (Leaf!12672 (xs!11521 IArray!17163) (csize!17389 Int)) (Empty!8579) )
))
(declare-datatypes ((BalanceConc!16886 0))(
  ( (BalanceConc!16887 (c!357450 Conc!8579)) )
))
(declare-datatypes ((tuple2!26090 0))(
  ( (tuple2!26091 (_1!15555 BalanceConc!16886) (_2!15555 BalanceConc!16884)) )
))
(declare-fun lt!835641 () tuple2!26090)

(declare-fun suffix!886 () List!26704)

(declare-datatypes ((tuple2!26092 0))(
  ( (tuple2!26093 (_1!15556 List!26705) (_2!15556 List!26704)) )
))
(declare-fun list!10190 (BalanceConc!16886) List!26705)

(declare-fun list!10191 (BalanceConc!16884) List!26704)

(assert (=> b!2247093 (= res!960256 (= (tuple2!26093 (list!10190 (_1!15555 lt!835641)) (list!10191 (_2!15555 lt!835641))) (tuple2!26093 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3812 0))(
  ( (LexerInterfaceExt!3809 (__x!17815 Int)) (Lexer!3810) )
))
(declare-fun thiss!16613 () LexerInterface!3812)

(declare-fun input!1722 () List!26704)

(declare-datatypes ((List!26706 0))(
  ( (Nil!26612) (Cons!26612 (h!32013 Rule!8230) (t!200452 List!26706)) )
))
(declare-fun rules!1750 () List!26706)

(declare-fun lex!1651 (LexerInterface!3812 List!26706 BalanceConc!16884) tuple2!26090)

(declare-fun seqFromList!2919 (List!26704) BalanceConc!16884)

(assert (=> b!2247093 (= lt!835641 (lex!1651 thiss!16613 rules!1750 (seqFromList!2919 input!1722)))))

(declare-fun b!2247095 () Bool)

(declare-fun e!1437844 () Bool)

(assert (=> b!2247095 (= e!1437844 e!1437859)))

(declare-fun res!960262 () Bool)

(assert (=> b!2247095 (=> res!960262 e!1437859)))

(declare-fun lt!835635 () Int)

(declare-fun lt!835639 () Int)

(assert (=> b!2247095 (= res!960262 (< lt!835635 lt!835639))))

(declare-fun otherP!12 () List!26704)

(declare-fun matchR!2824 (Regex!6563 List!26704) Bool)

(assert (=> b!2247095 (not (matchR!2824 (regex!4215 otherR!12) otherP!12))))

(declare-datatypes ((Unit!39562 0))(
  ( (Unit!39563) )
))
(declare-fun lt!835634 () Unit!39562)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!393 (LexerInterface!3812 Rule!8230 List!26704 List!26704) Unit!39562)

(assert (=> b!2247095 (= lt!835634 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!393 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun b!2247096 () Bool)

(declare-fun e!1437838 () Bool)

(declare-fun tp_is_empty!10347 () Bool)

(declare-fun tp!709567 () Bool)

(assert (=> b!2247096 (= e!1437838 (and tp_is_empty!10347 tp!709567))))

(declare-fun b!2247097 () Bool)

(declare-fun res!960251 () Bool)

(assert (=> b!2247097 (=> (not res!960251) (not e!1437861))))

(declare-fun r!2363 () Rule!8230)

(assert (=> b!2247097 (= res!960251 (not (= r!2363 otherR!12)))))

(declare-fun b!2247098 () Bool)

(declare-fun e!1437843 () Bool)

(declare-fun size!20811 (List!26704) Int)

(declare-fun size!20812 (BalanceConc!16884) Int)

(declare-fun charsOf!2603 (Token!7908) BalanceConc!16884)

(declare-fun head!4776 (List!26705) Token!7908)

(assert (=> b!2247098 (= e!1437843 (<= (size!20811 otherP!12) (size!20812 (charsOf!2603 (head!4776 tokens!456)))))))

(declare-fun e!1437848 () Bool)

(assert (=> b!2247099 (= e!1437848 (and tp!709562 tp!709571))))

(declare-fun b!2247100 () Bool)

(declare-fun e!1437849 () Bool)

(assert (=> b!2247100 (= e!1437849 (not (matchR!2824 (regex!4215 r!2363) (list!10191 (charsOf!2603 (head!4776 tokens!456))))))))

(declare-fun b!2247101 () Bool)

(assert (=> b!2247101 (= e!1437866 (<= (size!20812 (charsOf!2603 (head!4776 tokens!456))) (size!20811 otherP!12)))))

(declare-fun b!2247102 () Bool)

(declare-fun res!960253 () Bool)

(assert (=> b!2247102 (=> (not res!960253) (not e!1437861))))

(declare-fun e!1437846 () Bool)

(assert (=> b!2247102 (= res!960253 e!1437846)))

(declare-fun res!960255 () Bool)

(assert (=> b!2247102 (=> res!960255 e!1437846)))

(assert (=> b!2247102 (= res!960255 lt!835638)))

(declare-fun tp!709569 () Bool)

(declare-fun b!2247103 () Bool)

(declare-fun e!1437852 () Bool)

(declare-fun e!1437855 () Bool)

(assert (=> b!2247103 (= e!1437852 (and tp!709569 (inv!36132 (tag!4705 otherR!12)) (inv!36135 (transformation!4215 otherR!12)) e!1437855))))

(declare-fun b!2247104 () Bool)

(assert (=> b!2247104 (= e!1437846 (= (rule!6515 (head!4776 tokens!456)) r!2363))))

(declare-fun b!2247105 () Bool)

(declare-fun res!960245 () Bool)

(assert (=> b!2247105 (=> res!960245 e!1437859)))

(assert (=> b!2247105 (= res!960245 e!1437843)))

(declare-fun res!960248 () Bool)

(assert (=> b!2247105 (=> (not res!960248) (not e!1437843))))

(declare-fun size!20813 (List!26705) Int)

(assert (=> b!2247105 (= res!960248 (> (size!20813 tokens!456) 0))))

(declare-fun tp!709564 () Bool)

(declare-fun b!2247106 () Bool)

(declare-fun e!1437863 () Bool)

(assert (=> b!2247106 (= e!1437863 (and tp!709564 (inv!36132 (tag!4705 r!2363)) (inv!36135 (transformation!4215 r!2363)) e!1437848))))

(declare-fun e!1437845 () Bool)

(assert (=> b!2247107 (= e!1437845 (and tp!709568 tp!709577))))

(declare-fun b!2247108 () Bool)

(declare-fun res!960254 () Bool)

(assert (=> b!2247108 (=> (not res!960254) (not e!1437861))))

(declare-fun isPrefix!2205 (List!26704 List!26704) Bool)

(assert (=> b!2247108 (= res!960254 (isPrefix!2205 otherP!12 input!1722))))

(declare-fun b!2247109 () Bool)

(declare-fun e!1437860 () Bool)

(declare-fun tp!709576 () Bool)

(assert (=> b!2247109 (= e!1437860 (and tp_is_empty!10347 tp!709576))))

(declare-fun b!2247110 () Bool)

(declare-fun res!960261 () Bool)

(assert (=> b!2247110 (=> (not res!960261) (not e!1437856))))

(declare-fun rulesInvariant!3314 (LexerInterface!3812 List!26706) Bool)

(assert (=> b!2247110 (= res!960261 (rulesInvariant!3314 thiss!16613 rules!1750))))

(declare-fun b!2247111 () Bool)

(declare-fun e!1437862 () Bool)

(declare-fun tp!709570 () Bool)

(assert (=> b!2247111 (= e!1437862 (and tp_is_empty!10347 tp!709570))))

(declare-fun b!2247094 () Bool)

(declare-fun e!1437847 () Bool)

(declare-fun e!1437842 () Bool)

(assert (=> b!2247094 (= e!1437847 e!1437842)))

(declare-fun res!960249 () Bool)

(assert (=> b!2247094 (=> res!960249 e!1437842)))

(get-info :version)

(assert (=> b!2247094 (= res!960249 (or (<= lt!835639 lt!835635) (not ((_ is Nil!26611) tokens!456))))))

(declare-fun getIndex!236 (List!26706 Rule!8230) Int)

(assert (=> b!2247094 (= lt!835635 (getIndex!236 rules!1750 otherR!12))))

(assert (=> b!2247094 (= lt!835639 (getIndex!236 rules!1750 r!2363))))

(declare-fun ruleValid!1307 (LexerInterface!3812 Rule!8230) Bool)

(assert (=> b!2247094 (ruleValid!1307 thiss!16613 otherR!12)))

(declare-fun lt!835640 () Unit!39562)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!714 (LexerInterface!3812 Rule!8230 List!26706) Unit!39562)

(assert (=> b!2247094 (= lt!835640 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!714 thiss!16613 otherR!12 rules!1750))))

(declare-fun res!960250 () Bool)

(assert (=> start!219096 (=> (not res!960250) (not e!1437856))))

(assert (=> start!219096 (= res!960250 ((_ is Lexer!3810) thiss!16613))))

(assert (=> start!219096 e!1437856))

(assert (=> start!219096 true))

(assert (=> start!219096 e!1437838))

(assert (=> start!219096 e!1437852))

(assert (=> start!219096 e!1437860))

(assert (=> start!219096 e!1437862))

(declare-fun e!1437867 () Bool)

(assert (=> start!219096 e!1437867))

(assert (=> start!219096 e!1437863))

(declare-fun e!1437840 () Bool)

(assert (=> start!219096 e!1437840))

(declare-fun b!2247112 () Bool)

(declare-fun res!960247 () Bool)

(assert (=> b!2247112 (=> (not res!960247) (not e!1437856))))

(declare-fun contains!4562 (List!26706 Rule!8230) Bool)

(assert (=> b!2247112 (= res!960247 (contains!4562 rules!1750 otherR!12))))

(declare-fun b!2247113 () Bool)

(assert (=> b!2247113 (= e!1437861 (not e!1437847))))

(declare-fun res!960246 () Bool)

(assert (=> b!2247113 (=> res!960246 e!1437847)))

(assert (=> b!2247113 (= res!960246 e!1437849)))

(declare-fun res!960260 () Bool)

(assert (=> b!2247113 (=> (not res!960260) (not e!1437849))))

(assert (=> b!2247113 (= res!960260 (not lt!835638))))

(assert (=> b!2247113 (ruleValid!1307 thiss!16613 r!2363)))

(declare-fun lt!835637 () Unit!39562)

(assert (=> b!2247113 (= lt!835637 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!714 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2247114 () Bool)

(declare-fun res!960257 () Bool)

(assert (=> b!2247114 (=> (not res!960257) (not e!1437856))))

(declare-fun isEmpty!14993 (List!26706) Bool)

(assert (=> b!2247114 (= res!960257 (not (isEmpty!14993 rules!1750)))))

(declare-fun b!2247115 () Bool)

(declare-fun e!1437858 () Bool)

(declare-fun tp!709574 () Bool)

(assert (=> b!2247115 (= e!1437867 (and e!1437858 tp!709574))))

(declare-fun b!2247116 () Bool)

(declare-fun tp!709573 () Bool)

(assert (=> b!2247116 (= e!1437858 (and tp!709573 (inv!36132 (tag!4705 (h!32013 rules!1750))) (inv!36135 (transformation!4215 (h!32013 rules!1750))) e!1437845))))

(declare-fun e!1437857 () Bool)

(declare-fun b!2247117 () Bool)

(declare-fun tp!709565 () Bool)

(declare-fun inv!21 (TokenValue!4377) Bool)

(assert (=> b!2247117 (= e!1437857 (and (inv!21 (value!133947 (h!32012 tokens!456))) e!1437864 tp!709565))))

(assert (=> b!2247118 (= e!1437865 (and tp!709563 tp!709578))))

(declare-fun tp!709566 () Bool)

(declare-fun b!2247119 () Bool)

(declare-fun inv!36136 (Token!7908) Bool)

(assert (=> b!2247119 (= e!1437840 (and (inv!36136 (h!32012 tokens!456)) e!1437857 tp!709566))))

(declare-fun b!2247120 () Bool)

(assert (=> b!2247120 (= e!1437842 e!1437844)))

(declare-fun res!960263 () Bool)

(assert (=> b!2247120 (=> res!960263 e!1437844)))

(declare-datatypes ((tuple2!26094 0))(
  ( (tuple2!26095 (_1!15557 Token!7908) (_2!15557 List!26704)) )
))
(declare-datatypes ((Option!5190 0))(
  ( (None!5189) (Some!5189 (v!30203 tuple2!26094)) )
))
(declare-fun lt!835642 () Option!5190)

(assert (=> b!2247120 (= res!960263 (not (= lt!835642 None!5189)))))

(declare-fun isEmpty!14994 (Option!5190) Bool)

(assert (=> b!2247120 (isEmpty!14994 lt!835642)))

(declare-fun maxPrefixOneRule!1308 (LexerInterface!3812 Rule!8230 List!26704) Option!5190)

(assert (=> b!2247120 (= lt!835642 (maxPrefixOneRule!1308 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!835636 () Unit!39562)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!399 (LexerInterface!3812 Rule!8230 List!26706 List!26704) Unit!39562)

(assert (=> b!2247120 (= lt!835636 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!399 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2247121 () Bool)

(declare-fun res!960258 () Bool)

(assert (=> b!2247121 (=> (not res!960258) (not e!1437856))))

(assert (=> b!2247121 (= res!960258 (contains!4562 rules!1750 r!2363))))

(assert (=> b!2247122 (= e!1437855 (and tp!709579 tp!709572))))

(assert (= (and start!219096 res!960250) b!2247114))

(assert (= (and b!2247114 res!960257) b!2247110))

(assert (= (and b!2247110 res!960261) b!2247121))

(assert (= (and b!2247121 res!960258) b!2247112))

(assert (= (and b!2247112 res!960247) b!2247093))

(assert (= (and b!2247093 res!960256) b!2247090))

(assert (= (and b!2247090 (not res!960259)) b!2247101))

(assert (= (and b!2247090 res!960252) b!2247102))

(assert (= (and b!2247102 (not res!960255)) b!2247104))

(assert (= (and b!2247102 res!960253) b!2247108))

(assert (= (and b!2247108 res!960254) b!2247097))

(assert (= (and b!2247097 res!960251) b!2247113))

(assert (= (and b!2247113 res!960260) b!2247100))

(assert (= (and b!2247113 (not res!960246)) b!2247094))

(assert (= (and b!2247094 (not res!960249)) b!2247120))

(assert (= (and b!2247120 (not res!960263)) b!2247095))

(assert (= (and b!2247095 (not res!960262)) b!2247105))

(assert (= (and b!2247105 res!960248) b!2247098))

(assert (= (and b!2247105 (not res!960245)) b!2247091))

(assert (= (and start!219096 ((_ is Cons!26610) input!1722)) b!2247096))

(assert (= b!2247103 b!2247122))

(assert (= start!219096 b!2247103))

(assert (= (and start!219096 ((_ is Cons!26610) suffix!886)) b!2247109))

(assert (= (and start!219096 ((_ is Cons!26610) otherP!12)) b!2247111))

(assert (= b!2247116 b!2247107))

(assert (= b!2247115 b!2247116))

(assert (= (and start!219096 ((_ is Cons!26612) rules!1750)) b!2247115))

(assert (= b!2247106 b!2247099))

(assert (= start!219096 b!2247106))

(assert (= b!2247092 b!2247118))

(assert (= b!2247117 b!2247092))

(assert (= b!2247119 b!2247117))

(assert (= (and start!219096 ((_ is Cons!26611) tokens!456)) b!2247119))

(declare-fun m!2678341 () Bool)

(assert (=> b!2247117 m!2678341))

(declare-fun m!2678343 () Bool)

(assert (=> b!2247120 m!2678343))

(declare-fun m!2678345 () Bool)

(assert (=> b!2247120 m!2678345))

(declare-fun m!2678347 () Bool)

(assert (=> b!2247120 m!2678347))

(declare-fun m!2678349 () Bool)

(assert (=> b!2247090 m!2678349))

(declare-fun m!2678351 () Bool)

(assert (=> b!2247103 m!2678351))

(declare-fun m!2678353 () Bool)

(assert (=> b!2247103 m!2678353))

(declare-fun m!2678355 () Bool)

(assert (=> b!2247119 m!2678355))

(declare-fun m!2678357 () Bool)

(assert (=> b!2247113 m!2678357))

(declare-fun m!2678359 () Bool)

(assert (=> b!2247113 m!2678359))

(declare-fun m!2678361 () Bool)

(assert (=> b!2247104 m!2678361))

(declare-fun m!2678363 () Bool)

(assert (=> b!2247098 m!2678363))

(assert (=> b!2247098 m!2678361))

(assert (=> b!2247098 m!2678361))

(declare-fun m!2678365 () Bool)

(assert (=> b!2247098 m!2678365))

(assert (=> b!2247098 m!2678365))

(declare-fun m!2678367 () Bool)

(assert (=> b!2247098 m!2678367))

(declare-fun m!2678369 () Bool)

(assert (=> b!2247091 m!2678369))

(declare-fun m!2678371 () Bool)

(assert (=> b!2247095 m!2678371))

(declare-fun m!2678373 () Bool)

(assert (=> b!2247095 m!2678373))

(declare-fun m!2678375 () Bool)

(assert (=> b!2247114 m!2678375))

(declare-fun m!2678377 () Bool)

(assert (=> b!2247093 m!2678377))

(declare-fun m!2678379 () Bool)

(assert (=> b!2247093 m!2678379))

(declare-fun m!2678381 () Bool)

(assert (=> b!2247093 m!2678381))

(assert (=> b!2247093 m!2678381))

(declare-fun m!2678383 () Bool)

(assert (=> b!2247093 m!2678383))

(declare-fun m!2678385 () Bool)

(assert (=> b!2247092 m!2678385))

(declare-fun m!2678387 () Bool)

(assert (=> b!2247092 m!2678387))

(declare-fun m!2678389 () Bool)

(assert (=> b!2247121 m!2678389))

(assert (=> b!2247100 m!2678361))

(assert (=> b!2247100 m!2678361))

(assert (=> b!2247100 m!2678365))

(assert (=> b!2247100 m!2678365))

(declare-fun m!2678391 () Bool)

(assert (=> b!2247100 m!2678391))

(assert (=> b!2247100 m!2678391))

(declare-fun m!2678393 () Bool)

(assert (=> b!2247100 m!2678393))

(declare-fun m!2678395 () Bool)

(assert (=> b!2247094 m!2678395))

(declare-fun m!2678397 () Bool)

(assert (=> b!2247094 m!2678397))

(declare-fun m!2678399 () Bool)

(assert (=> b!2247094 m!2678399))

(declare-fun m!2678401 () Bool)

(assert (=> b!2247094 m!2678401))

(assert (=> b!2247101 m!2678361))

(assert (=> b!2247101 m!2678361))

(assert (=> b!2247101 m!2678365))

(assert (=> b!2247101 m!2678365))

(assert (=> b!2247101 m!2678367))

(assert (=> b!2247101 m!2678363))

(declare-fun m!2678403 () Bool)

(assert (=> b!2247108 m!2678403))

(declare-fun m!2678405 () Bool)

(assert (=> b!2247112 m!2678405))

(declare-fun m!2678407 () Bool)

(assert (=> b!2247116 m!2678407))

(declare-fun m!2678409 () Bool)

(assert (=> b!2247116 m!2678409))

(declare-fun m!2678411 () Bool)

(assert (=> b!2247110 m!2678411))

(declare-fun m!2678413 () Bool)

(assert (=> b!2247106 m!2678413))

(declare-fun m!2678415 () Bool)

(assert (=> b!2247106 m!2678415))

(declare-fun m!2678417 () Bool)

(assert (=> b!2247105 m!2678417))

(check-sat (not b!2247112) (not b_next!66377) (not b!2247109) (not b_next!66373) (not b!2247113) b_and!175843 (not b!2247100) b_and!175833 b_and!175837 (not b!2247090) b_and!175845 (not b!2247115) (not b!2247093) b_and!175839 (not b!2247092) tp_is_empty!10347 (not b!2247103) (not b!2247114) (not b!2247110) (not b_next!66379) (not b_next!66369) (not b_next!66371) (not b!2247095) (not b!2247120) (not b!2247117) (not b_next!66375) (not b_next!66365) (not b!2247121) (not b!2247096) (not b!2247111) (not b!2247105) (not b!2247098) (not b!2247119) b_and!175847 b_and!175835 (not b_next!66367) (not b!2247106) (not b!2247116) (not b!2247104) (not b!2247101) (not b!2247094) b_and!175841 (not b!2247108) (not b!2247091))
(check-sat (not b_next!66377) (not b_next!66373) (not b_next!66379) b_and!175843 (not b_next!66367) b_and!175833 b_and!175837 b_and!175845 b_and!175839 b_and!175841 (not b_next!66371) (not b_next!66369) (not b_next!66375) (not b_next!66365) b_and!175847 b_and!175835)

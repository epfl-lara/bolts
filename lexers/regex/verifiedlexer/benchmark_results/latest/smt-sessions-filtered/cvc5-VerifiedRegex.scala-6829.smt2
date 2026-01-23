; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!359298 () Bool)

(assert start!359298)

(declare-fun b!3837574 () Bool)

(declare-fun b_free!102057 () Bool)

(declare-fun b_next!102761 () Bool)

(assert (=> b!3837574 (= b_free!102057 (not b_next!102761))))

(declare-fun tp!1161774 () Bool)

(declare-fun b_and!285559 () Bool)

(assert (=> b!3837574 (= tp!1161774 b_and!285559)))

(declare-fun b_free!102059 () Bool)

(declare-fun b_next!102763 () Bool)

(assert (=> b!3837574 (= b_free!102059 (not b_next!102763))))

(declare-fun tp!1161761 () Bool)

(declare-fun b_and!285561 () Bool)

(assert (=> b!3837574 (= tp!1161761 b_and!285561)))

(declare-fun b!3837580 () Bool)

(declare-fun b_free!102061 () Bool)

(declare-fun b_next!102765 () Bool)

(assert (=> b!3837580 (= b_free!102061 (not b_next!102765))))

(declare-fun tp!1161764 () Bool)

(declare-fun b_and!285563 () Bool)

(assert (=> b!3837580 (= tp!1161764 b_and!285563)))

(declare-fun b_free!102063 () Bool)

(declare-fun b_next!102767 () Bool)

(assert (=> b!3837580 (= b_free!102063 (not b_next!102767))))

(declare-fun tp!1161767 () Bool)

(declare-fun b_and!285565 () Bool)

(assert (=> b!3837580 (= tp!1161767 b_and!285565)))

(declare-fun b!3837577 () Bool)

(declare-fun b_free!102065 () Bool)

(declare-fun b_next!102769 () Bool)

(assert (=> b!3837577 (= b_free!102065 (not b_next!102769))))

(declare-fun tp!1161765 () Bool)

(declare-fun b_and!285567 () Bool)

(assert (=> b!3837577 (= tp!1161765 b_and!285567)))

(declare-fun b_free!102067 () Bool)

(declare-fun b_next!102771 () Bool)

(assert (=> b!3837577 (= b_free!102067 (not b_next!102771))))

(declare-fun tp!1161770 () Bool)

(declare-fun b_and!285569 () Bool)

(assert (=> b!3837577 (= tp!1161770 b_and!285569)))

(declare-fun b!3837565 () Bool)

(declare-fun res!1553203 () Bool)

(declare-fun e!2370144 () Bool)

(assert (=> b!3837565 (=> (not res!1553203) (not e!2370144))))

(declare-datatypes ((C!22486 0))(
  ( (C!22487 (val!13337 Int)) )
))
(declare-datatypes ((List!40658 0))(
  ( (Nil!40534) (Cons!40534 (h!45954 C!22486) (t!309995 List!40658)) )
))
(declare-fun suffixResult!91 () List!40658)

(declare-datatypes ((LexerInterface!5834 0))(
  ( (LexerInterfaceExt!5831 (__x!25167 Int)) (Lexer!5832) )
))
(declare-fun thiss!20629 () LexerInterface!5834)

(declare-fun suffix!1176 () List!40658)

(declare-datatypes ((IArray!24917 0))(
  ( (IArray!24918 (innerList!12516 List!40658)) )
))
(declare-datatypes ((Conc!12456 0))(
  ( (Node!12456 (left!31345 Conc!12456) (right!31675 Conc!12456) (csize!25142 Int) (cheight!12667 Int)) (Leaf!19286 (xs!15762 IArray!24917) (csize!25143 Int)) (Empty!12456) )
))
(declare-datatypes ((BalanceConc!24506 0))(
  ( (BalanceConc!24507 (c!669081 Conc!12456)) )
))
(declare-datatypes ((List!40659 0))(
  ( (Nil!40535) (Cons!40535 (h!45955 (_ BitVec 16)) (t!309996 List!40659)) )
))
(declare-datatypes ((TokenValue!6475 0))(
  ( (FloatLiteralValue!12950 (text!45770 List!40659)) (TokenValueExt!6474 (__x!25168 Int)) (Broken!32375 (value!198592 List!40659)) (Object!6598) (End!6475) (Def!6475) (Underscore!6475) (Match!6475) (Else!6475) (Error!6475) (Case!6475) (If!6475) (Extends!6475) (Abstract!6475) (Class!6475) (Val!6475) (DelimiterValue!12950 (del!6535 List!40659)) (KeywordValue!6481 (value!198593 List!40659)) (CommentValue!12950 (value!198594 List!40659)) (WhitespaceValue!12950 (value!198595 List!40659)) (IndentationValue!6475 (value!198596 List!40659)) (String!46094) (Int32!6475) (Broken!32376 (value!198597 List!40659)) (Boolean!6476) (Unit!58264) (OperatorValue!6478 (op!6535 List!40659)) (IdentifierValue!12950 (value!198598 List!40659)) (IdentifierValue!12951 (value!198599 List!40659)) (WhitespaceValue!12951 (value!198600 List!40659)) (True!12950) (False!12950) (Broken!32377 (value!198601 List!40659)) (Broken!32378 (value!198602 List!40659)) (True!12951) (RightBrace!6475) (RightBracket!6475) (Colon!6475) (Null!6475) (Comma!6475) (LeftBracket!6475) (False!12951) (LeftBrace!6475) (ImaginaryLiteralValue!6475 (text!45771 List!40659)) (StringLiteralValue!19425 (value!198603 List!40659)) (EOFValue!6475 (value!198604 List!40659)) (IdentValue!6475 (value!198605 List!40659)) (DelimiterValue!12951 (value!198606 List!40659)) (DedentValue!6475 (value!198607 List!40659)) (NewLineValue!6475 (value!198608 List!40659)) (IntegerValue!19425 (value!198609 (_ BitVec 32)) (text!45772 List!40659)) (IntegerValue!19426 (value!198610 Int) (text!45773 List!40659)) (Times!6475) (Or!6475) (Equal!6475) (Minus!6475) (Broken!32379 (value!198611 List!40659)) (And!6475) (Div!6475) (LessEqual!6475) (Mod!6475) (Concat!17625) (Not!6475) (Plus!6475) (SpaceValue!6475 (value!198612 List!40659)) (IntegerValue!19427 (value!198613 Int) (text!45774 List!40659)) (StringLiteralValue!19426 (text!45775 List!40659)) (FloatLiteralValue!12951 (text!45776 List!40659)) (BytesLiteralValue!6475 (value!198614 List!40659)) (CommentValue!12951 (value!198615 List!40659)) (StringLiteralValue!19427 (value!198616 List!40659)) (ErrorTokenValue!6475 (msg!6536 List!40659)) )
))
(declare-datatypes ((String!46095 0))(
  ( (String!46096 (value!198617 String)) )
))
(declare-datatypes ((Regex!11150 0))(
  ( (ElementMatch!11150 (c!669082 C!22486)) (Concat!17626 (regOne!22812 Regex!11150) (regTwo!22812 Regex!11150)) (EmptyExpr!11150) (Star!11150 (reg!11479 Regex!11150)) (EmptyLang!11150) (Union!11150 (regOne!22813 Regex!11150) (regTwo!22813 Regex!11150)) )
))
(declare-datatypes ((TokenValueInjection!12378 0))(
  ( (TokenValueInjection!12379 (toValue!8661 Int) (toChars!8520 Int)) )
))
(declare-datatypes ((Rule!12290 0))(
  ( (Rule!12291 (regex!6245 Regex!11150) (tag!7105 String!46095) (isSeparator!6245 Bool) (transformation!6245 TokenValueInjection!12378)) )
))
(declare-datatypes ((List!40660 0))(
  ( (Nil!40536) (Cons!40536 (h!45956 Rule!12290) (t!309997 List!40660)) )
))
(declare-fun rules!2768 () List!40660)

(declare-datatypes ((Token!11628 0))(
  ( (Token!11629 (value!198618 TokenValue!6475) (rule!9081 Rule!12290) (size!30529 Int) (originalCharacters!6845 List!40658)) )
))
(declare-datatypes ((List!40661 0))(
  ( (Nil!40537) (Cons!40537 (h!45957 Token!11628) (t!309998 List!40661)) )
))
(declare-fun suffixTokens!72 () List!40661)

(declare-datatypes ((tuple2!39710 0))(
  ( (tuple2!39711 (_1!22989 List!40661) (_2!22989 List!40658)) )
))
(declare-fun lexList!1602 (LexerInterface!5834 List!40660 List!40658) tuple2!39710)

(assert (=> b!3837565 (= res!1553203 (= (lexList!1602 thiss!20629 rules!2768 suffix!1176) (tuple2!39711 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3837566 () Bool)

(declare-fun res!1553200 () Bool)

(declare-fun e!2370141 () Bool)

(assert (=> b!3837566 (=> (not res!1553200) (not e!2370141))))

(declare-fun isEmpty!23941 (List!40660) Bool)

(assert (=> b!3837566 (= res!1553200 (not (isEmpty!23941 rules!2768)))))

(declare-fun res!1553195 () Bool)

(assert (=> start!359298 (=> (not res!1553195) (not e!2370141))))

(assert (=> start!359298 (= res!1553195 (is-Lexer!5832 thiss!20629))))

(assert (=> start!359298 e!2370141))

(declare-fun e!2370140 () Bool)

(assert (=> start!359298 e!2370140))

(assert (=> start!359298 true))

(declare-fun e!2370132 () Bool)

(assert (=> start!359298 e!2370132))

(declare-fun e!2370137 () Bool)

(assert (=> start!359298 e!2370137))

(declare-fun e!2370134 () Bool)

(assert (=> start!359298 e!2370134))

(declare-fun e!2370129 () Bool)

(assert (=> start!359298 e!2370129))

(declare-fun e!2370143 () Bool)

(assert (=> start!359298 e!2370143))

(declare-fun e!2370131 () Bool)

(declare-fun tp!1161760 () Bool)

(declare-fun b!3837567 () Bool)

(declare-fun prefixTokens!80 () List!40661)

(declare-fun e!2370125 () Bool)

(declare-fun inv!54687 (String!46095) Bool)

(declare-fun inv!54690 (TokenValueInjection!12378) Bool)

(assert (=> b!3837567 (= e!2370131 (and tp!1161760 (inv!54687 (tag!7105 (rule!9081 (h!45957 prefixTokens!80)))) (inv!54690 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) e!2370125))))

(declare-fun tp!1161766 () Bool)

(declare-fun e!2370127 () Bool)

(declare-fun b!3837568 () Bool)

(declare-fun inv!21 (TokenValue!6475) Bool)

(assert (=> b!3837568 (= e!2370127 (and (inv!21 (value!198618 (h!45957 prefixTokens!80))) e!2370131 tp!1161766))))

(declare-fun b!3837569 () Bool)

(declare-fun e!2370128 () Bool)

(assert (=> b!3837569 (= e!2370144 e!2370128)))

(declare-fun res!1553197 () Bool)

(assert (=> b!3837569 (=> (not res!1553197) (not e!2370128))))

(declare-datatypes ((tuple2!39712 0))(
  ( (tuple2!39713 (_1!22990 Token!11628) (_2!22990 List!40658)) )
))
(declare-datatypes ((Option!8663 0))(
  ( (None!8662) (Some!8662 (v!38954 tuple2!39712)) )
))
(declare-fun lt!1331686 () Option!8663)

(assert (=> b!3837569 (= res!1553197 (is-Some!8662 lt!1331686))))

(declare-fun lt!1331687 () List!40658)

(declare-fun maxPrefix!3138 (LexerInterface!5834 List!40660 List!40658) Option!8663)

(assert (=> b!3837569 (= lt!1331686 (maxPrefix!3138 thiss!20629 rules!2768 lt!1331687))))

(declare-fun b!3837570 () Bool)

(declare-fun res!1553198 () Bool)

(assert (=> b!3837570 (=> (not res!1553198) (not e!2370141))))

(declare-fun rulesInvariant!5177 (LexerInterface!5834 List!40660) Bool)

(assert (=> b!3837570 (= res!1553198 (rulesInvariant!5177 thiss!20629 rules!2768))))

(declare-fun e!2370122 () Bool)

(declare-fun e!2370135 () Bool)

(declare-fun tp!1161759 () Bool)

(declare-fun b!3837571 () Bool)

(assert (=> b!3837571 (= e!2370122 (and (inv!21 (value!198618 (h!45957 suffixTokens!72))) e!2370135 tp!1161759))))

(declare-fun b!3837572 () Bool)

(declare-fun tp_is_empty!19271 () Bool)

(declare-fun tp!1161769 () Bool)

(assert (=> b!3837572 (= e!2370132 (and tp_is_empty!19271 tp!1161769))))

(declare-fun tp!1161773 () Bool)

(declare-fun b!3837573 () Bool)

(declare-fun inv!54691 (Token!11628) Bool)

(assert (=> b!3837573 (= e!2370134 (and (inv!54691 (h!45957 prefixTokens!80)) e!2370127 tp!1161773))))

(declare-fun e!2370121 () Bool)

(assert (=> b!3837574 (= e!2370121 (and tp!1161774 tp!1161761))))

(declare-fun b!3837575 () Bool)

(declare-fun tp!1161771 () Bool)

(assert (=> b!3837575 (= e!2370129 (and (inv!54691 (h!45957 suffixTokens!72)) e!2370122 tp!1161771))))

(declare-fun b!3837576 () Bool)

(declare-fun e!2370124 () Bool)

(declare-fun tp!1161772 () Bool)

(assert (=> b!3837576 (= e!2370124 (and tp!1161772 (inv!54687 (tag!7105 (h!45956 rules!2768))) (inv!54690 (transformation!6245 (h!45956 rules!2768))) e!2370121))))

(declare-fun e!2370133 () Bool)

(assert (=> b!3837577 (= e!2370133 (and tp!1161765 tp!1161770))))

(declare-fun b!3837578 () Bool)

(declare-fun e!2370139 () Bool)

(declare-fun lt!1331681 () List!40658)

(declare-fun isPrefix!3344 (List!40658 List!40658) Bool)

(assert (=> b!3837578 (= e!2370139 (isPrefix!3344 lt!1331681 lt!1331687))))

(declare-fun b!3837579 () Bool)

(declare-fun res!1553201 () Bool)

(declare-fun e!2370130 () Bool)

(assert (=> b!3837579 (=> (not res!1553201) (not e!2370130))))

(declare-fun apply!9488 (TokenValueInjection!12378 BalanceConc!24506) TokenValue!6475)

(declare-fun seqFromList!4516 (List!40658) BalanceConc!24506)

(assert (=> b!3837579 (= res!1553201 (= (value!198618 (_1!22990 (v!38954 lt!1331686))) (apply!9488 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))) (seqFromList!4516 lt!1331681))))))

(assert (=> b!3837580 (= e!2370125 (and tp!1161764 tp!1161767))))

(declare-fun b!3837581 () Bool)

(declare-fun res!1553193 () Bool)

(assert (=> b!3837581 (=> (not res!1553193) (not e!2370141))))

(declare-fun prefix!426 () List!40658)

(declare-fun isEmpty!23942 (List!40658) Bool)

(assert (=> b!3837581 (= res!1553193 (not (isEmpty!23942 prefix!426)))))

(declare-fun b!3837582 () Bool)

(declare-fun tp!1161768 () Bool)

(assert (=> b!3837582 (= e!2370137 (and e!2370124 tp!1161768))))

(declare-fun b!3837583 () Bool)

(declare-fun tp!1161775 () Bool)

(assert (=> b!3837583 (= e!2370140 (and tp_is_empty!19271 tp!1161775))))

(declare-fun b!3837584 () Bool)

(assert (=> b!3837584 (= e!2370141 e!2370144)))

(declare-fun res!1553196 () Bool)

(assert (=> b!3837584 (=> (not res!1553196) (not e!2370144))))

(declare-fun ++!10247 (List!40661 List!40661) List!40661)

(assert (=> b!3837584 (= res!1553196 (= (lexList!1602 thiss!20629 rules!2768 lt!1331687) (tuple2!39711 (++!10247 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10248 (List!40658 List!40658) List!40658)

(assert (=> b!3837584 (= lt!1331687 (++!10248 prefix!426 suffix!1176))))

(declare-fun b!3837585 () Bool)

(declare-fun size!30530 (List!40658) Int)

(assert (=> b!3837585 (= e!2370130 (= (size!30529 (_1!22990 (v!38954 lt!1331686))) (size!30530 (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686))))))))

(declare-fun tp!1161762 () Bool)

(declare-fun b!3837586 () Bool)

(assert (=> b!3837586 (= e!2370135 (and tp!1161762 (inv!54687 (tag!7105 (rule!9081 (h!45957 suffixTokens!72)))) (inv!54690 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) e!2370133))))

(declare-fun b!3837587 () Bool)

(declare-fun tp!1161763 () Bool)

(assert (=> b!3837587 (= e!2370143 (and tp_is_empty!19271 tp!1161763))))

(declare-fun b!3837588 () Bool)

(assert (=> b!3837588 (= e!2370128 (not e!2370139))))

(declare-fun res!1553194 () Bool)

(assert (=> b!3837588 (=> res!1553194 e!2370139)))

(declare-fun lt!1331682 () Int)

(assert (=> b!3837588 (= res!1553194 (< (size!30530 lt!1331687) lt!1331682))))

(assert (=> b!3837588 (and (= (size!30529 (_1!22990 (v!38954 lt!1331686))) lt!1331682) (= (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686))) lt!1331681))))

(assert (=> b!3837588 (= lt!1331682 (size!30530 lt!1331681))))

(assert (=> b!3837588 e!2370130))

(declare-fun res!1553199 () Bool)

(assert (=> b!3837588 (=> (not res!1553199) (not e!2370130))))

(declare-fun lt!1331684 () List!40658)

(assert (=> b!3837588 (= res!1553199 (= (_2!22990 (v!38954 lt!1331686)) lt!1331684))))

(declare-datatypes ((Unit!58265 0))(
  ( (Unit!58266) )
))
(declare-fun lt!1331683 () Unit!58265)

(declare-fun lemmaSamePrefixThenSameSuffix!1565 (List!40658 List!40658 List!40658 List!40658 List!40658) Unit!58265)

(assert (=> b!3837588 (= lt!1331683 (lemmaSamePrefixThenSameSuffix!1565 lt!1331681 (_2!22990 (v!38954 lt!1331686)) lt!1331681 lt!1331684 lt!1331687))))

(declare-fun getSuffix!1799 (List!40658 List!40658) List!40658)

(assert (=> b!3837588 (= lt!1331684 (getSuffix!1799 lt!1331687 lt!1331681))))

(assert (=> b!3837588 (isPrefix!3344 lt!1331681 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))

(declare-fun lt!1331688 () Unit!58265)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2207 (List!40658 List!40658) Unit!58265)

(assert (=> b!3837588 (= lt!1331688 (lemmaConcatTwoListThenFirstIsPrefix!2207 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))

(declare-fun list!15103 (BalanceConc!24506) List!40658)

(declare-fun charsOf!4073 (Token!11628) BalanceConc!24506)

(assert (=> b!3837588 (= lt!1331681 (list!15103 (charsOf!4073 (_1!22990 (v!38954 lt!1331686)))))))

(declare-fun ruleValid!2197 (LexerInterface!5834 Rule!12290) Bool)

(assert (=> b!3837588 (ruleValid!2197 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686))))))

(declare-fun lt!1331685 () Unit!58265)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1277 (LexerInterface!5834 Rule!12290 List!40660) Unit!58265)

(assert (=> b!3837588 (= lt!1331685 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1277 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686))) rules!2768))))

(declare-fun lt!1331680 () Unit!58265)

(declare-fun lemmaCharactersSize!906 (Token!11628) Unit!58265)

(assert (=> b!3837588 (= lt!1331680 (lemmaCharactersSize!906 (_1!22990 (v!38954 lt!1331686))))))

(declare-fun b!3837589 () Bool)

(declare-fun res!1553202 () Bool)

(assert (=> b!3837589 (=> (not res!1553202) (not e!2370141))))

(declare-fun isEmpty!23943 (List!40661) Bool)

(assert (=> b!3837589 (= res!1553202 (not (isEmpty!23943 prefixTokens!80)))))

(assert (= (and start!359298 res!1553195) b!3837566))

(assert (= (and b!3837566 res!1553200) b!3837570))

(assert (= (and b!3837570 res!1553198) b!3837589))

(assert (= (and b!3837589 res!1553202) b!3837581))

(assert (= (and b!3837581 res!1553193) b!3837584))

(assert (= (and b!3837584 res!1553196) b!3837565))

(assert (= (and b!3837565 res!1553203) b!3837569))

(assert (= (and b!3837569 res!1553197) b!3837588))

(assert (= (and b!3837588 res!1553199) b!3837579))

(assert (= (and b!3837579 res!1553201) b!3837585))

(assert (= (and b!3837588 (not res!1553194)) b!3837578))

(assert (= (and start!359298 (is-Cons!40534 suffixResult!91)) b!3837583))

(assert (= (and start!359298 (is-Cons!40534 suffix!1176)) b!3837572))

(assert (= b!3837576 b!3837574))

(assert (= b!3837582 b!3837576))

(assert (= (and start!359298 (is-Cons!40536 rules!2768)) b!3837582))

(assert (= b!3837567 b!3837580))

(assert (= b!3837568 b!3837567))

(assert (= b!3837573 b!3837568))

(assert (= (and start!359298 (is-Cons!40537 prefixTokens!80)) b!3837573))

(assert (= b!3837586 b!3837577))

(assert (= b!3837571 b!3837586))

(assert (= b!3837575 b!3837571))

(assert (= (and start!359298 (is-Cons!40537 suffixTokens!72)) b!3837575))

(assert (= (and start!359298 (is-Cons!40534 prefix!426)) b!3837587))

(declare-fun m!4391921 () Bool)

(assert (=> b!3837565 m!4391921))

(declare-fun m!4391923 () Bool)

(assert (=> b!3837566 m!4391923))

(declare-fun m!4391925 () Bool)

(assert (=> b!3837581 m!4391925))

(declare-fun m!4391927 () Bool)

(assert (=> b!3837584 m!4391927))

(declare-fun m!4391929 () Bool)

(assert (=> b!3837584 m!4391929))

(declare-fun m!4391931 () Bool)

(assert (=> b!3837584 m!4391931))

(declare-fun m!4391933 () Bool)

(assert (=> b!3837567 m!4391933))

(declare-fun m!4391935 () Bool)

(assert (=> b!3837567 m!4391935))

(declare-fun m!4391937 () Bool)

(assert (=> b!3837570 m!4391937))

(declare-fun m!4391939 () Bool)

(assert (=> b!3837575 m!4391939))

(declare-fun m!4391941 () Bool)

(assert (=> b!3837576 m!4391941))

(declare-fun m!4391943 () Bool)

(assert (=> b!3837576 m!4391943))

(declare-fun m!4391945 () Bool)

(assert (=> b!3837588 m!4391945))

(declare-fun m!4391947 () Bool)

(assert (=> b!3837588 m!4391947))

(declare-fun m!4391949 () Bool)

(assert (=> b!3837588 m!4391949))

(declare-fun m!4391951 () Bool)

(assert (=> b!3837588 m!4391951))

(assert (=> b!3837588 m!4391947))

(declare-fun m!4391953 () Bool)

(assert (=> b!3837588 m!4391953))

(declare-fun m!4391955 () Bool)

(assert (=> b!3837588 m!4391955))

(declare-fun m!4391957 () Bool)

(assert (=> b!3837588 m!4391957))

(declare-fun m!4391959 () Bool)

(assert (=> b!3837588 m!4391959))

(declare-fun m!4391961 () Bool)

(assert (=> b!3837588 m!4391961))

(declare-fun m!4391963 () Bool)

(assert (=> b!3837588 m!4391963))

(assert (=> b!3837588 m!4391961))

(declare-fun m!4391965 () Bool)

(assert (=> b!3837588 m!4391965))

(declare-fun m!4391967 () Bool)

(assert (=> b!3837588 m!4391967))

(declare-fun m!4391969 () Bool)

(assert (=> b!3837569 m!4391969))

(declare-fun m!4391971 () Bool)

(assert (=> b!3837568 m!4391971))

(declare-fun m!4391973 () Bool)

(assert (=> b!3837573 m!4391973))

(declare-fun m!4391975 () Bool)

(assert (=> b!3837579 m!4391975))

(assert (=> b!3837579 m!4391975))

(declare-fun m!4391977 () Bool)

(assert (=> b!3837579 m!4391977))

(declare-fun m!4391979 () Bool)

(assert (=> b!3837589 m!4391979))

(declare-fun m!4391981 () Bool)

(assert (=> b!3837585 m!4391981))

(declare-fun m!4391983 () Bool)

(assert (=> b!3837578 m!4391983))

(declare-fun m!4391985 () Bool)

(assert (=> b!3837586 m!4391985))

(declare-fun m!4391987 () Bool)

(assert (=> b!3837586 m!4391987))

(declare-fun m!4391989 () Bool)

(assert (=> b!3837571 m!4391989))

(push 1)

(assert (not b!3837589))

(assert (not b!3837573))

(assert (not b!3837575))

(assert (not b!3837582))

(assert (not b!3837579))

(assert (not b!3837584))

(assert b_and!285561)

(assert (not b!3837578))

(assert (not b!3837576))

(assert b_and!285565)

(assert (not b!3837567))

(assert (not b!3837587))

(assert (not b!3837585))

(assert b_and!285567)

(assert (not b!3837566))

(assert (not b_next!102761))

(assert (not b!3837583))

(assert (not b!3837581))

(assert b_and!285569)

(assert (not b!3837565))

(assert (not b!3837572))

(assert (not b!3837588))

(assert (not b_next!102767))

(assert (not b_next!102771))

(assert b_and!285563)

(assert tp_is_empty!19271)

(assert (not b!3837570))

(assert (not b_next!102765))

(assert (not b_next!102763))

(assert (not b!3837568))

(assert (not b!3837571))

(assert (not b!3837586))

(assert (not b_next!102769))

(assert (not b!3837569))

(assert b_and!285559)

(check-sat)

(pop 1)

(push 1)

(assert b_and!285565)

(assert b_and!285567)

(assert (not b_next!102761))

(assert b_and!285569)

(assert (not b_next!102767))

(assert b_and!285561)

(assert (not b_next!102769))

(assert b_and!285559)

(assert (not b_next!102771))

(assert b_and!285563)

(assert (not b_next!102765))

(assert (not b_next!102763))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1139212 () Bool)

(declare-fun res!1553245 () Bool)

(declare-fun e!2370219 () Bool)

(assert (=> d!1139212 (=> (not res!1553245) (not e!2370219))))

(assert (=> d!1139212 (= res!1553245 (not (isEmpty!23942 (originalCharacters!6845 (h!45957 prefixTokens!80)))))))

(assert (=> d!1139212 (= (inv!54691 (h!45957 prefixTokens!80)) e!2370219)))

(declare-fun b!3837669 () Bool)

(declare-fun res!1553246 () Bool)

(assert (=> b!3837669 (=> (not res!1553246) (not e!2370219))))

(declare-fun dynLambda!17559 (Int TokenValue!6475) BalanceConc!24506)

(assert (=> b!3837669 (= res!1553246 (= (originalCharacters!6845 (h!45957 prefixTokens!80)) (list!15103 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (value!198618 (h!45957 prefixTokens!80))))))))

(declare-fun b!3837670 () Bool)

(assert (=> b!3837670 (= e!2370219 (= (size!30529 (h!45957 prefixTokens!80)) (size!30530 (originalCharacters!6845 (h!45957 prefixTokens!80)))))))

(assert (= (and d!1139212 res!1553245) b!3837669))

(assert (= (and b!3837669 res!1553246) b!3837670))

(declare-fun b_lambda!112211 () Bool)

(assert (=> (not b_lambda!112211) (not b!3837669)))

(declare-fun t!310004 () Bool)

(declare-fun tb!220645 () Bool)

(assert (=> (and b!3837574 (= (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310004) tb!220645))

(declare-fun b!3837675 () Bool)

(declare-fun e!2370222 () Bool)

(declare-fun tp!1161829 () Bool)

(declare-fun inv!54694 (Conc!12456) Bool)

(assert (=> b!3837675 (= e!2370222 (and (inv!54694 (c!669081 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (value!198618 (h!45957 prefixTokens!80))))) tp!1161829))))

(declare-fun result!268914 () Bool)

(declare-fun inv!54695 (BalanceConc!24506) Bool)

(assert (=> tb!220645 (= result!268914 (and (inv!54695 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (value!198618 (h!45957 prefixTokens!80)))) e!2370222))))

(assert (= tb!220645 b!3837675))

(declare-fun m!4392061 () Bool)

(assert (=> b!3837675 m!4392061))

(declare-fun m!4392063 () Bool)

(assert (=> tb!220645 m!4392063))

(assert (=> b!3837669 t!310004))

(declare-fun b_and!285583 () Bool)

(assert (= b_and!285561 (and (=> t!310004 result!268914) b_and!285583)))

(declare-fun t!310006 () Bool)

(declare-fun tb!220647 () Bool)

(assert (=> (and b!3837580 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310006) tb!220647))

(declare-fun result!268918 () Bool)

(assert (= result!268918 result!268914))

(assert (=> b!3837669 t!310006))

(declare-fun b_and!285585 () Bool)

(assert (= b_and!285565 (and (=> t!310006 result!268918) b_and!285585)))

(declare-fun tb!220649 () Bool)

(declare-fun t!310008 () Bool)

(assert (=> (and b!3837577 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310008) tb!220649))

(declare-fun result!268920 () Bool)

(assert (= result!268920 result!268914))

(assert (=> b!3837669 t!310008))

(declare-fun b_and!285587 () Bool)

(assert (= b_and!285569 (and (=> t!310008 result!268920) b_and!285587)))

(declare-fun m!4392065 () Bool)

(assert (=> d!1139212 m!4392065))

(declare-fun m!4392067 () Bool)

(assert (=> b!3837669 m!4392067))

(assert (=> b!3837669 m!4392067))

(declare-fun m!4392069 () Bool)

(assert (=> b!3837669 m!4392069))

(declare-fun m!4392071 () Bool)

(assert (=> b!3837670 m!4392071))

(assert (=> b!3837573 d!1139212))

(declare-fun b!3837686 () Bool)

(declare-fun res!1553249 () Bool)

(declare-fun e!2370231 () Bool)

(assert (=> b!3837686 (=> res!1553249 e!2370231)))

(assert (=> b!3837686 (= res!1553249 (not (is-IntegerValue!19427 (value!198618 (h!45957 suffixTokens!72)))))))

(declare-fun e!2370229 () Bool)

(assert (=> b!3837686 (= e!2370229 e!2370231)))

(declare-fun b!3837687 () Bool)

(declare-fun e!2370230 () Bool)

(declare-fun inv!16 (TokenValue!6475) Bool)

(assert (=> b!3837687 (= e!2370230 (inv!16 (value!198618 (h!45957 suffixTokens!72))))))

(declare-fun d!1139214 () Bool)

(declare-fun c!669091 () Bool)

(assert (=> d!1139214 (= c!669091 (is-IntegerValue!19425 (value!198618 (h!45957 suffixTokens!72))))))

(assert (=> d!1139214 (= (inv!21 (value!198618 (h!45957 suffixTokens!72))) e!2370230)))

(declare-fun b!3837688 () Bool)

(declare-fun inv!15 (TokenValue!6475) Bool)

(assert (=> b!3837688 (= e!2370231 (inv!15 (value!198618 (h!45957 suffixTokens!72))))))

(declare-fun b!3837689 () Bool)

(declare-fun inv!17 (TokenValue!6475) Bool)

(assert (=> b!3837689 (= e!2370229 (inv!17 (value!198618 (h!45957 suffixTokens!72))))))

(declare-fun b!3837690 () Bool)

(assert (=> b!3837690 (= e!2370230 e!2370229)))

(declare-fun c!669090 () Bool)

(assert (=> b!3837690 (= c!669090 (is-IntegerValue!19426 (value!198618 (h!45957 suffixTokens!72))))))

(assert (= (and d!1139214 c!669091) b!3837687))

(assert (= (and d!1139214 (not c!669091)) b!3837690))

(assert (= (and b!3837690 c!669090) b!3837689))

(assert (= (and b!3837690 (not c!669090)) b!3837686))

(assert (= (and b!3837686 (not res!1553249)) b!3837688))

(declare-fun m!4392073 () Bool)

(assert (=> b!3837687 m!4392073))

(declare-fun m!4392075 () Bool)

(assert (=> b!3837688 m!4392075))

(declare-fun m!4392077 () Bool)

(assert (=> b!3837689 m!4392077))

(assert (=> b!3837571 d!1139214))

(declare-fun d!1139216 () Bool)

(assert (=> d!1139216 (= (isEmpty!23942 prefix!426) (is-Nil!40534 prefix!426))))

(assert (=> b!3837581 d!1139216))

(declare-fun d!1139218 () Bool)

(declare-fun res!1553252 () Bool)

(declare-fun e!2370234 () Bool)

(assert (=> d!1139218 (=> (not res!1553252) (not e!2370234))))

(declare-fun rulesValid!2415 (LexerInterface!5834 List!40660) Bool)

(assert (=> d!1139218 (= res!1553252 (rulesValid!2415 thiss!20629 rules!2768))))

(assert (=> d!1139218 (= (rulesInvariant!5177 thiss!20629 rules!2768) e!2370234)))

(declare-fun b!3837693 () Bool)

(declare-datatypes ((List!40666 0))(
  ( (Nil!40542) (Cons!40542 (h!45962 String!46095) (t!310057 List!40666)) )
))
(declare-fun noDuplicateTag!2416 (LexerInterface!5834 List!40660 List!40666) Bool)

(assert (=> b!3837693 (= e!2370234 (noDuplicateTag!2416 thiss!20629 rules!2768 Nil!40542))))

(assert (= (and d!1139218 res!1553252) b!3837693))

(declare-fun m!4392079 () Bool)

(assert (=> d!1139218 m!4392079))

(declare-fun m!4392081 () Bool)

(assert (=> b!3837693 m!4392081))

(assert (=> b!3837570 d!1139218))

(declare-fun d!1139220 () Bool)

(declare-fun dynLambda!17560 (Int BalanceConc!24506) TokenValue!6475)

(assert (=> d!1139220 (= (apply!9488 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))) (seqFromList!4516 lt!1331681)) (dynLambda!17560 (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))) (seqFromList!4516 lt!1331681)))))

(declare-fun b_lambda!112213 () Bool)

(assert (=> (not b_lambda!112213) (not d!1139220)))

(declare-fun t!310010 () Bool)

(declare-fun tb!220651 () Bool)

(assert (=> (and b!3837574 (= (toValue!8661 (transformation!6245 (h!45956 rules!2768))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310010) tb!220651))

(declare-fun result!268922 () Bool)

(assert (=> tb!220651 (= result!268922 (inv!21 (dynLambda!17560 (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))) (seqFromList!4516 lt!1331681))))))

(declare-fun m!4392083 () Bool)

(assert (=> tb!220651 m!4392083))

(assert (=> d!1139220 t!310010))

(declare-fun b_and!285589 () Bool)

(assert (= b_and!285559 (and (=> t!310010 result!268922) b_and!285589)))

(declare-fun tb!220653 () Bool)

(declare-fun t!310012 () Bool)

(assert (=> (and b!3837580 (= (toValue!8661 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310012) tb!220653))

(declare-fun result!268926 () Bool)

(assert (= result!268926 result!268922))

(assert (=> d!1139220 t!310012))

(declare-fun b_and!285591 () Bool)

(assert (= b_and!285563 (and (=> t!310012 result!268926) b_and!285591)))

(declare-fun tb!220655 () Bool)

(declare-fun t!310014 () Bool)

(assert (=> (and b!3837577 (= (toValue!8661 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310014) tb!220655))

(declare-fun result!268928 () Bool)

(assert (= result!268928 result!268922))

(assert (=> d!1139220 t!310014))

(declare-fun b_and!285593 () Bool)

(assert (= b_and!285567 (and (=> t!310014 result!268928) b_and!285593)))

(assert (=> d!1139220 m!4391975))

(declare-fun m!4392085 () Bool)

(assert (=> d!1139220 m!4392085))

(assert (=> b!3837579 d!1139220))

(declare-fun d!1139222 () Bool)

(declare-fun fromListB!2090 (List!40658) BalanceConc!24506)

(assert (=> d!1139222 (= (seqFromList!4516 lt!1331681) (fromListB!2090 lt!1331681))))

(declare-fun bs!582553 () Bool)

(assert (= bs!582553 d!1139222))

(declare-fun m!4392087 () Bool)

(assert (=> bs!582553 m!4392087))

(assert (=> b!3837579 d!1139222))

(declare-fun b!3837696 () Bool)

(declare-fun res!1553253 () Bool)

(declare-fun e!2370240 () Bool)

(assert (=> b!3837696 (=> res!1553253 e!2370240)))

(assert (=> b!3837696 (= res!1553253 (not (is-IntegerValue!19427 (value!198618 (h!45957 prefixTokens!80)))))))

(declare-fun e!2370238 () Bool)

(assert (=> b!3837696 (= e!2370238 e!2370240)))

(declare-fun b!3837697 () Bool)

(declare-fun e!2370239 () Bool)

(assert (=> b!3837697 (= e!2370239 (inv!16 (value!198618 (h!45957 prefixTokens!80))))))

(declare-fun d!1139224 () Bool)

(declare-fun c!669093 () Bool)

(assert (=> d!1139224 (= c!669093 (is-IntegerValue!19425 (value!198618 (h!45957 prefixTokens!80))))))

(assert (=> d!1139224 (= (inv!21 (value!198618 (h!45957 prefixTokens!80))) e!2370239)))

(declare-fun b!3837698 () Bool)

(assert (=> b!3837698 (= e!2370240 (inv!15 (value!198618 (h!45957 prefixTokens!80))))))

(declare-fun b!3837699 () Bool)

(assert (=> b!3837699 (= e!2370238 (inv!17 (value!198618 (h!45957 prefixTokens!80))))))

(declare-fun b!3837700 () Bool)

(assert (=> b!3837700 (= e!2370239 e!2370238)))

(declare-fun c!669092 () Bool)

(assert (=> b!3837700 (= c!669092 (is-IntegerValue!19426 (value!198618 (h!45957 prefixTokens!80))))))

(assert (= (and d!1139224 c!669093) b!3837697))

(assert (= (and d!1139224 (not c!669093)) b!3837700))

(assert (= (and b!3837700 c!669092) b!3837699))

(assert (= (and b!3837700 (not c!669092)) b!3837696))

(assert (= (and b!3837696 (not res!1553253)) b!3837698))

(declare-fun m!4392089 () Bool)

(assert (=> b!3837697 m!4392089))

(declare-fun m!4392091 () Bool)

(assert (=> b!3837698 m!4392091))

(declare-fun m!4392093 () Bool)

(assert (=> b!3837699 m!4392093))

(assert (=> b!3837568 d!1139224))

(declare-fun b!3837734 () Bool)

(declare-fun res!1553274 () Bool)

(declare-fun e!2370257 () Bool)

(assert (=> b!3837734 (=> (not res!1553274) (not e!2370257))))

(declare-fun lt!1331735 () Option!8663)

(declare-fun get!13442 (Option!8663) tuple2!39712)

(assert (=> b!3837734 (= res!1553274 (= (value!198618 (_1!22990 (get!13442 lt!1331735))) (apply!9488 (transformation!6245 (rule!9081 (_1!22990 (get!13442 lt!1331735)))) (seqFromList!4516 (originalCharacters!6845 (_1!22990 (get!13442 lt!1331735)))))))))

(declare-fun b!3837736 () Bool)

(declare-fun res!1553272 () Bool)

(assert (=> b!3837736 (=> (not res!1553272) (not e!2370257))))

(assert (=> b!3837736 (= res!1553272 (= (list!15103 (charsOf!4073 (_1!22990 (get!13442 lt!1331735)))) (originalCharacters!6845 (_1!22990 (get!13442 lt!1331735)))))))

(declare-fun b!3837737 () Bool)

(declare-fun e!2370256 () Bool)

(assert (=> b!3837737 (= e!2370256 e!2370257)))

(declare-fun res!1553275 () Bool)

(assert (=> b!3837737 (=> (not res!1553275) (not e!2370257))))

(declare-fun isDefined!6820 (Option!8663) Bool)

(assert (=> b!3837737 (= res!1553275 (isDefined!6820 lt!1331735))))

(declare-fun b!3837738 () Bool)

(declare-fun res!1553271 () Bool)

(assert (=> b!3837738 (=> (not res!1553271) (not e!2370257))))

(declare-fun matchR!5331 (Regex!11150 List!40658) Bool)

(assert (=> b!3837738 (= res!1553271 (matchR!5331 (regex!6245 (rule!9081 (_1!22990 (get!13442 lt!1331735)))) (list!15103 (charsOf!4073 (_1!22990 (get!13442 lt!1331735))))))))

(declare-fun b!3837739 () Bool)

(declare-fun e!2370258 () Option!8663)

(declare-fun lt!1331739 () Option!8663)

(declare-fun lt!1331736 () Option!8663)

(assert (=> b!3837739 (= e!2370258 (ite (and (is-None!8662 lt!1331739) (is-None!8662 lt!1331736)) None!8662 (ite (is-None!8662 lt!1331736) lt!1331739 (ite (is-None!8662 lt!1331739) lt!1331736 (ite (>= (size!30529 (_1!22990 (v!38954 lt!1331739))) (size!30529 (_1!22990 (v!38954 lt!1331736)))) lt!1331739 lt!1331736)))))))

(declare-fun call!281907 () Option!8663)

(assert (=> b!3837739 (= lt!1331739 call!281907)))

(assert (=> b!3837739 (= lt!1331736 (maxPrefix!3138 thiss!20629 (t!309997 rules!2768) lt!1331687))))

(declare-fun bm!281902 () Bool)

(declare-fun maxPrefixOneRule!2232 (LexerInterface!5834 Rule!12290 List!40658) Option!8663)

(assert (=> bm!281902 (= call!281907 (maxPrefixOneRule!2232 thiss!20629 (h!45956 rules!2768) lt!1331687))))

(declare-fun d!1139226 () Bool)

(assert (=> d!1139226 e!2370256))

(declare-fun res!1553276 () Bool)

(assert (=> d!1139226 (=> res!1553276 e!2370256)))

(declare-fun isEmpty!23947 (Option!8663) Bool)

(assert (=> d!1139226 (= res!1553276 (isEmpty!23947 lt!1331735))))

(assert (=> d!1139226 (= lt!1331735 e!2370258)))

(declare-fun c!669102 () Bool)

(assert (=> d!1139226 (= c!669102 (and (is-Cons!40536 rules!2768) (is-Nil!40536 (t!309997 rules!2768))))))

(declare-fun lt!1331737 () Unit!58265)

(declare-fun lt!1331738 () Unit!58265)

(assert (=> d!1139226 (= lt!1331737 lt!1331738)))

(assert (=> d!1139226 (isPrefix!3344 lt!1331687 lt!1331687)))

(declare-fun lemmaIsPrefixRefl!2127 (List!40658 List!40658) Unit!58265)

(assert (=> d!1139226 (= lt!1331738 (lemmaIsPrefixRefl!2127 lt!1331687 lt!1331687))))

(declare-fun rulesValidInductive!2205 (LexerInterface!5834 List!40660) Bool)

(assert (=> d!1139226 (rulesValidInductive!2205 thiss!20629 rules!2768)))

(assert (=> d!1139226 (= (maxPrefix!3138 thiss!20629 rules!2768 lt!1331687) lt!1331735)))

(declare-fun b!3837735 () Bool)

(assert (=> b!3837735 (= e!2370258 call!281907)))

(declare-fun b!3837740 () Bool)

(declare-fun contains!8225 (List!40660 Rule!12290) Bool)

(assert (=> b!3837740 (= e!2370257 (contains!8225 rules!2768 (rule!9081 (_1!22990 (get!13442 lt!1331735)))))))

(declare-fun b!3837741 () Bool)

(declare-fun res!1553277 () Bool)

(assert (=> b!3837741 (=> (not res!1553277) (not e!2370257))))

(assert (=> b!3837741 (= res!1553277 (< (size!30530 (_2!22990 (get!13442 lt!1331735))) (size!30530 lt!1331687)))))

(declare-fun b!3837742 () Bool)

(declare-fun res!1553273 () Bool)

(assert (=> b!3837742 (=> (not res!1553273) (not e!2370257))))

(assert (=> b!3837742 (= res!1553273 (= (++!10248 (list!15103 (charsOf!4073 (_1!22990 (get!13442 lt!1331735)))) (_2!22990 (get!13442 lt!1331735))) lt!1331687))))

(assert (= (and d!1139226 c!669102) b!3837735))

(assert (= (and d!1139226 (not c!669102)) b!3837739))

(assert (= (or b!3837735 b!3837739) bm!281902))

(assert (= (and d!1139226 (not res!1553276)) b!3837737))

(assert (= (and b!3837737 res!1553275) b!3837736))

(assert (= (and b!3837736 res!1553272) b!3837741))

(assert (= (and b!3837741 res!1553277) b!3837742))

(assert (= (and b!3837742 res!1553273) b!3837734))

(assert (= (and b!3837734 res!1553274) b!3837738))

(assert (= (and b!3837738 res!1553271) b!3837740))

(declare-fun m!4392107 () Bool)

(assert (=> b!3837740 m!4392107))

(declare-fun m!4392109 () Bool)

(assert (=> b!3837740 m!4392109))

(assert (=> b!3837742 m!4392107))

(declare-fun m!4392111 () Bool)

(assert (=> b!3837742 m!4392111))

(assert (=> b!3837742 m!4392111))

(declare-fun m!4392113 () Bool)

(assert (=> b!3837742 m!4392113))

(assert (=> b!3837742 m!4392113))

(declare-fun m!4392115 () Bool)

(assert (=> b!3837742 m!4392115))

(declare-fun m!4392117 () Bool)

(assert (=> bm!281902 m!4392117))

(assert (=> b!3837734 m!4392107))

(declare-fun m!4392119 () Bool)

(assert (=> b!3837734 m!4392119))

(assert (=> b!3837734 m!4392119))

(declare-fun m!4392121 () Bool)

(assert (=> b!3837734 m!4392121))

(declare-fun m!4392123 () Bool)

(assert (=> b!3837739 m!4392123))

(declare-fun m!4392125 () Bool)

(assert (=> b!3837737 m!4392125))

(assert (=> b!3837738 m!4392107))

(assert (=> b!3837738 m!4392111))

(assert (=> b!3837738 m!4392111))

(assert (=> b!3837738 m!4392113))

(assert (=> b!3837738 m!4392113))

(declare-fun m!4392127 () Bool)

(assert (=> b!3837738 m!4392127))

(assert (=> b!3837736 m!4392107))

(assert (=> b!3837736 m!4392111))

(assert (=> b!3837736 m!4392111))

(assert (=> b!3837736 m!4392113))

(declare-fun m!4392129 () Bool)

(assert (=> d!1139226 m!4392129))

(declare-fun m!4392131 () Bool)

(assert (=> d!1139226 m!4392131))

(declare-fun m!4392133 () Bool)

(assert (=> d!1139226 m!4392133))

(declare-fun m!4392135 () Bool)

(assert (=> d!1139226 m!4392135))

(assert (=> b!3837741 m!4392107))

(declare-fun m!4392137 () Bool)

(assert (=> b!3837741 m!4392137))

(assert (=> b!3837741 m!4391957))

(assert (=> b!3837569 d!1139226))

(declare-fun d!1139232 () Bool)

(assert (=> d!1139232 (= (inv!54687 (tag!7105 (rule!9081 (h!45957 prefixTokens!80)))) (= (mod (str.len (value!198617 (tag!7105 (rule!9081 (h!45957 prefixTokens!80))))) 2) 0))))

(assert (=> b!3837567 d!1139232))

(declare-fun d!1139234 () Bool)

(declare-fun res!1553280 () Bool)

(declare-fun e!2370262 () Bool)

(assert (=> d!1139234 (=> (not res!1553280) (not e!2370262))))

(declare-fun semiInverseModEq!2680 (Int Int) Bool)

(assert (=> d!1139234 (= res!1553280 (semiInverseModEq!2680 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toValue!8661 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))))))

(assert (=> d!1139234 (= (inv!54690 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) e!2370262)))

(declare-fun b!3837745 () Bool)

(declare-fun equivClasses!2579 (Int Int) Bool)

(assert (=> b!3837745 (= e!2370262 (equivClasses!2579 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toValue!8661 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))))))

(assert (= (and d!1139234 res!1553280) b!3837745))

(declare-fun m!4392139 () Bool)

(assert (=> d!1139234 m!4392139))

(declare-fun m!4392141 () Bool)

(assert (=> b!3837745 m!4392141))

(assert (=> b!3837567 d!1139234))

(declare-fun d!1139236 () Bool)

(assert (=> d!1139236 (= (_2!22990 (v!38954 lt!1331686)) lt!1331684)))

(declare-fun lt!1331742 () Unit!58265)

(declare-fun choose!22561 (List!40658 List!40658 List!40658 List!40658 List!40658) Unit!58265)

(assert (=> d!1139236 (= lt!1331742 (choose!22561 lt!1331681 (_2!22990 (v!38954 lt!1331686)) lt!1331681 lt!1331684 lt!1331687))))

(assert (=> d!1139236 (isPrefix!3344 lt!1331681 lt!1331687)))

(assert (=> d!1139236 (= (lemmaSamePrefixThenSameSuffix!1565 lt!1331681 (_2!22990 (v!38954 lt!1331686)) lt!1331681 lt!1331684 lt!1331687) lt!1331742)))

(declare-fun bs!582554 () Bool)

(assert (= bs!582554 d!1139236))

(declare-fun m!4392143 () Bool)

(assert (=> bs!582554 m!4392143))

(assert (=> bs!582554 m!4391983))

(assert (=> b!3837588 d!1139236))

(declare-fun d!1139238 () Bool)

(declare-fun list!15105 (Conc!12456) List!40658)

(assert (=> d!1139238 (= (list!15103 (charsOf!4073 (_1!22990 (v!38954 lt!1331686)))) (list!15105 (c!669081 (charsOf!4073 (_1!22990 (v!38954 lt!1331686))))))))

(declare-fun bs!582555 () Bool)

(assert (= bs!582555 d!1139238))

(declare-fun m!4392145 () Bool)

(assert (=> bs!582555 m!4392145))

(assert (=> b!3837588 d!1139238))

(declare-fun b!3837765 () Bool)

(declare-fun e!2370273 () List!40658)

(assert (=> b!3837765 (= e!2370273 (_2!22990 (v!38954 lt!1331686)))))

(declare-fun e!2370272 () Bool)

(declare-fun lt!1331745 () List!40658)

(declare-fun b!3837768 () Bool)

(assert (=> b!3837768 (= e!2370272 (or (not (= (_2!22990 (v!38954 lt!1331686)) Nil!40534)) (= lt!1331745 lt!1331681)))))

(declare-fun b!3837767 () Bool)

(declare-fun res!1553292 () Bool)

(assert (=> b!3837767 (=> (not res!1553292) (not e!2370272))))

(assert (=> b!3837767 (= res!1553292 (= (size!30530 lt!1331745) (+ (size!30530 lt!1331681) (size!30530 (_2!22990 (v!38954 lt!1331686))))))))

(declare-fun d!1139240 () Bool)

(assert (=> d!1139240 e!2370272))

(declare-fun res!1553291 () Bool)

(assert (=> d!1139240 (=> (not res!1553291) (not e!2370272))))

(declare-fun content!6025 (List!40658) (Set C!22486))

(assert (=> d!1139240 (= res!1553291 (= (content!6025 lt!1331745) (set.union (content!6025 lt!1331681) (content!6025 (_2!22990 (v!38954 lt!1331686))))))))

(assert (=> d!1139240 (= lt!1331745 e!2370273)))

(declare-fun c!669105 () Bool)

(assert (=> d!1139240 (= c!669105 (is-Nil!40534 lt!1331681))))

(assert (=> d!1139240 (= (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))) lt!1331745)))

(declare-fun b!3837766 () Bool)

(assert (=> b!3837766 (= e!2370273 (Cons!40534 (h!45954 lt!1331681) (++!10248 (t!309995 lt!1331681) (_2!22990 (v!38954 lt!1331686)))))))

(assert (= (and d!1139240 c!669105) b!3837765))

(assert (= (and d!1139240 (not c!669105)) b!3837766))

(assert (= (and d!1139240 res!1553291) b!3837767))

(assert (= (and b!3837767 res!1553292) b!3837768))

(declare-fun m!4392159 () Bool)

(assert (=> b!3837767 m!4392159))

(assert (=> b!3837767 m!4391965))

(declare-fun m!4392161 () Bool)

(assert (=> b!3837767 m!4392161))

(declare-fun m!4392163 () Bool)

(assert (=> d!1139240 m!4392163))

(declare-fun m!4392165 () Bool)

(assert (=> d!1139240 m!4392165))

(declare-fun m!4392167 () Bool)

(assert (=> d!1139240 m!4392167))

(declare-fun m!4392169 () Bool)

(assert (=> b!3837766 m!4392169))

(assert (=> b!3837588 d!1139240))

(declare-fun d!1139244 () Bool)

(assert (=> d!1139244 (= (size!30529 (_1!22990 (v!38954 lt!1331686))) (size!30530 (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686)))))))

(declare-fun Unit!58270 () Unit!58265)

(assert (=> d!1139244 (= (lemmaCharactersSize!906 (_1!22990 (v!38954 lt!1331686))) Unit!58270)))

(declare-fun bs!582556 () Bool)

(assert (= bs!582556 d!1139244))

(assert (=> bs!582556 m!4391981))

(assert (=> b!3837588 d!1139244))

(declare-fun d!1139248 () Bool)

(assert (=> d!1139248 (isPrefix!3344 lt!1331681 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))

(declare-fun lt!1331748 () Unit!58265)

(declare-fun choose!22562 (List!40658 List!40658) Unit!58265)

(assert (=> d!1139248 (= lt!1331748 (choose!22562 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))

(assert (=> d!1139248 (= (lemmaConcatTwoListThenFirstIsPrefix!2207 lt!1331681 (_2!22990 (v!38954 lt!1331686))) lt!1331748)))

(declare-fun bs!582557 () Bool)

(assert (= bs!582557 d!1139248))

(assert (=> bs!582557 m!4391947))

(assert (=> bs!582557 m!4391947))

(assert (=> bs!582557 m!4391953))

(declare-fun m!4392171 () Bool)

(assert (=> bs!582557 m!4392171))

(assert (=> b!3837588 d!1139248))

(declare-fun d!1139252 () Bool)

(assert (=> d!1139252 (ruleValid!2197 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686))))))

(declare-fun lt!1331751 () Unit!58265)

(declare-fun choose!22563 (LexerInterface!5834 Rule!12290 List!40660) Unit!58265)

(assert (=> d!1139252 (= lt!1331751 (choose!22563 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686))) rules!2768))))

(assert (=> d!1139252 (contains!8225 rules!2768 (rule!9081 (_1!22990 (v!38954 lt!1331686))))))

(assert (=> d!1139252 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1277 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686))) rules!2768) lt!1331751)))

(declare-fun bs!582558 () Bool)

(assert (= bs!582558 d!1139252))

(assert (=> bs!582558 m!4391959))

(declare-fun m!4392173 () Bool)

(assert (=> bs!582558 m!4392173))

(declare-fun m!4392175 () Bool)

(assert (=> bs!582558 m!4392175))

(assert (=> b!3837588 d!1139252))

(declare-fun d!1139254 () Bool)

(declare-fun lt!1331754 () BalanceConc!24506)

(assert (=> d!1139254 (= (list!15103 lt!1331754) (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686))))))

(assert (=> d!1139254 (= lt!1331754 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))) (value!198618 (_1!22990 (v!38954 lt!1331686)))))))

(assert (=> d!1139254 (= (charsOf!4073 (_1!22990 (v!38954 lt!1331686))) lt!1331754)))

(declare-fun b_lambda!112217 () Bool)

(assert (=> (not b_lambda!112217) (not d!1139254)))

(declare-fun t!310022 () Bool)

(declare-fun tb!220663 () Bool)

(assert (=> (and b!3837574 (= (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310022) tb!220663))

(declare-fun b!3837769 () Bool)

(declare-fun e!2370274 () Bool)

(declare-fun tp!1161833 () Bool)

(assert (=> b!3837769 (= e!2370274 (and (inv!54694 (c!669081 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))) (value!198618 (_1!22990 (v!38954 lt!1331686)))))) tp!1161833))))

(declare-fun result!268938 () Bool)

(assert (=> tb!220663 (= result!268938 (and (inv!54695 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))) (value!198618 (_1!22990 (v!38954 lt!1331686))))) e!2370274))))

(assert (= tb!220663 b!3837769))

(declare-fun m!4392177 () Bool)

(assert (=> b!3837769 m!4392177))

(declare-fun m!4392179 () Bool)

(assert (=> tb!220663 m!4392179))

(assert (=> d!1139254 t!310022))

(declare-fun b_and!285601 () Bool)

(assert (= b_and!285583 (and (=> t!310022 result!268938) b_and!285601)))

(declare-fun tb!220665 () Bool)

(declare-fun t!310024 () Bool)

(assert (=> (and b!3837580 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310024) tb!220665))

(declare-fun result!268940 () Bool)

(assert (= result!268940 result!268938))

(assert (=> d!1139254 t!310024))

(declare-fun b_and!285603 () Bool)

(assert (= b_and!285585 (and (=> t!310024 result!268940) b_and!285603)))

(declare-fun t!310026 () Bool)

(declare-fun tb!220667 () Bool)

(assert (=> (and b!3837577 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310026) tb!220667))

(declare-fun result!268942 () Bool)

(assert (= result!268942 result!268938))

(assert (=> d!1139254 t!310026))

(declare-fun b_and!285605 () Bool)

(assert (= b_and!285587 (and (=> t!310026 result!268942) b_and!285605)))

(declare-fun m!4392181 () Bool)

(assert (=> d!1139254 m!4392181))

(declare-fun m!4392183 () Bool)

(assert (=> d!1139254 m!4392183))

(assert (=> b!3837588 d!1139254))

(declare-fun d!1139256 () Bool)

(declare-fun e!2370286 () Bool)

(assert (=> d!1139256 e!2370286))

(declare-fun res!1553305 () Bool)

(assert (=> d!1139256 (=> res!1553305 e!2370286)))

(declare-fun lt!1331757 () Bool)

(assert (=> d!1139256 (= res!1553305 (not lt!1331757))))

(declare-fun e!2370284 () Bool)

(assert (=> d!1139256 (= lt!1331757 e!2370284)))

(declare-fun res!1553307 () Bool)

(assert (=> d!1139256 (=> res!1553307 e!2370284)))

(assert (=> d!1139256 (= res!1553307 (is-Nil!40534 lt!1331681))))

(assert (=> d!1139256 (= (isPrefix!3344 lt!1331681 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686)))) lt!1331757)))

(declare-fun b!3837784 () Bool)

(assert (=> b!3837784 (= e!2370286 (>= (size!30530 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686)))) (size!30530 lt!1331681)))))

(declare-fun b!3837781 () Bool)

(declare-fun e!2370285 () Bool)

(assert (=> b!3837781 (= e!2370284 e!2370285)))

(declare-fun res!1553306 () Bool)

(assert (=> b!3837781 (=> (not res!1553306) (not e!2370285))))

(assert (=> b!3837781 (= res!1553306 (not (is-Nil!40534 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))))

(declare-fun b!3837783 () Bool)

(declare-fun tail!5802 (List!40658) List!40658)

(assert (=> b!3837783 (= e!2370285 (isPrefix!3344 (tail!5802 lt!1331681) (tail!5802 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))))

(declare-fun b!3837782 () Bool)

(declare-fun res!1553304 () Bool)

(assert (=> b!3837782 (=> (not res!1553304) (not e!2370285))))

(declare-fun head!8075 (List!40658) C!22486)

(assert (=> b!3837782 (= res!1553304 (= (head!8075 lt!1331681) (head!8075 (++!10248 lt!1331681 (_2!22990 (v!38954 lt!1331686))))))))

(assert (= (and d!1139256 (not res!1553307)) b!3837781))

(assert (= (and b!3837781 res!1553306) b!3837782))

(assert (= (and b!3837782 res!1553304) b!3837783))

(assert (= (and d!1139256 (not res!1553305)) b!3837784))

(assert (=> b!3837784 m!4391947))

(declare-fun m!4392189 () Bool)

(assert (=> b!3837784 m!4392189))

(assert (=> b!3837784 m!4391965))

(declare-fun m!4392191 () Bool)

(assert (=> b!3837783 m!4392191))

(assert (=> b!3837783 m!4391947))

(declare-fun m!4392193 () Bool)

(assert (=> b!3837783 m!4392193))

(assert (=> b!3837783 m!4392191))

(assert (=> b!3837783 m!4392193))

(declare-fun m!4392195 () Bool)

(assert (=> b!3837783 m!4392195))

(declare-fun m!4392197 () Bool)

(assert (=> b!3837782 m!4392197))

(assert (=> b!3837782 m!4391947))

(declare-fun m!4392199 () Bool)

(assert (=> b!3837782 m!4392199))

(assert (=> b!3837588 d!1139256))

(declare-fun d!1139260 () Bool)

(declare-fun lt!1331760 () Int)

(assert (=> d!1139260 (>= lt!1331760 0)))

(declare-fun e!2370289 () Int)

(assert (=> d!1139260 (= lt!1331760 e!2370289)))

(declare-fun c!669109 () Bool)

(assert (=> d!1139260 (= c!669109 (is-Nil!40534 lt!1331687))))

(assert (=> d!1139260 (= (size!30530 lt!1331687) lt!1331760)))

(declare-fun b!3837793 () Bool)

(assert (=> b!3837793 (= e!2370289 0)))

(declare-fun b!3837794 () Bool)

(assert (=> b!3837794 (= e!2370289 (+ 1 (size!30530 (t!309995 lt!1331687))))))

(assert (= (and d!1139260 c!669109) b!3837793))

(assert (= (and d!1139260 (not c!669109)) b!3837794))

(declare-fun m!4392201 () Bool)

(assert (=> b!3837794 m!4392201))

(assert (=> b!3837588 d!1139260))

(declare-fun d!1139262 () Bool)

(declare-fun lt!1331761 () Int)

(assert (=> d!1139262 (>= lt!1331761 0)))

(declare-fun e!2370294 () Int)

(assert (=> d!1139262 (= lt!1331761 e!2370294)))

(declare-fun c!669113 () Bool)

(assert (=> d!1139262 (= c!669113 (is-Nil!40534 lt!1331681))))

(assert (=> d!1139262 (= (size!30530 lt!1331681) lt!1331761)))

(declare-fun b!3837799 () Bool)

(assert (=> b!3837799 (= e!2370294 0)))

(declare-fun b!3837800 () Bool)

(assert (=> b!3837800 (= e!2370294 (+ 1 (size!30530 (t!309995 lt!1331681))))))

(assert (= (and d!1139262 c!669113) b!3837799))

(assert (= (and d!1139262 (not c!669113)) b!3837800))

(declare-fun m!4392203 () Bool)

(assert (=> b!3837800 m!4392203))

(assert (=> b!3837588 d!1139262))

(declare-fun d!1139264 () Bool)

(declare-fun lt!1331764 () List!40658)

(assert (=> d!1139264 (= (++!10248 lt!1331681 lt!1331764) lt!1331687)))

(declare-fun e!2370299 () List!40658)

(assert (=> d!1139264 (= lt!1331764 e!2370299)))

(declare-fun c!669116 () Bool)

(assert (=> d!1139264 (= c!669116 (is-Cons!40534 lt!1331681))))

(assert (=> d!1139264 (>= (size!30530 lt!1331687) (size!30530 lt!1331681))))

(assert (=> d!1139264 (= (getSuffix!1799 lt!1331687 lt!1331681) lt!1331764)))

(declare-fun b!3837807 () Bool)

(assert (=> b!3837807 (= e!2370299 (getSuffix!1799 (tail!5802 lt!1331687) (t!309995 lt!1331681)))))

(declare-fun b!3837808 () Bool)

(assert (=> b!3837808 (= e!2370299 lt!1331687)))

(assert (= (and d!1139264 c!669116) b!3837807))

(assert (= (and d!1139264 (not c!669116)) b!3837808))

(declare-fun m!4392205 () Bool)

(assert (=> d!1139264 m!4392205))

(assert (=> d!1139264 m!4391957))

(assert (=> d!1139264 m!4391965))

(declare-fun m!4392207 () Bool)

(assert (=> b!3837807 m!4392207))

(assert (=> b!3837807 m!4392207))

(declare-fun m!4392209 () Bool)

(assert (=> b!3837807 m!4392209))

(assert (=> b!3837588 d!1139264))

(declare-fun d!1139266 () Bool)

(declare-fun res!1553315 () Bool)

(declare-fun e!2370305 () Bool)

(assert (=> d!1139266 (=> (not res!1553315) (not e!2370305))))

(declare-fun validRegex!5079 (Regex!11150) Bool)

(assert (=> d!1139266 (= res!1553315 (validRegex!5079 (regex!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686))))))))

(assert (=> d!1139266 (= (ruleValid!2197 thiss!20629 (rule!9081 (_1!22990 (v!38954 lt!1331686)))) e!2370305)))

(declare-fun b!3837818 () Bool)

(declare-fun res!1553316 () Bool)

(assert (=> b!3837818 (=> (not res!1553316) (not e!2370305))))

(declare-fun nullable!3880 (Regex!11150) Bool)

(assert (=> b!3837818 (= res!1553316 (not (nullable!3880 (regex!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))))))

(declare-fun b!3837819 () Bool)

(assert (=> b!3837819 (= e!2370305 (not (= (tag!7105 (rule!9081 (_1!22990 (v!38954 lt!1331686)))) (String!46096 ""))))))

(assert (= (and d!1139266 res!1553315) b!3837818))

(assert (= (and b!3837818 res!1553316) b!3837819))

(declare-fun m!4392217 () Bool)

(assert (=> d!1139266 m!4392217))

(declare-fun m!4392219 () Bool)

(assert (=> b!3837818 m!4392219))

(assert (=> b!3837588 d!1139266))

(declare-fun d!1139270 () Bool)

(assert (=> d!1139270 (= (isEmpty!23943 prefixTokens!80) (is-Nil!40537 prefixTokens!80))))

(assert (=> b!3837589 d!1139270))

(declare-fun d!1139272 () Bool)

(declare-fun e!2370308 () Bool)

(assert (=> d!1139272 e!2370308))

(declare-fun res!1553318 () Bool)

(assert (=> d!1139272 (=> res!1553318 e!2370308)))

(declare-fun lt!1331765 () Bool)

(assert (=> d!1139272 (= res!1553318 (not lt!1331765))))

(declare-fun e!2370306 () Bool)

(assert (=> d!1139272 (= lt!1331765 e!2370306)))

(declare-fun res!1553320 () Bool)

(assert (=> d!1139272 (=> res!1553320 e!2370306)))

(assert (=> d!1139272 (= res!1553320 (is-Nil!40534 lt!1331681))))

(assert (=> d!1139272 (= (isPrefix!3344 lt!1331681 lt!1331687) lt!1331765)))

(declare-fun b!3837823 () Bool)

(assert (=> b!3837823 (= e!2370308 (>= (size!30530 lt!1331687) (size!30530 lt!1331681)))))

(declare-fun b!3837820 () Bool)

(declare-fun e!2370307 () Bool)

(assert (=> b!3837820 (= e!2370306 e!2370307)))

(declare-fun res!1553319 () Bool)

(assert (=> b!3837820 (=> (not res!1553319) (not e!2370307))))

(assert (=> b!3837820 (= res!1553319 (not (is-Nil!40534 lt!1331687)))))

(declare-fun b!3837822 () Bool)

(assert (=> b!3837822 (= e!2370307 (isPrefix!3344 (tail!5802 lt!1331681) (tail!5802 lt!1331687)))))

(declare-fun b!3837821 () Bool)

(declare-fun res!1553317 () Bool)

(assert (=> b!3837821 (=> (not res!1553317) (not e!2370307))))

(assert (=> b!3837821 (= res!1553317 (= (head!8075 lt!1331681) (head!8075 lt!1331687)))))

(assert (= (and d!1139272 (not res!1553320)) b!3837820))

(assert (= (and b!3837820 res!1553319) b!3837821))

(assert (= (and b!3837821 res!1553317) b!3837822))

(assert (= (and d!1139272 (not res!1553318)) b!3837823))

(assert (=> b!3837823 m!4391957))

(assert (=> b!3837823 m!4391965))

(assert (=> b!3837822 m!4392191))

(assert (=> b!3837822 m!4392207))

(assert (=> b!3837822 m!4392191))

(assert (=> b!3837822 m!4392207))

(declare-fun m!4392221 () Bool)

(assert (=> b!3837822 m!4392221))

(assert (=> b!3837821 m!4392197))

(declare-fun m!4392223 () Bool)

(assert (=> b!3837821 m!4392223))

(assert (=> b!3837578 d!1139272))

(declare-fun d!1139274 () Bool)

(assert (=> d!1139274 (= (inv!54687 (tag!7105 (h!45956 rules!2768))) (= (mod (str.len (value!198617 (tag!7105 (h!45956 rules!2768)))) 2) 0))))

(assert (=> b!3837576 d!1139274))

(declare-fun d!1139276 () Bool)

(declare-fun res!1553321 () Bool)

(declare-fun e!2370309 () Bool)

(assert (=> d!1139276 (=> (not res!1553321) (not e!2370309))))

(assert (=> d!1139276 (= res!1553321 (semiInverseModEq!2680 (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toValue!8661 (transformation!6245 (h!45956 rules!2768)))))))

(assert (=> d!1139276 (= (inv!54690 (transformation!6245 (h!45956 rules!2768))) e!2370309)))

(declare-fun b!3837824 () Bool)

(assert (=> b!3837824 (= e!2370309 (equivClasses!2579 (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toValue!8661 (transformation!6245 (h!45956 rules!2768)))))))

(assert (= (and d!1139276 res!1553321) b!3837824))

(declare-fun m!4392225 () Bool)

(assert (=> d!1139276 m!4392225))

(declare-fun m!4392227 () Bool)

(assert (=> b!3837824 m!4392227))

(assert (=> b!3837576 d!1139276))

(declare-fun d!1139278 () Bool)

(assert (=> d!1139278 (= (isEmpty!23941 rules!2768) (is-Nil!40536 rules!2768))))

(assert (=> b!3837566 d!1139278))

(declare-fun d!1139280 () Bool)

(declare-fun res!1553322 () Bool)

(declare-fun e!2370310 () Bool)

(assert (=> d!1139280 (=> (not res!1553322) (not e!2370310))))

(assert (=> d!1139280 (= res!1553322 (not (isEmpty!23942 (originalCharacters!6845 (h!45957 suffixTokens!72)))))))

(assert (=> d!1139280 (= (inv!54691 (h!45957 suffixTokens!72)) e!2370310)))

(declare-fun b!3837825 () Bool)

(declare-fun res!1553323 () Bool)

(assert (=> b!3837825 (=> (not res!1553323) (not e!2370310))))

(assert (=> b!3837825 (= res!1553323 (= (originalCharacters!6845 (h!45957 suffixTokens!72)) (list!15103 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (value!198618 (h!45957 suffixTokens!72))))))))

(declare-fun b!3837826 () Bool)

(assert (=> b!3837826 (= e!2370310 (= (size!30529 (h!45957 suffixTokens!72)) (size!30530 (originalCharacters!6845 (h!45957 suffixTokens!72)))))))

(assert (= (and d!1139280 res!1553322) b!3837825))

(assert (= (and b!3837825 res!1553323) b!3837826))

(declare-fun b_lambda!112219 () Bool)

(assert (=> (not b_lambda!112219) (not b!3837825)))

(declare-fun tb!220669 () Bool)

(declare-fun t!310028 () Bool)

(assert (=> (and b!3837574 (= (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310028) tb!220669))

(declare-fun b!3837827 () Bool)

(declare-fun e!2370311 () Bool)

(declare-fun tp!1161834 () Bool)

(assert (=> b!3837827 (= e!2370311 (and (inv!54694 (c!669081 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (value!198618 (h!45957 suffixTokens!72))))) tp!1161834))))

(declare-fun result!268944 () Bool)

(assert (=> tb!220669 (= result!268944 (and (inv!54695 (dynLambda!17559 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (value!198618 (h!45957 suffixTokens!72)))) e!2370311))))

(assert (= tb!220669 b!3837827))

(declare-fun m!4392229 () Bool)

(assert (=> b!3837827 m!4392229))

(declare-fun m!4392231 () Bool)

(assert (=> tb!220669 m!4392231))

(assert (=> b!3837825 t!310028))

(declare-fun b_and!285607 () Bool)

(assert (= b_and!285601 (and (=> t!310028 result!268944) b_and!285607)))

(declare-fun t!310030 () Bool)

(declare-fun tb!220671 () Bool)

(assert (=> (and b!3837580 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310030) tb!220671))

(declare-fun result!268946 () Bool)

(assert (= result!268946 result!268944))

(assert (=> b!3837825 t!310030))

(declare-fun b_and!285609 () Bool)

(assert (= b_and!285603 (and (=> t!310030 result!268946) b_and!285609)))

(declare-fun t!310032 () Bool)

(declare-fun tb!220673 () Bool)

(assert (=> (and b!3837577 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310032) tb!220673))

(declare-fun result!268948 () Bool)

(assert (= result!268948 result!268944))

(assert (=> b!3837825 t!310032))

(declare-fun b_and!285611 () Bool)

(assert (= b_and!285605 (and (=> t!310032 result!268948) b_and!285611)))

(declare-fun m!4392233 () Bool)

(assert (=> d!1139280 m!4392233))

(declare-fun m!4392235 () Bool)

(assert (=> b!3837825 m!4392235))

(assert (=> b!3837825 m!4392235))

(declare-fun m!4392237 () Bool)

(assert (=> b!3837825 m!4392237))

(declare-fun m!4392239 () Bool)

(assert (=> b!3837826 m!4392239))

(assert (=> b!3837575 d!1139280))

(declare-fun b!3837838 () Bool)

(declare-fun e!2370318 () tuple2!39710)

(assert (=> b!3837838 (= e!2370318 (tuple2!39711 Nil!40537 suffix!1176))))

(declare-fun b!3837839 () Bool)

(declare-fun e!2370319 () Bool)

(declare-fun lt!1331774 () tuple2!39710)

(assert (=> b!3837839 (= e!2370319 (= (_2!22989 lt!1331774) suffix!1176))))

(declare-fun b!3837840 () Bool)

(declare-fun lt!1331772 () Option!8663)

(declare-fun lt!1331773 () tuple2!39710)

(assert (=> b!3837840 (= e!2370318 (tuple2!39711 (Cons!40537 (_1!22990 (v!38954 lt!1331772)) (_1!22989 lt!1331773)) (_2!22989 lt!1331773)))))

(assert (=> b!3837840 (= lt!1331773 (lexList!1602 thiss!20629 rules!2768 (_2!22990 (v!38954 lt!1331772))))))

(declare-fun b!3837841 () Bool)

(declare-fun e!2370320 () Bool)

(assert (=> b!3837841 (= e!2370319 e!2370320)))

(declare-fun res!1553326 () Bool)

(assert (=> b!3837841 (= res!1553326 (< (size!30530 (_2!22989 lt!1331774)) (size!30530 suffix!1176)))))

(assert (=> b!3837841 (=> (not res!1553326) (not e!2370320))))

(declare-fun b!3837842 () Bool)

(assert (=> b!3837842 (= e!2370320 (not (isEmpty!23943 (_1!22989 lt!1331774))))))

(declare-fun d!1139282 () Bool)

(assert (=> d!1139282 e!2370319))

(declare-fun c!669124 () Bool)

(declare-fun size!30534 (List!40661) Int)

(assert (=> d!1139282 (= c!669124 (> (size!30534 (_1!22989 lt!1331774)) 0))))

(assert (=> d!1139282 (= lt!1331774 e!2370318)))

(declare-fun c!669123 () Bool)

(assert (=> d!1139282 (= c!669123 (is-Some!8662 lt!1331772))))

(assert (=> d!1139282 (= lt!1331772 (maxPrefix!3138 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139282 (= (lexList!1602 thiss!20629 rules!2768 suffix!1176) lt!1331774)))

(assert (= (and d!1139282 c!669123) b!3837840))

(assert (= (and d!1139282 (not c!669123)) b!3837838))

(assert (= (and d!1139282 c!669124) b!3837841))

(assert (= (and d!1139282 (not c!669124)) b!3837839))

(assert (= (and b!3837841 res!1553326) b!3837842))

(declare-fun m!4392241 () Bool)

(assert (=> b!3837840 m!4392241))

(declare-fun m!4392243 () Bool)

(assert (=> b!3837841 m!4392243))

(declare-fun m!4392245 () Bool)

(assert (=> b!3837841 m!4392245))

(declare-fun m!4392247 () Bool)

(assert (=> b!3837842 m!4392247))

(declare-fun m!4392249 () Bool)

(assert (=> d!1139282 m!4392249))

(declare-fun m!4392251 () Bool)

(assert (=> d!1139282 m!4392251))

(assert (=> b!3837565 d!1139282))

(declare-fun d!1139284 () Bool)

(assert (=> d!1139284 (= (inv!54687 (tag!7105 (rule!9081 (h!45957 suffixTokens!72)))) (= (mod (str.len (value!198617 (tag!7105 (rule!9081 (h!45957 suffixTokens!72))))) 2) 0))))

(assert (=> b!3837586 d!1139284))

(declare-fun d!1139286 () Bool)

(declare-fun res!1553327 () Bool)

(declare-fun e!2370321 () Bool)

(assert (=> d!1139286 (=> (not res!1553327) (not e!2370321))))

(assert (=> d!1139286 (= res!1553327 (semiInverseModEq!2680 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toValue!8661 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))))))

(assert (=> d!1139286 (= (inv!54690 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) e!2370321)))

(declare-fun b!3837843 () Bool)

(assert (=> b!3837843 (= e!2370321 (equivClasses!2579 (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toValue!8661 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))))))

(assert (= (and d!1139286 res!1553327) b!3837843))

(declare-fun m!4392253 () Bool)

(assert (=> d!1139286 m!4392253))

(declare-fun m!4392255 () Bool)

(assert (=> b!3837843 m!4392255))

(assert (=> b!3837586 d!1139286))

(declare-fun b!3837844 () Bool)

(declare-fun e!2370322 () tuple2!39710)

(assert (=> b!3837844 (= e!2370322 (tuple2!39711 Nil!40537 lt!1331687))))

(declare-fun b!3837845 () Bool)

(declare-fun e!2370323 () Bool)

(declare-fun lt!1331777 () tuple2!39710)

(assert (=> b!3837845 (= e!2370323 (= (_2!22989 lt!1331777) lt!1331687))))

(declare-fun b!3837846 () Bool)

(declare-fun lt!1331775 () Option!8663)

(declare-fun lt!1331776 () tuple2!39710)

(assert (=> b!3837846 (= e!2370322 (tuple2!39711 (Cons!40537 (_1!22990 (v!38954 lt!1331775)) (_1!22989 lt!1331776)) (_2!22989 lt!1331776)))))

(assert (=> b!3837846 (= lt!1331776 (lexList!1602 thiss!20629 rules!2768 (_2!22990 (v!38954 lt!1331775))))))

(declare-fun b!3837847 () Bool)

(declare-fun e!2370324 () Bool)

(assert (=> b!3837847 (= e!2370323 e!2370324)))

(declare-fun res!1553328 () Bool)

(assert (=> b!3837847 (= res!1553328 (< (size!30530 (_2!22989 lt!1331777)) (size!30530 lt!1331687)))))

(assert (=> b!3837847 (=> (not res!1553328) (not e!2370324))))

(declare-fun b!3837848 () Bool)

(assert (=> b!3837848 (= e!2370324 (not (isEmpty!23943 (_1!22989 lt!1331777))))))

(declare-fun d!1139288 () Bool)

(assert (=> d!1139288 e!2370323))

(declare-fun c!669126 () Bool)

(assert (=> d!1139288 (= c!669126 (> (size!30534 (_1!22989 lt!1331777)) 0))))

(assert (=> d!1139288 (= lt!1331777 e!2370322)))

(declare-fun c!669125 () Bool)

(assert (=> d!1139288 (= c!669125 (is-Some!8662 lt!1331775))))

(assert (=> d!1139288 (= lt!1331775 (maxPrefix!3138 thiss!20629 rules!2768 lt!1331687))))

(assert (=> d!1139288 (= (lexList!1602 thiss!20629 rules!2768 lt!1331687) lt!1331777)))

(assert (= (and d!1139288 c!669125) b!3837846))

(assert (= (and d!1139288 (not c!669125)) b!3837844))

(assert (= (and d!1139288 c!669126) b!3837847))

(assert (= (and d!1139288 (not c!669126)) b!3837845))

(assert (= (and b!3837847 res!1553328) b!3837848))

(declare-fun m!4392257 () Bool)

(assert (=> b!3837846 m!4392257))

(declare-fun m!4392259 () Bool)

(assert (=> b!3837847 m!4392259))

(assert (=> b!3837847 m!4391957))

(declare-fun m!4392261 () Bool)

(assert (=> b!3837848 m!4392261))

(declare-fun m!4392263 () Bool)

(assert (=> d!1139288 m!4392263))

(assert (=> d!1139288 m!4391969))

(assert (=> b!3837584 d!1139288))

(declare-fun b!3837859 () Bool)

(declare-fun res!1553333 () Bool)

(declare-fun e!2370330 () Bool)

(assert (=> b!3837859 (=> (not res!1553333) (not e!2370330))))

(declare-fun lt!1331780 () List!40661)

(assert (=> b!3837859 (= res!1553333 (= (size!30534 lt!1331780) (+ (size!30534 prefixTokens!80) (size!30534 suffixTokens!72))))))

(declare-fun b!3837860 () Bool)

(assert (=> b!3837860 (= e!2370330 (or (not (= suffixTokens!72 Nil!40537)) (= lt!1331780 prefixTokens!80)))))

(declare-fun b!3837857 () Bool)

(declare-fun e!2370329 () List!40661)

(assert (=> b!3837857 (= e!2370329 suffixTokens!72)))

(declare-fun d!1139290 () Bool)

(assert (=> d!1139290 e!2370330))

(declare-fun res!1553334 () Bool)

(assert (=> d!1139290 (=> (not res!1553334) (not e!2370330))))

(declare-fun content!6026 (List!40661) (Set Token!11628))

(assert (=> d!1139290 (= res!1553334 (= (content!6026 lt!1331780) (set.union (content!6026 prefixTokens!80) (content!6026 suffixTokens!72))))))

(assert (=> d!1139290 (= lt!1331780 e!2370329)))

(declare-fun c!669129 () Bool)

(assert (=> d!1139290 (= c!669129 (is-Nil!40537 prefixTokens!80))))

(assert (=> d!1139290 (= (++!10247 prefixTokens!80 suffixTokens!72) lt!1331780)))

(declare-fun b!3837858 () Bool)

(assert (=> b!3837858 (= e!2370329 (Cons!40537 (h!45957 prefixTokens!80) (++!10247 (t!309998 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1139290 c!669129) b!3837857))

(assert (= (and d!1139290 (not c!669129)) b!3837858))

(assert (= (and d!1139290 res!1553334) b!3837859))

(assert (= (and b!3837859 res!1553333) b!3837860))

(declare-fun m!4392265 () Bool)

(assert (=> b!3837859 m!4392265))

(declare-fun m!4392267 () Bool)

(assert (=> b!3837859 m!4392267))

(declare-fun m!4392269 () Bool)

(assert (=> b!3837859 m!4392269))

(declare-fun m!4392271 () Bool)

(assert (=> d!1139290 m!4392271))

(declare-fun m!4392273 () Bool)

(assert (=> d!1139290 m!4392273))

(declare-fun m!4392275 () Bool)

(assert (=> d!1139290 m!4392275))

(declare-fun m!4392277 () Bool)

(assert (=> b!3837858 m!4392277))

(assert (=> b!3837584 d!1139290))

(declare-fun b!3837861 () Bool)

(declare-fun e!2370332 () List!40658)

(assert (=> b!3837861 (= e!2370332 suffix!1176)))

(declare-fun e!2370331 () Bool)

(declare-fun b!3837864 () Bool)

(declare-fun lt!1331781 () List!40658)

(assert (=> b!3837864 (= e!2370331 (or (not (= suffix!1176 Nil!40534)) (= lt!1331781 prefix!426)))))

(declare-fun b!3837863 () Bool)

(declare-fun res!1553336 () Bool)

(assert (=> b!3837863 (=> (not res!1553336) (not e!2370331))))

(assert (=> b!3837863 (= res!1553336 (= (size!30530 lt!1331781) (+ (size!30530 prefix!426) (size!30530 suffix!1176))))))

(declare-fun d!1139292 () Bool)

(assert (=> d!1139292 e!2370331))

(declare-fun res!1553335 () Bool)

(assert (=> d!1139292 (=> (not res!1553335) (not e!2370331))))

(assert (=> d!1139292 (= res!1553335 (= (content!6025 lt!1331781) (set.union (content!6025 prefix!426) (content!6025 suffix!1176))))))

(assert (=> d!1139292 (= lt!1331781 e!2370332)))

(declare-fun c!669130 () Bool)

(assert (=> d!1139292 (= c!669130 (is-Nil!40534 prefix!426))))

(assert (=> d!1139292 (= (++!10248 prefix!426 suffix!1176) lt!1331781)))

(declare-fun b!3837862 () Bool)

(assert (=> b!3837862 (= e!2370332 (Cons!40534 (h!45954 prefix!426) (++!10248 (t!309995 prefix!426) suffix!1176)))))

(assert (= (and d!1139292 c!669130) b!3837861))

(assert (= (and d!1139292 (not c!669130)) b!3837862))

(assert (= (and d!1139292 res!1553335) b!3837863))

(assert (= (and b!3837863 res!1553336) b!3837864))

(declare-fun m!4392279 () Bool)

(assert (=> b!3837863 m!4392279))

(declare-fun m!4392281 () Bool)

(assert (=> b!3837863 m!4392281))

(assert (=> b!3837863 m!4392245))

(declare-fun m!4392283 () Bool)

(assert (=> d!1139292 m!4392283))

(declare-fun m!4392285 () Bool)

(assert (=> d!1139292 m!4392285))

(declare-fun m!4392287 () Bool)

(assert (=> d!1139292 m!4392287))

(declare-fun m!4392289 () Bool)

(assert (=> b!3837862 m!4392289))

(assert (=> b!3837584 d!1139292))

(declare-fun d!1139294 () Bool)

(declare-fun lt!1331782 () Int)

(assert (=> d!1139294 (>= lt!1331782 0)))

(declare-fun e!2370333 () Int)

(assert (=> d!1139294 (= lt!1331782 e!2370333)))

(declare-fun c!669131 () Bool)

(assert (=> d!1139294 (= c!669131 (is-Nil!40534 (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686)))))))

(assert (=> d!1139294 (= (size!30530 (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686)))) lt!1331782)))

(declare-fun b!3837865 () Bool)

(assert (=> b!3837865 (= e!2370333 0)))

(declare-fun b!3837866 () Bool)

(assert (=> b!3837866 (= e!2370333 (+ 1 (size!30530 (t!309995 (originalCharacters!6845 (_1!22990 (v!38954 lt!1331686)))))))))

(assert (= (and d!1139294 c!669131) b!3837865))

(assert (= (and d!1139294 (not c!669131)) b!3837866))

(declare-fun m!4392291 () Bool)

(assert (=> b!3837866 m!4392291))

(assert (=> b!3837585 d!1139294))

(declare-fun b!3837871 () Bool)

(declare-fun e!2370336 () Bool)

(declare-fun tp!1161837 () Bool)

(assert (=> b!3837871 (= e!2370336 (and tp_is_empty!19271 tp!1161837))))

(assert (=> b!3837583 (= tp!1161775 e!2370336)))

(assert (= (and b!3837583 (is-Cons!40534 (t!309995 suffixResult!91))) b!3837871))

(declare-fun b!3837872 () Bool)

(declare-fun e!2370337 () Bool)

(declare-fun tp!1161838 () Bool)

(assert (=> b!3837872 (= e!2370337 (and tp_is_empty!19271 tp!1161838))))

(assert (=> b!3837572 (= tp!1161769 e!2370337)))

(assert (= (and b!3837572 (is-Cons!40534 (t!309995 suffix!1176))) b!3837872))

(declare-fun b!3837886 () Bool)

(declare-fun b_free!102081 () Bool)

(declare-fun b_next!102785 () Bool)

(assert (=> b!3837886 (= b_free!102081 (not b_next!102785))))

(declare-fun tb!220675 () Bool)

(declare-fun t!310034 () Bool)

(assert (=> (and b!3837886 (= (toValue!8661 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310034) tb!220675))

(declare-fun result!268954 () Bool)

(assert (= result!268954 result!268922))

(assert (=> d!1139220 t!310034))

(declare-fun tp!1161852 () Bool)

(declare-fun b_and!285613 () Bool)

(assert (=> b!3837886 (= tp!1161852 (and (=> t!310034 result!268954) b_and!285613))))

(declare-fun b_free!102083 () Bool)

(declare-fun b_next!102787 () Bool)

(assert (=> b!3837886 (= b_free!102083 (not b_next!102787))))

(declare-fun t!310036 () Bool)

(declare-fun tb!220677 () Bool)

(assert (=> (and b!3837886 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310036) tb!220677))

(declare-fun result!268956 () Bool)

(assert (= result!268956 result!268914))

(assert (=> b!3837669 t!310036))

(declare-fun t!310038 () Bool)

(declare-fun tb!220679 () Bool)

(assert (=> (and b!3837886 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310038) tb!220679))

(declare-fun result!268958 () Bool)

(assert (= result!268958 result!268938))

(assert (=> d!1139254 t!310038))

(declare-fun t!310040 () Bool)

(declare-fun tb!220681 () Bool)

(assert (=> (and b!3837886 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310040) tb!220681))

(declare-fun result!268960 () Bool)

(assert (= result!268960 result!268944))

(assert (=> b!3837825 t!310040))

(declare-fun tp!1161850 () Bool)

(declare-fun b_and!285615 () Bool)

(assert (=> b!3837886 (= tp!1161850 (and (=> t!310036 result!268956) (=> t!310038 result!268958) (=> t!310040 result!268960) b_and!285615))))

(declare-fun e!2370355 () Bool)

(declare-fun b!3837884 () Bool)

(declare-fun e!2370352 () Bool)

(declare-fun tp!1161853 () Bool)

(assert (=> b!3837884 (= e!2370352 (and (inv!21 (value!198618 (h!45957 (t!309998 prefixTokens!80)))) e!2370355 tp!1161853))))

(declare-fun b!3837883 () Bool)

(declare-fun e!2370351 () Bool)

(declare-fun tp!1161849 () Bool)

(assert (=> b!3837883 (= e!2370351 (and (inv!54691 (h!45957 (t!309998 prefixTokens!80))) e!2370352 tp!1161849))))

(declare-fun e!2370353 () Bool)

(assert (=> b!3837886 (= e!2370353 (and tp!1161852 tp!1161850))))

(assert (=> b!3837573 (= tp!1161773 e!2370351)))

(declare-fun tp!1161851 () Bool)

(declare-fun b!3837885 () Bool)

(assert (=> b!3837885 (= e!2370355 (and tp!1161851 (inv!54687 (tag!7105 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (inv!54690 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) e!2370353))))

(assert (= b!3837885 b!3837886))

(assert (= b!3837884 b!3837885))

(assert (= b!3837883 b!3837884))

(assert (= (and b!3837573 (is-Cons!40537 (t!309998 prefixTokens!80))) b!3837883))

(declare-fun m!4392293 () Bool)

(assert (=> b!3837884 m!4392293))

(declare-fun m!4392295 () Bool)

(assert (=> b!3837883 m!4392295))

(declare-fun m!4392297 () Bool)

(assert (=> b!3837885 m!4392297))

(declare-fun m!4392299 () Bool)

(assert (=> b!3837885 m!4392299))

(declare-fun b!3837887 () Bool)

(declare-fun e!2370356 () Bool)

(declare-fun tp!1161854 () Bool)

(assert (=> b!3837887 (= e!2370356 (and tp_is_empty!19271 tp!1161854))))

(assert (=> b!3837571 (= tp!1161759 e!2370356)))

(assert (= (and b!3837571 (is-Cons!40534 (originalCharacters!6845 (h!45957 suffixTokens!72)))) b!3837887))

(declare-fun b!3837898 () Bool)

(declare-fun b_free!102085 () Bool)

(declare-fun b_next!102789 () Bool)

(assert (=> b!3837898 (= b_free!102085 (not b_next!102789))))

(declare-fun t!310042 () Bool)

(declare-fun tb!220683 () Bool)

(assert (=> (and b!3837898 (= (toValue!8661 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310042) tb!220683))

(declare-fun result!268964 () Bool)

(assert (= result!268964 result!268922))

(assert (=> d!1139220 t!310042))

(declare-fun tp!1161865 () Bool)

(declare-fun b_and!285617 () Bool)

(assert (=> b!3837898 (= tp!1161865 (and (=> t!310042 result!268964) b_and!285617))))

(declare-fun b_free!102087 () Bool)

(declare-fun b_next!102791 () Bool)

(assert (=> b!3837898 (= b_free!102087 (not b_next!102791))))

(declare-fun tb!220685 () Bool)

(declare-fun t!310044 () Bool)

(assert (=> (and b!3837898 (= (toChars!8520 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310044) tb!220685))

(declare-fun result!268966 () Bool)

(assert (= result!268966 result!268914))

(assert (=> b!3837669 t!310044))

(declare-fun t!310046 () Bool)

(declare-fun tb!220687 () Bool)

(assert (=> (and b!3837898 (= (toChars!8520 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310046) tb!220687))

(declare-fun result!268968 () Bool)

(assert (= result!268968 result!268938))

(assert (=> d!1139254 t!310046))

(declare-fun t!310048 () Bool)

(declare-fun tb!220689 () Bool)

(assert (=> (and b!3837898 (= (toChars!8520 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310048) tb!220689))

(declare-fun result!268970 () Bool)

(assert (= result!268970 result!268944))

(assert (=> b!3837825 t!310048))

(declare-fun tp!1161864 () Bool)

(declare-fun b_and!285619 () Bool)

(assert (=> b!3837898 (= tp!1161864 (and (=> t!310044 result!268966) (=> t!310046 result!268968) (=> t!310048 result!268970) b_and!285619))))

(declare-fun e!2370367 () Bool)

(assert (=> b!3837898 (= e!2370367 (and tp!1161865 tp!1161864))))

(declare-fun tp!1161863 () Bool)

(declare-fun e!2370365 () Bool)

(declare-fun b!3837897 () Bool)

(assert (=> b!3837897 (= e!2370365 (and tp!1161863 (inv!54687 (tag!7105 (h!45956 (t!309997 rules!2768)))) (inv!54690 (transformation!6245 (h!45956 (t!309997 rules!2768)))) e!2370367))))

(declare-fun b!3837896 () Bool)

(declare-fun e!2370368 () Bool)

(declare-fun tp!1161866 () Bool)

(assert (=> b!3837896 (= e!2370368 (and e!2370365 tp!1161866))))

(assert (=> b!3837582 (= tp!1161768 e!2370368)))

(assert (= b!3837897 b!3837898))

(assert (= b!3837896 b!3837897))

(assert (= (and b!3837582 (is-Cons!40536 (t!309997 rules!2768))) b!3837896))

(declare-fun m!4392301 () Bool)

(assert (=> b!3837897 m!4392301))

(declare-fun m!4392303 () Bool)

(assert (=> b!3837897 m!4392303))

(declare-fun b!3837899 () Bool)

(declare-fun e!2370369 () Bool)

(declare-fun tp!1161867 () Bool)

(assert (=> b!3837899 (= e!2370369 (and tp_is_empty!19271 tp!1161867))))

(assert (=> b!3837568 (= tp!1161766 e!2370369)))

(assert (= (and b!3837568 (is-Cons!40534 (originalCharacters!6845 (h!45957 prefixTokens!80)))) b!3837899))

(declare-fun e!2370372 () Bool)

(assert (=> b!3837567 (= tp!1161760 e!2370372)))

(declare-fun b!3837913 () Bool)

(declare-fun tp!1161882 () Bool)

(declare-fun tp!1161878 () Bool)

(assert (=> b!3837913 (= e!2370372 (and tp!1161882 tp!1161878))))

(declare-fun b!3837912 () Bool)

(declare-fun tp!1161879 () Bool)

(assert (=> b!3837912 (= e!2370372 tp!1161879)))

(declare-fun b!3837911 () Bool)

(declare-fun tp!1161881 () Bool)

(declare-fun tp!1161880 () Bool)

(assert (=> b!3837911 (= e!2370372 (and tp!1161881 tp!1161880))))

(declare-fun b!3837910 () Bool)

(assert (=> b!3837910 (= e!2370372 tp_is_empty!19271)))

(assert (= (and b!3837567 (is-ElementMatch!11150 (regex!6245 (rule!9081 (h!45957 prefixTokens!80))))) b!3837910))

(assert (= (and b!3837567 (is-Concat!17626 (regex!6245 (rule!9081 (h!45957 prefixTokens!80))))) b!3837911))

(assert (= (and b!3837567 (is-Star!11150 (regex!6245 (rule!9081 (h!45957 prefixTokens!80))))) b!3837912))

(assert (= (and b!3837567 (is-Union!11150 (regex!6245 (rule!9081 (h!45957 prefixTokens!80))))) b!3837913))

(declare-fun b!3837914 () Bool)

(declare-fun e!2370373 () Bool)

(declare-fun tp!1161883 () Bool)

(assert (=> b!3837914 (= e!2370373 (and tp_is_empty!19271 tp!1161883))))

(assert (=> b!3837587 (= tp!1161763 e!2370373)))

(assert (= (and b!3837587 (is-Cons!40534 (t!309995 prefix!426))) b!3837914))

(declare-fun e!2370374 () Bool)

(assert (=> b!3837576 (= tp!1161772 e!2370374)))

(declare-fun b!3837918 () Bool)

(declare-fun tp!1161888 () Bool)

(declare-fun tp!1161884 () Bool)

(assert (=> b!3837918 (= e!2370374 (and tp!1161888 tp!1161884))))

(declare-fun b!3837917 () Bool)

(declare-fun tp!1161885 () Bool)

(assert (=> b!3837917 (= e!2370374 tp!1161885)))

(declare-fun b!3837916 () Bool)

(declare-fun tp!1161887 () Bool)

(declare-fun tp!1161886 () Bool)

(assert (=> b!3837916 (= e!2370374 (and tp!1161887 tp!1161886))))

(declare-fun b!3837915 () Bool)

(assert (=> b!3837915 (= e!2370374 tp_is_empty!19271)))

(assert (= (and b!3837576 (is-ElementMatch!11150 (regex!6245 (h!45956 rules!2768)))) b!3837915))

(assert (= (and b!3837576 (is-Concat!17626 (regex!6245 (h!45956 rules!2768)))) b!3837916))

(assert (= (and b!3837576 (is-Star!11150 (regex!6245 (h!45956 rules!2768)))) b!3837917))

(assert (= (and b!3837576 (is-Union!11150 (regex!6245 (h!45956 rules!2768)))) b!3837918))

(declare-fun b!3837922 () Bool)

(declare-fun b_free!102089 () Bool)

(declare-fun b_next!102793 () Bool)

(assert (=> b!3837922 (= b_free!102089 (not b_next!102793))))

(declare-fun t!310050 () Bool)

(declare-fun tb!220691 () Bool)

(assert (=> (and b!3837922 (= (toValue!8661 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toValue!8661 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310050) tb!220691))

(declare-fun result!268974 () Bool)

(assert (= result!268974 result!268922))

(assert (=> d!1139220 t!310050))

(declare-fun b_and!285621 () Bool)

(declare-fun tp!1161892 () Bool)

(assert (=> b!3837922 (= tp!1161892 (and (=> t!310050 result!268974) b_and!285621))))

(declare-fun b_free!102091 () Bool)

(declare-fun b_next!102795 () Bool)

(assert (=> b!3837922 (= b_free!102091 (not b_next!102795))))

(declare-fun tb!220693 () Bool)

(declare-fun t!310052 () Bool)

(assert (=> (and b!3837922 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80))))) t!310052) tb!220693))

(declare-fun result!268976 () Bool)

(assert (= result!268976 result!268914))

(assert (=> b!3837669 t!310052))

(declare-fun t!310054 () Bool)

(declare-fun tb!220695 () Bool)

(assert (=> (and b!3837922 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toChars!8520 (transformation!6245 (rule!9081 (_1!22990 (v!38954 lt!1331686)))))) t!310054) tb!220695))

(declare-fun result!268978 () Bool)

(assert (= result!268978 result!268938))

(assert (=> d!1139254 t!310054))

(declare-fun t!310056 () Bool)

(declare-fun tb!220697 () Bool)

(assert (=> (and b!3837922 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72))))) t!310056) tb!220697))

(declare-fun result!268980 () Bool)

(assert (= result!268980 result!268944))

(assert (=> b!3837825 t!310056))

(declare-fun b_and!285623 () Bool)

(declare-fun tp!1161890 () Bool)

(assert (=> b!3837922 (= tp!1161890 (and (=> t!310052 result!268976) (=> t!310054 result!268978) (=> t!310056 result!268980) b_and!285623))))

(declare-fun e!2370380 () Bool)

(declare-fun e!2370377 () Bool)

(declare-fun tp!1161893 () Bool)

(declare-fun b!3837920 () Bool)

(assert (=> b!3837920 (= e!2370377 (and (inv!21 (value!198618 (h!45957 (t!309998 suffixTokens!72)))) e!2370380 tp!1161893))))

(declare-fun e!2370376 () Bool)

(declare-fun tp!1161889 () Bool)

(declare-fun b!3837919 () Bool)

(assert (=> b!3837919 (= e!2370376 (and (inv!54691 (h!45957 (t!309998 suffixTokens!72))) e!2370377 tp!1161889))))

(declare-fun e!2370378 () Bool)

(assert (=> b!3837922 (= e!2370378 (and tp!1161892 tp!1161890))))

(assert (=> b!3837575 (= tp!1161771 e!2370376)))

(declare-fun b!3837921 () Bool)

(declare-fun tp!1161891 () Bool)

(assert (=> b!3837921 (= e!2370380 (and tp!1161891 (inv!54687 (tag!7105 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (inv!54690 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) e!2370378))))

(assert (= b!3837921 b!3837922))

(assert (= b!3837920 b!3837921))

(assert (= b!3837919 b!3837920))

(assert (= (and b!3837575 (is-Cons!40537 (t!309998 suffixTokens!72))) b!3837919))

(declare-fun m!4392305 () Bool)

(assert (=> b!3837920 m!4392305))

(declare-fun m!4392307 () Bool)

(assert (=> b!3837919 m!4392307))

(declare-fun m!4392309 () Bool)

(assert (=> b!3837921 m!4392309))

(declare-fun m!4392311 () Bool)

(assert (=> b!3837921 m!4392311))

(declare-fun e!2370381 () Bool)

(assert (=> b!3837586 (= tp!1161762 e!2370381)))

(declare-fun b!3837926 () Bool)

(declare-fun tp!1161898 () Bool)

(declare-fun tp!1161894 () Bool)

(assert (=> b!3837926 (= e!2370381 (and tp!1161898 tp!1161894))))

(declare-fun b!3837925 () Bool)

(declare-fun tp!1161895 () Bool)

(assert (=> b!3837925 (= e!2370381 tp!1161895)))

(declare-fun b!3837924 () Bool)

(declare-fun tp!1161897 () Bool)

(declare-fun tp!1161896 () Bool)

(assert (=> b!3837924 (= e!2370381 (and tp!1161897 tp!1161896))))

(declare-fun b!3837923 () Bool)

(assert (=> b!3837923 (= e!2370381 tp_is_empty!19271)))

(assert (= (and b!3837586 (is-ElementMatch!11150 (regex!6245 (rule!9081 (h!45957 suffixTokens!72))))) b!3837923))

(assert (= (and b!3837586 (is-Concat!17626 (regex!6245 (rule!9081 (h!45957 suffixTokens!72))))) b!3837924))

(assert (= (and b!3837586 (is-Star!11150 (regex!6245 (rule!9081 (h!45957 suffixTokens!72))))) b!3837925))

(assert (= (and b!3837586 (is-Union!11150 (regex!6245 (rule!9081 (h!45957 suffixTokens!72))))) b!3837926))

(declare-fun b_lambda!112221 () Bool)

(assert (= b_lambda!112211 (or (and b!3837886 b_free!102083 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))))) (and b!3837574 b_free!102059 (= (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))))) (and b!3837580 b_free!102063) (and b!3837898 b_free!102087 (= (toChars!8520 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))))) (and b!3837577 b_free!102067 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))))) (and b!3837922 b_free!102091 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))))) b_lambda!112221)))

(declare-fun b_lambda!112223 () Bool)

(assert (= b_lambda!112219 (or (and b!3837922 b_free!102091 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 suffixTokens!72))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))))) (and b!3837577 b_free!102067) (and b!3837580 b_free!102063 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 prefixTokens!80)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))))) (and b!3837898 b_free!102087 (= (toChars!8520 (transformation!6245 (h!45956 (t!309997 rules!2768)))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))))) (and b!3837574 b_free!102059 (= (toChars!8520 (transformation!6245 (h!45956 rules!2768))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))))) (and b!3837886 b_free!102083 (= (toChars!8520 (transformation!6245 (rule!9081 (h!45957 (t!309998 prefixTokens!80))))) (toChars!8520 (transformation!6245 (rule!9081 (h!45957 suffixTokens!72)))))) b_lambda!112223)))

(push 1)

(assert (not b!3837827))

(assert (not b!3837734))

(assert (not b!3837914))

(assert (not d!1139226))

(assert (not b!3837738))

(assert (not b!3837697))

(assert b_and!285615)

(assert (not b!3837693))

(assert (not d!1139282))

(assert b_and!285619)

(assert (not d!1139288))

(assert (not b_lambda!112223))

(assert (not b!3837687))

(assert (not b!3837926))

(assert (not d!1139286))

(assert (not d!1139252))

(assert (not b!3837739))

(assert (not b!3837925))

(assert (not b!3837689))

(assert (not b!3837916))

(assert (not b!3837896))

(assert (not d!1139212))

(assert b_and!285621)

(assert (not b!3837818))

(assert (not b!3837920))

(assert (not d!1139254))

(assert (not b!3837917))

(assert (not b!3837846))

(assert (not b!3837840))

(assert (not b!3837688))

(assert (not b!3837842))

(assert (not b_lambda!112221))

(assert (not b!3837919))

(assert (not b!3837698))

(assert (not b!3837699))

(assert (not b_next!102789))

(assert (not b!3837669))

(assert (not d!1139218))

(assert (not b!3837858))

(assert (not d!1139244))

(assert b_and!285607)

(assert (not b_next!102787))

(assert (not b!3837769))

(assert (not b!3837782))

(assert (not d!1139236))

(assert (not b_lambda!112217))

(assert (not b_next!102761))

(assert (not b!3837912))

(assert (not b!3837913))

(assert (not b!3837745))

(assert (not d!1139276))

(assert (not d!1139222))

(assert b_and!285609)

(assert (not b!3837821))

(assert (not tb!220669))

(assert (not d!1139240))

(assert (not b!3837843))

(assert (not b!3837841))

(assert (not d!1139248))

(assert b_and!285591)

(assert (not b!3837924))

(assert (not d!1139292))

(assert (not b!3837847))

(assert (not d!1139280))

(assert (not tb!220663))

(assert (not b!3837823))

(assert (not b!3837883))

(assert (not b!3837741))

(assert (not d!1139238))

(assert (not b_next!102785))

(assert (not b!3837825))

(assert (not b!3837794))

(assert (not b!3837800))

(assert (not b!3837742))

(assert (not b_next!102767))

(assert (not b!3837863))

(assert (not b_next!102771))

(assert (not b!3837822))

(assert tp_is_empty!19271)

(assert (not d!1139234))

(assert (not b!3837807))

(assert (not b!3837740))

(assert (not b!3837675))

(assert (not b!3837784))

(assert (not b!3837871))

(assert (not b_next!102795))

(assert b_and!285589)

(assert (not b!3837737))

(assert (not b!3837859))

(assert (not b!3837826))

(assert b_and!285623)

(assert (not b!3837862))

(assert (not tb!220651))

(assert (not b!3837766))

(assert (not b!3837911))

(assert (not b!3837848))

(assert (not b_next!102793))

(assert (not b!3837885))

(assert (not b!3837899))

(assert (not b_next!102763))

(assert b_and!285613)

(assert (not b!3837670))

(assert (not b_next!102791))

(assert (not b_next!102765))

(assert (not b!3837887))

(assert (not b!3837866))

(assert (not b!3837897))

(assert (not b_lambda!112213))

(assert (not b!3837921))

(assert (not b!3837824))

(assert b_and!285593)

(assert (not b!3837884))

(assert (not b!3837918))

(assert (not b_next!102769))

(assert (not bm!281902))

(assert b_and!285617)

(assert (not b!3837767))

(assert (not tb!220645))

(assert (not d!1139290))

(assert (not b!3837872))

(assert (not d!1139266))

(assert (not d!1139264))

(assert (not b!3837783))

(assert b_and!285611)

(assert (not b!3837736))

(check-sat)

(pop 1)

(push 1)

(assert b_and!285615)

(assert b_and!285619)

(assert b_and!285621)

(assert (not b_next!102789))

(assert (not b_next!102761))

(assert b_and!285609)

(assert b_and!285591)

(assert (not b_next!102771))

(assert (not b_next!102795))

(assert (not b_next!102793))

(assert b_and!285593)

(assert b_and!285611)

(assert b_and!285607)

(assert (not b_next!102787))

(assert (not b_next!102785))

(assert (not b_next!102767))

(assert b_and!285589)

(assert b_and!285623)

(assert b_and!285613)

(assert (not b_next!102763))

(assert (not b_next!102791))

(assert (not b_next!102765))

(assert (not b_next!102769))

(assert b_and!285617)

(check-sat)

(pop 1)


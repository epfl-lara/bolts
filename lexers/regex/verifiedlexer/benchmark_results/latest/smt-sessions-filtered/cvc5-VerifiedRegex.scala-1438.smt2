; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!75208 () Bool)

(assert start!75208)

(declare-fun b!844566 () Bool)

(declare-fun b_free!25309 () Bool)

(declare-fun b_next!25373 () Bool)

(assert (=> b!844566 (= b_free!25309 (not b_next!25373))))

(declare-fun tp!265760 () Bool)

(declare-fun b_and!73409 () Bool)

(assert (=> b!844566 (= tp!265760 b_and!73409)))

(declare-fun b_free!25311 () Bool)

(declare-fun b_next!25375 () Bool)

(assert (=> b!844566 (= b_free!25311 (not b_next!25375))))

(declare-fun tp!265761 () Bool)

(declare-fun b_and!73411 () Bool)

(assert (=> b!844566 (= tp!265761 b_and!73411)))

(declare-fun b!844560 () Bool)

(declare-fun b_free!25313 () Bool)

(declare-fun b_next!25377 () Bool)

(assert (=> b!844560 (= b_free!25313 (not b_next!25377))))

(declare-fun tp!265759 () Bool)

(declare-fun b_and!73413 () Bool)

(assert (=> b!844560 (= tp!265759 b_and!73413)))

(declare-fun b_free!25315 () Bool)

(declare-fun b_next!25379 () Bool)

(assert (=> b!844560 (= b_free!25315 (not b_next!25379))))

(declare-fun tp!265756 () Bool)

(declare-fun b_and!73415 () Bool)

(assert (=> b!844560 (= tp!265756 b_and!73415)))

(declare-fun b!844569 () Bool)

(declare-fun b_free!25317 () Bool)

(declare-fun b_next!25381 () Bool)

(assert (=> b!844569 (= b_free!25317 (not b_next!25381))))

(declare-fun tp!265755 () Bool)

(declare-fun b_and!73417 () Bool)

(assert (=> b!844569 (= tp!265755 b_and!73417)))

(declare-fun b_free!25319 () Bool)

(declare-fun b_next!25383 () Bool)

(assert (=> b!844569 (= b_free!25319 (not b_next!25383))))

(declare-fun tp!265751 () Bool)

(declare-fun b_and!73419 () Bool)

(assert (=> b!844569 (= tp!265751 b_and!73419)))

(declare-fun res!386004 () Bool)

(declare-fun e!555583 () Bool)

(assert (=> start!75208 (=> (not res!386004) (not e!555583))))

(declare-datatypes ((LexerInterface!1503 0))(
  ( (LexerInterfaceExt!1500 (__x!7265 Int)) (Lexer!1501) )
))
(declare-fun thiss!20117 () LexerInterface!1503)

(assert (=> start!75208 (= res!386004 (is-Lexer!1501 thiss!20117))))

(assert (=> start!75208 e!555583))

(assert (=> start!75208 true))

(declare-fun e!555572 () Bool)

(assert (=> start!75208 e!555572))

(declare-fun e!555570 () Bool)

(assert (=> start!75208 e!555570))

(declare-datatypes ((List!9090 0))(
  ( (Nil!9074) (Cons!9074 (h!14475 (_ BitVec 16)) (t!94292 List!9090)) )
))
(declare-datatypes ((TokenValue!1767 0))(
  ( (FloatLiteralValue!3534 (text!12814 List!9090)) (TokenValueExt!1766 (__x!7266 Int)) (Broken!8835 (value!55153 List!9090)) (Object!1782) (End!1767) (Def!1767) (Underscore!1767) (Match!1767) (Else!1767) (Error!1767) (Case!1767) (If!1767) (Extends!1767) (Abstract!1767) (Class!1767) (Val!1767) (DelimiterValue!3534 (del!1827 List!9090)) (KeywordValue!1773 (value!55154 List!9090)) (CommentValue!3534 (value!55155 List!9090)) (WhitespaceValue!3534 (value!55156 List!9090)) (IndentationValue!1767 (value!55157 List!9090)) (String!10734) (Int32!1767) (Broken!8836 (value!55158 List!9090)) (Boolean!1768) (Unit!13541) (OperatorValue!1770 (op!1827 List!9090)) (IdentifierValue!3534 (value!55159 List!9090)) (IdentifierValue!3535 (value!55160 List!9090)) (WhitespaceValue!3535 (value!55161 List!9090)) (True!3534) (False!3534) (Broken!8837 (value!55162 List!9090)) (Broken!8838 (value!55163 List!9090)) (True!3535) (RightBrace!1767) (RightBracket!1767) (Colon!1767) (Null!1767) (Comma!1767) (LeftBracket!1767) (False!3535) (LeftBrace!1767) (ImaginaryLiteralValue!1767 (text!12815 List!9090)) (StringLiteralValue!5301 (value!55164 List!9090)) (EOFValue!1767 (value!55165 List!9090)) (IdentValue!1767 (value!55166 List!9090)) (DelimiterValue!3535 (value!55167 List!9090)) (DedentValue!1767 (value!55168 List!9090)) (NewLineValue!1767 (value!55169 List!9090)) (IntegerValue!5301 (value!55170 (_ BitVec 32)) (text!12816 List!9090)) (IntegerValue!5302 (value!55171 Int) (text!12817 List!9090)) (Times!1767) (Or!1767) (Equal!1767) (Minus!1767) (Broken!8839 (value!55172 List!9090)) (And!1767) (Div!1767) (LessEqual!1767) (Mod!1767) (Concat!3901) (Not!1767) (Plus!1767) (SpaceValue!1767 (value!55173 List!9090)) (IntegerValue!5303 (value!55174 Int) (text!12818 List!9090)) (StringLiteralValue!5302 (text!12819 List!9090)) (FloatLiteralValue!3535 (text!12820 List!9090)) (BytesLiteralValue!1767 (value!55175 List!9090)) (CommentValue!3535 (value!55176 List!9090)) (StringLiteralValue!5303 (value!55177 List!9090)) (ErrorTokenValue!1767 (msg!1828 List!9090)) )
))
(declare-datatypes ((C!4838 0))(
  ( (C!4839 (val!2667 Int)) )
))
(declare-datatypes ((Regex!2134 0))(
  ( (ElementMatch!2134 (c!137491 C!4838)) (Concat!3902 (regOne!4780 Regex!2134) (regTwo!4780 Regex!2134)) (EmptyExpr!2134) (Star!2134 (reg!2463 Regex!2134)) (EmptyLang!2134) (Union!2134 (regOne!4781 Regex!2134) (regTwo!4781 Regex!2134)) )
))
(declare-datatypes ((String!10735 0))(
  ( (String!10736 (value!55178 String)) )
))
(declare-datatypes ((List!9091 0))(
  ( (Nil!9075) (Cons!9075 (h!14476 C!4838) (t!94293 List!9091)) )
))
(declare-datatypes ((IArray!6021 0))(
  ( (IArray!6022 (innerList!3068 List!9091)) )
))
(declare-datatypes ((Conc!3008 0))(
  ( (Node!3008 (left!6724 Conc!3008) (right!7054 Conc!3008) (csize!6246 Int) (cheight!3219 Int)) (Leaf!4447 (xs!5697 IArray!6021) (csize!6247 Int)) (Empty!3008) )
))
(declare-datatypes ((BalanceConc!6030 0))(
  ( (BalanceConc!6031 (c!137492 Conc!3008)) )
))
(declare-datatypes ((TokenValueInjection!3234 0))(
  ( (TokenValueInjection!3235 (toValue!2726 Int) (toChars!2585 Int)) )
))
(declare-datatypes ((Rule!3202 0))(
  ( (Rule!3203 (regex!1701 Regex!2134) (tag!1963 String!10735) (isSeparator!1701 Bool) (transformation!1701 TokenValueInjection!3234)) )
))
(declare-datatypes ((Token!3068 0))(
  ( (Token!3069 (value!55179 TokenValue!1767) (rule!3124 Rule!3202) (size!7574 Int) (originalCharacters!2257 List!9091)) )
))
(declare-fun separatorToken!297 () Token!3068)

(declare-fun e!555565 () Bool)

(declare-fun inv!11554 (Token!3068) Bool)

(assert (=> start!75208 (and (inv!11554 separatorToken!297) e!555565)))

(declare-fun b!844546 () Bool)

(declare-fun res!385994 () Bool)

(assert (=> b!844546 (=> (not res!385994) (not e!555583))))

(assert (=> b!844546 (= res!385994 (isSeparator!1701 (rule!3124 separatorToken!297)))))

(declare-fun e!555575 () Bool)

(declare-fun b!844547 () Bool)

(declare-datatypes ((List!9092 0))(
  ( (Nil!9076) (Cons!9076 (h!14477 Token!3068) (t!94294 List!9092)) )
))
(declare-fun l!5107 () List!9092)

(declare-fun tp!265757 () Bool)

(assert (=> b!844547 (= e!555570 (and (inv!11554 (h!14477 l!5107)) e!555575 tp!265757))))

(declare-fun b!844548 () Bool)

(declare-fun tp!265754 () Bool)

(declare-fun e!555568 () Bool)

(declare-fun inv!21 (TokenValue!1767) Bool)

(assert (=> b!844548 (= e!555575 (and (inv!21 (value!55179 (h!14477 l!5107))) e!555568 tp!265754))))

(declare-fun b!844549 () Bool)

(declare-fun e!555574 () Bool)

(declare-fun lt!319911 () List!9092)

(assert (=> b!844549 (= e!555574 (not (= (t!94294 (t!94294 lt!319911)) Nil!9076)))))

(declare-fun b!844550 () Bool)

(declare-fun e!555580 () Bool)

(declare-fun e!555579 () Bool)

(assert (=> b!844550 (= e!555580 e!555579)))

(declare-fun res!386002 () Bool)

(assert (=> b!844550 (=> res!386002 e!555579)))

(declare-fun lt!319910 () List!9092)

(assert (=> b!844550 (= res!386002 (not (= (t!94294 (t!94294 lt!319911)) lt!319910)))))

(declare-fun lt!319907 () List!9092)

(declare-fun withSeparatorTokenList!33 (LexerInterface!1503 List!9092 Token!3068) List!9092)

(assert (=> b!844550 (= lt!319910 (withSeparatorTokenList!33 thiss!20117 lt!319907 separatorToken!297))))

(declare-fun tail!1019 (List!9092) List!9092)

(assert (=> b!844550 (= lt!319907 (tail!1019 l!5107))))

(declare-fun b!844551 () Bool)

(declare-fun res!386000 () Bool)

(assert (=> b!844551 (=> (not res!386000) (not e!555583))))

(declare-datatypes ((List!9093 0))(
  ( (Nil!9077) (Cons!9077 (h!14478 Rule!3202) (t!94295 List!9093)) )
))
(declare-fun rules!2621 () List!9093)

(declare-fun isEmpty!5350 (List!9093) Bool)

(assert (=> b!844551 (= res!386000 (not (isEmpty!5350 rules!2621)))))

(declare-fun b!844552 () Bool)

(declare-fun res!385998 () Bool)

(assert (=> b!844552 (=> (not res!385998) (not e!555583))))

(declare-fun sepAndNonSepRulesDisjointChars!501 (List!9093 List!9093) Bool)

(assert (=> b!844552 (= res!385998 (sepAndNonSepRulesDisjointChars!501 rules!2621 rules!2621))))

(declare-fun tp!265758 () Bool)

(declare-fun e!555571 () Bool)

(declare-fun b!844553 () Bool)

(declare-fun e!555573 () Bool)

(declare-fun inv!11551 (String!10735) Bool)

(declare-fun inv!11555 (TokenValueInjection!3234) Bool)

(assert (=> b!844553 (= e!555573 (and tp!265758 (inv!11551 (tag!1963 (rule!3124 separatorToken!297))) (inv!11555 (transformation!1701 (rule!3124 separatorToken!297))) e!555571))))

(declare-fun e!555576 () Bool)

(declare-fun e!555567 () Bool)

(declare-fun tp!265750 () Bool)

(declare-fun b!844554 () Bool)

(assert (=> b!844554 (= e!555576 (and tp!265750 (inv!11551 (tag!1963 (h!14478 rules!2621))) (inv!11555 (transformation!1701 (h!14478 rules!2621))) e!555567))))

(declare-fun e!555582 () Bool)

(declare-fun b!844555 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!25 (LexerInterface!1503 List!9092 List!9093) Bool)

(assert (=> b!844555 (= e!555582 (tokensListTwoByTwoPredicateSeparableList!25 thiss!20117 lt!319910 rules!2621))))

(declare-fun e!555578 () Bool)

(declare-fun tp!265753 () Bool)

(declare-fun b!844556 () Bool)

(assert (=> b!844556 (= e!555568 (and tp!265753 (inv!11551 (tag!1963 (rule!3124 (h!14477 l!5107)))) (inv!11555 (transformation!1701 (rule!3124 (h!14477 l!5107)))) e!555578))))

(declare-fun b!844557 () Bool)

(declare-fun tp!265749 () Bool)

(assert (=> b!844557 (= e!555565 (and (inv!21 (value!55179 separatorToken!297)) e!555573 tp!265749))))

(declare-fun b!844558 () Bool)

(assert (=> b!844558 (= e!555583 (not e!555580))))

(declare-fun res!386006 () Bool)

(assert (=> b!844558 (=> res!386006 e!555580)))

(assert (=> b!844558 (= res!386006 (or (not (is-Cons!9076 lt!319911)) (not (is-Cons!9076 (t!94294 lt!319911)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!391 (LexerInterface!1503 List!9093 List!9092) Bool)

(assert (=> b!844558 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 lt!319911)))

(assert (=> b!844558 (= lt!319911 (withSeparatorTokenList!33 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13542 0))(
  ( (Unit!13543) )
))
(declare-fun lt!319912 () Unit!13542)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!33 (LexerInterface!1503 List!9093 List!9092 Token!3068) Unit!13542)

(assert (=> b!844558 (= lt!319912 (withSeparatorTokenListPreservesRulesProduceTokens!33 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!844559 () Bool)

(declare-fun res!386005 () Bool)

(assert (=> b!844559 (=> res!386005 e!555579)))

(assert (=> b!844559 (= res!386005 (not (= (h!14477 (t!94294 lt!319911)) separatorToken!297)))))

(assert (=> b!844560 (= e!555571 (and tp!265759 tp!265756))))

(declare-fun b!844561 () Bool)

(declare-fun res!386003 () Bool)

(assert (=> b!844561 (=> (not res!386003) (not e!555583))))

(declare-fun lambda!25151 () Int)

(declare-fun forall!2128 (List!9092 Int) Bool)

(assert (=> b!844561 (= res!386003 (forall!2128 l!5107 lambda!25151))))

(declare-fun b!844562 () Bool)

(declare-fun res!385999 () Bool)

(assert (=> b!844562 (=> (not res!385999) (not e!555583))))

(declare-fun rulesInvariant!1379 (LexerInterface!1503 List!9093) Bool)

(assert (=> b!844562 (= res!385999 (rulesInvariant!1379 thiss!20117 rules!2621))))

(declare-fun b!844563 () Bool)

(declare-fun tp!265752 () Bool)

(assert (=> b!844563 (= e!555572 (and e!555576 tp!265752))))

(declare-fun b!844564 () Bool)

(declare-fun res!385995 () Bool)

(assert (=> b!844564 (=> res!385995 e!555579)))

(declare-fun head!1461 (List!9092) Token!3068)

(assert (=> b!844564 (= res!385995 (not (= (head!1461 l!5107) (h!14477 lt!319911))))))

(declare-fun b!844565 () Bool)

(assert (=> b!844565 (= e!555579 e!555574)))

(declare-fun res!385996 () Bool)

(assert (=> b!844565 (=> res!385996 e!555574)))

(declare-fun isEmpty!5351 (List!9092) Bool)

(assert (=> b!844565 (= res!385996 (isEmpty!5351 (t!94294 (t!94294 lt!319911))))))

(assert (=> b!844565 e!555582))

(declare-fun res!386001 () Bool)

(assert (=> b!844565 (=> (not res!386001) (not e!555582))))

(assert (=> b!844565 (= res!386001 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 lt!319910))))

(declare-fun lt!319908 () Unit!13542)

(assert (=> b!844565 (= lt!319908 (withSeparatorTokenListPreservesRulesProduceTokens!33 thiss!20117 rules!2621 lt!319907 separatorToken!297))))

(declare-fun lt!319906 () Unit!13542)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!9 (LexerInterface!1503 List!9093 List!9092 Token!3068) Unit!13542)

(assert (=> b!844565 (= lt!319906 (printWithSeparatorTokenImpliesSeparableTokensList!9 thiss!20117 rules!2621 lt!319907 separatorToken!297))))

(declare-fun separableTokensPredicate!43 (LexerInterface!1503 Token!3068 Token!3068 List!9093) Bool)

(assert (=> b!844565 (separableTokensPredicate!43 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621)))

(declare-fun lt!319909 () Unit!13542)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!25 (LexerInterface!1503 Token!3068 Token!3068 List!9093) Unit!13542)

(assert (=> b!844565 (= lt!319909 (lemmaTokensOfDifferentKindsAreSeparable!25 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621))))

(assert (=> b!844566 (= e!555578 (and tp!265760 tp!265761))))

(declare-fun b!844567 () Bool)

(declare-fun res!385993 () Bool)

(assert (=> b!844567 (=> (not res!385993) (not e!555583))))

(declare-fun rulesProduceIndividualToken!567 (LexerInterface!1503 List!9093 Token!3068) Bool)

(assert (=> b!844567 (= res!385993 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!844568 () Bool)

(declare-fun res!385997 () Bool)

(assert (=> b!844568 (=> (not res!385997) (not e!555583))))

(assert (=> b!844568 (= res!385997 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 l!5107))))

(assert (=> b!844569 (= e!555567 (and tp!265755 tp!265751))))

(assert (= (and start!75208 res!386004) b!844551))

(assert (= (and b!844551 res!386000) b!844562))

(assert (= (and b!844562 res!385999) b!844568))

(assert (= (and b!844568 res!385997) b!844567))

(assert (= (and b!844567 res!385993) b!844546))

(assert (= (and b!844546 res!385994) b!844561))

(assert (= (and b!844561 res!386003) b!844552))

(assert (= (and b!844552 res!385998) b!844558))

(assert (= (and b!844558 (not res!386006)) b!844550))

(assert (= (and b!844550 (not res!386002)) b!844564))

(assert (= (and b!844564 (not res!385995)) b!844559))

(assert (= (and b!844559 (not res!386005)) b!844565))

(assert (= (and b!844565 res!386001) b!844555))

(assert (= (and b!844565 (not res!385996)) b!844549))

(assert (= b!844554 b!844569))

(assert (= b!844563 b!844554))

(assert (= (and start!75208 (is-Cons!9077 rules!2621)) b!844563))

(assert (= b!844556 b!844566))

(assert (= b!844548 b!844556))

(assert (= b!844547 b!844548))

(assert (= (and start!75208 (is-Cons!9076 l!5107)) b!844547))

(assert (= b!844553 b!844560))

(assert (= b!844557 b!844553))

(assert (= start!75208 b!844557))

(declare-fun m!1079561 () Bool)

(assert (=> b!844555 m!1079561))

(declare-fun m!1079563 () Bool)

(assert (=> b!844556 m!1079563))

(declare-fun m!1079565 () Bool)

(assert (=> b!844556 m!1079565))

(declare-fun m!1079567 () Bool)

(assert (=> b!844548 m!1079567))

(declare-fun m!1079569 () Bool)

(assert (=> b!844547 m!1079569))

(declare-fun m!1079571 () Bool)

(assert (=> b!844558 m!1079571))

(declare-fun m!1079573 () Bool)

(assert (=> b!844558 m!1079573))

(declare-fun m!1079575 () Bool)

(assert (=> b!844558 m!1079575))

(declare-fun m!1079577 () Bool)

(assert (=> b!844568 m!1079577))

(declare-fun m!1079579 () Bool)

(assert (=> b!844561 m!1079579))

(declare-fun m!1079581 () Bool)

(assert (=> b!844554 m!1079581))

(declare-fun m!1079583 () Bool)

(assert (=> b!844554 m!1079583))

(declare-fun m!1079585 () Bool)

(assert (=> b!844550 m!1079585))

(declare-fun m!1079587 () Bool)

(assert (=> b!844550 m!1079587))

(declare-fun m!1079589 () Bool)

(assert (=> b!844551 m!1079589))

(declare-fun m!1079591 () Bool)

(assert (=> start!75208 m!1079591))

(declare-fun m!1079593 () Bool)

(assert (=> b!844567 m!1079593))

(declare-fun m!1079595 () Bool)

(assert (=> b!844552 m!1079595))

(declare-fun m!1079597 () Bool)

(assert (=> b!844565 m!1079597))

(declare-fun m!1079599 () Bool)

(assert (=> b!844565 m!1079599))

(declare-fun m!1079601 () Bool)

(assert (=> b!844565 m!1079601))

(declare-fun m!1079603 () Bool)

(assert (=> b!844565 m!1079603))

(declare-fun m!1079605 () Bool)

(assert (=> b!844565 m!1079605))

(declare-fun m!1079607 () Bool)

(assert (=> b!844565 m!1079607))

(declare-fun m!1079609 () Bool)

(assert (=> b!844553 m!1079609))

(declare-fun m!1079611 () Bool)

(assert (=> b!844553 m!1079611))

(declare-fun m!1079613 () Bool)

(assert (=> b!844564 m!1079613))

(declare-fun m!1079615 () Bool)

(assert (=> b!844557 m!1079615))

(declare-fun m!1079617 () Bool)

(assert (=> b!844562 m!1079617))

(push 1)

(assert (not b_next!25375))

(assert (not b!844547))

(assert (not b!844551))

(assert (not b!844552))

(assert b_and!73415)

(assert b_and!73413)

(assert (not b!844561))

(assert (not b!844567))

(assert (not b!844556))

(assert (not b!844555))

(assert (not b!844558))

(assert (not b_next!25381))

(assert (not b!844550))

(assert b_and!73411)

(assert (not b!844568))

(assert (not b!844565))

(assert b_and!73419)

(assert (not b_next!25379))

(assert (not b!844554))

(assert (not b!844564))

(assert (not b_next!25377))

(assert (not b_next!25373))

(assert (not start!75208))

(assert (not b!844557))

(assert (not b!844563))

(assert (not b!844548))

(assert (not b!844553))

(assert (not b_next!25383))

(assert b_and!73417)

(assert (not b!844562))

(assert b_and!73409)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25375))

(assert (not b_next!25381))

(assert b_and!73411)

(assert b_and!73419)

(assert b_and!73415)

(assert b_and!73413)

(assert (not b_next!25373))

(assert b_and!73409)

(assert (not b_next!25379))

(assert (not b_next!25377))

(assert (not b_next!25383))

(assert b_and!73417)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!263079 () Bool)

(declare-fun res!386056 () Bool)

(declare-fun e!555646 () Bool)

(assert (=> d!263079 (=> (not res!386056) (not e!555646))))

(declare-fun isEmpty!5354 (List!9091) Bool)

(assert (=> d!263079 (= res!386056 (not (isEmpty!5354 (originalCharacters!2257 separatorToken!297))))))

(assert (=> d!263079 (= (inv!11554 separatorToken!297) e!555646)))

(declare-fun b!844646 () Bool)

(declare-fun res!386057 () Bool)

(assert (=> b!844646 (=> (not res!386057) (not e!555646))))

(declare-fun list!3567 (BalanceConc!6030) List!9091)

(declare-fun dynLambda!4200 (Int TokenValue!1767) BalanceConc!6030)

(assert (=> b!844646 (= res!386057 (= (originalCharacters!2257 separatorToken!297) (list!3567 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (value!55179 separatorToken!297)))))))

(declare-fun b!844647 () Bool)

(declare-fun size!7576 (List!9091) Int)

(assert (=> b!844647 (= e!555646 (= (size!7574 separatorToken!297) (size!7576 (originalCharacters!2257 separatorToken!297))))))

(assert (= (and d!263079 res!386056) b!844646))

(assert (= (and b!844646 res!386057) b!844647))

(declare-fun b_lambda!27919 () Bool)

(assert (=> (not b_lambda!27919) (not b!844646)))

(declare-fun t!94301 () Bool)

(declare-fun tb!58649 () Bool)

(assert (=> (and b!844566 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297)))) t!94301) tb!58649))

(declare-fun b!844652 () Bool)

(declare-fun e!555649 () Bool)

(declare-fun tp!265803 () Bool)

(declare-fun inv!11558 (Conc!3008) Bool)

(assert (=> b!844652 (= e!555649 (and (inv!11558 (c!137492 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (value!55179 separatorToken!297)))) tp!265803))))

(declare-fun result!67978 () Bool)

(declare-fun inv!11559 (BalanceConc!6030) Bool)

(assert (=> tb!58649 (= result!67978 (and (inv!11559 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (value!55179 separatorToken!297))) e!555649))))

(assert (= tb!58649 b!844652))

(declare-fun m!1079677 () Bool)

(assert (=> b!844652 m!1079677))

(declare-fun m!1079679 () Bool)

(assert (=> tb!58649 m!1079679))

(assert (=> b!844646 t!94301))

(declare-fun b_and!73433 () Bool)

(assert (= b_and!73411 (and (=> t!94301 result!67978) b_and!73433)))

(declare-fun t!94303 () Bool)

(declare-fun tb!58651 () Bool)

(assert (=> (and b!844560 (= (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297)))) t!94303) tb!58651))

(declare-fun result!67982 () Bool)

(assert (= result!67982 result!67978))

(assert (=> b!844646 t!94303))

(declare-fun b_and!73435 () Bool)

(assert (= b_and!73415 (and (=> t!94303 result!67982) b_and!73435)))

(declare-fun t!94305 () Bool)

(declare-fun tb!58653 () Bool)

(assert (=> (and b!844569 (= (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297)))) t!94305) tb!58653))

(declare-fun result!67984 () Bool)

(assert (= result!67984 result!67978))

(assert (=> b!844646 t!94305))

(declare-fun b_and!73437 () Bool)

(assert (= b_and!73419 (and (=> t!94305 result!67984) b_and!73437)))

(declare-fun m!1079681 () Bool)

(assert (=> d!263079 m!1079681))

(declare-fun m!1079683 () Bool)

(assert (=> b!844646 m!1079683))

(assert (=> b!844646 m!1079683))

(declare-fun m!1079685 () Bool)

(assert (=> b!844646 m!1079685))

(declare-fun m!1079687 () Bool)

(assert (=> b!844647 m!1079687))

(assert (=> start!75208 d!263079))

(declare-fun d!263081 () Bool)

(assert (=> d!263081 (= (isEmpty!5350 rules!2621) (is-Nil!9077 rules!2621))))

(assert (=> b!844551 d!263081))

(declare-fun b!844673 () Bool)

(declare-fun e!555664 () List!9091)

(declare-fun lt!319952 () List!9092)

(declare-fun ++!2349 (List!9091 List!9091) List!9091)

(declare-fun charsOf!976 (Token!3068) BalanceConc!6030)

(declare-fun printList!461 (LexerInterface!1503 List!9092) List!9091)

(assert (=> b!844673 (= e!555664 (++!2349 (list!3567 (charsOf!976 (h!14477 lt!319952))) (printList!461 thiss!20117 (t!94294 lt!319952))))))

(declare-fun b!844674 () Bool)

(declare-fun e!555662 () List!9092)

(assert (=> b!844674 (= e!555662 Nil!9076)))

(declare-fun b!844675 () Bool)

(declare-fun res!386071 () Bool)

(declare-fun e!555663 () Bool)

(assert (=> b!844675 (=> (not res!386071) (not e!555663))))

(declare-fun e!555667 () Bool)

(assert (=> b!844675 (= res!386071 e!555667)))

(declare-fun res!386073 () Bool)

(assert (=> b!844675 (=> res!386073 e!555667)))

(assert (=> b!844675 (= res!386073 (not (is-Cons!9076 lt!319907)))))

(declare-fun e!555665 () Bool)

(declare-fun b!844677 () Bool)

(declare-fun $colon$colon!74 (List!9092 Token!3068) List!9092)

(assert (=> b!844677 (= e!555665 (= (printList!461 thiss!20117 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297) separatorToken!297)) e!555664))))

(declare-fun c!137503 () Bool)

(assert (=> b!844677 (= c!137503 (is-Cons!9076 lt!319952))))

(assert (=> b!844677 (= lt!319952 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297) separatorToken!297))))

(declare-fun b!844678 () Bool)

(assert (=> b!844678 (= e!555663 e!555665)))

(declare-fun res!386070 () Bool)

(assert (=> b!844678 (=> res!386070 e!555665)))

(assert (=> b!844678 (= res!386070 (not (is-Cons!9076 lt!319907)))))

(declare-fun b!844679 () Bool)

(assert (=> b!844679 (= e!555664 Nil!9075)))

(declare-fun b!844680 () Bool)

(declare-fun e!555666 () List!9091)

(declare-fun lt!319950 () List!9092)

(assert (=> b!844680 (= e!555666 (++!2349 (list!3567 (charsOf!976 (h!14477 lt!319950))) (printList!461 thiss!20117 (t!94294 lt!319950))))))

(declare-fun b!844681 () Bool)

(assert (=> b!844681 (= e!555666 Nil!9075)))

(declare-fun b!844682 () Bool)

(assert (=> b!844682 (= e!555662 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297) separatorToken!297) (h!14477 lt!319907)))))

(declare-fun lt!319954 () List!9091)

(assert (=> b!844682 (= lt!319954 (list!3567 (charsOf!976 (h!14477 lt!319907))))))

(declare-fun lt!319955 () List!9091)

(assert (=> b!844682 (= lt!319955 (list!3567 (charsOf!976 separatorToken!297)))))

(declare-fun lt!319953 () List!9091)

(assert (=> b!844682 (= lt!319953 (printList!461 thiss!20117 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297)))))

(declare-fun lt!319951 () Unit!13542)

(declare-fun lemmaConcatAssociativity!736 (List!9091 List!9091 List!9091) Unit!13542)

(assert (=> b!844682 (= lt!319951 (lemmaConcatAssociativity!736 lt!319954 lt!319955 lt!319953))))

(assert (=> b!844682 (= (++!2349 (++!2349 lt!319954 lt!319955) lt!319953) (++!2349 lt!319954 (++!2349 lt!319955 lt!319953)))))

(declare-fun lt!319957 () Unit!13542)

(assert (=> b!844682 (= lt!319957 lt!319951)))

(declare-fun b!844676 () Bool)

(assert (=> b!844676 (= e!555667 (= (printList!461 thiss!20117 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297) separatorToken!297) (h!14477 lt!319907))) e!555666))))

(declare-fun c!137502 () Bool)

(assert (=> b!844676 (= c!137502 (is-Cons!9076 lt!319950))))

(assert (=> b!844676 (= lt!319950 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 lt!319907) separatorToken!297) separatorToken!297) (h!14477 lt!319907)))))

(declare-fun lt!319956 () List!9092)

(declare-fun d!263083 () Bool)

(declare-fun printWithSeparatorTokenList!19 (LexerInterface!1503 List!9092 Token!3068) List!9091)

(assert (=> d!263083 (= (printList!461 thiss!20117 lt!319956) (printWithSeparatorTokenList!19 thiss!20117 lt!319907 separatorToken!297))))

(assert (=> d!263083 (= lt!319956 e!555662)))

(declare-fun c!137501 () Bool)

(assert (=> d!263083 (= c!137501 (is-Cons!9076 lt!319907))))

(assert (=> d!263083 e!555663))

(declare-fun res!386072 () Bool)

(assert (=> d!263083 (=> (not res!386072) (not e!555663))))

(assert (=> d!263083 (= res!386072 (isSeparator!1701 (rule!3124 separatorToken!297)))))

(assert (=> d!263083 (= (withSeparatorTokenList!33 thiss!20117 lt!319907 separatorToken!297) lt!319956)))

(assert (= (and d!263083 res!386072) b!844675))

(assert (= (and b!844675 (not res!386073)) b!844676))

(assert (= (and b!844676 c!137502) b!844680))

(assert (= (and b!844676 (not c!137502)) b!844681))

(assert (= (and b!844675 res!386071) b!844678))

(assert (= (and b!844678 (not res!386070)) b!844677))

(assert (= (and b!844677 c!137503) b!844673))

(assert (= (and b!844677 (not c!137503)) b!844679))

(assert (= (and d!263083 c!137501) b!844682))

(assert (= (and d!263083 (not c!137501)) b!844674))

(declare-fun m!1079689 () Bool)

(assert (=> b!844677 m!1079689))

(assert (=> b!844677 m!1079689))

(declare-fun m!1079691 () Bool)

(assert (=> b!844677 m!1079691))

(assert (=> b!844677 m!1079691))

(declare-fun m!1079693 () Bool)

(assert (=> b!844677 m!1079693))

(assert (=> b!844682 m!1079689))

(declare-fun m!1079695 () Bool)

(assert (=> b!844682 m!1079695))

(declare-fun m!1079697 () Bool)

(assert (=> b!844682 m!1079697))

(declare-fun m!1079699 () Bool)

(assert (=> b!844682 m!1079699))

(assert (=> b!844682 m!1079689))

(assert (=> b!844682 m!1079691))

(declare-fun m!1079701 () Bool)

(assert (=> b!844682 m!1079701))

(assert (=> b!844682 m!1079691))

(declare-fun m!1079703 () Bool)

(assert (=> b!844682 m!1079703))

(assert (=> b!844682 m!1079695))

(declare-fun m!1079705 () Bool)

(assert (=> b!844682 m!1079705))

(assert (=> b!844682 m!1079689))

(declare-fun m!1079707 () Bool)

(assert (=> b!844682 m!1079707))

(declare-fun m!1079709 () Bool)

(assert (=> b!844682 m!1079709))

(assert (=> b!844682 m!1079699))

(declare-fun m!1079711 () Bool)

(assert (=> b!844682 m!1079711))

(assert (=> b!844682 m!1079709))

(declare-fun m!1079713 () Bool)

(assert (=> b!844682 m!1079713))

(assert (=> b!844682 m!1079701))

(declare-fun m!1079715 () Bool)

(assert (=> b!844682 m!1079715))

(assert (=> b!844676 m!1079689))

(assert (=> b!844676 m!1079689))

(assert (=> b!844676 m!1079691))

(assert (=> b!844676 m!1079691))

(assert (=> b!844676 m!1079703))

(assert (=> b!844676 m!1079703))

(declare-fun m!1079717 () Bool)

(assert (=> b!844676 m!1079717))

(declare-fun m!1079719 () Bool)

(assert (=> d!263083 m!1079719))

(declare-fun m!1079721 () Bool)

(assert (=> d!263083 m!1079721))

(declare-fun m!1079723 () Bool)

(assert (=> b!844673 m!1079723))

(assert (=> b!844673 m!1079723))

(declare-fun m!1079725 () Bool)

(assert (=> b!844673 m!1079725))

(declare-fun m!1079727 () Bool)

(assert (=> b!844673 m!1079727))

(assert (=> b!844673 m!1079725))

(assert (=> b!844673 m!1079727))

(declare-fun m!1079729 () Bool)

(assert (=> b!844673 m!1079729))

(declare-fun m!1079731 () Bool)

(assert (=> b!844680 m!1079731))

(assert (=> b!844680 m!1079731))

(declare-fun m!1079733 () Bool)

(assert (=> b!844680 m!1079733))

(declare-fun m!1079735 () Bool)

(assert (=> b!844680 m!1079735))

(assert (=> b!844680 m!1079733))

(assert (=> b!844680 m!1079735))

(declare-fun m!1079737 () Bool)

(assert (=> b!844680 m!1079737))

(assert (=> b!844550 d!263083))

(declare-fun d!263085 () Bool)

(assert (=> d!263085 (= (tail!1019 l!5107) (t!94294 l!5107))))

(assert (=> b!844550 d!263085))

(declare-fun d!263087 () Bool)

(declare-fun res!386078 () Bool)

(declare-fun e!555672 () Bool)

(assert (=> d!263087 (=> res!386078 e!555672)))

(assert (=> d!263087 (= res!386078 (is-Nil!9076 l!5107))))

(assert (=> d!263087 (= (forall!2128 l!5107 lambda!25151) e!555672)))

(declare-fun b!844687 () Bool)

(declare-fun e!555673 () Bool)

(assert (=> b!844687 (= e!555672 e!555673)))

(declare-fun res!386079 () Bool)

(assert (=> b!844687 (=> (not res!386079) (not e!555673))))

(declare-fun dynLambda!4201 (Int Token!3068) Bool)

(assert (=> b!844687 (= res!386079 (dynLambda!4201 lambda!25151 (h!14477 l!5107)))))

(declare-fun b!844688 () Bool)

(assert (=> b!844688 (= e!555673 (forall!2128 (t!94294 l!5107) lambda!25151))))

(assert (= (and d!263087 (not res!386078)) b!844687))

(assert (= (and b!844687 res!386079) b!844688))

(declare-fun b_lambda!27921 () Bool)

(assert (=> (not b_lambda!27921) (not b!844687)))

(declare-fun m!1079739 () Bool)

(assert (=> b!844687 m!1079739))

(declare-fun m!1079741 () Bool)

(assert (=> b!844688 m!1079741))

(assert (=> b!844561 d!263087))

(declare-fun d!263089 () Bool)

(declare-fun res!386084 () Bool)

(declare-fun e!555678 () Bool)

(assert (=> d!263089 (=> res!386084 e!555678)))

(assert (=> d!263089 (= res!386084 (not (is-Cons!9077 rules!2621)))))

(assert (=> d!263089 (= (sepAndNonSepRulesDisjointChars!501 rules!2621 rules!2621) e!555678)))

(declare-fun b!844693 () Bool)

(declare-fun e!555679 () Bool)

(assert (=> b!844693 (= e!555678 e!555679)))

(declare-fun res!386085 () Bool)

(assert (=> b!844693 (=> (not res!386085) (not e!555679))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!224 (Rule!3202 List!9093) Bool)

(assert (=> b!844693 (= res!386085 (ruleDisjointCharsFromAllFromOtherType!224 (h!14478 rules!2621) rules!2621))))

(declare-fun b!844694 () Bool)

(assert (=> b!844694 (= e!555679 (sepAndNonSepRulesDisjointChars!501 rules!2621 (t!94295 rules!2621)))))

(assert (= (and d!263089 (not res!386084)) b!844693))

(assert (= (and b!844693 res!386085) b!844694))

(declare-fun m!1079743 () Bool)

(assert (=> b!844693 m!1079743))

(declare-fun m!1079745 () Bool)

(assert (=> b!844694 m!1079745))

(assert (=> b!844552 d!263089))

(declare-fun d!263091 () Bool)

(declare-fun res!386088 () Bool)

(declare-fun e!555682 () Bool)

(assert (=> d!263091 (=> (not res!386088) (not e!555682))))

(declare-fun rulesValid!588 (LexerInterface!1503 List!9093) Bool)

(assert (=> d!263091 (= res!386088 (rulesValid!588 thiss!20117 rules!2621))))

(assert (=> d!263091 (= (rulesInvariant!1379 thiss!20117 rules!2621) e!555682)))

(declare-fun b!844697 () Bool)

(declare-datatypes ((List!9098 0))(
  ( (Nil!9082) (Cons!9082 (h!14483 String!10735) (t!94331 List!9098)) )
))
(declare-fun noDuplicateTag!588 (LexerInterface!1503 List!9093 List!9098) Bool)

(assert (=> b!844697 (= e!555682 (noDuplicateTag!588 thiss!20117 rules!2621 Nil!9082))))

(assert (= (and d!263091 res!386088) b!844697))

(declare-fun m!1079747 () Bool)

(assert (=> d!263091 m!1079747))

(declare-fun m!1079749 () Bool)

(assert (=> b!844697 m!1079749))

(assert (=> b!844562 d!263091))

(declare-fun d!263093 () Bool)

(assert (=> d!263093 (= (head!1461 l!5107) (h!14477 l!5107))))

(assert (=> b!844564 d!263093))

(declare-fun d!263095 () Bool)

(assert (=> d!263095 (= (inv!11551 (tag!1963 (rule!3124 separatorToken!297))) (= (mod (str.len (value!55178 (tag!1963 (rule!3124 separatorToken!297)))) 2) 0))))

(assert (=> b!844553 d!263095))

(declare-fun d!263097 () Bool)

(declare-fun res!386091 () Bool)

(declare-fun e!555685 () Bool)

(assert (=> d!263097 (=> (not res!386091) (not e!555685))))

(declare-fun semiInverseModEq!657 (Int Int) Bool)

(assert (=> d!263097 (= res!386091 (semiInverseModEq!657 (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (toValue!2726 (transformation!1701 (rule!3124 separatorToken!297)))))))

(assert (=> d!263097 (= (inv!11555 (transformation!1701 (rule!3124 separatorToken!297))) e!555685)))

(declare-fun b!844700 () Bool)

(declare-fun equivClasses!624 (Int Int) Bool)

(assert (=> b!844700 (= e!555685 (equivClasses!624 (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (toValue!2726 (transformation!1701 (rule!3124 separatorToken!297)))))))

(assert (= (and d!263097 res!386091) b!844700))

(declare-fun m!1079751 () Bool)

(assert (=> d!263097 m!1079751))

(declare-fun m!1079753 () Bool)

(assert (=> b!844700 m!1079753))

(assert (=> b!844553 d!263097))

(declare-fun d!263099 () Bool)

(declare-fun res!386111 () Bool)

(declare-fun e!555712 () Bool)

(assert (=> d!263099 (=> res!386111 e!555712)))

(assert (=> d!263099 (= res!386111 (or (not (is-Cons!9076 lt!319910)) (not (is-Cons!9076 (t!94294 lt!319910)))))))

(assert (=> d!263099 (= (tokensListTwoByTwoPredicateSeparableList!25 thiss!20117 lt!319910 rules!2621) e!555712)))

(declare-fun b!844737 () Bool)

(declare-fun e!555711 () Bool)

(assert (=> b!844737 (= e!555712 e!555711)))

(declare-fun res!386112 () Bool)

(assert (=> b!844737 (=> (not res!386112) (not e!555711))))

(assert (=> b!844737 (= res!386112 (separableTokensPredicate!43 thiss!20117 (h!14477 lt!319910) (h!14477 (t!94294 lt!319910)) rules!2621))))

(declare-fun lt!319977 () Unit!13542)

(declare-fun Unit!13547 () Unit!13542)

(assert (=> b!844737 (= lt!319977 Unit!13547)))

(declare-fun size!7577 (BalanceConc!6030) Int)

(assert (=> b!844737 (> (size!7577 (charsOf!976 (h!14477 (t!94294 lt!319910)))) 0)))

(declare-fun lt!319973 () Unit!13542)

(declare-fun Unit!13548 () Unit!13542)

(assert (=> b!844737 (= lt!319973 Unit!13548)))

(assert (=> b!844737 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 (t!94294 lt!319910)))))

(declare-fun lt!319978 () Unit!13542)

(declare-fun Unit!13549 () Unit!13542)

(assert (=> b!844737 (= lt!319978 Unit!13549)))

(assert (=> b!844737 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 lt!319910))))

(declare-fun lt!319972 () Unit!13542)

(declare-fun lt!319976 () Unit!13542)

(assert (=> b!844737 (= lt!319972 lt!319976)))

(assert (=> b!844737 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 (t!94294 lt!319910)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!219 (LexerInterface!1503 List!9093 List!9092 Token!3068) Unit!13542)

(assert (=> b!844737 (= lt!319976 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!219 thiss!20117 rules!2621 lt!319910 (h!14477 (t!94294 lt!319910))))))

(declare-fun lt!319974 () Unit!13542)

(declare-fun lt!319975 () Unit!13542)

(assert (=> b!844737 (= lt!319974 lt!319975)))

(assert (=> b!844737 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 lt!319910))))

(assert (=> b!844737 (= lt!319975 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!219 thiss!20117 rules!2621 lt!319910 (h!14477 lt!319910)))))

(declare-fun b!844738 () Bool)

(assert (=> b!844738 (= e!555711 (tokensListTwoByTwoPredicateSeparableList!25 thiss!20117 (Cons!9076 (h!14477 (t!94294 lt!319910)) (t!94294 (t!94294 lt!319910))) rules!2621))))

(assert (= (and d!263099 (not res!386111)) b!844737))

(assert (= (and b!844737 res!386112) b!844738))

(declare-fun m!1079781 () Bool)

(assert (=> b!844737 m!1079781))

(declare-fun m!1079783 () Bool)

(assert (=> b!844737 m!1079783))

(declare-fun m!1079785 () Bool)

(assert (=> b!844737 m!1079785))

(declare-fun m!1079787 () Bool)

(assert (=> b!844737 m!1079787))

(declare-fun m!1079789 () Bool)

(assert (=> b!844737 m!1079789))

(declare-fun m!1079791 () Bool)

(assert (=> b!844737 m!1079791))

(declare-fun m!1079793 () Bool)

(assert (=> b!844737 m!1079793))

(assert (=> b!844737 m!1079787))

(declare-fun m!1079795 () Bool)

(assert (=> b!844738 m!1079795))

(assert (=> b!844555 d!263099))

(declare-fun d!263115 () Bool)

(assert (=> d!263115 (= (inv!11551 (tag!1963 (h!14478 rules!2621))) (= (mod (str.len (value!55178 (tag!1963 (h!14478 rules!2621)))) 2) 0))))

(assert (=> b!844554 d!263115))

(declare-fun d!263117 () Bool)

(declare-fun res!386113 () Bool)

(declare-fun e!555713 () Bool)

(assert (=> d!263117 (=> (not res!386113) (not e!555713))))

(assert (=> d!263117 (= res!386113 (semiInverseModEq!657 (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toValue!2726 (transformation!1701 (h!14478 rules!2621)))))))

(assert (=> d!263117 (= (inv!11555 (transformation!1701 (h!14478 rules!2621))) e!555713)))

(declare-fun b!844739 () Bool)

(assert (=> b!844739 (= e!555713 (equivClasses!624 (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toValue!2726 (transformation!1701 (h!14478 rules!2621)))))))

(assert (= (and d!263117 res!386113) b!844739))

(declare-fun m!1079797 () Bool)

(assert (=> d!263117 m!1079797))

(declare-fun m!1079799 () Bool)

(assert (=> b!844739 m!1079799))

(assert (=> b!844554 d!263117))

(declare-fun d!263119 () Bool)

(declare-fun prefixMatchZipperSequence!16 (Regex!2134 BalanceConc!6030) Bool)

(declare-fun rulesRegex!11 (LexerInterface!1503 List!9093) Regex!2134)

(declare-fun ++!2350 (BalanceConc!6030 BalanceConc!6030) BalanceConc!6030)

(declare-fun singletonSeq!514 (C!4838) BalanceConc!6030)

(declare-fun apply!1840 (BalanceConc!6030 Int) C!4838)

(assert (=> d!263119 (= (separableTokensPredicate!43 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621) (not (prefixMatchZipperSequence!16 (rulesRegex!11 thiss!20117 rules!2621) (++!2350 (charsOf!976 (h!14477 lt!319911)) (singletonSeq!514 (apply!1840 (charsOf!976 (h!14477 (t!94294 lt!319911))) 0))))))))

(declare-fun bs!230366 () Bool)

(assert (= bs!230366 d!263119))

(declare-fun m!1079801 () Bool)

(assert (=> bs!230366 m!1079801))

(assert (=> bs!230366 m!1079801))

(declare-fun m!1079803 () Bool)

(assert (=> bs!230366 m!1079803))

(declare-fun m!1079805 () Bool)

(assert (=> bs!230366 m!1079805))

(declare-fun m!1079807 () Bool)

(assert (=> bs!230366 m!1079807))

(declare-fun m!1079809 () Bool)

(assert (=> bs!230366 m!1079809))

(assert (=> bs!230366 m!1079807))

(declare-fun m!1079811 () Bool)

(assert (=> bs!230366 m!1079811))

(assert (=> bs!230366 m!1079809))

(declare-fun m!1079813 () Bool)

(assert (=> bs!230366 m!1079813))

(assert (=> bs!230366 m!1079803))

(assert (=> bs!230366 m!1079811))

(assert (=> bs!230366 m!1079813))

(assert (=> b!844565 d!263119))

(declare-fun b!844750 () Bool)

(declare-fun res!386128 () Bool)

(declare-fun e!555716 () Bool)

(assert (=> b!844750 (=> (not res!386128) (not e!555716))))

(assert (=> b!844750 (= res!386128 (isSeparator!1701 (rule!3124 separatorToken!297)))))

(declare-fun b!844751 () Bool)

(assert (=> b!844751 (= e!555716 (tokensListTwoByTwoPredicateSeparableList!25 thiss!20117 (withSeparatorTokenList!33 thiss!20117 lt!319907 separatorToken!297) rules!2621))))

(declare-fun lt!319985 () Unit!13542)

(declare-fun lt!319986 () Unit!13542)

(assert (=> b!844751 (= lt!319985 lt!319986)))

(assert (=> b!844751 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (withSeparatorTokenList!33 thiss!20117 lt!319907 separatorToken!297))))

(assert (=> b!844751 (= lt!319986 (withSeparatorTokenListPreservesRulesProduceTokens!33 thiss!20117 rules!2621 lt!319907 separatorToken!297))))

(declare-fun b!844752 () Bool)

(declare-fun res!386124 () Bool)

(assert (=> b!844752 (=> (not res!386124) (not e!555716))))

(assert (=> b!844752 (= res!386124 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 lt!319907))))

(declare-fun b!844753 () Bool)

(declare-fun res!386125 () Bool)

(assert (=> b!844753 (=> (not res!386125) (not e!555716))))

(assert (=> b!844753 (= res!386125 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!844754 () Bool)

(declare-fun res!386126 () Bool)

(assert (=> b!844754 (=> (not res!386126) (not e!555716))))

(assert (=> b!844754 (= res!386126 (rulesInvariant!1379 thiss!20117 rules!2621))))

(declare-fun d!263121 () Bool)

(assert (=> d!263121 e!555716))

(declare-fun res!386127 () Bool)

(assert (=> d!263121 (=> (not res!386127) (not e!555716))))

(assert (=> d!263121 (= res!386127 (is-Lexer!1501 thiss!20117))))

(declare-fun lt!319987 () Unit!13542)

(declare-fun choose!4977 (LexerInterface!1503 List!9093 List!9092 Token!3068) Unit!13542)

(assert (=> d!263121 (= lt!319987 (choose!4977 thiss!20117 rules!2621 lt!319907 separatorToken!297))))

(assert (=> d!263121 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263121 (= (printWithSeparatorTokenImpliesSeparableTokensList!9 thiss!20117 rules!2621 lt!319907 separatorToken!297) lt!319987)))

(assert (= (and d!263121 res!386127) b!844754))

(assert (= (and b!844754 res!386126) b!844752))

(assert (= (and b!844752 res!386124) b!844753))

(assert (= (and b!844753 res!386125) b!844750))

(assert (= (and b!844750 res!386128) b!844751))

(assert (=> b!844753 m!1079593))

(assert (=> b!844751 m!1079585))

(assert (=> b!844751 m!1079585))

(declare-fun m!1079815 () Bool)

(assert (=> b!844751 m!1079815))

(assert (=> b!844751 m!1079585))

(declare-fun m!1079817 () Bool)

(assert (=> b!844751 m!1079817))

(assert (=> b!844751 m!1079597))

(assert (=> b!844754 m!1079617))

(declare-fun m!1079819 () Bool)

(assert (=> b!844752 m!1079819))

(declare-fun m!1079821 () Bool)

(assert (=> d!263121 m!1079821))

(assert (=> d!263121 m!1079589))

(assert (=> b!844565 d!263121))

(declare-fun d!263123 () Bool)

(assert (=> d!263123 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (withSeparatorTokenList!33 thiss!20117 lt!319907 separatorToken!297))))

(declare-fun lt!320011 () Unit!13542)

(declare-fun choose!4978 (LexerInterface!1503 List!9093 List!9092 Token!3068) Unit!13542)

(assert (=> d!263123 (= lt!320011 (choose!4978 thiss!20117 rules!2621 lt!319907 separatorToken!297))))

(assert (=> d!263123 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263123 (= (withSeparatorTokenListPreservesRulesProduceTokens!33 thiss!20117 rules!2621 lt!319907 separatorToken!297) lt!320011)))

(declare-fun bs!230367 () Bool)

(assert (= bs!230367 d!263123))

(assert (=> bs!230367 m!1079585))

(assert (=> bs!230367 m!1079585))

(assert (=> bs!230367 m!1079817))

(declare-fun m!1079839 () Bool)

(assert (=> bs!230367 m!1079839))

(assert (=> bs!230367 m!1079589))

(assert (=> b!844565 d!263123))

(declare-fun d!263127 () Bool)

(assert (=> d!263127 (= (isEmpty!5351 (t!94294 (t!94294 lt!319911))) (is-Nil!9076 (t!94294 (t!94294 lt!319911))))))

(assert (=> b!844565 d!263127))

(declare-fun bs!230369 () Bool)

(declare-fun d!263129 () Bool)

(assert (= bs!230369 (and d!263129 b!844561)))

(declare-fun lambda!25160 () Int)

(assert (=> bs!230369 (not (= lambda!25160 lambda!25151))))

(declare-fun b!844826 () Bool)

(declare-fun e!555770 () Bool)

(assert (=> b!844826 (= e!555770 true)))

(declare-fun b!844825 () Bool)

(declare-fun e!555769 () Bool)

(assert (=> b!844825 (= e!555769 e!555770)))

(declare-fun b!844824 () Bool)

(declare-fun e!555768 () Bool)

(assert (=> b!844824 (= e!555768 e!555769)))

(assert (=> d!263129 e!555768))

(assert (= b!844825 b!844826))

(assert (= b!844824 b!844825))

(assert (= (and d!263129 (is-Cons!9077 rules!2621)) b!844824))

(declare-fun order!5787 () Int)

(declare-fun order!5789 () Int)

(declare-fun dynLambda!4202 (Int Int) Int)

(declare-fun dynLambda!4203 (Int Int) Int)

(assert (=> b!844826 (< (dynLambda!4202 order!5787 (toValue!2726 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25160))))

(declare-fun order!5791 () Int)

(declare-fun dynLambda!4204 (Int Int) Int)

(assert (=> b!844826 (< (dynLambda!4204 order!5791 (toChars!2585 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25160))))

(assert (=> d!263129 true))

(declare-fun lt!320041 () Bool)

(assert (=> d!263129 (= lt!320041 (forall!2128 lt!319910 lambda!25160))))

(declare-fun e!555760 () Bool)

(assert (=> d!263129 (= lt!320041 e!555760)))

(declare-fun res!386157 () Bool)

(assert (=> d!263129 (=> res!386157 e!555760)))

(assert (=> d!263129 (= res!386157 (not (is-Cons!9076 lt!319910)))))

(assert (=> d!263129 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263129 (= (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 lt!319910) lt!320041)))

(declare-fun b!844814 () Bool)

(declare-fun e!555761 () Bool)

(assert (=> b!844814 (= e!555760 e!555761)))

(declare-fun res!386158 () Bool)

(assert (=> b!844814 (=> (not res!386158) (not e!555761))))

(assert (=> b!844814 (= res!386158 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 lt!319910)))))

(declare-fun b!844815 () Bool)

(assert (=> b!844815 (= e!555761 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (t!94294 lt!319910)))))

(assert (= (and d!263129 (not res!386157)) b!844814))

(assert (= (and b!844814 res!386158) b!844815))

(declare-fun m!1079897 () Bool)

(assert (=> d!263129 m!1079897))

(assert (=> d!263129 m!1079589))

(assert (=> b!844814 m!1079781))

(declare-fun m!1079899 () Bool)

(assert (=> b!844815 m!1079899))

(assert (=> b!844565 d!263129))

(declare-fun d!263135 () Bool)

(assert (=> d!263135 (separableTokensPredicate!43 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621)))

(declare-fun lt!320044 () Unit!13542)

(declare-fun choose!4979 (LexerInterface!1503 Token!3068 Token!3068 List!9093) Unit!13542)

(assert (=> d!263135 (= lt!320044 (choose!4979 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621))))

(assert (=> d!263135 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263135 (= (lemmaTokensOfDifferentKindsAreSeparable!25 thiss!20117 (h!14477 lt!319911) (h!14477 (t!94294 lt!319911)) rules!2621) lt!320044)))

(declare-fun bs!230370 () Bool)

(assert (= bs!230370 d!263135))

(assert (=> bs!230370 m!1079605))

(declare-fun m!1079901 () Bool)

(assert (=> bs!230370 m!1079901))

(assert (=> bs!230370 m!1079589))

(assert (=> b!844565 d!263135))

(declare-fun d!263137 () Bool)

(assert (=> d!263137 (= (inv!11551 (tag!1963 (rule!3124 (h!14477 l!5107)))) (= (mod (str.len (value!55178 (tag!1963 (rule!3124 (h!14477 l!5107))))) 2) 0))))

(assert (=> b!844556 d!263137))

(declare-fun d!263139 () Bool)

(declare-fun res!386159 () Bool)

(declare-fun e!555771 () Bool)

(assert (=> d!263139 (=> (not res!386159) (not e!555771))))

(assert (=> d!263139 (= res!386159 (semiInverseModEq!657 (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (toValue!2726 (transformation!1701 (rule!3124 (h!14477 l!5107))))))))

(assert (=> d!263139 (= (inv!11555 (transformation!1701 (rule!3124 (h!14477 l!5107)))) e!555771)))

(declare-fun b!844829 () Bool)

(assert (=> b!844829 (= e!555771 (equivClasses!624 (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (toValue!2726 (transformation!1701 (rule!3124 (h!14477 l!5107))))))))

(assert (= (and d!263139 res!386159) b!844829))

(declare-fun m!1079903 () Bool)

(assert (=> d!263139 m!1079903))

(declare-fun m!1079905 () Bool)

(assert (=> b!844829 m!1079905))

(assert (=> b!844556 d!263139))

(declare-fun d!263141 () Bool)

(declare-fun lt!320065 () Bool)

(declare-fun e!555791 () Bool)

(assert (=> d!263141 (= lt!320065 e!555791)))

(declare-fun res!386175 () Bool)

(assert (=> d!263141 (=> (not res!386175) (not e!555791))))

(declare-datatypes ((IArray!6025 0))(
  ( (IArray!6026 (innerList!3070 List!9092)) )
))
(declare-datatypes ((Conc!3010 0))(
  ( (Node!3010 (left!6730 Conc!3010) (right!7060 Conc!3010) (csize!6250 Int) (cheight!3221 Int)) (Leaf!4449 (xs!5699 IArray!6025) (csize!6251 Int)) (Empty!3010) )
))
(declare-datatypes ((BalanceConc!6034 0))(
  ( (BalanceConc!6035 (c!137535 Conc!3010)) )
))
(declare-fun list!3568 (BalanceConc!6034) List!9092)

(declare-datatypes ((tuple2!10342 0))(
  ( (tuple2!10343 (_1!5997 BalanceConc!6034) (_2!5997 BalanceConc!6030)) )
))
(declare-fun lex!605 (LexerInterface!1503 List!9093 BalanceConc!6030) tuple2!10342)

(declare-fun print!542 (LexerInterface!1503 BalanceConc!6034) BalanceConc!6030)

(declare-fun singletonSeq!515 (Token!3068) BalanceConc!6034)

(assert (=> d!263141 (= res!386175 (= (list!3568 (_1!5997 (lex!605 thiss!20117 rules!2621 (print!542 thiss!20117 (singletonSeq!515 separatorToken!297))))) (list!3568 (singletonSeq!515 separatorToken!297))))))

(declare-fun e!555790 () Bool)

(assert (=> d!263141 (= lt!320065 e!555790)))

(declare-fun res!386174 () Bool)

(assert (=> d!263141 (=> (not res!386174) (not e!555790))))

(declare-fun lt!320066 () tuple2!10342)

(declare-fun size!7578 (BalanceConc!6034) Int)

(assert (=> d!263141 (= res!386174 (= (size!7578 (_1!5997 lt!320066)) 1))))

(assert (=> d!263141 (= lt!320066 (lex!605 thiss!20117 rules!2621 (print!542 thiss!20117 (singletonSeq!515 separatorToken!297))))))

(assert (=> d!263141 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263141 (= (rulesProduceIndividualToken!567 thiss!20117 rules!2621 separatorToken!297) lt!320065)))

(declare-fun b!844856 () Bool)

(declare-fun res!386173 () Bool)

(assert (=> b!844856 (=> (not res!386173) (not e!555790))))

(declare-fun apply!1841 (BalanceConc!6034 Int) Token!3068)

(assert (=> b!844856 (= res!386173 (= (apply!1841 (_1!5997 lt!320066) 0) separatorToken!297))))

(declare-fun b!844857 () Bool)

(declare-fun isEmpty!5355 (BalanceConc!6030) Bool)

(assert (=> b!844857 (= e!555790 (isEmpty!5355 (_2!5997 lt!320066)))))

(declare-fun b!844858 () Bool)

(assert (=> b!844858 (= e!555791 (isEmpty!5355 (_2!5997 (lex!605 thiss!20117 rules!2621 (print!542 thiss!20117 (singletonSeq!515 separatorToken!297))))))))

(assert (= (and d!263141 res!386174) b!844856))

(assert (= (and b!844856 res!386173) b!844857))

(assert (= (and d!263141 res!386175) b!844858))

(declare-fun m!1079975 () Bool)

(assert (=> d!263141 m!1079975))

(declare-fun m!1079977 () Bool)

(assert (=> d!263141 m!1079977))

(declare-fun m!1079979 () Bool)

(assert (=> d!263141 m!1079979))

(assert (=> d!263141 m!1079589))

(assert (=> d!263141 m!1079977))

(declare-fun m!1079981 () Bool)

(assert (=> d!263141 m!1079981))

(declare-fun m!1079983 () Bool)

(assert (=> d!263141 m!1079983))

(declare-fun m!1079985 () Bool)

(assert (=> d!263141 m!1079985))

(assert (=> d!263141 m!1079977))

(assert (=> d!263141 m!1079983))

(declare-fun m!1079987 () Bool)

(assert (=> b!844856 m!1079987))

(declare-fun m!1079989 () Bool)

(assert (=> b!844857 m!1079989))

(assert (=> b!844858 m!1079977))

(assert (=> b!844858 m!1079977))

(assert (=> b!844858 m!1079983))

(assert (=> b!844858 m!1079983))

(assert (=> b!844858 m!1079985))

(declare-fun m!1079991 () Bool)

(assert (=> b!844858 m!1079991))

(assert (=> b!844567 d!263141))

(declare-fun bs!230376 () Bool)

(declare-fun d!263161 () Bool)

(assert (= bs!230376 (and d!263161 b!844561)))

(declare-fun lambda!25162 () Int)

(assert (=> bs!230376 (not (= lambda!25162 lambda!25151))))

(declare-fun bs!230377 () Bool)

(assert (= bs!230377 (and d!263161 d!263129)))

(assert (=> bs!230377 (= lambda!25162 lambda!25160)))

(declare-fun b!844863 () Bool)

(declare-fun e!555796 () Bool)

(assert (=> b!844863 (= e!555796 true)))

(declare-fun b!844862 () Bool)

(declare-fun e!555795 () Bool)

(assert (=> b!844862 (= e!555795 e!555796)))

(declare-fun b!844861 () Bool)

(declare-fun e!555794 () Bool)

(assert (=> b!844861 (= e!555794 e!555795)))

(assert (=> d!263161 e!555794))

(assert (= b!844862 b!844863))

(assert (= b!844861 b!844862))

(assert (= (and d!263161 (is-Cons!9077 rules!2621)) b!844861))

(assert (=> b!844863 (< (dynLambda!4202 order!5787 (toValue!2726 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25162))))

(assert (=> b!844863 (< (dynLambda!4204 order!5791 (toChars!2585 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25162))))

(assert (=> d!263161 true))

(declare-fun lt!320067 () Bool)

(assert (=> d!263161 (= lt!320067 (forall!2128 l!5107 lambda!25162))))

(declare-fun e!555792 () Bool)

(assert (=> d!263161 (= lt!320067 e!555792)))

(declare-fun res!386176 () Bool)

(assert (=> d!263161 (=> res!386176 e!555792)))

(assert (=> d!263161 (= res!386176 (not (is-Cons!9076 l!5107)))))

(assert (=> d!263161 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263161 (= (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 l!5107) lt!320067)))

(declare-fun b!844859 () Bool)

(declare-fun e!555793 () Bool)

(assert (=> b!844859 (= e!555792 e!555793)))

(declare-fun res!386177 () Bool)

(assert (=> b!844859 (=> (not res!386177) (not e!555793))))

(assert (=> b!844859 (= res!386177 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 l!5107)))))

(declare-fun b!844860 () Bool)

(assert (=> b!844860 (= e!555793 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (t!94294 l!5107)))))

(assert (= (and d!263161 (not res!386176)) b!844859))

(assert (= (and b!844859 res!386177) b!844860))

(declare-fun m!1079993 () Bool)

(assert (=> d!263161 m!1079993))

(assert (=> d!263161 m!1079589))

(declare-fun m!1079995 () Bool)

(assert (=> b!844859 m!1079995))

(declare-fun m!1079997 () Bool)

(assert (=> b!844860 m!1079997))

(assert (=> b!844568 d!263161))

(declare-fun d!263163 () Bool)

(declare-fun res!386178 () Bool)

(declare-fun e!555797 () Bool)

(assert (=> d!263163 (=> (not res!386178) (not e!555797))))

(assert (=> d!263163 (= res!386178 (not (isEmpty!5354 (originalCharacters!2257 (h!14477 l!5107)))))))

(assert (=> d!263163 (= (inv!11554 (h!14477 l!5107)) e!555797)))

(declare-fun b!844864 () Bool)

(declare-fun res!386179 () Bool)

(assert (=> b!844864 (=> (not res!386179) (not e!555797))))

(assert (=> b!844864 (= res!386179 (= (originalCharacters!2257 (h!14477 l!5107)) (list!3567 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (value!55179 (h!14477 l!5107))))))))

(declare-fun b!844865 () Bool)

(assert (=> b!844865 (= e!555797 (= (size!7574 (h!14477 l!5107)) (size!7576 (originalCharacters!2257 (h!14477 l!5107)))))))

(assert (= (and d!263163 res!386178) b!844864))

(assert (= (and b!844864 res!386179) b!844865))

(declare-fun b_lambda!27925 () Bool)

(assert (=> (not b_lambda!27925) (not b!844864)))

(declare-fun t!94318 () Bool)

(declare-fun tb!58661 () Bool)

(assert (=> (and b!844566 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107))))) t!94318) tb!58661))

(declare-fun b!844866 () Bool)

(declare-fun e!555798 () Bool)

(declare-fun tp!265807 () Bool)

(assert (=> b!844866 (= e!555798 (and (inv!11558 (c!137492 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (value!55179 (h!14477 l!5107))))) tp!265807))))

(declare-fun result!67994 () Bool)

(assert (=> tb!58661 (= result!67994 (and (inv!11559 (dynLambda!4200 (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (value!55179 (h!14477 l!5107)))) e!555798))))

(assert (= tb!58661 b!844866))

(declare-fun m!1079999 () Bool)

(assert (=> b!844866 m!1079999))

(declare-fun m!1080001 () Bool)

(assert (=> tb!58661 m!1080001))

(assert (=> b!844864 t!94318))

(declare-fun b_and!73445 () Bool)

(assert (= b_and!73433 (and (=> t!94318 result!67994) b_and!73445)))

(declare-fun tb!58663 () Bool)

(declare-fun t!94320 () Bool)

(assert (=> (and b!844560 (= (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107))))) t!94320) tb!58663))

(declare-fun result!67996 () Bool)

(assert (= result!67996 result!67994))

(assert (=> b!844864 t!94320))

(declare-fun b_and!73447 () Bool)

(assert (= b_and!73435 (and (=> t!94320 result!67996) b_and!73447)))

(declare-fun tb!58665 () Bool)

(declare-fun t!94322 () Bool)

(assert (=> (and b!844569 (= (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107))))) t!94322) tb!58665))

(declare-fun result!67998 () Bool)

(assert (= result!67998 result!67994))

(assert (=> b!844864 t!94322))

(declare-fun b_and!73449 () Bool)

(assert (= b_and!73437 (and (=> t!94322 result!67998) b_and!73449)))

(declare-fun m!1080003 () Bool)

(assert (=> d!263163 m!1080003))

(declare-fun m!1080005 () Bool)

(assert (=> b!844864 m!1080005))

(assert (=> b!844864 m!1080005))

(declare-fun m!1080007 () Bool)

(assert (=> b!844864 m!1080007))

(declare-fun m!1080009 () Bool)

(assert (=> b!844865 m!1080009))

(assert (=> b!844547 d!263163))

(declare-fun b!844877 () Bool)

(declare-fun res!386182 () Bool)

(declare-fun e!555806 () Bool)

(assert (=> b!844877 (=> res!386182 e!555806)))

(assert (=> b!844877 (= res!386182 (not (is-IntegerValue!5303 (value!55179 separatorToken!297))))))

(declare-fun e!555807 () Bool)

(assert (=> b!844877 (= e!555807 e!555806)))

(declare-fun d!263165 () Bool)

(declare-fun c!137529 () Bool)

(assert (=> d!263165 (= c!137529 (is-IntegerValue!5301 (value!55179 separatorToken!297)))))

(declare-fun e!555805 () Bool)

(assert (=> d!263165 (= (inv!21 (value!55179 separatorToken!297)) e!555805)))

(declare-fun b!844878 () Bool)

(declare-fun inv!16 (TokenValue!1767) Bool)

(assert (=> b!844878 (= e!555805 (inv!16 (value!55179 separatorToken!297)))))

(declare-fun b!844879 () Bool)

(assert (=> b!844879 (= e!555805 e!555807)))

(declare-fun c!137528 () Bool)

(assert (=> b!844879 (= c!137528 (is-IntegerValue!5302 (value!55179 separatorToken!297)))))

(declare-fun b!844880 () Bool)

(declare-fun inv!15 (TokenValue!1767) Bool)

(assert (=> b!844880 (= e!555806 (inv!15 (value!55179 separatorToken!297)))))

(declare-fun b!844881 () Bool)

(declare-fun inv!17 (TokenValue!1767) Bool)

(assert (=> b!844881 (= e!555807 (inv!17 (value!55179 separatorToken!297)))))

(assert (= (and d!263165 c!137529) b!844878))

(assert (= (and d!263165 (not c!137529)) b!844879))

(assert (= (and b!844879 c!137528) b!844881))

(assert (= (and b!844879 (not c!137528)) b!844877))

(assert (= (and b!844877 (not res!386182)) b!844880))

(declare-fun m!1080011 () Bool)

(assert (=> b!844878 m!1080011))

(declare-fun m!1080013 () Bool)

(assert (=> b!844880 m!1080013))

(declare-fun m!1080015 () Bool)

(assert (=> b!844881 m!1080015))

(assert (=> b!844557 d!263165))

(declare-fun b!844882 () Bool)

(declare-fun res!386183 () Bool)

(declare-fun e!555809 () Bool)

(assert (=> b!844882 (=> res!386183 e!555809)))

(assert (=> b!844882 (= res!386183 (not (is-IntegerValue!5303 (value!55179 (h!14477 l!5107)))))))

(declare-fun e!555810 () Bool)

(assert (=> b!844882 (= e!555810 e!555809)))

(declare-fun d!263167 () Bool)

(declare-fun c!137531 () Bool)

(assert (=> d!263167 (= c!137531 (is-IntegerValue!5301 (value!55179 (h!14477 l!5107))))))

(declare-fun e!555808 () Bool)

(assert (=> d!263167 (= (inv!21 (value!55179 (h!14477 l!5107))) e!555808)))

(declare-fun b!844883 () Bool)

(assert (=> b!844883 (= e!555808 (inv!16 (value!55179 (h!14477 l!5107))))))

(declare-fun b!844884 () Bool)

(assert (=> b!844884 (= e!555808 e!555810)))

(declare-fun c!137530 () Bool)

(assert (=> b!844884 (= c!137530 (is-IntegerValue!5302 (value!55179 (h!14477 l!5107))))))

(declare-fun b!844885 () Bool)

(assert (=> b!844885 (= e!555809 (inv!15 (value!55179 (h!14477 l!5107))))))

(declare-fun b!844886 () Bool)

(assert (=> b!844886 (= e!555810 (inv!17 (value!55179 (h!14477 l!5107))))))

(assert (= (and d!263167 c!137531) b!844883))

(assert (= (and d!263167 (not c!137531)) b!844884))

(assert (= (and b!844884 c!137530) b!844886))

(assert (= (and b!844884 (not c!137530)) b!844882))

(assert (= (and b!844882 (not res!386183)) b!844885))

(declare-fun m!1080017 () Bool)

(assert (=> b!844883 m!1080017))

(declare-fun m!1080019 () Bool)

(assert (=> b!844885 m!1080019))

(declare-fun m!1080021 () Bool)

(assert (=> b!844886 m!1080021))

(assert (=> b!844548 d!263167))

(declare-fun bs!230378 () Bool)

(declare-fun d!263169 () Bool)

(assert (= bs!230378 (and d!263169 b!844561)))

(declare-fun lambda!25163 () Int)

(assert (=> bs!230378 (not (= lambda!25163 lambda!25151))))

(declare-fun bs!230379 () Bool)

(assert (= bs!230379 (and d!263169 d!263129)))

(assert (=> bs!230379 (= lambda!25163 lambda!25160)))

(declare-fun bs!230380 () Bool)

(assert (= bs!230380 (and d!263169 d!263161)))

(assert (=> bs!230380 (= lambda!25163 lambda!25162)))

(declare-fun b!844891 () Bool)

(declare-fun e!555815 () Bool)

(assert (=> b!844891 (= e!555815 true)))

(declare-fun b!844890 () Bool)

(declare-fun e!555814 () Bool)

(assert (=> b!844890 (= e!555814 e!555815)))

(declare-fun b!844889 () Bool)

(declare-fun e!555813 () Bool)

(assert (=> b!844889 (= e!555813 e!555814)))

(assert (=> d!263169 e!555813))

(assert (= b!844890 b!844891))

(assert (= b!844889 b!844890))

(assert (= (and d!263169 (is-Cons!9077 rules!2621)) b!844889))

(assert (=> b!844891 (< (dynLambda!4202 order!5787 (toValue!2726 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25163))))

(assert (=> b!844891 (< (dynLambda!4204 order!5791 (toChars!2585 (transformation!1701 (h!14478 rules!2621)))) (dynLambda!4203 order!5789 lambda!25163))))

(assert (=> d!263169 true))

(declare-fun lt!320068 () Bool)

(assert (=> d!263169 (= lt!320068 (forall!2128 lt!319911 lambda!25163))))

(declare-fun e!555811 () Bool)

(assert (=> d!263169 (= lt!320068 e!555811)))

(declare-fun res!386184 () Bool)

(assert (=> d!263169 (=> res!386184 e!555811)))

(assert (=> d!263169 (= res!386184 (not (is-Cons!9076 lt!319911)))))

(assert (=> d!263169 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263169 (= (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 lt!319911) lt!320068)))

(declare-fun b!844887 () Bool)

(declare-fun e!555812 () Bool)

(assert (=> b!844887 (= e!555811 e!555812)))

(declare-fun res!386185 () Bool)

(assert (=> b!844887 (=> (not res!386185) (not e!555812))))

(assert (=> b!844887 (= res!386185 (rulesProduceIndividualToken!567 thiss!20117 rules!2621 (h!14477 lt!319911)))))

(declare-fun b!844888 () Bool)

(assert (=> b!844888 (= e!555812 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (t!94294 lt!319911)))))

(assert (= (and d!263169 (not res!386184)) b!844887))

(assert (= (and b!844887 res!386185) b!844888))

(declare-fun m!1080023 () Bool)

(assert (=> d!263169 m!1080023))

(assert (=> d!263169 m!1079589))

(declare-fun m!1080025 () Bool)

(assert (=> b!844887 m!1080025))

(declare-fun m!1080027 () Bool)

(assert (=> b!844888 m!1080027))

(assert (=> b!844558 d!263169))

(declare-fun b!844892 () Bool)

(declare-fun e!555818 () List!9091)

(declare-fun lt!320071 () List!9092)

(assert (=> b!844892 (= e!555818 (++!2349 (list!3567 (charsOf!976 (h!14477 lt!320071))) (printList!461 thiss!20117 (t!94294 lt!320071))))))

(declare-fun b!844893 () Bool)

(declare-fun e!555816 () List!9092)

(assert (=> b!844893 (= e!555816 Nil!9076)))

(declare-fun b!844894 () Bool)

(declare-fun res!386187 () Bool)

(declare-fun e!555817 () Bool)

(assert (=> b!844894 (=> (not res!386187) (not e!555817))))

(declare-fun e!555821 () Bool)

(assert (=> b!844894 (= res!386187 e!555821)))

(declare-fun res!386189 () Bool)

(assert (=> b!844894 (=> res!386189 e!555821)))

(assert (=> b!844894 (= res!386189 (not (is-Cons!9076 l!5107)))))

(declare-fun b!844896 () Bool)

(declare-fun e!555819 () Bool)

(assert (=> b!844896 (= e!555819 (= (printList!461 thiss!20117 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297) separatorToken!297)) e!555818))))

(declare-fun c!137534 () Bool)

(assert (=> b!844896 (= c!137534 (is-Cons!9076 lt!320071))))

(assert (=> b!844896 (= lt!320071 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!844897 () Bool)

(assert (=> b!844897 (= e!555817 e!555819)))

(declare-fun res!386186 () Bool)

(assert (=> b!844897 (=> res!386186 e!555819)))

(assert (=> b!844897 (= res!386186 (not (is-Cons!9076 l!5107)))))

(declare-fun b!844898 () Bool)

(assert (=> b!844898 (= e!555818 Nil!9075)))

(declare-fun b!844899 () Bool)

(declare-fun e!555820 () List!9091)

(declare-fun lt!320069 () List!9092)

(assert (=> b!844899 (= e!555820 (++!2349 (list!3567 (charsOf!976 (h!14477 lt!320069))) (printList!461 thiss!20117 (t!94294 lt!320069))))))

(declare-fun b!844900 () Bool)

(assert (=> b!844900 (= e!555820 Nil!9075)))

(declare-fun b!844901 () Bool)

(assert (=> b!844901 (= e!555816 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297) separatorToken!297) (h!14477 l!5107)))))

(declare-fun lt!320073 () List!9091)

(assert (=> b!844901 (= lt!320073 (list!3567 (charsOf!976 (h!14477 l!5107))))))

(declare-fun lt!320074 () List!9091)

(assert (=> b!844901 (= lt!320074 (list!3567 (charsOf!976 separatorToken!297)))))

(declare-fun lt!320072 () List!9091)

(assert (=> b!844901 (= lt!320072 (printList!461 thiss!20117 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297)))))

(declare-fun lt!320070 () Unit!13542)

(assert (=> b!844901 (= lt!320070 (lemmaConcatAssociativity!736 lt!320073 lt!320074 lt!320072))))

(assert (=> b!844901 (= (++!2349 (++!2349 lt!320073 lt!320074) lt!320072) (++!2349 lt!320073 (++!2349 lt!320074 lt!320072)))))

(declare-fun lt!320076 () Unit!13542)

(assert (=> b!844901 (= lt!320076 lt!320070)))

(declare-fun b!844895 () Bool)

(assert (=> b!844895 (= e!555821 (= (printList!461 thiss!20117 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297) separatorToken!297) (h!14477 l!5107))) e!555820))))

(declare-fun c!137533 () Bool)

(assert (=> b!844895 (= c!137533 (is-Cons!9076 lt!320069))))

(assert (=> b!844895 (= lt!320069 ($colon$colon!74 ($colon$colon!74 (withSeparatorTokenList!33 thiss!20117 (t!94294 l!5107) separatorToken!297) separatorToken!297) (h!14477 l!5107)))))

(declare-fun lt!320075 () List!9092)

(declare-fun d!263171 () Bool)

(assert (=> d!263171 (= (printList!461 thiss!20117 lt!320075) (printWithSeparatorTokenList!19 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!263171 (= lt!320075 e!555816)))

(declare-fun c!137532 () Bool)

(assert (=> d!263171 (= c!137532 (is-Cons!9076 l!5107))))

(assert (=> d!263171 e!555817))

(declare-fun res!386188 () Bool)

(assert (=> d!263171 (=> (not res!386188) (not e!555817))))

(assert (=> d!263171 (= res!386188 (isSeparator!1701 (rule!3124 separatorToken!297)))))

(assert (=> d!263171 (= (withSeparatorTokenList!33 thiss!20117 l!5107 separatorToken!297) lt!320075)))

(assert (= (and d!263171 res!386188) b!844894))

(assert (= (and b!844894 (not res!386189)) b!844895))

(assert (= (and b!844895 c!137533) b!844899))

(assert (= (and b!844895 (not c!137533)) b!844900))

(assert (= (and b!844894 res!386187) b!844897))

(assert (= (and b!844897 (not res!386186)) b!844896))

(assert (= (and b!844896 c!137534) b!844892))

(assert (= (and b!844896 (not c!137534)) b!844898))

(assert (= (and d!263171 c!137532) b!844901))

(assert (= (and d!263171 (not c!137532)) b!844893))

(declare-fun m!1080029 () Bool)

(assert (=> b!844896 m!1080029))

(assert (=> b!844896 m!1080029))

(declare-fun m!1080031 () Bool)

(assert (=> b!844896 m!1080031))

(assert (=> b!844896 m!1080031))

(declare-fun m!1080033 () Bool)

(assert (=> b!844896 m!1080033))

(assert (=> b!844901 m!1080029))

(declare-fun m!1080035 () Bool)

(assert (=> b!844901 m!1080035))

(declare-fun m!1080037 () Bool)

(assert (=> b!844901 m!1080037))

(declare-fun m!1080039 () Bool)

(assert (=> b!844901 m!1080039))

(assert (=> b!844901 m!1080029))

(assert (=> b!844901 m!1080031))

(assert (=> b!844901 m!1079701))

(assert (=> b!844901 m!1080031))

(declare-fun m!1080041 () Bool)

(assert (=> b!844901 m!1080041))

(assert (=> b!844901 m!1080035))

(declare-fun m!1080043 () Bool)

(assert (=> b!844901 m!1080043))

(assert (=> b!844901 m!1080029))

(declare-fun m!1080045 () Bool)

(assert (=> b!844901 m!1080045))

(declare-fun m!1080047 () Bool)

(assert (=> b!844901 m!1080047))

(assert (=> b!844901 m!1080039))

(declare-fun m!1080049 () Bool)

(assert (=> b!844901 m!1080049))

(assert (=> b!844901 m!1080047))

(declare-fun m!1080051 () Bool)

(assert (=> b!844901 m!1080051))

(assert (=> b!844901 m!1079701))

(assert (=> b!844901 m!1079715))

(assert (=> b!844895 m!1080029))

(assert (=> b!844895 m!1080029))

(assert (=> b!844895 m!1080031))

(assert (=> b!844895 m!1080031))

(assert (=> b!844895 m!1080041))

(assert (=> b!844895 m!1080041))

(declare-fun m!1080053 () Bool)

(assert (=> b!844895 m!1080053))

(declare-fun m!1080055 () Bool)

(assert (=> d!263171 m!1080055))

(declare-fun m!1080057 () Bool)

(assert (=> d!263171 m!1080057))

(declare-fun m!1080059 () Bool)

(assert (=> b!844892 m!1080059))

(assert (=> b!844892 m!1080059))

(declare-fun m!1080061 () Bool)

(assert (=> b!844892 m!1080061))

(declare-fun m!1080063 () Bool)

(assert (=> b!844892 m!1080063))

(assert (=> b!844892 m!1080061))

(assert (=> b!844892 m!1080063))

(declare-fun m!1080065 () Bool)

(assert (=> b!844892 m!1080065))

(declare-fun m!1080067 () Bool)

(assert (=> b!844899 m!1080067))

(assert (=> b!844899 m!1080067))

(declare-fun m!1080069 () Bool)

(assert (=> b!844899 m!1080069))

(declare-fun m!1080071 () Bool)

(assert (=> b!844899 m!1080071))

(assert (=> b!844899 m!1080069))

(assert (=> b!844899 m!1080071))

(declare-fun m!1080073 () Bool)

(assert (=> b!844899 m!1080073))

(assert (=> b!844558 d!263171))

(declare-fun d!263173 () Bool)

(assert (=> d!263173 (rulesProduceEachTokenIndividuallyList!391 thiss!20117 rules!2621 (withSeparatorTokenList!33 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320077 () Unit!13542)

(assert (=> d!263173 (= lt!320077 (choose!4978 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!263173 (not (isEmpty!5350 rules!2621))))

(assert (=> d!263173 (= (withSeparatorTokenListPreservesRulesProduceTokens!33 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!320077)))

(declare-fun bs!230381 () Bool)

(assert (= bs!230381 d!263173))

(assert (=> bs!230381 m!1079573))

(assert (=> bs!230381 m!1079573))

(declare-fun m!1080075 () Bool)

(assert (=> bs!230381 m!1080075))

(declare-fun m!1080077 () Bool)

(assert (=> bs!230381 m!1080077))

(assert (=> bs!230381 m!1079589))

(assert (=> b!844558 d!263173))

(declare-fun b!844912 () Bool)

(declare-fun b_free!25333 () Bool)

(declare-fun b_next!25397 () Bool)

(assert (=> b!844912 (= b_free!25333 (not b_next!25397))))

(declare-fun tp!265816 () Bool)

(declare-fun b_and!73451 () Bool)

(assert (=> b!844912 (= tp!265816 b_and!73451)))

(declare-fun b_free!25335 () Bool)

(declare-fun b_next!25399 () Bool)

(assert (=> b!844912 (= b_free!25335 (not b_next!25399))))

(declare-fun t!94324 () Bool)

(declare-fun tb!58667 () Bool)

(assert (=> (and b!844912 (= (toChars!2585 (transformation!1701 (h!14478 (t!94295 rules!2621)))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297)))) t!94324) tb!58667))

(declare-fun result!68002 () Bool)

(assert (= result!68002 result!67978))

(assert (=> b!844646 t!94324))

(declare-fun tb!58669 () Bool)

(declare-fun t!94326 () Bool)

(assert (=> (and b!844912 (= (toChars!2585 (transformation!1701 (h!14478 (t!94295 rules!2621)))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107))))) t!94326) tb!58669))

(declare-fun result!68004 () Bool)

(assert (= result!68004 result!67994))

(assert (=> b!844864 t!94326))

(declare-fun b_and!73453 () Bool)

(declare-fun tp!265818 () Bool)

(assert (=> b!844912 (= tp!265818 (and (=> t!94324 result!68002) (=> t!94326 result!68004) b_and!73453))))

(declare-fun e!555832 () Bool)

(assert (=> b!844912 (= e!555832 (and tp!265816 tp!265818))))

(declare-fun tp!265819 () Bool)

(declare-fun b!844911 () Bool)

(declare-fun e!555831 () Bool)

(assert (=> b!844911 (= e!555831 (and tp!265819 (inv!11551 (tag!1963 (h!14478 (t!94295 rules!2621)))) (inv!11555 (transformation!1701 (h!14478 (t!94295 rules!2621)))) e!555832))))

(declare-fun b!844910 () Bool)

(declare-fun e!555833 () Bool)

(declare-fun tp!265817 () Bool)

(assert (=> b!844910 (= e!555833 (and e!555831 tp!265817))))

(assert (=> b!844563 (= tp!265752 e!555833)))

(assert (= b!844911 b!844912))

(assert (= b!844910 b!844911))

(assert (= (and b!844563 (is-Cons!9077 (t!94295 rules!2621))) b!844910))

(declare-fun m!1080079 () Bool)

(assert (=> b!844911 m!1080079))

(declare-fun m!1080081 () Bool)

(assert (=> b!844911 m!1080081))

(declare-fun b!844926 () Bool)

(declare-fun e!555836 () Bool)

(declare-fun tp!265833 () Bool)

(declare-fun tp!265834 () Bool)

(assert (=> b!844926 (= e!555836 (and tp!265833 tp!265834))))

(declare-fun b!844924 () Bool)

(declare-fun tp!265831 () Bool)

(declare-fun tp!265830 () Bool)

(assert (=> b!844924 (= e!555836 (and tp!265831 tp!265830))))

(declare-fun b!844925 () Bool)

(declare-fun tp!265832 () Bool)

(assert (=> b!844925 (= e!555836 tp!265832)))

(assert (=> b!844553 (= tp!265758 e!555836)))

(declare-fun b!844923 () Bool)

(declare-fun tp_is_empty!3947 () Bool)

(assert (=> b!844923 (= e!555836 tp_is_empty!3947)))

(assert (= (and b!844553 (is-ElementMatch!2134 (regex!1701 (rule!3124 separatorToken!297)))) b!844923))

(assert (= (and b!844553 (is-Concat!3902 (regex!1701 (rule!3124 separatorToken!297)))) b!844924))

(assert (= (and b!844553 (is-Star!2134 (regex!1701 (rule!3124 separatorToken!297)))) b!844925))

(assert (= (and b!844553 (is-Union!2134 (regex!1701 (rule!3124 separatorToken!297)))) b!844926))

(declare-fun b!844930 () Bool)

(declare-fun e!555837 () Bool)

(declare-fun tp!265838 () Bool)

(declare-fun tp!265839 () Bool)

(assert (=> b!844930 (= e!555837 (and tp!265838 tp!265839))))

(declare-fun b!844928 () Bool)

(declare-fun tp!265836 () Bool)

(declare-fun tp!265835 () Bool)

(assert (=> b!844928 (= e!555837 (and tp!265836 tp!265835))))

(declare-fun b!844929 () Bool)

(declare-fun tp!265837 () Bool)

(assert (=> b!844929 (= e!555837 tp!265837)))

(assert (=> b!844554 (= tp!265750 e!555837)))

(declare-fun b!844927 () Bool)

(assert (=> b!844927 (= e!555837 tp_is_empty!3947)))

(assert (= (and b!844554 (is-ElementMatch!2134 (regex!1701 (h!14478 rules!2621)))) b!844927))

(assert (= (and b!844554 (is-Concat!3902 (regex!1701 (h!14478 rules!2621)))) b!844928))

(assert (= (and b!844554 (is-Star!2134 (regex!1701 (h!14478 rules!2621)))) b!844929))

(assert (= (and b!844554 (is-Union!2134 (regex!1701 (h!14478 rules!2621)))) b!844930))

(declare-fun b!844934 () Bool)

(declare-fun e!555838 () Bool)

(declare-fun tp!265843 () Bool)

(declare-fun tp!265844 () Bool)

(assert (=> b!844934 (= e!555838 (and tp!265843 tp!265844))))

(declare-fun b!844932 () Bool)

(declare-fun tp!265841 () Bool)

(declare-fun tp!265840 () Bool)

(assert (=> b!844932 (= e!555838 (and tp!265841 tp!265840))))

(declare-fun b!844933 () Bool)

(declare-fun tp!265842 () Bool)

(assert (=> b!844933 (= e!555838 tp!265842)))

(assert (=> b!844556 (= tp!265753 e!555838)))

(declare-fun b!844931 () Bool)

(assert (=> b!844931 (= e!555838 tp_is_empty!3947)))

(assert (= (and b!844556 (is-ElementMatch!2134 (regex!1701 (rule!3124 (h!14477 l!5107))))) b!844931))

(assert (= (and b!844556 (is-Concat!3902 (regex!1701 (rule!3124 (h!14477 l!5107))))) b!844932))

(assert (= (and b!844556 (is-Star!2134 (regex!1701 (rule!3124 (h!14477 l!5107))))) b!844933))

(assert (= (and b!844556 (is-Union!2134 (regex!1701 (rule!3124 (h!14477 l!5107))))) b!844934))

(declare-fun b!844948 () Bool)

(declare-fun b_free!25337 () Bool)

(declare-fun b_next!25401 () Bool)

(assert (=> b!844948 (= b_free!25337 (not b_next!25401))))

(declare-fun tp!265856 () Bool)

(declare-fun b_and!73455 () Bool)

(assert (=> b!844948 (= tp!265856 b_and!73455)))

(declare-fun b_free!25339 () Bool)

(declare-fun b_next!25403 () Bool)

(assert (=> b!844948 (= b_free!25339 (not b_next!25403))))

(declare-fun t!94328 () Bool)

(declare-fun tb!58671 () Bool)

(assert (=> (and b!844948 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 (t!94294 l!5107))))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297)))) t!94328) tb!58671))

(declare-fun result!68010 () Bool)

(assert (= result!68010 result!67978))

(assert (=> b!844646 t!94328))

(declare-fun t!94330 () Bool)

(declare-fun tb!58673 () Bool)

(assert (=> (and b!844948 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 (t!94294 l!5107))))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107))))) t!94330) tb!58673))

(declare-fun result!68012 () Bool)

(assert (= result!68012 result!67994))

(assert (=> b!844864 t!94330))

(declare-fun b_and!73457 () Bool)

(declare-fun tp!265857 () Bool)

(assert (=> b!844948 (= tp!265857 (and (=> t!94328 result!68010) (=> t!94330 result!68012) b_and!73457))))

(declare-fun b!844947 () Bool)

(declare-fun e!555855 () Bool)

(declare-fun e!555852 () Bool)

(declare-fun tp!265859 () Bool)

(assert (=> b!844947 (= e!555855 (and tp!265859 (inv!11551 (tag!1963 (rule!3124 (h!14477 (t!94294 l!5107))))) (inv!11555 (transformation!1701 (rule!3124 (h!14477 (t!94294 l!5107))))) e!555852))))

(declare-fun tp!265858 () Bool)

(declare-fun b!844946 () Bool)

(declare-fun e!555853 () Bool)

(assert (=> b!844946 (= e!555853 (and (inv!21 (value!55179 (h!14477 (t!94294 l!5107)))) e!555855 tp!265858))))

(declare-fun tp!265855 () Bool)

(declare-fun e!555854 () Bool)

(declare-fun b!844945 () Bool)

(assert (=> b!844945 (= e!555854 (and (inv!11554 (h!14477 (t!94294 l!5107))) e!555853 tp!265855))))

(assert (=> b!844547 (= tp!265757 e!555854)))

(assert (=> b!844948 (= e!555852 (and tp!265856 tp!265857))))

(assert (= b!844947 b!844948))

(assert (= b!844946 b!844947))

(assert (= b!844945 b!844946))

(assert (= (and b!844547 (is-Cons!9076 (t!94294 l!5107))) b!844945))

(declare-fun m!1080083 () Bool)

(assert (=> b!844947 m!1080083))

(declare-fun m!1080085 () Bool)

(assert (=> b!844947 m!1080085))

(declare-fun m!1080087 () Bool)

(assert (=> b!844946 m!1080087))

(declare-fun m!1080089 () Bool)

(assert (=> b!844945 m!1080089))

(declare-fun b!844953 () Bool)

(declare-fun e!555859 () Bool)

(declare-fun tp!265862 () Bool)

(assert (=> b!844953 (= e!555859 (and tp_is_empty!3947 tp!265862))))

(assert (=> b!844557 (= tp!265749 e!555859)))

(assert (= (and b!844557 (is-Cons!9075 (originalCharacters!2257 separatorToken!297))) b!844953))

(declare-fun b!844954 () Bool)

(declare-fun e!555860 () Bool)

(declare-fun tp!265863 () Bool)

(assert (=> b!844954 (= e!555860 (and tp_is_empty!3947 tp!265863))))

(assert (=> b!844548 (= tp!265754 e!555860)))

(assert (= (and b!844548 (is-Cons!9075 (originalCharacters!2257 (h!14477 l!5107)))) b!844954))

(declare-fun b_lambda!27927 () Bool)

(assert (= b_lambda!27919 (or (and b!844569 b_free!25319 (= (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))))) (and b!844948 b_free!25339 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 (t!94294 l!5107))))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))))) (and b!844560 b_free!25315) (and b!844912 b_free!25335 (= (toChars!2585 (transformation!1701 (h!14478 (t!94295 rules!2621)))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))))) (and b!844566 b_free!25311 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))) (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))))) b_lambda!27927)))

(declare-fun b_lambda!27929 () Bool)

(assert (= b_lambda!27921 (or b!844561 b_lambda!27929)))

(declare-fun bs!230382 () Bool)

(declare-fun d!263175 () Bool)

(assert (= bs!230382 (and d!263175 b!844561)))

(assert (=> bs!230382 (= (dynLambda!4201 lambda!25151 (h!14477 l!5107)) (not (isSeparator!1701 (rule!3124 (h!14477 l!5107)))))))

(assert (=> b!844687 d!263175))

(declare-fun b_lambda!27931 () Bool)

(assert (= b_lambda!27925 (or (and b!844566 b_free!25311) (and b!844948 b_free!25339 (= (toChars!2585 (transformation!1701 (rule!3124 (h!14477 (t!94294 l!5107))))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))))) (and b!844912 b_free!25335 (= (toChars!2585 (transformation!1701 (h!14478 (t!94295 rules!2621)))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))))) (and b!844569 b_free!25319 (= (toChars!2585 (transformation!1701 (h!14478 rules!2621))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))))) (and b!844560 b_free!25315 (= (toChars!2585 (transformation!1701 (rule!3124 separatorToken!297))) (toChars!2585 (transformation!1701 (rule!3124 (h!14477 l!5107)))))) b_lambda!27931)))

(push 1)

(assert (not b!844925))

(assert (not d!263171))

(assert (not b_next!25375))

(assert (not b!844697))

(assert (not b_lambda!27927))

(assert (not tb!58649))

(assert (not d!263169))

(assert (not d!263119))

(assert (not b!844752))

(assert tp_is_empty!3947)

(assert (not b_next!25399))

(assert (not b_next!25381))

(assert (not b!844888))

(assert (not d!263129))

(assert (not d!263173))

(assert (not b!844928))

(assert (not b!844815))

(assert (not b!844946))

(assert (not b!844857))

(assert (not tb!58661))

(assert (not d!263097))

(assert (not b_next!25397))

(assert (not b!844892))

(assert b_and!73457)

(assert (not d!263123))

(assert (not b!844924))

(assert (not b!844886))

(assert (not b_next!25403))

(assert b_and!73445)

(assert (not b!844865))

(assert (not b!844883))

(assert (not b!844646))

(assert (not b!844829))

(assert b_and!73451)

(assert (not b!844929))

(assert b_and!73455)

(assert (not b!844885))

(assert (not b!844954))

(assert (not b!844932))

(assert (not b!844934))

(assert (not b!844910))

(assert (not b!844945))

(assert (not b!844881))

(assert (not b!844693))

(assert (not b!844889))

(assert (not d!263091))

(assert (not b!844647))

(assert (not b!844673))

(assert (not b!844953))

(assert (not b!844753))

(assert (not b!844859))

(assert (not b!844739))

(assert (not b!844677))

(assert (not b!844676))

(assert (not b!844680))

(assert (not d!263083))

(assert (not b!844878))

(assert (not b!844895))

(assert (not b!844824))

(assert (not d!263141))

(assert (not b_lambda!27931))

(assert (not b_next!25379))

(assert (not b_next!25377))

(assert (not b!844652))

(assert (not b!844738))

(assert (not b!844947))

(assert (not b!844933))

(assert (not b!844754))

(assert (not b!844751))

(assert (not b!844899))

(assert (not b!844911))

(assert (not b!844700))

(assert b_and!73413)

(assert (not d!263163))

(assert (not b_next!25401))

(assert (not b!844866))

(assert (not b!844880))

(assert (not b_next!25373))

(assert b_and!73453)

(assert (not b!844930))

(assert (not d!263161))

(assert (not b!844926))

(assert b_and!73447)

(assert (not b!844737))

(assert (not b_lambda!27929))

(assert (not b!844861))

(assert (not d!263079))

(assert (not b!844694))

(assert (not b!844682))

(assert (not b!844814))

(assert (not b!844864))

(assert (not d!263121))

(assert (not d!263135))

(assert (not b_next!25383))

(assert (not d!263139))

(assert b_and!73417)

(assert (not b!844858))

(assert (not b!844901))

(assert (not b!844688))

(assert (not b!844887))

(assert (not d!263117))

(assert b_and!73449)

(assert (not b!844860))

(assert b_and!73409)

(assert (not b!844896))

(assert (not b!844856))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25375))

(assert (not b_next!25397))

(assert b_and!73457)

(assert b_and!73413)

(assert (not b_next!25401))

(assert (not b_next!25399))

(assert (not b_next!25381))

(assert (not b_next!25403))

(assert b_and!73445)

(assert b_and!73451)

(assert b_and!73455)

(assert (not b_next!25379))

(assert (not b_next!25377))

(assert (not b_next!25373))

(assert b_and!73453)

(assert b_and!73447)

(assert (not b_next!25383))

(assert b_and!73417)

(assert b_and!73449)

(assert b_and!73409)

(check-sat)

(pop 1)


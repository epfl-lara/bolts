; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757320 () Bool)

(assert start!757320)

(declare-fun b!8043646 () Bool)

(declare-fun b_free!136047 () Bool)

(declare-fun b_next!136837 () Bool)

(assert (=> b!8043646 (= b_free!136047 (not b_next!136837))))

(declare-fun tp!2410430 () Bool)

(declare-fun b_and!354483 () Bool)

(assert (=> b!8043646 (= tp!2410430 b_and!354483)))

(declare-fun b_free!136049 () Bool)

(declare-fun b_next!136839 () Bool)

(assert (=> b!8043646 (= b_free!136049 (not b_next!136839))))

(declare-fun tp!2410428 () Bool)

(declare-fun b_and!354485 () Bool)

(assert (=> b!8043646 (= tp!2410428 b_and!354485)))

(declare-fun b!8043645 () Bool)

(declare-fun b_free!136051 () Bool)

(declare-fun b_next!136841 () Bool)

(assert (=> b!8043645 (= b_free!136051 (not b_next!136841))))

(declare-fun tp!2410437 () Bool)

(declare-fun b_and!354487 () Bool)

(assert (=> b!8043645 (= tp!2410437 b_and!354487)))

(declare-fun b_free!136053 () Bool)

(declare-fun b_next!136843 () Bool)

(assert (=> b!8043645 (= b_free!136053 (not b_next!136843))))

(declare-fun tp!2410432 () Bool)

(declare-fun b_and!354489 () Bool)

(assert (=> b!8043645 (= tp!2410432 b_and!354489)))

(declare-fun b!8043650 () Bool)

(declare-fun b_free!136055 () Bool)

(declare-fun b_next!136845 () Bool)

(assert (=> b!8043650 (= b_free!136055 (not b_next!136845))))

(declare-fun tp!2410433 () Bool)

(declare-fun b_and!354491 () Bool)

(assert (=> b!8043650 (= tp!2410433 b_and!354491)))

(declare-fun b_free!136057 () Bool)

(declare-fun b_next!136847 () Bool)

(assert (=> b!8043650 (= b_free!136057 (not b_next!136847))))

(declare-fun tp!2410431 () Bool)

(declare-fun b_and!354493 () Bool)

(assert (=> b!8043650 (= tp!2410431 b_and!354493)))

(declare-datatypes ((String!85003 0))(
  ( (String!85004 (value!291731 String)) )
))
(declare-datatypes ((C!43932 0))(
  ( (C!43933 (val!32742 Int)) )
))
(declare-datatypes ((List!75326 0))(
  ( (Nil!75200) (Cons!75200 (h!81648 C!43932) (t!391096 List!75326)) )
))
(declare-datatypes ((IArray!32049 0))(
  ( (IArray!32050 (innerList!16082 List!75326)) )
))
(declare-datatypes ((Conc!15994 0))(
  ( (Node!15994 (left!57314 Conc!15994) (right!57644 Conc!15994) (csize!32218 Int) (cheight!16205 Int)) (Leaf!30667 (xs!19392 IArray!32049) (csize!32219 Int)) (Empty!15994) )
))
(declare-datatypes ((List!75327 0))(
  ( (Nil!75201) (Cons!75201 (h!81649 (_ BitVec 16)) (t!391097 List!75327)) )
))
(declare-datatypes ((Regex!21797 0))(
  ( (ElementMatch!21797 (c!1475255 C!43932)) (Concat!30843 (regOne!44106 Regex!21797) (regTwo!44106 Regex!21797)) (EmptyExpr!21797) (Star!21797 (reg!22126 Regex!21797)) (EmptyLang!21797) (Union!21797 (regOne!44107 Regex!21797) (regTwo!44107 Regex!21797)) )
))
(declare-datatypes ((TokenValue!9046 0))(
  ( (FloatLiteralValue!18092 (text!63767 List!75327)) (TokenValueExt!9045 (__x!35373 Int)) (Broken!45230 (value!291732 List!75327)) (Object!9171) (End!9046) (Def!9046) (Underscore!9046) (Match!9046) (Else!9046) (Error!9046) (Case!9046) (If!9046) (Extends!9046) (Abstract!9046) (Class!9046) (Val!9046) (DelimiterValue!18092 (del!9106 List!75327)) (KeywordValue!9052 (value!291733 List!75327)) (CommentValue!18092 (value!291734 List!75327)) (WhitespaceValue!18092 (value!291735 List!75327)) (IndentationValue!9046 (value!291736 List!75327)) (String!85005) (Int32!9046) (Broken!45231 (value!291737 List!75327)) (Boolean!9047) (Unit!171075) (OperatorValue!9049 (op!9106 List!75327)) (IdentifierValue!18092 (value!291738 List!75327)) (IdentifierValue!18093 (value!291739 List!75327)) (WhitespaceValue!18093 (value!291740 List!75327)) (True!18092) (False!18092) (Broken!45232 (value!291741 List!75327)) (Broken!45233 (value!291742 List!75327)) (True!18093) (RightBrace!9046) (RightBracket!9046) (Colon!9046) (Null!9046) (Comma!9046) (LeftBracket!9046) (False!18093) (LeftBrace!9046) (ImaginaryLiteralValue!9046 (text!63768 List!75327)) (StringLiteralValue!27138 (value!291743 List!75327)) (EOFValue!9046 (value!291744 List!75327)) (IdentValue!9046 (value!291745 List!75327)) (DelimiterValue!18093 (value!291746 List!75327)) (DedentValue!9046 (value!291747 List!75327)) (NewLineValue!9046 (value!291748 List!75327)) (IntegerValue!27138 (value!291749 (_ BitVec 32)) (text!63769 List!75327)) (IntegerValue!27139 (value!291750 Int) (text!63770 List!75327)) (Times!9046) (Or!9046) (Equal!9046) (Minus!9046) (Broken!45234 (value!291751 List!75327)) (And!9046) (Div!9046) (LessEqual!9046) (Mod!9046) (Concat!30844) (Not!9046) (Plus!9046) (SpaceValue!9046 (value!291752 List!75327)) (IntegerValue!27140 (value!291753 Int) (text!63771 List!75327)) (StringLiteralValue!27139 (text!63772 List!75327)) (FloatLiteralValue!18093 (text!63773 List!75327)) (BytesLiteralValue!9046 (value!291754 List!75327)) (CommentValue!18093 (value!291755 List!75327)) (StringLiteralValue!27140 (value!291756 List!75327)) (ErrorTokenValue!9046 (msg!9107 List!75327)) )
))
(declare-datatypes ((BalanceConc!30944 0))(
  ( (BalanceConc!30945 (c!1475256 Conc!15994)) )
))
(declare-datatypes ((TokenValueInjection!17400 0))(
  ( (TokenValueInjection!17401 (toValue!11801 Int) (toChars!11660 Int)) )
))
(declare-datatypes ((Rule!17252 0))(
  ( (Rule!17253 (regex!8726 Regex!21797) (tag!9590 String!85003) (isSeparator!8726 Bool) (transformation!8726 TokenValueInjection!17400)) )
))
(declare-datatypes ((List!75328 0))(
  ( (Nil!75202) (Cons!75202 (h!81650 Rule!17252) (t!391098 List!75328)) )
))
(declare-fun rules!4166 () List!75328)

(declare-fun e!4738326 () Bool)

(declare-fun e!4738330 () Bool)

(declare-fun b!8043642 () Bool)

(declare-fun tp!2410435 () Bool)

(declare-fun inv!96982 (String!85003) Bool)

(declare-fun inv!96984 (TokenValueInjection!17400) Bool)

(assert (=> b!8043642 (= e!4738330 (and tp!2410435 (inv!96982 (tag!9590 (h!81650 rules!4166))) (inv!96984 (transformation!8726 (h!81650 rules!4166))) e!4738326))))

(declare-fun b!8043643 () Bool)

(declare-fun e!4738335 () Bool)

(assert (=> b!8043643 (= e!4738335 (not true))))

(declare-fun lt!2722478 () Bool)

(declare-fun rSep!153 () Rule!17252)

(declare-fun contains!21037 (List!75328 Rule!17252) Bool)

(assert (=> b!8043643 (= lt!2722478 (contains!21037 (t!391098 rules!4166) rSep!153))))

(declare-datatypes ((LexerInterface!8316 0))(
  ( (LexerInterfaceExt!8313 (__x!35374 Int)) (Lexer!8314) )
))
(declare-fun thiss!27104 () LexerInterface!8316)

(declare-fun rulesInvariant!6784 (LexerInterface!8316 List!75328) Bool)

(assert (=> b!8043643 (rulesInvariant!6784 thiss!27104 (t!391098 rules!4166))))

(declare-datatypes ((Unit!171076 0))(
  ( (Unit!171077) )
))
(declare-fun lt!2722477 () Unit!171076)

(declare-fun lemmaInvariantOnRulesThenOnTail!892 (LexerInterface!8316 Rule!17252 List!75328) Unit!171076)

(assert (=> b!8043643 (= lt!2722477 (lemmaInvariantOnRulesThenOnTail!892 thiss!27104 (h!81650 rules!4166) (t!391098 rules!4166)))))

(declare-fun b!8043644 () Bool)

(declare-fun res!3179587 () Bool)

(assert (=> b!8043644 (=> (not res!3179587) (not e!4738335))))

(assert (=> b!8043644 (= res!3179587 (rulesInvariant!6784 thiss!27104 rules!4166))))

(declare-fun e!4738325 () Bool)

(assert (=> b!8043645 (= e!4738325 (and tp!2410437 tp!2410432))))

(assert (=> b!8043646 (= e!4738326 (and tp!2410430 tp!2410428))))

(declare-fun b!8043647 () Bool)

(declare-fun e!4738329 () Bool)

(declare-fun tp!2410436 () Bool)

(assert (=> b!8043647 (= e!4738329 (and e!4738330 tp!2410436))))

(declare-fun e!4738333 () Bool)

(declare-fun tp!2410434 () Bool)

(declare-fun e!4738334 () Bool)

(declare-fun b!8043649 () Bool)

(assert (=> b!8043649 (= e!4738333 (and tp!2410434 (inv!96982 (tag!9590 rSep!153)) (inv!96984 (transformation!8726 rSep!153)) e!4738334))))

(assert (=> b!8043650 (= e!4738334 (and tp!2410433 tp!2410431))))

(declare-fun b!8043651 () Bool)

(declare-fun res!3179585 () Bool)

(assert (=> b!8043651 (=> (not res!3179585) (not e!4738335))))

(declare-fun c!6885 () C!43932)

(declare-fun contains!21038 (List!75326 C!43932) Bool)

(declare-fun usedCharacters!1304 (Regex!21797) List!75326)

(assert (=> b!8043651 (= res!3179585 (contains!21038 (usedCharacters!1304 (regex!8726 rSep!153)) c!6885))))

(declare-fun b!8043652 () Bool)

(declare-fun res!3179589 () Bool)

(assert (=> b!8043652 (=> (not res!3179589) (not e!4738335))))

(declare-fun rNSep!153 () Rule!17252)

(declare-fun ruleDisjointCharsFromAllFromOtherType!1000 (Rule!17252 List!75328) Bool)

(assert (=> b!8043652 (= res!3179589 (ruleDisjointCharsFromAllFromOtherType!1000 rNSep!153 rules!4166))))

(declare-fun b!8043653 () Bool)

(declare-fun res!3179590 () Bool)

(assert (=> b!8043653 (=> (not res!3179590) (not e!4738335))))

(assert (=> b!8043653 (= res!3179590 (contains!21037 rules!4166 rSep!153))))

(declare-fun b!8043654 () Bool)

(declare-fun res!3179584 () Bool)

(assert (=> b!8043654 (=> (not res!3179584) (not e!4738335))))

(get-info :version)

(assert (=> b!8043654 (= res!3179584 (and (or (not ((_ is Cons!75202) rules!4166)) (not (= (h!81650 rules!4166) rSep!153))) ((_ is Cons!75202) rules!4166)))))

(declare-fun b!8043655 () Bool)

(declare-fun tp!2410429 () Bool)

(declare-fun e!4738328 () Bool)

(assert (=> b!8043655 (= e!4738328 (and tp!2410429 (inv!96982 (tag!9590 rNSep!153)) (inv!96984 (transformation!8726 rNSep!153)) e!4738325))))

(declare-fun b!8043648 () Bool)

(declare-fun res!3179588 () Bool)

(assert (=> b!8043648 (=> (not res!3179588) (not e!4738335))))

(assert (=> b!8043648 (= res!3179588 (and (not (isSeparator!8726 rNSep!153)) (isSeparator!8726 rSep!153)))))

(declare-fun res!3179586 () Bool)

(assert (=> start!757320 (=> (not res!3179586) (not e!4738335))))

(assert (=> start!757320 (= res!3179586 ((_ is Lexer!8314) thiss!27104))))

(assert (=> start!757320 e!4738335))

(assert (=> start!757320 e!4738329))

(declare-fun tp_is_empty!54589 () Bool)

(assert (=> start!757320 tp_is_empty!54589))

(assert (=> start!757320 true))

(assert (=> start!757320 e!4738328))

(assert (=> start!757320 e!4738333))

(assert (= (and start!757320 res!3179586) b!8043644))

(assert (= (and b!8043644 res!3179587) b!8043653))

(assert (= (and b!8043653 res!3179590) b!8043651))

(assert (= (and b!8043651 res!3179585) b!8043648))

(assert (= (and b!8043648 res!3179588) b!8043652))

(assert (= (and b!8043652 res!3179589) b!8043654))

(assert (= (and b!8043654 res!3179584) b!8043643))

(assert (= b!8043642 b!8043646))

(assert (= b!8043647 b!8043642))

(assert (= (and start!757320 ((_ is Cons!75202) rules!4166)) b!8043647))

(assert (= b!8043655 b!8043645))

(assert (= start!757320 b!8043655))

(assert (= b!8043649 b!8043650))

(assert (= start!757320 b!8043649))

(declare-fun m!8396906 () Bool)

(assert (=> b!8043649 m!8396906))

(declare-fun m!8396908 () Bool)

(assert (=> b!8043649 m!8396908))

(declare-fun m!8396910 () Bool)

(assert (=> b!8043644 m!8396910))

(declare-fun m!8396912 () Bool)

(assert (=> b!8043655 m!8396912))

(declare-fun m!8396914 () Bool)

(assert (=> b!8043655 m!8396914))

(declare-fun m!8396916 () Bool)

(assert (=> b!8043651 m!8396916))

(assert (=> b!8043651 m!8396916))

(declare-fun m!8396918 () Bool)

(assert (=> b!8043651 m!8396918))

(declare-fun m!8396920 () Bool)

(assert (=> b!8043653 m!8396920))

(declare-fun m!8396922 () Bool)

(assert (=> b!8043642 m!8396922))

(declare-fun m!8396924 () Bool)

(assert (=> b!8043642 m!8396924))

(declare-fun m!8396926 () Bool)

(assert (=> b!8043652 m!8396926))

(declare-fun m!8396928 () Bool)

(assert (=> b!8043643 m!8396928))

(declare-fun m!8396930 () Bool)

(assert (=> b!8043643 m!8396930))

(declare-fun m!8396932 () Bool)

(assert (=> b!8043643 m!8396932))

(check-sat (not b!8043647) b_and!354491 b_and!354485 (not b_next!136837) (not b!8043651) b_and!354483 b_and!354487 (not b_next!136847) (not b!8043653) (not b!8043652) (not b!8043643) (not b_next!136841) (not b!8043649) tp_is_empty!54589 (not b!8043644) b_and!354489 (not b!8043642) (not b!8043655) (not b_next!136839) (not b_next!136845) b_and!354493 (not b_next!136843))
(check-sat (not b_next!136847) b_and!354491 (not b_next!136841) b_and!354489 b_and!354485 (not b_next!136837) (not b_next!136839) b_and!354483 b_and!354487 (not b_next!136845) b_and!354493 (not b_next!136843))

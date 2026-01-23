; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756940 () Bool)

(assert start!756940)

(declare-fun b!8039733 () Bool)

(declare-fun b_free!135427 () Bool)

(declare-fun b_next!136217 () Bool)

(assert (=> b!8039733 (= b_free!135427 (not b_next!136217))))

(declare-fun tp!2408238 () Bool)

(declare-fun b_and!353863 () Bool)

(assert (=> b!8039733 (= tp!2408238 b_and!353863)))

(declare-fun b_free!135429 () Bool)

(declare-fun b_next!136219 () Bool)

(assert (=> b!8039733 (= b_free!135429 (not b_next!136219))))

(declare-fun tp!2408230 () Bool)

(declare-fun b_and!353865 () Bool)

(assert (=> b!8039733 (= tp!2408230 b_and!353865)))

(declare-fun b!8039741 () Bool)

(declare-fun b_free!135431 () Bool)

(declare-fun b_next!136221 () Bool)

(assert (=> b!8039741 (= b_free!135431 (not b_next!136221))))

(declare-fun tp!2408234 () Bool)

(declare-fun b_and!353867 () Bool)

(assert (=> b!8039741 (= tp!2408234 b_and!353867)))

(declare-fun b_free!135433 () Bool)

(declare-fun b_next!136223 () Bool)

(assert (=> b!8039741 (= b_free!135433 (not b_next!136223))))

(declare-fun tp!2408228 () Bool)

(declare-fun b_and!353869 () Bool)

(assert (=> b!8039741 (= tp!2408228 b_and!353869)))

(declare-fun b!8039742 () Bool)

(declare-fun b_free!135435 () Bool)

(declare-fun b_next!136225 () Bool)

(assert (=> b!8039742 (= b_free!135435 (not b_next!136225))))

(declare-fun tp!2408239 () Bool)

(declare-fun b_and!353871 () Bool)

(assert (=> b!8039742 (= tp!2408239 b_and!353871)))

(declare-fun b_free!135437 () Bool)

(declare-fun b_next!136227 () Bool)

(assert (=> b!8039742 (= b_free!135437 (not b_next!136227))))

(declare-fun tp!2408236 () Bool)

(declare-fun b_and!353873 () Bool)

(assert (=> b!8039742 (= tp!2408236 b_and!353873)))

(declare-fun b!8039734 () Bool)

(declare-fun b_free!135439 () Bool)

(declare-fun b_next!136229 () Bool)

(assert (=> b!8039734 (= b_free!135439 (not b_next!136229))))

(declare-fun tp!2408241 () Bool)

(declare-fun b_and!353875 () Bool)

(assert (=> b!8039734 (= tp!2408241 b_and!353875)))

(declare-fun b_free!135441 () Bool)

(declare-fun b_next!136231 () Bool)

(assert (=> b!8039734 (= b_free!135441 (not b_next!136231))))

(declare-fun tp!2408233 () Bool)

(declare-fun b_and!353877 () Bool)

(assert (=> b!8039734 (= tp!2408233 b_and!353877)))

(declare-fun b!8039731 () Bool)

(declare-fun res!3177986 () Bool)

(declare-fun e!4735551 () Bool)

(assert (=> b!8039731 (=> (not res!3177986) (not e!4735551))))

(declare-datatypes ((LexerInterface!8280 0))(
  ( (LexerInterfaceExt!8277 (__x!35301 Int)) (Lexer!8278) )
))
(declare-fun thiss!27054 () LexerInterface!8280)

(declare-datatypes ((List!75202 0))(
  ( (Nil!75076) (Cons!75076 (h!81524 (_ BitVec 16)) (t!390972 List!75202)) )
))
(declare-datatypes ((TokenValue!9010 0))(
  ( (FloatLiteralValue!18020 (text!63515 List!75202)) (TokenValueExt!9009 (__x!35302 Int)) (Broken!45050 (value!290741 List!75202)) (Object!9135) (End!9010) (Def!9010) (Underscore!9010) (Match!9010) (Else!9010) (Error!9010) (Case!9010) (If!9010) (Extends!9010) (Abstract!9010) (Class!9010) (Val!9010) (DelimiterValue!18020 (del!9070 List!75202)) (KeywordValue!9016 (value!290742 List!75202)) (CommentValue!18020 (value!290743 List!75202)) (WhitespaceValue!18020 (value!290744 List!75202)) (IndentationValue!9010 (value!290745 List!75202)) (String!84823) (Int32!9010) (Broken!45051 (value!290746 List!75202)) (Boolean!9011) (Unit!171013) (OperatorValue!9013 (op!9070 List!75202)) (IdentifierValue!18020 (value!290747 List!75202)) (IdentifierValue!18021 (value!290748 List!75202)) (WhitespaceValue!18021 (value!290749 List!75202)) (True!18020) (False!18020) (Broken!45052 (value!290750 List!75202)) (Broken!45053 (value!290751 List!75202)) (True!18021) (RightBrace!9010) (RightBracket!9010) (Colon!9010) (Null!9010) (Comma!9010) (LeftBracket!9010) (False!18021) (LeftBrace!9010) (ImaginaryLiteralValue!9010 (text!63516 List!75202)) (StringLiteralValue!27030 (value!290752 List!75202)) (EOFValue!9010 (value!290753 List!75202)) (IdentValue!9010 (value!290754 List!75202)) (DelimiterValue!18021 (value!290755 List!75202)) (DedentValue!9010 (value!290756 List!75202)) (NewLineValue!9010 (value!290757 List!75202)) (IntegerValue!27030 (value!290758 (_ BitVec 32)) (text!63517 List!75202)) (IntegerValue!27031 (value!290759 Int) (text!63518 List!75202)) (Times!9010) (Or!9010) (Equal!9010) (Minus!9010) (Broken!45054 (value!290760 List!75202)) (And!9010) (Div!9010) (LessEqual!9010) (Mod!9010) (Concat!30771) (Not!9010) (Plus!9010) (SpaceValue!9010 (value!290761 List!75202)) (IntegerValue!27032 (value!290762 Int) (text!63519 List!75202)) (StringLiteralValue!27031 (text!63520 List!75202)) (FloatLiteralValue!18021 (text!63521 List!75202)) (BytesLiteralValue!9010 (value!290763 List!75202)) (CommentValue!18021 (value!290764 List!75202)) (StringLiteralValue!27032 (value!290765 List!75202)) (ErrorTokenValue!9010 (msg!9071 List!75202)) )
))
(declare-datatypes ((C!43860 0))(
  ( (C!43861 (val!32706 Int)) )
))
(declare-datatypes ((List!75203 0))(
  ( (Nil!75077) (Cons!75077 (h!81525 C!43860) (t!390973 List!75203)) )
))
(declare-datatypes ((IArray!31977 0))(
  ( (IArray!31978 (innerList!16046 List!75203)) )
))
(declare-datatypes ((Conc!15958 0))(
  ( (Node!15958 (left!57252 Conc!15958) (right!57582 Conc!15958) (csize!32146 Int) (cheight!16169 Int)) (Leaf!30613 (xs!19356 IArray!31977) (csize!32147 Int)) (Empty!15958) )
))
(declare-datatypes ((String!84824 0))(
  ( (String!84825 (value!290766 String)) )
))
(declare-datatypes ((BalanceConc!30872 0))(
  ( (BalanceConc!30873 (c!1474855 Conc!15958)) )
))
(declare-datatypes ((Regex!21761 0))(
  ( (ElementMatch!21761 (c!1474856 C!43860)) (Concat!30772 (regOne!44034 Regex!21761) (regTwo!44034 Regex!21761)) (EmptyExpr!21761) (Star!21761 (reg!22090 Regex!21761)) (EmptyLang!21761) (Union!21761 (regOne!44035 Regex!21761) (regTwo!44035 Regex!21761)) )
))
(declare-datatypes ((TokenValueInjection!17328 0))(
  ( (TokenValueInjection!17329 (toValue!11761 Int) (toChars!11620 Int)) )
))
(declare-datatypes ((Rule!17180 0))(
  ( (Rule!17181 (regex!8690 Regex!21761) (tag!9554 String!84824) (isSeparator!8690 Bool) (transformation!8690 TokenValueInjection!17328)) )
))
(declare-datatypes ((List!75204 0))(
  ( (Nil!75078) (Cons!75078 (h!81526 Rule!17180) (t!390974 List!75204)) )
))
(declare-fun rules!4142 () List!75204)

(declare-fun rulesInvariant!6748 (LexerInterface!8280 List!75204) Bool)

(assert (=> b!8039731 (= res!3177986 (rulesInvariant!6748 thiss!27054 rules!4142))))

(declare-fun b!8039732 () Bool)

(declare-fun e!4735544 () Bool)

(declare-fun e!4735543 () Bool)

(declare-fun tp!2408240 () Bool)

(declare-fun rNSep!142 () Rule!17180)

(declare-fun inv!96892 (String!84824) Bool)

(declare-fun inv!96894 (TokenValueInjection!17328) Bool)

(assert (=> b!8039732 (= e!4735544 (and tp!2408240 (inv!96892 (tag!9554 rNSep!142)) (inv!96894 (transformation!8690 rNSep!142)) e!4735543))))

(assert (=> b!8039733 (= e!4735543 (and tp!2408238 tp!2408230))))

(declare-fun e!4735547 () Bool)

(assert (=> b!8039734 (= e!4735547 (and tp!2408241 tp!2408233))))

(declare-fun b!8039735 () Bool)

(declare-fun res!3177985 () Bool)

(assert (=> b!8039735 (=> (not res!3177985) (not e!4735551))))

(declare-fun rSep!142 () Rule!17180)

(declare-fun contains!20963 (List!75204 Rule!17180) Bool)

(assert (=> b!8039735 (= res!3177985 (contains!20963 rules!4142 rSep!142))))

(declare-fun e!4735545 () Bool)

(declare-fun e!4735554 () Bool)

(declare-fun b!8039736 () Bool)

(declare-fun rulesRec!188 () List!75204)

(declare-fun tp!2408235 () Bool)

(assert (=> b!8039736 (= e!4735554 (and tp!2408235 (inv!96892 (tag!9554 (h!81526 rulesRec!188))) (inv!96894 (transformation!8690 (h!81526 rulesRec!188))) e!4735545))))

(declare-fun b!8039737 () Bool)

(declare-fun res!3177983 () Bool)

(assert (=> b!8039737 (=> (not res!3177983) (not e!4735551))))

(assert (=> b!8039737 (= res!3177983 (contains!20963 rulesRec!188 rNSep!142))))

(declare-fun b!8039738 () Bool)

(declare-fun e!4735552 () Bool)

(declare-fun tp!2408232 () Bool)

(assert (=> b!8039738 (= e!4735552 (and e!4735554 tp!2408232))))

(declare-fun b!8039739 () Bool)

(assert (=> b!8039739 (= e!4735551 false)))

(declare-fun lt!2722210 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!2050 (List!75204 List!75204) Bool)

(assert (=> b!8039739 (= lt!2722210 (sepAndNonSepRulesDisjointChars!2050 rules!4142 rulesRec!188))))

(declare-fun b!8039740 () Bool)

(declare-fun e!4735550 () Bool)

(declare-fun tp!2408229 () Bool)

(declare-fun e!4735557 () Bool)

(assert (=> b!8039740 (= e!4735550 (and tp!2408229 (inv!96892 (tag!9554 rSep!142)) (inv!96894 (transformation!8690 rSep!142)) e!4735557))))

(assert (=> b!8039741 (= e!4735557 (and tp!2408234 tp!2408228))))

(assert (=> b!8039742 (= e!4735545 (and tp!2408239 tp!2408236))))

(declare-fun b!8039744 () Bool)

(declare-fun res!3177984 () Bool)

(assert (=> b!8039744 (=> (not res!3177984) (not e!4735551))))

(assert (=> b!8039744 (= res!3177984 (contains!20963 rules!4142 rNSep!142))))

(declare-fun e!4735553 () Bool)

(declare-fun b!8039745 () Bool)

(declare-fun tp!2408231 () Bool)

(assert (=> b!8039745 (= e!4735553 (and tp!2408231 (inv!96892 (tag!9554 (h!81526 rules!4142))) (inv!96894 (transformation!8690 (h!81526 rules!4142))) e!4735547))))

(declare-fun res!3177987 () Bool)

(assert (=> start!756940 (=> (not res!3177987) (not e!4735551))))

(get-info :version)

(assert (=> start!756940 (= res!3177987 ((_ is Lexer!8278) thiss!27054))))

(assert (=> start!756940 e!4735551))

(assert (=> start!756940 true))

(declare-fun e!4735549 () Bool)

(assert (=> start!756940 e!4735549))

(assert (=> start!756940 e!4735550))

(assert (=> start!756940 e!4735552))

(assert (=> start!756940 e!4735544))

(declare-fun tp_is_empty!54517 () Bool)

(assert (=> start!756940 tp_is_empty!54517))

(declare-fun b!8039743 () Bool)

(declare-fun res!3177982 () Bool)

(assert (=> b!8039743 (=> (not res!3177982) (not e!4735551))))

(assert (=> b!8039743 (= res!3177982 (and (not (isSeparator!8690 rNSep!142)) (isSeparator!8690 rSep!142)))))

(declare-fun b!8039746 () Bool)

(declare-fun res!3177981 () Bool)

(assert (=> b!8039746 (=> (not res!3177981) (not e!4735551))))

(declare-fun c!6865 () C!43860)

(declare-fun contains!20964 (List!75203 C!43860) Bool)

(declare-fun usedCharacters!1268 (Regex!21761) List!75203)

(assert (=> b!8039746 (= res!3177981 (contains!20964 (usedCharacters!1268 (regex!8690 rSep!142)) c!6865))))

(declare-fun b!8039747 () Bool)

(declare-fun tp!2408237 () Bool)

(assert (=> b!8039747 (= e!4735549 (and e!4735553 tp!2408237))))

(assert (= (and start!756940 res!3177987) b!8039731))

(assert (= (and b!8039731 res!3177986) b!8039735))

(assert (= (and b!8039735 res!3177985) b!8039737))

(assert (= (and b!8039737 res!3177983) b!8039744))

(assert (= (and b!8039744 res!3177984) b!8039743))

(assert (= (and b!8039743 res!3177982) b!8039746))

(assert (= (and b!8039746 res!3177981) b!8039739))

(assert (= b!8039745 b!8039734))

(assert (= b!8039747 b!8039745))

(assert (= (and start!756940 ((_ is Cons!75078) rules!4142)) b!8039747))

(assert (= b!8039740 b!8039741))

(assert (= start!756940 b!8039740))

(assert (= b!8039736 b!8039742))

(assert (= b!8039738 b!8039736))

(assert (= (and start!756940 ((_ is Cons!75078) rulesRec!188)) b!8039738))

(assert (= b!8039732 b!8039733))

(assert (= start!756940 b!8039732))

(declare-fun m!8394556 () Bool)

(assert (=> b!8039744 m!8394556))

(declare-fun m!8394558 () Bool)

(assert (=> b!8039745 m!8394558))

(declare-fun m!8394560 () Bool)

(assert (=> b!8039745 m!8394560))

(declare-fun m!8394562 () Bool)

(assert (=> b!8039732 m!8394562))

(declare-fun m!8394564 () Bool)

(assert (=> b!8039732 m!8394564))

(declare-fun m!8394566 () Bool)

(assert (=> b!8039735 m!8394566))

(declare-fun m!8394568 () Bool)

(assert (=> b!8039740 m!8394568))

(declare-fun m!8394570 () Bool)

(assert (=> b!8039740 m!8394570))

(declare-fun m!8394572 () Bool)

(assert (=> b!8039731 m!8394572))

(declare-fun m!8394574 () Bool)

(assert (=> b!8039739 m!8394574))

(declare-fun m!8394576 () Bool)

(assert (=> b!8039736 m!8394576))

(declare-fun m!8394578 () Bool)

(assert (=> b!8039736 m!8394578))

(declare-fun m!8394580 () Bool)

(assert (=> b!8039737 m!8394580))

(declare-fun m!8394582 () Bool)

(assert (=> b!8039746 m!8394582))

(assert (=> b!8039746 m!8394582))

(declare-fun m!8394584 () Bool)

(assert (=> b!8039746 m!8394584))

(check-sat (not b!8039744) b_and!353875 b_and!353865 (not b!8039732) b_and!353877 b_and!353869 b_and!353871 (not b!8039737) (not b!8039739) b_and!353873 b_and!353867 tp_is_empty!54517 (not b_next!136217) (not b!8039735) (not b!8039736) (not b!8039731) (not b!8039746) (not b!8039747) (not b!8039738) (not b_next!136231) (not b_next!136219) (not b_next!136221) b_and!353863 (not b_next!136229) (not b_next!136223) (not b_next!136225) (not b!8039745) (not b_next!136227) (not b!8039740))
(check-sat b_and!353875 (not b_next!136231) b_and!353865 b_and!353877 b_and!353869 b_and!353871 b_and!353873 b_and!353867 (not b_next!136217) (not b_next!136227) (not b_next!136219) (not b_next!136221) b_and!353863 (not b_next!136229) (not b_next!136223) (not b_next!136225))

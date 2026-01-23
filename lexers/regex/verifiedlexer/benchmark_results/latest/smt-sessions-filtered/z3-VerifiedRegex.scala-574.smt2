; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16710 () Bool)

(assert start!16710)

(declare-fun b!155772 () Bool)

(declare-fun b_free!5777 () Bool)

(declare-fun b_next!5777 () Bool)

(assert (=> b!155772 (= b_free!5777 (not b_next!5777))))

(declare-fun tp!80232 () Bool)

(declare-fun b_and!9317 () Bool)

(assert (=> b!155772 (= tp!80232 b_and!9317)))

(declare-fun b_free!5779 () Bool)

(declare-fun b_next!5779 () Bool)

(assert (=> b!155772 (= b_free!5779 (not b_next!5779))))

(declare-fun tp!80234 () Bool)

(declare-fun b_and!9319 () Bool)

(assert (=> b!155772 (= tp!80234 b_and!9319)))

(declare-fun b!155774 () Bool)

(declare-fun b_free!5781 () Bool)

(declare-fun b_next!5781 () Bool)

(assert (=> b!155774 (= b_free!5781 (not b_next!5781))))

(declare-fun tp!80229 () Bool)

(declare-fun b_and!9321 () Bool)

(assert (=> b!155774 (= tp!80229 b_and!9321)))

(declare-fun b_free!5783 () Bool)

(declare-fun b_next!5783 () Bool)

(assert (=> b!155774 (= b_free!5783 (not b_next!5783))))

(declare-fun tp!80235 () Bool)

(declare-fun b_and!9323 () Bool)

(assert (=> b!155774 (= tp!80235 b_and!9323)))

(declare-fun b!155767 () Bool)

(declare-fun b_free!5785 () Bool)

(declare-fun b_next!5785 () Bool)

(assert (=> b!155767 (= b_free!5785 (not b_next!5785))))

(declare-fun tp!80223 () Bool)

(declare-fun b_and!9325 () Bool)

(assert (=> b!155767 (= tp!80223 b_and!9325)))

(declare-fun b_free!5787 () Bool)

(declare-fun b_next!5787 () Bool)

(assert (=> b!155767 (= b_free!5787 (not b_next!5787))))

(declare-fun tp!80225 () Bool)

(declare-fun b_and!9327 () Bool)

(assert (=> b!155767 (= tp!80225 b_and!9327)))

(declare-fun b!155765 () Bool)

(declare-fun tp!80231 () Bool)

(declare-datatypes ((List!2703 0))(
  ( (Nil!2693) (Cons!2693 (h!8090 (_ BitVec 16)) (t!25367 List!2703)) )
))
(declare-datatypes ((TokenValue!493 0))(
  ( (FloatLiteralValue!986 (text!3896 List!2703)) (TokenValueExt!492 (__x!2473 Int)) (Broken!2465 (value!17713 List!2703)) (Object!502) (End!493) (Def!493) (Underscore!493) (Match!493) (Else!493) (Error!493) (Case!493) (If!493) (Extends!493) (Abstract!493) (Class!493) (Val!493) (DelimiterValue!986 (del!553 List!2703)) (KeywordValue!499 (value!17714 List!2703)) (CommentValue!986 (value!17715 List!2703)) (WhitespaceValue!986 (value!17716 List!2703)) (IndentationValue!493 (value!17717 List!2703)) (String!3544) (Int32!493) (Broken!2466 (value!17718 List!2703)) (Boolean!494) (Unit!2123) (OperatorValue!496 (op!553 List!2703)) (IdentifierValue!986 (value!17719 List!2703)) (IdentifierValue!987 (value!17720 List!2703)) (WhitespaceValue!987 (value!17721 List!2703)) (True!986) (False!986) (Broken!2467 (value!17722 List!2703)) (Broken!2468 (value!17723 List!2703)) (True!987) (RightBrace!493) (RightBracket!493) (Colon!493) (Null!493) (Comma!493) (LeftBracket!493) (False!987) (LeftBrace!493) (ImaginaryLiteralValue!493 (text!3897 List!2703)) (StringLiteralValue!1479 (value!17724 List!2703)) (EOFValue!493 (value!17725 List!2703)) (IdentValue!493 (value!17726 List!2703)) (DelimiterValue!987 (value!17727 List!2703)) (DedentValue!493 (value!17728 List!2703)) (NewLineValue!493 (value!17729 List!2703)) (IntegerValue!1479 (value!17730 (_ BitVec 32)) (text!3898 List!2703)) (IntegerValue!1480 (value!17731 Int) (text!3899 List!2703)) (Times!493) (Or!493) (Equal!493) (Minus!493) (Broken!2469 (value!17732 List!2703)) (And!493) (Div!493) (LessEqual!493) (Mod!493) (Concat!1188) (Not!493) (Plus!493) (SpaceValue!493 (value!17733 List!2703)) (IntegerValue!1481 (value!17734 Int) (text!3900 List!2703)) (StringLiteralValue!1480 (text!3901 List!2703)) (FloatLiteralValue!987 (text!3902 List!2703)) (BytesLiteralValue!493 (value!17735 List!2703)) (CommentValue!987 (value!17736 List!2703)) (StringLiteralValue!1481 (value!17737 List!2703)) (ErrorTokenValue!493 (msg!554 List!2703)) )
))
(declare-datatypes ((C!2312 0))(
  ( (C!2313 (val!1042 Int)) )
))
(declare-datatypes ((List!2704 0))(
  ( (Nil!2694) (Cons!2694 (h!8091 C!2312) (t!25368 List!2704)) )
))
(declare-datatypes ((IArray!1529 0))(
  ( (IArray!1530 (innerList!822 List!2704)) )
))
(declare-datatypes ((Conc!764 0))(
  ( (Node!764 (left!2034 Conc!764) (right!2364 Conc!764) (csize!1758 Int) (cheight!975 Int)) (Leaf!1339 (xs!3359 IArray!1529) (csize!1759 Int)) (Empty!764) )
))
(declare-datatypes ((BalanceConc!1536 0))(
  ( (BalanceConc!1537 (c!31319 Conc!764)) )
))
(declare-datatypes ((Regex!695 0))(
  ( (ElementMatch!695 (c!31320 C!2312)) (Concat!1189 (regOne!1902 Regex!695) (regTwo!1902 Regex!695)) (EmptyExpr!695) (Star!695 (reg!1024 Regex!695)) (EmptyLang!695) (Union!695 (regOne!1903 Regex!695) (regTwo!1903 Regex!695)) )
))
(declare-datatypes ((String!3545 0))(
  ( (String!3546 (value!17738 String)) )
))
(declare-datatypes ((TokenValueInjection!758 0))(
  ( (TokenValueInjection!759 (toValue!1114 Int) (toChars!973 Int)) )
))
(declare-datatypes ((Rule!742 0))(
  ( (Rule!743 (regex!471 Regex!695) (tag!649 String!3545) (isSeparator!471 Bool) (transformation!471 TokenValueInjection!758)) )
))
(declare-datatypes ((Token!686 0))(
  ( (Token!687 (value!17739 TokenValue!493) (rule!978 Rule!742) (size!2281 Int) (originalCharacters!514 List!2704)) )
))
(declare-datatypes ((List!2705 0))(
  ( (Nil!2695) (Cons!2695 (h!8092 Token!686) (t!25369 List!2705)) )
))
(declare-fun tokens!465 () List!2705)

(declare-fun e!93439 () Bool)

(declare-fun e!93427 () Bool)

(declare-fun inv!21 (TokenValue!493) Bool)

(assert (=> b!155765 (= e!93427 (and (inv!21 (value!17739 (h!8092 tokens!465))) e!93439 tp!80231))))

(declare-fun b!155766 () Bool)

(declare-fun e!93430 () Bool)

(declare-fun e!93423 () Bool)

(assert (=> b!155766 (= e!93430 e!93423)))

(declare-fun res!71031 () Bool)

(assert (=> b!155766 (=> (not res!71031) (not e!93423))))

(declare-datatypes ((IArray!1531 0))(
  ( (IArray!1532 (innerList!823 List!2705)) )
))
(declare-datatypes ((Conc!765 0))(
  ( (Node!765 (left!2035 Conc!765) (right!2365 Conc!765) (csize!1760 Int) (cheight!976 Int)) (Leaf!1340 (xs!3360 IArray!1531) (csize!1761 Int)) (Empty!765) )
))
(declare-datatypes ((BalanceConc!1538 0))(
  ( (BalanceConc!1539 (c!31321 Conc!765)) )
))
(declare-fun lt!46083 () BalanceConc!1538)

(declare-datatypes ((List!2706 0))(
  ( (Nil!2696) (Cons!2696 (h!8093 Rule!742) (t!25370 List!2706)) )
))
(declare-fun rules!1920 () List!2706)

(declare-datatypes ((LexerInterface!357 0))(
  ( (LexerInterfaceExt!354 (__x!2474 Int)) (Lexer!355) )
))
(declare-fun thiss!17480 () LexerInterface!357)

(declare-fun rulesProduceEachTokenIndividually!149 (LexerInterface!357 List!2706 BalanceConc!1538) Bool)

(assert (=> b!155766 (= res!71031 (rulesProduceEachTokenIndividually!149 thiss!17480 rules!1920 lt!46083))))

(declare-fun seqFromList!319 (List!2705) BalanceConc!1538)

(assert (=> b!155766 (= lt!46083 (seqFromList!319 tokens!465))))

(declare-fun e!93426 () Bool)

(assert (=> b!155767 (= e!93426 (and tp!80223 tp!80225))))

(declare-fun b!155768 () Bool)

(declare-fun res!71035 () Bool)

(assert (=> b!155768 (=> (not res!71035) (not e!93423))))

(declare-fun sepAndNonSepRulesDisjointChars!60 (List!2706 List!2706) Bool)

(assert (=> b!155768 (= res!71035 (sepAndNonSepRulesDisjointChars!60 rules!1920 rules!1920))))

(declare-fun e!93436 () Bool)

(declare-fun separatorToken!170 () Token!686)

(declare-fun b!155769 () Bool)

(declare-fun e!93421 () Bool)

(declare-fun tp!80233 () Bool)

(assert (=> b!155769 (= e!93436 (and (inv!21 (value!17739 separatorToken!170)) e!93421 tp!80233))))

(declare-fun b!155770 () Bool)

(declare-fun res!71036 () Bool)

(assert (=> b!155770 (=> (not res!71036) (not e!93423))))

(declare-fun lambda!4138 () Int)

(declare-fun forall!475 (List!2705 Int) Bool)

(assert (=> b!155770 (= res!71036 (forall!475 tokens!465 lambda!4138))))

(declare-fun b!155771 () Bool)

(declare-fun e!93428 () Bool)

(assert (=> b!155771 (= e!93428 true)))

(declare-fun e!93434 () Bool)

(assert (=> b!155772 (= e!93434 (and tp!80232 tp!80234))))

(declare-fun tp!80224 () Bool)

(declare-fun b!155773 () Bool)

(declare-fun inv!3496 (String!3545) Bool)

(declare-fun inv!3499 (TokenValueInjection!758) Bool)

(assert (=> b!155773 (= e!93421 (and tp!80224 (inv!3496 (tag!649 (rule!978 separatorToken!170))) (inv!3499 (transformation!471 (rule!978 separatorToken!170))) e!93434))))

(declare-fun e!93425 () Bool)

(assert (=> b!155774 (= e!93425 (and tp!80229 tp!80235))))

(declare-fun res!71034 () Bool)

(assert (=> start!16710 (=> (not res!71034) (not e!93430))))

(get-info :version)

(assert (=> start!16710 (= res!71034 ((_ is Lexer!355) thiss!17480))))

(assert (=> start!16710 e!93430))

(assert (=> start!16710 true))

(declare-fun e!93431 () Bool)

(assert (=> start!16710 e!93431))

(declare-fun inv!3500 (Token!686) Bool)

(assert (=> start!16710 (and (inv!3500 separatorToken!170) e!93436)))

(declare-fun e!93422 () Bool)

(assert (=> start!16710 e!93422))

(declare-fun b!155775 () Bool)

(declare-fun e!93435 () Bool)

(declare-fun tp!80230 () Bool)

(assert (=> b!155775 (= e!93431 (and e!93435 tp!80230))))

(declare-fun b!155776 () Bool)

(declare-fun res!71026 () Bool)

(declare-fun e!93432 () Bool)

(assert (=> b!155776 (=> (not res!71026) (not e!93432))))

(declare-fun lt!46088 () List!2704)

(declare-fun lt!46081 () List!2704)

(declare-fun list!957 (BalanceConc!1536) List!2704)

(declare-fun seqFromList!320 (List!2704) BalanceConc!1536)

(assert (=> b!155776 (= res!71026 (= (list!957 (seqFromList!320 lt!46088)) lt!46081))))

(declare-fun b!155777 () Bool)

(declare-fun res!71032 () Bool)

(assert (=> b!155777 (=> (not res!71032) (not e!93423))))

(assert (=> b!155777 (= res!71032 ((_ is Cons!2695) tokens!465))))

(declare-fun b!155778 () Bool)

(declare-fun res!71027 () Bool)

(assert (=> b!155778 (=> (not res!71027) (not e!93423))))

(assert (=> b!155778 (= res!71027 (isSeparator!471 (rule!978 separatorToken!170)))))

(declare-fun b!155779 () Bool)

(declare-fun tp!80228 () Bool)

(assert (=> b!155779 (= e!93439 (and tp!80228 (inv!3496 (tag!649 (rule!978 (h!8092 tokens!465)))) (inv!3499 (transformation!471 (rule!978 (h!8092 tokens!465)))) e!93425))))

(declare-fun b!155780 () Bool)

(declare-fun tp!80227 () Bool)

(assert (=> b!155780 (= e!93422 (and (inv!3500 (h!8092 tokens!465)) e!93427 tp!80227))))

(declare-fun b!155781 () Bool)

(assert (=> b!155781 (= e!93423 e!93432)))

(declare-fun res!71037 () Bool)

(assert (=> b!155781 (=> (not res!71037) (not e!93432))))

(assert (=> b!155781 (= res!71037 (= lt!46088 lt!46081))))

(declare-fun printWithSeparatorTokenWhenNeededRec!40 (LexerInterface!357 List!2706 BalanceConc!1538 Token!686 Int) BalanceConc!1536)

(assert (=> b!155781 (= lt!46081 (list!957 (printWithSeparatorTokenWhenNeededRec!40 thiss!17480 rules!1920 lt!46083 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!50 (LexerInterface!357 List!2706 List!2705 Token!686) List!2704)

(assert (=> b!155781 (= lt!46088 (printWithSeparatorTokenWhenNeededList!50 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!155782 () Bool)

(declare-fun res!71033 () Bool)

(assert (=> b!155782 (=> (not res!71033) (not e!93430))))

(declare-fun isEmpty!1076 (List!2706) Bool)

(assert (=> b!155782 (= res!71033 (not (isEmpty!1076 rules!1920)))))

(declare-fun b!155783 () Bool)

(declare-fun res!71028 () Bool)

(assert (=> b!155783 (=> (not res!71028) (not e!93430))))

(declare-fun rulesInvariant!323 (LexerInterface!357 List!2706) Bool)

(assert (=> b!155783 (= res!71028 (rulesInvariant!323 thiss!17480 rules!1920))))

(declare-fun tp!80226 () Bool)

(declare-fun b!155784 () Bool)

(assert (=> b!155784 (= e!93435 (and tp!80226 (inv!3496 (tag!649 (h!8093 rules!1920))) (inv!3499 (transformation!471 (h!8093 rules!1920))) e!93426))))

(declare-fun b!155785 () Bool)

(declare-fun res!71029 () Bool)

(assert (=> b!155785 (=> (not res!71029) (not e!93423))))

(declare-fun rulesProduceIndividualToken!106 (LexerInterface!357 List!2706 Token!686) Bool)

(assert (=> b!155785 (= res!71029 (rulesProduceIndividualToken!106 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!155786 () Bool)

(assert (=> b!155786 (= e!93432 (not e!93428))))

(declare-fun res!71030 () Bool)

(assert (=> b!155786 (=> res!71030 e!93428)))

(declare-fun rulesProduceEachTokenIndividuallyList!95 (LexerInterface!357 List!2706 List!2705) Bool)

(assert (=> b!155786 (= res!71030 (not (rulesProduceEachTokenIndividuallyList!95 thiss!17480 rules!1920 (t!25369 tokens!465))))))

(declare-fun lt!46085 () List!2704)

(declare-fun lt!46086 () List!2704)

(declare-fun lt!46084 () List!2704)

(declare-fun lt!46082 () List!2704)

(declare-fun ++!588 (List!2704 List!2704) List!2704)

(assert (=> b!155786 (= (++!588 (++!588 lt!46085 lt!46082) lt!46084) (++!588 lt!46085 lt!46086))))

(declare-datatypes ((Unit!2124 0))(
  ( (Unit!2125) )
))
(declare-fun lt!46087 () Unit!2124)

(declare-fun lemmaConcatAssociativity!152 (List!2704 List!2704 List!2704) Unit!2124)

(assert (=> b!155786 (= lt!46087 (lemmaConcatAssociativity!152 lt!46085 lt!46082 lt!46084))))

(declare-fun charsOf!126 (Token!686) BalanceConc!1536)

(assert (=> b!155786 (= lt!46085 (list!957 (charsOf!126 (h!8092 tokens!465))))))

(assert (=> b!155786 (= lt!46086 (++!588 lt!46082 lt!46084))))

(assert (=> b!155786 (= lt!46084 (printWithSeparatorTokenWhenNeededList!50 thiss!17480 rules!1920 (t!25369 tokens!465) separatorToken!170))))

(assert (=> b!155786 (= lt!46082 (list!957 (charsOf!126 separatorToken!170)))))

(assert (= (and start!16710 res!71034) b!155782))

(assert (= (and b!155782 res!71033) b!155783))

(assert (= (and b!155783 res!71028) b!155766))

(assert (= (and b!155766 res!71031) b!155785))

(assert (= (and b!155785 res!71029) b!155778))

(assert (= (and b!155778 res!71027) b!155770))

(assert (= (and b!155770 res!71036) b!155768))

(assert (= (and b!155768 res!71035) b!155777))

(assert (= (and b!155777 res!71032) b!155781))

(assert (= (and b!155781 res!71037) b!155776))

(assert (= (and b!155776 res!71026) b!155786))

(assert (= (and b!155786 (not res!71030)) b!155771))

(assert (= b!155784 b!155767))

(assert (= b!155775 b!155784))

(assert (= (and start!16710 ((_ is Cons!2696) rules!1920)) b!155775))

(assert (= b!155773 b!155772))

(assert (= b!155769 b!155773))

(assert (= start!16710 b!155769))

(assert (= b!155779 b!155774))

(assert (= b!155765 b!155779))

(assert (= b!155780 b!155765))

(assert (= (and start!16710 ((_ is Cons!2695) tokens!465)) b!155780))

(declare-fun m!141961 () Bool)

(assert (=> b!155782 m!141961))

(declare-fun m!141963 () Bool)

(assert (=> b!155781 m!141963))

(assert (=> b!155781 m!141963))

(declare-fun m!141965 () Bool)

(assert (=> b!155781 m!141965))

(declare-fun m!141967 () Bool)

(assert (=> b!155781 m!141967))

(declare-fun m!141969 () Bool)

(assert (=> b!155770 m!141969))

(declare-fun m!141971 () Bool)

(assert (=> b!155783 m!141971))

(declare-fun m!141973 () Bool)

(assert (=> b!155784 m!141973))

(declare-fun m!141975 () Bool)

(assert (=> b!155784 m!141975))

(declare-fun m!141977 () Bool)

(assert (=> b!155776 m!141977))

(assert (=> b!155776 m!141977))

(declare-fun m!141979 () Bool)

(assert (=> b!155776 m!141979))

(declare-fun m!141981 () Bool)

(assert (=> b!155773 m!141981))

(declare-fun m!141983 () Bool)

(assert (=> b!155773 m!141983))

(declare-fun m!141985 () Bool)

(assert (=> b!155786 m!141985))

(declare-fun m!141987 () Bool)

(assert (=> b!155786 m!141987))

(declare-fun m!141989 () Bool)

(assert (=> b!155786 m!141989))

(declare-fun m!141991 () Bool)

(assert (=> b!155786 m!141991))

(assert (=> b!155786 m!141989))

(declare-fun m!141993 () Bool)

(assert (=> b!155786 m!141993))

(declare-fun m!141995 () Bool)

(assert (=> b!155786 m!141995))

(declare-fun m!141997 () Bool)

(assert (=> b!155786 m!141997))

(declare-fun m!141999 () Bool)

(assert (=> b!155786 m!141999))

(declare-fun m!142001 () Bool)

(assert (=> b!155786 m!142001))

(assert (=> b!155786 m!141999))

(declare-fun m!142003 () Bool)

(assert (=> b!155786 m!142003))

(declare-fun m!142005 () Bool)

(assert (=> b!155786 m!142005))

(assert (=> b!155786 m!141995))

(declare-fun m!142007 () Bool)

(assert (=> b!155785 m!142007))

(declare-fun m!142009 () Bool)

(assert (=> b!155768 m!142009))

(declare-fun m!142011 () Bool)

(assert (=> start!16710 m!142011))

(declare-fun m!142013 () Bool)

(assert (=> b!155765 m!142013))

(declare-fun m!142015 () Bool)

(assert (=> b!155780 m!142015))

(declare-fun m!142017 () Bool)

(assert (=> b!155769 m!142017))

(declare-fun m!142019 () Bool)

(assert (=> b!155766 m!142019))

(declare-fun m!142021 () Bool)

(assert (=> b!155766 m!142021))

(declare-fun m!142023 () Bool)

(assert (=> b!155779 m!142023))

(declare-fun m!142025 () Bool)

(assert (=> b!155779 m!142025))

(check-sat (not start!16710) (not b!155770) (not b!155782) b_and!9317 (not b!155781) (not b!155769) (not b_next!5787) (not b_next!5781) b_and!9323 (not b!155780) (not b_next!5785) b_and!9321 (not b!155786) (not b!155775) (not b!155785) (not b!155776) (not b!155765) (not b!155779) (not b_next!5777) b_and!9319 (not b!155783) (not b!155773) b_and!9325 (not b_next!5779) (not b!155766) (not b!155768) (not b!155784) b_and!9327 (not b_next!5783))
(check-sat b_and!9317 (not b_next!5787) (not b_next!5781) b_and!9323 (not b_next!5785) b_and!9321 (not b_next!5777) b_and!9319 b_and!9325 (not b_next!5779) b_and!9327 (not b_next!5783))

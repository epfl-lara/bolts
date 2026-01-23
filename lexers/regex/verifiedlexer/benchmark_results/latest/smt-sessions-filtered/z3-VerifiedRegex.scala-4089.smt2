; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218980 () Bool)

(assert start!218980)

(declare-fun b!2245996 () Bool)

(declare-fun b_free!65549 () Bool)

(declare-fun b_next!66253 () Bool)

(assert (=> b!2245996 (= b_free!65549 (not b_next!66253))))

(declare-fun tp!709109 () Bool)

(declare-fun b_and!175689 () Bool)

(assert (=> b!2245996 (= tp!709109 b_and!175689)))

(declare-fun b_free!65551 () Bool)

(declare-fun b_next!66255 () Bool)

(assert (=> b!2245996 (= b_free!65551 (not b_next!66255))))

(declare-fun tp!709110 () Bool)

(declare-fun b_and!175691 () Bool)

(assert (=> b!2245996 (= tp!709110 b_and!175691)))

(declare-fun b!2245990 () Bool)

(declare-fun b_free!65553 () Bool)

(declare-fun b_next!66257 () Bool)

(assert (=> b!2245990 (= b_free!65553 (not b_next!66257))))

(declare-fun tp!709118 () Bool)

(declare-fun b_and!175693 () Bool)

(assert (=> b!2245990 (= tp!709118 b_and!175693)))

(declare-fun b_free!65555 () Bool)

(declare-fun b_next!66259 () Bool)

(assert (=> b!2245990 (= b_free!65555 (not b_next!66259))))

(declare-fun tp!709119 () Bool)

(declare-fun b_and!175695 () Bool)

(assert (=> b!2245990 (= tp!709119 b_and!175695)))

(declare-fun b!2245985 () Bool)

(declare-fun b_free!65557 () Bool)

(declare-fun b_next!66261 () Bool)

(assert (=> b!2245985 (= b_free!65557 (not b_next!66261))))

(declare-fun tp!709111 () Bool)

(declare-fun b_and!175697 () Bool)

(assert (=> b!2245985 (= tp!709111 b_and!175697)))

(declare-fun b_free!65559 () Bool)

(declare-fun b_next!66263 () Bool)

(assert (=> b!2245985 (= b_free!65559 (not b_next!66263))))

(declare-fun tp!709115 () Bool)

(declare-fun b_and!175699 () Bool)

(assert (=> b!2245985 (= tp!709115 b_and!175699)))

(declare-fun b!2245980 () Bool)

(declare-fun b_free!65561 () Bool)

(declare-fun b_next!66265 () Bool)

(assert (=> b!2245980 (= b_free!65561 (not b_next!66265))))

(declare-fun tp!709116 () Bool)

(declare-fun b_and!175701 () Bool)

(assert (=> b!2245980 (= tp!709116 b_and!175701)))

(declare-fun b_free!65563 () Bool)

(declare-fun b_next!66267 () Bool)

(assert (=> b!2245980 (= b_free!65563 (not b_next!66267))))

(declare-fun tp!709106 () Bool)

(declare-fun b_and!175703 () Bool)

(assert (=> b!2245980 (= tp!709106 b_and!175703)))

(declare-fun b!2245976 () Bool)

(declare-fun res!959685 () Bool)

(declare-fun e!1436981 () Bool)

(assert (=> b!2245976 (=> (not res!959685) (not e!1436981))))

(declare-datatypes ((List!26677 0))(
  ( (Nil!26583) (Cons!26583 (h!31984 (_ BitVec 16)) (t!200375 List!26677)) )
))
(declare-datatypes ((TokenValue!4371 0))(
  ( (FloatLiteralValue!8742 (text!31042 List!26677)) (TokenValueExt!4370 (__x!17802 Int)) (Broken!21855 (value!133750 List!26677)) (Object!4464) (End!4371) (Def!4371) (Underscore!4371) (Match!4371) (Else!4371) (Error!4371) (Case!4371) (If!4371) (Extends!4371) (Abstract!4371) (Class!4371) (Val!4371) (DelimiterValue!8742 (del!4431 List!26677)) (KeywordValue!4377 (value!133751 List!26677)) (CommentValue!8742 (value!133752 List!26677)) (WhitespaceValue!8742 (value!133753 List!26677)) (IndentationValue!4371 (value!133754 List!26677)) (String!28958) (Int32!4371) (Broken!21856 (value!133755 List!26677)) (Boolean!4372) (Unit!39543) (OperatorValue!4374 (op!4431 List!26677)) (IdentifierValue!8742 (value!133756 List!26677)) (IdentifierValue!8743 (value!133757 List!26677)) (WhitespaceValue!8743 (value!133758 List!26677)) (True!8742) (False!8742) (Broken!21857 (value!133759 List!26677)) (Broken!21858 (value!133760 List!26677)) (True!8743) (RightBrace!4371) (RightBracket!4371) (Colon!4371) (Null!4371) (Comma!4371) (LeftBracket!4371) (False!8743) (LeftBrace!4371) (ImaginaryLiteralValue!4371 (text!31043 List!26677)) (StringLiteralValue!13113 (value!133761 List!26677)) (EOFValue!4371 (value!133762 List!26677)) (IdentValue!4371 (value!133763 List!26677)) (DelimiterValue!8743 (value!133764 List!26677)) (DedentValue!4371 (value!133765 List!26677)) (NewLineValue!4371 (value!133766 List!26677)) (IntegerValue!13113 (value!133767 (_ BitVec 32)) (text!31044 List!26677)) (IntegerValue!13114 (value!133768 Int) (text!31045 List!26677)) (Times!4371) (Or!4371) (Equal!4371) (Minus!4371) (Broken!21859 (value!133769 List!26677)) (And!4371) (Div!4371) (LessEqual!4371) (Mod!4371) (Concat!10928) (Not!4371) (Plus!4371) (SpaceValue!4371 (value!133770 List!26677)) (IntegerValue!13115 (value!133771 Int) (text!31046 List!26677)) (StringLiteralValue!13114 (text!31047 List!26677)) (FloatLiteralValue!8743 (text!31048 List!26677)) (BytesLiteralValue!4371 (value!133772 List!26677)) (CommentValue!8743 (value!133773 List!26677)) (StringLiteralValue!13115 (value!133774 List!26677)) (ErrorTokenValue!4371 (msg!4432 List!26677)) )
))
(declare-datatypes ((C!13260 0))(
  ( (C!13261 (val!7678 Int)) )
))
(declare-datatypes ((List!26678 0))(
  ( (Nil!26584) (Cons!26584 (h!31985 C!13260) (t!200376 List!26678)) )
))
(declare-datatypes ((IArray!17137 0))(
  ( (IArray!17138 (innerList!8626 List!26678)) )
))
(declare-datatypes ((Conc!8566 0))(
  ( (Node!8566 (left!20203 Conc!8566) (right!20533 Conc!8566) (csize!17362 Int) (cheight!8777 Int)) (Leaf!12656 (xs!11508 IArray!17137) (csize!17363 Int)) (Empty!8566) )
))
(declare-datatypes ((BalanceConc!16860 0))(
  ( (BalanceConc!16861 (c!357342 Conc!8566)) )
))
(declare-datatypes ((Regex!6557 0))(
  ( (ElementMatch!6557 (c!357343 C!13260)) (Concat!10929 (regOne!13626 Regex!6557) (regTwo!13626 Regex!6557)) (EmptyExpr!6557) (Star!6557 (reg!6886 Regex!6557)) (EmptyLang!6557) (Union!6557 (regOne!13627 Regex!6557) (regTwo!13627 Regex!6557)) )
))
(declare-datatypes ((String!28959 0))(
  ( (String!28960 (value!133775 String)) )
))
(declare-datatypes ((TokenValueInjection!8282 0))(
  ( (TokenValueInjection!8283 (toValue!5939 Int) (toChars!5798 Int)) )
))
(declare-datatypes ((Rule!8218 0))(
  ( (Rule!8219 (regex!4209 Regex!6557) (tag!4699 String!28959) (isSeparator!4209 Bool) (transformation!4209 TokenValueInjection!8282)) )
))
(declare-datatypes ((List!26679 0))(
  ( (Nil!26585) (Cons!26585 (h!31986 Rule!8218) (t!200377 List!26679)) )
))
(declare-fun rules!1750 () List!26679)

(declare-fun isEmpty!14970 (List!26679) Bool)

(assert (=> b!2245976 (= res!959685 (not (isEmpty!14970 rules!1750)))))

(declare-datatypes ((Token!7896 0))(
  ( (Token!7897 (value!133776 TokenValue!4371) (rule!6507 Rule!8218) (size!20785 Int) (originalCharacters!4979 List!26678)) )
))
(declare-datatypes ((List!26680 0))(
  ( (Nil!26586) (Cons!26586 (h!31987 Token!7896) (t!200378 List!26680)) )
))
(declare-fun tokens!456 () List!26680)

(declare-fun tp!709117 () Bool)

(declare-fun e!1436974 () Bool)

(declare-fun b!2245977 () Bool)

(declare-fun e!1436979 () Bool)

(declare-fun inv!36110 (Token!7896) Bool)

(assert (=> b!2245977 (= e!1436979 (and (inv!36110 (h!31987 tokens!456)) e!1436974 tp!709117))))

(declare-fun b!2245978 () Bool)

(declare-fun res!959684 () Bool)

(declare-fun e!1436984 () Bool)

(assert (=> b!2245978 (=> (not res!959684) (not e!1436984))))

(declare-fun e!1436977 () Bool)

(assert (=> b!2245978 (= res!959684 e!1436977)))

(declare-fun res!959672 () Bool)

(assert (=> b!2245978 (=> res!959672 e!1436977)))

(declare-fun lt!835371 () Bool)

(assert (=> b!2245978 (= res!959672 lt!835371)))

(declare-fun b!2245979 () Bool)

(declare-fun res!959681 () Bool)

(assert (=> b!2245979 (=> (not res!959681) (not e!1436981))))

(declare-datatypes ((LexerInterface!3806 0))(
  ( (LexerInterfaceExt!3803 (__x!17803 Int)) (Lexer!3804) )
))
(declare-fun thiss!16613 () LexerInterface!3806)

(declare-fun rulesInvariant!3308 (LexerInterface!3806 List!26679) Bool)

(assert (=> b!2245979 (= res!959681 (rulesInvariant!3308 thiss!16613 rules!1750))))

(declare-fun e!1436994 () Bool)

(assert (=> b!2245980 (= e!1436994 (and tp!709116 tp!709106))))

(declare-fun b!2245981 () Bool)

(declare-fun e!1436972 () Bool)

(assert (=> b!2245981 (= e!1436981 e!1436972)))

(declare-fun res!959670 () Bool)

(assert (=> b!2245981 (=> (not res!959670) (not e!1436972))))

(declare-datatypes ((IArray!17139 0))(
  ( (IArray!17140 (innerList!8627 List!26680)) )
))
(declare-datatypes ((Conc!8567 0))(
  ( (Node!8567 (left!20204 Conc!8567) (right!20534 Conc!8567) (csize!17364 Int) (cheight!8778 Int)) (Leaf!12657 (xs!11509 IArray!17139) (csize!17365 Int)) (Empty!8567) )
))
(declare-datatypes ((BalanceConc!16862 0))(
  ( (BalanceConc!16863 (c!357344 Conc!8567)) )
))
(declare-datatypes ((tuple2!26050 0))(
  ( (tuple2!26051 (_1!15535 BalanceConc!16862) (_2!15535 BalanceConc!16860)) )
))
(declare-fun lt!835375 () tuple2!26050)

(declare-fun suffix!886 () List!26678)

(declare-datatypes ((tuple2!26052 0))(
  ( (tuple2!26053 (_1!15536 List!26680) (_2!15536 List!26678)) )
))
(declare-fun list!10174 (BalanceConc!16862) List!26680)

(declare-fun list!10175 (BalanceConc!16860) List!26678)

(assert (=> b!2245981 (= res!959670 (= (tuple2!26053 (list!10174 (_1!15535 lt!835375)) (list!10175 (_2!15535 lt!835375))) (tuple2!26053 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26678)

(declare-fun lex!1645 (LexerInterface!3806 List!26679 BalanceConc!16860) tuple2!26050)

(declare-fun seqFromList!2913 (List!26678) BalanceConc!16860)

(assert (=> b!2245981 (= lt!835375 (lex!1645 thiss!16613 rules!1750 (seqFromList!2913 input!1722)))))

(declare-fun b!2245982 () Bool)

(declare-fun res!959676 () Bool)

(assert (=> b!2245982 (=> (not res!959676) (not e!1436984))))

(declare-fun otherP!12 () List!26678)

(declare-fun isPrefix!2199 (List!26678 List!26678) Bool)

(assert (=> b!2245982 (= res!959676 (isPrefix!2199 otherP!12 input!1722))))

(declare-fun tp!709114 () Bool)

(declare-fun b!2245983 () Bool)

(declare-fun e!1436986 () Bool)

(declare-fun e!1436973 () Bool)

(declare-fun inv!36107 (String!28959) Bool)

(declare-fun inv!36111 (TokenValueInjection!8282) Bool)

(assert (=> b!2245983 (= e!1436973 (and tp!709114 (inv!36107 (tag!4699 (rule!6507 (h!31987 tokens!456)))) (inv!36111 (transformation!4209 (rule!6507 (h!31987 tokens!456)))) e!1436986))))

(declare-fun b!2245984 () Bool)

(declare-fun e!1436998 () Bool)

(assert (=> b!2245984 (= e!1436998 true)))

(declare-fun otherR!12 () Rule!8218)

(declare-fun matchR!2818 (Regex!6557 List!26678) Bool)

(assert (=> b!2245984 (not (matchR!2818 (regex!4209 otherR!12) otherP!12))))

(declare-datatypes ((Unit!39544 0))(
  ( (Unit!39545) )
))
(declare-fun lt!835373 () Unit!39544)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!387 (LexerInterface!3806 Rule!8218 List!26678 List!26678) Unit!39544)

(assert (=> b!2245984 (= lt!835373 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!387 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun res!959678 () Bool)

(assert (=> start!218980 (=> (not res!959678) (not e!1436981))))

(get-info :version)

(assert (=> start!218980 (= res!959678 ((_ is Lexer!3804) thiss!16613))))

(assert (=> start!218980 e!1436981))

(assert (=> start!218980 true))

(declare-fun e!1436987 () Bool)

(assert (=> start!218980 e!1436987))

(declare-fun e!1436982 () Bool)

(assert (=> start!218980 e!1436982))

(declare-fun e!1436990 () Bool)

(assert (=> start!218980 e!1436990))

(declare-fun e!1436988 () Bool)

(assert (=> start!218980 e!1436988))

(declare-fun e!1436976 () Bool)

(assert (=> start!218980 e!1436976))

(declare-fun e!1436997 () Bool)

(assert (=> start!218980 e!1436997))

(assert (=> start!218980 e!1436979))

(assert (=> b!2245985 (= e!1436986 (and tp!709111 tp!709115))))

(declare-fun b!2245986 () Bool)

(declare-fun tp_is_empty!10335 () Bool)

(declare-fun tp!709113 () Bool)

(assert (=> b!2245986 (= e!1436990 (and tp_is_empty!10335 tp!709113))))

(declare-fun b!2245987 () Bool)

(declare-fun e!1436993 () Bool)

(declare-fun r!2363 () Rule!8218)

(declare-fun charsOf!2597 (Token!7896) BalanceConc!16860)

(declare-fun head!4768 (List!26680) Token!7896)

(assert (=> b!2245987 (= e!1436993 (not (matchR!2818 (regex!4209 r!2363) (list!10175 (charsOf!2597 (head!4768 tokens!456))))))))

(declare-fun b!2245988 () Bool)

(declare-fun e!1436989 () Bool)

(assert (=> b!2245988 (= e!1436984 (not e!1436989))))

(declare-fun res!959680 () Bool)

(assert (=> b!2245988 (=> res!959680 e!1436989)))

(assert (=> b!2245988 (= res!959680 e!1436993)))

(declare-fun res!959677 () Bool)

(assert (=> b!2245988 (=> (not res!959677) (not e!1436993))))

(assert (=> b!2245988 (= res!959677 (not lt!835371))))

(declare-fun ruleValid!1301 (LexerInterface!3806 Rule!8218) Bool)

(assert (=> b!2245988 (ruleValid!1301 thiss!16613 r!2363)))

(declare-fun lt!835372 () Unit!39544)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!708 (LexerInterface!3806 Rule!8218 List!26679) Unit!39544)

(assert (=> b!2245988 (= lt!835372 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!708 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2245989 () Bool)

(declare-fun tp!709107 () Bool)

(declare-fun inv!21 (TokenValue!4371) Bool)

(assert (=> b!2245989 (= e!1436974 (and (inv!21 (value!133776 (h!31987 tokens!456))) e!1436973 tp!709107))))

(declare-fun e!1436992 () Bool)

(assert (=> b!2245990 (= e!1436992 (and tp!709118 tp!709119))))

(declare-fun b!2245991 () Bool)

(declare-fun res!959671 () Bool)

(declare-fun e!1436975 () Bool)

(assert (=> b!2245991 (=> res!959671 e!1436975)))

(assert (=> b!2245991 (= res!959671 (not ((_ is Nil!26586) tokens!456)))))

(declare-fun b!2245992 () Bool)

(declare-fun tp!709112 () Bool)

(assert (=> b!2245992 (= e!1436988 (and tp_is_empty!10335 tp!709112))))

(declare-fun b!2245993 () Bool)

(declare-fun tp!709121 () Bool)

(assert (=> b!2245993 (= e!1436982 (and tp!709121 (inv!36107 (tag!4699 otherR!12)) (inv!36111 (transformation!4209 otherR!12)) e!1436994))))

(declare-fun b!2245994 () Bool)

(declare-fun e!1436995 () Bool)

(declare-fun tp!709108 () Bool)

(assert (=> b!2245994 (= e!1436976 (and e!1436995 tp!709108))))

(declare-fun b!2245995 () Bool)

(assert (=> b!2245995 (= e!1436977 (= (rule!6507 (head!4768 tokens!456)) r!2363))))

(declare-fun e!1436978 () Bool)

(assert (=> b!2245996 (= e!1436978 (and tp!709109 tp!709110))))

(declare-fun b!2245997 () Bool)

(declare-fun e!1436999 () Bool)

(declare-fun size!20786 (BalanceConc!16860) Int)

(declare-fun size!20787 (List!26678) Int)

(assert (=> b!2245997 (= e!1436999 (<= (size!20786 (charsOf!2597 (head!4768 tokens!456))) (size!20787 otherP!12)))))

(declare-fun b!2245998 () Bool)

(assert (=> b!2245998 (= e!1436989 e!1436975)))

(declare-fun res!959683 () Bool)

(assert (=> b!2245998 (=> res!959683 e!1436975)))

(declare-fun getIndex!230 (List!26679 Rule!8218) Int)

(assert (=> b!2245998 (= res!959683 (<= (getIndex!230 rules!1750 r!2363) (getIndex!230 rules!1750 otherR!12)))))

(assert (=> b!2245998 (ruleValid!1301 thiss!16613 otherR!12)))

(declare-fun lt!835374 () Unit!39544)

(assert (=> b!2245998 (= lt!835374 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!708 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2245999 () Bool)

(declare-fun res!959675 () Bool)

(assert (=> b!2245999 (=> (not res!959675) (not e!1436981))))

(declare-fun contains!4556 (List!26679 Rule!8218) Bool)

(assert (=> b!2245999 (= res!959675 (contains!4556 rules!1750 r!2363))))

(declare-fun b!2246000 () Bool)

(declare-fun res!959674 () Bool)

(assert (=> b!2246000 (=> (not res!959674) (not e!1436984))))

(assert (=> b!2246000 (= res!959674 (not (= r!2363 otherR!12)))))

(declare-fun b!2246001 () Bool)

(assert (=> b!2246001 (= e!1436975 e!1436998)))

(declare-fun res!959679 () Bool)

(assert (=> b!2246001 (=> res!959679 e!1436998)))

(declare-datatypes ((tuple2!26054 0))(
  ( (tuple2!26055 (_1!15537 Token!7896) (_2!15537 List!26678)) )
))
(declare-datatypes ((Option!5184 0))(
  ( (None!5183) (Some!5183 (v!30195 tuple2!26054)) )
))
(declare-fun lt!835370 () Option!5184)

(assert (=> b!2246001 (= res!959679 (not (= lt!835370 None!5183)))))

(declare-fun isEmpty!14971 (Option!5184) Bool)

(assert (=> b!2246001 (isEmpty!14971 lt!835370)))

(declare-fun maxPrefixOneRule!1302 (LexerInterface!3806 Rule!8218 List!26678) Option!5184)

(assert (=> b!2246001 (= lt!835370 (maxPrefixOneRule!1302 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!835376 () Unit!39544)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!393 (LexerInterface!3806 Rule!8218 List!26679 List!26678) Unit!39544)

(assert (=> b!2246001 (= lt!835376 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!393 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2246002 () Bool)

(assert (=> b!2246002 (= e!1436972 e!1436984)))

(declare-fun res!959669 () Bool)

(assert (=> b!2246002 (=> (not res!959669) (not e!1436984))))

(assert (=> b!2246002 (= res!959669 e!1436999)))

(declare-fun res!959682 () Bool)

(assert (=> b!2246002 (=> res!959682 e!1436999)))

(assert (=> b!2246002 (= res!959682 lt!835371)))

(declare-fun isEmpty!14972 (List!26680) Bool)

(assert (=> b!2246002 (= lt!835371 (isEmpty!14972 tokens!456))))

(declare-fun tp!709104 () Bool)

(declare-fun b!2246003 () Bool)

(assert (=> b!2246003 (= e!1436995 (and tp!709104 (inv!36107 (tag!4699 (h!31986 rules!1750))) (inv!36111 (transformation!4209 (h!31986 rules!1750))) e!1436978))))

(declare-fun tp!709120 () Bool)

(declare-fun b!2246004 () Bool)

(assert (=> b!2246004 (= e!1436997 (and tp!709120 (inv!36107 (tag!4699 r!2363)) (inv!36111 (transformation!4209 r!2363)) e!1436992))))

(declare-fun b!2246005 () Bool)

(declare-fun tp!709105 () Bool)

(assert (=> b!2246005 (= e!1436987 (and tp_is_empty!10335 tp!709105))))

(declare-fun b!2246006 () Bool)

(declare-fun res!959673 () Bool)

(assert (=> b!2246006 (=> (not res!959673) (not e!1436981))))

(assert (=> b!2246006 (= res!959673 (contains!4556 rules!1750 otherR!12))))

(assert (= (and start!218980 res!959678) b!2245976))

(assert (= (and b!2245976 res!959685) b!2245979))

(assert (= (and b!2245979 res!959681) b!2245999))

(assert (= (and b!2245999 res!959675) b!2246006))

(assert (= (and b!2246006 res!959673) b!2245981))

(assert (= (and b!2245981 res!959670) b!2246002))

(assert (= (and b!2246002 (not res!959682)) b!2245997))

(assert (= (and b!2246002 res!959669) b!2245978))

(assert (= (and b!2245978 (not res!959672)) b!2245995))

(assert (= (and b!2245978 res!959684) b!2245982))

(assert (= (and b!2245982 res!959676) b!2246000))

(assert (= (and b!2246000 res!959674) b!2245988))

(assert (= (and b!2245988 res!959677) b!2245987))

(assert (= (and b!2245988 (not res!959680)) b!2245998))

(assert (= (and b!2245998 (not res!959683)) b!2245991))

(assert (= (and b!2245991 (not res!959671)) b!2246001))

(assert (= (and b!2246001 (not res!959679)) b!2245984))

(assert (= (and start!218980 ((_ is Cons!26584) input!1722)) b!2246005))

(assert (= b!2245993 b!2245980))

(assert (= start!218980 b!2245993))

(assert (= (and start!218980 ((_ is Cons!26584) suffix!886)) b!2245986))

(assert (= (and start!218980 ((_ is Cons!26584) otherP!12)) b!2245992))

(assert (= b!2246003 b!2245996))

(assert (= b!2245994 b!2246003))

(assert (= (and start!218980 ((_ is Cons!26585) rules!1750)) b!2245994))

(assert (= b!2246004 b!2245990))

(assert (= start!218980 b!2246004))

(assert (= b!2245983 b!2245985))

(assert (= b!2245989 b!2245983))

(assert (= b!2245977 b!2245989))

(assert (= (and start!218980 ((_ is Cons!26586) tokens!456)) b!2245977))

(declare-fun m!2677485 () Bool)

(assert (=> b!2246004 m!2677485))

(declare-fun m!2677487 () Bool)

(assert (=> b!2246004 m!2677487))

(declare-fun m!2677489 () Bool)

(assert (=> b!2246003 m!2677489))

(declare-fun m!2677491 () Bool)

(assert (=> b!2246003 m!2677491))

(declare-fun m!2677493 () Bool)

(assert (=> b!2245995 m!2677493))

(declare-fun m!2677495 () Bool)

(assert (=> b!2246001 m!2677495))

(declare-fun m!2677497 () Bool)

(assert (=> b!2246001 m!2677497))

(declare-fun m!2677499 () Bool)

(assert (=> b!2246001 m!2677499))

(declare-fun m!2677501 () Bool)

(assert (=> b!2246002 m!2677501))

(declare-fun m!2677503 () Bool)

(assert (=> b!2245984 m!2677503))

(declare-fun m!2677505 () Bool)

(assert (=> b!2245984 m!2677505))

(declare-fun m!2677507 () Bool)

(assert (=> b!2245982 m!2677507))

(declare-fun m!2677509 () Bool)

(assert (=> b!2245993 m!2677509))

(declare-fun m!2677511 () Bool)

(assert (=> b!2245993 m!2677511))

(declare-fun m!2677513 () Bool)

(assert (=> b!2245983 m!2677513))

(declare-fun m!2677515 () Bool)

(assert (=> b!2245983 m!2677515))

(declare-fun m!2677517 () Bool)

(assert (=> b!2245981 m!2677517))

(declare-fun m!2677519 () Bool)

(assert (=> b!2245981 m!2677519))

(declare-fun m!2677521 () Bool)

(assert (=> b!2245981 m!2677521))

(assert (=> b!2245981 m!2677521))

(declare-fun m!2677523 () Bool)

(assert (=> b!2245981 m!2677523))

(declare-fun m!2677525 () Bool)

(assert (=> b!2245988 m!2677525))

(declare-fun m!2677527 () Bool)

(assert (=> b!2245988 m!2677527))

(declare-fun m!2677529 () Bool)

(assert (=> b!2245977 m!2677529))

(declare-fun m!2677531 () Bool)

(assert (=> b!2245999 m!2677531))

(assert (=> b!2245987 m!2677493))

(assert (=> b!2245987 m!2677493))

(declare-fun m!2677533 () Bool)

(assert (=> b!2245987 m!2677533))

(assert (=> b!2245987 m!2677533))

(declare-fun m!2677535 () Bool)

(assert (=> b!2245987 m!2677535))

(assert (=> b!2245987 m!2677535))

(declare-fun m!2677537 () Bool)

(assert (=> b!2245987 m!2677537))

(declare-fun m!2677539 () Bool)

(assert (=> b!2245989 m!2677539))

(assert (=> b!2245997 m!2677493))

(assert (=> b!2245997 m!2677493))

(assert (=> b!2245997 m!2677533))

(assert (=> b!2245997 m!2677533))

(declare-fun m!2677541 () Bool)

(assert (=> b!2245997 m!2677541))

(declare-fun m!2677543 () Bool)

(assert (=> b!2245997 m!2677543))

(declare-fun m!2677545 () Bool)

(assert (=> b!2245976 m!2677545))

(declare-fun m!2677547 () Bool)

(assert (=> b!2245979 m!2677547))

(declare-fun m!2677549 () Bool)

(assert (=> b!2246006 m!2677549))

(declare-fun m!2677551 () Bool)

(assert (=> b!2245998 m!2677551))

(declare-fun m!2677553 () Bool)

(assert (=> b!2245998 m!2677553))

(declare-fun m!2677555 () Bool)

(assert (=> b!2245998 m!2677555))

(declare-fun m!2677557 () Bool)

(assert (=> b!2245998 m!2677557))

(check-sat (not b!2245999) b_and!175689 (not b!2245983) (not b!2245998) b_and!175701 b_and!175693 (not b!2245984) (not b!2245992) (not b!2245982) (not b!2246001) (not b!2245987) b_and!175699 b_and!175691 (not b!2245977) (not b!2246003) (not b!2245993) (not b!2246005) b_and!175697 (not b!2245995) (not b_next!66253) (not b_next!66267) (not b!2245981) (not b!2245989) (not b!2245997) b_and!175703 (not b_next!66259) b_and!175695 (not b!2245988) (not b_next!66265) (not b!2245994) (not b!2245979) (not b!2246006) (not b!2245986) (not b_next!66263) tp_is_empty!10335 (not b_next!66261) (not b_next!66257) (not b!2245976) (not b_next!66255) (not b!2246002) (not b!2246004))
(check-sat b_and!175689 b_and!175697 b_and!175703 b_and!175701 (not b_next!66265) b_and!175693 b_and!175699 b_and!175691 (not b_next!66253) (not b_next!66267) (not b_next!66259) b_and!175695 (not b_next!66263) (not b_next!66261) (not b_next!66257) (not b_next!66255))

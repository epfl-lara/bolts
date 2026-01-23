; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757088 () Bool)

(assert start!757088)

(declare-fun b!8041392 () Bool)

(declare-fun b_free!135715 () Bool)

(declare-fun b_next!136505 () Bool)

(assert (=> b!8041392 (= b_free!135715 (not b_next!136505))))

(declare-fun tp!2409187 () Bool)

(declare-fun b_and!354151 () Bool)

(assert (=> b!8041392 (= tp!2409187 b_and!354151)))

(declare-fun b_free!135717 () Bool)

(declare-fun b_next!136507 () Bool)

(assert (=> b!8041392 (= b_free!135717 (not b_next!136507))))

(declare-fun tp!2409189 () Bool)

(declare-fun b_and!354153 () Bool)

(assert (=> b!8041392 (= tp!2409189 b_and!354153)))

(declare-fun b!8041381 () Bool)

(declare-fun b_free!135719 () Bool)

(declare-fun b_next!136509 () Bool)

(assert (=> b!8041381 (= b_free!135719 (not b_next!136509))))

(declare-fun tp!2409195 () Bool)

(declare-fun b_and!354155 () Bool)

(assert (=> b!8041381 (= tp!2409195 b_and!354155)))

(declare-fun b_free!135721 () Bool)

(declare-fun b_next!136511 () Bool)

(assert (=> b!8041381 (= b_free!135721 (not b_next!136511))))

(declare-fun tp!2409191 () Bool)

(declare-fun b_and!354157 () Bool)

(assert (=> b!8041381 (= tp!2409191 b_and!354157)))

(declare-fun b!8041382 () Bool)

(declare-fun b_free!135723 () Bool)

(declare-fun b_next!136513 () Bool)

(assert (=> b!8041382 (= b_free!135723 (not b_next!136513))))

(declare-fun tp!2409190 () Bool)

(declare-fun b_and!354159 () Bool)

(assert (=> b!8041382 (= tp!2409190 b_and!354159)))

(declare-fun b_free!135725 () Bool)

(declare-fun b_next!136515 () Bool)

(assert (=> b!8041382 (= b_free!135725 (not b_next!136515))))

(declare-fun tp!2409197 () Bool)

(declare-fun b_and!354161 () Bool)

(assert (=> b!8041382 (= tp!2409197 b_and!354161)))

(declare-fun b!8041388 () Bool)

(declare-fun b_free!135727 () Bool)

(declare-fun b_next!136517 () Bool)

(assert (=> b!8041388 (= b_free!135727 (not b_next!136517))))

(declare-fun tp!2409188 () Bool)

(declare-fun b_and!354163 () Bool)

(assert (=> b!8041388 (= tp!2409188 b_and!354163)))

(declare-fun b_free!135729 () Bool)

(declare-fun b_next!136519 () Bool)

(assert (=> b!8041388 (= b_free!135729 (not b_next!136519))))

(declare-fun tp!2409184 () Bool)

(declare-fun b_and!354165 () Bool)

(assert (=> b!8041388 (= tp!2409184 b_and!354165)))

(declare-fun e!4736739 () Bool)

(assert (=> b!8041381 (= e!4736739 (and tp!2409195 tp!2409191))))

(declare-fun b!8041383 () Bool)

(declare-fun res!3178720 () Bool)

(declare-fun e!4736742 () Bool)

(assert (=> b!8041383 (=> (not res!3178720) (not e!4736742))))

(declare-datatypes ((List!75251 0))(
  ( (Nil!75125) (Cons!75125 (h!81573 (_ BitVec 16)) (t!391021 List!75251)) )
))
(declare-datatypes ((TokenValue!9024 0))(
  ( (FloatLiteralValue!18048 (text!63613 List!75251)) (TokenValueExt!9023 (__x!35329 Int)) (Broken!45120 (value!291126 List!75251)) (Object!9149) (End!9024) (Def!9024) (Underscore!9024) (Match!9024) (Else!9024) (Error!9024) (Case!9024) (If!9024) (Extends!9024) (Abstract!9024) (Class!9024) (Val!9024) (DelimiterValue!18048 (del!9084 List!75251)) (KeywordValue!9030 (value!291127 List!75251)) (CommentValue!18048 (value!291128 List!75251)) (WhitespaceValue!18048 (value!291129 List!75251)) (IndentationValue!9024 (value!291130 List!75251)) (String!84893) (Int32!9024) (Broken!45121 (value!291131 List!75251)) (Boolean!9025) (Unit!171033) (OperatorValue!9027 (op!9084 List!75251)) (IdentifierValue!18048 (value!291132 List!75251)) (IdentifierValue!18049 (value!291133 List!75251)) (WhitespaceValue!18049 (value!291134 List!75251)) (True!18048) (False!18048) (Broken!45122 (value!291135 List!75251)) (Broken!45123 (value!291136 List!75251)) (True!18049) (RightBrace!9024) (RightBracket!9024) (Colon!9024) (Null!9024) (Comma!9024) (LeftBracket!9024) (False!18049) (LeftBrace!9024) (ImaginaryLiteralValue!9024 (text!63614 List!75251)) (StringLiteralValue!27072 (value!291137 List!75251)) (EOFValue!9024 (value!291138 List!75251)) (IdentValue!9024 (value!291139 List!75251)) (DelimiterValue!18049 (value!291140 List!75251)) (DedentValue!9024 (value!291141 List!75251)) (NewLineValue!9024 (value!291142 List!75251)) (IntegerValue!27072 (value!291143 (_ BitVec 32)) (text!63615 List!75251)) (IntegerValue!27073 (value!291144 Int) (text!63616 List!75251)) (Times!9024) (Or!9024) (Equal!9024) (Minus!9024) (Broken!45124 (value!291145 List!75251)) (And!9024) (Div!9024) (LessEqual!9024) (Mod!9024) (Concat!30799) (Not!9024) (Plus!9024) (SpaceValue!9024 (value!291146 List!75251)) (IntegerValue!27074 (value!291147 Int) (text!63617 List!75251)) (StringLiteralValue!27073 (text!63618 List!75251)) (FloatLiteralValue!18049 (text!63619 List!75251)) (BytesLiteralValue!9024 (value!291148 List!75251)) (CommentValue!18049 (value!291149 List!75251)) (StringLiteralValue!27074 (value!291150 List!75251)) (ErrorTokenValue!9024 (msg!9085 List!75251)) )
))
(declare-datatypes ((C!43888 0))(
  ( (C!43889 (val!32720 Int)) )
))
(declare-datatypes ((List!75252 0))(
  ( (Nil!75126) (Cons!75126 (h!81574 C!43888) (t!391022 List!75252)) )
))
(declare-datatypes ((IArray!32005 0))(
  ( (IArray!32006 (innerList!16060 List!75252)) )
))
(declare-datatypes ((Conc!15972 0))(
  ( (Node!15972 (left!57273 Conc!15972) (right!57603 Conc!15972) (csize!32174 Int) (cheight!16183 Int)) (Leaf!30634 (xs!19370 IArray!32005) (csize!32175 Int)) (Empty!15972) )
))
(declare-datatypes ((BalanceConc!30900 0))(
  ( (BalanceConc!30901 (c!1474993 Conc!15972)) )
))
(declare-datatypes ((String!84894 0))(
  ( (String!84895 (value!291151 String)) )
))
(declare-datatypes ((Regex!21775 0))(
  ( (ElementMatch!21775 (c!1474994 C!43888)) (Concat!30800 (regOne!44062 Regex!21775) (regTwo!44062 Regex!21775)) (EmptyExpr!21775) (Star!21775 (reg!22104 Regex!21775)) (EmptyLang!21775) (Union!21775 (regOne!44063 Regex!21775) (regTwo!44063 Regex!21775)) )
))
(declare-datatypes ((TokenValueInjection!17356 0))(
  ( (TokenValueInjection!17357 (toValue!11775 Int) (toChars!11634 Int)) )
))
(declare-datatypes ((Rule!17208 0))(
  ( (Rule!17209 (regex!8704 Regex!21775) (tag!9568 String!84894) (isSeparator!8704 Bool) (transformation!8704 TokenValueInjection!17356)) )
))
(declare-datatypes ((List!75253 0))(
  ( (Nil!75127) (Cons!75127 (h!81575 Rule!17208) (t!391023 List!75253)) )
))
(declare-fun rulesRec!188 () List!75253)

(declare-fun rNSep!142 () Rule!17208)

(declare-fun contains!20991 (List!75253 Rule!17208) Bool)

(assert (=> b!8041383 (= res!3178720 (contains!20991 rulesRec!188 rNSep!142))))

(declare-fun b!8041384 () Bool)

(declare-fun tp!2409186 () Bool)

(declare-fun e!4736749 () Bool)

(declare-fun e!4736747 () Bool)

(declare-fun inv!96927 (String!84894) Bool)

(declare-fun inv!96929 (TokenValueInjection!17356) Bool)

(assert (=> b!8041384 (= e!4736749 (and tp!2409186 (inv!96927 (tag!9568 (h!81575 rulesRec!188))) (inv!96929 (transformation!8704 (h!81575 rulesRec!188))) e!4736747))))

(declare-fun b!8041385 () Bool)

(declare-fun e!4736743 () Bool)

(declare-fun e!4736753 () Bool)

(declare-fun tp!2409196 () Bool)

(assert (=> b!8041385 (= e!4736743 (and e!4736753 tp!2409196))))

(declare-fun b!8041386 () Bool)

(assert (=> b!8041386 (= e!4736742 (not true))))

(declare-fun c!6865 () C!43888)

(declare-fun contains!20992 (List!75252 C!43888) Bool)

(declare-fun usedCharacters!1282 (Regex!21775) List!75252)

(assert (=> b!8041386 (not (contains!20992 (usedCharacters!1282 (regex!8704 rNSep!142)) c!6865))))

(declare-datatypes ((LexerInterface!8294 0))(
  ( (LexerInterfaceExt!8291 (__x!35330 Int)) (Lexer!8292) )
))
(declare-fun thiss!27054 () LexerInterface!8294)

(declare-fun rules!4142 () List!75253)

(declare-datatypes ((Unit!171034 0))(
  ( (Unit!171035) )
))
(declare-fun lt!2722306 () Unit!171034)

(declare-fun rSep!142 () Rule!17208)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!498 (LexerInterface!8294 List!75253 List!75253 Rule!17208 Rule!17208 C!43888) Unit!171034)

(assert (=> b!8041386 (= lt!2722306 (lemmaNonSepRuleNotContainsCharContainedInASepRule!498 thiss!27054 rules!4142 (t!391023 rulesRec!188) rNSep!142 rSep!142 c!6865))))

(declare-fun b!8041387 () Bool)

(declare-fun res!3178722 () Bool)

(assert (=> b!8041387 (=> (not res!3178722) (not e!4736742))))

(assert (=> b!8041387 (= res!3178722 (contains!20991 rules!4142 rSep!142))))

(declare-fun e!4736740 () Bool)

(assert (=> b!8041388 (= e!4736740 (and tp!2409188 tp!2409184))))

(declare-fun b!8041389 () Bool)

(declare-fun res!3178721 () Bool)

(assert (=> b!8041389 (=> (not res!3178721) (not e!4736742))))

(assert (=> b!8041389 (= res!3178721 (and (not (isSeparator!8704 rNSep!142)) (isSeparator!8704 rSep!142)))))

(declare-fun b!8041390 () Bool)

(declare-fun res!3178718 () Bool)

(assert (=> b!8041390 (=> (not res!3178718) (not e!4736742))))

(get-info :version)

(assert (=> b!8041390 (= res!3178718 (and (or (not ((_ is Cons!75127) rulesRec!188)) (not (= (h!81575 rulesRec!188) rNSep!142))) ((_ is Cons!75127) rulesRec!188)))))

(declare-fun b!8041391 () Bool)

(declare-fun res!3178719 () Bool)

(assert (=> b!8041391 (=> (not res!3178719) (not e!4736742))))

(declare-fun sepAndNonSepRulesDisjointChars!2064 (List!75253 List!75253) Bool)

(assert (=> b!8041391 (= res!3178719 (sepAndNonSepRulesDisjointChars!2064 rules!4142 (t!391023 rulesRec!188)))))

(assert (=> b!8041392 (= e!4736747 (and tp!2409187 tp!2409189))))

(declare-fun b!8041393 () Bool)

(declare-fun res!3178723 () Bool)

(assert (=> b!8041393 (=> (not res!3178723) (not e!4736742))))

(assert (=> b!8041393 (= res!3178723 (contains!20992 (usedCharacters!1282 (regex!8704 rSep!142)) c!6865))))

(declare-fun e!4736750 () Bool)

(assert (=> b!8041382 (= e!4736750 (and tp!2409190 tp!2409197))))

(declare-fun res!3178724 () Bool)

(assert (=> start!757088 (=> (not res!3178724) (not e!4736742))))

(assert (=> start!757088 (= res!3178724 ((_ is Lexer!8292) thiss!27054))))

(assert (=> start!757088 e!4736742))

(assert (=> start!757088 true))

(assert (=> start!757088 e!4736743))

(declare-fun e!4736746 () Bool)

(assert (=> start!757088 e!4736746))

(declare-fun e!4736744 () Bool)

(assert (=> start!757088 e!4736744))

(declare-fun e!4736752 () Bool)

(assert (=> start!757088 e!4736752))

(declare-fun tp_is_empty!54545 () Bool)

(assert (=> start!757088 tp_is_empty!54545))

(declare-fun tp!2409193 () Bool)

(declare-fun b!8041394 () Bool)

(assert (=> b!8041394 (= e!4736752 (and tp!2409193 (inv!96927 (tag!9568 rNSep!142)) (inv!96929 (transformation!8704 rNSep!142)) e!4736750))))

(declare-fun b!8041395 () Bool)

(declare-fun res!3178715 () Bool)

(assert (=> b!8041395 (=> (not res!3178715) (not e!4736742))))

(assert (=> b!8041395 (= res!3178715 (contains!20991 rules!4142 rNSep!142))))

(declare-fun tp!2409185 () Bool)

(declare-fun b!8041396 () Bool)

(assert (=> b!8041396 (= e!4736753 (and tp!2409185 (inv!96927 (tag!9568 (h!81575 rules!4142))) (inv!96929 (transformation!8704 (h!81575 rules!4142))) e!4736739))))

(declare-fun b!8041397 () Bool)

(declare-fun res!3178717 () Bool)

(assert (=> b!8041397 (=> (not res!3178717) (not e!4736742))))

(assert (=> b!8041397 (= res!3178717 (contains!20991 (t!391023 rulesRec!188) rNSep!142))))

(declare-fun tp!2409192 () Bool)

(declare-fun b!8041398 () Bool)

(assert (=> b!8041398 (= e!4736746 (and tp!2409192 (inv!96927 (tag!9568 rSep!142)) (inv!96929 (transformation!8704 rSep!142)) e!4736740))))

(declare-fun b!8041399 () Bool)

(declare-fun res!3178714 () Bool)

(assert (=> b!8041399 (=> (not res!3178714) (not e!4736742))))

(assert (=> b!8041399 (= res!3178714 (sepAndNonSepRulesDisjointChars!2064 rules!4142 rulesRec!188))))

(declare-fun b!8041400 () Bool)

(declare-fun res!3178716 () Bool)

(assert (=> b!8041400 (=> (not res!3178716) (not e!4736742))))

(declare-fun rulesInvariant!6762 (LexerInterface!8294 List!75253) Bool)

(assert (=> b!8041400 (= res!3178716 (rulesInvariant!6762 thiss!27054 rules!4142))))

(declare-fun b!8041401 () Bool)

(declare-fun tp!2409194 () Bool)

(assert (=> b!8041401 (= e!4736744 (and e!4736749 tp!2409194))))

(assert (= (and start!757088 res!3178724) b!8041400))

(assert (= (and b!8041400 res!3178716) b!8041387))

(assert (= (and b!8041387 res!3178722) b!8041383))

(assert (= (and b!8041383 res!3178720) b!8041395))

(assert (= (and b!8041395 res!3178715) b!8041389))

(assert (= (and b!8041389 res!3178721) b!8041393))

(assert (= (and b!8041393 res!3178723) b!8041399))

(assert (= (and b!8041399 res!3178714) b!8041390))

(assert (= (and b!8041390 res!3178718) b!8041397))

(assert (= (and b!8041397 res!3178717) b!8041391))

(assert (= (and b!8041391 res!3178719) b!8041386))

(assert (= b!8041396 b!8041381))

(assert (= b!8041385 b!8041396))

(assert (= (and start!757088 ((_ is Cons!75127) rules!4142)) b!8041385))

(assert (= b!8041398 b!8041388))

(assert (= start!757088 b!8041398))

(assert (= b!8041384 b!8041392))

(assert (= b!8041401 b!8041384))

(assert (= (and start!757088 ((_ is Cons!75127) rulesRec!188)) b!8041401))

(assert (= b!8041394 b!8041382))

(assert (= start!757088 b!8041394))

(declare-fun m!8395562 () Bool)

(assert (=> b!8041397 m!8395562))

(declare-fun m!8395564 () Bool)

(assert (=> b!8041394 m!8395564))

(declare-fun m!8395566 () Bool)

(assert (=> b!8041394 m!8395566))

(declare-fun m!8395568 () Bool)

(assert (=> b!8041383 m!8395568))

(declare-fun m!8395570 () Bool)

(assert (=> b!8041396 m!8395570))

(declare-fun m!8395572 () Bool)

(assert (=> b!8041396 m!8395572))

(declare-fun m!8395574 () Bool)

(assert (=> b!8041384 m!8395574))

(declare-fun m!8395576 () Bool)

(assert (=> b!8041384 m!8395576))

(declare-fun m!8395578 () Bool)

(assert (=> b!8041387 m!8395578))

(declare-fun m!8395580 () Bool)

(assert (=> b!8041391 m!8395580))

(declare-fun m!8395582 () Bool)

(assert (=> b!8041386 m!8395582))

(assert (=> b!8041386 m!8395582))

(declare-fun m!8395584 () Bool)

(assert (=> b!8041386 m!8395584))

(declare-fun m!8395586 () Bool)

(assert (=> b!8041386 m!8395586))

(declare-fun m!8395588 () Bool)

(assert (=> b!8041400 m!8395588))

(declare-fun m!8395590 () Bool)

(assert (=> b!8041393 m!8395590))

(assert (=> b!8041393 m!8395590))

(declare-fun m!8395592 () Bool)

(assert (=> b!8041393 m!8395592))

(declare-fun m!8395594 () Bool)

(assert (=> b!8041399 m!8395594))

(declare-fun m!8395596 () Bool)

(assert (=> b!8041398 m!8395596))

(declare-fun m!8395598 () Bool)

(assert (=> b!8041398 m!8395598))

(declare-fun m!8395600 () Bool)

(assert (=> b!8041395 m!8395600))

(check-sat (not b!8041385) (not b!8041400) b_and!354159 (not b!8041401) (not b_next!136507) (not b!8041383) (not b!8041398) (not b_next!136505) (not b!8041394) (not b!8041391) (not b!8041384) (not b!8041387) (not b_next!136511) (not b!8041399) (not b_next!136513) (not b_next!136515) b_and!354153 b_and!354151 (not b!8041386) tp_is_empty!54545 (not b!8041395) (not b!8041397) b_and!354165 (not b_next!136519) b_and!354161 b_and!354163 (not b_next!136509) (not b!8041393) (not b!8041396) b_and!354157 (not b_next!136517) b_and!354155)
(check-sat b_and!354159 (not b_next!136507) (not b_next!136505) b_and!354157 (not b_next!136511) (not b_next!136513) (not b_next!136515) b_and!354153 b_and!354151 b_and!354165 (not b_next!136519) b_and!354161 b_and!354163 (not b_next!136509) (not b_next!136517) b_and!354155)

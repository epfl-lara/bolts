; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757090 () Bool)

(assert start!757090)

(declare-fun b!8041453 () Bool)

(declare-fun b_free!135731 () Bool)

(declare-fun b_next!136521 () Bool)

(assert (=> b!8041453 (= b_free!135731 (not b_next!136521))))

(declare-fun tp!2409230 () Bool)

(declare-fun b_and!354167 () Bool)

(assert (=> b!8041453 (= tp!2409230 b_and!354167)))

(declare-fun b_free!135733 () Bool)

(declare-fun b_next!136523 () Bool)

(assert (=> b!8041453 (= b_free!135733 (not b_next!136523))))

(declare-fun tp!2409238 () Bool)

(declare-fun b_and!354169 () Bool)

(assert (=> b!8041453 (= tp!2409238 b_and!354169)))

(declare-fun b!8041446 () Bool)

(declare-fun b_free!135735 () Bool)

(declare-fun b_next!136525 () Bool)

(assert (=> b!8041446 (= b_free!135735 (not b_next!136525))))

(declare-fun tp!2409227 () Bool)

(declare-fun b_and!354171 () Bool)

(assert (=> b!8041446 (= tp!2409227 b_and!354171)))

(declare-fun b_free!135737 () Bool)

(declare-fun b_next!136527 () Bool)

(assert (=> b!8041446 (= b_free!135737 (not b_next!136527))))

(declare-fun tp!2409239 () Bool)

(declare-fun b_and!354173 () Bool)

(assert (=> b!8041446 (= tp!2409239 b_and!354173)))

(declare-fun b!8041440 () Bool)

(declare-fun b_free!135739 () Bool)

(declare-fun b_next!136529 () Bool)

(assert (=> b!8041440 (= b_free!135739 (not b_next!136529))))

(declare-fun tp!2409237 () Bool)

(declare-fun b_and!354175 () Bool)

(assert (=> b!8041440 (= tp!2409237 b_and!354175)))

(declare-fun b_free!135741 () Bool)

(declare-fun b_next!136531 () Bool)

(assert (=> b!8041440 (= b_free!135741 (not b_next!136531))))

(declare-fun tp!2409233 () Bool)

(declare-fun b_and!354177 () Bool)

(assert (=> b!8041440 (= tp!2409233 b_and!354177)))

(declare-fun b!8041455 () Bool)

(declare-fun b_free!135743 () Bool)

(declare-fun b_next!136533 () Bool)

(assert (=> b!8041455 (= b_free!135743 (not b_next!136533))))

(declare-fun tp!2409226 () Bool)

(declare-fun b_and!354179 () Bool)

(assert (=> b!8041455 (= tp!2409226 b_and!354179)))

(declare-fun b_free!135745 () Bool)

(declare-fun b_next!136535 () Bool)

(assert (=> b!8041455 (= b_free!135745 (not b_next!136535))))

(declare-fun tp!2409229 () Bool)

(declare-fun b_and!354181 () Bool)

(assert (=> b!8041455 (= tp!2409229 b_and!354181)))

(declare-fun e!4736798 () Bool)

(assert (=> b!8041440 (= e!4736798 (and tp!2409237 tp!2409233))))

(declare-fun b!8041441 () Bool)

(declare-fun res!3178746 () Bool)

(declare-fun e!4736787 () Bool)

(assert (=> b!8041441 (=> (not res!3178746) (not e!4736787))))

(declare-datatypes ((List!75254 0))(
  ( (Nil!75128) (Cons!75128 (h!81576 (_ BitVec 16)) (t!391024 List!75254)) )
))
(declare-datatypes ((TokenValue!9025 0))(
  ( (FloatLiteralValue!18050 (text!63620 List!75254)) (TokenValueExt!9024 (__x!35331 Int)) (Broken!45125 (value!291155 List!75254)) (Object!9150) (End!9025) (Def!9025) (Underscore!9025) (Match!9025) (Else!9025) (Error!9025) (Case!9025) (If!9025) (Extends!9025) (Abstract!9025) (Class!9025) (Val!9025) (DelimiterValue!18050 (del!9085 List!75254)) (KeywordValue!9031 (value!291156 List!75254)) (CommentValue!18050 (value!291157 List!75254)) (WhitespaceValue!18050 (value!291158 List!75254)) (IndentationValue!9025 (value!291159 List!75254)) (String!84900) (Int32!9025) (Broken!45126 (value!291160 List!75254)) (Boolean!9026) (Unit!171036) (OperatorValue!9028 (op!9085 List!75254)) (IdentifierValue!18050 (value!291161 List!75254)) (IdentifierValue!18051 (value!291162 List!75254)) (WhitespaceValue!18051 (value!291163 List!75254)) (True!18050) (False!18050) (Broken!45127 (value!291164 List!75254)) (Broken!45128 (value!291165 List!75254)) (True!18051) (RightBrace!9025) (RightBracket!9025) (Colon!9025) (Null!9025) (Comma!9025) (LeftBracket!9025) (False!18051) (LeftBrace!9025) (ImaginaryLiteralValue!9025 (text!63621 List!75254)) (StringLiteralValue!27075 (value!291166 List!75254)) (EOFValue!9025 (value!291167 List!75254)) (IdentValue!9025 (value!291168 List!75254)) (DelimiterValue!18051 (value!291169 List!75254)) (DedentValue!9025 (value!291170 List!75254)) (NewLineValue!9025 (value!291171 List!75254)) (IntegerValue!27075 (value!291172 (_ BitVec 32)) (text!63622 List!75254)) (IntegerValue!27076 (value!291173 Int) (text!63623 List!75254)) (Times!9025) (Or!9025) (Equal!9025) (Minus!9025) (Broken!45129 (value!291174 List!75254)) (And!9025) (Div!9025) (LessEqual!9025) (Mod!9025) (Concat!30801) (Not!9025) (Plus!9025) (SpaceValue!9025 (value!291175 List!75254)) (IntegerValue!27077 (value!291176 Int) (text!63624 List!75254)) (StringLiteralValue!27076 (text!63625 List!75254)) (FloatLiteralValue!18051 (text!63626 List!75254)) (BytesLiteralValue!9025 (value!291177 List!75254)) (CommentValue!18051 (value!291178 List!75254)) (StringLiteralValue!27077 (value!291179 List!75254)) (ErrorTokenValue!9025 (msg!9086 List!75254)) )
))
(declare-datatypes ((C!43890 0))(
  ( (C!43891 (val!32721 Int)) )
))
(declare-datatypes ((List!75255 0))(
  ( (Nil!75129) (Cons!75129 (h!81577 C!43890) (t!391025 List!75255)) )
))
(declare-datatypes ((IArray!32007 0))(
  ( (IArray!32008 (innerList!16061 List!75255)) )
))
(declare-datatypes ((Conc!15973 0))(
  ( (Node!15973 (left!57275 Conc!15973) (right!57605 Conc!15973) (csize!32176 Int) (cheight!16184 Int)) (Leaf!30636 (xs!19371 IArray!32007) (csize!32177 Int)) (Empty!15973) )
))
(declare-datatypes ((BalanceConc!30902 0))(
  ( (BalanceConc!30903 (c!1474995 Conc!15973)) )
))
(declare-datatypes ((Regex!21776 0))(
  ( (ElementMatch!21776 (c!1474996 C!43890)) (Concat!30802 (regOne!44064 Regex!21776) (regTwo!44064 Regex!21776)) (EmptyExpr!21776) (Star!21776 (reg!22105 Regex!21776)) (EmptyLang!21776) (Union!21776 (regOne!44065 Regex!21776) (regTwo!44065 Regex!21776)) )
))
(declare-datatypes ((String!84901 0))(
  ( (String!84902 (value!291180 String)) )
))
(declare-datatypes ((TokenValueInjection!17358 0))(
  ( (TokenValueInjection!17359 (toValue!11776 Int) (toChars!11635 Int)) )
))
(declare-datatypes ((Rule!17210 0))(
  ( (Rule!17211 (regex!8705 Regex!21776) (tag!9569 String!84901) (isSeparator!8705 Bool) (transformation!8705 TokenValueInjection!17358)) )
))
(declare-datatypes ((List!75256 0))(
  ( (Nil!75130) (Cons!75130 (h!81578 Rule!17210) (t!391026 List!75256)) )
))
(declare-fun rulesRec!188 () List!75256)

(declare-fun rNSep!142 () Rule!17210)

(assert (=> b!8041441 (= res!3178746 (and (or (not (is-Cons!75130 rulesRec!188)) (not (= (h!81578 rulesRec!188) rNSep!142))) (not (is-Cons!75130 rulesRec!188))))))

(declare-fun b!8041442 () Bool)

(declare-fun res!3178744 () Bool)

(assert (=> b!8041442 (=> (not res!3178744) (not e!4736787))))

(declare-fun rules!4142 () List!75256)

(declare-fun sepAndNonSepRulesDisjointChars!2065 (List!75256 List!75256) Bool)

(assert (=> b!8041442 (= res!3178744 (sepAndNonSepRulesDisjointChars!2065 rules!4142 rulesRec!188))))

(declare-fun e!4736784 () Bool)

(declare-fun tp!2409235 () Bool)

(declare-fun e!4736793 () Bool)

(declare-fun b!8041443 () Bool)

(declare-fun inv!96930 (String!84901) Bool)

(declare-fun inv!96933 (TokenValueInjection!17358) Bool)

(assert (=> b!8041443 (= e!4736784 (and tp!2409235 (inv!96930 (tag!9569 (h!81578 rules!4142))) (inv!96933 (transformation!8705 (h!81578 rules!4142))) e!4736793))))

(declare-fun e!4736792 () Bool)

(declare-fun b!8041444 () Bool)

(declare-fun tp!2409234 () Bool)

(declare-fun e!4736791 () Bool)

(assert (=> b!8041444 (= e!4736791 (and tp!2409234 (inv!96930 (tag!9569 (h!81578 rulesRec!188))) (inv!96933 (transformation!8705 (h!81578 rulesRec!188))) e!4736792))))

(declare-fun b!8041445 () Bool)

(declare-fun res!3178748 () Bool)

(assert (=> b!8041445 (=> (not res!3178748) (not e!4736787))))

(declare-fun rSep!142 () Rule!17210)

(declare-fun c!6865 () C!43890)

(declare-fun contains!20993 (List!75255 C!43890) Bool)

(declare-fun usedCharacters!1283 (Regex!21776) List!75255)

(assert (=> b!8041445 (= res!3178748 (contains!20993 (usedCharacters!1283 (regex!8705 rSep!142)) c!6865))))

(declare-fun e!4736795 () Bool)

(assert (=> b!8041446 (= e!4736795 (and tp!2409227 tp!2409239))))

(declare-fun b!8041447 () Bool)

(declare-fun res!3178747 () Bool)

(assert (=> b!8041447 (=> (not res!3178747) (not e!4736787))))

(assert (=> b!8041447 (= res!3178747 (and (not (isSeparator!8705 rNSep!142)) (isSeparator!8705 rSep!142)))))

(declare-fun res!3178749 () Bool)

(assert (=> start!757090 (=> (not res!3178749) (not e!4736787))))

(declare-datatypes ((LexerInterface!8295 0))(
  ( (LexerInterfaceExt!8292 (__x!35332 Int)) (Lexer!8293) )
))
(declare-fun thiss!27054 () LexerInterface!8295)

(assert (=> start!757090 (= res!3178749 (is-Lexer!8293 thiss!27054))))

(assert (=> start!757090 e!4736787))

(assert (=> start!757090 true))

(declare-fun e!4736794 () Bool)

(assert (=> start!757090 e!4736794))

(declare-fun e!4736785 () Bool)

(assert (=> start!757090 e!4736785))

(declare-fun e!4736786 () Bool)

(assert (=> start!757090 e!4736786))

(declare-fun e!4736797 () Bool)

(assert (=> start!757090 e!4736797))

(declare-fun tp_is_empty!54547 () Bool)

(assert (=> start!757090 tp_is_empty!54547))

(declare-fun b!8041448 () Bool)

(declare-fun tp!2409232 () Bool)

(assert (=> b!8041448 (= e!4736794 (and e!4736784 tp!2409232))))

(declare-fun b!8041449 () Bool)

(declare-fun res!3178745 () Bool)

(assert (=> b!8041449 (=> (not res!3178745) (not e!4736787))))

(declare-fun contains!20994 (List!75256 Rule!17210) Bool)

(assert (=> b!8041449 (= res!3178745 (contains!20994 rules!4142 rNSep!142))))

(declare-fun b!8041450 () Bool)

(declare-fun res!3178743 () Bool)

(assert (=> b!8041450 (=> (not res!3178743) (not e!4736787))))

(assert (=> b!8041450 (= res!3178743 (contains!20994 rules!4142 rSep!142))))

(declare-fun b!8041451 () Bool)

(declare-fun res!3178750 () Bool)

(assert (=> b!8041451 (=> (not res!3178750) (not e!4736787))))

(assert (=> b!8041451 (= res!3178750 (contains!20994 rulesRec!188 rNSep!142))))

(declare-fun b!8041452 () Bool)

(declare-fun tp!2409228 () Bool)

(assert (=> b!8041452 (= e!4736786 (and e!4736791 tp!2409228))))

(assert (=> b!8041453 (= e!4736793 (and tp!2409230 tp!2409238))))

(declare-fun b!8041454 () Bool)

(assert (=> b!8041454 (= e!4736787 (contains!20993 (usedCharacters!1283 (regex!8705 rNSep!142)) c!6865))))

(assert (=> b!8041455 (= e!4736792 (and tp!2409226 tp!2409229))))

(declare-fun tp!2409236 () Bool)

(declare-fun b!8041456 () Bool)

(assert (=> b!8041456 (= e!4736785 (and tp!2409236 (inv!96930 (tag!9569 rSep!142)) (inv!96933 (transformation!8705 rSep!142)) e!4736798))))

(declare-fun b!8041457 () Bool)

(declare-fun res!3178751 () Bool)

(assert (=> b!8041457 (=> (not res!3178751) (not e!4736787))))

(declare-fun rulesInvariant!6763 (LexerInterface!8295 List!75256) Bool)

(assert (=> b!8041457 (= res!3178751 (rulesInvariant!6763 thiss!27054 rules!4142))))

(declare-fun tp!2409231 () Bool)

(declare-fun b!8041458 () Bool)

(assert (=> b!8041458 (= e!4736797 (and tp!2409231 (inv!96930 (tag!9569 rNSep!142)) (inv!96933 (transformation!8705 rNSep!142)) e!4736795))))

(assert (= (and start!757090 res!3178749) b!8041457))

(assert (= (and b!8041457 res!3178751) b!8041450))

(assert (= (and b!8041450 res!3178743) b!8041451))

(assert (= (and b!8041451 res!3178750) b!8041449))

(assert (= (and b!8041449 res!3178745) b!8041447))

(assert (= (and b!8041447 res!3178747) b!8041445))

(assert (= (and b!8041445 res!3178748) b!8041442))

(assert (= (and b!8041442 res!3178744) b!8041441))

(assert (= (and b!8041441 res!3178746) b!8041454))

(assert (= b!8041443 b!8041453))

(assert (= b!8041448 b!8041443))

(assert (= (and start!757090 (is-Cons!75130 rules!4142)) b!8041448))

(assert (= b!8041456 b!8041440))

(assert (= start!757090 b!8041456))

(assert (= b!8041444 b!8041455))

(assert (= b!8041452 b!8041444))

(assert (= (and start!757090 (is-Cons!75130 rulesRec!188)) b!8041452))

(assert (= b!8041458 b!8041446))

(assert (= start!757090 b!8041458))

(declare-fun m!8395602 () Bool)

(assert (=> b!8041458 m!8395602))

(declare-fun m!8395604 () Bool)

(assert (=> b!8041458 m!8395604))

(declare-fun m!8395606 () Bool)

(assert (=> b!8041445 m!8395606))

(assert (=> b!8041445 m!8395606))

(declare-fun m!8395608 () Bool)

(assert (=> b!8041445 m!8395608))

(declare-fun m!8395610 () Bool)

(assert (=> b!8041451 m!8395610))

(declare-fun m!8395612 () Bool)

(assert (=> b!8041443 m!8395612))

(declare-fun m!8395614 () Bool)

(assert (=> b!8041443 m!8395614))

(declare-fun m!8395616 () Bool)

(assert (=> b!8041454 m!8395616))

(assert (=> b!8041454 m!8395616))

(declare-fun m!8395618 () Bool)

(assert (=> b!8041454 m!8395618))

(declare-fun m!8395620 () Bool)

(assert (=> b!8041450 m!8395620))

(declare-fun m!8395622 () Bool)

(assert (=> b!8041449 m!8395622))

(declare-fun m!8395624 () Bool)

(assert (=> b!8041444 m!8395624))

(declare-fun m!8395626 () Bool)

(assert (=> b!8041444 m!8395626))

(declare-fun m!8395628 () Bool)

(assert (=> b!8041457 m!8395628))

(declare-fun m!8395630 () Bool)

(assert (=> b!8041456 m!8395630))

(declare-fun m!8395632 () Bool)

(assert (=> b!8041456 m!8395632))

(declare-fun m!8395634 () Bool)

(assert (=> b!8041442 m!8395634))

(push 1)

(assert (not b!8041450))

(assert tp_is_empty!54547)

(assert (not b_next!136527))

(assert (not b!8041449))

(assert b_and!354179)

(assert (not b_next!136525))

(assert (not b!8041456))

(assert b_and!354167)

(assert b_and!354169)

(assert (not b!8041445))

(assert (not b!8041452))

(assert (not b_next!136529))

(assert (not b!8041443))

(assert (not b_next!136531))

(assert (not b!8041442))

(assert (not b_next!136523))

(assert b_and!354173)

(assert (not b!8041444))

(assert (not b_next!136533))

(assert b_and!354181)

(assert (not b!8041448))

(assert (not b!8041458))

(assert (not b_next!136535))

(assert b_and!354171)

(assert b_and!354177)

(assert (not b!8041454))

(assert (not b_next!136521))

(assert (not b!8041457))

(assert b_and!354175)

(assert (not b!8041451))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136529))

(assert (not b_next!136527))

(assert b_and!354173)

(assert b_and!354179)

(assert (not b_next!136525))

(assert b_and!354167)

(assert b_and!354177)

(assert (not b_next!136521))

(assert b_and!354169)

(assert b_and!354175)

(assert (not b_next!136531))

(assert (not b_next!136523))

(assert (not b_next!136533))

(assert b_and!354181)

(assert (not b_next!136535))

(assert b_and!354171)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395673 () Bool)

(declare-fun lt!2722309 () Bool)

(declare-fun content!16040 (List!75256) (Set Rule!17210))

(assert (=> d!2395673 (= lt!2722309 (set.member rNSep!142 (content!16040 rules!4142)))))

(declare-fun e!4736848 () Bool)

(assert (=> d!2395673 (= lt!2722309 e!4736848)))

(declare-fun res!3178791 () Bool)

(assert (=> d!2395673 (=> (not res!3178791) (not e!4736848))))

(assert (=> d!2395673 (= res!3178791 (is-Cons!75130 rules!4142))))

(assert (=> d!2395673 (= (contains!20994 rules!4142 rNSep!142) lt!2722309)))

(declare-fun b!8041520 () Bool)

(declare-fun e!4736849 () Bool)

(assert (=> b!8041520 (= e!4736848 e!4736849)))

(declare-fun res!3178792 () Bool)

(assert (=> b!8041520 (=> res!3178792 e!4736849)))

(assert (=> b!8041520 (= res!3178792 (= (h!81578 rules!4142) rNSep!142))))

(declare-fun b!8041521 () Bool)

(assert (=> b!8041521 (= e!4736849 (contains!20994 (t!391026 rules!4142) rNSep!142))))

(assert (= (and d!2395673 res!3178791) b!8041520))

(assert (= (and b!8041520 (not res!3178792)) b!8041521))

(declare-fun m!8395670 () Bool)

(assert (=> d!2395673 m!8395670))

(declare-fun m!8395672 () Bool)

(assert (=> d!2395673 m!8395672))

(declare-fun m!8395674 () Bool)

(assert (=> b!8041521 m!8395674))

(assert (=> b!8041449 d!2395673))

(declare-fun d!2395675 () Bool)

(declare-fun lt!2722310 () Bool)

(assert (=> d!2395675 (= lt!2722310 (set.member rSep!142 (content!16040 rules!4142)))))

(declare-fun e!4736850 () Bool)

(assert (=> d!2395675 (= lt!2722310 e!4736850)))

(declare-fun res!3178793 () Bool)

(assert (=> d!2395675 (=> (not res!3178793) (not e!4736850))))

(assert (=> d!2395675 (= res!3178793 (is-Cons!75130 rules!4142))))

(assert (=> d!2395675 (= (contains!20994 rules!4142 rSep!142) lt!2722310)))

(declare-fun b!8041522 () Bool)

(declare-fun e!4736851 () Bool)

(assert (=> b!8041522 (= e!4736850 e!4736851)))

(declare-fun res!3178794 () Bool)

(assert (=> b!8041522 (=> res!3178794 e!4736851)))

(assert (=> b!8041522 (= res!3178794 (= (h!81578 rules!4142) rSep!142))))

(declare-fun b!8041523 () Bool)

(assert (=> b!8041523 (= e!4736851 (contains!20994 (t!391026 rules!4142) rSep!142))))

(assert (= (and d!2395675 res!3178793) b!8041522))

(assert (= (and b!8041522 (not res!3178794)) b!8041523))

(assert (=> d!2395675 m!8395670))

(declare-fun m!8395676 () Bool)

(assert (=> d!2395675 m!8395676))

(declare-fun m!8395678 () Bool)

(assert (=> b!8041523 m!8395678))

(assert (=> b!8041450 d!2395675))

(declare-fun d!2395677 () Bool)

(declare-fun res!3178797 () Bool)

(declare-fun e!4736854 () Bool)

(assert (=> d!2395677 (=> (not res!3178797) (not e!4736854))))

(declare-fun rulesValid!3140 (LexerInterface!8295 List!75256) Bool)

(assert (=> d!2395677 (= res!3178797 (rulesValid!3140 thiss!27054 rules!4142))))

(assert (=> d!2395677 (= (rulesInvariant!6763 thiss!27054 rules!4142) e!4736854)))

(declare-fun b!8041526 () Bool)

(declare-datatypes ((List!75260 0))(
  ( (Nil!75134) (Cons!75134 (h!81582 String!84901) (t!391030 List!75260)) )
))
(declare-fun noDuplicateTag!3301 (LexerInterface!8295 List!75256 List!75260) Bool)

(assert (=> b!8041526 (= e!4736854 (noDuplicateTag!3301 thiss!27054 rules!4142 Nil!75134))))

(assert (= (and d!2395677 res!3178797) b!8041526))

(declare-fun m!8395680 () Bool)

(assert (=> d!2395677 m!8395680))

(declare-fun m!8395682 () Bool)

(assert (=> b!8041526 m!8395682))

(assert (=> b!8041457 d!2395677))

(declare-fun d!2395679 () Bool)

(assert (=> d!2395679 (= (inv!96930 (tag!9569 rNSep!142)) (= (mod (str.len (value!291180 (tag!9569 rNSep!142))) 2) 0))))

(assert (=> b!8041458 d!2395679))

(declare-fun d!2395681 () Bool)

(declare-fun res!3178800 () Bool)

(declare-fun e!4736857 () Bool)

(assert (=> d!2395681 (=> (not res!3178800) (not e!4736857))))

(declare-fun semiInverseModEq!3864 (Int Int) Bool)

(assert (=> d!2395681 (= res!3178800 (semiInverseModEq!3864 (toChars!11635 (transformation!8705 rNSep!142)) (toValue!11776 (transformation!8705 rNSep!142))))))

(assert (=> d!2395681 (= (inv!96933 (transformation!8705 rNSep!142)) e!4736857)))

(declare-fun b!8041529 () Bool)

(declare-fun equivClasses!3679 (Int Int) Bool)

(assert (=> b!8041529 (= e!4736857 (equivClasses!3679 (toChars!11635 (transformation!8705 rNSep!142)) (toValue!11776 (transformation!8705 rNSep!142))))))

(assert (= (and d!2395681 res!3178800) b!8041529))

(declare-fun m!8395684 () Bool)

(assert (=> d!2395681 m!8395684))

(declare-fun m!8395686 () Bool)

(assert (=> b!8041529 m!8395686))

(assert (=> b!8041458 d!2395681))

(declare-fun d!2395685 () Bool)

(assert (=> d!2395685 (= (inv!96930 (tag!9569 rSep!142)) (= (mod (str.len (value!291180 (tag!9569 rSep!142))) 2) 0))))

(assert (=> b!8041456 d!2395685))

(declare-fun d!2395687 () Bool)

(declare-fun res!3178801 () Bool)

(declare-fun e!4736858 () Bool)

(assert (=> d!2395687 (=> (not res!3178801) (not e!4736858))))

(assert (=> d!2395687 (= res!3178801 (semiInverseModEq!3864 (toChars!11635 (transformation!8705 rSep!142)) (toValue!11776 (transformation!8705 rSep!142))))))

(assert (=> d!2395687 (= (inv!96933 (transformation!8705 rSep!142)) e!4736858)))

(declare-fun b!8041530 () Bool)

(assert (=> b!8041530 (= e!4736858 (equivClasses!3679 (toChars!11635 (transformation!8705 rSep!142)) (toValue!11776 (transformation!8705 rSep!142))))))

(assert (= (and d!2395687 res!3178801) b!8041530))

(declare-fun m!8395688 () Bool)

(assert (=> d!2395687 m!8395688))

(declare-fun m!8395690 () Bool)

(assert (=> b!8041530 m!8395690))

(assert (=> b!8041456 d!2395687))

(declare-fun d!2395689 () Bool)

(declare-fun lt!2722315 () Bool)

(declare-fun content!16041 (List!75255) (Set C!43890))

(assert (=> d!2395689 (= lt!2722315 (set.member c!6865 (content!16041 (usedCharacters!1283 (regex!8705 rSep!142)))))))

(declare-fun e!4736868 () Bool)

(assert (=> d!2395689 (= lt!2722315 e!4736868)))

(declare-fun res!3178811 () Bool)

(assert (=> d!2395689 (=> (not res!3178811) (not e!4736868))))

(assert (=> d!2395689 (= res!3178811 (is-Cons!75129 (usedCharacters!1283 (regex!8705 rSep!142))))))

(assert (=> d!2395689 (= (contains!20993 (usedCharacters!1283 (regex!8705 rSep!142)) c!6865) lt!2722315)))

(declare-fun b!8041539 () Bool)

(declare-fun e!4736867 () Bool)

(assert (=> b!8041539 (= e!4736868 e!4736867)))

(declare-fun res!3178810 () Bool)

(assert (=> b!8041539 (=> res!3178810 e!4736867)))

(assert (=> b!8041539 (= res!3178810 (= (h!81577 (usedCharacters!1283 (regex!8705 rSep!142))) c!6865))))

(declare-fun b!8041540 () Bool)

(assert (=> b!8041540 (= e!4736867 (contains!20993 (t!391025 (usedCharacters!1283 (regex!8705 rSep!142))) c!6865))))

(assert (= (and d!2395689 res!3178811) b!8041539))

(assert (= (and b!8041539 (not res!3178810)) b!8041540))

(assert (=> d!2395689 m!8395606))

(declare-fun m!8395692 () Bool)

(assert (=> d!2395689 m!8395692))

(declare-fun m!8395694 () Bool)

(assert (=> d!2395689 m!8395694))

(declare-fun m!8395696 () Bool)

(assert (=> b!8041540 m!8395696))

(assert (=> b!8041445 d!2395689))

(declare-fun b!8041559 () Bool)

(declare-fun e!4736880 () List!75255)

(assert (=> b!8041559 (= e!4736880 Nil!75129)))

(declare-fun b!8041560 () Bool)

(declare-fun e!4736879 () List!75255)

(assert (=> b!8041560 (= e!4736880 e!4736879)))

(declare-fun c!1475007 () Bool)

(assert (=> b!8041560 (= c!1475007 (is-ElementMatch!21776 (regex!8705 rSep!142)))))

(declare-fun bm!746424 () Bool)

(declare-fun call!746430 () List!75255)

(declare-fun call!746431 () List!75255)

(declare-fun call!746429 () List!75255)

(declare-fun ++!18625 (List!75255 List!75255) List!75255)

(assert (=> bm!746424 (= call!746430 (++!18625 call!746431 call!746429))))

(declare-fun d!2395691 () Bool)

(declare-fun c!1475008 () Bool)

(assert (=> d!2395691 (= c!1475008 (or (is-EmptyExpr!21776 (regex!8705 rSep!142)) (is-EmptyLang!21776 (regex!8705 rSep!142))))))

(assert (=> d!2395691 (= (usedCharacters!1283 (regex!8705 rSep!142)) e!4736880)))

(declare-fun b!8041561 () Bool)

(assert (=> b!8041561 (= e!4736879 (Cons!75129 (c!1474996 (regex!8705 rSep!142)) Nil!75129))))

(declare-fun b!8041562 () Bool)

(declare-fun e!4736882 () List!75255)

(assert (=> b!8041562 (= e!4736882 call!746430)))

(declare-fun b!8041563 () Bool)

(assert (=> b!8041563 (= e!4736882 call!746430)))

(declare-fun b!8041564 () Bool)

(declare-fun e!4736881 () List!75255)

(assert (=> b!8041564 (= e!4736881 e!4736882)))

(declare-fun c!1475010 () Bool)

(assert (=> b!8041564 (= c!1475010 (is-Union!21776 (regex!8705 rSep!142)))))

(declare-fun b!8041565 () Bool)

(declare-fun c!1475009 () Bool)

(assert (=> b!8041565 (= c!1475009 (is-Star!21776 (regex!8705 rSep!142)))))

(assert (=> b!8041565 (= e!4736879 e!4736881)))

(declare-fun bm!746425 () Bool)

(declare-fun call!746432 () List!75255)

(assert (=> bm!746425 (= call!746431 call!746432)))

(declare-fun bm!746426 () Bool)

(assert (=> bm!746426 (= call!746429 (usedCharacters!1283 (ite c!1475010 (regTwo!44065 (regex!8705 rSep!142)) (regTwo!44064 (regex!8705 rSep!142)))))))

(declare-fun b!8041566 () Bool)

(assert (=> b!8041566 (= e!4736881 call!746432)))

(declare-fun bm!746427 () Bool)

(assert (=> bm!746427 (= call!746432 (usedCharacters!1283 (ite c!1475009 (reg!22105 (regex!8705 rSep!142)) (ite c!1475010 (regOne!44065 (regex!8705 rSep!142)) (regOne!44064 (regex!8705 rSep!142))))))))

(assert (= (and d!2395691 c!1475008) b!8041559))

(assert (= (and d!2395691 (not c!1475008)) b!8041560))

(assert (= (and b!8041560 c!1475007) b!8041561))

(assert (= (and b!8041560 (not c!1475007)) b!8041565))

(assert (= (and b!8041565 c!1475009) b!8041566))

(assert (= (and b!8041565 (not c!1475009)) b!8041564))

(assert (= (and b!8041564 c!1475010) b!8041563))

(assert (= (and b!8041564 (not c!1475010)) b!8041562))

(assert (= (or b!8041563 b!8041562) bm!746426))

(assert (= (or b!8041563 b!8041562) bm!746425))

(assert (= (or b!8041563 b!8041562) bm!746424))

(assert (= (or b!8041566 bm!746425) bm!746427))

(declare-fun m!8395704 () Bool)

(assert (=> bm!746424 m!8395704))

(declare-fun m!8395706 () Bool)

(assert (=> bm!746426 m!8395706))

(declare-fun m!8395708 () Bool)

(assert (=> bm!746427 m!8395708))

(assert (=> b!8041445 d!2395691))

(declare-fun d!2395697 () Bool)

(assert (=> d!2395697 (= (inv!96930 (tag!9569 (h!81578 rulesRec!188))) (= (mod (str.len (value!291180 (tag!9569 (h!81578 rulesRec!188)))) 2) 0))))

(assert (=> b!8041444 d!2395697))

(declare-fun d!2395699 () Bool)

(declare-fun res!3178814 () Bool)

(declare-fun e!4736883 () Bool)

(assert (=> d!2395699 (=> (not res!3178814) (not e!4736883))))

(assert (=> d!2395699 (= res!3178814 (semiInverseModEq!3864 (toChars!11635 (transformation!8705 (h!81578 rulesRec!188))) (toValue!11776 (transformation!8705 (h!81578 rulesRec!188)))))))

(assert (=> d!2395699 (= (inv!96933 (transformation!8705 (h!81578 rulesRec!188))) e!4736883)))

(declare-fun b!8041567 () Bool)

(assert (=> b!8041567 (= e!4736883 (equivClasses!3679 (toChars!11635 (transformation!8705 (h!81578 rulesRec!188))) (toValue!11776 (transformation!8705 (h!81578 rulesRec!188)))))))

(assert (= (and d!2395699 res!3178814) b!8041567))

(declare-fun m!8395710 () Bool)

(assert (=> d!2395699 m!8395710))

(declare-fun m!8395712 () Bool)

(assert (=> b!8041567 m!8395712))

(assert (=> b!8041444 d!2395699))

(declare-fun d!2395701 () Bool)

(declare-fun lt!2722317 () Bool)

(assert (=> d!2395701 (= lt!2722317 (set.member c!6865 (content!16041 (usedCharacters!1283 (regex!8705 rNSep!142)))))))

(declare-fun e!4736885 () Bool)

(assert (=> d!2395701 (= lt!2722317 e!4736885)))

(declare-fun res!3178816 () Bool)

(assert (=> d!2395701 (=> (not res!3178816) (not e!4736885))))

(assert (=> d!2395701 (= res!3178816 (is-Cons!75129 (usedCharacters!1283 (regex!8705 rNSep!142))))))

(assert (=> d!2395701 (= (contains!20993 (usedCharacters!1283 (regex!8705 rNSep!142)) c!6865) lt!2722317)))

(declare-fun b!8041568 () Bool)

(declare-fun e!4736884 () Bool)

(assert (=> b!8041568 (= e!4736885 e!4736884)))

(declare-fun res!3178815 () Bool)

(assert (=> b!8041568 (=> res!3178815 e!4736884)))

(assert (=> b!8041568 (= res!3178815 (= (h!81577 (usedCharacters!1283 (regex!8705 rNSep!142))) c!6865))))

(declare-fun b!8041569 () Bool)

(assert (=> b!8041569 (= e!4736884 (contains!20993 (t!391025 (usedCharacters!1283 (regex!8705 rNSep!142))) c!6865))))

(assert (= (and d!2395701 res!3178816) b!8041568))

(assert (= (and b!8041568 (not res!3178815)) b!8041569))

(assert (=> d!2395701 m!8395616))

(declare-fun m!8395714 () Bool)

(assert (=> d!2395701 m!8395714))

(declare-fun m!8395716 () Bool)

(assert (=> d!2395701 m!8395716))

(declare-fun m!8395718 () Bool)

(assert (=> b!8041569 m!8395718))

(assert (=> b!8041454 d!2395701))

(declare-fun b!8041570 () Bool)

(declare-fun e!4736887 () List!75255)

(assert (=> b!8041570 (= e!4736887 Nil!75129)))

(declare-fun b!8041571 () Bool)

(declare-fun e!4736886 () List!75255)

(assert (=> b!8041571 (= e!4736887 e!4736886)))

(declare-fun c!1475011 () Bool)

(assert (=> b!8041571 (= c!1475011 (is-ElementMatch!21776 (regex!8705 rNSep!142)))))

(declare-fun bm!746428 () Bool)

(declare-fun call!746434 () List!75255)

(declare-fun call!746435 () List!75255)

(declare-fun call!746433 () List!75255)

(assert (=> bm!746428 (= call!746434 (++!18625 call!746435 call!746433))))

(declare-fun d!2395703 () Bool)

(declare-fun c!1475012 () Bool)

(assert (=> d!2395703 (= c!1475012 (or (is-EmptyExpr!21776 (regex!8705 rNSep!142)) (is-EmptyLang!21776 (regex!8705 rNSep!142))))))

(assert (=> d!2395703 (= (usedCharacters!1283 (regex!8705 rNSep!142)) e!4736887)))

(declare-fun b!8041572 () Bool)

(assert (=> b!8041572 (= e!4736886 (Cons!75129 (c!1474996 (regex!8705 rNSep!142)) Nil!75129))))

(declare-fun b!8041573 () Bool)

(declare-fun e!4736889 () List!75255)

(assert (=> b!8041573 (= e!4736889 call!746434)))

(declare-fun b!8041574 () Bool)

(assert (=> b!8041574 (= e!4736889 call!746434)))

(declare-fun b!8041575 () Bool)

(declare-fun e!4736888 () List!75255)

(assert (=> b!8041575 (= e!4736888 e!4736889)))

(declare-fun c!1475014 () Bool)

(assert (=> b!8041575 (= c!1475014 (is-Union!21776 (regex!8705 rNSep!142)))))

(declare-fun b!8041576 () Bool)

(declare-fun c!1475013 () Bool)

(assert (=> b!8041576 (= c!1475013 (is-Star!21776 (regex!8705 rNSep!142)))))

(assert (=> b!8041576 (= e!4736886 e!4736888)))

(declare-fun bm!746429 () Bool)

(declare-fun call!746436 () List!75255)

(assert (=> bm!746429 (= call!746435 call!746436)))

(declare-fun bm!746430 () Bool)

(assert (=> bm!746430 (= call!746433 (usedCharacters!1283 (ite c!1475014 (regTwo!44065 (regex!8705 rNSep!142)) (regTwo!44064 (regex!8705 rNSep!142)))))))

(declare-fun b!8041577 () Bool)

(assert (=> b!8041577 (= e!4736888 call!746436)))

(declare-fun bm!746431 () Bool)

(assert (=> bm!746431 (= call!746436 (usedCharacters!1283 (ite c!1475013 (reg!22105 (regex!8705 rNSep!142)) (ite c!1475014 (regOne!44065 (regex!8705 rNSep!142)) (regOne!44064 (regex!8705 rNSep!142))))))))

(assert (= (and d!2395703 c!1475012) b!8041570))

(assert (= (and d!2395703 (not c!1475012)) b!8041571))

(assert (= (and b!8041571 c!1475011) b!8041572))

(assert (= (and b!8041571 (not c!1475011)) b!8041576))

(assert (= (and b!8041576 c!1475013) b!8041577))

(assert (= (and b!8041576 (not c!1475013)) b!8041575))

(assert (= (and b!8041575 c!1475014) b!8041574))

(assert (= (and b!8041575 (not c!1475014)) b!8041573))

(assert (= (or b!8041574 b!8041573) bm!746430))

(assert (= (or b!8041574 b!8041573) bm!746429))

(assert (= (or b!8041574 b!8041573) bm!746428))

(assert (= (or b!8041577 bm!746429) bm!746431))

(declare-fun m!8395720 () Bool)

(assert (=> bm!746428 m!8395720))

(declare-fun m!8395722 () Bool)

(assert (=> bm!746430 m!8395722))

(declare-fun m!8395724 () Bool)

(assert (=> bm!746431 m!8395724))

(assert (=> b!8041454 d!2395703))

(declare-fun d!2395705 () Bool)

(assert (=> d!2395705 (= (inv!96930 (tag!9569 (h!81578 rules!4142))) (= (mod (str.len (value!291180 (tag!9569 (h!81578 rules!4142)))) 2) 0))))

(assert (=> b!8041443 d!2395705))

(declare-fun d!2395707 () Bool)

(declare-fun res!3178817 () Bool)

(declare-fun e!4736890 () Bool)

(assert (=> d!2395707 (=> (not res!3178817) (not e!4736890))))

(assert (=> d!2395707 (= res!3178817 (semiInverseModEq!3864 (toChars!11635 (transformation!8705 (h!81578 rules!4142))) (toValue!11776 (transformation!8705 (h!81578 rules!4142)))))))

(assert (=> d!2395707 (= (inv!96933 (transformation!8705 (h!81578 rules!4142))) e!4736890)))

(declare-fun b!8041578 () Bool)

(assert (=> b!8041578 (= e!4736890 (equivClasses!3679 (toChars!11635 (transformation!8705 (h!81578 rules!4142))) (toValue!11776 (transformation!8705 (h!81578 rules!4142)))))))

(assert (= (and d!2395707 res!3178817) b!8041578))

(declare-fun m!8395726 () Bool)

(assert (=> d!2395707 m!8395726))

(declare-fun m!8395728 () Bool)

(assert (=> b!8041578 m!8395728))

(assert (=> b!8041443 d!2395707))

(declare-fun d!2395709 () Bool)

(declare-fun res!3178825 () Bool)

(declare-fun e!4736898 () Bool)

(assert (=> d!2395709 (=> res!3178825 e!4736898)))

(assert (=> d!2395709 (= res!3178825 (not (is-Cons!75130 rulesRec!188)))))

(assert (=> d!2395709 (= (sepAndNonSepRulesDisjointChars!2065 rules!4142 rulesRec!188) e!4736898)))

(declare-fun b!8041586 () Bool)

(declare-fun e!4736899 () Bool)

(assert (=> b!8041586 (= e!4736898 e!4736899)))

(declare-fun res!3178826 () Bool)

(assert (=> b!8041586 (=> (not res!3178826) (not e!4736899))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!979 (Rule!17210 List!75256) Bool)

(assert (=> b!8041586 (= res!3178826 (ruleDisjointCharsFromAllFromOtherType!979 (h!81578 rulesRec!188) rules!4142))))

(declare-fun b!8041587 () Bool)

(assert (=> b!8041587 (= e!4736899 (sepAndNonSepRulesDisjointChars!2065 rules!4142 (t!391026 rulesRec!188)))))

(assert (= (and d!2395709 (not res!3178825)) b!8041586))

(assert (= (and b!8041586 res!3178826) b!8041587))

(declare-fun m!8395734 () Bool)

(assert (=> b!8041586 m!8395734))

(declare-fun m!8395736 () Bool)

(assert (=> b!8041587 m!8395736))

(assert (=> b!8041442 d!2395709))

(declare-fun d!2395713 () Bool)

(declare-fun lt!2722318 () Bool)

(assert (=> d!2395713 (= lt!2722318 (set.member rNSep!142 (content!16040 rulesRec!188)))))

(declare-fun e!4736900 () Bool)

(assert (=> d!2395713 (= lt!2722318 e!4736900)))

(declare-fun res!3178827 () Bool)

(assert (=> d!2395713 (=> (not res!3178827) (not e!4736900))))

(assert (=> d!2395713 (= res!3178827 (is-Cons!75130 rulesRec!188))))

(assert (=> d!2395713 (= (contains!20994 rulesRec!188 rNSep!142) lt!2722318)))

(declare-fun b!8041588 () Bool)

(declare-fun e!4736901 () Bool)

(assert (=> b!8041588 (= e!4736900 e!4736901)))

(declare-fun res!3178828 () Bool)

(assert (=> b!8041588 (=> res!3178828 e!4736901)))

(assert (=> b!8041588 (= res!3178828 (= (h!81578 rulesRec!188) rNSep!142))))

(declare-fun b!8041589 () Bool)

(assert (=> b!8041589 (= e!4736901 (contains!20994 (t!391026 rulesRec!188) rNSep!142))))

(assert (= (and d!2395713 res!3178827) b!8041588))

(assert (= (and b!8041588 (not res!3178828)) b!8041589))

(declare-fun m!8395738 () Bool)

(assert (=> d!2395713 m!8395738))

(declare-fun m!8395740 () Bool)

(assert (=> d!2395713 m!8395740))

(declare-fun m!8395742 () Bool)

(assert (=> b!8041589 m!8395742))

(assert (=> b!8041451 d!2395713))

(declare-fun e!4736904 () Bool)

(assert (=> b!8041444 (= tp!2409234 e!4736904)))

(declare-fun b!8041600 () Bool)

(assert (=> b!8041600 (= e!4736904 tp_is_empty!54547)))

(declare-fun b!8041602 () Bool)

(declare-fun tp!2409296 () Bool)

(assert (=> b!8041602 (= e!4736904 tp!2409296)))

(declare-fun b!8041603 () Bool)

(declare-fun tp!2409292 () Bool)

(declare-fun tp!2409293 () Bool)

(assert (=> b!8041603 (= e!4736904 (and tp!2409292 tp!2409293))))

(declare-fun b!8041601 () Bool)

(declare-fun tp!2409294 () Bool)

(declare-fun tp!2409295 () Bool)

(assert (=> b!8041601 (= e!4736904 (and tp!2409294 tp!2409295))))

(assert (= (and b!8041444 (is-ElementMatch!21776 (regex!8705 (h!81578 rulesRec!188)))) b!8041600))

(assert (= (and b!8041444 (is-Concat!30802 (regex!8705 (h!81578 rulesRec!188)))) b!8041601))

(assert (= (and b!8041444 (is-Star!21776 (regex!8705 (h!81578 rulesRec!188)))) b!8041602))

(assert (= (and b!8041444 (is-Union!21776 (regex!8705 (h!81578 rulesRec!188)))) b!8041603))

(declare-fun b!8041614 () Bool)

(declare-fun b_free!135763 () Bool)

(declare-fun b_next!136553 () Bool)

(assert (=> b!8041614 (= b_free!135763 (not b_next!136553))))

(declare-fun tp!2409305 () Bool)

(declare-fun b_and!354199 () Bool)

(assert (=> b!8041614 (= tp!2409305 b_and!354199)))

(declare-fun b_free!135765 () Bool)

(declare-fun b_next!136555 () Bool)

(assert (=> b!8041614 (= b_free!135765 (not b_next!136555))))

(declare-fun tp!2409306 () Bool)

(declare-fun b_and!354201 () Bool)

(assert (=> b!8041614 (= tp!2409306 b_and!354201)))

(declare-fun e!4736915 () Bool)

(assert (=> b!8041614 (= e!4736915 (and tp!2409305 tp!2409306))))

(declare-fun tp!2409307 () Bool)

(declare-fun b!8041613 () Bool)

(declare-fun e!4736914 () Bool)

(assert (=> b!8041613 (= e!4736914 (and tp!2409307 (inv!96930 (tag!9569 (h!81578 (t!391026 rules!4142)))) (inv!96933 (transformation!8705 (h!81578 (t!391026 rules!4142)))) e!4736915))))

(declare-fun b!8041612 () Bool)

(declare-fun e!4736916 () Bool)

(declare-fun tp!2409308 () Bool)

(assert (=> b!8041612 (= e!4736916 (and e!4736914 tp!2409308))))

(assert (=> b!8041448 (= tp!2409232 e!4736916)))

(assert (= b!8041613 b!8041614))

(assert (= b!8041612 b!8041613))

(assert (= (and b!8041448 (is-Cons!75130 (t!391026 rules!4142))) b!8041612))

(declare-fun m!8395744 () Bool)

(assert (=> b!8041613 m!8395744))

(declare-fun m!8395746 () Bool)

(assert (=> b!8041613 m!8395746))

(declare-fun e!4736917 () Bool)

(assert (=> b!8041443 (= tp!2409235 e!4736917)))

(declare-fun b!8041615 () Bool)

(assert (=> b!8041615 (= e!4736917 tp_is_empty!54547)))

(declare-fun b!8041617 () Bool)

(declare-fun tp!2409313 () Bool)

(assert (=> b!8041617 (= e!4736917 tp!2409313)))

(declare-fun b!8041618 () Bool)

(declare-fun tp!2409309 () Bool)

(declare-fun tp!2409310 () Bool)

(assert (=> b!8041618 (= e!4736917 (and tp!2409309 tp!2409310))))

(declare-fun b!8041616 () Bool)

(declare-fun tp!2409311 () Bool)

(declare-fun tp!2409312 () Bool)

(assert (=> b!8041616 (= e!4736917 (and tp!2409311 tp!2409312))))

(assert (= (and b!8041443 (is-ElementMatch!21776 (regex!8705 (h!81578 rules!4142)))) b!8041615))

(assert (= (and b!8041443 (is-Concat!30802 (regex!8705 (h!81578 rules!4142)))) b!8041616))

(assert (= (and b!8041443 (is-Star!21776 (regex!8705 (h!81578 rules!4142)))) b!8041617))

(assert (= (and b!8041443 (is-Union!21776 (regex!8705 (h!81578 rules!4142)))) b!8041618))

(declare-fun b!8041625 () Bool)

(declare-fun b_free!135767 () Bool)

(declare-fun b_next!136557 () Bool)

(assert (=> b!8041625 (= b_free!135767 (not b_next!136557))))

(declare-fun tp!2409314 () Bool)

(declare-fun b_and!354203 () Bool)

(assert (=> b!8041625 (= tp!2409314 b_and!354203)))

(declare-fun b_free!135769 () Bool)

(declare-fun b_next!136559 () Bool)

(assert (=> b!8041625 (= b_free!135769 (not b_next!136559))))

(declare-fun tp!2409315 () Bool)

(declare-fun b_and!354205 () Bool)

(assert (=> b!8041625 (= tp!2409315 b_and!354205)))

(declare-fun e!4736924 () Bool)

(assert (=> b!8041625 (= e!4736924 (and tp!2409314 tp!2409315))))

(declare-fun tp!2409316 () Bool)

(declare-fun e!4736923 () Bool)

(declare-fun b!8041624 () Bool)

(assert (=> b!8041624 (= e!4736923 (and tp!2409316 (inv!96930 (tag!9569 (h!81578 (t!391026 rulesRec!188)))) (inv!96933 (transformation!8705 (h!81578 (t!391026 rulesRec!188)))) e!4736924))))

(declare-fun b!8041623 () Bool)

(declare-fun e!4736925 () Bool)

(declare-fun tp!2409317 () Bool)

(assert (=> b!8041623 (= e!4736925 (and e!4736923 tp!2409317))))

(assert (=> b!8041452 (= tp!2409228 e!4736925)))

(assert (= b!8041624 b!8041625))

(assert (= b!8041623 b!8041624))

(assert (= (and b!8041452 (is-Cons!75130 (t!391026 rulesRec!188))) b!8041623))

(declare-fun m!8395748 () Bool)

(assert (=> b!8041624 m!8395748))

(declare-fun m!8395750 () Bool)

(assert (=> b!8041624 m!8395750))

(declare-fun e!4736926 () Bool)

(assert (=> b!8041458 (= tp!2409231 e!4736926)))

(declare-fun b!8041626 () Bool)

(assert (=> b!8041626 (= e!4736926 tp_is_empty!54547)))

(declare-fun b!8041628 () Bool)

(declare-fun tp!2409322 () Bool)

(assert (=> b!8041628 (= e!4736926 tp!2409322)))

(declare-fun b!8041629 () Bool)

(declare-fun tp!2409318 () Bool)

(declare-fun tp!2409319 () Bool)

(assert (=> b!8041629 (= e!4736926 (and tp!2409318 tp!2409319))))

(declare-fun b!8041627 () Bool)

(declare-fun tp!2409320 () Bool)

(declare-fun tp!2409321 () Bool)

(assert (=> b!8041627 (= e!4736926 (and tp!2409320 tp!2409321))))

(assert (= (and b!8041458 (is-ElementMatch!21776 (regex!8705 rNSep!142))) b!8041626))

(assert (= (and b!8041458 (is-Concat!30802 (regex!8705 rNSep!142))) b!8041627))

(assert (= (and b!8041458 (is-Star!21776 (regex!8705 rNSep!142))) b!8041628))

(assert (= (and b!8041458 (is-Union!21776 (regex!8705 rNSep!142))) b!8041629))

(declare-fun e!4736927 () Bool)

(assert (=> b!8041456 (= tp!2409236 e!4736927)))

(declare-fun b!8041630 () Bool)

(assert (=> b!8041630 (= e!4736927 tp_is_empty!54547)))

(declare-fun b!8041632 () Bool)

(declare-fun tp!2409327 () Bool)

(assert (=> b!8041632 (= e!4736927 tp!2409327)))

(declare-fun b!8041633 () Bool)

(declare-fun tp!2409323 () Bool)

(declare-fun tp!2409324 () Bool)

(assert (=> b!8041633 (= e!4736927 (and tp!2409323 tp!2409324))))

(declare-fun b!8041631 () Bool)

(declare-fun tp!2409325 () Bool)

(declare-fun tp!2409326 () Bool)

(assert (=> b!8041631 (= e!4736927 (and tp!2409325 tp!2409326))))

(assert (= (and b!8041456 (is-ElementMatch!21776 (regex!8705 rSep!142))) b!8041630))

(assert (= (and b!8041456 (is-Concat!30802 (regex!8705 rSep!142))) b!8041631))

(assert (= (and b!8041456 (is-Star!21776 (regex!8705 rSep!142))) b!8041632))

(assert (= (and b!8041456 (is-Union!21776 (regex!8705 rSep!142))) b!8041633))

(push 1)

(assert b_and!354205)

(assert (not b!8041603))

(assert (not b_next!136527))

(assert b_and!354173)

(assert b_and!354179)

(assert (not b!8041617))

(assert (not d!2395673))

(assert b_and!354199)

(assert (not b!8041633))

(assert (not b!8041523))

(assert (not b!8041629))

(assert (not b!8041567))

(assert (not b!8041521))

(assert (not b!8041526))

(assert (not b_next!136529))

(assert (not b_next!136553))

(assert (not b!8041586))

(assert (not d!2395713))

(assert b_and!354203)

(assert (not b!8041616))

(assert b_and!354201)

(assert (not bm!746424))

(assert (not b!8041530))

(assert tp_is_empty!54547)

(assert (not b!8041623))

(assert (not b!8041578))

(assert (not b!8041589))

(assert (not d!2395687))

(assert (not b_next!136523))

(assert (not b_next!136531))

(assert (not b!8041601))

(assert (not b!8041631))

(assert (not b!8041627))

(assert (not b_next!136533))

(assert b_and!354181)

(assert (not b!8041612))

(assert (not b!8041587))

(assert (not bm!746431))

(assert (not d!2395701))

(assert (not b!8041602))

(assert (not d!2395707))

(assert (not b!8041529))

(assert (not b_next!136525))

(assert (not b!8041628))

(assert (not d!2395675))

(assert (not b!8041569))

(assert (not b!8041618))

(assert b_and!354167)

(assert (not b!8041632))

(assert (not b!8041540))

(assert (not d!2395689))

(assert (not b_next!136535))

(assert b_and!354171)

(assert (not bm!746430))

(assert (not b_next!136557))

(assert (not bm!746426))

(assert (not d!2395681))

(assert (not b_next!136555))

(assert (not bm!746428))

(assert b_and!354177)

(assert (not d!2395677))

(assert (not b_next!136521))

(assert (not b_next!136559))

(assert (not d!2395699))

(assert (not bm!746427))

(assert b_and!354169)

(assert b_and!354175)

(assert (not b!8041613))

(assert (not b!8041624))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354205)

(assert (not b_next!136529))

(assert b_and!354201)

(assert (not b_next!136527))

(assert b_and!354173)

(assert b_and!354179)

(assert (not b_next!136525))

(assert b_and!354167)

(assert b_and!354177)

(assert (not b_next!136521))

(assert b_and!354199)

(assert b_and!354175)

(assert (not b_next!136553))

(assert b_and!354203)

(assert (not b_next!136531))

(assert (not b_next!136523))

(assert (not b_next!136533))

(assert b_and!354181)

(assert (not b_next!136535))

(assert b_and!354171)

(assert (not b_next!136557))

(assert (not b_next!136555))

(assert (not b_next!136559))

(assert b_and!354169)

(check-sat)

(pop 1)


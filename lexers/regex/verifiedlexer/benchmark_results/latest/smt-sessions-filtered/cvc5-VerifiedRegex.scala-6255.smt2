; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!307508 () Bool)

(assert start!307508)

(declare-fun b!3303231 () Bool)

(declare-fun b_free!86725 () Bool)

(declare-fun b_next!87429 () Bool)

(assert (=> b!3303231 (= b_free!86725 (not b_next!87429))))

(declare-fun tp!1034063 () Bool)

(declare-fun b_and!226187 () Bool)

(assert (=> b!3303231 (= tp!1034063 b_and!226187)))

(declare-fun b_free!86727 () Bool)

(declare-fun b_next!87431 () Bool)

(assert (=> b!3303231 (= b_free!86727 (not b_next!87431))))

(declare-fun tp!1034061 () Bool)

(declare-fun b_and!226189 () Bool)

(assert (=> b!3303231 (= tp!1034061 b_and!226189)))

(declare-fun b!3303225 () Bool)

(declare-fun b_free!86729 () Bool)

(declare-fun b_next!87433 () Bool)

(assert (=> b!3303225 (= b_free!86729 (not b_next!87433))))

(declare-fun tp!1034064 () Bool)

(declare-fun b_and!226191 () Bool)

(assert (=> b!3303225 (= tp!1034064 b_and!226191)))

(declare-fun b_free!86731 () Bool)

(declare-fun b_next!87435 () Bool)

(assert (=> b!3303225 (= b_free!86731 (not b_next!87435))))

(declare-fun tp!1034062 () Bool)

(declare-fun b_and!226193 () Bool)

(assert (=> b!3303225 (= tp!1034062 b_and!226193)))

(declare-fun b!3303224 () Bool)

(declare-fun b_free!86733 () Bool)

(declare-fun b_next!87437 () Bool)

(assert (=> b!3303224 (= b_free!86733 (not b_next!87437))))

(declare-fun tp!1034071 () Bool)

(declare-fun b_and!226195 () Bool)

(assert (=> b!3303224 (= tp!1034071 b_and!226195)))

(declare-fun b_free!86735 () Bool)

(declare-fun b_next!87439 () Bool)

(assert (=> b!3303224 (= b_free!86735 (not b_next!87439))))

(declare-fun tp!1034070 () Bool)

(declare-fun b_and!226197 () Bool)

(assert (=> b!3303224 (= tp!1034070 b_and!226197)))

(declare-fun b!3303213 () Bool)

(declare-fun res!1339748 () Bool)

(declare-fun e!2054171 () Bool)

(assert (=> b!3303213 (=> (not res!1339748) (not e!2054171))))

(declare-datatypes ((C!20282 0))(
  ( (C!20283 (val!12189 Int)) )
))
(declare-datatypes ((Regex!10048 0))(
  ( (ElementMatch!10048 (c!560472 C!20282)) (Concat!15567 (regOne!20608 Regex!10048) (regTwo!20608 Regex!10048)) (EmptyExpr!10048) (Star!10048 (reg!10377 Regex!10048)) (EmptyLang!10048) (Union!10048 (regOne!20609 Regex!10048) (regTwo!20609 Regex!10048)) )
))
(declare-datatypes ((List!36592 0))(
  ( (Nil!36468) (Cons!36468 (h!41888 (_ BitVec 16)) (t!253209 List!36592)) )
))
(declare-datatypes ((TokenValue!5519 0))(
  ( (FloatLiteralValue!11038 (text!39078 List!36592)) (TokenValueExt!5518 (__x!23255 Int)) (Broken!27595 (value!171172 List!36592)) (Object!5642) (End!5519) (Def!5519) (Underscore!5519) (Match!5519) (Else!5519) (Error!5519) (Case!5519) (If!5519) (Extends!5519) (Abstract!5519) (Class!5519) (Val!5519) (DelimiterValue!11038 (del!5579 List!36592)) (KeywordValue!5525 (value!171173 List!36592)) (CommentValue!11038 (value!171174 List!36592)) (WhitespaceValue!11038 (value!171175 List!36592)) (IndentationValue!5519 (value!171176 List!36592)) (String!40930) (Int32!5519) (Broken!27596 (value!171177 List!36592)) (Boolean!5520) (Unit!51416) (OperatorValue!5522 (op!5579 List!36592)) (IdentifierValue!11038 (value!171178 List!36592)) (IdentifierValue!11039 (value!171179 List!36592)) (WhitespaceValue!11039 (value!171180 List!36592)) (True!11038) (False!11038) (Broken!27597 (value!171181 List!36592)) (Broken!27598 (value!171182 List!36592)) (True!11039) (RightBrace!5519) (RightBracket!5519) (Colon!5519) (Null!5519) (Comma!5519) (LeftBracket!5519) (False!11039) (LeftBrace!5519) (ImaginaryLiteralValue!5519 (text!39079 List!36592)) (StringLiteralValue!16557 (value!171183 List!36592)) (EOFValue!5519 (value!171184 List!36592)) (IdentValue!5519 (value!171185 List!36592)) (DelimiterValue!11039 (value!171186 List!36592)) (DedentValue!5519 (value!171187 List!36592)) (NewLineValue!5519 (value!171188 List!36592)) (IntegerValue!16557 (value!171189 (_ BitVec 32)) (text!39080 List!36592)) (IntegerValue!16558 (value!171190 Int) (text!39081 List!36592)) (Times!5519) (Or!5519) (Equal!5519) (Minus!5519) (Broken!27599 (value!171191 List!36592)) (And!5519) (Div!5519) (LessEqual!5519) (Mod!5519) (Concat!15568) (Not!5519) (Plus!5519) (SpaceValue!5519 (value!171192 List!36592)) (IntegerValue!16559 (value!171193 Int) (text!39082 List!36592)) (StringLiteralValue!16558 (text!39083 List!36592)) (FloatLiteralValue!11039 (text!39084 List!36592)) (BytesLiteralValue!5519 (value!171194 List!36592)) (CommentValue!11039 (value!171195 List!36592)) (StringLiteralValue!16559 (value!171196 List!36592)) (ErrorTokenValue!5519 (msg!5580 List!36592)) )
))
(declare-datatypes ((List!36593 0))(
  ( (Nil!36469) (Cons!36469 (h!41889 C!20282) (t!253210 List!36593)) )
))
(declare-datatypes ((IArray!21911 0))(
  ( (IArray!21912 (innerList!11013 List!36593)) )
))
(declare-datatypes ((Conc!10953 0))(
  ( (Node!10953 (left!28404 Conc!10953) (right!28734 Conc!10953) (csize!22136 Int) (cheight!11164 Int)) (Leaf!17209 (xs!14091 IArray!21911) (csize!22137 Int)) (Empty!10953) )
))
(declare-datatypes ((BalanceConc!21520 0))(
  ( (BalanceConc!21521 (c!560473 Conc!10953)) )
))
(declare-datatypes ((String!40931 0))(
  ( (String!40932 (value!171197 String)) )
))
(declare-datatypes ((TokenValueInjection!10466 0))(
  ( (TokenValueInjection!10467 (toValue!7421 Int) (toChars!7280 Int)) )
))
(declare-datatypes ((Rule!10378 0))(
  ( (Rule!10379 (regex!5289 Regex!10048) (tag!5835 String!40931) (isSeparator!5289 Bool) (transformation!5289 TokenValueInjection!10466)) )
))
(declare-datatypes ((List!36594 0))(
  ( (Nil!36470) (Cons!36470 (h!41890 Rule!10378) (t!253211 List!36594)) )
))
(declare-fun rules!2135 () List!36594)

(declare-fun isEmpty!20614 (List!36594) Bool)

(assert (=> b!3303213 (= res!1339748 (not (isEmpty!20614 rules!2135)))))

(declare-datatypes ((LexerInterface!4878 0))(
  ( (LexerInterfaceExt!4875 (__x!23256 Int)) (Lexer!4876) )
))
(declare-fun thiss!18206 () LexerInterface!4878)

(declare-fun b!3303214 () Bool)

(declare-fun lt!1119843 () BalanceConc!21520)

(declare-datatypes ((Token!9944 0))(
  ( (Token!9945 (value!171198 TokenValue!5519) (rule!7793 Rule!10378) (size!27544 Int) (originalCharacters!6003 List!36593)) )
))
(declare-datatypes ((List!36595 0))(
  ( (Nil!36471) (Cons!36471 (h!41891 Token!9944) (t!253212 List!36595)) )
))
(declare-fun tokens!494 () List!36595)

(declare-fun list!13066 (BalanceConc!21520) List!36593)

(declare-fun printList!1428 (LexerInterface!4878 List!36595) List!36593)

(assert (=> b!3303214 (= e!2054171 (not (= (list!13066 lt!1119843) (printList!1428 thiss!18206 (Cons!36471 (h!41891 tokens!494) Nil!36471)))))))

(declare-datatypes ((IArray!21913 0))(
  ( (IArray!21914 (innerList!11014 List!36595)) )
))
(declare-datatypes ((Conc!10954 0))(
  ( (Node!10954 (left!28405 Conc!10954) (right!28735 Conc!10954) (csize!22138 Int) (cheight!11165 Int)) (Leaf!17210 (xs!14092 IArray!21913) (csize!22139 Int)) (Empty!10954) )
))
(declare-datatypes ((BalanceConc!21522 0))(
  ( (BalanceConc!21523 (c!560474 Conc!10954)) )
))
(declare-fun lt!1119844 () BalanceConc!21522)

(declare-fun printTailRec!1375 (LexerInterface!4878 BalanceConc!21522 Int BalanceConc!21520) BalanceConc!21520)

(assert (=> b!3303214 (= lt!1119843 (printTailRec!1375 thiss!18206 lt!1119844 0 (BalanceConc!21521 Empty!10953)))))

(declare-fun print!1943 (LexerInterface!4878 BalanceConc!21522) BalanceConc!21520)

(assert (=> b!3303214 (= lt!1119843 (print!1943 thiss!18206 lt!1119844))))

(declare-fun singletonSeq!2385 (Token!9944) BalanceConc!21522)

(assert (=> b!3303214 (= lt!1119844 (singletonSeq!2385 (h!41891 tokens!494)))))

(declare-fun b!3303215 () Bool)

(declare-fun res!1339751 () Bool)

(assert (=> b!3303215 (=> (not res!1339751) (not e!2054171))))

(declare-fun sepAndNonSepRulesDisjointChars!1483 (List!36594 List!36594) Bool)

(assert (=> b!3303215 (= res!1339751 (sepAndNonSepRulesDisjointChars!1483 rules!2135 rules!2135))))

(declare-fun b!3303216 () Bool)

(declare-fun res!1339747 () Bool)

(assert (=> b!3303216 (=> (not res!1339747) (not e!2054171))))

(declare-fun separatorToken!241 () Token!9944)

(assert (=> b!3303216 (= res!1339747 (isSeparator!5289 (rule!7793 separatorToken!241)))))

(declare-fun e!2054164 () Bool)

(declare-fun e!2054175 () Bool)

(declare-fun b!3303217 () Bool)

(declare-fun tp!1034069 () Bool)

(declare-fun inv!49427 (Token!9944) Bool)

(assert (=> b!3303217 (= e!2054175 (and (inv!49427 (h!41891 tokens!494)) e!2054164 tp!1034069))))

(declare-fun b!3303218 () Bool)

(declare-fun e!2054173 () Bool)

(declare-fun e!2054161 () Bool)

(declare-fun tp!1034065 () Bool)

(assert (=> b!3303218 (= e!2054173 (and e!2054161 tp!1034065))))

(declare-fun b!3303219 () Bool)

(declare-fun res!1339744 () Bool)

(assert (=> b!3303219 (=> (not res!1339744) (not e!2054171))))

(declare-fun lambda!118920 () Int)

(declare-fun forall!7549 (List!36595 Int) Bool)

(assert (=> b!3303219 (= res!1339744 (forall!7549 tokens!494 lambda!118920))))

(declare-fun b!3303220 () Bool)

(declare-fun res!1339750 () Bool)

(assert (=> b!3303220 (=> (not res!1339750) (not e!2054171))))

(declare-fun rulesProduceIndividualToken!2370 (LexerInterface!4878 List!36594 Token!9944) Bool)

(assert (=> b!3303220 (= res!1339750 (rulesProduceIndividualToken!2370 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1034068 () Bool)

(declare-fun e!2054162 () Bool)

(declare-fun b!3303221 () Bool)

(declare-fun inv!49424 (String!40931) Bool)

(declare-fun inv!49428 (TokenValueInjection!10466) Bool)

(assert (=> b!3303221 (= e!2054161 (and tp!1034068 (inv!49424 (tag!5835 (h!41890 rules!2135))) (inv!49428 (transformation!5289 (h!41890 rules!2135))) e!2054162))))

(declare-fun res!1339745 () Bool)

(assert (=> start!307508 (=> (not res!1339745) (not e!2054171))))

(assert (=> start!307508 (= res!1339745 (is-Lexer!4876 thiss!18206))))

(assert (=> start!307508 e!2054171))

(assert (=> start!307508 true))

(assert (=> start!307508 e!2054173))

(assert (=> start!307508 e!2054175))

(declare-fun e!2054165 () Bool)

(assert (=> start!307508 (and (inv!49427 separatorToken!241) e!2054165)))

(declare-fun b!3303222 () Bool)

(declare-fun res!1339743 () Bool)

(assert (=> b!3303222 (=> (not res!1339743) (not e!2054171))))

(declare-fun rulesInvariant!4275 (LexerInterface!4878 List!36594) Bool)

(assert (=> b!3303222 (= res!1339743 (rulesInvariant!4275 thiss!18206 rules!2135))))

(declare-fun b!3303223 () Bool)

(declare-fun res!1339746 () Bool)

(assert (=> b!3303223 (=> (not res!1339746) (not e!2054171))))

(declare-fun rulesProduceEachTokenIndividually!1329 (LexerInterface!4878 List!36594 BalanceConc!21522) Bool)

(declare-fun seqFromList!3641 (List!36595) BalanceConc!21522)

(assert (=> b!3303223 (= res!1339746 (rulesProduceEachTokenIndividually!1329 thiss!18206 rules!2135 (seqFromList!3641 tokens!494)))))

(assert (=> b!3303224 (= e!2054162 (and tp!1034071 tp!1034070))))

(declare-fun e!2054163 () Bool)

(assert (=> b!3303225 (= e!2054163 (and tp!1034064 tp!1034062))))

(declare-fun b!3303226 () Bool)

(declare-fun res!1339749 () Bool)

(assert (=> b!3303226 (=> (not res!1339749) (not e!2054171))))

(assert (=> b!3303226 (= res!1339749 (and (not (is-Nil!36471 tokens!494)) (not (is-Nil!36471 (t!253212 tokens!494)))))))

(declare-fun e!2054172 () Bool)

(declare-fun b!3303227 () Bool)

(declare-fun tp!1034073 () Bool)

(declare-fun e!2054168 () Bool)

(assert (=> b!3303227 (= e!2054168 (and tp!1034073 (inv!49424 (tag!5835 (rule!7793 separatorToken!241))) (inv!49428 (transformation!5289 (rule!7793 separatorToken!241))) e!2054172))))

(declare-fun e!2054176 () Bool)

(declare-fun b!3303228 () Bool)

(declare-fun tp!1034067 () Bool)

(declare-fun inv!21 (TokenValue!5519) Bool)

(assert (=> b!3303228 (= e!2054164 (and (inv!21 (value!171198 (h!41891 tokens!494))) e!2054176 tp!1034067))))

(declare-fun b!3303229 () Bool)

(declare-fun tp!1034066 () Bool)

(assert (=> b!3303229 (= e!2054165 (and (inv!21 (value!171198 separatorToken!241)) e!2054168 tp!1034066))))

(declare-fun b!3303230 () Bool)

(declare-fun tp!1034072 () Bool)

(assert (=> b!3303230 (= e!2054176 (and tp!1034072 (inv!49424 (tag!5835 (rule!7793 (h!41891 tokens!494)))) (inv!49428 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) e!2054163))))

(assert (=> b!3303231 (= e!2054172 (and tp!1034063 tp!1034061))))

(assert (= (and start!307508 res!1339745) b!3303213))

(assert (= (and b!3303213 res!1339748) b!3303222))

(assert (= (and b!3303222 res!1339743) b!3303223))

(assert (= (and b!3303223 res!1339746) b!3303220))

(assert (= (and b!3303220 res!1339750) b!3303216))

(assert (= (and b!3303216 res!1339747) b!3303219))

(assert (= (and b!3303219 res!1339744) b!3303215))

(assert (= (and b!3303215 res!1339751) b!3303226))

(assert (= (and b!3303226 res!1339749) b!3303214))

(assert (= b!3303221 b!3303224))

(assert (= b!3303218 b!3303221))

(assert (= (and start!307508 (is-Cons!36470 rules!2135)) b!3303218))

(assert (= b!3303230 b!3303225))

(assert (= b!3303228 b!3303230))

(assert (= b!3303217 b!3303228))

(assert (= (and start!307508 (is-Cons!36471 tokens!494)) b!3303217))

(assert (= b!3303227 b!3303231))

(assert (= b!3303229 b!3303227))

(assert (= start!307508 b!3303229))

(declare-fun m!3629075 () Bool)

(assert (=> b!3303221 m!3629075))

(declare-fun m!3629077 () Bool)

(assert (=> b!3303221 m!3629077))

(declare-fun m!3629079 () Bool)

(assert (=> start!307508 m!3629079))

(declare-fun m!3629081 () Bool)

(assert (=> b!3303229 m!3629081))

(declare-fun m!3629083 () Bool)

(assert (=> b!3303228 m!3629083))

(declare-fun m!3629085 () Bool)

(assert (=> b!3303217 m!3629085))

(declare-fun m!3629087 () Bool)

(assert (=> b!3303230 m!3629087))

(declare-fun m!3629089 () Bool)

(assert (=> b!3303230 m!3629089))

(declare-fun m!3629091 () Bool)

(assert (=> b!3303215 m!3629091))

(declare-fun m!3629093 () Bool)

(assert (=> b!3303222 m!3629093))

(declare-fun m!3629095 () Bool)

(assert (=> b!3303213 m!3629095))

(declare-fun m!3629097 () Bool)

(assert (=> b!3303214 m!3629097))

(declare-fun m!3629099 () Bool)

(assert (=> b!3303214 m!3629099))

(declare-fun m!3629101 () Bool)

(assert (=> b!3303214 m!3629101))

(declare-fun m!3629103 () Bool)

(assert (=> b!3303214 m!3629103))

(declare-fun m!3629105 () Bool)

(assert (=> b!3303214 m!3629105))

(declare-fun m!3629107 () Bool)

(assert (=> b!3303220 m!3629107))

(declare-fun m!3629109 () Bool)

(assert (=> b!3303227 m!3629109))

(declare-fun m!3629111 () Bool)

(assert (=> b!3303227 m!3629111))

(declare-fun m!3629113 () Bool)

(assert (=> b!3303223 m!3629113))

(assert (=> b!3303223 m!3629113))

(declare-fun m!3629115 () Bool)

(assert (=> b!3303223 m!3629115))

(declare-fun m!3629117 () Bool)

(assert (=> b!3303219 m!3629117))

(push 1)

(assert (not b!3303228))

(assert b_and!226193)

(assert b_and!226195)

(assert (not b!3303220))

(assert (not b_next!87429))

(assert b_and!226189)

(assert (not b!3303218))

(assert b_and!226187)

(assert (not b!3303214))

(assert (not start!307508))

(assert (not b!3303230))

(assert (not b!3303213))

(assert (not b!3303221))

(assert (not b_next!87433))

(assert b_and!226191)

(assert (not b_next!87439))

(assert (not b_next!87437))

(assert (not b!3303222))

(assert (not b!3303229))

(assert (not b!3303223))

(assert (not b!3303227))

(assert (not b!3303219))

(assert b_and!226197)

(assert (not b!3303215))

(assert (not b!3303217))

(assert (not b_next!87431))

(assert (not b_next!87435))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226193)

(assert b_and!226195)

(assert (not b_next!87429))

(assert b_and!226197)

(assert b_and!226189)

(assert b_and!226187)

(assert (not b_next!87433))

(assert b_and!226191)

(assert (not b_next!87439))

(assert (not b_next!87437))

(assert (not b_next!87431))

(assert (not b_next!87435))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!925002 () Bool)

(declare-fun res!1339793 () Bool)

(declare-fun e!2054227 () Bool)

(assert (=> d!925002 (=> (not res!1339793) (not e!2054227))))

(declare-fun isEmpty!20616 (List!36593) Bool)

(assert (=> d!925002 (= res!1339793 (not (isEmpty!20616 (originalCharacters!6003 (h!41891 tokens!494)))))))

(assert (=> d!925002 (= (inv!49427 (h!41891 tokens!494)) e!2054227)))

(declare-fun b!3303293 () Bool)

(declare-fun res!1339794 () Bool)

(assert (=> b!3303293 (=> (not res!1339794) (not e!2054227))))

(declare-fun dynLambda!14930 (Int TokenValue!5519) BalanceConc!21520)

(assert (=> b!3303293 (= res!1339794 (= (originalCharacters!6003 (h!41891 tokens!494)) (list!13066 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (value!171198 (h!41891 tokens!494))))))))

(declare-fun b!3303294 () Bool)

(declare-fun size!27546 (List!36593) Int)

(assert (=> b!3303294 (= e!2054227 (= (size!27544 (h!41891 tokens!494)) (size!27546 (originalCharacters!6003 (h!41891 tokens!494)))))))

(assert (= (and d!925002 res!1339793) b!3303293))

(assert (= (and b!3303293 res!1339794) b!3303294))

(declare-fun b_lambda!92207 () Bool)

(assert (=> (not b_lambda!92207) (not b!3303293)))

(declare-fun t!253218 () Bool)

(declare-fun tb!171275 () Bool)

(assert (=> (and b!3303231 (= (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494))))) t!253218) tb!171275))

(declare-fun b!3303301 () Bool)

(declare-fun e!2054232 () Bool)

(declare-fun tp!1034115 () Bool)

(declare-fun inv!49431 (Conc!10953) Bool)

(assert (=> b!3303301 (= e!2054232 (and (inv!49431 (c!560473 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (value!171198 (h!41891 tokens!494))))) tp!1034115))))

(declare-fun result!214032 () Bool)

(declare-fun inv!49432 (BalanceConc!21520) Bool)

(assert (=> tb!171275 (= result!214032 (and (inv!49432 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (value!171198 (h!41891 tokens!494)))) e!2054232))))

(assert (= tb!171275 b!3303301))

(declare-fun m!3629163 () Bool)

(assert (=> b!3303301 m!3629163))

(declare-fun m!3629165 () Bool)

(assert (=> tb!171275 m!3629165))

(assert (=> b!3303293 t!253218))

(declare-fun b_and!226211 () Bool)

(assert (= b_and!226189 (and (=> t!253218 result!214032) b_and!226211)))

(declare-fun t!253220 () Bool)

(declare-fun tb!171277 () Bool)

(assert (=> (and b!3303225 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494))))) t!253220) tb!171277))

(declare-fun result!214036 () Bool)

(assert (= result!214036 result!214032))

(assert (=> b!3303293 t!253220))

(declare-fun b_and!226213 () Bool)

(assert (= b_and!226193 (and (=> t!253220 result!214036) b_and!226213)))

(declare-fun tb!171279 () Bool)

(declare-fun t!253222 () Bool)

(assert (=> (and b!3303224 (= (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494))))) t!253222) tb!171279))

(declare-fun result!214038 () Bool)

(assert (= result!214038 result!214032))

(assert (=> b!3303293 t!253222))

(declare-fun b_and!226215 () Bool)

(assert (= b_and!226197 (and (=> t!253222 result!214038) b_and!226215)))

(declare-fun m!3629167 () Bool)

(assert (=> d!925002 m!3629167))

(declare-fun m!3629169 () Bool)

(assert (=> b!3303293 m!3629169))

(assert (=> b!3303293 m!3629169))

(declare-fun m!3629171 () Bool)

(assert (=> b!3303293 m!3629171))

(declare-fun m!3629173 () Bool)

(assert (=> b!3303294 m!3629173))

(assert (=> b!3303217 d!925002))

(declare-fun b!3303317 () Bool)

(declare-fun e!2054246 () Bool)

(declare-fun e!2054245 () Bool)

(assert (=> b!3303317 (= e!2054246 e!2054245)))

(declare-fun c!560484 () Bool)

(assert (=> b!3303317 (= c!560484 (is-IntegerValue!16558 (value!171198 (h!41891 tokens!494))))))

(declare-fun b!3303318 () Bool)

(declare-fun inv!17 (TokenValue!5519) Bool)

(assert (=> b!3303318 (= e!2054245 (inv!17 (value!171198 (h!41891 tokens!494))))))

(declare-fun b!3303319 () Bool)

(declare-fun res!1339804 () Bool)

(declare-fun e!2054244 () Bool)

(assert (=> b!3303319 (=> res!1339804 e!2054244)))

(assert (=> b!3303319 (= res!1339804 (not (is-IntegerValue!16559 (value!171198 (h!41891 tokens!494)))))))

(assert (=> b!3303319 (= e!2054245 e!2054244)))

(declare-fun b!3303320 () Bool)

(declare-fun inv!15 (TokenValue!5519) Bool)

(assert (=> b!3303320 (= e!2054244 (inv!15 (value!171198 (h!41891 tokens!494))))))

(declare-fun b!3303321 () Bool)

(declare-fun inv!16 (TokenValue!5519) Bool)

(assert (=> b!3303321 (= e!2054246 (inv!16 (value!171198 (h!41891 tokens!494))))))

(declare-fun d!925004 () Bool)

(declare-fun c!560483 () Bool)

(assert (=> d!925004 (= c!560483 (is-IntegerValue!16557 (value!171198 (h!41891 tokens!494))))))

(assert (=> d!925004 (= (inv!21 (value!171198 (h!41891 tokens!494))) e!2054246)))

(assert (= (and d!925004 c!560483) b!3303321))

(assert (= (and d!925004 (not c!560483)) b!3303317))

(assert (= (and b!3303317 c!560484) b!3303318))

(assert (= (and b!3303317 (not c!560484)) b!3303319))

(assert (= (and b!3303319 (not res!1339804)) b!3303320))

(declare-fun m!3629179 () Bool)

(assert (=> b!3303318 m!3629179))

(declare-fun m!3629181 () Bool)

(assert (=> b!3303320 m!3629181))

(declare-fun m!3629183 () Bool)

(assert (=> b!3303321 m!3629183))

(assert (=> b!3303228 d!925004))

(declare-fun d!925008 () Bool)

(assert (=> d!925008 (= (inv!49424 (tag!5835 (rule!7793 separatorToken!241))) (= (mod (str.len (value!171197 (tag!5835 (rule!7793 separatorToken!241)))) 2) 0))))

(assert (=> b!3303227 d!925008))

(declare-fun d!925010 () Bool)

(declare-fun res!1339809 () Bool)

(declare-fun e!2054251 () Bool)

(assert (=> d!925010 (=> (not res!1339809) (not e!2054251))))

(declare-fun semiInverseModEq!2186 (Int Int) Bool)

(assert (=> d!925010 (= res!1339809 (semiInverseModEq!2186 (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (toValue!7421 (transformation!5289 (rule!7793 separatorToken!241)))))))

(assert (=> d!925010 (= (inv!49428 (transformation!5289 (rule!7793 separatorToken!241))) e!2054251)))

(declare-fun b!3303326 () Bool)

(declare-fun equivClasses!2085 (Int Int) Bool)

(assert (=> b!3303326 (= e!2054251 (equivClasses!2085 (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (toValue!7421 (transformation!5289 (rule!7793 separatorToken!241)))))))

(assert (= (and d!925010 res!1339809) b!3303326))

(declare-fun m!3629189 () Bool)

(assert (=> d!925010 m!3629189))

(declare-fun m!3629191 () Bool)

(assert (=> b!3303326 m!3629191))

(assert (=> b!3303227 d!925010))

(declare-fun d!925014 () Bool)

(declare-fun res!1339814 () Bool)

(declare-fun e!2054256 () Bool)

(assert (=> d!925014 (=> res!1339814 e!2054256)))

(assert (=> d!925014 (= res!1339814 (not (is-Cons!36470 rules!2135)))))

(assert (=> d!925014 (= (sepAndNonSepRulesDisjointChars!1483 rules!2135 rules!2135) e!2054256)))

(declare-fun b!3303331 () Bool)

(declare-fun e!2054257 () Bool)

(assert (=> b!3303331 (= e!2054256 e!2054257)))

(declare-fun res!1339815 () Bool)

(assert (=> b!3303331 (=> (not res!1339815) (not e!2054257))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!622 (Rule!10378 List!36594) Bool)

(assert (=> b!3303331 (= res!1339815 (ruleDisjointCharsFromAllFromOtherType!622 (h!41890 rules!2135) rules!2135))))

(declare-fun b!3303332 () Bool)

(assert (=> b!3303332 (= e!2054257 (sepAndNonSepRulesDisjointChars!1483 rules!2135 (t!253211 rules!2135)))))

(assert (= (and d!925014 (not res!1339814)) b!3303331))

(assert (= (and b!3303331 res!1339815) b!3303332))

(declare-fun m!3629193 () Bool)

(assert (=> b!3303331 m!3629193))

(declare-fun m!3629195 () Bool)

(assert (=> b!3303332 m!3629195))

(assert (=> b!3303215 d!925014))

(declare-fun d!925016 () Bool)

(declare-fun res!1339816 () Bool)

(declare-fun e!2054258 () Bool)

(assert (=> d!925016 (=> (not res!1339816) (not e!2054258))))

(assert (=> d!925016 (= res!1339816 (not (isEmpty!20616 (originalCharacters!6003 separatorToken!241))))))

(assert (=> d!925016 (= (inv!49427 separatorToken!241) e!2054258)))

(declare-fun b!3303333 () Bool)

(declare-fun res!1339817 () Bool)

(assert (=> b!3303333 (=> (not res!1339817) (not e!2054258))))

(assert (=> b!3303333 (= res!1339817 (= (originalCharacters!6003 separatorToken!241) (list!13066 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (value!171198 separatorToken!241)))))))

(declare-fun b!3303334 () Bool)

(assert (=> b!3303334 (= e!2054258 (= (size!27544 separatorToken!241) (size!27546 (originalCharacters!6003 separatorToken!241))))))

(assert (= (and d!925016 res!1339816) b!3303333))

(assert (= (and b!3303333 res!1339817) b!3303334))

(declare-fun b_lambda!92211 () Bool)

(assert (=> (not b_lambda!92211) (not b!3303333)))

(declare-fun t!253224 () Bool)

(declare-fun tb!171281 () Bool)

(assert (=> (and b!3303231 (= (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241)))) t!253224) tb!171281))

(declare-fun b!3303335 () Bool)

(declare-fun e!2054259 () Bool)

(declare-fun tp!1034116 () Bool)

(assert (=> b!3303335 (= e!2054259 (and (inv!49431 (c!560473 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (value!171198 separatorToken!241)))) tp!1034116))))

(declare-fun result!214040 () Bool)

(assert (=> tb!171281 (= result!214040 (and (inv!49432 (dynLambda!14930 (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (value!171198 separatorToken!241))) e!2054259))))

(assert (= tb!171281 b!3303335))

(declare-fun m!3629197 () Bool)

(assert (=> b!3303335 m!3629197))

(declare-fun m!3629199 () Bool)

(assert (=> tb!171281 m!3629199))

(assert (=> b!3303333 t!253224))

(declare-fun b_and!226217 () Bool)

(assert (= b_and!226211 (and (=> t!253224 result!214040) b_and!226217)))

(declare-fun t!253226 () Bool)

(declare-fun tb!171283 () Bool)

(assert (=> (and b!3303225 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241)))) t!253226) tb!171283))

(declare-fun result!214042 () Bool)

(assert (= result!214042 result!214040))

(assert (=> b!3303333 t!253226))

(declare-fun b_and!226219 () Bool)

(assert (= b_and!226213 (and (=> t!253226 result!214042) b_and!226219)))

(declare-fun tb!171285 () Bool)

(declare-fun t!253228 () Bool)

(assert (=> (and b!3303224 (= (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241)))) t!253228) tb!171285))

(declare-fun result!214044 () Bool)

(assert (= result!214044 result!214040))

(assert (=> b!3303333 t!253228))

(declare-fun b_and!226221 () Bool)

(assert (= b_and!226215 (and (=> t!253228 result!214044) b_and!226221)))

(declare-fun m!3629201 () Bool)

(assert (=> d!925016 m!3629201))

(declare-fun m!3629203 () Bool)

(assert (=> b!3303333 m!3629203))

(assert (=> b!3303333 m!3629203))

(declare-fun m!3629205 () Bool)

(assert (=> b!3303333 m!3629205))

(declare-fun m!3629207 () Bool)

(assert (=> b!3303334 m!3629207))

(assert (=> start!307508 d!925016))

(declare-fun d!925018 () Bool)

(declare-fun list!13068 (Conc!10953) List!36593)

(assert (=> d!925018 (= (list!13066 lt!1119843) (list!13068 (c!560473 lt!1119843)))))

(declare-fun bs!548834 () Bool)

(assert (= bs!548834 d!925018))

(declare-fun m!3629209 () Bool)

(assert (=> bs!548834 m!3629209))

(assert (=> b!3303214 d!925018))

(declare-fun d!925020 () Bool)

(declare-fun lt!1119870 () BalanceConc!21520)

(declare-fun printListTailRec!592 (LexerInterface!4878 List!36595 List!36593) List!36593)

(declare-fun dropList!1109 (BalanceConc!21522 Int) List!36595)

(assert (=> d!925020 (= (list!13066 lt!1119870) (printListTailRec!592 thiss!18206 (dropList!1109 lt!1119844 0) (list!13066 (BalanceConc!21521 Empty!10953))))))

(declare-fun e!2054265 () BalanceConc!21520)

(assert (=> d!925020 (= lt!1119870 e!2054265)))

(declare-fun c!560487 () Bool)

(declare-fun size!27547 (BalanceConc!21522) Int)

(assert (=> d!925020 (= c!560487 (>= 0 (size!27547 lt!1119844)))))

(declare-fun e!2054264 () Bool)

(assert (=> d!925020 e!2054264))

(declare-fun res!1339820 () Bool)

(assert (=> d!925020 (=> (not res!1339820) (not e!2054264))))

(assert (=> d!925020 (= res!1339820 (>= 0 0))))

(assert (=> d!925020 (= (printTailRec!1375 thiss!18206 lt!1119844 0 (BalanceConc!21521 Empty!10953)) lt!1119870)))

(declare-fun b!3303342 () Bool)

(assert (=> b!3303342 (= e!2054264 (<= 0 (size!27547 lt!1119844)))))

(declare-fun b!3303343 () Bool)

(assert (=> b!3303343 (= e!2054265 (BalanceConc!21521 Empty!10953))))

(declare-fun b!3303344 () Bool)

(declare-fun ++!8823 (BalanceConc!21520 BalanceConc!21520) BalanceConc!21520)

(declare-fun charsOf!3305 (Token!9944) BalanceConc!21520)

(declare-fun apply!8373 (BalanceConc!21522 Int) Token!9944)

(assert (=> b!3303344 (= e!2054265 (printTailRec!1375 thiss!18206 lt!1119844 (+ 0 1) (++!8823 (BalanceConc!21521 Empty!10953) (charsOf!3305 (apply!8373 lt!1119844 0)))))))

(declare-fun lt!1119871 () List!36595)

(declare-fun list!13069 (BalanceConc!21522) List!36595)

(assert (=> b!3303344 (= lt!1119871 (list!13069 lt!1119844))))

(declare-datatypes ((Unit!51418 0))(
  ( (Unit!51419) )
))
(declare-fun lt!1119866 () Unit!51418)

(declare-fun lemmaDropApply!1068 (List!36595 Int) Unit!51418)

(assert (=> b!3303344 (= lt!1119866 (lemmaDropApply!1068 lt!1119871 0))))

(declare-fun head!7124 (List!36595) Token!9944)

(declare-fun drop!1900 (List!36595 Int) List!36595)

(declare-fun apply!8374 (List!36595 Int) Token!9944)

(assert (=> b!3303344 (= (head!7124 (drop!1900 lt!1119871 0)) (apply!8374 lt!1119871 0))))

(declare-fun lt!1119868 () Unit!51418)

(assert (=> b!3303344 (= lt!1119868 lt!1119866)))

(declare-fun lt!1119869 () List!36595)

(assert (=> b!3303344 (= lt!1119869 (list!13069 lt!1119844))))

(declare-fun lt!1119867 () Unit!51418)

(declare-fun lemmaDropTail!952 (List!36595 Int) Unit!51418)

(assert (=> b!3303344 (= lt!1119867 (lemmaDropTail!952 lt!1119869 0))))

(declare-fun tail!5262 (List!36595) List!36595)

(assert (=> b!3303344 (= (tail!5262 (drop!1900 lt!1119869 0)) (drop!1900 lt!1119869 (+ 0 1)))))

(declare-fun lt!1119865 () Unit!51418)

(assert (=> b!3303344 (= lt!1119865 lt!1119867)))

(assert (= (and d!925020 res!1339820) b!3303342))

(assert (= (and d!925020 c!560487) b!3303343))

(assert (= (and d!925020 (not c!560487)) b!3303344))

(declare-fun m!3629211 () Bool)

(assert (=> d!925020 m!3629211))

(declare-fun m!3629213 () Bool)

(assert (=> d!925020 m!3629213))

(declare-fun m!3629215 () Bool)

(assert (=> d!925020 m!3629215))

(declare-fun m!3629217 () Bool)

(assert (=> d!925020 m!3629217))

(assert (=> d!925020 m!3629211))

(declare-fun m!3629219 () Bool)

(assert (=> d!925020 m!3629219))

(assert (=> d!925020 m!3629217))

(assert (=> b!3303342 m!3629213))

(declare-fun m!3629221 () Bool)

(assert (=> b!3303344 m!3629221))

(declare-fun m!3629223 () Bool)

(assert (=> b!3303344 m!3629223))

(declare-fun m!3629225 () Bool)

(assert (=> b!3303344 m!3629225))

(declare-fun m!3629227 () Bool)

(assert (=> b!3303344 m!3629227))

(declare-fun m!3629229 () Bool)

(assert (=> b!3303344 m!3629229))

(declare-fun m!3629231 () Bool)

(assert (=> b!3303344 m!3629231))

(declare-fun m!3629233 () Bool)

(assert (=> b!3303344 m!3629233))

(declare-fun m!3629235 () Bool)

(assert (=> b!3303344 m!3629235))

(declare-fun m!3629237 () Bool)

(assert (=> b!3303344 m!3629237))

(assert (=> b!3303344 m!3629227))

(declare-fun m!3629239 () Bool)

(assert (=> b!3303344 m!3629239))

(assert (=> b!3303344 m!3629237))

(assert (=> b!3303344 m!3629231))

(assert (=> b!3303344 m!3629235))

(declare-fun m!3629241 () Bool)

(assert (=> b!3303344 m!3629241))

(declare-fun m!3629243 () Bool)

(assert (=> b!3303344 m!3629243))

(assert (=> b!3303344 m!3629229))

(declare-fun m!3629245 () Bool)

(assert (=> b!3303344 m!3629245))

(assert (=> b!3303214 d!925020))

(declare-fun d!925022 () Bool)

(declare-fun lt!1119874 () BalanceConc!21520)

(assert (=> d!925022 (= (list!13066 lt!1119874) (printList!1428 thiss!18206 (list!13069 lt!1119844)))))

(assert (=> d!925022 (= lt!1119874 (printTailRec!1375 thiss!18206 lt!1119844 0 (BalanceConc!21521 Empty!10953)))))

(assert (=> d!925022 (= (print!1943 thiss!18206 lt!1119844) lt!1119874)))

(declare-fun bs!548835 () Bool)

(assert (= bs!548835 d!925022))

(declare-fun m!3629247 () Bool)

(assert (=> bs!548835 m!3629247))

(assert (=> bs!548835 m!3629243))

(assert (=> bs!548835 m!3629243))

(declare-fun m!3629249 () Bool)

(assert (=> bs!548835 m!3629249))

(assert (=> bs!548835 m!3629105))

(assert (=> b!3303214 d!925022))

(declare-fun d!925024 () Bool)

(declare-fun e!2054268 () Bool)

(assert (=> d!925024 e!2054268))

(declare-fun res!1339823 () Bool)

(assert (=> d!925024 (=> (not res!1339823) (not e!2054268))))

(declare-fun lt!1119877 () BalanceConc!21522)

(assert (=> d!925024 (= res!1339823 (= (list!13069 lt!1119877) (Cons!36471 (h!41891 tokens!494) Nil!36471)))))

(declare-fun singleton!1025 (Token!9944) BalanceConc!21522)

(assert (=> d!925024 (= lt!1119877 (singleton!1025 (h!41891 tokens!494)))))

(assert (=> d!925024 (= (singletonSeq!2385 (h!41891 tokens!494)) lt!1119877)))

(declare-fun b!3303347 () Bool)

(declare-fun isBalanced!3272 (Conc!10954) Bool)

(assert (=> b!3303347 (= e!2054268 (isBalanced!3272 (c!560474 lt!1119877)))))

(assert (= (and d!925024 res!1339823) b!3303347))

(declare-fun m!3629251 () Bool)

(assert (=> d!925024 m!3629251))

(declare-fun m!3629253 () Bool)

(assert (=> d!925024 m!3629253))

(declare-fun m!3629255 () Bool)

(assert (=> b!3303347 m!3629255))

(assert (=> b!3303214 d!925024))

(declare-fun d!925026 () Bool)

(declare-fun c!560490 () Bool)

(assert (=> d!925026 (= c!560490 (is-Cons!36471 (Cons!36471 (h!41891 tokens!494) Nil!36471)))))

(declare-fun e!2054271 () List!36593)

(assert (=> d!925026 (= (printList!1428 thiss!18206 (Cons!36471 (h!41891 tokens!494) Nil!36471)) e!2054271)))

(declare-fun b!3303352 () Bool)

(declare-fun ++!8824 (List!36593 List!36593) List!36593)

(assert (=> b!3303352 (= e!2054271 (++!8824 (list!13066 (charsOf!3305 (h!41891 (Cons!36471 (h!41891 tokens!494) Nil!36471)))) (printList!1428 thiss!18206 (t!253212 (Cons!36471 (h!41891 tokens!494) Nil!36471)))))))

(declare-fun b!3303353 () Bool)

(assert (=> b!3303353 (= e!2054271 Nil!36469)))

(assert (= (and d!925026 c!560490) b!3303352))

(assert (= (and d!925026 (not c!560490)) b!3303353))

(declare-fun m!3629257 () Bool)

(assert (=> b!3303352 m!3629257))

(assert (=> b!3303352 m!3629257))

(declare-fun m!3629259 () Bool)

(assert (=> b!3303352 m!3629259))

(declare-fun m!3629261 () Bool)

(assert (=> b!3303352 m!3629261))

(assert (=> b!3303352 m!3629259))

(assert (=> b!3303352 m!3629261))

(declare-fun m!3629263 () Bool)

(assert (=> b!3303352 m!3629263))

(assert (=> b!3303214 d!925026))

(declare-fun d!925028 () Bool)

(assert (=> d!925028 (= (isEmpty!20614 rules!2135) (is-Nil!36470 rules!2135))))

(assert (=> b!3303213 d!925028))

(declare-fun bs!548836 () Bool)

(declare-fun d!925030 () Bool)

(assert (= bs!548836 (and d!925030 b!3303219)))

(declare-fun lambda!118928 () Int)

(assert (=> bs!548836 (not (= lambda!118928 lambda!118920))))

(declare-fun b!3303367 () Bool)

(declare-fun e!2054283 () Bool)

(assert (=> b!3303367 (= e!2054283 true)))

(declare-fun b!3303366 () Bool)

(declare-fun e!2054282 () Bool)

(assert (=> b!3303366 (= e!2054282 e!2054283)))

(declare-fun b!3303365 () Bool)

(declare-fun e!2054281 () Bool)

(assert (=> b!3303365 (= e!2054281 e!2054282)))

(assert (=> d!925030 e!2054281))

(assert (= b!3303366 b!3303367))

(assert (= b!3303365 b!3303366))

(assert (= (and d!925030 (is-Cons!36470 rules!2135)) b!3303365))

(declare-fun order!18917 () Int)

(declare-fun order!18915 () Int)

(declare-fun dynLambda!14931 (Int Int) Int)

(declare-fun dynLambda!14932 (Int Int) Int)

(assert (=> b!3303367 (< (dynLambda!14931 order!18915 (toValue!7421 (transformation!5289 (h!41890 rules!2135)))) (dynLambda!14932 order!18917 lambda!118928))))

(declare-fun order!18919 () Int)

(declare-fun dynLambda!14933 (Int Int) Int)

(assert (=> b!3303367 (< (dynLambda!14933 order!18919 (toChars!7280 (transformation!5289 (h!41890 rules!2135)))) (dynLambda!14932 order!18917 lambda!118928))))

(assert (=> d!925030 true))

(declare-fun e!2054274 () Bool)

(assert (=> d!925030 e!2054274))

(declare-fun res!1339826 () Bool)

(assert (=> d!925030 (=> (not res!1339826) (not e!2054274))))

(declare-fun lt!1119882 () Bool)

(assert (=> d!925030 (= res!1339826 (= lt!1119882 (forall!7549 (list!13069 (seqFromList!3641 tokens!494)) lambda!118928)))))

(declare-fun forall!7551 (BalanceConc!21522 Int) Bool)

(assert (=> d!925030 (= lt!1119882 (forall!7551 (seqFromList!3641 tokens!494) lambda!118928))))

(assert (=> d!925030 (not (isEmpty!20614 rules!2135))))

(assert (=> d!925030 (= (rulesProduceEachTokenIndividually!1329 thiss!18206 rules!2135 (seqFromList!3641 tokens!494)) lt!1119882)))

(declare-fun b!3303356 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1758 (LexerInterface!4878 List!36594 List!36595) Bool)

(assert (=> b!3303356 (= e!2054274 (= lt!1119882 (rulesProduceEachTokenIndividuallyList!1758 thiss!18206 rules!2135 (list!13069 (seqFromList!3641 tokens!494)))))))

(assert (= (and d!925030 res!1339826) b!3303356))

(assert (=> d!925030 m!3629113))

(declare-fun m!3629265 () Bool)

(assert (=> d!925030 m!3629265))

(assert (=> d!925030 m!3629265))

(declare-fun m!3629267 () Bool)

(assert (=> d!925030 m!3629267))

(assert (=> d!925030 m!3629113))

(declare-fun m!3629269 () Bool)

(assert (=> d!925030 m!3629269))

(assert (=> d!925030 m!3629095))

(assert (=> b!3303356 m!3629113))

(assert (=> b!3303356 m!3629265))

(assert (=> b!3303356 m!3629265))

(declare-fun m!3629271 () Bool)

(assert (=> b!3303356 m!3629271))

(assert (=> b!3303223 d!925030))

(declare-fun d!925032 () Bool)

(declare-fun fromListB!1597 (List!36595) BalanceConc!21522)

(assert (=> d!925032 (= (seqFromList!3641 tokens!494) (fromListB!1597 tokens!494))))

(declare-fun bs!548837 () Bool)

(assert (= bs!548837 d!925032))

(declare-fun m!3629273 () Bool)

(assert (=> bs!548837 m!3629273))

(assert (=> b!3303223 d!925032))

(declare-fun d!925034 () Bool)

(declare-fun res!1339829 () Bool)

(declare-fun e!2054286 () Bool)

(assert (=> d!925034 (=> (not res!1339829) (not e!2054286))))

(declare-fun rulesValid!1946 (LexerInterface!4878 List!36594) Bool)

(assert (=> d!925034 (= res!1339829 (rulesValid!1946 thiss!18206 rules!2135))))

(assert (=> d!925034 (= (rulesInvariant!4275 thiss!18206 rules!2135) e!2054286)))

(declare-fun b!3303372 () Bool)

(declare-datatypes ((List!36600 0))(
  ( (Nil!36476) (Cons!36476 (h!41896 String!40931) (t!253255 List!36600)) )
))
(declare-fun noDuplicateTag!1942 (LexerInterface!4878 List!36594 List!36600) Bool)

(assert (=> b!3303372 (= e!2054286 (noDuplicateTag!1942 thiss!18206 rules!2135 Nil!36476))))

(assert (= (and d!925034 res!1339829) b!3303372))

(declare-fun m!3629275 () Bool)

(assert (=> d!925034 m!3629275))

(declare-fun m!3629277 () Bool)

(assert (=> b!3303372 m!3629277))

(assert (=> b!3303222 d!925034))

(declare-fun d!925036 () Bool)

(assert (=> d!925036 (= (inv!49424 (tag!5835 (h!41890 rules!2135))) (= (mod (str.len (value!171197 (tag!5835 (h!41890 rules!2135)))) 2) 0))))

(assert (=> b!3303221 d!925036))

(declare-fun d!925038 () Bool)

(declare-fun res!1339830 () Bool)

(declare-fun e!2054287 () Bool)

(assert (=> d!925038 (=> (not res!1339830) (not e!2054287))))

(assert (=> d!925038 (= res!1339830 (semiInverseModEq!2186 (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toValue!7421 (transformation!5289 (h!41890 rules!2135)))))))

(assert (=> d!925038 (= (inv!49428 (transformation!5289 (h!41890 rules!2135))) e!2054287)))

(declare-fun b!3303373 () Bool)

(assert (=> b!3303373 (= e!2054287 (equivClasses!2085 (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toValue!7421 (transformation!5289 (h!41890 rules!2135)))))))

(assert (= (and d!925038 res!1339830) b!3303373))

(declare-fun m!3629279 () Bool)

(assert (=> d!925038 m!3629279))

(declare-fun m!3629281 () Bool)

(assert (=> b!3303373 m!3629281))

(assert (=> b!3303221 d!925038))

(declare-fun d!925040 () Bool)

(declare-fun lt!1119888 () Bool)

(declare-fun e!2054323 () Bool)

(assert (=> d!925040 (= lt!1119888 e!2054323)))

(declare-fun res!1339852 () Bool)

(assert (=> d!925040 (=> (not res!1339852) (not e!2054323))))

(declare-datatypes ((tuple2!35974 0))(
  ( (tuple2!35975 (_1!21121 BalanceConc!21522) (_2!21121 BalanceConc!21520)) )
))
(declare-fun lex!2206 (LexerInterface!4878 List!36594 BalanceConc!21520) tuple2!35974)

(assert (=> d!925040 (= res!1339852 (= (list!13069 (_1!21121 (lex!2206 thiss!18206 rules!2135 (print!1943 thiss!18206 (singletonSeq!2385 separatorToken!241))))) (list!13069 (singletonSeq!2385 separatorToken!241))))))

(declare-fun e!2054322 () Bool)

(assert (=> d!925040 (= lt!1119888 e!2054322)))

(declare-fun res!1339851 () Bool)

(assert (=> d!925040 (=> (not res!1339851) (not e!2054322))))

(declare-fun lt!1119889 () tuple2!35974)

(assert (=> d!925040 (= res!1339851 (= (size!27547 (_1!21121 lt!1119889)) 1))))

(assert (=> d!925040 (= lt!1119889 (lex!2206 thiss!18206 rules!2135 (print!1943 thiss!18206 (singletonSeq!2385 separatorToken!241))))))

(assert (=> d!925040 (not (isEmpty!20614 rules!2135))))

(assert (=> d!925040 (= (rulesProduceIndividualToken!2370 thiss!18206 rules!2135 separatorToken!241) lt!1119888)))

(declare-fun b!3303427 () Bool)

(declare-fun res!1339850 () Bool)

(assert (=> b!3303427 (=> (not res!1339850) (not e!2054322))))

(assert (=> b!3303427 (= res!1339850 (= (apply!8373 (_1!21121 lt!1119889) 0) separatorToken!241))))

(declare-fun b!3303428 () Bool)

(declare-fun isEmpty!20617 (BalanceConc!21520) Bool)

(assert (=> b!3303428 (= e!2054322 (isEmpty!20617 (_2!21121 lt!1119889)))))

(declare-fun b!3303429 () Bool)

(assert (=> b!3303429 (= e!2054323 (isEmpty!20617 (_2!21121 (lex!2206 thiss!18206 rules!2135 (print!1943 thiss!18206 (singletonSeq!2385 separatorToken!241))))))))

(assert (= (and d!925040 res!1339851) b!3303427))

(assert (= (and b!3303427 res!1339850) b!3303428))

(assert (= (and d!925040 res!1339852) b!3303429))

(declare-fun m!3629317 () Bool)

(assert (=> d!925040 m!3629317))

(assert (=> d!925040 m!3629317))

(declare-fun m!3629319 () Bool)

(assert (=> d!925040 m!3629319))

(assert (=> d!925040 m!3629095))

(assert (=> d!925040 m!3629319))

(declare-fun m!3629321 () Bool)

(assert (=> d!925040 m!3629321))

(assert (=> d!925040 m!3629317))

(declare-fun m!3629323 () Bool)

(assert (=> d!925040 m!3629323))

(declare-fun m!3629325 () Bool)

(assert (=> d!925040 m!3629325))

(declare-fun m!3629327 () Bool)

(assert (=> d!925040 m!3629327))

(declare-fun m!3629329 () Bool)

(assert (=> b!3303427 m!3629329))

(declare-fun m!3629331 () Bool)

(assert (=> b!3303428 m!3629331))

(assert (=> b!3303429 m!3629317))

(assert (=> b!3303429 m!3629317))

(assert (=> b!3303429 m!3629319))

(assert (=> b!3303429 m!3629319))

(assert (=> b!3303429 m!3629321))

(declare-fun m!3629333 () Bool)

(assert (=> b!3303429 m!3629333))

(assert (=> b!3303220 d!925040))

(declare-fun d!925054 () Bool)

(declare-fun res!1339857 () Bool)

(declare-fun e!2054328 () Bool)

(assert (=> d!925054 (=> res!1339857 e!2054328)))

(assert (=> d!925054 (= res!1339857 (is-Nil!36471 tokens!494))))

(assert (=> d!925054 (= (forall!7549 tokens!494 lambda!118920) e!2054328)))

(declare-fun b!3303434 () Bool)

(declare-fun e!2054329 () Bool)

(assert (=> b!3303434 (= e!2054328 e!2054329)))

(declare-fun res!1339858 () Bool)

(assert (=> b!3303434 (=> (not res!1339858) (not e!2054329))))

(declare-fun dynLambda!14934 (Int Token!9944) Bool)

(assert (=> b!3303434 (= res!1339858 (dynLambda!14934 lambda!118920 (h!41891 tokens!494)))))

(declare-fun b!3303435 () Bool)

(assert (=> b!3303435 (= e!2054329 (forall!7549 (t!253212 tokens!494) lambda!118920))))

(assert (= (and d!925054 (not res!1339857)) b!3303434))

(assert (= (and b!3303434 res!1339858) b!3303435))

(declare-fun b_lambda!92215 () Bool)

(assert (=> (not b_lambda!92215) (not b!3303434)))

(declare-fun m!3629335 () Bool)

(assert (=> b!3303434 m!3629335))

(declare-fun m!3629337 () Bool)

(assert (=> b!3303435 m!3629337))

(assert (=> b!3303219 d!925054))

(declare-fun d!925056 () Bool)

(assert (=> d!925056 (= (inv!49424 (tag!5835 (rule!7793 (h!41891 tokens!494)))) (= (mod (str.len (value!171197 (tag!5835 (rule!7793 (h!41891 tokens!494))))) 2) 0))))

(assert (=> b!3303230 d!925056))

(declare-fun d!925058 () Bool)

(declare-fun res!1339859 () Bool)

(declare-fun e!2054330 () Bool)

(assert (=> d!925058 (=> (not res!1339859) (not e!2054330))))

(assert (=> d!925058 (= res!1339859 (semiInverseModEq!2186 (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (toValue!7421 (transformation!5289 (rule!7793 (h!41891 tokens!494))))))))

(assert (=> d!925058 (= (inv!49428 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) e!2054330)))

(declare-fun b!3303436 () Bool)

(assert (=> b!3303436 (= e!2054330 (equivClasses!2085 (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (toValue!7421 (transformation!5289 (rule!7793 (h!41891 tokens!494))))))))

(assert (= (and d!925058 res!1339859) b!3303436))

(declare-fun m!3629339 () Bool)

(assert (=> d!925058 m!3629339))

(declare-fun m!3629341 () Bool)

(assert (=> b!3303436 m!3629341))

(assert (=> b!3303230 d!925058))

(declare-fun b!3303437 () Bool)

(declare-fun e!2054333 () Bool)

(declare-fun e!2054332 () Bool)

(assert (=> b!3303437 (= e!2054333 e!2054332)))

(declare-fun c!560500 () Bool)

(assert (=> b!3303437 (= c!560500 (is-IntegerValue!16558 (value!171198 separatorToken!241)))))

(declare-fun b!3303438 () Bool)

(assert (=> b!3303438 (= e!2054332 (inv!17 (value!171198 separatorToken!241)))))

(declare-fun b!3303439 () Bool)

(declare-fun res!1339860 () Bool)

(declare-fun e!2054331 () Bool)

(assert (=> b!3303439 (=> res!1339860 e!2054331)))

(assert (=> b!3303439 (= res!1339860 (not (is-IntegerValue!16559 (value!171198 separatorToken!241))))))

(assert (=> b!3303439 (= e!2054332 e!2054331)))

(declare-fun b!3303440 () Bool)

(assert (=> b!3303440 (= e!2054331 (inv!15 (value!171198 separatorToken!241)))))

(declare-fun b!3303441 () Bool)

(assert (=> b!3303441 (= e!2054333 (inv!16 (value!171198 separatorToken!241)))))

(declare-fun d!925060 () Bool)

(declare-fun c!560499 () Bool)

(assert (=> d!925060 (= c!560499 (is-IntegerValue!16557 (value!171198 separatorToken!241)))))

(assert (=> d!925060 (= (inv!21 (value!171198 separatorToken!241)) e!2054333)))

(assert (= (and d!925060 c!560499) b!3303441))

(assert (= (and d!925060 (not c!560499)) b!3303437))

(assert (= (and b!3303437 c!560500) b!3303438))

(assert (= (and b!3303437 (not c!560500)) b!3303439))

(assert (= (and b!3303439 (not res!1339860)) b!3303440))

(declare-fun m!3629343 () Bool)

(assert (=> b!3303438 m!3629343))

(declare-fun m!3629345 () Bool)

(assert (=> b!3303440 m!3629345))

(declare-fun m!3629347 () Bool)

(assert (=> b!3303441 m!3629347))

(assert (=> b!3303229 d!925060))

(declare-fun b!3303452 () Bool)

(declare-fun b_free!86749 () Bool)

(declare-fun b_next!87453 () Bool)

(assert (=> b!3303452 (= b_free!86749 (not b_next!87453))))

(declare-fun tp!1034129 () Bool)

(declare-fun b_and!226229 () Bool)

(assert (=> b!3303452 (= tp!1034129 b_and!226229)))

(declare-fun b_free!86751 () Bool)

(declare-fun b_next!87455 () Bool)

(assert (=> b!3303452 (= b_free!86751 (not b_next!87455))))

(declare-fun tb!171293 () Bool)

(declare-fun t!253246 () Bool)

(assert (=> (and b!3303452 (= (toChars!7280 (transformation!5289 (h!41890 (t!253211 rules!2135)))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494))))) t!253246) tb!171293))

(declare-fun result!214056 () Bool)

(assert (= result!214056 result!214032))

(assert (=> b!3303293 t!253246))

(declare-fun t!253248 () Bool)

(declare-fun tb!171295 () Bool)

(assert (=> (and b!3303452 (= (toChars!7280 (transformation!5289 (h!41890 (t!253211 rules!2135)))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241)))) t!253248) tb!171295))

(declare-fun result!214058 () Bool)

(assert (= result!214058 result!214040))

(assert (=> b!3303333 t!253248))

(declare-fun b_and!226231 () Bool)

(declare-fun tp!1034130 () Bool)

(assert (=> b!3303452 (= tp!1034130 (and (=> t!253246 result!214056) (=> t!253248 result!214058) b_and!226231))))

(declare-fun e!2054344 () Bool)

(assert (=> b!3303452 (= e!2054344 (and tp!1034129 tp!1034130))))

(declare-fun b!3303451 () Bool)

(declare-fun e!2054345 () Bool)

(declare-fun tp!1034131 () Bool)

(assert (=> b!3303451 (= e!2054345 (and tp!1034131 (inv!49424 (tag!5835 (h!41890 (t!253211 rules!2135)))) (inv!49428 (transformation!5289 (h!41890 (t!253211 rules!2135)))) e!2054344))))

(declare-fun b!3303450 () Bool)

(declare-fun e!2054343 () Bool)

(declare-fun tp!1034128 () Bool)

(assert (=> b!3303450 (= e!2054343 (and e!2054345 tp!1034128))))

(assert (=> b!3303218 (= tp!1034065 e!2054343)))

(assert (= b!3303451 b!3303452))

(assert (= b!3303450 b!3303451))

(assert (= (and b!3303218 (is-Cons!36470 (t!253211 rules!2135))) b!3303450))

(declare-fun m!3629349 () Bool)

(assert (=> b!3303451 m!3629349))

(declare-fun m!3629351 () Bool)

(assert (=> b!3303451 m!3629351))

(declare-fun b!3303466 () Bool)

(declare-fun b_free!86753 () Bool)

(declare-fun b_next!87457 () Bool)

(assert (=> b!3303466 (= b_free!86753 (not b_next!87457))))

(declare-fun tp!1034143 () Bool)

(declare-fun b_and!226233 () Bool)

(assert (=> b!3303466 (= tp!1034143 b_and!226233)))

(declare-fun b_free!86755 () Bool)

(declare-fun b_next!87459 () Bool)

(assert (=> b!3303466 (= b_free!86755 (not b_next!87459))))

(declare-fun t!253250 () Bool)

(declare-fun tb!171297 () Bool)

(assert (=> (and b!3303466 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 (t!253212 tokens!494))))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494))))) t!253250) tb!171297))

(declare-fun result!214062 () Bool)

(assert (= result!214062 result!214032))

(assert (=> b!3303293 t!253250))

(declare-fun t!253252 () Bool)

(declare-fun tb!171299 () Bool)

(assert (=> (and b!3303466 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 (t!253212 tokens!494))))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241)))) t!253252) tb!171299))

(declare-fun result!214064 () Bool)

(assert (= result!214064 result!214040))

(assert (=> b!3303333 t!253252))

(declare-fun b_and!226235 () Bool)

(declare-fun tp!1034146 () Bool)

(assert (=> b!3303466 (= tp!1034146 (and (=> t!253250 result!214062) (=> t!253252 result!214064) b_and!226235))))

(declare-fun e!2054362 () Bool)

(assert (=> b!3303217 (= tp!1034069 e!2054362)))

(declare-fun tp!1034142 () Bool)

(declare-fun e!2054359 () Bool)

(declare-fun b!3303463 () Bool)

(assert (=> b!3303463 (= e!2054362 (and (inv!49427 (h!41891 (t!253212 tokens!494))) e!2054359 tp!1034142))))

(declare-fun b!3303464 () Bool)

(declare-fun tp!1034145 () Bool)

(declare-fun e!2054360 () Bool)

(assert (=> b!3303464 (= e!2054359 (and (inv!21 (value!171198 (h!41891 (t!253212 tokens!494)))) e!2054360 tp!1034145))))

(declare-fun e!2054363 () Bool)

(declare-fun b!3303465 () Bool)

(declare-fun tp!1034144 () Bool)

(assert (=> b!3303465 (= e!2054360 (and tp!1034144 (inv!49424 (tag!5835 (rule!7793 (h!41891 (t!253212 tokens!494))))) (inv!49428 (transformation!5289 (rule!7793 (h!41891 (t!253212 tokens!494))))) e!2054363))))

(assert (=> b!3303466 (= e!2054363 (and tp!1034143 tp!1034146))))

(assert (= b!3303465 b!3303466))

(assert (= b!3303464 b!3303465))

(assert (= b!3303463 b!3303464))

(assert (= (and b!3303217 (is-Cons!36471 (t!253212 tokens!494))) b!3303463))

(declare-fun m!3629353 () Bool)

(assert (=> b!3303463 m!3629353))

(declare-fun m!3629355 () Bool)

(assert (=> b!3303464 m!3629355))

(declare-fun m!3629357 () Bool)

(assert (=> b!3303465 m!3629357))

(declare-fun m!3629359 () Bool)

(assert (=> b!3303465 m!3629359))

(declare-fun b!3303471 () Bool)

(declare-fun e!2054366 () Bool)

(declare-fun tp_is_empty!17359 () Bool)

(declare-fun tp!1034149 () Bool)

(assert (=> b!3303471 (= e!2054366 (and tp_is_empty!17359 tp!1034149))))

(assert (=> b!3303228 (= tp!1034067 e!2054366)))

(assert (= (and b!3303228 (is-Cons!36469 (originalCharacters!6003 (h!41891 tokens!494)))) b!3303471))

(declare-fun b!3303484 () Bool)

(declare-fun e!2054369 () Bool)

(declare-fun tp!1034163 () Bool)

(assert (=> b!3303484 (= e!2054369 tp!1034163)))

(declare-fun b!3303482 () Bool)

(assert (=> b!3303482 (= e!2054369 tp_is_empty!17359)))

(declare-fun b!3303483 () Bool)

(declare-fun tp!1034164 () Bool)

(declare-fun tp!1034162 () Bool)

(assert (=> b!3303483 (= e!2054369 (and tp!1034164 tp!1034162))))

(declare-fun b!3303485 () Bool)

(declare-fun tp!1034160 () Bool)

(declare-fun tp!1034161 () Bool)

(assert (=> b!3303485 (= e!2054369 (and tp!1034160 tp!1034161))))

(assert (=> b!3303227 (= tp!1034073 e!2054369)))

(assert (= (and b!3303227 (is-ElementMatch!10048 (regex!5289 (rule!7793 separatorToken!241)))) b!3303482))

(assert (= (and b!3303227 (is-Concat!15567 (regex!5289 (rule!7793 separatorToken!241)))) b!3303483))

(assert (= (and b!3303227 (is-Star!10048 (regex!5289 (rule!7793 separatorToken!241)))) b!3303484))

(assert (= (and b!3303227 (is-Union!10048 (regex!5289 (rule!7793 separatorToken!241)))) b!3303485))

(declare-fun b!3303488 () Bool)

(declare-fun e!2054370 () Bool)

(declare-fun tp!1034168 () Bool)

(assert (=> b!3303488 (= e!2054370 tp!1034168)))

(declare-fun b!3303486 () Bool)

(assert (=> b!3303486 (= e!2054370 tp_is_empty!17359)))

(declare-fun b!3303487 () Bool)

(declare-fun tp!1034169 () Bool)

(declare-fun tp!1034167 () Bool)

(assert (=> b!3303487 (= e!2054370 (and tp!1034169 tp!1034167))))

(declare-fun b!3303489 () Bool)

(declare-fun tp!1034165 () Bool)

(declare-fun tp!1034166 () Bool)

(assert (=> b!3303489 (= e!2054370 (and tp!1034165 tp!1034166))))

(assert (=> b!3303221 (= tp!1034068 e!2054370)))

(assert (= (and b!3303221 (is-ElementMatch!10048 (regex!5289 (h!41890 rules!2135)))) b!3303486))

(assert (= (and b!3303221 (is-Concat!15567 (regex!5289 (h!41890 rules!2135)))) b!3303487))

(assert (= (and b!3303221 (is-Star!10048 (regex!5289 (h!41890 rules!2135)))) b!3303488))

(assert (= (and b!3303221 (is-Union!10048 (regex!5289 (h!41890 rules!2135)))) b!3303489))

(declare-fun b!3303492 () Bool)

(declare-fun e!2054371 () Bool)

(declare-fun tp!1034173 () Bool)

(assert (=> b!3303492 (= e!2054371 tp!1034173)))

(declare-fun b!3303490 () Bool)

(assert (=> b!3303490 (= e!2054371 tp_is_empty!17359)))

(declare-fun b!3303491 () Bool)

(declare-fun tp!1034174 () Bool)

(declare-fun tp!1034172 () Bool)

(assert (=> b!3303491 (= e!2054371 (and tp!1034174 tp!1034172))))

(declare-fun b!3303493 () Bool)

(declare-fun tp!1034170 () Bool)

(declare-fun tp!1034171 () Bool)

(assert (=> b!3303493 (= e!2054371 (and tp!1034170 tp!1034171))))

(assert (=> b!3303230 (= tp!1034072 e!2054371)))

(assert (= (and b!3303230 (is-ElementMatch!10048 (regex!5289 (rule!7793 (h!41891 tokens!494))))) b!3303490))

(assert (= (and b!3303230 (is-Concat!15567 (regex!5289 (rule!7793 (h!41891 tokens!494))))) b!3303491))

(assert (= (and b!3303230 (is-Star!10048 (regex!5289 (rule!7793 (h!41891 tokens!494))))) b!3303492))

(assert (= (and b!3303230 (is-Union!10048 (regex!5289 (rule!7793 (h!41891 tokens!494))))) b!3303493))

(declare-fun b!3303494 () Bool)

(declare-fun e!2054372 () Bool)

(declare-fun tp!1034175 () Bool)

(assert (=> b!3303494 (= e!2054372 (and tp_is_empty!17359 tp!1034175))))

(assert (=> b!3303229 (= tp!1034066 e!2054372)))

(assert (= (and b!3303229 (is-Cons!36469 (originalCharacters!6003 separatorToken!241))) b!3303494))

(declare-fun b_lambda!92217 () Bool)

(assert (= b_lambda!92207 (or (and b!3303231 b_free!86727 (= (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))))) (and b!3303225 b_free!86731) (and b!3303224 b_free!86735 (= (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))))) (and b!3303452 b_free!86751 (= (toChars!7280 (transformation!5289 (h!41890 (t!253211 rules!2135)))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))))) (and b!3303466 b_free!86755 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 (t!253212 tokens!494))))) (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))))) b_lambda!92217)))

(declare-fun b_lambda!92219 () Bool)

(assert (= b_lambda!92215 (or b!3303219 b_lambda!92219)))

(declare-fun bs!548840 () Bool)

(declare-fun d!925062 () Bool)

(assert (= bs!548840 (and d!925062 b!3303219)))

(assert (=> bs!548840 (= (dynLambda!14934 lambda!118920 (h!41891 tokens!494)) (not (isSeparator!5289 (rule!7793 (h!41891 tokens!494)))))))

(assert (=> b!3303434 d!925062))

(declare-fun b_lambda!92221 () Bool)

(assert (= b_lambda!92211 (or (and b!3303225 b_free!86731 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 tokens!494)))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))))) (and b!3303231 b_free!86727) (and b!3303224 b_free!86735 (= (toChars!7280 (transformation!5289 (h!41890 rules!2135))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))))) (and b!3303452 b_free!86751 (= (toChars!7280 (transformation!5289 (h!41890 (t!253211 rules!2135)))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))))) (and b!3303466 b_free!86755 (= (toChars!7280 (transformation!5289 (rule!7793 (h!41891 (t!253212 tokens!494))))) (toChars!7280 (transformation!5289 (rule!7793 separatorToken!241))))) b_lambda!92221)))

(push 1)

(assert tp_is_empty!17359)

(assert (not b!3303332))

(assert (not b_lambda!92221))

(assert b_and!226231)

(assert (not b!3303320))

(assert (not b!3303429))

(assert (not b_next!87459))

(assert (not b!3303326))

(assert (not b!3303331))

(assert (not b!3303321))

(assert (not d!925032))

(assert (not d!925022))

(assert b_and!226195)

(assert (not b!3303488))

(assert (not tb!171281))

(assert (not b!3303492))

(assert (not b!3303365))

(assert (not b!3303463))

(assert b_and!226235)

(assert (not b!3303489))

(assert (not d!925038))

(assert (not b!3303441))

(assert (not d!925016))

(assert (not b!3303494))

(assert (not b!3303450))

(assert (not b_next!87453))

(assert (not b!3303318))

(assert (not b!3303293))

(assert (not b!3303483))

(assert (not b_lambda!92217))

(assert (not d!925034))

(assert (not b_next!87429))

(assert (not d!925018))

(assert (not b!3303428))

(assert (not b!3303493))

(assert (not b!3303491))

(assert (not b!3303334))

(assert (not b!3303342))

(assert (not b!3303471))

(assert (not b!3303344))

(assert (not b_next!87431))

(assert (not b_lambda!92219))

(assert (not b_next!87435))

(assert (not b_next!87455))

(assert b_and!226187)

(assert (not b!3303438))

(assert (not b!3303301))

(assert (not b!3303335))

(assert (not b!3303484))

(assert (not d!925030))

(assert (not b!3303436))

(assert (not b!3303347))

(assert (not b!3303451))

(assert (not d!925024))

(assert (not b!3303352))

(assert (not d!925020))

(assert (not d!925010))

(assert b_and!226221)

(assert (not b!3303464))

(assert (not b!3303373))

(assert (not b!3303427))

(assert (not b_next!87433))

(assert (not d!925058))

(assert (not b!3303372))

(assert (not b!3303356))

(assert b_and!226191)

(assert b_and!226219)

(assert (not tb!171275))

(assert (not b!3303465))

(assert (not d!925002))

(assert (not b!3303333))

(assert (not b!3303440))

(assert (not b_next!87439))

(assert b_and!226217)

(assert (not b!3303294))

(assert b_and!226233)

(assert (not d!925040))

(assert (not b_next!87457))

(assert (not b!3303485))

(assert b_and!226229)

(assert (not b!3303435))

(assert (not b!3303487))

(assert (not b_next!87437))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226195)

(assert b_and!226235)

(assert (not b_next!87453))

(assert (not b_next!87429))

(assert b_and!226231)

(assert b_and!226187)

(assert (not b_next!87459))

(assert b_and!226221)

(assert (not b_next!87433))

(assert (not b_next!87431))

(assert (not b_next!87435))

(assert (not b_next!87455))

(assert b_and!226191)

(assert b_and!226219)

(assert (not b_next!87439))

(assert b_and!226217)

(assert (not b_next!87457))

(assert b_and!226233)

(assert b_and!226229)

(assert (not b_next!87437))

(check-sat)

(pop 1)


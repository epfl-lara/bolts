; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100710 () Bool)

(assert start!100710)

(declare-fun b!1155190 () Bool)

(declare-fun e!738741 () Bool)

(assert (=> b!1155190 (= e!738741 true)))

(declare-fun b!1155189 () Bool)

(declare-fun e!738740 () Bool)

(assert (=> b!1155189 (= e!738740 e!738741)))

(declare-fun b!1155181 () Bool)

(assert (=> b!1155181 e!738740))

(assert (= b!1155189 b!1155190))

(assert (= b!1155181 b!1155189))

(declare-fun tp!333023 () Bool)

(declare-fun b!1155175 () Bool)

(declare-fun e!738731 () Bool)

(declare-datatypes ((List!11228 0))(
  ( (Nil!11204) (Cons!11204 (h!16605 (_ BitVec 16)) (t!108870 List!11228)) )
))
(declare-datatypes ((TokenValue!2003 0))(
  ( (FloatLiteralValue!4006 (text!14466 List!11228)) (TokenValueExt!2002 (__x!7717 Int)) (Broken!10015 (value!63175 List!11228)) (Object!2026) (End!2003) (Def!2003) (Underscore!2003) (Match!2003) (Else!2003) (Error!2003) (Case!2003) (If!2003) (Extends!2003) (Abstract!2003) (Class!2003) (Val!2003) (DelimiterValue!4006 (del!2063 List!11228)) (KeywordValue!2009 (value!63176 List!11228)) (CommentValue!4006 (value!63177 List!11228)) (WhitespaceValue!4006 (value!63178 List!11228)) (IndentationValue!2003 (value!63179 List!11228)) (String!13602) (Int32!2003) (Broken!10016 (value!63180 List!11228)) (Boolean!2004) (Unit!17241) (OperatorValue!2006 (op!2063 List!11228)) (IdentifierValue!4006 (value!63181 List!11228)) (IdentifierValue!4007 (value!63182 List!11228)) (WhitespaceValue!4007 (value!63183 List!11228)) (True!4006) (False!4006) (Broken!10017 (value!63184 List!11228)) (Broken!10018 (value!63185 List!11228)) (True!4007) (RightBrace!2003) (RightBracket!2003) (Colon!2003) (Null!2003) (Comma!2003) (LeftBracket!2003) (False!4007) (LeftBrace!2003) (ImaginaryLiteralValue!2003 (text!14467 List!11228)) (StringLiteralValue!6009 (value!63186 List!11228)) (EOFValue!2003 (value!63187 List!11228)) (IdentValue!2003 (value!63188 List!11228)) (DelimiterValue!4007 (value!63189 List!11228)) (DedentValue!2003 (value!63190 List!11228)) (NewLineValue!2003 (value!63191 List!11228)) (IntegerValue!6009 (value!63192 (_ BitVec 32)) (text!14468 List!11228)) (IntegerValue!6010 (value!63193 Int) (text!14469 List!11228)) (Times!2003) (Or!2003) (Equal!2003) (Minus!2003) (Broken!10019 (value!63194 List!11228)) (And!2003) (Div!2003) (LessEqual!2003) (Mod!2003) (Concat!5210) (Not!2003) (Plus!2003) (SpaceValue!2003 (value!63195 List!11228)) (IntegerValue!6011 (value!63196 Int) (text!14470 List!11228)) (StringLiteralValue!6010 (text!14471 List!11228)) (FloatLiteralValue!4007 (text!14472 List!11228)) (BytesLiteralValue!2003 (value!63197 List!11228)) (CommentValue!4007 (value!63198 List!11228)) (StringLiteralValue!6011 (value!63199 List!11228)) (ErrorTokenValue!2003 (msg!2064 List!11228)) )
))
(declare-datatypes ((C!6732 0))(
  ( (C!6733 (val!3622 Int)) )
))
(declare-datatypes ((Regex!3207 0))(
  ( (ElementMatch!3207 (c!194002 C!6732)) (Concat!5211 (regOne!6926 Regex!3207) (regTwo!6926 Regex!3207)) (EmptyExpr!3207) (Star!3207 (reg!3536 Regex!3207)) (EmptyLang!3207) (Union!3207 (regOne!6927 Regex!3207) (regTwo!6927 Regex!3207)) )
))
(declare-datatypes ((String!13603 0))(
  ( (String!13604 (value!63200 String)) )
))
(declare-datatypes ((List!11229 0))(
  ( (Nil!11205) (Cons!11205 (h!16606 C!6732) (t!108871 List!11229)) )
))
(declare-datatypes ((IArray!7277 0))(
  ( (IArray!7278 (innerList!3696 List!11229)) )
))
(declare-datatypes ((Conc!3636 0))(
  ( (Node!3636 (left!9762 Conc!3636) (right!10092 Conc!3636) (csize!7502 Int) (cheight!3847 Int)) (Leaf!5615 (xs!6341 IArray!7277) (csize!7503 Int)) (Empty!3636) )
))
(declare-datatypes ((BalanceConc!7294 0))(
  ( (BalanceConc!7295 (c!194003 Conc!3636)) )
))
(declare-datatypes ((TokenValueInjection!3706 0))(
  ( (TokenValueInjection!3707 (toValue!3038 Int) (toChars!2897 Int)) )
))
(declare-datatypes ((Rule!3674 0))(
  ( (Rule!3675 (regex!1937 Regex!3207) (tag!2199 String!13603) (isSeparator!1937 Bool) (transformation!1937 TokenValueInjection!3706)) )
))
(declare-datatypes ((Token!3536 0))(
  ( (Token!3537 (value!63201 TokenValue!2003) (rule!3358 Rule!3674) (size!8822 Int) (originalCharacters!2491 List!11229)) )
))
(declare-datatypes ((List!11230 0))(
  ( (Nil!11206) (Cons!11206 (h!16607 Token!3536) (t!108872 List!11230)) )
))
(declare-datatypes ((List!11231 0))(
  ( (Nil!11207) (Cons!11207 (h!16608 Rule!3674) (t!108873 List!11231)) )
))
(declare-datatypes ((IArray!7279 0))(
  ( (IArray!7280 (innerList!3697 List!11230)) )
))
(declare-datatypes ((Conc!3637 0))(
  ( (Node!3637 (left!9763 Conc!3637) (right!10093 Conc!3637) (csize!7504 Int) (cheight!3848 Int)) (Leaf!5616 (xs!6342 IArray!7279) (csize!7505 Int)) (Empty!3637) )
))
(declare-datatypes ((BalanceConc!7296 0))(
  ( (BalanceConc!7297 (c!194004 Conc!3637)) )
))
(declare-datatypes ((PrintableTokens!560 0))(
  ( (PrintableTokens!561 (rules!9408 List!11231) (tokens!1536 BalanceConc!7296)) )
))
(declare-fun thiss!10527 () PrintableTokens!560)

(declare-fun e!738730 () Bool)

(declare-fun inv!14714 (BalanceConc!7296) Bool)

(assert (=> b!1155175 (= e!738731 (and tp!333023 (inv!14714 (tokens!1536 thiss!10527)) e!738730))))

(declare-fun b!1155176 () Bool)

(declare-fun res!519713 () Bool)

(declare-fun e!738732 () Bool)

(assert (=> b!1155176 (=> (not res!519713) (not e!738732))))

(declare-fun to!267 () Int)

(declare-fun size!8823 (BalanceConc!7296) Int)

(assert (=> b!1155176 (= res!519713 (<= to!267 (size!8823 (tokens!1536 thiss!10527))))))

(declare-fun b!1155177 () Bool)

(declare-fun tp!333024 () Bool)

(declare-fun inv!14715 (Conc!3637) Bool)

(assert (=> b!1155177 (= e!738730 (and (inv!14715 (c!194004 (tokens!1536 thiss!10527))) tp!333024))))

(declare-fun b!1155178 () Bool)

(declare-fun e!738735 () Bool)

(declare-fun e!738734 () Bool)

(assert (=> b!1155178 (= e!738735 e!738734)))

(declare-fun res!519709 () Bool)

(assert (=> b!1155178 (=> (not res!519709) (not e!738734))))

(declare-fun lt!392778 () List!11230)

(declare-datatypes ((LexerInterface!1632 0))(
  ( (LexerInterfaceExt!1629 (__x!7718 Int)) (Lexer!1630) )
))
(declare-fun rulesProduceIndividualToken!669 (LexerInterface!1632 List!11231 Token!3536) Bool)

(assert (=> b!1155178 (= res!519709 (rulesProduceIndividualToken!669 Lexer!1630 (rules!9408 thiss!10527) (h!16607 lt!392778)))))

(declare-fun res!519712 () Bool)

(assert (=> start!100710 (=> (not res!519712) (not e!738732))))

(declare-fun from!787 () Int)

(assert (=> start!100710 (= res!519712 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100710 e!738732))

(assert (=> start!100710 true))

(declare-fun inv!14716 (PrintableTokens!560) Bool)

(assert (=> start!100710 (and (inv!14716 thiss!10527) e!738731)))

(declare-fun b!1155179 () Bool)

(declare-fun e!738729 () Bool)

(assert (=> b!1155179 (= e!738732 e!738729)))

(declare-fun res!519710 () Bool)

(assert (=> b!1155179 (=> (not res!519710) (not e!738729))))

(declare-fun rulesInvariant!1506 (LexerInterface!1632 List!11231) Bool)

(assert (=> b!1155179 (= res!519710 (rulesInvariant!1506 Lexer!1630 (rules!9408 thiss!10527)))))

(declare-datatypes ((Unit!17242 0))(
  ( (Unit!17243) )
))
(declare-fun lt!392780 () Unit!17242)

(declare-fun lemmaInvariant!124 (PrintableTokens!560) Unit!17242)

(assert (=> b!1155179 (= lt!392780 (lemmaInvariant!124 thiss!10527))))

(declare-fun b!1155180 () Bool)

(declare-fun e!738733 () Bool)

(assert (=> b!1155180 (= e!738733 true)))

(declare-fun lt!392777 () List!11230)

(declare-fun list!4132 (BalanceConc!7296) List!11230)

(declare-fun slice!151 (BalanceConc!7296 Int Int) BalanceConc!7296)

(assert (=> b!1155180 (= lt!392777 (list!4132 (slice!151 (tokens!1536 thiss!10527) from!787 to!267)))))

(declare-fun subseq!193 (List!11230 List!11230) Bool)

(declare-fun slice!152 (List!11230 Int Int) List!11230)

(assert (=> b!1155180 (subseq!193 (slice!152 lt!392778 from!787 to!267) lt!392778)))

(declare-fun lt!392779 () Unit!17242)

(declare-fun lemmaSliceSubseq!34 (List!11230 Int Int) Unit!17242)

(assert (=> b!1155180 (= lt!392779 (lemmaSliceSubseq!34 lt!392778 from!787 to!267))))

(assert (=> b!1155181 (= e!738729 (not e!738733))))

(declare-fun res!519711 () Bool)

(assert (=> b!1155181 (=> res!519711 e!738733)))

(declare-fun lambda!46551 () Int)

(declare-fun forall!2859 (BalanceConc!7296 Int) Bool)

(assert (=> b!1155181 (= res!519711 (not (forall!2859 (tokens!1536 thiss!10527) lambda!46551)))))

(declare-fun rulesProduceEachTokenIndividuallyList!500 (LexerInterface!1632 List!11231 List!11230) Bool)

(assert (=> b!1155181 (= (rulesProduceEachTokenIndividuallyList!500 Lexer!1630 (rules!9408 thiss!10527) lt!392778) e!738735)))

(declare-fun res!519708 () Bool)

(assert (=> b!1155181 (=> res!519708 e!738735)))

(get-info :version)

(assert (=> b!1155181 (= res!519708 (not ((_ is Cons!11206) lt!392778)))))

(assert (=> b!1155181 (= lt!392778 (list!4132 (tokens!1536 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!671 (LexerInterface!1632 List!11231 BalanceConc!7296) Bool)

(assert (=> b!1155181 (= (rulesProduceEachTokenIndividually!671 Lexer!1630 (rules!9408 thiss!10527) (tokens!1536 thiss!10527)) (forall!2859 (tokens!1536 thiss!10527) lambda!46551))))

(declare-fun b!1155182 () Bool)

(assert (=> b!1155182 (= e!738734 (rulesProduceEachTokenIndividuallyList!500 Lexer!1630 (rules!9408 thiss!10527) (t!108872 lt!392778)))))

(assert (= (and start!100710 res!519712) b!1155176))

(assert (= (and b!1155176 res!519713) b!1155179))

(assert (= (and b!1155179 res!519710) b!1155181))

(assert (= (and b!1155181 (not res!519708)) b!1155178))

(assert (= (and b!1155178 res!519709) b!1155182))

(assert (= (and b!1155181 (not res!519711)) b!1155180))

(assert (= b!1155175 b!1155177))

(assert (= start!100710 b!1155175))

(declare-fun m!1322133 () Bool)

(assert (=> start!100710 m!1322133))

(declare-fun m!1322135 () Bool)

(assert (=> b!1155180 m!1322135))

(declare-fun m!1322137 () Bool)

(assert (=> b!1155180 m!1322137))

(declare-fun m!1322139 () Bool)

(assert (=> b!1155180 m!1322139))

(assert (=> b!1155180 m!1322139))

(declare-fun m!1322141 () Bool)

(assert (=> b!1155180 m!1322141))

(assert (=> b!1155180 m!1322135))

(declare-fun m!1322143 () Bool)

(assert (=> b!1155180 m!1322143))

(declare-fun m!1322145 () Bool)

(assert (=> b!1155177 m!1322145))

(declare-fun m!1322147 () Bool)

(assert (=> b!1155178 m!1322147))

(declare-fun m!1322149 () Bool)

(assert (=> b!1155176 m!1322149))

(declare-fun m!1322151 () Bool)

(assert (=> b!1155179 m!1322151))

(declare-fun m!1322153 () Bool)

(assert (=> b!1155179 m!1322153))

(declare-fun m!1322155 () Bool)

(assert (=> b!1155175 m!1322155))

(declare-fun m!1322157 () Bool)

(assert (=> b!1155181 m!1322157))

(declare-fun m!1322159 () Bool)

(assert (=> b!1155181 m!1322159))

(declare-fun m!1322161 () Bool)

(assert (=> b!1155181 m!1322161))

(declare-fun m!1322163 () Bool)

(assert (=> b!1155181 m!1322163))

(assert (=> b!1155181 m!1322157))

(declare-fun m!1322165 () Bool)

(assert (=> b!1155182 m!1322165))

(check-sat (not b!1155189) (not b!1155181) (not start!100710) (not b!1155178) (not b!1155182) (not b!1155179) (not b!1155175) (not b!1155177) (not b!1155180) (not b!1155190) (not b!1155176))
(check-sat)

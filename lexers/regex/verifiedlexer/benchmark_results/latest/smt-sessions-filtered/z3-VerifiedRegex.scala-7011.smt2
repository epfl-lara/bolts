; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372320 () Bool)

(assert start!372320)

(declare-fun b!3959006 () Bool)

(declare-fun b_free!109197 () Bool)

(declare-fun b_next!109901 () Bool)

(assert (=> b!3959006 (= b_free!109197 (not b_next!109901))))

(declare-fun tp!1206613 () Bool)

(declare-fun b_and!303871 () Bool)

(assert (=> b!3959006 (= tp!1206613 b_and!303871)))

(declare-fun b_free!109199 () Bool)

(declare-fun b_next!109903 () Bool)

(assert (=> b!3959006 (= b_free!109199 (not b_next!109903))))

(declare-fun tp!1206609 () Bool)

(declare-fun b_and!303873 () Bool)

(assert (=> b!3959006 (= tp!1206609 b_and!303873)))

(declare-fun b!3959004 () Bool)

(declare-fun b_free!109201 () Bool)

(declare-fun b_next!109905 () Bool)

(assert (=> b!3959004 (= b_free!109201 (not b_next!109905))))

(declare-fun tp!1206618 () Bool)

(declare-fun b_and!303875 () Bool)

(assert (=> b!3959004 (= tp!1206618 b_and!303875)))

(declare-fun b_free!109203 () Bool)

(declare-fun b_next!109907 () Bool)

(assert (=> b!3959004 (= b_free!109203 (not b_next!109907))))

(declare-fun tp!1206614 () Bool)

(declare-fun b_and!303877 () Bool)

(assert (=> b!3959004 (= tp!1206614 b_and!303877)))

(declare-fun b!3958996 () Bool)

(declare-fun b_free!109205 () Bool)

(declare-fun b_next!109909 () Bool)

(assert (=> b!3958996 (= b_free!109205 (not b_next!109909))))

(declare-fun tp!1206619 () Bool)

(declare-fun b_and!303879 () Bool)

(assert (=> b!3958996 (= tp!1206619 b_and!303879)))

(declare-fun b_free!109207 () Bool)

(declare-fun b_next!109911 () Bool)

(assert (=> b!3958996 (= b_free!109207 (not b_next!109911))))

(declare-fun tp!1206620 () Bool)

(declare-fun b_and!303881 () Bool)

(assert (=> b!3958996 (= tp!1206620 b_and!303881)))

(declare-fun b!3958993 () Bool)

(declare-datatypes ((Unit!60644 0))(
  ( (Unit!60645) )
))
(declare-fun e!2451305 () Unit!60644)

(declare-fun e!2451317 () Unit!60644)

(assert (=> b!3958993 (= e!2451305 e!2451317)))

(declare-datatypes ((List!42285 0))(
  ( (Nil!42161) (Cons!42161 (h!47581 (_ BitVec 16)) (t!329636 List!42285)) )
))
(declare-datatypes ((TokenValue!6840 0))(
  ( (FloatLiteralValue!13680 (text!48325 List!42285)) (TokenValueExt!6839 (__x!25897 Int)) (Broken!34200 (value!208993 List!42285)) (Object!6963) (End!6840) (Def!6840) (Underscore!6840) (Match!6840) (Else!6840) (Error!6840) (Case!6840) (If!6840) (Extends!6840) (Abstract!6840) (Class!6840) (Val!6840) (DelimiterValue!13680 (del!6900 List!42285)) (KeywordValue!6846 (value!208994 List!42285)) (CommentValue!13680 (value!208995 List!42285)) (WhitespaceValue!13680 (value!208996 List!42285)) (IndentationValue!6840 (value!208997 List!42285)) (String!47917) (Int32!6840) (Broken!34201 (value!208998 List!42285)) (Boolean!6841) (Unit!60646) (OperatorValue!6843 (op!6900 List!42285)) (IdentifierValue!13680 (value!208999 List!42285)) (IdentifierValue!13681 (value!209000 List!42285)) (WhitespaceValue!13681 (value!209001 List!42285)) (True!13680) (False!13680) (Broken!34202 (value!209002 List!42285)) (Broken!34203 (value!209003 List!42285)) (True!13681) (RightBrace!6840) (RightBracket!6840) (Colon!6840) (Null!6840) (Comma!6840) (LeftBracket!6840) (False!13681) (LeftBrace!6840) (ImaginaryLiteralValue!6840 (text!48326 List!42285)) (StringLiteralValue!20520 (value!209004 List!42285)) (EOFValue!6840 (value!209005 List!42285)) (IdentValue!6840 (value!209006 List!42285)) (DelimiterValue!13681 (value!209007 List!42285)) (DedentValue!6840 (value!209008 List!42285)) (NewLineValue!6840 (value!209009 List!42285)) (IntegerValue!20520 (value!209010 (_ BitVec 32)) (text!48327 List!42285)) (IntegerValue!20521 (value!209011 Int) (text!48328 List!42285)) (Times!6840) (Or!6840) (Equal!6840) (Minus!6840) (Broken!34204 (value!209012 List!42285)) (And!6840) (Div!6840) (LessEqual!6840) (Mod!6840) (Concat!18355) (Not!6840) (Plus!6840) (SpaceValue!6840 (value!209013 List!42285)) (IntegerValue!20522 (value!209014 Int) (text!48329 List!42285)) (StringLiteralValue!20521 (text!48330 List!42285)) (FloatLiteralValue!13681 (text!48331 List!42285)) (BytesLiteralValue!6840 (value!209015 List!42285)) (CommentValue!13681 (value!209016 List!42285)) (StringLiteralValue!20522 (value!209017 List!42285)) (ErrorTokenValue!6840 (msg!6901 List!42285)) )
))
(declare-datatypes ((C!23216 0))(
  ( (C!23217 (val!13702 Int)) )
))
(declare-datatypes ((Regex!11515 0))(
  ( (ElementMatch!11515 (c!687010 C!23216)) (Concat!18356 (regOne!23542 Regex!11515) (regTwo!23542 Regex!11515)) (EmptyExpr!11515) (Star!11515 (reg!11844 Regex!11515)) (EmptyLang!11515) (Union!11515 (regOne!23543 Regex!11515) (regTwo!23543 Regex!11515)) )
))
(declare-datatypes ((String!47918 0))(
  ( (String!47919 (value!209018 String)) )
))
(declare-datatypes ((List!42286 0))(
  ( (Nil!42162) (Cons!42162 (h!47582 C!23216) (t!329637 List!42286)) )
))
(declare-datatypes ((IArray!25647 0))(
  ( (IArray!25648 (innerList!12881 List!42286)) )
))
(declare-datatypes ((Conc!12821 0))(
  ( (Node!12821 (left!32008 Conc!12821) (right!32338 Conc!12821) (csize!25872 Int) (cheight!13032 Int)) (Leaf!19833 (xs!16127 IArray!25647) (csize!25873 Int)) (Empty!12821) )
))
(declare-datatypes ((BalanceConc!25236 0))(
  ( (BalanceConc!25237 (c!687011 Conc!12821)) )
))
(declare-datatypes ((TokenValueInjection!13108 0))(
  ( (TokenValueInjection!13109 (toValue!9090 Int) (toChars!8949 Int)) )
))
(declare-datatypes ((Rule!13020 0))(
  ( (Rule!13021 (regex!6610 Regex!11515) (tag!7470 String!47918) (isSeparator!6610 Bool) (transformation!6610 TokenValueInjection!13108)) )
))
(declare-datatypes ((Token!12358 0))(
  ( (Token!12359 (value!209019 TokenValue!6840) (rule!9586 Rule!13020) (size!31574 Int) (originalCharacters!7210 List!42286)) )
))
(declare-datatypes ((List!42287 0))(
  ( (Nil!42163) (Cons!42163 (h!47583 Token!12358) (t!329638 List!42287)) )
))
(declare-fun lt!1384544 () List!42287)

(declare-fun prefixTokens!80 () List!42287)

(declare-fun tail!6145 (List!42287) List!42287)

(assert (=> b!3958993 (= lt!1384544 (tail!6145 prefixTokens!80))))

(declare-fun c!687008 () Bool)

(declare-fun isEmpty!25208 (List!42287) Bool)

(assert (=> b!3958993 (= c!687008 (isEmpty!25208 lt!1384544))))

(declare-fun b!3958994 () Bool)

(declare-fun e!2451313 () Bool)

(declare-fun e!2451308 () Bool)

(assert (=> b!3958994 (= e!2451313 e!2451308)))

(declare-fun res!1602260 () Bool)

(assert (=> b!3958994 (=> res!1602260 e!2451308)))

(declare-fun lt!1384562 () Int)

(declare-fun lt!1384549 () Int)

(declare-fun lt!1384566 () Int)

(assert (=> b!3958994 (= res!1602260 (not (= (+ lt!1384549 lt!1384566) lt!1384562)))))

(declare-fun lt!1384555 () List!42286)

(declare-fun size!31575 (List!42286) Int)

(assert (=> b!3958994 (= lt!1384562 (size!31575 lt!1384555))))

(declare-fun b!3958995 () Bool)

(declare-fun e!2451295 () Bool)

(declare-fun e!2451311 () Bool)

(assert (=> b!3958995 (= e!2451295 e!2451311)))

(declare-fun res!1602256 () Bool)

(assert (=> b!3958995 (=> (not res!1602256) (not e!2451311))))

(declare-fun suffixResult!91 () List!42286)

(declare-datatypes ((tuple2!41450 0))(
  ( (tuple2!41451 (_1!23859 List!42287) (_2!23859 List!42286)) )
))
(declare-fun lt!1384551 () tuple2!41450)

(declare-fun lt!1384561 () List!42287)

(assert (=> b!3958995 (= res!1602256 (= lt!1384551 (tuple2!41451 lt!1384561 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6199 0))(
  ( (LexerInterfaceExt!6196 (__x!25898 Int)) (Lexer!6197) )
))
(declare-fun thiss!20629 () LexerInterface!6199)

(declare-datatypes ((List!42288 0))(
  ( (Nil!42164) (Cons!42164 (h!47584 Rule!13020) (t!329639 List!42288)) )
))
(declare-fun rules!2768 () List!42288)

(declare-fun lexList!1967 (LexerInterface!6199 List!42288 List!42286) tuple2!41450)

(assert (=> b!3958995 (= lt!1384551 (lexList!1967 thiss!20629 rules!2768 lt!1384555))))

(declare-fun suffixTokens!72 () List!42287)

(declare-fun ++!10977 (List!42287 List!42287) List!42287)

(assert (=> b!3958995 (= lt!1384561 (++!10977 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42286)

(declare-fun suffix!1176 () List!42286)

(declare-fun ++!10978 (List!42286 List!42286) List!42286)

(assert (=> b!3958995 (= lt!1384555 (++!10978 prefix!426 suffix!1176))))

(declare-fun e!2451327 () Bool)

(assert (=> b!3958996 (= e!2451327 (and tp!1206619 tp!1206620))))

(declare-fun b!3958997 () Bool)

(declare-fun res!1602263 () Bool)

(assert (=> b!3958997 (=> (not res!1602263) (not e!2451295))))

(declare-fun rulesInvariant!5542 (LexerInterface!6199 List!42288) Bool)

(assert (=> b!3958997 (= res!1602263 (rulesInvariant!5542 thiss!20629 rules!2768))))

(declare-fun b!3958998 () Bool)

(declare-fun res!1602246 () Bool)

(declare-fun e!2451321 () Bool)

(assert (=> b!3958998 (=> res!1602246 e!2451321)))

(declare-datatypes ((tuple2!41452 0))(
  ( (tuple2!41453 (_1!23860 Token!12358) (_2!23860 List!42286)) )
))
(declare-datatypes ((Option!9030 0))(
  ( (None!9029) (Some!9029 (v!39375 tuple2!41452)) )
))
(declare-fun lt!1384542 () Option!9030)

(declare-fun lt!1384568 () tuple2!41450)

(assert (=> b!3958998 (= res!1602246 (or (not (= lt!1384568 (tuple2!41451 (_1!23859 lt!1384568) (_2!23859 lt!1384568)))) (= (_2!23860 (v!39375 lt!1384542)) suffix!1176)))))

(declare-fun b!3958999 () Bool)

(declare-fun e!2451324 () Bool)

(assert (=> b!3958999 (= e!2451311 e!2451324)))

(declare-fun res!1602255 () Bool)

(assert (=> b!3958999 (=> (not res!1602255) (not e!2451324))))

(declare-fun lt!1384547 () tuple2!41450)

(assert (=> b!3958999 (= res!1602255 (= (lexList!1967 thiss!20629 rules!2768 suffix!1176) lt!1384547))))

(assert (=> b!3958999 (= lt!1384547 (tuple2!41451 suffixTokens!72 suffixResult!91))))

(declare-fun b!3959000 () Bool)

(declare-fun e!2451304 () Bool)

(assert (=> b!3959000 (= e!2451304 (not e!2451321))))

(declare-fun res!1602252 () Bool)

(assert (=> b!3959000 (=> res!1602252 e!2451321)))

(declare-fun lt!1384545 () List!42286)

(assert (=> b!3959000 (= res!1602252 (not (= lt!1384545 lt!1384555)))))

(assert (=> b!3959000 (= lt!1384568 (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun lt!1384556 () List!42286)

(declare-fun lt!1384567 () TokenValue!6840)

(declare-fun lt!1384550 () List!42286)

(assert (=> b!3959000 (and (= (size!31574 (_1!23860 (v!39375 lt!1384542))) lt!1384549) (= (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542))) lt!1384556) (= (v!39375 lt!1384542) (tuple2!41453 (Token!12359 lt!1384567 (rule!9586 (_1!23860 (v!39375 lt!1384542))) lt!1384549 lt!1384556) lt!1384550)))))

(assert (=> b!3959000 (= lt!1384549 (size!31575 lt!1384556))))

(declare-fun e!2451299 () Bool)

(assert (=> b!3959000 e!2451299))

(declare-fun res!1602257 () Bool)

(assert (=> b!3959000 (=> (not res!1602257) (not e!2451299))))

(assert (=> b!3959000 (= res!1602257 (= (value!209019 (_1!23860 (v!39375 lt!1384542))) lt!1384567))))

(declare-fun apply!9841 (TokenValueInjection!13108 BalanceConc!25236) TokenValue!6840)

(declare-fun seqFromList!4869 (List!42286) BalanceConc!25236)

(assert (=> b!3959000 (= lt!1384567 (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (seqFromList!4869 lt!1384556)))))

(assert (=> b!3959000 (= (_2!23860 (v!39375 lt!1384542)) lt!1384550)))

(declare-fun lt!1384546 () Unit!60644)

(declare-fun lemmaSamePrefixThenSameSuffix!1908 (List!42286 List!42286 List!42286 List!42286 List!42286) Unit!60644)

(assert (=> b!3959000 (= lt!1384546 (lemmaSamePrefixThenSameSuffix!1908 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 lt!1384550 lt!1384555))))

(declare-fun getSuffix!2150 (List!42286 List!42286) List!42286)

(assert (=> b!3959000 (= lt!1384550 (getSuffix!2150 lt!1384555 lt!1384556))))

(declare-fun isPrefix!3699 (List!42286 List!42286) Bool)

(assert (=> b!3959000 (isPrefix!3699 lt!1384556 lt!1384545)))

(assert (=> b!3959000 (= lt!1384545 (++!10978 lt!1384556 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun lt!1384552 () Unit!60644)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2558 (List!42286 List!42286) Unit!60644)

(assert (=> b!3959000 (= lt!1384552 (lemmaConcatTwoListThenFirstIsPrefix!2558 lt!1384556 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun list!15652 (BalanceConc!25236) List!42286)

(declare-fun charsOf!4428 (Token!12358) BalanceConc!25236)

(assert (=> b!3959000 (= lt!1384556 (list!15652 (charsOf!4428 (_1!23860 (v!39375 lt!1384542)))))))

(declare-fun ruleValid!2552 (LexerInterface!6199 Rule!13020) Bool)

(assert (=> b!3959000 (ruleValid!2552 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))

(declare-fun lt!1384558 () Unit!60644)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1628 (LexerInterface!6199 Rule!13020 List!42288) Unit!60644)

(assert (=> b!3959000 (= lt!1384558 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1628 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) rules!2768))))

(declare-fun lt!1384560 () Unit!60644)

(declare-fun lemmaCharactersSize!1263 (Token!12358) Unit!60644)

(assert (=> b!3959000 (= lt!1384560 (lemmaCharactersSize!1263 (_1!23860 (v!39375 lt!1384542))))))

(declare-fun b!3959001 () Bool)

(declare-fun e!2451325 () Bool)

(declare-fun tp_is_empty!20001 () Bool)

(declare-fun tp!1206612 () Bool)

(assert (=> b!3959001 (= e!2451325 (and tp_is_empty!20001 tp!1206612))))

(declare-fun res!1602254 () Bool)

(assert (=> start!372320 (=> (not res!1602254) (not e!2451295))))

(get-info :version)

(assert (=> start!372320 (= res!1602254 ((_ is Lexer!6197) thiss!20629))))

(assert (=> start!372320 e!2451295))

(declare-fun e!2451294 () Bool)

(assert (=> start!372320 e!2451294))

(assert (=> start!372320 true))

(declare-fun e!2451297 () Bool)

(assert (=> start!372320 e!2451297))

(declare-fun e!2451298 () Bool)

(assert (=> start!372320 e!2451298))

(declare-fun e!2451315 () Bool)

(assert (=> start!372320 e!2451315))

(declare-fun e!2451314 () Bool)

(assert (=> start!372320 e!2451314))

(assert (=> start!372320 e!2451325))

(declare-fun e!2451322 () Bool)

(declare-fun b!3959002 () Bool)

(declare-fun tp!1206617 () Bool)

(declare-fun e!2451296 () Bool)

(declare-fun inv!56388 (String!47918) Bool)

(declare-fun inv!56391 (TokenValueInjection!13108) Bool)

(assert (=> b!3959002 (= e!2451296 (and tp!1206617 (inv!56388 (tag!7470 (rule!9586 (h!47583 prefixTokens!80)))) (inv!56391 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) e!2451322))))

(declare-fun tp!1206605 () Bool)

(declare-fun e!2451323 () Bool)

(declare-fun b!3959003 () Bool)

(declare-fun inv!56392 (Token!12358) Bool)

(assert (=> b!3959003 (= e!2451314 (and (inv!56392 (h!47583 suffixTokens!72)) e!2451323 tp!1206605))))

(declare-fun e!2451318 () Bool)

(assert (=> b!3959004 (= e!2451318 (and tp!1206618 tp!1206614))))

(declare-fun bm!285365 () Bool)

(declare-fun call!285370 () tuple2!41450)

(declare-fun lt!1384564 () tuple2!41452)

(assert (=> bm!285365 (= call!285370 (lexList!1967 thiss!20629 rules!2768 (_2!23860 lt!1384564)))))

(declare-fun b!3959005 () Bool)

(declare-fun tp!1206615 () Bool)

(assert (=> b!3959005 (= e!2451294 (and tp_is_empty!20001 tp!1206615))))

(assert (=> b!3959006 (= e!2451322 (and tp!1206613 tp!1206609))))

(declare-fun b!3959007 () Bool)

(declare-fun e!2451306 () Bool)

(declare-fun tp!1206616 () Bool)

(assert (=> b!3959007 (= e!2451306 (and tp!1206616 (inv!56388 (tag!7470 (rule!9586 (h!47583 suffixTokens!72)))) (inv!56391 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) e!2451318))))

(declare-fun e!2451300 () Bool)

(declare-fun b!3959008 () Bool)

(declare-fun tp!1206610 () Bool)

(assert (=> b!3959008 (= e!2451315 (and (inv!56392 (h!47583 prefixTokens!80)) e!2451300 tp!1206610))))

(declare-fun b!3959009 () Bool)

(assert (=> b!3959009 (= e!2451299 (= (size!31574 (_1!23860 (v!39375 lt!1384542))) (size!31575 (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542))))))))

(declare-fun b!3959010 () Bool)

(declare-fun e!2451320 () Bool)

(declare-fun tp!1206606 () Bool)

(assert (=> b!3959010 (= e!2451298 (and e!2451320 tp!1206606))))

(declare-fun b!3959011 () Bool)

(declare-fun tp!1206604 () Bool)

(assert (=> b!3959011 (= e!2451320 (and tp!1206604 (inv!56388 (tag!7470 (h!47584 rules!2768))) (inv!56391 (transformation!6610 (h!47584 rules!2768))) e!2451327))))

(declare-fun tp!1206608 () Bool)

(declare-fun b!3959012 () Bool)

(declare-fun inv!21 (TokenValue!6840) Bool)

(assert (=> b!3959012 (= e!2451323 (and (inv!21 (value!209019 (h!47583 suffixTokens!72))) e!2451306 tp!1206608))))

(declare-fun b!3959013 () Bool)

(declare-fun Unit!60647 () Unit!60644)

(assert (=> b!3959013 (= e!2451305 Unit!60647)))

(declare-fun b!3959014 () Bool)

(assert (=> b!3959014 (= e!2451324 e!2451304)))

(declare-fun res!1602245 () Bool)

(assert (=> b!3959014 (=> (not res!1602245) (not e!2451304))))

(assert (=> b!3959014 (= res!1602245 ((_ is Some!9029) lt!1384542))))

(declare-fun maxPrefix!3503 (LexerInterface!6199 List!42288 List!42286) Option!9030)

(assert (=> b!3959014 (= lt!1384542 (maxPrefix!3503 thiss!20629 rules!2768 lt!1384555))))

(declare-fun b!3959015 () Bool)

(declare-fun e!2451307 () Bool)

(assert (=> b!3959015 (= e!2451307 false)))

(declare-fun b!3959016 () Bool)

(declare-fun e!2451309 () Bool)

(declare-fun e!2451316 () Bool)

(assert (=> b!3959016 (= e!2451309 e!2451316)))

(declare-fun res!1602250 () Bool)

(assert (=> b!3959016 (=> res!1602250 e!2451316)))

(declare-fun lt!1384557 () Bool)

(assert (=> b!3959016 (= res!1602250 lt!1384557)))

(declare-fun lt!1384565 () Unit!60644)

(assert (=> b!3959016 (= lt!1384565 e!2451305)))

(declare-fun c!687009 () Bool)

(assert (=> b!3959016 (= c!687009 lt!1384557)))

(declare-fun lt!1384548 () Int)

(assert (=> b!3959016 (= lt!1384557 (< (size!31575 (_2!23860 lt!1384564)) lt!1384548))))

(declare-fun b!3959017 () Bool)

(declare-fun res!1602258 () Bool)

(assert (=> b!3959017 (=> (not res!1602258) (not e!2451295))))

(declare-fun isEmpty!25209 (List!42286) Bool)

(assert (=> b!3959017 (= res!1602258 (not (isEmpty!25209 prefix!426)))))

(declare-fun b!3959018 () Bool)

(declare-fun e!2451302 () Bool)

(assert (=> b!3959018 (= e!2451308 e!2451302)))

(declare-fun res!1602262 () Bool)

(assert (=> b!3959018 (=> res!1602262 e!2451302)))

(declare-fun lt!1384563 () Int)

(assert (=> b!3959018 (= res!1602262 (or (not (= (+ lt!1384563 lt!1384548) lt!1384562)) (<= lt!1384549 lt!1384563)))))

(assert (=> b!3959018 (= lt!1384563 (size!31575 prefix!426))))

(declare-fun b!3959019 () Bool)

(assert (=> b!3959019 (= e!2451321 e!2451313)))

(declare-fun res!1602244 () Bool)

(assert (=> b!3959019 (=> res!1602244 e!2451313)))

(assert (=> b!3959019 (= res!1602244 (>= lt!1384566 lt!1384548))))

(assert (=> b!3959019 (= lt!1384548 (size!31575 suffix!1176))))

(assert (=> b!3959019 (= lt!1384566 (size!31575 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun b!3959020 () Bool)

(declare-fun e!2451312 () Bool)

(assert (=> b!3959020 (= e!2451302 e!2451312)))

(declare-fun res!1602251 () Bool)

(assert (=> b!3959020 (=> res!1602251 e!2451312)))

(declare-fun matchR!5536 (Regex!11515 List!42286) Bool)

(assert (=> b!3959020 (= res!1602251 (not (matchR!5536 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) lt!1384556)))))

(declare-fun maxPrefixOneRule!2553 (LexerInterface!6199 Rule!13020 List!42286) Option!9030)

(assert (=> b!3959020 (= (maxPrefixOneRule!2553 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) lt!1384555) (Some!9029 (tuple2!41453 (Token!12359 lt!1384567 (rule!9586 (_1!23860 (v!39375 lt!1384542))) lt!1384549 lt!1384556) (_2!23860 (v!39375 lt!1384542)))))))

(declare-fun lt!1384554 () Unit!60644)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1379 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42286 Rule!13020) Unit!60644)

(assert (=> b!3959020 (= lt!1384554 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1379 thiss!20629 rules!2768 lt!1384556 lt!1384555 (_2!23860 (v!39375 lt!1384542)) (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))

(declare-fun b!3959021 () Bool)

(declare-fun tp!1206611 () Bool)

(assert (=> b!3959021 (= e!2451297 (and tp_is_empty!20001 tp!1206611))))

(declare-fun b!3959022 () Bool)

(declare-fun res!1602247 () Bool)

(assert (=> b!3959022 (=> res!1602247 e!2451321)))

(assert (=> b!3959022 (= res!1602247 (not (= lt!1384551 (tuple2!41451 (++!10977 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163) (_1!23859 lt!1384568)) (_2!23859 lt!1384568)))))))

(declare-fun b!3959023 () Bool)

(declare-fun res!1602253 () Bool)

(assert (=> b!3959023 (=> (not res!1602253) (not e!2451295))))

(assert (=> b!3959023 (= res!1602253 (not (isEmpty!25208 prefixTokens!80)))))

(declare-fun b!3959024 () Bool)

(declare-fun e!2451319 () Bool)

(assert (=> b!3959024 e!2451319))

(declare-fun res!1602261 () Bool)

(assert (=> b!3959024 (=> (not res!1602261) (not e!2451319))))

(assert (=> b!3959024 (= res!1602261 (not (= call!285370 (tuple2!41451 (++!10977 lt!1384544 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1384559 () Unit!60644)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!138 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42287 List!42286 List!42287) Unit!60644)

(assert (=> b!3959024 (= lt!1384559 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!138 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91 lt!1384544))))

(declare-fun Unit!60648 () Unit!60644)

(assert (=> b!3959024 (= e!2451317 Unit!60648)))

(declare-fun b!3959025 () Bool)

(assert (=> b!3959025 e!2451307))

(declare-fun res!1602259 () Bool)

(assert (=> b!3959025 (=> (not res!1602259) (not e!2451307))))

(assert (=> b!3959025 (= res!1602259 (not (= call!285370 lt!1384547)))))

(declare-fun lt!1384569 () Unit!60644)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!138 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42287 List!42286) Unit!60644)

(assert (=> b!3959025 (= lt!1384569 (lemmaLexWithSmallerInputCannotProduceSameResults!138 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91))))

(assert (=> b!3959025 (= (_2!23860 (v!39375 lt!1384542)) (_2!23860 lt!1384564))))

(declare-fun lt!1384543 () Unit!60644)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!604 (List!42286 List!42286 List!42286 List!42286) Unit!60644)

(assert (=> b!3959025 (= lt!1384543 (lemmaConcatSameAndSameSizesThenSameLists!604 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 (_2!23860 lt!1384564)))))

(declare-fun Unit!60649 () Unit!60644)

(assert (=> b!3959025 (= e!2451317 Unit!60649)))

(declare-fun b!3959026 () Bool)

(assert (=> b!3959026 (= e!2451319 false)))

(declare-fun b!3959027 () Bool)

(declare-fun res!1602248 () Bool)

(assert (=> b!3959027 (=> (not res!1602248) (not e!2451295))))

(declare-fun isEmpty!25210 (List!42288) Bool)

(assert (=> b!3959027 (= res!1602248 (not (isEmpty!25210 rules!2768)))))

(declare-fun b!3959028 () Bool)

(assert (=> b!3959028 (= e!2451312 e!2451309)))

(declare-fun res!1602249 () Bool)

(assert (=> b!3959028 (=> res!1602249 e!2451309)))

(declare-fun lt!1384553 () Token!12358)

(assert (=> b!3959028 (= res!1602249 (not (= (_1!23860 lt!1384564) lt!1384553)))))

(declare-fun head!8419 (List!42287) Token!12358)

(assert (=> b!3959028 (= lt!1384553 (head!8419 prefixTokens!80))))

(declare-fun get!13905 (Option!9030) tuple2!41452)

(assert (=> b!3959028 (= lt!1384564 (get!13905 lt!1384542))))

(declare-fun b!3959029 () Bool)

(declare-fun tp!1206607 () Bool)

(assert (=> b!3959029 (= e!2451300 (and (inv!21 (value!209019 (h!47583 prefixTokens!80))) e!2451296 tp!1206607))))

(declare-fun b!3959030 () Bool)

(assert (=> b!3959030 (= e!2451316 (<= lt!1384549 (size!31575 (list!15652 (charsOf!4428 lt!1384553)))))))

(assert (= (and start!372320 res!1602254) b!3959027))

(assert (= (and b!3959027 res!1602248) b!3958997))

(assert (= (and b!3958997 res!1602263) b!3959023))

(assert (= (and b!3959023 res!1602253) b!3959017))

(assert (= (and b!3959017 res!1602258) b!3958995))

(assert (= (and b!3958995 res!1602256) b!3958999))

(assert (= (and b!3958999 res!1602255) b!3959014))

(assert (= (and b!3959014 res!1602245) b!3959000))

(assert (= (and b!3959000 res!1602257) b!3959009))

(assert (= (and b!3959000 (not res!1602252)) b!3959022))

(assert (= (and b!3959022 (not res!1602247)) b!3958998))

(assert (= (and b!3958998 (not res!1602246)) b!3959019))

(assert (= (and b!3959019 (not res!1602244)) b!3958994))

(assert (= (and b!3958994 (not res!1602260)) b!3959018))

(assert (= (and b!3959018 (not res!1602262)) b!3959020))

(assert (= (and b!3959020 (not res!1602251)) b!3959028))

(assert (= (and b!3959028 (not res!1602249)) b!3959016))

(assert (= (and b!3959016 c!687009) b!3958993))

(assert (= (and b!3959016 (not c!687009)) b!3959013))

(assert (= (and b!3958993 c!687008) b!3959025))

(assert (= (and b!3958993 (not c!687008)) b!3959024))

(assert (= (and b!3959025 res!1602259) b!3959015))

(assert (= (and b!3959024 res!1602261) b!3959026))

(assert (= (or b!3959025 b!3959024) bm!285365))

(assert (= (and b!3959016 (not res!1602250)) b!3959030))

(assert (= (and start!372320 ((_ is Cons!42162) suffixResult!91)) b!3959005))

(assert (= (and start!372320 ((_ is Cons!42162) suffix!1176)) b!3959021))

(assert (= b!3959011 b!3958996))

(assert (= b!3959010 b!3959011))

(assert (= (and start!372320 ((_ is Cons!42164) rules!2768)) b!3959010))

(assert (= b!3959002 b!3959006))

(assert (= b!3959029 b!3959002))

(assert (= b!3959008 b!3959029))

(assert (= (and start!372320 ((_ is Cons!42163) prefixTokens!80)) b!3959008))

(assert (= b!3959007 b!3959004))

(assert (= b!3959012 b!3959007))

(assert (= b!3959003 b!3959012))

(assert (= (and start!372320 ((_ is Cons!42163) suffixTokens!72)) b!3959003))

(assert (= (and start!372320 ((_ is Cons!42162) prefix!426)) b!3959001))

(declare-fun m!4527815 () Bool)

(assert (=> b!3959028 m!4527815))

(declare-fun m!4527817 () Bool)

(assert (=> b!3959028 m!4527817))

(declare-fun m!4527819 () Bool)

(assert (=> b!3959002 m!4527819))

(declare-fun m!4527821 () Bool)

(assert (=> b!3959002 m!4527821))

(declare-fun m!4527823 () Bool)

(assert (=> b!3959023 m!4527823))

(declare-fun m!4527825 () Bool)

(assert (=> b!3959007 m!4527825))

(declare-fun m!4527827 () Bool)

(assert (=> b!3959007 m!4527827))

(declare-fun m!4527829 () Bool)

(assert (=> b!3959027 m!4527829))

(declare-fun m!4527831 () Bool)

(assert (=> b!3959011 m!4527831))

(declare-fun m!4527833 () Bool)

(assert (=> b!3959011 m!4527833))

(declare-fun m!4527835 () Bool)

(assert (=> b!3959003 m!4527835))

(declare-fun m!4527837 () Bool)

(assert (=> b!3959029 m!4527837))

(declare-fun m!4527839 () Bool)

(assert (=> b!3959008 m!4527839))

(declare-fun m!4527841 () Bool)

(assert (=> b!3959019 m!4527841))

(declare-fun m!4527843 () Bool)

(assert (=> b!3959019 m!4527843))

(declare-fun m!4527845 () Bool)

(assert (=> b!3959000 m!4527845))

(declare-fun m!4527847 () Bool)

(assert (=> b!3959000 m!4527847))

(declare-fun m!4527849 () Bool)

(assert (=> b!3959000 m!4527849))

(declare-fun m!4527851 () Bool)

(assert (=> b!3959000 m!4527851))

(declare-fun m!4527853 () Bool)

(assert (=> b!3959000 m!4527853))

(assert (=> b!3959000 m!4527845))

(declare-fun m!4527855 () Bool)

(assert (=> b!3959000 m!4527855))

(declare-fun m!4527857 () Bool)

(assert (=> b!3959000 m!4527857))

(declare-fun m!4527859 () Bool)

(assert (=> b!3959000 m!4527859))

(declare-fun m!4527861 () Bool)

(assert (=> b!3959000 m!4527861))

(declare-fun m!4527863 () Bool)

(assert (=> b!3959000 m!4527863))

(declare-fun m!4527865 () Bool)

(assert (=> b!3959000 m!4527865))

(declare-fun m!4527867 () Bool)

(assert (=> b!3959000 m!4527867))

(declare-fun m!4527869 () Bool)

(assert (=> b!3959000 m!4527869))

(assert (=> b!3959000 m!4527859))

(declare-fun m!4527871 () Bool)

(assert (=> b!3959000 m!4527871))

(declare-fun m!4527873 () Bool)

(assert (=> b!3958993 m!4527873))

(declare-fun m!4527875 () Bool)

(assert (=> b!3958993 m!4527875))

(declare-fun m!4527877 () Bool)

(assert (=> b!3959030 m!4527877))

(assert (=> b!3959030 m!4527877))

(declare-fun m!4527879 () Bool)

(assert (=> b!3959030 m!4527879))

(assert (=> b!3959030 m!4527879))

(declare-fun m!4527881 () Bool)

(assert (=> b!3959030 m!4527881))

(declare-fun m!4527883 () Bool)

(assert (=> b!3958999 m!4527883))

(declare-fun m!4527885 () Bool)

(assert (=> b!3959024 m!4527885))

(declare-fun m!4527887 () Bool)

(assert (=> b!3959024 m!4527887))

(declare-fun m!4527889 () Bool)

(assert (=> b!3959012 m!4527889))

(declare-fun m!4527891 () Bool)

(assert (=> b!3958994 m!4527891))

(declare-fun m!4527893 () Bool)

(assert (=> b!3959009 m!4527893))

(declare-fun m!4527895 () Bool)

(assert (=> b!3958995 m!4527895))

(declare-fun m!4527897 () Bool)

(assert (=> b!3958995 m!4527897))

(declare-fun m!4527899 () Bool)

(assert (=> b!3958995 m!4527899))

(declare-fun m!4527901 () Bool)

(assert (=> b!3958997 m!4527901))

(declare-fun m!4527903 () Bool)

(assert (=> b!3959025 m!4527903))

(declare-fun m!4527905 () Bool)

(assert (=> b!3959025 m!4527905))

(declare-fun m!4527907 () Bool)

(assert (=> b!3959016 m!4527907))

(declare-fun m!4527909 () Bool)

(assert (=> b!3959022 m!4527909))

(declare-fun m!4527911 () Bool)

(assert (=> b!3959014 m!4527911))

(declare-fun m!4527913 () Bool)

(assert (=> bm!285365 m!4527913))

(declare-fun m!4527915 () Bool)

(assert (=> b!3959018 m!4527915))

(declare-fun m!4527917 () Bool)

(assert (=> b!3959020 m!4527917))

(declare-fun m!4527919 () Bool)

(assert (=> b!3959020 m!4527919))

(declare-fun m!4527921 () Bool)

(assert (=> b!3959020 m!4527921))

(declare-fun m!4527923 () Bool)

(assert (=> b!3959017 m!4527923))

(check-sat (not b!3959028) (not b!3959027) (not b!3959003) (not b!3958993) b_and!303881 (not b!3959020) tp_is_empty!20001 (not b!3959018) (not b!3959022) (not b!3958994) (not b!3959000) b_and!303877 (not b!3959009) (not b!3959021) b_and!303871 (not b!3959030) (not b!3959017) (not b!3958997) (not b!3959008) b_and!303879 (not b!3959019) b_and!303873 (not b!3959005) (not b!3959001) (not b!3958999) (not b!3959012) (not b_next!109911) b_and!303875 (not b!3959011) (not b!3959016) (not b!3959023) (not bm!285365) (not b_next!109901) (not b!3959010) (not b!3959029) (not b!3959024) (not b!3959025) (not b_next!109903) (not b!3959007) (not b_next!109905) (not b!3958995) (not b_next!109907) (not b!3959002) (not b_next!109909) (not b!3959014))
(check-sat b_and!303871 b_and!303879 b_and!303873 b_and!303881 (not b_next!109911) b_and!303875 (not b_next!109901) b_and!303877 (not b_next!109903) (not b_next!109909) (not b_next!109905) (not b_next!109907))
(get-model)

(declare-fun d!1173296 () Bool)

(declare-fun lt!1384572 () Int)

(assert (=> d!1173296 (>= lt!1384572 0)))

(declare-fun e!2451331 () Int)

(assert (=> d!1173296 (= lt!1384572 e!2451331)))

(declare-fun c!687014 () Bool)

(assert (=> d!1173296 (= c!687014 ((_ is Nil!42162) prefix!426))))

(assert (=> d!1173296 (= (size!31575 prefix!426) lt!1384572)))

(declare-fun b!3959035 () Bool)

(assert (=> b!3959035 (= e!2451331 0)))

(declare-fun b!3959036 () Bool)

(assert (=> b!3959036 (= e!2451331 (+ 1 (size!31575 (t!329637 prefix!426))))))

(assert (= (and d!1173296 c!687014) b!3959035))

(assert (= (and d!1173296 (not c!687014)) b!3959036))

(declare-fun m!4527925 () Bool)

(assert (=> b!3959036 m!4527925))

(assert (=> b!3959018 d!1173296))

(declare-fun d!1173298 () Bool)

(declare-fun lt!1384573 () Int)

(assert (=> d!1173298 (>= lt!1384573 0)))

(declare-fun e!2451332 () Int)

(assert (=> d!1173298 (= lt!1384573 e!2451332)))

(declare-fun c!687015 () Bool)

(assert (=> d!1173298 (= c!687015 ((_ is Nil!42162) suffix!1176))))

(assert (=> d!1173298 (= (size!31575 suffix!1176) lt!1384573)))

(declare-fun b!3959037 () Bool)

(assert (=> b!3959037 (= e!2451332 0)))

(declare-fun b!3959038 () Bool)

(assert (=> b!3959038 (= e!2451332 (+ 1 (size!31575 (t!329637 suffix!1176))))))

(assert (= (and d!1173298 c!687015) b!3959037))

(assert (= (and d!1173298 (not c!687015)) b!3959038))

(declare-fun m!4527927 () Bool)

(assert (=> b!3959038 m!4527927))

(assert (=> b!3959019 d!1173298))

(declare-fun d!1173300 () Bool)

(declare-fun lt!1384574 () Int)

(assert (=> d!1173300 (>= lt!1384574 0)))

(declare-fun e!2451333 () Int)

(assert (=> d!1173300 (= lt!1384574 e!2451333)))

(declare-fun c!687016 () Bool)

(assert (=> d!1173300 (= c!687016 ((_ is Nil!42162) (_2!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173300 (= (size!31575 (_2!23860 (v!39375 lt!1384542))) lt!1384574)))

(declare-fun b!3959039 () Bool)

(assert (=> b!3959039 (= e!2451333 0)))

(declare-fun b!3959040 () Bool)

(assert (=> b!3959040 (= e!2451333 (+ 1 (size!31575 (t!329637 (_2!23860 (v!39375 lt!1384542))))))))

(assert (= (and d!1173300 c!687016) b!3959039))

(assert (= (and d!1173300 (not c!687016)) b!3959040))

(declare-fun m!4527929 () Bool)

(assert (=> b!3959040 m!4527929))

(assert (=> b!3959019 d!1173300))

(declare-fun d!1173302 () Bool)

(assert (=> d!1173302 (= (isEmpty!25209 prefix!426) ((_ is Nil!42162) prefix!426))))

(assert (=> b!3959017 d!1173302))

(declare-fun d!1173304 () Bool)

(declare-fun res!1602270 () Bool)

(declare-fun e!2451336 () Bool)

(assert (=> d!1173304 (=> (not res!1602270) (not e!2451336))))

(declare-fun rulesValid!2582 (LexerInterface!6199 List!42288) Bool)

(assert (=> d!1173304 (= res!1602270 (rulesValid!2582 thiss!20629 rules!2768))))

(assert (=> d!1173304 (= (rulesInvariant!5542 thiss!20629 rules!2768) e!2451336)))

(declare-fun b!3959043 () Bool)

(declare-datatypes ((List!42289 0))(
  ( (Nil!42165) (Cons!42165 (h!47585 String!47918) (t!329760 List!42289)) )
))
(declare-fun noDuplicateTag!2583 (LexerInterface!6199 List!42288 List!42289) Bool)

(assert (=> b!3959043 (= e!2451336 (noDuplicateTag!2583 thiss!20629 rules!2768 Nil!42165))))

(assert (= (and d!1173304 res!1602270) b!3959043))

(declare-fun m!4527931 () Bool)

(assert (=> d!1173304 m!4527931))

(declare-fun m!4527933 () Bool)

(assert (=> b!3959043 m!4527933))

(assert (=> b!3958997 d!1173304))

(declare-fun b!3959054 () Bool)

(declare-fun e!2451343 () Bool)

(declare-fun lt!1384582 () tuple2!41450)

(assert (=> b!3959054 (= e!2451343 (= (_2!23859 lt!1384582) lt!1384555))))

(declare-fun b!3959055 () Bool)

(declare-fun e!2451345 () Bool)

(assert (=> b!3959055 (= e!2451343 e!2451345)))

(declare-fun res!1602273 () Bool)

(assert (=> b!3959055 (= res!1602273 (< (size!31575 (_2!23859 lt!1384582)) (size!31575 lt!1384555)))))

(assert (=> b!3959055 (=> (not res!1602273) (not e!2451345))))

(declare-fun d!1173306 () Bool)

(assert (=> d!1173306 e!2451343))

(declare-fun c!687021 () Bool)

(declare-fun size!31577 (List!42287) Int)

(assert (=> d!1173306 (= c!687021 (> (size!31577 (_1!23859 lt!1384582)) 0))))

(declare-fun e!2451344 () tuple2!41450)

(assert (=> d!1173306 (= lt!1384582 e!2451344)))

(declare-fun c!687022 () Bool)

(declare-fun lt!1384583 () Option!9030)

(assert (=> d!1173306 (= c!687022 ((_ is Some!9029) lt!1384583))))

(assert (=> d!1173306 (= lt!1384583 (maxPrefix!3503 thiss!20629 rules!2768 lt!1384555))))

(assert (=> d!1173306 (= (lexList!1967 thiss!20629 rules!2768 lt!1384555) lt!1384582)))

(declare-fun b!3959056 () Bool)

(declare-fun lt!1384581 () tuple2!41450)

(assert (=> b!3959056 (= e!2451344 (tuple2!41451 (Cons!42163 (_1!23860 (v!39375 lt!1384583)) (_1!23859 lt!1384581)) (_2!23859 lt!1384581)))))

(assert (=> b!3959056 (= lt!1384581 (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384583))))))

(declare-fun b!3959057 () Bool)

(assert (=> b!3959057 (= e!2451344 (tuple2!41451 Nil!42163 lt!1384555))))

(declare-fun b!3959058 () Bool)

(assert (=> b!3959058 (= e!2451345 (not (isEmpty!25208 (_1!23859 lt!1384582))))))

(assert (= (and d!1173306 c!687022) b!3959056))

(assert (= (and d!1173306 (not c!687022)) b!3959057))

(assert (= (and d!1173306 c!687021) b!3959055))

(assert (= (and d!1173306 (not c!687021)) b!3959054))

(assert (= (and b!3959055 res!1602273) b!3959058))

(declare-fun m!4527935 () Bool)

(assert (=> b!3959055 m!4527935))

(assert (=> b!3959055 m!4527891))

(declare-fun m!4527937 () Bool)

(assert (=> d!1173306 m!4527937))

(assert (=> d!1173306 m!4527911))

(declare-fun m!4527939 () Bool)

(assert (=> b!3959056 m!4527939))

(declare-fun m!4527941 () Bool)

(assert (=> b!3959058 m!4527941))

(assert (=> b!3958995 d!1173306))

(declare-fun b!3959077 () Bool)

(declare-fun e!2451357 () List!42287)

(assert (=> b!3959077 (= e!2451357 suffixTokens!72)))

(declare-fun b!3959079 () Bool)

(declare-fun res!1602283 () Bool)

(declare-fun e!2451356 () Bool)

(assert (=> b!3959079 (=> (not res!1602283) (not e!2451356))))

(declare-fun lt!1384586 () List!42287)

(assert (=> b!3959079 (= res!1602283 (= (size!31577 lt!1384586) (+ (size!31577 prefixTokens!80) (size!31577 suffixTokens!72))))))

(declare-fun b!3959080 () Bool)

(assert (=> b!3959080 (= e!2451356 (or (not (= suffixTokens!72 Nil!42163)) (= lt!1384586 prefixTokens!80)))))

(declare-fun d!1173308 () Bool)

(assert (=> d!1173308 e!2451356))

(declare-fun res!1602284 () Bool)

(assert (=> d!1173308 (=> (not res!1602284) (not e!2451356))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6401 (List!42287) (InoxSet Token!12358))

(assert (=> d!1173308 (= res!1602284 (= (content!6401 lt!1384586) ((_ map or) (content!6401 prefixTokens!80) (content!6401 suffixTokens!72))))))

(assert (=> d!1173308 (= lt!1384586 e!2451357)))

(declare-fun c!687029 () Bool)

(assert (=> d!1173308 (= c!687029 ((_ is Nil!42163) prefixTokens!80))))

(assert (=> d!1173308 (= (++!10977 prefixTokens!80 suffixTokens!72) lt!1384586)))

(declare-fun b!3959078 () Bool)

(assert (=> b!3959078 (= e!2451357 (Cons!42163 (h!47583 prefixTokens!80) (++!10977 (t!329638 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1173308 c!687029) b!3959077))

(assert (= (and d!1173308 (not c!687029)) b!3959078))

(assert (= (and d!1173308 res!1602284) b!3959079))

(assert (= (and b!3959079 res!1602283) b!3959080))

(declare-fun m!4527943 () Bool)

(assert (=> b!3959079 m!4527943))

(declare-fun m!4527945 () Bool)

(assert (=> b!3959079 m!4527945))

(declare-fun m!4527949 () Bool)

(assert (=> b!3959079 m!4527949))

(declare-fun m!4527955 () Bool)

(assert (=> d!1173308 m!4527955))

(declare-fun m!4527957 () Bool)

(assert (=> d!1173308 m!4527957))

(declare-fun m!4527959 () Bool)

(assert (=> d!1173308 m!4527959))

(declare-fun m!4527961 () Bool)

(assert (=> b!3959078 m!4527961))

(assert (=> b!3958995 d!1173308))

(declare-fun e!2451368 () Bool)

(declare-fun lt!1384592 () List!42286)

(declare-fun b!3959103 () Bool)

(assert (=> b!3959103 (= e!2451368 (or (not (= suffix!1176 Nil!42162)) (= lt!1384592 prefix!426)))))

(declare-fun d!1173316 () Bool)

(assert (=> d!1173316 e!2451368))

(declare-fun res!1602290 () Bool)

(assert (=> d!1173316 (=> (not res!1602290) (not e!2451368))))

(declare-fun content!6402 (List!42286) (InoxSet C!23216))

(assert (=> d!1173316 (= res!1602290 (= (content!6402 lt!1384592) ((_ map or) (content!6402 prefix!426) (content!6402 suffix!1176))))))

(declare-fun e!2451369 () List!42286)

(assert (=> d!1173316 (= lt!1384592 e!2451369)))

(declare-fun c!687037 () Bool)

(assert (=> d!1173316 (= c!687037 ((_ is Nil!42162) prefix!426))))

(assert (=> d!1173316 (= (++!10978 prefix!426 suffix!1176) lt!1384592)))

(declare-fun b!3959102 () Bool)

(declare-fun res!1602291 () Bool)

(assert (=> b!3959102 (=> (not res!1602291) (not e!2451368))))

(assert (=> b!3959102 (= res!1602291 (= (size!31575 lt!1384592) (+ (size!31575 prefix!426) (size!31575 suffix!1176))))))

(declare-fun b!3959101 () Bool)

(assert (=> b!3959101 (= e!2451369 (Cons!42162 (h!47582 prefix!426) (++!10978 (t!329637 prefix!426) suffix!1176)))))

(declare-fun b!3959100 () Bool)

(assert (=> b!3959100 (= e!2451369 suffix!1176)))

(assert (= (and d!1173316 c!687037) b!3959100))

(assert (= (and d!1173316 (not c!687037)) b!3959101))

(assert (= (and d!1173316 res!1602290) b!3959102))

(assert (= (and b!3959102 res!1602291) b!3959103))

(declare-fun m!4527969 () Bool)

(assert (=> d!1173316 m!4527969))

(declare-fun m!4527971 () Bool)

(assert (=> d!1173316 m!4527971))

(declare-fun m!4527973 () Bool)

(assert (=> d!1173316 m!4527973))

(declare-fun m!4527975 () Bool)

(assert (=> b!3959102 m!4527975))

(assert (=> b!3959102 m!4527915))

(assert (=> b!3959102 m!4527841))

(declare-fun m!4527977 () Bool)

(assert (=> b!3959101 m!4527977))

(assert (=> b!3958995 d!1173316))

(declare-fun d!1173326 () Bool)

(declare-fun lt!1384593 () Int)

(assert (=> d!1173326 (>= lt!1384593 0)))

(declare-fun e!2451370 () Int)

(assert (=> d!1173326 (= lt!1384593 e!2451370)))

(declare-fun c!687038 () Bool)

(assert (=> d!1173326 (= c!687038 ((_ is Nil!42162) (_2!23860 lt!1384564)))))

(assert (=> d!1173326 (= (size!31575 (_2!23860 lt!1384564)) lt!1384593)))

(declare-fun b!3959104 () Bool)

(assert (=> b!3959104 (= e!2451370 0)))

(declare-fun b!3959105 () Bool)

(assert (=> b!3959105 (= e!2451370 (+ 1 (size!31575 (t!329637 (_2!23860 lt!1384564)))))))

(assert (= (and d!1173326 c!687038) b!3959104))

(assert (= (and d!1173326 (not c!687038)) b!3959105))

(declare-fun m!4527979 () Bool)

(assert (=> b!3959105 m!4527979))

(assert (=> b!3959016 d!1173326))

(declare-fun d!1173328 () Bool)

(declare-fun lt!1384594 () Int)

(assert (=> d!1173328 (>= lt!1384594 0)))

(declare-fun e!2451371 () Int)

(assert (=> d!1173328 (= lt!1384594 e!2451371)))

(declare-fun c!687039 () Bool)

(assert (=> d!1173328 (= c!687039 ((_ is Nil!42162) lt!1384555))))

(assert (=> d!1173328 (= (size!31575 lt!1384555) lt!1384594)))

(declare-fun b!3959106 () Bool)

(assert (=> b!3959106 (= e!2451371 0)))

(declare-fun b!3959107 () Bool)

(assert (=> b!3959107 (= e!2451371 (+ 1 (size!31575 (t!329637 lt!1384555))))))

(assert (= (and d!1173328 c!687039) b!3959106))

(assert (= (and d!1173328 (not c!687039)) b!3959107))

(declare-fun m!4527981 () Bool)

(assert (=> b!3959107 m!4527981))

(assert (=> b!3958994 d!1173328))

(declare-fun b!3959198 () Bool)

(declare-fun res!1602338 () Bool)

(declare-fun e!2451424 () Bool)

(assert (=> b!3959198 (=> (not res!1602338) (not e!2451424))))

(declare-fun lt!1384647 () Option!9030)

(assert (=> b!3959198 (= res!1602338 (matchR!5536 (regex!6610 (rule!9586 (_1!23860 (get!13905 lt!1384647)))) (list!15652 (charsOf!4428 (_1!23860 (get!13905 lt!1384647))))))))

(declare-fun b!3959199 () Bool)

(declare-fun e!2451423 () Bool)

(assert (=> b!3959199 (= e!2451423 e!2451424)))

(declare-fun res!1602344 () Bool)

(assert (=> b!3959199 (=> (not res!1602344) (not e!2451424))))

(declare-fun isDefined!6996 (Option!9030) Bool)

(assert (=> b!3959199 (= res!1602344 (isDefined!6996 lt!1384647))))

(declare-fun b!3959200 () Bool)

(declare-fun res!1602339 () Bool)

(assert (=> b!3959200 (=> (not res!1602339) (not e!2451424))))

(assert (=> b!3959200 (= res!1602339 (= (value!209019 (_1!23860 (get!13905 lt!1384647))) (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (get!13905 lt!1384647)))) (seqFromList!4869 (originalCharacters!7210 (_1!23860 (get!13905 lt!1384647)))))))))

(declare-fun call!285373 () Option!9030)

(declare-fun bm!285368 () Bool)

(assert (=> bm!285368 (= call!285373 (maxPrefixOneRule!2553 thiss!20629 (h!47584 rules!2768) lt!1384555))))

(declare-fun b!3959201 () Bool)

(declare-fun res!1602341 () Bool)

(assert (=> b!3959201 (=> (not res!1602341) (not e!2451424))))

(assert (=> b!3959201 (= res!1602341 (< (size!31575 (_2!23860 (get!13905 lt!1384647))) (size!31575 lt!1384555)))))

(declare-fun b!3959202 () Bool)

(declare-fun e!2451425 () Option!9030)

(assert (=> b!3959202 (= e!2451425 call!285373)))

(declare-fun b!3959203 () Bool)

(declare-fun lt!1384650 () Option!9030)

(declare-fun lt!1384648 () Option!9030)

(assert (=> b!3959203 (= e!2451425 (ite (and ((_ is None!9029) lt!1384650) ((_ is None!9029) lt!1384648)) None!9029 (ite ((_ is None!9029) lt!1384648) lt!1384650 (ite ((_ is None!9029) lt!1384650) lt!1384648 (ite (>= (size!31574 (_1!23860 (v!39375 lt!1384650))) (size!31574 (_1!23860 (v!39375 lt!1384648)))) lt!1384650 lt!1384648)))))))

(assert (=> b!3959203 (= lt!1384650 call!285373)))

(assert (=> b!3959203 (= lt!1384648 (maxPrefix!3503 thiss!20629 (t!329639 rules!2768) lt!1384555))))

(declare-fun b!3959204 () Bool)

(declare-fun res!1602340 () Bool)

(assert (=> b!3959204 (=> (not res!1602340) (not e!2451424))))

(assert (=> b!3959204 (= res!1602340 (= (++!10978 (list!15652 (charsOf!4428 (_1!23860 (get!13905 lt!1384647)))) (_2!23860 (get!13905 lt!1384647))) lt!1384555))))

(declare-fun b!3959205 () Bool)

(declare-fun contains!8426 (List!42288 Rule!13020) Bool)

(assert (=> b!3959205 (= e!2451424 (contains!8426 rules!2768 (rule!9586 (_1!23860 (get!13905 lt!1384647)))))))

(declare-fun d!1173330 () Bool)

(assert (=> d!1173330 e!2451423))

(declare-fun res!1602343 () Bool)

(assert (=> d!1173330 (=> res!1602343 e!2451423)))

(declare-fun isEmpty!25211 (Option!9030) Bool)

(assert (=> d!1173330 (= res!1602343 (isEmpty!25211 lt!1384647))))

(assert (=> d!1173330 (= lt!1384647 e!2451425)))

(declare-fun c!687058 () Bool)

(assert (=> d!1173330 (= c!687058 (and ((_ is Cons!42164) rules!2768) ((_ is Nil!42164) (t!329639 rules!2768))))))

(declare-fun lt!1384646 () Unit!60644)

(declare-fun lt!1384649 () Unit!60644)

(assert (=> d!1173330 (= lt!1384646 lt!1384649)))

(assert (=> d!1173330 (isPrefix!3699 lt!1384555 lt!1384555)))

(declare-fun lemmaIsPrefixRefl!2337 (List!42286 List!42286) Unit!60644)

(assert (=> d!1173330 (= lt!1384649 (lemmaIsPrefixRefl!2337 lt!1384555 lt!1384555))))

(declare-fun rulesValidInductive!2395 (LexerInterface!6199 List!42288) Bool)

(assert (=> d!1173330 (rulesValidInductive!2395 thiss!20629 rules!2768)))

(assert (=> d!1173330 (= (maxPrefix!3503 thiss!20629 rules!2768 lt!1384555) lt!1384647)))

(declare-fun b!3959197 () Bool)

(declare-fun res!1602342 () Bool)

(assert (=> b!3959197 (=> (not res!1602342) (not e!2451424))))

(assert (=> b!3959197 (= res!1602342 (= (list!15652 (charsOf!4428 (_1!23860 (get!13905 lt!1384647)))) (originalCharacters!7210 (_1!23860 (get!13905 lt!1384647)))))))

(assert (= (and d!1173330 c!687058) b!3959202))

(assert (= (and d!1173330 (not c!687058)) b!3959203))

(assert (= (or b!3959202 b!3959203) bm!285368))

(assert (= (and d!1173330 (not res!1602343)) b!3959199))

(assert (= (and b!3959199 res!1602344) b!3959197))

(assert (= (and b!3959197 res!1602342) b!3959201))

(assert (= (and b!3959201 res!1602341) b!3959204))

(assert (= (and b!3959204 res!1602340) b!3959200))

(assert (= (and b!3959200 res!1602339) b!3959198))

(assert (= (and b!3959198 res!1602338) b!3959205))

(declare-fun m!4528085 () Bool)

(assert (=> b!3959201 m!4528085))

(declare-fun m!4528087 () Bool)

(assert (=> b!3959201 m!4528087))

(assert (=> b!3959201 m!4527891))

(assert (=> b!3959200 m!4528085))

(declare-fun m!4528089 () Bool)

(assert (=> b!3959200 m!4528089))

(assert (=> b!3959200 m!4528089))

(declare-fun m!4528091 () Bool)

(assert (=> b!3959200 m!4528091))

(declare-fun m!4528093 () Bool)

(assert (=> bm!285368 m!4528093))

(declare-fun m!4528095 () Bool)

(assert (=> d!1173330 m!4528095))

(declare-fun m!4528097 () Bool)

(assert (=> d!1173330 m!4528097))

(declare-fun m!4528099 () Bool)

(assert (=> d!1173330 m!4528099))

(declare-fun m!4528101 () Bool)

(assert (=> d!1173330 m!4528101))

(assert (=> b!3959205 m!4528085))

(declare-fun m!4528103 () Bool)

(assert (=> b!3959205 m!4528103))

(assert (=> b!3959204 m!4528085))

(declare-fun m!4528105 () Bool)

(assert (=> b!3959204 m!4528105))

(assert (=> b!3959204 m!4528105))

(declare-fun m!4528107 () Bool)

(assert (=> b!3959204 m!4528107))

(assert (=> b!3959204 m!4528107))

(declare-fun m!4528109 () Bool)

(assert (=> b!3959204 m!4528109))

(assert (=> b!3959198 m!4528085))

(assert (=> b!3959198 m!4528105))

(assert (=> b!3959198 m!4528105))

(assert (=> b!3959198 m!4528107))

(assert (=> b!3959198 m!4528107))

(declare-fun m!4528111 () Bool)

(assert (=> b!3959198 m!4528111))

(assert (=> b!3959197 m!4528085))

(assert (=> b!3959197 m!4528105))

(assert (=> b!3959197 m!4528105))

(assert (=> b!3959197 m!4528107))

(declare-fun m!4528113 () Bool)

(assert (=> b!3959203 m!4528113))

(declare-fun m!4528115 () Bool)

(assert (=> b!3959199 m!4528115))

(assert (=> b!3959014 d!1173330))

(declare-fun d!1173372 () Bool)

(assert (=> d!1173372 (= (tail!6145 prefixTokens!80) (t!329638 prefixTokens!80))))

(assert (=> b!3958993 d!1173372))

(declare-fun d!1173376 () Bool)

(assert (=> d!1173376 (= (isEmpty!25208 lt!1384544) ((_ is Nil!42163) lt!1384544))))

(assert (=> b!3958993 d!1173376))

(declare-fun b!3959265 () Bool)

(declare-fun res!1602372 () Bool)

(declare-fun e!2451458 () Bool)

(assert (=> b!3959265 (=> res!1602372 e!2451458)))

(assert (=> b!3959265 (= res!1602372 (not ((_ is IntegerValue!20522) (value!209019 (h!47583 suffixTokens!72)))))))

(declare-fun e!2451457 () Bool)

(assert (=> b!3959265 (= e!2451457 e!2451458)))

(declare-fun b!3959266 () Bool)

(declare-fun e!2451459 () Bool)

(declare-fun inv!16 (TokenValue!6840) Bool)

(assert (=> b!3959266 (= e!2451459 (inv!16 (value!209019 (h!47583 suffixTokens!72))))))

(declare-fun b!3959267 () Bool)

(declare-fun inv!17 (TokenValue!6840) Bool)

(assert (=> b!3959267 (= e!2451457 (inv!17 (value!209019 (h!47583 suffixTokens!72))))))

(declare-fun b!3959268 () Bool)

(assert (=> b!3959268 (= e!2451459 e!2451457)))

(declare-fun c!687076 () Bool)

(assert (=> b!3959268 (= c!687076 ((_ is IntegerValue!20521) (value!209019 (h!47583 suffixTokens!72))))))

(declare-fun d!1173380 () Bool)

(declare-fun c!687075 () Bool)

(assert (=> d!1173380 (= c!687075 ((_ is IntegerValue!20520) (value!209019 (h!47583 suffixTokens!72))))))

(assert (=> d!1173380 (= (inv!21 (value!209019 (h!47583 suffixTokens!72))) e!2451459)))

(declare-fun b!3959269 () Bool)

(declare-fun inv!15 (TokenValue!6840) Bool)

(assert (=> b!3959269 (= e!2451458 (inv!15 (value!209019 (h!47583 suffixTokens!72))))))

(assert (= (and d!1173380 c!687075) b!3959266))

(assert (= (and d!1173380 (not c!687075)) b!3959268))

(assert (= (and b!3959268 c!687076) b!3959267))

(assert (= (and b!3959268 (not c!687076)) b!3959265))

(assert (= (and b!3959265 (not res!1602372)) b!3959269))

(declare-fun m!4528141 () Bool)

(assert (=> b!3959266 m!4528141))

(declare-fun m!4528143 () Bool)

(assert (=> b!3959267 m!4528143))

(declare-fun m!4528145 () Bool)

(assert (=> b!3959269 m!4528145))

(assert (=> b!3959012 d!1173380))

(declare-fun d!1173382 () Bool)

(assert (=> d!1173382 (= (inv!56388 (tag!7470 (h!47584 rules!2768))) (= (mod (str.len (value!209018 (tag!7470 (h!47584 rules!2768)))) 2) 0))))

(assert (=> b!3959011 d!1173382))

(declare-fun d!1173384 () Bool)

(declare-fun res!1602383 () Bool)

(declare-fun e!2451469 () Bool)

(assert (=> d!1173384 (=> (not res!1602383) (not e!2451469))))

(declare-fun semiInverseModEq!2849 (Int Int) Bool)

(assert (=> d!1173384 (= res!1602383 (semiInverseModEq!2849 (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toValue!9090 (transformation!6610 (h!47584 rules!2768)))))))

(assert (=> d!1173384 (= (inv!56391 (transformation!6610 (h!47584 rules!2768))) e!2451469)))

(declare-fun b!3959286 () Bool)

(declare-fun equivClasses!2748 (Int Int) Bool)

(assert (=> b!3959286 (= e!2451469 (equivClasses!2748 (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toValue!9090 (transformation!6610 (h!47584 rules!2768)))))))

(assert (= (and d!1173384 res!1602383) b!3959286))

(declare-fun m!4528155 () Bool)

(assert (=> d!1173384 m!4528155))

(declare-fun m!4528157 () Bool)

(assert (=> b!3959286 m!4528157))

(assert (=> b!3959011 d!1173384))

(declare-fun d!1173388 () Bool)

(declare-fun lt!1384661 () Int)

(assert (=> d!1173388 (>= lt!1384661 0)))

(declare-fun e!2451470 () Int)

(assert (=> d!1173388 (= lt!1384661 e!2451470)))

(declare-fun c!687080 () Bool)

(assert (=> d!1173388 (= c!687080 ((_ is Nil!42162) (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542)))))))

(assert (=> d!1173388 (= (size!31575 (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542)))) lt!1384661)))

(declare-fun b!3959287 () Bool)

(assert (=> b!3959287 (= e!2451470 0)))

(declare-fun b!3959288 () Bool)

(assert (=> b!3959288 (= e!2451470 (+ 1 (size!31575 (t!329637 (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542)))))))))

(assert (= (and d!1173388 c!687080) b!3959287))

(assert (= (and d!1173388 (not c!687080)) b!3959288))

(declare-fun m!4528159 () Bool)

(assert (=> b!3959288 m!4528159))

(assert (=> b!3959009 d!1173388))

(declare-fun d!1173390 () Bool)

(declare-fun lt!1384662 () Int)

(assert (=> d!1173390 (>= lt!1384662 0)))

(declare-fun e!2451471 () Int)

(assert (=> d!1173390 (= lt!1384662 e!2451471)))

(declare-fun c!687081 () Bool)

(assert (=> d!1173390 (= c!687081 ((_ is Nil!42162) (list!15652 (charsOf!4428 lt!1384553))))))

(assert (=> d!1173390 (= (size!31575 (list!15652 (charsOf!4428 lt!1384553))) lt!1384662)))

(declare-fun b!3959289 () Bool)

(assert (=> b!3959289 (= e!2451471 0)))

(declare-fun b!3959290 () Bool)

(assert (=> b!3959290 (= e!2451471 (+ 1 (size!31575 (t!329637 (list!15652 (charsOf!4428 lt!1384553))))))))

(assert (= (and d!1173390 c!687081) b!3959289))

(assert (= (and d!1173390 (not c!687081)) b!3959290))

(declare-fun m!4528161 () Bool)

(assert (=> b!3959290 m!4528161))

(assert (=> b!3959030 d!1173390))

(declare-fun d!1173392 () Bool)

(declare-fun list!15654 (Conc!12821) List!42286)

(assert (=> d!1173392 (= (list!15652 (charsOf!4428 lt!1384553)) (list!15654 (c!687011 (charsOf!4428 lt!1384553))))))

(declare-fun bs!587225 () Bool)

(assert (= bs!587225 d!1173392))

(declare-fun m!4528163 () Bool)

(assert (=> bs!587225 m!4528163))

(assert (=> b!3959030 d!1173392))

(declare-fun d!1173394 () Bool)

(declare-fun lt!1384665 () BalanceConc!25236)

(assert (=> d!1173394 (= (list!15652 lt!1384665) (originalCharacters!7210 lt!1384553))))

(declare-fun dynLambda!18024 (Int TokenValue!6840) BalanceConc!25236)

(assert (=> d!1173394 (= lt!1384665 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 lt!1384553))) (value!209019 lt!1384553)))))

(assert (=> d!1173394 (= (charsOf!4428 lt!1384553) lt!1384665)))

(declare-fun b_lambda!115811 () Bool)

(assert (=> (not b_lambda!115811) (not d!1173394)))

(declare-fun t!329653 () Bool)

(declare-fun tb!238629 () Bool)

(assert (=> (and b!3959006 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329653) tb!238629))

(declare-fun b!3959295 () Bool)

(declare-fun e!2451474 () Bool)

(declare-fun tp!1206626 () Bool)

(declare-fun inv!56395 (Conc!12821) Bool)

(assert (=> b!3959295 (= e!2451474 (and (inv!56395 (c!687011 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 lt!1384553))) (value!209019 lt!1384553)))) tp!1206626))))

(declare-fun result!288970 () Bool)

(declare-fun inv!56396 (BalanceConc!25236) Bool)

(assert (=> tb!238629 (= result!288970 (and (inv!56396 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 lt!1384553))) (value!209019 lt!1384553))) e!2451474))))

(assert (= tb!238629 b!3959295))

(declare-fun m!4528165 () Bool)

(assert (=> b!3959295 m!4528165))

(declare-fun m!4528167 () Bool)

(assert (=> tb!238629 m!4528167))

(assert (=> d!1173394 t!329653))

(declare-fun b_and!303895 () Bool)

(assert (= b_and!303873 (and (=> t!329653 result!288970) b_and!303895)))

(declare-fun t!329655 () Bool)

(declare-fun tb!238631 () Bool)

(assert (=> (and b!3959004 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329655) tb!238631))

(declare-fun result!288974 () Bool)

(assert (= result!288974 result!288970))

(assert (=> d!1173394 t!329655))

(declare-fun b_and!303897 () Bool)

(assert (= b_and!303877 (and (=> t!329655 result!288974) b_and!303897)))

(declare-fun tb!238633 () Bool)

(declare-fun t!329657 () Bool)

(assert (=> (and b!3958996 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329657) tb!238633))

(declare-fun result!288976 () Bool)

(assert (= result!288976 result!288970))

(assert (=> d!1173394 t!329657))

(declare-fun b_and!303899 () Bool)

(assert (= b_and!303881 (and (=> t!329657 result!288976) b_and!303899)))

(declare-fun m!4528169 () Bool)

(assert (=> d!1173394 m!4528169))

(declare-fun m!4528171 () Bool)

(assert (=> d!1173394 m!4528171))

(assert (=> b!3959030 d!1173394))

(declare-fun b!3959296 () Bool)

(declare-fun res!1602384 () Bool)

(declare-fun e!2451476 () Bool)

(assert (=> b!3959296 (=> res!1602384 e!2451476)))

(assert (=> b!3959296 (= res!1602384 (not ((_ is IntegerValue!20522) (value!209019 (h!47583 prefixTokens!80)))))))

(declare-fun e!2451475 () Bool)

(assert (=> b!3959296 (= e!2451475 e!2451476)))

(declare-fun b!3959297 () Bool)

(declare-fun e!2451477 () Bool)

(assert (=> b!3959297 (= e!2451477 (inv!16 (value!209019 (h!47583 prefixTokens!80))))))

(declare-fun b!3959298 () Bool)

(assert (=> b!3959298 (= e!2451475 (inv!17 (value!209019 (h!47583 prefixTokens!80))))))

(declare-fun b!3959299 () Bool)

(assert (=> b!3959299 (= e!2451477 e!2451475)))

(declare-fun c!687083 () Bool)

(assert (=> b!3959299 (= c!687083 ((_ is IntegerValue!20521) (value!209019 (h!47583 prefixTokens!80))))))

(declare-fun d!1173396 () Bool)

(declare-fun c!687082 () Bool)

(assert (=> d!1173396 (= c!687082 ((_ is IntegerValue!20520) (value!209019 (h!47583 prefixTokens!80))))))

(assert (=> d!1173396 (= (inv!21 (value!209019 (h!47583 prefixTokens!80))) e!2451477)))

(declare-fun b!3959300 () Bool)

(assert (=> b!3959300 (= e!2451476 (inv!15 (value!209019 (h!47583 prefixTokens!80))))))

(assert (= (and d!1173396 c!687082) b!3959297))

(assert (= (and d!1173396 (not c!687082)) b!3959299))

(assert (= (and b!3959299 c!687083) b!3959298))

(assert (= (and b!3959299 (not c!687083)) b!3959296))

(assert (= (and b!3959296 (not res!1602384)) b!3959300))

(declare-fun m!4528173 () Bool)

(assert (=> b!3959297 m!4528173))

(declare-fun m!4528175 () Bool)

(assert (=> b!3959298 m!4528175))

(declare-fun m!4528177 () Bool)

(assert (=> b!3959300 m!4528177))

(assert (=> b!3959029 d!1173396))

(declare-fun d!1173398 () Bool)

(declare-fun res!1602389 () Bool)

(declare-fun e!2451480 () Bool)

(assert (=> d!1173398 (=> (not res!1602389) (not e!2451480))))

(assert (=> d!1173398 (= res!1602389 (not (isEmpty!25209 (originalCharacters!7210 (h!47583 prefixTokens!80)))))))

(assert (=> d!1173398 (= (inv!56392 (h!47583 prefixTokens!80)) e!2451480)))

(declare-fun b!3959305 () Bool)

(declare-fun res!1602390 () Bool)

(assert (=> b!3959305 (=> (not res!1602390) (not e!2451480))))

(assert (=> b!3959305 (= res!1602390 (= (originalCharacters!7210 (h!47583 prefixTokens!80)) (list!15652 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (value!209019 (h!47583 prefixTokens!80))))))))

(declare-fun b!3959306 () Bool)

(assert (=> b!3959306 (= e!2451480 (= (size!31574 (h!47583 prefixTokens!80)) (size!31575 (originalCharacters!7210 (h!47583 prefixTokens!80)))))))

(assert (= (and d!1173398 res!1602389) b!3959305))

(assert (= (and b!3959305 res!1602390) b!3959306))

(declare-fun b_lambda!115813 () Bool)

(assert (=> (not b_lambda!115813) (not b!3959305)))

(declare-fun t!329659 () Bool)

(declare-fun tb!238635 () Bool)

(assert (=> (and b!3959006 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329659) tb!238635))

(declare-fun b!3959307 () Bool)

(declare-fun e!2451481 () Bool)

(declare-fun tp!1206627 () Bool)

(assert (=> b!3959307 (= e!2451481 (and (inv!56395 (c!687011 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (value!209019 (h!47583 prefixTokens!80))))) tp!1206627))))

(declare-fun result!288978 () Bool)

(assert (=> tb!238635 (= result!288978 (and (inv!56396 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (value!209019 (h!47583 prefixTokens!80)))) e!2451481))))

(assert (= tb!238635 b!3959307))

(declare-fun m!4528179 () Bool)

(assert (=> b!3959307 m!4528179))

(declare-fun m!4528181 () Bool)

(assert (=> tb!238635 m!4528181))

(assert (=> b!3959305 t!329659))

(declare-fun b_and!303901 () Bool)

(assert (= b_and!303895 (and (=> t!329659 result!288978) b_and!303901)))

(declare-fun t!329661 () Bool)

(declare-fun tb!238637 () Bool)

(assert (=> (and b!3959004 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329661) tb!238637))

(declare-fun result!288980 () Bool)

(assert (= result!288980 result!288978))

(assert (=> b!3959305 t!329661))

(declare-fun b_and!303903 () Bool)

(assert (= b_and!303897 (and (=> t!329661 result!288980) b_and!303903)))

(declare-fun t!329663 () Bool)

(declare-fun tb!238639 () Bool)

(assert (=> (and b!3958996 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329663) tb!238639))

(declare-fun result!288982 () Bool)

(assert (= result!288982 result!288978))

(assert (=> b!3959305 t!329663))

(declare-fun b_and!303905 () Bool)

(assert (= b_and!303899 (and (=> t!329663 result!288982) b_and!303905)))

(declare-fun m!4528183 () Bool)

(assert (=> d!1173398 m!4528183))

(declare-fun m!4528185 () Bool)

(assert (=> b!3959305 m!4528185))

(assert (=> b!3959305 m!4528185))

(declare-fun m!4528187 () Bool)

(assert (=> b!3959305 m!4528187))

(declare-fun m!4528189 () Bool)

(assert (=> b!3959306 m!4528189))

(assert (=> b!3959008 d!1173398))

(declare-fun d!1173400 () Bool)

(assert (=> d!1173400 (= (inv!56388 (tag!7470 (rule!9586 (h!47583 suffixTokens!72)))) (= (mod (str.len (value!209018 (tag!7470 (rule!9586 (h!47583 suffixTokens!72))))) 2) 0))))

(assert (=> b!3959007 d!1173400))

(declare-fun d!1173402 () Bool)

(declare-fun res!1602391 () Bool)

(declare-fun e!2451482 () Bool)

(assert (=> d!1173402 (=> (not res!1602391) (not e!2451482))))

(assert (=> d!1173402 (= res!1602391 (semiInverseModEq!2849 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toValue!9090 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))))))

(assert (=> d!1173402 (= (inv!56391 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) e!2451482)))

(declare-fun b!3959308 () Bool)

(assert (=> b!3959308 (= e!2451482 (equivClasses!2748 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toValue!9090 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))))))

(assert (= (and d!1173402 res!1602391) b!3959308))

(declare-fun m!4528191 () Bool)

(assert (=> d!1173402 m!4528191))

(declare-fun m!4528193 () Bool)

(assert (=> b!3959308 m!4528193))

(assert (=> b!3959007 d!1173402))

(declare-fun d!1173404 () Bool)

(assert (=> d!1173404 (= (head!8419 prefixTokens!80) (h!47583 prefixTokens!80))))

(assert (=> b!3959028 d!1173404))

(declare-fun d!1173406 () Bool)

(assert (=> d!1173406 (= (get!13905 lt!1384542) (v!39375 lt!1384542))))

(assert (=> b!3959028 d!1173406))

(declare-fun d!1173408 () Bool)

(assert (=> d!1173408 (= (isEmpty!25210 rules!2768) ((_ is Nil!42164) rules!2768))))

(assert (=> b!3959027 d!1173408))

(declare-fun d!1173410 () Bool)

(assert (=> d!1173410 (not (= (lexList!1967 thiss!20629 rules!2768 (_2!23860 lt!1384564)) (tuple2!41451 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1384678 () Unit!60644)

(declare-fun choose!23637 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42287 List!42286) Unit!60644)

(assert (=> d!1173410 (= lt!1384678 (choose!23637 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91))))

(assert (=> d!1173410 (not (isEmpty!25210 rules!2768))))

(assert (=> d!1173410 (= (lemmaLexWithSmallerInputCannotProduceSameResults!138 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91) lt!1384678)))

(declare-fun bs!587226 () Bool)

(assert (= bs!587226 d!1173410))

(assert (=> bs!587226 m!4527913))

(declare-fun m!4528195 () Bool)

(assert (=> bs!587226 m!4528195))

(assert (=> bs!587226 m!4527829))

(assert (=> b!3959025 d!1173410))

(declare-fun d!1173412 () Bool)

(assert (=> d!1173412 (and (= lt!1384556 lt!1384556) (= (_2!23860 (v!39375 lt!1384542)) (_2!23860 lt!1384564)))))

(declare-fun lt!1384681 () Unit!60644)

(declare-fun choose!23638 (List!42286 List!42286 List!42286 List!42286) Unit!60644)

(assert (=> d!1173412 (= lt!1384681 (choose!23638 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 (_2!23860 lt!1384564)))))

(assert (=> d!1173412 (= (++!10978 lt!1384556 (_2!23860 (v!39375 lt!1384542))) (++!10978 lt!1384556 (_2!23860 lt!1384564)))))

(assert (=> d!1173412 (= (lemmaConcatSameAndSameSizesThenSameLists!604 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 (_2!23860 lt!1384564)) lt!1384681)))

(declare-fun bs!587227 () Bool)

(assert (= bs!587227 d!1173412))

(declare-fun m!4528197 () Bool)

(assert (=> bs!587227 m!4528197))

(assert (=> bs!587227 m!4527849))

(declare-fun m!4528199 () Bool)

(assert (=> bs!587227 m!4528199))

(assert (=> b!3959025 d!1173412))

(declare-fun b!3959327 () Bool)

(declare-fun e!2451491 () Bool)

(declare-fun lt!1384683 () tuple2!41450)

(assert (=> b!3959327 (= e!2451491 (= (_2!23859 lt!1384683) (_2!23860 lt!1384564)))))

(declare-fun b!3959328 () Bool)

(declare-fun e!2451493 () Bool)

(assert (=> b!3959328 (= e!2451491 e!2451493)))

(declare-fun res!1602406 () Bool)

(assert (=> b!3959328 (= res!1602406 (< (size!31575 (_2!23859 lt!1384683)) (size!31575 (_2!23860 lt!1384564))))))

(assert (=> b!3959328 (=> (not res!1602406) (not e!2451493))))

(declare-fun d!1173414 () Bool)

(assert (=> d!1173414 e!2451491))

(declare-fun c!687086 () Bool)

(assert (=> d!1173414 (= c!687086 (> (size!31577 (_1!23859 lt!1384683)) 0))))

(declare-fun e!2451492 () tuple2!41450)

(assert (=> d!1173414 (= lt!1384683 e!2451492)))

(declare-fun c!687087 () Bool)

(declare-fun lt!1384684 () Option!9030)

(assert (=> d!1173414 (= c!687087 ((_ is Some!9029) lt!1384684))))

(assert (=> d!1173414 (= lt!1384684 (maxPrefix!3503 thiss!20629 rules!2768 (_2!23860 lt!1384564)))))

(assert (=> d!1173414 (= (lexList!1967 thiss!20629 rules!2768 (_2!23860 lt!1384564)) lt!1384683)))

(declare-fun b!3959329 () Bool)

(declare-fun lt!1384682 () tuple2!41450)

(assert (=> b!3959329 (= e!2451492 (tuple2!41451 (Cons!42163 (_1!23860 (v!39375 lt!1384684)) (_1!23859 lt!1384682)) (_2!23859 lt!1384682)))))

(assert (=> b!3959329 (= lt!1384682 (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384684))))))

(declare-fun b!3959330 () Bool)

(assert (=> b!3959330 (= e!2451492 (tuple2!41451 Nil!42163 (_2!23860 lt!1384564)))))

(declare-fun b!3959331 () Bool)

(assert (=> b!3959331 (= e!2451493 (not (isEmpty!25208 (_1!23859 lt!1384683))))))

(assert (= (and d!1173414 c!687087) b!3959329))

(assert (= (and d!1173414 (not c!687087)) b!3959330))

(assert (= (and d!1173414 c!687086) b!3959328))

(assert (= (and d!1173414 (not c!687086)) b!3959327))

(assert (= (and b!3959328 res!1602406) b!3959331))

(declare-fun m!4528201 () Bool)

(assert (=> b!3959328 m!4528201))

(assert (=> b!3959328 m!4527907))

(declare-fun m!4528203 () Bool)

(assert (=> d!1173414 m!4528203))

(declare-fun m!4528205 () Bool)

(assert (=> d!1173414 m!4528205))

(declare-fun m!4528207 () Bool)

(assert (=> b!3959329 m!4528207))

(declare-fun m!4528209 () Bool)

(assert (=> b!3959331 m!4528209))

(assert (=> bm!285365 d!1173414))

(declare-fun d!1173416 () Bool)

(declare-fun res!1602407 () Bool)

(declare-fun e!2451494 () Bool)

(assert (=> d!1173416 (=> (not res!1602407) (not e!2451494))))

(assert (=> d!1173416 (= res!1602407 (not (isEmpty!25209 (originalCharacters!7210 (h!47583 suffixTokens!72)))))))

(assert (=> d!1173416 (= (inv!56392 (h!47583 suffixTokens!72)) e!2451494)))

(declare-fun b!3959332 () Bool)

(declare-fun res!1602408 () Bool)

(assert (=> b!3959332 (=> (not res!1602408) (not e!2451494))))

(assert (=> b!3959332 (= res!1602408 (= (originalCharacters!7210 (h!47583 suffixTokens!72)) (list!15652 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (value!209019 (h!47583 suffixTokens!72))))))))

(declare-fun b!3959333 () Bool)

(assert (=> b!3959333 (= e!2451494 (= (size!31574 (h!47583 suffixTokens!72)) (size!31575 (originalCharacters!7210 (h!47583 suffixTokens!72)))))))

(assert (= (and d!1173416 res!1602407) b!3959332))

(assert (= (and b!3959332 res!1602408) b!3959333))

(declare-fun b_lambda!115815 () Bool)

(assert (=> (not b_lambda!115815) (not b!3959332)))

(declare-fun t!329665 () Bool)

(declare-fun tb!238641 () Bool)

(assert (=> (and b!3959006 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329665) tb!238641))

(declare-fun b!3959334 () Bool)

(declare-fun e!2451495 () Bool)

(declare-fun tp!1206628 () Bool)

(assert (=> b!3959334 (= e!2451495 (and (inv!56395 (c!687011 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (value!209019 (h!47583 suffixTokens!72))))) tp!1206628))))

(declare-fun result!288984 () Bool)

(assert (=> tb!238641 (= result!288984 (and (inv!56396 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (value!209019 (h!47583 suffixTokens!72)))) e!2451495))))

(assert (= tb!238641 b!3959334))

(declare-fun m!4528211 () Bool)

(assert (=> b!3959334 m!4528211))

(declare-fun m!4528213 () Bool)

(assert (=> tb!238641 m!4528213))

(assert (=> b!3959332 t!329665))

(declare-fun b_and!303907 () Bool)

(assert (= b_and!303901 (and (=> t!329665 result!288984) b_and!303907)))

(declare-fun t!329667 () Bool)

(declare-fun tb!238643 () Bool)

(assert (=> (and b!3959004 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329667) tb!238643))

(declare-fun result!288986 () Bool)

(assert (= result!288986 result!288984))

(assert (=> b!3959332 t!329667))

(declare-fun b_and!303909 () Bool)

(assert (= b_and!303903 (and (=> t!329667 result!288986) b_and!303909)))

(declare-fun t!329669 () Bool)

(declare-fun tb!238645 () Bool)

(assert (=> (and b!3958996 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329669) tb!238645))

(declare-fun result!288988 () Bool)

(assert (= result!288988 result!288984))

(assert (=> b!3959332 t!329669))

(declare-fun b_and!303911 () Bool)

(assert (= b_and!303905 (and (=> t!329669 result!288988) b_and!303911)))

(declare-fun m!4528215 () Bool)

(assert (=> d!1173416 m!4528215))

(declare-fun m!4528217 () Bool)

(assert (=> b!3959332 m!4528217))

(assert (=> b!3959332 m!4528217))

(declare-fun m!4528219 () Bool)

(assert (=> b!3959332 m!4528219))

(declare-fun m!4528221 () Bool)

(assert (=> b!3959333 m!4528221))

(assert (=> b!3959003 d!1173416))

(declare-fun b!3959344 () Bool)

(declare-fun e!2451501 () List!42287)

(assert (=> b!3959344 (= e!2451501 suffixTokens!72)))

(declare-fun b!3959346 () Bool)

(declare-fun res!1602416 () Bool)

(declare-fun e!2451500 () Bool)

(assert (=> b!3959346 (=> (not res!1602416) (not e!2451500))))

(declare-fun lt!1384690 () List!42287)

(assert (=> b!3959346 (= res!1602416 (= (size!31577 lt!1384690) (+ (size!31577 lt!1384544) (size!31577 suffixTokens!72))))))

(declare-fun b!3959347 () Bool)

(assert (=> b!3959347 (= e!2451500 (or (not (= suffixTokens!72 Nil!42163)) (= lt!1384690 lt!1384544)))))

(declare-fun d!1173418 () Bool)

(assert (=> d!1173418 e!2451500))

(declare-fun res!1602417 () Bool)

(assert (=> d!1173418 (=> (not res!1602417) (not e!2451500))))

(assert (=> d!1173418 (= res!1602417 (= (content!6401 lt!1384690) ((_ map or) (content!6401 lt!1384544) (content!6401 suffixTokens!72))))))

(assert (=> d!1173418 (= lt!1384690 e!2451501)))

(declare-fun c!687089 () Bool)

(assert (=> d!1173418 (= c!687089 ((_ is Nil!42163) lt!1384544))))

(assert (=> d!1173418 (= (++!10977 lt!1384544 suffixTokens!72) lt!1384690)))

(declare-fun b!3959345 () Bool)

(assert (=> b!3959345 (= e!2451501 (Cons!42163 (h!47583 lt!1384544) (++!10977 (t!329638 lt!1384544) suffixTokens!72)))))

(assert (= (and d!1173418 c!687089) b!3959344))

(assert (= (and d!1173418 (not c!687089)) b!3959345))

(assert (= (and d!1173418 res!1602417) b!3959346))

(assert (= (and b!3959346 res!1602416) b!3959347))

(declare-fun m!4528223 () Bool)

(assert (=> b!3959346 m!4528223))

(declare-fun m!4528225 () Bool)

(assert (=> b!3959346 m!4528225))

(assert (=> b!3959346 m!4527949))

(declare-fun m!4528227 () Bool)

(assert (=> d!1173418 m!4528227))

(declare-fun m!4528229 () Bool)

(assert (=> d!1173418 m!4528229))

(assert (=> d!1173418 m!4527959))

(declare-fun m!4528231 () Bool)

(assert (=> b!3959345 m!4528231))

(assert (=> b!3959024 d!1173418))

(declare-fun d!1173420 () Bool)

(assert (=> d!1173420 (not (= (lexList!1967 thiss!20629 rules!2768 (_2!23860 lt!1384564)) (tuple2!41451 (++!10977 lt!1384544 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1384695 () Unit!60644)

(declare-fun choose!23640 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42287 List!42286 List!42287) Unit!60644)

(assert (=> d!1173420 (= lt!1384695 (choose!23640 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91 lt!1384544))))

(assert (=> d!1173420 (not (isEmpty!25210 rules!2768))))

(assert (=> d!1173420 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!138 thiss!20629 rules!2768 suffix!1176 (_2!23860 lt!1384564) suffixTokens!72 suffixResult!91 lt!1384544) lt!1384695)))

(declare-fun bs!587228 () Bool)

(assert (= bs!587228 d!1173420))

(assert (=> bs!587228 m!4527913))

(assert (=> bs!587228 m!4527885))

(declare-fun m!4528275 () Bool)

(assert (=> bs!587228 m!4528275))

(assert (=> bs!587228 m!4527829))

(assert (=> b!3959024 d!1173420))

(declare-fun d!1173424 () Bool)

(assert (=> d!1173424 (= (inv!56388 (tag!7470 (rule!9586 (h!47583 prefixTokens!80)))) (= (mod (str.len (value!209018 (tag!7470 (rule!9586 (h!47583 prefixTokens!80))))) 2) 0))))

(assert (=> b!3959002 d!1173424))

(declare-fun d!1173426 () Bool)

(declare-fun res!1602418 () Bool)

(declare-fun e!2451502 () Bool)

(assert (=> d!1173426 (=> (not res!1602418) (not e!2451502))))

(assert (=> d!1173426 (= res!1602418 (semiInverseModEq!2849 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toValue!9090 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))))))

(assert (=> d!1173426 (= (inv!56391 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) e!2451502)))

(declare-fun b!3959348 () Bool)

(assert (=> b!3959348 (= e!2451502 (equivClasses!2748 (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toValue!9090 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))))))

(assert (= (and d!1173426 res!1602418) b!3959348))

(declare-fun m!4528279 () Bool)

(assert (=> d!1173426 m!4528279))

(declare-fun m!4528281 () Bool)

(assert (=> b!3959348 m!4528281))

(assert (=> b!3959002 d!1173426))

(declare-fun b!3959349 () Bool)

(declare-fun e!2451504 () List!42287)

(assert (=> b!3959349 (= e!2451504 (_1!23859 lt!1384568))))

(declare-fun b!3959351 () Bool)

(declare-fun res!1602419 () Bool)

(declare-fun e!2451503 () Bool)

(assert (=> b!3959351 (=> (not res!1602419) (not e!2451503))))

(declare-fun lt!1384697 () List!42287)

(assert (=> b!3959351 (= res!1602419 (= (size!31577 lt!1384697) (+ (size!31577 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163)) (size!31577 (_1!23859 lt!1384568)))))))

(declare-fun b!3959352 () Bool)

(assert (=> b!3959352 (= e!2451503 (or (not (= (_1!23859 lt!1384568) Nil!42163)) (= lt!1384697 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163))))))

(declare-fun d!1173430 () Bool)

(assert (=> d!1173430 e!2451503))

(declare-fun res!1602420 () Bool)

(assert (=> d!1173430 (=> (not res!1602420) (not e!2451503))))

(assert (=> d!1173430 (= res!1602420 (= (content!6401 lt!1384697) ((_ map or) (content!6401 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163)) (content!6401 (_1!23859 lt!1384568)))))))

(assert (=> d!1173430 (= lt!1384697 e!2451504)))

(declare-fun c!687090 () Bool)

(assert (=> d!1173430 (= c!687090 ((_ is Nil!42163) (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163)))))

(assert (=> d!1173430 (= (++!10977 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163) (_1!23859 lt!1384568)) lt!1384697)))

(declare-fun b!3959350 () Bool)

(assert (=> b!3959350 (= e!2451504 (Cons!42163 (h!47583 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163)) (++!10977 (t!329638 (Cons!42163 (_1!23860 (v!39375 lt!1384542)) Nil!42163)) (_1!23859 lt!1384568))))))

(assert (= (and d!1173430 c!687090) b!3959349))

(assert (= (and d!1173430 (not c!687090)) b!3959350))

(assert (= (and d!1173430 res!1602420) b!3959351))

(assert (= (and b!3959351 res!1602419) b!3959352))

(declare-fun m!4528283 () Bool)

(assert (=> b!3959351 m!4528283))

(declare-fun m!4528285 () Bool)

(assert (=> b!3959351 m!4528285))

(declare-fun m!4528287 () Bool)

(assert (=> b!3959351 m!4528287))

(declare-fun m!4528289 () Bool)

(assert (=> d!1173430 m!4528289))

(declare-fun m!4528291 () Bool)

(assert (=> d!1173430 m!4528291))

(declare-fun m!4528293 () Bool)

(assert (=> d!1173430 m!4528293))

(declare-fun m!4528295 () Bool)

(assert (=> b!3959350 m!4528295))

(assert (=> b!3959022 d!1173430))

(declare-fun d!1173432 () Bool)

(assert (=> d!1173432 (= (isEmpty!25208 prefixTokens!80) ((_ is Nil!42163) prefixTokens!80))))

(assert (=> b!3959023 d!1173432))

(declare-fun b!3959353 () Bool)

(declare-fun e!2451505 () Bool)

(declare-fun lt!1384699 () tuple2!41450)

(assert (=> b!3959353 (= e!2451505 (= (_2!23859 lt!1384699) suffix!1176))))

(declare-fun b!3959354 () Bool)

(declare-fun e!2451507 () Bool)

(assert (=> b!3959354 (= e!2451505 e!2451507)))

(declare-fun res!1602421 () Bool)

(assert (=> b!3959354 (= res!1602421 (< (size!31575 (_2!23859 lt!1384699)) (size!31575 suffix!1176)))))

(assert (=> b!3959354 (=> (not res!1602421) (not e!2451507))))

(declare-fun d!1173434 () Bool)

(assert (=> d!1173434 e!2451505))

(declare-fun c!687091 () Bool)

(assert (=> d!1173434 (= c!687091 (> (size!31577 (_1!23859 lt!1384699)) 0))))

(declare-fun e!2451506 () tuple2!41450)

(assert (=> d!1173434 (= lt!1384699 e!2451506)))

(declare-fun c!687092 () Bool)

(declare-fun lt!1384700 () Option!9030)

(assert (=> d!1173434 (= c!687092 ((_ is Some!9029) lt!1384700))))

(assert (=> d!1173434 (= lt!1384700 (maxPrefix!3503 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1173434 (= (lexList!1967 thiss!20629 rules!2768 suffix!1176) lt!1384699)))

(declare-fun b!3959355 () Bool)

(declare-fun lt!1384698 () tuple2!41450)

(assert (=> b!3959355 (= e!2451506 (tuple2!41451 (Cons!42163 (_1!23860 (v!39375 lt!1384700)) (_1!23859 lt!1384698)) (_2!23859 lt!1384698)))))

(assert (=> b!3959355 (= lt!1384698 (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384700))))))

(declare-fun b!3959356 () Bool)

(assert (=> b!3959356 (= e!2451506 (tuple2!41451 Nil!42163 suffix!1176))))

(declare-fun b!3959357 () Bool)

(assert (=> b!3959357 (= e!2451507 (not (isEmpty!25208 (_1!23859 lt!1384699))))))

(assert (= (and d!1173434 c!687092) b!3959355))

(assert (= (and d!1173434 (not c!687092)) b!3959356))

(assert (= (and d!1173434 c!687091) b!3959354))

(assert (= (and d!1173434 (not c!687091)) b!3959353))

(assert (= (and b!3959354 res!1602421) b!3959357))

(declare-fun m!4528297 () Bool)

(assert (=> b!3959354 m!4528297))

(assert (=> b!3959354 m!4527841))

(declare-fun m!4528299 () Bool)

(assert (=> d!1173434 m!4528299))

(declare-fun m!4528301 () Bool)

(assert (=> d!1173434 m!4528301))

(declare-fun m!4528303 () Bool)

(assert (=> b!3959355 m!4528303))

(declare-fun m!4528305 () Bool)

(assert (=> b!3959357 m!4528305))

(assert (=> b!3958999 d!1173434))

(declare-fun d!1173436 () Bool)

(declare-fun lt!1384703 () List!42286)

(assert (=> d!1173436 (= (++!10978 lt!1384556 lt!1384703) lt!1384555)))

(declare-fun e!2451515 () List!42286)

(assert (=> d!1173436 (= lt!1384703 e!2451515)))

(declare-fun c!687095 () Bool)

(assert (=> d!1173436 (= c!687095 ((_ is Cons!42162) lt!1384556))))

(assert (=> d!1173436 (>= (size!31575 lt!1384555) (size!31575 lt!1384556))))

(assert (=> d!1173436 (= (getSuffix!2150 lt!1384555 lt!1384556) lt!1384703)))

(declare-fun b!3959369 () Bool)

(declare-fun tail!6147 (List!42286) List!42286)

(assert (=> b!3959369 (= e!2451515 (getSuffix!2150 (tail!6147 lt!1384555) (t!329637 lt!1384556)))))

(declare-fun b!3959370 () Bool)

(assert (=> b!3959370 (= e!2451515 lt!1384555)))

(assert (= (and d!1173436 c!687095) b!3959369))

(assert (= (and d!1173436 (not c!687095)) b!3959370))

(declare-fun m!4528311 () Bool)

(assert (=> d!1173436 m!4528311))

(assert (=> d!1173436 m!4527891))

(assert (=> d!1173436 m!4527851))

(declare-fun m!4528313 () Bool)

(assert (=> b!3959369 m!4528313))

(assert (=> b!3959369 m!4528313))

(declare-fun m!4528315 () Bool)

(assert (=> b!3959369 m!4528315))

(assert (=> b!3959000 d!1173436))

(declare-fun b!3959376 () Bool)

(declare-fun e!2451517 () Bool)

(declare-fun lt!1384704 () List!42286)

(assert (=> b!3959376 (= e!2451517 (or (not (= (_2!23860 (v!39375 lt!1384542)) Nil!42162)) (= lt!1384704 lt!1384556)))))

(declare-fun d!1173440 () Bool)

(assert (=> d!1173440 e!2451517))

(declare-fun res!1602431 () Bool)

(assert (=> d!1173440 (=> (not res!1602431) (not e!2451517))))

(assert (=> d!1173440 (= res!1602431 (= (content!6402 lt!1384704) ((_ map or) (content!6402 lt!1384556) (content!6402 (_2!23860 (v!39375 lt!1384542))))))))

(declare-fun e!2451518 () List!42286)

(assert (=> d!1173440 (= lt!1384704 e!2451518)))

(declare-fun c!687096 () Bool)

(assert (=> d!1173440 (= c!687096 ((_ is Nil!42162) lt!1384556))))

(assert (=> d!1173440 (= (++!10978 lt!1384556 (_2!23860 (v!39375 lt!1384542))) lt!1384704)))

(declare-fun b!3959375 () Bool)

(declare-fun res!1602432 () Bool)

(assert (=> b!3959375 (=> (not res!1602432) (not e!2451517))))

(assert (=> b!3959375 (= res!1602432 (= (size!31575 lt!1384704) (+ (size!31575 lt!1384556) (size!31575 (_2!23860 (v!39375 lt!1384542))))))))

(declare-fun b!3959374 () Bool)

(assert (=> b!3959374 (= e!2451518 (Cons!42162 (h!47582 lt!1384556) (++!10978 (t!329637 lt!1384556) (_2!23860 (v!39375 lt!1384542)))))))

(declare-fun b!3959373 () Bool)

(assert (=> b!3959373 (= e!2451518 (_2!23860 (v!39375 lt!1384542)))))

(assert (= (and d!1173440 c!687096) b!3959373))

(assert (= (and d!1173440 (not c!687096)) b!3959374))

(assert (= (and d!1173440 res!1602431) b!3959375))

(assert (= (and b!3959375 res!1602432) b!3959376))

(declare-fun m!4528317 () Bool)

(assert (=> d!1173440 m!4528317))

(declare-fun m!4528321 () Bool)

(assert (=> d!1173440 m!4528321))

(declare-fun m!4528325 () Bool)

(assert (=> d!1173440 m!4528325))

(declare-fun m!4528327 () Bool)

(assert (=> b!3959375 m!4528327))

(assert (=> b!3959375 m!4527851))

(assert (=> b!3959375 m!4527843))

(declare-fun m!4528329 () Bool)

(assert (=> b!3959374 m!4528329))

(assert (=> b!3959000 d!1173440))

(declare-fun d!1173442 () Bool)

(declare-fun lt!1384705 () BalanceConc!25236)

(assert (=> d!1173442 (= (list!15652 lt!1384705) (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173442 (= lt!1384705 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))) (value!209019 (_1!23860 (v!39375 lt!1384542)))))))

(assert (=> d!1173442 (= (charsOf!4428 (_1!23860 (v!39375 lt!1384542))) lt!1384705)))

(declare-fun b_lambda!115819 () Bool)

(assert (=> (not b_lambda!115819) (not d!1173442)))

(declare-fun t!329677 () Bool)

(declare-fun tb!238653 () Bool)

(assert (=> (and b!3959006 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329677) tb!238653))

(declare-fun b!3959380 () Bool)

(declare-fun e!2451523 () Bool)

(declare-fun tp!1206630 () Bool)

(assert (=> b!3959380 (= e!2451523 (and (inv!56395 (c!687011 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))) (value!209019 (_1!23860 (v!39375 lt!1384542)))))) tp!1206630))))

(declare-fun result!288996 () Bool)

(assert (=> tb!238653 (= result!288996 (and (inv!56396 (dynLambda!18024 (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))) (value!209019 (_1!23860 (v!39375 lt!1384542))))) e!2451523))))

(assert (= tb!238653 b!3959380))

(declare-fun m!4528339 () Bool)

(assert (=> b!3959380 m!4528339))

(declare-fun m!4528341 () Bool)

(assert (=> tb!238653 m!4528341))

(assert (=> d!1173442 t!329677))

(declare-fun b_and!303919 () Bool)

(assert (= b_and!303907 (and (=> t!329677 result!288996) b_and!303919)))

(declare-fun t!329679 () Bool)

(declare-fun tb!238655 () Bool)

(assert (=> (and b!3959004 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329679) tb!238655))

(declare-fun result!288998 () Bool)

(assert (= result!288998 result!288996))

(assert (=> d!1173442 t!329679))

(declare-fun b_and!303921 () Bool)

(assert (= b_and!303909 (and (=> t!329679 result!288998) b_and!303921)))

(declare-fun t!329681 () Bool)

(declare-fun tb!238657 () Bool)

(assert (=> (and b!3958996 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329681) tb!238657))

(declare-fun result!289000 () Bool)

(assert (= result!289000 result!288996))

(assert (=> d!1173442 t!329681))

(declare-fun b_and!303923 () Bool)

(assert (= b_and!303911 (and (=> t!329681 result!289000) b_and!303923)))

(declare-fun m!4528343 () Bool)

(assert (=> d!1173442 m!4528343))

(declare-fun m!4528345 () Bool)

(assert (=> d!1173442 m!4528345))

(assert (=> b!3959000 d!1173442))

(declare-fun d!1173446 () Bool)

(assert (=> d!1173446 (isPrefix!3699 lt!1384556 (++!10978 lt!1384556 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun lt!1384711 () Unit!60644)

(declare-fun choose!23641 (List!42286 List!42286) Unit!60644)

(assert (=> d!1173446 (= lt!1384711 (choose!23641 lt!1384556 (_2!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173446 (= (lemmaConcatTwoListThenFirstIsPrefix!2558 lt!1384556 (_2!23860 (v!39375 lt!1384542))) lt!1384711)))

(declare-fun bs!587230 () Bool)

(assert (= bs!587230 d!1173446))

(assert (=> bs!587230 m!4527849))

(assert (=> bs!587230 m!4527849))

(declare-fun m!4528357 () Bool)

(assert (=> bs!587230 m!4528357))

(declare-fun m!4528359 () Bool)

(assert (=> bs!587230 m!4528359))

(assert (=> b!3959000 d!1173446))

(declare-fun d!1173454 () Bool)

(assert (=> d!1173454 (= (_2!23860 (v!39375 lt!1384542)) lt!1384550)))

(declare-fun lt!1384714 () Unit!60644)

(declare-fun choose!23642 (List!42286 List!42286 List!42286 List!42286 List!42286) Unit!60644)

(assert (=> d!1173454 (= lt!1384714 (choose!23642 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 lt!1384550 lt!1384555))))

(assert (=> d!1173454 (isPrefix!3699 lt!1384556 lt!1384555)))

(assert (=> d!1173454 (= (lemmaSamePrefixThenSameSuffix!1908 lt!1384556 (_2!23860 (v!39375 lt!1384542)) lt!1384556 lt!1384550 lt!1384555) lt!1384714)))

(declare-fun bs!587231 () Bool)

(assert (= bs!587231 d!1173454))

(declare-fun m!4528361 () Bool)

(assert (=> bs!587231 m!4528361))

(declare-fun m!4528363 () Bool)

(assert (=> bs!587231 m!4528363))

(assert (=> b!3959000 d!1173454))

(declare-fun d!1173456 () Bool)

(declare-fun fromListB!2250 (List!42286) BalanceConc!25236)

(assert (=> d!1173456 (= (seqFromList!4869 lt!1384556) (fromListB!2250 lt!1384556))))

(declare-fun bs!587232 () Bool)

(assert (= bs!587232 d!1173456))

(declare-fun m!4528365 () Bool)

(assert (=> bs!587232 m!4528365))

(assert (=> b!3959000 d!1173456))

(declare-fun d!1173458 () Bool)

(declare-fun res!1602438 () Bool)

(declare-fun e!2451526 () Bool)

(assert (=> d!1173458 (=> (not res!1602438) (not e!2451526))))

(declare-fun validRegex!5244 (Regex!11515) Bool)

(assert (=> d!1173458 (= res!1602438 (validRegex!5244 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))))

(assert (=> d!1173458 (= (ruleValid!2552 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) e!2451526)))

(declare-fun b!3959388 () Bool)

(declare-fun res!1602439 () Bool)

(assert (=> b!3959388 (=> (not res!1602439) (not e!2451526))))

(declare-fun nullable!4045 (Regex!11515) Bool)

(assert (=> b!3959388 (= res!1602439 (not (nullable!4045 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))))

(declare-fun b!3959389 () Bool)

(assert (=> b!3959389 (= e!2451526 (not (= (tag!7470 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (String!47919 ""))))))

(assert (= (and d!1173458 res!1602438) b!3959388))

(assert (= (and b!3959388 res!1602439) b!3959389))

(declare-fun m!4528367 () Bool)

(assert (=> d!1173458 m!4528367))

(declare-fun m!4528369 () Bool)

(assert (=> b!3959388 m!4528369))

(assert (=> b!3959000 d!1173458))

(declare-fun d!1173460 () Bool)

(declare-fun dynLambda!18025 (Int BalanceConc!25236) TokenValue!6840)

(assert (=> d!1173460 (= (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (seqFromList!4869 lt!1384556)) (dynLambda!18025 (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))) (seqFromList!4869 lt!1384556)))))

(declare-fun b_lambda!115821 () Bool)

(assert (=> (not b_lambda!115821) (not d!1173460)))

(declare-fun t!329683 () Bool)

(declare-fun tb!238659 () Bool)

(assert (=> (and b!3959006 (= (toValue!9090 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329683) tb!238659))

(declare-fun result!289002 () Bool)

(assert (=> tb!238659 (= result!289002 (inv!21 (dynLambda!18025 (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))) (seqFromList!4869 lt!1384556))))))

(declare-fun m!4528371 () Bool)

(assert (=> tb!238659 m!4528371))

(assert (=> d!1173460 t!329683))

(declare-fun b_and!303925 () Bool)

(assert (= b_and!303871 (and (=> t!329683 result!289002) b_and!303925)))

(declare-fun t!329685 () Bool)

(declare-fun tb!238661 () Bool)

(assert (=> (and b!3959004 (= (toValue!9090 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329685) tb!238661))

(declare-fun result!289006 () Bool)

(assert (= result!289006 result!289002))

(assert (=> d!1173460 t!329685))

(declare-fun b_and!303927 () Bool)

(assert (= b_and!303875 (and (=> t!329685 result!289006) b_and!303927)))

(declare-fun tb!238663 () Bool)

(declare-fun t!329687 () Bool)

(assert (=> (and b!3958996 (= (toValue!9090 (transformation!6610 (h!47584 rules!2768))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329687) tb!238663))

(declare-fun result!289008 () Bool)

(assert (= result!289008 result!289002))

(assert (=> d!1173460 t!329687))

(declare-fun b_and!303929 () Bool)

(assert (= b_and!303879 (and (=> t!329687 result!289008) b_and!303929)))

(assert (=> d!1173460 m!4527859))

(declare-fun m!4528373 () Bool)

(assert (=> d!1173460 m!4528373))

(assert (=> b!3959000 d!1173460))

(declare-fun b!3959402 () Bool)

(declare-fun e!2451538 () Bool)

(assert (=> b!3959402 (= e!2451538 (isPrefix!3699 (tail!6147 lt!1384556) (tail!6147 lt!1384545)))))

(declare-fun b!3959403 () Bool)

(declare-fun e!2451536 () Bool)

(assert (=> b!3959403 (= e!2451536 (>= (size!31575 lt!1384545) (size!31575 lt!1384556)))))

(declare-fun d!1173462 () Bool)

(assert (=> d!1173462 e!2451536))

(declare-fun res!1602450 () Bool)

(assert (=> d!1173462 (=> res!1602450 e!2451536)))

(declare-fun lt!1384717 () Bool)

(assert (=> d!1173462 (= res!1602450 (not lt!1384717))))

(declare-fun e!2451537 () Bool)

(assert (=> d!1173462 (= lt!1384717 e!2451537)))

(declare-fun res!1602448 () Bool)

(assert (=> d!1173462 (=> res!1602448 e!2451537)))

(assert (=> d!1173462 (= res!1602448 ((_ is Nil!42162) lt!1384556))))

(assert (=> d!1173462 (= (isPrefix!3699 lt!1384556 lt!1384545) lt!1384717)))

(declare-fun b!3959401 () Bool)

(declare-fun res!1602451 () Bool)

(assert (=> b!3959401 (=> (not res!1602451) (not e!2451538))))

(declare-fun head!8421 (List!42286) C!23216)

(assert (=> b!3959401 (= res!1602451 (= (head!8421 lt!1384556) (head!8421 lt!1384545)))))

(declare-fun b!3959400 () Bool)

(assert (=> b!3959400 (= e!2451537 e!2451538)))

(declare-fun res!1602449 () Bool)

(assert (=> b!3959400 (=> (not res!1602449) (not e!2451538))))

(assert (=> b!3959400 (= res!1602449 (not ((_ is Nil!42162) lt!1384545)))))

(assert (= (and d!1173462 (not res!1602448)) b!3959400))

(assert (= (and b!3959400 res!1602449) b!3959401))

(assert (= (and b!3959401 res!1602451) b!3959402))

(assert (= (and d!1173462 (not res!1602450)) b!3959403))

(declare-fun m!4528375 () Bool)

(assert (=> b!3959402 m!4528375))

(declare-fun m!4528377 () Bool)

(assert (=> b!3959402 m!4528377))

(assert (=> b!3959402 m!4528375))

(assert (=> b!3959402 m!4528377))

(declare-fun m!4528379 () Bool)

(assert (=> b!3959402 m!4528379))

(declare-fun m!4528381 () Bool)

(assert (=> b!3959403 m!4528381))

(assert (=> b!3959403 m!4527851))

(declare-fun m!4528383 () Bool)

(assert (=> b!3959401 m!4528383))

(declare-fun m!4528385 () Bool)

(assert (=> b!3959401 m!4528385))

(assert (=> b!3959000 d!1173462))

(declare-fun d!1173464 () Bool)

(assert (=> d!1173464 (ruleValid!2552 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))

(declare-fun lt!1384720 () Unit!60644)

(declare-fun choose!23643 (LexerInterface!6199 Rule!13020 List!42288) Unit!60644)

(assert (=> d!1173464 (= lt!1384720 (choose!23643 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) rules!2768))))

(assert (=> d!1173464 (contains!8426 rules!2768 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173464 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1628 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) rules!2768) lt!1384720)))

(declare-fun bs!587233 () Bool)

(assert (= bs!587233 d!1173464))

(assert (=> bs!587233 m!4527869))

(declare-fun m!4528387 () Bool)

(assert (=> bs!587233 m!4528387))

(declare-fun m!4528389 () Bool)

(assert (=> bs!587233 m!4528389))

(assert (=> b!3959000 d!1173464))

(declare-fun b!3959404 () Bool)

(declare-fun e!2451539 () Bool)

(declare-fun lt!1384722 () tuple2!41450)

(assert (=> b!3959404 (= e!2451539 (= (_2!23859 lt!1384722) (_2!23860 (v!39375 lt!1384542))))))

(declare-fun b!3959405 () Bool)

(declare-fun e!2451541 () Bool)

(assert (=> b!3959405 (= e!2451539 e!2451541)))

(declare-fun res!1602452 () Bool)

(assert (=> b!3959405 (= res!1602452 (< (size!31575 (_2!23859 lt!1384722)) (size!31575 (_2!23860 (v!39375 lt!1384542)))))))

(assert (=> b!3959405 (=> (not res!1602452) (not e!2451541))))

(declare-fun d!1173466 () Bool)

(assert (=> d!1173466 e!2451539))

(declare-fun c!687099 () Bool)

(assert (=> d!1173466 (= c!687099 (> (size!31577 (_1!23859 lt!1384722)) 0))))

(declare-fun e!2451540 () tuple2!41450)

(assert (=> d!1173466 (= lt!1384722 e!2451540)))

(declare-fun c!687100 () Bool)

(declare-fun lt!1384723 () Option!9030)

(assert (=> d!1173466 (= c!687100 ((_ is Some!9029) lt!1384723))))

(assert (=> d!1173466 (= lt!1384723 (maxPrefix!3503 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173466 (= (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384542))) lt!1384722)))

(declare-fun b!3959406 () Bool)

(declare-fun lt!1384721 () tuple2!41450)

(assert (=> b!3959406 (= e!2451540 (tuple2!41451 (Cons!42163 (_1!23860 (v!39375 lt!1384723)) (_1!23859 lt!1384721)) (_2!23859 lt!1384721)))))

(assert (=> b!3959406 (= lt!1384721 (lexList!1967 thiss!20629 rules!2768 (_2!23860 (v!39375 lt!1384723))))))

(declare-fun b!3959407 () Bool)

(assert (=> b!3959407 (= e!2451540 (tuple2!41451 Nil!42163 (_2!23860 (v!39375 lt!1384542))))))

(declare-fun b!3959408 () Bool)

(assert (=> b!3959408 (= e!2451541 (not (isEmpty!25208 (_1!23859 lt!1384722))))))

(assert (= (and d!1173466 c!687100) b!3959406))

(assert (= (and d!1173466 (not c!687100)) b!3959407))

(assert (= (and d!1173466 c!687099) b!3959405))

(assert (= (and d!1173466 (not c!687099)) b!3959404))

(assert (= (and b!3959405 res!1602452) b!3959408))

(declare-fun m!4528391 () Bool)

(assert (=> b!3959405 m!4528391))

(assert (=> b!3959405 m!4527843))

(declare-fun m!4528393 () Bool)

(assert (=> d!1173466 m!4528393))

(declare-fun m!4528395 () Bool)

(assert (=> d!1173466 m!4528395))

(declare-fun m!4528397 () Bool)

(assert (=> b!3959406 m!4528397))

(declare-fun m!4528399 () Bool)

(assert (=> b!3959408 m!4528399))

(assert (=> b!3959000 d!1173466))

(declare-fun d!1173468 () Bool)

(assert (=> d!1173468 (= (size!31574 (_1!23860 (v!39375 lt!1384542))) (size!31575 (originalCharacters!7210 (_1!23860 (v!39375 lt!1384542)))))))

(declare-fun Unit!60651 () Unit!60644)

(assert (=> d!1173468 (= (lemmaCharactersSize!1263 (_1!23860 (v!39375 lt!1384542))) Unit!60651)))

(declare-fun bs!587234 () Bool)

(assert (= bs!587234 d!1173468))

(assert (=> bs!587234 m!4527893))

(assert (=> b!3959000 d!1173468))

(declare-fun d!1173470 () Bool)

(assert (=> d!1173470 (= (list!15652 (charsOf!4428 (_1!23860 (v!39375 lt!1384542)))) (list!15654 (c!687011 (charsOf!4428 (_1!23860 (v!39375 lt!1384542))))))))

(declare-fun bs!587235 () Bool)

(assert (= bs!587235 d!1173470))

(declare-fun m!4528401 () Bool)

(assert (=> bs!587235 m!4528401))

(assert (=> b!3959000 d!1173470))

(declare-fun d!1173472 () Bool)

(declare-fun lt!1384724 () Int)

(assert (=> d!1173472 (>= lt!1384724 0)))

(declare-fun e!2451542 () Int)

(assert (=> d!1173472 (= lt!1384724 e!2451542)))

(declare-fun c!687101 () Bool)

(assert (=> d!1173472 (= c!687101 ((_ is Nil!42162) lt!1384556))))

(assert (=> d!1173472 (= (size!31575 lt!1384556) lt!1384724)))

(declare-fun b!3959409 () Bool)

(assert (=> b!3959409 (= e!2451542 0)))

(declare-fun b!3959410 () Bool)

(assert (=> b!3959410 (= e!2451542 (+ 1 (size!31575 (t!329637 lt!1384556))))))

(assert (= (and d!1173472 c!687101) b!3959409))

(assert (= (and d!1173472 (not c!687101)) b!3959410))

(declare-fun m!4528403 () Bool)

(assert (=> b!3959410 m!4528403))

(assert (=> b!3959000 d!1173472))

(declare-fun b!3959466 () Bool)

(declare-fun res!1602497 () Bool)

(declare-fun e!2451571 () Bool)

(assert (=> b!3959466 (=> (not res!1602497) (not e!2451571))))

(declare-fun call!285382 () Bool)

(assert (=> b!3959466 (= res!1602497 (not call!285382))))

(declare-fun b!3959467 () Bool)

(declare-fun res!1602492 () Bool)

(declare-fun e!2451569 () Bool)

(assert (=> b!3959467 (=> res!1602492 e!2451569)))

(assert (=> b!3959467 (= res!1602492 e!2451571)))

(declare-fun res!1602493 () Bool)

(assert (=> b!3959467 (=> (not res!1602493) (not e!2451571))))

(declare-fun lt!1384742 () Bool)

(assert (=> b!3959467 (= res!1602493 lt!1384742)))

(declare-fun b!3959468 () Bool)

(declare-fun e!2451570 () Bool)

(declare-fun e!2451566 () Bool)

(assert (=> b!3959468 (= e!2451570 e!2451566)))

(declare-fun c!687113 () Bool)

(assert (=> b!3959468 (= c!687113 ((_ is EmptyLang!11515) (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))))

(declare-fun b!3959469 () Bool)

(assert (=> b!3959469 (= e!2451566 (not lt!1384742))))

(declare-fun b!3959470 () Bool)

(declare-fun e!2451568 () Bool)

(declare-fun e!2451567 () Bool)

(assert (=> b!3959470 (= e!2451568 e!2451567)))

(declare-fun res!1602496 () Bool)

(assert (=> b!3959470 (=> res!1602496 e!2451567)))

(assert (=> b!3959470 (= res!1602496 call!285382)))

(declare-fun b!3959471 () Bool)

(assert (=> b!3959471 (= e!2451567 (not (= (head!8421 lt!1384556) (c!687010 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))))))

(declare-fun bm!285377 () Bool)

(assert (=> bm!285377 (= call!285382 (isEmpty!25209 lt!1384556))))

(declare-fun b!3959472 () Bool)

(assert (=> b!3959472 (= e!2451569 e!2451568)))

(declare-fun res!1602490 () Bool)

(assert (=> b!3959472 (=> (not res!1602490) (not e!2451568))))

(assert (=> b!3959472 (= res!1602490 (not lt!1384742))))

(declare-fun b!3959473 () Bool)

(declare-fun e!2451572 () Bool)

(declare-fun derivativeStep!3469 (Regex!11515 C!23216) Regex!11515)

(assert (=> b!3959473 (= e!2451572 (matchR!5536 (derivativeStep!3469 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (head!8421 lt!1384556)) (tail!6147 lt!1384556)))))

(declare-fun b!3959474 () Bool)

(declare-fun res!1602494 () Bool)

(assert (=> b!3959474 (=> (not res!1602494) (not e!2451571))))

(assert (=> b!3959474 (= res!1602494 (isEmpty!25209 (tail!6147 lt!1384556)))))

(declare-fun b!3959475 () Bool)

(assert (=> b!3959475 (= e!2451570 (= lt!1384742 call!285382))))

(declare-fun d!1173474 () Bool)

(assert (=> d!1173474 e!2451570))

(declare-fun c!687111 () Bool)

(assert (=> d!1173474 (= c!687111 ((_ is EmptyExpr!11515) (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))))

(assert (=> d!1173474 (= lt!1384742 e!2451572)))

(declare-fun c!687112 () Bool)

(assert (=> d!1173474 (= c!687112 (isEmpty!25209 lt!1384556))))

(assert (=> d!1173474 (validRegex!5244 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))

(assert (=> d!1173474 (= (matchR!5536 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) lt!1384556) lt!1384742)))

(declare-fun b!3959476 () Bool)

(declare-fun res!1602495 () Bool)

(assert (=> b!3959476 (=> res!1602495 e!2451569)))

(assert (=> b!3959476 (= res!1602495 (not ((_ is ElementMatch!11515) (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))))

(assert (=> b!3959476 (= e!2451566 e!2451569)))

(declare-fun b!3959477 () Bool)

(assert (=> b!3959477 (= e!2451571 (= (head!8421 lt!1384556) (c!687010 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))))

(declare-fun b!3959478 () Bool)

(declare-fun res!1602491 () Bool)

(assert (=> b!3959478 (=> res!1602491 e!2451567)))

(assert (=> b!3959478 (= res!1602491 (not (isEmpty!25209 (tail!6147 lt!1384556))))))

(declare-fun b!3959479 () Bool)

(assert (=> b!3959479 (= e!2451572 (nullable!4045 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))))

(assert (= (and d!1173474 c!687112) b!3959479))

(assert (= (and d!1173474 (not c!687112)) b!3959473))

(assert (= (and d!1173474 c!687111) b!3959475))

(assert (= (and d!1173474 (not c!687111)) b!3959468))

(assert (= (and b!3959468 c!687113) b!3959469))

(assert (= (and b!3959468 (not c!687113)) b!3959476))

(assert (= (and b!3959476 (not res!1602495)) b!3959467))

(assert (= (and b!3959467 res!1602493) b!3959466))

(assert (= (and b!3959466 res!1602497) b!3959474))

(assert (= (and b!3959474 res!1602494) b!3959477))

(assert (= (and b!3959467 (not res!1602492)) b!3959472))

(assert (= (and b!3959472 res!1602490) b!3959470))

(assert (= (and b!3959470 (not res!1602496)) b!3959478))

(assert (= (and b!3959478 (not res!1602491)) b!3959471))

(assert (= (or b!3959475 b!3959466 b!3959470) bm!285377))

(declare-fun m!4528405 () Bool)

(assert (=> d!1173474 m!4528405))

(assert (=> d!1173474 m!4528367))

(assert (=> b!3959474 m!4528375))

(assert (=> b!3959474 m!4528375))

(declare-fun m!4528407 () Bool)

(assert (=> b!3959474 m!4528407))

(assert (=> bm!285377 m!4528405))

(assert (=> b!3959473 m!4528383))

(assert (=> b!3959473 m!4528383))

(declare-fun m!4528409 () Bool)

(assert (=> b!3959473 m!4528409))

(assert (=> b!3959473 m!4528375))

(assert (=> b!3959473 m!4528409))

(assert (=> b!3959473 m!4528375))

(declare-fun m!4528411 () Bool)

(assert (=> b!3959473 m!4528411))

(assert (=> b!3959478 m!4528375))

(assert (=> b!3959478 m!4528375))

(assert (=> b!3959478 m!4528407))

(assert (=> b!3959471 m!4528383))

(assert (=> b!3959477 m!4528383))

(assert (=> b!3959479 m!4528369))

(assert (=> b!3959020 d!1173474))

(declare-fun b!3959586 () Bool)

(declare-fun e!2451646 () Bool)

(declare-datatypes ((tuple2!41456 0))(
  ( (tuple2!41457 (_1!23862 List!42286) (_2!23862 List!42286)) )
))
(declare-fun findLongestMatchInner!1292 (Regex!11515 List!42286 Int List!42286 List!42286 Int) tuple2!41456)

(assert (=> b!3959586 (= e!2451646 (matchR!5536 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (_1!23862 (findLongestMatchInner!1292 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) Nil!42162 (size!31575 Nil!42162) lt!1384555 lt!1384555 (size!31575 lt!1384555)))))))

(declare-fun b!3959587 () Bool)

(declare-fun e!2451648 () Option!9030)

(assert (=> b!3959587 (= e!2451648 None!9029)))

(declare-fun b!3959588 () Bool)

(declare-fun e!2451645 () Bool)

(declare-fun e!2451647 () Bool)

(assert (=> b!3959588 (= e!2451645 e!2451647)))

(declare-fun res!1602520 () Bool)

(assert (=> b!3959588 (=> (not res!1602520) (not e!2451647))))

(declare-fun lt!1384766 () Option!9030)

(assert (=> b!3959588 (= res!1602520 (matchR!5536 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (list!15652 (charsOf!4428 (_1!23860 (get!13905 lt!1384766))))))))

(declare-fun b!3959589 () Bool)

(declare-fun lt!1384768 () tuple2!41456)

(declare-fun size!31579 (BalanceConc!25236) Int)

(assert (=> b!3959589 (= e!2451648 (Some!9029 (tuple2!41453 (Token!12359 (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (seqFromList!4869 (_1!23862 lt!1384768))) (rule!9586 (_1!23860 (v!39375 lt!1384542))) (size!31579 (seqFromList!4869 (_1!23862 lt!1384768))) (_1!23862 lt!1384768)) (_2!23862 lt!1384768))))))

(declare-fun lt!1384765 () Unit!60644)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1265 (Regex!11515 List!42286) Unit!60644)

(assert (=> b!3959589 (= lt!1384765 (longestMatchIsAcceptedByMatchOrIsEmpty!1265 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) lt!1384555))))

(declare-fun res!1602523 () Bool)

(assert (=> b!3959589 (= res!1602523 (isEmpty!25209 (_1!23862 (findLongestMatchInner!1292 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) Nil!42162 (size!31575 Nil!42162) lt!1384555 lt!1384555 (size!31575 lt!1384555)))))))

(assert (=> b!3959589 (=> res!1602523 e!2451646)))

(assert (=> b!3959589 e!2451646))

(declare-fun lt!1384767 () Unit!60644)

(assert (=> b!3959589 (= lt!1384767 lt!1384765)))

(declare-fun lt!1384764 () Unit!60644)

(declare-fun lemmaSemiInverse!1800 (TokenValueInjection!13108 BalanceConc!25236) Unit!60644)

(assert (=> b!3959589 (= lt!1384764 (lemmaSemiInverse!1800 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (seqFromList!4869 (_1!23862 lt!1384768))))))

(declare-fun b!3959590 () Bool)

(declare-fun res!1602524 () Bool)

(assert (=> b!3959590 (=> (not res!1602524) (not e!2451647))))

(assert (=> b!3959590 (= res!1602524 (= (value!209019 (_1!23860 (get!13905 lt!1384766))) (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (get!13905 lt!1384766)))) (seqFromList!4869 (originalCharacters!7210 (_1!23860 (get!13905 lt!1384766)))))))))

(declare-fun b!3959591 () Bool)

(declare-fun res!1602521 () Bool)

(assert (=> b!3959591 (=> (not res!1602521) (not e!2451647))))

(assert (=> b!3959591 (= res!1602521 (= (++!10978 (list!15652 (charsOf!4428 (_1!23860 (get!13905 lt!1384766)))) (_2!23860 (get!13905 lt!1384766))) lt!1384555))))

(declare-fun b!3959592 () Bool)

(declare-fun res!1602526 () Bool)

(assert (=> b!3959592 (=> (not res!1602526) (not e!2451647))))

(assert (=> b!3959592 (= res!1602526 (= (rule!9586 (_1!23860 (get!13905 lt!1384766))) (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))

(declare-fun d!1173476 () Bool)

(assert (=> d!1173476 e!2451645))

(declare-fun res!1602525 () Bool)

(assert (=> d!1173476 (=> res!1602525 e!2451645)))

(assert (=> d!1173476 (= res!1602525 (isEmpty!25211 lt!1384766))))

(assert (=> d!1173476 (= lt!1384766 e!2451648)))

(declare-fun c!687125 () Bool)

(assert (=> d!1173476 (= c!687125 (isEmpty!25209 (_1!23862 lt!1384768)))))

(declare-fun findLongestMatch!1205 (Regex!11515 List!42286) tuple2!41456)

(assert (=> d!1173476 (= lt!1384768 (findLongestMatch!1205 (regex!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) lt!1384555))))

(assert (=> d!1173476 (ruleValid!2552 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))))))

(assert (=> d!1173476 (= (maxPrefixOneRule!2553 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) lt!1384555) lt!1384766)))

(declare-fun b!3959593 () Bool)

(assert (=> b!3959593 (= e!2451647 (= (size!31574 (_1!23860 (get!13905 lt!1384766))) (size!31575 (originalCharacters!7210 (_1!23860 (get!13905 lt!1384766))))))))

(declare-fun b!3959594 () Bool)

(declare-fun res!1602522 () Bool)

(assert (=> b!3959594 (=> (not res!1602522) (not e!2451647))))

(assert (=> b!3959594 (= res!1602522 (< (size!31575 (_2!23860 (get!13905 lt!1384766))) (size!31575 lt!1384555)))))

(assert (= (and d!1173476 c!687125) b!3959587))

(assert (= (and d!1173476 (not c!687125)) b!3959589))

(assert (= (and b!3959589 (not res!1602523)) b!3959586))

(assert (= (and d!1173476 (not res!1602525)) b!3959588))

(assert (= (and b!3959588 res!1602520) b!3959591))

(assert (= (and b!3959591 res!1602521) b!3959594))

(assert (= (and b!3959594 res!1602522) b!3959592))

(assert (= (and b!3959592 res!1602526) b!3959590))

(assert (= (and b!3959590 res!1602524) b!3959593))

(declare-fun m!4528533 () Bool)

(assert (=> b!3959589 m!4528533))

(assert (=> b!3959589 m!4527891))

(declare-fun m!4528535 () Bool)

(assert (=> b!3959589 m!4528535))

(declare-fun m!4528537 () Bool)

(assert (=> b!3959589 m!4528537))

(declare-fun m!4528539 () Bool)

(assert (=> b!3959589 m!4528539))

(assert (=> b!3959589 m!4528537))

(declare-fun m!4528541 () Bool)

(assert (=> b!3959589 m!4528541))

(assert (=> b!3959589 m!4528537))

(declare-fun m!4528543 () Bool)

(assert (=> b!3959589 m!4528543))

(assert (=> b!3959589 m!4528537))

(assert (=> b!3959589 m!4528535))

(assert (=> b!3959589 m!4527891))

(declare-fun m!4528545 () Bool)

(assert (=> b!3959589 m!4528545))

(declare-fun m!4528547 () Bool)

(assert (=> b!3959589 m!4528547))

(declare-fun m!4528549 () Bool)

(assert (=> b!3959594 m!4528549))

(declare-fun m!4528551 () Bool)

(assert (=> b!3959594 m!4528551))

(assert (=> b!3959594 m!4527891))

(assert (=> b!3959593 m!4528549))

(declare-fun m!4528553 () Bool)

(assert (=> b!3959593 m!4528553))

(assert (=> b!3959588 m!4528549))

(declare-fun m!4528555 () Bool)

(assert (=> b!3959588 m!4528555))

(assert (=> b!3959588 m!4528555))

(declare-fun m!4528557 () Bool)

(assert (=> b!3959588 m!4528557))

(assert (=> b!3959588 m!4528557))

(declare-fun m!4528559 () Bool)

(assert (=> b!3959588 m!4528559))

(declare-fun m!4528561 () Bool)

(assert (=> d!1173476 m!4528561))

(declare-fun m!4528563 () Bool)

(assert (=> d!1173476 m!4528563))

(declare-fun m!4528565 () Bool)

(assert (=> d!1173476 m!4528565))

(assert (=> d!1173476 m!4527869))

(assert (=> b!3959586 m!4528535))

(assert (=> b!3959586 m!4527891))

(assert (=> b!3959586 m!4528535))

(assert (=> b!3959586 m!4527891))

(assert (=> b!3959586 m!4528545))

(declare-fun m!4528567 () Bool)

(assert (=> b!3959586 m!4528567))

(assert (=> b!3959592 m!4528549))

(assert (=> b!3959590 m!4528549))

(declare-fun m!4528569 () Bool)

(assert (=> b!3959590 m!4528569))

(assert (=> b!3959590 m!4528569))

(declare-fun m!4528571 () Bool)

(assert (=> b!3959590 m!4528571))

(assert (=> b!3959591 m!4528549))

(assert (=> b!3959591 m!4528555))

(assert (=> b!3959591 m!4528555))

(assert (=> b!3959591 m!4528557))

(assert (=> b!3959591 m!4528557))

(declare-fun m!4528573 () Bool)

(assert (=> b!3959591 m!4528573))

(assert (=> b!3959020 d!1173476))

(declare-fun d!1173514 () Bool)

(assert (=> d!1173514 (= (maxPrefixOneRule!2553 thiss!20629 (rule!9586 (_1!23860 (v!39375 lt!1384542))) lt!1384555) (Some!9029 (tuple2!41453 (Token!12359 (apply!9841 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))) (seqFromList!4869 lt!1384556)) (rule!9586 (_1!23860 (v!39375 lt!1384542))) (size!31575 lt!1384556) lt!1384556) (_2!23860 (v!39375 lt!1384542)))))))

(declare-fun lt!1384771 () Unit!60644)

(declare-fun choose!23645 (LexerInterface!6199 List!42288 List!42286 List!42286 List!42286 Rule!13020) Unit!60644)

(assert (=> d!1173514 (= lt!1384771 (choose!23645 thiss!20629 rules!2768 lt!1384556 lt!1384555 (_2!23860 (v!39375 lt!1384542)) (rule!9586 (_1!23860 (v!39375 lt!1384542)))))))

(assert (=> d!1173514 (not (isEmpty!25210 rules!2768))))

(assert (=> d!1173514 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1379 thiss!20629 rules!2768 lt!1384556 lt!1384555 (_2!23860 (v!39375 lt!1384542)) (rule!9586 (_1!23860 (v!39375 lt!1384542)))) lt!1384771)))

(declare-fun bs!587238 () Bool)

(assert (= bs!587238 d!1173514))

(assert (=> bs!587238 m!4527919))

(assert (=> bs!587238 m!4527859))

(assert (=> bs!587238 m!4527871))

(assert (=> bs!587238 m!4527851))

(declare-fun m!4528575 () Bool)

(assert (=> bs!587238 m!4528575))

(assert (=> bs!587238 m!4527859))

(assert (=> bs!587238 m!4527829))

(assert (=> b!3959020 d!1173514))

(declare-fun b!3959599 () Bool)

(declare-fun e!2451651 () Bool)

(declare-fun tp!1206699 () Bool)

(assert (=> b!3959599 (= e!2451651 (and tp_is_empty!20001 tp!1206699))))

(assert (=> b!3959029 (= tp!1206607 e!2451651)))

(assert (= (and b!3959029 ((_ is Cons!42162) (originalCharacters!7210 (h!47583 prefixTokens!80)))) b!3959599))

(declare-fun b!3959613 () Bool)

(declare-fun b_free!109221 () Bool)

(declare-fun b_next!109925 () Bool)

(assert (=> b!3959613 (= b_free!109221 (not b_next!109925))))

(declare-fun tb!238707 () Bool)

(declare-fun t!329731 () Bool)

(assert (=> (and b!3959613 (= (toValue!9090 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329731) tb!238707))

(declare-fun result!289064 () Bool)

(assert (= result!289064 result!289002))

(assert (=> d!1173460 t!329731))

(declare-fun b_and!303955 () Bool)

(declare-fun tp!1206714 () Bool)

(assert (=> b!3959613 (= tp!1206714 (and (=> t!329731 result!289064) b_and!303955))))

(declare-fun b_free!109223 () Bool)

(declare-fun b_next!109927 () Bool)

(assert (=> b!3959613 (= b_free!109223 (not b_next!109927))))

(declare-fun tb!238709 () Bool)

(declare-fun t!329733 () Bool)

(assert (=> (and b!3959613 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329733) tb!238709))

(declare-fun result!289066 () Bool)

(assert (= result!289066 result!288970))

(assert (=> d!1173394 t!329733))

(declare-fun t!329735 () Bool)

(declare-fun tb!238711 () Bool)

(assert (=> (and b!3959613 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329735) tb!238711))

(declare-fun result!289068 () Bool)

(assert (= result!289068 result!288978))

(assert (=> b!3959305 t!329735))

(declare-fun tb!238713 () Bool)

(declare-fun t!329737 () Bool)

(assert (=> (and b!3959613 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329737) tb!238713))

(declare-fun result!289070 () Bool)

(assert (= result!289070 result!288984))

(assert (=> b!3959332 t!329737))

(declare-fun t!329739 () Bool)

(declare-fun tb!238715 () Bool)

(assert (=> (and b!3959613 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329739) tb!238715))

(declare-fun result!289072 () Bool)

(assert (= result!289072 result!288996))

(assert (=> d!1173442 t!329739))

(declare-fun tp!1206711 () Bool)

(declare-fun b_and!303957 () Bool)

(assert (=> b!3959613 (= tp!1206711 (and (=> t!329733 result!289066) (=> t!329735 result!289068) (=> t!329737 result!289070) (=> t!329739 result!289072) b_and!303957))))

(declare-fun e!2451664 () Bool)

(declare-fun tp!1206710 () Bool)

(declare-fun e!2451665 () Bool)

(declare-fun b!3959612 () Bool)

(assert (=> b!3959612 (= e!2451665 (and tp!1206710 (inv!56388 (tag!7470 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (inv!56391 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) e!2451664))))

(declare-fun e!2451668 () Bool)

(assert (=> b!3959008 (= tp!1206610 e!2451668)))

(declare-fun b!3959610 () Bool)

(declare-fun tp!1206713 () Bool)

(declare-fun e!2451667 () Bool)

(assert (=> b!3959610 (= e!2451668 (and (inv!56392 (h!47583 (t!329638 prefixTokens!80))) e!2451667 tp!1206713))))

(assert (=> b!3959613 (= e!2451664 (and tp!1206714 tp!1206711))))

(declare-fun tp!1206712 () Bool)

(declare-fun b!3959611 () Bool)

(assert (=> b!3959611 (= e!2451667 (and (inv!21 (value!209019 (h!47583 (t!329638 prefixTokens!80)))) e!2451665 tp!1206712))))

(assert (= b!3959612 b!3959613))

(assert (= b!3959611 b!3959612))

(assert (= b!3959610 b!3959611))

(assert (= (and b!3959008 ((_ is Cons!42163) (t!329638 prefixTokens!80))) b!3959610))

(declare-fun m!4528577 () Bool)

(assert (=> b!3959612 m!4528577))

(declare-fun m!4528579 () Bool)

(assert (=> b!3959612 m!4528579))

(declare-fun m!4528581 () Bool)

(assert (=> b!3959610 m!4528581))

(declare-fun m!4528583 () Bool)

(assert (=> b!3959611 m!4528583))

(declare-fun b!3959626 () Bool)

(declare-fun e!2451672 () Bool)

(declare-fun tp!1206726 () Bool)

(assert (=> b!3959626 (= e!2451672 tp!1206726)))

(declare-fun b!3959625 () Bool)

(declare-fun tp!1206729 () Bool)

(declare-fun tp!1206727 () Bool)

(assert (=> b!3959625 (= e!2451672 (and tp!1206729 tp!1206727))))

(assert (=> b!3959007 (= tp!1206616 e!2451672)))

(declare-fun b!3959624 () Bool)

(assert (=> b!3959624 (= e!2451672 tp_is_empty!20001)))

(declare-fun b!3959627 () Bool)

(declare-fun tp!1206725 () Bool)

(declare-fun tp!1206728 () Bool)

(assert (=> b!3959627 (= e!2451672 (and tp!1206725 tp!1206728))))

(assert (= (and b!3959007 ((_ is ElementMatch!11515) (regex!6610 (rule!9586 (h!47583 suffixTokens!72))))) b!3959624))

(assert (= (and b!3959007 ((_ is Concat!18356) (regex!6610 (rule!9586 (h!47583 suffixTokens!72))))) b!3959625))

(assert (= (and b!3959007 ((_ is Star!11515) (regex!6610 (rule!9586 (h!47583 suffixTokens!72))))) b!3959626))

(assert (= (and b!3959007 ((_ is Union!11515) (regex!6610 (rule!9586 (h!47583 suffixTokens!72))))) b!3959627))

(declare-fun b!3959628 () Bool)

(declare-fun e!2451673 () Bool)

(declare-fun tp!1206730 () Bool)

(assert (=> b!3959628 (= e!2451673 (and tp_is_empty!20001 tp!1206730))))

(assert (=> b!3959005 (= tp!1206615 e!2451673)))

(assert (= (and b!3959005 ((_ is Cons!42162) (t!329637 suffixResult!91))) b!3959628))

(declare-fun b!3959632 () Bool)

(declare-fun b_free!109225 () Bool)

(declare-fun b_next!109929 () Bool)

(assert (=> b!3959632 (= b_free!109225 (not b_next!109929))))

(declare-fun tb!238717 () Bool)

(declare-fun t!329741 () Bool)

(assert (=> (and b!3959632 (= (toValue!9090 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329741) tb!238717))

(declare-fun result!289076 () Bool)

(assert (= result!289076 result!289002))

(assert (=> d!1173460 t!329741))

(declare-fun b_and!303959 () Bool)

(declare-fun tp!1206735 () Bool)

(assert (=> b!3959632 (= tp!1206735 (and (=> t!329741 result!289076) b_and!303959))))

(declare-fun b_free!109227 () Bool)

(declare-fun b_next!109931 () Bool)

(assert (=> b!3959632 (= b_free!109227 (not b_next!109931))))

(declare-fun t!329743 () Bool)

(declare-fun tb!238719 () Bool)

(assert (=> (and b!3959632 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329743) tb!238719))

(declare-fun result!289078 () Bool)

(assert (= result!289078 result!288970))

(assert (=> d!1173394 t!329743))

(declare-fun t!329745 () Bool)

(declare-fun tb!238721 () Bool)

(assert (=> (and b!3959632 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329745) tb!238721))

(declare-fun result!289080 () Bool)

(assert (= result!289080 result!288978))

(assert (=> b!3959305 t!329745))

(declare-fun t!329747 () Bool)

(declare-fun tb!238723 () Bool)

(assert (=> (and b!3959632 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329747) tb!238723))

(declare-fun result!289082 () Bool)

(assert (= result!289082 result!288984))

(assert (=> b!3959332 t!329747))

(declare-fun tb!238725 () Bool)

(declare-fun t!329749 () Bool)

(assert (=> (and b!3959632 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329749) tb!238725))

(declare-fun result!289084 () Bool)

(assert (= result!289084 result!288996))

(assert (=> d!1173442 t!329749))

(declare-fun b_and!303961 () Bool)

(declare-fun tp!1206732 () Bool)

(assert (=> b!3959632 (= tp!1206732 (and (=> t!329743 result!289078) (=> t!329745 result!289080) (=> t!329747 result!289082) (=> t!329749 result!289084) b_and!303961))))

(declare-fun tp!1206731 () Bool)

(declare-fun b!3959631 () Bool)

(declare-fun e!2451675 () Bool)

(declare-fun e!2451674 () Bool)

(assert (=> b!3959631 (= e!2451675 (and tp!1206731 (inv!56388 (tag!7470 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (inv!56391 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) e!2451674))))

(declare-fun e!2451678 () Bool)

(assert (=> b!3959003 (= tp!1206605 e!2451678)))

(declare-fun tp!1206734 () Bool)

(declare-fun e!2451677 () Bool)

(declare-fun b!3959629 () Bool)

(assert (=> b!3959629 (= e!2451678 (and (inv!56392 (h!47583 (t!329638 suffixTokens!72))) e!2451677 tp!1206734))))

(assert (=> b!3959632 (= e!2451674 (and tp!1206735 tp!1206732))))

(declare-fun tp!1206733 () Bool)

(declare-fun b!3959630 () Bool)

(assert (=> b!3959630 (= e!2451677 (and (inv!21 (value!209019 (h!47583 (t!329638 suffixTokens!72)))) e!2451675 tp!1206733))))

(assert (= b!3959631 b!3959632))

(assert (= b!3959630 b!3959631))

(assert (= b!3959629 b!3959630))

(assert (= (and b!3959003 ((_ is Cons!42163) (t!329638 suffixTokens!72))) b!3959629))

(declare-fun m!4528585 () Bool)

(assert (=> b!3959631 m!4528585))

(declare-fun m!4528587 () Bool)

(assert (=> b!3959631 m!4528587))

(declare-fun m!4528589 () Bool)

(assert (=> b!3959629 m!4528589))

(declare-fun m!4528591 () Bool)

(assert (=> b!3959630 m!4528591))

(declare-fun b!3959635 () Bool)

(declare-fun e!2451680 () Bool)

(declare-fun tp!1206737 () Bool)

(assert (=> b!3959635 (= e!2451680 tp!1206737)))

(declare-fun b!3959634 () Bool)

(declare-fun tp!1206740 () Bool)

(declare-fun tp!1206738 () Bool)

(assert (=> b!3959634 (= e!2451680 (and tp!1206740 tp!1206738))))

(assert (=> b!3959002 (= tp!1206617 e!2451680)))

(declare-fun b!3959633 () Bool)

(assert (=> b!3959633 (= e!2451680 tp_is_empty!20001)))

(declare-fun b!3959636 () Bool)

(declare-fun tp!1206736 () Bool)

(declare-fun tp!1206739 () Bool)

(assert (=> b!3959636 (= e!2451680 (and tp!1206736 tp!1206739))))

(assert (= (and b!3959002 ((_ is ElementMatch!11515) (regex!6610 (rule!9586 (h!47583 prefixTokens!80))))) b!3959633))

(assert (= (and b!3959002 ((_ is Concat!18356) (regex!6610 (rule!9586 (h!47583 prefixTokens!80))))) b!3959634))

(assert (= (and b!3959002 ((_ is Star!11515) (regex!6610 (rule!9586 (h!47583 prefixTokens!80))))) b!3959635))

(assert (= (and b!3959002 ((_ is Union!11515) (regex!6610 (rule!9586 (h!47583 prefixTokens!80))))) b!3959636))

(declare-fun b!3959637 () Bool)

(declare-fun e!2451681 () Bool)

(declare-fun tp!1206741 () Bool)

(assert (=> b!3959637 (= e!2451681 (and tp_is_empty!20001 tp!1206741))))

(assert (=> b!3959012 (= tp!1206608 e!2451681)))

(assert (= (and b!3959012 ((_ is Cons!42162) (originalCharacters!7210 (h!47583 suffixTokens!72)))) b!3959637))

(declare-fun b!3959638 () Bool)

(declare-fun e!2451682 () Bool)

(declare-fun tp!1206742 () Bool)

(assert (=> b!3959638 (= e!2451682 (and tp_is_empty!20001 tp!1206742))))

(assert (=> b!3959021 (= tp!1206611 e!2451682)))

(assert (= (and b!3959021 ((_ is Cons!42162) (t!329637 suffix!1176))) b!3959638))

(declare-fun b!3959649 () Bool)

(declare-fun b_free!109229 () Bool)

(declare-fun b_next!109933 () Bool)

(assert (=> b!3959649 (= b_free!109229 (not b_next!109933))))

(declare-fun t!329751 () Bool)

(declare-fun tb!238727 () Bool)

(assert (=> (and b!3959649 (= (toValue!9090 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toValue!9090 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329751) tb!238727))

(declare-fun result!289088 () Bool)

(assert (= result!289088 result!289002))

(assert (=> d!1173460 t!329751))

(declare-fun tp!1206751 () Bool)

(declare-fun b_and!303963 () Bool)

(assert (=> b!3959649 (= tp!1206751 (and (=> t!329751 result!289088) b_and!303963))))

(declare-fun b_free!109231 () Bool)

(declare-fun b_next!109935 () Bool)

(assert (=> b!3959649 (= b_free!109231 (not b_next!109935))))

(declare-fun tb!238729 () Bool)

(declare-fun t!329753 () Bool)

(assert (=> (and b!3959649 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 lt!1384553)))) t!329753) tb!238729))

(declare-fun result!289090 () Bool)

(assert (= result!289090 result!288970))

(assert (=> d!1173394 t!329753))

(declare-fun tb!238731 () Bool)

(declare-fun t!329755 () Bool)

(assert (=> (and b!3959649 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80))))) t!329755) tb!238731))

(declare-fun result!289092 () Bool)

(assert (= result!289092 result!288978))

(assert (=> b!3959305 t!329755))

(declare-fun tb!238733 () Bool)

(declare-fun t!329757 () Bool)

(assert (=> (and b!3959649 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72))))) t!329757) tb!238733))

(declare-fun result!289094 () Bool)

(assert (= result!289094 result!288984))

(assert (=> b!3959332 t!329757))

(declare-fun tb!238735 () Bool)

(declare-fun t!329759 () Bool)

(assert (=> (and b!3959649 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 (_1!23860 (v!39375 lt!1384542)))))) t!329759) tb!238735))

(declare-fun result!289096 () Bool)

(assert (= result!289096 result!288996))

(assert (=> d!1173442 t!329759))

(declare-fun b_and!303965 () Bool)

(declare-fun tp!1206752 () Bool)

(assert (=> b!3959649 (= tp!1206752 (and (=> t!329753 result!289090) (=> t!329755 result!289092) (=> t!329757 result!289094) (=> t!329759 result!289096) b_and!303965))))

(declare-fun e!2451694 () Bool)

(assert (=> b!3959649 (= e!2451694 (and tp!1206751 tp!1206752))))

(declare-fun b!3959648 () Bool)

(declare-fun e!2451692 () Bool)

(declare-fun tp!1206754 () Bool)

(assert (=> b!3959648 (= e!2451692 (and tp!1206754 (inv!56388 (tag!7470 (h!47584 (t!329639 rules!2768)))) (inv!56391 (transformation!6610 (h!47584 (t!329639 rules!2768)))) e!2451694))))

(declare-fun b!3959647 () Bool)

(declare-fun e!2451693 () Bool)

(declare-fun tp!1206753 () Bool)

(assert (=> b!3959647 (= e!2451693 (and e!2451692 tp!1206753))))

(assert (=> b!3959010 (= tp!1206606 e!2451693)))

(assert (= b!3959648 b!3959649))

(assert (= b!3959647 b!3959648))

(assert (= (and b!3959010 ((_ is Cons!42164) (t!329639 rules!2768))) b!3959647))

(declare-fun m!4528593 () Bool)

(assert (=> b!3959648 m!4528593))

(declare-fun m!4528595 () Bool)

(assert (=> b!3959648 m!4528595))

(declare-fun b!3959652 () Bool)

(declare-fun e!2451695 () Bool)

(declare-fun tp!1206756 () Bool)

(assert (=> b!3959652 (= e!2451695 tp!1206756)))

(declare-fun b!3959651 () Bool)

(declare-fun tp!1206759 () Bool)

(declare-fun tp!1206757 () Bool)

(assert (=> b!3959651 (= e!2451695 (and tp!1206759 tp!1206757))))

(assert (=> b!3959011 (= tp!1206604 e!2451695)))

(declare-fun b!3959650 () Bool)

(assert (=> b!3959650 (= e!2451695 tp_is_empty!20001)))

(declare-fun b!3959653 () Bool)

(declare-fun tp!1206755 () Bool)

(declare-fun tp!1206758 () Bool)

(assert (=> b!3959653 (= e!2451695 (and tp!1206755 tp!1206758))))

(assert (= (and b!3959011 ((_ is ElementMatch!11515) (regex!6610 (h!47584 rules!2768)))) b!3959650))

(assert (= (and b!3959011 ((_ is Concat!18356) (regex!6610 (h!47584 rules!2768)))) b!3959651))

(assert (= (and b!3959011 ((_ is Star!11515) (regex!6610 (h!47584 rules!2768)))) b!3959652))

(assert (= (and b!3959011 ((_ is Union!11515) (regex!6610 (h!47584 rules!2768)))) b!3959653))

(declare-fun b!3959654 () Bool)

(declare-fun e!2451696 () Bool)

(declare-fun tp!1206760 () Bool)

(assert (=> b!3959654 (= e!2451696 (and tp_is_empty!20001 tp!1206760))))

(assert (=> b!3959001 (= tp!1206612 e!2451696)))

(assert (= (and b!3959001 ((_ is Cons!42162) (t!329637 prefix!426))) b!3959654))

(declare-fun b_lambda!115831 () Bool)

(assert (= b_lambda!115813 (or (and b!3959632 b_free!109227 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))))) (and b!3959006 b_free!109199) (and b!3958996 b_free!109207 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))))) (and b!3959613 b_free!109223 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))))) (and b!3959004 b_free!109203 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))))) (and b!3959649 b_free!109231 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))))) b_lambda!115831)))

(declare-fun b_lambda!115833 () Bool)

(assert (= b_lambda!115815 (or (and b!3959006 b_free!109199 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 prefixTokens!80)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))))) (and b!3959004 b_free!109203) (and b!3959613 b_free!109223 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 prefixTokens!80))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))))) (and b!3958996 b_free!109207 (= (toChars!8949 (transformation!6610 (h!47584 rules!2768))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))))) (and b!3959632 b_free!109227 (= (toChars!8949 (transformation!6610 (rule!9586 (h!47583 (t!329638 suffixTokens!72))))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))))) (and b!3959649 b_free!109231 (= (toChars!8949 (transformation!6610 (h!47584 (t!329639 rules!2768)))) (toChars!8949 (transformation!6610 (rule!9586 (h!47583 suffixTokens!72)))))) b_lambda!115833)))

(check-sat (not b!3959105) (not b!3959648) (not d!1173470) (not d!1173330) (not b!3959637) (not b!3959306) (not b!3959651) (not b!3959205) (not b!3959200) (not b!3959266) b_and!303921 (not tb!238629) (not d!1173304) (not b!3959078) (not b_next!109929) (not b!3959201) (not b!3959038) (not b!3959473) (not b!3959631) (not d!1173476) (not d!1173394) (not b!3959405) (not b!3959357) (not tb!238641) (not b!3959198) (not b!3959612) (not b!3959380) (not b!3959401) (not b!3959348) (not b!3959328) (not b!3959204) (not b!3959043) (not d!1173414) (not b!3959288) (not b!3959269) (not b!3959638) (not d!1173416) b_and!303919 (not b!3959329) (not b!3959408) (not b!3959402) (not d!1173384) (not b!3959267) (not b!3959653) (not b!3959355) (not b!3959346) (not b_lambda!115821) (not b!3959332) b_and!303965 (not b!3959625) (not d!1173398) (not b!3959477) (not b_lambda!115831) (not b!3959345) (not b!3959354) (not b!3959654) (not d!1173436) (not tb!238653) (not d!1173316) b_and!303955 (not b!3959331) (not b!3959295) (not b!3959636) (not b!3959102) (not b_next!109911) (not b!3959588) (not b!3959286) (not b_next!109931) (not d!1173468) (not b!3959591) (not d!1173514) (not b!3959375) (not bm!285377) (not b!3959305) (not b!3959652) (not d!1173446) (not b!3959307) (not b!3959629) (not d!1173402) (not b!3959599) b_and!303959 (not b!3959471) (not b!3959079) (not d!1173308) (not d!1173430) tp_is_empty!20001 (not b_next!109925) (not b!3959628) (not b!3959634) (not b_next!109901) (not b!3959333) (not b!3959101) (not d!1173474) (not b!3959630) (not d!1173442) (not b!3959297) b_and!303957 (not b!3959635) (not d!1173440) b_and!303927 (not b!3959388) (not d!1173392) (not b!3959040) b_and!303923 (not b!3959369) (not b!3959199) (not b!3959350) (not d!1173466) (not bm!285368) (not tb!238659) (not d!1173456) (not b!3959478) (not b!3959593) (not b_lambda!115833) (not b!3959203) (not b!3959647) (not b_lambda!115819) (not b!3959406) (not b!3959610) (not b!3959627) (not b!3959403) (not b!3959334) (not b!3959479) (not b!3959611) (not b!3959055) (not b!3959058) b_and!303963 (not b_next!109935) (not b!3959410) (not b!3959351) (not b!3959107) (not b!3959036) (not d!1173420) (not b!3959594) (not b_lambda!115811) (not b!3959298) (not d!1173458) (not d!1173410) (not d!1173426) (not b!3959590) (not b!3959290) (not b_next!109903) (not d!1173464) (not d!1173306) (not d!1173418) b_and!303961 (not b!3959626) (not tb!238635) (not d!1173412) (not b!3959592) (not b!3959589) (not b!3959374) (not b_next!109905) (not b_next!109907) (not b!3959586) (not d!1173434) (not b!3959300) (not b_next!109933) b_and!303929 b_and!303925 (not b_next!109909) (not b!3959056) (not b!3959474) (not b!3959308) (not b_next!109927) (not d!1173454) (not b!3959197))
(check-sat b_and!303921 (not b_next!109929) b_and!303919 b_and!303965 b_and!303955 b_and!303959 (not b_next!109925) (not b_next!109901) b_and!303957 b_and!303927 b_and!303923 (not b_next!109903) b_and!303961 (not b_next!109911) (not b_next!109931) b_and!303963 (not b_next!109935) (not b_next!109905) (not b_next!109907) (not b_next!109933) b_and!303929 b_and!303925 (not b_next!109909) (not b_next!109927))

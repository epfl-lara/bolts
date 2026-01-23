; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349406 () Bool)

(assert start!349406)

(declare-fun b!3705244 () Bool)

(declare-fun b_free!99057 () Bool)

(declare-fun b_next!99761 () Bool)

(assert (=> b!3705244 (= b_free!99057 (not b_next!99761))))

(declare-fun tp!1126950 () Bool)

(declare-fun b_and!277291 () Bool)

(assert (=> b!3705244 (= tp!1126950 b_and!277291)))

(declare-fun b_free!99059 () Bool)

(declare-fun b_next!99763 () Bool)

(assert (=> b!3705244 (= b_free!99059 (not b_next!99763))))

(declare-fun tp!1126948 () Bool)

(declare-fun b_and!277293 () Bool)

(assert (=> b!3705244 (= tp!1126948 b_and!277293)))

(declare-fun b!3705240 () Bool)

(declare-fun e!2295213 () Bool)

(declare-fun e!2295211 () Bool)

(declare-fun tp!1126949 () Bool)

(assert (=> b!3705240 (= e!2295213 (and e!2295211 tp!1126949))))

(declare-fun res!1507340 () Bool)

(declare-fun e!2295212 () Bool)

(assert (=> start!349406 (=> (not res!1507340) (not e!2295212))))

(declare-datatypes ((LexerInterface!5615 0))(
  ( (LexerInterfaceExt!5612 (__x!24729 Int)) (Lexer!5613) )
))
(declare-fun thiss!19663 () LexerInterface!5615)

(get-info :version)

(assert (=> start!349406 (= res!1507340 ((_ is Lexer!5613) thiss!19663))))

(assert (=> start!349406 e!2295212))

(assert (=> start!349406 true))

(assert (=> start!349406 e!2295213))

(declare-fun b!3705241 () Bool)

(declare-datatypes ((List!39628 0))(
  ( (Nil!39504) (Cons!39504 (h!44924 (_ BitVec 16)) (t!302311 List!39628)) )
))
(declare-datatypes ((TokenValue!6256 0))(
  ( (FloatLiteralValue!12512 (text!44237 List!39628)) (TokenValueExt!6255 (__x!24730 Int)) (Broken!31280 (value!192128 List!39628)) (Object!6379) (End!6256) (Def!6256) (Underscore!6256) (Match!6256) (Else!6256) (Error!6256) (Case!6256) (If!6256) (Extends!6256) (Abstract!6256) (Class!6256) (Val!6256) (DelimiterValue!12512 (del!6316 List!39628)) (KeywordValue!6262 (value!192129 List!39628)) (CommentValue!12512 (value!192130 List!39628)) (WhitespaceValue!12512 (value!192131 List!39628)) (IndentationValue!6256 (value!192132 List!39628)) (String!44613) (Int32!6256) (Broken!31281 (value!192133 List!39628)) (Boolean!6257) (Unit!57415) (OperatorValue!6259 (op!6316 List!39628)) (IdentifierValue!12512 (value!192134 List!39628)) (IdentifierValue!12513 (value!192135 List!39628)) (WhitespaceValue!12513 (value!192136 List!39628)) (True!12512) (False!12512) (Broken!31282 (value!192137 List!39628)) (Broken!31283 (value!192138 List!39628)) (True!12513) (RightBrace!6256) (RightBracket!6256) (Colon!6256) (Null!6256) (Comma!6256) (LeftBracket!6256) (False!12513) (LeftBrace!6256) (ImaginaryLiteralValue!6256 (text!44238 List!39628)) (StringLiteralValue!18768 (value!192139 List!39628)) (EOFValue!6256 (value!192140 List!39628)) (IdentValue!6256 (value!192141 List!39628)) (DelimiterValue!12513 (value!192142 List!39628)) (DedentValue!6256 (value!192143 List!39628)) (NewLineValue!6256 (value!192144 List!39628)) (IntegerValue!18768 (value!192145 (_ BitVec 32)) (text!44239 List!39628)) (IntegerValue!18769 (value!192146 Int) (text!44240 List!39628)) (Times!6256) (Or!6256) (Equal!6256) (Minus!6256) (Broken!31284 (value!192147 List!39628)) (And!6256) (Div!6256) (LessEqual!6256) (Mod!6256) (Concat!17041) (Not!6256) (Plus!6256) (SpaceValue!6256 (value!192148 List!39628)) (IntegerValue!18770 (value!192149 Int) (text!44241 List!39628)) (StringLiteralValue!18769 (text!44242 List!39628)) (FloatLiteralValue!12513 (text!44243 List!39628)) (BytesLiteralValue!6256 (value!192150 List!39628)) (CommentValue!12513 (value!192151 List!39628)) (StringLiteralValue!18770 (value!192152 List!39628)) (ErrorTokenValue!6256 (msg!6317 List!39628)) )
))
(declare-datatypes ((C!21756 0))(
  ( (C!21757 (val!12926 Int)) )
))
(declare-datatypes ((List!39629 0))(
  ( (Nil!39505) (Cons!39505 (h!44925 C!21756) (t!302312 List!39629)) )
))
(declare-datatypes ((IArray!24251 0))(
  ( (IArray!24252 (innerList!12183 List!39629)) )
))
(declare-datatypes ((Conc!12123 0))(
  ( (Node!12123 (left!30694 Conc!12123) (right!31024 Conc!12123) (csize!24476 Int) (cheight!12334 Int)) (Leaf!18747 (xs!15325 IArray!24251) (csize!24477 Int)) (Empty!12123) )
))
(declare-datatypes ((Regex!10785 0))(
  ( (ElementMatch!10785 (c!639996 C!21756)) (Concat!17042 (regOne!22082 Regex!10785) (regTwo!22082 Regex!10785)) (EmptyExpr!10785) (Star!10785 (reg!11114 Regex!10785)) (EmptyLang!10785) (Union!10785 (regOne!22083 Regex!10785) (regTwo!22083 Regex!10785)) )
))
(declare-datatypes ((String!44614 0))(
  ( (String!44615 (value!192153 String)) )
))
(declare-datatypes ((BalanceConc!23860 0))(
  ( (BalanceConc!23861 (c!639997 Conc!12123)) )
))
(declare-datatypes ((TokenValueInjection!11940 0))(
  ( (TokenValueInjection!11941 (toValue!8370 Int) (toChars!8229 Int)) )
))
(declare-datatypes ((Rule!11852 0))(
  ( (Rule!11853 (regex!6026 Regex!10785) (tag!6884 String!44614) (isSeparator!6026 Bool) (transformation!6026 TokenValueInjection!11940)) )
))
(declare-datatypes ((List!39630 0))(
  ( (Nil!39506) (Cons!39506 (h!44926 Rule!11852) (t!302313 List!39630)) )
))
(declare-fun rules!2525 () List!39630)

(declare-fun ListPrimitiveSize!247 (List!39630) Int)

(assert (=> b!3705241 (= e!2295212 (< (ListPrimitiveSize!247 rules!2525) 0))))

(declare-fun b!3705242 () Bool)

(declare-fun res!1507339 () Bool)

(assert (=> b!3705242 (=> (not res!1507339) (not e!2295212))))

(declare-fun rulesInvariant!5012 (LexerInterface!5615 List!39630) Bool)

(assert (=> b!3705242 (= res!1507339 (rulesInvariant!5012 thiss!19663 rules!2525))))

(declare-fun b!3705243 () Bool)

(declare-fun tp!1126947 () Bool)

(declare-fun e!2295210 () Bool)

(declare-fun inv!53003 (String!44614) Bool)

(declare-fun inv!53005 (TokenValueInjection!11940) Bool)

(assert (=> b!3705243 (= e!2295211 (and tp!1126947 (inv!53003 (tag!6884 (h!44926 rules!2525))) (inv!53005 (transformation!6026 (h!44926 rules!2525))) e!2295210))))

(assert (=> b!3705244 (= e!2295210 (and tp!1126950 tp!1126948))))

(assert (= (and start!349406 res!1507340) b!3705242))

(assert (= (and b!3705242 res!1507339) b!3705241))

(assert (= b!3705243 b!3705244))

(assert (= b!3705240 b!3705243))

(assert (= (and start!349406 ((_ is Cons!39506) rules!2525)) b!3705240))

(declare-fun m!4215665 () Bool)

(assert (=> b!3705241 m!4215665))

(declare-fun m!4215667 () Bool)

(assert (=> b!3705242 m!4215667))

(declare-fun m!4215669 () Bool)

(assert (=> b!3705243 m!4215669))

(declare-fun m!4215671 () Bool)

(assert (=> b!3705243 m!4215671))

(check-sat b_and!277291 (not b_next!99761) (not b_next!99763) (not b!3705240) (not b!3705241) (not b!3705243) b_and!277293 (not b!3705242))
(check-sat b_and!277293 b_and!277291 (not b_next!99763) (not b_next!99761))
(get-model)

(declare-fun d!1086326 () Bool)

(declare-fun lt!1296287 () Int)

(assert (=> d!1086326 (>= lt!1296287 0)))

(declare-fun e!2295219 () Int)

(assert (=> d!1086326 (= lt!1296287 e!2295219)))

(declare-fun c!640000 () Bool)

(assert (=> d!1086326 (= c!640000 ((_ is Nil!39506) rules!2525))))

(assert (=> d!1086326 (= (ListPrimitiveSize!247 rules!2525) lt!1296287)))

(declare-fun b!3705251 () Bool)

(assert (=> b!3705251 (= e!2295219 0)))

(declare-fun b!3705252 () Bool)

(assert (=> b!3705252 (= e!2295219 (+ 1 (ListPrimitiveSize!247 (t!302313 rules!2525))))))

(assert (= (and d!1086326 c!640000) b!3705251))

(assert (= (and d!1086326 (not c!640000)) b!3705252))

(declare-fun m!4215673 () Bool)

(assert (=> b!3705252 m!4215673))

(assert (=> b!3705241 d!1086326))

(declare-fun d!1086330 () Bool)

(assert (=> d!1086330 (= (inv!53003 (tag!6884 (h!44926 rules!2525))) (= (mod (str.len (value!192153 (tag!6884 (h!44926 rules!2525)))) 2) 0))))

(assert (=> b!3705243 d!1086330))

(declare-fun d!1086334 () Bool)

(declare-fun res!1507346 () Bool)

(declare-fun e!2295226 () Bool)

(assert (=> d!1086334 (=> (not res!1507346) (not e!2295226))))

(declare-fun semiInverseModEq!2576 (Int Int) Bool)

(assert (=> d!1086334 (= res!1507346 (semiInverseModEq!2576 (toChars!8229 (transformation!6026 (h!44926 rules!2525))) (toValue!8370 (transformation!6026 (h!44926 rules!2525)))))))

(assert (=> d!1086334 (= (inv!53005 (transformation!6026 (h!44926 rules!2525))) e!2295226)))

(declare-fun b!3705262 () Bool)

(declare-fun equivClasses!2475 (Int Int) Bool)

(assert (=> b!3705262 (= e!2295226 (equivClasses!2475 (toChars!8229 (transformation!6026 (h!44926 rules!2525))) (toValue!8370 (transformation!6026 (h!44926 rules!2525)))))))

(assert (= (and d!1086334 res!1507346) b!3705262))

(declare-fun m!4215681 () Bool)

(assert (=> d!1086334 m!4215681))

(declare-fun m!4215683 () Bool)

(assert (=> b!3705262 m!4215683))

(assert (=> b!3705243 d!1086334))

(declare-fun d!1086340 () Bool)

(declare-fun res!1507352 () Bool)

(declare-fun e!2295232 () Bool)

(assert (=> d!1086340 (=> (not res!1507352) (not e!2295232))))

(declare-fun rulesValid!2333 (LexerInterface!5615 List!39630) Bool)

(assert (=> d!1086340 (= res!1507352 (rulesValid!2333 thiss!19663 rules!2525))))

(assert (=> d!1086340 (= (rulesInvariant!5012 thiss!19663 rules!2525) e!2295232)))

(declare-fun b!3705268 () Bool)

(declare-datatypes ((List!39632 0))(
  ( (Nil!39508) (Cons!39508 (h!44928 String!44614) (t!302315 List!39632)) )
))
(declare-fun noDuplicateTag!2334 (LexerInterface!5615 List!39630 List!39632) Bool)

(assert (=> b!3705268 (= e!2295232 (noDuplicateTag!2334 thiss!19663 rules!2525 Nil!39508))))

(assert (= (and d!1086340 res!1507352) b!3705268))

(declare-fun m!4215689 () Bool)

(assert (=> d!1086340 m!4215689))

(declare-fun m!4215691 () Bool)

(assert (=> b!3705268 m!4215691))

(assert (=> b!3705242 d!1086340))

(declare-fun b!3705290 () Bool)

(declare-fun b_free!99063 () Bool)

(declare-fun b_next!99767 () Bool)

(assert (=> b!3705290 (= b_free!99063 (not b_next!99767))))

(declare-fun tp!1126972 () Bool)

(declare-fun b_and!277297 () Bool)

(assert (=> b!3705290 (= tp!1126972 b_and!277297)))

(declare-fun b_free!99067 () Bool)

(declare-fun b_next!99771 () Bool)

(assert (=> b!3705290 (= b_free!99067 (not b_next!99771))))

(declare-fun tp!1126974 () Bool)

(declare-fun b_and!277301 () Bool)

(assert (=> b!3705290 (= tp!1126974 b_and!277301)))

(declare-fun e!2295255 () Bool)

(assert (=> b!3705290 (= e!2295255 (and tp!1126972 tp!1126974))))

(declare-fun e!2295253 () Bool)

(declare-fun tp!1126973 () Bool)

(declare-fun b!3705289 () Bool)

(assert (=> b!3705289 (= e!2295253 (and tp!1126973 (inv!53003 (tag!6884 (h!44926 (t!302313 rules!2525)))) (inv!53005 (transformation!6026 (h!44926 (t!302313 rules!2525)))) e!2295255))))

(declare-fun b!3705288 () Bool)

(declare-fun e!2295254 () Bool)

(declare-fun tp!1126971 () Bool)

(assert (=> b!3705288 (= e!2295254 (and e!2295253 tp!1126971))))

(assert (=> b!3705240 (= tp!1126949 e!2295254)))

(assert (= b!3705289 b!3705290))

(assert (= b!3705288 b!3705289))

(assert (= (and b!3705240 ((_ is Cons!39506) (t!302313 rules!2525))) b!3705288))

(declare-fun m!4215697 () Bool)

(assert (=> b!3705289 m!4215697))

(declare-fun m!4215699 () Bool)

(assert (=> b!3705289 m!4215699))

(declare-fun b!3705317 () Bool)

(declare-fun e!2295262 () Bool)

(declare-fun tp!1127002 () Bool)

(assert (=> b!3705317 (= e!2295262 tp!1127002)))

(declare-fun b!3705316 () Bool)

(declare-fun tp!1127001 () Bool)

(declare-fun tp!1127003 () Bool)

(assert (=> b!3705316 (= e!2295262 (and tp!1127001 tp!1127003))))

(declare-fun b!3705315 () Bool)

(declare-fun tp_is_empty!18601 () Bool)

(assert (=> b!3705315 (= e!2295262 tp_is_empty!18601)))

(assert (=> b!3705243 (= tp!1126947 e!2295262)))

(declare-fun b!3705318 () Bool)

(declare-fun tp!1127000 () Bool)

(declare-fun tp!1127004 () Bool)

(assert (=> b!3705318 (= e!2295262 (and tp!1127000 tp!1127004))))

(assert (= (and b!3705243 ((_ is ElementMatch!10785) (regex!6026 (h!44926 rules!2525)))) b!3705315))

(assert (= (and b!3705243 ((_ is Concat!17042) (regex!6026 (h!44926 rules!2525)))) b!3705316))

(assert (= (and b!3705243 ((_ is Star!10785) (regex!6026 (h!44926 rules!2525)))) b!3705317))

(assert (= (and b!3705243 ((_ is Union!10785) (regex!6026 (h!44926 rules!2525)))) b!3705318))

(check-sat b_and!277291 (not b_next!99761) (not b_next!99763) tp_is_empty!18601 (not b!3705262) (not b!3705288) (not b!3705318) (not b!3705289) b_and!277297 (not d!1086334) b_and!277301 (not b!3705268) (not b!3705316) (not b_next!99767) (not b!3705252) (not b_next!99771) b_and!277293 (not b!3705317) (not d!1086340))
(check-sat b_and!277291 (not b_next!99761) (not b_next!99763) (not b_next!99767) b_and!277297 b_and!277301 (not b_next!99771) b_and!277293)

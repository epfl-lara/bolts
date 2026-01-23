; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321230 () Bool)

(assert start!321230)

(declare-fun b!3455057 () Bool)

(declare-fun b_free!89729 () Bool)

(declare-fun b_next!90433 () Bool)

(assert (=> b!3455057 (= b_free!89729 (not b_next!90433))))

(declare-fun tp!1077220 () Bool)

(declare-fun b_and!242811 () Bool)

(assert (=> b!3455057 (= tp!1077220 b_and!242811)))

(declare-fun b_free!89731 () Bool)

(declare-fun b_next!90435 () Bool)

(assert (=> b!3455057 (= b_free!89731 (not b_next!90435))))

(declare-fun tp!1077210 () Bool)

(declare-fun b_and!242813 () Bool)

(assert (=> b!3455057 (= tp!1077210 b_and!242813)))

(declare-fun b!3455071 () Bool)

(declare-fun b_free!89733 () Bool)

(declare-fun b_next!90437 () Bool)

(assert (=> b!3455071 (= b_free!89733 (not b_next!90437))))

(declare-fun tp!1077217 () Bool)

(declare-fun b_and!242815 () Bool)

(assert (=> b!3455071 (= tp!1077217 b_and!242815)))

(declare-fun b_free!89735 () Bool)

(declare-fun b_next!90439 () Bool)

(assert (=> b!3455071 (= b_free!89735 (not b_next!90439))))

(declare-fun tp!1077213 () Bool)

(declare-fun b_and!242817 () Bool)

(assert (=> b!3455071 (= tp!1077213 b_and!242817)))

(declare-fun b!3455060 () Bool)

(declare-fun b_free!89737 () Bool)

(declare-fun b_next!90441 () Bool)

(assert (=> b!3455060 (= b_free!89737 (not b_next!90441))))

(declare-fun tp!1077214 () Bool)

(declare-fun b_and!242819 () Bool)

(assert (=> b!3455060 (= tp!1077214 b_and!242819)))

(declare-fun b_free!89739 () Bool)

(declare-fun b_next!90443 () Bool)

(assert (=> b!3455060 (= b_free!89739 (not b_next!90443))))

(declare-fun tp!1077218 () Bool)

(declare-fun b_and!242821 () Bool)

(assert (=> b!3455060 (= tp!1077218 b_and!242821)))

(declare-fun bs!560025 () Bool)

(declare-fun b!3455086 () Bool)

(declare-fun b!3455059 () Bool)

(assert (= bs!560025 (and b!3455086 b!3455059)))

(declare-fun lambda!121687 () Int)

(declare-fun lambda!121686 () Int)

(assert (=> bs!560025 (not (= lambda!121687 lambda!121686))))

(declare-fun b!3455102 () Bool)

(declare-fun e!2140404 () Bool)

(assert (=> b!3455102 (= e!2140404 true)))

(declare-fun b!3455101 () Bool)

(declare-fun e!2140403 () Bool)

(assert (=> b!3455101 (= e!2140403 e!2140404)))

(declare-fun b!3455100 () Bool)

(declare-fun e!2140402 () Bool)

(assert (=> b!3455100 (= e!2140402 e!2140403)))

(assert (=> b!3455086 e!2140402))

(assert (= b!3455101 b!3455102))

(assert (= b!3455100 b!3455101))

(declare-datatypes ((C!20564 0))(
  ( (C!20565 (val!12330 Int)) )
))
(declare-datatypes ((Regex!10189 0))(
  ( (ElementMatch!10189 (c!591392 C!20564)) (Concat!15849 (regOne!20890 Regex!10189) (regTwo!20890 Regex!10189)) (EmptyExpr!10189) (Star!10189 (reg!10518 Regex!10189)) (EmptyLang!10189) (Union!10189 (regOne!20891 Regex!10189) (regTwo!20891 Regex!10189)) )
))
(declare-datatypes ((List!37248 0))(
  ( (Nil!37124) (Cons!37124 (h!42544 (_ BitVec 16)) (t!272265 List!37248)) )
))
(declare-datatypes ((TokenValue!5660 0))(
  ( (FloatLiteralValue!11320 (text!40065 List!37248)) (TokenValueExt!5659 (__x!23537 Int)) (Broken!28300 (value!175189 List!37248)) (Object!5783) (End!5660) (Def!5660) (Underscore!5660) (Match!5660) (Else!5660) (Error!5660) (Case!5660) (If!5660) (Extends!5660) (Abstract!5660) (Class!5660) (Val!5660) (DelimiterValue!11320 (del!5720 List!37248)) (KeywordValue!5666 (value!175190 List!37248)) (CommentValue!11320 (value!175191 List!37248)) (WhitespaceValue!11320 (value!175192 List!37248)) (IndentationValue!5660 (value!175193 List!37248)) (String!41633) (Int32!5660) (Broken!28301 (value!175194 List!37248)) (Boolean!5661) (Unit!52451) (OperatorValue!5663 (op!5720 List!37248)) (IdentifierValue!11320 (value!175195 List!37248)) (IdentifierValue!11321 (value!175196 List!37248)) (WhitespaceValue!11321 (value!175197 List!37248)) (True!11320) (False!11320) (Broken!28302 (value!175198 List!37248)) (Broken!28303 (value!175199 List!37248)) (True!11321) (RightBrace!5660) (RightBracket!5660) (Colon!5660) (Null!5660) (Comma!5660) (LeftBracket!5660) (False!11321) (LeftBrace!5660) (ImaginaryLiteralValue!5660 (text!40066 List!37248)) (StringLiteralValue!16980 (value!175200 List!37248)) (EOFValue!5660 (value!175201 List!37248)) (IdentValue!5660 (value!175202 List!37248)) (DelimiterValue!11321 (value!175203 List!37248)) (DedentValue!5660 (value!175204 List!37248)) (NewLineValue!5660 (value!175205 List!37248)) (IntegerValue!16980 (value!175206 (_ BitVec 32)) (text!40067 List!37248)) (IntegerValue!16981 (value!175207 Int) (text!40068 List!37248)) (Times!5660) (Or!5660) (Equal!5660) (Minus!5660) (Broken!28304 (value!175208 List!37248)) (And!5660) (Div!5660) (LessEqual!5660) (Mod!5660) (Concat!15850) (Not!5660) (Plus!5660) (SpaceValue!5660 (value!175209 List!37248)) (IntegerValue!16982 (value!175210 Int) (text!40069 List!37248)) (StringLiteralValue!16981 (text!40070 List!37248)) (FloatLiteralValue!11321 (text!40071 List!37248)) (BytesLiteralValue!5660 (value!175211 List!37248)) (CommentValue!11321 (value!175212 List!37248)) (StringLiteralValue!16982 (value!175213 List!37248)) (ErrorTokenValue!5660 (msg!5721 List!37248)) )
))
(declare-datatypes ((List!37249 0))(
  ( (Nil!37125) (Cons!37125 (h!42545 C!20564) (t!272266 List!37249)) )
))
(declare-datatypes ((IArray!22475 0))(
  ( (IArray!22476 (innerList!11295 List!37249)) )
))
(declare-datatypes ((Conc!11235 0))(
  ( (Node!11235 (left!28960 Conc!11235) (right!29290 Conc!11235) (csize!22700 Int) (cheight!11446 Int)) (Leaf!17561 (xs!14409 IArray!22475) (csize!22701 Int)) (Empty!11235) )
))
(declare-datatypes ((BalanceConc!22084 0))(
  ( (BalanceConc!22085 (c!591393 Conc!11235)) )
))
(declare-datatypes ((String!41634 0))(
  ( (String!41635 (value!175214 String)) )
))
(declare-datatypes ((TokenValueInjection!10748 0))(
  ( (TokenValueInjection!10749 (toValue!7654 Int) (toChars!7513 Int)) )
))
(declare-datatypes ((Rule!10660 0))(
  ( (Rule!10661 (regex!5430 Regex!10189) (tag!6034 String!41634) (isSeparator!5430 Bool) (transformation!5430 TokenValueInjection!10748)) )
))
(declare-datatypes ((List!37250 0))(
  ( (Nil!37126) (Cons!37126 (h!42546 Rule!10660) (t!272267 List!37250)) )
))
(declare-fun rules!2135 () List!37250)

(get-info :version)

(assert (= (and b!3455086 ((_ is Cons!37126) rules!2135)) b!3455100))

(declare-fun order!19737 () Int)

(declare-fun order!19739 () Int)

(declare-fun dynLambda!15612 (Int Int) Int)

(declare-fun dynLambda!15613 (Int Int) Int)

(assert (=> b!3455102 (< (dynLambda!15612 order!19737 (toValue!7654 (transformation!5430 (h!42546 rules!2135)))) (dynLambda!15613 order!19739 lambda!121687))))

(declare-fun order!19741 () Int)

(declare-fun dynLambda!15614 (Int Int) Int)

(assert (=> b!3455102 (< (dynLambda!15614 order!19741 (toChars!7513 (transformation!5430 (h!42546 rules!2135)))) (dynLambda!15613 order!19739 lambda!121687))))

(assert (=> b!3455086 true))

(declare-fun b!3455054 () Bool)

(declare-datatypes ((Unit!52452 0))(
  ( (Unit!52453) )
))
(declare-fun e!2140370 () Unit!52452)

(declare-fun Unit!52454 () Unit!52452)

(assert (=> b!3455054 (= e!2140370 Unit!52454)))

(declare-fun b!3455055 () Bool)

(declare-datatypes ((Token!10226 0))(
  ( (Token!10227 (value!175215 TokenValue!5660) (rule!8016 Rule!10660) (size!28149 Int) (originalCharacters!6144 List!37249)) )
))
(declare-fun separatorToken!241 () Token!10226)

(declare-fun e!2140377 () Bool)

(declare-fun e!2140389 () Bool)

(declare-fun tp!1077208 () Bool)

(declare-fun inv!21 (TokenValue!5660) Bool)

(assert (=> b!3455055 (= e!2140389 (and (inv!21 (value!175215 separatorToken!241)) e!2140377 tp!1077208))))

(declare-fun b!3455056 () Bool)

(declare-fun e!2140372 () Bool)

(declare-datatypes ((List!37251 0))(
  ( (Nil!37127) (Cons!37127 (h!42547 Token!10226) (t!272268 List!37251)) )
))
(declare-datatypes ((IArray!22477 0))(
  ( (IArray!22478 (innerList!11296 List!37251)) )
))
(declare-datatypes ((Conc!11236 0))(
  ( (Node!11236 (left!28961 Conc!11236) (right!29291 Conc!11236) (csize!22702 Int) (cheight!11447 Int)) (Leaf!17562 (xs!14410 IArray!22477) (csize!22703 Int)) (Empty!11236) )
))
(declare-datatypes ((BalanceConc!22086 0))(
  ( (BalanceConc!22087 (c!591394 Conc!11236)) )
))
(declare-datatypes ((tuple2!36828 0))(
  ( (tuple2!36829 (_1!21548 BalanceConc!22086) (_2!21548 BalanceConc!22084)) )
))
(declare-fun lt!1173491 () tuple2!36828)

(declare-fun isEmpty!21459 (BalanceConc!22084) Bool)

(assert (=> b!3455056 (= e!2140372 (isEmpty!21459 (_2!21548 lt!1173491)))))

(declare-fun e!2140388 () Bool)

(assert (=> b!3455057 (= e!2140388 (and tp!1077220 tp!1077210))))

(declare-fun b!3455058 () Bool)

(declare-fun e!2140383 () Bool)

(declare-fun tokens!494 () List!37251)

(declare-fun lt!1173502 () Rule!10660)

(assert (=> b!3455058 (= e!2140383 (= (rule!8016 (h!42547 tokens!494)) lt!1173502))))

(declare-fun res!1393617 () Bool)

(declare-fun e!2140387 () Bool)

(assert (=> b!3455059 (=> (not res!1393617) (not e!2140387))))

(declare-fun forall!7905 (List!37251 Int) Bool)

(assert (=> b!3455059 (= res!1393617 (forall!7905 tokens!494 lambda!121686))))

(declare-fun e!2140393 () Bool)

(assert (=> b!3455060 (= e!2140393 (and tp!1077214 tp!1077218))))

(declare-fun b!3455061 () Bool)

(declare-fun e!2140371 () Bool)

(declare-fun e!2140365 () Bool)

(assert (=> b!3455061 (= e!2140371 e!2140365)))

(declare-fun res!1393615 () Bool)

(assert (=> b!3455061 (=> res!1393615 e!2140365)))

(declare-fun lt!1173490 () List!37249)

(declare-fun lt!1173482 () List!37249)

(declare-fun lt!1173504 () List!37249)

(assert (=> b!3455061 (= res!1393615 (or (not (= lt!1173504 lt!1173482)) (not (= lt!1173490 lt!1173482))))))

(declare-fun list!13509 (BalanceConc!22084) List!37249)

(declare-fun charsOf!3444 (Token!10226) BalanceConc!22084)

(assert (=> b!3455061 (= lt!1173482 (list!13509 (charsOf!3444 (h!42547 tokens!494))))))

(declare-fun b!3455062 () Bool)

(declare-fun res!1393612 () Bool)

(assert (=> b!3455062 (=> (not res!1393612) (not e!2140387))))

(declare-fun sepAndNonSepRulesDisjointChars!1624 (List!37250 List!37250) Bool)

(assert (=> b!3455062 (= res!1393612 (sepAndNonSepRulesDisjointChars!1624 rules!2135 rules!2135))))

(declare-fun b!3455063 () Bool)

(declare-fun e!2140366 () Bool)

(declare-fun e!2140381 () Bool)

(assert (=> b!3455063 (= e!2140366 e!2140381)))

(declare-fun res!1393636 () Bool)

(assert (=> b!3455063 (=> res!1393636 e!2140381)))

(assert (=> b!3455063 (= res!1393636 (or (isSeparator!5430 (rule!8016 (h!42547 tokens!494))) (isSeparator!5430 (rule!8016 (h!42547 (t!272268 tokens!494))))))))

(declare-fun lt!1173500 () Unit!52452)

(declare-fun forallContained!1377 (List!37251 Int Token!10226) Unit!52452)

(assert (=> b!3455063 (= lt!1173500 (forallContained!1377 tokens!494 lambda!121686 (h!42547 (t!272268 tokens!494))))))

(declare-fun lt!1173486 () Unit!52452)

(assert (=> b!3455063 (= lt!1173486 (forallContained!1377 tokens!494 lambda!121686 (h!42547 tokens!494)))))

(declare-fun e!2140386 () Bool)

(declare-fun b!3455064 () Bool)

(declare-fun tp!1077215 () Bool)

(declare-fun inv!50288 (String!41634) Bool)

(declare-fun inv!50291 (TokenValueInjection!10748) Bool)

(assert (=> b!3455064 (= e!2140386 (and tp!1077215 (inv!50288 (tag!6034 (h!42546 rules!2135))) (inv!50291 (transformation!5430 (h!42546 rules!2135))) e!2140393))))

(declare-fun b!3455065 () Bool)

(declare-fun e!2140376 () Bool)

(declare-fun e!2140367 () Bool)

(assert (=> b!3455065 (= e!2140376 e!2140367)))

(declare-fun res!1393620 () Bool)

(assert (=> b!3455065 (=> res!1393620 e!2140367)))

(declare-fun lt!1173493 () List!37249)

(declare-fun lt!1173501 () List!37249)

(assert (=> b!3455065 (= res!1393620 (not (= lt!1173493 lt!1173501)))))

(declare-fun lt!1173494 () List!37249)

(declare-fun lt!1173484 () List!37249)

(declare-fun ++!9145 (List!37249 List!37249) List!37249)

(assert (=> b!3455065 (= lt!1173501 (++!9145 (++!9145 lt!1173482 lt!1173484) lt!1173494))))

(declare-fun b!3455066 () Bool)

(assert (=> b!3455066 (= e!2140387 (not e!2140371))))

(declare-fun res!1393613 () Bool)

(assert (=> b!3455066 (=> res!1393613 e!2140371)))

(assert (=> b!3455066 (= res!1393613 (not (= lt!1173490 lt!1173504)))))

(declare-datatypes ((LexerInterface!5019 0))(
  ( (LexerInterfaceExt!5016 (__x!23538 Int)) (Lexer!5017) )
))
(declare-fun thiss!18206 () LexerInterface!5019)

(declare-fun printList!1567 (LexerInterface!5019 List!37251) List!37249)

(assert (=> b!3455066 (= lt!1173504 (printList!1567 thiss!18206 (Cons!37127 (h!42547 tokens!494) Nil!37127)))))

(declare-fun lt!1173496 () BalanceConc!22084)

(assert (=> b!3455066 (= lt!1173490 (list!13509 lt!1173496))))

(declare-fun lt!1173503 () BalanceConc!22086)

(declare-fun printTailRec!1514 (LexerInterface!5019 BalanceConc!22086 Int BalanceConc!22084) BalanceConc!22084)

(assert (=> b!3455066 (= lt!1173496 (printTailRec!1514 thiss!18206 lt!1173503 0 (BalanceConc!22085 Empty!11235)))))

(declare-fun print!2084 (LexerInterface!5019 BalanceConc!22086) BalanceConc!22084)

(assert (=> b!3455066 (= lt!1173496 (print!2084 thiss!18206 lt!1173503))))

(declare-fun singletonSeq!2526 (Token!10226) BalanceConc!22086)

(assert (=> b!3455066 (= lt!1173503 (singletonSeq!2526 (h!42547 tokens!494)))))

(declare-fun b!3455067 () Bool)

(declare-fun e!2140394 () Bool)

(declare-fun lt!1173473 () tuple2!36828)

(assert (=> b!3455067 (= e!2140394 (isEmpty!21459 (_2!21548 lt!1173473)))))

(declare-fun b!3455068 () Bool)

(declare-fun e!2140395 () Bool)

(assert (=> b!3455068 (= e!2140367 e!2140395)))

(declare-fun res!1393624 () Bool)

(assert (=> b!3455068 (=> res!1393624 e!2140395)))

(declare-fun lt!1173481 () List!37249)

(assert (=> b!3455068 (= res!1393624 (not (= lt!1173493 lt!1173481)))))

(assert (=> b!3455068 (= lt!1173501 lt!1173481)))

(declare-fun lt!1173474 () List!37249)

(assert (=> b!3455068 (= lt!1173481 (++!9145 lt!1173482 lt!1173474))))

(declare-fun lt!1173495 () Unit!52452)

(declare-fun lemmaConcatAssociativity!1948 (List!37249 List!37249 List!37249) Unit!52452)

(assert (=> b!3455068 (= lt!1173495 (lemmaConcatAssociativity!1948 lt!1173482 lt!1173484 lt!1173494))))

(declare-fun b!3455069 () Bool)

(assert (=> b!3455069 (= e!2140381 e!2140376)))

(declare-fun res!1393633 () Bool)

(assert (=> b!3455069 (=> res!1393633 e!2140376)))

(declare-fun printWithSeparatorTokenList!306 (LexerInterface!5019 List!37251 Token!10226) List!37249)

(assert (=> b!3455069 (= res!1393633 (not (= lt!1173494 (++!9145 (++!9145 (list!13509 (charsOf!3444 (h!42547 (t!272268 tokens!494)))) lt!1173484) (printWithSeparatorTokenList!306 thiss!18206 (t!272268 (t!272268 tokens!494)) separatorToken!241)))))))

(assert (=> b!3455069 (= lt!1173474 (++!9145 lt!1173484 lt!1173494))))

(assert (=> b!3455069 (= lt!1173484 (list!13509 (charsOf!3444 separatorToken!241)))))

(assert (=> b!3455069 (= lt!1173494 (printWithSeparatorTokenList!306 thiss!18206 (t!272268 tokens!494) separatorToken!241))))

(assert (=> b!3455069 (= lt!1173493 (printWithSeparatorTokenList!306 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3455070 () Bool)

(declare-fun e!2140369 () Bool)

(assert (=> b!3455070 (= e!2140369 e!2140383)))

(declare-fun res!1393632 () Bool)

(assert (=> b!3455070 (=> (not res!1393632) (not e!2140383))))

(declare-fun matchR!4773 (Regex!10189 List!37249) Bool)

(assert (=> b!3455070 (= res!1393632 (matchR!4773 (regex!5430 lt!1173502) lt!1173482))))

(declare-datatypes ((Option!7507 0))(
  ( (None!7506) (Some!7506 (v!36806 Rule!10660)) )
))
(declare-fun lt!1173506 () Option!7507)

(declare-fun get!11876 (Option!7507) Rule!10660)

(assert (=> b!3455070 (= lt!1173502 (get!11876 lt!1173506))))

(declare-fun e!2140379 () Bool)

(assert (=> b!3455071 (= e!2140379 (and tp!1077217 tp!1077213))))

(declare-fun b!3455072 () Bool)

(declare-fun e!2140391 () Bool)

(declare-fun e!2140368 () Bool)

(assert (=> b!3455072 (= e!2140391 e!2140368)))

(declare-fun res!1393618 () Bool)

(assert (=> b!3455072 (=> (not res!1393618) (not e!2140368))))

(declare-fun lt!1173487 () Rule!10660)

(assert (=> b!3455072 (= res!1393618 (matchR!4773 (regex!5430 lt!1173487) lt!1173484))))

(declare-fun lt!1173478 () Option!7507)

(assert (=> b!3455072 (= lt!1173487 (get!11876 lt!1173478))))

(declare-fun b!3455073 () Bool)

(declare-fun res!1393621 () Bool)

(assert (=> b!3455073 (=> (not res!1393621) (not e!2140387))))

(assert (=> b!3455073 (= res!1393621 (and (not ((_ is Nil!37127) tokens!494)) (not ((_ is Nil!37127) (t!272268 tokens!494)))))))

(declare-fun b!3455074 () Bool)

(assert (=> b!3455074 (= e!2140365 e!2140366)))

(declare-fun res!1393616 () Bool)

(assert (=> b!3455074 (=> res!1393616 e!2140366)))

(declare-fun lt!1173483 () BalanceConc!22084)

(declare-fun isEmpty!21460 (BalanceConc!22086) Bool)

(declare-fun lex!2345 (LexerInterface!5019 List!37250 BalanceConc!22084) tuple2!36828)

(assert (=> b!3455074 (= res!1393616 (isEmpty!21460 (_1!21548 (lex!2345 thiss!18206 rules!2135 lt!1173483))))))

(declare-fun seqFromList!3913 (List!37249) BalanceConc!22084)

(assert (=> b!3455074 (= lt!1173483 (seqFromList!3913 lt!1173482))))

(declare-fun b!3455075 () Bool)

(declare-fun res!1393627 () Bool)

(assert (=> b!3455075 (=> (not res!1393627) (not e!2140387))))

(declare-fun rulesInvariant!4416 (LexerInterface!5019 List!37250) Bool)

(assert (=> b!3455075 (= res!1393627 (rulesInvariant!4416 thiss!18206 rules!2135))))

(declare-fun b!3455076 () Bool)

(declare-fun res!1393637 () Bool)

(assert (=> b!3455076 (=> res!1393637 e!2140365)))

(declare-fun rulesProduceIndividualToken!2511 (LexerInterface!5019 List!37250 Token!10226) Bool)

(assert (=> b!3455076 (= res!1393637 (not (rulesProduceIndividualToken!2511 thiss!18206 rules!2135 (h!42547 tokens!494))))))

(declare-fun e!2140373 () Bool)

(declare-fun tp!1077212 () Bool)

(declare-fun b!3455077 () Bool)

(declare-fun e!2140378 () Bool)

(declare-fun inv!50292 (Token!10226) Bool)

(assert (=> b!3455077 (= e!2140373 (and (inv!50292 (h!42547 tokens!494)) e!2140378 tp!1077212))))

(declare-fun b!3455078 () Bool)

(declare-fun res!1393631 () Bool)

(assert (=> b!3455078 (=> (not res!1393631) (not e!2140394))))

(declare-fun apply!8722 (BalanceConc!22086 Int) Token!10226)

(assert (=> b!3455078 (= res!1393631 (= (apply!8722 (_1!21548 lt!1173473) 0) (h!42547 (t!272268 tokens!494))))))

(declare-fun b!3455079 () Bool)

(assert (=> b!3455079 (= e!2140368 (= (rule!8016 separatorToken!241) lt!1173487))))

(declare-fun b!3455080 () Bool)

(declare-fun res!1393619 () Bool)

(assert (=> b!3455080 (=> (not res!1393619) (not e!2140372))))

(assert (=> b!3455080 (= res!1393619 (= (apply!8722 (_1!21548 lt!1173491) 0) separatorToken!241))))

(declare-fun b!3455081 () Bool)

(declare-fun res!1393634 () Bool)

(assert (=> b!3455081 (=> (not res!1393634) (not e!2140387))))

(assert (=> b!3455081 (= res!1393634 (isSeparator!5430 (rule!8016 separatorToken!241)))))

(declare-fun b!3455082 () Bool)

(declare-fun res!1393635 () Bool)

(assert (=> b!3455082 (=> (not res!1393635) (not e!2140387))))

(assert (=> b!3455082 (= res!1393635 (rulesProduceIndividualToken!2511 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1393630 () Bool)

(assert (=> start!321230 (=> (not res!1393630) (not e!2140387))))

(assert (=> start!321230 (= res!1393630 ((_ is Lexer!5017) thiss!18206))))

(assert (=> start!321230 e!2140387))

(assert (=> start!321230 true))

(declare-fun e!2140374 () Bool)

(assert (=> start!321230 e!2140374))

(assert (=> start!321230 e!2140373))

(assert (=> start!321230 (and (inv!50292 separatorToken!241) e!2140389)))

(declare-fun b!3455083 () Bool)

(declare-fun tp!1077216 () Bool)

(assert (=> b!3455083 (= e!2140374 (and e!2140386 tp!1077216))))

(declare-fun tp!1077219 () Bool)

(declare-fun b!3455084 () Bool)

(declare-fun e!2140385 () Bool)

(assert (=> b!3455084 (= e!2140378 (and (inv!21 (value!175215 (h!42547 tokens!494))) e!2140385 tp!1077219))))

(declare-fun b!3455085 () Bool)

(declare-fun tp!1077211 () Bool)

(assert (=> b!3455085 (= e!2140377 (and tp!1077211 (inv!50288 (tag!6034 (rule!8016 separatorToken!241))) (inv!50291 (transformation!5430 (rule!8016 separatorToken!241))) e!2140388))))

(assert (=> b!3455086 (= e!2140395 true)))

(declare-fun lt!1173489 () C!20564)

(declare-fun contains!6868 (List!37249 C!20564) Bool)

(declare-fun usedCharacters!664 (Regex!10189) List!37249)

(assert (=> b!3455086 (not (contains!6868 (usedCharacters!664 (regex!5430 (rule!8016 (h!42547 tokens!494)))) lt!1173489))))

(declare-fun lt!1173477 () Unit!52452)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!230 (LexerInterface!5019 List!37250 List!37250 Rule!10660 Rule!10660 C!20564) Unit!52452)

(assert (=> b!3455086 (= lt!1173477 (lemmaNonSepRuleNotContainsCharContainedInASepRule!230 thiss!18206 rules!2135 rules!2135 (rule!8016 (h!42547 tokens!494)) (rule!8016 separatorToken!241) lt!1173489))))

(declare-fun lt!1173488 () Unit!52452)

(assert (=> b!3455086 (= lt!1173488 (forallContained!1377 tokens!494 lambda!121687 (h!42547 (t!272268 tokens!494))))))

(assert (=> b!3455086 (= (rulesProduceIndividualToken!2511 thiss!18206 rules!2135 (h!42547 (t!272268 tokens!494))) e!2140394)))

(declare-fun res!1393626 () Bool)

(assert (=> b!3455086 (=> (not res!1393626) (not e!2140394))))

(declare-fun size!28150 (BalanceConc!22086) Int)

(assert (=> b!3455086 (= res!1393626 (= (size!28150 (_1!21548 lt!1173473)) 1))))

(declare-fun lt!1173505 () BalanceConc!22084)

(assert (=> b!3455086 (= lt!1173473 (lex!2345 thiss!18206 rules!2135 lt!1173505))))

(declare-fun lt!1173476 () BalanceConc!22086)

(assert (=> b!3455086 (= lt!1173505 (printTailRec!1514 thiss!18206 lt!1173476 0 (BalanceConc!22085 Empty!11235)))))

(assert (=> b!3455086 (= lt!1173505 (print!2084 thiss!18206 lt!1173476))))

(assert (=> b!3455086 (= lt!1173476 (singletonSeq!2526 (h!42547 (t!272268 tokens!494))))))

(assert (=> b!3455086 e!2140372))

(declare-fun res!1393625 () Bool)

(assert (=> b!3455086 (=> (not res!1393625) (not e!2140372))))

(assert (=> b!3455086 (= res!1393625 (= (size!28150 (_1!21548 lt!1173491)) 1))))

(declare-fun lt!1173492 () BalanceConc!22084)

(assert (=> b!3455086 (= lt!1173491 (lex!2345 thiss!18206 rules!2135 lt!1173492))))

(declare-fun lt!1173498 () BalanceConc!22086)

(assert (=> b!3455086 (= lt!1173492 (printTailRec!1514 thiss!18206 lt!1173498 0 (BalanceConc!22085 Empty!11235)))))

(assert (=> b!3455086 (= lt!1173492 (print!2084 thiss!18206 lt!1173498))))

(assert (=> b!3455086 (= lt!1173498 (singletonSeq!2526 separatorToken!241))))

(declare-fun lt!1173497 () Unit!52452)

(assert (=> b!3455086 (= lt!1173497 e!2140370)))

(declare-fun c!591391 () Bool)

(assert (=> b!3455086 (= c!591391 (not (contains!6868 (usedCharacters!664 (regex!5430 (rule!8016 separatorToken!241))) lt!1173489)))))

(declare-fun head!7305 (List!37249) C!20564)

(assert (=> b!3455086 (= lt!1173489 (head!7305 lt!1173484))))

(assert (=> b!3455086 e!2140391))

(declare-fun res!1393623 () Bool)

(assert (=> b!3455086 (=> (not res!1393623) (not e!2140391))))

(declare-fun isDefined!5784 (Option!7507) Bool)

(assert (=> b!3455086 (= res!1393623 (isDefined!5784 lt!1173478))))

(declare-fun getRuleFromTag!1073 (LexerInterface!5019 List!37250 String!41634) Option!7507)

(assert (=> b!3455086 (= lt!1173478 (getRuleFromTag!1073 thiss!18206 rules!2135 (tag!6034 (rule!8016 separatorToken!241))))))

(declare-fun lt!1173480 () Unit!52452)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1073 (LexerInterface!5019 List!37250 List!37249 Token!10226) Unit!52452)

(assert (=> b!3455086 (= lt!1173480 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1073 thiss!18206 rules!2135 lt!1173484 separatorToken!241))))

(declare-datatypes ((tuple2!36830 0))(
  ( (tuple2!36831 (_1!21549 Token!10226) (_2!21549 List!37249)) )
))
(declare-datatypes ((Option!7508 0))(
  ( (None!7507) (Some!7507 (v!36807 tuple2!36830)) )
))
(declare-fun maxPrefixOneRule!1726 (LexerInterface!5019 Rule!10660 List!37249) Option!7508)

(declare-fun apply!8723 (TokenValueInjection!10748 BalanceConc!22084) TokenValue!5660)

(declare-fun size!28151 (List!37249) Int)

(assert (=> b!3455086 (= (maxPrefixOneRule!1726 thiss!18206 (rule!8016 (h!42547 tokens!494)) lt!1173482) (Some!7507 (tuple2!36831 (Token!10227 (apply!8723 (transformation!5430 (rule!8016 (h!42547 tokens!494))) lt!1173483) (rule!8016 (h!42547 tokens!494)) (size!28151 lt!1173482) lt!1173482) Nil!37125)))))

(declare-fun lt!1173479 () Unit!52452)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!819 (LexerInterface!5019 List!37250 List!37249 List!37249 List!37249 Rule!10660) Unit!52452)

(assert (=> b!3455086 (= lt!1173479 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!819 thiss!18206 rules!2135 lt!1173482 lt!1173482 Nil!37125 (rule!8016 (h!42547 tokens!494))))))

(assert (=> b!3455086 e!2140369))

(declare-fun res!1393629 () Bool)

(assert (=> b!3455086 (=> (not res!1393629) (not e!2140369))))

(assert (=> b!3455086 (= res!1393629 (isDefined!5784 lt!1173506))))

(assert (=> b!3455086 (= lt!1173506 (getRuleFromTag!1073 thiss!18206 rules!2135 (tag!6034 (rule!8016 (h!42547 tokens!494)))))))

(declare-fun lt!1173499 () Unit!52452)

(assert (=> b!3455086 (= lt!1173499 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1073 thiss!18206 rules!2135 lt!1173482 (h!42547 tokens!494)))))

(declare-fun lt!1173485 () Unit!52452)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1008 (LexerInterface!5019 List!37250 List!37251 Token!10226) Unit!52452)

(assert (=> b!3455086 (= lt!1173485 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1008 thiss!18206 rules!2135 tokens!494 (h!42547 tokens!494)))))

(declare-fun b!3455087 () Bool)

(declare-fun Unit!52455 () Unit!52452)

(assert (=> b!3455087 (= e!2140370 Unit!52455)))

(declare-fun lt!1173475 () Unit!52452)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!488 (Regex!10189 List!37249 C!20564) Unit!52452)

(assert (=> b!3455087 (= lt!1173475 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!488 (regex!5430 (rule!8016 separatorToken!241)) lt!1173484 lt!1173489))))

(declare-fun res!1393628 () Bool)

(assert (=> b!3455087 (= res!1393628 (not (matchR!4773 (regex!5430 (rule!8016 separatorToken!241)) lt!1173484)))))

(declare-fun e!2140392 () Bool)

(assert (=> b!3455087 (=> (not res!1393628) (not e!2140392))))

(assert (=> b!3455087 e!2140392))

(declare-fun b!3455088 () Bool)

(declare-fun res!1393614 () Bool)

(assert (=> b!3455088 (=> (not res!1393614) (not e!2140387))))

(declare-fun isEmpty!21461 (List!37250) Bool)

(assert (=> b!3455088 (= res!1393614 (not (isEmpty!21461 rules!2135)))))

(declare-fun b!3455089 () Bool)

(declare-fun res!1393622 () Bool)

(assert (=> b!3455089 (=> (not res!1393622) (not e!2140387))))

(declare-fun rulesProduceEachTokenIndividually!1470 (LexerInterface!5019 List!37250 BalanceConc!22086) Bool)

(declare-fun seqFromList!3914 (List!37251) BalanceConc!22086)

(assert (=> b!3455089 (= res!1393622 (rulesProduceEachTokenIndividually!1470 thiss!18206 rules!2135 (seqFromList!3914 tokens!494)))))

(declare-fun b!3455090 () Bool)

(assert (=> b!3455090 (= e!2140392 false)))

(declare-fun b!3455091 () Bool)

(declare-fun tp!1077209 () Bool)

(assert (=> b!3455091 (= e!2140385 (and tp!1077209 (inv!50288 (tag!6034 (rule!8016 (h!42547 tokens!494)))) (inv!50291 (transformation!5430 (rule!8016 (h!42547 tokens!494)))) e!2140379))))

(assert (= (and start!321230 res!1393630) b!3455088))

(assert (= (and b!3455088 res!1393614) b!3455075))

(assert (= (and b!3455075 res!1393627) b!3455089))

(assert (= (and b!3455089 res!1393622) b!3455082))

(assert (= (and b!3455082 res!1393635) b!3455081))

(assert (= (and b!3455081 res!1393634) b!3455059))

(assert (= (and b!3455059 res!1393617) b!3455062))

(assert (= (and b!3455062 res!1393612) b!3455073))

(assert (= (and b!3455073 res!1393621) b!3455066))

(assert (= (and b!3455066 (not res!1393613)) b!3455061))

(assert (= (and b!3455061 (not res!1393615)) b!3455076))

(assert (= (and b!3455076 (not res!1393637)) b!3455074))

(assert (= (and b!3455074 (not res!1393616)) b!3455063))

(assert (= (and b!3455063 (not res!1393636)) b!3455069))

(assert (= (and b!3455069 (not res!1393633)) b!3455065))

(assert (= (and b!3455065 (not res!1393620)) b!3455068))

(assert (= (and b!3455068 (not res!1393624)) b!3455086))

(assert (= (and b!3455086 res!1393629) b!3455070))

(assert (= (and b!3455070 res!1393632) b!3455058))

(assert (= (and b!3455086 res!1393623) b!3455072))

(assert (= (and b!3455072 res!1393618) b!3455079))

(assert (= (and b!3455086 c!591391) b!3455087))

(assert (= (and b!3455086 (not c!591391)) b!3455054))

(assert (= (and b!3455087 res!1393628) b!3455090))

(assert (= (and b!3455086 res!1393625) b!3455080))

(assert (= (and b!3455080 res!1393619) b!3455056))

(assert (= (and b!3455086 res!1393626) b!3455078))

(assert (= (and b!3455078 res!1393631) b!3455067))

(assert (= b!3455064 b!3455060))

(assert (= b!3455083 b!3455064))

(assert (= (and start!321230 ((_ is Cons!37126) rules!2135)) b!3455083))

(assert (= b!3455091 b!3455071))

(assert (= b!3455084 b!3455091))

(assert (= b!3455077 b!3455084))

(assert (= (and start!321230 ((_ is Cons!37127) tokens!494)) b!3455077))

(assert (= b!3455085 b!3455057))

(assert (= b!3455055 b!3455085))

(assert (= start!321230 b!3455055))

(declare-fun m!3854195 () Bool)

(assert (=> b!3455072 m!3854195))

(declare-fun m!3854197 () Bool)

(assert (=> b!3455072 m!3854197))

(declare-fun m!3854199 () Bool)

(assert (=> b!3455085 m!3854199))

(declare-fun m!3854201 () Bool)

(assert (=> b!3455085 m!3854201))

(declare-fun m!3854203 () Bool)

(assert (=> b!3455056 m!3854203))

(declare-fun m!3854205 () Bool)

(assert (=> start!321230 m!3854205))

(declare-fun m!3854207 () Bool)

(assert (=> b!3455063 m!3854207))

(declare-fun m!3854209 () Bool)

(assert (=> b!3455063 m!3854209))

(declare-fun m!3854211 () Bool)

(assert (=> b!3455068 m!3854211))

(declare-fun m!3854213 () Bool)

(assert (=> b!3455068 m!3854213))

(declare-fun m!3854215 () Bool)

(assert (=> b!3455078 m!3854215))

(declare-fun m!3854217 () Bool)

(assert (=> b!3455076 m!3854217))

(declare-fun m!3854219 () Bool)

(assert (=> b!3455059 m!3854219))

(declare-fun m!3854221 () Bool)

(assert (=> b!3455082 m!3854221))

(declare-fun m!3854223 () Bool)

(assert (=> b!3455065 m!3854223))

(assert (=> b!3455065 m!3854223))

(declare-fun m!3854225 () Bool)

(assert (=> b!3455065 m!3854225))

(declare-fun m!3854227 () Bool)

(assert (=> b!3455086 m!3854227))

(declare-fun m!3854229 () Bool)

(assert (=> b!3455086 m!3854229))

(declare-fun m!3854231 () Bool)

(assert (=> b!3455086 m!3854231))

(declare-fun m!3854233 () Bool)

(assert (=> b!3455086 m!3854233))

(declare-fun m!3854235 () Bool)

(assert (=> b!3455086 m!3854235))

(declare-fun m!3854237 () Bool)

(assert (=> b!3455086 m!3854237))

(declare-fun m!3854239 () Bool)

(assert (=> b!3455086 m!3854239))

(declare-fun m!3854241 () Bool)

(assert (=> b!3455086 m!3854241))

(declare-fun m!3854243 () Bool)

(assert (=> b!3455086 m!3854243))

(declare-fun m!3854245 () Bool)

(assert (=> b!3455086 m!3854245))

(declare-fun m!3854247 () Bool)

(assert (=> b!3455086 m!3854247))

(declare-fun m!3854249 () Bool)

(assert (=> b!3455086 m!3854249))

(declare-fun m!3854251 () Bool)

(assert (=> b!3455086 m!3854251))

(declare-fun m!3854253 () Bool)

(assert (=> b!3455086 m!3854253))

(declare-fun m!3854255 () Bool)

(assert (=> b!3455086 m!3854255))

(declare-fun m!3854257 () Bool)

(assert (=> b!3455086 m!3854257))

(declare-fun m!3854259 () Bool)

(assert (=> b!3455086 m!3854259))

(declare-fun m!3854261 () Bool)

(assert (=> b!3455086 m!3854261))

(declare-fun m!3854263 () Bool)

(assert (=> b!3455086 m!3854263))

(assert (=> b!3455086 m!3854227))

(declare-fun m!3854265 () Bool)

(assert (=> b!3455086 m!3854265))

(declare-fun m!3854267 () Bool)

(assert (=> b!3455086 m!3854267))

(declare-fun m!3854269 () Bool)

(assert (=> b!3455086 m!3854269))

(declare-fun m!3854271 () Bool)

(assert (=> b!3455086 m!3854271))

(declare-fun m!3854273 () Bool)

(assert (=> b!3455086 m!3854273))

(declare-fun m!3854275 () Bool)

(assert (=> b!3455086 m!3854275))

(declare-fun m!3854277 () Bool)

(assert (=> b!3455086 m!3854277))

(declare-fun m!3854279 () Bool)

(assert (=> b!3455086 m!3854279))

(declare-fun m!3854281 () Bool)

(assert (=> b!3455086 m!3854281))

(assert (=> b!3455086 m!3854251))

(declare-fun m!3854283 () Bool)

(assert (=> b!3455086 m!3854283))

(declare-fun m!3854285 () Bool)

(assert (=> b!3455075 m!3854285))

(declare-fun m!3854287 () Bool)

(assert (=> b!3455088 m!3854287))

(declare-fun m!3854289 () Bool)

(assert (=> b!3455077 m!3854289))

(declare-fun m!3854291 () Bool)

(assert (=> b!3455089 m!3854291))

(assert (=> b!3455089 m!3854291))

(declare-fun m!3854293 () Bool)

(assert (=> b!3455089 m!3854293))

(declare-fun m!3854295 () Bool)

(assert (=> b!3455080 m!3854295))

(declare-fun m!3854297 () Bool)

(assert (=> b!3455055 m!3854297))

(declare-fun m!3854299 () Bool)

(assert (=> b!3455064 m!3854299))

(declare-fun m!3854301 () Bool)

(assert (=> b!3455064 m!3854301))

(declare-fun m!3854303 () Bool)

(assert (=> b!3455070 m!3854303))

(declare-fun m!3854305 () Bool)

(assert (=> b!3455070 m!3854305))

(declare-fun m!3854307 () Bool)

(assert (=> b!3455087 m!3854307))

(declare-fun m!3854309 () Bool)

(assert (=> b!3455087 m!3854309))

(declare-fun m!3854311 () Bool)

(assert (=> b!3455074 m!3854311))

(declare-fun m!3854313 () Bool)

(assert (=> b!3455074 m!3854313))

(declare-fun m!3854315 () Bool)

(assert (=> b!3455074 m!3854315))

(declare-fun m!3854317 () Bool)

(assert (=> b!3455066 m!3854317))

(declare-fun m!3854319 () Bool)

(assert (=> b!3455066 m!3854319))

(declare-fun m!3854321 () Bool)

(assert (=> b!3455066 m!3854321))

(declare-fun m!3854323 () Bool)

(assert (=> b!3455066 m!3854323))

(declare-fun m!3854325 () Bool)

(assert (=> b!3455066 m!3854325))

(declare-fun m!3854327 () Bool)

(assert (=> b!3455069 m!3854327))

(declare-fun m!3854329 () Bool)

(assert (=> b!3455069 m!3854329))

(declare-fun m!3854331 () Bool)

(assert (=> b!3455069 m!3854331))

(declare-fun m!3854333 () Bool)

(assert (=> b!3455069 m!3854333))

(assert (=> b!3455069 m!3854327))

(declare-fun m!3854335 () Bool)

(assert (=> b!3455069 m!3854335))

(declare-fun m!3854337 () Bool)

(assert (=> b!3455069 m!3854337))

(declare-fun m!3854339 () Bool)

(assert (=> b!3455069 m!3854339))

(declare-fun m!3854341 () Bool)

(assert (=> b!3455069 m!3854341))

(assert (=> b!3455069 m!3854339))

(assert (=> b!3455069 m!3854329))

(declare-fun m!3854343 () Bool)

(assert (=> b!3455069 m!3854343))

(declare-fun m!3854345 () Bool)

(assert (=> b!3455069 m!3854345))

(assert (=> b!3455069 m!3854335))

(assert (=> b!3455069 m!3854337))

(declare-fun m!3854347 () Bool)

(assert (=> b!3455061 m!3854347))

(assert (=> b!3455061 m!3854347))

(declare-fun m!3854349 () Bool)

(assert (=> b!3455061 m!3854349))

(declare-fun m!3854351 () Bool)

(assert (=> b!3455091 m!3854351))

(declare-fun m!3854353 () Bool)

(assert (=> b!3455091 m!3854353))

(declare-fun m!3854355 () Bool)

(assert (=> b!3455067 m!3854355))

(declare-fun m!3854357 () Bool)

(assert (=> b!3455084 m!3854357))

(declare-fun m!3854359 () Bool)

(assert (=> b!3455062 m!3854359))

(check-sat (not b!3455066) b_and!242817 b_and!242813 (not b!3455070) (not b_next!90441) (not b!3455063) (not b!3455069) (not b!3455067) (not b!3455088) (not b!3455080) (not b!3455089) (not b!3455072) b_and!242821 (not b!3455061) (not b!3455076) (not b!3455091) (not b!3455084) (not b!3455078) (not b!3455077) (not start!321230) (not b!3455082) (not b!3455086) (not b_next!90439) (not b!3455059) (not b!3455065) (not b_next!90435) b_and!242819 (not b_next!90437) (not b!3455075) (not b!3455083) (not b!3455074) (not b!3455087) (not b_next!90433) b_and!242811 (not b!3455064) (not b_next!90443) (not b!3455062) (not b!3455085) (not b!3455068) (not b!3455056) (not b!3455055) (not b!3455100) b_and!242815)
(check-sat b_and!242817 b_and!242813 (not b_next!90439) (not b_next!90441) (not b_next!90437) (not b_next!90433) b_and!242815 b_and!242821 (not b_next!90435) b_and!242819 b_and!242811 (not b_next!90443))

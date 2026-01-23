; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100432 () Bool)

(assert start!100432)

(declare-fun e!737555 () Bool)

(declare-fun b!1153616 () Bool)

(declare-datatypes ((List!11129 0))(
  ( (Nil!11105) (Cons!11105 (h!16506 (_ BitVec 16)) (t!108663 List!11129)) )
))
(declare-datatypes ((TokenValue!1980 0))(
  ( (FloatLiteralValue!3960 (text!14305 List!11129)) (TokenValueExt!1979 (__x!7673 Int)) (Broken!9900 (value!62521 List!11129)) (Object!2003) (End!1980) (Def!1980) (Underscore!1980) (Match!1980) (Else!1980) (Error!1980) (Case!1980) (If!1980) (Extends!1980) (Abstract!1980) (Class!1980) (Val!1980) (DelimiterValue!3960 (del!2040 List!11129)) (KeywordValue!1986 (value!62522 List!11129)) (CommentValue!3960 (value!62523 List!11129)) (WhitespaceValue!3960 (value!62524 List!11129)) (IndentationValue!1980 (value!62525 List!11129)) (String!13489) (Int32!1980) (Broken!9901 (value!62526 List!11129)) (Boolean!1981) (Unit!17165) (OperatorValue!1983 (op!2040 List!11129)) (IdentifierValue!3960 (value!62527 List!11129)) (IdentifierValue!3961 (value!62528 List!11129)) (WhitespaceValue!3961 (value!62529 List!11129)) (True!3960) (False!3960) (Broken!9902 (value!62530 List!11129)) (Broken!9903 (value!62531 List!11129)) (True!3961) (RightBrace!1980) (RightBracket!1980) (Colon!1980) (Null!1980) (Comma!1980) (LeftBracket!1980) (False!3961) (LeftBrace!1980) (ImaginaryLiteralValue!1980 (text!14306 List!11129)) (StringLiteralValue!5940 (value!62532 List!11129)) (EOFValue!1980 (value!62533 List!11129)) (IdentValue!1980 (value!62534 List!11129)) (DelimiterValue!3961 (value!62535 List!11129)) (DedentValue!1980 (value!62536 List!11129)) (NewLineValue!1980 (value!62537 List!11129)) (IntegerValue!5940 (value!62538 (_ BitVec 32)) (text!14307 List!11129)) (IntegerValue!5941 (value!62539 Int) (text!14308 List!11129)) (Times!1980) (Or!1980) (Equal!1980) (Minus!1980) (Broken!9904 (value!62540 List!11129)) (And!1980) (Div!1980) (LessEqual!1980) (Mod!1980) (Concat!5164) (Not!1980) (Plus!1980) (SpaceValue!1980 (value!62541 List!11129)) (IntegerValue!5942 (value!62542 Int) (text!14309 List!11129)) (StringLiteralValue!5941 (text!14310 List!11129)) (FloatLiteralValue!3961 (text!14311 List!11129)) (BytesLiteralValue!1980 (value!62543 List!11129)) (CommentValue!3961 (value!62544 List!11129)) (StringLiteralValue!5942 (value!62545 List!11129)) (ErrorTokenValue!1980 (msg!2041 List!11129)) )
))
(declare-datatypes ((C!6686 0))(
  ( (C!6687 (val!3599 Int)) )
))
(declare-datatypes ((Regex!3184 0))(
  ( (ElementMatch!3184 (c!193904 C!6686)) (Concat!5165 (regOne!6880 Regex!3184) (regTwo!6880 Regex!3184)) (EmptyExpr!3184) (Star!3184 (reg!3513 Regex!3184)) (EmptyLang!3184) (Union!3184 (regOne!6881 Regex!3184) (regTwo!6881 Regex!3184)) )
))
(declare-datatypes ((String!13490 0))(
  ( (String!13491 (value!62546 String)) )
))
(declare-datatypes ((List!11130 0))(
  ( (Nil!11106) (Cons!11106 (h!16507 C!6686) (t!108664 List!11130)) )
))
(declare-datatypes ((IArray!7185 0))(
  ( (IArray!7186 (innerList!3650 List!11130)) )
))
(declare-datatypes ((Conc!3590 0))(
  ( (Node!3590 (left!9669 Conc!3590) (right!9999 Conc!3590) (csize!7410 Int) (cheight!3801 Int)) (Leaf!5558 (xs!6295 IArray!7185) (csize!7411 Int)) (Empty!3590) )
))
(declare-datatypes ((BalanceConc!7202 0))(
  ( (BalanceConc!7203 (c!193905 Conc!3590)) )
))
(declare-datatypes ((TokenValueInjection!3660 0))(
  ( (TokenValueInjection!3661 (toValue!3015 Int) (toChars!2874 Int)) )
))
(declare-datatypes ((Rule!3628 0))(
  ( (Rule!3629 (regex!1914 Regex!3184) (tag!2176 String!13490) (isSeparator!1914 Bool) (transformation!1914 TokenValueInjection!3660)) )
))
(declare-datatypes ((Token!3490 0))(
  ( (Token!3491 (value!62547 TokenValue!1980) (rule!3335 Rule!3628) (size!8760 Int) (originalCharacters!2468 List!11130)) )
))
(declare-datatypes ((List!11131 0))(
  ( (Nil!11107) (Cons!11107 (h!16508 Token!3490) (t!108665 List!11131)) )
))
(declare-datatypes ((List!11132 0))(
  ( (Nil!11108) (Cons!11108 (h!16509 Rule!3628) (t!108666 List!11132)) )
))
(declare-datatypes ((IArray!7187 0))(
  ( (IArray!7188 (innerList!3651 List!11131)) )
))
(declare-datatypes ((Conc!3591 0))(
  ( (Node!3591 (left!9670 Conc!3591) (right!10000 Conc!3591) (csize!7412 Int) (cheight!3802 Int)) (Leaf!5559 (xs!6296 IArray!7187) (csize!7413 Int)) (Empty!3591) )
))
(declare-datatypes ((BalanceConc!7204 0))(
  ( (BalanceConc!7205 (c!193906 Conc!3591)) )
))
(declare-datatypes ((PrintableTokens!514 0))(
  ( (PrintableTokens!515 (rules!9375 List!11132) (tokens!1513 BalanceConc!7204)) )
))
(declare-fun thiss!10527 () PrintableTokens!514)

(declare-fun e!737556 () Bool)

(declare-fun tp!332675 () Bool)

(declare-fun inv!14590 (BalanceConc!7204) Bool)

(assert (=> b!1153616 (= e!737555 (and tp!332675 (inv!14590 (tokens!1513 thiss!10527)) e!737556))))

(declare-fun b!1153617 () Bool)

(declare-fun tp!332676 () Bool)

(declare-fun inv!14591 (Conc!3591) Bool)

(assert (=> b!1153617 (= e!737556 (and (inv!14591 (c!193906 (tokens!1513 thiss!10527))) tp!332676))))

(declare-fun res!518943 () Bool)

(declare-fun e!737554 () Bool)

(assert (=> start!100432 (=> (not res!518943) (not e!737554))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100432 (= res!518943 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100432 e!737554))

(assert (=> start!100432 true))

(declare-fun inv!14592 (PrintableTokens!514) Bool)

(assert (=> start!100432 (and (inv!14592 thiss!10527) e!737555)))

(declare-fun b!1153615 () Bool)

(assert (=> b!1153615 (= e!737554 false)))

(declare-datatypes ((Unit!17166 0))(
  ( (Unit!17167) )
))
(declare-fun lt!392450 () Unit!17166)

(declare-fun lemmaInvariant!101 (PrintableTokens!514) Unit!17166)

(assert (=> b!1153615 (= lt!392450 (lemmaInvariant!101 thiss!10527))))

(declare-fun b!1153614 () Bool)

(declare-fun res!518944 () Bool)

(assert (=> b!1153614 (=> (not res!518944) (not e!737554))))

(declare-fun size!8761 (BalanceConc!7204) Int)

(assert (=> b!1153614 (= res!518944 (<= to!267 (size!8761 (tokens!1513 thiss!10527))))))

(assert (= (and start!100432 res!518943) b!1153614))

(assert (= (and b!1153614 res!518944) b!1153615))

(assert (= b!1153616 b!1153617))

(assert (= start!100432 b!1153616))

(declare-fun m!1321009 () Bool)

(assert (=> b!1153617 m!1321009))

(declare-fun m!1321011 () Bool)

(assert (=> b!1153616 m!1321011))

(declare-fun m!1321013 () Bool)

(assert (=> b!1153615 m!1321013))

(declare-fun m!1321015 () Bool)

(assert (=> b!1153614 m!1321015))

(declare-fun m!1321017 () Bool)

(assert (=> start!100432 m!1321017))

(push 1)

(assert (not b!1153617))

(assert (not b!1153615))

(assert (not b!1153614))

(assert (not b!1153616))

(assert (not start!100432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100428 () Bool)

(assert start!100428)

(declare-fun b!1153566 () Bool)

(assert (=> b!1153566 true))

(declare-fun res!518923 () Bool)

(declare-fun e!737531 () Bool)

(assert (=> b!1153566 (=> (not res!518923) (not e!737531))))

(declare-datatypes ((List!11119 0))(
  ( (Nil!11095) (Cons!11095 (h!16496 Int) (t!108653 List!11119)) )
))
(declare-datatypes ((IArray!7169 0))(
  ( (IArray!7170 (innerList!3642 List!11119)) )
))
(declare-datatypes ((Conc!3582 0))(
  ( (Node!3582 (left!9658 Conc!3582) (right!9988 Conc!3582) (csize!7394 Int) (cheight!3793 Int)) (Leaf!5549 (xs!6287 IArray!7169) (csize!7395 Int)) (Empty!3582) )
))
(declare-datatypes ((BalanceConc!7186 0))(
  ( (BalanceConc!7187 (c!193894 Conc!3582)) )
))
(declare-fun indices!2 () BalanceConc!7186)

(declare-fun lambda!46404 () Int)

(declare-fun forall!2828 (BalanceConc!7186 Int) Bool)

(assert (=> b!1153566 (= res!518923 (forall!2828 indices!2 lambda!46404))))

(declare-fun res!518920 () Bool)

(assert (=> start!100428 (=> (not res!518920) (not e!737531))))

(declare-datatypes ((List!11120 0))(
  ( (Nil!11096) (Cons!11096 (h!16497 (_ BitVec 16)) (t!108654 List!11120)) )
))
(declare-datatypes ((TokenValue!1978 0))(
  ( (FloatLiteralValue!3956 (text!14291 List!11120)) (TokenValueExt!1977 (__x!7671 Int)) (Broken!9890 (value!62464 List!11120)) (Object!2001) (End!1978) (Def!1978) (Underscore!1978) (Match!1978) (Else!1978) (Error!1978) (Case!1978) (If!1978) (Extends!1978) (Abstract!1978) (Class!1978) (Val!1978) (DelimiterValue!3956 (del!2038 List!11120)) (KeywordValue!1984 (value!62465 List!11120)) (CommentValue!3956 (value!62466 List!11120)) (WhitespaceValue!3956 (value!62467 List!11120)) (IndentationValue!1978 (value!62468 List!11120)) (String!13479) (Int32!1978) (Broken!9891 (value!62469 List!11120)) (Boolean!1979) (Unit!17163) (OperatorValue!1981 (op!2038 List!11120)) (IdentifierValue!3956 (value!62470 List!11120)) (IdentifierValue!3957 (value!62471 List!11120)) (WhitespaceValue!3957 (value!62472 List!11120)) (True!3956) (False!3956) (Broken!9892 (value!62473 List!11120)) (Broken!9893 (value!62474 List!11120)) (True!3957) (RightBrace!1978) (RightBracket!1978) (Colon!1978) (Null!1978) (Comma!1978) (LeftBracket!1978) (False!3957) (LeftBrace!1978) (ImaginaryLiteralValue!1978 (text!14292 List!11120)) (StringLiteralValue!5934 (value!62475 List!11120)) (EOFValue!1978 (value!62476 List!11120)) (IdentValue!1978 (value!62477 List!11120)) (DelimiterValue!3957 (value!62478 List!11120)) (DedentValue!1978 (value!62479 List!11120)) (NewLineValue!1978 (value!62480 List!11120)) (IntegerValue!5934 (value!62481 (_ BitVec 32)) (text!14293 List!11120)) (IntegerValue!5935 (value!62482 Int) (text!14294 List!11120)) (Times!1978) (Or!1978) (Equal!1978) (Minus!1978) (Broken!9894 (value!62483 List!11120)) (And!1978) (Div!1978) (LessEqual!1978) (Mod!1978) (Concat!5160) (Not!1978) (Plus!1978) (SpaceValue!1978 (value!62484 List!11120)) (IntegerValue!5936 (value!62485 Int) (text!14295 List!11120)) (StringLiteralValue!5935 (text!14296 List!11120)) (FloatLiteralValue!3957 (text!14297 List!11120)) (BytesLiteralValue!1978 (value!62486 List!11120)) (CommentValue!3957 (value!62487 List!11120)) (StringLiteralValue!5936 (value!62488 List!11120)) (ErrorTokenValue!1978 (msg!2039 List!11120)) )
))
(declare-datatypes ((Regex!3182 0))(
  ( (ElementMatch!3182 (c!193895 (_ BitVec 16))) (Concat!5161 (regOne!6876 Regex!3182) (regTwo!6876 Regex!3182)) (EmptyExpr!3182) (Star!3182 (reg!3511 Regex!3182)) (EmptyLang!3182) (Union!3182 (regOne!6877 Regex!3182) (regTwo!6877 Regex!3182)) )
))
(declare-datatypes ((String!13480 0))(
  ( (String!13481 (value!62489 String)) )
))
(declare-datatypes ((IArray!7171 0))(
  ( (IArray!7172 (innerList!3643 List!11120)) )
))
(declare-datatypes ((Conc!3583 0))(
  ( (Node!3583 (left!9659 Conc!3583) (right!9989 Conc!3583) (csize!7396 Int) (cheight!3794 Int)) (Leaf!5550 (xs!6288 IArray!7171) (csize!7397 Int)) (Empty!3583) )
))
(declare-datatypes ((BalanceConc!7188 0))(
  ( (BalanceConc!7189 (c!193896 Conc!3583)) )
))
(declare-datatypes ((TokenValueInjection!3656 0))(
  ( (TokenValueInjection!3657 (toValue!3013 Int) (toChars!2872 Int)) )
))
(declare-datatypes ((Rule!3624 0))(
  ( (Rule!3625 (regex!1912 Regex!3182) (tag!2174 String!13480) (isSeparator!1912 Bool) (transformation!1912 TokenValueInjection!3656)) )
))
(declare-datatypes ((Token!3486 0))(
  ( (Token!3487 (value!62490 TokenValue!1978) (rule!3333 Rule!3624) (size!8754 Int) (originalCharacters!2466 List!11120)) )
))
(declare-datatypes ((List!11121 0))(
  ( (Nil!11097) (Cons!11097 (h!16498 Token!3486) (t!108655 List!11121)) )
))
(declare-datatypes ((IArray!7173 0))(
  ( (IArray!7174 (innerList!3644 List!11121)) )
))
(declare-datatypes ((Conc!3584 0))(
  ( (Node!3584 (left!9660 Conc!3584) (right!9990 Conc!3584) (csize!7398 Int) (cheight!3795 Int)) (Leaf!5551 (xs!6289 IArray!7173) (csize!7399 Int)) (Empty!3584) )
))
(declare-datatypes ((List!11122 0))(
  ( (Nil!11098) (Cons!11098 (h!16499 Rule!3624) (t!108656 List!11122)) )
))
(declare-datatypes ((BalanceConc!7190 0))(
  ( (BalanceConc!7191 (c!193897 Conc!3584)) )
))
(declare-datatypes ((PrintableTokens!510 0))(
  ( (PrintableTokens!511 (rules!9373 List!11122) (tokens!1511 BalanceConc!7190)) )
))
(declare-fun pt!21 () PrintableTokens!510)

(declare-fun size!108 () Int)

(declare-fun size!8755 (PrintableTokens!510) Int)

(assert (=> start!100428 (= res!518920 (= (size!8755 pt!21) size!108))))

(assert (=> start!100428 e!737531))

(declare-fun e!737528 () Bool)

(declare-fun inv!14573 (PrintableTokens!510) Bool)

(assert (=> start!100428 (and (inv!14573 pt!21) e!737528)))

(assert (=> start!100428 true))

(declare-fun e!737530 () Bool)

(declare-fun inv!14574 (BalanceConc!7186) Bool)

(assert (=> start!100428 (and (inv!14574 indices!2) e!737530)))

(declare-datatypes ((List!11123 0))(
  ( (Nil!11099) (Cons!11099 (h!16500 PrintableTokens!510) (t!108657 List!11123)) )
))
(declare-datatypes ((IArray!7175 0))(
  ( (IArray!7176 (innerList!3645 List!11123)) )
))
(declare-datatypes ((Conc!3585 0))(
  ( (Node!3585 (left!9661 Conc!3585) (right!9991 Conc!3585) (csize!7400 Int) (cheight!3796 Int)) (Leaf!5552 (xs!6290 IArray!7175) (csize!7401 Int)) (Empty!3585) )
))
(declare-datatypes ((BalanceConc!7192 0))(
  ( (BalanceConc!7193 (c!193898 Conc!3585)) )
))
(declare-fun acc!225 () BalanceConc!7192)

(declare-fun e!737529 () Bool)

(declare-fun inv!14575 (BalanceConc!7192) Bool)

(assert (=> start!100428 (and (inv!14575 acc!225) e!737529)))

(declare-fun b!1153567 () Bool)

(declare-fun e!737532 () Bool)

(declare-fun tp!332657 () Bool)

(declare-fun inv!14576 (BalanceConc!7190) Bool)

(assert (=> b!1153567 (= e!737528 (and tp!332657 (inv!14576 (tokens!1511 pt!21)) e!737532))))

(declare-fun b!1153568 () Bool)

(declare-fun tp!332655 () Bool)

(declare-fun inv!14577 (Conc!3582) Bool)

(assert (=> b!1153568 (= e!737530 (and (inv!14577 (c!193894 indices!2)) tp!332655))))

(declare-fun b!1153569 () Bool)

(declare-fun res!518921 () Bool)

(assert (=> b!1153569 (=> (not res!518921) (not e!737531))))

(declare-fun lambda!46405 () Int)

(declare-fun forall!2829 (BalanceConc!7192 Int) Bool)

(assert (=> b!1153569 (= res!518921 (forall!2829 acc!225 lambda!46405))))

(declare-fun b!1153570 () Bool)

(declare-fun res!518919 () Bool)

(assert (=> b!1153570 (=> (not res!518919) (not e!737531))))

(declare-fun size!8756 (BalanceConc!7186) Int)

(assert (=> b!1153570 (= res!518919 (< (size!8756 indices!2) 2))))

(declare-fun b!1153571 () Bool)

(declare-fun tp!332656 () Bool)

(declare-fun inv!14578 (Conc!3584) Bool)

(assert (=> b!1153571 (= e!737532 (and (inv!14578 (c!193897 (tokens!1511 pt!21))) tp!332656))))

(declare-fun b!1153572 () Bool)

(assert (=> b!1153572 (= e!737531 (not (forall!2829 acc!225 lambda!46405)))))

(declare-fun b!1153573 () Bool)

(declare-fun tp!332658 () Bool)

(declare-fun inv!14579 (Conc!3585) Bool)

(assert (=> b!1153573 (= e!737529 (and (inv!14579 (c!193898 acc!225)) tp!332658))))

(declare-fun b!1153574 () Bool)

(declare-fun res!518922 () Bool)

(assert (=> b!1153574 (=> (not res!518922) (not e!737531))))

(declare-fun usesJsonRules!0 (PrintableTokens!510) Bool)

(assert (=> b!1153574 (= res!518922 (usesJsonRules!0 pt!21))))

(assert (= (and start!100428 res!518920) b!1153566))

(assert (= (and b!1153566 res!518923) b!1153574))

(assert (= (and b!1153574 res!518922) b!1153569))

(assert (= (and b!1153569 res!518921) b!1153570))

(assert (= (and b!1153570 res!518919) b!1153572))

(assert (= b!1153567 b!1153571))

(assert (= start!100428 b!1153567))

(assert (= start!100428 b!1153568))

(assert (= start!100428 b!1153573))

(declare-fun m!1320961 () Bool)

(assert (=> b!1153574 m!1320961))

(declare-fun m!1320963 () Bool)

(assert (=> b!1153569 m!1320963))

(declare-fun m!1320965 () Bool)

(assert (=> b!1153573 m!1320965))

(declare-fun m!1320967 () Bool)

(assert (=> b!1153566 m!1320967))

(declare-fun m!1320969 () Bool)

(assert (=> b!1153567 m!1320969))

(declare-fun m!1320971 () Bool)

(assert (=> b!1153571 m!1320971))

(declare-fun m!1320973 () Bool)

(assert (=> b!1153568 m!1320973))

(declare-fun m!1320975 () Bool)

(assert (=> b!1153570 m!1320975))

(assert (=> b!1153572 m!1320963))

(declare-fun m!1320977 () Bool)

(assert (=> start!100428 m!1320977))

(declare-fun m!1320979 () Bool)

(assert (=> start!100428 m!1320979))

(declare-fun m!1320981 () Bool)

(assert (=> start!100428 m!1320981))

(declare-fun m!1320983 () Bool)

(assert (=> start!100428 m!1320983))

(push 1)

(assert (not b!1153572))

(assert (not b!1153567))

(assert (not b!1153570))

(assert (not b!1153574))

(assert (not b!1153566))

(assert (not start!100428))

(assert (not b!1153568))

(assert (not b!1153569))

(assert (not b!1153571))

(assert (not b!1153573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


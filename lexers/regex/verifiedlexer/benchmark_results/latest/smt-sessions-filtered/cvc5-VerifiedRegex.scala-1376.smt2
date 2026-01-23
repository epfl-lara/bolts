; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73314 () Bool)

(assert start!73314)

(assert (=> start!73314 true))

(declare-fun b!820792 () Bool)

(assert (=> b!820792 true))

(assert (=> b!820792 true))

(declare-fun b!820799 () Bool)

(declare-fun e!542283 () Bool)

(declare-datatypes ((List!8836 0))(
  ( (Nil!8820) (Cons!8820 (h!14221 (_ BitVec 16)) (t!92965 List!8836)) )
))
(declare-datatypes ((IArray!5881 0))(
  ( (IArray!5882 (innerList!2998 List!8836)) )
))
(declare-datatypes ((Conc!2938 0))(
  ( (Node!2938 (left!6530 Conc!2938) (right!6860 Conc!2938) (csize!6106 Int) (cheight!3149 Int)) (Leaf!4315 (xs!5627 IArray!5881) (csize!6107 Int)) (Empty!2938) )
))
(declare-datatypes ((BalanceConc!5890 0))(
  ( (BalanceConc!5891 (c!133013 Conc!2938)) )
))
(declare-fun x!176281 () BalanceConc!5890)

(declare-fun tp!256621 () Bool)

(declare-fun inv!11188 (Conc!2938) Bool)

(assert (=> b!820799 (= e!542283 (and (inv!11188 (c!133013 x!176281)) tp!256621))))

(declare-fun inst!644 () Bool)

(declare-datatypes ((BytesLiteralValueInjection!8 0))(
  ( (BytesLiteralValueInjection!9) )
))
(declare-fun thiss!4819 () BytesLiteralValueInjection!8)

(declare-fun inv!11189 (BalanceConc!5890) Bool)

(declare-fun list!3495 (BalanceConc!5890) List!8836)

(declare-datatypes ((TokenValue!1711 0))(
  ( (FloatLiteralValue!3422 (text!12422 List!8836)) (TokenValueExt!1710 (__x!7173 Int)) (Broken!8555 (value!53495 List!8836)) (Object!1726) (End!1711) (Def!1711) (Underscore!1711) (Match!1711) (Else!1711) (Error!1711) (Case!1711) (If!1711) (Extends!1711) (Abstract!1711) (Class!1711) (Val!1711) (DelimiterValue!3422 (del!1771 List!8836)) (KeywordValue!1717 (value!53496 List!8836)) (CommentValue!3422 (value!53497 List!8836)) (WhitespaceValue!3422 (value!53498 List!8836)) (IndentationValue!1711 (value!53499 List!8836)) (String!10358) (Int32!1711) (Broken!8556 (value!53500 List!8836)) (Boolean!1712) (Unit!13337) (OperatorValue!1714 (op!1771 List!8836)) (IdentifierValue!3422 (value!53501 List!8836)) (IdentifierValue!3423 (value!53502 List!8836)) (WhitespaceValue!3423 (value!53503 List!8836)) (True!3422) (False!3422) (Broken!8557 (value!53504 List!8836)) (Broken!8558 (value!53505 List!8836)) (True!3423) (RightBrace!1711) (RightBracket!1711) (Colon!1711) (Null!1711) (Comma!1711) (LeftBracket!1711) (False!3423) (LeftBrace!1711) (ImaginaryLiteralValue!1711 (text!12423 List!8836)) (StringLiteralValue!5133 (value!53506 List!8836)) (EOFValue!1711 (value!53507 List!8836)) (IdentValue!1711 (value!53508 List!8836)) (DelimiterValue!3423 (value!53509 List!8836)) (DedentValue!1711 (value!53510 List!8836)) (NewLineValue!1711 (value!53511 List!8836)) (IntegerValue!5133 (value!53512 (_ BitVec 32)) (text!12424 List!8836)) (IntegerValue!5134 (value!53513 Int) (text!12425 List!8836)) (Times!1711) (Or!1711) (Equal!1711) (Minus!1711) (Broken!8559 (value!53514 List!8836)) (And!1711) (Div!1711) (LessEqual!1711) (Mod!1711) (Concat!3741) (Not!1711) (Plus!1711) (SpaceValue!1711 (value!53515 List!8836)) (IntegerValue!5135 (value!53516 Int) (text!12426 List!8836)) (StringLiteralValue!5134 (text!12427 List!8836)) (FloatLiteralValue!3423 (text!12428 List!8836)) (BytesLiteralValue!1711 (value!53517 List!8836)) (CommentValue!3423 (value!53518 List!8836)) (StringLiteralValue!5135 (value!53519 List!8836)) (ErrorTokenValue!1711 (msg!1772 List!8836)) )
))
(declare-fun toCharacters!23 (BytesLiteralValueInjection!8 TokenValue!1711) BalanceConc!5890)

(declare-fun toValue!30 (BytesLiteralValueInjection!8 BalanceConc!5890) TokenValue!1711)

(assert (=> start!73314 (= inst!644 (=> (and (inv!11189 x!176281) e!542283) (= (list!3495 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176281))) (list!3495 x!176281))))))

(assert (= start!73314 b!820799))

(declare-fun m!1061781 () Bool)

(assert (=> b!820799 m!1061781))

(declare-fun m!1061783 () Bool)

(assert (=> start!73314 m!1061783))

(declare-fun m!1061785 () Bool)

(assert (=> start!73314 m!1061785))

(assert (=> start!73314 m!1061783))

(declare-fun m!1061787 () Bool)

(assert (=> start!73314 m!1061787))

(assert (=> start!73314 m!1061785))

(declare-fun m!1061789 () Bool)

(assert (=> start!73314 m!1061789))

(declare-fun m!1061791 () Bool)

(assert (=> start!73314 m!1061791))

(declare-fun bs!228802 () Bool)

(declare-fun neg-inst!644 () Bool)

(declare-fun s!151207 () Bool)

(assert (= bs!228802 (and neg-inst!644 s!151207)))

(assert (=> bs!228802 (=> true (= (list!3495 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176281))) (list!3495 x!176281)))))

(assert (=> m!1061791 m!1061783))

(assert (=> m!1061791 m!1061785))

(assert (=> m!1061791 m!1061789))

(assert (=> m!1061791 s!151207))

(assert (=> m!1061783 s!151207))

(declare-fun bs!228803 () Bool)

(assert (= bs!228803 (and neg-inst!644 start!73314)))

(assert (=> bs!228803 (= true inst!644)))

(declare-fun res!378834 () Bool)

(declare-fun e!542282 () Bool)

(assert (=> start!73314 (=> res!378834 e!542282)))

(declare-fun lambda!24410 () Int)

(declare-fun Forall!382 (Int) Bool)

(assert (=> start!73314 (= res!378834 (not (Forall!382 lambda!24410)))))

(assert (=> start!73314 (= (Forall!382 lambda!24410) inst!644)))

(assert (=> start!73314 (not e!542282)))

(assert (=> start!73314 true))

(declare-fun lambda!24411 () Int)

(declare-fun lambda!24412 () Int)

(declare-fun semiInverseModEq!627 (Int Int) Bool)

(assert (=> b!820792 (= e!542282 (semiInverseModEq!627 lambda!24411 lambda!24412))))

(assert (=> b!820792 (= (semiInverseModEq!627 lambda!24411 lambda!24412) (Forall!382 lambda!24410))))

(assert (= neg-inst!644 inst!644))

(assert (= (and start!73314 (not res!378834)) b!820792))

(declare-fun m!1061793 () Bool)

(assert (=> start!73314 m!1061793))

(assert (=> start!73314 m!1061793))

(declare-fun m!1061795 () Bool)

(assert (=> b!820792 m!1061795))

(assert (=> b!820792 m!1061795))

(assert (=> b!820792 m!1061793))

(push 1)

(assert (not b!820792))

(assert (not start!73314))

(assert (not b!820799))

(assert (not bs!228802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


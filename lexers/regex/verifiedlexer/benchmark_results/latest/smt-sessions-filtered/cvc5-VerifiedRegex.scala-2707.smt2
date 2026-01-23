; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145494 () Bool)

(assert start!145494)

(declare-datatypes ((List!17058 0))(
  ( (Nil!16988) (Cons!16988 (h!22389 (_ BitVec 16)) (t!141685 List!17058)) )
))
(declare-datatypes ((TokenValue!3064 0))(
  ( (FloatLiteralValue!6128 (text!21893 List!17058)) (TokenValueExt!3063 (__x!11432 Int)) (Broken!15320 (value!94407 List!17058)) (Object!3133) (End!3064) (Def!3064) (Underscore!3064) (Match!3064) (Else!3064) (Error!3064) (Case!3064) (If!3064) (Extends!3064) (Abstract!3064) (Class!3064) (Val!3064) (DelimiterValue!6128 (del!3124 List!17058)) (KeywordValue!3070 (value!94408 List!17058)) (CommentValue!6128 (value!94409 List!17058)) (WhitespaceValue!6128 (value!94410 List!17058)) (IndentationValue!3064 (value!94411 List!17058)) (String!19653) (Int32!3064) (Broken!15321 (value!94412 List!17058)) (Boolean!3065) (Unit!26183) (OperatorValue!3067 (op!3124 List!17058)) (IdentifierValue!6128 (value!94413 List!17058)) (IdentifierValue!6129 (value!94414 List!17058)) (WhitespaceValue!6129 (value!94415 List!17058)) (True!6128) (False!6128) (Broken!15322 (value!94416 List!17058)) (Broken!15323 (value!94417 List!17058)) (True!6129) (RightBrace!3064) (RightBracket!3064) (Colon!3064) (Null!3064) (Comma!3064) (LeftBracket!3064) (False!6129) (LeftBrace!3064) (ImaginaryLiteralValue!3064 (text!21894 List!17058)) (StringLiteralValue!9192 (value!94418 List!17058)) (EOFValue!3064 (value!94419 List!17058)) (IdentValue!3064 (value!94420 List!17058)) (DelimiterValue!6129 (value!94421 List!17058)) (DedentValue!3064 (value!94422 List!17058)) (NewLineValue!3064 (value!94423 List!17058)) (IntegerValue!9192 (value!94424 (_ BitVec 32)) (text!21895 List!17058)) (IntegerValue!9193 (value!94425 Int) (text!21896 List!17058)) (Times!3064) (Or!3064) (Equal!3064) (Minus!3064) (Broken!15324 (value!94426 List!17058)) (And!3064) (Div!3064) (LessEqual!3064) (Mod!3064) (Concat!7366) (Not!3064) (Plus!3064) (SpaceValue!3064 (value!94427 List!17058)) (IntegerValue!9194 (value!94428 Int) (text!21897 List!17058)) (StringLiteralValue!9193 (text!21898 List!17058)) (FloatLiteralValue!6129 (text!21899 List!17058)) (BytesLiteralValue!3064 (value!94429 List!17058)) (CommentValue!6129 (value!94430 List!17058)) (StringLiteralValue!9194 (value!94431 List!17058)) (ErrorTokenValue!3064 (msg!3125 List!17058)) )
))
(declare-datatypes ((C!8778 0))(
  ( (C!8779 (val!4985 Int)) )
))
(declare-datatypes ((List!17059 0))(
  ( (Nil!16989) (Cons!16989 (h!22390 C!8778) (t!141686 List!17059)) )
))
(declare-datatypes ((IArray!11197 0))(
  ( (IArray!11198 (innerList!5656 List!17059)) )
))
(declare-datatypes ((Conc!5596 0))(
  ( (Node!5596 (left!13777 Conc!5596) (right!14107 Conc!5596) (csize!11422 Int) (cheight!5807 Int)) (Leaf!8304 (xs!8396 IArray!11197) (csize!11423 Int)) (Empty!5596) )
))
(declare-datatypes ((BalanceConc!11136 0))(
  ( (BalanceConc!11137 (c!253565 Conc!5596)) )
))
(declare-datatypes ((Regex!4302 0))(
  ( (ElementMatch!4302 (c!253566 C!8778)) (Concat!7367 (regOne!9116 Regex!4302) (regTwo!9116 Regex!4302)) (EmptyExpr!4302) (Star!4302 (reg!4631 Regex!4302)) (EmptyLang!4302) (Union!4302 (regOne!9117 Regex!4302) (regTwo!9117 Regex!4302)) )
))
(declare-datatypes ((String!19654 0))(
  ( (String!19655 (value!94432 String)) )
))
(declare-datatypes ((TokenValueInjection!5788 0))(
  ( (TokenValueInjection!5789 (toValue!4361 Int) (toChars!4220 Int)) )
))
(declare-datatypes ((Rule!5748 0))(
  ( (Rule!5749 (regex!2974 Regex!4302) (tag!3238 String!19654) (isSeparator!2974 Bool) (transformation!2974 TokenValueInjection!5788)) )
))
(declare-datatypes ((Token!5514 0))(
  ( (Token!5515 (value!94433 TokenValue!3064) (rule!4760 Rule!5748) (size!13787 Int) (originalCharacters!3788 List!17059)) )
))
(declare-datatypes ((List!17060 0))(
  ( (Nil!16990) (Cons!16990 (h!22391 Token!5514) (t!141687 List!17060)) )
))
(declare-fun lt!541791 () List!17060)

(declare-datatypes ((IArray!11199 0))(
  ( (IArray!11200 (innerList!5657 List!17060)) )
))
(declare-datatypes ((Conc!5597 0))(
  ( (Node!5597 (left!13778 Conc!5597) (right!14108 Conc!5597) (csize!11424 Int) (cheight!5808 Int)) (Leaf!8305 (xs!8397 IArray!11199) (csize!11425 Int)) (Empty!5597) )
))
(declare-datatypes ((BalanceConc!11138 0))(
  ( (BalanceConc!11139 (c!253567 Conc!5597)) )
))
(declare-datatypes ((List!17061 0))(
  ( (Nil!16991) (Cons!16991 (h!22392 Rule!5748) (t!141688 List!17061)) )
))
(declare-datatypes ((PrintableTokens!1166 0))(
  ( (PrintableTokens!1167 (rules!12067 List!17061) (tokens!2187 BalanceConc!11138)) )
))
(declare-fun thiss!10002 () PrintableTokens!1166)

(declare-fun list!6533 (BalanceConc!11138) List!17060)

(assert (=> start!145494 (= lt!541791 (list!6533 (tokens!2187 thiss!10002)))))

(assert (=> start!145494 false))

(declare-fun e!1004917 () Bool)

(declare-fun inv!22338 (PrintableTokens!1166) Bool)

(assert (=> start!145494 (and (inv!22338 thiss!10002) e!1004917)))

(declare-fun b!1564707 () Bool)

(declare-fun e!1004918 () Bool)

(declare-fun tp!460786 () Bool)

(declare-fun inv!22339 (Conc!5597) Bool)

(assert (=> b!1564707 (= e!1004918 (and (inv!22339 (c!253567 (tokens!2187 thiss!10002))) tp!460786))))

(declare-fun b!1564706 () Bool)

(declare-fun tp!460785 () Bool)

(declare-fun inv!22340 (BalanceConc!11138) Bool)

(assert (=> b!1564706 (= e!1004917 (and tp!460785 (inv!22340 (tokens!2187 thiss!10002)) e!1004918))))

(assert (= b!1564706 b!1564707))

(assert (= start!145494 b!1564706))

(declare-fun m!1836311 () Bool)

(assert (=> start!145494 m!1836311))

(declare-fun m!1836313 () Bool)

(assert (=> start!145494 m!1836313))

(declare-fun m!1836315 () Bool)

(assert (=> b!1564707 m!1836315))

(declare-fun m!1836317 () Bool)

(assert (=> b!1564706 m!1836317))

(push 1)

(assert (not start!145494))

(assert (not b!1564707))

(assert (not b!1564706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


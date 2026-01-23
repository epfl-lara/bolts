; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!129474 () Bool)

(assert start!129474)

(declare-fun b!1413188 () Bool)

(declare-fun e!902193 () Bool)

(declare-fun e!902194 () Bool)

(assert (=> b!1413188 (= e!902193 e!902194)))

(declare-fun res!639971 () Bool)

(assert (=> b!1413188 (=> (not res!639971) (not e!902194))))

(declare-datatypes ((List!14503 0))(
  ( (Nil!14437) (Cons!14437 (h!19838 (_ BitVec 16)) (t!123780 List!14503)) )
))
(declare-datatypes ((TokenValue!2598 0))(
  ( (FloatLiteralValue!5196 (text!18631 List!14503)) (TokenValueExt!2597 (__x!9016 Int)) (Broken!12990 (value!81086 List!14503)) (Object!2663) (End!2598) (Def!2598) (Underscore!2598) (Match!2598) (Else!2598) (Error!2598) (Case!2598) (If!2598) (Extends!2598) (Abstract!2598) (Class!2598) (Val!2598) (DelimiterValue!5196 (del!2658 List!14503)) (KeywordValue!2604 (value!81087 List!14503)) (CommentValue!5196 (value!81088 List!14503)) (WhitespaceValue!5196 (value!81089 List!14503)) (IndentationValue!2598 (value!81090 List!14503)) (String!17227) (Int32!2598) (Broken!12991 (value!81091 List!14503)) (Boolean!2599) (Unit!20978) (OperatorValue!2601 (op!2658 List!14503)) (IdentifierValue!5196 (value!81092 List!14503)) (IdentifierValue!5197 (value!81093 List!14503)) (WhitespaceValue!5197 (value!81094 List!14503)) (True!5196) (False!5196) (Broken!12992 (value!81095 List!14503)) (Broken!12993 (value!81096 List!14503)) (True!5197) (RightBrace!2598) (RightBracket!2598) (Colon!2598) (Null!2598) (Comma!2598) (LeftBracket!2598) (False!5197) (LeftBrace!2598) (ImaginaryLiteralValue!2598 (text!18632 List!14503)) (StringLiteralValue!7794 (value!81097 List!14503)) (EOFValue!2598 (value!81098 List!14503)) (IdentValue!2598 (value!81099 List!14503)) (DelimiterValue!5197 (value!81100 List!14503)) (DedentValue!2598 (value!81101 List!14503)) (NewLineValue!2598 (value!81102 List!14503)) (IntegerValue!7794 (value!81103 (_ BitVec 32)) (text!18633 List!14503)) (IntegerValue!7795 (value!81104 Int) (text!18634 List!14503)) (Times!2598) (Or!2598) (Equal!2598) (Minus!2598) (Broken!12994 (value!81105 List!14503)) (And!2598) (Div!2598) (LessEqual!2598) (Mod!2598) (Concat!6420) (Not!2598) (Plus!2598) (SpaceValue!2598 (value!81106 List!14503)) (IntegerValue!7796 (value!81107 Int) (text!18635 List!14503)) (StringLiteralValue!7795 (text!18636 List!14503)) (FloatLiteralValue!5197 (text!18637 List!14503)) (BytesLiteralValue!2598 (value!81108 List!14503)) (CommentValue!5197 (value!81109 List!14503)) (StringLiteralValue!7796 (value!81110 List!14503)) (ErrorTokenValue!2598 (msg!2659 List!14503)) )
))
(declare-datatypes ((Regex!3822 0))(
  ( (ElementMatch!3822 (c!232194 (_ BitVec 16))) (Concat!6421 (regOne!8156 Regex!3822) (regTwo!8156 Regex!3822)) (EmptyExpr!3822) (Star!3822 (reg!4151 Regex!3822)) (EmptyLang!3822) (Union!3822 (regOne!8157 Regex!3822) (regTwo!8157 Regex!3822)) )
))
(declare-datatypes ((String!17228 0))(
  ( (String!17229 (value!81111 String)) )
))
(declare-datatypes ((IArray!9601 0))(
  ( (IArray!9602 (innerList!4858 List!14503)) )
))
(declare-datatypes ((Conc!4798 0))(
  ( (Node!4798 (left!12334 Conc!4798) (right!12664 Conc!4798) (csize!9826 Int) (cheight!5009 Int)) (Leaf!7249 (xs!7525 IArray!9601) (csize!9827 Int)) (Empty!4798) )
))
(declare-datatypes ((BalanceConc!9536 0))(
  ( (BalanceConc!9537 (c!232195 Conc!4798)) )
))
(declare-datatypes ((TokenValueInjection!4856 0))(
  ( (TokenValueInjection!4857 (toValue!3807 Int) (toChars!3666 Int)) )
))
(declare-datatypes ((Rule!4816 0))(
  ( (Rule!4817 (regex!2508 Regex!3822) (tag!2770 String!17228) (isSeparator!2508 Bool) (transformation!2508 TokenValueInjection!4856)) )
))
(declare-datatypes ((Token!4678 0))(
  ( (Token!4679 (value!81112 TokenValue!2598) (rule!4271 Rule!4816) (size!11903 Int) (originalCharacters!3370 List!14503)) )
))
(declare-datatypes ((List!14504 0))(
  ( (Nil!14438) (Cons!14438 (h!19839 Token!4678) (t!123781 List!14504)) )
))
(declare-datatypes ((IArray!9603 0))(
  ( (IArray!9604 (innerList!4859 List!14504)) )
))
(declare-datatypes ((Conc!4799 0))(
  ( (Node!4799 (left!12335 Conc!4799) (right!12665 Conc!4799) (csize!9828 Int) (cheight!5010 Int)) (Leaf!7250 (xs!7526 IArray!9603) (csize!9829 Int)) (Empty!4799) )
))
(declare-datatypes ((List!14505 0))(
  ( (Nil!14439) (Cons!14439 (h!19840 Rule!4816) (t!123782 List!14505)) )
))
(declare-datatypes ((BalanceConc!9538 0))(
  ( (BalanceConc!9539 (c!232196 Conc!4799)) )
))
(declare-datatypes ((PrintableTokens!798 0))(
  ( (PrintableTokens!799 (rules!11029 List!14505) (tokens!1759 BalanceConc!9538)) )
))
(declare-datatypes ((Option!2767 0))(
  ( (None!2766) (Some!2766 (v!21890 PrintableTokens!798)) )
))
(declare-fun lt!473250 () Option!2767)

(assert (=> b!1413188 (= res!639971 (is-Some!2766 lt!473250))))

(declare-datatypes ((List!14506 0))(
  ( (Nil!14440) (Cons!14440 (h!19841 PrintableTokens!798) (t!123783 List!14506)) )
))
(declare-datatypes ((IArray!9605 0))(
  ( (IArray!9606 (innerList!4860 List!14506)) )
))
(declare-datatypes ((Conc!4800 0))(
  ( (Node!4800 (left!12336 Conc!4800) (right!12666 Conc!4800) (csize!9830 Int) (cheight!5011 Int)) (Leaf!7251 (xs!7527 IArray!9605) (csize!9831 Int)) (Empty!4800) )
))
(declare-datatypes ((BalanceConc!9540 0))(
  ( (BalanceConc!9541 (c!232197 Conc!4800)) )
))
(declare-fun objs!24 () BalanceConc!9540)

(declare-fun sep!3 () PrintableTokens!798)

(declare-fun append!427 (PrintableTokens!798 PrintableTokens!798) Option!2767)

(declare-fun head!2687 (BalanceConc!9540) PrintableTokens!798)

(assert (=> b!1413188 (= lt!473250 (append!427 (head!2687 objs!24) sep!3))))

(declare-fun b!1413189 () Bool)

(declare-fun acc!229 () PrintableTokens!798)

(declare-fun e!902192 () Bool)

(declare-fun tp!401129 () Bool)

(declare-fun e!902189 () Bool)

(declare-fun inv!18888 (BalanceConc!9538) Bool)

(assert (=> b!1413189 (= e!902189 (and tp!401129 (inv!18888 (tokens!1759 acc!229)) e!902192))))

(declare-fun b!1413190 () Bool)

(declare-fun e!902190 () Bool)

(declare-fun tp!401126 () Bool)

(declare-fun inv!18889 (Conc!4799) Bool)

(assert (=> b!1413190 (= e!902190 (and (inv!18889 (c!232196 (tokens!1759 sep!3))) tp!401126))))

(declare-fun b!1413191 () Bool)

(declare-fun res!639974 () Bool)

(assert (=> b!1413191 (=> (not res!639974) (not e!902193))))

(declare-fun size!11904 (BalanceConc!9540) Int)

(assert (=> b!1413191 (= res!639974 (not (= (size!11904 objs!24) 1)))))

(declare-fun b!1413193 () Bool)

(declare-fun tp!401127 () Bool)

(assert (=> b!1413193 (= e!902192 (and (inv!18889 (c!232196 (tokens!1759 acc!229))) tp!401127))))

(declare-fun b!1413194 () Bool)

(declare-fun res!639976 () Bool)

(assert (=> b!1413194 (=> (not res!639976) (not e!902193))))

(declare-fun usesJsonRules!0 (PrintableTokens!798) Bool)

(assert (=> b!1413194 (= res!639976 (usesJsonRules!0 acc!229))))

(declare-fun b!1413195 () Bool)

(declare-fun e!902191 () Bool)

(declare-fun tp!401128 () Bool)

(assert (=> b!1413195 (= e!902191 (and tp!401128 (inv!18888 (tokens!1759 sep!3)) e!902190))))

(declare-fun b!1413196 () Bool)

(declare-fun e!902188 () Bool)

(declare-fun tp!401125 () Bool)

(declare-fun inv!18890 (Conc!4800) Bool)

(assert (=> b!1413196 (= e!902188 (and (inv!18890 (c!232197 objs!24)) tp!401125))))

(declare-fun b!1413197 () Bool)

(assert (=> b!1413197 (= e!902194 false)))

(declare-fun lt!473249 () Option!2767)

(assert (=> b!1413197 (= lt!473249 (append!427 acc!229 (v!21890 lt!473250)))))

(declare-fun b!1413198 () Bool)

(declare-fun res!639972 () Bool)

(assert (=> b!1413198 (=> (not res!639972) (not e!902193))))

(assert (=> b!1413198 (= res!639972 (usesJsonRules!0 sep!3))))

(declare-fun res!639973 () Bool)

(assert (=> start!129474 (=> (not res!639973) (not e!902193))))

(declare-fun lambda!62456 () Int)

(declare-fun forall!3546 (BalanceConc!9540 Int) Bool)

(assert (=> start!129474 (= res!639973 (forall!3546 objs!24 lambda!62456))))

(assert (=> start!129474 e!902193))

(declare-fun inv!18891 (BalanceConc!9540) Bool)

(assert (=> start!129474 (and (inv!18891 objs!24) e!902188)))

(declare-fun inv!18892 (PrintableTokens!798) Bool)

(assert (=> start!129474 (and (inv!18892 acc!229) e!902189)))

(assert (=> start!129474 (and (inv!18892 sep!3) e!902191)))

(declare-fun b!1413192 () Bool)

(declare-fun res!639975 () Bool)

(assert (=> b!1413192 (=> (not res!639975) (not e!902193))))

(declare-fun isEmpty!8833 (BalanceConc!9540) Bool)

(assert (=> b!1413192 (= res!639975 (not (isEmpty!8833 objs!24)))))

(assert (= (and start!129474 res!639973) b!1413194))

(assert (= (and b!1413194 res!639976) b!1413198))

(assert (= (and b!1413198 res!639972) b!1413192))

(assert (= (and b!1413192 res!639975) b!1413191))

(assert (= (and b!1413191 res!639974) b!1413188))

(assert (= (and b!1413188 res!639971) b!1413197))

(assert (= start!129474 b!1413196))

(assert (= b!1413189 b!1413193))

(assert (= start!129474 b!1413189))

(assert (= b!1413195 b!1413190))

(assert (= start!129474 b!1413195))

(declare-fun m!1594627 () Bool)

(assert (=> b!1413196 m!1594627))

(declare-fun m!1594629 () Bool)

(assert (=> b!1413193 m!1594629))

(declare-fun m!1594631 () Bool)

(assert (=> b!1413192 m!1594631))

(declare-fun m!1594633 () Bool)

(assert (=> b!1413198 m!1594633))

(declare-fun m!1594635 () Bool)

(assert (=> b!1413197 m!1594635))

(declare-fun m!1594637 () Bool)

(assert (=> b!1413188 m!1594637))

(assert (=> b!1413188 m!1594637))

(declare-fun m!1594639 () Bool)

(assert (=> b!1413188 m!1594639))

(declare-fun m!1594641 () Bool)

(assert (=> b!1413195 m!1594641))

(declare-fun m!1594643 () Bool)

(assert (=> b!1413190 m!1594643))

(declare-fun m!1594645 () Bool)

(assert (=> b!1413194 m!1594645))

(declare-fun m!1594647 () Bool)

(assert (=> start!129474 m!1594647))

(declare-fun m!1594649 () Bool)

(assert (=> start!129474 m!1594649))

(declare-fun m!1594651 () Bool)

(assert (=> start!129474 m!1594651))

(declare-fun m!1594653 () Bool)

(assert (=> start!129474 m!1594653))

(declare-fun m!1594655 () Bool)

(assert (=> b!1413189 m!1594655))

(declare-fun m!1594657 () Bool)

(assert (=> b!1413191 m!1594657))

(push 1)

(assert (not b!1413189))

(assert (not b!1413193))

(assert (not b!1413192))

(assert (not b!1413197))

(assert (not start!129474))

(assert (not b!1413191))

(assert (not b!1413198))

(assert (not b!1413188))

(assert (not b!1413194))

(assert (not b!1413195))

(assert (not b!1413196))

(assert (not b!1413190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


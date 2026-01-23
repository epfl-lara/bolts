; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249014 () Bool)

(assert start!249014)

(declare-datatypes ((List!29744 0))(
  ( (Nil!29644) (Cons!29644 (h!35064 (_ BitVec 16)) (t!211531 List!29744)) )
))
(declare-datatypes ((IArray!18491 0))(
  ( (IArray!18492 (innerList!9303 List!29744)) )
))
(declare-datatypes ((Conc!9243 0))(
  ( (Node!9243 (left!22547 Conc!9243) (right!22877 Conc!9243) (csize!18716 Int) (cheight!9454 Int)) (Leaf!14096 (xs!12227 IArray!18491) (csize!18717 Int)) (Empty!9243) )
))
(declare-datatypes ((BalanceConc!18100 0))(
  ( (BalanceConc!18101 (c!415063 Conc!9243)) )
))
(declare-fun v!4899 () BalanceConc!18100)

(declare-datatypes ((TokenValue!4707 0))(
  ( (FloatLiteralValue!9414 (text!33394 List!29744)) (TokenValueExt!4706 (__x!19226 Int)) (Broken!23535 (value!145061 List!29744)) (Object!4806) (End!4707) (Def!4707) (Underscore!4707) (Match!4707) (Else!4707) (Error!4707) (Case!4707) (If!4707) (Extends!4707) (Abstract!4707) (Class!4707) (Val!4707) (DelimiterValue!9414 (del!4767 List!29744)) (KeywordValue!4713 (value!145062 List!29744)) (CommentValue!9414 (value!145063 List!29744)) (WhitespaceValue!9414 (value!145064 List!29744)) (IndentationValue!4707 (value!145065 List!29744)) (String!32948) (Int32!4707) (Broken!23536 (value!145066 List!29744)) (Boolean!4708) (Unit!43492) (OperatorValue!4710 (op!4767 List!29744)) (IdentifierValue!9414 (value!145067 List!29744)) (IdentifierValue!9415 (value!145068 List!29744)) (WhitespaceValue!9415 (value!145069 List!29744)) (True!9414) (False!9414) (Broken!23537 (value!145070 List!29744)) (Broken!23538 (value!145071 List!29744)) (True!9415) (RightBrace!4707) (RightBracket!4707) (Colon!4707) (Null!4707) (Comma!4707) (LeftBracket!4707) (False!9415) (LeftBrace!4707) (ImaginaryLiteralValue!4707 (text!33395 List!29744)) (StringLiteralValue!14121 (value!145072 List!29744)) (EOFValue!4707 (value!145073 List!29744)) (IdentValue!4707 (value!145074 List!29744)) (DelimiterValue!9415 (value!145075 List!29744)) (DedentValue!4707 (value!145076 List!29744)) (NewLineValue!4707 (value!145077 List!29744)) (IntegerValue!14121 (value!145078 (_ BitVec 32)) (text!33396 List!29744)) (IntegerValue!14122 (value!145079 Int) (text!33397 List!29744)) (Times!4707) (Or!4707) (Equal!4707) (Minus!4707) (Broken!23539 (value!145080 List!29744)) (And!4707) (Div!4707) (LessEqual!4707) (Mod!4707) (Concat!12351) (Not!4707) (Plus!4707) (SpaceValue!4707 (value!145081 List!29744)) (IntegerValue!14123 (value!145082 Int) (text!33398 List!29744)) (StringLiteralValue!14122 (text!33399 List!29744)) (FloatLiteralValue!9415 (text!33400 List!29744)) (BytesLiteralValue!4707 (value!145083 List!29744)) (CommentValue!9415 (value!145084 List!29744)) (StringLiteralValue!14123 (value!145085 List!29744)) (ErrorTokenValue!4707 (msg!4768 List!29744)) )
))
(declare-fun inv!21 (TokenValue!4707) Bool)

(declare-fun efficientList!357 (BalanceConc!18100) List!29744)

(assert (=> start!249014 (not (inv!21 (NewLineValue!4707 (efficientList!357 v!4899))))))

(declare-fun e!1626082 () Bool)

(declare-fun inv!39919 (BalanceConc!18100) Bool)

(assert (=> start!249014 (and (inv!39919 v!4899) e!1626082)))

(declare-fun b!2576966 () Bool)

(declare-fun tp!819024 () Bool)

(declare-fun inv!39920 (Conc!9243) Bool)

(assert (=> b!2576966 (= e!1626082 (and (inv!39920 (c!415063 v!4899)) tp!819024))))

(assert (= start!249014 b!2576966))

(declare-fun m!2911603 () Bool)

(assert (=> start!249014 m!2911603))

(declare-fun m!2911605 () Bool)

(assert (=> start!249014 m!2911605))

(declare-fun m!2911607 () Bool)

(assert (=> start!249014 m!2911607))

(declare-fun m!2911609 () Bool)

(assert (=> b!2576966 m!2911609))

(check-sat (not start!249014) (not b!2576966))
(check-sat)
(get-model)

(declare-fun b!2576988 () Bool)

(declare-fun e!1626095 () Bool)

(declare-fun inv!16 (TokenValue!4707) Bool)

(assert (=> b!2576988 (= e!1626095 (inv!16 (NewLineValue!4707 (efficientList!357 v!4899))))))

(declare-fun d!728851 () Bool)

(declare-fun c!415072 () Bool)

(get-info :version)

(assert (=> d!728851 (= c!415072 ((_ is IntegerValue!14121) (NewLineValue!4707 (efficientList!357 v!4899))))))

(assert (=> d!728851 (= (inv!21 (NewLineValue!4707 (efficientList!357 v!4899))) e!1626095)))

(declare-fun b!2576989 () Bool)

(declare-fun res!1083958 () Bool)

(declare-fun e!1626097 () Bool)

(assert (=> b!2576989 (=> res!1083958 e!1626097)))

(assert (=> b!2576989 (= res!1083958 (not ((_ is IntegerValue!14123) (NewLineValue!4707 (efficientList!357 v!4899)))))))

(declare-fun e!1626096 () Bool)

(assert (=> b!2576989 (= e!1626096 e!1626097)))

(declare-fun b!2576990 () Bool)

(assert (=> b!2576990 (= e!1626095 e!1626096)))

(declare-fun c!415071 () Bool)

(assert (=> b!2576990 (= c!415071 ((_ is IntegerValue!14122) (NewLineValue!4707 (efficientList!357 v!4899))))))

(declare-fun b!2576991 () Bool)

(declare-fun inv!15 (TokenValue!4707) Bool)

(assert (=> b!2576991 (= e!1626097 (inv!15 (NewLineValue!4707 (efficientList!357 v!4899))))))

(declare-fun b!2576993 () Bool)

(declare-fun inv!17 (TokenValue!4707) Bool)

(assert (=> b!2576993 (= e!1626096 (inv!17 (NewLineValue!4707 (efficientList!357 v!4899))))))

(assert (= (and d!728851 c!415072) b!2576988))

(assert (= (and d!728851 (not c!415072)) b!2576990))

(assert (= (and b!2576990 c!415071) b!2576993))

(assert (= (and b!2576990 (not c!415071)) b!2576989))

(assert (= (and b!2576989 (not res!1083958)) b!2576991))

(declare-fun m!2911615 () Bool)

(assert (=> b!2576988 m!2911615))

(declare-fun m!2911617 () Bool)

(assert (=> b!2576991 m!2911617))

(declare-fun m!2911619 () Bool)

(assert (=> b!2576993 m!2911619))

(assert (=> start!249014 d!728851))

(declare-fun d!728855 () Bool)

(declare-fun lt!906729 () List!29744)

(declare-fun list!11183 (BalanceConc!18100) List!29744)

(assert (=> d!728855 (= lt!906729 (list!11183 v!4899))))

(declare-fun efficientList!358 (Conc!9243 List!29744) List!29744)

(declare-fun efficientList$default$2!123 (Conc!9243) List!29744)

(assert (=> d!728855 (= lt!906729 (efficientList!358 (c!415063 v!4899) (efficientList$default$2!123 (c!415063 v!4899))))))

(assert (=> d!728855 (= (efficientList!357 v!4899) lt!906729)))

(declare-fun bs!470523 () Bool)

(assert (= bs!470523 d!728855))

(declare-fun m!2911627 () Bool)

(assert (=> bs!470523 m!2911627))

(declare-fun m!2911629 () Bool)

(assert (=> bs!470523 m!2911629))

(assert (=> bs!470523 m!2911629))

(declare-fun m!2911631 () Bool)

(assert (=> bs!470523 m!2911631))

(assert (=> start!249014 d!728855))

(declare-fun d!728859 () Bool)

(declare-fun isBalanced!2808 (Conc!9243) Bool)

(assert (=> d!728859 (= (inv!39919 v!4899) (isBalanced!2808 (c!415063 v!4899)))))

(declare-fun bs!470525 () Bool)

(assert (= bs!470525 d!728859))

(declare-fun m!2911639 () Bool)

(assert (=> bs!470525 m!2911639))

(assert (=> start!249014 d!728859))

(declare-fun d!728863 () Bool)

(declare-fun c!415081 () Bool)

(assert (=> d!728863 (= c!415081 ((_ is Node!9243) (c!415063 v!4899)))))

(declare-fun e!1626117 () Bool)

(assert (=> d!728863 (= (inv!39920 (c!415063 v!4899)) e!1626117)))

(declare-fun b!2577020 () Bool)

(declare-fun inv!39923 (Conc!9243) Bool)

(assert (=> b!2577020 (= e!1626117 (inv!39923 (c!415063 v!4899)))))

(declare-fun b!2577021 () Bool)

(declare-fun e!1626118 () Bool)

(assert (=> b!2577021 (= e!1626117 e!1626118)))

(declare-fun res!1083964 () Bool)

(assert (=> b!2577021 (= res!1083964 (not ((_ is Leaf!14096) (c!415063 v!4899))))))

(assert (=> b!2577021 (=> res!1083964 e!1626118)))

(declare-fun b!2577022 () Bool)

(declare-fun inv!39925 (Conc!9243) Bool)

(assert (=> b!2577022 (= e!1626118 (inv!39925 (c!415063 v!4899)))))

(assert (= (and d!728863 c!415081) b!2577020))

(assert (= (and d!728863 (not c!415081)) b!2577021))

(assert (= (and b!2577021 (not res!1083964)) b!2577022))

(declare-fun m!2911649 () Bool)

(assert (=> b!2577020 m!2911649))

(declare-fun m!2911651 () Bool)

(assert (=> b!2577022 m!2911651))

(assert (=> b!2576966 d!728863))

(declare-fun b!2577029 () Bool)

(declare-fun tp!819035 () Bool)

(declare-fun e!1626123 () Bool)

(declare-fun tp!819036 () Bool)

(assert (=> b!2577029 (= e!1626123 (and (inv!39920 (left!22547 (c!415063 v!4899))) tp!819035 (inv!39920 (right!22877 (c!415063 v!4899))) tp!819036))))

(declare-fun b!2577030 () Bool)

(declare-fun inv!39926 (IArray!18491) Bool)

(assert (=> b!2577030 (= e!1626123 (inv!39926 (xs!12227 (c!415063 v!4899))))))

(assert (=> b!2576966 (= tp!819024 (and (inv!39920 (c!415063 v!4899)) e!1626123))))

(assert (= (and b!2576966 ((_ is Node!9243) (c!415063 v!4899))) b!2577029))

(assert (= (and b!2576966 ((_ is Leaf!14096) (c!415063 v!4899))) b!2577030))

(declare-fun m!2911653 () Bool)

(assert (=> b!2577029 m!2911653))

(declare-fun m!2911655 () Bool)

(assert (=> b!2577029 m!2911655))

(declare-fun m!2911657 () Bool)

(assert (=> b!2577030 m!2911657))

(assert (=> b!2576966 m!2911609))

(check-sat (not b!2576991) (not b!2576988) (not b!2577020) (not b!2576993) (not b!2577029) (not b!2577030) (not d!728859) (not b!2576966) (not b!2577022) (not d!728855))
(check-sat)

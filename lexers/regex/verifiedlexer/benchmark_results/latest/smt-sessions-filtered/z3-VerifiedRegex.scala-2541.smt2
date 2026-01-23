; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137138 () Bool)

(assert start!137138)

(declare-fun b!1466129 () Bool)

(declare-fun b_free!36583 () Bool)

(declare-fun b_next!37287 () Bool)

(assert (=> b!1466129 (= b_free!36583 (not b_next!37287))))

(declare-fun tp!412153 () Bool)

(declare-fun b_and!100057 () Bool)

(assert (=> b!1466129 (= tp!412153 b_and!100057)))

(declare-fun b_free!36585 () Bool)

(declare-fun b_next!37289 () Bool)

(assert (=> b!1466129 (= b_free!36585 (not b_next!37289))))

(declare-fun tp!412149 () Bool)

(declare-fun b_and!100059 () Bool)

(assert (=> b!1466129 (= tp!412149 b_and!100059)))

(declare-fun b!1466126 () Bool)

(declare-fun b_free!36587 () Bool)

(declare-fun b_next!37291 () Bool)

(assert (=> b!1466126 (= b_free!36587 (not b_next!37291))))

(declare-fun tp!412156 () Bool)

(declare-fun b_and!100061 () Bool)

(assert (=> b!1466126 (= tp!412156 b_and!100061)))

(declare-fun b_free!36589 () Bool)

(declare-fun b_next!37293 () Bool)

(assert (=> b!1466126 (= b_free!36589 (not b_next!37293))))

(declare-fun tp!412154 () Bool)

(declare-fun b_and!100063 () Bool)

(assert (=> b!1466126 (= tp!412154 b_and!100063)))

(declare-fun b!1466120 () Bool)

(declare-fun e!935262 () Bool)

(assert (=> b!1466120 (= e!935262 false)))

(declare-datatypes ((List!15281 0))(
  ( (Nil!15215) (Cons!15215 (h!20616 (_ BitVec 16)) (t!134980 List!15281)) )
))
(declare-datatypes ((TokenValue!2771 0))(
  ( (FloatLiteralValue!5542 (text!19842 List!15281)) (TokenValueExt!2770 (__x!9332 Int)) (Broken!13855 (value!86030 List!15281)) (Object!2836) (End!2771) (Def!2771) (Underscore!2771) (Match!2771) (Else!2771) (Error!2771) (Case!2771) (If!2771) (Extends!2771) (Abstract!2771) (Class!2771) (Val!2771) (DelimiterValue!5542 (del!2831 List!15281)) (KeywordValue!2777 (value!86031 List!15281)) (CommentValue!5542 (value!86032 List!15281)) (WhitespaceValue!5542 (value!86033 List!15281)) (IndentationValue!2771 (value!86034 List!15281)) (String!18110) (Int32!2771) (Broken!13856 (value!86035 List!15281)) (Boolean!2772) (Unit!25006) (OperatorValue!2774 (op!2831 List!15281)) (IdentifierValue!5542 (value!86036 List!15281)) (IdentifierValue!5543 (value!86037 List!15281)) (WhitespaceValue!5543 (value!86038 List!15281)) (True!5542) (False!5542) (Broken!13857 (value!86039 List!15281)) (Broken!13858 (value!86040 List!15281)) (True!5543) (RightBrace!2771) (RightBracket!2771) (Colon!2771) (Null!2771) (Comma!2771) (LeftBracket!2771) (False!5543) (LeftBrace!2771) (ImaginaryLiteralValue!2771 (text!19843 List!15281)) (StringLiteralValue!8313 (value!86041 List!15281)) (EOFValue!2771 (value!86042 List!15281)) (IdentValue!2771 (value!86043 List!15281)) (DelimiterValue!5543 (value!86044 List!15281)) (DedentValue!2771 (value!86045 List!15281)) (NewLineValue!2771 (value!86046 List!15281)) (IntegerValue!8313 (value!86047 (_ BitVec 32)) (text!19844 List!15281)) (IntegerValue!8314 (value!86048 Int) (text!19845 List!15281)) (Times!2771) (Or!2771) (Equal!2771) (Minus!2771) (Broken!13859 (value!86049 List!15281)) (And!2771) (Div!2771) (LessEqual!2771) (Mod!2771) (Concat!6766) (Not!2771) (Plus!2771) (SpaceValue!2771 (value!86050 List!15281)) (IntegerValue!8315 (value!86051 Int) (text!19846 List!15281)) (StringLiteralValue!8314 (text!19847 List!15281)) (FloatLiteralValue!5543 (text!19848 List!15281)) (BytesLiteralValue!2771 (value!86052 List!15281)) (CommentValue!5543 (value!86053 List!15281)) (StringLiteralValue!8315 (value!86054 List!15281)) (ErrorTokenValue!2771 (msg!2832 List!15281)) )
))
(declare-datatypes ((C!8168 0))(
  ( (C!8169 (val!4654 Int)) )
))
(declare-datatypes ((List!15282 0))(
  ( (Nil!15216) (Cons!15216 (h!20617 C!8168) (t!134981 List!15282)) )
))
(declare-datatypes ((IArray!10379 0))(
  ( (IArray!10380 (innerList!5247 List!15282)) )
))
(declare-datatypes ((Conc!5187 0))(
  ( (Node!5187 (left!12926 Conc!5187) (right!13256 Conc!5187) (csize!10604 Int) (cheight!5398 Int)) (Leaf!7729 (xs!7942 IArray!10379) (csize!10605 Int)) (Empty!5187) )
))
(declare-datatypes ((BalanceConc!10314 0))(
  ( (BalanceConc!10315 (c!241725 Conc!5187)) )
))
(declare-datatypes ((TokenValueInjection!5202 0))(
  ( (TokenValueInjection!5203 (toValue!3992 Int) (toChars!3851 Int)) )
))
(declare-datatypes ((Regex!3995 0))(
  ( (ElementMatch!3995 (c!241726 C!8168)) (Concat!6767 (regOne!8502 Regex!3995) (regTwo!8502 Regex!3995)) (EmptyExpr!3995) (Star!3995 (reg!4324 Regex!3995)) (EmptyLang!3995) (Union!3995 (regOne!8503 Regex!3995) (regTwo!8503 Regex!3995)) )
))
(declare-datatypes ((String!18111 0))(
  ( (String!18112 (value!86055 String)) )
))
(declare-datatypes ((Rule!5162 0))(
  ( (Rule!5163 (regex!2681 Regex!3995) (tag!2945 String!18111) (isSeparator!2681 Bool) (transformation!2681 TokenValueInjection!5202)) )
))
(declare-datatypes ((Token!5024 0))(
  ( (Token!5025 (value!86056 TokenValue!2771) (rule!4458 Rule!5162) (size!12447 Int) (originalCharacters!3543 List!15282)) )
))
(declare-datatypes ((List!15283 0))(
  ( (Nil!15217) (Cons!15217 (h!20618 Token!5024) (t!134982 List!15283)) )
))
(declare-fun lt!510505 () List!15283)

(declare-fun tokens1!47 () List!15283)

(declare-fun tokens2!49 () List!15283)

(declare-fun ++!4115 (List!15283 List!15283) List!15283)

(assert (=> b!1466120 (= lt!510505 (++!4115 tokens1!47 tokens2!49))))

(declare-fun b!1466121 () Bool)

(declare-fun res!663759 () Bool)

(assert (=> b!1466121 (=> (not res!663759) (not e!935262))))

(declare-fun isEmpty!9567 (List!15283) Bool)

(assert (=> b!1466121 (= res!663759 (isEmpty!9567 (t!134982 tokens1!47)))))

(declare-fun b!1466122 () Bool)

(declare-fun e!935261 () Bool)

(declare-fun e!935267 () Bool)

(declare-fun tp!412147 () Bool)

(declare-fun inv!20343 (String!18111) Bool)

(declare-fun inv!20346 (TokenValueInjection!5202) Bool)

(assert (=> b!1466122 (= e!935267 (and tp!412147 (inv!20343 (tag!2945 (rule!4458 (h!20618 tokens1!47)))) (inv!20346 (transformation!2681 (rule!4458 (h!20618 tokens1!47)))) e!935261))))

(declare-fun e!935268 () Bool)

(declare-fun tp!412150 () Bool)

(declare-fun b!1466123 () Bool)

(declare-fun e!935258 () Bool)

(declare-fun inv!21 (TokenValue!2771) Bool)

(assert (=> b!1466123 (= e!935268 (and (inv!21 (value!86056 (h!20618 tokens2!49))) e!935258 tp!412150))))

(declare-fun e!935259 () Bool)

(declare-fun b!1466125 () Bool)

(declare-fun tp!412148 () Bool)

(declare-fun e!935263 () Bool)

(declare-fun inv!20347 (Token!5024) Bool)

(assert (=> b!1466125 (= e!935263 (and (inv!20347 (h!20618 tokens1!47)) e!935259 tp!412148))))

(declare-fun e!935265 () Bool)

(assert (=> b!1466126 (= e!935265 (and tp!412156 tp!412154))))

(declare-fun tp!412152 () Bool)

(declare-fun b!1466127 () Bool)

(assert (=> b!1466127 (= e!935259 (and (inv!21 (value!86056 (h!20618 tokens1!47))) e!935267 tp!412152))))

(declare-fun tp!412151 () Bool)

(declare-fun e!935257 () Bool)

(declare-fun b!1466128 () Bool)

(assert (=> b!1466128 (= e!935257 (and (inv!20347 (h!20618 tokens2!49)) e!935268 tp!412151))))

(assert (=> b!1466129 (= e!935261 (and tp!412153 tp!412149))))

(declare-fun b!1466130 () Bool)

(declare-fun tp!412155 () Bool)

(assert (=> b!1466130 (= e!935258 (and tp!412155 (inv!20343 (tag!2945 (rule!4458 (h!20618 tokens2!49)))) (inv!20346 (transformation!2681 (rule!4458 (h!20618 tokens2!49)))) e!935265))))

(declare-fun res!663758 () Bool)

(assert (=> start!137138 (=> (not res!663758) (not e!935262))))

(declare-datatypes ((LexerInterface!2337 0))(
  ( (LexerInterfaceExt!2334 (__x!9333 Int)) (Lexer!2335) )
))
(declare-fun thiss!20360 () LexerInterface!2337)

(get-info :version)

(assert (=> start!137138 (= res!663758 (and ((_ is Lexer!2335) thiss!20360) ((_ is Cons!15217) tokens1!47)))))

(assert (=> start!137138 e!935262))

(assert (=> start!137138 true))

(assert (=> start!137138 e!935263))

(assert (=> start!137138 e!935257))

(declare-fun b!1466124 () Bool)

(declare-fun res!663757 () Bool)

(assert (=> b!1466124 (=> (not res!663757) (not e!935262))))

(declare-fun printList!731 (LexerInterface!2337 List!15283) List!15282)

(declare-fun list!6105 (BalanceConc!10314) List!15282)

(declare-fun charsOf!1542 (Token!5024) BalanceConc!10314)

(assert (=> b!1466124 (= res!663757 (= (printList!731 thiss!20360 tokens1!47) (list!6105 (charsOf!1542 (h!20618 tokens1!47)))))))

(assert (= (and start!137138 res!663758) b!1466121))

(assert (= (and b!1466121 res!663759) b!1466124))

(assert (= (and b!1466124 res!663757) b!1466120))

(assert (= b!1466122 b!1466129))

(assert (= b!1466127 b!1466122))

(assert (= b!1466125 b!1466127))

(assert (= (and start!137138 ((_ is Cons!15217) tokens1!47)) b!1466125))

(assert (= b!1466130 b!1466126))

(assert (= b!1466123 b!1466130))

(assert (= b!1466128 b!1466123))

(assert (= (and start!137138 ((_ is Cons!15217) tokens2!49)) b!1466128))

(declare-fun m!1710739 () Bool)

(assert (=> b!1466123 m!1710739))

(declare-fun m!1710741 () Bool)

(assert (=> b!1466120 m!1710741))

(declare-fun m!1710743 () Bool)

(assert (=> b!1466121 m!1710743))

(declare-fun m!1710745 () Bool)

(assert (=> b!1466122 m!1710745))

(declare-fun m!1710747 () Bool)

(assert (=> b!1466122 m!1710747))

(declare-fun m!1710749 () Bool)

(assert (=> b!1466130 m!1710749))

(declare-fun m!1710751 () Bool)

(assert (=> b!1466130 m!1710751))

(declare-fun m!1710753 () Bool)

(assert (=> b!1466125 m!1710753))

(declare-fun m!1710755 () Bool)

(assert (=> b!1466128 m!1710755))

(declare-fun m!1710757 () Bool)

(assert (=> b!1466127 m!1710757))

(declare-fun m!1710759 () Bool)

(assert (=> b!1466124 m!1710759))

(declare-fun m!1710761 () Bool)

(assert (=> b!1466124 m!1710761))

(assert (=> b!1466124 m!1710761))

(declare-fun m!1710763 () Bool)

(assert (=> b!1466124 m!1710763))

(check-sat (not b!1466124) (not b!1466125) (not b!1466120) (not b_next!37291) (not b!1466128) (not b_next!37293) (not b!1466127) b_and!100059 b_and!100057 (not b!1466123) b_and!100063 (not b_next!37287) (not b_next!37289) b_and!100061 (not b!1466130) (not b!1466121) (not b!1466122))
(check-sat (not b_next!37291) (not b_next!37293) b_and!100059 b_and!100061 b_and!100057 b_and!100063 (not b_next!37287) (not b_next!37289))

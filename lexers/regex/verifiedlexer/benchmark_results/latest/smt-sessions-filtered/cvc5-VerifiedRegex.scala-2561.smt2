; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137468 () Bool)

(assert start!137468)

(declare-fun b!1468798 () Bool)

(declare-fun b_free!36943 () Bool)

(declare-fun b_next!37647 () Bool)

(assert (=> b!1468798 (= b_free!36943 (not b_next!37647))))

(declare-fun tp!413884 () Bool)

(declare-fun b_and!100529 () Bool)

(assert (=> b!1468798 (= tp!413884 b_and!100529)))

(declare-fun b_free!36945 () Bool)

(declare-fun b_next!37649 () Bool)

(assert (=> b!1468798 (= b_free!36945 (not b_next!37649))))

(declare-fun tp!413878 () Bool)

(declare-fun b_and!100531 () Bool)

(assert (=> b!1468798 (= tp!413878 b_and!100531)))

(declare-fun b!1468797 () Bool)

(declare-fun b_free!36947 () Bool)

(declare-fun b_next!37651 () Bool)

(assert (=> b!1468797 (= b_free!36947 (not b_next!37651))))

(declare-fun tp!413883 () Bool)

(declare-fun b_and!100533 () Bool)

(assert (=> b!1468797 (= tp!413883 b_and!100533)))

(declare-fun b_free!36949 () Bool)

(declare-fun b_next!37653 () Bool)

(assert (=> b!1468797 (= b_free!36949 (not b_next!37653))))

(declare-fun tp!413886 () Bool)

(declare-fun b_and!100535 () Bool)

(assert (=> b!1468797 (= tp!413886 b_and!100535)))

(declare-fun e!937624 () Bool)

(declare-datatypes ((String!18307 0))(
  ( (String!18308 (value!87143 String)) )
))
(declare-datatypes ((List!15398 0))(
  ( (Nil!15332) (Cons!15332 (h!20733 (_ BitVec 16)) (t!135285 List!15398)) )
))
(declare-datatypes ((TokenValue!2810 0))(
  ( (FloatLiteralValue!5620 (text!20115 List!15398)) (TokenValueExt!2809 (__x!9410 Int)) (Broken!14050 (value!87144 List!15398)) (Object!2875) (End!2810) (Def!2810) (Underscore!2810) (Match!2810) (Else!2810) (Error!2810) (Case!2810) (If!2810) (Extends!2810) (Abstract!2810) (Class!2810) (Val!2810) (DelimiterValue!5620 (del!2870 List!15398)) (KeywordValue!2816 (value!87145 List!15398)) (CommentValue!5620 (value!87146 List!15398)) (WhitespaceValue!5620 (value!87147 List!15398)) (IndentationValue!2810 (value!87148 List!15398)) (String!18309) (Int32!2810) (Broken!14051 (value!87149 List!15398)) (Boolean!2811) (Unit!25081) (OperatorValue!2813 (op!2870 List!15398)) (IdentifierValue!5620 (value!87150 List!15398)) (IdentifierValue!5621 (value!87151 List!15398)) (WhitespaceValue!5621 (value!87152 List!15398)) (True!5620) (False!5620) (Broken!14052 (value!87153 List!15398)) (Broken!14053 (value!87154 List!15398)) (True!5621) (RightBrace!2810) (RightBracket!2810) (Colon!2810) (Null!2810) (Comma!2810) (LeftBracket!2810) (False!5621) (LeftBrace!2810) (ImaginaryLiteralValue!2810 (text!20116 List!15398)) (StringLiteralValue!8430 (value!87155 List!15398)) (EOFValue!2810 (value!87156 List!15398)) (IdentValue!2810 (value!87157 List!15398)) (DelimiterValue!5621 (value!87158 List!15398)) (DedentValue!2810 (value!87159 List!15398)) (NewLineValue!2810 (value!87160 List!15398)) (IntegerValue!8430 (value!87161 (_ BitVec 32)) (text!20117 List!15398)) (IntegerValue!8431 (value!87162 Int) (text!20118 List!15398)) (Times!2810) (Or!2810) (Equal!2810) (Minus!2810) (Broken!14054 (value!87163 List!15398)) (And!2810) (Div!2810) (LessEqual!2810) (Mod!2810) (Concat!6844) (Not!2810) (Plus!2810) (SpaceValue!2810 (value!87164 List!15398)) (IntegerValue!8432 (value!87165 Int) (text!20119 List!15398)) (StringLiteralValue!8431 (text!20120 List!15398)) (FloatLiteralValue!5621 (text!20121 List!15398)) (BytesLiteralValue!2810 (value!87166 List!15398)) (CommentValue!5621 (value!87167 List!15398)) (StringLiteralValue!8432 (value!87168 List!15398)) (ErrorTokenValue!2810 (msg!2871 List!15398)) )
))
(declare-datatypes ((C!8246 0))(
  ( (C!8247 (val!4693 Int)) )
))
(declare-datatypes ((List!15399 0))(
  ( (Nil!15333) (Cons!15333 (h!20734 C!8246) (t!135286 List!15399)) )
))
(declare-datatypes ((IArray!10457 0))(
  ( (IArray!10458 (innerList!5286 List!15399)) )
))
(declare-datatypes ((Conc!5226 0))(
  ( (Node!5226 (left!12993 Conc!5226) (right!13323 Conc!5226) (csize!10682 Int) (cheight!5437 Int)) (Leaf!7788 (xs!7981 IArray!10457) (csize!10683 Int)) (Empty!5226) )
))
(declare-datatypes ((BalanceConc!10392 0))(
  ( (BalanceConc!10393 (c!242083 Conc!5226)) )
))
(declare-datatypes ((TokenValueInjection!5280 0))(
  ( (TokenValueInjection!5281 (toValue!4039 Int) (toChars!3898 Int)) )
))
(declare-datatypes ((Regex!4034 0))(
  ( (ElementMatch!4034 (c!242084 C!8246)) (Concat!6845 (regOne!8580 Regex!4034) (regTwo!8580 Regex!4034)) (EmptyExpr!4034) (Star!4034 (reg!4363 Regex!4034)) (EmptyLang!4034) (Union!4034 (regOne!8581 Regex!4034) (regTwo!8581 Regex!4034)) )
))
(declare-datatypes ((Rule!5240 0))(
  ( (Rule!5241 (regex!2720 Regex!4034) (tag!2984 String!18307) (isSeparator!2720 Bool) (transformation!2720 TokenValueInjection!5280)) )
))
(declare-datatypes ((Token!5102 0))(
  ( (Token!5103 (value!87169 TokenValue!2810) (rule!4497 Rule!5240) (size!12499 Int) (originalCharacters!3582 List!15399)) )
))
(declare-datatypes ((List!15400 0))(
  ( (Nil!15334) (Cons!15334 (h!20735 Token!5102) (t!135287 List!15400)) )
))
(declare-fun tokens1!47 () List!15400)

(declare-fun b!1468793 () Bool)

(declare-fun e!937617 () Bool)

(declare-fun tp!413877 () Bool)

(declare-fun inv!21 (TokenValue!2810) Bool)

(assert (=> b!1468793 (= e!937624 (and (inv!21 (value!87169 (h!20735 tokens1!47))) e!937617 tp!413877))))

(declare-fun tp!413879 () Bool)

(declare-fun e!937627 () Bool)

(declare-fun b!1468794 () Bool)

(declare-fun inv!20511 (String!18307) Bool)

(declare-fun inv!20514 (TokenValueInjection!5280) Bool)

(assert (=> b!1468794 (= e!937617 (and tp!413879 (inv!20511 (tag!2984 (rule!4497 (h!20735 tokens1!47)))) (inv!20514 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) e!937627))))

(declare-fun res!664373 () Bool)

(declare-fun e!937620 () Bool)

(assert (=> start!137468 (=> (not res!664373) (not e!937620))))

(declare-datatypes ((LexerInterface!2376 0))(
  ( (LexerInterfaceExt!2373 (__x!9411 Int)) (Lexer!2374) )
))
(declare-fun thiss!20360 () LexerInterface!2376)

(assert (=> start!137468 (= res!664373 (and (is-Lexer!2374 thiss!20360) (not (is-Cons!15334 tokens1!47))))))

(assert (=> start!137468 e!937620))

(assert (=> start!137468 true))

(declare-fun e!937619 () Bool)

(assert (=> start!137468 e!937619))

(declare-fun e!937623 () Bool)

(assert (=> start!137468 e!937623))

(declare-fun tokens2!49 () List!15400)

(declare-fun b!1468795 () Bool)

(declare-fun printList!764 (LexerInterface!2376 List!15400) List!15399)

(declare-fun ++!4176 (List!15400 List!15400) List!15400)

(declare-fun ++!4177 (List!15399 List!15399) List!15399)

(assert (=> b!1468795 (= e!937620 (not (= (printList!764 thiss!20360 (++!4176 tokens1!47 tokens2!49)) (++!4177 (printList!764 thiss!20360 tokens1!47) (printList!764 thiss!20360 tokens2!49)))))))

(declare-fun tp!413882 () Bool)

(declare-fun e!937621 () Bool)

(declare-fun b!1468796 () Bool)

(declare-fun e!937626 () Bool)

(assert (=> b!1468796 (= e!937621 (and tp!413882 (inv!20511 (tag!2984 (rule!4497 (h!20735 tokens2!49)))) (inv!20514 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) e!937626))))

(assert (=> b!1468797 (= e!937626 (and tp!413883 tp!413886))))

(assert (=> b!1468798 (= e!937627 (and tp!413884 tp!413878))))

(declare-fun b!1468799 () Bool)

(declare-fun tp!413881 () Bool)

(declare-fun inv!20515 (Token!5102) Bool)

(assert (=> b!1468799 (= e!937619 (and (inv!20515 (h!20735 tokens1!47)) e!937624 tp!413881))))

(declare-fun e!937618 () Bool)

(declare-fun b!1468800 () Bool)

(declare-fun tp!413880 () Bool)

(assert (=> b!1468800 (= e!937618 (and (inv!21 (value!87169 (h!20735 tokens2!49))) e!937621 tp!413880))))

(declare-fun tp!413885 () Bool)

(declare-fun b!1468801 () Bool)

(assert (=> b!1468801 (= e!937623 (and (inv!20515 (h!20735 tokens2!49)) e!937618 tp!413885))))

(assert (= (and start!137468 res!664373) b!1468795))

(assert (= b!1468794 b!1468798))

(assert (= b!1468793 b!1468794))

(assert (= b!1468799 b!1468793))

(assert (= (and start!137468 (is-Cons!15334 tokens1!47)) b!1468799))

(assert (= b!1468796 b!1468797))

(assert (= b!1468800 b!1468796))

(assert (= b!1468801 b!1468800))

(assert (= (and start!137468 (is-Cons!15334 tokens2!49)) b!1468801))

(declare-fun m!1713357 () Bool)

(assert (=> b!1468793 m!1713357))

(declare-fun m!1713359 () Bool)

(assert (=> b!1468800 m!1713359))

(declare-fun m!1713361 () Bool)

(assert (=> b!1468799 m!1713361))

(declare-fun m!1713363 () Bool)

(assert (=> b!1468795 m!1713363))

(declare-fun m!1713365 () Bool)

(assert (=> b!1468795 m!1713365))

(declare-fun m!1713367 () Bool)

(assert (=> b!1468795 m!1713367))

(declare-fun m!1713369 () Bool)

(assert (=> b!1468795 m!1713369))

(declare-fun m!1713371 () Bool)

(assert (=> b!1468795 m!1713371))

(assert (=> b!1468795 m!1713369))

(assert (=> b!1468795 m!1713365))

(assert (=> b!1468795 m!1713363))

(declare-fun m!1713373 () Bool)

(assert (=> b!1468801 m!1713373))

(declare-fun m!1713375 () Bool)

(assert (=> b!1468796 m!1713375))

(declare-fun m!1713377 () Bool)

(assert (=> b!1468796 m!1713377))

(declare-fun m!1713379 () Bool)

(assert (=> b!1468794 m!1713379))

(declare-fun m!1713381 () Bool)

(assert (=> b!1468794 m!1713381))

(push 1)

(assert b_and!100535)

(assert (not b!1468799))

(assert (not b!1468800))

(assert (not b_next!37647))

(assert (not b!1468794))

(assert b_and!100533)

(assert (not b!1468793))

(assert b_and!100529)

(assert (not b_next!37649))

(assert (not b!1468795))

(assert b_and!100531)

(assert (not b_next!37651))

(assert (not b!1468801))

(assert (not b!1468796))

(assert (not b_next!37653))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100535)

(assert (not b_next!37647))

(assert b_and!100533)

(assert b_and!100529)

(assert (not b_next!37649))

(assert b_and!100531)

(assert (not b_next!37651))

(assert (not b_next!37653))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1468842 () Bool)

(declare-fun e!937675 () List!15399)

(assert (=> b!1468842 (= e!937675 (Cons!15333 (h!20734 (printList!764 thiss!20360 tokens1!47)) (++!4177 (t!135286 (printList!764 thiss!20360 tokens1!47)) (printList!764 thiss!20360 tokens2!49))))))

(declare-fun d!430866 () Bool)

(declare-fun e!937676 () Bool)

(assert (=> d!430866 e!937676))

(declare-fun res!664386 () Bool)

(assert (=> d!430866 (=> (not res!664386) (not e!937676))))

(declare-fun lt!511206 () List!15399)

(declare-fun content!2262 (List!15399) (Set C!8246))

(assert (=> d!430866 (= res!664386 (= (content!2262 lt!511206) (set.union (content!2262 (printList!764 thiss!20360 tokens1!47)) (content!2262 (printList!764 thiss!20360 tokens2!49)))))))

(assert (=> d!430866 (= lt!511206 e!937675)))

(declare-fun c!242089 () Bool)

(assert (=> d!430866 (= c!242089 (is-Nil!15333 (printList!764 thiss!20360 tokens1!47)))))

(assert (=> d!430866 (= (++!4177 (printList!764 thiss!20360 tokens1!47) (printList!764 thiss!20360 tokens2!49)) lt!511206)))

(declare-fun b!1468844 () Bool)

(assert (=> b!1468844 (= e!937676 (or (not (= (printList!764 thiss!20360 tokens2!49) Nil!15333)) (= lt!511206 (printList!764 thiss!20360 tokens1!47))))))

(declare-fun b!1468843 () Bool)

(declare-fun res!664385 () Bool)

(assert (=> b!1468843 (=> (not res!664385) (not e!937676))))

(declare-fun size!12501 (List!15399) Int)

(assert (=> b!1468843 (= res!664385 (= (size!12501 lt!511206) (+ (size!12501 (printList!764 thiss!20360 tokens1!47)) (size!12501 (printList!764 thiss!20360 tokens2!49)))))))

(declare-fun b!1468841 () Bool)

(assert (=> b!1468841 (= e!937675 (printList!764 thiss!20360 tokens2!49))))

(assert (= (and d!430866 c!242089) b!1468841))

(assert (= (and d!430866 (not c!242089)) b!1468842))

(assert (= (and d!430866 res!664386) b!1468843))

(assert (= (and b!1468843 res!664385) b!1468844))

(assert (=> b!1468842 m!1713365))

(declare-fun m!1713409 () Bool)

(assert (=> b!1468842 m!1713409))

(declare-fun m!1713411 () Bool)

(assert (=> d!430866 m!1713411))

(assert (=> d!430866 m!1713363))

(declare-fun m!1713413 () Bool)

(assert (=> d!430866 m!1713413))

(assert (=> d!430866 m!1713365))

(declare-fun m!1713415 () Bool)

(assert (=> d!430866 m!1713415))

(declare-fun m!1713417 () Bool)

(assert (=> b!1468843 m!1713417))

(assert (=> b!1468843 m!1713363))

(declare-fun m!1713419 () Bool)

(assert (=> b!1468843 m!1713419))

(assert (=> b!1468843 m!1713365))

(declare-fun m!1713421 () Bool)

(assert (=> b!1468843 m!1713421))

(assert (=> b!1468795 d!430866))

(declare-fun d!430870 () Bool)

(declare-fun c!242092 () Bool)

(assert (=> d!430870 (= c!242092 (is-Cons!15334 tokens2!49))))

(declare-fun e!937680 () List!15399)

(assert (=> d!430870 (= (printList!764 thiss!20360 tokens2!49) e!937680)))

(declare-fun b!1468851 () Bool)

(declare-fun list!6147 (BalanceConc!10392) List!15399)

(declare-fun charsOf!1571 (Token!5102) BalanceConc!10392)

(assert (=> b!1468851 (= e!937680 (++!4177 (list!6147 (charsOf!1571 (h!20735 tokens2!49))) (printList!764 thiss!20360 (t!135287 tokens2!49))))))

(declare-fun b!1468852 () Bool)

(assert (=> b!1468852 (= e!937680 Nil!15333)))

(assert (= (and d!430870 c!242092) b!1468851))

(assert (= (and d!430870 (not c!242092)) b!1468852))

(declare-fun m!1713423 () Bool)

(assert (=> b!1468851 m!1713423))

(assert (=> b!1468851 m!1713423))

(declare-fun m!1713425 () Bool)

(assert (=> b!1468851 m!1713425))

(declare-fun m!1713427 () Bool)

(assert (=> b!1468851 m!1713427))

(assert (=> b!1468851 m!1713425))

(assert (=> b!1468851 m!1713427))

(declare-fun m!1713429 () Bool)

(assert (=> b!1468851 m!1713429))

(assert (=> b!1468795 d!430870))

(declare-fun d!430872 () Bool)

(declare-fun c!242093 () Bool)

(assert (=> d!430872 (= c!242093 (is-Cons!15334 tokens1!47))))

(declare-fun e!937683 () List!15399)

(assert (=> d!430872 (= (printList!764 thiss!20360 tokens1!47) e!937683)))

(declare-fun b!1468857 () Bool)

(assert (=> b!1468857 (= e!937683 (++!4177 (list!6147 (charsOf!1571 (h!20735 tokens1!47))) (printList!764 thiss!20360 (t!135287 tokens1!47))))))

(declare-fun b!1468858 () Bool)

(assert (=> b!1468858 (= e!937683 Nil!15333)))

(assert (= (and d!430872 c!242093) b!1468857))

(assert (= (and d!430872 (not c!242093)) b!1468858))

(declare-fun m!1713431 () Bool)

(assert (=> b!1468857 m!1713431))

(assert (=> b!1468857 m!1713431))

(declare-fun m!1713433 () Bool)

(assert (=> b!1468857 m!1713433))

(declare-fun m!1713435 () Bool)

(assert (=> b!1468857 m!1713435))

(assert (=> b!1468857 m!1713433))

(assert (=> b!1468857 m!1713435))

(declare-fun m!1713437 () Bool)

(assert (=> b!1468857 m!1713437))

(assert (=> b!1468795 d!430872))

(declare-fun d!430874 () Bool)

(declare-fun c!242094 () Bool)

(assert (=> d!430874 (= c!242094 (is-Cons!15334 (++!4176 tokens1!47 tokens2!49)))))

(declare-fun e!937684 () List!15399)

(assert (=> d!430874 (= (printList!764 thiss!20360 (++!4176 tokens1!47 tokens2!49)) e!937684)))

(declare-fun b!1468859 () Bool)

(assert (=> b!1468859 (= e!937684 (++!4177 (list!6147 (charsOf!1571 (h!20735 (++!4176 tokens1!47 tokens2!49)))) (printList!764 thiss!20360 (t!135287 (++!4176 tokens1!47 tokens2!49)))))))

(declare-fun b!1468860 () Bool)

(assert (=> b!1468860 (= e!937684 Nil!15333)))

(assert (= (and d!430874 c!242094) b!1468859))

(assert (= (and d!430874 (not c!242094)) b!1468860))

(declare-fun m!1713439 () Bool)

(assert (=> b!1468859 m!1713439))

(assert (=> b!1468859 m!1713439))

(declare-fun m!1713441 () Bool)

(assert (=> b!1468859 m!1713441))

(declare-fun m!1713443 () Bool)

(assert (=> b!1468859 m!1713443))

(assert (=> b!1468859 m!1713441))

(assert (=> b!1468859 m!1713443))

(declare-fun m!1713445 () Bool)

(assert (=> b!1468859 m!1713445))

(assert (=> b!1468795 d!430874))

(declare-fun b!1468876 () Bool)

(declare-fun res!664393 () Bool)

(declare-fun e!937691 () Bool)

(assert (=> b!1468876 (=> (not res!664393) (not e!937691))))

(declare-fun lt!511209 () List!15400)

(declare-fun size!12502 (List!15400) Int)

(assert (=> b!1468876 (= res!664393 (= (size!12502 lt!511209) (+ (size!12502 tokens1!47) (size!12502 tokens2!49))))))

(declare-fun b!1468875 () Bool)

(declare-fun e!937693 () List!15400)

(assert (=> b!1468875 (= e!937693 (Cons!15334 (h!20735 tokens1!47) (++!4176 (t!135287 tokens1!47) tokens2!49)))))

(declare-fun b!1468877 () Bool)

(assert (=> b!1468877 (= e!937691 (or (not (= tokens2!49 Nil!15334)) (= lt!511209 tokens1!47)))))

(declare-fun d!430876 () Bool)

(assert (=> d!430876 e!937691))

(declare-fun res!664394 () Bool)

(assert (=> d!430876 (=> (not res!664394) (not e!937691))))

(declare-fun content!2263 (List!15400) (Set Token!5102))

(assert (=> d!430876 (= res!664394 (= (content!2263 lt!511209) (set.union (content!2263 tokens1!47) (content!2263 tokens2!49))))))

(assert (=> d!430876 (= lt!511209 e!937693)))

(declare-fun c!242098 () Bool)

(assert (=> d!430876 (= c!242098 (is-Nil!15334 tokens1!47))))

(assert (=> d!430876 (= (++!4176 tokens1!47 tokens2!49) lt!511209)))

(declare-fun b!1468874 () Bool)

(assert (=> b!1468874 (= e!937693 tokens2!49)))

(assert (= (and d!430876 c!242098) b!1468874))

(assert (= (and d!430876 (not c!242098)) b!1468875))

(assert (= (and d!430876 res!664394) b!1468876))

(assert (= (and b!1468876 res!664393) b!1468877))

(declare-fun m!1713459 () Bool)

(assert (=> b!1468876 m!1713459))

(declare-fun m!1713461 () Bool)

(assert (=> b!1468876 m!1713461))

(declare-fun m!1713463 () Bool)

(assert (=> b!1468876 m!1713463))

(declare-fun m!1713465 () Bool)

(assert (=> b!1468875 m!1713465))

(declare-fun m!1713467 () Bool)

(assert (=> d!430876 m!1713467))

(declare-fun m!1713469 () Bool)

(assert (=> d!430876 m!1713469))

(declare-fun m!1713471 () Bool)

(assert (=> d!430876 m!1713471))

(assert (=> b!1468795 d!430876))

(declare-fun d!430880 () Bool)

(declare-fun res!664402 () Bool)

(declare-fun e!937703 () Bool)

(assert (=> d!430880 (=> (not res!664402) (not e!937703))))

(declare-fun isEmpty!9609 (List!15399) Bool)

(assert (=> d!430880 (= res!664402 (not (isEmpty!9609 (originalCharacters!3582 (h!20735 tokens2!49)))))))

(assert (=> d!430880 (= (inv!20515 (h!20735 tokens2!49)) e!937703)))

(declare-fun b!1468893 () Bool)

(declare-fun res!664403 () Bool)

(assert (=> b!1468893 (=> (not res!664403) (not e!937703))))

(declare-fun dynLambda!6971 (Int TokenValue!2810) BalanceConc!10392)

(assert (=> b!1468893 (= res!664403 (= (originalCharacters!3582 (h!20735 tokens2!49)) (list!6147 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (value!87169 (h!20735 tokens2!49))))))))

(declare-fun b!1468894 () Bool)

(assert (=> b!1468894 (= e!937703 (= (size!12499 (h!20735 tokens2!49)) (size!12501 (originalCharacters!3582 (h!20735 tokens2!49)))))))

(assert (= (and d!430880 res!664402) b!1468893))

(assert (= (and b!1468893 res!664403) b!1468894))

(declare-fun b_lambda!45817 () Bool)

(assert (=> (not b_lambda!45817) (not b!1468893)))

(declare-fun t!135296 () Bool)

(declare-fun tb!83101 () Bool)

(assert (=> (and b!1468798 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))) t!135296) tb!83101))

(declare-fun b!1468899 () Bool)

(declare-fun e!937706 () Bool)

(declare-fun tp!413922 () Bool)

(declare-fun inv!20518 (Conc!5226) Bool)

(assert (=> b!1468899 (= e!937706 (and (inv!20518 (c!242083 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (value!87169 (h!20735 tokens2!49))))) tp!413922))))

(declare-fun result!99860 () Bool)

(declare-fun inv!20519 (BalanceConc!10392) Bool)

(assert (=> tb!83101 (= result!99860 (and (inv!20519 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (value!87169 (h!20735 tokens2!49)))) e!937706))))

(assert (= tb!83101 b!1468899))

(declare-fun m!1713479 () Bool)

(assert (=> b!1468899 m!1713479))

(declare-fun m!1713481 () Bool)

(assert (=> tb!83101 m!1713481))

(assert (=> b!1468893 t!135296))

(declare-fun b_and!100549 () Bool)

(assert (= b_and!100531 (and (=> t!135296 result!99860) b_and!100549)))

(declare-fun t!135298 () Bool)

(declare-fun tb!83103 () Bool)

(assert (=> (and b!1468797 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))) t!135298) tb!83103))

(declare-fun result!99864 () Bool)

(assert (= result!99864 result!99860))

(assert (=> b!1468893 t!135298))

(declare-fun b_and!100551 () Bool)

(assert (= b_and!100535 (and (=> t!135298 result!99864) b_and!100551)))

(declare-fun m!1713483 () Bool)

(assert (=> d!430880 m!1713483))

(declare-fun m!1713485 () Bool)

(assert (=> b!1468893 m!1713485))

(assert (=> b!1468893 m!1713485))

(declare-fun m!1713487 () Bool)

(assert (=> b!1468893 m!1713487))

(declare-fun m!1713489 () Bool)

(assert (=> b!1468894 m!1713489))

(assert (=> b!1468801 d!430880))

(declare-fun d!430884 () Bool)

(assert (=> d!430884 (= (inv!20511 (tag!2984 (rule!4497 (h!20735 tokens2!49)))) (= (mod (str.len (value!87143 (tag!2984 (rule!4497 (h!20735 tokens2!49))))) 2) 0))))

(assert (=> b!1468796 d!430884))

(declare-fun d!430886 () Bool)

(declare-fun res!664406 () Bool)

(declare-fun e!937711 () Bool)

(assert (=> d!430886 (=> (not res!664406) (not e!937711))))

(declare-fun semiInverseModEq!1020 (Int Int) Bool)

(assert (=> d!430886 (= res!664406 (semiInverseModEq!1020 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (toValue!4039 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))))))

(assert (=> d!430886 (= (inv!20514 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) e!937711)))

(declare-fun b!1468906 () Bool)

(declare-fun equivClasses!979 (Int Int) Bool)

(assert (=> b!1468906 (= e!937711 (equivClasses!979 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (toValue!4039 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))))))

(assert (= (and d!430886 res!664406) b!1468906))

(declare-fun m!1713491 () Bool)

(assert (=> d!430886 m!1713491))

(declare-fun m!1713493 () Bool)

(assert (=> b!1468906 m!1713493))

(assert (=> b!1468796 d!430886))

(declare-fun d!430888 () Bool)

(declare-fun res!664409 () Bool)

(declare-fun e!937714 () Bool)

(assert (=> d!430888 (=> (not res!664409) (not e!937714))))

(assert (=> d!430888 (= res!664409 (not (isEmpty!9609 (originalCharacters!3582 (h!20735 tokens1!47)))))))

(assert (=> d!430888 (= (inv!20515 (h!20735 tokens1!47)) e!937714)))

(declare-fun b!1468909 () Bool)

(declare-fun res!664410 () Bool)

(assert (=> b!1468909 (=> (not res!664410) (not e!937714))))

(assert (=> b!1468909 (= res!664410 (= (originalCharacters!3582 (h!20735 tokens1!47)) (list!6147 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (value!87169 (h!20735 tokens1!47))))))))

(declare-fun b!1468910 () Bool)

(assert (=> b!1468910 (= e!937714 (= (size!12499 (h!20735 tokens1!47)) (size!12501 (originalCharacters!3582 (h!20735 tokens1!47)))))))

(assert (= (and d!430888 res!664409) b!1468909))

(assert (= (and b!1468909 res!664410) b!1468910))

(declare-fun b_lambda!45819 () Bool)

(assert (=> (not b_lambda!45819) (not b!1468909)))

(declare-fun t!135300 () Bool)

(declare-fun tb!83105 () Bool)

(assert (=> (and b!1468798 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))) t!135300) tb!83105))

(declare-fun b!1468913 () Bool)

(declare-fun e!937715 () Bool)

(declare-fun tp!413923 () Bool)

(assert (=> b!1468913 (= e!937715 (and (inv!20518 (c!242083 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (value!87169 (h!20735 tokens1!47))))) tp!413923))))

(declare-fun result!99866 () Bool)

(assert (=> tb!83105 (= result!99866 (and (inv!20519 (dynLambda!6971 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (value!87169 (h!20735 tokens1!47)))) e!937715))))

(assert (= tb!83105 b!1468913))

(declare-fun m!1713495 () Bool)

(assert (=> b!1468913 m!1713495))

(declare-fun m!1713497 () Bool)

(assert (=> tb!83105 m!1713497))

(assert (=> b!1468909 t!135300))

(declare-fun b_and!100553 () Bool)

(assert (= b_and!100549 (and (=> t!135300 result!99866) b_and!100553)))

(declare-fun t!135302 () Bool)

(declare-fun tb!83107 () Bool)

(assert (=> (and b!1468797 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))) t!135302) tb!83107))

(declare-fun result!99868 () Bool)

(assert (= result!99868 result!99866))

(assert (=> b!1468909 t!135302))

(declare-fun b_and!100555 () Bool)

(assert (= b_and!100551 (and (=> t!135302 result!99868) b_and!100555)))

(declare-fun m!1713499 () Bool)

(assert (=> d!430888 m!1713499))

(declare-fun m!1713501 () Bool)

(assert (=> b!1468909 m!1713501))

(assert (=> b!1468909 m!1713501))

(declare-fun m!1713503 () Bool)

(assert (=> b!1468909 m!1713503))

(declare-fun m!1713505 () Bool)

(assert (=> b!1468910 m!1713505))

(assert (=> b!1468799 d!430888))

(declare-fun d!430890 () Bool)

(assert (=> d!430890 (= (inv!20511 (tag!2984 (rule!4497 (h!20735 tokens1!47)))) (= (mod (str.len (value!87143 (tag!2984 (rule!4497 (h!20735 tokens1!47))))) 2) 0))))

(assert (=> b!1468794 d!430890))

(declare-fun d!430892 () Bool)

(declare-fun res!664413 () Bool)

(declare-fun e!937716 () Bool)

(assert (=> d!430892 (=> (not res!664413) (not e!937716))))

(assert (=> d!430892 (= res!664413 (semiInverseModEq!1020 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (toValue!4039 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))))))

(assert (=> d!430892 (= (inv!20514 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) e!937716)))

(declare-fun b!1468914 () Bool)

(assert (=> b!1468914 (= e!937716 (equivClasses!979 (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (toValue!4039 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))))))

(assert (= (and d!430892 res!664413) b!1468914))

(declare-fun m!1713507 () Bool)

(assert (=> d!430892 m!1713507))

(declare-fun m!1713509 () Bool)

(assert (=> b!1468914 m!1713509))

(assert (=> b!1468794 d!430892))

(declare-fun b!1468929 () Bool)

(declare-fun e!937727 () Bool)

(declare-fun inv!16 (TokenValue!2810) Bool)

(assert (=> b!1468929 (= e!937727 (inv!16 (value!87169 (h!20735 tokens2!49))))))

(declare-fun b!1468930 () Bool)

(declare-fun e!937726 () Bool)

(assert (=> b!1468930 (= e!937727 e!937726)))

(declare-fun c!242112 () Bool)

(assert (=> b!1468930 (= c!242112 (is-IntegerValue!8431 (value!87169 (h!20735 tokens2!49))))))

(declare-fun b!1468931 () Bool)

(declare-fun e!937725 () Bool)

(declare-fun inv!15 (TokenValue!2810) Bool)

(assert (=> b!1468931 (= e!937725 (inv!15 (value!87169 (h!20735 tokens2!49))))))

(declare-fun b!1468932 () Bool)

(declare-fun res!664418 () Bool)

(assert (=> b!1468932 (=> res!664418 e!937725)))

(assert (=> b!1468932 (= res!664418 (not (is-IntegerValue!8432 (value!87169 (h!20735 tokens2!49)))))))

(assert (=> b!1468932 (= e!937726 e!937725)))

(declare-fun d!430894 () Bool)

(declare-fun c!242111 () Bool)

(assert (=> d!430894 (= c!242111 (is-IntegerValue!8430 (value!87169 (h!20735 tokens2!49))))))

(assert (=> d!430894 (= (inv!21 (value!87169 (h!20735 tokens2!49))) e!937727)))

(declare-fun b!1468933 () Bool)

(declare-fun inv!17 (TokenValue!2810) Bool)

(assert (=> b!1468933 (= e!937726 (inv!17 (value!87169 (h!20735 tokens2!49))))))

(assert (= (and d!430894 c!242111) b!1468929))

(assert (= (and d!430894 (not c!242111)) b!1468930))

(assert (= (and b!1468930 c!242112) b!1468933))

(assert (= (and b!1468930 (not c!242112)) b!1468932))

(assert (= (and b!1468932 (not res!664418)) b!1468931))

(declare-fun m!1713525 () Bool)

(assert (=> b!1468929 m!1713525))

(declare-fun m!1713527 () Bool)

(assert (=> b!1468931 m!1713527))

(declare-fun m!1713529 () Bool)

(assert (=> b!1468933 m!1713529))

(assert (=> b!1468800 d!430894))

(declare-fun b!1468934 () Bool)

(declare-fun e!937730 () Bool)

(assert (=> b!1468934 (= e!937730 (inv!16 (value!87169 (h!20735 tokens1!47))))))

(declare-fun b!1468935 () Bool)

(declare-fun e!937729 () Bool)

(assert (=> b!1468935 (= e!937730 e!937729)))

(declare-fun c!242114 () Bool)

(assert (=> b!1468935 (= c!242114 (is-IntegerValue!8431 (value!87169 (h!20735 tokens1!47))))))

(declare-fun b!1468936 () Bool)

(declare-fun e!937728 () Bool)

(assert (=> b!1468936 (= e!937728 (inv!15 (value!87169 (h!20735 tokens1!47))))))

(declare-fun b!1468937 () Bool)

(declare-fun res!664419 () Bool)

(assert (=> b!1468937 (=> res!664419 e!937728)))

(assert (=> b!1468937 (= res!664419 (not (is-IntegerValue!8432 (value!87169 (h!20735 tokens1!47)))))))

(assert (=> b!1468937 (= e!937729 e!937728)))

(declare-fun d!430898 () Bool)

(declare-fun c!242113 () Bool)

(assert (=> d!430898 (= c!242113 (is-IntegerValue!8430 (value!87169 (h!20735 tokens1!47))))))

(assert (=> d!430898 (= (inv!21 (value!87169 (h!20735 tokens1!47))) e!937730)))

(declare-fun b!1468938 () Bool)

(assert (=> b!1468938 (= e!937729 (inv!17 (value!87169 (h!20735 tokens1!47))))))

(assert (= (and d!430898 c!242113) b!1468934))

(assert (= (and d!430898 (not c!242113)) b!1468935))

(assert (= (and b!1468935 c!242114) b!1468938))

(assert (= (and b!1468935 (not c!242114)) b!1468937))

(assert (= (and b!1468937 (not res!664419)) b!1468936))

(declare-fun m!1713531 () Bool)

(assert (=> b!1468934 m!1713531))

(declare-fun m!1713533 () Bool)

(assert (=> b!1468936 m!1713533))

(declare-fun m!1713535 () Bool)

(assert (=> b!1468938 m!1713535))

(assert (=> b!1468793 d!430898))

(declare-fun b!1468956 () Bool)

(declare-fun b_free!36959 () Bool)

(declare-fun b_next!37663 () Bool)

(assert (=> b!1468956 (= b_free!36959 (not b_next!37663))))

(declare-fun tp!413934 () Bool)

(declare-fun b_and!100557 () Bool)

(assert (=> b!1468956 (= tp!413934 b_and!100557)))

(declare-fun b_free!36961 () Bool)

(declare-fun b_next!37665 () Bool)

(assert (=> b!1468956 (= b_free!36961 (not b_next!37665))))

(declare-fun t!135304 () Bool)

(declare-fun tb!83109 () Bool)

(assert (=> (and b!1468956 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens2!49))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))) t!135304) tb!83109))

(declare-fun result!99872 () Bool)

(assert (= result!99872 result!99860))

(assert (=> b!1468893 t!135304))

(declare-fun t!135306 () Bool)

(declare-fun tb!83111 () Bool)

(assert (=> (and b!1468956 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens2!49))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))) t!135306) tb!83111))

(declare-fun result!99874 () Bool)

(assert (= result!99874 result!99866))

(assert (=> b!1468909 t!135306))

(declare-fun tp!413938 () Bool)

(declare-fun b_and!100559 () Bool)

(assert (=> b!1468956 (= tp!413938 (and (=> t!135304 result!99872) (=> t!135306 result!99874) b_and!100559))))

(declare-fun e!937748 () Bool)

(declare-fun e!937745 () Bool)

(declare-fun tp!413935 () Bool)

(declare-fun b!1468954 () Bool)

(assert (=> b!1468954 (= e!937745 (and (inv!21 (value!87169 (h!20735 (t!135287 tokens2!49)))) e!937748 tp!413935))))

(declare-fun tp!413937 () Bool)

(declare-fun e!937749 () Bool)

(declare-fun b!1468955 () Bool)

(assert (=> b!1468955 (= e!937748 (and tp!413937 (inv!20511 (tag!2984 (rule!4497 (h!20735 (t!135287 tokens2!49))))) (inv!20514 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens2!49))))) e!937749))))

(declare-fun e!937747 () Bool)

(declare-fun b!1468953 () Bool)

(declare-fun tp!413936 () Bool)

(assert (=> b!1468953 (= e!937747 (and (inv!20515 (h!20735 (t!135287 tokens2!49))) e!937745 tp!413936))))

(assert (=> b!1468956 (= e!937749 (and tp!413934 tp!413938))))

(assert (=> b!1468801 (= tp!413885 e!937747)))

(assert (= b!1468955 b!1468956))

(assert (= b!1468954 b!1468955))

(assert (= b!1468953 b!1468954))

(assert (= (and b!1468801 (is-Cons!15334 (t!135287 tokens2!49))) b!1468953))

(declare-fun m!1713541 () Bool)

(assert (=> b!1468954 m!1713541))

(declare-fun m!1713545 () Bool)

(assert (=> b!1468955 m!1713545))

(declare-fun m!1713547 () Bool)

(assert (=> b!1468955 m!1713547))

(declare-fun m!1713549 () Bool)

(assert (=> b!1468953 m!1713549))

(declare-fun b!1468972 () Bool)

(declare-fun e!937755 () Bool)

(declare-fun tp!413953 () Bool)

(declare-fun tp!413950 () Bool)

(assert (=> b!1468972 (= e!937755 (and tp!413953 tp!413950))))

(declare-fun b!1468971 () Bool)

(declare-fun tp_is_empty!6909 () Bool)

(assert (=> b!1468971 (= e!937755 tp_is_empty!6909)))

(assert (=> b!1468796 (= tp!413882 e!937755)))

(declare-fun b!1468975 () Bool)

(declare-fun tp!413951 () Bool)

(declare-fun tp!413952 () Bool)

(assert (=> b!1468975 (= e!937755 (and tp!413951 tp!413952))))

(declare-fun b!1468973 () Bool)

(declare-fun tp!413949 () Bool)

(assert (=> b!1468973 (= e!937755 tp!413949)))

(assert (= (and b!1468796 (is-ElementMatch!4034 (regex!2720 (rule!4497 (h!20735 tokens2!49))))) b!1468971))

(assert (= (and b!1468796 (is-Concat!6845 (regex!2720 (rule!4497 (h!20735 tokens2!49))))) b!1468972))

(assert (= (and b!1468796 (is-Star!4034 (regex!2720 (rule!4497 (h!20735 tokens2!49))))) b!1468973))

(assert (= (and b!1468796 (is-Union!4034 (regex!2720 (rule!4497 (h!20735 tokens2!49))))) b!1468975))

(declare-fun b!1468980 () Bool)

(declare-fun b_free!36963 () Bool)

(declare-fun b_next!37667 () Bool)

(assert (=> b!1468980 (= b_free!36963 (not b_next!37667))))

(declare-fun tp!413954 () Bool)

(declare-fun b_and!100561 () Bool)

(assert (=> b!1468980 (= tp!413954 b_and!100561)))

(declare-fun b_free!36965 () Bool)

(declare-fun b_next!37669 () Bool)

(assert (=> b!1468980 (= b_free!36965 (not b_next!37669))))

(declare-fun tb!83113 () Bool)

(declare-fun t!135308 () Bool)

(assert (=> (and b!1468980 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens1!47))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49))))) t!135308) tb!83113))

(declare-fun result!99878 () Bool)

(assert (= result!99878 result!99860))

(assert (=> b!1468893 t!135308))

(declare-fun t!135310 () Bool)

(declare-fun tb!83115 () Bool)

(assert (=> (and b!1468980 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens1!47))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47))))) t!135310) tb!83115))

(declare-fun result!99880 () Bool)

(assert (= result!99880 result!99866))

(assert (=> b!1468909 t!135310))

(declare-fun b_and!100563 () Bool)

(declare-fun tp!413958 () Bool)

(assert (=> b!1468980 (= tp!413958 (and (=> t!135308 result!99878) (=> t!135310 result!99880) b_and!100563))))

(declare-fun e!937757 () Bool)

(declare-fun b!1468978 () Bool)

(declare-fun tp!413955 () Bool)

(declare-fun e!937760 () Bool)

(assert (=> b!1468978 (= e!937757 (and (inv!21 (value!87169 (h!20735 (t!135287 tokens1!47)))) e!937760 tp!413955))))

(declare-fun b!1468979 () Bool)

(declare-fun e!937761 () Bool)

(declare-fun tp!413957 () Bool)

(assert (=> b!1468979 (= e!937760 (and tp!413957 (inv!20511 (tag!2984 (rule!4497 (h!20735 (t!135287 tokens1!47))))) (inv!20514 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens1!47))))) e!937761))))

(declare-fun e!937759 () Bool)

(declare-fun b!1468977 () Bool)

(declare-fun tp!413956 () Bool)

(assert (=> b!1468977 (= e!937759 (and (inv!20515 (h!20735 (t!135287 tokens1!47))) e!937757 tp!413956))))

(assert (=> b!1468980 (= e!937761 (and tp!413954 tp!413958))))

(assert (=> b!1468799 (= tp!413881 e!937759)))

(assert (= b!1468979 b!1468980))

(assert (= b!1468978 b!1468979))

(assert (= b!1468977 b!1468978))

(assert (= (and b!1468799 (is-Cons!15334 (t!135287 tokens1!47))) b!1468977))

(declare-fun m!1713567 () Bool)

(assert (=> b!1468978 m!1713567))

(declare-fun m!1713571 () Bool)

(assert (=> b!1468979 m!1713571))

(declare-fun m!1713573 () Bool)

(assert (=> b!1468979 m!1713573))

(declare-fun m!1713575 () Bool)

(assert (=> b!1468977 m!1713575))

(declare-fun b!1468982 () Bool)

(declare-fun e!937763 () Bool)

(declare-fun tp!413963 () Bool)

(declare-fun tp!413960 () Bool)

(assert (=> b!1468982 (= e!937763 (and tp!413963 tp!413960))))

(declare-fun b!1468981 () Bool)

(assert (=> b!1468981 (= e!937763 tp_is_empty!6909)))

(assert (=> b!1468794 (= tp!413879 e!937763)))

(declare-fun b!1468984 () Bool)

(declare-fun tp!413961 () Bool)

(declare-fun tp!413962 () Bool)

(assert (=> b!1468984 (= e!937763 (and tp!413961 tp!413962))))

(declare-fun b!1468983 () Bool)

(declare-fun tp!413959 () Bool)

(assert (=> b!1468983 (= e!937763 tp!413959)))

(assert (= (and b!1468794 (is-ElementMatch!4034 (regex!2720 (rule!4497 (h!20735 tokens1!47))))) b!1468981))

(assert (= (and b!1468794 (is-Concat!6845 (regex!2720 (rule!4497 (h!20735 tokens1!47))))) b!1468982))

(assert (= (and b!1468794 (is-Star!4034 (regex!2720 (rule!4497 (h!20735 tokens1!47))))) b!1468983))

(assert (= (and b!1468794 (is-Union!4034 (regex!2720 (rule!4497 (h!20735 tokens1!47))))) b!1468984))

(declare-fun b!1468989 () Bool)

(declare-fun e!937766 () Bool)

(declare-fun tp!413966 () Bool)

(assert (=> b!1468989 (= e!937766 (and tp_is_empty!6909 tp!413966))))

(assert (=> b!1468800 (= tp!413880 e!937766)))

(assert (= (and b!1468800 (is-Cons!15333 (originalCharacters!3582 (h!20735 tokens2!49)))) b!1468989))

(declare-fun b!1468990 () Bool)

(declare-fun e!937767 () Bool)

(declare-fun tp!413967 () Bool)

(assert (=> b!1468990 (= e!937767 (and tp_is_empty!6909 tp!413967))))

(assert (=> b!1468793 (= tp!413877 e!937767)))

(assert (= (and b!1468793 (is-Cons!15333 (originalCharacters!3582 (h!20735 tokens1!47)))) b!1468990))

(declare-fun b_lambda!45821 () Bool)

(assert (= b_lambda!45819 (or (and b!1468798 b_free!36945) (and b!1468797 b_free!36949 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))))) (and b!1468956 b_free!36961 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens2!49))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))))) (and b!1468980 b_free!36965 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens1!47))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))))) b_lambda!45821)))

(declare-fun b_lambda!45823 () Bool)

(assert (= b_lambda!45817 (or (and b!1468798 b_free!36945 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens1!47)))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))))) (and b!1468797 b_free!36949) (and b!1468956 b_free!36961 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens2!49))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))))) (and b!1468980 b_free!36965 (= (toChars!3898 (transformation!2720 (rule!4497 (h!20735 (t!135287 tokens1!47))))) (toChars!3898 (transformation!2720 (rule!4497 (h!20735 tokens2!49)))))) b_lambda!45823)))

(push 1)

(assert b_and!100563)

(assert (not b!1468933))

(assert (not b!1468975))

(assert (not b_next!37647))

(assert b_and!100529)

(assert (not b_lambda!45823))

(assert (not b!1468934))

(assert tp_is_empty!6909)

(assert (not b!1468842))

(assert (not b!1468989))

(assert (not b!1468899))

(assert (not b!1468876))

(assert (not b!1468983))

(assert (not b!1468931))

(assert (not b!1468910))

(assert (not b!1468977))

(assert (not b!1468913))

(assert (not b!1468972))

(assert (not b_next!37663))

(assert b_and!100557)

(assert (not b!1468984))

(assert (not d!430892))

(assert (not b!1468990))

(assert (not d!430886))

(assert (not b!1468938))

(assert (not b!1468973))

(assert (not b!1468843))

(assert b_and!100555)

(assert (not b!1468893))

(assert b_and!100533)

(assert (not b!1468955))

(assert (not d!430866))

(assert (not d!430880))

(assert b_and!100561)

(assert (not b!1468914))

(assert (not b_next!37649))

(assert (not b!1468954))

(assert (not b!1468875))

(assert b_and!100553)

(assert (not b!1468979))

(assert (not b_next!37667))

(assert (not b!1468851))

(assert (not b!1468906))

(assert (not b!1468936))

(assert (not b!1468857))

(assert (not b!1468953))

(assert (not b!1468894))

(assert (not b_next!37651))

(assert (not d!430888))

(assert (not b!1468859))

(assert (not b!1468929))

(assert b_and!100559)

(assert (not b_next!37669))

(assert (not b!1468982))

(assert (not b!1468978))

(assert (not b_lambda!45821))

(assert (not b!1468909))

(assert (not b_next!37665))

(assert (not tb!83101))

(assert (not tb!83105))

(assert (not b_next!37653))

(assert (not d!430876))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100563)

(assert (not b_next!37663))

(assert b_and!100557)

(assert (not b_next!37647))

(assert b_and!100555)

(assert b_and!100533)

(assert b_and!100529)

(assert b_and!100561)

(assert (not b_next!37649))

(assert b_and!100553)

(assert (not b_next!37667))

(assert (not b_next!37651))

(assert (not b_next!37665))

(assert (not b_next!37653))

(assert b_and!100559)

(assert (not b_next!37669))

(check-sat)

(pop 1)


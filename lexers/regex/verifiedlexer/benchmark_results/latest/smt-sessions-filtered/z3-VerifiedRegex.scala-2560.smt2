; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137466 () Bool)

(assert start!137466)

(declare-fun b!1468761 () Bool)

(declare-fun b_free!36935 () Bool)

(declare-fun b_next!37639 () Bool)

(assert (=> b!1468761 (= b_free!36935 (not b_next!37639))))

(declare-fun tp!413856 () Bool)

(declare-fun b_and!100521 () Bool)

(assert (=> b!1468761 (= tp!413856 b_and!100521)))

(declare-fun b_free!36937 () Bool)

(declare-fun b_next!37641 () Bool)

(assert (=> b!1468761 (= b_free!36937 (not b_next!37641))))

(declare-fun tp!413850 () Bool)

(declare-fun b_and!100523 () Bool)

(assert (=> b!1468761 (= tp!413850 b_and!100523)))

(declare-fun b!1468765 () Bool)

(declare-fun b_free!36939 () Bool)

(declare-fun b_next!37643 () Bool)

(assert (=> b!1468765 (= b_free!36939 (not b_next!37643))))

(declare-fun tp!413849 () Bool)

(declare-fun b_and!100525 () Bool)

(assert (=> b!1468765 (= tp!413849 b_and!100525)))

(declare-fun b_free!36941 () Bool)

(declare-fun b_next!37645 () Bool)

(assert (=> b!1468765 (= b_free!36941 (not b_next!37645))))

(declare-fun tp!413847 () Bool)

(declare-fun b_and!100527 () Bool)

(assert (=> b!1468765 (= tp!413847 b_and!100527)))

(declare-fun e!937589 () Bool)

(assert (=> b!1468761 (= e!937589 (and tp!413856 tp!413850))))

(declare-fun e!937584 () Bool)

(declare-datatypes ((String!18300 0))(
  ( (String!18301 (value!87113 String)) )
))
(declare-datatypes ((List!15395 0))(
  ( (Nil!15329) (Cons!15329 (h!20730 (_ BitVec 16)) (t!135282 List!15395)) )
))
(declare-datatypes ((TokenValue!2809 0))(
  ( (FloatLiteralValue!5618 (text!20108 List!15395)) (TokenValueExt!2808 (__x!9408 Int)) (Broken!14045 (value!87114 List!15395)) (Object!2874) (End!2809) (Def!2809) (Underscore!2809) (Match!2809) (Else!2809) (Error!2809) (Case!2809) (If!2809) (Extends!2809) (Abstract!2809) (Class!2809) (Val!2809) (DelimiterValue!5618 (del!2869 List!15395)) (KeywordValue!2815 (value!87115 List!15395)) (CommentValue!5618 (value!87116 List!15395)) (WhitespaceValue!5618 (value!87117 List!15395)) (IndentationValue!2809 (value!87118 List!15395)) (String!18302) (Int32!2809) (Broken!14046 (value!87119 List!15395)) (Boolean!2810) (Unit!25078) (OperatorValue!2812 (op!2869 List!15395)) (IdentifierValue!5618 (value!87120 List!15395)) (IdentifierValue!5619 (value!87121 List!15395)) (WhitespaceValue!5619 (value!87122 List!15395)) (True!5618) (False!5618) (Broken!14047 (value!87123 List!15395)) (Broken!14048 (value!87124 List!15395)) (True!5619) (RightBrace!2809) (RightBracket!2809) (Colon!2809) (Null!2809) (Comma!2809) (LeftBracket!2809) (False!5619) (LeftBrace!2809) (ImaginaryLiteralValue!2809 (text!20109 List!15395)) (StringLiteralValue!8427 (value!87125 List!15395)) (EOFValue!2809 (value!87126 List!15395)) (IdentValue!2809 (value!87127 List!15395)) (DelimiterValue!5619 (value!87128 List!15395)) (DedentValue!2809 (value!87129 List!15395)) (NewLineValue!2809 (value!87130 List!15395)) (IntegerValue!8427 (value!87131 (_ BitVec 32)) (text!20110 List!15395)) (IntegerValue!8428 (value!87132 Int) (text!20111 List!15395)) (Times!2809) (Or!2809) (Equal!2809) (Minus!2809) (Broken!14049 (value!87133 List!15395)) (And!2809) (Div!2809) (LessEqual!2809) (Mod!2809) (Concat!6842) (Not!2809) (Plus!2809) (SpaceValue!2809 (value!87134 List!15395)) (IntegerValue!8429 (value!87135 Int) (text!20112 List!15395)) (StringLiteralValue!8428 (text!20113 List!15395)) (FloatLiteralValue!5619 (text!20114 List!15395)) (BytesLiteralValue!2809 (value!87136 List!15395)) (CommentValue!5619 (value!87137 List!15395)) (StringLiteralValue!8429 (value!87138 List!15395)) (ErrorTokenValue!2809 (msg!2870 List!15395)) )
))
(declare-datatypes ((C!8244 0))(
  ( (C!8245 (val!4692 Int)) )
))
(declare-datatypes ((List!15396 0))(
  ( (Nil!15330) (Cons!15330 (h!20731 C!8244) (t!135283 List!15396)) )
))
(declare-datatypes ((IArray!10455 0))(
  ( (IArray!10456 (innerList!5285 List!15396)) )
))
(declare-datatypes ((Conc!5225 0))(
  ( (Node!5225 (left!12991 Conc!5225) (right!13321 Conc!5225) (csize!10680 Int) (cheight!5436 Int)) (Leaf!7786 (xs!7980 IArray!10455) (csize!10681 Int)) (Empty!5225) )
))
(declare-datatypes ((BalanceConc!10390 0))(
  ( (BalanceConc!10391 (c!242081 Conc!5225)) )
))
(declare-datatypes ((TokenValueInjection!5278 0))(
  ( (TokenValueInjection!5279 (toValue!4038 Int) (toChars!3897 Int)) )
))
(declare-datatypes ((Regex!4033 0))(
  ( (ElementMatch!4033 (c!242082 C!8244)) (Concat!6843 (regOne!8578 Regex!4033) (regTwo!8578 Regex!4033)) (EmptyExpr!4033) (Star!4033 (reg!4362 Regex!4033)) (EmptyLang!4033) (Union!4033 (regOne!8579 Regex!4033) (regTwo!8579 Regex!4033)) )
))
(declare-datatypes ((Rule!5238 0))(
  ( (Rule!5239 (regex!2719 Regex!4033) (tag!2983 String!18300) (isSeparator!2719 Bool) (transformation!2719 TokenValueInjection!5278)) )
))
(declare-datatypes ((Token!5100 0))(
  ( (Token!5101 (value!87139 TokenValue!2809) (rule!4496 Rule!5238) (size!12498 Int) (originalCharacters!3581 List!15396)) )
))
(declare-datatypes ((List!15397 0))(
  ( (Nil!15331) (Cons!15331 (h!20732 Token!5100) (t!135284 List!15397)) )
))
(declare-fun tokens1!47 () List!15397)

(declare-fun tp!413852 () Bool)

(declare-fun b!1468762 () Bool)

(declare-fun e!937585 () Bool)

(declare-fun inv!20509 (Token!5100) Bool)

(assert (=> b!1468762 (= e!937585 (and (inv!20509 (h!20732 tokens1!47)) e!937584 tp!413852))))

(declare-fun tp!413854 () Bool)

(declare-fun b!1468763 () Bool)

(declare-fun e!937577 () Bool)

(declare-fun tokens2!49 () List!15397)

(declare-fun e!937583 () Bool)

(declare-fun inv!21 (TokenValue!2809) Bool)

(assert (=> b!1468763 (= e!937577 (and (inv!21 (value!87139 (h!20732 tokens2!49))) e!937583 tp!413854))))

(declare-fun e!937590 () Bool)

(declare-fun lt!511193 () List!15396)

(declare-fun lt!511194 () List!15396)

(declare-fun b!1468764 () Bool)

(declare-fun lt!511192 () List!15396)

(declare-fun ++!4174 (List!15396 List!15396) List!15396)

(assert (=> b!1468764 (= e!937590 (= lt!511194 (++!4174 lt!511193 lt!511192)))))

(declare-fun lt!511199 () List!15396)

(declare-fun lt!511202 () List!15396)

(declare-fun lt!511197 () List!15396)

(assert (=> b!1468764 (= (++!4174 lt!511197 lt!511192) (++!4174 lt!511199 lt!511202))))

(declare-fun lt!511201 () List!15396)

(declare-datatypes ((Unit!25079 0))(
  ( (Unit!25080) )
))
(declare-fun lt!511200 () Unit!25079)

(declare-fun lemmaConcatAssociativity!894 (List!15396 List!15396 List!15396) Unit!25079)

(assert (=> b!1468764 (= lt!511200 (lemmaConcatAssociativity!894 lt!511199 lt!511201 lt!511192))))

(declare-fun e!937586 () Bool)

(assert (=> b!1468765 (= e!937586 (and tp!413849 tp!413847))))

(declare-fun b!1468766 () Bool)

(declare-fun tp!413851 () Bool)

(declare-fun inv!20506 (String!18300) Bool)

(declare-fun inv!20510 (TokenValueInjection!5278) Bool)

(assert (=> b!1468766 (= e!937583 (and tp!413851 (inv!20506 (tag!2983 (rule!4496 (h!20732 tokens2!49)))) (inv!20510 (transformation!2719 (rule!4496 (h!20732 tokens2!49)))) e!937589))))

(declare-fun b!1468767 () Bool)

(declare-fun e!937580 () Bool)

(assert (=> b!1468767 (= e!937580 (not e!937590))))

(declare-fun res!664367 () Bool)

(assert (=> b!1468767 (=> res!664367 e!937590)))

(assert (=> b!1468767 (= res!664367 (not (= lt!511193 lt!511197)))))

(declare-datatypes ((LexerInterface!2375 0))(
  ( (LexerInterfaceExt!2372 (__x!9409 Int)) (Lexer!2373) )
))
(declare-fun thiss!20360 () LexerInterface!2375)

(declare-fun printList!763 (LexerInterface!2375 List!15397) List!15396)

(assert (=> b!1468767 (= lt!511193 (printList!763 thiss!20360 tokens1!47))))

(declare-fun e!937581 () Bool)

(assert (=> b!1468767 e!937581))

(declare-fun c!242080 () Bool)

(declare-fun lt!511191 () List!15397)

(get-info :version)

(assert (=> b!1468767 (= c!242080 ((_ is Cons!15331) lt!511191))))

(assert (=> b!1468767 (= lt!511194 (printList!763 thiss!20360 lt!511191))))

(declare-fun ++!4175 (List!15397 List!15397) List!15397)

(assert (=> b!1468767 (= lt!511191 (++!4175 tokens1!47 tokens2!49))))

(declare-fun lt!511203 () List!15396)

(assert (=> b!1468767 (= lt!511203 lt!511197)))

(assert (=> b!1468767 (= lt!511197 (++!4174 lt!511199 lt!511201))))

(assert (=> b!1468767 (= lt!511203 (printList!763 thiss!20360 tokens1!47))))

(declare-fun list!6146 (BalanceConc!10390) List!15396)

(declare-fun charsOf!1570 (Token!5100) BalanceConc!10390)

(assert (=> b!1468767 (= lt!511199 (list!6146 (charsOf!1570 (h!20732 tokens1!47))))))

(declare-fun lt!511195 () List!15396)

(assert (=> b!1468767 (= lt!511195 lt!511202)))

(assert (=> b!1468767 (= lt!511202 (++!4174 lt!511201 lt!511192))))

(declare-fun lt!511196 () List!15397)

(assert (=> b!1468767 (= lt!511195 (printList!763 thiss!20360 lt!511196))))

(assert (=> b!1468767 (= lt!511192 (printList!763 thiss!20360 tokens2!49))))

(assert (=> b!1468767 (= lt!511201 (printList!763 thiss!20360 (t!135284 tokens1!47)))))

(assert (=> b!1468767 (= lt!511196 (++!4175 (t!135284 tokens1!47) tokens2!49))))

(declare-fun lt!511198 () Unit!25079)

(declare-fun lemmaPrintConcatSameAsConcatPrint!98 (LexerInterface!2375 List!15397 List!15397) Unit!25079)

(assert (=> b!1468767 (= lt!511198 (lemmaPrintConcatSameAsConcatPrint!98 thiss!20360 (t!135284 tokens1!47) tokens2!49))))

(declare-fun e!937578 () Bool)

(declare-fun b!1468768 () Bool)

(declare-fun tp!413848 () Bool)

(assert (=> b!1468768 (= e!937578 (and tp!413848 (inv!20506 (tag!2983 (rule!4496 (h!20732 tokens1!47)))) (inv!20510 (transformation!2719 (rule!4496 (h!20732 tokens1!47)))) e!937586))))

(declare-fun res!664368 () Bool)

(assert (=> start!137466 (=> (not res!664368) (not e!937580))))

(assert (=> start!137466 (= res!664368 (and ((_ is Lexer!2373) thiss!20360) ((_ is Cons!15331) tokens1!47)))))

(assert (=> start!137466 e!937580))

(assert (=> start!137466 true))

(assert (=> start!137466 e!937585))

(declare-fun e!937587 () Bool)

(assert (=> start!137466 e!937587))

(declare-fun tp!413855 () Bool)

(declare-fun b!1468769 () Bool)

(assert (=> b!1468769 (= e!937587 (and (inv!20509 (h!20732 tokens2!49)) e!937577 tp!413855))))

(declare-fun tp!413853 () Bool)

(declare-fun b!1468770 () Bool)

(assert (=> b!1468770 (= e!937584 (and (inv!21 (value!87139 (h!20732 tokens1!47))) e!937578 tp!413853))))

(declare-fun b!1468771 () Bool)

(assert (=> b!1468771 (= e!937581 (= lt!511194 (++!4174 (list!6146 (charsOf!1570 (h!20732 lt!511191))) (printList!763 thiss!20360 (t!135284 lt!511191)))))))

(declare-fun b!1468772 () Bool)

(declare-fun res!664369 () Bool)

(assert (=> b!1468772 (=> (not res!664369) (not e!937580))))

(declare-fun isEmpty!9608 (List!15397) Bool)

(assert (=> b!1468772 (= res!664369 (not (isEmpty!9608 (t!135284 tokens1!47))))))

(declare-fun b!1468773 () Bool)

(assert (=> b!1468773 (= e!937581 (= lt!511194 Nil!15330))))

(declare-fun b!1468774 () Bool)

(declare-fun res!664370 () Bool)

(assert (=> b!1468774 (=> res!664370 e!937590)))

(assert (=> b!1468774 (= res!664370 (not (= lt!511194 (++!4174 lt!511199 lt!511195))))))

(assert (= (and start!137466 res!664368) b!1468772))

(assert (= (and b!1468772 res!664369) b!1468767))

(assert (= (and b!1468767 c!242080) b!1468771))

(assert (= (and b!1468767 (not c!242080)) b!1468773))

(assert (= (and b!1468767 (not res!664367)) b!1468774))

(assert (= (and b!1468774 (not res!664370)) b!1468764))

(assert (= b!1468768 b!1468765))

(assert (= b!1468770 b!1468768))

(assert (= b!1468762 b!1468770))

(assert (= (and start!137466 ((_ is Cons!15331) tokens1!47)) b!1468762))

(assert (= b!1468766 b!1468761))

(assert (= b!1468763 b!1468766))

(assert (= b!1468769 b!1468763))

(assert (= (and start!137466 ((_ is Cons!15331) tokens2!49)) b!1468769))

(declare-fun m!1713297 () Bool)

(assert (=> b!1468767 m!1713297))

(declare-fun m!1713299 () Bool)

(assert (=> b!1468767 m!1713299))

(declare-fun m!1713301 () Bool)

(assert (=> b!1468767 m!1713301))

(declare-fun m!1713303 () Bool)

(assert (=> b!1468767 m!1713303))

(declare-fun m!1713305 () Bool)

(assert (=> b!1468767 m!1713305))

(declare-fun m!1713307 () Bool)

(assert (=> b!1468767 m!1713307))

(declare-fun m!1713309 () Bool)

(assert (=> b!1468767 m!1713309))

(declare-fun m!1713311 () Bool)

(assert (=> b!1468767 m!1713311))

(declare-fun m!1713313 () Bool)

(assert (=> b!1468767 m!1713313))

(declare-fun m!1713315 () Bool)

(assert (=> b!1468767 m!1713315))

(assert (=> b!1468767 m!1713299))

(declare-fun m!1713317 () Bool)

(assert (=> b!1468767 m!1713317))

(declare-fun m!1713319 () Bool)

(assert (=> b!1468767 m!1713319))

(declare-fun m!1713321 () Bool)

(assert (=> b!1468768 m!1713321))

(declare-fun m!1713323 () Bool)

(assert (=> b!1468768 m!1713323))

(declare-fun m!1713325 () Bool)

(assert (=> b!1468763 m!1713325))

(declare-fun m!1713327 () Bool)

(assert (=> b!1468764 m!1713327))

(declare-fun m!1713329 () Bool)

(assert (=> b!1468764 m!1713329))

(declare-fun m!1713331 () Bool)

(assert (=> b!1468764 m!1713331))

(declare-fun m!1713333 () Bool)

(assert (=> b!1468764 m!1713333))

(declare-fun m!1713335 () Bool)

(assert (=> b!1468766 m!1713335))

(declare-fun m!1713337 () Bool)

(assert (=> b!1468766 m!1713337))

(declare-fun m!1713339 () Bool)

(assert (=> b!1468774 m!1713339))

(declare-fun m!1713341 () Bool)

(assert (=> b!1468762 m!1713341))

(declare-fun m!1713343 () Bool)

(assert (=> b!1468769 m!1713343))

(declare-fun m!1713345 () Bool)

(assert (=> b!1468771 m!1713345))

(assert (=> b!1468771 m!1713345))

(declare-fun m!1713347 () Bool)

(assert (=> b!1468771 m!1713347))

(declare-fun m!1713349 () Bool)

(assert (=> b!1468771 m!1713349))

(assert (=> b!1468771 m!1713347))

(assert (=> b!1468771 m!1713349))

(declare-fun m!1713351 () Bool)

(assert (=> b!1468771 m!1713351))

(declare-fun m!1713353 () Bool)

(assert (=> b!1468772 m!1713353))

(declare-fun m!1713355 () Bool)

(assert (=> b!1468770 m!1713355))

(check-sat (not b!1468771) b_and!100525 (not b!1468774) (not b!1468766) (not b_next!37643) b_and!100527 (not b!1468764) b_and!100521 (not b!1468770) b_and!100523 (not b_next!37645) (not b_next!37639) (not b!1468768) (not b!1468772) (not b!1468767) (not b!1468762) (not b!1468763) (not b!1468769) (not b_next!37641))
(check-sat b_and!100525 (not b_next!37639) (not b_next!37643) b_and!100527 b_and!100521 b_and!100523 (not b_next!37645) (not b_next!37641))

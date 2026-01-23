; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137162 () Bool)

(assert start!137162)

(declare-fun b!1466555 () Bool)

(declare-fun b_free!36679 () Bool)

(declare-fun b_next!37383 () Bool)

(assert (=> b!1466555 (= b_free!36679 (not b_next!37383))))

(declare-fun tp!412508 () Bool)

(declare-fun b_and!100153 () Bool)

(assert (=> b!1466555 (= tp!412508 b_and!100153)))

(declare-fun b_free!36681 () Bool)

(declare-fun b_next!37385 () Bool)

(assert (=> b!1466555 (= b_free!36681 (not b_next!37385))))

(declare-fun tp!412513 () Bool)

(declare-fun b_and!100155 () Bool)

(assert (=> b!1466555 (= tp!412513 b_and!100155)))

(declare-fun b!1466551 () Bool)

(declare-fun b_free!36683 () Bool)

(declare-fun b_next!37387 () Bool)

(assert (=> b!1466551 (= b_free!36683 (not b_next!37387))))

(declare-fun tp!412514 () Bool)

(declare-fun b_and!100157 () Bool)

(assert (=> b!1466551 (= tp!412514 b_and!100157)))

(declare-fun b_free!36685 () Bool)

(declare-fun b_next!37389 () Bool)

(assert (=> b!1466551 (= b_free!36685 (not b_next!37389))))

(declare-fun tp!412509 () Bool)

(declare-fun b_and!100159 () Bool)

(assert (=> b!1466551 (= tp!412509 b_and!100159)))

(declare-fun b!1466544 () Bool)

(declare-datatypes ((List!15317 0))(
  ( (Nil!15251) (Cons!15251 (h!20652 (_ BitVec 16)) (t!135016 List!15317)) )
))
(declare-datatypes ((TokenValue!2783 0))(
  ( (FloatLiteralValue!5566 (text!19926 List!15317)) (TokenValueExt!2782 (__x!9356 Int)) (Broken!13915 (value!86372 List!15317)) (Object!2848) (End!2783) (Def!2783) (Underscore!2783) (Match!2783) (Else!2783) (Error!2783) (Case!2783) (If!2783) (Extends!2783) (Abstract!2783) (Class!2783) (Val!2783) (DelimiterValue!5566 (del!2843 List!15317)) (KeywordValue!2789 (value!86373 List!15317)) (CommentValue!5566 (value!86374 List!15317)) (WhitespaceValue!5566 (value!86375 List!15317)) (IndentationValue!2783 (value!86376 List!15317)) (String!18170) (Int32!2783) (Broken!13916 (value!86377 List!15317)) (Boolean!2784) (Unit!25032) (OperatorValue!2786 (op!2843 List!15317)) (IdentifierValue!5566 (value!86378 List!15317)) (IdentifierValue!5567 (value!86379 List!15317)) (WhitespaceValue!5567 (value!86380 List!15317)) (True!5566) (False!5566) (Broken!13917 (value!86381 List!15317)) (Broken!13918 (value!86382 List!15317)) (True!5567) (RightBrace!2783) (RightBracket!2783) (Colon!2783) (Null!2783) (Comma!2783) (LeftBracket!2783) (False!5567) (LeftBrace!2783) (ImaginaryLiteralValue!2783 (text!19927 List!15317)) (StringLiteralValue!8349 (value!86383 List!15317)) (EOFValue!2783 (value!86384 List!15317)) (IdentValue!2783 (value!86385 List!15317)) (DelimiterValue!5567 (value!86386 List!15317)) (DedentValue!2783 (value!86387 List!15317)) (NewLineValue!2783 (value!86388 List!15317)) (IntegerValue!8349 (value!86389 (_ BitVec 32)) (text!19928 List!15317)) (IntegerValue!8350 (value!86390 Int) (text!19929 List!15317)) (Times!2783) (Or!2783) (Equal!2783) (Minus!2783) (Broken!13919 (value!86391 List!15317)) (And!2783) (Div!2783) (LessEqual!2783) (Mod!2783) (Concat!6790) (Not!2783) (Plus!2783) (SpaceValue!2783 (value!86392 List!15317)) (IntegerValue!8351 (value!86393 Int) (text!19930 List!15317)) (StringLiteralValue!8350 (text!19931 List!15317)) (FloatLiteralValue!5567 (text!19932 List!15317)) (BytesLiteralValue!2783 (value!86394 List!15317)) (CommentValue!5567 (value!86395 List!15317)) (StringLiteralValue!8351 (value!86396 List!15317)) (ErrorTokenValue!2783 (msg!2844 List!15317)) )
))
(declare-datatypes ((C!8192 0))(
  ( (C!8193 (val!4666 Int)) )
))
(declare-datatypes ((List!15318 0))(
  ( (Nil!15252) (Cons!15252 (h!20653 C!8192) (t!135017 List!15318)) )
))
(declare-datatypes ((IArray!10403 0))(
  ( (IArray!10404 (innerList!5259 List!15318)) )
))
(declare-datatypes ((Conc!5199 0))(
  ( (Node!5199 (left!12944 Conc!5199) (right!13274 Conc!5199) (csize!10628 Int) (cheight!5410 Int)) (Leaf!7747 (xs!7954 IArray!10403) (csize!10629 Int)) (Empty!5199) )
))
(declare-datatypes ((BalanceConc!10338 0))(
  ( (BalanceConc!10339 (c!241761 Conc!5199)) )
))
(declare-datatypes ((TokenValueInjection!5226 0))(
  ( (TokenValueInjection!5227 (toValue!4004 Int) (toChars!3863 Int)) )
))
(declare-datatypes ((Regex!4007 0))(
  ( (ElementMatch!4007 (c!241762 C!8192)) (Concat!6791 (regOne!8526 Regex!4007) (regTwo!8526 Regex!4007)) (EmptyExpr!4007) (Star!4007 (reg!4336 Regex!4007)) (EmptyLang!4007) (Union!4007 (regOne!8527 Regex!4007) (regTwo!8527 Regex!4007)) )
))
(declare-datatypes ((String!18171 0))(
  ( (String!18172 (value!86397 String)) )
))
(declare-datatypes ((Rule!5186 0))(
  ( (Rule!5187 (regex!2693 Regex!4007) (tag!2957 String!18171) (isSeparator!2693 Bool) (transformation!2693 TokenValueInjection!5226)) )
))
(declare-datatypes ((Token!5048 0))(
  ( (Token!5049 (value!86398 TokenValue!2783) (rule!4470 Rule!5186) (size!12459 Int) (originalCharacters!3555 List!15318)) )
))
(declare-datatypes ((List!15319 0))(
  ( (Nil!15253) (Cons!15253 (h!20654 Token!5048) (t!135018 List!15319)) )
))
(declare-fun tokens2!49 () List!15319)

(declare-fun e!935783 () Bool)

(declare-fun e!935784 () Bool)

(declare-fun tp!412511 () Bool)

(declare-fun inv!20385 (String!18171) Bool)

(declare-fun inv!20388 (TokenValueInjection!5226) Bool)

(assert (=> b!1466544 (= e!935783 (and tp!412511 (inv!20385 (tag!2957 (rule!4470 (h!20654 tokens2!49)))) (inv!20388 (transformation!2693 (rule!4470 (h!20654 tokens2!49)))) e!935784))))

(declare-fun e!935785 () Bool)

(declare-fun tp!412510 () Bool)

(declare-fun b!1466545 () Bool)

(declare-fun e!935787 () Bool)

(declare-fun inv!20389 (Token!5048) Bool)

(assert (=> b!1466545 (= e!935785 (and (inv!20389 (h!20654 tokens2!49)) e!935787 tp!412510))))

(declare-fun tokens1!47 () List!15319)

(declare-datatypes ((LexerInterface!2349 0))(
  ( (LexerInterfaceExt!2346 (__x!9357 Int)) (Lexer!2347) )
))
(declare-fun thiss!20360 () LexerInterface!2349)

(declare-fun lt!510659 () List!15318)

(declare-fun b!1466546 () Bool)

(declare-fun e!935782 () Bool)

(declare-fun printList!743 (LexerInterface!2349 List!15319) List!15318)

(declare-fun ++!4138 (List!15318 List!15318) List!15318)

(declare-fun list!6115 (BalanceConc!10338) List!15318)

(declare-fun charsOf!1552 (Token!5048) BalanceConc!10338)

(assert (=> b!1466546 (= e!935782 (= (printList!743 thiss!20360 tokens1!47) (++!4138 (list!6115 (charsOf!1552 (h!20654 tokens1!47))) lt!510659)))))

(declare-fun b!1466547 () Bool)

(declare-fun tp!412516 () Bool)

(declare-fun inv!21 (TokenValue!2783) Bool)

(assert (=> b!1466547 (= e!935787 (and (inv!21 (value!86398 (h!20654 tokens2!49))) e!935783 tp!412516))))

(declare-fun tp!412512 () Bool)

(declare-fun e!935778 () Bool)

(declare-fun e!935790 () Bool)

(declare-fun b!1466548 () Bool)

(assert (=> b!1466548 (= e!935790 (and tp!412512 (inv!20385 (tag!2957 (rule!4470 (h!20654 tokens1!47)))) (inv!20388 (transformation!2693 (rule!4470 (h!20654 tokens1!47)))) e!935778))))

(declare-fun b!1466549 () Bool)

(declare-fun lt!510657 () List!15318)

(declare-fun lt!510656 () List!15319)

(declare-fun e!935779 () Bool)

(assert (=> b!1466549 (= e!935779 (= lt!510657 (++!4138 (list!6115 (charsOf!1552 (h!20654 lt!510656))) (printList!743 thiss!20360 (t!135018 lt!510656)))))))

(declare-fun b!1466550 () Bool)

(declare-fun tp!412507 () Bool)

(declare-fun e!935789 () Bool)

(assert (=> b!1466550 (= e!935789 (and (inv!21 (value!86398 (h!20654 tokens1!47))) e!935790 tp!412507))))

(declare-fun res!663871 () Bool)

(declare-fun e!935781 () Bool)

(assert (=> start!137162 (=> (not res!663871) (not e!935781))))

(get-info :version)

(assert (=> start!137162 (= res!663871 (and ((_ is Lexer!2347) thiss!20360) ((_ is Cons!15253) tokens1!47)))))

(assert (=> start!137162 e!935781))

(assert (=> start!137162 true))

(declare-fun e!935780 () Bool)

(assert (=> start!137162 e!935780))

(assert (=> start!137162 e!935785))

(assert (=> b!1466551 (= e!935778 (and tp!412514 tp!412509))))

(declare-fun b!1466552 () Bool)

(assert (=> b!1466552 (= e!935781 (not true))))

(declare-fun lt!510661 () List!15318)

(assert (=> b!1466552 (= lt!510661 (printList!743 thiss!20360 tokens1!47))))

(assert (=> b!1466552 e!935779))

(declare-fun c!241760 () Bool)

(assert (=> b!1466552 (= c!241760 ((_ is Cons!15253) lt!510656))))

(assert (=> b!1466552 (= lt!510657 (printList!743 thiss!20360 lt!510656))))

(declare-fun ++!4139 (List!15319 List!15319) List!15319)

(assert (=> b!1466552 (= lt!510656 (++!4139 tokens1!47 tokens2!49))))

(assert (=> b!1466552 e!935782))

(declare-fun res!663872 () Bool)

(assert (=> b!1466552 (=> (not res!663872) (not e!935782))))

(declare-fun lt!510660 () List!15319)

(assert (=> b!1466552 (= res!663872 (= (printList!743 thiss!20360 lt!510660) (++!4138 lt!510659 (printList!743 thiss!20360 tokens2!49))))))

(assert (=> b!1466552 (= lt!510659 (printList!743 thiss!20360 (t!135018 tokens1!47)))))

(assert (=> b!1466552 (= lt!510660 (++!4139 (t!135018 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25033 0))(
  ( (Unit!25034) )
))
(declare-fun lt!510658 () Unit!25033)

(declare-fun lemmaPrintConcatSameAsConcatPrint!88 (LexerInterface!2349 List!15319 List!15319) Unit!25033)

(assert (=> b!1466552 (= lt!510658 (lemmaPrintConcatSameAsConcatPrint!88 thiss!20360 (t!135018 tokens1!47) tokens2!49))))

(declare-fun b!1466553 () Bool)

(assert (=> b!1466553 (= e!935779 (= lt!510657 Nil!15252))))

(declare-fun tp!412515 () Bool)

(declare-fun b!1466554 () Bool)

(assert (=> b!1466554 (= e!935780 (and (inv!20389 (h!20654 tokens1!47)) e!935789 tp!412515))))

(assert (=> b!1466555 (= e!935784 (and tp!412508 tp!412513))))

(declare-fun b!1466556 () Bool)

(declare-fun res!663873 () Bool)

(assert (=> b!1466556 (=> (not res!663873) (not e!935781))))

(declare-fun isEmpty!9579 (List!15319) Bool)

(assert (=> b!1466556 (= res!663873 (not (isEmpty!9579 (t!135018 tokens1!47))))))

(assert (= (and start!137162 res!663871) b!1466556))

(assert (= (and b!1466556 res!663873) b!1466552))

(assert (= (and b!1466552 res!663872) b!1466546))

(assert (= (and b!1466552 c!241760) b!1466549))

(assert (= (and b!1466552 (not c!241760)) b!1466553))

(assert (= b!1466548 b!1466551))

(assert (= b!1466550 b!1466548))

(assert (= b!1466554 b!1466550))

(assert (= (and start!137162 ((_ is Cons!15253) tokens1!47)) b!1466554))

(assert (= b!1466544 b!1466555))

(assert (= b!1466547 b!1466544))

(assert (= b!1466545 b!1466547))

(assert (= (and start!137162 ((_ is Cons!15253) tokens2!49)) b!1466545))

(declare-fun m!1711187 () Bool)

(assert (=> b!1466545 m!1711187))

(declare-fun m!1711189 () Bool)

(assert (=> b!1466549 m!1711189))

(assert (=> b!1466549 m!1711189))

(declare-fun m!1711191 () Bool)

(assert (=> b!1466549 m!1711191))

(declare-fun m!1711193 () Bool)

(assert (=> b!1466549 m!1711193))

(assert (=> b!1466549 m!1711191))

(assert (=> b!1466549 m!1711193))

(declare-fun m!1711195 () Bool)

(assert (=> b!1466549 m!1711195))

(declare-fun m!1711197 () Bool)

(assert (=> b!1466546 m!1711197))

(declare-fun m!1711199 () Bool)

(assert (=> b!1466546 m!1711199))

(assert (=> b!1466546 m!1711199))

(declare-fun m!1711201 () Bool)

(assert (=> b!1466546 m!1711201))

(assert (=> b!1466546 m!1711201))

(declare-fun m!1711203 () Bool)

(assert (=> b!1466546 m!1711203))

(declare-fun m!1711205 () Bool)

(assert (=> b!1466544 m!1711205))

(declare-fun m!1711207 () Bool)

(assert (=> b!1466544 m!1711207))

(declare-fun m!1711209 () Bool)

(assert (=> b!1466550 m!1711209))

(declare-fun m!1711211 () Bool)

(assert (=> b!1466547 m!1711211))

(declare-fun m!1711213 () Bool)

(assert (=> b!1466556 m!1711213))

(declare-fun m!1711215 () Bool)

(assert (=> b!1466548 m!1711215))

(declare-fun m!1711217 () Bool)

(assert (=> b!1466548 m!1711217))

(declare-fun m!1711219 () Bool)

(assert (=> b!1466552 m!1711219))

(declare-fun m!1711221 () Bool)

(assert (=> b!1466552 m!1711221))

(declare-fun m!1711223 () Bool)

(assert (=> b!1466552 m!1711223))

(declare-fun m!1711225 () Bool)

(assert (=> b!1466552 m!1711225))

(assert (=> b!1466552 m!1711197))

(declare-fun m!1711227 () Bool)

(assert (=> b!1466552 m!1711227))

(declare-fun m!1711229 () Bool)

(assert (=> b!1466552 m!1711229))

(declare-fun m!1711231 () Bool)

(assert (=> b!1466552 m!1711231))

(declare-fun m!1711233 () Bool)

(assert (=> b!1466552 m!1711233))

(assert (=> b!1466552 m!1711221))

(declare-fun m!1711235 () Bool)

(assert (=> b!1466554 m!1711235))

(check-sat (not b!1466545) (not b_next!37389) (not b_next!37387) (not b_next!37383) (not b!1466550) (not b!1466544) b_and!100155 (not b!1466554) (not b_next!37385) b_and!100159 b_and!100157 (not b!1466546) (not b!1466548) b_and!100153 (not b!1466552) (not b!1466547) (not b!1466556) (not b!1466549))
(check-sat (not b_next!37389) (not b_next!37387) b_and!100157 (not b_next!37383) b_and!100153 b_and!100155 (not b_next!37385) b_and!100159)

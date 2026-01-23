; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137164 () Bool)

(assert start!137164)

(declare-fun b!1466584 () Bool)

(declare-fun b_free!36687 () Bool)

(declare-fun b_next!37391 () Bool)

(assert (=> b!1466584 (= b_free!36687 (not b_next!37391))))

(declare-fun tp!412541 () Bool)

(declare-fun b_and!100161 () Bool)

(assert (=> b!1466584 (= tp!412541 b_and!100161)))

(declare-fun b_free!36689 () Bool)

(declare-fun b_next!37393 () Bool)

(assert (=> b!1466584 (= b_free!36689 (not b_next!37393))))

(declare-fun tp!412540 () Bool)

(declare-fun b_and!100163 () Bool)

(assert (=> b!1466584 (= tp!412540 b_and!100163)))

(declare-fun b!1466588 () Bool)

(declare-fun b_free!36691 () Bool)

(declare-fun b_next!37395 () Bool)

(assert (=> b!1466588 (= b_free!36691 (not b_next!37395))))

(declare-fun tp!412545 () Bool)

(declare-fun b_and!100165 () Bool)

(assert (=> b!1466588 (= tp!412545 b_and!100165)))

(declare-fun b_free!36693 () Bool)

(declare-fun b_next!37397 () Bool)

(assert (=> b!1466588 (= b_free!36693 (not b_next!37397))))

(declare-fun tp!412538 () Bool)

(declare-fun b_and!100167 () Bool)

(assert (=> b!1466588 (= tp!412538 b_and!100167)))

(declare-fun b!1466583 () Bool)

(declare-fun e!935822 () Bool)

(assert (=> b!1466583 (= e!935822 true)))

(declare-datatypes ((C!8194 0))(
  ( (C!8195 (val!4667 Int)) )
))
(declare-datatypes ((List!15320 0))(
  ( (Nil!15254) (Cons!15254 (h!20655 C!8194) (t!135019 List!15320)) )
))
(declare-fun lt!510685 () List!15320)

(declare-fun lt!510684 () List!15320)

(declare-fun lt!510688 () List!15320)

(declare-fun ++!4140 (List!15320 List!15320) List!15320)

(assert (=> b!1466583 (= lt!510685 (++!4140 lt!510684 lt!510688))))

(declare-fun e!935834 () Bool)

(assert (=> b!1466584 (= e!935834 (and tp!412541 tp!412540))))

(declare-fun b!1466585 () Bool)

(declare-fun res!663880 () Bool)

(declare-fun e!935830 () Bool)

(assert (=> b!1466585 (=> (not res!663880) (not e!935830))))

(declare-datatypes ((List!15321 0))(
  ( (Nil!15255) (Cons!15255 (h!20656 (_ BitVec 16)) (t!135020 List!15321)) )
))
(declare-datatypes ((TokenValue!2784 0))(
  ( (FloatLiteralValue!5568 (text!19933 List!15321)) (TokenValueExt!2783 (__x!9358 Int)) (Broken!13920 (value!86402 List!15321)) (Object!2849) (End!2784) (Def!2784) (Underscore!2784) (Match!2784) (Else!2784) (Error!2784) (Case!2784) (If!2784) (Extends!2784) (Abstract!2784) (Class!2784) (Val!2784) (DelimiterValue!5568 (del!2844 List!15321)) (KeywordValue!2790 (value!86403 List!15321)) (CommentValue!5568 (value!86404 List!15321)) (WhitespaceValue!5568 (value!86405 List!15321)) (IndentationValue!2784 (value!86406 List!15321)) (String!18177) (Int32!2784) (Broken!13921 (value!86407 List!15321)) (Boolean!2785) (Unit!25035) (OperatorValue!2787 (op!2844 List!15321)) (IdentifierValue!5568 (value!86408 List!15321)) (IdentifierValue!5569 (value!86409 List!15321)) (WhitespaceValue!5569 (value!86410 List!15321)) (True!5568) (False!5568) (Broken!13922 (value!86411 List!15321)) (Broken!13923 (value!86412 List!15321)) (True!5569) (RightBrace!2784) (RightBracket!2784) (Colon!2784) (Null!2784) (Comma!2784) (LeftBracket!2784) (False!5569) (LeftBrace!2784) (ImaginaryLiteralValue!2784 (text!19934 List!15321)) (StringLiteralValue!8352 (value!86413 List!15321)) (EOFValue!2784 (value!86414 List!15321)) (IdentValue!2784 (value!86415 List!15321)) (DelimiterValue!5569 (value!86416 List!15321)) (DedentValue!2784 (value!86417 List!15321)) (NewLineValue!2784 (value!86418 List!15321)) (IntegerValue!8352 (value!86419 (_ BitVec 32)) (text!19935 List!15321)) (IntegerValue!8353 (value!86420 Int) (text!19936 List!15321)) (Times!2784) (Or!2784) (Equal!2784) (Minus!2784) (Broken!13924 (value!86421 List!15321)) (And!2784) (Div!2784) (LessEqual!2784) (Mod!2784) (Concat!6792) (Not!2784) (Plus!2784) (SpaceValue!2784 (value!86422 List!15321)) (IntegerValue!8354 (value!86423 Int) (text!19937 List!15321)) (StringLiteralValue!8353 (text!19938 List!15321)) (FloatLiteralValue!5569 (text!19939 List!15321)) (BytesLiteralValue!2784 (value!86424 List!15321)) (CommentValue!5569 (value!86425 List!15321)) (StringLiteralValue!8354 (value!86426 List!15321)) (ErrorTokenValue!2784 (msg!2845 List!15321)) )
))
(declare-datatypes ((IArray!10405 0))(
  ( (IArray!10406 (innerList!5260 List!15320)) )
))
(declare-datatypes ((Conc!5200 0))(
  ( (Node!5200 (left!12946 Conc!5200) (right!13276 Conc!5200) (csize!10630 Int) (cheight!5411 Int)) (Leaf!7749 (xs!7955 IArray!10405) (csize!10631 Int)) (Empty!5200) )
))
(declare-datatypes ((BalanceConc!10340 0))(
  ( (BalanceConc!10341 (c!241766 Conc!5200)) )
))
(declare-datatypes ((TokenValueInjection!5228 0))(
  ( (TokenValueInjection!5229 (toValue!4005 Int) (toChars!3864 Int)) )
))
(declare-datatypes ((Regex!4008 0))(
  ( (ElementMatch!4008 (c!241767 C!8194)) (Concat!6793 (regOne!8528 Regex!4008) (regTwo!8528 Regex!4008)) (EmptyExpr!4008) (Star!4008 (reg!4337 Regex!4008)) (EmptyLang!4008) (Union!4008 (regOne!8529 Regex!4008) (regTwo!8529 Regex!4008)) )
))
(declare-datatypes ((String!18178 0))(
  ( (String!18179 (value!86427 String)) )
))
(declare-datatypes ((Rule!5188 0))(
  ( (Rule!5189 (regex!2694 Regex!4008) (tag!2958 String!18178) (isSeparator!2694 Bool) (transformation!2694 TokenValueInjection!5228)) )
))
(declare-datatypes ((Token!5050 0))(
  ( (Token!5051 (value!86428 TokenValue!2784) (rule!4471 Rule!5188) (size!12460 Int) (originalCharacters!3556 List!15320)) )
))
(declare-datatypes ((List!15322 0))(
  ( (Nil!15256) (Cons!15256 (h!20657 Token!5050) (t!135021 List!15322)) )
))
(declare-fun tokens1!47 () List!15322)

(declare-fun isEmpty!9580 (List!15322) Bool)

(assert (=> b!1466585 (= res!663880 (not (isEmpty!9580 (t!135021 tokens1!47))))))

(declare-fun b!1466586 () Bool)

(declare-fun tp!412539 () Bool)

(declare-fun e!935831 () Bool)

(declare-fun inv!20390 (String!18178) Bool)

(declare-fun inv!20393 (TokenValueInjection!5228) Bool)

(assert (=> b!1466586 (= e!935831 (and tp!412539 (inv!20390 (tag!2958 (rule!4471 (h!20657 tokens1!47)))) (inv!20393 (transformation!2694 (rule!4471 (h!20657 tokens1!47)))) e!935834))))

(declare-fun tokens2!49 () List!15322)

(declare-fun b!1466587 () Bool)

(declare-fun e!935824 () Bool)

(declare-fun e!935826 () Bool)

(declare-fun tp!412537 () Bool)

(declare-fun inv!20394 (Token!5050) Bool)

(assert (=> b!1466587 (= e!935824 (and (inv!20394 (h!20657 tokens2!49)) e!935826 tp!412537))))

(declare-fun e!935835 () Bool)

(assert (=> b!1466588 (= e!935835 (and tp!412545 tp!412538))))

(declare-fun b!1466589 () Bool)

(declare-fun tp!412544 () Bool)

(declare-fun e!935823 () Bool)

(assert (=> b!1466589 (= e!935823 (and tp!412544 (inv!20390 (tag!2958 (rule!4471 (h!20657 tokens2!49)))) (inv!20393 (transformation!2694 (rule!4471 (h!20657 tokens2!49)))) e!935835))))

(declare-fun b!1466590 () Bool)

(declare-fun tp!412546 () Bool)

(declare-fun e!935829 () Bool)

(declare-fun e!935821 () Bool)

(assert (=> b!1466590 (= e!935829 (and (inv!20394 (h!20657 tokens1!47)) e!935821 tp!412546))))

(declare-fun b!1466591 () Bool)

(declare-fun tp!412542 () Bool)

(declare-fun inv!21 (TokenValue!2784) Bool)

(assert (=> b!1466591 (= e!935826 (and (inv!21 (value!86428 (h!20657 tokens2!49))) e!935823 tp!412542))))

(declare-fun b!1466592 () Bool)

(declare-fun e!935833 () Bool)

(declare-fun lt!510687 () List!15320)

(assert (=> b!1466592 (= e!935833 (= lt!510687 Nil!15254))))

(declare-fun res!663881 () Bool)

(assert (=> start!137164 (=> (not res!663881) (not e!935830))))

(declare-datatypes ((LexerInterface!2350 0))(
  ( (LexerInterfaceExt!2347 (__x!9359 Int)) (Lexer!2348) )
))
(declare-fun thiss!20360 () LexerInterface!2350)

(assert (=> start!137164 (= res!663881 (and (is-Lexer!2348 thiss!20360) (is-Cons!15256 tokens1!47)))))

(assert (=> start!137164 e!935830))

(assert (=> start!137164 true))

(assert (=> start!137164 e!935829))

(assert (=> start!137164 e!935824))

(declare-fun b!1466593 () Bool)

(declare-fun tp!412543 () Bool)

(assert (=> b!1466593 (= e!935821 (and (inv!21 (value!86428 (h!20657 tokens1!47))) e!935831 tp!412543))))

(declare-fun b!1466594 () Bool)

(assert (=> b!1466594 (= e!935830 (not e!935822))))

(declare-fun res!663882 () Bool)

(assert (=> b!1466594 (=> res!663882 e!935822)))

(declare-fun lt!510691 () List!15320)

(declare-fun printList!744 (LexerInterface!2350 List!15322) List!15320)

(assert (=> b!1466594 (= res!663882 (not (= (printList!744 thiss!20360 tokens1!47) lt!510691)))))

(assert (=> b!1466594 e!935833))

(declare-fun c!241765 () Bool)

(declare-fun lt!510693 () List!15322)

(assert (=> b!1466594 (= c!241765 (is-Cons!15256 lt!510693))))

(assert (=> b!1466594 (= lt!510687 (printList!744 thiss!20360 lt!510693))))

(declare-fun ++!4141 (List!15322 List!15322) List!15322)

(assert (=> b!1466594 (= lt!510693 (++!4141 tokens1!47 tokens2!49))))

(declare-fun lt!510686 () List!15320)

(assert (=> b!1466594 (= lt!510686 lt!510691)))

(declare-fun lt!510690 () List!15320)

(assert (=> b!1466594 (= lt!510691 (++!4140 lt!510684 lt!510690))))

(assert (=> b!1466594 (= lt!510686 (printList!744 thiss!20360 tokens1!47))))

(declare-fun list!6116 (BalanceConc!10340) List!15320)

(declare-fun charsOf!1553 (Token!5050) BalanceConc!10340)

(assert (=> b!1466594 (= lt!510684 (list!6116 (charsOf!1553 (h!20657 tokens1!47))))))

(declare-fun lt!510689 () List!15320)

(assert (=> b!1466594 (= lt!510688 (++!4140 lt!510690 lt!510689))))

(declare-fun lt!510694 () List!15322)

(assert (=> b!1466594 (= lt!510688 (printList!744 thiss!20360 lt!510694))))

(assert (=> b!1466594 (= lt!510689 (printList!744 thiss!20360 tokens2!49))))

(assert (=> b!1466594 (= lt!510690 (printList!744 thiss!20360 (t!135021 tokens1!47)))))

(assert (=> b!1466594 (= lt!510694 (++!4141 (t!135021 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25036 0))(
  ( (Unit!25037) )
))
(declare-fun lt!510692 () Unit!25036)

(declare-fun lemmaPrintConcatSameAsConcatPrint!89 (LexerInterface!2350 List!15322 List!15322) Unit!25036)

(assert (=> b!1466594 (= lt!510692 (lemmaPrintConcatSameAsConcatPrint!89 thiss!20360 (t!135021 tokens1!47) tokens2!49))))

(declare-fun b!1466595 () Bool)

(assert (=> b!1466595 (= e!935833 (= lt!510687 (++!4140 (list!6116 (charsOf!1553 (h!20657 lt!510693))) (printList!744 thiss!20360 (t!135021 lt!510693)))))))

(assert (= (and start!137164 res!663881) b!1466585))

(assert (= (and b!1466585 res!663880) b!1466594))

(assert (= (and b!1466594 c!241765) b!1466595))

(assert (= (and b!1466594 (not c!241765)) b!1466592))

(assert (= (and b!1466594 (not res!663882)) b!1466583))

(assert (= b!1466586 b!1466584))

(assert (= b!1466593 b!1466586))

(assert (= b!1466590 b!1466593))

(assert (= (and start!137164 (is-Cons!15256 tokens1!47)) b!1466590))

(assert (= b!1466589 b!1466588))

(assert (= b!1466591 b!1466589))

(assert (= b!1466587 b!1466591))

(assert (= (and start!137164 (is-Cons!15256 tokens2!49)) b!1466587))

(declare-fun m!1711237 () Bool)

(assert (=> b!1466586 m!1711237))

(declare-fun m!1711239 () Bool)

(assert (=> b!1466586 m!1711239))

(declare-fun m!1711241 () Bool)

(assert (=> b!1466585 m!1711241))

(declare-fun m!1711243 () Bool)

(assert (=> b!1466587 m!1711243))

(declare-fun m!1711245 () Bool)

(assert (=> b!1466589 m!1711245))

(declare-fun m!1711247 () Bool)

(assert (=> b!1466589 m!1711247))

(declare-fun m!1711249 () Bool)

(assert (=> b!1466594 m!1711249))

(declare-fun m!1711251 () Bool)

(assert (=> b!1466594 m!1711251))

(declare-fun m!1711253 () Bool)

(assert (=> b!1466594 m!1711253))

(declare-fun m!1711255 () Bool)

(assert (=> b!1466594 m!1711255))

(declare-fun m!1711257 () Bool)

(assert (=> b!1466594 m!1711257))

(declare-fun m!1711259 () Bool)

(assert (=> b!1466594 m!1711259))

(declare-fun m!1711261 () Bool)

(assert (=> b!1466594 m!1711261))

(declare-fun m!1711263 () Bool)

(assert (=> b!1466594 m!1711263))

(declare-fun m!1711265 () Bool)

(assert (=> b!1466594 m!1711265))

(declare-fun m!1711267 () Bool)

(assert (=> b!1466594 m!1711267))

(assert (=> b!1466594 m!1711253))

(declare-fun m!1711269 () Bool)

(assert (=> b!1466594 m!1711269))

(declare-fun m!1711271 () Bool)

(assert (=> b!1466594 m!1711271))

(declare-fun m!1711273 () Bool)

(assert (=> b!1466593 m!1711273))

(declare-fun m!1711275 () Bool)

(assert (=> b!1466595 m!1711275))

(assert (=> b!1466595 m!1711275))

(declare-fun m!1711277 () Bool)

(assert (=> b!1466595 m!1711277))

(declare-fun m!1711279 () Bool)

(assert (=> b!1466595 m!1711279))

(assert (=> b!1466595 m!1711277))

(assert (=> b!1466595 m!1711279))

(declare-fun m!1711281 () Bool)

(assert (=> b!1466595 m!1711281))

(declare-fun m!1711283 () Bool)

(assert (=> b!1466590 m!1711283))

(declare-fun m!1711285 () Bool)

(assert (=> b!1466591 m!1711285))

(declare-fun m!1711287 () Bool)

(assert (=> b!1466583 m!1711287))

(push 1)

(assert (not b_next!37393))

(assert b_and!100167)

(assert (not b_next!37391))

(assert (not b!1466591))

(assert (not b!1466583))

(assert (not b!1466593))

(assert (not b_next!37397))

(assert (not b!1466586))

(assert b_and!100165)

(assert (not b!1466589))

(assert (not b!1466595))

(assert b_and!100163)

(assert (not b_next!37395))

(assert (not b!1466594))

(assert (not b!1466587))

(assert (not b!1466585))

(assert b_and!100161)

(assert (not b!1466590))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37393))

(assert b_and!100167)

(assert (not b_next!37391))

(assert b_and!100161)

(assert (not b_next!37397))

(assert b_and!100165)

(assert b_and!100163)

(assert (not b_next!37395))

(check-sat)

(pop 1)


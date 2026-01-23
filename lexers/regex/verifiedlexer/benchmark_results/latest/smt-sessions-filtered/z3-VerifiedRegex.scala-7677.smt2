; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404366 () Bool)

(assert start!404366)

(declare-fun b!4228404 () Bool)

(declare-fun b_free!124827 () Bool)

(declare-fun b_next!125531 () Bool)

(assert (=> b!4228404 (= b_free!124827 (not b_next!125531))))

(declare-fun tp!1295202 () Bool)

(declare-fun b_and!334065 () Bool)

(assert (=> b!4228404 (= tp!1295202 b_and!334065)))

(declare-fun b_free!124829 () Bool)

(declare-fun b_next!125533 () Bool)

(assert (=> b!4228404 (= b_free!124829 (not b_next!125533))))

(declare-fun tp!1295199 () Bool)

(declare-fun b_and!334067 () Bool)

(assert (=> b!4228404 (= tp!1295199 b_and!334067)))

(declare-fun b!4228408 () Bool)

(declare-fun b_free!124831 () Bool)

(declare-fun b_next!125535 () Bool)

(assert (=> b!4228408 (= b_free!124831 (not b_next!125535))))

(declare-fun tp!1295201 () Bool)

(declare-fun b_and!334069 () Bool)

(assert (=> b!4228408 (= tp!1295201 b_and!334069)))

(declare-fun b_free!124833 () Bool)

(declare-fun b_next!125537 () Bool)

(assert (=> b!4228408 (= b_free!124833 (not b_next!125537))))

(declare-fun tp!1295197 () Bool)

(declare-fun b_and!334071 () Bool)

(assert (=> b!4228408 (= tp!1295197 b_and!334071)))

(declare-fun b!4228392 () Bool)

(declare-fun e!2625530 () Bool)

(declare-fun e!2625532 () Bool)

(assert (=> b!4228392 (= e!2625530 e!2625532)))

(declare-fun res!1738727 () Bool)

(assert (=> b!4228392 (=> (not res!1738727) (not e!2625532))))

(declare-fun lt!1503346 () Int)

(declare-datatypes ((C!25740 0))(
  ( (C!25741 (val!15032 Int)) )
))
(declare-datatypes ((List!46796 0))(
  ( (Nil!46672) (Cons!46672 (h!52092 C!25740) (t!349417 List!46796)) )
))
(declare-fun input!3586 () List!46796)

(declare-fun size!34190 (List!46796) Int)

(assert (=> b!4228392 (= res!1738727 (<= lt!1503346 (size!34190 input!3586)))))

(declare-fun pBis!134 () List!46796)

(assert (=> b!4228392 (= lt!1503346 (size!34190 pBis!134))))

(declare-fun b!4228393 () Bool)

(declare-fun e!2625538 () Bool)

(declare-fun tp_is_empty!22477 () Bool)

(declare-fun tp!1295196 () Bool)

(assert (=> b!4228393 (= e!2625538 (and tp_is_empty!22477 tp!1295196))))

(declare-fun b!4228394 () Bool)

(declare-fun e!2625533 () Bool)

(declare-fun tp!1295204 () Bool)

(assert (=> b!4228394 (= e!2625533 (and tp_is_empty!22477 tp!1295204))))

(declare-fun b!4228395 () Bool)

(declare-fun res!1738736 () Bool)

(assert (=> b!4228395 (=> (not res!1738736) (not e!2625532))))

(declare-datatypes ((List!46797 0))(
  ( (Nil!46673) (Cons!46673 (h!52093 (_ BitVec 16)) (t!349418 List!46797)) )
))
(declare-datatypes ((TokenValue!8096 0))(
  ( (FloatLiteralValue!16192 (text!57117 List!46797)) (TokenValueExt!8095 (__x!28415 Int)) (Broken!40480 (value!244653 List!46797)) (Object!8219) (End!8096) (Def!8096) (Underscore!8096) (Match!8096) (Else!8096) (Error!8096) (Case!8096) (If!8096) (Extends!8096) (Abstract!8096) (Class!8096) (Val!8096) (DelimiterValue!16192 (del!8156 List!46797)) (KeywordValue!8102 (value!244654 List!46797)) (CommentValue!16192 (value!244655 List!46797)) (WhitespaceValue!16192 (value!244656 List!46797)) (IndentationValue!8096 (value!244657 List!46797)) (String!54353) (Int32!8096) (Broken!40481 (value!244658 List!46797)) (Boolean!8097) (Unit!65768) (OperatorValue!8099 (op!8156 List!46797)) (IdentifierValue!16192 (value!244659 List!46797)) (IdentifierValue!16193 (value!244660 List!46797)) (WhitespaceValue!16193 (value!244661 List!46797)) (True!16192) (False!16192) (Broken!40482 (value!244662 List!46797)) (Broken!40483 (value!244663 List!46797)) (True!16193) (RightBrace!8096) (RightBracket!8096) (Colon!8096) (Null!8096) (Comma!8096) (LeftBracket!8096) (False!16193) (LeftBrace!8096) (ImaginaryLiteralValue!8096 (text!57118 List!46797)) (StringLiteralValue!24288 (value!244664 List!46797)) (EOFValue!8096 (value!244665 List!46797)) (IdentValue!8096 (value!244666 List!46797)) (DelimiterValue!16193 (value!244667 List!46797)) (DedentValue!8096 (value!244668 List!46797)) (NewLineValue!8096 (value!244669 List!46797)) (IntegerValue!24288 (value!244670 (_ BitVec 32)) (text!57119 List!46797)) (IntegerValue!24289 (value!244671 Int) (text!57120 List!46797)) (Times!8096) (Or!8096) (Equal!8096) (Minus!8096) (Broken!40484 (value!244672 List!46797)) (And!8096) (Div!8096) (LessEqual!8096) (Mod!8096) (Concat!20867) (Not!8096) (Plus!8096) (SpaceValue!8096 (value!244673 List!46797)) (IntegerValue!24290 (value!244674 Int) (text!57121 List!46797)) (StringLiteralValue!24289 (text!57122 List!46797)) (FloatLiteralValue!16193 (text!57123 List!46797)) (BytesLiteralValue!8096 (value!244675 List!46797)) (CommentValue!16193 (value!244676 List!46797)) (StringLiteralValue!24290 (value!244677 List!46797)) (ErrorTokenValue!8096 (msg!8157 List!46797)) )
))
(declare-datatypes ((IArray!28159 0))(
  ( (IArray!28160 (innerList!14137 List!46796)) )
))
(declare-datatypes ((Conc!14077 0))(
  ( (Node!14077 (left!34714 Conc!14077) (right!35044 Conc!14077) (csize!28384 Int) (cheight!14288 Int)) (Leaf!21755 (xs!17383 IArray!28159) (csize!28385 Int)) (Empty!14077) )
))
(declare-datatypes ((BalanceConc!27748 0))(
  ( (BalanceConc!27749 (c!718780 Conc!14077)) )
))
(declare-datatypes ((TokenValueInjection!15620 0))(
  ( (TokenValueInjection!15621 (toValue!10594 Int) (toChars!10453 Int)) )
))
(declare-datatypes ((Regex!12771 0))(
  ( (ElementMatch!12771 (c!718781 C!25740)) (Concat!20868 (regOne!26054 Regex!12771) (regTwo!26054 Regex!12771)) (EmptyExpr!12771) (Star!12771 (reg!13100 Regex!12771)) (EmptyLang!12771) (Union!12771 (regOne!26055 Regex!12771) (regTwo!26055 Regex!12771)) )
))
(declare-datatypes ((String!54354 0))(
  ( (String!54355 (value!244678 String)) )
))
(declare-datatypes ((Rule!15532 0))(
  ( (Rule!15533 (regex!7866 Regex!12771) (tag!8730 String!54354) (isSeparator!7866 Bool) (transformation!7866 TokenValueInjection!15620)) )
))
(declare-fun r!4334 () Rule!15532)

(declare-fun validRegex!5789 (Regex!12771) Bool)

(assert (=> b!4228395 (= res!1738736 (validRegex!5789 (regex!7866 r!4334)))))

(declare-fun b!4228396 () Bool)

(assert (=> b!4228396 (= e!2625532 (not true))))

(declare-fun isPrefix!4681 (List!46796 List!46796) Bool)

(assert (=> b!4228396 (isPrefix!4681 input!3586 input!3586)))

(declare-datatypes ((Unit!65769 0))(
  ( (Unit!65770) )
))
(declare-fun lt!1503345 () Unit!65769)

(declare-fun lemmaIsPrefixRefl!3092 (List!46796 List!46796) Unit!65769)

(assert (=> b!4228396 (= lt!1503345 (lemmaIsPrefixRefl!3092 input!3586 input!3586))))

(declare-fun b!4228397 () Bool)

(declare-fun res!1738728 () Bool)

(assert (=> b!4228397 (=> (not res!1738728) (not e!2625532))))

(declare-fun p!3014 () List!46796)

(declare-fun matchR!6410 (Regex!12771 List!46796) Bool)

(assert (=> b!4228397 (= res!1738728 (matchR!6410 (regex!7866 r!4334) p!3014))))

(declare-fun e!2625534 () Bool)

(declare-fun tp!1295205 () Bool)

(declare-fun b!4228398 () Bool)

(declare-fun e!2625529 () Bool)

(declare-fun inv!61332 (String!54354) Bool)

(declare-fun inv!61335 (TokenValueInjection!15620) Bool)

(assert (=> b!4228398 (= e!2625529 (and tp!1295205 (inv!61332 (tag!8730 r!4334)) (inv!61335 (transformation!7866 r!4334)) e!2625534))))

(declare-fun b!4228399 () Bool)

(declare-fun e!2625535 () Bool)

(declare-fun tp!1295200 () Bool)

(assert (=> b!4228399 (= e!2625535 (and tp_is_empty!22477 tp!1295200))))

(declare-fun res!1738731 () Bool)

(assert (=> start!404366 (=> (not res!1738731) (not e!2625530))))

(declare-datatypes ((LexerInterface!7461 0))(
  ( (LexerInterfaceExt!7458 (__x!28416 Int)) (Lexer!7459) )
))
(declare-fun thiss!26785 () LexerInterface!7461)

(get-info :version)

(assert (=> start!404366 (= res!1738731 ((_ is Lexer!7459) thiss!26785))))

(assert (=> start!404366 e!2625530))

(assert (=> start!404366 true))

(declare-fun e!2625528 () Bool)

(assert (=> start!404366 e!2625528))

(declare-datatypes ((Token!14366 0))(
  ( (Token!14367 (value!244679 TokenValue!8096) (rule!10980 Rule!15532) (size!34191 Int) (originalCharacters!8214 List!46796)) )
))
(declare-fun t!8425 () Token!14366)

(declare-fun e!2625536 () Bool)

(declare-fun inv!61336 (Token!14366) Bool)

(assert (=> start!404366 (and (inv!61336 t!8425) e!2625536)))

(assert (=> start!404366 e!2625529))

(assert (=> start!404366 e!2625538))

(assert (=> start!404366 e!2625535))

(assert (=> start!404366 e!2625533))

(declare-fun b!4228400 () Bool)

(declare-fun res!1738733 () Bool)

(assert (=> b!4228400 (=> (not res!1738733) (not e!2625532))))

(declare-fun list!16844 (BalanceConc!27748) List!46796)

(declare-fun charsOf!5241 (Token!14366) BalanceConc!27748)

(assert (=> b!4228400 (= res!1738733 (= (list!16844 (charsOf!5241 t!8425)) p!3014))))

(declare-fun b!4228401 () Bool)

(declare-fun res!1738734 () Bool)

(assert (=> b!4228401 (=> (not res!1738734) (not e!2625530))))

(assert (=> b!4228401 (= res!1738734 (isPrefix!4681 p!3014 input!3586))))

(declare-fun b!4228402 () Bool)

(declare-fun res!1738735 () Bool)

(assert (=> b!4228402 (=> (not res!1738735) (not e!2625530))))

(assert (=> b!4228402 (= res!1738735 (isPrefix!4681 pBis!134 input!3586))))

(declare-fun b!4228403 () Bool)

(declare-fun res!1738729 () Bool)

(assert (=> b!4228403 (=> (not res!1738729) (not e!2625530))))

(declare-fun suffix!1590 () List!46796)

(declare-fun ++!11896 (List!46796 List!46796) List!46796)

(assert (=> b!4228403 (= res!1738729 (= (++!11896 p!3014 suffix!1590) input!3586))))

(assert (=> b!4228404 (= e!2625534 (and tp!1295202 tp!1295199))))

(declare-fun e!2625531 () Bool)

(declare-fun tp!1295198 () Bool)

(declare-fun b!4228405 () Bool)

(declare-fun e!2625537 () Bool)

(assert (=> b!4228405 (= e!2625531 (and tp!1295198 (inv!61332 (tag!8730 (rule!10980 t!8425))) (inv!61335 (transformation!7866 (rule!10980 t!8425))) e!2625537))))

(declare-fun b!4228406 () Bool)

(declare-fun tp!1295203 () Bool)

(assert (=> b!4228406 (= e!2625528 (and tp_is_empty!22477 tp!1295203))))

(declare-fun b!4228407 () Bool)

(declare-fun res!1738730 () Bool)

(assert (=> b!4228407 (=> (not res!1738730) (not e!2625532))))

(declare-fun ruleValid!3562 (LexerInterface!7461 Rule!15532) Bool)

(assert (=> b!4228407 (= res!1738730 (ruleValid!3562 thiss!26785 r!4334))))

(assert (=> b!4228408 (= e!2625537 (and tp!1295201 tp!1295197))))

(declare-fun b!4228409 () Bool)

(declare-fun res!1738732 () Bool)

(assert (=> b!4228409 (=> (not res!1738732) (not e!2625532))))

(assert (=> b!4228409 (= res!1738732 (> lt!1503346 (size!34190 p!3014)))))

(declare-fun tp!1295206 () Bool)

(declare-fun b!4228410 () Bool)

(declare-fun inv!21 (TokenValue!8096) Bool)

(assert (=> b!4228410 (= e!2625536 (and (inv!21 (value!244679 t!8425)) e!2625531 tp!1295206))))

(assert (= (and start!404366 res!1738731) b!4228403))

(assert (= (and b!4228403 res!1738729) b!4228401))

(assert (= (and b!4228401 res!1738734) b!4228402))

(assert (= (and b!4228402 res!1738735) b!4228392))

(assert (= (and b!4228392 res!1738727) b!4228409))

(assert (= (and b!4228409 res!1738732) b!4228407))

(assert (= (and b!4228407 res!1738730) b!4228395))

(assert (= (and b!4228395 res!1738736) b!4228397))

(assert (= (and b!4228397 res!1738728) b!4228400))

(assert (= (and b!4228400 res!1738733) b!4228396))

(assert (= (and start!404366 ((_ is Cons!46672) p!3014)) b!4228406))

(assert (= b!4228405 b!4228408))

(assert (= b!4228410 b!4228405))

(assert (= start!404366 b!4228410))

(assert (= b!4228398 b!4228404))

(assert (= start!404366 b!4228398))

(assert (= (and start!404366 ((_ is Cons!46672) input!3586)) b!4228393))

(assert (= (and start!404366 ((_ is Cons!46672) pBis!134)) b!4228399))

(assert (= (and start!404366 ((_ is Cons!46672) suffix!1590)) b!4228394))

(declare-fun m!4815401 () Bool)

(assert (=> b!4228392 m!4815401))

(declare-fun m!4815403 () Bool)

(assert (=> b!4228392 m!4815403))

(declare-fun m!4815405 () Bool)

(assert (=> b!4228400 m!4815405))

(assert (=> b!4228400 m!4815405))

(declare-fun m!4815407 () Bool)

(assert (=> b!4228400 m!4815407))

(declare-fun m!4815409 () Bool)

(assert (=> start!404366 m!4815409))

(declare-fun m!4815411 () Bool)

(assert (=> b!4228410 m!4815411))

(declare-fun m!4815413 () Bool)

(assert (=> b!4228407 m!4815413))

(declare-fun m!4815415 () Bool)

(assert (=> b!4228403 m!4815415))

(declare-fun m!4815417 () Bool)

(assert (=> b!4228402 m!4815417))

(declare-fun m!4815419 () Bool)

(assert (=> b!4228398 m!4815419))

(declare-fun m!4815421 () Bool)

(assert (=> b!4228398 m!4815421))

(declare-fun m!4815423 () Bool)

(assert (=> b!4228396 m!4815423))

(declare-fun m!4815425 () Bool)

(assert (=> b!4228396 m!4815425))

(declare-fun m!4815427 () Bool)

(assert (=> b!4228409 m!4815427))

(declare-fun m!4815429 () Bool)

(assert (=> b!4228401 m!4815429))

(declare-fun m!4815431 () Bool)

(assert (=> b!4228395 m!4815431))

(declare-fun m!4815433 () Bool)

(assert (=> b!4228397 m!4815433))

(declare-fun m!4815435 () Bool)

(assert (=> b!4228405 m!4815435))

(declare-fun m!4815437 () Bool)

(assert (=> b!4228405 m!4815437))

(check-sat (not b!4228406) (not start!404366) (not b!4228395) b_and!334071 b_and!334067 (not b!4228401) (not b!4228410) (not b!4228405) (not b!4228402) (not b!4228409) (not b!4228397) (not b_next!125535) b_and!334069 (not b!4228394) tp_is_empty!22477 (not b!4228398) (not b!4228407) b_and!334065 (not b!4228392) (not b!4228396) (not b_next!125531) (not b_next!125533) (not b!4228393) (not b!4228399) (not b!4228400) (not b!4228403) (not b_next!125537))
(check-sat (not b_next!125535) b_and!334069 b_and!334065 b_and!334071 b_and!334067 (not b_next!125537) (not b_next!125531) (not b_next!125533))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347890 () Bool)

(assert start!347890)

(declare-fun b!3694392 () Bool)

(declare-fun b_free!98145 () Bool)

(declare-fun b_next!98849 () Bool)

(assert (=> b!3694392 (= b_free!98145 (not b_next!98849))))

(declare-fun tp!1122756 () Bool)

(declare-fun b_and!276051 () Bool)

(assert (=> b!3694392 (= tp!1122756 b_and!276051)))

(declare-fun b_free!98147 () Bool)

(declare-fun b_next!98851 () Bool)

(assert (=> b!3694392 (= b_free!98147 (not b_next!98851))))

(declare-fun tp!1122750 () Bool)

(declare-fun b_and!276053 () Bool)

(assert (=> b!3694392 (= tp!1122750 b_and!276053)))

(declare-fun b!3694395 () Bool)

(declare-fun b_free!98149 () Bool)

(declare-fun b_next!98853 () Bool)

(assert (=> b!3694395 (= b_free!98149 (not b_next!98853))))

(declare-fun tp!1122757 () Bool)

(declare-fun b_and!276055 () Bool)

(assert (=> b!3694395 (= tp!1122757 b_and!276055)))

(declare-fun b_free!98151 () Bool)

(declare-fun b_next!98855 () Bool)

(assert (=> b!3694395 (= b_free!98151 (not b_next!98855))))

(declare-fun tp!1122752 () Bool)

(declare-fun b_and!276057 () Bool)

(assert (=> b!3694395 (= tp!1122752 b_and!276057)))

(declare-fun b!3694385 () Bool)

(declare-fun res!1502027 () Bool)

(declare-fun e!2287654 () Bool)

(assert (=> b!3694385 (=> (not res!1502027) (not e!2287654))))

(declare-datatypes ((List!39287 0))(
  ( (Nil!39163) (Cons!39163 (h!44583 (_ BitVec 16)) (t!301610 List!39287)) )
))
(declare-datatypes ((TokenValue!6158 0))(
  ( (FloatLiteralValue!12316 (text!43551 List!39287)) (TokenValueExt!6157 (__x!24533 Int)) (Broken!30790 (value!189376 List!39287)) (Object!6281) (End!6158) (Def!6158) (Underscore!6158) (Match!6158) (Else!6158) (Error!6158) (Case!6158) (If!6158) (Extends!6158) (Abstract!6158) (Class!6158) (Val!6158) (DelimiterValue!12316 (del!6218 List!39287)) (KeywordValue!6164 (value!189377 List!39287)) (CommentValue!12316 (value!189378 List!39287)) (WhitespaceValue!12316 (value!189379 List!39287)) (IndentationValue!6158 (value!189380 List!39287)) (String!44123) (Int32!6158) (Broken!30791 (value!189381 List!39287)) (Boolean!6159) (Unit!57169) (OperatorValue!6161 (op!6218 List!39287)) (IdentifierValue!12316 (value!189382 List!39287)) (IdentifierValue!12317 (value!189383 List!39287)) (WhitespaceValue!12317 (value!189384 List!39287)) (True!12316) (False!12316) (Broken!30792 (value!189385 List!39287)) (Broken!30793 (value!189386 List!39287)) (True!12317) (RightBrace!6158) (RightBracket!6158) (Colon!6158) (Null!6158) (Comma!6158) (LeftBracket!6158) (False!12317) (LeftBrace!6158) (ImaginaryLiteralValue!6158 (text!43552 List!39287)) (StringLiteralValue!18474 (value!189387 List!39287)) (EOFValue!6158 (value!189388 List!39287)) (IdentValue!6158 (value!189389 List!39287)) (DelimiterValue!12317 (value!189390 List!39287)) (DedentValue!6158 (value!189391 List!39287)) (NewLineValue!6158 (value!189392 List!39287)) (IntegerValue!18474 (value!189393 (_ BitVec 32)) (text!43553 List!39287)) (IntegerValue!18475 (value!189394 Int) (text!43554 List!39287)) (Times!6158) (Or!6158) (Equal!6158) (Minus!6158) (Broken!30794 (value!189395 List!39287)) (And!6158) (Div!6158) (LessEqual!6158) (Mod!6158) (Concat!16845) (Not!6158) (Plus!6158) (SpaceValue!6158 (value!189396 List!39287)) (IntegerValue!18476 (value!189397 Int) (text!43555 List!39287)) (StringLiteralValue!18475 (text!43556 List!39287)) (FloatLiteralValue!12317 (text!43557 List!39287)) (BytesLiteralValue!6158 (value!189398 List!39287)) (CommentValue!12317 (value!189399 List!39287)) (StringLiteralValue!18476 (value!189400 List!39287)) (ErrorTokenValue!6158 (msg!6219 List!39287)) )
))
(declare-datatypes ((C!21560 0))(
  ( (C!21561 (val!12828 Int)) )
))
(declare-datatypes ((List!39288 0))(
  ( (Nil!39164) (Cons!39164 (h!44584 C!21560) (t!301611 List!39288)) )
))
(declare-datatypes ((IArray!24055 0))(
  ( (IArray!24056 (innerList!12085 List!39288)) )
))
(declare-datatypes ((Conc!12025 0))(
  ( (Node!12025 (left!30535 Conc!12025) (right!30865 Conc!12025) (csize!24280 Int) (cheight!12236 Int)) (Leaf!18600 (xs!15227 IArray!24055) (csize!24281 Int)) (Empty!12025) )
))
(declare-datatypes ((BalanceConc!23664 0))(
  ( (BalanceConc!23665 (c!638726 Conc!12025)) )
))
(declare-datatypes ((String!44124 0))(
  ( (String!44125 (value!189401 String)) )
))
(declare-datatypes ((Regex!10687 0))(
  ( (ElementMatch!10687 (c!638727 C!21560)) (Concat!16846 (regOne!21886 Regex!10687) (regTwo!21886 Regex!10687)) (EmptyExpr!10687) (Star!10687 (reg!11016 Regex!10687)) (EmptyLang!10687) (Union!10687 (regOne!21887 Regex!10687) (regTwo!21887 Regex!10687)) )
))
(declare-datatypes ((TokenValueInjection!11744 0))(
  ( (TokenValueInjection!11745 (toValue!8260 Int) (toChars!8119 Int)) )
))
(declare-datatypes ((Rule!11656 0))(
  ( (Rule!11657 (regex!5928 Regex!10687) (tag!6750 String!44124) (isSeparator!5928 Bool) (transformation!5928 TokenValueInjection!11744)) )
))
(declare-datatypes ((Token!11210 0))(
  ( (Token!11211 (value!189402 TokenValue!6158) (rule!8780 Rule!11656) (size!29903 Int) (originalCharacters!6636 List!39288)) )
))
(declare-datatypes ((tuple2!39062 0))(
  ( (tuple2!39063 (_1!22665 Token!11210) (_2!22665 List!39288)) )
))
(declare-datatypes ((Option!8440 0))(
  ( (None!8439) (Some!8439 (v!38397 tuple2!39062)) )
))
(declare-fun lt!1293259 () Option!8440)

(declare-fun token!544 () Token!11210)

(declare-fun get!12995 (Option!8440) tuple2!39062)

(assert (=> b!3694385 (= res!1502027 (= (_1!22665 (get!12995 lt!1293259)) token!544))))

(declare-fun b!3694386 () Bool)

(declare-fun e!2287649 () Bool)

(declare-fun e!2287652 () Bool)

(declare-fun tp!1122754 () Bool)

(assert (=> b!3694386 (= e!2287649 (and e!2287652 tp!1122754))))

(declare-fun e!2287653 () Bool)

(declare-fun e!2287648 () Bool)

(declare-fun tp!1122753 () Bool)

(declare-fun b!3694387 () Bool)

(declare-fun inv!52639 (String!44124) Bool)

(declare-fun inv!52642 (TokenValueInjection!11744) Bool)

(assert (=> b!3694387 (= e!2287653 (and tp!1122753 (inv!52639 (tag!6750 (rule!8780 token!544))) (inv!52642 (transformation!5928 (rule!8780 token!544))) e!2287648))))

(declare-fun b!3694388 () Bool)

(declare-fun res!1502028 () Bool)

(assert (=> b!3694388 (=> (not res!1502028) (not e!2287654))))

(declare-datatypes ((List!39289 0))(
  ( (Nil!39165) (Cons!39165 (h!44585 Rule!11656) (t!301612 List!39289)) )
))
(declare-fun rules!3598 () List!39289)

(assert (=> b!3694388 (= res!1502028 (= (h!44585 rules!3598) (rule!8780 token!544)))))

(declare-fun b!3694389 () Bool)

(declare-fun res!1502026 () Bool)

(declare-fun e!2287646 () Bool)

(assert (=> b!3694389 (=> (not res!1502026) (not e!2287646))))

(declare-fun lt!1293258 () Option!8440)

(assert (=> b!3694389 (= res!1502026 (= (_1!22665 (get!12995 lt!1293258)) token!544))))

(declare-fun tp!1122751 () Bool)

(declare-fun b!3694390 () Bool)

(declare-fun e!2287651 () Bool)

(declare-fun inv!21 (TokenValue!6158) Bool)

(assert (=> b!3694390 (= e!2287651 (and (inv!21 (value!189402 token!544)) e!2287653 tp!1122751))))

(declare-fun b!3694391 () Bool)

(assert (=> b!3694391 (= e!2287646 e!2287654)))

(declare-fun res!1502022 () Bool)

(assert (=> b!3694391 (=> (not res!1502022) (not e!2287654))))

(declare-fun isDefined!6633 (Option!8440) Bool)

(assert (=> b!3694391 (= res!1502022 (isDefined!6633 lt!1293259))))

(declare-fun input!3172 () List!39288)

(declare-datatypes ((LexerInterface!5517 0))(
  ( (LexerInterfaceExt!5514 (__x!24534 Int)) (Lexer!5515) )
))
(declare-fun thiss!25322 () LexerInterface!5517)

(declare-fun maxPrefixOneRule!2153 (LexerInterface!5517 Rule!11656 List!39288) Option!8440)

(assert (=> b!3694391 (= lt!1293259 (maxPrefixOneRule!2153 thiss!25322 (h!44585 rules!3598) input!3172))))

(assert (=> b!3694392 (= e!2287648 (and tp!1122756 tp!1122750))))

(declare-fun b!3694394 () Bool)

(declare-fun res!1502029 () Bool)

(declare-fun e!2287647 () Bool)

(assert (=> b!3694394 (=> (not res!1502029) (not e!2287647))))

(declare-fun rulesInvariant!4914 (LexerInterface!5517 List!39289) Bool)

(assert (=> b!3694394 (= res!1502029 (rulesInvariant!4914 thiss!25322 rules!3598))))

(declare-fun e!2287655 () Bool)

(assert (=> b!3694395 (= e!2287655 (and tp!1122757 tp!1122752))))

(declare-fun b!3694396 () Bool)

(declare-fun res!1502023 () Bool)

(assert (=> b!3694396 (=> (not res!1502023) (not e!2287646))))

(get-info :version)

(assert (=> b!3694396 (= res!1502023 ((_ is Cons!39165) rules!3598))))

(declare-fun b!3694397 () Bool)

(declare-fun tp!1122755 () Bool)

(assert (=> b!3694397 (= e!2287652 (and tp!1122755 (inv!52639 (tag!6750 (h!44585 rules!3598))) (inv!52642 (transformation!5928 (h!44585 rules!3598))) e!2287655))))

(declare-fun b!3694398 () Bool)

(declare-fun res!1502024 () Bool)

(assert (=> b!3694398 (=> (not res!1502024) (not e!2287647))))

(declare-fun isEmpty!23344 (List!39289) Bool)

(assert (=> b!3694398 (= res!1502024 (not (isEmpty!23344 rules!3598)))))

(declare-fun res!1502021 () Bool)

(assert (=> start!347890 (=> (not res!1502021) (not e!2287647))))

(assert (=> start!347890 (= res!1502021 ((_ is Lexer!5515) thiss!25322))))

(assert (=> start!347890 e!2287647))

(assert (=> start!347890 true))

(assert (=> start!347890 e!2287649))

(declare-fun inv!52643 (Token!11210) Bool)

(assert (=> start!347890 (and (inv!52643 token!544) e!2287651)))

(declare-fun e!2287656 () Bool)

(assert (=> start!347890 e!2287656))

(declare-fun b!3694393 () Bool)

(assert (=> b!3694393 (= e!2287647 e!2287646)))

(declare-fun res!1502025 () Bool)

(assert (=> b!3694393 (=> (not res!1502025) (not e!2287646))))

(assert (=> b!3694393 (= res!1502025 (isDefined!6633 lt!1293258))))

(declare-fun maxPrefix!3039 (LexerInterface!5517 List!39289 List!39288) Option!8440)

(assert (=> b!3694393 (= lt!1293258 (maxPrefix!3039 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3694399 () Bool)

(declare-fun tp_is_empty!18449 () Bool)

(declare-fun tp!1122758 () Bool)

(assert (=> b!3694399 (= e!2287656 (and tp_is_empty!18449 tp!1122758))))

(declare-fun b!3694400 () Bool)

(assert (=> b!3694400 (= e!2287654 false)))

(declare-fun lt!1293260 () Bool)

(declare-fun matchR!5230 (Regex!10687 List!39288) Bool)

(declare-fun list!14639 (BalanceConc!23664) List!39288)

(declare-fun charsOf!3927 (Token!11210) BalanceConc!23664)

(assert (=> b!3694400 (= lt!1293260 (matchR!5230 (regex!5928 (h!44585 rules!3598)) (list!14639 (charsOf!3927 token!544))))))

(assert (= (and start!347890 res!1502021) b!3694394))

(assert (= (and b!3694394 res!1502029) b!3694398))

(assert (= (and b!3694398 res!1502024) b!3694393))

(assert (= (and b!3694393 res!1502025) b!3694389))

(assert (= (and b!3694389 res!1502026) b!3694396))

(assert (= (and b!3694396 res!1502023) b!3694391))

(assert (= (and b!3694391 res!1502022) b!3694385))

(assert (= (and b!3694385 res!1502027) b!3694388))

(assert (= (and b!3694388 res!1502028) b!3694400))

(assert (= b!3694397 b!3694395))

(assert (= b!3694386 b!3694397))

(assert (= (and start!347890 ((_ is Cons!39165) rules!3598)) b!3694386))

(assert (= b!3694387 b!3694392))

(assert (= b!3694390 b!3694387))

(assert (= start!347890 b!3694390))

(assert (= (and start!347890 ((_ is Cons!39164) input!3172)) b!3694399))

(declare-fun m!4206423 () Bool)

(assert (=> b!3694394 m!4206423))

(declare-fun m!4206425 () Bool)

(assert (=> b!3694387 m!4206425))

(declare-fun m!4206427 () Bool)

(assert (=> b!3694387 m!4206427))

(declare-fun m!4206429 () Bool)

(assert (=> b!3694390 m!4206429))

(declare-fun m!4206431 () Bool)

(assert (=> b!3694385 m!4206431))

(declare-fun m!4206433 () Bool)

(assert (=> b!3694397 m!4206433))

(declare-fun m!4206435 () Bool)

(assert (=> b!3694397 m!4206435))

(declare-fun m!4206437 () Bool)

(assert (=> start!347890 m!4206437))

(declare-fun m!4206439 () Bool)

(assert (=> b!3694398 m!4206439))

(declare-fun m!4206441 () Bool)

(assert (=> b!3694393 m!4206441))

(declare-fun m!4206443 () Bool)

(assert (=> b!3694393 m!4206443))

(declare-fun m!4206445 () Bool)

(assert (=> b!3694391 m!4206445))

(declare-fun m!4206447 () Bool)

(assert (=> b!3694391 m!4206447))

(declare-fun m!4206449 () Bool)

(assert (=> b!3694389 m!4206449))

(declare-fun m!4206451 () Bool)

(assert (=> b!3694400 m!4206451))

(assert (=> b!3694400 m!4206451))

(declare-fun m!4206453 () Bool)

(assert (=> b!3694400 m!4206453))

(assert (=> b!3694400 m!4206453))

(declare-fun m!4206455 () Bool)

(assert (=> b!3694400 m!4206455))

(check-sat b_and!276055 (not b!3694399) (not b_next!98855) (not b!3694393) (not b_next!98853) (not b!3694394) (not b!3694387) (not b_next!98851) (not b!3694389) (not b!3694386) (not b!3694391) (not b!3694397) (not start!347890) (not b!3694398) (not b!3694400) (not b!3694385) b_and!276051 tp_is_empty!18449 (not b!3694390) (not b_next!98849) b_and!276053 b_and!276057)
(check-sat b_and!276055 (not b_next!98855) (not b_next!98853) (not b_next!98851) b_and!276051 (not b_next!98849) b_and!276053 b_and!276057)

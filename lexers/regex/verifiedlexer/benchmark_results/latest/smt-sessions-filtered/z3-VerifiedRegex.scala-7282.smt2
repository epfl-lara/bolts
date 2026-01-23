; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388492 () Bool)

(assert start!388492)

(declare-fun b!4100755 () Bool)

(declare-fun b_free!114817 () Bool)

(declare-fun b_next!115521 () Bool)

(assert (=> b!4100755 (= b_free!114817 (not b_next!115521))))

(declare-fun tp!1241635 () Bool)

(declare-fun b_and!316631 () Bool)

(assert (=> b!4100755 (= tp!1241635 b_and!316631)))

(declare-fun b_free!114819 () Bool)

(declare-fun b_next!115523 () Bool)

(assert (=> b!4100755 (= b_free!114819 (not b_next!115523))))

(declare-fun tp!1241633 () Bool)

(declare-fun b_and!316633 () Bool)

(assert (=> b!4100755 (= tp!1241633 b_and!316633)))

(declare-fun b!4100760 () Bool)

(declare-fun b_free!114821 () Bool)

(declare-fun b_next!115525 () Bool)

(assert (=> b!4100760 (= b_free!114821 (not b_next!115525))))

(declare-fun tp!1241631 () Bool)

(declare-fun b_and!316635 () Bool)

(assert (=> b!4100760 (= tp!1241631 b_and!316635)))

(declare-fun b_free!114823 () Bool)

(declare-fun b_next!115527 () Bool)

(assert (=> b!4100760 (= b_free!114823 (not b_next!115527))))

(declare-fun tp!1241636 () Bool)

(declare-fun b_and!316637 () Bool)

(assert (=> b!4100760 (= tp!1241636 b_and!316637)))

(declare-fun e!2544749 () Bool)

(declare-fun tp!1241630 () Bool)

(declare-fun b!4100750 () Bool)

(declare-datatypes ((String!50579 0))(
  ( (String!50580 (value!223994 String)) )
))
(declare-datatypes ((C!24268 0))(
  ( (C!24269 (val!14244 Int)) )
))
(declare-datatypes ((List!44146 0))(
  ( (Nil!44022) (Cons!44022 (h!49442 C!24268) (t!339803 List!44146)) )
))
(declare-datatypes ((IArray!26699 0))(
  ( (IArray!26700 (innerList!13407 List!44146)) )
))
(declare-datatypes ((Conc!13347 0))(
  ( (Node!13347 (left!33073 Conc!13347) (right!33403 Conc!13347) (csize!26924 Int) (cheight!13558 Int)) (Leaf!20630 (xs!16653 IArray!26699) (csize!26925 Int)) (Empty!13347) )
))
(declare-datatypes ((List!44147 0))(
  ( (Nil!44023) (Cons!44023 (h!49443 (_ BitVec 16)) (t!339804 List!44147)) )
))
(declare-datatypes ((Regex!12041 0))(
  ( (ElementMatch!12041 (c!706472 C!24268)) (Concat!19407 (regOne!24594 Regex!12041) (regTwo!24594 Regex!12041)) (EmptyExpr!12041) (Star!12041 (reg!12370 Regex!12041)) (EmptyLang!12041) (Union!12041 (regOne!24595 Regex!12041) (regTwo!24595 Regex!12041)) )
))
(declare-datatypes ((TokenValue!7366 0))(
  ( (FloatLiteralValue!14732 (text!52007 List!44147)) (TokenValueExt!7365 (__x!26949 Int)) (Broken!36830 (value!223995 List!44147)) (Object!7489) (End!7366) (Def!7366) (Underscore!7366) (Match!7366) (Else!7366) (Error!7366) (Case!7366) (If!7366) (Extends!7366) (Abstract!7366) (Class!7366) (Val!7366) (DelimiterValue!14732 (del!7426 List!44147)) (KeywordValue!7372 (value!223996 List!44147)) (CommentValue!14732 (value!223997 List!44147)) (WhitespaceValue!14732 (value!223998 List!44147)) (IndentationValue!7366 (value!223999 List!44147)) (String!50581) (Int32!7366) (Broken!36831 (value!224000 List!44147)) (Boolean!7367) (Unit!63548) (OperatorValue!7369 (op!7426 List!44147)) (IdentifierValue!14732 (value!224001 List!44147)) (IdentifierValue!14733 (value!224002 List!44147)) (WhitespaceValue!14733 (value!224003 List!44147)) (True!14732) (False!14732) (Broken!36832 (value!224004 List!44147)) (Broken!36833 (value!224005 List!44147)) (True!14733) (RightBrace!7366) (RightBracket!7366) (Colon!7366) (Null!7366) (Comma!7366) (LeftBracket!7366) (False!14733) (LeftBrace!7366) (ImaginaryLiteralValue!7366 (text!52008 List!44147)) (StringLiteralValue!22098 (value!224006 List!44147)) (EOFValue!7366 (value!224007 List!44147)) (IdentValue!7366 (value!224008 List!44147)) (DelimiterValue!14733 (value!224009 List!44147)) (DedentValue!7366 (value!224010 List!44147)) (NewLineValue!7366 (value!224011 List!44147)) (IntegerValue!22098 (value!224012 (_ BitVec 32)) (text!52009 List!44147)) (IntegerValue!22099 (value!224013 Int) (text!52010 List!44147)) (Times!7366) (Or!7366) (Equal!7366) (Minus!7366) (Broken!36834 (value!224014 List!44147)) (And!7366) (Div!7366) (LessEqual!7366) (Mod!7366) (Concat!19408) (Not!7366) (Plus!7366) (SpaceValue!7366 (value!224015 List!44147)) (IntegerValue!22100 (value!224016 Int) (text!52011 List!44147)) (StringLiteralValue!22099 (text!52012 List!44147)) (FloatLiteralValue!14733 (text!52013 List!44147)) (BytesLiteralValue!7366 (value!224017 List!44147)) (CommentValue!14733 (value!224018 List!44147)) (StringLiteralValue!22100 (value!224019 List!44147)) (ErrorTokenValue!7366 (msg!7427 List!44147)) )
))
(declare-datatypes ((BalanceConc!26288 0))(
  ( (BalanceConc!26289 (c!706473 Conc!13347)) )
))
(declare-datatypes ((TokenValueInjection!14160 0))(
  ( (TokenValueInjection!14161 (toValue!9744 Int) (toChars!9603 Int)) )
))
(declare-datatypes ((Rule!14072 0))(
  ( (Rule!14073 (regex!7136 Regex!12041) (tag!7996 String!50579) (isSeparator!7136 Bool) (transformation!7136 TokenValueInjection!14160)) )
))
(declare-datatypes ((List!44148 0))(
  ( (Nil!44024) (Cons!44024 (h!49444 Rule!14072) (t!339805 List!44148)) )
))
(declare-fun rTail!27 () List!44148)

(declare-fun e!2544746 () Bool)

(declare-fun inv!58743 (String!50579) Bool)

(declare-fun inv!58745 (TokenValueInjection!14160) Bool)

(assert (=> b!4100750 (= e!2544749 (and tp!1241630 (inv!58743 (tag!7996 (h!49444 rTail!27))) (inv!58745 (transformation!7136 (h!49444 rTail!27))) e!2544746))))

(declare-fun e!2544744 () Bool)

(declare-fun tp!1241632 () Bool)

(declare-fun b!4100751 () Bool)

(declare-fun rHead!24 () Rule!14072)

(declare-fun e!2544743 () Bool)

(assert (=> b!4100751 (= e!2544744 (and tp!1241632 (inv!58743 (tag!7996 rHead!24)) (inv!58745 (transformation!7136 rHead!24)) e!2544743))))

(declare-fun b!4100752 () Bool)

(declare-fun e!2544753 () Bool)

(declare-fun e!2544754 () Bool)

(assert (=> b!4100752 (= e!2544753 e!2544754)))

(declare-fun res!1676444 () Bool)

(assert (=> b!4100752 (=> (not res!1676444) (not e!2544754))))

(declare-datatypes ((LexerInterface!6725 0))(
  ( (LexerInterfaceExt!6722 (__x!26950 Int)) (Lexer!6723) )
))
(declare-fun thiss!26455 () LexerInterface!6725)

(declare-fun lt!1466697 () List!44148)

(declare-fun rulesInvariant!6068 (LexerInterface!6725 List!44148) Bool)

(assert (=> b!4100752 (= res!1676444 (rulesInvariant!6068 thiss!26455 lt!1466697))))

(assert (=> b!4100752 (= lt!1466697 (Cons!44024 rHead!24 rTail!27))))

(declare-fun b!4100753 () Bool)

(declare-fun e!2544750 () Bool)

(declare-datatypes ((Token!13382 0))(
  ( (Token!13383 (value!224020 TokenValue!7366) (rule!10286 Rule!14072) (size!32857 Int) (originalCharacters!7722 List!44146)) )
))
(declare-datatypes ((tuple2!42900 0))(
  ( (tuple2!42901 (_1!24584 Token!13382) (_2!24584 List!44146)) )
))
(declare-datatypes ((Option!9534 0))(
  ( (None!9533) (Some!9533 (v!40041 tuple2!42900)) )
))
(declare-fun lt!1466695 () Option!9534)

(declare-fun get!14434 (Option!9534) tuple2!42900)

(assert (=> b!4100753 (= e!2544750 (not (= (rule!10286 (_1!24584 (get!14434 lt!1466695))) rHead!24)))))

(declare-fun b!4100754 () Bool)

(declare-fun res!1676442 () Bool)

(assert (=> b!4100754 (=> (not res!1676442) (not e!2544754))))

(get-info :version)

(assert (=> b!4100754 (= res!1676442 ((_ is Cons!44024) rTail!27))))

(assert (=> b!4100755 (= e!2544743 (and tp!1241635 tp!1241633))))

(declare-fun res!1676446 () Bool)

(assert (=> start!388492 (=> (not res!1676446) (not e!2544753))))

(assert (=> start!388492 (= res!1676446 ((_ is Lexer!6723) thiss!26455))))

(assert (=> start!388492 e!2544753))

(assert (=> start!388492 true))

(declare-fun e!2544748 () Bool)

(assert (=> start!388492 e!2544748))

(declare-fun e!2544742 () Bool)

(assert (=> start!388492 e!2544742))

(assert (=> start!388492 e!2544744))

(declare-fun b!4100756 () Bool)

(declare-fun e!2544751 () Bool)

(assert (=> b!4100756 (= e!2544751 true)))

(declare-fun input!3491 () List!44146)

(declare-fun lt!1466693 () Option!9534)

(declare-fun maxPrefix!4007 (LexerInterface!6725 List!44148 List!44146) Option!9534)

(assert (=> b!4100756 (= lt!1466693 (maxPrefix!4007 thiss!26455 rTail!27 input!3491))))

(assert (=> b!4100756 e!2544750))

(declare-fun res!1676447 () Bool)

(assert (=> b!4100756 (=> res!1676447 e!2544750)))

(declare-fun isEmpty!26334 (Option!9534) Bool)

(assert (=> b!4100756 (= res!1676447 (isEmpty!26334 lt!1466695))))

(assert (=> b!4100756 (= lt!1466695 (maxPrefix!4007 thiss!26455 (t!339805 rTail!27) input!3491))))

(declare-datatypes ((Unit!63549 0))(
  ( (Unit!63550) )
))
(declare-fun lt!1466692 () Unit!63549)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!28 (LexerInterface!6725 Rule!14072 List!44148 List!44146) Unit!63549)

(assert (=> b!4100756 (= lt!1466692 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!28 thiss!26455 rHead!24 (t!339805 rTail!27) input!3491))))

(declare-fun b!4100757 () Bool)

(declare-fun e!2544747 () Bool)

(assert (=> b!4100757 (= e!2544747 e!2544751)))

(declare-fun res!1676441 () Bool)

(assert (=> b!4100757 (=> res!1676441 e!2544751)))

(declare-fun lt!1466696 () List!44148)

(assert (=> b!4100757 (= res!1676441 (not (rulesInvariant!6068 thiss!26455 lt!1466696)))))

(declare-datatypes ((List!44149 0))(
  ( (Nil!44025) (Cons!44025 (h!49445 String!50579) (t!339806 List!44149)) )
))
(declare-fun noDuplicateTag!2815 (LexerInterface!6725 List!44148 List!44149) Bool)

(assert (=> b!4100757 (noDuplicateTag!2815 thiss!26455 lt!1466696 Nil!44025)))

(declare-fun lt!1466691 () Unit!63549)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!10 (LexerInterface!6725 List!44149 List!44149 List!44148) Unit!63549)

(assert (=> b!4100757 (= lt!1466691 (lemmaNoDupTagThenAlsoWithSubListAcc!10 thiss!26455 (Cons!44025 (tag!7996 (h!49444 rTail!27)) Nil!44025) Nil!44025 lt!1466696))))

(declare-fun b!4100758 () Bool)

(declare-fun res!1676445 () Bool)

(assert (=> b!4100758 (=> (not res!1676445) (not e!2544753))))

(declare-fun isEmpty!26335 (List!44148) Bool)

(assert (=> b!4100758 (= res!1676445 (not (isEmpty!26335 rTail!27)))))

(declare-fun b!4100759 () Bool)

(declare-fun tp!1241634 () Bool)

(assert (=> b!4100759 (= e!2544748 (and e!2544749 tp!1241634))))

(assert (=> b!4100760 (= e!2544746 (and tp!1241631 tp!1241636))))

(declare-fun b!4100761 () Bool)

(declare-fun tp_is_empty!21069 () Bool)

(declare-fun tp!1241629 () Bool)

(assert (=> b!4100761 (= e!2544742 (and tp_is_empty!21069 tp!1241629))))

(declare-fun b!4100762 () Bool)

(assert (=> b!4100762 (= e!2544754 (not e!2544747))))

(declare-fun res!1676443 () Bool)

(assert (=> b!4100762 (=> res!1676443 e!2544747)))

(assert (=> b!4100762 (= res!1676443 (isEmpty!26335 (t!339805 rTail!27)))))

(assert (=> b!4100762 (not (= (tag!7996 rHead!24) (tag!7996 (h!49444 rTail!27))))))

(declare-fun lt!1466694 () Unit!63549)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!12 (LexerInterface!6725 List!44148 Rule!14072 Rule!14072) Unit!63549)

(assert (=> b!4100762 (= lt!1466694 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!12 thiss!26455 lt!1466697 rHead!24 (h!49444 rTail!27)))))

(assert (=> b!4100762 (noDuplicateTag!2815 thiss!26455 (Cons!44024 (h!49444 rTail!27) lt!1466696) Nil!44025)))

(assert (=> b!4100762 (= lt!1466696 (Cons!44024 rHead!24 (t!339805 rTail!27)))))

(declare-fun lt!1466690 () Unit!63549)

(declare-fun lemmaNoDuplicateCanReorder!14 (LexerInterface!6725 Rule!14072 Rule!14072 List!44148) Unit!63549)

(assert (=> b!4100762 (= lt!1466690 (lemmaNoDuplicateCanReorder!14 thiss!26455 rHead!24 (h!49444 rTail!27) (t!339805 rTail!27)))))

(assert (= (and start!388492 res!1676446) b!4100758))

(assert (= (and b!4100758 res!1676445) b!4100752))

(assert (= (and b!4100752 res!1676444) b!4100754))

(assert (= (and b!4100754 res!1676442) b!4100762))

(assert (= (and b!4100762 (not res!1676443)) b!4100757))

(assert (= (and b!4100757 (not res!1676441)) b!4100756))

(assert (= (and b!4100756 (not res!1676447)) b!4100753))

(assert (= b!4100750 b!4100760))

(assert (= b!4100759 b!4100750))

(assert (= (and start!388492 ((_ is Cons!44024) rTail!27)) b!4100759))

(assert (= (and start!388492 ((_ is Cons!44022) input!3491)) b!4100761))

(assert (= b!4100751 b!4100755))

(assert (= start!388492 b!4100751))

(declare-fun m!4707409 () Bool)

(assert (=> b!4100756 m!4707409))

(declare-fun m!4707411 () Bool)

(assert (=> b!4100756 m!4707411))

(declare-fun m!4707413 () Bool)

(assert (=> b!4100756 m!4707413))

(declare-fun m!4707415 () Bool)

(assert (=> b!4100756 m!4707415))

(declare-fun m!4707417 () Bool)

(assert (=> b!4100757 m!4707417))

(declare-fun m!4707419 () Bool)

(assert (=> b!4100757 m!4707419))

(declare-fun m!4707421 () Bool)

(assert (=> b!4100757 m!4707421))

(declare-fun m!4707423 () Bool)

(assert (=> b!4100751 m!4707423))

(declare-fun m!4707425 () Bool)

(assert (=> b!4100751 m!4707425))

(declare-fun m!4707427 () Bool)

(assert (=> b!4100753 m!4707427))

(declare-fun m!4707429 () Bool)

(assert (=> b!4100752 m!4707429))

(declare-fun m!4707431 () Bool)

(assert (=> b!4100750 m!4707431))

(declare-fun m!4707433 () Bool)

(assert (=> b!4100750 m!4707433))

(declare-fun m!4707435 () Bool)

(assert (=> b!4100758 m!4707435))

(declare-fun m!4707437 () Bool)

(assert (=> b!4100762 m!4707437))

(declare-fun m!4707439 () Bool)

(assert (=> b!4100762 m!4707439))

(declare-fun m!4707441 () Bool)

(assert (=> b!4100762 m!4707441))

(declare-fun m!4707443 () Bool)

(assert (=> b!4100762 m!4707443))

(check-sat (not b!4100756) b_and!316635 (not b!4100759) (not b!4100753) (not b!4100752) (not b!4100751) (not b_next!115521) (not b_next!115525) b_and!316631 (not b_next!115523) (not b!4100757) tp_is_empty!21069 (not b!4100762) (not b_next!115527) b_and!316633 (not b!4100758) (not b!4100761) b_and!316637 (not b!4100750))
(check-sat b_and!316635 (not b_next!115521) (not b_next!115525) b_and!316637 b_and!316631 (not b_next!115523) (not b_next!115527) b_and!316633)

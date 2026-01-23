; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397834 () Bool)

(assert start!397834)

(declare-fun b!4172397 () Bool)

(declare-fun b_free!120791 () Bool)

(declare-fun b_next!121495 () Bool)

(assert (=> b!4172397 (= b_free!120791 (not b_next!121495))))

(declare-fun tp!1274837 () Bool)

(declare-fun b_and!325913 () Bool)

(assert (=> b!4172397 (= tp!1274837 b_and!325913)))

(declare-fun b_free!120793 () Bool)

(declare-fun b_next!121497 () Bool)

(assert (=> b!4172397 (= b_free!120793 (not b_next!121497))))

(declare-fun tp!1274840 () Bool)

(declare-fun b_and!325915 () Bool)

(assert (=> b!4172397 (= tp!1274840 b_and!325915)))

(declare-fun b!4172396 () Bool)

(declare-fun b_free!120795 () Bool)

(declare-fun b_next!121499 () Bool)

(assert (=> b!4172396 (= b_free!120795 (not b_next!121499))))

(declare-fun tp!1274842 () Bool)

(declare-fun b_and!325917 () Bool)

(assert (=> b!4172396 (= tp!1274842 b_and!325917)))

(declare-fun b_free!120797 () Bool)

(declare-fun b_next!121501 () Bool)

(assert (=> b!4172396 (= b_free!120797 (not b_next!121501))))

(declare-fun tp!1274831 () Bool)

(declare-fun b_and!325919 () Bool)

(assert (=> b!4172396 (= tp!1274831 b_and!325919)))

(declare-fun b!4172388 () Bool)

(declare-fun b_free!120799 () Bool)

(declare-fun b_next!121503 () Bool)

(assert (=> b!4172388 (= b_free!120799 (not b_next!121503))))

(declare-fun tp!1274841 () Bool)

(declare-fun b_and!325921 () Bool)

(assert (=> b!4172388 (= tp!1274841 b_and!325921)))

(declare-fun b_free!120801 () Bool)

(declare-fun b_next!121505 () Bool)

(assert (=> b!4172388 (= b_free!120801 (not b_next!121505))))

(declare-fun tp!1274830 () Bool)

(declare-fun b_and!325923 () Bool)

(assert (=> b!4172388 (= tp!1274830 b_and!325923)))

(declare-fun b!4172382 () Bool)

(declare-fun res!1709691 () Bool)

(declare-fun e!2590281 () Bool)

(assert (=> b!4172382 (=> (not res!1709691) (not e!2590281))))

(declare-datatypes ((List!45849 0))(
  ( (Nil!45725) (Cons!45725 (h!51145 (_ BitVec 16)) (t!344512 List!45849)) )
))
(declare-datatypes ((TokenValue!7814 0))(
  ( (FloatLiteralValue!15628 (text!55143 List!45849)) (TokenValueExt!7813 (__x!27849 Int)) (Broken!39070 (value!236650 List!45849)) (Object!7937) (End!7814) (Def!7814) (Underscore!7814) (Match!7814) (Else!7814) (Error!7814) (Case!7814) (If!7814) (Extends!7814) (Abstract!7814) (Class!7814) (Val!7814) (DelimiterValue!15628 (del!7874 List!45849)) (KeywordValue!7820 (value!236651 List!45849)) (CommentValue!15628 (value!236652 List!45849)) (WhitespaceValue!15628 (value!236653 List!45849)) (IndentationValue!7814 (value!236654 List!45849)) (String!52935) (Int32!7814) (Broken!39071 (value!236655 List!45849)) (Boolean!7815) (Unit!64796) (OperatorValue!7817 (op!7874 List!45849)) (IdentifierValue!15628 (value!236656 List!45849)) (IdentifierValue!15629 (value!236657 List!45849)) (WhitespaceValue!15629 (value!236658 List!45849)) (True!15628) (False!15628) (Broken!39072 (value!236659 List!45849)) (Broken!39073 (value!236660 List!45849)) (True!15629) (RightBrace!7814) (RightBracket!7814) (Colon!7814) (Null!7814) (Comma!7814) (LeftBracket!7814) (False!15629) (LeftBrace!7814) (ImaginaryLiteralValue!7814 (text!55144 List!45849)) (StringLiteralValue!23442 (value!236661 List!45849)) (EOFValue!7814 (value!236662 List!45849)) (IdentValue!7814 (value!236663 List!45849)) (DelimiterValue!15629 (value!236664 List!45849)) (DedentValue!7814 (value!236665 List!45849)) (NewLineValue!7814 (value!236666 List!45849)) (IntegerValue!23442 (value!236667 (_ BitVec 32)) (text!55145 List!45849)) (IntegerValue!23443 (value!236668 Int) (text!55146 List!45849)) (Times!7814) (Or!7814) (Equal!7814) (Minus!7814) (Broken!39074 (value!236669 List!45849)) (And!7814) (Div!7814) (LessEqual!7814) (Mod!7814) (Concat!20303) (Not!7814) (Plus!7814) (SpaceValue!7814 (value!236670 List!45849)) (IntegerValue!23444 (value!236671 Int) (text!55147 List!45849)) (StringLiteralValue!23443 (text!55148 List!45849)) (FloatLiteralValue!15629 (text!55149 List!45849)) (BytesLiteralValue!7814 (value!236672 List!45849)) (CommentValue!15629 (value!236673 List!45849)) (StringLiteralValue!23444 (value!236674 List!45849)) (ErrorTokenValue!7814 (msg!7875 List!45849)) )
))
(declare-datatypes ((C!25168 0))(
  ( (C!25169 (val!14746 Int)) )
))
(declare-datatypes ((List!45850 0))(
  ( (Nil!45726) (Cons!45726 (h!51146 C!25168) (t!344513 List!45850)) )
))
(declare-datatypes ((IArray!27595 0))(
  ( (IArray!27596 (innerList!13855 List!45850)) )
))
(declare-datatypes ((Conc!13795 0))(
  ( (Node!13795 (left!34081 Conc!13795) (right!34411 Conc!13795) (csize!27820 Int) (cheight!14006 Int)) (Leaf!21330 (xs!17101 IArray!27595) (csize!27821 Int)) (Empty!13795) )
))
(declare-datatypes ((BalanceConc!27184 0))(
  ( (BalanceConc!27185 (c!713116 Conc!13795)) )
))
(declare-datatypes ((String!52936 0))(
  ( (String!52937 (value!236675 String)) )
))
(declare-datatypes ((Regex!12489 0))(
  ( (ElementMatch!12489 (c!713117 C!25168)) (Concat!20304 (regOne!25490 Regex!12489) (regTwo!25490 Regex!12489)) (EmptyExpr!12489) (Star!12489 (reg!12818 Regex!12489)) (EmptyLang!12489) (Union!12489 (regOne!25491 Regex!12489) (regTwo!25491 Regex!12489)) )
))
(declare-datatypes ((TokenValueInjection!15056 0))(
  ( (TokenValueInjection!15057 (toValue!10268 Int) (toChars!10127 Int)) )
))
(declare-datatypes ((Rule!14968 0))(
  ( (Rule!14969 (regex!7584 Regex!12489) (tag!8448 String!52936) (isSeparator!7584 Bool) (transformation!7584 TokenValueInjection!15056)) )
))
(declare-datatypes ((List!45851 0))(
  ( (Nil!45727) (Cons!45727 (h!51147 Rule!14968) (t!344514 List!45851)) )
))
(declare-fun rules!3843 () List!45851)

(declare-fun rBis!167 () Rule!14968)

(declare-fun contains!9387 (List!45851 Rule!14968) Bool)

(assert (=> b!4172382 (= res!1709691 (contains!9387 rules!3843 rBis!167))))

(declare-fun b!4172383 () Bool)

(declare-fun e!2590282 () Bool)

(declare-fun tp_is_empty!21941 () Bool)

(declare-fun tp!1274833 () Bool)

(assert (=> b!4172383 (= e!2590282 (and tp_is_empty!21941 tp!1274833))))

(declare-fun res!1709700 () Bool)

(assert (=> start!397834 (=> (not res!1709700) (not e!2590281))))

(declare-datatypes ((LexerInterface!7177 0))(
  ( (LexerInterfaceExt!7174 (__x!27850 Int)) (Lexer!7175) )
))
(declare-fun thiss!25986 () LexerInterface!7177)

(get-info :version)

(assert (=> start!397834 (= res!1709700 ((_ is Lexer!7175) thiss!25986))))

(assert (=> start!397834 e!2590281))

(assert (=> start!397834 true))

(declare-fun e!2590270 () Bool)

(assert (=> start!397834 e!2590270))

(declare-fun e!2590279 () Bool)

(assert (=> start!397834 e!2590279))

(declare-fun e!2590271 () Bool)

(assert (=> start!397834 e!2590271))

(assert (=> start!397834 e!2590282))

(declare-fun e!2590278 () Bool)

(assert (=> start!397834 e!2590278))

(declare-fun e!2590284 () Bool)

(assert (=> start!397834 e!2590284))

(declare-fun b!4172384 () Bool)

(declare-fun res!1709699 () Bool)

(assert (=> b!4172384 (=> (not res!1709699) (not e!2590281))))

(declare-fun r!4142 () Rule!14968)

(declare-fun p!2959 () List!45850)

(declare-fun matchR!6228 (Regex!12489 List!45850) Bool)

(assert (=> b!4172384 (= res!1709699 (matchR!6228 (regex!7584 r!4142) p!2959))))

(declare-fun b!4172385 () Bool)

(declare-fun res!1709701 () Bool)

(assert (=> b!4172385 (=> (not res!1709701) (not e!2590281))))

(declare-fun isEmpty!27049 (List!45851) Bool)

(assert (=> b!4172385 (= res!1709701 (not (isEmpty!27049 rules!3843)))))

(declare-fun b!4172386 () Bool)

(declare-fun res!1709693 () Bool)

(assert (=> b!4172386 (=> (not res!1709693) (not e!2590281))))

(assert (=> b!4172386 (= res!1709693 (contains!9387 rules!3843 r!4142))))

(declare-fun tp!1274834 () Bool)

(declare-fun e!2590276 () Bool)

(declare-fun b!4172387 () Bool)

(declare-fun inv!60257 (String!52936) Bool)

(declare-fun inv!60259 (TokenValueInjection!15056) Bool)

(assert (=> b!4172387 (= e!2590270 (and tp!1274834 (inv!60257 (tag!8448 rBis!167)) (inv!60259 (transformation!7584 rBis!167)) e!2590276))))

(declare-fun e!2590275 () Bool)

(assert (=> b!4172388 (= e!2590275 (and tp!1274841 tp!1274830))))

(declare-fun b!4172389 () Bool)

(declare-fun res!1709702 () Bool)

(assert (=> b!4172389 (=> (not res!1709702) (not e!2590281))))

(declare-fun pBis!107 () List!45850)

(declare-fun input!3342 () List!45850)

(declare-fun isPrefix!4441 (List!45850 List!45850) Bool)

(assert (=> b!4172389 (= res!1709702 (isPrefix!4441 pBis!107 input!3342))))

(declare-fun b!4172390 () Bool)

(declare-fun tp!1274832 () Bool)

(assert (=> b!4172390 (= e!2590284 (and tp_is_empty!21941 tp!1274832))))

(declare-fun b!4172391 () Bool)

(declare-fun e!2590277 () Bool)

(assert (=> b!4172391 (= e!2590281 (not e!2590277))))

(declare-fun res!1709696 () Bool)

(assert (=> b!4172391 (=> res!1709696 e!2590277)))

(declare-fun lt!1485750 () Int)

(declare-fun lt!1485746 () TokenValue!7814)

(declare-datatypes ((Token!13882 0))(
  ( (Token!13883 (value!236676 TokenValue!7814) (rule!10632 Rule!14968) (size!33565 Int) (originalCharacters!7972 List!45850)) )
))
(declare-datatypes ((tuple2!43582 0))(
  ( (tuple2!43583 (_1!24925 Token!13882) (_2!24925 List!45850)) )
))
(declare-datatypes ((Option!9780 0))(
  ( (None!9779) (Some!9779 (v!40573 tuple2!43582)) )
))
(declare-fun maxPrefixOneRule!3188 (LexerInterface!7177 Rule!14968 List!45850) Option!9780)

(declare-fun getSuffix!2736 (List!45850 List!45850) List!45850)

(assert (=> b!4172391 (= res!1709696 (not (= (maxPrefixOneRule!3188 thiss!25986 r!4142 input!3342) (Some!9779 (tuple2!43583 (Token!13883 lt!1485746 r!4142 lt!1485750 p!2959) (getSuffix!2736 input!3342 p!2959))))))))

(declare-fun size!33566 (List!45850) Int)

(assert (=> b!4172391 (= lt!1485750 (size!33566 p!2959))))

(declare-fun lt!1485749 () BalanceConc!27184)

(declare-fun apply!10549 (TokenValueInjection!15056 BalanceConc!27184) TokenValue!7814)

(assert (=> b!4172391 (= lt!1485746 (apply!10549 (transformation!7584 r!4142) lt!1485749))))

(assert (=> b!4172391 (isPrefix!4441 input!3342 input!3342)))

(declare-datatypes ((Unit!64797 0))(
  ( (Unit!64798) )
))
(declare-fun lt!1485748 () Unit!64797)

(declare-fun lemmaIsPrefixRefl!2870 (List!45850 List!45850) Unit!64797)

(assert (=> b!4172391 (= lt!1485748 (lemmaIsPrefixRefl!2870 input!3342 input!3342))))

(declare-fun lt!1485747 () Unit!64797)

(declare-fun lemmaSemiInverse!2350 (TokenValueInjection!15056 BalanceConc!27184) Unit!64797)

(assert (=> b!4172391 (= lt!1485747 (lemmaSemiInverse!2350 (transformation!7584 r!4142) lt!1485749))))

(declare-fun seqFromList!5609 (List!45850) BalanceConc!27184)

(assert (=> b!4172391 (= lt!1485749 (seqFromList!5609 p!2959))))

(declare-fun b!4172392 () Bool)

(declare-fun res!1709694 () Bool)

(assert (=> b!4172392 (=> (not res!1709694) (not e!2590281))))

(declare-fun validRegex!5606 (Regex!12489) Bool)

(assert (=> b!4172392 (= res!1709694 (validRegex!5606 (regex!7584 r!4142)))))

(declare-fun b!4172393 () Bool)

(declare-fun res!1709690 () Bool)

(assert (=> b!4172393 (=> res!1709690 e!2590277)))

(assert (=> b!4172393 (= res!1709690 (<= (size!33566 pBis!107) lt!1485750))))

(declare-fun b!4172394 () Bool)

(assert (=> b!4172394 (= e!2590277 (>= (size!33566 input!3342) lt!1485750))))

(declare-fun b!4172395 () Bool)

(declare-fun res!1709698 () Bool)

(assert (=> b!4172395 (=> (not res!1709698) (not e!2590281))))

(assert (=> b!4172395 (= res!1709698 (isPrefix!4441 p!2959 input!3342))))

(assert (=> b!4172396 (= e!2590276 (and tp!1274842 tp!1274831))))

(declare-fun e!2590273 () Bool)

(assert (=> b!4172397 (= e!2590273 (and tp!1274837 tp!1274840))))

(declare-fun b!4172398 () Bool)

(declare-fun res!1709695 () Bool)

(assert (=> b!4172398 (=> (not res!1709695) (not e!2590281))))

(declare-fun ruleValid!3302 (LexerInterface!7177 Rule!14968) Bool)

(assert (=> b!4172398 (= res!1709695 (ruleValid!3302 thiss!25986 r!4142))))

(declare-fun tp!1274839 () Bool)

(declare-fun e!2590274 () Bool)

(declare-fun b!4172399 () Bool)

(assert (=> b!4172399 (= e!2590274 (and tp!1274839 (inv!60257 (tag!8448 (h!51147 rules!3843))) (inv!60259 (transformation!7584 (h!51147 rules!3843))) e!2590273))))

(declare-fun b!4172400 () Bool)

(declare-fun tp!1274835 () Bool)

(assert (=> b!4172400 (= e!2590271 (and e!2590274 tp!1274835))))

(declare-fun b!4172401 () Bool)

(declare-fun res!1709692 () Bool)

(assert (=> b!4172401 (=> res!1709692 e!2590277)))

(assert (=> b!4172401 (= res!1709692 (not (ruleValid!3302 thiss!25986 rBis!167)))))

(declare-fun b!4172402 () Bool)

(declare-fun res!1709697 () Bool)

(assert (=> b!4172402 (=> (not res!1709697) (not e!2590281))))

(declare-fun rulesInvariant!6390 (LexerInterface!7177 List!45851) Bool)

(assert (=> b!4172402 (= res!1709697 (rulesInvariant!6390 thiss!25986 rules!3843))))

(declare-fun b!4172403 () Bool)

(declare-fun tp!1274838 () Bool)

(assert (=> b!4172403 (= e!2590278 (and tp_is_empty!21941 tp!1274838))))

(declare-fun tp!1274836 () Bool)

(declare-fun b!4172404 () Bool)

(assert (=> b!4172404 (= e!2590279 (and tp!1274836 (inv!60257 (tag!8448 r!4142)) (inv!60259 (transformation!7584 r!4142)) e!2590275))))

(assert (= (and start!397834 res!1709700) b!4172395))

(assert (= (and b!4172395 res!1709698) b!4172389))

(assert (= (and b!4172389 res!1709702) b!4172385))

(assert (= (and b!4172385 res!1709701) b!4172402))

(assert (= (and b!4172402 res!1709697) b!4172386))

(assert (= (and b!4172386 res!1709693) b!4172382))

(assert (= (and b!4172382 res!1709691) b!4172392))

(assert (= (and b!4172392 res!1709694) b!4172384))

(assert (= (and b!4172384 res!1709699) b!4172398))

(assert (= (and b!4172398 res!1709695) b!4172391))

(assert (= (and b!4172391 (not res!1709696)) b!4172393))

(assert (= (and b!4172393 (not res!1709690)) b!4172401))

(assert (= (and b!4172401 (not res!1709692)) b!4172394))

(assert (= b!4172387 b!4172396))

(assert (= start!397834 b!4172387))

(assert (= b!4172404 b!4172388))

(assert (= start!397834 b!4172404))

(assert (= b!4172399 b!4172397))

(assert (= b!4172400 b!4172399))

(assert (= (and start!397834 ((_ is Cons!45727) rules!3843)) b!4172400))

(assert (= (and start!397834 ((_ is Cons!45726) input!3342)) b!4172383))

(assert (= (and start!397834 ((_ is Cons!45726) pBis!107)) b!4172403))

(assert (= (and start!397834 ((_ is Cons!45726) p!2959)) b!4172390))

(declare-fun m!4762611 () Bool)

(assert (=> b!4172404 m!4762611))

(declare-fun m!4762613 () Bool)

(assert (=> b!4172404 m!4762613))

(declare-fun m!4762615 () Bool)

(assert (=> b!4172398 m!4762615))

(declare-fun m!4762617 () Bool)

(assert (=> b!4172392 m!4762617))

(declare-fun m!4762619 () Bool)

(assert (=> b!4172382 m!4762619))

(declare-fun m!4762621 () Bool)

(assert (=> b!4172384 m!4762621))

(declare-fun m!4762623 () Bool)

(assert (=> b!4172395 m!4762623))

(declare-fun m!4762625 () Bool)

(assert (=> b!4172389 m!4762625))

(declare-fun m!4762627 () Bool)

(assert (=> b!4172386 m!4762627))

(declare-fun m!4762629 () Bool)

(assert (=> b!4172399 m!4762629))

(declare-fun m!4762631 () Bool)

(assert (=> b!4172399 m!4762631))

(declare-fun m!4762633 () Bool)

(assert (=> b!4172387 m!4762633))

(declare-fun m!4762635 () Bool)

(assert (=> b!4172387 m!4762635))

(declare-fun m!4762637 () Bool)

(assert (=> b!4172391 m!4762637))

(declare-fun m!4762639 () Bool)

(assert (=> b!4172391 m!4762639))

(declare-fun m!4762641 () Bool)

(assert (=> b!4172391 m!4762641))

(declare-fun m!4762643 () Bool)

(assert (=> b!4172391 m!4762643))

(declare-fun m!4762645 () Bool)

(assert (=> b!4172391 m!4762645))

(declare-fun m!4762647 () Bool)

(assert (=> b!4172391 m!4762647))

(declare-fun m!4762649 () Bool)

(assert (=> b!4172391 m!4762649))

(declare-fun m!4762651 () Bool)

(assert (=> b!4172391 m!4762651))

(declare-fun m!4762653 () Bool)

(assert (=> b!4172394 m!4762653))

(declare-fun m!4762655 () Bool)

(assert (=> b!4172385 m!4762655))

(declare-fun m!4762657 () Bool)

(assert (=> b!4172393 m!4762657))

(declare-fun m!4762659 () Bool)

(assert (=> b!4172401 m!4762659))

(declare-fun m!4762661 () Bool)

(assert (=> b!4172402 m!4762661))

(check-sat (not b!4172399) (not b!4172392) (not b!4172391) (not b_next!121497) (not b!4172393) (not b_next!121499) (not b!4172401) tp_is_empty!21941 (not b_next!121501) (not b!4172403) (not b!4172400) (not b!4172387) (not b_next!121505) (not b!4172390) (not b!4172385) (not b_next!121495) (not b!4172404) (not b!4172382) (not b!4172389) b_and!325915 (not b_next!121503) b_and!325919 (not b!4172398) b_and!325917 b_and!325923 b_and!325921 (not b!4172386) (not b!4172395) (not b!4172384) (not b!4172402) b_and!325913 (not b!4172383) (not b!4172394))
(check-sat (not b_next!121495) (not b_next!121497) (not b_next!121499) b_and!325915 b_and!325921 (not b_next!121501) b_and!325913 (not b_next!121505) (not b_next!121503) b_and!325919 b_and!325917 b_and!325923)
(get-model)

(declare-fun d!1232519 () Bool)

(declare-fun lt!1485753 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7108 (List!45851) (InoxSet Rule!14968))

(assert (=> d!1232519 (= lt!1485753 (select (content!7108 rules!3843) r!4142))))

(declare-fun e!2590289 () Bool)

(assert (=> d!1232519 (= lt!1485753 e!2590289)))

(declare-fun res!1709715 () Bool)

(assert (=> d!1232519 (=> (not res!1709715) (not e!2590289))))

(assert (=> d!1232519 (= res!1709715 ((_ is Cons!45727) rules!3843))))

(assert (=> d!1232519 (= (contains!9387 rules!3843 r!4142) lt!1485753)))

(declare-fun b!4172409 () Bool)

(declare-fun e!2590290 () Bool)

(assert (=> b!4172409 (= e!2590289 e!2590290)))

(declare-fun res!1709716 () Bool)

(assert (=> b!4172409 (=> res!1709716 e!2590290)))

(assert (=> b!4172409 (= res!1709716 (= (h!51147 rules!3843) r!4142))))

(declare-fun b!4172410 () Bool)

(assert (=> b!4172410 (= e!2590290 (contains!9387 (t!344514 rules!3843) r!4142))))

(assert (= (and d!1232519 res!1709715) b!4172409))

(assert (= (and b!4172409 (not res!1709716)) b!4172410))

(declare-fun m!4762663 () Bool)

(assert (=> d!1232519 m!4762663))

(declare-fun m!4762665 () Bool)

(assert (=> d!1232519 m!4762665))

(declare-fun m!4762667 () Bool)

(assert (=> b!4172410 m!4762667))

(assert (=> b!4172386 d!1232519))

(declare-fun d!1232521 () Bool)

(declare-fun res!1709721 () Bool)

(declare-fun e!2590295 () Bool)

(assert (=> d!1232521 (=> (not res!1709721) (not e!2590295))))

(assert (=> d!1232521 (= res!1709721 (validRegex!5606 (regex!7584 r!4142)))))

(assert (=> d!1232521 (= (ruleValid!3302 thiss!25986 r!4142) e!2590295)))

(declare-fun b!4172419 () Bool)

(declare-fun res!1709722 () Bool)

(assert (=> b!4172419 (=> (not res!1709722) (not e!2590295))))

(declare-fun nullable!4381 (Regex!12489) Bool)

(assert (=> b!4172419 (= res!1709722 (not (nullable!4381 (regex!7584 r!4142))))))

(declare-fun b!4172420 () Bool)

(assert (=> b!4172420 (= e!2590295 (not (= (tag!8448 r!4142) (String!52937 ""))))))

(assert (= (and d!1232521 res!1709721) b!4172419))

(assert (= (and b!4172419 res!1709722) b!4172420))

(assert (=> d!1232521 m!4762617))

(declare-fun m!4762669 () Bool)

(assert (=> b!4172419 m!4762669))

(assert (=> b!4172398 d!1232521))

(declare-fun d!1232525 () Bool)

(assert (=> d!1232525 (= (inv!60257 (tag!8448 rBis!167)) (= (mod (str.len (value!236675 (tag!8448 rBis!167))) 2) 0))))

(assert (=> b!4172387 d!1232525))

(declare-fun d!1232527 () Bool)

(declare-fun res!1709731 () Bool)

(declare-fun e!2590302 () Bool)

(assert (=> d!1232527 (=> (not res!1709731) (not e!2590302))))

(declare-fun semiInverseModEq!3289 (Int Int) Bool)

(assert (=> d!1232527 (= res!1709731 (semiInverseModEq!3289 (toChars!10127 (transformation!7584 rBis!167)) (toValue!10268 (transformation!7584 rBis!167))))))

(assert (=> d!1232527 (= (inv!60259 (transformation!7584 rBis!167)) e!2590302)))

(declare-fun b!4172431 () Bool)

(declare-fun equivClasses!3188 (Int Int) Bool)

(assert (=> b!4172431 (= e!2590302 (equivClasses!3188 (toChars!10127 (transformation!7584 rBis!167)) (toValue!10268 (transformation!7584 rBis!167))))))

(assert (= (and d!1232527 res!1709731) b!4172431))

(declare-fun m!4762675 () Bool)

(assert (=> d!1232527 m!4762675))

(declare-fun m!4762677 () Bool)

(assert (=> b!4172431 m!4762677))

(assert (=> b!4172387 d!1232527))

(declare-fun d!1232533 () Bool)

(declare-fun lt!1485761 () Int)

(assert (=> d!1232533 (>= lt!1485761 0)))

(declare-fun e!2590309 () Int)

(assert (=> d!1232533 (= lt!1485761 e!2590309)))

(declare-fun c!713123 () Bool)

(assert (=> d!1232533 (= c!713123 ((_ is Nil!45726) input!3342))))

(assert (=> d!1232533 (= (size!33566 input!3342) lt!1485761)))

(declare-fun b!4172440 () Bool)

(assert (=> b!4172440 (= e!2590309 0)))

(declare-fun b!4172441 () Bool)

(assert (=> b!4172441 (= e!2590309 (+ 1 (size!33566 (t!344513 input!3342))))))

(assert (= (and d!1232533 c!713123) b!4172440))

(assert (= (and d!1232533 (not c!713123)) b!4172441))

(declare-fun m!4762679 () Bool)

(assert (=> b!4172441 m!4762679))

(assert (=> b!4172394 d!1232533))

(declare-fun b!4172512 () Bool)

(declare-fun e!2590351 () Bool)

(declare-fun head!8858 (List!45850) C!25168)

(assert (=> b!4172512 (= e!2590351 (not (= (head!8858 p!2959) (c!713117 (regex!7584 r!4142)))))))

(declare-fun b!4172513 () Bool)

(declare-fun res!1709789 () Bool)

(assert (=> b!4172513 (=> res!1709789 e!2590351)))

(declare-fun isEmpty!27051 (List!45850) Bool)

(declare-fun tail!6705 (List!45850) List!45850)

(assert (=> b!4172513 (= res!1709789 (not (isEmpty!27051 (tail!6705 p!2959))))))

(declare-fun b!4172514 () Bool)

(declare-fun e!2590354 () Bool)

(declare-fun derivativeStep!3771 (Regex!12489 C!25168) Regex!12489)

(assert (=> b!4172514 (= e!2590354 (matchR!6228 (derivativeStep!3771 (regex!7584 r!4142) (head!8858 p!2959)) (tail!6705 p!2959)))))

(declare-fun b!4172515 () Bool)

(declare-fun res!1709786 () Bool)

(declare-fun e!2590353 () Bool)

(assert (=> b!4172515 (=> res!1709786 e!2590353)))

(declare-fun e!2590350 () Bool)

(assert (=> b!4172515 (= res!1709786 e!2590350)))

(declare-fun res!1709784 () Bool)

(assert (=> b!4172515 (=> (not res!1709784) (not e!2590350))))

(declare-fun lt!1485770 () Bool)

(assert (=> b!4172515 (= res!1709784 lt!1485770)))

(declare-fun b!4172516 () Bool)

(declare-fun res!1709785 () Bool)

(assert (=> b!4172516 (=> (not res!1709785) (not e!2590350))))

(assert (=> b!4172516 (= res!1709785 (isEmpty!27051 (tail!6705 p!2959)))))

(declare-fun b!4172517 () Bool)

(declare-fun e!2590349 () Bool)

(assert (=> b!4172517 (= e!2590349 e!2590351)))

(declare-fun res!1709787 () Bool)

(assert (=> b!4172517 (=> res!1709787 e!2590351)))

(declare-fun call!291337 () Bool)

(assert (=> b!4172517 (= res!1709787 call!291337)))

(declare-fun b!4172519 () Bool)

(assert (=> b!4172519 (= e!2590350 (= (head!8858 p!2959) (c!713117 (regex!7584 r!4142))))))

(declare-fun b!4172520 () Bool)

(declare-fun e!2590352 () Bool)

(declare-fun e!2590355 () Bool)

(assert (=> b!4172520 (= e!2590352 e!2590355)))

(declare-fun c!713138 () Bool)

(assert (=> b!4172520 (= c!713138 ((_ is EmptyLang!12489) (regex!7584 r!4142)))))

(declare-fun b!4172521 () Bool)

(assert (=> b!4172521 (= e!2590355 (not lt!1485770))))

(declare-fun b!4172522 () Bool)

(assert (=> b!4172522 (= e!2590353 e!2590349)))

(declare-fun res!1709780 () Bool)

(assert (=> b!4172522 (=> (not res!1709780) (not e!2590349))))

(assert (=> b!4172522 (= res!1709780 (not lt!1485770))))

(declare-fun b!4172523 () Bool)

(declare-fun res!1709788 () Bool)

(assert (=> b!4172523 (=> res!1709788 e!2590353)))

(assert (=> b!4172523 (= res!1709788 (not ((_ is ElementMatch!12489) (regex!7584 r!4142))))))

(assert (=> b!4172523 (= e!2590355 e!2590353)))

(declare-fun bm!291332 () Bool)

(assert (=> bm!291332 (= call!291337 (isEmpty!27051 p!2959))))

(declare-fun b!4172524 () Bool)

(assert (=> b!4172524 (= e!2590354 (nullable!4381 (regex!7584 r!4142)))))

(declare-fun b!4172525 () Bool)

(assert (=> b!4172525 (= e!2590352 (= lt!1485770 call!291337))))

(declare-fun d!1232535 () Bool)

(assert (=> d!1232535 e!2590352))

(declare-fun c!713136 () Bool)

(assert (=> d!1232535 (= c!713136 ((_ is EmptyExpr!12489) (regex!7584 r!4142)))))

(assert (=> d!1232535 (= lt!1485770 e!2590354)))

(declare-fun c!713137 () Bool)

(assert (=> d!1232535 (= c!713137 (isEmpty!27051 p!2959))))

(assert (=> d!1232535 (validRegex!5606 (regex!7584 r!4142))))

(assert (=> d!1232535 (= (matchR!6228 (regex!7584 r!4142) p!2959) lt!1485770)))

(declare-fun b!4172518 () Bool)

(declare-fun res!1709783 () Bool)

(assert (=> b!4172518 (=> (not res!1709783) (not e!2590350))))

(assert (=> b!4172518 (= res!1709783 (not call!291337))))

(assert (= (and d!1232535 c!713137) b!4172524))

(assert (= (and d!1232535 (not c!713137)) b!4172514))

(assert (= (and d!1232535 c!713136) b!4172525))

(assert (= (and d!1232535 (not c!713136)) b!4172520))

(assert (= (and b!4172520 c!713138) b!4172521))

(assert (= (and b!4172520 (not c!713138)) b!4172523))

(assert (= (and b!4172523 (not res!1709788)) b!4172515))

(assert (= (and b!4172515 res!1709784) b!4172518))

(assert (= (and b!4172518 res!1709783) b!4172516))

(assert (= (and b!4172516 res!1709785) b!4172519))

(assert (= (and b!4172515 (not res!1709786)) b!4172522))

(assert (= (and b!4172522 res!1709780) b!4172517))

(assert (= (and b!4172517 (not res!1709787)) b!4172513))

(assert (= (and b!4172513 (not res!1709789)) b!4172512))

(assert (= (or b!4172525 b!4172517 b!4172518) bm!291332))

(declare-fun m!4762697 () Bool)

(assert (=> b!4172513 m!4762697))

(assert (=> b!4172513 m!4762697))

(declare-fun m!4762699 () Bool)

(assert (=> b!4172513 m!4762699))

(declare-fun m!4762701 () Bool)

(assert (=> d!1232535 m!4762701))

(assert (=> d!1232535 m!4762617))

(declare-fun m!4762703 () Bool)

(assert (=> b!4172512 m!4762703))

(assert (=> b!4172516 m!4762697))

(assert (=> b!4172516 m!4762697))

(assert (=> b!4172516 m!4762699))

(assert (=> b!4172519 m!4762703))

(assert (=> b!4172514 m!4762703))

(assert (=> b!4172514 m!4762703))

(declare-fun m!4762705 () Bool)

(assert (=> b!4172514 m!4762705))

(assert (=> b!4172514 m!4762697))

(assert (=> b!4172514 m!4762705))

(assert (=> b!4172514 m!4762697))

(declare-fun m!4762707 () Bool)

(assert (=> b!4172514 m!4762707))

(assert (=> b!4172524 m!4762669))

(assert (=> bm!291332 m!4762701))

(assert (=> b!4172384 d!1232535))

(declare-fun b!4172549 () Bool)

(declare-fun res!1709809 () Bool)

(declare-fun e!2590371 () Bool)

(assert (=> b!4172549 (=> (not res!1709809) (not e!2590371))))

(assert (=> b!4172549 (= res!1709809 (= (head!8858 p!2959) (head!8858 input!3342)))))

(declare-fun b!4172551 () Bool)

(declare-fun e!2590369 () Bool)

(assert (=> b!4172551 (= e!2590369 (>= (size!33566 input!3342) (size!33566 p!2959)))))

(declare-fun b!4172548 () Bool)

(declare-fun e!2590370 () Bool)

(assert (=> b!4172548 (= e!2590370 e!2590371)))

(declare-fun res!1709808 () Bool)

(assert (=> b!4172548 (=> (not res!1709808) (not e!2590371))))

(assert (=> b!4172548 (= res!1709808 (not ((_ is Nil!45726) input!3342)))))

(declare-fun d!1232541 () Bool)

(assert (=> d!1232541 e!2590369))

(declare-fun res!1709806 () Bool)

(assert (=> d!1232541 (=> res!1709806 e!2590369)))

(declare-fun lt!1485774 () Bool)

(assert (=> d!1232541 (= res!1709806 (not lt!1485774))))

(assert (=> d!1232541 (= lt!1485774 e!2590370)))

(declare-fun res!1709807 () Bool)

(assert (=> d!1232541 (=> res!1709807 e!2590370)))

(assert (=> d!1232541 (= res!1709807 ((_ is Nil!45726) p!2959))))

(assert (=> d!1232541 (= (isPrefix!4441 p!2959 input!3342) lt!1485774)))

(declare-fun b!4172550 () Bool)

(assert (=> b!4172550 (= e!2590371 (isPrefix!4441 (tail!6705 p!2959) (tail!6705 input!3342)))))

(assert (= (and d!1232541 (not res!1709807)) b!4172548))

(assert (= (and b!4172548 res!1709808) b!4172549))

(assert (= (and b!4172549 res!1709809) b!4172550))

(assert (= (and d!1232541 (not res!1709806)) b!4172551))

(assert (=> b!4172549 m!4762703))

(declare-fun m!4762721 () Bool)

(assert (=> b!4172549 m!4762721))

(assert (=> b!4172551 m!4762653))

(assert (=> b!4172551 m!4762649))

(assert (=> b!4172550 m!4762697))

(declare-fun m!4762723 () Bool)

(assert (=> b!4172550 m!4762723))

(assert (=> b!4172550 m!4762697))

(assert (=> b!4172550 m!4762723))

(declare-fun m!4762725 () Bool)

(assert (=> b!4172550 m!4762725))

(assert (=> b!4172395 d!1232541))

(declare-fun d!1232545 () Bool)

(assert (=> d!1232545 (= (isEmpty!27049 rules!3843) ((_ is Nil!45727) rules!3843))))

(assert (=> b!4172385 d!1232545))

(declare-fun d!1232547 () Bool)

(declare-fun res!1709822 () Bool)

(declare-fun e!2590388 () Bool)

(assert (=> d!1232547 (=> (not res!1709822) (not e!2590388))))

(declare-fun rulesValid!2957 (LexerInterface!7177 List!45851) Bool)

(assert (=> d!1232547 (= res!1709822 (rulesValid!2957 thiss!25986 rules!3843))))

(assert (=> d!1232547 (= (rulesInvariant!6390 thiss!25986 rules!3843) e!2590388)))

(declare-fun b!4172572 () Bool)

(declare-datatypes ((List!45852 0))(
  ( (Nil!45728) (Cons!45728 (h!51148 String!52936) (t!344547 List!45852)) )
))
(declare-fun noDuplicateTag!3118 (LexerInterface!7177 List!45851 List!45852) Bool)

(assert (=> b!4172572 (= e!2590388 (noDuplicateTag!3118 thiss!25986 rules!3843 Nil!45728))))

(assert (= (and d!1232547 res!1709822) b!4172572))

(declare-fun m!4762727 () Bool)

(assert (=> d!1232547 m!4762727))

(declare-fun m!4762729 () Bool)

(assert (=> b!4172572 m!4762729))

(assert (=> b!4172402 d!1232547))

(declare-fun d!1232549 () Bool)

(declare-fun lt!1485778 () List!45850)

(declare-fun ++!11672 (List!45850 List!45850) List!45850)

(assert (=> d!1232549 (= (++!11672 p!2959 lt!1485778) input!3342)))

(declare-fun e!2590402 () List!45850)

(assert (=> d!1232549 (= lt!1485778 e!2590402)))

(declare-fun c!713150 () Bool)

(assert (=> d!1232549 (= c!713150 ((_ is Cons!45726) p!2959))))

(assert (=> d!1232549 (>= (size!33566 input!3342) (size!33566 p!2959))))

(assert (=> d!1232549 (= (getSuffix!2736 input!3342 p!2959) lt!1485778)))

(declare-fun b!4172592 () Bool)

(assert (=> b!4172592 (= e!2590402 (getSuffix!2736 (tail!6705 input!3342) (t!344513 p!2959)))))

(declare-fun b!4172593 () Bool)

(assert (=> b!4172593 (= e!2590402 input!3342)))

(assert (= (and d!1232549 c!713150) b!4172592))

(assert (= (and d!1232549 (not c!713150)) b!4172593))

(declare-fun m!4762743 () Bool)

(assert (=> d!1232549 m!4762743))

(assert (=> d!1232549 m!4762653))

(assert (=> d!1232549 m!4762649))

(assert (=> b!4172592 m!4762723))

(assert (=> b!4172592 m!4762723))

(declare-fun m!4762745 () Bool)

(assert (=> b!4172592 m!4762745))

(assert (=> b!4172391 d!1232549))

(declare-fun b!4172599 () Bool)

(declare-fun res!1709837 () Bool)

(declare-fun e!2590407 () Bool)

(assert (=> b!4172599 (=> (not res!1709837) (not e!2590407))))

(assert (=> b!4172599 (= res!1709837 (= (head!8858 input!3342) (head!8858 input!3342)))))

(declare-fun b!4172601 () Bool)

(declare-fun e!2590405 () Bool)

(assert (=> b!4172601 (= e!2590405 (>= (size!33566 input!3342) (size!33566 input!3342)))))

(declare-fun b!4172598 () Bool)

(declare-fun e!2590406 () Bool)

(assert (=> b!4172598 (= e!2590406 e!2590407)))

(declare-fun res!1709836 () Bool)

(assert (=> b!4172598 (=> (not res!1709836) (not e!2590407))))

(assert (=> b!4172598 (= res!1709836 (not ((_ is Nil!45726) input!3342)))))

(declare-fun d!1232557 () Bool)

(assert (=> d!1232557 e!2590405))

(declare-fun res!1709834 () Bool)

(assert (=> d!1232557 (=> res!1709834 e!2590405)))

(declare-fun lt!1485781 () Bool)

(assert (=> d!1232557 (= res!1709834 (not lt!1485781))))

(assert (=> d!1232557 (= lt!1485781 e!2590406)))

(declare-fun res!1709835 () Bool)

(assert (=> d!1232557 (=> res!1709835 e!2590406)))

(assert (=> d!1232557 (= res!1709835 ((_ is Nil!45726) input!3342))))

(assert (=> d!1232557 (= (isPrefix!4441 input!3342 input!3342) lt!1485781)))

(declare-fun b!4172600 () Bool)

(assert (=> b!4172600 (= e!2590407 (isPrefix!4441 (tail!6705 input!3342) (tail!6705 input!3342)))))

(assert (= (and d!1232557 (not res!1709835)) b!4172598))

(assert (= (and b!4172598 res!1709836) b!4172599))

(assert (= (and b!4172599 res!1709837) b!4172600))

(assert (= (and d!1232557 (not res!1709834)) b!4172601))

(assert (=> b!4172599 m!4762721))

(assert (=> b!4172599 m!4762721))

(assert (=> b!4172601 m!4762653))

(assert (=> b!4172601 m!4762653))

(assert (=> b!4172600 m!4762723))

(assert (=> b!4172600 m!4762723))

(assert (=> b!4172600 m!4762723))

(assert (=> b!4172600 m!4762723))

(declare-fun m!4762747 () Bool)

(assert (=> b!4172600 m!4762747))

(assert (=> b!4172391 d!1232557))

(declare-fun d!1232559 () Bool)

(declare-fun fromListB!2572 (List!45850) BalanceConc!27184)

(assert (=> d!1232559 (= (seqFromList!5609 p!2959) (fromListB!2572 p!2959))))

(declare-fun bs!596098 () Bool)

(assert (= bs!596098 d!1232559))

(declare-fun m!4762755 () Bool)

(assert (=> bs!596098 m!4762755))

(assert (=> b!4172391 d!1232559))

(declare-fun d!1232565 () Bool)

(assert (=> d!1232565 (isPrefix!4441 input!3342 input!3342)))

(declare-fun lt!1485786 () Unit!64797)

(declare-fun choose!25538 (List!45850 List!45850) Unit!64797)

(assert (=> d!1232565 (= lt!1485786 (choose!25538 input!3342 input!3342))))

(assert (=> d!1232565 (= (lemmaIsPrefixRefl!2870 input!3342 input!3342) lt!1485786)))

(declare-fun bs!596099 () Bool)

(assert (= bs!596099 d!1232565))

(assert (=> bs!596099 m!4762643))

(declare-fun m!4762761 () Bool)

(assert (=> bs!596099 m!4762761))

(assert (=> b!4172391 d!1232565))

(declare-fun d!1232569 () Bool)

(declare-fun dynLambda!19609 (Int BalanceConc!27184) TokenValue!7814)

(assert (=> d!1232569 (= (apply!10549 (transformation!7584 r!4142) lt!1485749) (dynLambda!19609 (toValue!10268 (transformation!7584 r!4142)) lt!1485749))))

(declare-fun b_lambda!122585 () Bool)

(assert (=> (not b_lambda!122585) (not d!1232569)))

(declare-fun t!344522 () Bool)

(declare-fun tb!249889 () Bool)

(assert (=> (and b!4172397 (= (toValue!10268 (transformation!7584 (h!51147 rules!3843))) (toValue!10268 (transformation!7584 r!4142))) t!344522) tb!249889))

(declare-fun result!304424 () Bool)

(declare-fun inv!21 (TokenValue!7814) Bool)

(assert (=> tb!249889 (= result!304424 (inv!21 (dynLambda!19609 (toValue!10268 (transformation!7584 r!4142)) lt!1485749)))))

(declare-fun m!4762765 () Bool)

(assert (=> tb!249889 m!4762765))

(assert (=> d!1232569 t!344522))

(declare-fun b_and!325931 () Bool)

(assert (= b_and!325913 (and (=> t!344522 result!304424) b_and!325931)))

(declare-fun t!344524 () Bool)

(declare-fun tb!249891 () Bool)

(assert (=> (and b!4172396 (= (toValue!10268 (transformation!7584 rBis!167)) (toValue!10268 (transformation!7584 r!4142))) t!344524) tb!249891))

(declare-fun result!304428 () Bool)

(assert (= result!304428 result!304424))

(assert (=> d!1232569 t!344524))

(declare-fun b_and!325933 () Bool)

(assert (= b_and!325917 (and (=> t!344524 result!304428) b_and!325933)))

(declare-fun t!344526 () Bool)

(declare-fun tb!249893 () Bool)

(assert (=> (and b!4172388 (= (toValue!10268 (transformation!7584 r!4142)) (toValue!10268 (transformation!7584 r!4142))) t!344526) tb!249893))

(declare-fun result!304430 () Bool)

(assert (= result!304430 result!304424))

(assert (=> d!1232569 t!344526))

(declare-fun b_and!325935 () Bool)

(assert (= b_and!325921 (and (=> t!344526 result!304430) b_and!325935)))

(declare-fun m!4762767 () Bool)

(assert (=> d!1232569 m!4762767))

(assert (=> b!4172391 d!1232569))

(declare-fun b!4172659 () Bool)

(declare-fun res!1709882 () Bool)

(declare-fun e!2590442 () Bool)

(assert (=> b!4172659 (=> (not res!1709882) (not e!2590442))))

(declare-fun lt!1485819 () Option!9780)

(declare-fun get!14851 (Option!9780) tuple2!43582)

(assert (=> b!4172659 (= res!1709882 (= (rule!10632 (_1!24925 (get!14851 lt!1485819))) r!4142))))

(declare-fun b!4172660 () Bool)

(declare-fun e!2590440 () Option!9780)

(assert (=> b!4172660 (= e!2590440 None!9779)))

(declare-fun b!4172661 () Bool)

(declare-fun res!1709878 () Bool)

(assert (=> b!4172661 (=> (not res!1709878) (not e!2590442))))

(declare-fun list!16529 (BalanceConc!27184) List!45850)

(declare-fun charsOf!5035 (Token!13882) BalanceConc!27184)

(assert (=> b!4172661 (= res!1709878 (= (++!11672 (list!16529 (charsOf!5035 (_1!24925 (get!14851 lt!1485819)))) (_2!24925 (get!14851 lt!1485819))) input!3342))))

(declare-fun d!1232573 () Bool)

(declare-fun e!2590439 () Bool)

(assert (=> d!1232573 e!2590439))

(declare-fun res!1709881 () Bool)

(assert (=> d!1232573 (=> res!1709881 e!2590439)))

(declare-fun isEmpty!27053 (Option!9780) Bool)

(assert (=> d!1232573 (= res!1709881 (isEmpty!27053 lt!1485819))))

(assert (=> d!1232573 (= lt!1485819 e!2590440)))

(declare-fun c!713161 () Bool)

(declare-datatypes ((tuple2!43586 0))(
  ( (tuple2!43587 (_1!24927 List!45850) (_2!24927 List!45850)) )
))
(declare-fun lt!1485818 () tuple2!43586)

(assert (=> d!1232573 (= c!713161 (isEmpty!27051 (_1!24927 lt!1485818)))))

(declare-fun findLongestMatch!1486 (Regex!12489 List!45850) tuple2!43586)

(assert (=> d!1232573 (= lt!1485818 (findLongestMatch!1486 (regex!7584 r!4142) input!3342))))

(assert (=> d!1232573 (ruleValid!3302 thiss!25986 r!4142)))

(assert (=> d!1232573 (= (maxPrefixOneRule!3188 thiss!25986 r!4142 input!3342) lt!1485819)))

(declare-fun b!4172662 () Bool)

(declare-fun size!33568 (BalanceConc!27184) Int)

(assert (=> b!4172662 (= e!2590440 (Some!9779 (tuple2!43583 (Token!13883 (apply!10549 (transformation!7584 r!4142) (seqFromList!5609 (_1!24927 lt!1485818))) r!4142 (size!33568 (seqFromList!5609 (_1!24927 lt!1485818))) (_1!24927 lt!1485818)) (_2!24927 lt!1485818))))))

(declare-fun lt!1485821 () Unit!64797)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1546 (Regex!12489 List!45850) Unit!64797)

(assert (=> b!4172662 (= lt!1485821 (longestMatchIsAcceptedByMatchOrIsEmpty!1546 (regex!7584 r!4142) input!3342))))

(declare-fun res!1709880 () Bool)

(declare-fun findLongestMatchInner!1573 (Regex!12489 List!45850 Int List!45850 List!45850 Int) tuple2!43586)

(assert (=> b!4172662 (= res!1709880 (isEmpty!27051 (_1!24927 (findLongestMatchInner!1573 (regex!7584 r!4142) Nil!45726 (size!33566 Nil!45726) input!3342 input!3342 (size!33566 input!3342)))))))

(declare-fun e!2590441 () Bool)

(assert (=> b!4172662 (=> res!1709880 e!2590441)))

(assert (=> b!4172662 e!2590441))

(declare-fun lt!1485822 () Unit!64797)

(assert (=> b!4172662 (= lt!1485822 lt!1485821)))

(declare-fun lt!1485820 () Unit!64797)

(assert (=> b!4172662 (= lt!1485820 (lemmaSemiInverse!2350 (transformation!7584 r!4142) (seqFromList!5609 (_1!24927 lt!1485818))))))

(declare-fun b!4172663 () Bool)

(assert (=> b!4172663 (= e!2590441 (matchR!6228 (regex!7584 r!4142) (_1!24927 (findLongestMatchInner!1573 (regex!7584 r!4142) Nil!45726 (size!33566 Nil!45726) input!3342 input!3342 (size!33566 input!3342)))))))

(declare-fun b!4172664 () Bool)

(declare-fun res!1709877 () Bool)

(assert (=> b!4172664 (=> (not res!1709877) (not e!2590442))))

(assert (=> b!4172664 (= res!1709877 (= (value!236676 (_1!24925 (get!14851 lt!1485819))) (apply!10549 (transformation!7584 (rule!10632 (_1!24925 (get!14851 lt!1485819)))) (seqFromList!5609 (originalCharacters!7972 (_1!24925 (get!14851 lt!1485819)))))))))

(declare-fun b!4172665 () Bool)

(declare-fun res!1709883 () Bool)

(assert (=> b!4172665 (=> (not res!1709883) (not e!2590442))))

(assert (=> b!4172665 (= res!1709883 (< (size!33566 (_2!24925 (get!14851 lt!1485819))) (size!33566 input!3342)))))

(declare-fun b!4172666 () Bool)

(assert (=> b!4172666 (= e!2590439 e!2590442)))

(declare-fun res!1709879 () Bool)

(assert (=> b!4172666 (=> (not res!1709879) (not e!2590442))))

(assert (=> b!4172666 (= res!1709879 (matchR!6228 (regex!7584 r!4142) (list!16529 (charsOf!5035 (_1!24925 (get!14851 lt!1485819))))))))

(declare-fun b!4172667 () Bool)

(assert (=> b!4172667 (= e!2590442 (= (size!33565 (_1!24925 (get!14851 lt!1485819))) (size!33566 (originalCharacters!7972 (_1!24925 (get!14851 lt!1485819))))))))

(assert (= (and d!1232573 c!713161) b!4172660))

(assert (= (and d!1232573 (not c!713161)) b!4172662))

(assert (= (and b!4172662 (not res!1709880)) b!4172663))

(assert (= (and d!1232573 (not res!1709881)) b!4172666))

(assert (= (and b!4172666 res!1709879) b!4172661))

(assert (= (and b!4172661 res!1709878) b!4172665))

(assert (= (and b!4172665 res!1709883) b!4172659))

(assert (= (and b!4172659 res!1709882) b!4172664))

(assert (= (and b!4172664 res!1709877) b!4172667))

(declare-fun m!4762813 () Bool)

(assert (=> b!4172667 m!4762813))

(declare-fun m!4762815 () Bool)

(assert (=> b!4172667 m!4762815))

(assert (=> b!4172661 m!4762813))

(declare-fun m!4762817 () Bool)

(assert (=> b!4172661 m!4762817))

(assert (=> b!4172661 m!4762817))

(declare-fun m!4762819 () Bool)

(assert (=> b!4172661 m!4762819))

(assert (=> b!4172661 m!4762819))

(declare-fun m!4762821 () Bool)

(assert (=> b!4172661 m!4762821))

(assert (=> b!4172665 m!4762813))

(declare-fun m!4762823 () Bool)

(assert (=> b!4172665 m!4762823))

(assert (=> b!4172665 m!4762653))

(assert (=> b!4172666 m!4762813))

(assert (=> b!4172666 m!4762817))

(assert (=> b!4172666 m!4762817))

(assert (=> b!4172666 m!4762819))

(assert (=> b!4172666 m!4762819))

(declare-fun m!4762825 () Bool)

(assert (=> b!4172666 m!4762825))

(declare-fun m!4762827 () Bool)

(assert (=> b!4172663 m!4762827))

(assert (=> b!4172663 m!4762653))

(assert (=> b!4172663 m!4762827))

(assert (=> b!4172663 m!4762653))

(declare-fun m!4762829 () Bool)

(assert (=> b!4172663 m!4762829))

(declare-fun m!4762831 () Bool)

(assert (=> b!4172663 m!4762831))

(assert (=> b!4172664 m!4762813))

(declare-fun m!4762833 () Bool)

(assert (=> b!4172664 m!4762833))

(assert (=> b!4172664 m!4762833))

(declare-fun m!4762835 () Bool)

(assert (=> b!4172664 m!4762835))

(declare-fun m!4762837 () Bool)

(assert (=> d!1232573 m!4762837))

(declare-fun m!4762839 () Bool)

(assert (=> d!1232573 m!4762839))

(declare-fun m!4762841 () Bool)

(assert (=> d!1232573 m!4762841))

(assert (=> d!1232573 m!4762615))

(declare-fun m!4762843 () Bool)

(assert (=> b!4172662 m!4762843))

(declare-fun m!4762845 () Bool)

(assert (=> b!4172662 m!4762845))

(assert (=> b!4172662 m!4762843))

(declare-fun m!4762847 () Bool)

(assert (=> b!4172662 m!4762847))

(declare-fun m!4762849 () Bool)

(assert (=> b!4172662 m!4762849))

(assert (=> b!4172662 m!4762827))

(assert (=> b!4172662 m!4762653))

(assert (=> b!4172662 m!4762829))

(assert (=> b!4172662 m!4762653))

(declare-fun m!4762851 () Bool)

(assert (=> b!4172662 m!4762851))

(assert (=> b!4172662 m!4762827))

(assert (=> b!4172662 m!4762843))

(declare-fun m!4762853 () Bool)

(assert (=> b!4172662 m!4762853))

(assert (=> b!4172662 m!4762843))

(assert (=> b!4172659 m!4762813))

(assert (=> b!4172391 d!1232573))

(declare-fun b!4172734 () Bool)

(declare-fun e!2590484 () Bool)

(assert (=> b!4172734 (= e!2590484 true)))

(declare-fun d!1232579 () Bool)

(assert (=> d!1232579 e!2590484))

(assert (= d!1232579 b!4172734))

(declare-fun order!24121 () Int)

(declare-fun lambda!129277 () Int)

(declare-fun order!24123 () Int)

(declare-fun dynLambda!19614 (Int Int) Int)

(declare-fun dynLambda!19615 (Int Int) Int)

(assert (=> b!4172734 (< (dynLambda!19614 order!24121 (toValue!10268 (transformation!7584 r!4142))) (dynLambda!19615 order!24123 lambda!129277))))

(declare-fun order!24125 () Int)

(declare-fun dynLambda!19616 (Int Int) Int)

(assert (=> b!4172734 (< (dynLambda!19616 order!24125 (toChars!10127 (transformation!7584 r!4142))) (dynLambda!19615 order!24123 lambda!129277))))

(declare-fun dynLambda!19617 (Int TokenValue!7814) BalanceConc!27184)

(assert (=> d!1232579 (= (list!16529 (dynLambda!19617 (toChars!10127 (transformation!7584 r!4142)) (dynLambda!19609 (toValue!10268 (transformation!7584 r!4142)) lt!1485749))) (list!16529 lt!1485749))))

(declare-fun lt!1485828 () Unit!64797)

(declare-fun ForallOf!1024 (Int BalanceConc!27184) Unit!64797)

(assert (=> d!1232579 (= lt!1485828 (ForallOf!1024 lambda!129277 lt!1485749))))

(assert (=> d!1232579 (= (lemmaSemiInverse!2350 (transformation!7584 r!4142) lt!1485749) lt!1485828)))

(declare-fun b_lambda!122597 () Bool)

(assert (=> (not b_lambda!122597) (not d!1232579)))

(declare-fun tb!249905 () Bool)

(declare-fun t!344538 () Bool)

(assert (=> (and b!4172397 (= (toChars!10127 (transformation!7584 (h!51147 rules!3843))) (toChars!10127 (transformation!7584 r!4142))) t!344538) tb!249905))

(declare-fun e!2590487 () Bool)

(declare-fun b!4172739 () Bool)

(declare-fun tp!1274890 () Bool)

(declare-fun inv!60262 (Conc!13795) Bool)

(assert (=> b!4172739 (= e!2590487 (and (inv!60262 (c!713116 (dynLambda!19617 (toChars!10127 (transformation!7584 r!4142)) (dynLambda!19609 (toValue!10268 (transformation!7584 r!4142)) lt!1485749)))) tp!1274890))))

(declare-fun result!304450 () Bool)

(declare-fun inv!60263 (BalanceConc!27184) Bool)

(assert (=> tb!249905 (= result!304450 (and (inv!60263 (dynLambda!19617 (toChars!10127 (transformation!7584 r!4142)) (dynLambda!19609 (toValue!10268 (transformation!7584 r!4142)) lt!1485749))) e!2590487))))

(assert (= tb!249905 b!4172739))

(declare-fun m!4762895 () Bool)

(assert (=> b!4172739 m!4762895))

(declare-fun m!4762897 () Bool)

(assert (=> tb!249905 m!4762897))

(assert (=> d!1232579 t!344538))

(declare-fun b_and!325953 () Bool)

(assert (= b_and!325915 (and (=> t!344538 result!304450) b_and!325953)))

(declare-fun tb!249907 () Bool)

(declare-fun t!344540 () Bool)

(assert (=> (and b!4172396 (= (toChars!10127 (transformation!7584 rBis!167)) (toChars!10127 (transformation!7584 r!4142))) t!344540) tb!249907))

(declare-fun result!304454 () Bool)

(assert (= result!304454 result!304450))

(assert (=> d!1232579 t!344540))

(declare-fun b_and!325955 () Bool)

(assert (= b_and!325919 (and (=> t!344540 result!304454) b_and!325955)))

(declare-fun t!344542 () Bool)

(declare-fun tb!249909 () Bool)

(assert (=> (and b!4172388 (= (toChars!10127 (transformation!7584 r!4142)) (toChars!10127 (transformation!7584 r!4142))) t!344542) tb!249909))

(declare-fun result!304456 () Bool)

(assert (= result!304456 result!304450))

(assert (=> d!1232579 t!344542))

(declare-fun b_and!325957 () Bool)

(assert (= b_and!325923 (and (=> t!344542 result!304456) b_and!325957)))

(declare-fun b_lambda!122599 () Bool)

(assert (=> (not b_lambda!122599) (not d!1232579)))

(assert (=> d!1232579 t!344522))

(declare-fun b_and!325959 () Bool)

(assert (= b_and!325931 (and (=> t!344522 result!304424) b_and!325959)))

(assert (=> d!1232579 t!344524))

(declare-fun b_and!325961 () Bool)

(assert (= b_and!325933 (and (=> t!344524 result!304428) b_and!325961)))

(assert (=> d!1232579 t!344526))

(declare-fun b_and!325963 () Bool)

(assert (= b_and!325935 (and (=> t!344526 result!304430) b_and!325963)))

(assert (=> d!1232579 m!4762767))

(declare-fun m!4762899 () Bool)

(assert (=> d!1232579 m!4762899))

(declare-fun m!4762901 () Bool)

(assert (=> d!1232579 m!4762901))

(declare-fun m!4762903 () Bool)

(assert (=> d!1232579 m!4762903))

(declare-fun m!4762905 () Bool)

(assert (=> d!1232579 m!4762905))

(assert (=> d!1232579 m!4762767))

(assert (=> d!1232579 m!4762903))

(assert (=> b!4172391 d!1232579))

(declare-fun d!1232603 () Bool)

(declare-fun lt!1485829 () Int)

(assert (=> d!1232603 (>= lt!1485829 0)))

(declare-fun e!2590488 () Int)

(assert (=> d!1232603 (= lt!1485829 e!2590488)))

(declare-fun c!713164 () Bool)

(assert (=> d!1232603 (= c!713164 ((_ is Nil!45726) p!2959))))

(assert (=> d!1232603 (= (size!33566 p!2959) lt!1485829)))

(declare-fun b!4172740 () Bool)

(assert (=> b!4172740 (= e!2590488 0)))

(declare-fun b!4172741 () Bool)

(assert (=> b!4172741 (= e!2590488 (+ 1 (size!33566 (t!344513 p!2959))))))

(assert (= (and d!1232603 c!713164) b!4172740))

(assert (= (and d!1232603 (not c!713164)) b!4172741))

(declare-fun m!4762907 () Bool)

(assert (=> b!4172741 m!4762907))

(assert (=> b!4172391 d!1232603))

(declare-fun c!713170 () Bool)

(declare-fun call!291357 () Bool)

(declare-fun c!713169 () Bool)

(declare-fun bm!291351 () Bool)

(assert (=> bm!291351 (= call!291357 (validRegex!5606 (ite c!713169 (reg!12818 (regex!7584 r!4142)) (ite c!713170 (regOne!25491 (regex!7584 r!4142)) (regOne!25490 (regex!7584 r!4142))))))))

(declare-fun bm!291352 () Bool)

(declare-fun call!291356 () Bool)

(assert (=> bm!291352 (= call!291356 (validRegex!5606 (ite c!713170 (regTwo!25491 (regex!7584 r!4142)) (regTwo!25490 (regex!7584 r!4142)))))))

(declare-fun d!1232605 () Bool)

(declare-fun res!1709907 () Bool)

(declare-fun e!2590509 () Bool)

(assert (=> d!1232605 (=> res!1709907 e!2590509)))

(assert (=> d!1232605 (= res!1709907 ((_ is ElementMatch!12489) (regex!7584 r!4142)))))

(assert (=> d!1232605 (= (validRegex!5606 (regex!7584 r!4142)) e!2590509)))

(declare-fun b!4172760 () Bool)

(declare-fun e!2590504 () Bool)

(declare-fun e!2590503 () Bool)

(assert (=> b!4172760 (= e!2590504 e!2590503)))

(declare-fun res!1709905 () Bool)

(assert (=> b!4172760 (=> (not res!1709905) (not e!2590503))))

(declare-fun call!291358 () Bool)

(assert (=> b!4172760 (= res!1709905 call!291358)))

(declare-fun b!4172761 () Bool)

(declare-fun res!1709906 () Bool)

(declare-fun e!2590507 () Bool)

(assert (=> b!4172761 (=> (not res!1709906) (not e!2590507))))

(assert (=> b!4172761 (= res!1709906 call!291358)))

(declare-fun e!2590505 () Bool)

(assert (=> b!4172761 (= e!2590505 e!2590507)))

(declare-fun b!4172762 () Bool)

(declare-fun e!2590508 () Bool)

(assert (=> b!4172762 (= e!2590508 call!291357)))

(declare-fun b!4172763 () Bool)

(assert (=> b!4172763 (= e!2590503 call!291356)))

(declare-fun b!4172764 () Bool)

(declare-fun e!2590506 () Bool)

(assert (=> b!4172764 (= e!2590506 e!2590505)))

(assert (=> b!4172764 (= c!713170 ((_ is Union!12489) (regex!7584 r!4142)))))

(declare-fun bm!291353 () Bool)

(assert (=> bm!291353 (= call!291358 call!291357)))

(declare-fun b!4172765 () Bool)

(declare-fun res!1709904 () Bool)

(assert (=> b!4172765 (=> res!1709904 e!2590504)))

(assert (=> b!4172765 (= res!1709904 (not ((_ is Concat!20304) (regex!7584 r!4142))))))

(assert (=> b!4172765 (= e!2590505 e!2590504)))

(declare-fun b!4172766 () Bool)

(assert (=> b!4172766 (= e!2590507 call!291356)))

(declare-fun b!4172767 () Bool)

(assert (=> b!4172767 (= e!2590506 e!2590508)))

(declare-fun res!1709908 () Bool)

(assert (=> b!4172767 (= res!1709908 (not (nullable!4381 (reg!12818 (regex!7584 r!4142)))))))

(assert (=> b!4172767 (=> (not res!1709908) (not e!2590508))))

(declare-fun b!4172768 () Bool)

(assert (=> b!4172768 (= e!2590509 e!2590506)))

(assert (=> b!4172768 (= c!713169 ((_ is Star!12489) (regex!7584 r!4142)))))

(assert (= (and d!1232605 (not res!1709907)) b!4172768))

(assert (= (and b!4172768 c!713169) b!4172767))

(assert (= (and b!4172768 (not c!713169)) b!4172764))

(assert (= (and b!4172767 res!1709908) b!4172762))

(assert (= (and b!4172764 c!713170) b!4172761))

(assert (= (and b!4172764 (not c!713170)) b!4172765))

(assert (= (and b!4172761 res!1709906) b!4172766))

(assert (= (and b!4172765 (not res!1709904)) b!4172760))

(assert (= (and b!4172760 res!1709905) b!4172763))

(assert (= (or b!4172766 b!4172763) bm!291352))

(assert (= (or b!4172761 b!4172760) bm!291353))

(assert (= (or b!4172762 bm!291353) bm!291351))

(declare-fun m!4762909 () Bool)

(assert (=> bm!291351 m!4762909))

(declare-fun m!4762911 () Bool)

(assert (=> bm!291352 m!4762911))

(declare-fun m!4762913 () Bool)

(assert (=> b!4172767 m!4762913))

(assert (=> b!4172392 d!1232605))

(declare-fun d!1232607 () Bool)

(declare-fun lt!1485830 () Bool)

(assert (=> d!1232607 (= lt!1485830 (select (content!7108 rules!3843) rBis!167))))

(declare-fun e!2590510 () Bool)

(assert (=> d!1232607 (= lt!1485830 e!2590510)))

(declare-fun res!1709909 () Bool)

(assert (=> d!1232607 (=> (not res!1709909) (not e!2590510))))

(assert (=> d!1232607 (= res!1709909 ((_ is Cons!45727) rules!3843))))

(assert (=> d!1232607 (= (contains!9387 rules!3843 rBis!167) lt!1485830)))

(declare-fun b!4172769 () Bool)

(declare-fun e!2590511 () Bool)

(assert (=> b!4172769 (= e!2590510 e!2590511)))

(declare-fun res!1709910 () Bool)

(assert (=> b!4172769 (=> res!1709910 e!2590511)))

(assert (=> b!4172769 (= res!1709910 (= (h!51147 rules!3843) rBis!167))))

(declare-fun b!4172770 () Bool)

(assert (=> b!4172770 (= e!2590511 (contains!9387 (t!344514 rules!3843) rBis!167))))

(assert (= (and d!1232607 res!1709909) b!4172769))

(assert (= (and b!4172769 (not res!1709910)) b!4172770))

(assert (=> d!1232607 m!4762663))

(declare-fun m!4762915 () Bool)

(assert (=> d!1232607 m!4762915))

(declare-fun m!4762917 () Bool)

(assert (=> b!4172770 m!4762917))

(assert (=> b!4172382 d!1232607))

(declare-fun d!1232609 () Bool)

(assert (=> d!1232609 (= (inv!60257 (tag!8448 r!4142)) (= (mod (str.len (value!236675 (tag!8448 r!4142))) 2) 0))))

(assert (=> b!4172404 d!1232609))

(declare-fun d!1232611 () Bool)

(declare-fun res!1709911 () Bool)

(declare-fun e!2590512 () Bool)

(assert (=> d!1232611 (=> (not res!1709911) (not e!2590512))))

(assert (=> d!1232611 (= res!1709911 (semiInverseModEq!3289 (toChars!10127 (transformation!7584 r!4142)) (toValue!10268 (transformation!7584 r!4142))))))

(assert (=> d!1232611 (= (inv!60259 (transformation!7584 r!4142)) e!2590512)))

(declare-fun b!4172771 () Bool)

(assert (=> b!4172771 (= e!2590512 (equivClasses!3188 (toChars!10127 (transformation!7584 r!4142)) (toValue!10268 (transformation!7584 r!4142))))))

(assert (= (and d!1232611 res!1709911) b!4172771))

(declare-fun m!4762919 () Bool)

(assert (=> d!1232611 m!4762919))

(declare-fun m!4762921 () Bool)

(assert (=> b!4172771 m!4762921))

(assert (=> b!4172404 d!1232611))

(declare-fun d!1232613 () Bool)

(declare-fun lt!1485831 () Int)

(assert (=> d!1232613 (>= lt!1485831 0)))

(declare-fun e!2590513 () Int)

(assert (=> d!1232613 (= lt!1485831 e!2590513)))

(declare-fun c!713171 () Bool)

(assert (=> d!1232613 (= c!713171 ((_ is Nil!45726) pBis!107))))

(assert (=> d!1232613 (= (size!33566 pBis!107) lt!1485831)))

(declare-fun b!4172772 () Bool)

(assert (=> b!4172772 (= e!2590513 0)))

(declare-fun b!4172773 () Bool)

(assert (=> b!4172773 (= e!2590513 (+ 1 (size!33566 (t!344513 pBis!107))))))

(assert (= (and d!1232613 c!713171) b!4172772))

(assert (= (and d!1232613 (not c!713171)) b!4172773))

(declare-fun m!4762923 () Bool)

(assert (=> b!4172773 m!4762923))

(assert (=> b!4172393 d!1232613))

(declare-fun d!1232615 () Bool)

(assert (=> d!1232615 (= (inv!60257 (tag!8448 (h!51147 rules!3843))) (= (mod (str.len (value!236675 (tag!8448 (h!51147 rules!3843)))) 2) 0))))

(assert (=> b!4172399 d!1232615))

(declare-fun d!1232617 () Bool)

(declare-fun res!1709912 () Bool)

(declare-fun e!2590514 () Bool)

(assert (=> d!1232617 (=> (not res!1709912) (not e!2590514))))

(assert (=> d!1232617 (= res!1709912 (semiInverseModEq!3289 (toChars!10127 (transformation!7584 (h!51147 rules!3843))) (toValue!10268 (transformation!7584 (h!51147 rules!3843)))))))

(assert (=> d!1232617 (= (inv!60259 (transformation!7584 (h!51147 rules!3843))) e!2590514)))

(declare-fun b!4172774 () Bool)

(assert (=> b!4172774 (= e!2590514 (equivClasses!3188 (toChars!10127 (transformation!7584 (h!51147 rules!3843))) (toValue!10268 (transformation!7584 (h!51147 rules!3843)))))))

(assert (= (and d!1232617 res!1709912) b!4172774))

(declare-fun m!4762925 () Bool)

(assert (=> d!1232617 m!4762925))

(declare-fun m!4762927 () Bool)

(assert (=> b!4172774 m!4762927))

(assert (=> b!4172399 d!1232617))

(declare-fun b!4172776 () Bool)

(declare-fun res!1709916 () Bool)

(declare-fun e!2590517 () Bool)

(assert (=> b!4172776 (=> (not res!1709916) (not e!2590517))))

(assert (=> b!4172776 (= res!1709916 (= (head!8858 pBis!107) (head!8858 input!3342)))))

(declare-fun b!4172778 () Bool)

(declare-fun e!2590515 () Bool)

(assert (=> b!4172778 (= e!2590515 (>= (size!33566 input!3342) (size!33566 pBis!107)))))

(declare-fun b!4172775 () Bool)

(declare-fun e!2590516 () Bool)

(assert (=> b!4172775 (= e!2590516 e!2590517)))

(declare-fun res!1709915 () Bool)

(assert (=> b!4172775 (=> (not res!1709915) (not e!2590517))))

(assert (=> b!4172775 (= res!1709915 (not ((_ is Nil!45726) input!3342)))))

(declare-fun d!1232619 () Bool)

(assert (=> d!1232619 e!2590515))

(declare-fun res!1709913 () Bool)

(assert (=> d!1232619 (=> res!1709913 e!2590515)))

(declare-fun lt!1485832 () Bool)

(assert (=> d!1232619 (= res!1709913 (not lt!1485832))))

(assert (=> d!1232619 (= lt!1485832 e!2590516)))

(declare-fun res!1709914 () Bool)

(assert (=> d!1232619 (=> res!1709914 e!2590516)))

(assert (=> d!1232619 (= res!1709914 ((_ is Nil!45726) pBis!107))))

(assert (=> d!1232619 (= (isPrefix!4441 pBis!107 input!3342) lt!1485832)))

(declare-fun b!4172777 () Bool)

(assert (=> b!4172777 (= e!2590517 (isPrefix!4441 (tail!6705 pBis!107) (tail!6705 input!3342)))))

(assert (= (and d!1232619 (not res!1709914)) b!4172775))

(assert (= (and b!4172775 res!1709915) b!4172776))

(assert (= (and b!4172776 res!1709916) b!4172777))

(assert (= (and d!1232619 (not res!1709913)) b!4172778))

(declare-fun m!4762929 () Bool)

(assert (=> b!4172776 m!4762929))

(assert (=> b!4172776 m!4762721))

(assert (=> b!4172778 m!4762653))

(assert (=> b!4172778 m!4762657))

(declare-fun m!4762931 () Bool)

(assert (=> b!4172777 m!4762931))

(assert (=> b!4172777 m!4762723))

(assert (=> b!4172777 m!4762931))

(assert (=> b!4172777 m!4762723))

(declare-fun m!4762933 () Bool)

(assert (=> b!4172777 m!4762933))

(assert (=> b!4172389 d!1232619))

(declare-fun d!1232621 () Bool)

(declare-fun res!1709917 () Bool)

(declare-fun e!2590518 () Bool)

(assert (=> d!1232621 (=> (not res!1709917) (not e!2590518))))

(assert (=> d!1232621 (= res!1709917 (validRegex!5606 (regex!7584 rBis!167)))))

(assert (=> d!1232621 (= (ruleValid!3302 thiss!25986 rBis!167) e!2590518)))

(declare-fun b!4172779 () Bool)

(declare-fun res!1709918 () Bool)

(assert (=> b!4172779 (=> (not res!1709918) (not e!2590518))))

(assert (=> b!4172779 (= res!1709918 (not (nullable!4381 (regex!7584 rBis!167))))))

(declare-fun b!4172780 () Bool)

(assert (=> b!4172780 (= e!2590518 (not (= (tag!8448 rBis!167) (String!52937 ""))))))

(assert (= (and d!1232621 res!1709917) b!4172779))

(assert (= (and b!4172779 res!1709918) b!4172780))

(declare-fun m!4762935 () Bool)

(assert (=> d!1232621 m!4762935))

(declare-fun m!4762937 () Bool)

(assert (=> b!4172779 m!4762937))

(assert (=> b!4172401 d!1232621))

(declare-fun b!4172785 () Bool)

(declare-fun e!2590521 () Bool)

(declare-fun tp!1274893 () Bool)

(assert (=> b!4172785 (= e!2590521 (and tp_is_empty!21941 tp!1274893))))

(assert (=> b!4172403 (= tp!1274838 e!2590521)))

(assert (= (and b!4172403 ((_ is Cons!45726) (t!344513 pBis!107))) b!4172785))

(declare-fun b!4172798 () Bool)

(declare-fun e!2590524 () Bool)

(declare-fun tp!1274906 () Bool)

(assert (=> b!4172798 (= e!2590524 tp!1274906)))

(assert (=> b!4172387 (= tp!1274834 e!2590524)))

(declare-fun b!4172799 () Bool)

(declare-fun tp!1274904 () Bool)

(declare-fun tp!1274905 () Bool)

(assert (=> b!4172799 (= e!2590524 (and tp!1274904 tp!1274905))))

(declare-fun b!4172797 () Bool)

(declare-fun tp!1274908 () Bool)

(declare-fun tp!1274907 () Bool)

(assert (=> b!4172797 (= e!2590524 (and tp!1274908 tp!1274907))))

(declare-fun b!4172796 () Bool)

(assert (=> b!4172796 (= e!2590524 tp_is_empty!21941)))

(assert (= (and b!4172387 ((_ is ElementMatch!12489) (regex!7584 rBis!167))) b!4172796))

(assert (= (and b!4172387 ((_ is Concat!20304) (regex!7584 rBis!167))) b!4172797))

(assert (= (and b!4172387 ((_ is Star!12489) (regex!7584 rBis!167))) b!4172798))

(assert (= (and b!4172387 ((_ is Union!12489) (regex!7584 rBis!167))) b!4172799))

(declare-fun b!4172802 () Bool)

(declare-fun e!2590525 () Bool)

(declare-fun tp!1274911 () Bool)

(assert (=> b!4172802 (= e!2590525 tp!1274911)))

(assert (=> b!4172404 (= tp!1274836 e!2590525)))

(declare-fun b!4172803 () Bool)

(declare-fun tp!1274909 () Bool)

(declare-fun tp!1274910 () Bool)

(assert (=> b!4172803 (= e!2590525 (and tp!1274909 tp!1274910))))

(declare-fun b!4172801 () Bool)

(declare-fun tp!1274913 () Bool)

(declare-fun tp!1274912 () Bool)

(assert (=> b!4172801 (= e!2590525 (and tp!1274913 tp!1274912))))

(declare-fun b!4172800 () Bool)

(assert (=> b!4172800 (= e!2590525 tp_is_empty!21941)))

(assert (= (and b!4172404 ((_ is ElementMatch!12489) (regex!7584 r!4142))) b!4172800))

(assert (= (and b!4172404 ((_ is Concat!20304) (regex!7584 r!4142))) b!4172801))

(assert (= (and b!4172404 ((_ is Star!12489) (regex!7584 r!4142))) b!4172802))

(assert (= (and b!4172404 ((_ is Union!12489) (regex!7584 r!4142))) b!4172803))

(declare-fun b!4172804 () Bool)

(declare-fun e!2590526 () Bool)

(declare-fun tp!1274914 () Bool)

(assert (=> b!4172804 (= e!2590526 (and tp_is_empty!21941 tp!1274914))))

(assert (=> b!4172383 (= tp!1274833 e!2590526)))

(assert (= (and b!4172383 ((_ is Cons!45726) (t!344513 input!3342))) b!4172804))

(declare-fun b!4172807 () Bool)

(declare-fun e!2590527 () Bool)

(declare-fun tp!1274917 () Bool)

(assert (=> b!4172807 (= e!2590527 tp!1274917)))

(assert (=> b!4172399 (= tp!1274839 e!2590527)))

(declare-fun b!4172808 () Bool)

(declare-fun tp!1274915 () Bool)

(declare-fun tp!1274916 () Bool)

(assert (=> b!4172808 (= e!2590527 (and tp!1274915 tp!1274916))))

(declare-fun b!4172806 () Bool)

(declare-fun tp!1274919 () Bool)

(declare-fun tp!1274918 () Bool)

(assert (=> b!4172806 (= e!2590527 (and tp!1274919 tp!1274918))))

(declare-fun b!4172805 () Bool)

(assert (=> b!4172805 (= e!2590527 tp_is_empty!21941)))

(assert (= (and b!4172399 ((_ is ElementMatch!12489) (regex!7584 (h!51147 rules!3843)))) b!4172805))

(assert (= (and b!4172399 ((_ is Concat!20304) (regex!7584 (h!51147 rules!3843)))) b!4172806))

(assert (= (and b!4172399 ((_ is Star!12489) (regex!7584 (h!51147 rules!3843)))) b!4172807))

(assert (= (and b!4172399 ((_ is Union!12489) (regex!7584 (h!51147 rules!3843)))) b!4172808))

(declare-fun b!4172819 () Bool)

(declare-fun b_free!120807 () Bool)

(declare-fun b_next!121511 () Bool)

(assert (=> b!4172819 (= b_free!120807 (not b_next!121511))))

(declare-fun tb!249911 () Bool)

(declare-fun t!344544 () Bool)

(assert (=> (and b!4172819 (= (toValue!10268 (transformation!7584 (h!51147 (t!344514 rules!3843)))) (toValue!10268 (transformation!7584 r!4142))) t!344544) tb!249911))

(declare-fun result!304464 () Bool)

(assert (= result!304464 result!304424))

(assert (=> d!1232569 t!344544))

(assert (=> d!1232579 t!344544))

(declare-fun b_and!325965 () Bool)

(declare-fun tp!1274929 () Bool)

(assert (=> b!4172819 (= tp!1274929 (and (=> t!344544 result!304464) b_and!325965))))

(declare-fun b_free!120809 () Bool)

(declare-fun b_next!121513 () Bool)

(assert (=> b!4172819 (= b_free!120809 (not b_next!121513))))

(declare-fun tb!249913 () Bool)

(declare-fun t!344546 () Bool)

(assert (=> (and b!4172819 (= (toChars!10127 (transformation!7584 (h!51147 (t!344514 rules!3843)))) (toChars!10127 (transformation!7584 r!4142))) t!344546) tb!249913))

(declare-fun result!304466 () Bool)

(assert (= result!304466 result!304450))

(assert (=> d!1232579 t!344546))

(declare-fun b_and!325967 () Bool)

(declare-fun tp!1274931 () Bool)

(assert (=> b!4172819 (= tp!1274931 (and (=> t!344546 result!304466) b_and!325967))))

(declare-fun e!2590536 () Bool)

(assert (=> b!4172819 (= e!2590536 (and tp!1274929 tp!1274931))))

(declare-fun tp!1274930 () Bool)

(declare-fun e!2590537 () Bool)

(declare-fun b!4172818 () Bool)

(assert (=> b!4172818 (= e!2590537 (and tp!1274930 (inv!60257 (tag!8448 (h!51147 (t!344514 rules!3843)))) (inv!60259 (transformation!7584 (h!51147 (t!344514 rules!3843)))) e!2590536))))

(declare-fun b!4172817 () Bool)

(declare-fun e!2590538 () Bool)

(declare-fun tp!1274928 () Bool)

(assert (=> b!4172817 (= e!2590538 (and e!2590537 tp!1274928))))

(assert (=> b!4172400 (= tp!1274835 e!2590538)))

(assert (= b!4172818 b!4172819))

(assert (= b!4172817 b!4172818))

(assert (= (and b!4172400 ((_ is Cons!45727) (t!344514 rules!3843))) b!4172817))

(declare-fun m!4762939 () Bool)

(assert (=> b!4172818 m!4762939))

(declare-fun m!4762941 () Bool)

(assert (=> b!4172818 m!4762941))

(declare-fun b!4172820 () Bool)

(declare-fun e!2590540 () Bool)

(declare-fun tp!1274932 () Bool)

(assert (=> b!4172820 (= e!2590540 (and tp_is_empty!21941 tp!1274932))))

(assert (=> b!4172390 (= tp!1274832 e!2590540)))

(assert (= (and b!4172390 ((_ is Cons!45726) (t!344513 p!2959))) b!4172820))

(declare-fun b_lambda!122601 () Bool)

(assert (= b_lambda!122597 (or (and b!4172397 b_free!120793 (= (toChars!10127 (transformation!7584 (h!51147 rules!3843))) (toChars!10127 (transformation!7584 r!4142)))) (and b!4172396 b_free!120797 (= (toChars!10127 (transformation!7584 rBis!167)) (toChars!10127 (transformation!7584 r!4142)))) (and b!4172388 b_free!120801) (and b!4172819 b_free!120809 (= (toChars!10127 (transformation!7584 (h!51147 (t!344514 rules!3843)))) (toChars!10127 (transformation!7584 r!4142)))) b_lambda!122601)))

(declare-fun b_lambda!122603 () Bool)

(assert (= b_lambda!122585 (or (and b!4172397 b_free!120791 (= (toValue!10268 (transformation!7584 (h!51147 rules!3843))) (toValue!10268 (transformation!7584 r!4142)))) (and b!4172396 b_free!120795 (= (toValue!10268 (transformation!7584 rBis!167)) (toValue!10268 (transformation!7584 r!4142)))) (and b!4172388 b_free!120799) (and b!4172819 b_free!120807 (= (toValue!10268 (transformation!7584 (h!51147 (t!344514 rules!3843)))) (toValue!10268 (transformation!7584 r!4142)))) b_lambda!122603)))

(declare-fun b_lambda!122605 () Bool)

(assert (= b_lambda!122599 (or (and b!4172397 b_free!120791 (= (toValue!10268 (transformation!7584 (h!51147 rules!3843))) (toValue!10268 (transformation!7584 r!4142)))) (and b!4172396 b_free!120795 (= (toValue!10268 (transformation!7584 rBis!167)) (toValue!10268 (transformation!7584 r!4142)))) (and b!4172388 b_free!120799) (and b!4172819 b_free!120807 (= (toValue!10268 (transformation!7584 (h!51147 (t!344514 rules!3843)))) (toValue!10268 (transformation!7584 r!4142)))) b_lambda!122605)))

(check-sat (not b!4172667) (not b!4172664) b_and!325967 (not b_lambda!122603) (not b!4172550) (not b!4172739) (not b!4172410) (not d!1232535) (not d!1232621) (not b!4172779) (not b!4172785) (not b_next!121495) (not tb!249889) (not b!4172599) (not b!4172524) (not b!4172799) (not b!4172820) (not b!4172659) (not b!4172662) (not b!4172803) (not b!4172600) (not b!4172797) (not b_lambda!122601) (not b!4172519) (not d!1232527) (not b!4172512) (not b!4172807) (not b_next!121497) b_and!325957 (not b!4172804) b_and!325965 (not b!4172551) (not bm!291332) (not b!4172601) (not b!4172818) (not b!4172770) (not d!1232547) (not b!4172549) (not b!4172514) (not b_next!121499) (not b!4172431) (not d!1232559) (not d!1232611) (not b!4172776) tp_is_empty!21941 (not d!1232573) (not b_next!121503) (not b!4172801) (not b!4172771) (not b!4172808) (not b!4172798) (not b_next!121513) b_and!325955 (not b!4172441) (not b!4172773) (not d!1232521) (not b!4172817) b_and!325961 (not b!4172665) (not bm!291351) (not b!4172802) (not b!4172767) (not b_next!121501) (not d!1232565) (not b_next!121511) (not b!4172661) (not b!4172572) (not d!1232579) (not b!4172774) (not b!4172806) (not bm!291352) (not b!4172663) (not b!4172741) (not b!4172592) b_and!325953 (not b!4172778) (not d!1232519) (not d!1232549) (not b_lambda!122605) (not d!1232607) (not b!4172513) (not b!4172516) (not tb!249905) (not b!4172666) (not b!4172419) b_and!325963 (not d!1232617) (not b_next!121505) (not b!4172777) b_and!325959)
(check-sat (not b_next!121495) b_and!325965 (not b_next!121499) b_and!325967 (not b_next!121503) b_and!325961 b_and!325953 (not b_next!121497) b_and!325957 (not b_next!121513) b_and!325955 (not b_next!121511) (not b_next!121501) b_and!325963 (not b_next!121505) b_and!325959)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221244 () Bool)

(assert start!221244)

(declare-fun b!2265266 () Bool)

(declare-fun b_free!67101 () Bool)

(declare-fun b_next!67805 () Bool)

(assert (=> b!2265266 (= b_free!67101 (not b_next!67805))))

(declare-fun tp!716714 () Bool)

(declare-fun b_and!178185 () Bool)

(assert (=> b!2265266 (= tp!716714 b_and!178185)))

(declare-fun b_free!67103 () Bool)

(declare-fun b_next!67807 () Bool)

(assert (=> b!2265266 (= b_free!67103 (not b_next!67807))))

(declare-fun tp!716731 () Bool)

(declare-fun b_and!178187 () Bool)

(assert (=> b!2265266 (= tp!716731 b_and!178187)))

(declare-fun b!2265243 () Bool)

(declare-fun b_free!67105 () Bool)

(declare-fun b_next!67809 () Bool)

(assert (=> b!2265243 (= b_free!67105 (not b_next!67809))))

(declare-fun tp!716724 () Bool)

(declare-fun b_and!178189 () Bool)

(assert (=> b!2265243 (= tp!716724 b_and!178189)))

(declare-fun b_free!67107 () Bool)

(declare-fun b_next!67811 () Bool)

(assert (=> b!2265243 (= b_free!67107 (not b_next!67811))))

(declare-fun tp!716722 () Bool)

(declare-fun b_and!178191 () Bool)

(assert (=> b!2265243 (= tp!716722 b_and!178191)))

(declare-fun b!2265239 () Bool)

(declare-fun b_free!67109 () Bool)

(declare-fun b_next!67813 () Bool)

(assert (=> b!2265239 (= b_free!67109 (not b_next!67813))))

(declare-fun tp!716729 () Bool)

(declare-fun b_and!178193 () Bool)

(assert (=> b!2265239 (= tp!716729 b_and!178193)))

(declare-fun b_free!67111 () Bool)

(declare-fun b_next!67815 () Bool)

(assert (=> b!2265239 (= b_free!67111 (not b_next!67815))))

(declare-fun tp!716715 () Bool)

(declare-fun b_and!178195 () Bool)

(assert (=> b!2265239 (= tp!716715 b_and!178195)))

(declare-fun b!2265270 () Bool)

(declare-fun b_free!67113 () Bool)

(declare-fun b_next!67817 () Bool)

(assert (=> b!2265270 (= b_free!67113 (not b_next!67817))))

(declare-fun tp!716730 () Bool)

(declare-fun b_and!178197 () Bool)

(assert (=> b!2265270 (= tp!716730 b_and!178197)))

(declare-fun b_free!67115 () Bool)

(declare-fun b_next!67819 () Bool)

(assert (=> b!2265270 (= b_free!67115 (not b_next!67819))))

(declare-fun tp!716723 () Bool)

(declare-fun b_and!178199 () Bool)

(assert (=> b!2265270 (= tp!716723 b_and!178199)))

(declare-fun e!1450667 () Bool)

(declare-fun tp!716725 () Bool)

(declare-fun e!1450670 () Bool)

(declare-fun b!2265234 () Bool)

(declare-datatypes ((List!27015 0))(
  ( (Nil!26921) (Cons!26921 (h!32322 (_ BitVec 16)) (t!202013 List!27015)) )
))
(declare-datatypes ((TokenValue!4449 0))(
  ( (FloatLiteralValue!8898 (text!31588 List!27015)) (TokenValueExt!4448 (__x!17958 Int)) (Broken!22245 (value!135973 List!27015)) (Object!4542) (End!4449) (Def!4449) (Underscore!4449) (Match!4449) (Else!4449) (Error!4449) (Case!4449) (If!4449) (Extends!4449) (Abstract!4449) (Class!4449) (Val!4449) (DelimiterValue!8898 (del!4509 List!27015)) (KeywordValue!4455 (value!135974 List!27015)) (CommentValue!8898 (value!135975 List!27015)) (WhitespaceValue!8898 (value!135976 List!27015)) (IndentationValue!4449 (value!135977 List!27015)) (String!29348) (Int32!4449) (Broken!22246 (value!135978 List!27015)) (Boolean!4450) (Unit!39873) (OperatorValue!4452 (op!4509 List!27015)) (IdentifierValue!8898 (value!135979 List!27015)) (IdentifierValue!8899 (value!135980 List!27015)) (WhitespaceValue!8899 (value!135981 List!27015)) (True!8898) (False!8898) (Broken!22247 (value!135982 List!27015)) (Broken!22248 (value!135983 List!27015)) (True!8899) (RightBrace!4449) (RightBracket!4449) (Colon!4449) (Null!4449) (Comma!4449) (LeftBracket!4449) (False!8899) (LeftBrace!4449) (ImaginaryLiteralValue!4449 (text!31589 List!27015)) (StringLiteralValue!13347 (value!135984 List!27015)) (EOFValue!4449 (value!135985 List!27015)) (IdentValue!4449 (value!135986 List!27015)) (DelimiterValue!8899 (value!135987 List!27015)) (DedentValue!4449 (value!135988 List!27015)) (NewLineValue!4449 (value!135989 List!27015)) (IntegerValue!13347 (value!135990 (_ BitVec 32)) (text!31590 List!27015)) (IntegerValue!13348 (value!135991 Int) (text!31591 List!27015)) (Times!4449) (Or!4449) (Equal!4449) (Minus!4449) (Broken!22249 (value!135992 List!27015)) (And!4449) (Div!4449) (LessEqual!4449) (Mod!4449) (Concat!11084) (Not!4449) (Plus!4449) (SpaceValue!4449 (value!135993 List!27015)) (IntegerValue!13349 (value!135994 Int) (text!31592 List!27015)) (StringLiteralValue!13348 (text!31593 List!27015)) (FloatLiteralValue!8899 (text!31594 List!27015)) (BytesLiteralValue!4449 (value!135995 List!27015)) (CommentValue!8899 (value!135996 List!27015)) (StringLiteralValue!13349 (value!135997 List!27015)) (ErrorTokenValue!4449 (msg!4510 List!27015)) )
))
(declare-datatypes ((C!13416 0))(
  ( (C!13417 (val!7756 Int)) )
))
(declare-datatypes ((List!27016 0))(
  ( (Nil!26922) (Cons!26922 (h!32323 C!13416) (t!202014 List!27016)) )
))
(declare-datatypes ((IArray!17449 0))(
  ( (IArray!17450 (innerList!8782 List!27016)) )
))
(declare-datatypes ((Conc!8722 0))(
  ( (Node!8722 (left!20430 Conc!8722) (right!20760 Conc!8722) (csize!17674 Int) (cheight!8933 Int)) (Leaf!12851 (xs!11664 IArray!17449) (csize!17675 Int)) (Empty!8722) )
))
(declare-datatypes ((BalanceConc!17172 0))(
  ( (BalanceConc!17173 (c!359772 Conc!8722)) )
))
(declare-datatypes ((Regex!6635 0))(
  ( (ElementMatch!6635 (c!359773 C!13416)) (Concat!11085 (regOne!13782 Regex!6635) (regTwo!13782 Regex!6635)) (EmptyExpr!6635) (Star!6635 (reg!6964 Regex!6635)) (EmptyLang!6635) (Union!6635 (regOne!13783 Regex!6635) (regTwo!13783 Regex!6635)) )
))
(declare-datatypes ((String!29349 0))(
  ( (String!29350 (value!135998 String)) )
))
(declare-datatypes ((TokenValueInjection!8438 0))(
  ( (TokenValueInjection!8439 (toValue!6041 Int) (toChars!5900 Int)) )
))
(declare-datatypes ((Rule!8374 0))(
  ( (Rule!8375 (regex!4287 Regex!6635) (tag!4777 String!29349) (isSeparator!4287 Bool) (transformation!4287 TokenValueInjection!8438)) )
))
(declare-datatypes ((List!27017 0))(
  ( (Nil!26923) (Cons!26923 (h!32324 Rule!8374) (t!202015 List!27017)) )
))
(declare-fun rules!1750 () List!27017)

(declare-fun inv!36463 (String!29349) Bool)

(declare-fun inv!36466 (TokenValueInjection!8438) Bool)

(assert (=> b!2265234 (= e!1450670 (and tp!716725 (inv!36463 (tag!4777 (h!32324 rules!1750))) (inv!36466 (transformation!4287 (h!32324 rules!1750))) e!1450667))))

(declare-fun b!2265235 () Bool)

(declare-fun e!1450662 () Bool)

(declare-datatypes ((Token!8052 0))(
  ( (Token!8053 (value!135999 TokenValue!4449) (rule!6601 Rule!8374) (size!21109 Int) (originalCharacters!5057 List!27016)) )
))
(declare-datatypes ((List!27018 0))(
  ( (Nil!26924) (Cons!26924 (h!32325 Token!8052) (t!202016 List!27018)) )
))
(declare-fun tokens!456 () List!27018)

(declare-fun r!2363 () Rule!8374)

(declare-fun head!4872 (List!27018) Token!8052)

(assert (=> b!2265235 (= e!1450662 (= (rule!6601 (head!4872 tokens!456)) r!2363))))

(declare-fun e!1450649 () Bool)

(declare-fun e!1450672 () Bool)

(declare-fun tp!716720 () Bool)

(declare-fun b!2265236 () Bool)

(assert (=> b!2265236 (= e!1450672 (and tp!716720 (inv!36463 (tag!4777 (rule!6601 (h!32325 tokens!456)))) (inv!36466 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) e!1450649))))

(declare-fun b!2265237 () Bool)

(declare-fun res!968424 () Bool)

(declare-fun e!1450674 () Bool)

(assert (=> b!2265237 (=> (not res!968424) (not e!1450674))))

(declare-datatypes ((LexerInterface!3884 0))(
  ( (LexerInterfaceExt!3881 (__x!17959 Int)) (Lexer!3882) )
))
(declare-fun thiss!16613 () LexerInterface!3884)

(declare-fun rulesInvariant!3386 (LexerInterface!3884 List!27017) Bool)

(assert (=> b!2265237 (= res!968424 (rulesInvariant!3386 thiss!16613 rules!1750))))

(declare-fun b!2265238 () Bool)

(declare-fun e!1450663 () Bool)

(assert (=> b!2265238 (= e!1450674 e!1450663)))

(declare-fun res!968430 () Bool)

(assert (=> b!2265238 (=> (not res!968430) (not e!1450663))))

(declare-datatypes ((IArray!17451 0))(
  ( (IArray!17452 (innerList!8783 List!27018)) )
))
(declare-datatypes ((Conc!8723 0))(
  ( (Node!8723 (left!20431 Conc!8723) (right!20761 Conc!8723) (csize!17676 Int) (cheight!8934 Int)) (Leaf!12852 (xs!11665 IArray!17451) (csize!17677 Int)) (Empty!8723) )
))
(declare-datatypes ((BalanceConc!17174 0))(
  ( (BalanceConc!17175 (c!359774 Conc!8723)) )
))
(declare-datatypes ((tuple2!26554 0))(
  ( (tuple2!26555 (_1!15787 BalanceConc!17174) (_2!15787 BalanceConc!17172)) )
))
(declare-fun lt!841895 () tuple2!26554)

(declare-fun suffix!886 () List!27016)

(declare-datatypes ((tuple2!26556 0))(
  ( (tuple2!26557 (_1!15788 List!27018) (_2!15788 List!27016)) )
))
(declare-fun list!10405 (BalanceConc!17174) List!27018)

(declare-fun list!10406 (BalanceConc!17172) List!27016)

(assert (=> b!2265238 (= res!968430 (= (tuple2!26557 (list!10405 (_1!15787 lt!841895)) (list!10406 (_2!15787 lt!841895))) (tuple2!26557 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27016)

(declare-fun lex!1723 (LexerInterface!3884 List!27017 BalanceConc!17172) tuple2!26554)

(declare-fun seqFromList!2991 (List!27016) BalanceConc!17172)

(assert (=> b!2265238 (= lt!841895 (lex!1723 thiss!16613 rules!1750 (seqFromList!2991 input!1722)))))

(assert (=> b!2265239 (= e!1450649 (and tp!716729 tp!716715))))

(declare-fun e!1450654 () Bool)

(declare-fun tp!716719 () Bool)

(declare-fun b!2265240 () Bool)

(declare-fun inv!21 (TokenValue!4449) Bool)

(assert (=> b!2265240 (= e!1450654 (and (inv!21 (value!135999 (h!32325 tokens!456))) e!1450672 tp!716719))))

(declare-fun b!2265241 () Bool)

(declare-fun res!968413 () Bool)

(assert (=> b!2265241 (=> (not res!968413) (not e!1450674))))

(declare-fun isEmpty!15229 (List!27017) Bool)

(assert (=> b!2265241 (= res!968413 (not (isEmpty!15229 rules!1750)))))

(declare-fun b!2265242 () Bool)

(declare-datatypes ((Unit!39874 0))(
  ( (Unit!39875) )
))
(declare-fun e!1450668 () Unit!39874)

(declare-fun Unit!39876 () Unit!39874)

(assert (=> b!2265242 (= e!1450668 Unit!39876)))

(declare-fun otherR!12 () Rule!8374)

(declare-fun lt!841884 () Unit!39874)

(declare-fun lemmaSameIndexThenSameElement!154 (List!27017 Rule!8374 Rule!8374) Unit!39874)

(assert (=> b!2265242 (= lt!841884 (lemmaSameIndexThenSameElement!154 rules!1750 r!2363 otherR!12))))

(assert (=> b!2265242 false))

(declare-fun e!1450655 () Bool)

(assert (=> b!2265243 (= e!1450655 (and tp!716724 tp!716722))))

(declare-fun b!2265244 () Bool)

(declare-fun e!1450657 () Bool)

(assert (=> b!2265244 (= e!1450663 e!1450657)))

(declare-fun res!968409 () Bool)

(assert (=> b!2265244 (=> (not res!968409) (not e!1450657))))

(declare-fun e!1450658 () Bool)

(assert (=> b!2265244 (= res!968409 e!1450658)))

(declare-fun res!968415 () Bool)

(assert (=> b!2265244 (=> res!968415 e!1450658)))

(declare-fun lt!841880 () Bool)

(assert (=> b!2265244 (= res!968415 lt!841880)))

(declare-fun isEmpty!15230 (List!27018) Bool)

(assert (=> b!2265244 (= lt!841880 (isEmpty!15230 tokens!456))))

(declare-fun b!2265245 () Bool)

(declare-fun e!1450677 () Bool)

(declare-fun lt!841889 () Int)

(declare-fun size!21110 (BalanceConc!17172) Int)

(declare-fun charsOf!2675 (Token!8052) BalanceConc!17172)

(assert (=> b!2265245 (= e!1450677 (<= lt!841889 (size!21110 (charsOf!2675 (head!4872 tokens!456)))))))

(declare-fun b!2265247 () Bool)

(declare-fun res!968416 () Bool)

(declare-fun e!1450664 () Bool)

(assert (=> b!2265247 (=> res!968416 e!1450664)))

(declare-fun lt!841876 () List!27016)

(declare-fun matchR!2896 (Regex!6635 List!27016) Bool)

(assert (=> b!2265247 (= res!968416 (not (matchR!2896 (regex!4287 r!2363) lt!841876)))))

(declare-fun b!2265248 () Bool)

(declare-fun res!968421 () Bool)

(declare-fun e!1450675 () Bool)

(assert (=> b!2265248 (=> res!968421 e!1450675)))

(assert (=> b!2265248 (= res!968421 e!1450677)))

(declare-fun res!968428 () Bool)

(assert (=> b!2265248 (=> (not res!968428) (not e!1450677))))

(declare-fun size!21111 (List!27018) Int)

(assert (=> b!2265248 (= res!968428 (> (size!21111 tokens!456) 0))))

(declare-fun b!2265249 () Bool)

(declare-fun res!968408 () Bool)

(assert (=> b!2265249 (=> (not res!968408) (not e!1450657))))

(declare-fun otherP!12 () List!27016)

(declare-fun isPrefix!2277 (List!27016 List!27016) Bool)

(assert (=> b!2265249 (= res!968408 (isPrefix!2277 otherP!12 input!1722))))

(declare-fun b!2265250 () Bool)

(declare-fun e!1450656 () Bool)

(assert (=> b!2265250 (= e!1450656 e!1450675)))

(declare-fun res!968410 () Bool)

(assert (=> b!2265250 (=> res!968410 e!1450675)))

(declare-fun lt!841873 () Int)

(declare-fun lt!841879 () Int)

(assert (=> b!2265250 (= res!968410 (< lt!841873 lt!841879))))

(assert (=> b!2265250 (not (matchR!2896 (regex!4287 otherR!12) otherP!12))))

(declare-fun lt!841892 () Unit!39874)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!284 (LexerInterface!3884 List!27017 Rule!8374 List!27016 List!27016 List!27016 Rule!8374) Unit!39874)

(assert (=> b!2265250 (= lt!841892 (lemmaMaxPrefixOutputsMaxPrefix!284 thiss!16613 rules!1750 r!2363 lt!841876 input!1722 otherP!12 otherR!12))))

(declare-fun tp!716727 () Bool)

(declare-fun b!2265251 () Bool)

(declare-fun e!1450671 () Bool)

(assert (=> b!2265251 (= e!1450671 (and tp!716727 (inv!36463 (tag!4777 otherR!12)) (inv!36466 (transformation!4287 otherR!12)) e!1450655))))

(declare-fun b!2265252 () Bool)

(declare-fun e!1450673 () Bool)

(assert (=> b!2265252 (= e!1450673 (not (matchR!2896 (regex!4287 r!2363) (list!10406 (charsOf!2675 (head!4872 tokens!456))))))))

(declare-fun b!2265253 () Bool)

(declare-fun e!1450679 () Bool)

(declare-fun tp_is_empty!10491 () Bool)

(declare-fun tp!716728 () Bool)

(assert (=> b!2265253 (= e!1450679 (and tp_is_empty!10491 tp!716728))))

(declare-fun b!2265254 () Bool)

(declare-fun e!1450651 () Bool)

(declare-fun e!1450678 () Bool)

(assert (=> b!2265254 (= e!1450651 e!1450678)))

(declare-fun res!968412 () Bool)

(assert (=> b!2265254 (=> res!968412 e!1450678)))

(get-info :version)

(assert (=> b!2265254 (= res!968412 ((_ is Nil!26924) tokens!456))))

(declare-fun lt!841896 () Unit!39874)

(assert (=> b!2265254 (= lt!841896 e!1450668)))

(declare-fun c!359771 () Bool)

(assert (=> b!2265254 (= c!359771 (= lt!841879 lt!841873))))

(declare-fun b!2265255 () Bool)

(declare-fun e!1450660 () Bool)

(declare-fun tp!716721 () Bool)

(assert (=> b!2265255 (= e!1450660 (and tp_is_empty!10491 tp!716721))))

(declare-fun b!2265256 () Bool)

(declare-fun e!1450650 () Bool)

(assert (=> b!2265256 (= e!1450650 e!1450651)))

(declare-fun res!968426 () Bool)

(assert (=> b!2265256 (=> res!968426 e!1450651)))

(assert (=> b!2265256 (= res!968426 (> lt!841879 lt!841873))))

(declare-fun getIndex!308 (List!27017 Rule!8374) Int)

(assert (=> b!2265256 (= lt!841873 (getIndex!308 rules!1750 otherR!12))))

(assert (=> b!2265256 (= lt!841879 (getIndex!308 rules!1750 r!2363))))

(declare-fun ruleValid!1379 (LexerInterface!3884 Rule!8374) Bool)

(assert (=> b!2265256 (ruleValid!1379 thiss!16613 otherR!12)))

(declare-fun lt!841883 () Unit!39874)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!786 (LexerInterface!3884 Rule!8374 List!27017) Unit!39874)

(assert (=> b!2265256 (= lt!841883 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!786 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2265257 () Bool)

(declare-fun res!968418 () Bool)

(assert (=> b!2265257 (=> (not res!968418) (not e!1450674))))

(declare-fun contains!4645 (List!27017 Rule!8374) Bool)

(assert (=> b!2265257 (= res!968418 (contains!4645 rules!1750 otherR!12))))

(declare-fun b!2265258 () Bool)

(declare-fun e!1450680 () Bool)

(declare-fun tp!716716 () Bool)

(assert (=> b!2265258 (= e!1450680 (and e!1450670 tp!716716))))

(declare-fun b!2265259 () Bool)

(declare-fun validRegex!2484 (Regex!6635) Bool)

(assert (=> b!2265259 (= e!1450675 (validRegex!2484 (regex!4287 otherR!12)))))

(declare-fun b!2265260 () Bool)

(declare-fun tp!716717 () Bool)

(declare-fun e!1450653 () Bool)

(declare-fun inv!36467 (Token!8052) Bool)

(assert (=> b!2265260 (= e!1450653 (and (inv!36467 (h!32325 tokens!456)) e!1450654 tp!716717))))

(declare-fun b!2265261 () Bool)

(declare-fun size!21112 (List!27016) Int)

(assert (=> b!2265261 (= e!1450658 (<= (size!21110 (charsOf!2675 (head!4872 tokens!456))) (size!21112 otherP!12)))))

(declare-fun e!1450661 () Bool)

(declare-fun b!2265262 () Bool)

(declare-fun tp!716718 () Bool)

(declare-fun e!1450652 () Bool)

(assert (=> b!2265262 (= e!1450661 (and tp!716718 (inv!36463 (tag!4777 r!2363)) (inv!36466 (transformation!4287 r!2363)) e!1450652))))

(declare-fun b!2265263 () Bool)

(declare-fun res!968420 () Bool)

(assert (=> b!2265263 (=> (not res!968420) (not e!1450657))))

(assert (=> b!2265263 (= res!968420 (not (= r!2363 otherR!12)))))

(declare-fun b!2265264 () Bool)

(declare-fun res!968429 () Bool)

(assert (=> b!2265264 (=> (not res!968429) (not e!1450674))))

(assert (=> b!2265264 (= res!968429 (contains!4645 rules!1750 r!2363))))

(declare-fun b!2265265 () Bool)

(assert (=> b!2265265 (= e!1450657 (not e!1450650))))

(declare-fun res!968422 () Bool)

(assert (=> b!2265265 (=> res!968422 e!1450650)))

(assert (=> b!2265265 (= res!968422 e!1450673)))

(declare-fun res!968427 () Bool)

(assert (=> b!2265265 (=> (not res!968427) (not e!1450673))))

(assert (=> b!2265265 (= res!968427 (not lt!841880))))

(assert (=> b!2265265 (ruleValid!1379 thiss!16613 r!2363)))

(declare-fun lt!841882 () Unit!39874)

(assert (=> b!2265265 (= lt!841882 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!786 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2265266 (= e!1450652 (and tp!716714 tp!716731))))

(declare-fun b!2265267 () Bool)

(declare-fun res!968425 () Bool)

(assert (=> b!2265267 (=> (not res!968425) (not e!1450657))))

(assert (=> b!2265267 (= res!968425 e!1450662)))

(declare-fun res!968417 () Bool)

(assert (=> b!2265267 (=> res!968417 e!1450662)))

(assert (=> b!2265267 (= res!968417 lt!841880)))

(declare-fun b!2265268 () Bool)

(declare-fun e!1450669 () Bool)

(assert (=> b!2265268 (= e!1450669 e!1450664)))

(declare-fun res!968414 () Bool)

(assert (=> b!2265268 (=> res!968414 e!1450664)))

(assert (=> b!2265268 (= res!968414 (not (isPrefix!2277 lt!841876 input!1722)))))

(declare-datatypes ((tuple2!26558 0))(
  ( (tuple2!26559 (_1!15789 Token!8052) (_2!15789 List!27016)) )
))
(declare-datatypes ((Option!5265 0))(
  ( (None!5264) (Some!5264 (v!30302 tuple2!26558)) )
))
(declare-fun lt!841888 () Option!5265)

(declare-fun lt!841887 () Token!8052)

(declare-fun lt!841886 () tuple2!26558)

(assert (=> b!2265268 (= lt!841888 (Some!5264 (tuple2!26559 lt!841887 (_2!15789 lt!841886))))))

(declare-fun maxPrefixOneRule!1352 (LexerInterface!3884 Rule!8374 List!27016) Option!5265)

(assert (=> b!2265268 (= lt!841888 (maxPrefixOneRule!1352 thiss!16613 r!2363 input!1722))))

(declare-fun lt!841894 () Int)

(declare-fun lt!841881 () BalanceConc!17172)

(declare-fun apply!6591 (TokenValueInjection!8438 BalanceConc!17172) TokenValue!4449)

(assert (=> b!2265268 (= lt!841887 (Token!8053 (apply!6591 (transformation!4287 r!2363) lt!841881) r!2363 lt!841894 lt!841876))))

(assert (=> b!2265268 (= lt!841881 (seqFromList!2991 lt!841876))))

(declare-fun lt!841885 () Unit!39874)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!577 (LexerInterface!3884 List!27017 List!27016 List!27016 List!27016 Rule!8374) Unit!39874)

(assert (=> b!2265268 (= lt!841885 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!577 thiss!16613 rules!1750 lt!841876 input!1722 (_2!15789 lt!841886) r!2363))))

(declare-fun b!2265269 () Bool)

(assert (=> b!2265269 (= e!1450678 e!1450669)))

(declare-fun res!968423 () Bool)

(assert (=> b!2265269 (=> res!968423 e!1450669)))

(assert (=> b!2265269 (= res!968423 (<= lt!841889 lt!841894))))

(assert (=> b!2265269 (= lt!841894 (size!21112 lt!841876))))

(assert (=> b!2265269 (= lt!841889 (size!21112 otherP!12))))

(declare-fun lt!841891 () List!27016)

(assert (=> b!2265269 (= (_2!15789 lt!841886) lt!841891)))

(declare-fun lt!841874 () Unit!39874)

(declare-fun lemmaSamePrefixThenSameSuffix!1006 (List!27016 List!27016 List!27016 List!27016 List!27016) Unit!39874)

(assert (=> b!2265269 (= lt!841874 (lemmaSamePrefixThenSameSuffix!1006 lt!841876 (_2!15789 lt!841886) lt!841876 lt!841891 input!1722))))

(declare-fun getSuffix!1088 (List!27016 List!27016) List!27016)

(assert (=> b!2265269 (= lt!841891 (getSuffix!1088 input!1722 lt!841876))))

(declare-fun ++!6559 (List!27016 List!27016) List!27016)

(assert (=> b!2265269 (isPrefix!2277 lt!841876 (++!6559 lt!841876 (_2!15789 lt!841886)))))

(declare-fun lt!841893 () Unit!39874)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1502 (List!27016 List!27016) Unit!39874)

(assert (=> b!2265269 (= lt!841893 (lemmaConcatTwoListThenFirstIsPrefix!1502 lt!841876 (_2!15789 lt!841886)))))

(assert (=> b!2265269 (= lt!841876 (list!10406 (charsOf!2675 (h!32325 tokens!456))))))

(declare-fun lt!841875 () Option!5265)

(declare-fun get!8124 (Option!5265) tuple2!26558)

(assert (=> b!2265269 (= lt!841886 (get!8124 lt!841875))))

(declare-fun maxPrefix!2158 (LexerInterface!3884 List!27017 List!27016) Option!5265)

(assert (=> b!2265269 (= lt!841875 (maxPrefix!2158 thiss!16613 rules!1750 input!1722))))

(assert (=> b!2265270 (= e!1450667 (and tp!716730 tp!716723))))

(declare-fun res!968419 () Bool)

(assert (=> start!221244 (=> (not res!968419) (not e!1450674))))

(assert (=> start!221244 (= res!968419 ((_ is Lexer!3882) thiss!16613))))

(assert (=> start!221244 e!1450674))

(assert (=> start!221244 true))

(declare-fun e!1450666 () Bool)

(assert (=> start!221244 e!1450666))

(assert (=> start!221244 e!1450671))

(assert (=> start!221244 e!1450679))

(assert (=> start!221244 e!1450660))

(assert (=> start!221244 e!1450680))

(assert (=> start!221244 e!1450661))

(assert (=> start!221244 e!1450653))

(declare-fun b!2265246 () Bool)

(assert (=> b!2265246 (= e!1450664 e!1450656)))

(declare-fun res!968411 () Bool)

(assert (=> b!2265246 (=> res!968411 e!1450656)))

(declare-fun lt!841890 () Option!5265)

(assert (=> b!2265246 (= res!968411 (or (not (= lt!841888 lt!841890)) (not (= lt!841875 lt!841890))))))

(assert (=> b!2265246 (= lt!841890 (Some!5264 (tuple2!26559 lt!841887 lt!841891)))))

(assert (=> b!2265246 (isPrefix!2277 input!1722 input!1722)))

(declare-fun lt!841878 () Unit!39874)

(declare-fun lemmaIsPrefixRefl!1461 (List!27016 List!27016) Unit!39874)

(assert (=> b!2265246 (= lt!841878 (lemmaIsPrefixRefl!1461 input!1722 input!1722))))

(declare-fun lt!841877 () Unit!39874)

(declare-fun lemmaSemiInverse!1034 (TokenValueInjection!8438 BalanceConc!17172) Unit!39874)

(assert (=> b!2265246 (= lt!841877 (lemmaSemiInverse!1034 (transformation!4287 r!2363) lt!841881))))

(declare-fun b!2265271 () Bool)

(declare-fun tp!716726 () Bool)

(assert (=> b!2265271 (= e!1450666 (and tp_is_empty!10491 tp!716726))))

(declare-fun b!2265272 () Bool)

(declare-fun Unit!39877 () Unit!39874)

(assert (=> b!2265272 (= e!1450668 Unit!39877)))

(assert (= (and start!221244 res!968419) b!2265241))

(assert (= (and b!2265241 res!968413) b!2265237))

(assert (= (and b!2265237 res!968424) b!2265264))

(assert (= (and b!2265264 res!968429) b!2265257))

(assert (= (and b!2265257 res!968418) b!2265238))

(assert (= (and b!2265238 res!968430) b!2265244))

(assert (= (and b!2265244 (not res!968415)) b!2265261))

(assert (= (and b!2265244 res!968409) b!2265267))

(assert (= (and b!2265267 (not res!968417)) b!2265235))

(assert (= (and b!2265267 res!968425) b!2265249))

(assert (= (and b!2265249 res!968408) b!2265263))

(assert (= (and b!2265263 res!968420) b!2265265))

(assert (= (and b!2265265 res!968427) b!2265252))

(assert (= (and b!2265265 (not res!968422)) b!2265256))

(assert (= (and b!2265256 (not res!968426)) b!2265254))

(assert (= (and b!2265254 c!359771) b!2265242))

(assert (= (and b!2265254 (not c!359771)) b!2265272))

(assert (= (and b!2265254 (not res!968412)) b!2265269))

(assert (= (and b!2265269 (not res!968423)) b!2265268))

(assert (= (and b!2265268 (not res!968414)) b!2265247))

(assert (= (and b!2265247 (not res!968416)) b!2265246))

(assert (= (and b!2265246 (not res!968411)) b!2265250))

(assert (= (and b!2265250 (not res!968410)) b!2265248))

(assert (= (and b!2265248 res!968428) b!2265245))

(assert (= (and b!2265248 (not res!968421)) b!2265259))

(assert (= (and start!221244 ((_ is Cons!26922) input!1722)) b!2265271))

(assert (= b!2265251 b!2265243))

(assert (= start!221244 b!2265251))

(assert (= (and start!221244 ((_ is Cons!26922) suffix!886)) b!2265253))

(assert (= (and start!221244 ((_ is Cons!26922) otherP!12)) b!2265255))

(assert (= b!2265234 b!2265270))

(assert (= b!2265258 b!2265234))

(assert (= (and start!221244 ((_ is Cons!26923) rules!1750)) b!2265258))

(assert (= b!2265262 b!2265266))

(assert (= start!221244 b!2265262))

(assert (= b!2265236 b!2265239))

(assert (= b!2265240 b!2265236))

(assert (= b!2265260 b!2265240))

(assert (= (and start!221244 ((_ is Cons!26924) tokens!456)) b!2265260))

(declare-fun m!2694627 () Bool)

(assert (=> b!2265240 m!2694627))

(declare-fun m!2694629 () Bool)

(assert (=> b!2265245 m!2694629))

(assert (=> b!2265245 m!2694629))

(declare-fun m!2694631 () Bool)

(assert (=> b!2265245 m!2694631))

(assert (=> b!2265245 m!2694631))

(declare-fun m!2694633 () Bool)

(assert (=> b!2265245 m!2694633))

(declare-fun m!2694635 () Bool)

(assert (=> b!2265257 m!2694635))

(declare-fun m!2694637 () Bool)

(assert (=> b!2265251 m!2694637))

(declare-fun m!2694639 () Bool)

(assert (=> b!2265251 m!2694639))

(declare-fun m!2694641 () Bool)

(assert (=> b!2265244 m!2694641))

(declare-fun m!2694643 () Bool)

(assert (=> b!2265237 m!2694643))

(declare-fun m!2694645 () Bool)

(assert (=> b!2265242 m!2694645))

(declare-fun m!2694647 () Bool)

(assert (=> b!2265236 m!2694647))

(declare-fun m!2694649 () Bool)

(assert (=> b!2265236 m!2694649))

(declare-fun m!2694651 () Bool)

(assert (=> b!2265250 m!2694651))

(declare-fun m!2694653 () Bool)

(assert (=> b!2265250 m!2694653))

(declare-fun m!2694655 () Bool)

(assert (=> b!2265234 m!2694655))

(declare-fun m!2694657 () Bool)

(assert (=> b!2265234 m!2694657))

(declare-fun m!2694659 () Bool)

(assert (=> b!2265269 m!2694659))

(declare-fun m!2694661 () Bool)

(assert (=> b!2265269 m!2694661))

(declare-fun m!2694663 () Bool)

(assert (=> b!2265269 m!2694663))

(declare-fun m!2694665 () Bool)

(assert (=> b!2265269 m!2694665))

(declare-fun m!2694667 () Bool)

(assert (=> b!2265269 m!2694667))

(declare-fun m!2694669 () Bool)

(assert (=> b!2265269 m!2694669))

(declare-fun m!2694671 () Bool)

(assert (=> b!2265269 m!2694671))

(declare-fun m!2694673 () Bool)

(assert (=> b!2265269 m!2694673))

(declare-fun m!2694675 () Bool)

(assert (=> b!2265269 m!2694675))

(declare-fun m!2694677 () Bool)

(assert (=> b!2265269 m!2694677))

(assert (=> b!2265269 m!2694675))

(assert (=> b!2265269 m!2694661))

(declare-fun m!2694679 () Bool)

(assert (=> b!2265269 m!2694679))

(declare-fun m!2694681 () Bool)

(assert (=> b!2265256 m!2694681))

(declare-fun m!2694683 () Bool)

(assert (=> b!2265256 m!2694683))

(declare-fun m!2694685 () Bool)

(assert (=> b!2265256 m!2694685))

(declare-fun m!2694687 () Bool)

(assert (=> b!2265256 m!2694687))

(declare-fun m!2694689 () Bool)

(assert (=> b!2265260 m!2694689))

(assert (=> b!2265252 m!2694629))

(assert (=> b!2265252 m!2694629))

(assert (=> b!2265252 m!2694631))

(assert (=> b!2265252 m!2694631))

(declare-fun m!2694691 () Bool)

(assert (=> b!2265252 m!2694691))

(assert (=> b!2265252 m!2694691))

(declare-fun m!2694693 () Bool)

(assert (=> b!2265252 m!2694693))

(declare-fun m!2694695 () Bool)

(assert (=> b!2265249 m!2694695))

(declare-fun m!2694697 () Bool)

(assert (=> b!2265259 m!2694697))

(assert (=> b!2265235 m!2694629))

(declare-fun m!2694699 () Bool)

(assert (=> b!2265262 m!2694699))

(declare-fun m!2694701 () Bool)

(assert (=> b!2265262 m!2694701))

(declare-fun m!2694703 () Bool)

(assert (=> b!2265238 m!2694703))

(declare-fun m!2694705 () Bool)

(assert (=> b!2265238 m!2694705))

(declare-fun m!2694707 () Bool)

(assert (=> b!2265238 m!2694707))

(assert (=> b!2265238 m!2694707))

(declare-fun m!2694709 () Bool)

(assert (=> b!2265238 m!2694709))

(declare-fun m!2694711 () Bool)

(assert (=> b!2265265 m!2694711))

(declare-fun m!2694713 () Bool)

(assert (=> b!2265265 m!2694713))

(declare-fun m!2694715 () Bool)

(assert (=> b!2265268 m!2694715))

(declare-fun m!2694717 () Bool)

(assert (=> b!2265268 m!2694717))

(declare-fun m!2694719 () Bool)

(assert (=> b!2265268 m!2694719))

(declare-fun m!2694721 () Bool)

(assert (=> b!2265268 m!2694721))

(declare-fun m!2694723 () Bool)

(assert (=> b!2265268 m!2694723))

(declare-fun m!2694725 () Bool)

(assert (=> b!2265248 m!2694725))

(declare-fun m!2694727 () Bool)

(assert (=> b!2265247 m!2694727))

(assert (=> b!2265261 m!2694629))

(assert (=> b!2265261 m!2694629))

(assert (=> b!2265261 m!2694631))

(assert (=> b!2265261 m!2694631))

(assert (=> b!2265261 m!2694633))

(assert (=> b!2265261 m!2694669))

(declare-fun m!2694729 () Bool)

(assert (=> b!2265241 m!2694729))

(declare-fun m!2694731 () Bool)

(assert (=> b!2265264 m!2694731))

(declare-fun m!2694733 () Bool)

(assert (=> b!2265246 m!2694733))

(declare-fun m!2694735 () Bool)

(assert (=> b!2265246 m!2694735))

(declare-fun m!2694737 () Bool)

(assert (=> b!2265246 m!2694737))

(check-sat (not b_next!67809) (not b!2265248) (not b!2265271) (not b!2265261) b_and!178187 (not b!2265241) (not b!2265260) (not b!2265234) (not b!2265251) (not b!2265265) (not b!2265256) (not b!2265257) (not b!2265242) (not b_next!67805) (not b!2265238) (not b!2265262) (not b!2265269) (not b!2265268) (not b!2265245) (not b!2265258) b_and!178195 (not b!2265253) (not b!2265246) (not b!2265244) (not b!2265247) (not b_next!67813) (not b!2265259) b_and!178193 b_and!178197 (not b_next!67811) (not b!2265249) (not b_next!67815) (not b!2265240) (not b_next!67817) (not b!2265252) (not b!2265236) (not b!2265255) b_and!178199 (not b_next!67807) b_and!178191 (not b!2265264) (not b!2265235) b_and!178185 (not b_next!67819) tp_is_empty!10491 (not b!2265250) (not b!2265237) b_and!178189)
(check-sat (not b_next!67809) (not b_next!67805) b_and!178195 b_and!178187 (not b_next!67813) b_and!178193 (not b_next!67817) b_and!178191 b_and!178189 b_and!178197 (not b_next!67811) (not b_next!67815) b_and!178199 (not b_next!67807) b_and!178185 (not b_next!67819))
(get-model)

(declare-fun d!670785 () Bool)

(declare-fun e!1450699 () Bool)

(assert (=> d!670785 e!1450699))

(declare-fun c!359782 () Bool)

(assert (=> d!670785 (= c!359782 ((_ is EmptyExpr!6635) (regex!4287 r!2363)))))

(declare-fun lt!841899 () Bool)

(declare-fun e!1450697 () Bool)

(assert (=> d!670785 (= lt!841899 e!1450697)))

(declare-fun c!359781 () Bool)

(declare-fun isEmpty!15232 (List!27016) Bool)

(assert (=> d!670785 (= c!359781 (isEmpty!15232 lt!841876))))

(assert (=> d!670785 (validRegex!2484 (regex!4287 r!2363))))

(assert (=> d!670785 (= (matchR!2896 (regex!4287 r!2363) lt!841876) lt!841899)))

(declare-fun b!2265301 () Bool)

(declare-fun e!1450700 () Bool)

(declare-fun e!1450698 () Bool)

(assert (=> b!2265301 (= e!1450700 e!1450698)))

(declare-fun res!968463 () Bool)

(assert (=> b!2265301 (=> (not res!968463) (not e!1450698))))

(assert (=> b!2265301 (= res!968463 (not lt!841899))))

(declare-fun b!2265302 () Bool)

(declare-fun call!135951 () Bool)

(assert (=> b!2265302 (= e!1450699 (= lt!841899 call!135951))))

(declare-fun b!2265303 () Bool)

(declare-fun derivativeStep!1486 (Regex!6635 C!13416) Regex!6635)

(declare-fun head!4874 (List!27016) C!13416)

(declare-fun tail!3267 (List!27016) List!27016)

(assert (=> b!2265303 (= e!1450697 (matchR!2896 (derivativeStep!1486 (regex!4287 r!2363) (head!4874 lt!841876)) (tail!3267 lt!841876)))))

(declare-fun b!2265304 () Bool)

(declare-fun res!968466 () Bool)

(assert (=> b!2265304 (=> res!968466 e!1450700)))

(assert (=> b!2265304 (= res!968466 (not ((_ is ElementMatch!6635) (regex!4287 r!2363))))))

(declare-fun e!1450701 () Bool)

(assert (=> b!2265304 (= e!1450701 e!1450700)))

(declare-fun b!2265305 () Bool)

(declare-fun nullable!1824 (Regex!6635) Bool)

(assert (=> b!2265305 (= e!1450697 (nullable!1824 (regex!4287 r!2363)))))

(declare-fun b!2265306 () Bool)

(assert (=> b!2265306 (= e!1450701 (not lt!841899))))

(declare-fun b!2265307 () Bool)

(declare-fun e!1450702 () Bool)

(assert (=> b!2265307 (= e!1450698 e!1450702)))

(declare-fun res!968461 () Bool)

(assert (=> b!2265307 (=> res!968461 e!1450702)))

(assert (=> b!2265307 (= res!968461 call!135951)))

(declare-fun bm!135946 () Bool)

(assert (=> bm!135946 (= call!135951 (isEmpty!15232 lt!841876))))

(declare-fun b!2265308 () Bool)

(declare-fun res!968462 () Bool)

(assert (=> b!2265308 (=> res!968462 e!1450700)))

(declare-fun e!1450696 () Bool)

(assert (=> b!2265308 (= res!968462 e!1450696)))

(declare-fun res!968465 () Bool)

(assert (=> b!2265308 (=> (not res!968465) (not e!1450696))))

(assert (=> b!2265308 (= res!968465 lt!841899)))

(declare-fun b!2265309 () Bool)

(declare-fun res!968467 () Bool)

(assert (=> b!2265309 (=> (not res!968467) (not e!1450696))))

(assert (=> b!2265309 (= res!968467 (isEmpty!15232 (tail!3267 lt!841876)))))

(declare-fun b!2265310 () Bool)

(declare-fun res!968464 () Bool)

(assert (=> b!2265310 (=> (not res!968464) (not e!1450696))))

(assert (=> b!2265310 (= res!968464 (not call!135951))))

(declare-fun b!2265311 () Bool)

(declare-fun res!968460 () Bool)

(assert (=> b!2265311 (=> res!968460 e!1450702)))

(assert (=> b!2265311 (= res!968460 (not (isEmpty!15232 (tail!3267 lt!841876))))))

(declare-fun b!2265312 () Bool)

(assert (=> b!2265312 (= e!1450696 (= (head!4874 lt!841876) (c!359773 (regex!4287 r!2363))))))

(declare-fun b!2265313 () Bool)

(assert (=> b!2265313 (= e!1450699 e!1450701)))

(declare-fun c!359783 () Bool)

(assert (=> b!2265313 (= c!359783 ((_ is EmptyLang!6635) (regex!4287 r!2363)))))

(declare-fun b!2265314 () Bool)

(assert (=> b!2265314 (= e!1450702 (not (= (head!4874 lt!841876) (c!359773 (regex!4287 r!2363)))))))

(assert (= (and d!670785 c!359781) b!2265305))

(assert (= (and d!670785 (not c!359781)) b!2265303))

(assert (= (and d!670785 c!359782) b!2265302))

(assert (= (and d!670785 (not c!359782)) b!2265313))

(assert (= (and b!2265313 c!359783) b!2265306))

(assert (= (and b!2265313 (not c!359783)) b!2265304))

(assert (= (and b!2265304 (not res!968466)) b!2265308))

(assert (= (and b!2265308 res!968465) b!2265310))

(assert (= (and b!2265310 res!968464) b!2265309))

(assert (= (and b!2265309 res!968467) b!2265312))

(assert (= (and b!2265308 (not res!968462)) b!2265301))

(assert (= (and b!2265301 res!968463) b!2265307))

(assert (= (and b!2265307 (not res!968461)) b!2265311))

(assert (= (and b!2265311 (not res!968460)) b!2265314))

(assert (= (or b!2265302 b!2265307 b!2265310) bm!135946))

(declare-fun m!2694739 () Bool)

(assert (=> b!2265311 m!2694739))

(assert (=> b!2265311 m!2694739))

(declare-fun m!2694741 () Bool)

(assert (=> b!2265311 m!2694741))

(declare-fun m!2694743 () Bool)

(assert (=> b!2265314 m!2694743))

(assert (=> b!2265309 m!2694739))

(assert (=> b!2265309 m!2694739))

(assert (=> b!2265309 m!2694741))

(declare-fun m!2694745 () Bool)

(assert (=> d!670785 m!2694745))

(declare-fun m!2694747 () Bool)

(assert (=> d!670785 m!2694747))

(assert (=> b!2265303 m!2694743))

(assert (=> b!2265303 m!2694743))

(declare-fun m!2694749 () Bool)

(assert (=> b!2265303 m!2694749))

(assert (=> b!2265303 m!2694739))

(assert (=> b!2265303 m!2694749))

(assert (=> b!2265303 m!2694739))

(declare-fun m!2694751 () Bool)

(assert (=> b!2265303 m!2694751))

(declare-fun m!2694753 () Bool)

(assert (=> b!2265305 m!2694753))

(assert (=> b!2265312 m!2694743))

(assert (=> bm!135946 m!2694745))

(assert (=> b!2265247 d!670785))

(declare-fun d!670791 () Bool)

(declare-fun fromListB!1335 (List!27016) BalanceConc!17172)

(assert (=> d!670791 (= (seqFromList!2991 lt!841876) (fromListB!1335 lt!841876))))

(declare-fun bs!455678 () Bool)

(assert (= bs!455678 d!670791))

(declare-fun m!2694755 () Bool)

(assert (=> bs!455678 m!2694755))

(assert (=> b!2265268 d!670791))

(declare-fun d!670793 () Bool)

(declare-fun dynLambda!11667 (Int BalanceConc!17172) TokenValue!4449)

(assert (=> d!670793 (= (apply!6591 (transformation!4287 r!2363) lt!841881) (dynLambda!11667 (toValue!6041 (transformation!4287 r!2363)) lt!841881))))

(declare-fun b_lambda!72217 () Bool)

(assert (=> (not b_lambda!72217) (not d!670793)))

(declare-fun t!202018 () Bool)

(declare-fun tb!134303 () Bool)

(assert (=> (and b!2265266 (= (toValue!6041 (transformation!4287 r!2363)) (toValue!6041 (transformation!4287 r!2363))) t!202018) tb!134303))

(declare-fun result!163738 () Bool)

(assert (=> tb!134303 (= result!163738 (inv!21 (dynLambda!11667 (toValue!6041 (transformation!4287 r!2363)) lt!841881)))))

(declare-fun m!2694757 () Bool)

(assert (=> tb!134303 m!2694757))

(assert (=> d!670793 t!202018))

(declare-fun b_and!178201 () Bool)

(assert (= b_and!178185 (and (=> t!202018 result!163738) b_and!178201)))

(declare-fun tb!134305 () Bool)

(declare-fun t!202020 () Bool)

(assert (=> (and b!2265243 (= (toValue!6041 (transformation!4287 otherR!12)) (toValue!6041 (transformation!4287 r!2363))) t!202020) tb!134305))

(declare-fun result!163742 () Bool)

(assert (= result!163742 result!163738))

(assert (=> d!670793 t!202020))

(declare-fun b_and!178203 () Bool)

(assert (= b_and!178189 (and (=> t!202020 result!163742) b_and!178203)))

(declare-fun t!202022 () Bool)

(declare-fun tb!134307 () Bool)

(assert (=> (and b!2265239 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toValue!6041 (transformation!4287 r!2363))) t!202022) tb!134307))

(declare-fun result!163744 () Bool)

(assert (= result!163744 result!163738))

(assert (=> d!670793 t!202022))

(declare-fun b_and!178205 () Bool)

(assert (= b_and!178193 (and (=> t!202022 result!163744) b_and!178205)))

(declare-fun t!202024 () Bool)

(declare-fun tb!134309 () Bool)

(assert (=> (and b!2265270 (= (toValue!6041 (transformation!4287 (h!32324 rules!1750))) (toValue!6041 (transformation!4287 r!2363))) t!202024) tb!134309))

(declare-fun result!163746 () Bool)

(assert (= result!163746 result!163738))

(assert (=> d!670793 t!202024))

(declare-fun b_and!178207 () Bool)

(assert (= b_and!178197 (and (=> t!202024 result!163746) b_and!178207)))

(declare-fun m!2694759 () Bool)

(assert (=> d!670793 m!2694759))

(assert (=> b!2265268 d!670793))

(declare-fun b!2265380 () Bool)

(declare-fun e!1450739 () Bool)

(assert (=> b!2265380 (= e!1450739 (isPrefix!2277 (tail!3267 lt!841876) (tail!3267 input!1722)))))

(declare-fun b!2265379 () Bool)

(declare-fun res!968506 () Bool)

(assert (=> b!2265379 (=> (not res!968506) (not e!1450739))))

(assert (=> b!2265379 (= res!968506 (= (head!4874 lt!841876) (head!4874 input!1722)))))

(declare-fun b!2265378 () Bool)

(declare-fun e!1450741 () Bool)

(assert (=> b!2265378 (= e!1450741 e!1450739)))

(declare-fun res!968508 () Bool)

(assert (=> b!2265378 (=> (not res!968508) (not e!1450739))))

(assert (=> b!2265378 (= res!968508 (not ((_ is Nil!26922) input!1722)))))

(declare-fun d!670795 () Bool)

(declare-fun e!1450740 () Bool)

(assert (=> d!670795 e!1450740))

(declare-fun res!968507 () Bool)

(assert (=> d!670795 (=> res!968507 e!1450740)))

(declare-fun lt!841908 () Bool)

(assert (=> d!670795 (= res!968507 (not lt!841908))))

(assert (=> d!670795 (= lt!841908 e!1450741)))

(declare-fun res!968509 () Bool)

(assert (=> d!670795 (=> res!968509 e!1450741)))

(assert (=> d!670795 (= res!968509 ((_ is Nil!26922) lt!841876))))

(assert (=> d!670795 (= (isPrefix!2277 lt!841876 input!1722) lt!841908)))

(declare-fun b!2265381 () Bool)

(assert (=> b!2265381 (= e!1450740 (>= (size!21112 input!1722) (size!21112 lt!841876)))))

(assert (= (and d!670795 (not res!968509)) b!2265378))

(assert (= (and b!2265378 res!968508) b!2265379))

(assert (= (and b!2265379 res!968506) b!2265380))

(assert (= (and d!670795 (not res!968507)) b!2265381))

(assert (=> b!2265380 m!2694739))

(declare-fun m!2694789 () Bool)

(assert (=> b!2265380 m!2694789))

(assert (=> b!2265380 m!2694739))

(assert (=> b!2265380 m!2694789))

(declare-fun m!2694791 () Bool)

(assert (=> b!2265380 m!2694791))

(assert (=> b!2265379 m!2694743))

(declare-fun m!2694793 () Bool)

(assert (=> b!2265379 m!2694793))

(declare-fun m!2694795 () Bool)

(assert (=> b!2265381 m!2694795))

(assert (=> b!2265381 m!2694665))

(assert (=> b!2265268 d!670795))

(declare-fun d!670803 () Bool)

(assert (=> d!670803 (= (maxPrefixOneRule!1352 thiss!16613 r!2363 input!1722) (Some!5264 (tuple2!26559 (Token!8053 (apply!6591 (transformation!4287 r!2363) (seqFromList!2991 lt!841876)) r!2363 (size!21112 lt!841876) lt!841876) (_2!15789 lt!841886))))))

(declare-fun lt!841928 () Unit!39874)

(declare-fun choose!13241 (LexerInterface!3884 List!27017 List!27016 List!27016 List!27016 Rule!8374) Unit!39874)

(assert (=> d!670803 (= lt!841928 (choose!13241 thiss!16613 rules!1750 lt!841876 input!1722 (_2!15789 lt!841886) r!2363))))

(assert (=> d!670803 (not (isEmpty!15229 rules!1750))))

(assert (=> d!670803 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!577 thiss!16613 rules!1750 lt!841876 input!1722 (_2!15789 lt!841886) r!2363) lt!841928)))

(declare-fun bs!455682 () Bool)

(assert (= bs!455682 d!670803))

(assert (=> bs!455682 m!2694723))

(assert (=> bs!455682 m!2694719))

(declare-fun m!2694827 () Bool)

(assert (=> bs!455682 m!2694827))

(assert (=> bs!455682 m!2694729))

(assert (=> bs!455682 m!2694665))

(assert (=> bs!455682 m!2694723))

(declare-fun m!2694829 () Bool)

(assert (=> bs!455682 m!2694829))

(assert (=> b!2265268 d!670803))

(declare-fun b!2265434 () Bool)

(declare-fun res!968545 () Bool)

(declare-fun e!1450773 () Bool)

(assert (=> b!2265434 (=> (not res!968545) (not e!1450773))))

(declare-fun lt!841943 () Option!5265)

(assert (=> b!2265434 (= res!968545 (= (rule!6601 (_1!15789 (get!8124 lt!841943))) r!2363))))

(declare-fun b!2265435 () Bool)

(declare-fun res!968544 () Bool)

(assert (=> b!2265435 (=> (not res!968544) (not e!1450773))))

(assert (=> b!2265435 (= res!968544 (= (value!135999 (_1!15789 (get!8124 lt!841943))) (apply!6591 (transformation!4287 (rule!6601 (_1!15789 (get!8124 lt!841943)))) (seqFromList!2991 (originalCharacters!5057 (_1!15789 (get!8124 lt!841943)))))))))

(declare-fun d!670819 () Bool)

(declare-fun e!1450774 () Bool)

(assert (=> d!670819 e!1450774))

(declare-fun res!968541 () Bool)

(assert (=> d!670819 (=> res!968541 e!1450774)))

(declare-fun isEmpty!15233 (Option!5265) Bool)

(assert (=> d!670819 (= res!968541 (isEmpty!15233 lt!841943))))

(declare-fun e!1450772 () Option!5265)

(assert (=> d!670819 (= lt!841943 e!1450772)))

(declare-fun c!359805 () Bool)

(declare-datatypes ((tuple2!26560 0))(
  ( (tuple2!26561 (_1!15790 List!27016) (_2!15790 List!27016)) )
))
(declare-fun lt!841941 () tuple2!26560)

(assert (=> d!670819 (= c!359805 (isEmpty!15232 (_1!15790 lt!841941)))))

(declare-fun findLongestMatch!629 (Regex!6635 List!27016) tuple2!26560)

(assert (=> d!670819 (= lt!841941 (findLongestMatch!629 (regex!4287 r!2363) input!1722))))

(assert (=> d!670819 (ruleValid!1379 thiss!16613 r!2363)))

(assert (=> d!670819 (= (maxPrefixOneRule!1352 thiss!16613 r!2363 input!1722) lt!841943)))

(declare-fun b!2265436 () Bool)

(assert (=> b!2265436 (= e!1450773 (= (size!21109 (_1!15789 (get!8124 lt!841943))) (size!21112 (originalCharacters!5057 (_1!15789 (get!8124 lt!841943))))))))

(declare-fun b!2265437 () Bool)

(declare-fun res!968540 () Bool)

(assert (=> b!2265437 (=> (not res!968540) (not e!1450773))))

(assert (=> b!2265437 (= res!968540 (< (size!21112 (_2!15789 (get!8124 lt!841943))) (size!21112 input!1722)))))

(declare-fun b!2265438 () Bool)

(assert (=> b!2265438 (= e!1450772 None!5264)))

(declare-fun b!2265439 () Bool)

(declare-fun res!968542 () Bool)

(assert (=> b!2265439 (=> (not res!968542) (not e!1450773))))

(assert (=> b!2265439 (= res!968542 (= (++!6559 (list!10406 (charsOf!2675 (_1!15789 (get!8124 lt!841943)))) (_2!15789 (get!8124 lt!841943))) input!1722))))

(declare-fun b!2265440 () Bool)

(declare-fun e!1450775 () Bool)

(declare-fun findLongestMatchInner!700 (Regex!6635 List!27016 Int List!27016 List!27016 Int) tuple2!26560)

(assert (=> b!2265440 (= e!1450775 (matchR!2896 (regex!4287 r!2363) (_1!15790 (findLongestMatchInner!700 (regex!4287 r!2363) Nil!26922 (size!21112 Nil!26922) input!1722 input!1722 (size!21112 input!1722)))))))

(declare-fun b!2265441 () Bool)

(assert (=> b!2265441 (= e!1450772 (Some!5264 (tuple2!26559 (Token!8053 (apply!6591 (transformation!4287 r!2363) (seqFromList!2991 (_1!15790 lt!841941))) r!2363 (size!21110 (seqFromList!2991 (_1!15790 lt!841941))) (_1!15790 lt!841941)) (_2!15790 lt!841941))))))

(declare-fun lt!841939 () Unit!39874)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!673 (Regex!6635 List!27016) Unit!39874)

(assert (=> b!2265441 (= lt!841939 (longestMatchIsAcceptedByMatchOrIsEmpty!673 (regex!4287 r!2363) input!1722))))

(declare-fun res!968543 () Bool)

(assert (=> b!2265441 (= res!968543 (isEmpty!15232 (_1!15790 (findLongestMatchInner!700 (regex!4287 r!2363) Nil!26922 (size!21112 Nil!26922) input!1722 input!1722 (size!21112 input!1722)))))))

(assert (=> b!2265441 (=> res!968543 e!1450775)))

(assert (=> b!2265441 e!1450775))

(declare-fun lt!841940 () Unit!39874)

(assert (=> b!2265441 (= lt!841940 lt!841939)))

(declare-fun lt!841942 () Unit!39874)

(assert (=> b!2265441 (= lt!841942 (lemmaSemiInverse!1034 (transformation!4287 r!2363) (seqFromList!2991 (_1!15790 lt!841941))))))

(declare-fun b!2265442 () Bool)

(assert (=> b!2265442 (= e!1450774 e!1450773)))

(declare-fun res!968539 () Bool)

(assert (=> b!2265442 (=> (not res!968539) (not e!1450773))))

(assert (=> b!2265442 (= res!968539 (matchR!2896 (regex!4287 r!2363) (list!10406 (charsOf!2675 (_1!15789 (get!8124 lt!841943))))))))

(assert (= (and d!670819 c!359805) b!2265438))

(assert (= (and d!670819 (not c!359805)) b!2265441))

(assert (= (and b!2265441 (not res!968543)) b!2265440))

(assert (= (and d!670819 (not res!968541)) b!2265442))

(assert (= (and b!2265442 res!968539) b!2265439))

(assert (= (and b!2265439 res!968542) b!2265437))

(assert (= (and b!2265437 res!968540) b!2265434))

(assert (= (and b!2265434 res!968545) b!2265435))

(assert (= (and b!2265435 res!968544) b!2265436))

(declare-fun m!2694831 () Bool)

(assert (=> b!2265436 m!2694831))

(declare-fun m!2694833 () Bool)

(assert (=> b!2265436 m!2694833))

(assert (=> b!2265439 m!2694831))

(declare-fun m!2694835 () Bool)

(assert (=> b!2265439 m!2694835))

(assert (=> b!2265439 m!2694835))

(declare-fun m!2694837 () Bool)

(assert (=> b!2265439 m!2694837))

(assert (=> b!2265439 m!2694837))

(declare-fun m!2694839 () Bool)

(assert (=> b!2265439 m!2694839))

(declare-fun m!2694841 () Bool)

(assert (=> d!670819 m!2694841))

(declare-fun m!2694843 () Bool)

(assert (=> d!670819 m!2694843))

(declare-fun m!2694845 () Bool)

(assert (=> d!670819 m!2694845))

(assert (=> d!670819 m!2694711))

(assert (=> b!2265437 m!2694831))

(declare-fun m!2694847 () Bool)

(assert (=> b!2265437 m!2694847))

(assert (=> b!2265437 m!2694795))

(assert (=> b!2265442 m!2694831))

(assert (=> b!2265442 m!2694835))

(assert (=> b!2265442 m!2694835))

(assert (=> b!2265442 m!2694837))

(assert (=> b!2265442 m!2694837))

(declare-fun m!2694849 () Bool)

(assert (=> b!2265442 m!2694849))

(declare-fun m!2694851 () Bool)

(assert (=> b!2265440 m!2694851))

(assert (=> b!2265440 m!2694795))

(assert (=> b!2265440 m!2694851))

(assert (=> b!2265440 m!2694795))

(declare-fun m!2694853 () Bool)

(assert (=> b!2265440 m!2694853))

(declare-fun m!2694855 () Bool)

(assert (=> b!2265440 m!2694855))

(assert (=> b!2265434 m!2694831))

(assert (=> b!2265441 m!2694851))

(declare-fun m!2694857 () Bool)

(assert (=> b!2265441 m!2694857))

(declare-fun m!2694859 () Bool)

(assert (=> b!2265441 m!2694859))

(assert (=> b!2265441 m!2694795))

(declare-fun m!2694861 () Bool)

(assert (=> b!2265441 m!2694861))

(assert (=> b!2265441 m!2694851))

(assert (=> b!2265441 m!2694795))

(assert (=> b!2265441 m!2694853))

(assert (=> b!2265441 m!2694857))

(declare-fun m!2694863 () Bool)

(assert (=> b!2265441 m!2694863))

(declare-fun m!2694865 () Bool)

(assert (=> b!2265441 m!2694865))

(assert (=> b!2265441 m!2694857))

(assert (=> b!2265441 m!2694857))

(declare-fun m!2694867 () Bool)

(assert (=> b!2265441 m!2694867))

(assert (=> b!2265435 m!2694831))

(declare-fun m!2694869 () Bool)

(assert (=> b!2265435 m!2694869))

(assert (=> b!2265435 m!2694869))

(declare-fun m!2694871 () Bool)

(assert (=> b!2265435 m!2694871))

(assert (=> b!2265268 d!670819))

(declare-fun b!2265445 () Bool)

(declare-fun e!1450776 () Bool)

(assert (=> b!2265445 (= e!1450776 (isPrefix!2277 (tail!3267 input!1722) (tail!3267 input!1722)))))

(declare-fun b!2265444 () Bool)

(declare-fun res!968546 () Bool)

(assert (=> b!2265444 (=> (not res!968546) (not e!1450776))))

(assert (=> b!2265444 (= res!968546 (= (head!4874 input!1722) (head!4874 input!1722)))))

(declare-fun b!2265443 () Bool)

(declare-fun e!1450778 () Bool)

(assert (=> b!2265443 (= e!1450778 e!1450776)))

(declare-fun res!968548 () Bool)

(assert (=> b!2265443 (=> (not res!968548) (not e!1450776))))

(assert (=> b!2265443 (= res!968548 (not ((_ is Nil!26922) input!1722)))))

(declare-fun d!670821 () Bool)

(declare-fun e!1450777 () Bool)

(assert (=> d!670821 e!1450777))

(declare-fun res!968547 () Bool)

(assert (=> d!670821 (=> res!968547 e!1450777)))

(declare-fun lt!841944 () Bool)

(assert (=> d!670821 (= res!968547 (not lt!841944))))

(assert (=> d!670821 (= lt!841944 e!1450778)))

(declare-fun res!968549 () Bool)

(assert (=> d!670821 (=> res!968549 e!1450778)))

(assert (=> d!670821 (= res!968549 ((_ is Nil!26922) input!1722))))

(assert (=> d!670821 (= (isPrefix!2277 input!1722 input!1722) lt!841944)))

(declare-fun b!2265446 () Bool)

(assert (=> b!2265446 (= e!1450777 (>= (size!21112 input!1722) (size!21112 input!1722)))))

(assert (= (and d!670821 (not res!968549)) b!2265443))

(assert (= (and b!2265443 res!968548) b!2265444))

(assert (= (and b!2265444 res!968546) b!2265445))

(assert (= (and d!670821 (not res!968547)) b!2265446))

(assert (=> b!2265445 m!2694789))

(assert (=> b!2265445 m!2694789))

(assert (=> b!2265445 m!2694789))

(assert (=> b!2265445 m!2694789))

(declare-fun m!2694873 () Bool)

(assert (=> b!2265445 m!2694873))

(assert (=> b!2265444 m!2694793))

(assert (=> b!2265444 m!2694793))

(assert (=> b!2265446 m!2694795))

(assert (=> b!2265446 m!2694795))

(assert (=> b!2265246 d!670821))

(declare-fun d!670823 () Bool)

(assert (=> d!670823 (isPrefix!2277 input!1722 input!1722)))

(declare-fun lt!841947 () Unit!39874)

(declare-fun choose!13243 (List!27016 List!27016) Unit!39874)

(assert (=> d!670823 (= lt!841947 (choose!13243 input!1722 input!1722))))

(assert (=> d!670823 (= (lemmaIsPrefixRefl!1461 input!1722 input!1722) lt!841947)))

(declare-fun bs!455683 () Bool)

(assert (= bs!455683 d!670823))

(assert (=> bs!455683 m!2694733))

(declare-fun m!2694875 () Bool)

(assert (=> bs!455683 m!2694875))

(assert (=> b!2265246 d!670823))

(declare-fun b!2265577 () Bool)

(declare-fun e!1450857 () Bool)

(assert (=> b!2265577 (= e!1450857 true)))

(declare-fun d!670825 () Bool)

(assert (=> d!670825 e!1450857))

(assert (= d!670825 b!2265577))

(declare-fun order!15011 () Int)

(declare-fun order!15013 () Int)

(declare-fun lambda!85389 () Int)

(declare-fun dynLambda!11672 (Int Int) Int)

(declare-fun dynLambda!11673 (Int Int) Int)

(assert (=> b!2265577 (< (dynLambda!11672 order!15011 (toValue!6041 (transformation!4287 r!2363))) (dynLambda!11673 order!15013 lambda!85389))))

(declare-fun order!15015 () Int)

(declare-fun dynLambda!11674 (Int Int) Int)

(assert (=> b!2265577 (< (dynLambda!11674 order!15015 (toChars!5900 (transformation!4287 r!2363))) (dynLambda!11673 order!15013 lambda!85389))))

(declare-fun dynLambda!11675 (Int TokenValue!4449) BalanceConc!17172)

(assert (=> d!670825 (= (list!10406 (dynLambda!11675 (toChars!5900 (transformation!4287 r!2363)) (dynLambda!11667 (toValue!6041 (transformation!4287 r!2363)) lt!841881))) (list!10406 lt!841881))))

(declare-fun lt!841989 () Unit!39874)

(declare-fun ForallOf!485 (Int BalanceConc!17172) Unit!39874)

(assert (=> d!670825 (= lt!841989 (ForallOf!485 lambda!85389 lt!841881))))

(assert (=> d!670825 (= (lemmaSemiInverse!1034 (transformation!4287 r!2363) lt!841881) lt!841989)))

(declare-fun b_lambda!72229 () Bool)

(assert (=> (not b_lambda!72229) (not d!670825)))

(declare-fun t!202058 () Bool)

(declare-fun tb!134343 () Bool)

(assert (=> (and b!2265266 (= (toChars!5900 (transformation!4287 r!2363)) (toChars!5900 (transformation!4287 r!2363))) t!202058) tb!134343))

(declare-fun e!1450860 () Bool)

(declare-fun b!2265582 () Bool)

(declare-fun tp!716739 () Bool)

(declare-fun inv!36470 (Conc!8722) Bool)

(assert (=> b!2265582 (= e!1450860 (and (inv!36470 (c!359772 (dynLambda!11675 (toChars!5900 (transformation!4287 r!2363)) (dynLambda!11667 (toValue!6041 (transformation!4287 r!2363)) lt!841881)))) tp!716739))))

(declare-fun result!163784 () Bool)

(declare-fun inv!36471 (BalanceConc!17172) Bool)

(assert (=> tb!134343 (= result!163784 (and (inv!36471 (dynLambda!11675 (toChars!5900 (transformation!4287 r!2363)) (dynLambda!11667 (toValue!6041 (transformation!4287 r!2363)) lt!841881))) e!1450860))))

(assert (= tb!134343 b!2265582))

(declare-fun m!2695019 () Bool)

(assert (=> b!2265582 m!2695019))

(declare-fun m!2695021 () Bool)

(assert (=> tb!134343 m!2695021))

(assert (=> d!670825 t!202058))

(declare-fun b_and!178249 () Bool)

(assert (= b_and!178187 (and (=> t!202058 result!163784) b_and!178249)))

(declare-fun t!202060 () Bool)

(declare-fun tb!134345 () Bool)

(assert (=> (and b!2265243 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 r!2363))) t!202060) tb!134345))

(declare-fun result!163788 () Bool)

(assert (= result!163788 result!163784))

(assert (=> d!670825 t!202060))

(declare-fun b_and!178251 () Bool)

(assert (= b_and!178191 (and (=> t!202060 result!163788) b_and!178251)))

(declare-fun t!202062 () Bool)

(declare-fun tb!134347 () Bool)

(assert (=> (and b!2265239 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toChars!5900 (transformation!4287 r!2363))) t!202062) tb!134347))

(declare-fun result!163790 () Bool)

(assert (= result!163790 result!163784))

(assert (=> d!670825 t!202062))

(declare-fun b_and!178253 () Bool)

(assert (= b_and!178195 (and (=> t!202062 result!163790) b_and!178253)))

(declare-fun t!202064 () Bool)

(declare-fun tb!134349 () Bool)

(assert (=> (and b!2265270 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 r!2363))) t!202064) tb!134349))

(declare-fun result!163792 () Bool)

(assert (= result!163792 result!163784))

(assert (=> d!670825 t!202064))

(declare-fun b_and!178255 () Bool)

(assert (= b_and!178199 (and (=> t!202064 result!163792) b_and!178255)))

(declare-fun b_lambda!72231 () Bool)

(assert (=> (not b_lambda!72231) (not d!670825)))

(assert (=> d!670825 t!202018))

(declare-fun b_and!178257 () Bool)

(assert (= b_and!178201 (and (=> t!202018 result!163738) b_and!178257)))

(assert (=> d!670825 t!202020))

(declare-fun b_and!178259 () Bool)

(assert (= b_and!178203 (and (=> t!202020 result!163742) b_and!178259)))

(assert (=> d!670825 t!202022))

(declare-fun b_and!178261 () Bool)

(assert (= b_and!178205 (and (=> t!202022 result!163744) b_and!178261)))

(assert (=> d!670825 t!202024))

(declare-fun b_and!178263 () Bool)

(assert (= b_and!178207 (and (=> t!202024 result!163746) b_and!178263)))

(declare-fun m!2695023 () Bool)

(assert (=> d!670825 m!2695023))

(declare-fun m!2695025 () Bool)

(assert (=> d!670825 m!2695025))

(declare-fun m!2695027 () Bool)

(assert (=> d!670825 m!2695027))

(assert (=> d!670825 m!2694759))

(declare-fun m!2695029 () Bool)

(assert (=> d!670825 m!2695029))

(assert (=> d!670825 m!2694759))

(assert (=> d!670825 m!2695023))

(assert (=> b!2265246 d!670825))

(declare-fun d!670883 () Bool)

(declare-fun lt!841992 () Int)

(assert (=> d!670883 (= lt!841992 (size!21112 (list!10406 (charsOf!2675 (head!4872 tokens!456)))))))

(declare-fun size!21114 (Conc!8722) Int)

(assert (=> d!670883 (= lt!841992 (size!21114 (c!359772 (charsOf!2675 (head!4872 tokens!456)))))))

(assert (=> d!670883 (= (size!21110 (charsOf!2675 (head!4872 tokens!456))) lt!841992)))

(declare-fun bs!455691 () Bool)

(assert (= bs!455691 d!670883))

(assert (=> bs!455691 m!2694631))

(assert (=> bs!455691 m!2694691))

(assert (=> bs!455691 m!2694691))

(declare-fun m!2695031 () Bool)

(assert (=> bs!455691 m!2695031))

(declare-fun m!2695033 () Bool)

(assert (=> bs!455691 m!2695033))

(assert (=> b!2265245 d!670883))

(declare-fun d!670885 () Bool)

(declare-fun lt!841995 () BalanceConc!17172)

(assert (=> d!670885 (= (list!10406 lt!841995) (originalCharacters!5057 (head!4872 tokens!456)))))

(assert (=> d!670885 (= lt!841995 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456)))) (value!135999 (head!4872 tokens!456))))))

(assert (=> d!670885 (= (charsOf!2675 (head!4872 tokens!456)) lt!841995)))

(declare-fun b_lambda!72233 () Bool)

(assert (=> (not b_lambda!72233) (not d!670885)))

(declare-fun tb!134351 () Bool)

(declare-fun t!202066 () Bool)

(assert (=> (and b!2265266 (= (toChars!5900 (transformation!4287 r!2363)) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202066) tb!134351))

(declare-fun b!2265583 () Bool)

(declare-fun e!1450861 () Bool)

(declare-fun tp!716740 () Bool)

(assert (=> b!2265583 (= e!1450861 (and (inv!36470 (c!359772 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456)))) (value!135999 (head!4872 tokens!456))))) tp!716740))))

(declare-fun result!163794 () Bool)

(assert (=> tb!134351 (= result!163794 (and (inv!36471 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456)))) (value!135999 (head!4872 tokens!456)))) e!1450861))))

(assert (= tb!134351 b!2265583))

(declare-fun m!2695035 () Bool)

(assert (=> b!2265583 m!2695035))

(declare-fun m!2695037 () Bool)

(assert (=> tb!134351 m!2695037))

(assert (=> d!670885 t!202066))

(declare-fun b_and!178265 () Bool)

(assert (= b_and!178249 (and (=> t!202066 result!163794) b_and!178265)))

(declare-fun tb!134353 () Bool)

(declare-fun t!202068 () Bool)

(assert (=> (and b!2265243 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202068) tb!134353))

(declare-fun result!163796 () Bool)

(assert (= result!163796 result!163794))

(assert (=> d!670885 t!202068))

(declare-fun b_and!178267 () Bool)

(assert (= b_and!178251 (and (=> t!202068 result!163796) b_and!178267)))

(declare-fun t!202070 () Bool)

(declare-fun tb!134355 () Bool)

(assert (=> (and b!2265239 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202070) tb!134355))

(declare-fun result!163798 () Bool)

(assert (= result!163798 result!163794))

(assert (=> d!670885 t!202070))

(declare-fun b_and!178269 () Bool)

(assert (= b_and!178253 (and (=> t!202070 result!163798) b_and!178269)))

(declare-fun tb!134357 () Bool)

(declare-fun t!202072 () Bool)

(assert (=> (and b!2265270 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202072) tb!134357))

(declare-fun result!163800 () Bool)

(assert (= result!163800 result!163794))

(assert (=> d!670885 t!202072))

(declare-fun b_and!178271 () Bool)

(assert (= b_and!178255 (and (=> t!202072 result!163800) b_and!178271)))

(declare-fun m!2695039 () Bool)

(assert (=> d!670885 m!2695039))

(declare-fun m!2695041 () Bool)

(assert (=> d!670885 m!2695041))

(assert (=> b!2265245 d!670885))

(declare-fun d!670887 () Bool)

(assert (=> d!670887 (= (head!4872 tokens!456) (h!32325 tokens!456))))

(assert (=> b!2265245 d!670887))

(declare-fun d!670889 () Bool)

(declare-fun e!1450865 () Bool)

(assert (=> d!670889 e!1450865))

(declare-fun c!359830 () Bool)

(assert (=> d!670889 (= c!359830 ((_ is EmptyExpr!6635) (regex!4287 otherR!12)))))

(declare-fun lt!841996 () Bool)

(declare-fun e!1450863 () Bool)

(assert (=> d!670889 (= lt!841996 e!1450863)))

(declare-fun c!359829 () Bool)

(assert (=> d!670889 (= c!359829 (isEmpty!15232 otherP!12))))

(assert (=> d!670889 (validRegex!2484 (regex!4287 otherR!12))))

(assert (=> d!670889 (= (matchR!2896 (regex!4287 otherR!12) otherP!12) lt!841996)))

(declare-fun b!2265584 () Bool)

(declare-fun e!1450866 () Bool)

(declare-fun e!1450864 () Bool)

(assert (=> b!2265584 (= e!1450866 e!1450864)))

(declare-fun res!968627 () Bool)

(assert (=> b!2265584 (=> (not res!968627) (not e!1450864))))

(assert (=> b!2265584 (= res!968627 (not lt!841996))))

(declare-fun b!2265585 () Bool)

(declare-fun call!135969 () Bool)

(assert (=> b!2265585 (= e!1450865 (= lt!841996 call!135969))))

(declare-fun b!2265586 () Bool)

(assert (=> b!2265586 (= e!1450863 (matchR!2896 (derivativeStep!1486 (regex!4287 otherR!12) (head!4874 otherP!12)) (tail!3267 otherP!12)))))

(declare-fun b!2265587 () Bool)

(declare-fun res!968630 () Bool)

(assert (=> b!2265587 (=> res!968630 e!1450866)))

(assert (=> b!2265587 (= res!968630 (not ((_ is ElementMatch!6635) (regex!4287 otherR!12))))))

(declare-fun e!1450867 () Bool)

(assert (=> b!2265587 (= e!1450867 e!1450866)))

(declare-fun b!2265588 () Bool)

(assert (=> b!2265588 (= e!1450863 (nullable!1824 (regex!4287 otherR!12)))))

(declare-fun b!2265589 () Bool)

(assert (=> b!2265589 (= e!1450867 (not lt!841996))))

(declare-fun b!2265590 () Bool)

(declare-fun e!1450868 () Bool)

(assert (=> b!2265590 (= e!1450864 e!1450868)))

(declare-fun res!968625 () Bool)

(assert (=> b!2265590 (=> res!968625 e!1450868)))

(assert (=> b!2265590 (= res!968625 call!135969)))

(declare-fun bm!135964 () Bool)

(assert (=> bm!135964 (= call!135969 (isEmpty!15232 otherP!12))))

(declare-fun b!2265591 () Bool)

(declare-fun res!968626 () Bool)

(assert (=> b!2265591 (=> res!968626 e!1450866)))

(declare-fun e!1450862 () Bool)

(assert (=> b!2265591 (= res!968626 e!1450862)))

(declare-fun res!968629 () Bool)

(assert (=> b!2265591 (=> (not res!968629) (not e!1450862))))

(assert (=> b!2265591 (= res!968629 lt!841996)))

(declare-fun b!2265592 () Bool)

(declare-fun res!968631 () Bool)

(assert (=> b!2265592 (=> (not res!968631) (not e!1450862))))

(assert (=> b!2265592 (= res!968631 (isEmpty!15232 (tail!3267 otherP!12)))))

(declare-fun b!2265593 () Bool)

(declare-fun res!968628 () Bool)

(assert (=> b!2265593 (=> (not res!968628) (not e!1450862))))

(assert (=> b!2265593 (= res!968628 (not call!135969))))

(declare-fun b!2265594 () Bool)

(declare-fun res!968624 () Bool)

(assert (=> b!2265594 (=> res!968624 e!1450868)))

(assert (=> b!2265594 (= res!968624 (not (isEmpty!15232 (tail!3267 otherP!12))))))

(declare-fun b!2265595 () Bool)

(assert (=> b!2265595 (= e!1450862 (= (head!4874 otherP!12) (c!359773 (regex!4287 otherR!12))))))

(declare-fun b!2265596 () Bool)

(assert (=> b!2265596 (= e!1450865 e!1450867)))

(declare-fun c!359831 () Bool)

(assert (=> b!2265596 (= c!359831 ((_ is EmptyLang!6635) (regex!4287 otherR!12)))))

(declare-fun b!2265597 () Bool)

(assert (=> b!2265597 (= e!1450868 (not (= (head!4874 otherP!12) (c!359773 (regex!4287 otherR!12)))))))

(assert (= (and d!670889 c!359829) b!2265588))

(assert (= (and d!670889 (not c!359829)) b!2265586))

(assert (= (and d!670889 c!359830) b!2265585))

(assert (= (and d!670889 (not c!359830)) b!2265596))

(assert (= (and b!2265596 c!359831) b!2265589))

(assert (= (and b!2265596 (not c!359831)) b!2265587))

(assert (= (and b!2265587 (not res!968630)) b!2265591))

(assert (= (and b!2265591 res!968629) b!2265593))

(assert (= (and b!2265593 res!968628) b!2265592))

(assert (= (and b!2265592 res!968631) b!2265595))

(assert (= (and b!2265591 (not res!968626)) b!2265584))

(assert (= (and b!2265584 res!968627) b!2265590))

(assert (= (and b!2265590 (not res!968625)) b!2265594))

(assert (= (and b!2265594 (not res!968624)) b!2265597))

(assert (= (or b!2265585 b!2265590 b!2265593) bm!135964))

(declare-fun m!2695043 () Bool)

(assert (=> b!2265594 m!2695043))

(assert (=> b!2265594 m!2695043))

(declare-fun m!2695045 () Bool)

(assert (=> b!2265594 m!2695045))

(declare-fun m!2695047 () Bool)

(assert (=> b!2265597 m!2695047))

(assert (=> b!2265592 m!2695043))

(assert (=> b!2265592 m!2695043))

(assert (=> b!2265592 m!2695045))

(declare-fun m!2695049 () Bool)

(assert (=> d!670889 m!2695049))

(assert (=> d!670889 m!2694697))

(assert (=> b!2265586 m!2695047))

(assert (=> b!2265586 m!2695047))

(declare-fun m!2695051 () Bool)

(assert (=> b!2265586 m!2695051))

(assert (=> b!2265586 m!2695043))

(assert (=> b!2265586 m!2695051))

(assert (=> b!2265586 m!2695043))

(declare-fun m!2695053 () Bool)

(assert (=> b!2265586 m!2695053))

(declare-fun m!2695055 () Bool)

(assert (=> b!2265588 m!2695055))

(assert (=> b!2265595 m!2695047))

(assert (=> bm!135964 m!2695049))

(assert (=> b!2265250 d!670889))

(declare-fun d!670891 () Bool)

(assert (=> d!670891 (not (matchR!2896 (regex!4287 otherR!12) otherP!12))))

(declare-fun lt!841999 () Unit!39874)

(declare-fun choose!13244 (LexerInterface!3884 List!27017 Rule!8374 List!27016 List!27016 List!27016 Rule!8374) Unit!39874)

(assert (=> d!670891 (= lt!841999 (choose!13244 thiss!16613 rules!1750 r!2363 lt!841876 input!1722 otherP!12 otherR!12))))

(assert (=> d!670891 (isPrefix!2277 lt!841876 input!1722)))

(assert (=> d!670891 (= (lemmaMaxPrefixOutputsMaxPrefix!284 thiss!16613 rules!1750 r!2363 lt!841876 input!1722 otherP!12 otherR!12) lt!841999)))

(declare-fun bs!455692 () Bool)

(assert (= bs!455692 d!670891))

(assert (=> bs!455692 m!2694651))

(declare-fun m!2695057 () Bool)

(assert (=> bs!455692 m!2695057))

(assert (=> bs!455692 m!2694717))

(assert (=> b!2265250 d!670891))

(declare-fun b!2265600 () Bool)

(declare-fun e!1450869 () Bool)

(assert (=> b!2265600 (= e!1450869 (isPrefix!2277 (tail!3267 otherP!12) (tail!3267 input!1722)))))

(declare-fun b!2265599 () Bool)

(declare-fun res!968632 () Bool)

(assert (=> b!2265599 (=> (not res!968632) (not e!1450869))))

(assert (=> b!2265599 (= res!968632 (= (head!4874 otherP!12) (head!4874 input!1722)))))

(declare-fun b!2265598 () Bool)

(declare-fun e!1450871 () Bool)

(assert (=> b!2265598 (= e!1450871 e!1450869)))

(declare-fun res!968634 () Bool)

(assert (=> b!2265598 (=> (not res!968634) (not e!1450869))))

(assert (=> b!2265598 (= res!968634 (not ((_ is Nil!26922) input!1722)))))

(declare-fun d!670893 () Bool)

(declare-fun e!1450870 () Bool)

(assert (=> d!670893 e!1450870))

(declare-fun res!968633 () Bool)

(assert (=> d!670893 (=> res!968633 e!1450870)))

(declare-fun lt!842000 () Bool)

(assert (=> d!670893 (= res!968633 (not lt!842000))))

(assert (=> d!670893 (= lt!842000 e!1450871)))

(declare-fun res!968635 () Bool)

(assert (=> d!670893 (=> res!968635 e!1450871)))

(assert (=> d!670893 (= res!968635 ((_ is Nil!26922) otherP!12))))

(assert (=> d!670893 (= (isPrefix!2277 otherP!12 input!1722) lt!842000)))

(declare-fun b!2265601 () Bool)

(assert (=> b!2265601 (= e!1450870 (>= (size!21112 input!1722) (size!21112 otherP!12)))))

(assert (= (and d!670893 (not res!968635)) b!2265598))

(assert (= (and b!2265598 res!968634) b!2265599))

(assert (= (and b!2265599 res!968632) b!2265600))

(assert (= (and d!670893 (not res!968633)) b!2265601))

(assert (=> b!2265600 m!2695043))

(assert (=> b!2265600 m!2694789))

(assert (=> b!2265600 m!2695043))

(assert (=> b!2265600 m!2694789))

(declare-fun m!2695059 () Bool)

(assert (=> b!2265600 m!2695059))

(assert (=> b!2265599 m!2695047))

(assert (=> b!2265599 m!2694793))

(assert (=> b!2265601 m!2694795))

(assert (=> b!2265601 m!2694669))

(assert (=> b!2265249 d!670893))

(declare-fun d!670895 () Bool)

(declare-fun lt!842003 () List!27016)

(assert (=> d!670895 (= (++!6559 lt!841876 lt!842003) input!1722)))

(declare-fun e!1450874 () List!27016)

(assert (=> d!670895 (= lt!842003 e!1450874)))

(declare-fun c!359834 () Bool)

(assert (=> d!670895 (= c!359834 ((_ is Cons!26922) lt!841876))))

(assert (=> d!670895 (>= (size!21112 input!1722) (size!21112 lt!841876))))

(assert (=> d!670895 (= (getSuffix!1088 input!1722 lt!841876) lt!842003)))

(declare-fun b!2265606 () Bool)

(assert (=> b!2265606 (= e!1450874 (getSuffix!1088 (tail!3267 input!1722) (t!202014 lt!841876)))))

(declare-fun b!2265607 () Bool)

(assert (=> b!2265607 (= e!1450874 input!1722)))

(assert (= (and d!670895 c!359834) b!2265606))

(assert (= (and d!670895 (not c!359834)) b!2265607))

(declare-fun m!2695061 () Bool)

(assert (=> d!670895 m!2695061))

(assert (=> d!670895 m!2694795))

(assert (=> d!670895 m!2694665))

(assert (=> b!2265606 m!2694789))

(assert (=> b!2265606 m!2694789))

(declare-fun m!2695063 () Bool)

(assert (=> b!2265606 m!2695063))

(assert (=> b!2265269 d!670895))

(declare-fun d!670897 () Bool)

(assert (=> d!670897 (= (get!8124 lt!841875) (v!30302 lt!841875))))

(assert (=> b!2265269 d!670897))

(declare-fun d!670899 () Bool)

(declare-fun lt!842006 () Int)

(assert (=> d!670899 (>= lt!842006 0)))

(declare-fun e!1450877 () Int)

(assert (=> d!670899 (= lt!842006 e!1450877)))

(declare-fun c!359837 () Bool)

(assert (=> d!670899 (= c!359837 ((_ is Nil!26922) otherP!12))))

(assert (=> d!670899 (= (size!21112 otherP!12) lt!842006)))

(declare-fun b!2265612 () Bool)

(assert (=> b!2265612 (= e!1450877 0)))

(declare-fun b!2265613 () Bool)

(assert (=> b!2265613 (= e!1450877 (+ 1 (size!21112 (t!202014 otherP!12))))))

(assert (= (and d!670899 c!359837) b!2265612))

(assert (= (and d!670899 (not c!359837)) b!2265613))

(declare-fun m!2695065 () Bool)

(assert (=> b!2265613 m!2695065))

(assert (=> b!2265269 d!670899))

(declare-fun b!2265647 () Bool)

(declare-fun e!1450893 () Bool)

(declare-fun lt!842021 () Option!5265)

(assert (=> b!2265647 (= e!1450893 (contains!4645 rules!1750 (rule!6601 (_1!15789 (get!8124 lt!842021)))))))

(declare-fun b!2265648 () Bool)

(declare-fun res!968664 () Bool)

(assert (=> b!2265648 (=> (not res!968664) (not e!1450893))))

(assert (=> b!2265648 (= res!968664 (< (size!21112 (_2!15789 (get!8124 lt!842021))) (size!21112 input!1722)))))

(declare-fun b!2265649 () Bool)

(declare-fun res!968661 () Bool)

(assert (=> b!2265649 (=> (not res!968661) (not e!1450893))))

(assert (=> b!2265649 (= res!968661 (= (list!10406 (charsOf!2675 (_1!15789 (get!8124 lt!842021)))) (originalCharacters!5057 (_1!15789 (get!8124 lt!842021)))))))

(declare-fun b!2265650 () Bool)

(declare-fun e!1450895 () Option!5265)

(declare-fun call!135972 () Option!5265)

(assert (=> b!2265650 (= e!1450895 call!135972)))

(declare-fun b!2265651 () Bool)

(declare-fun e!1450894 () Bool)

(assert (=> b!2265651 (= e!1450894 e!1450893)))

(declare-fun res!968663 () Bool)

(assert (=> b!2265651 (=> (not res!968663) (not e!1450893))))

(declare-fun isDefined!4198 (Option!5265) Bool)

(assert (=> b!2265651 (= res!968663 (isDefined!4198 lt!842021))))

(declare-fun b!2265652 () Bool)

(declare-fun res!968660 () Bool)

(assert (=> b!2265652 (=> (not res!968660) (not e!1450893))))

(assert (=> b!2265652 (= res!968660 (= (value!135999 (_1!15789 (get!8124 lt!842021))) (apply!6591 (transformation!4287 (rule!6601 (_1!15789 (get!8124 lt!842021)))) (seqFromList!2991 (originalCharacters!5057 (_1!15789 (get!8124 lt!842021)))))))))

(declare-fun b!2265653 () Bool)

(declare-fun res!968662 () Bool)

(assert (=> b!2265653 (=> (not res!968662) (not e!1450893))))

(assert (=> b!2265653 (= res!968662 (= (++!6559 (list!10406 (charsOf!2675 (_1!15789 (get!8124 lt!842021)))) (_2!15789 (get!8124 lt!842021))) input!1722))))

(declare-fun d!670901 () Bool)

(assert (=> d!670901 e!1450894))

(declare-fun res!968665 () Bool)

(assert (=> d!670901 (=> res!968665 e!1450894)))

(assert (=> d!670901 (= res!968665 (isEmpty!15233 lt!842021))))

(assert (=> d!670901 (= lt!842021 e!1450895)))

(declare-fun c!359843 () Bool)

(assert (=> d!670901 (= c!359843 (and ((_ is Cons!26923) rules!1750) ((_ is Nil!26923) (t!202015 rules!1750))))))

(declare-fun lt!842020 () Unit!39874)

(declare-fun lt!842023 () Unit!39874)

(assert (=> d!670901 (= lt!842020 lt!842023)))

(assert (=> d!670901 (isPrefix!2277 input!1722 input!1722)))

(assert (=> d!670901 (= lt!842023 (lemmaIsPrefixRefl!1461 input!1722 input!1722))))

(declare-fun rulesValidInductive!1495 (LexerInterface!3884 List!27017) Bool)

(assert (=> d!670901 (rulesValidInductive!1495 thiss!16613 rules!1750)))

(assert (=> d!670901 (= (maxPrefix!2158 thiss!16613 rules!1750 input!1722) lt!842021)))

(declare-fun bm!135967 () Bool)

(assert (=> bm!135967 (= call!135972 (maxPrefixOneRule!1352 thiss!16613 (h!32324 rules!1750) input!1722))))

(declare-fun b!2265654 () Bool)

(declare-fun lt!842024 () Option!5265)

(declare-fun lt!842022 () Option!5265)

(assert (=> b!2265654 (= e!1450895 (ite (and ((_ is None!5264) lt!842024) ((_ is None!5264) lt!842022)) None!5264 (ite ((_ is None!5264) lt!842022) lt!842024 (ite ((_ is None!5264) lt!842024) lt!842022 (ite (>= (size!21109 (_1!15789 (v!30302 lt!842024))) (size!21109 (_1!15789 (v!30302 lt!842022)))) lt!842024 lt!842022)))))))

(assert (=> b!2265654 (= lt!842024 call!135972)))

(assert (=> b!2265654 (= lt!842022 (maxPrefix!2158 thiss!16613 (t!202015 rules!1750) input!1722))))

(declare-fun b!2265655 () Bool)

(declare-fun res!968659 () Bool)

(assert (=> b!2265655 (=> (not res!968659) (not e!1450893))))

(assert (=> b!2265655 (= res!968659 (matchR!2896 (regex!4287 (rule!6601 (_1!15789 (get!8124 lt!842021)))) (list!10406 (charsOf!2675 (_1!15789 (get!8124 lt!842021))))))))

(assert (= (and d!670901 c!359843) b!2265650))

(assert (= (and d!670901 (not c!359843)) b!2265654))

(assert (= (or b!2265650 b!2265654) bm!135967))

(assert (= (and d!670901 (not res!968665)) b!2265651))

(assert (= (and b!2265651 res!968663) b!2265649))

(assert (= (and b!2265649 res!968661) b!2265648))

(assert (= (and b!2265648 res!968664) b!2265653))

(assert (= (and b!2265653 res!968662) b!2265652))

(assert (= (and b!2265652 res!968660) b!2265655))

(assert (= (and b!2265655 res!968659) b!2265647))

(declare-fun m!2695087 () Bool)

(assert (=> b!2265649 m!2695087))

(declare-fun m!2695089 () Bool)

(assert (=> b!2265649 m!2695089))

(assert (=> b!2265649 m!2695089))

(declare-fun m!2695091 () Bool)

(assert (=> b!2265649 m!2695091))

(assert (=> b!2265655 m!2695087))

(assert (=> b!2265655 m!2695089))

(assert (=> b!2265655 m!2695089))

(assert (=> b!2265655 m!2695091))

(assert (=> b!2265655 m!2695091))

(declare-fun m!2695093 () Bool)

(assert (=> b!2265655 m!2695093))

(assert (=> b!2265652 m!2695087))

(declare-fun m!2695095 () Bool)

(assert (=> b!2265652 m!2695095))

(assert (=> b!2265652 m!2695095))

(declare-fun m!2695097 () Bool)

(assert (=> b!2265652 m!2695097))

(declare-fun m!2695099 () Bool)

(assert (=> b!2265654 m!2695099))

(assert (=> b!2265647 m!2695087))

(declare-fun m!2695101 () Bool)

(assert (=> b!2265647 m!2695101))

(declare-fun m!2695103 () Bool)

(assert (=> d!670901 m!2695103))

(assert (=> d!670901 m!2694733))

(assert (=> d!670901 m!2694735))

(declare-fun m!2695105 () Bool)

(assert (=> d!670901 m!2695105))

(assert (=> b!2265648 m!2695087))

(declare-fun m!2695107 () Bool)

(assert (=> b!2265648 m!2695107))

(assert (=> b!2265648 m!2694795))

(declare-fun m!2695109 () Bool)

(assert (=> bm!135967 m!2695109))

(declare-fun m!2695111 () Bool)

(assert (=> b!2265651 m!2695111))

(assert (=> b!2265653 m!2695087))

(assert (=> b!2265653 m!2695089))

(assert (=> b!2265653 m!2695089))

(assert (=> b!2265653 m!2695091))

(assert (=> b!2265653 m!2695091))

(declare-fun m!2695113 () Bool)

(assert (=> b!2265653 m!2695113))

(assert (=> b!2265269 d!670901))

(declare-fun d!670909 () Bool)

(declare-fun list!10408 (Conc!8722) List!27016)

(assert (=> d!670909 (= (list!10406 (charsOf!2675 (h!32325 tokens!456))) (list!10408 (c!359772 (charsOf!2675 (h!32325 tokens!456)))))))

(declare-fun bs!455695 () Bool)

(assert (= bs!455695 d!670909))

(declare-fun m!2695117 () Bool)

(assert (=> bs!455695 m!2695117))

(assert (=> b!2265269 d!670909))

(declare-fun d!670913 () Bool)

(assert (=> d!670913 (isPrefix!2277 lt!841876 (++!6559 lt!841876 (_2!15789 lt!841886)))))

(declare-fun lt!842032 () Unit!39874)

(declare-fun choose!13247 (List!27016 List!27016) Unit!39874)

(assert (=> d!670913 (= lt!842032 (choose!13247 lt!841876 (_2!15789 lt!841886)))))

(assert (=> d!670913 (= (lemmaConcatTwoListThenFirstIsPrefix!1502 lt!841876 (_2!15789 lt!841886)) lt!842032)))

(declare-fun bs!455696 () Bool)

(assert (= bs!455696 d!670913))

(assert (=> bs!455696 m!2694661))

(assert (=> bs!455696 m!2694661))

(assert (=> bs!455696 m!2694663))

(declare-fun m!2695127 () Bool)

(assert (=> bs!455696 m!2695127))

(assert (=> b!2265269 d!670913))

(declare-fun d!670923 () Bool)

(declare-fun lt!842033 () BalanceConc!17172)

(assert (=> d!670923 (= (list!10406 lt!842033) (originalCharacters!5057 (h!32325 tokens!456)))))

(assert (=> d!670923 (= lt!842033 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (value!135999 (h!32325 tokens!456))))))

(assert (=> d!670923 (= (charsOf!2675 (h!32325 tokens!456)) lt!842033)))

(declare-fun b_lambda!72237 () Bool)

(assert (=> (not b_lambda!72237) (not d!670923)))

(declare-fun tb!134359 () Bool)

(declare-fun t!202074 () Bool)

(assert (=> (and b!2265266 (= (toChars!5900 (transformation!4287 r!2363)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202074) tb!134359))

(declare-fun b!2265668 () Bool)

(declare-fun e!1450904 () Bool)

(declare-fun tp!716741 () Bool)

(assert (=> b!2265668 (= e!1450904 (and (inv!36470 (c!359772 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (value!135999 (h!32325 tokens!456))))) tp!716741))))

(declare-fun result!163802 () Bool)

(assert (=> tb!134359 (= result!163802 (and (inv!36471 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (value!135999 (h!32325 tokens!456)))) e!1450904))))

(assert (= tb!134359 b!2265668))

(declare-fun m!2695129 () Bool)

(assert (=> b!2265668 m!2695129))

(declare-fun m!2695131 () Bool)

(assert (=> tb!134359 m!2695131))

(assert (=> d!670923 t!202074))

(declare-fun b_and!178281 () Bool)

(assert (= b_and!178265 (and (=> t!202074 result!163802) b_and!178281)))

(declare-fun t!202076 () Bool)

(declare-fun tb!134361 () Bool)

(assert (=> (and b!2265243 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202076) tb!134361))

(declare-fun result!163804 () Bool)

(assert (= result!163804 result!163802))

(assert (=> d!670923 t!202076))

(declare-fun b_and!178283 () Bool)

(assert (= b_and!178267 (and (=> t!202076 result!163804) b_and!178283)))

(declare-fun t!202078 () Bool)

(declare-fun tb!134363 () Bool)

(assert (=> (and b!2265239 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202078) tb!134363))

(declare-fun result!163806 () Bool)

(assert (= result!163806 result!163802))

(assert (=> d!670923 t!202078))

(declare-fun b_and!178285 () Bool)

(assert (= b_and!178269 (and (=> t!202078 result!163806) b_and!178285)))

(declare-fun tb!134365 () Bool)

(declare-fun t!202080 () Bool)

(assert (=> (and b!2265270 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202080) tb!134365))

(declare-fun result!163808 () Bool)

(assert (= result!163808 result!163802))

(assert (=> d!670923 t!202080))

(declare-fun b_and!178287 () Bool)

(assert (= b_and!178271 (and (=> t!202080 result!163808) b_and!178287)))

(declare-fun m!2695133 () Bool)

(assert (=> d!670923 m!2695133))

(declare-fun m!2695135 () Bool)

(assert (=> d!670923 m!2695135))

(assert (=> b!2265269 d!670923))

(declare-fun b!2265678 () Bool)

(declare-fun e!1450909 () List!27016)

(assert (=> b!2265678 (= e!1450909 (Cons!26922 (h!32323 lt!841876) (++!6559 (t!202014 lt!841876) (_2!15789 lt!841886))))))

(declare-fun lt!842036 () List!27016)

(declare-fun e!1450910 () Bool)

(declare-fun b!2265680 () Bool)

(assert (=> b!2265680 (= e!1450910 (or (not (= (_2!15789 lt!841886) Nil!26922)) (= lt!842036 lt!841876)))))

(declare-fun b!2265679 () Bool)

(declare-fun res!968683 () Bool)

(assert (=> b!2265679 (=> (not res!968683) (not e!1450910))))

(assert (=> b!2265679 (= res!968683 (= (size!21112 lt!842036) (+ (size!21112 lt!841876) (size!21112 (_2!15789 lt!841886)))))))

(declare-fun b!2265677 () Bool)

(assert (=> b!2265677 (= e!1450909 (_2!15789 lt!841886))))

(declare-fun d!670925 () Bool)

(assert (=> d!670925 e!1450910))

(declare-fun res!968682 () Bool)

(assert (=> d!670925 (=> (not res!968682) (not e!1450910))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3586 (List!27016) (InoxSet C!13416))

(assert (=> d!670925 (= res!968682 (= (content!3586 lt!842036) ((_ map or) (content!3586 lt!841876) (content!3586 (_2!15789 lt!841886)))))))

(assert (=> d!670925 (= lt!842036 e!1450909)))

(declare-fun c!359846 () Bool)

(assert (=> d!670925 (= c!359846 ((_ is Nil!26922) lt!841876))))

(assert (=> d!670925 (= (++!6559 lt!841876 (_2!15789 lt!841886)) lt!842036)))

(assert (= (and d!670925 c!359846) b!2265677))

(assert (= (and d!670925 (not c!359846)) b!2265678))

(assert (= (and d!670925 res!968682) b!2265679))

(assert (= (and b!2265679 res!968683) b!2265680))

(declare-fun m!2695137 () Bool)

(assert (=> b!2265678 m!2695137))

(declare-fun m!2695139 () Bool)

(assert (=> b!2265679 m!2695139))

(assert (=> b!2265679 m!2694665))

(declare-fun m!2695141 () Bool)

(assert (=> b!2265679 m!2695141))

(declare-fun m!2695143 () Bool)

(assert (=> d!670925 m!2695143))

(declare-fun m!2695145 () Bool)

(assert (=> d!670925 m!2695145))

(declare-fun m!2695147 () Bool)

(assert (=> d!670925 m!2695147))

(assert (=> b!2265269 d!670925))

(declare-fun d!670927 () Bool)

(declare-fun lt!842037 () Int)

(assert (=> d!670927 (>= lt!842037 0)))

(declare-fun e!1450911 () Int)

(assert (=> d!670927 (= lt!842037 e!1450911)))

(declare-fun c!359847 () Bool)

(assert (=> d!670927 (= c!359847 ((_ is Nil!26922) lt!841876))))

(assert (=> d!670927 (= (size!21112 lt!841876) lt!842037)))

(declare-fun b!2265681 () Bool)

(assert (=> b!2265681 (= e!1450911 0)))

(declare-fun b!2265682 () Bool)

(assert (=> b!2265682 (= e!1450911 (+ 1 (size!21112 (t!202014 lt!841876))))))

(assert (= (and d!670927 c!359847) b!2265681))

(assert (= (and d!670927 (not c!359847)) b!2265682))

(declare-fun m!2695149 () Bool)

(assert (=> b!2265682 m!2695149))

(assert (=> b!2265269 d!670927))

(declare-fun d!670929 () Bool)

(assert (=> d!670929 (= (_2!15789 lt!841886) lt!841891)))

(declare-fun lt!842040 () Unit!39874)

(declare-fun choose!13248 (List!27016 List!27016 List!27016 List!27016 List!27016) Unit!39874)

(assert (=> d!670929 (= lt!842040 (choose!13248 lt!841876 (_2!15789 lt!841886) lt!841876 lt!841891 input!1722))))

(assert (=> d!670929 (isPrefix!2277 lt!841876 input!1722)))

(assert (=> d!670929 (= (lemmaSamePrefixThenSameSuffix!1006 lt!841876 (_2!15789 lt!841886) lt!841876 lt!841891 input!1722) lt!842040)))

(declare-fun bs!455698 () Bool)

(assert (= bs!455698 d!670929))

(declare-fun m!2695151 () Bool)

(assert (=> bs!455698 m!2695151))

(assert (=> bs!455698 m!2694717))

(assert (=> b!2265269 d!670929))

(declare-fun b!2265685 () Bool)

(declare-fun e!1450912 () Bool)

(assert (=> b!2265685 (= e!1450912 (isPrefix!2277 (tail!3267 lt!841876) (tail!3267 (++!6559 lt!841876 (_2!15789 lt!841886)))))))

(declare-fun b!2265684 () Bool)

(declare-fun res!968684 () Bool)

(assert (=> b!2265684 (=> (not res!968684) (not e!1450912))))

(assert (=> b!2265684 (= res!968684 (= (head!4874 lt!841876) (head!4874 (++!6559 lt!841876 (_2!15789 lt!841886)))))))

(declare-fun b!2265683 () Bool)

(declare-fun e!1450914 () Bool)

(assert (=> b!2265683 (= e!1450914 e!1450912)))

(declare-fun res!968686 () Bool)

(assert (=> b!2265683 (=> (not res!968686) (not e!1450912))))

(assert (=> b!2265683 (= res!968686 (not ((_ is Nil!26922) (++!6559 lt!841876 (_2!15789 lt!841886)))))))

(declare-fun d!670931 () Bool)

(declare-fun e!1450913 () Bool)

(assert (=> d!670931 e!1450913))

(declare-fun res!968685 () Bool)

(assert (=> d!670931 (=> res!968685 e!1450913)))

(declare-fun lt!842041 () Bool)

(assert (=> d!670931 (= res!968685 (not lt!842041))))

(assert (=> d!670931 (= lt!842041 e!1450914)))

(declare-fun res!968687 () Bool)

(assert (=> d!670931 (=> res!968687 e!1450914)))

(assert (=> d!670931 (= res!968687 ((_ is Nil!26922) lt!841876))))

(assert (=> d!670931 (= (isPrefix!2277 lt!841876 (++!6559 lt!841876 (_2!15789 lt!841886))) lt!842041)))

(declare-fun b!2265686 () Bool)

(assert (=> b!2265686 (= e!1450913 (>= (size!21112 (++!6559 lt!841876 (_2!15789 lt!841886))) (size!21112 lt!841876)))))

(assert (= (and d!670931 (not res!968687)) b!2265683))

(assert (= (and b!2265683 res!968686) b!2265684))

(assert (= (and b!2265684 res!968684) b!2265685))

(assert (= (and d!670931 (not res!968685)) b!2265686))

(assert (=> b!2265685 m!2694739))

(assert (=> b!2265685 m!2694661))

(declare-fun m!2695153 () Bool)

(assert (=> b!2265685 m!2695153))

(assert (=> b!2265685 m!2694739))

(assert (=> b!2265685 m!2695153))

(declare-fun m!2695155 () Bool)

(assert (=> b!2265685 m!2695155))

(assert (=> b!2265684 m!2694743))

(assert (=> b!2265684 m!2694661))

(declare-fun m!2695157 () Bool)

(assert (=> b!2265684 m!2695157))

(assert (=> b!2265686 m!2694661))

(declare-fun m!2695159 () Bool)

(assert (=> b!2265686 m!2695159))

(assert (=> b!2265686 m!2694665))

(assert (=> b!2265269 d!670931))

(declare-fun d!670933 () Bool)

(declare-fun lt!842044 () Int)

(assert (=> d!670933 (>= lt!842044 0)))

(declare-fun e!1450917 () Int)

(assert (=> d!670933 (= lt!842044 e!1450917)))

(declare-fun c!359850 () Bool)

(assert (=> d!670933 (= c!359850 ((_ is Nil!26924) tokens!456))))

(assert (=> d!670933 (= (size!21111 tokens!456) lt!842044)))

(declare-fun b!2265691 () Bool)

(assert (=> b!2265691 (= e!1450917 0)))

(declare-fun b!2265692 () Bool)

(assert (=> b!2265692 (= e!1450917 (+ 1 (size!21111 (t!202016 tokens!456))))))

(assert (= (and d!670933 c!359850) b!2265691))

(assert (= (and d!670933 (not c!359850)) b!2265692))

(declare-fun m!2695161 () Bool)

(assert (=> b!2265692 m!2695161))

(assert (=> b!2265248 d!670933))

(declare-fun d!670935 () Bool)

(assert (=> d!670935 (= r!2363 otherR!12)))

(declare-fun lt!842050 () Unit!39874)

(declare-fun choose!13249 (List!27017 Rule!8374 Rule!8374) Unit!39874)

(assert (=> d!670935 (= lt!842050 (choose!13249 rules!1750 r!2363 otherR!12))))

(assert (=> d!670935 (contains!4645 rules!1750 r!2363)))

(assert (=> d!670935 (= (lemmaSameIndexThenSameElement!154 rules!1750 r!2363 otherR!12) lt!842050)))

(declare-fun bs!455700 () Bool)

(assert (= bs!455700 d!670935))

(declare-fun m!2695167 () Bool)

(assert (=> bs!455700 m!2695167))

(assert (=> bs!455700 m!2694731))

(assert (=> b!2265242 d!670935))

(declare-fun d!670939 () Bool)

(assert (=> d!670939 (= (isEmpty!15229 rules!1750) ((_ is Nil!26923) rules!1750))))

(assert (=> b!2265241 d!670939))

(declare-fun d!670941 () Bool)

(assert (=> d!670941 (= (inv!36463 (tag!4777 r!2363)) (= (mod (str.len (value!135998 (tag!4777 r!2363))) 2) 0))))

(assert (=> b!2265262 d!670941))

(declare-fun d!670943 () Bool)

(declare-fun res!968690 () Bool)

(declare-fun e!1450920 () Bool)

(assert (=> d!670943 (=> (not res!968690) (not e!1450920))))

(declare-fun semiInverseModEq!1726 (Int Int) Bool)

(assert (=> d!670943 (= res!968690 (semiInverseModEq!1726 (toChars!5900 (transformation!4287 r!2363)) (toValue!6041 (transformation!4287 r!2363))))))

(assert (=> d!670943 (= (inv!36466 (transformation!4287 r!2363)) e!1450920)))

(declare-fun b!2265695 () Bool)

(declare-fun equivClasses!1645 (Int Int) Bool)

(assert (=> b!2265695 (= e!1450920 (equivClasses!1645 (toChars!5900 (transformation!4287 r!2363)) (toValue!6041 (transformation!4287 r!2363))))))

(assert (= (and d!670943 res!968690) b!2265695))

(declare-fun m!2695169 () Bool)

(assert (=> d!670943 m!2695169))

(declare-fun m!2695171 () Bool)

(assert (=> b!2265695 m!2695171))

(assert (=> b!2265262 d!670943))

(assert (=> b!2265261 d!670883))

(assert (=> b!2265261 d!670885))

(assert (=> b!2265261 d!670887))

(assert (=> b!2265261 d!670899))

(declare-fun b!2265706 () Bool)

(declare-fun e!1450928 () Bool)

(declare-fun inv!17 (TokenValue!4449) Bool)

(assert (=> b!2265706 (= e!1450928 (inv!17 (value!135999 (h!32325 tokens!456))))))

(declare-fun b!2265707 () Bool)

(declare-fun e!1450927 () Bool)

(declare-fun inv!16 (TokenValue!4449) Bool)

(assert (=> b!2265707 (= e!1450927 (inv!16 (value!135999 (h!32325 tokens!456))))))

(declare-fun b!2265708 () Bool)

(declare-fun e!1450929 () Bool)

(declare-fun inv!15 (TokenValue!4449) Bool)

(assert (=> b!2265708 (= e!1450929 (inv!15 (value!135999 (h!32325 tokens!456))))))

(declare-fun b!2265710 () Bool)

(declare-fun res!968693 () Bool)

(assert (=> b!2265710 (=> res!968693 e!1450929)))

(assert (=> b!2265710 (= res!968693 (not ((_ is IntegerValue!13349) (value!135999 (h!32325 tokens!456)))))))

(assert (=> b!2265710 (= e!1450928 e!1450929)))

(declare-fun d!670945 () Bool)

(declare-fun c!359856 () Bool)

(assert (=> d!670945 (= c!359856 ((_ is IntegerValue!13347) (value!135999 (h!32325 tokens!456))))))

(assert (=> d!670945 (= (inv!21 (value!135999 (h!32325 tokens!456))) e!1450927)))

(declare-fun b!2265709 () Bool)

(assert (=> b!2265709 (= e!1450927 e!1450928)))

(declare-fun c!359855 () Bool)

(assert (=> b!2265709 (= c!359855 ((_ is IntegerValue!13348) (value!135999 (h!32325 tokens!456))))))

(assert (= (and d!670945 c!359856) b!2265707))

(assert (= (and d!670945 (not c!359856)) b!2265709))

(assert (= (and b!2265709 c!359855) b!2265706))

(assert (= (and b!2265709 (not c!359855)) b!2265710))

(assert (= (and b!2265710 (not res!968693)) b!2265708))

(declare-fun m!2695173 () Bool)

(assert (=> b!2265706 m!2695173))

(declare-fun m!2695175 () Bool)

(assert (=> b!2265707 m!2695175))

(declare-fun m!2695177 () Bool)

(assert (=> b!2265708 m!2695177))

(assert (=> b!2265240 d!670945))

(declare-fun d!670947 () Bool)

(declare-fun res!968698 () Bool)

(declare-fun e!1450932 () Bool)

(assert (=> d!670947 (=> (not res!968698) (not e!1450932))))

(assert (=> d!670947 (= res!968698 (validRegex!2484 (regex!4287 r!2363)))))

(assert (=> d!670947 (= (ruleValid!1379 thiss!16613 r!2363) e!1450932)))

(declare-fun b!2265715 () Bool)

(declare-fun res!968699 () Bool)

(assert (=> b!2265715 (=> (not res!968699) (not e!1450932))))

(assert (=> b!2265715 (= res!968699 (not (nullable!1824 (regex!4287 r!2363))))))

(declare-fun b!2265716 () Bool)

(assert (=> b!2265716 (= e!1450932 (not (= (tag!4777 r!2363) (String!29350 ""))))))

(assert (= (and d!670947 res!968698) b!2265715))

(assert (= (and b!2265715 res!968699) b!2265716))

(assert (=> d!670947 m!2694747))

(assert (=> b!2265715 m!2694753))

(assert (=> b!2265265 d!670947))

(declare-fun d!670949 () Bool)

(assert (=> d!670949 (ruleValid!1379 thiss!16613 r!2363)))

(declare-fun lt!842053 () Unit!39874)

(declare-fun choose!13250 (LexerInterface!3884 Rule!8374 List!27017) Unit!39874)

(assert (=> d!670949 (= lt!842053 (choose!13250 thiss!16613 r!2363 rules!1750))))

(assert (=> d!670949 (contains!4645 rules!1750 r!2363)))

(assert (=> d!670949 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!786 thiss!16613 r!2363 rules!1750) lt!842053)))

(declare-fun bs!455701 () Bool)

(assert (= bs!455701 d!670949))

(assert (=> bs!455701 m!2694711))

(declare-fun m!2695179 () Bool)

(assert (=> bs!455701 m!2695179))

(assert (=> bs!455701 m!2694731))

(assert (=> b!2265265 d!670949))

(declare-fun d!670951 () Bool)

(assert (=> d!670951 (= (isEmpty!15230 tokens!456) ((_ is Nil!26924) tokens!456))))

(assert (=> b!2265244 d!670951))

(declare-fun d!670953 () Bool)

(declare-fun lt!842056 () Bool)

(declare-fun content!3588 (List!27017) (InoxSet Rule!8374))

(assert (=> d!670953 (= lt!842056 (select (content!3588 rules!1750) r!2363))))

(declare-fun e!1450938 () Bool)

(assert (=> d!670953 (= lt!842056 e!1450938)))

(declare-fun res!968705 () Bool)

(assert (=> d!670953 (=> (not res!968705) (not e!1450938))))

(assert (=> d!670953 (= res!968705 ((_ is Cons!26923) rules!1750))))

(assert (=> d!670953 (= (contains!4645 rules!1750 r!2363) lt!842056)))

(declare-fun b!2265721 () Bool)

(declare-fun e!1450937 () Bool)

(assert (=> b!2265721 (= e!1450938 e!1450937)))

(declare-fun res!968704 () Bool)

(assert (=> b!2265721 (=> res!968704 e!1450937)))

(assert (=> b!2265721 (= res!968704 (= (h!32324 rules!1750) r!2363))))

(declare-fun b!2265722 () Bool)

(assert (=> b!2265722 (= e!1450937 (contains!4645 (t!202015 rules!1750) r!2363))))

(assert (= (and d!670953 res!968705) b!2265721))

(assert (= (and b!2265721 (not res!968704)) b!2265722))

(declare-fun m!2695181 () Bool)

(assert (=> d!670953 m!2695181))

(declare-fun m!2695183 () Bool)

(assert (=> d!670953 m!2695183))

(declare-fun m!2695185 () Bool)

(assert (=> b!2265722 m!2695185))

(assert (=> b!2265264 d!670953))

(declare-fun d!670955 () Bool)

(declare-fun lt!842057 () Bool)

(assert (=> d!670955 (= lt!842057 (select (content!3588 rules!1750) otherR!12))))

(declare-fun e!1450940 () Bool)

(assert (=> d!670955 (= lt!842057 e!1450940)))

(declare-fun res!968707 () Bool)

(assert (=> d!670955 (=> (not res!968707) (not e!1450940))))

(assert (=> d!670955 (= res!968707 ((_ is Cons!26923) rules!1750))))

(assert (=> d!670955 (= (contains!4645 rules!1750 otherR!12) lt!842057)))

(declare-fun b!2265723 () Bool)

(declare-fun e!1450939 () Bool)

(assert (=> b!2265723 (= e!1450940 e!1450939)))

(declare-fun res!968706 () Bool)

(assert (=> b!2265723 (=> res!968706 e!1450939)))

(assert (=> b!2265723 (= res!968706 (= (h!32324 rules!1750) otherR!12))))

(declare-fun b!2265724 () Bool)

(assert (=> b!2265724 (= e!1450939 (contains!4645 (t!202015 rules!1750) otherR!12))))

(assert (= (and d!670955 res!968707) b!2265723))

(assert (= (and b!2265723 (not res!968706)) b!2265724))

(assert (=> d!670955 m!2695181))

(declare-fun m!2695187 () Bool)

(assert (=> d!670955 m!2695187))

(declare-fun m!2695189 () Bool)

(assert (=> b!2265724 m!2695189))

(assert (=> b!2265257 d!670955))

(declare-fun d!670957 () Bool)

(assert (=> d!670957 (= (inv!36463 (tag!4777 (rule!6601 (h!32325 tokens!456)))) (= (mod (str.len (value!135998 (tag!4777 (rule!6601 (h!32325 tokens!456))))) 2) 0))))

(assert (=> b!2265236 d!670957))

(declare-fun d!670959 () Bool)

(declare-fun res!968708 () Bool)

(declare-fun e!1450941 () Bool)

(assert (=> d!670959 (=> (not res!968708) (not e!1450941))))

(assert (=> d!670959 (= res!968708 (semiInverseModEq!1726 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toValue!6041 (transformation!4287 (rule!6601 (h!32325 tokens!456))))))))

(assert (=> d!670959 (= (inv!36466 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) e!1450941)))

(declare-fun b!2265725 () Bool)

(assert (=> b!2265725 (= e!1450941 (equivClasses!1645 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toValue!6041 (transformation!4287 (rule!6601 (h!32325 tokens!456))))))))

(assert (= (and d!670959 res!968708) b!2265725))

(declare-fun m!2695191 () Bool)

(assert (=> d!670959 m!2695191))

(declare-fun m!2695193 () Bool)

(assert (=> b!2265725 m!2695193))

(assert (=> b!2265236 d!670959))

(assert (=> b!2265235 d!670887))

(declare-fun b!2265736 () Bool)

(declare-fun e!1450948 () Int)

(assert (=> b!2265736 (= e!1450948 (+ 1 (getIndex!308 (t!202015 rules!1750) otherR!12)))))

(declare-fun b!2265735 () Bool)

(declare-fun e!1450947 () Int)

(assert (=> b!2265735 (= e!1450947 e!1450948)))

(declare-fun c!359862 () Bool)

(assert (=> b!2265735 (= c!359862 (and ((_ is Cons!26923) rules!1750) (not (= (h!32324 rules!1750) otherR!12))))))

(declare-fun d!670961 () Bool)

(declare-fun lt!842060 () Int)

(assert (=> d!670961 (>= lt!842060 0)))

(assert (=> d!670961 (= lt!842060 e!1450947)))

(declare-fun c!359861 () Bool)

(assert (=> d!670961 (= c!359861 (and ((_ is Cons!26923) rules!1750) (= (h!32324 rules!1750) otherR!12)))))

(assert (=> d!670961 (contains!4645 rules!1750 otherR!12)))

(assert (=> d!670961 (= (getIndex!308 rules!1750 otherR!12) lt!842060)))

(declare-fun b!2265737 () Bool)

(assert (=> b!2265737 (= e!1450948 (- 1))))

(declare-fun b!2265734 () Bool)

(assert (=> b!2265734 (= e!1450947 0)))

(assert (= (and d!670961 c!359861) b!2265734))

(assert (= (and d!670961 (not c!359861)) b!2265735))

(assert (= (and b!2265735 c!359862) b!2265736))

(assert (= (and b!2265735 (not c!359862)) b!2265737))

(declare-fun m!2695195 () Bool)

(assert (=> b!2265736 m!2695195))

(assert (=> d!670961 m!2694635))

(assert (=> b!2265256 d!670961))

(declare-fun b!2265740 () Bool)

(declare-fun e!1450950 () Int)

(assert (=> b!2265740 (= e!1450950 (+ 1 (getIndex!308 (t!202015 rules!1750) r!2363)))))

(declare-fun b!2265739 () Bool)

(declare-fun e!1450949 () Int)

(assert (=> b!2265739 (= e!1450949 e!1450950)))

(declare-fun c!359864 () Bool)

(assert (=> b!2265739 (= c!359864 (and ((_ is Cons!26923) rules!1750) (not (= (h!32324 rules!1750) r!2363))))))

(declare-fun d!670963 () Bool)

(declare-fun lt!842061 () Int)

(assert (=> d!670963 (>= lt!842061 0)))

(assert (=> d!670963 (= lt!842061 e!1450949)))

(declare-fun c!359863 () Bool)

(assert (=> d!670963 (= c!359863 (and ((_ is Cons!26923) rules!1750) (= (h!32324 rules!1750) r!2363)))))

(assert (=> d!670963 (contains!4645 rules!1750 r!2363)))

(assert (=> d!670963 (= (getIndex!308 rules!1750 r!2363) lt!842061)))

(declare-fun b!2265741 () Bool)

(assert (=> b!2265741 (= e!1450950 (- 1))))

(declare-fun b!2265738 () Bool)

(assert (=> b!2265738 (= e!1450949 0)))

(assert (= (and d!670963 c!359863) b!2265738))

(assert (= (and d!670963 (not c!359863)) b!2265739))

(assert (= (and b!2265739 c!359864) b!2265740))

(assert (= (and b!2265739 (not c!359864)) b!2265741))

(declare-fun m!2695197 () Bool)

(assert (=> b!2265740 m!2695197))

(assert (=> d!670963 m!2694731))

(assert (=> b!2265256 d!670963))

(declare-fun d!670965 () Bool)

(declare-fun res!968709 () Bool)

(declare-fun e!1450951 () Bool)

(assert (=> d!670965 (=> (not res!968709) (not e!1450951))))

(assert (=> d!670965 (= res!968709 (validRegex!2484 (regex!4287 otherR!12)))))

(assert (=> d!670965 (= (ruleValid!1379 thiss!16613 otherR!12) e!1450951)))

(declare-fun b!2265742 () Bool)

(declare-fun res!968710 () Bool)

(assert (=> b!2265742 (=> (not res!968710) (not e!1450951))))

(assert (=> b!2265742 (= res!968710 (not (nullable!1824 (regex!4287 otherR!12))))))

(declare-fun b!2265743 () Bool)

(assert (=> b!2265743 (= e!1450951 (not (= (tag!4777 otherR!12) (String!29350 ""))))))

(assert (= (and d!670965 res!968709) b!2265742))

(assert (= (and b!2265742 res!968710) b!2265743))

(assert (=> d!670965 m!2694697))

(assert (=> b!2265742 m!2695055))

(assert (=> b!2265256 d!670965))

(declare-fun d!670967 () Bool)

(assert (=> d!670967 (ruleValid!1379 thiss!16613 otherR!12)))

(declare-fun lt!842062 () Unit!39874)

(assert (=> d!670967 (= lt!842062 (choose!13250 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!670967 (contains!4645 rules!1750 otherR!12)))

(assert (=> d!670967 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!786 thiss!16613 otherR!12 rules!1750) lt!842062)))

(declare-fun bs!455702 () Bool)

(assert (= bs!455702 d!670967))

(assert (=> bs!455702 m!2694685))

(declare-fun m!2695199 () Bool)

(assert (=> bs!455702 m!2695199))

(assert (=> bs!455702 m!2694635))

(assert (=> b!2265256 d!670967))

(declare-fun d!670969 () Bool)

(declare-fun res!968715 () Bool)

(declare-fun e!1450954 () Bool)

(assert (=> d!670969 (=> (not res!968715) (not e!1450954))))

(assert (=> d!670969 (= res!968715 (not (isEmpty!15232 (originalCharacters!5057 (h!32325 tokens!456)))))))

(assert (=> d!670969 (= (inv!36467 (h!32325 tokens!456)) e!1450954)))

(declare-fun b!2265748 () Bool)

(declare-fun res!968716 () Bool)

(assert (=> b!2265748 (=> (not res!968716) (not e!1450954))))

(assert (=> b!2265748 (= res!968716 (= (originalCharacters!5057 (h!32325 tokens!456)) (list!10406 (dynLambda!11675 (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (value!135999 (h!32325 tokens!456))))))))

(declare-fun b!2265749 () Bool)

(assert (=> b!2265749 (= e!1450954 (= (size!21109 (h!32325 tokens!456)) (size!21112 (originalCharacters!5057 (h!32325 tokens!456)))))))

(assert (= (and d!670969 res!968715) b!2265748))

(assert (= (and b!2265748 res!968716) b!2265749))

(declare-fun b_lambda!72239 () Bool)

(assert (=> (not b_lambda!72239) (not b!2265748)))

(assert (=> b!2265748 t!202074))

(declare-fun b_and!178289 () Bool)

(assert (= b_and!178281 (and (=> t!202074 result!163802) b_and!178289)))

(assert (=> b!2265748 t!202076))

(declare-fun b_and!178291 () Bool)

(assert (= b_and!178283 (and (=> t!202076 result!163804) b_and!178291)))

(assert (=> b!2265748 t!202078))

(declare-fun b_and!178293 () Bool)

(assert (= b_and!178285 (and (=> t!202078 result!163806) b_and!178293)))

(assert (=> b!2265748 t!202080))

(declare-fun b_and!178295 () Bool)

(assert (= b_and!178287 (and (=> t!202080 result!163808) b_and!178295)))

(declare-fun m!2695201 () Bool)

(assert (=> d!670969 m!2695201))

(assert (=> b!2265748 m!2695135))

(assert (=> b!2265748 m!2695135))

(declare-fun m!2695203 () Bool)

(assert (=> b!2265748 m!2695203))

(declare-fun m!2695205 () Bool)

(assert (=> b!2265749 m!2695205))

(assert (=> b!2265260 d!670969))

(declare-fun b!2265768 () Bool)

(declare-fun e!1450975 () Bool)

(declare-fun e!1450971 () Bool)

(assert (=> b!2265768 (= e!1450975 e!1450971)))

(declare-fun res!968727 () Bool)

(assert (=> b!2265768 (= res!968727 (not (nullable!1824 (reg!6964 (regex!4287 otherR!12)))))))

(assert (=> b!2265768 (=> (not res!968727) (not e!1450971))))

(declare-fun b!2265770 () Bool)

(declare-fun e!1450973 () Bool)

(assert (=> b!2265770 (= e!1450973 e!1450975)))

(declare-fun c!359869 () Bool)

(assert (=> b!2265770 (= c!359869 ((_ is Star!6635) (regex!4287 otherR!12)))))

(declare-fun b!2265771 () Bool)

(declare-fun e!1450970 () Bool)

(declare-fun e!1450972 () Bool)

(assert (=> b!2265771 (= e!1450970 e!1450972)))

(declare-fun res!968728 () Bool)

(assert (=> b!2265771 (=> (not res!968728) (not e!1450972))))

(declare-fun call!135980 () Bool)

(assert (=> b!2265771 (= res!968728 call!135980)))

(declare-fun b!2265772 () Bool)

(declare-fun e!1450974 () Bool)

(assert (=> b!2265772 (= e!1450974 call!135980)))

(declare-fun bm!135974 () Bool)

(declare-fun c!359870 () Bool)

(assert (=> bm!135974 (= call!135980 (validRegex!2484 (ite c!359870 (regTwo!13783 (regex!4287 otherR!12)) (regOne!13782 (regex!4287 otherR!12)))))))

(declare-fun call!135979 () Bool)

(declare-fun bm!135975 () Bool)

(assert (=> bm!135975 (= call!135979 (validRegex!2484 (ite c!359869 (reg!6964 (regex!4287 otherR!12)) (ite c!359870 (regOne!13783 (regex!4287 otherR!12)) (regTwo!13782 (regex!4287 otherR!12))))))))

(declare-fun b!2265773 () Bool)

(declare-fun res!968729 () Bool)

(assert (=> b!2265773 (=> (not res!968729) (not e!1450974))))

(declare-fun call!135981 () Bool)

(assert (=> b!2265773 (= res!968729 call!135981)))

(declare-fun e!1450969 () Bool)

(assert (=> b!2265773 (= e!1450969 e!1450974)))

(declare-fun b!2265769 () Bool)

(declare-fun res!968730 () Bool)

(assert (=> b!2265769 (=> res!968730 e!1450970)))

(assert (=> b!2265769 (= res!968730 (not ((_ is Concat!11085) (regex!4287 otherR!12))))))

(assert (=> b!2265769 (= e!1450969 e!1450970)))

(declare-fun d!670971 () Bool)

(declare-fun res!968731 () Bool)

(assert (=> d!670971 (=> res!968731 e!1450973)))

(assert (=> d!670971 (= res!968731 ((_ is ElementMatch!6635) (regex!4287 otherR!12)))))

(assert (=> d!670971 (= (validRegex!2484 (regex!4287 otherR!12)) e!1450973)))

(declare-fun b!2265774 () Bool)

(assert (=> b!2265774 (= e!1450975 e!1450969)))

(assert (=> b!2265774 (= c!359870 ((_ is Union!6635) (regex!4287 otherR!12)))))

(declare-fun bm!135976 () Bool)

(assert (=> bm!135976 (= call!135981 call!135979)))

(declare-fun b!2265775 () Bool)

(assert (=> b!2265775 (= e!1450971 call!135979)))

(declare-fun b!2265776 () Bool)

(assert (=> b!2265776 (= e!1450972 call!135981)))

(assert (= (and d!670971 (not res!968731)) b!2265770))

(assert (= (and b!2265770 c!359869) b!2265768))

(assert (= (and b!2265770 (not c!359869)) b!2265774))

(assert (= (and b!2265768 res!968727) b!2265775))

(assert (= (and b!2265774 c!359870) b!2265773))

(assert (= (and b!2265774 (not c!359870)) b!2265769))

(assert (= (and b!2265773 res!968729) b!2265772))

(assert (= (and b!2265769 (not res!968730)) b!2265771))

(assert (= (and b!2265771 res!968728) b!2265776))

(assert (= (or b!2265773 b!2265776) bm!135976))

(assert (= (or b!2265772 b!2265771) bm!135974))

(assert (= (or b!2265775 bm!135976) bm!135975))

(declare-fun m!2695207 () Bool)

(assert (=> b!2265768 m!2695207))

(declare-fun m!2695209 () Bool)

(assert (=> bm!135974 m!2695209))

(declare-fun m!2695211 () Bool)

(assert (=> bm!135975 m!2695211))

(assert (=> b!2265259 d!670971))

(declare-fun d!670973 () Bool)

(declare-fun list!10410 (Conc!8723) List!27018)

(assert (=> d!670973 (= (list!10405 (_1!15787 lt!841895)) (list!10410 (c!359774 (_1!15787 lt!841895))))))

(declare-fun bs!455703 () Bool)

(assert (= bs!455703 d!670973))

(declare-fun m!2695213 () Bool)

(assert (=> bs!455703 m!2695213))

(assert (=> b!2265238 d!670973))

(declare-fun d!670975 () Bool)

(assert (=> d!670975 (= (list!10406 (_2!15787 lt!841895)) (list!10408 (c!359772 (_2!15787 lt!841895))))))

(declare-fun bs!455704 () Bool)

(assert (= bs!455704 d!670975))

(declare-fun m!2695215 () Bool)

(assert (=> bs!455704 m!2695215))

(assert (=> b!2265238 d!670975))

(declare-fun b!2265904 () Bool)

(declare-fun e!1451056 () Bool)

(declare-fun lt!842089 () tuple2!26554)

(assert (=> b!2265904 (= e!1451056 (= (_2!15787 lt!842089) (seqFromList!2991 input!1722)))))

(declare-fun b!2265905 () Bool)

(declare-fun res!968769 () Bool)

(declare-fun e!1451055 () Bool)

(assert (=> b!2265905 (=> (not res!968769) (not e!1451055))))

(declare-fun lexList!1070 (LexerInterface!3884 List!27017 List!27016) tuple2!26556)

(assert (=> b!2265905 (= res!968769 (= (list!10405 (_1!15787 lt!842089)) (_1!15788 (lexList!1070 thiss!16613 rules!1750 (list!10406 (seqFromList!2991 input!1722))))))))

(declare-fun b!2265906 () Bool)

(declare-fun e!1451057 () Bool)

(assert (=> b!2265906 (= e!1451056 e!1451057)))

(declare-fun res!968770 () Bool)

(assert (=> b!2265906 (= res!968770 (< (size!21110 (_2!15787 lt!842089)) (size!21110 (seqFromList!2991 input!1722))))))

(assert (=> b!2265906 (=> (not res!968770) (not e!1451057))))

(declare-fun b!2265907 () Bool)

(declare-fun isEmpty!15236 (BalanceConc!17174) Bool)

(assert (=> b!2265907 (= e!1451057 (not (isEmpty!15236 (_1!15787 lt!842089))))))

(declare-fun b!2265908 () Bool)

(assert (=> b!2265908 (= e!1451055 (= (list!10406 (_2!15787 lt!842089)) (_2!15788 (lexList!1070 thiss!16613 rules!1750 (list!10406 (seqFromList!2991 input!1722))))))))

(declare-fun d!670977 () Bool)

(assert (=> d!670977 e!1451055))

(declare-fun res!968768 () Bool)

(assert (=> d!670977 (=> (not res!968768) (not e!1451055))))

(assert (=> d!670977 (= res!968768 e!1451056)))

(declare-fun c!359887 () Bool)

(declare-fun size!21116 (BalanceConc!17174) Int)

(assert (=> d!670977 (= c!359887 (> (size!21116 (_1!15787 lt!842089)) 0))))

(declare-fun lexTailRecV2!745 (LexerInterface!3884 List!27017 BalanceConc!17172 BalanceConc!17172 BalanceConc!17172 BalanceConc!17174) tuple2!26554)

(assert (=> d!670977 (= lt!842089 (lexTailRecV2!745 thiss!16613 rules!1750 (seqFromList!2991 input!1722) (BalanceConc!17173 Empty!8722) (seqFromList!2991 input!1722) (BalanceConc!17175 Empty!8723)))))

(assert (=> d!670977 (= (lex!1723 thiss!16613 rules!1750 (seqFromList!2991 input!1722)) lt!842089)))

(assert (= (and d!670977 c!359887) b!2265906))

(assert (= (and d!670977 (not c!359887)) b!2265904))

(assert (= (and b!2265906 res!968770) b!2265907))

(assert (= (and d!670977 res!968768) b!2265905))

(assert (= (and b!2265905 res!968769) b!2265908))

(declare-fun m!2695285 () Bool)

(assert (=> b!2265906 m!2695285))

(assert (=> b!2265906 m!2694707))

(declare-fun m!2695287 () Bool)

(assert (=> b!2265906 m!2695287))

(declare-fun m!2695289 () Bool)

(assert (=> b!2265907 m!2695289))

(declare-fun m!2695291 () Bool)

(assert (=> b!2265905 m!2695291))

(assert (=> b!2265905 m!2694707))

(declare-fun m!2695293 () Bool)

(assert (=> b!2265905 m!2695293))

(assert (=> b!2265905 m!2695293))

(declare-fun m!2695295 () Bool)

(assert (=> b!2265905 m!2695295))

(declare-fun m!2695297 () Bool)

(assert (=> d!670977 m!2695297))

(assert (=> d!670977 m!2694707))

(assert (=> d!670977 m!2694707))

(declare-fun m!2695299 () Bool)

(assert (=> d!670977 m!2695299))

(declare-fun m!2695301 () Bool)

(assert (=> b!2265908 m!2695301))

(assert (=> b!2265908 m!2694707))

(assert (=> b!2265908 m!2695293))

(assert (=> b!2265908 m!2695293))

(assert (=> b!2265908 m!2695295))

(assert (=> b!2265238 d!670977))

(declare-fun d!670993 () Bool)

(assert (=> d!670993 (= (seqFromList!2991 input!1722) (fromListB!1335 input!1722))))

(declare-fun bs!455706 () Bool)

(assert (= bs!455706 d!670993))

(declare-fun m!2695303 () Bool)

(assert (=> bs!455706 m!2695303))

(assert (=> b!2265238 d!670993))

(declare-fun d!670995 () Bool)

(declare-fun res!968773 () Bool)

(declare-fun e!1451060 () Bool)

(assert (=> d!670995 (=> (not res!968773) (not e!1451060))))

(declare-fun rulesValid!1569 (LexerInterface!3884 List!27017) Bool)

(assert (=> d!670995 (= res!968773 (rulesValid!1569 thiss!16613 rules!1750))))

(assert (=> d!670995 (= (rulesInvariant!3386 thiss!16613 rules!1750) e!1451060)))

(declare-fun b!2265911 () Bool)

(declare-datatypes ((List!27019 0))(
  ( (Nil!26925) (Cons!26925 (h!32326 String!29349) (t!202113 List!27019)) )
))
(declare-fun noDuplicateTag!1567 (LexerInterface!3884 List!27017 List!27019) Bool)

(assert (=> b!2265911 (= e!1451060 (noDuplicateTag!1567 thiss!16613 rules!1750 Nil!26925))))

(assert (= (and d!670995 res!968773) b!2265911))

(declare-fun m!2695305 () Bool)

(assert (=> d!670995 m!2695305))

(declare-fun m!2695307 () Bool)

(assert (=> b!2265911 m!2695307))

(assert (=> b!2265237 d!670995))

(declare-fun d!670997 () Bool)

(declare-fun e!1451064 () Bool)

(assert (=> d!670997 e!1451064))

(declare-fun c!359889 () Bool)

(assert (=> d!670997 (= c!359889 ((_ is EmptyExpr!6635) (regex!4287 r!2363)))))

(declare-fun lt!842090 () Bool)

(declare-fun e!1451062 () Bool)

(assert (=> d!670997 (= lt!842090 e!1451062)))

(declare-fun c!359888 () Bool)

(assert (=> d!670997 (= c!359888 (isEmpty!15232 (list!10406 (charsOf!2675 (head!4872 tokens!456)))))))

(assert (=> d!670997 (validRegex!2484 (regex!4287 r!2363))))

(assert (=> d!670997 (= (matchR!2896 (regex!4287 r!2363) (list!10406 (charsOf!2675 (head!4872 tokens!456)))) lt!842090)))

(declare-fun b!2265912 () Bool)

(declare-fun e!1451065 () Bool)

(declare-fun e!1451063 () Bool)

(assert (=> b!2265912 (= e!1451065 e!1451063)))

(declare-fun res!968777 () Bool)

(assert (=> b!2265912 (=> (not res!968777) (not e!1451063))))

(assert (=> b!2265912 (= res!968777 (not lt!842090))))

(declare-fun b!2265913 () Bool)

(declare-fun call!135982 () Bool)

(assert (=> b!2265913 (= e!1451064 (= lt!842090 call!135982))))

(declare-fun b!2265914 () Bool)

(assert (=> b!2265914 (= e!1451062 (matchR!2896 (derivativeStep!1486 (regex!4287 r!2363) (head!4874 (list!10406 (charsOf!2675 (head!4872 tokens!456))))) (tail!3267 (list!10406 (charsOf!2675 (head!4872 tokens!456))))))))

(declare-fun b!2265915 () Bool)

(declare-fun res!968780 () Bool)

(assert (=> b!2265915 (=> res!968780 e!1451065)))

(assert (=> b!2265915 (= res!968780 (not ((_ is ElementMatch!6635) (regex!4287 r!2363))))))

(declare-fun e!1451066 () Bool)

(assert (=> b!2265915 (= e!1451066 e!1451065)))

(declare-fun b!2265916 () Bool)

(assert (=> b!2265916 (= e!1451062 (nullable!1824 (regex!4287 r!2363)))))

(declare-fun b!2265917 () Bool)

(assert (=> b!2265917 (= e!1451066 (not lt!842090))))

(declare-fun b!2265918 () Bool)

(declare-fun e!1451067 () Bool)

(assert (=> b!2265918 (= e!1451063 e!1451067)))

(declare-fun res!968775 () Bool)

(assert (=> b!2265918 (=> res!968775 e!1451067)))

(assert (=> b!2265918 (= res!968775 call!135982)))

(declare-fun bm!135977 () Bool)

(assert (=> bm!135977 (= call!135982 (isEmpty!15232 (list!10406 (charsOf!2675 (head!4872 tokens!456)))))))

(declare-fun b!2265919 () Bool)

(declare-fun res!968776 () Bool)

(assert (=> b!2265919 (=> res!968776 e!1451065)))

(declare-fun e!1451061 () Bool)

(assert (=> b!2265919 (= res!968776 e!1451061)))

(declare-fun res!968779 () Bool)

(assert (=> b!2265919 (=> (not res!968779) (not e!1451061))))

(assert (=> b!2265919 (= res!968779 lt!842090)))

(declare-fun b!2265920 () Bool)

(declare-fun res!968781 () Bool)

(assert (=> b!2265920 (=> (not res!968781) (not e!1451061))))

(assert (=> b!2265920 (= res!968781 (isEmpty!15232 (tail!3267 (list!10406 (charsOf!2675 (head!4872 tokens!456))))))))

(declare-fun b!2265921 () Bool)

(declare-fun res!968778 () Bool)

(assert (=> b!2265921 (=> (not res!968778) (not e!1451061))))

(assert (=> b!2265921 (= res!968778 (not call!135982))))

(declare-fun b!2265922 () Bool)

(declare-fun res!968774 () Bool)

(assert (=> b!2265922 (=> res!968774 e!1451067)))

(assert (=> b!2265922 (= res!968774 (not (isEmpty!15232 (tail!3267 (list!10406 (charsOf!2675 (head!4872 tokens!456)))))))))

(declare-fun b!2265923 () Bool)

(assert (=> b!2265923 (= e!1451061 (= (head!4874 (list!10406 (charsOf!2675 (head!4872 tokens!456)))) (c!359773 (regex!4287 r!2363))))))

(declare-fun b!2265924 () Bool)

(assert (=> b!2265924 (= e!1451064 e!1451066)))

(declare-fun c!359890 () Bool)

(assert (=> b!2265924 (= c!359890 ((_ is EmptyLang!6635) (regex!4287 r!2363)))))

(declare-fun b!2265925 () Bool)

(assert (=> b!2265925 (= e!1451067 (not (= (head!4874 (list!10406 (charsOf!2675 (head!4872 tokens!456)))) (c!359773 (regex!4287 r!2363)))))))

(assert (= (and d!670997 c!359888) b!2265916))

(assert (= (and d!670997 (not c!359888)) b!2265914))

(assert (= (and d!670997 c!359889) b!2265913))

(assert (= (and d!670997 (not c!359889)) b!2265924))

(assert (= (and b!2265924 c!359890) b!2265917))

(assert (= (and b!2265924 (not c!359890)) b!2265915))

(assert (= (and b!2265915 (not res!968780)) b!2265919))

(assert (= (and b!2265919 res!968779) b!2265921))

(assert (= (and b!2265921 res!968778) b!2265920))

(assert (= (and b!2265920 res!968781) b!2265923))

(assert (= (and b!2265919 (not res!968776)) b!2265912))

(assert (= (and b!2265912 res!968777) b!2265918))

(assert (= (and b!2265918 (not res!968775)) b!2265922))

(assert (= (and b!2265922 (not res!968774)) b!2265925))

(assert (= (or b!2265913 b!2265918 b!2265921) bm!135977))

(assert (=> b!2265922 m!2694691))

(declare-fun m!2695309 () Bool)

(assert (=> b!2265922 m!2695309))

(assert (=> b!2265922 m!2695309))

(declare-fun m!2695311 () Bool)

(assert (=> b!2265922 m!2695311))

(assert (=> b!2265925 m!2694691))

(declare-fun m!2695313 () Bool)

(assert (=> b!2265925 m!2695313))

(assert (=> b!2265920 m!2694691))

(assert (=> b!2265920 m!2695309))

(assert (=> b!2265920 m!2695309))

(assert (=> b!2265920 m!2695311))

(assert (=> d!670997 m!2694691))

(declare-fun m!2695315 () Bool)

(assert (=> d!670997 m!2695315))

(assert (=> d!670997 m!2694747))

(assert (=> b!2265914 m!2694691))

(assert (=> b!2265914 m!2695313))

(assert (=> b!2265914 m!2695313))

(declare-fun m!2695317 () Bool)

(assert (=> b!2265914 m!2695317))

(assert (=> b!2265914 m!2694691))

(assert (=> b!2265914 m!2695309))

(assert (=> b!2265914 m!2695317))

(assert (=> b!2265914 m!2695309))

(declare-fun m!2695319 () Bool)

(assert (=> b!2265914 m!2695319))

(assert (=> b!2265916 m!2694753))

(assert (=> b!2265923 m!2694691))

(assert (=> b!2265923 m!2695313))

(assert (=> bm!135977 m!2694691))

(assert (=> bm!135977 m!2695315))

(assert (=> b!2265252 d!670997))

(declare-fun d!670999 () Bool)

(assert (=> d!670999 (= (list!10406 (charsOf!2675 (head!4872 tokens!456))) (list!10408 (c!359772 (charsOf!2675 (head!4872 tokens!456)))))))

(declare-fun bs!455707 () Bool)

(assert (= bs!455707 d!670999))

(declare-fun m!2695321 () Bool)

(assert (=> bs!455707 m!2695321))

(assert (=> b!2265252 d!670999))

(assert (=> b!2265252 d!670885))

(assert (=> b!2265252 d!670887))

(declare-fun d!671001 () Bool)

(assert (=> d!671001 (= (inv!36463 (tag!4777 otherR!12)) (= (mod (str.len (value!135998 (tag!4777 otherR!12))) 2) 0))))

(assert (=> b!2265251 d!671001))

(declare-fun d!671003 () Bool)

(declare-fun res!968782 () Bool)

(declare-fun e!1451068 () Bool)

(assert (=> d!671003 (=> (not res!968782) (not e!1451068))))

(assert (=> d!671003 (= res!968782 (semiInverseModEq!1726 (toChars!5900 (transformation!4287 otherR!12)) (toValue!6041 (transformation!4287 otherR!12))))))

(assert (=> d!671003 (= (inv!36466 (transformation!4287 otherR!12)) e!1451068)))

(declare-fun b!2265926 () Bool)

(assert (=> b!2265926 (= e!1451068 (equivClasses!1645 (toChars!5900 (transformation!4287 otherR!12)) (toValue!6041 (transformation!4287 otherR!12))))))

(assert (= (and d!671003 res!968782) b!2265926))

(declare-fun m!2695323 () Bool)

(assert (=> d!671003 m!2695323))

(declare-fun m!2695325 () Bool)

(assert (=> b!2265926 m!2695325))

(assert (=> b!2265251 d!671003))

(declare-fun d!671005 () Bool)

(assert (=> d!671005 (= (inv!36463 (tag!4777 (h!32324 rules!1750))) (= (mod (str.len (value!135998 (tag!4777 (h!32324 rules!1750)))) 2) 0))))

(assert (=> b!2265234 d!671005))

(declare-fun d!671007 () Bool)

(declare-fun res!968783 () Bool)

(declare-fun e!1451069 () Bool)

(assert (=> d!671007 (=> (not res!968783) (not e!1451069))))

(assert (=> d!671007 (= res!968783 (semiInverseModEq!1726 (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toValue!6041 (transformation!4287 (h!32324 rules!1750)))))))

(assert (=> d!671007 (= (inv!36466 (transformation!4287 (h!32324 rules!1750))) e!1451069)))

(declare-fun b!2265927 () Bool)

(assert (=> b!2265927 (= e!1451069 (equivClasses!1645 (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toValue!6041 (transformation!4287 (h!32324 rules!1750)))))))

(assert (= (and d!671007 res!968783) b!2265927))

(declare-fun m!2695327 () Bool)

(assert (=> d!671007 m!2695327))

(declare-fun m!2695329 () Bool)

(assert (=> b!2265927 m!2695329))

(assert (=> b!2265234 d!671007))

(declare-fun b!2265938 () Bool)

(declare-fun b_free!67125 () Bool)

(declare-fun b_next!67829 () Bool)

(assert (=> b!2265938 (= b_free!67125 (not b_next!67829))))

(declare-fun tb!134383 () Bool)

(declare-fun t!202098 () Bool)

(assert (=> (and b!2265938 (= (toValue!6041 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toValue!6041 (transformation!4287 r!2363))) t!202098) tb!134383))

(declare-fun result!163836 () Bool)

(assert (= result!163836 result!163738))

(assert (=> d!670793 t!202098))

(assert (=> d!670825 t!202098))

(declare-fun tp!716813 () Bool)

(declare-fun b_and!178305 () Bool)

(assert (=> b!2265938 (= tp!716813 (and (=> t!202098 result!163836) b_and!178305))))

(declare-fun b_free!67127 () Bool)

(declare-fun b_next!67831 () Bool)

(assert (=> b!2265938 (= b_free!67127 (not b_next!67831))))

(declare-fun tb!134385 () Bool)

(declare-fun t!202100 () Bool)

(assert (=> (and b!2265938 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 r!2363))) t!202100) tb!134385))

(declare-fun result!163838 () Bool)

(assert (= result!163838 result!163784))

(assert (=> d!670825 t!202100))

(declare-fun tb!134387 () Bool)

(declare-fun t!202102 () Bool)

(assert (=> (and b!2265938 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202102) tb!134387))

(declare-fun result!163840 () Bool)

(assert (= result!163840 result!163794))

(assert (=> d!670885 t!202102))

(declare-fun tb!134389 () Bool)

(declare-fun t!202104 () Bool)

(assert (=> (and b!2265938 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202104) tb!134389))

(declare-fun result!163842 () Bool)

(assert (= result!163842 result!163802))

(assert (=> d!670923 t!202104))

(assert (=> b!2265748 t!202104))

(declare-fun b_and!178307 () Bool)

(declare-fun tp!716815 () Bool)

(assert (=> b!2265938 (= tp!716815 (and (=> t!202100 result!163838) (=> t!202102 result!163840) (=> t!202104 result!163842) b_and!178307))))

(declare-fun e!1451080 () Bool)

(assert (=> b!2265938 (= e!1451080 (and tp!716813 tp!716815))))

(declare-fun e!1451078 () Bool)

(declare-fun tp!716816 () Bool)

(declare-fun b!2265937 () Bool)

(assert (=> b!2265937 (= e!1451078 (and tp!716816 (inv!36463 (tag!4777 (h!32324 (t!202015 rules!1750)))) (inv!36466 (transformation!4287 (h!32324 (t!202015 rules!1750)))) e!1451080))))

(declare-fun b!2265936 () Bool)

(declare-fun e!1451079 () Bool)

(declare-fun tp!716814 () Bool)

(assert (=> b!2265936 (= e!1451079 (and e!1451078 tp!716814))))

(assert (=> b!2265258 (= tp!716716 e!1451079)))

(assert (= b!2265937 b!2265938))

(assert (= b!2265936 b!2265937))

(assert (= (and b!2265258 ((_ is Cons!26923) (t!202015 rules!1750))) b!2265936))

(declare-fun m!2695331 () Bool)

(assert (=> b!2265937 m!2695331))

(declare-fun m!2695333 () Bool)

(assert (=> b!2265937 m!2695333))

(declare-fun b!2265951 () Bool)

(declare-fun e!1451084 () Bool)

(declare-fun tp!716829 () Bool)

(assert (=> b!2265951 (= e!1451084 tp!716829)))

(assert (=> b!2265236 (= tp!716720 e!1451084)))

(declare-fun b!2265950 () Bool)

(declare-fun tp!716827 () Bool)

(declare-fun tp!716830 () Bool)

(assert (=> b!2265950 (= e!1451084 (and tp!716827 tp!716830))))

(declare-fun b!2265949 () Bool)

(assert (=> b!2265949 (= e!1451084 tp_is_empty!10491)))

(declare-fun b!2265952 () Bool)

(declare-fun tp!716828 () Bool)

(declare-fun tp!716831 () Bool)

(assert (=> b!2265952 (= e!1451084 (and tp!716828 tp!716831))))

(assert (= (and b!2265236 ((_ is ElementMatch!6635) (regex!4287 (rule!6601 (h!32325 tokens!456))))) b!2265949))

(assert (= (and b!2265236 ((_ is Concat!11085) (regex!4287 (rule!6601 (h!32325 tokens!456))))) b!2265950))

(assert (= (and b!2265236 ((_ is Star!6635) (regex!4287 (rule!6601 (h!32325 tokens!456))))) b!2265951))

(assert (= (and b!2265236 ((_ is Union!6635) (regex!4287 (rule!6601 (h!32325 tokens!456))))) b!2265952))

(declare-fun b!2265957 () Bool)

(declare-fun e!1451087 () Bool)

(declare-fun tp!716834 () Bool)

(assert (=> b!2265957 (= e!1451087 (and tp_is_empty!10491 tp!716834))))

(assert (=> b!2265271 (= tp!716726 e!1451087)))

(assert (= (and b!2265271 ((_ is Cons!26922) (t!202014 input!1722))) b!2265957))

(declare-fun b!2265971 () Bool)

(declare-fun b_free!67129 () Bool)

(declare-fun b_next!67833 () Bool)

(assert (=> b!2265971 (= b_free!67129 (not b_next!67833))))

(declare-fun tb!134391 () Bool)

(declare-fun t!202106 () Bool)

(assert (=> (and b!2265971 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toValue!6041 (transformation!4287 r!2363))) t!202106) tb!134391))

(declare-fun result!163850 () Bool)

(assert (= result!163850 result!163738))

(assert (=> d!670793 t!202106))

(assert (=> d!670825 t!202106))

(declare-fun tp!716846 () Bool)

(declare-fun b_and!178309 () Bool)

(assert (=> b!2265971 (= tp!716846 (and (=> t!202106 result!163850) b_and!178309))))

(declare-fun b_free!67131 () Bool)

(declare-fun b_next!67835 () Bool)

(assert (=> b!2265971 (= b_free!67131 (not b_next!67835))))

(declare-fun tb!134393 () Bool)

(declare-fun t!202108 () Bool)

(assert (=> (and b!2265971 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 r!2363))) t!202108) tb!134393))

(declare-fun result!163852 () Bool)

(assert (= result!163852 result!163784))

(assert (=> d!670825 t!202108))

(declare-fun t!202110 () Bool)

(declare-fun tb!134395 () Bool)

(assert (=> (and b!2265971 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 (rule!6601 (head!4872 tokens!456))))) t!202110) tb!134395))

(declare-fun result!163854 () Bool)

(assert (= result!163854 result!163794))

(assert (=> d!670885 t!202110))

(declare-fun t!202112 () Bool)

(declare-fun tb!134397 () Bool)

(assert (=> (and b!2265971 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456))))) t!202112) tb!134397))

(declare-fun result!163856 () Bool)

(assert (= result!163856 result!163802))

(assert (=> d!670923 t!202112))

(assert (=> b!2265748 t!202112))

(declare-fun b_and!178311 () Bool)

(declare-fun tp!716847 () Bool)

(assert (=> b!2265971 (= tp!716847 (and (=> t!202108 result!163852) (=> t!202110 result!163854) (=> t!202112 result!163856) b_and!178311))))

(declare-fun e!1451100 () Bool)

(assert (=> b!2265971 (= e!1451100 (and tp!716846 tp!716847))))

(declare-fun e!1451104 () Bool)

(declare-fun e!1451105 () Bool)

(declare-fun tp!716848 () Bool)

(declare-fun b!2265969 () Bool)

(assert (=> b!2265969 (= e!1451104 (and (inv!21 (value!135999 (h!32325 (t!202016 tokens!456)))) e!1451105 tp!716848))))

(declare-fun tp!716845 () Bool)

(declare-fun b!2265968 () Bool)

(declare-fun e!1451101 () Bool)

(assert (=> b!2265968 (= e!1451101 (and (inv!36467 (h!32325 (t!202016 tokens!456))) e!1451104 tp!716845))))

(assert (=> b!2265260 (= tp!716717 e!1451101)))

(declare-fun b!2265970 () Bool)

(declare-fun tp!716849 () Bool)

(assert (=> b!2265970 (= e!1451105 (and tp!716849 (inv!36463 (tag!4777 (rule!6601 (h!32325 (t!202016 tokens!456))))) (inv!36466 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) e!1451100))))

(assert (= b!2265970 b!2265971))

(assert (= b!2265969 b!2265970))

(assert (= b!2265968 b!2265969))

(assert (= (and b!2265260 ((_ is Cons!26924) (t!202016 tokens!456))) b!2265968))

(declare-fun m!2695335 () Bool)

(assert (=> b!2265969 m!2695335))

(declare-fun m!2695337 () Bool)

(assert (=> b!2265968 m!2695337))

(declare-fun m!2695339 () Bool)

(assert (=> b!2265970 m!2695339))

(declare-fun m!2695341 () Bool)

(assert (=> b!2265970 m!2695341))

(declare-fun b!2265974 () Bool)

(declare-fun e!1451106 () Bool)

(declare-fun tp!716852 () Bool)

(assert (=> b!2265974 (= e!1451106 tp!716852)))

(assert (=> b!2265251 (= tp!716727 e!1451106)))

(declare-fun b!2265973 () Bool)

(declare-fun tp!716850 () Bool)

(declare-fun tp!716853 () Bool)

(assert (=> b!2265973 (= e!1451106 (and tp!716850 tp!716853))))

(declare-fun b!2265972 () Bool)

(assert (=> b!2265972 (= e!1451106 tp_is_empty!10491)))

(declare-fun b!2265975 () Bool)

(declare-fun tp!716851 () Bool)

(declare-fun tp!716854 () Bool)

(assert (=> b!2265975 (= e!1451106 (and tp!716851 tp!716854))))

(assert (= (and b!2265251 ((_ is ElementMatch!6635) (regex!4287 otherR!12))) b!2265972))

(assert (= (and b!2265251 ((_ is Concat!11085) (regex!4287 otherR!12))) b!2265973))

(assert (= (and b!2265251 ((_ is Star!6635) (regex!4287 otherR!12))) b!2265974))

(assert (= (and b!2265251 ((_ is Union!6635) (regex!4287 otherR!12))) b!2265975))

(declare-fun b!2265978 () Bool)

(declare-fun e!1451107 () Bool)

(declare-fun tp!716857 () Bool)

(assert (=> b!2265978 (= e!1451107 tp!716857)))

(assert (=> b!2265262 (= tp!716718 e!1451107)))

(declare-fun b!2265977 () Bool)

(declare-fun tp!716855 () Bool)

(declare-fun tp!716858 () Bool)

(assert (=> b!2265977 (= e!1451107 (and tp!716855 tp!716858))))

(declare-fun b!2265976 () Bool)

(assert (=> b!2265976 (= e!1451107 tp_is_empty!10491)))

(declare-fun b!2265979 () Bool)

(declare-fun tp!716856 () Bool)

(declare-fun tp!716859 () Bool)

(assert (=> b!2265979 (= e!1451107 (and tp!716856 tp!716859))))

(assert (= (and b!2265262 ((_ is ElementMatch!6635) (regex!4287 r!2363))) b!2265976))

(assert (= (and b!2265262 ((_ is Concat!11085) (regex!4287 r!2363))) b!2265977))

(assert (= (and b!2265262 ((_ is Star!6635) (regex!4287 r!2363))) b!2265978))

(assert (= (and b!2265262 ((_ is Union!6635) (regex!4287 r!2363))) b!2265979))

(declare-fun b!2265980 () Bool)

(declare-fun e!1451108 () Bool)

(declare-fun tp!716860 () Bool)

(assert (=> b!2265980 (= e!1451108 (and tp_is_empty!10491 tp!716860))))

(assert (=> b!2265240 (= tp!716719 e!1451108)))

(assert (= (and b!2265240 ((_ is Cons!26922) (originalCharacters!5057 (h!32325 tokens!456)))) b!2265980))

(declare-fun b!2265981 () Bool)

(declare-fun e!1451109 () Bool)

(declare-fun tp!716861 () Bool)

(assert (=> b!2265981 (= e!1451109 (and tp_is_empty!10491 tp!716861))))

(assert (=> b!2265255 (= tp!716721 e!1451109)))

(assert (= (and b!2265255 ((_ is Cons!26922) (t!202014 otherP!12))) b!2265981))

(declare-fun b!2265984 () Bool)

(declare-fun e!1451110 () Bool)

(declare-fun tp!716864 () Bool)

(assert (=> b!2265984 (= e!1451110 tp!716864)))

(assert (=> b!2265234 (= tp!716725 e!1451110)))

(declare-fun b!2265983 () Bool)

(declare-fun tp!716862 () Bool)

(declare-fun tp!716865 () Bool)

(assert (=> b!2265983 (= e!1451110 (and tp!716862 tp!716865))))

(declare-fun b!2265982 () Bool)

(assert (=> b!2265982 (= e!1451110 tp_is_empty!10491)))

(declare-fun b!2265985 () Bool)

(declare-fun tp!716863 () Bool)

(declare-fun tp!716866 () Bool)

(assert (=> b!2265985 (= e!1451110 (and tp!716863 tp!716866))))

(assert (= (and b!2265234 ((_ is ElementMatch!6635) (regex!4287 (h!32324 rules!1750)))) b!2265982))

(assert (= (and b!2265234 ((_ is Concat!11085) (regex!4287 (h!32324 rules!1750)))) b!2265983))

(assert (= (and b!2265234 ((_ is Star!6635) (regex!4287 (h!32324 rules!1750)))) b!2265984))

(assert (= (and b!2265234 ((_ is Union!6635) (regex!4287 (h!32324 rules!1750)))) b!2265985))

(declare-fun b!2265986 () Bool)

(declare-fun e!1451111 () Bool)

(declare-fun tp!716867 () Bool)

(assert (=> b!2265986 (= e!1451111 (and tp_is_empty!10491 tp!716867))))

(assert (=> b!2265253 (= tp!716728 e!1451111)))

(assert (= (and b!2265253 ((_ is Cons!26922) (t!202014 suffix!886))) b!2265986))

(declare-fun b_lambda!72251 () Bool)

(assert (= b_lambda!72239 (or (and b!2265938 b_free!67127 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265243 b_free!67107 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265239 b_free!67111) (and b!2265971 b_free!67131 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265266 b_free!67103 (= (toChars!5900 (transformation!4287 r!2363)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265270 b_free!67115 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) b_lambda!72251)))

(declare-fun b_lambda!72253 () Bool)

(assert (= b_lambda!72237 (or (and b!2265938 b_free!67127 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265243 b_free!67107 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265239 b_free!67111) (and b!2265971 b_free!67131 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265266 b_free!67103 (= (toChars!5900 (transformation!4287 r!2363)) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) (and b!2265270 b_free!67115 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))))) b_lambda!72253)))

(declare-fun b_lambda!72255 () Bool)

(assert (= b_lambda!72217 (or (and b!2265971 b_free!67129 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265243 b_free!67105 (= (toValue!6041 (transformation!4287 otherR!12)) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265266 b_free!67101) (and b!2265938 b_free!67125 (= (toValue!6041 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265270 b_free!67113 (= (toValue!6041 (transformation!4287 (h!32324 rules!1750))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265239 b_free!67109 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toValue!6041 (transformation!4287 r!2363)))) b_lambda!72255)))

(declare-fun b_lambda!72257 () Bool)

(assert (= b_lambda!72231 (or (and b!2265971 b_free!67129 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265243 b_free!67105 (= (toValue!6041 (transformation!4287 otherR!12)) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265266 b_free!67101) (and b!2265938 b_free!67125 (= (toValue!6041 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265270 b_free!67113 (= (toValue!6041 (transformation!4287 (h!32324 rules!1750))) (toValue!6041 (transformation!4287 r!2363)))) (and b!2265239 b_free!67109 (= (toValue!6041 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toValue!6041 (transformation!4287 r!2363)))) b_lambda!72257)))

(declare-fun b_lambda!72259 () Bool)

(assert (= b_lambda!72229 (or (and b!2265266 b_free!67103) (and b!2265270 b_free!67115 (= (toChars!5900 (transformation!4287 (h!32324 rules!1750))) (toChars!5900 (transformation!4287 r!2363)))) (and b!2265243 b_free!67107 (= (toChars!5900 (transformation!4287 otherR!12)) (toChars!5900 (transformation!4287 r!2363)))) (and b!2265971 b_free!67131 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 (t!202016 tokens!456))))) (toChars!5900 (transformation!4287 r!2363)))) (and b!2265239 b_free!67111 (= (toChars!5900 (transformation!4287 (rule!6601 (h!32325 tokens!456)))) (toChars!5900 (transformation!4287 r!2363)))) (and b!2265938 b_free!67127 (= (toChars!5900 (transformation!4287 (h!32324 (t!202015 rules!1750)))) (toChars!5900 (transformation!4287 r!2363)))) b_lambda!72259)))

(check-sat (not b!2265952) (not b_next!67809) (not d!670889) (not b_next!67835) (not b!2265444) (not d!670943) (not d!670961) (not b_next!67829) (not b!2265434) (not b!2265914) (not d!670975) (not b!2265742) (not b!2265648) (not b!2265725) (not b!2265740) (not d!670993) (not b!2265594) (not b!2265724) (not tb!134359) (not b!2265937) (not d!670819) (not b!2265969) (not d!670825) (not b!2265979) (not d!670791) (not b!2265749) (not d!670965) (not b!2265707) (not b!2265682) (not b!2265595) (not b!2265715) (not b!2265916) (not tb!134303) (not d!670785) b_and!178259 (not bm!135975) (not b!2265600) b_and!178257 (not b_lambda!72253) b_and!178289 (not d!670895) (not b!2265908) (not d!670959) (not b_next!67805) (not b!2265906) (not b!2265441) (not b!2265985) b_and!178307 (not b!2265706) (not b!2265314) (not b!2265981) (not b!2265905) (not d!671007) (not b!2265380) (not b!2265303) (not b!2265907) (not b!2265652) (not b!2265649) (not b!2265980) (not b!2265974) (not b!2265653) (not b!2265439) (not b!2265911) (not b!2265442) (not d!670973) (not d!670999) (not b_lambda!72257) (not b!2265583) (not b_lambda!72233) b_and!178311 (not b!2265312) (not b_next!67833) (not b!2265655) (not d!670803) (not b!2265978) (not b!2265695) (not b!2265986) (not bm!135974) (not b!2265305) (not bm!135946) (not d!670947) (not d!670885) (not b!2265927) (not d!670923) (not b!2265920) (not d!671003) (not bm!135977) (not b!2265309) (not b!2265708) (not b!2265651) (not b_next!67831) (not d!670997) (not b!2265722) (not d!670963) (not b!2265975) (not d!670891) (not b!2265437) (not b!2265685) (not b!2265678) (not b!2265588) (not b_lambda!72251) (not b!2265922) (not b_next!67813) (not b!2265599) (not d!670913) (not b!2265679) b_and!178261 (not d!670995) (not b!2265686) (not d!670977) (not b!2265445) (not tb!134351) (not b!2265768) (not b!2265692) (not d!670969) (not b!2265654) (not b!2265983) (not b!2265592) (not d!670935) (not b!2265446) (not b_lambda!72255) (not b!2265923) (not d!670967) (not d!670929) (not d!670925) (not b!2265668) (not b!2265984) (not bm!135964) (not b!2265684) (not d!670955) (not b!2265582) (not b!2265977) (not d!670909) (not b!2265736) b_and!178305 (not b!2265973) (not b!2265950) b_and!178263 (not b!2265926) (not d!670949) (not b_next!67811) b_and!178293 (not b_next!67815) (not b!2265748) (not bm!135967) (not b!2265311) b_and!178291 (not d!670901) (not b!2265606) (not b_next!67817) (not d!670823) (not b!2265647) (not b!2265957) (not b!2265586) (not tb!134343) (not d!670953) (not b!2265968) (not b_next!67807) (not d!670883) (not b_lambda!72259) (not b!2265435) b_and!178295 (not b!2265936) tp_is_empty!10491 (not b!2265597) (not b!2265613) (not b_next!67819) (not b!2265970) (not b!2265440) (not b!2265379) (not b!2265381) (not b!2265601) (not b!2265925) b_and!178309 (not b!2265436) (not b!2265951))
(check-sat (not b_next!67829) b_and!178259 b_and!178307 (not b_next!67831) (not b_next!67813) b_and!178261 (not b_next!67807) b_and!178295 (not b_next!67819) b_and!178309 (not b_next!67809) (not b_next!67835) b_and!178257 (not b_next!67805) b_and!178289 b_and!178311 (not b_next!67833) b_and!178305 b_and!178263 (not b_next!67811) b_and!178293 (not b_next!67815) b_and!178291 (not b_next!67817))

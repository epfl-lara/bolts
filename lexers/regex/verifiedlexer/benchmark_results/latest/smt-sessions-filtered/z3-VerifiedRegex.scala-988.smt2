; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49652 () Bool)

(assert start!49652)

(declare-fun b!537426 () Bool)

(declare-fun b_free!14737 () Bool)

(declare-fun b_next!14753 () Bool)

(assert (=> b!537426 (= b_free!14737 (not b_next!14753))))

(declare-fun tp!171440 () Bool)

(declare-fun b_and!52571 () Bool)

(assert (=> b!537426 (= tp!171440 b_and!52571)))

(declare-fun b_free!14739 () Bool)

(declare-fun b_next!14755 () Bool)

(assert (=> b!537426 (= b_free!14739 (not b_next!14755))))

(declare-fun tp!171434 () Bool)

(declare-fun b_and!52573 () Bool)

(assert (=> b!537426 (= tp!171434 b_and!52573)))

(declare-fun b!537437 () Bool)

(declare-fun b_free!14741 () Bool)

(declare-fun b_next!14757 () Bool)

(assert (=> b!537437 (= b_free!14741 (not b_next!14757))))

(declare-fun tp!171433 () Bool)

(declare-fun b_and!52575 () Bool)

(assert (=> b!537437 (= tp!171433 b_and!52575)))

(declare-fun b_free!14743 () Bool)

(declare-fun b_next!14759 () Bool)

(assert (=> b!537437 (= b_free!14743 (not b_next!14759))))

(declare-fun tp!171441 () Bool)

(declare-fun b_and!52577 () Bool)

(assert (=> b!537437 (= tp!171441 b_and!52577)))

(declare-fun b!537423 () Bool)

(declare-fun e!324239 () Bool)

(declare-fun e!324255 () Bool)

(assert (=> b!537423 (= e!324239 e!324255)))

(declare-fun res!227668 () Bool)

(assert (=> b!537423 (=> (not res!227668) (not e!324255))))

(declare-datatypes ((C!3516 0))(
  ( (C!3517 (val!1984 Int)) )
))
(declare-datatypes ((List!5227 0))(
  ( (Nil!5217) (Cons!5217 (h!10618 C!3516) (t!74228 List!5227)) )
))
(declare-fun lt!222658 () List!5227)

(declare-fun lt!222644 () List!5227)

(assert (=> b!537423 (= res!227668 (= lt!222658 lt!222644))))

(declare-fun lt!222639 () List!5227)

(declare-fun suffix!1342 () List!5227)

(declare-fun ++!1451 (List!5227 List!5227) List!5227)

(assert (=> b!537423 (= lt!222658 (++!1451 lt!222639 suffix!1342))))

(declare-fun b!537424 () Bool)

(declare-fun e!324243 () Bool)

(declare-fun tp_is_empty!2949 () Bool)

(declare-fun tp!171437 () Bool)

(assert (=> b!537424 (= e!324243 (and tp_is_empty!2949 tp!171437))))

(declare-fun b!537425 () Bool)

(declare-fun e!324253 () Bool)

(declare-fun e!324245 () Bool)

(assert (=> b!537425 (= e!324253 e!324245)))

(declare-fun res!227678 () Bool)

(assert (=> b!537425 (=> (not res!227678) (not e!324245))))

(declare-datatypes ((String!6678 0))(
  ( (String!6679 (value!32286 String)) )
))
(declare-datatypes ((Regex!1297 0))(
  ( (ElementMatch!1297 (c!102118 C!3516)) (Concat!2284 (regOne!3106 Regex!1297) (regTwo!3106 Regex!1297)) (EmptyExpr!1297) (Star!1297 (reg!1626 Regex!1297)) (EmptyLang!1297) (Union!1297 (regOne!3107 Regex!1297) (regTwo!3107 Regex!1297)) )
))
(declare-datatypes ((List!5228 0))(
  ( (Nil!5218) (Cons!5218 (h!10619 (_ BitVec 16)) (t!74229 List!5228)) )
))
(declare-datatypes ((TokenValue!987 0))(
  ( (FloatLiteralValue!1974 (text!7354 List!5228)) (TokenValueExt!986 (__x!3872 Int)) (Broken!4935 (value!32287 List!5228)) (Object!996) (End!987) (Def!987) (Underscore!987) (Match!987) (Else!987) (Error!987) (Case!987) (If!987) (Extends!987) (Abstract!987) (Class!987) (Val!987) (DelimiterValue!1974 (del!1047 List!5228)) (KeywordValue!993 (value!32288 List!5228)) (CommentValue!1974 (value!32289 List!5228)) (WhitespaceValue!1974 (value!32290 List!5228)) (IndentationValue!987 (value!32291 List!5228)) (String!6680) (Int32!987) (Broken!4936 (value!32292 List!5228)) (Boolean!988) (Unit!9114) (OperatorValue!990 (op!1047 List!5228)) (IdentifierValue!1974 (value!32293 List!5228)) (IdentifierValue!1975 (value!32294 List!5228)) (WhitespaceValue!1975 (value!32295 List!5228)) (True!1974) (False!1974) (Broken!4937 (value!32296 List!5228)) (Broken!4938 (value!32297 List!5228)) (True!1975) (RightBrace!987) (RightBracket!987) (Colon!987) (Null!987) (Comma!987) (LeftBracket!987) (False!1975) (LeftBrace!987) (ImaginaryLiteralValue!987 (text!7355 List!5228)) (StringLiteralValue!2961 (value!32298 List!5228)) (EOFValue!987 (value!32299 List!5228)) (IdentValue!987 (value!32300 List!5228)) (DelimiterValue!1975 (value!32301 List!5228)) (DedentValue!987 (value!32302 List!5228)) (NewLineValue!987 (value!32303 List!5228)) (IntegerValue!2961 (value!32304 (_ BitVec 32)) (text!7356 List!5228)) (IntegerValue!2962 (value!32305 Int) (text!7357 List!5228)) (Times!987) (Or!987) (Equal!987) (Minus!987) (Broken!4939 (value!32306 List!5228)) (And!987) (Div!987) (LessEqual!987) (Mod!987) (Concat!2285) (Not!987) (Plus!987) (SpaceValue!987 (value!32307 List!5228)) (IntegerValue!2963 (value!32308 Int) (text!7358 List!5228)) (StringLiteralValue!2962 (text!7359 List!5228)) (FloatLiteralValue!1975 (text!7360 List!5228)) (BytesLiteralValue!987 (value!32309 List!5228)) (CommentValue!1975 (value!32310 List!5228)) (StringLiteralValue!2963 (value!32311 List!5228)) (ErrorTokenValue!987 (msg!1048 List!5228)) )
))
(declare-datatypes ((IArray!3361 0))(
  ( (IArray!3362 (innerList!1738 List!5227)) )
))
(declare-datatypes ((Conc!1680 0))(
  ( (Node!1680 (left!4366 Conc!1680) (right!4696 Conc!1680) (csize!3590 Int) (cheight!1891 Int)) (Leaf!2669 (xs!4317 IArray!3361) (csize!3591 Int)) (Empty!1680) )
))
(declare-datatypes ((BalanceConc!3368 0))(
  ( (BalanceConc!3369 (c!102119 Conc!1680)) )
))
(declare-datatypes ((TokenValueInjection!1742 0))(
  ( (TokenValueInjection!1743 (toValue!1810 Int) (toChars!1669 Int)) )
))
(declare-datatypes ((Rule!1726 0))(
  ( (Rule!1727 (regex!963 Regex!1297) (tag!1225 String!6678) (isSeparator!963 Bool) (transformation!963 TokenValueInjection!1742)) )
))
(declare-datatypes ((Token!1662 0))(
  ( (Token!1663 (value!32312 TokenValue!987) (rule!1669 Rule!1726) (size!4200 Int) (originalCharacters!1002 List!5227)) )
))
(declare-fun token!491 () Token!1662)

(declare-datatypes ((tuple2!6292 0))(
  ( (tuple2!6293 (_1!3410 Token!1662) (_2!3410 List!5227)) )
))
(declare-fun lt!222646 () tuple2!6292)

(assert (=> b!537425 (= res!227678 (and (= (_1!3410 lt!222646) token!491) (= (_2!3410 lt!222646) suffix!1342)))))

(declare-datatypes ((Option!1313 0))(
  ( (None!1312) (Some!1312 (v!16119 tuple2!6292)) )
))
(declare-fun lt!222657 () Option!1313)

(declare-fun get!1959 (Option!1313) tuple2!6292)

(assert (=> b!537425 (= lt!222646 (get!1959 lt!222657))))

(declare-fun e!324240 () Bool)

(assert (=> b!537426 (= e!324240 (and tp!171440 tp!171434))))

(declare-fun b!537427 () Bool)

(declare-fun e!324258 () Bool)

(declare-fun tp!171439 () Bool)

(assert (=> b!537427 (= e!324258 (and tp_is_empty!2949 tp!171439))))

(declare-fun b!537428 () Bool)

(declare-datatypes ((Unit!9115 0))(
  ( (Unit!9116) )
))
(declare-fun e!324254 () Unit!9115)

(declare-fun Unit!9117 () Unit!9115)

(assert (=> b!537428 (= e!324254 Unit!9117)))

(declare-fun b!537429 () Bool)

(declare-fun res!227677 () Bool)

(declare-fun e!324249 () Bool)

(assert (=> b!537429 (=> (not res!227677) (not e!324249))))

(declare-fun lt!222648 () Option!1313)

(declare-fun size!4201 (List!5227) Int)

(assert (=> b!537429 (= res!227677 (= (size!4200 (_1!3410 (v!16119 lt!222648))) (size!4201 (originalCharacters!1002 (_1!3410 (v!16119 lt!222648))))))))

(declare-fun b!537430 () Bool)

(declare-fun e!324251 () Bool)

(assert (=> b!537430 (= e!324251 true)))

(declare-fun lt!222655 () Bool)

(declare-datatypes ((LexerInterface!849 0))(
  ( (LexerInterfaceExt!846 (__x!3873 Int)) (Lexer!847) )
))
(declare-fun thiss!22590 () LexerInterface!849)

(declare-datatypes ((List!5229 0))(
  ( (Nil!5219) (Cons!5219 (h!10620 Rule!1726) (t!74230 List!5229)) )
))
(declare-fun rules!3103 () List!5229)

(declare-fun rulesValidInductive!338 (LexerInterface!849 List!5229) Bool)

(assert (=> b!537430 (= lt!222655 (rulesValidInductive!338 thiss!22590 rules!3103))))

(declare-fun b!537431 () Bool)

(declare-fun e!324236 () Bool)

(declare-fun e!324246 () Bool)

(assert (=> b!537431 (= e!324236 e!324246)))

(declare-fun res!227680 () Bool)

(assert (=> b!537431 (=> (not res!227680) (not e!324246))))

(declare-fun input!2705 () List!5227)

(assert (=> b!537431 (= res!227680 (= lt!222639 input!2705))))

(declare-fun list!2169 (BalanceConc!3368) List!5227)

(declare-fun charsOf!592 (Token!1662) BalanceConc!3368)

(assert (=> b!537431 (= lt!222639 (list!2169 (charsOf!592 token!491)))))

(declare-fun b!537432 () Bool)

(declare-fun res!227671 () Bool)

(assert (=> b!537432 (=> (not res!227671) (not e!324236))))

(declare-fun isEmpty!3772 (List!5227) Bool)

(assert (=> b!537432 (= res!227671 (not (isEmpty!3772 input!2705)))))

(declare-fun res!227675 () Bool)

(assert (=> start!49652 (=> (not res!227675) (not e!324236))))

(get-info :version)

(assert (=> start!49652 (= res!227675 ((_ is Lexer!847) thiss!22590))))

(assert (=> start!49652 e!324236))

(assert (=> start!49652 e!324243))

(declare-fun e!324247 () Bool)

(assert (=> start!49652 e!324247))

(declare-fun e!324257 () Bool)

(declare-fun inv!6550 (Token!1662) Bool)

(assert (=> start!49652 (and (inv!6550 token!491) e!324257)))

(assert (=> start!49652 true))

(assert (=> start!49652 e!324258))

(declare-fun b!537433 () Bool)

(assert (=> b!537433 (= e!324245 e!324239)))

(declare-fun res!227674 () Bool)

(assert (=> b!537433 (=> (not res!227674) (not e!324239))))

(assert (=> b!537433 (= res!227674 ((_ is Some!1312) lt!222648))))

(declare-fun maxPrefix!547 (LexerInterface!849 List!5229 List!5227) Option!1313)

(assert (=> b!537433 (= lt!222648 (maxPrefix!547 thiss!22590 rules!3103 input!2705))))

(declare-fun b!537434 () Bool)

(declare-fun res!227681 () Bool)

(declare-fun e!324235 () Bool)

(assert (=> b!537434 (=> (not res!227681) (not e!324235))))

(assert (=> b!537434 (= res!227681 (= (size!4200 token!491) (size!4201 (originalCharacters!1002 token!491))))))

(declare-fun b!537435 () Bool)

(declare-fun e!324248 () Bool)

(assert (=> b!537435 (= e!324255 (not e!324248))))

(declare-fun res!227684 () Bool)

(assert (=> b!537435 (=> res!227684 e!324248)))

(declare-fun isPrefix!605 (List!5227 List!5227) Bool)

(assert (=> b!537435 (= res!227684 (not (isPrefix!605 input!2705 lt!222658)))))

(assert (=> b!537435 (isPrefix!605 lt!222639 lt!222658)))

(declare-fun lt!222638 () Unit!9115)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!456 (List!5227 List!5227) Unit!9115)

(assert (=> b!537435 (= lt!222638 (lemmaConcatTwoListThenFirstIsPrefix!456 lt!222639 suffix!1342))))

(assert (=> b!537435 (isPrefix!605 input!2705 lt!222644)))

(declare-fun lt!222659 () Unit!9115)

(assert (=> b!537435 (= lt!222659 (lemmaConcatTwoListThenFirstIsPrefix!456 input!2705 suffix!1342))))

(assert (=> b!537435 e!324249))

(declare-fun res!227673 () Bool)

(assert (=> b!537435 (=> (not res!227673) (not e!324249))))

(declare-fun lt!222642 () TokenValue!987)

(assert (=> b!537435 (= res!227673 (= (value!32312 (_1!3410 (v!16119 lt!222648))) lt!222642))))

(declare-fun lt!222643 () List!5227)

(declare-fun apply!1238 (TokenValueInjection!1742 BalanceConc!3368) TokenValue!987)

(declare-fun seqFromList!1161 (List!5227) BalanceConc!3368)

(assert (=> b!537435 (= lt!222642 (apply!1238 (transformation!963 (rule!1669 (_1!3410 (v!16119 lt!222648)))) (seqFromList!1161 lt!222643)))))

(declare-fun lt!222652 () Unit!9115)

(declare-fun lemmaInv!111 (TokenValueInjection!1742) Unit!9115)

(assert (=> b!537435 (= lt!222652 (lemmaInv!111 (transformation!963 (rule!1669 token!491))))))

(declare-fun lt!222651 () Unit!9115)

(assert (=> b!537435 (= lt!222651 (lemmaInv!111 (transformation!963 (rule!1669 (_1!3410 (v!16119 lt!222648))))))))

(declare-fun ruleValid!183 (LexerInterface!849 Rule!1726) Bool)

(assert (=> b!537435 (ruleValid!183 thiss!22590 (rule!1669 token!491))))

(declare-fun lt!222641 () Unit!9115)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!42 (LexerInterface!849 Rule!1726 List!5229) Unit!9115)

(assert (=> b!537435 (= lt!222641 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!42 thiss!22590 (rule!1669 token!491) rules!3103))))

(assert (=> b!537435 (ruleValid!183 thiss!22590 (rule!1669 (_1!3410 (v!16119 lt!222648))))))

(declare-fun lt!222637 () Unit!9115)

(assert (=> b!537435 (= lt!222637 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!42 thiss!22590 (rule!1669 (_1!3410 (v!16119 lt!222648))) rules!3103))))

(assert (=> b!537435 (isPrefix!605 input!2705 input!2705)))

(declare-fun lt!222653 () Unit!9115)

(declare-fun lemmaIsPrefixRefl!345 (List!5227 List!5227) Unit!9115)

(assert (=> b!537435 (= lt!222653 (lemmaIsPrefixRefl!345 input!2705 input!2705))))

(declare-fun lt!222660 () List!5227)

(assert (=> b!537435 (= (_2!3410 (v!16119 lt!222648)) lt!222660)))

(declare-fun lt!222663 () Unit!9115)

(declare-fun lemmaSamePrefixThenSameSuffix!332 (List!5227 List!5227 List!5227 List!5227 List!5227) Unit!9115)

(assert (=> b!537435 (= lt!222663 (lemmaSamePrefixThenSameSuffix!332 lt!222643 (_2!3410 (v!16119 lt!222648)) lt!222643 lt!222660 input!2705))))

(declare-fun getSuffix!128 (List!5227 List!5227) List!5227)

(assert (=> b!537435 (= lt!222660 (getSuffix!128 input!2705 lt!222643))))

(assert (=> b!537435 (isPrefix!605 lt!222643 (++!1451 lt!222643 (_2!3410 (v!16119 lt!222648))))))

(declare-fun lt!222633 () Unit!9115)

(assert (=> b!537435 (= lt!222633 (lemmaConcatTwoListThenFirstIsPrefix!456 lt!222643 (_2!3410 (v!16119 lt!222648))))))

(declare-fun lt!222649 () Unit!9115)

(declare-fun lemmaCharactersSize!42 (Token!1662) Unit!9115)

(assert (=> b!537435 (= lt!222649 (lemmaCharactersSize!42 token!491))))

(declare-fun lt!222662 () Unit!9115)

(assert (=> b!537435 (= lt!222662 (lemmaCharactersSize!42 (_1!3410 (v!16119 lt!222648))))))

(declare-fun lt!222654 () Unit!9115)

(assert (=> b!537435 (= lt!222654 e!324254)))

(declare-fun c!102117 () Bool)

(declare-fun lt!222656 () Int)

(declare-fun lt!222636 () Int)

(assert (=> b!537435 (= c!102117 (> lt!222656 lt!222636))))

(assert (=> b!537435 (= lt!222636 (size!4201 lt!222639))))

(assert (=> b!537435 (= lt!222656 (size!4201 lt!222643))))

(assert (=> b!537435 (= lt!222643 (list!2169 (charsOf!592 (_1!3410 (v!16119 lt!222648)))))))

(declare-fun lt!222640 () tuple2!6292)

(assert (=> b!537435 (= lt!222648 (Some!1312 lt!222640))))

(assert (=> b!537435 (= lt!222640 (tuple2!6293 (_1!3410 (v!16119 lt!222648)) (_2!3410 (v!16119 lt!222648))))))

(declare-fun lt!222645 () Unit!9115)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!48 (List!5227 List!5227 List!5227 List!5227) Unit!9115)

(assert (=> b!537435 (= lt!222645 (lemmaConcatSameAndSameSizesThenSameLists!48 lt!222639 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!537436 () Bool)

(assert (=> b!537436 (= e!324246 e!324253)))

(declare-fun res!227682 () Bool)

(assert (=> b!537436 (=> (not res!227682) (not e!324253))))

(declare-fun isDefined!1125 (Option!1313) Bool)

(assert (=> b!537436 (= res!227682 (isDefined!1125 lt!222657))))

(assert (=> b!537436 (= lt!222657 (maxPrefix!547 thiss!22590 rules!3103 lt!222644))))

(assert (=> b!537436 (= lt!222644 (++!1451 input!2705 suffix!1342))))

(declare-fun e!324256 () Bool)

(assert (=> b!537437 (= e!324256 (and tp!171433 tp!171441))))

(declare-fun lt!222647 () List!5227)

(declare-fun lt!222635 () TokenValue!987)

(declare-fun b!537438 () Bool)

(assert (=> b!537438 (= e!324235 (and (= (size!4200 token!491) lt!222636) (= (originalCharacters!1002 token!491) lt!222639) (= (tuple2!6293 token!491 suffix!1342) (tuple2!6293 (Token!1663 lt!222635 (rule!1669 token!491) lt!222636 lt!222639) lt!222647))))))

(declare-fun b!537439 () Bool)

(assert (=> b!537439 (= e!324248 e!324251)))

(declare-fun res!227676 () Bool)

(assert (=> b!537439 (=> res!227676 e!324251)))

(assert (=> b!537439 (= res!227676 (>= lt!222656 lt!222636))))

(declare-fun e!324241 () Bool)

(assert (=> b!537439 e!324241))

(declare-fun res!227672 () Bool)

(assert (=> b!537439 (=> (not res!227672) (not e!324241))))

(declare-fun maxPrefixOneRule!262 (LexerInterface!849 Rule!1726 List!5227) Option!1313)

(assert (=> b!537439 (= res!227672 (= (maxPrefixOneRule!262 thiss!22590 (rule!1669 token!491) lt!222644) (Some!1312 (tuple2!6293 (Token!1663 lt!222635 (rule!1669 token!491) lt!222636 lt!222639) suffix!1342))))))

(declare-fun lt!222650 () Unit!9115)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!14 (LexerInterface!849 List!5229 List!5227 List!5227 List!5227 Rule!1726) Unit!9115)

(assert (=> b!537439 (= lt!222650 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!14 thiss!22590 rules!3103 lt!222639 lt!222644 suffix!1342 (rule!1669 token!491)))))

(assert (=> b!537439 (= (maxPrefixOneRule!262 thiss!22590 (rule!1669 (_1!3410 (v!16119 lt!222648))) input!2705) (Some!1312 (tuple2!6293 (Token!1663 lt!222642 (rule!1669 (_1!3410 (v!16119 lt!222648))) lt!222656 lt!222643) (_2!3410 (v!16119 lt!222648)))))))

(declare-fun lt!222661 () Unit!9115)

(assert (=> b!537439 (= lt!222661 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!14 thiss!22590 rules!3103 lt!222643 input!2705 (_2!3410 (v!16119 lt!222648)) (rule!1669 (_1!3410 (v!16119 lt!222648)))))))

(assert (=> b!537439 e!324235))

(declare-fun res!227669 () Bool)

(assert (=> b!537439 (=> (not res!227669) (not e!324235))))

(assert (=> b!537439 (= res!227669 (= (value!32312 token!491) lt!222635))))

(assert (=> b!537439 (= lt!222635 (apply!1238 (transformation!963 (rule!1669 token!491)) (seqFromList!1161 lt!222639)))))

(assert (=> b!537439 (= suffix!1342 lt!222647)))

(declare-fun lt!222634 () Unit!9115)

(assert (=> b!537439 (= lt!222634 (lemmaSamePrefixThenSameSuffix!332 lt!222639 suffix!1342 lt!222639 lt!222647 lt!222644))))

(assert (=> b!537439 (= lt!222647 (getSuffix!128 lt!222644 lt!222639))))

(declare-fun b!537440 () Bool)

(declare-fun res!227670 () Bool)

(assert (=> b!537440 (=> (not res!227670) (not e!324236))))

(declare-fun rulesInvariant!812 (LexerInterface!849 List!5229) Bool)

(assert (=> b!537440 (= res!227670 (rulesInvariant!812 thiss!22590 rules!3103))))

(declare-fun tp!171435 () Bool)

(declare-fun e!324237 () Bool)

(declare-fun b!537441 () Bool)

(declare-fun inv!21 (TokenValue!987) Bool)

(assert (=> b!537441 (= e!324257 (and (inv!21 (value!32312 token!491)) e!324237 tp!171435))))

(declare-fun b!537442 () Bool)

(declare-fun e!324252 () Bool)

(declare-fun tp!171436 () Bool)

(assert (=> b!537442 (= e!324247 (and e!324252 tp!171436))))

(declare-fun b!537443 () Bool)

(declare-fun e!324242 () Bool)

(assert (=> b!537443 (= e!324242 (isDefined!1125 lt!222648))))

(declare-fun b!537444 () Bool)

(declare-fun tp!171442 () Bool)

(declare-fun inv!6547 (String!6678) Bool)

(declare-fun inv!6551 (TokenValueInjection!1742) Bool)

(assert (=> b!537444 (= e!324252 (and tp!171442 (inv!6547 (tag!1225 (h!10620 rules!3103))) (inv!6551 (transformation!963 (h!10620 rules!3103))) e!324256))))

(declare-fun b!537445 () Bool)

(assert (=> b!537445 (= e!324241 e!324242)))

(declare-fun res!227683 () Bool)

(assert (=> b!537445 (=> res!227683 e!324242)))

(assert (=> b!537445 (= res!227683 (>= lt!222656 lt!222636))))

(declare-fun b!537446 () Bool)

(assert (=> b!537446 (= e!324249 (and (= (size!4200 (_1!3410 (v!16119 lt!222648))) lt!222656) (= (originalCharacters!1002 (_1!3410 (v!16119 lt!222648))) lt!222643) (= lt!222640 (tuple2!6293 (Token!1663 lt!222642 (rule!1669 (_1!3410 (v!16119 lt!222648))) lt!222656 lt!222643) lt!222660))))))

(declare-fun b!537447 () Bool)

(declare-fun tp!171438 () Bool)

(assert (=> b!537447 (= e!324237 (and tp!171438 (inv!6547 (tag!1225 (rule!1669 token!491))) (inv!6551 (transformation!963 (rule!1669 token!491))) e!324240))))

(declare-fun b!537448 () Bool)

(declare-fun Unit!9118 () Unit!9115)

(assert (=> b!537448 (= e!324254 Unit!9118)))

(assert (=> b!537448 false))

(declare-fun b!537449 () Bool)

(declare-fun res!227679 () Bool)

(assert (=> b!537449 (=> (not res!227679) (not e!324236))))

(declare-fun isEmpty!3773 (List!5229) Bool)

(assert (=> b!537449 (= res!227679 (not (isEmpty!3773 rules!3103)))))

(assert (= (and start!49652 res!227675) b!537449))

(assert (= (and b!537449 res!227679) b!537440))

(assert (= (and b!537440 res!227670) b!537432))

(assert (= (and b!537432 res!227671) b!537431))

(assert (= (and b!537431 res!227680) b!537436))

(assert (= (and b!537436 res!227682) b!537425))

(assert (= (and b!537425 res!227678) b!537433))

(assert (= (and b!537433 res!227674) b!537423))

(assert (= (and b!537423 res!227668) b!537435))

(assert (= (and b!537435 c!102117) b!537448))

(assert (= (and b!537435 (not c!102117)) b!537428))

(assert (= (and b!537435 res!227673) b!537429))

(assert (= (and b!537429 res!227677) b!537446))

(assert (= (and b!537435 (not res!227684)) b!537439))

(assert (= (and b!537439 res!227669) b!537434))

(assert (= (and b!537434 res!227681) b!537438))

(assert (= (and b!537439 res!227672) b!537445))

(assert (= (and b!537445 (not res!227683)) b!537443))

(assert (= (and b!537439 (not res!227676)) b!537430))

(assert (= (and start!49652 ((_ is Cons!5217) suffix!1342)) b!537424))

(assert (= b!537444 b!537437))

(assert (= b!537442 b!537444))

(assert (= (and start!49652 ((_ is Cons!5219) rules!3103)) b!537442))

(assert (= b!537447 b!537426))

(assert (= b!537441 b!537447))

(assert (= start!49652 b!537441))

(assert (= (and start!49652 ((_ is Cons!5217) input!2705)) b!537427))

(declare-fun m!784251 () Bool)

(assert (=> b!537443 m!784251))

(declare-fun m!784253 () Bool)

(assert (=> b!537435 m!784253))

(declare-fun m!784255 () Bool)

(assert (=> b!537435 m!784255))

(declare-fun m!784257 () Bool)

(assert (=> b!537435 m!784257))

(declare-fun m!784259 () Bool)

(assert (=> b!537435 m!784259))

(assert (=> b!537435 m!784255))

(declare-fun m!784261 () Bool)

(assert (=> b!537435 m!784261))

(declare-fun m!784263 () Bool)

(assert (=> b!537435 m!784263))

(declare-fun m!784265 () Bool)

(assert (=> b!537435 m!784265))

(declare-fun m!784267 () Bool)

(assert (=> b!537435 m!784267))

(declare-fun m!784269 () Bool)

(assert (=> b!537435 m!784269))

(declare-fun m!784271 () Bool)

(assert (=> b!537435 m!784271))

(declare-fun m!784273 () Bool)

(assert (=> b!537435 m!784273))

(declare-fun m!784275 () Bool)

(assert (=> b!537435 m!784275))

(declare-fun m!784277 () Bool)

(assert (=> b!537435 m!784277))

(declare-fun m!784279 () Bool)

(assert (=> b!537435 m!784279))

(declare-fun m!784281 () Bool)

(assert (=> b!537435 m!784281))

(assert (=> b!537435 m!784267))

(declare-fun m!784283 () Bool)

(assert (=> b!537435 m!784283))

(declare-fun m!784285 () Bool)

(assert (=> b!537435 m!784285))

(declare-fun m!784287 () Bool)

(assert (=> b!537435 m!784287))

(assert (=> b!537435 m!784263))

(declare-fun m!784289 () Bool)

(assert (=> b!537435 m!784289))

(declare-fun m!784291 () Bool)

(assert (=> b!537435 m!784291))

(declare-fun m!784293 () Bool)

(assert (=> b!537435 m!784293))

(declare-fun m!784295 () Bool)

(assert (=> b!537435 m!784295))

(declare-fun m!784297 () Bool)

(assert (=> b!537435 m!784297))

(declare-fun m!784299 () Bool)

(assert (=> b!537435 m!784299))

(declare-fun m!784301 () Bool)

(assert (=> b!537435 m!784301))

(declare-fun m!784303 () Bool)

(assert (=> b!537435 m!784303))

(declare-fun m!784305 () Bool)

(assert (=> b!537435 m!784305))

(declare-fun m!784307 () Bool)

(assert (=> b!537439 m!784307))

(declare-fun m!784309 () Bool)

(assert (=> b!537439 m!784309))

(declare-fun m!784311 () Bool)

(assert (=> b!537439 m!784311))

(declare-fun m!784313 () Bool)

(assert (=> b!537439 m!784313))

(assert (=> b!537439 m!784309))

(declare-fun m!784315 () Bool)

(assert (=> b!537439 m!784315))

(declare-fun m!784317 () Bool)

(assert (=> b!537439 m!784317))

(declare-fun m!784319 () Bool)

(assert (=> b!537439 m!784319))

(declare-fun m!784321 () Bool)

(assert (=> b!537439 m!784321))

(declare-fun m!784323 () Bool)

(assert (=> b!537441 m!784323))

(declare-fun m!784325 () Bool)

(assert (=> b!537430 m!784325))

(declare-fun m!784327 () Bool)

(assert (=> start!49652 m!784327))

(declare-fun m!784329 () Bool)

(assert (=> b!537440 m!784329))

(declare-fun m!784331 () Bool)

(assert (=> b!537436 m!784331))

(declare-fun m!784333 () Bool)

(assert (=> b!537436 m!784333))

(declare-fun m!784335 () Bool)

(assert (=> b!537436 m!784335))

(declare-fun m!784337 () Bool)

(assert (=> b!537431 m!784337))

(assert (=> b!537431 m!784337))

(declare-fun m!784339 () Bool)

(assert (=> b!537431 m!784339))

(declare-fun m!784341 () Bool)

(assert (=> b!537429 m!784341))

(declare-fun m!784343 () Bool)

(assert (=> b!537444 m!784343))

(declare-fun m!784345 () Bool)

(assert (=> b!537444 m!784345))

(declare-fun m!784347 () Bool)

(assert (=> b!537449 m!784347))

(declare-fun m!784349 () Bool)

(assert (=> b!537423 m!784349))

(declare-fun m!784351 () Bool)

(assert (=> b!537432 m!784351))

(declare-fun m!784353 () Bool)

(assert (=> b!537433 m!784353))

(declare-fun m!784355 () Bool)

(assert (=> b!537425 m!784355))

(declare-fun m!784357 () Bool)

(assert (=> b!537447 m!784357))

(declare-fun m!784359 () Bool)

(assert (=> b!537447 m!784359))

(declare-fun m!784361 () Bool)

(assert (=> b!537434 m!784361))

(check-sat (not b!537440) (not b!537447) (not b!537432) (not b!537435) (not b!537431) (not b_next!14757) (not b!537433) b_and!52575 (not b!537442) (not b_next!14755) b_and!52571 (not b!537439) (not b!537449) (not b!537434) (not b_next!14753) (not b!537430) (not b!537427) (not b!537425) (not b!537429) (not b!537436) (not b!537444) b_and!52573 (not b!537424) tp_is_empty!2949 (not b_next!14759) (not start!49652) (not b!537441) b_and!52577 (not b!537443) (not b!537423))
(check-sat b_and!52571 (not b_next!14753) (not b_next!14757) b_and!52573 (not b_next!14759) b_and!52575 b_and!52577 (not b_next!14755))

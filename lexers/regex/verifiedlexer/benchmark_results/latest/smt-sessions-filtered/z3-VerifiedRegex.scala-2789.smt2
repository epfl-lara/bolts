; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154470 () Bool)

(assert start!154470)

(declare-fun b!1625105 () Bool)

(declare-fun b_free!43847 () Bool)

(declare-fun b_next!44551 () Bool)

(assert (=> b!1625105 (= b_free!43847 (not b_next!44551))))

(declare-fun tp!472653 () Bool)

(declare-fun b_and!115245 () Bool)

(assert (=> b!1625105 (= tp!472653 b_and!115245)))

(declare-fun b_free!43849 () Bool)

(declare-fun b_next!44553 () Bool)

(assert (=> b!1625105 (= b_free!43849 (not b_next!44553))))

(declare-fun tp!472650 () Bool)

(declare-fun b_and!115247 () Bool)

(assert (=> b!1625105 (= tp!472650 b_and!115247)))

(declare-fun b!1625097 () Bool)

(declare-fun b_free!43851 () Bool)

(declare-fun b_next!44555 () Bool)

(assert (=> b!1625097 (= b_free!43851 (not b_next!44555))))

(declare-fun tp!472652 () Bool)

(declare-fun b_and!115249 () Bool)

(assert (=> b!1625097 (= tp!472652 b_and!115249)))

(declare-fun b_free!43853 () Bool)

(declare-fun b_next!44557 () Bool)

(assert (=> b!1625097 (= b_free!43853 (not b_next!44557))))

(declare-fun tp!472647 () Bool)

(declare-fun b_and!115251 () Bool)

(assert (=> b!1625097 (= tp!472647 b_and!115251)))

(declare-fun tp!472648 () Bool)

(declare-fun e!1042333 () Bool)

(declare-datatypes ((List!17893 0))(
  ( (Nil!17823) (Cons!17823 (h!23224 (_ BitVec 16)) (t!148984 List!17893)) )
))
(declare-datatypes ((TokenValue!3229 0))(
  ( (FloatLiteralValue!6458 (text!23048 List!17893)) (TokenValueExt!3228 (__x!11760 Int)) (Broken!16145 (value!99108 List!17893)) (Object!3298) (End!3229) (Def!3229) (Underscore!3229) (Match!3229) (Else!3229) (Error!3229) (Case!3229) (If!3229) (Extends!3229) (Abstract!3229) (Class!3229) (Val!3229) (DelimiterValue!6458 (del!3289 List!17893)) (KeywordValue!3235 (value!99109 List!17893)) (CommentValue!6458 (value!99110 List!17893)) (WhitespaceValue!6458 (value!99111 List!17893)) (IndentationValue!3229 (value!99112 List!17893)) (String!20476) (Int32!3229) (Broken!16146 (value!99113 List!17893)) (Boolean!3230) (Unit!28866) (OperatorValue!3232 (op!3289 List!17893)) (IdentifierValue!6458 (value!99114 List!17893)) (IdentifierValue!6459 (value!99115 List!17893)) (WhitespaceValue!6459 (value!99116 List!17893)) (True!6458) (False!6458) (Broken!16147 (value!99117 List!17893)) (Broken!16148 (value!99118 List!17893)) (True!6459) (RightBrace!3229) (RightBracket!3229) (Colon!3229) (Null!3229) (Comma!3229) (LeftBracket!3229) (False!6459) (LeftBrace!3229) (ImaginaryLiteralValue!3229 (text!23049 List!17893)) (StringLiteralValue!9687 (value!99119 List!17893)) (EOFValue!3229 (value!99120 List!17893)) (IdentValue!3229 (value!99121 List!17893)) (DelimiterValue!6459 (value!99122 List!17893)) (DedentValue!3229 (value!99123 List!17893)) (NewLineValue!3229 (value!99124 List!17893)) (IntegerValue!9687 (value!99125 (_ BitVec 32)) (text!23050 List!17893)) (IntegerValue!9688 (value!99126 Int) (text!23051 List!17893)) (Times!3229) (Or!3229) (Equal!3229) (Minus!3229) (Broken!16149 (value!99127 List!17893)) (And!3229) (Div!3229) (LessEqual!3229) (Mod!3229) (Concat!7696) (Not!3229) (Plus!3229) (SpaceValue!3229 (value!99128 List!17893)) (IntegerValue!9689 (value!99129 Int) (text!23052 List!17893)) (StringLiteralValue!9688 (text!23053 List!17893)) (FloatLiteralValue!6459 (text!23054 List!17893)) (BytesLiteralValue!3229 (value!99130 List!17893)) (CommentValue!6459 (value!99131 List!17893)) (StringLiteralValue!9689 (value!99132 List!17893)) (ErrorTokenValue!3229 (msg!3290 List!17893)) )
))
(declare-datatypes ((C!9108 0))(
  ( (C!9109 (val!5150 Int)) )
))
(declare-datatypes ((List!17894 0))(
  ( (Nil!17824) (Cons!17824 (h!23225 C!9108) (t!148985 List!17894)) )
))
(declare-datatypes ((IArray!11857 0))(
  ( (IArray!11858 (innerList!5986 List!17894)) )
))
(declare-datatypes ((Conc!5926 0))(
  ( (Node!5926 (left!14329 Conc!5926) (right!14659 Conc!5926) (csize!12082 Int) (cheight!6137 Int)) (Leaf!8716 (xs!8758 IArray!11857) (csize!12083 Int)) (Empty!5926) )
))
(declare-datatypes ((BalanceConc!11796 0))(
  ( (BalanceConc!11797 (c!264491 Conc!5926)) )
))
(declare-datatypes ((Regex!4467 0))(
  ( (ElementMatch!4467 (c!264492 C!9108)) (Concat!7697 (regOne!9446 Regex!4467) (regTwo!9446 Regex!4467)) (EmptyExpr!4467) (Star!4467 (reg!4796 Regex!4467)) (EmptyLang!4467) (Union!4467 (regOne!9447 Regex!4467) (regTwo!9447 Regex!4467)) )
))
(declare-datatypes ((String!20477 0))(
  ( (String!20478 (value!99133 String)) )
))
(declare-datatypes ((TokenValueInjection!6118 0))(
  ( (TokenValueInjection!6119 (toValue!4566 Int) (toChars!4425 Int)) )
))
(declare-datatypes ((Rule!6078 0))(
  ( (Rule!6079 (regex!3139 Regex!4467) (tag!3417 String!20477) (isSeparator!3139 Bool) (transformation!3139 TokenValueInjection!6118)) )
))
(declare-datatypes ((List!17895 0))(
  ( (Nil!17825) (Cons!17825 (h!23226 Rule!6078) (t!148986 List!17895)) )
))
(declare-fun rules!1846 () List!17895)

(declare-fun e!1042329 () Bool)

(declare-fun b!1625093 () Bool)

(declare-fun inv!23200 (String!20477) Bool)

(declare-fun inv!23203 (TokenValueInjection!6118) Bool)

(assert (=> b!1625093 (= e!1042333 (and tp!472648 (inv!23200 (tag!3417 (h!23226 rules!1846))) (inv!23203 (transformation!3139 (h!23226 rules!1846))) e!1042329))))

(declare-fun b!1625094 () Bool)

(declare-fun res!726429 () Bool)

(declare-fun e!1042346 () Bool)

(assert (=> b!1625094 (=> (not res!726429) (not e!1042346))))

(declare-datatypes ((LexerInterface!2768 0))(
  ( (LexerInterfaceExt!2765 (__x!11761 Int)) (Lexer!2766) )
))
(declare-fun thiss!17113 () LexerInterface!2768)

(declare-datatypes ((Token!5844 0))(
  ( (Token!5845 (value!99134 TokenValue!3229) (rule!4965 Rule!6078) (size!14266 Int) (originalCharacters!3953 List!17894)) )
))
(declare-datatypes ((List!17896 0))(
  ( (Nil!17826) (Cons!17826 (h!23227 Token!5844) (t!148987 List!17896)) )
))
(declare-fun tokens!457 () List!17896)

(declare-fun tokensListTwoByTwoPredicateSeparableList!461 (LexerInterface!2768 List!17896 List!17895) Bool)

(assert (=> b!1625094 (= res!726429 (tokensListTwoByTwoPredicateSeparableList!461 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1625095 () Bool)

(declare-fun e!1042343 () Bool)

(declare-fun e!1042332 () Bool)

(assert (=> b!1625095 (= e!1042343 e!1042332)))

(declare-fun res!726434 () Bool)

(assert (=> b!1625095 (=> res!726434 e!1042332)))

(declare-fun lt!586845 () Regex!4467)

(declare-fun lt!586842 () List!17894)

(declare-fun lt!586857 () List!17894)

(declare-fun prefixMatch!402 (Regex!4467 List!17894) Bool)

(declare-fun ++!4737 (List!17894 List!17894) List!17894)

(assert (=> b!1625095 (= res!726434 (prefixMatch!402 lt!586845 (++!4737 lt!586842 lt!586857)))))

(declare-fun lt!586846 () BalanceConc!11796)

(declare-fun list!6995 (BalanceConc!11796) List!17894)

(assert (=> b!1625095 (= lt!586857 (list!6995 lt!586846))))

(declare-fun b!1625096 () Bool)

(declare-fun e!1042339 () Bool)

(assert (=> b!1625096 (= e!1042346 e!1042339)))

(declare-fun res!726438 () Bool)

(assert (=> b!1625096 (=> (not res!726438) (not e!1042339))))

(declare-fun lt!586850 () List!17894)

(declare-fun lt!586868 () List!17894)

(assert (=> b!1625096 (= res!726438 (= lt!586850 lt!586868))))

(declare-fun lt!586865 () List!17894)

(assert (=> b!1625096 (= lt!586868 (++!4737 lt!586842 lt!586865))))

(declare-fun lt!586847 () BalanceConc!11796)

(assert (=> b!1625096 (= lt!586850 (list!6995 lt!586847))))

(declare-fun lt!586852 () BalanceConc!11796)

(assert (=> b!1625096 (= lt!586865 (list!6995 lt!586852))))

(declare-fun lt!586864 () BalanceConc!11796)

(assert (=> b!1625096 (= lt!586842 (list!6995 lt!586864))))

(declare-fun charsOf!1788 (Token!5844) BalanceConc!11796)

(assert (=> b!1625096 (= lt!586864 (charsOf!1788 (h!23227 tokens!457)))))

(declare-datatypes ((IArray!11859 0))(
  ( (IArray!11860 (innerList!5987 List!17896)) )
))
(declare-datatypes ((Conc!5927 0))(
  ( (Node!5927 (left!14330 Conc!5927) (right!14660 Conc!5927) (csize!12084 Int) (cheight!6138 Int)) (Leaf!8717 (xs!8759 IArray!11859) (csize!12085 Int)) (Empty!5927) )
))
(declare-datatypes ((BalanceConc!11798 0))(
  ( (BalanceConc!11799 (c!264493 Conc!5927)) )
))
(declare-datatypes ((tuple2!17390 0))(
  ( (tuple2!17391 (_1!10097 BalanceConc!11798) (_2!10097 BalanceConc!11796)) )
))
(declare-fun lt!586859 () tuple2!17390)

(declare-fun lex!1252 (LexerInterface!2768 List!17895 BalanceConc!11796) tuple2!17390)

(assert (=> b!1625096 (= lt!586859 (lex!1252 thiss!17113 rules!1846 lt!586852))))

(declare-fun lt!586844 () BalanceConc!11798)

(declare-fun print!1299 (LexerInterface!2768 BalanceConc!11798) BalanceConc!11796)

(assert (=> b!1625096 (= lt!586852 (print!1299 thiss!17113 lt!586844))))

(declare-fun seqFromList!2027 (List!17896) BalanceConc!11798)

(assert (=> b!1625096 (= lt!586844 (seqFromList!2027 (t!148987 tokens!457)))))

(assert (=> b!1625096 (= lt!586847 (print!1299 thiss!17113 (seqFromList!2027 tokens!457)))))

(declare-fun e!1042338 () Bool)

(assert (=> b!1625097 (= e!1042338 (and tp!472652 tp!472647))))

(declare-fun b!1625098 () Bool)

(declare-fun e!1042336 () Bool)

(assert (=> b!1625098 (= e!1042332 e!1042336)))

(declare-fun res!726444 () Bool)

(assert (=> b!1625098 (=> res!726444 e!1042336)))

(declare-datatypes ((tuple2!17392 0))(
  ( (tuple2!17393 (_1!10098 Token!5844) (_2!10098 BalanceConc!11796)) )
))
(declare-datatypes ((Option!3301 0))(
  ( (None!3300) (Some!3300 (v!24335 tuple2!17392)) )
))
(declare-fun isDefined!2668 (Option!3301) Bool)

(declare-fun maxPrefixZipperSequence!663 (LexerInterface!2768 List!17895 BalanceConc!11796) Option!3301)

(declare-fun seqFromList!2028 (List!17894) BalanceConc!11796)

(assert (=> b!1625098 (= res!726444 (not (isDefined!2668 (maxPrefixZipperSequence!663 thiss!17113 rules!1846 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))

(declare-fun lt!586861 () List!17894)

(assert (=> b!1625098 (= lt!586857 lt!586861)))

(declare-fun head!3432 (BalanceConc!11796) C!9108)

(assert (=> b!1625098 (= lt!586861 (Cons!17824 (head!3432 lt!586852) Nil!17824))))

(declare-fun e!1042325 () Bool)

(assert (=> b!1625098 e!1042325))

(declare-fun res!726423 () Bool)

(assert (=> b!1625098 (=> (not res!726423) (not e!1042325))))

(assert (=> b!1625098 (= res!726423 (= lt!586842 (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun b!1625099 () Bool)

(declare-fun e!1042328 () Bool)

(assert (=> b!1625099 (= e!1042328 e!1042343)))

(declare-fun res!726439 () Bool)

(assert (=> b!1625099 (=> res!726439 e!1042343)))

(declare-fun prefixMatchZipperSequence!527 (Regex!4467 BalanceConc!11796) Bool)

(declare-fun ++!4738 (BalanceConc!11796 BalanceConc!11796) BalanceConc!11796)

(assert (=> b!1625099 (= res!726439 (prefixMatchZipperSequence!527 lt!586845 (++!4738 lt!586864 lt!586846)))))

(declare-fun singletonSeq!1556 (C!9108) BalanceConc!11796)

(declare-fun apply!4552 (BalanceConc!11796 Int) C!9108)

(assert (=> b!1625099 (= lt!586846 (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0)))))

(declare-fun rulesRegex!529 (LexerInterface!2768 List!17895) Regex!4467)

(assert (=> b!1625099 (= lt!586845 (rulesRegex!529 thiss!17113 rules!1846))))

(declare-fun b!1625100 () Bool)

(declare-fun e!1042327 () Bool)

(declare-fun matchR!1966 (Regex!4467 List!17894) Bool)

(assert (=> b!1625100 (= e!1042327 (matchR!1966 (regex!3139 (rule!4965 (h!23227 tokens!457))) lt!586842))))

(declare-fun b!1625101 () Bool)

(declare-fun res!726430 () Bool)

(assert (=> b!1625101 (=> (not res!726430) (not e!1042346))))

(get-info :version)

(assert (=> b!1625101 (= res!726430 (and (not ((_ is Nil!17826) tokens!457)) (not ((_ is Nil!17826) (t!148987 tokens!457)))))))

(declare-fun b!1625102 () Bool)

(declare-fun res!726442 () Bool)

(declare-fun e!1042344 () Bool)

(assert (=> b!1625102 (=> res!726442 e!1042344)))

(assert (=> b!1625102 (= res!726442 (prefixMatch!402 lt!586845 (++!4737 lt!586842 lt!586861)))))

(declare-fun b!1625103 () Bool)

(assert (=> b!1625103 (= e!1042336 e!1042344)))

(declare-fun res!726443 () Bool)

(assert (=> b!1625103 (=> res!726443 e!1042344)))

(assert (=> b!1625103 (= res!726443 (prefixMatch!402 lt!586845 (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861)))))

(assert (=> b!1625103 e!1042327))

(declare-fun res!726427 () Bool)

(assert (=> b!1625103 (=> (not res!726427) (not e!1042327))))

(declare-datatypes ((tuple2!17394 0))(
  ( (tuple2!17395 (_1!10099 Token!5844) (_2!10099 List!17894)) )
))
(declare-fun lt!586855 () tuple2!17394)

(assert (=> b!1625103 (= res!726427 (= (_1!10099 lt!586855) (h!23227 tokens!457)))))

(declare-datatypes ((Option!3302 0))(
  ( (None!3301) (Some!3301 (v!24336 tuple2!17394)) )
))
(declare-fun lt!586866 () Option!3302)

(declare-fun get!5137 (Option!3302) tuple2!17394)

(assert (=> b!1625103 (= lt!586855 (get!5137 lt!586866))))

(declare-fun isDefined!2669 (Option!3302) Bool)

(assert (=> b!1625103 (isDefined!2669 lt!586866)))

(declare-fun maxPrefix!1332 (LexerInterface!2768 List!17895 List!17894) Option!3302)

(assert (=> b!1625103 (= lt!586866 (maxPrefix!1332 thiss!17113 rules!1846 lt!586842))))

(assert (=> b!1625103 (isDefined!2669 (maxPrefix!1332 thiss!17113 rules!1846 (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun b!1625104 () Bool)

(declare-fun e!1042345 () Bool)

(declare-fun e!1042342 () Bool)

(assert (=> b!1625104 (= e!1042345 e!1042342)))

(declare-fun res!726436 () Bool)

(assert (=> b!1625104 (=> res!726436 e!1042342)))

(declare-fun lt!586848 () List!17894)

(declare-fun lt!586854 () List!17894)

(assert (=> b!1625104 (= res!726436 (or (not (= lt!586848 lt!586854)) (not (= lt!586854 lt!586842)) (not (= lt!586848 lt!586842))))))

(declare-fun printList!883 (LexerInterface!2768 List!17896) List!17894)

(assert (=> b!1625104 (= lt!586854 (printList!883 thiss!17113 (Cons!17826 (h!23227 tokens!457) Nil!17826)))))

(declare-fun lt!586862 () BalanceConc!11796)

(assert (=> b!1625104 (= lt!586848 (list!6995 lt!586862))))

(declare-fun lt!586843 () BalanceConc!11798)

(declare-fun printTailRec!821 (LexerInterface!2768 BalanceConc!11798 Int BalanceConc!11796) BalanceConc!11796)

(assert (=> b!1625104 (= lt!586862 (printTailRec!821 thiss!17113 lt!586843 0 (BalanceConc!11797 Empty!5926)))))

(assert (=> b!1625104 (= lt!586862 (print!1299 thiss!17113 lt!586843))))

(declare-fun singletonSeq!1557 (Token!5844) BalanceConc!11798)

(assert (=> b!1625104 (= lt!586843 (singletonSeq!1557 (h!23227 tokens!457)))))

(declare-fun lt!586851 () Option!3302)

(assert (=> b!1625104 (= lt!586851 (maxPrefix!1332 thiss!17113 rules!1846 lt!586850))))

(assert (=> b!1625105 (= e!1042329 (and tp!472653 tp!472650))))

(declare-fun b!1625106 () Bool)

(declare-fun head!3433 (List!17894) C!9108)

(assert (=> b!1625106 (= e!1042325 (= lt!586857 (Cons!17824 (head!3433 lt!586865) Nil!17824)))))

(declare-fun b!1625108 () Bool)

(declare-fun res!726432 () Bool)

(assert (=> b!1625108 (=> res!726432 e!1042345)))

(declare-fun separableTokensPredicate!710 (LexerInterface!2768 Token!5844 Token!5844 List!17895) Bool)

(assert (=> b!1625108 (= res!726432 (not (separableTokensPredicate!710 thiss!17113 (h!23227 tokens!457) (h!23227 (t!148987 tokens!457)) rules!1846)))))

(declare-fun b!1625109 () Bool)

(declare-fun res!726435 () Bool)

(assert (=> b!1625109 (=> (not res!726435) (not e!1042327))))

(declare-fun isEmpty!10853 (List!17894) Bool)

(assert (=> b!1625109 (= res!726435 (isEmpty!10853 (_2!10099 lt!586855)))))

(declare-fun e!1042340 () Bool)

(declare-fun e!1042334 () Bool)

(declare-fun tp!472649 () Bool)

(declare-fun b!1625110 () Bool)

(declare-fun inv!21 (TokenValue!3229) Bool)

(assert (=> b!1625110 (= e!1042334 (and (inv!21 (value!99134 (h!23227 tokens!457))) e!1042340 tp!472649))))

(declare-fun b!1625111 () Bool)

(declare-fun e!1042335 () Bool)

(assert (=> b!1625111 (= e!1042339 (not e!1042335))))

(declare-fun res!726440 () Bool)

(assert (=> b!1625111 (=> res!726440 e!1042335)))

(declare-fun lt!586867 () List!17896)

(assert (=> b!1625111 (= res!726440 (not (= lt!586867 (t!148987 tokens!457))))))

(declare-fun list!6996 (BalanceConc!11798) List!17896)

(assert (=> b!1625111 (= lt!586867 (list!6996 (_1!10097 lt!586859)))))

(declare-datatypes ((Unit!28867 0))(
  ( (Unit!28868) )
))
(declare-fun lt!586849 () Unit!28867)

(declare-fun theoremInvertabilityWhenTokenListSeparable!213 (LexerInterface!2768 List!17895 List!17896) Unit!28867)

(assert (=> b!1625111 (= lt!586849 (theoremInvertabilityWhenTokenListSeparable!213 thiss!17113 rules!1846 (t!148987 tokens!457)))))

(declare-fun isPrefix!1399 (List!17894 List!17894) Bool)

(assert (=> b!1625111 (isPrefix!1399 lt!586842 lt!586868)))

(declare-fun lt!586853 () Unit!28867)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!924 (List!17894 List!17894) Unit!28867)

(assert (=> b!1625111 (= lt!586853 (lemmaConcatTwoListThenFirstIsPrefix!924 lt!586842 lt!586865))))

(declare-fun b!1625112 () Bool)

(declare-fun res!726428 () Bool)

(assert (=> b!1625112 (=> res!726428 e!1042342)))

(declare-fun isEmpty!10854 (BalanceConc!11798) Bool)

(assert (=> b!1625112 (= res!726428 (isEmpty!10854 (_1!10097 (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842)))))))

(declare-fun b!1625113 () Bool)

(declare-fun res!726426 () Bool)

(assert (=> b!1625113 (=> (not res!726426) (not e!1042325))))

(assert (=> b!1625113 (= res!726426 (= lt!586857 (Cons!17824 (head!3433 (originalCharacters!3953 (h!23227 (t!148987 tokens!457)))) Nil!17824)))))

(declare-fun b!1625114 () Bool)

(declare-fun e!1042331 () Bool)

(declare-fun tp!472654 () Bool)

(assert (=> b!1625114 (= e!1042331 (and e!1042333 tp!472654))))

(declare-fun b!1625115 () Bool)

(declare-fun res!726431 () Bool)

(assert (=> b!1625115 (=> (not res!726431) (not e!1042346))))

(declare-fun isEmpty!10855 (List!17895) Bool)

(assert (=> b!1625115 (= res!726431 (not (isEmpty!10855 rules!1846)))))

(declare-fun b!1625116 () Bool)

(declare-fun tp!472651 () Bool)

(declare-fun e!1042326 () Bool)

(declare-fun inv!23204 (Token!5844) Bool)

(assert (=> b!1625116 (= e!1042326 (and (inv!23204 (h!23227 tokens!457)) e!1042334 tp!472651))))

(declare-fun b!1625117 () Bool)

(declare-fun contains!3114 (List!17895 Rule!6078) Bool)

(assert (=> b!1625117 (= e!1042344 (contains!3114 rules!1846 (rule!4965 (h!23227 tokens!457))))))

(declare-fun tp!472646 () Bool)

(declare-fun b!1625118 () Bool)

(assert (=> b!1625118 (= e!1042340 (and tp!472646 (inv!23200 (tag!3417 (rule!4965 (h!23227 tokens!457)))) (inv!23203 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) e!1042338))))

(declare-fun b!1625119 () Bool)

(declare-fun res!726437 () Bool)

(assert (=> b!1625119 (=> res!726437 e!1042342)))

(declare-fun rulesProduceIndividualToken!1420 (LexerInterface!2768 List!17895 Token!5844) Bool)

(assert (=> b!1625119 (= res!726437 (not (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 tokens!457))))))

(declare-fun b!1625120 () Bool)

(assert (=> b!1625120 (= e!1042342 e!1042328)))

(declare-fun res!726422 () Bool)

(assert (=> b!1625120 (=> res!726422 e!1042328)))

(assert (=> b!1625120 (= res!726422 (not (isDefined!2669 lt!586851)))))

(declare-fun lt!586860 () Unit!28867)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!342 (LexerInterface!2768 List!17895 List!17894 List!17894) Unit!28867)

(assert (=> b!1625120 (= lt!586860 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!342 thiss!17113 rules!1846 lt!586842 lt!586865))))

(declare-fun b!1625121 () Bool)

(declare-fun res!726441 () Bool)

(assert (=> b!1625121 (=> (not res!726441) (not e!1042346))))

(declare-fun rulesInvariant!2437 (LexerInterface!2768 List!17895) Bool)

(assert (=> b!1625121 (= res!726441 (rulesInvariant!2437 thiss!17113 rules!1846))))

(declare-fun b!1625122 () Bool)

(declare-fun res!726424 () Bool)

(assert (=> b!1625122 (=> (not res!726424) (not e!1042346))))

(declare-fun rulesProduceEachTokenIndividuallyList!970 (LexerInterface!2768 List!17895 List!17896) Bool)

(assert (=> b!1625122 (= res!726424 (rulesProduceEachTokenIndividuallyList!970 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1625107 () Bool)

(assert (=> b!1625107 (= e!1042335 e!1042345)))

(declare-fun res!726433 () Bool)

(assert (=> b!1625107 (=> res!726433 e!1042345)))

(declare-fun lt!586856 () List!17896)

(declare-fun lt!586858 () List!17896)

(assert (=> b!1625107 (= res!726433 (or (not (= lt!586867 lt!586858)) (not (= lt!586858 lt!586856))))))

(assert (=> b!1625107 (= lt!586858 (list!6996 lt!586844))))

(assert (=> b!1625107 (= lt!586867 lt!586856)))

(declare-fun prepend!665 (BalanceConc!11798 Token!5844) BalanceConc!11798)

(assert (=> b!1625107 (= lt!586856 (list!6996 (prepend!665 (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!586863 () Unit!28867)

(declare-fun seqFromListBHdTlConstructive!216 (Token!5844 List!17896 BalanceConc!11798) Unit!28867)

(assert (=> b!1625107 (= lt!586863 (seqFromListBHdTlConstructive!216 (h!23227 (t!148987 tokens!457)) (t!148987 (t!148987 tokens!457)) (_1!10097 lt!586859)))))

(declare-fun res!726425 () Bool)

(assert (=> start!154470 (=> (not res!726425) (not e!1042346))))

(assert (=> start!154470 (= res!726425 ((_ is Lexer!2766) thiss!17113))))

(assert (=> start!154470 e!1042346))

(assert (=> start!154470 true))

(assert (=> start!154470 e!1042331))

(assert (=> start!154470 e!1042326))

(assert (= (and start!154470 res!726425) b!1625115))

(assert (= (and b!1625115 res!726431) b!1625121))

(assert (= (and b!1625121 res!726441) b!1625122))

(assert (= (and b!1625122 res!726424) b!1625094))

(assert (= (and b!1625094 res!726429) b!1625101))

(assert (= (and b!1625101 res!726430) b!1625096))

(assert (= (and b!1625096 res!726438) b!1625111))

(assert (= (and b!1625111 (not res!726440)) b!1625107))

(assert (= (and b!1625107 (not res!726433)) b!1625108))

(assert (= (and b!1625108 (not res!726432)) b!1625104))

(assert (= (and b!1625104 (not res!726436)) b!1625119))

(assert (= (and b!1625119 (not res!726437)) b!1625112))

(assert (= (and b!1625112 (not res!726428)) b!1625120))

(assert (= (and b!1625120 (not res!726422)) b!1625099))

(assert (= (and b!1625099 (not res!726439)) b!1625095))

(assert (= (and b!1625095 (not res!726434)) b!1625098))

(assert (= (and b!1625098 res!726423) b!1625113))

(assert (= (and b!1625113 res!726426) b!1625106))

(assert (= (and b!1625098 (not res!726444)) b!1625103))

(assert (= (and b!1625103 res!726427) b!1625109))

(assert (= (and b!1625109 res!726435) b!1625100))

(assert (= (and b!1625103 (not res!726443)) b!1625102))

(assert (= (and b!1625102 (not res!726442)) b!1625117))

(assert (= b!1625093 b!1625105))

(assert (= b!1625114 b!1625093))

(assert (= (and start!154470 ((_ is Cons!17825) rules!1846)) b!1625114))

(assert (= b!1625118 b!1625097))

(assert (= b!1625110 b!1625118))

(assert (= b!1625116 b!1625110))

(assert (= (and start!154470 ((_ is Cons!17826) tokens!457)) b!1625116))

(declare-fun m!1952739 () Bool)

(assert (=> b!1625096 m!1952739))

(declare-fun m!1952741 () Bool)

(assert (=> b!1625096 m!1952741))

(declare-fun m!1952743 () Bool)

(assert (=> b!1625096 m!1952743))

(declare-fun m!1952745 () Bool)

(assert (=> b!1625096 m!1952745))

(declare-fun m!1952747 () Bool)

(assert (=> b!1625096 m!1952747))

(declare-fun m!1952749 () Bool)

(assert (=> b!1625096 m!1952749))

(declare-fun m!1952751 () Bool)

(assert (=> b!1625096 m!1952751))

(declare-fun m!1952753 () Bool)

(assert (=> b!1625096 m!1952753))

(declare-fun m!1952755 () Bool)

(assert (=> b!1625096 m!1952755))

(assert (=> b!1625096 m!1952747))

(declare-fun m!1952757 () Bool)

(assert (=> b!1625096 m!1952757))

(declare-fun m!1952759 () Bool)

(assert (=> b!1625122 m!1952759))

(declare-fun m!1952761 () Bool)

(assert (=> b!1625118 m!1952761))

(declare-fun m!1952763 () Bool)

(assert (=> b!1625118 m!1952763))

(declare-fun m!1952765 () Bool)

(assert (=> b!1625117 m!1952765))

(declare-fun m!1952767 () Bool)

(assert (=> b!1625119 m!1952767))

(declare-fun m!1952769 () Bool)

(assert (=> b!1625106 m!1952769))

(declare-fun m!1952771 () Bool)

(assert (=> b!1625104 m!1952771))

(declare-fun m!1952773 () Bool)

(assert (=> b!1625104 m!1952773))

(declare-fun m!1952775 () Bool)

(assert (=> b!1625104 m!1952775))

(declare-fun m!1952777 () Bool)

(assert (=> b!1625104 m!1952777))

(declare-fun m!1952779 () Bool)

(assert (=> b!1625104 m!1952779))

(declare-fun m!1952781 () Bool)

(assert (=> b!1625104 m!1952781))

(declare-fun m!1952783 () Bool)

(assert (=> b!1625100 m!1952783))

(declare-fun m!1952785 () Bool)

(assert (=> b!1625115 m!1952785))

(declare-fun m!1952787 () Bool)

(assert (=> b!1625094 m!1952787))

(declare-fun m!1952789 () Bool)

(assert (=> b!1625109 m!1952789))

(declare-fun m!1952791 () Bool)

(assert (=> b!1625107 m!1952791))

(declare-fun m!1952793 () Bool)

(assert (=> b!1625107 m!1952793))

(declare-fun m!1952795 () Bool)

(assert (=> b!1625107 m!1952795))

(declare-fun m!1952797 () Bool)

(assert (=> b!1625107 m!1952797))

(declare-fun m!1952799 () Bool)

(assert (=> b!1625107 m!1952799))

(assert (=> b!1625107 m!1952795))

(assert (=> b!1625107 m!1952797))

(declare-fun m!1952801 () Bool)

(assert (=> b!1625095 m!1952801))

(assert (=> b!1625095 m!1952801))

(declare-fun m!1952803 () Bool)

(assert (=> b!1625095 m!1952803))

(declare-fun m!1952805 () Bool)

(assert (=> b!1625095 m!1952805))

(declare-fun m!1952807 () Bool)

(assert (=> b!1625116 m!1952807))

(declare-fun m!1952809 () Bool)

(assert (=> b!1625111 m!1952809))

(declare-fun m!1952811 () Bool)

(assert (=> b!1625111 m!1952811))

(declare-fun m!1952813 () Bool)

(assert (=> b!1625111 m!1952813))

(declare-fun m!1952815 () Bool)

(assert (=> b!1625111 m!1952815))

(declare-fun m!1952817 () Bool)

(assert (=> b!1625099 m!1952817))

(declare-fun m!1952819 () Bool)

(assert (=> b!1625099 m!1952819))

(declare-fun m!1952821 () Bool)

(assert (=> b!1625099 m!1952821))

(declare-fun m!1952823 () Bool)

(assert (=> b!1625099 m!1952823))

(assert (=> b!1625099 m!1952819))

(declare-fun m!1952825 () Bool)

(assert (=> b!1625099 m!1952825))

(declare-fun m!1952827 () Bool)

(assert (=> b!1625099 m!1952827))

(assert (=> b!1625099 m!1952821))

(assert (=> b!1625099 m!1952827))

(declare-fun m!1952829 () Bool)

(assert (=> b!1625108 m!1952829))

(declare-fun m!1952831 () Bool)

(assert (=> b!1625112 m!1952831))

(assert (=> b!1625112 m!1952831))

(declare-fun m!1952833 () Bool)

(assert (=> b!1625112 m!1952833))

(declare-fun m!1952835 () Bool)

(assert (=> b!1625112 m!1952835))

(declare-fun m!1952837 () Bool)

(assert (=> b!1625102 m!1952837))

(assert (=> b!1625102 m!1952837))

(declare-fun m!1952839 () Bool)

(assert (=> b!1625102 m!1952839))

(declare-fun m!1952841 () Bool)

(assert (=> b!1625110 m!1952841))

(declare-fun m!1952843 () Bool)

(assert (=> b!1625113 m!1952843))

(declare-fun m!1952845 () Bool)

(assert (=> b!1625093 m!1952845))

(declare-fun m!1952847 () Bool)

(assert (=> b!1625093 m!1952847))

(declare-fun m!1952849 () Bool)

(assert (=> b!1625098 m!1952849))

(assert (=> b!1625098 m!1952849))

(declare-fun m!1952851 () Bool)

(assert (=> b!1625098 m!1952851))

(assert (=> b!1625098 m!1952851))

(declare-fun m!1952853 () Bool)

(assert (=> b!1625098 m!1952853))

(declare-fun m!1952855 () Bool)

(assert (=> b!1625098 m!1952855))

(declare-fun m!1952857 () Bool)

(assert (=> b!1625103 m!1952857))

(declare-fun m!1952859 () Bool)

(assert (=> b!1625103 m!1952859))

(declare-fun m!1952861 () Bool)

(assert (=> b!1625103 m!1952861))

(declare-fun m!1952863 () Bool)

(assert (=> b!1625103 m!1952863))

(declare-fun m!1952865 () Bool)

(assert (=> b!1625103 m!1952865))

(declare-fun m!1952867 () Bool)

(assert (=> b!1625103 m!1952867))

(declare-fun m!1952869 () Bool)

(assert (=> b!1625103 m!1952869))

(assert (=> b!1625103 m!1952865))

(assert (=> b!1625103 m!1952859))

(declare-fun m!1952871 () Bool)

(assert (=> b!1625120 m!1952871))

(declare-fun m!1952873 () Bool)

(assert (=> b!1625120 m!1952873))

(declare-fun m!1952875 () Bool)

(assert (=> b!1625121 m!1952875))

(check-sat (not b!1625111) (not b!1625108) (not b!1625116) (not b_next!44557) (not b!1625110) (not b!1625114) (not b!1625095) (not b!1625096) (not b!1625118) b_and!115247 (not b!1625100) (not b!1625120) (not b!1625099) (not b!1625119) (not b!1625109) b_and!115245 (not b_next!44551) (not b!1625098) (not b!1625112) (not b!1625106) (not b!1625107) (not b!1625117) (not b!1625104) (not b_next!44553) (not b!1625093) (not b!1625122) (not b!1625102) (not b_next!44555) b_and!115251 (not b!1625115) b_and!115249 (not b!1625121) (not b!1625103) (not b!1625094) (not b!1625113))
(check-sat b_and!115245 (not b_next!44551) (not b_next!44557) (not b_next!44553) b_and!115249 b_and!115247 (not b_next!44555) b_and!115251)
(get-model)

(declare-fun d!489262 () Bool)

(declare-fun isEmpty!10861 (Option!3301) Bool)

(assert (=> d!489262 (= (isDefined!2668 (maxPrefixZipperSequence!663 thiss!17113 rules!1846 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457))))) (not (isEmpty!10861 (maxPrefixZipperSequence!663 thiss!17113 rules!1846 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))

(declare-fun bs!394744 () Bool)

(assert (= bs!394744 d!489262))

(assert (=> bs!394744 m!1952851))

(declare-fun m!1952911 () Bool)

(assert (=> bs!394744 m!1952911))

(assert (=> b!1625098 d!489262))

(declare-fun b!1625181 () Bool)

(declare-fun e!1042386 () Bool)

(declare-fun e!1042389 () Bool)

(assert (=> b!1625181 (= e!1042386 e!1042389)))

(declare-fun res!726493 () Bool)

(assert (=> b!1625181 (=> (not res!726493) (not e!1042389))))

(declare-fun lt!586897 () Option!3301)

(declare-fun get!5140 (Option!3301) tuple2!17392)

(assert (=> b!1625181 (= res!726493 (= (_1!10098 (get!5140 lt!586897)) (_1!10099 (get!5137 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))))

(declare-fun b!1625182 () Bool)

(declare-fun e!1042390 () Option!3301)

(declare-fun call!105235 () Option!3301)

(assert (=> b!1625182 (= e!1042390 call!105235)))

(declare-fun b!1625183 () Bool)

(declare-fun res!726491 () Bool)

(declare-fun e!1042388 () Bool)

(assert (=> b!1625183 (=> (not res!726491) (not e!1042388))))

(declare-fun e!1042387 () Bool)

(assert (=> b!1625183 (= res!726491 e!1042387)))

(declare-fun res!726495 () Bool)

(assert (=> b!1625183 (=> res!726495 e!1042387)))

(assert (=> b!1625183 (= res!726495 (not (isDefined!2668 lt!586897)))))

(declare-fun b!1625184 () Bool)

(assert (=> b!1625184 (= e!1042389 (= (list!6995 (_2!10098 (get!5140 lt!586897))) (_2!10099 (get!5137 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))))

(declare-fun b!1625185 () Bool)

(assert (=> b!1625185 (= e!1042388 e!1042386)))

(declare-fun res!726492 () Bool)

(assert (=> b!1625185 (=> res!726492 e!1042386)))

(assert (=> b!1625185 (= res!726492 (not (isDefined!2668 lt!586897)))))

(declare-fun d!489264 () Bool)

(assert (=> d!489264 e!1042388))

(declare-fun res!726490 () Bool)

(assert (=> d!489264 (=> (not res!726490) (not e!1042388))))

(declare-fun maxPrefixZipper!306 (LexerInterface!2768 List!17895 List!17894) Option!3302)

(assert (=> d!489264 (= res!726490 (= (isDefined!2668 lt!586897) (isDefined!2669 (maxPrefixZipper!306 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457))))))))))

(assert (=> d!489264 (= lt!586897 e!1042390)))

(declare-fun c!264505 () Bool)

(assert (=> d!489264 (= c!264505 (and ((_ is Cons!17825) rules!1846) ((_ is Nil!17825) (t!148986 rules!1846))))))

(declare-fun lt!586900 () Unit!28867)

(declare-fun lt!586896 () Unit!28867)

(assert (=> d!489264 (= lt!586900 lt!586896)))

(declare-fun lt!586899 () List!17894)

(declare-fun lt!586901 () List!17894)

(assert (=> d!489264 (isPrefix!1399 lt!586899 lt!586901)))

(declare-fun lemmaIsPrefixRefl!960 (List!17894 List!17894) Unit!28867)

(assert (=> d!489264 (= lt!586896 (lemmaIsPrefixRefl!960 lt!586899 lt!586901))))

(assert (=> d!489264 (= lt!586901 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))

(assert (=> d!489264 (= lt!586899 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))

(declare-fun rulesValidInductive!972 (LexerInterface!2768 List!17895) Bool)

(assert (=> d!489264 (rulesValidInductive!972 thiss!17113 rules!1846)))

(assert (=> d!489264 (= (maxPrefixZipperSequence!663 thiss!17113 rules!1846 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))) lt!586897)))

(declare-fun b!1625186 () Bool)

(declare-fun e!1042391 () Bool)

(assert (=> b!1625186 (= e!1042391 (= (list!6995 (_2!10098 (get!5140 lt!586897))) (_2!10099 (get!5137 (maxPrefixZipper!306 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))))

(declare-fun b!1625187 () Bool)

(declare-fun lt!586895 () Option!3301)

(declare-fun lt!586898 () Option!3301)

(assert (=> b!1625187 (= e!1042390 (ite (and ((_ is None!3300) lt!586895) ((_ is None!3300) lt!586898)) None!3300 (ite ((_ is None!3300) lt!586898) lt!586895 (ite ((_ is None!3300) lt!586895) lt!586898 (ite (>= (size!14266 (_1!10098 (v!24335 lt!586895))) (size!14266 (_1!10098 (v!24335 lt!586898)))) lt!586895 lt!586898)))))))

(assert (=> b!1625187 (= lt!586895 call!105235)))

(assert (=> b!1625187 (= lt!586898 (maxPrefixZipperSequence!663 thiss!17113 (t!148986 rules!1846) (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))

(declare-fun bm!105230 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!316 (LexerInterface!2768 Rule!6078 BalanceConc!11796) Option!3301)

(assert (=> bm!105230 (= call!105235 (maxPrefixOneRuleZipperSequence!316 thiss!17113 (h!23226 rules!1846) (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))

(declare-fun b!1625188 () Bool)

(assert (=> b!1625188 (= e!1042387 e!1042391)))

(declare-fun res!726494 () Bool)

(assert (=> b!1625188 (=> (not res!726494) (not e!1042391))))

(assert (=> b!1625188 (= res!726494 (= (_1!10098 (get!5140 lt!586897)) (_1!10099 (get!5137 (maxPrefixZipper!306 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457)))))))))))

(assert (= (and d!489264 c!264505) b!1625182))

(assert (= (and d!489264 (not c!264505)) b!1625187))

(assert (= (or b!1625182 b!1625187) bm!105230))

(assert (= (and d!489264 res!726490) b!1625183))

(assert (= (and b!1625183 (not res!726495)) b!1625188))

(assert (= (and b!1625188 res!726494) b!1625186))

(assert (= (and b!1625183 res!726491) b!1625185))

(assert (= (and b!1625185 (not res!726492)) b!1625181))

(assert (= (and b!1625181 res!726493) b!1625184))

(declare-fun m!1952949 () Bool)

(assert (=> b!1625188 m!1952949))

(assert (=> b!1625188 m!1952849))

(declare-fun m!1952951 () Bool)

(assert (=> b!1625188 m!1952951))

(assert (=> b!1625188 m!1952951))

(declare-fun m!1952953 () Bool)

(assert (=> b!1625188 m!1952953))

(assert (=> b!1625188 m!1952953))

(declare-fun m!1952955 () Bool)

(assert (=> b!1625188 m!1952955))

(assert (=> b!1625187 m!1952849))

(declare-fun m!1952957 () Bool)

(assert (=> b!1625187 m!1952957))

(assert (=> b!1625184 m!1952849))

(assert (=> b!1625184 m!1952951))

(declare-fun m!1952959 () Bool)

(assert (=> b!1625184 m!1952959))

(declare-fun m!1952961 () Bool)

(assert (=> b!1625184 m!1952961))

(assert (=> b!1625184 m!1952949))

(assert (=> b!1625184 m!1952951))

(assert (=> b!1625184 m!1952959))

(declare-fun m!1952963 () Bool)

(assert (=> b!1625184 m!1952963))

(assert (=> b!1625186 m!1952849))

(assert (=> b!1625186 m!1952951))

(assert (=> b!1625186 m!1952951))

(assert (=> b!1625186 m!1952953))

(assert (=> b!1625186 m!1952949))

(assert (=> b!1625186 m!1952963))

(assert (=> b!1625186 m!1952953))

(assert (=> b!1625186 m!1952955))

(assert (=> bm!105230 m!1952849))

(declare-fun m!1952965 () Bool)

(assert (=> bm!105230 m!1952965))

(declare-fun m!1952967 () Bool)

(assert (=> b!1625185 m!1952967))

(assert (=> b!1625183 m!1952967))

(assert (=> b!1625181 m!1952949))

(assert (=> b!1625181 m!1952849))

(assert (=> b!1625181 m!1952951))

(assert (=> b!1625181 m!1952951))

(assert (=> b!1625181 m!1952959))

(assert (=> b!1625181 m!1952959))

(assert (=> b!1625181 m!1952961))

(assert (=> d!489264 m!1952849))

(assert (=> d!489264 m!1952951))

(declare-fun m!1952969 () Bool)

(assert (=> d!489264 m!1952969))

(declare-fun m!1952971 () Bool)

(assert (=> d!489264 m!1952971))

(assert (=> d!489264 m!1952951))

(assert (=> d!489264 m!1952953))

(declare-fun m!1952973 () Bool)

(assert (=> d!489264 m!1952973))

(assert (=> d!489264 m!1952953))

(declare-fun m!1952975 () Bool)

(assert (=> d!489264 m!1952975))

(assert (=> d!489264 m!1952967))

(assert (=> b!1625098 d!489264))

(declare-fun d!489282 () Bool)

(declare-fun fromListB!893 (List!17894) BalanceConc!11796)

(assert (=> d!489282 (= (seqFromList!2028 (originalCharacters!3953 (h!23227 tokens!457))) (fromListB!893 (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun bs!394748 () Bool)

(assert (= bs!394748 d!489282))

(declare-fun m!1952977 () Bool)

(assert (=> bs!394748 m!1952977))

(assert (=> b!1625098 d!489282))

(declare-fun d!489284 () Bool)

(declare-fun lt!586904 () C!9108)

(assert (=> d!489284 (= lt!586904 (head!3433 (list!6995 lt!586852)))))

(declare-fun head!3436 (Conc!5926) C!9108)

(assert (=> d!489284 (= lt!586904 (head!3436 (c!264491 lt!586852)))))

(declare-fun isEmpty!10862 (BalanceConc!11796) Bool)

(assert (=> d!489284 (not (isEmpty!10862 lt!586852))))

(assert (=> d!489284 (= (head!3432 lt!586852) lt!586904)))

(declare-fun bs!394749 () Bool)

(assert (= bs!394749 d!489284))

(assert (=> bs!394749 m!1952739))

(assert (=> bs!394749 m!1952739))

(declare-fun m!1952979 () Bool)

(assert (=> bs!394749 m!1952979))

(declare-fun m!1952981 () Bool)

(assert (=> bs!394749 m!1952981))

(declare-fun m!1952983 () Bool)

(assert (=> bs!394749 m!1952983))

(assert (=> b!1625098 d!489284))

(declare-fun d!489286 () Bool)

(declare-fun lt!586960 () Bool)

(declare-fun e!1042403 () Bool)

(assert (=> d!489286 (= lt!586960 e!1042403)))

(declare-fun res!726510 () Bool)

(assert (=> d!489286 (=> (not res!726510) (not e!1042403))))

(assert (=> d!489286 (= res!726510 (= (list!6996 (_1!10097 (lex!1252 thiss!17113 rules!1846 (print!1299 thiss!17113 (singletonSeq!1557 (h!23227 tokens!457)))))) (list!6996 (singletonSeq!1557 (h!23227 tokens!457)))))))

(declare-fun e!1042402 () Bool)

(assert (=> d!489286 (= lt!586960 e!1042402)))

(declare-fun res!726509 () Bool)

(assert (=> d!489286 (=> (not res!726509) (not e!1042402))))

(declare-fun lt!586961 () tuple2!17390)

(declare-fun size!14270 (BalanceConc!11798) Int)

(assert (=> d!489286 (= res!726509 (= (size!14270 (_1!10097 lt!586961)) 1))))

(assert (=> d!489286 (= lt!586961 (lex!1252 thiss!17113 rules!1846 (print!1299 thiss!17113 (singletonSeq!1557 (h!23227 tokens!457)))))))

(assert (=> d!489286 (not (isEmpty!10855 rules!1846))))

(assert (=> d!489286 (= (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 tokens!457)) lt!586960)))

(declare-fun b!1625207 () Bool)

(declare-fun res!726508 () Bool)

(assert (=> b!1625207 (=> (not res!726508) (not e!1042402))))

(declare-fun apply!4553 (BalanceConc!11798 Int) Token!5844)

(assert (=> b!1625207 (= res!726508 (= (apply!4553 (_1!10097 lt!586961) 0) (h!23227 tokens!457)))))

(declare-fun b!1625208 () Bool)

(assert (=> b!1625208 (= e!1042402 (isEmpty!10862 (_2!10097 lt!586961)))))

(declare-fun b!1625209 () Bool)

(assert (=> b!1625209 (= e!1042403 (isEmpty!10862 (_2!10097 (lex!1252 thiss!17113 rules!1846 (print!1299 thiss!17113 (singletonSeq!1557 (h!23227 tokens!457)))))))))

(assert (= (and d!489286 res!726509) b!1625207))

(assert (= (and b!1625207 res!726508) b!1625208))

(assert (= (and d!489286 res!726510) b!1625209))

(assert (=> d!489286 m!1952775))

(declare-fun m!1953031 () Bool)

(assert (=> d!489286 m!1953031))

(declare-fun m!1953033 () Bool)

(assert (=> d!489286 m!1953033))

(declare-fun m!1953035 () Bool)

(assert (=> d!489286 m!1953035))

(declare-fun m!1953037 () Bool)

(assert (=> d!489286 m!1953037))

(assert (=> d!489286 m!1952775))

(assert (=> d!489286 m!1953033))

(declare-fun m!1953039 () Bool)

(assert (=> d!489286 m!1953039))

(assert (=> d!489286 m!1952775))

(assert (=> d!489286 m!1952785))

(declare-fun m!1953041 () Bool)

(assert (=> b!1625207 m!1953041))

(declare-fun m!1953043 () Bool)

(assert (=> b!1625208 m!1953043))

(assert (=> b!1625209 m!1952775))

(assert (=> b!1625209 m!1952775))

(assert (=> b!1625209 m!1953033))

(assert (=> b!1625209 m!1953033))

(assert (=> b!1625209 m!1953035))

(declare-fun m!1953045 () Bool)

(assert (=> b!1625209 m!1953045))

(assert (=> b!1625119 d!489286))

(declare-fun d!489292 () Bool)

(declare-fun isEmpty!10863 (Option!3302) Bool)

(assert (=> d!489292 (= (isDefined!2669 lt!586851) (not (isEmpty!10863 lt!586851)))))

(declare-fun bs!394751 () Bool)

(assert (= bs!394751 d!489292))

(declare-fun m!1953047 () Bool)

(assert (=> bs!394751 m!1953047))

(assert (=> b!1625120 d!489292))

(declare-fun d!489294 () Bool)

(assert (=> d!489294 (isDefined!2669 (maxPrefix!1332 thiss!17113 rules!1846 (++!4737 lt!586842 lt!586865)))))

(declare-fun lt!587073 () Unit!28867)

(declare-fun e!1042446 () Unit!28867)

(assert (=> d!489294 (= lt!587073 e!1042446)))

(declare-fun c!264519 () Bool)

(assert (=> d!489294 (= c!264519 (isEmpty!10863 (maxPrefix!1332 thiss!17113 rules!1846 (++!4737 lt!586842 lt!586865))))))

(declare-fun lt!587077 () Unit!28867)

(declare-fun lt!587078 () Unit!28867)

(assert (=> d!489294 (= lt!587077 lt!587078)))

(declare-fun e!1042445 () Bool)

(assert (=> d!489294 e!1042445))

(declare-fun res!726560 () Bool)

(assert (=> d!489294 (=> (not res!726560) (not e!1042445))))

(declare-fun lt!587074 () Token!5844)

(declare-datatypes ((Option!3304 0))(
  ( (None!3303) (Some!3303 (v!24346 Rule!6078)) )
))
(declare-fun isDefined!2671 (Option!3304) Bool)

(declare-fun getRuleFromTag!284 (LexerInterface!2768 List!17895 String!20477) Option!3304)

(assert (=> d!489294 (= res!726560 (isDefined!2671 (getRuleFromTag!284 thiss!17113 rules!1846 (tag!3417 (rule!4965 lt!587074)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!284 (LexerInterface!2768 List!17895 List!17894 Token!5844) Unit!28867)

(assert (=> d!489294 (= lt!587078 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!284 thiss!17113 rules!1846 lt!586842 lt!587074))))

(declare-fun lt!587070 () Unit!28867)

(declare-fun lt!587071 () Unit!28867)

(assert (=> d!489294 (= lt!587070 lt!587071)))

(declare-fun lt!587066 () List!17894)

(assert (=> d!489294 (isPrefix!1399 lt!587066 (++!4737 lt!586842 lt!586865))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!170 (List!17894 List!17894 List!17894) Unit!28867)

(assert (=> d!489294 (= lt!587071 (lemmaPrefixStaysPrefixWhenAddingToSuffix!170 lt!587066 lt!586842 lt!586865))))

(assert (=> d!489294 (= lt!587066 (list!6995 (charsOf!1788 lt!587074)))))

(declare-fun lt!587075 () Unit!28867)

(declare-fun lt!587069 () Unit!28867)

(assert (=> d!489294 (= lt!587075 lt!587069)))

(declare-fun lt!587080 () List!17894)

(declare-fun lt!587076 () List!17894)

(assert (=> d!489294 (isPrefix!1399 lt!587080 (++!4737 lt!587080 lt!587076))))

(assert (=> d!489294 (= lt!587069 (lemmaConcatTwoListThenFirstIsPrefix!924 lt!587080 lt!587076))))

(assert (=> d!489294 (= lt!587076 (_2!10099 (get!5137 (maxPrefix!1332 thiss!17113 rules!1846 lt!586842))))))

(assert (=> d!489294 (= lt!587080 (list!6995 (charsOf!1788 lt!587074)))))

(declare-fun head!3437 (List!17896) Token!5844)

(assert (=> d!489294 (= lt!587074 (head!3437 (list!6996 (_1!10097 (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842))))))))

(assert (=> d!489294 (not (isEmpty!10855 rules!1846))))

(assert (=> d!489294 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!342 thiss!17113 rules!1846 lt!586842 lt!586865) lt!587073)))

(declare-fun b!1625279 () Bool)

(declare-fun get!5141 (Option!3304) Rule!6078)

(assert (=> b!1625279 (= e!1042445 (= (rule!4965 lt!587074) (get!5141 (getRuleFromTag!284 thiss!17113 rules!1846 (tag!3417 (rule!4965 lt!587074))))))))

(declare-fun b!1625280 () Bool)

(declare-fun Unit!28871 () Unit!28867)

(assert (=> b!1625280 (= e!1042446 Unit!28871)))

(declare-fun lt!587072 () List!17894)

(assert (=> b!1625280 (= lt!587072 (++!4737 lt!586842 lt!586865))))

(declare-fun lt!587068 () Unit!28867)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!178 (LexerInterface!2768 Rule!6078 List!17895 List!17894) Unit!28867)

(assert (=> b!1625280 (= lt!587068 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!178 thiss!17113 (rule!4965 lt!587074) rules!1846 lt!587072))))

(declare-fun maxPrefixOneRule!775 (LexerInterface!2768 Rule!6078 List!17894) Option!3302)

(assert (=> b!1625280 (isEmpty!10863 (maxPrefixOneRule!775 thiss!17113 (rule!4965 lt!587074) lt!587072))))

(declare-fun lt!587081 () Unit!28867)

(assert (=> b!1625280 (= lt!587081 lt!587068)))

(declare-fun lt!587067 () List!17894)

(assert (=> b!1625280 (= lt!587067 (list!6995 (charsOf!1788 lt!587074)))))

(declare-fun lt!587082 () Unit!28867)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!174 (LexerInterface!2768 Rule!6078 List!17894 List!17894) Unit!28867)

(assert (=> b!1625280 (= lt!587082 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!174 thiss!17113 (rule!4965 lt!587074) lt!587067 (++!4737 lt!586842 lt!586865)))))

(assert (=> b!1625280 (not (matchR!1966 (regex!3139 (rule!4965 lt!587074)) lt!587067))))

(declare-fun lt!587079 () Unit!28867)

(assert (=> b!1625280 (= lt!587079 lt!587082)))

(assert (=> b!1625280 false))

(declare-fun b!1625278 () Bool)

(declare-fun res!726559 () Bool)

(assert (=> b!1625278 (=> (not res!726559) (not e!1042445))))

(assert (=> b!1625278 (= res!726559 (matchR!1966 (regex!3139 (get!5141 (getRuleFromTag!284 thiss!17113 rules!1846 (tag!3417 (rule!4965 lt!587074))))) (list!6995 (charsOf!1788 lt!587074))))))

(declare-fun b!1625281 () Bool)

(declare-fun Unit!28872 () Unit!28867)

(assert (=> b!1625281 (= e!1042446 Unit!28872)))

(assert (= (and d!489294 res!726560) b!1625278))

(assert (= (and b!1625278 res!726559) b!1625279))

(assert (= (and d!489294 c!264519) b!1625280))

(assert (= (and d!489294 (not c!264519)) b!1625281))

(declare-fun m!1953193 () Bool)

(assert (=> d!489294 m!1953193))

(declare-fun m!1953195 () Bool)

(assert (=> d!489294 m!1953195))

(declare-fun m!1953197 () Bool)

(assert (=> d!489294 m!1953197))

(declare-fun m!1953199 () Bool)

(assert (=> d!489294 m!1953199))

(assert (=> d!489294 m!1952785))

(declare-fun m!1953201 () Bool)

(assert (=> d!489294 m!1953201))

(declare-fun m!1953203 () Bool)

(assert (=> d!489294 m!1953203))

(declare-fun m!1953205 () Bool)

(assert (=> d!489294 m!1953205))

(declare-fun m!1953207 () Bool)

(assert (=> d!489294 m!1953207))

(assert (=> d!489294 m!1953197))

(declare-fun m!1953209 () Bool)

(assert (=> d!489294 m!1953209))

(assert (=> d!489294 m!1953205))

(assert (=> d!489294 m!1952869))

(assert (=> d!489294 m!1952745))

(declare-fun m!1953211 () Bool)

(assert (=> d!489294 m!1953211))

(declare-fun m!1953213 () Bool)

(assert (=> d!489294 m!1953213))

(declare-fun m!1953215 () Bool)

(assert (=> d!489294 m!1953215))

(declare-fun m!1953217 () Bool)

(assert (=> d!489294 m!1953217))

(assert (=> d!489294 m!1953201))

(declare-fun m!1953219 () Bool)

(assert (=> d!489294 m!1953219))

(assert (=> d!489294 m!1952831))

(assert (=> d!489294 m!1952745))

(declare-fun m!1953221 () Bool)

(assert (=> d!489294 m!1953221))

(assert (=> d!489294 m!1953215))

(assert (=> d!489294 m!1952745))

(assert (=> d!489294 m!1953201))

(assert (=> d!489294 m!1952831))

(assert (=> d!489294 m!1952833))

(assert (=> d!489294 m!1953193))

(assert (=> d!489294 m!1952869))

(declare-fun m!1953223 () Bool)

(assert (=> d!489294 m!1953223))

(assert (=> b!1625279 m!1953193))

(assert (=> b!1625279 m!1953193))

(declare-fun m!1953225 () Bool)

(assert (=> b!1625279 m!1953225))

(assert (=> b!1625280 m!1953197))

(assert (=> b!1625280 m!1953199))

(assert (=> b!1625280 m!1952745))

(declare-fun m!1953227 () Bool)

(assert (=> b!1625280 m!1953227))

(assert (=> b!1625280 m!1953197))

(declare-fun m!1953229 () Bool)

(assert (=> b!1625280 m!1953229))

(declare-fun m!1953231 () Bool)

(assert (=> b!1625280 m!1953231))

(assert (=> b!1625280 m!1952745))

(declare-fun m!1953233 () Bool)

(assert (=> b!1625280 m!1953233))

(assert (=> b!1625280 m!1953229))

(declare-fun m!1953235 () Bool)

(assert (=> b!1625280 m!1953235))

(assert (=> b!1625278 m!1953197))

(assert (=> b!1625278 m!1953199))

(declare-fun m!1953237 () Bool)

(assert (=> b!1625278 m!1953237))

(assert (=> b!1625278 m!1953197))

(assert (=> b!1625278 m!1953199))

(assert (=> b!1625278 m!1953193))

(assert (=> b!1625278 m!1953193))

(assert (=> b!1625278 m!1953225))

(assert (=> b!1625120 d!489294))

(declare-fun d!489328 () Bool)

(assert (=> d!489328 (= (inv!23200 (tag!3417 (rule!4965 (h!23227 tokens!457)))) (= (mod (str.len (value!99133 (tag!3417 (rule!4965 (h!23227 tokens!457))))) 2) 0))))

(assert (=> b!1625118 d!489328))

(declare-fun d!489330 () Bool)

(declare-fun res!726563 () Bool)

(declare-fun e!1042449 () Bool)

(assert (=> d!489330 (=> (not res!726563) (not e!1042449))))

(declare-fun semiInverseModEq!1200 (Int Int) Bool)

(assert (=> d!489330 (= res!726563 (semiInverseModEq!1200 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (toValue!4566 (transformation!3139 (rule!4965 (h!23227 tokens!457))))))))

(assert (=> d!489330 (= (inv!23203 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) e!1042449)))

(declare-fun b!1625284 () Bool)

(declare-fun equivClasses!1141 (Int Int) Bool)

(assert (=> b!1625284 (= e!1042449 (equivClasses!1141 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (toValue!4566 (transformation!3139 (rule!4965 (h!23227 tokens!457))))))))

(assert (= (and d!489330 res!726563) b!1625284))

(declare-fun m!1953249 () Bool)

(assert (=> d!489330 m!1953249))

(declare-fun m!1953251 () Bool)

(assert (=> b!1625284 m!1953251))

(assert (=> b!1625118 d!489330))

(declare-fun b!1625428 () Bool)

(declare-fun e!1042530 () Bool)

(assert (=> b!1625428 (= e!1042530 true)))

(declare-fun b!1625427 () Bool)

(declare-fun e!1042529 () Bool)

(assert (=> b!1625427 (= e!1042529 e!1042530)))

(declare-fun b!1625426 () Bool)

(declare-fun e!1042528 () Bool)

(assert (=> b!1625426 (= e!1042528 e!1042529)))

(declare-fun d!489336 () Bool)

(assert (=> d!489336 e!1042528))

(assert (= b!1625427 b!1625428))

(assert (= b!1625426 b!1625427))

(assert (= (and d!489336 ((_ is Cons!17825) rules!1846)) b!1625426))

(declare-fun lambda!67258 () Int)

(declare-fun order!10575 () Int)

(declare-fun order!10573 () Int)

(declare-fun dynLambda!7953 (Int Int) Int)

(declare-fun dynLambda!7954 (Int Int) Int)

(assert (=> b!1625428 (< (dynLambda!7953 order!10573 (toValue!4566 (transformation!3139 (h!23226 rules!1846)))) (dynLambda!7954 order!10575 lambda!67258))))

(declare-fun order!10577 () Int)

(declare-fun dynLambda!7955 (Int Int) Int)

(assert (=> b!1625428 (< (dynLambda!7955 order!10577 (toChars!4425 (transformation!3139 (h!23226 rules!1846)))) (dynLambda!7954 order!10575 lambda!67258))))

(assert (=> d!489336 true))

(declare-fun lt!587149 () Bool)

(declare-fun forall!4083 (List!17896 Int) Bool)

(assert (=> d!489336 (= lt!587149 (forall!4083 tokens!457 lambda!67258))))

(declare-fun e!1042521 () Bool)

(assert (=> d!489336 (= lt!587149 e!1042521)))

(declare-fun res!726649 () Bool)

(assert (=> d!489336 (=> res!726649 e!1042521)))

(assert (=> d!489336 (= res!726649 (not ((_ is Cons!17826) tokens!457)))))

(assert (=> d!489336 (not (isEmpty!10855 rules!1846))))

(assert (=> d!489336 (= (rulesProduceEachTokenIndividuallyList!970 thiss!17113 rules!1846 tokens!457) lt!587149)))

(declare-fun b!1625416 () Bool)

(declare-fun e!1042520 () Bool)

(assert (=> b!1625416 (= e!1042521 e!1042520)))

(declare-fun res!726650 () Bool)

(assert (=> b!1625416 (=> (not res!726650) (not e!1042520))))

(assert (=> b!1625416 (= res!726650 (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 tokens!457)))))

(declare-fun b!1625417 () Bool)

(assert (=> b!1625417 (= e!1042520 (rulesProduceEachTokenIndividuallyList!970 thiss!17113 rules!1846 (t!148987 tokens!457)))))

(assert (= (and d!489336 (not res!726649)) b!1625416))

(assert (= (and b!1625416 res!726650) b!1625417))

(declare-fun m!1953445 () Bool)

(assert (=> d!489336 m!1953445))

(assert (=> d!489336 m!1952785))

(assert (=> b!1625416 m!1952767))

(declare-fun m!1953447 () Bool)

(assert (=> b!1625417 m!1953447))

(assert (=> b!1625122 d!489336))

(declare-fun d!489388 () Bool)

(declare-fun lt!587172 () Bool)

(assert (=> d!489388 (= lt!587172 (prefixMatch!402 lt!586845 (list!6995 (++!4738 lt!586864 lt!586846))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17899 0))(
  ( (Nil!17829) (Cons!17829 (h!23230 Regex!4467) (t!149032 List!17899)) )
))
(declare-datatypes ((Context!1734 0))(
  ( (Context!1735 (exprs!1367 List!17899)) )
))
(declare-fun prefixMatchZipperSequence!529 ((InoxSet Context!1734) BalanceConc!11796 Int) Bool)

(declare-fun focus!173 (Regex!4467) (InoxSet Context!1734))

(assert (=> d!489388 (= lt!587172 (prefixMatchZipperSequence!529 (focus!173 lt!586845) (++!4738 lt!586864 lt!586846) 0))))

(declare-fun lt!587173 () Unit!28867)

(declare-fun lt!587176 () Unit!28867)

(assert (=> d!489388 (= lt!587173 lt!587176)))

(declare-fun lt!587181 () List!17894)

(declare-fun lt!587179 () (InoxSet Context!1734))

(declare-fun prefixMatchZipper!152 ((InoxSet Context!1734) List!17894) Bool)

(assert (=> d!489388 (= (prefixMatch!402 lt!586845 lt!587181) (prefixMatchZipper!152 lt!587179 lt!587181))))

(declare-datatypes ((List!17900 0))(
  ( (Nil!17830) (Cons!17830 (h!23231 Context!1734) (t!149033 List!17900)) )
))
(declare-fun lt!587178 () List!17900)

(declare-fun prefixMatchZipperRegexEquiv!152 ((InoxSet Context!1734) List!17900 Regex!4467 List!17894) Unit!28867)

(assert (=> d!489388 (= lt!587176 (prefixMatchZipperRegexEquiv!152 lt!587179 lt!587178 lt!586845 lt!587181))))

(assert (=> d!489388 (= lt!587181 (list!6995 (++!4738 lt!586864 lt!586846)))))

(declare-fun toList!913 ((InoxSet Context!1734)) List!17900)

(assert (=> d!489388 (= lt!587178 (toList!913 (focus!173 lt!586845)))))

(assert (=> d!489388 (= lt!587179 (focus!173 lt!586845))))

(declare-fun lt!587180 () Unit!28867)

(declare-fun lt!587175 () Unit!28867)

(assert (=> d!489388 (= lt!587180 lt!587175)))

(declare-fun lt!587177 () (InoxSet Context!1734))

(declare-fun lt!587174 () Int)

(declare-fun dropList!606 (BalanceConc!11796 Int) List!17894)

(assert (=> d!489388 (= (prefixMatchZipper!152 lt!587177 (dropList!606 (++!4738 lt!586864 lt!586846) lt!587174)) (prefixMatchZipperSequence!529 lt!587177 (++!4738 lt!586864 lt!586846) lt!587174))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!152 ((InoxSet Context!1734) BalanceConc!11796 Int) Unit!28867)

(assert (=> d!489388 (= lt!587175 (lemmaprefixMatchZipperSequenceEquivalent!152 lt!587177 (++!4738 lt!586864 lt!586846) lt!587174))))

(assert (=> d!489388 (= lt!587174 0)))

(assert (=> d!489388 (= lt!587177 (focus!173 lt!586845))))

(declare-fun validRegex!1778 (Regex!4467) Bool)

(assert (=> d!489388 (validRegex!1778 lt!586845)))

(assert (=> d!489388 (= (prefixMatchZipperSequence!527 lt!586845 (++!4738 lt!586864 lt!586846)) lt!587172)))

(declare-fun bs!394769 () Bool)

(assert (= bs!394769 d!489388))

(declare-fun m!1953449 () Bool)

(assert (=> bs!394769 m!1953449))

(declare-fun m!1953451 () Bool)

(assert (=> bs!394769 m!1953451))

(assert (=> bs!394769 m!1952819))

(declare-fun m!1953453 () Bool)

(assert (=> bs!394769 m!1953453))

(assert (=> bs!394769 m!1952819))

(declare-fun m!1953455 () Bool)

(assert (=> bs!394769 m!1953455))

(declare-fun m!1953457 () Bool)

(assert (=> bs!394769 m!1953457))

(declare-fun m!1953459 () Bool)

(assert (=> bs!394769 m!1953459))

(assert (=> bs!394769 m!1952819))

(assert (=> bs!394769 m!1953449))

(assert (=> bs!394769 m!1952819))

(declare-fun m!1953461 () Bool)

(assert (=> bs!394769 m!1953461))

(declare-fun m!1953463 () Bool)

(assert (=> bs!394769 m!1953463))

(assert (=> bs!394769 m!1952819))

(declare-fun m!1953465 () Bool)

(assert (=> bs!394769 m!1953465))

(assert (=> bs!394769 m!1953463))

(declare-fun m!1953467 () Bool)

(assert (=> bs!394769 m!1953467))

(assert (=> bs!394769 m!1953463))

(declare-fun m!1953469 () Bool)

(assert (=> bs!394769 m!1953469))

(declare-fun m!1953471 () Bool)

(assert (=> bs!394769 m!1953471))

(assert (=> bs!394769 m!1953455))

(declare-fun m!1953473 () Bool)

(assert (=> bs!394769 m!1953473))

(assert (=> b!1625099 d!489388))

(declare-fun d!489390 () Bool)

(declare-fun lt!587184 () C!9108)

(declare-fun apply!4556 (List!17894 Int) C!9108)

(assert (=> d!489390 (= lt!587184 (apply!4556 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457)))) 0))))

(declare-fun apply!4557 (Conc!5926 Int) C!9108)

(assert (=> d!489390 (= lt!587184 (apply!4557 (c!264491 (charsOf!1788 (h!23227 (t!148987 tokens!457)))) 0))))

(declare-fun e!1042537 () Bool)

(assert (=> d!489390 e!1042537))

(declare-fun res!726657 () Bool)

(assert (=> d!489390 (=> (not res!726657) (not e!1042537))))

(assert (=> d!489390 (= res!726657 (<= 0 0))))

(assert (=> d!489390 (= (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0) lt!587184)))

(declare-fun b!1625437 () Bool)

(declare-fun size!14271 (BalanceConc!11796) Int)

(assert (=> b!1625437 (= e!1042537 (< 0 (size!14271 (charsOf!1788 (h!23227 (t!148987 tokens!457))))))))

(assert (= (and d!489390 res!726657) b!1625437))

(assert (=> d!489390 m!1952827))

(declare-fun m!1953475 () Bool)

(assert (=> d!489390 m!1953475))

(assert (=> d!489390 m!1953475))

(declare-fun m!1953477 () Bool)

(assert (=> d!489390 m!1953477))

(declare-fun m!1953479 () Bool)

(assert (=> d!489390 m!1953479))

(assert (=> b!1625437 m!1952827))

(declare-fun m!1953481 () Bool)

(assert (=> b!1625437 m!1953481))

(assert (=> b!1625099 d!489390))

(declare-fun d!489392 () Bool)

(declare-fun e!1042540 () Bool)

(assert (=> d!489392 e!1042540))

(declare-fun res!726660 () Bool)

(assert (=> d!489392 (=> (not res!726660) (not e!1042540))))

(declare-fun lt!587187 () BalanceConc!11796)

(assert (=> d!489392 (= res!726660 (= (list!6995 lt!587187) (Cons!17824 (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0) Nil!17824)))))

(declare-fun singleton!668 (C!9108) BalanceConc!11796)

(assert (=> d!489392 (= lt!587187 (singleton!668 (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0)))))

(assert (=> d!489392 (= (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0)) lt!587187)))

(declare-fun b!1625440 () Bool)

(declare-fun isBalanced!1789 (Conc!5926) Bool)

(assert (=> b!1625440 (= e!1042540 (isBalanced!1789 (c!264491 lt!587187)))))

(assert (= (and d!489392 res!726660) b!1625440))

(declare-fun m!1953483 () Bool)

(assert (=> d!489392 m!1953483))

(assert (=> d!489392 m!1952821))

(declare-fun m!1953485 () Bool)

(assert (=> d!489392 m!1953485))

(declare-fun m!1953487 () Bool)

(assert (=> b!1625440 m!1953487))

(assert (=> b!1625099 d!489392))

(declare-fun e!1042543 () Bool)

(declare-fun b!1625452 () Bool)

(declare-fun lt!587190 () BalanceConc!11796)

(assert (=> b!1625452 (= e!1042543 (= (list!6995 lt!587190) (++!4737 (list!6995 lt!586864) (list!6995 lt!586846))))))

(declare-fun b!1625450 () Bool)

(declare-fun res!726671 () Bool)

(assert (=> b!1625450 (=> (not res!726671) (not e!1042543))))

(declare-fun height!905 (Conc!5926) Int)

(declare-fun ++!4740 (Conc!5926 Conc!5926) Conc!5926)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1625450 (= res!726671 (<= (height!905 (++!4740 (c!264491 lt!586864) (c!264491 lt!586846))) (+ (max!0 (height!905 (c!264491 lt!586864)) (height!905 (c!264491 lt!586846))) 1)))))

(declare-fun b!1625449 () Bool)

(declare-fun res!726670 () Bool)

(assert (=> b!1625449 (=> (not res!726670) (not e!1042543))))

(assert (=> b!1625449 (= res!726670 (isBalanced!1789 (++!4740 (c!264491 lt!586864) (c!264491 lt!586846))))))

(declare-fun b!1625451 () Bool)

(declare-fun res!726669 () Bool)

(assert (=> b!1625451 (=> (not res!726669) (not e!1042543))))

(assert (=> b!1625451 (= res!726669 (>= (height!905 (++!4740 (c!264491 lt!586864) (c!264491 lt!586846))) (max!0 (height!905 (c!264491 lt!586864)) (height!905 (c!264491 lt!586846)))))))

(declare-fun d!489394 () Bool)

(assert (=> d!489394 e!1042543))

(declare-fun res!726672 () Bool)

(assert (=> d!489394 (=> (not res!726672) (not e!1042543))))

(declare-fun appendAssocInst!435 (Conc!5926 Conc!5926) Bool)

(assert (=> d!489394 (= res!726672 (appendAssocInst!435 (c!264491 lt!586864) (c!264491 lt!586846)))))

(assert (=> d!489394 (= lt!587190 (BalanceConc!11797 (++!4740 (c!264491 lt!586864) (c!264491 lt!586846))))))

(assert (=> d!489394 (= (++!4738 lt!586864 lt!586846) lt!587190)))

(assert (= (and d!489394 res!726672) b!1625449))

(assert (= (and b!1625449 res!726670) b!1625450))

(assert (= (and b!1625450 res!726671) b!1625451))

(assert (= (and b!1625451 res!726669) b!1625452))

(declare-fun m!1953489 () Bool)

(assert (=> d!489394 m!1953489))

(declare-fun m!1953491 () Bool)

(assert (=> d!489394 m!1953491))

(declare-fun m!1953493 () Bool)

(assert (=> b!1625450 m!1953493))

(declare-fun m!1953495 () Bool)

(assert (=> b!1625450 m!1953495))

(assert (=> b!1625450 m!1953491))

(declare-fun m!1953497 () Bool)

(assert (=> b!1625450 m!1953497))

(assert (=> b!1625450 m!1953493))

(assert (=> b!1625450 m!1953495))

(declare-fun m!1953499 () Bool)

(assert (=> b!1625450 m!1953499))

(assert (=> b!1625450 m!1953491))

(assert (=> b!1625451 m!1953493))

(assert (=> b!1625451 m!1953495))

(assert (=> b!1625451 m!1953491))

(assert (=> b!1625451 m!1953497))

(assert (=> b!1625451 m!1953493))

(assert (=> b!1625451 m!1953495))

(assert (=> b!1625451 m!1953499))

(assert (=> b!1625451 m!1953491))

(assert (=> b!1625449 m!1953491))

(assert (=> b!1625449 m!1953491))

(declare-fun m!1953501 () Bool)

(assert (=> b!1625449 m!1953501))

(declare-fun m!1953503 () Bool)

(assert (=> b!1625452 m!1953503))

(assert (=> b!1625452 m!1952751))

(assert (=> b!1625452 m!1952805))

(assert (=> b!1625452 m!1952751))

(assert (=> b!1625452 m!1952805))

(declare-fun m!1953505 () Bool)

(assert (=> b!1625452 m!1953505))

(assert (=> b!1625099 d!489394))

(declare-fun d!489396 () Bool)

(declare-fun lt!587193 () Unit!28867)

(declare-fun lemma!239 (List!17895 LexerInterface!2768 List!17895) Unit!28867)

(assert (=> d!489396 (= lt!587193 (lemma!239 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67261 () Int)

(declare-fun generalisedUnion!247 (List!17899) Regex!4467)

(declare-fun map!3688 (List!17895 Int) List!17899)

(assert (=> d!489396 (= (rulesRegex!529 thiss!17113 rules!1846) (generalisedUnion!247 (map!3688 rules!1846 lambda!67261)))))

(declare-fun bs!394770 () Bool)

(assert (= bs!394770 d!489396))

(declare-fun m!1953507 () Bool)

(assert (=> bs!394770 m!1953507))

(declare-fun m!1953509 () Bool)

(assert (=> bs!394770 m!1953509))

(assert (=> bs!394770 m!1953509))

(declare-fun m!1953511 () Bool)

(assert (=> bs!394770 m!1953511))

(assert (=> b!1625099 d!489396))

(declare-fun d!489398 () Bool)

(declare-fun lt!587196 () BalanceConc!11796)

(assert (=> d!489398 (= (list!6995 lt!587196) (originalCharacters!3953 (h!23227 (t!148987 tokens!457))))))

(declare-fun dynLambda!7956 (Int TokenValue!3229) BalanceConc!11796)

(assert (=> d!489398 (= lt!587196 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (value!99134 (h!23227 (t!148987 tokens!457)))))))

(assert (=> d!489398 (= (charsOf!1788 (h!23227 (t!148987 tokens!457))) lt!587196)))

(declare-fun b_lambda!51207 () Bool)

(assert (=> (not b_lambda!51207) (not d!489398)))

(declare-fun tb!93311 () Bool)

(declare-fun t!149005 () Bool)

(assert (=> (and b!1625105 (= (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457)))))) t!149005) tb!93311))

(declare-fun b!1625457 () Bool)

(declare-fun e!1042546 () Bool)

(declare-fun tp!472661 () Bool)

(declare-fun inv!23207 (Conc!5926) Bool)

(assert (=> b!1625457 (= e!1042546 (and (inv!23207 (c!264491 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (value!99134 (h!23227 (t!148987 tokens!457)))))) tp!472661))))

(declare-fun result!112532 () Bool)

(declare-fun inv!23208 (BalanceConc!11796) Bool)

(assert (=> tb!93311 (= result!112532 (and (inv!23208 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (value!99134 (h!23227 (t!148987 tokens!457))))) e!1042546))))

(assert (= tb!93311 b!1625457))

(declare-fun m!1953513 () Bool)

(assert (=> b!1625457 m!1953513))

(declare-fun m!1953515 () Bool)

(assert (=> tb!93311 m!1953515))

(assert (=> d!489398 t!149005))

(declare-fun b_and!115265 () Bool)

(assert (= b_and!115247 (and (=> t!149005 result!112532) b_and!115265)))

(declare-fun t!149007 () Bool)

(declare-fun tb!93313 () Bool)

(assert (=> (and b!1625097 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457)))))) t!149007) tb!93313))

(declare-fun result!112536 () Bool)

(assert (= result!112536 result!112532))

(assert (=> d!489398 t!149007))

(declare-fun b_and!115267 () Bool)

(assert (= b_and!115251 (and (=> t!149007 result!112536) b_and!115267)))

(declare-fun m!1953517 () Bool)

(assert (=> d!489398 m!1953517))

(declare-fun m!1953519 () Bool)

(assert (=> d!489398 m!1953519))

(assert (=> b!1625099 d!489398))

(declare-fun b!1625486 () Bool)

(declare-fun e!1042565 () Bool)

(declare-fun lt!587199 () Bool)

(assert (=> b!1625486 (= e!1042565 (not lt!587199))))

(declare-fun b!1625487 () Bool)

(declare-fun e!1042567 () Bool)

(declare-fun nullable!1316 (Regex!4467) Bool)

(assert (=> b!1625487 (= e!1042567 (nullable!1316 (regex!3139 (rule!4965 (h!23227 tokens!457)))))))

(declare-fun bm!105243 () Bool)

(declare-fun call!105248 () Bool)

(assert (=> bm!105243 (= call!105248 (isEmpty!10853 lt!586842))))

(declare-fun b!1625488 () Bool)

(declare-fun e!1042561 () Bool)

(assert (=> b!1625488 (= e!1042561 (= lt!587199 call!105248))))

(declare-fun b!1625489 () Bool)

(declare-fun res!726695 () Bool)

(declare-fun e!1042564 () Bool)

(assert (=> b!1625489 (=> res!726695 e!1042564)))

(assert (=> b!1625489 (= res!726695 (not ((_ is ElementMatch!4467) (regex!3139 (rule!4965 (h!23227 tokens!457))))))))

(assert (=> b!1625489 (= e!1042565 e!1042564)))

(declare-fun b!1625490 () Bool)

(declare-fun res!726696 () Bool)

(declare-fun e!1042566 () Bool)

(assert (=> b!1625490 (=> (not res!726696) (not e!1042566))))

(assert (=> b!1625490 (= res!726696 (not call!105248))))

(declare-fun b!1625491 () Bool)

(assert (=> b!1625491 (= e!1042561 e!1042565)))

(declare-fun c!264553 () Bool)

(assert (=> b!1625491 (= c!264553 ((_ is EmptyLang!4467) (regex!3139 (rule!4965 (h!23227 tokens!457)))))))

(declare-fun b!1625492 () Bool)

(declare-fun res!726693 () Bool)

(declare-fun e!1042563 () Bool)

(assert (=> b!1625492 (=> res!726693 e!1042563)))

(declare-fun tail!2362 (List!17894) List!17894)

(assert (=> b!1625492 (= res!726693 (not (isEmpty!10853 (tail!2362 lt!586842))))))

(declare-fun b!1625493 () Bool)

(assert (=> b!1625493 (= e!1042566 (= (head!3433 lt!586842) (c!264492 (regex!3139 (rule!4965 (h!23227 tokens!457))))))))

(declare-fun d!489400 () Bool)

(assert (=> d!489400 e!1042561))

(declare-fun c!264554 () Bool)

(assert (=> d!489400 (= c!264554 ((_ is EmptyExpr!4467) (regex!3139 (rule!4965 (h!23227 tokens!457)))))))

(assert (=> d!489400 (= lt!587199 e!1042567)))

(declare-fun c!264555 () Bool)

(assert (=> d!489400 (= c!264555 (isEmpty!10853 lt!586842))))

(assert (=> d!489400 (validRegex!1778 (regex!3139 (rule!4965 (h!23227 tokens!457))))))

(assert (=> d!489400 (= (matchR!1966 (regex!3139 (rule!4965 (h!23227 tokens!457))) lt!586842) lt!587199)))

(declare-fun b!1625494 () Bool)

(assert (=> b!1625494 (= e!1042563 (not (= (head!3433 lt!586842) (c!264492 (regex!3139 (rule!4965 (h!23227 tokens!457)))))))))

(declare-fun b!1625495 () Bool)

(declare-fun res!726690 () Bool)

(assert (=> b!1625495 (=> res!726690 e!1042564)))

(assert (=> b!1625495 (= res!726690 e!1042566)))

(declare-fun res!726694 () Bool)

(assert (=> b!1625495 (=> (not res!726694) (not e!1042566))))

(assert (=> b!1625495 (= res!726694 lt!587199)))

(declare-fun b!1625496 () Bool)

(declare-fun res!726689 () Bool)

(assert (=> b!1625496 (=> (not res!726689) (not e!1042566))))

(assert (=> b!1625496 (= res!726689 (isEmpty!10853 (tail!2362 lt!586842)))))

(declare-fun b!1625497 () Bool)

(declare-fun derivativeStep!1082 (Regex!4467 C!9108) Regex!4467)

(assert (=> b!1625497 (= e!1042567 (matchR!1966 (derivativeStep!1082 (regex!3139 (rule!4965 (h!23227 tokens!457))) (head!3433 lt!586842)) (tail!2362 lt!586842)))))

(declare-fun b!1625498 () Bool)

(declare-fun e!1042562 () Bool)

(assert (=> b!1625498 (= e!1042562 e!1042563)))

(declare-fun res!726691 () Bool)

(assert (=> b!1625498 (=> res!726691 e!1042563)))

(assert (=> b!1625498 (= res!726691 call!105248)))

(declare-fun b!1625499 () Bool)

(assert (=> b!1625499 (= e!1042564 e!1042562)))

(declare-fun res!726692 () Bool)

(assert (=> b!1625499 (=> (not res!726692) (not e!1042562))))

(assert (=> b!1625499 (= res!726692 (not lt!587199))))

(assert (= (and d!489400 c!264555) b!1625487))

(assert (= (and d!489400 (not c!264555)) b!1625497))

(assert (= (and d!489400 c!264554) b!1625488))

(assert (= (and d!489400 (not c!264554)) b!1625491))

(assert (= (and b!1625491 c!264553) b!1625486))

(assert (= (and b!1625491 (not c!264553)) b!1625489))

(assert (= (and b!1625489 (not res!726695)) b!1625495))

(assert (= (and b!1625495 res!726694) b!1625490))

(assert (= (and b!1625490 res!726696) b!1625496))

(assert (= (and b!1625496 res!726689) b!1625493))

(assert (= (and b!1625495 (not res!726690)) b!1625499))

(assert (= (and b!1625499 res!726692) b!1625498))

(assert (= (and b!1625498 (not res!726691)) b!1625492))

(assert (= (and b!1625492 (not res!726693)) b!1625494))

(assert (= (or b!1625488 b!1625490 b!1625498) bm!105243))

(declare-fun m!1953521 () Bool)

(assert (=> b!1625493 m!1953521))

(declare-fun m!1953523 () Bool)

(assert (=> b!1625496 m!1953523))

(assert (=> b!1625496 m!1953523))

(declare-fun m!1953525 () Bool)

(assert (=> b!1625496 m!1953525))

(assert (=> b!1625497 m!1953521))

(assert (=> b!1625497 m!1953521))

(declare-fun m!1953527 () Bool)

(assert (=> b!1625497 m!1953527))

(assert (=> b!1625497 m!1953523))

(assert (=> b!1625497 m!1953527))

(assert (=> b!1625497 m!1953523))

(declare-fun m!1953529 () Bool)

(assert (=> b!1625497 m!1953529))

(declare-fun m!1953531 () Bool)

(assert (=> b!1625487 m!1953531))

(assert (=> b!1625494 m!1953521))

(declare-fun m!1953533 () Bool)

(assert (=> bm!105243 m!1953533))

(assert (=> d!489400 m!1953533))

(declare-fun m!1953535 () Bool)

(assert (=> d!489400 m!1953535))

(assert (=> b!1625492 m!1953523))

(assert (=> b!1625492 m!1953523))

(assert (=> b!1625492 m!1953525))

(assert (=> b!1625100 d!489400))

(declare-fun d!489402 () Bool)

(declare-fun res!726699 () Bool)

(declare-fun e!1042570 () Bool)

(assert (=> d!489402 (=> (not res!726699) (not e!1042570))))

(declare-fun rulesValid!1127 (LexerInterface!2768 List!17895) Bool)

(assert (=> d!489402 (= res!726699 (rulesValid!1127 thiss!17113 rules!1846))))

(assert (=> d!489402 (= (rulesInvariant!2437 thiss!17113 rules!1846) e!1042570)))

(declare-fun b!1625502 () Bool)

(declare-datatypes ((List!17901 0))(
  ( (Nil!17831) (Cons!17831 (h!23232 String!20477) (t!149034 List!17901)) )
))
(declare-fun noDuplicateTag!1127 (LexerInterface!2768 List!17895 List!17901) Bool)

(assert (=> b!1625502 (= e!1042570 (noDuplicateTag!1127 thiss!17113 rules!1846 Nil!17831))))

(assert (= (and d!489402 res!726699) b!1625502))

(declare-fun m!1953537 () Bool)

(assert (=> d!489402 m!1953537))

(declare-fun m!1953539 () Bool)

(assert (=> b!1625502 m!1953539))

(assert (=> b!1625121 d!489402))

(declare-fun d!489404 () Bool)

(assert (=> d!489404 (= (inv!23200 (tag!3417 (h!23226 rules!1846))) (= (mod (str.len (value!99133 (tag!3417 (h!23226 rules!1846)))) 2) 0))))

(assert (=> b!1625093 d!489404))

(declare-fun d!489406 () Bool)

(declare-fun res!726700 () Bool)

(declare-fun e!1042571 () Bool)

(assert (=> d!489406 (=> (not res!726700) (not e!1042571))))

(assert (=> d!489406 (= res!726700 (semiInverseModEq!1200 (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toValue!4566 (transformation!3139 (h!23226 rules!1846)))))))

(assert (=> d!489406 (= (inv!23203 (transformation!3139 (h!23226 rules!1846))) e!1042571)))

(declare-fun b!1625503 () Bool)

(assert (=> b!1625503 (= e!1042571 (equivClasses!1141 (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toValue!4566 (transformation!3139 (h!23226 rules!1846)))))))

(assert (= (and d!489406 res!726700) b!1625503))

(declare-fun m!1953541 () Bool)

(assert (=> d!489406 m!1953541))

(declare-fun m!1953543 () Bool)

(assert (=> b!1625503 m!1953543))

(assert (=> b!1625093 d!489406))

(declare-fun d!489408 () Bool)

(assert (=> d!489408 (= (head!3433 (originalCharacters!3953 (h!23227 (t!148987 tokens!457)))) (h!23225 (originalCharacters!3953 (h!23227 (t!148987 tokens!457)))))))

(assert (=> b!1625113 d!489408))

(declare-fun d!489410 () Bool)

(declare-fun c!264558 () Bool)

(assert (=> d!489410 (= c!264558 (isEmpty!10853 (++!4737 lt!586842 lt!586857)))))

(declare-fun e!1042574 () Bool)

(assert (=> d!489410 (= (prefixMatch!402 lt!586845 (++!4737 lt!586842 lt!586857)) e!1042574)))

(declare-fun b!1625508 () Bool)

(declare-fun lostCause!438 (Regex!4467) Bool)

(assert (=> b!1625508 (= e!1042574 (not (lostCause!438 lt!586845)))))

(declare-fun b!1625509 () Bool)

(assert (=> b!1625509 (= e!1042574 (prefixMatch!402 (derivativeStep!1082 lt!586845 (head!3433 (++!4737 lt!586842 lt!586857))) (tail!2362 (++!4737 lt!586842 lt!586857))))))

(assert (= (and d!489410 c!264558) b!1625508))

(assert (= (and d!489410 (not c!264558)) b!1625509))

(assert (=> d!489410 m!1952801))

(declare-fun m!1953545 () Bool)

(assert (=> d!489410 m!1953545))

(declare-fun m!1953547 () Bool)

(assert (=> b!1625508 m!1953547))

(assert (=> b!1625509 m!1952801))

(declare-fun m!1953549 () Bool)

(assert (=> b!1625509 m!1953549))

(assert (=> b!1625509 m!1953549))

(declare-fun m!1953551 () Bool)

(assert (=> b!1625509 m!1953551))

(assert (=> b!1625509 m!1952801))

(declare-fun m!1953553 () Bool)

(assert (=> b!1625509 m!1953553))

(assert (=> b!1625509 m!1953551))

(assert (=> b!1625509 m!1953553))

(declare-fun m!1953555 () Bool)

(assert (=> b!1625509 m!1953555))

(assert (=> b!1625095 d!489410))

(declare-fun b!1625520 () Bool)

(declare-fun res!726705 () Bool)

(declare-fun e!1042580 () Bool)

(assert (=> b!1625520 (=> (not res!726705) (not e!1042580))))

(declare-fun lt!587202 () List!17894)

(declare-fun size!14272 (List!17894) Int)

(assert (=> b!1625520 (= res!726705 (= (size!14272 lt!587202) (+ (size!14272 lt!586842) (size!14272 lt!586857))))))

(declare-fun b!1625518 () Bool)

(declare-fun e!1042579 () List!17894)

(assert (=> b!1625518 (= e!1042579 lt!586857)))

(declare-fun b!1625519 () Bool)

(assert (=> b!1625519 (= e!1042579 (Cons!17824 (h!23225 lt!586842) (++!4737 (t!148985 lt!586842) lt!586857)))))

(declare-fun d!489412 () Bool)

(assert (=> d!489412 e!1042580))

(declare-fun res!726706 () Bool)

(assert (=> d!489412 (=> (not res!726706) (not e!1042580))))

(declare-fun content!2472 (List!17894) (InoxSet C!9108))

(assert (=> d!489412 (= res!726706 (= (content!2472 lt!587202) ((_ map or) (content!2472 lt!586842) (content!2472 lt!586857))))))

(assert (=> d!489412 (= lt!587202 e!1042579)))

(declare-fun c!264561 () Bool)

(assert (=> d!489412 (= c!264561 ((_ is Nil!17824) lt!586842))))

(assert (=> d!489412 (= (++!4737 lt!586842 lt!586857) lt!587202)))

(declare-fun b!1625521 () Bool)

(assert (=> b!1625521 (= e!1042580 (or (not (= lt!586857 Nil!17824)) (= lt!587202 lt!586842)))))

(assert (= (and d!489412 c!264561) b!1625518))

(assert (= (and d!489412 (not c!264561)) b!1625519))

(assert (= (and d!489412 res!726706) b!1625520))

(assert (= (and b!1625520 res!726705) b!1625521))

(declare-fun m!1953557 () Bool)

(assert (=> b!1625520 m!1953557))

(declare-fun m!1953559 () Bool)

(assert (=> b!1625520 m!1953559))

(declare-fun m!1953561 () Bool)

(assert (=> b!1625520 m!1953561))

(declare-fun m!1953563 () Bool)

(assert (=> b!1625519 m!1953563))

(declare-fun m!1953565 () Bool)

(assert (=> d!489412 m!1953565))

(declare-fun m!1953567 () Bool)

(assert (=> d!489412 m!1953567))

(declare-fun m!1953569 () Bool)

(assert (=> d!489412 m!1953569))

(assert (=> b!1625095 d!489412))

(declare-fun d!489414 () Bool)

(declare-fun list!6999 (Conc!5926) List!17894)

(assert (=> d!489414 (= (list!6995 lt!586846) (list!6999 (c!264491 lt!586846)))))

(declare-fun bs!394771 () Bool)

(assert (= bs!394771 d!489414))

(declare-fun m!1953571 () Bool)

(assert (=> bs!394771 m!1953571))

(assert (=> b!1625095 d!489414))

(declare-fun d!489416 () Bool)

(declare-fun lt!587205 () BalanceConc!11796)

(assert (=> d!489416 (= (list!6995 lt!587205) (printList!883 thiss!17113 (list!6996 (seqFromList!2027 tokens!457))))))

(assert (=> d!489416 (= lt!587205 (printTailRec!821 thiss!17113 (seqFromList!2027 tokens!457) 0 (BalanceConc!11797 Empty!5926)))))

(assert (=> d!489416 (= (print!1299 thiss!17113 (seqFromList!2027 tokens!457)) lt!587205)))

(declare-fun bs!394772 () Bool)

(assert (= bs!394772 d!489416))

(declare-fun m!1953573 () Bool)

(assert (=> bs!394772 m!1953573))

(assert (=> bs!394772 m!1952747))

(declare-fun m!1953575 () Bool)

(assert (=> bs!394772 m!1953575))

(assert (=> bs!394772 m!1953575))

(declare-fun m!1953577 () Bool)

(assert (=> bs!394772 m!1953577))

(assert (=> bs!394772 m!1952747))

(declare-fun m!1953579 () Bool)

(assert (=> bs!394772 m!1953579))

(assert (=> b!1625096 d!489416))

(declare-fun b!1625524 () Bool)

(declare-fun res!726707 () Bool)

(declare-fun e!1042582 () Bool)

(assert (=> b!1625524 (=> (not res!726707) (not e!1042582))))

(declare-fun lt!587206 () List!17894)

(assert (=> b!1625524 (= res!726707 (= (size!14272 lt!587206) (+ (size!14272 lt!586842) (size!14272 lt!586865))))))

(declare-fun b!1625522 () Bool)

(declare-fun e!1042581 () List!17894)

(assert (=> b!1625522 (= e!1042581 lt!586865)))

(declare-fun b!1625523 () Bool)

(assert (=> b!1625523 (= e!1042581 (Cons!17824 (h!23225 lt!586842) (++!4737 (t!148985 lt!586842) lt!586865)))))

(declare-fun d!489418 () Bool)

(assert (=> d!489418 e!1042582))

(declare-fun res!726708 () Bool)

(assert (=> d!489418 (=> (not res!726708) (not e!1042582))))

(assert (=> d!489418 (= res!726708 (= (content!2472 lt!587206) ((_ map or) (content!2472 lt!586842) (content!2472 lt!586865))))))

(assert (=> d!489418 (= lt!587206 e!1042581)))

(declare-fun c!264562 () Bool)

(assert (=> d!489418 (= c!264562 ((_ is Nil!17824) lt!586842))))

(assert (=> d!489418 (= (++!4737 lt!586842 lt!586865) lt!587206)))

(declare-fun b!1625525 () Bool)

(assert (=> b!1625525 (= e!1042582 (or (not (= lt!586865 Nil!17824)) (= lt!587206 lt!586842)))))

(assert (= (and d!489418 c!264562) b!1625522))

(assert (= (and d!489418 (not c!264562)) b!1625523))

(assert (= (and d!489418 res!726708) b!1625524))

(assert (= (and b!1625524 res!726707) b!1625525))

(declare-fun m!1953581 () Bool)

(assert (=> b!1625524 m!1953581))

(assert (=> b!1625524 m!1953559))

(declare-fun m!1953583 () Bool)

(assert (=> b!1625524 m!1953583))

(declare-fun m!1953585 () Bool)

(assert (=> b!1625523 m!1953585))

(declare-fun m!1953587 () Bool)

(assert (=> d!489418 m!1953587))

(assert (=> d!489418 m!1953567))

(declare-fun m!1953589 () Bool)

(assert (=> d!489418 m!1953589))

(assert (=> b!1625096 d!489418))

(declare-fun d!489420 () Bool)

(assert (=> d!489420 (= (list!6995 lt!586847) (list!6999 (c!264491 lt!586847)))))

(declare-fun bs!394773 () Bool)

(assert (= bs!394773 d!489420))

(declare-fun m!1953591 () Bool)

(assert (=> bs!394773 m!1953591))

(assert (=> b!1625096 d!489420))

(declare-fun d!489422 () Bool)

(declare-fun lt!587207 () BalanceConc!11796)

(assert (=> d!489422 (= (list!6995 lt!587207) (printList!883 thiss!17113 (list!6996 lt!586844)))))

(assert (=> d!489422 (= lt!587207 (printTailRec!821 thiss!17113 lt!586844 0 (BalanceConc!11797 Empty!5926)))))

(assert (=> d!489422 (= (print!1299 thiss!17113 lt!586844) lt!587207)))

(declare-fun bs!394774 () Bool)

(assert (= bs!394774 d!489422))

(declare-fun m!1953593 () Bool)

(assert (=> bs!394774 m!1953593))

(assert (=> bs!394774 m!1952791))

(assert (=> bs!394774 m!1952791))

(declare-fun m!1953595 () Bool)

(assert (=> bs!394774 m!1953595))

(declare-fun m!1953597 () Bool)

(assert (=> bs!394774 m!1953597))

(assert (=> b!1625096 d!489422))

(declare-fun d!489424 () Bool)

(declare-fun fromListB!895 (List!17896) BalanceConc!11798)

(assert (=> d!489424 (= (seqFromList!2027 tokens!457) (fromListB!895 tokens!457))))

(declare-fun bs!394775 () Bool)

(assert (= bs!394775 d!489424))

(declare-fun m!1953599 () Bool)

(assert (=> bs!394775 m!1953599))

(assert (=> b!1625096 d!489424))

(declare-fun d!489426 () Bool)

(declare-fun lt!587208 () BalanceConc!11796)

(assert (=> d!489426 (= (list!6995 lt!587208) (originalCharacters!3953 (h!23227 tokens!457)))))

(assert (=> d!489426 (= lt!587208 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (value!99134 (h!23227 tokens!457))))))

(assert (=> d!489426 (= (charsOf!1788 (h!23227 tokens!457)) lt!587208)))

(declare-fun b_lambda!51209 () Bool)

(assert (=> (not b_lambda!51209) (not d!489426)))

(declare-fun tb!93315 () Bool)

(declare-fun t!149009 () Bool)

(assert (=> (and b!1625105 (= (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457))))) t!149009) tb!93315))

(declare-fun b!1625526 () Bool)

(declare-fun e!1042583 () Bool)

(declare-fun tp!472662 () Bool)

(assert (=> b!1625526 (= e!1042583 (and (inv!23207 (c!264491 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (value!99134 (h!23227 tokens!457))))) tp!472662))))

(declare-fun result!112538 () Bool)

(assert (=> tb!93315 (= result!112538 (and (inv!23208 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (value!99134 (h!23227 tokens!457)))) e!1042583))))

(assert (= tb!93315 b!1625526))

(declare-fun m!1953601 () Bool)

(assert (=> b!1625526 m!1953601))

(declare-fun m!1953603 () Bool)

(assert (=> tb!93315 m!1953603))

(assert (=> d!489426 t!149009))

(declare-fun b_and!115269 () Bool)

(assert (= b_and!115265 (and (=> t!149009 result!112538) b_and!115269)))

(declare-fun t!149011 () Bool)

(declare-fun tb!93317 () Bool)

(assert (=> (and b!1625097 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457))))) t!149011) tb!93317))

(declare-fun result!112540 () Bool)

(assert (= result!112540 result!112538))

(assert (=> d!489426 t!149011))

(declare-fun b_and!115271 () Bool)

(assert (= b_and!115267 (and (=> t!149011 result!112540) b_and!115271)))

(declare-fun m!1953605 () Bool)

(assert (=> d!489426 m!1953605))

(declare-fun m!1953607 () Bool)

(assert (=> d!489426 m!1953607))

(assert (=> b!1625096 d!489426))

(declare-fun d!489428 () Bool)

(assert (=> d!489428 (= (seqFromList!2027 (t!148987 tokens!457)) (fromListB!895 (t!148987 tokens!457)))))

(declare-fun bs!394776 () Bool)

(assert (= bs!394776 d!489428))

(declare-fun m!1953609 () Bool)

(assert (=> bs!394776 m!1953609))

(assert (=> b!1625096 d!489428))

(declare-fun d!489430 () Bool)

(assert (=> d!489430 (= (list!6995 lt!586852) (list!6999 (c!264491 lt!586852)))))

(declare-fun bs!394777 () Bool)

(assert (= bs!394777 d!489430))

(declare-fun m!1953611 () Bool)

(assert (=> bs!394777 m!1953611))

(assert (=> b!1625096 d!489430))

(declare-fun d!489432 () Bool)

(assert (=> d!489432 (= (list!6995 lt!586864) (list!6999 (c!264491 lt!586864)))))

(declare-fun bs!394778 () Bool)

(assert (= bs!394778 d!489432))

(declare-fun m!1953613 () Bool)

(assert (=> bs!394778 m!1953613))

(assert (=> b!1625096 d!489432))

(declare-fun b!1625537 () Bool)

(declare-fun e!1042590 () Bool)

(declare-fun lt!587211 () tuple2!17390)

(assert (=> b!1625537 (= e!1042590 (= (_2!10097 lt!587211) lt!586852))))

(declare-fun b!1625539 () Bool)

(declare-fun e!1042591 () Bool)

(assert (=> b!1625539 (= e!1042590 e!1042591)))

(declare-fun res!726715 () Bool)

(assert (=> b!1625539 (= res!726715 (< (size!14271 (_2!10097 lt!587211)) (size!14271 lt!586852)))))

(assert (=> b!1625539 (=> (not res!726715) (not e!1042591))))

(declare-fun b!1625540 () Bool)

(declare-fun e!1042592 () Bool)

(declare-datatypes ((tuple2!17398 0))(
  ( (tuple2!17399 (_1!10101 List!17896) (_2!10101 List!17894)) )
))
(declare-fun lexList!829 (LexerInterface!2768 List!17895 List!17894) tuple2!17398)

(assert (=> b!1625540 (= e!1042592 (= (list!6995 (_2!10097 lt!587211)) (_2!10101 (lexList!829 thiss!17113 rules!1846 (list!6995 lt!586852)))))))

(declare-fun b!1625541 () Bool)

(declare-fun res!726716 () Bool)

(assert (=> b!1625541 (=> (not res!726716) (not e!1042592))))

(assert (=> b!1625541 (= res!726716 (= (list!6996 (_1!10097 lt!587211)) (_1!10101 (lexList!829 thiss!17113 rules!1846 (list!6995 lt!586852)))))))

(declare-fun d!489434 () Bool)

(assert (=> d!489434 e!1042592))

(declare-fun res!726717 () Bool)

(assert (=> d!489434 (=> (not res!726717) (not e!1042592))))

(assert (=> d!489434 (= res!726717 e!1042590)))

(declare-fun c!264565 () Bool)

(assert (=> d!489434 (= c!264565 (> (size!14270 (_1!10097 lt!587211)) 0))))

(declare-fun lexTailRecV2!552 (LexerInterface!2768 List!17895 BalanceConc!11796 BalanceConc!11796 BalanceConc!11796 BalanceConc!11798) tuple2!17390)

(assert (=> d!489434 (= lt!587211 (lexTailRecV2!552 thiss!17113 rules!1846 lt!586852 (BalanceConc!11797 Empty!5926) lt!586852 (BalanceConc!11799 Empty!5927)))))

(assert (=> d!489434 (= (lex!1252 thiss!17113 rules!1846 lt!586852) lt!587211)))

(declare-fun b!1625538 () Bool)

(assert (=> b!1625538 (= e!1042591 (not (isEmpty!10854 (_1!10097 lt!587211))))))

(assert (= (and d!489434 c!264565) b!1625539))

(assert (= (and d!489434 (not c!264565)) b!1625537))

(assert (= (and b!1625539 res!726715) b!1625538))

(assert (= (and d!489434 res!726717) b!1625541))

(assert (= (and b!1625541 res!726716) b!1625540))

(declare-fun m!1953615 () Bool)

(assert (=> b!1625541 m!1953615))

(assert (=> b!1625541 m!1952739))

(assert (=> b!1625541 m!1952739))

(declare-fun m!1953617 () Bool)

(assert (=> b!1625541 m!1953617))

(declare-fun m!1953619 () Bool)

(assert (=> b!1625540 m!1953619))

(assert (=> b!1625540 m!1952739))

(assert (=> b!1625540 m!1952739))

(assert (=> b!1625540 m!1953617))

(declare-fun m!1953621 () Bool)

(assert (=> b!1625538 m!1953621))

(declare-fun m!1953623 () Bool)

(assert (=> d!489434 m!1953623))

(declare-fun m!1953625 () Bool)

(assert (=> d!489434 m!1953625))

(declare-fun m!1953627 () Bool)

(assert (=> b!1625539 m!1953627))

(declare-fun m!1953629 () Bool)

(assert (=> b!1625539 m!1953629))

(assert (=> b!1625096 d!489434))

(declare-fun d!489436 () Bool)

(declare-fun lt!587214 () Bool)

(declare-fun content!2473 (List!17895) (InoxSet Rule!6078))

(assert (=> d!489436 (= lt!587214 (select (content!2473 rules!1846) (rule!4965 (h!23227 tokens!457))))))

(declare-fun e!1042597 () Bool)

(assert (=> d!489436 (= lt!587214 e!1042597)))

(declare-fun res!726723 () Bool)

(assert (=> d!489436 (=> (not res!726723) (not e!1042597))))

(assert (=> d!489436 (= res!726723 ((_ is Cons!17825) rules!1846))))

(assert (=> d!489436 (= (contains!3114 rules!1846 (rule!4965 (h!23227 tokens!457))) lt!587214)))

(declare-fun b!1625546 () Bool)

(declare-fun e!1042598 () Bool)

(assert (=> b!1625546 (= e!1042597 e!1042598)))

(declare-fun res!726722 () Bool)

(assert (=> b!1625546 (=> res!726722 e!1042598)))

(assert (=> b!1625546 (= res!726722 (= (h!23226 rules!1846) (rule!4965 (h!23227 tokens!457))))))

(declare-fun b!1625547 () Bool)

(assert (=> b!1625547 (= e!1042598 (contains!3114 (t!148986 rules!1846) (rule!4965 (h!23227 tokens!457))))))

(assert (= (and d!489436 res!726723) b!1625546))

(assert (= (and b!1625546 (not res!726722)) b!1625547))

(declare-fun m!1953631 () Bool)

(assert (=> d!489436 m!1953631))

(declare-fun m!1953633 () Bool)

(assert (=> d!489436 m!1953633))

(declare-fun m!1953635 () Bool)

(assert (=> b!1625547 m!1953635))

(assert (=> b!1625117 d!489436))

(declare-fun d!489438 () Bool)

(declare-fun res!726730 () Bool)

(declare-fun e!1042615 () Bool)

(assert (=> d!489438 (=> res!726730 e!1042615)))

(assert (=> d!489438 (= res!726730 (or (not ((_ is Cons!17826) tokens!457)) (not ((_ is Cons!17826) (t!148987 tokens!457)))))))

(assert (=> d!489438 (= (tokensListTwoByTwoPredicateSeparableList!461 thiss!17113 tokens!457 rules!1846) e!1042615)))

(declare-fun b!1625567 () Bool)

(declare-fun e!1042614 () Bool)

(assert (=> b!1625567 (= e!1042615 e!1042614)))

(declare-fun res!726731 () Bool)

(assert (=> b!1625567 (=> (not res!726731) (not e!1042614))))

(assert (=> b!1625567 (= res!726731 (separableTokensPredicate!710 thiss!17113 (h!23227 tokens!457) (h!23227 (t!148987 tokens!457)) rules!1846))))

(declare-fun lt!587232 () Unit!28867)

(declare-fun Unit!28876 () Unit!28867)

(assert (=> b!1625567 (= lt!587232 Unit!28876)))

(assert (=> b!1625567 (> (size!14271 (charsOf!1788 (h!23227 (t!148987 tokens!457)))) 0)))

(declare-fun lt!587233 () Unit!28867)

(declare-fun Unit!28877 () Unit!28867)

(assert (=> b!1625567 (= lt!587233 Unit!28877)))

(assert (=> b!1625567 (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 (t!148987 tokens!457)))))

(declare-fun lt!587234 () Unit!28867)

(declare-fun Unit!28878 () Unit!28867)

(assert (=> b!1625567 (= lt!587234 Unit!28878)))

(assert (=> b!1625567 (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 tokens!457))))

(declare-fun lt!587235 () Unit!28867)

(declare-fun lt!587236 () Unit!28867)

(assert (=> b!1625567 (= lt!587235 lt!587236)))

(assert (=> b!1625567 (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 (t!148987 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!565 (LexerInterface!2768 List!17895 List!17896 Token!5844) Unit!28867)

(assert (=> b!1625567 (= lt!587236 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!565 thiss!17113 rules!1846 tokens!457 (h!23227 (t!148987 tokens!457))))))

(declare-fun lt!587230 () Unit!28867)

(declare-fun lt!587231 () Unit!28867)

(assert (=> b!1625567 (= lt!587230 lt!587231)))

(assert (=> b!1625567 (rulesProduceIndividualToken!1420 thiss!17113 rules!1846 (h!23227 tokens!457))))

(assert (=> b!1625567 (= lt!587231 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!565 thiss!17113 rules!1846 tokens!457 (h!23227 tokens!457)))))

(declare-fun b!1625568 () Bool)

(assert (=> b!1625568 (= e!1042614 (tokensListTwoByTwoPredicateSeparableList!461 thiss!17113 (Cons!17826 (h!23227 (t!148987 tokens!457)) (t!148987 (t!148987 tokens!457))) rules!1846))))

(assert (= (and d!489438 (not res!726730)) b!1625567))

(assert (= (and b!1625567 res!726731) b!1625568))

(declare-fun m!1953643 () Bool)

(assert (=> b!1625567 m!1953643))

(assert (=> b!1625567 m!1952767))

(assert (=> b!1625567 m!1952827))

(assert (=> b!1625567 m!1952827))

(assert (=> b!1625567 m!1953481))

(declare-fun m!1953645 () Bool)

(assert (=> b!1625567 m!1953645))

(assert (=> b!1625567 m!1952829))

(declare-fun m!1953647 () Bool)

(assert (=> b!1625567 m!1953647))

(declare-fun m!1953649 () Bool)

(assert (=> b!1625568 m!1953649))

(assert (=> b!1625094 d!489438))

(declare-fun d!489444 () Bool)

(assert (=> d!489444 (= (isEmpty!10855 rules!1846) ((_ is Nil!17825) rules!1846))))

(assert (=> b!1625115 d!489444))

(declare-fun d!489446 () Bool)

(declare-fun res!726736 () Bool)

(declare-fun e!1042618 () Bool)

(assert (=> d!489446 (=> (not res!726736) (not e!1042618))))

(assert (=> d!489446 (= res!726736 (not (isEmpty!10853 (originalCharacters!3953 (h!23227 tokens!457)))))))

(assert (=> d!489446 (= (inv!23204 (h!23227 tokens!457)) e!1042618)))

(declare-fun b!1625573 () Bool)

(declare-fun res!726737 () Bool)

(assert (=> b!1625573 (=> (not res!726737) (not e!1042618))))

(assert (=> b!1625573 (= res!726737 (= (originalCharacters!3953 (h!23227 tokens!457)) (list!6995 (dynLambda!7956 (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (value!99134 (h!23227 tokens!457))))))))

(declare-fun b!1625574 () Bool)

(assert (=> b!1625574 (= e!1042618 (= (size!14266 (h!23227 tokens!457)) (size!14272 (originalCharacters!3953 (h!23227 tokens!457)))))))

(assert (= (and d!489446 res!726736) b!1625573))

(assert (= (and b!1625573 res!726737) b!1625574))

(declare-fun b_lambda!51211 () Bool)

(assert (=> (not b_lambda!51211) (not b!1625573)))

(assert (=> b!1625573 t!149009))

(declare-fun b_and!115273 () Bool)

(assert (= b_and!115269 (and (=> t!149009 result!112538) b_and!115273)))

(assert (=> b!1625573 t!149011))

(declare-fun b_and!115275 () Bool)

(assert (= b_and!115271 (and (=> t!149011 result!112540) b_and!115275)))

(declare-fun m!1953651 () Bool)

(assert (=> d!489446 m!1953651))

(assert (=> b!1625573 m!1953607))

(assert (=> b!1625573 m!1953607))

(declare-fun m!1953653 () Bool)

(assert (=> b!1625573 m!1953653))

(declare-fun m!1953655 () Bool)

(assert (=> b!1625574 m!1953655))

(assert (=> b!1625116 d!489446))

(declare-fun d!489448 () Bool)

(assert (=> d!489448 (= (isEmpty!10853 (_2!10099 lt!586855)) ((_ is Nil!17824) (_2!10099 lt!586855)))))

(assert (=> b!1625109 d!489448))

(declare-fun d!489450 () Bool)

(declare-fun e!1042621 () Bool)

(assert (=> d!489450 e!1042621))

(declare-fun res!726740 () Bool)

(assert (=> d!489450 (=> (not res!726740) (not e!1042621))))

(declare-fun isBalanced!1790 (Conc!5927) Bool)

(declare-fun prepend!667 (Conc!5927 Token!5844) Conc!5927)

(assert (=> d!489450 (= res!726740 (isBalanced!1790 (prepend!667 (c!264493 (seqFromList!2027 (t!148987 (t!148987 tokens!457)))) (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!587239 () BalanceConc!11798)

(assert (=> d!489450 (= lt!587239 (BalanceConc!11799 (prepend!667 (c!264493 (seqFromList!2027 (t!148987 (t!148987 tokens!457)))) (h!23227 (t!148987 tokens!457)))))))

(assert (=> d!489450 (= (prepend!665 (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (h!23227 (t!148987 tokens!457))) lt!587239)))

(declare-fun b!1625577 () Bool)

(assert (=> b!1625577 (= e!1042621 (= (list!6996 lt!587239) (Cons!17826 (h!23227 (t!148987 tokens!457)) (list!6996 (seqFromList!2027 (t!148987 (t!148987 tokens!457)))))))))

(assert (= (and d!489450 res!726740) b!1625577))

(declare-fun m!1953657 () Bool)

(assert (=> d!489450 m!1953657))

(assert (=> d!489450 m!1953657))

(declare-fun m!1953659 () Bool)

(assert (=> d!489450 m!1953659))

(declare-fun m!1953661 () Bool)

(assert (=> b!1625577 m!1953661))

(assert (=> b!1625577 m!1952795))

(declare-fun m!1953663 () Bool)

(assert (=> b!1625577 m!1953663))

(assert (=> b!1625107 d!489450))

(declare-fun d!489452 () Bool)

(declare-fun list!7000 (Conc!5927) List!17896)

(assert (=> d!489452 (= (list!6996 (prepend!665 (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (h!23227 (t!148987 tokens!457)))) (list!7000 (c!264493 (prepend!665 (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (h!23227 (t!148987 tokens!457))))))))

(declare-fun bs!394780 () Bool)

(assert (= bs!394780 d!489452))

(declare-fun m!1953665 () Bool)

(assert (=> bs!394780 m!1953665))

(assert (=> b!1625107 d!489452))

(declare-fun d!489454 () Bool)

(assert (=> d!489454 (= (list!6996 lt!586844) (list!7000 (c!264493 lt!586844)))))

(declare-fun bs!394781 () Bool)

(assert (= bs!394781 d!489454))

(declare-fun m!1953667 () Bool)

(assert (=> bs!394781 m!1953667))

(assert (=> b!1625107 d!489454))

(declare-fun d!489456 () Bool)

(assert (=> d!489456 (= (list!6996 (_1!10097 lt!586859)) (list!6996 (prepend!665 (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!587242 () Unit!28867)

(declare-fun choose!9774 (Token!5844 List!17896 BalanceConc!11798) Unit!28867)

(assert (=> d!489456 (= lt!587242 (choose!9774 (h!23227 (t!148987 tokens!457)) (t!148987 (t!148987 tokens!457)) (_1!10097 lt!586859)))))

(declare-fun $colon$colon!329 (List!17896 Token!5844) List!17896)

(assert (=> d!489456 (= (list!6996 (_1!10097 lt!586859)) (list!6996 (seqFromList!2027 ($colon$colon!329 (t!148987 (t!148987 tokens!457)) (h!23227 (t!148987 tokens!457))))))))

(assert (=> d!489456 (= (seqFromListBHdTlConstructive!216 (h!23227 (t!148987 tokens!457)) (t!148987 (t!148987 tokens!457)) (_1!10097 lt!586859)) lt!587242)))

(declare-fun bs!394782 () Bool)

(assert (= bs!394782 d!489456))

(declare-fun m!1953669 () Bool)

(assert (=> bs!394782 m!1953669))

(declare-fun m!1953671 () Bool)

(assert (=> bs!394782 m!1953671))

(assert (=> bs!394782 m!1952809))

(declare-fun m!1953673 () Bool)

(assert (=> bs!394782 m!1953673))

(assert (=> bs!394782 m!1953669))

(assert (=> bs!394782 m!1952797))

(assert (=> bs!394782 m!1952799))

(declare-fun m!1953675 () Bool)

(assert (=> bs!394782 m!1953675))

(assert (=> bs!394782 m!1953673))

(assert (=> bs!394782 m!1952795))

(assert (=> bs!394782 m!1952795))

(assert (=> bs!394782 m!1952797))

(assert (=> b!1625107 d!489456))

(declare-fun d!489458 () Bool)

(assert (=> d!489458 (= (seqFromList!2027 (t!148987 (t!148987 tokens!457))) (fromListB!895 (t!148987 (t!148987 tokens!457))))))

(declare-fun bs!394783 () Bool)

(assert (= bs!394783 d!489458))

(declare-fun m!1953677 () Bool)

(assert (=> bs!394783 m!1953677))

(assert (=> b!1625107 d!489458))

(declare-fun d!489460 () Bool)

(assert (=> d!489460 (= (separableTokensPredicate!710 thiss!17113 (h!23227 tokens!457) (h!23227 (t!148987 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!527 (rulesRegex!529 thiss!17113 rules!1846) (++!4738 (charsOf!1788 (h!23227 tokens!457)) (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 tokens!457))) 0))))))))

(declare-fun bs!394784 () Bool)

(assert (= bs!394784 d!489460))

(assert (=> bs!394784 m!1952827))

(assert (=> bs!394784 m!1952821))

(assert (=> bs!394784 m!1952817))

(assert (=> bs!394784 m!1952753))

(assert (=> bs!394784 m!1952823))

(declare-fun m!1953679 () Bool)

(assert (=> bs!394784 m!1953679))

(assert (=> bs!394784 m!1952753))

(assert (=> bs!394784 m!1952817))

(assert (=> bs!394784 m!1953679))

(declare-fun m!1953681 () Bool)

(assert (=> bs!394784 m!1953681))

(assert (=> bs!394784 m!1952827))

(assert (=> bs!394784 m!1952821))

(assert (=> bs!394784 m!1952823))

(assert (=> b!1625108 d!489460))

(declare-fun d!489462 () Bool)

(assert (=> d!489462 (= (list!6996 (_1!10097 lt!586859)) (list!7000 (c!264493 (_1!10097 lt!586859))))))

(declare-fun bs!394785 () Bool)

(assert (= bs!394785 d!489462))

(declare-fun m!1953683 () Bool)

(assert (=> bs!394785 m!1953683))

(assert (=> b!1625111 d!489462))

(declare-fun d!489464 () Bool)

(declare-fun e!1042696 () Bool)

(assert (=> d!489464 e!1042696))

(declare-fun res!726774 () Bool)

(assert (=> d!489464 (=> (not res!726774) (not e!1042696))))

(assert (=> d!489464 (= res!726774 (= (list!6996 (_1!10097 (lex!1252 thiss!17113 rules!1846 (print!1299 thiss!17113 (seqFromList!2027 (t!148987 tokens!457)))))) (t!148987 tokens!457)))))

(declare-fun lt!587423 () Unit!28867)

(declare-fun e!1042695 () Unit!28867)

(assert (=> d!489464 (= lt!587423 e!1042695)))

(declare-fun c!264579 () Bool)

(assert (=> d!489464 (= c!264579 (or ((_ is Nil!17826) (t!148987 tokens!457)) ((_ is Nil!17826) (t!148987 (t!148987 tokens!457)))))))

(assert (=> d!489464 (not (isEmpty!10855 rules!1846))))

(assert (=> d!489464 (= (theoremInvertabilityWhenTokenListSeparable!213 thiss!17113 rules!1846 (t!148987 tokens!457)) lt!587423)))

(declare-fun b!1625679 () Bool)

(declare-fun Unit!28881 () Unit!28867)

(assert (=> b!1625679 (= e!1042695 Unit!28881)))

(declare-fun b!1625680 () Bool)

(declare-fun Unit!28882 () Unit!28867)

(assert (=> b!1625680 (= e!1042695 Unit!28882)))

(declare-fun lt!587410 () BalanceConc!11796)

(assert (=> b!1625680 (= lt!587410 (print!1299 thiss!17113 (seqFromList!2027 (t!148987 tokens!457))))))

(declare-fun lt!587412 () BalanceConc!11796)

(assert (=> b!1625680 (= lt!587412 (print!1299 thiss!17113 (seqFromList!2027 (t!148987 (t!148987 tokens!457)))))))

(declare-fun lt!587418 () tuple2!17390)

(assert (=> b!1625680 (= lt!587418 (lex!1252 thiss!17113 rules!1846 lt!587412))))

(declare-fun lt!587434 () List!17894)

(assert (=> b!1625680 (= lt!587434 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!587416 () List!17894)

(assert (=> b!1625680 (= lt!587416 (list!6995 lt!587412))))

(declare-fun lt!587421 () Unit!28867)

(assert (=> b!1625680 (= lt!587421 (lemmaConcatTwoListThenFirstIsPrefix!924 lt!587434 lt!587416))))

(assert (=> b!1625680 (isPrefix!1399 lt!587434 (++!4737 lt!587434 lt!587416))))

(declare-fun lt!587419 () Unit!28867)

(assert (=> b!1625680 (= lt!587419 lt!587421)))

(declare-fun lt!587432 () Unit!28867)

(assert (=> b!1625680 (= lt!587432 (theoremInvertabilityWhenTokenListSeparable!213 thiss!17113 rules!1846 (t!148987 (t!148987 tokens!457))))))

(declare-fun lt!587413 () Unit!28867)

(assert (=> b!1625680 (= lt!587413 (seqFromListBHdTlConstructive!216 (h!23227 (t!148987 (t!148987 tokens!457))) (t!148987 (t!148987 (t!148987 tokens!457))) (_1!10097 lt!587418)))))

(assert (=> b!1625680 (= (list!6996 (_1!10097 lt!587418)) (list!6996 (prepend!665 (seqFromList!2027 (t!148987 (t!148987 (t!148987 tokens!457)))) (h!23227 (t!148987 (t!148987 tokens!457))))))))

(declare-fun lt!587430 () Unit!28867)

(assert (=> b!1625680 (= lt!587430 lt!587413)))

(declare-fun lt!587425 () Option!3302)

(assert (=> b!1625680 (= lt!587425 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 lt!587410)))))

(assert (=> b!1625680 (= (print!1299 thiss!17113 (singletonSeq!1557 (h!23227 (t!148987 tokens!457)))) (printTailRec!821 thiss!17113 (singletonSeq!1557 (h!23227 (t!148987 tokens!457))) 0 (BalanceConc!11797 Empty!5926)))))

(declare-fun lt!587417 () Unit!28867)

(declare-fun Unit!28886 () Unit!28867)

(assert (=> b!1625680 (= lt!587417 Unit!28886)))

(declare-fun lt!587426 () Unit!28867)

(assert (=> b!1625680 (= lt!587426 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!342 thiss!17113 rules!1846 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457)))) (list!6995 lt!587412)))))

(assert (=> b!1625680 (= (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457)))) (originalCharacters!3953 (h!23227 (t!148987 tokens!457))))))

(declare-fun lt!587433 () Unit!28867)

(declare-fun Unit!28888 () Unit!28867)

(assert (=> b!1625680 (= lt!587433 Unit!28888)))

(assert (=> b!1625680 (= (list!6995 (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 (t!148987 tokens!457)))) 0))) (Cons!17824 (head!3433 (originalCharacters!3953 (h!23227 (t!148987 (t!148987 tokens!457))))) Nil!17824))))

(declare-fun lt!587424 () Unit!28867)

(declare-fun Unit!28890 () Unit!28867)

(assert (=> b!1625680 (= lt!587424 Unit!28890)))

(assert (=> b!1625680 (= (list!6995 (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 (t!148987 tokens!457)))) 0))) (Cons!17824 (head!3433 (list!6995 lt!587412)) Nil!17824))))

(declare-fun lt!587428 () Unit!28867)

(declare-fun Unit!28892 () Unit!28867)

(assert (=> b!1625680 (= lt!587428 Unit!28892)))

(assert (=> b!1625680 (= (list!6995 (singletonSeq!1556 (apply!4552 (charsOf!1788 (h!23227 (t!148987 (t!148987 tokens!457)))) 0))) (Cons!17824 (head!3432 lt!587412) Nil!17824))))

(declare-fun lt!587411 () Unit!28867)

(declare-fun Unit!28895 () Unit!28867)

(assert (=> b!1625680 (= lt!587411 Unit!28895)))

(assert (=> b!1625680 (isDefined!2669 (maxPrefix!1332 thiss!17113 rules!1846 (originalCharacters!3953 (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!587429 () Unit!28867)

(declare-fun Unit!28896 () Unit!28867)

(assert (=> b!1625680 (= lt!587429 Unit!28896)))

(assert (=> b!1625680 (isDefined!2669 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457))))))))

(declare-fun lt!587414 () Unit!28867)

(declare-fun Unit!28898 () Unit!28867)

(assert (=> b!1625680 (= lt!587414 Unit!28898)))

(declare-fun lt!587422 () Unit!28867)

(declare-fun Unit!28900 () Unit!28867)

(assert (=> b!1625680 (= lt!587422 Unit!28900)))

(assert (=> b!1625680 (= (_1!10099 (get!5137 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457))))))) (h!23227 (t!148987 tokens!457)))))

(declare-fun lt!587427 () Unit!28867)

(declare-fun Unit!28902 () Unit!28867)

(assert (=> b!1625680 (= lt!587427 Unit!28902)))

(assert (=> b!1625680 (isEmpty!10853 (_2!10099 (get!5137 (maxPrefix!1332 thiss!17113 rules!1846 (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457))))))))))

(declare-fun lt!587415 () Unit!28867)

(declare-fun Unit!28904 () Unit!28867)

(assert (=> b!1625680 (= lt!587415 Unit!28904)))

(assert (=> b!1625680 (matchR!1966 (regex!3139 (rule!4965 (h!23227 (t!148987 tokens!457)))) (list!6995 (charsOf!1788 (h!23227 (t!148987 tokens!457)))))))

(declare-fun lt!587431 () Unit!28867)

(declare-fun Unit!28905 () Unit!28867)

(assert (=> b!1625680 (= lt!587431 Unit!28905)))

(assert (=> b!1625680 (= (rule!4965 (h!23227 (t!148987 tokens!457))) (rule!4965 (h!23227 (t!148987 tokens!457))))))

(declare-fun lt!587409 () Unit!28867)

(declare-fun Unit!28906 () Unit!28867)

(assert (=> b!1625680 (= lt!587409 Unit!28906)))

(declare-fun lt!587420 () Unit!28867)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!110 (LexerInterface!2768 List!17895 Token!5844 Rule!6078 List!17894) Unit!28867)

(assert (=> b!1625680 (= lt!587420 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!110 thiss!17113 rules!1846 (h!23227 (t!148987 tokens!457)) (rule!4965 (h!23227 (t!148987 tokens!457))) (list!6995 lt!587412)))))

(declare-fun b!1625681 () Bool)

(assert (=> b!1625681 (= e!1042696 (isEmpty!10862 (_2!10097 (lex!1252 thiss!17113 rules!1846 (print!1299 thiss!17113 (seqFromList!2027 (t!148987 tokens!457)))))))))

(assert (= (and d!489464 c!264579) b!1625679))

(assert (= (and d!489464 (not c!264579)) b!1625680))

(assert (= (and d!489464 res!726774) b!1625681))

(assert (=> d!489464 m!1952741))

(declare-fun m!1953875 () Bool)

(assert (=> d!489464 m!1953875))

(assert (=> d!489464 m!1952785))

(assert (=> d!489464 m!1952741))

(declare-fun m!1953877 () Bool)

(assert (=> d!489464 m!1953877))

(assert (=> d!489464 m!1953875))

(declare-fun m!1953879 () Bool)

(assert (=> d!489464 m!1953879))

(declare-fun m!1953881 () Bool)

(assert (=> b!1625680 m!1953881))

(declare-fun m!1953883 () Bool)

(assert (=> b!1625680 m!1953883))

(declare-fun m!1953885 () Bool)

(assert (=> b!1625680 m!1953885))

(declare-fun m!1953887 () Bool)

(assert (=> b!1625680 m!1953887))

(assert (=> b!1625680 m!1952795))

(declare-fun m!1953889 () Bool)

(assert (=> b!1625680 m!1953889))

(declare-fun m!1953891 () Bool)

(assert (=> b!1625680 m!1953891))

(declare-fun m!1953893 () Bool)

(assert (=> b!1625680 m!1953893))

(assert (=> b!1625680 m!1952827))

(assert (=> b!1625680 m!1953475))

(assert (=> b!1625680 m!1953881))

(declare-fun m!1953895 () Bool)

(assert (=> b!1625680 m!1953895))

(declare-fun m!1953897 () Bool)

(assert (=> b!1625680 m!1953897))

(declare-fun m!1953899 () Bool)

(assert (=> b!1625680 m!1953899))

(declare-fun m!1953901 () Bool)

(assert (=> b!1625680 m!1953901))

(assert (=> b!1625680 m!1952741))

(declare-fun m!1953903 () Bool)

(assert (=> b!1625680 m!1953903))

(assert (=> b!1625680 m!1953475))

(assert (=> b!1625680 m!1953895))

(declare-fun m!1953905 () Bool)

(assert (=> b!1625680 m!1953905))

(declare-fun m!1953907 () Bool)

(assert (=> b!1625680 m!1953907))

(assert (=> b!1625680 m!1952741))

(assert (=> b!1625680 m!1953875))

(declare-fun m!1953909 () Bool)

(assert (=> b!1625680 m!1953909))

(declare-fun m!1953911 () Bool)

(assert (=> b!1625680 m!1953911))

(declare-fun m!1953913 () Bool)

(assert (=> b!1625680 m!1953913))

(declare-fun m!1953915 () Bool)

(assert (=> b!1625680 m!1953915))

(declare-fun m!1953917 () Bool)

(assert (=> b!1625680 m!1953917))

(assert (=> b!1625680 m!1953895))

(declare-fun m!1953919 () Bool)

(assert (=> b!1625680 m!1953919))

(declare-fun m!1953921 () Bool)

(assert (=> b!1625680 m!1953921))

(declare-fun m!1953923 () Bool)

(assert (=> b!1625680 m!1953923))

(declare-fun m!1953925 () Bool)

(assert (=> b!1625680 m!1953925))

(assert (=> b!1625680 m!1953887))

(assert (=> b!1625680 m!1953921))

(declare-fun m!1953927 () Bool)

(assert (=> b!1625680 m!1953927))

(assert (=> b!1625680 m!1953909))

(declare-fun m!1953929 () Bool)

(assert (=> b!1625680 m!1953929))

(declare-fun m!1953931 () Bool)

(assert (=> b!1625680 m!1953931))

(declare-fun m!1953933 () Bool)

(assert (=> b!1625680 m!1953933))

(assert (=> b!1625680 m!1953901))

(assert (=> b!1625680 m!1953891))

(declare-fun m!1953935 () Bool)

(assert (=> b!1625680 m!1953935))

(assert (=> b!1625680 m!1953475))

(assert (=> b!1625680 m!1953909))

(assert (=> b!1625680 m!1952795))

(assert (=> b!1625680 m!1953475))

(declare-fun m!1953937 () Bool)

(assert (=> b!1625680 m!1953937))

(assert (=> b!1625680 m!1953895))

(assert (=> b!1625680 m!1953913))

(assert (=> b!1625680 m!1953885))

(declare-fun m!1953939 () Bool)

(assert (=> b!1625680 m!1953939))

(assert (=> b!1625680 m!1953931))

(declare-fun m!1953941 () Bool)

(assert (=> b!1625680 m!1953941))

(assert (=> b!1625680 m!1952827))

(assert (=> b!1625680 m!1953917))

(declare-fun m!1953943 () Bool)

(assert (=> b!1625680 m!1953943))

(assert (=> b!1625680 m!1953881))

(declare-fun m!1953945 () Bool)

(assert (=> b!1625680 m!1953945))

(assert (=> b!1625681 m!1952741))

(assert (=> b!1625681 m!1952741))

(assert (=> b!1625681 m!1953875))

(assert (=> b!1625681 m!1953875))

(assert (=> b!1625681 m!1953879))

(declare-fun m!1953947 () Bool)

(assert (=> b!1625681 m!1953947))

(assert (=> b!1625111 d!489464))

(declare-fun b!1625697 () Bool)

(declare-fun e!1042706 () Bool)

(assert (=> b!1625697 (= e!1042706 (>= (size!14272 lt!586868) (size!14272 lt!586842)))))

(declare-fun d!489484 () Bool)

(assert (=> d!489484 e!1042706))

(declare-fun res!726784 () Bool)

(assert (=> d!489484 (=> res!726784 e!1042706)))

(declare-fun lt!587437 () Bool)

(assert (=> d!489484 (= res!726784 (not lt!587437))))

(declare-fun e!1042705 () Bool)

(assert (=> d!489484 (= lt!587437 e!1042705)))

(declare-fun res!726786 () Bool)

(assert (=> d!489484 (=> res!726786 e!1042705)))

(assert (=> d!489484 (= res!726786 ((_ is Nil!17824) lt!586842))))

(assert (=> d!489484 (= (isPrefix!1399 lt!586842 lt!586868) lt!587437)))

(declare-fun b!1625696 () Bool)

(declare-fun e!1042704 () Bool)

(assert (=> b!1625696 (= e!1042704 (isPrefix!1399 (tail!2362 lt!586842) (tail!2362 lt!586868)))))

(declare-fun b!1625695 () Bool)

(declare-fun res!726783 () Bool)

(assert (=> b!1625695 (=> (not res!726783) (not e!1042704))))

(assert (=> b!1625695 (= res!726783 (= (head!3433 lt!586842) (head!3433 lt!586868)))))

(declare-fun b!1625694 () Bool)

(assert (=> b!1625694 (= e!1042705 e!1042704)))

(declare-fun res!726785 () Bool)

(assert (=> b!1625694 (=> (not res!726785) (not e!1042704))))

(assert (=> b!1625694 (= res!726785 (not ((_ is Nil!17824) lt!586868)))))

(assert (= (and d!489484 (not res!726786)) b!1625694))

(assert (= (and b!1625694 res!726785) b!1625695))

(assert (= (and b!1625695 res!726783) b!1625696))

(assert (= (and d!489484 (not res!726784)) b!1625697))

(declare-fun m!1953949 () Bool)

(assert (=> b!1625697 m!1953949))

(assert (=> b!1625697 m!1953559))

(assert (=> b!1625696 m!1953523))

(declare-fun m!1953951 () Bool)

(assert (=> b!1625696 m!1953951))

(assert (=> b!1625696 m!1953523))

(assert (=> b!1625696 m!1953951))

(declare-fun m!1953953 () Bool)

(assert (=> b!1625696 m!1953953))

(assert (=> b!1625695 m!1953521))

(declare-fun m!1953955 () Bool)

(assert (=> b!1625695 m!1953955))

(assert (=> b!1625111 d!489484))

(declare-fun d!489486 () Bool)

(assert (=> d!489486 (isPrefix!1399 lt!586842 (++!4737 lt!586842 lt!586865))))

(declare-fun lt!587440 () Unit!28867)

(declare-fun choose!9776 (List!17894 List!17894) Unit!28867)

(assert (=> d!489486 (= lt!587440 (choose!9776 lt!586842 lt!586865))))

(assert (=> d!489486 (= (lemmaConcatTwoListThenFirstIsPrefix!924 lt!586842 lt!586865) lt!587440)))

(declare-fun bs!394789 () Bool)

(assert (= bs!394789 d!489486))

(assert (=> bs!394789 m!1952745))

(assert (=> bs!394789 m!1952745))

(declare-fun m!1953957 () Bool)

(assert (=> bs!394789 m!1953957))

(declare-fun m!1953959 () Bool)

(assert (=> bs!394789 m!1953959))

(assert (=> b!1625111 d!489486))

(declare-fun lt!587443 () Bool)

(declare-fun d!489488 () Bool)

(declare-fun isEmpty!10864 (List!17896) Bool)

(assert (=> d!489488 (= lt!587443 (isEmpty!10864 (list!6996 (_1!10097 (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842))))))))

(declare-fun isEmpty!10865 (Conc!5927) Bool)

(assert (=> d!489488 (= lt!587443 (isEmpty!10865 (c!264493 (_1!10097 (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842))))))))

(assert (=> d!489488 (= (isEmpty!10854 (_1!10097 (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842)))) lt!587443)))

(declare-fun bs!394790 () Bool)

(assert (= bs!394790 d!489488))

(assert (=> bs!394790 m!1953205))

(assert (=> bs!394790 m!1953205))

(declare-fun m!1953961 () Bool)

(assert (=> bs!394790 m!1953961))

(declare-fun m!1953963 () Bool)

(assert (=> bs!394790 m!1953963))

(assert (=> b!1625112 d!489488))

(declare-fun b!1625698 () Bool)

(declare-fun e!1042707 () Bool)

(declare-fun lt!587444 () tuple2!17390)

(assert (=> b!1625698 (= e!1042707 (= (_2!10097 lt!587444) (seqFromList!2028 lt!586842)))))

(declare-fun b!1625700 () Bool)

(declare-fun e!1042708 () Bool)

(assert (=> b!1625700 (= e!1042707 e!1042708)))

(declare-fun res!726787 () Bool)

(assert (=> b!1625700 (= res!726787 (< (size!14271 (_2!10097 lt!587444)) (size!14271 (seqFromList!2028 lt!586842))))))

(assert (=> b!1625700 (=> (not res!726787) (not e!1042708))))

(declare-fun b!1625701 () Bool)

(declare-fun e!1042709 () Bool)

(assert (=> b!1625701 (= e!1042709 (= (list!6995 (_2!10097 lt!587444)) (_2!10101 (lexList!829 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 lt!586842))))))))

(declare-fun b!1625702 () Bool)

(declare-fun res!726788 () Bool)

(assert (=> b!1625702 (=> (not res!726788) (not e!1042709))))

(assert (=> b!1625702 (= res!726788 (= (list!6996 (_1!10097 lt!587444)) (_1!10101 (lexList!829 thiss!17113 rules!1846 (list!6995 (seqFromList!2028 lt!586842))))))))

(declare-fun d!489490 () Bool)

(assert (=> d!489490 e!1042709))

(declare-fun res!726789 () Bool)

(assert (=> d!489490 (=> (not res!726789) (not e!1042709))))

(assert (=> d!489490 (= res!726789 e!1042707)))

(declare-fun c!264580 () Bool)

(assert (=> d!489490 (= c!264580 (> (size!14270 (_1!10097 lt!587444)) 0))))

(assert (=> d!489490 (= lt!587444 (lexTailRecV2!552 thiss!17113 rules!1846 (seqFromList!2028 lt!586842) (BalanceConc!11797 Empty!5926) (seqFromList!2028 lt!586842) (BalanceConc!11799 Empty!5927)))))

(assert (=> d!489490 (= (lex!1252 thiss!17113 rules!1846 (seqFromList!2028 lt!586842)) lt!587444)))

(declare-fun b!1625699 () Bool)

(assert (=> b!1625699 (= e!1042708 (not (isEmpty!10854 (_1!10097 lt!587444))))))

(assert (= (and d!489490 c!264580) b!1625700))

(assert (= (and d!489490 (not c!264580)) b!1625698))

(assert (= (and b!1625700 res!726787) b!1625699))

(assert (= (and d!489490 res!726789) b!1625702))

(assert (= (and b!1625702 res!726788) b!1625701))

(declare-fun m!1953965 () Bool)

(assert (=> b!1625702 m!1953965))

(assert (=> b!1625702 m!1952831))

(declare-fun m!1953967 () Bool)

(assert (=> b!1625702 m!1953967))

(assert (=> b!1625702 m!1953967))

(declare-fun m!1953969 () Bool)

(assert (=> b!1625702 m!1953969))

(declare-fun m!1953971 () Bool)

(assert (=> b!1625701 m!1953971))

(assert (=> b!1625701 m!1952831))

(assert (=> b!1625701 m!1953967))

(assert (=> b!1625701 m!1953967))

(assert (=> b!1625701 m!1953969))

(declare-fun m!1953973 () Bool)

(assert (=> b!1625699 m!1953973))

(declare-fun m!1953975 () Bool)

(assert (=> d!489490 m!1953975))

(assert (=> d!489490 m!1952831))

(assert (=> d!489490 m!1952831))

(declare-fun m!1953977 () Bool)

(assert (=> d!489490 m!1953977))

(declare-fun m!1953979 () Bool)

(assert (=> b!1625700 m!1953979))

(assert (=> b!1625700 m!1952831))

(declare-fun m!1953981 () Bool)

(assert (=> b!1625700 m!1953981))

(assert (=> b!1625112 d!489490))

(declare-fun d!489492 () Bool)

(assert (=> d!489492 (= (seqFromList!2028 lt!586842) (fromListB!893 lt!586842))))

(declare-fun bs!394791 () Bool)

(assert (= bs!394791 d!489492))

(declare-fun m!1953983 () Bool)

(assert (=> bs!394791 m!1953983))

(assert (=> b!1625112 d!489492))

(declare-fun b!1625713 () Bool)

(declare-fun e!1042718 () Bool)

(declare-fun inv!16 (TokenValue!3229) Bool)

(assert (=> b!1625713 (= e!1042718 (inv!16 (value!99134 (h!23227 tokens!457))))))

(declare-fun b!1625714 () Bool)

(declare-fun res!726792 () Bool)

(declare-fun e!1042716 () Bool)

(assert (=> b!1625714 (=> res!726792 e!1042716)))

(assert (=> b!1625714 (= res!726792 (not ((_ is IntegerValue!9689) (value!99134 (h!23227 tokens!457)))))))

(declare-fun e!1042717 () Bool)

(assert (=> b!1625714 (= e!1042717 e!1042716)))

(declare-fun d!489494 () Bool)

(declare-fun c!264586 () Bool)

(assert (=> d!489494 (= c!264586 ((_ is IntegerValue!9687) (value!99134 (h!23227 tokens!457))))))

(assert (=> d!489494 (= (inv!21 (value!99134 (h!23227 tokens!457))) e!1042718)))

(declare-fun b!1625715 () Bool)

(declare-fun inv!15 (TokenValue!3229) Bool)

(assert (=> b!1625715 (= e!1042716 (inv!15 (value!99134 (h!23227 tokens!457))))))

(declare-fun b!1625716 () Bool)

(declare-fun inv!17 (TokenValue!3229) Bool)

(assert (=> b!1625716 (= e!1042717 (inv!17 (value!99134 (h!23227 tokens!457))))))

(declare-fun b!1625717 () Bool)

(assert (=> b!1625717 (= e!1042718 e!1042717)))

(declare-fun c!264585 () Bool)

(assert (=> b!1625717 (= c!264585 ((_ is IntegerValue!9688) (value!99134 (h!23227 tokens!457))))))

(assert (= (and d!489494 c!264586) b!1625713))

(assert (= (and d!489494 (not c!264586)) b!1625717))

(assert (= (and b!1625717 c!264585) b!1625716))

(assert (= (and b!1625717 (not c!264585)) b!1625714))

(assert (= (and b!1625714 (not res!726792)) b!1625715))

(declare-fun m!1953985 () Bool)

(assert (=> b!1625713 m!1953985))

(declare-fun m!1953987 () Bool)

(assert (=> b!1625715 m!1953987))

(declare-fun m!1953989 () Bool)

(assert (=> b!1625716 m!1953989))

(assert (=> b!1625110 d!489494))

(declare-fun b!1625736 () Bool)

(declare-fun e!1042727 () Option!3302)

(declare-fun call!105252 () Option!3302)

(assert (=> b!1625736 (= e!1042727 call!105252)))

(declare-fun bm!105247 () Bool)

(assert (=> bm!105247 (= call!105252 (maxPrefixOneRule!775 thiss!17113 (h!23226 rules!1846) lt!586842))))

(declare-fun b!1625737 () Bool)

(declare-fun e!1042726 () Bool)

(declare-fun e!1042725 () Bool)

(assert (=> b!1625737 (= e!1042726 e!1042725)))

(declare-fun res!726809 () Bool)

(assert (=> b!1625737 (=> (not res!726809) (not e!1042725))))

(declare-fun lt!587458 () Option!3302)

(assert (=> b!1625737 (= res!726809 (isDefined!2669 lt!587458))))

(declare-fun d!489496 () Bool)

(assert (=> d!489496 e!1042726))

(declare-fun res!726810 () Bool)

(assert (=> d!489496 (=> res!726810 e!1042726)))

(assert (=> d!489496 (= res!726810 (isEmpty!10863 lt!587458))))

(assert (=> d!489496 (= lt!587458 e!1042727)))

(declare-fun c!264589 () Bool)

(assert (=> d!489496 (= c!264589 (and ((_ is Cons!17825) rules!1846) ((_ is Nil!17825) (t!148986 rules!1846))))))

(declare-fun lt!587459 () Unit!28867)

(declare-fun lt!587455 () Unit!28867)

(assert (=> d!489496 (= lt!587459 lt!587455)))

(assert (=> d!489496 (isPrefix!1399 lt!586842 lt!586842)))

(assert (=> d!489496 (= lt!587455 (lemmaIsPrefixRefl!960 lt!586842 lt!586842))))

(assert (=> d!489496 (rulesValidInductive!972 thiss!17113 rules!1846)))

(assert (=> d!489496 (= (maxPrefix!1332 thiss!17113 rules!1846 lt!586842) lt!587458)))

(declare-fun b!1625738 () Bool)

(declare-fun res!726811 () Bool)

(assert (=> b!1625738 (=> (not res!726811) (not e!1042725))))

(assert (=> b!1625738 (= res!726811 (= (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587458)))) (originalCharacters!3953 (_1!10099 (get!5137 lt!587458)))))))

(declare-fun b!1625739 () Bool)

(declare-fun res!726808 () Bool)

(assert (=> b!1625739 (=> (not res!726808) (not e!1042725))))

(assert (=> b!1625739 (= res!726808 (= (++!4737 (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587458)))) (_2!10099 (get!5137 lt!587458))) lt!586842))))

(declare-fun b!1625740 () Bool)

(declare-fun res!726813 () Bool)

(assert (=> b!1625740 (=> (not res!726813) (not e!1042725))))

(assert (=> b!1625740 (= res!726813 (< (size!14272 (_2!10099 (get!5137 lt!587458))) (size!14272 lt!586842)))))

(declare-fun b!1625741 () Bool)

(declare-fun res!726812 () Bool)

(assert (=> b!1625741 (=> (not res!726812) (not e!1042725))))

(assert (=> b!1625741 (= res!726812 (matchR!1966 (regex!3139 (rule!4965 (_1!10099 (get!5137 lt!587458)))) (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587458))))))))

(declare-fun b!1625742 () Bool)

(declare-fun lt!587457 () Option!3302)

(declare-fun lt!587456 () Option!3302)

(assert (=> b!1625742 (= e!1042727 (ite (and ((_ is None!3301) lt!587457) ((_ is None!3301) lt!587456)) None!3301 (ite ((_ is None!3301) lt!587456) lt!587457 (ite ((_ is None!3301) lt!587457) lt!587456 (ite (>= (size!14266 (_1!10099 (v!24336 lt!587457))) (size!14266 (_1!10099 (v!24336 lt!587456)))) lt!587457 lt!587456)))))))

(assert (=> b!1625742 (= lt!587457 call!105252)))

(assert (=> b!1625742 (= lt!587456 (maxPrefix!1332 thiss!17113 (t!148986 rules!1846) lt!586842))))

(declare-fun b!1625743 () Bool)

(declare-fun res!726807 () Bool)

(assert (=> b!1625743 (=> (not res!726807) (not e!1042725))))

(declare-fun apply!4560 (TokenValueInjection!6118 BalanceConc!11796) TokenValue!3229)

(assert (=> b!1625743 (= res!726807 (= (value!99134 (_1!10099 (get!5137 lt!587458))) (apply!4560 (transformation!3139 (rule!4965 (_1!10099 (get!5137 lt!587458)))) (seqFromList!2028 (originalCharacters!3953 (_1!10099 (get!5137 lt!587458)))))))))

(declare-fun b!1625744 () Bool)

(assert (=> b!1625744 (= e!1042725 (contains!3114 rules!1846 (rule!4965 (_1!10099 (get!5137 lt!587458)))))))

(assert (= (and d!489496 c!264589) b!1625736))

(assert (= (and d!489496 (not c!264589)) b!1625742))

(assert (= (or b!1625736 b!1625742) bm!105247))

(assert (= (and d!489496 (not res!726810)) b!1625737))

(assert (= (and b!1625737 res!726809) b!1625738))

(assert (= (and b!1625738 res!726811) b!1625740))

(assert (= (and b!1625740 res!726813) b!1625739))

(assert (= (and b!1625739 res!726808) b!1625743))

(assert (= (and b!1625743 res!726807) b!1625741))

(assert (= (and b!1625741 res!726812) b!1625744))

(declare-fun m!1953991 () Bool)

(assert (=> b!1625743 m!1953991))

(declare-fun m!1953993 () Bool)

(assert (=> b!1625743 m!1953993))

(assert (=> b!1625743 m!1953993))

(declare-fun m!1953995 () Bool)

(assert (=> b!1625743 m!1953995))

(assert (=> b!1625738 m!1953991))

(declare-fun m!1953997 () Bool)

(assert (=> b!1625738 m!1953997))

(assert (=> b!1625738 m!1953997))

(declare-fun m!1953999 () Bool)

(assert (=> b!1625738 m!1953999))

(declare-fun m!1954001 () Bool)

(assert (=> d!489496 m!1954001))

(declare-fun m!1954003 () Bool)

(assert (=> d!489496 m!1954003))

(declare-fun m!1954005 () Bool)

(assert (=> d!489496 m!1954005))

(assert (=> d!489496 m!1952971))

(assert (=> b!1625741 m!1953991))

(assert (=> b!1625741 m!1953997))

(assert (=> b!1625741 m!1953997))

(assert (=> b!1625741 m!1953999))

(assert (=> b!1625741 m!1953999))

(declare-fun m!1954007 () Bool)

(assert (=> b!1625741 m!1954007))

(assert (=> b!1625739 m!1953991))

(assert (=> b!1625739 m!1953997))

(assert (=> b!1625739 m!1953997))

(assert (=> b!1625739 m!1953999))

(assert (=> b!1625739 m!1953999))

(declare-fun m!1954009 () Bool)

(assert (=> b!1625739 m!1954009))

(assert (=> b!1625744 m!1953991))

(declare-fun m!1954011 () Bool)

(assert (=> b!1625744 m!1954011))

(assert (=> b!1625740 m!1953991))

(declare-fun m!1954013 () Bool)

(assert (=> b!1625740 m!1954013))

(assert (=> b!1625740 m!1953559))

(declare-fun m!1954015 () Bool)

(assert (=> bm!105247 m!1954015))

(declare-fun m!1954017 () Bool)

(assert (=> b!1625737 m!1954017))

(declare-fun m!1954019 () Bool)

(assert (=> b!1625742 m!1954019))

(assert (=> b!1625103 d!489496))

(declare-fun b!1625745 () Bool)

(declare-fun e!1042730 () Option!3302)

(declare-fun call!105253 () Option!3302)

(assert (=> b!1625745 (= e!1042730 call!105253)))

(declare-fun bm!105248 () Bool)

(assert (=> bm!105248 (= call!105253 (maxPrefixOneRule!775 thiss!17113 (h!23226 rules!1846) (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun b!1625746 () Bool)

(declare-fun e!1042729 () Bool)

(declare-fun e!1042728 () Bool)

(assert (=> b!1625746 (= e!1042729 e!1042728)))

(declare-fun res!726816 () Bool)

(assert (=> b!1625746 (=> (not res!726816) (not e!1042728))))

(declare-fun lt!587463 () Option!3302)

(assert (=> b!1625746 (= res!726816 (isDefined!2669 lt!587463))))

(declare-fun d!489498 () Bool)

(assert (=> d!489498 e!1042729))

(declare-fun res!726817 () Bool)

(assert (=> d!489498 (=> res!726817 e!1042729)))

(assert (=> d!489498 (= res!726817 (isEmpty!10863 lt!587463))))

(assert (=> d!489498 (= lt!587463 e!1042730)))

(declare-fun c!264590 () Bool)

(assert (=> d!489498 (= c!264590 (and ((_ is Cons!17825) rules!1846) ((_ is Nil!17825) (t!148986 rules!1846))))))

(declare-fun lt!587464 () Unit!28867)

(declare-fun lt!587460 () Unit!28867)

(assert (=> d!489498 (= lt!587464 lt!587460)))

(assert (=> d!489498 (isPrefix!1399 (originalCharacters!3953 (h!23227 tokens!457)) (originalCharacters!3953 (h!23227 tokens!457)))))

(assert (=> d!489498 (= lt!587460 (lemmaIsPrefixRefl!960 (originalCharacters!3953 (h!23227 tokens!457)) (originalCharacters!3953 (h!23227 tokens!457))))))

(assert (=> d!489498 (rulesValidInductive!972 thiss!17113 rules!1846)))

(assert (=> d!489498 (= (maxPrefix!1332 thiss!17113 rules!1846 (originalCharacters!3953 (h!23227 tokens!457))) lt!587463)))

(declare-fun b!1625747 () Bool)

(declare-fun res!726818 () Bool)

(assert (=> b!1625747 (=> (not res!726818) (not e!1042728))))

(assert (=> b!1625747 (= res!726818 (= (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587463)))) (originalCharacters!3953 (_1!10099 (get!5137 lt!587463)))))))

(declare-fun b!1625748 () Bool)

(declare-fun res!726815 () Bool)

(assert (=> b!1625748 (=> (not res!726815) (not e!1042728))))

(assert (=> b!1625748 (= res!726815 (= (++!4737 (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587463)))) (_2!10099 (get!5137 lt!587463))) (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun b!1625749 () Bool)

(declare-fun res!726820 () Bool)

(assert (=> b!1625749 (=> (not res!726820) (not e!1042728))))

(assert (=> b!1625749 (= res!726820 (< (size!14272 (_2!10099 (get!5137 lt!587463))) (size!14272 (originalCharacters!3953 (h!23227 tokens!457)))))))

(declare-fun b!1625750 () Bool)

(declare-fun res!726819 () Bool)

(assert (=> b!1625750 (=> (not res!726819) (not e!1042728))))

(assert (=> b!1625750 (= res!726819 (matchR!1966 (regex!3139 (rule!4965 (_1!10099 (get!5137 lt!587463)))) (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587463))))))))

(declare-fun b!1625751 () Bool)

(declare-fun lt!587462 () Option!3302)

(declare-fun lt!587461 () Option!3302)

(assert (=> b!1625751 (= e!1042730 (ite (and ((_ is None!3301) lt!587462) ((_ is None!3301) lt!587461)) None!3301 (ite ((_ is None!3301) lt!587461) lt!587462 (ite ((_ is None!3301) lt!587462) lt!587461 (ite (>= (size!14266 (_1!10099 (v!24336 lt!587462))) (size!14266 (_1!10099 (v!24336 lt!587461)))) lt!587462 lt!587461)))))))

(assert (=> b!1625751 (= lt!587462 call!105253)))

(assert (=> b!1625751 (= lt!587461 (maxPrefix!1332 thiss!17113 (t!148986 rules!1846) (originalCharacters!3953 (h!23227 tokens!457))))))

(declare-fun b!1625752 () Bool)

(declare-fun res!726814 () Bool)

(assert (=> b!1625752 (=> (not res!726814) (not e!1042728))))

(assert (=> b!1625752 (= res!726814 (= (value!99134 (_1!10099 (get!5137 lt!587463))) (apply!4560 (transformation!3139 (rule!4965 (_1!10099 (get!5137 lt!587463)))) (seqFromList!2028 (originalCharacters!3953 (_1!10099 (get!5137 lt!587463)))))))))

(declare-fun b!1625753 () Bool)

(assert (=> b!1625753 (= e!1042728 (contains!3114 rules!1846 (rule!4965 (_1!10099 (get!5137 lt!587463)))))))

(assert (= (and d!489498 c!264590) b!1625745))

(assert (= (and d!489498 (not c!264590)) b!1625751))

(assert (= (or b!1625745 b!1625751) bm!105248))

(assert (= (and d!489498 (not res!726817)) b!1625746))

(assert (= (and b!1625746 res!726816) b!1625747))

(assert (= (and b!1625747 res!726818) b!1625749))

(assert (= (and b!1625749 res!726820) b!1625748))

(assert (= (and b!1625748 res!726815) b!1625752))

(assert (= (and b!1625752 res!726814) b!1625750))

(assert (= (and b!1625750 res!726819) b!1625753))

(declare-fun m!1954021 () Bool)

(assert (=> b!1625752 m!1954021))

(declare-fun m!1954023 () Bool)

(assert (=> b!1625752 m!1954023))

(assert (=> b!1625752 m!1954023))

(declare-fun m!1954025 () Bool)

(assert (=> b!1625752 m!1954025))

(assert (=> b!1625747 m!1954021))

(declare-fun m!1954027 () Bool)

(assert (=> b!1625747 m!1954027))

(assert (=> b!1625747 m!1954027))

(declare-fun m!1954029 () Bool)

(assert (=> b!1625747 m!1954029))

(declare-fun m!1954031 () Bool)

(assert (=> d!489498 m!1954031))

(declare-fun m!1954033 () Bool)

(assert (=> d!489498 m!1954033))

(declare-fun m!1954035 () Bool)

(assert (=> d!489498 m!1954035))

(assert (=> d!489498 m!1952971))

(assert (=> b!1625750 m!1954021))

(assert (=> b!1625750 m!1954027))

(assert (=> b!1625750 m!1954027))

(assert (=> b!1625750 m!1954029))

(assert (=> b!1625750 m!1954029))

(declare-fun m!1954037 () Bool)

(assert (=> b!1625750 m!1954037))

(assert (=> b!1625748 m!1954021))

(assert (=> b!1625748 m!1954027))

(assert (=> b!1625748 m!1954027))

(assert (=> b!1625748 m!1954029))

(assert (=> b!1625748 m!1954029))

(declare-fun m!1954039 () Bool)

(assert (=> b!1625748 m!1954039))

(assert (=> b!1625753 m!1954021))

(declare-fun m!1954041 () Bool)

(assert (=> b!1625753 m!1954041))

(assert (=> b!1625749 m!1954021))

(declare-fun m!1954043 () Bool)

(assert (=> b!1625749 m!1954043))

(assert (=> b!1625749 m!1953655))

(declare-fun m!1954045 () Bool)

(assert (=> bm!105248 m!1954045))

(declare-fun m!1954047 () Bool)

(assert (=> b!1625746 m!1954047))

(declare-fun m!1954049 () Bool)

(assert (=> b!1625751 m!1954049))

(assert (=> b!1625103 d!489498))

(declare-fun b!1625756 () Bool)

(declare-fun res!726821 () Bool)

(declare-fun e!1042732 () Bool)

(assert (=> b!1625756 (=> (not res!726821) (not e!1042732))))

(declare-fun lt!587465 () List!17894)

(assert (=> b!1625756 (= res!726821 (= (size!14272 lt!587465) (+ (size!14272 (originalCharacters!3953 (h!23227 tokens!457))) (size!14272 lt!586861))))))

(declare-fun b!1625754 () Bool)

(declare-fun e!1042731 () List!17894)

(assert (=> b!1625754 (= e!1042731 lt!586861)))

(declare-fun b!1625755 () Bool)

(assert (=> b!1625755 (= e!1042731 (Cons!17824 (h!23225 (originalCharacters!3953 (h!23227 tokens!457))) (++!4737 (t!148985 (originalCharacters!3953 (h!23227 tokens!457))) lt!586861)))))

(declare-fun d!489500 () Bool)

(assert (=> d!489500 e!1042732))

(declare-fun res!726822 () Bool)

(assert (=> d!489500 (=> (not res!726822) (not e!1042732))))

(assert (=> d!489500 (= res!726822 (= (content!2472 lt!587465) ((_ map or) (content!2472 (originalCharacters!3953 (h!23227 tokens!457))) (content!2472 lt!586861))))))

(assert (=> d!489500 (= lt!587465 e!1042731)))

(declare-fun c!264591 () Bool)

(assert (=> d!489500 (= c!264591 ((_ is Nil!17824) (originalCharacters!3953 (h!23227 tokens!457))))))

(assert (=> d!489500 (= (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861) lt!587465)))

(declare-fun b!1625757 () Bool)

(assert (=> b!1625757 (= e!1042732 (or (not (= lt!586861 Nil!17824)) (= lt!587465 (originalCharacters!3953 (h!23227 tokens!457)))))))

(assert (= (and d!489500 c!264591) b!1625754))

(assert (= (and d!489500 (not c!264591)) b!1625755))

(assert (= (and d!489500 res!726822) b!1625756))

(assert (= (and b!1625756 res!726821) b!1625757))

(declare-fun m!1954051 () Bool)

(assert (=> b!1625756 m!1954051))

(assert (=> b!1625756 m!1953655))

(declare-fun m!1954053 () Bool)

(assert (=> b!1625756 m!1954053))

(declare-fun m!1954055 () Bool)

(assert (=> b!1625755 m!1954055))

(declare-fun m!1954057 () Bool)

(assert (=> d!489500 m!1954057))

(declare-fun m!1954059 () Bool)

(assert (=> d!489500 m!1954059))

(declare-fun m!1954061 () Bool)

(assert (=> d!489500 m!1954061))

(assert (=> b!1625103 d!489500))

(declare-fun d!489502 () Bool)

(assert (=> d!489502 (= (isDefined!2669 (maxPrefix!1332 thiss!17113 rules!1846 (originalCharacters!3953 (h!23227 tokens!457)))) (not (isEmpty!10863 (maxPrefix!1332 thiss!17113 rules!1846 (originalCharacters!3953 (h!23227 tokens!457))))))))

(declare-fun bs!394792 () Bool)

(assert (= bs!394792 d!489502))

(assert (=> bs!394792 m!1952859))

(declare-fun m!1954063 () Bool)

(assert (=> bs!394792 m!1954063))

(assert (=> b!1625103 d!489502))

(declare-fun d!489504 () Bool)

(declare-fun c!264592 () Bool)

(assert (=> d!489504 (= c!264592 (isEmpty!10853 (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861)))))

(declare-fun e!1042733 () Bool)

(assert (=> d!489504 (= (prefixMatch!402 lt!586845 (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861)) e!1042733)))

(declare-fun b!1625758 () Bool)

(assert (=> b!1625758 (= e!1042733 (not (lostCause!438 lt!586845)))))

(declare-fun b!1625759 () Bool)

(assert (=> b!1625759 (= e!1042733 (prefixMatch!402 (derivativeStep!1082 lt!586845 (head!3433 (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861))) (tail!2362 (++!4737 (originalCharacters!3953 (h!23227 tokens!457)) lt!586861))))))

(assert (= (and d!489504 c!264592) b!1625758))

(assert (= (and d!489504 (not c!264592)) b!1625759))

(assert (=> d!489504 m!1952865))

(declare-fun m!1954065 () Bool)

(assert (=> d!489504 m!1954065))

(assert (=> b!1625758 m!1953547))

(assert (=> b!1625759 m!1952865))

(declare-fun m!1954067 () Bool)

(assert (=> b!1625759 m!1954067))

(assert (=> b!1625759 m!1954067))

(declare-fun m!1954069 () Bool)

(assert (=> b!1625759 m!1954069))

(assert (=> b!1625759 m!1952865))

(declare-fun m!1954071 () Bool)

(assert (=> b!1625759 m!1954071))

(assert (=> b!1625759 m!1954069))

(assert (=> b!1625759 m!1954071))

(declare-fun m!1954073 () Bool)

(assert (=> b!1625759 m!1954073))

(assert (=> b!1625103 d!489504))

(declare-fun d!489506 () Bool)

(assert (=> d!489506 (= (get!5137 lt!586866) (v!24336 lt!586866))))

(assert (=> b!1625103 d!489506))

(declare-fun d!489508 () Bool)

(assert (=> d!489508 (= (isDefined!2669 lt!586866) (not (isEmpty!10863 lt!586866)))))

(declare-fun bs!394793 () Bool)

(assert (= bs!394793 d!489508))

(declare-fun m!1954075 () Bool)

(assert (=> bs!394793 m!1954075))

(assert (=> b!1625103 d!489508))

(declare-fun d!489510 () Bool)

(declare-fun lt!587466 () BalanceConc!11796)

(assert (=> d!489510 (= (list!6995 lt!587466) (printList!883 thiss!17113 (list!6996 lt!586843)))))

(assert (=> d!489510 (= lt!587466 (printTailRec!821 thiss!17113 lt!586843 0 (BalanceConc!11797 Empty!5926)))))

(assert (=> d!489510 (= (print!1299 thiss!17113 lt!586843) lt!587466)))

(declare-fun bs!394794 () Bool)

(assert (= bs!394794 d!489510))

(declare-fun m!1954077 () Bool)

(assert (=> bs!394794 m!1954077))

(declare-fun m!1954079 () Bool)

(assert (=> bs!394794 m!1954079))

(assert (=> bs!394794 m!1954079))

(declare-fun m!1954081 () Bool)

(assert (=> bs!394794 m!1954081))

(assert (=> bs!394794 m!1952771))

(assert (=> b!1625104 d!489510))

(declare-fun d!489512 () Bool)

(assert (=> d!489512 (= (list!6995 lt!586862) (list!6999 (c!264491 lt!586862)))))

(declare-fun bs!394795 () Bool)

(assert (= bs!394795 d!489512))

(declare-fun m!1954083 () Bool)

(assert (=> bs!394795 m!1954083))

(assert (=> b!1625104 d!489512))

(declare-fun d!489514 () Bool)

(declare-fun lt!587487 () BalanceConc!11796)

(declare-fun printListTailRec!355 (LexerInterface!2768 List!17896 List!17894) List!17894)

(declare-fun dropList!608 (BalanceConc!11798 Int) List!17896)

(assert (=> d!489514 (= (list!6995 lt!587487) (printListTailRec!355 thiss!17113 (dropList!608 lt!586843 0) (list!6995 (BalanceConc!11797 Empty!5926))))))

(declare-fun e!1042739 () BalanceConc!11796)

(assert (=> d!489514 (= lt!587487 e!1042739)))

(declare-fun c!264595 () Bool)

(assert (=> d!489514 (= c!264595 (>= 0 (size!14270 lt!586843)))))

(declare-fun e!1042738 () Bool)

(assert (=> d!489514 e!1042738))

(declare-fun res!726825 () Bool)

(assert (=> d!489514 (=> (not res!726825) (not e!1042738))))

(assert (=> d!489514 (= res!726825 (>= 0 0))))

(assert (=> d!489514 (= (printTailRec!821 thiss!17113 lt!586843 0 (BalanceConc!11797 Empty!5926)) lt!587487)))

(declare-fun b!1625766 () Bool)

(assert (=> b!1625766 (= e!1042738 (<= 0 (size!14270 lt!586843)))))

(declare-fun b!1625767 () Bool)

(assert (=> b!1625767 (= e!1042739 (BalanceConc!11797 Empty!5926))))

(declare-fun b!1625768 () Bool)

(assert (=> b!1625768 (= e!1042739 (printTailRec!821 thiss!17113 lt!586843 (+ 0 1) (++!4738 (BalanceConc!11797 Empty!5926) (charsOf!1788 (apply!4553 lt!586843 0)))))))

(declare-fun lt!587481 () List!17896)

(assert (=> b!1625768 (= lt!587481 (list!6996 lt!586843))))

(declare-fun lt!587483 () Unit!28867)

(declare-fun lemmaDropApply!562 (List!17896 Int) Unit!28867)

(assert (=> b!1625768 (= lt!587483 (lemmaDropApply!562 lt!587481 0))))

(declare-fun drop!872 (List!17896 Int) List!17896)

(declare-fun apply!4562 (List!17896 Int) Token!5844)

(assert (=> b!1625768 (= (head!3437 (drop!872 lt!587481 0)) (apply!4562 lt!587481 0))))

(declare-fun lt!587485 () Unit!28867)

(assert (=> b!1625768 (= lt!587485 lt!587483)))

(declare-fun lt!587482 () List!17896)

(assert (=> b!1625768 (= lt!587482 (list!6996 lt!586843))))

(declare-fun lt!587484 () Unit!28867)

(declare-fun lemmaDropTail!542 (List!17896 Int) Unit!28867)

(assert (=> b!1625768 (= lt!587484 (lemmaDropTail!542 lt!587482 0))))

(declare-fun tail!2364 (List!17896) List!17896)

(assert (=> b!1625768 (= (tail!2364 (drop!872 lt!587482 0)) (drop!872 lt!587482 (+ 0 1)))))

(declare-fun lt!587486 () Unit!28867)

(assert (=> b!1625768 (= lt!587486 lt!587484)))

(assert (= (and d!489514 res!726825) b!1625766))

(assert (= (and d!489514 c!264595) b!1625767))

(assert (= (and d!489514 (not c!264595)) b!1625768))

(declare-fun m!1954085 () Bool)

(assert (=> d!489514 m!1954085))

(declare-fun m!1954087 () Bool)

(assert (=> d!489514 m!1954087))

(declare-fun m!1954089 () Bool)

(assert (=> d!489514 m!1954089))

(declare-fun m!1954091 () Bool)

(assert (=> d!489514 m!1954091))

(declare-fun m!1954093 () Bool)

(assert (=> d!489514 m!1954093))

(assert (=> d!489514 m!1954087))

(assert (=> d!489514 m!1954089))

(assert (=> b!1625766 m!1954085))

(declare-fun m!1954095 () Bool)

(assert (=> b!1625768 m!1954095))

(declare-fun m!1954097 () Bool)

(assert (=> b!1625768 m!1954097))

(assert (=> b!1625768 m!1954079))

(declare-fun m!1954099 () Bool)

(assert (=> b!1625768 m!1954099))

(declare-fun m!1954101 () Bool)

(assert (=> b!1625768 m!1954101))

(declare-fun m!1954103 () Bool)

(assert (=> b!1625768 m!1954103))

(declare-fun m!1954105 () Bool)

(assert (=> b!1625768 m!1954105))

(assert (=> b!1625768 m!1954101))

(declare-fun m!1954107 () Bool)

(assert (=> b!1625768 m!1954107))

(declare-fun m!1954109 () Bool)

(assert (=> b!1625768 m!1954109))

(declare-fun m!1954111 () Bool)

(assert (=> b!1625768 m!1954111))

(assert (=> b!1625768 m!1954099))

(assert (=> b!1625768 m!1954105))

(assert (=> b!1625768 m!1954109))

(declare-fun m!1954113 () Bool)

(assert (=> b!1625768 m!1954113))

(assert (=> b!1625768 m!1954095))

(declare-fun m!1954115 () Bool)

(assert (=> b!1625768 m!1954115))

(declare-fun m!1954117 () Bool)

(assert (=> b!1625768 m!1954117))

(assert (=> b!1625104 d!489514))

(declare-fun d!489516 () Bool)

(declare-fun c!264598 () Bool)

(assert (=> d!489516 (= c!264598 ((_ is Cons!17826) (Cons!17826 (h!23227 tokens!457) Nil!17826)))))

(declare-fun e!1042742 () List!17894)

(assert (=> d!489516 (= (printList!883 thiss!17113 (Cons!17826 (h!23227 tokens!457) Nil!17826)) e!1042742)))

(declare-fun b!1625773 () Bool)

(assert (=> b!1625773 (= e!1042742 (++!4737 (list!6995 (charsOf!1788 (h!23227 (Cons!17826 (h!23227 tokens!457) Nil!17826)))) (printList!883 thiss!17113 (t!148987 (Cons!17826 (h!23227 tokens!457) Nil!17826)))))))

(declare-fun b!1625774 () Bool)

(assert (=> b!1625774 (= e!1042742 Nil!17824)))

(assert (= (and d!489516 c!264598) b!1625773))

(assert (= (and d!489516 (not c!264598)) b!1625774))

(declare-fun m!1954119 () Bool)

(assert (=> b!1625773 m!1954119))

(assert (=> b!1625773 m!1954119))

(declare-fun m!1954121 () Bool)

(assert (=> b!1625773 m!1954121))

(declare-fun m!1954123 () Bool)

(assert (=> b!1625773 m!1954123))

(assert (=> b!1625773 m!1954121))

(assert (=> b!1625773 m!1954123))

(declare-fun m!1954125 () Bool)

(assert (=> b!1625773 m!1954125))

(assert (=> b!1625104 d!489516))

(declare-fun b!1625775 () Bool)

(declare-fun e!1042745 () Option!3302)

(declare-fun call!105254 () Option!3302)

(assert (=> b!1625775 (= e!1042745 call!105254)))

(declare-fun bm!105249 () Bool)

(assert (=> bm!105249 (= call!105254 (maxPrefixOneRule!775 thiss!17113 (h!23226 rules!1846) lt!586850))))

(declare-fun b!1625776 () Bool)

(declare-fun e!1042744 () Bool)

(declare-fun e!1042743 () Bool)

(assert (=> b!1625776 (= e!1042744 e!1042743)))

(declare-fun res!726828 () Bool)

(assert (=> b!1625776 (=> (not res!726828) (not e!1042743))))

(declare-fun lt!587491 () Option!3302)

(assert (=> b!1625776 (= res!726828 (isDefined!2669 lt!587491))))

(declare-fun d!489518 () Bool)

(assert (=> d!489518 e!1042744))

(declare-fun res!726829 () Bool)

(assert (=> d!489518 (=> res!726829 e!1042744)))

(assert (=> d!489518 (= res!726829 (isEmpty!10863 lt!587491))))

(assert (=> d!489518 (= lt!587491 e!1042745)))

(declare-fun c!264599 () Bool)

(assert (=> d!489518 (= c!264599 (and ((_ is Cons!17825) rules!1846) ((_ is Nil!17825) (t!148986 rules!1846))))))

(declare-fun lt!587492 () Unit!28867)

(declare-fun lt!587488 () Unit!28867)

(assert (=> d!489518 (= lt!587492 lt!587488)))

(assert (=> d!489518 (isPrefix!1399 lt!586850 lt!586850)))

(assert (=> d!489518 (= lt!587488 (lemmaIsPrefixRefl!960 lt!586850 lt!586850))))

(assert (=> d!489518 (rulesValidInductive!972 thiss!17113 rules!1846)))

(assert (=> d!489518 (= (maxPrefix!1332 thiss!17113 rules!1846 lt!586850) lt!587491)))

(declare-fun b!1625777 () Bool)

(declare-fun res!726830 () Bool)

(assert (=> b!1625777 (=> (not res!726830) (not e!1042743))))

(assert (=> b!1625777 (= res!726830 (= (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587491)))) (originalCharacters!3953 (_1!10099 (get!5137 lt!587491)))))))

(declare-fun b!1625778 () Bool)

(declare-fun res!726827 () Bool)

(assert (=> b!1625778 (=> (not res!726827) (not e!1042743))))

(assert (=> b!1625778 (= res!726827 (= (++!4737 (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587491)))) (_2!10099 (get!5137 lt!587491))) lt!586850))))

(declare-fun b!1625779 () Bool)

(declare-fun res!726832 () Bool)

(assert (=> b!1625779 (=> (not res!726832) (not e!1042743))))

(assert (=> b!1625779 (= res!726832 (< (size!14272 (_2!10099 (get!5137 lt!587491))) (size!14272 lt!586850)))))

(declare-fun b!1625780 () Bool)

(declare-fun res!726831 () Bool)

(assert (=> b!1625780 (=> (not res!726831) (not e!1042743))))

(assert (=> b!1625780 (= res!726831 (matchR!1966 (regex!3139 (rule!4965 (_1!10099 (get!5137 lt!587491)))) (list!6995 (charsOf!1788 (_1!10099 (get!5137 lt!587491))))))))

(declare-fun b!1625781 () Bool)

(declare-fun lt!587490 () Option!3302)

(declare-fun lt!587489 () Option!3302)

(assert (=> b!1625781 (= e!1042745 (ite (and ((_ is None!3301) lt!587490) ((_ is None!3301) lt!587489)) None!3301 (ite ((_ is None!3301) lt!587489) lt!587490 (ite ((_ is None!3301) lt!587490) lt!587489 (ite (>= (size!14266 (_1!10099 (v!24336 lt!587490))) (size!14266 (_1!10099 (v!24336 lt!587489)))) lt!587490 lt!587489)))))))

(assert (=> b!1625781 (= lt!587490 call!105254)))

(assert (=> b!1625781 (= lt!587489 (maxPrefix!1332 thiss!17113 (t!148986 rules!1846) lt!586850))))

(declare-fun b!1625782 () Bool)

(declare-fun res!726826 () Bool)

(assert (=> b!1625782 (=> (not res!726826) (not e!1042743))))

(assert (=> b!1625782 (= res!726826 (= (value!99134 (_1!10099 (get!5137 lt!587491))) (apply!4560 (transformation!3139 (rule!4965 (_1!10099 (get!5137 lt!587491)))) (seqFromList!2028 (originalCharacters!3953 (_1!10099 (get!5137 lt!587491)))))))))

(declare-fun b!1625783 () Bool)

(assert (=> b!1625783 (= e!1042743 (contains!3114 rules!1846 (rule!4965 (_1!10099 (get!5137 lt!587491)))))))

(assert (= (and d!489518 c!264599) b!1625775))

(assert (= (and d!489518 (not c!264599)) b!1625781))

(assert (= (or b!1625775 b!1625781) bm!105249))

(assert (= (and d!489518 (not res!726829)) b!1625776))

(assert (= (and b!1625776 res!726828) b!1625777))

(assert (= (and b!1625777 res!726830) b!1625779))

(assert (= (and b!1625779 res!726832) b!1625778))

(assert (= (and b!1625778 res!726827) b!1625782))

(assert (= (and b!1625782 res!726826) b!1625780))

(assert (= (and b!1625780 res!726831) b!1625783))

(declare-fun m!1954127 () Bool)

(assert (=> b!1625782 m!1954127))

(declare-fun m!1954129 () Bool)

(assert (=> b!1625782 m!1954129))

(assert (=> b!1625782 m!1954129))

(declare-fun m!1954131 () Bool)

(assert (=> b!1625782 m!1954131))

(assert (=> b!1625777 m!1954127))

(declare-fun m!1954133 () Bool)

(assert (=> b!1625777 m!1954133))

(assert (=> b!1625777 m!1954133))

(declare-fun m!1954135 () Bool)

(assert (=> b!1625777 m!1954135))

(declare-fun m!1954137 () Bool)

(assert (=> d!489518 m!1954137))

(declare-fun m!1954139 () Bool)

(assert (=> d!489518 m!1954139))

(declare-fun m!1954141 () Bool)

(assert (=> d!489518 m!1954141))

(assert (=> d!489518 m!1952971))

(assert (=> b!1625780 m!1954127))

(assert (=> b!1625780 m!1954133))

(assert (=> b!1625780 m!1954133))

(assert (=> b!1625780 m!1954135))

(assert (=> b!1625780 m!1954135))

(declare-fun m!1954143 () Bool)

(assert (=> b!1625780 m!1954143))

(assert (=> b!1625778 m!1954127))

(assert (=> b!1625778 m!1954133))

(assert (=> b!1625778 m!1954133))

(assert (=> b!1625778 m!1954135))

(assert (=> b!1625778 m!1954135))

(declare-fun m!1954145 () Bool)

(assert (=> b!1625778 m!1954145))

(assert (=> b!1625783 m!1954127))

(declare-fun m!1954147 () Bool)

(assert (=> b!1625783 m!1954147))

(assert (=> b!1625779 m!1954127))

(declare-fun m!1954149 () Bool)

(assert (=> b!1625779 m!1954149))

(declare-fun m!1954151 () Bool)

(assert (=> b!1625779 m!1954151))

(declare-fun m!1954153 () Bool)

(assert (=> bm!105249 m!1954153))

(declare-fun m!1954155 () Bool)

(assert (=> b!1625776 m!1954155))

(declare-fun m!1954157 () Bool)

(assert (=> b!1625781 m!1954157))

(assert (=> b!1625104 d!489518))

(declare-fun d!489520 () Bool)

(declare-fun e!1042748 () Bool)

(assert (=> d!489520 e!1042748))

(declare-fun res!726835 () Bool)

(assert (=> d!489520 (=> (not res!726835) (not e!1042748))))

(declare-fun lt!587495 () BalanceConc!11798)

(assert (=> d!489520 (= res!726835 (= (list!6996 lt!587495) (Cons!17826 (h!23227 tokens!457) Nil!17826)))))

(declare-fun singleton!670 (Token!5844) BalanceConc!11798)

(assert (=> d!489520 (= lt!587495 (singleton!670 (h!23227 tokens!457)))))

(assert (=> d!489520 (= (singletonSeq!1557 (h!23227 tokens!457)) lt!587495)))

(declare-fun b!1625786 () Bool)

(assert (=> b!1625786 (= e!1042748 (isBalanced!1790 (c!264493 lt!587495)))))

(assert (= (and d!489520 res!726835) b!1625786))

(declare-fun m!1954159 () Bool)

(assert (=> d!489520 m!1954159))

(declare-fun m!1954161 () Bool)

(assert (=> d!489520 m!1954161))

(declare-fun m!1954163 () Bool)

(assert (=> b!1625786 m!1954163))

(assert (=> b!1625104 d!489520))

(declare-fun d!489522 () Bool)

(declare-fun c!264600 () Bool)

(assert (=> d!489522 (= c!264600 (isEmpty!10853 (++!4737 lt!586842 lt!586861)))))

(declare-fun e!1042749 () Bool)

(assert (=> d!489522 (= (prefixMatch!402 lt!586845 (++!4737 lt!586842 lt!586861)) e!1042749)))

(declare-fun b!1625787 () Bool)

(assert (=> b!1625787 (= e!1042749 (not (lostCause!438 lt!586845)))))

(declare-fun b!1625788 () Bool)

(assert (=> b!1625788 (= e!1042749 (prefixMatch!402 (derivativeStep!1082 lt!586845 (head!3433 (++!4737 lt!586842 lt!586861))) (tail!2362 (++!4737 lt!586842 lt!586861))))))

(assert (= (and d!489522 c!264600) b!1625787))

(assert (= (and d!489522 (not c!264600)) b!1625788))

(assert (=> d!489522 m!1952837))

(declare-fun m!1954165 () Bool)

(assert (=> d!489522 m!1954165))

(assert (=> b!1625787 m!1953547))

(assert (=> b!1625788 m!1952837))

(declare-fun m!1954167 () Bool)

(assert (=> b!1625788 m!1954167))

(assert (=> b!1625788 m!1954167))

(declare-fun m!1954169 () Bool)

(assert (=> b!1625788 m!1954169))

(assert (=> b!1625788 m!1952837))

(declare-fun m!1954171 () Bool)

(assert (=> b!1625788 m!1954171))

(assert (=> b!1625788 m!1954169))

(assert (=> b!1625788 m!1954171))

(declare-fun m!1954173 () Bool)

(assert (=> b!1625788 m!1954173))

(assert (=> b!1625102 d!489522))

(declare-fun b!1625791 () Bool)

(declare-fun res!726836 () Bool)

(declare-fun e!1042751 () Bool)

(assert (=> b!1625791 (=> (not res!726836) (not e!1042751))))

(declare-fun lt!587496 () List!17894)

(assert (=> b!1625791 (= res!726836 (= (size!14272 lt!587496) (+ (size!14272 lt!586842) (size!14272 lt!586861))))))

(declare-fun b!1625789 () Bool)

(declare-fun e!1042750 () List!17894)

(assert (=> b!1625789 (= e!1042750 lt!586861)))

(declare-fun b!1625790 () Bool)

(assert (=> b!1625790 (= e!1042750 (Cons!17824 (h!23225 lt!586842) (++!4737 (t!148985 lt!586842) lt!586861)))))

(declare-fun d!489524 () Bool)

(assert (=> d!489524 e!1042751))

(declare-fun res!726837 () Bool)

(assert (=> d!489524 (=> (not res!726837) (not e!1042751))))

(assert (=> d!489524 (= res!726837 (= (content!2472 lt!587496) ((_ map or) (content!2472 lt!586842) (content!2472 lt!586861))))))

(assert (=> d!489524 (= lt!587496 e!1042750)))

(declare-fun c!264601 () Bool)

(assert (=> d!489524 (= c!264601 ((_ is Nil!17824) lt!586842))))

(assert (=> d!489524 (= (++!4737 lt!586842 lt!586861) lt!587496)))

(declare-fun b!1625792 () Bool)

(assert (=> b!1625792 (= e!1042751 (or (not (= lt!586861 Nil!17824)) (= lt!587496 lt!586842)))))

(assert (= (and d!489524 c!264601) b!1625789))

(assert (= (and d!489524 (not c!264601)) b!1625790))

(assert (= (and d!489524 res!726837) b!1625791))

(assert (= (and b!1625791 res!726836) b!1625792))

(declare-fun m!1954175 () Bool)

(assert (=> b!1625791 m!1954175))

(assert (=> b!1625791 m!1953559))

(assert (=> b!1625791 m!1954053))

(declare-fun m!1954177 () Bool)

(assert (=> b!1625790 m!1954177))

(declare-fun m!1954179 () Bool)

(assert (=> d!489524 m!1954179))

(assert (=> d!489524 m!1953567))

(assert (=> d!489524 m!1954061))

(assert (=> b!1625102 d!489524))

(declare-fun d!489526 () Bool)

(assert (=> d!489526 (= (head!3433 lt!586865) (h!23225 lt!586865))))

(assert (=> b!1625106 d!489526))

(declare-fun b!1625803 () Bool)

(declare-fun b_free!43863 () Bool)

(declare-fun b_next!44567 () Bool)

(assert (=> b!1625803 (= b_free!43863 (not b_next!44567))))

(declare-fun tp!472721 () Bool)

(declare-fun b_and!115285 () Bool)

(assert (=> b!1625803 (= tp!472721 b_and!115285)))

(declare-fun b_free!43865 () Bool)

(declare-fun b_next!44569 () Bool)

(assert (=> b!1625803 (= b_free!43865 (not b_next!44569))))

(declare-fun tb!93327 () Bool)

(declare-fun t!149023 () Bool)

(assert (=> (and b!1625803 (= (toChars!4425 (transformation!3139 (h!23226 (t!148986 rules!1846)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457)))))) t!149023) tb!93327))

(declare-fun result!112560 () Bool)

(assert (= result!112560 result!112532))

(assert (=> d!489398 t!149023))

(declare-fun tb!93329 () Bool)

(declare-fun t!149025 () Bool)

(assert (=> (and b!1625803 (= (toChars!4425 (transformation!3139 (h!23226 (t!148986 rules!1846)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457))))) t!149025) tb!93329))

(declare-fun result!112562 () Bool)

(assert (= result!112562 result!112538))

(assert (=> d!489426 t!149025))

(assert (=> b!1625573 t!149025))

(declare-fun tp!472723 () Bool)

(declare-fun b_and!115287 () Bool)

(assert (=> b!1625803 (= tp!472723 (and (=> t!149023 result!112560) (=> t!149025 result!112562) b_and!115287))))

(declare-fun e!1042763 () Bool)

(assert (=> b!1625803 (= e!1042763 (and tp!472721 tp!472723))))

(declare-fun tp!472724 () Bool)

(declare-fun b!1625802 () Bool)

(declare-fun e!1042761 () Bool)

(assert (=> b!1625802 (= e!1042761 (and tp!472724 (inv!23200 (tag!3417 (h!23226 (t!148986 rules!1846)))) (inv!23203 (transformation!3139 (h!23226 (t!148986 rules!1846)))) e!1042763))))

(declare-fun b!1625801 () Bool)

(declare-fun e!1042760 () Bool)

(declare-fun tp!472722 () Bool)

(assert (=> b!1625801 (= e!1042760 (and e!1042761 tp!472722))))

(assert (=> b!1625114 (= tp!472654 e!1042760)))

(assert (= b!1625802 b!1625803))

(assert (= b!1625801 b!1625802))

(assert (= (and b!1625114 ((_ is Cons!17825) (t!148986 rules!1846))) b!1625801))

(declare-fun m!1954181 () Bool)

(assert (=> b!1625802 m!1954181))

(declare-fun m!1954183 () Bool)

(assert (=> b!1625802 m!1954183))

(declare-fun e!1042766 () Bool)

(assert (=> b!1625093 (= tp!472648 e!1042766)))

(declare-fun b!1625817 () Bool)

(declare-fun tp!472735 () Bool)

(declare-fun tp!472737 () Bool)

(assert (=> b!1625817 (= e!1042766 (and tp!472735 tp!472737))))

(declare-fun b!1625815 () Bool)

(declare-fun tp!472738 () Bool)

(declare-fun tp!472736 () Bool)

(assert (=> b!1625815 (= e!1042766 (and tp!472738 tp!472736))))

(declare-fun b!1625816 () Bool)

(declare-fun tp!472739 () Bool)

(assert (=> b!1625816 (= e!1042766 tp!472739)))

(declare-fun b!1625814 () Bool)

(declare-fun tp_is_empty!7281 () Bool)

(assert (=> b!1625814 (= e!1042766 tp_is_empty!7281)))

(assert (= (and b!1625093 ((_ is ElementMatch!4467) (regex!3139 (h!23226 rules!1846)))) b!1625814))

(assert (= (and b!1625093 ((_ is Concat!7697) (regex!3139 (h!23226 rules!1846)))) b!1625815))

(assert (= (and b!1625093 ((_ is Star!4467) (regex!3139 (h!23226 rules!1846)))) b!1625816))

(assert (= (and b!1625093 ((_ is Union!4467) (regex!3139 (h!23226 rules!1846)))) b!1625817))

(declare-fun e!1042767 () Bool)

(assert (=> b!1625118 (= tp!472646 e!1042767)))

(declare-fun b!1625821 () Bool)

(declare-fun tp!472740 () Bool)

(declare-fun tp!472742 () Bool)

(assert (=> b!1625821 (= e!1042767 (and tp!472740 tp!472742))))

(declare-fun b!1625819 () Bool)

(declare-fun tp!472743 () Bool)

(declare-fun tp!472741 () Bool)

(assert (=> b!1625819 (= e!1042767 (and tp!472743 tp!472741))))

(declare-fun b!1625820 () Bool)

(declare-fun tp!472744 () Bool)

(assert (=> b!1625820 (= e!1042767 tp!472744)))

(declare-fun b!1625818 () Bool)

(assert (=> b!1625818 (= e!1042767 tp_is_empty!7281)))

(assert (= (and b!1625118 ((_ is ElementMatch!4467) (regex!3139 (rule!4965 (h!23227 tokens!457))))) b!1625818))

(assert (= (and b!1625118 ((_ is Concat!7697) (regex!3139 (rule!4965 (h!23227 tokens!457))))) b!1625819))

(assert (= (and b!1625118 ((_ is Star!4467) (regex!3139 (rule!4965 (h!23227 tokens!457))))) b!1625820))

(assert (= (and b!1625118 ((_ is Union!4467) (regex!3139 (rule!4965 (h!23227 tokens!457))))) b!1625821))

(declare-fun b!1625826 () Bool)

(declare-fun e!1042770 () Bool)

(declare-fun tp!472747 () Bool)

(assert (=> b!1625826 (= e!1042770 (and tp_is_empty!7281 tp!472747))))

(assert (=> b!1625110 (= tp!472649 e!1042770)))

(assert (= (and b!1625110 ((_ is Cons!17824) (originalCharacters!3953 (h!23227 tokens!457)))) b!1625826))

(declare-fun b!1625840 () Bool)

(declare-fun b_free!43867 () Bool)

(declare-fun b_next!44571 () Bool)

(assert (=> b!1625840 (= b_free!43867 (not b_next!44571))))

(declare-fun tp!472760 () Bool)

(declare-fun b_and!115289 () Bool)

(assert (=> b!1625840 (= tp!472760 b_and!115289)))

(declare-fun b_free!43869 () Bool)

(declare-fun b_next!44573 () Bool)

(assert (=> b!1625840 (= b_free!43869 (not b_next!44573))))

(declare-fun t!149027 () Bool)

(declare-fun tb!93331 () Bool)

(assert (=> (and b!1625840 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457)))))) t!149027) tb!93331))

(declare-fun result!112570 () Bool)

(assert (= result!112570 result!112532))

(assert (=> d!489398 t!149027))

(declare-fun t!149029 () Bool)

(declare-fun tb!93333 () Bool)

(assert (=> (and b!1625840 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457))))) t!149029) tb!93333))

(declare-fun result!112572 () Bool)

(assert (= result!112572 result!112538))

(assert (=> d!489426 t!149029))

(assert (=> b!1625573 t!149029))

(declare-fun b_and!115291 () Bool)

(declare-fun tp!472758 () Bool)

(assert (=> b!1625840 (= tp!472758 (and (=> t!149027 result!112570) (=> t!149029 result!112572) b_and!115291))))

(declare-fun e!1042788 () Bool)

(assert (=> b!1625116 (= tp!472651 e!1042788)))

(declare-fun e!1042786 () Bool)

(declare-fun b!1625839 () Bool)

(declare-fun e!1042783 () Bool)

(declare-fun tp!472762 () Bool)

(assert (=> b!1625839 (= e!1042786 (and tp!472762 (inv!23200 (tag!3417 (rule!4965 (h!23227 (t!148987 tokens!457))))) (inv!23203 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) e!1042783))))

(assert (=> b!1625840 (= e!1042783 (and tp!472760 tp!472758))))

(declare-fun b!1625837 () Bool)

(declare-fun e!1042784 () Bool)

(declare-fun tp!472761 () Bool)

(assert (=> b!1625837 (= e!1042788 (and (inv!23204 (h!23227 (t!148987 tokens!457))) e!1042784 tp!472761))))

(declare-fun b!1625838 () Bool)

(declare-fun tp!472759 () Bool)

(assert (=> b!1625838 (= e!1042784 (and (inv!21 (value!99134 (h!23227 (t!148987 tokens!457)))) e!1042786 tp!472759))))

(assert (= b!1625839 b!1625840))

(assert (= b!1625838 b!1625839))

(assert (= b!1625837 b!1625838))

(assert (= (and b!1625116 ((_ is Cons!17826) (t!148987 tokens!457))) b!1625837))

(declare-fun m!1954185 () Bool)

(assert (=> b!1625839 m!1954185))

(declare-fun m!1954187 () Bool)

(assert (=> b!1625839 m!1954187))

(declare-fun m!1954189 () Bool)

(assert (=> b!1625837 m!1954189))

(declare-fun m!1954191 () Bool)

(assert (=> b!1625838 m!1954191))

(declare-fun b_lambda!51219 () Bool)

(assert (= b_lambda!51209 (or (and b!1625105 b_free!43849 (= (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) (and b!1625097 b_free!43853) (and b!1625803 b_free!43865 (= (toChars!4425 (transformation!3139 (h!23226 (t!148986 rules!1846)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) (and b!1625840 b_free!43869 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) b_lambda!51219)))

(declare-fun b_lambda!51221 () Bool)

(assert (= b_lambda!51211 (or (and b!1625105 b_free!43849 (= (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) (and b!1625097 b_free!43853) (and b!1625803 b_free!43865 (= (toChars!4425 (transformation!3139 (h!23226 (t!148986 rules!1846)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) (and b!1625840 b_free!43869 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))))) b_lambda!51221)))

(declare-fun b_lambda!51223 () Bool)

(assert (= b_lambda!51207 (or (and b!1625105 b_free!43849 (= (toChars!4425 (transformation!3139 (h!23226 rules!1846))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))))) (and b!1625097 b_free!43853 (= (toChars!4425 (transformation!3139 (rule!4965 (h!23227 tokens!457)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))))) (and b!1625803 b_free!43865 (= (toChars!4425 (transformation!3139 (h!23226 (t!148986 rules!1846)))) (toChars!4425 (transformation!3139 (rule!4965 (h!23227 (t!148987 tokens!457))))))) (and b!1625840 b_free!43869) b_lambda!51223)))

(check-sat (not d!489502) (not b!1625781) b_and!115289 (not d!489486) (not b!1625188) (not b!1625538) (not b!1625278) (not d!489410) (not bm!105248) b_and!115245 (not d!489450) (not d!489264) (not b!1625742) (not b!1625503) (not d!489434) (not d!489500) (not b!1625716) (not d!489496) (not b!1625681) (not b!1625509) (not b!1625524) (not d!489262) (not b!1625426) (not b!1625787) (not b!1625782) (not b_next!44551) (not b!1625777) (not bm!105249) (not b!1625746) (not b!1625567) (not b!1625700) (not d!489400) (not d!489512) (not d!489464) (not b!1625786) (not b!1625737) (not b!1625457) (not b!1625184) (not b!1625523) (not b!1625183) (not b!1625568) (not b!1625715) (not b!1625417) (not b!1625739) (not b!1625790) (not b!1625780) (not b!1625577) (not b!1625437) (not b!1625744) (not b!1625816) (not b!1625284) (not d!489432) (not d!489330) (not b!1625520) (not b!1625209) (not b!1625749) (not d!489396) (not b!1625573) (not b!1625699) (not bm!105243) (not b_next!44567) (not b!1625279) (not b!1625452) (not d!489456) (not d!489392) (not b!1625493) (not d!489462) (not b!1625773) (not d!489416) (not b!1625766) (not b!1625738) (not b_next!44557) (not b!1625791) (not b!1625826) (not tb!93315) (not b_next!44569) (not b!1625519) (not b!1625280) (not b!1625496) (not b!1625819) (not d!489490) (not b!1625440) (not d!489454) (not b!1625181) (not b!1625540) (not d!489430) (not d!489418) (not b!1625821) (not d!489286) (not b!1625547) (not b!1625416) (not b!1625748) (not d!489492) (not d!489424) (not b!1625788) (not b!1625494) b_and!115291 (not d!489388) (not b!1625752) (not b!1625741) (not d!489510) (not b!1625713) (not d!489398) (not b!1625838) tp_is_empty!7281 (not d!489458) (not d!489436) (not b!1625492) (not d!489520) (not d!489282) (not b!1625497) (not b!1625185) (not d!489406) (not d!489488) (not d!489284) (not b!1625802) (not b!1625680) (not b!1625541) (not b!1625758) (not b_next!44553) (not d!489514) (not b!1625837) b_and!115275 (not b!1625701) (not b!1625768) (not b_lambda!51221) (not b_next!44555) (not b!1625508) (not d!489412) (not b!1625753) (not b!1625839) (not b!1625801) (not b!1625779) (not b!1625695) (not b!1625702) (not b_lambda!51223) (not d!489394) (not b!1625751) (not d!489504) (not d!489294) (not d!489524) (not b!1625820) (not d!489390) (not d!489508) (not d!489446) (not b!1625186) (not b!1625815) (not d!489426) (not d!489452) (not d!489292) (not b!1625759) b_and!115273 b_and!115285 (not b!1625696) (not b!1625750) (not b!1625502) (not bm!105247) b_and!115249 (not d!489522) (not b_next!44573) (not d!489460) (not b!1625187) (not b!1625487) (not b!1625776) (not b!1625747) (not b!1625574) (not b_next!44571) (not d!489420) (not b_lambda!51219) (not b!1625697) (not bm!105230) (not b!1625778) (not d!489498) (not d!489414) (not b!1625817) (not b!1625526) (not b!1625450) (not b!1625743) (not d!489428) (not b!1625451) (not b!1625755) (not d!489518) (not tb!93311) (not b!1625783) (not b!1625539) (not d!489422) (not d!489402) (not b!1625449) b_and!115287 (not b!1625207) (not d!489336) (not b!1625756) (not b!1625740) (not b!1625208))
(check-sat b_and!115289 b_and!115245 (not b_next!44551) (not b_next!44567) (not b_next!44557) (not b_next!44569) b_and!115291 (not b_next!44555) (not b_next!44571) b_and!115287 (not b_next!44553) b_and!115275 b_and!115273 b_and!115285 b_and!115249 (not b_next!44573))

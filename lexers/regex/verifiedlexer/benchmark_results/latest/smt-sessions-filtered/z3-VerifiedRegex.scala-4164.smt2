; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224632 () Bool)

(assert start!224632)

(declare-fun b!2289239 () Bool)

(declare-fun b_free!68717 () Bool)

(declare-fun b_next!69421 () Bool)

(assert (=> b!2289239 (= b_free!68717 (not b_next!69421))))

(declare-fun tp!725784 () Bool)

(declare-fun b_and!181553 () Bool)

(assert (=> b!2289239 (= tp!725784 b_and!181553)))

(declare-fun b_free!68719 () Bool)

(declare-fun b_next!69423 () Bool)

(assert (=> b!2289239 (= b_free!68719 (not b_next!69423))))

(declare-fun tp!725792 () Bool)

(declare-fun b_and!181555 () Bool)

(assert (=> b!2289239 (= tp!725792 b_and!181555)))

(declare-fun b!2289243 () Bool)

(declare-fun b_free!68721 () Bool)

(declare-fun b_next!69425 () Bool)

(assert (=> b!2289243 (= b_free!68721 (not b_next!69425))))

(declare-fun tp!725789 () Bool)

(declare-fun b_and!181557 () Bool)

(assert (=> b!2289243 (= tp!725789 b_and!181557)))

(declare-fun b_free!68723 () Bool)

(declare-fun b_next!69427 () Bool)

(assert (=> b!2289243 (= b_free!68723 (not b_next!69427))))

(declare-fun tp!725799 () Bool)

(declare-fun b_and!181559 () Bool)

(assert (=> b!2289243 (= tp!725799 b_and!181559)))

(declare-fun b!2289232 () Bool)

(declare-fun b_free!68725 () Bool)

(declare-fun b_next!69429 () Bool)

(assert (=> b!2289232 (= b_free!68725 (not b_next!69429))))

(declare-fun tp!725783 () Bool)

(declare-fun b_and!181561 () Bool)

(assert (=> b!2289232 (= tp!725783 b_and!181561)))

(declare-fun b_free!68727 () Bool)

(declare-fun b_next!69431 () Bool)

(assert (=> b!2289232 (= b_free!68727 (not b_next!69431))))

(declare-fun tp!725797 () Bool)

(declare-fun b_and!181563 () Bool)

(assert (=> b!2289232 (= tp!725797 b_and!181563)))

(declare-fun b!2289225 () Bool)

(declare-fun b_free!68729 () Bool)

(declare-fun b_next!69433 () Bool)

(assert (=> b!2289225 (= b_free!68729 (not b_next!69433))))

(declare-fun tp!725794 () Bool)

(declare-fun b_and!181565 () Bool)

(assert (=> b!2289225 (= tp!725794 b_and!181565)))

(declare-fun b_free!68731 () Bool)

(declare-fun b_next!69435 () Bool)

(assert (=> b!2289225 (= b_free!68731 (not b_next!69435))))

(declare-fun tp!725786 () Bool)

(declare-fun b_and!181567 () Bool)

(assert (=> b!2289225 (= tp!725786 b_and!181567)))

(declare-fun b!2289213 () Bool)

(declare-fun e!1466766 () Bool)

(declare-fun tp_is_empty!10635 () Bool)

(declare-fun tp!725782 () Bool)

(assert (=> b!2289213 (= e!1466766 (and tp_is_empty!10635 tp!725782))))

(declare-fun b!2289214 () Bool)

(declare-fun e!1466776 () Bool)

(assert (=> b!2289214 (= e!1466776 true)))

(declare-fun lt!849340 () Bool)

(declare-datatypes ((C!13560 0))(
  ( (C!13561 (val!7828 Int)) )
))
(declare-datatypes ((List!27343 0))(
  ( (Nil!27249) (Cons!27249 (h!32650 C!13560) (t!204467 List!27343)) )
))
(declare-fun lt!849341 () List!27343)

(declare-fun input!1722 () List!27343)

(declare-fun isPrefix!2349 (List!27343 List!27343) Bool)

(assert (=> b!2289214 (= lt!849340 (isPrefix!2349 lt!849341 input!1722))))

(declare-datatypes ((LexerInterface!3956 0))(
  ( (LexerInterfaceExt!3953 (__x!18102 Int)) (Lexer!3954) )
))
(declare-fun thiss!16613 () LexerInterface!3956)

(declare-datatypes ((List!27344 0))(
  ( (Nil!27250) (Cons!27250 (h!32651 (_ BitVec 16)) (t!204468 List!27344)) )
))
(declare-datatypes ((TokenValue!4521 0))(
  ( (FloatLiteralValue!9042 (text!32092 List!27344)) (TokenValueExt!4520 (__x!18103 Int)) (Broken!22605 (value!138025 List!27344)) (Object!4614) (End!4521) (Def!4521) (Underscore!4521) (Match!4521) (Else!4521) (Error!4521) (Case!4521) (If!4521) (Extends!4521) (Abstract!4521) (Class!4521) (Val!4521) (DelimiterValue!9042 (del!4581 List!27344)) (KeywordValue!4527 (value!138026 List!27344)) (CommentValue!9042 (value!138027 List!27344)) (WhitespaceValue!9042 (value!138028 List!27344)) (IndentationValue!4521 (value!138029 List!27344)) (String!29708) (Int32!4521) (Broken!22606 (value!138030 List!27344)) (Boolean!4522) (Unit!40139) (OperatorValue!4524 (op!4581 List!27344)) (IdentifierValue!9042 (value!138031 List!27344)) (IdentifierValue!9043 (value!138032 List!27344)) (WhitespaceValue!9043 (value!138033 List!27344)) (True!9042) (False!9042) (Broken!22607 (value!138034 List!27344)) (Broken!22608 (value!138035 List!27344)) (True!9043) (RightBrace!4521) (RightBracket!4521) (Colon!4521) (Null!4521) (Comma!4521) (LeftBracket!4521) (False!9043) (LeftBrace!4521) (ImaginaryLiteralValue!4521 (text!32093 List!27344)) (StringLiteralValue!13563 (value!138036 List!27344)) (EOFValue!4521 (value!138037 List!27344)) (IdentValue!4521 (value!138038 List!27344)) (DelimiterValue!9043 (value!138039 List!27344)) (DedentValue!4521 (value!138040 List!27344)) (NewLineValue!4521 (value!138041 List!27344)) (IntegerValue!13563 (value!138042 (_ BitVec 32)) (text!32094 List!27344)) (IntegerValue!13564 (value!138043 Int) (text!32095 List!27344)) (Times!4521) (Or!4521) (Equal!4521) (Minus!4521) (Broken!22609 (value!138044 List!27344)) (And!4521) (Div!4521) (LessEqual!4521) (Mod!4521) (Concat!11228) (Not!4521) (Plus!4521) (SpaceValue!4521 (value!138045 List!27344)) (IntegerValue!13565 (value!138046 Int) (text!32096 List!27344)) (StringLiteralValue!13564 (text!32097 List!27344)) (FloatLiteralValue!9043 (text!32098 List!27344)) (BytesLiteralValue!4521 (value!138047 List!27344)) (CommentValue!9043 (value!138048 List!27344)) (StringLiteralValue!13565 (value!138049 List!27344)) (ErrorTokenValue!4521 (msg!4582 List!27344)) )
))
(declare-datatypes ((IArray!17737 0))(
  ( (IArray!17738 (innerList!8926 List!27343)) )
))
(declare-datatypes ((Conc!8866 0))(
  ( (Node!8866 (left!20658 Conc!8866) (right!20988 Conc!8866) (csize!17962 Int) (cheight!9077 Int)) (Leaf!13031 (xs!11808 IArray!17737) (csize!17963 Int)) (Empty!8866) )
))
(declare-datatypes ((BalanceConc!17460 0))(
  ( (BalanceConc!17461 (c!363048 Conc!8866)) )
))
(declare-datatypes ((String!29709 0))(
  ( (String!29710 (value!138050 String)) )
))
(declare-datatypes ((Regex!6707 0))(
  ( (ElementMatch!6707 (c!363049 C!13560)) (Concat!11229 (regOne!13926 Regex!6707) (regTwo!13926 Regex!6707)) (EmptyExpr!6707) (Star!6707 (reg!7036 Regex!6707)) (EmptyLang!6707) (Union!6707 (regOne!13927 Regex!6707) (regTwo!13927 Regex!6707)) )
))
(declare-datatypes ((TokenValueInjection!8582 0))(
  ( (TokenValueInjection!8583 (toValue!6149 Int) (toChars!6008 Int)) )
))
(declare-datatypes ((Rule!8518 0))(
  ( (Rule!8519 (regex!4359 Regex!6707) (tag!4849 String!29709) (isSeparator!4359 Bool) (transformation!4359 TokenValueInjection!8582)) )
))
(declare-fun r!2363 () Rule!8518)

(declare-datatypes ((Token!8196 0))(
  ( (Token!8197 (value!138051 TokenValue!4521) (rule!6691 Rule!8518) (size!21448 Int) (originalCharacters!5129 List!27343)) )
))
(declare-datatypes ((tuple2!27046 0))(
  ( (tuple2!27047 (_1!16033 Token!8196) (_2!16033 List!27343)) )
))
(declare-fun lt!849345 () tuple2!27046)

(declare-fun lt!849346 () Int)

(declare-datatypes ((Option!5349 0))(
  ( (None!5348) (Some!5348 (v!30426 tuple2!27046)) )
))
(declare-fun maxPrefixOneRule!1390 (LexerInterface!3956 Rule!8518 List!27343) Option!5349)

(declare-fun apply!6631 (TokenValueInjection!8582 BalanceConc!17460) TokenValue!4521)

(declare-fun seqFromList!3063 (List!27343) BalanceConc!17460)

(assert (=> b!2289214 (= (maxPrefixOneRule!1390 thiss!16613 r!2363 input!1722) (Some!5348 (tuple2!27047 (Token!8197 (apply!6631 (transformation!4359 r!2363) (seqFromList!3063 lt!849341)) r!2363 lt!849346 lt!849341) (_2!16033 lt!849345))))))

(declare-datatypes ((Unit!40140 0))(
  ( (Unit!40141) )
))
(declare-fun lt!849342 () Unit!40140)

(declare-datatypes ((List!27345 0))(
  ( (Nil!27251) (Cons!27251 (h!32652 Rule!8518) (t!204469 List!27345)) )
))
(declare-fun rules!1750 () List!27345)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!583 (LexerInterface!3956 List!27345 List!27343 List!27343 List!27343 Rule!8518) Unit!40140)

(assert (=> b!2289214 (= lt!849342 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!583 thiss!16613 rules!1750 lt!849341 input!1722 (_2!16033 lt!849345) r!2363))))

(declare-fun e!1466786 () Bool)

(declare-fun b!2289215 () Bool)

(declare-fun tp!725790 () Bool)

(declare-fun e!1466772 () Bool)

(declare-datatypes ((List!27346 0))(
  ( (Nil!27252) (Cons!27252 (h!32653 Token!8196) (t!204470 List!27346)) )
))
(declare-fun tokens!456 () List!27346)

(declare-fun inv!36846 (String!29709) Bool)

(declare-fun inv!36849 (TokenValueInjection!8582) Bool)

(assert (=> b!2289215 (= e!1466786 (and tp!725790 (inv!36846 (tag!4849 (rule!6691 (h!32653 tokens!456)))) (inv!36849 (transformation!4359 (rule!6691 (h!32653 tokens!456)))) e!1466772))))

(declare-fun b!2289216 () Bool)

(declare-fun res!978773 () Bool)

(declare-fun e!1466767 () Bool)

(assert (=> b!2289216 (=> (not res!978773) (not e!1466767))))

(declare-fun otherP!12 () List!27343)

(assert (=> b!2289216 (= res!978773 (isPrefix!2349 otherP!12 input!1722))))

(declare-fun b!2289217 () Bool)

(declare-fun e!1466789 () Bool)

(declare-fun tp!725796 () Bool)

(assert (=> b!2289217 (= e!1466789 (and tp_is_empty!10635 tp!725796))))

(declare-fun b!2289218 () Bool)

(declare-fun e!1466769 () Bool)

(assert (=> b!2289218 (= e!1466769 e!1466776)))

(declare-fun res!978776 () Bool)

(assert (=> b!2289218 (=> res!978776 e!1466776)))

(declare-fun lt!849339 () Int)

(assert (=> b!2289218 (= res!978776 (= lt!849339 lt!849346))))

(declare-fun size!21449 (List!27343) Int)

(assert (=> b!2289218 (= lt!849346 (size!21449 lt!849341))))

(assert (=> b!2289218 (= lt!849339 (size!21449 otherP!12))))

(declare-fun lt!849337 () List!27343)

(assert (=> b!2289218 (= (_2!16033 lt!849345) lt!849337)))

(declare-fun lt!849347 () Unit!40140)

(declare-fun lemmaSamePrefixThenSameSuffix!1050 (List!27343 List!27343 List!27343 List!27343 List!27343) Unit!40140)

(assert (=> b!2289218 (= lt!849347 (lemmaSamePrefixThenSameSuffix!1050 lt!849341 (_2!16033 lt!849345) lt!849341 lt!849337 input!1722))))

(declare-fun getSuffix!1140 (List!27343 List!27343) List!27343)

(assert (=> b!2289218 (= lt!849337 (getSuffix!1140 input!1722 lt!849341))))

(declare-fun ++!6659 (List!27343 List!27343) List!27343)

(assert (=> b!2289218 (isPrefix!2349 lt!849341 (++!6659 lt!849341 (_2!16033 lt!849345)))))

(declare-fun lt!849344 () Unit!40140)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1554 (List!27343 List!27343) Unit!40140)

(assert (=> b!2289218 (= lt!849344 (lemmaConcatTwoListThenFirstIsPrefix!1554 lt!849341 (_2!16033 lt!849345)))))

(declare-fun list!10664 (BalanceConc!17460) List!27343)

(declare-fun charsOf!2747 (Token!8196) BalanceConc!17460)

(assert (=> b!2289218 (= lt!849341 (list!10664 (charsOf!2747 (h!32653 tokens!456))))))

(declare-fun b!2289219 () Bool)

(declare-fun e!1466763 () Bool)

(declare-fun e!1466773 () Bool)

(assert (=> b!2289219 (= e!1466763 e!1466773)))

(declare-fun res!978774 () Bool)

(assert (=> b!2289219 (=> res!978774 e!1466773)))

(declare-fun otherR!12 () Rule!8518)

(declare-fun getIndex!372 (List!27345 Rule!8518) Int)

(assert (=> b!2289219 (= res!978774 (<= (getIndex!372 rules!1750 r!2363) (getIndex!372 rules!1750 otherR!12)))))

(declare-fun ruleValid!1449 (LexerInterface!3956 Rule!8518) Bool)

(assert (=> b!2289219 (ruleValid!1449 thiss!16613 otherR!12)))

(declare-fun lt!849338 () Unit!40140)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!854 (LexerInterface!3956 Rule!8518 List!27345) Unit!40140)

(assert (=> b!2289219 (= lt!849338 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!854 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2289220 () Bool)

(declare-fun res!978775 () Bool)

(declare-fun e!1466787 () Bool)

(assert (=> b!2289220 (=> (not res!978775) (not e!1466787))))

(declare-fun contains!4735 (List!27345 Rule!8518) Bool)

(assert (=> b!2289220 (= res!978775 (contains!4735 rules!1750 otherR!12))))

(declare-fun b!2289221 () Bool)

(declare-fun e!1466770 () Bool)

(declare-fun matchR!2964 (Regex!6707 List!27343) Bool)

(declare-fun head!4984 (List!27346) Token!8196)

(assert (=> b!2289221 (= e!1466770 (not (matchR!2964 (regex!4359 r!2363) (list!10664 (charsOf!2747 (head!4984 tokens!456))))))))

(declare-fun b!2289222 () Bool)

(assert (=> b!2289222 (= e!1466773 e!1466769)))

(declare-fun res!978771 () Bool)

(assert (=> b!2289222 (=> res!978771 e!1466769)))

(assert (=> b!2289222 (= res!978771 (not (= (h!32653 tokens!456) (_1!16033 lt!849345))))))

(declare-fun get!8218 (Option!5349) tuple2!27046)

(declare-fun maxPrefix!2220 (LexerInterface!3956 List!27345 List!27343) Option!5349)

(assert (=> b!2289222 (= lt!849345 (get!8218 (maxPrefix!2220 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2289223 () Bool)

(declare-fun e!1466762 () Bool)

(declare-fun tp!725788 () Bool)

(assert (=> b!2289223 (= e!1466762 (and tp_is_empty!10635 tp!725788))))

(declare-fun b!2289224 () Bool)

(declare-fun e!1466771 () Bool)

(declare-fun e!1466781 () Bool)

(declare-fun tp!725798 () Bool)

(assert (=> b!2289224 (= e!1466781 (and tp!725798 (inv!36846 (tag!4849 otherR!12)) (inv!36849 (transformation!4359 otherR!12)) e!1466771))))

(declare-fun e!1466782 () Bool)

(assert (=> b!2289225 (= e!1466782 (and tp!725794 tp!725786))))

(declare-fun b!2289226 () Bool)

(declare-fun res!978770 () Bool)

(assert (=> b!2289226 (=> (not res!978770) (not e!1466787))))

(declare-fun rulesInvariant!3458 (LexerInterface!3956 List!27345) Bool)

(assert (=> b!2289226 (= res!978770 (rulesInvariant!3458 thiss!16613 rules!1750))))

(declare-fun b!2289227 () Bool)

(declare-fun e!1466768 () Bool)

(assert (=> b!2289227 (= e!1466768 (= (rule!6691 (head!4984 tokens!456)) r!2363))))

(declare-fun e!1466783 () Bool)

(declare-fun tp!725795 () Bool)

(declare-fun b!2289228 () Bool)

(declare-fun inv!21 (TokenValue!4521) Bool)

(assert (=> b!2289228 (= e!1466783 (and (inv!21 (value!138051 (h!32653 tokens!456))) e!1466786 tp!725795))))

(declare-fun b!2289229 () Bool)

(declare-fun res!978761 () Bool)

(assert (=> b!2289229 (=> (not res!978761) (not e!1466787))))

(assert (=> b!2289229 (= res!978761 (contains!4735 rules!1750 r!2363))))

(declare-fun b!2289230 () Bool)

(declare-fun res!978772 () Bool)

(assert (=> b!2289230 (=> (not res!978772) (not e!1466767))))

(assert (=> b!2289230 (= res!978772 e!1466768)))

(declare-fun res!978766 () Bool)

(assert (=> b!2289230 (=> res!978766 e!1466768)))

(declare-fun lt!849343 () Bool)

(assert (=> b!2289230 (= res!978766 lt!849343)))

(declare-fun b!2289231 () Bool)

(declare-fun res!978768 () Bool)

(assert (=> b!2289231 (=> (not res!978768) (not e!1466787))))

(declare-fun isEmpty!15511 (List!27345) Bool)

(assert (=> b!2289231 (= res!978768 (not (isEmpty!15511 rules!1750)))))

(declare-fun e!1466784 () Bool)

(assert (=> b!2289232 (= e!1466784 (and tp!725783 tp!725797))))

(declare-fun b!2289233 () Bool)

(declare-fun e!1466764 () Bool)

(assert (=> b!2289233 (= e!1466787 e!1466764)))

(declare-fun res!978769 () Bool)

(assert (=> b!2289233 (=> (not res!978769) (not e!1466764))))

(declare-datatypes ((IArray!17739 0))(
  ( (IArray!17740 (innerList!8927 List!27346)) )
))
(declare-datatypes ((Conc!8867 0))(
  ( (Node!8867 (left!20659 Conc!8867) (right!20989 Conc!8867) (csize!17964 Int) (cheight!9078 Int)) (Leaf!13032 (xs!11809 IArray!17739) (csize!17965 Int)) (Empty!8867) )
))
(declare-datatypes ((BalanceConc!17462 0))(
  ( (BalanceConc!17463 (c!363050 Conc!8867)) )
))
(declare-datatypes ((tuple2!27048 0))(
  ( (tuple2!27049 (_1!16034 BalanceConc!17462) (_2!16034 BalanceConc!17460)) )
))
(declare-fun lt!849348 () tuple2!27048)

(declare-fun suffix!886 () List!27343)

(declare-datatypes ((tuple2!27050 0))(
  ( (tuple2!27051 (_1!16035 List!27346) (_2!16035 List!27343)) )
))
(declare-fun list!10665 (BalanceConc!17462) List!27346)

(assert (=> b!2289233 (= res!978769 (= (tuple2!27051 (list!10665 (_1!16034 lt!849348)) (list!10664 (_2!16034 lt!849348))) (tuple2!27051 tokens!456 suffix!886)))))

(declare-fun lex!1795 (LexerInterface!3956 List!27345 BalanceConc!17460) tuple2!27048)

(assert (=> b!2289233 (= lt!849348 (lex!1795 thiss!16613 rules!1750 (seqFromList!3063 input!1722)))))

(declare-fun res!978762 () Bool)

(assert (=> start!224632 (=> (not res!978762) (not e!1466787))))

(get-info :version)

(assert (=> start!224632 (= res!978762 ((_ is Lexer!3954) thiss!16613))))

(assert (=> start!224632 e!1466787))

(assert (=> start!224632 true))

(assert (=> start!224632 e!1466766))

(assert (=> start!224632 e!1466781))

(assert (=> start!224632 e!1466789))

(assert (=> start!224632 e!1466762))

(declare-fun e!1466779 () Bool)

(assert (=> start!224632 e!1466779))

(declare-fun e!1466765 () Bool)

(assert (=> start!224632 e!1466765))

(declare-fun e!1466761 () Bool)

(assert (=> start!224632 e!1466761))

(declare-fun b!2289234 () Bool)

(assert (=> b!2289234 (= e!1466764 e!1466767)))

(declare-fun res!978767 () Bool)

(assert (=> b!2289234 (=> (not res!978767) (not e!1466767))))

(declare-fun e!1466775 () Bool)

(assert (=> b!2289234 (= res!978767 e!1466775)))

(declare-fun res!978765 () Bool)

(assert (=> b!2289234 (=> res!978765 e!1466775)))

(assert (=> b!2289234 (= res!978765 lt!849343)))

(declare-fun isEmpty!15512 (List!27346) Bool)

(assert (=> b!2289234 (= lt!849343 (isEmpty!15512 tokens!456))))

(declare-fun b!2289235 () Bool)

(assert (=> b!2289235 (= e!1466767 (not e!1466763))))

(declare-fun res!978763 () Bool)

(assert (=> b!2289235 (=> res!978763 e!1466763)))

(assert (=> b!2289235 (= res!978763 e!1466770)))

(declare-fun res!978760 () Bool)

(assert (=> b!2289235 (=> (not res!978760) (not e!1466770))))

(assert (=> b!2289235 (= res!978760 (not lt!849343))))

(assert (=> b!2289235 (ruleValid!1449 thiss!16613 r!2363)))

(declare-fun lt!849336 () Unit!40140)

(assert (=> b!2289235 (= lt!849336 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!854 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2289236 () Bool)

(declare-fun res!978759 () Bool)

(assert (=> b!2289236 (=> (not res!978759) (not e!1466767))))

(assert (=> b!2289236 (= res!978759 (not (= r!2363 otherR!12)))))

(declare-fun b!2289237 () Bool)

(declare-fun tp!725785 () Bool)

(declare-fun inv!36850 (Token!8196) Bool)

(assert (=> b!2289237 (= e!1466761 (and (inv!36850 (h!32653 tokens!456)) e!1466783 tp!725785))))

(declare-fun b!2289238 () Bool)

(declare-fun res!978764 () Bool)

(assert (=> b!2289238 (=> res!978764 e!1466773)))

(assert (=> b!2289238 (= res!978764 ((_ is Nil!27252) tokens!456))))

(assert (=> b!2289239 (= e!1466771 (and tp!725784 tp!725792))))

(declare-fun tp!725793 () Bool)

(declare-fun b!2289240 () Bool)

(declare-fun e!1466785 () Bool)

(assert (=> b!2289240 (= e!1466785 (and tp!725793 (inv!36846 (tag!4849 (h!32652 rules!1750))) (inv!36849 (transformation!4359 (h!32652 rules!1750))) e!1466782))))

(declare-fun b!2289241 () Bool)

(declare-fun tp!725791 () Bool)

(assert (=> b!2289241 (= e!1466765 (and tp!725791 (inv!36846 (tag!4849 r!2363)) (inv!36849 (transformation!4359 r!2363)) e!1466784))))

(declare-fun b!2289242 () Bool)

(declare-fun tp!725787 () Bool)

(assert (=> b!2289242 (= e!1466779 (and e!1466785 tp!725787))))

(assert (=> b!2289243 (= e!1466772 (and tp!725789 tp!725799))))

(declare-fun b!2289244 () Bool)

(declare-fun size!21450 (BalanceConc!17460) Int)

(assert (=> b!2289244 (= e!1466775 (<= (size!21450 (charsOf!2747 (head!4984 tokens!456))) (size!21449 otherP!12)))))

(assert (= (and start!224632 res!978762) b!2289231))

(assert (= (and b!2289231 res!978768) b!2289226))

(assert (= (and b!2289226 res!978770) b!2289229))

(assert (= (and b!2289229 res!978761) b!2289220))

(assert (= (and b!2289220 res!978775) b!2289233))

(assert (= (and b!2289233 res!978769) b!2289234))

(assert (= (and b!2289234 (not res!978765)) b!2289244))

(assert (= (and b!2289234 res!978767) b!2289230))

(assert (= (and b!2289230 (not res!978766)) b!2289227))

(assert (= (and b!2289230 res!978772) b!2289216))

(assert (= (and b!2289216 res!978773) b!2289236))

(assert (= (and b!2289236 res!978759) b!2289235))

(assert (= (and b!2289235 res!978760) b!2289221))

(assert (= (and b!2289235 (not res!978763)) b!2289219))

(assert (= (and b!2289219 (not res!978774)) b!2289238))

(assert (= (and b!2289238 (not res!978764)) b!2289222))

(assert (= (and b!2289222 (not res!978771)) b!2289218))

(assert (= (and b!2289218 (not res!978776)) b!2289214))

(assert (= (and start!224632 ((_ is Cons!27249) input!1722)) b!2289213))

(assert (= b!2289224 b!2289239))

(assert (= start!224632 b!2289224))

(assert (= (and start!224632 ((_ is Cons!27249) suffix!886)) b!2289217))

(assert (= (and start!224632 ((_ is Cons!27249) otherP!12)) b!2289223))

(assert (= b!2289240 b!2289225))

(assert (= b!2289242 b!2289240))

(assert (= (and start!224632 ((_ is Cons!27251) rules!1750)) b!2289242))

(assert (= b!2289241 b!2289232))

(assert (= start!224632 b!2289241))

(assert (= b!2289215 b!2289243))

(assert (= b!2289228 b!2289215))

(assert (= b!2289237 b!2289228))

(assert (= (and start!224632 ((_ is Cons!27252) tokens!456)) b!2289237))

(declare-fun m!2716901 () Bool)

(assert (=> b!2289226 m!2716901))

(declare-fun m!2716903 () Bool)

(assert (=> b!2289235 m!2716903))

(declare-fun m!2716905 () Bool)

(assert (=> b!2289235 m!2716905))

(declare-fun m!2716907 () Bool)

(assert (=> b!2289234 m!2716907))

(declare-fun m!2716909 () Bool)

(assert (=> b!2289233 m!2716909))

(declare-fun m!2716911 () Bool)

(assert (=> b!2289233 m!2716911))

(declare-fun m!2716913 () Bool)

(assert (=> b!2289233 m!2716913))

(assert (=> b!2289233 m!2716913))

(declare-fun m!2716915 () Bool)

(assert (=> b!2289233 m!2716915))

(declare-fun m!2716917 () Bool)

(assert (=> b!2289229 m!2716917))

(declare-fun m!2716919 () Bool)

(assert (=> b!2289231 m!2716919))

(declare-fun m!2716921 () Bool)

(assert (=> b!2289221 m!2716921))

(assert (=> b!2289221 m!2716921))

(declare-fun m!2716923 () Bool)

(assert (=> b!2289221 m!2716923))

(assert (=> b!2289221 m!2716923))

(declare-fun m!2716925 () Bool)

(assert (=> b!2289221 m!2716925))

(assert (=> b!2289221 m!2716925))

(declare-fun m!2716927 () Bool)

(assert (=> b!2289221 m!2716927))

(declare-fun m!2716929 () Bool)

(assert (=> b!2289215 m!2716929))

(declare-fun m!2716931 () Bool)

(assert (=> b!2289215 m!2716931))

(declare-fun m!2716933 () Bool)

(assert (=> b!2289219 m!2716933))

(declare-fun m!2716935 () Bool)

(assert (=> b!2289219 m!2716935))

(declare-fun m!2716937 () Bool)

(assert (=> b!2289219 m!2716937))

(declare-fun m!2716939 () Bool)

(assert (=> b!2289219 m!2716939))

(declare-fun m!2716941 () Bool)

(assert (=> b!2289240 m!2716941))

(declare-fun m!2716943 () Bool)

(assert (=> b!2289240 m!2716943))

(assert (=> b!2289244 m!2716921))

(assert (=> b!2289244 m!2716921))

(assert (=> b!2289244 m!2716923))

(assert (=> b!2289244 m!2716923))

(declare-fun m!2716945 () Bool)

(assert (=> b!2289244 m!2716945))

(declare-fun m!2716947 () Bool)

(assert (=> b!2289244 m!2716947))

(declare-fun m!2716949 () Bool)

(assert (=> b!2289220 m!2716949))

(declare-fun m!2716951 () Bool)

(assert (=> b!2289241 m!2716951))

(declare-fun m!2716953 () Bool)

(assert (=> b!2289241 m!2716953))

(declare-fun m!2716955 () Bool)

(assert (=> b!2289224 m!2716955))

(declare-fun m!2716957 () Bool)

(assert (=> b!2289224 m!2716957))

(assert (=> b!2289227 m!2716921))

(declare-fun m!2716959 () Bool)

(assert (=> b!2289216 m!2716959))

(declare-fun m!2716961 () Bool)

(assert (=> b!2289237 m!2716961))

(declare-fun m!2716963 () Bool)

(assert (=> b!2289218 m!2716963))

(assert (=> b!2289218 m!2716947))

(declare-fun m!2716965 () Bool)

(assert (=> b!2289218 m!2716965))

(declare-fun m!2716967 () Bool)

(assert (=> b!2289218 m!2716967))

(declare-fun m!2716969 () Bool)

(assert (=> b!2289218 m!2716969))

(assert (=> b!2289218 m!2716965))

(declare-fun m!2716971 () Bool)

(assert (=> b!2289218 m!2716971))

(declare-fun m!2716973 () Bool)

(assert (=> b!2289218 m!2716973))

(declare-fun m!2716975 () Bool)

(assert (=> b!2289218 m!2716975))

(declare-fun m!2716977 () Bool)

(assert (=> b!2289218 m!2716977))

(assert (=> b!2289218 m!2716973))

(declare-fun m!2716979 () Bool)

(assert (=> b!2289214 m!2716979))

(declare-fun m!2716981 () Bool)

(assert (=> b!2289214 m!2716981))

(assert (=> b!2289214 m!2716979))

(declare-fun m!2716983 () Bool)

(assert (=> b!2289214 m!2716983))

(declare-fun m!2716985 () Bool)

(assert (=> b!2289214 m!2716985))

(declare-fun m!2716987 () Bool)

(assert (=> b!2289214 m!2716987))

(declare-fun m!2716989 () Bool)

(assert (=> b!2289228 m!2716989))

(declare-fun m!2716991 () Bool)

(assert (=> b!2289222 m!2716991))

(assert (=> b!2289222 m!2716991))

(declare-fun m!2716993 () Bool)

(assert (=> b!2289222 m!2716993))

(check-sat b_and!181567 (not b!2289216) (not b!2289219) b_and!181555 (not b!2289227) (not b!2289233) b_and!181565 (not b_next!69429) (not b!2289224) (not b!2289215) (not b!2289237) (not b!2289234) (not b!2289214) (not b!2289213) (not b!2289228) (not b!2289242) (not b!2289220) (not b!2289226) (not b_next!69423) (not b!2289218) b_and!181559 (not b_next!69421) (not b!2289240) tp_is_empty!10635 (not b!2289223) (not b!2289231) (not b_next!69433) b_and!181557 (not b!2289244) (not b_next!69425) (not b_next!69435) (not b!2289241) b_and!181553 b_and!181563 (not b!2289235) (not b!2289221) b_and!181561 (not b_next!69427) (not b!2289222) (not b!2289217) (not b!2289229) (not b_next!69431))
(check-sat b_and!181567 (not b_next!69423) b_and!181559 (not b_next!69421) (not b_next!69433) b_and!181555 b_and!181557 b_and!181561 b_and!181565 (not b_next!69429) (not b_next!69427) (not b_next!69431) (not b_next!69425) (not b_next!69435) b_and!181553 b_and!181563)

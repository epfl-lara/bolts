; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57532 () Bool)

(assert start!57532)

(declare-fun b!604412 () Bool)

(declare-fun b_free!17205 () Bool)

(declare-fun b_next!17221 () Bool)

(assert (=> b!604412 (= b_free!17205 (not b_next!17221))))

(declare-fun tp!187933 () Bool)

(declare-fun b_and!59767 () Bool)

(assert (=> b!604412 (= tp!187933 b_and!59767)))

(declare-fun b_free!17207 () Bool)

(declare-fun b_next!17223 () Bool)

(assert (=> b!604412 (= b_free!17207 (not b_next!17223))))

(declare-fun tp!187931 () Bool)

(declare-fun b_and!59769 () Bool)

(assert (=> b!604412 (= tp!187931 b_and!59769)))

(declare-fun b!604429 () Bool)

(declare-fun b_free!17209 () Bool)

(declare-fun b_next!17225 () Bool)

(assert (=> b!604429 (= b_free!17209 (not b_next!17225))))

(declare-fun tp!187934 () Bool)

(declare-fun b_and!59771 () Bool)

(assert (=> b!604429 (= tp!187934 b_and!59771)))

(declare-fun b_free!17211 () Bool)

(declare-fun b_next!17227 () Bool)

(assert (=> b!604429 (= b_free!17211 (not b_next!17227))))

(declare-fun tp!187938 () Bool)

(declare-fun b_and!59773 () Bool)

(assert (=> b!604429 (= tp!187938 b_and!59773)))

(declare-fun b!604406 () Bool)

(declare-fun e!366270 () Bool)

(declare-datatypes ((String!7888 0))(
  ( (String!7889 (value!39183 String)) )
))
(declare-datatypes ((C!4000 0))(
  ( (C!4001 (val!2226 Int)) )
))
(declare-datatypes ((Regex!1539 0))(
  ( (ElementMatch!1539 (c!112091 C!4000)) (Concat!2768 (regOne!3590 Regex!1539) (regTwo!3590 Regex!1539)) (EmptyExpr!1539) (Star!1539 (reg!1868 Regex!1539)) (EmptyLang!1539) (Union!1539 (regOne!3591 Regex!1539) (regTwo!3591 Regex!1539)) )
))
(declare-datatypes ((List!6052 0))(
  ( (Nil!6042) (Cons!6042 (h!11443 (_ BitVec 16)) (t!80263 List!6052)) )
))
(declare-datatypes ((TokenValue!1229 0))(
  ( (FloatLiteralValue!2458 (text!9048 List!6052)) (TokenValueExt!1228 (__x!4356 Int)) (Broken!6145 (value!39184 List!6052)) (Object!1238) (End!1229) (Def!1229) (Underscore!1229) (Match!1229) (Else!1229) (Error!1229) (Case!1229) (If!1229) (Extends!1229) (Abstract!1229) (Class!1229) (Val!1229) (DelimiterValue!2458 (del!1289 List!6052)) (KeywordValue!1235 (value!39185 List!6052)) (CommentValue!2458 (value!39186 List!6052)) (WhitespaceValue!2458 (value!39187 List!6052)) (IndentationValue!1229 (value!39188 List!6052)) (String!7890) (Int32!1229) (Broken!6146 (value!39189 List!6052)) (Boolean!1230) (Unit!11011) (OperatorValue!1232 (op!1289 List!6052)) (IdentifierValue!2458 (value!39190 List!6052)) (IdentifierValue!2459 (value!39191 List!6052)) (WhitespaceValue!2459 (value!39192 List!6052)) (True!2458) (False!2458) (Broken!6147 (value!39193 List!6052)) (Broken!6148 (value!39194 List!6052)) (True!2459) (RightBrace!1229) (RightBracket!1229) (Colon!1229) (Null!1229) (Comma!1229) (LeftBracket!1229) (False!2459) (LeftBrace!1229) (ImaginaryLiteralValue!1229 (text!9049 List!6052)) (StringLiteralValue!3687 (value!39195 List!6052)) (EOFValue!1229 (value!39196 List!6052)) (IdentValue!1229 (value!39197 List!6052)) (DelimiterValue!2459 (value!39198 List!6052)) (DedentValue!1229 (value!39199 List!6052)) (NewLineValue!1229 (value!39200 List!6052)) (IntegerValue!3687 (value!39201 (_ BitVec 32)) (text!9050 List!6052)) (IntegerValue!3688 (value!39202 Int) (text!9051 List!6052)) (Times!1229) (Or!1229) (Equal!1229) (Minus!1229) (Broken!6149 (value!39203 List!6052)) (And!1229) (Div!1229) (LessEqual!1229) (Mod!1229) (Concat!2769) (Not!1229) (Plus!1229) (SpaceValue!1229 (value!39204 List!6052)) (IntegerValue!3689 (value!39205 Int) (text!9052 List!6052)) (StringLiteralValue!3688 (text!9053 List!6052)) (FloatLiteralValue!2459 (text!9054 List!6052)) (BytesLiteralValue!1229 (value!39206 List!6052)) (CommentValue!2459 (value!39207 List!6052)) (StringLiteralValue!3689 (value!39208 List!6052)) (ErrorTokenValue!1229 (msg!1290 List!6052)) )
))
(declare-datatypes ((List!6053 0))(
  ( (Nil!6043) (Cons!6043 (h!11444 C!4000) (t!80264 List!6053)) )
))
(declare-datatypes ((IArray!3845 0))(
  ( (IArray!3846 (innerList!1980 List!6053)) )
))
(declare-datatypes ((Conc!1922 0))(
  ( (Node!1922 (left!4849 Conc!1922) (right!5179 Conc!1922) (csize!4074 Int) (cheight!2133 Int)) (Leaf!3032 (xs!4559 IArray!3845) (csize!4075 Int)) (Empty!1922) )
))
(declare-datatypes ((BalanceConc!3852 0))(
  ( (BalanceConc!3853 (c!112092 Conc!1922)) )
))
(declare-datatypes ((TokenValueInjection!2226 0))(
  ( (TokenValueInjection!2227 (toValue!2108 Int) (toChars!1967 Int)) )
))
(declare-datatypes ((Rule!2210 0))(
  ( (Rule!2211 (regex!1205 Regex!1539) (tag!1467 String!7888) (isSeparator!1205 Bool) (transformation!1205 TokenValueInjection!2226)) )
))
(declare-datatypes ((Token!2146 0))(
  ( (Token!2147 (value!39209 TokenValue!1229) (rule!1983 Rule!2210) (size!4754 Int) (originalCharacters!1244 List!6053)) )
))
(declare-fun token!491 () Token!2146)

(declare-fun lt!257824 () List!6053)

(declare-fun matchR!642 (Regex!1539 List!6053) Bool)

(assert (=> b!604406 (= e!366270 (matchR!642 (regex!1205 (rule!1983 token!491)) lt!257824))))

(declare-fun lt!257827 () Int)

(declare-fun e!366257 () Bool)

(declare-fun lt!257816 () List!6053)

(declare-fun lt!257830 () List!6053)

(declare-fun lt!257826 () TokenValue!1229)

(declare-fun b!604407 () Bool)

(declare-datatypes ((tuple2!6920 0))(
  ( (tuple2!6921 (_1!3724 Token!2146) (_2!3724 List!6053)) )
))
(declare-datatypes ((Option!1556 0))(
  ( (None!1555) (Some!1555 (v!16454 tuple2!6920)) )
))
(declare-fun lt!257818 () Option!1556)

(assert (=> b!604407 (= e!366257 (and (= (size!4754 (_1!3724 (v!16454 lt!257818))) lt!257827) (= (originalCharacters!1244 (_1!3724 (v!16454 lt!257818))) lt!257830) (= (v!16454 lt!257818) (tuple2!6921 (Token!2147 lt!257826 (rule!1983 (_1!3724 (v!16454 lt!257818))) lt!257827 lt!257830) lt!257816))))))

(declare-fun tp!187940 () Bool)

(declare-fun e!366268 () Bool)

(declare-fun b!604408 () Bool)

(declare-fun e!366276 () Bool)

(declare-fun inv!7675 (String!7888) Bool)

(declare-fun inv!7678 (TokenValueInjection!2226) Bool)

(assert (=> b!604408 (= e!366276 (and tp!187940 (inv!7675 (tag!1467 (rule!1983 token!491))) (inv!7678 (transformation!1205 (rule!1983 token!491))) e!366268))))

(declare-fun b!604409 () Bool)

(declare-fun res!261673 () Bool)

(declare-fun e!366265 () Bool)

(assert (=> b!604409 (=> res!261673 e!366265)))

(declare-fun lt!257820 () List!6053)

(declare-fun lt!257807 () List!6053)

(assert (=> b!604409 (= res!261673 (not (= lt!257820 lt!257807)))))

(declare-fun b!604410 () Bool)

(declare-fun e!366269 () Bool)

(declare-fun e!366278 () Bool)

(assert (=> b!604410 (= e!366269 e!366278)))

(declare-fun res!261668 () Bool)

(assert (=> b!604410 (=> (not res!261668) (not e!366278))))

(get-info :version)

(assert (=> b!604410 (= res!261668 ((_ is Some!1555) lt!257818))))

(declare-datatypes ((List!6054 0))(
  ( (Nil!6044) (Cons!6044 (h!11445 Rule!2210) (t!80265 List!6054)) )
))
(declare-fun rules!3103 () List!6054)

(declare-datatypes ((LexerInterface!1091 0))(
  ( (LexerInterfaceExt!1088 (__x!4357 Int)) (Lexer!1089) )
))
(declare-fun thiss!22590 () LexerInterface!1091)

(declare-fun input!2705 () List!6053)

(declare-fun maxPrefix!789 (LexerInterface!1091 List!6054 List!6053) Option!1556)

(assert (=> b!604410 (= lt!257818 (maxPrefix!789 thiss!22590 rules!3103 input!2705))))

(declare-fun b!604411 () Bool)

(declare-fun res!261669 () Bool)

(declare-fun e!366263 () Bool)

(assert (=> b!604411 (=> (not res!261669) (not e!366263))))

(declare-fun isEmpty!4361 (List!6054) Bool)

(assert (=> b!604411 (= res!261669 (not (isEmpty!4361 rules!3103)))))

(declare-fun res!261681 () Bool)

(assert (=> start!57532 (=> (not res!261681) (not e!366263))))

(assert (=> start!57532 (= res!261681 ((_ is Lexer!1089) thiss!22590))))

(assert (=> start!57532 e!366263))

(declare-fun e!366272 () Bool)

(assert (=> start!57532 e!366272))

(declare-fun e!366258 () Bool)

(assert (=> start!57532 e!366258))

(declare-fun e!366279 () Bool)

(declare-fun inv!7679 (Token!2146) Bool)

(assert (=> start!57532 (and (inv!7679 token!491) e!366279)))

(assert (=> start!57532 true))

(declare-fun e!366271 () Bool)

(assert (=> start!57532 e!366271))

(declare-fun e!366266 () Bool)

(assert (=> b!604412 (= e!366266 (and tp!187933 tp!187931))))

(declare-fun b!604413 () Bool)

(declare-fun res!261675 () Bool)

(assert (=> b!604413 (=> res!261675 e!366265)))

(declare-fun isEmpty!4362 (List!6053) Bool)

(assert (=> b!604413 (= res!261675 (isEmpty!4362 lt!257824))))

(declare-fun b!604414 () Bool)

(declare-fun res!261676 () Bool)

(declare-fun e!366260 () Bool)

(assert (=> b!604414 (=> (not res!261676) (not e!366260))))

(declare-fun size!4755 (List!6053) Int)

(assert (=> b!604414 (= res!261676 (= (size!4754 token!491) (size!4755 (originalCharacters!1244 token!491))))))

(declare-fun tp!187932 () Bool)

(declare-fun b!604415 () Bool)

(declare-fun e!366261 () Bool)

(assert (=> b!604415 (= e!366261 (and tp!187932 (inv!7675 (tag!1467 (h!11445 rules!3103))) (inv!7678 (transformation!1205 (h!11445 rules!3103))) e!366266))))

(declare-fun b!604416 () Bool)

(declare-fun e!366262 () Bool)

(declare-fun e!366267 () Bool)

(assert (=> b!604416 (= e!366262 (not e!366267))))

(declare-fun res!261679 () Bool)

(assert (=> b!604416 (=> res!261679 e!366267)))

(declare-fun isPrefix!833 (List!6053 List!6053) Bool)

(assert (=> b!604416 (= res!261679 (not (isPrefix!833 input!2705 lt!257807)))))

(assert (=> b!604416 (isPrefix!833 lt!257824 lt!257807)))

(declare-datatypes ((Unit!11012 0))(
  ( (Unit!11013) )
))
(declare-fun lt!257823 () Unit!11012)

(declare-fun suffix!1342 () List!6053)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!678 (List!6053 List!6053) Unit!11012)

(assert (=> b!604416 (= lt!257823 (lemmaConcatTwoListThenFirstIsPrefix!678 lt!257824 suffix!1342))))

(assert (=> b!604416 (isPrefix!833 input!2705 lt!257820)))

(declare-fun lt!257833 () Unit!11012)

(assert (=> b!604416 (= lt!257833 (lemmaConcatTwoListThenFirstIsPrefix!678 input!2705 suffix!1342))))

(assert (=> b!604416 e!366257))

(declare-fun res!261666 () Bool)

(assert (=> b!604416 (=> (not res!261666) (not e!366257))))

(assert (=> b!604416 (= res!261666 (= (value!39209 (_1!3724 (v!16454 lt!257818))) lt!257826))))

(declare-fun apply!1458 (TokenValueInjection!2226 BalanceConc!3852) TokenValue!1229)

(declare-fun seqFromList!1381 (List!6053) BalanceConc!3852)

(assert (=> b!604416 (= lt!257826 (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (seqFromList!1381 lt!257830)))))

(declare-fun lt!257834 () Unit!11012)

(declare-fun lemmaInv!313 (TokenValueInjection!2226) Unit!11012)

(assert (=> b!604416 (= lt!257834 (lemmaInv!313 (transformation!1205 (rule!1983 token!491))))))

(declare-fun lt!257821 () Unit!11012)

(assert (=> b!604416 (= lt!257821 (lemmaInv!313 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))))))

(declare-fun ruleValid!403 (LexerInterface!1091 Rule!2210) Bool)

(assert (=> b!604416 (ruleValid!403 thiss!22590 (rule!1983 token!491))))

(declare-fun lt!257808 () Unit!11012)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!250 (LexerInterface!1091 Rule!2210 List!6054) Unit!11012)

(assert (=> b!604416 (= lt!257808 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!250 thiss!22590 (rule!1983 token!491) rules!3103))))

(assert (=> b!604416 (ruleValid!403 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))))))

(declare-fun lt!257832 () Unit!11012)

(assert (=> b!604416 (= lt!257832 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!250 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) rules!3103))))

(assert (=> b!604416 (isPrefix!833 input!2705 input!2705)))

(declare-fun lt!257822 () Unit!11012)

(declare-fun lemmaIsPrefixRefl!569 (List!6053 List!6053) Unit!11012)

(assert (=> b!604416 (= lt!257822 (lemmaIsPrefixRefl!569 input!2705 input!2705))))

(assert (=> b!604416 (= (_2!3724 (v!16454 lt!257818)) lt!257816)))

(declare-fun lt!257817 () Unit!11012)

(declare-fun lemmaSamePrefixThenSameSuffix!546 (List!6053 List!6053 List!6053 List!6053 List!6053) Unit!11012)

(assert (=> b!604416 (= lt!257817 (lemmaSamePrefixThenSameSuffix!546 lt!257830 (_2!3724 (v!16454 lt!257818)) lt!257830 lt!257816 input!2705))))

(declare-fun getSuffix!350 (List!6053 List!6053) List!6053)

(assert (=> b!604416 (= lt!257816 (getSuffix!350 input!2705 lt!257830))))

(declare-fun ++!1693 (List!6053 List!6053) List!6053)

(assert (=> b!604416 (isPrefix!833 lt!257830 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))))))

(declare-fun lt!257825 () Unit!11012)

(assert (=> b!604416 (= lt!257825 (lemmaConcatTwoListThenFirstIsPrefix!678 lt!257830 (_2!3724 (v!16454 lt!257818))))))

(declare-fun lt!257810 () Unit!11012)

(declare-fun lemmaCharactersSize!264 (Token!2146) Unit!11012)

(assert (=> b!604416 (= lt!257810 (lemmaCharactersSize!264 token!491))))

(declare-fun lt!257831 () Unit!11012)

(assert (=> b!604416 (= lt!257831 (lemmaCharactersSize!264 (_1!3724 (v!16454 lt!257818))))))

(declare-fun lt!257812 () Unit!11012)

(declare-fun e!366274 () Unit!11012)

(assert (=> b!604416 (= lt!257812 e!366274)))

(declare-fun c!112090 () Bool)

(declare-fun lt!257815 () Int)

(assert (=> b!604416 (= c!112090 (> lt!257827 lt!257815))))

(assert (=> b!604416 (= lt!257815 (size!4755 lt!257824))))

(assert (=> b!604416 (= lt!257827 (size!4755 lt!257830))))

(declare-fun list!2538 (BalanceConc!3852) List!6053)

(declare-fun charsOf!834 (Token!2146) BalanceConc!3852)

(assert (=> b!604416 (= lt!257830 (list!2538 (charsOf!834 (_1!3724 (v!16454 lt!257818)))))))

(assert (=> b!604416 (= lt!257818 (Some!1555 (v!16454 lt!257818)))))

(declare-fun lt!257809 () Unit!11012)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!278 (List!6053 List!6053 List!6053 List!6053) Unit!11012)

(assert (=> b!604416 (= lt!257809 (lemmaConcatSameAndSameSizesThenSameLists!278 lt!257824 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!604417 () Bool)

(declare-fun tp_is_empty!3433 () Bool)

(declare-fun tp!187936 () Bool)

(assert (=> b!604417 (= e!366271 (and tp_is_empty!3433 tp!187936))))

(declare-fun b!604418 () Bool)

(declare-fun e!366259 () Bool)

(assert (=> b!604418 (= e!366263 e!366259)))

(declare-fun res!261671 () Bool)

(assert (=> b!604418 (=> (not res!261671) (not e!366259))))

(assert (=> b!604418 (= res!261671 (= lt!257824 input!2705))))

(assert (=> b!604418 (= lt!257824 (list!2538 (charsOf!834 token!491)))))

(declare-fun b!604419 () Bool)

(declare-fun e!366275 () Bool)

(assert (=> b!604419 (= e!366275 e!366269)))

(declare-fun res!261667 () Bool)

(assert (=> b!604419 (=> (not res!261667) (not e!366269))))

(declare-fun lt!257819 () tuple2!6920)

(assert (=> b!604419 (= res!261667 (and (= (_1!3724 lt!257819) token!491) (= (_2!3724 lt!257819) suffix!1342)))))

(declare-fun lt!257806 () Option!1556)

(declare-fun get!2322 (Option!1556) tuple2!6920)

(assert (=> b!604419 (= lt!257819 (get!2322 lt!257806))))

(declare-fun b!604420 () Bool)

(assert (=> b!604420 (= e!366278 e!366262)))

(declare-fun res!261677 () Bool)

(assert (=> b!604420 (=> (not res!261677) (not e!366262))))

(assert (=> b!604420 (= res!261677 (= lt!257807 lt!257820))))

(assert (=> b!604420 (= lt!257807 (++!1693 lt!257824 suffix!1342))))

(declare-fun b!604421 () Bool)

(declare-fun tp!187937 () Bool)

(assert (=> b!604421 (= e!366258 (and e!366261 tp!187937))))

(declare-fun b!604422 () Bool)

(declare-fun Unit!11014 () Unit!11012)

(assert (=> b!604422 (= e!366274 Unit!11014)))

(assert (=> b!604422 false))

(declare-fun b!604423 () Bool)

(assert (=> b!604423 (= e!366259 e!366275)))

(declare-fun res!261672 () Bool)

(assert (=> b!604423 (=> (not res!261672) (not e!366275))))

(declare-fun isDefined!1367 (Option!1556) Bool)

(assert (=> b!604423 (= res!261672 (isDefined!1367 lt!257806))))

(assert (=> b!604423 (= lt!257806 (maxPrefix!789 thiss!22590 rules!3103 lt!257820))))

(assert (=> b!604423 (= lt!257820 (++!1693 input!2705 suffix!1342))))

(declare-fun b!604424 () Bool)

(assert (=> b!604424 (= e!366267 e!366265)))

(declare-fun res!261665 () Bool)

(assert (=> b!604424 (=> res!261665 e!366265)))

(declare-fun contains!1419 (List!6054 Rule!2210) Bool)

(assert (=> b!604424 (= res!261665 (not (contains!1419 rules!3103 (rule!1983 token!491))))))

(declare-fun maxPrefixOneRule!452 (LexerInterface!1091 Rule!2210 List!6053) Option!1556)

(assert (=> b!604424 (= (maxPrefixOneRule!452 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) input!2705) (Some!1555 (tuple2!6921 (Token!2147 lt!257826 (rule!1983 (_1!3724 (v!16454 lt!257818))) lt!257827 lt!257830) (_2!3724 (v!16454 lt!257818)))))))

(declare-fun lt!257829 () Unit!11012)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!158 (LexerInterface!1091 List!6054 List!6053 List!6053 List!6053 Rule!2210) Unit!11012)

(assert (=> b!604424 (= lt!257829 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!158 thiss!22590 rules!3103 lt!257830 input!2705 (_2!3724 (v!16454 lt!257818)) (rule!1983 (_1!3724 (v!16454 lt!257818)))))))

(assert (=> b!604424 e!366260))

(declare-fun res!261680 () Bool)

(assert (=> b!604424 (=> (not res!261680) (not e!366260))))

(declare-fun lt!257813 () TokenValue!1229)

(assert (=> b!604424 (= res!261680 (= (value!39209 token!491) lt!257813))))

(declare-fun lt!257814 () BalanceConc!3852)

(assert (=> b!604424 (= lt!257813 (apply!1458 (transformation!1205 (rule!1983 token!491)) lt!257814))))

(assert (=> b!604424 (= lt!257814 (seqFromList!1381 lt!257824))))

(declare-fun lt!257805 () List!6053)

(assert (=> b!604424 (= suffix!1342 lt!257805)))

(declare-fun lt!257828 () Unit!11012)

(assert (=> b!604424 (= lt!257828 (lemmaSamePrefixThenSameSuffix!546 lt!257824 suffix!1342 lt!257824 lt!257805 lt!257820))))

(assert (=> b!604424 (= lt!257805 (getSuffix!350 lt!257820 lt!257824))))

(declare-fun b!604425 () Bool)

(declare-fun res!261682 () Bool)

(assert (=> b!604425 (=> (not res!261682) (not e!366263))))

(assert (=> b!604425 (= res!261682 (not (isEmpty!4362 input!2705)))))

(declare-fun b!604426 () Bool)

(assert (=> b!604426 (= e!366260 (and (= (size!4754 token!491) lt!257815) (= (originalCharacters!1244 token!491) lt!257824) (= (tuple2!6921 token!491 suffix!1342) (tuple2!6921 (Token!2147 lt!257813 (rule!1983 token!491) lt!257815 lt!257824) lt!257805))))))

(declare-fun b!604427 () Bool)

(declare-fun tp!187935 () Bool)

(declare-fun inv!21 (TokenValue!1229) Bool)

(assert (=> b!604427 (= e!366279 (and (inv!21 (value!39209 token!491)) e!366276 tp!187935))))

(declare-fun b!604428 () Bool)

(declare-fun tp!187939 () Bool)

(assert (=> b!604428 (= e!366272 (and tp_is_empty!3433 tp!187939))))

(assert (=> b!604429 (= e!366268 (and tp!187934 tp!187938))))

(declare-fun b!604430 () Bool)

(assert (=> b!604430 (= e!366265 e!366270)))

(declare-fun res!261674 () Bool)

(assert (=> b!604430 (=> res!261674 e!366270)))

(assert (=> b!604430 (= res!261674 (not (= lt!257806 (Some!1555 (tuple2!6921 (Token!2147 lt!257813 (rule!1983 token!491) lt!257815 lt!257824) suffix!1342)))))))

(declare-fun lt!257811 () Unit!11012)

(declare-fun lemmaSemiInverse!238 (TokenValueInjection!2226 BalanceConc!3852) Unit!11012)

(assert (=> b!604430 (= lt!257811 (lemmaSemiInverse!238 (transformation!1205 (rule!1983 token!491)) lt!257814))))

(declare-fun b!604431 () Bool)

(declare-fun res!261678 () Bool)

(assert (=> b!604431 (=> (not res!261678) (not e!366263))))

(declare-fun rulesInvariant!1054 (LexerInterface!1091 List!6054) Bool)

(assert (=> b!604431 (= res!261678 (rulesInvariant!1054 thiss!22590 rules!3103))))

(declare-fun b!604432 () Bool)

(declare-fun Unit!11015 () Unit!11012)

(assert (=> b!604432 (= e!366274 Unit!11015)))

(declare-fun b!604433 () Bool)

(declare-fun res!261670 () Bool)

(assert (=> b!604433 (=> (not res!261670) (not e!366257))))

(assert (=> b!604433 (= res!261670 (= (size!4754 (_1!3724 (v!16454 lt!257818))) (size!4755 (originalCharacters!1244 (_1!3724 (v!16454 lt!257818))))))))

(assert (= (and start!57532 res!261681) b!604411))

(assert (= (and b!604411 res!261669) b!604431))

(assert (= (and b!604431 res!261678) b!604425))

(assert (= (and b!604425 res!261682) b!604418))

(assert (= (and b!604418 res!261671) b!604423))

(assert (= (and b!604423 res!261672) b!604419))

(assert (= (and b!604419 res!261667) b!604410))

(assert (= (and b!604410 res!261668) b!604420))

(assert (= (and b!604420 res!261677) b!604416))

(assert (= (and b!604416 c!112090) b!604422))

(assert (= (and b!604416 (not c!112090)) b!604432))

(assert (= (and b!604416 res!261666) b!604433))

(assert (= (and b!604433 res!261670) b!604407))

(assert (= (and b!604416 (not res!261679)) b!604424))

(assert (= (and b!604424 res!261680) b!604414))

(assert (= (and b!604414 res!261676) b!604426))

(assert (= (and b!604424 (not res!261665)) b!604409))

(assert (= (and b!604409 (not res!261673)) b!604413))

(assert (= (and b!604413 (not res!261675)) b!604430))

(assert (= (and b!604430 (not res!261674)) b!604406))

(assert (= (and start!57532 ((_ is Cons!6043) suffix!1342)) b!604428))

(assert (= b!604415 b!604412))

(assert (= b!604421 b!604415))

(assert (= (and start!57532 ((_ is Cons!6044) rules!3103)) b!604421))

(assert (= b!604408 b!604429))

(assert (= b!604427 b!604408))

(assert (= start!57532 b!604427))

(assert (= (and start!57532 ((_ is Cons!6043) input!2705)) b!604417))

(declare-fun m!870017 () Bool)

(assert (=> b!604427 m!870017))

(declare-fun m!870019 () Bool)

(assert (=> b!604431 m!870019))

(declare-fun m!870021 () Bool)

(assert (=> b!604408 m!870021))

(declare-fun m!870023 () Bool)

(assert (=> b!604408 m!870023))

(declare-fun m!870025 () Bool)

(assert (=> b!604433 m!870025))

(declare-fun m!870027 () Bool)

(assert (=> b!604420 m!870027))

(declare-fun m!870029 () Bool)

(assert (=> b!604419 m!870029))

(declare-fun m!870031 () Bool)

(assert (=> start!57532 m!870031))

(declare-fun m!870033 () Bool)

(assert (=> b!604425 m!870033))

(declare-fun m!870035 () Bool)

(assert (=> b!604410 m!870035))

(declare-fun m!870037 () Bool)

(assert (=> b!604406 m!870037))

(declare-fun m!870039 () Bool)

(assert (=> b!604415 m!870039))

(declare-fun m!870041 () Bool)

(assert (=> b!604415 m!870041))

(declare-fun m!870043 () Bool)

(assert (=> b!604424 m!870043))

(declare-fun m!870045 () Bool)

(assert (=> b!604424 m!870045))

(declare-fun m!870047 () Bool)

(assert (=> b!604424 m!870047))

(declare-fun m!870049 () Bool)

(assert (=> b!604424 m!870049))

(declare-fun m!870051 () Bool)

(assert (=> b!604424 m!870051))

(declare-fun m!870053 () Bool)

(assert (=> b!604424 m!870053))

(declare-fun m!870055 () Bool)

(assert (=> b!604424 m!870055))

(declare-fun m!870057 () Bool)

(assert (=> b!604423 m!870057))

(declare-fun m!870059 () Bool)

(assert (=> b!604423 m!870059))

(declare-fun m!870061 () Bool)

(assert (=> b!604423 m!870061))

(declare-fun m!870063 () Bool)

(assert (=> b!604418 m!870063))

(assert (=> b!604418 m!870063))

(declare-fun m!870065 () Bool)

(assert (=> b!604418 m!870065))

(declare-fun m!870067 () Bool)

(assert (=> b!604416 m!870067))

(declare-fun m!870069 () Bool)

(assert (=> b!604416 m!870069))

(declare-fun m!870071 () Bool)

(assert (=> b!604416 m!870071))

(declare-fun m!870073 () Bool)

(assert (=> b!604416 m!870073))

(declare-fun m!870075 () Bool)

(assert (=> b!604416 m!870075))

(declare-fun m!870077 () Bool)

(assert (=> b!604416 m!870077))

(declare-fun m!870079 () Bool)

(assert (=> b!604416 m!870079))

(declare-fun m!870081 () Bool)

(assert (=> b!604416 m!870081))

(declare-fun m!870083 () Bool)

(assert (=> b!604416 m!870083))

(declare-fun m!870085 () Bool)

(assert (=> b!604416 m!870085))

(declare-fun m!870087 () Bool)

(assert (=> b!604416 m!870087))

(declare-fun m!870089 () Bool)

(assert (=> b!604416 m!870089))

(declare-fun m!870091 () Bool)

(assert (=> b!604416 m!870091))

(declare-fun m!870093 () Bool)

(assert (=> b!604416 m!870093))

(declare-fun m!870095 () Bool)

(assert (=> b!604416 m!870095))

(assert (=> b!604416 m!870083))

(declare-fun m!870097 () Bool)

(assert (=> b!604416 m!870097))

(declare-fun m!870099 () Bool)

(assert (=> b!604416 m!870099))

(declare-fun m!870101 () Bool)

(assert (=> b!604416 m!870101))

(declare-fun m!870103 () Bool)

(assert (=> b!604416 m!870103))

(declare-fun m!870105 () Bool)

(assert (=> b!604416 m!870105))

(declare-fun m!870107 () Bool)

(assert (=> b!604416 m!870107))

(assert (=> b!604416 m!870091))

(declare-fun m!870109 () Bool)

(assert (=> b!604416 m!870109))

(assert (=> b!604416 m!870069))

(declare-fun m!870111 () Bool)

(assert (=> b!604416 m!870111))

(declare-fun m!870113 () Bool)

(assert (=> b!604416 m!870113))

(declare-fun m!870115 () Bool)

(assert (=> b!604416 m!870115))

(declare-fun m!870117 () Bool)

(assert (=> b!604416 m!870117))

(declare-fun m!870119 () Bool)

(assert (=> b!604416 m!870119))

(declare-fun m!870121 () Bool)

(assert (=> b!604413 m!870121))

(declare-fun m!870123 () Bool)

(assert (=> b!604411 m!870123))

(declare-fun m!870125 () Bool)

(assert (=> b!604414 m!870125))

(declare-fun m!870127 () Bool)

(assert (=> b!604430 m!870127))

(check-sat (not b!604419) b_and!59771 (not b!604418) (not b!604431) (not b_next!17225) (not b!604415) (not b!604425) (not b_next!17227) b_and!59769 (not start!57532) b_and!59767 (not b!604410) (not b!604420) (not b!604421) (not b!604408) (not b!604413) (not b!604417) (not b!604427) (not b!604406) (not b!604416) (not b!604423) (not b_next!17223) b_and!59773 (not b!604430) (not b!604428) (not b!604411) (not b!604424) (not b_next!17221) (not b!604414) (not b!604433) tp_is_empty!3433)
(check-sat b_and!59771 (not b_next!17225) (not b_next!17221) (not b_next!17227) b_and!59769 b_and!59767 (not b_next!17223) b_and!59773)
(get-model)

(declare-fun d!212856 () Bool)

(assert (=> d!212856 (= (inv!7675 (tag!1467 (rule!1983 token!491))) (= (mod (str.len (value!39183 (tag!1467 (rule!1983 token!491)))) 2) 0))))

(assert (=> b!604408 d!212856))

(declare-fun d!212858 () Bool)

(declare-fun res!261699 () Bool)

(declare-fun e!366288 () Bool)

(assert (=> d!212858 (=> (not res!261699) (not e!366288))))

(declare-fun semiInverseModEq!481 (Int Int) Bool)

(assert (=> d!212858 (= res!261699 (semiInverseModEq!481 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))))))

(assert (=> d!212858 (= (inv!7678 (transformation!1205 (rule!1983 token!491))) e!366288)))

(declare-fun b!604442 () Bool)

(declare-fun equivClasses!464 (Int Int) Bool)

(assert (=> b!604442 (= e!366288 (equivClasses!464 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))))))

(assert (= (and d!212858 res!261699) b!604442))

(declare-fun m!870137 () Bool)

(assert (=> d!212858 m!870137))

(declare-fun m!870139 () Bool)

(assert (=> b!604442 m!870139))

(assert (=> b!604408 d!212858))

(declare-fun d!212860 () Bool)

(declare-fun list!2539 (Conc!1922) List!6053)

(assert (=> d!212860 (= (list!2538 (charsOf!834 token!491)) (list!2539 (c!112092 (charsOf!834 token!491))))))

(declare-fun bs!71182 () Bool)

(assert (= bs!71182 d!212860))

(declare-fun m!870141 () Bool)

(assert (=> bs!71182 m!870141))

(assert (=> b!604418 d!212860))

(declare-fun d!212862 () Bool)

(declare-fun lt!257839 () BalanceConc!3852)

(assert (=> d!212862 (= (list!2538 lt!257839) (originalCharacters!1244 token!491))))

(declare-fun dynLambda!3502 (Int TokenValue!1229) BalanceConc!3852)

(assert (=> d!212862 (= lt!257839 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (value!39209 token!491)))))

(assert (=> d!212862 (= (charsOf!834 token!491) lt!257839)))

(declare-fun b_lambda!23893 () Bool)

(assert (=> (not b_lambda!23893) (not d!212862)))

(declare-fun t!80267 () Bool)

(declare-fun tb!52743 () Bool)

(assert (=> (and b!604412 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80267) tb!52743))

(declare-fun b!604447 () Bool)

(declare-fun e!366291 () Bool)

(declare-fun tp!187943 () Bool)

(declare-fun inv!7682 (Conc!1922) Bool)

(assert (=> b!604447 (= e!366291 (and (inv!7682 (c!112092 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (value!39209 token!491)))) tp!187943))))

(declare-fun result!59338 () Bool)

(declare-fun inv!7683 (BalanceConc!3852) Bool)

(assert (=> tb!52743 (= result!59338 (and (inv!7683 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (value!39209 token!491))) e!366291))))

(assert (= tb!52743 b!604447))

(declare-fun m!870143 () Bool)

(assert (=> b!604447 m!870143))

(declare-fun m!870145 () Bool)

(assert (=> tb!52743 m!870145))

(assert (=> d!212862 t!80267))

(declare-fun b_and!59775 () Bool)

(assert (= b_and!59769 (and (=> t!80267 result!59338) b_and!59775)))

(declare-fun t!80269 () Bool)

(declare-fun tb!52745 () Bool)

(assert (=> (and b!604429 (= (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80269) tb!52745))

(declare-fun result!59342 () Bool)

(assert (= result!59342 result!59338))

(assert (=> d!212862 t!80269))

(declare-fun b_and!59777 () Bool)

(assert (= b_and!59773 (and (=> t!80269 result!59342) b_and!59777)))

(declare-fun m!870147 () Bool)

(assert (=> d!212862 m!870147))

(declare-fun m!870149 () Bool)

(assert (=> d!212862 m!870149))

(assert (=> b!604418 d!212862))

(declare-fun d!212864 () Bool)

(declare-fun e!366297 () Bool)

(assert (=> d!212864 e!366297))

(declare-fun res!261705 () Bool)

(assert (=> d!212864 (=> (not res!261705) (not e!366297))))

(declare-fun lt!257842 () List!6053)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1093 (List!6053) (InoxSet C!4000))

(assert (=> d!212864 (= res!261705 (= (content!1093 lt!257842) ((_ map or) (content!1093 lt!257824) (content!1093 suffix!1342))))))

(declare-fun e!366296 () List!6053)

(assert (=> d!212864 (= lt!257842 e!366296)))

(declare-fun c!112096 () Bool)

(assert (=> d!212864 (= c!112096 ((_ is Nil!6043) lt!257824))))

(assert (=> d!212864 (= (++!1693 lt!257824 suffix!1342) lt!257842)))

(declare-fun b!604456 () Bool)

(assert (=> b!604456 (= e!366296 suffix!1342)))

(declare-fun b!604457 () Bool)

(assert (=> b!604457 (= e!366296 (Cons!6043 (h!11444 lt!257824) (++!1693 (t!80264 lt!257824) suffix!1342)))))

(declare-fun b!604458 () Bool)

(declare-fun res!261704 () Bool)

(assert (=> b!604458 (=> (not res!261704) (not e!366297))))

(assert (=> b!604458 (= res!261704 (= (size!4755 lt!257842) (+ (size!4755 lt!257824) (size!4755 suffix!1342))))))

(declare-fun b!604459 () Bool)

(assert (=> b!604459 (= e!366297 (or (not (= suffix!1342 Nil!6043)) (= lt!257842 lt!257824)))))

(assert (= (and d!212864 c!112096) b!604456))

(assert (= (and d!212864 (not c!112096)) b!604457))

(assert (= (and d!212864 res!261705) b!604458))

(assert (= (and b!604458 res!261704) b!604459))

(declare-fun m!870151 () Bool)

(assert (=> d!212864 m!870151))

(declare-fun m!870153 () Bool)

(assert (=> d!212864 m!870153))

(declare-fun m!870155 () Bool)

(assert (=> d!212864 m!870155))

(declare-fun m!870157 () Bool)

(assert (=> b!604457 m!870157))

(declare-fun m!870159 () Bool)

(assert (=> b!604458 m!870159))

(assert (=> b!604458 m!870115))

(declare-fun m!870161 () Bool)

(assert (=> b!604458 m!870161))

(assert (=> b!604420 d!212864))

(declare-fun b!604493 () Bool)

(declare-fun e!366320 () Bool)

(assert (=> b!604493 (= e!366320 true)))

(declare-fun d!212866 () Bool)

(assert (=> d!212866 e!366320))

(assert (= d!212866 b!604493))

(declare-fun order!4825 () Int)

(declare-fun order!4827 () Int)

(declare-fun lambda!16114 () Int)

(declare-fun dynLambda!3503 (Int Int) Int)

(declare-fun dynLambda!3504 (Int Int) Int)

(assert (=> b!604493 (< (dynLambda!3503 order!4825 (toValue!2108 (transformation!1205 (rule!1983 token!491)))) (dynLambda!3504 order!4827 lambda!16114))))

(declare-fun order!4829 () Int)

(declare-fun dynLambda!3505 (Int Int) Int)

(assert (=> b!604493 (< (dynLambda!3505 order!4829 (toChars!1967 (transformation!1205 (rule!1983 token!491)))) (dynLambda!3504 order!4827 lambda!16114))))

(declare-fun dynLambda!3506 (Int BalanceConc!3852) TokenValue!1229)

(assert (=> d!212866 (= (list!2538 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 token!491))) lt!257814))) (list!2538 lt!257814))))

(declare-fun lt!257852 () Unit!11012)

(declare-fun ForallOf!120 (Int BalanceConc!3852) Unit!11012)

(assert (=> d!212866 (= lt!257852 (ForallOf!120 lambda!16114 lt!257814))))

(assert (=> d!212866 (= (lemmaSemiInverse!238 (transformation!1205 (rule!1983 token!491)) lt!257814) lt!257852)))

(declare-fun b_lambda!23901 () Bool)

(assert (=> (not b_lambda!23901) (not d!212866)))

(declare-fun t!80283 () Bool)

(declare-fun tb!52759 () Bool)

(assert (=> (and b!604412 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80283) tb!52759))

(declare-fun e!366321 () Bool)

(declare-fun tp!187948 () Bool)

(declare-fun b!604494 () Bool)

(assert (=> b!604494 (= e!366321 (and (inv!7682 (c!112092 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 token!491))) lt!257814)))) tp!187948))))

(declare-fun result!59360 () Bool)

(assert (=> tb!52759 (= result!59360 (and (inv!7683 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 token!491))) lt!257814))) e!366321))))

(assert (= tb!52759 b!604494))

(declare-fun m!870201 () Bool)

(assert (=> b!604494 m!870201))

(declare-fun m!870203 () Bool)

(assert (=> tb!52759 m!870203))

(assert (=> d!212866 t!80283))

(declare-fun b_and!59791 () Bool)

(assert (= b_and!59775 (and (=> t!80283 result!59360) b_and!59791)))

(declare-fun t!80285 () Bool)

(declare-fun tb!52761 () Bool)

(assert (=> (and b!604429 (= (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80285) tb!52761))

(declare-fun result!59362 () Bool)

(assert (= result!59362 result!59360))

(assert (=> d!212866 t!80285))

(declare-fun b_and!59793 () Bool)

(assert (= b_and!59777 (and (=> t!80285 result!59362) b_and!59793)))

(declare-fun b_lambda!23903 () Bool)

(assert (=> (not b_lambda!23903) (not d!212866)))

(declare-fun tb!52763 () Bool)

(declare-fun t!80287 () Bool)

(assert (=> (and b!604412 (= (toValue!2108 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))) t!80287) tb!52763))

(declare-fun result!59364 () Bool)

(assert (=> tb!52763 (= result!59364 (inv!21 (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 token!491))) lt!257814)))))

(declare-fun m!870211 () Bool)

(assert (=> tb!52763 m!870211))

(assert (=> d!212866 t!80287))

(declare-fun b_and!59795 () Bool)

(assert (= b_and!59767 (and (=> t!80287 result!59364) b_and!59795)))

(declare-fun t!80289 () Bool)

(declare-fun tb!52765 () Bool)

(assert (=> (and b!604429 (= (toValue!2108 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))) t!80289) tb!52765))

(declare-fun result!59368 () Bool)

(assert (= result!59368 result!59364))

(assert (=> d!212866 t!80289))

(declare-fun b_and!59797 () Bool)

(assert (= b_and!59771 (and (=> t!80289 result!59368) b_and!59797)))

(declare-fun m!870213 () Bool)

(assert (=> d!212866 m!870213))

(assert (=> d!212866 m!870213))

(declare-fun m!870215 () Bool)

(assert (=> d!212866 m!870215))

(declare-fun m!870217 () Bool)

(assert (=> d!212866 m!870217))

(assert (=> d!212866 m!870215))

(declare-fun m!870219 () Bool)

(assert (=> d!212866 m!870219))

(declare-fun m!870221 () Bool)

(assert (=> d!212866 m!870221))

(assert (=> b!604430 d!212866))

(declare-fun d!212878 () Bool)

(assert (=> d!212878 (= (get!2322 lt!257806) (v!16454 lt!257806))))

(assert (=> b!604419 d!212878))

(declare-fun d!212882 () Bool)

(assert (=> d!212882 (isPrefix!833 lt!257824 (++!1693 lt!257824 suffix!1342))))

(declare-fun lt!257858 () Unit!11012)

(declare-fun choose!4417 (List!6053 List!6053) Unit!11012)

(assert (=> d!212882 (= lt!257858 (choose!4417 lt!257824 suffix!1342))))

(assert (=> d!212882 (= (lemmaConcatTwoListThenFirstIsPrefix!678 lt!257824 suffix!1342) lt!257858)))

(declare-fun bs!71185 () Bool)

(assert (= bs!71185 d!212882))

(assert (=> bs!71185 m!870027))

(assert (=> bs!71185 m!870027))

(declare-fun m!870225 () Bool)

(assert (=> bs!71185 m!870225))

(declare-fun m!870227 () Bool)

(assert (=> bs!71185 m!870227))

(assert (=> b!604416 d!212882))

(declare-fun d!212884 () Bool)

(declare-fun lt!257861 () Int)

(assert (=> d!212884 (>= lt!257861 0)))

(declare-fun e!366329 () Int)

(assert (=> d!212884 (= lt!257861 e!366329)))

(declare-fun c!112103 () Bool)

(assert (=> d!212884 (= c!112103 ((_ is Nil!6043) lt!257830))))

(assert (=> d!212884 (= (size!4755 lt!257830) lt!257861)))

(declare-fun b!604503 () Bool)

(assert (=> b!604503 (= e!366329 0)))

(declare-fun b!604504 () Bool)

(assert (=> b!604504 (= e!366329 (+ 1 (size!4755 (t!80264 lt!257830))))))

(assert (= (and d!212884 c!112103) b!604503))

(assert (= (and d!212884 (not c!112103)) b!604504))

(declare-fun m!870229 () Bool)

(assert (=> b!604504 m!870229))

(assert (=> b!604416 d!212884))

(declare-fun d!212886 () Bool)

(assert (=> d!212886 (ruleValid!403 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))))))

(declare-fun lt!257864 () Unit!11012)

(declare-fun choose!4419 (LexerInterface!1091 Rule!2210 List!6054) Unit!11012)

(assert (=> d!212886 (= lt!257864 (choose!4419 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) rules!3103))))

(assert (=> d!212886 (contains!1419 rules!3103 (rule!1983 (_1!3724 (v!16454 lt!257818))))))

(assert (=> d!212886 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!250 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) rules!3103) lt!257864)))

(declare-fun bs!71186 () Bool)

(assert (= bs!71186 d!212886))

(assert (=> bs!71186 m!870079))

(declare-fun m!870231 () Bool)

(assert (=> bs!71186 m!870231))

(declare-fun m!870233 () Bool)

(assert (=> bs!71186 m!870233))

(assert (=> b!604416 d!212886))

(declare-fun b!604516 () Bool)

(declare-fun e!366338 () Bool)

(assert (=> b!604516 (= e!366338 (>= (size!4755 input!2705) (size!4755 input!2705)))))

(declare-fun b!604513 () Bool)

(declare-fun e!366336 () Bool)

(declare-fun e!366337 () Bool)

(assert (=> b!604513 (= e!366336 e!366337)))

(declare-fun res!261729 () Bool)

(assert (=> b!604513 (=> (not res!261729) (not e!366337))))

(assert (=> b!604513 (= res!261729 (not ((_ is Nil!6043) input!2705)))))

(declare-fun b!604514 () Bool)

(declare-fun res!261728 () Bool)

(assert (=> b!604514 (=> (not res!261728) (not e!366337))))

(declare-fun head!1279 (List!6053) C!4000)

(assert (=> b!604514 (= res!261728 (= (head!1279 input!2705) (head!1279 input!2705)))))

(declare-fun d!212888 () Bool)

(assert (=> d!212888 e!366338))

(declare-fun res!261727 () Bool)

(assert (=> d!212888 (=> res!261727 e!366338)))

(declare-fun lt!257867 () Bool)

(assert (=> d!212888 (= res!261727 (not lt!257867))))

(assert (=> d!212888 (= lt!257867 e!366336)))

(declare-fun res!261726 () Bool)

(assert (=> d!212888 (=> res!261726 e!366336)))

(assert (=> d!212888 (= res!261726 ((_ is Nil!6043) input!2705))))

(assert (=> d!212888 (= (isPrefix!833 input!2705 input!2705) lt!257867)))

(declare-fun b!604515 () Bool)

(declare-fun tail!809 (List!6053) List!6053)

(assert (=> b!604515 (= e!366337 (isPrefix!833 (tail!809 input!2705) (tail!809 input!2705)))))

(assert (= (and d!212888 (not res!261726)) b!604513))

(assert (= (and b!604513 res!261729) b!604514))

(assert (= (and b!604514 res!261728) b!604515))

(assert (= (and d!212888 (not res!261727)) b!604516))

(declare-fun m!870235 () Bool)

(assert (=> b!604516 m!870235))

(assert (=> b!604516 m!870235))

(declare-fun m!870237 () Bool)

(assert (=> b!604514 m!870237))

(assert (=> b!604514 m!870237))

(declare-fun m!870239 () Bool)

(assert (=> b!604515 m!870239))

(assert (=> b!604515 m!870239))

(assert (=> b!604515 m!870239))

(assert (=> b!604515 m!870239))

(declare-fun m!870241 () Bool)

(assert (=> b!604515 m!870241))

(assert (=> b!604416 d!212888))

(declare-fun d!212890 () Bool)

(declare-fun res!261734 () Bool)

(declare-fun e!366341 () Bool)

(assert (=> d!212890 (=> (not res!261734) (not e!366341))))

(declare-fun validRegex!533 (Regex!1539) Bool)

(assert (=> d!212890 (= res!261734 (validRegex!533 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))))))

(assert (=> d!212890 (= (ruleValid!403 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818)))) e!366341)))

(declare-fun b!604521 () Bool)

(declare-fun res!261735 () Bool)

(assert (=> b!604521 (=> (not res!261735) (not e!366341))))

(declare-fun nullable!438 (Regex!1539) Bool)

(assert (=> b!604521 (= res!261735 (not (nullable!438 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))))))

(declare-fun b!604522 () Bool)

(assert (=> b!604522 (= e!366341 (not (= (tag!1467 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (String!7889 ""))))))

(assert (= (and d!212890 res!261734) b!604521))

(assert (= (and b!604521 res!261735) b!604522))

(declare-fun m!870245 () Bool)

(assert (=> d!212890 m!870245))

(declare-fun m!870247 () Bool)

(assert (=> b!604521 m!870247))

(assert (=> b!604416 d!212890))

(declare-fun d!212896 () Bool)

(assert (=> d!212896 (isPrefix!833 lt!257830 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))))))

(declare-fun lt!257871 () Unit!11012)

(assert (=> d!212896 (= lt!257871 (choose!4417 lt!257830 (_2!3724 (v!16454 lt!257818))))))

(assert (=> d!212896 (= (lemmaConcatTwoListThenFirstIsPrefix!678 lt!257830 (_2!3724 (v!16454 lt!257818))) lt!257871)))

(declare-fun bs!71188 () Bool)

(assert (= bs!71188 d!212896))

(assert (=> bs!71188 m!870069))

(assert (=> bs!71188 m!870069))

(assert (=> bs!71188 m!870071))

(declare-fun m!870249 () Bool)

(assert (=> bs!71188 m!870249))

(assert (=> b!604416 d!212896))

(declare-fun b!604526 () Bool)

(declare-fun e!366344 () Bool)

(assert (=> b!604526 (= e!366344 (>= (size!4755 lt!257807) (size!4755 input!2705)))))

(declare-fun b!604523 () Bool)

(declare-fun e!366342 () Bool)

(declare-fun e!366343 () Bool)

(assert (=> b!604523 (= e!366342 e!366343)))

(declare-fun res!261739 () Bool)

(assert (=> b!604523 (=> (not res!261739) (not e!366343))))

(assert (=> b!604523 (= res!261739 (not ((_ is Nil!6043) lt!257807)))))

(declare-fun b!604524 () Bool)

(declare-fun res!261738 () Bool)

(assert (=> b!604524 (=> (not res!261738) (not e!366343))))

(assert (=> b!604524 (= res!261738 (= (head!1279 input!2705) (head!1279 lt!257807)))))

(declare-fun d!212898 () Bool)

(assert (=> d!212898 e!366344))

(declare-fun res!261737 () Bool)

(assert (=> d!212898 (=> res!261737 e!366344)))

(declare-fun lt!257872 () Bool)

(assert (=> d!212898 (= res!261737 (not lt!257872))))

(assert (=> d!212898 (= lt!257872 e!366342)))

(declare-fun res!261736 () Bool)

(assert (=> d!212898 (=> res!261736 e!366342)))

(assert (=> d!212898 (= res!261736 ((_ is Nil!6043) input!2705))))

(assert (=> d!212898 (= (isPrefix!833 input!2705 lt!257807) lt!257872)))

(declare-fun b!604525 () Bool)

(assert (=> b!604525 (= e!366343 (isPrefix!833 (tail!809 input!2705) (tail!809 lt!257807)))))

(assert (= (and d!212898 (not res!261736)) b!604523))

(assert (= (and b!604523 res!261739) b!604524))

(assert (= (and b!604524 res!261738) b!604525))

(assert (= (and d!212898 (not res!261737)) b!604526))

(declare-fun m!870251 () Bool)

(assert (=> b!604526 m!870251))

(assert (=> b!604526 m!870235))

(assert (=> b!604524 m!870237))

(declare-fun m!870253 () Bool)

(assert (=> b!604524 m!870253))

(assert (=> b!604525 m!870239))

(declare-fun m!870255 () Bool)

(assert (=> b!604525 m!870255))

(assert (=> b!604525 m!870239))

(assert (=> b!604525 m!870255))

(declare-fun m!870257 () Bool)

(assert (=> b!604525 m!870257))

(assert (=> b!604416 d!212898))

(declare-fun d!212900 () Bool)

(assert (=> d!212900 (isPrefix!833 input!2705 input!2705)))

(declare-fun lt!257875 () Unit!11012)

(declare-fun choose!4420 (List!6053 List!6053) Unit!11012)

(assert (=> d!212900 (= lt!257875 (choose!4420 input!2705 input!2705))))

(assert (=> d!212900 (= (lemmaIsPrefixRefl!569 input!2705 input!2705) lt!257875)))

(declare-fun bs!71189 () Bool)

(assert (= bs!71189 d!212900))

(assert (=> bs!71189 m!870099))

(declare-fun m!870259 () Bool)

(assert (=> bs!71189 m!870259))

(assert (=> b!604416 d!212900))

(declare-fun b!604530 () Bool)

(declare-fun e!366347 () Bool)

(assert (=> b!604530 (= e!366347 (>= (size!4755 lt!257807) (size!4755 lt!257824)))))

(declare-fun b!604527 () Bool)

(declare-fun e!366345 () Bool)

(declare-fun e!366346 () Bool)

(assert (=> b!604527 (= e!366345 e!366346)))

(declare-fun res!261743 () Bool)

(assert (=> b!604527 (=> (not res!261743) (not e!366346))))

(assert (=> b!604527 (= res!261743 (not ((_ is Nil!6043) lt!257807)))))

(declare-fun b!604528 () Bool)

(declare-fun res!261742 () Bool)

(assert (=> b!604528 (=> (not res!261742) (not e!366346))))

(assert (=> b!604528 (= res!261742 (= (head!1279 lt!257824) (head!1279 lt!257807)))))

(declare-fun d!212902 () Bool)

(assert (=> d!212902 e!366347))

(declare-fun res!261741 () Bool)

(assert (=> d!212902 (=> res!261741 e!366347)))

(declare-fun lt!257876 () Bool)

(assert (=> d!212902 (= res!261741 (not lt!257876))))

(assert (=> d!212902 (= lt!257876 e!366345)))

(declare-fun res!261740 () Bool)

(assert (=> d!212902 (=> res!261740 e!366345)))

(assert (=> d!212902 (= res!261740 ((_ is Nil!6043) lt!257824))))

(assert (=> d!212902 (= (isPrefix!833 lt!257824 lt!257807) lt!257876)))

(declare-fun b!604529 () Bool)

(assert (=> b!604529 (= e!366346 (isPrefix!833 (tail!809 lt!257824) (tail!809 lt!257807)))))

(assert (= (and d!212902 (not res!261740)) b!604527))

(assert (= (and b!604527 res!261743) b!604528))

(assert (= (and b!604528 res!261742) b!604529))

(assert (= (and d!212902 (not res!261741)) b!604530))

(assert (=> b!604530 m!870251))

(assert (=> b!604530 m!870115))

(declare-fun m!870261 () Bool)

(assert (=> b!604528 m!870261))

(assert (=> b!604528 m!870253))

(declare-fun m!870263 () Bool)

(assert (=> b!604529 m!870263))

(assert (=> b!604529 m!870255))

(assert (=> b!604529 m!870263))

(assert (=> b!604529 m!870255))

(declare-fun m!870265 () Bool)

(assert (=> b!604529 m!870265))

(assert (=> b!604416 d!212902))

(declare-fun d!212904 () Bool)

(declare-fun e!366350 () Bool)

(assert (=> d!212904 e!366350))

(declare-fun res!261746 () Bool)

(assert (=> d!212904 (=> (not res!261746) (not e!366350))))

(assert (=> d!212904 (= res!261746 (semiInverseModEq!481 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))))))

(declare-fun Unit!11016 () Unit!11012)

(assert (=> d!212904 (= (lemmaInv!313 (transformation!1205 (rule!1983 token!491))) Unit!11016)))

(declare-fun b!604533 () Bool)

(assert (=> b!604533 (= e!366350 (equivClasses!464 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))))))

(assert (= (and d!212904 res!261746) b!604533))

(assert (=> d!212904 m!870137))

(assert (=> b!604533 m!870139))

(assert (=> b!604416 d!212904))

(declare-fun d!212906 () Bool)

(assert (=> d!212906 (= (size!4754 token!491) (size!4755 (originalCharacters!1244 token!491)))))

(declare-fun Unit!11017 () Unit!11012)

(assert (=> d!212906 (= (lemmaCharactersSize!264 token!491) Unit!11017)))

(declare-fun bs!71190 () Bool)

(assert (= bs!71190 d!212906))

(assert (=> bs!71190 m!870125))

(assert (=> b!604416 d!212906))

(declare-fun d!212908 () Bool)

(declare-fun lt!257879 () List!6053)

(assert (=> d!212908 (= (++!1693 lt!257830 lt!257879) input!2705)))

(declare-fun e!366353 () List!6053)

(assert (=> d!212908 (= lt!257879 e!366353)))

(declare-fun c!112106 () Bool)

(assert (=> d!212908 (= c!112106 ((_ is Cons!6043) lt!257830))))

(assert (=> d!212908 (>= (size!4755 input!2705) (size!4755 lt!257830))))

(assert (=> d!212908 (= (getSuffix!350 input!2705 lt!257830) lt!257879)))

(declare-fun b!604538 () Bool)

(assert (=> b!604538 (= e!366353 (getSuffix!350 (tail!809 input!2705) (t!80264 lt!257830)))))

(declare-fun b!604539 () Bool)

(assert (=> b!604539 (= e!366353 input!2705)))

(assert (= (and d!212908 c!112106) b!604538))

(assert (= (and d!212908 (not c!112106)) b!604539))

(declare-fun m!870267 () Bool)

(assert (=> d!212908 m!870267))

(assert (=> d!212908 m!870235))

(assert (=> d!212908 m!870117))

(assert (=> b!604538 m!870239))

(assert (=> b!604538 m!870239))

(declare-fun m!870269 () Bool)

(assert (=> b!604538 m!870269))

(assert (=> b!604416 d!212908))

(declare-fun d!212910 () Bool)

(declare-fun e!366355 () Bool)

(assert (=> d!212910 e!366355))

(declare-fun res!261748 () Bool)

(assert (=> d!212910 (=> (not res!261748) (not e!366355))))

(declare-fun lt!257880 () List!6053)

(assert (=> d!212910 (= res!261748 (= (content!1093 lt!257880) ((_ map or) (content!1093 lt!257830) (content!1093 (_2!3724 (v!16454 lt!257818))))))))

(declare-fun e!366354 () List!6053)

(assert (=> d!212910 (= lt!257880 e!366354)))

(declare-fun c!112107 () Bool)

(assert (=> d!212910 (= c!112107 ((_ is Nil!6043) lt!257830))))

(assert (=> d!212910 (= (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))) lt!257880)))

(declare-fun b!604540 () Bool)

(assert (=> b!604540 (= e!366354 (_2!3724 (v!16454 lt!257818)))))

(declare-fun b!604541 () Bool)

(assert (=> b!604541 (= e!366354 (Cons!6043 (h!11444 lt!257830) (++!1693 (t!80264 lt!257830) (_2!3724 (v!16454 lt!257818)))))))

(declare-fun b!604542 () Bool)

(declare-fun res!261747 () Bool)

(assert (=> b!604542 (=> (not res!261747) (not e!366355))))

(assert (=> b!604542 (= res!261747 (= (size!4755 lt!257880) (+ (size!4755 lt!257830) (size!4755 (_2!3724 (v!16454 lt!257818))))))))

(declare-fun b!604543 () Bool)

(assert (=> b!604543 (= e!366355 (or (not (= (_2!3724 (v!16454 lt!257818)) Nil!6043)) (= lt!257880 lt!257830)))))

(assert (= (and d!212910 c!112107) b!604540))

(assert (= (and d!212910 (not c!112107)) b!604541))

(assert (= (and d!212910 res!261748) b!604542))

(assert (= (and b!604542 res!261747) b!604543))

(declare-fun m!870271 () Bool)

(assert (=> d!212910 m!870271))

(declare-fun m!870273 () Bool)

(assert (=> d!212910 m!870273))

(declare-fun m!870275 () Bool)

(assert (=> d!212910 m!870275))

(declare-fun m!870277 () Bool)

(assert (=> b!604541 m!870277))

(declare-fun m!870279 () Bool)

(assert (=> b!604542 m!870279))

(assert (=> b!604542 m!870117))

(declare-fun m!870281 () Bool)

(assert (=> b!604542 m!870281))

(assert (=> b!604416 d!212910))

(declare-fun d!212912 () Bool)

(declare-fun e!366356 () Bool)

(assert (=> d!212912 e!366356))

(declare-fun res!261749 () Bool)

(assert (=> d!212912 (=> (not res!261749) (not e!366356))))

(assert (=> d!212912 (= res!261749 (semiInverseModEq!481 (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))))))

(declare-fun Unit!11020 () Unit!11012)

(assert (=> d!212912 (= (lemmaInv!313 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) Unit!11020)))

(declare-fun b!604544 () Bool)

(assert (=> b!604544 (= e!366356 (equivClasses!464 (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))))))

(assert (= (and d!212912 res!261749) b!604544))

(declare-fun m!870283 () Bool)

(assert (=> d!212912 m!870283))

(declare-fun m!870285 () Bool)

(assert (=> b!604544 m!870285))

(assert (=> b!604416 d!212912))

(declare-fun d!212914 () Bool)

(declare-fun fromListB!608 (List!6053) BalanceConc!3852)

(assert (=> d!212914 (= (seqFromList!1381 lt!257830) (fromListB!608 lt!257830))))

(declare-fun bs!71191 () Bool)

(assert (= bs!71191 d!212914))

(declare-fun m!870287 () Bool)

(assert (=> bs!71191 m!870287))

(assert (=> b!604416 d!212914))

(declare-fun d!212916 () Bool)

(assert (=> d!212916 (= (_2!3724 (v!16454 lt!257818)) lt!257816)))

(declare-fun lt!257883 () Unit!11012)

(declare-fun choose!4423 (List!6053 List!6053 List!6053 List!6053 List!6053) Unit!11012)

(assert (=> d!212916 (= lt!257883 (choose!4423 lt!257830 (_2!3724 (v!16454 lt!257818)) lt!257830 lt!257816 input!2705))))

(assert (=> d!212916 (isPrefix!833 lt!257830 input!2705)))

(assert (=> d!212916 (= (lemmaSamePrefixThenSameSuffix!546 lt!257830 (_2!3724 (v!16454 lt!257818)) lt!257830 lt!257816 input!2705) lt!257883)))

(declare-fun bs!71192 () Bool)

(assert (= bs!71192 d!212916))

(declare-fun m!870289 () Bool)

(assert (=> bs!71192 m!870289))

(declare-fun m!870291 () Bool)

(assert (=> bs!71192 m!870291))

(assert (=> b!604416 d!212916))

(declare-fun d!212918 () Bool)

(assert (=> d!212918 (= (list!2538 (charsOf!834 (_1!3724 (v!16454 lt!257818)))) (list!2539 (c!112092 (charsOf!834 (_1!3724 (v!16454 lt!257818))))))))

(declare-fun bs!71193 () Bool)

(assert (= bs!71193 d!212918))

(declare-fun m!870293 () Bool)

(assert (=> bs!71193 m!870293))

(assert (=> b!604416 d!212918))

(declare-fun d!212920 () Bool)

(assert (=> d!212920 (= (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (seqFromList!1381 lt!257830)) (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (seqFromList!1381 lt!257830)))))

(declare-fun b_lambda!23907 () Bool)

(assert (=> (not b_lambda!23907) (not d!212920)))

(declare-fun t!80291 () Bool)

(declare-fun tb!52767 () Bool)

(assert (=> (and b!604412 (= (toValue!2108 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80291) tb!52767))

(declare-fun result!59370 () Bool)

(assert (=> tb!52767 (= result!59370 (inv!21 (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (seqFromList!1381 lt!257830))))))

(declare-fun m!870295 () Bool)

(assert (=> tb!52767 m!870295))

(assert (=> d!212920 t!80291))

(declare-fun b_and!59803 () Bool)

(assert (= b_and!59795 (and (=> t!80291 result!59370) b_and!59803)))

(declare-fun tb!52769 () Bool)

(declare-fun t!80293 () Bool)

(assert (=> (and b!604429 (= (toValue!2108 (transformation!1205 (rule!1983 token!491))) (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80293) tb!52769))

(declare-fun result!59372 () Bool)

(assert (= result!59372 result!59370))

(assert (=> d!212920 t!80293))

(declare-fun b_and!59805 () Bool)

(assert (= b_and!59797 (and (=> t!80293 result!59372) b_and!59805)))

(assert (=> d!212920 m!870083))

(declare-fun m!870297 () Bool)

(assert (=> d!212920 m!870297))

(assert (=> b!604416 d!212920))

(declare-fun d!212922 () Bool)

(declare-fun lt!257884 () BalanceConc!3852)

(assert (=> d!212922 (= (list!2538 lt!257884) (originalCharacters!1244 (_1!3724 (v!16454 lt!257818))))))

(assert (=> d!212922 (= lt!257884 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (value!39209 (_1!3724 (v!16454 lt!257818)))))))

(assert (=> d!212922 (= (charsOf!834 (_1!3724 (v!16454 lt!257818))) lt!257884)))

(declare-fun b_lambda!23909 () Bool)

(assert (=> (not b_lambda!23909) (not d!212922)))

(declare-fun t!80295 () Bool)

(declare-fun tb!52771 () Bool)

(assert (=> (and b!604412 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80295) tb!52771))

(declare-fun b!604545 () Bool)

(declare-fun e!366358 () Bool)

(declare-fun tp!187949 () Bool)

(assert (=> b!604545 (= e!366358 (and (inv!7682 (c!112092 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (value!39209 (_1!3724 (v!16454 lt!257818)))))) tp!187949))))

(declare-fun result!59374 () Bool)

(assert (=> tb!52771 (= result!59374 (and (inv!7683 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818))))) (value!39209 (_1!3724 (v!16454 lt!257818))))) e!366358))))

(assert (= tb!52771 b!604545))

(declare-fun m!870299 () Bool)

(assert (=> b!604545 m!870299))

(declare-fun m!870301 () Bool)

(assert (=> tb!52771 m!870301))

(assert (=> d!212922 t!80295))

(declare-fun b_and!59807 () Bool)

(assert (= b_and!59791 (and (=> t!80295 result!59374) b_and!59807)))

(declare-fun t!80297 () Bool)

(declare-fun tb!52773 () Bool)

(assert (=> (and b!604429 (= (toChars!1967 (transformation!1205 (rule!1983 token!491))) (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80297) tb!52773))

(declare-fun result!59376 () Bool)

(assert (= result!59376 result!59374))

(assert (=> d!212922 t!80297))

(declare-fun b_and!59809 () Bool)

(assert (= b_and!59793 (and (=> t!80297 result!59376) b_and!59809)))

(declare-fun m!870303 () Bool)

(assert (=> d!212922 m!870303))

(declare-fun m!870305 () Bool)

(assert (=> d!212922 m!870305))

(assert (=> b!604416 d!212922))

(declare-fun d!212924 () Bool)

(assert (=> d!212924 (and (= lt!257824 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!257887 () Unit!11012)

(declare-fun choose!4424 (List!6053 List!6053 List!6053 List!6053) Unit!11012)

(assert (=> d!212924 (= lt!257887 (choose!4424 lt!257824 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!212924 (= (++!1693 lt!257824 suffix!1342) (++!1693 input!2705 suffix!1342))))

(assert (=> d!212924 (= (lemmaConcatSameAndSameSizesThenSameLists!278 lt!257824 suffix!1342 input!2705 suffix!1342) lt!257887)))

(declare-fun bs!71194 () Bool)

(assert (= bs!71194 d!212924))

(declare-fun m!870307 () Bool)

(assert (=> bs!71194 m!870307))

(assert (=> bs!71194 m!870027))

(assert (=> bs!71194 m!870061))

(assert (=> b!604416 d!212924))

(declare-fun b!604549 () Bool)

(declare-fun e!366361 () Bool)

(assert (=> b!604549 (= e!366361 (>= (size!4755 lt!257820) (size!4755 input!2705)))))

(declare-fun b!604546 () Bool)

(declare-fun e!366359 () Bool)

(declare-fun e!366360 () Bool)

(assert (=> b!604546 (= e!366359 e!366360)))

(declare-fun res!261753 () Bool)

(assert (=> b!604546 (=> (not res!261753) (not e!366360))))

(assert (=> b!604546 (= res!261753 (not ((_ is Nil!6043) lt!257820)))))

(declare-fun b!604547 () Bool)

(declare-fun res!261752 () Bool)

(assert (=> b!604547 (=> (not res!261752) (not e!366360))))

(assert (=> b!604547 (= res!261752 (= (head!1279 input!2705) (head!1279 lt!257820)))))

(declare-fun d!212926 () Bool)

(assert (=> d!212926 e!366361))

(declare-fun res!261751 () Bool)

(assert (=> d!212926 (=> res!261751 e!366361)))

(declare-fun lt!257888 () Bool)

(assert (=> d!212926 (= res!261751 (not lt!257888))))

(assert (=> d!212926 (= lt!257888 e!366359)))

(declare-fun res!261750 () Bool)

(assert (=> d!212926 (=> res!261750 e!366359)))

(assert (=> d!212926 (= res!261750 ((_ is Nil!6043) input!2705))))

(assert (=> d!212926 (= (isPrefix!833 input!2705 lt!257820) lt!257888)))

(declare-fun b!604548 () Bool)

(assert (=> b!604548 (= e!366360 (isPrefix!833 (tail!809 input!2705) (tail!809 lt!257820)))))

(assert (= (and d!212926 (not res!261750)) b!604546))

(assert (= (and b!604546 res!261753) b!604547))

(assert (= (and b!604547 res!261752) b!604548))

(assert (= (and d!212926 (not res!261751)) b!604549))

(declare-fun m!870309 () Bool)

(assert (=> b!604549 m!870309))

(assert (=> b!604549 m!870235))

(assert (=> b!604547 m!870237))

(declare-fun m!870311 () Bool)

(assert (=> b!604547 m!870311))

(assert (=> b!604548 m!870239))

(declare-fun m!870313 () Bool)

(assert (=> b!604548 m!870313))

(assert (=> b!604548 m!870239))

(assert (=> b!604548 m!870313))

(declare-fun m!870315 () Bool)

(assert (=> b!604548 m!870315))

(assert (=> b!604416 d!212926))

(declare-fun d!212928 () Bool)

(assert (=> d!212928 (ruleValid!403 thiss!22590 (rule!1983 token!491))))

(declare-fun lt!257889 () Unit!11012)

(assert (=> d!212928 (= lt!257889 (choose!4419 thiss!22590 (rule!1983 token!491) rules!3103))))

(assert (=> d!212928 (contains!1419 rules!3103 (rule!1983 token!491))))

(assert (=> d!212928 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!250 thiss!22590 (rule!1983 token!491) rules!3103) lt!257889)))

(declare-fun bs!71195 () Bool)

(assert (= bs!71195 d!212928))

(assert (=> bs!71195 m!870073))

(declare-fun m!870317 () Bool)

(assert (=> bs!71195 m!870317))

(assert (=> bs!71195 m!870045))

(assert (=> b!604416 d!212928))

(declare-fun d!212930 () Bool)

(assert (=> d!212930 (isPrefix!833 input!2705 (++!1693 input!2705 suffix!1342))))

(declare-fun lt!257890 () Unit!11012)

(assert (=> d!212930 (= lt!257890 (choose!4417 input!2705 suffix!1342))))

(assert (=> d!212930 (= (lemmaConcatTwoListThenFirstIsPrefix!678 input!2705 suffix!1342) lt!257890)))

(declare-fun bs!71196 () Bool)

(assert (= bs!71196 d!212930))

(assert (=> bs!71196 m!870061))

(assert (=> bs!71196 m!870061))

(declare-fun m!870319 () Bool)

(assert (=> bs!71196 m!870319))

(declare-fun m!870321 () Bool)

(assert (=> bs!71196 m!870321))

(assert (=> b!604416 d!212930))

(declare-fun d!212932 () Bool)

(declare-fun lt!257891 () Int)

(assert (=> d!212932 (>= lt!257891 0)))

(declare-fun e!366362 () Int)

(assert (=> d!212932 (= lt!257891 e!366362)))

(declare-fun c!112108 () Bool)

(assert (=> d!212932 (= c!112108 ((_ is Nil!6043) lt!257824))))

(assert (=> d!212932 (= (size!4755 lt!257824) lt!257891)))

(declare-fun b!604550 () Bool)

(assert (=> b!604550 (= e!366362 0)))

(declare-fun b!604551 () Bool)

(assert (=> b!604551 (= e!366362 (+ 1 (size!4755 (t!80264 lt!257824))))))

(assert (= (and d!212932 c!112108) b!604550))

(assert (= (and d!212932 (not c!112108)) b!604551))

(declare-fun m!870323 () Bool)

(assert (=> b!604551 m!870323))

(assert (=> b!604416 d!212932))

(declare-fun d!212934 () Bool)

(declare-fun res!261754 () Bool)

(declare-fun e!366363 () Bool)

(assert (=> d!212934 (=> (not res!261754) (not e!366363))))

(assert (=> d!212934 (= res!261754 (validRegex!533 (regex!1205 (rule!1983 token!491))))))

(assert (=> d!212934 (= (ruleValid!403 thiss!22590 (rule!1983 token!491)) e!366363)))

(declare-fun b!604552 () Bool)

(declare-fun res!261755 () Bool)

(assert (=> b!604552 (=> (not res!261755) (not e!366363))))

(assert (=> b!604552 (= res!261755 (not (nullable!438 (regex!1205 (rule!1983 token!491)))))))

(declare-fun b!604553 () Bool)

(assert (=> b!604553 (= e!366363 (not (= (tag!1467 (rule!1983 token!491)) (String!7889 ""))))))

(assert (= (and d!212934 res!261754) b!604552))

(assert (= (and b!604552 res!261755) b!604553))

(declare-fun m!870325 () Bool)

(assert (=> d!212934 m!870325))

(declare-fun m!870327 () Bool)

(assert (=> b!604552 m!870327))

(assert (=> b!604416 d!212934))

(declare-fun b!604557 () Bool)

(declare-fun e!366366 () Bool)

(assert (=> b!604557 (= e!366366 (>= (size!4755 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818)))) (size!4755 lt!257830)))))

(declare-fun b!604554 () Bool)

(declare-fun e!366364 () Bool)

(declare-fun e!366365 () Bool)

(assert (=> b!604554 (= e!366364 e!366365)))

(declare-fun res!261759 () Bool)

(assert (=> b!604554 (=> (not res!261759) (not e!366365))))

(assert (=> b!604554 (= res!261759 (not ((_ is Nil!6043) (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))))))))

(declare-fun b!604555 () Bool)

(declare-fun res!261758 () Bool)

(assert (=> b!604555 (=> (not res!261758) (not e!366365))))

(assert (=> b!604555 (= res!261758 (= (head!1279 lt!257830) (head!1279 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))))))))

(declare-fun d!212936 () Bool)

(assert (=> d!212936 e!366366))

(declare-fun res!261757 () Bool)

(assert (=> d!212936 (=> res!261757 e!366366)))

(declare-fun lt!257892 () Bool)

(assert (=> d!212936 (= res!261757 (not lt!257892))))

(assert (=> d!212936 (= lt!257892 e!366364)))

(declare-fun res!261756 () Bool)

(assert (=> d!212936 (=> res!261756 e!366364)))

(assert (=> d!212936 (= res!261756 ((_ is Nil!6043) lt!257830))))

(assert (=> d!212936 (= (isPrefix!833 lt!257830 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818)))) lt!257892)))

(declare-fun b!604556 () Bool)

(assert (=> b!604556 (= e!366365 (isPrefix!833 (tail!809 lt!257830) (tail!809 (++!1693 lt!257830 (_2!3724 (v!16454 lt!257818))))))))

(assert (= (and d!212936 (not res!261756)) b!604554))

(assert (= (and b!604554 res!261759) b!604555))

(assert (= (and b!604555 res!261758) b!604556))

(assert (= (and d!212936 (not res!261757)) b!604557))

(assert (=> b!604557 m!870069))

(declare-fun m!870329 () Bool)

(assert (=> b!604557 m!870329))

(assert (=> b!604557 m!870117))

(declare-fun m!870331 () Bool)

(assert (=> b!604555 m!870331))

(assert (=> b!604555 m!870069))

(declare-fun m!870333 () Bool)

(assert (=> b!604555 m!870333))

(declare-fun m!870335 () Bool)

(assert (=> b!604556 m!870335))

(assert (=> b!604556 m!870069))

(declare-fun m!870337 () Bool)

(assert (=> b!604556 m!870337))

(assert (=> b!604556 m!870335))

(assert (=> b!604556 m!870337))

(declare-fun m!870339 () Bool)

(assert (=> b!604556 m!870339))

(assert (=> b!604416 d!212936))

(declare-fun d!212938 () Bool)

(assert (=> d!212938 (= (size!4754 (_1!3724 (v!16454 lt!257818))) (size!4755 (originalCharacters!1244 (_1!3724 (v!16454 lt!257818)))))))

(declare-fun Unit!11022 () Unit!11012)

(assert (=> d!212938 (= (lemmaCharactersSize!264 (_1!3724 (v!16454 lt!257818))) Unit!11022)))

(declare-fun bs!71197 () Bool)

(assert (= bs!71197 d!212938))

(assert (=> bs!71197 m!870025))

(assert (=> b!604416 d!212938))

(declare-fun d!212940 () Bool)

(assert (=> d!212940 (= (inv!7675 (tag!1467 (h!11445 rules!3103))) (= (mod (str.len (value!39183 (tag!1467 (h!11445 rules!3103)))) 2) 0))))

(assert (=> b!604415 d!212940))

(declare-fun d!212942 () Bool)

(declare-fun res!261760 () Bool)

(declare-fun e!366367 () Bool)

(assert (=> d!212942 (=> (not res!261760) (not e!366367))))

(assert (=> d!212942 (= res!261760 (semiInverseModEq!481 (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (h!11445 rules!3103)))))))

(assert (=> d!212942 (= (inv!7678 (transformation!1205 (h!11445 rules!3103))) e!366367)))

(declare-fun b!604558 () Bool)

(assert (=> b!604558 (= e!366367 (equivClasses!464 (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (h!11445 rules!3103)))))))

(assert (= (and d!212942 res!261760) b!604558))

(declare-fun m!870341 () Bool)

(assert (=> d!212942 m!870341))

(declare-fun m!870343 () Bool)

(assert (=> b!604558 m!870343))

(assert (=> b!604415 d!212942))

(declare-fun b!604587 () Bool)

(declare-fun e!366387 () Bool)

(declare-fun e!366384 () Bool)

(assert (=> b!604587 (= e!366387 e!366384)))

(declare-fun res!261784 () Bool)

(assert (=> b!604587 (=> (not res!261784) (not e!366384))))

(declare-fun lt!257895 () Bool)

(assert (=> b!604587 (= res!261784 (not lt!257895))))

(declare-fun b!604588 () Bool)

(declare-fun res!261779 () Bool)

(assert (=> b!604588 (=> res!261779 e!366387)))

(declare-fun e!366382 () Bool)

(assert (=> b!604588 (= res!261779 e!366382)))

(declare-fun res!261778 () Bool)

(assert (=> b!604588 (=> (not res!261778) (not e!366382))))

(assert (=> b!604588 (= res!261778 lt!257895)))

(declare-fun b!604589 () Bool)

(declare-fun e!366385 () Bool)

(assert (=> b!604589 (= e!366385 (not (= (head!1279 lt!257824) (c!112091 (regex!1205 (rule!1983 token!491))))))))

(declare-fun b!604590 () Bool)

(declare-fun res!261783 () Bool)

(assert (=> b!604590 (=> (not res!261783) (not e!366382))))

(assert (=> b!604590 (= res!261783 (isEmpty!4362 (tail!809 lt!257824)))))

(declare-fun b!604591 () Bool)

(declare-fun res!261781 () Bool)

(assert (=> b!604591 (=> (not res!261781) (not e!366382))))

(declare-fun call!40660 () Bool)

(assert (=> b!604591 (= res!261781 (not call!40660))))

(declare-fun b!604592 () Bool)

(declare-fun res!261777 () Bool)

(assert (=> b!604592 (=> res!261777 e!366385)))

(assert (=> b!604592 (= res!261777 (not (isEmpty!4362 (tail!809 lt!257824))))))

(declare-fun bm!40655 () Bool)

(assert (=> bm!40655 (= call!40660 (isEmpty!4362 lt!257824))))

(declare-fun d!212944 () Bool)

(declare-fun e!366386 () Bool)

(assert (=> d!212944 e!366386))

(declare-fun c!112115 () Bool)

(assert (=> d!212944 (= c!112115 ((_ is EmptyExpr!1539) (regex!1205 (rule!1983 token!491))))))

(declare-fun e!366383 () Bool)

(assert (=> d!212944 (= lt!257895 e!366383)))

(declare-fun c!112117 () Bool)

(assert (=> d!212944 (= c!112117 (isEmpty!4362 lt!257824))))

(assert (=> d!212944 (validRegex!533 (regex!1205 (rule!1983 token!491)))))

(assert (=> d!212944 (= (matchR!642 (regex!1205 (rule!1983 token!491)) lt!257824) lt!257895)))

(declare-fun b!604593 () Bool)

(declare-fun e!366388 () Bool)

(assert (=> b!604593 (= e!366386 e!366388)))

(declare-fun c!112116 () Bool)

(assert (=> b!604593 (= c!112116 ((_ is EmptyLang!1539) (regex!1205 (rule!1983 token!491))))))

(declare-fun b!604594 () Bool)

(assert (=> b!604594 (= e!366383 (nullable!438 (regex!1205 (rule!1983 token!491))))))

(declare-fun b!604595 () Bool)

(assert (=> b!604595 (= e!366388 (not lt!257895))))

(declare-fun b!604596 () Bool)

(assert (=> b!604596 (= e!366382 (= (head!1279 lt!257824) (c!112091 (regex!1205 (rule!1983 token!491)))))))

(declare-fun b!604597 () Bool)

(assert (=> b!604597 (= e!366386 (= lt!257895 call!40660))))

(declare-fun b!604598 () Bool)

(assert (=> b!604598 (= e!366384 e!366385)))

(declare-fun res!261780 () Bool)

(assert (=> b!604598 (=> res!261780 e!366385)))

(assert (=> b!604598 (= res!261780 call!40660)))

(declare-fun b!604599 () Bool)

(declare-fun derivativeStep!325 (Regex!1539 C!4000) Regex!1539)

(assert (=> b!604599 (= e!366383 (matchR!642 (derivativeStep!325 (regex!1205 (rule!1983 token!491)) (head!1279 lt!257824)) (tail!809 lt!257824)))))

(declare-fun b!604600 () Bool)

(declare-fun res!261782 () Bool)

(assert (=> b!604600 (=> res!261782 e!366387)))

(assert (=> b!604600 (= res!261782 (not ((_ is ElementMatch!1539) (regex!1205 (rule!1983 token!491)))))))

(assert (=> b!604600 (= e!366388 e!366387)))

(assert (= (and d!212944 c!112117) b!604594))

(assert (= (and d!212944 (not c!112117)) b!604599))

(assert (= (and d!212944 c!112115) b!604597))

(assert (= (and d!212944 (not c!112115)) b!604593))

(assert (= (and b!604593 c!112116) b!604595))

(assert (= (and b!604593 (not c!112116)) b!604600))

(assert (= (and b!604600 (not res!261782)) b!604588))

(assert (= (and b!604588 res!261778) b!604591))

(assert (= (and b!604591 res!261781) b!604590))

(assert (= (and b!604590 res!261783) b!604596))

(assert (= (and b!604588 (not res!261779)) b!604587))

(assert (= (and b!604587 res!261784) b!604598))

(assert (= (and b!604598 (not res!261780)) b!604592))

(assert (= (and b!604592 (not res!261777)) b!604589))

(assert (= (or b!604597 b!604591 b!604598) bm!40655))

(assert (=> b!604596 m!870261))

(assert (=> b!604599 m!870261))

(assert (=> b!604599 m!870261))

(declare-fun m!870345 () Bool)

(assert (=> b!604599 m!870345))

(assert (=> b!604599 m!870263))

(assert (=> b!604599 m!870345))

(assert (=> b!604599 m!870263))

(declare-fun m!870347 () Bool)

(assert (=> b!604599 m!870347))

(assert (=> b!604589 m!870261))

(assert (=> d!212944 m!870121))

(assert (=> d!212944 m!870325))

(assert (=> bm!40655 m!870121))

(assert (=> b!604592 m!870263))

(assert (=> b!604592 m!870263))

(declare-fun m!870349 () Bool)

(assert (=> b!604592 m!870349))

(assert (=> b!604590 m!870263))

(assert (=> b!604590 m!870263))

(assert (=> b!604590 m!870349))

(assert (=> b!604594 m!870327))

(assert (=> b!604406 d!212944))

(declare-fun b!604611 () Bool)

(declare-fun e!366397 () Bool)

(declare-fun inv!17 (TokenValue!1229) Bool)

(assert (=> b!604611 (= e!366397 (inv!17 (value!39209 token!491)))))

(declare-fun d!212946 () Bool)

(declare-fun c!112122 () Bool)

(assert (=> d!212946 (= c!112122 ((_ is IntegerValue!3687) (value!39209 token!491)))))

(declare-fun e!366396 () Bool)

(assert (=> d!212946 (= (inv!21 (value!39209 token!491)) e!366396)))

(declare-fun b!604612 () Bool)

(declare-fun e!366395 () Bool)

(declare-fun inv!15 (TokenValue!1229) Bool)

(assert (=> b!604612 (= e!366395 (inv!15 (value!39209 token!491)))))

(declare-fun b!604613 () Bool)

(assert (=> b!604613 (= e!366396 e!366397)))

(declare-fun c!112123 () Bool)

(assert (=> b!604613 (= c!112123 ((_ is IntegerValue!3688) (value!39209 token!491)))))

(declare-fun b!604614 () Bool)

(declare-fun res!261787 () Bool)

(assert (=> b!604614 (=> res!261787 e!366395)))

(assert (=> b!604614 (= res!261787 (not ((_ is IntegerValue!3689) (value!39209 token!491))))))

(assert (=> b!604614 (= e!366397 e!366395)))

(declare-fun b!604615 () Bool)

(declare-fun inv!16 (TokenValue!1229) Bool)

(assert (=> b!604615 (= e!366396 (inv!16 (value!39209 token!491)))))

(assert (= (and d!212946 c!112122) b!604615))

(assert (= (and d!212946 (not c!112122)) b!604613))

(assert (= (and b!604613 c!112123) b!604611))

(assert (= (and b!604613 (not c!112123)) b!604614))

(assert (= (and b!604614 (not res!261787)) b!604612))

(declare-fun m!870351 () Bool)

(assert (=> b!604611 m!870351))

(declare-fun m!870353 () Bool)

(assert (=> b!604612 m!870353))

(declare-fun m!870355 () Bool)

(assert (=> b!604615 m!870355))

(assert (=> b!604427 d!212946))

(declare-fun d!212948 () Bool)

(assert (=> d!212948 (= (seqFromList!1381 lt!257824) (fromListB!608 lt!257824))))

(declare-fun bs!71198 () Bool)

(assert (= bs!71198 d!212948))

(declare-fun m!870357 () Bool)

(assert (=> bs!71198 m!870357))

(assert (=> b!604424 d!212948))

(declare-fun b!604726 () Bool)

(declare-fun res!261870 () Bool)

(declare-fun e!366463 () Bool)

(assert (=> b!604726 (=> (not res!261870) (not e!366463))))

(declare-fun lt!257960 () Option!1556)

(assert (=> b!604726 (= res!261870 (< (size!4755 (_2!3724 (get!2322 lt!257960))) (size!4755 input!2705)))))

(declare-fun b!604728 () Bool)

(declare-fun res!261873 () Bool)

(assert (=> b!604728 (=> (not res!261873) (not e!366463))))

(assert (=> b!604728 (= res!261873 (= (rule!1983 (_1!3724 (get!2322 lt!257960))) (rule!1983 (_1!3724 (v!16454 lt!257818)))))))

(declare-fun b!604729 () Bool)

(assert (=> b!604729 (= e!366463 (= (size!4754 (_1!3724 (get!2322 lt!257960))) (size!4755 (originalCharacters!1244 (_1!3724 (get!2322 lt!257960))))))))

(declare-fun b!604730 () Bool)

(declare-fun e!366464 () Bool)

(assert (=> b!604730 (= e!366464 e!366463)))

(declare-fun res!261872 () Bool)

(assert (=> b!604730 (=> (not res!261872) (not e!366463))))

(assert (=> b!604730 (= res!261872 (matchR!642 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!257960))))))))

(declare-fun b!604731 () Bool)

(declare-fun e!366462 () Option!1556)

(declare-datatypes ((tuple2!6924 0))(
  ( (tuple2!6925 (_1!3726 List!6053) (_2!3726 List!6053)) )
))
(declare-fun lt!257956 () tuple2!6924)

(declare-fun size!4757 (BalanceConc!3852) Int)

(assert (=> b!604731 (= e!366462 (Some!1555 (tuple2!6921 (Token!2147 (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (seqFromList!1381 (_1!3726 lt!257956))) (rule!1983 (_1!3724 (v!16454 lt!257818))) (size!4757 (seqFromList!1381 (_1!3726 lt!257956))) (_1!3726 lt!257956)) (_2!3726 lt!257956))))))

(declare-fun lt!257958 () Unit!11012)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!183 (Regex!1539 List!6053) Unit!11012)

(assert (=> b!604731 (= lt!257958 (longestMatchIsAcceptedByMatchOrIsEmpty!183 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) input!2705))))

(declare-fun res!261874 () Bool)

(declare-fun findLongestMatchInner!199 (Regex!1539 List!6053 Int List!6053 List!6053 Int) tuple2!6924)

(assert (=> b!604731 (= res!261874 (isEmpty!4362 (_1!3726 (findLongestMatchInner!199 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) Nil!6043 (size!4755 Nil!6043) input!2705 input!2705 (size!4755 input!2705)))))))

(declare-fun e!366461 () Bool)

(assert (=> b!604731 (=> res!261874 e!366461)))

(assert (=> b!604731 e!366461))

(declare-fun lt!257959 () Unit!11012)

(assert (=> b!604731 (= lt!257959 lt!257958)))

(declare-fun lt!257957 () Unit!11012)

(assert (=> b!604731 (= lt!257957 (lemmaSemiInverse!238 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (seqFromList!1381 (_1!3726 lt!257956))))))

(declare-fun b!604727 () Bool)

(assert (=> b!604727 (= e!366462 None!1555)))

(declare-fun d!212950 () Bool)

(assert (=> d!212950 e!366464))

(declare-fun res!261871 () Bool)

(assert (=> d!212950 (=> res!261871 e!366464)))

(declare-fun isEmpty!4364 (Option!1556) Bool)

(assert (=> d!212950 (= res!261871 (isEmpty!4364 lt!257960))))

(assert (=> d!212950 (= lt!257960 e!366462)))

(declare-fun c!112138 () Bool)

(assert (=> d!212950 (= c!112138 (isEmpty!4362 (_1!3726 lt!257956)))))

(declare-fun findLongestMatch!178 (Regex!1539 List!6053) tuple2!6924)

(assert (=> d!212950 (= lt!257956 (findLongestMatch!178 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) input!2705))))

(assert (=> d!212950 (ruleValid!403 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))))))

(assert (=> d!212950 (= (maxPrefixOneRule!452 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) input!2705) lt!257960)))

(declare-fun b!604732 () Bool)

(declare-fun res!261875 () Bool)

(assert (=> b!604732 (=> (not res!261875) (not e!366463))))

(assert (=> b!604732 (= res!261875 (= (++!1693 (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!257960)))) (_2!3724 (get!2322 lt!257960))) input!2705))))

(declare-fun b!604733 () Bool)

(assert (=> b!604733 (= e!366461 (matchR!642 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (_1!3726 (findLongestMatchInner!199 (regex!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) Nil!6043 (size!4755 Nil!6043) input!2705 input!2705 (size!4755 input!2705)))))))

(declare-fun b!604734 () Bool)

(declare-fun res!261869 () Bool)

(assert (=> b!604734 (=> (not res!261869) (not e!366463))))

(assert (=> b!604734 (= res!261869 (= (value!39209 (_1!3724 (get!2322 lt!257960))) (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (get!2322 lt!257960)))) (seqFromList!1381 (originalCharacters!1244 (_1!3724 (get!2322 lt!257960)))))))))

(assert (= (and d!212950 c!112138) b!604727))

(assert (= (and d!212950 (not c!112138)) b!604731))

(assert (= (and b!604731 (not res!261874)) b!604733))

(assert (= (and d!212950 (not res!261871)) b!604730))

(assert (= (and b!604730 res!261872) b!604732))

(assert (= (and b!604732 res!261875) b!604726))

(assert (= (and b!604726 res!261870) b!604728))

(assert (= (and b!604728 res!261873) b!604734))

(assert (= (and b!604734 res!261869) b!604729))

(declare-fun m!870517 () Bool)

(assert (=> b!604728 m!870517))

(declare-fun m!870519 () Bool)

(assert (=> d!212950 m!870519))

(declare-fun m!870521 () Bool)

(assert (=> d!212950 m!870521))

(declare-fun m!870523 () Bool)

(assert (=> d!212950 m!870523))

(assert (=> d!212950 m!870079))

(assert (=> b!604730 m!870517))

(declare-fun m!870525 () Bool)

(assert (=> b!604730 m!870525))

(assert (=> b!604730 m!870525))

(declare-fun m!870527 () Bool)

(assert (=> b!604730 m!870527))

(assert (=> b!604730 m!870527))

(declare-fun m!870529 () Bool)

(assert (=> b!604730 m!870529))

(assert (=> b!604732 m!870517))

(assert (=> b!604732 m!870525))

(assert (=> b!604732 m!870525))

(assert (=> b!604732 m!870527))

(assert (=> b!604732 m!870527))

(declare-fun m!870531 () Bool)

(assert (=> b!604732 m!870531))

(assert (=> b!604729 m!870517))

(declare-fun m!870533 () Bool)

(assert (=> b!604729 m!870533))

(declare-fun m!870535 () Bool)

(assert (=> b!604733 m!870535))

(assert (=> b!604733 m!870235))

(assert (=> b!604733 m!870535))

(assert (=> b!604733 m!870235))

(declare-fun m!870537 () Bool)

(assert (=> b!604733 m!870537))

(declare-fun m!870539 () Bool)

(assert (=> b!604733 m!870539))

(assert (=> b!604734 m!870517))

(declare-fun m!870541 () Bool)

(assert (=> b!604734 m!870541))

(assert (=> b!604734 m!870541))

(declare-fun m!870543 () Bool)

(assert (=> b!604734 m!870543))

(declare-fun m!870545 () Bool)

(assert (=> b!604731 m!870545))

(declare-fun m!870547 () Bool)

(assert (=> b!604731 m!870547))

(assert (=> b!604731 m!870235))

(assert (=> b!604731 m!870535))

(assert (=> b!604731 m!870235))

(assert (=> b!604731 m!870537))

(declare-fun m!870549 () Bool)

(assert (=> b!604731 m!870549))

(assert (=> b!604731 m!870549))

(declare-fun m!870551 () Bool)

(assert (=> b!604731 m!870551))

(assert (=> b!604731 m!870549))

(declare-fun m!870553 () Bool)

(assert (=> b!604731 m!870553))

(assert (=> b!604731 m!870535))

(assert (=> b!604731 m!870549))

(declare-fun m!870555 () Bool)

(assert (=> b!604731 m!870555))

(assert (=> b!604726 m!870517))

(declare-fun m!870557 () Bool)

(assert (=> b!604726 m!870557))

(assert (=> b!604726 m!870235))

(assert (=> b!604424 d!212950))

(declare-fun d!213012 () Bool)

(declare-fun lt!257965 () Bool)

(declare-fun content!1096 (List!6054) (InoxSet Rule!2210))

(assert (=> d!213012 (= lt!257965 (select (content!1096 rules!3103) (rule!1983 token!491)))))

(declare-fun e!366483 () Bool)

(assert (=> d!213012 (= lt!257965 e!366483)))

(declare-fun res!261897 () Bool)

(assert (=> d!213012 (=> (not res!261897) (not e!366483))))

(assert (=> d!213012 (= res!261897 ((_ is Cons!6044) rules!3103))))

(assert (=> d!213012 (= (contains!1419 rules!3103 (rule!1983 token!491)) lt!257965)))

(declare-fun b!604767 () Bool)

(declare-fun e!366484 () Bool)

(assert (=> b!604767 (= e!366483 e!366484)))

(declare-fun res!261896 () Bool)

(assert (=> b!604767 (=> res!261896 e!366484)))

(assert (=> b!604767 (= res!261896 (= (h!11445 rules!3103) (rule!1983 token!491)))))

(declare-fun b!604768 () Bool)

(assert (=> b!604768 (= e!366484 (contains!1419 (t!80265 rules!3103) (rule!1983 token!491)))))

(assert (= (and d!213012 res!261897) b!604767))

(assert (= (and b!604767 (not res!261896)) b!604768))

(declare-fun m!870559 () Bool)

(assert (=> d!213012 m!870559))

(declare-fun m!870561 () Bool)

(assert (=> d!213012 m!870561))

(declare-fun m!870563 () Bool)

(assert (=> b!604768 m!870563))

(assert (=> b!604424 d!213012))

(declare-fun d!213014 () Bool)

(assert (=> d!213014 (= (maxPrefixOneRule!452 thiss!22590 (rule!1983 (_1!3724 (v!16454 lt!257818))) input!2705) (Some!1555 (tuple2!6921 (Token!2147 (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))) (seqFromList!1381 lt!257830)) (rule!1983 (_1!3724 (v!16454 lt!257818))) (size!4755 lt!257830) lt!257830) (_2!3724 (v!16454 lt!257818)))))))

(declare-fun lt!257969 () Unit!11012)

(declare-fun choose!4427 (LexerInterface!1091 List!6054 List!6053 List!6053 List!6053 Rule!2210) Unit!11012)

(assert (=> d!213014 (= lt!257969 (choose!4427 thiss!22590 rules!3103 lt!257830 input!2705 (_2!3724 (v!16454 lt!257818)) (rule!1983 (_1!3724 (v!16454 lt!257818)))))))

(assert (=> d!213014 (not (isEmpty!4361 rules!3103))))

(assert (=> d!213014 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!158 thiss!22590 rules!3103 lt!257830 input!2705 (_2!3724 (v!16454 lt!257818)) (rule!1983 (_1!3724 (v!16454 lt!257818)))) lt!257969)))

(declare-fun bs!71211 () Bool)

(assert (= bs!71211 d!213014))

(assert (=> bs!71211 m!870083))

(assert (=> bs!71211 m!870123))

(declare-fun m!870571 () Bool)

(assert (=> bs!71211 m!870571))

(assert (=> bs!71211 m!870051))

(assert (=> bs!71211 m!870117))

(assert (=> bs!71211 m!870083))

(assert (=> bs!71211 m!870097))

(assert (=> b!604424 d!213014))

(declare-fun d!213022 () Bool)

(assert (=> d!213022 (= (apply!1458 (transformation!1205 (rule!1983 token!491)) lt!257814) (dynLambda!3506 (toValue!2108 (transformation!1205 (rule!1983 token!491))) lt!257814))))

(declare-fun b_lambda!23915 () Bool)

(assert (=> (not b_lambda!23915) (not d!213022)))

(assert (=> d!213022 t!80287))

(declare-fun b_and!59819 () Bool)

(assert (= b_and!59803 (and (=> t!80287 result!59364) b_and!59819)))

(assert (=> d!213022 t!80289))

(declare-fun b_and!59821 () Bool)

(assert (= b_and!59805 (and (=> t!80289 result!59368) b_and!59821)))

(assert (=> d!213022 m!870213))

(assert (=> b!604424 d!213022))

(declare-fun d!213024 () Bool)

(assert (=> d!213024 (= suffix!1342 lt!257805)))

(declare-fun lt!257970 () Unit!11012)

(assert (=> d!213024 (= lt!257970 (choose!4423 lt!257824 suffix!1342 lt!257824 lt!257805 lt!257820))))

(assert (=> d!213024 (isPrefix!833 lt!257824 lt!257820)))

(assert (=> d!213024 (= (lemmaSamePrefixThenSameSuffix!546 lt!257824 suffix!1342 lt!257824 lt!257805 lt!257820) lt!257970)))

(declare-fun bs!71212 () Bool)

(assert (= bs!71212 d!213024))

(declare-fun m!870573 () Bool)

(assert (=> bs!71212 m!870573))

(declare-fun m!870575 () Bool)

(assert (=> bs!71212 m!870575))

(assert (=> b!604424 d!213024))

(declare-fun d!213026 () Bool)

(declare-fun lt!257971 () List!6053)

(assert (=> d!213026 (= (++!1693 lt!257824 lt!257971) lt!257820)))

(declare-fun e!366493 () List!6053)

(assert (=> d!213026 (= lt!257971 e!366493)))

(declare-fun c!112148 () Bool)

(assert (=> d!213026 (= c!112148 ((_ is Cons!6043) lt!257824))))

(assert (=> d!213026 (>= (size!4755 lt!257820) (size!4755 lt!257824))))

(assert (=> d!213026 (= (getSuffix!350 lt!257820 lt!257824) lt!257971)))

(declare-fun b!604784 () Bool)

(assert (=> b!604784 (= e!366493 (getSuffix!350 (tail!809 lt!257820) (t!80264 lt!257824)))))

(declare-fun b!604785 () Bool)

(assert (=> b!604785 (= e!366493 lt!257820)))

(assert (= (and d!213026 c!112148) b!604784))

(assert (= (and d!213026 (not c!112148)) b!604785))

(declare-fun m!870577 () Bool)

(assert (=> d!213026 m!870577))

(assert (=> d!213026 m!870309))

(assert (=> d!213026 m!870115))

(assert (=> b!604784 m!870313))

(assert (=> b!604784 m!870313))

(declare-fun m!870579 () Bool)

(assert (=> b!604784 m!870579))

(assert (=> b!604424 d!213026))

(declare-fun d!213028 () Bool)

(assert (=> d!213028 (= (isEmpty!4362 lt!257824) ((_ is Nil!6043) lt!257824))))

(assert (=> b!604413 d!213028))

(declare-fun d!213030 () Bool)

(assert (=> d!213030 (= (isDefined!1367 lt!257806) (not (isEmpty!4364 lt!257806)))))

(declare-fun bs!71213 () Bool)

(assert (= bs!71213 d!213030))

(declare-fun m!870581 () Bool)

(assert (=> bs!71213 m!870581))

(assert (=> b!604423 d!213030))

(declare-fun b!604848 () Bool)

(declare-fun e!366517 () Option!1556)

(declare-fun call!40670 () Option!1556)

(assert (=> b!604848 (= e!366517 call!40670)))

(declare-fun b!604849 () Bool)

(declare-fun res!261951 () Bool)

(declare-fun e!366515 () Bool)

(assert (=> b!604849 (=> (not res!261951) (not e!366515))))

(declare-fun lt!258003 () Option!1556)

(assert (=> b!604849 (= res!261951 (< (size!4755 (_2!3724 (get!2322 lt!258003))) (size!4755 lt!257820)))))

(declare-fun bm!40665 () Bool)

(assert (=> bm!40665 (= call!40670 (maxPrefixOneRule!452 thiss!22590 (h!11445 rules!3103) lt!257820))))

(declare-fun d!213032 () Bool)

(declare-fun e!366518 () Bool)

(assert (=> d!213032 e!366518))

(declare-fun res!261954 () Bool)

(assert (=> d!213032 (=> res!261954 e!366518)))

(assert (=> d!213032 (= res!261954 (isEmpty!4364 lt!258003))))

(assert (=> d!213032 (= lt!258003 e!366517)))

(declare-fun c!112156 () Bool)

(assert (=> d!213032 (= c!112156 (and ((_ is Cons!6044) rules!3103) ((_ is Nil!6044) (t!80265 rules!3103))))))

(declare-fun lt!258007 () Unit!11012)

(declare-fun lt!258006 () Unit!11012)

(assert (=> d!213032 (= lt!258007 lt!258006)))

(assert (=> d!213032 (isPrefix!833 lt!257820 lt!257820)))

(assert (=> d!213032 (= lt!258006 (lemmaIsPrefixRefl!569 lt!257820 lt!257820))))

(declare-fun rulesValidInductive!450 (LexerInterface!1091 List!6054) Bool)

(assert (=> d!213032 (rulesValidInductive!450 thiss!22590 rules!3103)))

(assert (=> d!213032 (= (maxPrefix!789 thiss!22590 rules!3103 lt!257820) lt!258003)))

(declare-fun b!604850 () Bool)

(declare-fun res!261957 () Bool)

(assert (=> b!604850 (=> (not res!261957) (not e!366515))))

(assert (=> b!604850 (= res!261957 (= (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258003)))) (originalCharacters!1244 (_1!3724 (get!2322 lt!258003)))))))

(declare-fun b!604851 () Bool)

(declare-fun lt!258005 () Option!1556)

(declare-fun lt!258004 () Option!1556)

(assert (=> b!604851 (= e!366517 (ite (and ((_ is None!1555) lt!258005) ((_ is None!1555) lt!258004)) None!1555 (ite ((_ is None!1555) lt!258004) lt!258005 (ite ((_ is None!1555) lt!258005) lt!258004 (ite (>= (size!4754 (_1!3724 (v!16454 lt!258005))) (size!4754 (_1!3724 (v!16454 lt!258004)))) lt!258005 lt!258004)))))))

(assert (=> b!604851 (= lt!258005 call!40670)))

(assert (=> b!604851 (= lt!258004 (maxPrefix!789 thiss!22590 (t!80265 rules!3103) lt!257820))))

(declare-fun b!604852 () Bool)

(declare-fun res!261956 () Bool)

(assert (=> b!604852 (=> (not res!261956) (not e!366515))))

(assert (=> b!604852 (= res!261956 (matchR!642 (regex!1205 (rule!1983 (_1!3724 (get!2322 lt!258003)))) (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258003))))))))

(declare-fun b!604853 () Bool)

(declare-fun res!261953 () Bool)

(assert (=> b!604853 (=> (not res!261953) (not e!366515))))

(assert (=> b!604853 (= res!261953 (= (value!39209 (_1!3724 (get!2322 lt!258003))) (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (get!2322 lt!258003)))) (seqFromList!1381 (originalCharacters!1244 (_1!3724 (get!2322 lt!258003)))))))))

(declare-fun b!604854 () Bool)

(assert (=> b!604854 (= e!366515 (contains!1419 rules!3103 (rule!1983 (_1!3724 (get!2322 lt!258003)))))))

(declare-fun b!604855 () Bool)

(assert (=> b!604855 (= e!366518 e!366515)))

(declare-fun res!261952 () Bool)

(assert (=> b!604855 (=> (not res!261952) (not e!366515))))

(assert (=> b!604855 (= res!261952 (isDefined!1367 lt!258003))))

(declare-fun b!604856 () Bool)

(declare-fun res!261955 () Bool)

(assert (=> b!604856 (=> (not res!261955) (not e!366515))))

(assert (=> b!604856 (= res!261955 (= (++!1693 (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258003)))) (_2!3724 (get!2322 lt!258003))) lt!257820))))

(assert (= (and d!213032 c!112156) b!604848))

(assert (= (and d!213032 (not c!112156)) b!604851))

(assert (= (or b!604848 b!604851) bm!40665))

(assert (= (and d!213032 (not res!261954)) b!604855))

(assert (= (and b!604855 res!261952) b!604850))

(assert (= (and b!604850 res!261957) b!604849))

(assert (= (and b!604849 res!261951) b!604856))

(assert (= (and b!604856 res!261955) b!604853))

(assert (= (and b!604853 res!261953) b!604852))

(assert (= (and b!604852 res!261956) b!604854))

(declare-fun m!870657 () Bool)

(assert (=> b!604853 m!870657))

(declare-fun m!870663 () Bool)

(assert (=> b!604853 m!870663))

(assert (=> b!604853 m!870663))

(declare-fun m!870665 () Bool)

(assert (=> b!604853 m!870665))

(declare-fun m!870667 () Bool)

(assert (=> d!213032 m!870667))

(declare-fun m!870669 () Bool)

(assert (=> d!213032 m!870669))

(declare-fun m!870671 () Bool)

(assert (=> d!213032 m!870671))

(declare-fun m!870673 () Bool)

(assert (=> d!213032 m!870673))

(assert (=> b!604852 m!870657))

(declare-fun m!870675 () Bool)

(assert (=> b!604852 m!870675))

(assert (=> b!604852 m!870675))

(declare-fun m!870677 () Bool)

(assert (=> b!604852 m!870677))

(assert (=> b!604852 m!870677))

(declare-fun m!870683 () Bool)

(assert (=> b!604852 m!870683))

(assert (=> b!604856 m!870657))

(assert (=> b!604856 m!870675))

(assert (=> b!604856 m!870675))

(assert (=> b!604856 m!870677))

(assert (=> b!604856 m!870677))

(declare-fun m!870691 () Bool)

(assert (=> b!604856 m!870691))

(assert (=> b!604854 m!870657))

(declare-fun m!870693 () Bool)

(assert (=> b!604854 m!870693))

(declare-fun m!870695 () Bool)

(assert (=> b!604851 m!870695))

(declare-fun m!870697 () Bool)

(assert (=> bm!40665 m!870697))

(assert (=> b!604850 m!870657))

(assert (=> b!604850 m!870675))

(assert (=> b!604850 m!870675))

(assert (=> b!604850 m!870677))

(assert (=> b!604849 m!870657))

(declare-fun m!870701 () Bool)

(assert (=> b!604849 m!870701))

(assert (=> b!604849 m!870309))

(declare-fun m!870703 () Bool)

(assert (=> b!604855 m!870703))

(assert (=> b!604423 d!213032))

(declare-fun d!213050 () Bool)

(declare-fun e!366530 () Bool)

(assert (=> d!213050 e!366530))

(declare-fun res!261964 () Bool)

(assert (=> d!213050 (=> (not res!261964) (not e!366530))))

(declare-fun lt!258011 () List!6053)

(assert (=> d!213050 (= res!261964 (= (content!1093 lt!258011) ((_ map or) (content!1093 input!2705) (content!1093 suffix!1342))))))

(declare-fun e!366529 () List!6053)

(assert (=> d!213050 (= lt!258011 e!366529)))

(declare-fun c!112165 () Bool)

(assert (=> d!213050 (= c!112165 ((_ is Nil!6043) input!2705))))

(assert (=> d!213050 (= (++!1693 input!2705 suffix!1342) lt!258011)))

(declare-fun b!604874 () Bool)

(assert (=> b!604874 (= e!366529 suffix!1342)))

(declare-fun b!604875 () Bool)

(assert (=> b!604875 (= e!366529 (Cons!6043 (h!11444 input!2705) (++!1693 (t!80264 input!2705) suffix!1342)))))

(declare-fun b!604876 () Bool)

(declare-fun res!261963 () Bool)

(assert (=> b!604876 (=> (not res!261963) (not e!366530))))

(assert (=> b!604876 (= res!261963 (= (size!4755 lt!258011) (+ (size!4755 input!2705) (size!4755 suffix!1342))))))

(declare-fun b!604877 () Bool)

(assert (=> b!604877 (= e!366530 (or (not (= suffix!1342 Nil!6043)) (= lt!258011 input!2705)))))

(assert (= (and d!213050 c!112165) b!604874))

(assert (= (and d!213050 (not c!112165)) b!604875))

(assert (= (and d!213050 res!261964) b!604876))

(assert (= (and b!604876 res!261963) b!604877))

(declare-fun m!870707 () Bool)

(assert (=> d!213050 m!870707))

(declare-fun m!870709 () Bool)

(assert (=> d!213050 m!870709))

(assert (=> d!213050 m!870155))

(declare-fun m!870711 () Bool)

(assert (=> b!604875 m!870711))

(declare-fun m!870713 () Bool)

(assert (=> b!604876 m!870713))

(assert (=> b!604876 m!870235))

(assert (=> b!604876 m!870161))

(assert (=> b!604423 d!213050))

(declare-fun d!213052 () Bool)

(assert (=> d!213052 (= (isEmpty!4362 input!2705) ((_ is Nil!6043) input!2705))))

(assert (=> b!604425 d!213052))

(declare-fun d!213054 () Bool)

(declare-fun lt!258012 () Int)

(assert (=> d!213054 (>= lt!258012 0)))

(declare-fun e!366533 () Int)

(assert (=> d!213054 (= lt!258012 e!366533)))

(declare-fun c!112166 () Bool)

(assert (=> d!213054 (= c!112166 ((_ is Nil!6043) (originalCharacters!1244 token!491)))))

(assert (=> d!213054 (= (size!4755 (originalCharacters!1244 token!491)) lt!258012)))

(declare-fun b!604882 () Bool)

(assert (=> b!604882 (= e!366533 0)))

(declare-fun b!604883 () Bool)

(assert (=> b!604883 (= e!366533 (+ 1 (size!4755 (t!80264 (originalCharacters!1244 token!491)))))))

(assert (= (and d!213054 c!112166) b!604882))

(assert (= (and d!213054 (not c!112166)) b!604883))

(declare-fun m!870715 () Bool)

(assert (=> b!604883 m!870715))

(assert (=> b!604414 d!213054))

(declare-fun b!604889 () Bool)

(declare-fun e!366536 () Option!1556)

(declare-fun call!40671 () Option!1556)

(assert (=> b!604889 (= e!366536 call!40671)))

(declare-fun b!604890 () Bool)

(declare-fun res!261965 () Bool)

(declare-fun e!366535 () Bool)

(assert (=> b!604890 (=> (not res!261965) (not e!366535))))

(declare-fun lt!258013 () Option!1556)

(assert (=> b!604890 (= res!261965 (< (size!4755 (_2!3724 (get!2322 lt!258013))) (size!4755 input!2705)))))

(declare-fun bm!40666 () Bool)

(assert (=> bm!40666 (= call!40671 (maxPrefixOneRule!452 thiss!22590 (h!11445 rules!3103) input!2705))))

(declare-fun d!213056 () Bool)

(declare-fun e!366539 () Bool)

(assert (=> d!213056 e!366539))

(declare-fun res!261968 () Bool)

(assert (=> d!213056 (=> res!261968 e!366539)))

(assert (=> d!213056 (= res!261968 (isEmpty!4364 lt!258013))))

(assert (=> d!213056 (= lt!258013 e!366536)))

(declare-fun c!112167 () Bool)

(assert (=> d!213056 (= c!112167 (and ((_ is Cons!6044) rules!3103) ((_ is Nil!6044) (t!80265 rules!3103))))))

(declare-fun lt!258017 () Unit!11012)

(declare-fun lt!258016 () Unit!11012)

(assert (=> d!213056 (= lt!258017 lt!258016)))

(assert (=> d!213056 (isPrefix!833 input!2705 input!2705)))

(assert (=> d!213056 (= lt!258016 (lemmaIsPrefixRefl!569 input!2705 input!2705))))

(assert (=> d!213056 (rulesValidInductive!450 thiss!22590 rules!3103)))

(assert (=> d!213056 (= (maxPrefix!789 thiss!22590 rules!3103 input!2705) lt!258013)))

(declare-fun b!604893 () Bool)

(declare-fun res!261971 () Bool)

(assert (=> b!604893 (=> (not res!261971) (not e!366535))))

(assert (=> b!604893 (= res!261971 (= (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258013)))) (originalCharacters!1244 (_1!3724 (get!2322 lt!258013)))))))

(declare-fun b!604894 () Bool)

(declare-fun lt!258015 () Option!1556)

(declare-fun lt!258014 () Option!1556)

(assert (=> b!604894 (= e!366536 (ite (and ((_ is None!1555) lt!258015) ((_ is None!1555) lt!258014)) None!1555 (ite ((_ is None!1555) lt!258014) lt!258015 (ite ((_ is None!1555) lt!258015) lt!258014 (ite (>= (size!4754 (_1!3724 (v!16454 lt!258015))) (size!4754 (_1!3724 (v!16454 lt!258014)))) lt!258015 lt!258014)))))))

(assert (=> b!604894 (= lt!258015 call!40671)))

(assert (=> b!604894 (= lt!258014 (maxPrefix!789 thiss!22590 (t!80265 rules!3103) input!2705))))

(declare-fun b!604895 () Bool)

(declare-fun res!261970 () Bool)

(assert (=> b!604895 (=> (not res!261970) (not e!366535))))

(assert (=> b!604895 (= res!261970 (matchR!642 (regex!1205 (rule!1983 (_1!3724 (get!2322 lt!258013)))) (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258013))))))))

(declare-fun b!604896 () Bool)

(declare-fun res!261967 () Bool)

(assert (=> b!604896 (=> (not res!261967) (not e!366535))))

(assert (=> b!604896 (= res!261967 (= (value!39209 (_1!3724 (get!2322 lt!258013))) (apply!1458 (transformation!1205 (rule!1983 (_1!3724 (get!2322 lt!258013)))) (seqFromList!1381 (originalCharacters!1244 (_1!3724 (get!2322 lt!258013)))))))))

(declare-fun b!604897 () Bool)

(assert (=> b!604897 (= e!366535 (contains!1419 rules!3103 (rule!1983 (_1!3724 (get!2322 lt!258013)))))))

(declare-fun b!604898 () Bool)

(assert (=> b!604898 (= e!366539 e!366535)))

(declare-fun res!261966 () Bool)

(assert (=> b!604898 (=> (not res!261966) (not e!366535))))

(assert (=> b!604898 (= res!261966 (isDefined!1367 lt!258013))))

(declare-fun b!604899 () Bool)

(declare-fun res!261969 () Bool)

(assert (=> b!604899 (=> (not res!261969) (not e!366535))))

(assert (=> b!604899 (= res!261969 (= (++!1693 (list!2538 (charsOf!834 (_1!3724 (get!2322 lt!258013)))) (_2!3724 (get!2322 lt!258013))) input!2705))))

(assert (= (and d!213056 c!112167) b!604889))

(assert (= (and d!213056 (not c!112167)) b!604894))

(assert (= (or b!604889 b!604894) bm!40666))

(assert (= (and d!213056 (not res!261968)) b!604898))

(assert (= (and b!604898 res!261966) b!604893))

(assert (= (and b!604893 res!261971) b!604890))

(assert (= (and b!604890 res!261965) b!604899))

(assert (= (and b!604899 res!261969) b!604896))

(assert (= (and b!604896 res!261967) b!604895))

(assert (= (and b!604895 res!261970) b!604897))

(declare-fun m!870717 () Bool)

(assert (=> b!604896 m!870717))

(declare-fun m!870719 () Bool)

(assert (=> b!604896 m!870719))

(assert (=> b!604896 m!870719))

(declare-fun m!870721 () Bool)

(assert (=> b!604896 m!870721))

(declare-fun m!870723 () Bool)

(assert (=> d!213056 m!870723))

(assert (=> d!213056 m!870099))

(assert (=> d!213056 m!870095))

(assert (=> d!213056 m!870673))

(assert (=> b!604895 m!870717))

(declare-fun m!870725 () Bool)

(assert (=> b!604895 m!870725))

(assert (=> b!604895 m!870725))

(declare-fun m!870727 () Bool)

(assert (=> b!604895 m!870727))

(assert (=> b!604895 m!870727))

(declare-fun m!870729 () Bool)

(assert (=> b!604895 m!870729))

(assert (=> b!604899 m!870717))

(assert (=> b!604899 m!870725))

(assert (=> b!604899 m!870725))

(assert (=> b!604899 m!870727))

(assert (=> b!604899 m!870727))

(declare-fun m!870731 () Bool)

(assert (=> b!604899 m!870731))

(assert (=> b!604897 m!870717))

(declare-fun m!870733 () Bool)

(assert (=> b!604897 m!870733))

(declare-fun m!870735 () Bool)

(assert (=> b!604894 m!870735))

(declare-fun m!870737 () Bool)

(assert (=> bm!40666 m!870737))

(assert (=> b!604893 m!870717))

(assert (=> b!604893 m!870725))

(assert (=> b!604893 m!870725))

(assert (=> b!604893 m!870727))

(assert (=> b!604890 m!870717))

(declare-fun m!870739 () Bool)

(assert (=> b!604890 m!870739))

(assert (=> b!604890 m!870235))

(declare-fun m!870741 () Bool)

(assert (=> b!604898 m!870741))

(assert (=> b!604410 d!213056))

(declare-fun d!213058 () Bool)

(declare-fun res!261974 () Bool)

(declare-fun e!366558 () Bool)

(assert (=> d!213058 (=> (not res!261974) (not e!366558))))

(declare-fun rulesValid!445 (LexerInterface!1091 List!6054) Bool)

(assert (=> d!213058 (= res!261974 (rulesValid!445 thiss!22590 rules!3103))))

(assert (=> d!213058 (= (rulesInvariant!1054 thiss!22590 rules!3103) e!366558)))

(declare-fun b!604927 () Bool)

(declare-datatypes ((List!6056 0))(
  ( (Nil!6046) (Cons!6046 (h!11447 String!7888) (t!80327 List!6056)) )
))
(declare-fun noDuplicateTag!445 (LexerInterface!1091 List!6054 List!6056) Bool)

(assert (=> b!604927 (= e!366558 (noDuplicateTag!445 thiss!22590 rules!3103 Nil!6046))))

(assert (= (and d!213058 res!261974) b!604927))

(declare-fun m!870747 () Bool)

(assert (=> d!213058 m!870747))

(declare-fun m!870749 () Bool)

(assert (=> b!604927 m!870749))

(assert (=> b!604431 d!213058))

(declare-fun d!213060 () Bool)

(declare-fun res!261979 () Bool)

(declare-fun e!366561 () Bool)

(assert (=> d!213060 (=> (not res!261979) (not e!366561))))

(assert (=> d!213060 (= res!261979 (not (isEmpty!4362 (originalCharacters!1244 token!491))))))

(assert (=> d!213060 (= (inv!7679 token!491) e!366561)))

(declare-fun b!604932 () Bool)

(declare-fun res!261980 () Bool)

(assert (=> b!604932 (=> (not res!261980) (not e!366561))))

(assert (=> b!604932 (= res!261980 (= (originalCharacters!1244 token!491) (list!2538 (dynLambda!3502 (toChars!1967 (transformation!1205 (rule!1983 token!491))) (value!39209 token!491)))))))

(declare-fun b!604933 () Bool)

(assert (=> b!604933 (= e!366561 (= (size!4754 token!491) (size!4755 (originalCharacters!1244 token!491))))))

(assert (= (and d!213060 res!261979) b!604932))

(assert (= (and b!604932 res!261980) b!604933))

(declare-fun b_lambda!23929 () Bool)

(assert (=> (not b_lambda!23929) (not b!604932)))

(assert (=> b!604932 t!80267))

(declare-fun b_and!59831 () Bool)

(assert (= b_and!59807 (and (=> t!80267 result!59338) b_and!59831)))

(assert (=> b!604932 t!80269))

(declare-fun b_and!59833 () Bool)

(assert (= b_and!59809 (and (=> t!80269 result!59342) b_and!59833)))

(declare-fun m!870751 () Bool)

(assert (=> d!213060 m!870751))

(assert (=> b!604932 m!870149))

(assert (=> b!604932 m!870149))

(declare-fun m!870753 () Bool)

(assert (=> b!604932 m!870753))

(assert (=> b!604933 m!870125))

(assert (=> start!57532 d!213060))

(declare-fun d!213062 () Bool)

(declare-fun lt!258018 () Int)

(assert (=> d!213062 (>= lt!258018 0)))

(declare-fun e!366562 () Int)

(assert (=> d!213062 (= lt!258018 e!366562)))

(declare-fun c!112168 () Bool)

(assert (=> d!213062 (= c!112168 ((_ is Nil!6043) (originalCharacters!1244 (_1!3724 (v!16454 lt!257818)))))))

(assert (=> d!213062 (= (size!4755 (originalCharacters!1244 (_1!3724 (v!16454 lt!257818)))) lt!258018)))

(declare-fun b!604934 () Bool)

(assert (=> b!604934 (= e!366562 0)))

(declare-fun b!604935 () Bool)

(assert (=> b!604935 (= e!366562 (+ 1 (size!4755 (t!80264 (originalCharacters!1244 (_1!3724 (v!16454 lt!257818)))))))))

(assert (= (and d!213062 c!112168) b!604934))

(assert (= (and d!213062 (not c!112168)) b!604935))

(declare-fun m!870755 () Bool)

(assert (=> b!604935 m!870755))

(assert (=> b!604433 d!213062))

(declare-fun d!213064 () Bool)

(assert (=> d!213064 (= (isEmpty!4361 rules!3103) ((_ is Nil!6044) rules!3103))))

(assert (=> b!604411 d!213064))

(declare-fun b!604949 () Bool)

(declare-fun e!366565 () Bool)

(declare-fun tp!187998 () Bool)

(declare-fun tp!187999 () Bool)

(assert (=> b!604949 (= e!366565 (and tp!187998 tp!187999))))

(declare-fun b!604946 () Bool)

(assert (=> b!604946 (= e!366565 tp_is_empty!3433)))

(declare-fun b!604948 () Bool)

(declare-fun tp!188002 () Bool)

(assert (=> b!604948 (= e!366565 tp!188002)))

(declare-fun b!604947 () Bool)

(declare-fun tp!188000 () Bool)

(declare-fun tp!188001 () Bool)

(assert (=> b!604947 (= e!366565 (and tp!188000 tp!188001))))

(assert (=> b!604408 (= tp!187940 e!366565)))

(assert (= (and b!604408 ((_ is ElementMatch!1539) (regex!1205 (rule!1983 token!491)))) b!604946))

(assert (= (and b!604408 ((_ is Concat!2768) (regex!1205 (rule!1983 token!491)))) b!604947))

(assert (= (and b!604408 ((_ is Star!1539) (regex!1205 (rule!1983 token!491)))) b!604948))

(assert (= (and b!604408 ((_ is Union!1539) (regex!1205 (rule!1983 token!491)))) b!604949))

(declare-fun b!604960 () Bool)

(declare-fun b_free!17217 () Bool)

(declare-fun b_next!17233 () Bool)

(assert (=> b!604960 (= b_free!17217 (not b_next!17233))))

(declare-fun tb!52793 () Bool)

(declare-fun t!80318 () Bool)

(assert (=> (and b!604960 (= (toValue!2108 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toValue!2108 (transformation!1205 (rule!1983 token!491)))) t!80318) tb!52793))

(declare-fun result!59406 () Bool)

(assert (= result!59406 result!59364))

(assert (=> d!212866 t!80318))

(declare-fun tb!52795 () Bool)

(declare-fun t!80320 () Bool)

(assert (=> (and b!604960 (= (toValue!2108 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toValue!2108 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80320) tb!52795))

(declare-fun result!59408 () Bool)

(assert (= result!59408 result!59370))

(assert (=> d!212920 t!80320))

(assert (=> d!213022 t!80318))

(declare-fun tp!188014 () Bool)

(declare-fun b_and!59835 () Bool)

(assert (=> b!604960 (= tp!188014 (and (=> t!80318 result!59406) (=> t!80320 result!59408) b_and!59835))))

(declare-fun b_free!17219 () Bool)

(declare-fun b_next!17235 () Bool)

(assert (=> b!604960 (= b_free!17219 (not b_next!17235))))

(declare-fun tb!52797 () Bool)

(declare-fun t!80322 () Bool)

(assert (=> (and b!604960 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80322) tb!52797))

(declare-fun result!59410 () Bool)

(assert (= result!59410 result!59338))

(assert (=> d!212862 t!80322))

(declare-fun t!80324 () Bool)

(declare-fun tb!52799 () Bool)

(assert (=> (and b!604960 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 token!491)))) t!80324) tb!52799))

(declare-fun result!59412 () Bool)

(assert (= result!59412 result!59360))

(assert (=> d!212866 t!80324))

(declare-fun t!80326 () Bool)

(declare-fun tb!52801 () Bool)

(assert (=> (and b!604960 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 (_1!3724 (v!16454 lt!257818)))))) t!80326) tb!52801))

(declare-fun result!59414 () Bool)

(assert (= result!59414 result!59374))

(assert (=> d!212922 t!80326))

(assert (=> b!604932 t!80322))

(declare-fun b_and!59837 () Bool)

(declare-fun tp!188013 () Bool)

(assert (=> b!604960 (= tp!188013 (and (=> t!80322 result!59410) (=> t!80324 result!59412) (=> t!80326 result!59414) b_and!59837))))

(declare-fun e!366577 () Bool)

(assert (=> b!604960 (= e!366577 (and tp!188014 tp!188013))))

(declare-fun b!604959 () Bool)

(declare-fun tp!188012 () Bool)

(declare-fun e!366576 () Bool)

(assert (=> b!604959 (= e!366576 (and tp!188012 (inv!7675 (tag!1467 (h!11445 (t!80265 rules!3103)))) (inv!7678 (transformation!1205 (h!11445 (t!80265 rules!3103)))) e!366577))))

(declare-fun b!604958 () Bool)

(declare-fun e!366575 () Bool)

(declare-fun tp!188011 () Bool)

(assert (=> b!604958 (= e!366575 (and e!366576 tp!188011))))

(assert (=> b!604421 (= tp!187937 e!366575)))

(assert (= b!604959 b!604960))

(assert (= b!604958 b!604959))

(assert (= (and b!604421 ((_ is Cons!6044) (t!80265 rules!3103))) b!604958))

(declare-fun m!870757 () Bool)

(assert (=> b!604959 m!870757))

(declare-fun m!870759 () Bool)

(assert (=> b!604959 m!870759))

(declare-fun b!604964 () Bool)

(declare-fun e!366578 () Bool)

(declare-fun tp!188015 () Bool)

(declare-fun tp!188016 () Bool)

(assert (=> b!604964 (= e!366578 (and tp!188015 tp!188016))))

(declare-fun b!604961 () Bool)

(assert (=> b!604961 (= e!366578 tp_is_empty!3433)))

(declare-fun b!604963 () Bool)

(declare-fun tp!188019 () Bool)

(assert (=> b!604963 (= e!366578 tp!188019)))

(declare-fun b!604962 () Bool)

(declare-fun tp!188017 () Bool)

(declare-fun tp!188018 () Bool)

(assert (=> b!604962 (= e!366578 (and tp!188017 tp!188018))))

(assert (=> b!604415 (= tp!187932 e!366578)))

(assert (= (and b!604415 ((_ is ElementMatch!1539) (regex!1205 (h!11445 rules!3103)))) b!604961))

(assert (= (and b!604415 ((_ is Concat!2768) (regex!1205 (h!11445 rules!3103)))) b!604962))

(assert (= (and b!604415 ((_ is Star!1539) (regex!1205 (h!11445 rules!3103)))) b!604963))

(assert (= (and b!604415 ((_ is Union!1539) (regex!1205 (h!11445 rules!3103)))) b!604964))

(declare-fun b!604969 () Bool)

(declare-fun e!366581 () Bool)

(declare-fun tp!188022 () Bool)

(assert (=> b!604969 (= e!366581 (and tp_is_empty!3433 tp!188022))))

(assert (=> b!604428 (= tp!187939 e!366581)))

(assert (= (and b!604428 ((_ is Cons!6043) (t!80264 suffix!1342))) b!604969))

(declare-fun b!604970 () Bool)

(declare-fun e!366582 () Bool)

(declare-fun tp!188023 () Bool)

(assert (=> b!604970 (= e!366582 (and tp_is_empty!3433 tp!188023))))

(assert (=> b!604417 (= tp!187936 e!366582)))

(assert (= (and b!604417 ((_ is Cons!6043) (t!80264 input!2705))) b!604970))

(declare-fun b!604971 () Bool)

(declare-fun e!366583 () Bool)

(declare-fun tp!188024 () Bool)

(assert (=> b!604971 (= e!366583 (and tp_is_empty!3433 tp!188024))))

(assert (=> b!604427 (= tp!187935 e!366583)))

(assert (= (and b!604427 ((_ is Cons!6043) (originalCharacters!1244 token!491))) b!604971))

(declare-fun b_lambda!23931 () Bool)

(assert (= b_lambda!23929 (or (and b!604412 b_free!17207 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) (and b!604429 b_free!17211) (and b!604960 b_free!17219 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) b_lambda!23931)))

(declare-fun b_lambda!23933 () Bool)

(assert (= b_lambda!23915 (or (and b!604412 b_free!17205 (= (toValue!2108 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (rule!1983 token!491))))) (and b!604429 b_free!17209) (and b!604960 b_free!17217 (= (toValue!2108 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toValue!2108 (transformation!1205 (rule!1983 token!491))))) b_lambda!23933)))

(declare-fun b_lambda!23935 () Bool)

(assert (= b_lambda!23901 (or (and b!604412 b_free!17207 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) (and b!604429 b_free!17211) (and b!604960 b_free!17219 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) b_lambda!23935)))

(declare-fun b_lambda!23937 () Bool)

(assert (= b_lambda!23893 (or (and b!604412 b_free!17207 (= (toChars!1967 (transformation!1205 (h!11445 rules!3103))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) (and b!604429 b_free!17211) (and b!604960 b_free!17219 (= (toChars!1967 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toChars!1967 (transformation!1205 (rule!1983 token!491))))) b_lambda!23937)))

(declare-fun b_lambda!23939 () Bool)

(assert (= b_lambda!23903 (or (and b!604412 b_free!17205 (= (toValue!2108 (transformation!1205 (h!11445 rules!3103))) (toValue!2108 (transformation!1205 (rule!1983 token!491))))) (and b!604429 b_free!17209) (and b!604960 b_free!17217 (= (toValue!2108 (transformation!1205 (h!11445 (t!80265 rules!3103)))) (toValue!2108 (transformation!1205 (rule!1983 token!491))))) b_lambda!23939)))

(check-sat (not b_next!17233) (not b!604557) b_and!59833 (not b!604514) (not b!604447) (not b!604529) (not bm!40666) (not b!604963) (not b!604612) (not b!604899) (not b!604970) (not d!213060) (not b!604526) (not b!604895) (not b!604542) (not b!604927) (not tb!52743) (not d!213056) b_and!59821 (not b!604876) (not d!212906) (not d!212864) (not d!212910) (not d!212916) (not b!604855) (not d!212904) (not d!212938) (not tb!52763) (not b!604592) (not d!213032) (not b!604533) (not b!604590) b_and!59837 (not b!604555) (not b_lambda!23937) (not b!604530) (not b!604849) (not d!212908) (not b!604545) (not b!604898) (not d!212890) (not b!604525) (not b!604728) (not d!212882) (not b!604883) (not b!604731) (not b!604949) (not d!213014) (not b!604549) (not b!604969) (not d!213012) (not b!604524) (not b!604556) (not b!604515) (not b!604856) (not b!604596) (not b_lambda!23907) (not b_next!17225) (not b!604547) (not b!604948) (not b!604853) (not b!604784) (not b!604730) (not b!604548) (not d!212924) (not d!212934) (not d!212862) (not b!604890) (not b!604896) b_and!59819 b_and!59831 (not b_lambda!23935) (not b!604442) (not b!604611) (not b!604933) (not b!604615) (not b_lambda!23939) (not d!212944) (not b!604897) (not b!604733) (not b_lambda!23933) (not b_next!17223) (not d!212928) (not b!604521) (not d!212912) (not b!604850) (not d!212860) (not d!212948) (not bm!40655) (not b_lambda!23931) (not b!604732) (not d!213024) (not b_next!17221) (not b!604964) (not d!213030) (not b_next!17227) (not b!604894) (not d!212896) (not d!212918) (not b!604854) (not b!604875) (not d!213050) (not d!212886) (not b!604958) (not b!604734) (not b!604494) (not b_lambda!23909) (not b_next!17235) (not d!213058) (not b!604599) (not b!604528) (not d!212930) (not b!604589) (not d!212914) (not d!213026) (not b!604538) (not b!604558) (not bm!40665) (not b!604768) (not d!212950) (not tb!52771) (not b!604552) (not b!604971) (not b!604729) (not b!604947) (not b!604541) (not b!604458) (not d!212866) tp_is_empty!3433 (not b!604851) (not d!212922) (not b!604551) b_and!59835 (not d!212858) (not tb!52759) (not b!604935) (not d!212942) (not b!604962) (not b!604893) (not b!604516) (not tb!52767) (not b!604852) (not b!604544) (not b!604726) (not b!604504) (not b!604594) (not d!212900) (not b!604932) (not b!604959) (not b!604457))
(check-sat b_and!59821 b_and!59837 (not b_next!17225) (not b_next!17223) (not b_next!17221) (not b_next!17227) (not b_next!17235) b_and!59835 (not b_next!17233) b_and!59833 b_and!59819 b_and!59831)

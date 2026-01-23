; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218726 () Bool)

(assert start!218726)

(declare-fun b!2243696 () Bool)

(declare-fun b_free!65229 () Bool)

(declare-fun b_next!65933 () Bool)

(assert (=> b!2243696 (= b_free!65229 (not b_next!65933))))

(declare-fun tp!707799 () Bool)

(declare-fun b_and!175273 () Bool)

(assert (=> b!2243696 (= tp!707799 b_and!175273)))

(declare-fun b_free!65231 () Bool)

(declare-fun b_next!65935 () Bool)

(assert (=> b!2243696 (= b_free!65231 (not b_next!65935))))

(declare-fun tp!707787 () Bool)

(declare-fun b_and!175275 () Bool)

(assert (=> b!2243696 (= tp!707787 b_and!175275)))

(declare-fun b!2243688 () Bool)

(declare-fun b_free!65233 () Bool)

(declare-fun b_next!65937 () Bool)

(assert (=> b!2243688 (= b_free!65233 (not b_next!65937))))

(declare-fun tp!707793 () Bool)

(declare-fun b_and!175277 () Bool)

(assert (=> b!2243688 (= tp!707793 b_and!175277)))

(declare-fun b_free!65235 () Bool)

(declare-fun b_next!65939 () Bool)

(assert (=> b!2243688 (= b_free!65235 (not b_next!65939))))

(declare-fun tp!707788 () Bool)

(declare-fun b_and!175279 () Bool)

(assert (=> b!2243688 (= tp!707788 b_and!175279)))

(declare-fun b!2243693 () Bool)

(declare-fun b_free!65237 () Bool)

(declare-fun b_next!65941 () Bool)

(assert (=> b!2243693 (= b_free!65237 (not b_next!65941))))

(declare-fun tp!707794 () Bool)

(declare-fun b_and!175281 () Bool)

(assert (=> b!2243693 (= tp!707794 b_and!175281)))

(declare-fun b_free!65239 () Bool)

(declare-fun b_next!65943 () Bool)

(assert (=> b!2243693 (= b_free!65239 (not b_next!65943))))

(declare-fun tp!707796 () Bool)

(declare-fun b_and!175283 () Bool)

(assert (=> b!2243693 (= tp!707796 b_and!175283)))

(declare-fun b!2243708 () Bool)

(declare-fun b_free!65241 () Bool)

(declare-fun b_next!65945 () Bool)

(assert (=> b!2243708 (= b_free!65241 (not b_next!65945))))

(declare-fun tp!707791 () Bool)

(declare-fun b_and!175285 () Bool)

(assert (=> b!2243708 (= tp!707791 b_and!175285)))

(declare-fun b_free!65243 () Bool)

(declare-fun b_next!65947 () Bool)

(assert (=> b!2243708 (= b_free!65243 (not b_next!65947))))

(declare-fun tp!707792 () Bool)

(declare-fun b_and!175287 () Bool)

(assert (=> b!2243708 (= tp!707792 b_and!175287)))

(declare-fun tp!707786 () Bool)

(declare-fun e!1435059 () Bool)

(declare-fun e!1435056 () Bool)

(declare-datatypes ((List!26603 0))(
  ( (Nil!26509) (Cons!26509 (h!31910 (_ BitVec 16)) (t!200157 List!26603)) )
))
(declare-datatypes ((TokenValue!4354 0))(
  ( (FloatLiteralValue!8708 (text!30923 List!26603)) (TokenValueExt!4353 (__x!17768 Int)) (Broken!21770 (value!133267 List!26603)) (Object!4447) (End!4354) (Def!4354) (Underscore!4354) (Match!4354) (Else!4354) (Error!4354) (Case!4354) (If!4354) (Extends!4354) (Abstract!4354) (Class!4354) (Val!4354) (DelimiterValue!8708 (del!4414 List!26603)) (KeywordValue!4360 (value!133268 List!26603)) (CommentValue!8708 (value!133269 List!26603)) (WhitespaceValue!8708 (value!133270 List!26603)) (IndentationValue!4354 (value!133271 List!26603)) (String!28875) (Int32!4354) (Broken!21771 (value!133272 List!26603)) (Boolean!4355) (Unit!39500) (OperatorValue!4357 (op!4414 List!26603)) (IdentifierValue!8708 (value!133273 List!26603)) (IdentifierValue!8709 (value!133274 List!26603)) (WhitespaceValue!8709 (value!133275 List!26603)) (True!8708) (False!8708) (Broken!21772 (value!133276 List!26603)) (Broken!21773 (value!133277 List!26603)) (True!8709) (RightBrace!4354) (RightBracket!4354) (Colon!4354) (Null!4354) (Comma!4354) (LeftBracket!4354) (False!8709) (LeftBrace!4354) (ImaginaryLiteralValue!4354 (text!30924 List!26603)) (StringLiteralValue!13062 (value!133278 List!26603)) (EOFValue!4354 (value!133279 List!26603)) (IdentValue!4354 (value!133280 List!26603)) (DelimiterValue!8709 (value!133281 List!26603)) (DedentValue!4354 (value!133282 List!26603)) (NewLineValue!4354 (value!133283 List!26603)) (IntegerValue!13062 (value!133284 (_ BitVec 32)) (text!30925 List!26603)) (IntegerValue!13063 (value!133285 Int) (text!30926 List!26603)) (Times!4354) (Or!4354) (Equal!4354) (Minus!4354) (Broken!21774 (value!133286 List!26603)) (And!4354) (Div!4354) (LessEqual!4354) (Mod!4354) (Concat!10894) (Not!4354) (Plus!4354) (SpaceValue!4354 (value!133287 List!26603)) (IntegerValue!13064 (value!133288 Int) (text!30927 List!26603)) (StringLiteralValue!13063 (text!30928 List!26603)) (FloatLiteralValue!8709 (text!30929 List!26603)) (BytesLiteralValue!4354 (value!133289 List!26603)) (CommentValue!8709 (value!133290 List!26603)) (StringLiteralValue!13064 (value!133291 List!26603)) (ErrorTokenValue!4354 (msg!4415 List!26603)) )
))
(declare-datatypes ((C!13226 0))(
  ( (C!13227 (val!7661 Int)) )
))
(declare-datatypes ((List!26604 0))(
  ( (Nil!26510) (Cons!26510 (h!31911 C!13226) (t!200158 List!26604)) )
))
(declare-datatypes ((IArray!17069 0))(
  ( (IArray!17070 (innerList!8592 List!26604)) )
))
(declare-datatypes ((Conc!8532 0))(
  ( (Node!8532 (left!20161 Conc!8532) (right!20491 Conc!8532) (csize!17294 Int) (cheight!8743 Int)) (Leaf!12614 (xs!11474 IArray!17069) (csize!17295 Int)) (Empty!8532) )
))
(declare-datatypes ((BalanceConc!16792 0))(
  ( (BalanceConc!16793 (c!357190 Conc!8532)) )
))
(declare-datatypes ((String!28876 0))(
  ( (String!28877 (value!133292 String)) )
))
(declare-datatypes ((Regex!6540 0))(
  ( (ElementMatch!6540 (c!357191 C!13226)) (Concat!10895 (regOne!13592 Regex!6540) (regTwo!13592 Regex!6540)) (EmptyExpr!6540) (Star!6540 (reg!6869 Regex!6540)) (EmptyLang!6540) (Union!6540 (regOne!13593 Regex!6540) (regTwo!13593 Regex!6540)) )
))
(declare-datatypes ((TokenValueInjection!8248 0))(
  ( (TokenValueInjection!8249 (toValue!5922 Int) (toChars!5781 Int)) )
))
(declare-datatypes ((Rule!8184 0))(
  ( (Rule!8185 (regex!4192 Regex!6540) (tag!4682 String!28876) (isSeparator!4192 Bool) (transformation!4192 TokenValueInjection!8248)) )
))
(declare-fun r!2363 () Rule!8184)

(declare-fun b!2243687 () Bool)

(declare-fun inv!36037 (String!28876) Bool)

(declare-fun inv!36040 (TokenValueInjection!8248) Bool)

(assert (=> b!2243687 (= e!1435056 (and tp!707786 (inv!36037 (tag!4682 r!2363)) (inv!36040 (transformation!4192 r!2363)) e!1435059))))

(declare-fun e!1435069 () Bool)

(assert (=> b!2243688 (= e!1435069 (and tp!707793 tp!707788))))

(declare-fun b!2243690 () Bool)

(declare-fun res!958633 () Bool)

(declare-fun e!1435064 () Bool)

(assert (=> b!2243690 (=> (not res!958633) (not e!1435064))))

(declare-datatypes ((List!26605 0))(
  ( (Nil!26511) (Cons!26511 (h!31912 Rule!8184) (t!200159 List!26605)) )
))
(declare-fun rules!1750 () List!26605)

(declare-fun contains!4539 (List!26605 Rule!8184) Bool)

(assert (=> b!2243690 (= res!958633 (contains!4539 rules!1750 r!2363))))

(declare-fun b!2243691 () Bool)

(declare-fun res!958634 () Bool)

(assert (=> b!2243691 (=> (not res!958634) (not e!1435064))))

(declare-fun otherR!12 () Rule!8184)

(assert (=> b!2243691 (= res!958634 (contains!4539 rules!1750 otherR!12))))

(declare-fun b!2243692 () Bool)

(declare-fun tp!707801 () Bool)

(declare-fun e!1435065 () Bool)

(declare-fun e!1435067 () Bool)

(assert (=> b!2243692 (= e!1435067 (and tp!707801 (inv!36037 (tag!4682 otherR!12)) (inv!36040 (transformation!4192 otherR!12)) e!1435065))))

(assert (=> b!2243693 (= e!1435059 (and tp!707794 tp!707796))))

(declare-fun b!2243694 () Bool)

(declare-fun e!1435054 () Bool)

(declare-fun e!1435062 () Bool)

(assert (=> b!2243694 (= e!1435054 e!1435062)))

(declare-fun res!958635 () Bool)

(assert (=> b!2243694 (=> (not res!958635) (not e!1435062))))

(declare-fun e!1435074 () Bool)

(assert (=> b!2243694 (= res!958635 e!1435074)))

(declare-fun res!958631 () Bool)

(assert (=> b!2243694 (=> res!958631 e!1435074)))

(declare-fun lt!835039 () Bool)

(assert (=> b!2243694 (= res!958631 lt!835039)))

(declare-datatypes ((Token!7862 0))(
  ( (Token!7863 (value!133293 TokenValue!4354) (rule!6490 Rule!8184) (size!20722 Int) (originalCharacters!4962 List!26604)) )
))
(declare-datatypes ((List!26606 0))(
  ( (Nil!26512) (Cons!26512 (h!31913 Token!7862) (t!200160 List!26606)) )
))
(declare-fun tokens!456 () List!26606)

(declare-fun isEmpty!14921 (List!26606) Bool)

(assert (=> b!2243694 (= lt!835039 (isEmpty!14921 tokens!456))))

(declare-fun e!1435055 () Bool)

(declare-fun b!2243695 () Bool)

(declare-fun tp!707785 () Bool)

(declare-fun e!1435057 () Bool)

(assert (=> b!2243695 (= e!1435057 (and tp!707785 (inv!36037 (tag!4682 (h!31912 rules!1750))) (inv!36040 (transformation!4192 (h!31912 rules!1750))) e!1435055))))

(assert (=> b!2243696 (= e!1435055 (and tp!707799 tp!707787))))

(declare-fun b!2243697 () Bool)

(declare-fun e!1435071 () Bool)

(declare-fun tp_is_empty!10301 () Bool)

(declare-fun tp!707795 () Bool)

(assert (=> b!2243697 (= e!1435071 (and tp_is_empty!10301 tp!707795))))

(declare-fun b!2243698 () Bool)

(declare-fun otherP!12 () List!26604)

(declare-fun size!20723 (BalanceConc!16792) Int)

(declare-fun charsOf!2580 (Token!7862) BalanceConc!16792)

(declare-fun head!4747 (List!26606) Token!7862)

(declare-fun size!20724 (List!26604) Int)

(assert (=> b!2243698 (= e!1435074 (<= (size!20723 (charsOf!2580 (head!4747 tokens!456))) (size!20724 otherP!12)))))

(declare-fun b!2243699 () Bool)

(declare-fun res!958629 () Bool)

(assert (=> b!2243699 (=> (not res!958629) (not e!1435064))))

(declare-datatypes ((LexerInterface!3789 0))(
  ( (LexerInterfaceExt!3786 (__x!17769 Int)) (Lexer!3787) )
))
(declare-fun thiss!16613 () LexerInterface!3789)

(declare-fun rulesInvariant!3291 (LexerInterface!3789 List!26605) Bool)

(assert (=> b!2243699 (= res!958629 (rulesInvariant!3291 thiss!16613 rules!1750))))

(declare-fun b!2243700 () Bool)

(declare-fun e!1435058 () Bool)

(declare-fun tp!707798 () Bool)

(assert (=> b!2243700 (= e!1435058 (and tp!707798 (inv!36037 (tag!4682 (rule!6490 (h!31913 tokens!456)))) (inv!36040 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) e!1435069))))

(declare-fun res!958628 () Bool)

(assert (=> start!218726 (=> (not res!958628) (not e!1435064))))

(assert (=> start!218726 (= res!958628 (is-Lexer!3787 thiss!16613))))

(assert (=> start!218726 e!1435064))

(assert (=> start!218726 true))

(declare-fun e!1435063 () Bool)

(assert (=> start!218726 e!1435063))

(assert (=> start!218726 e!1435067))

(assert (=> start!218726 e!1435071))

(declare-fun e!1435066 () Bool)

(assert (=> start!218726 e!1435066))

(declare-fun e!1435076 () Bool)

(assert (=> start!218726 e!1435076))

(assert (=> start!218726 e!1435056))

(declare-fun e!1435070 () Bool)

(assert (=> start!218726 e!1435070))

(declare-fun b!2243689 () Bool)

(assert (=> b!2243689 (= e!1435064 e!1435054)))

(declare-fun res!958630 () Bool)

(assert (=> b!2243689 (=> (not res!958630) (not e!1435054))))

(declare-datatypes ((IArray!17071 0))(
  ( (IArray!17072 (innerList!8593 List!26606)) )
))
(declare-datatypes ((Conc!8533 0))(
  ( (Node!8533 (left!20162 Conc!8533) (right!20492 Conc!8533) (csize!17296 Int) (cheight!8744 Int)) (Leaf!12615 (xs!11475 IArray!17071) (csize!17297 Int)) (Empty!8533) )
))
(declare-datatypes ((BalanceConc!16794 0))(
  ( (BalanceConc!16795 (c!357192 Conc!8533)) )
))
(declare-datatypes ((tuple2!25972 0))(
  ( (tuple2!25973 (_1!15496 BalanceConc!16794) (_2!15496 BalanceConc!16792)) )
))
(declare-fun lt!835040 () tuple2!25972)

(declare-fun suffix!886 () List!26604)

(declare-datatypes ((tuple2!25974 0))(
  ( (tuple2!25975 (_1!15497 List!26606) (_2!15497 List!26604)) )
))
(declare-fun list!10128 (BalanceConc!16794) List!26606)

(declare-fun list!10129 (BalanceConc!16792) List!26604)

(assert (=> b!2243689 (= res!958630 (= (tuple2!25975 (list!10128 (_1!15496 lt!835040)) (list!10129 (_2!15496 lt!835040))) (tuple2!25975 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26604)

(declare-fun lex!1628 (LexerInterface!3789 List!26605 BalanceConc!16792) tuple2!25972)

(declare-fun seqFromList!2896 (List!26604) BalanceConc!16792)

(assert (=> b!2243689 (= lt!835040 (lex!1628 thiss!16613 rules!1750 (seqFromList!2896 input!1722)))))

(declare-fun b!2243701 () Bool)

(declare-fun tp!707790 () Bool)

(declare-fun e!1435073 () Bool)

(declare-fun inv!36041 (Token!7862) Bool)

(assert (=> b!2243701 (= e!1435070 (and (inv!36041 (h!31913 tokens!456)) e!1435073 tp!707790))))

(declare-fun b!2243702 () Bool)

(assert (=> b!2243702 (= e!1435062 (and (not lt!835039) (= tokens!456 Nil!26512)))))

(declare-fun b!2243703 () Bool)

(declare-fun tp!707797 () Bool)

(assert (=> b!2243703 (= e!1435066 (and tp_is_empty!10301 tp!707797))))

(declare-fun b!2243704 () Bool)

(declare-fun tp!707800 () Bool)

(declare-fun inv!21 (TokenValue!4354) Bool)

(assert (=> b!2243704 (= e!1435073 (and (inv!21 (value!133293 (h!31913 tokens!456))) e!1435058 tp!707800))))

(declare-fun b!2243705 () Bool)

(declare-fun tp!707784 () Bool)

(assert (=> b!2243705 (= e!1435063 (and tp_is_empty!10301 tp!707784))))

(declare-fun b!2243706 () Bool)

(declare-fun tp!707789 () Bool)

(assert (=> b!2243706 (= e!1435076 (and e!1435057 tp!707789))))

(declare-fun b!2243707 () Bool)

(declare-fun res!958632 () Bool)

(assert (=> b!2243707 (=> (not res!958632) (not e!1435064))))

(declare-fun isEmpty!14922 (List!26605) Bool)

(assert (=> b!2243707 (= res!958632 (not (isEmpty!14922 rules!1750)))))

(assert (=> b!2243708 (= e!1435065 (and tp!707791 tp!707792))))

(assert (= (and start!218726 res!958628) b!2243707))

(assert (= (and b!2243707 res!958632) b!2243699))

(assert (= (and b!2243699 res!958629) b!2243690))

(assert (= (and b!2243690 res!958633) b!2243691))

(assert (= (and b!2243691 res!958634) b!2243689))

(assert (= (and b!2243689 res!958630) b!2243694))

(assert (= (and b!2243694 (not res!958631)) b!2243698))

(assert (= (and b!2243694 res!958635) b!2243702))

(assert (= (and start!218726 (is-Cons!26510 input!1722)) b!2243705))

(assert (= b!2243692 b!2243708))

(assert (= start!218726 b!2243692))

(assert (= (and start!218726 (is-Cons!26510 suffix!886)) b!2243697))

(assert (= (and start!218726 (is-Cons!26510 otherP!12)) b!2243703))

(assert (= b!2243695 b!2243696))

(assert (= b!2243706 b!2243695))

(assert (= (and start!218726 (is-Cons!26511 rules!1750)) b!2243706))

(assert (= b!2243687 b!2243693))

(assert (= start!218726 b!2243687))

(assert (= b!2243700 b!2243688))

(assert (= b!2243704 b!2243700))

(assert (= b!2243701 b!2243704))

(assert (= (and start!218726 (is-Cons!26512 tokens!456)) b!2243701))

(declare-fun m!2675811 () Bool)

(assert (=> b!2243707 m!2675811))

(declare-fun m!2675813 () Bool)

(assert (=> b!2243687 m!2675813))

(declare-fun m!2675815 () Bool)

(assert (=> b!2243687 m!2675815))

(declare-fun m!2675817 () Bool)

(assert (=> b!2243698 m!2675817))

(assert (=> b!2243698 m!2675817))

(declare-fun m!2675819 () Bool)

(assert (=> b!2243698 m!2675819))

(assert (=> b!2243698 m!2675819))

(declare-fun m!2675821 () Bool)

(assert (=> b!2243698 m!2675821))

(declare-fun m!2675823 () Bool)

(assert (=> b!2243698 m!2675823))

(declare-fun m!2675825 () Bool)

(assert (=> b!2243695 m!2675825))

(declare-fun m!2675827 () Bool)

(assert (=> b!2243695 m!2675827))

(declare-fun m!2675829 () Bool)

(assert (=> b!2243704 m!2675829))

(declare-fun m!2675831 () Bool)

(assert (=> b!2243694 m!2675831))

(declare-fun m!2675833 () Bool)

(assert (=> b!2243691 m!2675833))

(declare-fun m!2675835 () Bool)

(assert (=> b!2243692 m!2675835))

(declare-fun m!2675837 () Bool)

(assert (=> b!2243692 m!2675837))

(declare-fun m!2675839 () Bool)

(assert (=> b!2243690 m!2675839))

(declare-fun m!2675841 () Bool)

(assert (=> b!2243701 m!2675841))

(declare-fun m!2675843 () Bool)

(assert (=> b!2243689 m!2675843))

(declare-fun m!2675845 () Bool)

(assert (=> b!2243689 m!2675845))

(declare-fun m!2675847 () Bool)

(assert (=> b!2243689 m!2675847))

(assert (=> b!2243689 m!2675847))

(declare-fun m!2675849 () Bool)

(assert (=> b!2243689 m!2675849))

(declare-fun m!2675851 () Bool)

(assert (=> b!2243700 m!2675851))

(declare-fun m!2675853 () Bool)

(assert (=> b!2243700 m!2675853))

(declare-fun m!2675855 () Bool)

(assert (=> b!2243699 m!2675855))

(push 1)

(assert (not b!2243699))

(assert (not b!2243698))

(assert (not b!2243689))

(assert (not b!2243692))

(assert (not b!2243690))

(assert b_and!175283)

(assert (not b_next!65941))

(assert b_and!175273)

(assert (not b!2243700))

(assert b_and!175277)

(assert tp_is_empty!10301)

(assert (not b!2243707))

(assert (not b!2243703))

(assert (not b_next!65943))

(assert (not b!2243705))

(assert b_and!175275)

(assert (not b!2243697))

(assert b_and!175279)

(assert (not b_next!65945))

(assert b_and!175287)

(assert (not b!2243706))

(assert (not b!2243691))

(assert b_and!175281)

(assert (not b!2243704))

(assert (not b_next!65935))

(assert (not b_next!65947))

(assert (not b_next!65933))

(assert (not b_next!65939))

(assert (not b_next!65937))

(assert (not b!2243695))

(assert (not b!2243694))

(assert b_and!175285)

(assert (not b!2243701))

(assert (not b!2243687))

(check-sat)

(pop 1)

(push 1)

(assert b_and!175279)

(assert b_and!175281)

(assert b_and!175283)

(assert (not b_next!65941))

(assert b_and!175273)

(assert b_and!175277)

(assert (not b_next!65935))

(assert (not b_next!65937))

(assert b_and!175285)

(assert (not b_next!65943))

(assert b_and!175275)

(assert (not b_next!65945))

(assert b_and!175287)

(assert (not b_next!65947))

(assert (not b_next!65933))

(assert (not b_next!65939))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!666294 () Bool)

(assert (=> d!666294 (= (inv!36037 (tag!4682 otherR!12)) (= (mod (str.len (value!133292 (tag!4682 otherR!12))) 2) 0))))

(assert (=> b!2243692 d!666294))

(declare-fun d!666296 () Bool)

(declare-fun res!958670 () Bool)

(declare-fun e!1435148 () Bool)

(assert (=> d!666296 (=> (not res!958670) (not e!1435148))))

(declare-fun semiInverseModEq!1693 (Int Int) Bool)

(assert (=> d!666296 (= res!958670 (semiInverseModEq!1693 (toChars!5781 (transformation!4192 otherR!12)) (toValue!5922 (transformation!4192 otherR!12))))))

(assert (=> d!666296 (= (inv!36040 (transformation!4192 otherR!12)) e!1435148)))

(declare-fun b!2243777 () Bool)

(declare-fun equivClasses!1612 (Int Int) Bool)

(assert (=> b!2243777 (= e!1435148 (equivClasses!1612 (toChars!5781 (transformation!4192 otherR!12)) (toValue!5922 (transformation!4192 otherR!12))))))

(assert (= (and d!666296 res!958670) b!2243777))

(declare-fun m!2675903 () Bool)

(assert (=> d!666296 m!2675903))

(declare-fun m!2675905 () Bool)

(assert (=> b!2243777 m!2675905))

(assert (=> b!2243692 d!666296))

(declare-fun b!2243788 () Bool)

(declare-fun e!1435156 () Bool)

(declare-fun inv!17 (TokenValue!4354) Bool)

(assert (=> b!2243788 (= e!1435156 (inv!17 (value!133293 (h!31913 tokens!456))))))

(declare-fun b!2243789 () Bool)

(declare-fun res!958673 () Bool)

(declare-fun e!1435155 () Bool)

(assert (=> b!2243789 (=> res!958673 e!1435155)))

(assert (=> b!2243789 (= res!958673 (not (is-IntegerValue!13064 (value!133293 (h!31913 tokens!456)))))))

(assert (=> b!2243789 (= e!1435156 e!1435155)))

(declare-fun d!666298 () Bool)

(declare-fun c!357202 () Bool)

(assert (=> d!666298 (= c!357202 (is-IntegerValue!13062 (value!133293 (h!31913 tokens!456))))))

(declare-fun e!1435157 () Bool)

(assert (=> d!666298 (= (inv!21 (value!133293 (h!31913 tokens!456))) e!1435157)))

(declare-fun b!2243790 () Bool)

(declare-fun inv!16 (TokenValue!4354) Bool)

(assert (=> b!2243790 (= e!1435157 (inv!16 (value!133293 (h!31913 tokens!456))))))

(declare-fun b!2243791 () Bool)

(declare-fun inv!15 (TokenValue!4354) Bool)

(assert (=> b!2243791 (= e!1435155 (inv!15 (value!133293 (h!31913 tokens!456))))))

(declare-fun b!2243792 () Bool)

(assert (=> b!2243792 (= e!1435157 e!1435156)))

(declare-fun c!357201 () Bool)

(assert (=> b!2243792 (= c!357201 (is-IntegerValue!13063 (value!133293 (h!31913 tokens!456))))))

(assert (= (and d!666298 c!357202) b!2243790))

(assert (= (and d!666298 (not c!357202)) b!2243792))

(assert (= (and b!2243792 c!357201) b!2243788))

(assert (= (and b!2243792 (not c!357201)) b!2243789))

(assert (= (and b!2243789 (not res!958673)) b!2243791))

(declare-fun m!2675907 () Bool)

(assert (=> b!2243788 m!2675907))

(declare-fun m!2675909 () Bool)

(assert (=> b!2243790 m!2675909))

(declare-fun m!2675911 () Bool)

(assert (=> b!2243791 m!2675911))

(assert (=> b!2243704 d!666298))

(declare-fun d!666300 () Bool)

(assert (=> d!666300 (= (isEmpty!14921 tokens!456) (is-Nil!26512 tokens!456))))

(assert (=> b!2243694 d!666300))

(declare-fun d!666302 () Bool)

(declare-fun list!10132 (Conc!8533) List!26606)

(assert (=> d!666302 (= (list!10128 (_1!15496 lt!835040)) (list!10132 (c!357192 (_1!15496 lt!835040))))))

(declare-fun bs!454758 () Bool)

(assert (= bs!454758 d!666302))

(declare-fun m!2675913 () Bool)

(assert (=> bs!454758 m!2675913))

(assert (=> b!2243689 d!666302))

(declare-fun d!666306 () Bool)

(declare-fun list!10133 (Conc!8532) List!26604)

(assert (=> d!666306 (= (list!10129 (_2!15496 lt!835040)) (list!10133 (c!357190 (_2!15496 lt!835040))))))

(declare-fun bs!454759 () Bool)

(assert (= bs!454759 d!666306))

(declare-fun m!2675915 () Bool)

(assert (=> bs!454759 m!2675915))

(assert (=> b!2243689 d!666306))

(declare-fun b!2243807 () Bool)

(declare-fun e!1435169 () Bool)

(declare-fun lt!835049 () tuple2!25972)

(assert (=> b!2243807 (= e!1435169 (= (_2!15496 lt!835049) (seqFromList!2896 input!1722)))))

(declare-fun e!1435170 () Bool)

(declare-fun b!2243808 () Bool)

(declare-fun lexList!1037 (LexerInterface!3789 List!26605 List!26604) tuple2!25974)

(assert (=> b!2243808 (= e!1435170 (= (list!10129 (_2!15496 lt!835049)) (_2!15497 (lexList!1037 thiss!16613 rules!1750 (list!10129 (seqFromList!2896 input!1722))))))))

(declare-fun b!2243809 () Bool)

(declare-fun e!1435168 () Bool)

(declare-fun isEmpty!14925 (BalanceConc!16794) Bool)

(assert (=> b!2243809 (= e!1435168 (not (isEmpty!14925 (_1!15496 lt!835049))))))

(declare-fun b!2243810 () Bool)

(assert (=> b!2243810 (= e!1435169 e!1435168)))

(declare-fun res!958684 () Bool)

(assert (=> b!2243810 (= res!958684 (< (size!20723 (_2!15496 lt!835049)) (size!20723 (seqFromList!2896 input!1722))))))

(assert (=> b!2243810 (=> (not res!958684) (not e!1435168))))

(declare-fun b!2243811 () Bool)

(declare-fun res!958686 () Bool)

(assert (=> b!2243811 (=> (not res!958686) (not e!1435170))))

(assert (=> b!2243811 (= res!958686 (= (list!10128 (_1!15496 lt!835049)) (_1!15497 (lexList!1037 thiss!16613 rules!1750 (list!10129 (seqFromList!2896 input!1722))))))))

(declare-fun d!666308 () Bool)

(assert (=> d!666308 e!1435170))

(declare-fun res!958685 () Bool)

(assert (=> d!666308 (=> (not res!958685) (not e!1435170))))

(assert (=> d!666308 (= res!958685 e!1435169)))

(declare-fun c!357205 () Bool)

(declare-fun size!20728 (BalanceConc!16794) Int)

(assert (=> d!666308 (= c!357205 (> (size!20728 (_1!15496 lt!835049)) 0))))

(declare-fun lexTailRecV2!712 (LexerInterface!3789 List!26605 BalanceConc!16792 BalanceConc!16792 BalanceConc!16792 BalanceConc!16794) tuple2!25972)

(assert (=> d!666308 (= lt!835049 (lexTailRecV2!712 thiss!16613 rules!1750 (seqFromList!2896 input!1722) (BalanceConc!16793 Empty!8532) (seqFromList!2896 input!1722) (BalanceConc!16795 Empty!8533)))))

(assert (=> d!666308 (= (lex!1628 thiss!16613 rules!1750 (seqFromList!2896 input!1722)) lt!835049)))

(assert (= (and d!666308 c!357205) b!2243810))

(assert (= (and d!666308 (not c!357205)) b!2243807))

(assert (= (and b!2243810 res!958684) b!2243809))

(assert (= (and d!666308 res!958685) b!2243811))

(assert (= (and b!2243811 res!958686) b!2243808))

(declare-fun m!2675929 () Bool)

(assert (=> b!2243808 m!2675929))

(assert (=> b!2243808 m!2675847))

(declare-fun m!2675931 () Bool)

(assert (=> b!2243808 m!2675931))

(assert (=> b!2243808 m!2675931))

(declare-fun m!2675933 () Bool)

(assert (=> b!2243808 m!2675933))

(declare-fun m!2675935 () Bool)

(assert (=> d!666308 m!2675935))

(assert (=> d!666308 m!2675847))

(assert (=> d!666308 m!2675847))

(declare-fun m!2675937 () Bool)

(assert (=> d!666308 m!2675937))

(declare-fun m!2675939 () Bool)

(assert (=> b!2243811 m!2675939))

(assert (=> b!2243811 m!2675847))

(assert (=> b!2243811 m!2675931))

(assert (=> b!2243811 m!2675931))

(assert (=> b!2243811 m!2675933))

(declare-fun m!2675941 () Bool)

(assert (=> b!2243810 m!2675941))

(assert (=> b!2243810 m!2675847))

(declare-fun m!2675943 () Bool)

(assert (=> b!2243810 m!2675943))

(declare-fun m!2675945 () Bool)

(assert (=> b!2243809 m!2675945))

(assert (=> b!2243689 d!666308))

(declare-fun d!666322 () Bool)

(declare-fun fromListB!1303 (List!26604) BalanceConc!16792)

(assert (=> d!666322 (= (seqFromList!2896 input!1722) (fromListB!1303 input!1722))))

(declare-fun bs!454762 () Bool)

(assert (= bs!454762 d!666322))

(declare-fun m!2675947 () Bool)

(assert (=> bs!454762 m!2675947))

(assert (=> b!2243689 d!666322))

(declare-fun d!666324 () Bool)

(assert (=> d!666324 (= (inv!36037 (tag!4682 (rule!6490 (h!31913 tokens!456)))) (= (mod (str.len (value!133292 (tag!4682 (rule!6490 (h!31913 tokens!456))))) 2) 0))))

(assert (=> b!2243700 d!666324))

(declare-fun d!666326 () Bool)

(declare-fun res!958687 () Bool)

(declare-fun e!1435171 () Bool)

(assert (=> d!666326 (=> (not res!958687) (not e!1435171))))

(assert (=> d!666326 (= res!958687 (semiInverseModEq!1693 (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (toValue!5922 (transformation!4192 (rule!6490 (h!31913 tokens!456))))))))

(assert (=> d!666326 (= (inv!36040 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) e!1435171)))

(declare-fun b!2243812 () Bool)

(assert (=> b!2243812 (= e!1435171 (equivClasses!1612 (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (toValue!5922 (transformation!4192 (rule!6490 (h!31913 tokens!456))))))))

(assert (= (and d!666326 res!958687) b!2243812))

(declare-fun m!2675949 () Bool)

(assert (=> d!666326 m!2675949))

(declare-fun m!2675951 () Bool)

(assert (=> b!2243812 m!2675951))

(assert (=> b!2243700 d!666326))

(declare-fun d!666328 () Bool)

(declare-fun lt!835052 () Bool)

(declare-fun content!3537 (List!26605) (Set Rule!8184))

(assert (=> d!666328 (= lt!835052 (set.member r!2363 (content!3537 rules!1750)))))

(declare-fun e!1435177 () Bool)

(assert (=> d!666328 (= lt!835052 e!1435177)))

(declare-fun res!958693 () Bool)

(assert (=> d!666328 (=> (not res!958693) (not e!1435177))))

(assert (=> d!666328 (= res!958693 (is-Cons!26511 rules!1750))))

(assert (=> d!666328 (= (contains!4539 rules!1750 r!2363) lt!835052)))

(declare-fun b!2243817 () Bool)

(declare-fun e!1435176 () Bool)

(assert (=> b!2243817 (= e!1435177 e!1435176)))

(declare-fun res!958692 () Bool)

(assert (=> b!2243817 (=> res!958692 e!1435176)))

(assert (=> b!2243817 (= res!958692 (= (h!31912 rules!1750) r!2363))))

(declare-fun b!2243818 () Bool)

(assert (=> b!2243818 (= e!1435176 (contains!4539 (t!200159 rules!1750) r!2363))))

(assert (= (and d!666328 res!958693) b!2243817))

(assert (= (and b!2243817 (not res!958692)) b!2243818))

(declare-fun m!2675953 () Bool)

(assert (=> d!666328 m!2675953))

(declare-fun m!2675955 () Bool)

(assert (=> d!666328 m!2675955))

(declare-fun m!2675957 () Bool)

(assert (=> b!2243818 m!2675957))

(assert (=> b!2243690 d!666328))

(declare-fun d!666330 () Bool)

(declare-fun res!958698 () Bool)

(declare-fun e!1435180 () Bool)

(assert (=> d!666330 (=> (not res!958698) (not e!1435180))))

(declare-fun isEmpty!14926 (List!26604) Bool)

(assert (=> d!666330 (= res!958698 (not (isEmpty!14926 (originalCharacters!4962 (h!31913 tokens!456)))))))

(assert (=> d!666330 (= (inv!36041 (h!31913 tokens!456)) e!1435180)))

(declare-fun b!2243823 () Bool)

(declare-fun res!958699 () Bool)

(assert (=> b!2243823 (=> (not res!958699) (not e!1435180))))

(declare-fun dynLambda!11559 (Int TokenValue!4354) BalanceConc!16792)

(assert (=> b!2243823 (= res!958699 (= (originalCharacters!4962 (h!31913 tokens!456)) (list!10129 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (value!133293 (h!31913 tokens!456))))))))

(declare-fun b!2243824 () Bool)

(assert (=> b!2243824 (= e!1435180 (= (size!20722 (h!31913 tokens!456)) (size!20724 (originalCharacters!4962 (h!31913 tokens!456)))))))

(assert (= (and d!666330 res!958698) b!2243823))

(assert (= (and b!2243823 res!958699) b!2243824))

(declare-fun b_lambda!71809 () Bool)

(assert (=> (not b_lambda!71809) (not b!2243823)))

(declare-fun tb!132895 () Bool)

(declare-fun t!200166 () Bool)

(assert (=> (and b!2243696 (= (toChars!5781 (transformation!4192 (h!31912 rules!1750))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200166) tb!132895))

(declare-fun b!2243829 () Bool)

(declare-fun e!1435183 () Bool)

(declare-fun tp!707858 () Bool)

(declare-fun inv!36044 (Conc!8532) Bool)

(assert (=> b!2243829 (= e!1435183 (and (inv!36044 (c!357190 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (value!133293 (h!31913 tokens!456))))) tp!707858))))

(declare-fun result!161962 () Bool)

(declare-fun inv!36045 (BalanceConc!16792) Bool)

(assert (=> tb!132895 (= result!161962 (and (inv!36045 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (value!133293 (h!31913 tokens!456)))) e!1435183))))

(assert (= tb!132895 b!2243829))

(declare-fun m!2675959 () Bool)

(assert (=> b!2243829 m!2675959))

(declare-fun m!2675961 () Bool)

(assert (=> tb!132895 m!2675961))

(assert (=> b!2243823 t!200166))

(declare-fun b_and!175305 () Bool)

(assert (= b_and!175275 (and (=> t!200166 result!161962) b_and!175305)))

(declare-fun t!200168 () Bool)

(declare-fun tb!132897 () Bool)

(assert (=> (and b!2243688 (= (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200168) tb!132897))

(declare-fun result!161966 () Bool)

(assert (= result!161966 result!161962))

(assert (=> b!2243823 t!200168))

(declare-fun b_and!175307 () Bool)

(assert (= b_and!175279 (and (=> t!200168 result!161966) b_and!175307)))

(declare-fun tb!132899 () Bool)

(declare-fun t!200170 () Bool)

(assert (=> (and b!2243693 (= (toChars!5781 (transformation!4192 r!2363)) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200170) tb!132899))

(declare-fun result!161968 () Bool)

(assert (= result!161968 result!161962))

(assert (=> b!2243823 t!200170))

(declare-fun b_and!175309 () Bool)

(assert (= b_and!175283 (and (=> t!200170 result!161968) b_and!175309)))

(declare-fun tb!132901 () Bool)

(declare-fun t!200172 () Bool)

(assert (=> (and b!2243708 (= (toChars!5781 (transformation!4192 otherR!12)) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200172) tb!132901))

(declare-fun result!161970 () Bool)

(assert (= result!161970 result!161962))

(assert (=> b!2243823 t!200172))

(declare-fun b_and!175311 () Bool)

(assert (= b_and!175287 (and (=> t!200172 result!161970) b_and!175311)))

(declare-fun m!2675963 () Bool)

(assert (=> d!666330 m!2675963))

(declare-fun m!2675965 () Bool)

(assert (=> b!2243823 m!2675965))

(assert (=> b!2243823 m!2675965))

(declare-fun m!2675967 () Bool)

(assert (=> b!2243823 m!2675967))

(declare-fun m!2675969 () Bool)

(assert (=> b!2243824 m!2675969))

(assert (=> b!2243701 d!666330))

(declare-fun d!666332 () Bool)

(declare-fun lt!835053 () Bool)

(assert (=> d!666332 (= lt!835053 (set.member otherR!12 (content!3537 rules!1750)))))

(declare-fun e!1435185 () Bool)

(assert (=> d!666332 (= lt!835053 e!1435185)))

(declare-fun res!958701 () Bool)

(assert (=> d!666332 (=> (not res!958701) (not e!1435185))))

(assert (=> d!666332 (= res!958701 (is-Cons!26511 rules!1750))))

(assert (=> d!666332 (= (contains!4539 rules!1750 otherR!12) lt!835053)))

(declare-fun b!2243830 () Bool)

(declare-fun e!1435184 () Bool)

(assert (=> b!2243830 (= e!1435185 e!1435184)))

(declare-fun res!958700 () Bool)

(assert (=> b!2243830 (=> res!958700 e!1435184)))

(assert (=> b!2243830 (= res!958700 (= (h!31912 rules!1750) otherR!12))))

(declare-fun b!2243831 () Bool)

(assert (=> b!2243831 (= e!1435184 (contains!4539 (t!200159 rules!1750) otherR!12))))

(assert (= (and d!666332 res!958701) b!2243830))

(assert (= (and b!2243830 (not res!958700)) b!2243831))

(assert (=> d!666332 m!2675953))

(declare-fun m!2675971 () Bool)

(assert (=> d!666332 m!2675971))

(declare-fun m!2675973 () Bool)

(assert (=> b!2243831 m!2675973))

(assert (=> b!2243691 d!666332))

(declare-fun d!666334 () Bool)

(assert (=> d!666334 (= (inv!36037 (tag!4682 r!2363)) (= (mod (str.len (value!133292 (tag!4682 r!2363))) 2) 0))))

(assert (=> b!2243687 d!666334))

(declare-fun d!666336 () Bool)

(declare-fun res!958702 () Bool)

(declare-fun e!1435186 () Bool)

(assert (=> d!666336 (=> (not res!958702) (not e!1435186))))

(assert (=> d!666336 (= res!958702 (semiInverseModEq!1693 (toChars!5781 (transformation!4192 r!2363)) (toValue!5922 (transformation!4192 r!2363))))))

(assert (=> d!666336 (= (inv!36040 (transformation!4192 r!2363)) e!1435186)))

(declare-fun b!2243832 () Bool)

(assert (=> b!2243832 (= e!1435186 (equivClasses!1612 (toChars!5781 (transformation!4192 r!2363)) (toValue!5922 (transformation!4192 r!2363))))))

(assert (= (and d!666336 res!958702) b!2243832))

(declare-fun m!2675975 () Bool)

(assert (=> d!666336 m!2675975))

(declare-fun m!2675977 () Bool)

(assert (=> b!2243832 m!2675977))

(assert (=> b!2243687 d!666336))

(declare-fun d!666338 () Bool)

(declare-fun lt!835056 () Int)

(assert (=> d!666338 (= lt!835056 (size!20724 (list!10129 (charsOf!2580 (head!4747 tokens!456)))))))

(declare-fun size!20729 (Conc!8532) Int)

(assert (=> d!666338 (= lt!835056 (size!20729 (c!357190 (charsOf!2580 (head!4747 tokens!456)))))))

(assert (=> d!666338 (= (size!20723 (charsOf!2580 (head!4747 tokens!456))) lt!835056)))

(declare-fun bs!454763 () Bool)

(assert (= bs!454763 d!666338))

(assert (=> bs!454763 m!2675819))

(declare-fun m!2675979 () Bool)

(assert (=> bs!454763 m!2675979))

(assert (=> bs!454763 m!2675979))

(declare-fun m!2675981 () Bool)

(assert (=> bs!454763 m!2675981))

(declare-fun m!2675983 () Bool)

(assert (=> bs!454763 m!2675983))

(assert (=> b!2243698 d!666338))

(declare-fun d!666340 () Bool)

(declare-fun lt!835059 () BalanceConc!16792)

(assert (=> d!666340 (= (list!10129 lt!835059) (originalCharacters!4962 (head!4747 tokens!456)))))

(assert (=> d!666340 (= lt!835059 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456)))) (value!133293 (head!4747 tokens!456))))))

(assert (=> d!666340 (= (charsOf!2580 (head!4747 tokens!456)) lt!835059)))

(declare-fun b_lambda!71811 () Bool)

(assert (=> (not b_lambda!71811) (not d!666340)))

(declare-fun tb!132903 () Bool)

(declare-fun t!200174 () Bool)

(assert (=> (and b!2243696 (= (toChars!5781 (transformation!4192 (h!31912 rules!1750))) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200174) tb!132903))

(declare-fun b!2243833 () Bool)

(declare-fun e!1435187 () Bool)

(declare-fun tp!707859 () Bool)

(assert (=> b!2243833 (= e!1435187 (and (inv!36044 (c!357190 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456)))) (value!133293 (head!4747 tokens!456))))) tp!707859))))

(declare-fun result!161972 () Bool)

(assert (=> tb!132903 (= result!161972 (and (inv!36045 (dynLambda!11559 (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456)))) (value!133293 (head!4747 tokens!456)))) e!1435187))))

(assert (= tb!132903 b!2243833))

(declare-fun m!2675985 () Bool)

(assert (=> b!2243833 m!2675985))

(declare-fun m!2675987 () Bool)

(assert (=> tb!132903 m!2675987))

(assert (=> d!666340 t!200174))

(declare-fun b_and!175313 () Bool)

(assert (= b_and!175305 (and (=> t!200174 result!161972) b_and!175313)))

(declare-fun t!200176 () Bool)

(declare-fun tb!132905 () Bool)

(assert (=> (and b!2243688 (= (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200176) tb!132905))

(declare-fun result!161974 () Bool)

(assert (= result!161974 result!161972))

(assert (=> d!666340 t!200176))

(declare-fun b_and!175315 () Bool)

(assert (= b_and!175307 (and (=> t!200176 result!161974) b_and!175315)))

(declare-fun t!200178 () Bool)

(declare-fun tb!132907 () Bool)

(assert (=> (and b!2243693 (= (toChars!5781 (transformation!4192 r!2363)) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200178) tb!132907))

(declare-fun result!161976 () Bool)

(assert (= result!161976 result!161972))

(assert (=> d!666340 t!200178))

(declare-fun b_and!175317 () Bool)

(assert (= b_and!175309 (and (=> t!200178 result!161976) b_and!175317)))

(declare-fun t!200180 () Bool)

(declare-fun tb!132909 () Bool)

(assert (=> (and b!2243708 (= (toChars!5781 (transformation!4192 otherR!12)) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200180) tb!132909))

(declare-fun result!161978 () Bool)

(assert (= result!161978 result!161972))

(assert (=> d!666340 t!200180))

(declare-fun b_and!175319 () Bool)

(assert (= b_and!175311 (and (=> t!200180 result!161978) b_and!175319)))

(declare-fun m!2675989 () Bool)

(assert (=> d!666340 m!2675989))

(declare-fun m!2675991 () Bool)

(assert (=> d!666340 m!2675991))

(assert (=> b!2243698 d!666340))

(declare-fun d!666342 () Bool)

(assert (=> d!666342 (= (head!4747 tokens!456) (h!31913 tokens!456))))

(assert (=> b!2243698 d!666342))

(declare-fun d!666344 () Bool)

(declare-fun lt!835062 () Int)

(assert (=> d!666344 (>= lt!835062 0)))

(declare-fun e!1435190 () Int)

(assert (=> d!666344 (= lt!835062 e!1435190)))

(declare-fun c!357208 () Bool)

(assert (=> d!666344 (= c!357208 (is-Nil!26510 otherP!12))))

(assert (=> d!666344 (= (size!20724 otherP!12) lt!835062)))

(declare-fun b!2243838 () Bool)

(assert (=> b!2243838 (= e!1435190 0)))

(declare-fun b!2243839 () Bool)

(assert (=> b!2243839 (= e!1435190 (+ 1 (size!20724 (t!200158 otherP!12))))))

(assert (= (and d!666344 c!357208) b!2243838))

(assert (= (and d!666344 (not c!357208)) b!2243839))

(declare-fun m!2675993 () Bool)

(assert (=> b!2243839 m!2675993))

(assert (=> b!2243698 d!666344))

(declare-fun d!666346 () Bool)

(declare-fun res!958705 () Bool)

(declare-fun e!1435193 () Bool)

(assert (=> d!666346 (=> (not res!958705) (not e!1435193))))

(declare-fun rulesValid!1537 (LexerInterface!3789 List!26605) Bool)

(assert (=> d!666346 (= res!958705 (rulesValid!1537 thiss!16613 rules!1750))))

(assert (=> d!666346 (= (rulesInvariant!3291 thiss!16613 rules!1750) e!1435193)))

(declare-fun b!2243842 () Bool)

(declare-datatypes ((List!26611 0))(
  ( (Nil!26517) (Cons!26517 (h!31918 String!28876) (t!200189 List!26611)) )
))
(declare-fun noDuplicateTag!1535 (LexerInterface!3789 List!26605 List!26611) Bool)

(assert (=> b!2243842 (= e!1435193 (noDuplicateTag!1535 thiss!16613 rules!1750 Nil!26517))))

(assert (= (and d!666346 res!958705) b!2243842))

(declare-fun m!2675995 () Bool)

(assert (=> d!666346 m!2675995))

(declare-fun m!2675997 () Bool)

(assert (=> b!2243842 m!2675997))

(assert (=> b!2243699 d!666346))

(declare-fun d!666348 () Bool)

(assert (=> d!666348 (= (inv!36037 (tag!4682 (h!31912 rules!1750))) (= (mod (str.len (value!133292 (tag!4682 (h!31912 rules!1750)))) 2) 0))))

(assert (=> b!2243695 d!666348))

(declare-fun d!666350 () Bool)

(declare-fun res!958706 () Bool)

(declare-fun e!1435194 () Bool)

(assert (=> d!666350 (=> (not res!958706) (not e!1435194))))

(assert (=> d!666350 (= res!958706 (semiInverseModEq!1693 (toChars!5781 (transformation!4192 (h!31912 rules!1750))) (toValue!5922 (transformation!4192 (h!31912 rules!1750)))))))

(assert (=> d!666350 (= (inv!36040 (transformation!4192 (h!31912 rules!1750))) e!1435194)))

(declare-fun b!2243843 () Bool)

(assert (=> b!2243843 (= e!1435194 (equivClasses!1612 (toChars!5781 (transformation!4192 (h!31912 rules!1750))) (toValue!5922 (transformation!4192 (h!31912 rules!1750)))))))

(assert (= (and d!666350 res!958706) b!2243843))

(declare-fun m!2675999 () Bool)

(assert (=> d!666350 m!2675999))

(declare-fun m!2676001 () Bool)

(assert (=> b!2243843 m!2676001))

(assert (=> b!2243695 d!666350))

(declare-fun d!666352 () Bool)

(assert (=> d!666352 (= (isEmpty!14922 rules!1750) (is-Nil!26511 rules!1750))))

(assert (=> b!2243707 d!666352))

(declare-fun b!2243855 () Bool)

(declare-fun e!1435197 () Bool)

(declare-fun tp!707872 () Bool)

(declare-fun tp!707874 () Bool)

(assert (=> b!2243855 (= e!1435197 (and tp!707872 tp!707874))))

(declare-fun b!2243857 () Bool)

(declare-fun tp!707871 () Bool)

(declare-fun tp!707870 () Bool)

(assert (=> b!2243857 (= e!1435197 (and tp!707871 tp!707870))))

(declare-fun b!2243854 () Bool)

(assert (=> b!2243854 (= e!1435197 tp_is_empty!10301)))

(assert (=> b!2243692 (= tp!707801 e!1435197)))

(declare-fun b!2243856 () Bool)

(declare-fun tp!707873 () Bool)

(assert (=> b!2243856 (= e!1435197 tp!707873)))

(assert (= (and b!2243692 (is-ElementMatch!6540 (regex!4192 otherR!12))) b!2243854))

(assert (= (and b!2243692 (is-Concat!10895 (regex!4192 otherR!12))) b!2243855))

(assert (= (and b!2243692 (is-Star!6540 (regex!4192 otherR!12))) b!2243856))

(assert (= (and b!2243692 (is-Union!6540 (regex!4192 otherR!12))) b!2243857))

(declare-fun b!2243862 () Bool)

(declare-fun e!1435200 () Bool)

(declare-fun tp!707877 () Bool)

(assert (=> b!2243862 (= e!1435200 (and tp_is_empty!10301 tp!707877))))

(assert (=> b!2243703 (= tp!707797 e!1435200)))

(assert (= (and b!2243703 (is-Cons!26510 (t!200158 otherP!12))) b!2243862))

(declare-fun b!2243863 () Bool)

(declare-fun e!1435201 () Bool)

(declare-fun tp!707878 () Bool)

(assert (=> b!2243863 (= e!1435201 (and tp_is_empty!10301 tp!707878))))

(assert (=> b!2243704 (= tp!707800 e!1435201)))

(assert (= (and b!2243704 (is-Cons!26510 (originalCharacters!4962 (h!31913 tokens!456)))) b!2243863))

(declare-fun b!2243865 () Bool)

(declare-fun e!1435202 () Bool)

(declare-fun tp!707881 () Bool)

(declare-fun tp!707883 () Bool)

(assert (=> b!2243865 (= e!1435202 (and tp!707881 tp!707883))))

(declare-fun b!2243867 () Bool)

(declare-fun tp!707880 () Bool)

(declare-fun tp!707879 () Bool)

(assert (=> b!2243867 (= e!1435202 (and tp!707880 tp!707879))))

(declare-fun b!2243864 () Bool)

(assert (=> b!2243864 (= e!1435202 tp_is_empty!10301)))

(assert (=> b!2243700 (= tp!707798 e!1435202)))

(declare-fun b!2243866 () Bool)

(declare-fun tp!707882 () Bool)

(assert (=> b!2243866 (= e!1435202 tp!707882)))

(assert (= (and b!2243700 (is-ElementMatch!6540 (regex!4192 (rule!6490 (h!31913 tokens!456))))) b!2243864))

(assert (= (and b!2243700 (is-Concat!10895 (regex!4192 (rule!6490 (h!31913 tokens!456))))) b!2243865))

(assert (= (and b!2243700 (is-Star!6540 (regex!4192 (rule!6490 (h!31913 tokens!456))))) b!2243866))

(assert (= (and b!2243700 (is-Union!6540 (regex!4192 (rule!6490 (h!31913 tokens!456))))) b!2243867))

(declare-fun b!2243881 () Bool)

(declare-fun b_free!65261 () Bool)

(declare-fun b_next!65965 () Bool)

(assert (=> b!2243881 (= b_free!65261 (not b_next!65965))))

(declare-fun tp!707895 () Bool)

(declare-fun b_and!175321 () Bool)

(assert (=> b!2243881 (= tp!707895 b_and!175321)))

(declare-fun b_free!65263 () Bool)

(declare-fun b_next!65967 () Bool)

(assert (=> b!2243881 (= b_free!65263 (not b_next!65967))))

(declare-fun t!200182 () Bool)

(declare-fun tb!132911 () Bool)

(assert (=> (and b!2243881 (= (toChars!5781 (transformation!4192 (rule!6490 (h!31913 (t!200160 tokens!456))))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200182) tb!132911))

(declare-fun result!161986 () Bool)

(assert (= result!161986 result!161962))

(assert (=> b!2243823 t!200182))

(declare-fun t!200184 () Bool)

(declare-fun tb!132913 () Bool)

(assert (=> (and b!2243881 (= (toChars!5781 (transformation!4192 (rule!6490 (h!31913 (t!200160 tokens!456))))) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200184) tb!132913))

(declare-fun result!161988 () Bool)

(assert (= result!161988 result!161972))

(assert (=> d!666340 t!200184))

(declare-fun b_and!175323 () Bool)

(declare-fun tp!707898 () Bool)

(assert (=> b!2243881 (= tp!707898 (and (=> t!200182 result!161986) (=> t!200184 result!161988) b_and!175323))))

(declare-fun e!1435216 () Bool)

(assert (=> b!2243701 (= tp!707790 e!1435216)))

(declare-fun e!1435220 () Bool)

(declare-fun b!2243878 () Bool)

(declare-fun tp!707897 () Bool)

(assert (=> b!2243878 (= e!1435216 (and (inv!36041 (h!31913 (t!200160 tokens!456))) e!1435220 tp!707897))))

(declare-fun tp!707896 () Bool)

(declare-fun b!2243879 () Bool)

(declare-fun e!1435217 () Bool)

(assert (=> b!2243879 (= e!1435220 (and (inv!21 (value!133293 (h!31913 (t!200160 tokens!456)))) e!1435217 tp!707896))))

(declare-fun e!1435218 () Bool)

(declare-fun b!2243880 () Bool)

(declare-fun tp!707894 () Bool)

(assert (=> b!2243880 (= e!1435217 (and tp!707894 (inv!36037 (tag!4682 (rule!6490 (h!31913 (t!200160 tokens!456))))) (inv!36040 (transformation!4192 (rule!6490 (h!31913 (t!200160 tokens!456))))) e!1435218))))

(assert (=> b!2243881 (= e!1435218 (and tp!707895 tp!707898))))

(assert (= b!2243880 b!2243881))

(assert (= b!2243879 b!2243880))

(assert (= b!2243878 b!2243879))

(assert (= (and b!2243701 (is-Cons!26512 (t!200160 tokens!456))) b!2243878))

(declare-fun m!2676003 () Bool)

(assert (=> b!2243878 m!2676003))

(declare-fun m!2676005 () Bool)

(assert (=> b!2243879 m!2676005))

(declare-fun m!2676007 () Bool)

(assert (=> b!2243880 m!2676007))

(declare-fun m!2676009 () Bool)

(assert (=> b!2243880 m!2676009))

(declare-fun b!2243882 () Bool)

(declare-fun e!1435221 () Bool)

(declare-fun tp!707899 () Bool)

(assert (=> b!2243882 (= e!1435221 (and tp_is_empty!10301 tp!707899))))

(assert (=> b!2243697 (= tp!707795 e!1435221)))

(assert (= (and b!2243697 (is-Cons!26510 (t!200158 suffix!886))) b!2243882))

(declare-fun b!2243884 () Bool)

(declare-fun e!1435222 () Bool)

(declare-fun tp!707902 () Bool)

(declare-fun tp!707904 () Bool)

(assert (=> b!2243884 (= e!1435222 (and tp!707902 tp!707904))))

(declare-fun b!2243886 () Bool)

(declare-fun tp!707901 () Bool)

(declare-fun tp!707900 () Bool)

(assert (=> b!2243886 (= e!1435222 (and tp!707901 tp!707900))))

(declare-fun b!2243883 () Bool)

(assert (=> b!2243883 (= e!1435222 tp_is_empty!10301)))

(assert (=> b!2243687 (= tp!707786 e!1435222)))

(declare-fun b!2243885 () Bool)

(declare-fun tp!707903 () Bool)

(assert (=> b!2243885 (= e!1435222 tp!707903)))

(assert (= (and b!2243687 (is-ElementMatch!6540 (regex!4192 r!2363))) b!2243883))

(assert (= (and b!2243687 (is-Concat!10895 (regex!4192 r!2363))) b!2243884))

(assert (= (and b!2243687 (is-Star!6540 (regex!4192 r!2363))) b!2243885))

(assert (= (and b!2243687 (is-Union!6540 (regex!4192 r!2363))) b!2243886))

(declare-fun b!2243887 () Bool)

(declare-fun e!1435223 () Bool)

(declare-fun tp!707905 () Bool)

(assert (=> b!2243887 (= e!1435223 (and tp_is_empty!10301 tp!707905))))

(assert (=> b!2243705 (= tp!707784 e!1435223)))

(assert (= (and b!2243705 (is-Cons!26510 (t!200158 input!1722))) b!2243887))

(declare-fun b!2243889 () Bool)

(declare-fun e!1435224 () Bool)

(declare-fun tp!707908 () Bool)

(declare-fun tp!707910 () Bool)

(assert (=> b!2243889 (= e!1435224 (and tp!707908 tp!707910))))

(declare-fun b!2243891 () Bool)

(declare-fun tp!707907 () Bool)

(declare-fun tp!707906 () Bool)

(assert (=> b!2243891 (= e!1435224 (and tp!707907 tp!707906))))

(declare-fun b!2243888 () Bool)

(assert (=> b!2243888 (= e!1435224 tp_is_empty!10301)))

(assert (=> b!2243695 (= tp!707785 e!1435224)))

(declare-fun b!2243890 () Bool)

(declare-fun tp!707909 () Bool)

(assert (=> b!2243890 (= e!1435224 tp!707909)))

(assert (= (and b!2243695 (is-ElementMatch!6540 (regex!4192 (h!31912 rules!1750)))) b!2243888))

(assert (= (and b!2243695 (is-Concat!10895 (regex!4192 (h!31912 rules!1750)))) b!2243889))

(assert (= (and b!2243695 (is-Star!6540 (regex!4192 (h!31912 rules!1750)))) b!2243890))

(assert (= (and b!2243695 (is-Union!6540 (regex!4192 (h!31912 rules!1750)))) b!2243891))

(declare-fun b!2243902 () Bool)

(declare-fun b_free!65265 () Bool)

(declare-fun b_next!65969 () Bool)

(assert (=> b!2243902 (= b_free!65265 (not b_next!65969))))

(declare-fun tp!707919 () Bool)

(declare-fun b_and!175325 () Bool)

(assert (=> b!2243902 (= tp!707919 b_and!175325)))

(declare-fun b_free!65267 () Bool)

(declare-fun b_next!65971 () Bool)

(assert (=> b!2243902 (= b_free!65267 (not b_next!65971))))

(declare-fun t!200186 () Bool)

(declare-fun tb!132915 () Bool)

(assert (=> (and b!2243902 (= (toChars!5781 (transformation!4192 (h!31912 (t!200159 rules!1750)))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456))))) t!200186) tb!132915))

(declare-fun result!161992 () Bool)

(assert (= result!161992 result!161962))

(assert (=> b!2243823 t!200186))

(declare-fun t!200188 () Bool)

(declare-fun tb!132917 () Bool)

(assert (=> (and b!2243902 (= (toChars!5781 (transformation!4192 (h!31912 (t!200159 rules!1750)))) (toChars!5781 (transformation!4192 (rule!6490 (head!4747 tokens!456))))) t!200188) tb!132917))

(declare-fun result!161994 () Bool)

(assert (= result!161994 result!161972))

(assert (=> d!666340 t!200188))

(declare-fun tp!707920 () Bool)

(declare-fun b_and!175327 () Bool)

(assert (=> b!2243902 (= tp!707920 (and (=> t!200186 result!161992) (=> t!200188 result!161994) b_and!175327))))

(declare-fun e!1435233 () Bool)

(assert (=> b!2243902 (= e!1435233 (and tp!707919 tp!707920))))

(declare-fun b!2243901 () Bool)

(declare-fun e!1435234 () Bool)

(declare-fun tp!707922 () Bool)

(assert (=> b!2243901 (= e!1435234 (and tp!707922 (inv!36037 (tag!4682 (h!31912 (t!200159 rules!1750)))) (inv!36040 (transformation!4192 (h!31912 (t!200159 rules!1750)))) e!1435233))))

(declare-fun b!2243900 () Bool)

(declare-fun e!1435235 () Bool)

(declare-fun tp!707921 () Bool)

(assert (=> b!2243900 (= e!1435235 (and e!1435234 tp!707921))))

(assert (=> b!2243706 (= tp!707789 e!1435235)))

(assert (= b!2243901 b!2243902))

(assert (= b!2243900 b!2243901))

(assert (= (and b!2243706 (is-Cons!26511 (t!200159 rules!1750))) b!2243900))

(declare-fun m!2676011 () Bool)

(assert (=> b!2243901 m!2676011))

(declare-fun m!2676013 () Bool)

(assert (=> b!2243901 m!2676013))

(declare-fun b_lambda!71813 () Bool)

(assert (= b_lambda!71809 (or (and b!2243696 b_free!65231 (= (toChars!5781 (transformation!4192 (h!31912 rules!1750))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))))) (and b!2243708 b_free!65243 (= (toChars!5781 (transformation!4192 otherR!12)) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))))) (and b!2243902 b_free!65267 (= (toChars!5781 (transformation!4192 (h!31912 (t!200159 rules!1750)))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))))) (and b!2243693 b_free!65239 (= (toChars!5781 (transformation!4192 r!2363)) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))))) (and b!2243881 b_free!65263 (= (toChars!5781 (transformation!4192 (rule!6490 (h!31913 (t!200160 tokens!456))))) (toChars!5781 (transformation!4192 (rule!6490 (h!31913 tokens!456)))))) (and b!2243688 b_free!65235) b_lambda!71813)))

(push 1)

(assert (not b!2243810))

(assert (not d!666350))

(assert (not d!666328))

(assert (not b_next!65943))

(assert (not b!2243889))

(assert (not b!2243884))

(assert (not b!2243823))

(assert (not b!2243818))

(assert (not b!2243842))

(assert (not d!666302))

(assert (not b!2243829))

(assert (not d!666308))

(assert (not b!2243866))

(assert (not b!2243862))

(assert (not b_next!65971))

(assert (not b_next!65945))

(assert (not b!2243891))

(assert (not b!2243832))

(assert (not b_next!65967))

(assert (not b!2243901))

(assert (not b!2243865))

(assert (not b!2243855))

(assert (not b!2243831))

(assert (not b!2243809))

(assert b_and!175281)

(assert (not b!2243857))

(assert (not d!666346))

(assert (not b_next!65969))

(assert (not b!2243856))

(assert (not b_lambda!71811))

(assert (not d!666338))

(assert (not d!666340))

(assert (not d!666330))

(assert b_and!175323)

(assert (not b_lambda!71813))

(assert (not b!2243880))

(assert (not b_next!65941))

(assert (not d!666322))

(assert (not b!2243824))

(assert (not b!2243843))

(assert (not b!2243788))

(assert (not b!2243882))

(assert b_and!175273)

(assert (not d!666336))

(assert (not b!2243890))

(assert (not tb!132903))

(assert (not b!2243833))

(assert b_and!175327)

(assert (not b!2243887))

(assert (not b!2243886))

(assert b_and!175277)

(assert (not b!2243791))

(assert (not b!2243839))

(assert (not b!2243900))

(assert b_and!175315)

(assert tp_is_empty!10301)

(assert (not tb!132895))

(assert (not b!2243777))

(assert b_and!175319)

(assert (not b_next!65935))

(assert b_and!175313)

(assert (not b!2243812))

(assert (not d!666326))

(assert (not d!666306))

(assert (not b_next!65965))

(assert (not d!666332))

(assert (not b_next!65947))

(assert (not b_next!65933))

(assert b_and!175321)

(assert (not b_next!65939))

(assert (not b!2243878))

(assert (not b_next!65937))

(assert (not b!2243885))

(assert (not d!666296))

(assert (not b!2243808))

(assert (not b!2243867))

(assert (not b!2243790))

(assert (not b!2243863))

(assert (not b!2243811))

(assert b_and!175325)

(assert b_and!175285)

(assert b_and!175317)

(assert (not b!2243879))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!65943))

(assert (not b_next!65971))

(assert (not b_next!65945))

(assert (not b_next!65967))

(assert b_and!175281)

(assert (not b_next!65969))

(assert b_and!175323)

(assert (not b_next!65941))

(assert b_and!175273)

(assert b_and!175327)

(assert b_and!175277)

(assert b_and!175315)

(assert (not b_next!65965))

(assert (not b_next!65937))

(assert b_and!175319)

(assert (not b_next!65935))

(assert b_and!175313)

(assert (not b_next!65947))

(assert (not b_next!65933))

(assert (not b_next!65939))

(assert b_and!175321)

(assert b_and!175325)

(assert b_and!175285)

(assert b_and!175317)

(check-sat)

(pop 1)


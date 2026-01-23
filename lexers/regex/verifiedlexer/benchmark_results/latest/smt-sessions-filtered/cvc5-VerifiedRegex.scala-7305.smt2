; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389254 () Bool)

(assert start!389254)

(declare-fun b!4108660 () Bool)

(declare-fun b_free!115345 () Bool)

(declare-fun b_next!116049 () Bool)

(assert (=> b!4108660 (= b_free!115345 (not b_next!116049))))

(declare-fun tp!1248533 () Bool)

(declare-fun b_and!317159 () Bool)

(assert (=> b!4108660 (= tp!1248533 b_and!317159)))

(declare-fun b_free!115347 () Bool)

(declare-fun b_next!116051 () Bool)

(assert (=> b!4108660 (= b_free!115347 (not b_next!116051))))

(declare-fun tp!1248531 () Bool)

(declare-fun b_and!317161 () Bool)

(assert (=> b!4108660 (= tp!1248531 b_and!317161)))

(declare-fun b!4108658 () Bool)

(declare-fun b_free!115349 () Bool)

(declare-fun b_next!116053 () Bool)

(assert (=> b!4108658 (= b_free!115349 (not b_next!116053))))

(declare-fun tp!1248532 () Bool)

(declare-fun b_and!317163 () Bool)

(assert (=> b!4108658 (= tp!1248532 b_and!317163)))

(declare-fun b_free!115351 () Bool)

(declare-fun b_next!116055 () Bool)

(assert (=> b!4108658 (= b_free!115351 (not b_next!116055))))

(declare-fun tp!1248537 () Bool)

(declare-fun b_and!317165 () Bool)

(assert (=> b!4108658 (= tp!1248537 b_and!317165)))

(declare-fun b!4108652 () Bool)

(declare-fun e!2548950 () Bool)

(declare-fun e!2548943 () Bool)

(declare-fun tp!1248536 () Bool)

(assert (=> b!4108652 (= e!2548950 (and e!2548943 tp!1248536))))

(declare-fun b!4108653 () Bool)

(declare-fun res!1678637 () Bool)

(declare-fun e!2548948 () Bool)

(assert (=> b!4108653 (=> (not res!1678637) (not e!2548948))))

(declare-datatypes ((String!50806 0))(
  ( (String!50807 (value!225248 String)) )
))
(declare-datatypes ((C!24358 0))(
  ( (C!24359 (val!14289 Int)) )
))
(declare-datatypes ((List!44324 0))(
  ( (Nil!44200) (Cons!44200 (h!49620 C!24358) (t!339981 List!44324)) )
))
(declare-datatypes ((IArray!26789 0))(
  ( (IArray!26790 (innerList!13452 List!44324)) )
))
(declare-datatypes ((Conc!13392 0))(
  ( (Node!13392 (left!33165 Conc!13392) (right!33495 Conc!13392) (csize!27014 Int) (cheight!13603 Int)) (Leaf!20698 (xs!16698 IArray!26789) (csize!27015 Int)) (Empty!13392) )
))
(declare-datatypes ((List!44325 0))(
  ( (Nil!44201) (Cons!44201 (h!49621 (_ BitVec 16)) (t!339982 List!44325)) )
))
(declare-datatypes ((Regex!12086 0))(
  ( (ElementMatch!12086 (c!706696 C!24358)) (Concat!19497 (regOne!24684 Regex!12086) (regTwo!24684 Regex!12086)) (EmptyExpr!12086) (Star!12086 (reg!12415 Regex!12086)) (EmptyLang!12086) (Union!12086 (regOne!24685 Regex!12086) (regTwo!24685 Regex!12086)) )
))
(declare-datatypes ((TokenValue!7411 0))(
  ( (FloatLiteralValue!14822 (text!52322 List!44325)) (TokenValueExt!7410 (__x!27039 Int)) (Broken!37055 (value!225249 List!44325)) (Object!7534) (End!7411) (Def!7411) (Underscore!7411) (Match!7411) (Else!7411) (Error!7411) (Case!7411) (If!7411) (Extends!7411) (Abstract!7411) (Class!7411) (Val!7411) (DelimiterValue!14822 (del!7471 List!44325)) (KeywordValue!7417 (value!225250 List!44325)) (CommentValue!14822 (value!225251 List!44325)) (WhitespaceValue!14822 (value!225252 List!44325)) (IndentationValue!7411 (value!225253 List!44325)) (String!50808) (Int32!7411) (Broken!37056 (value!225254 List!44325)) (Boolean!7412) (Unit!63671) (OperatorValue!7414 (op!7471 List!44325)) (IdentifierValue!14822 (value!225255 List!44325)) (IdentifierValue!14823 (value!225256 List!44325)) (WhitespaceValue!14823 (value!225257 List!44325)) (True!14822) (False!14822) (Broken!37057 (value!225258 List!44325)) (Broken!37058 (value!225259 List!44325)) (True!14823) (RightBrace!7411) (RightBracket!7411) (Colon!7411) (Null!7411) (Comma!7411) (LeftBracket!7411) (False!14823) (LeftBrace!7411) (ImaginaryLiteralValue!7411 (text!52323 List!44325)) (StringLiteralValue!22233 (value!225260 List!44325)) (EOFValue!7411 (value!225261 List!44325)) (IdentValue!7411 (value!225262 List!44325)) (DelimiterValue!14823 (value!225263 List!44325)) (DedentValue!7411 (value!225264 List!44325)) (NewLineValue!7411 (value!225265 List!44325)) (IntegerValue!22233 (value!225266 (_ BitVec 32)) (text!52324 List!44325)) (IntegerValue!22234 (value!225267 Int) (text!52325 List!44325)) (Times!7411) (Or!7411) (Equal!7411) (Minus!7411) (Broken!37059 (value!225268 List!44325)) (And!7411) (Div!7411) (LessEqual!7411) (Mod!7411) (Concat!19498) (Not!7411) (Plus!7411) (SpaceValue!7411 (value!225269 List!44325)) (IntegerValue!22235 (value!225270 Int) (text!52326 List!44325)) (StringLiteralValue!22234 (text!52327 List!44325)) (FloatLiteralValue!14823 (text!52328 List!44325)) (BytesLiteralValue!7411 (value!225271 List!44325)) (CommentValue!14823 (value!225272 List!44325)) (StringLiteralValue!22235 (value!225273 List!44325)) (ErrorTokenValue!7411 (msg!7472 List!44325)) )
))
(declare-datatypes ((BalanceConc!26378 0))(
  ( (BalanceConc!26379 (c!706697 Conc!13392)) )
))
(declare-datatypes ((TokenValueInjection!14250 0))(
  ( (TokenValueInjection!14251 (toValue!9805 Int) (toChars!9664 Int)) )
))
(declare-datatypes ((Rule!14162 0))(
  ( (Rule!14163 (regex!7181 Regex!12086) (tag!8041 String!50806) (isSeparator!7181 Bool) (transformation!7181 TokenValueInjection!14250)) )
))
(declare-datatypes ((List!44326 0))(
  ( (Nil!44202) (Cons!44202 (h!49622 Rule!14162) (t!339983 List!44326)) )
))
(declare-fun rTail!27 () List!44326)

(assert (=> b!4108653 (= res!1678637 (is-Cons!44202 rTail!27))))

(declare-fun b!4108654 () Bool)

(declare-fun e!2548942 () Bool)

(declare-fun ListPrimitiveSize!278 (List!44326) Int)

(assert (=> b!4108654 (= e!2548942 (< (ListPrimitiveSize!278 (t!339983 rTail!27)) (ListPrimitiveSize!278 rTail!27)))))

(declare-fun b!4108655 () Bool)

(declare-fun e!2548941 () Bool)

(assert (=> b!4108655 (= e!2548948 (not e!2548941))))

(declare-fun res!1678638 () Bool)

(assert (=> b!4108655 (=> res!1678638 e!2548941)))

(declare-fun isEmpty!26392 (List!44326) Bool)

(assert (=> b!4108655 (= res!1678638 (isEmpty!26392 (t!339983 rTail!27)))))

(declare-fun rHead!24 () Rule!14162)

(assert (=> b!4108655 (not (= (tag!8041 rHead!24) (tag!8041 (h!49622 rTail!27))))))

(declare-fun lt!1467675 () List!44326)

(declare-datatypes ((Unit!63672 0))(
  ( (Unit!63673) )
))
(declare-fun lt!1467672 () Unit!63672)

(declare-datatypes ((LexerInterface!6770 0))(
  ( (LexerInterfaceExt!6767 (__x!27040 Int)) (Lexer!6768) )
))
(declare-fun thiss!26455 () LexerInterface!6770)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!41 (LexerInterface!6770 List!44326 Rule!14162 Rule!14162) Unit!63672)

(assert (=> b!4108655 (= lt!1467672 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!41 thiss!26455 lt!1467675 rHead!24 (h!49622 rTail!27)))))

(declare-fun lt!1467676 () List!44326)

(declare-datatypes ((List!44327 0))(
  ( (Nil!44203) (Cons!44203 (h!49623 String!50806) (t!339984 List!44327)) )
))
(declare-fun noDuplicateTag!2858 (LexerInterface!6770 List!44326 List!44327) Bool)

(assert (=> b!4108655 (noDuplicateTag!2858 thiss!26455 (Cons!44202 (h!49622 rTail!27) lt!1467676) Nil!44203)))

(assert (=> b!4108655 (= lt!1467676 (Cons!44202 rHead!24 (t!339983 rTail!27)))))

(declare-fun lt!1467673 () Unit!63672)

(declare-fun lemmaNoDuplicateCanReorder!53 (LexerInterface!6770 Rule!14162 Rule!14162 List!44326) Unit!63672)

(assert (=> b!4108655 (= lt!1467673 (lemmaNoDuplicateCanReorder!53 thiss!26455 rHead!24 (h!49622 rTail!27) (t!339983 rTail!27)))))

(declare-fun res!1678639 () Bool)

(declare-fun e!2548945 () Bool)

(assert (=> start!389254 (=> (not res!1678639) (not e!2548945))))

(assert (=> start!389254 (= res!1678639 (is-Lexer!6768 thiss!26455))))

(assert (=> start!389254 e!2548945))

(assert (=> start!389254 true))

(assert (=> start!389254 e!2548950))

(declare-fun e!2548949 () Bool)

(assert (=> start!389254 e!2548949))

(declare-fun b!4108656 () Bool)

(declare-fun res!1678641 () Bool)

(assert (=> b!4108656 (=> (not res!1678641) (not e!2548945))))

(assert (=> b!4108656 (= res!1678641 (not (isEmpty!26392 rTail!27)))))

(declare-fun b!4108657 () Bool)

(assert (=> b!4108657 (= e!2548941 e!2548942)))

(declare-fun res!1678636 () Bool)

(assert (=> b!4108657 (=> res!1678636 e!2548942)))

(declare-fun rulesInvariant!6113 (LexerInterface!6770 List!44326) Bool)

(assert (=> b!4108657 (= res!1678636 (not (rulesInvariant!6113 thiss!26455 lt!1467676)))))

(assert (=> b!4108657 (noDuplicateTag!2858 thiss!26455 lt!1467676 Nil!44203)))

(declare-fun lt!1467674 () Unit!63672)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!21 (LexerInterface!6770 List!44327 List!44327 List!44326) Unit!63672)

(assert (=> b!4108657 (= lt!1467674 (lemmaNoDupTagThenAlsoWithSubListAcc!21 thiss!26455 (Cons!44203 (tag!8041 (h!49622 rTail!27)) Nil!44203) Nil!44203 lt!1467676))))

(declare-fun e!2548947 () Bool)

(assert (=> b!4108658 (= e!2548947 (and tp!1248532 tp!1248537))))

(declare-fun b!4108659 () Bool)

(assert (=> b!4108659 (= e!2548945 e!2548948)))

(declare-fun res!1678640 () Bool)

(assert (=> b!4108659 (=> (not res!1678640) (not e!2548948))))

(assert (=> b!4108659 (= res!1678640 (rulesInvariant!6113 thiss!26455 lt!1467675))))

(assert (=> b!4108659 (= lt!1467675 (Cons!44202 rHead!24 rTail!27))))

(declare-fun e!2548944 () Bool)

(assert (=> b!4108660 (= e!2548944 (and tp!1248533 tp!1248531))))

(declare-fun tp!1248534 () Bool)

(declare-fun b!4108661 () Bool)

(declare-fun inv!58856 (String!50806) Bool)

(declare-fun inv!58859 (TokenValueInjection!14250) Bool)

(assert (=> b!4108661 (= e!2548949 (and tp!1248534 (inv!58856 (tag!8041 rHead!24)) (inv!58859 (transformation!7181 rHead!24)) e!2548947))))

(declare-fun b!4108662 () Bool)

(declare-fun tp!1248535 () Bool)

(assert (=> b!4108662 (= e!2548943 (and tp!1248535 (inv!58856 (tag!8041 (h!49622 rTail!27))) (inv!58859 (transformation!7181 (h!49622 rTail!27))) e!2548944))))

(assert (= (and start!389254 res!1678639) b!4108656))

(assert (= (and b!4108656 res!1678641) b!4108659))

(assert (= (and b!4108659 res!1678640) b!4108653))

(assert (= (and b!4108653 res!1678637) b!4108655))

(assert (= (and b!4108655 (not res!1678638)) b!4108657))

(assert (= (and b!4108657 (not res!1678636)) b!4108654))

(assert (= b!4108662 b!4108660))

(assert (= b!4108652 b!4108662))

(assert (= (and start!389254 (is-Cons!44202 rTail!27)) b!4108652))

(assert (= b!4108661 b!4108658))

(assert (= start!389254 b!4108661))

(declare-fun m!4711093 () Bool)

(assert (=> b!4108656 m!4711093))

(declare-fun m!4711095 () Bool)

(assert (=> b!4108659 m!4711095))

(declare-fun m!4711097 () Bool)

(assert (=> b!4108662 m!4711097))

(declare-fun m!4711099 () Bool)

(assert (=> b!4108662 m!4711099))

(declare-fun m!4711101 () Bool)

(assert (=> b!4108655 m!4711101))

(declare-fun m!4711103 () Bool)

(assert (=> b!4108655 m!4711103))

(declare-fun m!4711105 () Bool)

(assert (=> b!4108655 m!4711105))

(declare-fun m!4711107 () Bool)

(assert (=> b!4108655 m!4711107))

(declare-fun m!4711109 () Bool)

(assert (=> b!4108654 m!4711109))

(declare-fun m!4711111 () Bool)

(assert (=> b!4108654 m!4711111))

(declare-fun m!4711113 () Bool)

(assert (=> b!4108657 m!4711113))

(declare-fun m!4711115 () Bool)

(assert (=> b!4108657 m!4711115))

(declare-fun m!4711117 () Bool)

(assert (=> b!4108657 m!4711117))

(declare-fun m!4711119 () Bool)

(assert (=> b!4108661 m!4711119))

(declare-fun m!4711121 () Bool)

(assert (=> b!4108661 m!4711121))

(push 1)

(assert (not b!4108654))

(assert (not b!4108657))

(assert (not b_next!116049))

(assert (not b!4108655))

(assert (not b!4108656))

(assert (not b!4108662))

(assert b_and!317159)

(assert (not b!4108659))

(assert (not b!4108661))

(assert (not b_next!116051))

(assert b_and!317165)

(assert (not b_next!116053))

(assert b_and!317161)

(assert (not b!4108652))

(assert b_and!317163)

(assert (not b_next!116055))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317161)

(assert (not b_next!116049))

(assert b_and!317159)

(assert (not b_next!116051))

(assert b_and!317165)

(assert (not b_next!116053))

(assert b_and!317163)

(assert (not b_next!116055))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1219010 () Bool)

(declare-fun res!1678669 () Bool)

(declare-fun e!2548986 () Bool)

(assert (=> d!1219010 (=> (not res!1678669) (not e!2548986))))

(declare-fun rulesValid!2827 (LexerInterface!6770 List!44326) Bool)

(assert (=> d!1219010 (= res!1678669 (rulesValid!2827 thiss!26455 lt!1467676))))

(assert (=> d!1219010 (= (rulesInvariant!6113 thiss!26455 lt!1467676) e!2548986)))

(declare-fun b!4108698 () Bool)

(assert (=> b!4108698 (= e!2548986 (noDuplicateTag!2858 thiss!26455 lt!1467676 Nil!44203))))

(assert (= (and d!1219010 res!1678669) b!4108698))

(declare-fun m!4711153 () Bool)

(assert (=> d!1219010 m!4711153))

(assert (=> b!4108698 m!4711115))

(assert (=> b!4108657 d!1219010))

(declare-fun d!1219012 () Bool)

(declare-fun res!1678674 () Bool)

(declare-fun e!2548991 () Bool)

(assert (=> d!1219012 (=> res!1678674 e!2548991)))

(assert (=> d!1219012 (= res!1678674 (is-Nil!44202 lt!1467676))))

(assert (=> d!1219012 (= (noDuplicateTag!2858 thiss!26455 lt!1467676 Nil!44203) e!2548991)))

(declare-fun b!4108703 () Bool)

(declare-fun e!2548992 () Bool)

(assert (=> b!4108703 (= e!2548991 e!2548992)))

(declare-fun res!1678675 () Bool)

(assert (=> b!4108703 (=> (not res!1678675) (not e!2548992))))

(declare-fun contains!8861 (List!44327 String!50806) Bool)

(assert (=> b!4108703 (= res!1678675 (not (contains!8861 Nil!44203 (tag!8041 (h!49622 lt!1467676)))))))

(declare-fun b!4108704 () Bool)

(assert (=> b!4108704 (= e!2548992 (noDuplicateTag!2858 thiss!26455 (t!339983 lt!1467676) (Cons!44203 (tag!8041 (h!49622 lt!1467676)) Nil!44203)))))

(assert (= (and d!1219012 (not res!1678674)) b!4108703))

(assert (= (and b!4108703 res!1678675) b!4108704))

(declare-fun m!4711155 () Bool)

(assert (=> b!4108703 m!4711155))

(declare-fun m!4711157 () Bool)

(assert (=> b!4108704 m!4711157))

(assert (=> b!4108657 d!1219012))

(declare-fun d!1219014 () Bool)

(assert (=> d!1219014 (noDuplicateTag!2858 thiss!26455 lt!1467676 Nil!44203)))

(declare-fun lt!1467694 () Unit!63672)

(declare-fun choose!25114 (LexerInterface!6770 List!44327 List!44327 List!44326) Unit!63672)

(assert (=> d!1219014 (= lt!1467694 (choose!25114 thiss!26455 (Cons!44203 (tag!8041 (h!49622 rTail!27)) Nil!44203) Nil!44203 lt!1467676))))

(declare-fun subseq!550 (List!44327 List!44327) Bool)

(assert (=> d!1219014 (subseq!550 Nil!44203 (Cons!44203 (tag!8041 (h!49622 rTail!27)) Nil!44203))))

(assert (=> d!1219014 (= (lemmaNoDupTagThenAlsoWithSubListAcc!21 thiss!26455 (Cons!44203 (tag!8041 (h!49622 rTail!27)) Nil!44203) Nil!44203 lt!1467676) lt!1467694)))

(declare-fun bs!594165 () Bool)

(assert (= bs!594165 d!1219014))

(assert (=> bs!594165 m!4711115))

(declare-fun m!4711159 () Bool)

(assert (=> bs!594165 m!4711159))

(declare-fun m!4711161 () Bool)

(assert (=> bs!594165 m!4711161))

(assert (=> b!4108657 d!1219014))

(declare-fun d!1219016 () Bool)

(assert (=> d!1219016 (= (inv!58856 (tag!8041 (h!49622 rTail!27))) (= (mod (str.len (value!225248 (tag!8041 (h!49622 rTail!27)))) 2) 0))))

(assert (=> b!4108662 d!1219016))

(declare-fun d!1219018 () Bool)

(declare-fun res!1678678 () Bool)

(declare-fun e!2548995 () Bool)

(assert (=> d!1219018 (=> (not res!1678678) (not e!2548995))))

(declare-fun semiInverseModEq!3092 (Int Int) Bool)

(assert (=> d!1219018 (= res!1678678 (semiInverseModEq!3092 (toChars!9664 (transformation!7181 (h!49622 rTail!27))) (toValue!9805 (transformation!7181 (h!49622 rTail!27)))))))

(assert (=> d!1219018 (= (inv!58859 (transformation!7181 (h!49622 rTail!27))) e!2548995)))

(declare-fun b!4108707 () Bool)

(declare-fun equivClasses!2991 (Int Int) Bool)

(assert (=> b!4108707 (= e!2548995 (equivClasses!2991 (toChars!9664 (transformation!7181 (h!49622 rTail!27))) (toValue!9805 (transformation!7181 (h!49622 rTail!27)))))))

(assert (= (and d!1219018 res!1678678) b!4108707))

(declare-fun m!4711163 () Bool)

(assert (=> d!1219018 m!4711163))

(declare-fun m!4711165 () Bool)

(assert (=> b!4108707 m!4711165))

(assert (=> b!4108662 d!1219018))

(declare-fun d!1219022 () Bool)

(assert (=> d!1219022 (= (inv!58856 (tag!8041 rHead!24)) (= (mod (str.len (value!225248 (tag!8041 rHead!24))) 2) 0))))

(assert (=> b!4108661 d!1219022))

(declare-fun d!1219024 () Bool)

(declare-fun res!1678679 () Bool)

(declare-fun e!2548996 () Bool)

(assert (=> d!1219024 (=> (not res!1678679) (not e!2548996))))

(assert (=> d!1219024 (= res!1678679 (semiInverseModEq!3092 (toChars!9664 (transformation!7181 rHead!24)) (toValue!9805 (transformation!7181 rHead!24))))))

(assert (=> d!1219024 (= (inv!58859 (transformation!7181 rHead!24)) e!2548996)))

(declare-fun b!4108708 () Bool)

(assert (=> b!4108708 (= e!2548996 (equivClasses!2991 (toChars!9664 (transformation!7181 rHead!24)) (toValue!9805 (transformation!7181 rHead!24))))))

(assert (= (and d!1219024 res!1678679) b!4108708))

(declare-fun m!4711167 () Bool)

(assert (=> d!1219024 m!4711167))

(declare-fun m!4711169 () Bool)

(assert (=> b!4108708 m!4711169))

(assert (=> b!4108661 d!1219024))

(declare-fun d!1219026 () Bool)

(assert (=> d!1219026 (= (isEmpty!26392 rTail!27) (is-Nil!44202 rTail!27))))

(assert (=> b!4108656 d!1219026))

(declare-fun d!1219028 () Bool)

(assert (=> d!1219028 (= (isEmpty!26392 (t!339983 rTail!27)) (is-Nil!44202 (t!339983 rTail!27)))))

(assert (=> b!4108655 d!1219028))

(declare-fun d!1219030 () Bool)

(assert (=> d!1219030 (not (= (tag!8041 rHead!24) (tag!8041 (h!49622 rTail!27))))))

(declare-fun lt!1467697 () Unit!63672)

(declare-fun choose!25115 (LexerInterface!6770 List!44326 Rule!14162 Rule!14162) Unit!63672)

(assert (=> d!1219030 (= lt!1467697 (choose!25115 thiss!26455 lt!1467675 rHead!24 (h!49622 rTail!27)))))

(declare-fun contains!8862 (List!44326 Rule!14162) Bool)

(assert (=> d!1219030 (contains!8862 lt!1467675 rHead!24)))

(assert (=> d!1219030 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!41 thiss!26455 lt!1467675 rHead!24 (h!49622 rTail!27)) lt!1467697)))

(declare-fun bs!594166 () Bool)

(assert (= bs!594166 d!1219030))

(declare-fun m!4711171 () Bool)

(assert (=> bs!594166 m!4711171))

(declare-fun m!4711173 () Bool)

(assert (=> bs!594166 m!4711173))

(assert (=> b!4108655 d!1219030))

(declare-fun d!1219034 () Bool)

(declare-fun res!1678680 () Bool)

(declare-fun e!2548997 () Bool)

(assert (=> d!1219034 (=> res!1678680 e!2548997)))

(assert (=> d!1219034 (= res!1678680 (is-Nil!44202 (Cons!44202 (h!49622 rTail!27) lt!1467676)))))

(assert (=> d!1219034 (= (noDuplicateTag!2858 thiss!26455 (Cons!44202 (h!49622 rTail!27) lt!1467676) Nil!44203) e!2548997)))

(declare-fun b!4108709 () Bool)

(declare-fun e!2548998 () Bool)

(assert (=> b!4108709 (= e!2548997 e!2548998)))

(declare-fun res!1678681 () Bool)

(assert (=> b!4108709 (=> (not res!1678681) (not e!2548998))))

(assert (=> b!4108709 (= res!1678681 (not (contains!8861 Nil!44203 (tag!8041 (h!49622 (Cons!44202 (h!49622 rTail!27) lt!1467676))))))))

(declare-fun b!4108710 () Bool)

(assert (=> b!4108710 (= e!2548998 (noDuplicateTag!2858 thiss!26455 (t!339983 (Cons!44202 (h!49622 rTail!27) lt!1467676)) (Cons!44203 (tag!8041 (h!49622 (Cons!44202 (h!49622 rTail!27) lt!1467676))) Nil!44203)))))

(assert (= (and d!1219034 (not res!1678680)) b!4108709))

(assert (= (and b!4108709 res!1678681) b!4108710))

(declare-fun m!4711175 () Bool)

(assert (=> b!4108709 m!4711175))

(declare-fun m!4711177 () Bool)

(assert (=> b!4108710 m!4711177))

(assert (=> b!4108655 d!1219034))

(declare-fun d!1219036 () Bool)

(assert (=> d!1219036 (noDuplicateTag!2858 thiss!26455 (Cons!44202 (h!49622 rTail!27) (Cons!44202 rHead!24 (t!339983 rTail!27))) Nil!44203)))

(declare-fun lt!1467702 () Unit!63672)

(declare-fun choose!25116 (LexerInterface!6770 Rule!14162 Rule!14162 List!44326) Unit!63672)

(assert (=> d!1219036 (= lt!1467702 (choose!25116 thiss!26455 rHead!24 (h!49622 rTail!27) (t!339983 rTail!27)))))

(assert (=> d!1219036 (noDuplicateTag!2858 thiss!26455 (Cons!44202 rHead!24 (Cons!44202 (h!49622 rTail!27) (t!339983 rTail!27))) Nil!44203)))

(assert (=> d!1219036 (= (lemmaNoDuplicateCanReorder!53 thiss!26455 rHead!24 (h!49622 rTail!27) (t!339983 rTail!27)) lt!1467702)))

(declare-fun bs!594167 () Bool)

(assert (= bs!594167 d!1219036))

(declare-fun m!4711179 () Bool)

(assert (=> bs!594167 m!4711179))

(declare-fun m!4711181 () Bool)

(assert (=> bs!594167 m!4711181))

(declare-fun m!4711183 () Bool)

(assert (=> bs!594167 m!4711183))

(assert (=> b!4108655 d!1219036))

(declare-fun d!1219038 () Bool)

(declare-fun res!1678682 () Bool)

(declare-fun e!2548999 () Bool)

(assert (=> d!1219038 (=> (not res!1678682) (not e!2548999))))

(assert (=> d!1219038 (= res!1678682 (rulesValid!2827 thiss!26455 lt!1467675))))

(assert (=> d!1219038 (= (rulesInvariant!6113 thiss!26455 lt!1467675) e!2548999)))

(declare-fun b!4108711 () Bool)

(assert (=> b!4108711 (= e!2548999 (noDuplicateTag!2858 thiss!26455 lt!1467675 Nil!44203))))

(assert (= (and d!1219038 res!1678682) b!4108711))

(declare-fun m!4711185 () Bool)

(assert (=> d!1219038 m!4711185))

(declare-fun m!4711187 () Bool)

(assert (=> b!4108711 m!4711187))

(assert (=> b!4108659 d!1219038))

(declare-fun d!1219040 () Bool)

(declare-fun lt!1467706 () Int)

(assert (=> d!1219040 (>= lt!1467706 0)))

(declare-fun e!2549002 () Int)

(assert (=> d!1219040 (= lt!1467706 e!2549002)))

(declare-fun c!706702 () Bool)

(assert (=> d!1219040 (= c!706702 (is-Nil!44202 (t!339983 rTail!27)))))

(assert (=> d!1219040 (= (ListPrimitiveSize!278 (t!339983 rTail!27)) lt!1467706)))

(declare-fun b!4108716 () Bool)

(assert (=> b!4108716 (= e!2549002 0)))

(declare-fun b!4108717 () Bool)

(assert (=> b!4108717 (= e!2549002 (+ 1 (ListPrimitiveSize!278 (t!339983 (t!339983 rTail!27)))))))

(assert (= (and d!1219040 c!706702) b!4108716))

(assert (= (and d!1219040 (not c!706702)) b!4108717))

(declare-fun m!4711193 () Bool)

(assert (=> b!4108717 m!4711193))

(assert (=> b!4108654 d!1219040))

(declare-fun d!1219044 () Bool)

(declare-fun lt!1467707 () Int)

(assert (=> d!1219044 (>= lt!1467707 0)))

(declare-fun e!2549003 () Int)

(assert (=> d!1219044 (= lt!1467707 e!2549003)))

(declare-fun c!706703 () Bool)

(assert (=> d!1219044 (= c!706703 (is-Nil!44202 rTail!27))))

(assert (=> d!1219044 (= (ListPrimitiveSize!278 rTail!27) lt!1467707)))

(declare-fun b!4108718 () Bool)

(assert (=> b!4108718 (= e!2549003 0)))

(declare-fun b!4108719 () Bool)

(assert (=> b!4108719 (= e!2549003 (+ 1 (ListPrimitiveSize!278 (t!339983 rTail!27))))))

(assert (= (and d!1219044 c!706703) b!4108718))

(assert (= (and d!1219044 (not c!706703)) b!4108719))

(assert (=> b!4108719 m!4711109))

(assert (=> b!4108654 d!1219044))

(declare-fun b!4108734 () Bool)

(declare-fun b_free!115361 () Bool)

(declare-fun b_next!116065 () Bool)

(assert (=> b!4108734 (= b_free!115361 (not b_next!116065))))

(declare-fun tp!1248570 () Bool)

(declare-fun b_and!317175 () Bool)

(assert (=> b!4108734 (= tp!1248570 b_and!317175)))

(declare-fun b_free!115363 () Bool)

(declare-fun b_next!116067 () Bool)

(assert (=> b!4108734 (= b_free!115363 (not b_next!116067))))

(declare-fun tp!1248567 () Bool)

(declare-fun b_and!317177 () Bool)

(assert (=> b!4108734 (= tp!1248567 b_and!317177)))

(declare-fun e!2549017 () Bool)

(assert (=> b!4108734 (= e!2549017 (and tp!1248570 tp!1248567))))

(declare-fun e!2549018 () Bool)

(declare-fun tp!1248568 () Bool)

(declare-fun b!4108733 () Bool)

(assert (=> b!4108733 (= e!2549018 (and tp!1248568 (inv!58856 (tag!8041 (h!49622 (t!339983 rTail!27)))) (inv!58859 (transformation!7181 (h!49622 (t!339983 rTail!27)))) e!2549017))))

(declare-fun b!4108732 () Bool)

(declare-fun e!2549019 () Bool)

(declare-fun tp!1248569 () Bool)

(assert (=> b!4108732 (= e!2549019 (and e!2549018 tp!1248569))))

(assert (=> b!4108652 (= tp!1248536 e!2549019)))

(assert (= b!4108733 b!4108734))

(assert (= b!4108732 b!4108733))

(assert (= (and b!4108652 (is-Cons!44202 (t!339983 rTail!27))) b!4108732))

(declare-fun m!4711195 () Bool)

(assert (=> b!4108733 m!4711195))

(declare-fun m!4711197 () Bool)

(assert (=> b!4108733 m!4711197))

(declare-fun b!4108747 () Bool)

(declare-fun e!2549022 () Bool)

(declare-fun tp!1248585 () Bool)

(assert (=> b!4108747 (= e!2549022 tp!1248585)))

(declare-fun b!4108746 () Bool)

(declare-fun tp!1248583 () Bool)

(declare-fun tp!1248584 () Bool)

(assert (=> b!4108746 (= e!2549022 (and tp!1248583 tp!1248584))))

(declare-fun b!4108748 () Bool)

(declare-fun tp!1248582 () Bool)

(declare-fun tp!1248581 () Bool)

(assert (=> b!4108748 (= e!2549022 (and tp!1248582 tp!1248581))))

(assert (=> b!4108662 (= tp!1248535 e!2549022)))

(declare-fun b!4108745 () Bool)

(declare-fun tp_is_empty!21139 () Bool)

(assert (=> b!4108745 (= e!2549022 tp_is_empty!21139)))

(assert (= (and b!4108662 (is-ElementMatch!12086 (regex!7181 (h!49622 rTail!27)))) b!4108745))

(assert (= (and b!4108662 (is-Concat!19497 (regex!7181 (h!49622 rTail!27)))) b!4108746))

(assert (= (and b!4108662 (is-Star!12086 (regex!7181 (h!49622 rTail!27)))) b!4108747))

(assert (= (and b!4108662 (is-Union!12086 (regex!7181 (h!49622 rTail!27)))) b!4108748))

(declare-fun b!4108751 () Bool)

(declare-fun e!2549023 () Bool)

(declare-fun tp!1248590 () Bool)

(assert (=> b!4108751 (= e!2549023 tp!1248590)))

(declare-fun b!4108750 () Bool)

(declare-fun tp!1248588 () Bool)

(declare-fun tp!1248589 () Bool)

(assert (=> b!4108750 (= e!2549023 (and tp!1248588 tp!1248589))))

(declare-fun b!4108752 () Bool)

(declare-fun tp!1248587 () Bool)

(declare-fun tp!1248586 () Bool)

(assert (=> b!4108752 (= e!2549023 (and tp!1248587 tp!1248586))))

(assert (=> b!4108661 (= tp!1248534 e!2549023)))

(declare-fun b!4108749 () Bool)

(assert (=> b!4108749 (= e!2549023 tp_is_empty!21139)))

(assert (= (and b!4108661 (is-ElementMatch!12086 (regex!7181 rHead!24))) b!4108749))

(assert (= (and b!4108661 (is-Concat!19497 (regex!7181 rHead!24))) b!4108750))

(assert (= (and b!4108661 (is-Star!12086 (regex!7181 rHead!24))) b!4108751))

(assert (= (and b!4108661 (is-Union!12086 (regex!7181 rHead!24))) b!4108752))

(push 1)

(assert (not d!1219030))

(assert (not b!4108747))

(assert b_and!317175)

(assert (not b!4108698))

(assert (not b!4108709))

(assert (not b!4108707))

(assert (not b!4108751))

(assert (not b_next!116049))

(assert (not b!4108717))

(assert (not b!4108750))

(assert (not d!1219010))

(assert (not b!4108748))

(assert b_and!317165)

(assert (not b_next!116053))

(assert b_and!317161)

(assert (not b!4108704))

(assert (not d!1219014))

(assert (not b!4108733))

(assert (not b_next!116065))

(assert (not d!1219038))

(assert tp_is_empty!21139)

(assert (not d!1219024))

(assert (not d!1219018))

(assert (not b!4108711))

(assert b_and!317159)

(assert (not b!4108710))

(assert (not b!4108732))

(assert (not b_next!116067))

(assert b_and!317163)

(assert (not b!4108752))

(assert (not b_next!116055))

(assert (not b!4108708))

(assert (not d!1219036))

(assert b_and!317177)

(assert (not b_next!116051))

(assert (not b!4108703))

(assert (not b!4108746))

(assert (not b!4108719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317161)

(assert b_and!317175)

(assert (not b_next!116065))

(assert (not b_next!116049))

(assert b_and!317159)

(assert (not b_next!116067))

(assert b_and!317165)

(assert (not b_next!116053))

(assert b_and!317163)

(assert (not b_next!116055))

(assert b_and!317177)

(assert (not b_next!116051))

(check-sat)

(pop 1)


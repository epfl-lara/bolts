; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395576 () Bool)

(assert start!395576)

(declare-fun b!4154989 () Bool)

(declare-fun b_free!119151 () Bool)

(declare-fun b_next!119855 () Bool)

(assert (=> b!4154989 (= b_free!119151 (not b_next!119855))))

(declare-fun tp!1267167 () Bool)

(declare-fun b_and!323513 () Bool)

(assert (=> b!4154989 (= tp!1267167 b_and!323513)))

(declare-fun b_free!119153 () Bool)

(declare-fun b_next!119857 () Bool)

(assert (=> b!4154989 (= b_free!119153 (not b_next!119857))))

(declare-fun tp!1267170 () Bool)

(declare-fun b_and!323515 () Bool)

(assert (=> b!4154989 (= tp!1267170 b_and!323515)))

(declare-fun b!4154987 () Bool)

(declare-fun b_free!119155 () Bool)

(declare-fun b_next!119859 () Bool)

(assert (=> b!4154987 (= b_free!119155 (not b_next!119859))))

(declare-fun tp!1267175 () Bool)

(declare-fun b_and!323517 () Bool)

(assert (=> b!4154987 (= tp!1267175 b_and!323517)))

(declare-fun b_free!119157 () Bool)

(declare-fun b_next!119861 () Bool)

(assert (=> b!4154987 (= b_free!119157 (not b_next!119861))))

(declare-fun tp!1267168 () Bool)

(declare-fun b_and!323519 () Bool)

(assert (=> b!4154987 (= tp!1267168 b_and!323519)))

(declare-fun b!4154985 () Bool)

(declare-fun b_free!119159 () Bool)

(declare-fun b_next!119863 () Bool)

(assert (=> b!4154985 (= b_free!119159 (not b_next!119863))))

(declare-fun tp!1267172 () Bool)

(declare-fun b_and!323521 () Bool)

(assert (=> b!4154985 (= tp!1267172 b_and!323521)))

(declare-fun b_free!119161 () Bool)

(declare-fun b_next!119865 () Bool)

(assert (=> b!4154985 (= b_free!119161 (not b_next!119865))))

(declare-fun tp!1267169 () Bool)

(declare-fun b_and!323523 () Bool)

(assert (=> b!4154985 (= tp!1267169 b_and!323523)))

(declare-fun e!2578213 () Bool)

(assert (=> b!4154985 (= e!2578213 (and tp!1267172 tp!1267169))))

(declare-fun b!4154986 () Bool)

(declare-fun res!1701657 () Bool)

(declare-fun e!2578217 () Bool)

(assert (=> b!4154986 (=> (not res!1701657) (not e!2578217))))

(declare-datatypes ((List!45352 0))(
  ( (Nil!45228) (Cons!45228 (h!50648 (_ BitVec 16)) (t!343383 List!45352)) )
))
(declare-datatypes ((TokenValue!7693 0))(
  ( (FloatLiteralValue!15386 (text!54296 List!45352)) (TokenValueExt!7692 (__x!27603 Int)) (Broken!38465 (value!233199 List!45352)) (Object!7816) (End!7693) (Def!7693) (Underscore!7693) (Match!7693) (Else!7693) (Error!7693) (Case!7693) (If!7693) (Extends!7693) (Abstract!7693) (Class!7693) (Val!7693) (DelimiterValue!15386 (del!7753 List!45352)) (KeywordValue!7699 (value!233200 List!45352)) (CommentValue!15386 (value!233201 List!45352)) (WhitespaceValue!15386 (value!233202 List!45352)) (IndentationValue!7693 (value!233203 List!45352)) (String!52216) (Int32!7693) (Broken!38466 (value!233204 List!45352)) (Boolean!7694) (Unit!64443) (OperatorValue!7696 (op!7753 List!45352)) (IdentifierValue!15386 (value!233205 List!45352)) (IdentifierValue!15387 (value!233206 List!45352)) (WhitespaceValue!15387 (value!233207 List!45352)) (True!15386) (False!15386) (Broken!38467 (value!233208 List!45352)) (Broken!38468 (value!233209 List!45352)) (True!15387) (RightBrace!7693) (RightBracket!7693) (Colon!7693) (Null!7693) (Comma!7693) (LeftBracket!7693) (False!15387) (LeftBrace!7693) (ImaginaryLiteralValue!7693 (text!54297 List!45352)) (StringLiteralValue!23079 (value!233210 List!45352)) (EOFValue!7693 (value!233211 List!45352)) (IdentValue!7693 (value!233212 List!45352)) (DelimiterValue!15387 (value!233213 List!45352)) (DedentValue!7693 (value!233214 List!45352)) (NewLineValue!7693 (value!233215 List!45352)) (IntegerValue!23079 (value!233216 (_ BitVec 32)) (text!54298 List!45352)) (IntegerValue!23080 (value!233217 Int) (text!54299 List!45352)) (Times!7693) (Or!7693) (Equal!7693) (Minus!7693) (Broken!38469 (value!233218 List!45352)) (And!7693) (Div!7693) (LessEqual!7693) (Mod!7693) (Concat!20061) (Not!7693) (Plus!7693) (SpaceValue!7693 (value!233219 List!45352)) (IntegerValue!23081 (value!233220 Int) (text!54300 List!45352)) (StringLiteralValue!23080 (text!54301 List!45352)) (FloatLiteralValue!15387 (text!54302 List!45352)) (BytesLiteralValue!7693 (value!233221 List!45352)) (CommentValue!15387 (value!233222 List!45352)) (StringLiteralValue!23081 (value!233223 List!45352)) (ErrorTokenValue!7693 (msg!7754 List!45352)) )
))
(declare-datatypes ((C!24922 0))(
  ( (C!24923 (val!14571 Int)) )
))
(declare-datatypes ((List!45353 0))(
  ( (Nil!45229) (Cons!45229 (h!50649 C!24922) (t!343384 List!45353)) )
))
(declare-datatypes ((String!52217 0))(
  ( (String!52218 (value!233224 String)) )
))
(declare-datatypes ((IArray!27353 0))(
  ( (IArray!27354 (innerList!13734 List!45353)) )
))
(declare-datatypes ((Conc!13674 0))(
  ( (Node!13674 (left!33828 Conc!13674) (right!34158 Conc!13674) (csize!27578 Int) (cheight!13885 Int)) (Leaf!21121 (xs!16980 IArray!27353) (csize!27579 Int)) (Empty!13674) )
))
(declare-datatypes ((Regex!12368 0))(
  ( (ElementMatch!12368 (c!711320 C!24922)) (Concat!20062 (regOne!25248 Regex!12368) (regTwo!25248 Regex!12368)) (EmptyExpr!12368) (Star!12368 (reg!12697 Regex!12368)) (EmptyLang!12368) (Union!12368 (regOne!25249 Regex!12368) (regTwo!25249 Regex!12368)) )
))
(declare-datatypes ((BalanceConc!26942 0))(
  ( (BalanceConc!26943 (c!711321 Conc!13674)) )
))
(declare-datatypes ((TokenValueInjection!14814 0))(
  ( (TokenValueInjection!14815 (toValue!10127 Int) (toChars!9986 Int)) )
))
(declare-datatypes ((Rule!14726 0))(
  ( (Rule!14727 (regex!7463 Regex!12368) (tag!8327 String!52217) (isSeparator!7463 Bool) (transformation!7463 TokenValueInjection!14814)) )
))
(declare-datatypes ((List!45354 0))(
  ( (Nil!45230) (Cons!45230 (h!50650 Rule!14726) (t!343385 List!45354)) )
))
(declare-fun rules!4102 () List!45354)

(declare-fun r2!597 () Rule!14726)

(declare-fun contains!9162 (List!45354 Rule!14726) Bool)

(assert (=> b!4154986 (= res!1701657 (contains!9162 rules!4102 r2!597))))

(declare-fun e!2578215 () Bool)

(assert (=> b!4154987 (= e!2578215 (and tp!1267175 tp!1267168))))

(declare-fun tp!1267174 () Bool)

(declare-fun b!4154988 () Bool)

(declare-fun e!2578211 () Bool)

(declare-fun e!2578216 () Bool)

(declare-fun inv!59803 (String!52217) Bool)

(declare-fun inv!59806 (TokenValueInjection!14814) Bool)

(assert (=> b!4154988 (= e!2578216 (and tp!1267174 (inv!59803 (tag!8327 r2!597)) (inv!59806 (transformation!7463 r2!597)) e!2578211))))

(assert (=> b!4154989 (= e!2578211 (and tp!1267167 tp!1267170))))

(declare-fun b!4154990 () Bool)

(declare-fun res!1701656 () Bool)

(assert (=> b!4154990 (=> (not res!1701656) (not e!2578217))))

(declare-datatypes ((LexerInterface!7052 0))(
  ( (LexerInterfaceExt!7049 (__x!27604 Int)) (Lexer!7050) )
))
(declare-fun thiss!26968 () LexerInterface!7052)

(declare-datatypes ((List!45355 0))(
  ( (Nil!45231) (Cons!45231 (h!50651 String!52217) (t!343386 List!45355)) )
))
(declare-fun noDuplicateTag!3040 (LexerInterface!7052 List!45354 List!45355) Bool)

(declare-fun noDuplicateTag$default$2!45 (LexerInterface!7052) List!45355)

(assert (=> b!4154990 (= res!1701656 (noDuplicateTag!3040 thiss!26968 rules!4102 (noDuplicateTag$default$2!45 thiss!26968)))))

(declare-fun b!4154991 () Bool)

(declare-fun res!1701659 () Bool)

(assert (=> b!4154991 (=> (not res!1701659) (not e!2578217))))

(declare-fun r1!615 () Rule!14726)

(assert (=> b!4154991 (= res!1701659 (contains!9162 rules!4102 r1!615))))

(declare-fun b!4154992 () Bool)

(declare-fun e!2578209 () Bool)

(declare-fun tp!1267176 () Bool)

(assert (=> b!4154992 (= e!2578209 (and tp!1267176 (inv!59803 (tag!8327 (h!50650 rules!4102))) (inv!59806 (transformation!7463 (h!50650 rules!4102))) e!2578215))))

(declare-fun b!4154993 () Bool)

(declare-fun ListPrimitiveSize!288 (List!45354) Int)

(assert (=> b!4154993 (= e!2578217 (< (ListPrimitiveSize!288 rules!4102) 0))))

(declare-fun b!4154994 () Bool)

(declare-fun res!1701658 () Bool)

(assert (=> b!4154994 (=> (not res!1701658) (not e!2578217))))

(declare-fun getIndex!805 (List!45354 Rule!14726) Int)

(assert (=> b!4154994 (= res!1701658 (< (getIndex!805 rules!4102 r1!615) (getIndex!805 rules!4102 r2!597)))))

(declare-fun res!1701660 () Bool)

(assert (=> start!395576 (=> (not res!1701660) (not e!2578217))))

(assert (=> start!395576 (= res!1701660 (is-Lexer!7050 thiss!26968))))

(assert (=> start!395576 e!2578217))

(assert (=> start!395576 true))

(declare-fun e!2578212 () Bool)

(assert (=> start!395576 e!2578212))

(declare-fun e!2578214 () Bool)

(assert (=> start!395576 e!2578214))

(assert (=> start!395576 e!2578216))

(declare-fun b!4154995 () Bool)

(declare-fun tp!1267171 () Bool)

(assert (=> b!4154995 (= e!2578212 (and e!2578209 tp!1267171))))

(declare-fun b!4154996 () Bool)

(declare-fun tp!1267173 () Bool)

(assert (=> b!4154996 (= e!2578214 (and tp!1267173 (inv!59803 (tag!8327 r1!615)) (inv!59806 (transformation!7463 r1!615)) e!2578213))))

(assert (= (and start!395576 res!1701660) b!4154991))

(assert (= (and b!4154991 res!1701659) b!4154986))

(assert (= (and b!4154986 res!1701657) b!4154990))

(assert (= (and b!4154990 res!1701656) b!4154994))

(assert (= (and b!4154994 res!1701658) b!4154993))

(assert (= b!4154992 b!4154987))

(assert (= b!4154995 b!4154992))

(assert (= (and start!395576 (is-Cons!45230 rules!4102)) b!4154995))

(assert (= b!4154996 b!4154985))

(assert (= start!395576 b!4154996))

(assert (= b!4154988 b!4154989))

(assert (= start!395576 b!4154988))

(declare-fun m!4749645 () Bool)

(assert (=> b!4154990 m!4749645))

(assert (=> b!4154990 m!4749645))

(declare-fun m!4749647 () Bool)

(assert (=> b!4154990 m!4749647))

(declare-fun m!4749649 () Bool)

(assert (=> b!4154988 m!4749649))

(declare-fun m!4749651 () Bool)

(assert (=> b!4154988 m!4749651))

(declare-fun m!4749653 () Bool)

(assert (=> b!4154992 m!4749653))

(declare-fun m!4749655 () Bool)

(assert (=> b!4154992 m!4749655))

(declare-fun m!4749657 () Bool)

(assert (=> b!4154993 m!4749657))

(declare-fun m!4749659 () Bool)

(assert (=> b!4154986 m!4749659))

(declare-fun m!4749661 () Bool)

(assert (=> b!4154991 m!4749661))

(declare-fun m!4749663 () Bool)

(assert (=> b!4154994 m!4749663))

(declare-fun m!4749665 () Bool)

(assert (=> b!4154994 m!4749665))

(declare-fun m!4749667 () Bool)

(assert (=> b!4154996 m!4749667))

(declare-fun m!4749669 () Bool)

(assert (=> b!4154996 m!4749669))

(push 1)

(assert (not b_next!119855))

(assert b_and!323519)

(assert (not b_next!119857))

(assert b_and!323523)

(assert b_and!323517)

(assert (not b!4154991))

(assert (not b_next!119859))

(assert (not b!4154990))

(assert (not b!4154994))

(assert (not b!4154992))

(assert (not b!4154995))

(assert (not b_next!119865))

(assert b_and!323515)

(assert (not b!4154986))

(assert b_and!323513)

(assert b_and!323521)

(assert (not b!4154996))

(assert (not b_next!119861))

(assert (not b_next!119863))

(assert (not b!4154988))

(assert (not b!4154993))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119855))

(assert b_and!323513)

(assert b_and!323519)

(assert (not b_next!119857))

(assert b_and!323523)

(assert b_and!323517)

(assert (not b_next!119859))

(assert b_and!323521)

(assert (not b_next!119865))

(assert b_and!323515)

(assert (not b_next!119861))

(assert (not b_next!119863))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1228715 () Bool)

(assert (=> d!1228715 (= (inv!59803 (tag!8327 r2!597)) (= (mod (str.len (value!233224 (tag!8327 r2!597))) 2) 0))))

(assert (=> b!4154988 d!1228715))

(declare-fun d!1228717 () Bool)

(declare-fun res!1701686 () Bool)

(declare-fun e!2578255 () Bool)

(assert (=> d!1228717 (=> (not res!1701686) (not e!2578255))))

(declare-fun semiInverseModEq!3232 (Int Int) Bool)

(assert (=> d!1228717 (= res!1701686 (semiInverseModEq!3232 (toChars!9986 (transformation!7463 r2!597)) (toValue!10127 (transformation!7463 r2!597))))))

(assert (=> d!1228717 (= (inv!59806 (transformation!7463 r2!597)) e!2578255)))

(declare-fun b!4155035 () Bool)

(declare-fun equivClasses!3131 (Int Int) Bool)

(assert (=> b!4155035 (= e!2578255 (equivClasses!3131 (toChars!9986 (transformation!7463 r2!597)) (toValue!10127 (transformation!7463 r2!597))))))

(assert (= (and d!1228717 res!1701686) b!4155035))

(declare-fun m!4749697 () Bool)

(assert (=> d!1228717 m!4749697))

(declare-fun m!4749699 () Bool)

(assert (=> b!4155035 m!4749699))

(assert (=> b!4154988 d!1228717))

(declare-fun d!1228719 () Bool)

(declare-fun lt!1481333 () Int)

(assert (=> d!1228719 (>= lt!1481333 0)))

(declare-fun e!2578258 () Int)

(assert (=> d!1228719 (= lt!1481333 e!2578258)))

(declare-fun c!711326 () Bool)

(assert (=> d!1228719 (= c!711326 (is-Nil!45230 rules!4102))))

(assert (=> d!1228719 (= (ListPrimitiveSize!288 rules!4102) lt!1481333)))

(declare-fun b!4155040 () Bool)

(assert (=> b!4155040 (= e!2578258 0)))

(declare-fun b!4155041 () Bool)

(assert (=> b!4155041 (= e!2578258 (+ 1 (ListPrimitiveSize!288 (t!343385 rules!4102))))))

(assert (= (and d!1228719 c!711326) b!4155040))

(assert (= (and d!1228719 (not c!711326)) b!4155041))

(declare-fun m!4749701 () Bool)

(assert (=> b!4155041 m!4749701))

(assert (=> b!4154993 d!1228719))

(declare-fun d!1228721 () Bool)

(assert (=> d!1228721 (= (inv!59803 (tag!8327 (h!50650 rules!4102))) (= (mod (str.len (value!233224 (tag!8327 (h!50650 rules!4102)))) 2) 0))))

(assert (=> b!4154992 d!1228721))

(declare-fun d!1228723 () Bool)

(declare-fun res!1701687 () Bool)

(declare-fun e!2578259 () Bool)

(assert (=> d!1228723 (=> (not res!1701687) (not e!2578259))))

(assert (=> d!1228723 (= res!1701687 (semiInverseModEq!3232 (toChars!9986 (transformation!7463 (h!50650 rules!4102))) (toValue!10127 (transformation!7463 (h!50650 rules!4102)))))))

(assert (=> d!1228723 (= (inv!59806 (transformation!7463 (h!50650 rules!4102))) e!2578259)))

(declare-fun b!4155042 () Bool)

(assert (=> b!4155042 (= e!2578259 (equivClasses!3131 (toChars!9986 (transformation!7463 (h!50650 rules!4102))) (toValue!10127 (transformation!7463 (h!50650 rules!4102)))))))

(assert (= (and d!1228723 res!1701687) b!4155042))

(declare-fun m!4749703 () Bool)

(assert (=> d!1228723 m!4749703))

(declare-fun m!4749705 () Bool)

(assert (=> b!4155042 m!4749705))

(assert (=> b!4154992 d!1228723))

(declare-fun d!1228725 () Bool)

(declare-fun lt!1481336 () Bool)

(declare-fun content!6994 (List!45354) (Set Rule!14726))

(assert (=> d!1228725 (= lt!1481336 (set.member r2!597 (content!6994 rules!4102)))))

(declare-fun e!2578264 () Bool)

(assert (=> d!1228725 (= lt!1481336 e!2578264)))

(declare-fun res!1701693 () Bool)

(assert (=> d!1228725 (=> (not res!1701693) (not e!2578264))))

(assert (=> d!1228725 (= res!1701693 (is-Cons!45230 rules!4102))))

(assert (=> d!1228725 (= (contains!9162 rules!4102 r2!597) lt!1481336)))

(declare-fun b!4155047 () Bool)

(declare-fun e!2578265 () Bool)

(assert (=> b!4155047 (= e!2578264 e!2578265)))

(declare-fun res!1701692 () Bool)

(assert (=> b!4155047 (=> res!1701692 e!2578265)))

(assert (=> b!4155047 (= res!1701692 (= (h!50650 rules!4102) r2!597))))

(declare-fun b!4155048 () Bool)

(assert (=> b!4155048 (= e!2578265 (contains!9162 (t!343385 rules!4102) r2!597))))

(assert (= (and d!1228725 res!1701693) b!4155047))

(assert (= (and b!4155047 (not res!1701692)) b!4155048))

(declare-fun m!4749707 () Bool)

(assert (=> d!1228725 m!4749707))

(declare-fun m!4749709 () Bool)

(assert (=> d!1228725 m!4749709))

(declare-fun m!4749711 () Bool)

(assert (=> b!4155048 m!4749711))

(assert (=> b!4154986 d!1228725))

(declare-fun d!1228727 () Bool)

(declare-fun lt!1481337 () Bool)

(assert (=> d!1228727 (= lt!1481337 (set.member r1!615 (content!6994 rules!4102)))))

(declare-fun e!2578266 () Bool)

(assert (=> d!1228727 (= lt!1481337 e!2578266)))

(declare-fun res!1701695 () Bool)

(assert (=> d!1228727 (=> (not res!1701695) (not e!2578266))))

(assert (=> d!1228727 (= res!1701695 (is-Cons!45230 rules!4102))))

(assert (=> d!1228727 (= (contains!9162 rules!4102 r1!615) lt!1481337)))

(declare-fun b!4155049 () Bool)

(declare-fun e!2578267 () Bool)

(assert (=> b!4155049 (= e!2578266 e!2578267)))

(declare-fun res!1701694 () Bool)

(assert (=> b!4155049 (=> res!1701694 e!2578267)))

(assert (=> b!4155049 (= res!1701694 (= (h!50650 rules!4102) r1!615))))

(declare-fun b!4155050 () Bool)

(assert (=> b!4155050 (= e!2578267 (contains!9162 (t!343385 rules!4102) r1!615))))

(assert (= (and d!1228727 res!1701695) b!4155049))

(assert (= (and b!4155049 (not res!1701694)) b!4155050))

(assert (=> d!1228727 m!4749707))

(declare-fun m!4749713 () Bool)

(assert (=> d!1228727 m!4749713))

(declare-fun m!4749715 () Bool)

(assert (=> b!4155050 m!4749715))

(assert (=> b!4154991 d!1228727))

(declare-fun d!1228729 () Bool)

(assert (=> d!1228729 (= (inv!59803 (tag!8327 r1!615)) (= (mod (str.len (value!233224 (tag!8327 r1!615))) 2) 0))))

(assert (=> b!4154996 d!1228729))

(declare-fun d!1228731 () Bool)

(declare-fun res!1701696 () Bool)

(declare-fun e!2578268 () Bool)

(assert (=> d!1228731 (=> (not res!1701696) (not e!2578268))))

(assert (=> d!1228731 (= res!1701696 (semiInverseModEq!3232 (toChars!9986 (transformation!7463 r1!615)) (toValue!10127 (transformation!7463 r1!615))))))

(assert (=> d!1228731 (= (inv!59806 (transformation!7463 r1!615)) e!2578268)))

(declare-fun b!4155051 () Bool)

(assert (=> b!4155051 (= e!2578268 (equivClasses!3131 (toChars!9986 (transformation!7463 r1!615)) (toValue!10127 (transformation!7463 r1!615))))))

(assert (= (and d!1228731 res!1701696) b!4155051))

(declare-fun m!4749717 () Bool)

(assert (=> d!1228731 m!4749717))

(declare-fun m!4749719 () Bool)

(assert (=> b!4155051 m!4749719))

(assert (=> b!4154996 d!1228731))

(declare-fun d!1228733 () Bool)

(declare-fun res!1701701 () Bool)

(declare-fun e!2578273 () Bool)

(assert (=> d!1228733 (=> res!1701701 e!2578273)))

(assert (=> d!1228733 (= res!1701701 (is-Nil!45230 rules!4102))))

(assert (=> d!1228733 (= (noDuplicateTag!3040 thiss!26968 rules!4102 (noDuplicateTag$default$2!45 thiss!26968)) e!2578273)))

(declare-fun b!4155056 () Bool)

(declare-fun e!2578274 () Bool)

(assert (=> b!4155056 (= e!2578273 e!2578274)))

(declare-fun res!1701702 () Bool)

(assert (=> b!4155056 (=> (not res!1701702) (not e!2578274))))

(declare-fun contains!9164 (List!45355 String!52217) Bool)

(assert (=> b!4155056 (= res!1701702 (not (contains!9164 (noDuplicateTag$default$2!45 thiss!26968) (tag!8327 (h!50650 rules!4102)))))))

(declare-fun b!4155057 () Bool)

(assert (=> b!4155057 (= e!2578274 (noDuplicateTag!3040 thiss!26968 (t!343385 rules!4102) (Cons!45231 (tag!8327 (h!50650 rules!4102)) (noDuplicateTag$default$2!45 thiss!26968))))))

(assert (= (and d!1228733 (not res!1701701)) b!4155056))

(assert (= (and b!4155056 res!1701702) b!4155057))

(assert (=> b!4155056 m!4749645))

(declare-fun m!4749721 () Bool)

(assert (=> b!4155056 m!4749721))

(declare-fun m!4749723 () Bool)

(assert (=> b!4155057 m!4749723))

(assert (=> b!4154990 d!1228733))

(declare-fun d!1228737 () Bool)

(assert (=> d!1228737 (= (noDuplicateTag$default$2!45 thiss!26968) Nil!45231)))

(assert (=> b!4154990 d!1228737))

(declare-fun b!4155074 () Bool)

(declare-fun e!2578284 () Int)

(assert (=> b!4155074 (= e!2578284 (+ 1 (getIndex!805 (t!343385 rules!4102) r1!615)))))

(declare-fun b!4155073 () Bool)

(declare-fun e!2578283 () Int)

(assert (=> b!4155073 (= e!2578283 e!2578284)))

(declare-fun c!711335 () Bool)

(assert (=> b!4155073 (= c!711335 (and (is-Cons!45230 rules!4102) (not (= (h!50650 rules!4102) r1!615))))))

(declare-fun b!4155075 () Bool)

(assert (=> b!4155075 (= e!2578284 (- 1))))

(declare-fun d!1228739 () Bool)

(declare-fun lt!1481343 () Int)

(assert (=> d!1228739 (>= lt!1481343 0)))

(assert (=> d!1228739 (= lt!1481343 e!2578283)))

(declare-fun c!711334 () Bool)

(assert (=> d!1228739 (= c!711334 (and (is-Cons!45230 rules!4102) (= (h!50650 rules!4102) r1!615)))))

(assert (=> d!1228739 (contains!9162 rules!4102 r1!615)))

(assert (=> d!1228739 (= (getIndex!805 rules!4102 r1!615) lt!1481343)))

(declare-fun b!4155072 () Bool)

(assert (=> b!4155072 (= e!2578283 0)))

(assert (= (and d!1228739 c!711334) b!4155072))

(assert (= (and d!1228739 (not c!711334)) b!4155073))

(assert (= (and b!4155073 c!711335) b!4155074))

(assert (= (and b!4155073 (not c!711335)) b!4155075))

(declare-fun m!4749727 () Bool)

(assert (=> b!4155074 m!4749727))

(assert (=> d!1228739 m!4749661))

(assert (=> b!4154994 d!1228739))

(declare-fun b!4155078 () Bool)

(declare-fun e!2578286 () Int)

(assert (=> b!4155078 (= e!2578286 (+ 1 (getIndex!805 (t!343385 rules!4102) r2!597)))))

(declare-fun b!4155077 () Bool)

(declare-fun e!2578285 () Int)

(assert (=> b!4155077 (= e!2578285 e!2578286)))

(declare-fun c!711337 () Bool)

(assert (=> b!4155077 (= c!711337 (and (is-Cons!45230 rules!4102) (not (= (h!50650 rules!4102) r2!597))))))

(declare-fun b!4155079 () Bool)

(assert (=> b!4155079 (= e!2578286 (- 1))))

(declare-fun d!1228743 () Bool)

(declare-fun lt!1481344 () Int)

(assert (=> d!1228743 (>= lt!1481344 0)))

(assert (=> d!1228743 (= lt!1481344 e!2578285)))

(declare-fun c!711336 () Bool)

(assert (=> d!1228743 (= c!711336 (and (is-Cons!45230 rules!4102) (= (h!50650 rules!4102) r2!597)))))

(assert (=> d!1228743 (contains!9162 rules!4102 r2!597)))

(assert (=> d!1228743 (= (getIndex!805 rules!4102 r2!597) lt!1481344)))

(declare-fun b!4155076 () Bool)

(assert (=> b!4155076 (= e!2578285 0)))

(assert (= (and d!1228743 c!711336) b!4155076))

(assert (= (and d!1228743 (not c!711336)) b!4155077))

(assert (= (and b!4155077 c!711337) b!4155078))

(assert (= (and b!4155077 (not c!711337)) b!4155079))

(declare-fun m!4749729 () Bool)

(assert (=> b!4155078 m!4749729))

(assert (=> d!1228743 m!4749659))

(assert (=> b!4154994 d!1228743))

(declare-fun e!2578289 () Bool)

(assert (=> b!4154988 (= tp!1267174 e!2578289)))

(declare-fun b!4155090 () Bool)

(declare-fun tp_is_empty!21631 () Bool)

(assert (=> b!4155090 (= e!2578289 tp_is_empty!21631)))

(declare-fun b!4155093 () Bool)

(declare-fun tp!1267221 () Bool)

(declare-fun tp!1267220 () Bool)

(assert (=> b!4155093 (= e!2578289 (and tp!1267221 tp!1267220))))

(declare-fun b!4155091 () Bool)

(declare-fun tp!1267218 () Bool)

(declare-fun tp!1267217 () Bool)

(assert (=> b!4155091 (= e!2578289 (and tp!1267218 tp!1267217))))

(declare-fun b!4155092 () Bool)

(declare-fun tp!1267219 () Bool)

(assert (=> b!4155092 (= e!2578289 tp!1267219)))

(assert (= (and b!4154988 (is-ElementMatch!12368 (regex!7463 r2!597))) b!4155090))

(assert (= (and b!4154988 (is-Concat!20062 (regex!7463 r2!597))) b!4155091))

(assert (= (and b!4154988 (is-Star!12368 (regex!7463 r2!597))) b!4155092))

(assert (= (and b!4154988 (is-Union!12368 (regex!7463 r2!597))) b!4155093))

(declare-fun e!2578290 () Bool)

(assert (=> b!4154992 (= tp!1267176 e!2578290)))

(declare-fun b!4155094 () Bool)

(assert (=> b!4155094 (= e!2578290 tp_is_empty!21631)))

(declare-fun b!4155097 () Bool)

(declare-fun tp!1267226 () Bool)

(declare-fun tp!1267225 () Bool)

(assert (=> b!4155097 (= e!2578290 (and tp!1267226 tp!1267225))))

(declare-fun b!4155095 () Bool)

(declare-fun tp!1267223 () Bool)

(declare-fun tp!1267222 () Bool)

(assert (=> b!4155095 (= e!2578290 (and tp!1267223 tp!1267222))))

(declare-fun b!4155096 () Bool)

(declare-fun tp!1267224 () Bool)

(assert (=> b!4155096 (= e!2578290 tp!1267224)))

(assert (= (and b!4154992 (is-ElementMatch!12368 (regex!7463 (h!50650 rules!4102)))) b!4155094))

(assert (= (and b!4154992 (is-Concat!20062 (regex!7463 (h!50650 rules!4102)))) b!4155095))

(assert (= (and b!4154992 (is-Star!12368 (regex!7463 (h!50650 rules!4102)))) b!4155096))

(assert (= (and b!4154992 (is-Union!12368 (regex!7463 (h!50650 rules!4102)))) b!4155097))

(declare-fun e!2578291 () Bool)

(assert (=> b!4154996 (= tp!1267173 e!2578291)))

(declare-fun b!4155098 () Bool)

(assert (=> b!4155098 (= e!2578291 tp_is_empty!21631)))

(declare-fun b!4155101 () Bool)

(declare-fun tp!1267231 () Bool)

(declare-fun tp!1267230 () Bool)

(assert (=> b!4155101 (= e!2578291 (and tp!1267231 tp!1267230))))

(declare-fun b!4155099 () Bool)

(declare-fun tp!1267228 () Bool)

(declare-fun tp!1267227 () Bool)

(assert (=> b!4155099 (= e!2578291 (and tp!1267228 tp!1267227))))

(declare-fun b!4155100 () Bool)

(declare-fun tp!1267229 () Bool)

(assert (=> b!4155100 (= e!2578291 tp!1267229)))

(assert (= (and b!4154996 (is-ElementMatch!12368 (regex!7463 r1!615))) b!4155098))

(assert (= (and b!4154996 (is-Concat!20062 (regex!7463 r1!615))) b!4155099))

(assert (= (and b!4154996 (is-Star!12368 (regex!7463 r1!615))) b!4155100))

(assert (= (and b!4154996 (is-Union!12368 (regex!7463 r1!615))) b!4155101))

(declare-fun b!4155112 () Bool)

(declare-fun b_free!119175 () Bool)

(declare-fun b_next!119879 () Bool)

(assert (=> b!4155112 (= b_free!119175 (not b_next!119879))))

(declare-fun tp!1267242 () Bool)

(declare-fun b_and!323537 () Bool)

(assert (=> b!4155112 (= tp!1267242 b_and!323537)))

(declare-fun b_free!119177 () Bool)

(declare-fun b_next!119881 () Bool)

(assert (=> b!4155112 (= b_free!119177 (not b_next!119881))))

(declare-fun tp!1267241 () Bool)

(declare-fun b_and!323539 () Bool)

(assert (=> b!4155112 (= tp!1267241 b_and!323539)))

(declare-fun e!2578301 () Bool)

(assert (=> b!4155112 (= e!2578301 (and tp!1267242 tp!1267241))))

(declare-fun e!2578303 () Bool)

(declare-fun b!4155111 () Bool)

(declare-fun tp!1267240 () Bool)

(assert (=> b!4155111 (= e!2578303 (and tp!1267240 (inv!59803 (tag!8327 (h!50650 (t!343385 rules!4102)))) (inv!59806 (transformation!7463 (h!50650 (t!343385 rules!4102)))) e!2578301))))

(declare-fun b!4155110 () Bool)

(declare-fun e!2578300 () Bool)

(declare-fun tp!1267243 () Bool)

(assert (=> b!4155110 (= e!2578300 (and e!2578303 tp!1267243))))

(assert (=> b!4154995 (= tp!1267171 e!2578300)))

(assert (= b!4155111 b!4155112))

(assert (= b!4155110 b!4155111))

(assert (= (and b!4154995 (is-Cons!45230 (t!343385 rules!4102))) b!4155110))

(declare-fun m!4749731 () Bool)

(assert (=> b!4155111 m!4749731))

(declare-fun m!4749733 () Bool)

(assert (=> b!4155111 m!4749733))

(push 1)

(assert (not b_next!119855))

(assert (not b!4155096))

(assert (not b!4155078))

(assert tp_is_empty!21631)

(assert (not d!1228731))

(assert (not b_next!119857))

(assert (not d!1228725))

(assert (not b!4155099))

(assert (not b!4155050))

(assert (not d!1228717))

(assert (not b!4155097))

(assert (not b!4155092))

(assert (not b!4155110))

(assert (not b_next!119865))

(assert b_and!323515)

(assert b_and!323539)

(assert (not b!4155093))

(assert b_and!323513)

(assert (not b!4155074))

(assert b_and!323519)

(assert (not b!4155041))

(assert (not d!1228723))

(assert (not b!4155057))

(assert (not b!4155048))

(assert b_and!323537)

(assert b_and!323523)

(assert b_and!323517)

(assert (not b!4155111))

(assert (not b_next!119881))

(assert (not b!4155100))

(assert (not b!4155095))

(assert (not b_next!119859))

(assert (not b!4155101))

(assert b_and!323521)

(assert (not b!4155091))

(assert (not b!4155051))

(assert (not b_next!119861))

(assert (not b_next!119863))

(assert (not d!1228743))

(assert (not d!1228739))

(assert (not b!4155035))

(assert (not b!4155056))

(assert (not b!4155042))

(assert (not d!1228727))

(assert (not b_next!119879))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119855))

(assert b_and!323519)

(assert (not b_next!119857))

(assert (not b_next!119859))

(assert b_and!323521)

(assert (not b_next!119879))

(assert (not b_next!119865))

(assert b_and!323515)

(assert b_and!323539)

(assert b_and!323513)

(assert b_and!323537)

(assert b_and!323523)

(assert b_and!323517)

(assert (not b_next!119881))

(assert (not b_next!119861))

(assert (not b_next!119863))

(check-sat)

(pop 1)


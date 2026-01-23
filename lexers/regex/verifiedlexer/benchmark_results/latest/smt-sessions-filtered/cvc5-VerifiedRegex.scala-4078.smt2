; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218650 () Bool)

(assert start!218650)

(declare-datatypes ((List!26585 0))(
  ( (Nil!26491) (Cons!26491 (h!31892 (_ BitVec 16)) (t!200115 List!26585)) )
))
(declare-datatypes ((IArray!17053 0))(
  ( (IArray!17054 (innerList!8584 List!26585)) )
))
(declare-datatypes ((Conc!8524 0))(
  ( (Node!8524 (left!20150 Conc!8524) (right!20480 Conc!8524) (csize!17278 Int) (cheight!8735 Int)) (Leaf!12603 (xs!11466 IArray!17053) (csize!17279 Int)) (Empty!8524) )
))
(declare-datatypes ((BalanceConc!16776 0))(
  ( (BalanceConc!16777 (c!357137 Conc!8524)) )
))
(declare-fun v!5085 () BalanceConc!16776)

(declare-datatypes ((TokenValue!4348 0))(
  ( (FloatLiteralValue!8696 (text!30881 List!26585)) (TokenValueExt!4347 (__x!17758 Int)) (Broken!21740 (value!133102 List!26585)) (Object!4441) (End!4348) (Def!4348) (Underscore!4348) (Match!4348) (Else!4348) (Error!4348) (Case!4348) (If!4348) (Extends!4348) (Abstract!4348) (Class!4348) (Val!4348) (DelimiterValue!8696 (del!4408 List!26585)) (KeywordValue!4354 (value!133103 List!26585)) (CommentValue!8696 (value!133104 List!26585)) (WhitespaceValue!8696 (value!133105 List!26585)) (IndentationValue!4348 (value!133106 List!26585)) (String!28849) (Int32!4348) (Broken!21741 (value!133107 List!26585)) (Boolean!4349) (Unit!39494) (OperatorValue!4351 (op!4408 List!26585)) (IdentifierValue!8696 (value!133108 List!26585)) (IdentifierValue!8697 (value!133109 List!26585)) (WhitespaceValue!8697 (value!133110 List!26585)) (True!8696) (False!8696) (Broken!21742 (value!133111 List!26585)) (Broken!21743 (value!133112 List!26585)) (True!8697) (RightBrace!4348) (RightBracket!4348) (Colon!4348) (Null!4348) (Comma!4348) (LeftBracket!4348) (False!8697) (LeftBrace!4348) (ImaginaryLiteralValue!4348 (text!30882 List!26585)) (StringLiteralValue!13044 (value!133113 List!26585)) (EOFValue!4348 (value!133114 List!26585)) (IdentValue!4348 (value!133115 List!26585)) (DelimiterValue!8697 (value!133116 List!26585)) (DedentValue!4348 (value!133117 List!26585)) (NewLineValue!4348 (value!133118 List!26585)) (IntegerValue!13044 (value!133119 (_ BitVec 32)) (text!30883 List!26585)) (IntegerValue!13045 (value!133120 Int) (text!30884 List!26585)) (Times!4348) (Or!4348) (Equal!4348) (Minus!4348) (Broken!21744 (value!133121 List!26585)) (And!4348) (Div!4348) (LessEqual!4348) (Mod!4348) (Concat!10884) (Not!4348) (Plus!4348) (SpaceValue!4348 (value!133122 List!26585)) (IntegerValue!13046 (value!133123 Int) (text!30885 List!26585)) (StringLiteralValue!13045 (text!30886 List!26585)) (FloatLiteralValue!8697 (text!30887 List!26585)) (BytesLiteralValue!4348 (value!133124 List!26585)) (CommentValue!8697 (value!133125 List!26585)) (StringLiteralValue!13046 (value!133126 List!26585)) (ErrorTokenValue!4348 (msg!4409 List!26585)) )
))
(declare-fun inv!21 (TokenValue!4348) Bool)

(declare-fun efficientList!302 (BalanceConc!16776) List!26585)

(assert (=> start!218650 (not (inv!21 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(declare-fun e!1434606 () Bool)

(declare-fun inv!36013 (BalanceConc!16776) Bool)

(assert (=> start!218650 (and (inv!36013 v!5085) e!1434606)))

(declare-fun b!2243145 () Bool)

(declare-fun tp!707434 () Bool)

(declare-fun inv!36014 (Conc!8524) Bool)

(assert (=> b!2243145 (= e!1434606 (and (inv!36014 (c!357137 v!5085)) tp!707434))))

(assert (= start!218650 b!2243145))

(declare-fun m!2675459 () Bool)

(assert (=> start!218650 m!2675459))

(declare-fun m!2675461 () Bool)

(assert (=> start!218650 m!2675461))

(declare-fun m!2675463 () Bool)

(assert (=> start!218650 m!2675463))

(declare-fun m!2675465 () Bool)

(assert (=> b!2243145 m!2675465))

(push 1)

(assert (not start!218650))

(assert (not b!2243145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!666199 () Bool)

(declare-fun c!357146 () Bool)

(assert (=> d!666199 (= c!357146 (is-IntegerValue!13044 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(declare-fun e!1434620 () Bool)

(assert (=> d!666199 (= (inv!21 (FloatLiteralValue!8697 (efficientList!302 v!5085))) e!1434620)))

(declare-fun b!2243163 () Bool)

(declare-fun inv!16 (TokenValue!4348) Bool)

(assert (=> b!2243163 (= e!1434620 (inv!16 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(declare-fun b!2243164 () Bool)

(declare-fun e!1434618 () Bool)

(declare-fun inv!15 (TokenValue!4348) Bool)

(assert (=> b!2243164 (= e!1434618 (inv!15 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(declare-fun b!2243165 () Bool)

(declare-fun e!1434619 () Bool)

(declare-fun inv!17 (TokenValue!4348) Bool)

(assert (=> b!2243165 (= e!1434619 (inv!17 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(declare-fun b!2243166 () Bool)

(declare-fun res!958452 () Bool)

(assert (=> b!2243166 (=> res!958452 e!1434618)))

(assert (=> b!2243166 (= res!958452 (not (is-IntegerValue!13046 (FloatLiteralValue!8697 (efficientList!302 v!5085)))))))

(assert (=> b!2243166 (= e!1434619 e!1434618)))

(declare-fun b!2243167 () Bool)

(assert (=> b!2243167 (= e!1434620 e!1434619)))

(declare-fun c!357145 () Bool)

(assert (=> b!2243167 (= c!357145 (is-IntegerValue!13045 (FloatLiteralValue!8697 (efficientList!302 v!5085))))))

(assert (= (and d!666199 c!357146) b!2243163))

(assert (= (and d!666199 (not c!357146)) b!2243167))

(assert (= (and b!2243167 c!357145) b!2243165))

(assert (= (and b!2243167 (not c!357145)) b!2243166))

(assert (= (and b!2243166 (not res!958452)) b!2243164))

(declare-fun m!2675475 () Bool)

(assert (=> b!2243163 m!2675475))

(declare-fun m!2675477 () Bool)

(assert (=> b!2243164 m!2675477))

(declare-fun m!2675479 () Bool)

(assert (=> b!2243165 m!2675479))

(assert (=> start!218650 d!666199))

(declare-fun d!666203 () Bool)

(declare-fun lt!835005 () List!26585)

(declare-fun list!10120 (BalanceConc!16776) List!26585)

(assert (=> d!666203 (= lt!835005 (list!10120 v!5085))))

(declare-fun efficientList!304 (Conc!8524 List!26585) List!26585)

(declare-fun efficientList$default$2!104 (Conc!8524) List!26585)

(assert (=> d!666203 (= lt!835005 (efficientList!304 (c!357137 v!5085) (efficientList$default$2!104 (c!357137 v!5085))))))

(assert (=> d!666203 (= (efficientList!302 v!5085) lt!835005)))

(declare-fun bs!454742 () Bool)

(assert (= bs!454742 d!666203))

(declare-fun m!2675487 () Bool)

(assert (=> bs!454742 m!2675487))

(declare-fun m!2675489 () Bool)

(assert (=> bs!454742 m!2675489))

(assert (=> bs!454742 m!2675489))

(declare-fun m!2675491 () Bool)

(assert (=> bs!454742 m!2675491))

(assert (=> start!218650 d!666203))

(declare-fun d!666207 () Bool)

(declare-fun isBalanced!2648 (Conc!8524) Bool)

(assert (=> d!666207 (= (inv!36013 v!5085) (isBalanced!2648 (c!357137 v!5085)))))

(declare-fun bs!454743 () Bool)

(assert (= bs!454743 d!666207))

(declare-fun m!2675493 () Bool)

(assert (=> bs!454743 m!2675493))

(assert (=> start!218650 d!666207))

(declare-fun d!666209 () Bool)

(declare-fun c!357153 () Bool)

(assert (=> d!666209 (= c!357153 (is-Node!8524 (c!357137 v!5085)))))

(declare-fun e!1434632 () Bool)

(assert (=> d!666209 (= (inv!36014 (c!357137 v!5085)) e!1434632)))

(declare-fun b!2243185 () Bool)

(declare-fun inv!36017 (Conc!8524) Bool)

(assert (=> b!2243185 (= e!1434632 (inv!36017 (c!357137 v!5085)))))

(declare-fun b!2243186 () Bool)

(declare-fun e!1434633 () Bool)

(assert (=> b!2243186 (= e!1434632 e!1434633)))

(declare-fun res!958458 () Bool)

(assert (=> b!2243186 (= res!958458 (not (is-Leaf!12603 (c!357137 v!5085))))))

(assert (=> b!2243186 (=> res!958458 e!1434633)))

(declare-fun b!2243187 () Bool)

(declare-fun inv!36018 (Conc!8524) Bool)

(assert (=> b!2243187 (= e!1434633 (inv!36018 (c!357137 v!5085)))))

(assert (= (and d!666209 c!357153) b!2243185))

(assert (= (and d!666209 (not c!357153)) b!2243186))

(assert (= (and b!2243186 (not res!958458)) b!2243187))

(declare-fun m!2675503 () Bool)

(assert (=> b!2243185 m!2675503))

(declare-fun m!2675505 () Bool)

(assert (=> b!2243187 m!2675505))

(assert (=> b!2243145 d!666209))

(declare-fun e!1434642 () Bool)

(declare-fun b!2243200 () Bool)

(declare-fun tp!707443 () Bool)

(declare-fun tp!707442 () Bool)

(assert (=> b!2243200 (= e!1434642 (and (inv!36014 (left!20150 (c!357137 v!5085))) tp!707442 (inv!36014 (right!20480 (c!357137 v!5085))) tp!707443))))

(declare-fun b!2243201 () Bool)

(declare-fun inv!36019 (IArray!17053) Bool)

(assert (=> b!2243201 (= e!1434642 (inv!36019 (xs!11466 (c!357137 v!5085))))))

(assert (=> b!2243145 (= tp!707434 (and (inv!36014 (c!357137 v!5085)) e!1434642))))

(assert (= (and b!2243145 (is-Node!8524 (c!357137 v!5085))) b!2243200))

(assert (= (and b!2243145 (is-Leaf!12603 (c!357137 v!5085))) b!2243201))

(declare-fun m!2675507 () Bool)

(assert (=> b!2243200 m!2675507))

(declare-fun m!2675509 () Bool)

(assert (=> b!2243200 m!2675509))

(declare-fun m!2675511 () Bool)

(assert (=> b!2243201 m!2675511))

(assert (=> b!2243145 m!2675465))

(push 1)

(assert (not d!666203))

(assert (not d!666207))

(assert (not b!2243201))

(assert (not b!2243187))

(assert (not b!2243164))

(assert (not b!2243185))

(assert (not b!2243163))

(assert (not b!2243200))

(assert (not b!2243165))

(assert (not b!2243145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


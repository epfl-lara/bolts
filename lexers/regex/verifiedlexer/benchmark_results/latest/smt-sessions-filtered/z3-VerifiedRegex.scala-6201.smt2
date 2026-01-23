; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299650 () Bool)

(assert start!299650)

(declare-fun b!3194233 () Bool)

(declare-fun b_free!84769 () Bool)

(declare-fun b_next!85473 () Bool)

(assert (=> b!3194233 (= b_free!84769 (not b_next!85473))))

(declare-fun tp!1010178 () Bool)

(declare-fun b_and!211911 () Bool)

(assert (=> b!3194233 (= tp!1010178 b_and!211911)))

(declare-fun b_free!84771 () Bool)

(declare-fun b_next!85475 () Bool)

(assert (=> b!3194233 (= b_free!84771 (not b_next!85475))))

(declare-fun tp!1010179 () Bool)

(declare-fun b_and!211913 () Bool)

(assert (=> b!3194233 (= tp!1010179 b_and!211913)))

(declare-fun b!3194231 () Bool)

(declare-fun b_free!84773 () Bool)

(declare-fun b_next!85477 () Bool)

(assert (=> b!3194231 (= b_free!84773 (not b_next!85477))))

(declare-fun tp!1010177 () Bool)

(declare-fun b_and!211915 () Bool)

(assert (=> b!3194231 (= tp!1010177 b_and!211915)))

(declare-fun b_free!84775 () Bool)

(declare-fun b_next!85479 () Bool)

(assert (=> b!3194231 (= b_free!84775 (not b_next!85479))))

(declare-fun tp!1010175 () Bool)

(declare-fun b_and!211917 () Bool)

(assert (=> b!3194231 (= tp!1010175 b_and!211917)))

(declare-fun b!3194230 () Bool)

(declare-fun b_free!84777 () Bool)

(declare-fun b_next!85481 () Bool)

(assert (=> b!3194230 (= b_free!84777 (not b_next!85481))))

(declare-fun tp!1010176 () Bool)

(declare-fun b_and!211919 () Bool)

(assert (=> b!3194230 (= tp!1010176 b_and!211919)))

(declare-fun b_free!84779 () Bool)

(declare-fun b_next!85483 () Bool)

(assert (=> b!3194230 (= b_free!84779 (not b_next!85483))))

(declare-fun tp!1010171 () Bool)

(declare-fun b_and!211921 () Bool)

(assert (=> b!3194230 (= tp!1010171 b_and!211921)))

(declare-fun b!3194217 () Bool)

(declare-fun e!1991221 () Bool)

(declare-fun e!1991205 () Bool)

(assert (=> b!3194217 (= e!1991221 (not e!1991205))))

(declare-fun res!1299458 () Bool)

(assert (=> b!3194217 (=> res!1299458 e!1991205)))

(declare-datatypes ((C!20068 0))(
  ( (C!20069 (val!12082 Int)) )
))
(declare-datatypes ((List!36124 0))(
  ( (Nil!36000) (Cons!36000 (h!41420 C!20068) (t!236547 List!36124)) )
))
(declare-fun lt!1076090 () List!36124)

(declare-fun lt!1076088 () List!36124)

(assert (=> b!3194217 (= res!1299458 (not (= lt!1076090 lt!1076088)))))

(declare-datatypes ((LexerInterface!4771 0))(
  ( (LexerInterfaceExt!4768 (__x!23041 Int)) (Lexer!4769) )
))
(declare-fun thiss!18206 () LexerInterface!4771)

(declare-datatypes ((Regex!9941 0))(
  ( (ElementMatch!9941 (c!536164 C!20068)) (Concat!15353 (regOne!20394 Regex!9941) (regTwo!20394 Regex!9941)) (EmptyExpr!9941) (Star!9941 (reg!10270 Regex!9941)) (EmptyLang!9941) (Union!9941 (regOne!20395 Regex!9941) (regTwo!20395 Regex!9941)) )
))
(declare-datatypes ((List!36125 0))(
  ( (Nil!36001) (Cons!36001 (h!41421 (_ BitVec 16)) (t!236548 List!36125)) )
))
(declare-datatypes ((TokenValue!5412 0))(
  ( (FloatLiteralValue!10824 (text!38329 List!36125)) (TokenValueExt!5411 (__x!23042 Int)) (Broken!27060 (value!168121 List!36125)) (Object!5535) (End!5412) (Def!5412) (Underscore!5412) (Match!5412) (Else!5412) (Error!5412) (Case!5412) (If!5412) (Extends!5412) (Abstract!5412) (Class!5412) (Val!5412) (DelimiterValue!10824 (del!5472 List!36125)) (KeywordValue!5418 (value!168122 List!36125)) (CommentValue!10824 (value!168123 List!36125)) (WhitespaceValue!10824 (value!168124 List!36125)) (IndentationValue!5412 (value!168125 List!36125)) (String!40393) (Int32!5412) (Broken!27061 (value!168126 List!36125)) (Boolean!5413) (Unit!50401) (OperatorValue!5415 (op!5472 List!36125)) (IdentifierValue!10824 (value!168127 List!36125)) (IdentifierValue!10825 (value!168128 List!36125)) (WhitespaceValue!10825 (value!168129 List!36125)) (True!10824) (False!10824) (Broken!27062 (value!168130 List!36125)) (Broken!27063 (value!168131 List!36125)) (True!10825) (RightBrace!5412) (RightBracket!5412) (Colon!5412) (Null!5412) (Comma!5412) (LeftBracket!5412) (False!10825) (LeftBrace!5412) (ImaginaryLiteralValue!5412 (text!38330 List!36125)) (StringLiteralValue!16236 (value!168132 List!36125)) (EOFValue!5412 (value!168133 List!36125)) (IdentValue!5412 (value!168134 List!36125)) (DelimiterValue!10825 (value!168135 List!36125)) (DedentValue!5412 (value!168136 List!36125)) (NewLineValue!5412 (value!168137 List!36125)) (IntegerValue!16236 (value!168138 (_ BitVec 32)) (text!38331 List!36125)) (IntegerValue!16237 (value!168139 Int) (text!38332 List!36125)) (Times!5412) (Or!5412) (Equal!5412) (Minus!5412) (Broken!27064 (value!168140 List!36125)) (And!5412) (Div!5412) (LessEqual!5412) (Mod!5412) (Concat!15354) (Not!5412) (Plus!5412) (SpaceValue!5412 (value!168141 List!36125)) (IntegerValue!16238 (value!168142 Int) (text!38333 List!36125)) (StringLiteralValue!16237 (text!38334 List!36125)) (FloatLiteralValue!10825 (text!38335 List!36125)) (BytesLiteralValue!5412 (value!168143 List!36125)) (CommentValue!10825 (value!168144 List!36125)) (StringLiteralValue!16238 (value!168145 List!36125)) (ErrorTokenValue!5412 (msg!5473 List!36125)) )
))
(declare-datatypes ((IArray!21483 0))(
  ( (IArray!21484 (innerList!10799 List!36124)) )
))
(declare-datatypes ((Conc!10739 0))(
  ( (Node!10739 (left!27980 Conc!10739) (right!28310 Conc!10739) (csize!21708 Int) (cheight!10950 Int)) (Leaf!16941 (xs!13857 IArray!21483) (csize!21709 Int)) (Empty!10739) )
))
(declare-datatypes ((BalanceConc!21092 0))(
  ( (BalanceConc!21093 (c!536165 Conc!10739)) )
))
(declare-datatypes ((String!40394 0))(
  ( (String!40395 (value!168146 String)) )
))
(declare-datatypes ((TokenValueInjection!10252 0))(
  ( (TokenValueInjection!10253 (toValue!7250 Int) (toChars!7109 Int)) )
))
(declare-datatypes ((Rule!10164 0))(
  ( (Rule!10165 (regex!5182 Regex!9941) (tag!5700 String!40394) (isSeparator!5182 Bool) (transformation!5182 TokenValueInjection!10252)) )
))
(declare-datatypes ((Token!9730 0))(
  ( (Token!9731 (value!168147 TokenValue!5412) (rule!7614 Rule!10164) (size!27117 Int) (originalCharacters!5896 List!36124)) )
))
(declare-datatypes ((List!36126 0))(
  ( (Nil!36002) (Cons!36002 (h!41422 Token!9730) (t!236549 List!36126)) )
))
(declare-fun tokens!494 () List!36126)

(declare-fun printList!1321 (LexerInterface!4771 List!36126) List!36124)

(assert (=> b!3194217 (= lt!1076088 (printList!1321 thiss!18206 (Cons!36002 (h!41422 tokens!494) Nil!36002)))))

(declare-fun lt!1076086 () BalanceConc!21092)

(declare-fun list!12791 (BalanceConc!21092) List!36124)

(assert (=> b!3194217 (= lt!1076090 (list!12791 lt!1076086))))

(declare-datatypes ((IArray!21485 0))(
  ( (IArray!21486 (innerList!10800 List!36126)) )
))
(declare-datatypes ((Conc!10740 0))(
  ( (Node!10740 (left!27981 Conc!10740) (right!28311 Conc!10740) (csize!21710 Int) (cheight!10951 Int)) (Leaf!16942 (xs!13858 IArray!21485) (csize!21711 Int)) (Empty!10740) )
))
(declare-datatypes ((BalanceConc!21094 0))(
  ( (BalanceConc!21095 (c!536166 Conc!10740)) )
))
(declare-fun lt!1076084 () BalanceConc!21094)

(declare-fun printTailRec!1268 (LexerInterface!4771 BalanceConc!21094 Int BalanceConc!21092) BalanceConc!21092)

(assert (=> b!3194217 (= lt!1076086 (printTailRec!1268 thiss!18206 lt!1076084 0 (BalanceConc!21093 Empty!10739)))))

(declare-fun print!1836 (LexerInterface!4771 BalanceConc!21094) BalanceConc!21092)

(assert (=> b!3194217 (= lt!1076086 (print!1836 thiss!18206 lt!1076084))))

(declare-fun singletonSeq!2278 (Token!9730) BalanceConc!21094)

(assert (=> b!3194217 (= lt!1076084 (singletonSeq!2278 (h!41422 tokens!494)))))

(declare-fun b!3194218 () Bool)

(declare-fun e!1991220 () Bool)

(declare-fun e!1991215 () Bool)

(assert (=> b!3194218 (= e!1991220 e!1991215)))

(declare-fun res!1299464 () Bool)

(assert (=> b!3194218 (=> res!1299464 e!1991215)))

(declare-fun lt!1076091 () List!36124)

(declare-fun lt!1076093 () List!36124)

(assert (=> b!3194218 (= res!1299464 (not (= lt!1076091 lt!1076093)))))

(declare-fun lt!1076095 () List!36124)

(declare-fun lt!1076087 () List!36124)

(declare-fun lt!1076094 () List!36124)

(declare-fun ++!8614 (List!36124 List!36124) List!36124)

(assert (=> b!3194218 (= lt!1076093 (++!8614 (++!8614 lt!1076094 lt!1076095) lt!1076087))))

(declare-fun res!1299456 () Bool)

(assert (=> start!299650 (=> (not res!1299456) (not e!1991221))))

(get-info :version)

(assert (=> start!299650 (= res!1299456 ((_ is Lexer!4769) thiss!18206))))

(assert (=> start!299650 e!1991221))

(assert (=> start!299650 true))

(declare-fun e!1991210 () Bool)

(assert (=> start!299650 e!1991210))

(declare-fun e!1991218 () Bool)

(assert (=> start!299650 e!1991218))

(declare-fun separatorToken!241 () Token!9730)

(declare-fun e!1991217 () Bool)

(declare-fun inv!48848 (Token!9730) Bool)

(assert (=> start!299650 (and (inv!48848 separatorToken!241) e!1991217)))

(declare-fun b!3194219 () Bool)

(declare-fun res!1299460 () Bool)

(assert (=> b!3194219 (=> (not res!1299460) (not e!1991221))))

(declare-datatypes ((List!36127 0))(
  ( (Nil!36003) (Cons!36003 (h!41423 Rule!10164) (t!236550 List!36127)) )
))
(declare-fun rules!2135 () List!36127)

(declare-fun rulesProduceIndividualToken!2263 (LexerInterface!4771 List!36127 Token!9730) Bool)

(assert (=> b!3194219 (= res!1299460 (rulesProduceIndividualToken!2263 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3194220 () Bool)

(declare-fun e!1991214 () Bool)

(declare-fun e!1991216 () Bool)

(declare-fun tp!1010172 () Bool)

(declare-fun inv!48845 (String!40394) Bool)

(declare-fun inv!48849 (TokenValueInjection!10252) Bool)

(assert (=> b!3194220 (= e!1991216 (and tp!1010172 (inv!48845 (tag!5700 (rule!7614 separatorToken!241))) (inv!48849 (transformation!5182 (rule!7614 separatorToken!241))) e!1991214))))

(declare-fun b!3194221 () Bool)

(declare-fun e!1991208 () Bool)

(assert (=> b!3194221 (= e!1991208 e!1991220)))

(declare-fun res!1299466 () Bool)

(assert (=> b!3194221 (=> res!1299466 e!1991220)))

(declare-fun charsOf!3198 (Token!9730) BalanceConc!21092)

(declare-fun printWithSeparatorTokenList!116 (LexerInterface!4771 List!36126 Token!9730) List!36124)

(assert (=> b!3194221 (= res!1299466 (not (= lt!1076087 (++!8614 (++!8614 (list!12791 (charsOf!3198 (h!41422 (t!236549 tokens!494)))) lt!1076095) (printWithSeparatorTokenList!116 thiss!18206 (t!236549 (t!236549 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1076083 () List!36124)

(assert (=> b!3194221 (= lt!1076083 (++!8614 lt!1076095 lt!1076087))))

(assert (=> b!3194221 (= lt!1076095 (list!12791 (charsOf!3198 separatorToken!241)))))

(assert (=> b!3194221 (= lt!1076087 (printWithSeparatorTokenList!116 thiss!18206 (t!236549 tokens!494) separatorToken!241))))

(assert (=> b!3194221 (= lt!1076091 (printWithSeparatorTokenList!116 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3194222 () Bool)

(declare-fun res!1299459 () Bool)

(assert (=> b!3194222 (=> (not res!1299459) (not e!1991221))))

(assert (=> b!3194222 (= res!1299459 (and (not ((_ is Nil!36002) tokens!494)) (not ((_ is Nil!36002) (t!236549 tokens!494)))))))

(declare-fun b!3194223 () Bool)

(declare-fun e!1991207 () Bool)

(declare-fun tp!1010174 () Bool)

(assert (=> b!3194223 (= e!1991210 (and e!1991207 tp!1010174))))

(declare-fun b!3194224 () Bool)

(declare-fun res!1299468 () Bool)

(assert (=> b!3194224 (=> (not res!1299468) (not e!1991221))))

(assert (=> b!3194224 (= res!1299468 (isSeparator!5182 (rule!7614 separatorToken!241)))))

(declare-fun b!3194225 () Bool)

(declare-fun res!1299457 () Bool)

(assert (=> b!3194225 (=> (not res!1299457) (not e!1991221))))

(declare-fun rulesInvariant!4168 (LexerInterface!4771 List!36127) Bool)

(assert (=> b!3194225 (= res!1299457 (rulesInvariant!4168 thiss!18206 rules!2135))))

(declare-fun b!3194226 () Bool)

(declare-fun e!1991206 () Bool)

(assert (=> b!3194226 (= e!1991205 e!1991206)))

(declare-fun res!1299462 () Bool)

(assert (=> b!3194226 (=> res!1299462 e!1991206)))

(assert (=> b!3194226 (= res!1299462 (or (not (= lt!1076088 lt!1076094)) (not (= lt!1076090 lt!1076094))))))

(assert (=> b!3194226 (= lt!1076094 (list!12791 (charsOf!3198 (h!41422 tokens!494))))))

(declare-fun b!3194227 () Bool)

(declare-fun res!1299470 () Bool)

(assert (=> b!3194227 (=> (not res!1299470) (not e!1991221))))

(declare-fun sepAndNonSepRulesDisjointChars!1376 (List!36127 List!36127) Bool)

(assert (=> b!3194227 (= res!1299470 (sepAndNonSepRulesDisjointChars!1376 rules!2135 rules!2135))))

(declare-fun b!3194228 () Bool)

(declare-fun res!1299465 () Bool)

(assert (=> b!3194228 (=> (not res!1299465) (not e!1991221))))

(declare-fun isEmpty!20094 (List!36127) Bool)

(assert (=> b!3194228 (= res!1299465 (not (isEmpty!20094 rules!2135)))))

(declare-fun b!3194229 () Bool)

(assert (=> b!3194229 (= e!1991206 e!1991208)))

(declare-fun res!1299455 () Bool)

(assert (=> b!3194229 (=> res!1299455 e!1991208)))

(assert (=> b!3194229 (= res!1299455 (or (isSeparator!5182 (rule!7614 (h!41422 tokens!494))) (isSeparator!5182 (rule!7614 (h!41422 (t!236549 tokens!494))))))))

(declare-datatypes ((Unit!50402 0))(
  ( (Unit!50403) )
))
(declare-fun lt!1076092 () Unit!50402)

(declare-fun lambda!116933 () Int)

(declare-fun forallContained!1153 (List!36126 Int Token!9730) Unit!50402)

(assert (=> b!3194229 (= lt!1076092 (forallContained!1153 tokens!494 lambda!116933 (h!41422 (t!236549 tokens!494))))))

(declare-fun lt!1076085 () Unit!50402)

(assert (=> b!3194229 (= lt!1076085 (forallContained!1153 tokens!494 lambda!116933 (h!41422 tokens!494)))))

(declare-fun e!1991211 () Bool)

(assert (=> b!3194230 (= e!1991211 (and tp!1010176 tp!1010171))))

(declare-fun e!1991219 () Bool)

(assert (=> b!3194231 (= e!1991219 (and tp!1010177 tp!1010175))))

(declare-fun b!3194232 () Bool)

(declare-fun e!1991209 () Bool)

(assert (=> b!3194232 (= e!1991215 e!1991209)))

(declare-fun res!1299471 () Bool)

(assert (=> b!3194232 (=> res!1299471 e!1991209)))

(declare-fun lt!1076089 () List!36124)

(assert (=> b!3194232 (= res!1299471 (not (= lt!1076091 lt!1076089)))))

(assert (=> b!3194232 (= lt!1076093 lt!1076089)))

(assert (=> b!3194232 (= lt!1076089 (++!8614 lt!1076094 lt!1076083))))

(declare-fun lt!1076082 () Unit!50402)

(declare-fun lemmaConcatAssociativity!1696 (List!36124 List!36124 List!36124) Unit!50402)

(assert (=> b!3194232 (= lt!1076082 (lemmaConcatAssociativity!1696 lt!1076094 lt!1076095 lt!1076087))))

(assert (=> b!3194233 (= e!1991214 (and tp!1010178 tp!1010179))))

(declare-fun b!3194234 () Bool)

(declare-fun res!1299469 () Bool)

(assert (=> b!3194234 (=> res!1299469 e!1991206)))

(assert (=> b!3194234 (= res!1299469 (not (rulesProduceIndividualToken!2263 thiss!18206 rules!2135 (h!41422 tokens!494))))))

(declare-fun b!3194235 () Bool)

(declare-fun res!1299467 () Bool)

(assert (=> b!3194235 (=> res!1299467 e!1991206)))

(declare-fun isEmpty!20095 (BalanceConc!21094) Bool)

(declare-datatypes ((tuple2!35360 0))(
  ( (tuple2!35361 (_1!20814 BalanceConc!21094) (_2!20814 BalanceConc!21092)) )
))
(declare-fun lex!2101 (LexerInterface!4771 List!36127 BalanceConc!21092) tuple2!35360)

(declare-fun seqFromList!3435 (List!36124) BalanceConc!21092)

(assert (=> b!3194235 (= res!1299467 (isEmpty!20095 (_1!20814 (lex!2101 thiss!18206 rules!2135 (seqFromList!3435 lt!1076094)))))))

(declare-fun b!3194236 () Bool)

(declare-fun tp!1010181 () Bool)

(declare-fun e!1991226 () Bool)

(assert (=> b!3194236 (= e!1991226 (and tp!1010181 (inv!48845 (tag!5700 (rule!7614 (h!41422 tokens!494)))) (inv!48849 (transformation!5182 (rule!7614 (h!41422 tokens!494)))) e!1991219))))

(declare-fun b!3194237 () Bool)

(declare-fun res!1299472 () Bool)

(assert (=> b!3194237 (=> res!1299472 e!1991209)))

(declare-fun contains!6393 (List!36126 Token!9730) Bool)

(assert (=> b!3194237 (= res!1299472 (not (contains!6393 tokens!494 (h!41422 tokens!494))))))

(declare-fun tp!1010170 () Bool)

(declare-fun b!3194238 () Bool)

(assert (=> b!3194238 (= e!1991207 (and tp!1010170 (inv!48845 (tag!5700 (h!41423 rules!2135))) (inv!48849 (transformation!5182 (h!41423 rules!2135))) e!1991211))))

(declare-fun b!3194239 () Bool)

(declare-fun res!1299461 () Bool)

(assert (=> b!3194239 (=> (not res!1299461) (not e!1991221))))

(declare-fun forall!7322 (List!36126 Int) Bool)

(assert (=> b!3194239 (= res!1299461 (forall!7322 tokens!494 lambda!116933))))

(declare-fun b!3194240 () Bool)

(declare-fun res!1299463 () Bool)

(assert (=> b!3194240 (=> (not res!1299463) (not e!1991221))))

(declare-fun rulesProduceEachTokenIndividually!1222 (LexerInterface!4771 List!36127 BalanceConc!21094) Bool)

(declare-fun seqFromList!3436 (List!36126) BalanceConc!21094)

(assert (=> b!3194240 (= res!1299463 (rulesProduceEachTokenIndividually!1222 thiss!18206 rules!2135 (seqFromList!3436 tokens!494)))))

(declare-fun b!3194241 () Bool)

(declare-fun tp!1010180 () Bool)

(declare-fun e!1991213 () Bool)

(declare-fun inv!21 (TokenValue!5412) Bool)

(assert (=> b!3194241 (= e!1991213 (and (inv!21 (value!168147 (h!41422 tokens!494))) e!1991226 tp!1010180))))

(declare-fun tp!1010182 () Bool)

(declare-fun b!3194242 () Bool)

(assert (=> b!3194242 (= e!1991217 (and (inv!21 (value!168147 separatorToken!241)) e!1991216 tp!1010182))))

(declare-fun tp!1010173 () Bool)

(declare-fun b!3194243 () Bool)

(assert (=> b!3194243 (= e!1991218 (and (inv!48848 (h!41422 tokens!494)) e!1991213 tp!1010173))))

(declare-fun b!3194244 () Bool)

(assert (=> b!3194244 (= e!1991209 true)))

(declare-fun lt!1076096 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1715 (LexerInterface!4771 List!36127 List!36126) Bool)

(assert (=> b!3194244 (= lt!1076096 (rulesProduceEachTokenIndividuallyList!1715 thiss!18206 rules!2135 tokens!494))))

(assert (= (and start!299650 res!1299456) b!3194228))

(assert (= (and b!3194228 res!1299465) b!3194225))

(assert (= (and b!3194225 res!1299457) b!3194240))

(assert (= (and b!3194240 res!1299463) b!3194219))

(assert (= (and b!3194219 res!1299460) b!3194224))

(assert (= (and b!3194224 res!1299468) b!3194239))

(assert (= (and b!3194239 res!1299461) b!3194227))

(assert (= (and b!3194227 res!1299470) b!3194222))

(assert (= (and b!3194222 res!1299459) b!3194217))

(assert (= (and b!3194217 (not res!1299458)) b!3194226))

(assert (= (and b!3194226 (not res!1299462)) b!3194234))

(assert (= (and b!3194234 (not res!1299469)) b!3194235))

(assert (= (and b!3194235 (not res!1299467)) b!3194229))

(assert (= (and b!3194229 (not res!1299455)) b!3194221))

(assert (= (and b!3194221 (not res!1299466)) b!3194218))

(assert (= (and b!3194218 (not res!1299464)) b!3194232))

(assert (= (and b!3194232 (not res!1299471)) b!3194237))

(assert (= (and b!3194237 (not res!1299472)) b!3194244))

(assert (= b!3194238 b!3194230))

(assert (= b!3194223 b!3194238))

(assert (= (and start!299650 ((_ is Cons!36003) rules!2135)) b!3194223))

(assert (= b!3194236 b!3194231))

(assert (= b!3194241 b!3194236))

(assert (= b!3194243 b!3194241))

(assert (= (and start!299650 ((_ is Cons!36002) tokens!494)) b!3194243))

(assert (= b!3194220 b!3194233))

(assert (= b!3194242 b!3194220))

(assert (= start!299650 b!3194242))

(declare-fun m!3453947 () Bool)

(assert (=> b!3194232 m!3453947))

(declare-fun m!3453949 () Bool)

(assert (=> b!3194232 m!3453949))

(declare-fun m!3453951 () Bool)

(assert (=> b!3194221 m!3453951))

(declare-fun m!3453953 () Bool)

(assert (=> b!3194221 m!3453953))

(declare-fun m!3453955 () Bool)

(assert (=> b!3194221 m!3453955))

(declare-fun m!3453957 () Bool)

(assert (=> b!3194221 m!3453957))

(declare-fun m!3453959 () Bool)

(assert (=> b!3194221 m!3453959))

(declare-fun m!3453961 () Bool)

(assert (=> b!3194221 m!3453961))

(assert (=> b!3194221 m!3453959))

(declare-fun m!3453963 () Bool)

(assert (=> b!3194221 m!3453963))

(assert (=> b!3194221 m!3453951))

(declare-fun m!3453965 () Bool)

(assert (=> b!3194221 m!3453965))

(declare-fun m!3453967 () Bool)

(assert (=> b!3194221 m!3453967))

(assert (=> b!3194221 m!3453957))

(assert (=> b!3194221 m!3453963))

(assert (=> b!3194221 m!3453961))

(declare-fun m!3453969 () Bool)

(assert (=> b!3194221 m!3453969))

(declare-fun m!3453971 () Bool)

(assert (=> b!3194220 m!3453971))

(declare-fun m!3453973 () Bool)

(assert (=> b!3194220 m!3453973))

(declare-fun m!3453975 () Bool)

(assert (=> b!3194227 m!3453975))

(declare-fun m!3453977 () Bool)

(assert (=> b!3194217 m!3453977))

(declare-fun m!3453979 () Bool)

(assert (=> b!3194217 m!3453979))

(declare-fun m!3453981 () Bool)

(assert (=> b!3194217 m!3453981))

(declare-fun m!3453983 () Bool)

(assert (=> b!3194217 m!3453983))

(declare-fun m!3453985 () Bool)

(assert (=> b!3194217 m!3453985))

(declare-fun m!3453987 () Bool)

(assert (=> b!3194241 m!3453987))

(declare-fun m!3453989 () Bool)

(assert (=> start!299650 m!3453989))

(declare-fun m!3453991 () Bool)

(assert (=> b!3194237 m!3453991))

(declare-fun m!3453993 () Bool)

(assert (=> b!3194219 m!3453993))

(declare-fun m!3453995 () Bool)

(assert (=> b!3194244 m!3453995))

(declare-fun m!3453997 () Bool)

(assert (=> b!3194234 m!3453997))

(declare-fun m!3453999 () Bool)

(assert (=> b!3194225 m!3453999))

(declare-fun m!3454001 () Bool)

(assert (=> b!3194235 m!3454001))

(assert (=> b!3194235 m!3454001))

(declare-fun m!3454003 () Bool)

(assert (=> b!3194235 m!3454003))

(declare-fun m!3454005 () Bool)

(assert (=> b!3194235 m!3454005))

(declare-fun m!3454007 () Bool)

(assert (=> b!3194238 m!3454007))

(declare-fun m!3454009 () Bool)

(assert (=> b!3194238 m!3454009))

(declare-fun m!3454011 () Bool)

(assert (=> b!3194236 m!3454011))

(declare-fun m!3454013 () Bool)

(assert (=> b!3194236 m!3454013))

(declare-fun m!3454015 () Bool)

(assert (=> b!3194228 m!3454015))

(declare-fun m!3454017 () Bool)

(assert (=> b!3194239 m!3454017))

(declare-fun m!3454019 () Bool)

(assert (=> b!3194243 m!3454019))

(declare-fun m!3454021 () Bool)

(assert (=> b!3194242 m!3454021))

(declare-fun m!3454023 () Bool)

(assert (=> b!3194218 m!3454023))

(assert (=> b!3194218 m!3454023))

(declare-fun m!3454025 () Bool)

(assert (=> b!3194218 m!3454025))

(declare-fun m!3454027 () Bool)

(assert (=> b!3194226 m!3454027))

(assert (=> b!3194226 m!3454027))

(declare-fun m!3454029 () Bool)

(assert (=> b!3194226 m!3454029))

(declare-fun m!3454031 () Bool)

(assert (=> b!3194229 m!3454031))

(declare-fun m!3454033 () Bool)

(assert (=> b!3194229 m!3454033))

(declare-fun m!3454035 () Bool)

(assert (=> b!3194240 m!3454035))

(assert (=> b!3194240 m!3454035))

(declare-fun m!3454037 () Bool)

(assert (=> b!3194240 m!3454037))

(check-sat (not b!3194237) (not b!3194239) b_and!211921 (not b!3194235) b_and!211917 (not b!3194240) (not b!3194225) (not b!3194232) (not b!3194219) b_and!211911 b_and!211915 (not b_next!85477) (not b!3194234) (not b_next!85483) (not b!3194243) b_and!211913 (not b!3194236) (not b!3194242) (not b_next!85475) (not b!3194221) (not b!3194244) (not b!3194220) (not b!3194223) b_and!211919 (not b!3194238) (not b_next!85481) (not b!3194227) (not b!3194226) (not b_next!85479) (not b!3194218) (not b!3194241) (not b!3194228) (not start!299650) (not b!3194229) (not b!3194217) (not b_next!85473))
(check-sat b_and!211921 (not b_next!85475) b_and!211919 b_and!211917 (not b_next!85481) (not b_next!85479) b_and!211911 b_and!211915 (not b_next!85477) (not b_next!85473) b_and!211913 (not b_next!85483))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353624 () Bool)

(assert start!353624)

(declare-fun b!3765270 () Bool)

(declare-fun b_free!100837 () Bool)

(declare-fun b_next!101541 () Bool)

(assert (=> b!3765270 (= b_free!100837 (not b_next!101541))))

(declare-fun tp!1150193 () Bool)

(declare-fun b_and!279631 () Bool)

(assert (=> b!3765270 (= tp!1150193 b_and!279631)))

(declare-fun b_free!100839 () Bool)

(declare-fun b_next!101543 () Bool)

(assert (=> b!3765270 (= b_free!100839 (not b_next!101543))))

(declare-fun tp!1150189 () Bool)

(declare-fun b_and!279633 () Bool)

(assert (=> b!3765270 (= tp!1150189 b_and!279633)))

(declare-fun b!3765269 () Bool)

(declare-fun tp!1150191 () Bool)

(declare-fun e!2328669 () Bool)

(declare-datatypes ((C!22324 0))(
  ( (C!22325 (val!13238 Int)) )
))
(declare-datatypes ((List!40287 0))(
  ( (Nil!40163) (Cons!40163 (h!45583 (_ BitVec 16)) (t!304290 List!40287)) )
))
(declare-datatypes ((Regex!11069 0))(
  ( (ElementMatch!11069 (c!652278 C!22324)) (Concat!17463 (regOne!22650 Regex!11069) (regTwo!22650 Regex!11069)) (EmptyExpr!11069) (Star!11069 (reg!11398 Regex!11069)) (EmptyLang!11069) (Union!11069 (regOne!22651 Regex!11069) (regTwo!22651 Regex!11069)) )
))
(declare-datatypes ((String!45651 0))(
  ( (String!45652 (value!196255 String)) )
))
(declare-datatypes ((TokenValue!6394 0))(
  ( (FloatLiteralValue!12788 (text!45203 List!40287)) (TokenValueExt!6393 (__x!25005 Int)) (Broken!31970 (value!196256 List!40287)) (Object!6517) (End!6394) (Def!6394) (Underscore!6394) (Match!6394) (Else!6394) (Error!6394) (Case!6394) (If!6394) (Extends!6394) (Abstract!6394) (Class!6394) (Val!6394) (DelimiterValue!12788 (del!6454 List!40287)) (KeywordValue!6400 (value!196257 List!40287)) (CommentValue!12788 (value!196258 List!40287)) (WhitespaceValue!12788 (value!196259 List!40287)) (IndentationValue!6394 (value!196260 List!40287)) (String!45653) (Int32!6394) (Broken!31971 (value!196261 List!40287)) (Boolean!6395) (Unit!57883) (OperatorValue!6397 (op!6454 List!40287)) (IdentifierValue!12788 (value!196262 List!40287)) (IdentifierValue!12789 (value!196263 List!40287)) (WhitespaceValue!12789 (value!196264 List!40287)) (True!12788) (False!12788) (Broken!31972 (value!196265 List!40287)) (Broken!31973 (value!196266 List!40287)) (True!12789) (RightBrace!6394) (RightBracket!6394) (Colon!6394) (Null!6394) (Comma!6394) (LeftBracket!6394) (False!12789) (LeftBrace!6394) (ImaginaryLiteralValue!6394 (text!45204 List!40287)) (StringLiteralValue!19182 (value!196267 List!40287)) (EOFValue!6394 (value!196268 List!40287)) (IdentValue!6394 (value!196269 List!40287)) (DelimiterValue!12789 (value!196270 List!40287)) (DedentValue!6394 (value!196271 List!40287)) (NewLineValue!6394 (value!196272 List!40287)) (IntegerValue!19182 (value!196273 (_ BitVec 32)) (text!45205 List!40287)) (IntegerValue!19183 (value!196274 Int) (text!45206 List!40287)) (Times!6394) (Or!6394) (Equal!6394) (Minus!6394) (Broken!31974 (value!196275 List!40287)) (And!6394) (Div!6394) (LessEqual!6394) (Mod!6394) (Concat!17464) (Not!6394) (Plus!6394) (SpaceValue!6394 (value!196276 List!40287)) (IntegerValue!19184 (value!196277 Int) (text!45207 List!40287)) (StringLiteralValue!19183 (text!45208 List!40287)) (FloatLiteralValue!12789 (text!45209 List!40287)) (BytesLiteralValue!6394 (value!196278 List!40287)) (CommentValue!12789 (value!196279 List!40287)) (StringLiteralValue!19184 (value!196280 List!40287)) (ErrorTokenValue!6394 (msg!6455 List!40287)) )
))
(declare-datatypes ((List!40288 0))(
  ( (Nil!40164) (Cons!40164 (h!45584 C!22324) (t!304291 List!40288)) )
))
(declare-datatypes ((IArray!24627 0))(
  ( (IArray!24628 (innerList!12371 List!40288)) )
))
(declare-datatypes ((Conc!12311 0))(
  ( (Node!12311 (left!31094 Conc!12311) (right!31424 Conc!12311) (csize!24852 Int) (cheight!12522 Int)) (Leaf!19091 (xs!15521 IArray!24627) (csize!24853 Int)) (Empty!12311) )
))
(declare-datatypes ((BalanceConc!24216 0))(
  ( (BalanceConc!24217 (c!652279 Conc!12311)) )
))
(declare-datatypes ((TokenValueInjection!12216 0))(
  ( (TokenValueInjection!12217 (toValue!8524 Int) (toChars!8383 Int)) )
))
(declare-datatypes ((Rule!12128 0))(
  ( (Rule!12129 (regex!6164 Regex!11069) (tag!7024 String!45651) (isSeparator!6164 Bool) (transformation!6164 TokenValueInjection!12216)) )
))
(declare-datatypes ((Token!11466 0))(
  ( (Token!11467 (value!196281 TokenValue!6394) (rule!8928 Rule!12128) (size!30235 Int) (originalCharacters!6764 List!40288)) )
))
(declare-datatypes ((List!40289 0))(
  ( (Nil!40165) (Cons!40165 (h!45585 Token!11466) (t!304292 List!40289)) )
))
(declare-fun l!4168 () List!40289)

(declare-fun e!2328666 () Bool)

(declare-fun inv!53918 (String!45651) Bool)

(declare-fun inv!53921 (TokenValueInjection!12216) Bool)

(assert (=> b!3765269 (= e!2328666 (and tp!1150191 (inv!53918 (tag!7024 (rule!8928 (h!45585 l!4168)))) (inv!53921 (transformation!6164 (rule!8928 (h!45585 l!4168)))) e!2328669))))

(assert (=> b!3765270 (= e!2328669 (and tp!1150193 tp!1150189))))

(declare-fun b!3765271 () Bool)

(declare-fun e!2328668 () Bool)

(assert (=> b!3765271 (= e!2328668 (not true))))

(declare-fun acc!396 () List!40288)

(declare-fun lt!1302849 () List!40288)

(declare-fun lt!1302850 () List!40288)

(declare-fun ++!9968 (List!40288 List!40288) List!40288)

(assert (=> b!3765271 (= (++!9968 (++!9968 acc!396 lt!1302849) lt!1302850) (++!9968 acc!396 (++!9968 lt!1302849 lt!1302850)))))

(declare-datatypes ((Unit!57884 0))(
  ( (Unit!57885) )
))
(declare-fun lt!1302851 () Unit!57884)

(declare-fun lemmaConcatAssociativity!2108 (List!40288 List!40288 List!40288) Unit!57884)

(assert (=> b!3765271 (= lt!1302851 (lemmaConcatAssociativity!2108 acc!396 lt!1302849 lt!1302850))))

(declare-datatypes ((LexerInterface!5753 0))(
  ( (LexerInterfaceExt!5750 (__x!25006 Int)) (Lexer!5751) )
))
(declare-fun thiss!13564 () LexerInterface!5753)

(declare-fun printList!1665 (LexerInterface!5753 List!40289) List!40288)

(assert (=> b!3765271 (= lt!1302850 (printList!1665 thiss!13564 (t!304292 l!4168)))))

(declare-fun list!14844 (BalanceConc!24216) List!40288)

(declare-fun charsOf!4014 (Token!11466) BalanceConc!24216)

(assert (=> b!3765271 (= lt!1302849 (list!14844 (charsOf!4014 (h!45585 l!4168))))))

(declare-fun b!3765272 () Bool)

(declare-fun e!2328663 () Bool)

(declare-fun tp!1150190 () Bool)

(declare-fun inv!21 (TokenValue!6394) Bool)

(assert (=> b!3765272 (= e!2328663 (and (inv!21 (value!196281 (h!45585 l!4168))) e!2328666 tp!1150190))))

(declare-fun b!3765273 () Bool)

(declare-fun tp!1150194 () Bool)

(declare-fun e!2328665 () Bool)

(declare-fun inv!53922 (Token!11466) Bool)

(assert (=> b!3765273 (= e!2328665 (and (inv!53922 (h!45585 l!4168)) e!2328663 tp!1150194))))

(declare-fun b!3765274 () Bool)

(declare-fun e!2328667 () Bool)

(declare-fun tp_is_empty!19133 () Bool)

(declare-fun tp!1150192 () Bool)

(assert (=> b!3765274 (= e!2328667 (and tp_is_empty!19133 tp!1150192))))

(declare-fun res!1524394 () Bool)

(assert (=> start!353624 (=> (not res!1524394) (not e!2328668))))

(get-info :version)

(assert (=> start!353624 (= res!1524394 (and ((_ is Lexer!5751) thiss!13564) ((_ is Cons!40165) l!4168)))))

(assert (=> start!353624 e!2328668))

(assert (=> start!353624 true))

(assert (=> start!353624 e!2328665))

(assert (=> start!353624 e!2328667))

(assert (= (and start!353624 res!1524394) b!3765271))

(assert (= b!3765269 b!3765270))

(assert (= b!3765272 b!3765269))

(assert (= b!3765273 b!3765272))

(assert (= (and start!353624 ((_ is Cons!40165) l!4168)) b!3765273))

(assert (= (and start!353624 ((_ is Cons!40164) acc!396)) b!3765274))

(declare-fun m!4261317 () Bool)

(assert (=> b!3765269 m!4261317))

(declare-fun m!4261319 () Bool)

(assert (=> b!3765269 m!4261319))

(declare-fun m!4261321 () Bool)

(assert (=> b!3765271 m!4261321))

(declare-fun m!4261323 () Bool)

(assert (=> b!3765271 m!4261323))

(assert (=> b!3765271 m!4261321))

(declare-fun m!4261325 () Bool)

(assert (=> b!3765271 m!4261325))

(declare-fun m!4261327 () Bool)

(assert (=> b!3765271 m!4261327))

(declare-fun m!4261329 () Bool)

(assert (=> b!3765271 m!4261329))

(assert (=> b!3765271 m!4261327))

(declare-fun m!4261331 () Bool)

(assert (=> b!3765271 m!4261331))

(declare-fun m!4261333 () Bool)

(assert (=> b!3765271 m!4261333))

(assert (=> b!3765271 m!4261323))

(declare-fun m!4261335 () Bool)

(assert (=> b!3765271 m!4261335))

(declare-fun m!4261337 () Bool)

(assert (=> b!3765272 m!4261337))

(declare-fun m!4261339 () Bool)

(assert (=> b!3765273 m!4261339))

(check-sat (not b_next!101541) (not b!3765271) (not b_next!101543) (not b!3765273) tp_is_empty!19133 b_and!279631 (not b!3765274) b_and!279633 (not b!3765269) (not b!3765272))
(check-sat b_and!279633 b_and!279631 (not b_next!101541) (not b_next!101543))

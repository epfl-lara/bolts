; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274328 () Bool)

(assert start!274328)

(declare-fun b!2826149 () Bool)

(declare-fun b_free!81021 () Bool)

(declare-fun b_next!81725 () Bool)

(assert (=> b!2826149 (= b_free!81021 (not b_next!81725))))

(declare-fun tp!902671 () Bool)

(declare-fun b_and!206551 () Bool)

(assert (=> b!2826149 (= tp!902671 b_and!206551)))

(declare-fun b_free!81023 () Bool)

(declare-fun b_next!81727 () Bool)

(assert (=> b!2826149 (= b_free!81023 (not b_next!81727))))

(declare-fun tp!902667 () Bool)

(declare-fun b_and!206553 () Bool)

(assert (=> b!2826149 (= tp!902667 b_and!206553)))

(declare-fun b!2826161 () Bool)

(declare-fun b_free!81025 () Bool)

(declare-fun b_next!81729 () Bool)

(assert (=> b!2826161 (= b_free!81025 (not b_next!81729))))

(declare-fun tp!902668 () Bool)

(declare-fun b_and!206555 () Bool)

(assert (=> b!2826161 (= tp!902668 b_and!206555)))

(declare-fun b_free!81027 () Bool)

(declare-fun b_next!81731 () Bool)

(assert (=> b!2826161 (= b_free!81027 (not b_next!81731))))

(declare-fun tp!902672 () Bool)

(declare-fun b_and!206557 () Bool)

(assert (=> b!2826161 (= tp!902672 b_and!206557)))

(declare-fun b!2826172 () Bool)

(declare-fun e!1788619 () Bool)

(assert (=> b!2826172 (= e!1788619 true)))

(declare-fun b!2826171 () Bool)

(declare-fun e!1788618 () Bool)

(assert (=> b!2826171 (= e!1788618 e!1788619)))

(declare-fun b!2826170 () Bool)

(declare-fun e!1788617 () Bool)

(assert (=> b!2826170 (= e!1788617 e!1788618)))

(declare-fun b!2826147 () Bool)

(assert (=> b!2826147 e!1788617))

(assert (= b!2826171 b!2826172))

(assert (= b!2826170 b!2826171))

(declare-datatypes ((C!16914 0))(
  ( (C!16915 (val!10437 Int)) )
))
(declare-datatypes ((List!33318 0))(
  ( (Nil!33194) (Cons!33194 (h!38614 (_ BitVec 16)) (t!230983 List!33318)) )
))
(declare-datatypes ((TokenValue!5206 0))(
  ( (FloatLiteralValue!10412 (text!36887 List!33318)) (TokenValueExt!5205 (__x!22085 Int)) (Broken!26030 (value!160111 List!33318)) (Object!5329) (End!5206) (Def!5206) (Underscore!5206) (Match!5206) (Else!5206) (Error!5206) (Case!5206) (If!5206) (Extends!5206) (Abstract!5206) (Class!5206) (Val!5206) (DelimiterValue!10412 (del!5266 List!33318)) (KeywordValue!5212 (value!160112 List!33318)) (CommentValue!10412 (value!160113 List!33318)) (WhitespaceValue!10412 (value!160114 List!33318)) (IndentationValue!5206 (value!160115 List!33318)) (String!36487) (Int32!5206) (Broken!26031 (value!160116 List!33318)) (Boolean!5207) (Unit!47238) (OperatorValue!5209 (op!5266 List!33318)) (IdentifierValue!10412 (value!160117 List!33318)) (IdentifierValue!10413 (value!160118 List!33318)) (WhitespaceValue!10413 (value!160119 List!33318)) (True!10412) (False!10412) (Broken!26032 (value!160120 List!33318)) (Broken!26033 (value!160121 List!33318)) (True!10413) (RightBrace!5206) (RightBracket!5206) (Colon!5206) (Null!5206) (Comma!5206) (LeftBracket!5206) (False!10413) (LeftBrace!5206) (ImaginaryLiteralValue!5206 (text!36888 List!33318)) (StringLiteralValue!15618 (value!160122 List!33318)) (EOFValue!5206 (value!160123 List!33318)) (IdentValue!5206 (value!160124 List!33318)) (DelimiterValue!10413 (value!160125 List!33318)) (DedentValue!5206 (value!160126 List!33318)) (NewLineValue!5206 (value!160127 List!33318)) (IntegerValue!15618 (value!160128 (_ BitVec 32)) (text!36889 List!33318)) (IntegerValue!15619 (value!160129 Int) (text!36890 List!33318)) (Times!5206) (Or!5206) (Equal!5206) (Minus!5206) (Broken!26034 (value!160130 List!33318)) (And!5206) (Div!5206) (LessEqual!5206) (Mod!5206) (Concat!13572) (Not!5206) (Plus!5206) (SpaceValue!5206 (value!160131 List!33318)) (IntegerValue!15620 (value!160132 Int) (text!36891 List!33318)) (StringLiteralValue!15619 (text!36892 List!33318)) (FloatLiteralValue!10413 (text!36893 List!33318)) (BytesLiteralValue!5206 (value!160133 List!33318)) (CommentValue!10413 (value!160134 List!33318)) (StringLiteralValue!15620 (value!160135 List!33318)) (ErrorTokenValue!5206 (msg!5267 List!33318)) )
))
(declare-datatypes ((List!33319 0))(
  ( (Nil!33195) (Cons!33195 (h!38615 C!16914) (t!230984 List!33319)) )
))
(declare-datatypes ((IArray!20619 0))(
  ( (IArray!20620 (innerList!10367 List!33319)) )
))
(declare-datatypes ((Conc!10307 0))(
  ( (Node!10307 (left!25084 Conc!10307) (right!25414 Conc!10307) (csize!20844 Int) (cheight!10518 Int)) (Leaf!15687 (xs!13419 IArray!20619) (csize!20845 Int)) (Empty!10307) )
))
(declare-datatypes ((BalanceConc!20252 0))(
  ( (BalanceConc!20253 (c!457476 Conc!10307)) )
))
(declare-datatypes ((TokenValueInjection!9840 0))(
  ( (TokenValueInjection!9841 (toValue!6998 Int) (toChars!6857 Int)) )
))
(declare-datatypes ((Regex!8366 0))(
  ( (ElementMatch!8366 (c!457477 C!16914)) (Concat!13573 (regOne!17244 Regex!8366) (regTwo!17244 Regex!8366)) (EmptyExpr!8366) (Star!8366 (reg!8695 Regex!8366)) (EmptyLang!8366) (Union!8366 (regOne!17245 Regex!8366) (regTwo!17245 Regex!8366)) )
))
(declare-datatypes ((String!36488 0))(
  ( (String!36489 (value!160136 String)) )
))
(declare-datatypes ((Rule!9752 0))(
  ( (Rule!9753 (regex!4976 Regex!8366) (tag!5480 String!36488) (isSeparator!4976 Bool) (transformation!4976 TokenValueInjection!9840)) )
))
(declare-datatypes ((List!33320 0))(
  ( (Nil!33196) (Cons!33196 (h!38616 Rule!9752) (t!230985 List!33320)) )
))
(declare-fun rules!4424 () List!33320)

(assert (= (and b!2826147 (is-Cons!33196 rules!4424)) b!2826170))

(declare-fun lambda!103830 () Int)

(declare-fun order!17709 () Int)

(declare-fun order!17711 () Int)

(declare-fun dynLambda!13945 (Int Int) Int)

(declare-fun dynLambda!13946 (Int Int) Int)

(assert (=> b!2826172 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103830))))

(declare-fun order!17713 () Int)

(declare-fun dynLambda!13947 (Int Int) Int)

(assert (=> b!2826172 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103830))))

(declare-fun e!1788608 () Bool)

(declare-fun e!1788602 () Bool)

(declare-datatypes ((Token!9354 0))(
  ( (Token!9355 (value!160137 TokenValue!5206) (rule!7404 Rule!9752) (size!25857 Int) (originalCharacters!5708 List!33319)) )
))
(declare-datatypes ((List!33321 0))(
  ( (Nil!33197) (Cons!33197 (h!38617 Token!9354) (t!230986 List!33321)) )
))
(declare-fun l!6581 () List!33321)

(declare-fun b!2826142 () Bool)

(declare-fun tp!902673 () Bool)

(declare-fun inv!45131 (Token!9354) Bool)

(assert (=> b!2826142 (= e!1788608 (and (inv!45131 (h!38617 l!6581)) e!1788602 tp!902673))))

(declare-fun b!2826143 () Bool)

(declare-fun res!1176165 () Bool)

(declare-fun e!1788601 () Bool)

(assert (=> b!2826143 (=> (not res!1176165) (not e!1788601))))

(declare-fun i!1730 () Int)

(assert (=> b!2826143 (= res!1176165 (and (not (is-Nil!33197 l!6581)) (> i!1730 0)))))

(declare-fun b!2826144 () Bool)

(declare-fun e!1788605 () Bool)

(declare-fun e!1788607 () Bool)

(assert (=> b!2826144 (= e!1788605 e!1788607)))

(declare-fun res!1176160 () Bool)

(assert (=> b!2826144 (=> (not res!1176160) (not e!1788607))))

(declare-datatypes ((LexerInterface!4567 0))(
  ( (LexerInterfaceExt!4564 (__x!22086 Int)) (Lexer!4565) )
))
(declare-fun thiss!27755 () LexerInterface!4567)

(declare-fun lt!1008324 () List!33321)

(declare-fun rulesProduceIndividualToken!2105 (LexerInterface!4567 List!33320 Token!9354) Bool)

(assert (=> b!2826144 (= res!1176160 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008324)))))

(declare-fun tp!902666 () Bool)

(declare-fun e!1788606 () Bool)

(declare-fun e!1788610 () Bool)

(declare-fun b!2826145 () Bool)

(declare-fun inv!45128 (String!36488) Bool)

(declare-fun inv!45132 (TokenValueInjection!9840) Bool)

(assert (=> b!2826145 (= e!1788606 (and tp!902666 (inv!45128 (tag!5480 (h!38616 rules!4424))) (inv!45132 (transformation!4976 (h!38616 rules!4424))) e!1788610))))

(declare-fun b!2826146 () Bool)

(declare-fun res!1176154 () Bool)

(assert (=> b!2826146 (=> (not res!1176154) (not e!1788601))))

(declare-fun rulesProduceEachTokenIndividuallyList!1619 (LexerInterface!4567 List!33320 List!33321) Bool)

(assert (=> b!2826146 (= res!1176154 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 l!6581)))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!704 (LexerInterface!4567 List!33321 List!33320) Bool)

(assert (=> b!2826147 (= e!1788601 (not (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 lt!1008324 rules!4424)))))

(declare-fun forall!6806 (List!33321 Int) Bool)

(assert (=> b!2826147 (forall!6806 lt!1008324 lambda!103830)))

(declare-datatypes ((Unit!47239 0))(
  ( (Unit!47240) )
))
(declare-fun lt!1008323 () Unit!47239)

(declare-fun lemmaForallSubseq!236 (List!33321 List!33321 Int) Unit!47239)

(assert (=> b!2826147 (= lt!1008323 (lemmaForallSubseq!236 lt!1008324 l!6581 lambda!103830))))

(assert (=> b!2826147 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 lt!1008324) e!1788605)))

(declare-fun res!1176162 () Bool)

(assert (=> b!2826147 (=> res!1176162 e!1788605)))

(assert (=> b!2826147 (= res!1176162 (not (is-Cons!33197 lt!1008324)))))

(declare-fun take!570 (List!33321 Int) List!33321)

(assert (=> b!2826147 (= lt!1008324 (take!570 l!6581 i!1730))))

(declare-fun e!1788609 () Bool)

(assert (=> b!2826147 e!1788609))

(declare-fun res!1176155 () Bool)

(assert (=> b!2826147 (=> (not res!1176155) (not e!1788609))))

(declare-fun lt!1008325 () List!33321)

(assert (=> b!2826147 (= res!1176155 (forall!6806 lt!1008325 lambda!103830))))

(declare-fun lt!1008326 () Unit!47239)

(assert (=> b!2826147 (= lt!1008326 (lemmaForallSubseq!236 lt!1008325 (t!230986 l!6581) lambda!103830))))

(declare-fun e!1788604 () Bool)

(assert (=> b!2826147 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 lt!1008325) e!1788604)))

(declare-fun res!1176159 () Bool)

(assert (=> b!2826147 (=> res!1176159 e!1788604)))

(assert (=> b!2826147 (= res!1176159 (not (is-Cons!33197 lt!1008325)))))

(assert (=> b!2826147 (= lt!1008325 (take!570 (t!230986 l!6581) (- i!1730 1)))))

(declare-fun lt!1008322 () Unit!47239)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!59 (LexerInterface!4567 List!33321 Int List!33320) Unit!47239)

(assert (=> b!2826147 (= lt!1008322 (tokensListTwoByTwoPredicateSeparableTokensTakeList!59 thiss!27755 (t!230986 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2826148 () Bool)

(declare-fun res!1176161 () Bool)

(assert (=> b!2826148 (=> (not res!1176161) (not e!1788601))))

(assert (=> b!2826148 (= res!1176161 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (t!230986 l!6581) rules!4424))))

(assert (=> b!2826149 (= e!1788610 (and tp!902671 tp!902667))))

(declare-fun tp!902665 () Bool)

(declare-fun e!1788598 () Bool)

(declare-fun b!2826150 () Bool)

(declare-fun inv!21 (TokenValue!5206) Bool)

(assert (=> b!2826150 (= e!1788602 (and (inv!21 (value!160137 (h!38617 l!6581))) e!1788598 tp!902665))))

(declare-fun b!2826151 () Bool)

(declare-fun e!1788597 () Bool)

(declare-fun tp!902669 () Bool)

(assert (=> b!2826151 (= e!1788597 (and e!1788606 tp!902669))))

(declare-fun b!2826152 () Bool)

(assert (=> b!2826152 (= e!1788607 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008324)))))

(declare-fun tp!902670 () Bool)

(declare-fun e!1788600 () Bool)

(declare-fun b!2826153 () Bool)

(assert (=> b!2826153 (= e!1788598 (and tp!902670 (inv!45128 (tag!5480 (rule!7404 (h!38617 l!6581)))) (inv!45132 (transformation!4976 (rule!7404 (h!38617 l!6581)))) e!1788600))))

(declare-fun b!2826154 () Bool)

(declare-fun res!1176157 () Bool)

(assert (=> b!2826154 (=> (not res!1176157) (not e!1788601))))

(declare-fun isEmpty!18361 (List!33320) Bool)

(assert (=> b!2826154 (= res!1176157 (not (isEmpty!18361 rules!4424)))))

(declare-fun b!2826155 () Bool)

(declare-fun e!1788603 () Bool)

(assert (=> b!2826155 (= e!1788604 e!1788603)))

(declare-fun res!1176158 () Bool)

(assert (=> b!2826155 (=> (not res!1176158) (not e!1788603))))

(assert (=> b!2826155 (= res!1176158 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008325)))))

(declare-fun b!2826156 () Bool)

(declare-fun res!1176156 () Bool)

(assert (=> b!2826156 (=> (not res!1176156) (not e!1788601))))

(declare-fun rulesInvariant!3985 (LexerInterface!4567 List!33320) Bool)

(assert (=> b!2826156 (= res!1176156 (rulesInvariant!3985 thiss!27755 rules!4424))))

(declare-fun b!2826157 () Bool)

(declare-fun res!1176164 () Bool)

(assert (=> b!2826157 (=> (not res!1176164) (not e!1788601))))

(assert (=> b!2826157 (= res!1176164 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2826158 () Bool)

(declare-fun res!1176163 () Bool)

(assert (=> b!2826158 (=> (not res!1176163) (not e!1788601))))

(assert (=> b!2826158 (= res!1176163 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2826159 () Bool)

(assert (=> b!2826159 (= e!1788609 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 lt!1008325 rules!4424))))

(declare-fun res!1176153 () Bool)

(assert (=> start!274328 (=> (not res!1176153) (not e!1788601))))

(assert (=> start!274328 (= res!1176153 (is-Lexer!4565 thiss!27755))))

(assert (=> start!274328 e!1788601))

(assert (=> start!274328 true))

(assert (=> start!274328 e!1788597))

(assert (=> start!274328 e!1788608))

(declare-fun b!2826160 () Bool)

(assert (=> b!2826160 (= e!1788603 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008325)))))

(assert (=> b!2826161 (= e!1788600 (and tp!902668 tp!902672))))

(assert (= (and start!274328 res!1176153) b!2826154))

(assert (= (and b!2826154 res!1176157) b!2826156))

(assert (= (and b!2826156 res!1176156) b!2826157))

(assert (= (and b!2826157 res!1176164) b!2826158))

(assert (= (and b!2826158 res!1176163) b!2826143))

(assert (= (and b!2826143 res!1176165) b!2826146))

(assert (= (and b!2826146 res!1176154) b!2826148))

(assert (= (and b!2826148 res!1176161) b!2826147))

(assert (= (and b!2826147 (not res!1176159)) b!2826155))

(assert (= (and b!2826155 res!1176158) b!2826160))

(assert (= (and b!2826147 res!1176155) b!2826159))

(assert (= (and b!2826147 (not res!1176162)) b!2826144))

(assert (= (and b!2826144 res!1176160) b!2826152))

(assert (= b!2826145 b!2826149))

(assert (= b!2826151 b!2826145))

(assert (= (and start!274328 (is-Cons!33196 rules!4424)) b!2826151))

(assert (= b!2826153 b!2826161))

(assert (= b!2826150 b!2826153))

(assert (= b!2826142 b!2826150))

(assert (= (and start!274328 (is-Cons!33197 l!6581)) b!2826142))

(declare-fun m!3256231 () Bool)

(assert (=> b!2826146 m!3256231))

(declare-fun m!3256233 () Bool)

(assert (=> b!2826145 m!3256233))

(declare-fun m!3256235 () Bool)

(assert (=> b!2826145 m!3256235))

(declare-fun m!3256237 () Bool)

(assert (=> b!2826144 m!3256237))

(declare-fun m!3256239 () Bool)

(assert (=> b!2826142 m!3256239))

(declare-fun m!3256241 () Bool)

(assert (=> b!2826158 m!3256241))

(declare-fun m!3256243 () Bool)

(assert (=> b!2826155 m!3256243))

(declare-fun m!3256245 () Bool)

(assert (=> b!2826152 m!3256245))

(declare-fun m!3256247 () Bool)

(assert (=> b!2826150 m!3256247))

(declare-fun m!3256249 () Bool)

(assert (=> b!2826160 m!3256249))

(declare-fun m!3256251 () Bool)

(assert (=> b!2826153 m!3256251))

(declare-fun m!3256253 () Bool)

(assert (=> b!2826153 m!3256253))

(declare-fun m!3256255 () Bool)

(assert (=> b!2826147 m!3256255))

(declare-fun m!3256257 () Bool)

(assert (=> b!2826147 m!3256257))

(declare-fun m!3256259 () Bool)

(assert (=> b!2826147 m!3256259))

(declare-fun m!3256261 () Bool)

(assert (=> b!2826147 m!3256261))

(declare-fun m!3256263 () Bool)

(assert (=> b!2826147 m!3256263))

(declare-fun m!3256265 () Bool)

(assert (=> b!2826147 m!3256265))

(declare-fun m!3256267 () Bool)

(assert (=> b!2826147 m!3256267))

(declare-fun m!3256269 () Bool)

(assert (=> b!2826147 m!3256269))

(declare-fun m!3256271 () Bool)

(assert (=> b!2826147 m!3256271))

(declare-fun m!3256273 () Bool)

(assert (=> b!2826147 m!3256273))

(declare-fun m!3256275 () Bool)

(assert (=> b!2826148 m!3256275))

(declare-fun m!3256277 () Bool)

(assert (=> b!2826157 m!3256277))

(declare-fun m!3256279 () Bool)

(assert (=> b!2826154 m!3256279))

(declare-fun m!3256281 () Bool)

(assert (=> b!2826159 m!3256281))

(declare-fun m!3256283 () Bool)

(assert (=> b!2826156 m!3256283))

(push 1)

(assert (not b!2826157))

(assert (not b!2826142))

(assert (not b!2826152))

(assert (not b_next!81725))

(assert (not b!2826156))

(assert (not b!2826155))

(assert (not b!2826147))

(assert (not b_next!81727))

(assert (not b_next!81731))

(assert (not b!2826154))

(assert (not b!2826145))

(assert b_and!206557)

(assert b_and!206553)

(assert (not b!2826148))

(assert (not b!2826144))

(assert (not b!2826170))

(assert (not b!2826158))

(assert (not b!2826159))

(assert (not b!2826153))

(assert (not b!2826151))

(assert b_and!206551)

(assert (not b_next!81729))

(assert (not b!2826146))

(assert (not b!2826160))

(assert (not b!2826150))

(assert b_and!206555)

(check-sat)

(pop 1)

(push 1)

(assert b_and!206557)

(assert b_and!206553)

(assert (not b_next!81725))

(assert b_and!206551)

(assert (not b_next!81727))

(assert (not b_next!81729))

(assert (not b_next!81731))

(assert b_and!206555)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!518014 () Bool)

(declare-fun d!820296 () Bool)

(assert (= bs!518014 (and d!820296 b!2826147)))

(declare-fun lambda!103838 () Int)

(assert (=> bs!518014 (= (= thiss!27755 Lexer!4565) (= lambda!103838 lambda!103830))))

(declare-fun b!2826255 () Bool)

(declare-fun e!1788688 () Bool)

(assert (=> b!2826255 (= e!1788688 true)))

(declare-fun b!2826254 () Bool)

(declare-fun e!1788687 () Bool)

(assert (=> b!2826254 (= e!1788687 e!1788688)))

(declare-fun b!2826253 () Bool)

(declare-fun e!1788686 () Bool)

(assert (=> b!2826253 (= e!1788686 e!1788687)))

(assert (=> d!820296 e!1788686))

(assert (= b!2826254 b!2826255))

(assert (= b!2826253 b!2826254))

(assert (= (and d!820296 (is-Cons!33196 rules!4424)) b!2826253))

(assert (=> b!2826255 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103838))))

(assert (=> b!2826255 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103838))))

(assert (=> d!820296 true))

(declare-fun lt!1008344 () Bool)

(assert (=> d!820296 (= lt!1008344 (forall!6806 (t!230986 lt!1008324) lambda!103838))))

(declare-fun e!1788684 () Bool)

(assert (=> d!820296 (= lt!1008344 e!1788684)))

(declare-fun res!1176221 () Bool)

(assert (=> d!820296 (=> res!1176221 e!1788684)))

(assert (=> d!820296 (= res!1176221 (not (is-Cons!33197 (t!230986 lt!1008324))))))

(assert (=> d!820296 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820296 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008324)) lt!1008344)))

(declare-fun b!2826251 () Bool)

(declare-fun e!1788685 () Bool)

(assert (=> b!2826251 (= e!1788684 e!1788685)))

(declare-fun res!1176222 () Bool)

(assert (=> b!2826251 (=> (not res!1176222) (not e!1788685))))

(assert (=> b!2826251 (= res!1176222 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008324))))))

(declare-fun b!2826252 () Bool)

(assert (=> b!2826252 (= e!1788685 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 (t!230986 lt!1008324))))))

(assert (= (and d!820296 (not res!1176221)) b!2826251))

(assert (= (and b!2826251 res!1176222) b!2826252))

(declare-fun m!3256343 () Bool)

(assert (=> d!820296 m!3256343))

(assert (=> d!820296 m!3256279))

(declare-fun m!3256345 () Bool)

(assert (=> b!2826251 m!3256345))

(declare-fun m!3256347 () Bool)

(assert (=> b!2826252 m!3256347))

(assert (=> b!2826152 d!820296))

(declare-fun d!820302 () Bool)

(declare-fun res!1176227 () Bool)

(declare-fun e!1788691 () Bool)

(assert (=> d!820302 (=> (not res!1176227) (not e!1788691))))

(declare-fun isEmpty!18363 (List!33319) Bool)

(assert (=> d!820302 (= res!1176227 (not (isEmpty!18363 (originalCharacters!5708 (h!38617 l!6581)))))))

(assert (=> d!820302 (= (inv!45131 (h!38617 l!6581)) e!1788691)))

(declare-fun b!2826262 () Bool)

(declare-fun res!1176228 () Bool)

(assert (=> b!2826262 (=> (not res!1176228) (not e!1788691))))

(declare-fun list!12441 (BalanceConc!20252) List!33319)

(declare-fun dynLambda!13951 (Int TokenValue!5206) BalanceConc!20252)

(assert (=> b!2826262 (= res!1176228 (= (originalCharacters!5708 (h!38617 l!6581)) (list!12441 (dynLambda!13951 (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (value!160137 (h!38617 l!6581))))))))

(declare-fun b!2826263 () Bool)

(declare-fun size!25859 (List!33319) Int)

(assert (=> b!2826263 (= e!1788691 (= (size!25857 (h!38617 l!6581)) (size!25859 (originalCharacters!5708 (h!38617 l!6581)))))))

(assert (= (and d!820302 res!1176227) b!2826262))

(assert (= (and b!2826262 res!1176228) b!2826263))

(declare-fun b_lambda!84731 () Bool)

(assert (=> (not b_lambda!84731) (not b!2826262)))

(declare-fun tb!154037 () Bool)

(declare-fun t!230998 () Bool)

(assert (=> (and b!2826149 (= (toChars!6857 (transformation!4976 (h!38616 rules!4424))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581))))) t!230998) tb!154037))

(declare-fun b!2826268 () Bool)

(declare-fun e!1788694 () Bool)

(declare-fun tp!902703 () Bool)

(declare-fun inv!45135 (Conc!10307) Bool)

(assert (=> b!2826268 (= e!1788694 (and (inv!45135 (c!457476 (dynLambda!13951 (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (value!160137 (h!38617 l!6581))))) tp!902703))))

(declare-fun result!191914 () Bool)

(declare-fun inv!45136 (BalanceConc!20252) Bool)

(assert (=> tb!154037 (= result!191914 (and (inv!45136 (dynLambda!13951 (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (value!160137 (h!38617 l!6581)))) e!1788694))))

(assert (= tb!154037 b!2826268))

(declare-fun m!3256349 () Bool)

(assert (=> b!2826268 m!3256349))

(declare-fun m!3256351 () Bool)

(assert (=> tb!154037 m!3256351))

(assert (=> b!2826262 t!230998))

(declare-fun b_and!206567 () Bool)

(assert (= b_and!206553 (and (=> t!230998 result!191914) b_and!206567)))

(declare-fun t!231000 () Bool)

(declare-fun tb!154039 () Bool)

(assert (=> (and b!2826161 (= (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581))))) t!231000) tb!154039))

(declare-fun result!191918 () Bool)

(assert (= result!191918 result!191914))

(assert (=> b!2826262 t!231000))

(declare-fun b_and!206569 () Bool)

(assert (= b_and!206557 (and (=> t!231000 result!191918) b_and!206569)))

(declare-fun m!3256353 () Bool)

(assert (=> d!820302 m!3256353))

(declare-fun m!3256355 () Bool)

(assert (=> b!2826262 m!3256355))

(assert (=> b!2826262 m!3256355))

(declare-fun m!3256357 () Bool)

(assert (=> b!2826262 m!3256357))

(declare-fun m!3256359 () Bool)

(assert (=> b!2826263 m!3256359))

(assert (=> b!2826142 d!820302))

(declare-fun d!820304 () Bool)

(assert (=> d!820304 (= (inv!45128 (tag!5480 (rule!7404 (h!38617 l!6581)))) (= (mod (str.len (value!160136 (tag!5480 (rule!7404 (h!38617 l!6581))))) 2) 0))))

(assert (=> b!2826153 d!820304))

(declare-fun d!820306 () Bool)

(declare-fun res!1176231 () Bool)

(declare-fun e!1788697 () Bool)

(assert (=> d!820306 (=> (not res!1176231) (not e!1788697))))

(declare-fun semiInverseModEq!2069 (Int Int) Bool)

(assert (=> d!820306 (= res!1176231 (semiInverseModEq!2069 (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (toValue!6998 (transformation!4976 (rule!7404 (h!38617 l!6581))))))))

(assert (=> d!820306 (= (inv!45132 (transformation!4976 (rule!7404 (h!38617 l!6581)))) e!1788697)))

(declare-fun b!2826271 () Bool)

(declare-fun equivClasses!1968 (Int Int) Bool)

(assert (=> b!2826271 (= e!1788697 (equivClasses!1968 (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))) (toValue!6998 (transformation!4976 (rule!7404 (h!38617 l!6581))))))))

(assert (= (and d!820306 res!1176231) b!2826271))

(declare-fun m!3256361 () Bool)

(assert (=> d!820306 m!3256361))

(declare-fun m!3256363 () Bool)

(assert (=> b!2826271 m!3256363))

(assert (=> b!2826153 d!820306))

(declare-fun d!820308 () Bool)

(assert (=> d!820308 (= (isEmpty!18361 rules!4424) (is-Nil!33196 rules!4424))))

(assert (=> b!2826154 d!820308))

(declare-fun d!820310 () Bool)

(declare-fun lt!1008350 () Bool)

(declare-fun e!1788702 () Bool)

(assert (=> d!820310 (= lt!1008350 e!1788702)))

(declare-fun res!1176240 () Bool)

(assert (=> d!820310 (=> (not res!1176240) (not e!1788702))))

(declare-datatypes ((IArray!20623 0))(
  ( (IArray!20624 (innerList!10369 List!33321)) )
))
(declare-datatypes ((Conc!10309 0))(
  ( (Node!10309 (left!25088 Conc!10309) (right!25418 Conc!10309) (csize!20848 Int) (cheight!10520 Int)) (Leaf!15689 (xs!13421 IArray!20623) (csize!20849 Int)) (Empty!10309) )
))
(declare-datatypes ((BalanceConc!20256 0))(
  ( (BalanceConc!20257 (c!457510 Conc!10309)) )
))
(declare-fun list!12442 (BalanceConc!20256) List!33321)

(declare-datatypes ((tuple2!33422 0))(
  ( (tuple2!33423 (_1!19804 BalanceConc!20256) (_2!19804 BalanceConc!20252)) )
))
(declare-fun lex!2007 (LexerInterface!4567 List!33320 BalanceConc!20252) tuple2!33422)

(declare-fun print!1726 (LexerInterface!4567 BalanceConc!20256) BalanceConc!20252)

(declare-fun singletonSeq!2152 (Token!9354) BalanceConc!20256)

(assert (=> d!820310 (= res!1176240 (= (list!12442 (_1!19804 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008324)))))) (list!12442 (singletonSeq!2152 (h!38617 lt!1008324)))))))

(declare-fun e!1788703 () Bool)

(assert (=> d!820310 (= lt!1008350 e!1788703)))

(declare-fun res!1176238 () Bool)

(assert (=> d!820310 (=> (not res!1176238) (not e!1788703))))

(declare-fun lt!1008349 () tuple2!33422)

(declare-fun size!25860 (BalanceConc!20256) Int)

(assert (=> d!820310 (= res!1176238 (= (size!25860 (_1!19804 lt!1008349)) 1))))

(assert (=> d!820310 (= lt!1008349 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008324)))))))

(assert (=> d!820310 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820310 (= (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008324)) lt!1008350)))

(declare-fun b!2826278 () Bool)

(declare-fun res!1176239 () Bool)

(assert (=> b!2826278 (=> (not res!1176239) (not e!1788703))))

(declare-fun apply!7751 (BalanceConc!20256 Int) Token!9354)

(assert (=> b!2826278 (= res!1176239 (= (apply!7751 (_1!19804 lt!1008349) 0) (h!38617 lt!1008324)))))

(declare-fun b!2826279 () Bool)

(declare-fun isEmpty!18364 (BalanceConc!20252) Bool)

(assert (=> b!2826279 (= e!1788703 (isEmpty!18364 (_2!19804 lt!1008349)))))

(declare-fun b!2826280 () Bool)

(assert (=> b!2826280 (= e!1788702 (isEmpty!18364 (_2!19804 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008324)))))))))

(assert (= (and d!820310 res!1176238) b!2826278))

(assert (= (and b!2826278 res!1176239) b!2826279))

(assert (= (and d!820310 res!1176240) b!2826280))

(declare-fun m!3256365 () Bool)

(assert (=> d!820310 m!3256365))

(declare-fun m!3256367 () Bool)

(assert (=> d!820310 m!3256367))

(assert (=> d!820310 m!3256365))

(assert (=> d!820310 m!3256279))

(assert (=> d!820310 m!3256367))

(declare-fun m!3256369 () Bool)

(assert (=> d!820310 m!3256369))

(declare-fun m!3256371 () Bool)

(assert (=> d!820310 m!3256371))

(declare-fun m!3256373 () Bool)

(assert (=> d!820310 m!3256373))

(assert (=> d!820310 m!3256365))

(declare-fun m!3256375 () Bool)

(assert (=> d!820310 m!3256375))

(declare-fun m!3256377 () Bool)

(assert (=> b!2826278 m!3256377))

(declare-fun m!3256379 () Bool)

(assert (=> b!2826279 m!3256379))

(assert (=> b!2826280 m!3256365))

(assert (=> b!2826280 m!3256365))

(assert (=> b!2826280 m!3256367))

(assert (=> b!2826280 m!3256367))

(assert (=> b!2826280 m!3256369))

(declare-fun m!3256381 () Bool)

(assert (=> b!2826280 m!3256381))

(assert (=> b!2826144 d!820310))

(declare-fun d!820312 () Bool)

(declare-fun lt!1008352 () Bool)

(declare-fun e!1788704 () Bool)

(assert (=> d!820312 (= lt!1008352 e!1788704)))

(declare-fun res!1176243 () Bool)

(assert (=> d!820312 (=> (not res!1176243) (not e!1788704))))

(assert (=> d!820312 (= res!1176243 (= (list!12442 (_1!19804 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008325)))))) (list!12442 (singletonSeq!2152 (h!38617 lt!1008325)))))))

(declare-fun e!1788705 () Bool)

(assert (=> d!820312 (= lt!1008352 e!1788705)))

(declare-fun res!1176241 () Bool)

(assert (=> d!820312 (=> (not res!1176241) (not e!1788705))))

(declare-fun lt!1008351 () tuple2!33422)

(assert (=> d!820312 (= res!1176241 (= (size!25860 (_1!19804 lt!1008351)) 1))))

(assert (=> d!820312 (= lt!1008351 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008325)))))))

(assert (=> d!820312 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820312 (= (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008325)) lt!1008352)))

(declare-fun b!2826281 () Bool)

(declare-fun res!1176242 () Bool)

(assert (=> b!2826281 (=> (not res!1176242) (not e!1788705))))

(assert (=> b!2826281 (= res!1176242 (= (apply!7751 (_1!19804 lt!1008351) 0) (h!38617 lt!1008325)))))

(declare-fun b!2826282 () Bool)

(assert (=> b!2826282 (= e!1788705 (isEmpty!18364 (_2!19804 lt!1008351)))))

(declare-fun b!2826283 () Bool)

(assert (=> b!2826283 (= e!1788704 (isEmpty!18364 (_2!19804 (lex!2007 thiss!27755 rules!4424 (print!1726 thiss!27755 (singletonSeq!2152 (h!38617 lt!1008325)))))))))

(assert (= (and d!820312 res!1176241) b!2826281))

(assert (= (and b!2826281 res!1176242) b!2826282))

(assert (= (and d!820312 res!1176243) b!2826283))

(declare-fun m!3256383 () Bool)

(assert (=> d!820312 m!3256383))

(declare-fun m!3256385 () Bool)

(assert (=> d!820312 m!3256385))

(assert (=> d!820312 m!3256383))

(assert (=> d!820312 m!3256279))

(assert (=> d!820312 m!3256385))

(declare-fun m!3256387 () Bool)

(assert (=> d!820312 m!3256387))

(declare-fun m!3256389 () Bool)

(assert (=> d!820312 m!3256389))

(declare-fun m!3256391 () Bool)

(assert (=> d!820312 m!3256391))

(assert (=> d!820312 m!3256383))

(declare-fun m!3256393 () Bool)

(assert (=> d!820312 m!3256393))

(declare-fun m!3256395 () Bool)

(assert (=> b!2826281 m!3256395))

(declare-fun m!3256397 () Bool)

(assert (=> b!2826282 m!3256397))

(assert (=> b!2826283 m!3256383))

(assert (=> b!2826283 m!3256383))

(assert (=> b!2826283 m!3256385))

(assert (=> b!2826283 m!3256385))

(assert (=> b!2826283 m!3256387))

(declare-fun m!3256399 () Bool)

(assert (=> b!2826283 m!3256399))

(assert (=> b!2826155 d!820312))

(declare-fun d!820314 () Bool)

(assert (=> d!820314 (= (inv!45128 (tag!5480 (h!38616 rules!4424))) (= (mod (str.len (value!160136 (tag!5480 (h!38616 rules!4424)))) 2) 0))))

(assert (=> b!2826145 d!820314))

(declare-fun d!820316 () Bool)

(declare-fun res!1176244 () Bool)

(declare-fun e!1788706 () Bool)

(assert (=> d!820316 (=> (not res!1176244) (not e!1788706))))

(assert (=> d!820316 (= res!1176244 (semiInverseModEq!2069 (toChars!6857 (transformation!4976 (h!38616 rules!4424))) (toValue!6998 (transformation!4976 (h!38616 rules!4424)))))))

(assert (=> d!820316 (= (inv!45132 (transformation!4976 (h!38616 rules!4424))) e!1788706)))

(declare-fun b!2826284 () Bool)

(assert (=> b!2826284 (= e!1788706 (equivClasses!1968 (toChars!6857 (transformation!4976 (h!38616 rules!4424))) (toValue!6998 (transformation!4976 (h!38616 rules!4424)))))))

(assert (= (and d!820316 res!1176244) b!2826284))

(declare-fun m!3256401 () Bool)

(assert (=> d!820316 m!3256401))

(declare-fun m!3256403 () Bool)

(assert (=> b!2826284 m!3256403))

(assert (=> b!2826145 d!820316))

(declare-fun d!820318 () Bool)

(declare-fun res!1176247 () Bool)

(declare-fun e!1788709 () Bool)

(assert (=> d!820318 (=> (not res!1176247) (not e!1788709))))

(declare-fun rulesValid!1839 (LexerInterface!4567 List!33320) Bool)

(assert (=> d!820318 (= res!1176247 (rulesValid!1839 thiss!27755 rules!4424))))

(assert (=> d!820318 (= (rulesInvariant!3985 thiss!27755 rules!4424) e!1788709)))

(declare-fun b!2826287 () Bool)

(declare-datatypes ((List!33326 0))(
  ( (Nil!33202) (Cons!33202 (h!38622 String!36488) (t!231011 List!33326)) )
))
(declare-fun noDuplicateTag!1835 (LexerInterface!4567 List!33320 List!33326) Bool)

(assert (=> b!2826287 (= e!1788709 (noDuplicateTag!1835 thiss!27755 rules!4424 Nil!33202))))

(assert (= (and d!820318 res!1176247) b!2826287))

(declare-fun m!3256405 () Bool)

(assert (=> d!820318 m!3256405))

(declare-fun m!3256407 () Bool)

(assert (=> b!2826287 m!3256407))

(assert (=> b!2826156 d!820318))

(declare-fun bs!518015 () Bool)

(declare-fun d!820320 () Bool)

(assert (= bs!518015 (and d!820320 b!2826147)))

(declare-fun lambda!103839 () Int)

(assert (=> bs!518015 (= (= thiss!27755 Lexer!4565) (= lambda!103839 lambda!103830))))

(declare-fun bs!518016 () Bool)

(assert (= bs!518016 (and d!820320 d!820296)))

(assert (=> bs!518016 (= lambda!103839 lambda!103838)))

(declare-fun b!2826292 () Bool)

(declare-fun e!1788714 () Bool)

(assert (=> b!2826292 (= e!1788714 true)))

(declare-fun b!2826291 () Bool)

(declare-fun e!1788713 () Bool)

(assert (=> b!2826291 (= e!1788713 e!1788714)))

(declare-fun b!2826290 () Bool)

(declare-fun e!1788712 () Bool)

(assert (=> b!2826290 (= e!1788712 e!1788713)))

(assert (=> d!820320 e!1788712))

(assert (= b!2826291 b!2826292))

(assert (= b!2826290 b!2826291))

(assert (= (and d!820320 (is-Cons!33196 rules!4424)) b!2826290))

(assert (=> b!2826292 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103839))))

(assert (=> b!2826292 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103839))))

(assert (=> d!820320 true))

(declare-fun lt!1008353 () Bool)

(assert (=> d!820320 (= lt!1008353 (forall!6806 (t!230986 l!6581) lambda!103839))))

(declare-fun e!1788710 () Bool)

(assert (=> d!820320 (= lt!1008353 e!1788710)))

(declare-fun res!1176248 () Bool)

(assert (=> d!820320 (=> res!1176248 e!1788710)))

(assert (=> d!820320 (= res!1176248 (not (is-Cons!33197 (t!230986 l!6581))))))

(assert (=> d!820320 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820320 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 l!6581)) lt!1008353)))

(declare-fun b!2826288 () Bool)

(declare-fun e!1788711 () Bool)

(assert (=> b!2826288 (= e!1788710 e!1788711)))

(declare-fun res!1176249 () Bool)

(assert (=> b!2826288 (=> (not res!1176249) (not e!1788711))))

(assert (=> b!2826288 (= res!1176249 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 l!6581))))))

(declare-fun b!2826289 () Bool)

(assert (=> b!2826289 (= e!1788711 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 (t!230986 l!6581))))))

(assert (= (and d!820320 (not res!1176248)) b!2826288))

(assert (= (and b!2826288 res!1176249) b!2826289))

(declare-fun m!3256409 () Bool)

(assert (=> d!820320 m!3256409))

(assert (=> d!820320 m!3256279))

(declare-fun m!3256411 () Bool)

(assert (=> b!2826288 m!3256411))

(declare-fun m!3256413 () Bool)

(assert (=> b!2826289 m!3256413))

(assert (=> b!2826146 d!820320))

(declare-fun bs!518017 () Bool)

(declare-fun d!820322 () Bool)

(assert (= bs!518017 (and d!820322 b!2826147)))

(declare-fun lambda!103840 () Int)

(assert (=> bs!518017 (= (= thiss!27755 Lexer!4565) (= lambda!103840 lambda!103830))))

(declare-fun bs!518018 () Bool)

(assert (= bs!518018 (and d!820322 d!820296)))

(assert (=> bs!518018 (= lambda!103840 lambda!103838)))

(declare-fun bs!518019 () Bool)

(assert (= bs!518019 (and d!820322 d!820320)))

(assert (=> bs!518019 (= lambda!103840 lambda!103839)))

(declare-fun b!2826297 () Bool)

(declare-fun e!1788719 () Bool)

(assert (=> b!2826297 (= e!1788719 true)))

(declare-fun b!2826296 () Bool)

(declare-fun e!1788718 () Bool)

(assert (=> b!2826296 (= e!1788718 e!1788719)))

(declare-fun b!2826295 () Bool)

(declare-fun e!1788717 () Bool)

(assert (=> b!2826295 (= e!1788717 e!1788718)))

(assert (=> d!820322 e!1788717))

(assert (= b!2826296 b!2826297))

(assert (= b!2826295 b!2826296))

(assert (= (and d!820322 (is-Cons!33196 rules!4424)) b!2826295))

(assert (=> b!2826297 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103840))))

(assert (=> b!2826297 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103840))))

(assert (=> d!820322 true))

(declare-fun lt!1008354 () Bool)

(assert (=> d!820322 (= lt!1008354 (forall!6806 l!6581 lambda!103840))))

(declare-fun e!1788715 () Bool)

(assert (=> d!820322 (= lt!1008354 e!1788715)))

(declare-fun res!1176250 () Bool)

(assert (=> d!820322 (=> res!1176250 e!1788715)))

(assert (=> d!820322 (= res!1176250 (not (is-Cons!33197 l!6581)))))

(assert (=> d!820322 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820322 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 l!6581) lt!1008354)))

(declare-fun b!2826293 () Bool)

(declare-fun e!1788716 () Bool)

(assert (=> b!2826293 (= e!1788715 e!1788716)))

(declare-fun res!1176251 () Bool)

(assert (=> b!2826293 (=> (not res!1176251) (not e!1788716))))

(assert (=> b!2826293 (= res!1176251 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 l!6581)))))

(declare-fun b!2826294 () Bool)

(assert (=> b!2826294 (= e!1788716 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 l!6581)))))

(assert (= (and d!820322 (not res!1176250)) b!2826293))

(assert (= (and b!2826293 res!1176251) b!2826294))

(declare-fun m!3256415 () Bool)

(assert (=> d!820322 m!3256415))

(assert (=> d!820322 m!3256279))

(declare-fun m!3256417 () Bool)

(assert (=> b!2826293 m!3256417))

(assert (=> b!2826294 m!3256231))

(assert (=> b!2826157 d!820322))

(declare-fun d!820324 () Bool)

(declare-fun res!1176260 () Bool)

(declare-fun e!1788728 () Bool)

(assert (=> d!820324 (=> res!1176260 e!1788728)))

(assert (=> d!820324 (= res!1176260 (is-Nil!33197 lt!1008325))))

(assert (=> d!820324 (= (forall!6806 lt!1008325 lambda!103830) e!1788728)))

(declare-fun b!2826306 () Bool)

(declare-fun e!1788729 () Bool)

(assert (=> b!2826306 (= e!1788728 e!1788729)))

(declare-fun res!1176261 () Bool)

(assert (=> b!2826306 (=> (not res!1176261) (not e!1788729))))

(declare-fun dynLambda!13952 (Int Token!9354) Bool)

(assert (=> b!2826306 (= res!1176261 (dynLambda!13952 lambda!103830 (h!38617 lt!1008325)))))

(declare-fun b!2826307 () Bool)

(assert (=> b!2826307 (= e!1788729 (forall!6806 (t!230986 lt!1008325) lambda!103830))))

(assert (= (and d!820324 (not res!1176260)) b!2826306))

(assert (= (and b!2826306 res!1176261) b!2826307))

(declare-fun b_lambda!84733 () Bool)

(assert (=> (not b_lambda!84733) (not b!2826306)))

(declare-fun m!3256419 () Bool)

(assert (=> b!2826306 m!3256419))

(declare-fun m!3256421 () Bool)

(assert (=> b!2826307 m!3256421))

(assert (=> b!2826147 d!820324))

(declare-fun bs!518020 () Bool)

(declare-fun d!820326 () Bool)

(assert (= bs!518020 (and d!820326 b!2826147)))

(declare-fun lambda!103841 () Int)

(assert (=> bs!518020 (= (= thiss!27755 Lexer!4565) (= lambda!103841 lambda!103830))))

(declare-fun bs!518021 () Bool)

(assert (= bs!518021 (and d!820326 d!820296)))

(assert (=> bs!518021 (= lambda!103841 lambda!103838)))

(declare-fun bs!518022 () Bool)

(assert (= bs!518022 (and d!820326 d!820320)))

(assert (=> bs!518022 (= lambda!103841 lambda!103839)))

(declare-fun bs!518023 () Bool)

(assert (= bs!518023 (and d!820326 d!820322)))

(assert (=> bs!518023 (= lambda!103841 lambda!103840)))

(declare-fun b!2826312 () Bool)

(declare-fun e!1788734 () Bool)

(assert (=> b!2826312 (= e!1788734 true)))

(declare-fun b!2826311 () Bool)

(declare-fun e!1788733 () Bool)

(assert (=> b!2826311 (= e!1788733 e!1788734)))

(declare-fun b!2826310 () Bool)

(declare-fun e!1788732 () Bool)

(assert (=> b!2826310 (= e!1788732 e!1788733)))

(assert (=> d!820326 e!1788732))

(assert (= b!2826311 b!2826312))

(assert (= b!2826310 b!2826311))

(assert (= (and d!820326 (is-Cons!33196 rules!4424)) b!2826310))

(assert (=> b!2826312 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103841))))

(assert (=> b!2826312 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103841))))

(assert (=> d!820326 true))

(declare-fun lt!1008369 () Bool)

(assert (=> d!820326 (= lt!1008369 (forall!6806 lt!1008324 lambda!103841))))

(declare-fun e!1788730 () Bool)

(assert (=> d!820326 (= lt!1008369 e!1788730)))

(declare-fun res!1176262 () Bool)

(assert (=> d!820326 (=> res!1176262 e!1788730)))

(assert (=> d!820326 (= res!1176262 (not (is-Cons!33197 lt!1008324)))))

(assert (=> d!820326 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820326 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 lt!1008324) lt!1008369)))

(declare-fun b!2826308 () Bool)

(declare-fun e!1788731 () Bool)

(assert (=> b!2826308 (= e!1788730 e!1788731)))

(declare-fun res!1176263 () Bool)

(assert (=> b!2826308 (=> (not res!1176263) (not e!1788731))))

(assert (=> b!2826308 (= res!1176263 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008324)))))

(declare-fun b!2826309 () Bool)

(assert (=> b!2826309 (= e!1788731 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008324)))))

(assert (= (and d!820326 (not res!1176262)) b!2826308))

(assert (= (and b!2826308 res!1176263) b!2826309))

(declare-fun m!3256423 () Bool)

(assert (=> d!820326 m!3256423))

(assert (=> d!820326 m!3256279))

(assert (=> b!2826308 m!3256237))

(assert (=> b!2826309 m!3256245))

(assert (=> b!2826147 d!820326))

(declare-fun d!820328 () Bool)

(assert (=> d!820328 (forall!6806 lt!1008324 lambda!103830)))

(declare-fun lt!1008379 () Unit!47239)

(declare-fun choose!16698 (List!33321 List!33321 Int) Unit!47239)

(assert (=> d!820328 (= lt!1008379 (choose!16698 lt!1008324 l!6581 lambda!103830))))

(assert (=> d!820328 (forall!6806 l!6581 lambda!103830)))

(assert (=> d!820328 (= (lemmaForallSubseq!236 lt!1008324 l!6581 lambda!103830) lt!1008379)))

(declare-fun bs!518024 () Bool)

(assert (= bs!518024 d!820328))

(assert (=> bs!518024 m!3256263))

(declare-fun m!3256439 () Bool)

(assert (=> bs!518024 m!3256439))

(declare-fun m!3256441 () Bool)

(assert (=> bs!518024 m!3256441))

(assert (=> b!2826147 d!820328))

(declare-fun d!820334 () Bool)

(assert (=> d!820334 (forall!6806 lt!1008325 lambda!103830)))

(declare-fun lt!1008380 () Unit!47239)

(assert (=> d!820334 (= lt!1008380 (choose!16698 lt!1008325 (t!230986 l!6581) lambda!103830))))

(assert (=> d!820334 (forall!6806 (t!230986 l!6581) lambda!103830)))

(assert (=> d!820334 (= (lemmaForallSubseq!236 lt!1008325 (t!230986 l!6581) lambda!103830) lt!1008380)))

(declare-fun bs!518025 () Bool)

(assert (= bs!518025 d!820334))

(assert (=> bs!518025 m!3256265))

(declare-fun m!3256443 () Bool)

(assert (=> bs!518025 m!3256443))

(declare-fun m!3256445 () Bool)

(assert (=> bs!518025 m!3256445))

(assert (=> b!2826147 d!820334))

(declare-fun d!820336 () Bool)

(declare-fun res!1176278 () Bool)

(declare-fun e!1788755 () Bool)

(assert (=> d!820336 (=> res!1176278 e!1788755)))

(assert (=> d!820336 (= res!1176278 (or (not (is-Cons!33197 lt!1008324)) (not (is-Cons!33197 (t!230986 lt!1008324)))))))

(assert (=> d!820336 (= (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 lt!1008324 rules!4424) e!1788755)))

(declare-fun b!2826335 () Bool)

(declare-fun e!1788756 () Bool)

(assert (=> b!2826335 (= e!1788755 e!1788756)))

(declare-fun res!1176279 () Bool)

(assert (=> b!2826335 (=> (not res!1176279) (not e!1788756))))

(declare-fun separableTokensPredicate!909 (LexerInterface!4567 Token!9354 Token!9354 List!33320) Bool)

(assert (=> b!2826335 (= res!1176279 (separableTokensPredicate!909 thiss!27755 (h!38617 lt!1008324) (h!38617 (t!230986 lt!1008324)) rules!4424))))

(declare-fun lt!1008399 () Unit!47239)

(declare-fun Unit!47244 () Unit!47239)

(assert (=> b!2826335 (= lt!1008399 Unit!47244)))

(declare-fun size!25861 (BalanceConc!20252) Int)

(declare-fun charsOf!3084 (Token!9354) BalanceConc!20252)

(assert (=> b!2826335 (> (size!25861 (charsOf!3084 (h!38617 (t!230986 lt!1008324)))) 0)))

(declare-fun lt!1008400 () Unit!47239)

(declare-fun Unit!47245 () Unit!47239)

(assert (=> b!2826335 (= lt!1008400 Unit!47245)))

(assert (=> b!2826335 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008324)))))

(declare-fun lt!1008405 () Unit!47239)

(declare-fun Unit!47246 () Unit!47239)

(assert (=> b!2826335 (= lt!1008405 Unit!47246)))

(assert (=> b!2826335 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008324))))

(declare-fun lt!1008403 () Unit!47239)

(declare-fun lt!1008402 () Unit!47239)

(assert (=> b!2826335 (= lt!1008403 lt!1008402)))

(assert (=> b!2826335 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008324)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 (LexerInterface!4567 List!33320 List!33321 Token!9354) Unit!47239)

(assert (=> b!2826335 (= lt!1008402 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 lt!1008324 (h!38617 (t!230986 lt!1008324))))))

(declare-fun lt!1008404 () Unit!47239)

(declare-fun lt!1008401 () Unit!47239)

(assert (=> b!2826335 (= lt!1008404 lt!1008401)))

(assert (=> b!2826335 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008324))))

(assert (=> b!2826335 (= lt!1008401 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 lt!1008324 (h!38617 lt!1008324)))))

(declare-fun b!2826336 () Bool)

(assert (=> b!2826336 (= e!1788756 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (Cons!33197 (h!38617 (t!230986 lt!1008324)) (t!230986 (t!230986 lt!1008324))) rules!4424))))

(assert (= (and d!820336 (not res!1176278)) b!2826335))

(assert (= (and b!2826335 res!1176279) b!2826336))

(declare-fun m!3256457 () Bool)

(assert (=> b!2826335 m!3256457))

(assert (=> b!2826335 m!3256345))

(declare-fun m!3256459 () Bool)

(assert (=> b!2826335 m!3256459))

(declare-fun m!3256461 () Bool)

(assert (=> b!2826335 m!3256461))

(assert (=> b!2826335 m!3256237))

(declare-fun m!3256463 () Bool)

(assert (=> b!2826335 m!3256463))

(assert (=> b!2826335 m!3256461))

(declare-fun m!3256465 () Bool)

(assert (=> b!2826335 m!3256465))

(declare-fun m!3256467 () Bool)

(assert (=> b!2826336 m!3256467))

(assert (=> b!2826147 d!820336))

(declare-fun b!2826351 () Bool)

(declare-fun e!1788765 () Int)

(assert (=> b!2826351 (= e!1788765 0)))

(declare-fun b!2826352 () Bool)

(declare-fun e!1788768 () List!33321)

(assert (=> b!2826352 (= e!1788768 Nil!33197)))

(declare-fun b!2826353 () Bool)

(declare-fun e!1788766 () Int)

(assert (=> b!2826353 (= e!1788765 e!1788766)))

(declare-fun c!457486 () Bool)

(declare-fun size!25862 (List!33321) Int)

(assert (=> b!2826353 (= c!457486 (>= (- i!1730 1) (size!25862 (t!230986 l!6581))))))

(declare-fun b!2826354 () Bool)

(assert (=> b!2826354 (= e!1788766 (- i!1730 1))))

(declare-fun b!2826355 () Bool)

(assert (=> b!2826355 (= e!1788766 (size!25862 (t!230986 l!6581)))))

(declare-fun b!2826357 () Bool)

(declare-fun e!1788767 () Bool)

(declare-fun lt!1008408 () List!33321)

(assert (=> b!2826357 (= e!1788767 (= (size!25862 lt!1008408) e!1788765))))

(declare-fun c!457487 () Bool)

(assert (=> b!2826357 (= c!457487 (<= (- i!1730 1) 0))))

(declare-fun d!820342 () Bool)

(assert (=> d!820342 e!1788767))

(declare-fun res!1176282 () Bool)

(assert (=> d!820342 (=> (not res!1176282) (not e!1788767))))

(declare-fun content!4629 (List!33321) (Set Token!9354))

(assert (=> d!820342 (= res!1176282 (set.subset (content!4629 lt!1008408) (content!4629 (t!230986 l!6581))))))

(assert (=> d!820342 (= lt!1008408 e!1788768)))

(declare-fun c!457488 () Bool)

(assert (=> d!820342 (= c!457488 (or (is-Nil!33197 (t!230986 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!820342 (= (take!570 (t!230986 l!6581) (- i!1730 1)) lt!1008408)))

(declare-fun b!2826356 () Bool)

(assert (=> b!2826356 (= e!1788768 (Cons!33197 (h!38617 (t!230986 l!6581)) (take!570 (t!230986 (t!230986 l!6581)) (- (- i!1730 1) 1))))))

(assert (= (and d!820342 c!457488) b!2826352))

(assert (= (and d!820342 (not c!457488)) b!2826356))

(assert (= (and d!820342 res!1176282) b!2826357))

(assert (= (and b!2826357 c!457487) b!2826351))

(assert (= (and b!2826357 (not c!457487)) b!2826353))

(assert (= (and b!2826353 c!457486) b!2826355))

(assert (= (and b!2826353 (not c!457486)) b!2826354))

(declare-fun m!3256469 () Bool)

(assert (=> b!2826356 m!3256469))

(declare-fun m!3256471 () Bool)

(assert (=> d!820342 m!3256471))

(declare-fun m!3256473 () Bool)

(assert (=> d!820342 m!3256473))

(declare-fun m!3256475 () Bool)

(assert (=> b!2826357 m!3256475))

(declare-fun m!3256477 () Bool)

(assert (=> b!2826355 m!3256477))

(assert (=> b!2826353 m!3256477))

(assert (=> b!2826147 d!820342))

(declare-fun bs!518037 () Bool)

(declare-fun b!2826421 () Bool)

(assert (= bs!518037 (and b!2826421 d!820322)))

(declare-fun lambda!103850 () Int)

(assert (=> bs!518037 (= (= Lexer!4565 thiss!27755) (= lambda!103850 lambda!103840))))

(declare-fun bs!518038 () Bool)

(assert (= bs!518038 (and b!2826421 b!2826147)))

(assert (=> bs!518038 (= lambda!103850 lambda!103830)))

(declare-fun bs!518039 () Bool)

(assert (= bs!518039 (and b!2826421 d!820296)))

(assert (=> bs!518039 (= (= Lexer!4565 thiss!27755) (= lambda!103850 lambda!103838))))

(declare-fun bs!518040 () Bool)

(assert (= bs!518040 (and b!2826421 d!820326)))

(assert (=> bs!518040 (= (= Lexer!4565 thiss!27755) (= lambda!103850 lambda!103841))))

(declare-fun bs!518041 () Bool)

(assert (= bs!518041 (and b!2826421 d!820320)))

(assert (=> bs!518041 (= (= Lexer!4565 thiss!27755) (= lambda!103850 lambda!103839))))

(declare-fun b!2826425 () Bool)

(declare-fun e!1788821 () Bool)

(assert (=> b!2826425 (= e!1788821 true)))

(declare-fun b!2826424 () Bool)

(declare-fun e!1788820 () Bool)

(assert (=> b!2826424 (= e!1788820 e!1788821)))

(declare-fun b!2826423 () Bool)

(declare-fun e!1788819 () Bool)

(assert (=> b!2826423 (= e!1788819 e!1788820)))

(assert (=> b!2826421 e!1788819))

(assert (= b!2826424 b!2826425))

(assert (= b!2826423 b!2826424))

(assert (= (and b!2826421 (is-Cons!33196 rules!4424)) b!2826423))

(assert (=> b!2826425 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103850))))

(assert (=> b!2826425 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103850))))

(declare-fun b!2826420 () Bool)

(declare-fun e!1788816 () Bool)

(declare-fun lt!1008438 () List!33321)

(assert (=> b!2826420 (= e!1788816 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008438)))))

(declare-fun b!2826419 () Bool)

(declare-fun e!1788817 () Bool)

(assert (=> b!2826419 (= e!1788817 e!1788816)))

(declare-fun res!1176316 () Bool)

(assert (=> b!2826419 (=> (not res!1176316) (not e!1788816))))

(assert (=> b!2826419 (= res!1176316 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008438)))))

(declare-fun d!820344 () Bool)

(declare-fun e!1788815 () Bool)

(assert (=> d!820344 e!1788815))

(declare-fun res!1176317 () Bool)

(assert (=> d!820344 (=> (not res!1176317) (not e!1788815))))

(assert (=> d!820344 (= res!1176317 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (take!570 (t!230986 l!6581) (- i!1730 1))) e!1788817))))

(declare-fun res!1176314 () Bool)

(assert (=> d!820344 (=> res!1176314 e!1788817)))

(assert (=> d!820344 (= res!1176314 (not (is-Cons!33197 lt!1008438)))))

(assert (=> d!820344 (= lt!1008438 (take!570 (t!230986 l!6581) (- i!1730 1)))))

(declare-fun lt!1008436 () Unit!47239)

(declare-fun choose!16699 (LexerInterface!4567 List!33321 Int List!33320) Unit!47239)

(assert (=> d!820344 (= lt!1008436 (choose!16699 thiss!27755 (t!230986 l!6581) (- i!1730 1) rules!4424))))

(assert (=> d!820344 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820344 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!59 thiss!27755 (t!230986 l!6581) (- i!1730 1) rules!4424) lt!1008436)))

(assert (=> b!2826421 (= e!1788815 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (take!570 (t!230986 l!6581) (- i!1730 1)) rules!4424))))

(declare-fun lt!1008435 () Unit!47239)

(declare-fun lt!1008434 () Unit!47239)

(assert (=> b!2826421 (= lt!1008435 lt!1008434)))

(declare-fun lt!1008437 () List!33321)

(assert (=> b!2826421 (forall!6806 lt!1008437 lambda!103850)))

(assert (=> b!2826421 (= lt!1008434 (lemmaForallSubseq!236 lt!1008437 (t!230986 l!6581) lambda!103850))))

(declare-fun e!1788818 () Bool)

(assert (=> b!2826421 e!1788818))

(declare-fun res!1176315 () Bool)

(assert (=> b!2826421 (=> (not res!1176315) (not e!1788818))))

(assert (=> b!2826421 (= res!1176315 (forall!6806 (t!230986 l!6581) lambda!103850))))

(assert (=> b!2826421 (= lt!1008437 (take!570 (t!230986 l!6581) (- i!1730 1)))))

(declare-fun b!2826422 () Bool)

(declare-fun subseq!460 (List!33321 List!33321) Bool)

(assert (=> b!2826422 (= e!1788818 (subseq!460 lt!1008437 (t!230986 l!6581)))))

(assert (= (and d!820344 (not res!1176314)) b!2826419))

(assert (= (and b!2826419 res!1176316) b!2826420))

(assert (= (and d!820344 res!1176317) b!2826421))

(assert (= (and b!2826421 res!1176315) b!2826422))

(declare-fun m!3256527 () Bool)

(assert (=> b!2826421 m!3256527))

(declare-fun m!3256529 () Bool)

(assert (=> b!2826421 m!3256529))

(declare-fun m!3256531 () Bool)

(assert (=> b!2826421 m!3256531))

(assert (=> b!2826421 m!3256267))

(declare-fun m!3256533 () Bool)

(assert (=> b!2826421 m!3256533))

(assert (=> b!2826421 m!3256267))

(assert (=> d!820344 m!3256267))

(assert (=> d!820344 m!3256267))

(declare-fun m!3256535 () Bool)

(assert (=> d!820344 m!3256535))

(declare-fun m!3256537 () Bool)

(assert (=> d!820344 m!3256537))

(assert (=> d!820344 m!3256279))

(declare-fun m!3256539 () Bool)

(assert (=> b!2826420 m!3256539))

(declare-fun m!3256541 () Bool)

(assert (=> b!2826419 m!3256541))

(declare-fun m!3256543 () Bool)

(assert (=> b!2826422 m!3256543))

(assert (=> b!2826147 d!820344))

(declare-fun d!820360 () Bool)

(declare-fun res!1176318 () Bool)

(declare-fun e!1788822 () Bool)

(assert (=> d!820360 (=> res!1176318 e!1788822)))

(assert (=> d!820360 (= res!1176318 (is-Nil!33197 lt!1008324))))

(assert (=> d!820360 (= (forall!6806 lt!1008324 lambda!103830) e!1788822)))

(declare-fun b!2826426 () Bool)

(declare-fun e!1788823 () Bool)

(assert (=> b!2826426 (= e!1788822 e!1788823)))

(declare-fun res!1176319 () Bool)

(assert (=> b!2826426 (=> (not res!1176319) (not e!1788823))))

(assert (=> b!2826426 (= res!1176319 (dynLambda!13952 lambda!103830 (h!38617 lt!1008324)))))

(declare-fun b!2826427 () Bool)

(assert (=> b!2826427 (= e!1788823 (forall!6806 (t!230986 lt!1008324) lambda!103830))))

(assert (= (and d!820360 (not res!1176318)) b!2826426))

(assert (= (and b!2826426 res!1176319) b!2826427))

(declare-fun b_lambda!84737 () Bool)

(assert (=> (not b_lambda!84737) (not b!2826426)))

(declare-fun m!3256545 () Bool)

(assert (=> b!2826426 m!3256545))

(declare-fun m!3256547 () Bool)

(assert (=> b!2826427 m!3256547))

(assert (=> b!2826147 d!820360))

(declare-fun b!2826428 () Bool)

(declare-fun e!1788824 () Int)

(assert (=> b!2826428 (= e!1788824 0)))

(declare-fun b!2826429 () Bool)

(declare-fun e!1788827 () List!33321)

(assert (=> b!2826429 (= e!1788827 Nil!33197)))

(declare-fun b!2826430 () Bool)

(declare-fun e!1788825 () Int)

(assert (=> b!2826430 (= e!1788824 e!1788825)))

(declare-fun c!457501 () Bool)

(assert (=> b!2826430 (= c!457501 (>= i!1730 (size!25862 l!6581)))))

(declare-fun b!2826431 () Bool)

(assert (=> b!2826431 (= e!1788825 i!1730)))

(declare-fun b!2826432 () Bool)

(assert (=> b!2826432 (= e!1788825 (size!25862 l!6581))))

(declare-fun b!2826434 () Bool)

(declare-fun e!1788826 () Bool)

(declare-fun lt!1008439 () List!33321)

(assert (=> b!2826434 (= e!1788826 (= (size!25862 lt!1008439) e!1788824))))

(declare-fun c!457502 () Bool)

(assert (=> b!2826434 (= c!457502 (<= i!1730 0))))

(declare-fun d!820362 () Bool)

(assert (=> d!820362 e!1788826))

(declare-fun res!1176320 () Bool)

(assert (=> d!820362 (=> (not res!1176320) (not e!1788826))))

(assert (=> d!820362 (= res!1176320 (set.subset (content!4629 lt!1008439) (content!4629 l!6581)))))

(assert (=> d!820362 (= lt!1008439 e!1788827)))

(declare-fun c!457503 () Bool)

(assert (=> d!820362 (= c!457503 (or (is-Nil!33197 l!6581) (<= i!1730 0)))))

(assert (=> d!820362 (= (take!570 l!6581 i!1730) lt!1008439)))

(declare-fun b!2826433 () Bool)

(assert (=> b!2826433 (= e!1788827 (Cons!33197 (h!38617 l!6581) (take!570 (t!230986 l!6581) (- i!1730 1))))))

(assert (= (and d!820362 c!457503) b!2826429))

(assert (= (and d!820362 (not c!457503)) b!2826433))

(assert (= (and d!820362 res!1176320) b!2826434))

(assert (= (and b!2826434 c!457502) b!2826428))

(assert (= (and b!2826434 (not c!457502)) b!2826430))

(assert (= (and b!2826430 c!457501) b!2826432))

(assert (= (and b!2826430 (not c!457501)) b!2826431))

(assert (=> b!2826433 m!3256267))

(declare-fun m!3256549 () Bool)

(assert (=> d!820362 m!3256549))

(declare-fun m!3256551 () Bool)

(assert (=> d!820362 m!3256551))

(declare-fun m!3256553 () Bool)

(assert (=> b!2826434 m!3256553))

(declare-fun m!3256555 () Bool)

(assert (=> b!2826432 m!3256555))

(assert (=> b!2826430 m!3256555))

(assert (=> b!2826147 d!820362))

(declare-fun bs!518042 () Bool)

(declare-fun d!820364 () Bool)

(assert (= bs!518042 (and d!820364 d!820322)))

(declare-fun lambda!103851 () Int)

(assert (=> bs!518042 (= lambda!103851 lambda!103840)))

(declare-fun bs!518043 () Bool)

(assert (= bs!518043 (and d!820364 b!2826421)))

(assert (=> bs!518043 (= (= thiss!27755 Lexer!4565) (= lambda!103851 lambda!103850))))

(declare-fun bs!518044 () Bool)

(assert (= bs!518044 (and d!820364 b!2826147)))

(assert (=> bs!518044 (= (= thiss!27755 Lexer!4565) (= lambda!103851 lambda!103830))))

(declare-fun bs!518045 () Bool)

(assert (= bs!518045 (and d!820364 d!820296)))

(assert (=> bs!518045 (= lambda!103851 lambda!103838)))

(declare-fun bs!518046 () Bool)

(assert (= bs!518046 (and d!820364 d!820326)))

(assert (=> bs!518046 (= lambda!103851 lambda!103841)))

(declare-fun bs!518047 () Bool)

(assert (= bs!518047 (and d!820364 d!820320)))

(assert (=> bs!518047 (= lambda!103851 lambda!103839)))

(declare-fun b!2826439 () Bool)

(declare-fun e!1788832 () Bool)

(assert (=> b!2826439 (= e!1788832 true)))

(declare-fun b!2826438 () Bool)

(declare-fun e!1788831 () Bool)

(assert (=> b!2826438 (= e!1788831 e!1788832)))

(declare-fun b!2826437 () Bool)

(declare-fun e!1788830 () Bool)

(assert (=> b!2826437 (= e!1788830 e!1788831)))

(assert (=> d!820364 e!1788830))

(assert (= b!2826438 b!2826439))

(assert (= b!2826437 b!2826438))

(assert (= (and d!820364 (is-Cons!33196 rules!4424)) b!2826437))

(assert (=> b!2826439 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103851))))

(assert (=> b!2826439 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103851))))

(assert (=> d!820364 true))

(declare-fun lt!1008440 () Bool)

(assert (=> d!820364 (= lt!1008440 (forall!6806 lt!1008325 lambda!103851))))

(declare-fun e!1788828 () Bool)

(assert (=> d!820364 (= lt!1008440 e!1788828)))

(declare-fun res!1176321 () Bool)

(assert (=> d!820364 (=> res!1176321 e!1788828)))

(assert (=> d!820364 (= res!1176321 (not (is-Cons!33197 lt!1008325)))))

(assert (=> d!820364 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820364 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 lt!1008325) lt!1008440)))

(declare-fun b!2826435 () Bool)

(declare-fun e!1788829 () Bool)

(assert (=> b!2826435 (= e!1788828 e!1788829)))

(declare-fun res!1176322 () Bool)

(assert (=> b!2826435 (=> (not res!1176322) (not e!1788829))))

(assert (=> b!2826435 (= res!1176322 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008325)))))

(declare-fun b!2826436 () Bool)

(assert (=> b!2826436 (= e!1788829 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008325)))))

(assert (= (and d!820364 (not res!1176321)) b!2826435))

(assert (= (and b!2826435 res!1176322) b!2826436))

(declare-fun m!3256557 () Bool)

(assert (=> d!820364 m!3256557))

(assert (=> d!820364 m!3256279))

(assert (=> b!2826435 m!3256243))

(assert (=> b!2826436 m!3256249))

(assert (=> b!2826147 d!820364))

(declare-fun d!820366 () Bool)

(declare-fun res!1176323 () Bool)

(declare-fun e!1788833 () Bool)

(assert (=> d!820366 (=> res!1176323 e!1788833)))

(assert (=> d!820366 (= res!1176323 (or (not (is-Cons!33197 l!6581)) (not (is-Cons!33197 (t!230986 l!6581)))))))

(assert (=> d!820366 (= (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 l!6581 rules!4424) e!1788833)))

(declare-fun b!2826440 () Bool)

(declare-fun e!1788834 () Bool)

(assert (=> b!2826440 (= e!1788833 e!1788834)))

(declare-fun res!1176324 () Bool)

(assert (=> b!2826440 (=> (not res!1176324) (not e!1788834))))

(assert (=> b!2826440 (= res!1176324 (separableTokensPredicate!909 thiss!27755 (h!38617 l!6581) (h!38617 (t!230986 l!6581)) rules!4424))))

(declare-fun lt!1008441 () Unit!47239)

(declare-fun Unit!47250 () Unit!47239)

(assert (=> b!2826440 (= lt!1008441 Unit!47250)))

(assert (=> b!2826440 (> (size!25861 (charsOf!3084 (h!38617 (t!230986 l!6581)))) 0)))

(declare-fun lt!1008442 () Unit!47239)

(declare-fun Unit!47251 () Unit!47239)

(assert (=> b!2826440 (= lt!1008442 Unit!47251)))

(assert (=> b!2826440 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 l!6581)))))

(declare-fun lt!1008447 () Unit!47239)

(declare-fun Unit!47252 () Unit!47239)

(assert (=> b!2826440 (= lt!1008447 Unit!47252)))

(assert (=> b!2826440 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 l!6581))))

(declare-fun lt!1008445 () Unit!47239)

(declare-fun lt!1008444 () Unit!47239)

(assert (=> b!2826440 (= lt!1008445 lt!1008444)))

(assert (=> b!2826440 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 l!6581)))))

(assert (=> b!2826440 (= lt!1008444 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 l!6581 (h!38617 (t!230986 l!6581))))))

(declare-fun lt!1008446 () Unit!47239)

(declare-fun lt!1008443 () Unit!47239)

(assert (=> b!2826440 (= lt!1008446 lt!1008443)))

(assert (=> b!2826440 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 l!6581))))

(assert (=> b!2826440 (= lt!1008443 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 l!6581 (h!38617 l!6581)))))

(declare-fun b!2826441 () Bool)

(assert (=> b!2826441 (= e!1788834 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (Cons!33197 (h!38617 (t!230986 l!6581)) (t!230986 (t!230986 l!6581))) rules!4424))))

(assert (= (and d!820366 (not res!1176323)) b!2826440))

(assert (= (and b!2826440 res!1176324) b!2826441))

(declare-fun m!3256559 () Bool)

(assert (=> b!2826440 m!3256559))

(assert (=> b!2826440 m!3256411))

(declare-fun m!3256561 () Bool)

(assert (=> b!2826440 m!3256561))

(declare-fun m!3256563 () Bool)

(assert (=> b!2826440 m!3256563))

(assert (=> b!2826440 m!3256417))

(declare-fun m!3256565 () Bool)

(assert (=> b!2826440 m!3256565))

(assert (=> b!2826440 m!3256563))

(declare-fun m!3256567 () Bool)

(assert (=> b!2826440 m!3256567))

(declare-fun m!3256569 () Bool)

(assert (=> b!2826441 m!3256569))

(assert (=> b!2826158 d!820366))

(declare-fun d!820368 () Bool)

(declare-fun res!1176325 () Bool)

(declare-fun e!1788835 () Bool)

(assert (=> d!820368 (=> res!1176325 e!1788835)))

(assert (=> d!820368 (= res!1176325 (or (not (is-Cons!33197 (t!230986 l!6581))) (not (is-Cons!33197 (t!230986 (t!230986 l!6581))))))))

(assert (=> d!820368 (= (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (t!230986 l!6581) rules!4424) e!1788835)))

(declare-fun b!2826442 () Bool)

(declare-fun e!1788836 () Bool)

(assert (=> b!2826442 (= e!1788835 e!1788836)))

(declare-fun res!1176326 () Bool)

(assert (=> b!2826442 (=> (not res!1176326) (not e!1788836))))

(assert (=> b!2826442 (= res!1176326 (separableTokensPredicate!909 thiss!27755 (h!38617 (t!230986 l!6581)) (h!38617 (t!230986 (t!230986 l!6581))) rules!4424))))

(declare-fun lt!1008448 () Unit!47239)

(declare-fun Unit!47253 () Unit!47239)

(assert (=> b!2826442 (= lt!1008448 Unit!47253)))

(assert (=> b!2826442 (> (size!25861 (charsOf!3084 (h!38617 (t!230986 (t!230986 l!6581))))) 0)))

(declare-fun lt!1008449 () Unit!47239)

(declare-fun Unit!47254 () Unit!47239)

(assert (=> b!2826442 (= lt!1008449 Unit!47254)))

(assert (=> b!2826442 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 (t!230986 l!6581))))))

(declare-fun lt!1008454 () Unit!47239)

(declare-fun Unit!47255 () Unit!47239)

(assert (=> b!2826442 (= lt!1008454 Unit!47255)))

(assert (=> b!2826442 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 l!6581)))))

(declare-fun lt!1008452 () Unit!47239)

(declare-fun lt!1008451 () Unit!47239)

(assert (=> b!2826442 (= lt!1008452 lt!1008451)))

(assert (=> b!2826442 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 (t!230986 l!6581))))))

(assert (=> b!2826442 (= lt!1008451 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 (t!230986 l!6581) (h!38617 (t!230986 (t!230986 l!6581)))))))

(declare-fun lt!1008453 () Unit!47239)

(declare-fun lt!1008450 () Unit!47239)

(assert (=> b!2826442 (= lt!1008453 lt!1008450)))

(assert (=> b!2826442 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 l!6581)))))

(assert (=> b!2826442 (= lt!1008450 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 (t!230986 l!6581) (h!38617 (t!230986 l!6581))))))

(declare-fun b!2826443 () Bool)

(assert (=> b!2826443 (= e!1788836 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (Cons!33197 (h!38617 (t!230986 (t!230986 l!6581))) (t!230986 (t!230986 (t!230986 l!6581)))) rules!4424))))

(assert (= (and d!820368 (not res!1176325)) b!2826442))

(assert (= (and b!2826442 res!1176326) b!2826443))

(declare-fun m!3256571 () Bool)

(assert (=> b!2826442 m!3256571))

(declare-fun m!3256573 () Bool)

(assert (=> b!2826442 m!3256573))

(declare-fun m!3256575 () Bool)

(assert (=> b!2826442 m!3256575))

(declare-fun m!3256577 () Bool)

(assert (=> b!2826442 m!3256577))

(assert (=> b!2826442 m!3256411))

(declare-fun m!3256579 () Bool)

(assert (=> b!2826442 m!3256579))

(assert (=> b!2826442 m!3256577))

(declare-fun m!3256581 () Bool)

(assert (=> b!2826442 m!3256581))

(declare-fun m!3256583 () Bool)

(assert (=> b!2826443 m!3256583))

(assert (=> b!2826148 d!820368))

(declare-fun d!820370 () Bool)

(declare-fun res!1176327 () Bool)

(declare-fun e!1788837 () Bool)

(assert (=> d!820370 (=> res!1176327 e!1788837)))

(assert (=> d!820370 (= res!1176327 (or (not (is-Cons!33197 lt!1008325)) (not (is-Cons!33197 (t!230986 lt!1008325)))))))

(assert (=> d!820370 (= (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 lt!1008325 rules!4424) e!1788837)))

(declare-fun b!2826444 () Bool)

(declare-fun e!1788838 () Bool)

(assert (=> b!2826444 (= e!1788837 e!1788838)))

(declare-fun res!1176328 () Bool)

(assert (=> b!2826444 (=> (not res!1176328) (not e!1788838))))

(assert (=> b!2826444 (= res!1176328 (separableTokensPredicate!909 thiss!27755 (h!38617 lt!1008325) (h!38617 (t!230986 lt!1008325)) rules!4424))))

(declare-fun lt!1008455 () Unit!47239)

(declare-fun Unit!47256 () Unit!47239)

(assert (=> b!2826444 (= lt!1008455 Unit!47256)))

(assert (=> b!2826444 (> (size!25861 (charsOf!3084 (h!38617 (t!230986 lt!1008325)))) 0)))

(declare-fun lt!1008456 () Unit!47239)

(declare-fun Unit!47257 () Unit!47239)

(assert (=> b!2826444 (= lt!1008456 Unit!47257)))

(assert (=> b!2826444 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008325)))))

(declare-fun lt!1008461 () Unit!47239)

(declare-fun Unit!47258 () Unit!47239)

(assert (=> b!2826444 (= lt!1008461 Unit!47258)))

(assert (=> b!2826444 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008325))))

(declare-fun lt!1008459 () Unit!47239)

(declare-fun lt!1008458 () Unit!47239)

(assert (=> b!2826444 (= lt!1008459 lt!1008458)))

(assert (=> b!2826444 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008325)))))

(assert (=> b!2826444 (= lt!1008458 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 lt!1008325 (h!38617 (t!230986 lt!1008325))))))

(declare-fun lt!1008460 () Unit!47239)

(declare-fun lt!1008457 () Unit!47239)

(assert (=> b!2826444 (= lt!1008460 lt!1008457)))

(assert (=> b!2826444 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 lt!1008325))))

(assert (=> b!2826444 (= lt!1008457 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!723 thiss!27755 rules!4424 lt!1008325 (h!38617 lt!1008325)))))

(declare-fun b!2826445 () Bool)

(assert (=> b!2826445 (= e!1788838 (tokensListTwoByTwoPredicateSeparableList!704 thiss!27755 (Cons!33197 (h!38617 (t!230986 lt!1008325)) (t!230986 (t!230986 lt!1008325))) rules!4424))))

(assert (= (and d!820370 (not res!1176327)) b!2826444))

(assert (= (and b!2826444 res!1176328) b!2826445))

(declare-fun m!3256585 () Bool)

(assert (=> b!2826444 m!3256585))

(declare-fun m!3256587 () Bool)

(assert (=> b!2826444 m!3256587))

(declare-fun m!3256589 () Bool)

(assert (=> b!2826444 m!3256589))

(declare-fun m!3256591 () Bool)

(assert (=> b!2826444 m!3256591))

(assert (=> b!2826444 m!3256243))

(declare-fun m!3256593 () Bool)

(assert (=> b!2826444 m!3256593))

(assert (=> b!2826444 m!3256591))

(declare-fun m!3256595 () Bool)

(assert (=> b!2826444 m!3256595))

(declare-fun m!3256597 () Bool)

(assert (=> b!2826445 m!3256597))

(assert (=> b!2826159 d!820370))

(declare-fun bs!518048 () Bool)

(declare-fun d!820372 () Bool)

(assert (= bs!518048 (and d!820372 d!820322)))

(declare-fun lambda!103852 () Int)

(assert (=> bs!518048 (= lambda!103852 lambda!103840)))

(declare-fun bs!518049 () Bool)

(assert (= bs!518049 (and d!820372 b!2826421)))

(assert (=> bs!518049 (= (= thiss!27755 Lexer!4565) (= lambda!103852 lambda!103850))))

(declare-fun bs!518050 () Bool)

(assert (= bs!518050 (and d!820372 b!2826147)))

(assert (=> bs!518050 (= (= thiss!27755 Lexer!4565) (= lambda!103852 lambda!103830))))

(declare-fun bs!518051 () Bool)

(assert (= bs!518051 (and d!820372 d!820296)))

(assert (=> bs!518051 (= lambda!103852 lambda!103838)))

(declare-fun bs!518052 () Bool)

(assert (= bs!518052 (and d!820372 d!820326)))

(assert (=> bs!518052 (= lambda!103852 lambda!103841)))

(declare-fun bs!518053 () Bool)

(assert (= bs!518053 (and d!820372 d!820364)))

(assert (=> bs!518053 (= lambda!103852 lambda!103851)))

(declare-fun bs!518054 () Bool)

(assert (= bs!518054 (and d!820372 d!820320)))

(assert (=> bs!518054 (= lambda!103852 lambda!103839)))

(declare-fun b!2826450 () Bool)

(declare-fun e!1788843 () Bool)

(assert (=> b!2826450 (= e!1788843 true)))

(declare-fun b!2826449 () Bool)

(declare-fun e!1788842 () Bool)

(assert (=> b!2826449 (= e!1788842 e!1788843)))

(declare-fun b!2826448 () Bool)

(declare-fun e!1788841 () Bool)

(assert (=> b!2826448 (= e!1788841 e!1788842)))

(assert (=> d!820372 e!1788841))

(assert (= b!2826449 b!2826450))

(assert (= b!2826448 b!2826449))

(assert (= (and d!820372 (is-Cons!33196 rules!4424)) b!2826448))

(assert (=> b!2826450 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103852))))

(assert (=> b!2826450 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 rules!4424)))) (dynLambda!13946 order!17711 lambda!103852))))

(assert (=> d!820372 true))

(declare-fun lt!1008462 () Bool)

(assert (=> d!820372 (= lt!1008462 (forall!6806 (t!230986 lt!1008325) lambda!103852))))

(declare-fun e!1788839 () Bool)

(assert (=> d!820372 (= lt!1008462 e!1788839)))

(declare-fun res!1176329 () Bool)

(assert (=> d!820372 (=> res!1176329 e!1788839)))

(assert (=> d!820372 (= res!1176329 (not (is-Cons!33197 (t!230986 lt!1008325))))))

(assert (=> d!820372 (not (isEmpty!18361 rules!4424))))

(assert (=> d!820372 (= (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 lt!1008325)) lt!1008462)))

(declare-fun b!2826446 () Bool)

(declare-fun e!1788840 () Bool)

(assert (=> b!2826446 (= e!1788839 e!1788840)))

(declare-fun res!1176330 () Bool)

(assert (=> b!2826446 (=> (not res!1176330) (not e!1788840))))

(assert (=> b!2826446 (= res!1176330 (rulesProduceIndividualToken!2105 thiss!27755 rules!4424 (h!38617 (t!230986 lt!1008325))))))

(declare-fun b!2826447 () Bool)

(assert (=> b!2826447 (= e!1788840 (rulesProduceEachTokenIndividuallyList!1619 thiss!27755 rules!4424 (t!230986 (t!230986 lt!1008325))))))

(assert (= (and d!820372 (not res!1176329)) b!2826446))

(assert (= (and b!2826446 res!1176330) b!2826447))

(declare-fun m!3256599 () Bool)

(assert (=> d!820372 m!3256599))

(assert (=> d!820372 m!3256279))

(assert (=> b!2826446 m!3256587))

(declare-fun m!3256601 () Bool)

(assert (=> b!2826447 m!3256601))

(assert (=> b!2826160 d!820372))

(declare-fun b!2826461 () Bool)

(declare-fun res!1176333 () Bool)

(declare-fun e!1788852 () Bool)

(assert (=> b!2826461 (=> res!1176333 e!1788852)))

(assert (=> b!2826461 (= res!1176333 (not (is-IntegerValue!15620 (value!160137 (h!38617 l!6581)))))))

(declare-fun e!1788851 () Bool)

(assert (=> b!2826461 (= e!1788851 e!1788852)))

(declare-fun d!820374 () Bool)

(declare-fun c!457508 () Bool)

(assert (=> d!820374 (= c!457508 (is-IntegerValue!15618 (value!160137 (h!38617 l!6581))))))

(declare-fun e!1788850 () Bool)

(assert (=> d!820374 (= (inv!21 (value!160137 (h!38617 l!6581))) e!1788850)))

(declare-fun b!2826462 () Bool)

(assert (=> b!2826462 (= e!1788850 e!1788851)))

(declare-fun c!457509 () Bool)

(assert (=> b!2826462 (= c!457509 (is-IntegerValue!15619 (value!160137 (h!38617 l!6581))))))

(declare-fun b!2826463 () Bool)

(declare-fun inv!16 (TokenValue!5206) Bool)

(assert (=> b!2826463 (= e!1788850 (inv!16 (value!160137 (h!38617 l!6581))))))

(declare-fun b!2826464 () Bool)

(declare-fun inv!15 (TokenValue!5206) Bool)

(assert (=> b!2826464 (= e!1788852 (inv!15 (value!160137 (h!38617 l!6581))))))

(declare-fun b!2826465 () Bool)

(declare-fun inv!17 (TokenValue!5206) Bool)

(assert (=> b!2826465 (= e!1788851 (inv!17 (value!160137 (h!38617 l!6581))))))

(assert (= (and d!820374 c!457508) b!2826463))

(assert (= (and d!820374 (not c!457508)) b!2826462))

(assert (= (and b!2826462 c!457509) b!2826465))

(assert (= (and b!2826462 (not c!457509)) b!2826461))

(assert (= (and b!2826461 (not res!1176333)) b!2826464))

(declare-fun m!3256603 () Bool)

(assert (=> b!2826463 m!3256603))

(declare-fun m!3256605 () Bool)

(assert (=> b!2826464 m!3256605))

(declare-fun m!3256607 () Bool)

(assert (=> b!2826465 m!3256607))

(assert (=> b!2826150 d!820374))

(declare-fun b!2826479 () Bool)

(declare-fun b_free!81037 () Bool)

(declare-fun b_next!81741 () Bool)

(assert (=> b!2826479 (= b_free!81037 (not b_next!81741))))

(declare-fun tp!902718 () Bool)

(declare-fun b_and!206571 () Bool)

(assert (=> b!2826479 (= tp!902718 b_and!206571)))

(declare-fun b_free!81039 () Bool)

(declare-fun b_next!81743 () Bool)

(assert (=> b!2826479 (= b_free!81039 (not b_next!81743))))

(declare-fun t!231008 () Bool)

(declare-fun tb!154041 () Bool)

(assert (=> (and b!2826479 (= (toChars!6857 (transformation!4976 (rule!7404 (h!38617 (t!230986 l!6581))))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581))))) t!231008) tb!154041))

(declare-fun result!191922 () Bool)

(assert (= result!191922 result!191914))

(assert (=> b!2826262 t!231008))

(declare-fun tp!902714 () Bool)

(declare-fun b_and!206573 () Bool)

(assert (=> b!2826479 (= tp!902714 (and (=> t!231008 result!191922) b_and!206573))))

(declare-fun e!1788865 () Bool)

(declare-fun tp!902717 () Bool)

(declare-fun b!2826477 () Bool)

(declare-fun e!1788870 () Bool)

(assert (=> b!2826477 (= e!1788865 (and (inv!21 (value!160137 (h!38617 (t!230986 l!6581)))) e!1788870 tp!902717))))

(declare-fun b!2826476 () Bool)

(declare-fun tp!902716 () Bool)

(declare-fun e!1788867 () Bool)

(assert (=> b!2826476 (= e!1788867 (and (inv!45131 (h!38617 (t!230986 l!6581))) e!1788865 tp!902716))))

(declare-fun tp!902715 () Bool)

(declare-fun b!2826478 () Bool)

(declare-fun e!1788868 () Bool)

(assert (=> b!2826478 (= e!1788870 (and tp!902715 (inv!45128 (tag!5480 (rule!7404 (h!38617 (t!230986 l!6581))))) (inv!45132 (transformation!4976 (rule!7404 (h!38617 (t!230986 l!6581))))) e!1788868))))

(assert (=> b!2826479 (= e!1788868 (and tp!902718 tp!902714))))

(assert (=> b!2826142 (= tp!902673 e!1788867)))

(assert (= b!2826478 b!2826479))

(assert (= b!2826477 b!2826478))

(assert (= b!2826476 b!2826477))

(assert (= (and b!2826142 (is-Cons!33197 (t!230986 l!6581))) b!2826476))

(declare-fun m!3256609 () Bool)

(assert (=> b!2826477 m!3256609))

(declare-fun m!3256611 () Bool)

(assert (=> b!2826476 m!3256611))

(declare-fun m!3256613 () Bool)

(assert (=> b!2826478 m!3256613))

(declare-fun m!3256615 () Bool)

(assert (=> b!2826478 m!3256615))

(declare-fun b!2826492 () Bool)

(declare-fun e!1788873 () Bool)

(declare-fun tp!902733 () Bool)

(assert (=> b!2826492 (= e!1788873 tp!902733)))

(declare-fun b!2826493 () Bool)

(declare-fun tp!902730 () Bool)

(declare-fun tp!902732 () Bool)

(assert (=> b!2826493 (= e!1788873 (and tp!902730 tp!902732))))

(declare-fun b!2826491 () Bool)

(declare-fun tp!902729 () Bool)

(declare-fun tp!902731 () Bool)

(assert (=> b!2826491 (= e!1788873 (and tp!902729 tp!902731))))

(declare-fun b!2826490 () Bool)

(declare-fun tp_is_empty!14485 () Bool)

(assert (=> b!2826490 (= e!1788873 tp_is_empty!14485)))

(assert (=> b!2826153 (= tp!902670 e!1788873)))

(assert (= (and b!2826153 (is-ElementMatch!8366 (regex!4976 (rule!7404 (h!38617 l!6581))))) b!2826490))

(assert (= (and b!2826153 (is-Concat!13573 (regex!4976 (rule!7404 (h!38617 l!6581))))) b!2826491))

(assert (= (and b!2826153 (is-Star!8366 (regex!4976 (rule!7404 (h!38617 l!6581))))) b!2826492))

(assert (= (and b!2826153 (is-Union!8366 (regex!4976 (rule!7404 (h!38617 l!6581))))) b!2826493))

(declare-fun b!2826496 () Bool)

(declare-fun e!1788874 () Bool)

(declare-fun tp!902738 () Bool)

(assert (=> b!2826496 (= e!1788874 tp!902738)))

(declare-fun b!2826497 () Bool)

(declare-fun tp!902735 () Bool)

(declare-fun tp!902737 () Bool)

(assert (=> b!2826497 (= e!1788874 (and tp!902735 tp!902737))))

(declare-fun b!2826495 () Bool)

(declare-fun tp!902734 () Bool)

(declare-fun tp!902736 () Bool)

(assert (=> b!2826495 (= e!1788874 (and tp!902734 tp!902736))))

(declare-fun b!2826494 () Bool)

(assert (=> b!2826494 (= e!1788874 tp_is_empty!14485)))

(assert (=> b!2826145 (= tp!902666 e!1788874)))

(assert (= (and b!2826145 (is-ElementMatch!8366 (regex!4976 (h!38616 rules!4424)))) b!2826494))

(assert (= (and b!2826145 (is-Concat!13573 (regex!4976 (h!38616 rules!4424)))) b!2826495))

(assert (= (and b!2826145 (is-Star!8366 (regex!4976 (h!38616 rules!4424)))) b!2826496))

(assert (= (and b!2826145 (is-Union!8366 (regex!4976 (h!38616 rules!4424)))) b!2826497))

(declare-fun b!2826500 () Bool)

(declare-fun e!1788877 () Bool)

(assert (=> b!2826500 (= e!1788877 true)))

(declare-fun b!2826499 () Bool)

(declare-fun e!1788876 () Bool)

(assert (=> b!2826499 (= e!1788876 e!1788877)))

(declare-fun b!2826498 () Bool)

(declare-fun e!1788875 () Bool)

(assert (=> b!2826498 (= e!1788875 e!1788876)))

(assert (=> b!2826170 e!1788875))

(assert (= b!2826499 b!2826500))

(assert (= b!2826498 b!2826499))

(assert (= (and b!2826170 (is-Cons!33196 (t!230985 rules!4424))) b!2826498))

(assert (=> b!2826500 (< (dynLambda!13945 order!17709 (toValue!6998 (transformation!4976 (h!38616 (t!230985 rules!4424))))) (dynLambda!13946 order!17711 lambda!103830))))

(assert (=> b!2826500 (< (dynLambda!13947 order!17713 (toChars!6857 (transformation!4976 (h!38616 (t!230985 rules!4424))))) (dynLambda!13946 order!17711 lambda!103830))))

(declare-fun b!2826505 () Bool)

(declare-fun e!1788880 () Bool)

(declare-fun tp!902741 () Bool)

(assert (=> b!2826505 (= e!1788880 (and tp_is_empty!14485 tp!902741))))

(assert (=> b!2826150 (= tp!902665 e!1788880)))

(assert (= (and b!2826150 (is-Cons!33195 (originalCharacters!5708 (h!38617 l!6581)))) b!2826505))

(declare-fun b!2826516 () Bool)

(declare-fun b_free!81041 () Bool)

(declare-fun b_next!81745 () Bool)

(assert (=> b!2826516 (= b_free!81041 (not b_next!81745))))

(declare-fun tp!902753 () Bool)

(declare-fun b_and!206575 () Bool)

(assert (=> b!2826516 (= tp!902753 b_and!206575)))

(declare-fun b_free!81043 () Bool)

(declare-fun b_next!81747 () Bool)

(assert (=> b!2826516 (= b_free!81043 (not b_next!81747))))

(declare-fun tb!154043 () Bool)

(declare-fun t!231010 () Bool)

(assert (=> (and b!2826516 (= (toChars!6857 (transformation!4976 (h!38616 (t!230985 rules!4424)))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581))))) t!231010) tb!154043))

(declare-fun result!191930 () Bool)

(assert (= result!191930 result!191914))

(assert (=> b!2826262 t!231010))

(declare-fun tp!902750 () Bool)

(declare-fun b_and!206577 () Bool)

(assert (=> b!2826516 (= tp!902750 (and (=> t!231010 result!191930) b_and!206577))))

(declare-fun e!1788892 () Bool)

(assert (=> b!2826516 (= e!1788892 (and tp!902753 tp!902750))))

(declare-fun tp!902752 () Bool)

(declare-fun e!1788891 () Bool)

(declare-fun b!2826515 () Bool)

(assert (=> b!2826515 (= e!1788891 (and tp!902752 (inv!45128 (tag!5480 (h!38616 (t!230985 rules!4424)))) (inv!45132 (transformation!4976 (h!38616 (t!230985 rules!4424)))) e!1788892))))

(declare-fun b!2826514 () Bool)

(declare-fun e!1788890 () Bool)

(declare-fun tp!902751 () Bool)

(assert (=> b!2826514 (= e!1788890 (and e!1788891 tp!902751))))

(assert (=> b!2826151 (= tp!902669 e!1788890)))

(assert (= b!2826515 b!2826516))

(assert (= b!2826514 b!2826515))

(assert (= (and b!2826151 (is-Cons!33196 (t!230985 rules!4424))) b!2826514))

(declare-fun m!3256617 () Bool)

(assert (=> b!2826515 m!3256617))

(declare-fun m!3256619 () Bool)

(assert (=> b!2826515 m!3256619))

(declare-fun b_lambda!84739 () Bool)

(assert (= b_lambda!84737 (or b!2826147 b_lambda!84739)))

(declare-fun bs!518055 () Bool)

(declare-fun d!820376 () Bool)

(assert (= bs!518055 (and d!820376 b!2826147)))

(assert (=> bs!518055 (= (dynLambda!13952 lambda!103830 (h!38617 lt!1008324)) (rulesProduceIndividualToken!2105 Lexer!4565 rules!4424 (h!38617 lt!1008324)))))

(declare-fun m!3256621 () Bool)

(assert (=> bs!518055 m!3256621))

(assert (=> b!2826426 d!820376))

(declare-fun b_lambda!84741 () Bool)

(assert (= b_lambda!84731 (or (and b!2826149 b_free!81023 (= (toChars!6857 (transformation!4976 (h!38616 rules!4424))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))))) (and b!2826161 b_free!81027) (and b!2826479 b_free!81039 (= (toChars!6857 (transformation!4976 (rule!7404 (h!38617 (t!230986 l!6581))))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))))) (and b!2826516 b_free!81043 (= (toChars!6857 (transformation!4976 (h!38616 (t!230985 rules!4424)))) (toChars!6857 (transformation!4976 (rule!7404 (h!38617 l!6581)))))) b_lambda!84741)))

(declare-fun b_lambda!84743 () Bool)

(assert (= b_lambda!84733 (or b!2826147 b_lambda!84743)))

(declare-fun bs!518056 () Bool)

(declare-fun d!820378 () Bool)

(assert (= bs!518056 (and d!820378 b!2826147)))

(assert (=> bs!518056 (= (dynLambda!13952 lambda!103830 (h!38617 lt!1008325)) (rulesProduceIndividualToken!2105 Lexer!4565 rules!4424 (h!38617 lt!1008325)))))

(declare-fun m!3256623 () Bool)

(assert (=> bs!518056 m!3256623))

(assert (=> b!2826306 d!820378))

(push 1)

(assert (not d!820302))

(assert b_and!206575)

(assert (not b_lambda!84743))

(assert (not b!2826478))

(assert (not d!820372))

(assert (not b!2826476))

(assert (not tb!154037))

(assert (not b!2826435))

(assert (not b!2826443))

(assert (not d!820316))

(assert (not b!2826251))

(assert (not b!2826294))

(assert (not b_next!81743))

(assert (not b_next!81741))

(assert (not b!2826497))

(assert (not b!2826281))

(assert (not b!2826279))

(assert (not b!2826463))

(assert (not d!820362))

(assert (not b!2826356))

(assert b_and!206571)

(assert (not b!2826433))

(assert (not d!820322))

(assert (not b!2826498))

(assert (not d!820306))

(assert (not b_next!81747))

(assert (not b!2826284))

(assert (not b_next!81725))

(assert (not b!2826309))

(assert (not b!2826436))

(assert (not b!2826289))

(assert (not b!2826295))

(assert (not b!2826493))

(assert (not b!2826440))

(assert (not b!2826423))

(assert (not b!2826287))

(assert (not b!2826492))

(assert (not b!2826293))

(assert (not b!2826505))

(assert (not b!2826282))

(assert (not b!2826432))

(assert (not b!2826268))

(assert (not b!2826434))

(assert (not d!820328))

(assert (not b!2826465))

(assert (not d!820320))

(assert (not b!2826515))

(assert (not d!820364))

(assert (not b!2826496))

(assert b_and!206551)

(assert b_and!206569)

(assert (not bs!518056))

(assert (not b!2826355))

(assert (not b_next!81727))

(assert b_and!206567)

(assert (not d!820296))

(assert (not d!820310))

(assert (not b!2826445))

(assert (not b_lambda!84739))

(assert (not b!2826427))

(assert b_and!206577)

(assert (not b!2826253))

(assert (not b!2826336))

(assert (not b!2826271))

(assert (not b_next!81729))

(assert (not b!2826464))

(assert (not b!2826307))

(assert (not b!2826421))

(assert (not b!2826262))

(assert (not b!2826495))

(assert (not b!2826419))

(assert (not b!2826288))

(assert (not b!2826290))

(assert (not b!2826448))

(assert (not d!820312))

(assert (not b!2826310))

(assert (not b_next!81731))

(assert (not b!2826357))

(assert (not d!820342))

(assert (not b!2826446))

(assert (not d!820326))

(assert (not b_next!81745))

(assert (not d!820318))

(assert (not b!2826491))

(assert (not b!2826278))

(assert (not b!2826335))

(assert (not b!2826420))

(assert (not b!2826514))

(assert (not b!2826442))

(assert (not b!2826283))

(assert (not d!820344))

(assert (not b!2826422))

(assert (not b!2826437))

(assert (not b!2826308))

(assert b_and!206555)

(assert (not b!2826280))

(assert (not b!2826252))

(assert (not b!2826430))

(assert (not b!2826441))

(assert (not bs!518055))

(assert b_and!206573)

(assert tp_is_empty!14485)

(assert (not b!2826353))

(assert (not b_lambda!84741))

(assert (not b!2826444))

(assert (not b!2826477))

(assert (not d!820334))

(assert (not b!2826263))

(assert (not b!2826447))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206571)

(assert (not b_next!81747))

(assert (not b_next!81725))

(assert b_and!206575)

(assert b_and!206577)

(assert (not b_next!81729))

(assert (not b_next!81731))

(assert (not b_next!81745))

(assert b_and!206555)

(assert b_and!206573)

(assert (not b_next!81743))

(assert (not b_next!81741))

(assert b_and!206551)

(assert b_and!206569)

(assert (not b_next!81727))

(assert b_and!206567)

(check-sat)

(pop 1)


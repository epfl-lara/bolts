; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241214 () Bool)

(assert start!241214)

(declare-fun b!2473199 () Bool)

(declare-fun b_free!71573 () Bool)

(declare-fun b_next!72277 () Bool)

(assert (=> b!2473199 (= b_free!71573 (not b_next!72277))))

(declare-fun tp!790569 () Bool)

(declare-fun b_and!187605 () Bool)

(assert (=> b!2473199 (= tp!790569 b_and!187605)))

(declare-fun b_free!71575 () Bool)

(declare-fun b_next!72279 () Bool)

(assert (=> b!2473199 (= b_free!71575 (not b_next!72279))))

(declare-fun tp!790561 () Bool)

(declare-fun b_and!187607 () Bool)

(assert (=> b!2473199 (= tp!790561 b_and!187607)))

(declare-fun b!2473196 () Bool)

(declare-fun b_free!71577 () Bool)

(declare-fun b_next!72281 () Bool)

(assert (=> b!2473196 (= b_free!71577 (not b_next!72281))))

(declare-fun tp!790557 () Bool)

(declare-fun b_and!187609 () Bool)

(assert (=> b!2473196 (= tp!790557 b_and!187609)))

(declare-fun b_free!71579 () Bool)

(declare-fun b_next!72283 () Bool)

(assert (=> b!2473196 (= b_free!71579 (not b_next!72283))))

(declare-fun tp!790568 () Bool)

(declare-fun b_and!187611 () Bool)

(assert (=> b!2473196 (= tp!790568 b_and!187611)))

(declare-fun b!2473212 () Bool)

(declare-fun b_free!71581 () Bool)

(declare-fun b_next!72285 () Bool)

(assert (=> b!2473212 (= b_free!71581 (not b_next!72285))))

(declare-fun tp!790553 () Bool)

(declare-fun b_and!187613 () Bool)

(assert (=> b!2473212 (= tp!790553 b_and!187613)))

(declare-fun b_free!71583 () Bool)

(declare-fun b_next!72287 () Bool)

(assert (=> b!2473212 (= b_free!71583 (not b_next!72287))))

(declare-fun tp!790559 () Bool)

(declare-fun b_and!187615 () Bool)

(assert (=> b!2473212 (= tp!790559 b_and!187615)))

(declare-fun b!2473208 () Bool)

(declare-fun b_free!71585 () Bool)

(declare-fun b_next!72289 () Bool)

(assert (=> b!2473208 (= b_free!71585 (not b_next!72289))))

(declare-fun tp!790554 () Bool)

(declare-fun b_and!187617 () Bool)

(assert (=> b!2473208 (= tp!790554 b_and!187617)))

(declare-fun b_free!71587 () Bool)

(declare-fun b_next!72291 () Bool)

(assert (=> b!2473208 (= b_free!71587 (not b_next!72291))))

(declare-fun tp!790563 () Bool)

(declare-fun b_and!187619 () Bool)

(assert (=> b!2473208 (= tp!790563 b_and!187619)))

(declare-fun b!2473189 () Bool)

(declare-fun res!1047071 () Bool)

(declare-fun e!1568792 () Bool)

(assert (=> b!2473189 (=> (not res!1047071) (not e!1568792))))

(declare-fun i!1803 () Int)

(assert (=> b!2473189 (= res!1047071 (>= i!1803 0))))

(declare-fun b!2473190 () Bool)

(declare-fun res!1047070 () Bool)

(assert (=> b!2473190 (=> (not res!1047070) (not e!1568792))))

(declare-datatypes ((LexerInterface!4094 0))(
  ( (LexerInterfaceExt!4091 (__x!18621 Int)) (Lexer!4092) )
))
(declare-fun thiss!27932 () LexerInterface!4094)

(declare-datatypes ((List!28950 0))(
  ( (Nil!28850) (Cons!28850 (h!34251 (_ BitVec 16)) (t!210269 List!28950)) )
))
(declare-datatypes ((TokenValue!4683 0))(
  ( (FloatLiteralValue!9366 (text!33226 List!28950)) (TokenValueExt!4682 (__x!18622 Int)) (Broken!23415 (value!143544 List!28950)) (Object!4782) (End!4683) (Def!4683) (Underscore!4683) (Match!4683) (Else!4683) (Error!4683) (Case!4683) (If!4683) (Extends!4683) (Abstract!4683) (Class!4683) (Val!4683) (DelimiterValue!9366 (del!4743 List!28950)) (KeywordValue!4689 (value!143545 List!28950)) (CommentValue!9366 (value!143546 List!28950)) (WhitespaceValue!9366 (value!143547 List!28950)) (IndentationValue!4683 (value!143548 List!28950)) (String!31710) (Int32!4683) (Broken!23416 (value!143549 List!28950)) (Boolean!4684) (Unit!42205) (OperatorValue!4686 (op!4743 List!28950)) (IdentifierValue!9366 (value!143550 List!28950)) (IdentifierValue!9367 (value!143551 List!28950)) (WhitespaceValue!9367 (value!143552 List!28950)) (True!9366) (False!9366) (Broken!23417 (value!143553 List!28950)) (Broken!23418 (value!143554 List!28950)) (True!9367) (RightBrace!4683) (RightBracket!4683) (Colon!4683) (Null!4683) (Comma!4683) (LeftBracket!4683) (False!9367) (LeftBrace!4683) (ImaginaryLiteralValue!4683 (text!33227 List!28950)) (StringLiteralValue!14049 (value!143555 List!28950)) (EOFValue!4683 (value!143556 List!28950)) (IdentValue!4683 (value!143557 List!28950)) (DelimiterValue!9367 (value!143558 List!28950)) (DedentValue!4683 (value!143559 List!28950)) (NewLineValue!4683 (value!143560 List!28950)) (IntegerValue!14049 (value!143561 (_ BitVec 32)) (text!33228 List!28950)) (IntegerValue!14050 (value!143562 Int) (text!33229 List!28950)) (Times!4683) (Or!4683) (Equal!4683) (Minus!4683) (Broken!23419 (value!143563 List!28950)) (And!4683) (Div!4683) (LessEqual!4683) (Mod!4683) (Concat!11968) (Not!4683) (Plus!4683) (SpaceValue!4683 (value!143564 List!28950)) (IntegerValue!14051 (value!143565 Int) (text!33230 List!28950)) (StringLiteralValue!14050 (text!33231 List!28950)) (FloatLiteralValue!9367 (text!33232 List!28950)) (BytesLiteralValue!4683 (value!143566 List!28950)) (CommentValue!9367 (value!143567 List!28950)) (StringLiteralValue!14051 (value!143568 List!28950)) (ErrorTokenValue!4683 (msg!4744 List!28950)) )
))
(declare-datatypes ((C!14728 0))(
  ( (C!14729 (val!8624 Int)) )
))
(declare-datatypes ((List!28951 0))(
  ( (Nil!28851) (Cons!28851 (h!34252 C!14728) (t!210270 List!28951)) )
))
(declare-datatypes ((IArray!18435 0))(
  ( (IArray!18436 (innerList!9275 List!28951)) )
))
(declare-datatypes ((Conc!9215 0))(
  ( (Node!9215 (left!22130 Conc!9215) (right!22460 Conc!9215) (csize!18660 Int) (cheight!9426 Int)) (Leaf!13771 (xs!12199 IArray!18435) (csize!18661 Int)) (Empty!9215) )
))
(declare-datatypes ((BalanceConc!18044 0))(
  ( (BalanceConc!18045 (c!393850 Conc!9215)) )
))
(declare-datatypes ((Regex!7285 0))(
  ( (ElementMatch!7285 (c!393851 C!14728)) (Concat!11969 (regOne!15082 Regex!7285) (regTwo!15082 Regex!7285)) (EmptyExpr!7285) (Star!7285 (reg!7614 Regex!7285)) (EmptyLang!7285) (Union!7285 (regOne!15083 Regex!7285) (regTwo!15083 Regex!7285)) )
))
(declare-datatypes ((String!31711 0))(
  ( (String!31712 (value!143569 String)) )
))
(declare-datatypes ((TokenValueInjection!8866 0))(
  ( (TokenValueInjection!8867 (toValue!6361 Int) (toChars!6220 Int)) )
))
(declare-datatypes ((Rule!8794 0))(
  ( (Rule!8795 (regex!4497 Regex!7285) (tag!4987 String!31711) (isSeparator!4497 Bool) (transformation!4497 TokenValueInjection!8866)) )
))
(declare-datatypes ((List!28952 0))(
  ( (Nil!28852) (Cons!28852 (h!34253 Rule!8794) (t!210271 List!28952)) )
))
(declare-fun rules!4472 () List!28952)

(declare-datatypes ((Token!8464 0))(
  ( (Token!8465 (value!143570 TokenValue!4683) (rule!6855 Rule!8794) (size!22453 Int) (originalCharacters!5263 List!28951)) )
))
(declare-datatypes ((List!28953 0))(
  ( (Nil!28853) (Cons!28853 (h!34254 Token!8464) (t!210272 List!28953)) )
))
(declare-fun l!6611 () List!28953)

(declare-fun tokensListTwoByTwoPredicateSeparableList!633 (LexerInterface!4094 List!28953 List!28952) Bool)

(assert (=> b!2473190 (= res!1047070 (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2473191 () Bool)

(declare-fun e!1568795 () Bool)

(declare-fun e!1568786 () Bool)

(assert (=> b!2473191 (= e!1568795 e!1568786)))

(declare-fun res!1047076 () Bool)

(assert (=> b!2473191 (=> res!1047076 e!1568786)))

(assert (=> b!2473191 (= res!1047076 (< (- i!1803 1) 0))))

(declare-fun b!2473192 () Bool)

(declare-fun tp!790558 () Bool)

(declare-fun t1!67 () Token!8464)

(declare-fun e!1568779 () Bool)

(declare-fun e!1568791 () Bool)

(declare-fun inv!21 (TokenValue!4683) Bool)

(assert (=> b!2473192 (= e!1568791 (and (inv!21 (value!143570 t1!67)) e!1568779 tp!790558))))

(declare-fun b!2473193 () Bool)

(declare-fun res!1047069 () Bool)

(assert (=> b!2473193 (=> (not res!1047069) (not e!1568792))))

(declare-fun size!22454 (List!28953) Int)

(assert (=> b!2473193 (= res!1047069 (< (+ 1 i!1803) (size!22454 l!6611)))))

(declare-fun b!2473194 () Bool)

(declare-fun res!1047077 () Bool)

(assert (=> b!2473194 (=> (not res!1047077) (not e!1568792))))

(declare-fun t2!67 () Token!8464)

(declare-fun apply!6806 (List!28953 Int) Token!8464)

(assert (=> b!2473194 (= res!1047077 (= (apply!6806 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2473195 () Bool)

(assert (=> b!2473195 (= e!1568792 e!1568795)))

(declare-fun res!1047073 () Bool)

(assert (=> b!2473195 (=> (not res!1047073) (not e!1568795))))

(declare-fun lt!883520 () List!28953)

(declare-fun rulesProduceEachTokenIndividuallyList!1410 (LexerInterface!4094 List!28952 List!28953) Bool)

(assert (=> b!2473195 (= res!1047073 (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 lt!883520))))

(declare-fun tail!3930 (List!28953) List!28953)

(assert (=> b!2473195 (= lt!883520 (tail!3930 l!6611))))

(declare-fun e!1568784 () Bool)

(assert (=> b!2473196 (= e!1568784 (and tp!790557 tp!790568))))

(declare-fun e!1568787 () Bool)

(declare-fun b!2473197 () Bool)

(declare-fun e!1568789 () Bool)

(declare-fun tp!790564 () Bool)

(assert (=> b!2473197 (= e!1568789 (and (inv!21 (value!143570 t2!67)) e!1568787 tp!790564))))

(declare-fun e!1568778 () Bool)

(declare-fun b!2473198 () Bool)

(declare-fun tp!790560 () Bool)

(declare-fun inv!38940 (String!31711) Bool)

(declare-fun inv!38943 (TokenValueInjection!8866) Bool)

(assert (=> b!2473198 (= e!1568779 (and tp!790560 (inv!38940 (tag!4987 (rule!6855 t1!67))) (inv!38943 (transformation!4497 (rule!6855 t1!67))) e!1568778))))

(declare-fun e!1568785 () Bool)

(assert (=> b!2473199 (= e!1568785 (and tp!790569 tp!790561))))

(declare-fun b!2473200 () Bool)

(declare-fun res!1047072 () Bool)

(assert (=> b!2473200 (=> (not res!1047072) (not e!1568792))))

(assert (=> b!2473200 (= res!1047072 (= (apply!6806 l!6611 i!1803) t1!67))))

(declare-fun e!1568777 () Bool)

(declare-fun e!1568774 () Bool)

(declare-fun tp!790565 () Bool)

(declare-fun b!2473201 () Bool)

(assert (=> b!2473201 (= e!1568774 (and (inv!21 (value!143570 (h!34254 l!6611))) e!1568777 tp!790565))))

(declare-fun b!2473202 () Bool)

(declare-fun res!1047075 () Bool)

(assert (=> b!2473202 (=> (not res!1047075) (not e!1568792))))

(assert (=> b!2473202 (= res!1047075 (not (= i!1803 0)))))

(declare-fun b!2473203 () Bool)

(declare-fun res!1047074 () Bool)

(assert (=> b!2473203 (=> (not res!1047074) (not e!1568795))))

(assert (=> b!2473203 (= res!1047074 (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 lt!883520 rules!4472))))

(declare-fun b!2473204 () Bool)

(assert (=> b!2473204 (= e!1568786 (>= (+ 1 (- i!1803 1)) (size!22454 lt!883520)))))

(declare-fun b!2473205 () Bool)

(declare-fun res!1047078 () Bool)

(assert (=> b!2473205 (=> (not res!1047078) (not e!1568792))))

(declare-fun isEmpty!16752 (List!28952) Bool)

(assert (=> b!2473205 (= res!1047078 (not (isEmpty!16752 rules!4472)))))

(declare-fun b!2473206 () Bool)

(declare-fun e!1568782 () Bool)

(declare-fun tp!790555 () Bool)

(declare-fun inv!38944 (Token!8464) Bool)

(assert (=> b!2473206 (= e!1568782 (and (inv!38944 (h!34254 l!6611)) e!1568774 tp!790555))))

(declare-fun b!2473207 () Bool)

(declare-fun tp!790567 () Bool)

(assert (=> b!2473207 (= e!1568787 (and tp!790567 (inv!38940 (tag!4987 (rule!6855 t2!67))) (inv!38943 (transformation!4497 (rule!6855 t2!67))) e!1568784))))

(assert (=> b!2473208 (= e!1568778 (and tp!790554 tp!790563))))

(declare-fun b!2473209 () Bool)

(declare-fun tp!790556 () Bool)

(assert (=> b!2473209 (= e!1568777 (and tp!790556 (inv!38940 (tag!4987 (rule!6855 (h!34254 l!6611)))) (inv!38943 (transformation!4497 (rule!6855 (h!34254 l!6611)))) e!1568785))))

(declare-fun e!1568783 () Bool)

(declare-fun e!1568780 () Bool)

(declare-fun b!2473210 () Bool)

(declare-fun tp!790566 () Bool)

(assert (=> b!2473210 (= e!1568783 (and tp!790566 (inv!38940 (tag!4987 (h!34253 rules!4472))) (inv!38943 (transformation!4497 (h!34253 rules!4472))) e!1568780))))

(declare-fun res!1047081 () Bool)

(assert (=> start!241214 (=> (not res!1047081) (not e!1568792))))

(get-info :version)

(assert (=> start!241214 (= res!1047081 ((_ is Lexer!4092) thiss!27932))))

(assert (=> start!241214 e!1568792))

(assert (=> start!241214 true))

(declare-fun e!1568775 () Bool)

(assert (=> start!241214 e!1568775))

(assert (=> start!241214 (and (inv!38944 t2!67) e!1568789)))

(assert (=> start!241214 e!1568782))

(assert (=> start!241214 (and (inv!38944 t1!67) e!1568791)))

(declare-fun b!2473211 () Bool)

(declare-fun res!1047079 () Bool)

(assert (=> b!2473211 (=> (not res!1047079) (not e!1568792))))

(declare-fun rulesInvariant!3594 (LexerInterface!4094 List!28952) Bool)

(assert (=> b!2473211 (= res!1047079 (rulesInvariant!3594 thiss!27932 rules!4472))))

(assert (=> b!2473212 (= e!1568780 (and tp!790553 tp!790559))))

(declare-fun b!2473213 () Bool)

(declare-fun res!1047080 () Bool)

(assert (=> b!2473213 (=> (not res!1047080) (not e!1568792))))

(assert (=> b!2473213 (= res!1047080 (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2473214 () Bool)

(declare-fun tp!790562 () Bool)

(assert (=> b!2473214 (= e!1568775 (and e!1568783 tp!790562))))

(assert (= (and start!241214 res!1047081) b!2473205))

(assert (= (and b!2473205 res!1047078) b!2473211))

(assert (= (and b!2473211 res!1047079) b!2473213))

(assert (= (and b!2473213 res!1047080) b!2473190))

(assert (= (and b!2473190 res!1047070) b!2473189))

(assert (= (and b!2473189 res!1047071) b!2473193))

(assert (= (and b!2473193 res!1047069) b!2473200))

(assert (= (and b!2473200 res!1047072) b!2473194))

(assert (= (and b!2473194 res!1047077) b!2473202))

(assert (= (and b!2473202 res!1047075) b!2473195))

(assert (= (and b!2473195 res!1047073) b!2473203))

(assert (= (and b!2473203 res!1047074) b!2473191))

(assert (= (and b!2473191 (not res!1047076)) b!2473204))

(assert (= b!2473210 b!2473212))

(assert (= b!2473214 b!2473210))

(assert (= (and start!241214 ((_ is Cons!28852) rules!4472)) b!2473214))

(assert (= b!2473207 b!2473196))

(assert (= b!2473197 b!2473207))

(assert (= start!241214 b!2473197))

(assert (= b!2473209 b!2473199))

(assert (= b!2473201 b!2473209))

(assert (= b!2473206 b!2473201))

(assert (= (and start!241214 ((_ is Cons!28853) l!6611)) b!2473206))

(assert (= b!2473198 b!2473208))

(assert (= b!2473192 b!2473198))

(assert (= start!241214 b!2473192))

(declare-fun m!2841721 () Bool)

(assert (=> b!2473197 m!2841721))

(declare-fun m!2841723 () Bool)

(assert (=> b!2473190 m!2841723))

(declare-fun m!2841725 () Bool)

(assert (=> b!2473195 m!2841725))

(declare-fun m!2841727 () Bool)

(assert (=> b!2473195 m!2841727))

(declare-fun m!2841729 () Bool)

(assert (=> b!2473200 m!2841729))

(declare-fun m!2841731 () Bool)

(assert (=> b!2473213 m!2841731))

(declare-fun m!2841733 () Bool)

(assert (=> b!2473209 m!2841733))

(declare-fun m!2841735 () Bool)

(assert (=> b!2473209 m!2841735))

(declare-fun m!2841737 () Bool)

(assert (=> b!2473203 m!2841737))

(declare-fun m!2841739 () Bool)

(assert (=> b!2473211 m!2841739))

(declare-fun m!2841741 () Bool)

(assert (=> b!2473204 m!2841741))

(declare-fun m!2841743 () Bool)

(assert (=> b!2473201 m!2841743))

(declare-fun m!2841745 () Bool)

(assert (=> b!2473193 m!2841745))

(declare-fun m!2841747 () Bool)

(assert (=> b!2473192 m!2841747))

(declare-fun m!2841749 () Bool)

(assert (=> b!2473206 m!2841749))

(declare-fun m!2841751 () Bool)

(assert (=> start!241214 m!2841751))

(declare-fun m!2841753 () Bool)

(assert (=> start!241214 m!2841753))

(declare-fun m!2841755 () Bool)

(assert (=> b!2473198 m!2841755))

(declare-fun m!2841757 () Bool)

(assert (=> b!2473198 m!2841757))

(declare-fun m!2841759 () Bool)

(assert (=> b!2473210 m!2841759))

(declare-fun m!2841761 () Bool)

(assert (=> b!2473210 m!2841761))

(declare-fun m!2841763 () Bool)

(assert (=> b!2473194 m!2841763))

(declare-fun m!2841765 () Bool)

(assert (=> b!2473205 m!2841765))

(declare-fun m!2841767 () Bool)

(assert (=> b!2473207 m!2841767))

(declare-fun m!2841769 () Bool)

(assert (=> b!2473207 m!2841769))

(check-sat (not b!2473192) b_and!187617 (not b!2473204) (not b_next!72287) (not b!2473205) (not b!2473190) (not start!241214) (not b_next!72277) (not b!2473197) (not b_next!72285) (not b!2473206) b_and!187619 (not b!2473213) (not b_next!72291) (not b!2473193) b_and!187605 (not b_next!72283) (not b!2473210) (not b!2473207) b_and!187613 (not b_next!72289) b_and!187611 (not b!2473201) b_and!187609 (not b!2473203) b_and!187615 (not b!2473198) (not b!2473200) (not b!2473214) (not b!2473194) (not b_next!72279) (not b!2473195) (not b!2473209) (not b!2473211) (not b_next!72281) b_and!187607)
(check-sat b_and!187617 (not b_next!72287) (not b_next!72291) b_and!187613 b_and!187609 b_and!187615 (not b_next!72277) (not b_next!72279) (not b_next!72285) b_and!187619 b_and!187605 (not b_next!72283) (not b_next!72289) b_and!187611 (not b_next!72281) b_and!187607)
(get-model)

(declare-fun d!711718 () Bool)

(assert (=> d!711718 (= (inv!38940 (tag!4987 (rule!6855 t2!67))) (= (mod (str.len (value!143569 (tag!4987 (rule!6855 t2!67)))) 2) 0))))

(assert (=> b!2473207 d!711718))

(declare-fun d!711720 () Bool)

(declare-fun res!1047094 () Bool)

(declare-fun e!1568799 () Bool)

(assert (=> d!711720 (=> (not res!1047094) (not e!1568799))))

(declare-fun semiInverseModEq!1854 (Int Int) Bool)

(assert (=> d!711720 (= res!1047094 (semiInverseModEq!1854 (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toValue!6361 (transformation!4497 (rule!6855 t2!67)))))))

(assert (=> d!711720 (= (inv!38943 (transformation!4497 (rule!6855 t2!67))) e!1568799)))

(declare-fun b!2473217 () Bool)

(declare-fun equivClasses!1765 (Int Int) Bool)

(assert (=> b!2473217 (= e!1568799 (equivClasses!1765 (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toValue!6361 (transformation!4497 (rule!6855 t2!67)))))))

(assert (= (and d!711720 res!1047094) b!2473217))

(declare-fun m!2841771 () Bool)

(assert (=> d!711720 m!2841771))

(declare-fun m!2841773 () Bool)

(assert (=> b!2473217 m!2841773))

(assert (=> b!2473207 d!711720))

(declare-fun d!711724 () Bool)

(declare-fun res!1047099 () Bool)

(declare-fun e!1568802 () Bool)

(assert (=> d!711724 (=> (not res!1047099) (not e!1568802))))

(declare-fun isEmpty!16754 (List!28951) Bool)

(assert (=> d!711724 (= res!1047099 (not (isEmpty!16754 (originalCharacters!5263 (h!34254 l!6611)))))))

(assert (=> d!711724 (= (inv!38944 (h!34254 l!6611)) e!1568802)))

(declare-fun b!2473222 () Bool)

(declare-fun res!1047100 () Bool)

(assert (=> b!2473222 (=> (not res!1047100) (not e!1568802))))

(declare-fun list!11151 (BalanceConc!18044) List!28951)

(declare-fun dynLambda!12402 (Int TokenValue!4683) BalanceConc!18044)

(assert (=> b!2473222 (= res!1047100 (= (originalCharacters!5263 (h!34254 l!6611)) (list!11151 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (value!143570 (h!34254 l!6611))))))))

(declare-fun b!2473223 () Bool)

(declare-fun size!22457 (List!28951) Int)

(assert (=> b!2473223 (= e!1568802 (= (size!22453 (h!34254 l!6611)) (size!22457 (originalCharacters!5263 (h!34254 l!6611)))))))

(assert (= (and d!711724 res!1047099) b!2473222))

(assert (= (and b!2473222 res!1047100) b!2473223))

(declare-fun b_lambda!75887 () Bool)

(assert (=> (not b_lambda!75887) (not b!2473222)))

(declare-fun t!210274 () Bool)

(declare-fun tb!140065 () Bool)

(assert (=> (and b!2473199 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210274) tb!140065))

(declare-fun b!2473228 () Bool)

(declare-fun e!1568805 () Bool)

(declare-fun tp!790572 () Bool)

(declare-fun inv!38947 (Conc!9215) Bool)

(assert (=> b!2473228 (= e!1568805 (and (inv!38947 (c!393850 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (value!143570 (h!34254 l!6611))))) tp!790572))))

(declare-fun result!172856 () Bool)

(declare-fun inv!38948 (BalanceConc!18044) Bool)

(assert (=> tb!140065 (= result!172856 (and (inv!38948 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (value!143570 (h!34254 l!6611)))) e!1568805))))

(assert (= tb!140065 b!2473228))

(declare-fun m!2841775 () Bool)

(assert (=> b!2473228 m!2841775))

(declare-fun m!2841777 () Bool)

(assert (=> tb!140065 m!2841777))

(assert (=> b!2473222 t!210274))

(declare-fun b_and!187621 () Bool)

(assert (= b_and!187607 (and (=> t!210274 result!172856) b_and!187621)))

(declare-fun tb!140067 () Bool)

(declare-fun t!210276 () Bool)

(assert (=> (and b!2473196 (= (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210276) tb!140067))

(declare-fun result!172860 () Bool)

(assert (= result!172860 result!172856))

(assert (=> b!2473222 t!210276))

(declare-fun b_and!187623 () Bool)

(assert (= b_and!187611 (and (=> t!210276 result!172860) b_and!187623)))

(declare-fun tb!140069 () Bool)

(declare-fun t!210278 () Bool)

(assert (=> (and b!2473212 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210278) tb!140069))

(declare-fun result!172862 () Bool)

(assert (= result!172862 result!172856))

(assert (=> b!2473222 t!210278))

(declare-fun b_and!187625 () Bool)

(assert (= b_and!187615 (and (=> t!210278 result!172862) b_and!187625)))

(declare-fun t!210280 () Bool)

(declare-fun tb!140071 () Bool)

(assert (=> (and b!2473208 (= (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210280) tb!140071))

(declare-fun result!172864 () Bool)

(assert (= result!172864 result!172856))

(assert (=> b!2473222 t!210280))

(declare-fun b_and!187627 () Bool)

(assert (= b_and!187619 (and (=> t!210280 result!172864) b_and!187627)))

(declare-fun m!2841779 () Bool)

(assert (=> d!711724 m!2841779))

(declare-fun m!2841781 () Bool)

(assert (=> b!2473222 m!2841781))

(assert (=> b!2473222 m!2841781))

(declare-fun m!2841783 () Bool)

(assert (=> b!2473222 m!2841783))

(declare-fun m!2841785 () Bool)

(assert (=> b!2473223 m!2841785))

(assert (=> b!2473206 d!711724))

(declare-fun d!711726 () Bool)

(declare-fun res!1047101 () Bool)

(declare-fun e!1568806 () Bool)

(assert (=> d!711726 (=> (not res!1047101) (not e!1568806))))

(assert (=> d!711726 (= res!1047101 (not (isEmpty!16754 (originalCharacters!5263 t2!67))))))

(assert (=> d!711726 (= (inv!38944 t2!67) e!1568806)))

(declare-fun b!2473229 () Bool)

(declare-fun res!1047102 () Bool)

(assert (=> b!2473229 (=> (not res!1047102) (not e!1568806))))

(assert (=> b!2473229 (= res!1047102 (= (originalCharacters!5263 t2!67) (list!11151 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (value!143570 t2!67)))))))

(declare-fun b!2473230 () Bool)

(assert (=> b!2473230 (= e!1568806 (= (size!22453 t2!67) (size!22457 (originalCharacters!5263 t2!67))))))

(assert (= (and d!711726 res!1047101) b!2473229))

(assert (= (and b!2473229 res!1047102) b!2473230))

(declare-fun b_lambda!75889 () Bool)

(assert (=> (not b_lambda!75889) (not b!2473229)))

(declare-fun tb!140073 () Bool)

(declare-fun t!210282 () Bool)

(assert (=> (and b!2473199 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210282) tb!140073))

(declare-fun b!2473231 () Bool)

(declare-fun e!1568807 () Bool)

(declare-fun tp!790573 () Bool)

(assert (=> b!2473231 (= e!1568807 (and (inv!38947 (c!393850 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (value!143570 t2!67)))) tp!790573))))

(declare-fun result!172866 () Bool)

(assert (=> tb!140073 (= result!172866 (and (inv!38948 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (value!143570 t2!67))) e!1568807))))

(assert (= tb!140073 b!2473231))

(declare-fun m!2841787 () Bool)

(assert (=> b!2473231 m!2841787))

(declare-fun m!2841789 () Bool)

(assert (=> tb!140073 m!2841789))

(assert (=> b!2473229 t!210282))

(declare-fun b_and!187629 () Bool)

(assert (= b_and!187621 (and (=> t!210282 result!172866) b_and!187629)))

(declare-fun t!210284 () Bool)

(declare-fun tb!140075 () Bool)

(assert (=> (and b!2473196 (= (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210284) tb!140075))

(declare-fun result!172868 () Bool)

(assert (= result!172868 result!172866))

(assert (=> b!2473229 t!210284))

(declare-fun b_and!187631 () Bool)

(assert (= b_and!187623 (and (=> t!210284 result!172868) b_and!187631)))

(declare-fun t!210286 () Bool)

(declare-fun tb!140077 () Bool)

(assert (=> (and b!2473212 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210286) tb!140077))

(declare-fun result!172870 () Bool)

(assert (= result!172870 result!172866))

(assert (=> b!2473229 t!210286))

(declare-fun b_and!187633 () Bool)

(assert (= b_and!187625 (and (=> t!210286 result!172870) b_and!187633)))

(declare-fun tb!140079 () Bool)

(declare-fun t!210288 () Bool)

(assert (=> (and b!2473208 (= (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210288) tb!140079))

(declare-fun result!172872 () Bool)

(assert (= result!172872 result!172866))

(assert (=> b!2473229 t!210288))

(declare-fun b_and!187635 () Bool)

(assert (= b_and!187627 (and (=> t!210288 result!172872) b_and!187635)))

(declare-fun m!2841791 () Bool)

(assert (=> d!711726 m!2841791))

(declare-fun m!2841793 () Bool)

(assert (=> b!2473229 m!2841793))

(assert (=> b!2473229 m!2841793))

(declare-fun m!2841795 () Bool)

(assert (=> b!2473229 m!2841795))

(declare-fun m!2841797 () Bool)

(assert (=> b!2473230 m!2841797))

(assert (=> start!241214 d!711726))

(declare-fun d!711728 () Bool)

(declare-fun res!1047103 () Bool)

(declare-fun e!1568808 () Bool)

(assert (=> d!711728 (=> (not res!1047103) (not e!1568808))))

(assert (=> d!711728 (= res!1047103 (not (isEmpty!16754 (originalCharacters!5263 t1!67))))))

(assert (=> d!711728 (= (inv!38944 t1!67) e!1568808)))

(declare-fun b!2473232 () Bool)

(declare-fun res!1047104 () Bool)

(assert (=> b!2473232 (=> (not res!1047104) (not e!1568808))))

(assert (=> b!2473232 (= res!1047104 (= (originalCharacters!5263 t1!67) (list!11151 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (value!143570 t1!67)))))))

(declare-fun b!2473233 () Bool)

(assert (=> b!2473233 (= e!1568808 (= (size!22453 t1!67) (size!22457 (originalCharacters!5263 t1!67))))))

(assert (= (and d!711728 res!1047103) b!2473232))

(assert (= (and b!2473232 res!1047104) b!2473233))

(declare-fun b_lambda!75891 () Bool)

(assert (=> (not b_lambda!75891) (not b!2473232)))

(declare-fun t!210290 () Bool)

(declare-fun tb!140081 () Bool)

(assert (=> (and b!2473199 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210290) tb!140081))

(declare-fun b!2473234 () Bool)

(declare-fun e!1568809 () Bool)

(declare-fun tp!790574 () Bool)

(assert (=> b!2473234 (= e!1568809 (and (inv!38947 (c!393850 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (value!143570 t1!67)))) tp!790574))))

(declare-fun result!172874 () Bool)

(assert (=> tb!140081 (= result!172874 (and (inv!38948 (dynLambda!12402 (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (value!143570 t1!67))) e!1568809))))

(assert (= tb!140081 b!2473234))

(declare-fun m!2841799 () Bool)

(assert (=> b!2473234 m!2841799))

(declare-fun m!2841801 () Bool)

(assert (=> tb!140081 m!2841801))

(assert (=> b!2473232 t!210290))

(declare-fun b_and!187637 () Bool)

(assert (= b_and!187629 (and (=> t!210290 result!172874) b_and!187637)))

(declare-fun t!210292 () Bool)

(declare-fun tb!140083 () Bool)

(assert (=> (and b!2473196 (= (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210292) tb!140083))

(declare-fun result!172876 () Bool)

(assert (= result!172876 result!172874))

(assert (=> b!2473232 t!210292))

(declare-fun b_and!187639 () Bool)

(assert (= b_and!187631 (and (=> t!210292 result!172876) b_and!187639)))

(declare-fun tb!140085 () Bool)

(declare-fun t!210294 () Bool)

(assert (=> (and b!2473212 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210294) tb!140085))

(declare-fun result!172878 () Bool)

(assert (= result!172878 result!172874))

(assert (=> b!2473232 t!210294))

(declare-fun b_and!187641 () Bool)

(assert (= b_and!187633 (and (=> t!210294 result!172878) b_and!187641)))

(declare-fun t!210296 () Bool)

(declare-fun tb!140087 () Bool)

(assert (=> (and b!2473208 (= (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210296) tb!140087))

(declare-fun result!172880 () Bool)

(assert (= result!172880 result!172874))

(assert (=> b!2473232 t!210296))

(declare-fun b_and!187643 () Bool)

(assert (= b_and!187635 (and (=> t!210296 result!172880) b_and!187643)))

(declare-fun m!2841803 () Bool)

(assert (=> d!711728 m!2841803))

(declare-fun m!2841805 () Bool)

(assert (=> b!2473232 m!2841805))

(assert (=> b!2473232 m!2841805))

(declare-fun m!2841807 () Bool)

(assert (=> b!2473232 m!2841807))

(declare-fun m!2841809 () Bool)

(assert (=> b!2473233 m!2841809))

(assert (=> start!241214 d!711728))

(declare-fun b!2473327 () Bool)

(declare-fun e!1568879 () Bool)

(assert (=> b!2473327 (= e!1568879 true)))

(declare-fun b!2473326 () Bool)

(declare-fun e!1568878 () Bool)

(assert (=> b!2473326 (= e!1568878 e!1568879)))

(declare-fun b!2473325 () Bool)

(declare-fun e!1568877 () Bool)

(assert (=> b!2473325 (= e!1568877 e!1568878)))

(declare-fun d!711730 () Bool)

(assert (=> d!711730 e!1568877))

(assert (= b!2473326 b!2473327))

(assert (= b!2473325 b!2473326))

(assert (= (and d!711730 ((_ is Cons!28852) rules!4472)) b!2473325))

(declare-fun lambda!93361 () Int)

(declare-fun order!15659 () Int)

(declare-fun order!15661 () Int)

(declare-fun dynLambda!12403 (Int Int) Int)

(declare-fun dynLambda!12404 (Int Int) Int)

(assert (=> b!2473327 (< (dynLambda!12403 order!15659 (toValue!6361 (transformation!4497 (h!34253 rules!4472)))) (dynLambda!12404 order!15661 lambda!93361))))

(declare-fun order!15663 () Int)

(declare-fun dynLambda!12405 (Int Int) Int)

(assert (=> b!2473327 (< (dynLambda!12405 order!15663 (toChars!6220 (transformation!4497 (h!34253 rules!4472)))) (dynLambda!12404 order!15661 lambda!93361))))

(assert (=> d!711730 true))

(declare-fun lt!883554 () Bool)

(declare-fun forall!5914 (List!28953 Int) Bool)

(assert (=> d!711730 (= lt!883554 (forall!5914 lt!883520 lambda!93361))))

(declare-fun e!1568860 () Bool)

(assert (=> d!711730 (= lt!883554 e!1568860)))

(declare-fun res!1047139 () Bool)

(assert (=> d!711730 (=> res!1047139 e!1568860)))

(assert (=> d!711730 (= res!1047139 (not ((_ is Cons!28853) lt!883520)))))

(assert (=> d!711730 (not (isEmpty!16752 rules!4472))))

(assert (=> d!711730 (= (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 lt!883520) lt!883554)))

(declare-fun b!2473303 () Bool)

(declare-fun e!1568861 () Bool)

(assert (=> b!2473303 (= e!1568860 e!1568861)))

(declare-fun res!1047138 () Bool)

(assert (=> b!2473303 (=> (not res!1047138) (not e!1568861))))

(declare-fun rulesProduceIndividualToken!1824 (LexerInterface!4094 List!28952 Token!8464) Bool)

(assert (=> b!2473303 (= res!1047138 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 lt!883520)))))

(declare-fun b!2473304 () Bool)

(assert (=> b!2473304 (= e!1568861 (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 (t!210272 lt!883520)))))

(assert (= (and d!711730 (not res!1047139)) b!2473303))

(assert (= (and b!2473303 res!1047138) b!2473304))

(declare-fun m!2841909 () Bool)

(assert (=> d!711730 m!2841909))

(assert (=> d!711730 m!2841765))

(declare-fun m!2841911 () Bool)

(assert (=> b!2473303 m!2841911))

(declare-fun m!2841913 () Bool)

(assert (=> b!2473304 m!2841913))

(assert (=> b!2473195 d!711730))

(declare-fun d!711758 () Bool)

(assert (=> d!711758 (= (tail!3930 l!6611) (t!210272 l!6611))))

(assert (=> b!2473195 d!711758))

(declare-fun d!711762 () Bool)

(assert (=> d!711762 (= (isEmpty!16752 rules!4472) ((_ is Nil!28852) rules!4472))))

(assert (=> b!2473205 d!711762))

(declare-fun d!711764 () Bool)

(declare-fun lt!883561 () Token!8464)

(declare-fun contains!4927 (List!28953 Token!8464) Bool)

(assert (=> d!711764 (contains!4927 l!6611 lt!883561)))

(declare-fun e!1568891 () Token!8464)

(assert (=> d!711764 (= lt!883561 e!1568891)))

(declare-fun c!393867 () Bool)

(assert (=> d!711764 (= c!393867 (= (+ 1 i!1803) 0))))

(declare-fun e!1568892 () Bool)

(assert (=> d!711764 e!1568892))

(declare-fun res!1047150 () Bool)

(assert (=> d!711764 (=> (not res!1047150) (not e!1568892))))

(assert (=> d!711764 (= res!1047150 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711764 (= (apply!6806 l!6611 (+ 1 i!1803)) lt!883561)))

(declare-fun b!2473346 () Bool)

(assert (=> b!2473346 (= e!1568892 (< (+ 1 i!1803) (size!22454 l!6611)))))

(declare-fun b!2473347 () Bool)

(declare-fun head!5649 (List!28953) Token!8464)

(assert (=> b!2473347 (= e!1568891 (head!5649 l!6611))))

(declare-fun b!2473348 () Bool)

(assert (=> b!2473348 (= e!1568891 (apply!6806 (tail!3930 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711764 res!1047150) b!2473346))

(assert (= (and d!711764 c!393867) b!2473347))

(assert (= (and d!711764 (not c!393867)) b!2473348))

(declare-fun m!2841921 () Bool)

(assert (=> d!711764 m!2841921))

(assert (=> b!2473346 m!2841745))

(declare-fun m!2841923 () Bool)

(assert (=> b!2473347 m!2841923))

(assert (=> b!2473348 m!2841727))

(assert (=> b!2473348 m!2841727))

(declare-fun m!2841925 () Bool)

(assert (=> b!2473348 m!2841925))

(assert (=> b!2473194 d!711764))

(declare-fun d!711770 () Bool)

(declare-fun lt!883564 () Int)

(assert (=> d!711770 (>= lt!883564 0)))

(declare-fun e!1568897 () Int)

(assert (=> d!711770 (= lt!883564 e!1568897)))

(declare-fun c!393870 () Bool)

(assert (=> d!711770 (= c!393870 ((_ is Nil!28853) lt!883520))))

(assert (=> d!711770 (= (size!22454 lt!883520) lt!883564)))

(declare-fun b!2473355 () Bool)

(assert (=> b!2473355 (= e!1568897 0)))

(declare-fun b!2473356 () Bool)

(assert (=> b!2473356 (= e!1568897 (+ 1 (size!22454 (t!210272 lt!883520))))))

(assert (= (and d!711770 c!393870) b!2473355))

(assert (= (and d!711770 (not c!393870)) b!2473356))

(declare-fun m!2841927 () Bool)

(assert (=> b!2473356 m!2841927))

(assert (=> b!2473204 d!711770))

(declare-fun d!711772 () Bool)

(declare-fun lt!883567 () Int)

(assert (=> d!711772 (>= lt!883567 0)))

(declare-fun e!1568900 () Int)

(assert (=> d!711772 (= lt!883567 e!1568900)))

(declare-fun c!393873 () Bool)

(assert (=> d!711772 (= c!393873 ((_ is Nil!28853) l!6611))))

(assert (=> d!711772 (= (size!22454 l!6611) lt!883567)))

(declare-fun b!2473361 () Bool)

(assert (=> b!2473361 (= e!1568900 0)))

(declare-fun b!2473362 () Bool)

(assert (=> b!2473362 (= e!1568900 (+ 1 (size!22454 (t!210272 l!6611))))))

(assert (= (and d!711772 c!393873) b!2473361))

(assert (= (and d!711772 (not c!393873)) b!2473362))

(declare-fun m!2841929 () Bool)

(assert (=> b!2473362 m!2841929))

(assert (=> b!2473193 d!711772))

(declare-fun d!711774 () Bool)

(declare-fun res!1047162 () Bool)

(declare-fun e!1568955 () Bool)

(assert (=> d!711774 (=> res!1047162 e!1568955)))

(assert (=> d!711774 (= res!1047162 (or (not ((_ is Cons!28853) lt!883520)) (not ((_ is Cons!28853) (t!210272 lt!883520)))))))

(assert (=> d!711774 (= (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 lt!883520 rules!4472) e!1568955)))

(declare-fun b!2473436 () Bool)

(declare-fun e!1568954 () Bool)

(assert (=> b!2473436 (= e!1568955 e!1568954)))

(declare-fun res!1047163 () Bool)

(assert (=> b!2473436 (=> (not res!1047163) (not e!1568954))))

(declare-fun separableTokensPredicate!871 (LexerInterface!4094 Token!8464 Token!8464 List!28952) Bool)

(assert (=> b!2473436 (= res!1047163 (separableTokensPredicate!871 thiss!27932 (h!34254 lt!883520) (h!34254 (t!210272 lt!883520)) rules!4472))))

(declare-datatypes ((Unit!42214 0))(
  ( (Unit!42215) )
))
(declare-fun lt!883590 () Unit!42214)

(declare-fun Unit!42216 () Unit!42214)

(assert (=> b!2473436 (= lt!883590 Unit!42216)))

(declare-fun size!22458 (BalanceConc!18044) Int)

(declare-fun charsOf!2832 (Token!8464) BalanceConc!18044)

(assert (=> b!2473436 (> (size!22458 (charsOf!2832 (h!34254 (t!210272 lt!883520)))) 0)))

(declare-fun lt!883585 () Unit!42214)

(declare-fun Unit!42217 () Unit!42214)

(assert (=> b!2473436 (= lt!883585 Unit!42217)))

(assert (=> b!2473436 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 (t!210272 lt!883520)))))

(declare-fun lt!883588 () Unit!42214)

(declare-fun Unit!42218 () Unit!42214)

(assert (=> b!2473436 (= lt!883588 Unit!42218)))

(assert (=> b!2473436 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 lt!883520))))

(declare-fun lt!883589 () Unit!42214)

(declare-fun lt!883586 () Unit!42214)

(assert (=> b!2473436 (= lt!883589 lt!883586)))

(assert (=> b!2473436 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 (t!210272 lt!883520)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!685 (LexerInterface!4094 List!28952 List!28953 Token!8464) Unit!42214)

(assert (=> b!2473436 (= lt!883586 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!685 thiss!27932 rules!4472 lt!883520 (h!34254 (t!210272 lt!883520))))))

(declare-fun lt!883587 () Unit!42214)

(declare-fun lt!883591 () Unit!42214)

(assert (=> b!2473436 (= lt!883587 lt!883591)))

(assert (=> b!2473436 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 lt!883520))))

(assert (=> b!2473436 (= lt!883591 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!685 thiss!27932 rules!4472 lt!883520 (h!34254 lt!883520)))))

(declare-fun b!2473437 () Bool)

(assert (=> b!2473437 (= e!1568954 (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 (Cons!28853 (h!34254 (t!210272 lt!883520)) (t!210272 (t!210272 lt!883520))) rules!4472))))

(assert (= (and d!711774 (not res!1047162)) b!2473436))

(assert (= (and b!2473436 res!1047163) b!2473437))

(declare-fun m!2841967 () Bool)

(assert (=> b!2473436 m!2841967))

(declare-fun m!2841969 () Bool)

(assert (=> b!2473436 m!2841969))

(declare-fun m!2841971 () Bool)

(assert (=> b!2473436 m!2841971))

(declare-fun m!2841973 () Bool)

(assert (=> b!2473436 m!2841973))

(assert (=> b!2473436 m!2841911))

(assert (=> b!2473436 m!2841969))

(declare-fun m!2841975 () Bool)

(assert (=> b!2473436 m!2841975))

(declare-fun m!2841977 () Bool)

(assert (=> b!2473436 m!2841977))

(declare-fun m!2841979 () Bool)

(assert (=> b!2473437 m!2841979))

(assert (=> b!2473203 d!711774))

(declare-fun b!2473448 () Bool)

(declare-fun e!1568964 () Bool)

(declare-fun e!1568963 () Bool)

(assert (=> b!2473448 (= e!1568964 e!1568963)))

(declare-fun c!393882 () Bool)

(assert (=> b!2473448 (= c!393882 ((_ is IntegerValue!14050) (value!143570 t1!67)))))

(declare-fun b!2473449 () Bool)

(declare-fun inv!17 (TokenValue!4683) Bool)

(assert (=> b!2473449 (= e!1568963 (inv!17 (value!143570 t1!67)))))

(declare-fun d!711792 () Bool)

(declare-fun c!393881 () Bool)

(assert (=> d!711792 (= c!393881 ((_ is IntegerValue!14049) (value!143570 t1!67)))))

(assert (=> d!711792 (= (inv!21 (value!143570 t1!67)) e!1568964)))

(declare-fun b!2473450 () Bool)

(declare-fun res!1047166 () Bool)

(declare-fun e!1568962 () Bool)

(assert (=> b!2473450 (=> res!1047166 e!1568962)))

(assert (=> b!2473450 (= res!1047166 (not ((_ is IntegerValue!14051) (value!143570 t1!67))))))

(assert (=> b!2473450 (= e!1568963 e!1568962)))

(declare-fun b!2473451 () Bool)

(declare-fun inv!15 (TokenValue!4683) Bool)

(assert (=> b!2473451 (= e!1568962 (inv!15 (value!143570 t1!67)))))

(declare-fun b!2473452 () Bool)

(declare-fun inv!16 (TokenValue!4683) Bool)

(assert (=> b!2473452 (= e!1568964 (inv!16 (value!143570 t1!67)))))

(assert (= (and d!711792 c!393881) b!2473452))

(assert (= (and d!711792 (not c!393881)) b!2473448))

(assert (= (and b!2473448 c!393882) b!2473449))

(assert (= (and b!2473448 (not c!393882)) b!2473450))

(assert (= (and b!2473450 (not res!1047166)) b!2473451))

(declare-fun m!2841981 () Bool)

(assert (=> b!2473449 m!2841981))

(declare-fun m!2841983 () Bool)

(assert (=> b!2473451 m!2841983))

(declare-fun m!2841985 () Bool)

(assert (=> b!2473452 m!2841985))

(assert (=> b!2473192 d!711792))

(declare-fun bs!466975 () Bool)

(declare-fun d!711794 () Bool)

(assert (= bs!466975 (and d!711794 d!711730)))

(declare-fun lambda!93363 () Int)

(assert (=> bs!466975 (= lambda!93363 lambda!93361)))

(declare-fun b!2473457 () Bool)

(declare-fun e!1568969 () Bool)

(assert (=> b!2473457 (= e!1568969 true)))

(declare-fun b!2473456 () Bool)

(declare-fun e!1568968 () Bool)

(assert (=> b!2473456 (= e!1568968 e!1568969)))

(declare-fun b!2473455 () Bool)

(declare-fun e!1568967 () Bool)

(assert (=> b!2473455 (= e!1568967 e!1568968)))

(assert (=> d!711794 e!1568967))

(assert (= b!2473456 b!2473457))

(assert (= b!2473455 b!2473456))

(assert (= (and d!711794 ((_ is Cons!28852) rules!4472)) b!2473455))

(assert (=> b!2473457 (< (dynLambda!12403 order!15659 (toValue!6361 (transformation!4497 (h!34253 rules!4472)))) (dynLambda!12404 order!15661 lambda!93363))))

(assert (=> b!2473457 (< (dynLambda!12405 order!15663 (toChars!6220 (transformation!4497 (h!34253 rules!4472)))) (dynLambda!12404 order!15661 lambda!93363))))

(assert (=> d!711794 true))

(declare-fun lt!883592 () Bool)

(assert (=> d!711794 (= lt!883592 (forall!5914 l!6611 lambda!93363))))

(declare-fun e!1568965 () Bool)

(assert (=> d!711794 (= lt!883592 e!1568965)))

(declare-fun res!1047168 () Bool)

(assert (=> d!711794 (=> res!1047168 e!1568965)))

(assert (=> d!711794 (= res!1047168 (not ((_ is Cons!28853) l!6611)))))

(assert (=> d!711794 (not (isEmpty!16752 rules!4472))))

(assert (=> d!711794 (= (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 l!6611) lt!883592)))

(declare-fun b!2473453 () Bool)

(declare-fun e!1568966 () Bool)

(assert (=> b!2473453 (= e!1568965 e!1568966)))

(declare-fun res!1047167 () Bool)

(assert (=> b!2473453 (=> (not res!1047167) (not e!1568966))))

(assert (=> b!2473453 (= res!1047167 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 l!6611)))))

(declare-fun b!2473454 () Bool)

(assert (=> b!2473454 (= e!1568966 (rulesProduceEachTokenIndividuallyList!1410 thiss!27932 rules!4472 (t!210272 l!6611)))))

(assert (= (and d!711794 (not res!1047168)) b!2473453))

(assert (= (and b!2473453 res!1047167) b!2473454))

(declare-fun m!2841987 () Bool)

(assert (=> d!711794 m!2841987))

(assert (=> d!711794 m!2841765))

(declare-fun m!2841989 () Bool)

(assert (=> b!2473453 m!2841989))

(declare-fun m!2841991 () Bool)

(assert (=> b!2473454 m!2841991))

(assert (=> b!2473213 d!711794))

(declare-fun b!2473458 () Bool)

(declare-fun e!1568972 () Bool)

(declare-fun e!1568971 () Bool)

(assert (=> b!2473458 (= e!1568972 e!1568971)))

(declare-fun c!393884 () Bool)

(assert (=> b!2473458 (= c!393884 ((_ is IntegerValue!14050) (value!143570 (h!34254 l!6611))))))

(declare-fun b!2473459 () Bool)

(assert (=> b!2473459 (= e!1568971 (inv!17 (value!143570 (h!34254 l!6611))))))

(declare-fun d!711796 () Bool)

(declare-fun c!393883 () Bool)

(assert (=> d!711796 (= c!393883 ((_ is IntegerValue!14049) (value!143570 (h!34254 l!6611))))))

(assert (=> d!711796 (= (inv!21 (value!143570 (h!34254 l!6611))) e!1568972)))

(declare-fun b!2473460 () Bool)

(declare-fun res!1047169 () Bool)

(declare-fun e!1568970 () Bool)

(assert (=> b!2473460 (=> res!1047169 e!1568970)))

(assert (=> b!2473460 (= res!1047169 (not ((_ is IntegerValue!14051) (value!143570 (h!34254 l!6611)))))))

(assert (=> b!2473460 (= e!1568971 e!1568970)))

(declare-fun b!2473461 () Bool)

(assert (=> b!2473461 (= e!1568970 (inv!15 (value!143570 (h!34254 l!6611))))))

(declare-fun b!2473462 () Bool)

(assert (=> b!2473462 (= e!1568972 (inv!16 (value!143570 (h!34254 l!6611))))))

(assert (= (and d!711796 c!393883) b!2473462))

(assert (= (and d!711796 (not c!393883)) b!2473458))

(assert (= (and b!2473458 c!393884) b!2473459))

(assert (= (and b!2473458 (not c!393884)) b!2473460))

(assert (= (and b!2473460 (not res!1047169)) b!2473461))

(declare-fun m!2841993 () Bool)

(assert (=> b!2473459 m!2841993))

(declare-fun m!2841995 () Bool)

(assert (=> b!2473461 m!2841995))

(declare-fun m!2841997 () Bool)

(assert (=> b!2473462 m!2841997))

(assert (=> b!2473201 d!711796))

(declare-fun d!711798 () Bool)

(declare-fun res!1047170 () Bool)

(declare-fun e!1568974 () Bool)

(assert (=> d!711798 (=> res!1047170 e!1568974)))

(assert (=> d!711798 (= res!1047170 (or (not ((_ is Cons!28853) l!6611)) (not ((_ is Cons!28853) (t!210272 l!6611)))))))

(assert (=> d!711798 (= (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 l!6611 rules!4472) e!1568974)))

(declare-fun b!2473463 () Bool)

(declare-fun e!1568973 () Bool)

(assert (=> b!2473463 (= e!1568974 e!1568973)))

(declare-fun res!1047171 () Bool)

(assert (=> b!2473463 (=> (not res!1047171) (not e!1568973))))

(assert (=> b!2473463 (= res!1047171 (separableTokensPredicate!871 thiss!27932 (h!34254 l!6611) (h!34254 (t!210272 l!6611)) rules!4472))))

(declare-fun lt!883598 () Unit!42214)

(declare-fun Unit!42219 () Unit!42214)

(assert (=> b!2473463 (= lt!883598 Unit!42219)))

(assert (=> b!2473463 (> (size!22458 (charsOf!2832 (h!34254 (t!210272 l!6611)))) 0)))

(declare-fun lt!883593 () Unit!42214)

(declare-fun Unit!42220 () Unit!42214)

(assert (=> b!2473463 (= lt!883593 Unit!42220)))

(assert (=> b!2473463 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 (t!210272 l!6611)))))

(declare-fun lt!883596 () Unit!42214)

(declare-fun Unit!42221 () Unit!42214)

(assert (=> b!2473463 (= lt!883596 Unit!42221)))

(assert (=> b!2473463 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 l!6611))))

(declare-fun lt!883597 () Unit!42214)

(declare-fun lt!883594 () Unit!42214)

(assert (=> b!2473463 (= lt!883597 lt!883594)))

(assert (=> b!2473463 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 (t!210272 l!6611)))))

(assert (=> b!2473463 (= lt!883594 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!685 thiss!27932 rules!4472 l!6611 (h!34254 (t!210272 l!6611))))))

(declare-fun lt!883595 () Unit!42214)

(declare-fun lt!883599 () Unit!42214)

(assert (=> b!2473463 (= lt!883595 lt!883599)))

(assert (=> b!2473463 (rulesProduceIndividualToken!1824 thiss!27932 rules!4472 (h!34254 l!6611))))

(assert (=> b!2473463 (= lt!883599 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!685 thiss!27932 rules!4472 l!6611 (h!34254 l!6611)))))

(declare-fun b!2473464 () Bool)

(assert (=> b!2473464 (= e!1568973 (tokensListTwoByTwoPredicateSeparableList!633 thiss!27932 (Cons!28853 (h!34254 (t!210272 l!6611)) (t!210272 (t!210272 l!6611))) rules!4472))))

(assert (= (and d!711798 (not res!1047170)) b!2473463))

(assert (= (and b!2473463 res!1047171) b!2473464))

(declare-fun m!2841999 () Bool)

(assert (=> b!2473463 m!2841999))

(declare-fun m!2842001 () Bool)

(assert (=> b!2473463 m!2842001))

(declare-fun m!2842003 () Bool)

(assert (=> b!2473463 m!2842003))

(declare-fun m!2842005 () Bool)

(assert (=> b!2473463 m!2842005))

(assert (=> b!2473463 m!2841989))

(assert (=> b!2473463 m!2842001))

(declare-fun m!2842007 () Bool)

(assert (=> b!2473463 m!2842007))

(declare-fun m!2842009 () Bool)

(assert (=> b!2473463 m!2842009))

(declare-fun m!2842011 () Bool)

(assert (=> b!2473464 m!2842011))

(assert (=> b!2473190 d!711798))

(declare-fun d!711800 () Bool)

(declare-fun res!1047174 () Bool)

(declare-fun e!1568977 () Bool)

(assert (=> d!711800 (=> (not res!1047174) (not e!1568977))))

(declare-fun rulesValid!1677 (LexerInterface!4094 List!28952) Bool)

(assert (=> d!711800 (= res!1047174 (rulesValid!1677 thiss!27932 rules!4472))))

(assert (=> d!711800 (= (rulesInvariant!3594 thiss!27932 rules!4472) e!1568977)))

(declare-fun b!2473467 () Bool)

(declare-datatypes ((List!28955 0))(
  ( (Nil!28855) (Cons!28855 (h!34256 String!31711) (t!210350 List!28955)) )
))
(declare-fun noDuplicateTag!1675 (LexerInterface!4094 List!28952 List!28955) Bool)

(assert (=> b!2473467 (= e!1568977 (noDuplicateTag!1675 thiss!27932 rules!4472 Nil!28855))))

(assert (= (and d!711800 res!1047174) b!2473467))

(declare-fun m!2842013 () Bool)

(assert (=> d!711800 m!2842013))

(declare-fun m!2842015 () Bool)

(assert (=> b!2473467 m!2842015))

(assert (=> b!2473211 d!711800))

(declare-fun d!711802 () Bool)

(declare-fun lt!883600 () Token!8464)

(assert (=> d!711802 (contains!4927 l!6611 lt!883600)))

(declare-fun e!1568978 () Token!8464)

(assert (=> d!711802 (= lt!883600 e!1568978)))

(declare-fun c!393885 () Bool)

(assert (=> d!711802 (= c!393885 (= i!1803 0))))

(declare-fun e!1568979 () Bool)

(assert (=> d!711802 e!1568979))

(declare-fun res!1047175 () Bool)

(assert (=> d!711802 (=> (not res!1047175) (not e!1568979))))

(assert (=> d!711802 (= res!1047175 (<= 0 i!1803))))

(assert (=> d!711802 (= (apply!6806 l!6611 i!1803) lt!883600)))

(declare-fun b!2473468 () Bool)

(assert (=> b!2473468 (= e!1568979 (< i!1803 (size!22454 l!6611)))))

(declare-fun b!2473469 () Bool)

(assert (=> b!2473469 (= e!1568978 (head!5649 l!6611))))

(declare-fun b!2473470 () Bool)

(assert (=> b!2473470 (= e!1568978 (apply!6806 (tail!3930 l!6611) (- i!1803 1)))))

(assert (= (and d!711802 res!1047175) b!2473468))

(assert (= (and d!711802 c!393885) b!2473469))

(assert (= (and d!711802 (not c!393885)) b!2473470))

(declare-fun m!2842017 () Bool)

(assert (=> d!711802 m!2842017))

(assert (=> b!2473468 m!2841745))

(assert (=> b!2473469 m!2841923))

(assert (=> b!2473470 m!2841727))

(assert (=> b!2473470 m!2841727))

(declare-fun m!2842019 () Bool)

(assert (=> b!2473470 m!2842019))

(assert (=> b!2473200 d!711802))

(declare-fun d!711804 () Bool)

(assert (=> d!711804 (= (inv!38940 (tag!4987 (h!34253 rules!4472))) (= (mod (str.len (value!143569 (tag!4987 (h!34253 rules!4472)))) 2) 0))))

(assert (=> b!2473210 d!711804))

(declare-fun d!711806 () Bool)

(declare-fun res!1047176 () Bool)

(declare-fun e!1568980 () Bool)

(assert (=> d!711806 (=> (not res!1047176) (not e!1568980))))

(assert (=> d!711806 (= res!1047176 (semiInverseModEq!1854 (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toValue!6361 (transformation!4497 (h!34253 rules!4472)))))))

(assert (=> d!711806 (= (inv!38943 (transformation!4497 (h!34253 rules!4472))) e!1568980)))

(declare-fun b!2473471 () Bool)

(assert (=> b!2473471 (= e!1568980 (equivClasses!1765 (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toValue!6361 (transformation!4497 (h!34253 rules!4472)))))))

(assert (= (and d!711806 res!1047176) b!2473471))

(declare-fun m!2842021 () Bool)

(assert (=> d!711806 m!2842021))

(declare-fun m!2842023 () Bool)

(assert (=> b!2473471 m!2842023))

(assert (=> b!2473210 d!711806))

(declare-fun d!711808 () Bool)

(assert (=> d!711808 (= (inv!38940 (tag!4987 (rule!6855 (h!34254 l!6611)))) (= (mod (str.len (value!143569 (tag!4987 (rule!6855 (h!34254 l!6611))))) 2) 0))))

(assert (=> b!2473209 d!711808))

(declare-fun d!711810 () Bool)

(declare-fun res!1047177 () Bool)

(declare-fun e!1568981 () Bool)

(assert (=> d!711810 (=> (not res!1047177) (not e!1568981))))

(assert (=> d!711810 (= res!1047177 (semiInverseModEq!1854 (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toValue!6361 (transformation!4497 (rule!6855 (h!34254 l!6611))))))))

(assert (=> d!711810 (= (inv!38943 (transformation!4497 (rule!6855 (h!34254 l!6611)))) e!1568981)))

(declare-fun b!2473472 () Bool)

(assert (=> b!2473472 (= e!1568981 (equivClasses!1765 (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toValue!6361 (transformation!4497 (rule!6855 (h!34254 l!6611))))))))

(assert (= (and d!711810 res!1047177) b!2473472))

(declare-fun m!2842025 () Bool)

(assert (=> d!711810 m!2842025))

(declare-fun m!2842027 () Bool)

(assert (=> b!2473472 m!2842027))

(assert (=> b!2473209 d!711810))

(declare-fun d!711812 () Bool)

(assert (=> d!711812 (= (inv!38940 (tag!4987 (rule!6855 t1!67))) (= (mod (str.len (value!143569 (tag!4987 (rule!6855 t1!67)))) 2) 0))))

(assert (=> b!2473198 d!711812))

(declare-fun d!711814 () Bool)

(declare-fun res!1047178 () Bool)

(declare-fun e!1568982 () Bool)

(assert (=> d!711814 (=> (not res!1047178) (not e!1568982))))

(assert (=> d!711814 (= res!1047178 (semiInverseModEq!1854 (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toValue!6361 (transformation!4497 (rule!6855 t1!67)))))))

(assert (=> d!711814 (= (inv!38943 (transformation!4497 (rule!6855 t1!67))) e!1568982)))

(declare-fun b!2473473 () Bool)

(assert (=> b!2473473 (= e!1568982 (equivClasses!1765 (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toValue!6361 (transformation!4497 (rule!6855 t1!67)))))))

(assert (= (and d!711814 res!1047178) b!2473473))

(declare-fun m!2842029 () Bool)

(assert (=> d!711814 m!2842029))

(declare-fun m!2842031 () Bool)

(assert (=> b!2473473 m!2842031))

(assert (=> b!2473198 d!711814))

(declare-fun b!2473474 () Bool)

(declare-fun e!1568985 () Bool)

(declare-fun e!1568984 () Bool)

(assert (=> b!2473474 (= e!1568985 e!1568984)))

(declare-fun c!393887 () Bool)

(assert (=> b!2473474 (= c!393887 ((_ is IntegerValue!14050) (value!143570 t2!67)))))

(declare-fun b!2473475 () Bool)

(assert (=> b!2473475 (= e!1568984 (inv!17 (value!143570 t2!67)))))

(declare-fun d!711816 () Bool)

(declare-fun c!393886 () Bool)

(assert (=> d!711816 (= c!393886 ((_ is IntegerValue!14049) (value!143570 t2!67)))))

(assert (=> d!711816 (= (inv!21 (value!143570 t2!67)) e!1568985)))

(declare-fun b!2473476 () Bool)

(declare-fun res!1047179 () Bool)

(declare-fun e!1568983 () Bool)

(assert (=> b!2473476 (=> res!1047179 e!1568983)))

(assert (=> b!2473476 (= res!1047179 (not ((_ is IntegerValue!14051) (value!143570 t2!67))))))

(assert (=> b!2473476 (= e!1568984 e!1568983)))

(declare-fun b!2473477 () Bool)

(assert (=> b!2473477 (= e!1568983 (inv!15 (value!143570 t2!67)))))

(declare-fun b!2473478 () Bool)

(assert (=> b!2473478 (= e!1568985 (inv!16 (value!143570 t2!67)))))

(assert (= (and d!711816 c!393886) b!2473478))

(assert (= (and d!711816 (not c!393886)) b!2473474))

(assert (= (and b!2473474 c!393887) b!2473475))

(assert (= (and b!2473474 (not c!393887)) b!2473476))

(assert (= (and b!2473476 (not res!1047179)) b!2473477))

(declare-fun m!2842033 () Bool)

(assert (=> b!2473475 m!2842033))

(declare-fun m!2842035 () Bool)

(assert (=> b!2473477 m!2842035))

(declare-fun m!2842037 () Bool)

(assert (=> b!2473478 m!2842037))

(assert (=> b!2473197 d!711816))

(declare-fun e!1568988 () Bool)

(assert (=> b!2473207 (= tp!790567 e!1568988)))

(declare-fun b!2473489 () Bool)

(declare-fun tp_is_empty!11971 () Bool)

(assert (=> b!2473489 (= e!1568988 tp_is_empty!11971)))

(declare-fun b!2473492 () Bool)

(declare-fun tp!790654 () Bool)

(declare-fun tp!790652 () Bool)

(assert (=> b!2473492 (= e!1568988 (and tp!790654 tp!790652))))

(declare-fun b!2473491 () Bool)

(declare-fun tp!790655 () Bool)

(assert (=> b!2473491 (= e!1568988 tp!790655)))

(declare-fun b!2473490 () Bool)

(declare-fun tp!790653 () Bool)

(declare-fun tp!790656 () Bool)

(assert (=> b!2473490 (= e!1568988 (and tp!790653 tp!790656))))

(assert (= (and b!2473207 ((_ is ElementMatch!7285) (regex!4497 (rule!6855 t2!67)))) b!2473489))

(assert (= (and b!2473207 ((_ is Concat!11969) (regex!4497 (rule!6855 t2!67)))) b!2473490))

(assert (= (and b!2473207 ((_ is Star!7285) (regex!4497 (rule!6855 t2!67)))) b!2473491))

(assert (= (and b!2473207 ((_ is Union!7285) (regex!4497 (rule!6855 t2!67)))) b!2473492))

(declare-fun b!2473506 () Bool)

(declare-fun b_free!71597 () Bool)

(declare-fun b_next!72301 () Bool)

(assert (=> b!2473506 (= b_free!71597 (not b_next!72301))))

(declare-fun tp!790669 () Bool)

(declare-fun b_and!187677 () Bool)

(assert (=> b!2473506 (= tp!790669 b_and!187677)))

(declare-fun b_free!71599 () Bool)

(declare-fun b_next!72303 () Bool)

(assert (=> b!2473506 (= b_free!71599 (not b_next!72303))))

(declare-fun t!210339 () Bool)

(declare-fun tb!140125 () Bool)

(assert (=> (and b!2473506 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210339) tb!140125))

(declare-fun result!172932 () Bool)

(assert (= result!172932 result!172856))

(assert (=> b!2473222 t!210339))

(declare-fun tb!140127 () Bool)

(declare-fun t!210341 () Bool)

(assert (=> (and b!2473506 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210341) tb!140127))

(declare-fun result!172934 () Bool)

(assert (= result!172934 result!172866))

(assert (=> b!2473229 t!210341))

(declare-fun t!210343 () Bool)

(declare-fun tb!140129 () Bool)

(assert (=> (and b!2473506 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210343) tb!140129))

(declare-fun result!172936 () Bool)

(assert (= result!172936 result!172874))

(assert (=> b!2473232 t!210343))

(declare-fun tp!790670 () Bool)

(declare-fun b_and!187679 () Bool)

(assert (=> b!2473506 (= tp!790670 (and (=> t!210339 result!172932) (=> t!210341 result!172934) (=> t!210343 result!172936) b_and!187679))))

(declare-fun tp!790667 () Bool)

(declare-fun e!1569004 () Bool)

(declare-fun e!1569006 () Bool)

(declare-fun b!2473503 () Bool)

(assert (=> b!2473503 (= e!1569004 (and (inv!38944 (h!34254 (t!210272 l!6611))) e!1569006 tp!790667))))

(declare-fun e!1569001 () Bool)

(assert (=> b!2473506 (= e!1569001 (and tp!790669 tp!790670))))

(declare-fun e!1569003 () Bool)

(declare-fun b!2473505 () Bool)

(declare-fun tp!790668 () Bool)

(assert (=> b!2473505 (= e!1569003 (and tp!790668 (inv!38940 (tag!4987 (rule!6855 (h!34254 (t!210272 l!6611))))) (inv!38943 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) e!1569001))))

(assert (=> b!2473206 (= tp!790555 e!1569004)))

(declare-fun b!2473504 () Bool)

(declare-fun tp!790671 () Bool)

(assert (=> b!2473504 (= e!1569006 (and (inv!21 (value!143570 (h!34254 (t!210272 l!6611)))) e!1569003 tp!790671))))

(assert (= b!2473505 b!2473506))

(assert (= b!2473504 b!2473505))

(assert (= b!2473503 b!2473504))

(assert (= (and b!2473206 ((_ is Cons!28853) (t!210272 l!6611))) b!2473503))

(declare-fun m!2842039 () Bool)

(assert (=> b!2473503 m!2842039))

(declare-fun m!2842041 () Bool)

(assert (=> b!2473505 m!2842041))

(declare-fun m!2842043 () Bool)

(assert (=> b!2473505 m!2842043))

(declare-fun m!2842045 () Bool)

(assert (=> b!2473504 m!2842045))

(declare-fun b!2473517 () Bool)

(declare-fun b_free!71601 () Bool)

(declare-fun b_next!72305 () Bool)

(assert (=> b!2473517 (= b_free!71601 (not b_next!72305))))

(declare-fun tp!790681 () Bool)

(declare-fun b_and!187681 () Bool)

(assert (=> b!2473517 (= tp!790681 b_and!187681)))

(declare-fun b_free!71603 () Bool)

(declare-fun b_next!72307 () Bool)

(assert (=> b!2473517 (= b_free!71603 (not b_next!72307))))

(declare-fun tb!140131 () Bool)

(declare-fun t!210345 () Bool)

(assert (=> (and b!2473517 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611))))) t!210345) tb!140131))

(declare-fun result!172940 () Bool)

(assert (= result!172940 result!172856))

(assert (=> b!2473222 t!210345))

(declare-fun t!210347 () Bool)

(declare-fun tb!140133 () Bool)

(assert (=> (and b!2473517 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 t2!67)))) t!210347) tb!140133))

(declare-fun result!172942 () Bool)

(assert (= result!172942 result!172866))

(assert (=> b!2473229 t!210347))

(declare-fun tb!140135 () Bool)

(declare-fun t!210349 () Bool)

(assert (=> (and b!2473517 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 t1!67)))) t!210349) tb!140135))

(declare-fun result!172944 () Bool)

(assert (= result!172944 result!172874))

(assert (=> b!2473232 t!210349))

(declare-fun tp!790680 () Bool)

(declare-fun b_and!187683 () Bool)

(assert (=> b!2473517 (= tp!790680 (and (=> t!210345 result!172940) (=> t!210347 result!172942) (=> t!210349 result!172944) b_and!187683))))

(declare-fun e!1569017 () Bool)

(assert (=> b!2473517 (= e!1569017 (and tp!790681 tp!790680))))

(declare-fun tp!790682 () Bool)

(declare-fun b!2473516 () Bool)

(declare-fun e!1569016 () Bool)

(assert (=> b!2473516 (= e!1569016 (and tp!790682 (inv!38940 (tag!4987 (h!34253 (t!210271 rules!4472)))) (inv!38943 (transformation!4497 (h!34253 (t!210271 rules!4472)))) e!1569017))))

(declare-fun b!2473515 () Bool)

(declare-fun e!1569018 () Bool)

(declare-fun tp!790683 () Bool)

(assert (=> b!2473515 (= e!1569018 (and e!1569016 tp!790683))))

(assert (=> b!2473214 (= tp!790562 e!1569018)))

(assert (= b!2473516 b!2473517))

(assert (= b!2473515 b!2473516))

(assert (= (and b!2473214 ((_ is Cons!28852) (t!210271 rules!4472))) b!2473515))

(declare-fun m!2842047 () Bool)

(assert (=> b!2473516 m!2842047))

(declare-fun m!2842049 () Bool)

(assert (=> b!2473516 m!2842049))

(declare-fun b!2473522 () Bool)

(declare-fun e!1569021 () Bool)

(declare-fun tp!790686 () Bool)

(assert (=> b!2473522 (= e!1569021 (and tp_is_empty!11971 tp!790686))))

(assert (=> b!2473192 (= tp!790558 e!1569021)))

(assert (= (and b!2473192 ((_ is Cons!28851) (originalCharacters!5263 t1!67))) b!2473522))

(declare-fun b!2473523 () Bool)

(declare-fun e!1569022 () Bool)

(declare-fun tp!790687 () Bool)

(assert (=> b!2473523 (= e!1569022 (and tp_is_empty!11971 tp!790687))))

(assert (=> b!2473201 (= tp!790565 e!1569022)))

(assert (= (and b!2473201 ((_ is Cons!28851) (originalCharacters!5263 (h!34254 l!6611)))) b!2473523))

(declare-fun e!1569023 () Bool)

(assert (=> b!2473210 (= tp!790566 e!1569023)))

(declare-fun b!2473524 () Bool)

(assert (=> b!2473524 (= e!1569023 tp_is_empty!11971)))

(declare-fun b!2473527 () Bool)

(declare-fun tp!790690 () Bool)

(declare-fun tp!790688 () Bool)

(assert (=> b!2473527 (= e!1569023 (and tp!790690 tp!790688))))

(declare-fun b!2473526 () Bool)

(declare-fun tp!790691 () Bool)

(assert (=> b!2473526 (= e!1569023 tp!790691)))

(declare-fun b!2473525 () Bool)

(declare-fun tp!790689 () Bool)

(declare-fun tp!790692 () Bool)

(assert (=> b!2473525 (= e!1569023 (and tp!790689 tp!790692))))

(assert (= (and b!2473210 ((_ is ElementMatch!7285) (regex!4497 (h!34253 rules!4472)))) b!2473524))

(assert (= (and b!2473210 ((_ is Concat!11969) (regex!4497 (h!34253 rules!4472)))) b!2473525))

(assert (= (and b!2473210 ((_ is Star!7285) (regex!4497 (h!34253 rules!4472)))) b!2473526))

(assert (= (and b!2473210 ((_ is Union!7285) (regex!4497 (h!34253 rules!4472)))) b!2473527))

(declare-fun e!1569024 () Bool)

(assert (=> b!2473209 (= tp!790556 e!1569024)))

(declare-fun b!2473528 () Bool)

(assert (=> b!2473528 (= e!1569024 tp_is_empty!11971)))

(declare-fun b!2473531 () Bool)

(declare-fun tp!790695 () Bool)

(declare-fun tp!790693 () Bool)

(assert (=> b!2473531 (= e!1569024 (and tp!790695 tp!790693))))

(declare-fun b!2473530 () Bool)

(declare-fun tp!790696 () Bool)

(assert (=> b!2473530 (= e!1569024 tp!790696)))

(declare-fun b!2473529 () Bool)

(declare-fun tp!790694 () Bool)

(declare-fun tp!790697 () Bool)

(assert (=> b!2473529 (= e!1569024 (and tp!790694 tp!790697))))

(assert (= (and b!2473209 ((_ is ElementMatch!7285) (regex!4497 (rule!6855 (h!34254 l!6611))))) b!2473528))

(assert (= (and b!2473209 ((_ is Concat!11969) (regex!4497 (rule!6855 (h!34254 l!6611))))) b!2473529))

(assert (= (and b!2473209 ((_ is Star!7285) (regex!4497 (rule!6855 (h!34254 l!6611))))) b!2473530))

(assert (= (and b!2473209 ((_ is Union!7285) (regex!4497 (rule!6855 (h!34254 l!6611))))) b!2473531))

(declare-fun e!1569025 () Bool)

(assert (=> b!2473198 (= tp!790560 e!1569025)))

(declare-fun b!2473532 () Bool)

(assert (=> b!2473532 (= e!1569025 tp_is_empty!11971)))

(declare-fun b!2473535 () Bool)

(declare-fun tp!790700 () Bool)

(declare-fun tp!790698 () Bool)

(assert (=> b!2473535 (= e!1569025 (and tp!790700 tp!790698))))

(declare-fun b!2473534 () Bool)

(declare-fun tp!790701 () Bool)

(assert (=> b!2473534 (= e!1569025 tp!790701)))

(declare-fun b!2473533 () Bool)

(declare-fun tp!790699 () Bool)

(declare-fun tp!790702 () Bool)

(assert (=> b!2473533 (= e!1569025 (and tp!790699 tp!790702))))

(assert (= (and b!2473198 ((_ is ElementMatch!7285) (regex!4497 (rule!6855 t1!67)))) b!2473532))

(assert (= (and b!2473198 ((_ is Concat!11969) (regex!4497 (rule!6855 t1!67)))) b!2473533))

(assert (= (and b!2473198 ((_ is Star!7285) (regex!4497 (rule!6855 t1!67)))) b!2473534))

(assert (= (and b!2473198 ((_ is Union!7285) (regex!4497 (rule!6855 t1!67)))) b!2473535))

(declare-fun b!2473536 () Bool)

(declare-fun e!1569026 () Bool)

(declare-fun tp!790703 () Bool)

(assert (=> b!2473536 (= e!1569026 (and tp_is_empty!11971 tp!790703))))

(assert (=> b!2473197 (= tp!790564 e!1569026)))

(assert (= (and b!2473197 ((_ is Cons!28851) (originalCharacters!5263 t2!67))) b!2473536))

(declare-fun b_lambda!75905 () Bool)

(assert (= b_lambda!75891 (or (and b!2473517 b_free!71603 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 t1!67))))) (and b!2473212 b_free!71583 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 t1!67))))) (and b!2473199 b_free!71575 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toChars!6220 (transformation!4497 (rule!6855 t1!67))))) (and b!2473196 b_free!71579 (= (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toChars!6220 (transformation!4497 (rule!6855 t1!67))))) (and b!2473208 b_free!71587) (and b!2473506 b_free!71599 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 t1!67))))) b_lambda!75905)))

(declare-fun b_lambda!75907 () Bool)

(assert (= b_lambda!75889 (or (and b!2473506 b_free!71599 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 t2!67))))) (and b!2473212 b_free!71583 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 t2!67))))) (and b!2473196 b_free!71579) (and b!2473199 b_free!71575 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))) (toChars!6220 (transformation!4497 (rule!6855 t2!67))))) (and b!2473517 b_free!71603 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 t2!67))))) (and b!2473208 b_free!71587 (= (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toChars!6220 (transformation!4497 (rule!6855 t2!67))))) b_lambda!75907)))

(declare-fun b_lambda!75909 () Bool)

(assert (= b_lambda!75887 (or (and b!2473517 b_free!71603 (= (toChars!6220 (transformation!4497 (h!34253 (t!210271 rules!4472)))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))))) (and b!2473199 b_free!71575) (and b!2473212 b_free!71583 (= (toChars!6220 (transformation!4497 (h!34253 rules!4472))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))))) (and b!2473196 b_free!71579 (= (toChars!6220 (transformation!4497 (rule!6855 t2!67))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))))) (and b!2473208 b_free!71587 (= (toChars!6220 (transformation!4497 (rule!6855 t1!67))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))))) (and b!2473506 b_free!71599 (= (toChars!6220 (transformation!4497 (rule!6855 (h!34254 (t!210272 l!6611))))) (toChars!6220 (transformation!4497 (rule!6855 (h!34254 l!6611)))))) b_lambda!75909)))

(check-sat b_and!187617 (not b!2473356) (not b!2473346) (not b!2473527) (not b!2473468) (not b!2473534) tp_is_empty!11971 (not b!2473471) (not b_lambda!75907) (not b!2473469) (not b!2473490) (not d!711806) b_and!187641 (not b_next!72285) (not b!2473230) (not d!711810) (not b!2473472) (not tb!140081) (not b!2473504) (not tb!140073) (not b!2473533) (not d!711814) (not d!711730) (not b_next!72287) (not d!711724) (not b!2473325) (not d!711720) (not b!2473463) (not b_next!72291) (not b!2473523) b_and!187677 (not b_next!72301) (not b!2473515) b_and!187605 (not b_next!72283) (not d!711794) (not b!2473473) (not b!2473231) (not b!2473516) (not b!2473234) (not b!2473455) (not tb!140065) (not b!2473461) (not b!2473477) (not b!2473222) (not d!711728) (not b!2473536) (not b!2473478) b_and!187613 (not d!711800) (not b_next!72289) (not b!2473348) (not b!2473452) (not b!2473347) b_and!187609 (not b!2473217) (not b!2473233) (not b!2473449) (not b!2473505) (not d!711802) (not b!2473492) (not b!2473503) (not b_lambda!75905) (not d!711726) (not b!2473462) (not b!2473451) b_and!187681 (not b!2473459) (not b!2473229) (not b!2473362) (not b!2473491) (not b!2473529) (not b!2473467) (not b!2473453) (not b_lambda!75909) (not b!2473303) (not b!2473228) (not b!2473526) b_and!187643 (not b!2473470) (not b_next!72277) (not b!2473464) (not b!2473223) (not b!2473436) (not b!2473531) (not b!2473522) (not b_next!72279) (not b_next!72307) (not b!2473454) b_and!187679 (not b!2473475) (not b!2473304) (not b_next!72281) (not b_next!72303) (not b!2473437) (not b!2473530) (not d!711764) (not b!2473525) (not b!2473232) b_and!187637 b_and!187639 b_and!187683 (not b_next!72305) (not b!2473535))
(check-sat b_and!187617 (not b_next!72287) (not b_next!72291) b_and!187613 (not b_next!72289) b_and!187609 b_and!187681 b_and!187643 (not b_next!72277) (not b_next!72281) (not b_next!72303) b_and!187641 (not b_next!72285) b_and!187677 (not b_next!72301) b_and!187605 (not b_next!72283) (not b_next!72279) b_and!187679 (not b_next!72307) b_and!187637 b_and!187639 b_and!187683 (not b_next!72305))

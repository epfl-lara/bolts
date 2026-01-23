; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137182 () Bool)

(assert start!137182)

(declare-fun b!1466838 () Bool)

(declare-fun b_free!36747 () Bool)

(declare-fun b_next!37451 () Bool)

(assert (=> b!1466838 (= b_free!36747 (not b_next!37451))))

(declare-fun tp!412752 () Bool)

(declare-fun b_and!100221 () Bool)

(assert (=> b!1466838 (= tp!412752 b_and!100221)))

(declare-fun b_free!36749 () Bool)

(declare-fun b_next!37453 () Bool)

(assert (=> b!1466838 (= b_free!36749 (not b_next!37453))))

(declare-fun tp!412756 () Bool)

(declare-fun b_and!100223 () Bool)

(assert (=> b!1466838 (= tp!412756 b_and!100223)))

(declare-fun b!1466833 () Bool)

(declare-fun e!936128 () Bool)

(declare-datatypes ((LexerInterface!2359 0))(
  ( (LexerInterfaceExt!2356 (__x!9376 Int)) (Lexer!2357) )
))
(declare-fun thiss!20360 () LexerInterface!2359)

(declare-datatypes ((List!15347 0))(
  ( (Nil!15281) (Cons!15281 (h!20682 (_ BitVec 16)) (t!135046 List!15347)) )
))
(declare-datatypes ((TokenValue!2793 0))(
  ( (FloatLiteralValue!5586 (text!19996 List!15347)) (TokenValueExt!2792 (__x!9377 Int)) (Broken!13965 (value!86657 List!15347)) (Object!2858) (End!2793) (Def!2793) (Underscore!2793) (Match!2793) (Else!2793) (Error!2793) (Case!2793) (If!2793) (Extends!2793) (Abstract!2793) (Class!2793) (Val!2793) (DelimiterValue!5586 (del!2853 List!15347)) (KeywordValue!2799 (value!86658 List!15347)) (CommentValue!5586 (value!86659 List!15347)) (WhitespaceValue!5586 (value!86660 List!15347)) (IndentationValue!2793 (value!86661 List!15347)) (String!18220) (Int32!2793) (Broken!13966 (value!86662 List!15347)) (Boolean!2794) (Unit!25052) (OperatorValue!2796 (op!2853 List!15347)) (IdentifierValue!5586 (value!86663 List!15347)) (IdentifierValue!5587 (value!86664 List!15347)) (WhitespaceValue!5587 (value!86665 List!15347)) (True!5586) (False!5586) (Broken!13967 (value!86666 List!15347)) (Broken!13968 (value!86667 List!15347)) (True!5587) (RightBrace!2793) (RightBracket!2793) (Colon!2793) (Null!2793) (Comma!2793) (LeftBracket!2793) (False!5587) (LeftBrace!2793) (ImaginaryLiteralValue!2793 (text!19997 List!15347)) (StringLiteralValue!8379 (value!86668 List!15347)) (EOFValue!2793 (value!86669 List!15347)) (IdentValue!2793 (value!86670 List!15347)) (DelimiterValue!5587 (value!86671 List!15347)) (DedentValue!2793 (value!86672 List!15347)) (NewLineValue!2793 (value!86673 List!15347)) (IntegerValue!8379 (value!86674 (_ BitVec 32)) (text!19998 List!15347)) (IntegerValue!8380 (value!86675 Int) (text!19999 List!15347)) (Times!2793) (Or!2793) (Equal!2793) (Minus!2793) (Broken!13969 (value!86676 List!15347)) (And!2793) (Div!2793) (LessEqual!2793) (Mod!2793) (Concat!6810) (Not!2793) (Plus!2793) (SpaceValue!2793 (value!86677 List!15347)) (IntegerValue!8381 (value!86678 Int) (text!20000 List!15347)) (StringLiteralValue!8380 (text!20001 List!15347)) (FloatLiteralValue!5587 (text!20002 List!15347)) (BytesLiteralValue!2793 (value!86679 List!15347)) (CommentValue!5587 (value!86680 List!15347)) (StringLiteralValue!8381 (value!86681 List!15347)) (ErrorTokenValue!2793 (msg!2854 List!15347)) )
))
(declare-datatypes ((C!8212 0))(
  ( (C!8213 (val!4676 Int)) )
))
(declare-datatypes ((List!15348 0))(
  ( (Nil!15282) (Cons!15282 (h!20683 C!8212) (t!135047 List!15348)) )
))
(declare-datatypes ((IArray!10423 0))(
  ( (IArray!10424 (innerList!5269 List!15348)) )
))
(declare-datatypes ((Conc!5209 0))(
  ( (Node!5209 (left!12959 Conc!5209) (right!13289 Conc!5209) (csize!10648 Int) (cheight!5420 Int)) (Leaf!7762 (xs!7964 IArray!10423) (csize!10649 Int)) (Empty!5209) )
))
(declare-datatypes ((BalanceConc!10358 0))(
  ( (BalanceConc!10359 (c!241793 Conc!5209)) )
))
(declare-datatypes ((TokenValueInjection!5246 0))(
  ( (TokenValueInjection!5247 (toValue!4014 Int) (toChars!3873 Int)) )
))
(declare-datatypes ((Regex!4017 0))(
  ( (ElementMatch!4017 (c!241794 C!8212)) (Concat!6811 (regOne!8546 Regex!4017) (regTwo!8546 Regex!4017)) (EmptyExpr!4017) (Star!4017 (reg!4346 Regex!4017)) (EmptyLang!4017) (Union!4017 (regOne!8547 Regex!4017) (regTwo!8547 Regex!4017)) )
))
(declare-datatypes ((String!18221 0))(
  ( (String!18222 (value!86682 String)) )
))
(declare-datatypes ((Rule!5206 0))(
  ( (Rule!5207 (regex!2703 Regex!4017) (tag!2967 String!18221) (isSeparator!2703 Bool) (transformation!2703 TokenValueInjection!5246)) )
))
(declare-datatypes ((Token!5068 0))(
  ( (Token!5069 (value!86683 TokenValue!2793) (rule!4480 Rule!5206) (size!12469 Int) (originalCharacters!3565 List!15348)) )
))
(declare-datatypes ((List!15349 0))(
  ( (Nil!15283) (Cons!15283 (h!20684 Token!5068) (t!135048 List!15349)) )
))
(declare-fun tokens1!47 () List!15349)

(declare-fun printList!751 (LexerInterface!2359 List!15349) List!15348)

(declare-fun list!6121 (BalanceConc!10358) List!15348)

(declare-fun charsOf!1558 (Token!5068) BalanceConc!10358)

(assert (=> b!1466833 (= e!936128 (not (= (printList!751 thiss!20360 tokens1!47) (list!6121 (charsOf!1558 (h!20684 tokens1!47))))))))

(declare-fun tp!412754 () Bool)

(declare-fun e!936130 () Bool)

(declare-fun b!1466834 () Bool)

(declare-fun e!936131 () Bool)

(declare-fun inv!20423 (Token!5068) Bool)

(assert (=> b!1466834 (= e!936130 (and (inv!20423 (h!20684 tokens1!47)) e!936131 tp!412754))))

(declare-fun tp!412753 () Bool)

(declare-fun e!936126 () Bool)

(declare-fun b!1466835 () Bool)

(declare-fun inv!21 (TokenValue!2793) Bool)

(assert (=> b!1466835 (= e!936131 (and (inv!21 (value!86683 (h!20684 tokens1!47))) e!936126 tp!412753))))

(declare-fun b!1466836 () Bool)

(declare-fun e!936132 () Bool)

(declare-fun tp!412755 () Bool)

(declare-fun inv!20420 (String!18221) Bool)

(declare-fun inv!20424 (TokenValueInjection!5246) Bool)

(assert (=> b!1466836 (= e!936126 (and tp!412755 (inv!20420 (tag!2967 (rule!4480 (h!20684 tokens1!47)))) (inv!20424 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) e!936132))))

(declare-fun b!1466837 () Bool)

(declare-fun res!663939 () Bool)

(assert (=> b!1466837 (=> (not res!663939) (not e!936128))))

(declare-fun isEmpty!9585 (List!15349) Bool)

(assert (=> b!1466837 (= res!663939 (isEmpty!9585 (t!135048 tokens1!47)))))

(assert (=> b!1466838 (= e!936132 (and tp!412752 tp!412756))))

(declare-fun res!663938 () Bool)

(assert (=> start!137182 (=> (not res!663938) (not e!936128))))

(get-info :version)

(assert (=> start!137182 (= res!663938 (and ((_ is Lexer!2357) thiss!20360) ((_ is Cons!15283) tokens1!47)))))

(assert (=> start!137182 e!936128))

(assert (=> start!137182 true))

(assert (=> start!137182 e!936130))

(assert (= (and start!137182 res!663938) b!1466837))

(assert (= (and b!1466837 res!663939) b!1466833))

(assert (= b!1466836 b!1466838))

(assert (= b!1466835 b!1466836))

(assert (= b!1466834 b!1466835))

(assert (= (and start!137182 ((_ is Cons!15283) tokens1!47)) b!1466834))

(declare-fun m!1711529 () Bool)

(assert (=> b!1466836 m!1711529))

(declare-fun m!1711531 () Bool)

(assert (=> b!1466836 m!1711531))

(declare-fun m!1711533 () Bool)

(assert (=> b!1466833 m!1711533))

(declare-fun m!1711535 () Bool)

(assert (=> b!1466833 m!1711535))

(assert (=> b!1466833 m!1711535))

(declare-fun m!1711537 () Bool)

(assert (=> b!1466833 m!1711537))

(declare-fun m!1711539 () Bool)

(assert (=> b!1466837 m!1711539))

(declare-fun m!1711541 () Bool)

(assert (=> b!1466835 m!1711541))

(declare-fun m!1711543 () Bool)

(assert (=> b!1466834 m!1711543))

(check-sat (not b!1466837) (not b!1466833) (not b!1466836) (not b!1466834) (not b_next!37453) b_and!100223 b_and!100221 (not b_next!37451) (not b!1466835))
(check-sat b_and!100221 b_and!100223 (not b_next!37451) (not b_next!37453))
(get-model)

(declare-fun b!1466859 () Bool)

(declare-fun e!936146 () Bool)

(declare-fun inv!15 (TokenValue!2793) Bool)

(assert (=> b!1466859 (= e!936146 (inv!15 (value!86683 (h!20684 tokens1!47))))))

(declare-fun b!1466860 () Bool)

(declare-fun e!936144 () Bool)

(declare-fun e!936145 () Bool)

(assert (=> b!1466860 (= e!936144 e!936145)))

(declare-fun c!241802 () Bool)

(assert (=> b!1466860 (= c!241802 ((_ is IntegerValue!8380) (value!86683 (h!20684 tokens1!47))))))

(declare-fun b!1466861 () Bool)

(declare-fun inv!17 (TokenValue!2793) Bool)

(assert (=> b!1466861 (= e!936145 (inv!17 (value!86683 (h!20684 tokens1!47))))))

(declare-fun d!430395 () Bool)

(declare-fun c!241803 () Bool)

(assert (=> d!430395 (= c!241803 ((_ is IntegerValue!8379) (value!86683 (h!20684 tokens1!47))))))

(assert (=> d!430395 (= (inv!21 (value!86683 (h!20684 tokens1!47))) e!936144)))

(declare-fun b!1466862 () Bool)

(declare-fun inv!16 (TokenValue!2793) Bool)

(assert (=> b!1466862 (= e!936144 (inv!16 (value!86683 (h!20684 tokens1!47))))))

(declare-fun b!1466863 () Bool)

(declare-fun res!663946 () Bool)

(assert (=> b!1466863 (=> res!663946 e!936146)))

(assert (=> b!1466863 (= res!663946 (not ((_ is IntegerValue!8381) (value!86683 (h!20684 tokens1!47)))))))

(assert (=> b!1466863 (= e!936145 e!936146)))

(assert (= (and d!430395 c!241803) b!1466862))

(assert (= (and d!430395 (not c!241803)) b!1466860))

(assert (= (and b!1466860 c!241802) b!1466861))

(assert (= (and b!1466860 (not c!241802)) b!1466863))

(assert (= (and b!1466863 (not res!663946)) b!1466859))

(declare-fun m!1711551 () Bool)

(assert (=> b!1466859 m!1711551))

(declare-fun m!1711553 () Bool)

(assert (=> b!1466861 m!1711553))

(declare-fun m!1711555 () Bool)

(assert (=> b!1466862 m!1711555))

(assert (=> b!1466835 d!430395))

(declare-fun d!430401 () Bool)

(assert (=> d!430401 (= (isEmpty!9585 (t!135048 tokens1!47)) ((_ is Nil!15283) (t!135048 tokens1!47)))))

(assert (=> b!1466837 d!430401))

(declare-fun d!430405 () Bool)

(assert (=> d!430405 (= (inv!20420 (tag!2967 (rule!4480 (h!20684 tokens1!47)))) (= (mod (str.len (value!86682 (tag!2967 (rule!4480 (h!20684 tokens1!47))))) 2) 0))))

(assert (=> b!1466836 d!430405))

(declare-fun d!430407 () Bool)

(declare-fun res!663955 () Bool)

(declare-fun e!936153 () Bool)

(assert (=> d!430407 (=> (not res!663955) (not e!936153))))

(declare-fun semiInverseModEq!1011 (Int Int) Bool)

(assert (=> d!430407 (= res!663955 (semiInverseModEq!1011 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))))))

(assert (=> d!430407 (= (inv!20424 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) e!936153)))

(declare-fun b!1466873 () Bool)

(declare-fun equivClasses!970 (Int Int) Bool)

(assert (=> b!1466873 (= e!936153 (equivClasses!970 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))))))

(assert (= (and d!430407 res!663955) b!1466873))

(declare-fun m!1711571 () Bool)

(assert (=> d!430407 m!1711571))

(declare-fun m!1711573 () Bool)

(assert (=> b!1466873 m!1711573))

(assert (=> b!1466836 d!430407))

(declare-fun d!430413 () Bool)

(declare-fun c!241810 () Bool)

(assert (=> d!430413 (= c!241810 ((_ is Cons!15283) tokens1!47))))

(declare-fun e!936162 () List!15348)

(assert (=> d!430413 (= (printList!751 thiss!20360 tokens1!47) e!936162)))

(declare-fun b!1466888 () Bool)

(declare-fun ++!4151 (List!15348 List!15348) List!15348)

(assert (=> b!1466888 (= e!936162 (++!4151 (list!6121 (charsOf!1558 (h!20684 tokens1!47))) (printList!751 thiss!20360 (t!135048 tokens1!47))))))

(declare-fun b!1466889 () Bool)

(assert (=> b!1466889 (= e!936162 Nil!15282)))

(assert (= (and d!430413 c!241810) b!1466888))

(assert (= (and d!430413 (not c!241810)) b!1466889))

(assert (=> b!1466888 m!1711535))

(assert (=> b!1466888 m!1711535))

(assert (=> b!1466888 m!1711537))

(declare-fun m!1711575 () Bool)

(assert (=> b!1466888 m!1711575))

(assert (=> b!1466888 m!1711537))

(assert (=> b!1466888 m!1711575))

(declare-fun m!1711577 () Bool)

(assert (=> b!1466888 m!1711577))

(assert (=> b!1466833 d!430413))

(declare-fun d!430415 () Bool)

(declare-fun list!6123 (Conc!5209) List!15348)

(assert (=> d!430415 (= (list!6121 (charsOf!1558 (h!20684 tokens1!47))) (list!6123 (c!241793 (charsOf!1558 (h!20684 tokens1!47)))))))

(declare-fun bs!344857 () Bool)

(assert (= bs!344857 d!430415))

(declare-fun m!1711585 () Bool)

(assert (=> bs!344857 m!1711585))

(assert (=> b!1466833 d!430415))

(declare-fun d!430419 () Bool)

(declare-fun lt!510817 () BalanceConc!10358)

(assert (=> d!430419 (= (list!6121 lt!510817) (originalCharacters!3565 (h!20684 tokens1!47)))))

(declare-fun dynLambda!6947 (Int TokenValue!2793) BalanceConc!10358)

(assert (=> d!430419 (= lt!510817 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))

(assert (=> d!430419 (= (charsOf!1558 (h!20684 tokens1!47)) lt!510817)))

(declare-fun b_lambda!45711 () Bool)

(assert (=> (not b_lambda!45711) (not d!430419)))

(declare-fun t!135052 () Bool)

(declare-fun tb!82915 () Bool)

(assert (=> (and b!1466838 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) t!135052) tb!82915))

(declare-fun b!1466901 () Bool)

(declare-fun e!936170 () Bool)

(declare-fun tp!412762 () Bool)

(declare-fun inv!20427 (Conc!5209) Bool)

(assert (=> b!1466901 (= e!936170 (and (inv!20427 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))) tp!412762))))

(declare-fun result!99586 () Bool)

(declare-fun inv!20428 (BalanceConc!10358) Bool)

(assert (=> tb!82915 (= result!99586 (and (inv!20428 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))) e!936170))))

(assert (= tb!82915 b!1466901))

(declare-fun m!1711587 () Bool)

(assert (=> b!1466901 m!1711587))

(declare-fun m!1711589 () Bool)

(assert (=> tb!82915 m!1711589))

(assert (=> d!430419 t!135052))

(declare-fun b_and!100229 () Bool)

(assert (= b_and!100223 (and (=> t!135052 result!99586) b_and!100229)))

(declare-fun m!1711595 () Bool)

(assert (=> d!430419 m!1711595))

(declare-fun m!1711597 () Bool)

(assert (=> d!430419 m!1711597))

(assert (=> b!1466833 d!430419))

(declare-fun d!430423 () Bool)

(declare-fun res!663966 () Bool)

(declare-fun e!936186 () Bool)

(assert (=> d!430423 (=> (not res!663966) (not e!936186))))

(declare-fun isEmpty!9587 (List!15348) Bool)

(assert (=> d!430423 (= res!663966 (not (isEmpty!9587 (originalCharacters!3565 (h!20684 tokens1!47)))))))

(assert (=> d!430423 (= (inv!20423 (h!20684 tokens1!47)) e!936186)))

(declare-fun b!1466917 () Bool)

(declare-fun res!663967 () Bool)

(assert (=> b!1466917 (=> (not res!663967) (not e!936186))))

(assert (=> b!1466917 (= res!663967 (= (originalCharacters!3565 (h!20684 tokens1!47)) (list!6121 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(declare-fun b!1466918 () Bool)

(declare-fun size!12471 (List!15348) Int)

(assert (=> b!1466918 (= e!936186 (= (size!12469 (h!20684 tokens1!47)) (size!12471 (originalCharacters!3565 (h!20684 tokens1!47)))))))

(assert (= (and d!430423 res!663966) b!1466917))

(assert (= (and b!1466917 res!663967) b!1466918))

(declare-fun b_lambda!45713 () Bool)

(assert (=> (not b_lambda!45713) (not b!1466917)))

(assert (=> b!1466917 t!135052))

(declare-fun b_and!100235 () Bool)

(assert (= b_and!100229 (and (=> t!135052 result!99586) b_and!100235)))

(declare-fun m!1711599 () Bool)

(assert (=> d!430423 m!1711599))

(assert (=> b!1466917 m!1711597))

(assert (=> b!1466917 m!1711597))

(declare-fun m!1711601 () Bool)

(assert (=> b!1466917 m!1711601))

(declare-fun m!1711603 () Bool)

(assert (=> b!1466918 m!1711603))

(assert (=> b!1466834 d!430423))

(declare-fun b!1466931 () Bool)

(declare-fun e!936197 () Bool)

(declare-fun tp_is_empty!6889 () Bool)

(declare-fun tp!412782 () Bool)

(assert (=> b!1466931 (= e!936197 (and tp_is_empty!6889 tp!412782))))

(assert (=> b!1466835 (= tp!412753 e!936197)))

(assert (= (and b!1466835 ((_ is Cons!15282) (originalCharacters!3565 (h!20684 tokens1!47)))) b!1466931))

(declare-fun b!1466953 () Bool)

(declare-fun e!936203 () Bool)

(assert (=> b!1466953 (= e!936203 tp_is_empty!6889)))

(assert (=> b!1466836 (= tp!412755 e!936203)))

(declare-fun b!1466956 () Bool)

(declare-fun tp!412804 () Bool)

(declare-fun tp!412806 () Bool)

(assert (=> b!1466956 (= e!936203 (and tp!412804 tp!412806))))

(declare-fun b!1466955 () Bool)

(declare-fun tp!412805 () Bool)

(assert (=> b!1466955 (= e!936203 tp!412805)))

(declare-fun b!1466954 () Bool)

(declare-fun tp!412807 () Bool)

(declare-fun tp!412808 () Bool)

(assert (=> b!1466954 (= e!936203 (and tp!412807 tp!412808))))

(assert (= (and b!1466836 ((_ is ElementMatch!4017) (regex!2703 (rule!4480 (h!20684 tokens1!47))))) b!1466953))

(assert (= (and b!1466836 ((_ is Concat!6811) (regex!2703 (rule!4480 (h!20684 tokens1!47))))) b!1466954))

(assert (= (and b!1466836 ((_ is Star!4017) (regex!2703 (rule!4480 (h!20684 tokens1!47))))) b!1466955))

(assert (= (and b!1466836 ((_ is Union!4017) (regex!2703 (rule!4480 (h!20684 tokens1!47))))) b!1466956))

(declare-fun b!1466974 () Bool)

(declare-fun b_free!36755 () Bool)

(declare-fun b_next!37459 () Bool)

(assert (=> b!1466974 (= b_free!36755 (not b_next!37459))))

(declare-fun tp!412824 () Bool)

(declare-fun b_and!100237 () Bool)

(assert (=> b!1466974 (= tp!412824 b_and!100237)))

(declare-fun b_free!36757 () Bool)

(declare-fun b_next!37461 () Bool)

(assert (=> b!1466974 (= b_free!36757 (not b_next!37461))))

(declare-fun t!135056 () Bool)

(declare-fun tb!82919 () Bool)

(assert (=> (and b!1466974 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) t!135056) tb!82919))

(declare-fun result!99604 () Bool)

(assert (= result!99604 result!99586))

(assert (=> d!430419 t!135056))

(assert (=> b!1466917 t!135056))

(declare-fun b_and!100239 () Bool)

(declare-fun tp!412828 () Bool)

(assert (=> b!1466974 (= tp!412828 (and (=> t!135056 result!99604) b_and!100239))))

(declare-fun tp!412825 () Bool)

(declare-fun e!936221 () Bool)

(declare-fun b!1466972 () Bool)

(declare-fun e!936217 () Bool)

(assert (=> b!1466972 (= e!936221 (and (inv!21 (value!86683 (h!20684 (t!135048 tokens1!47)))) e!936217 tp!412825))))

(declare-fun b!1466973 () Bool)

(declare-fun tp!412827 () Bool)

(declare-fun e!936222 () Bool)

(assert (=> b!1466973 (= e!936217 (and tp!412827 (inv!20420 (tag!2967 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (inv!20424 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) e!936222))))

(declare-fun b!1466971 () Bool)

(declare-fun e!936220 () Bool)

(declare-fun tp!412826 () Bool)

(assert (=> b!1466971 (= e!936220 (and (inv!20423 (h!20684 (t!135048 tokens1!47))) e!936221 tp!412826))))

(assert (=> b!1466974 (= e!936222 (and tp!412824 tp!412828))))

(assert (=> b!1466834 (= tp!412754 e!936220)))

(assert (= b!1466973 b!1466974))

(assert (= b!1466972 b!1466973))

(assert (= b!1466971 b!1466972))

(assert (= (and b!1466834 ((_ is Cons!15283) (t!135048 tokens1!47))) b!1466971))

(declare-fun m!1711613 () Bool)

(assert (=> b!1466972 m!1711613))

(declare-fun m!1711615 () Bool)

(assert (=> b!1466973 m!1711615))

(declare-fun m!1711617 () Bool)

(assert (=> b!1466973 m!1711617))

(declare-fun m!1711619 () Bool)

(assert (=> b!1466971 m!1711619))

(declare-fun b_lambda!45719 () Bool)

(assert (= b_lambda!45711 (or (and b!1466838 b_free!36749) (and b!1466974 b_free!36757 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))))) b_lambda!45719)))

(declare-fun b_lambda!45721 () Bool)

(assert (= b_lambda!45713 (or (and b!1466838 b_free!36749) (and b!1466974 b_free!36757 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))))) b_lambda!45721)))

(check-sat (not tb!82915) (not b!1466973) (not b!1466862) (not b!1466955) (not b!1466931) (not b_lambda!45721) (not d!430407) (not d!430419) (not b!1466954) (not b!1466918) (not b!1466859) (not d!430423) (not b!1466861) b_and!100239 (not d!430415) (not b!1466972) (not b!1466901) (not b_next!37453) tp_is_empty!6889 (not b!1466956) (not b!1466873) (not b!1466917) (not b_next!37461) (not b_next!37459) b_and!100235 (not b_lambda!45719) b_and!100221 (not b_next!37451) b_and!100237 (not b!1466888) (not b!1466971))
(check-sat b_and!100239 (not b_next!37453) (not b_next!37461) b_and!100221 (not b_next!37459) b_and!100235 (not b_next!37451) b_and!100237)
(get-model)

(declare-fun b!1466984 () Bool)

(declare-fun e!936230 () Bool)

(assert (=> b!1466984 (= e!936230 (inv!15 (value!86683 (h!20684 (t!135048 tokens1!47)))))))

(declare-fun b!1466985 () Bool)

(declare-fun e!936228 () Bool)

(declare-fun e!936229 () Bool)

(assert (=> b!1466985 (= e!936228 e!936229)))

(declare-fun c!241816 () Bool)

(assert (=> b!1466985 (= c!241816 ((_ is IntegerValue!8380) (value!86683 (h!20684 (t!135048 tokens1!47)))))))

(declare-fun b!1466986 () Bool)

(assert (=> b!1466986 (= e!936229 (inv!17 (value!86683 (h!20684 (t!135048 tokens1!47)))))))

(declare-fun d!430431 () Bool)

(declare-fun c!241817 () Bool)

(assert (=> d!430431 (= c!241817 ((_ is IntegerValue!8379) (value!86683 (h!20684 (t!135048 tokens1!47)))))))

(assert (=> d!430431 (= (inv!21 (value!86683 (h!20684 (t!135048 tokens1!47)))) e!936228)))

(declare-fun b!1466987 () Bool)

(assert (=> b!1466987 (= e!936228 (inv!16 (value!86683 (h!20684 (t!135048 tokens1!47)))))))

(declare-fun b!1466988 () Bool)

(declare-fun res!663972 () Bool)

(assert (=> b!1466988 (=> res!663972 e!936230)))

(assert (=> b!1466988 (= res!663972 (not ((_ is IntegerValue!8381) (value!86683 (h!20684 (t!135048 tokens1!47))))))))

(assert (=> b!1466988 (= e!936229 e!936230)))

(assert (= (and d!430431 c!241817) b!1466987))

(assert (= (and d!430431 (not c!241817)) b!1466985))

(assert (= (and b!1466985 c!241816) b!1466986))

(assert (= (and b!1466985 (not c!241816)) b!1466988))

(assert (= (and b!1466988 (not res!663972)) b!1466984))

(declare-fun m!1711637 () Bool)

(assert (=> b!1466984 m!1711637))

(declare-fun m!1711639 () Bool)

(assert (=> b!1466986 m!1711639))

(declare-fun m!1711641 () Bool)

(assert (=> b!1466987 m!1711641))

(assert (=> b!1466972 d!430431))

(declare-fun d!430435 () Bool)

(declare-fun charsToBigInt!1 (List!15347) Int)

(assert (=> d!430435 (= (inv!17 (value!86683 (h!20684 tokens1!47))) (= (charsToBigInt!1 (text!19999 (value!86683 (h!20684 tokens1!47)))) (value!86675 (value!86683 (h!20684 tokens1!47)))))))

(declare-fun bs!344860 () Bool)

(assert (= bs!344860 d!430435))

(declare-fun m!1711655 () Bool)

(assert (=> bs!344860 m!1711655))

(assert (=> b!1466861 d!430435))

(declare-fun b!1467005 () Bool)

(declare-fun res!663980 () Bool)

(declare-fun e!936240 () Bool)

(assert (=> b!1467005 (=> (not res!663980) (not e!936240))))

(declare-fun lt!510823 () List!15348)

(assert (=> b!1467005 (= res!663980 (= (size!12471 lt!510823) (+ (size!12471 (list!6121 (charsOf!1558 (h!20684 tokens1!47)))) (size!12471 (printList!751 thiss!20360 (t!135048 tokens1!47))))))))

(declare-fun b!1467004 () Bool)

(declare-fun e!936239 () List!15348)

(assert (=> b!1467004 (= e!936239 (Cons!15282 (h!20683 (list!6121 (charsOf!1558 (h!20684 tokens1!47)))) (++!4151 (t!135047 (list!6121 (charsOf!1558 (h!20684 tokens1!47)))) (printList!751 thiss!20360 (t!135048 tokens1!47)))))))

(declare-fun b!1467003 () Bool)

(assert (=> b!1467003 (= e!936239 (printList!751 thiss!20360 (t!135048 tokens1!47)))))

(declare-fun d!430447 () Bool)

(assert (=> d!430447 e!936240))

(declare-fun res!663979 () Bool)

(assert (=> d!430447 (=> (not res!663979) (not e!936240))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2253 (List!15348) (InoxSet C!8212))

(assert (=> d!430447 (= res!663979 (= (content!2253 lt!510823) ((_ map or) (content!2253 (list!6121 (charsOf!1558 (h!20684 tokens1!47)))) (content!2253 (printList!751 thiss!20360 (t!135048 tokens1!47))))))))

(assert (=> d!430447 (= lt!510823 e!936239)))

(declare-fun c!241822 () Bool)

(assert (=> d!430447 (= c!241822 ((_ is Nil!15282) (list!6121 (charsOf!1558 (h!20684 tokens1!47)))))))

(assert (=> d!430447 (= (++!4151 (list!6121 (charsOf!1558 (h!20684 tokens1!47))) (printList!751 thiss!20360 (t!135048 tokens1!47))) lt!510823)))

(declare-fun b!1467006 () Bool)

(assert (=> b!1467006 (= e!936240 (or (not (= (printList!751 thiss!20360 (t!135048 tokens1!47)) Nil!15282)) (= lt!510823 (list!6121 (charsOf!1558 (h!20684 tokens1!47))))))))

(assert (= (and d!430447 c!241822) b!1467003))

(assert (= (and d!430447 (not c!241822)) b!1467004))

(assert (= (and d!430447 res!663979) b!1467005))

(assert (= (and b!1467005 res!663980) b!1467006))

(declare-fun m!1711659 () Bool)

(assert (=> b!1467005 m!1711659))

(assert (=> b!1467005 m!1711537))

(declare-fun m!1711661 () Bool)

(assert (=> b!1467005 m!1711661))

(assert (=> b!1467005 m!1711575))

(declare-fun m!1711663 () Bool)

(assert (=> b!1467005 m!1711663))

(assert (=> b!1467004 m!1711575))

(declare-fun m!1711665 () Bool)

(assert (=> b!1467004 m!1711665))

(declare-fun m!1711667 () Bool)

(assert (=> d!430447 m!1711667))

(assert (=> d!430447 m!1711537))

(declare-fun m!1711669 () Bool)

(assert (=> d!430447 m!1711669))

(assert (=> d!430447 m!1711575))

(declare-fun m!1711671 () Bool)

(assert (=> d!430447 m!1711671))

(assert (=> b!1466888 d!430447))

(assert (=> b!1466888 d!430415))

(assert (=> b!1466888 d!430419))

(declare-fun d!430451 () Bool)

(declare-fun c!241823 () Bool)

(assert (=> d!430451 (= c!241823 ((_ is Cons!15283) (t!135048 tokens1!47)))))

(declare-fun e!936241 () List!15348)

(assert (=> d!430451 (= (printList!751 thiss!20360 (t!135048 tokens1!47)) e!936241)))

(declare-fun b!1467007 () Bool)

(assert (=> b!1467007 (= e!936241 (++!4151 (list!6121 (charsOf!1558 (h!20684 (t!135048 tokens1!47)))) (printList!751 thiss!20360 (t!135048 (t!135048 tokens1!47)))))))

(declare-fun b!1467008 () Bool)

(assert (=> b!1467008 (= e!936241 Nil!15282)))

(assert (= (and d!430451 c!241823) b!1467007))

(assert (= (and d!430451 (not c!241823)) b!1467008))

(declare-fun m!1711673 () Bool)

(assert (=> b!1467007 m!1711673))

(assert (=> b!1467007 m!1711673))

(declare-fun m!1711675 () Bool)

(assert (=> b!1467007 m!1711675))

(declare-fun m!1711677 () Bool)

(assert (=> b!1467007 m!1711677))

(assert (=> b!1467007 m!1711675))

(assert (=> b!1467007 m!1711677))

(declare-fun m!1711679 () Bool)

(assert (=> b!1467007 m!1711679))

(assert (=> b!1466888 d!430451))

(declare-fun d!430453 () Bool)

(assert (=> d!430453 (= (list!6121 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))) (list!6123 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(declare-fun bs!344862 () Bool)

(assert (= bs!344862 d!430453))

(declare-fun m!1711681 () Bool)

(assert (=> bs!344862 m!1711681))

(assert (=> b!1466917 d!430453))

(declare-fun d!430455 () Bool)

(declare-fun lt!510826 () Int)

(assert (=> d!430455 (>= lt!510826 0)))

(declare-fun e!936244 () Int)

(assert (=> d!430455 (= lt!510826 e!936244)))

(declare-fun c!241826 () Bool)

(assert (=> d!430455 (= c!241826 ((_ is Nil!15282) (originalCharacters!3565 (h!20684 tokens1!47))))))

(assert (=> d!430455 (= (size!12471 (originalCharacters!3565 (h!20684 tokens1!47))) lt!510826)))

(declare-fun b!1467013 () Bool)

(assert (=> b!1467013 (= e!936244 0)))

(declare-fun b!1467014 () Bool)

(assert (=> b!1467014 (= e!936244 (+ 1 (size!12471 (t!135047 (originalCharacters!3565 (h!20684 tokens1!47))))))))

(assert (= (and d!430455 c!241826) b!1467013))

(assert (= (and d!430455 (not c!241826)) b!1467014))

(declare-fun m!1711683 () Bool)

(assert (=> b!1467014 m!1711683))

(assert (=> b!1466918 d!430455))

(declare-fun d!430457 () Bool)

(assert (=> d!430457 (= (inv!20420 (tag!2967 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (= (mod (str.len (value!86682 (tag!2967 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) 2) 0))))

(assert (=> b!1466973 d!430457))

(declare-fun d!430459 () Bool)

(declare-fun res!663981 () Bool)

(declare-fun e!936245 () Bool)

(assert (=> d!430459 (=> (not res!663981) (not e!936245))))

(assert (=> d!430459 (= res!663981 (semiInverseModEq!1011 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))))))

(assert (=> d!430459 (= (inv!20424 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) e!936245)))

(declare-fun b!1467015 () Bool)

(assert (=> b!1467015 (= e!936245 (equivClasses!970 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))))))

(assert (= (and d!430459 res!663981) b!1467015))

(declare-fun m!1711685 () Bool)

(assert (=> d!430459 m!1711685))

(declare-fun m!1711687 () Bool)

(assert (=> b!1467015 m!1711687))

(assert (=> b!1466973 d!430459))

(declare-fun d!430461 () Bool)

(declare-fun charsToInt!0 (List!15347) (_ BitVec 32))

(assert (=> d!430461 (= (inv!16 (value!86683 (h!20684 tokens1!47))) (= (charsToInt!0 (text!19998 (value!86683 (h!20684 tokens1!47)))) (value!86674 (value!86683 (h!20684 tokens1!47)))))))

(declare-fun bs!344863 () Bool)

(assert (= bs!344863 d!430461))

(declare-fun m!1711689 () Bool)

(assert (=> bs!344863 m!1711689))

(assert (=> b!1466862 d!430461))

(declare-fun d!430463 () Bool)

(declare-fun c!241829 () Bool)

(assert (=> d!430463 (= c!241829 ((_ is Node!5209) (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(declare-fun e!936250 () Bool)

(assert (=> d!430463 (= (inv!20427 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))) e!936250)))

(declare-fun b!1467022 () Bool)

(declare-fun inv!20432 (Conc!5209) Bool)

(assert (=> b!1467022 (= e!936250 (inv!20432 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(declare-fun b!1467023 () Bool)

(declare-fun e!936251 () Bool)

(assert (=> b!1467023 (= e!936250 e!936251)))

(declare-fun res!663984 () Bool)

(assert (=> b!1467023 (= res!663984 (not ((_ is Leaf!7762) (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))))))

(assert (=> b!1467023 (=> res!663984 e!936251)))

(declare-fun b!1467024 () Bool)

(declare-fun inv!20433 (Conc!5209) Bool)

(assert (=> b!1467024 (= e!936251 (inv!20433 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(assert (= (and d!430463 c!241829) b!1467022))

(assert (= (and d!430463 (not c!241829)) b!1467023))

(assert (= (and b!1467023 (not res!663984)) b!1467024))

(declare-fun m!1711691 () Bool)

(assert (=> b!1467022 m!1711691))

(declare-fun m!1711693 () Bool)

(assert (=> b!1467024 m!1711693))

(assert (=> b!1466901 d!430463))

(declare-fun d!430465 () Bool)

(assert (=> d!430465 true))

(declare-fun lambda!63376 () Int)

(declare-fun order!9183 () Int)

(declare-fun order!9185 () Int)

(declare-fun dynLambda!6952 (Int Int) Int)

(declare-fun dynLambda!6953 (Int Int) Int)

(assert (=> d!430465 (< (dynLambda!6952 order!9183 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) (dynLambda!6953 order!9185 lambda!63376))))

(assert (=> d!430465 true))

(declare-fun order!9187 () Int)

(declare-fun dynLambda!6954 (Int Int) Int)

(assert (=> d!430465 (< (dynLambda!6954 order!9187 (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) (dynLambda!6953 order!9185 lambda!63376))))

(declare-fun Forall!561 (Int) Bool)

(assert (=> d!430465 (= (semiInverseModEq!1011 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) (Forall!561 lambda!63376))))

(declare-fun bs!344869 () Bool)

(assert (= bs!344869 d!430465))

(declare-fun m!1711753 () Bool)

(assert (=> bs!344869 m!1711753))

(assert (=> d!430407 d!430465))

(declare-fun d!430483 () Bool)

(assert (=> d!430483 (= (list!6121 lt!510817) (list!6123 (c!241793 lt!510817)))))

(declare-fun bs!344870 () Bool)

(assert (= bs!344870 d!430483))

(declare-fun m!1711755 () Bool)

(assert (=> bs!344870 m!1711755))

(assert (=> d!430419 d!430483))

(declare-fun d!430485 () Bool)

(assert (=> d!430485 (= (isEmpty!9587 (originalCharacters!3565 (h!20684 tokens1!47))) ((_ is Nil!15282) (originalCharacters!3565 (h!20684 tokens1!47))))))

(assert (=> d!430423 d!430485))

(declare-fun d!430487 () Bool)

(assert (=> d!430487 true))

(declare-fun lambda!63379 () Int)

(declare-fun order!9189 () Int)

(declare-fun dynLambda!6955 (Int Int) Int)

(assert (=> d!430487 (< (dynLambda!6954 order!9187 (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) (dynLambda!6955 order!9189 lambda!63379))))

(declare-fun Forall2!463 (Int) Bool)

(assert (=> d!430487 (= (equivClasses!970 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toValue!4014 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) (Forall2!463 lambda!63379))))

(declare-fun bs!344871 () Bool)

(assert (= bs!344871 d!430487))

(declare-fun m!1711757 () Bool)

(assert (=> bs!344871 m!1711757))

(assert (=> b!1466873 d!430487))

(declare-fun b!1467126 () Bool)

(declare-fun e!936299 () List!15348)

(declare-fun e!936300 () List!15348)

(assert (=> b!1467126 (= e!936299 e!936300)))

(declare-fun c!241848 () Bool)

(assert (=> b!1467126 (= c!241848 ((_ is Leaf!7762) (c!241793 (charsOf!1558 (h!20684 tokens1!47)))))))

(declare-fun d!430489 () Bool)

(declare-fun c!241847 () Bool)

(assert (=> d!430489 (= c!241847 ((_ is Empty!5209) (c!241793 (charsOf!1558 (h!20684 tokens1!47)))))))

(assert (=> d!430489 (= (list!6123 (c!241793 (charsOf!1558 (h!20684 tokens1!47)))) e!936299)))

(declare-fun b!1467128 () Bool)

(assert (=> b!1467128 (= e!936300 (++!4151 (list!6123 (left!12959 (c!241793 (charsOf!1558 (h!20684 tokens1!47))))) (list!6123 (right!13289 (c!241793 (charsOf!1558 (h!20684 tokens1!47)))))))))

(declare-fun b!1467127 () Bool)

(declare-fun list!6125 (IArray!10423) List!15348)

(assert (=> b!1467127 (= e!936300 (list!6125 (xs!7964 (c!241793 (charsOf!1558 (h!20684 tokens1!47))))))))

(declare-fun b!1467125 () Bool)

(assert (=> b!1467125 (= e!936299 Nil!15282)))

(assert (= (and d!430489 c!241847) b!1467125))

(assert (= (and d!430489 (not c!241847)) b!1467126))

(assert (= (and b!1467126 c!241848) b!1467127))

(assert (= (and b!1467126 (not c!241848)) b!1467128))

(declare-fun m!1711759 () Bool)

(assert (=> b!1467128 m!1711759))

(declare-fun m!1711761 () Bool)

(assert (=> b!1467128 m!1711761))

(assert (=> b!1467128 m!1711759))

(assert (=> b!1467128 m!1711761))

(declare-fun m!1711763 () Bool)

(assert (=> b!1467128 m!1711763))

(declare-fun m!1711765 () Bool)

(assert (=> b!1467127 m!1711765))

(assert (=> d!430415 d!430489))

(declare-fun d!430491 () Bool)

(declare-fun charsToBigInt!0 (List!15347 Int) Int)

(assert (=> d!430491 (= (inv!15 (value!86683 (h!20684 tokens1!47))) (= (charsToBigInt!0 (text!20000 (value!86683 (h!20684 tokens1!47))) 0) (value!86678 (value!86683 (h!20684 tokens1!47)))))))

(declare-fun bs!344872 () Bool)

(assert (= bs!344872 d!430491))

(declare-fun m!1711767 () Bool)

(assert (=> bs!344872 m!1711767))

(assert (=> b!1466859 d!430491))

(declare-fun d!430493 () Bool)

(declare-fun isBalanced!1561 (Conc!5209) Bool)

(assert (=> d!430493 (= (inv!20428 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))) (isBalanced!1561 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))))))

(declare-fun bs!344873 () Bool)

(assert (= bs!344873 d!430493))

(declare-fun m!1711769 () Bool)

(assert (=> bs!344873 m!1711769))

(assert (=> tb!82915 d!430493))

(declare-fun d!430495 () Bool)

(declare-fun res!663998 () Bool)

(declare-fun e!936301 () Bool)

(assert (=> d!430495 (=> (not res!663998) (not e!936301))))

(assert (=> d!430495 (= res!663998 (not (isEmpty!9587 (originalCharacters!3565 (h!20684 (t!135048 tokens1!47))))))))

(assert (=> d!430495 (= (inv!20423 (h!20684 (t!135048 tokens1!47))) e!936301)))

(declare-fun b!1467129 () Bool)

(declare-fun res!663999 () Bool)

(assert (=> b!1467129 (=> (not res!663999) (not e!936301))))

(assert (=> b!1467129 (= res!663999 (= (originalCharacters!3565 (h!20684 (t!135048 tokens1!47))) (list!6121 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (value!86683 (h!20684 (t!135048 tokens1!47)))))))))

(declare-fun b!1467130 () Bool)

(assert (=> b!1467130 (= e!936301 (= (size!12469 (h!20684 (t!135048 tokens1!47))) (size!12471 (originalCharacters!3565 (h!20684 (t!135048 tokens1!47))))))))

(assert (= (and d!430495 res!663998) b!1467129))

(assert (= (and b!1467129 res!663999) b!1467130))

(declare-fun b_lambda!45727 () Bool)

(assert (=> (not b_lambda!45727) (not b!1467129)))

(declare-fun t!135068 () Bool)

(declare-fun tb!82929 () Bool)

(assert (=> (and b!1466838 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) t!135068) tb!82929))

(declare-fun b!1467131 () Bool)

(declare-fun e!936302 () Bool)

(declare-fun tp!412876 () Bool)

(assert (=> b!1467131 (= e!936302 (and (inv!20427 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (value!86683 (h!20684 (t!135048 tokens1!47)))))) tp!412876))))

(declare-fun result!99616 () Bool)

(assert (=> tb!82929 (= result!99616 (and (inv!20428 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (value!86683 (h!20684 (t!135048 tokens1!47))))) e!936302))))

(assert (= tb!82929 b!1467131))

(declare-fun m!1711771 () Bool)

(assert (=> b!1467131 m!1711771))

(declare-fun m!1711773 () Bool)

(assert (=> tb!82929 m!1711773))

(assert (=> b!1467129 t!135068))

(declare-fun b_and!100249 () Bool)

(assert (= b_and!100235 (and (=> t!135068 result!99616) b_and!100249)))

(declare-fun t!135070 () Bool)

(declare-fun tb!82931 () Bool)

(assert (=> (and b!1466974 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) t!135070) tb!82931))

(declare-fun result!99618 () Bool)

(assert (= result!99618 result!99616))

(assert (=> b!1467129 t!135070))

(declare-fun b_and!100251 () Bool)

(assert (= b_and!100239 (and (=> t!135070 result!99618) b_and!100251)))

(declare-fun m!1711775 () Bool)

(assert (=> d!430495 m!1711775))

(declare-fun m!1711777 () Bool)

(assert (=> b!1467129 m!1711777))

(assert (=> b!1467129 m!1711777))

(declare-fun m!1711779 () Bool)

(assert (=> b!1467129 m!1711779))

(declare-fun m!1711781 () Bool)

(assert (=> b!1467130 m!1711781))

(assert (=> b!1466971 d!430495))

(declare-fun b!1467132 () Bool)

(declare-fun e!936303 () Bool)

(declare-fun tp!412877 () Bool)

(assert (=> b!1467132 (= e!936303 (and tp_is_empty!6889 tp!412877))))

(assert (=> b!1466972 (= tp!412825 e!936303)))

(assert (= (and b!1466972 ((_ is Cons!15282) (originalCharacters!3565 (h!20684 (t!135048 tokens1!47))))) b!1467132))

(declare-fun b!1467133 () Bool)

(declare-fun e!936304 () Bool)

(assert (=> b!1467133 (= e!936304 tp_is_empty!6889)))

(assert (=> b!1466973 (= tp!412827 e!936304)))

(declare-fun b!1467136 () Bool)

(declare-fun tp!412878 () Bool)

(declare-fun tp!412880 () Bool)

(assert (=> b!1467136 (= e!936304 (and tp!412878 tp!412880))))

(declare-fun b!1467135 () Bool)

(declare-fun tp!412879 () Bool)

(assert (=> b!1467135 (= e!936304 tp!412879)))

(declare-fun b!1467134 () Bool)

(declare-fun tp!412881 () Bool)

(declare-fun tp!412882 () Bool)

(assert (=> b!1467134 (= e!936304 (and tp!412881 tp!412882))))

(assert (= (and b!1466973 ((_ is ElementMatch!4017) (regex!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) b!1467133))

(assert (= (and b!1466973 ((_ is Concat!6811) (regex!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) b!1467134))

(assert (= (and b!1466973 ((_ is Star!4017) (regex!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) b!1467135))

(assert (= (and b!1466973 ((_ is Union!4017) (regex!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) b!1467136))

(declare-fun b!1467137 () Bool)

(declare-fun e!936305 () Bool)

(assert (=> b!1467137 (= e!936305 tp_is_empty!6889)))

(assert (=> b!1466954 (= tp!412807 e!936305)))

(declare-fun b!1467140 () Bool)

(declare-fun tp!412883 () Bool)

(declare-fun tp!412885 () Bool)

(assert (=> b!1467140 (= e!936305 (and tp!412883 tp!412885))))

(declare-fun b!1467139 () Bool)

(declare-fun tp!412884 () Bool)

(assert (=> b!1467139 (= e!936305 tp!412884)))

(declare-fun b!1467138 () Bool)

(declare-fun tp!412886 () Bool)

(declare-fun tp!412887 () Bool)

(assert (=> b!1467138 (= e!936305 (and tp!412886 tp!412887))))

(assert (= (and b!1466954 ((_ is ElementMatch!4017) (regOne!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467137))

(assert (= (and b!1466954 ((_ is Concat!6811) (regOne!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467138))

(assert (= (and b!1466954 ((_ is Star!4017) (regOne!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467139))

(assert (= (and b!1466954 ((_ is Union!4017) (regOne!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467140))

(declare-fun b!1467141 () Bool)

(declare-fun e!936306 () Bool)

(assert (=> b!1467141 (= e!936306 tp_is_empty!6889)))

(assert (=> b!1466954 (= tp!412808 e!936306)))

(declare-fun b!1467144 () Bool)

(declare-fun tp!412888 () Bool)

(declare-fun tp!412890 () Bool)

(assert (=> b!1467144 (= e!936306 (and tp!412888 tp!412890))))

(declare-fun b!1467143 () Bool)

(declare-fun tp!412889 () Bool)

(assert (=> b!1467143 (= e!936306 tp!412889)))

(declare-fun b!1467142 () Bool)

(declare-fun tp!412891 () Bool)

(declare-fun tp!412892 () Bool)

(assert (=> b!1467142 (= e!936306 (and tp!412891 tp!412892))))

(assert (= (and b!1466954 ((_ is ElementMatch!4017) (regTwo!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467141))

(assert (= (and b!1466954 ((_ is Concat!6811) (regTwo!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467142))

(assert (= (and b!1466954 ((_ is Star!4017) (regTwo!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467143))

(assert (= (and b!1466954 ((_ is Union!4017) (regTwo!8546 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467144))

(declare-fun b!1467145 () Bool)

(declare-fun e!936307 () Bool)

(declare-fun tp!412893 () Bool)

(assert (=> b!1467145 (= e!936307 (and tp_is_empty!6889 tp!412893))))

(assert (=> b!1466931 (= tp!412782 e!936307)))

(assert (= (and b!1466931 ((_ is Cons!15282) (t!135047 (originalCharacters!3565 (h!20684 tokens1!47))))) b!1467145))

(declare-fun b!1467146 () Bool)

(declare-fun e!936308 () Bool)

(assert (=> b!1467146 (= e!936308 tp_is_empty!6889)))

(assert (=> b!1466955 (= tp!412805 e!936308)))

(declare-fun b!1467149 () Bool)

(declare-fun tp!412894 () Bool)

(declare-fun tp!412896 () Bool)

(assert (=> b!1467149 (= e!936308 (and tp!412894 tp!412896))))

(declare-fun b!1467148 () Bool)

(declare-fun tp!412895 () Bool)

(assert (=> b!1467148 (= e!936308 tp!412895)))

(declare-fun b!1467147 () Bool)

(declare-fun tp!412897 () Bool)

(declare-fun tp!412898 () Bool)

(assert (=> b!1467147 (= e!936308 (and tp!412897 tp!412898))))

(assert (= (and b!1466955 ((_ is ElementMatch!4017) (reg!4346 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467146))

(assert (= (and b!1466955 ((_ is Concat!6811) (reg!4346 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467147))

(assert (= (and b!1466955 ((_ is Star!4017) (reg!4346 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467148))

(assert (= (and b!1466955 ((_ is Union!4017) (reg!4346 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467149))

(declare-fun e!936314 () Bool)

(declare-fun tp!412906 () Bool)

(declare-fun b!1467158 () Bool)

(declare-fun tp!412907 () Bool)

(assert (=> b!1467158 (= e!936314 (and (inv!20427 (left!12959 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))) tp!412907 (inv!20427 (right!13289 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))) tp!412906))))

(declare-fun b!1467160 () Bool)

(declare-fun e!936313 () Bool)

(declare-fun tp!412905 () Bool)

(assert (=> b!1467160 (= e!936313 tp!412905)))

(declare-fun b!1467159 () Bool)

(declare-fun inv!20434 (IArray!10423) Bool)

(assert (=> b!1467159 (= e!936314 (and (inv!20434 (xs!7964 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))) e!936313))))

(assert (=> b!1466901 (= tp!412762 (and (inv!20427 (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47))))) e!936314))))

(assert (= (and b!1466901 ((_ is Node!5209) (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))) b!1467158))

(assert (= b!1467159 b!1467160))

(assert (= (and b!1466901 ((_ is Leaf!7762) (c!241793 (dynLambda!6947 (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (value!86683 (h!20684 tokens1!47)))))) b!1467159))

(declare-fun m!1711783 () Bool)

(assert (=> b!1467158 m!1711783))

(declare-fun m!1711785 () Bool)

(assert (=> b!1467158 m!1711785))

(declare-fun m!1711787 () Bool)

(assert (=> b!1467159 m!1711787))

(assert (=> b!1466901 m!1711587))

(declare-fun b!1467161 () Bool)

(declare-fun e!936315 () Bool)

(assert (=> b!1467161 (= e!936315 tp_is_empty!6889)))

(assert (=> b!1466956 (= tp!412804 e!936315)))

(declare-fun b!1467164 () Bool)

(declare-fun tp!412908 () Bool)

(declare-fun tp!412910 () Bool)

(assert (=> b!1467164 (= e!936315 (and tp!412908 tp!412910))))

(declare-fun b!1467163 () Bool)

(declare-fun tp!412909 () Bool)

(assert (=> b!1467163 (= e!936315 tp!412909)))

(declare-fun b!1467162 () Bool)

(declare-fun tp!412911 () Bool)

(declare-fun tp!412912 () Bool)

(assert (=> b!1467162 (= e!936315 (and tp!412911 tp!412912))))

(assert (= (and b!1466956 ((_ is ElementMatch!4017) (regOne!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467161))

(assert (= (and b!1466956 ((_ is Concat!6811) (regOne!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467162))

(assert (= (and b!1466956 ((_ is Star!4017) (regOne!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467163))

(assert (= (and b!1466956 ((_ is Union!4017) (regOne!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467164))

(declare-fun b!1467165 () Bool)

(declare-fun e!936316 () Bool)

(assert (=> b!1467165 (= e!936316 tp_is_empty!6889)))

(assert (=> b!1466956 (= tp!412806 e!936316)))

(declare-fun b!1467168 () Bool)

(declare-fun tp!412913 () Bool)

(declare-fun tp!412915 () Bool)

(assert (=> b!1467168 (= e!936316 (and tp!412913 tp!412915))))

(declare-fun b!1467167 () Bool)

(declare-fun tp!412914 () Bool)

(assert (=> b!1467167 (= e!936316 tp!412914)))

(declare-fun b!1467166 () Bool)

(declare-fun tp!412916 () Bool)

(declare-fun tp!412917 () Bool)

(assert (=> b!1467166 (= e!936316 (and tp!412916 tp!412917))))

(assert (= (and b!1466956 ((_ is ElementMatch!4017) (regTwo!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467165))

(assert (= (and b!1466956 ((_ is Concat!6811) (regTwo!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467166))

(assert (= (and b!1466956 ((_ is Star!4017) (regTwo!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467167))

(assert (= (and b!1466956 ((_ is Union!4017) (regTwo!8547 (regex!2703 (rule!4480 (h!20684 tokens1!47)))))) b!1467168))

(declare-fun b!1467172 () Bool)

(declare-fun b_free!36763 () Bool)

(declare-fun b_next!37467 () Bool)

(assert (=> b!1467172 (= b_free!36763 (not b_next!37467))))

(declare-fun tp!412918 () Bool)

(declare-fun b_and!100253 () Bool)

(assert (=> b!1467172 (= tp!412918 b_and!100253)))

(declare-fun b_free!36765 () Bool)

(declare-fun b_next!37469 () Bool)

(assert (=> b!1467172 (= b_free!36765 (not b_next!37469))))

(declare-fun t!135072 () Bool)

(declare-fun tb!82933 () Bool)

(assert (=> (and b!1467172 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 (t!135048 tokens1!47)))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47))))) t!135072) tb!82933))

(declare-fun result!99622 () Bool)

(assert (= result!99622 result!99586))

(assert (=> d!430419 t!135072))

(assert (=> b!1466917 t!135072))

(declare-fun t!135074 () Bool)

(declare-fun tb!82935 () Bool)

(assert (=> (and b!1467172 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 (t!135048 tokens1!47)))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47)))))) t!135074) tb!82935))

(declare-fun result!99624 () Bool)

(assert (= result!99624 result!99616))

(assert (=> b!1467129 t!135074))

(declare-fun tp!412922 () Bool)

(declare-fun b_and!100255 () Bool)

(assert (=> b!1467172 (= tp!412922 (and (=> t!135072 result!99622) (=> t!135074 result!99624) b_and!100255))))

(declare-fun e!936321 () Bool)

(declare-fun tp!412919 () Bool)

(declare-fun e!936317 () Bool)

(declare-fun b!1467170 () Bool)

(assert (=> b!1467170 (= e!936321 (and (inv!21 (value!86683 (h!20684 (t!135048 (t!135048 tokens1!47))))) e!936317 tp!412919))))

(declare-fun tp!412921 () Bool)

(declare-fun e!936322 () Bool)

(declare-fun b!1467171 () Bool)

(assert (=> b!1467171 (= e!936317 (and tp!412921 (inv!20420 (tag!2967 (rule!4480 (h!20684 (t!135048 (t!135048 tokens1!47)))))) (inv!20424 (transformation!2703 (rule!4480 (h!20684 (t!135048 (t!135048 tokens1!47)))))) e!936322))))

(declare-fun tp!412920 () Bool)

(declare-fun b!1467169 () Bool)

(declare-fun e!936320 () Bool)

(assert (=> b!1467169 (= e!936320 (and (inv!20423 (h!20684 (t!135048 (t!135048 tokens1!47)))) e!936321 tp!412920))))

(assert (=> b!1467172 (= e!936322 (and tp!412918 tp!412922))))

(assert (=> b!1466971 (= tp!412826 e!936320)))

(assert (= b!1467171 b!1467172))

(assert (= b!1467170 b!1467171))

(assert (= b!1467169 b!1467170))

(assert (= (and b!1466971 ((_ is Cons!15283) (t!135048 (t!135048 tokens1!47)))) b!1467169))

(declare-fun m!1711789 () Bool)

(assert (=> b!1467170 m!1711789))

(declare-fun m!1711791 () Bool)

(assert (=> b!1467171 m!1711791))

(declare-fun m!1711793 () Bool)

(assert (=> b!1467171 m!1711793))

(declare-fun m!1711795 () Bool)

(assert (=> b!1467169 m!1711795))

(declare-fun b_lambda!45729 () Bool)

(assert (= b_lambda!45727 (or (and b!1466838 b_free!36749 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 tokens1!47)))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))))) (and b!1466974 b_free!36757) (and b!1467172 b_free!36765 (= (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 (t!135048 tokens1!47)))))) (toChars!3873 (transformation!2703 (rule!4480 (h!20684 (t!135048 tokens1!47))))))) b_lambda!45729)))

(check-sat (not b!1467128) (not d!430483) (not b_lambda!45721) (not b!1467147) (not b!1467162) (not b!1467158) (not b!1467005) (not b!1467130) (not d!430493) (not b!1467143) (not b_next!37469) (not b_lambda!45729) (not b!1467136) (not b!1467139) b_and!100253 (not b!1467015) (not b!1466987) (not b!1467024) (not b!1466984) (not b!1467007) (not b!1467022) (not b!1467145) (not d!430491) (not b!1467134) (not b!1467164) (not d!430465) (not b!1467166) (not b!1466901) (not b_next!37453) tp_is_empty!6889 (not d!430453) (not b!1467142) (not b!1467160) (not b!1467168) (not b_next!37461) (not b!1467170) (not d!430435) (not b!1467138) b_and!100255 (not b!1467159) (not b!1467014) (not b_next!37459) (not b!1467131) (not b!1467140) (not tb!82929) (not b_next!37467) (not b!1467004) (not b!1467149) (not b_lambda!45719) (not d!430487) b_and!100221 (not b_next!37451) (not d!430495) (not b!1467127) (not d!430461) b_and!100237 b_and!100251 (not b!1467135) (not b!1467169) (not b!1467132) (not b!1467129) (not d!430459) (not b!1467148) (not b!1467144) (not b!1466986) (not d!430447) (not b!1467167) (not b!1467171) (not b!1467163) b_and!100249)
(check-sat (not b_next!37469) b_and!100253 (not b_next!37453) (not b_next!37461) b_and!100255 (not b_next!37459) (not b_next!37467) b_and!100221 b_and!100251 b_and!100249 (not b_next!37451) b_and!100237)

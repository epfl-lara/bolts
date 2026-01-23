; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351534 () Bool)

(assert start!351534)

(declare-fun b!3744685 () Bool)

(declare-fun b_free!99525 () Bool)

(declare-fun b_next!100229 () Bool)

(assert (=> b!3744685 (= b_free!99525 (not b_next!100229))))

(declare-fun tp!1141900 () Bool)

(declare-fun b_and!277759 () Bool)

(assert (=> b!3744685 (= tp!1141900 b_and!277759)))

(declare-fun b_free!99527 () Bool)

(declare-fun b_next!100231 () Bool)

(assert (=> b!3744685 (= b_free!99527 (not b_next!100231))))

(declare-fun tp!1141899 () Bool)

(declare-fun b_and!277761 () Bool)

(assert (=> b!3744685 (= tp!1141899 b_and!277761)))

(declare-fun b!3744686 () Bool)

(declare-fun b_free!99529 () Bool)

(declare-fun b_next!100233 () Bool)

(assert (=> b!3744686 (= b_free!99529 (not b_next!100233))))

(declare-fun tp!1141904 () Bool)

(declare-fun b_and!277763 () Bool)

(assert (=> b!3744686 (= tp!1141904 b_and!277763)))

(declare-fun b_free!99531 () Bool)

(declare-fun b_next!100235 () Bool)

(assert (=> b!3744686 (= b_free!99531 (not b_next!100235))))

(declare-fun tp!1141905 () Bool)

(declare-fun b_and!277765 () Bool)

(assert (=> b!3744686 (= tp!1141905 b_and!277765)))

(declare-fun b!3744683 () Bool)

(declare-fun b_free!99533 () Bool)

(declare-fun b_next!100237 () Bool)

(assert (=> b!3744683 (= b_free!99533 (not b_next!100237))))

(declare-fun tp!1141910 () Bool)

(declare-fun b_and!277767 () Bool)

(assert (=> b!3744683 (= tp!1141910 b_and!277767)))

(declare-fun b_free!99535 () Bool)

(declare-fun b_next!100239 () Bool)

(assert (=> b!3744683 (= b_free!99535 (not b_next!100239))))

(declare-fun tp!1141908 () Bool)

(declare-fun b_and!277769 () Bool)

(assert (=> b!3744683 (= tp!1141908 b_and!277769)))

(declare-fun b!3744677 () Bool)

(declare-fun b_free!99537 () Bool)

(declare-fun b_next!100241 () Bool)

(assert (=> b!3744677 (= b_free!99537 (not b_next!100241))))

(declare-fun tp!1141901 () Bool)

(declare-fun b_and!277771 () Bool)

(assert (=> b!3744677 (= tp!1141901 b_and!277771)))

(declare-fun b_free!99539 () Bool)

(declare-fun b_next!100243 () Bool)

(assert (=> b!3744677 (= b_free!99539 (not b_next!100243))))

(declare-fun tp!1141907 () Bool)

(declare-fun b_and!277773 () Bool)

(assert (=> b!3744677 (= tp!1141907 b_and!277773)))

(declare-fun b!3744668 () Bool)

(declare-fun res!1517909 () Bool)

(declare-fun e!2315430 () Bool)

(assert (=> b!3744668 (=> (not res!1517909) (not e!2315430))))

(declare-datatypes ((List!39892 0))(
  ( (Nil!39768) (Cons!39768 (h!45188 (_ BitVec 16)) (t!302575 List!39892)) )
))
(declare-datatypes ((TokenValue!6290 0))(
  ( (FloatLiteralValue!12580 (text!44475 List!39892)) (TokenValueExt!6289 (__x!24797 Int)) (Broken!31450 (value!193282 List!39892)) (Object!6413) (End!6290) (Def!6290) (Underscore!6290) (Match!6290) (Else!6290) (Error!6290) (Case!6290) (If!6290) (Extends!6290) (Abstract!6290) (Class!6290) (Val!6290) (DelimiterValue!12580 (del!6350 List!39892)) (KeywordValue!6296 (value!193283 List!39892)) (CommentValue!12580 (value!193284 List!39892)) (WhitespaceValue!12580 (value!193285 List!39892)) (IndentationValue!6290 (value!193286 List!39892)) (String!45075) (Int32!6290) (Broken!31451 (value!193287 List!39892)) (Boolean!6291) (Unit!57629) (OperatorValue!6293 (op!6350 List!39892)) (IdentifierValue!12580 (value!193288 List!39892)) (IdentifierValue!12581 (value!193289 List!39892)) (WhitespaceValue!12581 (value!193290 List!39892)) (True!12580) (False!12580) (Broken!31452 (value!193291 List!39892)) (Broken!31453 (value!193292 List!39892)) (True!12581) (RightBrace!6290) (RightBracket!6290) (Colon!6290) (Null!6290) (Comma!6290) (LeftBracket!6290) (False!12581) (LeftBrace!6290) (ImaginaryLiteralValue!6290 (text!44476 List!39892)) (StringLiteralValue!18870 (value!193293 List!39892)) (EOFValue!6290 (value!193294 List!39892)) (IdentValue!6290 (value!193295 List!39892)) (DelimiterValue!12581 (value!193296 List!39892)) (DedentValue!6290 (value!193297 List!39892)) (NewLineValue!6290 (value!193298 List!39892)) (IntegerValue!18870 (value!193299 (_ BitVec 32)) (text!44477 List!39892)) (IntegerValue!18871 (value!193300 Int) (text!44478 List!39892)) (Times!6290) (Or!6290) (Equal!6290) (Minus!6290) (Broken!31454 (value!193301 List!39892)) (And!6290) (Div!6290) (LessEqual!6290) (Mod!6290) (Concat!17255) (Not!6290) (Plus!6290) (SpaceValue!6290 (value!193302 List!39892)) (IntegerValue!18872 (value!193303 Int) (text!44479 List!39892)) (StringLiteralValue!18871 (text!44480 List!39892)) (FloatLiteralValue!12581 (text!44481 List!39892)) (BytesLiteralValue!6290 (value!193304 List!39892)) (CommentValue!12581 (value!193305 List!39892)) (StringLiteralValue!18872 (value!193306 List!39892)) (ErrorTokenValue!6290 (msg!6351 List!39892)) )
))
(declare-datatypes ((C!22116 0))(
  ( (C!22117 (val!13106 Int)) )
))
(declare-datatypes ((List!39893 0))(
  ( (Nil!39769) (Cons!39769 (h!45189 C!22116) (t!302576 List!39893)) )
))
(declare-datatypes ((IArray!24319 0))(
  ( (IArray!24320 (innerList!12217 List!39893)) )
))
(declare-datatypes ((Conc!12157 0))(
  ( (Node!12157 (left!30818 Conc!12157) (right!31148 Conc!12157) (csize!24544 Int) (cheight!12368 Int)) (Leaf!18871 (xs!15359 IArray!24319) (csize!24545 Int)) (Empty!12157) )
))
(declare-datatypes ((Regex!10965 0))(
  ( (ElementMatch!10965 (c!648618 C!22116)) (Concat!17256 (regOne!22442 Regex!10965) (regTwo!22442 Regex!10965)) (EmptyExpr!10965) (Star!10965 (reg!11294 Regex!10965)) (EmptyLang!10965) (Union!10965 (regOne!22443 Regex!10965) (regTwo!22443 Regex!10965)) )
))
(declare-datatypes ((String!45076 0))(
  ( (String!45077 (value!193307 String)) )
))
(declare-datatypes ((BalanceConc!23928 0))(
  ( (BalanceConc!23929 (c!648619 Conc!12157)) )
))
(declare-datatypes ((TokenValueInjection!12008 0))(
  ( (TokenValueInjection!12009 (toValue!8404 Int) (toChars!8263 Int)) )
))
(declare-datatypes ((Rule!11920 0))(
  ( (Rule!11921 (regex!6060 Regex!10965) (tag!6920 String!45076) (isSeparator!6060 Bool) (transformation!6060 TokenValueInjection!12008)) )
))
(declare-fun rNSep!159 () Rule!11920)

(declare-fun c!6900 () C!22116)

(declare-fun contains!8077 (List!39893 C!22116) Bool)

(declare-fun usedCharacters!1228 (Regex!10965) List!39893)

(assert (=> b!3744668 (= res!1517909 (contains!8077 (usedCharacters!1228 (regex!6060 rNSep!159)) c!6900))))

(declare-fun e!2315422 () Bool)

(declare-fun rSep!159 () Rule!11920)

(declare-fun b!3744669 () Bool)

(declare-fun tp!1141902 () Bool)

(declare-fun e!2315425 () Bool)

(declare-fun inv!53307 (String!45076) Bool)

(declare-fun inv!53309 (TokenValueInjection!12008) Bool)

(assert (=> b!3744669 (= e!2315425 (and tp!1141902 (inv!53307 (tag!6920 rSep!159)) (inv!53309 (transformation!6060 rSep!159)) e!2315422))))

(declare-fun b!3744670 () Bool)

(declare-fun res!1517908 () Bool)

(assert (=> b!3744670 (=> (not res!1517908) (not e!2315430))))

(declare-datatypes ((List!39894 0))(
  ( (Nil!39770) (Cons!39770 (h!45190 Rule!11920) (t!302577 List!39894)) )
))
(declare-fun rules!4189 () List!39894)

(declare-fun contains!8078 (List!39894 Rule!11920) Bool)

(assert (=> b!3744670 (= res!1517908 (contains!8078 rules!4189 rNSep!159))))

(declare-fun b!3744671 () Bool)

(declare-fun res!1517901 () Bool)

(assert (=> b!3744671 (=> (not res!1517901) (not e!2315430))))

(declare-fun rulesRec!198 () List!39894)

(get-info :version)

(assert (=> b!3744671 (= res!1517901 (and (or (not ((_ is Cons!39770) rulesRec!198)) (not (= (h!45190 rulesRec!198) rNSep!159))) ((_ is Cons!39770) rulesRec!198)))))

(declare-fun b!3744672 () Bool)

(declare-fun e!2315426 () Bool)

(declare-fun tp!1141909 () Bool)

(declare-fun e!2315423 () Bool)

(assert (=> b!3744672 (= e!2315426 (and tp!1141909 (inv!53307 (tag!6920 (h!45190 rules!4189))) (inv!53309 (transformation!6060 (h!45190 rules!4189))) e!2315423))))

(declare-fun b!3744673 () Bool)

(declare-fun res!1517902 () Bool)

(assert (=> b!3744673 (=> (not res!1517902) (not e!2315430))))

(assert (=> b!3744673 (= res!1517902 (and (not (isSeparator!6060 rNSep!159)) (isSeparator!6060 rSep!159)))))

(declare-fun res!1517904 () Bool)

(assert (=> start!351534 (=> (not res!1517904) (not e!2315430))))

(declare-datatypes ((LexerInterface!5649 0))(
  ( (LexerInterfaceExt!5646 (__x!24798 Int)) (Lexer!5647) )
))
(declare-fun thiss!27143 () LexerInterface!5649)

(assert (=> start!351534 (= res!1517904 ((_ is Lexer!5647) thiss!27143))))

(assert (=> start!351534 e!2315430))

(assert (=> start!351534 true))

(declare-fun e!2315434 () Bool)

(assert (=> start!351534 e!2315434))

(assert (=> start!351534 e!2315425))

(declare-fun e!2315432 () Bool)

(assert (=> start!351534 e!2315432))

(declare-fun tp_is_empty!18945 () Bool)

(assert (=> start!351534 tp_is_empty!18945))

(declare-fun e!2315431 () Bool)

(assert (=> start!351534 e!2315431))

(declare-fun b!3744674 () Bool)

(declare-fun res!1517905 () Bool)

(assert (=> b!3744674 (=> (not res!1517905) (not e!2315430))))

(assert (=> b!3744674 (= res!1517905 (contains!8078 rules!4189 rSep!159))))

(declare-fun b!3744675 () Bool)

(declare-fun res!1517900 () Bool)

(assert (=> b!3744675 (=> (not res!1517900) (not e!2315430))))

(declare-fun sepAndNonSepRulesDisjointChars!2038 (List!39894 List!39894) Bool)

(assert (=> b!3744675 (= res!1517900 (sepAndNonSepRulesDisjointChars!2038 rules!4189 (t!302577 rulesRec!198)))))

(declare-fun b!3744676 () Bool)

(declare-fun res!1517910 () Bool)

(assert (=> b!3744676 (=> (not res!1517910) (not e!2315430))))

(declare-fun rulesInvariant!5046 (LexerInterface!5649 List!39894) Bool)

(assert (=> b!3744676 (= res!1517910 (rulesInvariant!5046 thiss!27143 rules!4189))))

(assert (=> b!3744677 (= e!2315423 (and tp!1141901 tp!1141907))))

(declare-fun tp!1141912 () Bool)

(declare-fun b!3744678 () Bool)

(declare-fun e!2315429 () Bool)

(assert (=> b!3744678 (= e!2315431 (and tp!1141912 (inv!53307 (tag!6920 rNSep!159)) (inv!53309 (transformation!6060 rNSep!159)) e!2315429))))

(declare-fun b!3744679 () Bool)

(declare-fun e!2315433 () Bool)

(declare-fun tp!1141903 () Bool)

(assert (=> b!3744679 (= e!2315432 (and e!2315433 tp!1141903))))

(declare-fun b!3744680 () Bool)

(declare-fun tp!1141906 () Bool)

(assert (=> b!3744680 (= e!2315434 (and e!2315426 tp!1141906))))

(declare-fun b!3744681 () Bool)

(declare-fun ListPrimitiveSize!257 (List!39894) Int)

(assert (=> b!3744681 (= e!2315430 (>= (ListPrimitiveSize!257 (t!302577 rulesRec!198)) (ListPrimitiveSize!257 rulesRec!198)))))

(declare-fun b!3744682 () Bool)

(declare-fun res!1517903 () Bool)

(assert (=> b!3744682 (=> (not res!1517903) (not e!2315430))))

(assert (=> b!3744682 (= res!1517903 (contains!8078 rulesRec!198 rNSep!159))))

(assert (=> b!3744683 (= e!2315422 (and tp!1141910 tp!1141908))))

(declare-fun e!2315421 () Bool)

(declare-fun b!3744684 () Bool)

(declare-fun tp!1141911 () Bool)

(assert (=> b!3744684 (= e!2315433 (and tp!1141911 (inv!53307 (tag!6920 (h!45190 rulesRec!198))) (inv!53309 (transformation!6060 (h!45190 rulesRec!198))) e!2315421))))

(assert (=> b!3744685 (= e!2315429 (and tp!1141900 tp!1141899))))

(assert (=> b!3744686 (= e!2315421 (and tp!1141904 tp!1141905))))

(declare-fun b!3744687 () Bool)

(declare-fun res!1517907 () Bool)

(assert (=> b!3744687 (=> (not res!1517907) (not e!2315430))))

(assert (=> b!3744687 (= res!1517907 (contains!8078 (t!302577 rulesRec!198) rNSep!159))))

(declare-fun b!3744688 () Bool)

(declare-fun res!1517906 () Bool)

(assert (=> b!3744688 (=> (not res!1517906) (not e!2315430))))

(assert (=> b!3744688 (= res!1517906 (sepAndNonSepRulesDisjointChars!2038 rules!4189 rulesRec!198))))

(assert (= (and start!351534 res!1517904) b!3744676))

(assert (= (and b!3744676 res!1517910) b!3744674))

(assert (= (and b!3744674 res!1517905) b!3744682))

(assert (= (and b!3744682 res!1517903) b!3744670))

(assert (= (and b!3744670 res!1517908) b!3744673))

(assert (= (and b!3744673 res!1517902) b!3744668))

(assert (= (and b!3744668 res!1517909) b!3744688))

(assert (= (and b!3744688 res!1517906) b!3744671))

(assert (= (and b!3744671 res!1517901) b!3744687))

(assert (= (and b!3744687 res!1517907) b!3744675))

(assert (= (and b!3744675 res!1517900) b!3744681))

(assert (= b!3744672 b!3744677))

(assert (= b!3744680 b!3744672))

(assert (= (and start!351534 ((_ is Cons!39770) rules!4189)) b!3744680))

(assert (= b!3744669 b!3744683))

(assert (= start!351534 b!3744669))

(assert (= b!3744684 b!3744686))

(assert (= b!3744679 b!3744684))

(assert (= (and start!351534 ((_ is Cons!39770) rulesRec!198)) b!3744679))

(assert (= b!3744678 b!3744685))

(assert (= start!351534 b!3744678))

(declare-fun m!4237923 () Bool)

(assert (=> b!3744674 m!4237923))

(declare-fun m!4237925 () Bool)

(assert (=> b!3744670 m!4237925))

(declare-fun m!4237927 () Bool)

(assert (=> b!3744678 m!4237927))

(declare-fun m!4237929 () Bool)

(assert (=> b!3744678 m!4237929))

(declare-fun m!4237931 () Bool)

(assert (=> b!3744676 m!4237931))

(declare-fun m!4237933 () Bool)

(assert (=> b!3744675 m!4237933))

(declare-fun m!4237935 () Bool)

(assert (=> b!3744681 m!4237935))

(declare-fun m!4237937 () Bool)

(assert (=> b!3744681 m!4237937))

(declare-fun m!4237939 () Bool)

(assert (=> b!3744668 m!4237939))

(assert (=> b!3744668 m!4237939))

(declare-fun m!4237941 () Bool)

(assert (=> b!3744668 m!4237941))

(declare-fun m!4237943 () Bool)

(assert (=> b!3744669 m!4237943))

(declare-fun m!4237945 () Bool)

(assert (=> b!3744669 m!4237945))

(declare-fun m!4237947 () Bool)

(assert (=> b!3744672 m!4237947))

(declare-fun m!4237949 () Bool)

(assert (=> b!3744672 m!4237949))

(declare-fun m!4237951 () Bool)

(assert (=> b!3744682 m!4237951))

(declare-fun m!4237953 () Bool)

(assert (=> b!3744684 m!4237953))

(declare-fun m!4237955 () Bool)

(assert (=> b!3744684 m!4237955))

(declare-fun m!4237957 () Bool)

(assert (=> b!3744688 m!4237957))

(declare-fun m!4237959 () Bool)

(assert (=> b!3744687 m!4237959))

(check-sat (not b_next!100239) (not b!3744680) (not b!3744668) (not b_next!100243) (not b_next!100241) b_and!277771 (not b!3744679) (not b!3744682) b_and!277763 tp_is_empty!18945 (not b!3744687) (not b!3744681) (not b!3744684) (not b!3744670) b_and!277769 (not b_next!100229) (not b!3744688) b_and!277767 b_and!277765 b_and!277761 (not b_next!100233) (not b!3744674) (not b_next!100235) (not b!3744675) (not b!3744676) (not b_next!100237) (not b_next!100231) b_and!277773 (not b!3744672) (not b!3744678) b_and!277759 (not b!3744669))
(check-sat (not b_next!100239) (not b_next!100243) (not b_next!100241) b_and!277771 b_and!277763 b_and!277773 b_and!277759 b_and!277769 (not b_next!100229) b_and!277767 b_and!277765 b_and!277761 (not b_next!100233) (not b_next!100235) (not b_next!100237) (not b_next!100231))
(get-model)

(declare-fun d!1093078 () Bool)

(declare-fun lt!1299382 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5820 (List!39893) (InoxSet C!22116))

(assert (=> d!1093078 (= lt!1299382 (select (content!5820 (usedCharacters!1228 (regex!6060 rNSep!159))) c!6900))))

(declare-fun e!2315457 () Bool)

(assert (=> d!1093078 (= lt!1299382 e!2315457)))

(declare-fun res!1517944 () Bool)

(assert (=> d!1093078 (=> (not res!1517944) (not e!2315457))))

(assert (=> d!1093078 (= res!1517944 ((_ is Cons!39769) (usedCharacters!1228 (regex!6060 rNSep!159))))))

(assert (=> d!1093078 (= (contains!8077 (usedCharacters!1228 (regex!6060 rNSep!159)) c!6900) lt!1299382)))

(declare-fun b!3744710 () Bool)

(declare-fun e!2315456 () Bool)

(assert (=> b!3744710 (= e!2315457 e!2315456)))

(declare-fun res!1517943 () Bool)

(assert (=> b!3744710 (=> res!1517943 e!2315456)))

(assert (=> b!3744710 (= res!1517943 (= (h!45189 (usedCharacters!1228 (regex!6060 rNSep!159))) c!6900))))

(declare-fun b!3744711 () Bool)

(assert (=> b!3744711 (= e!2315456 (contains!8077 (t!302576 (usedCharacters!1228 (regex!6060 rNSep!159))) c!6900))))

(assert (= (and d!1093078 res!1517944) b!3744710))

(assert (= (and b!3744710 (not res!1517943)) b!3744711))

(assert (=> d!1093078 m!4237939))

(declare-fun m!4237981 () Bool)

(assert (=> d!1093078 m!4237981))

(declare-fun m!4237983 () Bool)

(assert (=> d!1093078 m!4237983))

(declare-fun m!4237985 () Bool)

(assert (=> b!3744711 m!4237985))

(assert (=> b!3744668 d!1093078))

(declare-fun d!1093086 () Bool)

(declare-fun c!648634 () Bool)

(assert (=> d!1093086 (= c!648634 (or ((_ is EmptyExpr!10965) (regex!6060 rNSep!159)) ((_ is EmptyLang!10965) (regex!6060 rNSep!159))))))

(declare-fun e!2315486 () List!39893)

(assert (=> d!1093086 (= (usedCharacters!1228 (regex!6060 rNSep!159)) e!2315486)))

(declare-fun b!3744750 () Bool)

(declare-fun e!2315487 () List!39893)

(declare-fun call!274953 () List!39893)

(assert (=> b!3744750 (= e!2315487 call!274953)))

(declare-fun b!3744751 () Bool)

(declare-fun e!2315484 () List!39893)

(declare-fun call!274954 () List!39893)

(assert (=> b!3744751 (= e!2315484 call!274954)))

(declare-fun bm!274946 () Bool)

(declare-fun call!274951 () List!39893)

(declare-fun c!648635 () Bool)

(assert (=> bm!274946 (= call!274951 (usedCharacters!1228 (ite c!648635 (regTwo!22443 (regex!6060 rNSep!159)) (regTwo!22442 (regex!6060 rNSep!159)))))))

(declare-fun b!3744752 () Bool)

(assert (=> b!3744752 (= e!2315484 e!2315487)))

(assert (=> b!3744752 (= c!648635 ((_ is Union!10965) (regex!6060 rNSep!159)))))

(declare-fun b!3744753 () Bool)

(declare-fun e!2315485 () List!39893)

(assert (=> b!3744753 (= e!2315485 (Cons!39769 (c!648618 (regex!6060 rNSep!159)) Nil!39769))))

(declare-fun b!3744754 () Bool)

(assert (=> b!3744754 (= e!2315486 Nil!39769)))

(declare-fun b!3744755 () Bool)

(assert (=> b!3744755 (= e!2315487 call!274953)))

(declare-fun bm!274947 () Bool)

(declare-fun call!274952 () List!39893)

(declare-fun ++!9878 (List!39893 List!39893) List!39893)

(assert (=> bm!274947 (= call!274953 (++!9878 call!274952 call!274951))))

(declare-fun b!3744756 () Bool)

(assert (=> b!3744756 (= e!2315486 e!2315485)))

(declare-fun c!648633 () Bool)

(assert (=> b!3744756 (= c!648633 ((_ is ElementMatch!10965) (regex!6060 rNSep!159)))))

(declare-fun bm!274948 () Bool)

(assert (=> bm!274948 (= call!274952 call!274954)))

(declare-fun b!3744757 () Bool)

(declare-fun c!648632 () Bool)

(assert (=> b!3744757 (= c!648632 ((_ is Star!10965) (regex!6060 rNSep!159)))))

(assert (=> b!3744757 (= e!2315485 e!2315484)))

(declare-fun bm!274949 () Bool)

(assert (=> bm!274949 (= call!274954 (usedCharacters!1228 (ite c!648632 (reg!11294 (regex!6060 rNSep!159)) (ite c!648635 (regOne!22443 (regex!6060 rNSep!159)) (regOne!22442 (regex!6060 rNSep!159))))))))

(assert (= (and d!1093086 c!648634) b!3744754))

(assert (= (and d!1093086 (not c!648634)) b!3744756))

(assert (= (and b!3744756 c!648633) b!3744753))

(assert (= (and b!3744756 (not c!648633)) b!3744757))

(assert (= (and b!3744757 c!648632) b!3744751))

(assert (= (and b!3744757 (not c!648632)) b!3744752))

(assert (= (and b!3744752 c!648635) b!3744750))

(assert (= (and b!3744752 (not c!648635)) b!3744755))

(assert (= (or b!3744750 b!3744755) bm!274948))

(assert (= (or b!3744750 b!3744755) bm!274946))

(assert (= (or b!3744750 b!3744755) bm!274947))

(assert (= (or b!3744751 bm!274948) bm!274949))

(declare-fun m!4238007 () Bool)

(assert (=> bm!274946 m!4238007))

(declare-fun m!4238011 () Bool)

(assert (=> bm!274947 m!4238011))

(declare-fun m!4238017 () Bool)

(assert (=> bm!274949 m!4238017))

(assert (=> b!3744668 d!1093086))

(declare-fun d!1093106 () Bool)

(declare-fun res!1517965 () Bool)

(declare-fun e!2315502 () Bool)

(assert (=> d!1093106 (=> res!1517965 e!2315502)))

(assert (=> d!1093106 (= res!1517965 (not ((_ is Cons!39770) rulesRec!198)))))

(assert (=> d!1093106 (= (sepAndNonSepRulesDisjointChars!2038 rules!4189 rulesRec!198) e!2315502)))

(declare-fun b!3744780 () Bool)

(declare-fun e!2315503 () Bool)

(assert (=> b!3744780 (= e!2315502 e!2315503)))

(declare-fun res!1517966 () Bool)

(assert (=> b!3744780 (=> (not res!1517966) (not e!2315503))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!935 (Rule!11920 List!39894) Bool)

(assert (=> b!3744780 (= res!1517966 (ruleDisjointCharsFromAllFromOtherType!935 (h!45190 rulesRec!198) rules!4189))))

(declare-fun b!3744781 () Bool)

(assert (=> b!3744781 (= e!2315503 (sepAndNonSepRulesDisjointChars!2038 rules!4189 (t!302577 rulesRec!198)))))

(assert (= (and d!1093106 (not res!1517965)) b!3744780))

(assert (= (and b!3744780 res!1517966) b!3744781))

(declare-fun m!4238019 () Bool)

(assert (=> b!3744780 m!4238019))

(assert (=> b!3744781 m!4237933))

(assert (=> b!3744688 d!1093106))

(declare-fun d!1093108 () Bool)

(assert (=> d!1093108 (= (inv!53307 (tag!6920 rNSep!159)) (= (mod (str.len (value!193307 (tag!6920 rNSep!159))) 2) 0))))

(assert (=> b!3744678 d!1093108))

(declare-fun d!1093110 () Bool)

(declare-fun res!1517971 () Bool)

(declare-fun e!2315520 () Bool)

(assert (=> d!1093110 (=> (not res!1517971) (not e!2315520))))

(declare-fun semiInverseModEq!2593 (Int Int) Bool)

(assert (=> d!1093110 (= res!1517971 (semiInverseModEq!2593 (toChars!8263 (transformation!6060 rNSep!159)) (toValue!8404 (transformation!6060 rNSep!159))))))

(assert (=> d!1093110 (= (inv!53309 (transformation!6060 rNSep!159)) e!2315520)))

(declare-fun b!3744802 () Bool)

(declare-fun equivClasses!2492 (Int Int) Bool)

(assert (=> b!3744802 (= e!2315520 (equivClasses!2492 (toChars!8263 (transformation!6060 rNSep!159)) (toValue!8404 (transformation!6060 rNSep!159))))))

(assert (= (and d!1093110 res!1517971) b!3744802))

(declare-fun m!4238035 () Bool)

(assert (=> d!1093110 m!4238035))

(declare-fun m!4238037 () Bool)

(assert (=> b!3744802 m!4238037))

(assert (=> b!3744678 d!1093110))

(declare-fun d!1093120 () Bool)

(declare-fun lt!1299393 () Int)

(assert (=> d!1093120 (>= lt!1299393 0)))

(declare-fun e!2315537 () Int)

(assert (=> d!1093120 (= lt!1299393 e!2315537)))

(declare-fun c!648650 () Bool)

(assert (=> d!1093120 (= c!648650 ((_ is Nil!39770) (t!302577 rulesRec!198)))))

(assert (=> d!1093120 (= (ListPrimitiveSize!257 (t!302577 rulesRec!198)) lt!1299393)))

(declare-fun b!3744839 () Bool)

(assert (=> b!3744839 (= e!2315537 0)))

(declare-fun b!3744840 () Bool)

(assert (=> b!3744840 (= e!2315537 (+ 1 (ListPrimitiveSize!257 (t!302577 (t!302577 rulesRec!198)))))))

(assert (= (and d!1093120 c!648650) b!3744839))

(assert (= (and d!1093120 (not c!648650)) b!3744840))

(declare-fun m!4238047 () Bool)

(assert (=> b!3744840 m!4238047))

(assert (=> b!3744681 d!1093120))

(declare-fun d!1093122 () Bool)

(declare-fun lt!1299394 () Int)

(assert (=> d!1093122 (>= lt!1299394 0)))

(declare-fun e!2315538 () Int)

(assert (=> d!1093122 (= lt!1299394 e!2315538)))

(declare-fun c!648651 () Bool)

(assert (=> d!1093122 (= c!648651 ((_ is Nil!39770) rulesRec!198))))

(assert (=> d!1093122 (= (ListPrimitiveSize!257 rulesRec!198) lt!1299394)))

(declare-fun b!3744841 () Bool)

(assert (=> b!3744841 (= e!2315538 0)))

(declare-fun b!3744842 () Bool)

(assert (=> b!3744842 (= e!2315538 (+ 1 (ListPrimitiveSize!257 (t!302577 rulesRec!198))))))

(assert (= (and d!1093122 c!648651) b!3744841))

(assert (= (and d!1093122 (not c!648651)) b!3744842))

(assert (=> b!3744842 m!4237935))

(assert (=> b!3744681 d!1093122))

(declare-fun d!1093124 () Bool)

(declare-fun lt!1299397 () Bool)

(declare-fun content!5822 (List!39894) (InoxSet Rule!11920))

(assert (=> d!1093124 (= lt!1299397 (select (content!5822 rulesRec!198) rNSep!159))))

(declare-fun e!2315544 () Bool)

(assert (=> d!1093124 (= lt!1299397 e!2315544)))

(declare-fun res!1517976 () Bool)

(assert (=> d!1093124 (=> (not res!1517976) (not e!2315544))))

(assert (=> d!1093124 (= res!1517976 ((_ is Cons!39770) rulesRec!198))))

(assert (=> d!1093124 (= (contains!8078 rulesRec!198 rNSep!159) lt!1299397)))

(declare-fun b!3744847 () Bool)

(declare-fun e!2315543 () Bool)

(assert (=> b!3744847 (= e!2315544 e!2315543)))

(declare-fun res!1517977 () Bool)

(assert (=> b!3744847 (=> res!1517977 e!2315543)))

(assert (=> b!3744847 (= res!1517977 (= (h!45190 rulesRec!198) rNSep!159))))

(declare-fun b!3744848 () Bool)

(assert (=> b!3744848 (= e!2315543 (contains!8078 (t!302577 rulesRec!198) rNSep!159))))

(assert (= (and d!1093124 res!1517976) b!3744847))

(assert (= (and b!3744847 (not res!1517977)) b!3744848))

(declare-fun m!4238049 () Bool)

(assert (=> d!1093124 m!4238049))

(declare-fun m!4238051 () Bool)

(assert (=> d!1093124 m!4238051))

(assert (=> b!3744848 m!4237959))

(assert (=> b!3744682 d!1093124))

(declare-fun d!1093126 () Bool)

(assert (=> d!1093126 (= (inv!53307 (tag!6920 rSep!159)) (= (mod (str.len (value!193307 (tag!6920 rSep!159))) 2) 0))))

(assert (=> b!3744669 d!1093126))

(declare-fun d!1093128 () Bool)

(declare-fun res!1517978 () Bool)

(declare-fun e!2315545 () Bool)

(assert (=> d!1093128 (=> (not res!1517978) (not e!2315545))))

(assert (=> d!1093128 (= res!1517978 (semiInverseModEq!2593 (toChars!8263 (transformation!6060 rSep!159)) (toValue!8404 (transformation!6060 rSep!159))))))

(assert (=> d!1093128 (= (inv!53309 (transformation!6060 rSep!159)) e!2315545)))

(declare-fun b!3744849 () Bool)

(assert (=> b!3744849 (= e!2315545 (equivClasses!2492 (toChars!8263 (transformation!6060 rSep!159)) (toValue!8404 (transformation!6060 rSep!159))))))

(assert (= (and d!1093128 res!1517978) b!3744849))

(declare-fun m!4238053 () Bool)

(assert (=> d!1093128 m!4238053))

(declare-fun m!4238055 () Bool)

(assert (=> b!3744849 m!4238055))

(assert (=> b!3744669 d!1093128))

(declare-fun d!1093130 () Bool)

(declare-fun lt!1299398 () Bool)

(assert (=> d!1093130 (= lt!1299398 (select (content!5822 rules!4189) rNSep!159))))

(declare-fun e!2315547 () Bool)

(assert (=> d!1093130 (= lt!1299398 e!2315547)))

(declare-fun res!1517979 () Bool)

(assert (=> d!1093130 (=> (not res!1517979) (not e!2315547))))

(assert (=> d!1093130 (= res!1517979 ((_ is Cons!39770) rules!4189))))

(assert (=> d!1093130 (= (contains!8078 rules!4189 rNSep!159) lt!1299398)))

(declare-fun b!3744850 () Bool)

(declare-fun e!2315546 () Bool)

(assert (=> b!3744850 (= e!2315547 e!2315546)))

(declare-fun res!1517980 () Bool)

(assert (=> b!3744850 (=> res!1517980 e!2315546)))

(assert (=> b!3744850 (= res!1517980 (= (h!45190 rules!4189) rNSep!159))))

(declare-fun b!3744851 () Bool)

(assert (=> b!3744851 (= e!2315546 (contains!8078 (t!302577 rules!4189) rNSep!159))))

(assert (= (and d!1093130 res!1517979) b!3744850))

(assert (= (and b!3744850 (not res!1517980)) b!3744851))

(declare-fun m!4238057 () Bool)

(assert (=> d!1093130 m!4238057))

(declare-fun m!4238059 () Bool)

(assert (=> d!1093130 m!4238059))

(declare-fun m!4238061 () Bool)

(assert (=> b!3744851 m!4238061))

(assert (=> b!3744670 d!1093130))

(declare-fun d!1093132 () Bool)

(assert (=> d!1093132 (= (inv!53307 (tag!6920 (h!45190 rulesRec!198))) (= (mod (str.len (value!193307 (tag!6920 (h!45190 rulesRec!198)))) 2) 0))))

(assert (=> b!3744684 d!1093132))

(declare-fun d!1093134 () Bool)

(declare-fun res!1517981 () Bool)

(declare-fun e!2315548 () Bool)

(assert (=> d!1093134 (=> (not res!1517981) (not e!2315548))))

(assert (=> d!1093134 (= res!1517981 (semiInverseModEq!2593 (toChars!8263 (transformation!6060 (h!45190 rulesRec!198))) (toValue!8404 (transformation!6060 (h!45190 rulesRec!198)))))))

(assert (=> d!1093134 (= (inv!53309 (transformation!6060 (h!45190 rulesRec!198))) e!2315548)))

(declare-fun b!3744852 () Bool)

(assert (=> b!3744852 (= e!2315548 (equivClasses!2492 (toChars!8263 (transformation!6060 (h!45190 rulesRec!198))) (toValue!8404 (transformation!6060 (h!45190 rulesRec!198)))))))

(assert (= (and d!1093134 res!1517981) b!3744852))

(declare-fun m!4238063 () Bool)

(assert (=> d!1093134 m!4238063))

(declare-fun m!4238065 () Bool)

(assert (=> b!3744852 m!4238065))

(assert (=> b!3744684 d!1093134))

(declare-fun d!1093136 () Bool)

(declare-fun lt!1299399 () Bool)

(assert (=> d!1093136 (= lt!1299399 (select (content!5822 rules!4189) rSep!159))))

(declare-fun e!2315550 () Bool)

(assert (=> d!1093136 (= lt!1299399 e!2315550)))

(declare-fun res!1517982 () Bool)

(assert (=> d!1093136 (=> (not res!1517982) (not e!2315550))))

(assert (=> d!1093136 (= res!1517982 ((_ is Cons!39770) rules!4189))))

(assert (=> d!1093136 (= (contains!8078 rules!4189 rSep!159) lt!1299399)))

(declare-fun b!3744853 () Bool)

(declare-fun e!2315549 () Bool)

(assert (=> b!3744853 (= e!2315550 e!2315549)))

(declare-fun res!1517983 () Bool)

(assert (=> b!3744853 (=> res!1517983 e!2315549)))

(assert (=> b!3744853 (= res!1517983 (= (h!45190 rules!4189) rSep!159))))

(declare-fun b!3744854 () Bool)

(assert (=> b!3744854 (= e!2315549 (contains!8078 (t!302577 rules!4189) rSep!159))))

(assert (= (and d!1093136 res!1517982) b!3744853))

(assert (= (and b!3744853 (not res!1517983)) b!3744854))

(assert (=> d!1093136 m!4238057))

(declare-fun m!4238067 () Bool)

(assert (=> d!1093136 m!4238067))

(declare-fun m!4238069 () Bool)

(assert (=> b!3744854 m!4238069))

(assert (=> b!3744674 d!1093136))

(declare-fun d!1093138 () Bool)

(assert (=> d!1093138 (= (inv!53307 (tag!6920 (h!45190 rules!4189))) (= (mod (str.len (value!193307 (tag!6920 (h!45190 rules!4189)))) 2) 0))))

(assert (=> b!3744672 d!1093138))

(declare-fun d!1093140 () Bool)

(declare-fun res!1517984 () Bool)

(declare-fun e!2315551 () Bool)

(assert (=> d!1093140 (=> (not res!1517984) (not e!2315551))))

(assert (=> d!1093140 (= res!1517984 (semiInverseModEq!2593 (toChars!8263 (transformation!6060 (h!45190 rules!4189))) (toValue!8404 (transformation!6060 (h!45190 rules!4189)))))))

(assert (=> d!1093140 (= (inv!53309 (transformation!6060 (h!45190 rules!4189))) e!2315551)))

(declare-fun b!3744855 () Bool)

(assert (=> b!3744855 (= e!2315551 (equivClasses!2492 (toChars!8263 (transformation!6060 (h!45190 rules!4189))) (toValue!8404 (transformation!6060 (h!45190 rules!4189)))))))

(assert (= (and d!1093140 res!1517984) b!3744855))

(declare-fun m!4238071 () Bool)

(assert (=> d!1093140 m!4238071))

(declare-fun m!4238073 () Bool)

(assert (=> b!3744855 m!4238073))

(assert (=> b!3744672 d!1093140))

(declare-fun d!1093142 () Bool)

(declare-fun res!1517987 () Bool)

(declare-fun e!2315554 () Bool)

(assert (=> d!1093142 (=> (not res!1517987) (not e!2315554))))

(declare-fun rulesValid!2349 (LexerInterface!5649 List!39894) Bool)

(assert (=> d!1093142 (= res!1517987 (rulesValid!2349 thiss!27143 rules!4189))))

(assert (=> d!1093142 (= (rulesInvariant!5046 thiss!27143 rules!4189) e!2315554)))

(declare-fun b!3744858 () Bool)

(declare-datatypes ((List!39896 0))(
  ( (Nil!39772) (Cons!39772 (h!45192 String!45076) (t!302579 List!39896)) )
))
(declare-fun noDuplicateTag!2350 (LexerInterface!5649 List!39894 List!39896) Bool)

(assert (=> b!3744858 (= e!2315554 (noDuplicateTag!2350 thiss!27143 rules!4189 Nil!39772))))

(assert (= (and d!1093142 res!1517987) b!3744858))

(declare-fun m!4238075 () Bool)

(assert (=> d!1093142 m!4238075))

(declare-fun m!4238077 () Bool)

(assert (=> b!3744858 m!4238077))

(assert (=> b!3744676 d!1093142))

(declare-fun d!1093144 () Bool)

(declare-fun lt!1299400 () Bool)

(assert (=> d!1093144 (= lt!1299400 (select (content!5822 (t!302577 rulesRec!198)) rNSep!159))))

(declare-fun e!2315556 () Bool)

(assert (=> d!1093144 (= lt!1299400 e!2315556)))

(declare-fun res!1517988 () Bool)

(assert (=> d!1093144 (=> (not res!1517988) (not e!2315556))))

(assert (=> d!1093144 (= res!1517988 ((_ is Cons!39770) (t!302577 rulesRec!198)))))

(assert (=> d!1093144 (= (contains!8078 (t!302577 rulesRec!198) rNSep!159) lt!1299400)))

(declare-fun b!3744859 () Bool)

(declare-fun e!2315555 () Bool)

(assert (=> b!3744859 (= e!2315556 e!2315555)))

(declare-fun res!1517989 () Bool)

(assert (=> b!3744859 (=> res!1517989 e!2315555)))

(assert (=> b!3744859 (= res!1517989 (= (h!45190 (t!302577 rulesRec!198)) rNSep!159))))

(declare-fun b!3744860 () Bool)

(assert (=> b!3744860 (= e!2315555 (contains!8078 (t!302577 (t!302577 rulesRec!198)) rNSep!159))))

(assert (= (and d!1093144 res!1517988) b!3744859))

(assert (= (and b!3744859 (not res!1517989)) b!3744860))

(declare-fun m!4238079 () Bool)

(assert (=> d!1093144 m!4238079))

(declare-fun m!4238081 () Bool)

(assert (=> d!1093144 m!4238081))

(declare-fun m!4238083 () Bool)

(assert (=> b!3744860 m!4238083))

(assert (=> b!3744687 d!1093144))

(declare-fun d!1093146 () Bool)

(declare-fun res!1517990 () Bool)

(declare-fun e!2315557 () Bool)

(assert (=> d!1093146 (=> res!1517990 e!2315557)))

(assert (=> d!1093146 (= res!1517990 (not ((_ is Cons!39770) (t!302577 rulesRec!198))))))

(assert (=> d!1093146 (= (sepAndNonSepRulesDisjointChars!2038 rules!4189 (t!302577 rulesRec!198)) e!2315557)))

(declare-fun b!3744861 () Bool)

(declare-fun e!2315558 () Bool)

(assert (=> b!3744861 (= e!2315557 e!2315558)))

(declare-fun res!1517991 () Bool)

(assert (=> b!3744861 (=> (not res!1517991) (not e!2315558))))

(assert (=> b!3744861 (= res!1517991 (ruleDisjointCharsFromAllFromOtherType!935 (h!45190 (t!302577 rulesRec!198)) rules!4189))))

(declare-fun b!3744862 () Bool)

(assert (=> b!3744862 (= e!2315558 (sepAndNonSepRulesDisjointChars!2038 rules!4189 (t!302577 (t!302577 rulesRec!198))))))

(assert (= (and d!1093146 (not res!1517990)) b!3744861))

(assert (= (and b!3744861 res!1517991) b!3744862))

(declare-fun m!4238085 () Bool)

(assert (=> b!3744861 m!4238085))

(declare-fun m!4238087 () Bool)

(assert (=> b!3744862 m!4238087))

(assert (=> b!3744675 d!1093146))

(declare-fun b!3744875 () Bool)

(declare-fun e!2315561 () Bool)

(declare-fun tp!1141970 () Bool)

(assert (=> b!3744875 (= e!2315561 tp!1141970)))

(declare-fun b!3744873 () Bool)

(assert (=> b!3744873 (= e!2315561 tp_is_empty!18945)))

(declare-fun b!3744874 () Bool)

(declare-fun tp!1141973 () Bool)

(declare-fun tp!1141969 () Bool)

(assert (=> b!3744874 (= e!2315561 (and tp!1141973 tp!1141969))))

(declare-fun b!3744876 () Bool)

(declare-fun tp!1141971 () Bool)

(declare-fun tp!1141972 () Bool)

(assert (=> b!3744876 (= e!2315561 (and tp!1141971 tp!1141972))))

(assert (=> b!3744684 (= tp!1141911 e!2315561)))

(assert (= (and b!3744684 ((_ is ElementMatch!10965) (regex!6060 (h!45190 rulesRec!198)))) b!3744873))

(assert (= (and b!3744684 ((_ is Concat!17256) (regex!6060 (h!45190 rulesRec!198)))) b!3744874))

(assert (= (and b!3744684 ((_ is Star!10965) (regex!6060 (h!45190 rulesRec!198)))) b!3744875))

(assert (= (and b!3744684 ((_ is Union!10965) (regex!6060 (h!45190 rulesRec!198)))) b!3744876))

(declare-fun b!3744887 () Bool)

(declare-fun b_free!99549 () Bool)

(declare-fun b_next!100253 () Bool)

(assert (=> b!3744887 (= b_free!99549 (not b_next!100253))))

(declare-fun tp!1141985 () Bool)

(declare-fun b_and!277783 () Bool)

(assert (=> b!3744887 (= tp!1141985 b_and!277783)))

(declare-fun b_free!99551 () Bool)

(declare-fun b_next!100255 () Bool)

(assert (=> b!3744887 (= b_free!99551 (not b_next!100255))))

(declare-fun tp!1141982 () Bool)

(declare-fun b_and!277785 () Bool)

(assert (=> b!3744887 (= tp!1141982 b_and!277785)))

(declare-fun e!2315571 () Bool)

(assert (=> b!3744887 (= e!2315571 (and tp!1141985 tp!1141982))))

(declare-fun b!3744886 () Bool)

(declare-fun e!2315573 () Bool)

(declare-fun tp!1141983 () Bool)

(assert (=> b!3744886 (= e!2315573 (and tp!1141983 (inv!53307 (tag!6920 (h!45190 (t!302577 rulesRec!198)))) (inv!53309 (transformation!6060 (h!45190 (t!302577 rulesRec!198)))) e!2315571))))

(declare-fun b!3744885 () Bool)

(declare-fun e!2315572 () Bool)

(declare-fun tp!1141984 () Bool)

(assert (=> b!3744885 (= e!2315572 (and e!2315573 tp!1141984))))

(assert (=> b!3744679 (= tp!1141903 e!2315572)))

(assert (= b!3744886 b!3744887))

(assert (= b!3744885 b!3744886))

(assert (= (and b!3744679 ((_ is Cons!39770) (t!302577 rulesRec!198))) b!3744885))

(declare-fun m!4238089 () Bool)

(assert (=> b!3744886 m!4238089))

(declare-fun m!4238091 () Bool)

(assert (=> b!3744886 m!4238091))

(declare-fun b!3744890 () Bool)

(declare-fun e!2315574 () Bool)

(declare-fun tp!1141987 () Bool)

(assert (=> b!3744890 (= e!2315574 tp!1141987)))

(declare-fun b!3744888 () Bool)

(assert (=> b!3744888 (= e!2315574 tp_is_empty!18945)))

(declare-fun b!3744889 () Bool)

(declare-fun tp!1141990 () Bool)

(declare-fun tp!1141986 () Bool)

(assert (=> b!3744889 (= e!2315574 (and tp!1141990 tp!1141986))))

(declare-fun b!3744891 () Bool)

(declare-fun tp!1141988 () Bool)

(declare-fun tp!1141989 () Bool)

(assert (=> b!3744891 (= e!2315574 (and tp!1141988 tp!1141989))))

(assert (=> b!3744672 (= tp!1141909 e!2315574)))

(assert (= (and b!3744672 ((_ is ElementMatch!10965) (regex!6060 (h!45190 rules!4189)))) b!3744888))

(assert (= (and b!3744672 ((_ is Concat!17256) (regex!6060 (h!45190 rules!4189)))) b!3744889))

(assert (= (and b!3744672 ((_ is Star!10965) (regex!6060 (h!45190 rules!4189)))) b!3744890))

(assert (= (and b!3744672 ((_ is Union!10965) (regex!6060 (h!45190 rules!4189)))) b!3744891))

(declare-fun b!3744894 () Bool)

(declare-fun e!2315575 () Bool)

(declare-fun tp!1141992 () Bool)

(assert (=> b!3744894 (= e!2315575 tp!1141992)))

(declare-fun b!3744892 () Bool)

(assert (=> b!3744892 (= e!2315575 tp_is_empty!18945)))

(declare-fun b!3744893 () Bool)

(declare-fun tp!1141995 () Bool)

(declare-fun tp!1141991 () Bool)

(assert (=> b!3744893 (= e!2315575 (and tp!1141995 tp!1141991))))

(declare-fun b!3744895 () Bool)

(declare-fun tp!1141993 () Bool)

(declare-fun tp!1141994 () Bool)

(assert (=> b!3744895 (= e!2315575 (and tp!1141993 tp!1141994))))

(assert (=> b!3744678 (= tp!1141912 e!2315575)))

(assert (= (and b!3744678 ((_ is ElementMatch!10965) (regex!6060 rNSep!159))) b!3744892))

(assert (= (and b!3744678 ((_ is Concat!17256) (regex!6060 rNSep!159))) b!3744893))

(assert (= (and b!3744678 ((_ is Star!10965) (regex!6060 rNSep!159))) b!3744894))

(assert (= (and b!3744678 ((_ is Union!10965) (regex!6060 rNSep!159))) b!3744895))

(declare-fun b!3744898 () Bool)

(declare-fun e!2315576 () Bool)

(declare-fun tp!1141997 () Bool)

(assert (=> b!3744898 (= e!2315576 tp!1141997)))

(declare-fun b!3744896 () Bool)

(assert (=> b!3744896 (= e!2315576 tp_is_empty!18945)))

(declare-fun b!3744897 () Bool)

(declare-fun tp!1142000 () Bool)

(declare-fun tp!1141996 () Bool)

(assert (=> b!3744897 (= e!2315576 (and tp!1142000 tp!1141996))))

(declare-fun b!3744899 () Bool)

(declare-fun tp!1141998 () Bool)

(declare-fun tp!1141999 () Bool)

(assert (=> b!3744899 (= e!2315576 (and tp!1141998 tp!1141999))))

(assert (=> b!3744669 (= tp!1141902 e!2315576)))

(assert (= (and b!3744669 ((_ is ElementMatch!10965) (regex!6060 rSep!159))) b!3744896))

(assert (= (and b!3744669 ((_ is Concat!17256) (regex!6060 rSep!159))) b!3744897))

(assert (= (and b!3744669 ((_ is Star!10965) (regex!6060 rSep!159))) b!3744898))

(assert (= (and b!3744669 ((_ is Union!10965) (regex!6060 rSep!159))) b!3744899))

(declare-fun b!3744902 () Bool)

(declare-fun b_free!99553 () Bool)

(declare-fun b_next!100257 () Bool)

(assert (=> b!3744902 (= b_free!99553 (not b_next!100257))))

(declare-fun tp!1142004 () Bool)

(declare-fun b_and!277787 () Bool)

(assert (=> b!3744902 (= tp!1142004 b_and!277787)))

(declare-fun b_free!99555 () Bool)

(declare-fun b_next!100259 () Bool)

(assert (=> b!3744902 (= b_free!99555 (not b_next!100259))))

(declare-fun tp!1142001 () Bool)

(declare-fun b_and!277789 () Bool)

(assert (=> b!3744902 (= tp!1142001 b_and!277789)))

(declare-fun e!2315578 () Bool)

(assert (=> b!3744902 (= e!2315578 (and tp!1142004 tp!1142001))))

(declare-fun b!3744901 () Bool)

(declare-fun tp!1142002 () Bool)

(declare-fun e!2315580 () Bool)

(assert (=> b!3744901 (= e!2315580 (and tp!1142002 (inv!53307 (tag!6920 (h!45190 (t!302577 rules!4189)))) (inv!53309 (transformation!6060 (h!45190 (t!302577 rules!4189)))) e!2315578))))

(declare-fun b!3744900 () Bool)

(declare-fun e!2315579 () Bool)

(declare-fun tp!1142003 () Bool)

(assert (=> b!3744900 (= e!2315579 (and e!2315580 tp!1142003))))

(assert (=> b!3744680 (= tp!1141906 e!2315579)))

(assert (= b!3744901 b!3744902))

(assert (= b!3744900 b!3744901))

(assert (= (and b!3744680 ((_ is Cons!39770) (t!302577 rules!4189))) b!3744900))

(declare-fun m!4238093 () Bool)

(assert (=> b!3744901 m!4238093))

(declare-fun m!4238095 () Bool)

(assert (=> b!3744901 m!4238095))

(check-sat (not b!3744876) (not b_next!100243) (not b!3744897) (not b_next!100257) (not b!3744802) tp_is_empty!18945 b_and!277773 b_and!277759 (not d!1093134) (not b!3744780) (not d!1093136) (not b_next!100239) (not b!3744885) (not b!3744893) (not b!3744875) (not b!3744860) (not b!3744711) (not b!3744891) b_and!277787 (not d!1093078) (not b_next!100241) (not d!1093144) (not b!3744849) (not d!1093124) b_and!277771 (not b!3744890) (not b!3744858) b_and!277769 (not b!3744851) (not b_next!100229) b_and!277767 b_and!277765 (not b!3744894) b_and!277761 (not b!3744886) (not d!1093128) (not d!1093130) (not b!3744901) b_and!277785 (not b!3744855) (not b!3744874) (not b!3744854) (not b!3744862) (not b_next!100235) (not bm!274946) (not b_next!100233) (not b!3744840) (not b_next!100253) (not b_next!100255) (not b_next!100259) (not b_next!100237) (not b_next!100231) (not b!3744861) (not d!1093110) (not b!3744848) b_and!277783 (not b!3744852) b_and!277763 (not b!3744781) (not d!1093142) (not b!3744900) (not b!3744842) (not bm!274949) (not d!1093140) (not b!3744899) (not bm!274947) (not b!3744898) b_and!277789 (not b!3744889) (not b!3744895))
(check-sat (not b_next!100239) b_and!277787 (not b_next!100243) (not b_next!100241) b_and!277771 b_and!277785 (not b_next!100253) (not b_next!100257) b_and!277783 b_and!277763 b_and!277773 b_and!277759 b_and!277789 b_and!277769 (not b_next!100229) b_and!277767 b_and!277765 b_and!277761 (not b_next!100233) (not b_next!100235) (not b_next!100255) (not b_next!100259) (not b_next!100237) (not b_next!100231))

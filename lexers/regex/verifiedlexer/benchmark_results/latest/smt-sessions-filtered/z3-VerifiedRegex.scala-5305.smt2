; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271680 () Bool)

(assert start!271680)

(declare-fun b!2808444 () Bool)

(declare-fun b_free!80085 () Bool)

(declare-fun b_next!80789 () Bool)

(assert (=> b!2808444 (= b_free!80085 (not b_next!80789))))

(declare-fun tp!896482 () Bool)

(declare-fun b_and!205151 () Bool)

(assert (=> b!2808444 (= tp!896482 b_and!205151)))

(declare-fun b_free!80087 () Bool)

(declare-fun b_next!80791 () Bool)

(assert (=> b!2808444 (= b_free!80087 (not b_next!80791))))

(declare-fun tp!896483 () Bool)

(declare-fun b_and!205153 () Bool)

(assert (=> b!2808444 (= tp!896483 b_and!205153)))

(declare-fun b!2808439 () Bool)

(declare-fun b_free!80089 () Bool)

(declare-fun b_next!80793 () Bool)

(assert (=> b!2808439 (= b_free!80089 (not b_next!80793))))

(declare-fun tp!896480 () Bool)

(declare-fun b_and!205155 () Bool)

(assert (=> b!2808439 (= tp!896480 b_and!205155)))

(declare-fun b_free!80091 () Bool)

(declare-fun b_next!80795 () Bool)

(assert (=> b!2808439 (= b_free!80091 (not b_next!80795))))

(declare-fun tp!896479 () Bool)

(declare-fun b_and!205157 () Bool)

(assert (=> b!2808439 (= tp!896479 b_and!205157)))

(declare-fun e!1775882 () Bool)

(assert (=> b!2808439 (= e!1775882 (and tp!896480 tp!896479))))

(declare-datatypes ((List!32871 0))(
  ( (Nil!32771) (Cons!32771 (h!38191 (_ BitVec 16)) (t!229551 List!32871)) )
))
(declare-datatypes ((TokenValue!5127 0))(
  ( (FloatLiteralValue!10254 (text!36334 List!32871)) (TokenValueExt!5126 (__x!21911 Int)) (Broken!25635 (value!157676 List!32871)) (Object!5226) (End!5127) (Def!5127) (Underscore!5127) (Match!5127) (Else!5127) (Error!5127) (Case!5127) (If!5127) (Extends!5127) (Abstract!5127) (Class!5127) (Val!5127) (DelimiterValue!10254 (del!5187 List!32871)) (KeywordValue!5133 (value!157677 List!32871)) (CommentValue!10254 (value!157678 List!32871)) (WhitespaceValue!10254 (value!157679 List!32871)) (IndentationValue!5127 (value!157680 List!32871)) (String!35970) (Int32!5127) (Broken!25636 (value!157681 List!32871)) (Boolean!5128) (Unit!46805) (OperatorValue!5130 (op!5187 List!32871)) (IdentifierValue!10254 (value!157682 List!32871)) (IdentifierValue!10255 (value!157683 List!32871)) (WhitespaceValue!10255 (value!157684 List!32871)) (True!10254) (False!10254) (Broken!25637 (value!157685 List!32871)) (Broken!25638 (value!157686 List!32871)) (True!10255) (RightBrace!5127) (RightBracket!5127) (Colon!5127) (Null!5127) (Comma!5127) (LeftBracket!5127) (False!10255) (LeftBrace!5127) (ImaginaryLiteralValue!5127 (text!36335 List!32871)) (StringLiteralValue!15381 (value!157687 List!32871)) (EOFValue!5127 (value!157688 List!32871)) (IdentValue!5127 (value!157689 List!32871)) (DelimiterValue!10255 (value!157690 List!32871)) (DedentValue!5127 (value!157691 List!32871)) (NewLineValue!5127 (value!157692 List!32871)) (IntegerValue!15381 (value!157693 (_ BitVec 32)) (text!36336 List!32871)) (IntegerValue!15382 (value!157694 Int) (text!36337 List!32871)) (Times!5127) (Or!5127) (Equal!5127) (Minus!5127) (Broken!25639 (value!157695 List!32871)) (And!5127) (Div!5127) (LessEqual!5127) (Mod!5127) (Concat!13402) (Not!5127) (Plus!5127) (SpaceValue!5127 (value!157696 List!32871)) (IntegerValue!15383 (value!157697 Int) (text!36338 List!32871)) (StringLiteralValue!15382 (text!36339 List!32871)) (FloatLiteralValue!10255 (text!36340 List!32871)) (BytesLiteralValue!5127 (value!157698 List!32871)) (CommentValue!10255 (value!157699 List!32871)) (StringLiteralValue!15383 (value!157700 List!32871)) (ErrorTokenValue!5127 (msg!5188 List!32871)) )
))
(declare-datatypes ((C!16708 0))(
  ( (C!16709 (val!10288 Int)) )
))
(declare-datatypes ((String!35971 0))(
  ( (String!35972 (value!157701 String)) )
))
(declare-datatypes ((List!32872 0))(
  ( (Nil!32772) (Cons!32772 (h!38192 C!16708) (t!229552 List!32872)) )
))
(declare-datatypes ((IArray!20293 0))(
  ( (IArray!20294 (innerList!10204 List!32872)) )
))
(declare-datatypes ((Conc!10144 0))(
  ( (Node!10144 (left!24731 Conc!10144) (right!25061 Conc!10144) (csize!20518 Int) (cheight!10355 Int)) (Leaf!15450 (xs!13256 IArray!20293) (csize!20519 Int)) (Empty!10144) )
))
(declare-datatypes ((BalanceConc!19902 0))(
  ( (BalanceConc!19903 (c!454924 Conc!10144)) )
))
(declare-datatypes ((TokenValueInjection!9694 0))(
  ( (TokenValueInjection!9695 (toValue!6907 Int) (toChars!6766 Int)) )
))
(declare-datatypes ((Regex!8275 0))(
  ( (ElementMatch!8275 (c!454925 C!16708)) (Concat!13403 (regOne!17062 Regex!8275) (regTwo!17062 Regex!8275)) (EmptyExpr!8275) (Star!8275 (reg!8604 Regex!8275)) (EmptyLang!8275) (Union!8275 (regOne!17063 Regex!8275) (regTwo!17063 Regex!8275)) )
))
(declare-datatypes ((Rule!9610 0))(
  ( (Rule!9611 (regex!4905 Regex!8275) (tag!5409 String!35971) (isSeparator!4905 Bool) (transformation!4905 TokenValueInjection!9694)) )
))
(declare-datatypes ((Token!9212 0))(
  ( (Token!9213 (value!157702 TokenValue!5127) (rule!7333 Rule!9610) (size!25548 Int) (originalCharacters!5637 List!32872)) )
))
(declare-datatypes ((List!32873 0))(
  ( (Nil!32773) (Cons!32773 (h!38193 Token!9212) (t!229553 List!32873)) )
))
(declare-fun l!4240 () List!32873)

(declare-fun e!1775881 () Bool)

(declare-fun tp!896481 () Bool)

(declare-fun e!1775880 () Bool)

(declare-fun b!2808440 () Bool)

(declare-fun inv!44458 (String!35971) Bool)

(declare-fun inv!44461 (TokenValueInjection!9694) Bool)

(assert (=> b!2808440 (= e!1775880 (and tp!896481 (inv!44458 (tag!5409 (rule!7333 (h!38193 l!4240)))) (inv!44461 (transformation!4905 (rule!7333 (h!38193 l!4240)))) e!1775881))))

(declare-fun res!1169721 () Bool)

(declare-fun e!1775886 () Bool)

(assert (=> start!271680 (=> (not res!1169721) (not e!1775886))))

(declare-datatypes ((LexerInterface!4496 0))(
  ( (LexerInterfaceExt!4493 (__x!21912 Int)) (Lexer!4494) )
))
(declare-fun thiss!13843 () LexerInterface!4496)

(declare-fun separatorToken!99 () Token!9212)

(get-info :version)

(assert (=> start!271680 (= res!1169721 (and ((_ is Lexer!4494) thiss!13843) (isSeparator!4905 (rule!7333 separatorToken!99))))))

(assert (=> start!271680 e!1775886))

(assert (=> start!271680 true))

(declare-fun e!1775888 () Bool)

(declare-fun inv!44462 (Token!9212) Bool)

(assert (=> start!271680 (and (inv!44462 separatorToken!99) e!1775888)))

(declare-fun e!1775885 () Bool)

(assert (=> start!271680 e!1775885))

(declare-fun b!2808441 () Bool)

(declare-fun tp!896478 () Bool)

(declare-fun e!1775887 () Bool)

(assert (=> b!2808441 (= e!1775887 (and tp!896478 (inv!44458 (tag!5409 (rule!7333 separatorToken!99))) (inv!44461 (transformation!4905 (rule!7333 separatorToken!99))) e!1775882))))

(declare-fun tp!896485 () Bool)

(declare-fun e!1775877 () Bool)

(declare-fun b!2808442 () Bool)

(assert (=> b!2808442 (= e!1775885 (and (inv!44462 (h!38193 l!4240)) e!1775877 tp!896485))))

(declare-fun tp!896484 () Bool)

(declare-fun b!2808443 () Bool)

(declare-fun inv!21 (TokenValue!5127) Bool)

(assert (=> b!2808443 (= e!1775877 (and (inv!21 (value!157702 (h!38193 l!4240))) e!1775880 tp!896484))))

(assert (=> b!2808444 (= e!1775881 (and tp!896482 tp!896483))))

(declare-fun b!2808445 () Bool)

(declare-fun ListPrimitiveSize!205 (List!32873) Int)

(assert (=> b!2808445 (= e!1775886 (< (ListPrimitiveSize!205 l!4240) 0))))

(declare-fun tp!896486 () Bool)

(declare-fun b!2808446 () Bool)

(assert (=> b!2808446 (= e!1775888 (and (inv!21 (value!157702 separatorToken!99)) e!1775887 tp!896486))))

(assert (= (and start!271680 res!1169721) b!2808445))

(assert (= b!2808441 b!2808439))

(assert (= b!2808446 b!2808441))

(assert (= start!271680 b!2808446))

(assert (= b!2808440 b!2808444))

(assert (= b!2808443 b!2808440))

(assert (= b!2808442 b!2808443))

(assert (= (and start!271680 ((_ is Cons!32773) l!4240)) b!2808442))

(declare-fun m!3238015 () Bool)

(assert (=> b!2808443 m!3238015))

(declare-fun m!3238017 () Bool)

(assert (=> b!2808440 m!3238017))

(declare-fun m!3238019 () Bool)

(assert (=> b!2808440 m!3238019))

(declare-fun m!3238021 () Bool)

(assert (=> start!271680 m!3238021))

(declare-fun m!3238023 () Bool)

(assert (=> b!2808446 m!3238023))

(declare-fun m!3238025 () Bool)

(assert (=> b!2808441 m!3238025))

(declare-fun m!3238027 () Bool)

(assert (=> b!2808441 m!3238027))

(declare-fun m!3238029 () Bool)

(assert (=> b!2808442 m!3238029))

(declare-fun m!3238031 () Bool)

(assert (=> b!2808445 m!3238031))

(check-sat (not b!2808442) (not b_next!80789) (not start!271680) (not b!2808441) (not b_next!80791) b_and!205155 b_and!205151 (not b!2808445) (not b_next!80793) (not b!2808440) (not b!2808443) (not b_next!80795) b_and!205153 b_and!205157 (not b!2808446))
(check-sat (not b_next!80789) (not b_next!80795) (not b_next!80791) b_and!205155 b_and!205151 (not b_next!80793) b_and!205153 b_and!205157)
(get-model)

(declare-fun b!2808472 () Bool)

(declare-fun e!1775904 () Bool)

(declare-fun e!1775905 () Bool)

(assert (=> b!2808472 (= e!1775904 e!1775905)))

(declare-fun c!454937 () Bool)

(assert (=> b!2808472 (= c!454937 ((_ is IntegerValue!15382) (value!157702 (h!38193 l!4240))))))

(declare-fun b!2808473 () Bool)

(declare-fun inv!16 (TokenValue!5127) Bool)

(assert (=> b!2808473 (= e!1775904 (inv!16 (value!157702 (h!38193 l!4240))))))

(declare-fun d!815256 () Bool)

(declare-fun c!454936 () Bool)

(assert (=> d!815256 (= c!454936 ((_ is IntegerValue!15381) (value!157702 (h!38193 l!4240))))))

(assert (=> d!815256 (= (inv!21 (value!157702 (h!38193 l!4240))) e!1775904)))

(declare-fun b!2808474 () Bool)

(declare-fun e!1775906 () Bool)

(declare-fun inv!15 (TokenValue!5127) Bool)

(assert (=> b!2808474 (= e!1775906 (inv!15 (value!157702 (h!38193 l!4240))))))

(declare-fun b!2808475 () Bool)

(declare-fun res!1169731 () Bool)

(assert (=> b!2808475 (=> res!1169731 e!1775906)))

(assert (=> b!2808475 (= res!1169731 (not ((_ is IntegerValue!15383) (value!157702 (h!38193 l!4240)))))))

(assert (=> b!2808475 (= e!1775905 e!1775906)))

(declare-fun b!2808476 () Bool)

(declare-fun inv!17 (TokenValue!5127) Bool)

(assert (=> b!2808476 (= e!1775905 (inv!17 (value!157702 (h!38193 l!4240))))))

(assert (= (and d!815256 c!454936) b!2808473))

(assert (= (and d!815256 (not c!454936)) b!2808472))

(assert (= (and b!2808472 c!454937) b!2808476))

(assert (= (and b!2808472 (not c!454937)) b!2808475))

(assert (= (and b!2808475 (not res!1169731)) b!2808474))

(declare-fun m!3238039 () Bool)

(assert (=> b!2808473 m!3238039))

(declare-fun m!3238041 () Bool)

(assert (=> b!2808474 m!3238041))

(declare-fun m!3238043 () Bool)

(assert (=> b!2808476 m!3238043))

(assert (=> b!2808443 d!815256))

(declare-fun d!815262 () Bool)

(declare-fun lt!1003555 () Int)

(assert (=> d!815262 (>= lt!1003555 0)))

(declare-fun e!1775916 () Int)

(assert (=> d!815262 (= lt!1003555 e!1775916)))

(declare-fun c!454942 () Bool)

(assert (=> d!815262 (= c!454942 ((_ is Nil!32773) l!4240))))

(assert (=> d!815262 (= (ListPrimitiveSize!205 l!4240) lt!1003555)))

(declare-fun b!2808489 () Bool)

(assert (=> b!2808489 (= e!1775916 0)))

(declare-fun b!2808491 () Bool)

(assert (=> b!2808491 (= e!1775916 (+ 1 (ListPrimitiveSize!205 (t!229553 l!4240))))))

(assert (= (and d!815262 c!454942) b!2808489))

(assert (= (and d!815262 (not c!454942)) b!2808491))

(declare-fun m!3238053 () Bool)

(assert (=> b!2808491 m!3238053))

(assert (=> b!2808445 d!815262))

(declare-fun d!815270 () Bool)

(assert (=> d!815270 (= (inv!44458 (tag!5409 (rule!7333 (h!38193 l!4240)))) (= (mod (str.len (value!157701 (tag!5409 (rule!7333 (h!38193 l!4240))))) 2) 0))))

(assert (=> b!2808440 d!815270))

(declare-fun d!815274 () Bool)

(declare-fun res!1169745 () Bool)

(declare-fun e!1775922 () Bool)

(assert (=> d!815274 (=> (not res!1169745) (not e!1775922))))

(declare-fun semiInverseModEq!2024 (Int Int) Bool)

(assert (=> d!815274 (= res!1169745 (semiInverseModEq!2024 (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (toValue!6907 (transformation!4905 (rule!7333 (h!38193 l!4240))))))))

(assert (=> d!815274 (= (inv!44461 (transformation!4905 (rule!7333 (h!38193 l!4240)))) e!1775922)))

(declare-fun b!2808500 () Bool)

(declare-fun equivClasses!1925 (Int Int) Bool)

(assert (=> b!2808500 (= e!1775922 (equivClasses!1925 (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (toValue!6907 (transformation!4905 (rule!7333 (h!38193 l!4240))))))))

(assert (= (and d!815274 res!1169745) b!2808500))

(declare-fun m!3238061 () Bool)

(assert (=> d!815274 m!3238061))

(declare-fun m!3238063 () Bool)

(assert (=> b!2808500 m!3238063))

(assert (=> b!2808440 d!815274))

(declare-fun d!815276 () Bool)

(assert (=> d!815276 (= (inv!44458 (tag!5409 (rule!7333 separatorToken!99))) (= (mod (str.len (value!157701 (tag!5409 (rule!7333 separatorToken!99)))) 2) 0))))

(assert (=> b!2808441 d!815276))

(declare-fun d!815278 () Bool)

(declare-fun res!1169746 () Bool)

(declare-fun e!1775925 () Bool)

(assert (=> d!815278 (=> (not res!1169746) (not e!1775925))))

(assert (=> d!815278 (= res!1169746 (semiInverseModEq!2024 (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (toValue!6907 (transformation!4905 (rule!7333 separatorToken!99)))))))

(assert (=> d!815278 (= (inv!44461 (transformation!4905 (rule!7333 separatorToken!99))) e!1775925)))

(declare-fun b!2808505 () Bool)

(assert (=> b!2808505 (= e!1775925 (equivClasses!1925 (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (toValue!6907 (transformation!4905 (rule!7333 separatorToken!99)))))))

(assert (= (and d!815278 res!1169746) b!2808505))

(declare-fun m!3238065 () Bool)

(assert (=> d!815278 m!3238065))

(declare-fun m!3238067 () Bool)

(assert (=> b!2808505 m!3238067))

(assert (=> b!2808441 d!815278))

(declare-fun b!2808506 () Bool)

(declare-fun e!1775926 () Bool)

(declare-fun e!1775927 () Bool)

(assert (=> b!2808506 (= e!1775926 e!1775927)))

(declare-fun c!454944 () Bool)

(assert (=> b!2808506 (= c!454944 ((_ is IntegerValue!15382) (value!157702 separatorToken!99)))))

(declare-fun b!2808507 () Bool)

(assert (=> b!2808507 (= e!1775926 (inv!16 (value!157702 separatorToken!99)))))

(declare-fun d!815280 () Bool)

(declare-fun c!454943 () Bool)

(assert (=> d!815280 (= c!454943 ((_ is IntegerValue!15381) (value!157702 separatorToken!99)))))

(assert (=> d!815280 (= (inv!21 (value!157702 separatorToken!99)) e!1775926)))

(declare-fun b!2808508 () Bool)

(declare-fun e!1775928 () Bool)

(assert (=> b!2808508 (= e!1775928 (inv!15 (value!157702 separatorToken!99)))))

(declare-fun b!2808509 () Bool)

(declare-fun res!1169747 () Bool)

(assert (=> b!2808509 (=> res!1169747 e!1775928)))

(assert (=> b!2808509 (= res!1169747 (not ((_ is IntegerValue!15383) (value!157702 separatorToken!99))))))

(assert (=> b!2808509 (= e!1775927 e!1775928)))

(declare-fun b!2808510 () Bool)

(assert (=> b!2808510 (= e!1775927 (inv!17 (value!157702 separatorToken!99)))))

(assert (= (and d!815280 c!454943) b!2808507))

(assert (= (and d!815280 (not c!454943)) b!2808506))

(assert (= (and b!2808506 c!454944) b!2808510))

(assert (= (and b!2808506 (not c!454944)) b!2808509))

(assert (= (and b!2808509 (not res!1169747)) b!2808508))

(declare-fun m!3238069 () Bool)

(assert (=> b!2808507 m!3238069))

(declare-fun m!3238071 () Bool)

(assert (=> b!2808508 m!3238071))

(declare-fun m!3238073 () Bool)

(assert (=> b!2808510 m!3238073))

(assert (=> b!2808446 d!815280))

(declare-fun d!815282 () Bool)

(declare-fun res!1169754 () Bool)

(declare-fun e!1775936 () Bool)

(assert (=> d!815282 (=> (not res!1169754) (not e!1775936))))

(declare-fun isEmpty!18204 (List!32872) Bool)

(assert (=> d!815282 (= res!1169754 (not (isEmpty!18204 (originalCharacters!5637 separatorToken!99))))))

(assert (=> d!815282 (= (inv!44462 separatorToken!99) e!1775936)))

(declare-fun b!2808523 () Bool)

(declare-fun res!1169755 () Bool)

(assert (=> b!2808523 (=> (not res!1169755) (not e!1775936))))

(declare-fun list!12269 (BalanceConc!19902) List!32872)

(declare-fun dynLambda!13721 (Int TokenValue!5127) BalanceConc!19902)

(assert (=> b!2808523 (= res!1169755 (= (originalCharacters!5637 separatorToken!99) (list!12269 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (value!157702 separatorToken!99)))))))

(declare-fun b!2808524 () Bool)

(declare-fun size!25550 (List!32872) Int)

(assert (=> b!2808524 (= e!1775936 (= (size!25548 separatorToken!99) (size!25550 (originalCharacters!5637 separatorToken!99))))))

(assert (= (and d!815282 res!1169754) b!2808523))

(assert (= (and b!2808523 res!1169755) b!2808524))

(declare-fun b_lambda!83999 () Bool)

(assert (=> (not b_lambda!83999) (not b!2808523)))

(declare-fun tb!153417 () Bool)

(declare-fun t!229563 () Bool)

(assert (=> (and b!2808444 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99)))) t!229563) tb!153417))

(declare-fun b!2808546 () Bool)

(declare-fun e!1775945 () Bool)

(declare-fun tp!896506 () Bool)

(declare-fun inv!44465 (Conc!10144) Bool)

(assert (=> b!2808546 (= e!1775945 (and (inv!44465 (c!454924 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (value!157702 separatorToken!99)))) tp!896506))))

(declare-fun result!190660 () Bool)

(declare-fun inv!44466 (BalanceConc!19902) Bool)

(assert (=> tb!153417 (= result!190660 (and (inv!44466 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (value!157702 separatorToken!99))) e!1775945))))

(assert (= tb!153417 b!2808546))

(declare-fun m!3238101 () Bool)

(assert (=> b!2808546 m!3238101))

(declare-fun m!3238103 () Bool)

(assert (=> tb!153417 m!3238103))

(assert (=> b!2808523 t!229563))

(declare-fun b_and!205167 () Bool)

(assert (= b_and!205153 (and (=> t!229563 result!190660) b_and!205167)))

(declare-fun t!229565 () Bool)

(declare-fun tb!153419 () Bool)

(assert (=> (and b!2808439 (= (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99)))) t!229565) tb!153419))

(declare-fun result!190666 () Bool)

(assert (= result!190666 result!190660))

(assert (=> b!2808523 t!229565))

(declare-fun b_and!205169 () Bool)

(assert (= b_and!205157 (and (=> t!229565 result!190666) b_and!205169)))

(declare-fun m!3238105 () Bool)

(assert (=> d!815282 m!3238105))

(declare-fun m!3238107 () Bool)

(assert (=> b!2808523 m!3238107))

(assert (=> b!2808523 m!3238107))

(declare-fun m!3238109 () Bool)

(assert (=> b!2808523 m!3238109))

(declare-fun m!3238111 () Bool)

(assert (=> b!2808524 m!3238111))

(assert (=> start!271680 d!815282))

(declare-fun d!815288 () Bool)

(declare-fun res!1169756 () Bool)

(declare-fun e!1775947 () Bool)

(assert (=> d!815288 (=> (not res!1169756) (not e!1775947))))

(assert (=> d!815288 (= res!1169756 (not (isEmpty!18204 (originalCharacters!5637 (h!38193 l!4240)))))))

(assert (=> d!815288 (= (inv!44462 (h!38193 l!4240)) e!1775947)))

(declare-fun b!2808551 () Bool)

(declare-fun res!1169757 () Bool)

(assert (=> b!2808551 (=> (not res!1169757) (not e!1775947))))

(assert (=> b!2808551 (= res!1169757 (= (originalCharacters!5637 (h!38193 l!4240)) (list!12269 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (value!157702 (h!38193 l!4240))))))))

(declare-fun b!2808552 () Bool)

(assert (=> b!2808552 (= e!1775947 (= (size!25548 (h!38193 l!4240)) (size!25550 (originalCharacters!5637 (h!38193 l!4240)))))))

(assert (= (and d!815288 res!1169756) b!2808551))

(assert (= (and b!2808551 res!1169757) b!2808552))

(declare-fun b_lambda!84001 () Bool)

(assert (=> (not b_lambda!84001) (not b!2808551)))

(declare-fun t!229567 () Bool)

(declare-fun tb!153421 () Bool)

(assert (=> (and b!2808444 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240))))) t!229567) tb!153421))

(declare-fun b!2808558 () Bool)

(declare-fun e!1775950 () Bool)

(declare-fun tp!896518 () Bool)

(assert (=> b!2808558 (= e!1775950 (and (inv!44465 (c!454924 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (value!157702 (h!38193 l!4240))))) tp!896518))))

(declare-fun result!190668 () Bool)

(assert (=> tb!153421 (= result!190668 (and (inv!44466 (dynLambda!13721 (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (value!157702 (h!38193 l!4240)))) e!1775950))))

(assert (= tb!153421 b!2808558))

(declare-fun m!3238113 () Bool)

(assert (=> b!2808558 m!3238113))

(declare-fun m!3238115 () Bool)

(assert (=> tb!153421 m!3238115))

(assert (=> b!2808551 t!229567))

(declare-fun b_and!205171 () Bool)

(assert (= b_and!205167 (and (=> t!229567 result!190668) b_and!205171)))

(declare-fun tb!153423 () Bool)

(declare-fun t!229569 () Bool)

(assert (=> (and b!2808439 (= (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240))))) t!229569) tb!153423))

(declare-fun result!190672 () Bool)

(assert (= result!190672 result!190668))

(assert (=> b!2808551 t!229569))

(declare-fun b_and!205173 () Bool)

(assert (= b_and!205169 (and (=> t!229569 result!190672) b_and!205173)))

(declare-fun m!3238117 () Bool)

(assert (=> d!815288 m!3238117))

(declare-fun m!3238119 () Bool)

(assert (=> b!2808551 m!3238119))

(assert (=> b!2808551 m!3238119))

(declare-fun m!3238121 () Bool)

(assert (=> b!2808551 m!3238121))

(declare-fun m!3238123 () Bool)

(assert (=> b!2808552 m!3238123))

(assert (=> b!2808442 d!815288))

(declare-fun b!2808569 () Bool)

(declare-fun e!1775959 () Bool)

(declare-fun tp_is_empty!14315 () Bool)

(declare-fun tp!896521 () Bool)

(assert (=> b!2808569 (= e!1775959 (and tp_is_empty!14315 tp!896521))))

(assert (=> b!2808443 (= tp!896484 e!1775959)))

(assert (= (and b!2808443 ((_ is Cons!32772) (originalCharacters!5637 (h!38193 l!4240)))) b!2808569))

(declare-fun b!2808584 () Bool)

(declare-fun e!1775968 () Bool)

(assert (=> b!2808584 (= e!1775968 tp_is_empty!14315)))

(declare-fun b!2808586 () Bool)

(declare-fun tp!896542 () Bool)

(assert (=> b!2808586 (= e!1775968 tp!896542)))

(assert (=> b!2808440 (= tp!896481 e!1775968)))

(declare-fun b!2808587 () Bool)

(declare-fun tp!896546 () Bool)

(declare-fun tp!896545 () Bool)

(assert (=> b!2808587 (= e!1775968 (and tp!896546 tp!896545))))

(declare-fun b!2808585 () Bool)

(declare-fun tp!896543 () Bool)

(declare-fun tp!896544 () Bool)

(assert (=> b!2808585 (= e!1775968 (and tp!896543 tp!896544))))

(assert (= (and b!2808440 ((_ is ElementMatch!8275) (regex!4905 (rule!7333 (h!38193 l!4240))))) b!2808584))

(assert (= (and b!2808440 ((_ is Concat!13403) (regex!4905 (rule!7333 (h!38193 l!4240))))) b!2808585))

(assert (= (and b!2808440 ((_ is Star!8275) (regex!4905 (rule!7333 (h!38193 l!4240))))) b!2808586))

(assert (= (and b!2808440 ((_ is Union!8275) (regex!4905 (rule!7333 (h!38193 l!4240))))) b!2808587))

(declare-fun b!2808588 () Bool)

(declare-fun e!1775969 () Bool)

(assert (=> b!2808588 (= e!1775969 tp_is_empty!14315)))

(declare-fun b!2808590 () Bool)

(declare-fun tp!896547 () Bool)

(assert (=> b!2808590 (= e!1775969 tp!896547)))

(assert (=> b!2808441 (= tp!896478 e!1775969)))

(declare-fun b!2808591 () Bool)

(declare-fun tp!896551 () Bool)

(declare-fun tp!896550 () Bool)

(assert (=> b!2808591 (= e!1775969 (and tp!896551 tp!896550))))

(declare-fun b!2808589 () Bool)

(declare-fun tp!896548 () Bool)

(declare-fun tp!896549 () Bool)

(assert (=> b!2808589 (= e!1775969 (and tp!896548 tp!896549))))

(assert (= (and b!2808441 ((_ is ElementMatch!8275) (regex!4905 (rule!7333 separatorToken!99)))) b!2808588))

(assert (= (and b!2808441 ((_ is Concat!13403) (regex!4905 (rule!7333 separatorToken!99)))) b!2808589))

(assert (= (and b!2808441 ((_ is Star!8275) (regex!4905 (rule!7333 separatorToken!99)))) b!2808590))

(assert (= (and b!2808441 ((_ is Union!8275) (regex!4905 (rule!7333 separatorToken!99)))) b!2808591))

(declare-fun b!2808592 () Bool)

(declare-fun e!1775970 () Bool)

(declare-fun tp!896552 () Bool)

(assert (=> b!2808592 (= e!1775970 (and tp_is_empty!14315 tp!896552))))

(assert (=> b!2808446 (= tp!896486 e!1775970)))

(assert (= (and b!2808446 ((_ is Cons!32772) (originalCharacters!5637 separatorToken!99))) b!2808592))

(declare-fun b!2808610 () Bool)

(declare-fun b_free!80097 () Bool)

(declare-fun b_next!80801 () Bool)

(assert (=> b!2808610 (= b_free!80097 (not b_next!80801))))

(declare-fun tp!896572 () Bool)

(declare-fun b_and!205179 () Bool)

(assert (=> b!2808610 (= tp!896572 b_and!205179)))

(declare-fun b_free!80099 () Bool)

(declare-fun b_next!80803 () Bool)

(assert (=> b!2808610 (= b_free!80099 (not b_next!80803))))

(declare-fun t!229575 () Bool)

(declare-fun tb!153429 () Bool)

(assert (=> (and b!2808610 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 (t!229553 l!4240))))) (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99)))) t!229575) tb!153429))

(declare-fun result!190684 () Bool)

(assert (= result!190684 result!190660))

(assert (=> b!2808523 t!229575))

(declare-fun t!229577 () Bool)

(declare-fun tb!153431 () Bool)

(assert (=> (and b!2808610 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 (t!229553 l!4240))))) (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240))))) t!229577) tb!153431))

(declare-fun result!190686 () Bool)

(assert (= result!190686 result!190668))

(assert (=> b!2808551 t!229577))

(declare-fun tp!896571 () Bool)

(declare-fun b_and!205181 () Bool)

(assert (=> b!2808610 (= tp!896571 (and (=> t!229575 result!190684) (=> t!229577 result!190686) b_and!205181))))

(declare-fun e!1775993 () Bool)

(declare-fun b!2808607 () Bool)

(declare-fun e!1775990 () Bool)

(declare-fun tp!896568 () Bool)

(assert (=> b!2808607 (= e!1775993 (and (inv!44462 (h!38193 (t!229553 l!4240))) e!1775990 tp!896568))))

(assert (=> b!2808442 (= tp!896485 e!1775993)))

(declare-fun e!1775994 () Bool)

(assert (=> b!2808610 (= e!1775994 (and tp!896572 tp!896571))))

(declare-fun tp!896570 () Bool)

(declare-fun b!2808608 () Bool)

(declare-fun e!1775989 () Bool)

(assert (=> b!2808608 (= e!1775990 (and (inv!21 (value!157702 (h!38193 (t!229553 l!4240)))) e!1775989 tp!896570))))

(declare-fun b!2808609 () Bool)

(declare-fun tp!896569 () Bool)

(assert (=> b!2808609 (= e!1775989 (and tp!896569 (inv!44458 (tag!5409 (rule!7333 (h!38193 (t!229553 l!4240))))) (inv!44461 (transformation!4905 (rule!7333 (h!38193 (t!229553 l!4240))))) e!1775994))))

(assert (= b!2808609 b!2808610))

(assert (= b!2808608 b!2808609))

(assert (= b!2808607 b!2808608))

(assert (= (and b!2808442 ((_ is Cons!32773) (t!229553 l!4240))) b!2808607))

(declare-fun m!3238133 () Bool)

(assert (=> b!2808607 m!3238133))

(declare-fun m!3238135 () Bool)

(assert (=> b!2808608 m!3238135))

(declare-fun m!3238137 () Bool)

(assert (=> b!2808609 m!3238137))

(declare-fun m!3238139 () Bool)

(assert (=> b!2808609 m!3238139))

(declare-fun b_lambda!84007 () Bool)

(assert (= b_lambda!83999 (or (and b!2808444 b_free!80087 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))) (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))))) (and b!2808439 b_free!80091) (and b!2808610 b_free!80099 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 (t!229553 l!4240))))) (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))))) b_lambda!84007)))

(declare-fun b_lambda!84009 () Bool)

(assert (= b_lambda!84001 (or (and b!2808444 b_free!80087) (and b!2808439 b_free!80091 (= (toChars!6766 (transformation!4905 (rule!7333 separatorToken!99))) (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))))) (and b!2808610 b_free!80099 (= (toChars!6766 (transformation!4905 (rule!7333 (h!38193 (t!229553 l!4240))))) (toChars!6766 (transformation!4905 (rule!7333 (h!38193 l!4240)))))) b_lambda!84009)))

(check-sat (not b_next!80803) (not b!2808589) (not b!2808607) (not d!815278) (not b_lambda!84007) (not d!815288) (not b!2808587) (not b!2808476) (not b_next!80801) (not b!2808558) tp_is_empty!14315 (not b!2808505) (not b!2808569) (not b_next!80789) (not b!2808510) (not b!2808609) (not b!2808474) (not b!2808608) (not b!2808591) (not b!2808546) b_and!205173 (not b!2808586) (not b!2808507) (not b_next!80795) (not b!2808592) (not b!2808590) (not b_next!80791) (not d!815282) b_and!205155 (not b!2808491) (not b!2808552) b_and!205151 (not b!2808551) (not b_next!80793) (not b!2808508) (not b!2808523) (not b!2808473) (not b_lambda!84009) b_and!205171 (not tb!153421) b_and!205179 (not b!2808585) (not d!815274) (not tb!153417) (not b!2808524) (not b!2808500) b_and!205181)
(check-sat (not b_next!80803) (not b_next!80789) b_and!205173 (not b_next!80795) (not b_next!80791) b_and!205155 b_and!205151 (not b_next!80793) (not b_next!80801) b_and!205171 b_and!205179 b_and!205181)

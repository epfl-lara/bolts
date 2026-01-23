; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348930 () Bool)

(assert start!348930)

(declare-fun b!3702673 () Bool)

(declare-fun b_free!98705 () Bool)

(declare-fun b_next!99409 () Bool)

(assert (=> b!3702673 (= b_free!98705 (not b_next!99409))))

(declare-fun tp!1125493 () Bool)

(declare-fun b_and!276923 () Bool)

(assert (=> b!3702673 (= tp!1125493 b_and!276923)))

(declare-fun b_free!98707 () Bool)

(declare-fun b_next!99411 () Bool)

(assert (=> b!3702673 (= b_free!98707 (not b_next!99411))))

(declare-fun tp!1125492 () Bool)

(declare-fun b_and!276925 () Bool)

(assert (=> b!3702673 (= tp!1125492 b_and!276925)))

(declare-fun b!3702661 () Bool)

(declare-fun b_free!98709 () Bool)

(declare-fun b_next!99413 () Bool)

(assert (=> b!3702661 (= b_free!98709 (not b_next!99413))))

(declare-fun tp!1125491 () Bool)

(declare-fun b_and!276927 () Bool)

(assert (=> b!3702661 (= tp!1125491 b_and!276927)))

(declare-fun b_free!98711 () Bool)

(declare-fun b_next!99415 () Bool)

(assert (=> b!3702661 (= b_free!98711 (not b_next!99415))))

(declare-fun tp!1125494 () Bool)

(declare-fun b_and!276929 () Bool)

(assert (=> b!3702661 (= tp!1125494 b_and!276929)))

(declare-fun b!3702660 () Bool)

(declare-fun res!1506224 () Bool)

(declare-fun e!2293106 () Bool)

(assert (=> b!3702660 (=> (not res!1506224) (not e!2293106))))

(declare-datatypes ((List!39478 0))(
  ( (Nil!39354) (Cons!39354 (h!44774 (_ BitVec 16)) (t!302149 List!39478)) )
))
(declare-datatypes ((TokenValue!6214 0))(
  ( (FloatLiteralValue!12428 (text!43943 List!39478)) (TokenValueExt!6213 (__x!24645 Int)) (Broken!31070 (value!190972 List!39478)) (Object!6337) (End!6214) (Def!6214) (Underscore!6214) (Match!6214) (Else!6214) (Error!6214) (Case!6214) (If!6214) (Extends!6214) (Abstract!6214) (Class!6214) (Val!6214) (DelimiterValue!12428 (del!6274 List!39478)) (KeywordValue!6220 (value!190973 List!39478)) (CommentValue!12428 (value!190974 List!39478)) (WhitespaceValue!12428 (value!190975 List!39478)) (IndentationValue!6214 (value!190976 List!39478)) (String!44403) (Int32!6214) (Broken!31071 (value!190977 List!39478)) (Boolean!6215) (Unit!57321) (OperatorValue!6217 (op!6274 List!39478)) (IdentifierValue!12428 (value!190978 List!39478)) (IdentifierValue!12429 (value!190979 List!39478)) (WhitespaceValue!12429 (value!190980 List!39478)) (True!12428) (False!12428) (Broken!31072 (value!190981 List!39478)) (Broken!31073 (value!190982 List!39478)) (True!12429) (RightBrace!6214) (RightBracket!6214) (Colon!6214) (Null!6214) (Comma!6214) (LeftBracket!6214) (False!12429) (LeftBrace!6214) (ImaginaryLiteralValue!6214 (text!43944 List!39478)) (StringLiteralValue!18642 (value!190983 List!39478)) (EOFValue!6214 (value!190984 List!39478)) (IdentValue!6214 (value!190985 List!39478)) (DelimiterValue!12429 (value!190986 List!39478)) (DedentValue!6214 (value!190987 List!39478)) (NewLineValue!6214 (value!190988 List!39478)) (IntegerValue!18642 (value!190989 (_ BitVec 32)) (text!43945 List!39478)) (IntegerValue!18643 (value!190990 Int) (text!43946 List!39478)) (Times!6214) (Or!6214) (Equal!6214) (Minus!6214) (Broken!31074 (value!190991 List!39478)) (And!6214) (Div!6214) (LessEqual!6214) (Mod!6214) (Concat!16957) (Not!6214) (Plus!6214) (SpaceValue!6214 (value!190992 List!39478)) (IntegerValue!18644 (value!190993 Int) (text!43947 List!39478)) (StringLiteralValue!18643 (text!43948 List!39478)) (FloatLiteralValue!12429 (text!43949 List!39478)) (BytesLiteralValue!6214 (value!190994 List!39478)) (CommentValue!12429 (value!190995 List!39478)) (StringLiteralValue!18644 (value!190996 List!39478)) (ErrorTokenValue!6214 (msg!6275 List!39478)) )
))
(declare-datatypes ((C!21672 0))(
  ( (C!21673 (val!12884 Int)) )
))
(declare-datatypes ((Regex!10743 0))(
  ( (ElementMatch!10743 (c!639762 C!21672)) (Concat!16958 (regOne!21998 Regex!10743) (regTwo!21998 Regex!10743)) (EmptyExpr!10743) (Star!10743 (reg!11072 Regex!10743)) (EmptyLang!10743) (Union!10743 (regOne!21999 Regex!10743) (regTwo!21999 Regex!10743)) )
))
(declare-datatypes ((String!44404 0))(
  ( (String!44405 (value!190997 String)) )
))
(declare-datatypes ((List!39479 0))(
  ( (Nil!39355) (Cons!39355 (h!44775 C!21672) (t!302150 List!39479)) )
))
(declare-datatypes ((IArray!24167 0))(
  ( (IArray!24168 (innerList!12141 List!39479)) )
))
(declare-datatypes ((Conc!12081 0))(
  ( (Node!12081 (left!30627 Conc!12081) (right!30957 Conc!12081) (csize!24392 Int) (cheight!12292 Int)) (Leaf!18684 (xs!15283 IArray!24167) (csize!24393 Int)) (Empty!12081) )
))
(declare-datatypes ((BalanceConc!23776 0))(
  ( (BalanceConc!23777 (c!639763 Conc!12081)) )
))
(declare-datatypes ((TokenValueInjection!11856 0))(
  ( (TokenValueInjection!11857 (toValue!8324 Int) (toChars!8183 Int)) )
))
(declare-datatypes ((Rule!11768 0))(
  ( (Rule!11769 (regex!5984 Regex!10743) (tag!6822 String!44404) (isSeparator!5984 Bool) (transformation!5984 TokenValueInjection!11856)) )
))
(declare-datatypes ((List!39480 0))(
  ( (Nil!39356) (Cons!39356 (h!44776 Rule!11768) (t!302151 List!39480)) )
))
(declare-fun rules!3598 () List!39480)

(get-info :version)

(assert (=> b!3702660 (= res!1506224 (not ((_ is Cons!39356) rules!3598)))))

(declare-fun e!2293103 () Bool)

(assert (=> b!3702661 (= e!2293103 (and tp!1125491 tp!1125494))))

(declare-fun b!3702662 () Bool)

(declare-fun e!2293098 () Bool)

(declare-fun e!2293099 () Bool)

(assert (=> b!3702662 (= e!2293098 e!2293099)))

(declare-fun res!1506219 () Bool)

(assert (=> b!3702662 (=> res!1506219 e!2293099)))

(declare-fun lt!1295698 () Rule!11768)

(declare-datatypes ((Token!11322 0))(
  ( (Token!11323 (value!190998 TokenValue!6214) (rule!8856 Rule!11768) (size!30006 Int) (originalCharacters!6692 List!39479)) )
))
(declare-fun token!544 () Token!11322)

(declare-fun matchR!5276 (Regex!10743 List!39479) Bool)

(declare-fun list!14699 (BalanceConc!23776) List!39479)

(declare-fun charsOf!3973 (Token!11322) BalanceConc!23776)

(assert (=> b!3702662 (= res!1506219 (not (matchR!5276 (regex!5984 lt!1295698) (list!14699 (charsOf!3973 token!544)))))))

(declare-datatypes ((Option!8529 0))(
  ( (None!8528) (Some!8528 (v!38490 Rule!11768)) )
))
(declare-fun lt!1295699 () Option!8529)

(declare-fun get!13108 (Option!8529) Rule!11768)

(assert (=> b!3702662 (= lt!1295698 (get!13108 lt!1295699))))

(declare-fun b!3702664 () Bool)

(declare-fun res!1506225 () Bool)

(declare-fun e!2293094 () Bool)

(assert (=> b!3702664 (=> (not res!1506225) (not e!2293094))))

(declare-datatypes ((LexerInterface!5573 0))(
  ( (LexerInterfaceExt!5570 (__x!24646 Int)) (Lexer!5571) )
))
(declare-fun thiss!25322 () LexerInterface!5573)

(declare-fun rulesInvariant!4970 (LexerInterface!5573 List!39480) Bool)

(assert (=> b!3702664 (= res!1506225 (rulesInvariant!4970 thiss!25322 rules!3598))))

(declare-fun b!3702665 () Bool)

(declare-fun res!1506223 () Bool)

(assert (=> b!3702665 (=> (not res!1506223) (not e!2293094))))

(declare-fun isEmpty!23456 (List!39480) Bool)

(assert (=> b!3702665 (= res!1506223 (not (isEmpty!23456 rules!3598)))))

(declare-fun b!3702666 () Bool)

(declare-fun res!1506220 () Bool)

(assert (=> b!3702666 (=> (not res!1506220) (not e!2293106))))

(declare-datatypes ((tuple2!39212 0))(
  ( (tuple2!39213 (_1!22740 Token!11322) (_2!22740 List!39479)) )
))
(declare-datatypes ((Option!8530 0))(
  ( (None!8529) (Some!8529 (v!38491 tuple2!39212)) )
))
(declare-fun lt!1295700 () Option!8530)

(declare-fun get!13109 (Option!8530) tuple2!39212)

(assert (=> b!3702666 (= res!1506220 (= (_1!22740 (get!13109 lt!1295700)) token!544))))

(declare-fun b!3702667 () Bool)

(assert (=> b!3702667 (= e!2293094 e!2293106)))

(declare-fun res!1506222 () Bool)

(assert (=> b!3702667 (=> (not res!1506222) (not e!2293106))))

(declare-fun isDefined!6718 (Option!8530) Bool)

(assert (=> b!3702667 (= res!1506222 (isDefined!6718 lt!1295700))))

(declare-fun input!3172 () List!39479)

(declare-fun maxPrefix!3095 (LexerInterface!5573 List!39480 List!39479) Option!8530)

(assert (=> b!3702667 (= lt!1295700 (maxPrefix!3095 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3702668 () Bool)

(declare-fun tp!1125498 () Bool)

(declare-fun e!2293100 () Bool)

(declare-fun inv!52892 (String!44404) Bool)

(declare-fun inv!52895 (TokenValueInjection!11856) Bool)

(assert (=> b!3702668 (= e!2293100 (and tp!1125498 (inv!52892 (tag!6822 (h!44776 rules!3598))) (inv!52895 (transformation!5984 (h!44776 rules!3598))) e!2293103))))

(declare-fun b!3702663 () Bool)

(assert (=> b!3702663 (= e!2293106 e!2293098)))

(declare-fun res!1506221 () Bool)

(assert (=> b!3702663 (=> res!1506221 e!2293098)))

(declare-fun isDefined!6719 (Option!8529) Bool)

(assert (=> b!3702663 (= res!1506221 (not (isDefined!6719 lt!1295699)))))

(declare-fun getRuleFromTag!1522 (LexerInterface!5573 List!39480 String!44404) Option!8529)

(assert (=> b!3702663 (= lt!1295699 (getRuleFromTag!1522 thiss!25322 rules!3598 (tag!6822 (rule!8856 token!544))))))

(declare-fun res!1506218 () Bool)

(assert (=> start!348930 (=> (not res!1506218) (not e!2293094))))

(assert (=> start!348930 (= res!1506218 ((_ is Lexer!5571) thiss!25322))))

(assert (=> start!348930 e!2293094))

(assert (=> start!348930 true))

(declare-fun e!2293097 () Bool)

(assert (=> start!348930 e!2293097))

(declare-fun e!2293095 () Bool)

(declare-fun inv!52896 (Token!11322) Bool)

(assert (=> start!348930 (and (inv!52896 token!544) e!2293095)))

(declare-fun e!2293104 () Bool)

(assert (=> start!348930 e!2293104))

(declare-fun b!3702669 () Bool)

(declare-fun tp_is_empty!18561 () Bool)

(declare-fun tp!1125495 () Bool)

(assert (=> b!3702669 (= e!2293104 (and tp_is_empty!18561 tp!1125495))))

(declare-fun b!3702670 () Bool)

(declare-fun tp!1125497 () Bool)

(assert (=> b!3702670 (= e!2293097 (and e!2293100 tp!1125497))))

(declare-fun b!3702671 () Bool)

(assert (=> b!3702671 (= e!2293099 (not (= (rule!8856 token!544) lt!1295698)))))

(declare-fun b!3702672 () Bool)

(declare-fun e!2293096 () Bool)

(declare-fun tp!1125496 () Bool)

(declare-fun inv!21 (TokenValue!6214) Bool)

(assert (=> b!3702672 (= e!2293095 (and (inv!21 (value!190998 token!544)) e!2293096 tp!1125496))))

(declare-fun e!2293102 () Bool)

(assert (=> b!3702673 (= e!2293102 (and tp!1125493 tp!1125492))))

(declare-fun b!3702674 () Bool)

(declare-fun tp!1125490 () Bool)

(assert (=> b!3702674 (= e!2293096 (and tp!1125490 (inv!52892 (tag!6822 (rule!8856 token!544))) (inv!52895 (transformation!5984 (rule!8856 token!544))) e!2293102))))

(assert (= (and start!348930 res!1506218) b!3702664))

(assert (= (and b!3702664 res!1506225) b!3702665))

(assert (= (and b!3702665 res!1506223) b!3702667))

(assert (= (and b!3702667 res!1506222) b!3702666))

(assert (= (and b!3702666 res!1506220) b!3702660))

(assert (= (and b!3702660 res!1506224) b!3702663))

(assert (= (and b!3702663 (not res!1506221)) b!3702662))

(assert (= (and b!3702662 (not res!1506219)) b!3702671))

(assert (= b!3702668 b!3702661))

(assert (= b!3702670 b!3702668))

(assert (= (and start!348930 ((_ is Cons!39356) rules!3598)) b!3702670))

(assert (= b!3702674 b!3702673))

(assert (= b!3702672 b!3702674))

(assert (= start!348930 b!3702672))

(assert (= (and start!348930 ((_ is Cons!39355) input!3172)) b!3702669))

(declare-fun m!4213743 () Bool)

(assert (=> b!3702664 m!4213743))

(declare-fun m!4213745 () Bool)

(assert (=> b!3702667 m!4213745))

(declare-fun m!4213747 () Bool)

(assert (=> b!3702667 m!4213747))

(declare-fun m!4213749 () Bool)

(assert (=> b!3702672 m!4213749))

(declare-fun m!4213751 () Bool)

(assert (=> b!3702666 m!4213751))

(declare-fun m!4213753 () Bool)

(assert (=> b!3702674 m!4213753))

(declare-fun m!4213755 () Bool)

(assert (=> b!3702674 m!4213755))

(declare-fun m!4213757 () Bool)

(assert (=> start!348930 m!4213757))

(declare-fun m!4213759 () Bool)

(assert (=> b!3702662 m!4213759))

(assert (=> b!3702662 m!4213759))

(declare-fun m!4213761 () Bool)

(assert (=> b!3702662 m!4213761))

(assert (=> b!3702662 m!4213761))

(declare-fun m!4213763 () Bool)

(assert (=> b!3702662 m!4213763))

(declare-fun m!4213765 () Bool)

(assert (=> b!3702662 m!4213765))

(declare-fun m!4213767 () Bool)

(assert (=> b!3702663 m!4213767))

(declare-fun m!4213769 () Bool)

(assert (=> b!3702663 m!4213769))

(declare-fun m!4213771 () Bool)

(assert (=> b!3702665 m!4213771))

(declare-fun m!4213773 () Bool)

(assert (=> b!3702668 m!4213773))

(declare-fun m!4213775 () Bool)

(assert (=> b!3702668 m!4213775))

(check-sat b_and!276925 (not b!3702672) b_and!276923 (not b!3702667) (not b!3702664) (not b_next!99409) (not b_next!99413) (not b_next!99411) (not b!3702670) b_and!276929 (not b!3702674) (not b!3702666) tp_is_empty!18561 (not b_next!99415) (not b!3702668) (not b!3702662) b_and!276927 (not b!3702669) (not start!348930) (not b!3702665) (not b!3702663))
(check-sat b_and!276925 b_and!276923 (not b_next!99409) (not b_next!99413) (not b_next!99411) (not b_next!99415) b_and!276927 b_and!276929)
(get-model)

(declare-fun d!1085729 () Bool)

(assert (=> d!1085729 (= (get!13109 lt!1295700) (v!38491 lt!1295700))))

(assert (=> b!3702666 d!1085729))

(declare-fun d!1085731 () Bool)

(declare-fun c!639768 () Bool)

(assert (=> d!1085731 (= c!639768 ((_ is IntegerValue!18642) (value!190998 token!544)))))

(declare-fun e!2293114 () Bool)

(assert (=> d!1085731 (= (inv!21 (value!190998 token!544)) e!2293114)))

(declare-fun b!3702685 () Bool)

(declare-fun e!2293113 () Bool)

(assert (=> b!3702685 (= e!2293114 e!2293113)))

(declare-fun c!639769 () Bool)

(assert (=> b!3702685 (= c!639769 ((_ is IntegerValue!18643) (value!190998 token!544)))))

(declare-fun b!3702686 () Bool)

(declare-fun inv!16 (TokenValue!6214) Bool)

(assert (=> b!3702686 (= e!2293114 (inv!16 (value!190998 token!544)))))

(declare-fun b!3702687 () Bool)

(declare-fun res!1506236 () Bool)

(declare-fun e!2293115 () Bool)

(assert (=> b!3702687 (=> res!1506236 e!2293115)))

(assert (=> b!3702687 (= res!1506236 (not ((_ is IntegerValue!18644) (value!190998 token!544))))))

(assert (=> b!3702687 (= e!2293113 e!2293115)))

(declare-fun b!3702688 () Bool)

(declare-fun inv!15 (TokenValue!6214) Bool)

(assert (=> b!3702688 (= e!2293115 (inv!15 (value!190998 token!544)))))

(declare-fun b!3702689 () Bool)

(declare-fun inv!17 (TokenValue!6214) Bool)

(assert (=> b!3702689 (= e!2293113 (inv!17 (value!190998 token!544)))))

(assert (= (and d!1085731 c!639768) b!3702686))

(assert (= (and d!1085731 (not c!639768)) b!3702685))

(assert (= (and b!3702685 c!639769) b!3702689))

(assert (= (and b!3702685 (not c!639769)) b!3702687))

(assert (= (and b!3702687 (not res!1506236)) b!3702688))

(declare-fun m!4213777 () Bool)

(assert (=> b!3702686 m!4213777))

(declare-fun m!4213779 () Bool)

(assert (=> b!3702688 m!4213779))

(declare-fun m!4213781 () Bool)

(assert (=> b!3702689 m!4213781))

(assert (=> b!3702672 d!1085731))

(declare-fun d!1085733 () Bool)

(assert (=> d!1085733 (= (isEmpty!23456 rules!3598) ((_ is Nil!39356) rules!3598))))

(assert (=> b!3702665 d!1085733))

(declare-fun d!1085737 () Bool)

(declare-fun isEmpty!23458 (Option!8529) Bool)

(assert (=> d!1085737 (= (isDefined!6719 lt!1295699) (not (isEmpty!23458 lt!1295699)))))

(declare-fun bs!574530 () Bool)

(assert (= bs!574530 d!1085737))

(declare-fun m!4213783 () Bool)

(assert (=> bs!574530 m!4213783))

(assert (=> b!3702663 d!1085737))

(declare-fun b!3702727 () Bool)

(declare-datatypes ((Unit!57322 0))(
  ( (Unit!57323) )
))
(declare-fun lt!1295708 () Unit!57322)

(declare-fun lt!1295709 () Unit!57322)

(assert (=> b!3702727 (= lt!1295708 lt!1295709)))

(assert (=> b!3702727 (rulesInvariant!4970 thiss!25322 (t!302151 rules!3598))))

(declare-fun lemmaInvariantOnRulesThenOnTail!677 (LexerInterface!5573 Rule!11768 List!39480) Unit!57322)

(assert (=> b!3702727 (= lt!1295709 (lemmaInvariantOnRulesThenOnTail!677 thiss!25322 (h!44776 rules!3598) (t!302151 rules!3598)))))

(declare-fun e!2293141 () Option!8529)

(assert (=> b!3702727 (= e!2293141 (getRuleFromTag!1522 thiss!25322 (t!302151 rules!3598) (tag!6822 (rule!8856 token!544))))))

(declare-fun b!3702726 () Bool)

(assert (=> b!3702726 (= e!2293141 None!8528)))

(declare-fun d!1085739 () Bool)

(declare-fun e!2293139 () Bool)

(assert (=> d!1085739 e!2293139))

(declare-fun res!1506252 () Bool)

(assert (=> d!1085739 (=> res!1506252 e!2293139)))

(declare-fun lt!1295707 () Option!8529)

(assert (=> d!1085739 (= res!1506252 (isEmpty!23458 lt!1295707))))

(declare-fun e!2293140 () Option!8529)

(assert (=> d!1085739 (= lt!1295707 e!2293140)))

(declare-fun c!639778 () Bool)

(assert (=> d!1085739 (= c!639778 (and ((_ is Cons!39356) rules!3598) (= (tag!6822 (h!44776 rules!3598)) (tag!6822 (rule!8856 token!544)))))))

(assert (=> d!1085739 (rulesInvariant!4970 thiss!25322 rules!3598)))

(assert (=> d!1085739 (= (getRuleFromTag!1522 thiss!25322 rules!3598 (tag!6822 (rule!8856 token!544))) lt!1295707)))

(declare-fun b!3702728 () Bool)

(assert (=> b!3702728 (= e!2293140 e!2293141)))

(declare-fun c!639779 () Bool)

(assert (=> b!3702728 (= c!639779 (and ((_ is Cons!39356) rules!3598) (not (= (tag!6822 (h!44776 rules!3598)) (tag!6822 (rule!8856 token!544))))))))

(declare-fun b!3702729 () Bool)

(declare-fun e!2293142 () Bool)

(assert (=> b!3702729 (= e!2293142 (= (tag!6822 (get!13108 lt!1295707)) (tag!6822 (rule!8856 token!544))))))

(declare-fun b!3702730 () Bool)

(assert (=> b!3702730 (= e!2293140 (Some!8528 (h!44776 rules!3598)))))

(declare-fun b!3702731 () Bool)

(assert (=> b!3702731 (= e!2293139 e!2293142)))

(declare-fun res!1506253 () Bool)

(assert (=> b!3702731 (=> (not res!1506253) (not e!2293142))))

(declare-fun contains!7846 (List!39480 Rule!11768) Bool)

(assert (=> b!3702731 (= res!1506253 (contains!7846 rules!3598 (get!13108 lt!1295707)))))

(assert (= (and d!1085739 c!639778) b!3702730))

(assert (= (and d!1085739 (not c!639778)) b!3702728))

(assert (= (and b!3702728 c!639779) b!3702727))

(assert (= (and b!3702728 (not c!639779)) b!3702726))

(assert (= (and d!1085739 (not res!1506252)) b!3702731))

(assert (= (and b!3702731 res!1506253) b!3702729))

(declare-fun m!4213801 () Bool)

(assert (=> b!3702727 m!4213801))

(declare-fun m!4213803 () Bool)

(assert (=> b!3702727 m!4213803))

(declare-fun m!4213805 () Bool)

(assert (=> b!3702727 m!4213805))

(declare-fun m!4213807 () Bool)

(assert (=> d!1085739 m!4213807))

(assert (=> d!1085739 m!4213743))

(declare-fun m!4213809 () Bool)

(assert (=> b!3702729 m!4213809))

(assert (=> b!3702731 m!4213809))

(assert (=> b!3702731 m!4213809))

(declare-fun m!4213811 () Bool)

(assert (=> b!3702731 m!4213811))

(assert (=> b!3702663 d!1085739))

(declare-fun d!1085747 () Bool)

(assert (=> d!1085747 (= (inv!52892 (tag!6822 (rule!8856 token!544))) (= (mod (str.len (value!190997 (tag!6822 (rule!8856 token!544)))) 2) 0))))

(assert (=> b!3702674 d!1085747))

(declare-fun d!1085749 () Bool)

(declare-fun res!1506257 () Bool)

(declare-fun e!2293148 () Bool)

(assert (=> d!1085749 (=> (not res!1506257) (not e!2293148))))

(declare-fun semiInverseModEq!2558 (Int Int) Bool)

(assert (=> d!1085749 (= res!1506257 (semiInverseModEq!2558 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (toValue!8324 (transformation!5984 (rule!8856 token!544)))))))

(assert (=> d!1085749 (= (inv!52895 (transformation!5984 (rule!8856 token!544))) e!2293148)))

(declare-fun b!3702739 () Bool)

(declare-fun equivClasses!2457 (Int Int) Bool)

(assert (=> b!3702739 (= e!2293148 (equivClasses!2457 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (toValue!8324 (transformation!5984 (rule!8856 token!544)))))))

(assert (= (and d!1085749 res!1506257) b!3702739))

(declare-fun m!4213819 () Bool)

(assert (=> d!1085749 m!4213819))

(declare-fun m!4213821 () Bool)

(assert (=> b!3702739 m!4213821))

(assert (=> b!3702674 d!1085749))

(declare-fun d!1085753 () Bool)

(declare-fun res!1506260 () Bool)

(declare-fun e!2293151 () Bool)

(assert (=> d!1085753 (=> (not res!1506260) (not e!2293151))))

(declare-fun rulesValid!2315 (LexerInterface!5573 List!39480) Bool)

(assert (=> d!1085753 (= res!1506260 (rulesValid!2315 thiss!25322 rules!3598))))

(assert (=> d!1085753 (= (rulesInvariant!4970 thiss!25322 rules!3598) e!2293151)))

(declare-fun b!3702742 () Bool)

(declare-datatypes ((List!39482 0))(
  ( (Nil!39358) (Cons!39358 (h!44778 String!44404) (t!302165 List!39482)) )
))
(declare-fun noDuplicateTag!2311 (LexerInterface!5573 List!39480 List!39482) Bool)

(assert (=> b!3702742 (= e!2293151 (noDuplicateTag!2311 thiss!25322 rules!3598 Nil!39358))))

(assert (= (and d!1085753 res!1506260) b!3702742))

(declare-fun m!4213823 () Bool)

(assert (=> d!1085753 m!4213823))

(declare-fun m!4213825 () Bool)

(assert (=> b!3702742 m!4213825))

(assert (=> b!3702664 d!1085753))

(declare-fun d!1085755 () Bool)

(declare-fun isEmpty!23460 (Option!8530) Bool)

(assert (=> d!1085755 (= (isDefined!6718 lt!1295700) (not (isEmpty!23460 lt!1295700)))))

(declare-fun bs!574531 () Bool)

(assert (= bs!574531 d!1085755))

(declare-fun m!4213827 () Bool)

(assert (=> bs!574531 m!4213827))

(assert (=> b!3702667 d!1085755))

(declare-fun b!3702806 () Bool)

(declare-fun e!2293184 () Bool)

(declare-fun lt!1295726 () Option!8530)

(assert (=> b!3702806 (= e!2293184 (contains!7846 rules!3598 (rule!8856 (_1!22740 (get!13109 lt!1295726)))))))

(declare-fun b!3702807 () Bool)

(declare-fun res!1506303 () Bool)

(assert (=> b!3702807 (=> (not res!1506303) (not e!2293184))))

(assert (=> b!3702807 (= res!1506303 (matchR!5276 (regex!5984 (rule!8856 (_1!22740 (get!13109 lt!1295726)))) (list!14699 (charsOf!3973 (_1!22740 (get!13109 lt!1295726))))))))

(declare-fun call!267510 () Option!8530)

(declare-fun bm!267505 () Bool)

(declare-fun maxPrefixOneRule!2205 (LexerInterface!5573 Rule!11768 List!39479) Option!8530)

(assert (=> bm!267505 (= call!267510 (maxPrefixOneRule!2205 thiss!25322 (h!44776 rules!3598) input!3172))))

(declare-fun b!3702808 () Bool)

(declare-fun e!2293182 () Bool)

(assert (=> b!3702808 (= e!2293182 e!2293184)))

(declare-fun res!1506305 () Bool)

(assert (=> b!3702808 (=> (not res!1506305) (not e!2293184))))

(assert (=> b!3702808 (= res!1506305 (isDefined!6718 lt!1295726))))

(declare-fun b!3702809 () Bool)

(declare-fun e!2293183 () Option!8530)

(assert (=> b!3702809 (= e!2293183 call!267510)))

(declare-fun b!3702810 () Bool)

(declare-fun lt!1295730 () Option!8530)

(declare-fun lt!1295727 () Option!8530)

(assert (=> b!3702810 (= e!2293183 (ite (and ((_ is None!8529) lt!1295730) ((_ is None!8529) lt!1295727)) None!8529 (ite ((_ is None!8529) lt!1295727) lt!1295730 (ite ((_ is None!8529) lt!1295730) lt!1295727 (ite (>= (size!30006 (_1!22740 (v!38491 lt!1295730))) (size!30006 (_1!22740 (v!38491 lt!1295727)))) lt!1295730 lt!1295727)))))))

(assert (=> b!3702810 (= lt!1295730 call!267510)))

(assert (=> b!3702810 (= lt!1295727 (maxPrefix!3095 thiss!25322 (t!302151 rules!3598) input!3172))))

(declare-fun b!3702811 () Bool)

(declare-fun res!1506304 () Bool)

(assert (=> b!3702811 (=> (not res!1506304) (not e!2293184))))

(assert (=> b!3702811 (= res!1506304 (= (list!14699 (charsOf!3973 (_1!22740 (get!13109 lt!1295726)))) (originalCharacters!6692 (_1!22740 (get!13109 lt!1295726)))))))

(declare-fun b!3702813 () Bool)

(declare-fun res!1506307 () Bool)

(assert (=> b!3702813 (=> (not res!1506307) (not e!2293184))))

(declare-fun ++!9770 (List!39479 List!39479) List!39479)

(assert (=> b!3702813 (= res!1506307 (= (++!9770 (list!14699 (charsOf!3973 (_1!22740 (get!13109 lt!1295726)))) (_2!22740 (get!13109 lt!1295726))) input!3172))))

(declare-fun b!3702814 () Bool)

(declare-fun res!1506302 () Bool)

(assert (=> b!3702814 (=> (not res!1506302) (not e!2293184))))

(declare-fun size!30008 (List!39479) Int)

(assert (=> b!3702814 (= res!1506302 (< (size!30008 (_2!22740 (get!13109 lt!1295726))) (size!30008 input!3172)))))

(declare-fun b!3702812 () Bool)

(declare-fun res!1506306 () Bool)

(assert (=> b!3702812 (=> (not res!1506306) (not e!2293184))))

(declare-fun apply!9410 (TokenValueInjection!11856 BalanceConc!23776) TokenValue!6214)

(declare-fun seqFromList!4489 (List!39479) BalanceConc!23776)

(assert (=> b!3702812 (= res!1506306 (= (value!190998 (_1!22740 (get!13109 lt!1295726))) (apply!9410 (transformation!5984 (rule!8856 (_1!22740 (get!13109 lt!1295726)))) (seqFromList!4489 (originalCharacters!6692 (_1!22740 (get!13109 lt!1295726)))))))))

(declare-fun d!1085757 () Bool)

(assert (=> d!1085757 e!2293182))

(declare-fun res!1506308 () Bool)

(assert (=> d!1085757 (=> res!1506308 e!2293182)))

(assert (=> d!1085757 (= res!1506308 (isEmpty!23460 lt!1295726))))

(assert (=> d!1085757 (= lt!1295726 e!2293183)))

(declare-fun c!639793 () Bool)

(assert (=> d!1085757 (= c!639793 (and ((_ is Cons!39356) rules!3598) ((_ is Nil!39356) (t!302151 rules!3598))))))

(declare-fun lt!1295729 () Unit!57322)

(declare-fun lt!1295728 () Unit!57322)

(assert (=> d!1085757 (= lt!1295729 lt!1295728)))

(declare-fun isPrefix!3291 (List!39479 List!39479) Bool)

(assert (=> d!1085757 (isPrefix!3291 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2076 (List!39479 List!39479) Unit!57322)

(assert (=> d!1085757 (= lt!1295728 (lemmaIsPrefixRefl!2076 input!3172 input!3172))))

(declare-fun rulesValidInductive!2157 (LexerInterface!5573 List!39480) Bool)

(assert (=> d!1085757 (rulesValidInductive!2157 thiss!25322 rules!3598)))

(assert (=> d!1085757 (= (maxPrefix!3095 thiss!25322 rules!3598 input!3172) lt!1295726)))

(assert (= (and d!1085757 c!639793) b!3702809))

(assert (= (and d!1085757 (not c!639793)) b!3702810))

(assert (= (or b!3702809 b!3702810) bm!267505))

(assert (= (and d!1085757 (not res!1506308)) b!3702808))

(assert (= (and b!3702808 res!1506305) b!3702811))

(assert (= (and b!3702811 res!1506304) b!3702814))

(assert (= (and b!3702814 res!1506302) b!3702813))

(assert (= (and b!3702813 res!1506307) b!3702812))

(assert (= (and b!3702812 res!1506306) b!3702807))

(assert (= (and b!3702807 res!1506303) b!3702806))

(declare-fun m!4213855 () Bool)

(assert (=> b!3702812 m!4213855))

(declare-fun m!4213857 () Bool)

(assert (=> b!3702812 m!4213857))

(assert (=> b!3702812 m!4213857))

(declare-fun m!4213859 () Bool)

(assert (=> b!3702812 m!4213859))

(assert (=> b!3702807 m!4213855))

(declare-fun m!4213861 () Bool)

(assert (=> b!3702807 m!4213861))

(assert (=> b!3702807 m!4213861))

(declare-fun m!4213863 () Bool)

(assert (=> b!3702807 m!4213863))

(assert (=> b!3702807 m!4213863))

(declare-fun m!4213865 () Bool)

(assert (=> b!3702807 m!4213865))

(declare-fun m!4213867 () Bool)

(assert (=> d!1085757 m!4213867))

(declare-fun m!4213869 () Bool)

(assert (=> d!1085757 m!4213869))

(declare-fun m!4213871 () Bool)

(assert (=> d!1085757 m!4213871))

(declare-fun m!4213873 () Bool)

(assert (=> d!1085757 m!4213873))

(declare-fun m!4213875 () Bool)

(assert (=> bm!267505 m!4213875))

(declare-fun m!4213877 () Bool)

(assert (=> b!3702808 m!4213877))

(declare-fun m!4213879 () Bool)

(assert (=> b!3702810 m!4213879))

(assert (=> b!3702813 m!4213855))

(assert (=> b!3702813 m!4213861))

(assert (=> b!3702813 m!4213861))

(assert (=> b!3702813 m!4213863))

(assert (=> b!3702813 m!4213863))

(declare-fun m!4213881 () Bool)

(assert (=> b!3702813 m!4213881))

(assert (=> b!3702806 m!4213855))

(declare-fun m!4213883 () Bool)

(assert (=> b!3702806 m!4213883))

(assert (=> b!3702811 m!4213855))

(assert (=> b!3702811 m!4213861))

(assert (=> b!3702811 m!4213861))

(assert (=> b!3702811 m!4213863))

(assert (=> b!3702814 m!4213855))

(declare-fun m!4213885 () Bool)

(assert (=> b!3702814 m!4213885))

(declare-fun m!4213887 () Bool)

(assert (=> b!3702814 m!4213887))

(assert (=> b!3702667 d!1085757))

(declare-fun bm!267511 () Bool)

(declare-fun call!267516 () Bool)

(declare-fun isEmpty!23462 (List!39479) Bool)

(assert (=> bm!267511 (= call!267516 (isEmpty!23462 (list!14699 (charsOf!3973 token!544))))))

(declare-fun b!3702924 () Bool)

(declare-fun e!2293246 () Bool)

(declare-fun nullable!3742 (Regex!10743) Bool)

(assert (=> b!3702924 (= e!2293246 (nullable!3742 (regex!5984 lt!1295698)))))

(declare-fun b!3702925 () Bool)

(declare-fun res!1506358 () Bool)

(declare-fun e!2293241 () Bool)

(assert (=> b!3702925 (=> (not res!1506358) (not e!2293241))))

(assert (=> b!3702925 (= res!1506358 (not call!267516))))

(declare-fun b!3702926 () Bool)

(declare-fun res!1506353 () Bool)

(declare-fun e!2293244 () Bool)

(assert (=> b!3702926 (=> res!1506353 e!2293244)))

(assert (=> b!3702926 (= res!1506353 e!2293241)))

(declare-fun res!1506355 () Bool)

(assert (=> b!3702926 (=> (not res!1506355) (not e!2293241))))

(declare-fun lt!1295757 () Bool)

(assert (=> b!3702926 (= res!1506355 lt!1295757)))

(declare-fun b!3702927 () Bool)

(declare-fun head!7997 (List!39479) C!21672)

(assert (=> b!3702927 (= e!2293241 (= (head!7997 (list!14699 (charsOf!3973 token!544))) (c!639762 (regex!5984 lt!1295698))))))

(declare-fun b!3702928 () Bool)

(declare-fun e!2293247 () Bool)

(assert (=> b!3702928 (= e!2293244 e!2293247)))

(declare-fun res!1506356 () Bool)

(assert (=> b!3702928 (=> (not res!1506356) (not e!2293247))))

(assert (=> b!3702928 (= res!1506356 (not lt!1295757))))

(declare-fun d!1085775 () Bool)

(declare-fun e!2293242 () Bool)

(assert (=> d!1085775 e!2293242))

(declare-fun c!639810 () Bool)

(assert (=> d!1085775 (= c!639810 ((_ is EmptyExpr!10743) (regex!5984 lt!1295698)))))

(assert (=> d!1085775 (= lt!1295757 e!2293246)))

(declare-fun c!639809 () Bool)

(assert (=> d!1085775 (= c!639809 (isEmpty!23462 (list!14699 (charsOf!3973 token!544))))))

(declare-fun validRegex!4906 (Regex!10743) Bool)

(assert (=> d!1085775 (validRegex!4906 (regex!5984 lt!1295698))))

(assert (=> d!1085775 (= (matchR!5276 (regex!5984 lt!1295698) (list!14699 (charsOf!3973 token!544))) lt!1295757)))

(declare-fun b!3702929 () Bool)

(declare-fun e!2293245 () Bool)

(assert (=> b!3702929 (= e!2293245 (not (= (head!7997 (list!14699 (charsOf!3973 token!544))) (c!639762 (regex!5984 lt!1295698)))))))

(declare-fun b!3702930 () Bool)

(declare-fun res!1506359 () Bool)

(assert (=> b!3702930 (=> res!1506359 e!2293245)))

(declare-fun tail!5734 (List!39479) List!39479)

(assert (=> b!3702930 (= res!1506359 (not (isEmpty!23462 (tail!5734 (list!14699 (charsOf!3973 token!544))))))))

(declare-fun b!3702931 () Bool)

(declare-fun res!1506357 () Bool)

(assert (=> b!3702931 (=> res!1506357 e!2293244)))

(assert (=> b!3702931 (= res!1506357 (not ((_ is ElementMatch!10743) (regex!5984 lt!1295698))))))

(declare-fun e!2293243 () Bool)

(assert (=> b!3702931 (= e!2293243 e!2293244)))

(declare-fun b!3702932 () Bool)

(assert (=> b!3702932 (= e!2293247 e!2293245)))

(declare-fun res!1506360 () Bool)

(assert (=> b!3702932 (=> res!1506360 e!2293245)))

(assert (=> b!3702932 (= res!1506360 call!267516)))

(declare-fun b!3702933 () Bool)

(declare-fun derivativeStep!3284 (Regex!10743 C!21672) Regex!10743)

(assert (=> b!3702933 (= e!2293246 (matchR!5276 (derivativeStep!3284 (regex!5984 lt!1295698) (head!7997 (list!14699 (charsOf!3973 token!544)))) (tail!5734 (list!14699 (charsOf!3973 token!544)))))))

(declare-fun b!3702934 () Bool)

(assert (=> b!3702934 (= e!2293242 (= lt!1295757 call!267516))))

(declare-fun b!3702935 () Bool)

(declare-fun res!1506354 () Bool)

(assert (=> b!3702935 (=> (not res!1506354) (not e!2293241))))

(assert (=> b!3702935 (= res!1506354 (isEmpty!23462 (tail!5734 (list!14699 (charsOf!3973 token!544)))))))

(declare-fun b!3702936 () Bool)

(assert (=> b!3702936 (= e!2293242 e!2293243)))

(declare-fun c!639811 () Bool)

(assert (=> b!3702936 (= c!639811 ((_ is EmptyLang!10743) (regex!5984 lt!1295698)))))

(declare-fun b!3702937 () Bool)

(assert (=> b!3702937 (= e!2293243 (not lt!1295757))))

(assert (= (and d!1085775 c!639809) b!3702924))

(assert (= (and d!1085775 (not c!639809)) b!3702933))

(assert (= (and d!1085775 c!639810) b!3702934))

(assert (= (and d!1085775 (not c!639810)) b!3702936))

(assert (= (and b!3702936 c!639811) b!3702937))

(assert (= (and b!3702936 (not c!639811)) b!3702931))

(assert (= (and b!3702931 (not res!1506357)) b!3702926))

(assert (= (and b!3702926 res!1506355) b!3702925))

(assert (= (and b!3702925 res!1506358) b!3702935))

(assert (= (and b!3702935 res!1506354) b!3702927))

(assert (= (and b!3702926 (not res!1506353)) b!3702928))

(assert (= (and b!3702928 res!1506356) b!3702932))

(assert (= (and b!3702932 (not res!1506360)) b!3702930))

(assert (= (and b!3702930 (not res!1506359)) b!3702929))

(assert (= (or b!3702934 b!3702932 b!3702925) bm!267511))

(assert (=> bm!267511 m!4213761))

(declare-fun m!4213945 () Bool)

(assert (=> bm!267511 m!4213945))

(assert (=> b!3702927 m!4213761))

(declare-fun m!4213947 () Bool)

(assert (=> b!3702927 m!4213947))

(declare-fun m!4213949 () Bool)

(assert (=> b!3702924 m!4213949))

(assert (=> b!3702935 m!4213761))

(declare-fun m!4213951 () Bool)

(assert (=> b!3702935 m!4213951))

(assert (=> b!3702935 m!4213951))

(declare-fun m!4213953 () Bool)

(assert (=> b!3702935 m!4213953))

(assert (=> b!3702933 m!4213761))

(assert (=> b!3702933 m!4213947))

(assert (=> b!3702933 m!4213947))

(declare-fun m!4213955 () Bool)

(assert (=> b!3702933 m!4213955))

(assert (=> b!3702933 m!4213761))

(assert (=> b!3702933 m!4213951))

(assert (=> b!3702933 m!4213955))

(assert (=> b!3702933 m!4213951))

(declare-fun m!4213957 () Bool)

(assert (=> b!3702933 m!4213957))

(assert (=> b!3702930 m!4213761))

(assert (=> b!3702930 m!4213951))

(assert (=> b!3702930 m!4213951))

(assert (=> b!3702930 m!4213953))

(assert (=> d!1085775 m!4213761))

(assert (=> d!1085775 m!4213945))

(declare-fun m!4213959 () Bool)

(assert (=> d!1085775 m!4213959))

(assert (=> b!3702929 m!4213761))

(assert (=> b!3702929 m!4213947))

(assert (=> b!3702662 d!1085775))

(declare-fun d!1085785 () Bool)

(declare-fun list!14701 (Conc!12081) List!39479)

(assert (=> d!1085785 (= (list!14699 (charsOf!3973 token!544)) (list!14701 (c!639763 (charsOf!3973 token!544))))))

(declare-fun bs!574535 () Bool)

(assert (= bs!574535 d!1085785))

(declare-fun m!4213961 () Bool)

(assert (=> bs!574535 m!4213961))

(assert (=> b!3702662 d!1085785))

(declare-fun d!1085787 () Bool)

(declare-fun lt!1295760 () BalanceConc!23776)

(assert (=> d!1085787 (= (list!14699 lt!1295760) (originalCharacters!6692 token!544))))

(declare-fun dynLambda!17198 (Int TokenValue!6214) BalanceConc!23776)

(assert (=> d!1085787 (= lt!1295760 (dynLambda!17198 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (value!190998 token!544)))))

(assert (=> d!1085787 (= (charsOf!3973 token!544) lt!1295760)))

(declare-fun b_lambda!109835 () Bool)

(assert (=> (not b_lambda!109835) (not d!1085787)))

(declare-fun t!302159 () Bool)

(declare-fun tb!214391 () Bool)

(assert (=> (and b!3702673 (= (toChars!8183 (transformation!5984 (rule!8856 token!544))) (toChars!8183 (transformation!5984 (rule!8856 token!544)))) t!302159) tb!214391))

(declare-fun b!3702942 () Bool)

(declare-fun e!2293250 () Bool)

(declare-fun tp!1125540 () Bool)

(declare-fun inv!52899 (Conc!12081) Bool)

(assert (=> b!3702942 (= e!2293250 (and (inv!52899 (c!639763 (dynLambda!17198 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (value!190998 token!544)))) tp!1125540))))

(declare-fun result!261232 () Bool)

(declare-fun inv!52900 (BalanceConc!23776) Bool)

(assert (=> tb!214391 (= result!261232 (and (inv!52900 (dynLambda!17198 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (value!190998 token!544))) e!2293250))))

(assert (= tb!214391 b!3702942))

(declare-fun m!4213963 () Bool)

(assert (=> b!3702942 m!4213963))

(declare-fun m!4213965 () Bool)

(assert (=> tb!214391 m!4213965))

(assert (=> d!1085787 t!302159))

(declare-fun b_and!276943 () Bool)

(assert (= b_and!276925 (and (=> t!302159 result!261232) b_and!276943)))

(declare-fun tb!214393 () Bool)

(declare-fun t!302161 () Bool)

(assert (=> (and b!3702661 (= (toChars!8183 (transformation!5984 (h!44776 rules!3598))) (toChars!8183 (transformation!5984 (rule!8856 token!544)))) t!302161) tb!214393))

(declare-fun result!261236 () Bool)

(assert (= result!261236 result!261232))

(assert (=> d!1085787 t!302161))

(declare-fun b_and!276945 () Bool)

(assert (= b_and!276929 (and (=> t!302161 result!261236) b_and!276945)))

(declare-fun m!4213967 () Bool)

(assert (=> d!1085787 m!4213967))

(declare-fun m!4213969 () Bool)

(assert (=> d!1085787 m!4213969))

(assert (=> b!3702662 d!1085787))

(declare-fun d!1085789 () Bool)

(assert (=> d!1085789 (= (get!13108 lt!1295699) (v!38490 lt!1295699))))

(assert (=> b!3702662 d!1085789))

(declare-fun d!1085791 () Bool)

(assert (=> d!1085791 (= (inv!52892 (tag!6822 (h!44776 rules!3598))) (= (mod (str.len (value!190997 (tag!6822 (h!44776 rules!3598)))) 2) 0))))

(assert (=> b!3702668 d!1085791))

(declare-fun d!1085793 () Bool)

(declare-fun res!1506361 () Bool)

(declare-fun e!2293251 () Bool)

(assert (=> d!1085793 (=> (not res!1506361) (not e!2293251))))

(assert (=> d!1085793 (= res!1506361 (semiInverseModEq!2558 (toChars!8183 (transformation!5984 (h!44776 rules!3598))) (toValue!8324 (transformation!5984 (h!44776 rules!3598)))))))

(assert (=> d!1085793 (= (inv!52895 (transformation!5984 (h!44776 rules!3598))) e!2293251)))

(declare-fun b!3702943 () Bool)

(assert (=> b!3702943 (= e!2293251 (equivClasses!2457 (toChars!8183 (transformation!5984 (h!44776 rules!3598))) (toValue!8324 (transformation!5984 (h!44776 rules!3598)))))))

(assert (= (and d!1085793 res!1506361) b!3702943))

(declare-fun m!4213971 () Bool)

(assert (=> d!1085793 m!4213971))

(declare-fun m!4213973 () Bool)

(assert (=> b!3702943 m!4213973))

(assert (=> b!3702668 d!1085793))

(declare-fun d!1085795 () Bool)

(declare-fun res!1506366 () Bool)

(declare-fun e!2293254 () Bool)

(assert (=> d!1085795 (=> (not res!1506366) (not e!2293254))))

(assert (=> d!1085795 (= res!1506366 (not (isEmpty!23462 (originalCharacters!6692 token!544))))))

(assert (=> d!1085795 (= (inv!52896 token!544) e!2293254)))

(declare-fun b!3702948 () Bool)

(declare-fun res!1506367 () Bool)

(assert (=> b!3702948 (=> (not res!1506367) (not e!2293254))))

(assert (=> b!3702948 (= res!1506367 (= (originalCharacters!6692 token!544) (list!14699 (dynLambda!17198 (toChars!8183 (transformation!5984 (rule!8856 token!544))) (value!190998 token!544)))))))

(declare-fun b!3702949 () Bool)

(assert (=> b!3702949 (= e!2293254 (= (size!30006 token!544) (size!30008 (originalCharacters!6692 token!544))))))

(assert (= (and d!1085795 res!1506366) b!3702948))

(assert (= (and b!3702948 res!1506367) b!3702949))

(declare-fun b_lambda!109837 () Bool)

(assert (=> (not b_lambda!109837) (not b!3702948)))

(assert (=> b!3702948 t!302159))

(declare-fun b_and!276947 () Bool)

(assert (= b_and!276943 (and (=> t!302159 result!261232) b_and!276947)))

(assert (=> b!3702948 t!302161))

(declare-fun b_and!276949 () Bool)

(assert (= b_and!276945 (and (=> t!302161 result!261236) b_and!276949)))

(declare-fun m!4213975 () Bool)

(assert (=> d!1085795 m!4213975))

(assert (=> b!3702948 m!4213969))

(assert (=> b!3702948 m!4213969))

(declare-fun m!4213977 () Bool)

(assert (=> b!3702948 m!4213977))

(declare-fun m!4213979 () Bool)

(assert (=> b!3702949 m!4213979))

(assert (=> start!348930 d!1085795))

(declare-fun b!3702954 () Bool)

(declare-fun e!2293257 () Bool)

(declare-fun tp!1125543 () Bool)

(assert (=> b!3702954 (= e!2293257 (and tp_is_empty!18561 tp!1125543))))

(assert (=> b!3702672 (= tp!1125496 e!2293257)))

(assert (= (and b!3702672 ((_ is Cons!39355) (originalCharacters!6692 token!544))) b!3702954))

(declare-fun b!3702965 () Bool)

(declare-fun b_free!98717 () Bool)

(declare-fun b_next!99421 () Bool)

(assert (=> b!3702965 (= b_free!98717 (not b_next!99421))))

(declare-fun tp!1125555 () Bool)

(declare-fun b_and!276951 () Bool)

(assert (=> b!3702965 (= tp!1125555 b_and!276951)))

(declare-fun b_free!98719 () Bool)

(declare-fun b_next!99423 () Bool)

(assert (=> b!3702965 (= b_free!98719 (not b_next!99423))))

(declare-fun tb!214395 () Bool)

(declare-fun t!302163 () Bool)

(assert (=> (and b!3702965 (= (toChars!8183 (transformation!5984 (h!44776 (t!302151 rules!3598)))) (toChars!8183 (transformation!5984 (rule!8856 token!544)))) t!302163) tb!214395))

(declare-fun result!261242 () Bool)

(assert (= result!261242 result!261232))

(assert (=> d!1085787 t!302163))

(assert (=> b!3702948 t!302163))

(declare-fun b_and!276953 () Bool)

(declare-fun tp!1125552 () Bool)

(assert (=> b!3702965 (= tp!1125552 (and (=> t!302163 result!261242) b_and!276953))))

(declare-fun e!2293268 () Bool)

(assert (=> b!3702965 (= e!2293268 (and tp!1125555 tp!1125552))))

(declare-fun e!2293267 () Bool)

(declare-fun tp!1125553 () Bool)

(declare-fun b!3702964 () Bool)

(assert (=> b!3702964 (= e!2293267 (and tp!1125553 (inv!52892 (tag!6822 (h!44776 (t!302151 rules!3598)))) (inv!52895 (transformation!5984 (h!44776 (t!302151 rules!3598)))) e!2293268))))

(declare-fun b!3702963 () Bool)

(declare-fun e!2293266 () Bool)

(declare-fun tp!1125554 () Bool)

(assert (=> b!3702963 (= e!2293266 (and e!2293267 tp!1125554))))

(assert (=> b!3702670 (= tp!1125497 e!2293266)))

(assert (= b!3702964 b!3702965))

(assert (= b!3702963 b!3702964))

(assert (= (and b!3702670 ((_ is Cons!39356) (t!302151 rules!3598))) b!3702963))

(declare-fun m!4213981 () Bool)

(assert (=> b!3702964 m!4213981))

(declare-fun m!4213983 () Bool)

(assert (=> b!3702964 m!4213983))

(declare-fun b!3702977 () Bool)

(declare-fun e!2293272 () Bool)

(declare-fun tp!1125570 () Bool)

(declare-fun tp!1125567 () Bool)

(assert (=> b!3702977 (= e!2293272 (and tp!1125570 tp!1125567))))

(assert (=> b!3702674 (= tp!1125490 e!2293272)))

(declare-fun b!3702976 () Bool)

(assert (=> b!3702976 (= e!2293272 tp_is_empty!18561)))

(declare-fun b!3702978 () Bool)

(declare-fun tp!1125569 () Bool)

(assert (=> b!3702978 (= e!2293272 tp!1125569)))

(declare-fun b!3702979 () Bool)

(declare-fun tp!1125566 () Bool)

(declare-fun tp!1125568 () Bool)

(assert (=> b!3702979 (= e!2293272 (and tp!1125566 tp!1125568))))

(assert (= (and b!3702674 ((_ is ElementMatch!10743) (regex!5984 (rule!8856 token!544)))) b!3702976))

(assert (= (and b!3702674 ((_ is Concat!16958) (regex!5984 (rule!8856 token!544)))) b!3702977))

(assert (= (and b!3702674 ((_ is Star!10743) (regex!5984 (rule!8856 token!544)))) b!3702978))

(assert (= (and b!3702674 ((_ is Union!10743) (regex!5984 (rule!8856 token!544)))) b!3702979))

(declare-fun b!3702980 () Bool)

(declare-fun e!2293273 () Bool)

(declare-fun tp!1125571 () Bool)

(assert (=> b!3702980 (= e!2293273 (and tp_is_empty!18561 tp!1125571))))

(assert (=> b!3702669 (= tp!1125495 e!2293273)))

(assert (= (and b!3702669 ((_ is Cons!39355) (t!302150 input!3172))) b!3702980))

(declare-fun b!3702982 () Bool)

(declare-fun e!2293274 () Bool)

(declare-fun tp!1125576 () Bool)

(declare-fun tp!1125573 () Bool)

(assert (=> b!3702982 (= e!2293274 (and tp!1125576 tp!1125573))))

(assert (=> b!3702668 (= tp!1125498 e!2293274)))

(declare-fun b!3702981 () Bool)

(assert (=> b!3702981 (= e!2293274 tp_is_empty!18561)))

(declare-fun b!3702983 () Bool)

(declare-fun tp!1125575 () Bool)

(assert (=> b!3702983 (= e!2293274 tp!1125575)))

(declare-fun b!3702984 () Bool)

(declare-fun tp!1125572 () Bool)

(declare-fun tp!1125574 () Bool)

(assert (=> b!3702984 (= e!2293274 (and tp!1125572 tp!1125574))))

(assert (= (and b!3702668 ((_ is ElementMatch!10743) (regex!5984 (h!44776 rules!3598)))) b!3702981))

(assert (= (and b!3702668 ((_ is Concat!16958) (regex!5984 (h!44776 rules!3598)))) b!3702982))

(assert (= (and b!3702668 ((_ is Star!10743) (regex!5984 (h!44776 rules!3598)))) b!3702983))

(assert (= (and b!3702668 ((_ is Union!10743) (regex!5984 (h!44776 rules!3598)))) b!3702984))

(declare-fun b_lambda!109839 () Bool)

(assert (= b_lambda!109837 (or (and b!3702673 b_free!98707) (and b!3702661 b_free!98711 (= (toChars!8183 (transformation!5984 (h!44776 rules!3598))) (toChars!8183 (transformation!5984 (rule!8856 token!544))))) (and b!3702965 b_free!98719 (= (toChars!8183 (transformation!5984 (h!44776 (t!302151 rules!3598)))) (toChars!8183 (transformation!5984 (rule!8856 token!544))))) b_lambda!109839)))

(declare-fun b_lambda!109841 () Bool)

(assert (= b_lambda!109835 (or (and b!3702673 b_free!98707) (and b!3702661 b_free!98711 (= (toChars!8183 (transformation!5984 (h!44776 rules!3598))) (toChars!8183 (transformation!5984 (rule!8856 token!544))))) (and b!3702965 b_free!98719 (= (toChars!8183 (transformation!5984 (h!44776 (t!302151 rules!3598)))) (toChars!8183 (transformation!5984 (rule!8856 token!544))))) b_lambda!109841)))

(check-sat (not b_next!99423) (not d!1085785) (not b!3702942) b_and!276953 (not d!1085755) (not d!1085793) (not d!1085737) (not d!1085787) (not b!3702739) (not d!1085775) (not b!3702814) (not b_lambda!109839) b_and!276947 (not b_next!99421) (not b!3702984) (not bm!267511) b_and!276923 (not b!3702806) (not b!3702807) (not tb!214391) (not b!3702811) (not b!3702689) (not d!1085757) (not bm!267505) (not b!3702742) (not b!3702727) (not b!3702963) (not b!3702980) (not b!3702930) (not b!3702810) (not b!3702731) (not b!3702964) (not b!3702977) (not b!3702979) (not b!3702954) (not b_next!99409) (not d!1085749) (not d!1085739) (not b_next!99413) (not b!3702933) (not b!3702982) (not b!3702812) (not b!3702935) (not b_next!99411) (not b!3702929) b_and!276949 (not d!1085753) (not b!3702948) (not b!3702686) (not d!1085795) (not b!3702949) (not b!3702813) tp_is_empty!18561 (not b_next!99415) (not b!3702924) (not b!3702983) b_and!276927 (not b!3702729) b_and!276951 (not b!3702808) (not b!3702943) (not b_lambda!109841) (not b!3702978) (not b!3702927) (not b!3702688))
(check-sat (not b_next!99423) b_and!276923 b_and!276953 (not b_next!99409) (not b_next!99413) (not b_next!99411) b_and!276949 (not b_next!99415) b_and!276927 b_and!276951 b_and!276947 (not b_next!99421))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108256 () Bool)

(assert start!108256)

(declare-fun b!1212742 () Bool)

(declare-fun b_free!28945 () Bool)

(declare-fun b_next!29649 () Bool)

(assert (=> b!1212742 (= b_free!28945 (not b_next!29649))))

(declare-fun tp!343807 () Bool)

(declare-fun b_and!82177 () Bool)

(assert (=> b!1212742 (= tp!343807 b_and!82177)))

(declare-fun b_free!28947 () Bool)

(declare-fun b_next!29651 () Bool)

(assert (=> b!1212742 (= b_free!28947 (not b_next!29651))))

(declare-fun tp!343809 () Bool)

(declare-fun b_and!82179 () Bool)

(assert (=> b!1212742 (= tp!343809 b_and!82179)))

(declare-fun b!1212734 () Bool)

(declare-fun b_free!28949 () Bool)

(declare-fun b_next!29653 () Bool)

(assert (=> b!1212734 (= b_free!28949 (not b_next!29653))))

(declare-fun tp!343808 () Bool)

(declare-fun b_and!82181 () Bool)

(assert (=> b!1212734 (= tp!343808 b_and!82181)))

(declare-fun b_free!28951 () Bool)

(declare-fun b_next!29655 () Bool)

(assert (=> b!1212734 (= b_free!28951 (not b_next!29655))))

(declare-fun tp!343810 () Bool)

(declare-fun b_and!82183 () Bool)

(assert (=> b!1212734 (= tp!343810 b_and!82183)))

(declare-fun b!1212726 () Bool)

(declare-fun e!778145 () Bool)

(declare-datatypes ((List!12364 0))(
  ( (Nil!12306) (Cons!12306 (h!17707 (_ BitVec 16)) (t!112812 List!12364)) )
))
(declare-datatypes ((TokenValue!2180 0))(
  ( (FloatLiteralValue!4360 (text!15705 List!12364)) (TokenValueExt!2179 (__x!8075 Int)) (Broken!10900 (value!68764 List!12364)) (Object!2237) (End!2180) (Def!2180) (Underscore!2180) (Match!2180) (Else!2180) (Error!2180) (Case!2180) (If!2180) (Extends!2180) (Abstract!2180) (Class!2180) (Val!2180) (DelimiterValue!4360 (del!2240 List!12364)) (KeywordValue!2186 (value!68765 List!12364)) (CommentValue!4360 (value!68766 List!12364)) (WhitespaceValue!4360 (value!68767 List!12364)) (IndentationValue!2180 (value!68768 List!12364)) (String!15033) (Int32!2180) (Broken!10901 (value!68769 List!12364)) (Boolean!2181) (Unit!18628) (OperatorValue!2183 (op!2240 List!12364)) (IdentifierValue!4360 (value!68770 List!12364)) (IdentifierValue!4361 (value!68771 List!12364)) (WhitespaceValue!4361 (value!68772 List!12364)) (True!4360) (False!4360) (Broken!10902 (value!68773 List!12364)) (Broken!10903 (value!68774 List!12364)) (True!4361) (RightBrace!2180) (RightBracket!2180) (Colon!2180) (Null!2180) (Comma!2180) (LeftBracket!2180) (False!4361) (LeftBrace!2180) (ImaginaryLiteralValue!2180 (text!15706 List!12364)) (StringLiteralValue!6540 (value!68775 List!12364)) (EOFValue!2180 (value!68776 List!12364)) (IdentValue!2180 (value!68777 List!12364)) (DelimiterValue!4361 (value!68778 List!12364)) (DedentValue!2180 (value!68779 List!12364)) (NewLineValue!2180 (value!68780 List!12364)) (IntegerValue!6540 (value!68781 (_ BitVec 32)) (text!15707 List!12364)) (IntegerValue!6541 (value!68782 Int) (text!15708 List!12364)) (Times!2180) (Or!2180) (Equal!2180) (Minus!2180) (Broken!10904 (value!68783 List!12364)) (And!2180) (Div!2180) (LessEqual!2180) (Mod!2180) (Concat!5562) (Not!2180) (Plus!2180) (SpaceValue!2180 (value!68784 List!12364)) (IntegerValue!6542 (value!68785 Int) (text!15709 List!12364)) (StringLiteralValue!6541 (text!15710 List!12364)) (FloatLiteralValue!4361 (text!15711 List!12364)) (BytesLiteralValue!2180 (value!68786 List!12364)) (CommentValue!4361 (value!68787 List!12364)) (StringLiteralValue!6542 (value!68788 List!12364)) (ErrorTokenValue!2180 (msg!2241 List!12364)) )
))
(declare-datatypes ((C!7082 0))(
  ( (C!7083 (val!4071 Int)) )
))
(declare-datatypes ((Regex!3382 0))(
  ( (ElementMatch!3382 (c!203029 C!7082)) (Concat!5563 (regOne!7276 Regex!3382) (regTwo!7276 Regex!3382)) (EmptyExpr!3382) (Star!3382 (reg!3711 Regex!3382)) (EmptyLang!3382) (Union!3382 (regOne!7277 Regex!3382) (regTwo!7277 Regex!3382)) )
))
(declare-datatypes ((String!15034 0))(
  ( (String!15035 (value!68789 String)) )
))
(declare-datatypes ((List!12365 0))(
  ( (Nil!12307) (Cons!12307 (h!17708 C!7082) (t!112813 List!12365)) )
))
(declare-datatypes ((IArray!8079 0))(
  ( (IArray!8080 (innerList!4097 List!12365)) )
))
(declare-datatypes ((Conc!4037 0))(
  ( (Node!4037 (left!10673 Conc!4037) (right!11003 Conc!4037) (csize!8304 Int) (cheight!4248 Int)) (Leaf!6242 (xs!6748 IArray!8079) (csize!8305 Int)) (Empty!4037) )
))
(declare-datatypes ((BalanceConc!8006 0))(
  ( (BalanceConc!8007 (c!203030 Conc!4037)) )
))
(declare-datatypes ((TokenValueInjection!4056 0))(
  ( (TokenValueInjection!4057 (toValue!3233 Int) (toChars!3092 Int)) )
))
(declare-datatypes ((Rule!4024 0))(
  ( (Rule!4025 (regex!2112 Regex!3382) (tag!2374 String!15034) (isSeparator!2112 Bool) (transformation!2112 TokenValueInjection!4056)) )
))
(declare-datatypes ((List!12366 0))(
  ( (Nil!12308) (Cons!12308 (h!17709 Rule!4024) (t!112814 List!12366)) )
))
(declare-fun rules!2728 () List!12366)

(declare-fun tp!343811 () Bool)

(declare-fun e!778149 () Bool)

(declare-fun inv!16492 (String!15034) Bool)

(declare-fun inv!16495 (TokenValueInjection!4056) Bool)

(assert (=> b!1212726 (= e!778145 (and tp!343811 (inv!16492 (tag!2374 (h!17709 rules!2728))) (inv!16495 (transformation!2112 (h!17709 rules!2728))) e!778149))))

(declare-datatypes ((Token!3886 0))(
  ( (Token!3887 (value!68790 TokenValue!2180) (rule!3533 Rule!4024) (size!9775 Int) (originalCharacters!2666 List!12365)) )
))
(declare-datatypes ((List!12367 0))(
  ( (Nil!12309) (Cons!12309 (h!17710 Token!3886) (t!112815 List!12367)) )
))
(declare-fun tokens!556 () List!12367)

(declare-fun e!778143 () Bool)

(declare-fun e!778155 () Bool)

(declare-fun b!1212727 () Bool)

(declare-fun tp!343806 () Bool)

(declare-fun inv!16496 (Token!3886) Bool)

(assert (=> b!1212727 (= e!778143 (and (inv!16496 (h!17710 tokens!556)) e!778155 tp!343806))))

(declare-fun b!1212728 () Bool)

(declare-fun e!778156 () Bool)

(declare-fun tp!343802 () Bool)

(assert (=> b!1212728 (= e!778156 (and e!778145 tp!343802))))

(declare-fun b!1212729 () Bool)

(declare-fun e!778152 () Bool)

(declare-fun e!778146 () Bool)

(assert (=> b!1212729 (= e!778152 e!778146)))

(declare-fun res!545347 () Bool)

(assert (=> b!1212729 (=> (not res!545347) (not e!778146))))

(declare-datatypes ((tuple2!12176 0))(
  ( (tuple2!12177 (_1!6935 Token!3886) (_2!6935 List!12365)) )
))
(declare-datatypes ((Option!2474 0))(
  ( (None!2473) (Some!2473 (v!20600 tuple2!12176)) )
))
(declare-fun lt!414783 () Option!2474)

(declare-fun isDefined!2112 (Option!2474) Bool)

(assert (=> b!1212729 (= res!545347 (isDefined!2112 lt!414783))))

(declare-datatypes ((LexerInterface!1807 0))(
  ( (LexerInterfaceExt!1804 (__x!8076 Int)) (Lexer!1805) )
))
(declare-fun thiss!20528 () LexerInterface!1807)

(declare-fun input!2346 () List!12365)

(declare-fun maxPrefix!929 (LexerInterface!1807 List!12366 List!12365) Option!2474)

(assert (=> b!1212729 (= lt!414783 (maxPrefix!929 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1212730 () Bool)

(declare-fun res!545354 () Bool)

(declare-fun e!778147 () Bool)

(assert (=> b!1212730 (=> (not res!545354) (not e!778147))))

(declare-fun lt!414781 () tuple2!12176)

(declare-fun lt!414779 () List!12365)

(declare-fun ++!3150 (List!12365 List!12365) List!12365)

(assert (=> b!1212730 (= res!545354 (= (++!3150 lt!414779 (_2!6935 lt!414781)) input!2346))))

(declare-fun b!1212731 () Bool)

(declare-fun res!545345 () Bool)

(assert (=> b!1212731 (=> (not res!545345) (not e!778152))))

(declare-datatypes ((tuple2!12178 0))(
  ( (tuple2!12179 (_1!6936 List!12367) (_2!6936 List!12365)) )
))
(declare-fun lexList!437 (LexerInterface!1807 List!12366 List!12365) tuple2!12178)

(assert (=> b!1212731 (= res!545345 (= (_1!6936 (lexList!437 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1212732 () Bool)

(declare-fun res!545346 () Bool)

(assert (=> b!1212732 (=> (not res!545346) (not e!778152))))

(declare-fun isEmpty!7330 (List!12366) Bool)

(assert (=> b!1212732 (= res!545346 (not (isEmpty!7330 rules!2728)))))

(declare-fun b!1212733 () Bool)

(declare-fun validRegex!1447 (Regex!3382) Bool)

(assert (=> b!1212733 (= e!778147 (not (validRegex!1447 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))

(assert (=> b!1212734 (= e!778149 (and tp!343808 tp!343810))))

(declare-fun b!1212735 () Bool)

(declare-fun e!778144 () Bool)

(declare-fun tp_is_empty!6285 () Bool)

(declare-fun tp!343804 () Bool)

(assert (=> b!1212735 (= e!778144 (and tp_is_empty!6285 tp!343804))))

(declare-fun b!1212736 () Bool)

(declare-fun e!778151 () Bool)

(declare-fun e!778141 () Bool)

(assert (=> b!1212736 (= e!778151 e!778141)))

(declare-fun res!545348 () Bool)

(assert (=> b!1212736 (=> (not res!545348) (not e!778141))))

(declare-fun lt!414778 () BalanceConc!8006)

(declare-fun lt!414782 () BalanceConc!8006)

(assert (=> b!1212736 (= res!545348 (= lt!414778 lt!414782))))

(declare-fun charsOf!1118 (Token!3886) BalanceConc!8006)

(assert (=> b!1212736 (= lt!414782 (charsOf!1118 (h!17710 tokens!556)))))

(assert (=> b!1212736 (= lt!414778 (charsOf!1118 (_1!6935 lt!414781)))))

(declare-fun b!1212737 () Bool)

(declare-fun res!545349 () Bool)

(assert (=> b!1212737 (=> (not res!545349) (not e!778152))))

(assert (=> b!1212737 (= res!545349 (not (is-Nil!12309 tokens!556)))))

(declare-fun b!1212738 () Bool)

(assert (=> b!1212738 (= e!778146 e!778151)))

(declare-fun res!545353 () Bool)

(assert (=> b!1212738 (=> (not res!545353) (not e!778151))))

(assert (=> b!1212738 (= res!545353 (= (_1!6935 lt!414781) (h!17710 tokens!556)))))

(declare-fun get!4048 (Option!2474) tuple2!12176)

(assert (=> b!1212738 (= lt!414781 (get!4048 lt!414783))))

(declare-fun res!545351 () Bool)

(assert (=> start!108256 (=> (not res!545351) (not e!778152))))

(assert (=> start!108256 (= res!545351 (is-Lexer!1805 thiss!20528))))

(assert (=> start!108256 e!778152))

(assert (=> start!108256 true))

(assert (=> start!108256 e!778156))

(assert (=> start!108256 e!778144))

(assert (=> start!108256 e!778143))

(declare-fun b!1212739 () Bool)

(declare-fun tp!343803 () Bool)

(declare-fun e!778153 () Bool)

(declare-fun inv!21 (TokenValue!2180) Bool)

(assert (=> b!1212739 (= e!778155 (and (inv!21 (value!68790 (h!17710 tokens!556))) e!778153 tp!343803))))

(declare-fun b!1212740 () Bool)

(assert (=> b!1212740 (= e!778141 e!778147)))

(declare-fun res!545350 () Bool)

(assert (=> b!1212740 (=> (not res!545350) (not e!778147))))

(declare-fun lt!414780 () List!12365)

(assert (=> b!1212740 (= res!545350 (= lt!414780 lt!414779))))

(declare-fun list!4546 (BalanceConc!8006) List!12365)

(assert (=> b!1212740 (= lt!414779 (list!4546 lt!414782))))

(assert (=> b!1212740 (= lt!414780 (list!4546 lt!414778))))

(declare-fun b!1212741 () Bool)

(declare-fun res!545352 () Bool)

(assert (=> b!1212741 (=> (not res!545352) (not e!778152))))

(declare-fun rulesInvariant!1681 (LexerInterface!1807 List!12366) Bool)

(assert (=> b!1212741 (= res!545352 (rulesInvariant!1681 thiss!20528 rules!2728))))

(declare-fun e!778142 () Bool)

(assert (=> b!1212742 (= e!778142 (and tp!343807 tp!343809))))

(declare-fun tp!343805 () Bool)

(declare-fun b!1212743 () Bool)

(assert (=> b!1212743 (= e!778153 (and tp!343805 (inv!16492 (tag!2374 (rule!3533 (h!17710 tokens!556)))) (inv!16495 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) e!778142))))

(assert (= (and start!108256 res!545351) b!1212732))

(assert (= (and b!1212732 res!545346) b!1212741))

(assert (= (and b!1212741 res!545352) b!1212731))

(assert (= (and b!1212731 res!545345) b!1212737))

(assert (= (and b!1212737 res!545349) b!1212729))

(assert (= (and b!1212729 res!545347) b!1212738))

(assert (= (and b!1212738 res!545353) b!1212736))

(assert (= (and b!1212736 res!545348) b!1212740))

(assert (= (and b!1212740 res!545350) b!1212730))

(assert (= (and b!1212730 res!545354) b!1212733))

(assert (= b!1212726 b!1212734))

(assert (= b!1212728 b!1212726))

(assert (= (and start!108256 (is-Cons!12308 rules!2728)) b!1212728))

(assert (= (and start!108256 (is-Cons!12307 input!2346)) b!1212735))

(assert (= b!1212743 b!1212742))

(assert (= b!1212739 b!1212743))

(assert (= b!1212727 b!1212739))

(assert (= (and start!108256 (is-Cons!12309 tokens!556)) b!1212727))

(declare-fun m!1387891 () Bool)

(assert (=> b!1212743 m!1387891))

(declare-fun m!1387893 () Bool)

(assert (=> b!1212743 m!1387893))

(declare-fun m!1387895 () Bool)

(assert (=> b!1212741 m!1387895))

(declare-fun m!1387897 () Bool)

(assert (=> b!1212731 m!1387897))

(declare-fun m!1387899 () Bool)

(assert (=> b!1212732 m!1387899))

(declare-fun m!1387901 () Bool)

(assert (=> b!1212726 m!1387901))

(declare-fun m!1387903 () Bool)

(assert (=> b!1212726 m!1387903))

(declare-fun m!1387905 () Bool)

(assert (=> b!1212740 m!1387905))

(declare-fun m!1387907 () Bool)

(assert (=> b!1212740 m!1387907))

(declare-fun m!1387909 () Bool)

(assert (=> b!1212738 m!1387909))

(declare-fun m!1387911 () Bool)

(assert (=> b!1212733 m!1387911))

(declare-fun m!1387913 () Bool)

(assert (=> b!1212730 m!1387913))

(declare-fun m!1387915 () Bool)

(assert (=> b!1212739 m!1387915))

(declare-fun m!1387917 () Bool)

(assert (=> b!1212727 m!1387917))

(declare-fun m!1387919 () Bool)

(assert (=> b!1212729 m!1387919))

(declare-fun m!1387921 () Bool)

(assert (=> b!1212729 m!1387921))

(declare-fun m!1387923 () Bool)

(assert (=> b!1212736 m!1387923))

(declare-fun m!1387925 () Bool)

(assert (=> b!1212736 m!1387925))

(push 1)

(assert (not b_next!29655))

(assert b_and!82177)

(assert (not b!1212732))

(assert (not b!1212735))

(assert tp_is_empty!6285)

(assert (not b_next!29649))

(assert b_and!82179)

(assert (not b_next!29653))

(assert (not b!1212729))

(assert (not b!1212733))

(assert (not b_next!29651))

(assert (not b!1212726))

(assert b_and!82183)

(assert (not b!1212730))

(assert (not b!1212739))

(assert b_and!82181)

(assert (not b!1212731))

(assert (not b!1212741))

(assert (not b!1212740))

(assert (not b!1212738))

(assert (not b!1212743))

(assert (not b!1212736))

(assert (not b!1212728))

(assert (not b!1212727))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29655))

(assert b_and!82183)

(assert b_and!82181)

(assert b_and!82177)

(assert (not b_next!29649))

(assert b_and!82179)

(assert (not b_next!29653))

(assert (not b_next!29651))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!346755 () Bool)

(declare-fun lt!414804 () BalanceConc!8006)

(assert (=> d!346755 (= (list!4546 lt!414804) (originalCharacters!2666 (h!17710 tokens!556)))))

(declare-fun dynLambda!5394 (Int TokenValue!2180) BalanceConc!8006)

(assert (=> d!346755 (= lt!414804 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))

(assert (=> d!346755 (= (charsOf!1118 (h!17710 tokens!556)) lt!414804)))

(declare-fun b_lambda!35775 () Bool)

(assert (=> (not b_lambda!35775) (not d!346755)))

(declare-fun t!112821 () Bool)

(declare-fun tb!66537 () Bool)

(assert (=> (and b!1212742 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112821) tb!66537))

(declare-fun b!1212802 () Bool)

(declare-fun e!778207 () Bool)

(declare-fun tp!343844 () Bool)

(declare-fun inv!16499 (Conc!4037) Bool)

(assert (=> b!1212802 (= e!778207 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))) tp!343844))))

(declare-fun result!80480 () Bool)

(declare-fun inv!16500 (BalanceConc!8006) Bool)

(assert (=> tb!66537 (= result!80480 (and (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))) e!778207))))

(assert (= tb!66537 b!1212802))

(declare-fun m!1387963 () Bool)

(assert (=> b!1212802 m!1387963))

(declare-fun m!1387965 () Bool)

(assert (=> tb!66537 m!1387965))

(assert (=> d!346755 t!112821))

(declare-fun b_and!82193 () Bool)

(assert (= b_and!82179 (and (=> t!112821 result!80480) b_and!82193)))

(declare-fun tb!66539 () Bool)

(declare-fun t!112823 () Bool)

(assert (=> (and b!1212734 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112823) tb!66539))

(declare-fun result!80484 () Bool)

(assert (= result!80484 result!80480))

(assert (=> d!346755 t!112823))

(declare-fun b_and!82195 () Bool)

(assert (= b_and!82183 (and (=> t!112823 result!80484) b_and!82195)))

(declare-fun m!1387967 () Bool)

(assert (=> d!346755 m!1387967))

(declare-fun m!1387969 () Bool)

(assert (=> d!346755 m!1387969))

(assert (=> b!1212736 d!346755))

(declare-fun d!346757 () Bool)

(declare-fun lt!414805 () BalanceConc!8006)

(assert (=> d!346757 (= (list!4546 lt!414805) (originalCharacters!2666 (_1!6935 lt!414781)))))

(assert (=> d!346757 (= lt!414805 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))))

(assert (=> d!346757 (= (charsOf!1118 (_1!6935 lt!414781)) lt!414805)))

(declare-fun b_lambda!35777 () Bool)

(assert (=> (not b_lambda!35777) (not d!346757)))

(declare-fun t!112825 () Bool)

(declare-fun tb!66541 () Bool)

(assert (=> (and b!1212742 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112825) tb!66541))

(declare-fun b!1212803 () Bool)

(declare-fun e!778208 () Bool)

(declare-fun tp!343845 () Bool)

(assert (=> b!1212803 (= e!778208 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))) tp!343845))))

(declare-fun result!80486 () Bool)

(assert (=> tb!66541 (= result!80486 (and (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))) e!778208))))

(assert (= tb!66541 b!1212803))

(declare-fun m!1387971 () Bool)

(assert (=> b!1212803 m!1387971))

(declare-fun m!1387973 () Bool)

(assert (=> tb!66541 m!1387973))

(assert (=> d!346757 t!112825))

(declare-fun b_and!82197 () Bool)

(assert (= b_and!82193 (and (=> t!112825 result!80486) b_and!82197)))

(declare-fun t!112827 () Bool)

(declare-fun tb!66543 () Bool)

(assert (=> (and b!1212734 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112827) tb!66543))

(declare-fun result!80488 () Bool)

(assert (= result!80488 result!80486))

(assert (=> d!346757 t!112827))

(declare-fun b_and!82199 () Bool)

(assert (= b_and!82195 (and (=> t!112827 result!80488) b_and!82199)))

(declare-fun m!1387975 () Bool)

(assert (=> d!346757 m!1387975))

(declare-fun m!1387977 () Bool)

(assert (=> d!346757 m!1387977))

(assert (=> b!1212736 d!346757))

(declare-fun d!346759 () Bool)

(assert (=> d!346759 (= (inv!16492 (tag!2374 (h!17709 rules!2728))) (= (mod (str.len (value!68789 (tag!2374 (h!17709 rules!2728)))) 2) 0))))

(assert (=> b!1212726 d!346759))

(declare-fun d!346761 () Bool)

(declare-fun res!545391 () Bool)

(declare-fun e!778211 () Bool)

(assert (=> d!346761 (=> (not res!545391) (not e!778211))))

(declare-fun semiInverseModEq!769 (Int Int) Bool)

(assert (=> d!346761 (= res!545391 (semiInverseModEq!769 (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (h!17709 rules!2728)))))))

(assert (=> d!346761 (= (inv!16495 (transformation!2112 (h!17709 rules!2728))) e!778211)))

(declare-fun b!1212806 () Bool)

(declare-fun equivClasses!736 (Int Int) Bool)

(assert (=> b!1212806 (= e!778211 (equivClasses!736 (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (h!17709 rules!2728)))))))

(assert (= (and d!346761 res!545391) b!1212806))

(declare-fun m!1387979 () Bool)

(assert (=> d!346761 m!1387979))

(declare-fun m!1387981 () Bool)

(assert (=> b!1212806 m!1387981))

(assert (=> b!1212726 d!346761))

(declare-fun d!346763 () Bool)

(declare-fun res!545396 () Bool)

(declare-fun e!778214 () Bool)

(assert (=> d!346763 (=> (not res!545396) (not e!778214))))

(declare-fun isEmpty!7332 (List!12365) Bool)

(assert (=> d!346763 (= res!545396 (not (isEmpty!7332 (originalCharacters!2666 (h!17710 tokens!556)))))))

(assert (=> d!346763 (= (inv!16496 (h!17710 tokens!556)) e!778214)))

(declare-fun b!1212811 () Bool)

(declare-fun res!545397 () Bool)

(assert (=> b!1212811 (=> (not res!545397) (not e!778214))))

(assert (=> b!1212811 (= res!545397 (= (originalCharacters!2666 (h!17710 tokens!556)) (list!4546 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(declare-fun b!1212812 () Bool)

(declare-fun size!9777 (List!12365) Int)

(assert (=> b!1212812 (= e!778214 (= (size!9775 (h!17710 tokens!556)) (size!9777 (originalCharacters!2666 (h!17710 tokens!556)))))))

(assert (= (and d!346763 res!545396) b!1212811))

(assert (= (and b!1212811 res!545397) b!1212812))

(declare-fun b_lambda!35779 () Bool)

(assert (=> (not b_lambda!35779) (not b!1212811)))

(assert (=> b!1212811 t!112821))

(declare-fun b_and!82201 () Bool)

(assert (= b_and!82197 (and (=> t!112821 result!80480) b_and!82201)))

(assert (=> b!1212811 t!112823))

(declare-fun b_and!82203 () Bool)

(assert (= b_and!82199 (and (=> t!112823 result!80484) b_and!82203)))

(declare-fun m!1387983 () Bool)

(assert (=> d!346763 m!1387983))

(assert (=> b!1212811 m!1387969))

(assert (=> b!1212811 m!1387969))

(declare-fun m!1387985 () Bool)

(assert (=> b!1212811 m!1387985))

(declare-fun m!1387987 () Bool)

(assert (=> b!1212812 m!1387987))

(assert (=> b!1212727 d!346763))

(declare-fun d!346767 () Bool)

(assert (=> d!346767 (= (get!4048 lt!414783) (v!20600 lt!414783))))

(assert (=> b!1212738 d!346767))

(declare-fun d!346769 () Bool)

(declare-fun isEmpty!7333 (Option!2474) Bool)

(assert (=> d!346769 (= (isDefined!2112 lt!414783) (not (isEmpty!7333 lt!414783)))))

(declare-fun bs!288691 () Bool)

(assert (= bs!288691 d!346769))

(declare-fun m!1387989 () Bool)

(assert (=> bs!288691 m!1387989))

(assert (=> b!1212729 d!346769))

(declare-fun b!1212831 () Bool)

(declare-fun e!778222 () Option!2474)

(declare-fun lt!414816 () Option!2474)

(declare-fun lt!414817 () Option!2474)

(assert (=> b!1212831 (= e!778222 (ite (and (is-None!2473 lt!414816) (is-None!2473 lt!414817)) None!2473 (ite (is-None!2473 lt!414817) lt!414816 (ite (is-None!2473 lt!414816) lt!414817 (ite (>= (size!9775 (_1!6935 (v!20600 lt!414816))) (size!9775 (_1!6935 (v!20600 lt!414817)))) lt!414816 lt!414817)))))))

(declare-fun call!84494 () Option!2474)

(assert (=> b!1212831 (= lt!414816 call!84494)))

(assert (=> b!1212831 (= lt!414817 (maxPrefix!929 thiss!20528 (t!112814 rules!2728) input!2346))))

(declare-fun b!1212832 () Bool)

(assert (=> b!1212832 (= e!778222 call!84494)))

(declare-fun b!1212833 () Bool)

(declare-fun res!545416 () Bool)

(declare-fun e!778223 () Bool)

(assert (=> b!1212833 (=> (not res!545416) (not e!778223))))

(declare-fun lt!414820 () Option!2474)

(declare-fun matchR!1504 (Regex!3382 List!12365) Bool)

(assert (=> b!1212833 (= res!545416 (matchR!1504 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))) (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun b!1212834 () Bool)

(declare-fun e!778221 () Bool)

(assert (=> b!1212834 (= e!778221 e!778223)))

(declare-fun res!545414 () Bool)

(assert (=> b!1212834 (=> (not res!545414) (not e!778223))))

(assert (=> b!1212834 (= res!545414 (isDefined!2112 lt!414820))))

(declare-fun b!1212835 () Bool)

(declare-fun res!545412 () Bool)

(assert (=> b!1212835 (=> (not res!545412) (not e!778223))))

(assert (=> b!1212835 (= res!545412 (= (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))) (originalCharacters!2666 (_1!6935 (get!4048 lt!414820)))))))

(declare-fun bm!84489 () Bool)

(declare-fun maxPrefixOneRule!543 (LexerInterface!1807 Rule!4024 List!12365) Option!2474)

(assert (=> bm!84489 (= call!84494 (maxPrefixOneRule!543 thiss!20528 (h!17709 rules!2728) input!2346))))

(declare-fun d!346771 () Bool)

(assert (=> d!346771 e!778221))

(declare-fun res!545418 () Bool)

(assert (=> d!346771 (=> res!545418 e!778221)))

(assert (=> d!346771 (= res!545418 (isEmpty!7333 lt!414820))))

(assert (=> d!346771 (= lt!414820 e!778222)))

(declare-fun c!203036 () Bool)

(assert (=> d!346771 (= c!203036 (and (is-Cons!12308 rules!2728) (is-Nil!12308 (t!112814 rules!2728))))))

(declare-datatypes ((Unit!18630 0))(
  ( (Unit!18631) )
))
(declare-fun lt!414818 () Unit!18630)

(declare-fun lt!414819 () Unit!18630)

(assert (=> d!346771 (= lt!414818 lt!414819)))

(declare-fun isPrefix!1024 (List!12365 List!12365) Bool)

(assert (=> d!346771 (isPrefix!1024 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!717 (List!12365 List!12365) Unit!18630)

(assert (=> d!346771 (= lt!414819 (lemmaIsPrefixRefl!717 input!2346 input!2346))))

(declare-fun rulesValidInductive!660 (LexerInterface!1807 List!12366) Bool)

(assert (=> d!346771 (rulesValidInductive!660 thiss!20528 rules!2728)))

(assert (=> d!346771 (= (maxPrefix!929 thiss!20528 rules!2728 input!2346) lt!414820)))

(declare-fun b!1212836 () Bool)

(declare-fun res!545413 () Bool)

(assert (=> b!1212836 (=> (not res!545413) (not e!778223))))

(assert (=> b!1212836 (= res!545413 (= (++!3150 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))) (_2!6935 (get!4048 lt!414820))) input!2346))))

(declare-fun b!1212837 () Bool)

(declare-fun res!545415 () Bool)

(assert (=> b!1212837 (=> (not res!545415) (not e!778223))))

(assert (=> b!1212837 (= res!545415 (< (size!9777 (_2!6935 (get!4048 lt!414820))) (size!9777 input!2346)))))

(declare-fun b!1212838 () Bool)

(declare-fun res!545417 () Bool)

(assert (=> b!1212838 (=> (not res!545417) (not e!778223))))

(declare-fun apply!2642 (TokenValueInjection!4056 BalanceConc!8006) TokenValue!2180)

(declare-fun seqFromList!1543 (List!12365) BalanceConc!8006)

(assert (=> b!1212838 (= res!545417 (= (value!68790 (_1!6935 (get!4048 lt!414820))) (apply!2642 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun b!1212839 () Bool)

(declare-fun contains!2069 (List!12366 Rule!4024) Bool)

(assert (=> b!1212839 (= e!778223 (contains!2069 rules!2728 (rule!3533 (_1!6935 (get!4048 lt!414820)))))))

(assert (= (and d!346771 c!203036) b!1212832))

(assert (= (and d!346771 (not c!203036)) b!1212831))

(assert (= (or b!1212832 b!1212831) bm!84489))

(assert (= (and d!346771 (not res!545418)) b!1212834))

(assert (= (and b!1212834 res!545414) b!1212835))

(assert (= (and b!1212835 res!545412) b!1212837))

(assert (= (and b!1212837 res!545415) b!1212836))

(assert (= (and b!1212836 res!545413) b!1212838))

(assert (= (and b!1212838 res!545417) b!1212833))

(assert (= (and b!1212833 res!545416) b!1212839))

(declare-fun m!1387991 () Bool)

(assert (=> b!1212834 m!1387991))

(declare-fun m!1387993 () Bool)

(assert (=> b!1212836 m!1387993))

(declare-fun m!1387995 () Bool)

(assert (=> b!1212836 m!1387995))

(assert (=> b!1212836 m!1387995))

(declare-fun m!1387997 () Bool)

(assert (=> b!1212836 m!1387997))

(assert (=> b!1212836 m!1387997))

(declare-fun m!1387999 () Bool)

(assert (=> b!1212836 m!1387999))

(assert (=> b!1212839 m!1387993))

(declare-fun m!1388001 () Bool)

(assert (=> b!1212839 m!1388001))

(declare-fun m!1388003 () Bool)

(assert (=> b!1212831 m!1388003))

(assert (=> b!1212835 m!1387993))

(assert (=> b!1212835 m!1387995))

(assert (=> b!1212835 m!1387995))

(assert (=> b!1212835 m!1387997))

(assert (=> b!1212833 m!1387993))

(assert (=> b!1212833 m!1387995))

(assert (=> b!1212833 m!1387995))

(assert (=> b!1212833 m!1387997))

(assert (=> b!1212833 m!1387997))

(declare-fun m!1388005 () Bool)

(assert (=> b!1212833 m!1388005))

(declare-fun m!1388007 () Bool)

(assert (=> d!346771 m!1388007))

(declare-fun m!1388009 () Bool)

(assert (=> d!346771 m!1388009))

(declare-fun m!1388011 () Bool)

(assert (=> d!346771 m!1388011))

(declare-fun m!1388013 () Bool)

(assert (=> d!346771 m!1388013))

(assert (=> b!1212838 m!1387993))

(declare-fun m!1388015 () Bool)

(assert (=> b!1212838 m!1388015))

(assert (=> b!1212838 m!1388015))

(declare-fun m!1388017 () Bool)

(assert (=> b!1212838 m!1388017))

(assert (=> b!1212837 m!1387993))

(declare-fun m!1388019 () Bool)

(assert (=> b!1212837 m!1388019))

(declare-fun m!1388021 () Bool)

(assert (=> b!1212837 m!1388021))

(declare-fun m!1388023 () Bool)

(assert (=> bm!84489 m!1388023))

(assert (=> b!1212729 d!346771))

(declare-fun d!346773 () Bool)

(declare-fun list!4548 (Conc!4037) List!12365)

(assert (=> d!346773 (= (list!4546 lt!414782) (list!4548 (c!203030 lt!414782)))))

(declare-fun bs!288692 () Bool)

(assert (= bs!288692 d!346773))

(declare-fun m!1388025 () Bool)

(assert (=> bs!288692 m!1388025))

(assert (=> b!1212740 d!346773))

(declare-fun d!346775 () Bool)

(assert (=> d!346775 (= (list!4546 lt!414778) (list!4548 (c!203030 lt!414778)))))

(declare-fun bs!288693 () Bool)

(assert (= bs!288693 d!346775))

(declare-fun m!1388027 () Bool)

(assert (=> bs!288693 m!1388027))

(assert (=> b!1212740 d!346775))

(declare-fun b!1212860 () Bool)

(declare-fun res!545423 () Bool)

(declare-fun e!778236 () Bool)

(assert (=> b!1212860 (=> res!545423 e!778236)))

(assert (=> b!1212860 (= res!545423 (not (is-IntegerValue!6542 (value!68790 (h!17710 tokens!556)))))))

(declare-fun e!778237 () Bool)

(assert (=> b!1212860 (= e!778237 e!778236)))

(declare-fun b!1212861 () Bool)

(declare-fun inv!15 (TokenValue!2180) Bool)

(assert (=> b!1212861 (= e!778236 (inv!15 (value!68790 (h!17710 tokens!556))))))

(declare-fun b!1212862 () Bool)

(declare-fun e!778238 () Bool)

(declare-fun inv!16 (TokenValue!2180) Bool)

(assert (=> b!1212862 (= e!778238 (inv!16 (value!68790 (h!17710 tokens!556))))))

(declare-fun b!1212863 () Bool)

(declare-fun inv!17 (TokenValue!2180) Bool)

(assert (=> b!1212863 (= e!778237 (inv!17 (value!68790 (h!17710 tokens!556))))))

(declare-fun b!1212864 () Bool)

(assert (=> b!1212864 (= e!778238 e!778237)))

(declare-fun c!203046 () Bool)

(assert (=> b!1212864 (= c!203046 (is-IntegerValue!6541 (value!68790 (h!17710 tokens!556))))))

(declare-fun d!346777 () Bool)

(declare-fun c!203045 () Bool)

(assert (=> d!346777 (= c!203045 (is-IntegerValue!6540 (value!68790 (h!17710 tokens!556))))))

(assert (=> d!346777 (= (inv!21 (value!68790 (h!17710 tokens!556))) e!778238)))

(assert (= (and d!346777 c!203045) b!1212862))

(assert (= (and d!346777 (not c!203045)) b!1212864))

(assert (= (and b!1212864 c!203046) b!1212863))

(assert (= (and b!1212864 (not c!203046)) b!1212860))

(assert (= (and b!1212860 (not res!545423)) b!1212861))

(declare-fun m!1388029 () Bool)

(assert (=> b!1212861 m!1388029))

(declare-fun m!1388031 () Bool)

(assert (=> b!1212862 m!1388031))

(declare-fun m!1388033 () Bool)

(assert (=> b!1212863 m!1388033))

(assert (=> b!1212739 d!346777))

(declare-fun d!346779 () Bool)

(declare-fun res!545426 () Bool)

(declare-fun e!778241 () Bool)

(assert (=> d!346779 (=> (not res!545426) (not e!778241))))

(declare-fun rulesValid!757 (LexerInterface!1807 List!12366) Bool)

(assert (=> d!346779 (= res!545426 (rulesValid!757 thiss!20528 rules!2728))))

(assert (=> d!346779 (= (rulesInvariant!1681 thiss!20528 rules!2728) e!778241)))

(declare-fun b!1212867 () Bool)

(declare-datatypes ((List!12372 0))(
  ( (Nil!12314) (Cons!12314 (h!17715 String!15034) (t!112836 List!12372)) )
))
(declare-fun noDuplicateTag!757 (LexerInterface!1807 List!12366 List!12372) Bool)

(assert (=> b!1212867 (= e!778241 (noDuplicateTag!757 thiss!20528 rules!2728 Nil!12314))))

(assert (= (and d!346779 res!545426) b!1212867))

(declare-fun m!1388035 () Bool)

(assert (=> d!346779 m!1388035))

(declare-fun m!1388037 () Bool)

(assert (=> b!1212867 m!1388037))

(assert (=> b!1212741 d!346779))

(declare-fun e!778249 () Bool)

(declare-fun b!1212884 () Bool)

(declare-fun lt!414832 () List!12365)

(assert (=> b!1212884 (= e!778249 (or (not (= (_2!6935 lt!414781) Nil!12307)) (= lt!414832 lt!414779)))))

(declare-fun b!1212883 () Bool)

(declare-fun res!545433 () Bool)

(assert (=> b!1212883 (=> (not res!545433) (not e!778249))))

(assert (=> b!1212883 (= res!545433 (= (size!9777 lt!414832) (+ (size!9777 lt!414779) (size!9777 (_2!6935 lt!414781)))))))

(declare-fun d!346781 () Bool)

(assert (=> d!346781 e!778249))

(declare-fun res!545432 () Bool)

(assert (=> d!346781 (=> (not res!545432) (not e!778249))))

(declare-fun content!1757 (List!12365) (Set C!7082))

(assert (=> d!346781 (= res!545432 (= (content!1757 lt!414832) (set.union (content!1757 lt!414779) (content!1757 (_2!6935 lt!414781)))))))

(declare-fun e!778250 () List!12365)

(assert (=> d!346781 (= lt!414832 e!778250)))

(declare-fun c!203051 () Bool)

(assert (=> d!346781 (= c!203051 (is-Nil!12307 lt!414779))))

(assert (=> d!346781 (= (++!3150 lt!414779 (_2!6935 lt!414781)) lt!414832)))

(declare-fun b!1212881 () Bool)

(assert (=> b!1212881 (= e!778250 (_2!6935 lt!414781))))

(declare-fun b!1212882 () Bool)

(assert (=> b!1212882 (= e!778250 (Cons!12307 (h!17708 lt!414779) (++!3150 (t!112813 lt!414779) (_2!6935 lt!414781))))))

(assert (= (and d!346781 c!203051) b!1212881))

(assert (= (and d!346781 (not c!203051)) b!1212882))

(assert (= (and d!346781 res!545432) b!1212883))

(assert (= (and b!1212883 res!545433) b!1212884))

(declare-fun m!1388049 () Bool)

(assert (=> b!1212883 m!1388049))

(declare-fun m!1388051 () Bool)

(assert (=> b!1212883 m!1388051))

(declare-fun m!1388053 () Bool)

(assert (=> b!1212883 m!1388053))

(declare-fun m!1388055 () Bool)

(assert (=> d!346781 m!1388055))

(declare-fun m!1388057 () Bool)

(assert (=> d!346781 m!1388057))

(declare-fun m!1388059 () Bool)

(assert (=> d!346781 m!1388059))

(declare-fun m!1388061 () Bool)

(assert (=> b!1212882 m!1388061))

(assert (=> b!1212730 d!346781))

(declare-fun d!346785 () Bool)

(assert (=> d!346785 (= (isEmpty!7330 rules!2728) (is-Nil!12308 rules!2728))))

(assert (=> b!1212732 d!346785))

(declare-fun b!1212924 () Bool)

(declare-fun e!778280 () Bool)

(declare-fun lt!414841 () tuple2!12178)

(declare-fun isEmpty!7334 (List!12367) Bool)

(assert (=> b!1212924 (= e!778280 (not (isEmpty!7334 (_1!6936 lt!414841))))))

(declare-fun b!1212925 () Bool)

(declare-fun e!778279 () tuple2!12178)

(declare-fun lt!414839 () Option!2474)

(declare-fun lt!414840 () tuple2!12178)

(assert (=> b!1212925 (= e!778279 (tuple2!12179 (Cons!12309 (_1!6935 (v!20600 lt!414839)) (_1!6936 lt!414840)) (_2!6936 lt!414840)))))

(assert (=> b!1212925 (= lt!414840 (lexList!437 thiss!20528 rules!2728 (_2!6935 (v!20600 lt!414839))))))

(declare-fun b!1212926 () Bool)

(declare-fun e!778278 () Bool)

(assert (=> b!1212926 (= e!778278 (= (_2!6936 lt!414841) input!2346))))

(declare-fun d!346787 () Bool)

(assert (=> d!346787 e!778278))

(declare-fun c!203063 () Bool)

(declare-fun size!9778 (List!12367) Int)

(assert (=> d!346787 (= c!203063 (> (size!9778 (_1!6936 lt!414841)) 0))))

(assert (=> d!346787 (= lt!414841 e!778279)))

(declare-fun c!203062 () Bool)

(assert (=> d!346787 (= c!203062 (is-Some!2473 lt!414839))))

(assert (=> d!346787 (= lt!414839 (maxPrefix!929 thiss!20528 rules!2728 input!2346))))

(assert (=> d!346787 (= (lexList!437 thiss!20528 rules!2728 input!2346) lt!414841)))

(declare-fun b!1212927 () Bool)

(assert (=> b!1212927 (= e!778279 (tuple2!12179 Nil!12309 input!2346))))

(declare-fun b!1212928 () Bool)

(assert (=> b!1212928 (= e!778278 e!778280)))

(declare-fun res!545451 () Bool)

(assert (=> b!1212928 (= res!545451 (< (size!9777 (_2!6936 lt!414841)) (size!9777 input!2346)))))

(assert (=> b!1212928 (=> (not res!545451) (not e!778280))))

(assert (= (and d!346787 c!203062) b!1212925))

(assert (= (and d!346787 (not c!203062)) b!1212927))

(assert (= (and d!346787 c!203063) b!1212928))

(assert (= (and d!346787 (not c!203063)) b!1212926))

(assert (= (and b!1212928 res!545451) b!1212924))

(declare-fun m!1388069 () Bool)

(assert (=> b!1212924 m!1388069))

(declare-fun m!1388071 () Bool)

(assert (=> b!1212925 m!1388071))

(declare-fun m!1388073 () Bool)

(assert (=> d!346787 m!1388073))

(assert (=> d!346787 m!1387921))

(declare-fun m!1388075 () Bool)

(assert (=> b!1212928 m!1388075))

(assert (=> b!1212928 m!1388021))

(assert (=> b!1212731 d!346787))

(declare-fun bm!84505 () Bool)

(declare-fun call!84512 () Bool)

(declare-fun call!84511 () Bool)

(assert (=> bm!84505 (= call!84512 call!84511)))

(declare-fun b!1212960 () Bool)

(declare-fun e!778307 () Bool)

(declare-fun e!778306 () Bool)

(assert (=> b!1212960 (= e!778307 e!778306)))

(declare-fun c!203075 () Bool)

(assert (=> b!1212960 (= c!203075 (is-Union!3382 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))

(declare-fun b!1212961 () Bool)

(declare-fun e!778310 () Bool)

(assert (=> b!1212961 (= e!778310 call!84511)))

(declare-fun bm!84506 () Bool)

(declare-fun c!203074 () Bool)

(assert (=> bm!84506 (= call!84511 (validRegex!1447 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))

(declare-fun b!1212962 () Bool)

(declare-fun res!545469 () Bool)

(declare-fun e!778305 () Bool)

(assert (=> b!1212962 (=> res!545469 e!778305)))

(assert (=> b!1212962 (= res!545469 (not (is-Concat!5563 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))

(assert (=> b!1212962 (= e!778306 e!778305)))

(declare-fun b!1212963 () Bool)

(declare-fun e!778309 () Bool)

(declare-fun call!84510 () Bool)

(assert (=> b!1212963 (= e!778309 call!84510)))

(declare-fun d!346791 () Bool)

(declare-fun res!545465 () Bool)

(declare-fun e!778304 () Bool)

(assert (=> d!346791 (=> res!545465 e!778304)))

(assert (=> d!346791 (= res!545465 (is-ElementMatch!3382 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))

(assert (=> d!346791 (= (validRegex!1447 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) e!778304)))

(declare-fun b!1212964 () Bool)

(assert (=> b!1212964 (= e!778305 e!778309)))

(declare-fun res!545468 () Bool)

(assert (=> b!1212964 (=> (not res!545468) (not e!778309))))

(assert (=> b!1212964 (= res!545468 call!84512)))

(declare-fun bm!84507 () Bool)

(assert (=> bm!84507 (= call!84510 (validRegex!1447 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))

(declare-fun b!1212965 () Bool)

(declare-fun e!778308 () Bool)

(assert (=> b!1212965 (= e!778308 call!84512)))

(declare-fun b!1212966 () Bool)

(assert (=> b!1212966 (= e!778307 e!778310)))

(declare-fun res!545466 () Bool)

(declare-fun nullable!1050 (Regex!3382) Bool)

(assert (=> b!1212966 (= res!545466 (not (nullable!1050 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))

(assert (=> b!1212966 (=> (not res!545466) (not e!778310))))

(declare-fun b!1212967 () Bool)

(declare-fun res!545467 () Bool)

(assert (=> b!1212967 (=> (not res!545467) (not e!778308))))

(assert (=> b!1212967 (= res!545467 call!84510)))

(assert (=> b!1212967 (= e!778306 e!778308)))

(declare-fun b!1212968 () Bool)

(assert (=> b!1212968 (= e!778304 e!778307)))

(assert (=> b!1212968 (= c!203074 (is-Star!3382 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))

(assert (= (and d!346791 (not res!545465)) b!1212968))

(assert (= (and b!1212968 c!203074) b!1212966))

(assert (= (and b!1212968 (not c!203074)) b!1212960))

(assert (= (and b!1212966 res!545466) b!1212961))

(assert (= (and b!1212960 c!203075) b!1212967))

(assert (= (and b!1212960 (not c!203075)) b!1212962))

(assert (= (and b!1212967 res!545467) b!1212965))

(assert (= (and b!1212962 (not res!545469)) b!1212964))

(assert (= (and b!1212964 res!545468) b!1212963))

(assert (= (or b!1212965 b!1212964) bm!84505))

(assert (= (or b!1212967 b!1212963) bm!84507))

(assert (= (or b!1212961 bm!84505) bm!84506))

(declare-fun m!1388085 () Bool)

(assert (=> bm!84506 m!1388085))

(declare-fun m!1388087 () Bool)

(assert (=> bm!84507 m!1388087))

(declare-fun m!1388089 () Bool)

(assert (=> b!1212966 m!1388089))

(assert (=> b!1212733 d!346791))

(declare-fun d!346799 () Bool)

(assert (=> d!346799 (= (inv!16492 (tag!2374 (rule!3533 (h!17710 tokens!556)))) (= (mod (str.len (value!68789 (tag!2374 (rule!3533 (h!17710 tokens!556))))) 2) 0))))

(assert (=> b!1212743 d!346799))

(declare-fun d!346801 () Bool)

(declare-fun res!545470 () Bool)

(declare-fun e!778311 () Bool)

(assert (=> d!346801 (=> (not res!545470) (not e!778311))))

(assert (=> d!346801 (= res!545470 (semiInverseModEq!769 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))))))

(assert (=> d!346801 (= (inv!16495 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) e!778311)))

(declare-fun b!1212969 () Bool)

(assert (=> b!1212969 (= e!778311 (equivClasses!736 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))))))

(assert (= (and d!346801 res!545470) b!1212969))

(declare-fun m!1388091 () Bool)

(assert (=> d!346801 m!1388091))

(declare-fun m!1388093 () Bool)

(assert (=> b!1212969 m!1388093))

(assert (=> b!1212743 d!346801))

(declare-fun b!1212974 () Bool)

(declare-fun e!778314 () Bool)

(declare-fun tp!343848 () Bool)

(assert (=> b!1212974 (= e!778314 (and tp_is_empty!6285 tp!343848))))

(assert (=> b!1212735 (= tp!343804 e!778314)))

(assert (= (and b!1212735 (is-Cons!12307 (t!112813 input!2346))) b!1212974))

(declare-fun b!1212987 () Bool)

(declare-fun e!778317 () Bool)

(declare-fun tp!343863 () Bool)

(assert (=> b!1212987 (= e!778317 tp!343863)))

(declare-fun b!1212986 () Bool)

(declare-fun tp!343861 () Bool)

(declare-fun tp!343862 () Bool)

(assert (=> b!1212986 (= e!778317 (and tp!343861 tp!343862))))

(declare-fun b!1212988 () Bool)

(declare-fun tp!343860 () Bool)

(declare-fun tp!343859 () Bool)

(assert (=> b!1212988 (= e!778317 (and tp!343860 tp!343859))))

(assert (=> b!1212726 (= tp!343811 e!778317)))

(declare-fun b!1212985 () Bool)

(assert (=> b!1212985 (= e!778317 tp_is_empty!6285)))

(assert (= (and b!1212726 (is-ElementMatch!3382 (regex!2112 (h!17709 rules!2728)))) b!1212985))

(assert (= (and b!1212726 (is-Concat!5563 (regex!2112 (h!17709 rules!2728)))) b!1212986))

(assert (= (and b!1212726 (is-Star!3382 (regex!2112 (h!17709 rules!2728)))) b!1212987))

(assert (= (and b!1212726 (is-Union!3382 (regex!2112 (h!17709 rules!2728)))) b!1212988))

(declare-fun b!1212999 () Bool)

(declare-fun b_free!28961 () Bool)

(declare-fun b_next!29665 () Bool)

(assert (=> b!1212999 (= b_free!28961 (not b_next!29665))))

(declare-fun tp!343872 () Bool)

(declare-fun b_and!82205 () Bool)

(assert (=> b!1212999 (= tp!343872 b_and!82205)))

(declare-fun b_free!28963 () Bool)

(declare-fun b_next!29667 () Bool)

(assert (=> b!1212999 (= b_free!28963 (not b_next!29667))))

(declare-fun t!112829 () Bool)

(declare-fun tb!66545 () Bool)

(assert (=> (and b!1212999 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112829) tb!66545))

(declare-fun result!80496 () Bool)

(assert (= result!80496 result!80480))

(assert (=> d!346755 t!112829))

(declare-fun tb!66547 () Bool)

(declare-fun t!112831 () Bool)

(assert (=> (and b!1212999 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112831) tb!66547))

(declare-fun result!80498 () Bool)

(assert (= result!80498 result!80486))

(assert (=> d!346757 t!112831))

(assert (=> b!1212811 t!112829))

(declare-fun tp!343873 () Bool)

(declare-fun b_and!82207 () Bool)

(assert (=> b!1212999 (= tp!343873 (and (=> t!112829 result!80496) (=> t!112831 result!80498) b_and!82207))))

(declare-fun e!778329 () Bool)

(assert (=> b!1212999 (= e!778329 (and tp!343872 tp!343873))))

(declare-fun b!1212998 () Bool)

(declare-fun tp!343875 () Bool)

(declare-fun e!778328 () Bool)

(assert (=> b!1212998 (= e!778328 (and tp!343875 (inv!16492 (tag!2374 (h!17709 (t!112814 rules!2728)))) (inv!16495 (transformation!2112 (h!17709 (t!112814 rules!2728)))) e!778329))))

(declare-fun b!1212997 () Bool)

(declare-fun e!778326 () Bool)

(declare-fun tp!343874 () Bool)

(assert (=> b!1212997 (= e!778326 (and e!778328 tp!343874))))

(assert (=> b!1212728 (= tp!343802 e!778326)))

(assert (= b!1212998 b!1212999))

(assert (= b!1212997 b!1212998))

(assert (= (and b!1212728 (is-Cons!12308 (t!112814 rules!2728))) b!1212997))

(declare-fun m!1388095 () Bool)

(assert (=> b!1212998 m!1388095))

(declare-fun m!1388097 () Bool)

(assert (=> b!1212998 m!1388097))

(declare-fun b!1213002 () Bool)

(declare-fun e!778330 () Bool)

(declare-fun tp!343880 () Bool)

(assert (=> b!1213002 (= e!778330 tp!343880)))

(declare-fun b!1213001 () Bool)

(declare-fun tp!343878 () Bool)

(declare-fun tp!343879 () Bool)

(assert (=> b!1213001 (= e!778330 (and tp!343878 tp!343879))))

(declare-fun b!1213003 () Bool)

(declare-fun tp!343877 () Bool)

(declare-fun tp!343876 () Bool)

(assert (=> b!1213003 (= e!778330 (and tp!343877 tp!343876))))

(assert (=> b!1212743 (= tp!343805 e!778330)))

(declare-fun b!1213000 () Bool)

(assert (=> b!1213000 (= e!778330 tp_is_empty!6285)))

(assert (= (and b!1212743 (is-ElementMatch!3382 (regex!2112 (rule!3533 (h!17710 tokens!556))))) b!1213000))

(assert (= (and b!1212743 (is-Concat!5563 (regex!2112 (rule!3533 (h!17710 tokens!556))))) b!1213001))

(assert (= (and b!1212743 (is-Star!3382 (regex!2112 (rule!3533 (h!17710 tokens!556))))) b!1213002))

(assert (= (and b!1212743 (is-Union!3382 (regex!2112 (rule!3533 (h!17710 tokens!556))))) b!1213003))

(declare-fun b!1213017 () Bool)

(declare-fun b_free!28965 () Bool)

(declare-fun b_next!29669 () Bool)

(assert (=> b!1213017 (= b_free!28965 (not b_next!29669))))

(declare-fun tp!343893 () Bool)

(declare-fun b_and!82209 () Bool)

(assert (=> b!1213017 (= tp!343893 b_and!82209)))

(declare-fun b_free!28967 () Bool)

(declare-fun b_next!29671 () Bool)

(assert (=> b!1213017 (= b_free!28967 (not b_next!29671))))

(declare-fun t!112833 () Bool)

(declare-fun tb!66549 () Bool)

(assert (=> (and b!1213017 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112833) tb!66549))

(declare-fun result!80502 () Bool)

(assert (= result!80502 result!80480))

(assert (=> d!346755 t!112833))

(declare-fun tb!66551 () Bool)

(declare-fun t!112835 () Bool)

(assert (=> (and b!1213017 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112835) tb!66551))

(declare-fun result!80504 () Bool)

(assert (= result!80504 result!80486))

(assert (=> d!346757 t!112835))

(assert (=> b!1212811 t!112833))

(declare-fun tp!343891 () Bool)

(declare-fun b_and!82211 () Bool)

(assert (=> b!1213017 (= tp!343891 (and (=> t!112833 result!80502) (=> t!112835 result!80504) b_and!82211))))

(declare-fun e!778343 () Bool)

(assert (=> b!1212727 (= tp!343806 e!778343)))

(declare-fun e!778344 () Bool)

(assert (=> b!1213017 (= e!778344 (and tp!343893 tp!343891))))

(declare-fun tp!343894 () Bool)

(declare-fun b!1213016 () Bool)

(declare-fun e!778347 () Bool)

(assert (=> b!1213016 (= e!778347 (and tp!343894 (inv!16492 (tag!2374 (rule!3533 (h!17710 (t!112815 tokens!556))))) (inv!16495 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) e!778344))))

(declare-fun b!1213015 () Bool)

(declare-fun tp!343895 () Bool)

(declare-fun e!778345 () Bool)

(assert (=> b!1213015 (= e!778345 (and (inv!21 (value!68790 (h!17710 (t!112815 tokens!556)))) e!778347 tp!343895))))

(declare-fun b!1213014 () Bool)

(declare-fun tp!343892 () Bool)

(assert (=> b!1213014 (= e!778343 (and (inv!16496 (h!17710 (t!112815 tokens!556))) e!778345 tp!343892))))

(assert (= b!1213016 b!1213017))

(assert (= b!1213015 b!1213016))

(assert (= b!1213014 b!1213015))

(assert (= (and b!1212727 (is-Cons!12309 (t!112815 tokens!556))) b!1213014))

(declare-fun m!1388099 () Bool)

(assert (=> b!1213016 m!1388099))

(declare-fun m!1388101 () Bool)

(assert (=> b!1213016 m!1388101))

(declare-fun m!1388103 () Bool)

(assert (=> b!1213015 m!1388103))

(declare-fun m!1388105 () Bool)

(assert (=> b!1213014 m!1388105))

(declare-fun b!1213018 () Bool)

(declare-fun e!778349 () Bool)

(declare-fun tp!343896 () Bool)

(assert (=> b!1213018 (= e!778349 (and tp_is_empty!6285 tp!343896))))

(assert (=> b!1212739 (= tp!343803 e!778349)))

(assert (= (and b!1212739 (is-Cons!12307 (originalCharacters!2666 (h!17710 tokens!556)))) b!1213018))

(declare-fun b_lambda!35781 () Bool)

(assert (= b_lambda!35779 (or (and b!1212742 b_free!28947) (and b!1212734 b_free!28951 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) (and b!1212999 b_free!28963 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) (and b!1213017 b_free!28967 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) b_lambda!35781)))

(declare-fun b_lambda!35783 () Bool)

(assert (= b_lambda!35775 (or (and b!1212742 b_free!28947) (and b!1212734 b_free!28951 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) (and b!1212999 b_free!28963 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) (and b!1213017 b_free!28967 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))))) b_lambda!35783)))

(push 1)

(assert (not b!1212861))

(assert (not b!1212834))

(assert (not b!1212803))

(assert (not bm!84489))

(assert (not d!346769))

(assert (not b_next!29669))

(assert (not b!1212987))

(assert (not b_next!29653))

(assert (not b!1212812))

(assert (not b!1212836))

(assert (not b!1212863))

(assert (not b_next!29655))

(assert b_and!82203)

(assert (not b!1212838))

(assert b_and!82209)

(assert (not b!1213002))

(assert b_and!82205)

(assert (not d!346755))

(assert (not d!346775))

(assert (not d!346801))

(assert (not b!1212883))

(assert (not d!346763))

(assert b_and!82181)

(assert (not b_lambda!35777))

(assert b_and!82177)

(assert (not b!1212867))

(assert b_and!82211)

(assert (not b!1212837))

(assert (not d!346781))

(assert (not b_next!29665))

(assert (not b!1212998))

(assert (not b!1212811))

(assert (not d!346761))

(assert (not bm!84506))

(assert (not b!1212831))

(assert (not d!346773))

(assert (not b!1212997))

(assert (not d!346779))

(assert b_and!82201)

(assert (not d!346787))

(assert (not b!1212966))

(assert (not tb!66541))

(assert (not b!1212988))

(assert (not b_lambda!35781))

(assert (not b!1212924))

(assert (not b!1212862))

(assert (not b!1212925))

(assert (not b!1212839))

(assert (not b_lambda!35783))

(assert (not b!1213018))

(assert tp_is_empty!6285)

(assert (not b!1213001))

(assert (not b!1212882))

(assert (not b!1212974))

(assert (not b!1212986))

(assert (not b_next!29649))

(assert (not b!1212969))

(assert (not b_next!29667))

(assert b_and!82207)

(assert (not b!1212806))

(assert (not b!1213003))

(assert (not b!1213015))

(assert (not b!1213014))

(assert (not b!1212833))

(assert (not bm!84507))

(assert (not b!1212802))

(assert (not b!1212835))

(assert (not b!1212928))

(assert (not d!346757))

(assert (not b_next!29671))

(assert (not b_next!29651))

(assert (not d!346771))

(assert (not tb!66537))

(assert (not b!1213016))

(check-sat)

(pop 1)

(push 1)

(assert b_and!82205)

(assert b_and!82181)

(assert (not b_next!29665))

(assert b_and!82201)

(assert (not b_next!29649))

(assert (not b_next!29669))

(assert (not b_next!29653))

(assert (not b_next!29655))

(assert b_and!82203)

(assert b_and!82209)

(assert b_and!82177)

(assert b_and!82211)

(assert (not b_next!29667))

(assert b_and!82207)

(assert (not b_next!29671))

(assert (not b_next!29651))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!346827 () Bool)

(assert (=> d!346827 true))

(declare-fun order!7515 () Int)

(declare-fun lambda!49083 () Int)

(declare-fun order!7517 () Int)

(declare-fun dynLambda!5396 (Int Int) Int)

(declare-fun dynLambda!5397 (Int Int) Int)

(assert (=> d!346827 (< (dynLambda!5396 order!7515 (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (dynLambda!5397 order!7517 lambda!49083))))

(declare-fun Forall2!361 (Int) Bool)

(assert (=> d!346827 (= (equivClasses!736 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (Forall2!361 lambda!49083))))

(declare-fun bs!288697 () Bool)

(assert (= bs!288697 d!346827))

(declare-fun m!1388203 () Bool)

(assert (=> bs!288697 m!1388203))

(assert (=> b!1212969 d!346827))

(declare-fun d!346829 () Bool)

(declare-fun c!203086 () Bool)

(assert (=> d!346829 (= c!203086 (is-Empty!4037 (c!203030 lt!414778)))))

(declare-fun e!778423 () List!12365)

(assert (=> d!346829 (= (list!4548 (c!203030 lt!414778)) e!778423)))

(declare-fun b!1213139 () Bool)

(declare-fun e!778424 () List!12365)

(assert (=> b!1213139 (= e!778423 e!778424)))

(declare-fun c!203087 () Bool)

(assert (=> b!1213139 (= c!203087 (is-Leaf!6242 (c!203030 lt!414778)))))

(declare-fun b!1213141 () Bool)

(assert (=> b!1213141 (= e!778424 (++!3150 (list!4548 (left!10673 (c!203030 lt!414778))) (list!4548 (right!11003 (c!203030 lt!414778)))))))

(declare-fun b!1213140 () Bool)

(declare-fun list!4550 (IArray!8079) List!12365)

(assert (=> b!1213140 (= e!778424 (list!4550 (xs!6748 (c!203030 lt!414778))))))

(declare-fun b!1213138 () Bool)

(assert (=> b!1213138 (= e!778423 Nil!12307)))

(assert (= (and d!346829 c!203086) b!1213138))

(assert (= (and d!346829 (not c!203086)) b!1213139))

(assert (= (and b!1213139 c!203087) b!1213140))

(assert (= (and b!1213139 (not c!203087)) b!1213141))

(declare-fun m!1388205 () Bool)

(assert (=> b!1213141 m!1388205))

(declare-fun m!1388207 () Bool)

(assert (=> b!1213141 m!1388207))

(assert (=> b!1213141 m!1388205))

(assert (=> b!1213141 m!1388207))

(declare-fun m!1388209 () Bool)

(assert (=> b!1213141 m!1388209))

(declare-fun m!1388211 () Bool)

(assert (=> b!1213140 m!1388211))

(assert (=> d!346775 d!346829))

(declare-fun d!346831 () Bool)

(declare-fun charsToBigInt!0 (List!12364 Int) Int)

(assert (=> d!346831 (= (inv!15 (value!68790 (h!17710 tokens!556))) (= (charsToBigInt!0 (text!15709 (value!68790 (h!17710 tokens!556))) 0) (value!68785 (value!68790 (h!17710 tokens!556)))))))

(declare-fun bs!288698 () Bool)

(assert (= bs!288698 d!346831))

(declare-fun m!1388213 () Bool)

(assert (=> bs!288698 m!1388213))

(assert (=> b!1212861 d!346831))

(declare-fun d!346833 () Bool)

(assert (=> d!346833 true))

(declare-fun order!7521 () Int)

(declare-fun lambda!49086 () Int)

(declare-fun order!7519 () Int)

(declare-fun dynLambda!5398 (Int Int) Int)

(declare-fun dynLambda!5399 (Int Int) Int)

(assert (=> d!346833 (< (dynLambda!5398 order!7519 (toChars!3092 (transformation!2112 (h!17709 rules!2728)))) (dynLambda!5399 order!7521 lambda!49086))))

(assert (=> d!346833 true))

(assert (=> d!346833 (< (dynLambda!5396 order!7515 (toValue!3233 (transformation!2112 (h!17709 rules!2728)))) (dynLambda!5399 order!7521 lambda!49086))))

(declare-fun Forall!451 (Int) Bool)

(assert (=> d!346833 (= (semiInverseModEq!769 (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (h!17709 rules!2728)))) (Forall!451 lambda!49086))))

(declare-fun bs!288699 () Bool)

(assert (= bs!288699 d!346833))

(declare-fun m!1388215 () Bool)

(assert (=> bs!288699 m!1388215))

(assert (=> d!346761 d!346833))

(declare-fun d!346835 () Bool)

(declare-fun charsToInt!0 (List!12364) (_ BitVec 32))

(assert (=> d!346835 (= (inv!16 (value!68790 (h!17710 tokens!556))) (= (charsToInt!0 (text!15707 (value!68790 (h!17710 tokens!556)))) (value!68781 (value!68790 (h!17710 tokens!556)))))))

(declare-fun bs!288700 () Bool)

(assert (= bs!288700 d!346835))

(declare-fun m!1388217 () Bool)

(assert (=> bs!288700 m!1388217))

(assert (=> b!1212862 d!346835))

(declare-fun d!346837 () Bool)

(assert (=> d!346837 (= (isEmpty!7334 (_1!6936 lt!414841)) (is-Nil!12309 (_1!6936 lt!414841)))))

(assert (=> b!1212924 d!346837))

(declare-fun d!346839 () Bool)

(assert (=> d!346839 (= (isEmpty!7332 (originalCharacters!2666 (h!17710 tokens!556))) (is-Nil!12307 (originalCharacters!2666 (h!17710 tokens!556))))))

(assert (=> d!346763 d!346839))

(declare-fun bm!84511 () Bool)

(declare-fun call!84518 () Bool)

(declare-fun call!84517 () Bool)

(assert (=> bm!84511 (= call!84518 call!84517)))

(declare-fun b!1213146 () Bool)

(declare-fun e!778428 () Bool)

(declare-fun e!778427 () Bool)

(assert (=> b!1213146 (= e!778428 e!778427)))

(declare-fun c!203089 () Bool)

(assert (=> b!1213146 (= c!203089 (is-Union!3382 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))

(declare-fun b!1213147 () Bool)

(declare-fun e!778431 () Bool)

(assert (=> b!1213147 (= e!778431 call!84517)))

(declare-fun c!203088 () Bool)

(declare-fun bm!84512 () Bool)

(assert (=> bm!84512 (= call!84517 (validRegex!1447 (ite c!203088 (reg!3711 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))) (ite c!203089 (regTwo!7277 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))) (regOne!7276 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))))

(declare-fun b!1213148 () Bool)

(declare-fun res!545521 () Bool)

(declare-fun e!778426 () Bool)

(assert (=> b!1213148 (=> res!545521 e!778426)))

(assert (=> b!1213148 (= res!545521 (not (is-Concat!5563 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))

(assert (=> b!1213148 (= e!778427 e!778426)))

(declare-fun b!1213149 () Bool)

(declare-fun e!778430 () Bool)

(declare-fun call!84516 () Bool)

(assert (=> b!1213149 (= e!778430 call!84516)))

(declare-fun d!346841 () Bool)

(declare-fun res!545517 () Bool)

(declare-fun e!778425 () Bool)

(assert (=> d!346841 (=> res!545517 e!778425)))

(assert (=> d!346841 (= res!545517 (is-ElementMatch!3382 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))

(assert (=> d!346841 (= (validRegex!1447 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))) e!778425)))

(declare-fun b!1213150 () Bool)

(assert (=> b!1213150 (= e!778426 e!778430)))

(declare-fun res!545520 () Bool)

(assert (=> b!1213150 (=> (not res!545520) (not e!778430))))

(assert (=> b!1213150 (= res!545520 call!84518)))

(declare-fun bm!84513 () Bool)

(assert (=> bm!84513 (= call!84516 (validRegex!1447 (ite c!203089 (regOne!7277 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))) (regTwo!7276 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))))

(declare-fun b!1213151 () Bool)

(declare-fun e!778429 () Bool)

(assert (=> b!1213151 (= e!778429 call!84518)))

(declare-fun b!1213152 () Bool)

(assert (=> b!1213152 (= e!778428 e!778431)))

(declare-fun res!545518 () Bool)

(assert (=> b!1213152 (= res!545518 (not (nullable!1050 (reg!3711 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))))

(assert (=> b!1213152 (=> (not res!545518) (not e!778431))))

(declare-fun b!1213153 () Bool)

(declare-fun res!545519 () Bool)

(assert (=> b!1213153 (=> (not res!545519) (not e!778429))))

(assert (=> b!1213153 (= res!545519 call!84516)))

(assert (=> b!1213153 (= e!778427 e!778429)))

(declare-fun b!1213154 () Bool)

(assert (=> b!1213154 (= e!778425 e!778428)))

(assert (=> b!1213154 (= c!203088 (is-Star!3382 (ite c!203075 (regOne!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regTwo!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))

(assert (= (and d!346841 (not res!545517)) b!1213154))

(assert (= (and b!1213154 c!203088) b!1213152))

(assert (= (and b!1213154 (not c!203088)) b!1213146))

(assert (= (and b!1213152 res!545518) b!1213147))

(assert (= (and b!1213146 c!203089) b!1213153))

(assert (= (and b!1213146 (not c!203089)) b!1213148))

(assert (= (and b!1213153 res!545519) b!1213151))

(assert (= (and b!1213148 (not res!545521)) b!1213150))

(assert (= (and b!1213150 res!545520) b!1213149))

(assert (= (or b!1213151 b!1213150) bm!84511))

(assert (= (or b!1213153 b!1213149) bm!84513))

(assert (= (or b!1213147 bm!84511) bm!84512))

(declare-fun m!1388219 () Bool)

(assert (=> bm!84512 m!1388219))

(declare-fun m!1388221 () Bool)

(assert (=> bm!84513 m!1388221))

(declare-fun m!1388223 () Bool)

(assert (=> b!1213152 m!1388223))

(assert (=> bm!84507 d!346841))

(declare-fun d!346843 () Bool)

(declare-fun charsToBigInt!1 (List!12364) Int)

(assert (=> d!346843 (= (inv!17 (value!68790 (h!17710 tokens!556))) (= (charsToBigInt!1 (text!15708 (value!68790 (h!17710 tokens!556)))) (value!68782 (value!68790 (h!17710 tokens!556)))))))

(declare-fun bs!288701 () Bool)

(assert (= bs!288701 d!346843))

(declare-fun m!1388225 () Bool)

(assert (=> bs!288701 m!1388225))

(assert (=> b!1212863 d!346843))

(declare-fun b!1213155 () Bool)

(declare-fun e!778434 () Bool)

(declare-fun lt!414866 () tuple2!12178)

(assert (=> b!1213155 (= e!778434 (not (isEmpty!7334 (_1!6936 lt!414866))))))

(declare-fun b!1213156 () Bool)

(declare-fun e!778433 () tuple2!12178)

(declare-fun lt!414864 () Option!2474)

(declare-fun lt!414865 () tuple2!12178)

(assert (=> b!1213156 (= e!778433 (tuple2!12179 (Cons!12309 (_1!6935 (v!20600 lt!414864)) (_1!6936 lt!414865)) (_2!6936 lt!414865)))))

(assert (=> b!1213156 (= lt!414865 (lexList!437 thiss!20528 rules!2728 (_2!6935 (v!20600 lt!414864))))))

(declare-fun b!1213157 () Bool)

(declare-fun e!778432 () Bool)

(assert (=> b!1213157 (= e!778432 (= (_2!6936 lt!414866) (_2!6935 (v!20600 lt!414839))))))

(declare-fun d!346845 () Bool)

(assert (=> d!346845 e!778432))

(declare-fun c!203091 () Bool)

(assert (=> d!346845 (= c!203091 (> (size!9778 (_1!6936 lt!414866)) 0))))

(assert (=> d!346845 (= lt!414866 e!778433)))

(declare-fun c!203090 () Bool)

(assert (=> d!346845 (= c!203090 (is-Some!2473 lt!414864))))

(assert (=> d!346845 (= lt!414864 (maxPrefix!929 thiss!20528 rules!2728 (_2!6935 (v!20600 lt!414839))))))

(assert (=> d!346845 (= (lexList!437 thiss!20528 rules!2728 (_2!6935 (v!20600 lt!414839))) lt!414866)))

(declare-fun b!1213158 () Bool)

(assert (=> b!1213158 (= e!778433 (tuple2!12179 Nil!12309 (_2!6935 (v!20600 lt!414839))))))

(declare-fun b!1213159 () Bool)

(assert (=> b!1213159 (= e!778432 e!778434)))

(declare-fun res!545522 () Bool)

(assert (=> b!1213159 (= res!545522 (< (size!9777 (_2!6936 lt!414866)) (size!9777 (_2!6935 (v!20600 lt!414839)))))))

(assert (=> b!1213159 (=> (not res!545522) (not e!778434))))

(assert (= (and d!346845 c!203090) b!1213156))

(assert (= (and d!346845 (not c!203090)) b!1213158))

(assert (= (and d!346845 c!203091) b!1213159))

(assert (= (and d!346845 (not c!203091)) b!1213157))

(assert (= (and b!1213159 res!545522) b!1213155))

(declare-fun m!1388227 () Bool)

(assert (=> b!1213155 m!1388227))

(declare-fun m!1388229 () Bool)

(assert (=> b!1213156 m!1388229))

(declare-fun m!1388231 () Bool)

(assert (=> d!346845 m!1388231))

(declare-fun m!1388233 () Bool)

(assert (=> d!346845 m!1388233))

(declare-fun m!1388235 () Bool)

(assert (=> b!1213159 m!1388235))

(declare-fun m!1388237 () Bool)

(assert (=> b!1213159 m!1388237))

(assert (=> b!1212925 d!346845))

(declare-fun d!346847 () Bool)

(declare-fun c!203094 () Bool)

(assert (=> d!346847 (= c!203094 (is-Node!4037 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(declare-fun e!778439 () Bool)

(assert (=> d!346847 (= (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))) e!778439)))

(declare-fun b!1213166 () Bool)

(declare-fun inv!16503 (Conc!4037) Bool)

(assert (=> b!1213166 (= e!778439 (inv!16503 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(declare-fun b!1213167 () Bool)

(declare-fun e!778440 () Bool)

(assert (=> b!1213167 (= e!778439 e!778440)))

(declare-fun res!545525 () Bool)

(assert (=> b!1213167 (= res!545525 (not (is-Leaf!6242 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))))))

(assert (=> b!1213167 (=> res!545525 e!778440)))

(declare-fun b!1213168 () Bool)

(declare-fun inv!16504 (Conc!4037) Bool)

(assert (=> b!1213168 (= e!778440 (inv!16504 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(assert (= (and d!346847 c!203094) b!1213166))

(assert (= (and d!346847 (not c!203094)) b!1213167))

(assert (= (and b!1213167 (not res!545525)) b!1213168))

(declare-fun m!1388239 () Bool)

(assert (=> b!1213166 m!1388239))

(declare-fun m!1388241 () Bool)

(assert (=> b!1213168 m!1388241))

(assert (=> b!1212802 d!346847))

(declare-fun d!346849 () Bool)

(declare-fun res!545530 () Bool)

(declare-fun e!778445 () Bool)

(assert (=> d!346849 (=> res!545530 e!778445)))

(assert (=> d!346849 (= res!545530 (is-Nil!12308 rules!2728))))

(assert (=> d!346849 (= (noDuplicateTag!757 thiss!20528 rules!2728 Nil!12314) e!778445)))

(declare-fun b!1213173 () Bool)

(declare-fun e!778446 () Bool)

(assert (=> b!1213173 (= e!778445 e!778446)))

(declare-fun res!545531 () Bool)

(assert (=> b!1213173 (=> (not res!545531) (not e!778446))))

(declare-fun contains!2071 (List!12372 String!15034) Bool)

(assert (=> b!1213173 (= res!545531 (not (contains!2071 Nil!12314 (tag!2374 (h!17709 rules!2728)))))))

(declare-fun b!1213174 () Bool)

(assert (=> b!1213174 (= e!778446 (noDuplicateTag!757 thiss!20528 (t!112814 rules!2728) (Cons!12314 (tag!2374 (h!17709 rules!2728)) Nil!12314)))))

(assert (= (and d!346849 (not res!545530)) b!1213173))

(assert (= (and b!1213173 res!545531) b!1213174))

(declare-fun m!1388243 () Bool)

(assert (=> b!1213173 m!1388243))

(declare-fun m!1388245 () Bool)

(assert (=> b!1213174 m!1388245))

(assert (=> b!1212867 d!346849))

(declare-fun e!778447 () Bool)

(declare-fun b!1213178 () Bool)

(declare-fun lt!414867 () List!12365)

(assert (=> b!1213178 (= e!778447 (or (not (= (_2!6935 lt!414781) Nil!12307)) (= lt!414867 (t!112813 lt!414779))))))

(declare-fun b!1213177 () Bool)

(declare-fun res!545533 () Bool)

(assert (=> b!1213177 (=> (not res!545533) (not e!778447))))

(assert (=> b!1213177 (= res!545533 (= (size!9777 lt!414867) (+ (size!9777 (t!112813 lt!414779)) (size!9777 (_2!6935 lt!414781)))))))

(declare-fun d!346851 () Bool)

(assert (=> d!346851 e!778447))

(declare-fun res!545532 () Bool)

(assert (=> d!346851 (=> (not res!545532) (not e!778447))))

(assert (=> d!346851 (= res!545532 (= (content!1757 lt!414867) (set.union (content!1757 (t!112813 lt!414779)) (content!1757 (_2!6935 lt!414781)))))))

(declare-fun e!778448 () List!12365)

(assert (=> d!346851 (= lt!414867 e!778448)))

(declare-fun c!203095 () Bool)

(assert (=> d!346851 (= c!203095 (is-Nil!12307 (t!112813 lt!414779)))))

(assert (=> d!346851 (= (++!3150 (t!112813 lt!414779) (_2!6935 lt!414781)) lt!414867)))

(declare-fun b!1213175 () Bool)

(assert (=> b!1213175 (= e!778448 (_2!6935 lt!414781))))

(declare-fun b!1213176 () Bool)

(assert (=> b!1213176 (= e!778448 (Cons!12307 (h!17708 (t!112813 lt!414779)) (++!3150 (t!112813 (t!112813 lt!414779)) (_2!6935 lt!414781))))))

(assert (= (and d!346851 c!203095) b!1213175))

(assert (= (and d!346851 (not c!203095)) b!1213176))

(assert (= (and d!346851 res!545532) b!1213177))

(assert (= (and b!1213177 res!545533) b!1213178))

(declare-fun m!1388247 () Bool)

(assert (=> b!1213177 m!1388247))

(declare-fun m!1388249 () Bool)

(assert (=> b!1213177 m!1388249))

(assert (=> b!1213177 m!1388053))

(declare-fun m!1388251 () Bool)

(assert (=> d!346851 m!1388251))

(declare-fun m!1388253 () Bool)

(assert (=> d!346851 m!1388253))

(assert (=> d!346851 m!1388059))

(declare-fun m!1388255 () Bool)

(assert (=> b!1213176 m!1388255))

(assert (=> b!1212882 d!346851))

(declare-fun d!346853 () Bool)

(assert (=> d!346853 (= (list!4546 lt!414805) (list!4548 (c!203030 lt!414805)))))

(declare-fun bs!288702 () Bool)

(assert (= bs!288702 d!346853))

(declare-fun m!1388257 () Bool)

(assert (=> bs!288702 m!1388257))

(assert (=> d!346757 d!346853))

(declare-fun b!1213179 () Bool)

(declare-fun e!778450 () Option!2474)

(declare-fun lt!414868 () Option!2474)

(declare-fun lt!414869 () Option!2474)

(assert (=> b!1213179 (= e!778450 (ite (and (is-None!2473 lt!414868) (is-None!2473 lt!414869)) None!2473 (ite (is-None!2473 lt!414869) lt!414868 (ite (is-None!2473 lt!414868) lt!414869 (ite (>= (size!9775 (_1!6935 (v!20600 lt!414868))) (size!9775 (_1!6935 (v!20600 lt!414869)))) lt!414868 lt!414869)))))))

(declare-fun call!84519 () Option!2474)

(assert (=> b!1213179 (= lt!414868 call!84519)))

(assert (=> b!1213179 (= lt!414869 (maxPrefix!929 thiss!20528 (t!112814 (t!112814 rules!2728)) input!2346))))

(declare-fun b!1213180 () Bool)

(assert (=> b!1213180 (= e!778450 call!84519)))

(declare-fun b!1213181 () Bool)

(declare-fun res!545538 () Bool)

(declare-fun e!778451 () Bool)

(assert (=> b!1213181 (=> (not res!545538) (not e!778451))))

(declare-fun lt!414872 () Option!2474)

(assert (=> b!1213181 (= res!545538 (matchR!1504 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414872)))) (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414872))))))))

(declare-fun b!1213182 () Bool)

(declare-fun e!778449 () Bool)

(assert (=> b!1213182 (= e!778449 e!778451)))

(declare-fun res!545536 () Bool)

(assert (=> b!1213182 (=> (not res!545536) (not e!778451))))

(assert (=> b!1213182 (= res!545536 (isDefined!2112 lt!414872))))

(declare-fun b!1213183 () Bool)

(declare-fun res!545534 () Bool)

(assert (=> b!1213183 (=> (not res!545534) (not e!778451))))

(assert (=> b!1213183 (= res!545534 (= (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414872)))) (originalCharacters!2666 (_1!6935 (get!4048 lt!414872)))))))

(declare-fun bm!84514 () Bool)

(assert (=> bm!84514 (= call!84519 (maxPrefixOneRule!543 thiss!20528 (h!17709 (t!112814 rules!2728)) input!2346))))

(declare-fun d!346855 () Bool)

(assert (=> d!346855 e!778449))

(declare-fun res!545540 () Bool)

(assert (=> d!346855 (=> res!545540 e!778449)))

(assert (=> d!346855 (= res!545540 (isEmpty!7333 lt!414872))))

(assert (=> d!346855 (= lt!414872 e!778450)))

(declare-fun c!203096 () Bool)

(assert (=> d!346855 (= c!203096 (and (is-Cons!12308 (t!112814 rules!2728)) (is-Nil!12308 (t!112814 (t!112814 rules!2728)))))))

(declare-fun lt!414870 () Unit!18630)

(declare-fun lt!414871 () Unit!18630)

(assert (=> d!346855 (= lt!414870 lt!414871)))

(assert (=> d!346855 (isPrefix!1024 input!2346 input!2346)))

(assert (=> d!346855 (= lt!414871 (lemmaIsPrefixRefl!717 input!2346 input!2346))))

(assert (=> d!346855 (rulesValidInductive!660 thiss!20528 (t!112814 rules!2728))))

(assert (=> d!346855 (= (maxPrefix!929 thiss!20528 (t!112814 rules!2728) input!2346) lt!414872)))

(declare-fun b!1213184 () Bool)

(declare-fun res!545535 () Bool)

(assert (=> b!1213184 (=> (not res!545535) (not e!778451))))

(assert (=> b!1213184 (= res!545535 (= (++!3150 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414872)))) (_2!6935 (get!4048 lt!414872))) input!2346))))

(declare-fun b!1213185 () Bool)

(declare-fun res!545537 () Bool)

(assert (=> b!1213185 (=> (not res!545537) (not e!778451))))

(assert (=> b!1213185 (= res!545537 (< (size!9777 (_2!6935 (get!4048 lt!414872))) (size!9777 input!2346)))))

(declare-fun b!1213186 () Bool)

(declare-fun res!545539 () Bool)

(assert (=> b!1213186 (=> (not res!545539) (not e!778451))))

(assert (=> b!1213186 (= res!545539 (= (value!68790 (_1!6935 (get!4048 lt!414872))) (apply!2642 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414872)))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414872)))))))))

(declare-fun b!1213187 () Bool)

(assert (=> b!1213187 (= e!778451 (contains!2069 (t!112814 rules!2728) (rule!3533 (_1!6935 (get!4048 lt!414872)))))))

(assert (= (and d!346855 c!203096) b!1213180))

(assert (= (and d!346855 (not c!203096)) b!1213179))

(assert (= (or b!1213180 b!1213179) bm!84514))

(assert (= (and d!346855 (not res!545540)) b!1213182))

(assert (= (and b!1213182 res!545536) b!1213183))

(assert (= (and b!1213183 res!545534) b!1213185))

(assert (= (and b!1213185 res!545537) b!1213184))

(assert (= (and b!1213184 res!545535) b!1213186))

(assert (= (and b!1213186 res!545539) b!1213181))

(assert (= (and b!1213181 res!545538) b!1213187))

(declare-fun m!1388259 () Bool)

(assert (=> b!1213182 m!1388259))

(declare-fun m!1388261 () Bool)

(assert (=> b!1213184 m!1388261))

(declare-fun m!1388263 () Bool)

(assert (=> b!1213184 m!1388263))

(assert (=> b!1213184 m!1388263))

(declare-fun m!1388265 () Bool)

(assert (=> b!1213184 m!1388265))

(assert (=> b!1213184 m!1388265))

(declare-fun m!1388267 () Bool)

(assert (=> b!1213184 m!1388267))

(assert (=> b!1213187 m!1388261))

(declare-fun m!1388269 () Bool)

(assert (=> b!1213187 m!1388269))

(declare-fun m!1388271 () Bool)

(assert (=> b!1213179 m!1388271))

(assert (=> b!1213183 m!1388261))

(assert (=> b!1213183 m!1388263))

(assert (=> b!1213183 m!1388263))

(assert (=> b!1213183 m!1388265))

(assert (=> b!1213181 m!1388261))

(assert (=> b!1213181 m!1388263))

(assert (=> b!1213181 m!1388263))

(assert (=> b!1213181 m!1388265))

(assert (=> b!1213181 m!1388265))

(declare-fun m!1388273 () Bool)

(assert (=> b!1213181 m!1388273))

(declare-fun m!1388275 () Bool)

(assert (=> d!346855 m!1388275))

(assert (=> d!346855 m!1388009))

(assert (=> d!346855 m!1388011))

(declare-fun m!1388277 () Bool)

(assert (=> d!346855 m!1388277))

(assert (=> b!1213186 m!1388261))

(declare-fun m!1388279 () Bool)

(assert (=> b!1213186 m!1388279))

(assert (=> b!1213186 m!1388279))

(declare-fun m!1388281 () Bool)

(assert (=> b!1213186 m!1388281))

(assert (=> b!1213185 m!1388261))

(declare-fun m!1388283 () Bool)

(assert (=> b!1213185 m!1388283))

(assert (=> b!1213185 m!1388021))

(declare-fun m!1388285 () Bool)

(assert (=> bm!84514 m!1388285))

(assert (=> b!1212831 d!346855))

(declare-fun d!346857 () Bool)

(declare-fun lt!414875 () Int)

(assert (=> d!346857 (>= lt!414875 0)))

(declare-fun e!778454 () Int)

(assert (=> d!346857 (= lt!414875 e!778454)))

(declare-fun c!203099 () Bool)

(assert (=> d!346857 (= c!203099 (is-Nil!12307 lt!414832))))

(assert (=> d!346857 (= (size!9777 lt!414832) lt!414875)))

(declare-fun b!1213192 () Bool)

(assert (=> b!1213192 (= e!778454 0)))

(declare-fun b!1213193 () Bool)

(assert (=> b!1213193 (= e!778454 (+ 1 (size!9777 (t!112813 lt!414832))))))

(assert (= (and d!346857 c!203099) b!1213192))

(assert (= (and d!346857 (not c!203099)) b!1213193))

(declare-fun m!1388287 () Bool)

(assert (=> b!1213193 m!1388287))

(assert (=> b!1212883 d!346857))

(declare-fun d!346859 () Bool)

(declare-fun lt!414876 () Int)

(assert (=> d!346859 (>= lt!414876 0)))

(declare-fun e!778455 () Int)

(assert (=> d!346859 (= lt!414876 e!778455)))

(declare-fun c!203100 () Bool)

(assert (=> d!346859 (= c!203100 (is-Nil!12307 lt!414779))))

(assert (=> d!346859 (= (size!9777 lt!414779) lt!414876)))

(declare-fun b!1213194 () Bool)

(assert (=> b!1213194 (= e!778455 0)))

(declare-fun b!1213195 () Bool)

(assert (=> b!1213195 (= e!778455 (+ 1 (size!9777 (t!112813 lt!414779))))))

(assert (= (and d!346859 c!203100) b!1213194))

(assert (= (and d!346859 (not c!203100)) b!1213195))

(assert (=> b!1213195 m!1388249))

(assert (=> b!1212883 d!346859))

(declare-fun d!346861 () Bool)

(declare-fun lt!414877 () Int)

(assert (=> d!346861 (>= lt!414877 0)))

(declare-fun e!778456 () Int)

(assert (=> d!346861 (= lt!414877 e!778456)))

(declare-fun c!203101 () Bool)

(assert (=> d!346861 (= c!203101 (is-Nil!12307 (_2!6935 lt!414781)))))

(assert (=> d!346861 (= (size!9777 (_2!6935 lt!414781)) lt!414877)))

(declare-fun b!1213196 () Bool)

(assert (=> b!1213196 (= e!778456 0)))

(declare-fun b!1213197 () Bool)

(assert (=> b!1213197 (= e!778456 (+ 1 (size!9777 (t!112813 (_2!6935 lt!414781)))))))

(assert (= (and d!346861 c!203101) b!1213196))

(assert (= (and d!346861 (not c!203101)) b!1213197))

(declare-fun m!1388289 () Bool)

(assert (=> b!1213197 m!1388289))

(assert (=> b!1212883 d!346861))

(declare-fun d!346863 () Bool)

(declare-fun nullableFct!234 (Regex!3382) Bool)

(assert (=> d!346863 (= (nullable!1050 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781))))) (nullableFct!234 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))

(declare-fun bs!288703 () Bool)

(assert (= bs!288703 d!346863))

(declare-fun m!1388291 () Bool)

(assert (=> bs!288703 m!1388291))

(assert (=> b!1212966 d!346863))

(declare-fun d!346865 () Bool)

(assert (=> d!346865 (= (list!4546 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))) (list!4548 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(declare-fun bs!288704 () Bool)

(assert (= bs!288704 d!346865))

(declare-fun m!1388293 () Bool)

(assert (=> bs!288704 m!1388293))

(assert (=> b!1212811 d!346865))

(declare-fun d!346867 () Bool)

(declare-fun lt!414878 () Int)

(assert (=> d!346867 (>= lt!414878 0)))

(declare-fun e!778457 () Int)

(assert (=> d!346867 (= lt!414878 e!778457)))

(declare-fun c!203102 () Bool)

(assert (=> d!346867 (= c!203102 (is-Nil!12307 (originalCharacters!2666 (h!17710 tokens!556))))))

(assert (=> d!346867 (= (size!9777 (originalCharacters!2666 (h!17710 tokens!556))) lt!414878)))

(declare-fun b!1213198 () Bool)

(assert (=> b!1213198 (= e!778457 0)))

(declare-fun b!1213199 () Bool)

(assert (=> b!1213199 (= e!778457 (+ 1 (size!9777 (t!112813 (originalCharacters!2666 (h!17710 tokens!556))))))))

(assert (= (and d!346867 c!203102) b!1213198))

(assert (= (and d!346867 (not c!203102)) b!1213199))

(declare-fun m!1388295 () Bool)

(assert (=> b!1213199 m!1388295))

(assert (=> b!1212812 d!346867))

(declare-fun d!346869 () Bool)

(declare-fun lt!414881 () Int)

(assert (=> d!346869 (>= lt!414881 0)))

(declare-fun e!778460 () Int)

(assert (=> d!346869 (= lt!414881 e!778460)))

(declare-fun c!203105 () Bool)

(assert (=> d!346869 (= c!203105 (is-Nil!12309 (_1!6936 lt!414841)))))

(assert (=> d!346869 (= (size!9778 (_1!6936 lt!414841)) lt!414881)))

(declare-fun b!1213204 () Bool)

(assert (=> b!1213204 (= e!778460 0)))

(declare-fun b!1213205 () Bool)

(assert (=> b!1213205 (= e!778460 (+ 1 (size!9778 (t!112815 (_1!6936 lt!414841)))))))

(assert (= (and d!346869 c!203105) b!1213204))

(assert (= (and d!346869 (not c!203105)) b!1213205))

(declare-fun m!1388297 () Bool)

(assert (=> b!1213205 m!1388297))

(assert (=> d!346787 d!346869))

(assert (=> d!346787 d!346771))

(declare-fun d!346871 () Bool)

(assert (=> d!346871 (= (isEmpty!7333 lt!414783) (not (is-Some!2473 lt!414783)))))

(assert (=> d!346769 d!346871))

(declare-fun d!346873 () Bool)

(declare-fun lt!414882 () Int)

(assert (=> d!346873 (>= lt!414882 0)))

(declare-fun e!778461 () Int)

(assert (=> d!346873 (= lt!414882 e!778461)))

(declare-fun c!203106 () Bool)

(assert (=> d!346873 (= c!203106 (is-Nil!12307 (_2!6936 lt!414841)))))

(assert (=> d!346873 (= (size!9777 (_2!6936 lt!414841)) lt!414882)))

(declare-fun b!1213206 () Bool)

(assert (=> b!1213206 (= e!778461 0)))

(declare-fun b!1213207 () Bool)

(assert (=> b!1213207 (= e!778461 (+ 1 (size!9777 (t!112813 (_2!6936 lt!414841)))))))

(assert (= (and d!346873 c!203106) b!1213206))

(assert (= (and d!346873 (not c!203106)) b!1213207))

(declare-fun m!1388299 () Bool)

(assert (=> b!1213207 m!1388299))

(assert (=> b!1212928 d!346873))

(declare-fun d!346875 () Bool)

(declare-fun lt!414883 () Int)

(assert (=> d!346875 (>= lt!414883 0)))

(declare-fun e!778462 () Int)

(assert (=> d!346875 (= lt!414883 e!778462)))

(declare-fun c!203107 () Bool)

(assert (=> d!346875 (= c!203107 (is-Nil!12307 input!2346))))

(assert (=> d!346875 (= (size!9777 input!2346) lt!414883)))

(declare-fun b!1213208 () Bool)

(assert (=> b!1213208 (= e!778462 0)))

(declare-fun b!1213209 () Bool)

(assert (=> b!1213209 (= e!778462 (+ 1 (size!9777 (t!112813 input!2346))))))

(assert (= (and d!346875 c!203107) b!1213208))

(assert (= (and d!346875 (not c!203107)) b!1213209))

(declare-fun m!1388301 () Bool)

(assert (=> b!1213209 m!1388301))

(assert (=> b!1212928 d!346875))

(declare-fun b!1213238 () Bool)

(declare-fun res!545563 () Bool)

(declare-fun e!778477 () Bool)

(assert (=> b!1213238 (=> (not res!545563) (not e!778477))))

(declare-fun call!84522 () Bool)

(assert (=> b!1213238 (= res!545563 (not call!84522))))

(declare-fun b!1213239 () Bool)

(declare-fun res!545561 () Bool)

(declare-fun e!778478 () Bool)

(assert (=> b!1213239 (=> res!545561 e!778478)))

(assert (=> b!1213239 (= res!545561 e!778477)))

(declare-fun res!545560 () Bool)

(assert (=> b!1213239 (=> (not res!545560) (not e!778477))))

(declare-fun lt!414886 () Bool)

(assert (=> b!1213239 (= res!545560 lt!414886)))

(declare-fun b!1213240 () Bool)

(declare-fun res!545564 () Bool)

(assert (=> b!1213240 (=> (not res!545564) (not e!778477))))

(declare-fun tail!1779 (List!12365) List!12365)

(assert (=> b!1213240 (= res!545564 (isEmpty!7332 (tail!1779 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun d!346877 () Bool)

(declare-fun e!778479 () Bool)

(assert (=> d!346877 e!778479))

(declare-fun c!203116 () Bool)

(assert (=> d!346877 (= c!203116 (is-EmptyExpr!3382 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun e!778482 () Bool)

(assert (=> d!346877 (= lt!414886 e!778482)))

(declare-fun c!203115 () Bool)

(assert (=> d!346877 (= c!203115 (isEmpty!7332 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))

(assert (=> d!346877 (validRegex!1447 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))))

(assert (=> d!346877 (= (matchR!1504 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))) (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) lt!414886)))

(declare-fun b!1213241 () Bool)

(declare-fun res!545558 () Bool)

(declare-fun e!778483 () Bool)

(assert (=> b!1213241 (=> res!545558 e!778483)))

(assert (=> b!1213241 (= res!545558 (not (isEmpty!7332 (tail!1779 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))))

(declare-fun b!1213242 () Bool)

(declare-fun derivativeStep!844 (Regex!3382 C!7082) Regex!3382)

(declare-fun head!2147 (List!12365) C!7082)

(assert (=> b!1213242 (= e!778482 (matchR!1504 (derivativeStep!844 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))) (head!2147 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))))) (tail!1779 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun bm!84517 () Bool)

(assert (=> bm!84517 (= call!84522 (isEmpty!7332 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun b!1213243 () Bool)

(declare-fun res!545562 () Bool)

(assert (=> b!1213243 (=> res!545562 e!778478)))

(assert (=> b!1213243 (= res!545562 (not (is-ElementMatch!3382 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun e!778481 () Bool)

(assert (=> b!1213243 (= e!778481 e!778478)))

(declare-fun b!1213244 () Bool)

(assert (=> b!1213244 (= e!778481 (not lt!414886))))

(declare-fun b!1213245 () Bool)

(assert (=> b!1213245 (= e!778477 (= (head!2147 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (c!203029 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun b!1213246 () Bool)

(assert (=> b!1213246 (= e!778483 (not (= (head!2147 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (c!203029 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))))))))

(declare-fun b!1213247 () Bool)

(declare-fun e!778480 () Bool)

(assert (=> b!1213247 (= e!778478 e!778480)))

(declare-fun res!545559 () Bool)

(assert (=> b!1213247 (=> (not res!545559) (not e!778480))))

(assert (=> b!1213247 (= res!545559 (not lt!414886))))

(declare-fun b!1213248 () Bool)

(assert (=> b!1213248 (= e!778479 (= lt!414886 call!84522))))

(declare-fun b!1213249 () Bool)

(assert (=> b!1213249 (= e!778479 e!778481)))

(declare-fun c!203114 () Bool)

(assert (=> b!1213249 (= c!203114 (is-EmptyLang!3382 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun b!1213250 () Bool)

(assert (=> b!1213250 (= e!778482 (nullable!1050 (regex!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun b!1213251 () Bool)

(assert (=> b!1213251 (= e!778480 e!778483)))

(declare-fun res!545557 () Bool)

(assert (=> b!1213251 (=> res!545557 e!778483)))

(assert (=> b!1213251 (= res!545557 call!84522)))

(assert (= (and d!346877 c!203115) b!1213250))

(assert (= (and d!346877 (not c!203115)) b!1213242))

(assert (= (and d!346877 c!203116) b!1213248))

(assert (= (and d!346877 (not c!203116)) b!1213249))

(assert (= (and b!1213249 c!203114) b!1213244))

(assert (= (and b!1213249 (not c!203114)) b!1213243))

(assert (= (and b!1213243 (not res!545562)) b!1213239))

(assert (= (and b!1213239 res!545560) b!1213238))

(assert (= (and b!1213238 res!545563) b!1213240))

(assert (= (and b!1213240 res!545564) b!1213245))

(assert (= (and b!1213239 (not res!545561)) b!1213247))

(assert (= (and b!1213247 res!545559) b!1213251))

(assert (= (and b!1213251 (not res!545557)) b!1213241))

(assert (= (and b!1213241 (not res!545558)) b!1213246))

(assert (= (or b!1213248 b!1213238 b!1213251) bm!84517))

(declare-fun m!1388303 () Bool)

(assert (=> b!1213250 m!1388303))

(assert (=> b!1213240 m!1387997))

(declare-fun m!1388305 () Bool)

(assert (=> b!1213240 m!1388305))

(assert (=> b!1213240 m!1388305))

(declare-fun m!1388307 () Bool)

(assert (=> b!1213240 m!1388307))

(assert (=> b!1213245 m!1387997))

(declare-fun m!1388309 () Bool)

(assert (=> b!1213245 m!1388309))

(assert (=> d!346877 m!1387997))

(declare-fun m!1388311 () Bool)

(assert (=> d!346877 m!1388311))

(declare-fun m!1388313 () Bool)

(assert (=> d!346877 m!1388313))

(assert (=> b!1213242 m!1387997))

(assert (=> b!1213242 m!1388309))

(assert (=> b!1213242 m!1388309))

(declare-fun m!1388315 () Bool)

(assert (=> b!1213242 m!1388315))

(assert (=> b!1213242 m!1387997))

(assert (=> b!1213242 m!1388305))

(assert (=> b!1213242 m!1388315))

(assert (=> b!1213242 m!1388305))

(declare-fun m!1388317 () Bool)

(assert (=> b!1213242 m!1388317))

(assert (=> b!1213246 m!1387997))

(assert (=> b!1213246 m!1388309))

(assert (=> b!1213241 m!1387997))

(assert (=> b!1213241 m!1388305))

(assert (=> b!1213241 m!1388305))

(assert (=> b!1213241 m!1388307))

(assert (=> bm!84517 m!1387997))

(assert (=> bm!84517 m!1388311))

(assert (=> b!1212833 d!346877))

(declare-fun d!346879 () Bool)

(assert (=> d!346879 (= (get!4048 lt!414820) (v!20600 lt!414820))))

(assert (=> b!1212833 d!346879))

(declare-fun d!346881 () Bool)

(assert (=> d!346881 (= (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))) (list!4548 (c!203030 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun bs!288705 () Bool)

(assert (= bs!288705 d!346881))

(declare-fun m!1388319 () Bool)

(assert (=> bs!288705 m!1388319))

(assert (=> b!1212833 d!346881))

(declare-fun d!346883 () Bool)

(declare-fun lt!414887 () BalanceConc!8006)

(assert (=> d!346883 (= (list!4546 lt!414887) (originalCharacters!2666 (_1!6935 (get!4048 lt!414820))))))

(assert (=> d!346883 (= lt!414887 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))) (value!68790 (_1!6935 (get!4048 lt!414820)))))))

(assert (=> d!346883 (= (charsOf!1118 (_1!6935 (get!4048 lt!414820))) lt!414887)))

(declare-fun b_lambda!35795 () Bool)

(assert (=> (not b_lambda!35795) (not d!346883)))

(declare-fun tb!66569 () Bool)

(declare-fun t!112856 () Bool)

(assert (=> (and b!1212742 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112856) tb!66569))

(declare-fun b!1213252 () Bool)

(declare-fun e!778484 () Bool)

(declare-fun tp!343952 () Bool)

(assert (=> b!1213252 (= e!778484 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))) (value!68790 (_1!6935 (get!4048 lt!414820)))))) tp!343952))))

(declare-fun result!80532 () Bool)

(assert (=> tb!66569 (= result!80532 (and (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))) (value!68790 (_1!6935 (get!4048 lt!414820))))) e!778484))))

(assert (= tb!66569 b!1213252))

(declare-fun m!1388321 () Bool)

(assert (=> b!1213252 m!1388321))

(declare-fun m!1388323 () Bool)

(assert (=> tb!66569 m!1388323))

(assert (=> d!346883 t!112856))

(declare-fun b_and!82233 () Bool)

(assert (= b_and!82201 (and (=> t!112856 result!80532) b_and!82233)))

(declare-fun tb!66571 () Bool)

(declare-fun t!112858 () Bool)

(assert (=> (and b!1212734 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112858) tb!66571))

(declare-fun result!80534 () Bool)

(assert (= result!80534 result!80532))

(assert (=> d!346883 t!112858))

(declare-fun b_and!82235 () Bool)

(assert (= b_and!82203 (and (=> t!112858 result!80534) b_and!82235)))

(declare-fun tb!66573 () Bool)

(declare-fun t!112860 () Bool)

(assert (=> (and b!1212999 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112860) tb!66573))

(declare-fun result!80536 () Bool)

(assert (= result!80536 result!80532))

(assert (=> d!346883 t!112860))

(declare-fun b_and!82237 () Bool)

(assert (= b_and!82207 (and (=> t!112860 result!80536) b_and!82237)))

(declare-fun tb!66575 () Bool)

(declare-fun t!112862 () Bool)

(assert (=> (and b!1213017 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112862) tb!66575))

(declare-fun result!80538 () Bool)

(assert (= result!80538 result!80532))

(assert (=> d!346883 t!112862))

(declare-fun b_and!82239 () Bool)

(assert (= b_and!82211 (and (=> t!112862 result!80538) b_and!82239)))

(declare-fun m!1388325 () Bool)

(assert (=> d!346883 m!1388325))

(declare-fun m!1388327 () Bool)

(assert (=> d!346883 m!1388327))

(assert (=> b!1212833 d!346883))

(declare-fun d!346885 () Bool)

(declare-fun isBalanced!1178 (Conc!4037) Bool)

(assert (=> d!346885 (= (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))) (isBalanced!1178 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))))))

(declare-fun bs!288706 () Bool)

(assert (= bs!288706 d!346885))

(declare-fun m!1388329 () Bool)

(assert (=> bs!288706 m!1388329))

(assert (=> tb!66537 d!346885))

(declare-fun d!346887 () Bool)

(declare-fun c!203117 () Bool)

(assert (=> d!346887 (= c!203117 (is-Empty!4037 (c!203030 lt!414782)))))

(declare-fun e!778485 () List!12365)

(assert (=> d!346887 (= (list!4548 (c!203030 lt!414782)) e!778485)))

(declare-fun b!1213254 () Bool)

(declare-fun e!778486 () List!12365)

(assert (=> b!1213254 (= e!778485 e!778486)))

(declare-fun c!203118 () Bool)

(assert (=> b!1213254 (= c!203118 (is-Leaf!6242 (c!203030 lt!414782)))))

(declare-fun b!1213256 () Bool)

(assert (=> b!1213256 (= e!778486 (++!3150 (list!4548 (left!10673 (c!203030 lt!414782))) (list!4548 (right!11003 (c!203030 lt!414782)))))))

(declare-fun b!1213255 () Bool)

(assert (=> b!1213255 (= e!778486 (list!4550 (xs!6748 (c!203030 lt!414782))))))

(declare-fun b!1213253 () Bool)

(assert (=> b!1213253 (= e!778485 Nil!12307)))

(assert (= (and d!346887 c!203117) b!1213253))

(assert (= (and d!346887 (not c!203117)) b!1213254))

(assert (= (and b!1213254 c!203118) b!1213255))

(assert (= (and b!1213254 (not c!203118)) b!1213256))

(declare-fun m!1388331 () Bool)

(assert (=> b!1213256 m!1388331))

(declare-fun m!1388333 () Bool)

(assert (=> b!1213256 m!1388333))

(assert (=> b!1213256 m!1388331))

(assert (=> b!1213256 m!1388333))

(declare-fun m!1388335 () Bool)

(assert (=> b!1213256 m!1388335))

(declare-fun m!1388337 () Bool)

(assert (=> b!1213255 m!1388337))

(assert (=> d!346773 d!346887))

(declare-fun d!346889 () Bool)

(assert (=> d!346889 (= (inv!16492 (tag!2374 (h!17709 (t!112814 rules!2728)))) (= (mod (str.len (value!68789 (tag!2374 (h!17709 (t!112814 rules!2728))))) 2) 0))))

(assert (=> b!1212998 d!346889))

(declare-fun d!346891 () Bool)

(declare-fun res!545565 () Bool)

(declare-fun e!778487 () Bool)

(assert (=> d!346891 (=> (not res!545565) (not e!778487))))

(assert (=> d!346891 (= res!545565 (semiInverseModEq!769 (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toValue!3233 (transformation!2112 (h!17709 (t!112814 rules!2728))))))))

(assert (=> d!346891 (= (inv!16495 (transformation!2112 (h!17709 (t!112814 rules!2728)))) e!778487)))

(declare-fun b!1213257 () Bool)

(assert (=> b!1213257 (= e!778487 (equivClasses!736 (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toValue!3233 (transformation!2112 (h!17709 (t!112814 rules!2728))))))))

(assert (= (and d!346891 res!545565) b!1213257))

(declare-fun m!1388339 () Bool)

(assert (=> d!346891 m!1388339))

(declare-fun m!1388341 () Bool)

(assert (=> b!1213257 m!1388341))

(assert (=> b!1212998 d!346891))

(declare-fun d!346893 () Bool)

(assert (=> d!346893 (= (isDefined!2112 lt!414820) (not (isEmpty!7333 lt!414820)))))

(declare-fun bs!288707 () Bool)

(assert (= bs!288707 d!346893))

(assert (=> bs!288707 m!1388007))

(assert (=> b!1212834 d!346893))

(assert (=> b!1212835 d!346881))

(assert (=> b!1212835 d!346883))

(assert (=> b!1212835 d!346879))

(declare-fun d!346895 () Bool)

(declare-fun c!203121 () Bool)

(assert (=> d!346895 (= c!203121 (is-Nil!12307 lt!414832))))

(declare-fun e!778490 () (Set C!7082))

(assert (=> d!346895 (= (content!1757 lt!414832) e!778490)))

(declare-fun b!1213262 () Bool)

(assert (=> b!1213262 (= e!778490 (as set.empty (Set C!7082)))))

(declare-fun b!1213263 () Bool)

(assert (=> b!1213263 (= e!778490 (set.union (set.insert (h!17708 lt!414832) (as set.empty (Set C!7082))) (content!1757 (t!112813 lt!414832))))))

(assert (= (and d!346895 c!203121) b!1213262))

(assert (= (and d!346895 (not c!203121)) b!1213263))

(declare-fun m!1388343 () Bool)

(assert (=> b!1213263 m!1388343))

(declare-fun m!1388345 () Bool)

(assert (=> b!1213263 m!1388345))

(assert (=> d!346781 d!346895))

(declare-fun d!346897 () Bool)

(declare-fun c!203122 () Bool)

(assert (=> d!346897 (= c!203122 (is-Nil!12307 lt!414779))))

(declare-fun e!778491 () (Set C!7082))

(assert (=> d!346897 (= (content!1757 lt!414779) e!778491)))

(declare-fun b!1213264 () Bool)

(assert (=> b!1213264 (= e!778491 (as set.empty (Set C!7082)))))

(declare-fun b!1213265 () Bool)

(assert (=> b!1213265 (= e!778491 (set.union (set.insert (h!17708 lt!414779) (as set.empty (Set C!7082))) (content!1757 (t!112813 lt!414779))))))

(assert (= (and d!346897 c!203122) b!1213264))

(assert (= (and d!346897 (not c!203122)) b!1213265))

(declare-fun m!1388347 () Bool)

(assert (=> b!1213265 m!1388347))

(assert (=> b!1213265 m!1388253))

(assert (=> d!346781 d!346897))

(declare-fun d!346899 () Bool)

(declare-fun c!203123 () Bool)

(assert (=> d!346899 (= c!203123 (is-Nil!12307 (_2!6935 lt!414781)))))

(declare-fun e!778492 () (Set C!7082))

(assert (=> d!346899 (= (content!1757 (_2!6935 lt!414781)) e!778492)))

(declare-fun b!1213266 () Bool)

(assert (=> b!1213266 (= e!778492 (as set.empty (Set C!7082)))))

(declare-fun b!1213267 () Bool)

(assert (=> b!1213267 (= e!778492 (set.union (set.insert (h!17708 (_2!6935 lt!414781)) (as set.empty (Set C!7082))) (content!1757 (t!112813 (_2!6935 lt!414781)))))))

(assert (= (and d!346899 c!203123) b!1213266))

(assert (= (and d!346899 (not c!203123)) b!1213267))

(declare-fun m!1388349 () Bool)

(assert (=> b!1213267 m!1388349))

(declare-fun m!1388351 () Bool)

(assert (=> b!1213267 m!1388351))

(assert (=> d!346781 d!346899))

(declare-fun d!346901 () Bool)

(declare-fun res!545566 () Bool)

(declare-fun e!778493 () Bool)

(assert (=> d!346901 (=> (not res!545566) (not e!778493))))

(assert (=> d!346901 (= res!545566 (not (isEmpty!7332 (originalCharacters!2666 (h!17710 (t!112815 tokens!556))))))))

(assert (=> d!346901 (= (inv!16496 (h!17710 (t!112815 tokens!556))) e!778493)))

(declare-fun b!1213268 () Bool)

(declare-fun res!545567 () Bool)

(assert (=> b!1213268 (=> (not res!545567) (not e!778493))))

(assert (=> b!1213268 (= res!545567 (= (originalCharacters!2666 (h!17710 (t!112815 tokens!556))) (list!4546 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (value!68790 (h!17710 (t!112815 tokens!556)))))))))

(declare-fun b!1213269 () Bool)

(assert (=> b!1213269 (= e!778493 (= (size!9775 (h!17710 (t!112815 tokens!556))) (size!9777 (originalCharacters!2666 (h!17710 (t!112815 tokens!556))))))))

(assert (= (and d!346901 res!545566) b!1213268))

(assert (= (and b!1213268 res!545567) b!1213269))

(declare-fun b_lambda!35797 () Bool)

(assert (=> (not b_lambda!35797) (not b!1213268)))

(declare-fun t!112864 () Bool)

(declare-fun tb!66577 () Bool)

(assert (=> (and b!1212742 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112864) tb!66577))

(declare-fun b!1213270 () Bool)

(declare-fun e!778494 () Bool)

(declare-fun tp!343953 () Bool)

(assert (=> b!1213270 (= e!778494 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (value!68790 (h!17710 (t!112815 tokens!556)))))) tp!343953))))

(declare-fun result!80540 () Bool)

(assert (=> tb!66577 (= result!80540 (and (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (value!68790 (h!17710 (t!112815 tokens!556))))) e!778494))))

(assert (= tb!66577 b!1213270))

(declare-fun m!1388353 () Bool)

(assert (=> b!1213270 m!1388353))

(declare-fun m!1388355 () Bool)

(assert (=> tb!66577 m!1388355))

(assert (=> b!1213268 t!112864))

(declare-fun b_and!82241 () Bool)

(assert (= b_and!82233 (and (=> t!112864 result!80540) b_and!82241)))

(declare-fun t!112866 () Bool)

(declare-fun tb!66579 () Bool)

(assert (=> (and b!1212734 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112866) tb!66579))

(declare-fun result!80542 () Bool)

(assert (= result!80542 result!80540))

(assert (=> b!1213268 t!112866))

(declare-fun b_and!82243 () Bool)

(assert (= b_and!82235 (and (=> t!112866 result!80542) b_and!82243)))

(declare-fun tb!66581 () Bool)

(declare-fun t!112868 () Bool)

(assert (=> (and b!1212999 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112868) tb!66581))

(declare-fun result!80544 () Bool)

(assert (= result!80544 result!80540))

(assert (=> b!1213268 t!112868))

(declare-fun b_and!82245 () Bool)

(assert (= b_and!82237 (and (=> t!112868 result!80544) b_and!82245)))

(declare-fun t!112870 () Bool)

(declare-fun tb!66583 () Bool)

(assert (=> (and b!1213017 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112870) tb!66583))

(declare-fun result!80546 () Bool)

(assert (= result!80546 result!80540))

(assert (=> b!1213268 t!112870))

(declare-fun b_and!82247 () Bool)

(assert (= b_and!82239 (and (=> t!112870 result!80546) b_and!82247)))

(declare-fun m!1388357 () Bool)

(assert (=> d!346901 m!1388357))

(declare-fun m!1388359 () Bool)

(assert (=> b!1213268 m!1388359))

(assert (=> b!1213268 m!1388359))

(declare-fun m!1388361 () Bool)

(assert (=> b!1213268 m!1388361))

(declare-fun m!1388363 () Bool)

(assert (=> b!1213269 m!1388363))

(assert (=> b!1213014 d!346901))

(declare-fun b!1213294 () Bool)

(declare-fun res!545585 () Bool)

(declare-fun e!778507 () Bool)

(assert (=> b!1213294 (=> (not res!545585) (not e!778507))))

(declare-fun lt!414904 () Option!2474)

(assert (=> b!1213294 (= res!545585 (= (rule!3533 (_1!6935 (get!4048 lt!414904))) (h!17709 rules!2728)))))

(declare-fun b!1213295 () Bool)

(declare-fun res!545589 () Bool)

(assert (=> b!1213295 (=> (not res!545589) (not e!778507))))

(assert (=> b!1213295 (= res!545589 (= (++!3150 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414904)))) (_2!6935 (get!4048 lt!414904))) input!2346))))

(declare-fun b!1213296 () Bool)

(declare-fun res!545588 () Bool)

(assert (=> b!1213296 (=> (not res!545588) (not e!778507))))

(assert (=> b!1213296 (= res!545588 (= (value!68790 (_1!6935 (get!4048 lt!414904))) (apply!2642 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414904)))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414904)))))))))

(declare-fun d!346903 () Bool)

(declare-fun e!778509 () Bool)

(assert (=> d!346903 e!778509))

(declare-fun res!545584 () Bool)

(assert (=> d!346903 (=> res!545584 e!778509)))

(assert (=> d!346903 (= res!545584 (isEmpty!7333 lt!414904))))

(declare-fun e!778508 () Option!2474)

(assert (=> d!346903 (= lt!414904 e!778508)))

(declare-fun c!203128 () Bool)

(declare-datatypes ((tuple2!12184 0))(
  ( (tuple2!12185 (_1!6939 List!12365) (_2!6939 List!12365)) )
))
(declare-fun lt!414902 () tuple2!12184)

(assert (=> d!346903 (= c!203128 (isEmpty!7332 (_1!6939 lt!414902)))))

(declare-fun findLongestMatch!213 (Regex!3382 List!12365) tuple2!12184)

(assert (=> d!346903 (= lt!414902 (findLongestMatch!213 (regex!2112 (h!17709 rules!2728)) input!2346))))

(declare-fun ruleValid!526 (LexerInterface!1807 Rule!4024) Bool)

(assert (=> d!346903 (ruleValid!526 thiss!20528 (h!17709 rules!2728))))

(assert (=> d!346903 (= (maxPrefixOneRule!543 thiss!20528 (h!17709 rules!2728) input!2346) lt!414904)))

(declare-fun b!1213297 () Bool)

(declare-fun res!545586 () Bool)

(assert (=> b!1213297 (=> (not res!545586) (not e!778507))))

(assert (=> b!1213297 (= res!545586 (< (size!9777 (_2!6935 (get!4048 lt!414904))) (size!9777 input!2346)))))

(declare-fun b!1213298 () Bool)

(declare-fun e!778506 () Bool)

(declare-fun findLongestMatchInner!257 (Regex!3382 List!12365 Int List!12365 List!12365 Int) tuple2!12184)

(assert (=> b!1213298 (= e!778506 (matchR!1504 (regex!2112 (h!17709 rules!2728)) (_1!6939 (findLongestMatchInner!257 (regex!2112 (h!17709 rules!2728)) Nil!12307 (size!9777 Nil!12307) input!2346 input!2346 (size!9777 input!2346)))))))

(declare-fun b!1213299 () Bool)

(assert (=> b!1213299 (= e!778509 e!778507)))

(declare-fun res!545587 () Bool)

(assert (=> b!1213299 (=> (not res!545587) (not e!778507))))

(assert (=> b!1213299 (= res!545587 (matchR!1504 (regex!2112 (h!17709 rules!2728)) (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414904))))))))

(declare-fun b!1213300 () Bool)

(assert (=> b!1213300 (= e!778508 None!2473)))

(declare-fun b!1213301 () Bool)

(declare-fun size!9781 (BalanceConc!8006) Int)

(assert (=> b!1213301 (= e!778508 (Some!2473 (tuple2!12177 (Token!3887 (apply!2642 (transformation!2112 (h!17709 rules!2728)) (seqFromList!1543 (_1!6939 lt!414902))) (h!17709 rules!2728) (size!9781 (seqFromList!1543 (_1!6939 lt!414902))) (_1!6939 lt!414902)) (_2!6939 lt!414902))))))

(declare-fun lt!414903 () Unit!18630)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!241 (Regex!3382 List!12365) Unit!18630)

(assert (=> b!1213301 (= lt!414903 (longestMatchIsAcceptedByMatchOrIsEmpty!241 (regex!2112 (h!17709 rules!2728)) input!2346))))

(declare-fun res!545583 () Bool)

(assert (=> b!1213301 (= res!545583 (isEmpty!7332 (_1!6939 (findLongestMatchInner!257 (regex!2112 (h!17709 rules!2728)) Nil!12307 (size!9777 Nil!12307) input!2346 input!2346 (size!9777 input!2346)))))))

(assert (=> b!1213301 (=> res!545583 e!778506)))

(assert (=> b!1213301 e!778506))

(declare-fun lt!414901 () Unit!18630)

(assert (=> b!1213301 (= lt!414901 lt!414903)))

(declare-fun lt!414905 () Unit!18630)

(declare-fun lemmaSemiInverse!311 (TokenValueInjection!4056 BalanceConc!8006) Unit!18630)

(assert (=> b!1213301 (= lt!414905 (lemmaSemiInverse!311 (transformation!2112 (h!17709 rules!2728)) (seqFromList!1543 (_1!6939 lt!414902))))))

(declare-fun b!1213302 () Bool)

(assert (=> b!1213302 (= e!778507 (= (size!9775 (_1!6935 (get!4048 lt!414904))) (size!9777 (originalCharacters!2666 (_1!6935 (get!4048 lt!414904))))))))

(assert (= (and d!346903 c!203128) b!1213300))

(assert (= (and d!346903 (not c!203128)) b!1213301))

(assert (= (and b!1213301 (not res!545583)) b!1213298))

(assert (= (and d!346903 (not res!545584)) b!1213299))

(assert (= (and b!1213299 res!545587) b!1213295))

(assert (= (and b!1213295 res!545589) b!1213297))

(assert (= (and b!1213297 res!545586) b!1213294))

(assert (= (and b!1213294 res!545585) b!1213296))

(assert (= (and b!1213296 res!545588) b!1213302))

(assert (=> b!1213301 m!1388021))

(declare-fun m!1388379 () Bool)

(assert (=> b!1213301 m!1388379))

(declare-fun m!1388381 () Bool)

(assert (=> b!1213301 m!1388381))

(declare-fun m!1388383 () Bool)

(assert (=> b!1213301 m!1388383))

(declare-fun m!1388385 () Bool)

(assert (=> b!1213301 m!1388385))

(assert (=> b!1213301 m!1388383))

(assert (=> b!1213301 m!1388383))

(declare-fun m!1388387 () Bool)

(assert (=> b!1213301 m!1388387))

(declare-fun m!1388389 () Bool)

(assert (=> b!1213301 m!1388389))

(assert (=> b!1213301 m!1388383))

(declare-fun m!1388391 () Bool)

(assert (=> b!1213301 m!1388391))

(assert (=> b!1213301 m!1388389))

(assert (=> b!1213301 m!1388021))

(declare-fun m!1388393 () Bool)

(assert (=> b!1213301 m!1388393))

(declare-fun m!1388395 () Bool)

(assert (=> b!1213299 m!1388395))

(declare-fun m!1388397 () Bool)

(assert (=> b!1213299 m!1388397))

(assert (=> b!1213299 m!1388397))

(declare-fun m!1388399 () Bool)

(assert (=> b!1213299 m!1388399))

(assert (=> b!1213299 m!1388399))

(declare-fun m!1388401 () Bool)

(assert (=> b!1213299 m!1388401))

(assert (=> b!1213295 m!1388395))

(assert (=> b!1213295 m!1388397))

(assert (=> b!1213295 m!1388397))

(assert (=> b!1213295 m!1388399))

(assert (=> b!1213295 m!1388399))

(declare-fun m!1388403 () Bool)

(assert (=> b!1213295 m!1388403))

(declare-fun m!1388405 () Bool)

(assert (=> d!346903 m!1388405))

(declare-fun m!1388407 () Bool)

(assert (=> d!346903 m!1388407))

(declare-fun m!1388409 () Bool)

(assert (=> d!346903 m!1388409))

(declare-fun m!1388411 () Bool)

(assert (=> d!346903 m!1388411))

(assert (=> b!1213297 m!1388395))

(declare-fun m!1388413 () Bool)

(assert (=> b!1213297 m!1388413))

(assert (=> b!1213297 m!1388021))

(assert (=> b!1213294 m!1388395))

(assert (=> b!1213298 m!1388389))

(assert (=> b!1213298 m!1388021))

(assert (=> b!1213298 m!1388389))

(assert (=> b!1213298 m!1388021))

(assert (=> b!1213298 m!1388393))

(declare-fun m!1388415 () Bool)

(assert (=> b!1213298 m!1388415))

(assert (=> b!1213296 m!1388395))

(declare-fun m!1388417 () Bool)

(assert (=> b!1213296 m!1388417))

(assert (=> b!1213296 m!1388417))

(declare-fun m!1388419 () Bool)

(assert (=> b!1213296 m!1388419))

(assert (=> b!1213302 m!1388395))

(declare-fun m!1388421 () Bool)

(assert (=> b!1213302 m!1388421))

(assert (=> bm!84489 d!346903))

(declare-fun d!346913 () Bool)

(assert (=> d!346913 (= (inv!16500 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))) (isBalanced!1178 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))))))

(declare-fun bs!288709 () Bool)

(assert (= bs!288709 d!346913))

(declare-fun m!1388423 () Bool)

(assert (=> bs!288709 m!1388423))

(assert (=> tb!66541 d!346913))

(declare-fun b!1213306 () Bool)

(declare-fun e!778510 () Bool)

(declare-fun lt!414906 () List!12365)

(assert (=> b!1213306 (= e!778510 (or (not (= (_2!6935 (get!4048 lt!414820)) Nil!12307)) (= lt!414906 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun b!1213305 () Bool)

(declare-fun res!545591 () Bool)

(assert (=> b!1213305 (=> (not res!545591) (not e!778510))))

(assert (=> b!1213305 (= res!545591 (= (size!9777 lt!414906) (+ (size!9777 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (size!9777 (_2!6935 (get!4048 lt!414820))))))))

(declare-fun d!346915 () Bool)

(assert (=> d!346915 e!778510))

(declare-fun res!545590 () Bool)

(assert (=> d!346915 (=> (not res!545590) (not e!778510))))

(assert (=> d!346915 (= res!545590 (= (content!1757 lt!414906) (set.union (content!1757 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (content!1757 (_2!6935 (get!4048 lt!414820))))))))

(declare-fun e!778511 () List!12365)

(assert (=> d!346915 (= lt!414906 e!778511)))

(declare-fun c!203129 () Bool)

(assert (=> d!346915 (= c!203129 (is-Nil!12307 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))))))

(assert (=> d!346915 (= (++!3150 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820)))) (_2!6935 (get!4048 lt!414820))) lt!414906)))

(declare-fun b!1213303 () Bool)

(assert (=> b!1213303 (= e!778511 (_2!6935 (get!4048 lt!414820)))))

(declare-fun b!1213304 () Bool)

(assert (=> b!1213304 (= e!778511 (Cons!12307 (h!17708 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (++!3150 (t!112813 (list!4546 (charsOf!1118 (_1!6935 (get!4048 lt!414820))))) (_2!6935 (get!4048 lt!414820)))))))

(assert (= (and d!346915 c!203129) b!1213303))

(assert (= (and d!346915 (not c!203129)) b!1213304))

(assert (= (and d!346915 res!545590) b!1213305))

(assert (= (and b!1213305 res!545591) b!1213306))

(declare-fun m!1388425 () Bool)

(assert (=> b!1213305 m!1388425))

(assert (=> b!1213305 m!1387997))

(declare-fun m!1388427 () Bool)

(assert (=> b!1213305 m!1388427))

(assert (=> b!1213305 m!1388019))

(declare-fun m!1388429 () Bool)

(assert (=> d!346915 m!1388429))

(assert (=> d!346915 m!1387997))

(declare-fun m!1388431 () Bool)

(assert (=> d!346915 m!1388431))

(declare-fun m!1388433 () Bool)

(assert (=> d!346915 m!1388433))

(declare-fun m!1388435 () Bool)

(assert (=> b!1213304 m!1388435))

(assert (=> b!1212836 d!346915))

(assert (=> b!1212836 d!346881))

(assert (=> b!1212836 d!346883))

(assert (=> b!1212836 d!346879))

(declare-fun b!1213307 () Bool)

(declare-fun res!545592 () Bool)

(declare-fun e!778512 () Bool)

(assert (=> b!1213307 (=> res!545592 e!778512)))

(assert (=> b!1213307 (= res!545592 (not (is-IntegerValue!6542 (value!68790 (h!17710 (t!112815 tokens!556))))))))

(declare-fun e!778513 () Bool)

(assert (=> b!1213307 (= e!778513 e!778512)))

(declare-fun b!1213308 () Bool)

(assert (=> b!1213308 (= e!778512 (inv!15 (value!68790 (h!17710 (t!112815 tokens!556)))))))

(declare-fun b!1213309 () Bool)

(declare-fun e!778514 () Bool)

(assert (=> b!1213309 (= e!778514 (inv!16 (value!68790 (h!17710 (t!112815 tokens!556)))))))

(declare-fun b!1213310 () Bool)

(assert (=> b!1213310 (= e!778513 (inv!17 (value!68790 (h!17710 (t!112815 tokens!556)))))))

(declare-fun b!1213311 () Bool)

(assert (=> b!1213311 (= e!778514 e!778513)))

(declare-fun c!203131 () Bool)

(assert (=> b!1213311 (= c!203131 (is-IntegerValue!6541 (value!68790 (h!17710 (t!112815 tokens!556)))))))

(declare-fun d!346917 () Bool)

(declare-fun c!203130 () Bool)

(assert (=> d!346917 (= c!203130 (is-IntegerValue!6540 (value!68790 (h!17710 (t!112815 tokens!556)))))))

(assert (=> d!346917 (= (inv!21 (value!68790 (h!17710 (t!112815 tokens!556)))) e!778514)))

(assert (= (and d!346917 c!203130) b!1213309))

(assert (= (and d!346917 (not c!203130)) b!1213311))

(assert (= (and b!1213311 c!203131) b!1213310))

(assert (= (and b!1213311 (not c!203131)) b!1213307))

(assert (= (and b!1213307 (not res!545592)) b!1213308))

(declare-fun m!1388437 () Bool)

(assert (=> b!1213308 m!1388437))

(declare-fun m!1388439 () Bool)

(assert (=> b!1213309 m!1388439))

(declare-fun m!1388441 () Bool)

(assert (=> b!1213310 m!1388441))

(assert (=> b!1213015 d!346917))

(declare-fun d!346919 () Bool)

(assert (=> d!346919 (= (inv!16492 (tag!2374 (rule!3533 (h!17710 (t!112815 tokens!556))))) (= (mod (str.len (value!68789 (tag!2374 (rule!3533 (h!17710 (t!112815 tokens!556)))))) 2) 0))))

(assert (=> b!1213016 d!346919))

(declare-fun d!346921 () Bool)

(declare-fun res!545593 () Bool)

(declare-fun e!778515 () Bool)

(assert (=> d!346921 (=> (not res!545593) (not e!778515))))

(assert (=> d!346921 (= res!545593 (semiInverseModEq!769 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))))))

(assert (=> d!346921 (= (inv!16495 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) e!778515)))

(declare-fun b!1213312 () Bool)

(assert (=> b!1213312 (= e!778515 (equivClasses!736 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))))))

(assert (= (and d!346921 res!545593) b!1213312))

(declare-fun m!1388443 () Bool)

(assert (=> d!346921 m!1388443))

(declare-fun m!1388445 () Bool)

(assert (=> b!1213312 m!1388445))

(assert (=> b!1213016 d!346921))

(declare-fun d!346923 () Bool)

(assert (=> d!346923 true))

(declare-fun lt!414909 () Bool)

(assert (=> d!346923 (= lt!414909 (rulesValidInductive!660 thiss!20528 rules!2728))))

(declare-fun lambda!49089 () Int)

(declare-fun forall!3172 (List!12366 Int) Bool)

(assert (=> d!346923 (= lt!414909 (forall!3172 rules!2728 lambda!49089))))

(assert (=> d!346923 (= (rulesValid!757 thiss!20528 rules!2728) lt!414909)))

(declare-fun bs!288710 () Bool)

(assert (= bs!288710 d!346923))

(assert (=> bs!288710 m!1388013))

(declare-fun m!1388447 () Bool)

(assert (=> bs!288710 m!1388447))

(assert (=> d!346779 d!346923))

(declare-fun d!346925 () Bool)

(declare-fun lt!414910 () Int)

(assert (=> d!346925 (>= lt!414910 0)))

(declare-fun e!778516 () Int)

(assert (=> d!346925 (= lt!414910 e!778516)))

(declare-fun c!203132 () Bool)

(assert (=> d!346925 (= c!203132 (is-Nil!12307 (_2!6935 (get!4048 lt!414820))))))

(assert (=> d!346925 (= (size!9777 (_2!6935 (get!4048 lt!414820))) lt!414910)))

(declare-fun b!1213315 () Bool)

(assert (=> b!1213315 (= e!778516 0)))

(declare-fun b!1213316 () Bool)

(assert (=> b!1213316 (= e!778516 (+ 1 (size!9777 (t!112813 (_2!6935 (get!4048 lt!414820))))))))

(assert (= (and d!346925 c!203132) b!1213315))

(assert (= (and d!346925 (not c!203132)) b!1213316))

(declare-fun m!1388449 () Bool)

(assert (=> b!1213316 m!1388449))

(assert (=> b!1212837 d!346925))

(assert (=> b!1212837 d!346879))

(assert (=> b!1212837 d!346875))

(assert (=> b!1212838 d!346879))

(declare-fun d!346927 () Bool)

(declare-fun dynLambda!5400 (Int BalanceConc!8006) TokenValue!2180)

(assert (=> d!346927 (= (apply!2642 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820))))) (dynLambda!5400 (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820))))))))

(declare-fun b_lambda!35799 () Bool)

(assert (=> (not b_lambda!35799) (not d!346927)))

(declare-fun t!112872 () Bool)

(declare-fun tb!66585 () Bool)

(assert (=> (and b!1212742 (= (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112872) tb!66585))

(declare-fun result!80548 () Bool)

(assert (=> tb!66585 (= result!80548 (inv!21 (dynLambda!5400 (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820))))) (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820)))))))))

(declare-fun m!1388451 () Bool)

(assert (=> tb!66585 m!1388451))

(assert (=> d!346927 t!112872))

(declare-fun b_and!82249 () Bool)

(assert (= b_and!82177 (and (=> t!112872 result!80548) b_and!82249)))

(declare-fun tb!66587 () Bool)

(declare-fun t!112874 () Bool)

(assert (=> (and b!1212734 (= (toValue!3233 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112874) tb!66587))

(declare-fun result!80552 () Bool)

(assert (= result!80552 result!80548))

(assert (=> d!346927 t!112874))

(declare-fun b_and!82251 () Bool)

(assert (= b_and!82181 (and (=> t!112874 result!80552) b_and!82251)))

(declare-fun tb!66589 () Bool)

(declare-fun t!112876 () Bool)

(assert (=> (and b!1212999 (= (toValue!3233 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112876) tb!66589))

(declare-fun result!80554 () Bool)

(assert (= result!80554 result!80548))

(assert (=> d!346927 t!112876))

(declare-fun b_and!82253 () Bool)

(assert (= b_and!82205 (and (=> t!112876 result!80554) b_and!82253)))

(declare-fun tb!66591 () Bool)

(declare-fun t!112878 () Bool)

(assert (=> (and b!1213017 (= (toValue!3233 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112878) tb!66591))

(declare-fun result!80556 () Bool)

(assert (= result!80556 result!80548))

(assert (=> d!346927 t!112878))

(declare-fun b_and!82255 () Bool)

(assert (= b_and!82209 (and (=> t!112878 result!80556) b_and!82255)))

(assert (=> d!346927 m!1388015))

(declare-fun m!1388453 () Bool)

(assert (=> d!346927 m!1388453))

(assert (=> b!1212838 d!346927))

(declare-fun d!346929 () Bool)

(declare-fun fromListB!684 (List!12365) BalanceConc!8006)

(assert (=> d!346929 (= (seqFromList!1543 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820)))) (fromListB!684 (originalCharacters!2666 (_1!6935 (get!4048 lt!414820)))))))

(declare-fun bs!288711 () Bool)

(assert (= bs!288711 d!346929))

(declare-fun m!1388455 () Bool)

(assert (=> bs!288711 m!1388455))

(assert (=> b!1212838 d!346929))

(declare-fun d!346931 () Bool)

(assert (=> d!346931 (= (isEmpty!7333 lt!414820) (not (is-Some!2473 lt!414820)))))

(assert (=> d!346771 d!346931))

(declare-fun b!1213328 () Bool)

(declare-fun res!545604 () Bool)

(declare-fun e!778526 () Bool)

(assert (=> b!1213328 (=> (not res!545604) (not e!778526))))

(assert (=> b!1213328 (= res!545604 (= (head!2147 input!2346) (head!2147 input!2346)))))

(declare-fun d!346933 () Bool)

(declare-fun e!778528 () Bool)

(assert (=> d!346933 e!778528))

(declare-fun res!545603 () Bool)

(assert (=> d!346933 (=> res!545603 e!778528)))

(declare-fun lt!414913 () Bool)

(assert (=> d!346933 (= res!545603 (not lt!414913))))

(declare-fun e!778527 () Bool)

(assert (=> d!346933 (= lt!414913 e!778527)))

(declare-fun res!545602 () Bool)

(assert (=> d!346933 (=> res!545602 e!778527)))

(assert (=> d!346933 (= res!545602 (is-Nil!12307 input!2346))))

(assert (=> d!346933 (= (isPrefix!1024 input!2346 input!2346) lt!414913)))

(declare-fun b!1213327 () Bool)

(assert (=> b!1213327 (= e!778527 e!778526)))

(declare-fun res!545605 () Bool)

(assert (=> b!1213327 (=> (not res!545605) (not e!778526))))

(assert (=> b!1213327 (= res!545605 (not (is-Nil!12307 input!2346)))))

(declare-fun b!1213329 () Bool)

(assert (=> b!1213329 (= e!778526 (isPrefix!1024 (tail!1779 input!2346) (tail!1779 input!2346)))))

(declare-fun b!1213330 () Bool)

(assert (=> b!1213330 (= e!778528 (>= (size!9777 input!2346) (size!9777 input!2346)))))

(assert (= (and d!346933 (not res!545602)) b!1213327))

(assert (= (and b!1213327 res!545605) b!1213328))

(assert (= (and b!1213328 res!545604) b!1213329))

(assert (= (and d!346933 (not res!545603)) b!1213330))

(declare-fun m!1388457 () Bool)

(assert (=> b!1213328 m!1388457))

(assert (=> b!1213328 m!1388457))

(declare-fun m!1388459 () Bool)

(assert (=> b!1213329 m!1388459))

(assert (=> b!1213329 m!1388459))

(assert (=> b!1213329 m!1388459))

(assert (=> b!1213329 m!1388459))

(declare-fun m!1388461 () Bool)

(assert (=> b!1213329 m!1388461))

(assert (=> b!1213330 m!1388021))

(assert (=> b!1213330 m!1388021))

(assert (=> d!346771 d!346933))

(declare-fun d!346935 () Bool)

(assert (=> d!346935 (isPrefix!1024 input!2346 input!2346)))

(declare-fun lt!414916 () Unit!18630)

(declare-fun choose!7784 (List!12365 List!12365) Unit!18630)

(assert (=> d!346935 (= lt!414916 (choose!7784 input!2346 input!2346))))

(assert (=> d!346935 (= (lemmaIsPrefixRefl!717 input!2346 input!2346) lt!414916)))

(declare-fun bs!288712 () Bool)

(assert (= bs!288712 d!346935))

(assert (=> bs!288712 m!1388009))

(declare-fun m!1388463 () Bool)

(assert (=> bs!288712 m!1388463))

(assert (=> d!346771 d!346935))

(declare-fun bs!288713 () Bool)

(declare-fun d!346937 () Bool)

(assert (= bs!288713 (and d!346937 d!346923)))

(declare-fun lambda!49092 () Int)

(assert (=> bs!288713 (= lambda!49092 lambda!49089)))

(assert (=> d!346937 true))

(declare-fun lt!414919 () Bool)

(assert (=> d!346937 (= lt!414919 (forall!3172 rules!2728 lambda!49092))))

(declare-fun e!778533 () Bool)

(assert (=> d!346937 (= lt!414919 e!778533)))

(declare-fun res!545611 () Bool)

(assert (=> d!346937 (=> res!545611 e!778533)))

(assert (=> d!346937 (= res!545611 (not (is-Cons!12308 rules!2728)))))

(assert (=> d!346937 (= (rulesValidInductive!660 thiss!20528 rules!2728) lt!414919)))

(declare-fun b!1213335 () Bool)

(declare-fun e!778534 () Bool)

(assert (=> b!1213335 (= e!778533 e!778534)))

(declare-fun res!545610 () Bool)

(assert (=> b!1213335 (=> (not res!545610) (not e!778534))))

(assert (=> b!1213335 (= res!545610 (ruleValid!526 thiss!20528 (h!17709 rules!2728)))))

(declare-fun b!1213336 () Bool)

(assert (=> b!1213336 (= e!778534 (rulesValidInductive!660 thiss!20528 (t!112814 rules!2728)))))

(assert (= (and d!346937 (not res!545611)) b!1213335))

(assert (= (and b!1213335 res!545610) b!1213336))

(declare-fun m!1388465 () Bool)

(assert (=> d!346937 m!1388465))

(assert (=> b!1213335 m!1388411))

(assert (=> b!1213336 m!1388277))

(assert (=> d!346771 d!346937))

(declare-fun d!346939 () Bool)

(declare-fun lt!414922 () Bool)

(declare-fun content!1759 (List!12366) (Set Rule!4024))

(assert (=> d!346939 (= lt!414922 (set.member (rule!3533 (_1!6935 (get!4048 lt!414820))) (content!1759 rules!2728)))))

(declare-fun e!778540 () Bool)

(assert (=> d!346939 (= lt!414922 e!778540)))

(declare-fun res!545616 () Bool)

(assert (=> d!346939 (=> (not res!545616) (not e!778540))))

(assert (=> d!346939 (= res!545616 (is-Cons!12308 rules!2728))))

(assert (=> d!346939 (= (contains!2069 rules!2728 (rule!3533 (_1!6935 (get!4048 lt!414820)))) lt!414922)))

(declare-fun b!1213341 () Bool)

(declare-fun e!778539 () Bool)

(assert (=> b!1213341 (= e!778540 e!778539)))

(declare-fun res!545617 () Bool)

(assert (=> b!1213341 (=> res!545617 e!778539)))

(assert (=> b!1213341 (= res!545617 (= (h!17709 rules!2728) (rule!3533 (_1!6935 (get!4048 lt!414820)))))))

(declare-fun b!1213342 () Bool)

(assert (=> b!1213342 (= e!778539 (contains!2069 (t!112814 rules!2728) (rule!3533 (_1!6935 (get!4048 lt!414820)))))))

(assert (= (and d!346939 res!545616) b!1213341))

(assert (= (and b!1213341 (not res!545617)) b!1213342))

(declare-fun m!1388467 () Bool)

(assert (=> d!346939 m!1388467))

(declare-fun m!1388469 () Bool)

(assert (=> d!346939 m!1388469))

(declare-fun m!1388471 () Bool)

(assert (=> b!1213342 m!1388471))

(assert (=> b!1212839 d!346939))

(assert (=> b!1212839 d!346879))

(declare-fun d!346941 () Bool)

(declare-fun c!203133 () Bool)

(assert (=> d!346941 (= c!203133 (is-Node!4037 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))))))

(declare-fun e!778541 () Bool)

(assert (=> d!346941 (= (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))) e!778541)))

(declare-fun b!1213343 () Bool)

(assert (=> b!1213343 (= e!778541 (inv!16503 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))))))

(declare-fun b!1213344 () Bool)

(declare-fun e!778542 () Bool)

(assert (=> b!1213344 (= e!778541 e!778542)))

(declare-fun res!545618 () Bool)

(assert (=> b!1213344 (= res!545618 (not (is-Leaf!6242 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))))))

(assert (=> b!1213344 (=> res!545618 e!778542)))

(declare-fun b!1213345 () Bool)

(assert (=> b!1213345 (= e!778542 (inv!16504 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))))))

(assert (= (and d!346941 c!203133) b!1213343))

(assert (= (and d!346941 (not c!203133)) b!1213344))

(assert (= (and b!1213344 (not res!545618)) b!1213345))

(declare-fun m!1388473 () Bool)

(assert (=> b!1213343 m!1388473))

(declare-fun m!1388475 () Bool)

(assert (=> b!1213345 m!1388475))

(assert (=> b!1212803 d!346941))

(declare-fun d!346943 () Bool)

(assert (=> d!346943 (= (list!4546 lt!414804) (list!4548 (c!203030 lt!414804)))))

(declare-fun bs!288714 () Bool)

(assert (= bs!288714 d!346943))

(declare-fun m!1388477 () Bool)

(assert (=> bs!288714 m!1388477))

(assert (=> d!346755 d!346943))

(declare-fun bs!288715 () Bool)

(declare-fun d!346945 () Bool)

(assert (= bs!288715 (and d!346945 d!346827)))

(declare-fun lambda!49093 () Int)

(assert (=> bs!288715 (= (= (toValue!3233 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (= lambda!49093 lambda!49083))))

(assert (=> d!346945 true))

(assert (=> d!346945 (< (dynLambda!5396 order!7515 (toValue!3233 (transformation!2112 (h!17709 rules!2728)))) (dynLambda!5397 order!7517 lambda!49093))))

(assert (=> d!346945 (= (equivClasses!736 (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toValue!3233 (transformation!2112 (h!17709 rules!2728)))) (Forall2!361 lambda!49093))))

(declare-fun bs!288716 () Bool)

(assert (= bs!288716 d!346945))

(declare-fun m!1388479 () Bool)

(assert (=> bs!288716 m!1388479))

(assert (=> b!1212806 d!346945))

(declare-fun bs!288717 () Bool)

(declare-fun d!346947 () Bool)

(assert (= bs!288717 (and d!346947 d!346833)))

(declare-fun lambda!49094 () Int)

(assert (=> bs!288717 (= (and (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (h!17709 rules!2728)))) (= (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (h!17709 rules!2728))))) (= lambda!49094 lambda!49086))))

(assert (=> d!346947 true))

(assert (=> d!346947 (< (dynLambda!5398 order!7519 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (dynLambda!5399 order!7521 lambda!49094))))

(assert (=> d!346947 true))

(assert (=> d!346947 (< (dynLambda!5396 order!7515 (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (dynLambda!5399 order!7521 lambda!49094))))

(assert (=> d!346947 (= (semiInverseModEq!769 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toValue!3233 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) (Forall!451 lambda!49094))))

(declare-fun bs!288718 () Bool)

(assert (= bs!288718 d!346947))

(declare-fun m!1388481 () Bool)

(assert (=> bs!288718 m!1388481))

(assert (=> d!346801 d!346947))

(declare-fun bm!84518 () Bool)

(declare-fun call!84525 () Bool)

(declare-fun call!84524 () Bool)

(assert (=> bm!84518 (= call!84525 call!84524)))

(declare-fun b!1213346 () Bool)

(declare-fun e!778546 () Bool)

(declare-fun e!778545 () Bool)

(assert (=> b!1213346 (= e!778546 e!778545)))

(declare-fun c!203135 () Bool)

(assert (=> b!1213346 (= c!203135 (is-Union!3382 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))

(declare-fun b!1213347 () Bool)

(declare-fun e!778549 () Bool)

(assert (=> b!1213347 (= e!778549 call!84524)))

(declare-fun bm!84519 () Bool)

(declare-fun c!203134 () Bool)

(assert (=> bm!84519 (= call!84524 (validRegex!1447 (ite c!203134 (reg!3711 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))) (ite c!203135 (regTwo!7277 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))) (regOne!7276 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))))))

(declare-fun b!1213348 () Bool)

(declare-fun res!545623 () Bool)

(declare-fun e!778544 () Bool)

(assert (=> b!1213348 (=> res!545623 e!778544)))

(assert (=> b!1213348 (= res!545623 (not (is-Concat!5563 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781)))))))))))

(assert (=> b!1213348 (= e!778545 e!778544)))

(declare-fun b!1213349 () Bool)

(declare-fun e!778548 () Bool)

(declare-fun call!84523 () Bool)

(assert (=> b!1213349 (= e!778548 call!84523)))

(declare-fun d!346949 () Bool)

(declare-fun res!545619 () Bool)

(declare-fun e!778543 () Bool)

(assert (=> d!346949 (=> res!545619 e!778543)))

(assert (=> d!346949 (= res!545619 (is-ElementMatch!3382 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))

(assert (=> d!346949 (= (validRegex!1447 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))) e!778543)))

(declare-fun b!1213350 () Bool)

(assert (=> b!1213350 (= e!778544 e!778548)))

(declare-fun res!545622 () Bool)

(assert (=> b!1213350 (=> (not res!545622) (not e!778548))))

(assert (=> b!1213350 (= res!545622 call!84525)))

(declare-fun bm!84520 () Bool)

(assert (=> bm!84520 (= call!84523 (validRegex!1447 (ite c!203135 (regOne!7277 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))) (regTwo!7276 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))))

(declare-fun b!1213351 () Bool)

(declare-fun e!778547 () Bool)

(assert (=> b!1213351 (= e!778547 call!84525)))

(declare-fun b!1213352 () Bool)

(assert (=> b!1213352 (= e!778546 e!778549)))

(declare-fun res!545620 () Bool)

(assert (=> b!1213352 (= res!545620 (not (nullable!1050 (reg!3711 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))))

(assert (=> b!1213352 (=> (not res!545620) (not e!778549))))

(declare-fun b!1213353 () Bool)

(declare-fun res!545621 () Bool)

(assert (=> b!1213353 (=> (not res!545621) (not e!778547))))

(assert (=> b!1213353 (= res!545621 call!84523)))

(assert (=> b!1213353 (= e!778545 e!778547)))

(declare-fun b!1213354 () Bool)

(assert (=> b!1213354 (= e!778543 e!778546)))

(assert (=> b!1213354 (= c!203134 (is-Star!3382 (ite c!203074 (reg!3711 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (ite c!203075 (regTwo!7277 (regex!2112 (rule!3533 (_1!6935 lt!414781)))) (regOne!7276 (regex!2112 (rule!3533 (_1!6935 lt!414781))))))))))

(assert (= (and d!346949 (not res!545619)) b!1213354))

(assert (= (and b!1213354 c!203134) b!1213352))

(assert (= (and b!1213354 (not c!203134)) b!1213346))

(assert (= (and b!1213352 res!545620) b!1213347))

(assert (= (and b!1213346 c!203135) b!1213353))

(assert (= (and b!1213346 (not c!203135)) b!1213348))

(assert (= (and b!1213353 res!545621) b!1213351))

(assert (= (and b!1213348 (not res!545623)) b!1213350))

(assert (= (and b!1213350 res!545622) b!1213349))

(assert (= (or b!1213351 b!1213350) bm!84518))

(assert (= (or b!1213353 b!1213349) bm!84520))

(assert (= (or b!1213347 bm!84518) bm!84519))

(declare-fun m!1388483 () Bool)

(assert (=> bm!84519 m!1388483))

(declare-fun m!1388485 () Bool)

(assert (=> bm!84520 m!1388485))

(declare-fun m!1388487 () Bool)

(assert (=> b!1213352 m!1388487))

(assert (=> bm!84506 d!346949))

(declare-fun b!1213355 () Bool)

(declare-fun e!778550 () Bool)

(declare-fun tp!343954 () Bool)

(assert (=> b!1213355 (= e!778550 (and tp_is_empty!6285 tp!343954))))

(assert (=> b!1212974 (= tp!343848 e!778550)))

(assert (= (and b!1212974 (is-Cons!12307 (t!112813 (t!112813 input!2346)))) b!1213355))

(declare-fun b!1213359 () Bool)

(declare-fun b_free!28977 () Bool)

(declare-fun b_next!29681 () Bool)

(assert (=> b!1213359 (= b_free!28977 (not b_next!29681))))

(declare-fun t!112880 () Bool)

(declare-fun tb!66593 () Bool)

(assert (=> (and b!1213359 (= (toValue!3233 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112880) tb!66593))

(declare-fun result!80558 () Bool)

(assert (= result!80558 result!80548))

(assert (=> d!346927 t!112880))

(declare-fun tp!343957 () Bool)

(declare-fun b_and!82257 () Bool)

(assert (=> b!1213359 (= tp!343957 (and (=> t!112880 result!80558) b_and!82257))))

(declare-fun b_free!28979 () Bool)

(declare-fun b_next!29683 () Bool)

(assert (=> b!1213359 (= b_free!28979 (not b_next!29683))))

(declare-fun t!112882 () Bool)

(declare-fun tb!66595 () Bool)

(assert (=> (and b!1213359 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112882) tb!66595))

(declare-fun result!80560 () Bool)

(assert (= result!80560 result!80480))

(assert (=> b!1212811 t!112882))

(declare-fun t!112884 () Bool)

(declare-fun tb!66597 () Bool)

(assert (=> (and b!1213359 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112884) tb!66597))

(declare-fun result!80562 () Bool)

(assert (= result!80562 result!80540))

(assert (=> b!1213268 t!112884))

(assert (=> d!346755 t!112882))

(declare-fun tb!66599 () Bool)

(declare-fun t!112886 () Bool)

(assert (=> (and b!1213359 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112886) tb!66599))

(declare-fun result!80564 () Bool)

(assert (= result!80564 result!80486))

(assert (=> d!346757 t!112886))

(declare-fun t!112888 () Bool)

(declare-fun tb!66601 () Bool)

(assert (=> (and b!1213359 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112888) tb!66601))

(declare-fun result!80566 () Bool)

(assert (= result!80566 result!80532))

(assert (=> d!346883 t!112888))

(declare-fun tp!343955 () Bool)

(declare-fun b_and!82259 () Bool)

(assert (=> b!1213359 (= tp!343955 (and (=> t!112886 result!80564) (=> t!112882 result!80560) (=> t!112884 result!80562) (=> t!112888 result!80566) b_and!82259))))

(declare-fun e!778551 () Bool)

(assert (=> b!1213014 (= tp!343892 e!778551)))

(declare-fun e!778552 () Bool)

(assert (=> b!1213359 (= e!778552 (and tp!343957 tp!343955))))

(declare-fun tp!343958 () Bool)

(declare-fun b!1213358 () Bool)

(declare-fun e!778555 () Bool)

(assert (=> b!1213358 (= e!778555 (and tp!343958 (inv!16492 (tag!2374 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (inv!16495 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) e!778552))))

(declare-fun e!778553 () Bool)

(declare-fun tp!343959 () Bool)

(declare-fun b!1213357 () Bool)

(assert (=> b!1213357 (= e!778553 (and (inv!21 (value!68790 (h!17710 (t!112815 (t!112815 tokens!556))))) e!778555 tp!343959))))

(declare-fun tp!343956 () Bool)

(declare-fun b!1213356 () Bool)

(assert (=> b!1213356 (= e!778551 (and (inv!16496 (h!17710 (t!112815 (t!112815 tokens!556)))) e!778553 tp!343956))))

(assert (= b!1213358 b!1213359))

(assert (= b!1213357 b!1213358))

(assert (= b!1213356 b!1213357))

(assert (= (and b!1213014 (is-Cons!12309 (t!112815 (t!112815 tokens!556)))) b!1213356))

(declare-fun m!1388489 () Bool)

(assert (=> b!1213358 m!1388489))

(declare-fun m!1388491 () Bool)

(assert (=> b!1213358 m!1388491))

(declare-fun m!1388493 () Bool)

(assert (=> b!1213357 m!1388493))

(declare-fun m!1388495 () Bool)

(assert (=> b!1213356 m!1388495))

(declare-fun b!1213362 () Bool)

(declare-fun e!778557 () Bool)

(declare-fun tp!343964 () Bool)

(assert (=> b!1213362 (= e!778557 tp!343964)))

(declare-fun b!1213361 () Bool)

(declare-fun tp!343962 () Bool)

(declare-fun tp!343963 () Bool)

(assert (=> b!1213361 (= e!778557 (and tp!343962 tp!343963))))

(declare-fun b!1213363 () Bool)

(declare-fun tp!343961 () Bool)

(declare-fun tp!343960 () Bool)

(assert (=> b!1213363 (= e!778557 (and tp!343961 tp!343960))))

(assert (=> b!1212986 (= tp!343861 e!778557)))

(declare-fun b!1213360 () Bool)

(assert (=> b!1213360 (= e!778557 tp_is_empty!6285)))

(assert (= (and b!1212986 (is-ElementMatch!3382 (regOne!7276 (regex!2112 (h!17709 rules!2728))))) b!1213360))

(assert (= (and b!1212986 (is-Concat!5563 (regOne!7276 (regex!2112 (h!17709 rules!2728))))) b!1213361))

(assert (= (and b!1212986 (is-Star!3382 (regOne!7276 (regex!2112 (h!17709 rules!2728))))) b!1213362))

(assert (= (and b!1212986 (is-Union!3382 (regOne!7276 (regex!2112 (h!17709 rules!2728))))) b!1213363))

(declare-fun b!1213366 () Bool)

(declare-fun e!778558 () Bool)

(declare-fun tp!343969 () Bool)

(assert (=> b!1213366 (= e!778558 tp!343969)))

(declare-fun b!1213365 () Bool)

(declare-fun tp!343967 () Bool)

(declare-fun tp!343968 () Bool)

(assert (=> b!1213365 (= e!778558 (and tp!343967 tp!343968))))

(declare-fun b!1213367 () Bool)

(declare-fun tp!343966 () Bool)

(declare-fun tp!343965 () Bool)

(assert (=> b!1213367 (= e!778558 (and tp!343966 tp!343965))))

(assert (=> b!1212986 (= tp!343862 e!778558)))

(declare-fun b!1213364 () Bool)

(assert (=> b!1213364 (= e!778558 tp_is_empty!6285)))

(assert (= (and b!1212986 (is-ElementMatch!3382 (regTwo!7276 (regex!2112 (h!17709 rules!2728))))) b!1213364))

(assert (= (and b!1212986 (is-Concat!5563 (regTwo!7276 (regex!2112 (h!17709 rules!2728))))) b!1213365))

(assert (= (and b!1212986 (is-Star!3382 (regTwo!7276 (regex!2112 (h!17709 rules!2728))))) b!1213366))

(assert (= (and b!1212986 (is-Union!3382 (regTwo!7276 (regex!2112 (h!17709 rules!2728))))) b!1213367))

(declare-fun b!1213368 () Bool)

(declare-fun e!778559 () Bool)

(declare-fun tp!343970 () Bool)

(assert (=> b!1213368 (= e!778559 (and tp_is_empty!6285 tp!343970))))

(assert (=> b!1213015 (= tp!343895 e!778559)))

(assert (= (and b!1213015 (is-Cons!12307 (originalCharacters!2666 (h!17710 (t!112815 tokens!556))))) b!1213368))

(declare-fun b!1213371 () Bool)

(declare-fun e!778560 () Bool)

(declare-fun tp!343975 () Bool)

(assert (=> b!1213371 (= e!778560 tp!343975)))

(declare-fun b!1213370 () Bool)

(declare-fun tp!343973 () Bool)

(declare-fun tp!343974 () Bool)

(assert (=> b!1213370 (= e!778560 (and tp!343973 tp!343974))))

(declare-fun b!1213372 () Bool)

(declare-fun tp!343972 () Bool)

(declare-fun tp!343971 () Bool)

(assert (=> b!1213372 (= e!778560 (and tp!343972 tp!343971))))

(assert (=> b!1212987 (= tp!343863 e!778560)))

(declare-fun b!1213369 () Bool)

(assert (=> b!1213369 (= e!778560 tp_is_empty!6285)))

(assert (= (and b!1212987 (is-ElementMatch!3382 (reg!3711 (regex!2112 (h!17709 rules!2728))))) b!1213369))

(assert (= (and b!1212987 (is-Concat!5563 (reg!3711 (regex!2112 (h!17709 rules!2728))))) b!1213370))

(assert (= (and b!1212987 (is-Star!3382 (reg!3711 (regex!2112 (h!17709 rules!2728))))) b!1213371))

(assert (= (and b!1212987 (is-Union!3382 (reg!3711 (regex!2112 (h!17709 rules!2728))))) b!1213372))

(declare-fun b!1213375 () Bool)

(declare-fun e!778561 () Bool)

(declare-fun tp!343980 () Bool)

(assert (=> b!1213375 (= e!778561 tp!343980)))

(declare-fun b!1213374 () Bool)

(declare-fun tp!343978 () Bool)

(declare-fun tp!343979 () Bool)

(assert (=> b!1213374 (= e!778561 (and tp!343978 tp!343979))))

(declare-fun b!1213376 () Bool)

(declare-fun tp!343977 () Bool)

(declare-fun tp!343976 () Bool)

(assert (=> b!1213376 (= e!778561 (and tp!343977 tp!343976))))

(assert (=> b!1213016 (= tp!343894 e!778561)))

(declare-fun b!1213373 () Bool)

(assert (=> b!1213373 (= e!778561 tp_is_empty!6285)))

(assert (= (and b!1213016 (is-ElementMatch!3382 (regex!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) b!1213373))

(assert (= (and b!1213016 (is-Concat!5563 (regex!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) b!1213374))

(assert (= (and b!1213016 (is-Star!3382 (regex!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) b!1213375))

(assert (= (and b!1213016 (is-Union!3382 (regex!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) b!1213376))

(declare-fun b!1213379 () Bool)

(declare-fun e!778562 () Bool)

(declare-fun tp!343985 () Bool)

(assert (=> b!1213379 (= e!778562 tp!343985)))

(declare-fun b!1213378 () Bool)

(declare-fun tp!343983 () Bool)

(declare-fun tp!343984 () Bool)

(assert (=> b!1213378 (= e!778562 (and tp!343983 tp!343984))))

(declare-fun b!1213380 () Bool)

(declare-fun tp!343982 () Bool)

(declare-fun tp!343981 () Bool)

(assert (=> b!1213380 (= e!778562 (and tp!343982 tp!343981))))

(assert (=> b!1212988 (= tp!343860 e!778562)))

(declare-fun b!1213377 () Bool)

(assert (=> b!1213377 (= e!778562 tp_is_empty!6285)))

(assert (= (and b!1212988 (is-ElementMatch!3382 (regOne!7277 (regex!2112 (h!17709 rules!2728))))) b!1213377))

(assert (= (and b!1212988 (is-Concat!5563 (regOne!7277 (regex!2112 (h!17709 rules!2728))))) b!1213378))

(assert (= (and b!1212988 (is-Star!3382 (regOne!7277 (regex!2112 (h!17709 rules!2728))))) b!1213379))

(assert (= (and b!1212988 (is-Union!3382 (regOne!7277 (regex!2112 (h!17709 rules!2728))))) b!1213380))

(declare-fun b!1213383 () Bool)

(declare-fun e!778563 () Bool)

(declare-fun tp!343990 () Bool)

(assert (=> b!1213383 (= e!778563 tp!343990)))

(declare-fun b!1213382 () Bool)

(declare-fun tp!343988 () Bool)

(declare-fun tp!343989 () Bool)

(assert (=> b!1213382 (= e!778563 (and tp!343988 tp!343989))))

(declare-fun b!1213384 () Bool)

(declare-fun tp!343987 () Bool)

(declare-fun tp!343986 () Bool)

(assert (=> b!1213384 (= e!778563 (and tp!343987 tp!343986))))

(assert (=> b!1212988 (= tp!343859 e!778563)))

(declare-fun b!1213381 () Bool)

(assert (=> b!1213381 (= e!778563 tp_is_empty!6285)))

(assert (= (and b!1212988 (is-ElementMatch!3382 (regTwo!7277 (regex!2112 (h!17709 rules!2728))))) b!1213381))

(assert (= (and b!1212988 (is-Concat!5563 (regTwo!7277 (regex!2112 (h!17709 rules!2728))))) b!1213382))

(assert (= (and b!1212988 (is-Star!3382 (regTwo!7277 (regex!2112 (h!17709 rules!2728))))) b!1213383))

(assert (= (and b!1212988 (is-Union!3382 (regTwo!7277 (regex!2112 (h!17709 rules!2728))))) b!1213384))

(declare-fun b!1213387 () Bool)

(declare-fun e!778564 () Bool)

(declare-fun tp!343995 () Bool)

(assert (=> b!1213387 (= e!778564 tp!343995)))

(declare-fun b!1213386 () Bool)

(declare-fun tp!343993 () Bool)

(declare-fun tp!343994 () Bool)

(assert (=> b!1213386 (= e!778564 (and tp!343993 tp!343994))))

(declare-fun b!1213388 () Bool)

(declare-fun tp!343992 () Bool)

(declare-fun tp!343991 () Bool)

(assert (=> b!1213388 (= e!778564 (and tp!343992 tp!343991))))

(assert (=> b!1213001 (= tp!343878 e!778564)))

(declare-fun b!1213385 () Bool)

(assert (=> b!1213385 (= e!778564 tp_is_empty!6285)))

(assert (= (and b!1213001 (is-ElementMatch!3382 (regOne!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213385))

(assert (= (and b!1213001 (is-Concat!5563 (regOne!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213386))

(assert (= (and b!1213001 (is-Star!3382 (regOne!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213387))

(assert (= (and b!1213001 (is-Union!3382 (regOne!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213388))

(declare-fun b!1213391 () Bool)

(declare-fun e!778565 () Bool)

(declare-fun tp!344000 () Bool)

(assert (=> b!1213391 (= e!778565 tp!344000)))

(declare-fun b!1213390 () Bool)

(declare-fun tp!343998 () Bool)

(declare-fun tp!343999 () Bool)

(assert (=> b!1213390 (= e!778565 (and tp!343998 tp!343999))))

(declare-fun b!1213392 () Bool)

(declare-fun tp!343997 () Bool)

(declare-fun tp!343996 () Bool)

(assert (=> b!1213392 (= e!778565 (and tp!343997 tp!343996))))

(assert (=> b!1213001 (= tp!343879 e!778565)))

(declare-fun b!1213389 () Bool)

(assert (=> b!1213389 (= e!778565 tp_is_empty!6285)))

(assert (= (and b!1213001 (is-ElementMatch!3382 (regTwo!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213389))

(assert (= (and b!1213001 (is-Concat!5563 (regTwo!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213390))

(assert (= (and b!1213001 (is-Star!3382 (regTwo!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213391))

(assert (= (and b!1213001 (is-Union!3382 (regTwo!7276 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213392))

(declare-fun b!1213395 () Bool)

(declare-fun e!778566 () Bool)

(declare-fun tp!344005 () Bool)

(assert (=> b!1213395 (= e!778566 tp!344005)))

(declare-fun b!1213394 () Bool)

(declare-fun tp!344003 () Bool)

(declare-fun tp!344004 () Bool)

(assert (=> b!1213394 (= e!778566 (and tp!344003 tp!344004))))

(declare-fun b!1213396 () Bool)

(declare-fun tp!344002 () Bool)

(declare-fun tp!344001 () Bool)

(assert (=> b!1213396 (= e!778566 (and tp!344002 tp!344001))))

(assert (=> b!1213002 (= tp!343880 e!778566)))

(declare-fun b!1213393 () Bool)

(assert (=> b!1213393 (= e!778566 tp_is_empty!6285)))

(assert (= (and b!1213002 (is-ElementMatch!3382 (reg!3711 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213393))

(assert (= (and b!1213002 (is-Concat!5563 (reg!3711 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213394))

(assert (= (and b!1213002 (is-Star!3382 (reg!3711 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213395))

(assert (= (and b!1213002 (is-Union!3382 (reg!3711 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213396))

(declare-fun tp!344013 () Bool)

(declare-fun e!778572 () Bool)

(declare-fun tp!344012 () Bool)

(declare-fun b!1213405 () Bool)

(assert (=> b!1213405 (= e!778572 (and (inv!16499 (left!10673 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))) tp!344013 (inv!16499 (right!11003 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))) tp!344012))))

(declare-fun b!1213407 () Bool)

(declare-fun e!778571 () Bool)

(declare-fun tp!344014 () Bool)

(assert (=> b!1213407 (= e!778571 tp!344014)))

(declare-fun b!1213406 () Bool)

(declare-fun inv!16505 (IArray!8079) Bool)

(assert (=> b!1213406 (= e!778572 (and (inv!16505 (xs!6748 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))) e!778571))))

(assert (=> b!1212802 (= tp!343844 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556))))) e!778572))))

(assert (= (and b!1212802 (is-Node!4037 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))) b!1213405))

(assert (= b!1213406 b!1213407))

(assert (= (and b!1212802 (is-Leaf!6242 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (value!68790 (h!17710 tokens!556)))))) b!1213406))

(declare-fun m!1388497 () Bool)

(assert (=> b!1213405 m!1388497))

(declare-fun m!1388499 () Bool)

(assert (=> b!1213405 m!1388499))

(declare-fun m!1388501 () Bool)

(assert (=> b!1213406 m!1388501))

(assert (=> b!1212802 m!1387963))

(declare-fun b!1213410 () Bool)

(declare-fun e!778573 () Bool)

(declare-fun tp!344019 () Bool)

(assert (=> b!1213410 (= e!778573 tp!344019)))

(declare-fun b!1213409 () Bool)

(declare-fun tp!344017 () Bool)

(declare-fun tp!344018 () Bool)

(assert (=> b!1213409 (= e!778573 (and tp!344017 tp!344018))))

(declare-fun b!1213411 () Bool)

(declare-fun tp!344016 () Bool)

(declare-fun tp!344015 () Bool)

(assert (=> b!1213411 (= e!778573 (and tp!344016 tp!344015))))

(assert (=> b!1213003 (= tp!343877 e!778573)))

(declare-fun b!1213408 () Bool)

(assert (=> b!1213408 (= e!778573 tp_is_empty!6285)))

(assert (= (and b!1213003 (is-ElementMatch!3382 (regOne!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213408))

(assert (= (and b!1213003 (is-Concat!5563 (regOne!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213409))

(assert (= (and b!1213003 (is-Star!3382 (regOne!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213410))

(assert (= (and b!1213003 (is-Union!3382 (regOne!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213411))

(declare-fun b!1213414 () Bool)

(declare-fun e!778574 () Bool)

(declare-fun tp!344024 () Bool)

(assert (=> b!1213414 (= e!778574 tp!344024)))

(declare-fun b!1213413 () Bool)

(declare-fun tp!344022 () Bool)

(declare-fun tp!344023 () Bool)

(assert (=> b!1213413 (= e!778574 (and tp!344022 tp!344023))))

(declare-fun b!1213415 () Bool)

(declare-fun tp!344021 () Bool)

(declare-fun tp!344020 () Bool)

(assert (=> b!1213415 (= e!778574 (and tp!344021 tp!344020))))

(assert (=> b!1213003 (= tp!343876 e!778574)))

(declare-fun b!1213412 () Bool)

(assert (=> b!1213412 (= e!778574 tp_is_empty!6285)))

(assert (= (and b!1213003 (is-ElementMatch!3382 (regTwo!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213412))

(assert (= (and b!1213003 (is-Concat!5563 (regTwo!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213413))

(assert (= (and b!1213003 (is-Star!3382 (regTwo!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213414))

(assert (= (and b!1213003 (is-Union!3382 (regTwo!7277 (regex!2112 (rule!3533 (h!17710 tokens!556)))))) b!1213415))

(declare-fun b!1213416 () Bool)

(declare-fun e!778575 () Bool)

(declare-fun tp!344025 () Bool)

(assert (=> b!1213416 (= e!778575 (and tp_is_empty!6285 tp!344025))))

(assert (=> b!1213018 (= tp!343896 e!778575)))

(assert (= (and b!1213018 (is-Cons!12307 (t!112813 (originalCharacters!2666 (h!17710 tokens!556))))) b!1213416))

(declare-fun tp!344026 () Bool)

(declare-fun b!1213417 () Bool)

(declare-fun tp!344027 () Bool)

(declare-fun e!778577 () Bool)

(assert (=> b!1213417 (= e!778577 (and (inv!16499 (left!10673 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))) tp!344027 (inv!16499 (right!11003 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))) tp!344026))))

(declare-fun b!1213419 () Bool)

(declare-fun e!778576 () Bool)

(declare-fun tp!344028 () Bool)

(assert (=> b!1213419 (= e!778576 tp!344028)))

(declare-fun b!1213418 () Bool)

(assert (=> b!1213418 (= e!778577 (and (inv!16505 (xs!6748 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))) e!778576))))

(assert (=> b!1212803 (= tp!343845 (and (inv!16499 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781))))) e!778577))))

(assert (= (and b!1212803 (is-Node!4037 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))) b!1213417))

(assert (= b!1213418 b!1213419))

(assert (= (and b!1212803 (is-Leaf!6242 (c!203030 (dynLambda!5394 (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))) (value!68790 (_1!6935 lt!414781)))))) b!1213418))

(declare-fun m!1388503 () Bool)

(assert (=> b!1213417 m!1388503))

(declare-fun m!1388505 () Bool)

(assert (=> b!1213417 m!1388505))

(declare-fun m!1388507 () Bool)

(assert (=> b!1213418 m!1388507))

(assert (=> b!1212803 m!1387971))

(declare-fun b!1213422 () Bool)

(declare-fun b_free!28981 () Bool)

(declare-fun b_next!29685 () Bool)

(assert (=> b!1213422 (= b_free!28981 (not b_next!29685))))

(declare-fun tb!66603 () Bool)

(declare-fun t!112890 () Bool)

(assert (=> (and b!1213422 (= (toValue!3233 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toValue!3233 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112890) tb!66603))

(declare-fun result!80570 () Bool)

(assert (= result!80570 result!80548))

(assert (=> d!346927 t!112890))

(declare-fun tp!344029 () Bool)

(declare-fun b_and!82261 () Bool)

(assert (=> b!1213422 (= tp!344029 (and (=> t!112890 result!80570) b_and!82261))))

(declare-fun b_free!28983 () Bool)

(declare-fun b_next!29687 () Bool)

(assert (=> b!1213422 (= b_free!28983 (not b_next!29687))))

(declare-fun tb!66605 () Bool)

(declare-fun t!112892 () Bool)

(assert (=> (and b!1213422 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556))))) t!112892) tb!66605))

(declare-fun result!80572 () Bool)

(assert (= result!80572 result!80480))

(assert (=> b!1212811 t!112892))

(declare-fun tb!66607 () Bool)

(declare-fun t!112894 () Bool)

(assert (=> (and b!1213422 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556)))))) t!112894) tb!66607))

(declare-fun result!80574 () Bool)

(assert (= result!80574 result!80540))

(assert (=> b!1213268 t!112894))

(assert (=> d!346755 t!112892))

(declare-fun tb!66609 () Bool)

(declare-fun t!112896 () Bool)

(assert (=> (and b!1213422 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781))))) t!112896) tb!66609))

(declare-fun result!80576 () Bool)

(assert (= result!80576 result!80486))

(assert (=> d!346757 t!112896))

(declare-fun t!112898 () Bool)

(declare-fun tb!66611 () Bool)

(assert (=> (and b!1213422 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 (get!4048 lt!414820)))))) t!112898) tb!66611))

(declare-fun result!80578 () Bool)

(assert (= result!80578 result!80532))

(assert (=> d!346883 t!112898))

(declare-fun tp!344030 () Bool)

(declare-fun b_and!82263 () Bool)

(assert (=> b!1213422 (= tp!344030 (and (=> t!112898 result!80578) (=> t!112892 result!80572) (=> t!112894 result!80574) (=> t!112896 result!80576) b_and!82263))))

(declare-fun e!778581 () Bool)

(assert (=> b!1213422 (= e!778581 (and tp!344029 tp!344030))))

(declare-fun e!778580 () Bool)

(declare-fun b!1213421 () Bool)

(declare-fun tp!344032 () Bool)

(assert (=> b!1213421 (= e!778580 (and tp!344032 (inv!16492 (tag!2374 (h!17709 (t!112814 (t!112814 rules!2728))))) (inv!16495 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) e!778581))))

(declare-fun b!1213420 () Bool)

(declare-fun e!778578 () Bool)

(declare-fun tp!344031 () Bool)

(assert (=> b!1213420 (= e!778578 (and e!778580 tp!344031))))

(assert (=> b!1212997 (= tp!343874 e!778578)))

(assert (= b!1213421 b!1213422))

(assert (= b!1213420 b!1213421))

(assert (= (and b!1212997 (is-Cons!12308 (t!112814 (t!112814 rules!2728)))) b!1213420))

(declare-fun m!1388509 () Bool)

(assert (=> b!1213421 m!1388509))

(declare-fun m!1388511 () Bool)

(assert (=> b!1213421 m!1388511))

(declare-fun b!1213425 () Bool)

(declare-fun e!778582 () Bool)

(declare-fun tp!344037 () Bool)

(assert (=> b!1213425 (= e!778582 tp!344037)))

(declare-fun b!1213424 () Bool)

(declare-fun tp!344035 () Bool)

(declare-fun tp!344036 () Bool)

(assert (=> b!1213424 (= e!778582 (and tp!344035 tp!344036))))

(declare-fun b!1213426 () Bool)

(declare-fun tp!344034 () Bool)

(declare-fun tp!344033 () Bool)

(assert (=> b!1213426 (= e!778582 (and tp!344034 tp!344033))))

(assert (=> b!1212998 (= tp!343875 e!778582)))

(declare-fun b!1213423 () Bool)

(assert (=> b!1213423 (= e!778582 tp_is_empty!6285)))

(assert (= (and b!1212998 (is-ElementMatch!3382 (regex!2112 (h!17709 (t!112814 rules!2728))))) b!1213423))

(assert (= (and b!1212998 (is-Concat!5563 (regex!2112 (h!17709 (t!112814 rules!2728))))) b!1213424))

(assert (= (and b!1212998 (is-Star!3382 (regex!2112 (h!17709 (t!112814 rules!2728))))) b!1213425))

(assert (= (and b!1212998 (is-Union!3382 (regex!2112 (h!17709 (t!112814 rules!2728))))) b!1213426))

(declare-fun b_lambda!35801 () Bool)

(assert (= b_lambda!35797 (or (and b!1212742 b_free!28947 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))))) (and b!1213422 b_free!28983 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))))) (and b!1212734 b_free!28951 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))))) (and b!1212999 b_free!28963 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))))) (and b!1213017 b_free!28967) (and b!1213359 b_free!28979 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))))) b_lambda!35801)))

(declare-fun b_lambda!35803 () Bool)

(assert (= b_lambda!35777 (or (and b!1213359 b_free!28979 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 (t!112815 tokens!556)))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) (and b!1212742 b_free!28947 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 tokens!556)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) (and b!1213422 b_free!28983 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 (t!112814 rules!2728))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) (and b!1212999 b_free!28963 (= (toChars!3092 (transformation!2112 (h!17709 (t!112814 rules!2728)))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) (and b!1212734 b_free!28951 (= (toChars!3092 (transformation!2112 (h!17709 rules!2728))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) (and b!1213017 b_free!28967 (= (toChars!3092 (transformation!2112 (rule!3533 (h!17710 (t!112815 tokens!556))))) (toChars!3092 (transformation!2112 (rule!3533 (_1!6935 lt!414781)))))) b_lambda!35803)))

(push 1)

(assert (not b!1213356))

(assert (not d!346843))

(assert (not b!1213394))

(assert (not b!1213166))

(assert (not d!346883))

(assert (not b_next!29655))

(assert (not b!1213405))

(assert (not b!1213209))

(assert (not b!1213415))

(assert (not b!1213269))

(assert (not b!1213367))

(assert (not b!1213267))

(assert (not b!1213159))

(assert b_and!82245)

(assert (not b!1213391))

(assert (not b!1213413))

(assert (not b!1213387))

(assert (not d!346935))

(assert (not b_next!29685))

(assert b_and!82259)

(assert (not b!1213343))

(assert (not b_lambda!35799))

(assert (not bm!84512))

(assert (not b_next!29683))

(assert (not b!1213256))

(assert (not b!1213409))

(assert (not b!1213406))

(assert (not b!1213257))

(assert (not b!1213410))

(assert (not b!1213352))

(assert (not b!1213263))

(assert (not b!1213252))

(assert (not b!1213330))

(assert (not b!1213296))

(assert (not b!1213176))

(assert (not d!346913))

(assert (not b!1213417))

(assert (not b!1213184))

(assert (not b_next!29665))

(assert (not d!346929))

(assert (not b!1213366))

(assert (not b!1213416))

(assert (not b!1213245))

(assert (not bm!84514))

(assert (not b!1213308))

(assert (not b!1213199))

(assert (not d!346921))

(assert (not b!1213294))

(assert (not b_lambda!35795))

(assert (not b!1213246))

(assert (not tb!66577))

(assert (not b!1213357))

(assert (not b!1213168))

(assert (not b!1213361))

(assert (not b!1213207))

(assert (not d!346893))

(assert (not b!1213335))

(assert (not b!1213388))

(assert (not b!1213368))

(assert (not b!1213183))

(assert (not b!1213390))

(assert (not d!346901))

(assert (not b!1213185))

(assert (not tb!66585))

(assert (not b!1213299))

(assert (not d!346885))

(assert (not b!1213205))

(assert (not b!1213374))

(assert (not d!346903))

(assert (not d!346863))

(assert (not b!1213371))

(assert b_and!82253)

(assert (not d!346851))

(assert (not b!1213310))

(assert b_and!82255)

(assert (not b!1213140))

(assert b_and!82257)

(assert (not b!1213302))

(assert (not b_lambda!35781))

(assert (not d!346855))

(assert (not b!1213301))

(assert (not b!1213392))

(assert (not d!346877))

(assert (not b!1212803))

(assert (not b!1213358))

(assert (not b!1213297))

(assert (not b!1213414))

(assert (not d!346923))

(assert (not b!1213152))

(assert (not b_lambda!35783))

(assert tp_is_empty!6285)

(assert (not d!346853))

(assert (not b!1213375))

(assert (not b!1213328))

(assert (not b_next!29649))

(assert (not b!1213386))

(assert (not b_lambda!35801))

(assert (not b!1213383))

(assert (not b!1213197))

(assert b_and!82261)

(assert (not b_lambda!35803))

(assert (not b!1213270))

(assert (not b!1213298))

(assert (not b_next!29667))

(assert (not b!1213295))

(assert (not b!1213420))

(assert (not tb!66569))

(assert (not b!1213186))

(assert b_and!82241)

(assert (not d!346915))

(assert (not b!1213250))

(assert (not d!346891))

(assert (not d!346833))

(assert b_and!82249)

(assert (not bm!84519))

(assert (not b!1213418))

(assert (not d!346827))

(assert (not b_next!29687))

(assert b_and!82251)

(assert (not b!1213419))

(assert (not b!1213336))

(assert (not b!1213421))

(assert (not b!1213345))

(assert (not b!1213380))

(assert (not b!1213255))

(assert (not b!1213372))

(assert (not b_next!29669))

(assert (not b!1213379))

(assert (not b!1213316))

(assert (not d!346937))

(assert (not d!346835))

(assert b_and!82243)

(assert (not d!346947))

(assert (not b!1213265))

(assert (not b!1213242))

(assert (not d!346845))

(assert (not b!1213193))

(assert (not b!1213395))

(assert (not b!1213173))

(assert (not b!1213355))

(assert (not b_next!29681))

(assert (not b!1213155))

(assert (not bm!84520))

(assert (not b!1213156))

(assert (not b_next!29653))

(assert (not d!346939))

(assert (not b!1213426))

(assert b_and!82247)

(assert (not b!1213174))

(assert (not b!1213396))

(assert (not b!1213370))

(assert (not b!1213329))

(assert (not b!1213362))

(assert (not b!1213240))

(assert (not b!1213342))

(assert (not b!1212802))

(assert (not b!1213376))

(assert (not b!1213384))

(assert (not b!1213187))

(assert (not d!346943))

(assert (not d!346881))

(assert (not d!346831))

(assert (not b!1213181))

(assert (not bm!84513))

(assert (not b!1213241))

(assert (not b!1213424))

(assert (not b!1213382))

(assert (not b_next!29671))

(assert (not b!1213411))

(assert (not b_next!29651))

(assert (not bm!84517))

(assert (not b!1213365))

(assert (not b!1213309))

(assert (not d!346945))

(assert (not b!1213305))

(assert (not b!1213179))

(assert (not b!1213378))

(assert (not b!1213268))

(assert (not b!1213312))

(assert (not b!1213141))

(assert b_and!82263)

(assert (not b!1213363))

(assert (not b!1213304))

(assert (not b!1213425))

(assert (not b!1213407))

(assert (not d!346865))

(assert (not b!1213177))

(assert (not b!1213195))

(assert (not b!1213182))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29655))

(assert b_and!82245)

(assert (not b_next!29683))

(assert (not b_next!29665))

(assert b_and!82257)

(assert (not b_next!29649))

(assert b_and!82261)

(assert (not b_next!29667))

(assert b_and!82241)

(assert b_and!82249)

(assert (not b_next!29669))

(assert b_and!82263)

(assert (not b_next!29685))

(assert b_and!82259)

(assert b_and!82255)

(assert b_and!82253)

(assert (not b_next!29687))

(assert b_and!82251)

(assert (not b_next!29681))

(assert b_and!82243)

(assert b_and!82247)

(assert (not b_next!29653))

(assert (not b_next!29671))

(assert (not b_next!29651))

(check-sat)

(pop 1)


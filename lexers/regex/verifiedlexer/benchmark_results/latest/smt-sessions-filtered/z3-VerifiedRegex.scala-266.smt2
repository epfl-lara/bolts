; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5374 () Bool)

(assert start!5374)

(declare-fun b!74006 () Bool)

(declare-fun b_free!2265 () Bool)

(declare-fun b_next!2265 () Bool)

(assert (=> b!74006 (= b_free!2265 (not b_next!2265))))

(declare-fun tp!48660 () Bool)

(declare-fun b_and!3291 () Bool)

(assert (=> b!74006 (= tp!48660 b_and!3291)))

(declare-fun b_free!2267 () Bool)

(declare-fun b_next!2267 () Bool)

(assert (=> b!74006 (= b_free!2267 (not b_next!2267))))

(declare-fun tp!48658 () Bool)

(declare-fun b_and!3293 () Bool)

(assert (=> b!74006 (= tp!48658 b_and!3293)))

(declare-fun e!41082 () Bool)

(declare-datatypes ((C!1584 0))(
  ( (C!1585 (val!399 Int)) )
))
(declare-datatypes ((List!1218 0))(
  ( (Nil!1212) (Cons!1212 (h!6609 C!1584) (t!19921 List!1218)) )
))
(declare-datatypes ((IArray!657 0))(
  ( (IArray!658 (innerList!386 List!1218)) )
))
(declare-datatypes ((Conc!328 0))(
  ( (Node!328 (left!924 Conc!328) (right!1254 Conc!328) (csize!886 Int) (cheight!539 Int)) (Leaf!595 (xs!2907 IArray!657) (csize!887 Int)) (Empty!328) )
))
(declare-datatypes ((BalanceConc!660 0))(
  ( (BalanceConc!661 (c!19318 Conc!328)) )
))
(declare-datatypes ((Regex!331 0))(
  ( (ElementMatch!331 (c!19319 C!1584)) (Concat!584 (regOne!1174 Regex!331) (regTwo!1174 Regex!331)) (EmptyExpr!331) (Star!331 (reg!660 Regex!331)) (EmptyLang!331) (Union!331 (regOne!1175 Regex!331) (regTwo!1175 Regex!331)) )
))
(declare-datatypes ((String!1656 0))(
  ( (String!1657 (value!10365 String)) )
))
(declare-datatypes ((List!1219 0))(
  ( (Nil!1213) (Cons!1213 (h!6610 (_ BitVec 16)) (t!19922 List!1219)) )
))
(declare-datatypes ((TokenValue!253 0))(
  ( (FloatLiteralValue!506 (text!2216 List!1219)) (TokenValueExt!252 (__x!1601 Int)) (Broken!1265 (value!10366 List!1219)) (Object!258) (End!253) (Def!253) (Underscore!253) (Match!253) (Else!253) (Error!253) (Case!253) (If!253) (Extends!253) (Abstract!253) (Class!253) (Val!253) (DelimiterValue!506 (del!313 List!1219)) (KeywordValue!259 (value!10367 List!1219)) (CommentValue!506 (value!10368 List!1219)) (WhitespaceValue!506 (value!10369 List!1219)) (IndentationValue!253 (value!10370 List!1219)) (String!1658) (Int32!253) (Broken!1266 (value!10371 List!1219)) (Boolean!254) (Unit!719) (OperatorValue!256 (op!313 List!1219)) (IdentifierValue!506 (value!10372 List!1219)) (IdentifierValue!507 (value!10373 List!1219)) (WhitespaceValue!507 (value!10374 List!1219)) (True!506) (False!506) (Broken!1267 (value!10375 List!1219)) (Broken!1268 (value!10376 List!1219)) (True!507) (RightBrace!253) (RightBracket!253) (Colon!253) (Null!253) (Comma!253) (LeftBracket!253) (False!507) (LeftBrace!253) (ImaginaryLiteralValue!253 (text!2217 List!1219)) (StringLiteralValue!759 (value!10377 List!1219)) (EOFValue!253 (value!10378 List!1219)) (IdentValue!253 (value!10379 List!1219)) (DelimiterValue!507 (value!10380 List!1219)) (DedentValue!253 (value!10381 List!1219)) (NewLineValue!253 (value!10382 List!1219)) (IntegerValue!759 (value!10383 (_ BitVec 32)) (text!2218 List!1219)) (IntegerValue!760 (value!10384 Int) (text!2219 List!1219)) (Times!253) (Or!253) (Equal!253) (Minus!253) (Broken!1269 (value!10385 List!1219)) (And!253) (Div!253) (LessEqual!253) (Mod!253) (Concat!585) (Not!253) (Plus!253) (SpaceValue!253 (value!10386 List!1219)) (IntegerValue!761 (value!10387 Int) (text!2220 List!1219)) (StringLiteralValue!760 (text!2221 List!1219)) (FloatLiteralValue!507 (text!2222 List!1219)) (BytesLiteralValue!253 (value!10388 List!1219)) (CommentValue!507 (value!10389 List!1219)) (StringLiteralValue!761 (value!10390 List!1219)) (ErrorTokenValue!253 (msg!314 List!1219)) )
))
(declare-datatypes ((TokenValueInjection!330 0))(
  ( (TokenValueInjection!331 (toValue!754 Int) (toChars!613 Int)) )
))
(declare-datatypes ((Rule!326 0))(
  ( (Rule!327 (regex!263 Regex!331) (tag!441 String!1656) (isSeparator!263 Bool) (transformation!263 TokenValueInjection!330)) )
))
(declare-datatypes ((List!1220 0))(
  ( (Nil!1214) (Cons!1214 (h!6611 Rule!326) (t!19923 List!1220)) )
))
(declare-fun rules!2471 () List!1220)

(declare-fun b!74000 () Bool)

(declare-fun e!41081 () Bool)

(declare-fun tp!48661 () Bool)

(declare-fun inv!1628 (String!1656) Bool)

(declare-fun inv!1630 (TokenValueInjection!330) Bool)

(assert (=> b!74000 (= e!41082 (and tp!48661 (inv!1628 (tag!441 (h!6611 rules!2471))) (inv!1630 (transformation!263 (h!6611 rules!2471))) e!41081))))

(declare-fun res!38778 () Bool)

(declare-fun e!41084 () Bool)

(assert (=> start!5374 (=> (not res!38778) (not e!41084))))

(declare-datatypes ((LexerInterface!155 0))(
  ( (LexerInterfaceExt!152 (__x!1602 Int)) (Lexer!153) )
))
(declare-fun thiss!19403 () LexerInterface!155)

(get-info :version)

(assert (=> start!5374 (= res!38778 ((_ is Lexer!153) thiss!19403))))

(assert (=> start!5374 e!41084))

(assert (=> start!5374 true))

(declare-fun e!41077 () Bool)

(assert (=> start!5374 e!41077))

(declare-fun e!41080 () Bool)

(assert (=> start!5374 e!41080))

(declare-fun b!74001 () Bool)

(declare-fun tp_is_empty!585 () Bool)

(declare-fun tp!48662 () Bool)

(assert (=> b!74001 (= e!41080 (and tp_is_empty!585 tp!48662))))

(declare-fun b!74002 () Bool)

(declare-fun e!41079 () Bool)

(declare-fun e!41083 () Bool)

(assert (=> b!74002 (= e!41079 e!41083)))

(declare-fun res!38776 () Bool)

(assert (=> b!74002 (=> (not res!38776) (not e!41083))))

(declare-datatypes ((Token!286 0))(
  ( (Token!287 (value!10391 TokenValue!253) (rule!736 Rule!326) (size!1095 Int) (originalCharacters!314 List!1218)) )
))
(declare-datatypes ((List!1221 0))(
  ( (Nil!1215) (Cons!1215 (h!6612 Token!286) (t!19924 List!1221)) )
))
(declare-fun lt!13460 () List!1221)

(assert (=> b!74002 (= res!38776 (and (or (not ((_ is Cons!1215) lt!13460)) (not ((_ is Nil!1215) (t!19924 lt!13460)))) ((_ is Cons!1215) lt!13460)))))

(declare-datatypes ((IArray!659 0))(
  ( (IArray!660 (innerList!387 List!1221)) )
))
(declare-datatypes ((Conc!329 0))(
  ( (Node!329 (left!925 Conc!329) (right!1255 Conc!329) (csize!888 Int) (cheight!540 Int)) (Leaf!596 (xs!2908 IArray!659) (csize!889 Int)) (Empty!329) )
))
(declare-datatypes ((BalanceConc!662 0))(
  ( (BalanceConc!663 (c!19320 Conc!329)) )
))
(declare-datatypes ((tuple2!1178 0))(
  ( (tuple2!1179 (_1!796 BalanceConc!662) (_2!796 BalanceConc!660)) )
))
(declare-fun lt!13459 () tuple2!1178)

(declare-fun list!343 (BalanceConc!662) List!1221)

(assert (=> b!74002 (= lt!13460 (list!343 (_1!796 lt!13459)))))

(declare-fun b!74003 () Bool)

(assert (=> b!74003 (= e!41084 e!41079)))

(declare-fun res!38777 () Bool)

(assert (=> b!74003 (=> (not res!38777) (not e!41079))))

(declare-fun isEmpty!290 (BalanceConc!660) Bool)

(assert (=> b!74003 (= res!38777 (isEmpty!290 (_2!796 lt!13459)))))

(declare-fun input!2238 () List!1218)

(declare-fun lex!63 (LexerInterface!155 List!1220 BalanceConc!660) tuple2!1178)

(declare-fun seqFromList!51 (List!1218) BalanceConc!660)

(assert (=> b!74003 (= lt!13459 (lex!63 thiss!19403 rules!2471 (seqFromList!51 input!2238)))))

(declare-fun b!74004 () Bool)

(declare-fun res!38775 () Bool)

(assert (=> b!74004 (=> (not res!38775) (not e!41084))))

(declare-fun isEmpty!291 (List!1220) Bool)

(assert (=> b!74004 (= res!38775 (not (isEmpty!291 rules!2471)))))

(declare-fun b!74005 () Bool)

(declare-fun res!38779 () Bool)

(assert (=> b!74005 (=> (not res!38779) (not e!41084))))

(declare-fun rulesInvariant!149 (LexerInterface!155 List!1220) Bool)

(assert (=> b!74005 (= res!38779 (rulesInvariant!149 thiss!19403 rules!2471))))

(assert (=> b!74006 (= e!41081 (and tp!48660 tp!48658))))

(declare-fun b!74007 () Bool)

(declare-fun rulesValidInductive!16 (LexerInterface!155 List!1220) Bool)

(assert (=> b!74007 (= e!41083 (not (rulesValidInductive!16 thiss!19403 rules!2471)))))

(declare-fun b!74008 () Bool)

(declare-fun tp!48659 () Bool)

(assert (=> b!74008 (= e!41077 (and e!41082 tp!48659))))

(assert (= (and start!5374 res!38778) b!74004))

(assert (= (and b!74004 res!38775) b!74005))

(assert (= (and b!74005 res!38779) b!74003))

(assert (= (and b!74003 res!38777) b!74002))

(assert (= (and b!74002 res!38776) b!74007))

(assert (= b!74000 b!74006))

(assert (= b!74008 b!74000))

(assert (= (and start!5374 ((_ is Cons!1214) rules!2471)) b!74008))

(assert (= (and start!5374 ((_ is Cons!1212) input!2238)) b!74001))

(declare-fun m!45524 () Bool)

(assert (=> b!74005 m!45524))

(declare-fun m!45526 () Bool)

(assert (=> b!74002 m!45526))

(declare-fun m!45528 () Bool)

(assert (=> b!74000 m!45528))

(declare-fun m!45530 () Bool)

(assert (=> b!74000 m!45530))

(declare-fun m!45532 () Bool)

(assert (=> b!74003 m!45532))

(declare-fun m!45534 () Bool)

(assert (=> b!74003 m!45534))

(assert (=> b!74003 m!45534))

(declare-fun m!45536 () Bool)

(assert (=> b!74003 m!45536))

(declare-fun m!45538 () Bool)

(assert (=> b!74007 m!45538))

(declare-fun m!45540 () Bool)

(assert (=> b!74004 m!45540))

(check-sat (not b_next!2265) b_and!3293 (not b!74003) tp_is_empty!585 (not b_next!2267) (not b!74001) (not b!74005) (not b!74000) (not b!74002) b_and!3291 (not b!74008) (not b!74007) (not b!74004))
(check-sat b_and!3293 b_and!3291 (not b_next!2267) (not b_next!2265))
(get-model)

(declare-fun d!12873 () Bool)

(assert (=> d!12873 (= (isEmpty!291 rules!2471) ((_ is Nil!1214) rules!2471))))

(assert (=> b!74004 d!12873))

(declare-fun d!12877 () Bool)

(declare-fun res!38788 () Bool)

(declare-fun e!41087 () Bool)

(assert (=> d!12877 (=> (not res!38788) (not e!41087))))

(declare-fun rulesValid!47 (LexerInterface!155 List!1220) Bool)

(assert (=> d!12877 (= res!38788 (rulesValid!47 thiss!19403 rules!2471))))

(assert (=> d!12877 (= (rulesInvariant!149 thiss!19403 rules!2471) e!41087)))

(declare-fun b!74011 () Bool)

(declare-datatypes ((List!1223 0))(
  ( (Nil!1217) (Cons!1217 (h!6614 String!1656) (t!19926 List!1223)) )
))
(declare-fun noDuplicateTag!47 (LexerInterface!155 List!1220 List!1223) Bool)

(assert (=> b!74011 (= e!41087 (noDuplicateTag!47 thiss!19403 rules!2471 Nil!1217))))

(assert (= (and d!12877 res!38788) b!74011))

(declare-fun m!45548 () Bool)

(assert (=> d!12877 m!45548))

(declare-fun m!45550 () Bool)

(assert (=> b!74011 m!45550))

(assert (=> b!74005 d!12877))

(declare-fun d!12879 () Bool)

(assert (=> d!12879 (= (inv!1628 (tag!441 (h!6611 rules!2471))) (= (mod (str.len (value!10365 (tag!441 (h!6611 rules!2471)))) 2) 0))))

(assert (=> b!74000 d!12879))

(declare-fun d!12881 () Bool)

(declare-fun res!38791 () Bool)

(declare-fun e!41090 () Bool)

(assert (=> d!12881 (=> (not res!38791) (not e!41090))))

(declare-fun semiInverseModEq!39 (Int Int) Bool)

(assert (=> d!12881 (= res!38791 (semiInverseModEq!39 (toChars!613 (transformation!263 (h!6611 rules!2471))) (toValue!754 (transformation!263 (h!6611 rules!2471)))))))

(assert (=> d!12881 (= (inv!1630 (transformation!263 (h!6611 rules!2471))) e!41090)))

(declare-fun b!74014 () Bool)

(declare-fun equivClasses!35 (Int Int) Bool)

(assert (=> b!74014 (= e!41090 (equivClasses!35 (toChars!613 (transformation!263 (h!6611 rules!2471))) (toValue!754 (transformation!263 (h!6611 rules!2471)))))))

(assert (= (and d!12881 res!38791) b!74014))

(declare-fun m!45552 () Bool)

(assert (=> d!12881 m!45552))

(declare-fun m!45554 () Bool)

(assert (=> b!74014 m!45554))

(assert (=> b!74000 d!12881))

(declare-fun d!12883 () Bool)

(assert (=> d!12883 true))

(declare-fun lt!13472 () Bool)

(declare-fun lambda!1307 () Int)

(declare-fun forall!175 (List!1220 Int) Bool)

(assert (=> d!12883 (= lt!13472 (forall!175 rules!2471 lambda!1307))))

(declare-fun e!41135 () Bool)

(assert (=> d!12883 (= lt!13472 e!41135)))

(declare-fun res!38817 () Bool)

(assert (=> d!12883 (=> res!38817 e!41135)))

(assert (=> d!12883 (= res!38817 (not ((_ is Cons!1214) rules!2471)))))

(assert (=> d!12883 (= (rulesValidInductive!16 thiss!19403 rules!2471) lt!13472)))

(declare-fun b!74078 () Bool)

(declare-fun e!41134 () Bool)

(assert (=> b!74078 (= e!41135 e!41134)))

(declare-fun res!38818 () Bool)

(assert (=> b!74078 (=> (not res!38818) (not e!41134))))

(declare-fun ruleValid!7 (LexerInterface!155 Rule!326) Bool)

(assert (=> b!74078 (= res!38818 (ruleValid!7 thiss!19403 (h!6611 rules!2471)))))

(declare-fun b!74079 () Bool)

(assert (=> b!74079 (= e!41134 (rulesValidInductive!16 thiss!19403 (t!19923 rules!2471)))))

(assert (= (and d!12883 (not res!38817)) b!74078))

(assert (= (and b!74078 res!38818) b!74079))

(declare-fun m!45596 () Bool)

(assert (=> d!12883 m!45596))

(declare-fun m!45598 () Bool)

(assert (=> b!74078 m!45598))

(declare-fun m!45600 () Bool)

(assert (=> b!74079 m!45600))

(assert (=> b!74007 d!12883))

(declare-fun d!12899 () Bool)

(declare-fun list!346 (Conc!329) List!1221)

(assert (=> d!12899 (= (list!343 (_1!796 lt!13459)) (list!346 (c!19320 (_1!796 lt!13459))))))

(declare-fun bs!7746 () Bool)

(assert (= bs!7746 d!12899))

(declare-fun m!45602 () Bool)

(assert (=> bs!7746 m!45602))

(assert (=> b!74002 d!12899))

(declare-fun d!12901 () Bool)

(declare-fun lt!13475 () Bool)

(declare-fun isEmpty!295 (List!1218) Bool)

(declare-fun list!347 (BalanceConc!660) List!1218)

(assert (=> d!12901 (= lt!13475 (isEmpty!295 (list!347 (_2!796 lt!13459))))))

(declare-fun isEmpty!296 (Conc!328) Bool)

(assert (=> d!12901 (= lt!13475 (isEmpty!296 (c!19318 (_2!796 lt!13459))))))

(assert (=> d!12901 (= (isEmpty!290 (_2!796 lt!13459)) lt!13475)))

(declare-fun bs!7747 () Bool)

(assert (= bs!7747 d!12901))

(declare-fun m!45604 () Bool)

(assert (=> bs!7747 m!45604))

(assert (=> bs!7747 m!45604))

(declare-fun m!45606 () Bool)

(assert (=> bs!7747 m!45606))

(declare-fun m!45608 () Bool)

(assert (=> bs!7747 m!45608))

(assert (=> b!74003 d!12901))

(declare-fun b!74092 () Bool)

(declare-fun res!38825 () Bool)

(declare-fun e!41142 () Bool)

(assert (=> b!74092 (=> (not res!38825) (not e!41142))))

(declare-fun lt!13478 () tuple2!1178)

(declare-datatypes ((tuple2!1182 0))(
  ( (tuple2!1183 (_1!798 List!1221) (_2!798 List!1218)) )
))
(declare-fun lexList!28 (LexerInterface!155 List!1220 List!1218) tuple2!1182)

(assert (=> b!74092 (= res!38825 (= (list!343 (_1!796 lt!13478)) (_1!798 (lexList!28 thiss!19403 rules!2471 (list!347 (seqFromList!51 input!2238))))))))

(declare-fun b!74093 () Bool)

(declare-fun e!41144 () Bool)

(assert (=> b!74093 (= e!41144 (= (_2!796 lt!13478) (seqFromList!51 input!2238)))))

(declare-fun b!74094 () Bool)

(declare-fun e!41143 () Bool)

(declare-fun isEmpty!297 (BalanceConc!662) Bool)

(assert (=> b!74094 (= e!41143 (not (isEmpty!297 (_1!796 lt!13478))))))

(declare-fun b!74095 () Bool)

(assert (=> b!74095 (= e!41142 (= (list!347 (_2!796 lt!13478)) (_2!798 (lexList!28 thiss!19403 rules!2471 (list!347 (seqFromList!51 input!2238))))))))

(declare-fun d!12903 () Bool)

(assert (=> d!12903 e!41142))

(declare-fun res!38827 () Bool)

(assert (=> d!12903 (=> (not res!38827) (not e!41142))))

(assert (=> d!12903 (= res!38827 e!41144)))

(declare-fun c!19326 () Bool)

(declare-fun size!1098 (BalanceConc!662) Int)

(assert (=> d!12903 (= c!19326 (> (size!1098 (_1!796 lt!13478)) 0))))

(declare-fun lexTailRecV2!25 (LexerInterface!155 List!1220 BalanceConc!660 BalanceConc!660 BalanceConc!660 BalanceConc!662) tuple2!1178)

(assert (=> d!12903 (= lt!13478 (lexTailRecV2!25 thiss!19403 rules!2471 (seqFromList!51 input!2238) (BalanceConc!661 Empty!328) (seqFromList!51 input!2238) (BalanceConc!663 Empty!329)))))

(assert (=> d!12903 (= (lex!63 thiss!19403 rules!2471 (seqFromList!51 input!2238)) lt!13478)))

(declare-fun b!74096 () Bool)

(assert (=> b!74096 (= e!41144 e!41143)))

(declare-fun res!38826 () Bool)

(declare-fun size!1099 (BalanceConc!660) Int)

(assert (=> b!74096 (= res!38826 (< (size!1099 (_2!796 lt!13478)) (size!1099 (seqFromList!51 input!2238))))))

(assert (=> b!74096 (=> (not res!38826) (not e!41143))))

(assert (= (and d!12903 c!19326) b!74096))

(assert (= (and d!12903 (not c!19326)) b!74093))

(assert (= (and b!74096 res!38826) b!74094))

(assert (= (and d!12903 res!38827) b!74092))

(assert (= (and b!74092 res!38825) b!74095))

(declare-fun m!45610 () Bool)

(assert (=> d!12903 m!45610))

(assert (=> d!12903 m!45534))

(assert (=> d!12903 m!45534))

(declare-fun m!45612 () Bool)

(assert (=> d!12903 m!45612))

(declare-fun m!45614 () Bool)

(assert (=> b!74095 m!45614))

(assert (=> b!74095 m!45534))

(declare-fun m!45616 () Bool)

(assert (=> b!74095 m!45616))

(assert (=> b!74095 m!45616))

(declare-fun m!45618 () Bool)

(assert (=> b!74095 m!45618))

(declare-fun m!45620 () Bool)

(assert (=> b!74092 m!45620))

(assert (=> b!74092 m!45534))

(assert (=> b!74092 m!45616))

(assert (=> b!74092 m!45616))

(assert (=> b!74092 m!45618))

(declare-fun m!45622 () Bool)

(assert (=> b!74094 m!45622))

(declare-fun m!45624 () Bool)

(assert (=> b!74096 m!45624))

(assert (=> b!74096 m!45534))

(declare-fun m!45626 () Bool)

(assert (=> b!74096 m!45626))

(assert (=> b!74003 d!12903))

(declare-fun d!12905 () Bool)

(declare-fun fromListB!18 (List!1218) BalanceConc!660)

(assert (=> d!12905 (= (seqFromList!51 input!2238) (fromListB!18 input!2238))))

(declare-fun bs!7748 () Bool)

(assert (= bs!7748 d!12905))

(declare-fun m!45628 () Bool)

(assert (=> bs!7748 m!45628))

(assert (=> b!74003 d!12905))

(declare-fun b!74107 () Bool)

(declare-fun e!41147 () Bool)

(assert (=> b!74107 (= e!41147 tp_is_empty!585)))

(assert (=> b!74000 (= tp!48661 e!41147)))

(declare-fun b!74109 () Bool)

(declare-fun tp!48704 () Bool)

(assert (=> b!74109 (= e!41147 tp!48704)))

(declare-fun b!74110 () Bool)

(declare-fun tp!48706 () Bool)

(declare-fun tp!48707 () Bool)

(assert (=> b!74110 (= e!41147 (and tp!48706 tp!48707))))

(declare-fun b!74108 () Bool)

(declare-fun tp!48703 () Bool)

(declare-fun tp!48705 () Bool)

(assert (=> b!74108 (= e!41147 (and tp!48703 tp!48705))))

(assert (= (and b!74000 ((_ is ElementMatch!331) (regex!263 (h!6611 rules!2471)))) b!74107))

(assert (= (and b!74000 ((_ is Concat!584) (regex!263 (h!6611 rules!2471)))) b!74108))

(assert (= (and b!74000 ((_ is Star!331) (regex!263 (h!6611 rules!2471)))) b!74109))

(assert (= (and b!74000 ((_ is Union!331) (regex!263 (h!6611 rules!2471)))) b!74110))

(declare-fun b!74115 () Bool)

(declare-fun e!41150 () Bool)

(declare-fun tp!48710 () Bool)

(assert (=> b!74115 (= e!41150 (and tp_is_empty!585 tp!48710))))

(assert (=> b!74001 (= tp!48662 e!41150)))

(assert (= (and b!74001 ((_ is Cons!1212) (t!19921 input!2238))) b!74115))

(declare-fun b!74126 () Bool)

(declare-fun b_free!2273 () Bool)

(declare-fun b_next!2273 () Bool)

(assert (=> b!74126 (= b_free!2273 (not b_next!2273))))

(declare-fun tp!48722 () Bool)

(declare-fun b_and!3299 () Bool)

(assert (=> b!74126 (= tp!48722 b_and!3299)))

(declare-fun b_free!2275 () Bool)

(declare-fun b_next!2275 () Bool)

(assert (=> b!74126 (= b_free!2275 (not b_next!2275))))

(declare-fun tp!48719 () Bool)

(declare-fun b_and!3301 () Bool)

(assert (=> b!74126 (= tp!48719 b_and!3301)))

(declare-fun e!41161 () Bool)

(assert (=> b!74126 (= e!41161 (and tp!48722 tp!48719))))

(declare-fun tp!48721 () Bool)

(declare-fun b!74125 () Bool)

(declare-fun e!41160 () Bool)

(assert (=> b!74125 (= e!41160 (and tp!48721 (inv!1628 (tag!441 (h!6611 (t!19923 rules!2471)))) (inv!1630 (transformation!263 (h!6611 (t!19923 rules!2471)))) e!41161))))

(declare-fun b!74124 () Bool)

(declare-fun e!41162 () Bool)

(declare-fun tp!48720 () Bool)

(assert (=> b!74124 (= e!41162 (and e!41160 tp!48720))))

(assert (=> b!74008 (= tp!48659 e!41162)))

(assert (= b!74125 b!74126))

(assert (= b!74124 b!74125))

(assert (= (and b!74008 ((_ is Cons!1214) (t!19923 rules!2471))) b!74124))

(declare-fun m!45630 () Bool)

(assert (=> b!74125 m!45630))

(declare-fun m!45632 () Bool)

(assert (=> b!74125 m!45632))

(check-sat b_and!3299 (not d!12901) (not b_next!2265) (not b!74108) (not b!74092) b_and!3301 tp_is_empty!585 (not d!12877) (not b!74078) (not b!74124) (not d!12883) (not d!12905) (not b!74095) (not b!74125) (not d!12881) (not b!74115) b_and!3291 (not b!74110) (not b!74079) b_and!3293 (not b!74011) (not b_next!2275) (not b!74096) (not d!12903) (not b!74094) (not b_next!2273) (not b_next!2267) (not b!74109) (not b!74014) (not d!12899))
(check-sat b_and!3299 b_and!3291 (not b_next!2265) b_and!3301 b_and!3293 (not b_next!2275) (not b_next!2273) (not b_next!2267))
(get-model)

(declare-fun d!12931 () Bool)

(assert (=> d!12931 true))

(declare-fun lambda!1317 () Int)

(declare-fun order!455 () Int)

(declare-fun order!453 () Int)

(declare-fun dynLambda!275 (Int Int) Int)

(declare-fun dynLambda!276 (Int Int) Int)

(assert (=> d!12931 (< (dynLambda!275 order!453 (toChars!613 (transformation!263 (h!6611 rules!2471)))) (dynLambda!276 order!455 lambda!1317))))

(assert (=> d!12931 true))

(declare-fun order!457 () Int)

(declare-fun dynLambda!277 (Int Int) Int)

(assert (=> d!12931 (< (dynLambda!277 order!457 (toValue!754 (transformation!263 (h!6611 rules!2471)))) (dynLambda!276 order!455 lambda!1317))))

(declare-fun Forall!31 (Int) Bool)

(assert (=> d!12931 (= (semiInverseModEq!39 (toChars!613 (transformation!263 (h!6611 rules!2471))) (toValue!754 (transformation!263 (h!6611 rules!2471)))) (Forall!31 lambda!1317))))

(declare-fun bs!7756 () Bool)

(assert (= bs!7756 d!12931))

(declare-fun m!45692 () Bool)

(assert (=> bs!7756 m!45692))

(assert (=> d!12881 d!12931))

(declare-fun d!12939 () Bool)

(assert (=> d!12939 true))

(declare-fun lambda!1320 () Int)

(declare-fun order!459 () Int)

(declare-fun dynLambda!278 (Int Int) Int)

(assert (=> d!12939 (< (dynLambda!277 order!457 (toValue!754 (transformation!263 (h!6611 rules!2471)))) (dynLambda!278 order!459 lambda!1320))))

(declare-fun Forall2!19 (Int) Bool)

(assert (=> d!12939 (= (equivClasses!35 (toChars!613 (transformation!263 (h!6611 rules!2471))) (toValue!754 (transformation!263 (h!6611 rules!2471)))) (Forall2!19 lambda!1320))))

(declare-fun bs!7760 () Bool)

(assert (= bs!7760 d!12939))

(declare-fun m!45704 () Bool)

(assert (=> bs!7760 m!45704))

(assert (=> b!74014 d!12939))

(declare-fun bs!7764 () Bool)

(declare-fun d!12949 () Bool)

(assert (= bs!7764 (and d!12949 d!12883)))

(declare-fun lambda!1326 () Int)

(assert (=> bs!7764 (= lambda!1326 lambda!1307)))

(assert (=> d!12949 true))

(declare-fun lt!13507 () Bool)

(assert (=> d!12949 (= lt!13507 (rulesValidInductive!16 thiss!19403 rules!2471))))

(assert (=> d!12949 (= lt!13507 (forall!175 rules!2471 lambda!1326))))

(assert (=> d!12949 (= (rulesValid!47 thiss!19403 rules!2471) lt!13507)))

(declare-fun bs!7765 () Bool)

(assert (= bs!7765 d!12949))

(assert (=> bs!7765 m!45538))

(declare-fun m!45708 () Bool)

(assert (=> bs!7765 m!45708))

(assert (=> d!12877 d!12949))

(declare-fun d!12953 () Bool)

(declare-fun c!19344 () Bool)

(assert (=> d!12953 (= c!19344 ((_ is Empty!329) (c!19320 (_1!796 lt!13459))))))

(declare-fun e!41207 () List!1221)

(assert (=> d!12953 (= (list!346 (c!19320 (_1!796 lt!13459))) e!41207)))

(declare-fun b!74204 () Bool)

(declare-fun e!41208 () List!1221)

(declare-fun list!350 (IArray!659) List!1221)

(assert (=> b!74204 (= e!41208 (list!350 (xs!2908 (c!19320 (_1!796 lt!13459)))))))

(declare-fun b!74202 () Bool)

(assert (=> b!74202 (= e!41207 Nil!1215)))

(declare-fun b!74203 () Bool)

(assert (=> b!74203 (= e!41207 e!41208)))

(declare-fun c!19345 () Bool)

(assert (=> b!74203 (= c!19345 ((_ is Leaf!596) (c!19320 (_1!796 lt!13459))))))

(declare-fun b!74205 () Bool)

(declare-fun ++!76 (List!1221 List!1221) List!1221)

(assert (=> b!74205 (= e!41208 (++!76 (list!346 (left!925 (c!19320 (_1!796 lt!13459)))) (list!346 (right!1255 (c!19320 (_1!796 lt!13459))))))))

(assert (= (and d!12953 c!19344) b!74202))

(assert (= (and d!12953 (not c!19344)) b!74203))

(assert (= (and b!74203 c!19345) b!74204))

(assert (= (and b!74203 (not c!19345)) b!74205))

(declare-fun m!45720 () Bool)

(assert (=> b!74204 m!45720))

(declare-fun m!45722 () Bool)

(assert (=> b!74205 m!45722))

(declare-fun m!45724 () Bool)

(assert (=> b!74205 m!45724))

(assert (=> b!74205 m!45722))

(assert (=> b!74205 m!45724))

(declare-fun m!45726 () Bool)

(assert (=> b!74205 m!45726))

(assert (=> d!12899 d!12953))

(declare-fun bs!7768 () Bool)

(declare-fun d!12961 () Bool)

(assert (= bs!7768 (and d!12961 d!12883)))

(declare-fun lambda!1327 () Int)

(assert (=> bs!7768 (= lambda!1327 lambda!1307)))

(declare-fun bs!7769 () Bool)

(assert (= bs!7769 (and d!12961 d!12949)))

(assert (=> bs!7769 (= lambda!1327 lambda!1326)))

(assert (=> d!12961 true))

(declare-fun lt!13511 () Bool)

(assert (=> d!12961 (= lt!13511 (forall!175 (t!19923 rules!2471) lambda!1327))))

(declare-fun e!41210 () Bool)

(assert (=> d!12961 (= lt!13511 e!41210)))

(declare-fun res!38867 () Bool)

(assert (=> d!12961 (=> res!38867 e!41210)))

(assert (=> d!12961 (= res!38867 (not ((_ is Cons!1214) (t!19923 rules!2471))))))

(assert (=> d!12961 (= (rulesValidInductive!16 thiss!19403 (t!19923 rules!2471)) lt!13511)))

(declare-fun b!74206 () Bool)

(declare-fun e!41209 () Bool)

(assert (=> b!74206 (= e!41210 e!41209)))

(declare-fun res!38868 () Bool)

(assert (=> b!74206 (=> (not res!38868) (not e!41209))))

(assert (=> b!74206 (= res!38868 (ruleValid!7 thiss!19403 (h!6611 (t!19923 rules!2471))))))

(declare-fun b!74207 () Bool)

(assert (=> b!74207 (= e!41209 (rulesValidInductive!16 thiss!19403 (t!19923 (t!19923 rules!2471))))))

(assert (= (and d!12961 (not res!38867)) b!74206))

(assert (= (and b!74206 res!38868) b!74207))

(declare-fun m!45728 () Bool)

(assert (=> d!12961 m!45728))

(declare-fun m!45730 () Bool)

(assert (=> b!74206 m!45730))

(declare-fun m!45732 () Bool)

(assert (=> b!74207 m!45732))

(assert (=> b!74079 d!12961))

(declare-fun d!12963 () Bool)

(declare-fun lt!13514 () Int)

(declare-fun size!1103 (List!1221) Int)

(assert (=> d!12963 (= lt!13514 (size!1103 (list!343 (_1!796 lt!13478))))))

(declare-fun size!1104 (Conc!329) Int)

(assert (=> d!12963 (= lt!13514 (size!1104 (c!19320 (_1!796 lt!13478))))))

(assert (=> d!12963 (= (size!1098 (_1!796 lt!13478)) lt!13514)))

(declare-fun bs!7770 () Bool)

(assert (= bs!7770 d!12963))

(assert (=> bs!7770 m!45620))

(assert (=> bs!7770 m!45620))

(declare-fun m!45734 () Bool)

(assert (=> bs!7770 m!45734))

(declare-fun m!45736 () Bool)

(assert (=> bs!7770 m!45736))

(assert (=> d!12903 d!12963))

(declare-datatypes ((tuple2!1186 0))(
  ( (tuple2!1187 (_1!800 Token!286) (_2!800 BalanceConc!660)) )
))
(declare-datatypes ((Option!70 0))(
  ( (None!69) (Some!69 (v!12708 tuple2!1186)) )
))
(declare-fun lt!13691 () Option!70)

(declare-fun lt!13706 () tuple2!1178)

(declare-fun b!74243 () Bool)

(declare-fun lexRec!13 (LexerInterface!155 List!1220 BalanceConc!660) tuple2!1178)

(assert (=> b!74243 (= lt!13706 (lexRec!13 thiss!19403 rules!2471 (_2!800 (v!12708 lt!13691))))))

(declare-fun e!41234 () tuple2!1178)

(declare-fun prepend!19 (BalanceConc!662 Token!286) BalanceConc!662)

(assert (=> b!74243 (= e!41234 (tuple2!1179 (prepend!19 (_1!796 lt!13706) (_1!800 (v!12708 lt!13691))) (_2!796 lt!13706)))))

(declare-fun b!74244 () Bool)

(declare-fun lt!13716 () BalanceConc!660)

(assert (=> b!74244 (= e!41234 (tuple2!1179 (BalanceConc!663 Empty!329) lt!13716))))

(declare-fun b!74246 () Bool)

(declare-fun e!41232 () tuple2!1178)

(assert (=> b!74246 (= e!41232 (tuple2!1179 (BalanceConc!663 Empty!329) (seqFromList!51 input!2238)))))

(declare-fun b!74247 () Bool)

(declare-fun e!41233 () tuple2!1178)

(assert (=> b!74247 (= e!41233 (tuple2!1179 (BalanceConc!663 Empty!329) (seqFromList!51 input!2238)))))

(declare-fun lt!13694 () tuple2!1178)

(declare-fun e!41231 () Bool)

(declare-fun b!74248 () Bool)

(assert (=> b!74248 (= e!41231 (= (list!347 (_2!796 lt!13694)) (list!347 (_2!796 (lexRec!13 thiss!19403 rules!2471 (seqFromList!51 input!2238))))))))

(declare-fun b!74249 () Bool)

(declare-fun lt!13695 () tuple2!1178)

(declare-fun lt!13710 () Option!70)

(assert (=> b!74249 (= lt!13695 (lexRec!13 thiss!19403 rules!2471 (_2!800 (v!12708 lt!13710))))))

(assert (=> b!74249 (= e!41233 (tuple2!1179 (prepend!19 (_1!796 lt!13695) (_1!800 (v!12708 lt!13710))) (_2!796 lt!13695)))))

(declare-fun d!12965 () Bool)

(assert (=> d!12965 e!41231))

(declare-fun res!38874 () Bool)

(assert (=> d!12965 (=> (not res!38874) (not e!41231))))

(assert (=> d!12965 (= res!38874 (= (list!343 (_1!796 lt!13694)) (list!343 (_1!796 (lexRec!13 thiss!19403 rules!2471 (seqFromList!51 input!2238))))))))

(assert (=> d!12965 (= lt!13694 e!41232)))

(declare-fun c!19363 () Bool)

(declare-fun lt!13715 () Option!70)

(assert (=> d!12965 (= c!19363 ((_ is Some!69) lt!13715))))

(declare-fun maxPrefixZipperSequenceV2!8 (LexerInterface!155 List!1220 BalanceConc!660 BalanceConc!660) Option!70)

(assert (=> d!12965 (= lt!13715 (maxPrefixZipperSequenceV2!8 thiss!19403 rules!2471 (seqFromList!51 input!2238) (seqFromList!51 input!2238)))))

(declare-datatypes ((Unit!720 0))(
  ( (Unit!721) )
))
(declare-fun lt!13718 () Unit!720)

(declare-fun lt!13687 () Unit!720)

(assert (=> d!12965 (= lt!13718 lt!13687)))

(declare-fun lt!13701 () List!1218)

(declare-fun lt!13713 () List!1218)

(declare-fun isSuffix!8 (List!1218 List!1218) Bool)

(declare-fun ++!77 (List!1218 List!1218) List!1218)

(assert (=> d!12965 (isSuffix!8 lt!13701 (++!77 lt!13713 lt!13701))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!8 (List!1218 List!1218) Unit!720)

(assert (=> d!12965 (= lt!13687 (lemmaConcatTwoListThenFSndIsSuffix!8 lt!13713 lt!13701))))

(assert (=> d!12965 (= lt!13701 (list!347 (seqFromList!51 input!2238)))))

(assert (=> d!12965 (= lt!13713 (list!347 (BalanceConc!661 Empty!328)))))

(assert (=> d!12965 (= (lexTailRecV2!25 thiss!19403 rules!2471 (seqFromList!51 input!2238) (BalanceConc!661 Empty!328) (seqFromList!51 input!2238) (BalanceConc!663 Empty!329)) lt!13694)))

(declare-fun b!74245 () Bool)

(declare-fun lt!13689 () BalanceConc!660)

(declare-fun append!14 (BalanceConc!662 Token!286) BalanceConc!662)

(assert (=> b!74245 (= e!41232 (lexTailRecV2!25 thiss!19403 rules!2471 (seqFromList!51 input!2238) lt!13689 (_2!800 (v!12708 lt!13715)) (append!14 (BalanceConc!663 Empty!329) (_1!800 (v!12708 lt!13715)))))))

(declare-fun lt!13698 () tuple2!1178)

(assert (=> b!74245 (= lt!13698 (lexRec!13 thiss!19403 rules!2471 (_2!800 (v!12708 lt!13715))))))

(declare-fun lt!13712 () List!1218)

(assert (=> b!74245 (= lt!13712 (list!347 (BalanceConc!661 Empty!328)))))

(declare-fun lt!13690 () List!1218)

(declare-fun charsOf!23 (Token!286) BalanceConc!660)

(assert (=> b!74245 (= lt!13690 (list!347 (charsOf!23 (_1!800 (v!12708 lt!13715)))))))

(declare-fun lt!13692 () List!1218)

(assert (=> b!74245 (= lt!13692 (list!347 (_2!800 (v!12708 lt!13715))))))

(declare-fun lt!13704 () Unit!720)

(declare-fun lemmaConcatAssociativity!20 (List!1218 List!1218 List!1218) Unit!720)

(assert (=> b!74245 (= lt!13704 (lemmaConcatAssociativity!20 lt!13712 lt!13690 lt!13692))))

(assert (=> b!74245 (= (++!77 (++!77 lt!13712 lt!13690) lt!13692) (++!77 lt!13712 (++!77 lt!13690 lt!13692)))))

(declare-fun lt!13714 () Unit!720)

(assert (=> b!74245 (= lt!13714 lt!13704)))

(declare-fun maxPrefixZipperSequence!11 (LexerInterface!155 List!1220 BalanceConc!660) Option!70)

(assert (=> b!74245 (= lt!13710 (maxPrefixZipperSequence!11 thiss!19403 rules!2471 (seqFromList!51 input!2238)))))

(declare-fun c!19361 () Bool)

(assert (=> b!74245 (= c!19361 ((_ is Some!69) lt!13710))))

(assert (=> b!74245 (= (lexRec!13 thiss!19403 rules!2471 (seqFromList!51 input!2238)) e!41233)))

(declare-fun lt!13697 () Unit!720)

(declare-fun Unit!722 () Unit!720)

(assert (=> b!74245 (= lt!13697 Unit!722)))

(declare-fun lt!13696 () List!1221)

(assert (=> b!74245 (= lt!13696 (list!343 (BalanceConc!663 Empty!329)))))

(declare-fun lt!13688 () List!1221)

(assert (=> b!74245 (= lt!13688 (Cons!1215 (_1!800 (v!12708 lt!13715)) Nil!1215))))

(declare-fun lt!13707 () List!1221)

(assert (=> b!74245 (= lt!13707 (list!343 (_1!796 lt!13698)))))

(declare-fun lt!13709 () Unit!720)

(declare-fun lemmaConcatAssociativity!21 (List!1221 List!1221 List!1221) Unit!720)

(assert (=> b!74245 (= lt!13709 (lemmaConcatAssociativity!21 lt!13696 lt!13688 lt!13707))))

(assert (=> b!74245 (= (++!76 (++!76 lt!13696 lt!13688) lt!13707) (++!76 lt!13696 (++!76 lt!13688 lt!13707)))))

(declare-fun lt!13699 () Unit!720)

(assert (=> b!74245 (= lt!13699 lt!13709)))

(declare-fun lt!13705 () List!1218)

(assert (=> b!74245 (= lt!13705 (++!77 (list!347 (BalanceConc!661 Empty!328)) (list!347 (charsOf!23 (_1!800 (v!12708 lt!13715))))))))

(declare-fun lt!13685 () List!1218)

(assert (=> b!74245 (= lt!13685 (list!347 (_2!800 (v!12708 lt!13715))))))

(declare-fun lt!13708 () List!1221)

(assert (=> b!74245 (= lt!13708 (list!343 (append!14 (BalanceConc!663 Empty!329) (_1!800 (v!12708 lt!13715)))))))

(declare-fun lt!13702 () Unit!720)

(declare-fun lemmaLexThenLexPrefix!8 (LexerInterface!155 List!1220 List!1218 List!1218 List!1221 List!1221 List!1218) Unit!720)

(assert (=> b!74245 (= lt!13702 (lemmaLexThenLexPrefix!8 thiss!19403 rules!2471 lt!13705 lt!13685 lt!13708 (list!343 (_1!796 lt!13698)) (list!347 (_2!796 lt!13698))))))

(assert (=> b!74245 (= (lexList!28 thiss!19403 rules!2471 lt!13705) (tuple2!1183 lt!13708 Nil!1212))))

(declare-fun lt!13711 () Unit!720)

(assert (=> b!74245 (= lt!13711 lt!13702)))

(declare-fun ++!78 (BalanceConc!660 BalanceConc!660) BalanceConc!660)

(assert (=> b!74245 (= lt!13716 (++!78 (BalanceConc!661 Empty!328) (charsOf!23 (_1!800 (v!12708 lt!13715)))))))

(assert (=> b!74245 (= lt!13691 (maxPrefixZipperSequence!11 thiss!19403 rules!2471 lt!13716))))

(declare-fun c!19362 () Bool)

(assert (=> b!74245 (= c!19362 ((_ is Some!69) lt!13691))))

(assert (=> b!74245 (= (lexRec!13 thiss!19403 rules!2471 (++!78 (BalanceConc!661 Empty!328) (charsOf!23 (_1!800 (v!12708 lt!13715))))) e!41234)))

(declare-fun lt!13703 () Unit!720)

(declare-fun Unit!725 () Unit!720)

(assert (=> b!74245 (= lt!13703 Unit!725)))

(assert (=> b!74245 (= lt!13689 (++!78 (BalanceConc!661 Empty!328) (charsOf!23 (_1!800 (v!12708 lt!13715)))))))

(declare-fun lt!13700 () List!1218)

(assert (=> b!74245 (= lt!13700 (list!347 lt!13689))))

(declare-fun lt!13693 () List!1218)

(assert (=> b!74245 (= lt!13693 (list!347 (_2!800 (v!12708 lt!13715))))))

(declare-fun lt!13717 () Unit!720)

(assert (=> b!74245 (= lt!13717 (lemmaConcatTwoListThenFSndIsSuffix!8 lt!13700 lt!13693))))

(assert (=> b!74245 (isSuffix!8 lt!13693 (++!77 lt!13700 lt!13693))))

(declare-fun lt!13686 () Unit!720)

(assert (=> b!74245 (= lt!13686 lt!13717)))

(assert (= (and d!12965 c!19363) b!74245))

(assert (= (and d!12965 (not c!19363)) b!74246))

(assert (= (and b!74245 c!19361) b!74249))

(assert (= (and b!74245 (not c!19361)) b!74247))

(assert (= (and b!74245 c!19362) b!74243))

(assert (= (and b!74245 (not c!19362)) b!74244))

(assert (= (and d!12965 res!38874) b!74248))

(declare-fun m!45828 () Bool)

(assert (=> b!74245 m!45828))

(declare-fun m!45830 () Bool)

(assert (=> b!74245 m!45830))

(declare-fun m!45832 () Bool)

(assert (=> b!74245 m!45832))

(declare-fun m!45834 () Bool)

(assert (=> b!74245 m!45834))

(declare-fun m!45836 () Bool)

(assert (=> b!74245 m!45836))

(declare-fun m!45838 () Bool)

(assert (=> b!74245 m!45838))

(assert (=> b!74245 m!45832))

(declare-fun m!45840 () Bool)

(assert (=> b!74245 m!45840))

(declare-fun m!45842 () Bool)

(assert (=> b!74245 m!45842))

(declare-fun m!45844 () Bool)

(assert (=> b!74245 m!45844))

(declare-fun m!45846 () Bool)

(assert (=> b!74245 m!45846))

(declare-fun m!45848 () Bool)

(assert (=> b!74245 m!45848))

(assert (=> b!74245 m!45836))

(declare-fun m!45850 () Bool)

(assert (=> b!74245 m!45850))

(declare-fun m!45852 () Bool)

(assert (=> b!74245 m!45852))

(declare-fun m!45854 () Bool)

(assert (=> b!74245 m!45854))

(assert (=> b!74245 m!45848))

(assert (=> b!74245 m!45852))

(declare-fun m!45856 () Bool)

(assert (=> b!74245 m!45856))

(declare-fun m!45858 () Bool)

(assert (=> b!74245 m!45858))

(assert (=> b!74245 m!45534))

(declare-fun m!45860 () Bool)

(assert (=> b!74245 m!45860))

(assert (=> b!74245 m!45828))

(assert (=> b!74245 m!45534))

(declare-fun m!45862 () Bool)

(assert (=> b!74245 m!45862))

(declare-fun m!45864 () Bool)

(assert (=> b!74245 m!45864))

(assert (=> b!74245 m!45862))

(declare-fun m!45866 () Bool)

(assert (=> b!74245 m!45866))

(assert (=> b!74245 m!45858))

(declare-fun m!45868 () Bool)

(assert (=> b!74245 m!45868))

(declare-fun m!45870 () Bool)

(assert (=> b!74245 m!45870))

(declare-fun m!45872 () Bool)

(assert (=> b!74245 m!45872))

(assert (=> b!74245 m!45844))

(assert (=> b!74245 m!45854))

(declare-fun m!45874 () Bool)

(assert (=> b!74245 m!45874))

(assert (=> b!74245 m!45872))

(declare-fun m!45876 () Bool)

(assert (=> b!74245 m!45876))

(assert (=> b!74245 m!45534))

(declare-fun m!45878 () Bool)

(assert (=> b!74245 m!45878))

(declare-fun m!45880 () Bool)

(assert (=> b!74245 m!45880))

(declare-fun m!45882 () Bool)

(assert (=> b!74245 m!45882))

(assert (=> b!74245 m!45862))

(declare-fun m!45884 () Bool)

(assert (=> b!74245 m!45884))

(assert (=> b!74245 m!45844))

(assert (=> b!74245 m!45868))

(declare-fun m!45886 () Bool)

(assert (=> b!74245 m!45886))

(declare-fun m!45888 () Bool)

(assert (=> b!74245 m!45888))

(assert (=> b!74245 m!45846))

(declare-fun m!45890 () Bool)

(assert (=> b!74245 m!45890))

(declare-fun m!45892 () Bool)

(assert (=> b!74245 m!45892))

(declare-fun m!45894 () Bool)

(assert (=> b!74248 m!45894))

(assert (=> b!74248 m!45534))

(assert (=> b!74248 m!45878))

(declare-fun m!45900 () Bool)

(assert (=> b!74248 m!45900))

(declare-fun m!45902 () Bool)

(assert (=> b!74243 m!45902))

(declare-fun m!45904 () Bool)

(assert (=> b!74243 m!45904))

(declare-fun m!45906 () Bool)

(assert (=> d!12965 m!45906))

(assert (=> d!12965 m!45858))

(declare-fun m!45908 () Bool)

(assert (=> d!12965 m!45908))

(declare-fun m!45910 () Bool)

(assert (=> d!12965 m!45910))

(assert (=> d!12965 m!45534))

(assert (=> d!12965 m!45878))

(assert (=> d!12965 m!45534))

(assert (=> d!12965 m!45616))

(assert (=> d!12965 m!45534))

(assert (=> d!12965 m!45534))

(declare-fun m!45912 () Bool)

(assert (=> d!12965 m!45912))

(declare-fun m!45914 () Bool)

(assert (=> d!12965 m!45914))

(assert (=> d!12965 m!45908))

(declare-fun m!45916 () Bool)

(assert (=> d!12965 m!45916))

(declare-fun m!45918 () Bool)

(assert (=> b!74249 m!45918))

(declare-fun m!45920 () Bool)

(assert (=> b!74249 m!45920))

(assert (=> d!12903 d!12965))

(declare-fun d!12967 () Bool)

(declare-fun res!38879 () Bool)

(declare-fun e!41250 () Bool)

(assert (=> d!12967 (=> res!38879 e!41250)))

(assert (=> d!12967 (= res!38879 ((_ is Nil!1214) rules!2471))))

(assert (=> d!12967 (= (noDuplicateTag!47 thiss!19403 rules!2471 Nil!1217) e!41250)))

(declare-fun b!74282 () Bool)

(declare-fun e!41251 () Bool)

(assert (=> b!74282 (= e!41250 e!41251)))

(declare-fun res!38880 () Bool)

(assert (=> b!74282 (=> (not res!38880) (not e!41251))))

(declare-fun contains!187 (List!1223 String!1656) Bool)

(assert (=> b!74282 (= res!38880 (not (contains!187 Nil!1217 (tag!441 (h!6611 rules!2471)))))))

(declare-fun b!74283 () Bool)

(assert (=> b!74283 (= e!41251 (noDuplicateTag!47 thiss!19403 (t!19923 rules!2471) (Cons!1217 (tag!441 (h!6611 rules!2471)) Nil!1217)))))

(assert (= (and d!12967 (not res!38879)) b!74282))

(assert (= (and b!74282 res!38880) b!74283))

(declare-fun m!45922 () Bool)

(assert (=> b!74282 m!45922))

(declare-fun m!45924 () Bool)

(assert (=> b!74283 m!45924))

(assert (=> b!74011 d!12967))

(declare-fun d!12971 () Bool)

(declare-fun e!41254 () Bool)

(assert (=> d!12971 e!41254))

(declare-fun res!38883 () Bool)

(assert (=> d!12971 (=> (not res!38883) (not e!41254))))

(declare-fun lt!13721 () BalanceConc!660)

(assert (=> d!12971 (= res!38883 (= (list!347 lt!13721) input!2238))))

(declare-fun fromList!7 (List!1218) Conc!328)

(assert (=> d!12971 (= lt!13721 (BalanceConc!661 (fromList!7 input!2238)))))

(assert (=> d!12971 (= (fromListB!18 input!2238) lt!13721)))

(declare-fun b!74286 () Bool)

(declare-fun isBalanced!61 (Conc!328) Bool)

(assert (=> b!74286 (= e!41254 (isBalanced!61 (fromList!7 input!2238)))))

(assert (= (and d!12971 res!38883) b!74286))

(declare-fun m!45926 () Bool)

(assert (=> d!12971 m!45926))

(declare-fun m!45928 () Bool)

(assert (=> d!12971 m!45928))

(assert (=> b!74286 m!45928))

(assert (=> b!74286 m!45928))

(declare-fun m!45930 () Bool)

(assert (=> b!74286 m!45930))

(assert (=> d!12905 d!12971))

(declare-fun d!12973 () Bool)

(assert (=> d!12973 (= (isEmpty!295 (list!347 (_2!796 lt!13459))) ((_ is Nil!1212) (list!347 (_2!796 lt!13459))))))

(assert (=> d!12901 d!12973))

(declare-fun d!12975 () Bool)

(declare-fun list!351 (Conc!328) List!1218)

(assert (=> d!12975 (= (list!347 (_2!796 lt!13459)) (list!351 (c!19318 (_2!796 lt!13459))))))

(declare-fun bs!7772 () Bool)

(assert (= bs!7772 d!12975))

(declare-fun m!45932 () Bool)

(assert (=> bs!7772 m!45932))

(assert (=> d!12901 d!12975))

(declare-fun d!12977 () Bool)

(declare-fun lt!13724 () Bool)

(assert (=> d!12977 (= lt!13724 (isEmpty!295 (list!351 (c!19318 (_2!796 lt!13459)))))))

(declare-fun size!1106 (Conc!328) Int)

(assert (=> d!12977 (= lt!13724 (= (size!1106 (c!19318 (_2!796 lt!13459))) 0))))

(assert (=> d!12977 (= (isEmpty!296 (c!19318 (_2!796 lt!13459))) lt!13724)))

(declare-fun bs!7773 () Bool)

(assert (= bs!7773 d!12977))

(assert (=> bs!7773 m!45932))

(assert (=> bs!7773 m!45932))

(declare-fun m!45934 () Bool)

(assert (=> bs!7773 m!45934))

(declare-fun m!45936 () Bool)

(assert (=> bs!7773 m!45936))

(assert (=> d!12901 d!12977))

(declare-fun d!12979 () Bool)

(assert (=> d!12979 (= (list!347 (_2!796 lt!13478)) (list!351 (c!19318 (_2!796 lt!13478))))))

(declare-fun bs!7774 () Bool)

(assert (= bs!7774 d!12979))

(declare-fun m!45938 () Bool)

(assert (=> bs!7774 m!45938))

(assert (=> b!74095 d!12979))

(declare-fun b!74297 () Bool)

(declare-fun e!41263 () Bool)

(declare-fun lt!13731 () tuple2!1182)

(declare-fun isEmpty!300 (List!1221) Bool)

(assert (=> b!74297 (= e!41263 (not (isEmpty!300 (_1!798 lt!13731))))))

(declare-fun b!74298 () Bool)

(declare-fun e!41262 () Bool)

(assert (=> b!74298 (= e!41262 e!41263)))

(declare-fun res!38886 () Bool)

(declare-fun size!1107 (List!1218) Int)

(assert (=> b!74298 (= res!38886 (< (size!1107 (_2!798 lt!13731)) (size!1107 (list!347 (seqFromList!51 input!2238)))))))

(assert (=> b!74298 (=> (not res!38886) (not e!41263))))

(declare-fun d!12981 () Bool)

(assert (=> d!12981 e!41262))

(declare-fun c!19369 () Bool)

(assert (=> d!12981 (= c!19369 (> (size!1103 (_1!798 lt!13731)) 0))))

(declare-fun e!41261 () tuple2!1182)

(assert (=> d!12981 (= lt!13731 e!41261)))

(declare-fun c!19370 () Bool)

(declare-datatypes ((tuple2!1190 0))(
  ( (tuple2!1191 (_1!802 Token!286) (_2!802 List!1218)) )
))
(declare-datatypes ((Option!72 0))(
  ( (None!71) (Some!71 (v!12710 tuple2!1190)) )
))
(declare-fun lt!13733 () Option!72)

(assert (=> d!12981 (= c!19370 ((_ is Some!71) lt!13733))))

(declare-fun maxPrefix!11 (LexerInterface!155 List!1220 List!1218) Option!72)

(assert (=> d!12981 (= lt!13733 (maxPrefix!11 thiss!19403 rules!2471 (list!347 (seqFromList!51 input!2238))))))

(assert (=> d!12981 (= (lexList!28 thiss!19403 rules!2471 (list!347 (seqFromList!51 input!2238))) lt!13731)))

(declare-fun b!74299 () Bool)

(declare-fun lt!13732 () tuple2!1182)

(assert (=> b!74299 (= e!41261 (tuple2!1183 (Cons!1215 (_1!802 (v!12710 lt!13733)) (_1!798 lt!13732)) (_2!798 lt!13732)))))

(assert (=> b!74299 (= lt!13732 (lexList!28 thiss!19403 rules!2471 (_2!802 (v!12710 lt!13733))))))

(declare-fun b!74300 () Bool)

(assert (=> b!74300 (= e!41262 (= (_2!798 lt!13731) (list!347 (seqFromList!51 input!2238))))))

(declare-fun b!74301 () Bool)

(assert (=> b!74301 (= e!41261 (tuple2!1183 Nil!1215 (list!347 (seqFromList!51 input!2238))))))

(assert (= (and d!12981 c!19370) b!74299))

(assert (= (and d!12981 (not c!19370)) b!74301))

(assert (= (and d!12981 c!19369) b!74298))

(assert (= (and d!12981 (not c!19369)) b!74300))

(assert (= (and b!74298 res!38886) b!74297))

(declare-fun m!45940 () Bool)

(assert (=> b!74297 m!45940))

(declare-fun m!45942 () Bool)

(assert (=> b!74298 m!45942))

(assert (=> b!74298 m!45616))

(declare-fun m!45944 () Bool)

(assert (=> b!74298 m!45944))

(declare-fun m!45946 () Bool)

(assert (=> d!12981 m!45946))

(assert (=> d!12981 m!45616))

(declare-fun m!45948 () Bool)

(assert (=> d!12981 m!45948))

(declare-fun m!45950 () Bool)

(assert (=> b!74299 m!45950))

(assert (=> b!74095 d!12981))

(declare-fun d!12983 () Bool)

(assert (=> d!12983 (= (list!347 (seqFromList!51 input!2238)) (list!351 (c!19318 (seqFromList!51 input!2238))))))

(declare-fun bs!7775 () Bool)

(assert (= bs!7775 d!12983))

(declare-fun m!45952 () Bool)

(assert (=> bs!7775 m!45952))

(assert (=> b!74095 d!12983))

(declare-fun d!12985 () Bool)

(declare-fun lt!13736 () Int)

(assert (=> d!12985 (= lt!13736 (size!1107 (list!347 (_2!796 lt!13478))))))

(assert (=> d!12985 (= lt!13736 (size!1106 (c!19318 (_2!796 lt!13478))))))

(assert (=> d!12985 (= (size!1099 (_2!796 lt!13478)) lt!13736)))

(declare-fun bs!7776 () Bool)

(assert (= bs!7776 d!12985))

(assert (=> bs!7776 m!45614))

(assert (=> bs!7776 m!45614))

(declare-fun m!45954 () Bool)

(assert (=> bs!7776 m!45954))

(declare-fun m!45956 () Bool)

(assert (=> bs!7776 m!45956))

(assert (=> b!74096 d!12985))

(declare-fun d!12987 () Bool)

(declare-fun lt!13737 () Int)

(assert (=> d!12987 (= lt!13737 (size!1107 (list!347 (seqFromList!51 input!2238))))))

(assert (=> d!12987 (= lt!13737 (size!1106 (c!19318 (seqFromList!51 input!2238))))))

(assert (=> d!12987 (= (size!1099 (seqFromList!51 input!2238)) lt!13737)))

(declare-fun bs!7777 () Bool)

(assert (= bs!7777 d!12987))

(assert (=> bs!7777 m!45534))

(assert (=> bs!7777 m!45616))

(assert (=> bs!7777 m!45616))

(assert (=> bs!7777 m!45944))

(declare-fun m!45958 () Bool)

(assert (=> bs!7777 m!45958))

(assert (=> b!74096 d!12987))

(declare-fun d!12989 () Bool)

(declare-fun res!38891 () Bool)

(declare-fun e!41268 () Bool)

(assert (=> d!12989 (=> res!38891 e!41268)))

(assert (=> d!12989 (= res!38891 ((_ is Nil!1214) rules!2471))))

(assert (=> d!12989 (= (forall!175 rules!2471 lambda!1307) e!41268)))

(declare-fun b!74306 () Bool)

(declare-fun e!41269 () Bool)

(assert (=> b!74306 (= e!41268 e!41269)))

(declare-fun res!38892 () Bool)

(assert (=> b!74306 (=> (not res!38892) (not e!41269))))

(declare-fun dynLambda!280 (Int Rule!326) Bool)

(assert (=> b!74306 (= res!38892 (dynLambda!280 lambda!1307 (h!6611 rules!2471)))))

(declare-fun b!74307 () Bool)

(assert (=> b!74307 (= e!41269 (forall!175 (t!19923 rules!2471) lambda!1307))))

(assert (= (and d!12989 (not res!38891)) b!74306))

(assert (= (and b!74306 res!38892) b!74307))

(declare-fun b_lambda!845 () Bool)

(assert (=> (not b_lambda!845) (not b!74306)))

(declare-fun m!45960 () Bool)

(assert (=> b!74306 m!45960))

(declare-fun m!45962 () Bool)

(assert (=> b!74307 m!45962))

(assert (=> d!12883 d!12989))

(declare-fun d!12991 () Bool)

(declare-fun res!38897 () Bool)

(declare-fun e!41272 () Bool)

(assert (=> d!12991 (=> (not res!38897) (not e!41272))))

(declare-fun validRegex!29 (Regex!331) Bool)

(assert (=> d!12991 (= res!38897 (validRegex!29 (regex!263 (h!6611 rules!2471))))))

(assert (=> d!12991 (= (ruleValid!7 thiss!19403 (h!6611 rules!2471)) e!41272)))

(declare-fun b!74312 () Bool)

(declare-fun res!38898 () Bool)

(assert (=> b!74312 (=> (not res!38898) (not e!41272))))

(declare-fun nullable!22 (Regex!331) Bool)

(assert (=> b!74312 (= res!38898 (not (nullable!22 (regex!263 (h!6611 rules!2471)))))))

(declare-fun b!74313 () Bool)

(assert (=> b!74313 (= e!41272 (not (= (tag!441 (h!6611 rules!2471)) (String!1657 ""))))))

(assert (= (and d!12991 res!38897) b!74312))

(assert (= (and b!74312 res!38898) b!74313))

(declare-fun m!45964 () Bool)

(assert (=> d!12991 m!45964))

(declare-fun m!45966 () Bool)

(assert (=> b!74312 m!45966))

(assert (=> b!74078 d!12991))

(declare-fun d!12993 () Bool)

(assert (=> d!12993 (= (list!343 (_1!796 lt!13478)) (list!346 (c!19320 (_1!796 lt!13478))))))

(declare-fun bs!7778 () Bool)

(assert (= bs!7778 d!12993))

(declare-fun m!45968 () Bool)

(assert (=> bs!7778 m!45968))

(assert (=> b!74092 d!12993))

(assert (=> b!74092 d!12981))

(assert (=> b!74092 d!12983))

(declare-fun d!12995 () Bool)

(assert (=> d!12995 (= (inv!1628 (tag!441 (h!6611 (t!19923 rules!2471)))) (= (mod (str.len (value!10365 (tag!441 (h!6611 (t!19923 rules!2471))))) 2) 0))))

(assert (=> b!74125 d!12995))

(declare-fun d!12997 () Bool)

(declare-fun res!38899 () Bool)

(declare-fun e!41273 () Bool)

(assert (=> d!12997 (=> (not res!38899) (not e!41273))))

(assert (=> d!12997 (= res!38899 (semiInverseModEq!39 (toChars!613 (transformation!263 (h!6611 (t!19923 rules!2471)))) (toValue!754 (transformation!263 (h!6611 (t!19923 rules!2471))))))))

(assert (=> d!12997 (= (inv!1630 (transformation!263 (h!6611 (t!19923 rules!2471)))) e!41273)))

(declare-fun b!74314 () Bool)

(assert (=> b!74314 (= e!41273 (equivClasses!35 (toChars!613 (transformation!263 (h!6611 (t!19923 rules!2471)))) (toValue!754 (transformation!263 (h!6611 (t!19923 rules!2471))))))))

(assert (= (and d!12997 res!38899) b!74314))

(declare-fun m!45970 () Bool)

(assert (=> d!12997 m!45970))

(declare-fun m!45972 () Bool)

(assert (=> b!74314 m!45972))

(assert (=> b!74125 d!12997))

(declare-fun d!12999 () Bool)

(declare-fun lt!13740 () Bool)

(assert (=> d!12999 (= lt!13740 (isEmpty!300 (list!343 (_1!796 lt!13478))))))

(declare-fun isEmpty!301 (Conc!329) Bool)

(assert (=> d!12999 (= lt!13740 (isEmpty!301 (c!19320 (_1!796 lt!13478))))))

(assert (=> d!12999 (= (isEmpty!297 (_1!796 lt!13478)) lt!13740)))

(declare-fun bs!7779 () Bool)

(assert (= bs!7779 d!12999))

(assert (=> bs!7779 m!45620))

(assert (=> bs!7779 m!45620))

(declare-fun m!45974 () Bool)

(assert (=> bs!7779 m!45974))

(declare-fun m!45976 () Bool)

(assert (=> bs!7779 m!45976))

(assert (=> b!74094 d!12999))

(declare-fun b!74315 () Bool)

(declare-fun e!41274 () Bool)

(assert (=> b!74315 (= e!41274 tp_is_empty!585)))

(assert (=> b!74108 (= tp!48703 e!41274)))

(declare-fun b!74317 () Bool)

(declare-fun tp!48759 () Bool)

(assert (=> b!74317 (= e!41274 tp!48759)))

(declare-fun b!74318 () Bool)

(declare-fun tp!48761 () Bool)

(declare-fun tp!48762 () Bool)

(assert (=> b!74318 (= e!41274 (and tp!48761 tp!48762))))

(declare-fun b!74316 () Bool)

(declare-fun tp!48758 () Bool)

(declare-fun tp!48760 () Bool)

(assert (=> b!74316 (= e!41274 (and tp!48758 tp!48760))))

(assert (= (and b!74108 ((_ is ElementMatch!331) (regOne!1174 (regex!263 (h!6611 rules!2471))))) b!74315))

(assert (= (and b!74108 ((_ is Concat!584) (regOne!1174 (regex!263 (h!6611 rules!2471))))) b!74316))

(assert (= (and b!74108 ((_ is Star!331) (regOne!1174 (regex!263 (h!6611 rules!2471))))) b!74317))

(assert (= (and b!74108 ((_ is Union!331) (regOne!1174 (regex!263 (h!6611 rules!2471))))) b!74318))

(declare-fun b!74319 () Bool)

(declare-fun e!41275 () Bool)

(assert (=> b!74319 (= e!41275 tp_is_empty!585)))

(assert (=> b!74108 (= tp!48705 e!41275)))

(declare-fun b!74321 () Bool)

(declare-fun tp!48764 () Bool)

(assert (=> b!74321 (= e!41275 tp!48764)))

(declare-fun b!74322 () Bool)

(declare-fun tp!48766 () Bool)

(declare-fun tp!48767 () Bool)

(assert (=> b!74322 (= e!41275 (and tp!48766 tp!48767))))

(declare-fun b!74320 () Bool)

(declare-fun tp!48763 () Bool)

(declare-fun tp!48765 () Bool)

(assert (=> b!74320 (= e!41275 (and tp!48763 tp!48765))))

(assert (= (and b!74108 ((_ is ElementMatch!331) (regTwo!1174 (regex!263 (h!6611 rules!2471))))) b!74319))

(assert (= (and b!74108 ((_ is Concat!584) (regTwo!1174 (regex!263 (h!6611 rules!2471))))) b!74320))

(assert (= (and b!74108 ((_ is Star!331) (regTwo!1174 (regex!263 (h!6611 rules!2471))))) b!74321))

(assert (= (and b!74108 ((_ is Union!331) (regTwo!1174 (regex!263 (h!6611 rules!2471))))) b!74322))

(declare-fun b!74325 () Bool)

(declare-fun b_free!2281 () Bool)

(declare-fun b_next!2281 () Bool)

(assert (=> b!74325 (= b_free!2281 (not b_next!2281))))

(declare-fun tp!48771 () Bool)

(declare-fun b_and!3307 () Bool)

(assert (=> b!74325 (= tp!48771 b_and!3307)))

(declare-fun b_free!2283 () Bool)

(declare-fun b_next!2283 () Bool)

(assert (=> b!74325 (= b_free!2283 (not b_next!2283))))

(declare-fun tp!48768 () Bool)

(declare-fun b_and!3309 () Bool)

(assert (=> b!74325 (= tp!48768 b_and!3309)))

(declare-fun e!41278 () Bool)

(assert (=> b!74325 (= e!41278 (and tp!48771 tp!48768))))

(declare-fun e!41277 () Bool)

(declare-fun b!74324 () Bool)

(declare-fun tp!48770 () Bool)

(assert (=> b!74324 (= e!41277 (and tp!48770 (inv!1628 (tag!441 (h!6611 (t!19923 (t!19923 rules!2471))))) (inv!1630 (transformation!263 (h!6611 (t!19923 (t!19923 rules!2471))))) e!41278))))

(declare-fun b!74323 () Bool)

(declare-fun e!41279 () Bool)

(declare-fun tp!48769 () Bool)

(assert (=> b!74323 (= e!41279 (and e!41277 tp!48769))))

(assert (=> b!74124 (= tp!48720 e!41279)))

(assert (= b!74324 b!74325))

(assert (= b!74323 b!74324))

(assert (= (and b!74124 ((_ is Cons!1214) (t!19923 (t!19923 rules!2471)))) b!74323))

(declare-fun m!45978 () Bool)

(assert (=> b!74324 m!45978))

(declare-fun m!45980 () Bool)

(assert (=> b!74324 m!45980))

(declare-fun b!74326 () Bool)

(declare-fun e!41280 () Bool)

(declare-fun tp!48772 () Bool)

(assert (=> b!74326 (= e!41280 (and tp_is_empty!585 tp!48772))))

(assert (=> b!74115 (= tp!48710 e!41280)))

(assert (= (and b!74115 ((_ is Cons!1212) (t!19921 (t!19921 input!2238)))) b!74326))

(declare-fun b!74327 () Bool)

(declare-fun e!41281 () Bool)

(assert (=> b!74327 (= e!41281 tp_is_empty!585)))

(assert (=> b!74109 (= tp!48704 e!41281)))

(declare-fun b!74329 () Bool)

(declare-fun tp!48774 () Bool)

(assert (=> b!74329 (= e!41281 tp!48774)))

(declare-fun b!74330 () Bool)

(declare-fun tp!48776 () Bool)

(declare-fun tp!48777 () Bool)

(assert (=> b!74330 (= e!41281 (and tp!48776 tp!48777))))

(declare-fun b!74328 () Bool)

(declare-fun tp!48773 () Bool)

(declare-fun tp!48775 () Bool)

(assert (=> b!74328 (= e!41281 (and tp!48773 tp!48775))))

(assert (= (and b!74109 ((_ is ElementMatch!331) (reg!660 (regex!263 (h!6611 rules!2471))))) b!74327))

(assert (= (and b!74109 ((_ is Concat!584) (reg!660 (regex!263 (h!6611 rules!2471))))) b!74328))

(assert (= (and b!74109 ((_ is Star!331) (reg!660 (regex!263 (h!6611 rules!2471))))) b!74329))

(assert (= (and b!74109 ((_ is Union!331) (reg!660 (regex!263 (h!6611 rules!2471))))) b!74330))

(declare-fun b!74331 () Bool)

(declare-fun e!41282 () Bool)

(assert (=> b!74331 (= e!41282 tp_is_empty!585)))

(assert (=> b!74125 (= tp!48721 e!41282)))

(declare-fun b!74333 () Bool)

(declare-fun tp!48779 () Bool)

(assert (=> b!74333 (= e!41282 tp!48779)))

(declare-fun b!74334 () Bool)

(declare-fun tp!48781 () Bool)

(declare-fun tp!48782 () Bool)

(assert (=> b!74334 (= e!41282 (and tp!48781 tp!48782))))

(declare-fun b!74332 () Bool)

(declare-fun tp!48778 () Bool)

(declare-fun tp!48780 () Bool)

(assert (=> b!74332 (= e!41282 (and tp!48778 tp!48780))))

(assert (= (and b!74125 ((_ is ElementMatch!331) (regex!263 (h!6611 (t!19923 rules!2471))))) b!74331))

(assert (= (and b!74125 ((_ is Concat!584) (regex!263 (h!6611 (t!19923 rules!2471))))) b!74332))

(assert (= (and b!74125 ((_ is Star!331) (regex!263 (h!6611 (t!19923 rules!2471))))) b!74333))

(assert (= (and b!74125 ((_ is Union!331) (regex!263 (h!6611 (t!19923 rules!2471))))) b!74334))

(declare-fun b!74335 () Bool)

(declare-fun e!41283 () Bool)

(assert (=> b!74335 (= e!41283 tp_is_empty!585)))

(assert (=> b!74110 (= tp!48706 e!41283)))

(declare-fun b!74337 () Bool)

(declare-fun tp!48784 () Bool)

(assert (=> b!74337 (= e!41283 tp!48784)))

(declare-fun b!74338 () Bool)

(declare-fun tp!48786 () Bool)

(declare-fun tp!48787 () Bool)

(assert (=> b!74338 (= e!41283 (and tp!48786 tp!48787))))

(declare-fun b!74336 () Bool)

(declare-fun tp!48783 () Bool)

(declare-fun tp!48785 () Bool)

(assert (=> b!74336 (= e!41283 (and tp!48783 tp!48785))))

(assert (= (and b!74110 ((_ is ElementMatch!331) (regOne!1175 (regex!263 (h!6611 rules!2471))))) b!74335))

(assert (= (and b!74110 ((_ is Concat!584) (regOne!1175 (regex!263 (h!6611 rules!2471))))) b!74336))

(assert (= (and b!74110 ((_ is Star!331) (regOne!1175 (regex!263 (h!6611 rules!2471))))) b!74337))

(assert (= (and b!74110 ((_ is Union!331) (regOne!1175 (regex!263 (h!6611 rules!2471))))) b!74338))

(declare-fun b!74339 () Bool)

(declare-fun e!41284 () Bool)

(assert (=> b!74339 (= e!41284 tp_is_empty!585)))

(assert (=> b!74110 (= tp!48707 e!41284)))

(declare-fun b!74341 () Bool)

(declare-fun tp!48789 () Bool)

(assert (=> b!74341 (= e!41284 tp!48789)))

(declare-fun b!74342 () Bool)

(declare-fun tp!48791 () Bool)

(declare-fun tp!48792 () Bool)

(assert (=> b!74342 (= e!41284 (and tp!48791 tp!48792))))

(declare-fun b!74340 () Bool)

(declare-fun tp!48788 () Bool)

(declare-fun tp!48790 () Bool)

(assert (=> b!74340 (= e!41284 (and tp!48788 tp!48790))))

(assert (= (and b!74110 ((_ is ElementMatch!331) (regTwo!1175 (regex!263 (h!6611 rules!2471))))) b!74339))

(assert (= (and b!74110 ((_ is Concat!584) (regTwo!1175 (regex!263 (h!6611 rules!2471))))) b!74340))

(assert (= (and b!74110 ((_ is Star!331) (regTwo!1175 (regex!263 (h!6611 rules!2471))))) b!74341))

(assert (= (and b!74110 ((_ is Union!331) (regTwo!1175 (regex!263 (h!6611 rules!2471))))) b!74342))

(declare-fun b_lambda!847 () Bool)

(assert (= b_lambda!845 (or d!12883 b_lambda!847)))

(declare-fun bs!7780 () Bool)

(declare-fun d!13001 () Bool)

(assert (= bs!7780 (and d!13001 d!12883)))

(assert (=> bs!7780 (= (dynLambda!280 lambda!1307 (h!6611 rules!2471)) (ruleValid!7 thiss!19403 (h!6611 rules!2471)))))

(assert (=> bs!7780 m!45598))

(assert (=> b!74306 d!13001))

(check-sat (not d!12939) (not b!74329) (not b!74299) b_and!3309 (not b!74207) (not b!74337) (not b!74318) b_and!3299 (not d!12975) (not b!74316) (not b!74334) (not d!12965) (not d!12983) (not b!74332) (not b!74206) (not b!74323) (not b!74248) b_and!3291 (not b!74330) (not b_lambda!847) (not b_next!2265) (not b!74286) (not b!74249) (not b!74321) b_and!3301 (not b!74297) (not d!12963) (not b!74245) (not b!74324) b_and!3293 (not b!74282) (not b!74340) (not b_next!2275) (not b!74341) (not b_next!2283) (not b_next!2273) (not b!74317) (not d!12961) (not b!74320) (not b!74205) (not d!12977) tp_is_empty!585 (not d!12993) (not d!12991) (not b!74328) (not b!74312) (not d!12949) (not b_next!2267) b_and!3307 (not b!74314) (not d!12997) (not b!74342) (not d!12987) (not d!12971) (not d!12931) (not b!74283) (not d!12985) (not b!74307) (not b!74243) (not b!74298) (not b_next!2281) (not b!74326) (not b!74322) (not d!12999) (not d!12979) (not bs!7780) (not b!74338) (not b!74204) (not d!12981) (not b!74336) (not b!74333))
(check-sat b_and!3299 b_and!3291 (not b_next!2265) b_and!3301 b_and!3293 (not b_next!2275) b_and!3309 (not b_next!2281) (not b_next!2283) (not b_next!2273) (not b_next!2267) b_and!3307)

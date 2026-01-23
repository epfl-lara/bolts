; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54060 () Bool)

(assert start!54060)

(declare-fun b!582794 () Bool)

(declare-fun b_free!16205 () Bool)

(declare-fun b_next!16221 () Bool)

(assert (=> b!582794 (= b_free!16205 (not b_next!16221))))

(declare-fun tp!181809 () Bool)

(declare-fun b_and!57387 () Bool)

(assert (=> b!582794 (= tp!181809 b_and!57387)))

(declare-fun b_free!16207 () Bool)

(declare-fun b_next!16223 () Bool)

(assert (=> b!582794 (= b_free!16207 (not b_next!16223))))

(declare-fun tp!181810 () Bool)

(declare-fun b_and!57389 () Bool)

(assert (=> b!582794 (= tp!181810 b_and!57389)))

(declare-fun b!582795 () Bool)

(declare-fun b_free!16209 () Bool)

(declare-fun b_next!16225 () Bool)

(assert (=> b!582795 (= b_free!16209 (not b_next!16225))))

(declare-fun tp!181812 () Bool)

(declare-fun b_and!57391 () Bool)

(assert (=> b!582795 (= tp!181812 b_and!57391)))

(declare-fun b_free!16211 () Bool)

(declare-fun b_next!16227 () Bool)

(assert (=> b!582795 (= b_free!16211 (not b_next!16227))))

(declare-fun tp!181815 () Bool)

(declare-fun b_and!57393 () Bool)

(assert (=> b!582795 (= tp!181815 b_and!57393)))

(declare-fun b!582782 () Bool)

(declare-fun res!251003 () Bool)

(declare-fun e!352239 () Bool)

(assert (=> b!582782 (=> (not res!251003) (not e!352239))))

(declare-datatypes ((LexerInterface!999 0))(
  ( (LexerInterfaceExt!996 (__x!4172 Int)) (Lexer!997) )
))
(declare-fun thiss!22590 () LexerInterface!999)

(declare-datatypes ((C!3816 0))(
  ( (C!3817 (val!2134 Int)) )
))
(declare-datatypes ((Regex!1447 0))(
  ( (ElementMatch!1447 (c!109059 C!3816)) (Concat!2584 (regOne!3406 Regex!1447) (regTwo!3406 Regex!1447)) (EmptyExpr!1447) (Star!1447 (reg!1776 Regex!1447)) (EmptyLang!1447) (Union!1447 (regOne!3407 Regex!1447) (regTwo!3407 Regex!1447)) )
))
(declare-datatypes ((String!7428 0))(
  ( (String!7429 (value!36561 String)) )
))
(declare-datatypes ((List!5728 0))(
  ( (Nil!5718) (Cons!5718 (h!11119 (_ BitVec 16)) (t!78241 List!5728)) )
))
(declare-datatypes ((TokenValue!1137 0))(
  ( (FloatLiteralValue!2274 (text!8404 List!5728)) (TokenValueExt!1136 (__x!4173 Int)) (Broken!5685 (value!36562 List!5728)) (Object!1146) (End!1137) (Def!1137) (Underscore!1137) (Match!1137) (Else!1137) (Error!1137) (Case!1137) (If!1137) (Extends!1137) (Abstract!1137) (Class!1137) (Val!1137) (DelimiterValue!2274 (del!1197 List!5728)) (KeywordValue!1143 (value!36563 List!5728)) (CommentValue!2274 (value!36564 List!5728)) (WhitespaceValue!2274 (value!36565 List!5728)) (IndentationValue!1137 (value!36566 List!5728)) (String!7430) (Int32!1137) (Broken!5686 (value!36567 List!5728)) (Boolean!1138) (Unit!10414) (OperatorValue!1140 (op!1197 List!5728)) (IdentifierValue!2274 (value!36568 List!5728)) (IdentifierValue!2275 (value!36569 List!5728)) (WhitespaceValue!2275 (value!36570 List!5728)) (True!2274) (False!2274) (Broken!5687 (value!36571 List!5728)) (Broken!5688 (value!36572 List!5728)) (True!2275) (RightBrace!1137) (RightBracket!1137) (Colon!1137) (Null!1137) (Comma!1137) (LeftBracket!1137) (False!2275) (LeftBrace!1137) (ImaginaryLiteralValue!1137 (text!8405 List!5728)) (StringLiteralValue!3411 (value!36573 List!5728)) (EOFValue!1137 (value!36574 List!5728)) (IdentValue!1137 (value!36575 List!5728)) (DelimiterValue!2275 (value!36576 List!5728)) (DedentValue!1137 (value!36577 List!5728)) (NewLineValue!1137 (value!36578 List!5728)) (IntegerValue!3411 (value!36579 (_ BitVec 32)) (text!8406 List!5728)) (IntegerValue!3412 (value!36580 Int) (text!8407 List!5728)) (Times!1137) (Or!1137) (Equal!1137) (Minus!1137) (Broken!5689 (value!36581 List!5728)) (And!1137) (Div!1137) (LessEqual!1137) (Mod!1137) (Concat!2585) (Not!1137) (Plus!1137) (SpaceValue!1137 (value!36582 List!5728)) (IntegerValue!3413 (value!36583 Int) (text!8408 List!5728)) (StringLiteralValue!3412 (text!8409 List!5728)) (FloatLiteralValue!2275 (text!8410 List!5728)) (BytesLiteralValue!1137 (value!36584 List!5728)) (CommentValue!2275 (value!36585 List!5728)) (StringLiteralValue!3413 (value!36586 List!5728)) (ErrorTokenValue!1137 (msg!1198 List!5728)) )
))
(declare-datatypes ((List!5729 0))(
  ( (Nil!5719) (Cons!5719 (h!11120 C!3816) (t!78242 List!5729)) )
))
(declare-datatypes ((IArray!3661 0))(
  ( (IArray!3662 (innerList!1888 List!5729)) )
))
(declare-datatypes ((Conc!1830 0))(
  ( (Node!1830 (left!4667 Conc!1830) (right!4997 Conc!1830) (csize!3890 Int) (cheight!2041 Int)) (Leaf!2894 (xs!4467 IArray!3661) (csize!3891 Int)) (Empty!1830) )
))
(declare-datatypes ((BalanceConc!3668 0))(
  ( (BalanceConc!3669 (c!109060 Conc!1830)) )
))
(declare-datatypes ((TokenValueInjection!2042 0))(
  ( (TokenValueInjection!2043 (toValue!1980 Int) (toChars!1839 Int)) )
))
(declare-datatypes ((Rule!2026 0))(
  ( (Rule!2027 (regex!1113 Regex!1447) (tag!1375 String!7428) (isSeparator!1113 Bool) (transformation!1113 TokenValueInjection!2042)) )
))
(declare-datatypes ((List!5730 0))(
  ( (Nil!5720) (Cons!5720 (h!11121 Rule!2026) (t!78243 List!5730)) )
))
(declare-fun rules!3103 () List!5730)

(declare-fun rulesInvariant!962 (LexerInterface!999 List!5730) Bool)

(assert (=> b!582782 (= res!251003 (rulesInvariant!962 thiss!22590 rules!3103))))

(declare-fun b!582783 () Bool)

(declare-fun e!352233 () Bool)

(declare-fun tp_is_empty!3249 () Bool)

(declare-fun tp!181816 () Bool)

(assert (=> b!582783 (= e!352233 (and tp_is_empty!3249 tp!181816))))

(declare-fun b!582784 () Bool)

(declare-fun e!352242 () Bool)

(declare-fun e!352240 () Bool)

(assert (=> b!582784 (= e!352242 e!352240)))

(declare-fun res!251005 () Bool)

(assert (=> b!582784 (=> (not res!251005) (not e!352240))))

(declare-datatypes ((Token!1962 0))(
  ( (Token!1963 (value!36587 TokenValue!1137) (rule!1871 Rule!2026) (size!4551 Int) (originalCharacters!1152 List!5729)) )
))
(declare-datatypes ((tuple2!6696 0))(
  ( (tuple2!6697 (_1!3612 Token!1962) (_2!3612 List!5729)) )
))
(declare-fun lt!247401 () tuple2!6696)

(declare-fun suffix!1342 () List!5729)

(declare-fun token!491 () Token!1962)

(assert (=> b!582784 (= res!251005 (and (= (_1!3612 lt!247401) token!491) (= (_2!3612 lt!247401) suffix!1342)))))

(declare-datatypes ((Option!1464 0))(
  ( (None!1463) (Some!1463 (v!16332 tuple2!6696)) )
))
(declare-fun lt!247402 () Option!1464)

(declare-fun get!2184 (Option!1464) tuple2!6696)

(assert (=> b!582784 (= lt!247401 (get!2184 lt!247402))))

(declare-fun e!352238 () Bool)

(declare-fun e!352243 () Bool)

(declare-fun b!582785 () Bool)

(declare-fun tp!181813 () Bool)

(declare-fun inv!21 (TokenValue!1137) Bool)

(assert (=> b!582785 (= e!352243 (and (inv!21 (value!36587 token!491)) e!352238 tp!181813))))

(declare-fun b!582786 () Bool)

(declare-fun res!251004 () Bool)

(assert (=> b!582786 (=> (not res!251004) (not e!352240))))

(declare-fun input!2705 () List!5729)

(get-info :version)

(declare-fun maxPrefix!697 (LexerInterface!999 List!5730 List!5729) Option!1464)

(assert (=> b!582786 (= res!251004 ((_ is Some!1463) (maxPrefix!697 thiss!22590 rules!3103 input!2705)))))

(declare-fun b!582787 () Bool)

(declare-fun e!352237 () Bool)

(declare-fun tp!181814 () Bool)

(assert (=> b!582787 (= e!352237 (and tp_is_empty!3249 tp!181814))))

(declare-fun b!582789 () Bool)

(declare-fun e!352245 () Bool)

(declare-fun e!352244 () Bool)

(declare-fun tp!181807 () Bool)

(assert (=> b!582789 (= e!352245 (and e!352244 tp!181807))))

(declare-fun b!582790 () Bool)

(declare-fun e!352235 () Bool)

(assert (=> b!582790 (= e!352239 e!352235)))

(declare-fun res!251002 () Bool)

(assert (=> b!582790 (=> (not res!251002) (not e!352235))))

(declare-fun lt!247399 () List!5729)

(assert (=> b!582790 (= res!251002 (= lt!247399 input!2705))))

(declare-fun list!2380 (BalanceConc!3668) List!5729)

(declare-fun charsOf!742 (Token!1962) BalanceConc!3668)

(assert (=> b!582790 (= lt!247399 (list!2380 (charsOf!742 token!491)))))

(declare-fun b!582791 () Bool)

(assert (=> b!582791 (= e!352240 false)))

(declare-fun lt!247400 () List!5729)

(declare-fun ++!1601 (List!5729 List!5729) List!5729)

(assert (=> b!582791 (= lt!247400 (++!1601 lt!247399 suffix!1342))))

(declare-fun b!582788 () Bool)

(declare-fun tp!181808 () Bool)

(declare-fun e!352246 () Bool)

(declare-fun inv!7205 (String!7428) Bool)

(declare-fun inv!7208 (TokenValueInjection!2042) Bool)

(assert (=> b!582788 (= e!352238 (and tp!181808 (inv!7205 (tag!1375 (rule!1871 token!491))) (inv!7208 (transformation!1113 (rule!1871 token!491))) e!352246))))

(declare-fun res!251007 () Bool)

(assert (=> start!54060 (=> (not res!251007) (not e!352239))))

(assert (=> start!54060 (= res!251007 ((_ is Lexer!997) thiss!22590))))

(assert (=> start!54060 e!352239))

(assert (=> start!54060 e!352233))

(assert (=> start!54060 e!352245))

(declare-fun inv!7209 (Token!1962) Bool)

(assert (=> start!54060 (and (inv!7209 token!491) e!352243)))

(assert (=> start!54060 true))

(assert (=> start!54060 e!352237))

(declare-fun b!582792 () Bool)

(declare-fun res!251006 () Bool)

(assert (=> b!582792 (=> (not res!251006) (not e!352239))))

(declare-fun isEmpty!4129 (List!5730) Bool)

(assert (=> b!582792 (= res!251006 (not (isEmpty!4129 rules!3103)))))

(declare-fun b!582793 () Bool)

(declare-fun tp!181811 () Bool)

(declare-fun e!352236 () Bool)

(assert (=> b!582793 (= e!352244 (and tp!181811 (inv!7205 (tag!1375 (h!11121 rules!3103))) (inv!7208 (transformation!1113 (h!11121 rules!3103))) e!352236))))

(assert (=> b!582794 (= e!352236 (and tp!181809 tp!181810))))

(assert (=> b!582795 (= e!352246 (and tp!181812 tp!181815))))

(declare-fun b!582796 () Bool)

(declare-fun res!251001 () Bool)

(assert (=> b!582796 (=> (not res!251001) (not e!352239))))

(declare-fun isEmpty!4130 (List!5729) Bool)

(assert (=> b!582796 (= res!251001 (not (isEmpty!4130 input!2705)))))

(declare-fun b!582797 () Bool)

(assert (=> b!582797 (= e!352235 e!352242)))

(declare-fun res!251008 () Bool)

(assert (=> b!582797 (=> (not res!251008) (not e!352242))))

(declare-fun isDefined!1275 (Option!1464) Bool)

(assert (=> b!582797 (= res!251008 (isDefined!1275 lt!247402))))

(assert (=> b!582797 (= lt!247402 (maxPrefix!697 thiss!22590 rules!3103 (++!1601 input!2705 suffix!1342)))))

(assert (= (and start!54060 res!251007) b!582792))

(assert (= (and b!582792 res!251006) b!582782))

(assert (= (and b!582782 res!251003) b!582796))

(assert (= (and b!582796 res!251001) b!582790))

(assert (= (and b!582790 res!251002) b!582797))

(assert (= (and b!582797 res!251008) b!582784))

(assert (= (and b!582784 res!251005) b!582786))

(assert (= (and b!582786 res!251004) b!582791))

(assert (= (and start!54060 ((_ is Cons!5719) suffix!1342)) b!582783))

(assert (= b!582793 b!582794))

(assert (= b!582789 b!582793))

(assert (= (and start!54060 ((_ is Cons!5720) rules!3103)) b!582789))

(assert (= b!582788 b!582795))

(assert (= b!582785 b!582788))

(assert (= start!54060 b!582785))

(assert (= (and start!54060 ((_ is Cons!5719) input!2705)) b!582787))

(declare-fun m!842295 () Bool)

(assert (=> b!582782 m!842295))

(declare-fun m!842297 () Bool)

(assert (=> b!582797 m!842297))

(declare-fun m!842299 () Bool)

(assert (=> b!582797 m!842299))

(assert (=> b!582797 m!842299))

(declare-fun m!842301 () Bool)

(assert (=> b!582797 m!842301))

(declare-fun m!842303 () Bool)

(assert (=> b!582784 m!842303))

(declare-fun m!842305 () Bool)

(assert (=> b!582793 m!842305))

(declare-fun m!842307 () Bool)

(assert (=> b!582793 m!842307))

(declare-fun m!842309 () Bool)

(assert (=> b!582792 m!842309))

(declare-fun m!842311 () Bool)

(assert (=> b!582796 m!842311))

(declare-fun m!842313 () Bool)

(assert (=> start!54060 m!842313))

(declare-fun m!842315 () Bool)

(assert (=> b!582790 m!842315))

(assert (=> b!582790 m!842315))

(declare-fun m!842317 () Bool)

(assert (=> b!582790 m!842317))

(declare-fun m!842319 () Bool)

(assert (=> b!582786 m!842319))

(declare-fun m!842321 () Bool)

(assert (=> b!582785 m!842321))

(declare-fun m!842323 () Bool)

(assert (=> b!582788 m!842323))

(declare-fun m!842325 () Bool)

(assert (=> b!582788 m!842325))

(declare-fun m!842327 () Bool)

(assert (=> b!582791 m!842327))

(check-sat b_and!57387 tp_is_empty!3249 (not b!582788) (not b!582787) (not b!582792) (not b!582784) (not b!582790) (not start!54060) (not b!582782) (not b!582785) (not b_next!16227) (not b!582786) (not b!582793) b_and!57393 (not b!582789) b_and!57389 (not b!582797) (not b!582796) (not b_next!16221) (not b!582791) b_and!57391 (not b_next!16223) (not b!582783) (not b_next!16225))
(check-sat b_and!57387 (not b_next!16227) b_and!57393 b_and!57389 (not b_next!16221) (not b_next!16225) b_and!57391 (not b_next!16223))

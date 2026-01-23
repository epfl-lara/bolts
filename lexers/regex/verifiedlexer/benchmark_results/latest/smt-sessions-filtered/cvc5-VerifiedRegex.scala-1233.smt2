; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64510 () Bool)

(assert start!64510)

(declare-fun e!408016 () Bool)

(declare-fun b!659790 () Bool)

(declare-fun e!408018 () Bool)

(declare-datatypes ((List!7141 0))(
  ( (Nil!7127) (Cons!7127 (h!12528 (_ BitVec 16)) (t!86153 List!7141)) )
))
(declare-datatypes ((TokenValue!1469 0))(
  ( (FloatLiteralValue!2938 (text!10728 List!7141)) (TokenValueExt!1468 (__x!5046 Int)) (Broken!7345 (value!46024 List!7141)) (Object!1482) (End!1469) (Def!1469) (Underscore!1469) (Match!1469) (Else!1469) (Error!1469) (Case!1469) (If!1469) (Extends!1469) (Abstract!1469) (Class!1469) (Val!1469) (DelimiterValue!2938 (del!1529 List!7141)) (KeywordValue!1475 (value!46025 List!7141)) (CommentValue!2938 (value!46026 List!7141)) (WhitespaceValue!2938 (value!46027 List!7141)) (IndentationValue!1469 (value!46028 List!7141)) (String!9084) (Int32!1469) (Broken!7346 (value!46029 List!7141)) (Boolean!1470) (Unit!12329) (OperatorValue!1472 (op!1529 List!7141)) (IdentifierValue!2938 (value!46030 List!7141)) (IdentifierValue!2939 (value!46031 List!7141)) (WhitespaceValue!2939 (value!46032 List!7141)) (True!2938) (False!2938) (Broken!7347 (value!46033 List!7141)) (Broken!7348 (value!46034 List!7141)) (True!2939) (RightBrace!1469) (RightBracket!1469) (Colon!1469) (Null!1469) (Comma!1469) (LeftBracket!1469) (False!2939) (LeftBrace!1469) (ImaginaryLiteralValue!1469 (text!10729 List!7141)) (StringLiteralValue!4407 (value!46035 List!7141)) (EOFValue!1469 (value!46036 List!7141)) (IdentValue!1469 (value!46037 List!7141)) (DelimiterValue!2939 (value!46038 List!7141)) (DedentValue!1469 (value!46039 List!7141)) (NewLineValue!1469 (value!46040 List!7141)) (IntegerValue!4407 (value!46041 (_ BitVec 32)) (text!10730 List!7141)) (IntegerValue!4408 (value!46042 Int) (text!10731 List!7141)) (Times!1469) (Or!1469) (Equal!1469) (Minus!1469) (Broken!7349 (value!46043 List!7141)) (And!1469) (Div!1469) (LessEqual!1469) (Mod!1469) (Concat!3239) (Not!1469) (Plus!1469) (SpaceValue!1469 (value!46044 List!7141)) (IntegerValue!4409 (value!46045 Int) (text!10732 List!7141)) (StringLiteralValue!4408 (text!10733 List!7141)) (FloatLiteralValue!2939 (text!10734 List!7141)) (BytesLiteralValue!1469 (value!46046 List!7141)) (CommentValue!2939 (value!46047 List!7141)) (StringLiteralValue!4409 (value!46048 List!7141)) (ErrorTokenValue!1469 (msg!1530 List!7141)) )
))
(declare-datatypes ((Regex!1770 0))(
  ( (ElementMatch!1770 (c!118763 (_ BitVec 16))) (Concat!3240 (regOne!4052 Regex!1770) (regTwo!4052 Regex!1770)) (EmptyExpr!1770) (Star!1770 (reg!2099 Regex!1770)) (EmptyLang!1770) (Union!1770 (regOne!4053 Regex!1770) (regTwo!4053 Regex!1770)) )
))
(declare-datatypes ((String!9085 0))(
  ( (String!9086 (value!46049 String)) )
))
(declare-datatypes ((IArray!5023 0))(
  ( (IArray!5024 (innerList!2569 List!7141)) )
))
(declare-datatypes ((Conc!2511 0))(
  ( (Node!2511 (left!5778 Conc!2511) (right!6108 Conc!2511) (csize!5252 Int) (cheight!2722 Int)) (Leaf!3745 (xs!5160 IArray!5023) (csize!5253 Int)) (Empty!2511) )
))
(declare-datatypes ((BalanceConc!5034 0))(
  ( (BalanceConc!5035 (c!118764 Conc!2511)) )
))
(declare-datatypes ((TokenValueInjection!2690 0))(
  ( (TokenValueInjection!2691 (toValue!2376 Int) (toChars!2235 Int)) )
))
(declare-datatypes ((Rule!2670 0))(
  ( (Rule!2671 (regex!1435 Regex!1770) (tag!1697 String!9085) (isSeparator!1435 Bool) (transformation!1435 TokenValueInjection!2690)) )
))
(declare-datatypes ((Token!2592 0))(
  ( (Token!2593 (value!46050 TokenValue!1469) (rule!2230 Rule!2670) (size!5671 Int) (originalCharacters!1467 List!7141)) )
))
(declare-datatypes ((List!7142 0))(
  ( (Nil!7128) (Cons!7128 (h!12529 Token!2592) (t!86154 List!7142)) )
))
(declare-datatypes ((IArray!5025 0))(
  ( (IArray!5026 (innerList!2570 List!7142)) )
))
(declare-datatypes ((Conc!2512 0))(
  ( (Node!2512 (left!5779 Conc!2512) (right!6109 Conc!2512) (csize!5254 Int) (cheight!2723 Int)) (Leaf!3746 (xs!5161 IArray!5025) (csize!5255 Int)) (Empty!2512) )
))
(declare-datatypes ((List!7143 0))(
  ( (Nil!7129) (Cons!7129 (h!12530 Rule!2670) (t!86155 List!7143)) )
))
(declare-datatypes ((BalanceConc!5036 0))(
  ( (BalanceConc!5037 (c!118765 Conc!2512)) )
))
(declare-datatypes ((PrintableTokens!174 0))(
  ( (PrintableTokens!175 (rules!8264 List!7143) (tokens!1242 BalanceConc!5036)) )
))
(declare-fun objs!31 () PrintableTokens!174)

(declare-fun tp!201137 () Bool)

(declare-fun inv!9121 (BalanceConc!5036) Bool)

(assert (=> b!659790 (= e!408018 (and tp!201137 (inv!9121 (tokens!1242 objs!31)) e!408016))))

(declare-fun b!659791 () Bool)

(declare-fun tp!201141 () Bool)

(declare-fun inv!9122 (Conc!2512) Bool)

(assert (=> b!659791 (= e!408016 (and (inv!9122 (c!118765 (tokens!1242 objs!31))) tp!201141))))

(declare-fun b!659792 () Bool)

(declare-fun tp!201140 () Bool)

(declare-fun e!408017 () Bool)

(declare-fun e!408020 () Bool)

(declare-fun sepR!1 () PrintableTokens!174)

(assert (=> b!659792 (= e!408017 (and tp!201140 (inv!9121 (tokens!1242 sepR!1)) e!408020))))

(declare-fun b!659793 () Bool)

(declare-fun res!292924 () Bool)

(declare-fun e!408015 () Bool)

(assert (=> b!659793 (=> (not res!292924) (not e!408015))))

(declare-fun sepL!1 () PrintableTokens!174)

(declare-fun usesJsonRules!0 (PrintableTokens!174) Bool)

(assert (=> b!659793 (= res!292924 (usesJsonRules!0 sepL!1))))

(declare-fun b!659794 () Bool)

(declare-fun tp!201139 () Bool)

(assert (=> b!659794 (= e!408020 (and (inv!9122 (c!118765 (tokens!1242 sepR!1))) tp!201139))))

(declare-fun b!659795 () Bool)

(declare-datatypes ((Option!1678 0))(
  ( (None!1677) (Some!1677 (v!17247 PrintableTokens!174)) )
))
(declare-fun lt!280620 () Option!1678)

(assert (=> b!659795 (= e!408015 (and (is-Some!1677 lt!280620) (not (= (rules!8264 (v!17247 lt!280620)) (rules!8264 sepR!1)))))))

(declare-fun append!259 (PrintableTokens!174 PrintableTokens!174) Option!1678)

(assert (=> b!659795 (= lt!280620 (append!259 sepL!1 objs!31))))

(declare-fun b!659796 () Bool)

(declare-fun e!408014 () Bool)

(declare-fun tp!201142 () Bool)

(assert (=> b!659796 (= e!408014 (and (inv!9122 (c!118765 (tokens!1242 sepL!1))) tp!201142))))

(declare-fun e!408019 () Bool)

(declare-fun b!659797 () Bool)

(declare-fun tp!201138 () Bool)

(assert (=> b!659797 (= e!408019 (and tp!201138 (inv!9121 (tokens!1242 sepL!1)) e!408014))))

(declare-fun res!292923 () Bool)

(assert (=> start!64510 (=> (not res!292923) (not e!408015))))

(assert (=> start!64510 (= res!292923 (usesJsonRules!0 objs!31))))

(assert (=> start!64510 e!408015))

(declare-fun inv!9123 (PrintableTokens!174) Bool)

(assert (=> start!64510 (and (inv!9123 objs!31) e!408018)))

(assert (=> start!64510 (and (inv!9123 sepL!1) e!408019)))

(assert (=> start!64510 (and (inv!9123 sepR!1) e!408017)))

(declare-fun b!659798 () Bool)

(declare-fun res!292922 () Bool)

(assert (=> b!659798 (=> (not res!292922) (not e!408015))))

(assert (=> b!659798 (= res!292922 (usesJsonRules!0 sepR!1))))

(assert (= (and start!64510 res!292923) b!659793))

(assert (= (and b!659793 res!292924) b!659798))

(assert (= (and b!659798 res!292922) b!659795))

(assert (= b!659790 b!659791))

(assert (= start!64510 b!659790))

(assert (= b!659797 b!659796))

(assert (= start!64510 b!659797))

(assert (= b!659792 b!659794))

(assert (= start!64510 b!659792))

(declare-fun m!925507 () Bool)

(assert (=> start!64510 m!925507))

(declare-fun m!925509 () Bool)

(assert (=> start!64510 m!925509))

(declare-fun m!925511 () Bool)

(assert (=> start!64510 m!925511))

(declare-fun m!925513 () Bool)

(assert (=> start!64510 m!925513))

(declare-fun m!925515 () Bool)

(assert (=> b!659797 m!925515))

(declare-fun m!925517 () Bool)

(assert (=> b!659795 m!925517))

(declare-fun m!925519 () Bool)

(assert (=> b!659794 m!925519))

(declare-fun m!925521 () Bool)

(assert (=> b!659793 m!925521))

(declare-fun m!925523 () Bool)

(assert (=> b!659792 m!925523))

(declare-fun m!925525 () Bool)

(assert (=> b!659790 m!925525))

(declare-fun m!925527 () Bool)

(assert (=> b!659798 m!925527))

(declare-fun m!925529 () Bool)

(assert (=> b!659796 m!925529))

(declare-fun m!925531 () Bool)

(assert (=> b!659791 m!925531))

(push 1)

(assert (not b!659795))

(assert (not b!659793))

(assert (not b!659796))

(assert (not start!64510))

(assert (not b!659790))

(assert (not b!659798))

(assert (not b!659794))

(assert (not b!659797))

(assert (not b!659791))

(assert (not b!659792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225848 () Bool)

(declare-fun c!118771 () Bool)

(assert (=> d!225848 (= c!118771 (is-Node!2512 (c!118765 (tokens!1242 sepR!1))))))

(declare-fun e!408046 () Bool)

(assert (=> d!225848 (= (inv!9122 (c!118765 (tokens!1242 sepR!1))) e!408046)))

(declare-fun b!659832 () Bool)

(declare-fun inv!9127 (Conc!2512) Bool)

(assert (=> b!659832 (= e!408046 (inv!9127 (c!118765 (tokens!1242 sepR!1))))))

(declare-fun b!659833 () Bool)

(declare-fun e!408047 () Bool)

(assert (=> b!659833 (= e!408046 e!408047)))

(declare-fun res!292941 () Bool)

(assert (=> b!659833 (= res!292941 (not (is-Leaf!3746 (c!118765 (tokens!1242 sepR!1)))))))

(assert (=> b!659833 (=> res!292941 e!408047)))

(declare-fun b!659834 () Bool)

(declare-fun inv!9128 (Conc!2512) Bool)

(assert (=> b!659834 (= e!408047 (inv!9128 (c!118765 (tokens!1242 sepR!1))))))

(assert (= (and d!225848 c!118771) b!659832))

(assert (= (and d!225848 (not c!118771)) b!659833))

(assert (= (and b!659833 (not res!292941)) b!659834))

(declare-fun m!925559 () Bool)

(assert (=> b!659832 m!925559))

(declare-fun m!925561 () Bool)

(assert (=> b!659834 m!925561))

(assert (=> b!659794 d!225848))

(declare-fun d!225850 () Bool)

(declare-datatypes ((JsonLexer!220 0))(
  ( (JsonLexer!221) )
))
(declare-fun rules!109 (JsonLexer!220) List!7143)

(assert (=> d!225850 (= (usesJsonRules!0 sepR!1) (= (rules!8264 sepR!1) (rules!109 JsonLexer!221)))))

(declare-fun bs!94395 () Bool)

(assert (= bs!94395 d!225850))

(declare-fun m!925563 () Bool)

(assert (=> bs!94395 m!925563))

(assert (=> b!659798 d!225850))

(declare-fun d!225854 () Bool)

(assert (=> d!225854 (= (usesJsonRules!0 sepL!1) (= (rules!8264 sepL!1) (rules!109 JsonLexer!221)))))

(declare-fun bs!94396 () Bool)

(assert (= bs!94396 d!225854))

(assert (=> bs!94396 m!925563))

(assert (=> b!659793 d!225854))

(declare-fun d!225856 () Bool)

(declare-fun isBalanced!660 (Conc!2512) Bool)

(assert (=> d!225856 (= (inv!9121 (tokens!1242 sepR!1)) (isBalanced!660 (c!118765 (tokens!1242 sepR!1))))))

(declare-fun bs!94397 () Bool)

(assert (= bs!94397 d!225856))

(declare-fun m!925565 () Bool)

(assert (=> bs!94397 m!925565))

(assert (=> b!659792 d!225856))

(declare-fun d!225858 () Bool)

(assert (=> d!225858 (= (inv!9121 (tokens!1242 sepL!1)) (isBalanced!660 (c!118765 (tokens!1242 sepL!1))))))

(declare-fun bs!94398 () Bool)

(assert (= bs!94398 d!225858))

(declare-fun m!925567 () Bool)

(assert (=> bs!94398 m!925567))

(assert (=> b!659797 d!225858))

(declare-fun d!225860 () Bool)

(declare-fun c!118772 () Bool)

(assert (=> d!225860 (= c!118772 (is-Node!2512 (c!118765 (tokens!1242 sepL!1))))))

(declare-fun e!408048 () Bool)

(assert (=> d!225860 (= (inv!9122 (c!118765 (tokens!1242 sepL!1))) e!408048)))

(declare-fun b!659835 () Bool)

(assert (=> b!659835 (= e!408048 (inv!9127 (c!118765 (tokens!1242 sepL!1))))))

(declare-fun b!659836 () Bool)

(declare-fun e!408049 () Bool)

(assert (=> b!659836 (= e!408048 e!408049)))

(declare-fun res!292942 () Bool)

(assert (=> b!659836 (= res!292942 (not (is-Leaf!3746 (c!118765 (tokens!1242 sepL!1)))))))

(assert (=> b!659836 (=> res!292942 e!408049)))

(declare-fun b!659837 () Bool)

(assert (=> b!659837 (= e!408049 (inv!9128 (c!118765 (tokens!1242 sepL!1))))))

(assert (= (and d!225860 c!118772) b!659835))

(assert (= (and d!225860 (not c!118772)) b!659836))

(assert (= (and b!659836 (not res!292942)) b!659837))

(declare-fun m!925569 () Bool)

(assert (=> b!659835 m!925569))

(declare-fun m!925571 () Bool)

(assert (=> b!659837 m!925571))

(assert (=> b!659796 d!225860))

(declare-fun d!225862 () Bool)

(declare-fun c!118773 () Bool)

(assert (=> d!225862 (= c!118773 (is-Node!2512 (c!118765 (tokens!1242 objs!31))))))

(declare-fun e!408050 () Bool)

(assert (=> d!225862 (= (inv!9122 (c!118765 (tokens!1242 objs!31))) e!408050)))

(declare-fun b!659838 () Bool)

(assert (=> b!659838 (= e!408050 (inv!9127 (c!118765 (tokens!1242 objs!31))))))

(declare-fun b!659839 () Bool)

(declare-fun e!408051 () Bool)

(assert (=> b!659839 (= e!408050 e!408051)))

(declare-fun res!292943 () Bool)

(assert (=> b!659839 (= res!292943 (not (is-Leaf!3746 (c!118765 (tokens!1242 objs!31)))))))

(assert (=> b!659839 (=> res!292943 e!408051)))

(declare-fun b!659840 () Bool)

(assert (=> b!659840 (= e!408051 (inv!9128 (c!118765 (tokens!1242 objs!31))))))

(assert (= (and d!225862 c!118773) b!659838))

(assert (= (and d!225862 (not c!118773)) b!659839))

(assert (= (and b!659839 (not res!292943)) b!659840))

(declare-fun m!925573 () Bool)

(assert (=> b!659838 m!925573))

(declare-fun m!925575 () Bool)

(assert (=> b!659840 m!925575))

(assert (=> b!659791 d!225862))

(declare-fun d!225864 () Bool)

(assert (=> d!225864 (= (inv!9121 (tokens!1242 objs!31)) (isBalanced!660 (c!118765 (tokens!1242 objs!31))))))

(declare-fun bs!94399 () Bool)

(assert (= bs!94399 d!225864))

(declare-fun m!925577 () Bool)

(assert (=> bs!94399 m!925577))

(assert (=> b!659790 d!225864))

(declare-fun d!225866 () Bool)

(assert (=> d!225866 (= (usesJsonRules!0 objs!31) (= (rules!8264 objs!31) (rules!109 JsonLexer!221)))))

(declare-fun bs!94400 () Bool)

(assert (= bs!94400 d!225866))

(assert (=> bs!94400 m!925563))

(assert (=> start!64510 d!225866))

(declare-fun d!225868 () Bool)

(declare-fun res!292950 () Bool)

(declare-fun e!408054 () Bool)

(assert (=> d!225868 (=> (not res!292950) (not e!408054))))

(declare-fun isEmpty!4776 (List!7143) Bool)

(assert (=> d!225868 (= res!292950 (not (isEmpty!4776 (rules!8264 objs!31))))))

(assert (=> d!225868 (= (inv!9123 objs!31) e!408054)))

(declare-fun b!659847 () Bool)

(declare-fun res!292951 () Bool)

(assert (=> b!659847 (=> (not res!292951) (not e!408054))))

(declare-datatypes ((LexerInterface!1268 0))(
  ( (LexerInterfaceExt!1265 (__x!5048 Int)) (Lexer!1266) )
))
(declare-fun rulesInvariant!1203 (LexerInterface!1268 List!7143) Bool)

(assert (=> b!659847 (= res!292951 (rulesInvariant!1203 Lexer!1266 (rules!8264 objs!31)))))

(declare-fun b!659848 () Bool)

(declare-fun res!292952 () Bool)

(assert (=> b!659848 (=> (not res!292952) (not e!408054))))

(declare-fun rulesProduceEachTokenIndividually!586 (LexerInterface!1268 List!7143 BalanceConc!5036) Bool)

(assert (=> b!659848 (= res!292952 (rulesProduceEachTokenIndividually!586 Lexer!1266 (rules!8264 objs!31) (tokens!1242 objs!31)))))

(declare-fun b!659849 () Bool)

(declare-fun separableTokens!36 (LexerInterface!1268 BalanceConc!5036 List!7143) Bool)

(assert (=> b!659849 (= e!408054 (separableTokens!36 Lexer!1266 (tokens!1242 objs!31) (rules!8264 objs!31)))))

(assert (= (and d!225868 res!292950) b!659847))

(assert (= (and b!659847 res!292951) b!659848))

(assert (= (and b!659848 res!292952) b!659849))

(declare-fun m!925579 () Bool)

(assert (=> d!225868 m!925579))

(declare-fun m!925581 () Bool)

(assert (=> b!659847 m!925581))

(declare-fun m!925583 () Bool)

(assert (=> b!659848 m!925583))

(declare-fun m!925585 () Bool)

(assert (=> b!659849 m!925585))

(assert (=> start!64510 d!225868))

(declare-fun d!225870 () Bool)

(declare-fun res!292953 () Bool)

(declare-fun e!408055 () Bool)

(assert (=> d!225870 (=> (not res!292953) (not e!408055))))

(assert (=> d!225870 (= res!292953 (not (isEmpty!4776 (rules!8264 sepL!1))))))

(assert (=> d!225870 (= (inv!9123 sepL!1) e!408055)))

(declare-fun b!659850 () Bool)

(declare-fun res!292954 () Bool)

(assert (=> b!659850 (=> (not res!292954) (not e!408055))))

(assert (=> b!659850 (= res!292954 (rulesInvariant!1203 Lexer!1266 (rules!8264 sepL!1)))))

(declare-fun b!659851 () Bool)

(declare-fun res!292955 () Bool)

(assert (=> b!659851 (=> (not res!292955) (not e!408055))))

(assert (=> b!659851 (= res!292955 (rulesProduceEachTokenIndividually!586 Lexer!1266 (rules!8264 sepL!1) (tokens!1242 sepL!1)))))

(declare-fun b!659852 () Bool)

(assert (=> b!659852 (= e!408055 (separableTokens!36 Lexer!1266 (tokens!1242 sepL!1) (rules!8264 sepL!1)))))

(assert (= (and d!225870 res!292953) b!659850))

(assert (= (and b!659850 res!292954) b!659851))

(assert (= (and b!659851 res!292955) b!659852))

(declare-fun m!925587 () Bool)

(assert (=> d!225870 m!925587))

(declare-fun m!925589 () Bool)

(assert (=> b!659850 m!925589))

(declare-fun m!925591 () Bool)

(assert (=> b!659851 m!925591))

(declare-fun m!925593 () Bool)

(assert (=> b!659852 m!925593))

(assert (=> start!64510 d!225870))

(declare-fun d!225872 () Bool)

(declare-fun res!292956 () Bool)

(declare-fun e!408056 () Bool)

(assert (=> d!225872 (=> (not res!292956) (not e!408056))))

(assert (=> d!225872 (= res!292956 (not (isEmpty!4776 (rules!8264 sepR!1))))))

(assert (=> d!225872 (= (inv!9123 sepR!1) e!408056)))

(declare-fun b!659853 () Bool)

(declare-fun res!292957 () Bool)

(assert (=> b!659853 (=> (not res!292957) (not e!408056))))

(assert (=> b!659853 (= res!292957 (rulesInvariant!1203 Lexer!1266 (rules!8264 sepR!1)))))

(declare-fun b!659854 () Bool)

(declare-fun res!292958 () Bool)

(assert (=> b!659854 (=> (not res!292958) (not e!408056))))

(assert (=> b!659854 (= res!292958 (rulesProduceEachTokenIndividually!586 Lexer!1266 (rules!8264 sepR!1) (tokens!1242 sepR!1)))))

(declare-fun b!659855 () Bool)

(assert (=> b!659855 (= e!408056 (separableTokens!36 Lexer!1266 (tokens!1242 sepR!1) (rules!8264 sepR!1)))))

(assert (= (and d!225872 res!292956) b!659853))

(assert (= (and b!659853 res!292957) b!659854))

(assert (= (and b!659854 res!292958) b!659855))

(declare-fun m!925595 () Bool)

(assert (=> d!225872 m!925595))

(declare-fun m!925597 () Bool)

(assert (=> b!659853 m!925597))

(declare-fun m!925599 () Bool)

(assert (=> b!659854 m!925599))

(declare-fun m!925601 () Bool)

(assert (=> b!659855 m!925601))

(assert (=> start!64510 d!225872))

(declare-fun b!659924 () Bool)

(declare-fun e!408100 () List!7142)

(declare-fun call!42640 () List!7142)

(assert (=> b!659924 (= e!408100 call!42640)))

(declare-fun bm!42630 () Bool)

(declare-fun lt!280774 () List!7142)

(declare-fun call!42649 () List!7141)

(declare-fun lt!280763 () List!7142)

(declare-fun lt!280799 () List!7142)

(declare-fun lt!280781 () LexerInterface!1268)

(declare-fun c!118803 () Bool)

(declare-fun c!118798 () Bool)

(declare-fun lt!280765 () LexerInterface!1268)

(declare-fun printList!441 (LexerInterface!1268 List!7142) List!7141)

(assert (=> bm!42630 (= call!42649 (printList!441 (ite c!118803 lt!280781 (ite c!118798 Lexer!1266 lt!280765)) (ite c!118803 lt!280799 (ite c!118798 (t!86154 lt!280774) lt!280763))))))

(declare-fun b!659925 () Bool)

(declare-fun c!118804 () Bool)

(declare-fun separableTokensPredicate!13 (LexerInterface!1268 Token!2592 Token!2592 List!7143) Bool)

(declare-fun last!49 (BalanceConc!5036) Token!2592)

(declare-fun head!1374 (BalanceConc!5036) Token!2592)

(assert (=> b!659925 (= c!118804 (separableTokensPredicate!13 Lexer!1266 (last!49 (tokens!1242 sepL!1)) (head!1374 (tokens!1242 objs!31)) (rules!8264 sepL!1)))))

(declare-datatypes ((Unit!12331 0))(
  ( (Unit!12332) )
))
(declare-fun lt!280761 () Unit!12331)

(declare-fun lt!280788 () Unit!12331)

(assert (=> b!659925 (= lt!280761 lt!280788)))

(declare-fun lt!280782 () LexerInterface!1268)

(declare-fun lt!280802 () Token!2592)

(declare-fun rulesProduceIndividualToken!523 (LexerInterface!1268 List!7143 Token!2592) Bool)

(assert (=> b!659925 (rulesProduceIndividualToken!523 lt!280782 (rules!8264 sepL!1) lt!280802)))

(declare-fun lt!280760 () List!7142)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!209 (LexerInterface!1268 List!7143 List!7142 Token!2592) Unit!12331)

(assert (=> b!659925 (= lt!280788 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!209 lt!280782 (rules!8264 sepL!1) lt!280760 lt!280802))))

(assert (=> b!659925 (= lt!280802 (head!1374 (tokens!1242 objs!31)))))

(assert (=> b!659925 (= lt!280760 call!42640)))

(assert (=> b!659925 (= lt!280782 Lexer!1266)))

(declare-fun lt!280813 () Unit!12331)

(declare-fun lt!280804 () Unit!12331)

(assert (=> b!659925 (= lt!280813 lt!280804)))

(declare-fun lt!280787 () LexerInterface!1268)

(declare-fun lt!280764 () Token!2592)

(assert (=> b!659925 (rulesProduceIndividualToken!523 lt!280787 (rules!8264 sepL!1) lt!280764)))

(declare-fun lt!280814 () List!7142)

(assert (=> b!659925 (= lt!280804 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!209 lt!280787 (rules!8264 sepL!1) lt!280814 lt!280764))))

(assert (=> b!659925 (= lt!280764 (last!49 (tokens!1242 sepL!1)))))

(declare-fun call!42662 () List!7142)

(assert (=> b!659925 (= lt!280814 call!42662)))

(assert (=> b!659925 (= lt!280787 Lexer!1266)))

(declare-fun e!408097 () Option!1678)

(declare-fun e!408094 () Option!1678)

(assert (=> b!659925 (= e!408097 e!408094)))

(declare-fun bm!42631 () Bool)

(declare-fun c!118802 () Bool)

(assert (=> bm!42631 (= c!118802 c!118798)))

(declare-fun call!42668 () List!7141)

(declare-fun call!42665 () List!7141)

(assert (=> bm!42631 (= call!42668 call!42665)))

(declare-fun bm!42632 () Bool)

(declare-fun call!42669 () List!7141)

(declare-fun call!42673 () List!7141)

(assert (=> bm!42632 (= call!42669 call!42673)))

(declare-fun call!42654 () List!7142)

(declare-fun call!42645 () Unit!12331)

(declare-fun bm!42633 () Bool)

(declare-fun theoremInvertabilityWhenTokenListSeparable!9 (LexerInterface!1268 List!7143 List!7142) Unit!12331)

(assert (=> bm!42633 (= call!42645 (theoremInvertabilityWhenTokenListSeparable!9 Lexer!1266 (rules!8264 sepL!1) (ite c!118803 call!42654 call!42662)))))

(declare-fun call!42658 () Unit!12331)

(declare-fun lt!280812 () List!7142)

(declare-fun lt!280809 () List!7142)

(declare-fun lt!280768 () LexerInterface!1268)

(declare-fun lt!280784 () List!7142)

(declare-fun lt!280769 () List!7142)

(declare-fun bm!42634 () Bool)

(declare-fun lemmaPrintConcatSameAsConcatPrint!4 (LexerInterface!1268 List!7142 List!7142) Unit!12331)

(assert (=> bm!42634 (= call!42658 (lemmaPrintConcatSameAsConcatPrint!4 (ite c!118803 lt!280781 (ite c!118798 lt!280768 lt!280765)) (ite c!118803 lt!280799 (ite c!118798 lt!280809 lt!280769)) (ite c!118803 lt!280812 (ite c!118798 lt!280784 lt!280763))))))

(declare-fun call!42651 () List!7142)

(declare-fun bm!42635 () Bool)

(declare-fun list!3042 (BalanceConc!5036) List!7142)

(assert (=> bm!42635 (= call!42651 (list!3042 (ite c!118803 (tokens!1242 objs!31) (tokens!1242 sepL!1))))))

(declare-fun bm!42636 () Bool)

(declare-fun call!42657 () BalanceConc!5034)

(declare-fun print!514 (PrintableTokens!174) BalanceConc!5034)

(assert (=> bm!42636 (= call!42657 (print!514 (ite (or c!118803 c!118798) sepL!1 objs!31)))))

(declare-fun bm!42638 () Bool)

(declare-fun call!42666 () BalanceConc!5034)

(declare-fun print!515 (LexerInterface!1268 BalanceConc!5036) BalanceConc!5034)

(assert (=> bm!42638 (= call!42666 (print!515 Lexer!1266 (ite c!118803 (tokens!1242 sepL!1) (tokens!1242 objs!31))))))

(declare-fun bm!42639 () Bool)

(declare-fun call!42670 () List!7141)

(declare-fun call!42661 () List!7141)

(assert (=> bm!42639 (= call!42670 call!42661)))

(declare-fun b!659926 () Bool)

(declare-fun e!408099 () List!7141)

(declare-fun call!42642 () List!7141)

(assert (=> b!659926 (= e!408099 call!42642)))

(declare-fun call!42672 () BalanceConc!5034)

(declare-fun bm!42640 () Bool)

(assert (=> bm!42640 (= call!42672 (print!514 (ite (or c!118803 c!118798) objs!31 sepL!1)))))

(declare-fun b!659927 () Bool)

(declare-fun e!408098 () List!7141)

(declare-fun call!42663 () List!7141)

(assert (=> b!659927 (= e!408098 call!42663)))

(declare-fun bm!42641 () Bool)

(declare-fun call!42636 () List!7141)

(declare-fun call!42667 () List!7142)

(declare-fun lt!280780 () LexerInterface!1268)

(declare-fun lt!280786 () List!7142)

(assert (=> bm!42641 (= call!42636 (printList!441 (ite c!118803 lt!280781 (ite c!118798 Lexer!1266 lt!280780)) (ite c!118803 call!42667 (ite c!118798 Nil!7128 lt!280786))))))

(declare-fun lt!280773 () List!7142)

(declare-fun bm!42642 () Bool)

(declare-fun call!42647 () List!7141)

(assert (=> bm!42642 (= call!42647 (printList!441 (ite c!118803 lt!280781 (ite c!118798 lt!280768 lt!280780)) (ite c!118803 lt!280812 (ite c!118798 lt!280809 lt!280773))))))

(declare-fun bm!42643 () Bool)

(declare-fun call!42650 () List!7141)

(assert (=> bm!42643 (= call!42650 call!42636)))

(declare-fun b!659928 () Bool)

(declare-fun lt!280771 () Unit!12331)

(declare-fun Unit!12333 () Unit!12331)

(assert (=> b!659928 (= lt!280771 Unit!12333)))

(assert (=> b!659928 (= call!42668 e!408099)))

(declare-fun c!118801 () Bool)

(assert (=> b!659928 (= c!118801 (is-Cons!7128 lt!280774))))

(assert (=> b!659928 (= lt!280774 call!42640)))

(declare-fun lt!280808 () Unit!12331)

(declare-fun Unit!12334 () Unit!12331)

(assert (=> b!659928 (= lt!280808 Unit!12334)))

(declare-fun call!42659 () BalanceConc!5034)

(declare-fun call!42646 () BalanceConc!5034)

(assert (=> b!659928 (= call!42659 call!42646)))

(declare-fun lt!280810 () Unit!12331)

(declare-fun Unit!12335 () Unit!12331)

(assert (=> b!659928 (= lt!280810 Unit!12335)))

(declare-fun call!42655 () BalanceConc!5034)

(assert (=> b!659928 (= call!42655 call!42659)))

(declare-fun lt!280772 () Unit!12331)

(declare-fun call!42644 () Unit!12331)

(assert (=> b!659928 (= lt!280772 call!42644)))

(declare-fun lt!280796 () Unit!12331)

(declare-fun Unit!12336 () Unit!12331)

(assert (=> b!659928 (= lt!280796 Unit!12336)))

(declare-fun call!42652 () BalanceConc!5034)

(declare-fun call!42641 () BalanceConc!5034)

(assert (=> b!659928 (= call!42652 call!42641)))

(declare-fun lt!280776 () Unit!12331)

(declare-fun call!42638 () Unit!12331)

(assert (=> b!659928 (= lt!280776 call!42638)))

(declare-fun lt!280806 () Unit!12331)

(declare-fun Unit!12337 () Unit!12331)

(assert (=> b!659928 (= lt!280806 Unit!12337)))

(assert (=> b!659928 (= call!42650 Nil!7127)))

(declare-fun lt!280754 () Unit!12331)

(declare-fun lt!280775 () Unit!12331)

(assert (=> b!659928 (= lt!280754 lt!280775)))

(declare-fun call!42671 () List!7141)

(assert (=> b!659928 (= call!42671 call!42669)))

(declare-fun call!42637 () Unit!12331)

(assert (=> b!659928 (= lt!280775 call!42637)))

(assert (=> b!659928 (= lt!280784 call!42640)))

(assert (=> b!659928 (= lt!280809 Nil!7128)))

(assert (=> b!659928 (= lt!280768 Lexer!1266)))

(assert (=> b!659928 (= e!408097 (Some!1677 objs!31))))

(declare-fun bm!42644 () Bool)

(assert (=> bm!42644 (= call!42662 call!42651)))

(declare-fun b!659929 () Bool)

(declare-fun ++!1903 (BalanceConc!5036 BalanceConc!5036) BalanceConc!5036)

(assert (=> b!659929 (= e!408094 (Some!1677 (PrintableTokens!175 (rules!8264 sepL!1) (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31)))))))

(declare-fun lt!280753 () LexerInterface!1268)

(assert (=> b!659929 (= lt!280753 Lexer!1266)))

(declare-fun lt!280791 () List!7142)

(assert (=> b!659929 (= lt!280791 call!42662)))

(declare-fun lt!280777 () List!7142)

(assert (=> b!659929 (= lt!280777 call!42640)))

(declare-fun lt!280783 () Unit!12331)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!4 (LexerInterface!1268 List!7142 List!7142 List!7143) Unit!12331)

(assert (=> b!659929 (= lt!280783 (tokensListTwoByTwoPredicateConcatSeparableTokensList!4 lt!280753 lt!280791 lt!280777 (rules!8264 sepL!1)))))

(declare-fun lt!280757 () Unit!12331)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!4 (LexerInterface!1268 List!7143 List!7142 List!7142) Unit!12331)

(assert (=> b!659929 (= lt!280757 (lemmaRulesProduceEachTokenIndividuallyConcat!4 lt!280753 (rules!8264 sepL!1) lt!280791 lt!280777))))

(declare-fun call!42643 () List!7142)

(declare-fun rulesProduceEachTokenIndividuallyList!342 (LexerInterface!1268 List!7143 List!7142) Bool)

(assert (=> b!659929 (rulesProduceEachTokenIndividuallyList!342 lt!280753 (rules!8264 sepL!1) call!42643)))

(declare-fun lt!280758 () Unit!12331)

(assert (=> b!659929 (= lt!280758 lt!280757)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!11 (LexerInterface!1268 List!7142 List!7143) Bool)

(assert (=> b!659929 (tokensListTwoByTwoPredicateSeparableList!11 lt!280753 call!42643 (rules!8264 sepL!1))))

(declare-fun lt!280798 () Unit!12331)

(assert (=> b!659929 (= lt!280798 lt!280783)))

(assert (=> b!659929 (= lt!280780 Lexer!1266)))

(assert (=> b!659929 (= lt!280773 call!42662)))

(assert (=> b!659929 (= lt!280786 call!42640)))

(declare-fun lt!280770 () Unit!12331)

(assert (=> b!659929 (= lt!280770 (lemmaPrintConcatSameAsConcatPrint!4 lt!280780 lt!280773 lt!280786))))

(assert (=> b!659929 (= call!42671 call!42669)))

(declare-fun lt!280766 () Unit!12331)

(assert (=> b!659929 (= lt!280766 lt!280770)))

(declare-fun lt!280807 () Unit!12331)

(assert (=> b!659929 (= lt!280807 call!42638)))

(assert (=> b!659929 (= call!42655 call!42641)))

(declare-fun lt!280803 () Unit!12331)

(declare-fun Unit!12338 () Unit!12331)

(assert (=> b!659929 (= lt!280803 Unit!12338)))

(declare-fun lt!280805 () Unit!12331)

(assert (=> b!659929 (= lt!280805 call!42644)))

(assert (=> b!659929 (= call!42652 call!42659)))

(declare-fun lt!280762 () Unit!12331)

(declare-fun Unit!12339 () Unit!12331)

(assert (=> b!659929 (= lt!280762 Unit!12339)))

(declare-fun lt!280797 () PrintableTokens!174)

(assert (=> b!659929 (= lt!280797 (PrintableTokens!175 (rules!8264 sepL!1) (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31))))))

(declare-fun lt!280789 () BalanceConc!5036)

(assert (=> b!659929 (= lt!280789 (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31)))))

(declare-fun lt!280759 () Unit!12331)

(assert (=> b!659929 (= lt!280759 (theoremInvertabilityWhenTokenListSeparable!9 Lexer!1266 (rules!8264 sepL!1) (list!3042 (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31)))))))

(assert (=> b!659929 (= (print!514 (PrintableTokens!175 (rules!8264 sepL!1) (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31)))) (print!515 Lexer!1266 (++!1903 (tokens!1242 sepL!1) (tokens!1242 objs!31))))))

(declare-fun lt!280792 () Unit!12331)

(declare-fun Unit!12340 () Unit!12331)

(assert (=> b!659929 (= lt!280792 Unit!12340)))

(assert (=> b!659929 (= lt!280765 Lexer!1266)))

(assert (=> b!659929 (= lt!280769 call!42662)))

(assert (=> b!659929 (= lt!280763 call!42640)))

(declare-fun lt!280815 () Unit!12331)

(assert (=> b!659929 (= lt!280815 call!42637)))

(assert (=> b!659929 (= call!42668 call!42642)))

(declare-fun lt!280800 () Unit!12331)

(assert (=> b!659929 (= lt!280800 lt!280815)))

(declare-fun bm!42645 () Bool)

(assert (=> bm!42645 (= call!42652 call!42657)))

(declare-fun b!659930 () Bool)

(assert (=> b!659930 (= e!408094 None!1677)))

(declare-fun bm!42646 () Bool)

(declare-fun call!42635 () List!7141)

(declare-fun ++!1904 (List!7141 List!7141) List!7141)

(assert (=> bm!42646 (= call!42673 (++!1904 (ite c!118803 call!42649 call!42635) (ite c!118803 call!42647 (ite c!118798 call!42670 call!42650))))))

(declare-fun bm!42647 () Bool)

(assert (=> bm!42647 (= call!42643 call!42667)))

(declare-fun b!659931 () Bool)

(declare-fun e!408101 () Option!1678)

(assert (=> b!659931 (= e!408101 e!408097)))

(declare-fun isEmpty!4777 (BalanceConc!5036) Bool)

(assert (=> b!659931 (= c!118798 (isEmpty!4777 (tokens!1242 sepL!1)))))

(declare-fun b!659932 () Bool)

(declare-fun ++!1905 (List!7142 List!7142) List!7142)

(assert (=> b!659932 (= e!408100 (++!1905 lt!280769 lt!280763))))

(declare-fun b!659933 () Bool)

(assert (=> b!659933 (= e!408098 call!42670)))

(declare-fun bm!42648 () Bool)

(assert (=> bm!42648 (= call!42640 call!42654)))

(declare-fun e!408095 () List!7142)

(declare-fun call!42653 () List!7141)

(declare-fun bm!42649 () Bool)

(assert (=> bm!42649 (= call!42653 (printList!441 (ite c!118803 Lexer!1266 (ite c!118798 lt!280768 lt!280780)) (ite c!118803 call!42651 e!408095)))))

(declare-fun bm!42650 () Bool)

(assert (=> bm!42650 (= call!42638 call!42645)))

(declare-fun call!42639 () List!7141)

(declare-fun call!42656 () List!7141)

(declare-fun bm!42651 () Bool)

(assert (=> bm!42651 (= call!42639 (++!1904 (ite c!118803 call!42663 e!408098) (ite c!118803 call!42665 call!42656)))))

(declare-fun b!659934 () Bool)

(assert (=> b!659934 (= e!408095 call!42643)))

(declare-fun b!659935 () Bool)

(declare-fun e!408092 () Bool)

(declare-fun e!408096 () Bool)

(assert (=> b!659935 (= e!408092 e!408096)))

(declare-fun res!292986 () Bool)

(assert (=> b!659935 (=> (not res!292986) (not e!408096))))

(declare-fun lt!280779 () Option!1678)

(declare-fun get!2521 (Option!1678) PrintableTokens!174)

(assert (=> b!659935 (= res!292986 (= (rules!8264 (get!2521 lt!280779)) (rules!8264 sepL!1)))))

(declare-fun lt!280778 () List!7142)

(declare-fun bm!42652 () Bool)

(assert (=> bm!42652 (= call!42665 (printList!441 (ite (or c!118803 c!118798) Lexer!1266 lt!280765) (ite c!118803 (t!86154 lt!280778) e!408100)))))

(declare-fun bm!42653 () Bool)

(declare-fun call!42660 () BalanceConc!5034)

(assert (=> bm!42653 (= call!42660 (print!515 Lexer!1266 (ite c!118803 (tokens!1242 objs!31) (tokens!1242 sepL!1))))))

(declare-fun bm!42654 () Bool)

(assert (=> bm!42654 (= call!42654 (list!3042 (ite c!118803 (tokens!1242 sepL!1) (tokens!1242 objs!31))))))

(declare-fun bm!42655 () Bool)

(declare-fun c!118800 () Bool)

(assert (=> bm!42655 (= c!118800 c!118798)))

(assert (=> bm!42655 (= call!42671 call!42653)))

(declare-fun bm!42656 () Bool)

(declare-fun c!118799 () Bool)

(assert (=> bm!42656 (= c!118799 c!118798)))

(assert (=> bm!42656 (= call!42642 call!42639)))

(declare-fun b!659936 () Bool)

(declare-fun list!3043 (BalanceConc!5034) List!7141)

(assert (=> b!659936 (= e!408096 (= (list!3043 (print!514 (get!2521 lt!280779))) (++!1904 (list!3043 (print!514 sepL!1)) (list!3043 (print!514 objs!31)))))))

(declare-fun d!225874 () Bool)

(assert (=> d!225874 e!408092))

(declare-fun res!292985 () Bool)

(assert (=> d!225874 (=> res!292985 e!408092)))

(declare-fun isEmpty!4778 (Option!1678) Bool)

(assert (=> d!225874 (= res!292985 (isEmpty!4778 lt!280779))))

(assert (=> d!225874 (= lt!280779 e!408101)))

(assert (=> d!225874 (= c!118803 (isEmpty!4777 (tokens!1242 objs!31)))))

(declare-fun lt!280795 () Unit!12331)

(declare-fun lemmaInvariant!79 (PrintableTokens!174) Unit!12331)

(assert (=> d!225874 (= lt!280795 (lemmaInvariant!79 sepL!1))))

(declare-fun lt!280790 () Unit!12331)

(assert (=> d!225874 (= lt!280790 (lemmaInvariant!79 objs!31))))

(assert (=> d!225874 (= (rules!8264 sepL!1) (rules!8264 objs!31))))

(assert (=> d!225874 (= (append!259 sepL!1 objs!31) lt!280779)))

(declare-fun bm!42637 () Bool)

(assert (=> bm!42637 (= call!42656 call!42649)))

(declare-fun call!42648 () Unit!12331)

(declare-fun bm!42657 () Bool)

(assert (=> bm!42657 (= call!42648 (theoremInvertabilityWhenTokenListSeparable!9 Lexer!1266 (rules!8264 objs!31) (ite c!118803 call!42651 call!42640)))))

(declare-fun bm!42658 () Bool)

(assert (=> bm!42658 (= call!42667 (++!1905 (ite c!118803 lt!280799 (ite c!118798 lt!280809 lt!280791)) (ite c!118803 lt!280812 (ite c!118798 lt!280784 lt!280777))))))

(declare-fun bm!42659 () Bool)

(declare-fun printTailRec!453 (LexerInterface!1268 BalanceConc!5036 Int BalanceConc!5034) BalanceConc!5034)

(assert (=> bm!42659 (= call!42646 (printTailRec!453 Lexer!1266 (tokens!1242 objs!31) 0 (BalanceConc!5035 Empty!2511)))))

(declare-fun bm!42660 () Bool)

(assert (=> bm!42660 (= call!42655 call!42672)))

(declare-fun b!659937 () Bool)

(assert (=> b!659937 (= e!408099 Nil!7127)))

(declare-fun bm!42661 () Bool)

(assert (=> bm!42661 (= call!42661 (printList!441 (ite c!118803 Lexer!1266 (ite c!118798 lt!280768 lt!280765)) (ite c!118803 Nil!7128 (ite c!118798 lt!280784 lt!280769))))))

(declare-fun bm!42662 () Bool)

(assert (=> bm!42662 (= call!42644 call!42648)))

(declare-fun bm!42663 () Bool)

(declare-fun call!42664 () BalanceConc!5034)

(declare-fun charsOf!913 (Token!2592) BalanceConc!5034)

(assert (=> bm!42663 (= call!42664 (charsOf!913 (ite c!118803 (h!12529 lt!280778) (h!12529 lt!280774))))))

(declare-fun bm!42664 () Bool)

(assert (=> bm!42664 (= call!42637 call!42658)))

(declare-fun b!659938 () Bool)

(declare-fun e!408093 () List!7141)

(assert (=> b!659938 (= e!408093 Nil!7127)))

(declare-fun b!659939 () Bool)

(assert (=> b!659939 (= e!408093 call!42639)))

(declare-fun b!659940 () Bool)

(assert (=> b!659940 (= e!408101 (Some!1677 sepL!1))))

(assert (=> b!659940 (= lt!280781 Lexer!1266)))

(assert (=> b!659940 (= lt!280799 call!42654)))

(assert (=> b!659940 (= lt!280812 Nil!7128)))

(declare-fun lt!280785 () Unit!12331)

(assert (=> b!659940 (= lt!280785 call!42658)))

(assert (=> b!659940 (= call!42636 call!42673)))

(declare-fun lt!280793 () Unit!12331)

(assert (=> b!659940 (= lt!280793 lt!280785)))

(assert (=> b!659940 (= call!42661 Nil!7127)))

(declare-fun lt!280752 () Unit!12331)

(declare-fun Unit!12341 () Unit!12331)

(assert (=> b!659940 (= lt!280752 Unit!12341)))

(declare-fun lt!280767 () Unit!12331)

(assert (=> b!659940 (= lt!280767 call!42645)))

(assert (=> b!659940 (= call!42657 call!42666)))

(declare-fun lt!280755 () Unit!12331)

(declare-fun Unit!12342 () Unit!12331)

(assert (=> b!659940 (= lt!280755 Unit!12342)))

(declare-fun lt!280756 () Unit!12331)

(assert (=> b!659940 (= lt!280756 call!42648)))

(assert (=> b!659940 (= call!42672 call!42660)))

(declare-fun lt!280811 () Unit!12331)

(declare-fun Unit!12343 () Unit!12331)

(assert (=> b!659940 (= lt!280811 Unit!12343)))

(assert (=> b!659940 (= call!42660 call!42646)))

(declare-fun lt!280794 () Unit!12331)

(declare-fun Unit!12344 () Unit!12331)

(assert (=> b!659940 (= lt!280794 Unit!12344)))

(assert (=> b!659940 (= lt!280778 call!42651)))

(declare-fun c!118797 () Bool)

(assert (=> b!659940 (= c!118797 (is-Cons!7128 lt!280778))))

(assert (=> b!659940 (= call!42653 e!408093)))

(declare-fun lt!280801 () Unit!12331)

(declare-fun Unit!12345 () Unit!12331)

(assert (=> b!659940 (= lt!280801 Unit!12345)))

(declare-fun bm!42665 () Bool)

(assert (=> bm!42665 (= call!42659 call!42666)))

(declare-fun b!659941 () Bool)

(declare-fun res!292987 () Bool)

(assert (=> b!659941 (=> (not res!292987) (not e!408096))))

(assert (=> b!659941 (= res!292987 (= (list!3042 (tokens!1242 (get!2521 lt!280779))) (++!1905 (list!3042 (tokens!1242 sepL!1)) (list!3042 (tokens!1242 objs!31)))))))

(declare-fun bm!42666 () Bool)

(assert (=> bm!42666 (= call!42635 call!42647)))

(declare-fun bm!42667 () Bool)

(assert (=> bm!42667 (= call!42663 (list!3043 call!42664))))

(declare-fun bm!42668 () Bool)

(assert (=> bm!42668 (= call!42641 call!42660)))

(declare-fun b!659942 () Bool)

(assert (=> b!659942 (= e!408095 (++!1905 lt!280773 lt!280786))))

(assert (= (and d!225874 c!118803) b!659940))

(assert (= (and d!225874 (not c!118803)) b!659931))

(assert (= (and b!659940 c!118797) b!659939))

(assert (= (and b!659940 (not c!118797)) b!659938))

(assert (= (and b!659931 c!118798) b!659928))

(assert (= (and b!659931 (not c!118798)) b!659925))

(assert (= (and b!659928 c!118801) b!659926))

(assert (= (and b!659928 (not c!118801)) b!659937))

(assert (= (and b!659925 c!118804) b!659929))

(assert (= (and b!659925 (not c!118804)) b!659930))

(assert (= (or b!659928 b!659929) bm!42664))

(assert (= (or b!659928 b!659929) bm!42645))

(assert (= (or b!659928 b!659929) bm!42660))

(assert (= (or b!659928 b!659925 b!659929) bm!42644))

(assert (= (or b!659928 b!659929) bm!42668))

(assert (= (or b!659928 b!659929) bm!42639))

(assert (= (or b!659928 b!659929) bm!42643))

(assert (= (or b!659928 b!659929) bm!42666))

(assert (= (or b!659926 b!659929) bm!42637))

(assert (= (or b!659928 b!659929) bm!42647))

(assert (= (or b!659928 b!659929) bm!42665))

(assert (= (or b!659928 b!659925 b!659929) bm!42648))

(assert (= (or b!659928 b!659929) bm!42662))

(assert (= (or b!659928 b!659929) bm!42631))

(assert (= (and bm!42631 c!118802) b!659924))

(assert (= (and bm!42631 (not c!118802)) b!659932))

(assert (= (or b!659928 b!659929) bm!42655))

(assert (= (and bm!42655 c!118800) b!659934))

(assert (= (and bm!42655 (not c!118800)) b!659942))

(assert (= (or b!659928 b!659929) bm!42650))

(assert (= (or b!659928 b!659929) bm!42632))

(assert (= (or b!659926 b!659929) bm!42656))

(assert (= (and bm!42656 c!118799) b!659927))

(assert (= (and bm!42656 (not c!118799)) b!659933))

(assert (= (or b!659939 bm!42631) bm!42652))

(assert (= (or b!659939 b!659927) bm!42663))

(assert (= (or b!659940 bm!42668) bm!42653))

(assert (= (or b!659940 bm!42637) bm!42630))

(assert (= (or b!659940 bm!42660) bm!42640))

(assert (= (or b!659940 bm!42644) bm!42635))

(assert (= (or b!659940 b!659928) bm!42659))

(assert (= (or b!659940 bm!42664) bm!42634))

(assert (= (or b!659940 bm!42665) bm!42638))

(assert (= (or b!659940 bm!42647) bm!42658))

(assert (= (or b!659940 bm!42645) bm!42636))

(assert (= (or b!659940 bm!42639) bm!42661))

(assert (= (or b!659940 bm!42666) bm!42642))

(assert (= (or b!659940 bm!42648) bm!42654))

(assert (= (or b!659940 bm!42655) bm!42649))

(assert (= (or b!659940 bm!42643) bm!42641))

(assert (= (or b!659940 bm!42662) bm!42657))

(assert (= (or b!659940 bm!42650) bm!42633))

(assert (= (or b!659940 bm!42632) bm!42646))

(assert (= (or b!659939 b!659927) bm!42667))

(assert (= (or b!659939 bm!42656) bm!42651))

(assert (= (and d!225874 (not res!292985)) b!659935))

(assert (= (and b!659935 res!292986) b!659941))

(assert (= (and b!659941 res!292987) b!659936))

(declare-fun m!925645 () Bool)

(assert (=> bm!42630 m!925645))

(declare-fun m!925647 () Bool)

(assert (=> d!225874 m!925647))

(declare-fun m!925649 () Bool)

(assert (=> d!225874 m!925649))

(declare-fun m!925651 () Bool)

(assert (=> d!225874 m!925651))

(declare-fun m!925653 () Bool)

(assert (=> d!225874 m!925653))

(declare-fun m!925655 () Bool)

(assert (=> bm!42646 m!925655))

(declare-fun m!925657 () Bool)

(assert (=> bm!42667 m!925657))

(declare-fun m!925659 () Bool)

(assert (=> bm!42641 m!925659))

(declare-fun m!925661 () Bool)

(assert (=> b!659942 m!925661))

(declare-fun m!925663 () Bool)

(assert (=> bm!42651 m!925663))

(declare-fun m!925665 () Bool)

(assert (=> bm!42636 m!925665))

(declare-fun m!925667 () Bool)

(assert (=> b!659936 m!925667))

(declare-fun m!925669 () Bool)

(assert (=> b!659936 m!925669))

(declare-fun m!925671 () Bool)

(assert (=> b!659936 m!925671))

(declare-fun m!925673 () Bool)

(assert (=> b!659936 m!925673))

(declare-fun m!925675 () Bool)

(assert (=> b!659936 m!925675))

(assert (=> b!659936 m!925667))

(assert (=> b!659936 m!925673))

(declare-fun m!925677 () Bool)

(assert (=> b!659936 m!925677))

(assert (=> b!659936 m!925671))

(assert (=> b!659936 m!925675))

(declare-fun m!925679 () Bool)

(assert (=> b!659936 m!925679))

(assert (=> b!659936 m!925679))

(assert (=> b!659936 m!925669))

(declare-fun m!925681 () Bool)

(assert (=> b!659936 m!925681))

(declare-fun m!925683 () Bool)

(assert (=> bm!42640 m!925683))

(declare-fun m!925685 () Bool)

(assert (=> bm!42659 m!925685))

(declare-fun m!925687 () Bool)

(assert (=> bm!42633 m!925687))

(declare-fun m!925689 () Bool)

(assert (=> bm!42652 m!925689))

(declare-fun m!925691 () Bool)

(assert (=> bm!42638 m!925691))

(declare-fun m!925693 () Bool)

(assert (=> bm!42657 m!925693))

(declare-fun m!925695 () Bool)

(assert (=> bm!42653 m!925695))

(declare-fun m!925697 () Bool)

(assert (=> bm!42634 m!925697))

(declare-fun m!925699 () Bool)

(assert (=> bm!42654 m!925699))

(declare-fun m!925701 () Bool)

(assert (=> b!659932 m!925701))

(declare-fun m!925703 () Bool)

(assert (=> bm!42649 m!925703))

(declare-fun m!925705 () Bool)

(assert (=> b!659941 m!925705))

(declare-fun m!925707 () Bool)

(assert (=> b!659941 m!925707))

(declare-fun m!925709 () Bool)

(assert (=> b!659941 m!925709))

(declare-fun m!925711 () Bool)

(assert (=> b!659941 m!925711))

(assert (=> b!659941 m!925707))

(assert (=> b!659941 m!925705))

(assert (=> b!659941 m!925671))

(declare-fun m!925713 () Bool)

(assert (=> b!659931 m!925713))

(declare-fun m!925715 () Bool)

(assert (=> b!659929 m!925715))

(declare-fun m!925717 () Bool)

(assert (=> b!659929 m!925717))

(declare-fun m!925719 () Bool)

(assert (=> b!659929 m!925719))

(assert (=> b!659929 m!925715))

(declare-fun m!925721 () Bool)

(assert (=> b!659929 m!925721))

(declare-fun m!925723 () Bool)

(assert (=> b!659929 m!925723))

(assert (=> b!659929 m!925717))

(declare-fun m!925725 () Bool)

(assert (=> b!659929 m!925725))

(declare-fun m!925727 () Bool)

(assert (=> b!659929 m!925727))

(assert (=> b!659929 m!925715))

(declare-fun m!925729 () Bool)

(assert (=> b!659929 m!925729))

(declare-fun m!925731 () Bool)

(assert (=> b!659929 m!925731))

(declare-fun m!925733 () Bool)

(assert (=> b!659929 m!925733))

(declare-fun m!925735 () Bool)

(assert (=> bm!42642 m!925735))

(assert (=> b!659935 m!925671))

(declare-fun m!925737 () Bool)

(assert (=> b!659925 m!925737))

(declare-fun m!925739 () Bool)

(assert (=> b!659925 m!925739))

(declare-fun m!925741 () Bool)

(assert (=> b!659925 m!925741))

(declare-fun m!925743 () Bool)

(assert (=> b!659925 m!925743))

(declare-fun m!925745 () Bool)

(assert (=> b!659925 m!925745))

(declare-fun m!925747 () Bool)

(assert (=> b!659925 m!925747))

(assert (=> b!659925 m!925739))

(assert (=> b!659925 m!925745))

(declare-fun m!925749 () Bool)

(assert (=> b!659925 m!925749))

(declare-fun m!925751 () Bool)

(assert (=> bm!42663 m!925751))

(declare-fun m!925753 () Bool)

(assert (=> bm!42661 m!925753))

(declare-fun m!925755 () Bool)

(assert (=> bm!42658 m!925755))

(declare-fun m!925757 () Bool)

(assert (=> bm!42635 m!925757))

(assert (=> b!659795 d!225874))

(declare-fun b!659951 () Bool)

(declare-fun tp!201168 () Bool)

(declare-fun tp!201167 () Bool)

(declare-fun e!408107 () Bool)

(assert (=> b!659951 (= e!408107 (and (inv!9122 (left!5779 (c!118765 (tokens!1242 sepR!1)))) tp!201167 (inv!9122 (right!6109 (c!118765 (tokens!1242 sepR!1)))) tp!201168))))

(declare-fun b!659953 () Bool)

(declare-fun e!408106 () Bool)

(declare-fun tp!201169 () Bool)

(assert (=> b!659953 (= e!408106 tp!201169)))

(declare-fun b!659952 () Bool)

(declare-fun inv!9129 (IArray!5025) Bool)

(assert (=> b!659952 (= e!408107 (and (inv!9129 (xs!5161 (c!118765 (tokens!1242 sepR!1)))) e!408106))))

(assert (=> b!659794 (= tp!201139 (and (inv!9122 (c!118765 (tokens!1242 sepR!1))) e!408107))))

(assert (= (and b!659794 (is-Node!2512 (c!118765 (tokens!1242 sepR!1)))) b!659951))

(assert (= b!659952 b!659953))

(assert (= (and b!659794 (is-Leaf!3746 (c!118765 (tokens!1242 sepR!1)))) b!659952))

(declare-fun m!925759 () Bool)

(assert (=> b!659951 m!925759))

(declare-fun m!925761 () Bool)

(assert (=> b!659951 m!925761))

(declare-fun m!925763 () Bool)

(assert (=> b!659952 m!925763))

(assert (=> b!659794 m!925519))

(declare-fun b!659964 () Bool)

(declare-fun b_free!19017 () Bool)

(declare-fun b_next!19081 () Bool)

(assert (=> b!659964 (= b_free!19017 (not b_next!19081))))

(declare-fun tp!201178 () Bool)

(declare-fun b_and!62811 () Bool)

(assert (=> b!659964 (= tp!201178 b_and!62811)))

(declare-fun b_free!19019 () Bool)

(declare-fun b_next!19083 () Bool)

(assert (=> b!659964 (= b_free!19019 (not b_next!19083))))

(declare-fun tp!201176 () Bool)

(declare-fun b_and!62813 () Bool)

(assert (=> b!659964 (= tp!201176 b_and!62813)))

(declare-fun e!408116 () Bool)

(assert (=> b!659964 (= e!408116 (and tp!201178 tp!201176))))

(declare-fun b!659963 () Bool)

(declare-fun e!408117 () Bool)

(declare-fun inv!9118 (String!9085) Bool)

(declare-fun inv!9132 (TokenValueInjection!2690) Bool)

(assert (=> b!659963 (= e!408117 (and (inv!9118 (tag!1697 (h!12530 (rules!8264 sepR!1)))) (inv!9132 (transformation!1435 (h!12530 (rules!8264 sepR!1)))) e!408116))))

(declare-fun b!659962 () Bool)

(declare-fun e!408119 () Bool)

(declare-fun tp!201177 () Bool)

(assert (=> b!659962 (= e!408119 (and e!408117 tp!201177))))

(assert (=> b!659792 (= tp!201140 e!408119)))

(assert (= b!659963 b!659964))

(assert (= b!659962 b!659963))

(assert (= (and b!659792 (is-Cons!7129 (rules!8264 sepR!1))) b!659962))

(declare-fun m!925765 () Bool)

(assert (=> b!659963 m!925765))

(declare-fun m!925767 () Bool)

(assert (=> b!659963 m!925767))

(declare-fun b!659967 () Bool)

(declare-fun b_free!19021 () Bool)

(declare-fun b_next!19085 () Bool)

(assert (=> b!659967 (= b_free!19021 (not b_next!19085))))

(declare-fun tp!201181 () Bool)

(declare-fun b_and!62815 () Bool)

(assert (=> b!659967 (= tp!201181 b_and!62815)))

(declare-fun b_free!19023 () Bool)

(declare-fun b_next!19087 () Bool)

(assert (=> b!659967 (= b_free!19023 (not b_next!19087))))

(declare-fun tp!201179 () Bool)

(declare-fun b_and!62817 () Bool)

(assert (=> b!659967 (= tp!201179 b_and!62817)))

(declare-fun e!408120 () Bool)

(assert (=> b!659967 (= e!408120 (and tp!201181 tp!201179))))

(declare-fun b!659966 () Bool)

(declare-fun e!408121 () Bool)

(assert (=> b!659966 (= e!408121 (and (inv!9118 (tag!1697 (h!12530 (rules!8264 sepL!1)))) (inv!9132 (transformation!1435 (h!12530 (rules!8264 sepL!1)))) e!408120))))

(declare-fun b!659965 () Bool)

(declare-fun e!408123 () Bool)

(declare-fun tp!201180 () Bool)

(assert (=> b!659965 (= e!408123 (and e!408121 tp!201180))))

(assert (=> b!659797 (= tp!201138 e!408123)))

(assert (= b!659966 b!659967))

(assert (= b!659965 b!659966))

(assert (= (and b!659797 (is-Cons!7129 (rules!8264 sepL!1))) b!659965))

(declare-fun m!925769 () Bool)

(assert (=> b!659966 m!925769))

(declare-fun m!925771 () Bool)

(assert (=> b!659966 m!925771))

(declare-fun tp!201182 () Bool)

(declare-fun b!659968 () Bool)

(declare-fun e!408125 () Bool)

(declare-fun tp!201183 () Bool)

(assert (=> b!659968 (= e!408125 (and (inv!9122 (left!5779 (c!118765 (tokens!1242 sepL!1)))) tp!201182 (inv!9122 (right!6109 (c!118765 (tokens!1242 sepL!1)))) tp!201183))))

(declare-fun b!659970 () Bool)

(declare-fun e!408124 () Bool)

(declare-fun tp!201184 () Bool)

(assert (=> b!659970 (= e!408124 tp!201184)))

(declare-fun b!659969 () Bool)

(assert (=> b!659969 (= e!408125 (and (inv!9129 (xs!5161 (c!118765 (tokens!1242 sepL!1)))) e!408124))))

(assert (=> b!659796 (= tp!201142 (and (inv!9122 (c!118765 (tokens!1242 sepL!1))) e!408125))))

(assert (= (and b!659796 (is-Node!2512 (c!118765 (tokens!1242 sepL!1)))) b!659968))

(assert (= b!659969 b!659970))

(assert (= (and b!659796 (is-Leaf!3746 (c!118765 (tokens!1242 sepL!1)))) b!659969))

(declare-fun m!925773 () Bool)

(assert (=> b!659968 m!925773))

(declare-fun m!925775 () Bool)

(assert (=> b!659968 m!925775))

(declare-fun m!925777 () Bool)

(assert (=> b!659969 m!925777))

(assert (=> b!659796 m!925529))

(declare-fun tp!201185 () Bool)

(declare-fun tp!201186 () Bool)

(declare-fun b!659971 () Bool)

(declare-fun e!408127 () Bool)

(assert (=> b!659971 (= e!408127 (and (inv!9122 (left!5779 (c!118765 (tokens!1242 objs!31)))) tp!201185 (inv!9122 (right!6109 (c!118765 (tokens!1242 objs!31)))) tp!201186))))

(declare-fun b!659973 () Bool)

(declare-fun e!408126 () Bool)

(declare-fun tp!201187 () Bool)

(assert (=> b!659973 (= e!408126 tp!201187)))

(declare-fun b!659972 () Bool)

(assert (=> b!659972 (= e!408127 (and (inv!9129 (xs!5161 (c!118765 (tokens!1242 objs!31)))) e!408126))))

(assert (=> b!659791 (= tp!201141 (and (inv!9122 (c!118765 (tokens!1242 objs!31))) e!408127))))

(assert (= (and b!659791 (is-Node!2512 (c!118765 (tokens!1242 objs!31)))) b!659971))

(assert (= b!659972 b!659973))

(assert (= (and b!659791 (is-Leaf!3746 (c!118765 (tokens!1242 objs!31)))) b!659972))

(declare-fun m!925779 () Bool)

(assert (=> b!659971 m!925779))

(declare-fun m!925781 () Bool)

(assert (=> b!659971 m!925781))

(declare-fun m!925783 () Bool)

(assert (=> b!659972 m!925783))

(assert (=> b!659791 m!925531))

(declare-fun b!659976 () Bool)

(declare-fun b_free!19025 () Bool)

(declare-fun b_next!19089 () Bool)

(assert (=> b!659976 (= b_free!19025 (not b_next!19089))))

(declare-fun tp!201190 () Bool)

(declare-fun b_and!62819 () Bool)

(assert (=> b!659976 (= tp!201190 b_and!62819)))

(declare-fun b_free!19027 () Bool)

(declare-fun b_next!19091 () Bool)

(assert (=> b!659976 (= b_free!19027 (not b_next!19091))))

(declare-fun tp!201188 () Bool)

(declare-fun b_and!62821 () Bool)

(assert (=> b!659976 (= tp!201188 b_and!62821)))

(declare-fun e!408128 () Bool)

(assert (=> b!659976 (= e!408128 (and tp!201190 tp!201188))))

(declare-fun b!659975 () Bool)

(declare-fun e!408129 () Bool)

(assert (=> b!659975 (= e!408129 (and (inv!9118 (tag!1697 (h!12530 (rules!8264 objs!31)))) (inv!9132 (transformation!1435 (h!12530 (rules!8264 objs!31)))) e!408128))))

(declare-fun b!659974 () Bool)

(declare-fun e!408131 () Bool)

(declare-fun tp!201189 () Bool)

(assert (=> b!659974 (= e!408131 (and e!408129 tp!201189))))

(assert (=> b!659790 (= tp!201137 e!408131)))

(assert (= b!659975 b!659976))

(assert (= b!659974 b!659975))

(assert (= (and b!659790 (is-Cons!7129 (rules!8264 objs!31))) b!659974))

(declare-fun m!925785 () Bool)

(assert (=> b!659975 m!925785))

(declare-fun m!925787 () Bool)

(assert (=> b!659975 m!925787))

(push 1)

(assert (not b!659932))

(assert (not b!659796))

(assert (not b!659942))

(assert (not b!659848))

(assert (not b!659931))

(assert (not b!659952))

(assert (not b!659832))

(assert (not b!659854))

(assert (not bm!42638))

(assert b_and!62821)

(assert (not d!225854))

(assert (not b!659935))

(assert (not b!659965))

(assert (not d!225850))

(assert (not b!659970))

(assert (not bm!42658))

(assert (not b!659969))

(assert (not b!659850))

(assert (not b!659963))

(assert (not b!659971))

(assert (not bm!42646))

(assert (not b!659853))

(assert (not d!225858))

(assert (not b!659849))

(assert (not b!659925))

(assert (not b!659975))

(assert (not b!659974))

(assert (not b!659794))

(assert (not bm!42630))

(assert (not d!225856))

(assert (not bm!42651))

(assert (not b!659847))

(assert (not bm!42649))

(assert (not b!659966))

(assert (not b!659962))

(assert (not bm!42663))

(assert (not bm!42657))

(assert (not bm!42635))

(assert (not b!659838))

(assert (not bm!42667))

(assert (not d!225864))

(assert (not b_next!19083))

(assert (not bm!42652))

(assert (not b!659953))

(assert (not b!659972))

(assert (not d!225872))

(assert (not b!659791))

(assert (not b!659941))

(assert (not b!659852))

(assert b_and!62815)

(assert b_and!62811)

(assert (not bm!42642))

(assert (not b!659968))

(assert (not bm!42654))

(assert (not b!659951))

(assert (not bm!42653))

(assert (not bm!42640))

(assert (not b!659973))

(assert (not b_next!19085))

(assert b_and!62817)

(assert (not b!659837))

(assert (not b!659936))

(assert (not b!659929))

(assert (not d!225870))

(assert (not b_next!19089))

(assert (not d!225866))

(assert b_and!62819)

(assert (not b!659840))

(assert (not bm!42659))

(assert (not bm!42634))

(assert (not d!225874))

(assert (not bm!42633))

(assert (not d!225868))

(assert (not bm!42636))

(assert (not bm!42641))

(assert (not b_next!19091))

(assert (not b!659855))

(assert (not b_next!19081))

(assert b_and!62813)

(assert (not b!659834))

(assert (not b_next!19087))

(assert (not b!659835))

(assert (not bm!42661))

(assert (not b!659851))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62821)

(assert (not b_next!19083))

(assert b_and!62815)

(assert b_and!62811)

(assert (not b_next!19087))

(assert (not b_next!19085))

(assert b_and!62817)

(assert (not b_next!19089))

(assert b_and!62819)

(assert (not b_next!19091))

(assert (not b_next!19081))

(assert b_and!62813)

(check-sat)

(pop 1)


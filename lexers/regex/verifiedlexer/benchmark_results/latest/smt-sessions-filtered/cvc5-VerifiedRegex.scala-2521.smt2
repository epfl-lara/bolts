; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!134450 () Bool)

(assert start!134450)

(declare-fun b!1447169 () Bool)

(declare-fun e!923200 () Bool)

(declare-fun e!923196 () Bool)

(assert (=> b!1447169 (= e!923200 e!923196)))

(declare-fun res!655180 () Bool)

(assert (=> b!1447169 (=> (not res!655180) (not e!923196))))

(declare-datatypes ((C!8086 0))(
  ( (C!8087 (val!4613 Int)) )
))
(declare-datatypes ((List!15078 0))(
  ( (Nil!15012) (Cons!15012 (h!20413 C!8086) (t!130369 List!15078)) )
))
(declare-datatypes ((IArray!10217 0))(
  ( (IArray!10218 (innerList!5166 List!15078)) )
))
(declare-datatypes ((Conc!5106 0))(
  ( (Node!5106 (left!12781 Conc!5106) (right!13111 Conc!5106) (csize!10442 Int) (cheight!5317 Int)) (Leaf!7628 (xs!7847 IArray!10217) (csize!10443 Int)) (Empty!5106) )
))
(declare-datatypes ((BalanceConc!10152 0))(
  ( (BalanceConc!10153 (c!238497 Conc!5106)) )
))
(declare-datatypes ((List!15079 0))(
  ( (Nil!15013) (Cons!15013 (h!20414 (_ BitVec 16)) (t!130370 List!15079)) )
))
(declare-datatypes ((TokenValue!2730 0))(
  ( (FloatLiteralValue!5460 (text!19555 List!15079)) (TokenValueExt!2729 (__x!9251 Int)) (Broken!13650 (value!84863 List!15079)) (Object!2795) (End!2730) (Def!2730) (Underscore!2730) (Match!2730) (Else!2730) (Error!2730) (Case!2730) (If!2730) (Extends!2730) (Abstract!2730) (Class!2730) (Val!2730) (DelimiterValue!5460 (del!2790 List!15079)) (KeywordValue!2736 (value!84864 List!15079)) (CommentValue!5460 (value!84865 List!15079)) (WhitespaceValue!5460 (value!84866 List!15079)) (IndentationValue!2730 (value!84867 List!15079)) (String!17907) (Int32!2730) (Broken!13651 (value!84868 List!15079)) (Boolean!2731) (Unit!23925) (OperatorValue!2733 (op!2790 List!15079)) (IdentifierValue!5460 (value!84869 List!15079)) (IdentifierValue!5461 (value!84870 List!15079)) (WhitespaceValue!5461 (value!84871 List!15079)) (True!5460) (False!5460) (Broken!13652 (value!84872 List!15079)) (Broken!13653 (value!84873 List!15079)) (True!5461) (RightBrace!2730) (RightBracket!2730) (Colon!2730) (Null!2730) (Comma!2730) (LeftBracket!2730) (False!5461) (LeftBrace!2730) (ImaginaryLiteralValue!2730 (text!19556 List!15079)) (StringLiteralValue!8190 (value!84874 List!15079)) (EOFValue!2730 (value!84875 List!15079)) (IdentValue!2730 (value!84876 List!15079)) (DelimiterValue!5461 (value!84877 List!15079)) (DedentValue!2730 (value!84878 List!15079)) (NewLineValue!2730 (value!84879 List!15079)) (IntegerValue!8190 (value!84880 (_ BitVec 32)) (text!19557 List!15079)) (IntegerValue!8191 (value!84881 Int) (text!19558 List!15079)) (Times!2730) (Or!2730) (Equal!2730) (Minus!2730) (Broken!13654 (value!84882 List!15079)) (And!2730) (Div!2730) (LessEqual!2730) (Mod!2730) (Concat!6684) (Not!2730) (Plus!2730) (SpaceValue!2730 (value!84883 List!15079)) (IntegerValue!8192 (value!84884 Int) (text!19559 List!15079)) (StringLiteralValue!8191 (text!19560 List!15079)) (FloatLiteralValue!5461 (text!19561 List!15079)) (BytesLiteralValue!2730 (value!84885 List!15079)) (CommentValue!5461 (value!84886 List!15079)) (StringLiteralValue!8192 (value!84887 List!15079)) (ErrorTokenValue!2730 (msg!2791 List!15079)) )
))
(declare-datatypes ((Regex!3954 0))(
  ( (ElementMatch!3954 (c!238498 C!8086)) (Concat!6685 (regOne!8420 Regex!3954) (regTwo!8420 Regex!3954)) (EmptyExpr!3954) (Star!3954 (reg!4283 Regex!3954)) (EmptyLang!3954) (Union!3954 (regOne!8421 Regex!3954) (regTwo!8421 Regex!3954)) )
))
(declare-datatypes ((String!17908 0))(
  ( (String!17909 (value!84888 String)) )
))
(declare-datatypes ((TokenValueInjection!5120 0))(
  ( (TokenValueInjection!5121 (toValue!3947 Int) (toChars!3806 Int)) )
))
(declare-datatypes ((Rule!5080 0))(
  ( (Rule!5081 (regex!2640 Regex!3954) (tag!2904 String!17908) (isSeparator!2640 Bool) (transformation!2640 TokenValueInjection!5120)) )
))
(declare-datatypes ((Token!4942 0))(
  ( (Token!4943 (value!84889 TokenValue!2730) (rule!4413 Rule!5080) (size!12306 Int) (originalCharacters!3502 List!15078)) )
))
(declare-datatypes ((List!15080 0))(
  ( (Nil!15014) (Cons!15014 (h!20415 Token!4942) (t!130371 List!15080)) )
))
(declare-datatypes ((IArray!10219 0))(
  ( (IArray!10220 (innerList!5167 List!15080)) )
))
(declare-datatypes ((Conc!5107 0))(
  ( (Node!5107 (left!12782 Conc!5107) (right!13112 Conc!5107) (csize!10444 Int) (cheight!5318 Int)) (Leaf!7629 (xs!7848 IArray!10219) (csize!10445 Int)) (Empty!5107) )
))
(declare-datatypes ((BalanceConc!10154 0))(
  ( (BalanceConc!10155 (c!238499 Conc!5107)) )
))
(declare-datatypes ((List!15081 0))(
  ( (Nil!15015) (Cons!15015 (h!20416 Rule!5080) (t!130372 List!15081)) )
))
(declare-datatypes ((PrintableTokens!1062 0))(
  ( (PrintableTokens!1063 (rules!11517 List!15081) (tokens!2025 BalanceConc!10154)) )
))
(declare-fun other!32 () PrintableTokens!1062)

(declare-fun isEmpty!9366 (BalanceConc!10154) Bool)

(assert (=> b!1447169 (= res!655180 (not (isEmpty!9366 (tokens!2025 other!32))))))

(declare-datatypes ((Unit!23926 0))(
  ( (Unit!23927) )
))
(declare-fun lt!499086 () Unit!23926)

(declare-fun thiss!10022 () PrintableTokens!1062)

(declare-fun lemmaInvariant!336 (PrintableTokens!1062) Unit!23926)

(assert (=> b!1447169 (= lt!499086 (lemmaInvariant!336 thiss!10022))))

(declare-fun lt!499088 () Unit!23926)

(assert (=> b!1447169 (= lt!499088 (lemmaInvariant!336 other!32))))

(declare-fun e!923199 () Bool)

(declare-fun b!1447170 () Bool)

(declare-fun tp!408076 () Bool)

(declare-fun e!923198 () Bool)

(declare-fun inv!20006 (BalanceConc!10154) Bool)

(assert (=> b!1447170 (= e!923198 (and tp!408076 (inv!20006 (tokens!2025 thiss!10022)) e!923199))))

(declare-fun b!1447171 () Bool)

(declare-fun isEmpty!9367 (List!15081) Bool)

(assert (=> b!1447171 (= e!923196 (isEmpty!9367 (rules!11517 thiss!10022)))))

(declare-fun lt!499087 () Token!4942)

(declare-fun last!184 (BalanceConc!10154) Token!4942)

(assert (=> b!1447171 (= lt!499087 (last!184 (tokens!2025 thiss!10022)))))

(declare-fun lt!499085 () List!15080)

(declare-fun list!5992 (BalanceConc!10154) List!15080)

(assert (=> b!1447171 (= lt!499085 (list!5992 (tokens!2025 thiss!10022)))))

(declare-fun b!1447172 () Bool)

(declare-fun e!923195 () Bool)

(declare-fun tp!408078 () Bool)

(declare-fun inv!20007 (Conc!5107) Bool)

(assert (=> b!1447172 (= e!923195 (and (inv!20007 (c!238499 (tokens!2025 other!32))) tp!408078))))

(declare-fun res!655179 () Bool)

(assert (=> start!134450 (=> (not res!655179) (not e!923200))))

(assert (=> start!134450 (= res!655179 (= (rules!11517 thiss!10022) (rules!11517 other!32)))))

(assert (=> start!134450 e!923200))

(declare-fun inv!20008 (PrintableTokens!1062) Bool)

(assert (=> start!134450 (and (inv!20008 thiss!10022) e!923198)))

(declare-fun e!923197 () Bool)

(assert (=> start!134450 (and (inv!20008 other!32) e!923197)))

(declare-fun b!1447173 () Bool)

(declare-fun res!655181 () Bool)

(assert (=> b!1447173 (=> (not res!655181) (not e!923196))))

(assert (=> b!1447173 (= res!655181 (not (isEmpty!9366 (tokens!2025 thiss!10022))))))

(declare-fun tp!408075 () Bool)

(declare-fun b!1447174 () Bool)

(assert (=> b!1447174 (= e!923197 (and tp!408075 (inv!20006 (tokens!2025 other!32)) e!923195))))

(declare-fun b!1447175 () Bool)

(declare-fun tp!408077 () Bool)

(assert (=> b!1447175 (= e!923199 (and (inv!20007 (c!238499 (tokens!2025 thiss!10022))) tp!408077))))

(assert (= (and start!134450 res!655179) b!1447169))

(assert (= (and b!1447169 res!655180) b!1447173))

(assert (= (and b!1447173 res!655181) b!1447171))

(assert (= b!1447170 b!1447175))

(assert (= start!134450 b!1447170))

(assert (= b!1447174 b!1447172))

(assert (= start!134450 b!1447174))

(declare-fun m!1670003 () Bool)

(assert (=> start!134450 m!1670003))

(declare-fun m!1670005 () Bool)

(assert (=> start!134450 m!1670005))

(declare-fun m!1670007 () Bool)

(assert (=> b!1447169 m!1670007))

(declare-fun m!1670009 () Bool)

(assert (=> b!1447169 m!1670009))

(declare-fun m!1670011 () Bool)

(assert (=> b!1447169 m!1670011))

(declare-fun m!1670013 () Bool)

(assert (=> b!1447172 m!1670013))

(declare-fun m!1670015 () Bool)

(assert (=> b!1447173 m!1670015))

(declare-fun m!1670017 () Bool)

(assert (=> b!1447170 m!1670017))

(declare-fun m!1670019 () Bool)

(assert (=> b!1447174 m!1670019))

(declare-fun m!1670021 () Bool)

(assert (=> b!1447171 m!1670021))

(declare-fun m!1670023 () Bool)

(assert (=> b!1447171 m!1670023))

(declare-fun m!1670025 () Bool)

(assert (=> b!1447171 m!1670025))

(declare-fun m!1670027 () Bool)

(assert (=> b!1447175 m!1670027))

(push 1)

(assert (not b!1447169))

(assert (not b!1447174))

(assert (not start!134450))

(assert (not b!1447171))

(assert (not b!1447170))

(assert (not b!1447175))

(assert (not b!1447172))

(assert (not b!1447173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!420108 () Bool)

(declare-fun lt!499103 () Bool)

(declare-fun isEmpty!9370 (List!15080) Bool)

(assert (=> d!420108 (= lt!499103 (isEmpty!9370 (list!5992 (tokens!2025 thiss!10022))))))

(declare-fun isEmpty!9371 (Conc!5107) Bool)

(assert (=> d!420108 (= lt!499103 (isEmpty!9371 (c!238499 (tokens!2025 thiss!10022))))))

(assert (=> d!420108 (= (isEmpty!9366 (tokens!2025 thiss!10022)) lt!499103)))

(declare-fun bs!342304 () Bool)

(assert (= bs!342304 d!420108))

(assert (=> bs!342304 m!1670025))

(assert (=> bs!342304 m!1670025))

(declare-fun m!1670055 () Bool)

(assert (=> bs!342304 m!1670055))

(declare-fun m!1670057 () Bool)

(assert (=> bs!342304 m!1670057))

(assert (=> b!1447173 d!420108))

(declare-fun d!420110 () Bool)

(declare-fun c!238505 () Bool)

(assert (=> d!420110 (= c!238505 (is-Node!5107 (c!238499 (tokens!2025 thiss!10022))))))

(declare-fun e!923223 () Bool)

(assert (=> d!420110 (= (inv!20007 (c!238499 (tokens!2025 thiss!10022))) e!923223)))

(declare-fun b!1447203 () Bool)

(declare-fun inv!20012 (Conc!5107) Bool)

(assert (=> b!1447203 (= e!923223 (inv!20012 (c!238499 (tokens!2025 thiss!10022))))))

(declare-fun b!1447204 () Bool)

(declare-fun e!923224 () Bool)

(assert (=> b!1447204 (= e!923223 e!923224)))

(declare-fun res!655197 () Bool)

(assert (=> b!1447204 (= res!655197 (not (is-Leaf!7629 (c!238499 (tokens!2025 thiss!10022)))))))

(assert (=> b!1447204 (=> res!655197 e!923224)))

(declare-fun b!1447205 () Bool)

(declare-fun inv!20013 (Conc!5107) Bool)

(assert (=> b!1447205 (= e!923224 (inv!20013 (c!238499 (tokens!2025 thiss!10022))))))

(assert (= (and d!420110 c!238505) b!1447203))

(assert (= (and d!420110 (not c!238505)) b!1447204))

(assert (= (and b!1447204 (not res!655197)) b!1447205))

(declare-fun m!1670059 () Bool)

(assert (=> b!1447203 m!1670059))

(declare-fun m!1670061 () Bool)

(assert (=> b!1447205 m!1670061))

(assert (=> b!1447175 d!420110))

(declare-fun d!420112 () Bool)

(declare-fun lt!499104 () Bool)

(assert (=> d!420112 (= lt!499104 (isEmpty!9370 (list!5992 (tokens!2025 other!32))))))

(assert (=> d!420112 (= lt!499104 (isEmpty!9371 (c!238499 (tokens!2025 other!32))))))

(assert (=> d!420112 (= (isEmpty!9366 (tokens!2025 other!32)) lt!499104)))

(declare-fun bs!342305 () Bool)

(assert (= bs!342305 d!420112))

(declare-fun m!1670063 () Bool)

(assert (=> bs!342305 m!1670063))

(assert (=> bs!342305 m!1670063))

(declare-fun m!1670065 () Bool)

(assert (=> bs!342305 m!1670065))

(declare-fun m!1670067 () Bool)

(assert (=> bs!342305 m!1670067))

(assert (=> b!1447169 d!420112))

(declare-fun d!420114 () Bool)

(declare-fun e!923227 () Bool)

(assert (=> d!420114 e!923227))

(declare-fun res!655202 () Bool)

(assert (=> d!420114 (=> (not res!655202) (not e!923227))))

(declare-datatypes ((LexerInterface!2297 0))(
  ( (LexerInterfaceExt!2294 (__x!9253 Int)) (Lexer!2295) )
))
(declare-fun rulesInvariant!2135 (LexerInterface!2297 List!15081) Bool)

(assert (=> d!420114 (= res!655202 (rulesInvariant!2135 Lexer!2295 (rules!11517 thiss!10022)))))

(declare-fun Unit!23931 () Unit!23926)

(assert (=> d!420114 (= (lemmaInvariant!336 thiss!10022) Unit!23931)))

(declare-fun b!1447210 () Bool)

(declare-fun res!655203 () Bool)

(assert (=> b!1447210 (=> (not res!655203) (not e!923227))))

(declare-fun rulesProduceEachTokenIndividually!853 (LexerInterface!2297 List!15081 BalanceConc!10154) Bool)

(assert (=> b!1447210 (= res!655203 (rulesProduceEachTokenIndividually!853 Lexer!2295 (rules!11517 thiss!10022) (tokens!2025 thiss!10022)))))

(declare-fun b!1447211 () Bool)

(declare-fun separableTokens!237 (LexerInterface!2297 BalanceConc!10154 List!15081) Bool)

(assert (=> b!1447211 (= e!923227 (separableTokens!237 Lexer!2295 (tokens!2025 thiss!10022) (rules!11517 thiss!10022)))))

(assert (= (and d!420114 res!655202) b!1447210))

(assert (= (and b!1447210 res!655203) b!1447211))

(declare-fun m!1670073 () Bool)

(assert (=> d!420114 m!1670073))

(declare-fun m!1670075 () Bool)

(assert (=> b!1447210 m!1670075))

(declare-fun m!1670077 () Bool)

(assert (=> b!1447211 m!1670077))

(assert (=> b!1447169 d!420114))

(declare-fun d!420120 () Bool)

(declare-fun e!923228 () Bool)

(assert (=> d!420120 e!923228))

(declare-fun res!655204 () Bool)

(assert (=> d!420120 (=> (not res!655204) (not e!923228))))

(assert (=> d!420120 (= res!655204 (rulesInvariant!2135 Lexer!2295 (rules!11517 other!32)))))

(declare-fun Unit!23932 () Unit!23926)

(assert (=> d!420120 (= (lemmaInvariant!336 other!32) Unit!23932)))

(declare-fun b!1447212 () Bool)

(declare-fun res!655205 () Bool)

(assert (=> b!1447212 (=> (not res!655205) (not e!923228))))

(assert (=> b!1447212 (= res!655205 (rulesProduceEachTokenIndividually!853 Lexer!2295 (rules!11517 other!32) (tokens!2025 other!32)))))

(declare-fun b!1447213 () Bool)

(assert (=> b!1447213 (= e!923228 (separableTokens!237 Lexer!2295 (tokens!2025 other!32) (rules!11517 other!32)))))

(assert (= (and d!420120 res!655204) b!1447212))

(assert (= (and b!1447212 res!655205) b!1447213))

(declare-fun m!1670079 () Bool)

(assert (=> d!420120 m!1670079))

(declare-fun m!1670081 () Bool)

(assert (=> b!1447212 m!1670081))

(declare-fun m!1670083 () Bool)

(assert (=> b!1447213 m!1670083))

(assert (=> b!1447169 d!420120))

(declare-fun d!420122 () Bool)

(declare-fun isBalanced!1523 (Conc!5107) Bool)

(assert (=> d!420122 (= (inv!20006 (tokens!2025 other!32)) (isBalanced!1523 (c!238499 (tokens!2025 other!32))))))

(declare-fun bs!342307 () Bool)

(assert (= bs!342307 d!420122))

(declare-fun m!1670085 () Bool)

(assert (=> bs!342307 m!1670085))

(assert (=> b!1447174 d!420122))

(declare-fun d!420124 () Bool)

(assert (=> d!420124 (= (isEmpty!9367 (rules!11517 thiss!10022)) (is-Nil!15015 (rules!11517 thiss!10022)))))

(assert (=> b!1447171 d!420124))

(declare-fun d!420126 () Bool)

(declare-fun lt!499110 () Token!4942)

(declare-fun last!186 (List!15080) Token!4942)

(assert (=> d!420126 (= lt!499110 (last!186 (list!5992 (tokens!2025 thiss!10022))))))

(declare-fun last!187 (Conc!5107) Token!4942)

(assert (=> d!420126 (= lt!499110 (last!187 (c!238499 (tokens!2025 thiss!10022))))))

(assert (=> d!420126 (not (isEmpty!9366 (tokens!2025 thiss!10022)))))

(assert (=> d!420126 (= (last!184 (tokens!2025 thiss!10022)) lt!499110)))

(declare-fun bs!342308 () Bool)

(assert (= bs!342308 d!420126))

(assert (=> bs!342308 m!1670025))

(assert (=> bs!342308 m!1670025))

(declare-fun m!1670087 () Bool)

(assert (=> bs!342308 m!1670087))

(declare-fun m!1670089 () Bool)

(assert (=> bs!342308 m!1670089))

(assert (=> bs!342308 m!1670015))

(assert (=> b!1447171 d!420126))

(declare-fun d!420128 () Bool)

(declare-fun list!5994 (Conc!5107) List!15080)

(assert (=> d!420128 (= (list!5992 (tokens!2025 thiss!10022)) (list!5994 (c!238499 (tokens!2025 thiss!10022))))))

(declare-fun bs!342309 () Bool)

(assert (= bs!342309 d!420128))

(declare-fun m!1670091 () Bool)

(assert (=> bs!342309 m!1670091))

(assert (=> b!1447171 d!420128))

(declare-fun d!420130 () Bool)

(assert (=> d!420130 (= (inv!20006 (tokens!2025 thiss!10022)) (isBalanced!1523 (c!238499 (tokens!2025 thiss!10022))))))

(declare-fun bs!342310 () Bool)

(assert (= bs!342310 d!420130))

(declare-fun m!1670093 () Bool)

(assert (=> bs!342310 m!1670093))

(assert (=> b!1447170 d!420130))

(declare-fun d!420132 () Bool)

(declare-fun res!655212 () Bool)

(declare-fun e!923231 () Bool)

(assert (=> d!420132 (=> (not res!655212) (not e!923231))))

(assert (=> d!420132 (= res!655212 (not (isEmpty!9367 (rules!11517 thiss!10022))))))

(assert (=> d!420132 (= (inv!20008 thiss!10022) e!923231)))

(declare-fun b!1447220 () Bool)

(declare-fun res!655213 () Bool)

(assert (=> b!1447220 (=> (not res!655213) (not e!923231))))

(assert (=> b!1447220 (= res!655213 (rulesInvariant!2135 Lexer!2295 (rules!11517 thiss!10022)))))

(declare-fun b!1447221 () Bool)

(declare-fun res!655214 () Bool)

(assert (=> b!1447221 (=> (not res!655214) (not e!923231))))

(assert (=> b!1447221 (= res!655214 (rulesProduceEachTokenIndividually!853 Lexer!2295 (rules!11517 thiss!10022) (tokens!2025 thiss!10022)))))

(declare-fun b!1447222 () Bool)

(assert (=> b!1447222 (= e!923231 (separableTokens!237 Lexer!2295 (tokens!2025 thiss!10022) (rules!11517 thiss!10022)))))

(assert (= (and d!420132 res!655212) b!1447220))

(assert (= (and b!1447220 res!655213) b!1447221))

(assert (= (and b!1447221 res!655214) b!1447222))

(assert (=> d!420132 m!1670021))

(assert (=> b!1447220 m!1670073))

(assert (=> b!1447221 m!1670075))

(assert (=> b!1447222 m!1670077))

(assert (=> start!134450 d!420132))

(declare-fun d!420134 () Bool)

(declare-fun res!655215 () Bool)

(declare-fun e!923232 () Bool)

(assert (=> d!420134 (=> (not res!655215) (not e!923232))))

(assert (=> d!420134 (= res!655215 (not (isEmpty!9367 (rules!11517 other!32))))))

(assert (=> d!420134 (= (inv!20008 other!32) e!923232)))

(declare-fun b!1447223 () Bool)

(declare-fun res!655216 () Bool)

(assert (=> b!1447223 (=> (not res!655216) (not e!923232))))

(assert (=> b!1447223 (= res!655216 (rulesInvariant!2135 Lexer!2295 (rules!11517 other!32)))))

(declare-fun b!1447224 () Bool)

(declare-fun res!655217 () Bool)

(assert (=> b!1447224 (=> (not res!655217) (not e!923232))))

(assert (=> b!1447224 (= res!655217 (rulesProduceEachTokenIndividually!853 Lexer!2295 (rules!11517 other!32) (tokens!2025 other!32)))))

(declare-fun b!1447225 () Bool)

(assert (=> b!1447225 (= e!923232 (separableTokens!237 Lexer!2295 (tokens!2025 other!32) (rules!11517 other!32)))))

(assert (= (and d!420134 res!655215) b!1447223))

(assert (= (and b!1447223 res!655216) b!1447224))

(assert (= (and b!1447224 res!655217) b!1447225))

(declare-fun m!1670095 () Bool)

(assert (=> d!420134 m!1670095))

(assert (=> b!1447223 m!1670079))

(assert (=> b!1447224 m!1670081))

(assert (=> b!1447225 m!1670083))

(assert (=> start!134450 d!420134))

(declare-fun d!420136 () Bool)

(declare-fun c!238506 () Bool)

(assert (=> d!420136 (= c!238506 (is-Node!5107 (c!238499 (tokens!2025 other!32))))))

(declare-fun e!923233 () Bool)

(assert (=> d!420136 (= (inv!20007 (c!238499 (tokens!2025 other!32))) e!923233)))

(declare-fun b!1447226 () Bool)

(assert (=> b!1447226 (= e!923233 (inv!20012 (c!238499 (tokens!2025 other!32))))))

(declare-fun b!1447227 () Bool)

(declare-fun e!923234 () Bool)

(assert (=> b!1447227 (= e!923233 e!923234)))

(declare-fun res!655218 () Bool)

(assert (=> b!1447227 (= res!655218 (not (is-Leaf!7629 (c!238499 (tokens!2025 other!32)))))))

(assert (=> b!1447227 (=> res!655218 e!923234)))

(declare-fun b!1447228 () Bool)

(assert (=> b!1447228 (= e!923234 (inv!20013 (c!238499 (tokens!2025 other!32))))))

(assert (= (and d!420136 c!238506) b!1447226))

(assert (= (and d!420136 (not c!238506)) b!1447227))

(assert (= (and b!1447227 (not res!655218)) b!1447228))

(declare-fun m!1670097 () Bool)

(assert (=> b!1447226 m!1670097))

(declare-fun m!1670099 () Bool)

(assert (=> b!1447228 m!1670099))

(assert (=> b!1447172 d!420136))

(declare-fun e!923240 () Bool)

(declare-fun tp!408097 () Bool)

(declare-fun tp!408098 () Bool)

(declare-fun b!1447237 () Bool)

(assert (=> b!1447237 (= e!923240 (and (inv!20007 (left!12782 (c!238499 (tokens!2025 thiss!10022)))) tp!408098 (inv!20007 (right!13112 (c!238499 (tokens!2025 thiss!10022)))) tp!408097))))

(declare-fun b!1447239 () Bool)

(declare-fun e!923239 () Bool)

(declare-fun tp!408099 () Bool)

(assert (=> b!1447239 (= e!923239 tp!408099)))

(declare-fun b!1447238 () Bool)

(declare-fun inv!20014 (IArray!10219) Bool)

(assert (=> b!1447238 (= e!923240 (and (inv!20014 (xs!7848 (c!238499 (tokens!2025 thiss!10022)))) e!923239))))

(assert (=> b!1447175 (= tp!408077 (and (inv!20007 (c!238499 (tokens!2025 thiss!10022))) e!923240))))

(assert (= (and b!1447175 (is-Node!5107 (c!238499 (tokens!2025 thiss!10022)))) b!1447237))

(assert (= b!1447238 b!1447239))

(assert (= (and b!1447175 (is-Leaf!7629 (c!238499 (tokens!2025 thiss!10022)))) b!1447238))

(declare-fun m!1670101 () Bool)

(assert (=> b!1447237 m!1670101))

(declare-fun m!1670103 () Bool)

(assert (=> b!1447237 m!1670103))

(declare-fun m!1670105 () Bool)

(assert (=> b!1447238 m!1670105))

(assert (=> b!1447175 m!1670027))

(declare-fun b!1447250 () Bool)

(declare-fun b_free!35863 () Bool)

(declare-fun b_next!36567 () Bool)

(assert (=> b!1447250 (= b_free!35863 (not b_next!36567))))

(declare-fun tp!408109 () Bool)

(declare-fun b_and!97927 () Bool)

(assert (=> b!1447250 (= tp!408109 b_and!97927)))

(declare-fun b_free!35865 () Bool)

(declare-fun b_next!36569 () Bool)

(assert (=> b!1447250 (= b_free!35865 (not b_next!36569))))

(declare-fun tp!408111 () Bool)

(declare-fun b_and!97929 () Bool)

(assert (=> b!1447250 (= tp!408111 b_and!97929)))

(declare-fun e!923251 () Bool)

(assert (=> b!1447250 (= e!923251 (and tp!408109 tp!408111))))

(declare-fun b!1447249 () Bool)

(declare-fun e!923250 () Bool)

(declare-fun tp!408110 () Bool)

(declare-fun inv!20003 (String!17908) Bool)

(declare-fun inv!20015 (TokenValueInjection!5120) Bool)

(assert (=> b!1447249 (= e!923250 (and tp!408110 (inv!20003 (tag!2904 (h!20416 (rules!11517 other!32)))) (inv!20015 (transformation!2640 (h!20416 (rules!11517 other!32)))) e!923251))))

(declare-fun b!1447248 () Bool)

(declare-fun e!923252 () Bool)

(declare-fun tp!408108 () Bool)

(assert (=> b!1447248 (= e!923252 (and e!923250 tp!408108))))

(assert (=> b!1447174 (= tp!408075 e!923252)))

(assert (= b!1447249 b!1447250))

(assert (= b!1447248 b!1447249))

(assert (= (and b!1447174 (is-Cons!15015 (rules!11517 other!32))) b!1447248))

(declare-fun m!1670107 () Bool)

(assert (=> b!1447249 m!1670107))

(declare-fun m!1670109 () Bool)

(assert (=> b!1447249 m!1670109))

(declare-fun b!1447253 () Bool)

(declare-fun b_free!35867 () Bool)

(declare-fun b_next!36571 () Bool)

(assert (=> b!1447253 (= b_free!35867 (not b_next!36571))))

(declare-fun tp!408113 () Bool)

(declare-fun b_and!97931 () Bool)

(assert (=> b!1447253 (= tp!408113 b_and!97931)))

(declare-fun b_free!35869 () Bool)

(declare-fun b_next!36573 () Bool)

(assert (=> b!1447253 (= b_free!35869 (not b_next!36573))))

(declare-fun tp!408115 () Bool)

(declare-fun b_and!97933 () Bool)

(assert (=> b!1447253 (= tp!408115 b_and!97933)))

(declare-fun e!923255 () Bool)

(assert (=> b!1447253 (= e!923255 (and tp!408113 tp!408115))))

(declare-fun b!1447252 () Bool)

(declare-fun tp!408114 () Bool)

(declare-fun e!923254 () Bool)

(assert (=> b!1447252 (= e!923254 (and tp!408114 (inv!20003 (tag!2904 (h!20416 (rules!11517 thiss!10022)))) (inv!20015 (transformation!2640 (h!20416 (rules!11517 thiss!10022)))) e!923255))))

(declare-fun b!1447251 () Bool)

(declare-fun e!923256 () Bool)

(declare-fun tp!408112 () Bool)

(assert (=> b!1447251 (= e!923256 (and e!923254 tp!408112))))

(assert (=> b!1447170 (= tp!408076 e!923256)))

(assert (= b!1447252 b!1447253))

(assert (= b!1447251 b!1447252))

(assert (= (and b!1447170 (is-Cons!15015 (rules!11517 thiss!10022))) b!1447251))

(declare-fun m!1670111 () Bool)

(assert (=> b!1447252 m!1670111))

(declare-fun m!1670113 () Bool)

(assert (=> b!1447252 m!1670113))

(declare-fun e!923258 () Bool)

(declare-fun b!1447254 () Bool)

(declare-fun tp!408116 () Bool)

(declare-fun tp!408117 () Bool)

(assert (=> b!1447254 (= e!923258 (and (inv!20007 (left!12782 (c!238499 (tokens!2025 other!32)))) tp!408117 (inv!20007 (right!13112 (c!238499 (tokens!2025 other!32)))) tp!408116))))

(declare-fun b!1447256 () Bool)

(declare-fun e!923257 () Bool)

(declare-fun tp!408118 () Bool)

(assert (=> b!1447256 (= e!923257 tp!408118)))

(declare-fun b!1447255 () Bool)

(assert (=> b!1447255 (= e!923258 (and (inv!20014 (xs!7848 (c!238499 (tokens!2025 other!32)))) e!923257))))

(assert (=> b!1447172 (= tp!408078 (and (inv!20007 (c!238499 (tokens!2025 other!32))) e!923258))))

(assert (= (and b!1447172 (is-Node!5107 (c!238499 (tokens!2025 other!32)))) b!1447254))

(assert (= b!1447255 b!1447256))

(assert (= (and b!1447172 (is-Leaf!7629 (c!238499 (tokens!2025 other!32)))) b!1447255))

(declare-fun m!1670115 () Bool)

(assert (=> b!1447254 m!1670115))

(declare-fun m!1670117 () Bool)

(assert (=> b!1447254 m!1670117))

(declare-fun m!1670119 () Bool)

(assert (=> b!1447255 m!1670119))

(assert (=> b!1447172 m!1670013))

(push 1)

(assert (not b!1447254))

(assert (not b!1447210))

(assert (not b!1447238))

(assert (not b!1447203))

(assert (not b!1447224))

(assert (not b!1447225))

(assert (not b!1447222))

(assert (not b!1447213))

(assert (not b!1447221))

(assert (not b!1447205))

(assert (not d!420130))

(assert b_and!97931)

(assert (not b!1447226))

(assert (not d!420120))

(assert (not b!1447255))

(assert (not b!1447256))

(assert b_and!97927)

(assert b_and!97929)

(assert (not d!420112))

(assert b_and!97933)

(assert (not b!1447175))

(assert (not b_next!36571))

(assert (not b!1447252))

(assert (not d!420132))

(assert (not d!420108))

(assert (not b!1447228))

(assert (not b!1447172))

(assert (not d!420128))

(assert (not b!1447249))

(assert (not b_next!36567))

(assert (not b!1447212))

(assert (not b!1447223))

(assert (not d!420122))

(assert (not b!1447220))

(assert (not b_next!36573))

(assert (not b!1447248))

(assert (not b!1447211))

(assert (not b!1447237))

(assert (not b!1447239))

(assert (not b!1447251))

(assert (not d!420114))

(assert (not d!420134))

(assert (not b_next!36569))

(assert (not d!420126))

(check-sat)

(pop 1)

(push 1)

(assert b_and!97933)

(assert (not b_next!36571))

(assert b_and!97931)

(assert (not b_next!36567))

(assert (not b_next!36573))

(assert (not b_next!36569))

(assert b_and!97927)

(assert b_and!97929)

(check-sat)

(pop 1)


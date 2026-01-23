; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26170 () Bool)

(assert start!26170)

(declare-fun b!246719 () Bool)

(declare-fun b_free!9153 () Bool)

(declare-fun b_next!9153 () Bool)

(assert (=> b!246719 (= b_free!9153 (not b_next!9153))))

(declare-fun tp!96396 () Bool)

(declare-fun b_and!18573 () Bool)

(assert (=> b!246719 (= tp!96396 b_and!18573)))

(declare-fun b_free!9155 () Bool)

(declare-fun b_next!9155 () Bool)

(assert (=> b!246719 (= b_free!9155 (not b_next!9155))))

(declare-fun tp!96393 () Bool)

(declare-fun b_and!18575 () Bool)

(assert (=> b!246719 (= tp!96393 b_and!18575)))

(declare-fun b!246722 () Bool)

(declare-fun b_free!9157 () Bool)

(declare-fun b_next!9157 () Bool)

(assert (=> b!246722 (= b_free!9157 (not b_next!9157))))

(declare-fun tp!96395 () Bool)

(declare-fun b_and!18577 () Bool)

(assert (=> b!246722 (= tp!96395 b_and!18577)))

(declare-fun b_free!9159 () Bool)

(declare-fun b_next!9159 () Bool)

(assert (=> b!246722 (= b_free!9159 (not b_next!9159))))

(declare-fun tp!96397 () Bool)

(declare-fun b_and!18579 () Bool)

(assert (=> b!246722 (= tp!96397 b_and!18579)))

(declare-fun b!246705 () Bool)

(declare-fun b_free!9161 () Bool)

(declare-fun b_next!9161 () Bool)

(assert (=> b!246705 (= b_free!9161 (not b_next!9161))))

(declare-fun tp!96401 () Bool)

(declare-fun b_and!18581 () Bool)

(assert (=> b!246705 (= tp!96401 b_and!18581)))

(declare-fun b_free!9163 () Bool)

(declare-fun b_next!9163 () Bool)

(assert (=> b!246705 (= b_free!9163 (not b_next!9163))))

(declare-fun tp!96402 () Bool)

(declare-fun b_and!18583 () Bool)

(assert (=> b!246705 (= tp!96402 b_and!18583)))

(declare-fun bs!26480 () Bool)

(declare-fun b!246709 () Bool)

(declare-fun b!246706 () Bool)

(assert (= bs!26480 (and b!246709 b!246706)))

(declare-fun lambda!8106 () Int)

(declare-fun lambda!8105 () Int)

(assert (=> bs!26480 (not (= lambda!8106 lambda!8105))))

(declare-fun b!246746 () Bool)

(declare-fun e!153064 () Bool)

(assert (=> b!246746 (= e!153064 true)))

(declare-fun b!246745 () Bool)

(declare-fun e!153063 () Bool)

(assert (=> b!246745 (= e!153063 e!153064)))

(declare-fun b!246744 () Bool)

(declare-fun e!153062 () Bool)

(assert (=> b!246744 (= e!153062 e!153063)))

(assert (=> b!246709 e!153062))

(assert (= b!246745 b!246746))

(assert (= b!246744 b!246745))

(declare-datatypes ((List!3635 0))(
  ( (Nil!3625) (Cons!3625 (h!9022 (_ BitVec 16)) (t!35187 List!3635)) )
))
(declare-datatypes ((TokenValue!709 0))(
  ( (FloatLiteralValue!1418 (text!5408 List!3635)) (TokenValueExt!708 (__x!2905 Int)) (Broken!3545 (value!23869 List!3635)) (Object!718) (End!709) (Def!709) (Underscore!709) (Match!709) (Else!709) (Error!709) (Case!709) (If!709) (Extends!709) (Abstract!709) (Class!709) (Val!709) (DelimiterValue!1418 (del!769 List!3635)) (KeywordValue!715 (value!23870 List!3635)) (CommentValue!1418 (value!23871 List!3635)) (WhitespaceValue!1418 (value!23872 List!3635)) (IndentationValue!709 (value!23873 List!3635)) (String!4624) (Int32!709) (Broken!3546 (value!23874 List!3635)) (Boolean!710) (Unit!4403) (OperatorValue!712 (op!769 List!3635)) (IdentifierValue!1418 (value!23875 List!3635)) (IdentifierValue!1419 (value!23876 List!3635)) (WhitespaceValue!1419 (value!23877 List!3635)) (True!1418) (False!1418) (Broken!3547 (value!23878 List!3635)) (Broken!3548 (value!23879 List!3635)) (True!1419) (RightBrace!709) (RightBracket!709) (Colon!709) (Null!709) (Comma!709) (LeftBracket!709) (False!1419) (LeftBrace!709) (ImaginaryLiteralValue!709 (text!5409 List!3635)) (StringLiteralValue!2127 (value!23880 List!3635)) (EOFValue!709 (value!23881 List!3635)) (IdentValue!709 (value!23882 List!3635)) (DelimiterValue!1419 (value!23883 List!3635)) (DedentValue!709 (value!23884 List!3635)) (NewLineValue!709 (value!23885 List!3635)) (IntegerValue!2127 (value!23886 (_ BitVec 32)) (text!5410 List!3635)) (IntegerValue!2128 (value!23887 Int) (text!5411 List!3635)) (Times!709) (Or!709) (Equal!709) (Minus!709) (Broken!3549 (value!23888 List!3635)) (And!709) (Div!709) (LessEqual!709) (Mod!709) (Concat!1620) (Not!709) (Plus!709) (SpaceValue!709 (value!23889 List!3635)) (IntegerValue!2129 (value!23890 Int) (text!5412 List!3635)) (StringLiteralValue!2128 (text!5413 List!3635)) (FloatLiteralValue!1419 (text!5414 List!3635)) (BytesLiteralValue!709 (value!23891 List!3635)) (CommentValue!1419 (value!23892 List!3635)) (StringLiteralValue!2129 (value!23893 List!3635)) (ErrorTokenValue!709 (msg!770 List!3635)) )
))
(declare-datatypes ((C!2744 0))(
  ( (C!2745 (val!1258 Int)) )
))
(declare-datatypes ((List!3636 0))(
  ( (Nil!3626) (Cons!3626 (h!9023 C!2744) (t!35188 List!3636)) )
))
(declare-datatypes ((IArray!2393 0))(
  ( (IArray!2394 (innerList!1254 List!3636)) )
))
(declare-datatypes ((Conc!1196 0))(
  ( (Node!1196 (left!2970 Conc!1196) (right!3300 Conc!1196) (csize!2622 Int) (cheight!1407 Int)) (Leaf!1879 (xs!3791 IArray!2393) (csize!2623 Int)) (Empty!1196) )
))
(declare-datatypes ((BalanceConc!2400 0))(
  ( (BalanceConc!2401 (c!47078 Conc!1196)) )
))
(declare-datatypes ((TokenValueInjection!1190 0))(
  ( (TokenValueInjection!1191 (toValue!1390 Int) (toChars!1249 Int)) )
))
(declare-datatypes ((String!4625 0))(
  ( (String!4626 (value!23894 String)) )
))
(declare-datatypes ((Regex!911 0))(
  ( (ElementMatch!911 (c!47079 C!2744)) (Concat!1621 (regOne!2334 Regex!911) (regTwo!2334 Regex!911)) (EmptyExpr!911) (Star!911 (reg!1240 Regex!911)) (EmptyLang!911) (Union!911 (regOne!2335 Regex!911) (regTwo!2335 Regex!911)) )
))
(declare-datatypes ((Rule!1174 0))(
  ( (Rule!1175 (regex!687 Regex!911) (tag!895 String!4625) (isSeparator!687 Bool) (transformation!687 TokenValueInjection!1190)) )
))
(declare-datatypes ((List!3637 0))(
  ( (Nil!3627) (Cons!3627 (h!9024 Rule!1174) (t!35189 List!3637)) )
))
(declare-fun rules!1920 () List!3637)

(get-info :version)

(assert (= (and b!246709 ((_ is Cons!3627) rules!1920)) b!246744))

(declare-fun order!2661 () Int)

(declare-fun order!2663 () Int)

(declare-fun dynLambda!1763 (Int Int) Int)

(declare-fun dynLambda!1764 (Int Int) Int)

(assert (=> b!246746 (< (dynLambda!1763 order!2661 (toValue!1390 (transformation!687 (h!9024 rules!1920)))) (dynLambda!1764 order!2663 lambda!8106))))

(declare-fun order!2665 () Int)

(declare-fun dynLambda!1765 (Int Int) Int)

(assert (=> b!246746 (< (dynLambda!1765 order!2665 (toChars!1249 (transformation!687 (h!9024 rules!1920)))) (dynLambda!1764 order!2663 lambda!8106))))

(assert (=> b!246709 true))

(declare-fun b!246703 () Bool)

(declare-fun e!153030 () Bool)

(declare-fun e!153043 () Bool)

(declare-fun tp!96404 () Bool)

(assert (=> b!246703 (= e!153030 (and e!153043 tp!96404))))

(declare-fun e!153052 () Bool)

(assert (=> b!246705 (= e!153052 (and tp!96401 tp!96402))))

(declare-fun res!114163 () Bool)

(declare-fun e!153035 () Bool)

(assert (=> b!246706 (=> (not res!114163) (not e!153035))))

(declare-datatypes ((Token!1118 0))(
  ( (Token!1119 (value!23895 TokenValue!709) (rule!1264 Rule!1174) (size!2877 Int) (originalCharacters!730 List!3636)) )
))
(declare-datatypes ((List!3638 0))(
  ( (Nil!3628) (Cons!3628 (h!9025 Token!1118) (t!35190 List!3638)) )
))
(declare-fun tokens!465 () List!3638)

(declare-fun forall!847 (List!3638 Int) Bool)

(assert (=> b!246706 (= res!114163 (forall!847 tokens!465 lambda!8105))))

(declare-fun b!246707 () Bool)

(declare-fun e!153053 () Bool)

(declare-datatypes ((tuple2!4034 0))(
  ( (tuple2!4035 (_1!2233 Token!1118) (_2!2233 List!3636)) )
))
(declare-datatypes ((Option!736 0))(
  ( (None!735) (Some!735 (v!14502 tuple2!4034)) )
))
(declare-fun lt!100102 () Option!736)

(declare-fun get!1187 (Option!736) tuple2!4034)

(declare-fun head!848 (List!3638) Token!1118)

(assert (=> b!246707 (= e!153053 (= (_1!2233 (get!1187 lt!100102)) (head!848 tokens!465)))))

(declare-fun b!246708 () Bool)

(declare-fun res!114164 () Bool)

(declare-fun e!153042 () Bool)

(assert (=> b!246708 (=> (not res!114164) (not e!153042))))

(declare-fun isEmpty!2213 (List!3637) Bool)

(assert (=> b!246708 (= res!114164 (not (isEmpty!2213 rules!1920)))))

(declare-fun e!153051 () Bool)

(declare-fun e!153045 () Bool)

(assert (=> b!246709 (= e!153051 e!153045)))

(declare-fun res!114157 () Bool)

(assert (=> b!246709 (=> res!114157 e!153045)))

(declare-datatypes ((LexerInterface!573 0))(
  ( (LexerInterfaceExt!570 (__x!2906 Int)) (Lexer!571) )
))
(declare-fun thiss!17480 () LexerInterface!573)

(declare-datatypes ((tuple2!4036 0))(
  ( (tuple2!4037 (_1!2234 Token!1118) (_2!2234 BalanceConc!2400)) )
))
(declare-datatypes ((Option!737 0))(
  ( (None!736) (Some!736 (v!14503 tuple2!4036)) )
))
(declare-fun isDefined!587 (Option!737) Bool)

(declare-fun maxPrefixZipperSequence!266 (LexerInterface!573 List!3637 BalanceConc!2400) Option!737)

(declare-fun seqFromList!751 (List!3636) BalanceConc!2400)

(assert (=> b!246709 (= res!114157 (not (isDefined!587 (maxPrefixZipperSequence!266 thiss!17480 rules!1920 (seqFromList!751 (originalCharacters!730 (h!9025 tokens!465)))))))))

(declare-datatypes ((Unit!4404 0))(
  ( (Unit!4405) )
))
(declare-fun lt!100104 () Unit!4404)

(declare-fun forallContained!254 (List!3638 Int Token!1118) Unit!4404)

(assert (=> b!246709 (= lt!100104 (forallContained!254 tokens!465 lambda!8106 (h!9025 tokens!465)))))

(declare-fun lt!100090 () List!3636)

(assert (=> b!246709 (= lt!100090 (originalCharacters!730 (h!9025 tokens!465)))))

(declare-fun b!246710 () Bool)

(declare-fun tp!96400 () Bool)

(declare-fun inv!4477 (String!4625) Bool)

(declare-fun inv!4480 (TokenValueInjection!1190) Bool)

(assert (=> b!246710 (= e!153043 (and tp!96400 (inv!4477 (tag!895 (h!9024 rules!1920))) (inv!4480 (transformation!687 (h!9024 rules!1920))) e!153052))))

(declare-fun b!246711 () Bool)

(declare-fun e!153044 () Bool)

(assert (=> b!246711 (= e!153044 e!153053)))

(declare-fun res!114174 () Bool)

(assert (=> b!246711 (=> (not res!114174) (not e!153053))))

(declare-fun isDefined!588 (Option!736) Bool)

(assert (=> b!246711 (= res!114174 (isDefined!588 lt!100102))))

(declare-fun lt!100089 () List!3636)

(declare-fun maxPrefix!303 (LexerInterface!573 List!3637 List!3636) Option!736)

(assert (=> b!246711 (= lt!100102 (maxPrefix!303 thiss!17480 rules!1920 lt!100089))))

(declare-fun e!153039 () Bool)

(declare-fun tp!96399 () Bool)

(declare-fun b!246712 () Bool)

(declare-fun e!153034 () Bool)

(declare-fun inv!4481 (Token!1118) Bool)

(assert (=> b!246712 (= e!153039 (and (inv!4481 (h!9025 tokens!465)) e!153034 tp!96399))))

(declare-fun b!246713 () Bool)

(declare-fun res!114159 () Bool)

(assert (=> b!246713 (=> (not res!114159) (not e!153042))))

(declare-fun rulesInvariant!539 (LexerInterface!573 List!3637) Bool)

(assert (=> b!246713 (= res!114159 (rulesInvariant!539 thiss!17480 rules!1920))))

(declare-fun b!246714 () Bool)

(declare-fun e!153048 () Bool)

(assert (=> b!246714 (= e!153045 e!153048)))

(declare-fun res!114170 () Bool)

(assert (=> b!246714 (=> res!114170 e!153048)))

(declare-fun lt!100084 () Bool)

(assert (=> b!246714 (= res!114170 lt!100084)))

(declare-fun e!153033 () Bool)

(assert (=> b!246714 e!153033))

(declare-fun res!114160 () Bool)

(assert (=> b!246714 (=> (not res!114160) (not e!153033))))

(declare-fun lt!100101 () tuple2!4034)

(assert (=> b!246714 (= res!114160 (= (_1!2233 lt!100101) (h!9025 tokens!465)))))

(declare-fun lt!100096 () Option!736)

(assert (=> b!246714 (= lt!100101 (get!1187 lt!100096))))

(assert (=> b!246714 (isDefined!588 lt!100096)))

(assert (=> b!246714 (= lt!100096 (maxPrefix!303 thiss!17480 rules!1920 lt!100090))))

(declare-fun e!153029 () Bool)

(declare-fun b!246715 () Bool)

(declare-fun tp!96394 () Bool)

(declare-fun inv!21 (TokenValue!709) Bool)

(assert (=> b!246715 (= e!153034 (and (inv!21 (value!23895 (h!9025 tokens!465))) e!153029 tp!96394))))

(declare-fun b!246716 () Bool)

(declare-fun e!153054 () Bool)

(declare-fun e!153055 () Bool)

(assert (=> b!246716 (= e!153054 (not e!153055))))

(declare-fun res!114152 () Bool)

(assert (=> b!246716 (=> res!114152 e!153055)))

(declare-fun lt!100094 () List!3636)

(declare-fun lt!100092 () BalanceConc!2400)

(declare-fun list!1428 (BalanceConc!2400) List!3636)

(assert (=> b!246716 (= res!114152 (not (= lt!100094 (list!1428 lt!100092))))))

(declare-fun separatorToken!170 () Token!1118)

(declare-datatypes ((IArray!2395 0))(
  ( (IArray!2396 (innerList!1255 List!3638)) )
))
(declare-datatypes ((Conc!1197 0))(
  ( (Node!1197 (left!2971 Conc!1197) (right!3301 Conc!1197) (csize!2624 Int) (cheight!1408 Int)) (Leaf!1880 (xs!3792 IArray!2395) (csize!2625 Int)) (Empty!1197) )
))
(declare-datatypes ((BalanceConc!2402 0))(
  ( (BalanceConc!2403 (c!47080 Conc!1197)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!256 (LexerInterface!573 List!3637 BalanceConc!2402 Token!1118 Int) BalanceConc!2400)

(declare-fun seqFromList!752 (List!3638) BalanceConc!2402)

(assert (=> b!246716 (= lt!100092 (printWithSeparatorTokenWhenNeededRec!256 thiss!17480 rules!1920 (seqFromList!752 (t!35190 tokens!465)) separatorToken!170 0))))

(declare-fun lt!100086 () List!3636)

(declare-fun lt!100103 () List!3636)

(assert (=> b!246716 (= lt!100086 lt!100103)))

(declare-fun lt!100088 () List!3636)

(declare-fun ++!926 (List!3636 List!3636) List!3636)

(assert (=> b!246716 (= lt!100103 (++!926 lt!100090 lt!100088))))

(declare-fun lt!100098 () List!3636)

(assert (=> b!246716 (= lt!100086 (++!926 (++!926 lt!100090 lt!100098) lt!100094))))

(declare-fun lt!100093 () Unit!4404)

(declare-fun lemmaConcatAssociativity!392 (List!3636 List!3636 List!3636) Unit!4404)

(assert (=> b!246716 (= lt!100093 (lemmaConcatAssociativity!392 lt!100090 lt!100098 lt!100094))))

(declare-fun charsOf!342 (Token!1118) BalanceConc!2400)

(assert (=> b!246716 (= lt!100090 (list!1428 (charsOf!342 (h!9025 tokens!465))))))

(assert (=> b!246716 (= lt!100088 (++!926 lt!100098 lt!100094))))

(declare-fun printWithSeparatorTokenWhenNeededList!266 (LexerInterface!573 List!3637 List!3638 Token!1118) List!3636)

(assert (=> b!246716 (= lt!100094 (printWithSeparatorTokenWhenNeededList!266 thiss!17480 rules!1920 (t!35190 tokens!465) separatorToken!170))))

(assert (=> b!246716 (= lt!100098 (list!1428 (charsOf!342 separatorToken!170)))))

(declare-fun b!246717 () Bool)

(assert (=> b!246717 (= e!153035 e!153054)))

(declare-fun res!114153 () Bool)

(assert (=> b!246717 (=> (not res!114153) (not e!153054))))

(declare-fun lt!100082 () List!3636)

(assert (=> b!246717 (= res!114153 (= lt!100089 lt!100082))))

(declare-fun lt!100100 () BalanceConc!2402)

(assert (=> b!246717 (= lt!100082 (list!1428 (printWithSeparatorTokenWhenNeededRec!256 thiss!17480 rules!1920 lt!100100 separatorToken!170 0)))))

(assert (=> b!246717 (= lt!100089 (printWithSeparatorTokenWhenNeededList!266 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!246718 () Bool)

(declare-fun res!114167 () Bool)

(assert (=> b!246718 (=> (not res!114167) (not e!153035))))

(assert (=> b!246718 (= res!114167 (isSeparator!687 (rule!1264 separatorToken!170)))))

(declare-fun res!114168 () Bool)

(assert (=> start!26170 (=> (not res!114168) (not e!153042))))

(assert (=> start!26170 (= res!114168 ((_ is Lexer!571) thiss!17480))))

(assert (=> start!26170 e!153042))

(assert (=> start!26170 true))

(assert (=> start!26170 e!153030))

(declare-fun e!153032 () Bool)

(assert (=> start!26170 (and (inv!4481 separatorToken!170) e!153032)))

(assert (=> start!26170 e!153039))

(declare-fun e!153037 () Bool)

(declare-fun tp!96405 () Bool)

(declare-fun b!246704 () Bool)

(assert (=> b!246704 (= e!153032 (and (inv!21 (value!23895 separatorToken!170)) e!153037 tp!96405))))

(declare-fun e!153036 () Bool)

(assert (=> b!246719 (= e!153036 (and tp!96396 tp!96393))))

(declare-fun b!246720 () Bool)

(declare-fun matchR!249 (Regex!911 List!3636) Bool)

(assert (=> b!246720 (= e!153033 (matchR!249 (regex!687 (rule!1264 (h!9025 tokens!465))) lt!100090))))

(declare-fun b!246721 () Bool)

(declare-fun res!114156 () Bool)

(assert (=> b!246721 (=> (not res!114156) (not e!153035))))

(assert (=> b!246721 (= res!114156 ((_ is Cons!3628) tokens!465))))

(declare-fun e!153047 () Bool)

(assert (=> b!246722 (= e!153047 (and tp!96395 tp!96397))))

(declare-fun b!246723 () Bool)

(declare-fun e!153031 () Bool)

(assert (=> b!246723 (= e!153031 e!153051)))

(declare-fun res!114166 () Bool)

(assert (=> b!246723 (=> res!114166 e!153051)))

(declare-fun lt!100097 () List!3636)

(declare-fun lt!100091 () List!3636)

(assert (=> b!246723 (= res!114166 (or (not (= lt!100091 lt!100097)) (not (= lt!100097 lt!100090)) (not (= lt!100091 lt!100090))))))

(declare-fun printList!257 (LexerInterface!573 List!3638) List!3636)

(assert (=> b!246723 (= lt!100097 (printList!257 thiss!17480 (Cons!3628 (h!9025 tokens!465) Nil!3628)))))

(declare-fun lt!100085 () BalanceConc!2400)

(assert (=> b!246723 (= lt!100091 (list!1428 lt!100085))))

(declare-fun lt!100095 () BalanceConc!2402)

(declare-fun printTailRec!267 (LexerInterface!573 BalanceConc!2402 Int BalanceConc!2400) BalanceConc!2400)

(assert (=> b!246723 (= lt!100085 (printTailRec!267 thiss!17480 lt!100095 0 (BalanceConc!2401 Empty!1196)))))

(declare-fun print!304 (LexerInterface!573 BalanceConc!2402) BalanceConc!2400)

(assert (=> b!246723 (= lt!100085 (print!304 thiss!17480 lt!100095))))

(declare-fun singletonSeq!239 (Token!1118) BalanceConc!2402)

(assert (=> b!246723 (= lt!100095 (singletonSeq!239 (h!9025 tokens!465)))))

(declare-fun b!246724 () Bool)

(assert (=> b!246724 (= e!153042 e!153035)))

(declare-fun res!114172 () Bool)

(assert (=> b!246724 (=> (not res!114172) (not e!153035))))

(declare-fun rulesProduceEachTokenIndividually!365 (LexerInterface!573 List!3637 BalanceConc!2402) Bool)

(assert (=> b!246724 (= res!114172 (rulesProduceEachTokenIndividually!365 thiss!17480 rules!1920 lt!100100))))

(assert (=> b!246724 (= lt!100100 (seqFromList!752 tokens!465))))

(declare-fun b!246725 () Bool)

(declare-fun res!114158 () Bool)

(assert (=> b!246725 (=> res!114158 e!153051)))

(declare-fun isEmpty!2214 (BalanceConc!2402) Bool)

(declare-datatypes ((tuple2!4038 0))(
  ( (tuple2!4039 (_1!2235 BalanceConc!2402) (_2!2235 BalanceConc!2400)) )
))
(declare-fun lex!373 (LexerInterface!573 List!3637 BalanceConc!2400) tuple2!4038)

(assert (=> b!246725 (= res!114158 (isEmpty!2214 (_1!2235 (lex!373 thiss!17480 rules!1920 (seqFromList!751 lt!100090)))))))

(declare-fun b!246726 () Bool)

(declare-fun tp!96403 () Bool)

(assert (=> b!246726 (= e!153037 (and tp!96403 (inv!4477 (tag!895 (rule!1264 separatorToken!170))) (inv!4480 (transformation!687 (rule!1264 separatorToken!170))) e!153036))))

(declare-fun b!246727 () Bool)

(declare-fun res!114171 () Bool)

(assert (=> b!246727 (=> (not res!114171) (not e!153054))))

(assert (=> b!246727 (= res!114171 (= (list!1428 (seqFromList!751 lt!100089)) lt!100082))))

(declare-fun b!246728 () Bool)

(assert (=> b!246728 (= e!153048 true)))

(declare-fun lt!100081 () Bool)

(declare-fun rulesValidInductive!180 (LexerInterface!573 List!3637) Bool)

(assert (=> b!246728 (= lt!100081 (rulesValidInductive!180 thiss!17480 rules!1920))))

(declare-fun isPrefix!371 (List!3636 List!3636) Bool)

(assert (=> b!246728 (isPrefix!371 lt!100090 (++!926 lt!100090 lt!100094))))

(declare-fun lt!100099 () Unit!4404)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!266 (List!3636 List!3636) Unit!4404)

(assert (=> b!246728 (= lt!100099 (lemmaConcatTwoListThenFirstIsPrefix!266 lt!100090 lt!100094))))

(declare-fun filter!69 (List!3638 Int) List!3638)

(declare-fun list!1429 (BalanceConc!2402) List!3638)

(assert (=> b!246728 (= (filter!69 (list!1429 (_1!2235 (lex!373 thiss!17480 rules!1920 lt!100092))) lambda!8105) (t!35190 tokens!465))))

(declare-fun lt!100087 () Unit!4404)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!60 (LexerInterface!573 List!3637 List!3638 Token!1118) Unit!4404)

(assert (=> b!246728 (= lt!100087 (theoremInvertabilityFromTokensSepTokenWhenNeeded!60 thiss!17480 rules!1920 (t!35190 tokens!465) separatorToken!170))))

(assert (=> b!246728 e!153044))

(declare-fun res!114173 () Bool)

(assert (=> b!246728 (=> res!114173 e!153044)))

(declare-fun isEmpty!2215 (List!3638) Bool)

(assert (=> b!246728 (= res!114173 (isEmpty!2215 tokens!465))))

(declare-fun lt!100083 () Unit!4404)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!142 (LexerInterface!573 List!3637 List!3638 Token!1118) Unit!4404)

(assert (=> b!246728 (= lt!100083 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!142 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!153046 () Bool)

(declare-fun b!246729 () Bool)

(assert (=> b!246729 (= e!153046 (not (= lt!100089 (++!926 lt!100090 lt!100094))))))

(declare-fun b!246730 () Bool)

(declare-fun res!114169 () Bool)

(assert (=> b!246730 (=> (not res!114169) (not e!153035))))

(declare-fun sepAndNonSepRulesDisjointChars!276 (List!3637 List!3637) Bool)

(assert (=> b!246730 (= res!114169 (sepAndNonSepRulesDisjointChars!276 rules!1920 rules!1920))))

(declare-fun b!246731 () Bool)

(declare-fun res!114155 () Bool)

(assert (=> b!246731 (=> (not res!114155) (not e!153033))))

(declare-fun isEmpty!2216 (List!3636) Bool)

(assert (=> b!246731 (= res!114155 (isEmpty!2216 (_2!2233 lt!100101)))))

(declare-fun b!246732 () Bool)

(assert (=> b!246732 (= e!153055 e!153031)))

(declare-fun res!114165 () Bool)

(assert (=> b!246732 (=> res!114165 e!153031)))

(assert (=> b!246732 (= res!114165 e!153046)))

(declare-fun res!114154 () Bool)

(assert (=> b!246732 (=> (not res!114154) (not e!153046))))

(assert (=> b!246732 (= res!114154 (not lt!100084))))

(assert (=> b!246732 (= lt!100084 (= lt!100089 lt!100103))))

(declare-fun tp!96398 () Bool)

(declare-fun b!246733 () Bool)

(assert (=> b!246733 (= e!153029 (and tp!96398 (inv!4477 (tag!895 (rule!1264 (h!9025 tokens!465)))) (inv!4480 (transformation!687 (rule!1264 (h!9025 tokens!465)))) e!153047))))

(declare-fun b!246734 () Bool)

(declare-fun res!114161 () Bool)

(assert (=> b!246734 (=> res!114161 e!153051)))

(declare-fun rulesProduceIndividualToken!322 (LexerInterface!573 List!3637 Token!1118) Bool)

(assert (=> b!246734 (= res!114161 (not (rulesProduceIndividualToken!322 thiss!17480 rules!1920 (h!9025 tokens!465))))))

(declare-fun b!246735 () Bool)

(declare-fun res!114162 () Bool)

(assert (=> b!246735 (=> (not res!114162) (not e!153035))))

(assert (=> b!246735 (= res!114162 (rulesProduceIndividualToken!322 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!26170 res!114168) b!246708))

(assert (= (and b!246708 res!114164) b!246713))

(assert (= (and b!246713 res!114159) b!246724))

(assert (= (and b!246724 res!114172) b!246735))

(assert (= (and b!246735 res!114162) b!246718))

(assert (= (and b!246718 res!114167) b!246706))

(assert (= (and b!246706 res!114163) b!246730))

(assert (= (and b!246730 res!114169) b!246721))

(assert (= (and b!246721 res!114156) b!246717))

(assert (= (and b!246717 res!114153) b!246727))

(assert (= (and b!246727 res!114171) b!246716))

(assert (= (and b!246716 (not res!114152)) b!246732))

(assert (= (and b!246732 res!114154) b!246729))

(assert (= (and b!246732 (not res!114165)) b!246723))

(assert (= (and b!246723 (not res!114166)) b!246734))

(assert (= (and b!246734 (not res!114161)) b!246725))

(assert (= (and b!246725 (not res!114158)) b!246709))

(assert (= (and b!246709 (not res!114157)) b!246714))

(assert (= (and b!246714 res!114160) b!246731))

(assert (= (and b!246731 res!114155) b!246720))

(assert (= (and b!246714 (not res!114170)) b!246728))

(assert (= (and b!246728 (not res!114173)) b!246711))

(assert (= (and b!246711 res!114174) b!246707))

(assert (= b!246710 b!246705))

(assert (= b!246703 b!246710))

(assert (= (and start!26170 ((_ is Cons!3627) rules!1920)) b!246703))

(assert (= b!246726 b!246719))

(assert (= b!246704 b!246726))

(assert (= start!26170 b!246704))

(assert (= b!246733 b!246722))

(assert (= b!246715 b!246733))

(assert (= b!246712 b!246715))

(assert (= (and start!26170 ((_ is Cons!3628) tokens!465)) b!246712))

(declare-fun m!301849 () Bool)

(assert (=> b!246706 m!301849))

(declare-fun m!301851 () Bool)

(assert (=> b!246735 m!301851))

(declare-fun m!301853 () Bool)

(assert (=> b!246728 m!301853))

(declare-fun m!301855 () Bool)

(assert (=> b!246728 m!301855))

(declare-fun m!301857 () Bool)

(assert (=> b!246728 m!301857))

(declare-fun m!301859 () Bool)

(assert (=> b!246728 m!301859))

(declare-fun m!301861 () Bool)

(assert (=> b!246728 m!301861))

(assert (=> b!246728 m!301855))

(declare-fun m!301863 () Bool)

(assert (=> b!246728 m!301863))

(declare-fun m!301865 () Bool)

(assert (=> b!246728 m!301865))

(declare-fun m!301867 () Bool)

(assert (=> b!246728 m!301867))

(declare-fun m!301869 () Bool)

(assert (=> b!246728 m!301869))

(assert (=> b!246728 m!301865))

(declare-fun m!301871 () Bool)

(assert (=> b!246728 m!301871))

(declare-fun m!301873 () Bool)

(assert (=> b!246724 m!301873))

(declare-fun m!301875 () Bool)

(assert (=> b!246724 m!301875))

(declare-fun m!301877 () Bool)

(assert (=> b!246723 m!301877))

(declare-fun m!301879 () Bool)

(assert (=> b!246723 m!301879))

(declare-fun m!301881 () Bool)

(assert (=> b!246723 m!301881))

(declare-fun m!301883 () Bool)

(assert (=> b!246723 m!301883))

(declare-fun m!301885 () Bool)

(assert (=> b!246723 m!301885))

(declare-fun m!301887 () Bool)

(assert (=> b!246731 m!301887))

(assert (=> b!246729 m!301865))

(declare-fun m!301889 () Bool)

(assert (=> b!246715 m!301889))

(declare-fun m!301891 () Bool)

(assert (=> b!246720 m!301891))

(declare-fun m!301893 () Bool)

(assert (=> b!246716 m!301893))

(declare-fun m!301895 () Bool)

(assert (=> b!246716 m!301895))

(declare-fun m!301897 () Bool)

(assert (=> b!246716 m!301897))

(declare-fun m!301899 () Bool)

(assert (=> b!246716 m!301899))

(declare-fun m!301901 () Bool)

(assert (=> b!246716 m!301901))

(assert (=> b!246716 m!301897))

(declare-fun m!301903 () Bool)

(assert (=> b!246716 m!301903))

(declare-fun m!301905 () Bool)

(assert (=> b!246716 m!301905))

(declare-fun m!301907 () Bool)

(assert (=> b!246716 m!301907))

(declare-fun m!301909 () Bool)

(assert (=> b!246716 m!301909))

(declare-fun m!301911 () Bool)

(assert (=> b!246716 m!301911))

(declare-fun m!301913 () Bool)

(assert (=> b!246716 m!301913))

(declare-fun m!301915 () Bool)

(assert (=> b!246716 m!301915))

(assert (=> b!246716 m!301905))

(assert (=> b!246716 m!301913))

(declare-fun m!301917 () Bool)

(assert (=> b!246716 m!301917))

(assert (=> b!246716 m!301909))

(declare-fun m!301919 () Bool)

(assert (=> b!246707 m!301919))

(declare-fun m!301921 () Bool)

(assert (=> b!246707 m!301921))

(declare-fun m!301923 () Bool)

(assert (=> b!246704 m!301923))

(declare-fun m!301925 () Bool)

(assert (=> b!246714 m!301925))

(declare-fun m!301927 () Bool)

(assert (=> b!246714 m!301927))

(declare-fun m!301929 () Bool)

(assert (=> b!246714 m!301929))

(declare-fun m!301931 () Bool)

(assert (=> b!246711 m!301931))

(declare-fun m!301933 () Bool)

(assert (=> b!246711 m!301933))

(declare-fun m!301935 () Bool)

(assert (=> start!26170 m!301935))

(declare-fun m!301937 () Bool)

(assert (=> b!246725 m!301937))

(assert (=> b!246725 m!301937))

(declare-fun m!301939 () Bool)

(assert (=> b!246725 m!301939))

(declare-fun m!301941 () Bool)

(assert (=> b!246725 m!301941))

(declare-fun m!301943 () Bool)

(assert (=> b!246730 m!301943))

(declare-fun m!301945 () Bool)

(assert (=> b!246733 m!301945))

(declare-fun m!301947 () Bool)

(assert (=> b!246733 m!301947))

(declare-fun m!301949 () Bool)

(assert (=> b!246709 m!301949))

(assert (=> b!246709 m!301949))

(declare-fun m!301951 () Bool)

(assert (=> b!246709 m!301951))

(assert (=> b!246709 m!301951))

(declare-fun m!301953 () Bool)

(assert (=> b!246709 m!301953))

(declare-fun m!301955 () Bool)

(assert (=> b!246709 m!301955))

(declare-fun m!301957 () Bool)

(assert (=> b!246712 m!301957))

(declare-fun m!301959 () Bool)

(assert (=> b!246708 m!301959))

(declare-fun m!301961 () Bool)

(assert (=> b!246726 m!301961))

(declare-fun m!301963 () Bool)

(assert (=> b!246726 m!301963))

(declare-fun m!301965 () Bool)

(assert (=> b!246710 m!301965))

(declare-fun m!301967 () Bool)

(assert (=> b!246710 m!301967))

(declare-fun m!301969 () Bool)

(assert (=> b!246727 m!301969))

(assert (=> b!246727 m!301969))

(declare-fun m!301971 () Bool)

(assert (=> b!246727 m!301971))

(declare-fun m!301973 () Bool)

(assert (=> b!246713 m!301973))

(declare-fun m!301975 () Bool)

(assert (=> b!246734 m!301975))

(declare-fun m!301977 () Bool)

(assert (=> b!246717 m!301977))

(assert (=> b!246717 m!301977))

(declare-fun m!301979 () Bool)

(assert (=> b!246717 m!301979))

(declare-fun m!301981 () Bool)

(assert (=> b!246717 m!301981))

(check-sat (not b!246712) b_and!18583 (not b!246716) (not b!246703) b_and!18573 (not b!246706) (not b!246704) (not b!246726) (not b!246711) (not b!246733) (not b!246744) (not b!246728) (not b!246717) (not b!246734) (not b_next!9155) b_and!18575 (not b!246735) (not b_next!9157) (not b!246729) (not b!246727) (not b_next!9161) (not b_next!9153) (not b!246720) (not b!246724) b_and!18577 (not b!246723) b_and!18581 (not b!246710) (not b!246713) (not b!246707) (not b!246730) (not b!246715) (not b!246731) (not start!26170) (not b!246709) (not b_next!9163) (not b!246714) b_and!18579 (not b!246725) (not b!246708) (not b_next!9159))
(check-sat (not b_next!9157) b_and!18583 (not b_next!9161) b_and!18573 (not b_next!9153) (not b_next!9163) b_and!18579 (not b_next!9159) (not b_next!9155) b_and!18575 b_and!18577 b_and!18581)

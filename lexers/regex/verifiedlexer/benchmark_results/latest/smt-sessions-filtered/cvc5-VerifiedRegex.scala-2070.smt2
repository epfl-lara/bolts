; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105220 () Bool)

(assert start!105220)

(declare-fun b!1186074 () Bool)

(declare-fun b_free!28501 () Bool)

(declare-fun b_next!29205 () Bool)

(assert (=> b!1186074 (= b_free!28501 (not b_next!29205))))

(declare-fun tp!338213 () Bool)

(declare-fun b_and!81629 () Bool)

(assert (=> b!1186074 (= tp!338213 b_and!81629)))

(declare-fun b_free!28503 () Bool)

(declare-fun b_next!29207 () Bool)

(assert (=> b!1186074 (= b_free!28503 (not b_next!29207))))

(declare-fun tp!338208 () Bool)

(declare-fun b_and!81631 () Bool)

(assert (=> b!1186074 (= tp!338208 b_and!81631)))

(declare-fun b!1186070 () Bool)

(declare-fun b_free!28505 () Bool)

(declare-fun b_next!29209 () Bool)

(assert (=> b!1186070 (= b_free!28505 (not b_next!29209))))

(declare-fun tp!338214 () Bool)

(declare-fun b_and!81633 () Bool)

(assert (=> b!1186070 (= tp!338214 b_and!81633)))

(declare-fun b_free!28507 () Bool)

(declare-fun b_next!29211 () Bool)

(assert (=> b!1186070 (= b_free!28507 (not b_next!29211))))

(declare-fun tp!338212 () Bool)

(declare-fun b_and!81635 () Bool)

(assert (=> b!1186070 (= tp!338212 b_and!81635)))

(declare-fun b!1186087 () Bool)

(declare-fun e!761973 () Bool)

(assert (=> b!1186087 (= e!761973 true)))

(declare-fun b!1186086 () Bool)

(declare-fun e!761972 () Bool)

(assert (=> b!1186086 (= e!761972 e!761973)))

(declare-fun b!1186085 () Bool)

(declare-fun e!761971 () Bool)

(assert (=> b!1186085 (= e!761971 e!761972)))

(declare-fun b!1186071 () Bool)

(assert (=> b!1186071 e!761971))

(assert (= b!1186086 b!1186087))

(assert (= b!1186085 b!1186086))

(declare-datatypes ((C!7018 0))(
  ( (C!7019 (val!3805 Int)) )
))
(declare-datatypes ((List!11918 0))(
  ( (Nil!11894) (Cons!11894 (h!17295 C!7018) (t!111898 List!11918)) )
))
(declare-datatypes ((IArray!7793 0))(
  ( (IArray!7794 (innerList!3954 List!11918)) )
))
(declare-datatypes ((Conc!3894 0))(
  ( (Node!3894 (left!10354 Conc!3894) (right!10684 Conc!3894) (csize!8018 Int) (cheight!4105 Int)) (Leaf!5965 (xs!6599 IArray!7793) (csize!8019 Int)) (Empty!3894) )
))
(declare-datatypes ((List!11919 0))(
  ( (Nil!11895) (Cons!11895 (h!17296 (_ BitVec 16)) (t!111899 List!11919)) )
))
(declare-datatypes ((TokenValue!2146 0))(
  ( (FloatLiteralValue!4292 (text!15467 List!11919)) (TokenValueExt!2145 (__x!8003 Int)) (Broken!10730 (value!67312 List!11919)) (Object!2169) (End!2146) (Def!2146) (Underscore!2146) (Match!2146) (Else!2146) (Error!2146) (Case!2146) (If!2146) (Extends!2146) (Abstract!2146) (Class!2146) (Val!2146) (DelimiterValue!4292 (del!2206 List!11919)) (KeywordValue!2152 (value!67313 List!11919)) (CommentValue!4292 (value!67314 List!11919)) (WhitespaceValue!4292 (value!67315 List!11919)) (IndentationValue!2146 (value!67316 List!11919)) (String!14399) (Int32!2146) (Broken!10731 (value!67317 List!11919)) (Boolean!2147) (Unit!18254) (OperatorValue!2149 (op!2206 List!11919)) (IdentifierValue!4292 (value!67318 List!11919)) (IdentifierValue!4293 (value!67319 List!11919)) (WhitespaceValue!4293 (value!67320 List!11919)) (True!4292) (False!4292) (Broken!10732 (value!67321 List!11919)) (Broken!10733 (value!67322 List!11919)) (True!4293) (RightBrace!2146) (RightBracket!2146) (Colon!2146) (Null!2146) (Comma!2146) (LeftBracket!2146) (False!4293) (LeftBrace!2146) (ImaginaryLiteralValue!2146 (text!15468 List!11919)) (StringLiteralValue!6438 (value!67323 List!11919)) (EOFValue!2146 (value!67324 List!11919)) (IdentValue!2146 (value!67325 List!11919)) (DelimiterValue!4293 (value!67326 List!11919)) (DedentValue!2146 (value!67327 List!11919)) (NewLineValue!2146 (value!67328 List!11919)) (IntegerValue!6438 (value!67329 (_ BitVec 32)) (text!15469 List!11919)) (IntegerValue!6439 (value!67330 Int) (text!15470 List!11919)) (Times!2146) (Or!2146) (Equal!2146) (Minus!2146) (Broken!10734 (value!67331 List!11919)) (And!2146) (Div!2146) (LessEqual!2146) (Mod!2146) (Concat!5496) (Not!2146) (Plus!2146) (SpaceValue!2146 (value!67332 List!11919)) (IntegerValue!6440 (value!67333 Int) (text!15471 List!11919)) (StringLiteralValue!6439 (text!15472 List!11919)) (FloatLiteralValue!4293 (text!15473 List!11919)) (BytesLiteralValue!2146 (value!67334 List!11919)) (CommentValue!4293 (value!67335 List!11919)) (StringLiteralValue!6440 (value!67336 List!11919)) (ErrorTokenValue!2146 (msg!2207 List!11919)) )
))
(declare-datatypes ((BalanceConc!7810 0))(
  ( (BalanceConc!7811 (c!197154 Conc!3894)) )
))
(declare-datatypes ((Regex!3350 0))(
  ( (ElementMatch!3350 (c!197155 C!7018)) (Concat!5497 (regOne!7212 Regex!3350) (regTwo!7212 Regex!3350)) (EmptyExpr!3350) (Star!3350 (reg!3679 Regex!3350)) (EmptyLang!3350) (Union!3350 (regOne!7213 Regex!3350) (regTwo!7213 Regex!3350)) )
))
(declare-datatypes ((String!14400 0))(
  ( (String!14401 (value!67337 String)) )
))
(declare-datatypes ((TokenValueInjection!3992 0))(
  ( (TokenValueInjection!3993 (toValue!3197 Int) (toChars!3056 Int)) )
))
(declare-datatypes ((Rule!3960 0))(
  ( (Rule!3961 (regex!2080 Regex!3350) (tag!2342 String!14400) (isSeparator!2080 Bool) (transformation!2080 TokenValueInjection!3992)) )
))
(declare-datatypes ((List!11920 0))(
  ( (Nil!11896) (Cons!11896 (h!17297 Rule!3960) (t!111900 List!11920)) )
))
(declare-fun rules!4386 () List!11920)

(assert (= (and b!1186071 (is-Cons!11896 rules!4386)) b!1186085))

(declare-fun lambda!48896 () Int)

(declare-fun order!7393 () Int)

(declare-fun order!7391 () Int)

(declare-fun dynLambda!5303 (Int Int) Int)

(declare-fun dynLambda!5304 (Int Int) Int)

(assert (=> b!1186087 (< (dynLambda!5303 order!7391 (toValue!3197 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48896))))

(declare-fun order!7395 () Int)

(declare-fun dynLambda!5305 (Int Int) Int)

(assert (=> b!1186087 (< (dynLambda!5305 order!7395 (toChars!3056 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48896))))

(declare-fun b!1186062 () Bool)

(declare-fun e!761959 () Bool)

(declare-fun e!761960 () Bool)

(assert (=> b!1186062 (= e!761959 e!761960)))

(declare-fun res!536024 () Bool)

(assert (=> b!1186062 (=> (not res!536024) (not e!761960))))

(declare-datatypes ((LexerInterface!1775 0))(
  ( (LexerInterfaceExt!1772 (__x!8004 Int)) (Lexer!1773) )
))
(declare-fun thiss!27592 () LexerInterface!1775)

(declare-datatypes ((Token!3822 0))(
  ( (Token!3823 (value!67338 TokenValue!2146) (rule!3501 Rule!3960) (size!9376 Int) (originalCharacters!2634 List!11918)) )
))
(declare-datatypes ((List!11921 0))(
  ( (Nil!11897) (Cons!11897 (h!17298 Token!3822) (t!111901 List!11921)) )
))
(declare-fun lt!408112 () List!11921)

(declare-fun rulesProduceIndividualToken!802 (LexerInterface!1775 List!11920 Token!3822) Bool)

(assert (=> b!1186062 (= res!536024 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 lt!408112)))))

(declare-fun e!761964 () Bool)

(declare-fun b!1186063 () Bool)

(declare-fun tp!338207 () Bool)

(declare-fun l!6534 () List!11921)

(declare-fun e!761955 () Bool)

(declare-fun inv!21 (TokenValue!2146) Bool)

(assert (=> b!1186063 (= e!761955 (and (inv!21 (value!67338 (h!17298 l!6534))) e!761964 tp!338207))))

(declare-fun b!1186064 () Bool)

(declare-fun e!761952 () Bool)

(declare-fun e!761962 () Bool)

(declare-fun tp!338209 () Bool)

(assert (=> b!1186064 (= e!761952 (and e!761962 tp!338209))))

(declare-fun b!1186066 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!641 (LexerInterface!1775 List!11920 List!11921) Bool)

(assert (=> b!1186066 (= e!761960 (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 (t!111901 lt!408112)))))

(declare-fun e!761956 () Bool)

(declare-fun tp!338210 () Bool)

(declare-fun b!1186067 () Bool)

(declare-fun inv!15723 (String!14400) Bool)

(declare-fun inv!15726 (TokenValueInjection!3992) Bool)

(assert (=> b!1186067 (= e!761962 (and tp!338210 (inv!15723 (tag!2342 (h!17297 rules!4386))) (inv!15726 (transformation!2080 (h!17297 rules!4386))) e!761956))))

(declare-fun b!1186068 () Bool)

(declare-fun e!761961 () Bool)

(declare-fun tp!338215 () Bool)

(assert (=> b!1186068 (= e!761964 (and tp!338215 (inv!15723 (tag!2342 (rule!3501 (h!17298 l!6534)))) (inv!15726 (transformation!2080 (rule!3501 (h!17298 l!6534)))) e!761961))))

(declare-fun b!1186069 () Bool)

(declare-fun res!536023 () Bool)

(declare-fun e!761953 () Bool)

(assert (=> b!1186069 (=> (not res!536023) (not e!761953))))

(declare-fun rulesInvariant!1649 (LexerInterface!1775 List!11920) Bool)

(assert (=> b!1186069 (= res!536023 (rulesInvariant!1649 thiss!27592 rules!4386))))

(assert (=> b!1186070 (= e!761956 (and tp!338214 tp!338212))))

(declare-fun forall!3151 (List!11921 Int) Bool)

(assert (=> b!1186071 (= e!761953 (not (forall!3151 l!6534 lambda!48896)))))

(declare-fun subseq!330 (List!11921 List!11921) Bool)

(assert (=> b!1186071 (subseq!330 lt!408112 l!6534)))

(declare-datatypes ((Unit!18255 0))(
  ( (Unit!18256) )
))
(declare-fun lt!408111 () Unit!18255)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!93 (List!11921 Int) Unit!18255)

(assert (=> b!1186071 (= lt!408111 (lemmaDropSubseq!93 l!6534 i!1621))))

(assert (=> b!1186071 (= (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 lt!408112) e!761959)))

(declare-fun res!536027 () Bool)

(assert (=> b!1186071 (=> res!536027 e!761959)))

(assert (=> b!1186071 (= res!536027 (not (is-Cons!11897 lt!408112)))))

(declare-fun drop!554 (List!11921 Int) List!11921)

(assert (=> b!1186071 (= lt!408112 (drop!554 l!6534 i!1621))))

(declare-fun b!1186065 () Bool)

(declare-fun res!536028 () Bool)

(assert (=> b!1186065 (=> (not res!536028) (not e!761953))))

(declare-fun isEmpty!7159 (List!11920) Bool)

(assert (=> b!1186065 (= res!536028 (not (isEmpty!7159 rules!4386)))))

(declare-fun res!536025 () Bool)

(assert (=> start!105220 (=> (not res!536025) (not e!761953))))

(assert (=> start!105220 (= res!536025 (is-Lexer!1773 thiss!27592))))

(assert (=> start!105220 e!761953))

(assert (=> start!105220 true))

(assert (=> start!105220 e!761952))

(declare-fun e!761958 () Bool)

(assert (=> start!105220 e!761958))

(declare-fun b!1186072 () Bool)

(declare-fun res!536026 () Bool)

(assert (=> b!1186072 (=> (not res!536026) (not e!761953))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!169 (LexerInterface!1775 List!11921 List!11920) Bool)

(assert (=> b!1186072 (= res!536026 (tokensListTwoByTwoPredicateSeparableList!169 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1186073 () Bool)

(declare-fun tp!338211 () Bool)

(declare-fun inv!15727 (Token!3822) Bool)

(assert (=> b!1186073 (= e!761958 (and (inv!15727 (h!17298 l!6534)) e!761955 tp!338211))))

(assert (=> b!1186074 (= e!761961 (and tp!338213 tp!338208))))

(declare-fun b!1186075 () Bool)

(declare-fun res!536022 () Bool)

(assert (=> b!1186075 (=> (not res!536022) (not e!761953))))

(assert (=> b!1186075 (= res!536022 (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1186076 () Bool)

(declare-fun res!536021 () Bool)

(assert (=> b!1186076 (=> (not res!536021) (not e!761953))))

(assert (=> b!1186076 (= res!536021 (is-Nil!11897 l!6534))))

(assert (= (and start!105220 res!536025) b!1186065))

(assert (= (and b!1186065 res!536028) b!1186069))

(assert (= (and b!1186069 res!536023) b!1186075))

(assert (= (and b!1186075 res!536022) b!1186072))

(assert (= (and b!1186072 res!536026) b!1186076))

(assert (= (and b!1186076 res!536021) b!1186071))

(assert (= (and b!1186071 (not res!536027)) b!1186062))

(assert (= (and b!1186062 res!536024) b!1186066))

(assert (= b!1186067 b!1186070))

(assert (= b!1186064 b!1186067))

(assert (= (and start!105220 (is-Cons!11896 rules!4386)) b!1186064))

(assert (= b!1186068 b!1186074))

(assert (= b!1186063 b!1186068))

(assert (= b!1186073 b!1186063))

(assert (= (and start!105220 (is-Cons!11897 l!6534)) b!1186073))

(declare-fun m!1362261 () Bool)

(assert (=> b!1186066 m!1362261))

(declare-fun m!1362263 () Bool)

(assert (=> b!1186071 m!1362263))

(declare-fun m!1362265 () Bool)

(assert (=> b!1186071 m!1362265))

(declare-fun m!1362267 () Bool)

(assert (=> b!1186071 m!1362267))

(declare-fun m!1362269 () Bool)

(assert (=> b!1186071 m!1362269))

(declare-fun m!1362271 () Bool)

(assert (=> b!1186071 m!1362271))

(declare-fun m!1362273 () Bool)

(assert (=> b!1186063 m!1362273))

(declare-fun m!1362275 () Bool)

(assert (=> b!1186062 m!1362275))

(declare-fun m!1362277 () Bool)

(assert (=> b!1186067 m!1362277))

(declare-fun m!1362279 () Bool)

(assert (=> b!1186067 m!1362279))

(declare-fun m!1362281 () Bool)

(assert (=> b!1186065 m!1362281))

(declare-fun m!1362283 () Bool)

(assert (=> b!1186068 m!1362283))

(declare-fun m!1362285 () Bool)

(assert (=> b!1186068 m!1362285))

(declare-fun m!1362287 () Bool)

(assert (=> b!1186069 m!1362287))

(declare-fun m!1362289 () Bool)

(assert (=> b!1186072 m!1362289))

(declare-fun m!1362291 () Bool)

(assert (=> b!1186075 m!1362291))

(declare-fun m!1362293 () Bool)

(assert (=> b!1186073 m!1362293))

(push 1)

(assert (not b!1186071))

(assert (not b_next!29211))

(assert (not b!1186085))

(assert b_and!81631)

(assert b_and!81629)

(assert (not b!1186062))

(assert b_and!81633)

(assert (not b_next!29207))

(assert (not b_next!29209))

(assert (not b!1186065))

(assert (not b!1186064))

(assert (not b!1186069))

(assert (not b!1186075))

(assert (not b!1186068))

(assert (not b!1186067))

(assert (not b!1186072))

(assert b_and!81635)

(assert (not b!1186066))

(assert (not b!1186073))

(assert (not b!1186063))

(assert (not b_next!29205))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29211))

(assert b_and!81631)

(assert b_and!81629)

(assert b_and!81633)

(assert (not b_next!29207))

(assert (not b_next!29209))

(assert b_and!81635)

(assert (not b_next!29205))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1186154 () Bool)

(declare-fun e!762030 () Bool)

(declare-fun inv!15 (TokenValue!2146) Bool)

(assert (=> b!1186154 (= e!762030 (inv!15 (value!67338 (h!17298 l!6534))))))

(declare-fun b!1186155 () Bool)

(declare-fun e!762029 () Bool)

(declare-fun e!762028 () Bool)

(assert (=> b!1186155 (= e!762029 e!762028)))

(declare-fun c!197163 () Bool)

(assert (=> b!1186155 (= c!197163 (is-IntegerValue!6439 (value!67338 (h!17298 l!6534))))))

(declare-fun b!1186156 () Bool)

(declare-fun inv!17 (TokenValue!2146) Bool)

(assert (=> b!1186156 (= e!762028 (inv!17 (value!67338 (h!17298 l!6534))))))

(declare-fun b!1186157 () Bool)

(declare-fun res!536055 () Bool)

(assert (=> b!1186157 (=> res!536055 e!762030)))

(assert (=> b!1186157 (= res!536055 (not (is-IntegerValue!6440 (value!67338 (h!17298 l!6534)))))))

(assert (=> b!1186157 (= e!762028 e!762030)))

(declare-fun b!1186158 () Bool)

(declare-fun inv!16 (TokenValue!2146) Bool)

(assert (=> b!1186158 (= e!762029 (inv!16 (value!67338 (h!17298 l!6534))))))

(declare-fun d!339401 () Bool)

(declare-fun c!197162 () Bool)

(assert (=> d!339401 (= c!197162 (is-IntegerValue!6438 (value!67338 (h!17298 l!6534))))))

(assert (=> d!339401 (= (inv!21 (value!67338 (h!17298 l!6534))) e!762029)))

(assert (= (and d!339401 c!197162) b!1186158))

(assert (= (and d!339401 (not c!197162)) b!1186155))

(assert (= (and b!1186155 c!197163) b!1186156))

(assert (= (and b!1186155 (not c!197163)) b!1186157))

(assert (= (and b!1186157 (not res!536055)) b!1186154))

(declare-fun m!1362329 () Bool)

(assert (=> b!1186154 m!1362329))

(declare-fun m!1362331 () Bool)

(assert (=> b!1186156 m!1362331))

(declare-fun m!1362333 () Bool)

(assert (=> b!1186158 m!1362333))

(assert (=> b!1186063 d!339401))

(declare-fun d!339403 () Bool)

(declare-fun res!536060 () Bool)

(declare-fun e!762033 () Bool)

(assert (=> d!339403 (=> (not res!536060) (not e!762033))))

(declare-fun isEmpty!7161 (List!11918) Bool)

(assert (=> d!339403 (= res!536060 (not (isEmpty!7161 (originalCharacters!2634 (h!17298 l!6534)))))))

(assert (=> d!339403 (= (inv!15727 (h!17298 l!6534)) e!762033)))

(declare-fun b!1186163 () Bool)

(declare-fun res!536061 () Bool)

(assert (=> b!1186163 (=> (not res!536061) (not e!762033))))

(declare-fun list!4369 (BalanceConc!7810) List!11918)

(declare-fun dynLambda!5309 (Int TokenValue!2146) BalanceConc!7810)

(assert (=> b!1186163 (= res!536061 (= (originalCharacters!2634 (h!17298 l!6534)) (list!4369 (dynLambda!5309 (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (value!67338 (h!17298 l!6534))))))))

(declare-fun b!1186164 () Bool)

(declare-fun size!9378 (List!11918) Int)

(assert (=> b!1186164 (= e!762033 (= (size!9376 (h!17298 l!6534)) (size!9378 (originalCharacters!2634 (h!17298 l!6534)))))))

(assert (= (and d!339403 res!536060) b!1186163))

(assert (= (and b!1186163 res!536061) b!1186164))

(declare-fun b_lambda!35607 () Bool)

(assert (=> (not b_lambda!35607) (not b!1186163)))

(declare-fun t!111909 () Bool)

(declare-fun tb!66333 () Bool)

(assert (=> (and b!1186074 (= (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534))))) t!111909) tb!66333))

(declare-fun b!1186169 () Bool)

(declare-fun e!762036 () Bool)

(declare-fun tp!338245 () Bool)

(declare-fun inv!15730 (Conc!3894) Bool)

(assert (=> b!1186169 (= e!762036 (and (inv!15730 (c!197154 (dynLambda!5309 (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (value!67338 (h!17298 l!6534))))) tp!338245))))

(declare-fun result!79658 () Bool)

(declare-fun inv!15731 (BalanceConc!7810) Bool)

(assert (=> tb!66333 (= result!79658 (and (inv!15731 (dynLambda!5309 (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (value!67338 (h!17298 l!6534)))) e!762036))))

(assert (= tb!66333 b!1186169))

(declare-fun m!1362335 () Bool)

(assert (=> b!1186169 m!1362335))

(declare-fun m!1362337 () Bool)

(assert (=> tb!66333 m!1362337))

(assert (=> b!1186163 t!111909))

(declare-fun b_and!81645 () Bool)

(assert (= b_and!81631 (and (=> t!111909 result!79658) b_and!81645)))

(declare-fun tb!66335 () Bool)

(declare-fun t!111911 () Bool)

(assert (=> (and b!1186070 (= (toChars!3056 (transformation!2080 (h!17297 rules!4386))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534))))) t!111911) tb!66335))

(declare-fun result!79662 () Bool)

(assert (= result!79662 result!79658))

(assert (=> b!1186163 t!111911))

(declare-fun b_and!81647 () Bool)

(assert (= b_and!81635 (and (=> t!111911 result!79662) b_and!81647)))

(declare-fun m!1362339 () Bool)

(assert (=> d!339403 m!1362339))

(declare-fun m!1362341 () Bool)

(assert (=> b!1186163 m!1362341))

(assert (=> b!1186163 m!1362341))

(declare-fun m!1362343 () Bool)

(assert (=> b!1186163 m!1362343))

(declare-fun m!1362345 () Bool)

(assert (=> b!1186164 m!1362345))

(assert (=> b!1186073 d!339403))

(declare-fun d!339405 () Bool)

(declare-fun lt!408124 () Bool)

(declare-fun e!762041 () Bool)

(assert (=> d!339405 (= lt!408124 e!762041)))

(declare-fun res!536068 () Bool)

(assert (=> d!339405 (=> (not res!536068) (not e!762041))))

(declare-datatypes ((IArray!7797 0))(
  ( (IArray!7798 (innerList!3956 List!11921)) )
))
(declare-datatypes ((Conc!3896 0))(
  ( (Node!3896 (left!10358 Conc!3896) (right!10688 Conc!3896) (csize!8022 Int) (cheight!4107 Int)) (Leaf!5967 (xs!6601 IArray!7797) (csize!8023 Int)) (Empty!3896) )
))
(declare-datatypes ((BalanceConc!7814 0))(
  ( (BalanceConc!7815 (c!197176 Conc!3896)) )
))
(declare-fun list!4370 (BalanceConc!7814) List!11921)

(declare-datatypes ((tuple2!12110 0))(
  ( (tuple2!12111 (_1!6902 BalanceConc!7814) (_2!6902 BalanceConc!7810)) )
))
(declare-fun lex!737 (LexerInterface!1775 List!11920 BalanceConc!7810) tuple2!12110)

(declare-fun print!674 (LexerInterface!1775 BalanceConc!7814) BalanceConc!7810)

(declare-fun singletonSeq!722 (Token!3822) BalanceConc!7814)

(assert (=> d!339405 (= res!536068 (= (list!4370 (_1!6902 (lex!737 thiss!27592 rules!4386 (print!674 thiss!27592 (singletonSeq!722 (h!17298 lt!408112)))))) (list!4370 (singletonSeq!722 (h!17298 lt!408112)))))))

(declare-fun e!762042 () Bool)

(assert (=> d!339405 (= lt!408124 e!762042)))

(declare-fun res!536069 () Bool)

(assert (=> d!339405 (=> (not res!536069) (not e!762042))))

(declare-fun lt!408123 () tuple2!12110)

(declare-fun size!9379 (BalanceConc!7814) Int)

(assert (=> d!339405 (= res!536069 (= (size!9379 (_1!6902 lt!408123)) 1))))

(assert (=> d!339405 (= lt!408123 (lex!737 thiss!27592 rules!4386 (print!674 thiss!27592 (singletonSeq!722 (h!17298 lt!408112)))))))

(assert (=> d!339405 (not (isEmpty!7159 rules!4386))))

(assert (=> d!339405 (= (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 lt!408112)) lt!408124)))

(declare-fun b!1186176 () Bool)

(declare-fun res!536070 () Bool)

(assert (=> b!1186176 (=> (not res!536070) (not e!762042))))

(declare-fun apply!2593 (BalanceConc!7814 Int) Token!3822)

(assert (=> b!1186176 (= res!536070 (= (apply!2593 (_1!6902 lt!408123) 0) (h!17298 lt!408112)))))

(declare-fun b!1186177 () Bool)

(declare-fun isEmpty!7162 (BalanceConc!7810) Bool)

(assert (=> b!1186177 (= e!762042 (isEmpty!7162 (_2!6902 lt!408123)))))

(declare-fun b!1186178 () Bool)

(assert (=> b!1186178 (= e!762041 (isEmpty!7162 (_2!6902 (lex!737 thiss!27592 rules!4386 (print!674 thiss!27592 (singletonSeq!722 (h!17298 lt!408112)))))))))

(assert (= (and d!339405 res!536069) b!1186176))

(assert (= (and b!1186176 res!536070) b!1186177))

(assert (= (and d!339405 res!536068) b!1186178))

(assert (=> d!339405 m!1362281))

(declare-fun m!1362347 () Bool)

(assert (=> d!339405 m!1362347))

(declare-fun m!1362349 () Bool)

(assert (=> d!339405 m!1362349))

(declare-fun m!1362351 () Bool)

(assert (=> d!339405 m!1362351))

(declare-fun m!1362353 () Bool)

(assert (=> d!339405 m!1362353))

(assert (=> d!339405 m!1362353))

(declare-fun m!1362355 () Bool)

(assert (=> d!339405 m!1362355))

(declare-fun m!1362357 () Bool)

(assert (=> d!339405 m!1362357))

(assert (=> d!339405 m!1362353))

(assert (=> d!339405 m!1362347))

(declare-fun m!1362359 () Bool)

(assert (=> b!1186176 m!1362359))

(declare-fun m!1362361 () Bool)

(assert (=> b!1186177 m!1362361))

(assert (=> b!1186178 m!1362353))

(assert (=> b!1186178 m!1362353))

(assert (=> b!1186178 m!1362347))

(assert (=> b!1186178 m!1362347))

(assert (=> b!1186178 m!1362349))

(declare-fun m!1362363 () Bool)

(assert (=> b!1186178 m!1362363))

(assert (=> b!1186062 d!339405))

(declare-fun bs!287612 () Bool)

(declare-fun d!339409 () Bool)

(assert (= bs!287612 (and d!339409 b!1186071)))

(declare-fun lambda!48902 () Int)

(assert (=> bs!287612 (= (= thiss!27592 Lexer!1773) (= lambda!48902 lambda!48896))))

(declare-fun b!1186187 () Bool)

(declare-fun e!762051 () Bool)

(assert (=> b!1186187 (= e!762051 true)))

(declare-fun b!1186186 () Bool)

(declare-fun e!762050 () Bool)

(assert (=> b!1186186 (= e!762050 e!762051)))

(declare-fun b!1186185 () Bool)

(declare-fun e!762049 () Bool)

(assert (=> b!1186185 (= e!762049 e!762050)))

(assert (=> d!339409 e!762049))

(assert (= b!1186186 b!1186187))

(assert (= b!1186185 b!1186186))

(assert (= (and d!339409 (is-Cons!11896 rules!4386)) b!1186185))

(assert (=> b!1186187 (< (dynLambda!5303 order!7391 (toValue!3197 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48902))))

(assert (=> b!1186187 (< (dynLambda!5305 order!7395 (toChars!3056 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48902))))

(assert (=> d!339409 true))

(declare-fun lt!408127 () Bool)

(assert (=> d!339409 (= lt!408127 (forall!3151 (t!111901 lt!408112) lambda!48902))))

(declare-fun e!762048 () Bool)

(assert (=> d!339409 (= lt!408127 e!762048)))

(declare-fun res!536075 () Bool)

(assert (=> d!339409 (=> res!536075 e!762048)))

(assert (=> d!339409 (= res!536075 (not (is-Cons!11897 (t!111901 lt!408112))))))

(assert (=> d!339409 (not (isEmpty!7159 rules!4386))))

(assert (=> d!339409 (= (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 (t!111901 lt!408112)) lt!408127)))

(declare-fun b!1186183 () Bool)

(declare-fun e!762047 () Bool)

(assert (=> b!1186183 (= e!762048 e!762047)))

(declare-fun res!536076 () Bool)

(assert (=> b!1186183 (=> (not res!536076) (not e!762047))))

(assert (=> b!1186183 (= res!536076 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 (t!111901 lt!408112))))))

(declare-fun b!1186184 () Bool)

(assert (=> b!1186184 (= e!762047 (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 (t!111901 (t!111901 lt!408112))))))

(assert (= (and d!339409 (not res!536075)) b!1186183))

(assert (= (and b!1186183 res!536076) b!1186184))

(declare-fun m!1362365 () Bool)

(assert (=> d!339409 m!1362365))

(assert (=> d!339409 m!1362281))

(declare-fun m!1362367 () Bool)

(assert (=> b!1186183 m!1362367))

(declare-fun m!1362369 () Bool)

(assert (=> b!1186184 m!1362369))

(assert (=> b!1186066 d!339409))

(declare-fun d!339411 () Bool)

(assert (=> d!339411 (= (isEmpty!7159 rules!4386) (is-Nil!11896 rules!4386))))

(assert (=> b!1186065 d!339411))

(declare-fun bs!287613 () Bool)

(declare-fun d!339413 () Bool)

(assert (= bs!287613 (and d!339413 b!1186071)))

(declare-fun lambda!48903 () Int)

(assert (=> bs!287613 (= (= thiss!27592 Lexer!1773) (= lambda!48903 lambda!48896))))

(declare-fun bs!287614 () Bool)

(assert (= bs!287614 (and d!339413 d!339409)))

(assert (=> bs!287614 (= lambda!48903 lambda!48902)))

(declare-fun b!1186194 () Bool)

(declare-fun e!762056 () Bool)

(assert (=> b!1186194 (= e!762056 true)))

(declare-fun b!1186193 () Bool)

(declare-fun e!762055 () Bool)

(assert (=> b!1186193 (= e!762055 e!762056)))

(declare-fun b!1186192 () Bool)

(declare-fun e!762054 () Bool)

(assert (=> b!1186192 (= e!762054 e!762055)))

(assert (=> d!339413 e!762054))

(assert (= b!1186193 b!1186194))

(assert (= b!1186192 b!1186193))

(assert (= (and d!339413 (is-Cons!11896 rules!4386)) b!1186192))

(assert (=> b!1186194 (< (dynLambda!5303 order!7391 (toValue!3197 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48903))))

(assert (=> b!1186194 (< (dynLambda!5305 order!7395 (toChars!3056 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48903))))

(assert (=> d!339413 true))

(declare-fun lt!408128 () Bool)

(assert (=> d!339413 (= lt!408128 (forall!3151 l!6534 lambda!48903))))

(declare-fun e!762053 () Bool)

(assert (=> d!339413 (= lt!408128 e!762053)))

(declare-fun res!536077 () Bool)

(assert (=> d!339413 (=> res!536077 e!762053)))

(assert (=> d!339413 (= res!536077 (not (is-Cons!11897 l!6534)))))

(assert (=> d!339413 (not (isEmpty!7159 rules!4386))))

(assert (=> d!339413 (= (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 l!6534) lt!408128)))

(declare-fun b!1186190 () Bool)

(declare-fun e!762052 () Bool)

(assert (=> b!1186190 (= e!762053 e!762052)))

(declare-fun res!536078 () Bool)

(assert (=> b!1186190 (=> (not res!536078) (not e!762052))))

(assert (=> b!1186190 (= res!536078 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 l!6534)))))

(declare-fun b!1186191 () Bool)

(assert (=> b!1186191 (= e!762052 (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 (t!111901 l!6534)))))

(assert (= (and d!339413 (not res!536077)) b!1186190))

(assert (= (and b!1186190 res!536078) b!1186191))

(declare-fun m!1362371 () Bool)

(assert (=> d!339413 m!1362371))

(assert (=> d!339413 m!1362281))

(declare-fun m!1362373 () Bool)

(assert (=> b!1186190 m!1362373))

(declare-fun m!1362375 () Bool)

(assert (=> b!1186191 m!1362375))

(assert (=> b!1186075 d!339413))

(declare-fun d!339415 () Bool)

(declare-fun res!536081 () Bool)

(declare-fun e!762059 () Bool)

(assert (=> d!339415 (=> (not res!536081) (not e!762059))))

(declare-fun rulesValid!738 (LexerInterface!1775 List!11920) Bool)

(assert (=> d!339415 (= res!536081 (rulesValid!738 thiss!27592 rules!4386))))

(assert (=> d!339415 (= (rulesInvariant!1649 thiss!27592 rules!4386) e!762059)))

(declare-fun b!1186197 () Bool)

(declare-datatypes ((List!11926 0))(
  ( (Nil!11902) (Cons!11902 (h!17303 String!14400) (t!111925 List!11926)) )
))
(declare-fun noDuplicateTag!738 (LexerInterface!1775 List!11920 List!11926) Bool)

(assert (=> b!1186197 (= e!762059 (noDuplicateTag!738 thiss!27592 rules!4386 Nil!11902))))

(assert (= (and d!339415 res!536081) b!1186197))

(declare-fun m!1362377 () Bool)

(assert (=> d!339415 m!1362377))

(declare-fun m!1362379 () Bool)

(assert (=> b!1186197 m!1362379))

(assert (=> b!1186069 d!339415))

(declare-fun d!339417 () Bool)

(assert (=> d!339417 (= (inv!15723 (tag!2342 (rule!3501 (h!17298 l!6534)))) (= (mod (str.len (value!67337 (tag!2342 (rule!3501 (h!17298 l!6534))))) 2) 0))))

(assert (=> b!1186068 d!339417))

(declare-fun d!339419 () Bool)

(declare-fun res!536084 () Bool)

(declare-fun e!762062 () Bool)

(assert (=> d!339419 (=> (not res!536084) (not e!762062))))

(declare-fun semiInverseModEq!750 (Int Int) Bool)

(assert (=> d!339419 (= res!536084 (semiInverseModEq!750 (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (toValue!3197 (transformation!2080 (rule!3501 (h!17298 l!6534))))))))

(assert (=> d!339419 (= (inv!15726 (transformation!2080 (rule!3501 (h!17298 l!6534)))) e!762062)))

(declare-fun b!1186200 () Bool)

(declare-fun equivClasses!717 (Int Int) Bool)

(assert (=> b!1186200 (= e!762062 (equivClasses!717 (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))) (toValue!3197 (transformation!2080 (rule!3501 (h!17298 l!6534))))))))

(assert (= (and d!339419 res!536084) b!1186200))

(declare-fun m!1362381 () Bool)

(assert (=> d!339419 m!1362381))

(declare-fun m!1362383 () Bool)

(assert (=> b!1186200 m!1362383))

(assert (=> b!1186068 d!339419))

(declare-fun d!339421 () Bool)

(assert (=> d!339421 (= (inv!15723 (tag!2342 (h!17297 rules!4386))) (= (mod (str.len (value!67337 (tag!2342 (h!17297 rules!4386)))) 2) 0))))

(assert (=> b!1186067 d!339421))

(declare-fun d!339423 () Bool)

(declare-fun res!536085 () Bool)

(declare-fun e!762063 () Bool)

(assert (=> d!339423 (=> (not res!536085) (not e!762063))))

(assert (=> d!339423 (= res!536085 (semiInverseModEq!750 (toChars!3056 (transformation!2080 (h!17297 rules!4386))) (toValue!3197 (transformation!2080 (h!17297 rules!4386)))))))

(assert (=> d!339423 (= (inv!15726 (transformation!2080 (h!17297 rules!4386))) e!762063)))

(declare-fun b!1186201 () Bool)

(assert (=> b!1186201 (= e!762063 (equivClasses!717 (toChars!3056 (transformation!2080 (h!17297 rules!4386))) (toValue!3197 (transformation!2080 (h!17297 rules!4386)))))))

(assert (= (and d!339423 res!536085) b!1186201))

(declare-fun m!1362385 () Bool)

(assert (=> d!339423 m!1362385))

(declare-fun m!1362387 () Bool)

(assert (=> b!1186201 m!1362387))

(assert (=> b!1186067 d!339423))

(declare-fun d!339425 () Bool)

(declare-fun res!536096 () Bool)

(declare-fun e!762074 () Bool)

(assert (=> d!339425 (=> res!536096 e!762074)))

(assert (=> d!339425 (= res!536096 (or (not (is-Cons!11897 l!6534)) (not (is-Cons!11897 (t!111901 l!6534)))))))

(assert (=> d!339425 (= (tokensListTwoByTwoPredicateSeparableList!169 thiss!27592 l!6534 rules!4386) e!762074)))

(declare-fun b!1186212 () Bool)

(declare-fun e!762075 () Bool)

(assert (=> b!1186212 (= e!762074 e!762075)))

(declare-fun res!536097 () Bool)

(assert (=> b!1186212 (=> (not res!536097) (not e!762075))))

(declare-fun separableTokensPredicate!161 (LexerInterface!1775 Token!3822 Token!3822 List!11920) Bool)

(assert (=> b!1186212 (= res!536097 (separableTokensPredicate!161 thiss!27592 (h!17298 l!6534) (h!17298 (t!111901 l!6534)) rules!4386))))

(declare-fun lt!408170 () Unit!18255)

(declare-fun Unit!18260 () Unit!18255)

(assert (=> b!1186212 (= lt!408170 Unit!18260)))

(declare-fun size!9380 (BalanceConc!7810) Int)

(declare-fun charsOf!1099 (Token!3822) BalanceConc!7810)

(assert (=> b!1186212 (> (size!9380 (charsOf!1099 (h!17298 (t!111901 l!6534)))) 0)))

(declare-fun lt!408166 () Unit!18255)

(declare-fun Unit!18261 () Unit!18255)

(assert (=> b!1186212 (= lt!408166 Unit!18261)))

(assert (=> b!1186212 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 (t!111901 l!6534)))))

(declare-fun lt!408168 () Unit!18255)

(declare-fun Unit!18262 () Unit!18255)

(assert (=> b!1186212 (= lt!408168 Unit!18262)))

(assert (=> b!1186212 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 l!6534))))

(declare-fun lt!408169 () Unit!18255)

(declare-fun lt!408167 () Unit!18255)

(assert (=> b!1186212 (= lt!408169 lt!408167)))

(assert (=> b!1186212 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 (t!111901 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!320 (LexerInterface!1775 List!11920 List!11921 Token!3822) Unit!18255)

(assert (=> b!1186212 (= lt!408167 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!320 thiss!27592 rules!4386 l!6534 (h!17298 (t!111901 l!6534))))))

(declare-fun lt!408165 () Unit!18255)

(declare-fun lt!408164 () Unit!18255)

(assert (=> b!1186212 (= lt!408165 lt!408164)))

(assert (=> b!1186212 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 l!6534))))

(assert (=> b!1186212 (= lt!408164 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!320 thiss!27592 rules!4386 l!6534 (h!17298 l!6534)))))

(declare-fun b!1186213 () Bool)

(assert (=> b!1186213 (= e!762075 (tokensListTwoByTwoPredicateSeparableList!169 thiss!27592 (Cons!11897 (h!17298 (t!111901 l!6534)) (t!111901 (t!111901 l!6534))) rules!4386))))

(assert (= (and d!339425 (not res!536096)) b!1186212))

(assert (= (and b!1186212 res!536097) b!1186213))

(assert (=> b!1186212 m!1362373))

(declare-fun m!1362405 () Bool)

(assert (=> b!1186212 m!1362405))

(declare-fun m!1362407 () Bool)

(assert (=> b!1186212 m!1362407))

(assert (=> b!1186212 m!1362405))

(declare-fun m!1362409 () Bool)

(assert (=> b!1186212 m!1362409))

(declare-fun m!1362411 () Bool)

(assert (=> b!1186212 m!1362411))

(declare-fun m!1362413 () Bool)

(assert (=> b!1186212 m!1362413))

(declare-fun m!1362415 () Bool)

(assert (=> b!1186212 m!1362415))

(declare-fun m!1362417 () Bool)

(assert (=> b!1186213 m!1362417))

(assert (=> b!1186072 d!339425))

(declare-fun d!339431 () Bool)

(assert (=> d!339431 (subseq!330 (drop!554 l!6534 i!1621) l!6534)))

(declare-fun lt!408173 () Unit!18255)

(declare-fun choose!7670 (List!11921 Int) Unit!18255)

(assert (=> d!339431 (= lt!408173 (choose!7670 l!6534 i!1621))))

(assert (=> d!339431 (= (lemmaDropSubseq!93 l!6534 i!1621) lt!408173)))

(declare-fun bs!287615 () Bool)

(assert (= bs!287615 d!339431))

(assert (=> bs!287615 m!1362263))

(assert (=> bs!287615 m!1362263))

(declare-fun m!1362419 () Bool)

(assert (=> bs!287615 m!1362419))

(declare-fun m!1362421 () Bool)

(assert (=> bs!287615 m!1362421))

(assert (=> b!1186071 d!339431))

(declare-fun b!1186223 () Bool)

(declare-fun e!762086 () Bool)

(declare-fun e!762084 () Bool)

(assert (=> b!1186223 (= e!762086 e!762084)))

(declare-fun res!536108 () Bool)

(assert (=> b!1186223 (=> res!536108 e!762084)))

(declare-fun e!762085 () Bool)

(assert (=> b!1186223 (= res!536108 e!762085)))

(declare-fun res!536107 () Bool)

(assert (=> b!1186223 (=> (not res!536107) (not e!762085))))

(assert (=> b!1186223 (= res!536107 (= (h!17298 lt!408112) (h!17298 l!6534)))))

(declare-fun b!1186225 () Bool)

(assert (=> b!1186225 (= e!762084 (subseq!330 lt!408112 (t!111901 l!6534)))))

(declare-fun d!339433 () Bool)

(declare-fun res!536109 () Bool)

(declare-fun e!762087 () Bool)

(assert (=> d!339433 (=> res!536109 e!762087)))

(assert (=> d!339433 (= res!536109 (is-Nil!11897 lt!408112))))

(assert (=> d!339433 (= (subseq!330 lt!408112 l!6534) e!762087)))

(declare-fun b!1186224 () Bool)

(assert (=> b!1186224 (= e!762085 (subseq!330 (t!111901 lt!408112) (t!111901 l!6534)))))

(declare-fun b!1186222 () Bool)

(assert (=> b!1186222 (= e!762087 e!762086)))

(declare-fun res!536106 () Bool)

(assert (=> b!1186222 (=> (not res!536106) (not e!762086))))

(assert (=> b!1186222 (= res!536106 (is-Cons!11897 l!6534))))

(assert (= (and d!339433 (not res!536109)) b!1186222))

(assert (= (and b!1186222 res!536106) b!1186223))

(assert (= (and b!1186223 res!536107) b!1186224))

(assert (= (and b!1186223 (not res!536108)) b!1186225))

(declare-fun m!1362423 () Bool)

(assert (=> b!1186225 m!1362423))

(declare-fun m!1362425 () Bool)

(assert (=> b!1186224 m!1362425))

(assert (=> b!1186071 d!339433))

(declare-fun b!1186244 () Bool)

(declare-fun e!762101 () List!11921)

(assert (=> b!1186244 (= e!762101 l!6534)))

(declare-fun b!1186245 () Bool)

(declare-fun e!762098 () Int)

(declare-fun call!82625 () Int)

(assert (=> b!1186245 (= e!762098 call!82625)))

(declare-fun d!339435 () Bool)

(declare-fun e!762099 () Bool)

(assert (=> d!339435 e!762099))

(declare-fun res!536112 () Bool)

(assert (=> d!339435 (=> (not res!536112) (not e!762099))))

(declare-fun lt!408176 () List!11921)

(declare-fun content!1643 (List!11921) (Set Token!3822))

(assert (=> d!339435 (= res!536112 (set.subset (content!1643 lt!408176) (content!1643 l!6534)))))

(declare-fun e!762100 () List!11921)

(assert (=> d!339435 (= lt!408176 e!762100)))

(declare-fun c!197175 () Bool)

(assert (=> d!339435 (= c!197175 (is-Nil!11897 l!6534))))

(assert (=> d!339435 (= (drop!554 l!6534 i!1621) lt!408176)))

(declare-fun b!1186246 () Bool)

(assert (=> b!1186246 (= e!762100 e!762101)))

(declare-fun c!197174 () Bool)

(assert (=> b!1186246 (= c!197174 (<= i!1621 0))))

(declare-fun b!1186247 () Bool)

(assert (=> b!1186247 (= e!762100 Nil!11897)))

(declare-fun b!1186248 () Bool)

(declare-fun e!762102 () Int)

(assert (=> b!1186248 (= e!762098 e!762102)))

(declare-fun c!197173 () Bool)

(assert (=> b!1186248 (= c!197173 (>= i!1621 call!82625))))

(declare-fun b!1186249 () Bool)

(declare-fun size!9381 (List!11921) Int)

(assert (=> b!1186249 (= e!762099 (= (size!9381 lt!408176) e!762098))))

(declare-fun c!197172 () Bool)

(assert (=> b!1186249 (= c!197172 (<= i!1621 0))))

(declare-fun b!1186250 () Bool)

(assert (=> b!1186250 (= e!762102 0)))

(declare-fun b!1186251 () Bool)

(assert (=> b!1186251 (= e!762101 (drop!554 (t!111901 l!6534) (- i!1621 1)))))

(declare-fun b!1186252 () Bool)

(assert (=> b!1186252 (= e!762102 (- call!82625 i!1621))))

(declare-fun bm!82620 () Bool)

(assert (=> bm!82620 (= call!82625 (size!9381 l!6534))))

(assert (= (and d!339435 c!197175) b!1186247))

(assert (= (and d!339435 (not c!197175)) b!1186246))

(assert (= (and b!1186246 c!197174) b!1186244))

(assert (= (and b!1186246 (not c!197174)) b!1186251))

(assert (= (and d!339435 res!536112) b!1186249))

(assert (= (and b!1186249 c!197172) b!1186245))

(assert (= (and b!1186249 (not c!197172)) b!1186248))

(assert (= (and b!1186248 c!197173) b!1186250))

(assert (= (and b!1186248 (not c!197173)) b!1186252))

(assert (= (or b!1186245 b!1186248 b!1186252) bm!82620))

(declare-fun m!1362427 () Bool)

(assert (=> d!339435 m!1362427))

(declare-fun m!1362429 () Bool)

(assert (=> d!339435 m!1362429))

(declare-fun m!1362431 () Bool)

(assert (=> b!1186249 m!1362431))

(declare-fun m!1362433 () Bool)

(assert (=> b!1186251 m!1362433))

(declare-fun m!1362435 () Bool)

(assert (=> bm!82620 m!1362435))

(assert (=> b!1186071 d!339435))

(declare-fun d!339437 () Bool)

(declare-fun res!536117 () Bool)

(declare-fun e!762107 () Bool)

(assert (=> d!339437 (=> res!536117 e!762107)))

(assert (=> d!339437 (= res!536117 (is-Nil!11897 l!6534))))

(assert (=> d!339437 (= (forall!3151 l!6534 lambda!48896) e!762107)))

(declare-fun b!1186257 () Bool)

(declare-fun e!762108 () Bool)

(assert (=> b!1186257 (= e!762107 e!762108)))

(declare-fun res!536118 () Bool)

(assert (=> b!1186257 (=> (not res!536118) (not e!762108))))

(declare-fun dynLambda!5310 (Int Token!3822) Bool)

(assert (=> b!1186257 (= res!536118 (dynLambda!5310 lambda!48896 (h!17298 l!6534)))))

(declare-fun b!1186258 () Bool)

(assert (=> b!1186258 (= e!762108 (forall!3151 (t!111901 l!6534) lambda!48896))))

(assert (= (and d!339437 (not res!536117)) b!1186257))

(assert (= (and b!1186257 res!536118) b!1186258))

(declare-fun b_lambda!35609 () Bool)

(assert (=> (not b_lambda!35609) (not b!1186257)))

(declare-fun m!1362437 () Bool)

(assert (=> b!1186257 m!1362437))

(declare-fun m!1362439 () Bool)

(assert (=> b!1186258 m!1362439))

(assert (=> b!1186071 d!339437))

(declare-fun bs!287616 () Bool)

(declare-fun d!339439 () Bool)

(assert (= bs!287616 (and d!339439 b!1186071)))

(declare-fun lambda!48904 () Int)

(assert (=> bs!287616 (= (= thiss!27592 Lexer!1773) (= lambda!48904 lambda!48896))))

(declare-fun bs!287617 () Bool)

(assert (= bs!287617 (and d!339439 d!339409)))

(assert (=> bs!287617 (= lambda!48904 lambda!48902)))

(declare-fun bs!287618 () Bool)

(assert (= bs!287618 (and d!339439 d!339413)))

(assert (=> bs!287618 (= lambda!48904 lambda!48903)))

(declare-fun b!1186263 () Bool)

(declare-fun e!762113 () Bool)

(assert (=> b!1186263 (= e!762113 true)))

(declare-fun b!1186262 () Bool)

(declare-fun e!762112 () Bool)

(assert (=> b!1186262 (= e!762112 e!762113)))

(declare-fun b!1186261 () Bool)

(declare-fun e!762111 () Bool)

(assert (=> b!1186261 (= e!762111 e!762112)))

(assert (=> d!339439 e!762111))

(assert (= b!1186262 b!1186263))

(assert (= b!1186261 b!1186262))

(assert (= (and d!339439 (is-Cons!11896 rules!4386)) b!1186261))

(assert (=> b!1186263 (< (dynLambda!5303 order!7391 (toValue!3197 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48904))))

(assert (=> b!1186263 (< (dynLambda!5305 order!7395 (toChars!3056 (transformation!2080 (h!17297 rules!4386)))) (dynLambda!5304 order!7393 lambda!48904))))

(assert (=> d!339439 true))

(declare-fun lt!408177 () Bool)

(assert (=> d!339439 (= lt!408177 (forall!3151 lt!408112 lambda!48904))))

(declare-fun e!762110 () Bool)

(assert (=> d!339439 (= lt!408177 e!762110)))

(declare-fun res!536119 () Bool)

(assert (=> d!339439 (=> res!536119 e!762110)))

(assert (=> d!339439 (= res!536119 (not (is-Cons!11897 lt!408112)))))

(assert (=> d!339439 (not (isEmpty!7159 rules!4386))))

(assert (=> d!339439 (= (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 lt!408112) lt!408177)))

(declare-fun b!1186259 () Bool)

(declare-fun e!762109 () Bool)

(assert (=> b!1186259 (= e!762110 e!762109)))

(declare-fun res!536120 () Bool)

(assert (=> b!1186259 (=> (not res!536120) (not e!762109))))

(assert (=> b!1186259 (= res!536120 (rulesProduceIndividualToken!802 thiss!27592 rules!4386 (h!17298 lt!408112)))))

(declare-fun b!1186260 () Bool)

(assert (=> b!1186260 (= e!762109 (rulesProduceEachTokenIndividuallyList!641 thiss!27592 rules!4386 (t!111901 lt!408112)))))

(assert (= (and d!339439 (not res!536119)) b!1186259))

(assert (= (and b!1186259 res!536120) b!1186260))

(declare-fun m!1362441 () Bool)

(assert (=> d!339439 m!1362441))

(assert (=> d!339439 m!1362281))

(assert (=> b!1186259 m!1362275))

(assert (=> b!1186260 m!1362261))

(assert (=> b!1186071 d!339439))

(declare-fun b!1186274 () Bool)

(declare-fun b_free!28517 () Bool)

(declare-fun b_next!29221 () Bool)

(assert (=> b!1186274 (= b_free!28517 (not b_next!29221))))

(declare-fun tp!338254 () Bool)

(declare-fun b_and!81649 () Bool)

(assert (=> b!1186274 (= tp!338254 b_and!81649)))

(declare-fun b_free!28519 () Bool)

(declare-fun b_next!29223 () Bool)

(assert (=> b!1186274 (= b_free!28519 (not b_next!29223))))

(declare-fun tb!66337 () Bool)

(declare-fun t!111916 () Bool)

(assert (=> (and b!1186274 (= (toChars!3056 (transformation!2080 (h!17297 (t!111900 rules!4386)))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534))))) t!111916) tb!66337))

(declare-fun result!79666 () Bool)

(assert (= result!79666 result!79658))

(assert (=> b!1186163 t!111916))

(declare-fun b_and!81651 () Bool)

(declare-fun tp!338257 () Bool)

(assert (=> b!1186274 (= tp!338257 (and (=> t!111916 result!79666) b_and!81651))))

(declare-fun e!762122 () Bool)

(assert (=> b!1186274 (= e!762122 (and tp!338254 tp!338257))))

(declare-fun e!762124 () Bool)

(declare-fun b!1186273 () Bool)

(declare-fun tp!338256 () Bool)

(assert (=> b!1186273 (= e!762124 (and tp!338256 (inv!15723 (tag!2342 (h!17297 (t!111900 rules!4386)))) (inv!15726 (transformation!2080 (h!17297 (t!111900 rules!4386)))) e!762122))))

(declare-fun b!1186272 () Bool)

(declare-fun e!762125 () Bool)

(declare-fun tp!338255 () Bool)

(assert (=> b!1186272 (= e!762125 (and e!762124 tp!338255))))

(assert (=> b!1186064 (= tp!338209 e!762125)))

(assert (= b!1186273 b!1186274))

(assert (= b!1186272 b!1186273))

(assert (= (and b!1186064 (is-Cons!11896 (t!111900 rules!4386))) b!1186272))

(declare-fun m!1362443 () Bool)

(assert (=> b!1186273 m!1362443))

(declare-fun m!1362445 () Bool)

(assert (=> b!1186273 m!1362445))

(declare-fun b!1186279 () Bool)

(declare-fun e!762128 () Bool)

(declare-fun tp_is_empty!5829 () Bool)

(declare-fun tp!338260 () Bool)

(assert (=> b!1186279 (= e!762128 (and tp_is_empty!5829 tp!338260))))

(assert (=> b!1186063 (= tp!338207 e!762128)))

(assert (= (and b!1186063 (is-Cons!11894 (originalCharacters!2634 (h!17298 l!6534)))) b!1186279))

(declare-fun b!1186291 () Bool)

(declare-fun e!762131 () Bool)

(declare-fun tp!338274 () Bool)

(declare-fun tp!338275 () Bool)

(assert (=> b!1186291 (= e!762131 (and tp!338274 tp!338275))))

(declare-fun b!1186292 () Bool)

(declare-fun tp!338272 () Bool)

(assert (=> b!1186292 (= e!762131 tp!338272)))

(declare-fun b!1186293 () Bool)

(declare-fun tp!338273 () Bool)

(declare-fun tp!338271 () Bool)

(assert (=> b!1186293 (= e!762131 (and tp!338273 tp!338271))))

(declare-fun b!1186290 () Bool)

(assert (=> b!1186290 (= e!762131 tp_is_empty!5829)))

(assert (=> b!1186068 (= tp!338215 e!762131)))

(assert (= (and b!1186068 (is-ElementMatch!3350 (regex!2080 (rule!3501 (h!17298 l!6534))))) b!1186290))

(assert (= (and b!1186068 (is-Concat!5497 (regex!2080 (rule!3501 (h!17298 l!6534))))) b!1186291))

(assert (= (and b!1186068 (is-Star!3350 (regex!2080 (rule!3501 (h!17298 l!6534))))) b!1186292))

(assert (= (and b!1186068 (is-Union!3350 (regex!2080 (rule!3501 (h!17298 l!6534))))) b!1186293))

(declare-fun b!1186307 () Bool)

(declare-fun b_free!28521 () Bool)

(declare-fun b_next!29225 () Bool)

(assert (=> b!1186307 (= b_free!28521 (not b_next!29225))))

(declare-fun tp!338288 () Bool)

(declare-fun b_and!81653 () Bool)

(assert (=> b!1186307 (= tp!338288 b_and!81653)))

(declare-fun b_free!28523 () Bool)

(declare-fun b_next!29227 () Bool)

(assert (=> b!1186307 (= b_free!28523 (not b_next!29227))))

(declare-fun t!111918 () Bool)

(declare-fun tb!66339 () Bool)

(assert (=> (and b!1186307 (= (toChars!3056 (transformation!2080 (rule!3501 (h!17298 (t!111901 l!6534))))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534))))) t!111918) tb!66339))

(declare-fun result!79674 () Bool)

(assert (= result!79674 result!79658))

(assert (=> b!1186163 t!111918))

(declare-fun tp!338286 () Bool)

(declare-fun b_and!81655 () Bool)

(assert (=> b!1186307 (= tp!338286 (and (=> t!111918 result!79674) b_and!81655))))

(declare-fun e!762149 () Bool)

(declare-fun tp!338287 () Bool)

(declare-fun e!762146 () Bool)

(declare-fun b!1186304 () Bool)

(assert (=> b!1186304 (= e!762146 (and (inv!15727 (h!17298 (t!111901 l!6534))) e!762149 tp!338287))))

(declare-fun e!762145 () Bool)

(declare-fun b!1186305 () Bool)

(declare-fun tp!338289 () Bool)

(assert (=> b!1186305 (= e!762149 (and (inv!21 (value!67338 (h!17298 (t!111901 l!6534)))) e!762145 tp!338289))))

(declare-fun b!1186306 () Bool)

(declare-fun e!762148 () Bool)

(declare-fun tp!338290 () Bool)

(assert (=> b!1186306 (= e!762145 (and tp!338290 (inv!15723 (tag!2342 (rule!3501 (h!17298 (t!111901 l!6534))))) (inv!15726 (transformation!2080 (rule!3501 (h!17298 (t!111901 l!6534))))) e!762148))))

(assert (=> b!1186307 (= e!762148 (and tp!338288 tp!338286))))

(assert (=> b!1186073 (= tp!338211 e!762146)))

(assert (= b!1186306 b!1186307))

(assert (= b!1186305 b!1186306))

(assert (= b!1186304 b!1186305))

(assert (= (and b!1186073 (is-Cons!11897 (t!111901 l!6534))) b!1186304))

(declare-fun m!1362447 () Bool)

(assert (=> b!1186304 m!1362447))

(declare-fun m!1362449 () Bool)

(assert (=> b!1186305 m!1362449))

(declare-fun m!1362451 () Bool)

(assert (=> b!1186306 m!1362451))

(declare-fun m!1362453 () Bool)

(assert (=> b!1186306 m!1362453))

(declare-fun b!1186309 () Bool)

(declare-fun e!762150 () Bool)

(declare-fun tp!338294 () Bool)

(declare-fun tp!338295 () Bool)

(assert (=> b!1186309 (= e!762150 (and tp!338294 tp!338295))))

(declare-fun b!1186310 () Bool)

(declare-fun tp!338292 () Bool)

(assert (=> b!1186310 (= e!762150 tp!338292)))

(declare-fun b!1186311 () Bool)

(declare-fun tp!338293 () Bool)

(declare-fun tp!338291 () Bool)

(assert (=> b!1186311 (= e!762150 (and tp!338293 tp!338291))))

(declare-fun b!1186308 () Bool)

(assert (=> b!1186308 (= e!762150 tp_is_empty!5829)))

(assert (=> b!1186067 (= tp!338210 e!762150)))

(assert (= (and b!1186067 (is-ElementMatch!3350 (regex!2080 (h!17297 rules!4386)))) b!1186308))

(assert (= (and b!1186067 (is-Concat!5497 (regex!2080 (h!17297 rules!4386)))) b!1186309))

(assert (= (and b!1186067 (is-Star!3350 (regex!2080 (h!17297 rules!4386)))) b!1186310))

(assert (= (and b!1186067 (is-Union!3350 (regex!2080 (h!17297 rules!4386)))) b!1186311))

(declare-fun b!1186314 () Bool)

(declare-fun e!762153 () Bool)

(assert (=> b!1186314 (= e!762153 true)))

(declare-fun b!1186313 () Bool)

(declare-fun e!762152 () Bool)

(assert (=> b!1186313 (= e!762152 e!762153)))

(declare-fun b!1186312 () Bool)

(declare-fun e!762151 () Bool)

(assert (=> b!1186312 (= e!762151 e!762152)))

(assert (=> b!1186085 e!762151))

(assert (= b!1186313 b!1186314))

(assert (= b!1186312 b!1186313))

(assert (= (and b!1186085 (is-Cons!11896 (t!111900 rules!4386))) b!1186312))

(assert (=> b!1186314 (< (dynLambda!5303 order!7391 (toValue!3197 (transformation!2080 (h!17297 (t!111900 rules!4386))))) (dynLambda!5304 order!7393 lambda!48896))))

(assert (=> b!1186314 (< (dynLambda!5305 order!7395 (toChars!3056 (transformation!2080 (h!17297 (t!111900 rules!4386))))) (dynLambda!5304 order!7393 lambda!48896))))

(declare-fun b_lambda!35611 () Bool)

(assert (= b_lambda!35609 (or b!1186071 b_lambda!35611)))

(declare-fun bs!287619 () Bool)

(declare-fun d!339441 () Bool)

(assert (= bs!287619 (and d!339441 b!1186071)))

(assert (=> bs!287619 (= (dynLambda!5310 lambda!48896 (h!17298 l!6534)) (rulesProduceIndividualToken!802 Lexer!1773 rules!4386 (h!17298 l!6534)))))

(declare-fun m!1362455 () Bool)

(assert (=> bs!287619 m!1362455))

(assert (=> b!1186257 d!339441))

(declare-fun b_lambda!35613 () Bool)

(assert (= b_lambda!35607 (or (and b!1186074 b_free!28503) (and b!1186070 b_free!28507 (= (toChars!3056 (transformation!2080 (h!17297 rules!4386))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))))) (and b!1186274 b_free!28519 (= (toChars!3056 (transformation!2080 (h!17297 (t!111900 rules!4386)))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))))) (and b!1186307 b_free!28523 (= (toChars!3056 (transformation!2080 (rule!3501 (h!17298 (t!111901 l!6534))))) (toChars!3056 (transformation!2080 (rule!3501 (h!17298 l!6534)))))) b_lambda!35613)))

(push 1)

(assert (not b!1186251))

(assert (not tb!66333))

(assert (not b!1186293))

(assert (not b!1186259))

(assert (not b!1186258))

(assert (not b_lambda!35611))

(assert (not b!1186176))

(assert (not b!1186261))

(assert (not b!1186305))

(assert (not b_next!29221))

(assert (not d!339405))

(assert (not b!1186177))

(assert (not b!1186156))

(assert (not b_next!29223))

(assert (not b!1186154))

(assert (not b!1186224))

(assert (not b_next!29227))

(assert (not b_next!29211))

(assert (not b!1186311))

(assert (not b!1186163))

(assert (not bs!287619))

(assert b_and!81645)

(assert (not d!339415))

(assert b_and!81651)

(assert b_and!81653)

(assert tp_is_empty!5829)

(assert b_and!81629)

(assert (not b!1186192))

(assert b_and!81633)

(assert b_and!81655)

(assert (not b!1186158))

(assert (not b!1186201))

(assert (not d!339403))

(assert (not b!1186306))

(assert (not b!1186184))

(assert (not b!1186249))

(assert (not b!1186197))

(assert (not b_next!29207))

(assert (not d!339419))

(assert (not b!1186279))

(assert (not d!339413))

(assert (not b_next!29209))

(assert (not b!1186260))

(assert (not d!339431))

(assert (not b!1186272))

(assert (not b!1186164))

(assert (not d!339409))

(assert (not b!1186200))

(assert (not d!339435))

(assert (not b!1186178))

(assert (not d!339423))

(assert (not b!1186225))

(assert (not b!1186309))

(assert (not b!1186183))

(assert (not b!1186273))

(assert (not b!1186213))

(assert (not d!339439))

(assert (not b!1186310))

(assert b_and!81647)

(assert (not b!1186190))

(assert (not b!1186292))

(assert (not b!1186291))

(assert b_and!81649)

(assert (not b!1186312))

(assert (not bm!82620))

(assert (not b_next!29205))

(assert (not b_next!29225))

(assert (not b!1186169))

(assert (not b!1186304))

(assert (not b!1186191))

(assert (not b_lambda!35613))

(assert (not b!1186185))

(assert (not b!1186212))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29221))

(assert (not b_next!29223))

(assert (not b_next!29207))

(assert (not b_next!29209))

(assert b_and!81647)

(assert b_and!81649)

(assert (not b_next!29227))

(assert (not b_next!29211))

(assert b_and!81645)

(assert b_and!81651)

(assert b_and!81653)

(assert b_and!81629)

(assert b_and!81633)

(assert b_and!81655)

(assert (not b_next!29205))

(assert (not b_next!29225))

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104262 () Bool)

(assert start!104262)

(declare-fun b!1178932 () Bool)

(declare-fun b_free!27917 () Bool)

(declare-fun b_next!28621 () Bool)

(assert (=> b!1178932 (= b_free!27917 (not b_next!28621))))

(declare-fun tp!335391 () Bool)

(declare-fun b_and!80837 () Bool)

(assert (=> b!1178932 (= tp!335391 b_and!80837)))

(declare-fun b_free!27919 () Bool)

(declare-fun b_next!28623 () Bool)

(assert (=> b!1178932 (= b_free!27919 (not b_next!28623))))

(declare-fun tp!335389 () Bool)

(declare-fun b_and!80839 () Bool)

(assert (=> b!1178932 (= tp!335389 b_and!80839)))

(declare-fun b!1178930 () Bool)

(declare-fun b_free!27921 () Bool)

(declare-fun b_next!28625 () Bool)

(assert (=> b!1178930 (= b_free!27921 (not b_next!28625))))

(declare-fun tp!335388 () Bool)

(declare-fun b_and!80841 () Bool)

(assert (=> b!1178930 (= tp!335388 b_and!80841)))

(declare-fun b_free!27923 () Bool)

(declare-fun b_next!28627 () Bool)

(assert (=> b!1178930 (= b_free!27923 (not b_next!28627))))

(declare-fun tp!335390 () Bool)

(declare-fun b_and!80843 () Bool)

(assert (=> b!1178930 (= tp!335390 b_and!80843)))

(declare-fun b!1178923 () Bool)

(declare-fun res!532985 () Bool)

(declare-fun e!756428 () Bool)

(assert (=> b!1178923 (=> (not res!532985) (not e!756428))))

(declare-datatypes ((C!6920 0))(
  ( (C!6921 (val!3756 Int)) )
))
(declare-datatypes ((List!11706 0))(
  ( (Nil!11682) (Cons!11682 (h!17083 C!6920) (t!111214 List!11706)) )
))
(declare-datatypes ((IArray!7669 0))(
  ( (IArray!7670 (innerList!3892 List!11706)) )
))
(declare-datatypes ((Conc!3832 0))(
  ( (Node!3832 (left!10205 Conc!3832) (right!10535 Conc!3832) (csize!7894 Int) (cheight!4043 Int)) (Leaf!5878 (xs!6537 IArray!7669) (csize!7895 Int)) (Empty!3832) )
))
(declare-datatypes ((List!11707 0))(
  ( (Nil!11683) (Cons!11683 (h!17084 (_ BitVec 16)) (t!111215 List!11707)) )
))
(declare-datatypes ((BalanceConc!7686 0))(
  ( (BalanceConc!7687 (c!196603 Conc!3832)) )
))
(declare-datatypes ((TokenValue!2097 0))(
  ( (FloatLiteralValue!4194 (text!15124 List!11707)) (TokenValueExt!2096 (__x!7905 Int)) (Broken!10485 (value!65914 List!11707)) (Object!2120) (End!2097) (Def!2097) (Underscore!2097) (Match!2097) (Else!2097) (Error!2097) (Case!2097) (If!2097) (Extends!2097) (Abstract!2097) (Class!2097) (Val!2097) (DelimiterValue!4194 (del!2157 List!11707)) (KeywordValue!2103 (value!65915 List!11707)) (CommentValue!4194 (value!65916 List!11707)) (WhitespaceValue!4194 (value!65917 List!11707)) (IndentationValue!2097 (value!65918 List!11707)) (String!14152) (Int32!2097) (Broken!10486 (value!65919 List!11707)) (Boolean!2098) (Unit!18021) (OperatorValue!2100 (op!2157 List!11707)) (IdentifierValue!4194 (value!65920 List!11707)) (IdentifierValue!4195 (value!65921 List!11707)) (WhitespaceValue!4195 (value!65922 List!11707)) (True!4194) (False!4194) (Broken!10487 (value!65923 List!11707)) (Broken!10488 (value!65924 List!11707)) (True!4195) (RightBrace!2097) (RightBracket!2097) (Colon!2097) (Null!2097) (Comma!2097) (LeftBracket!2097) (False!4195) (LeftBrace!2097) (ImaginaryLiteralValue!2097 (text!15125 List!11707)) (StringLiteralValue!6291 (value!65925 List!11707)) (EOFValue!2097 (value!65926 List!11707)) (IdentValue!2097 (value!65927 List!11707)) (DelimiterValue!4195 (value!65928 List!11707)) (DedentValue!2097 (value!65929 List!11707)) (NewLineValue!2097 (value!65930 List!11707)) (IntegerValue!6291 (value!65931 (_ BitVec 32)) (text!15126 List!11707)) (IntegerValue!6292 (value!65932 Int) (text!15127 List!11707)) (Times!2097) (Or!2097) (Equal!2097) (Minus!2097) (Broken!10489 (value!65933 List!11707)) (And!2097) (Div!2097) (LessEqual!2097) (Mod!2097) (Concat!5398) (Not!2097) (Plus!2097) (SpaceValue!2097 (value!65934 List!11707)) (IntegerValue!6293 (value!65935 Int) (text!15128 List!11707)) (StringLiteralValue!6292 (text!15129 List!11707)) (FloatLiteralValue!4195 (text!15130 List!11707)) (BytesLiteralValue!2097 (value!65936 List!11707)) (CommentValue!4195 (value!65937 List!11707)) (StringLiteralValue!6293 (value!65938 List!11707)) (ErrorTokenValue!2097 (msg!2158 List!11707)) )
))
(declare-datatypes ((Regex!3301 0))(
  ( (ElementMatch!3301 (c!196604 C!6920)) (Concat!5399 (regOne!7114 Regex!3301) (regTwo!7114 Regex!3301)) (EmptyExpr!3301) (Star!3301 (reg!3630 Regex!3301)) (EmptyLang!3301) (Union!3301 (regOne!7115 Regex!3301) (regTwo!7115 Regex!3301)) )
))
(declare-datatypes ((String!14153 0))(
  ( (String!14154 (value!65939 String)) )
))
(declare-datatypes ((TokenValueInjection!3894 0))(
  ( (TokenValueInjection!3895 (toValue!3132 Int) (toChars!2991 Int)) )
))
(declare-datatypes ((Rule!3862 0))(
  ( (Rule!3863 (regex!2031 Regex!3301) (tag!2293 String!14153) (isSeparator!2031 Bool) (transformation!2031 TokenValueInjection!3894)) )
))
(declare-datatypes ((List!11708 0))(
  ( (Nil!11684) (Cons!11684 (h!17085 Rule!3862) (t!111216 List!11708)) )
))
(declare-fun rules!4386 () List!11708)

(declare-datatypes ((Token!3724 0))(
  ( (Token!3725 (value!65940 TokenValue!2097) (rule!3452 Rule!3862) (size!9259 Int) (originalCharacters!2585 List!11706)) )
))
(declare-datatypes ((List!11709 0))(
  ( (Nil!11685) (Cons!11685 (h!17086 Token!3724) (t!111217 List!11709)) )
))
(declare-fun l!6534 () List!11709)

(declare-datatypes ((LexerInterface!1726 0))(
  ( (LexerInterfaceExt!1723 (__x!7906 Int)) (Lexer!1724) )
))
(declare-fun thiss!27592 () LexerInterface!1726)

(declare-fun rulesProduceEachTokenIndividuallyList!592 (LexerInterface!1726 List!11708 List!11709) Bool)

(assert (=> b!1178923 (= res!532985 (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1178924 () Bool)

(declare-fun tp!335392 () Bool)

(declare-fun e!756426 () Bool)

(declare-fun e!756429 () Bool)

(declare-fun inv!15498 (Token!3724) Bool)

(assert (=> b!1178924 (= e!756426 (and (inv!15498 (h!17086 l!6534)) e!756429 tp!335392))))

(declare-fun b!1178925 () Bool)

(declare-fun res!532983 () Bool)

(assert (=> b!1178925 (=> (not res!532983) (not e!756428))))

(declare-fun rulesInvariant!1600 (LexerInterface!1726 List!11708) Bool)

(assert (=> b!1178925 (= res!532983 (rulesInvariant!1600 thiss!27592 rules!4386))))

(declare-fun e!756425 () Bool)

(declare-fun e!756431 () Bool)

(declare-fun b!1178926 () Bool)

(declare-fun tp!335386 () Bool)

(declare-fun inv!15495 (String!14153) Bool)

(declare-fun inv!15499 (TokenValueInjection!3894) Bool)

(assert (=> b!1178926 (= e!756425 (and tp!335386 (inv!15495 (tag!2293 (h!17085 rules!4386))) (inv!15499 (transformation!2031 (h!17085 rules!4386))) e!756431))))

(declare-fun res!532982 () Bool)

(assert (=> start!104262 (=> (not res!532982) (not e!756428))))

(get-info :version)

(assert (=> start!104262 (= res!532982 ((_ is Lexer!1724) thiss!27592))))

(assert (=> start!104262 e!756428))

(assert (=> start!104262 true))

(declare-fun e!756427 () Bool)

(assert (=> start!104262 e!756427))

(assert (=> start!104262 e!756426))

(declare-fun b!1178927 () Bool)

(declare-fun res!532984 () Bool)

(assert (=> b!1178927 (=> (not res!532984) (not e!756428))))

(declare-fun isEmpty!7068 (List!11708) Bool)

(assert (=> b!1178927 (= res!532984 (not (isEmpty!7068 rules!4386)))))

(declare-fun b!1178928 () Bool)

(declare-fun tp!335385 () Bool)

(assert (=> b!1178928 (= e!756427 (and e!756425 tp!335385))))

(declare-fun e!756430 () Bool)

(declare-fun b!1178929 () Bool)

(declare-fun tp!335387 () Bool)

(declare-fun e!756435 () Bool)

(assert (=> b!1178929 (= e!756430 (and tp!335387 (inv!15495 (tag!2293 (rule!3452 (h!17086 l!6534)))) (inv!15499 (transformation!2031 (rule!3452 (h!17086 l!6534)))) e!756435))))

(assert (=> b!1178930 (= e!756431 (and tp!335388 tp!335390))))

(declare-fun tp!335384 () Bool)

(declare-fun b!1178931 () Bool)

(declare-fun inv!21 (TokenValue!2097) Bool)

(assert (=> b!1178931 (= e!756429 (and (inv!21 (value!65940 (h!17086 l!6534))) e!756430 tp!335384))))

(assert (=> b!1178932 (= e!756435 (and tp!335391 tp!335389))))

(declare-fun b!1178933 () Bool)

(declare-datatypes ((IArray!7671 0))(
  ( (IArray!7672 (innerList!3893 List!11709)) )
))
(declare-datatypes ((Conc!3833 0))(
  ( (Node!3833 (left!10206 Conc!3833) (right!10536 Conc!3833) (csize!7896 Int) (cheight!4044 Int)) (Leaf!5879 (xs!6538 IArray!7671) (csize!7897 Int)) (Empty!3833) )
))
(declare-datatypes ((BalanceConc!7688 0))(
  ( (BalanceConc!7689 (c!196605 Conc!3833)) )
))
(declare-fun rulesProduceEachTokenIndividually!764 (LexerInterface!1726 List!11708 BalanceConc!7688) Bool)

(declare-fun seqFromList!1530 (List!11709) BalanceConc!7688)

(assert (=> b!1178933 (= e!756428 (not (rulesProduceEachTokenIndividually!764 thiss!27592 rules!4386 (seqFromList!1530 l!6534))))))

(assert (= (and start!104262 res!532982) b!1178927))

(assert (= (and b!1178927 res!532984) b!1178925))

(assert (= (and b!1178925 res!532983) b!1178923))

(assert (= (and b!1178923 res!532985) b!1178933))

(assert (= b!1178926 b!1178930))

(assert (= b!1178928 b!1178926))

(assert (= (and start!104262 ((_ is Cons!11684) rules!4386)) b!1178928))

(assert (= b!1178929 b!1178932))

(assert (= b!1178931 b!1178929))

(assert (= b!1178924 b!1178931))

(assert (= (and start!104262 ((_ is Cons!11685) l!6534)) b!1178924))

(declare-fun m!1355499 () Bool)

(assert (=> b!1178931 m!1355499))

(declare-fun m!1355501 () Bool)

(assert (=> b!1178929 m!1355501))

(declare-fun m!1355503 () Bool)

(assert (=> b!1178929 m!1355503))

(declare-fun m!1355505 () Bool)

(assert (=> b!1178925 m!1355505))

(declare-fun m!1355507 () Bool)

(assert (=> b!1178933 m!1355507))

(assert (=> b!1178933 m!1355507))

(declare-fun m!1355509 () Bool)

(assert (=> b!1178933 m!1355509))

(declare-fun m!1355511 () Bool)

(assert (=> b!1178923 m!1355511))

(declare-fun m!1355513 () Bool)

(assert (=> b!1178926 m!1355513))

(declare-fun m!1355515 () Bool)

(assert (=> b!1178926 m!1355515))

(declare-fun m!1355517 () Bool)

(assert (=> b!1178924 m!1355517))

(declare-fun m!1355519 () Bool)

(assert (=> b!1178927 m!1355519))

(check-sat b_and!80843 (not b_next!28621) (not b_next!28625) (not b!1178924) (not b!1178923) b_and!80837 (not b!1178927) (not b!1178928) (not b!1178931) (not b!1178933) (not b!1178925) (not b_next!28627) (not b!1178929) (not b_next!28623) (not b!1178926) b_and!80839 b_and!80841)
(check-sat (not b_next!28623) b_and!80843 (not b_next!28621) (not b_next!28625) b_and!80837 (not b_next!28627) b_and!80839 b_and!80841)
(get-model)

(declare-fun d!337566 () Bool)

(assert (=> d!337566 (= (inv!15495 (tag!2293 (rule!3452 (h!17086 l!6534)))) (= (mod (str.len (value!65939 (tag!2293 (rule!3452 (h!17086 l!6534))))) 2) 0))))

(assert (=> b!1178929 d!337566))

(declare-fun d!337568 () Bool)

(declare-fun res!532995 () Bool)

(declare-fun e!756451 () Bool)

(assert (=> d!337568 (=> (not res!532995) (not e!756451))))

(declare-fun semiInverseModEq!735 (Int Int) Bool)

(assert (=> d!337568 (= res!532995 (semiInverseModEq!735 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))))))

(assert (=> d!337568 (= (inv!15499 (transformation!2031 (rule!3452 (h!17086 l!6534)))) e!756451)))

(declare-fun b!1178955 () Bool)

(declare-fun equivClasses!702 (Int Int) Bool)

(assert (=> b!1178955 (= e!756451 (equivClasses!702 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))))))

(assert (= (and d!337568 res!532995) b!1178955))

(declare-fun m!1355535 () Bool)

(assert (=> d!337568 m!1355535))

(declare-fun m!1355537 () Bool)

(assert (=> b!1178955 m!1355537))

(assert (=> b!1178929 d!337568))

(declare-fun b!1179059 () Bool)

(declare-fun e!756533 () Bool)

(assert (=> b!1179059 (= e!756533 true)))

(declare-fun b!1179058 () Bool)

(declare-fun e!756532 () Bool)

(assert (=> b!1179058 (= e!756532 e!756533)))

(declare-fun b!1179057 () Bool)

(declare-fun e!756531 () Bool)

(assert (=> b!1179057 (= e!756531 e!756532)))

(declare-fun d!337578 () Bool)

(assert (=> d!337578 e!756531))

(assert (= b!1179058 b!1179059))

(assert (= b!1179057 b!1179058))

(assert (= (and d!337578 ((_ is Cons!11684) rules!4386)) b!1179057))

(declare-fun order!7187 () Int)

(declare-fun order!7185 () Int)

(declare-fun lambda!48556 () Int)

(declare-fun dynLambda!5171 (Int Int) Int)

(declare-fun dynLambda!5172 (Int Int) Int)

(assert (=> b!1179059 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48556))))

(declare-fun order!7189 () Int)

(declare-fun dynLambda!5173 (Int Int) Int)

(assert (=> b!1179059 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48556))))

(assert (=> d!337578 true))

(declare-fun lt!406297 () Bool)

(declare-fun forall!3099 (List!11709 Int) Bool)

(assert (=> d!337578 (= lt!406297 (forall!3099 l!6534 lambda!48556))))

(declare-fun e!756523 () Bool)

(assert (=> d!337578 (= lt!406297 e!756523)))

(declare-fun res!533018 () Bool)

(assert (=> d!337578 (=> res!533018 e!756523)))

(assert (=> d!337578 (= res!533018 (not ((_ is Cons!11685) l!6534)))))

(assert (=> d!337578 (not (isEmpty!7068 rules!4386))))

(assert (=> d!337578 (= (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 l!6534) lt!406297)))

(declare-fun b!1179047 () Bool)

(declare-fun e!756524 () Bool)

(assert (=> b!1179047 (= e!756523 e!756524)))

(declare-fun res!533019 () Bool)

(assert (=> b!1179047 (=> (not res!533019) (not e!756524))))

(declare-fun rulesProduceIndividualToken!761 (LexerInterface!1726 List!11708 Token!3724) Bool)

(assert (=> b!1179047 (= res!533019 (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 l!6534)))))

(declare-fun b!1179048 () Bool)

(assert (=> b!1179048 (= e!756524 (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (t!111217 l!6534)))))

(assert (= (and d!337578 (not res!533018)) b!1179047))

(assert (= (and b!1179047 res!533019) b!1179048))

(declare-fun m!1355583 () Bool)

(assert (=> d!337578 m!1355583))

(assert (=> d!337578 m!1355519))

(declare-fun m!1355585 () Bool)

(assert (=> b!1179047 m!1355585))

(declare-fun m!1355587 () Bool)

(assert (=> b!1179048 m!1355587))

(assert (=> b!1178923 d!337578))

(declare-fun bs!286792 () Bool)

(declare-fun d!337588 () Bool)

(assert (= bs!286792 (and d!337588 d!337578)))

(declare-fun lambda!48561 () Int)

(assert (=> bs!286792 (= lambda!48561 lambda!48556)))

(declare-fun b!1179067 () Bool)

(declare-fun e!756539 () Bool)

(assert (=> b!1179067 (= e!756539 true)))

(declare-fun b!1179066 () Bool)

(declare-fun e!756538 () Bool)

(assert (=> b!1179066 (= e!756538 e!756539)))

(declare-fun b!1179065 () Bool)

(declare-fun e!756537 () Bool)

(assert (=> b!1179065 (= e!756537 e!756538)))

(assert (=> d!337588 e!756537))

(assert (= b!1179066 b!1179067))

(assert (= b!1179065 b!1179066))

(assert (= (and d!337588 ((_ is Cons!11684) rules!4386)) b!1179065))

(assert (=> b!1179067 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48561))))

(assert (=> b!1179067 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48561))))

(assert (=> d!337588 true))

(declare-fun e!756536 () Bool)

(assert (=> d!337588 e!756536))

(declare-fun res!533022 () Bool)

(assert (=> d!337588 (=> (not res!533022) (not e!756536))))

(declare-fun lt!406300 () Bool)

(declare-fun list!4325 (BalanceConc!7688) List!11709)

(assert (=> d!337588 (= res!533022 (= lt!406300 (forall!3099 (list!4325 (seqFromList!1530 l!6534)) lambda!48561)))))

(declare-fun forall!3100 (BalanceConc!7688 Int) Bool)

(assert (=> d!337588 (= lt!406300 (forall!3100 (seqFromList!1530 l!6534) lambda!48561))))

(assert (=> d!337588 (not (isEmpty!7068 rules!4386))))

(assert (=> d!337588 (= (rulesProduceEachTokenIndividually!764 thiss!27592 rules!4386 (seqFromList!1530 l!6534)) lt!406300)))

(declare-fun b!1179064 () Bool)

(assert (=> b!1179064 (= e!756536 (= lt!406300 (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (list!4325 (seqFromList!1530 l!6534)))))))

(assert (= (and d!337588 res!533022) b!1179064))

(assert (=> d!337588 m!1355507))

(declare-fun m!1355589 () Bool)

(assert (=> d!337588 m!1355589))

(assert (=> d!337588 m!1355589))

(declare-fun m!1355591 () Bool)

(assert (=> d!337588 m!1355591))

(assert (=> d!337588 m!1355507))

(declare-fun m!1355593 () Bool)

(assert (=> d!337588 m!1355593))

(assert (=> d!337588 m!1355519))

(assert (=> b!1179064 m!1355507))

(assert (=> b!1179064 m!1355589))

(assert (=> b!1179064 m!1355589))

(declare-fun m!1355595 () Bool)

(assert (=> b!1179064 m!1355595))

(assert (=> b!1178933 d!337588))

(declare-fun d!337590 () Bool)

(declare-fun fromListB!677 (List!11709) BalanceConc!7688)

(assert (=> d!337590 (= (seqFromList!1530 l!6534) (fromListB!677 l!6534))))

(declare-fun bs!286793 () Bool)

(assert (= bs!286793 d!337590))

(declare-fun m!1355597 () Bool)

(assert (=> bs!286793 m!1355597))

(assert (=> b!1178933 d!337590))

(declare-fun d!337592 () Bool)

(assert (=> d!337592 (= (isEmpty!7068 rules!4386) ((_ is Nil!11684) rules!4386))))

(assert (=> b!1178927 d!337592))

(declare-fun d!337594 () Bool)

(assert (=> d!337594 (= (inv!15495 (tag!2293 (h!17085 rules!4386))) (= (mod (str.len (value!65939 (tag!2293 (h!17085 rules!4386)))) 2) 0))))

(assert (=> b!1178926 d!337594))

(declare-fun d!337596 () Bool)

(declare-fun res!533023 () Bool)

(declare-fun e!756540 () Bool)

(assert (=> d!337596 (=> (not res!533023) (not e!756540))))

(assert (=> d!337596 (= res!533023 (semiInverseModEq!735 (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (h!17085 rules!4386)))))))

(assert (=> d!337596 (= (inv!15499 (transformation!2031 (h!17085 rules!4386))) e!756540)))

(declare-fun b!1179068 () Bool)

(assert (=> b!1179068 (= e!756540 (equivClasses!702 (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (h!17085 rules!4386)))))))

(assert (= (and d!337596 res!533023) b!1179068))

(declare-fun m!1355599 () Bool)

(assert (=> d!337596 m!1355599))

(declare-fun m!1355601 () Bool)

(assert (=> b!1179068 m!1355601))

(assert (=> b!1178926 d!337596))

(declare-fun b!1179080 () Bool)

(declare-fun e!756549 () Bool)

(declare-fun e!756548 () Bool)

(assert (=> b!1179080 (= e!756549 e!756548)))

(declare-fun c!196617 () Bool)

(assert (=> b!1179080 (= c!196617 ((_ is IntegerValue!6292) (value!65940 (h!17086 l!6534))))))

(declare-fun b!1179081 () Bool)

(declare-fun e!756547 () Bool)

(declare-fun inv!15 (TokenValue!2097) Bool)

(assert (=> b!1179081 (= e!756547 (inv!15 (value!65940 (h!17086 l!6534))))))

(declare-fun b!1179082 () Bool)

(declare-fun inv!17 (TokenValue!2097) Bool)

(assert (=> b!1179082 (= e!756548 (inv!17 (value!65940 (h!17086 l!6534))))))

(declare-fun b!1179083 () Bool)

(declare-fun inv!16 (TokenValue!2097) Bool)

(assert (=> b!1179083 (= e!756549 (inv!16 (value!65940 (h!17086 l!6534))))))

(declare-fun d!337598 () Bool)

(declare-fun c!196616 () Bool)

(assert (=> d!337598 (= c!196616 ((_ is IntegerValue!6291) (value!65940 (h!17086 l!6534))))))

(assert (=> d!337598 (= (inv!21 (value!65940 (h!17086 l!6534))) e!756549)))

(declare-fun b!1179079 () Bool)

(declare-fun res!533026 () Bool)

(assert (=> b!1179079 (=> res!533026 e!756547)))

(assert (=> b!1179079 (= res!533026 (not ((_ is IntegerValue!6293) (value!65940 (h!17086 l!6534)))))))

(assert (=> b!1179079 (= e!756548 e!756547)))

(assert (= (and d!337598 c!196616) b!1179083))

(assert (= (and d!337598 (not c!196616)) b!1179080))

(assert (= (and b!1179080 c!196617) b!1179082))

(assert (= (and b!1179080 (not c!196617)) b!1179079))

(assert (= (and b!1179079 (not res!533026)) b!1179081))

(declare-fun m!1355603 () Bool)

(assert (=> b!1179081 m!1355603))

(declare-fun m!1355605 () Bool)

(assert (=> b!1179082 m!1355605))

(declare-fun m!1355607 () Bool)

(assert (=> b!1179083 m!1355607))

(assert (=> b!1178931 d!337598))

(declare-fun d!337600 () Bool)

(declare-fun res!533029 () Bool)

(declare-fun e!756552 () Bool)

(assert (=> d!337600 (=> (not res!533029) (not e!756552))))

(declare-fun rulesValid!723 (LexerInterface!1726 List!11708) Bool)

(assert (=> d!337600 (= res!533029 (rulesValid!723 thiss!27592 rules!4386))))

(assert (=> d!337600 (= (rulesInvariant!1600 thiss!27592 rules!4386) e!756552)))

(declare-fun b!1179086 () Bool)

(declare-datatypes ((List!11711 0))(
  ( (Nil!11687) (Cons!11687 (h!17088 String!14153) (t!111247 List!11711)) )
))
(declare-fun noDuplicateTag!723 (LexerInterface!1726 List!11708 List!11711) Bool)

(assert (=> b!1179086 (= e!756552 (noDuplicateTag!723 thiss!27592 rules!4386 Nil!11687))))

(assert (= (and d!337600 res!533029) b!1179086))

(declare-fun m!1355609 () Bool)

(assert (=> d!337600 m!1355609))

(declare-fun m!1355611 () Bool)

(assert (=> b!1179086 m!1355611))

(assert (=> b!1178925 d!337600))

(declare-fun d!337602 () Bool)

(declare-fun res!533034 () Bool)

(declare-fun e!756555 () Bool)

(assert (=> d!337602 (=> (not res!533034) (not e!756555))))

(declare-fun isEmpty!7070 (List!11706) Bool)

(assert (=> d!337602 (= res!533034 (not (isEmpty!7070 (originalCharacters!2585 (h!17086 l!6534)))))))

(assert (=> d!337602 (= (inv!15498 (h!17086 l!6534)) e!756555)))

(declare-fun b!1179091 () Bool)

(declare-fun res!533035 () Bool)

(assert (=> b!1179091 (=> (not res!533035) (not e!756555))))

(declare-fun list!4326 (BalanceConc!7686) List!11706)

(declare-fun dynLambda!5174 (Int TokenValue!2097) BalanceConc!7686)

(assert (=> b!1179091 (= res!533035 (= (originalCharacters!2585 (h!17086 l!6534)) (list!4326 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(declare-fun b!1179092 () Bool)

(declare-fun size!9261 (List!11706) Int)

(assert (=> b!1179092 (= e!756555 (= (size!9259 (h!17086 l!6534)) (size!9261 (originalCharacters!2585 (h!17086 l!6534)))))))

(assert (= (and d!337602 res!533034) b!1179091))

(assert (= (and b!1179091 res!533035) b!1179092))

(declare-fun b_lambda!35199 () Bool)

(assert (=> (not b_lambda!35199) (not b!1179091)))

(declare-fun t!111240 () Bool)

(declare-fun tb!66037 () Bool)

(assert (=> (and b!1178932 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111240) tb!66037))

(declare-fun b!1179097 () Bool)

(declare-fun e!756558 () Bool)

(declare-fun tp!335448 () Bool)

(declare-fun inv!15502 (Conc!3832) Bool)

(assert (=> b!1179097 (= e!756558 (and (inv!15502 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))) tp!335448))))

(declare-fun result!79196 () Bool)

(declare-fun inv!15503 (BalanceConc!7686) Bool)

(assert (=> tb!66037 (= result!79196 (and (inv!15503 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))) e!756558))))

(assert (= tb!66037 b!1179097))

(declare-fun m!1355613 () Bool)

(assert (=> b!1179097 m!1355613))

(declare-fun m!1355615 () Bool)

(assert (=> tb!66037 m!1355615))

(assert (=> b!1179091 t!111240))

(declare-fun b_and!80857 () Bool)

(assert (= b_and!80839 (and (=> t!111240 result!79196) b_and!80857)))

(declare-fun t!111242 () Bool)

(declare-fun tb!66039 () Bool)

(assert (=> (and b!1178930 (= (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111242) tb!66039))

(declare-fun result!79200 () Bool)

(assert (= result!79200 result!79196))

(assert (=> b!1179091 t!111242))

(declare-fun b_and!80859 () Bool)

(assert (= b_and!80843 (and (=> t!111242 result!79200) b_and!80859)))

(declare-fun m!1355617 () Bool)

(assert (=> d!337602 m!1355617))

(declare-fun m!1355619 () Bool)

(assert (=> b!1179091 m!1355619))

(assert (=> b!1179091 m!1355619))

(declare-fun m!1355621 () Bool)

(assert (=> b!1179091 m!1355621))

(declare-fun m!1355623 () Bool)

(assert (=> b!1179092 m!1355623))

(assert (=> b!1178924 d!337602))

(declare-fun b!1179111 () Bool)

(declare-fun e!756561 () Bool)

(declare-fun tp!335462 () Bool)

(declare-fun tp!335460 () Bool)

(assert (=> b!1179111 (= e!756561 (and tp!335462 tp!335460))))

(declare-fun b!1179109 () Bool)

(declare-fun tp!335459 () Bool)

(declare-fun tp!335461 () Bool)

(assert (=> b!1179109 (= e!756561 (and tp!335459 tp!335461))))

(declare-fun b!1179108 () Bool)

(declare-fun tp_is_empty!5799 () Bool)

(assert (=> b!1179108 (= e!756561 tp_is_empty!5799)))

(assert (=> b!1178929 (= tp!335387 e!756561)))

(declare-fun b!1179110 () Bool)

(declare-fun tp!335463 () Bool)

(assert (=> b!1179110 (= e!756561 tp!335463)))

(assert (= (and b!1178929 ((_ is ElementMatch!3301) (regex!2031 (rule!3452 (h!17086 l!6534))))) b!1179108))

(assert (= (and b!1178929 ((_ is Concat!5399) (regex!2031 (rule!3452 (h!17086 l!6534))))) b!1179109))

(assert (= (and b!1178929 ((_ is Star!3301) (regex!2031 (rule!3452 (h!17086 l!6534))))) b!1179110))

(assert (= (and b!1178929 ((_ is Union!3301) (regex!2031 (rule!3452 (h!17086 l!6534))))) b!1179111))

(declare-fun b!1179122 () Bool)

(declare-fun b_free!27933 () Bool)

(declare-fun b_next!28637 () Bool)

(assert (=> b!1179122 (= b_free!27933 (not b_next!28637))))

(declare-fun tp!335475 () Bool)

(declare-fun b_and!80861 () Bool)

(assert (=> b!1179122 (= tp!335475 b_and!80861)))

(declare-fun b_free!27935 () Bool)

(declare-fun b_next!28639 () Bool)

(assert (=> b!1179122 (= b_free!27935 (not b_next!28639))))

(declare-fun t!111244 () Bool)

(declare-fun tb!66041 () Bool)

(assert (=> (and b!1179122 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111244) tb!66041))

(declare-fun result!79206 () Bool)

(assert (= result!79206 result!79196))

(assert (=> b!1179091 t!111244))

(declare-fun b_and!80863 () Bool)

(declare-fun tp!335474 () Bool)

(assert (=> b!1179122 (= tp!335474 (and (=> t!111244 result!79206) b_and!80863))))

(declare-fun e!756573 () Bool)

(assert (=> b!1179122 (= e!756573 (and tp!335475 tp!335474))))

(declare-fun b!1179121 () Bool)

(declare-fun e!756572 () Bool)

(declare-fun tp!335472 () Bool)

(assert (=> b!1179121 (= e!756572 (and tp!335472 (inv!15495 (tag!2293 (h!17085 (t!111216 rules!4386)))) (inv!15499 (transformation!2031 (h!17085 (t!111216 rules!4386)))) e!756573))))

(declare-fun b!1179120 () Bool)

(declare-fun e!756570 () Bool)

(declare-fun tp!335473 () Bool)

(assert (=> b!1179120 (= e!756570 (and e!756572 tp!335473))))

(assert (=> b!1178928 (= tp!335385 e!756570)))

(assert (= b!1179121 b!1179122))

(assert (= b!1179120 b!1179121))

(assert (= (and b!1178928 ((_ is Cons!11684) (t!111216 rules!4386))) b!1179120))

(declare-fun m!1355625 () Bool)

(assert (=> b!1179121 m!1355625))

(declare-fun m!1355627 () Bool)

(assert (=> b!1179121 m!1355627))

(declare-fun b!1179126 () Bool)

(declare-fun e!756574 () Bool)

(declare-fun tp!335479 () Bool)

(declare-fun tp!335477 () Bool)

(assert (=> b!1179126 (= e!756574 (and tp!335479 tp!335477))))

(declare-fun b!1179124 () Bool)

(declare-fun tp!335476 () Bool)

(declare-fun tp!335478 () Bool)

(assert (=> b!1179124 (= e!756574 (and tp!335476 tp!335478))))

(declare-fun b!1179123 () Bool)

(assert (=> b!1179123 (= e!756574 tp_is_empty!5799)))

(assert (=> b!1178926 (= tp!335386 e!756574)))

(declare-fun b!1179125 () Bool)

(declare-fun tp!335480 () Bool)

(assert (=> b!1179125 (= e!756574 tp!335480)))

(assert (= (and b!1178926 ((_ is ElementMatch!3301) (regex!2031 (h!17085 rules!4386)))) b!1179123))

(assert (= (and b!1178926 ((_ is Concat!5399) (regex!2031 (h!17085 rules!4386)))) b!1179124))

(assert (= (and b!1178926 ((_ is Star!3301) (regex!2031 (h!17085 rules!4386)))) b!1179125))

(assert (= (and b!1178926 ((_ is Union!3301) (regex!2031 (h!17085 rules!4386)))) b!1179126))

(declare-fun b!1179131 () Bool)

(declare-fun e!756577 () Bool)

(declare-fun tp!335483 () Bool)

(assert (=> b!1179131 (= e!756577 (and tp_is_empty!5799 tp!335483))))

(assert (=> b!1178931 (= tp!335384 e!756577)))

(assert (= (and b!1178931 ((_ is Cons!11682) (originalCharacters!2585 (h!17086 l!6534)))) b!1179131))

(declare-fun b!1179145 () Bool)

(declare-fun b_free!27937 () Bool)

(declare-fun b_next!28641 () Bool)

(assert (=> b!1179145 (= b_free!27937 (not b_next!28641))))

(declare-fun tp!335495 () Bool)

(declare-fun b_and!80865 () Bool)

(assert (=> b!1179145 (= tp!335495 b_and!80865)))

(declare-fun b_free!27939 () Bool)

(declare-fun b_next!28643 () Bool)

(assert (=> b!1179145 (= b_free!27939 (not b_next!28643))))

(declare-fun t!111246 () Bool)

(declare-fun tb!66043 () Bool)

(assert (=> (and b!1179145 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111246) tb!66043))

(declare-fun result!79212 () Bool)

(assert (= result!79212 result!79196))

(assert (=> b!1179091 t!111246))

(declare-fun tp!335494 () Bool)

(declare-fun b_and!80867 () Bool)

(assert (=> b!1179145 (= tp!335494 (and (=> t!111246 result!79212) b_and!80867))))

(declare-fun e!756595 () Bool)

(declare-fun tp!335497 () Bool)

(declare-fun e!756590 () Bool)

(declare-fun b!1179142 () Bool)

(assert (=> b!1179142 (= e!756590 (and (inv!15498 (h!17086 (t!111217 l!6534))) e!756595 tp!335497))))

(declare-fun e!756592 () Bool)

(assert (=> b!1179145 (= e!756592 (and tp!335495 tp!335494))))

(declare-fun e!756593 () Bool)

(declare-fun tp!335496 () Bool)

(declare-fun b!1179144 () Bool)

(assert (=> b!1179144 (= e!756593 (and tp!335496 (inv!15495 (tag!2293 (rule!3452 (h!17086 (t!111217 l!6534))))) (inv!15499 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) e!756592))))

(declare-fun b!1179143 () Bool)

(declare-fun tp!335498 () Bool)

(assert (=> b!1179143 (= e!756595 (and (inv!21 (value!65940 (h!17086 (t!111217 l!6534)))) e!756593 tp!335498))))

(assert (=> b!1178924 (= tp!335392 e!756590)))

(assert (= b!1179144 b!1179145))

(assert (= b!1179143 b!1179144))

(assert (= b!1179142 b!1179143))

(assert (= (and b!1178924 ((_ is Cons!11685) (t!111217 l!6534))) b!1179142))

(declare-fun m!1355629 () Bool)

(assert (=> b!1179142 m!1355629))

(declare-fun m!1355631 () Bool)

(assert (=> b!1179144 m!1355631))

(declare-fun m!1355633 () Bool)

(assert (=> b!1179144 m!1355633))

(declare-fun m!1355635 () Bool)

(assert (=> b!1179143 m!1355635))

(declare-fun b_lambda!35201 () Bool)

(assert (= b_lambda!35199 (or (and b!1178932 b_free!27919) (and b!1178930 b_free!27923 (= (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))))) (and b!1179122 b_free!27935 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))))) (and b!1179145 b_free!27939 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))))) b_lambda!35201)))

(check-sat (not b!1179125) (not b!1179111) (not d!337596) b_and!80837 tp_is_empty!5799 (not b!1179131) (not b!1179068) (not d!337588) (not b_lambda!35201) (not b!1179048) (not b_next!28623) (not b!1179083) (not tb!66037) (not b_next!28621) (not b_next!28639) (not b!1179064) b_and!80861 (not d!337590) (not b!1179144) (not b!1179081) (not b!1179124) (not b!1179086) (not b_next!28625) (not d!337600) (not b!1179143) (not b!1179065) (not b!1179097) b_and!80867 (not b!1179110) (not b!1179082) (not b!1178955) (not b!1179120) (not b!1179057) b_and!80865 (not b!1179092) (not b!1179109) b_and!80859 b_and!80863 (not d!337568) (not b!1179047) b_and!80841 (not d!337602) (not d!337578) b_and!80857 (not b!1179121) (not b_next!28637) (not b_next!28643) (not b!1179091) (not b!1179126) (not b_next!28641) (not b_next!28627) (not b!1179142))
(check-sat (not b_next!28623) b_and!80861 (not b_next!28625) b_and!80867 b_and!80837 (not b_next!28641) (not b_next!28627) (not b_next!28621) (not b_next!28639) b_and!80865 b_and!80859 b_and!80863 b_and!80841 b_and!80857 (not b_next!28637) (not b_next!28643))
(get-model)

(declare-fun d!337616 () Bool)

(assert (=> d!337616 (= (inv!15495 (tag!2293 (h!17085 (t!111216 rules!4386)))) (= (mod (str.len (value!65939 (tag!2293 (h!17085 (t!111216 rules!4386))))) 2) 0))))

(assert (=> b!1179121 d!337616))

(declare-fun d!337618 () Bool)

(declare-fun res!533043 () Bool)

(declare-fun e!756601 () Bool)

(assert (=> d!337618 (=> (not res!533043) (not e!756601))))

(assert (=> d!337618 (= res!533043 (semiInverseModEq!735 (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toValue!3132 (transformation!2031 (h!17085 (t!111216 rules!4386))))))))

(assert (=> d!337618 (= (inv!15499 (transformation!2031 (h!17085 (t!111216 rules!4386)))) e!756601)))

(declare-fun b!1179157 () Bool)

(assert (=> b!1179157 (= e!756601 (equivClasses!702 (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toValue!3132 (transformation!2031 (h!17085 (t!111216 rules!4386))))))))

(assert (= (and d!337618 res!533043) b!1179157))

(declare-fun m!1355651 () Bool)

(assert (=> d!337618 m!1355651))

(declare-fun m!1355653 () Bool)

(assert (=> b!1179157 m!1355653))

(assert (=> b!1179121 d!337618))

(declare-fun d!337620 () Bool)

(declare-fun lt!406325 () Bool)

(declare-fun e!756689 () Bool)

(assert (=> d!337620 (= lt!406325 e!756689)))

(declare-fun res!533087 () Bool)

(assert (=> d!337620 (=> (not res!533087) (not e!756689))))

(declare-datatypes ((tuple2!12072 0))(
  ( (tuple2!12073 (_1!6883 BalanceConc!7688) (_2!6883 BalanceConc!7686)) )
))
(declare-fun lex!724 (LexerInterface!1726 List!11708 BalanceConc!7686) tuple2!12072)

(declare-fun print!661 (LexerInterface!1726 BalanceConc!7688) BalanceConc!7686)

(declare-fun singletonSeq!703 (Token!3724) BalanceConc!7688)

(assert (=> d!337620 (= res!533087 (= (list!4325 (_1!6883 (lex!724 thiss!27592 rules!4386 (print!661 thiss!27592 (singletonSeq!703 (h!17086 l!6534)))))) (list!4325 (singletonSeq!703 (h!17086 l!6534)))))))

(declare-fun e!756688 () Bool)

(assert (=> d!337620 (= lt!406325 e!756688)))

(declare-fun res!533086 () Bool)

(assert (=> d!337620 (=> (not res!533086) (not e!756688))))

(declare-fun lt!406326 () tuple2!12072)

(declare-fun size!9263 (BalanceConc!7688) Int)

(assert (=> d!337620 (= res!533086 (= (size!9263 (_1!6883 lt!406326)) 1))))

(assert (=> d!337620 (= lt!406326 (lex!724 thiss!27592 rules!4386 (print!661 thiss!27592 (singletonSeq!703 (h!17086 l!6534)))))))

(assert (=> d!337620 (not (isEmpty!7068 rules!4386))))

(assert (=> d!337620 (= (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 l!6534)) lt!406325)))

(declare-fun b!1179298 () Bool)

(declare-fun res!533085 () Bool)

(assert (=> b!1179298 (=> (not res!533085) (not e!756688))))

(declare-fun apply!2562 (BalanceConc!7688 Int) Token!3724)

(assert (=> b!1179298 (= res!533085 (= (apply!2562 (_1!6883 lt!406326) 0) (h!17086 l!6534)))))

(declare-fun b!1179299 () Bool)

(declare-fun isEmpty!7072 (BalanceConc!7686) Bool)

(assert (=> b!1179299 (= e!756688 (isEmpty!7072 (_2!6883 lt!406326)))))

(declare-fun b!1179300 () Bool)

(assert (=> b!1179300 (= e!756689 (isEmpty!7072 (_2!6883 (lex!724 thiss!27592 rules!4386 (print!661 thiss!27592 (singletonSeq!703 (h!17086 l!6534)))))))))

(assert (= (and d!337620 res!533086) b!1179298))

(assert (= (and b!1179298 res!533085) b!1179299))

(assert (= (and d!337620 res!533087) b!1179300))

(declare-fun m!1355765 () Bool)

(assert (=> d!337620 m!1355765))

(declare-fun m!1355767 () Bool)

(assert (=> d!337620 m!1355767))

(assert (=> d!337620 m!1355519))

(declare-fun m!1355769 () Bool)

(assert (=> d!337620 m!1355769))

(assert (=> d!337620 m!1355765))

(declare-fun m!1355771 () Bool)

(assert (=> d!337620 m!1355771))

(declare-fun m!1355773 () Bool)

(assert (=> d!337620 m!1355773))

(assert (=> d!337620 m!1355765))

(assert (=> d!337620 m!1355771))

(declare-fun m!1355775 () Bool)

(assert (=> d!337620 m!1355775))

(declare-fun m!1355777 () Bool)

(assert (=> b!1179298 m!1355777))

(declare-fun m!1355779 () Bool)

(assert (=> b!1179299 m!1355779))

(assert (=> b!1179300 m!1355765))

(assert (=> b!1179300 m!1355765))

(assert (=> b!1179300 m!1355771))

(assert (=> b!1179300 m!1355771))

(assert (=> b!1179300 m!1355775))

(declare-fun m!1355781 () Bool)

(assert (=> b!1179300 m!1355781))

(assert (=> b!1179047 d!337620))

(declare-fun d!337670 () Bool)

(declare-fun res!533092 () Bool)

(declare-fun e!756694 () Bool)

(assert (=> d!337670 (=> res!533092 e!756694)))

(assert (=> d!337670 (= res!533092 ((_ is Nil!11685) l!6534))))

(assert (=> d!337670 (= (forall!3099 l!6534 lambda!48556) e!756694)))

(declare-fun b!1179305 () Bool)

(declare-fun e!756695 () Bool)

(assert (=> b!1179305 (= e!756694 e!756695)))

(declare-fun res!533093 () Bool)

(assert (=> b!1179305 (=> (not res!533093) (not e!756695))))

(declare-fun dynLambda!5177 (Int Token!3724) Bool)

(assert (=> b!1179305 (= res!533093 (dynLambda!5177 lambda!48556 (h!17086 l!6534)))))

(declare-fun b!1179306 () Bool)

(assert (=> b!1179306 (= e!756695 (forall!3099 (t!111217 l!6534) lambda!48556))))

(assert (= (and d!337670 (not res!533092)) b!1179305))

(assert (= (and b!1179305 res!533093) b!1179306))

(declare-fun b_lambda!35215 () Bool)

(assert (=> (not b_lambda!35215) (not b!1179305)))

(declare-fun m!1355783 () Bool)

(assert (=> b!1179305 m!1355783))

(declare-fun m!1355785 () Bool)

(assert (=> b!1179306 m!1355785))

(assert (=> d!337578 d!337670))

(assert (=> d!337578 d!337592))

(declare-fun d!337672 () Bool)

(assert (=> d!337672 true))

(declare-fun lt!406329 () Bool)

(declare-fun rulesValidInductive!645 (LexerInterface!1726 List!11708) Bool)

(assert (=> d!337672 (= lt!406329 (rulesValidInductive!645 thiss!27592 rules!4386))))

(declare-fun lambda!48577 () Int)

(declare-fun forall!3102 (List!11708 Int) Bool)

(assert (=> d!337672 (= lt!406329 (forall!3102 rules!4386 lambda!48577))))

(assert (=> d!337672 (= (rulesValid!723 thiss!27592 rules!4386) lt!406329)))

(declare-fun bs!286815 () Bool)

(assert (= bs!286815 d!337672))

(declare-fun m!1355787 () Bool)

(assert (=> bs!286815 m!1355787))

(declare-fun m!1355789 () Bool)

(assert (=> bs!286815 m!1355789))

(assert (=> d!337600 d!337672))

(declare-fun d!337674 () Bool)

(assert (=> d!337674 (= (inv!15495 (tag!2293 (rule!3452 (h!17086 (t!111217 l!6534))))) (= (mod (str.len (value!65939 (tag!2293 (rule!3452 (h!17086 (t!111217 l!6534)))))) 2) 0))))

(assert (=> b!1179144 d!337674))

(declare-fun d!337676 () Bool)

(declare-fun res!533094 () Bool)

(declare-fun e!756696 () Bool)

(assert (=> d!337676 (=> (not res!533094) (not e!756696))))

(assert (=> d!337676 (= res!533094 (semiInverseModEq!735 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))))))

(assert (=> d!337676 (= (inv!15499 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) e!756696)))

(declare-fun b!1179309 () Bool)

(assert (=> b!1179309 (= e!756696 (equivClasses!702 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))))))

(assert (= (and d!337676 res!533094) b!1179309))

(declare-fun m!1355791 () Bool)

(assert (=> d!337676 m!1355791))

(declare-fun m!1355793 () Bool)

(assert (=> b!1179309 m!1355793))

(assert (=> b!1179144 d!337676))

(declare-fun d!337678 () Bool)

(declare-fun isBalanced!1094 (Conc!3832) Bool)

(assert (=> d!337678 (= (inv!15503 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))) (isBalanced!1094 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(declare-fun bs!286816 () Bool)

(assert (= bs!286816 d!337678))

(declare-fun m!1355795 () Bool)

(assert (=> bs!286816 m!1355795))

(assert (=> tb!66037 d!337678))

(declare-fun d!337680 () Bool)

(assert (=> d!337680 true))

(declare-fun lambda!48580 () Int)

(declare-fun order!7195 () Int)

(declare-fun dynLambda!5178 (Int Int) Int)

(assert (=> d!337680 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (dynLambda!5178 order!7195 lambda!48580))))

(assert (=> d!337680 true))

(assert (=> d!337680 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (dynLambda!5178 order!7195 lambda!48580))))

(declare-fun Forall!442 (Int) Bool)

(assert (=> d!337680 (= (semiInverseModEq!735 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (Forall!442 lambda!48580))))

(declare-fun bs!286817 () Bool)

(assert (= bs!286817 d!337680))

(declare-fun m!1355797 () Bool)

(assert (=> bs!286817 m!1355797))

(assert (=> d!337568 d!337680))

(declare-fun bs!286818 () Bool)

(declare-fun d!337682 () Bool)

(assert (= bs!286818 (and d!337682 d!337578)))

(declare-fun lambda!48581 () Int)

(assert (=> bs!286818 (= lambda!48581 lambda!48556)))

(declare-fun bs!286819 () Bool)

(assert (= bs!286819 (and d!337682 d!337588)))

(assert (=> bs!286819 (= lambda!48581 lambda!48561)))

(declare-fun b!1179318 () Bool)

(declare-fun e!756701 () Bool)

(assert (=> b!1179318 (= e!756701 true)))

(declare-fun b!1179317 () Bool)

(declare-fun e!756700 () Bool)

(assert (=> b!1179317 (= e!756700 e!756701)))

(declare-fun b!1179316 () Bool)

(declare-fun e!756699 () Bool)

(assert (=> b!1179316 (= e!756699 e!756700)))

(assert (=> d!337682 e!756699))

(assert (= b!1179317 b!1179318))

(assert (= b!1179316 b!1179317))

(assert (= (and d!337682 ((_ is Cons!11684) rules!4386)) b!1179316))

(assert (=> b!1179318 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48581))))

(assert (=> b!1179318 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48581))))

(assert (=> d!337682 true))

(declare-fun lt!406330 () Bool)

(assert (=> d!337682 (= lt!406330 (forall!3099 (t!111217 l!6534) lambda!48581))))

(declare-fun e!756697 () Bool)

(assert (=> d!337682 (= lt!406330 e!756697)))

(declare-fun res!533095 () Bool)

(assert (=> d!337682 (=> res!533095 e!756697)))

(assert (=> d!337682 (= res!533095 (not ((_ is Cons!11685) (t!111217 l!6534))))))

(assert (=> d!337682 (not (isEmpty!7068 rules!4386))))

(assert (=> d!337682 (= (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (t!111217 l!6534)) lt!406330)))

(declare-fun b!1179314 () Bool)

(declare-fun e!756698 () Bool)

(assert (=> b!1179314 (= e!756697 e!756698)))

(declare-fun res!533096 () Bool)

(assert (=> b!1179314 (=> (not res!533096) (not e!756698))))

(assert (=> b!1179314 (= res!533096 (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 (t!111217 l!6534))))))

(declare-fun b!1179315 () Bool)

(assert (=> b!1179315 (= e!756698 (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (t!111217 (t!111217 l!6534))))))

(assert (= (and d!337682 (not res!533095)) b!1179314))

(assert (= (and b!1179314 res!533096) b!1179315))

(declare-fun m!1355799 () Bool)

(assert (=> d!337682 m!1355799))

(assert (=> d!337682 m!1355519))

(declare-fun m!1355801 () Bool)

(assert (=> b!1179314 m!1355801))

(declare-fun m!1355803 () Bool)

(assert (=> b!1179315 m!1355803))

(assert (=> b!1179048 d!337682))

(declare-fun d!337684 () Bool)

(declare-fun e!756704 () Bool)

(assert (=> d!337684 e!756704))

(declare-fun res!533099 () Bool)

(assert (=> d!337684 (=> (not res!533099) (not e!756704))))

(declare-fun lt!406333 () BalanceConc!7688)

(assert (=> d!337684 (= res!533099 (= (list!4325 lt!406333) l!6534))))

(declare-fun fromList!318 (List!11709) Conc!3833)

(assert (=> d!337684 (= lt!406333 (BalanceConc!7689 (fromList!318 l!6534)))))

(assert (=> d!337684 (= (fromListB!677 l!6534) lt!406333)))

(declare-fun b!1179321 () Bool)

(declare-fun isBalanced!1095 (Conc!3833) Bool)

(assert (=> b!1179321 (= e!756704 (isBalanced!1095 (fromList!318 l!6534)))))

(assert (= (and d!337684 res!533099) b!1179321))

(declare-fun m!1355805 () Bool)

(assert (=> d!337684 m!1355805))

(declare-fun m!1355807 () Bool)

(assert (=> d!337684 m!1355807))

(assert (=> b!1179321 m!1355807))

(assert (=> b!1179321 m!1355807))

(declare-fun m!1355809 () Bool)

(assert (=> b!1179321 m!1355809))

(assert (=> d!337590 d!337684))

(declare-fun d!337686 () Bool)

(declare-fun c!196630 () Bool)

(assert (=> d!337686 (= c!196630 ((_ is Node!3832) (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(declare-fun e!756709 () Bool)

(assert (=> d!337686 (= (inv!15502 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))) e!756709)))

(declare-fun b!1179328 () Bool)

(declare-fun inv!15507 (Conc!3832) Bool)

(assert (=> b!1179328 (= e!756709 (inv!15507 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(declare-fun b!1179329 () Bool)

(declare-fun e!756710 () Bool)

(assert (=> b!1179329 (= e!756709 e!756710)))

(declare-fun res!533102 () Bool)

(assert (=> b!1179329 (= res!533102 (not ((_ is Leaf!5878) (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))))))

(assert (=> b!1179329 (=> res!533102 e!756710)))

(declare-fun b!1179330 () Bool)

(declare-fun inv!15508 (Conc!3832) Bool)

(assert (=> b!1179330 (= e!756710 (inv!15508 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(assert (= (and d!337686 c!196630) b!1179328))

(assert (= (and d!337686 (not c!196630)) b!1179329))

(assert (= (and b!1179329 (not res!533102)) b!1179330))

(declare-fun m!1355811 () Bool)

(assert (=> b!1179328 m!1355811))

(declare-fun m!1355813 () Bool)

(assert (=> b!1179330 m!1355813))

(assert (=> b!1179097 d!337686))

(declare-fun d!337688 () Bool)

(assert (=> d!337688 true))

(declare-fun lambda!48584 () Int)

(declare-fun order!7197 () Int)

(declare-fun dynLambda!5180 (Int Int) Int)

(assert (=> d!337688 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (dynLambda!5180 order!7197 lambda!48584))))

(declare-fun Forall2!352 (Int) Bool)

(assert (=> d!337688 (= (equivClasses!702 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (Forall2!352 lambda!48584))))

(declare-fun bs!286820 () Bool)

(assert (= bs!286820 d!337688))

(declare-fun m!1355815 () Bool)

(assert (=> bs!286820 m!1355815))

(assert (=> b!1178955 d!337688))

(declare-fun bs!286821 () Bool)

(declare-fun d!337690 () Bool)

(assert (= bs!286821 (and d!337690 d!337578)))

(declare-fun lambda!48585 () Int)

(assert (=> bs!286821 (= lambda!48585 lambda!48556)))

(declare-fun bs!286822 () Bool)

(assert (= bs!286822 (and d!337690 d!337588)))

(assert (=> bs!286822 (= lambda!48585 lambda!48561)))

(declare-fun bs!286823 () Bool)

(assert (= bs!286823 (and d!337690 d!337682)))

(assert (=> bs!286823 (= lambda!48585 lambda!48581)))

(declare-fun b!1179339 () Bool)

(declare-fun e!756717 () Bool)

(assert (=> b!1179339 (= e!756717 true)))

(declare-fun b!1179338 () Bool)

(declare-fun e!756716 () Bool)

(assert (=> b!1179338 (= e!756716 e!756717)))

(declare-fun b!1179337 () Bool)

(declare-fun e!756715 () Bool)

(assert (=> b!1179337 (= e!756715 e!756716)))

(assert (=> d!337690 e!756715))

(assert (= b!1179338 b!1179339))

(assert (= b!1179337 b!1179338))

(assert (= (and d!337690 ((_ is Cons!11684) rules!4386)) b!1179337))

(assert (=> b!1179339 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48585))))

(assert (=> b!1179339 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5172 order!7187 lambda!48585))))

(assert (=> d!337690 true))

(declare-fun lt!406334 () Bool)

(assert (=> d!337690 (= lt!406334 (forall!3099 (list!4325 (seqFromList!1530 l!6534)) lambda!48585))))

(declare-fun e!756713 () Bool)

(assert (=> d!337690 (= lt!406334 e!756713)))

(declare-fun res!533105 () Bool)

(assert (=> d!337690 (=> res!533105 e!756713)))

(assert (=> d!337690 (= res!533105 (not ((_ is Cons!11685) (list!4325 (seqFromList!1530 l!6534)))))))

(assert (=> d!337690 (not (isEmpty!7068 rules!4386))))

(assert (=> d!337690 (= (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (list!4325 (seqFromList!1530 l!6534))) lt!406334)))

(declare-fun b!1179335 () Bool)

(declare-fun e!756714 () Bool)

(assert (=> b!1179335 (= e!756713 e!756714)))

(declare-fun res!533106 () Bool)

(assert (=> b!1179335 (=> (not res!533106) (not e!756714))))

(assert (=> b!1179335 (= res!533106 (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 (list!4325 (seqFromList!1530 l!6534)))))))

(declare-fun b!1179336 () Bool)

(assert (=> b!1179336 (= e!756714 (rulesProduceEachTokenIndividuallyList!592 thiss!27592 rules!4386 (t!111217 (list!4325 (seqFromList!1530 l!6534)))))))

(assert (= (and d!337690 (not res!533105)) b!1179335))

(assert (= (and b!1179335 res!533106) b!1179336))

(assert (=> d!337690 m!1355589))

(declare-fun m!1355817 () Bool)

(assert (=> d!337690 m!1355817))

(assert (=> d!337690 m!1355519))

(declare-fun m!1355819 () Bool)

(assert (=> b!1179335 m!1355819))

(declare-fun m!1355821 () Bool)

(assert (=> b!1179336 m!1355821))

(assert (=> b!1179064 d!337690))

(declare-fun d!337692 () Bool)

(declare-fun list!4329 (Conc!3833) List!11709)

(assert (=> d!337692 (= (list!4325 (seqFromList!1530 l!6534)) (list!4329 (c!196605 (seqFromList!1530 l!6534))))))

(declare-fun bs!286824 () Bool)

(assert (= bs!286824 d!337692))

(declare-fun m!1355823 () Bool)

(assert (=> bs!286824 m!1355823))

(assert (=> b!1179064 d!337692))

(declare-fun b!1179341 () Bool)

(declare-fun e!756720 () Bool)

(declare-fun e!756719 () Bool)

(assert (=> b!1179341 (= e!756720 e!756719)))

(declare-fun c!196632 () Bool)

(assert (=> b!1179341 (= c!196632 ((_ is IntegerValue!6292) (value!65940 (h!17086 (t!111217 l!6534)))))))

(declare-fun b!1179342 () Bool)

(declare-fun e!756718 () Bool)

(assert (=> b!1179342 (= e!756718 (inv!15 (value!65940 (h!17086 (t!111217 l!6534)))))))

(declare-fun b!1179343 () Bool)

(assert (=> b!1179343 (= e!756719 (inv!17 (value!65940 (h!17086 (t!111217 l!6534)))))))

(declare-fun b!1179344 () Bool)

(assert (=> b!1179344 (= e!756720 (inv!16 (value!65940 (h!17086 (t!111217 l!6534)))))))

(declare-fun d!337694 () Bool)

(declare-fun c!196631 () Bool)

(assert (=> d!337694 (= c!196631 ((_ is IntegerValue!6291) (value!65940 (h!17086 (t!111217 l!6534)))))))

(assert (=> d!337694 (= (inv!21 (value!65940 (h!17086 (t!111217 l!6534)))) e!756720)))

(declare-fun b!1179340 () Bool)

(declare-fun res!533107 () Bool)

(assert (=> b!1179340 (=> res!533107 e!756718)))

(assert (=> b!1179340 (= res!533107 (not ((_ is IntegerValue!6293) (value!65940 (h!17086 (t!111217 l!6534))))))))

(assert (=> b!1179340 (= e!756719 e!756718)))

(assert (= (and d!337694 c!196631) b!1179344))

(assert (= (and d!337694 (not c!196631)) b!1179341))

(assert (= (and b!1179341 c!196632) b!1179343))

(assert (= (and b!1179341 (not c!196632)) b!1179340))

(assert (= (and b!1179340 (not res!533107)) b!1179342))

(declare-fun m!1355825 () Bool)

(assert (=> b!1179342 m!1355825))

(declare-fun m!1355827 () Bool)

(assert (=> b!1179343 m!1355827))

(declare-fun m!1355829 () Bool)

(assert (=> b!1179344 m!1355829))

(assert (=> b!1179143 d!337694))

(declare-fun d!337696 () Bool)

(declare-fun res!533108 () Bool)

(declare-fun e!756721 () Bool)

(assert (=> d!337696 (=> res!533108 e!756721)))

(assert (=> d!337696 (= res!533108 ((_ is Nil!11685) (list!4325 (seqFromList!1530 l!6534))))))

(assert (=> d!337696 (= (forall!3099 (list!4325 (seqFromList!1530 l!6534)) lambda!48561) e!756721)))

(declare-fun b!1179345 () Bool)

(declare-fun e!756722 () Bool)

(assert (=> b!1179345 (= e!756721 e!756722)))

(declare-fun res!533109 () Bool)

(assert (=> b!1179345 (=> (not res!533109) (not e!756722))))

(assert (=> b!1179345 (= res!533109 (dynLambda!5177 lambda!48561 (h!17086 (list!4325 (seqFromList!1530 l!6534)))))))

(declare-fun b!1179346 () Bool)

(assert (=> b!1179346 (= e!756722 (forall!3099 (t!111217 (list!4325 (seqFromList!1530 l!6534))) lambda!48561))))

(assert (= (and d!337696 (not res!533108)) b!1179345))

(assert (= (and b!1179345 res!533109) b!1179346))

(declare-fun b_lambda!35217 () Bool)

(assert (=> (not b_lambda!35217) (not b!1179345)))

(declare-fun m!1355831 () Bool)

(assert (=> b!1179345 m!1355831))

(declare-fun m!1355833 () Bool)

(assert (=> b!1179346 m!1355833))

(assert (=> d!337588 d!337696))

(assert (=> d!337588 d!337692))

(declare-fun d!337698 () Bool)

(declare-fun lt!406337 () Bool)

(assert (=> d!337698 (= lt!406337 (forall!3099 (list!4325 (seqFromList!1530 l!6534)) lambda!48561))))

(declare-fun forall!3104 (Conc!3833 Int) Bool)

(assert (=> d!337698 (= lt!406337 (forall!3104 (c!196605 (seqFromList!1530 l!6534)) lambda!48561))))

(assert (=> d!337698 (= (forall!3100 (seqFromList!1530 l!6534) lambda!48561) lt!406337)))

(declare-fun bs!286825 () Bool)

(assert (= bs!286825 d!337698))

(assert (=> bs!286825 m!1355507))

(assert (=> bs!286825 m!1355589))

(assert (=> bs!286825 m!1355589))

(assert (=> bs!286825 m!1355591))

(declare-fun m!1355835 () Bool)

(assert (=> bs!286825 m!1355835))

(assert (=> d!337588 d!337698))

(assert (=> d!337588 d!337592))

(declare-fun d!337700 () Bool)

(declare-fun res!533110 () Bool)

(declare-fun e!756723 () Bool)

(assert (=> d!337700 (=> (not res!533110) (not e!756723))))

(assert (=> d!337700 (= res!533110 (not (isEmpty!7070 (originalCharacters!2585 (h!17086 (t!111217 l!6534))))))))

(assert (=> d!337700 (= (inv!15498 (h!17086 (t!111217 l!6534))) e!756723)))

(declare-fun b!1179347 () Bool)

(declare-fun res!533111 () Bool)

(assert (=> b!1179347 (=> (not res!533111) (not e!756723))))

(assert (=> b!1179347 (= res!533111 (= (originalCharacters!2585 (h!17086 (t!111217 l!6534))) (list!4326 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (value!65940 (h!17086 (t!111217 l!6534)))))))))

(declare-fun b!1179348 () Bool)

(assert (=> b!1179348 (= e!756723 (= (size!9259 (h!17086 (t!111217 l!6534))) (size!9261 (originalCharacters!2585 (h!17086 (t!111217 l!6534))))))))

(assert (= (and d!337700 res!533110) b!1179347))

(assert (= (and b!1179347 res!533111) b!1179348))

(declare-fun b_lambda!35219 () Bool)

(assert (=> (not b_lambda!35219) (not b!1179347)))

(declare-fun t!111267 () Bool)

(declare-fun tb!66061 () Bool)

(assert (=> (and b!1178932 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111267) tb!66061))

(declare-fun b!1179349 () Bool)

(declare-fun e!756724 () Bool)

(declare-fun tp!335580 () Bool)

(assert (=> b!1179349 (= e!756724 (and (inv!15502 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (value!65940 (h!17086 (t!111217 l!6534)))))) tp!335580))))

(declare-fun result!79232 () Bool)

(assert (=> tb!66061 (= result!79232 (and (inv!15503 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (value!65940 (h!17086 (t!111217 l!6534))))) e!756724))))

(assert (= tb!66061 b!1179349))

(declare-fun m!1355837 () Bool)

(assert (=> b!1179349 m!1355837))

(declare-fun m!1355839 () Bool)

(assert (=> tb!66061 m!1355839))

(assert (=> b!1179347 t!111267))

(declare-fun b_and!80885 () Bool)

(assert (= b_and!80857 (and (=> t!111267 result!79232) b_and!80885)))

(declare-fun t!111269 () Bool)

(declare-fun tb!66063 () Bool)

(assert (=> (and b!1178930 (= (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111269) tb!66063))

(declare-fun result!79234 () Bool)

(assert (= result!79234 result!79232))

(assert (=> b!1179347 t!111269))

(declare-fun b_and!80887 () Bool)

(assert (= b_and!80859 (and (=> t!111269 result!79234) b_and!80887)))

(declare-fun tb!66065 () Bool)

(declare-fun t!111271 () Bool)

(assert (=> (and b!1179122 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111271) tb!66065))

(declare-fun result!79236 () Bool)

(assert (= result!79236 result!79232))

(assert (=> b!1179347 t!111271))

(declare-fun b_and!80889 () Bool)

(assert (= b_and!80863 (and (=> t!111271 result!79236) b_and!80889)))

(declare-fun t!111273 () Bool)

(declare-fun tb!66067 () Bool)

(assert (=> (and b!1179145 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111273) tb!66067))

(declare-fun result!79238 () Bool)

(assert (= result!79238 result!79232))

(assert (=> b!1179347 t!111273))

(declare-fun b_and!80891 () Bool)

(assert (= b_and!80867 (and (=> t!111273 result!79238) b_and!80891)))

(declare-fun m!1355841 () Bool)

(assert (=> d!337700 m!1355841))

(declare-fun m!1355843 () Bool)

(assert (=> b!1179347 m!1355843))

(assert (=> b!1179347 m!1355843))

(declare-fun m!1355845 () Bool)

(assert (=> b!1179347 m!1355845))

(declare-fun m!1355847 () Bool)

(assert (=> b!1179348 m!1355847))

(assert (=> b!1179142 d!337700))

(declare-fun d!337702 () Bool)

(assert (=> d!337702 (= (isEmpty!7070 (originalCharacters!2585 (h!17086 l!6534))) ((_ is Nil!11682) (originalCharacters!2585 (h!17086 l!6534))))))

(assert (=> d!337602 d!337702))

(declare-fun d!337704 () Bool)

(declare-fun res!533116 () Bool)

(declare-fun e!756729 () Bool)

(assert (=> d!337704 (=> res!533116 e!756729)))

(assert (=> d!337704 (= res!533116 ((_ is Nil!11684) rules!4386))))

(assert (=> d!337704 (= (noDuplicateTag!723 thiss!27592 rules!4386 Nil!11687) e!756729)))

(declare-fun b!1179354 () Bool)

(declare-fun e!756730 () Bool)

(assert (=> b!1179354 (= e!756729 e!756730)))

(declare-fun res!533117 () Bool)

(assert (=> b!1179354 (=> (not res!533117) (not e!756730))))

(declare-fun contains!2014 (List!11711 String!14153) Bool)

(assert (=> b!1179354 (= res!533117 (not (contains!2014 Nil!11687 (tag!2293 (h!17085 rules!4386)))))))

(declare-fun b!1179355 () Bool)

(assert (=> b!1179355 (= e!756730 (noDuplicateTag!723 thiss!27592 (t!111216 rules!4386) (Cons!11687 (tag!2293 (h!17085 rules!4386)) Nil!11687)))))

(assert (= (and d!337704 (not res!533116)) b!1179354))

(assert (= (and b!1179354 res!533117) b!1179355))

(declare-fun m!1355849 () Bool)

(assert (=> b!1179354 m!1355849))

(declare-fun m!1355851 () Bool)

(assert (=> b!1179355 m!1355851))

(assert (=> b!1179086 d!337704))

(declare-fun d!337706 () Bool)

(declare-fun charsToBigInt!1 (List!11707) Int)

(assert (=> d!337706 (= (inv!17 (value!65940 (h!17086 l!6534))) (= (charsToBigInt!1 (text!15127 (value!65940 (h!17086 l!6534)))) (value!65932 (value!65940 (h!17086 l!6534)))))))

(declare-fun bs!286826 () Bool)

(assert (= bs!286826 d!337706))

(declare-fun m!1355853 () Bool)

(assert (=> bs!286826 m!1355853))

(assert (=> b!1179082 d!337706))

(declare-fun d!337708 () Bool)

(declare-fun charsToBigInt!0 (List!11707 Int) Int)

(assert (=> d!337708 (= (inv!15 (value!65940 (h!17086 l!6534))) (= (charsToBigInt!0 (text!15128 (value!65940 (h!17086 l!6534))) 0) (value!65935 (value!65940 (h!17086 l!6534)))))))

(declare-fun bs!286827 () Bool)

(assert (= bs!286827 d!337708))

(declare-fun m!1355855 () Bool)

(assert (=> bs!286827 m!1355855))

(assert (=> b!1179081 d!337708))

(declare-fun bs!286828 () Bool)

(declare-fun d!337710 () Bool)

(assert (= bs!286828 (and d!337710 d!337680)))

(declare-fun lambda!48586 () Int)

(assert (=> bs!286828 (= (and (= (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (= (toValue!3132 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534)))))) (= lambda!48586 lambda!48580))))

(assert (=> d!337710 true))

(assert (=> d!337710 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5178 order!7195 lambda!48586))))

(assert (=> d!337710 true))

(assert (=> d!337710 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5178 order!7195 lambda!48586))))

(assert (=> d!337710 (= (semiInverseModEq!735 (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (Forall!442 lambda!48586))))

(declare-fun bs!286829 () Bool)

(assert (= bs!286829 d!337710))

(declare-fun m!1355857 () Bool)

(assert (=> bs!286829 m!1355857))

(assert (=> d!337596 d!337710))

(declare-fun d!337712 () Bool)

(declare-fun lt!406340 () Int)

(assert (=> d!337712 (>= lt!406340 0)))

(declare-fun e!756733 () Int)

(assert (=> d!337712 (= lt!406340 e!756733)))

(declare-fun c!196635 () Bool)

(assert (=> d!337712 (= c!196635 ((_ is Nil!11682) (originalCharacters!2585 (h!17086 l!6534))))))

(assert (=> d!337712 (= (size!9261 (originalCharacters!2585 (h!17086 l!6534))) lt!406340)))

(declare-fun b!1179360 () Bool)

(assert (=> b!1179360 (= e!756733 0)))

(declare-fun b!1179361 () Bool)

(assert (=> b!1179361 (= e!756733 (+ 1 (size!9261 (t!111214 (originalCharacters!2585 (h!17086 l!6534))))))))

(assert (= (and d!337712 c!196635) b!1179360))

(assert (= (and d!337712 (not c!196635)) b!1179361))

(declare-fun m!1355859 () Bool)

(assert (=> b!1179361 m!1355859))

(assert (=> b!1179092 d!337712))

(declare-fun d!337714 () Bool)

(declare-fun list!4330 (Conc!3832) List!11706)

(assert (=> d!337714 (= (list!4326 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))) (list!4330 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))))))

(declare-fun bs!286830 () Bool)

(assert (= bs!286830 d!337714))

(declare-fun m!1355861 () Bool)

(assert (=> bs!286830 m!1355861))

(assert (=> b!1179091 d!337714))

(declare-fun bs!286831 () Bool)

(declare-fun d!337716 () Bool)

(assert (= bs!286831 (and d!337716 d!337688)))

(declare-fun lambda!48587 () Int)

(assert (=> bs!286831 (= (= (toValue!3132 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (rule!3452 (h!17086 l!6534))))) (= lambda!48587 lambda!48584))))

(assert (=> d!337716 true))

(assert (=> d!337716 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (dynLambda!5180 order!7197 lambda!48587))))

(assert (=> d!337716 (= (equivClasses!702 (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toValue!3132 (transformation!2031 (h!17085 rules!4386)))) (Forall2!352 lambda!48587))))

(declare-fun bs!286832 () Bool)

(assert (= bs!286832 d!337716))

(declare-fun m!1355863 () Bool)

(assert (=> bs!286832 m!1355863))

(assert (=> b!1179068 d!337716))

(declare-fun d!337718 () Bool)

(declare-fun charsToInt!0 (List!11707) (_ BitVec 32))

(assert (=> d!337718 (= (inv!16 (value!65940 (h!17086 l!6534))) (= (charsToInt!0 (text!15126 (value!65940 (h!17086 l!6534)))) (value!65931 (value!65940 (h!17086 l!6534)))))))

(declare-fun bs!286833 () Bool)

(assert (= bs!286833 d!337718))

(declare-fun m!1355865 () Bool)

(assert (=> bs!286833 m!1355865))

(assert (=> b!1179083 d!337718))

(declare-fun b!1179364 () Bool)

(declare-fun b_free!27949 () Bool)

(declare-fun b_next!28653 () Bool)

(assert (=> b!1179364 (= b_free!27949 (not b_next!28653))))

(declare-fun tp!335584 () Bool)

(declare-fun b_and!80893 () Bool)

(assert (=> b!1179364 (= tp!335584 b_and!80893)))

(declare-fun b_free!27951 () Bool)

(declare-fun b_next!28655 () Bool)

(assert (=> b!1179364 (= b_free!27951 (not b_next!28655))))

(declare-fun tb!66069 () Bool)

(declare-fun t!111275 () Bool)

(assert (=> (and b!1179364 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 (t!111216 rules!4386))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111275) tb!66069))

(declare-fun result!79240 () Bool)

(assert (= result!79240 result!79196))

(assert (=> b!1179091 t!111275))

(declare-fun tb!66071 () Bool)

(declare-fun t!111277 () Bool)

(assert (=> (and b!1179364 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 (t!111216 rules!4386))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111277) tb!66071))

(declare-fun result!79242 () Bool)

(assert (= result!79242 result!79232))

(assert (=> b!1179347 t!111277))

(declare-fun b_and!80895 () Bool)

(declare-fun tp!335583 () Bool)

(assert (=> b!1179364 (= tp!335583 (and (=> t!111275 result!79240) (=> t!111277 result!79242) b_and!80895))))

(declare-fun e!756737 () Bool)

(assert (=> b!1179364 (= e!756737 (and tp!335584 tp!335583))))

(declare-fun e!756736 () Bool)

(declare-fun b!1179363 () Bool)

(declare-fun tp!335581 () Bool)

(assert (=> b!1179363 (= e!756736 (and tp!335581 (inv!15495 (tag!2293 (h!17085 (t!111216 (t!111216 rules!4386))))) (inv!15499 (transformation!2031 (h!17085 (t!111216 (t!111216 rules!4386))))) e!756737))))

(declare-fun b!1179362 () Bool)

(declare-fun e!756734 () Bool)

(declare-fun tp!335582 () Bool)

(assert (=> b!1179362 (= e!756734 (and e!756736 tp!335582))))

(assert (=> b!1179120 (= tp!335473 e!756734)))

(assert (= b!1179363 b!1179364))

(assert (= b!1179362 b!1179363))

(assert (= (and b!1179120 ((_ is Cons!11684) (t!111216 (t!111216 rules!4386)))) b!1179362))

(declare-fun m!1355867 () Bool)

(assert (=> b!1179363 m!1355867))

(declare-fun m!1355869 () Bool)

(assert (=> b!1179363 m!1355869))

(declare-fun b!1179368 () Bool)

(declare-fun e!756738 () Bool)

(declare-fun tp!335588 () Bool)

(declare-fun tp!335586 () Bool)

(assert (=> b!1179368 (= e!756738 (and tp!335588 tp!335586))))

(declare-fun b!1179366 () Bool)

(declare-fun tp!335585 () Bool)

(declare-fun tp!335587 () Bool)

(assert (=> b!1179366 (= e!756738 (and tp!335585 tp!335587))))

(declare-fun b!1179365 () Bool)

(assert (=> b!1179365 (= e!756738 tp_is_empty!5799)))

(assert (=> b!1179124 (= tp!335476 e!756738)))

(declare-fun b!1179367 () Bool)

(declare-fun tp!335589 () Bool)

(assert (=> b!1179367 (= e!756738 tp!335589)))

(assert (= (and b!1179124 ((_ is ElementMatch!3301) (regOne!7114 (regex!2031 (h!17085 rules!4386))))) b!1179365))

(assert (= (and b!1179124 ((_ is Concat!5399) (regOne!7114 (regex!2031 (h!17085 rules!4386))))) b!1179366))

(assert (= (and b!1179124 ((_ is Star!3301) (regOne!7114 (regex!2031 (h!17085 rules!4386))))) b!1179367))

(assert (= (and b!1179124 ((_ is Union!3301) (regOne!7114 (regex!2031 (h!17085 rules!4386))))) b!1179368))

(declare-fun b!1179372 () Bool)

(declare-fun e!756739 () Bool)

(declare-fun tp!335593 () Bool)

(declare-fun tp!335591 () Bool)

(assert (=> b!1179372 (= e!756739 (and tp!335593 tp!335591))))

(declare-fun b!1179370 () Bool)

(declare-fun tp!335590 () Bool)

(declare-fun tp!335592 () Bool)

(assert (=> b!1179370 (= e!756739 (and tp!335590 tp!335592))))

(declare-fun b!1179369 () Bool)

(assert (=> b!1179369 (= e!756739 tp_is_empty!5799)))

(assert (=> b!1179124 (= tp!335478 e!756739)))

(declare-fun b!1179371 () Bool)

(declare-fun tp!335594 () Bool)

(assert (=> b!1179371 (= e!756739 tp!335594)))

(assert (= (and b!1179124 ((_ is ElementMatch!3301) (regTwo!7114 (regex!2031 (h!17085 rules!4386))))) b!1179369))

(assert (= (and b!1179124 ((_ is Concat!5399) (regTwo!7114 (regex!2031 (h!17085 rules!4386))))) b!1179370))

(assert (= (and b!1179124 ((_ is Star!3301) (regTwo!7114 (regex!2031 (h!17085 rules!4386))))) b!1179371))

(assert (= (and b!1179124 ((_ is Union!3301) (regTwo!7114 (regex!2031 (h!17085 rules!4386))))) b!1179372))

(declare-fun tp!335601 () Bool)

(declare-fun b!1179381 () Bool)

(declare-fun tp!335602 () Bool)

(declare-fun e!756745 () Bool)

(assert (=> b!1179381 (= e!756745 (and (inv!15502 (left!10205 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))) tp!335601 (inv!15502 (right!10535 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))) tp!335602))))

(declare-fun b!1179383 () Bool)

(declare-fun e!756744 () Bool)

(declare-fun tp!335603 () Bool)

(assert (=> b!1179383 (= e!756744 tp!335603)))

(declare-fun b!1179382 () Bool)

(declare-fun inv!15509 (IArray!7669) Bool)

(assert (=> b!1179382 (= e!756745 (and (inv!15509 (xs!6537 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))) e!756744))))

(assert (=> b!1179097 (= tp!335448 (and (inv!15502 (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534))))) e!756745))))

(assert (= (and b!1179097 ((_ is Node!3832) (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))) b!1179381))

(assert (= b!1179382 b!1179383))

(assert (= (and b!1179097 ((_ is Leaf!5878) (c!196603 (dynLambda!5174 (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (value!65940 (h!17086 l!6534)))))) b!1179382))

(declare-fun m!1355871 () Bool)

(assert (=> b!1179381 m!1355871))

(declare-fun m!1355873 () Bool)

(assert (=> b!1179381 m!1355873))

(declare-fun m!1355875 () Bool)

(assert (=> b!1179382 m!1355875))

(assert (=> b!1179097 m!1355613))

(declare-fun b!1179387 () Bool)

(declare-fun e!756746 () Bool)

(declare-fun tp!335607 () Bool)

(declare-fun tp!335605 () Bool)

(assert (=> b!1179387 (= e!756746 (and tp!335607 tp!335605))))

(declare-fun b!1179385 () Bool)

(declare-fun tp!335604 () Bool)

(declare-fun tp!335606 () Bool)

(assert (=> b!1179385 (= e!756746 (and tp!335604 tp!335606))))

(declare-fun b!1179384 () Bool)

(assert (=> b!1179384 (= e!756746 tp_is_empty!5799)))

(assert (=> b!1179126 (= tp!335479 e!756746)))

(declare-fun b!1179386 () Bool)

(declare-fun tp!335608 () Bool)

(assert (=> b!1179386 (= e!756746 tp!335608)))

(assert (= (and b!1179126 ((_ is ElementMatch!3301) (regOne!7115 (regex!2031 (h!17085 rules!4386))))) b!1179384))

(assert (= (and b!1179126 ((_ is Concat!5399) (regOne!7115 (regex!2031 (h!17085 rules!4386))))) b!1179385))

(assert (= (and b!1179126 ((_ is Star!3301) (regOne!7115 (regex!2031 (h!17085 rules!4386))))) b!1179386))

(assert (= (and b!1179126 ((_ is Union!3301) (regOne!7115 (regex!2031 (h!17085 rules!4386))))) b!1179387))

(declare-fun b!1179391 () Bool)

(declare-fun e!756747 () Bool)

(declare-fun tp!335612 () Bool)

(declare-fun tp!335610 () Bool)

(assert (=> b!1179391 (= e!756747 (and tp!335612 tp!335610))))

(declare-fun b!1179389 () Bool)

(declare-fun tp!335609 () Bool)

(declare-fun tp!335611 () Bool)

(assert (=> b!1179389 (= e!756747 (and tp!335609 tp!335611))))

(declare-fun b!1179388 () Bool)

(assert (=> b!1179388 (= e!756747 tp_is_empty!5799)))

(assert (=> b!1179126 (= tp!335477 e!756747)))

(declare-fun b!1179390 () Bool)

(declare-fun tp!335613 () Bool)

(assert (=> b!1179390 (= e!756747 tp!335613)))

(assert (= (and b!1179126 ((_ is ElementMatch!3301) (regTwo!7115 (regex!2031 (h!17085 rules!4386))))) b!1179388))

(assert (= (and b!1179126 ((_ is Concat!5399) (regTwo!7115 (regex!2031 (h!17085 rules!4386))))) b!1179389))

(assert (= (and b!1179126 ((_ is Star!3301) (regTwo!7115 (regex!2031 (h!17085 rules!4386))))) b!1179390))

(assert (= (and b!1179126 ((_ is Union!3301) (regTwo!7115 (regex!2031 (h!17085 rules!4386))))) b!1179391))

(declare-fun b!1179392 () Bool)

(declare-fun e!756748 () Bool)

(declare-fun tp!335614 () Bool)

(assert (=> b!1179392 (= e!756748 (and tp_is_empty!5799 tp!335614))))

(assert (=> b!1179143 (= tp!335498 e!756748)))

(assert (= (and b!1179143 ((_ is Cons!11682) (originalCharacters!2585 (h!17086 (t!111217 l!6534))))) b!1179392))

(declare-fun b!1179396 () Bool)

(declare-fun e!756749 () Bool)

(declare-fun tp!335618 () Bool)

(declare-fun tp!335616 () Bool)

(assert (=> b!1179396 (= e!756749 (and tp!335618 tp!335616))))

(declare-fun b!1179394 () Bool)

(declare-fun tp!335615 () Bool)

(declare-fun tp!335617 () Bool)

(assert (=> b!1179394 (= e!756749 (and tp!335615 tp!335617))))

(declare-fun b!1179393 () Bool)

(assert (=> b!1179393 (= e!756749 tp_is_empty!5799)))

(assert (=> b!1179121 (= tp!335472 e!756749)))

(declare-fun b!1179395 () Bool)

(declare-fun tp!335619 () Bool)

(assert (=> b!1179395 (= e!756749 tp!335619)))

(assert (= (and b!1179121 ((_ is ElementMatch!3301) (regex!2031 (h!17085 (t!111216 rules!4386))))) b!1179393))

(assert (= (and b!1179121 ((_ is Concat!5399) (regex!2031 (h!17085 (t!111216 rules!4386))))) b!1179394))

(assert (= (and b!1179121 ((_ is Star!3301) (regex!2031 (h!17085 (t!111216 rules!4386))))) b!1179395))

(assert (= (and b!1179121 ((_ is Union!3301) (regex!2031 (h!17085 (t!111216 rules!4386))))) b!1179396))

(declare-fun b!1179400 () Bool)

(declare-fun e!756750 () Bool)

(declare-fun tp!335623 () Bool)

(declare-fun tp!335621 () Bool)

(assert (=> b!1179400 (= e!756750 (and tp!335623 tp!335621))))

(declare-fun b!1179398 () Bool)

(declare-fun tp!335620 () Bool)

(declare-fun tp!335622 () Bool)

(assert (=> b!1179398 (= e!756750 (and tp!335620 tp!335622))))

(declare-fun b!1179397 () Bool)

(assert (=> b!1179397 (= e!756750 tp_is_empty!5799)))

(assert (=> b!1179125 (= tp!335480 e!756750)))

(declare-fun b!1179399 () Bool)

(declare-fun tp!335624 () Bool)

(assert (=> b!1179399 (= e!756750 tp!335624)))

(assert (= (and b!1179125 ((_ is ElementMatch!3301) (reg!3630 (regex!2031 (h!17085 rules!4386))))) b!1179397))

(assert (= (and b!1179125 ((_ is Concat!5399) (reg!3630 (regex!2031 (h!17085 rules!4386))))) b!1179398))

(assert (= (and b!1179125 ((_ is Star!3301) (reg!3630 (regex!2031 (h!17085 rules!4386))))) b!1179399))

(assert (= (and b!1179125 ((_ is Union!3301) (reg!3630 (regex!2031 (h!17085 rules!4386))))) b!1179400))

(declare-fun b!1179404 () Bool)

(declare-fun b_free!27953 () Bool)

(declare-fun b_next!28657 () Bool)

(assert (=> b!1179404 (= b_free!27953 (not b_next!28657))))

(declare-fun tp!335626 () Bool)

(declare-fun b_and!80897 () Bool)

(assert (=> b!1179404 (= tp!335626 b_and!80897)))

(declare-fun b_free!27955 () Bool)

(declare-fun b_next!28659 () Bool)

(assert (=> b!1179404 (= b_free!27955 (not b_next!28659))))

(declare-fun t!111279 () Bool)

(declare-fun tb!66073 () Bool)

(assert (=> (and b!1179404 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 (t!111217 l!6534)))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534))))) t!111279) tb!66073))

(declare-fun result!79246 () Bool)

(assert (= result!79246 result!79196))

(assert (=> b!1179091 t!111279))

(declare-fun t!111281 () Bool)

(declare-fun tb!66075 () Bool)

(assert (=> (and b!1179404 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 (t!111217 l!6534)))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) t!111281) tb!66075))

(declare-fun result!79248 () Bool)

(assert (= result!79248 result!79232))

(assert (=> b!1179347 t!111281))

(declare-fun b_and!80899 () Bool)

(declare-fun tp!335625 () Bool)

(assert (=> b!1179404 (= tp!335625 (and (=> t!111279 result!79246) (=> t!111281 result!79248) b_and!80899))))

(declare-fun e!756751 () Bool)

(declare-fun e!756756 () Bool)

(declare-fun tp!335628 () Bool)

(declare-fun b!1179401 () Bool)

(assert (=> b!1179401 (= e!756751 (and (inv!15498 (h!17086 (t!111217 (t!111217 l!6534)))) e!756756 tp!335628))))

(declare-fun e!756753 () Bool)

(assert (=> b!1179404 (= e!756753 (and tp!335626 tp!335625))))

(declare-fun b!1179403 () Bool)

(declare-fun tp!335627 () Bool)

(declare-fun e!756754 () Bool)

(assert (=> b!1179403 (= e!756754 (and tp!335627 (inv!15495 (tag!2293 (rule!3452 (h!17086 (t!111217 (t!111217 l!6534)))))) (inv!15499 (transformation!2031 (rule!3452 (h!17086 (t!111217 (t!111217 l!6534)))))) e!756753))))

(declare-fun b!1179402 () Bool)

(declare-fun tp!335629 () Bool)

(assert (=> b!1179402 (= e!756756 (and (inv!21 (value!65940 (h!17086 (t!111217 (t!111217 l!6534))))) e!756754 tp!335629))))

(assert (=> b!1179142 (= tp!335497 e!756751)))

(assert (= b!1179403 b!1179404))

(assert (= b!1179402 b!1179403))

(assert (= b!1179401 b!1179402))

(assert (= (and b!1179142 ((_ is Cons!11685) (t!111217 (t!111217 l!6534)))) b!1179401))

(declare-fun m!1355877 () Bool)

(assert (=> b!1179401 m!1355877))

(declare-fun m!1355879 () Bool)

(assert (=> b!1179403 m!1355879))

(declare-fun m!1355881 () Bool)

(assert (=> b!1179403 m!1355881))

(declare-fun m!1355883 () Bool)

(assert (=> b!1179402 m!1355883))

(declare-fun b!1179407 () Bool)

(declare-fun e!756759 () Bool)

(assert (=> b!1179407 (= e!756759 true)))

(declare-fun b!1179406 () Bool)

(declare-fun e!756758 () Bool)

(assert (=> b!1179406 (= e!756758 e!756759)))

(declare-fun b!1179405 () Bool)

(declare-fun e!756757 () Bool)

(assert (=> b!1179405 (= e!756757 e!756758)))

(assert (=> b!1179057 e!756757))

(assert (= b!1179406 b!1179407))

(assert (= b!1179405 b!1179406))

(assert (= (and b!1179057 ((_ is Cons!11684) (t!111216 rules!4386))) b!1179405))

(assert (=> b!1179407 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 (t!111216 rules!4386))))) (dynLambda!5172 order!7187 lambda!48556))))

(assert (=> b!1179407 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386))))) (dynLambda!5172 order!7187 lambda!48556))))

(declare-fun b!1179411 () Bool)

(declare-fun e!756760 () Bool)

(declare-fun tp!335633 () Bool)

(declare-fun tp!335631 () Bool)

(assert (=> b!1179411 (= e!756760 (and tp!335633 tp!335631))))

(declare-fun b!1179409 () Bool)

(declare-fun tp!335630 () Bool)

(declare-fun tp!335632 () Bool)

(assert (=> b!1179409 (= e!756760 (and tp!335630 tp!335632))))

(declare-fun b!1179408 () Bool)

(assert (=> b!1179408 (= e!756760 tp_is_empty!5799)))

(assert (=> b!1179110 (= tp!335463 e!756760)))

(declare-fun b!1179410 () Bool)

(declare-fun tp!335634 () Bool)

(assert (=> b!1179410 (= e!756760 tp!335634)))

(assert (= (and b!1179110 ((_ is ElementMatch!3301) (reg!3630 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179408))

(assert (= (and b!1179110 ((_ is Concat!5399) (reg!3630 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179409))

(assert (= (and b!1179110 ((_ is Star!3301) (reg!3630 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179410))

(assert (= (and b!1179110 ((_ is Union!3301) (reg!3630 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179411))

(declare-fun b!1179415 () Bool)

(declare-fun e!756761 () Bool)

(declare-fun tp!335638 () Bool)

(declare-fun tp!335636 () Bool)

(assert (=> b!1179415 (= e!756761 (and tp!335638 tp!335636))))

(declare-fun b!1179413 () Bool)

(declare-fun tp!335635 () Bool)

(declare-fun tp!335637 () Bool)

(assert (=> b!1179413 (= e!756761 (and tp!335635 tp!335637))))

(declare-fun b!1179412 () Bool)

(assert (=> b!1179412 (= e!756761 tp_is_empty!5799)))

(assert (=> b!1179109 (= tp!335459 e!756761)))

(declare-fun b!1179414 () Bool)

(declare-fun tp!335639 () Bool)

(assert (=> b!1179414 (= e!756761 tp!335639)))

(assert (= (and b!1179109 ((_ is ElementMatch!3301) (regOne!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179412))

(assert (= (and b!1179109 ((_ is Concat!5399) (regOne!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179413))

(assert (= (and b!1179109 ((_ is Star!3301) (regOne!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179414))

(assert (= (and b!1179109 ((_ is Union!3301) (regOne!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179415))

(declare-fun b!1179419 () Bool)

(declare-fun e!756762 () Bool)

(declare-fun tp!335643 () Bool)

(declare-fun tp!335641 () Bool)

(assert (=> b!1179419 (= e!756762 (and tp!335643 tp!335641))))

(declare-fun b!1179417 () Bool)

(declare-fun tp!335640 () Bool)

(declare-fun tp!335642 () Bool)

(assert (=> b!1179417 (= e!756762 (and tp!335640 tp!335642))))

(declare-fun b!1179416 () Bool)

(assert (=> b!1179416 (= e!756762 tp_is_empty!5799)))

(assert (=> b!1179109 (= tp!335461 e!756762)))

(declare-fun b!1179418 () Bool)

(declare-fun tp!335644 () Bool)

(assert (=> b!1179418 (= e!756762 tp!335644)))

(assert (= (and b!1179109 ((_ is ElementMatch!3301) (regTwo!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179416))

(assert (= (and b!1179109 ((_ is Concat!5399) (regTwo!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179417))

(assert (= (and b!1179109 ((_ is Star!3301) (regTwo!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179418))

(assert (= (and b!1179109 ((_ is Union!3301) (regTwo!7114 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179419))

(declare-fun b!1179423 () Bool)

(declare-fun e!756763 () Bool)

(declare-fun tp!335648 () Bool)

(declare-fun tp!335646 () Bool)

(assert (=> b!1179423 (= e!756763 (and tp!335648 tp!335646))))

(declare-fun b!1179421 () Bool)

(declare-fun tp!335645 () Bool)

(declare-fun tp!335647 () Bool)

(assert (=> b!1179421 (= e!756763 (and tp!335645 tp!335647))))

(declare-fun b!1179420 () Bool)

(assert (=> b!1179420 (= e!756763 tp_is_empty!5799)))

(assert (=> b!1179144 (= tp!335496 e!756763)))

(declare-fun b!1179422 () Bool)

(declare-fun tp!335649 () Bool)

(assert (=> b!1179422 (= e!756763 tp!335649)))

(assert (= (and b!1179144 ((_ is ElementMatch!3301) (regex!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) b!1179420))

(assert (= (and b!1179144 ((_ is Concat!5399) (regex!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) b!1179421))

(assert (= (and b!1179144 ((_ is Star!3301) (regex!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) b!1179422))

(assert (= (and b!1179144 ((_ is Union!3301) (regex!2031 (rule!3452 (h!17086 (t!111217 l!6534)))))) b!1179423))

(declare-fun b!1179426 () Bool)

(declare-fun e!756766 () Bool)

(assert (=> b!1179426 (= e!756766 true)))

(declare-fun b!1179425 () Bool)

(declare-fun e!756765 () Bool)

(assert (=> b!1179425 (= e!756765 e!756766)))

(declare-fun b!1179424 () Bool)

(declare-fun e!756764 () Bool)

(assert (=> b!1179424 (= e!756764 e!756765)))

(assert (=> b!1179065 e!756764))

(assert (= b!1179425 b!1179426))

(assert (= b!1179424 b!1179425))

(assert (= (and b!1179065 ((_ is Cons!11684) (t!111216 rules!4386))) b!1179424))

(assert (=> b!1179426 (< (dynLambda!5171 order!7185 (toValue!3132 (transformation!2031 (h!17085 (t!111216 rules!4386))))) (dynLambda!5172 order!7187 lambda!48561))))

(assert (=> b!1179426 (< (dynLambda!5173 order!7189 (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386))))) (dynLambda!5172 order!7187 lambda!48561))))

(declare-fun b!1179427 () Bool)

(declare-fun e!756767 () Bool)

(declare-fun tp!335650 () Bool)

(assert (=> b!1179427 (= e!756767 (and tp_is_empty!5799 tp!335650))))

(assert (=> b!1179131 (= tp!335483 e!756767)))

(assert (= (and b!1179131 ((_ is Cons!11682) (t!111214 (originalCharacters!2585 (h!17086 l!6534))))) b!1179427))

(declare-fun b!1179431 () Bool)

(declare-fun e!756768 () Bool)

(declare-fun tp!335654 () Bool)

(declare-fun tp!335652 () Bool)

(assert (=> b!1179431 (= e!756768 (and tp!335654 tp!335652))))

(declare-fun b!1179429 () Bool)

(declare-fun tp!335651 () Bool)

(declare-fun tp!335653 () Bool)

(assert (=> b!1179429 (= e!756768 (and tp!335651 tp!335653))))

(declare-fun b!1179428 () Bool)

(assert (=> b!1179428 (= e!756768 tp_is_empty!5799)))

(assert (=> b!1179111 (= tp!335462 e!756768)))

(declare-fun b!1179430 () Bool)

(declare-fun tp!335655 () Bool)

(assert (=> b!1179430 (= e!756768 tp!335655)))

(assert (= (and b!1179111 ((_ is ElementMatch!3301) (regOne!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179428))

(assert (= (and b!1179111 ((_ is Concat!5399) (regOne!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179429))

(assert (= (and b!1179111 ((_ is Star!3301) (regOne!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179430))

(assert (= (and b!1179111 ((_ is Union!3301) (regOne!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179431))

(declare-fun b!1179435 () Bool)

(declare-fun e!756769 () Bool)

(declare-fun tp!335659 () Bool)

(declare-fun tp!335657 () Bool)

(assert (=> b!1179435 (= e!756769 (and tp!335659 tp!335657))))

(declare-fun b!1179433 () Bool)

(declare-fun tp!335656 () Bool)

(declare-fun tp!335658 () Bool)

(assert (=> b!1179433 (= e!756769 (and tp!335656 tp!335658))))

(declare-fun b!1179432 () Bool)

(assert (=> b!1179432 (= e!756769 tp_is_empty!5799)))

(assert (=> b!1179111 (= tp!335460 e!756769)))

(declare-fun b!1179434 () Bool)

(declare-fun tp!335660 () Bool)

(assert (=> b!1179434 (= e!756769 tp!335660)))

(assert (= (and b!1179111 ((_ is ElementMatch!3301) (regTwo!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179432))

(assert (= (and b!1179111 ((_ is Concat!5399) (regTwo!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179433))

(assert (= (and b!1179111 ((_ is Star!3301) (regTwo!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179434))

(assert (= (and b!1179111 ((_ is Union!3301) (regTwo!7115 (regex!2031 (rule!3452 (h!17086 l!6534)))))) b!1179435))

(declare-fun b_lambda!35221 () Bool)

(assert (= b_lambda!35215 (or d!337578 b_lambda!35221)))

(declare-fun bs!286834 () Bool)

(declare-fun d!337720 () Bool)

(assert (= bs!286834 (and d!337720 d!337578)))

(assert (=> bs!286834 (= (dynLambda!5177 lambda!48556 (h!17086 l!6534)) (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 l!6534)))))

(assert (=> bs!286834 m!1355585))

(assert (=> b!1179305 d!337720))

(declare-fun b_lambda!35223 () Bool)

(assert (= b_lambda!35219 (or (and b!1179404 b_free!27955 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 (t!111217 l!6534)))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))))) (and b!1179145 b_free!27939) (and b!1178930 b_free!27923 (= (toChars!2991 (transformation!2031 (h!17085 rules!4386))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))))) (and b!1178932 b_free!27919 (= (toChars!2991 (transformation!2031 (rule!3452 (h!17086 l!6534)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))))) (and b!1179364 b_free!27951 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 (t!111216 rules!4386))))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))))) (and b!1179122 b_free!27935 (= (toChars!2991 (transformation!2031 (h!17085 (t!111216 rules!4386)))) (toChars!2991 (transformation!2031 (rule!3452 (h!17086 (t!111217 l!6534))))))) b_lambda!35223)))

(declare-fun b_lambda!35225 () Bool)

(assert (= b_lambda!35217 (or d!337588 b_lambda!35225)))

(declare-fun bs!286835 () Bool)

(declare-fun d!337722 () Bool)

(assert (= bs!286835 (and d!337722 d!337588)))

(assert (=> bs!286835 (= (dynLambda!5177 lambda!48561 (h!17086 (list!4325 (seqFromList!1530 l!6534)))) (rulesProduceIndividualToken!761 thiss!27592 rules!4386 (h!17086 (list!4325 (seqFromList!1530 l!6534)))))))

(assert (=> bs!286835 m!1355819))

(assert (=> b!1179345 d!337722))

(check-sat (not d!337688) (not b!1179421) b_and!80865 (not bs!286834) (not tb!66061) (not b!1179422) (not b!1179413) (not b!1179309) (not b_next!28623) (not b!1179306) (not b!1179382) (not b!1179337) (not b!1179434) (not b!1179354) (not d!337692) (not b!1179409) (not b!1179366) (not b_next!28655) (not b!1179415) (not b!1179386) (not b!1179398) (not b!1179427) (not b!1179402) (not d!337710) (not b!1179383) (not b!1179414) (not b!1179390) (not b!1179389) (not b!1179418) (not b!1179300) (not b!1179400) b_and!80891 (not b!1179335) (not b!1179392) (not b!1179394) b_and!80899 (not b_next!28621) (not b_next!28639) (not b!1179315) (not b!1179399) b_and!80861 (not b!1179316) (not b_next!28625) (not b!1179355) (not b!1179363) (not b!1179347) (not b!1179361) (not b!1179431) (not b!1179343) (not d!337706) (not b!1179157) (not b!1179367) (not b!1179097) (not b!1179336) (not b!1179396) (not b!1179348) (not b_lambda!35221) b_and!80897 (not b!1179410) (not d!337714) (not d!337716) b_and!80889 (not d!337678) (not b!1179344) b_and!80887 (not d!337700) (not b!1179385) (not b!1179372) (not b!1179411) b_and!80837 tp_is_empty!5799 (not d!337708) (not b!1179401) (not b!1179370) (not b!1179299) (not b_next!28653) (not d!337676) (not d!337718) (not d!337618) (not b!1179423) (not bs!286835) b_and!80841 (not b!1179405) (not b!1179429) (not b_next!28637) (not b_next!28643) (not b_next!28659) (not b_next!28641) b_and!80893 (not d!337698) (not b!1179298) (not d!337620) (not b!1179330) (not b!1179403) (not d!337684) (not b!1179368) (not d!337680) (not b!1179435) (not b!1179314) (not d!337682) (not b!1179395) (not b!1179362) (not b!1179321) (not b!1179417) b_and!80895 (not b_lambda!35225) (not b!1179433) (not b!1179342) (not b!1179419) (not b!1179371) (not b_next!28657) (not b!1179391) b_and!80885 (not b!1179328) (not b!1179346) (not b!1179381) (not b_lambda!35223) (not d!337690) (not b!1179430) (not b_next!28627) (not b!1179424) (not d!337672) (not b!1179387) (not b!1179349) (not b_lambda!35201))
(check-sat (not b_next!28623) (not b_next!28655) b_and!80891 b_and!80861 (not b_next!28625) b_and!80897 b_and!80889 b_and!80887 b_and!80865 b_and!80837 (not b_next!28653) b_and!80841 b_and!80885 (not b_next!28627) b_and!80899 (not b_next!28621) (not b_next!28639) (not b_next!28637) (not b_next!28643) (not b_next!28659) (not b_next!28641) b_and!80893 b_and!80895 (not b_next!28657))

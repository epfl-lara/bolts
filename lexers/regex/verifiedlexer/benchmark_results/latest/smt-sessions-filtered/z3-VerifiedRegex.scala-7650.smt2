; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403810 () Bool)

(assert start!403810)

(declare-fun b!4224243 () Bool)

(declare-fun b_free!124315 () Bool)

(declare-fun b_next!125019 () Bool)

(assert (=> b!4224243 (= b_free!124315 (not b_next!125019))))

(declare-fun tp!1292982 () Bool)

(declare-fun b_and!333525 () Bool)

(assert (=> b!4224243 (= tp!1292982 b_and!333525)))

(declare-fun b_free!124317 () Bool)

(declare-fun b_next!125021 () Bool)

(assert (=> b!4224243 (= b_free!124317 (not b_next!125021))))

(declare-fun tp!1292981 () Bool)

(declare-fun b_and!333527 () Bool)

(assert (=> b!4224243 (= tp!1292981 b_and!333527)))

(declare-fun b!4224239 () Bool)

(declare-fun b_free!124319 () Bool)

(declare-fun b_next!125023 () Bool)

(assert (=> b!4224239 (= b_free!124319 (not b_next!125023))))

(declare-fun tp!1292975 () Bool)

(declare-fun b_and!333529 () Bool)

(assert (=> b!4224239 (= tp!1292975 b_and!333529)))

(declare-fun b_free!124321 () Bool)

(declare-fun b_next!125025 () Bool)

(assert (=> b!4224239 (= b_free!124321 (not b_next!125025))))

(declare-fun tp!1292978 () Bool)

(declare-fun b_and!333531 () Bool)

(assert (=> b!4224239 (= tp!1292978 b_and!333531)))

(declare-fun e!2622699 () Bool)

(declare-fun b!4224237 () Bool)

(declare-datatypes ((List!46645 0))(
  ( (Nil!46521) (Cons!46521 (h!51941 (_ BitVec 16)) (t!349230 List!46645)) )
))
(declare-datatypes ((TokenValue!8044 0))(
  ( (FloatLiteralValue!16088 (text!56753 List!46645)) (TokenValueExt!8043 (__x!28311 Int)) (Broken!40220 (value!243200 List!46645)) (Object!8167) (End!8044) (Def!8044) (Underscore!8044) (Match!8044) (Else!8044) (Error!8044) (Case!8044) (If!8044) (Extends!8044) (Abstract!8044) (Class!8044) (Val!8044) (DelimiterValue!16088 (del!8104 List!46645)) (KeywordValue!8050 (value!243201 List!46645)) (CommentValue!16088 (value!243202 List!46645)) (WhitespaceValue!16088 (value!243203 List!46645)) (IndentationValue!8044 (value!243204 List!46645)) (String!54089) (Int32!8044) (Broken!40221 (value!243205 List!46645)) (Boolean!8045) (Unit!65680) (OperatorValue!8047 (op!8104 List!46645)) (IdentifierValue!16088 (value!243206 List!46645)) (IdentifierValue!16089 (value!243207 List!46645)) (WhitespaceValue!16089 (value!243208 List!46645)) (True!16088) (False!16088) (Broken!40222 (value!243209 List!46645)) (Broken!40223 (value!243210 List!46645)) (True!16089) (RightBrace!8044) (RightBracket!8044) (Colon!8044) (Null!8044) (Comma!8044) (LeftBracket!8044) (False!16089) (LeftBrace!8044) (ImaginaryLiteralValue!8044 (text!56754 List!46645)) (StringLiteralValue!24132 (value!243211 List!46645)) (EOFValue!8044 (value!243212 List!46645)) (IdentValue!8044 (value!243213 List!46645)) (DelimiterValue!16089 (value!243214 List!46645)) (DedentValue!8044 (value!243215 List!46645)) (NewLineValue!8044 (value!243216 List!46645)) (IntegerValue!24132 (value!243217 (_ BitVec 32)) (text!56755 List!46645)) (IntegerValue!24133 (value!243218 Int) (text!56756 List!46645)) (Times!8044) (Or!8044) (Equal!8044) (Minus!8044) (Broken!40224 (value!243219 List!46645)) (And!8044) (Div!8044) (LessEqual!8044) (Mod!8044) (Concat!20763) (Not!8044) (Plus!8044) (SpaceValue!8044 (value!243220 List!46645)) (IntegerValue!24134 (value!243221 Int) (text!56757 List!46645)) (StringLiteralValue!24133 (text!56758 List!46645)) (FloatLiteralValue!16089 (text!56759 List!46645)) (BytesLiteralValue!8044 (value!243222 List!46645)) (CommentValue!16089 (value!243223 List!46645)) (StringLiteralValue!24134 (value!243224 List!46645)) (ErrorTokenValue!8044 (msg!8105 List!46645)) )
))
(declare-datatypes ((C!25632 0))(
  ( (C!25633 (val!14978 Int)) )
))
(declare-datatypes ((List!46646 0))(
  ( (Nil!46522) (Cons!46522 (h!51942 C!25632) (t!349231 List!46646)) )
))
(declare-datatypes ((IArray!28055 0))(
  ( (IArray!28056 (innerList!14085 List!46646)) )
))
(declare-datatypes ((Conc!14025 0))(
  ( (Node!14025 (left!34583 Conc!14025) (right!34913 Conc!14025) (csize!28280 Int) (cheight!14236 Int)) (Leaf!21676 (xs!17331 IArray!28055) (csize!28281 Int)) (Empty!14025) )
))
(declare-datatypes ((BalanceConc!27644 0))(
  ( (BalanceConc!27645 (c!718518 Conc!14025)) )
))
(declare-datatypes ((TokenValueInjection!15516 0))(
  ( (TokenValueInjection!15517 (toValue!10538 Int) (toChars!10397 Int)) )
))
(declare-datatypes ((Regex!12719 0))(
  ( (ElementMatch!12719 (c!718519 C!25632)) (Concat!20764 (regOne!25950 Regex!12719) (regTwo!25950 Regex!12719)) (EmptyExpr!12719) (Star!12719 (reg!13048 Regex!12719)) (EmptyLang!12719) (Union!12719 (regOne!25951 Regex!12719) (regTwo!25951 Regex!12719)) )
))
(declare-datatypes ((String!54090 0))(
  ( (String!54091 (value!243225 String)) )
))
(declare-datatypes ((Rule!15428 0))(
  ( (Rule!15429 (regex!7814 Regex!12719) (tag!8678 String!54090) (isSeparator!7814 Bool) (transformation!7814 TokenValueInjection!15516)) )
))
(declare-fun r!4313 () Rule!15428)

(declare-fun e!2622696 () Bool)

(declare-fun tp!1292980 () Bool)

(declare-fun inv!61187 (String!54090) Bool)

(declare-fun inv!61189 (TokenValueInjection!15516) Bool)

(assert (=> b!4224237 (= e!2622696 (and tp!1292980 (inv!61187 (tag!8678 r!4313)) (inv!61189 (transformation!7814 r!4313)) e!2622699))))

(declare-fun b!4224238 () Bool)

(declare-fun res!1736691 () Bool)

(declare-fun e!2622703 () Bool)

(assert (=> b!4224238 (=> (not res!1736691) (not e!2622703))))

(declare-datatypes ((LexerInterface!7409 0))(
  ( (LexerInterfaceExt!7406 (__x!28312 Int)) (Lexer!7407) )
))
(declare-fun thiss!26728 () LexerInterface!7409)

(declare-datatypes ((List!46647 0))(
  ( (Nil!46523) (Cons!46523 (h!51943 Rule!15428) (t!349232 List!46647)) )
))
(declare-fun rules!4013 () List!46647)

(declare-fun rulesValidInductive!2918 (LexerInterface!7409 List!46647) Bool)

(assert (=> b!4224238 (= res!1736691 (rulesValidInductive!2918 thiss!26728 rules!4013))))

(declare-fun res!1736693 () Bool)

(assert (=> start!403810 (=> (not res!1736693) (not e!2622703))))

(get-info :version)

(assert (=> start!403810 (= res!1736693 ((_ is Lexer!7407) thiss!26728))))

(assert (=> start!403810 e!2622703))

(assert (=> start!403810 true))

(declare-fun e!2622695 () Bool)

(assert (=> start!403810 e!2622695))

(assert (=> start!403810 e!2622696))

(declare-fun e!2622701 () Bool)

(assert (=> start!403810 e!2622701))

(assert (=> b!4224239 (= e!2622699 (and tp!1292975 tp!1292978))))

(declare-fun b!4224240 () Bool)

(declare-fun e!2622702 () Bool)

(assert (=> b!4224240 (= e!2622703 (not e!2622702))))

(declare-fun res!1736692 () Bool)

(assert (=> b!4224240 (=> res!1736692 e!2622702)))

(assert (=> b!4224240 (= res!1736692 (or (and ((_ is Cons!46523) rules!4013) (= r!4313 (h!51943 rules!4013))) (not ((_ is Cons!46523) rules!4013)) (= r!4313 (h!51943 rules!4013))))))

(declare-fun ruleValid!3522 (LexerInterface!7409 Rule!15428) Bool)

(assert (=> b!4224240 (ruleValid!3522 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65681 0))(
  ( (Unit!65682) )
))
(declare-fun lt!1502674 () Unit!65681)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2434 (LexerInterface!7409 Rule!15428 List!46647) Unit!65681)

(assert (=> b!4224240 (= lt!1502674 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2434 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4224241 () Bool)

(declare-fun e!2622698 () Bool)

(declare-fun e!2622700 () Bool)

(declare-fun tp!1292976 () Bool)

(assert (=> b!4224241 (= e!2622698 (and tp!1292976 (inv!61187 (tag!8678 (h!51943 rules!4013))) (inv!61189 (transformation!7814 (h!51943 rules!4013))) e!2622700))))

(declare-fun b!4224242 () Bool)

(declare-fun tp_is_empty!22401 () Bool)

(declare-fun tp!1292977 () Bool)

(assert (=> b!4224242 (= e!2622701 (and tp_is_empty!22401 tp!1292977))))

(assert (=> b!4224243 (= e!2622700 (and tp!1292982 tp!1292981))))

(declare-fun b!4224244 () Bool)

(declare-fun res!1736694 () Bool)

(assert (=> b!4224244 (=> (not res!1736694) (not e!2622703))))

(declare-fun input!3561 () List!46646)

(declare-datatypes ((Token!14326 0))(
  ( (Token!14327 (value!243226 TokenValue!8044) (rule!10956 Rule!15428) (size!34145 Int) (originalCharacters!8194 List!46646)) )
))
(declare-datatypes ((tuple2!44226 0))(
  ( (tuple2!44227 (_1!25247 Token!14326) (_2!25247 List!46646)) )
))
(declare-datatypes ((Option!10000 0))(
  ( (None!9999) (Some!9999 (v!40901 tuple2!44226)) )
))
(declare-fun isEmpty!27566 (Option!10000) Bool)

(declare-fun maxPrefix!4447 (LexerInterface!7409 List!46647 List!46646) Option!10000)

(assert (=> b!4224244 (= res!1736694 (isEmpty!27566 (maxPrefix!4447 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4224245 () Bool)

(declare-fun isEmpty!27567 (List!46647) Bool)

(assert (=> b!4224245 (= e!2622702 (not (isEmpty!27567 (t!349232 rules!4013))))))

(declare-fun b!4224246 () Bool)

(declare-fun res!1736696 () Bool)

(assert (=> b!4224246 (=> (not res!1736696) (not e!2622703))))

(declare-fun contains!9637 (List!46647 Rule!15428) Bool)

(assert (=> b!4224246 (= res!1736696 (contains!9637 rules!4013 r!4313))))

(declare-fun b!4224247 () Bool)

(declare-fun res!1736695 () Bool)

(assert (=> b!4224247 (=> (not res!1736695) (not e!2622703))))

(assert (=> b!4224247 (= res!1736695 (not (isEmpty!27567 rules!4013)))))

(declare-fun b!4224248 () Bool)

(declare-fun tp!1292979 () Bool)

(assert (=> b!4224248 (= e!2622695 (and e!2622698 tp!1292979))))

(assert (= (and start!403810 res!1736693) b!4224247))

(assert (= (and b!4224247 res!1736695) b!4224238))

(assert (= (and b!4224238 res!1736691) b!4224246))

(assert (= (and b!4224246 res!1736696) b!4224244))

(assert (= (and b!4224244 res!1736694) b!4224240))

(assert (= (and b!4224240 (not res!1736692)) b!4224245))

(assert (= b!4224241 b!4224243))

(assert (= b!4224248 b!4224241))

(assert (= (and start!403810 ((_ is Cons!46523) rules!4013)) b!4224248))

(assert (= b!4224237 b!4224239))

(assert (= start!403810 b!4224237))

(assert (= (and start!403810 ((_ is Cons!46522) input!3561)) b!4224242))

(declare-fun m!4812591 () Bool)

(assert (=> b!4224241 m!4812591))

(declare-fun m!4812593 () Bool)

(assert (=> b!4224241 m!4812593))

(declare-fun m!4812595 () Bool)

(assert (=> b!4224237 m!4812595))

(declare-fun m!4812597 () Bool)

(assert (=> b!4224237 m!4812597))

(declare-fun m!4812599 () Bool)

(assert (=> b!4224244 m!4812599))

(assert (=> b!4224244 m!4812599))

(declare-fun m!4812601 () Bool)

(assert (=> b!4224244 m!4812601))

(declare-fun m!4812603 () Bool)

(assert (=> b!4224240 m!4812603))

(declare-fun m!4812605 () Bool)

(assert (=> b!4224240 m!4812605))

(declare-fun m!4812607 () Bool)

(assert (=> b!4224245 m!4812607))

(declare-fun m!4812609 () Bool)

(assert (=> b!4224238 m!4812609))

(declare-fun m!4812611 () Bool)

(assert (=> b!4224246 m!4812611))

(declare-fun m!4812613 () Bool)

(assert (=> b!4224247 m!4812613))

(check-sat (not b_next!125021) b_and!333525 (not b!4224248) (not b!4224237) (not b!4224238) (not b_next!125025) (not b!4224246) b_and!333527 (not b!4224244) (not b_next!125023) b_and!333531 (not b!4224241) (not b!4224242) (not b!4224245) (not b!4224247) (not b!4224240) tp_is_empty!22401 b_and!333529 (not b_next!125019))
(check-sat b_and!333527 (not b_next!125021) b_and!333525 (not b_next!125025) (not b_next!125023) b_and!333531 b_and!333529 (not b_next!125019))
(get-model)

(declare-fun d!1243877 () Bool)

(declare-fun lt!1502677 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7307 (List!46647) (InoxSet Rule!15428))

(assert (=> d!1243877 (= lt!1502677 (select (content!7307 rules!4013) r!4313))))

(declare-fun e!2622710 () Bool)

(assert (=> d!1243877 (= lt!1502677 e!2622710)))

(declare-fun res!1736708 () Bool)

(assert (=> d!1243877 (=> (not res!1736708) (not e!2622710))))

(assert (=> d!1243877 (= res!1736708 ((_ is Cons!46523) rules!4013))))

(assert (=> d!1243877 (= (contains!9637 rules!4013 r!4313) lt!1502677)))

(declare-fun b!4224253 () Bool)

(declare-fun e!2622709 () Bool)

(assert (=> b!4224253 (= e!2622710 e!2622709)))

(declare-fun res!1736709 () Bool)

(assert (=> b!4224253 (=> res!1736709 e!2622709)))

(assert (=> b!4224253 (= res!1736709 (= (h!51943 rules!4013) r!4313))))

(declare-fun b!4224254 () Bool)

(assert (=> b!4224254 (= e!2622709 (contains!9637 (t!349232 rules!4013) r!4313))))

(assert (= (and d!1243877 res!1736708) b!4224253))

(assert (= (and b!4224253 (not res!1736709)) b!4224254))

(declare-fun m!4812615 () Bool)

(assert (=> d!1243877 m!4812615))

(declare-fun m!4812617 () Bool)

(assert (=> d!1243877 m!4812617))

(declare-fun m!4812619 () Bool)

(assert (=> b!4224254 m!4812619))

(assert (=> b!4224246 d!1243877))

(declare-fun d!1243879 () Bool)

(declare-fun res!1736714 () Bool)

(declare-fun e!2622713 () Bool)

(assert (=> d!1243879 (=> (not res!1736714) (not e!2622713))))

(declare-fun validRegex!5771 (Regex!12719) Bool)

(assert (=> d!1243879 (= res!1736714 (validRegex!5771 (regex!7814 r!4313)))))

(assert (=> d!1243879 (= (ruleValid!3522 thiss!26728 r!4313) e!2622713)))

(declare-fun b!4224259 () Bool)

(declare-fun res!1736715 () Bool)

(assert (=> b!4224259 (=> (not res!1736715) (not e!2622713))))

(declare-fun nullable!4484 (Regex!12719) Bool)

(assert (=> b!4224259 (= res!1736715 (not (nullable!4484 (regex!7814 r!4313))))))

(declare-fun b!4224260 () Bool)

(assert (=> b!4224260 (= e!2622713 (not (= (tag!8678 r!4313) (String!54091 ""))))))

(assert (= (and d!1243879 res!1736714) b!4224259))

(assert (= (and b!4224259 res!1736715) b!4224260))

(declare-fun m!4812621 () Bool)

(assert (=> d!1243879 m!4812621))

(declare-fun m!4812623 () Bool)

(assert (=> b!4224259 m!4812623))

(assert (=> b!4224240 d!1243879))

(declare-fun d!1243881 () Bool)

(assert (=> d!1243881 (ruleValid!3522 thiss!26728 r!4313)))

(declare-fun lt!1502680 () Unit!65681)

(declare-fun choose!25878 (LexerInterface!7409 Rule!15428 List!46647) Unit!65681)

(assert (=> d!1243881 (= lt!1502680 (choose!25878 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1243881 (contains!9637 rules!4013 r!4313)))

(assert (=> d!1243881 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2434 thiss!26728 r!4313 rules!4013) lt!1502680)))

(declare-fun bs!597782 () Bool)

(assert (= bs!597782 d!1243881))

(assert (=> bs!597782 m!4812603))

(declare-fun m!4812625 () Bool)

(assert (=> bs!597782 m!4812625))

(assert (=> bs!597782 m!4812611))

(assert (=> b!4224240 d!1243881))

(declare-fun d!1243883 () Bool)

(assert (=> d!1243883 (= (isEmpty!27567 (t!349232 rules!4013)) ((_ is Nil!46523) (t!349232 rules!4013)))))

(assert (=> b!4224245 d!1243883))

(declare-fun d!1243885 () Bool)

(assert (=> d!1243885 (= (isEmpty!27567 rules!4013) ((_ is Nil!46523) rules!4013))))

(assert (=> b!4224247 d!1243885))

(declare-fun d!1243887 () Bool)

(assert (=> d!1243887 (= (inv!61187 (tag!8678 (h!51943 rules!4013))) (= (mod (str.len (value!243225 (tag!8678 (h!51943 rules!4013)))) 2) 0))))

(assert (=> b!4224241 d!1243887))

(declare-fun d!1243889 () Bool)

(declare-fun res!1736718 () Bool)

(declare-fun e!2622716 () Bool)

(assert (=> d!1243889 (=> (not res!1736718) (not e!2622716))))

(declare-fun semiInverseModEq!3397 (Int Int) Bool)

(assert (=> d!1243889 (= res!1736718 (semiInverseModEq!3397 (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 (h!51943 rules!4013)))))))

(assert (=> d!1243889 (= (inv!61189 (transformation!7814 (h!51943 rules!4013))) e!2622716)))

(declare-fun b!4224263 () Bool)

(declare-fun equivClasses!3296 (Int Int) Bool)

(assert (=> b!4224263 (= e!2622716 (equivClasses!3296 (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 (h!51943 rules!4013)))))))

(assert (= (and d!1243889 res!1736718) b!4224263))

(declare-fun m!4812627 () Bool)

(assert (=> d!1243889 m!4812627))

(declare-fun m!4812629 () Bool)

(assert (=> b!4224263 m!4812629))

(assert (=> b!4224241 d!1243889))

(declare-fun d!1243891 () Bool)

(assert (=> d!1243891 true))

(declare-fun lt!1502704 () Bool)

(declare-fun lambda!129859 () Int)

(declare-fun forall!8504 (List!46647 Int) Bool)

(assert (=> d!1243891 (= lt!1502704 (forall!8504 rules!4013 lambda!129859))))

(declare-fun e!2622748 () Bool)

(assert (=> d!1243891 (= lt!1502704 e!2622748)))

(declare-fun res!1736765 () Bool)

(assert (=> d!1243891 (=> res!1736765 e!2622748)))

(assert (=> d!1243891 (= res!1736765 (not ((_ is Cons!46523) rules!4013)))))

(assert (=> d!1243891 (= (rulesValidInductive!2918 thiss!26728 rules!4013) lt!1502704)))

(declare-fun b!4224317 () Bool)

(declare-fun e!2622749 () Bool)

(assert (=> b!4224317 (= e!2622748 e!2622749)))

(declare-fun res!1736764 () Bool)

(assert (=> b!4224317 (=> (not res!1736764) (not e!2622749))))

(assert (=> b!4224317 (= res!1736764 (ruleValid!3522 thiss!26728 (h!51943 rules!4013)))))

(declare-fun b!4224318 () Bool)

(assert (=> b!4224318 (= e!2622749 (rulesValidInductive!2918 thiss!26728 (t!349232 rules!4013)))))

(assert (= (and d!1243891 (not res!1736765)) b!4224317))

(assert (= (and b!4224317 res!1736764) b!4224318))

(declare-fun m!4812687 () Bool)

(assert (=> d!1243891 m!4812687))

(declare-fun m!4812689 () Bool)

(assert (=> b!4224317 m!4812689))

(declare-fun m!4812691 () Bool)

(assert (=> b!4224318 m!4812691))

(assert (=> b!4224238 d!1243891))

(declare-fun d!1243911 () Bool)

(assert (=> d!1243911 (= (inv!61187 (tag!8678 r!4313)) (= (mod (str.len (value!243225 (tag!8678 r!4313))) 2) 0))))

(assert (=> b!4224237 d!1243911))

(declare-fun d!1243913 () Bool)

(declare-fun res!1736768 () Bool)

(declare-fun e!2622751 () Bool)

(assert (=> d!1243913 (=> (not res!1736768) (not e!2622751))))

(assert (=> d!1243913 (= res!1736768 (semiInverseModEq!3397 (toChars!10397 (transformation!7814 r!4313)) (toValue!10538 (transformation!7814 r!4313))))))

(assert (=> d!1243913 (= (inv!61189 (transformation!7814 r!4313)) e!2622751)))

(declare-fun b!4224323 () Bool)

(assert (=> b!4224323 (= e!2622751 (equivClasses!3296 (toChars!10397 (transformation!7814 r!4313)) (toValue!10538 (transformation!7814 r!4313))))))

(assert (= (and d!1243913 res!1736768) b!4224323))

(declare-fun m!4812693 () Bool)

(assert (=> d!1243913 m!4812693))

(declare-fun m!4812695 () Bool)

(assert (=> b!4224323 m!4812695))

(assert (=> b!4224237 d!1243913))

(declare-fun d!1243915 () Bool)

(assert (=> d!1243915 (= (isEmpty!27566 (maxPrefix!4447 thiss!26728 rules!4013 input!3561)) (not ((_ is Some!9999) (maxPrefix!4447 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4224244 d!1243915))

(declare-fun b!4224376 () Bool)

(declare-fun res!1736784 () Bool)

(declare-fun e!2622777 () Bool)

(assert (=> b!4224376 (=> (not res!1736784) (not e!2622777))))

(declare-fun lt!1502721 () Option!10000)

(declare-fun matchR!6396 (Regex!12719 List!46646) Bool)

(declare-fun get!15139 (Option!10000) tuple2!44226)

(declare-fun list!16826 (BalanceConc!27644) List!46646)

(declare-fun charsOf!5227 (Token!14326) BalanceConc!27644)

(assert (=> b!4224376 (= res!1736784 (matchR!6396 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun b!4224377 () Bool)

(declare-fun e!2622779 () Option!10000)

(declare-fun lt!1502722 () Option!10000)

(declare-fun lt!1502720 () Option!10000)

(assert (=> b!4224377 (= e!2622779 (ite (and ((_ is None!9999) lt!1502722) ((_ is None!9999) lt!1502720)) None!9999 (ite ((_ is None!9999) lt!1502720) lt!1502722 (ite ((_ is None!9999) lt!1502722) lt!1502720 (ite (>= (size!34145 (_1!25247 (v!40901 lt!1502722))) (size!34145 (_1!25247 (v!40901 lt!1502720)))) lt!1502722 lt!1502720)))))))

(declare-fun call!293190 () Option!10000)

(assert (=> b!4224377 (= lt!1502722 call!293190)))

(assert (=> b!4224377 (= lt!1502720 (maxPrefix!4447 thiss!26728 (t!349232 rules!4013) input!3561))))

(declare-fun b!4224378 () Bool)

(assert (=> b!4224378 (= e!2622779 call!293190)))

(declare-fun bm!293185 () Bool)

(declare-fun maxPrefixOneRule!3396 (LexerInterface!7409 Rule!15428 List!46646) Option!10000)

(assert (=> bm!293185 (= call!293190 (maxPrefixOneRule!3396 thiss!26728 (h!51943 rules!4013) input!3561))))

(declare-fun d!1243917 () Bool)

(declare-fun e!2622778 () Bool)

(assert (=> d!1243917 e!2622778))

(declare-fun res!1736786 () Bool)

(assert (=> d!1243917 (=> res!1736786 e!2622778)))

(assert (=> d!1243917 (= res!1736786 (isEmpty!27566 lt!1502721))))

(assert (=> d!1243917 (= lt!1502721 e!2622779)))

(declare-fun c!718525 () Bool)

(assert (=> d!1243917 (= c!718525 (and ((_ is Cons!46523) rules!4013) ((_ is Nil!46523) (t!349232 rules!4013))))))

(declare-fun lt!1502718 () Unit!65681)

(declare-fun lt!1502719 () Unit!65681)

(assert (=> d!1243917 (= lt!1502718 lt!1502719)))

(declare-fun isPrefix!4663 (List!46646 List!46646) Bool)

(assert (=> d!1243917 (isPrefix!4663 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3080 (List!46646 List!46646) Unit!65681)

(assert (=> d!1243917 (= lt!1502719 (lemmaIsPrefixRefl!3080 input!3561 input!3561))))

(assert (=> d!1243917 (rulesValidInductive!2918 thiss!26728 rules!4013)))

(assert (=> d!1243917 (= (maxPrefix!4447 thiss!26728 rules!4013 input!3561) lt!1502721)))

(declare-fun b!4224379 () Bool)

(declare-fun res!1736788 () Bool)

(assert (=> b!4224379 (=> (not res!1736788) (not e!2622777))))

(declare-fun apply!10717 (TokenValueInjection!15516 BalanceConc!27644) TokenValue!8044)

(declare-fun seqFromList!5777 (List!46646) BalanceConc!27644)

(assert (=> b!4224379 (= res!1736788 (= (value!243226 (_1!25247 (get!15139 lt!1502721))) (apply!10717 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721)))))))))

(declare-fun b!4224380 () Bool)

(assert (=> b!4224380 (= e!2622777 (contains!9637 rules!4013 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))

(declare-fun b!4224381 () Bool)

(declare-fun res!1736783 () Bool)

(assert (=> b!4224381 (=> (not res!1736783) (not e!2622777))))

(assert (=> b!4224381 (= res!1736783 (= (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))) (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721)))))))

(declare-fun b!4224382 () Bool)

(assert (=> b!4224382 (= e!2622778 e!2622777)))

(declare-fun res!1736789 () Bool)

(assert (=> b!4224382 (=> (not res!1736789) (not e!2622777))))

(declare-fun isDefined!7418 (Option!10000) Bool)

(assert (=> b!4224382 (= res!1736789 (isDefined!7418 lt!1502721))))

(declare-fun b!4224383 () Bool)

(declare-fun res!1736785 () Bool)

(assert (=> b!4224383 (=> (not res!1736785) (not e!2622777))))

(declare-fun size!34147 (List!46646) Int)

(assert (=> b!4224383 (= res!1736785 (< (size!34147 (_2!25247 (get!15139 lt!1502721))) (size!34147 input!3561)))))

(declare-fun b!4224384 () Bool)

(declare-fun res!1736787 () Bool)

(assert (=> b!4224384 (=> (not res!1736787) (not e!2622777))))

(declare-fun ++!11878 (List!46646 List!46646) List!46646)

(assert (=> b!4224384 (= res!1736787 (= (++!11878 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))) (_2!25247 (get!15139 lt!1502721))) input!3561))))

(assert (= (and d!1243917 c!718525) b!4224378))

(assert (= (and d!1243917 (not c!718525)) b!4224377))

(assert (= (or b!4224378 b!4224377) bm!293185))

(assert (= (and d!1243917 (not res!1736786)) b!4224382))

(assert (= (and b!4224382 res!1736789) b!4224381))

(assert (= (and b!4224381 res!1736783) b!4224383))

(assert (= (and b!4224383 res!1736785) b!4224384))

(assert (= (and b!4224384 res!1736787) b!4224379))

(assert (= (and b!4224379 res!1736788) b!4224376))

(assert (= (and b!4224376 res!1736784) b!4224380))

(declare-fun m!4812703 () Bool)

(assert (=> d!1243917 m!4812703))

(declare-fun m!4812705 () Bool)

(assert (=> d!1243917 m!4812705))

(declare-fun m!4812707 () Bool)

(assert (=> d!1243917 m!4812707))

(assert (=> d!1243917 m!4812609))

(declare-fun m!4812709 () Bool)

(assert (=> b!4224376 m!4812709))

(declare-fun m!4812711 () Bool)

(assert (=> b!4224376 m!4812711))

(assert (=> b!4224376 m!4812711))

(declare-fun m!4812713 () Bool)

(assert (=> b!4224376 m!4812713))

(assert (=> b!4224376 m!4812713))

(declare-fun m!4812715 () Bool)

(assert (=> b!4224376 m!4812715))

(assert (=> b!4224381 m!4812709))

(assert (=> b!4224381 m!4812711))

(assert (=> b!4224381 m!4812711))

(assert (=> b!4224381 m!4812713))

(declare-fun m!4812717 () Bool)

(assert (=> b!4224382 m!4812717))

(assert (=> b!4224383 m!4812709))

(declare-fun m!4812719 () Bool)

(assert (=> b!4224383 m!4812719))

(declare-fun m!4812721 () Bool)

(assert (=> b!4224383 m!4812721))

(declare-fun m!4812723 () Bool)

(assert (=> bm!293185 m!4812723))

(declare-fun m!4812725 () Bool)

(assert (=> b!4224377 m!4812725))

(assert (=> b!4224379 m!4812709))

(declare-fun m!4812727 () Bool)

(assert (=> b!4224379 m!4812727))

(assert (=> b!4224379 m!4812727))

(declare-fun m!4812729 () Bool)

(assert (=> b!4224379 m!4812729))

(assert (=> b!4224380 m!4812709))

(declare-fun m!4812731 () Bool)

(assert (=> b!4224380 m!4812731))

(assert (=> b!4224384 m!4812709))

(assert (=> b!4224384 m!4812711))

(assert (=> b!4224384 m!4812711))

(assert (=> b!4224384 m!4812713))

(assert (=> b!4224384 m!4812713))

(declare-fun m!4812733 () Bool)

(assert (=> b!4224384 m!4812733))

(assert (=> b!4224244 d!1243917))

(declare-fun b!4224389 () Bool)

(declare-fun e!2622782 () Bool)

(declare-fun tp!1293020 () Bool)

(assert (=> b!4224389 (= e!2622782 (and tp_is_empty!22401 tp!1293020))))

(assert (=> b!4224242 (= tp!1292977 e!2622782)))

(assert (= (and b!4224242 ((_ is Cons!46522) (t!349231 input!3561))) b!4224389))

(declare-fun b!4224403 () Bool)

(declare-fun e!2622785 () Bool)

(declare-fun tp!1293035 () Bool)

(declare-fun tp!1293034 () Bool)

(assert (=> b!4224403 (= e!2622785 (and tp!1293035 tp!1293034))))

(declare-fun b!4224402 () Bool)

(declare-fun tp!1293032 () Bool)

(assert (=> b!4224402 (= e!2622785 tp!1293032)))

(assert (=> b!4224241 (= tp!1292976 e!2622785)))

(declare-fun b!4224400 () Bool)

(assert (=> b!4224400 (= e!2622785 tp_is_empty!22401)))

(declare-fun b!4224401 () Bool)

(declare-fun tp!1293031 () Bool)

(declare-fun tp!1293033 () Bool)

(assert (=> b!4224401 (= e!2622785 (and tp!1293031 tp!1293033))))

(assert (= (and b!4224241 ((_ is ElementMatch!12719) (regex!7814 (h!51943 rules!4013)))) b!4224400))

(assert (= (and b!4224241 ((_ is Concat!20764) (regex!7814 (h!51943 rules!4013)))) b!4224401))

(assert (= (and b!4224241 ((_ is Star!12719) (regex!7814 (h!51943 rules!4013)))) b!4224402))

(assert (= (and b!4224241 ((_ is Union!12719) (regex!7814 (h!51943 rules!4013)))) b!4224403))

(declare-fun b!4224414 () Bool)

(declare-fun b_free!124327 () Bool)

(declare-fun b_next!125031 () Bool)

(assert (=> b!4224414 (= b_free!124327 (not b_next!125031))))

(declare-fun tp!1293045 () Bool)

(declare-fun b_and!333537 () Bool)

(assert (=> b!4224414 (= tp!1293045 b_and!333537)))

(declare-fun b_free!124329 () Bool)

(declare-fun b_next!125033 () Bool)

(assert (=> b!4224414 (= b_free!124329 (not b_next!125033))))

(declare-fun tp!1293047 () Bool)

(declare-fun b_and!333539 () Bool)

(assert (=> b!4224414 (= tp!1293047 b_and!333539)))

(declare-fun e!2622795 () Bool)

(assert (=> b!4224414 (= e!2622795 (and tp!1293045 tp!1293047))))

(declare-fun b!4224413 () Bool)

(declare-fun tp!1293044 () Bool)

(declare-fun e!2622797 () Bool)

(assert (=> b!4224413 (= e!2622797 (and tp!1293044 (inv!61187 (tag!8678 (h!51943 (t!349232 rules!4013)))) (inv!61189 (transformation!7814 (h!51943 (t!349232 rules!4013)))) e!2622795))))

(declare-fun b!4224412 () Bool)

(declare-fun e!2622794 () Bool)

(declare-fun tp!1293046 () Bool)

(assert (=> b!4224412 (= e!2622794 (and e!2622797 tp!1293046))))

(assert (=> b!4224248 (= tp!1292979 e!2622794)))

(assert (= b!4224413 b!4224414))

(assert (= b!4224412 b!4224413))

(assert (= (and b!4224248 ((_ is Cons!46523) (t!349232 rules!4013))) b!4224412))

(declare-fun m!4812735 () Bool)

(assert (=> b!4224413 m!4812735))

(declare-fun m!4812737 () Bool)

(assert (=> b!4224413 m!4812737))

(declare-fun b!4224418 () Bool)

(declare-fun e!2622798 () Bool)

(declare-fun tp!1293052 () Bool)

(declare-fun tp!1293051 () Bool)

(assert (=> b!4224418 (= e!2622798 (and tp!1293052 tp!1293051))))

(declare-fun b!4224417 () Bool)

(declare-fun tp!1293049 () Bool)

(assert (=> b!4224417 (= e!2622798 tp!1293049)))

(assert (=> b!4224237 (= tp!1292980 e!2622798)))

(declare-fun b!4224415 () Bool)

(assert (=> b!4224415 (= e!2622798 tp_is_empty!22401)))

(declare-fun b!4224416 () Bool)

(declare-fun tp!1293048 () Bool)

(declare-fun tp!1293050 () Bool)

(assert (=> b!4224416 (= e!2622798 (and tp!1293048 tp!1293050))))

(assert (= (and b!4224237 ((_ is ElementMatch!12719) (regex!7814 r!4313))) b!4224415))

(assert (= (and b!4224237 ((_ is Concat!20764) (regex!7814 r!4313))) b!4224416))

(assert (= (and b!4224237 ((_ is Star!12719) (regex!7814 r!4313))) b!4224417))

(assert (= (and b!4224237 ((_ is Union!12719) (regex!7814 r!4313))) b!4224418))

(check-sat (not b_next!125021) (not d!1243913) (not b!4224323) (not b!4224263) (not b!4224402) b_and!333539 (not b!4224318) (not b!4224259) (not b!4224403) (not b!4224254) (not b!4224413) (not b!4224412) (not d!1243889) b_and!333527 (not b!4224376) (not d!1243891) b_and!333525 (not b_next!125023) b_and!333531 (not b!4224317) (not d!1243917) (not b!4224416) (not b!4224417) (not b!4224380) (not b!4224384) (not b!4224418) (not bm!293185) (not d!1243881) (not b!4224389) (not b!4224383) (not b!4224382) tp_is_empty!22401 b_and!333529 (not b_next!125019) (not b!4224381) (not b!4224379) (not b!4224401) (not d!1243877) (not b_next!125031) (not b!4224377) (not b_next!125033) b_and!333537 (not d!1243879) (not b_next!125025))
(check-sat b_and!333527 (not b_next!125021) b_and!333525 b_and!333539 (not b_next!125031) (not b_next!125025) (not b_next!125023) b_and!333531 b_and!333529 (not b_next!125019) (not b_next!125033) b_and!333537)
(get-model)

(declare-fun b!4224419 () Bool)

(declare-fun res!1736799 () Bool)

(declare-fun e!2622799 () Bool)

(assert (=> b!4224419 (=> (not res!1736799) (not e!2622799))))

(declare-fun lt!1502726 () Option!10000)

(assert (=> b!4224419 (= res!1736799 (matchR!6396 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502726)))) (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502726))))))))

(declare-fun b!4224420 () Bool)

(declare-fun e!2622801 () Option!10000)

(declare-fun lt!1502727 () Option!10000)

(declare-fun lt!1502725 () Option!10000)

(assert (=> b!4224420 (= e!2622801 (ite (and ((_ is None!9999) lt!1502727) ((_ is None!9999) lt!1502725)) None!9999 (ite ((_ is None!9999) lt!1502725) lt!1502727 (ite ((_ is None!9999) lt!1502727) lt!1502725 (ite (>= (size!34145 (_1!25247 (v!40901 lt!1502727))) (size!34145 (_1!25247 (v!40901 lt!1502725)))) lt!1502727 lt!1502725)))))))

(declare-fun call!293191 () Option!10000)

(assert (=> b!4224420 (= lt!1502727 call!293191)))

(assert (=> b!4224420 (= lt!1502725 (maxPrefix!4447 thiss!26728 (t!349232 (t!349232 rules!4013)) input!3561))))

(declare-fun b!4224421 () Bool)

(assert (=> b!4224421 (= e!2622801 call!293191)))

(declare-fun bm!293186 () Bool)

(assert (=> bm!293186 (= call!293191 (maxPrefixOneRule!3396 thiss!26728 (h!51943 (t!349232 rules!4013)) input!3561))))

(declare-fun d!1243919 () Bool)

(declare-fun e!2622800 () Bool)

(assert (=> d!1243919 e!2622800))

(declare-fun res!1736801 () Bool)

(assert (=> d!1243919 (=> res!1736801 e!2622800)))

(assert (=> d!1243919 (= res!1736801 (isEmpty!27566 lt!1502726))))

(assert (=> d!1243919 (= lt!1502726 e!2622801)))

(declare-fun c!718526 () Bool)

(assert (=> d!1243919 (= c!718526 (and ((_ is Cons!46523) (t!349232 rules!4013)) ((_ is Nil!46523) (t!349232 (t!349232 rules!4013)))))))

(declare-fun lt!1502723 () Unit!65681)

(declare-fun lt!1502724 () Unit!65681)

(assert (=> d!1243919 (= lt!1502723 lt!1502724)))

(assert (=> d!1243919 (isPrefix!4663 input!3561 input!3561)))

(assert (=> d!1243919 (= lt!1502724 (lemmaIsPrefixRefl!3080 input!3561 input!3561))))

(assert (=> d!1243919 (rulesValidInductive!2918 thiss!26728 (t!349232 rules!4013))))

(assert (=> d!1243919 (= (maxPrefix!4447 thiss!26728 (t!349232 rules!4013) input!3561) lt!1502726)))

(declare-fun b!4224422 () Bool)

(declare-fun res!1736803 () Bool)

(assert (=> b!4224422 (=> (not res!1736803) (not e!2622799))))

(assert (=> b!4224422 (= res!1736803 (= (value!243226 (_1!25247 (get!15139 lt!1502726))) (apply!10717 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502726)))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502726)))))))))

(declare-fun b!4224423 () Bool)

(assert (=> b!4224423 (= e!2622799 (contains!9637 (t!349232 rules!4013) (rule!10956 (_1!25247 (get!15139 lt!1502726)))))))

(declare-fun b!4224424 () Bool)

(declare-fun res!1736798 () Bool)

(assert (=> b!4224424 (=> (not res!1736798) (not e!2622799))))

(assert (=> b!4224424 (= res!1736798 (= (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502726)))) (originalCharacters!8194 (_1!25247 (get!15139 lt!1502726)))))))

(declare-fun b!4224425 () Bool)

(assert (=> b!4224425 (= e!2622800 e!2622799)))

(declare-fun res!1736804 () Bool)

(assert (=> b!4224425 (=> (not res!1736804) (not e!2622799))))

(assert (=> b!4224425 (= res!1736804 (isDefined!7418 lt!1502726))))

(declare-fun b!4224426 () Bool)

(declare-fun res!1736800 () Bool)

(assert (=> b!4224426 (=> (not res!1736800) (not e!2622799))))

(assert (=> b!4224426 (= res!1736800 (< (size!34147 (_2!25247 (get!15139 lt!1502726))) (size!34147 input!3561)))))

(declare-fun b!4224427 () Bool)

(declare-fun res!1736802 () Bool)

(assert (=> b!4224427 (=> (not res!1736802) (not e!2622799))))

(assert (=> b!4224427 (= res!1736802 (= (++!11878 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502726)))) (_2!25247 (get!15139 lt!1502726))) input!3561))))

(assert (= (and d!1243919 c!718526) b!4224421))

(assert (= (and d!1243919 (not c!718526)) b!4224420))

(assert (= (or b!4224421 b!4224420) bm!293186))

(assert (= (and d!1243919 (not res!1736801)) b!4224425))

(assert (= (and b!4224425 res!1736804) b!4224424))

(assert (= (and b!4224424 res!1736798) b!4224426))

(assert (= (and b!4224426 res!1736800) b!4224427))

(assert (= (and b!4224427 res!1736802) b!4224422))

(assert (= (and b!4224422 res!1736803) b!4224419))

(assert (= (and b!4224419 res!1736799) b!4224423))

(declare-fun m!4812739 () Bool)

(assert (=> d!1243919 m!4812739))

(assert (=> d!1243919 m!4812705))

(assert (=> d!1243919 m!4812707))

(assert (=> d!1243919 m!4812691))

(declare-fun m!4812741 () Bool)

(assert (=> b!4224419 m!4812741))

(declare-fun m!4812743 () Bool)

(assert (=> b!4224419 m!4812743))

(assert (=> b!4224419 m!4812743))

(declare-fun m!4812745 () Bool)

(assert (=> b!4224419 m!4812745))

(assert (=> b!4224419 m!4812745))

(declare-fun m!4812747 () Bool)

(assert (=> b!4224419 m!4812747))

(assert (=> b!4224424 m!4812741))

(assert (=> b!4224424 m!4812743))

(assert (=> b!4224424 m!4812743))

(assert (=> b!4224424 m!4812745))

(declare-fun m!4812749 () Bool)

(assert (=> b!4224425 m!4812749))

(assert (=> b!4224426 m!4812741))

(declare-fun m!4812751 () Bool)

(assert (=> b!4224426 m!4812751))

(assert (=> b!4224426 m!4812721))

(declare-fun m!4812753 () Bool)

(assert (=> bm!293186 m!4812753))

(declare-fun m!4812755 () Bool)

(assert (=> b!4224420 m!4812755))

(assert (=> b!4224422 m!4812741))

(declare-fun m!4812757 () Bool)

(assert (=> b!4224422 m!4812757))

(assert (=> b!4224422 m!4812757))

(declare-fun m!4812759 () Bool)

(assert (=> b!4224422 m!4812759))

(assert (=> b!4224423 m!4812741))

(declare-fun m!4812761 () Bool)

(assert (=> b!4224423 m!4812761))

(assert (=> b!4224427 m!4812741))

(assert (=> b!4224427 m!4812743))

(assert (=> b!4224427 m!4812743))

(assert (=> b!4224427 m!4812745))

(assert (=> b!4224427 m!4812745))

(declare-fun m!4812763 () Bool)

(assert (=> b!4224427 m!4812763))

(assert (=> b!4224377 d!1243919))

(declare-fun b!4224519 () Bool)

(declare-fun e!2622850 () Bool)

(declare-fun e!2622852 () Bool)

(assert (=> b!4224519 (= e!2622850 e!2622852)))

(declare-fun res!1736859 () Bool)

(assert (=> b!4224519 (=> (not res!1736859) (not e!2622852))))

(declare-fun lt!1502749 () Option!10000)

(assert (=> b!4224519 (= res!1736859 (matchR!6396 (regex!7814 (h!51943 rules!4013)) (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502749))))))))

(declare-fun b!4224520 () Bool)

(declare-fun res!1736855 () Bool)

(assert (=> b!4224520 (=> (not res!1736855) (not e!2622852))))

(assert (=> b!4224520 (= res!1736855 (< (size!34147 (_2!25247 (get!15139 lt!1502749))) (size!34147 input!3561)))))

(declare-fun b!4224521 () Bool)

(declare-fun e!2622851 () Option!10000)

(assert (=> b!4224521 (= e!2622851 None!9999)))

(declare-fun d!1243921 () Bool)

(assert (=> d!1243921 e!2622850))

(declare-fun res!1736856 () Bool)

(assert (=> d!1243921 (=> res!1736856 e!2622850)))

(assert (=> d!1243921 (= res!1736856 (isEmpty!27566 lt!1502749))))

(assert (=> d!1243921 (= lt!1502749 e!2622851)))

(declare-fun c!718545 () Bool)

(declare-datatypes ((tuple2!44228 0))(
  ( (tuple2!44229 (_1!25248 List!46646) (_2!25248 List!46646)) )
))
(declare-fun lt!1502746 () tuple2!44228)

(declare-fun isEmpty!27568 (List!46646) Bool)

(assert (=> d!1243921 (= c!718545 (isEmpty!27568 (_1!25248 lt!1502746)))))

(declare-fun findLongestMatch!1587 (Regex!12719 List!46646) tuple2!44228)

(assert (=> d!1243921 (= lt!1502746 (findLongestMatch!1587 (regex!7814 (h!51943 rules!4013)) input!3561))))

(assert (=> d!1243921 (ruleValid!3522 thiss!26728 (h!51943 rules!4013))))

(assert (=> d!1243921 (= (maxPrefixOneRule!3396 thiss!26728 (h!51943 rules!4013) input!3561) lt!1502749)))

(declare-fun b!4224522 () Bool)

(declare-fun res!1736858 () Bool)

(assert (=> b!4224522 (=> (not res!1736858) (not e!2622852))))

(assert (=> b!4224522 (= res!1736858 (= (++!11878 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502749)))) (_2!25247 (get!15139 lt!1502749))) input!3561))))

(declare-fun b!4224523 () Bool)

(declare-fun e!2622853 () Bool)

(declare-fun findLongestMatchInner!1674 (Regex!12719 List!46646 Int List!46646 List!46646 Int) tuple2!44228)

(assert (=> b!4224523 (= e!2622853 (matchR!6396 (regex!7814 (h!51943 rules!4013)) (_1!25248 (findLongestMatchInner!1674 (regex!7814 (h!51943 rules!4013)) Nil!46522 (size!34147 Nil!46522) input!3561 input!3561 (size!34147 input!3561)))))))

(declare-fun b!4224524 () Bool)

(declare-fun res!1736860 () Bool)

(assert (=> b!4224524 (=> (not res!1736860) (not e!2622852))))

(assert (=> b!4224524 (= res!1736860 (= (value!243226 (_1!25247 (get!15139 lt!1502749))) (apply!10717 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502749)))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502749)))))))))

(declare-fun b!4224525 () Bool)

(assert (=> b!4224525 (= e!2622852 (= (size!34145 (_1!25247 (get!15139 lt!1502749))) (size!34147 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502749))))))))

(declare-fun b!4224526 () Bool)

(declare-fun res!1736857 () Bool)

(assert (=> b!4224526 (=> (not res!1736857) (not e!2622852))))

(assert (=> b!4224526 (= res!1736857 (= (rule!10956 (_1!25247 (get!15139 lt!1502749))) (h!51943 rules!4013)))))

(declare-fun b!4224527 () Bool)

(declare-fun size!34148 (BalanceConc!27644) Int)

(assert (=> b!4224527 (= e!2622851 (Some!9999 (tuple2!44227 (Token!14327 (apply!10717 (transformation!7814 (h!51943 rules!4013)) (seqFromList!5777 (_1!25248 lt!1502746))) (h!51943 rules!4013) (size!34148 (seqFromList!5777 (_1!25248 lt!1502746))) (_1!25248 lt!1502746)) (_2!25248 lt!1502746))))))

(declare-fun lt!1502745 () Unit!65681)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1647 (Regex!12719 List!46646) Unit!65681)

(assert (=> b!4224527 (= lt!1502745 (longestMatchIsAcceptedByMatchOrIsEmpty!1647 (regex!7814 (h!51943 rules!4013)) input!3561))))

(declare-fun res!1736854 () Bool)

(assert (=> b!4224527 (= res!1736854 (isEmpty!27568 (_1!25248 (findLongestMatchInner!1674 (regex!7814 (h!51943 rules!4013)) Nil!46522 (size!34147 Nil!46522) input!3561 input!3561 (size!34147 input!3561)))))))

(assert (=> b!4224527 (=> res!1736854 e!2622853)))

(assert (=> b!4224527 e!2622853))

(declare-fun lt!1502748 () Unit!65681)

(assert (=> b!4224527 (= lt!1502748 lt!1502745)))

(declare-fun lt!1502747 () Unit!65681)

(declare-fun lemmaSemiInverse!2515 (TokenValueInjection!15516 BalanceConc!27644) Unit!65681)

(assert (=> b!4224527 (= lt!1502747 (lemmaSemiInverse!2515 (transformation!7814 (h!51943 rules!4013)) (seqFromList!5777 (_1!25248 lt!1502746))))))

(assert (= (and d!1243921 c!718545) b!4224521))

(assert (= (and d!1243921 (not c!718545)) b!4224527))

(assert (= (and b!4224527 (not res!1736854)) b!4224523))

(assert (= (and d!1243921 (not res!1736856)) b!4224519))

(assert (= (and b!4224519 res!1736859) b!4224522))

(assert (= (and b!4224522 res!1736858) b!4224520))

(assert (= (and b!4224520 res!1736855) b!4224526))

(assert (= (and b!4224526 res!1736857) b!4224524))

(assert (= (and b!4224524 res!1736860) b!4224525))

(declare-fun m!4812809 () Bool)

(assert (=> b!4224526 m!4812809))

(assert (=> b!4224519 m!4812809))

(declare-fun m!4812811 () Bool)

(assert (=> b!4224519 m!4812811))

(assert (=> b!4224519 m!4812811))

(declare-fun m!4812813 () Bool)

(assert (=> b!4224519 m!4812813))

(assert (=> b!4224519 m!4812813))

(declare-fun m!4812815 () Bool)

(assert (=> b!4224519 m!4812815))

(declare-fun m!4812817 () Bool)

(assert (=> d!1243921 m!4812817))

(declare-fun m!4812819 () Bool)

(assert (=> d!1243921 m!4812819))

(declare-fun m!4812821 () Bool)

(assert (=> d!1243921 m!4812821))

(assert (=> d!1243921 m!4812689))

(declare-fun m!4812823 () Bool)

(assert (=> b!4224527 m!4812823))

(declare-fun m!4812825 () Bool)

(assert (=> b!4224527 m!4812825))

(assert (=> b!4224527 m!4812823))

(declare-fun m!4812827 () Bool)

(assert (=> b!4224527 m!4812827))

(assert (=> b!4224527 m!4812721))

(declare-fun m!4812829 () Bool)

(assert (=> b!4224527 m!4812829))

(assert (=> b!4224527 m!4812823))

(declare-fun m!4812831 () Bool)

(assert (=> b!4224527 m!4812831))

(assert (=> b!4224527 m!4812823))

(declare-fun m!4812833 () Bool)

(assert (=> b!4224527 m!4812833))

(declare-fun m!4812835 () Bool)

(assert (=> b!4224527 m!4812835))

(assert (=> b!4224527 m!4812721))

(declare-fun m!4812837 () Bool)

(assert (=> b!4224527 m!4812837))

(assert (=> b!4224527 m!4812827))

(assert (=> b!4224524 m!4812809))

(declare-fun m!4812843 () Bool)

(assert (=> b!4224524 m!4812843))

(assert (=> b!4224524 m!4812843))

(declare-fun m!4812845 () Bool)

(assert (=> b!4224524 m!4812845))

(assert (=> b!4224520 m!4812809))

(declare-fun m!4812847 () Bool)

(assert (=> b!4224520 m!4812847))

(assert (=> b!4224520 m!4812721))

(assert (=> b!4224523 m!4812827))

(assert (=> b!4224523 m!4812721))

(assert (=> b!4224523 m!4812827))

(assert (=> b!4224523 m!4812721))

(assert (=> b!4224523 m!4812829))

(declare-fun m!4812853 () Bool)

(assert (=> b!4224523 m!4812853))

(assert (=> b!4224525 m!4812809))

(declare-fun m!4812855 () Bool)

(assert (=> b!4224525 m!4812855))

(assert (=> b!4224522 m!4812809))

(assert (=> b!4224522 m!4812811))

(assert (=> b!4224522 m!4812811))

(assert (=> b!4224522 m!4812813))

(assert (=> b!4224522 m!4812813))

(declare-fun m!4812857 () Bool)

(assert (=> b!4224522 m!4812857))

(assert (=> bm!293185 d!1243921))

(declare-fun d!1243953 () Bool)

(assert (=> d!1243953 (= (inv!61187 (tag!8678 (h!51943 (t!349232 rules!4013)))) (= (mod (str.len (value!243225 (tag!8678 (h!51943 (t!349232 rules!4013))))) 2) 0))))

(assert (=> b!4224413 d!1243953))

(declare-fun d!1243955 () Bool)

(declare-fun res!1736863 () Bool)

(declare-fun e!2622859 () Bool)

(assert (=> d!1243955 (=> (not res!1736863) (not e!2622859))))

(assert (=> d!1243955 (= res!1736863 (semiInverseModEq!3397 (toChars!10397 (transformation!7814 (h!51943 (t!349232 rules!4013)))) (toValue!10538 (transformation!7814 (h!51943 (t!349232 rules!4013))))))))

(assert (=> d!1243955 (= (inv!61189 (transformation!7814 (h!51943 (t!349232 rules!4013)))) e!2622859)))

(declare-fun b!4224535 () Bool)

(assert (=> b!4224535 (= e!2622859 (equivClasses!3296 (toChars!10397 (transformation!7814 (h!51943 (t!349232 rules!4013)))) (toValue!10538 (transformation!7814 (h!51943 (t!349232 rules!4013))))))))

(assert (= (and d!1243955 res!1736863) b!4224535))

(declare-fun m!4812863 () Bool)

(assert (=> d!1243955 m!4812863))

(declare-fun m!4812865 () Bool)

(assert (=> b!4224535 m!4812865))

(assert (=> b!4224413 d!1243955))

(declare-fun d!1243959 () Bool)

(assert (=> d!1243959 true))

(declare-fun lambda!129868 () Int)

(declare-fun order!24573 () Int)

(declare-fun order!24571 () Int)

(declare-fun dynLambda!20012 (Int Int) Int)

(declare-fun dynLambda!20013 (Int Int) Int)

(assert (=> d!1243959 (< (dynLambda!20012 order!24571 (toChars!10397 (transformation!7814 r!4313))) (dynLambda!20013 order!24573 lambda!129868))))

(assert (=> d!1243959 true))

(declare-fun order!24575 () Int)

(declare-fun dynLambda!20015 (Int Int) Int)

(assert (=> d!1243959 (< (dynLambda!20015 order!24575 (toValue!10538 (transformation!7814 r!4313))) (dynLambda!20013 order!24573 lambda!129868))))

(declare-fun Forall!1582 (Int) Bool)

(assert (=> d!1243959 (= (semiInverseModEq!3397 (toChars!10397 (transformation!7814 r!4313)) (toValue!10538 (transformation!7814 r!4313))) (Forall!1582 lambda!129868))))

(declare-fun bs!597788 () Bool)

(assert (= bs!597788 d!1243959))

(declare-fun m!4812867 () Bool)

(assert (=> bs!597788 m!4812867))

(assert (=> d!1243913 d!1243959))

(declare-fun bs!597789 () Bool)

(declare-fun d!1243961 () Bool)

(assert (= bs!597789 (and d!1243961 d!1243959)))

(declare-fun lambda!129869 () Int)

(assert (=> bs!597789 (= (and (= (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toChars!10397 (transformation!7814 r!4313))) (= (toValue!10538 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 r!4313)))) (= lambda!129869 lambda!129868))))

(assert (=> d!1243961 true))

(assert (=> d!1243961 (< (dynLambda!20012 order!24571 (toChars!10397 (transformation!7814 (h!51943 rules!4013)))) (dynLambda!20013 order!24573 lambda!129869))))

(assert (=> d!1243961 true))

(assert (=> d!1243961 (< (dynLambda!20015 order!24575 (toValue!10538 (transformation!7814 (h!51943 rules!4013)))) (dynLambda!20013 order!24573 lambda!129869))))

(assert (=> d!1243961 (= (semiInverseModEq!3397 (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 (h!51943 rules!4013)))) (Forall!1582 lambda!129869))))

(declare-fun bs!597790 () Bool)

(assert (= bs!597790 d!1243961))

(declare-fun m!4812873 () Bool)

(assert (=> bs!597790 m!4812873))

(assert (=> d!1243889 d!1243961))

(declare-fun d!1243963 () Bool)

(assert (=> d!1243963 (= (get!15139 lt!1502721) (v!40901 lt!1502721))))

(assert (=> b!4224379 d!1243963))

(declare-fun d!1243967 () Bool)

(declare-fun dynLambda!20016 (Int BalanceConc!27644) TokenValue!8044)

(assert (=> d!1243967 (= (apply!10717 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721))))) (dynLambda!20016 (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun b_lambda!124497 () Bool)

(assert (=> (not b_lambda!124497) (not d!1243967)))

(declare-fun tb!253791 () Bool)

(declare-fun t!349246 () Bool)

(assert (=> (and b!4224243 (= (toValue!10538 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349246) tb!253791))

(declare-fun result!309360 () Bool)

(declare-fun inv!21 (TokenValue!8044) Bool)

(assert (=> tb!253791 (= result!309360 (inv!21 (dynLambda!20016 (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))) (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721)))))))))

(declare-fun m!4812883 () Bool)

(assert (=> tb!253791 m!4812883))

(assert (=> d!1243967 t!349246))

(declare-fun b_and!333553 () Bool)

(assert (= b_and!333525 (and (=> t!349246 result!309360) b_and!333553)))

(declare-fun t!349248 () Bool)

(declare-fun tb!253793 () Bool)

(assert (=> (and b!4224239 (= (toValue!10538 (transformation!7814 r!4313)) (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349248) tb!253793))

(declare-fun result!309364 () Bool)

(assert (= result!309364 result!309360))

(assert (=> d!1243967 t!349248))

(declare-fun b_and!333555 () Bool)

(assert (= b_and!333529 (and (=> t!349248 result!309364) b_and!333555)))

(declare-fun t!349250 () Bool)

(declare-fun tb!253795 () Bool)

(assert (=> (and b!4224414 (= (toValue!10538 (transformation!7814 (h!51943 (t!349232 rules!4013)))) (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349250) tb!253795))

(declare-fun result!309366 () Bool)

(assert (= result!309366 result!309360))

(assert (=> d!1243967 t!349250))

(declare-fun b_and!333557 () Bool)

(assert (= b_and!333537 (and (=> t!349250 result!309366) b_and!333557)))

(assert (=> d!1243967 m!4812727))

(declare-fun m!4812901 () Bool)

(assert (=> d!1243967 m!4812901))

(assert (=> b!4224379 d!1243967))

(declare-fun d!1243969 () Bool)

(declare-fun fromListB!2638 (List!46646) BalanceConc!27644)

(assert (=> d!1243969 (= (seqFromList!5777 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721)))) (fromListB!2638 (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721)))))))

(declare-fun bs!597791 () Bool)

(assert (= bs!597791 d!1243969))

(declare-fun m!4812913 () Bool)

(assert (=> bs!597791 m!4812913))

(assert (=> b!4224379 d!1243969))

(declare-fun d!1243973 () Bool)

(assert (=> d!1243973 true))

(declare-fun lambda!129872 () Int)

(declare-fun order!24577 () Int)

(declare-fun dynLambda!20017 (Int Int) Int)

(assert (=> d!1243973 (< (dynLambda!20015 order!24575 (toValue!10538 (transformation!7814 r!4313))) (dynLambda!20017 order!24577 lambda!129872))))

(declare-fun Forall2!1181 (Int) Bool)

(assert (=> d!1243973 (= (equivClasses!3296 (toChars!10397 (transformation!7814 r!4313)) (toValue!10538 (transformation!7814 r!4313))) (Forall2!1181 lambda!129872))))

(declare-fun bs!597792 () Bool)

(assert (= bs!597792 d!1243973))

(declare-fun m!4812915 () Bool)

(assert (=> bs!597792 m!4812915))

(assert (=> b!4224323 d!1243973))

(declare-fun d!1243975 () Bool)

(declare-fun list!16827 (Conc!14025) List!46646)

(assert (=> d!1243975 (= (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))) (list!16827 (c!718518 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun bs!597793 () Bool)

(assert (= bs!597793 d!1243975))

(declare-fun m!4812917 () Bool)

(assert (=> bs!597793 m!4812917))

(assert (=> b!4224381 d!1243975))

(declare-fun d!1243977 () Bool)

(declare-fun lt!1502764 () BalanceConc!27644)

(assert (=> d!1243977 (= (list!16826 lt!1502764) (originalCharacters!8194 (_1!25247 (get!15139 lt!1502721))))))

(declare-fun dynLambda!20018 (Int TokenValue!8044) BalanceConc!27644)

(assert (=> d!1243977 (= lt!1502764 (dynLambda!20018 (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))) (value!243226 (_1!25247 (get!15139 lt!1502721)))))))

(assert (=> d!1243977 (= (charsOf!5227 (_1!25247 (get!15139 lt!1502721))) lt!1502764)))

(declare-fun b_lambda!124499 () Bool)

(assert (=> (not b_lambda!124499) (not d!1243977)))

(declare-fun tb!253797 () Bool)

(declare-fun t!349252 () Bool)

(assert (=> (and b!4224243 (= (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349252) tb!253797))

(declare-fun b!4224571 () Bool)

(declare-fun e!2622876 () Bool)

(declare-fun tp!1293058 () Bool)

(declare-fun inv!61190 (Conc!14025) Bool)

(assert (=> b!4224571 (= e!2622876 (and (inv!61190 (c!718518 (dynLambda!20018 (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))) (value!243226 (_1!25247 (get!15139 lt!1502721)))))) tp!1293058))))

(declare-fun result!309368 () Bool)

(declare-fun inv!61191 (BalanceConc!27644) Bool)

(assert (=> tb!253797 (= result!309368 (and (inv!61191 (dynLambda!20018 (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))) (value!243226 (_1!25247 (get!15139 lt!1502721))))) e!2622876))))

(assert (= tb!253797 b!4224571))

(declare-fun m!4812919 () Bool)

(assert (=> b!4224571 m!4812919))

(declare-fun m!4812921 () Bool)

(assert (=> tb!253797 m!4812921))

(assert (=> d!1243977 t!349252))

(declare-fun b_and!333559 () Bool)

(assert (= b_and!333527 (and (=> t!349252 result!309368) b_and!333559)))

(declare-fun t!349254 () Bool)

(declare-fun tb!253799 () Bool)

(assert (=> (and b!4224239 (= (toChars!10397 (transformation!7814 r!4313)) (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349254) tb!253799))

(declare-fun result!309372 () Bool)

(assert (= result!309372 result!309368))

(assert (=> d!1243977 t!349254))

(declare-fun b_and!333561 () Bool)

(assert (= b_and!333531 (and (=> t!349254 result!309372) b_and!333561)))

(declare-fun t!349256 () Bool)

(declare-fun tb!253801 () Bool)

(assert (=> (and b!4224414 (= (toChars!10397 (transformation!7814 (h!51943 (t!349232 rules!4013)))) (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349256) tb!253801))

(declare-fun result!309374 () Bool)

(assert (= result!309374 result!309368))

(assert (=> d!1243977 t!349256))

(declare-fun b_and!333563 () Bool)

(assert (= b_and!333539 (and (=> t!349256 result!309374) b_and!333563)))

(declare-fun m!4812923 () Bool)

(assert (=> d!1243977 m!4812923))

(declare-fun m!4812925 () Bool)

(assert (=> d!1243977 m!4812925))

(assert (=> b!4224381 d!1243977))

(assert (=> b!4224381 d!1243963))

(declare-fun d!1243979 () Bool)

(declare-fun lt!1502765 () Bool)

(assert (=> d!1243979 (= lt!1502765 (select (content!7307 rules!4013) (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))

(declare-fun e!2622878 () Bool)

(assert (=> d!1243979 (= lt!1502765 e!2622878)))

(declare-fun res!1736879 () Bool)

(assert (=> d!1243979 (=> (not res!1736879) (not e!2622878))))

(assert (=> d!1243979 (= res!1736879 ((_ is Cons!46523) rules!4013))))

(assert (=> d!1243979 (= (contains!9637 rules!4013 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) lt!1502765)))

(declare-fun b!4224572 () Bool)

(declare-fun e!2622877 () Bool)

(assert (=> b!4224572 (= e!2622878 e!2622877)))

(declare-fun res!1736880 () Bool)

(assert (=> b!4224572 (=> res!1736880 e!2622877)))

(assert (=> b!4224572 (= res!1736880 (= (h!51943 rules!4013) (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))

(declare-fun b!4224573 () Bool)

(assert (=> b!4224573 (= e!2622877 (contains!9637 (t!349232 rules!4013) (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))

(assert (= (and d!1243979 res!1736879) b!4224572))

(assert (= (and b!4224572 (not res!1736880)) b!4224573))

(assert (=> d!1243979 m!4812615))

(declare-fun m!4812927 () Bool)

(assert (=> d!1243979 m!4812927))

(declare-fun m!4812929 () Bool)

(assert (=> b!4224573 m!4812929))

(assert (=> b!4224380 d!1243979))

(assert (=> b!4224380 d!1243963))

(declare-fun b!4224592 () Bool)

(declare-fun e!2622898 () Bool)

(declare-fun call!293202 () Bool)

(assert (=> b!4224592 (= e!2622898 call!293202)))

(declare-fun b!4224593 () Bool)

(declare-fun res!1736891 () Bool)

(declare-fun e!2622895 () Bool)

(assert (=> b!4224593 (=> res!1736891 e!2622895)))

(assert (=> b!4224593 (= res!1736891 (not ((_ is Concat!20764) (regex!7814 r!4313))))))

(declare-fun e!2622893 () Bool)

(assert (=> b!4224593 (= e!2622893 e!2622895)))

(declare-fun bm!293197 () Bool)

(declare-fun call!293203 () Bool)

(assert (=> bm!293197 (= call!293203 call!293202)))

(declare-fun bm!293198 () Bool)

(declare-fun call!293204 () Bool)

(declare-fun c!718555 () Bool)

(assert (=> bm!293198 (= call!293204 (validRegex!5771 (ite c!718555 (regTwo!25951 (regex!7814 r!4313)) (regOne!25950 (regex!7814 r!4313)))))))

(declare-fun b!4224595 () Bool)

(declare-fun e!2622899 () Bool)

(assert (=> b!4224595 (= e!2622895 e!2622899)))

(declare-fun res!1736892 () Bool)

(assert (=> b!4224595 (=> (not res!1736892) (not e!2622899))))

(assert (=> b!4224595 (= res!1736892 call!293204)))

(declare-fun b!4224596 () Bool)

(declare-fun e!2622894 () Bool)

(declare-fun e!2622896 () Bool)

(assert (=> b!4224596 (= e!2622894 e!2622896)))

(declare-fun c!718554 () Bool)

(assert (=> b!4224596 (= c!718554 ((_ is Star!12719) (regex!7814 r!4313)))))

(declare-fun b!4224597 () Bool)

(assert (=> b!4224597 (= e!2622896 e!2622898)))

(declare-fun res!1736895 () Bool)

(assert (=> b!4224597 (= res!1736895 (not (nullable!4484 (reg!13048 (regex!7814 r!4313)))))))

(assert (=> b!4224597 (=> (not res!1736895) (not e!2622898))))

(declare-fun b!4224598 () Bool)

(declare-fun res!1736893 () Bool)

(declare-fun e!2622897 () Bool)

(assert (=> b!4224598 (=> (not res!1736893) (not e!2622897))))

(assert (=> b!4224598 (= res!1736893 call!293203)))

(assert (=> b!4224598 (= e!2622893 e!2622897)))

(declare-fun b!4224599 () Bool)

(assert (=> b!4224599 (= e!2622897 call!293204)))

(declare-fun bm!293199 () Bool)

(assert (=> bm!293199 (= call!293202 (validRegex!5771 (ite c!718554 (reg!13048 (regex!7814 r!4313)) (ite c!718555 (regOne!25951 (regex!7814 r!4313)) (regTwo!25950 (regex!7814 r!4313))))))))

(declare-fun b!4224600 () Bool)

(assert (=> b!4224600 (= e!2622896 e!2622893)))

(assert (=> b!4224600 (= c!718555 ((_ is Union!12719) (regex!7814 r!4313)))))

(declare-fun d!1243981 () Bool)

(declare-fun res!1736894 () Bool)

(assert (=> d!1243981 (=> res!1736894 e!2622894)))

(assert (=> d!1243981 (= res!1736894 ((_ is ElementMatch!12719) (regex!7814 r!4313)))))

(assert (=> d!1243981 (= (validRegex!5771 (regex!7814 r!4313)) e!2622894)))

(declare-fun b!4224594 () Bool)

(assert (=> b!4224594 (= e!2622899 call!293203)))

(assert (= (and d!1243981 (not res!1736894)) b!4224596))

(assert (= (and b!4224596 c!718554) b!4224597))

(assert (= (and b!4224596 (not c!718554)) b!4224600))

(assert (= (and b!4224597 res!1736895) b!4224592))

(assert (= (and b!4224600 c!718555) b!4224598))

(assert (= (and b!4224600 (not c!718555)) b!4224593))

(assert (= (and b!4224598 res!1736893) b!4224599))

(assert (= (and b!4224593 (not res!1736891)) b!4224595))

(assert (= (and b!4224595 res!1736892) b!4224594))

(assert (= (or b!4224598 b!4224594) bm!293197))

(assert (= (or b!4224599 b!4224595) bm!293198))

(assert (= (or b!4224592 bm!293197) bm!293199))

(declare-fun m!4812931 () Bool)

(assert (=> bm!293198 m!4812931))

(declare-fun m!4812933 () Bool)

(assert (=> b!4224597 m!4812933))

(declare-fun m!4812935 () Bool)

(assert (=> bm!293199 m!4812935))

(assert (=> d!1243879 d!1243981))

(declare-fun d!1243983 () Bool)

(declare-fun res!1736900 () Bool)

(declare-fun e!2622904 () Bool)

(assert (=> d!1243983 (=> res!1736900 e!2622904)))

(assert (=> d!1243983 (= res!1736900 ((_ is Nil!46523) rules!4013))))

(assert (=> d!1243983 (= (forall!8504 rules!4013 lambda!129859) e!2622904)))

(declare-fun b!4224605 () Bool)

(declare-fun e!2622905 () Bool)

(assert (=> b!4224605 (= e!2622904 e!2622905)))

(declare-fun res!1736901 () Bool)

(assert (=> b!4224605 (=> (not res!1736901) (not e!2622905))))

(declare-fun dynLambda!20020 (Int Rule!15428) Bool)

(assert (=> b!4224605 (= res!1736901 (dynLambda!20020 lambda!129859 (h!51943 rules!4013)))))

(declare-fun b!4224606 () Bool)

(assert (=> b!4224606 (= e!2622905 (forall!8504 (t!349232 rules!4013) lambda!129859))))

(assert (= (and d!1243983 (not res!1736900)) b!4224605))

(assert (= (and b!4224605 res!1736901) b!4224606))

(declare-fun b_lambda!124501 () Bool)

(assert (=> (not b_lambda!124501) (not b!4224605)))

(declare-fun m!4812937 () Bool)

(assert (=> b!4224605 m!4812937))

(declare-fun m!4812939 () Bool)

(assert (=> b!4224606 m!4812939))

(assert (=> d!1243891 d!1243983))

(assert (=> d!1243881 d!1243879))

(declare-fun d!1243985 () Bool)

(assert (=> d!1243985 (ruleValid!3522 thiss!26728 r!4313)))

(assert (=> d!1243985 true))

(declare-fun _$65!1647 () Unit!65681)

(assert (=> d!1243985 (= (choose!25878 thiss!26728 r!4313 rules!4013) _$65!1647)))

(declare-fun bs!597794 () Bool)

(assert (= bs!597794 d!1243985))

(assert (=> bs!597794 m!4812603))

(assert (=> d!1243881 d!1243985))

(assert (=> d!1243881 d!1243877))

(declare-fun b!4224635 () Bool)

(declare-fun e!2622926 () Bool)

(declare-fun e!2622922 () Bool)

(assert (=> b!4224635 (= e!2622926 e!2622922)))

(declare-fun c!718563 () Bool)

(assert (=> b!4224635 (= c!718563 ((_ is EmptyLang!12719) (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun b!4224636 () Bool)

(declare-fun res!1736921 () Bool)

(declare-fun e!2622920 () Bool)

(assert (=> b!4224636 (=> (not res!1736921) (not e!2622920))))

(declare-fun tail!6809 (List!46646) List!46646)

(assert (=> b!4224636 (= res!1736921 (isEmpty!27568 (tail!6809 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))))))))

(declare-fun b!4224637 () Bool)

(declare-fun lt!1502768 () Bool)

(declare-fun call!293207 () Bool)

(assert (=> b!4224637 (= e!2622926 (= lt!1502768 call!293207))))

(declare-fun b!4224638 () Bool)

(declare-fun res!1736919 () Bool)

(declare-fun e!2622924 () Bool)

(assert (=> b!4224638 (=> res!1736919 e!2622924)))

(assert (=> b!4224638 (= res!1736919 (not (isEmpty!27568 (tail!6809 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))))

(declare-fun b!4224639 () Bool)

(declare-fun e!2622921 () Bool)

(declare-fun e!2622923 () Bool)

(assert (=> b!4224639 (= e!2622921 e!2622923)))

(declare-fun res!1736923 () Bool)

(assert (=> b!4224639 (=> (not res!1736923) (not e!2622923))))

(assert (=> b!4224639 (= res!1736923 (not lt!1502768))))

(declare-fun b!4224640 () Bool)

(declare-fun head!8962 (List!46646) C!25632)

(assert (=> b!4224640 (= e!2622924 (not (= (head!8962 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (c!718519 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))))))))

(declare-fun b!4224641 () Bool)

(declare-fun res!1736918 () Bool)

(assert (=> b!4224641 (=> (not res!1736918) (not e!2622920))))

(assert (=> b!4224641 (= res!1736918 (not call!293207))))

(declare-fun b!4224642 () Bool)

(declare-fun res!1736925 () Bool)

(assert (=> b!4224642 (=> res!1736925 e!2622921)))

(assert (=> b!4224642 (= res!1736925 e!2622920)))

(declare-fun res!1736922 () Bool)

(assert (=> b!4224642 (=> (not res!1736922) (not e!2622920))))

(assert (=> b!4224642 (= res!1736922 lt!1502768)))

(declare-fun b!4224643 () Bool)

(declare-fun e!2622925 () Bool)

(declare-fun derivativeStep!3837 (Regex!12719 C!25632) Regex!12719)

(assert (=> b!4224643 (= e!2622925 (matchR!6396 (derivativeStep!3837 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) (head!8962 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))))) (tail!6809 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))))))))

(declare-fun d!1243987 () Bool)

(assert (=> d!1243987 e!2622926))

(declare-fun c!718562 () Bool)

(assert (=> d!1243987 (= c!718562 ((_ is EmptyExpr!12719) (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))))))

(assert (=> d!1243987 (= lt!1502768 e!2622925)))

(declare-fun c!718564 () Bool)

(assert (=> d!1243987 (= c!718564 (isEmpty!27568 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))

(assert (=> d!1243987 (validRegex!5771 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))

(assert (=> d!1243987 (= (matchR!6396 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))) (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) lt!1502768)))

(declare-fun bm!293202 () Bool)

(assert (=> bm!293202 (= call!293207 (isEmpty!27568 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun b!4224644 () Bool)

(assert (=> b!4224644 (= e!2622925 (nullable!4484 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721))))))))

(declare-fun b!4224645 () Bool)

(assert (=> b!4224645 (= e!2622922 (not lt!1502768))))

(declare-fun b!4224646 () Bool)

(declare-fun res!1736924 () Bool)

(assert (=> b!4224646 (=> res!1736924 e!2622921)))

(assert (=> b!4224646 (= res!1736924 (not ((_ is ElementMatch!12719) (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))))

(assert (=> b!4224646 (= e!2622922 e!2622921)))

(declare-fun b!4224647 () Bool)

(assert (=> b!4224647 (= e!2622920 (= (head!8962 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (c!718519 (regex!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))))))

(declare-fun b!4224648 () Bool)

(assert (=> b!4224648 (= e!2622923 e!2622924)))

(declare-fun res!1736920 () Bool)

(assert (=> b!4224648 (=> res!1736920 e!2622924)))

(assert (=> b!4224648 (= res!1736920 call!293207)))

(assert (= (and d!1243987 c!718564) b!4224644))

(assert (= (and d!1243987 (not c!718564)) b!4224643))

(assert (= (and d!1243987 c!718562) b!4224637))

(assert (= (and d!1243987 (not c!718562)) b!4224635))

(assert (= (and b!4224635 c!718563) b!4224645))

(assert (= (and b!4224635 (not c!718563)) b!4224646))

(assert (= (and b!4224646 (not res!1736924)) b!4224642))

(assert (= (and b!4224642 res!1736922) b!4224641))

(assert (= (and b!4224641 res!1736918) b!4224636))

(assert (= (and b!4224636 res!1736921) b!4224647))

(assert (= (and b!4224642 (not res!1736925)) b!4224639))

(assert (= (and b!4224639 res!1736923) b!4224648))

(assert (= (and b!4224648 (not res!1736920)) b!4224638))

(assert (= (and b!4224638 (not res!1736919)) b!4224640))

(assert (= (or b!4224637 b!4224641 b!4224648) bm!293202))

(assert (=> bm!293202 m!4812713))

(declare-fun m!4812941 () Bool)

(assert (=> bm!293202 m!4812941))

(assert (=> b!4224636 m!4812713))

(declare-fun m!4812943 () Bool)

(assert (=> b!4224636 m!4812943))

(assert (=> b!4224636 m!4812943))

(declare-fun m!4812945 () Bool)

(assert (=> b!4224636 m!4812945))

(assert (=> b!4224643 m!4812713))

(declare-fun m!4812947 () Bool)

(assert (=> b!4224643 m!4812947))

(assert (=> b!4224643 m!4812947))

(declare-fun m!4812949 () Bool)

(assert (=> b!4224643 m!4812949))

(assert (=> b!4224643 m!4812713))

(assert (=> b!4224643 m!4812943))

(assert (=> b!4224643 m!4812949))

(assert (=> b!4224643 m!4812943))

(declare-fun m!4812951 () Bool)

(assert (=> b!4224643 m!4812951))

(assert (=> b!4224647 m!4812713))

(assert (=> b!4224647 m!4812947))

(assert (=> b!4224638 m!4812713))

(assert (=> b!4224638 m!4812943))

(assert (=> b!4224638 m!4812943))

(assert (=> b!4224638 m!4812945))

(assert (=> b!4224640 m!4812713))

(assert (=> b!4224640 m!4812947))

(assert (=> d!1243987 m!4812713))

(assert (=> d!1243987 m!4812941))

(declare-fun m!4812953 () Bool)

(assert (=> d!1243987 m!4812953))

(declare-fun m!4812955 () Bool)

(assert (=> b!4224644 m!4812955))

(assert (=> b!4224376 d!1243987))

(assert (=> b!4224376 d!1243963))

(assert (=> b!4224376 d!1243975))

(assert (=> b!4224376 d!1243977))

(declare-fun d!1243989 () Bool)

(declare-fun res!1736926 () Bool)

(declare-fun e!2622927 () Bool)

(assert (=> d!1243989 (=> (not res!1736926) (not e!2622927))))

(assert (=> d!1243989 (= res!1736926 (validRegex!5771 (regex!7814 (h!51943 rules!4013))))))

(assert (=> d!1243989 (= (ruleValid!3522 thiss!26728 (h!51943 rules!4013)) e!2622927)))

(declare-fun b!4224649 () Bool)

(declare-fun res!1736927 () Bool)

(assert (=> b!4224649 (=> (not res!1736927) (not e!2622927))))

(assert (=> b!4224649 (= res!1736927 (not (nullable!4484 (regex!7814 (h!51943 rules!4013)))))))

(declare-fun b!4224650 () Bool)

(assert (=> b!4224650 (= e!2622927 (not (= (tag!8678 (h!51943 rules!4013)) (String!54091 ""))))))

(assert (= (and d!1243989 res!1736926) b!4224649))

(assert (= (and b!4224649 res!1736927) b!4224650))

(declare-fun m!4812957 () Bool)

(assert (=> d!1243989 m!4812957))

(declare-fun m!4812959 () Bool)

(assert (=> b!4224649 m!4812959))

(assert (=> b!4224317 d!1243989))

(declare-fun bs!597795 () Bool)

(declare-fun d!1243991 () Bool)

(assert (= bs!597795 (and d!1243991 d!1243891)))

(declare-fun lambda!129873 () Int)

(assert (=> bs!597795 (= lambda!129873 lambda!129859)))

(assert (=> d!1243991 true))

(declare-fun lt!1502769 () Bool)

(assert (=> d!1243991 (= lt!1502769 (forall!8504 (t!349232 rules!4013) lambda!129873))))

(declare-fun e!2622928 () Bool)

(assert (=> d!1243991 (= lt!1502769 e!2622928)))

(declare-fun res!1736929 () Bool)

(assert (=> d!1243991 (=> res!1736929 e!2622928)))

(assert (=> d!1243991 (= res!1736929 (not ((_ is Cons!46523) (t!349232 rules!4013))))))

(assert (=> d!1243991 (= (rulesValidInductive!2918 thiss!26728 (t!349232 rules!4013)) lt!1502769)))

(declare-fun b!4224651 () Bool)

(declare-fun e!2622929 () Bool)

(assert (=> b!4224651 (= e!2622928 e!2622929)))

(declare-fun res!1736928 () Bool)

(assert (=> b!4224651 (=> (not res!1736928) (not e!2622929))))

(assert (=> b!4224651 (= res!1736928 (ruleValid!3522 thiss!26728 (h!51943 (t!349232 rules!4013))))))

(declare-fun b!4224652 () Bool)

(assert (=> b!4224652 (= e!2622929 (rulesValidInductive!2918 thiss!26728 (t!349232 (t!349232 rules!4013))))))

(assert (= (and d!1243991 (not res!1736929)) b!4224651))

(assert (= (and b!4224651 res!1736928) b!4224652))

(declare-fun m!4812961 () Bool)

(assert (=> d!1243991 m!4812961))

(declare-fun m!4812963 () Bool)

(assert (=> b!4224651 m!4812963))

(declare-fun m!4812965 () Bool)

(assert (=> b!4224652 m!4812965))

(assert (=> b!4224318 d!1243991))

(declare-fun d!1243993 () Bool)

(declare-fun nullableFct!1229 (Regex!12719) Bool)

(assert (=> d!1243993 (= (nullable!4484 (regex!7814 r!4313)) (nullableFct!1229 (regex!7814 r!4313)))))

(declare-fun bs!597796 () Bool)

(assert (= bs!597796 d!1243993))

(declare-fun m!4812967 () Bool)

(assert (=> bs!597796 m!4812967))

(assert (=> b!4224259 d!1243993))

(declare-fun d!1243995 () Bool)

(assert (=> d!1243995 (= (isEmpty!27566 lt!1502721) (not ((_ is Some!9999) lt!1502721)))))

(assert (=> d!1243917 d!1243995))

(declare-fun b!4224664 () Bool)

(declare-fun e!2622938 () Bool)

(assert (=> b!4224664 (= e!2622938 (>= (size!34147 input!3561) (size!34147 input!3561)))))

(declare-fun b!4224663 () Bool)

(declare-fun e!2622937 () Bool)

(assert (=> b!4224663 (= e!2622937 (isPrefix!4663 (tail!6809 input!3561) (tail!6809 input!3561)))))

(declare-fun d!1243997 () Bool)

(assert (=> d!1243997 e!2622938))

(declare-fun res!1736940 () Bool)

(assert (=> d!1243997 (=> res!1736940 e!2622938)))

(declare-fun lt!1502772 () Bool)

(assert (=> d!1243997 (= res!1736940 (not lt!1502772))))

(declare-fun e!2622936 () Bool)

(assert (=> d!1243997 (= lt!1502772 e!2622936)))

(declare-fun res!1736939 () Bool)

(assert (=> d!1243997 (=> res!1736939 e!2622936)))

(assert (=> d!1243997 (= res!1736939 ((_ is Nil!46522) input!3561))))

(assert (=> d!1243997 (= (isPrefix!4663 input!3561 input!3561) lt!1502772)))

(declare-fun b!4224662 () Bool)

(declare-fun res!1736941 () Bool)

(assert (=> b!4224662 (=> (not res!1736941) (not e!2622937))))

(assert (=> b!4224662 (= res!1736941 (= (head!8962 input!3561) (head!8962 input!3561)))))

(declare-fun b!4224661 () Bool)

(assert (=> b!4224661 (= e!2622936 e!2622937)))

(declare-fun res!1736938 () Bool)

(assert (=> b!4224661 (=> (not res!1736938) (not e!2622937))))

(assert (=> b!4224661 (= res!1736938 (not ((_ is Nil!46522) input!3561)))))

(assert (= (and d!1243997 (not res!1736939)) b!4224661))

(assert (= (and b!4224661 res!1736938) b!4224662))

(assert (= (and b!4224662 res!1736941) b!4224663))

(assert (= (and d!1243997 (not res!1736940)) b!4224664))

(assert (=> b!4224664 m!4812721))

(assert (=> b!4224664 m!4812721))

(declare-fun m!4812969 () Bool)

(assert (=> b!4224663 m!4812969))

(assert (=> b!4224663 m!4812969))

(assert (=> b!4224663 m!4812969))

(assert (=> b!4224663 m!4812969))

(declare-fun m!4812971 () Bool)

(assert (=> b!4224663 m!4812971))

(declare-fun m!4812973 () Bool)

(assert (=> b!4224662 m!4812973))

(assert (=> b!4224662 m!4812973))

(assert (=> d!1243917 d!1243997))

(declare-fun d!1243999 () Bool)

(assert (=> d!1243999 (isPrefix!4663 input!3561 input!3561)))

(declare-fun lt!1502775 () Unit!65681)

(declare-fun choose!25879 (List!46646 List!46646) Unit!65681)

(assert (=> d!1243999 (= lt!1502775 (choose!25879 input!3561 input!3561))))

(assert (=> d!1243999 (= (lemmaIsPrefixRefl!3080 input!3561 input!3561) lt!1502775)))

(declare-fun bs!597797 () Bool)

(assert (= bs!597797 d!1243999))

(assert (=> bs!597797 m!4812705))

(declare-fun m!4812975 () Bool)

(assert (=> bs!597797 m!4812975))

(assert (=> d!1243917 d!1243999))

(assert (=> d!1243917 d!1243891))

(declare-fun bs!597798 () Bool)

(declare-fun d!1244001 () Bool)

(assert (= bs!597798 (and d!1244001 d!1243973)))

(declare-fun lambda!129874 () Int)

(assert (=> bs!597798 (= (= (toValue!10538 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 r!4313))) (= lambda!129874 lambda!129872))))

(assert (=> d!1244001 true))

(assert (=> d!1244001 (< (dynLambda!20015 order!24575 (toValue!10538 (transformation!7814 (h!51943 rules!4013)))) (dynLambda!20017 order!24577 lambda!129874))))

(assert (=> d!1244001 (= (equivClasses!3296 (toChars!10397 (transformation!7814 (h!51943 rules!4013))) (toValue!10538 (transformation!7814 (h!51943 rules!4013)))) (Forall2!1181 lambda!129874))))

(declare-fun bs!597799 () Bool)

(assert (= bs!597799 d!1244001))

(declare-fun m!4812977 () Bool)

(assert (=> bs!597799 m!4812977))

(assert (=> b!4224263 d!1244001))

(declare-fun d!1244003 () Bool)

(assert (=> d!1244003 (= (isDefined!7418 lt!1502721) (not (isEmpty!27566 lt!1502721)))))

(declare-fun bs!597800 () Bool)

(assert (= bs!597800 d!1244003))

(assert (=> bs!597800 m!4812703))

(assert (=> b!4224382 d!1244003))

(declare-fun d!1244005 () Bool)

(declare-fun c!718569 () Bool)

(assert (=> d!1244005 (= c!718569 ((_ is Nil!46523) rules!4013))))

(declare-fun e!2622945 () (InoxSet Rule!15428))

(assert (=> d!1244005 (= (content!7307 rules!4013) e!2622945)))

(declare-fun b!4224675 () Bool)

(assert (=> b!4224675 (= e!2622945 ((as const (Array Rule!15428 Bool)) false))))

(declare-fun b!4224676 () Bool)

(assert (=> b!4224676 (= e!2622945 ((_ map or) (store ((as const (Array Rule!15428 Bool)) false) (h!51943 rules!4013) true) (content!7307 (t!349232 rules!4013))))))

(assert (= (and d!1244005 c!718569) b!4224675))

(assert (= (and d!1244005 (not c!718569)) b!4224676))

(declare-fun m!4812979 () Bool)

(assert (=> b!4224676 m!4812979))

(declare-fun m!4812981 () Bool)

(assert (=> b!4224676 m!4812981))

(assert (=> d!1243877 d!1244005))

(declare-fun d!1244007 () Bool)

(declare-fun lt!1502788 () Int)

(assert (=> d!1244007 (>= lt!1502788 0)))

(declare-fun e!2622952 () Int)

(assert (=> d!1244007 (= lt!1502788 e!2622952)))

(declare-fun c!718572 () Bool)

(assert (=> d!1244007 (= c!718572 ((_ is Nil!46522) (_2!25247 (get!15139 lt!1502721))))))

(assert (=> d!1244007 (= (size!34147 (_2!25247 (get!15139 lt!1502721))) lt!1502788)))

(declare-fun b!4224693 () Bool)

(assert (=> b!4224693 (= e!2622952 0)))

(declare-fun b!4224694 () Bool)

(assert (=> b!4224694 (= e!2622952 (+ 1 (size!34147 (t!349231 (_2!25247 (get!15139 lt!1502721))))))))

(assert (= (and d!1244007 c!718572) b!4224693))

(assert (= (and d!1244007 (not c!718572)) b!4224694))

(declare-fun m!4812983 () Bool)

(assert (=> b!4224694 m!4812983))

(assert (=> b!4224383 d!1244007))

(assert (=> b!4224383 d!1243963))

(declare-fun d!1244009 () Bool)

(declare-fun lt!1502789 () Int)

(assert (=> d!1244009 (>= lt!1502789 0)))

(declare-fun e!2622953 () Int)

(assert (=> d!1244009 (= lt!1502789 e!2622953)))

(declare-fun c!718573 () Bool)

(assert (=> d!1244009 (= c!718573 ((_ is Nil!46522) input!3561))))

(assert (=> d!1244009 (= (size!34147 input!3561) lt!1502789)))

(declare-fun b!4224695 () Bool)

(assert (=> b!4224695 (= e!2622953 0)))

(declare-fun b!4224696 () Bool)

(assert (=> b!4224696 (= e!2622953 (+ 1 (size!34147 (t!349231 input!3561))))))

(assert (= (and d!1244009 c!718573) b!4224695))

(assert (= (and d!1244009 (not c!718573)) b!4224696))

(declare-fun m!4812985 () Bool)

(assert (=> b!4224696 m!4812985))

(assert (=> b!4224383 d!1244009))

(declare-fun d!1244011 () Bool)

(declare-fun lt!1502790 () Bool)

(assert (=> d!1244011 (= lt!1502790 (select (content!7307 (t!349232 rules!4013)) r!4313))))

(declare-fun e!2622955 () Bool)

(assert (=> d!1244011 (= lt!1502790 e!2622955)))

(declare-fun res!1736956 () Bool)

(assert (=> d!1244011 (=> (not res!1736956) (not e!2622955))))

(assert (=> d!1244011 (= res!1736956 ((_ is Cons!46523) (t!349232 rules!4013)))))

(assert (=> d!1244011 (= (contains!9637 (t!349232 rules!4013) r!4313) lt!1502790)))

(declare-fun b!4224697 () Bool)

(declare-fun e!2622954 () Bool)

(assert (=> b!4224697 (= e!2622955 e!2622954)))

(declare-fun res!1736957 () Bool)

(assert (=> b!4224697 (=> res!1736957 e!2622954)))

(assert (=> b!4224697 (= res!1736957 (= (h!51943 (t!349232 rules!4013)) r!4313))))

(declare-fun b!4224698 () Bool)

(assert (=> b!4224698 (= e!2622954 (contains!9637 (t!349232 (t!349232 rules!4013)) r!4313))))

(assert (= (and d!1244011 res!1736956) b!4224697))

(assert (= (and b!4224697 (not res!1736957)) b!4224698))

(assert (=> d!1244011 m!4812981))

(declare-fun m!4812987 () Bool)

(assert (=> d!1244011 m!4812987))

(declare-fun m!4812989 () Bool)

(assert (=> b!4224698 m!4812989))

(assert (=> b!4224254 d!1244011))

(declare-fun d!1244013 () Bool)

(declare-fun e!2622965 () Bool)

(assert (=> d!1244013 e!2622965))

(declare-fun res!1736969 () Bool)

(assert (=> d!1244013 (=> (not res!1736969) (not e!2622965))))

(declare-fun lt!1502798 () List!46646)

(declare-fun content!7309 (List!46646) (InoxSet C!25632))

(assert (=> d!1244013 (= res!1736969 (= (content!7309 lt!1502798) ((_ map or) (content!7309 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (content!7309 (_2!25247 (get!15139 lt!1502721))))))))

(declare-fun e!2622964 () List!46646)

(assert (=> d!1244013 (= lt!1502798 e!2622964)))

(declare-fun c!718577 () Bool)

(assert (=> d!1244013 (= c!718577 ((_ is Nil!46522) (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))))))

(assert (=> d!1244013 (= (++!11878 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))) (_2!25247 (get!15139 lt!1502721))) lt!1502798)))

(declare-fun b!4224718 () Bool)

(declare-fun res!1736970 () Bool)

(assert (=> b!4224718 (=> (not res!1736970) (not e!2622965))))

(assert (=> b!4224718 (= res!1736970 (= (size!34147 lt!1502798) (+ (size!34147 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (size!34147 (_2!25247 (get!15139 lt!1502721))))))))

(declare-fun b!4224717 () Bool)

(assert (=> b!4224717 (= e!2622964 (Cons!46522 (h!51942 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (++!11878 (t!349231 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721))))) (_2!25247 (get!15139 lt!1502721)))))))

(declare-fun b!4224716 () Bool)

(assert (=> b!4224716 (= e!2622964 (_2!25247 (get!15139 lt!1502721)))))

(declare-fun b!4224719 () Bool)

(assert (=> b!4224719 (= e!2622965 (or (not (= (_2!25247 (get!15139 lt!1502721)) Nil!46522)) (= lt!1502798 (list!16826 (charsOf!5227 (_1!25247 (get!15139 lt!1502721)))))))))

(assert (= (and d!1244013 c!718577) b!4224716))

(assert (= (and d!1244013 (not c!718577)) b!4224717))

(assert (= (and d!1244013 res!1736969) b!4224718))

(assert (= (and b!4224718 res!1736970) b!4224719))

(declare-fun m!4812991 () Bool)

(assert (=> d!1244013 m!4812991))

(assert (=> d!1244013 m!4812713))

(declare-fun m!4812993 () Bool)

(assert (=> d!1244013 m!4812993))

(declare-fun m!4812995 () Bool)

(assert (=> d!1244013 m!4812995))

(declare-fun m!4812997 () Bool)

(assert (=> b!4224718 m!4812997))

(assert (=> b!4224718 m!4812713))

(declare-fun m!4812999 () Bool)

(assert (=> b!4224718 m!4812999))

(assert (=> b!4224718 m!4812719))

(declare-fun m!4813001 () Bool)

(assert (=> b!4224717 m!4813001))

(assert (=> b!4224384 d!1244013))

(assert (=> b!4224384 d!1243975))

(assert (=> b!4224384 d!1243977))

(assert (=> b!4224384 d!1243963))

(declare-fun b!4224722 () Bool)

(declare-fun b_free!124331 () Bool)

(declare-fun b_next!125035 () Bool)

(assert (=> b!4224722 (= b_free!124331 (not b_next!125035))))

(declare-fun tb!253803 () Bool)

(declare-fun t!349258 () Bool)

(assert (=> (and b!4224722 (= (toValue!10538 (transformation!7814 (h!51943 (t!349232 (t!349232 rules!4013))))) (toValue!10538 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349258) tb!253803))

(declare-fun result!309376 () Bool)

(assert (= result!309376 result!309360))

(assert (=> d!1243967 t!349258))

(declare-fun tp!1293060 () Bool)

(declare-fun b_and!333565 () Bool)

(assert (=> b!4224722 (= tp!1293060 (and (=> t!349258 result!309376) b_and!333565))))

(declare-fun b_free!124333 () Bool)

(declare-fun b_next!125037 () Bool)

(assert (=> b!4224722 (= b_free!124333 (not b_next!125037))))

(declare-fun t!349260 () Bool)

(declare-fun tb!253805 () Bool)

(assert (=> (and b!4224722 (= (toChars!10397 (transformation!7814 (h!51943 (t!349232 (t!349232 rules!4013))))) (toChars!10397 (transformation!7814 (rule!10956 (_1!25247 (get!15139 lt!1502721)))))) t!349260) tb!253805))

(declare-fun result!309378 () Bool)

(assert (= result!309378 result!309368))

(assert (=> d!1243977 t!349260))

(declare-fun tp!1293062 () Bool)

(declare-fun b_and!333567 () Bool)

(assert (=> b!4224722 (= tp!1293062 (and (=> t!349260 result!309378) b_and!333567))))

(declare-fun e!2622967 () Bool)

(assert (=> b!4224722 (= e!2622967 (and tp!1293060 tp!1293062))))

(declare-fun b!4224721 () Bool)

(declare-fun e!2622969 () Bool)

(declare-fun tp!1293059 () Bool)

(assert (=> b!4224721 (= e!2622969 (and tp!1293059 (inv!61187 (tag!8678 (h!51943 (t!349232 (t!349232 rules!4013))))) (inv!61189 (transformation!7814 (h!51943 (t!349232 (t!349232 rules!4013))))) e!2622967))))

(declare-fun b!4224720 () Bool)

(declare-fun e!2622966 () Bool)

(declare-fun tp!1293061 () Bool)

(assert (=> b!4224720 (= e!2622966 (and e!2622969 tp!1293061))))

(assert (=> b!4224412 (= tp!1293046 e!2622966)))

(assert (= b!4224721 b!4224722))

(assert (= b!4224720 b!4224721))

(assert (= (and b!4224412 ((_ is Cons!46523) (t!349232 (t!349232 rules!4013)))) b!4224720))

(declare-fun m!4813007 () Bool)

(assert (=> b!4224721 m!4813007))

(declare-fun m!4813009 () Bool)

(assert (=> b!4224721 m!4813009))

(declare-fun b!4224726 () Bool)

(declare-fun e!2622970 () Bool)

(declare-fun tp!1293067 () Bool)

(declare-fun tp!1293066 () Bool)

(assert (=> b!4224726 (= e!2622970 (and tp!1293067 tp!1293066))))

(declare-fun b!4224725 () Bool)

(declare-fun tp!1293064 () Bool)

(assert (=> b!4224725 (= e!2622970 tp!1293064)))

(assert (=> b!4224402 (= tp!1293032 e!2622970)))

(declare-fun b!4224723 () Bool)

(assert (=> b!4224723 (= e!2622970 tp_is_empty!22401)))

(declare-fun b!4224724 () Bool)

(declare-fun tp!1293063 () Bool)

(declare-fun tp!1293065 () Bool)

(assert (=> b!4224724 (= e!2622970 (and tp!1293063 tp!1293065))))

(assert (= (and b!4224402 ((_ is ElementMatch!12719) (reg!13048 (regex!7814 (h!51943 rules!4013))))) b!4224723))

(assert (= (and b!4224402 ((_ is Concat!20764) (reg!13048 (regex!7814 (h!51943 rules!4013))))) b!4224724))

(assert (= (and b!4224402 ((_ is Star!12719) (reg!13048 (regex!7814 (h!51943 rules!4013))))) b!4224725))

(assert (= (and b!4224402 ((_ is Union!12719) (reg!13048 (regex!7814 (h!51943 rules!4013))))) b!4224726))

(declare-fun b!4224730 () Bool)

(declare-fun e!2622971 () Bool)

(declare-fun tp!1293072 () Bool)

(declare-fun tp!1293071 () Bool)

(assert (=> b!4224730 (= e!2622971 (and tp!1293072 tp!1293071))))

(declare-fun b!4224729 () Bool)

(declare-fun tp!1293069 () Bool)

(assert (=> b!4224729 (= e!2622971 tp!1293069)))

(assert (=> b!4224413 (= tp!1293044 e!2622971)))

(declare-fun b!4224727 () Bool)

(assert (=> b!4224727 (= e!2622971 tp_is_empty!22401)))

(declare-fun b!4224728 () Bool)

(declare-fun tp!1293068 () Bool)

(declare-fun tp!1293070 () Bool)

(assert (=> b!4224728 (= e!2622971 (and tp!1293068 tp!1293070))))

(assert (= (and b!4224413 ((_ is ElementMatch!12719) (regex!7814 (h!51943 (t!349232 rules!4013))))) b!4224727))

(assert (= (and b!4224413 ((_ is Concat!20764) (regex!7814 (h!51943 (t!349232 rules!4013))))) b!4224728))

(assert (= (and b!4224413 ((_ is Star!12719) (regex!7814 (h!51943 (t!349232 rules!4013))))) b!4224729))

(assert (= (and b!4224413 ((_ is Union!12719) (regex!7814 (h!51943 (t!349232 rules!4013))))) b!4224730))

(declare-fun b!4224734 () Bool)

(declare-fun e!2622972 () Bool)

(declare-fun tp!1293077 () Bool)

(declare-fun tp!1293076 () Bool)

(assert (=> b!4224734 (= e!2622972 (and tp!1293077 tp!1293076))))

(declare-fun b!4224733 () Bool)

(declare-fun tp!1293074 () Bool)

(assert (=> b!4224733 (= e!2622972 tp!1293074)))

(assert (=> b!4224417 (= tp!1293049 e!2622972)))

(declare-fun b!4224731 () Bool)

(assert (=> b!4224731 (= e!2622972 tp_is_empty!22401)))

(declare-fun b!4224732 () Bool)

(declare-fun tp!1293073 () Bool)

(declare-fun tp!1293075 () Bool)

(assert (=> b!4224732 (= e!2622972 (and tp!1293073 tp!1293075))))

(assert (= (and b!4224417 ((_ is ElementMatch!12719) (reg!13048 (regex!7814 r!4313)))) b!4224731))

(assert (= (and b!4224417 ((_ is Concat!20764) (reg!13048 (regex!7814 r!4313)))) b!4224732))

(assert (= (and b!4224417 ((_ is Star!12719) (reg!13048 (regex!7814 r!4313)))) b!4224733))

(assert (= (and b!4224417 ((_ is Union!12719) (reg!13048 (regex!7814 r!4313)))) b!4224734))

(declare-fun b!4224738 () Bool)

(declare-fun e!2622973 () Bool)

(declare-fun tp!1293082 () Bool)

(declare-fun tp!1293081 () Bool)

(assert (=> b!4224738 (= e!2622973 (and tp!1293082 tp!1293081))))

(declare-fun b!4224737 () Bool)

(declare-fun tp!1293079 () Bool)

(assert (=> b!4224737 (= e!2622973 tp!1293079)))

(assert (=> b!4224403 (= tp!1293035 e!2622973)))

(declare-fun b!4224735 () Bool)

(assert (=> b!4224735 (= e!2622973 tp_is_empty!22401)))

(declare-fun b!4224736 () Bool)

(declare-fun tp!1293078 () Bool)

(declare-fun tp!1293080 () Bool)

(assert (=> b!4224736 (= e!2622973 (and tp!1293078 tp!1293080))))

(assert (= (and b!4224403 ((_ is ElementMatch!12719) (regOne!25951 (regex!7814 (h!51943 rules!4013))))) b!4224735))

(assert (= (and b!4224403 ((_ is Concat!20764) (regOne!25951 (regex!7814 (h!51943 rules!4013))))) b!4224736))

(assert (= (and b!4224403 ((_ is Star!12719) (regOne!25951 (regex!7814 (h!51943 rules!4013))))) b!4224737))

(assert (= (and b!4224403 ((_ is Union!12719) (regOne!25951 (regex!7814 (h!51943 rules!4013))))) b!4224738))

(declare-fun b!4224742 () Bool)

(declare-fun e!2622974 () Bool)

(declare-fun tp!1293087 () Bool)

(declare-fun tp!1293086 () Bool)

(assert (=> b!4224742 (= e!2622974 (and tp!1293087 tp!1293086))))

(declare-fun b!4224741 () Bool)

(declare-fun tp!1293084 () Bool)

(assert (=> b!4224741 (= e!2622974 tp!1293084)))

(assert (=> b!4224403 (= tp!1293034 e!2622974)))

(declare-fun b!4224739 () Bool)

(assert (=> b!4224739 (= e!2622974 tp_is_empty!22401)))

(declare-fun b!4224740 () Bool)

(declare-fun tp!1293083 () Bool)

(declare-fun tp!1293085 () Bool)

(assert (=> b!4224740 (= e!2622974 (and tp!1293083 tp!1293085))))

(assert (= (and b!4224403 ((_ is ElementMatch!12719) (regTwo!25951 (regex!7814 (h!51943 rules!4013))))) b!4224739))

(assert (= (and b!4224403 ((_ is Concat!20764) (regTwo!25951 (regex!7814 (h!51943 rules!4013))))) b!4224740))

(assert (= (and b!4224403 ((_ is Star!12719) (regTwo!25951 (regex!7814 (h!51943 rules!4013))))) b!4224741))

(assert (= (and b!4224403 ((_ is Union!12719) (regTwo!25951 (regex!7814 (h!51943 rules!4013))))) b!4224742))

(declare-fun b!4224746 () Bool)

(declare-fun e!2622975 () Bool)

(declare-fun tp!1293092 () Bool)

(declare-fun tp!1293091 () Bool)

(assert (=> b!4224746 (= e!2622975 (and tp!1293092 tp!1293091))))

(declare-fun b!4224745 () Bool)

(declare-fun tp!1293089 () Bool)

(assert (=> b!4224745 (= e!2622975 tp!1293089)))

(assert (=> b!4224416 (= tp!1293048 e!2622975)))

(declare-fun b!4224743 () Bool)

(assert (=> b!4224743 (= e!2622975 tp_is_empty!22401)))

(declare-fun b!4224744 () Bool)

(declare-fun tp!1293088 () Bool)

(declare-fun tp!1293090 () Bool)

(assert (=> b!4224744 (= e!2622975 (and tp!1293088 tp!1293090))))

(assert (= (and b!4224416 ((_ is ElementMatch!12719) (regOne!25950 (regex!7814 r!4313)))) b!4224743))

(assert (= (and b!4224416 ((_ is Concat!20764) (regOne!25950 (regex!7814 r!4313)))) b!4224744))

(assert (= (and b!4224416 ((_ is Star!12719) (regOne!25950 (regex!7814 r!4313)))) b!4224745))

(assert (= (and b!4224416 ((_ is Union!12719) (regOne!25950 (regex!7814 r!4313)))) b!4224746))

(declare-fun b!4224750 () Bool)

(declare-fun e!2622976 () Bool)

(declare-fun tp!1293097 () Bool)

(declare-fun tp!1293096 () Bool)

(assert (=> b!4224750 (= e!2622976 (and tp!1293097 tp!1293096))))

(declare-fun b!4224749 () Bool)

(declare-fun tp!1293094 () Bool)

(assert (=> b!4224749 (= e!2622976 tp!1293094)))

(assert (=> b!4224416 (= tp!1293050 e!2622976)))

(declare-fun b!4224747 () Bool)

(assert (=> b!4224747 (= e!2622976 tp_is_empty!22401)))

(declare-fun b!4224748 () Bool)

(declare-fun tp!1293093 () Bool)

(declare-fun tp!1293095 () Bool)

(assert (=> b!4224748 (= e!2622976 (and tp!1293093 tp!1293095))))

(assert (= (and b!4224416 ((_ is ElementMatch!12719) (regTwo!25950 (regex!7814 r!4313)))) b!4224747))

(assert (= (and b!4224416 ((_ is Concat!20764) (regTwo!25950 (regex!7814 r!4313)))) b!4224748))

(assert (= (and b!4224416 ((_ is Star!12719) (regTwo!25950 (regex!7814 r!4313)))) b!4224749))

(assert (= (and b!4224416 ((_ is Union!12719) (regTwo!25950 (regex!7814 r!4313)))) b!4224750))

(declare-fun b!4224754 () Bool)

(declare-fun e!2622977 () Bool)

(declare-fun tp!1293102 () Bool)

(declare-fun tp!1293101 () Bool)

(assert (=> b!4224754 (= e!2622977 (and tp!1293102 tp!1293101))))

(declare-fun b!4224753 () Bool)

(declare-fun tp!1293099 () Bool)

(assert (=> b!4224753 (= e!2622977 tp!1293099)))

(assert (=> b!4224418 (= tp!1293052 e!2622977)))

(declare-fun b!4224751 () Bool)

(assert (=> b!4224751 (= e!2622977 tp_is_empty!22401)))

(declare-fun b!4224752 () Bool)

(declare-fun tp!1293098 () Bool)

(declare-fun tp!1293100 () Bool)

(assert (=> b!4224752 (= e!2622977 (and tp!1293098 tp!1293100))))

(assert (= (and b!4224418 ((_ is ElementMatch!12719) (regOne!25951 (regex!7814 r!4313)))) b!4224751))

(assert (= (and b!4224418 ((_ is Concat!20764) (regOne!25951 (regex!7814 r!4313)))) b!4224752))

(assert (= (and b!4224418 ((_ is Star!12719) (regOne!25951 (regex!7814 r!4313)))) b!4224753))

(assert (= (and b!4224418 ((_ is Union!12719) (regOne!25951 (regex!7814 r!4313)))) b!4224754))

(declare-fun b!4224758 () Bool)

(declare-fun e!2622978 () Bool)

(declare-fun tp!1293107 () Bool)

(declare-fun tp!1293106 () Bool)

(assert (=> b!4224758 (= e!2622978 (and tp!1293107 tp!1293106))))

(declare-fun b!4224757 () Bool)

(declare-fun tp!1293104 () Bool)

(assert (=> b!4224757 (= e!2622978 tp!1293104)))

(assert (=> b!4224418 (= tp!1293051 e!2622978)))

(declare-fun b!4224755 () Bool)

(assert (=> b!4224755 (= e!2622978 tp_is_empty!22401)))

(declare-fun b!4224756 () Bool)

(declare-fun tp!1293103 () Bool)

(declare-fun tp!1293105 () Bool)

(assert (=> b!4224756 (= e!2622978 (and tp!1293103 tp!1293105))))

(assert (= (and b!4224418 ((_ is ElementMatch!12719) (regTwo!25951 (regex!7814 r!4313)))) b!4224755))

(assert (= (and b!4224418 ((_ is Concat!20764) (regTwo!25951 (regex!7814 r!4313)))) b!4224756))

(assert (= (and b!4224418 ((_ is Star!12719) (regTwo!25951 (regex!7814 r!4313)))) b!4224757))

(assert (= (and b!4224418 ((_ is Union!12719) (regTwo!25951 (regex!7814 r!4313)))) b!4224758))

(declare-fun b!4224759 () Bool)

(declare-fun e!2622979 () Bool)

(declare-fun tp!1293108 () Bool)

(assert (=> b!4224759 (= e!2622979 (and tp_is_empty!22401 tp!1293108))))

(assert (=> b!4224389 (= tp!1293020 e!2622979)))

(assert (= (and b!4224389 ((_ is Cons!46522) (t!349231 (t!349231 input!3561)))) b!4224759))

(declare-fun b!4224763 () Bool)

(declare-fun e!2622980 () Bool)

(declare-fun tp!1293113 () Bool)

(declare-fun tp!1293112 () Bool)

(assert (=> b!4224763 (= e!2622980 (and tp!1293113 tp!1293112))))

(declare-fun b!4224762 () Bool)

(declare-fun tp!1293110 () Bool)

(assert (=> b!4224762 (= e!2622980 tp!1293110)))

(assert (=> b!4224401 (= tp!1293031 e!2622980)))

(declare-fun b!4224760 () Bool)

(assert (=> b!4224760 (= e!2622980 tp_is_empty!22401)))

(declare-fun b!4224761 () Bool)

(declare-fun tp!1293109 () Bool)

(declare-fun tp!1293111 () Bool)

(assert (=> b!4224761 (= e!2622980 (and tp!1293109 tp!1293111))))

(assert (= (and b!4224401 ((_ is ElementMatch!12719) (regOne!25950 (regex!7814 (h!51943 rules!4013))))) b!4224760))

(assert (= (and b!4224401 ((_ is Concat!20764) (regOne!25950 (regex!7814 (h!51943 rules!4013))))) b!4224761))

(assert (= (and b!4224401 ((_ is Star!12719) (regOne!25950 (regex!7814 (h!51943 rules!4013))))) b!4224762))

(assert (= (and b!4224401 ((_ is Union!12719) (regOne!25950 (regex!7814 (h!51943 rules!4013))))) b!4224763))

(declare-fun b!4224767 () Bool)

(declare-fun e!2622981 () Bool)

(declare-fun tp!1293118 () Bool)

(declare-fun tp!1293117 () Bool)

(assert (=> b!4224767 (= e!2622981 (and tp!1293118 tp!1293117))))

(declare-fun b!4224766 () Bool)

(declare-fun tp!1293115 () Bool)

(assert (=> b!4224766 (= e!2622981 tp!1293115)))

(assert (=> b!4224401 (= tp!1293033 e!2622981)))

(declare-fun b!4224764 () Bool)

(assert (=> b!4224764 (= e!2622981 tp_is_empty!22401)))

(declare-fun b!4224765 () Bool)

(declare-fun tp!1293114 () Bool)

(declare-fun tp!1293116 () Bool)

(assert (=> b!4224765 (= e!2622981 (and tp!1293114 tp!1293116))))

(assert (= (and b!4224401 ((_ is ElementMatch!12719) (regTwo!25950 (regex!7814 (h!51943 rules!4013))))) b!4224764))

(assert (= (and b!4224401 ((_ is Concat!20764) (regTwo!25950 (regex!7814 (h!51943 rules!4013))))) b!4224765))

(assert (= (and b!4224401 ((_ is Star!12719) (regTwo!25950 (regex!7814 (h!51943 rules!4013))))) b!4224766))

(assert (= (and b!4224401 ((_ is Union!12719) (regTwo!25950 (regex!7814 (h!51943 rules!4013))))) b!4224767))

(declare-fun b_lambda!124503 () Bool)

(assert (= b_lambda!124501 (or d!1243891 b_lambda!124503)))

(declare-fun bs!597801 () Bool)

(declare-fun d!1244019 () Bool)

(assert (= bs!597801 (and d!1244019 d!1243891)))

(assert (=> bs!597801 (= (dynLambda!20020 lambda!129859 (h!51943 rules!4013)) (ruleValid!3522 thiss!26728 (h!51943 rules!4013)))))

(assert (=> bs!597801 m!4812689))

(assert (=> b!4224605 d!1244019))

(check-sat (not b!4224597) (not b!4224761) (not b_lambda!124497) (not b!4224419) (not b_next!125021) (not b!4224676) (not b!4224738) (not d!1243979) (not b!4224729) (not b!4224696) (not b!4224749) b_and!333567 (not d!1243977) (not b!4224640) (not d!1244011) (not b!4224737) (not b!4224524) (not b!4224720) (not b!4224767) (not b_next!125035) (not b!4224741) b_and!333559 (not b!4224698) (not b!4224420) (not b!4224425) (not b!4224606) (not b_next!125023) (not d!1243919) (not b!4224728) (not d!1243991) (not b!4224725) (not d!1244003) (not d!1243985) (not b!4224748) (not b!4224757) (not bm!293202) (not d!1243975) (not b!4224742) b_and!333565 b_and!333553 (not b_lambda!124499) (not b!4224643) (not b!4224424) (not b!4224736) (not b!4224663) b_and!333563 (not bm!293198) (not b!4224644) (not d!1244013) (not b!4224652) (not b!4224426) b_and!333555 (not d!1243989) (not d!1243973) (not b!4224746) (not b!4224721) (not d!1243961) (not b!4224733) (not d!1243959) (not d!1243987) (not b!4224754) (not bm!293186) tp_is_empty!22401 (not b!4224522) (not b_lambda!124503) (not b!4224571) (not bm!293199) (not b!4224573) (not d!1243921) (not b!4224753) (not b!4224744) (not b_next!125019) (not b!4224730) (not b!4224523) (not b!4224422) (not b!4224526) (not b_next!125031) (not tb!253791) (not b!4224638) (not b!4224427) (not b!4224740) (not b_next!125033) (not b!4224525) (not b!4224762) (not b!4224519) (not d!1243999) (not b!4224423) (not b!4224717) (not b!4224732) (not b_next!125037) (not d!1243969) (not b!4224726) (not b!4224694) (not b!4224724) (not b!4224750) b_and!333557 (not b!4224651) (not tb!253797) (not b!4224527) (not b!4224759) (not b!4224647) (not b!4224636) (not d!1244001) (not d!1243993) (not b!4224763) (not b!4224752) (not bs!597801) (not b!4224758) (not b!4224520) (not b!4224718) (not b!4224766) (not b!4224765) (not b!4224745) (not b!4224649) (not b!4224756) (not b_next!125025) (not b!4224535) (not d!1243955) (not b!4224662) (not b!4224664) b_and!333561 (not b!4224734))
(check-sat (not b_next!125021) b_and!333567 (not b_next!125023) (not b_next!125019) (not b_next!125031) (not b_next!125033) (not b_next!125037) b_and!333557 (not b_next!125025) b_and!333561 (not b_next!125035) b_and!333559 b_and!333565 b_and!333553 b_and!333563 b_and!333555)

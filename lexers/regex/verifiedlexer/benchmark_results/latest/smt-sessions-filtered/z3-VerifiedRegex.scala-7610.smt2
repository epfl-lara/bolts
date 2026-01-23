; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401934 () Bool)

(assert start!401934)

(declare-fun b!4206602 () Bool)

(declare-fun b_free!122971 () Bool)

(declare-fun b_next!123675 () Bool)

(assert (=> b!4206602 (= b_free!122971 (not b_next!123675))))

(declare-fun tp!1285818 () Bool)

(declare-fun b_and!330661 () Bool)

(assert (=> b!4206602 (= tp!1285818 b_and!330661)))

(declare-fun b_free!122973 () Bool)

(declare-fun b_next!123677 () Bool)

(assert (=> b!4206602 (= b_free!122973 (not b_next!123677))))

(declare-fun tp!1285826 () Bool)

(declare-fun b_and!330663 () Bool)

(assert (=> b!4206602 (= tp!1285826 b_and!330663)))

(declare-fun b!4206585 () Bool)

(declare-fun b_free!122975 () Bool)

(declare-fun b_next!123679 () Bool)

(assert (=> b!4206585 (= b_free!122975 (not b_next!123679))))

(declare-fun tp!1285833 () Bool)

(declare-fun b_and!330665 () Bool)

(assert (=> b!4206585 (= tp!1285833 b_and!330665)))

(declare-fun b_free!122977 () Bool)

(declare-fun b_next!123681 () Bool)

(assert (=> b!4206585 (= b_free!122977 (not b_next!123681))))

(declare-fun tp!1285824 () Bool)

(declare-fun b_and!330667 () Bool)

(assert (=> b!4206585 (= tp!1285824 b_and!330667)))

(declare-fun b!4206596 () Bool)

(declare-fun b_free!122979 () Bool)

(declare-fun b_next!123683 () Bool)

(assert (=> b!4206596 (= b_free!122979 (not b_next!123683))))

(declare-fun tp!1285823 () Bool)

(declare-fun b_and!330669 () Bool)

(assert (=> b!4206596 (= tp!1285823 b_and!330669)))

(declare-fun b_free!122981 () Bool)

(declare-fun b_next!123685 () Bool)

(assert (=> b!4206596 (= b_free!122981 (not b_next!123685))))

(declare-fun tp!1285825 () Bool)

(declare-fun b_and!330671 () Bool)

(assert (=> b!4206596 (= tp!1285825 b_and!330671)))

(declare-fun b!4206593 () Bool)

(declare-fun b_free!122983 () Bool)

(declare-fun b_next!123687 () Bool)

(assert (=> b!4206593 (= b_free!122983 (not b_next!123687))))

(declare-fun tp!1285832 () Bool)

(declare-fun b_and!330673 () Bool)

(assert (=> b!4206593 (= tp!1285832 b_and!330673)))

(declare-fun b_free!122985 () Bool)

(declare-fun b_next!123689 () Bool)

(assert (=> b!4206593 (= b_free!122985 (not b_next!123689))))

(declare-fun tp!1285829 () Bool)

(declare-fun b_and!330675 () Bool)

(assert (=> b!4206593 (= tp!1285829 b_and!330675)))

(declare-fun b!4206580 () Bool)

(declare-fun e!2611348 () Bool)

(declare-fun e!2611363 () Bool)

(declare-fun tp!1285816 () Bool)

(assert (=> b!4206580 (= e!2611348 (and e!2611363 tp!1285816))))

(declare-fun b!4206581 () Bool)

(declare-fun res!1727848 () Bool)

(declare-fun e!2611365 () Bool)

(assert (=> b!4206581 (=> res!1727848 e!2611365)))

(declare-datatypes ((List!46369 0))(
  ( (Nil!46245) (Cons!46245 (h!51665 (_ BitVec 16)) (t!347500 List!46369)) )
))
(declare-datatypes ((TokenValue!7964 0))(
  ( (FloatLiteralValue!15928 (text!56193 List!46369)) (TokenValueExt!7963 (__x!28151 Int)) (Broken!39820 (value!240922 List!46369)) (Object!8087) (End!7964) (Def!7964) (Underscore!7964) (Match!7964) (Else!7964) (Error!7964) (Case!7964) (If!7964) (Extends!7964) (Abstract!7964) (Class!7964) (Val!7964) (DelimiterValue!15928 (del!8024 List!46369)) (KeywordValue!7970 (value!240923 List!46369)) (CommentValue!15928 (value!240924 List!46369)) (WhitespaceValue!15928 (value!240925 List!46369)) (IndentationValue!7964 (value!240926 List!46369)) (String!53689) (Int32!7964) (Broken!39821 (value!240927 List!46369)) (Boolean!7965) (Unit!65362) (OperatorValue!7967 (op!8024 List!46369)) (IdentifierValue!15928 (value!240928 List!46369)) (IdentifierValue!15929 (value!240929 List!46369)) (WhitespaceValue!15929 (value!240930 List!46369)) (True!15928) (False!15928) (Broken!39822 (value!240931 List!46369)) (Broken!39823 (value!240932 List!46369)) (True!15929) (RightBrace!7964) (RightBracket!7964) (Colon!7964) (Null!7964) (Comma!7964) (LeftBracket!7964) (False!15929) (LeftBrace!7964) (ImaginaryLiteralValue!7964 (text!56194 List!46369)) (StringLiteralValue!23892 (value!240933 List!46369)) (EOFValue!7964 (value!240934 List!46369)) (IdentValue!7964 (value!240935 List!46369)) (DelimiterValue!15929 (value!240936 List!46369)) (DedentValue!7964 (value!240937 List!46369)) (NewLineValue!7964 (value!240938 List!46369)) (IntegerValue!23892 (value!240939 (_ BitVec 32)) (text!56195 List!46369)) (IntegerValue!23893 (value!240940 Int) (text!56196 List!46369)) (Times!7964) (Or!7964) (Equal!7964) (Minus!7964) (Broken!39824 (value!240941 List!46369)) (And!7964) (Div!7964) (LessEqual!7964) (Mod!7964) (Concat!20603) (Not!7964) (Plus!7964) (SpaceValue!7964 (value!240942 List!46369)) (IntegerValue!23894 (value!240943 Int) (text!56197 List!46369)) (StringLiteralValue!23893 (text!56198 List!46369)) (FloatLiteralValue!15929 (text!56199 List!46369)) (BytesLiteralValue!7964 (value!240944 List!46369)) (CommentValue!15929 (value!240945 List!46369)) (StringLiteralValue!23894 (value!240946 List!46369)) (ErrorTokenValue!7964 (msg!8025 List!46369)) )
))
(declare-datatypes ((C!25472 0))(
  ( (C!25473 (val!14898 Int)) )
))
(declare-datatypes ((Regex!12639 0))(
  ( (ElementMatch!12639 (c!716868 C!25472)) (Concat!20604 (regOne!25790 Regex!12639) (regTwo!25790 Regex!12639)) (EmptyExpr!12639) (Star!12639 (reg!12968 Regex!12639)) (EmptyLang!12639) (Union!12639 (regOne!25791 Regex!12639) (regTwo!25791 Regex!12639)) )
))
(declare-datatypes ((List!46370 0))(
  ( (Nil!46246) (Cons!46246 (h!51666 C!25472) (t!347501 List!46370)) )
))
(declare-datatypes ((IArray!27895 0))(
  ( (IArray!27896 (innerList!14005 List!46370)) )
))
(declare-datatypes ((Conc!13945 0))(
  ( (Node!13945 (left!34435 Conc!13945) (right!34765 Conc!13945) (csize!28120 Int) (cheight!14156 Int)) (Leaf!21556 (xs!17251 IArray!27895) (csize!28121 Int)) (Empty!13945) )
))
(declare-datatypes ((BalanceConc!27484 0))(
  ( (BalanceConc!27485 (c!716869 Conc!13945)) )
))
(declare-datatypes ((String!53690 0))(
  ( (String!53691 (value!240947 String)) )
))
(declare-datatypes ((TokenValueInjection!15356 0))(
  ( (TokenValueInjection!15357 (toValue!10446 Int) (toChars!10305 Int)) )
))
(declare-datatypes ((Rule!15268 0))(
  ( (Rule!15269 (regex!7734 Regex!12639) (tag!8598 String!53690) (isSeparator!7734 Bool) (transformation!7734 TokenValueInjection!15356)) )
))
(declare-datatypes ((Token!14170 0))(
  ( (Token!14171 (value!240948 TokenValue!7964) (rule!10840 Rule!15268) (size!33973 Int) (originalCharacters!8116 List!46370)) )
))
(declare-fun tBis!41 () Token!14170)

(declare-fun rBis!178 () Rule!15268)

(assert (=> b!4206581 (= res!1727848 (not (= (rule!10840 tBis!41) rBis!178)))))

(declare-fun b!4206582 () Bool)

(declare-fun e!2611351 () Bool)

(declare-fun tp_is_empty!22245 () Bool)

(declare-fun tp!1285834 () Bool)

(assert (=> b!4206582 (= e!2611351 (and tp_is_empty!22245 tp!1285834))))

(declare-fun b!4206583 () Bool)

(declare-fun res!1727856 () Bool)

(assert (=> b!4206583 (=> res!1727856 e!2611365)))

(declare-datatypes ((LexerInterface!7329 0))(
  ( (LexerInterfaceExt!7326 (__x!28152 Int)) (Lexer!7327) )
))
(declare-fun thiss!26544 () LexerInterface!7329)

(declare-fun input!3517 () List!46370)

(declare-datatypes ((List!46371 0))(
  ( (Nil!46247) (Cons!46247 (h!51667 Rule!15268) (t!347502 List!46371)) )
))
(declare-fun rules!3967 () List!46371)

(declare-datatypes ((tuple2!43994 0))(
  ( (tuple2!43995 (_1!25131 Token!14170) (_2!25131 List!46370)) )
))
(declare-datatypes ((Option!9922 0))(
  ( (None!9921) (Some!9921 (v!40783 tuple2!43994)) )
))
(declare-fun lt!1497954 () Option!9922)

(declare-fun maxPrefixOneRule!3324 (LexerInterface!7329 Rule!15268 List!46370) Option!9922)

(assert (=> b!4206583 (= res!1727856 (= (maxPrefixOneRule!3324 thiss!26544 (h!51667 rules!3967) input!3517) lt!1497954))))

(declare-fun b!4206584 () Bool)

(declare-fun res!1727846 () Bool)

(declare-fun e!2611354 () Bool)

(assert (=> b!4206584 (=> (not res!1727846) (not e!2611354))))

(declare-fun p!3001 () List!46370)

(declare-fun suffix!1557 () List!46370)

(declare-fun ++!11808 (List!46370 List!46370) List!46370)

(assert (=> b!4206584 (= res!1727846 (= (++!11808 p!3001 suffix!1557) input!3517))))

(declare-fun e!2611346 () Bool)

(assert (=> b!4206585 (= e!2611346 (and tp!1285833 tp!1285824))))

(declare-fun b!4206586 () Bool)

(declare-fun res!1727851 () Bool)

(declare-fun e!2611347 () Bool)

(assert (=> b!4206586 (=> (not res!1727851) (not e!2611347))))

(declare-fun ruleValid!3446 (LexerInterface!7329 Rule!15268) Bool)

(assert (=> b!4206586 (= res!1727851 (ruleValid!3446 thiss!26544 rBis!178))))

(declare-fun b!4206587 () Bool)

(declare-fun e!2611357 () Bool)

(declare-fun tp!1285822 () Bool)

(assert (=> b!4206587 (= e!2611357 (and tp_is_empty!22245 tp!1285822))))

(declare-fun b!4206588 () Bool)

(declare-fun res!1727853 () Bool)

(assert (=> b!4206588 (=> res!1727853 e!2611365)))

(get-info :version)

(assert (=> b!4206588 (= res!1727853 (or (and ((_ is Cons!46247) rules!3967) ((_ is Nil!46247) (t!347502 rules!3967))) (not ((_ is Cons!46247) rules!3967)) (= (h!51667 rules!3967) rBis!178)))))

(declare-fun b!4206589 () Bool)

(declare-fun e!2611344 () Bool)

(declare-fun tp!1285820 () Bool)

(assert (=> b!4206589 (= e!2611344 (and tp_is_empty!22245 tp!1285820))))

(declare-fun b!4206590 () Bool)

(assert (=> b!4206590 (= e!2611354 e!2611347)))

(declare-fun res!1727850 () Bool)

(assert (=> b!4206590 (=> (not res!1727850) (not e!2611347))))

(declare-fun maxPrefix!4369 (LexerInterface!7329 List!46371 List!46370) Option!9922)

(assert (=> b!4206590 (= res!1727850 (= (maxPrefix!4369 thiss!26544 rules!3967 input!3517) lt!1497954))))

(declare-fun t!8364 () Token!14170)

(assert (=> b!4206590 (= lt!1497954 (Some!9921 (tuple2!43995 t!8364 suffix!1557)))))

(declare-fun b!4206591 () Bool)

(assert (=> b!4206591 (= e!2611347 (not e!2611365))))

(declare-fun res!1727858 () Bool)

(assert (=> b!4206591 (=> res!1727858 e!2611365)))

(declare-fun suffixBis!41 () List!46370)

(assert (=> b!4206591 (= res!1727858 (not (= (maxPrefixOneRule!3324 thiss!26544 rBis!178 input!3517) (Some!9921 (tuple2!43995 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4593 (List!46370 List!46370) Bool)

(assert (=> b!4206591 (isPrefix!4593 input!3517 input!3517)))

(declare-datatypes ((Unit!65363 0))(
  ( (Unit!65364) )
))
(declare-fun lt!1497952 () Unit!65363)

(declare-fun lemmaIsPrefixRefl!3010 (List!46370 List!46370) Unit!65363)

(assert (=> b!4206591 (= lt!1497952 (lemmaIsPrefixRefl!3010 input!3517 input!3517))))

(declare-fun b!4206592 () Bool)

(declare-fun e!2611350 () Bool)

(declare-fun tp!1285821 () Bool)

(assert (=> b!4206592 (= e!2611350 (and tp_is_empty!22245 tp!1285821))))

(declare-fun e!2611362 () Bool)

(assert (=> b!4206593 (= e!2611362 (and tp!1285832 tp!1285829))))

(declare-fun b!4206594 () Bool)

(declare-fun e!2611343 () Bool)

(declare-fun tp!1285828 () Bool)

(assert (=> b!4206594 (= e!2611343 (and tp_is_empty!22245 tp!1285828))))

(declare-fun e!2611353 () Bool)

(declare-fun e!2611358 () Bool)

(declare-fun b!4206595 () Bool)

(declare-fun tp!1285831 () Bool)

(declare-fun inv!21 (TokenValue!7964) Bool)

(assert (=> b!4206595 (= e!2611358 (and (inv!21 (value!240948 tBis!41)) e!2611353 tp!1285831))))

(declare-fun e!2611364 () Bool)

(assert (=> b!4206596 (= e!2611364 (and tp!1285823 tp!1285825))))

(declare-fun tp!1285817 () Bool)

(declare-fun b!4206597 () Bool)

(declare-fun e!2611352 () Bool)

(declare-fun e!2611361 () Bool)

(declare-fun inv!60832 (String!53690) Bool)

(declare-fun inv!60835 (TokenValueInjection!15356) Bool)

(assert (=> b!4206597 (= e!2611361 (and tp!1285817 (inv!60832 (tag!8598 (rule!10840 t!8364))) (inv!60835 (transformation!7734 (rule!10840 t!8364))) e!2611352))))

(declare-fun b!4206598 () Bool)

(declare-fun e!2611349 () Bool)

(declare-fun tp!1285819 () Bool)

(assert (=> b!4206598 (= e!2611349 (and tp!1285819 (inv!60832 (tag!8598 rBis!178)) (inv!60835 (transformation!7734 rBis!178)) e!2611346))))

(declare-fun b!4206599 () Bool)

(declare-fun tp!1285830 () Bool)

(assert (=> b!4206599 (= e!2611363 (and tp!1285830 (inv!60832 (tag!8598 (h!51667 rules!3967))) (inv!60835 (transformation!7734 (h!51667 rules!3967))) e!2611364))))

(declare-fun b!4206600 () Bool)

(declare-fun res!1727849 () Bool)

(assert (=> b!4206600 (=> (not res!1727849) (not e!2611354))))

(declare-fun isEmpty!27385 (List!46371) Bool)

(assert (=> b!4206600 (= res!1727849 (not (isEmpty!27385 rules!3967)))))

(declare-fun b!4206601 () Bool)

(declare-fun res!1727855 () Bool)

(assert (=> b!4206601 (=> (not res!1727855) (not e!2611354))))

(declare-fun pBis!121 () List!46370)

(assert (=> b!4206601 (= res!1727855 (isPrefix!4593 pBis!121 input!3517))))

(assert (=> b!4206602 (= e!2611352 (and tp!1285818 tp!1285826))))

(declare-fun b!4206603 () Bool)

(declare-fun res!1727847 () Bool)

(assert (=> b!4206603 (=> (not res!1727847) (not e!2611354))))

(declare-fun rulesInvariant!6540 (LexerInterface!7329 List!46371) Bool)

(assert (=> b!4206603 (= res!1727847 (rulesInvariant!6540 thiss!26544 rules!3967))))

(declare-fun res!1727854 () Bool)

(assert (=> start!401934 (=> (not res!1727854) (not e!2611354))))

(assert (=> start!401934 (= res!1727854 ((_ is Lexer!7327) thiss!26544))))

(assert (=> start!401934 e!2611354))

(declare-fun inv!60836 (Token!14170) Bool)

(assert (=> start!401934 (and (inv!60836 tBis!41) e!2611358)))

(assert (=> start!401934 true))

(assert (=> start!401934 e!2611349))

(assert (=> start!401934 e!2611350))

(assert (=> start!401934 e!2611348))

(assert (=> start!401934 e!2611343))

(declare-fun e!2611345 () Bool)

(assert (=> start!401934 (and (inv!60836 t!8364) e!2611345)))

(assert (=> start!401934 e!2611351))

(assert (=> start!401934 e!2611344))

(assert (=> start!401934 e!2611357))

(declare-fun tp!1285827 () Bool)

(declare-fun b!4206604 () Bool)

(assert (=> b!4206604 (= e!2611345 (and (inv!21 (value!240948 t!8364)) e!2611361 tp!1285827))))

(declare-fun b!4206605 () Bool)

(assert (=> b!4206605 (= e!2611365 true)))

(declare-fun lt!1497953 () Bool)

(assert (=> b!4206605 (= lt!1497953 (rulesInvariant!6540 thiss!26544 (Cons!46247 (h!51667 rules!3967) (t!347502 rules!3967))))))

(declare-fun b!4206606 () Bool)

(declare-fun res!1727852 () Bool)

(assert (=> b!4206606 (=> res!1727852 e!2611365)))

(assert (=> b!4206606 (= res!1727852 (not (= (++!11808 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4206607 () Bool)

(declare-fun res!1727859 () Bool)

(assert (=> b!4206607 (=> (not res!1727859) (not e!2611354))))

(declare-fun contains!9551 (List!46371 Rule!15268) Bool)

(assert (=> b!4206607 (= res!1727859 (contains!9551 rules!3967 rBis!178))))

(declare-fun tp!1285815 () Bool)

(declare-fun b!4206608 () Bool)

(assert (=> b!4206608 (= e!2611353 (and tp!1285815 (inv!60832 (tag!8598 (rule!10840 tBis!41))) (inv!60835 (transformation!7734 (rule!10840 tBis!41))) e!2611362))))

(declare-fun b!4206609 () Bool)

(declare-fun res!1727857 () Bool)

(assert (=> b!4206609 (=> (not res!1727857) (not e!2611354))))

(assert (=> b!4206609 (= res!1727857 (isPrefix!4593 p!3001 input!3517))))

(declare-fun b!4206610 () Bool)

(declare-fun res!1727845 () Bool)

(assert (=> b!4206610 (=> res!1727845 e!2611365)))

(declare-fun list!16715 (BalanceConc!27484) List!46370)

(declare-fun charsOf!5157 (Token!14170) BalanceConc!27484)

(assert (=> b!4206610 (= res!1727845 (not (= (list!16715 (charsOf!5157 tBis!41)) pBis!121)))))

(assert (= (and start!401934 res!1727854) b!4206584))

(assert (= (and b!4206584 res!1727846) b!4206609))

(assert (= (and b!4206609 res!1727857) b!4206601))

(assert (= (and b!4206601 res!1727855) b!4206600))

(assert (= (and b!4206600 res!1727849) b!4206603))

(assert (= (and b!4206603 res!1727847) b!4206607))

(assert (= (and b!4206607 res!1727859) b!4206590))

(assert (= (and b!4206590 res!1727850) b!4206586))

(assert (= (and b!4206586 res!1727851) b!4206591))

(assert (= (and b!4206591 (not res!1727858)) b!4206581))

(assert (= (and b!4206581 (not res!1727848)) b!4206610))

(assert (= (and b!4206610 (not res!1727845)) b!4206606))

(assert (= (and b!4206606 (not res!1727852)) b!4206588))

(assert (= (and b!4206588 (not res!1727853)) b!4206583))

(assert (= (and b!4206583 (not res!1727856)) b!4206605))

(assert (= b!4206608 b!4206593))

(assert (= b!4206595 b!4206608))

(assert (= start!401934 b!4206595))

(assert (= b!4206598 b!4206585))

(assert (= start!401934 b!4206598))

(assert (= (and start!401934 ((_ is Cons!46246) p!3001)) b!4206592))

(assert (= b!4206599 b!4206596))

(assert (= b!4206580 b!4206599))

(assert (= (and start!401934 ((_ is Cons!46247) rules!3967)) b!4206580))

(assert (= (and start!401934 ((_ is Cons!46246) input!3517)) b!4206594))

(assert (= b!4206597 b!4206602))

(assert (= b!4206604 b!4206597))

(assert (= start!401934 b!4206604))

(assert (= (and start!401934 ((_ is Cons!46246) pBis!121)) b!4206582))

(assert (= (and start!401934 ((_ is Cons!46246) suffix!1557)) b!4206589))

(assert (= (and start!401934 ((_ is Cons!46246) suffixBis!41)) b!4206587))

(declare-fun m!4794767 () Bool)

(assert (=> b!4206599 m!4794767))

(declare-fun m!4794769 () Bool)

(assert (=> b!4206599 m!4794769))

(declare-fun m!4794771 () Bool)

(assert (=> b!4206609 m!4794771))

(declare-fun m!4794773 () Bool)

(assert (=> b!4206586 m!4794773))

(declare-fun m!4794775 () Bool)

(assert (=> b!4206590 m!4794775))

(declare-fun m!4794777 () Bool)

(assert (=> start!401934 m!4794777))

(declare-fun m!4794779 () Bool)

(assert (=> start!401934 m!4794779))

(declare-fun m!4794781 () Bool)

(assert (=> b!4206604 m!4794781))

(declare-fun m!4794783 () Bool)

(assert (=> b!4206591 m!4794783))

(declare-fun m!4794785 () Bool)

(assert (=> b!4206591 m!4794785))

(declare-fun m!4794787 () Bool)

(assert (=> b!4206591 m!4794787))

(declare-fun m!4794789 () Bool)

(assert (=> b!4206597 m!4794789))

(declare-fun m!4794791 () Bool)

(assert (=> b!4206597 m!4794791))

(declare-fun m!4794793 () Bool)

(assert (=> b!4206583 m!4794793))

(declare-fun m!4794795 () Bool)

(assert (=> b!4206605 m!4794795))

(declare-fun m!4794797 () Bool)

(assert (=> b!4206603 m!4794797))

(declare-fun m!4794799 () Bool)

(assert (=> b!4206607 m!4794799))

(declare-fun m!4794801 () Bool)

(assert (=> b!4206608 m!4794801))

(declare-fun m!4794803 () Bool)

(assert (=> b!4206608 m!4794803))

(declare-fun m!4794805 () Bool)

(assert (=> b!4206610 m!4794805))

(assert (=> b!4206610 m!4794805))

(declare-fun m!4794807 () Bool)

(assert (=> b!4206610 m!4794807))

(declare-fun m!4794809 () Bool)

(assert (=> b!4206598 m!4794809))

(declare-fun m!4794811 () Bool)

(assert (=> b!4206598 m!4794811))

(declare-fun m!4794813 () Bool)

(assert (=> b!4206600 m!4794813))

(declare-fun m!4794815 () Bool)

(assert (=> b!4206584 m!4794815))

(declare-fun m!4794817 () Bool)

(assert (=> b!4206606 m!4794817))

(declare-fun m!4794819 () Bool)

(assert (=> b!4206595 m!4794819))

(declare-fun m!4794821 () Bool)

(assert (=> b!4206601 m!4794821))

(check-sat b_and!330671 (not b!4206599) b_and!330667 (not b_next!123677) (not b!4206580) (not b_next!123687) b_and!330675 (not b!4206601) (not b!4206598) (not b!4206609) (not b!4206587) b_and!330669 (not b!4206584) (not b!4206600) (not b!4206610) (not b_next!123681) b_and!330673 (not b!4206583) b_and!330663 tp_is_empty!22245 (not b!4206591) (not b!4206604) (not b!4206608) b_and!330661 (not b_next!123685) (not b!4206594) (not b!4206592) (not b!4206595) (not b!4206586) (not b!4206582) b_and!330665 (not b!4206606) (not b!4206590) (not b_next!123679) (not b_next!123683) (not b_next!123675) (not start!401934) (not b!4206603) (not b!4206597) (not b!4206605) (not b_next!123689) (not b!4206607) (not b!4206589))
(check-sat b_and!330671 b_and!330667 b_and!330675 b_and!330669 b_and!330663 b_and!330665 (not b_next!123677) (not b_next!123675) (not b_next!123687) (not b_next!123689) (not b_next!123681) b_and!330673 b_and!330661 (not b_next!123685) (not b_next!123679) (not b_next!123683))

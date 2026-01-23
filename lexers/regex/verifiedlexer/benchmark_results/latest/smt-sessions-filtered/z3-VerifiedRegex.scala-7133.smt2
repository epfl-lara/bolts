; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378436 () Bool)

(assert start!378436)

(declare-fun b!4018555 () Bool)

(declare-fun b_free!111809 () Bool)

(declare-fun b_next!112513 () Bool)

(assert (=> b!4018555 (= b_free!111809 (not b_next!112513))))

(declare-fun tp!1221733 () Bool)

(declare-fun b_and!308711 () Bool)

(assert (=> b!4018555 (= tp!1221733 b_and!308711)))

(declare-fun b_free!111811 () Bool)

(declare-fun b_next!112515 () Bool)

(assert (=> b!4018555 (= b_free!111811 (not b_next!112515))))

(declare-fun tp!1221735 () Bool)

(declare-fun b_and!308713 () Bool)

(assert (=> b!4018555 (= tp!1221735 b_and!308713)))

(declare-fun b!4018535 () Bool)

(declare-fun b_free!111813 () Bool)

(declare-fun b_next!112517 () Bool)

(assert (=> b!4018535 (= b_free!111813 (not b_next!112517))))

(declare-fun tp!1221738 () Bool)

(declare-fun b_and!308715 () Bool)

(assert (=> b!4018535 (= tp!1221738 b_and!308715)))

(declare-fun b_free!111815 () Bool)

(declare-fun b_next!112519 () Bool)

(assert (=> b!4018535 (= b_free!111815 (not b_next!112519))))

(declare-fun tp!1221736 () Bool)

(declare-fun b_and!308717 () Bool)

(assert (=> b!4018535 (= tp!1221736 b_and!308717)))

(declare-fun b!4018533 () Bool)

(declare-fun res!1634784 () Bool)

(declare-fun e!2492681 () Bool)

(assert (=> b!4018533 (=> (not res!1634784) (not e!2492681))))

(declare-datatypes ((LexerInterface!6443 0))(
  ( (LexerInterfaceExt!6440 (__x!26385 Int)) (Lexer!6441) )
))
(declare-fun thiss!21717 () LexerInterface!6443)

(declare-datatypes ((C!23704 0))(
  ( (C!23705 (val!13946 Int)) )
))
(declare-datatypes ((List!43136 0))(
  ( (Nil!43012) (Cons!43012 (h!48432 C!23704) (t!333469 List!43136)) )
))
(declare-datatypes ((IArray!26135 0))(
  ( (IArray!26136 (innerList!13125 List!43136)) )
))
(declare-datatypes ((Conc!13065 0))(
  ( (Node!13065 (left!32426 Conc!13065) (right!32756 Conc!13065) (csize!26360 Int) (cheight!13276 Int)) (Leaf!20199 (xs!16371 IArray!26135) (csize!26361 Int)) (Empty!13065) )
))
(declare-datatypes ((BalanceConc!25724 0))(
  ( (BalanceConc!25725 (c!694486 Conc!13065)) )
))
(declare-datatypes ((List!43137 0))(
  ( (Nil!43013) (Cons!43013 (h!48433 (_ BitVec 16)) (t!333470 List!43137)) )
))
(declare-datatypes ((TokenValue!7084 0))(
  ( (FloatLiteralValue!14168 (text!50033 List!43137)) (TokenValueExt!7083 (__x!26386 Int)) (Broken!35420 (value!215947 List!43137)) (Object!7207) (End!7084) (Def!7084) (Underscore!7084) (Match!7084) (Else!7084) (Error!7084) (Case!7084) (If!7084) (Extends!7084) (Abstract!7084) (Class!7084) (Val!7084) (DelimiterValue!14168 (del!7144 List!43137)) (KeywordValue!7090 (value!215948 List!43137)) (CommentValue!14168 (value!215949 List!43137)) (WhitespaceValue!14168 (value!215950 List!43137)) (IndentationValue!7084 (value!215951 List!43137)) (String!49137) (Int32!7084) (Broken!35421 (value!215952 List!43137)) (Boolean!7085) (Unit!62101) (OperatorValue!7087 (op!7144 List!43137)) (IdentifierValue!14168 (value!215953 List!43137)) (IdentifierValue!14169 (value!215954 List!43137)) (WhitespaceValue!14169 (value!215955 List!43137)) (True!14168) (False!14168) (Broken!35422 (value!215956 List!43137)) (Broken!35423 (value!215957 List!43137)) (True!14169) (RightBrace!7084) (RightBracket!7084) (Colon!7084) (Null!7084) (Comma!7084) (LeftBracket!7084) (False!14169) (LeftBrace!7084) (ImaginaryLiteralValue!7084 (text!50034 List!43137)) (StringLiteralValue!21252 (value!215958 List!43137)) (EOFValue!7084 (value!215959 List!43137)) (IdentValue!7084 (value!215960 List!43137)) (DelimiterValue!14169 (value!215961 List!43137)) (DedentValue!7084 (value!215962 List!43137)) (NewLineValue!7084 (value!215963 List!43137)) (IntegerValue!21252 (value!215964 (_ BitVec 32)) (text!50035 List!43137)) (IntegerValue!21253 (value!215965 Int) (text!50036 List!43137)) (Times!7084) (Or!7084) (Equal!7084) (Minus!7084) (Broken!35424 (value!215966 List!43137)) (And!7084) (Div!7084) (LessEqual!7084) (Mod!7084) (Concat!18843) (Not!7084) (Plus!7084) (SpaceValue!7084 (value!215967 List!43137)) (IntegerValue!21254 (value!215968 Int) (text!50037 List!43137)) (StringLiteralValue!21253 (text!50038 List!43137)) (FloatLiteralValue!14169 (text!50039 List!43137)) (BytesLiteralValue!7084 (value!215969 List!43137)) (CommentValue!14169 (value!215970 List!43137)) (StringLiteralValue!21254 (value!215971 List!43137)) (ErrorTokenValue!7084 (msg!7145 List!43137)) )
))
(declare-datatypes ((Regex!11759 0))(
  ( (ElementMatch!11759 (c!694487 C!23704)) (Concat!18844 (regOne!24030 Regex!11759) (regTwo!24030 Regex!11759)) (EmptyExpr!11759) (Star!11759 (reg!12088 Regex!11759)) (EmptyLang!11759) (Union!11759 (regOne!24031 Regex!11759) (regTwo!24031 Regex!11759)) )
))
(declare-datatypes ((String!49138 0))(
  ( (String!49139 (value!215972 String)) )
))
(declare-datatypes ((TokenValueInjection!13596 0))(
  ( (TokenValueInjection!13597 (toValue!9362 Int) (toChars!9221 Int)) )
))
(declare-datatypes ((Rule!13508 0))(
  ( (Rule!13509 (regex!6854 Regex!11759) (tag!7714 String!49138) (isSeparator!6854 Bool) (transformation!6854 TokenValueInjection!13596)) )
))
(declare-datatypes ((List!43138 0))(
  ( (Nil!43014) (Cons!43014 (h!48434 Rule!13508) (t!333471 List!43138)) )
))
(declare-fun rules!2999 () List!43138)

(declare-fun rulesInvariant!5786 (LexerInterface!6443 List!43138) Bool)

(assert (=> b!4018533 (= res!1634784 (rulesInvariant!5786 thiss!21717 rules!2999))))

(declare-fun b!4018534 () Bool)

(declare-fun e!2492665 () Bool)

(declare-fun e!2492691 () Bool)

(assert (=> b!4018534 (= e!2492665 (not e!2492691))))

(declare-fun res!1634789 () Bool)

(assert (=> b!4018534 (=> res!1634789 e!2492691)))

(declare-fun lt!1426056 () List!43136)

(declare-fun lt!1426086 () List!43136)

(assert (=> b!4018534 (= res!1634789 (not (= lt!1426056 lt!1426086)))))

(declare-fun lt!1426083 () List!43136)

(declare-fun suffixResult!105 () List!43136)

(declare-fun ++!11256 (List!43136 List!43136) List!43136)

(assert (=> b!4018534 (= lt!1426056 (++!11256 lt!1426083 suffixResult!105))))

(declare-datatypes ((Unit!62102 0))(
  ( (Unit!62103) )
))
(declare-fun lt!1426097 () Unit!62102)

(declare-datatypes ((Token!12846 0))(
  ( (Token!12847 (value!215973 TokenValue!7084) (rule!9906 Rule!13508) (size!32159 Int) (originalCharacters!7454 List!43136)) )
))
(declare-fun token!484 () Token!12846)

(declare-fun lemmaInv!1069 (TokenValueInjection!13596) Unit!62102)

(assert (=> b!4018534 (= lt!1426097 (lemmaInv!1069 (transformation!6854 (rule!9906 token!484))))))

(declare-fun ruleValid!2786 (LexerInterface!6443 Rule!13508) Bool)

(assert (=> b!4018534 (ruleValid!2786 thiss!21717 (rule!9906 token!484))))

(declare-fun lt!1426047 () Unit!62102)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1860 (LexerInterface!6443 Rule!13508 List!43138) Unit!62102)

(assert (=> b!4018534 (= lt!1426047 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1860 thiss!21717 (rule!9906 token!484) rules!2999))))

(declare-fun e!2492657 () Bool)

(assert (=> b!4018535 (= e!2492657 (and tp!1221738 tp!1221736))))

(declare-fun b!4018536 () Bool)

(declare-fun e!2492664 () Bool)

(declare-fun e!2492666 () Bool)

(assert (=> b!4018536 (= e!2492664 e!2492666)))

(declare-fun res!1634799 () Bool)

(assert (=> b!4018536 (=> res!1634799 e!2492666)))

(declare-datatypes ((tuple2!42146 0))(
  ( (tuple2!42147 (_1!24207 Token!12846) (_2!24207 List!43136)) )
))
(declare-datatypes ((Option!9268 0))(
  ( (None!9267) (Some!9267 (v!39641 tuple2!42146)) )
))
(declare-fun lt!1426048 () Option!9268)

(get-info :version)

(assert (=> b!4018536 (= res!1634799 (not ((_ is Some!9267) lt!1426048)))))

(declare-fun lt!1426104 () List!43136)

(declare-fun maxPrefix!3741 (LexerInterface!6443 List!43138 List!43136) Option!9268)

(assert (=> b!4018536 (= lt!1426048 (maxPrefix!3741 thiss!21717 rules!2999 lt!1426104))))

(declare-fun lt!1426055 () List!43136)

(declare-fun lt!1426053 () tuple2!42146)

(declare-fun lt!1426059 () Token!12846)

(assert (=> b!4018536 (and (= suffixResult!105 lt!1426055) (= lt!1426053 (tuple2!42147 lt!1426059 lt!1426055)))))

(declare-fun lt!1426057 () Unit!62102)

(declare-fun lemmaSamePrefixThenSameSuffix!2112 (List!43136 List!43136 List!43136 List!43136 List!43136) Unit!62102)

(assert (=> b!4018536 (= lt!1426057 (lemmaSamePrefixThenSameSuffix!2112 lt!1426083 suffixResult!105 lt!1426083 lt!1426055 lt!1426086))))

(declare-fun lt!1426075 () List!43136)

(declare-fun isPrefix!3941 (List!43136 List!43136) Bool)

(assert (=> b!4018536 (isPrefix!3941 lt!1426083 lt!1426075)))

(declare-fun lt!1426102 () Unit!62102)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2782 (List!43136 List!43136) Unit!62102)

(assert (=> b!4018536 (= lt!1426102 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426083 lt!1426055))))

(declare-fun b!4018537 () Bool)

(declare-fun e!2492660 () Bool)

(assert (=> b!4018537 (= e!2492660 e!2492665)))

(declare-fun res!1634796 () Bool)

(assert (=> b!4018537 (=> (not res!1634796) (not e!2492665))))

(declare-fun lt!1426060 () Option!9268)

(assert (=> b!4018537 (= res!1634796 (= (maxPrefix!3741 thiss!21717 rules!2999 lt!1426086) lt!1426060))))

(assert (=> b!4018537 (= lt!1426060 (Some!9267 lt!1426053))))

(assert (=> b!4018537 (= lt!1426053 (tuple2!42147 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43136)

(declare-fun suffix!1299 () List!43136)

(assert (=> b!4018537 (= lt!1426086 (++!11256 prefix!494 suffix!1299))))

(declare-fun b!4018538 () Bool)

(declare-fun res!1634776 () Bool)

(declare-fun e!2492680 () Bool)

(assert (=> b!4018538 (=> (not res!1634776) (not e!2492680))))

(declare-fun lt!1426068 () TokenValue!7084)

(assert (=> b!4018538 (= res!1634776 (= (value!215973 token!484) lt!1426068))))

(declare-fun b!4018539 () Bool)

(declare-fun e!2492658 () Bool)

(declare-fun e!2492669 () Bool)

(assert (=> b!4018539 (= e!2492658 e!2492669)))

(declare-fun res!1634782 () Bool)

(assert (=> b!4018539 (=> res!1634782 e!2492669)))

(declare-fun lt!1426091 () List!43136)

(assert (=> b!4018539 (= res!1634782 (not (= lt!1426091 lt!1426086)))))

(declare-fun lt!1426071 () List!43136)

(assert (=> b!4018539 (= lt!1426091 (++!11256 prefix!494 lt!1426071))))

(declare-fun lt!1426078 () List!43136)

(assert (=> b!4018539 (= lt!1426091 (++!11256 lt!1426104 lt!1426078))))

(declare-fun newSuffix!27 () List!43136)

(declare-fun lt!1426101 () Unit!62102)

(declare-fun lemmaConcatAssociativity!2566 (List!43136 List!43136 List!43136) Unit!62102)

(assert (=> b!4018539 (= lt!1426101 (lemmaConcatAssociativity!2566 prefix!494 newSuffix!27 lt!1426078))))

(declare-fun b!4018540 () Bool)

(declare-fun e!2492677 () Bool)

(assert (=> b!4018540 (= e!2492677 e!2492664)))

(declare-fun res!1634794 () Bool)

(assert (=> b!4018540 (=> res!1634794 e!2492664)))

(assert (=> b!4018540 (= res!1634794 (not (= lt!1426075 lt!1426086)))))

(assert (=> b!4018540 (= lt!1426075 (++!11256 lt!1426083 lt!1426055))))

(declare-fun getSuffix!2366 (List!43136 List!43136) List!43136)

(assert (=> b!4018540 (= lt!1426055 (getSuffix!2366 lt!1426086 lt!1426083))))

(assert (=> b!4018540 e!2492680))

(declare-fun res!1634774 () Bool)

(assert (=> b!4018540 (=> (not res!1634774) (not e!2492680))))

(assert (=> b!4018540 (= res!1634774 (isPrefix!3941 lt!1426086 lt!1426086))))

(declare-fun lt!1426074 () Unit!62102)

(declare-fun lemmaIsPrefixRefl!2517 (List!43136 List!43136) Unit!62102)

(assert (=> b!4018540 (= lt!1426074 (lemmaIsPrefixRefl!2517 lt!1426086 lt!1426086))))

(declare-fun res!1634786 () Bool)

(assert (=> start!378436 (=> (not res!1634786) (not e!2492681))))

(assert (=> start!378436 (= res!1634786 ((_ is Lexer!6441) thiss!21717))))

(assert (=> start!378436 e!2492681))

(declare-fun e!2492671 () Bool)

(assert (=> start!378436 e!2492671))

(declare-fun e!2492659 () Bool)

(declare-fun inv!57451 (Token!12846) Bool)

(assert (=> start!378436 (and (inv!57451 token!484) e!2492659)))

(declare-fun e!2492675 () Bool)

(assert (=> start!378436 e!2492675))

(declare-fun e!2492688 () Bool)

(assert (=> start!378436 e!2492688))

(declare-fun e!2492678 () Bool)

(assert (=> start!378436 e!2492678))

(assert (=> start!378436 true))

(declare-fun e!2492686 () Bool)

(assert (=> start!378436 e!2492686))

(declare-fun e!2492689 () Bool)

(assert (=> start!378436 e!2492689))

(declare-fun b!4018541 () Bool)

(declare-fun tp_is_empty!20489 () Bool)

(declare-fun tp!1221731 () Bool)

(assert (=> b!4018541 (= e!2492671 (and tp_is_empty!20489 tp!1221731))))

(declare-fun b!4018542 () Bool)

(declare-fun res!1634785 () Bool)

(assert (=> b!4018542 (=> (not res!1634785) (not e!2492681))))

(declare-fun isEmpty!25686 (List!43138) Bool)

(assert (=> b!4018542 (= res!1634785 (not (isEmpty!25686 rules!2999)))))

(declare-fun b!4018543 () Bool)

(declare-fun res!1634773 () Bool)

(assert (=> b!4018543 (=> (not res!1634773) (not e!2492680))))

(declare-fun size!32160 (List!43136) Int)

(assert (=> b!4018543 (= res!1634773 (= (size!32159 token!484) (size!32160 (originalCharacters!7454 token!484))))))

(declare-fun b!4018544 () Bool)

(declare-fun e!2492684 () Bool)

(assert (=> b!4018544 (= e!2492691 e!2492684)))

(declare-fun res!1634781 () Bool)

(assert (=> b!4018544 (=> res!1634781 e!2492684)))

(assert (=> b!4018544 (= res!1634781 (not (isPrefix!3941 lt!1426083 lt!1426086)))))

(assert (=> b!4018544 (isPrefix!3941 prefix!494 lt!1426086)))

(declare-fun lt!1426069 () Unit!62102)

(assert (=> b!4018544 (= lt!1426069 (lemmaConcatTwoListThenFirstIsPrefix!2782 prefix!494 suffix!1299))))

(assert (=> b!4018544 (isPrefix!3941 lt!1426083 lt!1426056)))

(declare-fun lt!1426079 () Unit!62102)

(assert (=> b!4018544 (= lt!1426079 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426083 suffixResult!105))))

(declare-fun b!4018545 () Bool)

(declare-fun res!1634779 () Bool)

(assert (=> b!4018545 (=> (not res!1634779) (not e!2492681))))

(assert (=> b!4018545 (= res!1634779 (isPrefix!3941 newSuffix!27 suffix!1299))))

(declare-fun b!4018546 () Bool)

(declare-fun e!2492685 () Bool)

(declare-fun e!2492682 () Bool)

(assert (=> b!4018546 (= e!2492685 e!2492682)))

(declare-fun res!1634792 () Bool)

(assert (=> b!4018546 (=> res!1634792 e!2492682)))

(declare-fun lt!1426092 () List!43136)

(assert (=> b!4018546 (= res!1634792 (not (= lt!1426092 lt!1426104)))))

(declare-fun lt!1426062 () List!43136)

(declare-fun lt!1426072 () List!43136)

(assert (=> b!4018546 (= lt!1426092 (++!11256 lt!1426062 lt!1426072))))

(assert (=> b!4018546 (= lt!1426072 (getSuffix!2366 lt!1426104 lt!1426062))))

(declare-fun b!4018547 () Bool)

(declare-fun e!2492692 () Unit!62102)

(declare-fun Unit!62104 () Unit!62102)

(assert (=> b!4018547 (= e!2492692 Unit!62104)))

(declare-fun b!4018548 () Bool)

(declare-fun e!2492683 () Bool)

(assert (=> b!4018548 (= e!2492684 e!2492683)))

(declare-fun res!1634780 () Bool)

(assert (=> b!4018548 (=> res!1634780 e!2492683)))

(declare-fun lt!1426073 () List!43136)

(assert (=> b!4018548 (= res!1634780 (not (= lt!1426073 prefix!494)))))

(declare-fun lt!1426081 () List!43136)

(assert (=> b!4018548 (= lt!1426073 (++!11256 lt!1426083 lt!1426081))))

(assert (=> b!4018548 (= lt!1426081 (getSuffix!2366 prefix!494 lt!1426083))))

(assert (=> b!4018548 (isPrefix!3941 lt!1426083 prefix!494)))

(declare-fun lt!1426061 () Unit!62102)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!513 (List!43136 List!43136 List!43136) Unit!62102)

(assert (=> b!4018548 (= lt!1426061 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!513 prefix!494 lt!1426083 lt!1426086))))

(declare-fun b!4018549 () Bool)

(declare-fun e!2492673 () Unit!62102)

(declare-fun Unit!62105 () Unit!62102)

(assert (=> b!4018549 (= e!2492673 Unit!62105)))

(declare-fun b!4018550 () Bool)

(declare-fun res!1634783 () Bool)

(assert (=> b!4018550 (=> (not res!1634783) (not e!2492681))))

(assert (=> b!4018550 (= res!1634783 (>= (size!32160 suffix!1299) (size!32160 newSuffix!27)))))

(declare-fun b!4018551 () Bool)

(declare-fun e!2492690 () Bool)

(assert (=> b!4018551 (= e!2492690 (isPrefix!3941 lt!1426062 lt!1426104))))

(declare-fun b!4018552 () Bool)

(declare-fun tp!1221734 () Bool)

(assert (=> b!4018552 (= e!2492675 (and tp_is_empty!20489 tp!1221734))))

(declare-fun lt!1426089 () Int)

(declare-fun b!4018553 () Bool)

(assert (=> b!4018553 (= e!2492680 (and (= (size!32159 token!484) lt!1426089) (= (originalCharacters!7454 token!484) lt!1426083)))))

(declare-fun b!4018554 () Bool)

(declare-fun e!2492674 () Bool)

(assert (=> b!4018554 (= e!2492681 e!2492674)))

(declare-fun res!1634775 () Bool)

(assert (=> b!4018554 (=> (not res!1634775) (not e!2492674))))

(declare-fun lt!1426087 () Int)

(assert (=> b!4018554 (= res!1634775 (>= lt!1426087 lt!1426089))))

(assert (=> b!4018554 (= lt!1426089 (size!32160 lt!1426083))))

(assert (=> b!4018554 (= lt!1426087 (size!32160 prefix!494))))

(declare-fun list!15990 (BalanceConc!25724) List!43136)

(declare-fun charsOf!4670 (Token!12846) BalanceConc!25724)

(assert (=> b!4018554 (= lt!1426083 (list!15990 (charsOf!4670 token!484)))))

(declare-fun e!2492662 () Bool)

(assert (=> b!4018555 (= e!2492662 (and tp!1221733 tp!1221735))))

(declare-fun b!4018556 () Bool)

(declare-fun e!2492667 () Bool)

(assert (=> b!4018556 (= e!2492667 e!2492658)))

(declare-fun res!1634790 () Bool)

(assert (=> b!4018556 (=> res!1634790 e!2492658)))

(assert (=> b!4018556 (= res!1634790 (not (= lt!1426071 suffix!1299)))))

(assert (=> b!4018556 (= lt!1426071 (++!11256 newSuffix!27 lt!1426078))))

(assert (=> b!4018556 (= lt!1426078 (getSuffix!2366 suffix!1299 newSuffix!27))))

(declare-fun b!4018557 () Bool)

(assert (=> b!4018557 (= e!2492669 e!2492685)))

(declare-fun res!1634797 () Bool)

(assert (=> b!4018557 (=> res!1634797 e!2492685)))

(assert (=> b!4018557 (= res!1634797 (not (isPrefix!3941 lt!1426062 lt!1426086)))))

(assert (=> b!4018557 (isPrefix!3941 lt!1426062 lt!1426091)))

(declare-fun lt!1426080 () Unit!62102)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!754 (List!43136 List!43136 List!43136) Unit!62102)

(assert (=> b!4018557 (= lt!1426080 (lemmaPrefixStaysPrefixWhenAddingToSuffix!754 lt!1426062 lt!1426104 lt!1426078))))

(declare-fun b!4018558 () Bool)

(declare-fun tp!1221737 () Bool)

(assert (=> b!4018558 (= e!2492688 (and tp_is_empty!20489 tp!1221737))))

(declare-fun b!4018559 () Bool)

(declare-fun tp!1221740 () Bool)

(assert (=> b!4018559 (= e!2492678 (and tp_is_empty!20489 tp!1221740))))

(declare-fun b!4018560 () Bool)

(declare-fun e!2492663 () Bool)

(declare-fun tp!1221730 () Bool)

(assert (=> b!4018560 (= e!2492686 (and e!2492663 tp!1221730))))

(declare-fun b!4018561 () Bool)

(declare-fun e!2492676 () Bool)

(declare-fun e!2492668 () Bool)

(assert (=> b!4018561 (= e!2492676 e!2492668)))

(declare-fun res!1634777 () Bool)

(assert (=> b!4018561 (=> res!1634777 e!2492668)))

(declare-fun lt!1426070 () Option!9268)

(assert (=> b!4018561 (= res!1634777 (not (= lt!1426070 lt!1426060)))))

(assert (=> b!4018561 (= lt!1426070 (Some!9267 (tuple2!42147 lt!1426059 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2761 (LexerInterface!6443 Rule!13508 List!43136) Option!9268)

(assert (=> b!4018561 (= lt!1426070 (maxPrefixOneRule!2761 thiss!21717 (rule!9906 token!484) lt!1426086))))

(assert (=> b!4018561 (= lt!1426059 (Token!12847 lt!1426068 (rule!9906 token!484) lt!1426089 lt!1426083))))

(declare-fun apply!10051 (TokenValueInjection!13596 BalanceConc!25724) TokenValue!7084)

(declare-fun seqFromList!5079 (List!43136) BalanceConc!25724)

(assert (=> b!4018561 (= lt!1426068 (apply!10051 (transformation!6854 (rule!9906 token!484)) (seqFromList!5079 lt!1426083)))))

(declare-fun lt!1426076 () Unit!62102)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1579 (LexerInterface!6443 List!43138 List!43136 List!43136 List!43136 Rule!13508) Unit!62102)

(assert (=> b!4018561 (= lt!1426076 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1579 thiss!21717 rules!2999 lt!1426083 lt!1426086 suffixResult!105 (rule!9906 token!484)))))

(declare-fun lt!1426098 () List!43136)

(assert (=> b!4018561 (= lt!1426098 suffixResult!105)))

(declare-fun lt!1426067 () Unit!62102)

(assert (=> b!4018561 (= lt!1426067 (lemmaSamePrefixThenSameSuffix!2112 lt!1426083 lt!1426098 lt!1426083 suffixResult!105 lt!1426086))))

(declare-fun lt!1426090 () List!43136)

(assert (=> b!4018561 (isPrefix!3941 lt!1426083 lt!1426090)))

(declare-fun lt!1426052 () Unit!62102)

(assert (=> b!4018561 (= lt!1426052 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426083 lt!1426098))))

(declare-fun b!4018562 () Bool)

(declare-fun res!1634798 () Bool)

(assert (=> b!4018562 (=> res!1634798 e!2492685)))

(declare-fun lt!1426085 () List!43136)

(assert (=> b!4018562 (= res!1634798 (not (= lt!1426085 lt!1426104)))))

(declare-fun b!4018563 () Bool)

(declare-fun Unit!62106 () Unit!62102)

(assert (=> b!4018563 (= e!2492692 Unit!62106)))

(declare-fun lt!1426065 () Unit!62102)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!448 (LexerInterface!6443 List!43138 Rule!13508 List!43136 List!43136 List!43136 Rule!13508) Unit!62102)

(assert (=> b!4018563 (= lt!1426065 (lemmaMaxPrefixOutputsMaxPrefix!448 thiss!21717 rules!2999 (rule!9906 (_1!24207 (v!39641 lt!1426048))) lt!1426062 lt!1426104 lt!1426083 (rule!9906 token!484)))))

(assert (=> b!4018563 false))

(declare-fun tp!1221741 () Bool)

(declare-fun b!4018564 () Bool)

(declare-fun e!2492670 () Bool)

(declare-fun inv!21 (TokenValue!7084) Bool)

(assert (=> b!4018564 (= e!2492659 (and (inv!21 (value!215973 token!484)) e!2492670 tp!1221741))))

(declare-fun b!4018565 () Bool)

(assert (=> b!4018565 (= e!2492682 e!2492690)))

(declare-fun res!1634788 () Bool)

(assert (=> b!4018565 (=> res!1634788 e!2492690)))

(declare-fun lt!1426049 () Int)

(assert (=> b!4018565 (= res!1634788 (not (= lt!1426089 lt!1426049)))))

(declare-fun lt!1426051 () Unit!62102)

(assert (=> b!4018565 (= lt!1426051 e!2492692)))

(declare-fun c!694485 () Bool)

(assert (=> b!4018565 (= c!694485 (< lt!1426049 lt!1426089))))

(declare-fun lt!1426094 () Unit!62102)

(assert (=> b!4018565 (= lt!1426094 e!2492673)))

(declare-fun c!694484 () Bool)

(assert (=> b!4018565 (= c!694484 (> lt!1426049 lt!1426089))))

(assert (=> b!4018565 (= (_2!24207 (v!39641 lt!1426048)) lt!1426072)))

(declare-fun lt!1426095 () Unit!62102)

(assert (=> b!4018565 (= lt!1426095 (lemmaSamePrefixThenSameSuffix!2112 lt!1426062 (_2!24207 (v!39641 lt!1426048)) lt!1426062 lt!1426072 lt!1426104))))

(assert (=> b!4018565 (isPrefix!3941 lt!1426062 lt!1426092)))

(declare-fun lt!1426088 () Unit!62102)

(assert (=> b!4018565 (= lt!1426088 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426062 lt!1426072))))

(declare-fun b!4018566 () Bool)

(assert (=> b!4018566 (= e!2492674 e!2492660)))

(declare-fun res!1634793 () Bool)

(assert (=> b!4018566 (=> (not res!1634793) (not e!2492660))))

(declare-fun lt!1426093 () List!43136)

(assert (=> b!4018566 (= res!1634793 (= lt!1426093 lt!1426104))))

(assert (=> b!4018566 (= lt!1426104 (++!11256 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43136)

(assert (=> b!4018566 (= lt!1426093 (++!11256 lt!1426083 newSuffixResult!27))))

(declare-fun tp!1221732 () Bool)

(declare-fun b!4018567 () Bool)

(declare-fun inv!57448 (String!49138) Bool)

(declare-fun inv!57452 (TokenValueInjection!13596) Bool)

(assert (=> b!4018567 (= e!2492670 (and tp!1221732 (inv!57448 (tag!7714 (rule!9906 token!484))) (inv!57452 (transformation!6854 (rule!9906 token!484))) e!2492657))))

(declare-fun b!4018568 () Bool)

(declare-fun tp!1221742 () Bool)

(assert (=> b!4018568 (= e!2492689 (and tp_is_empty!20489 tp!1221742))))

(declare-fun b!4018569 () Bool)

(declare-fun tp!1221739 () Bool)

(assert (=> b!4018569 (= e!2492663 (and tp!1221739 (inv!57448 (tag!7714 (h!48434 rules!2999))) (inv!57452 (transformation!6854 (h!48434 rules!2999))) e!2492662))))

(declare-fun b!4018570 () Bool)

(declare-fun Unit!62107 () Unit!62102)

(assert (=> b!4018570 (= e!2492673 Unit!62107)))

(declare-fun lt!1426100 () Unit!62102)

(assert (=> b!4018570 (= lt!1426100 (lemmaMaxPrefixOutputsMaxPrefix!448 thiss!21717 rules!2999 (rule!9906 token!484) lt!1426083 lt!1426086 lt!1426062 (rule!9906 (_1!24207 (v!39641 lt!1426048)))))))

(declare-fun res!1634787 () Bool)

(declare-fun matchR!5720 (Regex!11759 List!43136) Bool)

(assert (=> b!4018570 (= res!1634787 (not (matchR!5720 (regex!6854 (rule!9906 (_1!24207 (v!39641 lt!1426048)))) lt!1426062)))))

(declare-fun e!2492661 () Bool)

(assert (=> b!4018570 (=> (not res!1634787) (not e!2492661))))

(assert (=> b!4018570 e!2492661))

(declare-fun b!4018571 () Bool)

(assert (=> b!4018571 (= e!2492661 false)))

(declare-fun b!4018572 () Bool)

(assert (=> b!4018572 (= e!2492666 e!2492667)))

(declare-fun res!1634795 () Bool)

(assert (=> b!4018572 (=> res!1634795 e!2492667)))

(declare-fun lt!1426077 () Option!9268)

(assert (=> b!4018572 (= res!1634795 (not (= lt!1426077 (Some!9267 (v!39641 lt!1426048)))))))

(assert (=> b!4018572 (isPrefix!3941 lt!1426062 (++!11256 lt!1426062 newSuffixResult!27))))

(declare-fun lt!1426058 () Unit!62102)

(assert (=> b!4018572 (= lt!1426058 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426062 newSuffixResult!27))))

(assert (=> b!4018572 (isPrefix!3941 lt!1426062 lt!1426085)))

(assert (=> b!4018572 (= lt!1426085 (++!11256 lt!1426062 (_2!24207 (v!39641 lt!1426048))))))

(declare-fun lt!1426096 () Unit!62102)

(assert (=> b!4018572 (= lt!1426096 (lemmaConcatTwoListThenFirstIsPrefix!2782 lt!1426062 (_2!24207 (v!39641 lt!1426048))))))

(declare-fun lt!1426064 () TokenValue!7084)

(assert (=> b!4018572 (= lt!1426077 (Some!9267 (tuple2!42147 (Token!12847 lt!1426064 (rule!9906 (_1!24207 (v!39641 lt!1426048))) lt!1426049 lt!1426062) (_2!24207 (v!39641 lt!1426048)))))))

(assert (=> b!4018572 (= lt!1426077 (maxPrefixOneRule!2761 thiss!21717 (rule!9906 (_1!24207 (v!39641 lt!1426048))) lt!1426104))))

(assert (=> b!4018572 (= lt!1426049 (size!32160 lt!1426062))))

(assert (=> b!4018572 (= lt!1426064 (apply!10051 (transformation!6854 (rule!9906 (_1!24207 (v!39641 lt!1426048)))) (seqFromList!5079 lt!1426062)))))

(declare-fun lt!1426103 () Unit!62102)

(assert (=> b!4018572 (= lt!1426103 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1579 thiss!21717 rules!2999 lt!1426062 lt!1426104 (_2!24207 (v!39641 lt!1426048)) (rule!9906 (_1!24207 (v!39641 lt!1426048)))))))

(assert (=> b!4018572 (= lt!1426062 (list!15990 (charsOf!4670 (_1!24207 (v!39641 lt!1426048)))))))

(declare-fun lt!1426063 () Unit!62102)

(assert (=> b!4018572 (= lt!1426063 (lemmaInv!1069 (transformation!6854 (rule!9906 (_1!24207 (v!39641 lt!1426048))))))))

(assert (=> b!4018572 (ruleValid!2786 thiss!21717 (rule!9906 (_1!24207 (v!39641 lt!1426048))))))

(declare-fun lt!1426084 () Unit!62102)

(assert (=> b!4018572 (= lt!1426084 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1860 thiss!21717 (rule!9906 (_1!24207 (v!39641 lt!1426048))) rules!2999))))

(declare-fun lt!1426082 () Unit!62102)

(declare-fun lemmaCharactersSize!1413 (Token!12846) Unit!62102)

(assert (=> b!4018572 (= lt!1426082 (lemmaCharactersSize!1413 token!484))))

(declare-fun lt!1426054 () Unit!62102)

(assert (=> b!4018572 (= lt!1426054 (lemmaCharactersSize!1413 (_1!24207 (v!39641 lt!1426048))))))

(declare-fun b!4018573 () Bool)

(assert (=> b!4018573 (= e!2492668 e!2492677)))

(declare-fun res!1634778 () Bool)

(assert (=> b!4018573 (=> res!1634778 e!2492677)))

(assert (=> b!4018573 (= res!1634778 (not (matchR!5720 (regex!6854 (rule!9906 token!484)) lt!1426083)))))

(assert (=> b!4018573 (isPrefix!3941 lt!1426083 lt!1426104)))

(declare-fun lt!1426066 () Unit!62102)

(assert (=> b!4018573 (= lt!1426066 (lemmaPrefixStaysPrefixWhenAddingToSuffix!754 lt!1426083 prefix!494 newSuffix!27))))

(declare-fun lt!1426105 () Unit!62102)

(assert (=> b!4018573 (= lt!1426105 (lemmaPrefixStaysPrefixWhenAddingToSuffix!754 lt!1426083 prefix!494 suffix!1299))))

(declare-fun b!4018574 () Bool)

(assert (=> b!4018574 (= e!2492683 e!2492676)))

(declare-fun res!1634791 () Bool)

(assert (=> b!4018574 (=> res!1634791 e!2492676)))

(declare-fun lt!1426099 () List!43136)

(assert (=> b!4018574 (= res!1634791 (or (not (= lt!1426086 lt!1426099)) (not (= lt!1426086 lt!1426090))))))

(assert (=> b!4018574 (= lt!1426099 lt!1426090)))

(assert (=> b!4018574 (= lt!1426090 (++!11256 lt!1426083 lt!1426098))))

(assert (=> b!4018574 (= lt!1426099 (++!11256 lt!1426073 suffix!1299))))

(assert (=> b!4018574 (= lt!1426098 (++!11256 lt!1426081 suffix!1299))))

(declare-fun lt!1426050 () Unit!62102)

(assert (=> b!4018574 (= lt!1426050 (lemmaConcatAssociativity!2566 lt!1426083 lt!1426081 suffix!1299))))

(assert (= (and start!378436 res!1634786) b!4018542))

(assert (= (and b!4018542 res!1634785) b!4018533))

(assert (= (and b!4018533 res!1634784) b!4018550))

(assert (= (and b!4018550 res!1634783) b!4018545))

(assert (= (and b!4018545 res!1634779) b!4018554))

(assert (= (and b!4018554 res!1634775) b!4018566))

(assert (= (and b!4018566 res!1634793) b!4018537))

(assert (= (and b!4018537 res!1634796) b!4018534))

(assert (= (and b!4018534 (not res!1634789)) b!4018544))

(assert (= (and b!4018544 (not res!1634781)) b!4018548))

(assert (= (and b!4018548 (not res!1634780)) b!4018574))

(assert (= (and b!4018574 (not res!1634791)) b!4018561))

(assert (= (and b!4018561 (not res!1634777)) b!4018573))

(assert (= (and b!4018573 (not res!1634778)) b!4018540))

(assert (= (and b!4018540 res!1634774) b!4018538))

(assert (= (and b!4018538 res!1634776) b!4018543))

(assert (= (and b!4018543 res!1634773) b!4018553))

(assert (= (and b!4018540 (not res!1634794)) b!4018536))

(assert (= (and b!4018536 (not res!1634799)) b!4018572))

(assert (= (and b!4018572 (not res!1634795)) b!4018556))

(assert (= (and b!4018556 (not res!1634790)) b!4018539))

(assert (= (and b!4018539 (not res!1634782)) b!4018557))

(assert (= (and b!4018557 (not res!1634797)) b!4018562))

(assert (= (and b!4018562 (not res!1634798)) b!4018546))

(assert (= (and b!4018546 (not res!1634792)) b!4018565))

(assert (= (and b!4018565 c!694484) b!4018570))

(assert (= (and b!4018565 (not c!694484)) b!4018549))

(assert (= (and b!4018570 res!1634787) b!4018571))

(assert (= (and b!4018565 c!694485) b!4018563))

(assert (= (and b!4018565 (not c!694485)) b!4018547))

(assert (= (and b!4018565 (not res!1634788)) b!4018551))

(assert (= (and start!378436 ((_ is Cons!43012) prefix!494)) b!4018541))

(assert (= b!4018567 b!4018535))

(assert (= b!4018564 b!4018567))

(assert (= start!378436 b!4018564))

(assert (= (and start!378436 ((_ is Cons!43012) suffixResult!105)) b!4018552))

(assert (= (and start!378436 ((_ is Cons!43012) suffix!1299)) b!4018558))

(assert (= (and start!378436 ((_ is Cons!43012) newSuffix!27)) b!4018559))

(assert (= b!4018569 b!4018555))

(assert (= b!4018560 b!4018569))

(assert (= (and start!378436 ((_ is Cons!43014) rules!2999)) b!4018560))

(assert (= (and start!378436 ((_ is Cons!43012) newSuffixResult!27)) b!4018568))

(declare-fun m!4607771 () Bool)

(assert (=> b!4018533 m!4607771))

(declare-fun m!4607773 () Bool)

(assert (=> b!4018561 m!4607773))

(declare-fun m!4607775 () Bool)

(assert (=> b!4018561 m!4607775))

(declare-fun m!4607777 () Bool)

(assert (=> b!4018561 m!4607777))

(declare-fun m!4607779 () Bool)

(assert (=> b!4018561 m!4607779))

(declare-fun m!4607781 () Bool)

(assert (=> b!4018561 m!4607781))

(declare-fun m!4607783 () Bool)

(assert (=> b!4018561 m!4607783))

(declare-fun m!4607785 () Bool)

(assert (=> b!4018561 m!4607785))

(assert (=> b!4018561 m!4607779))

(declare-fun m!4607787 () Bool)

(assert (=> b!4018534 m!4607787))

(declare-fun m!4607789 () Bool)

(assert (=> b!4018534 m!4607789))

(declare-fun m!4607791 () Bool)

(assert (=> b!4018534 m!4607791))

(declare-fun m!4607793 () Bool)

(assert (=> b!4018534 m!4607793))

(declare-fun m!4607795 () Bool)

(assert (=> b!4018551 m!4607795))

(declare-fun m!4607797 () Bool)

(assert (=> b!4018539 m!4607797))

(declare-fun m!4607799 () Bool)

(assert (=> b!4018539 m!4607799))

(declare-fun m!4607801 () Bool)

(assert (=> b!4018539 m!4607801))

(declare-fun m!4607803 () Bool)

(assert (=> b!4018556 m!4607803))

(declare-fun m!4607805 () Bool)

(assert (=> b!4018556 m!4607805))

(declare-fun m!4607807 () Bool)

(assert (=> b!4018572 m!4607807))

(declare-fun m!4607809 () Bool)

(assert (=> b!4018572 m!4607809))

(declare-fun m!4607811 () Bool)

(assert (=> b!4018572 m!4607811))

(declare-fun m!4607813 () Bool)

(assert (=> b!4018572 m!4607813))

(declare-fun m!4607815 () Bool)

(assert (=> b!4018572 m!4607815))

(declare-fun m!4607817 () Bool)

(assert (=> b!4018572 m!4607817))

(declare-fun m!4607819 () Bool)

(assert (=> b!4018572 m!4607819))

(declare-fun m!4607821 () Bool)

(assert (=> b!4018572 m!4607821))

(declare-fun m!4607823 () Bool)

(assert (=> b!4018572 m!4607823))

(declare-fun m!4607825 () Bool)

(assert (=> b!4018572 m!4607825))

(assert (=> b!4018572 m!4607819))

(declare-fun m!4607827 () Bool)

(assert (=> b!4018572 m!4607827))

(declare-fun m!4607829 () Bool)

(assert (=> b!4018572 m!4607829))

(declare-fun m!4607831 () Bool)

(assert (=> b!4018572 m!4607831))

(declare-fun m!4607833 () Bool)

(assert (=> b!4018572 m!4607833))

(declare-fun m!4607835 () Bool)

(assert (=> b!4018572 m!4607835))

(assert (=> b!4018572 m!4607829))

(assert (=> b!4018572 m!4607823))

(declare-fun m!4607837 () Bool)

(assert (=> b!4018572 m!4607837))

(declare-fun m!4607839 () Bool)

(assert (=> b!4018572 m!4607839))

(declare-fun m!4607841 () Bool)

(assert (=> b!4018572 m!4607841))

(declare-fun m!4607843 () Bool)

(assert (=> b!4018557 m!4607843))

(declare-fun m!4607845 () Bool)

(assert (=> b!4018557 m!4607845))

(declare-fun m!4607847 () Bool)

(assert (=> b!4018557 m!4607847))

(declare-fun m!4607849 () Bool)

(assert (=> b!4018564 m!4607849))

(declare-fun m!4607851 () Bool)

(assert (=> b!4018550 m!4607851))

(declare-fun m!4607853 () Bool)

(assert (=> b!4018550 m!4607853))

(declare-fun m!4607855 () Bool)

(assert (=> b!4018546 m!4607855))

(declare-fun m!4607857 () Bool)

(assert (=> b!4018546 m!4607857))

(declare-fun m!4607859 () Bool)

(assert (=> b!4018548 m!4607859))

(declare-fun m!4607861 () Bool)

(assert (=> b!4018548 m!4607861))

(declare-fun m!4607863 () Bool)

(assert (=> b!4018548 m!4607863))

(declare-fun m!4607865 () Bool)

(assert (=> b!4018548 m!4607865))

(declare-fun m!4607867 () Bool)

(assert (=> b!4018566 m!4607867))

(declare-fun m!4607869 () Bool)

(assert (=> b!4018566 m!4607869))

(declare-fun m!4607871 () Bool)

(assert (=> b!4018569 m!4607871))

(declare-fun m!4607873 () Bool)

(assert (=> b!4018569 m!4607873))

(declare-fun m!4607875 () Bool)

(assert (=> b!4018563 m!4607875))

(declare-fun m!4607877 () Bool)

(assert (=> start!378436 m!4607877))

(declare-fun m!4607879 () Bool)

(assert (=> b!4018542 m!4607879))

(declare-fun m!4607881 () Bool)

(assert (=> b!4018573 m!4607881))

(declare-fun m!4607883 () Bool)

(assert (=> b!4018573 m!4607883))

(declare-fun m!4607885 () Bool)

(assert (=> b!4018573 m!4607885))

(declare-fun m!4607887 () Bool)

(assert (=> b!4018573 m!4607887))

(declare-fun m!4607889 () Bool)

(assert (=> b!4018574 m!4607889))

(declare-fun m!4607891 () Bool)

(assert (=> b!4018574 m!4607891))

(declare-fun m!4607893 () Bool)

(assert (=> b!4018574 m!4607893))

(declare-fun m!4607895 () Bool)

(assert (=> b!4018574 m!4607895))

(declare-fun m!4607897 () Bool)

(assert (=> b!4018545 m!4607897))

(declare-fun m!4607899 () Bool)

(assert (=> b!4018565 m!4607899))

(declare-fun m!4607901 () Bool)

(assert (=> b!4018565 m!4607901))

(declare-fun m!4607903 () Bool)

(assert (=> b!4018565 m!4607903))

(declare-fun m!4607905 () Bool)

(assert (=> b!4018570 m!4607905))

(declare-fun m!4607907 () Bool)

(assert (=> b!4018570 m!4607907))

(declare-fun m!4607909 () Bool)

(assert (=> b!4018540 m!4607909))

(declare-fun m!4607911 () Bool)

(assert (=> b!4018540 m!4607911))

(declare-fun m!4607913 () Bool)

(assert (=> b!4018540 m!4607913))

(declare-fun m!4607915 () Bool)

(assert (=> b!4018540 m!4607915))

(declare-fun m!4607917 () Bool)

(assert (=> b!4018554 m!4607917))

(declare-fun m!4607919 () Bool)

(assert (=> b!4018554 m!4607919))

(declare-fun m!4607921 () Bool)

(assert (=> b!4018554 m!4607921))

(assert (=> b!4018554 m!4607921))

(declare-fun m!4607923 () Bool)

(assert (=> b!4018554 m!4607923))

(declare-fun m!4607925 () Bool)

(assert (=> b!4018544 m!4607925))

(declare-fun m!4607927 () Bool)

(assert (=> b!4018544 m!4607927))

(declare-fun m!4607929 () Bool)

(assert (=> b!4018544 m!4607929))

(declare-fun m!4607931 () Bool)

(assert (=> b!4018544 m!4607931))

(declare-fun m!4607933 () Bool)

(assert (=> b!4018544 m!4607933))

(declare-fun m!4607935 () Bool)

(assert (=> b!4018536 m!4607935))

(declare-fun m!4607937 () Bool)

(assert (=> b!4018536 m!4607937))

(declare-fun m!4607939 () Bool)

(assert (=> b!4018536 m!4607939))

(declare-fun m!4607941 () Bool)

(assert (=> b!4018536 m!4607941))

(declare-fun m!4607943 () Bool)

(assert (=> b!4018537 m!4607943))

(declare-fun m!4607945 () Bool)

(assert (=> b!4018537 m!4607945))

(declare-fun m!4607947 () Bool)

(assert (=> b!4018567 m!4607947))

(declare-fun m!4607949 () Bool)

(assert (=> b!4018567 m!4607949))

(declare-fun m!4607951 () Bool)

(assert (=> b!4018543 m!4607951))

(check-sat b_and!308711 (not b!4018570) (not b!4018544) (not b_next!112519) (not b!4018551) (not b!4018566) (not b!4018573) (not b!4018561) b_and!308715 (not b!4018563) tp_is_empty!20489 (not b!4018574) (not b!4018548) (not b!4018569) (not b!4018539) (not b!4018572) (not b!4018552) (not b!4018560) (not b_next!112515) (not b!4018545) (not b!4018543) (not b_next!112517) (not b!4018567) b_and!308713 (not b_next!112513) (not b!4018533) (not b!4018565) (not b!4018568) b_and!308717 (not b!4018554) (not b!4018559) (not b!4018541) (not b!4018542) (not b!4018536) (not b!4018558) (not start!378436) (not b!4018564) (not b!4018534) (not b!4018540) (not b!4018556) (not b!4018537) (not b!4018546) (not b!4018557) (not b!4018550))
(check-sat b_and!308711 (not b_next!112519) (not b_next!112515) (not b_next!112517) b_and!308713 (not b_next!112513) b_and!308717 b_and!308715)

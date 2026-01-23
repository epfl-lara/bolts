; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388256 () Bool)

(assert start!388256)

(declare-fun b!4098834 () Bool)

(declare-fun b_free!114761 () Bool)

(declare-fun b_next!115465 () Bool)

(assert (=> b!4098834 (= b_free!114761 (not b_next!115465))))

(declare-fun tp!1240744 () Bool)

(declare-fun b_and!316439 () Bool)

(assert (=> b!4098834 (= tp!1240744 b_and!316439)))

(declare-fun b_free!114763 () Bool)

(declare-fun b_next!115467 () Bool)

(assert (=> b!4098834 (= b_free!114763 (not b_next!115467))))

(declare-fun tp!1240743 () Bool)

(declare-fun b_and!316441 () Bool)

(assert (=> b!4098834 (= tp!1240743 b_and!316441)))

(declare-fun b!4098827 () Bool)

(declare-fun b_free!114765 () Bool)

(declare-fun b_next!115469 () Bool)

(assert (=> b!4098827 (= b_free!114765 (not b_next!115469))))

(declare-fun tp!1240747 () Bool)

(declare-fun b_and!316443 () Bool)

(assert (=> b!4098827 (= tp!1240747 b_and!316443)))

(declare-fun b_free!114767 () Bool)

(declare-fun b_next!115471 () Bool)

(assert (=> b!4098827 (= b_free!114767 (not b_next!115471))))

(declare-fun tp!1240745 () Bool)

(declare-fun b_and!316445 () Bool)

(assert (=> b!4098827 (= tp!1240745 b_and!316445)))

(declare-fun b!4098825 () Bool)

(declare-fun e!2543663 () Bool)

(declare-fun e!2543670 () Bool)

(assert (=> b!4098825 (= e!2543663 (not e!2543670))))

(declare-fun res!1675712 () Bool)

(assert (=> b!4098825 (=> res!1675712 e!2543670)))

(declare-datatypes ((C!24260 0))(
  ( (C!24261 (val!14240 Int)) )
))
(declare-datatypes ((List!44130 0))(
  ( (Nil!44006) (Cons!44006 (h!49426 C!24260) (t!339625 List!44130)) )
))
(declare-datatypes ((IArray!26691 0))(
  ( (IArray!26692 (innerList!13403 List!44130)) )
))
(declare-datatypes ((Conc!13343 0))(
  ( (Node!13343 (left!33063 Conc!13343) (right!33393 Conc!13343) (csize!26916 Int) (cheight!13554 Int)) (Leaf!20624 (xs!16649 IArray!26691) (csize!26917 Int)) (Empty!13343) )
))
(declare-datatypes ((List!44131 0))(
  ( (Nil!44007) (Cons!44007 (h!49427 (_ BitVec 16)) (t!339626 List!44131)) )
))
(declare-datatypes ((Regex!12037 0))(
  ( (ElementMatch!12037 (c!706230 C!24260)) (Concat!19399 (regOne!24586 Regex!12037) (regTwo!24586 Regex!12037)) (EmptyExpr!12037) (Star!12037 (reg!12366 Regex!12037)) (EmptyLang!12037) (Union!12037 (regOne!24587 Regex!12037) (regTwo!24587 Regex!12037)) )
))
(declare-datatypes ((TokenValue!7362 0))(
  ( (FloatLiteralValue!14724 (text!51979 List!44131)) (TokenValueExt!7361 (__x!26941 Int)) (Broken!36810 (value!223880 List!44131)) (Object!7485) (End!7362) (Def!7362) (Underscore!7362) (Match!7362) (Else!7362) (Error!7362) (Case!7362) (If!7362) (Extends!7362) (Abstract!7362) (Class!7362) (Val!7362) (DelimiterValue!14724 (del!7422 List!44131)) (KeywordValue!7368 (value!223881 List!44131)) (CommentValue!14724 (value!223882 List!44131)) (WhitespaceValue!14724 (value!223883 List!44131)) (IndentationValue!7362 (value!223884 List!44131)) (String!50559) (Int32!7362) (Broken!36811 (value!223885 List!44131)) (Boolean!7363) (Unit!63530) (OperatorValue!7365 (op!7422 List!44131)) (IdentifierValue!14724 (value!223886 List!44131)) (IdentifierValue!14725 (value!223887 List!44131)) (WhitespaceValue!14725 (value!223888 List!44131)) (True!14724) (False!14724) (Broken!36812 (value!223889 List!44131)) (Broken!36813 (value!223890 List!44131)) (True!14725) (RightBrace!7362) (RightBracket!7362) (Colon!7362) (Null!7362) (Comma!7362) (LeftBracket!7362) (False!14725) (LeftBrace!7362) (ImaginaryLiteralValue!7362 (text!51980 List!44131)) (StringLiteralValue!22086 (value!223891 List!44131)) (EOFValue!7362 (value!223892 List!44131)) (IdentValue!7362 (value!223893 List!44131)) (DelimiterValue!14725 (value!223894 List!44131)) (DedentValue!7362 (value!223895 List!44131)) (NewLineValue!7362 (value!223896 List!44131)) (IntegerValue!22086 (value!223897 (_ BitVec 32)) (text!51981 List!44131)) (IntegerValue!22087 (value!223898 Int) (text!51982 List!44131)) (Times!7362) (Or!7362) (Equal!7362) (Minus!7362) (Broken!36814 (value!223899 List!44131)) (And!7362) (Div!7362) (LessEqual!7362) (Mod!7362) (Concat!19400) (Not!7362) (Plus!7362) (SpaceValue!7362 (value!223900 List!44131)) (IntegerValue!22088 (value!223901 Int) (text!51983 List!44131)) (StringLiteralValue!22087 (text!51984 List!44131)) (FloatLiteralValue!14725 (text!51985 List!44131)) (BytesLiteralValue!7362 (value!223902 List!44131)) (CommentValue!14725 (value!223903 List!44131)) (StringLiteralValue!22088 (value!223904 List!44131)) (ErrorTokenValue!7362 (msg!7423 List!44131)) )
))
(declare-datatypes ((BalanceConc!26280 0))(
  ( (BalanceConc!26281 (c!706231 Conc!13343)) )
))
(declare-datatypes ((TokenValueInjection!14152 0))(
  ( (TokenValueInjection!14153 (toValue!9736 Int) (toChars!9595 Int)) )
))
(declare-datatypes ((String!50560 0))(
  ( (String!50561 (value!223905 String)) )
))
(declare-datatypes ((Rule!14064 0))(
  ( (Rule!14065 (regex!7132 Regex!12037) (tag!7992 String!50560) (isSeparator!7132 Bool) (transformation!7132 TokenValueInjection!14152)) )
))
(declare-datatypes ((List!44132 0))(
  ( (Nil!44008) (Cons!44008 (h!49428 Rule!14064) (t!339627 List!44132)) )
))
(declare-fun rTail!27 () List!44132)

(declare-fun isEmpty!26324 (List!44132) Bool)

(assert (=> b!4098825 (= res!1675712 (isEmpty!26324 (t!339627 rTail!27)))))

(declare-fun rHead!24 () Rule!14064)

(assert (=> b!4098825 (not (= (tag!7992 rHead!24) (tag!7992 (h!49428 rTail!27))))))

(declare-fun lt!1466109 () List!44132)

(declare-datatypes ((LexerInterface!6721 0))(
  ( (LexerInterfaceExt!6718 (__x!26942 Int)) (Lexer!6719) )
))
(declare-fun thiss!26455 () LexerInterface!6721)

(declare-datatypes ((Unit!63531 0))(
  ( (Unit!63532) )
))
(declare-fun lt!1466113 () Unit!63531)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!8 (LexerInterface!6721 List!44132 Rule!14064 Rule!14064) Unit!63531)

(assert (=> b!4098825 (= lt!1466113 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!8 thiss!26455 lt!1466109 rHead!24 (h!49428 rTail!27)))))

(declare-fun lt!1466111 () List!44132)

(declare-datatypes ((List!44133 0))(
  ( (Nil!44009) (Cons!44009 (h!49429 String!50560) (t!339628 List!44133)) )
))
(declare-fun noDuplicateTag!2811 (LexerInterface!6721 List!44132 List!44133) Bool)

(assert (=> b!4098825 (noDuplicateTag!2811 thiss!26455 (Cons!44008 (h!49428 rTail!27) lt!1466111) Nil!44009)))

(assert (=> b!4098825 (= lt!1466111 (Cons!44008 rHead!24 (t!339627 rTail!27)))))

(declare-fun lt!1466112 () Unit!63531)

(declare-fun lemmaNoDuplicateCanReorder!10 (LexerInterface!6721 Rule!14064 Rule!14064 List!44132) Unit!63531)

(assert (=> b!4098825 (= lt!1466112 (lemmaNoDuplicateCanReorder!10 thiss!26455 rHead!24 (h!49428 rTail!27) (t!339627 rTail!27)))))

(declare-fun b!4098826 () Bool)

(declare-fun e!2543672 () Bool)

(declare-fun tp_is_empty!21061 () Bool)

(declare-fun tp!1240749 () Bool)

(assert (=> b!4098826 (= e!2543672 (and tp_is_empty!21061 tp!1240749))))

(declare-fun e!2543669 () Bool)

(assert (=> b!4098827 (= e!2543669 (and tp!1240747 tp!1240745))))

(declare-fun b!4098828 () Bool)

(declare-fun e!2543673 () Bool)

(assert (=> b!4098828 (= e!2543670 e!2543673)))

(declare-fun res!1675711 () Bool)

(assert (=> b!4098828 (=> res!1675711 e!2543673)))

(declare-fun rulesInvariant!6064 (LexerInterface!6721 List!44132) Bool)

(assert (=> b!4098828 (= res!1675711 (not (rulesInvariant!6064 thiss!26455 lt!1466111)))))

(assert (=> b!4098828 (noDuplicateTag!2811 thiss!26455 lt!1466111 Nil!44009)))

(declare-fun lt!1466108 () Unit!63531)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!6 (LexerInterface!6721 List!44133 List!44133 List!44132) Unit!63531)

(assert (=> b!4098828 (= lt!1466108 (lemmaNoDupTagThenAlsoWithSubListAcc!6 thiss!26455 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009) Nil!44009 lt!1466111))))

(declare-fun e!2543674 () Bool)

(declare-fun b!4098829 () Bool)

(declare-fun tp!1240748 () Bool)

(declare-fun inv!58723 (String!50560) Bool)

(declare-fun inv!58725 (TokenValueInjection!14152) Bool)

(assert (=> b!4098829 (= e!2543674 (and tp!1240748 (inv!58723 (tag!7992 (h!49428 rTail!27))) (inv!58725 (transformation!7132 (h!49428 rTail!27))) e!2543669))))

(declare-fun b!4098830 () Bool)

(declare-fun res!1675710 () Bool)

(assert (=> b!4098830 (=> (not res!1675710) (not e!2543663))))

(get-info :version)

(assert (=> b!4098830 (= res!1675710 ((_ is Cons!44008) rTail!27))))

(declare-fun b!4098831 () Bool)

(declare-fun e!2543664 () Bool)

(declare-fun tp!1240746 () Bool)

(assert (=> b!4098831 (= e!2543664 (and e!2543674 tp!1240746))))

(declare-fun b!4098832 () Bool)

(declare-fun e!2543666 () Bool)

(declare-datatypes ((Token!13374 0))(
  ( (Token!13375 (value!223906 TokenValue!7362) (rule!10280 Rule!14064) (size!32847 Int) (originalCharacters!7718 List!44130)) )
))
(declare-datatypes ((tuple2!42888 0))(
  ( (tuple2!42889 (_1!24578 Token!13374) (_2!24578 List!44130)) )
))
(declare-datatypes ((Option!9530 0))(
  ( (None!9529) (Some!9529 (v!40033 tuple2!42888)) )
))
(declare-fun lt!1466110 () Option!9530)

(declare-fun get!14428 (Option!9530) tuple2!42888)

(assert (=> b!4098832 (= e!2543666 (not (= (rule!10280 (_1!24578 (get!14428 lt!1466110))) rHead!24)))))

(declare-fun b!4098833 () Bool)

(declare-fun rulesValidInductive!2639 (LexerInterface!6721 List!44132) Bool)

(assert (=> b!4098833 (= e!2543673 (rulesValidInductive!2639 thiss!26455 rTail!27))))

(assert (=> b!4098833 e!2543666))

(declare-fun res!1675709 () Bool)

(assert (=> b!4098833 (=> res!1675709 e!2543666)))

(declare-fun isEmpty!26325 (Option!9530) Bool)

(assert (=> b!4098833 (= res!1675709 (isEmpty!26325 lt!1466110))))

(declare-fun input!3491 () List!44130)

(declare-fun maxPrefix!4003 (LexerInterface!6721 List!44132 List!44130) Option!9530)

(assert (=> b!4098833 (= lt!1466110 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491))))

(declare-fun lt!1466107 () Unit!63531)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!24 (LexerInterface!6721 Rule!14064 List!44132 List!44130) Unit!63531)

(assert (=> b!4098833 (= lt!1466107 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!24 thiss!26455 rHead!24 (t!339627 rTail!27) input!3491))))

(declare-fun b!4098824 () Bool)

(declare-fun res!1675715 () Bool)

(declare-fun e!2543671 () Bool)

(assert (=> b!4098824 (=> (not res!1675715) (not e!2543671))))

(assert (=> b!4098824 (= res!1675715 (not (isEmpty!26324 rTail!27)))))

(declare-fun res!1675713 () Bool)

(assert (=> start!388256 (=> (not res!1675713) (not e!2543671))))

(assert (=> start!388256 (= res!1675713 ((_ is Lexer!6719) thiss!26455))))

(assert (=> start!388256 e!2543671))

(assert (=> start!388256 true))

(assert (=> start!388256 e!2543664))

(assert (=> start!388256 e!2543672))

(declare-fun e!2543667 () Bool)

(assert (=> start!388256 e!2543667))

(declare-fun e!2543665 () Bool)

(assert (=> b!4098834 (= e!2543665 (and tp!1240744 tp!1240743))))

(declare-fun tp!1240750 () Bool)

(declare-fun b!4098835 () Bool)

(assert (=> b!4098835 (= e!2543667 (and tp!1240750 (inv!58723 (tag!7992 rHead!24)) (inv!58725 (transformation!7132 rHead!24)) e!2543665))))

(declare-fun b!4098836 () Bool)

(assert (=> b!4098836 (= e!2543671 e!2543663)))

(declare-fun res!1675714 () Bool)

(assert (=> b!4098836 (=> (not res!1675714) (not e!2543663))))

(assert (=> b!4098836 (= res!1675714 (rulesInvariant!6064 thiss!26455 lt!1466109))))

(assert (=> b!4098836 (= lt!1466109 (Cons!44008 rHead!24 rTail!27))))

(assert (= (and start!388256 res!1675713) b!4098824))

(assert (= (and b!4098824 res!1675715) b!4098836))

(assert (= (and b!4098836 res!1675714) b!4098830))

(assert (= (and b!4098830 res!1675710) b!4098825))

(assert (= (and b!4098825 (not res!1675712)) b!4098828))

(assert (= (and b!4098828 (not res!1675711)) b!4098833))

(assert (= (and b!4098833 (not res!1675709)) b!4098832))

(assert (= b!4098829 b!4098827))

(assert (= b!4098831 b!4098829))

(assert (= (and start!388256 ((_ is Cons!44008) rTail!27)) b!4098831))

(assert (= (and start!388256 ((_ is Cons!44006) input!3491)) b!4098826))

(assert (= b!4098835 b!4098834))

(assert (= start!388256 b!4098835))

(declare-fun m!4705713 () Bool)

(assert (=> b!4098833 m!4705713))

(declare-fun m!4705715 () Bool)

(assert (=> b!4098833 m!4705715))

(declare-fun m!4705717 () Bool)

(assert (=> b!4098833 m!4705717))

(declare-fun m!4705719 () Bool)

(assert (=> b!4098833 m!4705719))

(declare-fun m!4705721 () Bool)

(assert (=> b!4098829 m!4705721))

(declare-fun m!4705723 () Bool)

(assert (=> b!4098829 m!4705723))

(declare-fun m!4705725 () Bool)

(assert (=> b!4098835 m!4705725))

(declare-fun m!4705727 () Bool)

(assert (=> b!4098835 m!4705727))

(declare-fun m!4705729 () Bool)

(assert (=> b!4098832 m!4705729))

(declare-fun m!4705731 () Bool)

(assert (=> b!4098836 m!4705731))

(declare-fun m!4705733 () Bool)

(assert (=> b!4098824 m!4705733))

(declare-fun m!4705735 () Bool)

(assert (=> b!4098825 m!4705735))

(declare-fun m!4705737 () Bool)

(assert (=> b!4098825 m!4705737))

(declare-fun m!4705739 () Bool)

(assert (=> b!4098825 m!4705739))

(declare-fun m!4705741 () Bool)

(assert (=> b!4098825 m!4705741))

(declare-fun m!4705743 () Bool)

(assert (=> b!4098828 m!4705743))

(declare-fun m!4705745 () Bool)

(assert (=> b!4098828 m!4705745))

(declare-fun m!4705747 () Bool)

(assert (=> b!4098828 m!4705747))

(check-sat (not b_next!115469) (not b!4098836) b_and!316439 (not b!4098833) (not b!4098832) (not b!4098825) b_and!316443 tp_is_empty!21061 (not b!4098831) (not b!4098835) (not b_next!115467) b_and!316441 (not b!4098824) (not b!4098829) (not b_next!115465) (not b_next!115471) (not b!4098828) b_and!316445 (not b!4098826))
(check-sat (not b_next!115469) b_and!316439 (not b_next!115465) b_and!316443 (not b_next!115471) b_and!316445 (not b_next!115467) b_and!316441)
(get-model)

(declare-fun d!1216843 () Bool)

(assert (=> d!1216843 (= (inv!58723 (tag!7992 (h!49428 rTail!27))) (= (mod (str.len (value!223905 (tag!7992 (h!49428 rTail!27)))) 2) 0))))

(assert (=> b!4098829 d!1216843))

(declare-fun d!1216845 () Bool)

(declare-fun res!1675729 () Bool)

(declare-fun e!2543681 () Bool)

(assert (=> d!1216845 (=> (not res!1675729) (not e!2543681))))

(declare-fun semiInverseModEq!3065 (Int Int) Bool)

(assert (=> d!1216845 (= res!1675729 (semiInverseModEq!3065 (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 rTail!27)))))))

(assert (=> d!1216845 (= (inv!58725 (transformation!7132 (h!49428 rTail!27))) e!2543681)))

(declare-fun b!4098843 () Bool)

(declare-fun equivClasses!2964 (Int Int) Bool)

(assert (=> b!4098843 (= e!2543681 (equivClasses!2964 (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 rTail!27)))))))

(assert (= (and d!1216845 res!1675729) b!4098843))

(declare-fun m!4705749 () Bool)

(assert (=> d!1216845 m!4705749))

(declare-fun m!4705751 () Bool)

(assert (=> b!4098843 m!4705751))

(assert (=> b!4098829 d!1216845))

(declare-fun d!1216847 () Bool)

(assert (=> d!1216847 (= (isEmpty!26324 rTail!27) ((_ is Nil!44008) rTail!27))))

(assert (=> b!4098824 d!1216847))

(declare-fun d!1216849 () Bool)

(assert (=> d!1216849 (= (isEmpty!26324 (t!339627 rTail!27)) ((_ is Nil!44008) (t!339627 rTail!27)))))

(assert (=> b!4098825 d!1216849))

(declare-fun d!1216851 () Bool)

(assert (=> d!1216851 (not (= (tag!7992 rHead!24) (tag!7992 (h!49428 rTail!27))))))

(declare-fun lt!1466118 () Unit!63531)

(declare-fun choose!25045 (LexerInterface!6721 List!44132 Rule!14064 Rule!14064) Unit!63531)

(assert (=> d!1216851 (= lt!1466118 (choose!25045 thiss!26455 lt!1466109 rHead!24 (h!49428 rTail!27)))))

(declare-fun contains!8812 (List!44132 Rule!14064) Bool)

(assert (=> d!1216851 (contains!8812 lt!1466109 rHead!24)))

(assert (=> d!1216851 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!8 thiss!26455 lt!1466109 rHead!24 (h!49428 rTail!27)) lt!1466118)))

(declare-fun bs!593703 () Bool)

(assert (= bs!593703 d!1216851))

(declare-fun m!4705753 () Bool)

(assert (=> bs!593703 m!4705753))

(declare-fun m!4705755 () Bool)

(assert (=> bs!593703 m!4705755))

(assert (=> b!4098825 d!1216851))

(declare-fun d!1216853 () Bool)

(declare-fun res!1675734 () Bool)

(declare-fun e!2543686 () Bool)

(assert (=> d!1216853 (=> res!1675734 e!2543686)))

(assert (=> d!1216853 (= res!1675734 ((_ is Nil!44008) (Cons!44008 (h!49428 rTail!27) lt!1466111)))))

(assert (=> d!1216853 (= (noDuplicateTag!2811 thiss!26455 (Cons!44008 (h!49428 rTail!27) lt!1466111) Nil!44009) e!2543686)))

(declare-fun b!4098848 () Bool)

(declare-fun e!2543687 () Bool)

(assert (=> b!4098848 (= e!2543686 e!2543687)))

(declare-fun res!1675735 () Bool)

(assert (=> b!4098848 (=> (not res!1675735) (not e!2543687))))

(declare-fun contains!8813 (List!44133 String!50560) Bool)

(assert (=> b!4098848 (= res!1675735 (not (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))))

(declare-fun b!4098849 () Bool)

(assert (=> b!4098849 (= e!2543687 (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)))))

(assert (= (and d!1216853 (not res!1675734)) b!4098848))

(assert (= (and b!4098848 res!1675735) b!4098849))

(declare-fun m!4705757 () Bool)

(assert (=> b!4098848 m!4705757))

(declare-fun m!4705759 () Bool)

(assert (=> b!4098849 m!4705759))

(assert (=> b!4098825 d!1216853))

(declare-fun d!1216855 () Bool)

(assert (=> d!1216855 (noDuplicateTag!2811 thiss!26455 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))) Nil!44009)))

(declare-fun lt!1466121 () Unit!63531)

(declare-fun choose!25046 (LexerInterface!6721 Rule!14064 Rule!14064 List!44132) Unit!63531)

(assert (=> d!1216855 (= lt!1466121 (choose!25046 thiss!26455 rHead!24 (h!49428 rTail!27) (t!339627 rTail!27)))))

(assert (=> d!1216855 (noDuplicateTag!2811 thiss!26455 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))) Nil!44009)))

(assert (=> d!1216855 (= (lemmaNoDuplicateCanReorder!10 thiss!26455 rHead!24 (h!49428 rTail!27) (t!339627 rTail!27)) lt!1466121)))

(declare-fun bs!593704 () Bool)

(assert (= bs!593704 d!1216855))

(declare-fun m!4705761 () Bool)

(assert (=> bs!593704 m!4705761))

(declare-fun m!4705763 () Bool)

(assert (=> bs!593704 m!4705763))

(declare-fun m!4705765 () Bool)

(assert (=> bs!593704 m!4705765))

(assert (=> b!4098825 d!1216855))

(declare-fun d!1216857 () Bool)

(declare-fun res!1675738 () Bool)

(declare-fun e!2543690 () Bool)

(assert (=> d!1216857 (=> (not res!1675738) (not e!2543690))))

(declare-fun rulesValid!2800 (LexerInterface!6721 List!44132) Bool)

(assert (=> d!1216857 (= res!1675738 (rulesValid!2800 thiss!26455 lt!1466109))))

(assert (=> d!1216857 (= (rulesInvariant!6064 thiss!26455 lt!1466109) e!2543690)))

(declare-fun b!4098852 () Bool)

(assert (=> b!4098852 (= e!2543690 (noDuplicateTag!2811 thiss!26455 lt!1466109 Nil!44009))))

(assert (= (and d!1216857 res!1675738) b!4098852))

(declare-fun m!4705767 () Bool)

(assert (=> d!1216857 m!4705767))

(declare-fun m!4705769 () Bool)

(assert (=> b!4098852 m!4705769))

(assert (=> b!4098836 d!1216857))

(declare-fun d!1216859 () Bool)

(assert (=> d!1216859 (= (inv!58723 (tag!7992 rHead!24)) (= (mod (str.len (value!223905 (tag!7992 rHead!24))) 2) 0))))

(assert (=> b!4098835 d!1216859))

(declare-fun d!1216861 () Bool)

(declare-fun res!1675739 () Bool)

(declare-fun e!2543691 () Bool)

(assert (=> d!1216861 (=> (not res!1675739) (not e!2543691))))

(assert (=> d!1216861 (= res!1675739 (semiInverseModEq!3065 (toChars!9595 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 rHead!24))))))

(assert (=> d!1216861 (= (inv!58725 (transformation!7132 rHead!24)) e!2543691)))

(declare-fun b!4098853 () Bool)

(assert (=> b!4098853 (= e!2543691 (equivClasses!2964 (toChars!9595 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 rHead!24))))))

(assert (= (and d!1216861 res!1675739) b!4098853))

(declare-fun m!4705771 () Bool)

(assert (=> d!1216861 m!4705771))

(declare-fun m!4705773 () Bool)

(assert (=> b!4098853 m!4705773))

(assert (=> b!4098835 d!1216861))

(declare-fun d!1216863 () Bool)

(assert (=> d!1216863 (= (get!14428 lt!1466110) (v!40033 lt!1466110))))

(assert (=> b!4098832 d!1216863))

(declare-fun d!1216865 () Bool)

(assert (=> d!1216865 true))

(declare-fun lt!1466152 () Bool)

(declare-fun lambda!128185 () Int)

(declare-fun forall!8420 (List!44132 Int) Bool)

(assert (=> d!1216865 (= lt!1466152 (forall!8420 rTail!27 lambda!128185))))

(declare-fun e!2543745 () Bool)

(assert (=> d!1216865 (= lt!1466152 e!2543745)))

(declare-fun res!1675786 () Bool)

(assert (=> d!1216865 (=> res!1675786 e!2543745)))

(assert (=> d!1216865 (= res!1675786 (not ((_ is Cons!44008) rTail!27)))))

(assert (=> d!1216865 (= (rulesValidInductive!2639 thiss!26455 rTail!27) lt!1466152)))

(declare-fun b!4098942 () Bool)

(declare-fun e!2543746 () Bool)

(assert (=> b!4098942 (= e!2543745 e!2543746)))

(declare-fun res!1675787 () Bool)

(assert (=> b!4098942 (=> (not res!1675787) (not e!2543746))))

(declare-fun ruleValid!3042 (LexerInterface!6721 Rule!14064) Bool)

(assert (=> b!4098942 (= res!1675787 (ruleValid!3042 thiss!26455 (h!49428 rTail!27)))))

(declare-fun b!4098943 () Bool)

(assert (=> b!4098943 (= e!2543746 (rulesValidInductive!2639 thiss!26455 (t!339627 rTail!27)))))

(assert (= (and d!1216865 (not res!1675786)) b!4098942))

(assert (= (and b!4098942 res!1675787) b!4098943))

(declare-fun m!4705859 () Bool)

(assert (=> d!1216865 m!4705859))

(declare-fun m!4705861 () Bool)

(assert (=> b!4098942 m!4705861))

(declare-fun m!4705863 () Bool)

(assert (=> b!4098943 m!4705863))

(assert (=> b!4098833 d!1216865))

(declare-fun d!1216901 () Bool)

(assert (=> d!1216901 (= (isEmpty!26325 lt!1466110) (not ((_ is Some!9529) lt!1466110)))))

(assert (=> b!4098833 d!1216901))

(declare-fun d!1216903 () Bool)

(declare-fun e!2543753 () Bool)

(assert (=> d!1216903 e!2543753))

(declare-fun res!1675806 () Bool)

(assert (=> d!1216903 (=> res!1675806 e!2543753)))

(declare-fun lt!1466166 () Option!9530)

(assert (=> d!1216903 (= res!1675806 (isEmpty!26325 lt!1466166))))

(declare-fun e!2543755 () Option!9530)

(assert (=> d!1216903 (= lt!1466166 e!2543755)))

(declare-fun c!706237 () Bool)

(assert (=> d!1216903 (= c!706237 (and ((_ is Cons!44008) (t!339627 rTail!27)) ((_ is Nil!44008) (t!339627 (t!339627 rTail!27)))))))

(declare-fun lt!1466165 () Unit!63531)

(declare-fun lt!1466164 () Unit!63531)

(assert (=> d!1216903 (= lt!1466165 lt!1466164)))

(declare-fun isPrefix!4157 (List!44130 List!44130) Bool)

(assert (=> d!1216903 (isPrefix!4157 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2708 (List!44130 List!44130) Unit!63531)

(assert (=> d!1216903 (= lt!1466164 (lemmaIsPrefixRefl!2708 input!3491 input!3491))))

(assert (=> d!1216903 (rulesValidInductive!2639 thiss!26455 (t!339627 rTail!27))))

(assert (=> d!1216903 (= (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491) lt!1466166)))

(declare-fun b!4098964 () Bool)

(declare-fun e!2543754 () Bool)

(assert (=> b!4098964 (= e!2543754 (contains!8812 (t!339627 rTail!27) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun b!4098965 () Bool)

(declare-fun call!289650 () Option!9530)

(assert (=> b!4098965 (= e!2543755 call!289650)))

(declare-fun b!4098966 () Bool)

(declare-fun res!1675807 () Bool)

(assert (=> b!4098966 (=> (not res!1675807) (not e!2543754))))

(declare-fun matchR!5968 (Regex!12037 List!44130) Bool)

(declare-fun list!16308 (BalanceConc!26280) List!44130)

(declare-fun charsOf!4872 (Token!13374) BalanceConc!26280)

(assert (=> b!4098966 (= res!1675807 (matchR!5968 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4098967 () Bool)

(declare-fun res!1675805 () Bool)

(assert (=> b!4098967 (=> (not res!1675805) (not e!2543754))))

(declare-fun size!32849 (List!44130) Int)

(assert (=> b!4098967 (= res!1675805 (< (size!32849 (_2!24578 (get!14428 lt!1466166))) (size!32849 input!3491)))))

(declare-fun b!4098968 () Bool)

(assert (=> b!4098968 (= e!2543753 e!2543754)))

(declare-fun res!1675804 () Bool)

(assert (=> b!4098968 (=> (not res!1675804) (not e!2543754))))

(declare-fun isDefined!7206 (Option!9530) Bool)

(assert (=> b!4098968 (= res!1675804 (isDefined!7206 lt!1466166))))

(declare-fun b!4098969 () Bool)

(declare-fun res!1675808 () Bool)

(assert (=> b!4098969 (=> (not res!1675808) (not e!2543754))))

(declare-fun ++!11528 (List!44130 List!44130) List!44130)

(assert (=> b!4098969 (= res!1675808 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))) (_2!24578 (get!14428 lt!1466166))) input!3491))))

(declare-fun b!4098970 () Bool)

(declare-fun res!1675803 () Bool)

(assert (=> b!4098970 (=> (not res!1675803) (not e!2543754))))

(declare-fun apply!10305 (TokenValueInjection!14152 BalanceConc!26280) TokenValue!7362)

(declare-fun seqFromList!5339 (List!44130) BalanceConc!26280)

(assert (=> b!4098970 (= res!1675803 (= (value!223906 (_1!24578 (get!14428 lt!1466166))) (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun bm!289645 () Bool)

(declare-fun maxPrefixOneRule!2979 (LexerInterface!6721 Rule!14064 List!44130) Option!9530)

(assert (=> bm!289645 (= call!289650 (maxPrefixOneRule!2979 thiss!26455 (h!49428 (t!339627 rTail!27)) input!3491))))

(declare-fun b!4098971 () Bool)

(declare-fun lt!1466167 () Option!9530)

(declare-fun lt!1466163 () Option!9530)

(assert (=> b!4098971 (= e!2543755 (ite (and ((_ is None!9529) lt!1466167) ((_ is None!9529) lt!1466163)) None!9529 (ite ((_ is None!9529) lt!1466163) lt!1466167 (ite ((_ is None!9529) lt!1466167) lt!1466163 (ite (>= (size!32847 (_1!24578 (v!40033 lt!1466167))) (size!32847 (_1!24578 (v!40033 lt!1466163)))) lt!1466167 lt!1466163)))))))

(assert (=> b!4098971 (= lt!1466167 call!289650)))

(assert (=> b!4098971 (= lt!1466163 (maxPrefix!4003 thiss!26455 (t!339627 (t!339627 rTail!27)) input!3491))))

(declare-fun b!4098972 () Bool)

(declare-fun res!1675802 () Bool)

(assert (=> b!4098972 (=> (not res!1675802) (not e!2543754))))

(assert (=> b!4098972 (= res!1675802 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))

(assert (= (and d!1216903 c!706237) b!4098965))

(assert (= (and d!1216903 (not c!706237)) b!4098971))

(assert (= (or b!4098965 b!4098971) bm!289645))

(assert (= (and d!1216903 (not res!1675806)) b!4098968))

(assert (= (and b!4098968 res!1675804) b!4098972))

(assert (= (and b!4098972 res!1675802) b!4098967))

(assert (= (and b!4098967 res!1675805) b!4098969))

(assert (= (and b!4098969 res!1675808) b!4098970))

(assert (= (and b!4098970 res!1675803) b!4098966))

(assert (= (and b!4098966 res!1675807) b!4098964))

(declare-fun m!4705865 () Bool)

(assert (=> b!4098972 m!4705865))

(declare-fun m!4705867 () Bool)

(assert (=> b!4098972 m!4705867))

(assert (=> b!4098972 m!4705867))

(declare-fun m!4705869 () Bool)

(assert (=> b!4098972 m!4705869))

(assert (=> b!4098966 m!4705865))

(assert (=> b!4098966 m!4705867))

(assert (=> b!4098966 m!4705867))

(assert (=> b!4098966 m!4705869))

(assert (=> b!4098966 m!4705869))

(declare-fun m!4705871 () Bool)

(assert (=> b!4098966 m!4705871))

(assert (=> b!4098967 m!4705865))

(declare-fun m!4705873 () Bool)

(assert (=> b!4098967 m!4705873))

(declare-fun m!4705875 () Bool)

(assert (=> b!4098967 m!4705875))

(declare-fun m!4705877 () Bool)

(assert (=> b!4098971 m!4705877))

(assert (=> b!4098964 m!4705865))

(declare-fun m!4705879 () Bool)

(assert (=> b!4098964 m!4705879))

(declare-fun m!4705881 () Bool)

(assert (=> d!1216903 m!4705881))

(declare-fun m!4705883 () Bool)

(assert (=> d!1216903 m!4705883))

(declare-fun m!4705885 () Bool)

(assert (=> d!1216903 m!4705885))

(assert (=> d!1216903 m!4705863))

(assert (=> b!4098970 m!4705865))

(declare-fun m!4705887 () Bool)

(assert (=> b!4098970 m!4705887))

(assert (=> b!4098970 m!4705887))

(declare-fun m!4705889 () Bool)

(assert (=> b!4098970 m!4705889))

(declare-fun m!4705891 () Bool)

(assert (=> b!4098968 m!4705891))

(assert (=> b!4098969 m!4705865))

(assert (=> b!4098969 m!4705867))

(assert (=> b!4098969 m!4705867))

(assert (=> b!4098969 m!4705869))

(assert (=> b!4098969 m!4705869))

(declare-fun m!4705893 () Bool)

(assert (=> b!4098969 m!4705893))

(declare-fun m!4705895 () Bool)

(assert (=> bm!289645 m!4705895))

(assert (=> b!4098833 d!1216903))

(declare-fun d!1216905 () Bool)

(declare-fun e!2543758 () Bool)

(assert (=> d!1216905 e!2543758))

(declare-fun res!1675811 () Bool)

(assert (=> d!1216905 (=> res!1675811 e!2543758)))

(assert (=> d!1216905 (= res!1675811 (isEmpty!26325 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)))))

(declare-fun lt!1466170 () Unit!63531)

(declare-fun choose!25047 (LexerInterface!6721 Rule!14064 List!44132 List!44130) Unit!63531)

(assert (=> d!1216905 (= lt!1466170 (choose!25047 thiss!26455 rHead!24 (t!339627 rTail!27) input!3491))))

(assert (=> d!1216905 (not (isEmpty!26324 (t!339627 rTail!27)))))

(assert (=> d!1216905 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!24 thiss!26455 rHead!24 (t!339627 rTail!27) input!3491) lt!1466170)))

(declare-fun b!4098975 () Bool)

(assert (=> b!4098975 (= e!2543758 (not (= (rule!10280 (_1!24578 (get!14428 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1216905 (not res!1675811)) b!4098975))

(assert (=> d!1216905 m!4705717))

(assert (=> d!1216905 m!4705717))

(declare-fun m!4705897 () Bool)

(assert (=> d!1216905 m!4705897))

(declare-fun m!4705899 () Bool)

(assert (=> d!1216905 m!4705899))

(assert (=> d!1216905 m!4705735))

(assert (=> b!4098975 m!4705717))

(assert (=> b!4098975 m!4705717))

(declare-fun m!4705901 () Bool)

(assert (=> b!4098975 m!4705901))

(assert (=> b!4098833 d!1216905))

(declare-fun d!1216907 () Bool)

(declare-fun res!1675812 () Bool)

(declare-fun e!2543759 () Bool)

(assert (=> d!1216907 (=> (not res!1675812) (not e!2543759))))

(assert (=> d!1216907 (= res!1675812 (rulesValid!2800 thiss!26455 lt!1466111))))

(assert (=> d!1216907 (= (rulesInvariant!6064 thiss!26455 lt!1466111) e!2543759)))

(declare-fun b!4098976 () Bool)

(assert (=> b!4098976 (= e!2543759 (noDuplicateTag!2811 thiss!26455 lt!1466111 Nil!44009))))

(assert (= (and d!1216907 res!1675812) b!4098976))

(declare-fun m!4705903 () Bool)

(assert (=> d!1216907 m!4705903))

(assert (=> b!4098976 m!4705745))

(assert (=> b!4098828 d!1216907))

(declare-fun d!1216909 () Bool)

(declare-fun res!1675813 () Bool)

(declare-fun e!2543760 () Bool)

(assert (=> d!1216909 (=> res!1675813 e!2543760)))

(assert (=> d!1216909 (= res!1675813 ((_ is Nil!44008) lt!1466111))))

(assert (=> d!1216909 (= (noDuplicateTag!2811 thiss!26455 lt!1466111 Nil!44009) e!2543760)))

(declare-fun b!4098977 () Bool)

(declare-fun e!2543761 () Bool)

(assert (=> b!4098977 (= e!2543760 e!2543761)))

(declare-fun res!1675814 () Bool)

(assert (=> b!4098977 (=> (not res!1675814) (not e!2543761))))

(assert (=> b!4098977 (= res!1675814 (not (contains!8813 Nil!44009 (tag!7992 (h!49428 lt!1466111)))))))

(declare-fun b!4098978 () Bool)

(assert (=> b!4098978 (= e!2543761 (noDuplicateTag!2811 thiss!26455 (t!339627 lt!1466111) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)))))

(assert (= (and d!1216909 (not res!1675813)) b!4098977))

(assert (= (and b!4098977 res!1675814) b!4098978))

(declare-fun m!4705905 () Bool)

(assert (=> b!4098977 m!4705905))

(declare-fun m!4705907 () Bool)

(assert (=> b!4098978 m!4705907))

(assert (=> b!4098828 d!1216909))

(declare-fun d!1216911 () Bool)

(assert (=> d!1216911 (noDuplicateTag!2811 thiss!26455 lt!1466111 Nil!44009)))

(declare-fun lt!1466173 () Unit!63531)

(declare-fun choose!25048 (LexerInterface!6721 List!44133 List!44133 List!44132) Unit!63531)

(assert (=> d!1216911 (= lt!1466173 (choose!25048 thiss!26455 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009) Nil!44009 lt!1466111))))

(declare-fun subseq!540 (List!44133 List!44133) Bool)

(assert (=> d!1216911 (subseq!540 Nil!44009 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))))

(assert (=> d!1216911 (= (lemmaNoDupTagThenAlsoWithSubListAcc!6 thiss!26455 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009) Nil!44009 lt!1466111) lt!1466173)))

(declare-fun bs!593708 () Bool)

(assert (= bs!593708 d!1216911))

(assert (=> bs!593708 m!4705745))

(declare-fun m!4705909 () Bool)

(assert (=> bs!593708 m!4705909))

(declare-fun m!4705911 () Bool)

(assert (=> bs!593708 m!4705911))

(assert (=> b!4098828 d!1216911))

(declare-fun b!4098992 () Bool)

(declare-fun e!2543764 () Bool)

(declare-fun tp!1240798 () Bool)

(declare-fun tp!1240800 () Bool)

(assert (=> b!4098992 (= e!2543764 (and tp!1240798 tp!1240800))))

(assert (=> b!4098829 (= tp!1240748 e!2543764)))

(declare-fun b!4098990 () Bool)

(declare-fun tp!1240796 () Bool)

(declare-fun tp!1240797 () Bool)

(assert (=> b!4098990 (= e!2543764 (and tp!1240796 tp!1240797))))

(declare-fun b!4098989 () Bool)

(assert (=> b!4098989 (= e!2543764 tp_is_empty!21061)))

(declare-fun b!4098991 () Bool)

(declare-fun tp!1240799 () Bool)

(assert (=> b!4098991 (= e!2543764 tp!1240799)))

(assert (= (and b!4098829 ((_ is ElementMatch!12037) (regex!7132 (h!49428 rTail!27)))) b!4098989))

(assert (= (and b!4098829 ((_ is Concat!19399) (regex!7132 (h!49428 rTail!27)))) b!4098990))

(assert (= (and b!4098829 ((_ is Star!12037) (regex!7132 (h!49428 rTail!27)))) b!4098991))

(assert (= (and b!4098829 ((_ is Union!12037) (regex!7132 (h!49428 rTail!27)))) b!4098992))

(declare-fun b!4098996 () Bool)

(declare-fun e!2543765 () Bool)

(declare-fun tp!1240803 () Bool)

(declare-fun tp!1240805 () Bool)

(assert (=> b!4098996 (= e!2543765 (and tp!1240803 tp!1240805))))

(assert (=> b!4098835 (= tp!1240750 e!2543765)))

(declare-fun b!4098994 () Bool)

(declare-fun tp!1240801 () Bool)

(declare-fun tp!1240802 () Bool)

(assert (=> b!4098994 (= e!2543765 (and tp!1240801 tp!1240802))))

(declare-fun b!4098993 () Bool)

(assert (=> b!4098993 (= e!2543765 tp_is_empty!21061)))

(declare-fun b!4098995 () Bool)

(declare-fun tp!1240804 () Bool)

(assert (=> b!4098995 (= e!2543765 tp!1240804)))

(assert (= (and b!4098835 ((_ is ElementMatch!12037) (regex!7132 rHead!24))) b!4098993))

(assert (= (and b!4098835 ((_ is Concat!19399) (regex!7132 rHead!24))) b!4098994))

(assert (= (and b!4098835 ((_ is Star!12037) (regex!7132 rHead!24))) b!4098995))

(assert (= (and b!4098835 ((_ is Union!12037) (regex!7132 rHead!24))) b!4098996))

(declare-fun b!4099007 () Bool)

(declare-fun b_free!114773 () Bool)

(declare-fun b_next!115477 () Bool)

(assert (=> b!4099007 (= b_free!114773 (not b_next!115477))))

(declare-fun tp!1240814 () Bool)

(declare-fun b_and!316451 () Bool)

(assert (=> b!4099007 (= tp!1240814 b_and!316451)))

(declare-fun b_free!114775 () Bool)

(declare-fun b_next!115479 () Bool)

(assert (=> b!4099007 (= b_free!114775 (not b_next!115479))))

(declare-fun tp!1240815 () Bool)

(declare-fun b_and!316453 () Bool)

(assert (=> b!4099007 (= tp!1240815 b_and!316453)))

(declare-fun e!2543776 () Bool)

(assert (=> b!4099007 (= e!2543776 (and tp!1240814 tp!1240815))))

(declare-fun e!2543775 () Bool)

(declare-fun tp!1240817 () Bool)

(declare-fun b!4099006 () Bool)

(assert (=> b!4099006 (= e!2543775 (and tp!1240817 (inv!58723 (tag!7992 (h!49428 (t!339627 rTail!27)))) (inv!58725 (transformation!7132 (h!49428 (t!339627 rTail!27)))) e!2543776))))

(declare-fun b!4099005 () Bool)

(declare-fun e!2543777 () Bool)

(declare-fun tp!1240816 () Bool)

(assert (=> b!4099005 (= e!2543777 (and e!2543775 tp!1240816))))

(assert (=> b!4098831 (= tp!1240746 e!2543777)))

(assert (= b!4099006 b!4099007))

(assert (= b!4099005 b!4099006))

(assert (= (and b!4098831 ((_ is Cons!44008) (t!339627 rTail!27))) b!4099005))

(declare-fun m!4705913 () Bool)

(assert (=> b!4099006 m!4705913))

(declare-fun m!4705915 () Bool)

(assert (=> b!4099006 m!4705915))

(declare-fun b!4099012 () Bool)

(declare-fun e!2543780 () Bool)

(declare-fun tp!1240820 () Bool)

(assert (=> b!4099012 (= e!2543780 (and tp_is_empty!21061 tp!1240820))))

(assert (=> b!4098826 (= tp!1240749 e!2543780)))

(assert (= (and b!4098826 ((_ is Cons!44006) (t!339625 input!3491))) b!4099012))

(check-sat (not d!1216845) (not b!4098942) b_and!316439 (not d!1216857) b_and!316453 b_and!316451 (not d!1216907) tp_is_empty!21061 (not b!4098975) (not b!4098848) (not b!4098943) (not b!4098853) (not b!4098968) (not b!4098970) (not b_next!115469) (not b!4098849) (not b!4098967) (not b_next!115465) (not b!4098991) (not b!4098852) (not d!1216905) (not b!4098992) (not b!4098990) (not d!1216851) b_and!316443 (not b_next!115479) (not b!4098996) (not b!4098971) (not d!1216855) (not b!4099012) (not d!1216865) (not d!1216911) (not b_next!115471) (not b!4098964) (not b!4098976) b_and!316445 (not b_next!115477) (not b!4098972) (not b!4099006) (not b!4098995) (not b!4098843) (not d!1216903) (not b!4098994) (not b!4098977) (not b!4098966) (not bm!289645) (not b!4098969) (not b_next!115467) (not b!4099005) b_and!316441 (not d!1216861) (not b!4098978))
(check-sat (not b_next!115469) b_and!316439 b_and!316453 b_and!316451 (not b_next!115465) (not b_next!115471) b_and!316445 (not b_next!115477) (not b_next!115467) b_and!316441 b_and!316443 (not b_next!115479))
(get-model)

(declare-fun d!1216941 () Bool)

(assert (=> d!1216941 true))

(declare-fun order!23187 () Int)

(declare-fun order!23189 () Int)

(declare-fun lambda!128194 () Int)

(declare-fun dynLambda!18862 (Int Int) Int)

(declare-fun dynLambda!18863 (Int Int) Int)

(assert (=> d!1216941 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 rHead!24))) (dynLambda!18863 order!23189 lambda!128194))))

(declare-fun Forall2!1122 (Int) Bool)

(assert (=> d!1216941 (= (equivClasses!2964 (toChars!9595 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 rHead!24))) (Forall2!1122 lambda!128194))))

(declare-fun bs!593714 () Bool)

(assert (= bs!593714 d!1216941))

(declare-fun m!4706021 () Bool)

(assert (=> bs!593714 m!4706021))

(assert (=> b!4098853 d!1216941))

(declare-fun d!1216949 () Bool)

(declare-fun res!1675879 () Bool)

(declare-fun e!2543828 () Bool)

(assert (=> d!1216949 (=> res!1675879 e!2543828)))

(assert (=> d!1216949 (= res!1675879 ((_ is Nil!44008) (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))))

(assert (=> d!1216949 (= (noDuplicateTag!2811 thiss!26455 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))) Nil!44009) e!2543828)))

(declare-fun b!4099089 () Bool)

(declare-fun e!2543829 () Bool)

(assert (=> b!4099089 (= e!2543828 e!2543829)))

(declare-fun res!1675880 () Bool)

(assert (=> b!4099089 (=> (not res!1675880) (not e!2543829))))

(assert (=> b!4099089 (= res!1675880 (not (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))))))))

(declare-fun b!4099090 () Bool)

(assert (=> b!4099090 (= e!2543829 (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))) Nil!44009)))))

(assert (= (and d!1216949 (not res!1675879)) b!4099089))

(assert (= (and b!4099089 res!1675880) b!4099090))

(declare-fun m!4706023 () Bool)

(assert (=> b!4099089 m!4706023))

(declare-fun m!4706025 () Bool)

(assert (=> b!4099090 m!4706025))

(assert (=> d!1216855 d!1216949))

(declare-fun d!1216951 () Bool)

(assert (=> d!1216951 (noDuplicateTag!2811 thiss!26455 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))) Nil!44009)))

(assert (=> d!1216951 true))

(declare-fun _$67!42 () Unit!63531)

(assert (=> d!1216951 (= (choose!25046 thiss!26455 rHead!24 (h!49428 rTail!27) (t!339627 rTail!27)) _$67!42)))

(declare-fun bs!593715 () Bool)

(assert (= bs!593715 d!1216951))

(assert (=> bs!593715 m!4705761))

(assert (=> d!1216855 d!1216951))

(declare-fun d!1216953 () Bool)

(declare-fun res!1675881 () Bool)

(declare-fun e!2543830 () Bool)

(assert (=> d!1216953 (=> res!1675881 e!2543830)))

(assert (=> d!1216953 (= res!1675881 ((_ is Nil!44008) (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))))

(assert (=> d!1216953 (= (noDuplicateTag!2811 thiss!26455 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))) Nil!44009) e!2543830)))

(declare-fun b!4099091 () Bool)

(declare-fun e!2543831 () Bool)

(assert (=> b!4099091 (= e!2543830 e!2543831)))

(declare-fun res!1675882 () Bool)

(assert (=> b!4099091 (=> (not res!1675882) (not e!2543831))))

(assert (=> b!4099091 (= res!1675882 (not (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))))))))

(declare-fun b!4099092 () Bool)

(assert (=> b!4099092 (= e!2543831 (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))) Nil!44009)))))

(assert (= (and d!1216953 (not res!1675881)) b!4099091))

(assert (= (and b!4099091 res!1675882) b!4099092))

(declare-fun m!4706027 () Bool)

(assert (=> b!4099091 m!4706027))

(declare-fun m!4706029 () Bool)

(assert (=> b!4099092 m!4706029))

(assert (=> d!1216855 d!1216953))

(declare-fun bs!593716 () Bool)

(declare-fun d!1216955 () Bool)

(assert (= bs!593716 (and d!1216955 d!1216865)))

(declare-fun lambda!128197 () Int)

(assert (=> bs!593716 (= lambda!128197 lambda!128185)))

(assert (=> d!1216955 true))

(declare-fun lt!1466207 () Bool)

(assert (=> d!1216955 (= lt!1466207 (rulesValidInductive!2639 thiss!26455 lt!1466109))))

(assert (=> d!1216955 (= lt!1466207 (forall!8420 lt!1466109 lambda!128197))))

(assert (=> d!1216955 (= (rulesValid!2800 thiss!26455 lt!1466109) lt!1466207)))

(declare-fun bs!593717 () Bool)

(assert (= bs!593717 d!1216955))

(declare-fun m!4706031 () Bool)

(assert (=> bs!593717 m!4706031))

(declare-fun m!4706033 () Bool)

(assert (=> bs!593717 m!4706033))

(assert (=> d!1216857 d!1216955))

(declare-fun b!4099264 () Bool)

(declare-fun res!1675976 () Bool)

(declare-fun e!2543928 () Bool)

(assert (=> b!4099264 (=> (not res!1675976) (not e!2543928))))

(declare-fun lt!1466239 () Option!9530)

(assert (=> b!4099264 (= res!1675976 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))) (_2!24578 (get!14428 lt!1466239))) input!3491))))

(declare-fun b!4099265 () Bool)

(assert (=> b!4099265 (= e!2543928 (= (size!32847 (_1!24578 (get!14428 lt!1466239))) (size!32849 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239))))))))

(declare-fun b!4099266 () Bool)

(declare-fun res!1675979 () Bool)

(assert (=> b!4099266 (=> (not res!1675979) (not e!2543928))))

(assert (=> b!4099266 (= res!1675979 (< (size!32849 (_2!24578 (get!14428 lt!1466239))) (size!32849 input!3491)))))

(declare-fun b!4099267 () Bool)

(declare-fun res!1675974 () Bool)

(assert (=> b!4099267 (=> (not res!1675974) (not e!2543928))))

(assert (=> b!4099267 (= res!1675974 (= (value!223906 (_1!24578 (get!14428 lt!1466239))) (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))))))))

(declare-fun b!4099268 () Bool)

(declare-fun e!2543925 () Option!9530)

(declare-datatypes ((tuple2!42892 0))(
  ( (tuple2!42893 (_1!24580 List!44130) (_2!24580 List!44130)) )
))
(declare-fun lt!1466240 () tuple2!42892)

(declare-fun size!32851 (BalanceConc!26280) Int)

(assert (=> b!4099268 (= e!2543925 (Some!9529 (tuple2!42889 (Token!13375 (apply!10305 (transformation!7132 (h!49428 (t!339627 rTail!27))) (seqFromList!5339 (_1!24580 lt!1466240))) (h!49428 (t!339627 rTail!27)) (size!32851 (seqFromList!5339 (_1!24580 lt!1466240))) (_1!24580 lt!1466240)) (_2!24580 lt!1466240))))))

(declare-fun lt!1466243 () Unit!63531)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1449 (Regex!12037 List!44130) Unit!63531)

(assert (=> b!4099268 (= lt!1466243 (longestMatchIsAcceptedByMatchOrIsEmpty!1449 (regex!7132 (h!49428 (t!339627 rTail!27))) input!3491))))

(declare-fun res!1675977 () Bool)

(declare-fun isEmpty!26327 (List!44130) Bool)

(declare-fun findLongestMatchInner!1476 (Regex!12037 List!44130 Int List!44130 List!44130 Int) tuple2!42892)

(assert (=> b!4099268 (= res!1675977 (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(declare-fun e!2543927 () Bool)

(assert (=> b!4099268 (=> res!1675977 e!2543927)))

(assert (=> b!4099268 e!2543927))

(declare-fun lt!1466241 () Unit!63531)

(assert (=> b!4099268 (= lt!1466241 lt!1466243)))

(declare-fun lt!1466242 () Unit!63531)

(declare-fun lemmaSemiInverse!2089 (TokenValueInjection!14152 BalanceConc!26280) Unit!63531)

(assert (=> b!4099268 (= lt!1466242 (lemmaSemiInverse!2089 (transformation!7132 (h!49428 (t!339627 rTail!27))) (seqFromList!5339 (_1!24580 lt!1466240))))))

(declare-fun b!4099269 () Bool)

(declare-fun res!1675978 () Bool)

(assert (=> b!4099269 (=> (not res!1675978) (not e!2543928))))

(assert (=> b!4099269 (= res!1675978 (= (rule!10280 (_1!24578 (get!14428 lt!1466239))) (h!49428 (t!339627 rTail!27))))))

(declare-fun b!4099270 () Bool)

(declare-fun e!2543929 () Bool)

(assert (=> b!4099270 (= e!2543929 e!2543928)))

(declare-fun res!1675975 () Bool)

(assert (=> b!4099270 (=> (not res!1675975) (not e!2543928))))

(assert (=> b!4099270 (= res!1675975 (matchR!5968 (regex!7132 (h!49428 (t!339627 rTail!27))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))

(declare-fun d!1216957 () Bool)

(assert (=> d!1216957 e!2543929))

(declare-fun res!1675980 () Bool)

(assert (=> d!1216957 (=> res!1675980 e!2543929)))

(assert (=> d!1216957 (= res!1675980 (isEmpty!26325 lt!1466239))))

(assert (=> d!1216957 (= lt!1466239 e!2543925)))

(declare-fun c!706260 () Bool)

(assert (=> d!1216957 (= c!706260 (isEmpty!26327 (_1!24580 lt!1466240)))))

(declare-fun findLongestMatch!1389 (Regex!12037 List!44130) tuple2!42892)

(assert (=> d!1216957 (= lt!1466240 (findLongestMatch!1389 (regex!7132 (h!49428 (t!339627 rTail!27))) input!3491))))

(assert (=> d!1216957 (ruleValid!3042 thiss!26455 (h!49428 (t!339627 rTail!27)))))

(assert (=> d!1216957 (= (maxPrefixOneRule!2979 thiss!26455 (h!49428 (t!339627 rTail!27)) input!3491) lt!1466239)))

(declare-fun b!4099271 () Bool)

(assert (=> b!4099271 (= e!2543925 None!9529)))

(declare-fun b!4099272 () Bool)

(assert (=> b!4099272 (= e!2543927 (matchR!5968 (regex!7132 (h!49428 (t!339627 rTail!27))) (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(assert (= (and d!1216957 c!706260) b!4099271))

(assert (= (and d!1216957 (not c!706260)) b!4099268))

(assert (= (and b!4099268 (not res!1675977)) b!4099272))

(assert (= (and d!1216957 (not res!1675980)) b!4099270))

(assert (= (and b!4099270 res!1675975) b!4099264))

(assert (= (and b!4099264 res!1675976) b!4099266))

(assert (= (and b!4099266 res!1675979) b!4099269))

(assert (= (and b!4099269 res!1675978) b!4099267))

(assert (= (and b!4099267 res!1675974) b!4099265))

(declare-fun m!4706139 () Bool)

(assert (=> b!4099268 m!4706139))

(assert (=> b!4099268 m!4706139))

(declare-fun m!4706141 () Bool)

(assert (=> b!4099268 m!4706141))

(declare-fun m!4706143 () Bool)

(assert (=> b!4099268 m!4706143))

(declare-fun m!4706145 () Bool)

(assert (=> b!4099268 m!4706145))

(assert (=> b!4099268 m!4705875))

(declare-fun m!4706147 () Bool)

(assert (=> b!4099268 m!4706147))

(declare-fun m!4706149 () Bool)

(assert (=> b!4099268 m!4706149))

(assert (=> b!4099268 m!4706139))

(declare-fun m!4706151 () Bool)

(assert (=> b!4099268 m!4706151))

(assert (=> b!4099268 m!4706139))

(declare-fun m!4706153 () Bool)

(assert (=> b!4099268 m!4706153))

(assert (=> b!4099268 m!4706145))

(assert (=> b!4099268 m!4705875))

(declare-fun m!4706155 () Bool)

(assert (=> b!4099267 m!4706155))

(declare-fun m!4706157 () Bool)

(assert (=> b!4099267 m!4706157))

(assert (=> b!4099267 m!4706157))

(declare-fun m!4706159 () Bool)

(assert (=> b!4099267 m!4706159))

(assert (=> b!4099270 m!4706155))

(declare-fun m!4706161 () Bool)

(assert (=> b!4099270 m!4706161))

(assert (=> b!4099270 m!4706161))

(declare-fun m!4706163 () Bool)

(assert (=> b!4099270 m!4706163))

(assert (=> b!4099270 m!4706163))

(declare-fun m!4706165 () Bool)

(assert (=> b!4099270 m!4706165))

(assert (=> b!4099265 m!4706155))

(declare-fun m!4706167 () Bool)

(assert (=> b!4099265 m!4706167))

(assert (=> b!4099272 m!4706145))

(assert (=> b!4099272 m!4705875))

(assert (=> b!4099272 m!4706145))

(assert (=> b!4099272 m!4705875))

(assert (=> b!4099272 m!4706147))

(declare-fun m!4706169 () Bool)

(assert (=> b!4099272 m!4706169))

(assert (=> b!4099269 m!4706155))

(declare-fun m!4706171 () Bool)

(assert (=> d!1216957 m!4706171))

(declare-fun m!4706173 () Bool)

(assert (=> d!1216957 m!4706173))

(declare-fun m!4706175 () Bool)

(assert (=> d!1216957 m!4706175))

(declare-fun m!4706177 () Bool)

(assert (=> d!1216957 m!4706177))

(assert (=> b!4099266 m!4706155))

(declare-fun m!4706179 () Bool)

(assert (=> b!4099266 m!4706179))

(assert (=> b!4099266 m!4705875))

(assert (=> b!4099264 m!4706155))

(assert (=> b!4099264 m!4706161))

(assert (=> b!4099264 m!4706161))

(assert (=> b!4099264 m!4706163))

(assert (=> b!4099264 m!4706163))

(declare-fun m!4706181 () Bool)

(assert (=> b!4099264 m!4706181))

(assert (=> bm!289645 d!1216957))

(declare-fun d!1217011 () Bool)

(assert (=> d!1217011 true))

(declare-fun order!23195 () Int)

(declare-fun lambda!128207 () Int)

(declare-fun order!23197 () Int)

(declare-fun dynLambda!18864 (Int Int) Int)

(declare-fun dynLambda!18865 (Int Int) Int)

(assert (=> d!1217011 (< (dynLambda!18864 order!23195 (toChars!9595 (transformation!7132 rHead!24))) (dynLambda!18865 order!23197 lambda!128207))))

(assert (=> d!1217011 true))

(assert (=> d!1217011 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 rHead!24))) (dynLambda!18865 order!23197 lambda!128207))))

(declare-fun Forall!1522 (Int) Bool)

(assert (=> d!1217011 (= (semiInverseModEq!3065 (toChars!9595 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 rHead!24))) (Forall!1522 lambda!128207))))

(declare-fun bs!593734 () Bool)

(assert (= bs!593734 d!1217011))

(declare-fun m!4706183 () Bool)

(assert (=> bs!593734 m!4706183))

(assert (=> d!1216861 d!1217011))

(declare-fun d!1217013 () Bool)

(declare-fun e!2543931 () Bool)

(assert (=> d!1217013 e!2543931))

(declare-fun res!1675985 () Bool)

(assert (=> d!1217013 (=> res!1675985 e!2543931)))

(declare-fun lt!1466247 () Option!9530)

(assert (=> d!1217013 (= res!1675985 (isEmpty!26325 lt!1466247))))

(declare-fun e!2543933 () Option!9530)

(assert (=> d!1217013 (= lt!1466247 e!2543933)))

(declare-fun c!706261 () Bool)

(assert (=> d!1217013 (= c!706261 (and ((_ is Cons!44008) (t!339627 (t!339627 rTail!27))) ((_ is Nil!44008) (t!339627 (t!339627 (t!339627 rTail!27))))))))

(declare-fun lt!1466246 () Unit!63531)

(declare-fun lt!1466245 () Unit!63531)

(assert (=> d!1217013 (= lt!1466246 lt!1466245)))

(assert (=> d!1217013 (isPrefix!4157 input!3491 input!3491)))

(assert (=> d!1217013 (= lt!1466245 (lemmaIsPrefixRefl!2708 input!3491 input!3491))))

(assert (=> d!1217013 (rulesValidInductive!2639 thiss!26455 (t!339627 (t!339627 rTail!27)))))

(assert (=> d!1217013 (= (maxPrefix!4003 thiss!26455 (t!339627 (t!339627 rTail!27)) input!3491) lt!1466247)))

(declare-fun b!4099281 () Bool)

(declare-fun e!2543932 () Bool)

(assert (=> b!4099281 (= e!2543932 (contains!8812 (t!339627 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))

(declare-fun b!4099282 () Bool)

(declare-fun call!289655 () Option!9530)

(assert (=> b!4099282 (= e!2543933 call!289655)))

(declare-fun b!4099283 () Bool)

(declare-fun res!1675986 () Bool)

(assert (=> b!4099283 (=> (not res!1675986) (not e!2543932))))

(assert (=> b!4099283 (= res!1675986 (matchR!5968 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun b!4099284 () Bool)

(declare-fun res!1675984 () Bool)

(assert (=> b!4099284 (=> (not res!1675984) (not e!2543932))))

(assert (=> b!4099284 (= res!1675984 (< (size!32849 (_2!24578 (get!14428 lt!1466247))) (size!32849 input!3491)))))

(declare-fun b!4099285 () Bool)

(assert (=> b!4099285 (= e!2543931 e!2543932)))

(declare-fun res!1675983 () Bool)

(assert (=> b!4099285 (=> (not res!1675983) (not e!2543932))))

(assert (=> b!4099285 (= res!1675983 (isDefined!7206 lt!1466247))))

(declare-fun b!4099286 () Bool)

(declare-fun res!1675987 () Bool)

(assert (=> b!4099286 (=> (not res!1675987) (not e!2543932))))

(assert (=> b!4099286 (= res!1675987 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))) (_2!24578 (get!14428 lt!1466247))) input!3491))))

(declare-fun b!4099287 () Bool)

(declare-fun res!1675982 () Bool)

(assert (=> b!4099287 (=> (not res!1675982) (not e!2543932))))

(assert (=> b!4099287 (= res!1675982 (= (value!223906 (_1!24578 (get!14428 lt!1466247))) (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun bm!289650 () Bool)

(assert (=> bm!289650 (= call!289655 (maxPrefixOneRule!2979 thiss!26455 (h!49428 (t!339627 (t!339627 rTail!27))) input!3491))))

(declare-fun b!4099288 () Bool)

(declare-fun lt!1466248 () Option!9530)

(declare-fun lt!1466244 () Option!9530)

(assert (=> b!4099288 (= e!2543933 (ite (and ((_ is None!9529) lt!1466248) ((_ is None!9529) lt!1466244)) None!9529 (ite ((_ is None!9529) lt!1466244) lt!1466248 (ite ((_ is None!9529) lt!1466248) lt!1466244 (ite (>= (size!32847 (_1!24578 (v!40033 lt!1466248))) (size!32847 (_1!24578 (v!40033 lt!1466244)))) lt!1466248 lt!1466244)))))))

(assert (=> b!4099288 (= lt!1466248 call!289655)))

(assert (=> b!4099288 (= lt!1466244 (maxPrefix!4003 thiss!26455 (t!339627 (t!339627 (t!339627 rTail!27))) input!3491))))

(declare-fun b!4099289 () Bool)

(declare-fun res!1675981 () Bool)

(assert (=> b!4099289 (=> (not res!1675981) (not e!2543932))))

(assert (=> b!4099289 (= res!1675981 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247)))))))

(assert (= (and d!1217013 c!706261) b!4099282))

(assert (= (and d!1217013 (not c!706261)) b!4099288))

(assert (= (or b!4099282 b!4099288) bm!289650))

(assert (= (and d!1217013 (not res!1675985)) b!4099285))

(assert (= (and b!4099285 res!1675983) b!4099289))

(assert (= (and b!4099289 res!1675981) b!4099284))

(assert (= (and b!4099284 res!1675984) b!4099286))

(assert (= (and b!4099286 res!1675987) b!4099287))

(assert (= (and b!4099287 res!1675982) b!4099283))

(assert (= (and b!4099283 res!1675986) b!4099281))

(declare-fun m!4706185 () Bool)

(assert (=> b!4099289 m!4706185))

(declare-fun m!4706187 () Bool)

(assert (=> b!4099289 m!4706187))

(assert (=> b!4099289 m!4706187))

(declare-fun m!4706189 () Bool)

(assert (=> b!4099289 m!4706189))

(assert (=> b!4099283 m!4706185))

(assert (=> b!4099283 m!4706187))

(assert (=> b!4099283 m!4706187))

(assert (=> b!4099283 m!4706189))

(assert (=> b!4099283 m!4706189))

(declare-fun m!4706191 () Bool)

(assert (=> b!4099283 m!4706191))

(assert (=> b!4099284 m!4706185))

(declare-fun m!4706193 () Bool)

(assert (=> b!4099284 m!4706193))

(assert (=> b!4099284 m!4705875))

(declare-fun m!4706195 () Bool)

(assert (=> b!4099288 m!4706195))

(assert (=> b!4099281 m!4706185))

(declare-fun m!4706197 () Bool)

(assert (=> b!4099281 m!4706197))

(declare-fun m!4706199 () Bool)

(assert (=> d!1217013 m!4706199))

(assert (=> d!1217013 m!4705883))

(assert (=> d!1217013 m!4705885))

(declare-fun m!4706201 () Bool)

(assert (=> d!1217013 m!4706201))

(assert (=> b!4099287 m!4706185))

(declare-fun m!4706203 () Bool)

(assert (=> b!4099287 m!4706203))

(assert (=> b!4099287 m!4706203))

(declare-fun m!4706205 () Bool)

(assert (=> b!4099287 m!4706205))

(declare-fun m!4706207 () Bool)

(assert (=> b!4099285 m!4706207))

(assert (=> b!4099286 m!4706185))

(assert (=> b!4099286 m!4706187))

(assert (=> b!4099286 m!4706187))

(assert (=> b!4099286 m!4706189))

(assert (=> b!4099286 m!4706189))

(declare-fun m!4706209 () Bool)

(assert (=> b!4099286 m!4706209))

(declare-fun m!4706211 () Bool)

(assert (=> bm!289650 m!4706211))

(assert (=> b!4098971 d!1217013))

(assert (=> b!4098976 d!1216909))

(declare-fun d!1217015 () Bool)

(declare-fun list!16310 (Conc!13343) List!44130)

(assert (=> d!1217015 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))) (list!16310 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun bs!593735 () Bool)

(assert (= bs!593735 d!1217015))

(declare-fun m!4706213 () Bool)

(assert (=> bs!593735 m!4706213))

(assert (=> b!4098972 d!1217015))

(declare-fun d!1217017 () Bool)

(declare-fun lt!1466251 () BalanceConc!26280)

(assert (=> d!1217017 (= (list!16308 lt!1466251) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))))

(declare-fun dynLambda!18866 (Int TokenValue!7362) BalanceConc!26280)

(assert (=> d!1217017 (= lt!1466251 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))))

(assert (=> d!1217017 (= (charsOf!4872 (_1!24578 (get!14428 lt!1466166))) lt!1466251)))

(declare-fun b_lambda!120431 () Bool)

(assert (=> (not b_lambda!120431) (not d!1217017)))

(declare-fun tb!246737 () Bool)

(declare-fun t!339646 () Bool)

(assert (=> (and b!4098834 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339646) tb!246737))

(declare-fun b!4099294 () Bool)

(declare-fun e!2543936 () Bool)

(declare-fun tp!1240886 () Bool)

(declare-fun inv!58728 (Conc!13343) Bool)

(assert (=> b!4099294 (= e!2543936 (and (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))) tp!1240886))))

(declare-fun result!299418 () Bool)

(declare-fun inv!58729 (BalanceConc!26280) Bool)

(assert (=> tb!246737 (= result!299418 (and (inv!58729 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))) e!2543936))))

(assert (= tb!246737 b!4099294))

(declare-fun m!4706215 () Bool)

(assert (=> b!4099294 m!4706215))

(declare-fun m!4706217 () Bool)

(assert (=> tb!246737 m!4706217))

(assert (=> d!1217017 t!339646))

(declare-fun b_and!316471 () Bool)

(assert (= b_and!316441 (and (=> t!339646 result!299418) b_and!316471)))

(declare-fun t!339648 () Bool)

(declare-fun tb!246739 () Bool)

(assert (=> (and b!4098827 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339648) tb!246739))

(declare-fun result!299422 () Bool)

(assert (= result!299422 result!299418))

(assert (=> d!1217017 t!339648))

(declare-fun b_and!316473 () Bool)

(assert (= b_and!316445 (and (=> t!339648 result!299422) b_and!316473)))

(declare-fun tb!246741 () Bool)

(declare-fun t!339650 () Bool)

(assert (=> (and b!4099007 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339650) tb!246741))

(declare-fun result!299424 () Bool)

(assert (= result!299424 result!299418))

(assert (=> d!1217017 t!339650))

(declare-fun b_and!316475 () Bool)

(assert (= b_and!316453 (and (=> t!339650 result!299424) b_and!316475)))

(declare-fun m!4706219 () Bool)

(assert (=> d!1217017 m!4706219))

(declare-fun m!4706221 () Bool)

(assert (=> d!1217017 m!4706221))

(assert (=> b!4098972 d!1217017))

(declare-fun d!1217019 () Bool)

(assert (=> d!1217019 (= (get!14428 lt!1466166) (v!40033 lt!1466166))))

(assert (=> b!4098972 d!1217019))

(declare-fun d!1217021 () Bool)

(assert (=> d!1217021 (not (= (tag!7992 rHead!24) (tag!7992 (h!49428 rTail!27))))))

(assert (=> d!1217021 true))

(declare-fun _$71!159 () Unit!63531)

(assert (=> d!1217021 (= (choose!25045 thiss!26455 lt!1466109 rHead!24 (h!49428 rTail!27)) _$71!159)))

(assert (=> d!1216851 d!1217021))

(declare-fun d!1217023 () Bool)

(declare-fun lt!1466254 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6792 (List!44132) (InoxSet Rule!14064))

(assert (=> d!1217023 (= lt!1466254 (select (content!6792 lt!1466109) rHead!24))))

(declare-fun e!2543942 () Bool)

(assert (=> d!1217023 (= lt!1466254 e!2543942)))

(declare-fun res!1675992 () Bool)

(assert (=> d!1217023 (=> (not res!1675992) (not e!2543942))))

(assert (=> d!1217023 (= res!1675992 ((_ is Cons!44008) lt!1466109))))

(assert (=> d!1217023 (= (contains!8812 lt!1466109 rHead!24) lt!1466254)))

(declare-fun b!4099299 () Bool)

(declare-fun e!2543941 () Bool)

(assert (=> b!4099299 (= e!2543942 e!2543941)))

(declare-fun res!1675993 () Bool)

(assert (=> b!4099299 (=> res!1675993 e!2543941)))

(assert (=> b!4099299 (= res!1675993 (= (h!49428 lt!1466109) rHead!24))))

(declare-fun b!4099300 () Bool)

(assert (=> b!4099300 (= e!2543941 (contains!8812 (t!339627 lt!1466109) rHead!24))))

(assert (= (and d!1217023 res!1675992) b!4099299))

(assert (= (and b!4099299 (not res!1675993)) b!4099300))

(declare-fun m!4706223 () Bool)

(assert (=> d!1217023 m!4706223))

(declare-fun m!4706225 () Bool)

(assert (=> d!1217023 m!4706225))

(declare-fun m!4706227 () Bool)

(assert (=> b!4099300 m!4706227))

(assert (=> d!1216851 d!1217023))

(declare-fun d!1217025 () Bool)

(assert (=> d!1217025 (= (inv!58723 (tag!7992 (h!49428 (t!339627 rTail!27)))) (= (mod (str.len (value!223905 (tag!7992 (h!49428 (t!339627 rTail!27))))) 2) 0))))

(assert (=> b!4099006 d!1217025))

(declare-fun d!1217027 () Bool)

(declare-fun res!1675994 () Bool)

(declare-fun e!2543943 () Bool)

(assert (=> d!1217027 (=> (not res!1675994) (not e!2543943))))

(assert (=> d!1217027 (= res!1675994 (semiInverseModEq!3065 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))))))

(assert (=> d!1217027 (= (inv!58725 (transformation!7132 (h!49428 (t!339627 rTail!27)))) e!2543943)))

(declare-fun b!4099301 () Bool)

(assert (=> b!4099301 (= e!2543943 (equivClasses!2964 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))))))

(assert (= (and d!1217027 res!1675994) b!4099301))

(declare-fun m!4706229 () Bool)

(assert (=> d!1217027 m!4706229))

(declare-fun m!4706231 () Bool)

(assert (=> b!4099301 m!4706231))

(assert (=> b!4099006 d!1217027))

(declare-fun bs!593736 () Bool)

(declare-fun d!1217029 () Bool)

(assert (= bs!593736 (and d!1217029 d!1216941)))

(declare-fun lambda!128208 () Int)

(assert (=> bs!593736 (= (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 rHead!24))) (= lambda!128208 lambda!128194))))

(assert (=> d!1217029 true))

(assert (=> d!1217029 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 (h!49428 rTail!27)))) (dynLambda!18863 order!23189 lambda!128208))))

(assert (=> d!1217029 (= (equivClasses!2964 (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 rTail!27)))) (Forall2!1122 lambda!128208))))

(declare-fun bs!593737 () Bool)

(assert (= bs!593737 d!1217029))

(declare-fun m!4706233 () Bool)

(assert (=> bs!593737 m!4706233))

(assert (=> b!4098843 d!1217029))

(declare-fun d!1217031 () Bool)

(declare-fun res!1675999 () Bool)

(declare-fun e!2543946 () Bool)

(assert (=> d!1217031 (=> (not res!1675999) (not e!2543946))))

(declare-fun validRegex!5453 (Regex!12037) Bool)

(assert (=> d!1217031 (= res!1675999 (validRegex!5453 (regex!7132 (h!49428 rTail!27))))))

(assert (=> d!1217031 (= (ruleValid!3042 thiss!26455 (h!49428 rTail!27)) e!2543946)))

(declare-fun b!4099306 () Bool)

(declare-fun res!1676000 () Bool)

(assert (=> b!4099306 (=> (not res!1676000) (not e!2543946))))

(declare-fun nullable!4253 (Regex!12037) Bool)

(assert (=> b!4099306 (= res!1676000 (not (nullable!4253 (regex!7132 (h!49428 rTail!27)))))))

(declare-fun b!4099307 () Bool)

(assert (=> b!4099307 (= e!2543946 (not (= (tag!7992 (h!49428 rTail!27)) (String!50561 ""))))))

(assert (= (and d!1217031 res!1675999) b!4099306))

(assert (= (and b!4099306 res!1676000) b!4099307))

(declare-fun m!4706235 () Bool)

(assert (=> d!1217031 m!4706235))

(declare-fun m!4706237 () Bool)

(assert (=> b!4099306 m!4706237))

(assert (=> b!4098942 d!1217031))

(declare-fun d!1217033 () Bool)

(declare-fun lt!1466257 () Bool)

(declare-fun content!6793 (List!44133) (InoxSet String!50560))

(assert (=> d!1217033 (= lt!1466257 (select (content!6793 Nil!44009) (tag!7992 (h!49428 lt!1466111))))))

(declare-fun e!2543951 () Bool)

(assert (=> d!1217033 (= lt!1466257 e!2543951)))

(declare-fun res!1676006 () Bool)

(assert (=> d!1217033 (=> (not res!1676006) (not e!2543951))))

(assert (=> d!1217033 (= res!1676006 ((_ is Cons!44009) Nil!44009))))

(assert (=> d!1217033 (= (contains!8813 Nil!44009 (tag!7992 (h!49428 lt!1466111))) lt!1466257)))

(declare-fun b!4099312 () Bool)

(declare-fun e!2543952 () Bool)

(assert (=> b!4099312 (= e!2543951 e!2543952)))

(declare-fun res!1676005 () Bool)

(assert (=> b!4099312 (=> res!1676005 e!2543952)))

(assert (=> b!4099312 (= res!1676005 (= (h!49429 Nil!44009) (tag!7992 (h!49428 lt!1466111))))))

(declare-fun b!4099313 () Bool)

(assert (=> b!4099313 (= e!2543952 (contains!8813 (t!339628 Nil!44009) (tag!7992 (h!49428 lt!1466111))))))

(assert (= (and d!1217033 res!1676006) b!4099312))

(assert (= (and b!4099312 (not res!1676005)) b!4099313))

(declare-fun m!4706239 () Bool)

(assert (=> d!1217033 m!4706239))

(declare-fun m!4706241 () Bool)

(assert (=> d!1217033 m!4706241))

(declare-fun m!4706243 () Bool)

(assert (=> b!4099313 m!4706243))

(assert (=> b!4098977 d!1217033))

(declare-fun d!1217035 () Bool)

(declare-fun res!1676011 () Bool)

(declare-fun e!2543957 () Bool)

(assert (=> d!1217035 (=> res!1676011 e!2543957)))

(assert (=> d!1217035 (= res!1676011 ((_ is Nil!44008) rTail!27))))

(assert (=> d!1217035 (= (forall!8420 rTail!27 lambda!128185) e!2543957)))

(declare-fun b!4099318 () Bool)

(declare-fun e!2543958 () Bool)

(assert (=> b!4099318 (= e!2543957 e!2543958)))

(declare-fun res!1676012 () Bool)

(assert (=> b!4099318 (=> (not res!1676012) (not e!2543958))))

(declare-fun dynLambda!18870 (Int Rule!14064) Bool)

(assert (=> b!4099318 (= res!1676012 (dynLambda!18870 lambda!128185 (h!49428 rTail!27)))))

(declare-fun b!4099319 () Bool)

(assert (=> b!4099319 (= e!2543958 (forall!8420 (t!339627 rTail!27) lambda!128185))))

(assert (= (and d!1217035 (not res!1676011)) b!4099318))

(assert (= (and b!4099318 res!1676012) b!4099319))

(declare-fun b_lambda!120433 () Bool)

(assert (=> (not b_lambda!120433) (not b!4099318)))

(declare-fun m!4706245 () Bool)

(assert (=> b!4099318 m!4706245))

(declare-fun m!4706247 () Bool)

(assert (=> b!4099319 m!4706247))

(assert (=> d!1216865 d!1217035))

(declare-fun d!1217037 () Bool)

(declare-fun res!1676013 () Bool)

(declare-fun e!2543959 () Bool)

(assert (=> d!1217037 (=> res!1676013 e!2543959)))

(assert (=> d!1217037 (= res!1676013 ((_ is Nil!44008) lt!1466109))))

(assert (=> d!1217037 (= (noDuplicateTag!2811 thiss!26455 lt!1466109 Nil!44009) e!2543959)))

(declare-fun b!4099320 () Bool)

(declare-fun e!2543960 () Bool)

(assert (=> b!4099320 (= e!2543959 e!2543960)))

(declare-fun res!1676014 () Bool)

(assert (=> b!4099320 (=> (not res!1676014) (not e!2543960))))

(assert (=> b!4099320 (= res!1676014 (not (contains!8813 Nil!44009 (tag!7992 (h!49428 lt!1466109)))))))

(declare-fun b!4099321 () Bool)

(assert (=> b!4099321 (= e!2543960 (noDuplicateTag!2811 thiss!26455 (t!339627 lt!1466109) (Cons!44009 (tag!7992 (h!49428 lt!1466109)) Nil!44009)))))

(assert (= (and d!1217037 (not res!1676013)) b!4099320))

(assert (= (and b!4099320 res!1676014) b!4099321))

(declare-fun m!4706249 () Bool)

(assert (=> b!4099320 m!4706249))

(declare-fun m!4706251 () Bool)

(assert (=> b!4099321 m!4706251))

(assert (=> b!4098852 d!1217037))

(declare-fun d!1217039 () Bool)

(assert (=> d!1217039 (= (isEmpty!26325 lt!1466166) (not ((_ is Some!9529) lt!1466166)))))

(assert (=> d!1216903 d!1217039))

(declare-fun b!4099333 () Bool)

(declare-fun e!2543968 () Bool)

(assert (=> b!4099333 (= e!2543968 (>= (size!32849 input!3491) (size!32849 input!3491)))))

(declare-fun d!1217041 () Bool)

(assert (=> d!1217041 e!2543968))

(declare-fun res!1676024 () Bool)

(assert (=> d!1217041 (=> res!1676024 e!2543968)))

(declare-fun lt!1466260 () Bool)

(assert (=> d!1217041 (= res!1676024 (not lt!1466260))))

(declare-fun e!2543969 () Bool)

(assert (=> d!1217041 (= lt!1466260 e!2543969)))

(declare-fun res!1676023 () Bool)

(assert (=> d!1217041 (=> res!1676023 e!2543969)))

(assert (=> d!1217041 (= res!1676023 ((_ is Nil!44006) input!3491))))

(assert (=> d!1217041 (= (isPrefix!4157 input!3491 input!3491) lt!1466260)))

(declare-fun b!4099330 () Bool)

(declare-fun e!2543967 () Bool)

(assert (=> b!4099330 (= e!2543969 e!2543967)))

(declare-fun res!1676026 () Bool)

(assert (=> b!4099330 (=> (not res!1676026) (not e!2543967))))

(assert (=> b!4099330 (= res!1676026 (not ((_ is Nil!44006) input!3491)))))

(declare-fun b!4099331 () Bool)

(declare-fun res!1676025 () Bool)

(assert (=> b!4099331 (=> (not res!1676025) (not e!2543967))))

(declare-fun head!8664 (List!44130) C!24260)

(assert (=> b!4099331 (= res!1676025 (= (head!8664 input!3491) (head!8664 input!3491)))))

(declare-fun b!4099332 () Bool)

(declare-fun tail!6398 (List!44130) List!44130)

(assert (=> b!4099332 (= e!2543967 (isPrefix!4157 (tail!6398 input!3491) (tail!6398 input!3491)))))

(assert (= (and d!1217041 (not res!1676023)) b!4099330))

(assert (= (and b!4099330 res!1676026) b!4099331))

(assert (= (and b!4099331 res!1676025) b!4099332))

(assert (= (and d!1217041 (not res!1676024)) b!4099333))

(assert (=> b!4099333 m!4705875))

(assert (=> b!4099333 m!4705875))

(declare-fun m!4706253 () Bool)

(assert (=> b!4099331 m!4706253))

(assert (=> b!4099331 m!4706253))

(declare-fun m!4706255 () Bool)

(assert (=> b!4099332 m!4706255))

(assert (=> b!4099332 m!4706255))

(assert (=> b!4099332 m!4706255))

(assert (=> b!4099332 m!4706255))

(declare-fun m!4706257 () Bool)

(assert (=> b!4099332 m!4706257))

(assert (=> d!1216903 d!1217041))

(declare-fun d!1217043 () Bool)

(assert (=> d!1217043 (isPrefix!4157 input!3491 input!3491)))

(declare-fun lt!1466263 () Unit!63531)

(declare-fun choose!25050 (List!44130 List!44130) Unit!63531)

(assert (=> d!1217043 (= lt!1466263 (choose!25050 input!3491 input!3491))))

(assert (=> d!1217043 (= (lemmaIsPrefixRefl!2708 input!3491 input!3491) lt!1466263)))

(declare-fun bs!593738 () Bool)

(assert (= bs!593738 d!1217043))

(assert (=> bs!593738 m!4705883))

(declare-fun m!4706259 () Bool)

(assert (=> bs!593738 m!4706259))

(assert (=> d!1216903 d!1217043))

(declare-fun bs!593739 () Bool)

(declare-fun d!1217045 () Bool)

(assert (= bs!593739 (and d!1217045 d!1216865)))

(declare-fun lambda!128209 () Int)

(assert (=> bs!593739 (= lambda!128209 lambda!128185)))

(declare-fun bs!593740 () Bool)

(assert (= bs!593740 (and d!1217045 d!1216955)))

(assert (=> bs!593740 (= lambda!128209 lambda!128197)))

(assert (=> d!1217045 true))

(declare-fun lt!1466264 () Bool)

(assert (=> d!1217045 (= lt!1466264 (forall!8420 (t!339627 rTail!27) lambda!128209))))

(declare-fun e!2543970 () Bool)

(assert (=> d!1217045 (= lt!1466264 e!2543970)))

(declare-fun res!1676027 () Bool)

(assert (=> d!1217045 (=> res!1676027 e!2543970)))

(assert (=> d!1217045 (= res!1676027 (not ((_ is Cons!44008) (t!339627 rTail!27))))))

(assert (=> d!1217045 (= (rulesValidInductive!2639 thiss!26455 (t!339627 rTail!27)) lt!1466264)))

(declare-fun b!4099334 () Bool)

(declare-fun e!2543971 () Bool)

(assert (=> b!4099334 (= e!2543970 e!2543971)))

(declare-fun res!1676028 () Bool)

(assert (=> b!4099334 (=> (not res!1676028) (not e!2543971))))

(assert (=> b!4099334 (= res!1676028 (ruleValid!3042 thiss!26455 (h!49428 (t!339627 rTail!27))))))

(declare-fun b!4099335 () Bool)

(assert (=> b!4099335 (= e!2543971 (rulesValidInductive!2639 thiss!26455 (t!339627 (t!339627 rTail!27))))))

(assert (= (and d!1217045 (not res!1676027)) b!4099334))

(assert (= (and b!4099334 res!1676028) b!4099335))

(declare-fun m!4706261 () Bool)

(assert (=> d!1217045 m!4706261))

(assert (=> b!4099334 m!4706177))

(assert (=> b!4099335 m!4706201))

(assert (=> d!1216903 d!1217045))

(declare-fun d!1217047 () Bool)

(assert (=> d!1217047 (= (isEmpty!26325 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)) (not ((_ is Some!9529) (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491))))))

(assert (=> d!1216905 d!1217047))

(assert (=> d!1216905 d!1216903))

(declare-fun d!1217049 () Bool)

(declare-fun e!2543974 () Bool)

(assert (=> d!1217049 e!2543974))

(declare-fun res!1676031 () Bool)

(assert (=> d!1217049 (=> res!1676031 e!2543974)))

(assert (=> d!1217049 (= res!1676031 (isEmpty!26325 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)))))

(assert (=> d!1217049 true))

(declare-fun _$60!837 () Unit!63531)

(assert (=> d!1217049 (= (choose!25047 thiss!26455 rHead!24 (t!339627 rTail!27) input!3491) _$60!837)))

(declare-fun b!4099338 () Bool)

(assert (=> b!4099338 (= e!2543974 (not (= (rule!10280 (_1!24578 (get!14428 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1217049 (not res!1676031)) b!4099338))

(assert (=> d!1217049 m!4705717))

(assert (=> d!1217049 m!4705717))

(assert (=> d!1217049 m!4705897))

(assert (=> b!4099338 m!4705717))

(assert (=> b!4099338 m!4705717))

(assert (=> b!4099338 m!4705901))

(assert (=> d!1216905 d!1217049))

(assert (=> d!1216905 d!1216849))

(declare-fun d!1217051 () Bool)

(declare-fun lt!1466265 () Bool)

(assert (=> d!1217051 (= lt!1466265 (select (content!6792 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun e!2543976 () Bool)

(assert (=> d!1217051 (= lt!1466265 e!2543976)))

(declare-fun res!1676032 () Bool)

(assert (=> d!1217051 (=> (not res!1676032) (not e!2543976))))

(assert (=> d!1217051 (= res!1676032 ((_ is Cons!44008) (t!339627 rTail!27)))))

(assert (=> d!1217051 (= (contains!8812 (t!339627 rTail!27) (rule!10280 (_1!24578 (get!14428 lt!1466166)))) lt!1466265)))

(declare-fun b!4099339 () Bool)

(declare-fun e!2543975 () Bool)

(assert (=> b!4099339 (= e!2543976 e!2543975)))

(declare-fun res!1676033 () Bool)

(assert (=> b!4099339 (=> res!1676033 e!2543975)))

(assert (=> b!4099339 (= res!1676033 (= (h!49428 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun b!4099340 () Bool)

(assert (=> b!4099340 (= e!2543975 (contains!8812 (t!339627 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(assert (= (and d!1217051 res!1676032) b!4099339))

(assert (= (and b!4099339 (not res!1676033)) b!4099340))

(declare-fun m!4706263 () Bool)

(assert (=> d!1217051 m!4706263))

(declare-fun m!4706265 () Bool)

(assert (=> d!1217051 m!4706265))

(declare-fun m!4706267 () Bool)

(assert (=> b!4099340 m!4706267))

(assert (=> b!4098964 d!1217051))

(assert (=> b!4098964 d!1217019))

(assert (=> b!4098943 d!1217045))

(declare-fun d!1217053 () Bool)

(assert (=> d!1217053 (= (get!14428 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)) (v!40033 (maxPrefix!4003 thiss!26455 (t!339627 rTail!27) input!3491)))))

(assert (=> b!4098975 d!1217053))

(assert (=> b!4098975 d!1216903))

(declare-fun d!1217055 () Bool)

(declare-fun res!1676034 () Bool)

(declare-fun e!2543977 () Bool)

(assert (=> d!1217055 (=> res!1676034 e!2543977)))

(assert (=> d!1217055 (= res!1676034 ((_ is Nil!44008) (t!339627 lt!1466111)))))

(assert (=> d!1217055 (= (noDuplicateTag!2811 thiss!26455 (t!339627 lt!1466111) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)) e!2543977)))

(declare-fun b!4099341 () Bool)

(declare-fun e!2543978 () Bool)

(assert (=> b!4099341 (= e!2543977 e!2543978)))

(declare-fun res!1676035 () Bool)

(assert (=> b!4099341 (=> (not res!1676035) (not e!2543978))))

(assert (=> b!4099341 (= res!1676035 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009) (tag!7992 (h!49428 (t!339627 lt!1466111))))))))

(declare-fun b!4099342 () Bool)

(assert (=> b!4099342 (= e!2543978 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 lt!1466111)) (Cons!44009 (tag!7992 (h!49428 (t!339627 lt!1466111))) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009))))))

(assert (= (and d!1217055 (not res!1676034)) b!4099341))

(assert (= (and b!4099341 res!1676035) b!4099342))

(declare-fun m!4706269 () Bool)

(assert (=> b!4099341 m!4706269))

(declare-fun m!4706271 () Bool)

(assert (=> b!4099342 m!4706271))

(assert (=> b!4098978 d!1217055))

(declare-fun bs!593741 () Bool)

(declare-fun d!1217057 () Bool)

(assert (= bs!593741 (and d!1217057 d!1217011)))

(declare-fun lambda!128210 () Int)

(assert (=> bs!593741 (= (and (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 rHead!24))) (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 rHead!24)))) (= lambda!128210 lambda!128207))))

(assert (=> d!1217057 true))

(assert (=> d!1217057 (< (dynLambda!18864 order!23195 (toChars!9595 (transformation!7132 (h!49428 rTail!27)))) (dynLambda!18865 order!23197 lambda!128210))))

(assert (=> d!1217057 true))

(assert (=> d!1217057 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 (h!49428 rTail!27)))) (dynLambda!18865 order!23197 lambda!128210))))

(assert (=> d!1217057 (= (semiInverseModEq!3065 (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 rTail!27)))) (Forall!1522 lambda!128210))))

(declare-fun bs!593742 () Bool)

(assert (= bs!593742 d!1217057))

(declare-fun m!4706273 () Bool)

(assert (=> bs!593742 m!4706273))

(assert (=> d!1216845 d!1217057))

(declare-fun d!1217059 () Bool)

(declare-fun res!1676036 () Bool)

(declare-fun e!2543979 () Bool)

(assert (=> d!1217059 (=> res!1676036 e!2543979)))

(assert (=> d!1217059 (= res!1676036 ((_ is Nil!44008) (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))

(assert (=> d!1217059 (= (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)) e!2543979)))

(declare-fun b!4099343 () Bool)

(declare-fun e!2543980 () Bool)

(assert (=> b!4099343 (= e!2543979 e!2543980)))

(declare-fun res!1676037 () Bool)

(assert (=> b!4099343 (=> (not res!1676037) (not e!2543980))))

(assert (=> b!4099343 (= res!1676037 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))))))))

(declare-fun b!4099344 () Bool)

(assert (=> b!4099344 (= e!2543980 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009))))))

(assert (= (and d!1217059 (not res!1676036)) b!4099343))

(assert (= (and b!4099343 res!1676037) b!4099344))

(declare-fun m!4706275 () Bool)

(assert (=> b!4099343 m!4706275))

(declare-fun m!4706277 () Bool)

(assert (=> b!4099344 m!4706277))

(assert (=> b!4098849 d!1217059))

(declare-fun d!1217061 () Bool)

(assert (=> d!1217061 (= (isDefined!7206 lt!1466166) (not (isEmpty!26325 lt!1466166)))))

(declare-fun bs!593743 () Bool)

(assert (= bs!593743 d!1217061))

(assert (=> bs!593743 m!4705881))

(assert (=> b!4098968 d!1217061))

(declare-fun b!4099354 () Bool)

(declare-fun e!2543986 () List!44130)

(assert (=> b!4099354 (= e!2543986 (Cons!44006 (h!49426 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (++!11528 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (_2!24578 (get!14428 lt!1466166)))))))

(declare-fun d!1217063 () Bool)

(declare-fun e!2543985 () Bool)

(assert (=> d!1217063 e!2543985))

(declare-fun res!1676043 () Bool)

(assert (=> d!1217063 (=> (not res!1676043) (not e!2543985))))

(declare-fun lt!1466268 () List!44130)

(declare-fun content!6794 (List!44130) (InoxSet C!24260))

(assert (=> d!1217063 (= res!1676043 (= (content!6794 lt!1466268) ((_ map or) (content!6794 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (content!6794 (_2!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217063 (= lt!1466268 e!2543986)))

(declare-fun c!706264 () Bool)

(assert (=> d!1217063 (= c!706264 ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217063 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))) (_2!24578 (get!14428 lt!1466166))) lt!1466268)))

(declare-fun b!4099356 () Bool)

(assert (=> b!4099356 (= e!2543985 (or (not (= (_2!24578 (get!14428 lt!1466166)) Nil!44006)) (= lt!1466268 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099355 () Bool)

(declare-fun res!1676042 () Bool)

(assert (=> b!4099355 (=> (not res!1676042) (not e!2543985))))

(assert (=> b!4099355 (= res!1676042 (= (size!32849 lt!1466268) (+ (size!32849 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (size!32849 (_2!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099353 () Bool)

(assert (=> b!4099353 (= e!2543986 (_2!24578 (get!14428 lt!1466166)))))

(assert (= (and d!1217063 c!706264) b!4099353))

(assert (= (and d!1217063 (not c!706264)) b!4099354))

(assert (= (and d!1217063 res!1676043) b!4099355))

(assert (= (and b!4099355 res!1676042) b!4099356))

(declare-fun m!4706279 () Bool)

(assert (=> b!4099354 m!4706279))

(declare-fun m!4706281 () Bool)

(assert (=> d!1217063 m!4706281))

(assert (=> d!1217063 m!4705869))

(declare-fun m!4706283 () Bool)

(assert (=> d!1217063 m!4706283))

(declare-fun m!4706285 () Bool)

(assert (=> d!1217063 m!4706285))

(declare-fun m!4706287 () Bool)

(assert (=> b!4099355 m!4706287))

(assert (=> b!4099355 m!4705869))

(declare-fun m!4706289 () Bool)

(assert (=> b!4099355 m!4706289))

(assert (=> b!4099355 m!4705873))

(assert (=> b!4098969 d!1217063))

(assert (=> b!4098969 d!1217015))

(assert (=> b!4098969 d!1217017))

(assert (=> b!4098969 d!1217019))

(declare-fun bs!593744 () Bool)

(declare-fun d!1217065 () Bool)

(assert (= bs!593744 (and d!1217065 d!1216865)))

(declare-fun lambda!128211 () Int)

(assert (=> bs!593744 (= lambda!128211 lambda!128185)))

(declare-fun bs!593745 () Bool)

(assert (= bs!593745 (and d!1217065 d!1216955)))

(assert (=> bs!593745 (= lambda!128211 lambda!128197)))

(declare-fun bs!593746 () Bool)

(assert (= bs!593746 (and d!1217065 d!1217045)))

(assert (=> bs!593746 (= lambda!128211 lambda!128209)))

(assert (=> d!1217065 true))

(declare-fun lt!1466269 () Bool)

(assert (=> d!1217065 (= lt!1466269 (rulesValidInductive!2639 thiss!26455 lt!1466111))))

(assert (=> d!1217065 (= lt!1466269 (forall!8420 lt!1466111 lambda!128211))))

(assert (=> d!1217065 (= (rulesValid!2800 thiss!26455 lt!1466111) lt!1466269)))

(declare-fun bs!593747 () Bool)

(assert (= bs!593747 d!1217065))

(declare-fun m!4706291 () Bool)

(assert (=> bs!593747 m!4706291))

(declare-fun m!4706293 () Bool)

(assert (=> bs!593747 m!4706293))

(assert (=> d!1216907 d!1217065))

(assert (=> b!4098970 d!1217019))

(declare-fun d!1217067 () Bool)

(declare-fun dynLambda!18871 (Int BalanceConc!26280) TokenValue!7362)

(assert (=> d!1217067 (= (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b_lambda!120435 () Bool)

(assert (=> (not b_lambda!120435) (not d!1217067)))

(declare-fun t!339652 () Bool)

(declare-fun tb!246743 () Bool)

(assert (=> (and b!4098834 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339652) tb!246743))

(declare-fun result!299426 () Bool)

(declare-fun inv!21 (TokenValue!7362) Bool)

(assert (=> tb!246743 (= result!299426 (inv!21 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun m!4706295 () Bool)

(assert (=> tb!246743 m!4706295))

(assert (=> d!1217067 t!339652))

(declare-fun b_and!316477 () Bool)

(assert (= b_and!316439 (and (=> t!339652 result!299426) b_and!316477)))

(declare-fun tb!246745 () Bool)

(declare-fun t!339654 () Bool)

(assert (=> (and b!4098827 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339654) tb!246745))

(declare-fun result!299430 () Bool)

(assert (= result!299430 result!299426))

(assert (=> d!1217067 t!339654))

(declare-fun b_and!316479 () Bool)

(assert (= b_and!316443 (and (=> t!339654 result!299430) b_and!316479)))

(declare-fun t!339656 () Bool)

(declare-fun tb!246747 () Bool)

(assert (=> (and b!4099007 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339656) tb!246747))

(declare-fun result!299432 () Bool)

(assert (= result!299432 result!299426))

(assert (=> d!1217067 t!339656))

(declare-fun b_and!316481 () Bool)

(assert (= b_and!316451 (and (=> t!339656 result!299432) b_and!316481)))

(assert (=> d!1217067 m!4705887))

(declare-fun m!4706297 () Bool)

(assert (=> d!1217067 m!4706297))

(assert (=> b!4098970 d!1217067))

(declare-fun d!1217069 () Bool)

(declare-fun fromListB!2450 (List!44130) BalanceConc!26280)

(assert (=> d!1217069 (= (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))) (fromListB!2450 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun bs!593748 () Bool)

(assert (= bs!593748 d!1217069))

(declare-fun m!4706299 () Bool)

(assert (=> bs!593748 m!4706299))

(assert (=> b!4098970 d!1217069))

(declare-fun b!4099387 () Bool)

(declare-fun res!1676063 () Bool)

(declare-fun e!2544004 () Bool)

(assert (=> b!4099387 (=> res!1676063 e!2544004)))

(declare-fun e!2544006 () Bool)

(assert (=> b!4099387 (= res!1676063 e!2544006)))

(declare-fun res!1676065 () Bool)

(assert (=> b!4099387 (=> (not res!1676065) (not e!2544006))))

(declare-fun lt!1466272 () Bool)

(assert (=> b!4099387 (= res!1676065 lt!1466272)))

(declare-fun d!1217071 () Bool)

(declare-fun e!2544007 () Bool)

(assert (=> d!1217071 e!2544007))

(declare-fun c!706271 () Bool)

(assert (=> d!1217071 (= c!706271 ((_ is EmptyExpr!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun e!2544005 () Bool)

(assert (=> d!1217071 (= lt!1466272 e!2544005)))

(declare-fun c!706273 () Bool)

(assert (=> d!1217071 (= c!706273 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217071 (validRegex!5453 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(assert (=> d!1217071 (= (matchR!5968 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) lt!1466272)))

(declare-fun b!4099388 () Bool)

(declare-fun res!1676060 () Bool)

(assert (=> b!4099388 (=> (not res!1676060) (not e!2544006))))

(assert (=> b!4099388 (= res!1676060 (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099389 () Bool)

(declare-fun e!2544010 () Bool)

(declare-fun e!2544008 () Bool)

(assert (=> b!4099389 (= e!2544010 e!2544008)))

(declare-fun res!1676066 () Bool)

(assert (=> b!4099389 (=> res!1676066 e!2544008)))

(declare-fun call!289658 () Bool)

(assert (=> b!4099389 (= res!1676066 call!289658)))

(declare-fun b!4099390 () Bool)

(assert (=> b!4099390 (= e!2544005 (nullable!4253 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099391 () Bool)

(declare-fun res!1676061 () Bool)

(assert (=> b!4099391 (=> (not res!1676061) (not e!2544006))))

(assert (=> b!4099391 (= res!1676061 (not call!289658))))

(declare-fun b!4099392 () Bool)

(assert (=> b!4099392 (= e!2544008 (not (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (c!706230 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4099393 () Bool)

(declare-fun derivativeStep!3654 (Regex!12037 C!24260) Regex!12037)

(assert (=> b!4099393 (= e!2544005 (matchR!5968 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099394 () Bool)

(assert (=> b!4099394 (= e!2544007 (= lt!1466272 call!289658))))

(declare-fun b!4099395 () Bool)

(declare-fun res!1676062 () Bool)

(assert (=> b!4099395 (=> res!1676062 e!2544004)))

(assert (=> b!4099395 (= res!1676062 (not ((_ is ElementMatch!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun e!2544009 () Bool)

(assert (=> b!4099395 (= e!2544009 e!2544004)))

(declare-fun b!4099396 () Bool)

(assert (=> b!4099396 (= e!2544004 e!2544010)))

(declare-fun res!1676064 () Bool)

(assert (=> b!4099396 (=> (not res!1676064) (not e!2544010))))

(assert (=> b!4099396 (= res!1676064 (not lt!1466272))))

(declare-fun bm!289653 () Bool)

(assert (=> bm!289653 (= call!289658 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099397 () Bool)

(assert (=> b!4099397 (= e!2544007 e!2544009)))

(declare-fun c!706272 () Bool)

(assert (=> b!4099397 (= c!706272 ((_ is EmptyLang!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099398 () Bool)

(assert (=> b!4099398 (= e!2544006 (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (c!706230 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099399 () Bool)

(declare-fun res!1676067 () Bool)

(assert (=> b!4099399 (=> res!1676067 e!2544008)))

(assert (=> b!4099399 (= res!1676067 (not (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4099400 () Bool)

(assert (=> b!4099400 (= e!2544009 (not lt!1466272))))

(assert (= (and d!1217071 c!706273) b!4099390))

(assert (= (and d!1217071 (not c!706273)) b!4099393))

(assert (= (and d!1217071 c!706271) b!4099394))

(assert (= (and d!1217071 (not c!706271)) b!4099397))

(assert (= (and b!4099397 c!706272) b!4099400))

(assert (= (and b!4099397 (not c!706272)) b!4099395))

(assert (= (and b!4099395 (not res!1676062)) b!4099387))

(assert (= (and b!4099387 res!1676065) b!4099391))

(assert (= (and b!4099391 res!1676061) b!4099388))

(assert (= (and b!4099388 res!1676060) b!4099398))

(assert (= (and b!4099387 (not res!1676063)) b!4099396))

(assert (= (and b!4099396 res!1676064) b!4099389))

(assert (= (and b!4099389 (not res!1676066)) b!4099399))

(assert (= (and b!4099399 (not res!1676067)) b!4099392))

(assert (= (or b!4099394 b!4099389 b!4099391) bm!289653))

(assert (=> b!4099388 m!4705869))

(declare-fun m!4706301 () Bool)

(assert (=> b!4099388 m!4706301))

(assert (=> b!4099388 m!4706301))

(declare-fun m!4706303 () Bool)

(assert (=> b!4099388 m!4706303))

(assert (=> b!4099398 m!4705869))

(declare-fun m!4706305 () Bool)

(assert (=> b!4099398 m!4706305))

(assert (=> b!4099392 m!4705869))

(assert (=> b!4099392 m!4706305))

(assert (=> bm!289653 m!4705869))

(declare-fun m!4706307 () Bool)

(assert (=> bm!289653 m!4706307))

(declare-fun m!4706309 () Bool)

(assert (=> b!4099390 m!4706309))

(assert (=> b!4099399 m!4705869))

(assert (=> b!4099399 m!4706301))

(assert (=> b!4099399 m!4706301))

(assert (=> b!4099399 m!4706303))

(assert (=> b!4099393 m!4705869))

(assert (=> b!4099393 m!4706305))

(assert (=> b!4099393 m!4706305))

(declare-fun m!4706311 () Bool)

(assert (=> b!4099393 m!4706311))

(assert (=> b!4099393 m!4705869))

(assert (=> b!4099393 m!4706301))

(assert (=> b!4099393 m!4706311))

(assert (=> b!4099393 m!4706301))

(declare-fun m!4706313 () Bool)

(assert (=> b!4099393 m!4706313))

(assert (=> d!1217071 m!4705869))

(assert (=> d!1217071 m!4706307))

(declare-fun m!4706315 () Bool)

(assert (=> d!1217071 m!4706315))

(assert (=> b!4098966 d!1217071))

(assert (=> b!4098966 d!1217019))

(assert (=> b!4098966 d!1217015))

(assert (=> b!4098966 d!1217017))

(declare-fun d!1217073 () Bool)

(declare-fun lt!1466275 () Int)

(assert (=> d!1217073 (>= lt!1466275 0)))

(declare-fun e!2544013 () Int)

(assert (=> d!1217073 (= lt!1466275 e!2544013)))

(declare-fun c!706276 () Bool)

(assert (=> d!1217073 (= c!706276 ((_ is Nil!44006) (_2!24578 (get!14428 lt!1466166))))))

(assert (=> d!1217073 (= (size!32849 (_2!24578 (get!14428 lt!1466166))) lt!1466275)))

(declare-fun b!4099405 () Bool)

(assert (=> b!4099405 (= e!2544013 0)))

(declare-fun b!4099406 () Bool)

(assert (=> b!4099406 (= e!2544013 (+ 1 (size!32849 (t!339625 (_2!24578 (get!14428 lt!1466166))))))))

(assert (= (and d!1217073 c!706276) b!4099405))

(assert (= (and d!1217073 (not c!706276)) b!4099406))

(declare-fun m!4706317 () Bool)

(assert (=> b!4099406 m!4706317))

(assert (=> b!4098967 d!1217073))

(assert (=> b!4098967 d!1217019))

(declare-fun d!1217075 () Bool)

(declare-fun lt!1466276 () Int)

(assert (=> d!1217075 (>= lt!1466276 0)))

(declare-fun e!2544014 () Int)

(assert (=> d!1217075 (= lt!1466276 e!2544014)))

(declare-fun c!706277 () Bool)

(assert (=> d!1217075 (= c!706277 ((_ is Nil!44006) input!3491))))

(assert (=> d!1217075 (= (size!32849 input!3491) lt!1466276)))

(declare-fun b!4099407 () Bool)

(assert (=> b!4099407 (= e!2544014 0)))

(declare-fun b!4099408 () Bool)

(assert (=> b!4099408 (= e!2544014 (+ 1 (size!32849 (t!339625 input!3491))))))

(assert (= (and d!1217075 c!706277) b!4099407))

(assert (= (and d!1217075 (not c!706277)) b!4099408))

(declare-fun m!4706319 () Bool)

(assert (=> b!4099408 m!4706319))

(assert (=> b!4098967 d!1217075))

(declare-fun d!1217077 () Bool)

(declare-fun lt!1466277 () Bool)

(assert (=> d!1217077 (= lt!1466277 (select (content!6793 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111)))))))

(declare-fun e!2544015 () Bool)

(assert (=> d!1217077 (= lt!1466277 e!2544015)))

(declare-fun res!1676069 () Bool)

(assert (=> d!1217077 (=> (not res!1676069) (not e!2544015))))

(assert (=> d!1217077 (= res!1676069 ((_ is Cons!44009) Nil!44009))))

(assert (=> d!1217077 (= (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) lt!1466277)))

(declare-fun b!4099409 () Bool)

(declare-fun e!2544016 () Bool)

(assert (=> b!4099409 (= e!2544015 e!2544016)))

(declare-fun res!1676068 () Bool)

(assert (=> b!4099409 (=> res!1676068 e!2544016)))

(assert (=> b!4099409 (= res!1676068 (= (h!49429 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111)))))))

(declare-fun b!4099410 () Bool)

(assert (=> b!4099410 (= e!2544016 (contains!8813 (t!339628 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111)))))))

(assert (= (and d!1217077 res!1676069) b!4099409))

(assert (= (and b!4099409 (not res!1676068)) b!4099410))

(assert (=> d!1217077 m!4706239))

(declare-fun m!4706321 () Bool)

(assert (=> d!1217077 m!4706321))

(declare-fun m!4706323 () Bool)

(assert (=> b!4099410 m!4706323))

(assert (=> b!4098848 d!1217077))

(assert (=> d!1216911 d!1216909))

(declare-fun d!1217079 () Bool)

(assert (=> d!1217079 (noDuplicateTag!2811 thiss!26455 lt!1466111 Nil!44009)))

(assert (=> d!1217079 true))

(declare-fun _$69!322 () Unit!63531)

(assert (=> d!1217079 (= (choose!25048 thiss!26455 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009) Nil!44009 lt!1466111) _$69!322)))

(declare-fun bs!593749 () Bool)

(assert (= bs!593749 d!1217079))

(assert (=> bs!593749 m!4705745))

(assert (=> d!1216911 d!1217079))

(declare-fun b!4099421 () Bool)

(declare-fun e!2544026 () Bool)

(assert (=> b!4099421 (= e!2544026 (subseq!540 (t!339628 Nil!44009) (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))))))

(declare-fun b!4099419 () Bool)

(declare-fun e!2544028 () Bool)

(declare-fun e!2544027 () Bool)

(assert (=> b!4099419 (= e!2544028 e!2544027)))

(declare-fun res!1676079 () Bool)

(assert (=> b!4099419 (=> (not res!1676079) (not e!2544027))))

(assert (=> b!4099419 (= res!1676079 ((_ is Cons!44009) (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009)))))

(declare-fun b!4099422 () Bool)

(declare-fun e!2544025 () Bool)

(assert (=> b!4099422 (= e!2544025 (subseq!540 Nil!44009 (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))))))

(declare-fun d!1217081 () Bool)

(declare-fun res!1676078 () Bool)

(assert (=> d!1217081 (=> res!1676078 e!2544028)))

(assert (=> d!1217081 (= res!1676078 ((_ is Nil!44009) Nil!44009))))

(assert (=> d!1217081 (= (subseq!540 Nil!44009 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009)) e!2544028)))

(declare-fun b!4099420 () Bool)

(assert (=> b!4099420 (= e!2544027 e!2544025)))

(declare-fun res!1676081 () Bool)

(assert (=> b!4099420 (=> res!1676081 e!2544025)))

(assert (=> b!4099420 (= res!1676081 e!2544026)))

(declare-fun res!1676080 () Bool)

(assert (=> b!4099420 (=> (not res!1676080) (not e!2544026))))

(assert (=> b!4099420 (= res!1676080 (= (h!49429 Nil!44009) (h!49429 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))))))

(assert (= (and d!1217081 (not res!1676078)) b!4099419))

(assert (= (and b!4099419 res!1676079) b!4099420))

(assert (= (and b!4099420 res!1676080) b!4099421))

(assert (= (and b!4099420 (not res!1676081)) b!4099422))

(declare-fun m!4706325 () Bool)

(assert (=> b!4099421 m!4706325))

(declare-fun m!4706327 () Bool)

(assert (=> b!4099422 m!4706327))

(assert (=> d!1216911 d!1217081))

(declare-fun b!4099426 () Bool)

(declare-fun e!2544029 () Bool)

(declare-fun tp!1240889 () Bool)

(declare-fun tp!1240891 () Bool)

(assert (=> b!4099426 (= e!2544029 (and tp!1240889 tp!1240891))))

(assert (=> b!4098996 (= tp!1240803 e!2544029)))

(declare-fun b!4099424 () Bool)

(declare-fun tp!1240887 () Bool)

(declare-fun tp!1240888 () Bool)

(assert (=> b!4099424 (= e!2544029 (and tp!1240887 tp!1240888))))

(declare-fun b!4099423 () Bool)

(assert (=> b!4099423 (= e!2544029 tp_is_empty!21061)))

(declare-fun b!4099425 () Bool)

(declare-fun tp!1240890 () Bool)

(assert (=> b!4099425 (= e!2544029 tp!1240890)))

(assert (= (and b!4098996 ((_ is ElementMatch!12037) (regOne!24587 (regex!7132 rHead!24)))) b!4099423))

(assert (= (and b!4098996 ((_ is Concat!19399) (regOne!24587 (regex!7132 rHead!24)))) b!4099424))

(assert (= (and b!4098996 ((_ is Star!12037) (regOne!24587 (regex!7132 rHead!24)))) b!4099425))

(assert (= (and b!4098996 ((_ is Union!12037) (regOne!24587 (regex!7132 rHead!24)))) b!4099426))

(declare-fun b!4099430 () Bool)

(declare-fun e!2544030 () Bool)

(declare-fun tp!1240894 () Bool)

(declare-fun tp!1240896 () Bool)

(assert (=> b!4099430 (= e!2544030 (and tp!1240894 tp!1240896))))

(assert (=> b!4098996 (= tp!1240805 e!2544030)))

(declare-fun b!4099428 () Bool)

(declare-fun tp!1240892 () Bool)

(declare-fun tp!1240893 () Bool)

(assert (=> b!4099428 (= e!2544030 (and tp!1240892 tp!1240893))))

(declare-fun b!4099427 () Bool)

(assert (=> b!4099427 (= e!2544030 tp_is_empty!21061)))

(declare-fun b!4099429 () Bool)

(declare-fun tp!1240895 () Bool)

(assert (=> b!4099429 (= e!2544030 tp!1240895)))

(assert (= (and b!4098996 ((_ is ElementMatch!12037) (regTwo!24587 (regex!7132 rHead!24)))) b!4099427))

(assert (= (and b!4098996 ((_ is Concat!19399) (regTwo!24587 (regex!7132 rHead!24)))) b!4099428))

(assert (= (and b!4098996 ((_ is Star!12037) (regTwo!24587 (regex!7132 rHead!24)))) b!4099429))

(assert (= (and b!4098996 ((_ is Union!12037) (regTwo!24587 (regex!7132 rHead!24)))) b!4099430))

(declare-fun b!4099431 () Bool)

(declare-fun e!2544031 () Bool)

(declare-fun tp!1240897 () Bool)

(assert (=> b!4099431 (= e!2544031 (and tp_is_empty!21061 tp!1240897))))

(assert (=> b!4099012 (= tp!1240820 e!2544031)))

(assert (= (and b!4099012 ((_ is Cons!44006) (t!339625 (t!339625 input!3491)))) b!4099431))

(declare-fun b!4099435 () Bool)

(declare-fun e!2544032 () Bool)

(declare-fun tp!1240900 () Bool)

(declare-fun tp!1240902 () Bool)

(assert (=> b!4099435 (= e!2544032 (and tp!1240900 tp!1240902))))

(assert (=> b!4099006 (= tp!1240817 e!2544032)))

(declare-fun b!4099433 () Bool)

(declare-fun tp!1240898 () Bool)

(declare-fun tp!1240899 () Bool)

(assert (=> b!4099433 (= e!2544032 (and tp!1240898 tp!1240899))))

(declare-fun b!4099432 () Bool)

(assert (=> b!4099432 (= e!2544032 tp_is_empty!21061)))

(declare-fun b!4099434 () Bool)

(declare-fun tp!1240901 () Bool)

(assert (=> b!4099434 (= e!2544032 tp!1240901)))

(assert (= (and b!4099006 ((_ is ElementMatch!12037) (regex!7132 (h!49428 (t!339627 rTail!27))))) b!4099432))

(assert (= (and b!4099006 ((_ is Concat!19399) (regex!7132 (h!49428 (t!339627 rTail!27))))) b!4099433))

(assert (= (and b!4099006 ((_ is Star!12037) (regex!7132 (h!49428 (t!339627 rTail!27))))) b!4099434))

(assert (= (and b!4099006 ((_ is Union!12037) (regex!7132 (h!49428 (t!339627 rTail!27))))) b!4099435))

(declare-fun b!4099439 () Bool)

(declare-fun e!2544033 () Bool)

(declare-fun tp!1240905 () Bool)

(declare-fun tp!1240907 () Bool)

(assert (=> b!4099439 (= e!2544033 (and tp!1240905 tp!1240907))))

(assert (=> b!4098992 (= tp!1240798 e!2544033)))

(declare-fun b!4099437 () Bool)

(declare-fun tp!1240903 () Bool)

(declare-fun tp!1240904 () Bool)

(assert (=> b!4099437 (= e!2544033 (and tp!1240903 tp!1240904))))

(declare-fun b!4099436 () Bool)

(assert (=> b!4099436 (= e!2544033 tp_is_empty!21061)))

(declare-fun b!4099438 () Bool)

(declare-fun tp!1240906 () Bool)

(assert (=> b!4099438 (= e!2544033 tp!1240906)))

(assert (= (and b!4098992 ((_ is ElementMatch!12037) (regOne!24587 (regex!7132 (h!49428 rTail!27))))) b!4099436))

(assert (= (and b!4098992 ((_ is Concat!19399) (regOne!24587 (regex!7132 (h!49428 rTail!27))))) b!4099437))

(assert (= (and b!4098992 ((_ is Star!12037) (regOne!24587 (regex!7132 (h!49428 rTail!27))))) b!4099438))

(assert (= (and b!4098992 ((_ is Union!12037) (regOne!24587 (regex!7132 (h!49428 rTail!27))))) b!4099439))

(declare-fun b!4099443 () Bool)

(declare-fun e!2544034 () Bool)

(declare-fun tp!1240910 () Bool)

(declare-fun tp!1240912 () Bool)

(assert (=> b!4099443 (= e!2544034 (and tp!1240910 tp!1240912))))

(assert (=> b!4098992 (= tp!1240800 e!2544034)))

(declare-fun b!4099441 () Bool)

(declare-fun tp!1240908 () Bool)

(declare-fun tp!1240909 () Bool)

(assert (=> b!4099441 (= e!2544034 (and tp!1240908 tp!1240909))))

(declare-fun b!4099440 () Bool)

(assert (=> b!4099440 (= e!2544034 tp_is_empty!21061)))

(declare-fun b!4099442 () Bool)

(declare-fun tp!1240911 () Bool)

(assert (=> b!4099442 (= e!2544034 tp!1240911)))

(assert (= (and b!4098992 ((_ is ElementMatch!12037) (regTwo!24587 (regex!7132 (h!49428 rTail!27))))) b!4099440))

(assert (= (and b!4098992 ((_ is Concat!19399) (regTwo!24587 (regex!7132 (h!49428 rTail!27))))) b!4099441))

(assert (= (and b!4098992 ((_ is Star!12037) (regTwo!24587 (regex!7132 (h!49428 rTail!27))))) b!4099442))

(assert (= (and b!4098992 ((_ is Union!12037) (regTwo!24587 (regex!7132 (h!49428 rTail!27))))) b!4099443))

(declare-fun b!4099447 () Bool)

(declare-fun e!2544035 () Bool)

(declare-fun tp!1240915 () Bool)

(declare-fun tp!1240917 () Bool)

(assert (=> b!4099447 (= e!2544035 (and tp!1240915 tp!1240917))))

(assert (=> b!4098994 (= tp!1240801 e!2544035)))

(declare-fun b!4099445 () Bool)

(declare-fun tp!1240913 () Bool)

(declare-fun tp!1240914 () Bool)

(assert (=> b!4099445 (= e!2544035 (and tp!1240913 tp!1240914))))

(declare-fun b!4099444 () Bool)

(assert (=> b!4099444 (= e!2544035 tp_is_empty!21061)))

(declare-fun b!4099446 () Bool)

(declare-fun tp!1240916 () Bool)

(assert (=> b!4099446 (= e!2544035 tp!1240916)))

(assert (= (and b!4098994 ((_ is ElementMatch!12037) (regOne!24586 (regex!7132 rHead!24)))) b!4099444))

(assert (= (and b!4098994 ((_ is Concat!19399) (regOne!24586 (regex!7132 rHead!24)))) b!4099445))

(assert (= (and b!4098994 ((_ is Star!12037) (regOne!24586 (regex!7132 rHead!24)))) b!4099446))

(assert (= (and b!4098994 ((_ is Union!12037) (regOne!24586 (regex!7132 rHead!24)))) b!4099447))

(declare-fun b!4099451 () Bool)

(declare-fun e!2544036 () Bool)

(declare-fun tp!1240920 () Bool)

(declare-fun tp!1240922 () Bool)

(assert (=> b!4099451 (= e!2544036 (and tp!1240920 tp!1240922))))

(assert (=> b!4098994 (= tp!1240802 e!2544036)))

(declare-fun b!4099449 () Bool)

(declare-fun tp!1240918 () Bool)

(declare-fun tp!1240919 () Bool)

(assert (=> b!4099449 (= e!2544036 (and tp!1240918 tp!1240919))))

(declare-fun b!4099448 () Bool)

(assert (=> b!4099448 (= e!2544036 tp_is_empty!21061)))

(declare-fun b!4099450 () Bool)

(declare-fun tp!1240921 () Bool)

(assert (=> b!4099450 (= e!2544036 tp!1240921)))

(assert (= (and b!4098994 ((_ is ElementMatch!12037) (regTwo!24586 (regex!7132 rHead!24)))) b!4099448))

(assert (= (and b!4098994 ((_ is Concat!19399) (regTwo!24586 (regex!7132 rHead!24)))) b!4099449))

(assert (= (and b!4098994 ((_ is Star!12037) (regTwo!24586 (regex!7132 rHead!24)))) b!4099450))

(assert (= (and b!4098994 ((_ is Union!12037) (regTwo!24586 (regex!7132 rHead!24)))) b!4099451))

(declare-fun b!4099455 () Bool)

(declare-fun e!2544037 () Bool)

(declare-fun tp!1240925 () Bool)

(declare-fun tp!1240927 () Bool)

(assert (=> b!4099455 (= e!2544037 (and tp!1240925 tp!1240927))))

(assert (=> b!4098995 (= tp!1240804 e!2544037)))

(declare-fun b!4099453 () Bool)

(declare-fun tp!1240923 () Bool)

(declare-fun tp!1240924 () Bool)

(assert (=> b!4099453 (= e!2544037 (and tp!1240923 tp!1240924))))

(declare-fun b!4099452 () Bool)

(assert (=> b!4099452 (= e!2544037 tp_is_empty!21061)))

(declare-fun b!4099454 () Bool)

(declare-fun tp!1240926 () Bool)

(assert (=> b!4099454 (= e!2544037 tp!1240926)))

(assert (= (and b!4098995 ((_ is ElementMatch!12037) (reg!12366 (regex!7132 rHead!24)))) b!4099452))

(assert (= (and b!4098995 ((_ is Concat!19399) (reg!12366 (regex!7132 rHead!24)))) b!4099453))

(assert (= (and b!4098995 ((_ is Star!12037) (reg!12366 (regex!7132 rHead!24)))) b!4099454))

(assert (= (and b!4098995 ((_ is Union!12037) (reg!12366 (regex!7132 rHead!24)))) b!4099455))

(declare-fun b!4099459 () Bool)

(declare-fun e!2544038 () Bool)

(declare-fun tp!1240930 () Bool)

(declare-fun tp!1240932 () Bool)

(assert (=> b!4099459 (= e!2544038 (and tp!1240930 tp!1240932))))

(assert (=> b!4098990 (= tp!1240796 e!2544038)))

(declare-fun b!4099457 () Bool)

(declare-fun tp!1240928 () Bool)

(declare-fun tp!1240929 () Bool)

(assert (=> b!4099457 (= e!2544038 (and tp!1240928 tp!1240929))))

(declare-fun b!4099456 () Bool)

(assert (=> b!4099456 (= e!2544038 tp_is_empty!21061)))

(declare-fun b!4099458 () Bool)

(declare-fun tp!1240931 () Bool)

(assert (=> b!4099458 (= e!2544038 tp!1240931)))

(assert (= (and b!4098990 ((_ is ElementMatch!12037) (regOne!24586 (regex!7132 (h!49428 rTail!27))))) b!4099456))

(assert (= (and b!4098990 ((_ is Concat!19399) (regOne!24586 (regex!7132 (h!49428 rTail!27))))) b!4099457))

(assert (= (and b!4098990 ((_ is Star!12037) (regOne!24586 (regex!7132 (h!49428 rTail!27))))) b!4099458))

(assert (= (and b!4098990 ((_ is Union!12037) (regOne!24586 (regex!7132 (h!49428 rTail!27))))) b!4099459))

(declare-fun b!4099463 () Bool)

(declare-fun e!2544039 () Bool)

(declare-fun tp!1240935 () Bool)

(declare-fun tp!1240937 () Bool)

(assert (=> b!4099463 (= e!2544039 (and tp!1240935 tp!1240937))))

(assert (=> b!4098990 (= tp!1240797 e!2544039)))

(declare-fun b!4099461 () Bool)

(declare-fun tp!1240933 () Bool)

(declare-fun tp!1240934 () Bool)

(assert (=> b!4099461 (= e!2544039 (and tp!1240933 tp!1240934))))

(declare-fun b!4099460 () Bool)

(assert (=> b!4099460 (= e!2544039 tp_is_empty!21061)))

(declare-fun b!4099462 () Bool)

(declare-fun tp!1240936 () Bool)

(assert (=> b!4099462 (= e!2544039 tp!1240936)))

(assert (= (and b!4098990 ((_ is ElementMatch!12037) (regTwo!24586 (regex!7132 (h!49428 rTail!27))))) b!4099460))

(assert (= (and b!4098990 ((_ is Concat!19399) (regTwo!24586 (regex!7132 (h!49428 rTail!27))))) b!4099461))

(assert (= (and b!4098990 ((_ is Star!12037) (regTwo!24586 (regex!7132 (h!49428 rTail!27))))) b!4099462))

(assert (= (and b!4098990 ((_ is Union!12037) (regTwo!24586 (regex!7132 (h!49428 rTail!27))))) b!4099463))

(declare-fun b!4099466 () Bool)

(declare-fun b_free!114781 () Bool)

(declare-fun b_next!115485 () Bool)

(assert (=> b!4099466 (= b_free!114781 (not b_next!115485))))

(declare-fun tb!246749 () Bool)

(declare-fun t!339658 () Bool)

(assert (=> (and b!4099466 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339658) tb!246749))

(declare-fun result!299434 () Bool)

(assert (= result!299434 result!299426))

(assert (=> d!1217067 t!339658))

(declare-fun b_and!316483 () Bool)

(declare-fun tp!1240938 () Bool)

(assert (=> b!4099466 (= tp!1240938 (and (=> t!339658 result!299434) b_and!316483))))

(declare-fun b_free!114783 () Bool)

(declare-fun b_next!115487 () Bool)

(assert (=> b!4099466 (= b_free!114783 (not b_next!115487))))

(declare-fun tb!246751 () Bool)

(declare-fun t!339660 () Bool)

(assert (=> (and b!4099466 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339660) tb!246751))

(declare-fun result!299436 () Bool)

(assert (= result!299436 result!299418))

(assert (=> d!1217017 t!339660))

(declare-fun b_and!316485 () Bool)

(declare-fun tp!1240939 () Bool)

(assert (=> b!4099466 (= tp!1240939 (and (=> t!339660 result!299436) b_and!316485))))

(declare-fun e!2544042 () Bool)

(assert (=> b!4099466 (= e!2544042 (and tp!1240938 tp!1240939))))

(declare-fun b!4099465 () Bool)

(declare-fun tp!1240941 () Bool)

(declare-fun e!2544041 () Bool)

(assert (=> b!4099465 (= e!2544041 (and tp!1240941 (inv!58723 (tag!7992 (h!49428 (t!339627 (t!339627 rTail!27))))) (inv!58725 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) e!2544042))))

(declare-fun b!4099464 () Bool)

(declare-fun e!2544043 () Bool)

(declare-fun tp!1240940 () Bool)

(assert (=> b!4099464 (= e!2544043 (and e!2544041 tp!1240940))))

(assert (=> b!4099005 (= tp!1240816 e!2544043)))

(assert (= b!4099465 b!4099466))

(assert (= b!4099464 b!4099465))

(assert (= (and b!4099005 ((_ is Cons!44008) (t!339627 (t!339627 rTail!27)))) b!4099464))

(declare-fun m!4706329 () Bool)

(assert (=> b!4099465 m!4706329))

(declare-fun m!4706331 () Bool)

(assert (=> b!4099465 m!4706331))

(declare-fun b!4099470 () Bool)

(declare-fun e!2544044 () Bool)

(declare-fun tp!1240944 () Bool)

(declare-fun tp!1240946 () Bool)

(assert (=> b!4099470 (= e!2544044 (and tp!1240944 tp!1240946))))

(assert (=> b!4098991 (= tp!1240799 e!2544044)))

(declare-fun b!4099468 () Bool)

(declare-fun tp!1240942 () Bool)

(declare-fun tp!1240943 () Bool)

(assert (=> b!4099468 (= e!2544044 (and tp!1240942 tp!1240943))))

(declare-fun b!4099467 () Bool)

(assert (=> b!4099467 (= e!2544044 tp_is_empty!21061)))

(declare-fun b!4099469 () Bool)

(declare-fun tp!1240945 () Bool)

(assert (=> b!4099469 (= e!2544044 tp!1240945)))

(assert (= (and b!4098991 ((_ is ElementMatch!12037) (reg!12366 (regex!7132 (h!49428 rTail!27))))) b!4099467))

(assert (= (and b!4098991 ((_ is Concat!19399) (reg!12366 (regex!7132 (h!49428 rTail!27))))) b!4099468))

(assert (= (and b!4098991 ((_ is Star!12037) (reg!12366 (regex!7132 (h!49428 rTail!27))))) b!4099469))

(assert (= (and b!4098991 ((_ is Union!12037) (reg!12366 (regex!7132 (h!49428 rTail!27))))) b!4099470))

(declare-fun b_lambda!120437 () Bool)

(assert (= b_lambda!120433 (or d!1216865 b_lambda!120437)))

(declare-fun bs!593750 () Bool)

(declare-fun d!1217083 () Bool)

(assert (= bs!593750 (and d!1217083 d!1216865)))

(assert (=> bs!593750 (= (dynLambda!18870 lambda!128185 (h!49428 rTail!27)) (ruleValid!3042 thiss!26455 (h!49428 rTail!27)))))

(assert (=> bs!593750 m!4705861))

(assert (=> b!4099318 d!1217083))

(check-sat (not b!4099457) (not b!4099463) (not b!4099445) (not b_next!115469) b_and!316483 (not d!1217027) (not d!1217049) (not b!4099469) b_and!316471 (not d!1217071) (not b!4099392) (not b!4099429) (not bm!289653) (not b!4099319) (not b!4099430) (not b!4099355) (not b!4099265) (not b!4099090) (not b!4099344) (not d!1216951) (not b!4099092) (not b_lambda!120437) (not b!4099424) (not b!4099272) (not b!4099428) b_and!316477 (not b!4099288) (not b!4099306) (not b!4099453) b_and!316473 (not b!4099340) (not d!1217015) (not b!4099446) (not b!4099406) (not b!4099398) (not b!4099425) (not d!1217063) (not d!1217057) (not d!1217023) (not b_next!115465) (not b!4099266) (not b!4099442) (not b!4099435) (not d!1216955) (not tb!246743) (not b!4099454) (not b!4099449) (not d!1217033) (not b!4099393) (not b!4099461) (not b!4099286) (not b!4099335) (not b!4099426) (not b!4099313) (not b!4099458) (not b_next!115479) (not bs!593750) (not b!4099333) (not b!4099269) (not b_lambda!120435) (not tb!246737) tp_is_empty!21061 (not b!4099320) (not b!4099470) b_and!316481 (not b!4099390) (not d!1216941) (not b!4099284) (not d!1217079) (not d!1217065) (not b!4099399) (not b_next!115471) (not d!1217077) (not b!4099434) (not b!4099431) (not bm!289650) (not b!4099451) (not b!4099439) (not b!4099270) (not b!4099334) (not d!1217061) (not b!4099321) (not b!4099281) (not b!4099438) (not b_next!115477) (not b!4099342) (not b!4099089) (not b!4099338) (not b!4099433) (not b!4099421) (not b!4099301) (not b!4099410) (not b!4099343) (not b!4099388) (not d!1217031) (not b!4099465) (not b!4099294) (not b!4099268) (not b_next!115485) (not b!4099422) (not b!4099331) (not b!4099289) (not b!4099267) (not d!1216957) (not b!4099300) (not b!4099283) (not d!1217013) (not b!4099455) (not d!1217045) b_and!316485 (not b!4099408) (not b!4099264) (not b_next!115487) (not b_next!115467) (not d!1217011) (not d!1217069) (not b!4099091) b_and!316475 b_and!316479 (not b!4099285) (not b!4099341) (not b!4099354) (not b!4099464) (not d!1217029) (not d!1217043) (not b!4099447) (not b!4099287) (not d!1217051) (not b!4099437) (not b!4099450) (not b!4099443) (not b!4099459) (not d!1217017) (not b_lambda!120431) (not b!4099332) (not b!4099441) (not b!4099468) (not b!4099462))
(check-sat (not b_next!115469) b_and!316483 b_and!316471 b_and!316477 b_and!316473 (not b_next!115465) (not b_next!115479) b_and!316481 (not b_next!115471) (not b_next!115477) (not b_next!115485) b_and!316485 (not b_next!115487) (not b_next!115467) b_and!316475 b_and!316479)
(get-model)

(declare-fun b!4099502 () Bool)

(declare-fun e!2544064 () List!44130)

(declare-fun list!16311 (IArray!26691) List!44130)

(assert (=> b!4099502 (= e!2544064 (list!16311 (xs!16649 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun d!1217115 () Bool)

(declare-fun c!706285 () Bool)

(assert (=> d!1217115 (= c!706285 ((_ is Empty!13343) (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun e!2544063 () List!44130)

(assert (=> d!1217115 (= (list!16310 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) e!2544063)))

(declare-fun b!4099501 () Bool)

(assert (=> b!4099501 (= e!2544063 e!2544064)))

(declare-fun c!706286 () Bool)

(assert (=> b!4099501 (= c!706286 ((_ is Leaf!20624) (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099500 () Bool)

(assert (=> b!4099500 (= e!2544063 Nil!44006)))

(declare-fun b!4099503 () Bool)

(assert (=> b!4099503 (= e!2544064 (++!11528 (list!16310 (left!33063 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (list!16310 (right!33393 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (= (and d!1217115 c!706285) b!4099500))

(assert (= (and d!1217115 (not c!706285)) b!4099501))

(assert (= (and b!4099501 c!706286) b!4099502))

(assert (= (and b!4099501 (not c!706286)) b!4099503))

(declare-fun m!4706403 () Bool)

(assert (=> b!4099502 m!4706403))

(declare-fun m!4706405 () Bool)

(assert (=> b!4099503 m!4706405))

(declare-fun m!4706407 () Bool)

(assert (=> b!4099503 m!4706407))

(assert (=> b!4099503 m!4706405))

(assert (=> b!4099503 m!4706407))

(declare-fun m!4706409 () Bool)

(assert (=> b!4099503 m!4706409))

(assert (=> d!1217015 d!1217115))

(assert (=> b!4099338 d!1217053))

(assert (=> b!4099338 d!1216903))

(declare-fun d!1217117 () Bool)

(assert (=> d!1217117 (= (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> bm!289653 d!1217117))

(declare-fun b!4099507 () Bool)

(declare-fun e!2544066 () Bool)

(assert (=> b!4099507 (= e!2544066 (>= (size!32849 (tail!6398 input!3491)) (size!32849 (tail!6398 input!3491))))))

(declare-fun d!1217119 () Bool)

(assert (=> d!1217119 e!2544066))

(declare-fun res!1676098 () Bool)

(assert (=> d!1217119 (=> res!1676098 e!2544066)))

(declare-fun lt!1466288 () Bool)

(assert (=> d!1217119 (= res!1676098 (not lt!1466288))))

(declare-fun e!2544067 () Bool)

(assert (=> d!1217119 (= lt!1466288 e!2544067)))

(declare-fun res!1676097 () Bool)

(assert (=> d!1217119 (=> res!1676097 e!2544067)))

(assert (=> d!1217119 (= res!1676097 ((_ is Nil!44006) (tail!6398 input!3491)))))

(assert (=> d!1217119 (= (isPrefix!4157 (tail!6398 input!3491) (tail!6398 input!3491)) lt!1466288)))

(declare-fun b!4099504 () Bool)

(declare-fun e!2544065 () Bool)

(assert (=> b!4099504 (= e!2544067 e!2544065)))

(declare-fun res!1676100 () Bool)

(assert (=> b!4099504 (=> (not res!1676100) (not e!2544065))))

(assert (=> b!4099504 (= res!1676100 (not ((_ is Nil!44006) (tail!6398 input!3491))))))

(declare-fun b!4099505 () Bool)

(declare-fun res!1676099 () Bool)

(assert (=> b!4099505 (=> (not res!1676099) (not e!2544065))))

(assert (=> b!4099505 (= res!1676099 (= (head!8664 (tail!6398 input!3491)) (head!8664 (tail!6398 input!3491))))))

(declare-fun b!4099506 () Bool)

(assert (=> b!4099506 (= e!2544065 (isPrefix!4157 (tail!6398 (tail!6398 input!3491)) (tail!6398 (tail!6398 input!3491))))))

(assert (= (and d!1217119 (not res!1676097)) b!4099504))

(assert (= (and b!4099504 res!1676100) b!4099505))

(assert (= (and b!4099505 res!1676099) b!4099506))

(assert (= (and d!1217119 (not res!1676098)) b!4099507))

(assert (=> b!4099507 m!4706255))

(declare-fun m!4706411 () Bool)

(assert (=> b!4099507 m!4706411))

(assert (=> b!4099507 m!4706255))

(assert (=> b!4099507 m!4706411))

(assert (=> b!4099505 m!4706255))

(declare-fun m!4706413 () Bool)

(assert (=> b!4099505 m!4706413))

(assert (=> b!4099505 m!4706255))

(assert (=> b!4099505 m!4706413))

(assert (=> b!4099506 m!4706255))

(declare-fun m!4706415 () Bool)

(assert (=> b!4099506 m!4706415))

(assert (=> b!4099506 m!4706255))

(assert (=> b!4099506 m!4706415))

(assert (=> b!4099506 m!4706415))

(assert (=> b!4099506 m!4706415))

(declare-fun m!4706417 () Bool)

(assert (=> b!4099506 m!4706417))

(assert (=> b!4099332 d!1217119))

(declare-fun d!1217121 () Bool)

(assert (=> d!1217121 (= (tail!6398 input!3491) (t!339625 input!3491))))

(assert (=> b!4099332 d!1217121))

(declare-fun d!1217123 () Bool)

(declare-fun lt!1466289 () Int)

(assert (=> d!1217123 (>= lt!1466289 0)))

(declare-fun e!2544068 () Int)

(assert (=> d!1217123 (= lt!1466289 e!2544068)))

(declare-fun c!706287 () Bool)

(assert (=> d!1217123 (= c!706287 ((_ is Nil!44006) (t!339625 (_2!24578 (get!14428 lt!1466166)))))))

(assert (=> d!1217123 (= (size!32849 (t!339625 (_2!24578 (get!14428 lt!1466166)))) lt!1466289)))

(declare-fun b!4099508 () Bool)

(assert (=> b!4099508 (= e!2544068 0)))

(declare-fun b!4099509 () Bool)

(assert (=> b!4099509 (= e!2544068 (+ 1 (size!32849 (t!339625 (t!339625 (_2!24578 (get!14428 lt!1466166)))))))))

(assert (= (and d!1217123 c!706287) b!4099508))

(assert (= (and d!1217123 (not c!706287)) b!4099509))

(declare-fun m!4706419 () Bool)

(assert (=> b!4099509 m!4706419))

(assert (=> b!4099406 d!1217123))

(declare-fun d!1217125 () Bool)

(declare-fun res!1676101 () Bool)

(declare-fun e!2544069 () Bool)

(assert (=> d!1217125 (=> res!1676101 e!2544069)))

(assert (=> d!1217125 (= res!1676101 ((_ is Nil!44008) (t!339627 rTail!27)))))

(assert (=> d!1217125 (= (forall!8420 (t!339627 rTail!27) lambda!128209) e!2544069)))

(declare-fun b!4099510 () Bool)

(declare-fun e!2544070 () Bool)

(assert (=> b!4099510 (= e!2544069 e!2544070)))

(declare-fun res!1676102 () Bool)

(assert (=> b!4099510 (=> (not res!1676102) (not e!2544070))))

(assert (=> b!4099510 (= res!1676102 (dynLambda!18870 lambda!128209 (h!49428 (t!339627 rTail!27))))))

(declare-fun b!4099511 () Bool)

(assert (=> b!4099511 (= e!2544070 (forall!8420 (t!339627 (t!339627 rTail!27)) lambda!128209))))

(assert (= (and d!1217125 (not res!1676101)) b!4099510))

(assert (= (and b!4099510 res!1676102) b!4099511))

(declare-fun b_lambda!120441 () Bool)

(assert (=> (not b_lambda!120441) (not b!4099510)))

(declare-fun m!4706421 () Bool)

(assert (=> b!4099510 m!4706421))

(declare-fun m!4706423 () Bool)

(assert (=> b!4099511 m!4706423))

(assert (=> d!1217045 d!1217125))

(declare-fun bs!593759 () Bool)

(declare-fun d!1217127 () Bool)

(assert (= bs!593759 (and d!1217127 d!1216865)))

(declare-fun lambda!128213 () Int)

(assert (=> bs!593759 (= lambda!128213 lambda!128185)))

(declare-fun bs!593760 () Bool)

(assert (= bs!593760 (and d!1217127 d!1216955)))

(assert (=> bs!593760 (= lambda!128213 lambda!128197)))

(declare-fun bs!593761 () Bool)

(assert (= bs!593761 (and d!1217127 d!1217045)))

(assert (=> bs!593761 (= lambda!128213 lambda!128209)))

(declare-fun bs!593762 () Bool)

(assert (= bs!593762 (and d!1217127 d!1217065)))

(assert (=> bs!593762 (= lambda!128213 lambda!128211)))

(assert (=> d!1217127 true))

(declare-fun lt!1466290 () Bool)

(assert (=> d!1217127 (= lt!1466290 (forall!8420 lt!1466109 lambda!128213))))

(declare-fun e!2544071 () Bool)

(assert (=> d!1217127 (= lt!1466290 e!2544071)))

(declare-fun res!1676103 () Bool)

(assert (=> d!1217127 (=> res!1676103 e!2544071)))

(assert (=> d!1217127 (= res!1676103 (not ((_ is Cons!44008) lt!1466109)))))

(assert (=> d!1217127 (= (rulesValidInductive!2639 thiss!26455 lt!1466109) lt!1466290)))

(declare-fun b!4099512 () Bool)

(declare-fun e!2544072 () Bool)

(assert (=> b!4099512 (= e!2544071 e!2544072)))

(declare-fun res!1676104 () Bool)

(assert (=> b!4099512 (=> (not res!1676104) (not e!2544072))))

(assert (=> b!4099512 (= res!1676104 (ruleValid!3042 thiss!26455 (h!49428 lt!1466109)))))

(declare-fun b!4099513 () Bool)

(assert (=> b!4099513 (= e!2544072 (rulesValidInductive!2639 thiss!26455 (t!339627 lt!1466109)))))

(assert (= (and d!1217127 (not res!1676103)) b!4099512))

(assert (= (and b!4099512 res!1676104) b!4099513))

(declare-fun m!4706425 () Bool)

(assert (=> d!1217127 m!4706425))

(declare-fun m!4706427 () Bool)

(assert (=> b!4099512 m!4706427))

(declare-fun m!4706429 () Bool)

(assert (=> b!4099513 m!4706429))

(assert (=> d!1216955 d!1217127))

(declare-fun d!1217129 () Bool)

(declare-fun res!1676105 () Bool)

(declare-fun e!2544073 () Bool)

(assert (=> d!1217129 (=> res!1676105 e!2544073)))

(assert (=> d!1217129 (= res!1676105 ((_ is Nil!44008) lt!1466109))))

(assert (=> d!1217129 (= (forall!8420 lt!1466109 lambda!128197) e!2544073)))

(declare-fun b!4099514 () Bool)

(declare-fun e!2544074 () Bool)

(assert (=> b!4099514 (= e!2544073 e!2544074)))

(declare-fun res!1676106 () Bool)

(assert (=> b!4099514 (=> (not res!1676106) (not e!2544074))))

(assert (=> b!4099514 (= res!1676106 (dynLambda!18870 lambda!128197 (h!49428 lt!1466109)))))

(declare-fun b!4099515 () Bool)

(assert (=> b!4099515 (= e!2544074 (forall!8420 (t!339627 lt!1466109) lambda!128197))))

(assert (= (and d!1217129 (not res!1676105)) b!4099514))

(assert (= (and b!4099514 res!1676106) b!4099515))

(declare-fun b_lambda!120443 () Bool)

(assert (=> (not b_lambda!120443) (not b!4099514)))

(declare-fun m!4706431 () Bool)

(assert (=> b!4099514 m!4706431))

(declare-fun m!4706433 () Bool)

(assert (=> b!4099515 m!4706433))

(assert (=> d!1216955 d!1217129))

(declare-fun d!1217131 () Bool)

(assert (=> d!1217131 (= (get!14428 lt!1466239) (v!40033 lt!1466239))))

(assert (=> b!4099267 d!1217131))

(declare-fun d!1217133 () Bool)

(assert (=> d!1217133 (= (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239))))) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239))))))))

(declare-fun b_lambda!120445 () Bool)

(assert (=> (not b_lambda!120445) (not d!1217133)))

(declare-fun t!339663 () Bool)

(declare-fun tb!246753 () Bool)

(assert (=> (and b!4098834 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339663) tb!246753))

(declare-fun result!299438 () Bool)

(assert (=> tb!246753 (= result!299438 (inv!21 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))))))))

(declare-fun m!4706435 () Bool)

(assert (=> tb!246753 m!4706435))

(assert (=> d!1217133 t!339663))

(declare-fun b_and!316487 () Bool)

(assert (= b_and!316477 (and (=> t!339663 result!299438) b_and!316487)))

(declare-fun tb!246755 () Bool)

(declare-fun t!339665 () Bool)

(assert (=> (and b!4098827 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339665) tb!246755))

(declare-fun result!299440 () Bool)

(assert (= result!299440 result!299438))

(assert (=> d!1217133 t!339665))

(declare-fun b_and!316489 () Bool)

(assert (= b_and!316479 (and (=> t!339665 result!299440) b_and!316489)))

(declare-fun t!339667 () Bool)

(declare-fun tb!246757 () Bool)

(assert (=> (and b!4099007 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339667) tb!246757))

(declare-fun result!299442 () Bool)

(assert (= result!299442 result!299438))

(assert (=> d!1217133 t!339667))

(declare-fun b_and!316491 () Bool)

(assert (= b_and!316481 (and (=> t!339667 result!299442) b_and!316491)))

(declare-fun tb!246759 () Bool)

(declare-fun t!339669 () Bool)

(assert (=> (and b!4099466 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339669) tb!246759))

(declare-fun result!299444 () Bool)

(assert (= result!299444 result!299438))

(assert (=> d!1217133 t!339669))

(declare-fun b_and!316493 () Bool)

(assert (= b_and!316483 (and (=> t!339669 result!299444) b_and!316493)))

(assert (=> d!1217133 m!4706157))

(declare-fun m!4706437 () Bool)

(assert (=> d!1217133 m!4706437))

(assert (=> b!4099267 d!1217133))

(declare-fun d!1217135 () Bool)

(assert (=> d!1217135 (= (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))) (fromListB!2450 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))))))

(declare-fun bs!593763 () Bool)

(assert (= bs!593763 d!1217135))

(declare-fun m!4706439 () Bool)

(assert (=> bs!593763 m!4706439))

(assert (=> b!4099267 d!1217135))

(assert (=> bs!593750 d!1217031))

(declare-fun b!4099517 () Bool)

(declare-fun e!2544077 () List!44130)

(assert (=> b!4099517 (= e!2544077 (Cons!44006 (h!49426 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (++!11528 (t!339625 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (_2!24578 (get!14428 lt!1466166)))))))

(declare-fun d!1217137 () Bool)

(declare-fun e!2544076 () Bool)

(assert (=> d!1217137 e!2544076))

(declare-fun res!1676108 () Bool)

(assert (=> d!1217137 (=> (not res!1676108) (not e!2544076))))

(declare-fun lt!1466291 () List!44130)

(assert (=> d!1217137 (= res!1676108 (= (content!6794 lt!1466291) ((_ map or) (content!6794 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (content!6794 (_2!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217137 (= lt!1466291 e!2544077)))

(declare-fun c!706288 () Bool)

(assert (=> d!1217137 (= c!706288 ((_ is Nil!44006) (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> d!1217137 (= (++!11528 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (_2!24578 (get!14428 lt!1466166))) lt!1466291)))

(declare-fun b!4099519 () Bool)

(assert (=> b!4099519 (= e!2544076 (or (not (= (_2!24578 (get!14428 lt!1466166)) Nil!44006)) (= lt!1466291 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4099518 () Bool)

(declare-fun res!1676107 () Bool)

(assert (=> b!4099518 (=> (not res!1676107) (not e!2544076))))

(assert (=> b!4099518 (= res!1676107 (= (size!32849 lt!1466291) (+ (size!32849 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (size!32849 (_2!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099516 () Bool)

(assert (=> b!4099516 (= e!2544077 (_2!24578 (get!14428 lt!1466166)))))

(assert (= (and d!1217137 c!706288) b!4099516))

(assert (= (and d!1217137 (not c!706288)) b!4099517))

(assert (= (and d!1217137 res!1676108) b!4099518))

(assert (= (and b!4099518 res!1676107) b!4099519))

(declare-fun m!4706441 () Bool)

(assert (=> b!4099517 m!4706441))

(declare-fun m!4706443 () Bool)

(assert (=> d!1217137 m!4706443))

(declare-fun m!4706445 () Bool)

(assert (=> d!1217137 m!4706445))

(assert (=> d!1217137 m!4706285))

(declare-fun m!4706447 () Bool)

(assert (=> b!4099518 m!4706447))

(declare-fun m!4706449 () Bool)

(assert (=> b!4099518 m!4706449))

(assert (=> b!4099518 m!4705873))

(assert (=> b!4099354 d!1217137))

(declare-fun d!1217139 () Bool)

(declare-fun c!706291 () Bool)

(assert (=> d!1217139 (= c!706291 ((_ is Nil!44008) (t!339627 rTail!27)))))

(declare-fun e!2544080 () (InoxSet Rule!14064))

(assert (=> d!1217139 (= (content!6792 (t!339627 rTail!27)) e!2544080)))

(declare-fun b!4099524 () Bool)

(assert (=> b!4099524 (= e!2544080 ((as const (Array Rule!14064 Bool)) false))))

(declare-fun b!4099525 () Bool)

(assert (=> b!4099525 (= e!2544080 ((_ map or) (store ((as const (Array Rule!14064 Bool)) false) (h!49428 (t!339627 rTail!27)) true) (content!6792 (t!339627 (t!339627 rTail!27)))))))

(assert (= (and d!1217139 c!706291) b!4099524))

(assert (= (and d!1217139 (not c!706291)) b!4099525))

(declare-fun m!4706451 () Bool)

(assert (=> b!4099525 m!4706451))

(declare-fun m!4706453 () Bool)

(assert (=> b!4099525 m!4706453))

(assert (=> d!1217051 d!1217139))

(declare-fun d!1217141 () Bool)

(assert (=> d!1217141 (= (inv!58723 (tag!7992 (h!49428 (t!339627 (t!339627 rTail!27))))) (= (mod (str.len (value!223905 (tag!7992 (h!49428 (t!339627 (t!339627 rTail!27)))))) 2) 0))))

(assert (=> b!4099465 d!1217141))

(declare-fun d!1217143 () Bool)

(declare-fun res!1676109 () Bool)

(declare-fun e!2544081 () Bool)

(assert (=> d!1217143 (=> (not res!1676109) (not e!2544081))))

(assert (=> d!1217143 (= res!1676109 (semiInverseModEq!3065 (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))))))

(assert (=> d!1217143 (= (inv!58725 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) e!2544081)))

(declare-fun b!4099526 () Bool)

(assert (=> b!4099526 (= e!2544081 (equivClasses!2964 (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))))))

(assert (= (and d!1217143 res!1676109) b!4099526))

(declare-fun m!4706455 () Bool)

(assert (=> d!1217143 m!4706455))

(declare-fun m!4706457 () Bool)

(assert (=> b!4099526 m!4706457))

(assert (=> b!4099465 d!1217143))

(declare-fun d!1217145 () Bool)

(assert (=> d!1217145 (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (h!49426 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> b!4099398 d!1217145))

(assert (=> b!4099269 d!1217131))

(declare-fun d!1217147 () Bool)

(declare-fun res!1676110 () Bool)

(declare-fun e!2544082 () Bool)

(assert (=> d!1217147 (=> res!1676110 e!2544082)))

(assert (=> d!1217147 (= res!1676110 ((_ is Nil!44008) (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))))))

(assert (=> d!1217147 (= (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009))) e!2544082)))

(declare-fun b!4099527 () Bool)

(declare-fun e!2544083 () Bool)

(assert (=> b!4099527 (= e!2544082 e!2544083)))

(declare-fun res!1676111 () Bool)

(assert (=> b!4099527 (=> (not res!1676111) (not e!2544083))))

(assert (=> b!4099527 (= res!1676111 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)) (tag!7992 (h!49428 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))))))

(declare-fun b!4099528 () Bool)

(assert (=> b!4099528 (= e!2544083 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)))))))

(assert (= (and d!1217147 (not res!1676110)) b!4099527))

(assert (= (and b!4099527 res!1676111) b!4099528))

(declare-fun m!4706459 () Bool)

(assert (=> b!4099527 m!4706459))

(declare-fun m!4706461 () Bool)

(assert (=> b!4099528 m!4706461))

(assert (=> b!4099344 d!1217147))

(declare-fun b!4099547 () Bool)

(declare-fun e!2544098 () Bool)

(declare-fun e!2544099 () Bool)

(assert (=> b!4099547 (= e!2544098 e!2544099)))

(declare-fun c!706296 () Bool)

(assert (=> b!4099547 (= c!706296 ((_ is Union!12037) (regex!7132 (h!49428 rTail!27))))))

(declare-fun b!4099548 () Bool)

(declare-fun e!2544104 () Bool)

(declare-fun call!289665 () Bool)

(assert (=> b!4099548 (= e!2544104 call!289665)))

(declare-fun call!289667 () Bool)

(declare-fun bm!289660 () Bool)

(declare-fun c!706297 () Bool)

(assert (=> bm!289660 (= call!289667 (validRegex!5453 (ite c!706297 (reg!12366 (regex!7132 (h!49428 rTail!27))) (ite c!706296 (regOne!24587 (regex!7132 (h!49428 rTail!27))) (regOne!24586 (regex!7132 (h!49428 rTail!27)))))))))

(declare-fun bm!289661 () Bool)

(assert (=> bm!289661 (= call!289665 (validRegex!5453 (ite c!706296 (regTwo!24587 (regex!7132 (h!49428 rTail!27))) (regTwo!24586 (regex!7132 (h!49428 rTail!27))))))))

(declare-fun b!4099549 () Bool)

(declare-fun res!1676123 () Bool)

(declare-fun e!2544103 () Bool)

(assert (=> b!4099549 (=> res!1676123 e!2544103)))

(assert (=> b!4099549 (= res!1676123 (not ((_ is Concat!19399) (regex!7132 (h!49428 rTail!27)))))))

(assert (=> b!4099549 (= e!2544099 e!2544103)))

(declare-fun b!4099550 () Bool)

(declare-fun e!2544102 () Bool)

(assert (=> b!4099550 (= e!2544098 e!2544102)))

(declare-fun res!1676124 () Bool)

(assert (=> b!4099550 (= res!1676124 (not (nullable!4253 (reg!12366 (regex!7132 (h!49428 rTail!27))))))))

(assert (=> b!4099550 (=> (not res!1676124) (not e!2544102))))

(declare-fun bm!289662 () Bool)

(declare-fun call!289666 () Bool)

(assert (=> bm!289662 (= call!289666 call!289667)))

(declare-fun b!4099551 () Bool)

(declare-fun res!1676122 () Bool)

(assert (=> b!4099551 (=> (not res!1676122) (not e!2544104))))

(assert (=> b!4099551 (= res!1676122 call!289666)))

(assert (=> b!4099551 (= e!2544099 e!2544104)))

(declare-fun d!1217149 () Bool)

(declare-fun res!1676126 () Bool)

(declare-fun e!2544100 () Bool)

(assert (=> d!1217149 (=> res!1676126 e!2544100)))

(assert (=> d!1217149 (= res!1676126 ((_ is ElementMatch!12037) (regex!7132 (h!49428 rTail!27))))))

(assert (=> d!1217149 (= (validRegex!5453 (regex!7132 (h!49428 rTail!27))) e!2544100)))

(declare-fun b!4099552 () Bool)

(declare-fun e!2544101 () Bool)

(assert (=> b!4099552 (= e!2544101 call!289665)))

(declare-fun b!4099553 () Bool)

(assert (=> b!4099553 (= e!2544103 e!2544101)))

(declare-fun res!1676125 () Bool)

(assert (=> b!4099553 (=> (not res!1676125) (not e!2544101))))

(assert (=> b!4099553 (= res!1676125 call!289666)))

(declare-fun b!4099554 () Bool)

(assert (=> b!4099554 (= e!2544100 e!2544098)))

(assert (=> b!4099554 (= c!706297 ((_ is Star!12037) (regex!7132 (h!49428 rTail!27))))))

(declare-fun b!4099555 () Bool)

(assert (=> b!4099555 (= e!2544102 call!289667)))

(assert (= (and d!1217149 (not res!1676126)) b!4099554))

(assert (= (and b!4099554 c!706297) b!4099550))

(assert (= (and b!4099554 (not c!706297)) b!4099547))

(assert (= (and b!4099550 res!1676124) b!4099555))

(assert (= (and b!4099547 c!706296) b!4099551))

(assert (= (and b!4099547 (not c!706296)) b!4099549))

(assert (= (and b!4099551 res!1676122) b!4099548))

(assert (= (and b!4099549 (not res!1676123)) b!4099553))

(assert (= (and b!4099553 res!1676125) b!4099552))

(assert (= (or b!4099548 b!4099552) bm!289661))

(assert (= (or b!4099551 b!4099553) bm!289662))

(assert (= (or b!4099555 bm!289662) bm!289660))

(declare-fun m!4706463 () Bool)

(assert (=> bm!289660 m!4706463))

(declare-fun m!4706465 () Bool)

(assert (=> bm!289661 m!4706465))

(declare-fun m!4706467 () Bool)

(assert (=> b!4099550 m!4706467))

(assert (=> d!1217031 d!1217149))

(declare-fun d!1217151 () Bool)

(declare-fun res!1676127 () Bool)

(declare-fun e!2544105 () Bool)

(assert (=> d!1217151 (=> (not res!1676127) (not e!2544105))))

(assert (=> d!1217151 (= res!1676127 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(assert (=> d!1217151 (= (ruleValid!3042 thiss!26455 (h!49428 (t!339627 rTail!27))) e!2544105)))

(declare-fun b!4099556 () Bool)

(declare-fun res!1676128 () Bool)

(assert (=> b!4099556 (=> (not res!1676128) (not e!2544105))))

(assert (=> b!4099556 (= res!1676128 (not (nullable!4253 (regex!7132 (h!49428 (t!339627 rTail!27))))))))

(declare-fun b!4099557 () Bool)

(assert (=> b!4099557 (= e!2544105 (not (= (tag!7992 (h!49428 (t!339627 rTail!27))) (String!50561 ""))))))

(assert (= (and d!1217151 res!1676127) b!4099556))

(assert (= (and b!4099556 res!1676128) b!4099557))

(declare-fun m!4706469 () Bool)

(assert (=> d!1217151 m!4706469))

(declare-fun m!4706471 () Bool)

(assert (=> b!4099556 m!4706471))

(assert (=> b!4099334 d!1217151))

(declare-fun d!1217153 () Bool)

(assert (=> d!1217153 (= (isDefined!7206 lt!1466247) (not (isEmpty!26325 lt!1466247)))))

(declare-fun bs!593764 () Bool)

(assert (= bs!593764 d!1217153))

(assert (=> bs!593764 m!4706199))

(assert (=> b!4099285 d!1217153))

(declare-fun d!1217155 () Bool)

(declare-fun res!1676129 () Bool)

(declare-fun e!2544106 () Bool)

(assert (=> d!1217155 (=> res!1676129 e!2544106)))

(assert (=> d!1217155 (= res!1676129 ((_ is Nil!44008) (t!339627 (t!339627 lt!1466111))))))

(assert (=> d!1217155 (= (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 lt!1466111)) (Cons!44009 (tag!7992 (h!49428 (t!339627 lt!1466111))) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009))) e!2544106)))

(declare-fun b!4099558 () Bool)

(declare-fun e!2544107 () Bool)

(assert (=> b!4099558 (= e!2544106 e!2544107)))

(declare-fun res!1676130 () Bool)

(assert (=> b!4099558 (=> (not res!1676130) (not e!2544107))))

(assert (=> b!4099558 (= res!1676130 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 (t!339627 lt!1466111))) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)) (tag!7992 (h!49428 (t!339627 (t!339627 lt!1466111)))))))))

(declare-fun b!4099559 () Bool)

(assert (=> b!4099559 (= e!2544107 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (t!339627 lt!1466111))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (t!339627 lt!1466111)))) (Cons!44009 (tag!7992 (h!49428 (t!339627 lt!1466111))) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)))))))

(assert (= (and d!1217155 (not res!1676129)) b!4099558))

(assert (= (and b!4099558 res!1676130) b!4099559))

(declare-fun m!4706473 () Bool)

(assert (=> b!4099558 m!4706473))

(declare-fun m!4706475 () Bool)

(assert (=> b!4099559 m!4706475))

(assert (=> b!4099342 d!1217155))

(declare-fun d!1217157 () Bool)

(declare-fun lt!1466292 () Bool)

(assert (=> d!1217157 (= lt!1466292 (select (content!6792 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))

(declare-fun e!2544109 () Bool)

(assert (=> d!1217157 (= lt!1466292 e!2544109)))

(declare-fun res!1676131 () Bool)

(assert (=> d!1217157 (=> (not res!1676131) (not e!2544109))))

(assert (=> d!1217157 (= res!1676131 ((_ is Cons!44008) (t!339627 (t!339627 rTail!27))))))

(assert (=> d!1217157 (= (contains!8812 (t!339627 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466247)))) lt!1466292)))

(declare-fun b!4099560 () Bool)

(declare-fun e!2544108 () Bool)

(assert (=> b!4099560 (= e!2544109 e!2544108)))

(declare-fun res!1676132 () Bool)

(assert (=> b!4099560 (=> res!1676132 e!2544108)))

(assert (=> b!4099560 (= res!1676132 (= (h!49428 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))

(declare-fun b!4099561 () Bool)

(assert (=> b!4099561 (= e!2544108 (contains!8812 (t!339627 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))

(assert (= (and d!1217157 res!1676131) b!4099560))

(assert (= (and b!4099560 (not res!1676132)) b!4099561))

(assert (=> d!1217157 m!4706453))

(declare-fun m!4706477 () Bool)

(assert (=> d!1217157 m!4706477))

(declare-fun m!4706479 () Bool)

(assert (=> b!4099561 m!4706479))

(assert (=> b!4099281 d!1217157))

(declare-fun d!1217159 () Bool)

(assert (=> d!1217159 (= (get!14428 lt!1466247) (v!40033 lt!1466247))))

(assert (=> b!4099281 d!1217159))

(declare-fun d!1217161 () Bool)

(declare-fun choose!25051 (Int) Bool)

(assert (=> d!1217161 (= (Forall2!1122 lambda!128194) (choose!25051 lambda!128194))))

(declare-fun bs!593765 () Bool)

(assert (= bs!593765 d!1217161))

(declare-fun m!4706481 () Bool)

(assert (=> bs!593765 m!4706481))

(assert (=> d!1216941 d!1217161))

(assert (=> d!1217061 d!1217039))

(declare-fun b!4099562 () Bool)

(declare-fun res!1676136 () Bool)

(declare-fun e!2544110 () Bool)

(assert (=> b!4099562 (=> res!1676136 e!2544110)))

(declare-fun e!2544112 () Bool)

(assert (=> b!4099562 (= res!1676136 e!2544112)))

(declare-fun res!1676138 () Bool)

(assert (=> b!4099562 (=> (not res!1676138) (not e!2544112))))

(declare-fun lt!1466293 () Bool)

(assert (=> b!4099562 (= res!1676138 lt!1466293)))

(declare-fun d!1217163 () Bool)

(declare-fun e!2544113 () Bool)

(assert (=> d!1217163 e!2544113))

(declare-fun c!706298 () Bool)

(assert (=> d!1217163 (= c!706298 ((_ is EmptyExpr!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun e!2544111 () Bool)

(assert (=> d!1217163 (= lt!1466293 e!2544111)))

(declare-fun c!706300 () Bool)

(assert (=> d!1217163 (= c!706300 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))

(assert (=> d!1217163 (validRegex!5453 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))

(assert (=> d!1217163 (= (matchR!5968 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) lt!1466293)))

(declare-fun b!4099563 () Bool)

(declare-fun res!1676133 () Bool)

(assert (=> b!4099563 (=> (not res!1676133) (not e!2544112))))

(assert (=> b!4099563 (= res!1676133 (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun b!4099564 () Bool)

(declare-fun e!2544116 () Bool)

(declare-fun e!2544114 () Bool)

(assert (=> b!4099564 (= e!2544116 e!2544114)))

(declare-fun res!1676139 () Bool)

(assert (=> b!4099564 (=> res!1676139 e!2544114)))

(declare-fun call!289668 () Bool)

(assert (=> b!4099564 (= res!1676139 call!289668)))

(declare-fun b!4099565 () Bool)

(assert (=> b!4099565 (= e!2544111 (nullable!4253 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun b!4099566 () Bool)

(declare-fun res!1676134 () Bool)

(assert (=> b!4099566 (=> (not res!1676134) (not e!2544112))))

(assert (=> b!4099566 (= res!1676134 (not call!289668))))

(declare-fun b!4099567 () Bool)

(assert (=> b!4099567 (= e!2544114 (not (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (c!706230 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))))))))

(declare-fun b!4099568 () Bool)

(assert (=> b!4099568 (= e!2544111 (matchR!5968 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))))) (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun b!4099569 () Bool)

(assert (=> b!4099569 (= e!2544113 (= lt!1466293 call!289668))))

(declare-fun b!4099570 () Bool)

(declare-fun res!1676135 () Bool)

(assert (=> b!4099570 (=> res!1676135 e!2544110)))

(assert (=> b!4099570 (= res!1676135 (not ((_ is ElementMatch!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun e!2544115 () Bool)

(assert (=> b!4099570 (= e!2544115 e!2544110)))

(declare-fun b!4099571 () Bool)

(assert (=> b!4099571 (= e!2544110 e!2544116)))

(declare-fun res!1676137 () Bool)

(assert (=> b!4099571 (=> (not res!1676137) (not e!2544116))))

(assert (=> b!4099571 (= res!1676137 (not lt!1466293))))

(declare-fun bm!289663 () Bool)

(assert (=> bm!289663 (= call!289668 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun b!4099572 () Bool)

(assert (=> b!4099572 (= e!2544113 e!2544115)))

(declare-fun c!706299 () Bool)

(assert (=> b!4099572 (= c!706299 ((_ is EmptyLang!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun b!4099573 () Bool)

(assert (=> b!4099573 (= e!2544112 (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (c!706230 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun b!4099574 () Bool)

(declare-fun res!1676140 () Bool)

(assert (=> b!4099574 (=> res!1676140 e!2544114)))

(assert (=> b!4099574 (= res!1676140 (not (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))))

(declare-fun b!4099575 () Bool)

(assert (=> b!4099575 (= e!2544115 (not lt!1466293))))

(assert (= (and d!1217163 c!706300) b!4099565))

(assert (= (and d!1217163 (not c!706300)) b!4099568))

(assert (= (and d!1217163 c!706298) b!4099569))

(assert (= (and d!1217163 (not c!706298)) b!4099572))

(assert (= (and b!4099572 c!706299) b!4099575))

(assert (= (and b!4099572 (not c!706299)) b!4099570))

(assert (= (and b!4099570 (not res!1676135)) b!4099562))

(assert (= (and b!4099562 res!1676138) b!4099566))

(assert (= (and b!4099566 res!1676134) b!4099563))

(assert (= (and b!4099563 res!1676133) b!4099573))

(assert (= (and b!4099562 (not res!1676136)) b!4099571))

(assert (= (and b!4099571 res!1676137) b!4099564))

(assert (= (and b!4099564 (not res!1676139)) b!4099574))

(assert (= (and b!4099574 (not res!1676140)) b!4099567))

(assert (= (or b!4099569 b!4099564 b!4099566) bm!289663))

(assert (=> b!4099563 m!4706189))

(declare-fun m!4706483 () Bool)

(assert (=> b!4099563 m!4706483))

(assert (=> b!4099563 m!4706483))

(declare-fun m!4706485 () Bool)

(assert (=> b!4099563 m!4706485))

(assert (=> b!4099573 m!4706189))

(declare-fun m!4706487 () Bool)

(assert (=> b!4099573 m!4706487))

(assert (=> b!4099567 m!4706189))

(assert (=> b!4099567 m!4706487))

(assert (=> bm!289663 m!4706189))

(declare-fun m!4706489 () Bool)

(assert (=> bm!289663 m!4706489))

(declare-fun m!4706491 () Bool)

(assert (=> b!4099565 m!4706491))

(assert (=> b!4099574 m!4706189))

(assert (=> b!4099574 m!4706483))

(assert (=> b!4099574 m!4706483))

(assert (=> b!4099574 m!4706485))

(assert (=> b!4099568 m!4706189))

(assert (=> b!4099568 m!4706487))

(assert (=> b!4099568 m!4706487))

(declare-fun m!4706493 () Bool)

(assert (=> b!4099568 m!4706493))

(assert (=> b!4099568 m!4706189))

(assert (=> b!4099568 m!4706483))

(assert (=> b!4099568 m!4706493))

(assert (=> b!4099568 m!4706483))

(declare-fun m!4706495 () Bool)

(assert (=> b!4099568 m!4706495))

(assert (=> d!1217163 m!4706189))

(assert (=> d!1217163 m!4706489))

(declare-fun m!4706497 () Bool)

(assert (=> d!1217163 m!4706497))

(assert (=> b!4099283 d!1217163))

(assert (=> b!4099283 d!1217159))

(declare-fun d!1217165 () Bool)

(assert (=> d!1217165 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))) (list!16310 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun bs!593766 () Bool)

(assert (= bs!593766 d!1217165))

(declare-fun m!4706499 () Bool)

(assert (=> bs!593766 m!4706499))

(assert (=> b!4099283 d!1217165))

(declare-fun d!1217167 () Bool)

(declare-fun lt!1466294 () BalanceConc!26280)

(assert (=> d!1217167 (= (list!16308 lt!1466294) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247))))))

(assert (=> d!1217167 (= lt!1466294 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))) (value!223906 (_1!24578 (get!14428 lt!1466247)))))))

(assert (=> d!1217167 (= (charsOf!4872 (_1!24578 (get!14428 lt!1466247))) lt!1466294)))

(declare-fun b_lambda!120447 () Bool)

(assert (=> (not b_lambda!120447) (not d!1217167)))

(declare-fun t!339671 () Bool)

(declare-fun tb!246761 () Bool)

(assert (=> (and b!4098834 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339671) tb!246761))

(declare-fun b!4099576 () Bool)

(declare-fun e!2544117 () Bool)

(declare-fun tp!1240947 () Bool)

(assert (=> b!4099576 (= e!2544117 (and (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))) (value!223906 (_1!24578 (get!14428 lt!1466247)))))) tp!1240947))))

(declare-fun result!299446 () Bool)

(assert (=> tb!246761 (= result!299446 (and (inv!58729 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))) (value!223906 (_1!24578 (get!14428 lt!1466247))))) e!2544117))))

(assert (= tb!246761 b!4099576))

(declare-fun m!4706501 () Bool)

(assert (=> b!4099576 m!4706501))

(declare-fun m!4706503 () Bool)

(assert (=> tb!246761 m!4706503))

(assert (=> d!1217167 t!339671))

(declare-fun b_and!316495 () Bool)

(assert (= b_and!316471 (and (=> t!339671 result!299446) b_and!316495)))

(declare-fun tb!246763 () Bool)

(declare-fun t!339673 () Bool)

(assert (=> (and b!4098827 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339673) tb!246763))

(declare-fun result!299448 () Bool)

(assert (= result!299448 result!299446))

(assert (=> d!1217167 t!339673))

(declare-fun b_and!316497 () Bool)

(assert (= b_and!316473 (and (=> t!339673 result!299448) b_and!316497)))

(declare-fun t!339675 () Bool)

(declare-fun tb!246765 () Bool)

(assert (=> (and b!4099007 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339675) tb!246765))

(declare-fun result!299450 () Bool)

(assert (= result!299450 result!299446))

(assert (=> d!1217167 t!339675))

(declare-fun b_and!316499 () Bool)

(assert (= b_and!316475 (and (=> t!339675 result!299450) b_and!316499)))

(declare-fun tb!246767 () Bool)

(declare-fun t!339677 () Bool)

(assert (=> (and b!4099466 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339677) tb!246767))

(declare-fun result!299452 () Bool)

(assert (= result!299452 result!299446))

(assert (=> d!1217167 t!339677))

(declare-fun b_and!316501 () Bool)

(assert (= b_and!316485 (and (=> t!339677 result!299452) b_and!316501)))

(declare-fun m!4706505 () Bool)

(assert (=> d!1217167 m!4706505))

(declare-fun m!4706507 () Bool)

(assert (=> d!1217167 m!4706507))

(assert (=> b!4099283 d!1217167))

(declare-fun d!1217169 () Bool)

(declare-fun e!2544118 () Bool)

(assert (=> d!1217169 e!2544118))

(declare-fun res!1676145 () Bool)

(assert (=> d!1217169 (=> res!1676145 e!2544118)))

(declare-fun lt!1466298 () Option!9530)

(assert (=> d!1217169 (= res!1676145 (isEmpty!26325 lt!1466298))))

(declare-fun e!2544120 () Option!9530)

(assert (=> d!1217169 (= lt!1466298 e!2544120)))

(declare-fun c!706301 () Bool)

(assert (=> d!1217169 (= c!706301 (and ((_ is Cons!44008) (t!339627 (t!339627 (t!339627 rTail!27)))) ((_ is Nil!44008) (t!339627 (t!339627 (t!339627 (t!339627 rTail!27)))))))))

(declare-fun lt!1466297 () Unit!63531)

(declare-fun lt!1466296 () Unit!63531)

(assert (=> d!1217169 (= lt!1466297 lt!1466296)))

(assert (=> d!1217169 (isPrefix!4157 input!3491 input!3491)))

(assert (=> d!1217169 (= lt!1466296 (lemmaIsPrefixRefl!2708 input!3491 input!3491))))

(assert (=> d!1217169 (rulesValidInductive!2639 thiss!26455 (t!339627 (t!339627 (t!339627 rTail!27))))))

(assert (=> d!1217169 (= (maxPrefix!4003 thiss!26455 (t!339627 (t!339627 (t!339627 rTail!27))) input!3491) lt!1466298)))

(declare-fun b!4099577 () Bool)

(declare-fun e!2544119 () Bool)

(assert (=> b!4099577 (= e!2544119 (contains!8812 (t!339627 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466298)))))))

(declare-fun b!4099578 () Bool)

(declare-fun call!289669 () Option!9530)

(assert (=> b!4099578 (= e!2544120 call!289669)))

(declare-fun b!4099579 () Bool)

(declare-fun res!1676146 () Bool)

(assert (=> b!4099579 (=> (not res!1676146) (not e!2544119))))

(assert (=> b!4099579 (= res!1676146 (matchR!5968 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466298)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466298))))))))

(declare-fun b!4099580 () Bool)

(declare-fun res!1676144 () Bool)

(assert (=> b!4099580 (=> (not res!1676144) (not e!2544119))))

(assert (=> b!4099580 (= res!1676144 (< (size!32849 (_2!24578 (get!14428 lt!1466298))) (size!32849 input!3491)))))

(declare-fun b!4099581 () Bool)

(assert (=> b!4099581 (= e!2544118 e!2544119)))

(declare-fun res!1676143 () Bool)

(assert (=> b!4099581 (=> (not res!1676143) (not e!2544119))))

(assert (=> b!4099581 (= res!1676143 (isDefined!7206 lt!1466298))))

(declare-fun b!4099582 () Bool)

(declare-fun res!1676147 () Bool)

(assert (=> b!4099582 (=> (not res!1676147) (not e!2544119))))

(assert (=> b!4099582 (= res!1676147 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466298)))) (_2!24578 (get!14428 lt!1466298))) input!3491))))

(declare-fun b!4099583 () Bool)

(declare-fun res!1676142 () Bool)

(assert (=> b!4099583 (=> (not res!1676142) (not e!2544119))))

(assert (=> b!4099583 (= res!1676142 (= (value!223906 (_1!24578 (get!14428 lt!1466298))) (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466298)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466298)))))))))

(declare-fun bm!289664 () Bool)

(assert (=> bm!289664 (= call!289669 (maxPrefixOneRule!2979 thiss!26455 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))) input!3491))))

(declare-fun b!4099584 () Bool)

(declare-fun lt!1466299 () Option!9530)

(declare-fun lt!1466295 () Option!9530)

(assert (=> b!4099584 (= e!2544120 (ite (and ((_ is None!9529) lt!1466299) ((_ is None!9529) lt!1466295)) None!9529 (ite ((_ is None!9529) lt!1466295) lt!1466299 (ite ((_ is None!9529) lt!1466299) lt!1466295 (ite (>= (size!32847 (_1!24578 (v!40033 lt!1466299))) (size!32847 (_1!24578 (v!40033 lt!1466295)))) lt!1466299 lt!1466295)))))))

(assert (=> b!4099584 (= lt!1466299 call!289669)))

(assert (=> b!4099584 (= lt!1466295 (maxPrefix!4003 thiss!26455 (t!339627 (t!339627 (t!339627 (t!339627 rTail!27)))) input!3491))))

(declare-fun b!4099585 () Bool)

(declare-fun res!1676141 () Bool)

(assert (=> b!4099585 (=> (not res!1676141) (not e!2544119))))

(assert (=> b!4099585 (= res!1676141 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466298)))) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466298)))))))

(assert (= (and d!1217169 c!706301) b!4099578))

(assert (= (and d!1217169 (not c!706301)) b!4099584))

(assert (= (or b!4099578 b!4099584) bm!289664))

(assert (= (and d!1217169 (not res!1676145)) b!4099581))

(assert (= (and b!4099581 res!1676143) b!4099585))

(assert (= (and b!4099585 res!1676141) b!4099580))

(assert (= (and b!4099580 res!1676144) b!4099582))

(assert (= (and b!4099582 res!1676147) b!4099583))

(assert (= (and b!4099583 res!1676142) b!4099579))

(assert (= (and b!4099579 res!1676146) b!4099577))

(declare-fun m!4706509 () Bool)

(assert (=> b!4099585 m!4706509))

(declare-fun m!4706511 () Bool)

(assert (=> b!4099585 m!4706511))

(assert (=> b!4099585 m!4706511))

(declare-fun m!4706513 () Bool)

(assert (=> b!4099585 m!4706513))

(assert (=> b!4099579 m!4706509))

(assert (=> b!4099579 m!4706511))

(assert (=> b!4099579 m!4706511))

(assert (=> b!4099579 m!4706513))

(assert (=> b!4099579 m!4706513))

(declare-fun m!4706515 () Bool)

(assert (=> b!4099579 m!4706515))

(assert (=> b!4099580 m!4706509))

(declare-fun m!4706517 () Bool)

(assert (=> b!4099580 m!4706517))

(assert (=> b!4099580 m!4705875))

(declare-fun m!4706519 () Bool)

(assert (=> b!4099584 m!4706519))

(assert (=> b!4099577 m!4706509))

(declare-fun m!4706521 () Bool)

(assert (=> b!4099577 m!4706521))

(declare-fun m!4706523 () Bool)

(assert (=> d!1217169 m!4706523))

(assert (=> d!1217169 m!4705883))

(assert (=> d!1217169 m!4705885))

(declare-fun m!4706525 () Bool)

(assert (=> d!1217169 m!4706525))

(assert (=> b!4099583 m!4706509))

(declare-fun m!4706527 () Bool)

(assert (=> b!4099583 m!4706527))

(assert (=> b!4099583 m!4706527))

(declare-fun m!4706529 () Bool)

(assert (=> b!4099583 m!4706529))

(declare-fun m!4706531 () Bool)

(assert (=> b!4099581 m!4706531))

(assert (=> b!4099582 m!4706509))

(assert (=> b!4099582 m!4706511))

(assert (=> b!4099582 m!4706511))

(assert (=> b!4099582 m!4706513))

(assert (=> b!4099582 m!4706513))

(declare-fun m!4706533 () Bool)

(assert (=> b!4099582 m!4706533))

(declare-fun m!4706535 () Bool)

(assert (=> bm!289664 m!4706535))

(assert (=> b!4099288 d!1217169))

(declare-fun d!1217171 () Bool)

(declare-fun lt!1466300 () Bool)

(assert (=> d!1217171 (= lt!1466300 (select (content!6793 Nil!44009) (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))))))

(declare-fun e!2544121 () Bool)

(assert (=> d!1217171 (= lt!1466300 e!2544121)))

(declare-fun res!1676149 () Bool)

(assert (=> d!1217171 (=> (not res!1676149) (not e!2544121))))

(assert (=> d!1217171 (= res!1676149 ((_ is Cons!44009) Nil!44009))))

(assert (=> d!1217171 (= (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))) lt!1466300)))

(declare-fun b!4099586 () Bool)

(declare-fun e!2544122 () Bool)

(assert (=> b!4099586 (= e!2544121 e!2544122)))

(declare-fun res!1676148 () Bool)

(assert (=> b!4099586 (=> res!1676148 e!2544122)))

(assert (=> b!4099586 (= res!1676148 (= (h!49429 Nil!44009) (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))))))

(declare-fun b!4099587 () Bool)

(assert (=> b!4099587 (= e!2544122 (contains!8813 (t!339628 Nil!44009) (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))))))

(assert (= (and d!1217171 res!1676149) b!4099586))

(assert (= (and b!4099586 (not res!1676148)) b!4099587))

(assert (=> d!1217171 m!4706239))

(declare-fun m!4706537 () Bool)

(assert (=> d!1217171 m!4706537))

(declare-fun m!4706539 () Bool)

(assert (=> b!4099587 m!4706539))

(assert (=> b!4099091 d!1217171))

(declare-fun d!1217173 () Bool)

(declare-fun choose!25053 (Int) Bool)

(assert (=> d!1217173 (= (Forall!1522 lambda!128210) (choose!25053 lambda!128210))))

(declare-fun bs!593767 () Bool)

(assert (= bs!593767 d!1217173))

(declare-fun m!4706541 () Bool)

(assert (=> bs!593767 m!4706541))

(assert (=> d!1217057 d!1217173))

(declare-fun d!1217175 () Bool)

(assert (=> d!1217175 (= (content!6793 Nil!44009) ((as const (Array String!50560 Bool)) false))))

(assert (=> d!1217033 d!1217175))

(declare-fun d!1217177 () Bool)

(declare-fun nullableFct!1193 (Regex!12037) Bool)

(assert (=> d!1217177 (= (nullable!4253 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (nullableFct!1193 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun bs!593768 () Bool)

(assert (= bs!593768 d!1217177))

(declare-fun m!4706543 () Bool)

(assert (=> bs!593768 m!4706543))

(assert (=> b!4099390 d!1217177))

(declare-fun d!1217179 () Bool)

(declare-fun lt!1466301 () Bool)

(assert (=> d!1217179 (= lt!1466301 (select (content!6793 Nil!44009) (tag!7992 (h!49428 lt!1466109))))))

(declare-fun e!2544123 () Bool)

(assert (=> d!1217179 (= lt!1466301 e!2544123)))

(declare-fun res!1676151 () Bool)

(assert (=> d!1217179 (=> (not res!1676151) (not e!2544123))))

(assert (=> d!1217179 (= res!1676151 ((_ is Cons!44009) Nil!44009))))

(assert (=> d!1217179 (= (contains!8813 Nil!44009 (tag!7992 (h!49428 lt!1466109))) lt!1466301)))

(declare-fun b!4099588 () Bool)

(declare-fun e!2544124 () Bool)

(assert (=> b!4099588 (= e!2544123 e!2544124)))

(declare-fun res!1676150 () Bool)

(assert (=> b!4099588 (=> res!1676150 e!2544124)))

(assert (=> b!4099588 (= res!1676150 (= (h!49429 Nil!44009) (tag!7992 (h!49428 lt!1466109))))))

(declare-fun b!4099589 () Bool)

(assert (=> b!4099589 (= e!2544124 (contains!8813 (t!339628 Nil!44009) (tag!7992 (h!49428 lt!1466109))))))

(assert (= (and d!1217179 res!1676151) b!4099588))

(assert (= (and b!4099588 (not res!1676150)) b!4099589))

(assert (=> d!1217179 m!4706239))

(declare-fun m!4706545 () Bool)

(assert (=> d!1217179 m!4706545))

(declare-fun m!4706547 () Bool)

(assert (=> b!4099589 m!4706547))

(assert (=> b!4099320 d!1217179))

(declare-fun d!1217181 () Bool)

(assert (=> d!1217181 (= (list!16308 lt!1466251) (list!16310 (c!706231 lt!1466251)))))

(declare-fun bs!593769 () Bool)

(assert (= bs!593769 d!1217181))

(declare-fun m!4706549 () Bool)

(assert (=> bs!593769 m!4706549))

(assert (=> d!1217017 d!1217181))

(declare-fun bs!593770 () Bool)

(declare-fun d!1217183 () Bool)

(assert (= bs!593770 (and d!1217183 d!1216941)))

(declare-fun lambda!128214 () Int)

(assert (=> bs!593770 (= (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 rHead!24))) (= lambda!128214 lambda!128194))))

(declare-fun bs!593771 () Bool)

(assert (= bs!593771 (and d!1217183 d!1217029)))

(assert (=> bs!593771 (= (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 rTail!27)))) (= lambda!128214 lambda!128208))))

(assert (=> d!1217183 true))

(assert (=> d!1217183 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (dynLambda!18863 order!23189 lambda!128214))))

(assert (=> d!1217183 (= (equivClasses!2964 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (Forall2!1122 lambda!128214))))

(declare-fun bs!593772 () Bool)

(assert (= bs!593772 d!1217183))

(declare-fun m!4706551 () Bool)

(assert (=> bs!593772 m!4706551))

(assert (=> b!4099301 d!1217183))

(declare-fun d!1217185 () Bool)

(declare-fun c!706304 () Bool)

(assert (=> d!1217185 (= c!706304 ((_ is Nil!44006) lt!1466268))))

(declare-fun e!2544127 () (InoxSet C!24260))

(assert (=> d!1217185 (= (content!6794 lt!1466268) e!2544127)))

(declare-fun b!4099594 () Bool)

(assert (=> b!4099594 (= e!2544127 ((as const (Array C!24260 Bool)) false))))

(declare-fun b!4099595 () Bool)

(assert (=> b!4099595 (= e!2544127 ((_ map or) (store ((as const (Array C!24260 Bool)) false) (h!49426 lt!1466268) true) (content!6794 (t!339625 lt!1466268))))))

(assert (= (and d!1217185 c!706304) b!4099594))

(assert (= (and d!1217185 (not c!706304)) b!4099595))

(declare-fun m!4706553 () Bool)

(assert (=> b!4099595 m!4706553))

(declare-fun m!4706555 () Bool)

(assert (=> b!4099595 m!4706555))

(assert (=> d!1217063 d!1217185))

(declare-fun d!1217187 () Bool)

(declare-fun c!706305 () Bool)

(assert (=> d!1217187 (= c!706305 ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun e!2544128 () (InoxSet C!24260))

(assert (=> d!1217187 (= (content!6794 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) e!2544128)))

(declare-fun b!4099596 () Bool)

(assert (=> b!4099596 (= e!2544128 ((as const (Array C!24260 Bool)) false))))

(declare-fun b!4099597 () Bool)

(assert (=> b!4099597 (= e!2544128 ((_ map or) (store ((as const (Array C!24260 Bool)) false) (h!49426 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) true) (content!6794 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (= (and d!1217187 c!706305) b!4099596))

(assert (= (and d!1217187 (not c!706305)) b!4099597))

(declare-fun m!4706557 () Bool)

(assert (=> b!4099597 m!4706557))

(assert (=> b!4099597 m!4706445))

(assert (=> d!1217063 d!1217187))

(declare-fun d!1217189 () Bool)

(declare-fun c!706306 () Bool)

(assert (=> d!1217189 (= c!706306 ((_ is Nil!44006) (_2!24578 (get!14428 lt!1466166))))))

(declare-fun e!2544129 () (InoxSet C!24260))

(assert (=> d!1217189 (= (content!6794 (_2!24578 (get!14428 lt!1466166))) e!2544129)))

(declare-fun b!4099598 () Bool)

(assert (=> b!4099598 (= e!2544129 ((as const (Array C!24260 Bool)) false))))

(declare-fun b!4099599 () Bool)

(assert (=> b!4099599 (= e!2544129 ((_ map or) (store ((as const (Array C!24260 Bool)) false) (h!49426 (_2!24578 (get!14428 lt!1466166))) true) (content!6794 (t!339625 (_2!24578 (get!14428 lt!1466166))))))))

(assert (= (and d!1217189 c!706306) b!4099598))

(assert (= (and d!1217189 (not c!706306)) b!4099599))

(declare-fun m!4706559 () Bool)

(assert (=> b!4099599 m!4706559))

(declare-fun m!4706561 () Bool)

(assert (=> b!4099599 m!4706561))

(assert (=> d!1217063 d!1217189))

(assert (=> b!4099287 d!1217159))

(declare-fun d!1217191 () Bool)

(assert (=> d!1217191 (= (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247))))) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247))))))))

(declare-fun b_lambda!120449 () Bool)

(assert (=> (not b_lambda!120449) (not d!1217191)))

(declare-fun tb!246769 () Bool)

(declare-fun t!339679 () Bool)

(assert (=> (and b!4098834 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339679) tb!246769))

(declare-fun result!299454 () Bool)

(assert (=> tb!246769 (= result!299454 (inv!21 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun m!4706563 () Bool)

(assert (=> tb!246769 m!4706563))

(assert (=> d!1217191 t!339679))

(declare-fun b_and!316503 () Bool)

(assert (= b_and!316487 (and (=> t!339679 result!299454) b_and!316503)))

(declare-fun t!339681 () Bool)

(declare-fun tb!246771 () Bool)

(assert (=> (and b!4098827 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339681) tb!246771))

(declare-fun result!299456 () Bool)

(assert (= result!299456 result!299454))

(assert (=> d!1217191 t!339681))

(declare-fun b_and!316505 () Bool)

(assert (= b_and!316489 (and (=> t!339681 result!299456) b_and!316505)))

(declare-fun t!339683 () Bool)

(declare-fun tb!246773 () Bool)

(assert (=> (and b!4099007 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339683) tb!246773))

(declare-fun result!299458 () Bool)

(assert (= result!299458 result!299454))

(assert (=> d!1217191 t!339683))

(declare-fun b_and!316507 () Bool)

(assert (= b_and!316491 (and (=> t!339683 result!299458) b_and!316507)))

(declare-fun tb!246775 () Bool)

(declare-fun t!339685 () Bool)

(assert (=> (and b!4099466 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339685) tb!246775))

(declare-fun result!299460 () Bool)

(assert (= result!299460 result!299454))

(assert (=> d!1217191 t!339685))

(declare-fun b_and!316509 () Bool)

(assert (= b_and!316493 (and (=> t!339685 result!299460) b_and!316509)))

(assert (=> d!1217191 m!4706203))

(declare-fun m!4706565 () Bool)

(assert (=> d!1217191 m!4706565))

(assert (=> b!4099287 d!1217191))

(declare-fun d!1217193 () Bool)

(assert (=> d!1217193 (= (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247)))) (fromListB!2450 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466247)))))))

(declare-fun bs!593773 () Bool)

(assert (= bs!593773 d!1217193))

(declare-fun m!4706567 () Bool)

(assert (=> bs!593773 m!4706567))

(assert (=> b!4099287 d!1217193))

(declare-fun d!1217195 () Bool)

(assert (=> d!1217195 (= (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) ((_ is Nil!44006) (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> b!4099388 d!1217195))

(declare-fun d!1217197 () Bool)

(assert (=> d!1217197 (= (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> b!4099388 d!1217197))

(declare-fun d!1217199 () Bool)

(assert (not d!1217199))

(assert (=> b!4099421 d!1217199))

(declare-fun d!1217201 () Bool)

(declare-fun res!1676152 () Bool)

(declare-fun e!2544131 () Bool)

(assert (=> d!1217201 (=> res!1676152 e!2544131)))

(assert (=> d!1217201 (= res!1676152 ((_ is Nil!44008) (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))))))

(assert (=> d!1217201 (= (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))) Nil!44009)) e!2544131)))

(declare-fun b!4099600 () Bool)

(declare-fun e!2544132 () Bool)

(assert (=> b!4099600 (= e!2544131 e!2544132)))

(declare-fun res!1676153 () Bool)

(assert (=> b!4099600 (=> (not res!1676153) (not e!2544132))))

(assert (=> b!4099600 (= res!1676153 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))) Nil!44009) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))))))))

(declare-fun b!4099601 () Bool)

(assert (=> b!4099601 (= e!2544132 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27))))) Nil!44009))))))

(assert (= (and d!1217201 (not res!1676152)) b!4099600))

(assert (= (and b!4099600 res!1676153) b!4099601))

(declare-fun m!4706569 () Bool)

(assert (=> b!4099600 m!4706569))

(declare-fun m!4706571 () Bool)

(assert (=> b!4099601 m!4706571))

(assert (=> b!4099090 d!1217201))

(declare-fun d!1217203 () Bool)

(declare-fun e!2544135 () Bool)

(assert (=> d!1217203 e!2544135))

(declare-fun res!1676156 () Bool)

(assert (=> d!1217203 (=> (not res!1676156) (not e!2544135))))

(declare-fun lt!1466304 () BalanceConc!26280)

(assert (=> d!1217203 (= res!1676156 (= (list!16308 lt!1466304) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun fromList!891 (List!44130) Conc!13343)

(assert (=> d!1217203 (= lt!1466304 (BalanceConc!26281 (fromList!891 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217203 (= (fromListB!2450 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))) lt!1466304)))

(declare-fun b!4099604 () Bool)

(declare-fun isBalanced!3712 (Conc!13343) Bool)

(assert (=> b!4099604 (= e!2544135 (isBalanced!3712 (fromList!891 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))))))

(assert (= (and d!1217203 res!1676156) b!4099604))

(declare-fun m!4706573 () Bool)

(assert (=> d!1217203 m!4706573))

(declare-fun m!4706575 () Bool)

(assert (=> d!1217203 m!4706575))

(assert (=> b!4099604 m!4706575))

(assert (=> b!4099604 m!4706575))

(declare-fun m!4706577 () Bool)

(assert (=> b!4099604 m!4706577))

(assert (=> d!1217069 d!1217203))

(declare-fun d!1217205 () Bool)

(declare-fun c!706310 () Bool)

(assert (=> d!1217205 (= c!706310 ((_ is Node!13343) (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun e!2544140 () Bool)

(assert (=> d!1217205 (= (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))) e!2544140)))

(declare-fun b!4099611 () Bool)

(declare-fun inv!58732 (Conc!13343) Bool)

(assert (=> b!4099611 (= e!2544140 (inv!58732 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099612 () Bool)

(declare-fun e!2544141 () Bool)

(assert (=> b!4099612 (= e!2544140 e!2544141)))

(declare-fun res!1676159 () Bool)

(assert (=> b!4099612 (= res!1676159 (not ((_ is Leaf!20624) (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (=> b!4099612 (=> res!1676159 e!2544141)))

(declare-fun b!4099613 () Bool)

(declare-fun inv!58733 (Conc!13343) Bool)

(assert (=> b!4099613 (= e!2544141 (inv!58733 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (= (and d!1217205 c!706310) b!4099611))

(assert (= (and d!1217205 (not c!706310)) b!4099612))

(assert (= (and b!4099612 (not res!1676159)) b!4099613))

(declare-fun m!4706579 () Bool)

(assert (=> b!4099611 m!4706579))

(declare-fun m!4706581 () Bool)

(assert (=> b!4099613 m!4706581))

(assert (=> b!4099294 d!1217205))

(assert (=> d!1216951 d!1216949))

(assert (=> b!4099392 d!1217145))

(declare-fun d!1217207 () Bool)

(declare-fun lt!1466305 () Int)

(assert (=> d!1217207 (>= lt!1466305 0)))

(declare-fun e!2544142 () Int)

(assert (=> d!1217207 (= lt!1466305 e!2544142)))

(declare-fun c!706311 () Bool)

(assert (=> d!1217207 (= c!706311 ((_ is Nil!44006) (_2!24578 (get!14428 lt!1466239))))))

(assert (=> d!1217207 (= (size!32849 (_2!24578 (get!14428 lt!1466239))) lt!1466305)))

(declare-fun b!4099614 () Bool)

(assert (=> b!4099614 (= e!2544142 0)))

(declare-fun b!4099615 () Bool)

(assert (=> b!4099615 (= e!2544142 (+ 1 (size!32849 (t!339625 (_2!24578 (get!14428 lt!1466239))))))))

(assert (= (and d!1217207 c!706311) b!4099614))

(assert (= (and d!1217207 (not c!706311)) b!4099615))

(declare-fun m!4706583 () Bool)

(assert (=> b!4099615 m!4706583))

(assert (=> b!4099266 d!1217207))

(assert (=> b!4099266 d!1217131))

(assert (=> b!4099266 d!1217075))

(declare-fun d!1217209 () Bool)

(assert (=> d!1217209 (= (head!8664 input!3491) (h!49426 input!3491))))

(assert (=> b!4099331 d!1217209))

(declare-fun d!1217211 () Bool)

(assert (not d!1217211))

(assert (=> b!4099410 d!1217211))

(declare-fun bs!593774 () Bool)

(declare-fun d!1217213 () Bool)

(assert (= bs!593774 (and d!1217213 d!1217127)))

(declare-fun lambda!128215 () Int)

(assert (=> bs!593774 (= lambda!128215 lambda!128213)))

(declare-fun bs!593775 () Bool)

(assert (= bs!593775 (and d!1217213 d!1217065)))

(assert (=> bs!593775 (= lambda!128215 lambda!128211)))

(declare-fun bs!593776 () Bool)

(assert (= bs!593776 (and d!1217213 d!1216955)))

(assert (=> bs!593776 (= lambda!128215 lambda!128197)))

(declare-fun bs!593777 () Bool)

(assert (= bs!593777 (and d!1217213 d!1216865)))

(assert (=> bs!593777 (= lambda!128215 lambda!128185)))

(declare-fun bs!593778 () Bool)

(assert (= bs!593778 (and d!1217213 d!1217045)))

(assert (=> bs!593778 (= lambda!128215 lambda!128209)))

(assert (=> d!1217213 true))

(declare-fun lt!1466306 () Bool)

(assert (=> d!1217213 (= lt!1466306 (forall!8420 lt!1466111 lambda!128215))))

(declare-fun e!2544143 () Bool)

(assert (=> d!1217213 (= lt!1466306 e!2544143)))

(declare-fun res!1676160 () Bool)

(assert (=> d!1217213 (=> res!1676160 e!2544143)))

(assert (=> d!1217213 (= res!1676160 (not ((_ is Cons!44008) lt!1466111)))))

(assert (=> d!1217213 (= (rulesValidInductive!2639 thiss!26455 lt!1466111) lt!1466306)))

(declare-fun b!4099616 () Bool)

(declare-fun e!2544144 () Bool)

(assert (=> b!4099616 (= e!2544143 e!2544144)))

(declare-fun res!1676161 () Bool)

(assert (=> b!4099616 (=> (not res!1676161) (not e!2544144))))

(assert (=> b!4099616 (= res!1676161 (ruleValid!3042 thiss!26455 (h!49428 lt!1466111)))))

(declare-fun b!4099617 () Bool)

(assert (=> b!4099617 (= e!2544144 (rulesValidInductive!2639 thiss!26455 (t!339627 lt!1466111)))))

(assert (= (and d!1217213 (not res!1676160)) b!4099616))

(assert (= (and b!4099616 res!1676161) b!4099617))

(declare-fun m!4706585 () Bool)

(assert (=> d!1217213 m!4706585))

(declare-fun m!4706587 () Bool)

(assert (=> b!4099616 m!4706587))

(declare-fun m!4706589 () Bool)

(assert (=> b!4099617 m!4706589))

(assert (=> d!1217065 d!1217213))

(declare-fun d!1217215 () Bool)

(declare-fun res!1676162 () Bool)

(declare-fun e!2544145 () Bool)

(assert (=> d!1217215 (=> res!1676162 e!2544145)))

(assert (=> d!1217215 (= res!1676162 ((_ is Nil!44008) lt!1466111))))

(assert (=> d!1217215 (= (forall!8420 lt!1466111 lambda!128211) e!2544145)))

(declare-fun b!4099618 () Bool)

(declare-fun e!2544146 () Bool)

(assert (=> b!4099618 (= e!2544145 e!2544146)))

(declare-fun res!1676163 () Bool)

(assert (=> b!4099618 (=> (not res!1676163) (not e!2544146))))

(assert (=> b!4099618 (= res!1676163 (dynLambda!18870 lambda!128211 (h!49428 lt!1466111)))))

(declare-fun b!4099619 () Bool)

(assert (=> b!4099619 (= e!2544146 (forall!8420 (t!339627 lt!1466111) lambda!128211))))

(assert (= (and d!1217215 (not res!1676162)) b!4099618))

(assert (= (and b!4099618 res!1676163) b!4099619))

(declare-fun b_lambda!120451 () Bool)

(assert (=> (not b_lambda!120451) (not b!4099618)))

(declare-fun m!4706591 () Bool)

(assert (=> b!4099618 m!4706591))

(declare-fun m!4706593 () Bool)

(assert (=> b!4099619 m!4706593))

(assert (=> d!1217065 d!1217215))

(assert (=> d!1217049 d!1217047))

(assert (=> d!1217049 d!1216903))

(declare-fun d!1217217 () Bool)

(declare-fun c!706312 () Bool)

(assert (=> d!1217217 (= c!706312 ((_ is Nil!44008) lt!1466109))))

(declare-fun e!2544147 () (InoxSet Rule!14064))

(assert (=> d!1217217 (= (content!6792 lt!1466109) e!2544147)))

(declare-fun b!4099620 () Bool)

(assert (=> b!4099620 (= e!2544147 ((as const (Array Rule!14064 Bool)) false))))

(declare-fun b!4099621 () Bool)

(assert (=> b!4099621 (= e!2544147 ((_ map or) (store ((as const (Array Rule!14064 Bool)) false) (h!49428 lt!1466109) true) (content!6792 (t!339627 lt!1466109))))))

(assert (= (and d!1217217 c!706312) b!4099620))

(assert (= (and d!1217217 (not c!706312)) b!4099621))

(declare-fun m!4706595 () Bool)

(assert (=> b!4099621 m!4706595))

(declare-fun m!4706597 () Bool)

(assert (=> b!4099621 m!4706597))

(assert (=> d!1217023 d!1217217))

(declare-fun b!4099623 () Bool)

(declare-fun e!2544149 () List!44130)

(assert (=> b!4099623 (= e!2544149 (Cons!44006 (h!49426 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (++!11528 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (_2!24578 (get!14428 lt!1466239)))))))

(declare-fun d!1217219 () Bool)

(declare-fun e!2544148 () Bool)

(assert (=> d!1217219 e!2544148))

(declare-fun res!1676165 () Bool)

(assert (=> d!1217219 (=> (not res!1676165) (not e!2544148))))

(declare-fun lt!1466307 () List!44130)

(assert (=> d!1217219 (= res!1676165 (= (content!6794 lt!1466307) ((_ map or) (content!6794 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (content!6794 (_2!24578 (get!14428 lt!1466239))))))))

(assert (=> d!1217219 (= lt!1466307 e!2544149)))

(declare-fun c!706313 () Bool)

(assert (=> d!1217219 (= c!706313 ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))

(assert (=> d!1217219 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))) (_2!24578 (get!14428 lt!1466239))) lt!1466307)))

(declare-fun b!4099625 () Bool)

(assert (=> b!4099625 (= e!2544148 (or (not (= (_2!24578 (get!14428 lt!1466239)) Nil!44006)) (= lt!1466307 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))))))))

(declare-fun b!4099624 () Bool)

(declare-fun res!1676164 () Bool)

(assert (=> b!4099624 (=> (not res!1676164) (not e!2544148))))

(assert (=> b!4099624 (= res!1676164 (= (size!32849 lt!1466307) (+ (size!32849 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (size!32849 (_2!24578 (get!14428 lt!1466239))))))))

(declare-fun b!4099622 () Bool)

(assert (=> b!4099622 (= e!2544149 (_2!24578 (get!14428 lt!1466239)))))

(assert (= (and d!1217219 c!706313) b!4099622))

(assert (= (and d!1217219 (not c!706313)) b!4099623))

(assert (= (and d!1217219 res!1676165) b!4099624))

(assert (= (and b!4099624 res!1676164) b!4099625))

(declare-fun m!4706599 () Bool)

(assert (=> b!4099623 m!4706599))

(declare-fun m!4706601 () Bool)

(assert (=> d!1217219 m!4706601))

(assert (=> d!1217219 m!4706163))

(declare-fun m!4706603 () Bool)

(assert (=> d!1217219 m!4706603))

(declare-fun m!4706605 () Bool)

(assert (=> d!1217219 m!4706605))

(declare-fun m!4706607 () Bool)

(assert (=> b!4099624 m!4706607))

(assert (=> b!4099624 m!4706163))

(declare-fun m!4706609 () Bool)

(assert (=> b!4099624 m!4706609))

(assert (=> b!4099624 m!4706179))

(assert (=> b!4099264 d!1217219))

(declare-fun d!1217221 () Bool)

(assert (=> d!1217221 (= (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))) (list!16310 (c!706231 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))

(declare-fun bs!593779 () Bool)

(assert (= bs!593779 d!1217221))

(declare-fun m!4706611 () Bool)

(assert (=> bs!593779 m!4706611))

(assert (=> b!4099264 d!1217221))

(declare-fun d!1217223 () Bool)

(declare-fun lt!1466308 () BalanceConc!26280)

(assert (=> d!1217223 (= (list!16308 lt!1466308) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239))))))

(assert (=> d!1217223 (= lt!1466308 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239))))) (value!223906 (_1!24578 (get!14428 lt!1466239)))))))

(assert (=> d!1217223 (= (charsOf!4872 (_1!24578 (get!14428 lt!1466239))) lt!1466308)))

(declare-fun b_lambda!120453 () Bool)

(assert (=> (not b_lambda!120453) (not d!1217223)))

(declare-fun t!339687 () Bool)

(declare-fun tb!246777 () Bool)

(assert (=> (and b!4098834 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339687) tb!246777))

(declare-fun b!4099626 () Bool)

(declare-fun e!2544150 () Bool)

(declare-fun tp!1240948 () Bool)

(assert (=> b!4099626 (= e!2544150 (and (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239))))) (value!223906 (_1!24578 (get!14428 lt!1466239)))))) tp!1240948))))

(declare-fun result!299462 () Bool)

(assert (=> tb!246777 (= result!299462 (and (inv!58729 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239))))) (value!223906 (_1!24578 (get!14428 lt!1466239))))) e!2544150))))

(assert (= tb!246777 b!4099626))

(declare-fun m!4706613 () Bool)

(assert (=> b!4099626 m!4706613))

(declare-fun m!4706615 () Bool)

(assert (=> tb!246777 m!4706615))

(assert (=> d!1217223 t!339687))

(declare-fun b_and!316511 () Bool)

(assert (= b_and!316495 (and (=> t!339687 result!299462) b_and!316511)))

(declare-fun tb!246779 () Bool)

(declare-fun t!339689 () Bool)

(assert (=> (and b!4098827 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339689) tb!246779))

(declare-fun result!299464 () Bool)

(assert (= result!299464 result!299462))

(assert (=> d!1217223 t!339689))

(declare-fun b_and!316513 () Bool)

(assert (= b_and!316497 (and (=> t!339689 result!299464) b_and!316513)))

(declare-fun t!339691 () Bool)

(declare-fun tb!246781 () Bool)

(assert (=> (and b!4099007 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339691) tb!246781))

(declare-fun result!299466 () Bool)

(assert (= result!299466 result!299462))

(assert (=> d!1217223 t!339691))

(declare-fun b_and!316515 () Bool)

(assert (= b_and!316499 (and (=> t!339691 result!299466) b_and!316515)))

(declare-fun tb!246783 () Bool)

(declare-fun t!339693 () Bool)

(assert (=> (and b!4099466 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339693) tb!246783))

(declare-fun result!299468 () Bool)

(assert (= result!299468 result!299462))

(assert (=> d!1217223 t!339693))

(declare-fun b_and!316517 () Bool)

(assert (= b_and!316501 (and (=> t!339693 result!299468) b_and!316517)))

(declare-fun m!4706617 () Bool)

(assert (=> d!1217223 m!4706617))

(declare-fun m!4706619 () Bool)

(assert (=> d!1217223 m!4706619))

(assert (=> b!4099264 d!1217223))

(assert (=> b!4099264 d!1217131))

(declare-fun b!4099627 () Bool)

(declare-fun res!1676169 () Bool)

(declare-fun e!2544151 () Bool)

(assert (=> b!4099627 (=> res!1676169 e!2544151)))

(declare-fun e!2544153 () Bool)

(assert (=> b!4099627 (= res!1676169 e!2544153)))

(declare-fun res!1676171 () Bool)

(assert (=> b!4099627 (=> (not res!1676171) (not e!2544153))))

(declare-fun lt!1466309 () Bool)

(assert (=> b!4099627 (= res!1676171 lt!1466309)))

(declare-fun d!1217225 () Bool)

(declare-fun e!2544154 () Bool)

(assert (=> d!1217225 e!2544154))

(declare-fun c!706314 () Bool)

(assert (=> d!1217225 (= c!706314 ((_ is EmptyExpr!12037) (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun e!2544152 () Bool)

(assert (=> d!1217225 (= lt!1466309 e!2544152)))

(declare-fun c!706316 () Bool)

(assert (=> d!1217225 (= c!706316 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))

(assert (=> d!1217225 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27))))))

(assert (=> d!1217225 (= (matchR!5968 (regex!7132 (h!49428 (t!339627 rTail!27))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) lt!1466309)))

(declare-fun b!4099628 () Bool)

(declare-fun res!1676166 () Bool)

(assert (=> b!4099628 (=> (not res!1676166) (not e!2544153))))

(assert (=> b!4099628 (= res!1676166 (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))))))))

(declare-fun b!4099629 () Bool)

(declare-fun e!2544157 () Bool)

(declare-fun e!2544155 () Bool)

(assert (=> b!4099629 (= e!2544157 e!2544155)))

(declare-fun res!1676172 () Bool)

(assert (=> b!4099629 (=> res!1676172 e!2544155)))

(declare-fun call!289670 () Bool)

(assert (=> b!4099629 (= res!1676172 call!289670)))

(declare-fun b!4099630 () Bool)

(assert (=> b!4099630 (= e!2544152 (nullable!4253 (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun b!4099631 () Bool)

(declare-fun res!1676167 () Bool)

(assert (=> b!4099631 (=> (not res!1676167) (not e!2544153))))

(assert (=> b!4099631 (= res!1676167 (not call!289670))))

(declare-fun b!4099632 () Bool)

(assert (=> b!4099632 (= e!2544155 (not (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (c!706230 (regex!7132 (h!49428 (t!339627 rTail!27)))))))))

(declare-fun b!4099633 () Bool)

(assert (=> b!4099633 (= e!2544152 (matchR!5968 (derivativeStep!3654 (regex!7132 (h!49428 (t!339627 rTail!27))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))))) (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239)))))))))

(declare-fun b!4099634 () Bool)

(assert (=> b!4099634 (= e!2544154 (= lt!1466309 call!289670))))

(declare-fun b!4099635 () Bool)

(declare-fun res!1676168 () Bool)

(assert (=> b!4099635 (=> res!1676168 e!2544151)))

(assert (=> b!4099635 (= res!1676168 (not ((_ is ElementMatch!12037) (regex!7132 (h!49428 (t!339627 rTail!27))))))))

(declare-fun e!2544156 () Bool)

(assert (=> b!4099635 (= e!2544156 e!2544151)))

(declare-fun b!4099636 () Bool)

(assert (=> b!4099636 (= e!2544151 e!2544157)))

(declare-fun res!1676170 () Bool)

(assert (=> b!4099636 (=> (not res!1676170) (not e!2544157))))

(assert (=> b!4099636 (= res!1676170 (not lt!1466309))))

(declare-fun bm!289665 () Bool)

(assert (=> bm!289665 (= call!289670 (isEmpty!26327 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))

(declare-fun b!4099637 () Bool)

(assert (=> b!4099637 (= e!2544154 e!2544156)))

(declare-fun c!706315 () Bool)

(assert (=> b!4099637 (= c!706315 ((_ is EmptyLang!12037) (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun b!4099638 () Bool)

(assert (=> b!4099638 (= e!2544153 (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))) (c!706230 (regex!7132 (h!49428 (t!339627 rTail!27))))))))

(declare-fun b!4099639 () Bool)

(declare-fun res!1676173 () Bool)

(assert (=> b!4099639 (=> res!1676173 e!2544155)))

(assert (=> b!4099639 (= res!1676173 (not (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466239))))))))))

(declare-fun b!4099640 () Bool)

(assert (=> b!4099640 (= e!2544156 (not lt!1466309))))

(assert (= (and d!1217225 c!706316) b!4099630))

(assert (= (and d!1217225 (not c!706316)) b!4099633))

(assert (= (and d!1217225 c!706314) b!4099634))

(assert (= (and d!1217225 (not c!706314)) b!4099637))

(assert (= (and b!4099637 c!706315) b!4099640))

(assert (= (and b!4099637 (not c!706315)) b!4099635))

(assert (= (and b!4099635 (not res!1676168)) b!4099627))

(assert (= (and b!4099627 res!1676171) b!4099631))

(assert (= (and b!4099631 res!1676167) b!4099628))

(assert (= (and b!4099628 res!1676166) b!4099638))

(assert (= (and b!4099627 (not res!1676169)) b!4099636))

(assert (= (and b!4099636 res!1676170) b!4099629))

(assert (= (and b!4099629 (not res!1676172)) b!4099639))

(assert (= (and b!4099639 (not res!1676173)) b!4099632))

(assert (= (or b!4099634 b!4099629 b!4099631) bm!289665))

(assert (=> b!4099628 m!4706163))

(declare-fun m!4706621 () Bool)

(assert (=> b!4099628 m!4706621))

(assert (=> b!4099628 m!4706621))

(declare-fun m!4706623 () Bool)

(assert (=> b!4099628 m!4706623))

(assert (=> b!4099638 m!4706163))

(declare-fun m!4706625 () Bool)

(assert (=> b!4099638 m!4706625))

(assert (=> b!4099632 m!4706163))

(assert (=> b!4099632 m!4706625))

(assert (=> bm!289665 m!4706163))

(declare-fun m!4706627 () Bool)

(assert (=> bm!289665 m!4706627))

(assert (=> b!4099630 m!4706471))

(assert (=> b!4099639 m!4706163))

(assert (=> b!4099639 m!4706621))

(assert (=> b!4099639 m!4706621))

(assert (=> b!4099639 m!4706623))

(assert (=> b!4099633 m!4706163))

(assert (=> b!4099633 m!4706625))

(assert (=> b!4099633 m!4706625))

(declare-fun m!4706629 () Bool)

(assert (=> b!4099633 m!4706629))

(assert (=> b!4099633 m!4706163))

(assert (=> b!4099633 m!4706621))

(assert (=> b!4099633 m!4706629))

(assert (=> b!4099633 m!4706621))

(declare-fun m!4706631 () Bool)

(assert (=> b!4099633 m!4706631))

(assert (=> d!1217225 m!4706163))

(assert (=> d!1217225 m!4706627))

(assert (=> d!1217225 m!4706469))

(assert (=> b!4099270 d!1217225))

(assert (=> b!4099270 d!1217221))

(assert (=> b!4099270 d!1217223))

(assert (=> b!4099270 d!1217131))

(declare-fun d!1217227 () Bool)

(declare-fun lt!1466310 () Bool)

(assert (=> d!1217227 (= lt!1466310 (select (content!6793 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))))

(declare-fun e!2544158 () Bool)

(assert (=> d!1217227 (= lt!1466310 e!2544158)))

(declare-fun res!1676175 () Bool)

(assert (=> d!1217227 (=> (not res!1676175) (not e!2544158))))

(assert (=> d!1217227 (= res!1676175 ((_ is Cons!44009) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)))))

(assert (=> d!1217227 (= (contains!8813 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))) lt!1466310)))

(declare-fun b!4099641 () Bool)

(declare-fun e!2544159 () Bool)

(assert (=> b!4099641 (= e!2544158 e!2544159)))

(declare-fun res!1676174 () Bool)

(assert (=> b!4099641 (=> res!1676174 e!2544159)))

(assert (=> b!4099641 (= res!1676174 (= (h!49429 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))))

(declare-fun b!4099642 () Bool)

(assert (=> b!4099642 (= e!2544159 (contains!8813 (t!339628 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) lt!1466111))) Nil!44009)) (tag!7992 (h!49428 (t!339627 (Cons!44008 (h!49428 rTail!27) lt!1466111))))))))

(assert (= (and d!1217227 res!1676175) b!4099641))

(assert (= (and b!4099641 (not res!1676174)) b!4099642))

(declare-fun m!4706633 () Bool)

(assert (=> d!1217227 m!4706633))

(declare-fun m!4706635 () Bool)

(assert (=> d!1217227 m!4706635))

(declare-fun m!4706637 () Bool)

(assert (=> b!4099642 m!4706637))

(assert (=> b!4099343 d!1217227))

(assert (=> b!4099333 d!1217075))

(declare-fun b!4099643 () Bool)

(declare-fun res!1676179 () Bool)

(declare-fun e!2544160 () Bool)

(assert (=> b!4099643 (=> res!1676179 e!2544160)))

(declare-fun e!2544162 () Bool)

(assert (=> b!4099643 (= res!1676179 e!2544162)))

(declare-fun res!1676181 () Bool)

(assert (=> b!4099643 (=> (not res!1676181) (not e!2544162))))

(declare-fun lt!1466311 () Bool)

(assert (=> b!4099643 (= res!1676181 lt!1466311)))

(declare-fun d!1217229 () Bool)

(declare-fun e!2544163 () Bool)

(assert (=> d!1217229 e!2544163))

(declare-fun c!706317 () Bool)

(assert (=> d!1217229 (= c!706317 ((_ is EmptyExpr!12037) (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun e!2544161 () Bool)

(assert (=> d!1217229 (= lt!1466311 e!2544161)))

(declare-fun c!706319 () Bool)

(assert (=> d!1217229 (= c!706319 (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(assert (=> d!1217229 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27))))))

(assert (=> d!1217229 (= (matchR!5968 (regex!7132 (h!49428 (t!339627 rTail!27))) (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))) lt!1466311)))

(declare-fun b!4099644 () Bool)

(declare-fun res!1676176 () Bool)

(assert (=> b!4099644 (=> (not res!1676176) (not e!2544162))))

(assert (=> b!4099644 (= res!1676176 (isEmpty!26327 (tail!6398 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491))))))))

(declare-fun b!4099645 () Bool)

(declare-fun e!2544166 () Bool)

(declare-fun e!2544164 () Bool)

(assert (=> b!4099645 (= e!2544166 e!2544164)))

(declare-fun res!1676182 () Bool)

(assert (=> b!4099645 (=> res!1676182 e!2544164)))

(declare-fun call!289671 () Bool)

(assert (=> b!4099645 (= res!1676182 call!289671)))

(declare-fun b!4099646 () Bool)

(assert (=> b!4099646 (= e!2544161 (nullable!4253 (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun b!4099647 () Bool)

(declare-fun res!1676177 () Bool)

(assert (=> b!4099647 (=> (not res!1676177) (not e!2544162))))

(assert (=> b!4099647 (= res!1676177 (not call!289671))))

(declare-fun b!4099648 () Bool)

(assert (=> b!4099648 (= e!2544164 (not (= (head!8664 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))) (c!706230 (regex!7132 (h!49428 (t!339627 rTail!27)))))))))

(declare-fun b!4099649 () Bool)

(assert (=> b!4099649 (= e!2544161 (matchR!5968 (derivativeStep!3654 (regex!7132 (h!49428 (t!339627 rTail!27))) (head!8664 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491))))) (tail!6398 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491))))))))

(declare-fun b!4099650 () Bool)

(assert (=> b!4099650 (= e!2544163 (= lt!1466311 call!289671))))

(declare-fun b!4099651 () Bool)

(declare-fun res!1676178 () Bool)

(assert (=> b!4099651 (=> res!1676178 e!2544160)))

(assert (=> b!4099651 (= res!1676178 (not ((_ is ElementMatch!12037) (regex!7132 (h!49428 (t!339627 rTail!27))))))))

(declare-fun e!2544165 () Bool)

(assert (=> b!4099651 (= e!2544165 e!2544160)))

(declare-fun b!4099652 () Bool)

(assert (=> b!4099652 (= e!2544160 e!2544166)))

(declare-fun res!1676180 () Bool)

(assert (=> b!4099652 (=> (not res!1676180) (not e!2544166))))

(assert (=> b!4099652 (= res!1676180 (not lt!1466311))))

(declare-fun bm!289666 () Bool)

(assert (=> bm!289666 (= call!289671 (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(declare-fun b!4099653 () Bool)

(assert (=> b!4099653 (= e!2544163 e!2544165)))

(declare-fun c!706318 () Bool)

(assert (=> b!4099653 (= c!706318 ((_ is EmptyLang!12037) (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun b!4099654 () Bool)

(assert (=> b!4099654 (= e!2544162 (= (head!8664 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))) (c!706230 (regex!7132 (h!49428 (t!339627 rTail!27))))))))

(declare-fun b!4099655 () Bool)

(declare-fun res!1676183 () Bool)

(assert (=> b!4099655 (=> res!1676183 e!2544164)))

(assert (=> b!4099655 (= res!1676183 (not (isEmpty!26327 (tail!6398 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))))

(declare-fun b!4099656 () Bool)

(assert (=> b!4099656 (= e!2544165 (not lt!1466311))))

(assert (= (and d!1217229 c!706319) b!4099646))

(assert (= (and d!1217229 (not c!706319)) b!4099649))

(assert (= (and d!1217229 c!706317) b!4099650))

(assert (= (and d!1217229 (not c!706317)) b!4099653))

(assert (= (and b!4099653 c!706318) b!4099656))

(assert (= (and b!4099653 (not c!706318)) b!4099651))

(assert (= (and b!4099651 (not res!1676178)) b!4099643))

(assert (= (and b!4099643 res!1676181) b!4099647))

(assert (= (and b!4099647 res!1676177) b!4099644))

(assert (= (and b!4099644 res!1676176) b!4099654))

(assert (= (and b!4099643 (not res!1676179)) b!4099652))

(assert (= (and b!4099652 res!1676180) b!4099645))

(assert (= (and b!4099645 (not res!1676182)) b!4099655))

(assert (= (and b!4099655 (not res!1676183)) b!4099648))

(assert (= (or b!4099650 b!4099645 b!4099647) bm!289666))

(declare-fun m!4706639 () Bool)

(assert (=> b!4099644 m!4706639))

(assert (=> b!4099644 m!4706639))

(declare-fun m!4706641 () Bool)

(assert (=> b!4099644 m!4706641))

(declare-fun m!4706643 () Bool)

(assert (=> b!4099654 m!4706643))

(assert (=> b!4099648 m!4706643))

(assert (=> bm!289666 m!4706143))

(assert (=> b!4099646 m!4706471))

(assert (=> b!4099655 m!4706639))

(assert (=> b!4099655 m!4706639))

(assert (=> b!4099655 m!4706641))

(assert (=> b!4099649 m!4706643))

(assert (=> b!4099649 m!4706643))

(declare-fun m!4706645 () Bool)

(assert (=> b!4099649 m!4706645))

(assert (=> b!4099649 m!4706639))

(assert (=> b!4099649 m!4706645))

(assert (=> b!4099649 m!4706639))

(declare-fun m!4706647 () Bool)

(assert (=> b!4099649 m!4706647))

(assert (=> d!1217229 m!4706143))

(assert (=> d!1217229 m!4706469))

(assert (=> b!4099272 d!1217229))

(declare-fun b!4099771 () Bool)

(declare-fun e!2544244 () tuple2!42892)

(assert (=> b!4099771 (= e!2544244 (tuple2!42893 Nil!44006 Nil!44006))))

(declare-fun b!4099772 () Bool)

(declare-fun e!2544239 () tuple2!42892)

(assert (=> b!4099772 (= e!2544239 (tuple2!42893 Nil!44006 input!3491))))

(declare-fun b!4099773 () Bool)

(declare-fun e!2544245 () Bool)

(declare-fun e!2544238 () Bool)

(assert (=> b!4099773 (= e!2544245 e!2544238)))

(declare-fun res!1676215 () Bool)

(assert (=> b!4099773 (=> res!1676215 e!2544238)))

(declare-fun lt!1466477 () tuple2!42892)

(assert (=> b!4099773 (= res!1676215 (isEmpty!26327 (_1!24580 lt!1466477)))))

(declare-fun bm!289709 () Bool)

(declare-fun call!289718 () Bool)

(assert (=> bm!289709 (= call!289718 (isPrefix!4157 input!3491 input!3491))))

(declare-fun b!4099774 () Bool)

(declare-fun e!2544240 () tuple2!42892)

(declare-fun e!2544241 () tuple2!42892)

(assert (=> b!4099774 (= e!2544240 e!2544241)))

(declare-fun lt!1466479 () tuple2!42892)

(declare-fun call!289715 () tuple2!42892)

(assert (=> b!4099774 (= lt!1466479 call!289715)))

(declare-fun c!706362 () Bool)

(assert (=> b!4099774 (= c!706362 (isEmpty!26327 (_1!24580 lt!1466479)))))

(declare-fun call!289719 () List!44130)

(declare-fun call!289720 () Regex!12037)

(declare-fun bm!289710 () Bool)

(declare-fun lt!1466485 () List!44130)

(assert (=> bm!289710 (= call!289715 (findLongestMatchInner!1476 call!289720 lt!1466485 (+ (size!32849 Nil!44006) 1) call!289719 input!3491 (size!32849 input!3491)))))

(declare-fun b!4099775 () Bool)

(assert (=> b!4099775 (= e!2544238 (>= (size!32849 (_1!24580 lt!1466477)) (size!32849 Nil!44006)))))

(declare-fun b!4099776 () Bool)

(assert (=> b!4099776 (= e!2544240 call!289715)))

(declare-fun b!4099777 () Bool)

(assert (=> b!4099777 (= e!2544241 lt!1466479)))

(declare-fun bm!289711 () Bool)

(declare-fun call!289714 () C!24260)

(assert (=> bm!289711 (= call!289720 (derivativeStep!3654 (regex!7132 (h!49428 (t!339627 rTail!27))) call!289714))))

(declare-fun b!4099778 () Bool)

(declare-fun c!706360 () Bool)

(declare-fun call!289716 () Bool)

(assert (=> b!4099778 (= c!706360 call!289716)))

(declare-fun lt!1466471 () Unit!63531)

(declare-fun lt!1466469 () Unit!63531)

(assert (=> b!4099778 (= lt!1466471 lt!1466469)))

(declare-fun lt!1466489 () C!24260)

(declare-fun lt!1466470 () List!44130)

(assert (=> b!4099778 (= (++!11528 (++!11528 Nil!44006 (Cons!44006 lt!1466489 Nil!44006)) lt!1466470) input!3491)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1279 (List!44130 C!24260 List!44130 List!44130) Unit!63531)

(assert (=> b!4099778 (= lt!1466469 (lemmaMoveElementToOtherListKeepsConcatEq!1279 Nil!44006 lt!1466489 lt!1466470 input!3491))))

(assert (=> b!4099778 (= lt!1466470 (tail!6398 input!3491))))

(assert (=> b!4099778 (= lt!1466489 (head!8664 input!3491))))

(declare-fun lt!1466495 () Unit!63531)

(declare-fun lt!1466474 () Unit!63531)

(assert (=> b!4099778 (= lt!1466495 lt!1466474)))

(declare-fun getSuffix!2508 (List!44130 List!44130) List!44130)

(assert (=> b!4099778 (isPrefix!4157 (++!11528 Nil!44006 (Cons!44006 (head!8664 (getSuffix!2508 input!3491 Nil!44006)) Nil!44006)) input!3491)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!661 (List!44130 List!44130) Unit!63531)

(assert (=> b!4099778 (= lt!1466474 (lemmaAddHeadSuffixToPrefixStillPrefix!661 Nil!44006 input!3491))))

(declare-fun lt!1466476 () Unit!63531)

(declare-fun lt!1466493 () Unit!63531)

(assert (=> b!4099778 (= lt!1466476 lt!1466493)))

(assert (=> b!4099778 (= lt!1466493 (lemmaAddHeadSuffixToPrefixStillPrefix!661 Nil!44006 input!3491))))

(assert (=> b!4099778 (= lt!1466485 (++!11528 Nil!44006 (Cons!44006 (head!8664 input!3491) Nil!44006)))))

(declare-fun lt!1466482 () Unit!63531)

(declare-fun e!2544243 () Unit!63531)

(assert (=> b!4099778 (= lt!1466482 e!2544243)))

(declare-fun c!706361 () Bool)

(assert (=> b!4099778 (= c!706361 (= (size!32849 Nil!44006) (size!32849 input!3491)))))

(declare-fun lt!1466472 () Unit!63531)

(declare-fun lt!1466480 () Unit!63531)

(assert (=> b!4099778 (= lt!1466472 lt!1466480)))

(assert (=> b!4099778 (<= (size!32849 Nil!44006) (size!32849 input!3491))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!469 (List!44130 List!44130) Unit!63531)

(assert (=> b!4099778 (= lt!1466480 (lemmaIsPrefixThenSmallerEqSize!469 Nil!44006 input!3491))))

(declare-fun e!2544242 () tuple2!42892)

(assert (=> b!4099778 (= e!2544242 e!2544240)))

(declare-fun b!4099779 () Bool)

(declare-fun c!706364 () Bool)

(assert (=> b!4099779 (= c!706364 call!289716)))

(declare-fun lt!1466483 () Unit!63531)

(declare-fun lt!1466492 () Unit!63531)

(assert (=> b!4099779 (= lt!1466483 lt!1466492)))

(assert (=> b!4099779 (= input!3491 Nil!44006)))

(declare-fun call!289717 () Unit!63531)

(assert (=> b!4099779 (= lt!1466492 call!289717)))

(declare-fun lt!1466486 () Unit!63531)

(declare-fun lt!1466488 () Unit!63531)

(assert (=> b!4099779 (= lt!1466486 lt!1466488)))

(assert (=> b!4099779 call!289718))

(declare-fun call!289713 () Unit!63531)

(assert (=> b!4099779 (= lt!1466488 call!289713)))

(assert (=> b!4099779 (= e!2544242 e!2544244)))

(declare-fun bm!289712 () Bool)

(assert (=> bm!289712 (= call!289719 (tail!6398 input!3491))))

(declare-fun bm!289713 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!973 (List!44130 List!44130 List!44130) Unit!63531)

(assert (=> bm!289713 (= call!289717 (lemmaIsPrefixSameLengthThenSameList!973 input!3491 Nil!44006 input!3491))))

(declare-fun b!4099780 () Bool)

(declare-fun Unit!63536 () Unit!63531)

(assert (=> b!4099780 (= e!2544243 Unit!63536)))

(declare-fun lt!1466487 () Unit!63531)

(assert (=> b!4099780 (= lt!1466487 call!289713)))

(assert (=> b!4099780 call!289718))

(declare-fun lt!1466481 () Unit!63531)

(assert (=> b!4099780 (= lt!1466481 lt!1466487)))

(declare-fun lt!1466473 () Unit!63531)

(assert (=> b!4099780 (= lt!1466473 call!289717)))

(assert (=> b!4099780 (= input!3491 Nil!44006)))

(declare-fun lt!1466475 () Unit!63531)

(assert (=> b!4099780 (= lt!1466475 lt!1466473)))

(assert (=> b!4099780 false))

(declare-fun bm!289714 () Bool)

(assert (=> bm!289714 (= call!289714 (head!8664 input!3491))))

(declare-fun bm!289708 () Bool)

(assert (=> bm!289708 (= call!289716 (nullable!4253 (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun d!1217231 () Bool)

(assert (=> d!1217231 e!2544245))

(declare-fun res!1676216 () Bool)

(assert (=> d!1217231 (=> (not res!1676216) (not e!2544245))))

(assert (=> d!1217231 (= res!1676216 (= (++!11528 (_1!24580 lt!1466477) (_2!24580 lt!1466477)) input!3491))))

(assert (=> d!1217231 (= lt!1466477 e!2544239)))

(declare-fun c!706363 () Bool)

(declare-fun lostCause!1035 (Regex!12037) Bool)

(assert (=> d!1217231 (= c!706363 (lostCause!1035 (regex!7132 (h!49428 (t!339627 rTail!27)))))))

(declare-fun lt!1466494 () Unit!63531)

(declare-fun Unit!63537 () Unit!63531)

(assert (=> d!1217231 (= lt!1466494 Unit!63537)))

(assert (=> d!1217231 (= (getSuffix!2508 input!3491 Nil!44006) input!3491)))

(declare-fun lt!1466491 () Unit!63531)

(declare-fun lt!1466484 () Unit!63531)

(assert (=> d!1217231 (= lt!1466491 lt!1466484)))

(declare-fun lt!1466490 () List!44130)

(assert (=> d!1217231 (= input!3491 lt!1466490)))

(declare-fun lemmaSamePrefixThenSameSuffix!2252 (List!44130 List!44130 List!44130 List!44130 List!44130) Unit!63531)

(assert (=> d!1217231 (= lt!1466484 (lemmaSamePrefixThenSameSuffix!2252 Nil!44006 input!3491 Nil!44006 lt!1466490 input!3491))))

(assert (=> d!1217231 (= lt!1466490 (getSuffix!2508 input!3491 Nil!44006))))

(declare-fun lt!1466496 () Unit!63531)

(declare-fun lt!1466478 () Unit!63531)

(assert (=> d!1217231 (= lt!1466496 lt!1466478)))

(assert (=> d!1217231 (isPrefix!4157 Nil!44006 (++!11528 Nil!44006 input!3491))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2926 (List!44130 List!44130) Unit!63531)

(assert (=> d!1217231 (= lt!1466478 (lemmaConcatTwoListThenFirstIsPrefix!2926 Nil!44006 input!3491))))

(assert (=> d!1217231 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27))))))

(assert (=> d!1217231 (= (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)) lt!1466477)))

(declare-fun b!4099781 () Bool)

(assert (=> b!4099781 (= e!2544239 e!2544242)))

(declare-fun c!706365 () Bool)

(assert (=> b!4099781 (= c!706365 (= (size!32849 Nil!44006) (size!32849 input!3491)))))

(declare-fun bm!289715 () Bool)

(assert (=> bm!289715 (= call!289713 (lemmaIsPrefixRefl!2708 input!3491 input!3491))))

(declare-fun b!4099782 () Bool)

(assert (=> b!4099782 (= e!2544244 (tuple2!42893 Nil!44006 input!3491))))

(declare-fun b!4099783 () Bool)

(declare-fun Unit!63538 () Unit!63531)

(assert (=> b!4099783 (= e!2544243 Unit!63538)))

(declare-fun b!4099784 () Bool)

(assert (=> b!4099784 (= e!2544241 (tuple2!42893 Nil!44006 input!3491))))

(assert (= (and d!1217231 c!706363) b!4099772))

(assert (= (and d!1217231 (not c!706363)) b!4099781))

(assert (= (and b!4099781 c!706365) b!4099779))

(assert (= (and b!4099781 (not c!706365)) b!4099778))

(assert (= (and b!4099779 c!706364) b!4099771))

(assert (= (and b!4099779 (not c!706364)) b!4099782))

(assert (= (and b!4099778 c!706361) b!4099780))

(assert (= (and b!4099778 (not c!706361)) b!4099783))

(assert (= (and b!4099778 c!706360) b!4099774))

(assert (= (and b!4099778 (not c!706360)) b!4099776))

(assert (= (and b!4099774 c!706362) b!4099784))

(assert (= (and b!4099774 (not c!706362)) b!4099777))

(assert (= (or b!4099774 b!4099776) bm!289712))

(assert (= (or b!4099774 b!4099776) bm!289714))

(assert (= (or b!4099774 b!4099776) bm!289711))

(assert (= (or b!4099774 b!4099776) bm!289710))

(assert (= (or b!4099779 b!4099780) bm!289709))

(assert (= (or b!4099779 b!4099778) bm!289708))

(assert (= (or b!4099779 b!4099780) bm!289713))

(assert (= (or b!4099779 b!4099780) bm!289715))

(assert (= (and d!1217231 res!1676216) b!4099773))

(assert (= (and b!4099773 (not res!1676215)) b!4099775))

(declare-fun m!4706781 () Bool)

(assert (=> b!4099778 m!4706781))

(declare-fun m!4706783 () Bool)

(assert (=> b!4099778 m!4706783))

(declare-fun m!4706785 () Bool)

(assert (=> b!4099778 m!4706785))

(assert (=> b!4099778 m!4705875))

(assert (=> b!4099778 m!4706781))

(declare-fun m!4706787 () Bool)

(assert (=> b!4099778 m!4706787))

(assert (=> b!4099778 m!4706145))

(declare-fun m!4706789 () Bool)

(assert (=> b!4099778 m!4706789))

(declare-fun m!4706791 () Bool)

(assert (=> b!4099778 m!4706791))

(assert (=> b!4099778 m!4706253))

(assert (=> b!4099778 m!4706789))

(declare-fun m!4706793 () Bool)

(assert (=> b!4099778 m!4706793))

(declare-fun m!4706795 () Bool)

(assert (=> b!4099778 m!4706795))

(assert (=> b!4099778 m!4706793))

(declare-fun m!4706797 () Bool)

(assert (=> b!4099778 m!4706797))

(assert (=> b!4099778 m!4706255))

(declare-fun m!4706799 () Bool)

(assert (=> b!4099778 m!4706799))

(declare-fun m!4706803 () Bool)

(assert (=> b!4099774 m!4706803))

(assert (=> d!1217231 m!4706781))

(declare-fun m!4706807 () Bool)

(assert (=> d!1217231 m!4706807))

(declare-fun m!4706811 () Bool)

(assert (=> d!1217231 m!4706811))

(declare-fun m!4706813 () Bool)

(assert (=> d!1217231 m!4706813))

(assert (=> d!1217231 m!4706813))

(declare-fun m!4706817 () Bool)

(assert (=> d!1217231 m!4706817))

(assert (=> d!1217231 m!4706469))

(declare-fun m!4706823 () Bool)

(assert (=> d!1217231 m!4706823))

(declare-fun m!4706825 () Bool)

(assert (=> d!1217231 m!4706825))

(declare-fun m!4706827 () Bool)

(assert (=> bm!289713 m!4706827))

(declare-fun m!4706829 () Bool)

(assert (=> b!4099773 m!4706829))

(assert (=> bm!289708 m!4706471))

(assert (=> bm!289710 m!4705875))

(declare-fun m!4706833 () Bool)

(assert (=> bm!289710 m!4706833))

(declare-fun m!4706835 () Bool)

(assert (=> b!4099775 m!4706835))

(assert (=> b!4099775 m!4706145))

(assert (=> bm!289709 m!4705883))

(assert (=> bm!289712 m!4706255))

(assert (=> bm!289714 m!4706253))

(declare-fun m!4706837 () Bool)

(assert (=> bm!289711 m!4706837))

(assert (=> bm!289715 m!4705885))

(assert (=> b!4099272 d!1217231))

(declare-fun d!1217275 () Bool)

(declare-fun lt!1466500 () Int)

(assert (=> d!1217275 (>= lt!1466500 0)))

(declare-fun e!2544254 () Int)

(assert (=> d!1217275 (= lt!1466500 e!2544254)))

(declare-fun c!706367 () Bool)

(assert (=> d!1217275 (= c!706367 ((_ is Nil!44006) Nil!44006))))

(assert (=> d!1217275 (= (size!32849 Nil!44006) lt!1466500)))

(declare-fun b!4099796 () Bool)

(assert (=> b!4099796 (= e!2544254 0)))

(declare-fun b!4099797 () Bool)

(assert (=> b!4099797 (= e!2544254 (+ 1 (size!32849 (t!339625 Nil!44006))))))

(assert (= (and d!1217275 c!706367) b!4099796))

(assert (= (and d!1217275 (not c!706367)) b!4099797))

(declare-fun m!4706841 () Bool)

(assert (=> b!4099797 m!4706841))

(assert (=> b!4099272 d!1217275))

(assert (=> b!4099272 d!1217075))

(assert (=> d!1217071 d!1217117))

(declare-fun b!4099798 () Bool)

(declare-fun e!2544255 () Bool)

(declare-fun e!2544256 () Bool)

(assert (=> b!4099798 (= e!2544255 e!2544256)))

(declare-fun c!706368 () Bool)

(assert (=> b!4099798 (= c!706368 ((_ is Union!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099799 () Bool)

(declare-fun e!2544261 () Bool)

(declare-fun call!289721 () Bool)

(assert (=> b!4099799 (= e!2544261 call!289721)))

(declare-fun bm!289716 () Bool)

(declare-fun call!289723 () Bool)

(declare-fun c!706369 () Bool)

(assert (=> bm!289716 (= call!289723 (validRegex!5453 (ite c!706369 (reg!12366 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (ite c!706368 (regOne!24587 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (regOne!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))))

(declare-fun bm!289717 () Bool)

(assert (=> bm!289717 (= call!289721 (validRegex!5453 (ite c!706368 (regTwo!24587 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (regTwo!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4099800 () Bool)

(declare-fun res!1676226 () Bool)

(declare-fun e!2544260 () Bool)

(assert (=> b!4099800 (=> res!1676226 e!2544260)))

(assert (=> b!4099800 (= res!1676226 (not ((_ is Concat!19399) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> b!4099800 (= e!2544256 e!2544260)))

(declare-fun b!4099801 () Bool)

(declare-fun e!2544259 () Bool)

(assert (=> b!4099801 (= e!2544255 e!2544259)))

(declare-fun res!1676227 () Bool)

(assert (=> b!4099801 (= res!1676227 (not (nullable!4253 (reg!12366 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (=> b!4099801 (=> (not res!1676227) (not e!2544259))))

(declare-fun bm!289718 () Bool)

(declare-fun call!289722 () Bool)

(assert (=> bm!289718 (= call!289722 call!289723)))

(declare-fun b!4099802 () Bool)

(declare-fun res!1676225 () Bool)

(assert (=> b!4099802 (=> (not res!1676225) (not e!2544261))))

(assert (=> b!4099802 (= res!1676225 call!289722)))

(assert (=> b!4099802 (= e!2544256 e!2544261)))

(declare-fun d!1217277 () Bool)

(declare-fun res!1676229 () Bool)

(declare-fun e!2544257 () Bool)

(assert (=> d!1217277 (=> res!1676229 e!2544257)))

(assert (=> d!1217277 (= res!1676229 ((_ is ElementMatch!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217277 (= (validRegex!5453 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) e!2544257)))

(declare-fun b!4099803 () Bool)

(declare-fun e!2544258 () Bool)

(assert (=> b!4099803 (= e!2544258 call!289721)))

(declare-fun b!4099804 () Bool)

(assert (=> b!4099804 (= e!2544260 e!2544258)))

(declare-fun res!1676228 () Bool)

(assert (=> b!4099804 (=> (not res!1676228) (not e!2544258))))

(assert (=> b!4099804 (= res!1676228 call!289722)))

(declare-fun b!4099805 () Bool)

(assert (=> b!4099805 (= e!2544257 e!2544255)))

(assert (=> b!4099805 (= c!706369 ((_ is Star!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4099806 () Bool)

(assert (=> b!4099806 (= e!2544259 call!289723)))

(assert (= (and d!1217277 (not res!1676229)) b!4099805))

(assert (= (and b!4099805 c!706369) b!4099801))

(assert (= (and b!4099805 (not c!706369)) b!4099798))

(assert (= (and b!4099801 res!1676227) b!4099806))

(assert (= (and b!4099798 c!706368) b!4099802))

(assert (= (and b!4099798 (not c!706368)) b!4099800))

(assert (= (and b!4099802 res!1676225) b!4099799))

(assert (= (and b!4099800 (not res!1676226)) b!4099804))

(assert (= (and b!4099804 res!1676228) b!4099803))

(assert (= (or b!4099799 b!4099803) bm!289717))

(assert (= (or b!4099802 b!4099804) bm!289718))

(assert (= (or b!4099806 bm!289718) bm!289716))

(declare-fun m!4706849 () Bool)

(assert (=> bm!289716 m!4706849))

(declare-fun m!4706851 () Bool)

(assert (=> bm!289717 m!4706851))

(declare-fun m!4706853 () Bool)

(assert (=> b!4099801 m!4706853))

(assert (=> d!1217071 d!1217277))

(declare-fun d!1217283 () Bool)

(assert (=> d!1217283 (= (Forall2!1122 lambda!128208) (choose!25051 lambda!128208))))

(declare-fun bs!593786 () Bool)

(assert (= bs!593786 d!1217283))

(declare-fun m!4706855 () Bool)

(assert (=> bs!593786 m!4706855))

(assert (=> d!1217029 d!1217283))

(assert (=> b!4099399 d!1217195))

(assert (=> b!4099399 d!1217197))

(declare-fun d!1217285 () Bool)

(declare-fun lt!1466501 () Bool)

(assert (=> d!1217285 (= lt!1466501 (select (content!6793 (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)) (tag!7992 (h!49428 (t!339627 lt!1466111)))))))

(declare-fun e!2544262 () Bool)

(assert (=> d!1217285 (= lt!1466501 e!2544262)))

(declare-fun res!1676231 () Bool)

(assert (=> d!1217285 (=> (not res!1676231) (not e!2544262))))

(assert (=> d!1217285 (= res!1676231 ((_ is Cons!44009) (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)))))

(assert (=> d!1217285 (= (contains!8813 (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009) (tag!7992 (h!49428 (t!339627 lt!1466111)))) lt!1466501)))

(declare-fun b!4099807 () Bool)

(declare-fun e!2544263 () Bool)

(assert (=> b!4099807 (= e!2544262 e!2544263)))

(declare-fun res!1676230 () Bool)

(assert (=> b!4099807 (=> res!1676230 e!2544263)))

(assert (=> b!4099807 (= res!1676230 (= (h!49429 (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)) (tag!7992 (h!49428 (t!339627 lt!1466111)))))))

(declare-fun b!4099808 () Bool)

(assert (=> b!4099808 (= e!2544263 (contains!8813 (t!339628 (Cons!44009 (tag!7992 (h!49428 lt!1466111)) Nil!44009)) (tag!7992 (h!49428 (t!339627 lt!1466111)))))))

(assert (= (and d!1217285 res!1676231) b!4099807))

(assert (= (and b!4099807 (not res!1676230)) b!4099808))

(declare-fun m!4706859 () Bool)

(assert (=> d!1217285 m!4706859))

(declare-fun m!4706861 () Bool)

(assert (=> d!1217285 m!4706861))

(declare-fun m!4706863 () Bool)

(assert (=> b!4099808 m!4706863))

(assert (=> b!4099341 d!1217285))

(declare-fun d!1217289 () Bool)

(assert (=> d!1217289 (= (apply!10305 (transformation!7132 (h!49428 (t!339627 rTail!27))) (seqFromList!5339 (_1!24580 lt!1466240))) (dynLambda!18871 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466240))))))

(declare-fun b_lambda!120467 () Bool)

(assert (=> (not b_lambda!120467) (not d!1217289)))

(declare-fun tb!246817 () Bool)

(declare-fun t!339727 () Bool)

(assert (=> (and b!4098834 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339727) tb!246817))

(declare-fun result!299502 () Bool)

(assert (=> tb!246817 (= result!299502 (inv!21 (dynLambda!18871 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466240)))))))

(declare-fun m!4706871 () Bool)

(assert (=> tb!246817 m!4706871))

(assert (=> d!1217289 t!339727))

(declare-fun b_and!316559 () Bool)

(assert (= b_and!316503 (and (=> t!339727 result!299502) b_and!316559)))

(declare-fun t!339729 () Bool)

(declare-fun tb!246819 () Bool)

(assert (=> (and b!4098827 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339729) tb!246819))

(declare-fun result!299504 () Bool)

(assert (= result!299504 result!299502))

(assert (=> d!1217289 t!339729))

(declare-fun b_and!316561 () Bool)

(assert (= b_and!316505 (and (=> t!339729 result!299504) b_and!316561)))

(declare-fun t!339733 () Bool)

(declare-fun tb!246823 () Bool)

(assert (=> (and b!4099007 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339733) tb!246823))

(declare-fun result!299508 () Bool)

(assert (= result!299508 result!299502))

(assert (=> d!1217289 t!339733))

(declare-fun b_and!316563 () Bool)

(assert (= b_and!316507 (and (=> t!339733 result!299508) b_and!316563)))

(declare-fun t!339735 () Bool)

(declare-fun tb!246825 () Bool)

(assert (=> (and b!4099466 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339735) tb!246825))

(declare-fun result!299510 () Bool)

(assert (= result!299510 result!299502))

(assert (=> d!1217289 t!339735))

(declare-fun b_and!316567 () Bool)

(assert (= b_and!316509 (and (=> t!339735 result!299510) b_and!316567)))

(assert (=> d!1217289 m!4706139))

(declare-fun m!4706875 () Bool)

(assert (=> d!1217289 m!4706875))

(assert (=> b!4099268 d!1217289))

(declare-fun d!1217293 () Bool)

(declare-fun lt!1466507 () Int)

(assert (=> d!1217293 (= lt!1466507 (size!32849 (list!16308 (seqFromList!5339 (_1!24580 lt!1466240)))))))

(declare-fun size!32853 (Conc!13343) Int)

(assert (=> d!1217293 (= lt!1466507 (size!32853 (c!706231 (seqFromList!5339 (_1!24580 lt!1466240)))))))

(assert (=> d!1217293 (= (size!32851 (seqFromList!5339 (_1!24580 lt!1466240))) lt!1466507)))

(declare-fun bs!593791 () Bool)

(assert (= bs!593791 d!1217293))

(assert (=> bs!593791 m!4706139))

(declare-fun m!4706885 () Bool)

(assert (=> bs!593791 m!4706885))

(assert (=> bs!593791 m!4706885))

(declare-fun m!4706887 () Bool)

(assert (=> bs!593791 m!4706887))

(declare-fun m!4706889 () Bool)

(assert (=> bs!593791 m!4706889))

(assert (=> b!4099268 d!1217293))

(assert (=> b!4099268 d!1217075))

(declare-fun d!1217301 () Bool)

(assert (=> d!1217301 (= (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))) ((_ is Nil!44006) (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(assert (=> b!4099268 d!1217301))

(assert (=> b!4099268 d!1217275))

(assert (=> b!4099268 d!1217231))

(declare-fun d!1217303 () Bool)

(assert (=> d!1217303 (= (seqFromList!5339 (_1!24580 lt!1466240)) (fromListB!2450 (_1!24580 lt!1466240)))))

(declare-fun bs!593792 () Bool)

(assert (= bs!593792 d!1217303))

(declare-fun m!4706897 () Bool)

(assert (=> bs!593792 m!4706897))

(assert (=> b!4099268 d!1217303))

(declare-fun d!1217305 () Bool)

(declare-fun e!2544289 () Bool)

(assert (=> d!1217305 e!2544289))

(declare-fun res!1676246 () Bool)

(assert (=> d!1217305 (=> res!1676246 e!2544289)))

(assert (=> d!1217305 (= res!1676246 (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(declare-fun lt!1466512 () Unit!63531)

(declare-fun choose!25054 (Regex!12037 List!44130) Unit!63531)

(assert (=> d!1217305 (= lt!1466512 (choose!25054 (regex!7132 (h!49428 (t!339627 rTail!27))) input!3491))))

(assert (=> d!1217305 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27))))))

(assert (=> d!1217305 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1449 (regex!7132 (h!49428 (t!339627 rTail!27))) input!3491) lt!1466512)))

(declare-fun b!4099849 () Bool)

(assert (=> b!4099849 (= e!2544289 (matchR!5968 (regex!7132 (h!49428 (t!339627 rTail!27))) (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(assert (= (and d!1217305 (not res!1676246)) b!4099849))

(assert (=> d!1217305 m!4706145))

(assert (=> d!1217305 m!4705875))

(assert (=> d!1217305 m!4706147))

(assert (=> d!1217305 m!4706143))

(assert (=> d!1217305 m!4706469))

(assert (=> d!1217305 m!4705875))

(assert (=> d!1217305 m!4706145))

(declare-fun m!4706907 () Bool)

(assert (=> d!1217305 m!4706907))

(assert (=> b!4099849 m!4706145))

(assert (=> b!4099849 m!4705875))

(assert (=> b!4099849 m!4706145))

(assert (=> b!4099849 m!4705875))

(assert (=> b!4099849 m!4706147))

(assert (=> b!4099849 m!4706169))

(assert (=> b!4099268 d!1217305))

(declare-fun bs!593793 () Bool)

(declare-fun d!1217309 () Bool)

(assert (= bs!593793 (and d!1217309 d!1217011)))

(declare-fun lambda!128222 () Int)

(assert (=> bs!593793 (= (and (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 rHead!24))) (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 rHead!24)))) (= lambda!128222 lambda!128207))))

(declare-fun bs!593794 () Bool)

(assert (= bs!593794 (and d!1217309 d!1217057)))

(assert (=> bs!593794 (= (and (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (h!49428 rTail!27)))) (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 rTail!27))))) (= lambda!128222 lambda!128210))))

(declare-fun b!4099870 () Bool)

(declare-fun e!2544300 () Bool)

(assert (=> b!4099870 (= e!2544300 true)))

(assert (=> d!1217309 e!2544300))

(assert (= d!1217309 b!4099870))

(assert (=> b!4099870 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (dynLambda!18865 order!23197 lambda!128222))))

(assert (=> b!4099870 (< (dynLambda!18864 order!23195 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (dynLambda!18865 order!23197 lambda!128222))))

(assert (=> d!1217309 (= (list!16308 (dynLambda!18866 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (dynLambda!18871 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466240))))) (list!16308 (seqFromList!5339 (_1!24580 lt!1466240))))))

(declare-fun lt!1466517 () Unit!63531)

(declare-fun ForallOf!903 (Int BalanceConc!26280) Unit!63531)

(assert (=> d!1217309 (= lt!1466517 (ForallOf!903 lambda!128222 (seqFromList!5339 (_1!24580 lt!1466240))))))

(assert (=> d!1217309 (= (lemmaSemiInverse!2089 (transformation!7132 (h!49428 (t!339627 rTail!27))) (seqFromList!5339 (_1!24580 lt!1466240))) lt!1466517)))

(declare-fun b_lambda!120471 () Bool)

(assert (=> (not b_lambda!120471) (not d!1217309)))

(declare-fun t!339743 () Bool)

(declare-fun tb!246833 () Bool)

(assert (=> (and b!4098834 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339743) tb!246833))

(declare-fun b!4099871 () Bool)

(declare-fun tp!1240952 () Bool)

(declare-fun e!2544301 () Bool)

(assert (=> b!4099871 (= e!2544301 (and (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (dynLambda!18871 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466240)))))) tp!1240952))))

(declare-fun result!299518 () Bool)

(assert (=> tb!246833 (= result!299518 (and (inv!58729 (dynLambda!18866 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (dynLambda!18871 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466240))))) e!2544301))))

(assert (= tb!246833 b!4099871))

(declare-fun m!4706929 () Bool)

(assert (=> b!4099871 m!4706929))

(declare-fun m!4706931 () Bool)

(assert (=> tb!246833 m!4706931))

(assert (=> d!1217309 t!339743))

(declare-fun b_and!316575 () Bool)

(assert (= b_and!316511 (and (=> t!339743 result!299518) b_and!316575)))

(declare-fun t!339745 () Bool)

(declare-fun tb!246835 () Bool)

(assert (=> (and b!4098827 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339745) tb!246835))

(declare-fun result!299520 () Bool)

(assert (= result!299520 result!299518))

(assert (=> d!1217309 t!339745))

(declare-fun b_and!316577 () Bool)

(assert (= b_and!316513 (and (=> t!339745 result!299520) b_and!316577)))

(declare-fun t!339747 () Bool)

(declare-fun tb!246837 () Bool)

(assert (=> (and b!4099007 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339747) tb!246837))

(declare-fun result!299522 () Bool)

(assert (= result!299522 result!299518))

(assert (=> d!1217309 t!339747))

(declare-fun b_and!316579 () Bool)

(assert (= b_and!316515 (and (=> t!339747 result!299522) b_and!316579)))

(declare-fun t!339749 () Bool)

(declare-fun tb!246839 () Bool)

(assert (=> (and b!4099466 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339749) tb!246839))

(declare-fun result!299524 () Bool)

(assert (= result!299524 result!299518))

(assert (=> d!1217309 t!339749))

(declare-fun b_and!316581 () Bool)

(assert (= b_and!316517 (and (=> t!339749 result!299524) b_and!316581)))

(declare-fun b_lambda!120473 () Bool)

(assert (=> (not b_lambda!120473) (not d!1217309)))

(assert (=> d!1217309 t!339727))

(declare-fun b_and!316583 () Bool)

(assert (= b_and!316559 (and (=> t!339727 result!299502) b_and!316583)))

(assert (=> d!1217309 t!339729))

(declare-fun b_and!316585 () Bool)

(assert (= b_and!316561 (and (=> t!339729 result!299504) b_and!316585)))

(assert (=> d!1217309 t!339733))

(declare-fun b_and!316587 () Bool)

(assert (= b_and!316563 (and (=> t!339733 result!299508) b_and!316587)))

(assert (=> d!1217309 t!339735))

(declare-fun b_and!316589 () Bool)

(assert (= b_and!316567 (and (=> t!339735 result!299510) b_and!316589)))

(assert (=> d!1217309 m!4706139))

(assert (=> d!1217309 m!4706875))

(assert (=> d!1217309 m!4706139))

(assert (=> d!1217309 m!4706885))

(declare-fun m!4706933 () Bool)

(assert (=> d!1217309 m!4706933))

(declare-fun m!4706935 () Bool)

(assert (=> d!1217309 m!4706935))

(assert (=> d!1217309 m!4706875))

(assert (=> d!1217309 m!4706933))

(assert (=> d!1217309 m!4706139))

(declare-fun m!4706937 () Bool)

(assert (=> d!1217309 m!4706937))

(assert (=> b!4099268 d!1217309))

(declare-fun d!1217321 () Bool)

(assert (=> d!1217321 (= (nullable!4253 (regex!7132 (h!49428 rTail!27))) (nullableFct!1193 (regex!7132 (h!49428 rTail!27))))))

(declare-fun bs!593795 () Bool)

(assert (= bs!593795 d!1217321))

(declare-fun m!4706939 () Bool)

(assert (=> bs!593795 m!4706939))

(assert (=> b!4099306 d!1217321))

(declare-fun d!1217323 () Bool)

(assert (=> d!1217323 (= (inv!58729 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))) (isBalanced!3712 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun bs!593796 () Bool)

(assert (= bs!593796 d!1217323))

(declare-fun m!4706941 () Bool)

(assert (=> bs!593796 m!4706941))

(assert (=> tb!246737 d!1217323))

(declare-fun d!1217325 () Bool)

(declare-fun lt!1466518 () Bool)

(assert (=> d!1217325 (= lt!1466518 (select (content!6792 (t!339627 lt!1466109)) rHead!24))))

(declare-fun e!2544317 () Bool)

(assert (=> d!1217325 (= lt!1466518 e!2544317)))

(declare-fun res!1676261 () Bool)

(assert (=> d!1217325 (=> (not res!1676261) (not e!2544317))))

(assert (=> d!1217325 (= res!1676261 ((_ is Cons!44008) (t!339627 lt!1466109)))))

(assert (=> d!1217325 (= (contains!8812 (t!339627 lt!1466109) rHead!24) lt!1466518)))

(declare-fun b!4099890 () Bool)

(declare-fun e!2544316 () Bool)

(assert (=> b!4099890 (= e!2544317 e!2544316)))

(declare-fun res!1676262 () Bool)

(assert (=> b!4099890 (=> res!1676262 e!2544316)))

(assert (=> b!4099890 (= res!1676262 (= (h!49428 (t!339627 lt!1466109)) rHead!24))))

(declare-fun b!4099891 () Bool)

(assert (=> b!4099891 (= e!2544316 (contains!8812 (t!339627 (t!339627 lt!1466109)) rHead!24))))

(assert (= (and d!1217325 res!1676261) b!4099890))

(assert (= (and b!4099890 (not res!1676262)) b!4099891))

(assert (=> d!1217325 m!4706597))

(declare-fun m!4706943 () Bool)

(assert (=> d!1217325 m!4706943))

(declare-fun m!4706945 () Bool)

(assert (=> b!4099891 m!4706945))

(assert (=> b!4099300 d!1217325))

(declare-fun d!1217327 () Bool)

(declare-fun res!1676263 () Bool)

(declare-fun e!2544318 () Bool)

(assert (=> d!1217327 (=> res!1676263 e!2544318)))

(assert (=> d!1217327 (= res!1676263 ((_ is Nil!44008) (t!339627 rTail!27)))))

(assert (=> d!1217327 (= (forall!8420 (t!339627 rTail!27) lambda!128185) e!2544318)))

(declare-fun b!4099892 () Bool)

(declare-fun e!2544319 () Bool)

(assert (=> b!4099892 (= e!2544318 e!2544319)))

(declare-fun res!1676264 () Bool)

(assert (=> b!4099892 (=> (not res!1676264) (not e!2544319))))

(assert (=> b!4099892 (= res!1676264 (dynLambda!18870 lambda!128185 (h!49428 (t!339627 rTail!27))))))

(declare-fun b!4099893 () Bool)

(assert (=> b!4099893 (= e!2544319 (forall!8420 (t!339627 (t!339627 rTail!27)) lambda!128185))))

(assert (= (and d!1217327 (not res!1676263)) b!4099892))

(assert (= (and b!4099892 res!1676264) b!4099893))

(declare-fun b_lambda!120475 () Bool)

(assert (=> (not b_lambda!120475) (not b!4099892)))

(declare-fun m!4706947 () Bool)

(assert (=> b!4099892 m!4706947))

(declare-fun m!4706949 () Bool)

(assert (=> b!4099893 m!4706949))

(assert (=> b!4099319 d!1217327))

(declare-fun bs!593797 () Bool)

(declare-fun d!1217329 () Bool)

(assert (= bs!593797 (and d!1217329 d!1217127)))

(declare-fun lambda!128223 () Int)

(assert (=> bs!593797 (= lambda!128223 lambda!128213)))

(declare-fun bs!593798 () Bool)

(assert (= bs!593798 (and d!1217329 d!1217213)))

(assert (=> bs!593798 (= lambda!128223 lambda!128215)))

(declare-fun bs!593799 () Bool)

(assert (= bs!593799 (and d!1217329 d!1217065)))

(assert (=> bs!593799 (= lambda!128223 lambda!128211)))

(declare-fun bs!593800 () Bool)

(assert (= bs!593800 (and d!1217329 d!1216955)))

(assert (=> bs!593800 (= lambda!128223 lambda!128197)))

(declare-fun bs!593801 () Bool)

(assert (= bs!593801 (and d!1217329 d!1216865)))

(assert (=> bs!593801 (= lambda!128223 lambda!128185)))

(declare-fun bs!593802 () Bool)

(assert (= bs!593802 (and d!1217329 d!1217045)))

(assert (=> bs!593802 (= lambda!128223 lambda!128209)))

(assert (=> d!1217329 true))

(declare-fun lt!1466519 () Bool)

(assert (=> d!1217329 (= lt!1466519 (forall!8420 (t!339627 (t!339627 rTail!27)) lambda!128223))))

(declare-fun e!2544320 () Bool)

(assert (=> d!1217329 (= lt!1466519 e!2544320)))

(declare-fun res!1676265 () Bool)

(assert (=> d!1217329 (=> res!1676265 e!2544320)))

(assert (=> d!1217329 (= res!1676265 (not ((_ is Cons!44008) (t!339627 (t!339627 rTail!27)))))))

(assert (=> d!1217329 (= (rulesValidInductive!2639 thiss!26455 (t!339627 (t!339627 rTail!27))) lt!1466519)))

(declare-fun b!4099894 () Bool)

(declare-fun e!2544321 () Bool)

(assert (=> b!4099894 (= e!2544320 e!2544321)))

(declare-fun res!1676266 () Bool)

(assert (=> b!4099894 (=> (not res!1676266) (not e!2544321))))

(assert (=> b!4099894 (= res!1676266 (ruleValid!3042 thiss!26455 (h!49428 (t!339627 (t!339627 rTail!27)))))))

(declare-fun b!4099895 () Bool)

(assert (=> b!4099895 (= e!2544321 (rulesValidInductive!2639 thiss!26455 (t!339627 (t!339627 (t!339627 rTail!27)))))))

(assert (= (and d!1217329 (not res!1676265)) b!4099894))

(assert (= (and b!4099894 res!1676266) b!4099895))

(declare-fun m!4706951 () Bool)

(assert (=> d!1217329 m!4706951))

(declare-fun m!4706953 () Bool)

(assert (=> b!4099894 m!4706953))

(assert (=> b!4099895 m!4706525))

(assert (=> b!4099335 d!1217329))

(declare-fun d!1217331 () Bool)

(declare-fun lt!1466520 () Int)

(assert (=> d!1217331 (>= lt!1466520 0)))

(declare-fun e!2544329 () Int)

(assert (=> d!1217331 (= lt!1466520 e!2544329)))

(declare-fun c!706396 () Bool)

(assert (=> d!1217331 (= c!706396 ((_ is Nil!44006) (_2!24578 (get!14428 lt!1466247))))))

(assert (=> d!1217331 (= (size!32849 (_2!24578 (get!14428 lt!1466247))) lt!1466520)))

(declare-fun b!4099905 () Bool)

(assert (=> b!4099905 (= e!2544329 0)))

(declare-fun b!4099906 () Bool)

(assert (=> b!4099906 (= e!2544329 (+ 1 (size!32849 (t!339625 (_2!24578 (get!14428 lt!1466247))))))))

(assert (= (and d!1217331 c!706396) b!4099905))

(assert (= (and d!1217331 (not c!706396)) b!4099906))

(declare-fun m!4706955 () Bool)

(assert (=> b!4099906 m!4706955))

(assert (=> b!4099284 d!1217331))

(assert (=> b!4099284 d!1217159))

(assert (=> b!4099284 d!1217075))

(declare-fun d!1217333 () Bool)

(assert (=> d!1217333 (= (isEmpty!26325 lt!1466247) (not ((_ is Some!9529) lt!1466247)))))

(assert (=> d!1217013 d!1217333))

(assert (=> d!1217013 d!1217041))

(assert (=> d!1217013 d!1217043))

(assert (=> d!1217013 d!1217329))

(declare-fun d!1217335 () Bool)

(assert (=> d!1217335 (= (Forall!1522 lambda!128207) (choose!25053 lambda!128207))))

(declare-fun bs!593803 () Bool)

(assert (= bs!593803 d!1217335))

(declare-fun m!4706963 () Bool)

(assert (=> bs!593803 m!4706963))

(assert (=> d!1217011 d!1217335))

(declare-fun d!1217339 () Bool)

(declare-fun lt!1466522 () Int)

(assert (=> d!1217339 (>= lt!1466522 0)))

(declare-fun e!2544331 () Int)

(assert (=> d!1217339 (= lt!1466522 e!2544331)))

(declare-fun c!706398 () Bool)

(assert (=> d!1217339 (= c!706398 ((_ is Nil!44006) lt!1466268))))

(assert (=> d!1217339 (= (size!32849 lt!1466268) lt!1466522)))

(declare-fun b!4099908 () Bool)

(assert (=> b!4099908 (= e!2544331 0)))

(declare-fun b!4099910 () Bool)

(assert (=> b!4099910 (= e!2544331 (+ 1 (size!32849 (t!339625 lt!1466268))))))

(assert (= (and d!1217339 c!706398) b!4099908))

(assert (= (and d!1217339 (not c!706398)) b!4099910))

(declare-fun m!4706965 () Bool)

(assert (=> b!4099910 m!4706965))

(assert (=> b!4099355 d!1217339))

(declare-fun d!1217341 () Bool)

(declare-fun lt!1466523 () Int)

(assert (=> d!1217341 (>= lt!1466523 0)))

(declare-fun e!2544332 () Int)

(assert (=> d!1217341 (= lt!1466523 e!2544332)))

(declare-fun c!706399 () Bool)

(assert (=> d!1217341 (= c!706399 ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))

(assert (=> d!1217341 (= (size!32849 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) lt!1466523)))

(declare-fun b!4099911 () Bool)

(assert (=> b!4099911 (= e!2544332 0)))

(declare-fun b!4099912 () Bool)

(assert (=> b!4099912 (= e!2544332 (+ 1 (size!32849 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (= (and d!1217341 c!706399) b!4099911))

(assert (= (and d!1217341 (not c!706399)) b!4099912))

(assert (=> b!4099912 m!4706449))

(assert (=> b!4099355 d!1217341))

(assert (=> b!4099355 d!1217073))

(assert (=> d!1217079 d!1216909))

(assert (=> d!1217043 d!1217041))

(declare-fun d!1217345 () Bool)

(assert (=> d!1217345 (isPrefix!4157 input!3491 input!3491)))

(assert (=> d!1217345 true))

(declare-fun _$45!2021 () Unit!63531)

(assert (=> d!1217345 (= (choose!25050 input!3491 input!3491) _$45!2021)))

(declare-fun bs!593804 () Bool)

(assert (= bs!593804 d!1217345))

(assert (=> bs!593804 m!4705883))

(assert (=> d!1217043 d!1217345))

(declare-fun d!1217351 () Bool)

(declare-fun lt!1466525 () Int)

(assert (=> d!1217351 (>= lt!1466525 0)))

(declare-fun e!2544342 () Int)

(assert (=> d!1217351 (= lt!1466525 e!2544342)))

(declare-fun c!706402 () Bool)

(assert (=> d!1217351 (= c!706402 ((_ is Nil!44006) (t!339625 input!3491)))))

(assert (=> d!1217351 (= (size!32849 (t!339625 input!3491)) lt!1466525)))

(declare-fun b!4099924 () Bool)

(assert (=> b!4099924 (= e!2544342 0)))

(declare-fun b!4099925 () Bool)

(assert (=> b!4099925 (= e!2544342 (+ 1 (size!32849 (t!339625 (t!339625 input!3491)))))))

(assert (= (and d!1217351 c!706402) b!4099924))

(assert (= (and d!1217351 (not c!706402)) b!4099925))

(declare-fun m!4706979 () Bool)

(assert (=> b!4099925 m!4706979))

(assert (=> b!4099408 d!1217351))

(declare-fun bs!593805 () Bool)

(declare-fun d!1217353 () Bool)

(assert (= bs!593805 (and d!1217353 d!1217011)))

(declare-fun lambda!128224 () Int)

(assert (=> bs!593805 (= (and (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 rHead!24))) (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 rHead!24)))) (= lambda!128224 lambda!128207))))

(declare-fun bs!593806 () Bool)

(assert (= bs!593806 (and d!1217353 d!1217057)))

(assert (=> bs!593806 (= (and (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (h!49428 rTail!27)))) (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 rTail!27))))) (= lambda!128224 lambda!128210))))

(declare-fun bs!593807 () Bool)

(assert (= bs!593807 (and d!1217353 d!1217309)))

(assert (=> bs!593807 (= lambda!128224 lambda!128222)))

(assert (=> d!1217353 true))

(assert (=> d!1217353 (< (dynLambda!18864 order!23195 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (dynLambda!18865 order!23197 lambda!128224))))

(assert (=> d!1217353 true))

(assert (=> d!1217353 (< (dynLambda!18862 order!23187 (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (dynLambda!18865 order!23197 lambda!128224))))

(assert (=> d!1217353 (= (semiInverseModEq!3065 (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) (Forall!1522 lambda!128224))))

(declare-fun bs!593808 () Bool)

(assert (= bs!593808 d!1217353))

(declare-fun m!4706989 () Bool)

(assert (=> bs!593808 m!4706989))

(assert (=> d!1217027 d!1217353))

(assert (=> b!4099289 d!1217165))

(assert (=> b!4099289 d!1217167))

(assert (=> b!4099289 d!1217159))

(declare-fun d!1217361 () Bool)

(declare-fun res!1676283 () Bool)

(declare-fun e!2544347 () Bool)

(assert (=> d!1217361 (=> res!1676283 e!2544347)))

(assert (=> d!1217361 (= res!1676283 ((_ is Nil!44008) (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))))))

(assert (=> d!1217361 (= (noDuplicateTag!2811 thiss!26455 (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))) Nil!44009)) e!2544347)))

(declare-fun b!4099930 () Bool)

(declare-fun e!2544348 () Bool)

(assert (=> b!4099930 (= e!2544347 e!2544348)))

(declare-fun res!1676284 () Bool)

(assert (=> b!4099930 (=> (not res!1676284) (not e!2544348))))

(assert (=> b!4099930 (= res!1676284 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))) Nil!44009) (tag!7992 (h!49428 (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))))))))

(declare-fun b!4099931 () Bool)

(assert (=> b!4099931 (= e!2544348 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))) (Cons!44009 (tag!7992 (h!49428 (t!339627 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27)))))) (Cons!44009 (tag!7992 (h!49428 (Cons!44008 rHead!24 (Cons!44008 (h!49428 rTail!27) (t!339627 rTail!27))))) Nil!44009))))))

(assert (= (and d!1217361 (not res!1676283)) b!4099930))

(assert (= (and b!4099930 res!1676284) b!4099931))

(declare-fun m!4706993 () Bool)

(assert (=> b!4099930 m!4706993))

(declare-fun m!4706995 () Bool)

(assert (=> b!4099931 m!4706995))

(assert (=> b!4099092 d!1217361))

(declare-fun d!1217367 () Bool)

(declare-fun lt!1466526 () Bool)

(assert (=> d!1217367 (= lt!1466526 (select (content!6792 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun e!2544350 () Bool)

(assert (=> d!1217367 (= lt!1466526 e!2544350)))

(declare-fun res!1676285 () Bool)

(assert (=> d!1217367 (=> (not res!1676285) (not e!2544350))))

(assert (=> d!1217367 (= res!1676285 ((_ is Cons!44008) (t!339627 (t!339627 rTail!27))))))

(assert (=> d!1217367 (= (contains!8812 (t!339627 (t!339627 rTail!27)) (rule!10280 (_1!24578 (get!14428 lt!1466166)))) lt!1466526)))

(declare-fun b!4099932 () Bool)

(declare-fun e!2544349 () Bool)

(assert (=> b!4099932 (= e!2544350 e!2544349)))

(declare-fun res!1676286 () Bool)

(assert (=> b!4099932 (=> res!1676286 e!2544349)))

(assert (=> b!4099932 (= res!1676286 (= (h!49428 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(declare-fun b!4099933 () Bool)

(assert (=> b!4099933 (= e!2544349 (contains!8812 (t!339627 (t!339627 (t!339627 rTail!27))) (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(assert (= (and d!1217367 res!1676285) b!4099932))

(assert (= (and b!4099932 (not res!1676286)) b!4099933))

(assert (=> d!1217367 m!4706453))

(declare-fun m!4706997 () Bool)

(assert (=> d!1217367 m!4706997))

(declare-fun m!4706999 () Bool)

(assert (=> b!4099933 m!4706999))

(assert (=> b!4099340 d!1217367))

(declare-fun b!4099935 () Bool)

(declare-fun e!2544352 () List!44130)

(assert (=> b!4099935 (= e!2544352 (Cons!44006 (h!49426 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (++!11528 (t!339625 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (_2!24578 (get!14428 lt!1466247)))))))

(declare-fun d!1217369 () Bool)

(declare-fun e!2544351 () Bool)

(assert (=> d!1217369 e!2544351))

(declare-fun res!1676288 () Bool)

(assert (=> d!1217369 (=> (not res!1676288) (not e!2544351))))

(declare-fun lt!1466527 () List!44130)

(assert (=> d!1217369 (= res!1676288 (= (content!6794 lt!1466527) ((_ map or) (content!6794 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (content!6794 (_2!24578 (get!14428 lt!1466247))))))))

(assert (=> d!1217369 (= lt!1466527 e!2544352)))

(declare-fun c!706403 () Bool)

(assert (=> d!1217369 (= c!706403 ((_ is Nil!44006) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))))))

(assert (=> d!1217369 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))) (_2!24578 (get!14428 lt!1466247))) lt!1466527)))

(declare-fun b!4099937 () Bool)

(assert (=> b!4099937 (= e!2544351 (or (not (= (_2!24578 (get!14428 lt!1466247)) Nil!44006)) (= lt!1466527 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247)))))))))

(declare-fun b!4099936 () Bool)

(declare-fun res!1676287 () Bool)

(assert (=> b!4099936 (=> (not res!1676287) (not e!2544351))))

(assert (=> b!4099936 (= res!1676287 (= (size!32849 lt!1466527) (+ (size!32849 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466247))))) (size!32849 (_2!24578 (get!14428 lt!1466247))))))))

(declare-fun b!4099934 () Bool)

(assert (=> b!4099934 (= e!2544352 (_2!24578 (get!14428 lt!1466247)))))

(assert (= (and d!1217369 c!706403) b!4099934))

(assert (= (and d!1217369 (not c!706403)) b!4099935))

(assert (= (and d!1217369 res!1676288) b!4099936))

(assert (= (and b!4099936 res!1676287) b!4099937))

(declare-fun m!4707001 () Bool)

(assert (=> b!4099935 m!4707001))

(declare-fun m!4707003 () Bool)

(assert (=> d!1217369 m!4707003))

(assert (=> d!1217369 m!4706189))

(declare-fun m!4707005 () Bool)

(assert (=> d!1217369 m!4707005))

(declare-fun m!4707007 () Bool)

(assert (=> d!1217369 m!4707007))

(declare-fun m!4707009 () Bool)

(assert (=> b!4099936 m!4707009))

(assert (=> b!4099936 m!4706189))

(declare-fun m!4707011 () Bool)

(assert (=> b!4099936 m!4707011))

(assert (=> b!4099936 m!4706193))

(assert (=> b!4099286 d!1217369))

(assert (=> b!4099286 d!1217165))

(assert (=> b!4099286 d!1217167))

(assert (=> b!4099286 d!1217159))

(declare-fun d!1217371 () Bool)

(assert (not d!1217371))

(assert (=> b!4099313 d!1217371))

(declare-fun d!1217373 () Bool)

(declare-fun lt!1466528 () Bool)

(assert (=> d!1217373 (= lt!1466528 (select (content!6793 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))))))

(declare-fun e!2544353 () Bool)

(assert (=> d!1217373 (= lt!1466528 e!2544353)))

(declare-fun res!1676290 () Bool)

(assert (=> d!1217373 (=> (not res!1676290) (not e!2544353))))

(assert (=> d!1217373 (= res!1676290 ((_ is Cons!44009) Nil!44009))))

(assert (=> d!1217373 (= (contains!8813 Nil!44009 (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))) lt!1466528)))

(declare-fun b!4099938 () Bool)

(declare-fun e!2544354 () Bool)

(assert (=> b!4099938 (= e!2544353 e!2544354)))

(declare-fun res!1676289 () Bool)

(assert (=> b!4099938 (=> res!1676289 e!2544354)))

(assert (=> b!4099938 (= res!1676289 (= (h!49429 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))))))

(declare-fun b!4099939 () Bool)

(assert (=> b!4099939 (= e!2544354 (contains!8813 (t!339628 Nil!44009) (tag!7992 (h!49428 (Cons!44008 (h!49428 rTail!27) (Cons!44008 rHead!24 (t!339627 rTail!27)))))))))

(assert (= (and d!1217373 res!1676290) b!4099938))

(assert (= (and b!4099938 (not res!1676289)) b!4099939))

(assert (=> d!1217373 m!4706239))

(declare-fun m!4707013 () Bool)

(assert (=> d!1217373 m!4707013))

(declare-fun m!4707015 () Bool)

(assert (=> b!4099939 m!4707015))

(assert (=> b!4099089 d!1217373))

(declare-fun b!4099942 () Bool)

(declare-fun e!2544356 () Bool)

(assert (=> b!4099942 (= e!2544356 (subseq!540 (t!339628 Nil!44009) (t!339628 (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009)))))))

(declare-fun b!4099940 () Bool)

(declare-fun e!2544358 () Bool)

(declare-fun e!2544357 () Bool)

(assert (=> b!4099940 (= e!2544358 e!2544357)))

(declare-fun res!1676292 () Bool)

(assert (=> b!4099940 (=> (not res!1676292) (not e!2544357))))

(assert (=> b!4099940 (= res!1676292 ((_ is Cons!44009) (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))))))

(declare-fun b!4099943 () Bool)

(declare-fun e!2544355 () Bool)

(assert (=> b!4099943 (= e!2544355 (subseq!540 Nil!44009 (t!339628 (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009)))))))

(declare-fun d!1217375 () Bool)

(declare-fun res!1676291 () Bool)

(assert (=> d!1217375 (=> res!1676291 e!2544358)))

(assert (=> d!1217375 (= res!1676291 ((_ is Nil!44009) Nil!44009))))

(assert (=> d!1217375 (= (subseq!540 Nil!44009 (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009))) e!2544358)))

(declare-fun b!4099941 () Bool)

(assert (=> b!4099941 (= e!2544357 e!2544355)))

(declare-fun res!1676294 () Bool)

(assert (=> b!4099941 (=> res!1676294 e!2544355)))

(assert (=> b!4099941 (= res!1676294 e!2544356)))

(declare-fun res!1676293 () Bool)

(assert (=> b!4099941 (=> (not res!1676293) (not e!2544356))))

(assert (=> b!4099941 (= res!1676293 (= (h!49429 Nil!44009) (h!49429 (t!339628 (Cons!44009 (tag!7992 (h!49428 rTail!27)) Nil!44009)))))))

(assert (= (and d!1217375 (not res!1676291)) b!4099940))

(assert (= (and b!4099940 res!1676292) b!4099941))

(assert (= (and b!4099941 res!1676293) b!4099942))

(assert (= (and b!4099941 (not res!1676294)) b!4099943))

(declare-fun m!4707017 () Bool)

(assert (=> b!4099942 m!4707017))

(declare-fun m!4707019 () Bool)

(assert (=> b!4099943 m!4707019))

(assert (=> b!4099422 d!1217375))

(declare-fun b!4099944 () Bool)

(declare-fun res!1676297 () Bool)

(declare-fun e!2544361 () Bool)

(assert (=> b!4099944 (=> (not res!1676297) (not e!2544361))))

(declare-fun lt!1466529 () Option!9530)

(assert (=> b!4099944 (= res!1676297 (= (++!11528 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466529)))) (_2!24578 (get!14428 lt!1466529))) input!3491))))

(declare-fun b!4099945 () Bool)

(assert (=> b!4099945 (= e!2544361 (= (size!32847 (_1!24578 (get!14428 lt!1466529))) (size!32849 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466529))))))))

(declare-fun b!4099946 () Bool)

(declare-fun res!1676300 () Bool)

(assert (=> b!4099946 (=> (not res!1676300) (not e!2544361))))

(assert (=> b!4099946 (= res!1676300 (< (size!32849 (_2!24578 (get!14428 lt!1466529))) (size!32849 input!3491)))))

(declare-fun b!4099947 () Bool)

(declare-fun res!1676295 () Bool)

(assert (=> b!4099947 (=> (not res!1676295) (not e!2544361))))

(assert (=> b!4099947 (= res!1676295 (= (value!223906 (_1!24578 (get!14428 lt!1466529))) (apply!10305 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466529)))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466529)))))))))

(declare-fun b!4099948 () Bool)

(declare-fun e!2544359 () Option!9530)

(declare-fun lt!1466530 () tuple2!42892)

(assert (=> b!4099948 (= e!2544359 (Some!9529 (tuple2!42889 (Token!13375 (apply!10305 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466530))) (h!49428 (t!339627 (t!339627 rTail!27))) (size!32851 (seqFromList!5339 (_1!24580 lt!1466530))) (_1!24580 lt!1466530)) (_2!24580 lt!1466530))))))

(declare-fun lt!1466533 () Unit!63531)

(assert (=> b!4099948 (= lt!1466533 (longestMatchIsAcceptedByMatchOrIsEmpty!1449 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) input!3491))))

(declare-fun res!1676298 () Bool)

(assert (=> b!4099948 (= res!1676298 (isEmpty!26327 (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(declare-fun e!2544360 () Bool)

(assert (=> b!4099948 (=> res!1676298 e!2544360)))

(assert (=> b!4099948 e!2544360))

(declare-fun lt!1466531 () Unit!63531)

(assert (=> b!4099948 (= lt!1466531 lt!1466533)))

(declare-fun lt!1466532 () Unit!63531)

(assert (=> b!4099948 (= lt!1466532 (lemmaSemiInverse!2089 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) (seqFromList!5339 (_1!24580 lt!1466530))))))

(declare-fun b!4099949 () Bool)

(declare-fun res!1676299 () Bool)

(assert (=> b!4099949 (=> (not res!1676299) (not e!2544361))))

(assert (=> b!4099949 (= res!1676299 (= (rule!10280 (_1!24578 (get!14428 lt!1466529))) (h!49428 (t!339627 (t!339627 rTail!27)))))))

(declare-fun b!4099950 () Bool)

(declare-fun e!2544362 () Bool)

(assert (=> b!4099950 (= e!2544362 e!2544361)))

(declare-fun res!1676296 () Bool)

(assert (=> b!4099950 (=> (not res!1676296) (not e!2544361))))

(assert (=> b!4099950 (= res!1676296 (matchR!5968 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466529))))))))

(declare-fun d!1217377 () Bool)

(assert (=> d!1217377 e!2544362))

(declare-fun res!1676301 () Bool)

(assert (=> d!1217377 (=> res!1676301 e!2544362)))

(assert (=> d!1217377 (= res!1676301 (isEmpty!26325 lt!1466529))))

(assert (=> d!1217377 (= lt!1466529 e!2544359)))

(declare-fun c!706404 () Bool)

(assert (=> d!1217377 (= c!706404 (isEmpty!26327 (_1!24580 lt!1466530)))))

(assert (=> d!1217377 (= lt!1466530 (findLongestMatch!1389 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) input!3491))))

(assert (=> d!1217377 (ruleValid!3042 thiss!26455 (h!49428 (t!339627 (t!339627 rTail!27))))))

(assert (=> d!1217377 (= (maxPrefixOneRule!2979 thiss!26455 (h!49428 (t!339627 (t!339627 rTail!27))) input!3491) lt!1466529)))

(declare-fun b!4099951 () Bool)

(assert (=> b!4099951 (= e!2544359 None!9529)))

(declare-fun b!4099952 () Bool)

(assert (=> b!4099952 (= e!2544360 (matchR!5968 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) (_1!24580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))) Nil!44006 (size!32849 Nil!44006) input!3491 input!3491 (size!32849 input!3491)))))))

(assert (= (and d!1217377 c!706404) b!4099951))

(assert (= (and d!1217377 (not c!706404)) b!4099948))

(assert (= (and b!4099948 (not res!1676298)) b!4099952))

(assert (= (and d!1217377 (not res!1676301)) b!4099950))

(assert (= (and b!4099950 res!1676296) b!4099944))

(assert (= (and b!4099944 res!1676297) b!4099946))

(assert (= (and b!4099946 res!1676300) b!4099949))

(assert (= (and b!4099949 res!1676299) b!4099947))

(assert (= (and b!4099947 res!1676295) b!4099945))

(declare-fun m!4707021 () Bool)

(assert (=> b!4099948 m!4707021))

(assert (=> b!4099948 m!4707021))

(declare-fun m!4707023 () Bool)

(assert (=> b!4099948 m!4707023))

(declare-fun m!4707025 () Bool)

(assert (=> b!4099948 m!4707025))

(assert (=> b!4099948 m!4706145))

(assert (=> b!4099948 m!4705875))

(declare-fun m!4707027 () Bool)

(assert (=> b!4099948 m!4707027))

(declare-fun m!4707029 () Bool)

(assert (=> b!4099948 m!4707029))

(assert (=> b!4099948 m!4707021))

(declare-fun m!4707031 () Bool)

(assert (=> b!4099948 m!4707031))

(assert (=> b!4099948 m!4707021))

(declare-fun m!4707033 () Bool)

(assert (=> b!4099948 m!4707033))

(assert (=> b!4099948 m!4706145))

(assert (=> b!4099948 m!4705875))

(declare-fun m!4707035 () Bool)

(assert (=> b!4099947 m!4707035))

(declare-fun m!4707037 () Bool)

(assert (=> b!4099947 m!4707037))

(assert (=> b!4099947 m!4707037))

(declare-fun m!4707039 () Bool)

(assert (=> b!4099947 m!4707039))

(assert (=> b!4099950 m!4707035))

(declare-fun m!4707041 () Bool)

(assert (=> b!4099950 m!4707041))

(assert (=> b!4099950 m!4707041))

(declare-fun m!4707043 () Bool)

(assert (=> b!4099950 m!4707043))

(assert (=> b!4099950 m!4707043))

(declare-fun m!4707045 () Bool)

(assert (=> b!4099950 m!4707045))

(assert (=> b!4099945 m!4707035))

(declare-fun m!4707047 () Bool)

(assert (=> b!4099945 m!4707047))

(assert (=> b!4099952 m!4706145))

(assert (=> b!4099952 m!4705875))

(assert (=> b!4099952 m!4706145))

(assert (=> b!4099952 m!4705875))

(assert (=> b!4099952 m!4707027))

(declare-fun m!4707049 () Bool)

(assert (=> b!4099952 m!4707049))

(assert (=> b!4099949 m!4707035))

(declare-fun m!4707051 () Bool)

(assert (=> d!1217377 m!4707051))

(declare-fun m!4707053 () Bool)

(assert (=> d!1217377 m!4707053))

(declare-fun m!4707055 () Bool)

(assert (=> d!1217377 m!4707055))

(assert (=> d!1217377 m!4706953))

(assert (=> b!4099946 m!4707035))

(declare-fun m!4707057 () Bool)

(assert (=> b!4099946 m!4707057))

(assert (=> b!4099946 m!4705875))

(assert (=> b!4099944 m!4707035))

(assert (=> b!4099944 m!4707041))

(assert (=> b!4099944 m!4707041))

(assert (=> b!4099944 m!4707043))

(assert (=> b!4099944 m!4707043))

(declare-fun m!4707059 () Bool)

(assert (=> b!4099944 m!4707059))

(assert (=> bm!289650 d!1217377))

(assert (=> d!1217077 d!1217175))

(assert (=> b!4099265 d!1217131))

(declare-fun d!1217379 () Bool)

(declare-fun lt!1466534 () Int)

(assert (=> d!1217379 (>= lt!1466534 0)))

(declare-fun e!2544363 () Int)

(assert (=> d!1217379 (= lt!1466534 e!2544363)))

(declare-fun c!706405 () Bool)

(assert (=> d!1217379 (= c!706405 ((_ is Nil!44006) (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))))))

(assert (=> d!1217379 (= (size!32849 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))) lt!1466534)))

(declare-fun b!4099953 () Bool)

(assert (=> b!4099953 (= e!2544363 0)))

(declare-fun b!4099954 () Bool)

(assert (=> b!4099954 (= e!2544363 (+ 1 (size!32849 (t!339625 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466239)))))))))

(assert (= (and d!1217379 c!706405) b!4099953))

(assert (= (and d!1217379 (not c!706405)) b!4099954))

(declare-fun m!4707061 () Bool)

(assert (=> b!4099954 m!4707061))

(assert (=> b!4099265 d!1217379))

(declare-fun d!1217381 () Bool)

(declare-fun res!1676302 () Bool)

(declare-fun e!2544364 () Bool)

(assert (=> d!1217381 (=> res!1676302 e!2544364)))

(assert (=> d!1217381 (= res!1676302 ((_ is Nil!44008) (t!339627 lt!1466109)))))

(assert (=> d!1217381 (= (noDuplicateTag!2811 thiss!26455 (t!339627 lt!1466109) (Cons!44009 (tag!7992 (h!49428 lt!1466109)) Nil!44009)) e!2544364)))

(declare-fun b!4099955 () Bool)

(declare-fun e!2544365 () Bool)

(assert (=> b!4099955 (= e!2544364 e!2544365)))

(declare-fun res!1676303 () Bool)

(assert (=> b!4099955 (=> (not res!1676303) (not e!2544365))))

(assert (=> b!4099955 (= res!1676303 (not (contains!8813 (Cons!44009 (tag!7992 (h!49428 lt!1466109)) Nil!44009) (tag!7992 (h!49428 (t!339627 lt!1466109))))))))

(declare-fun b!4099956 () Bool)

(assert (=> b!4099956 (= e!2544365 (noDuplicateTag!2811 thiss!26455 (t!339627 (t!339627 lt!1466109)) (Cons!44009 (tag!7992 (h!49428 (t!339627 lt!1466109))) (Cons!44009 (tag!7992 (h!49428 lt!1466109)) Nil!44009))))))

(assert (= (and d!1217381 (not res!1676302)) b!4099955))

(assert (= (and b!4099955 res!1676303) b!4099956))

(declare-fun m!4707063 () Bool)

(assert (=> b!4099955 m!4707063))

(declare-fun m!4707065 () Bool)

(assert (=> b!4099956 m!4707065))

(assert (=> b!4099321 d!1217381))

(declare-fun d!1217383 () Bool)

(assert (=> d!1217383 (= (isEmpty!26325 lt!1466239) (not ((_ is Some!9529) lt!1466239)))))

(assert (=> d!1216957 d!1217383))

(declare-fun d!1217385 () Bool)

(assert (=> d!1217385 (= (isEmpty!26327 (_1!24580 lt!1466240)) ((_ is Nil!44006) (_1!24580 lt!1466240)))))

(assert (=> d!1216957 d!1217385))

(declare-fun d!1217387 () Bool)

(declare-fun lt!1466580 () tuple2!42892)

(assert (=> d!1217387 (= (++!11528 (_1!24580 lt!1466580) (_2!24580 lt!1466580)) input!3491)))

(declare-fun sizeTr!298 (List!44130 Int) Int)

(assert (=> d!1217387 (= lt!1466580 (findLongestMatchInner!1476 (regex!7132 (h!49428 (t!339627 rTail!27))) Nil!44006 0 input!3491 input!3491 (sizeTr!298 input!3491 0)))))

(declare-fun lt!1466577 () Unit!63531)

(declare-fun lt!1466581 () Unit!63531)

(assert (=> d!1217387 (= lt!1466577 lt!1466581)))

(declare-fun lt!1466582 () List!44130)

(declare-fun lt!1466583 () Int)

(assert (=> d!1217387 (= (sizeTr!298 lt!1466582 lt!1466583) (+ (size!32849 lt!1466582) lt!1466583))))

(declare-fun lemmaSizeTrEqualsSize!297 (List!44130 Int) Unit!63531)

(assert (=> d!1217387 (= lt!1466581 (lemmaSizeTrEqualsSize!297 lt!1466582 lt!1466583))))

(assert (=> d!1217387 (= lt!1466583 0)))

(assert (=> d!1217387 (= lt!1466582 Nil!44006)))

(declare-fun lt!1466578 () Unit!63531)

(declare-fun lt!1466579 () Unit!63531)

(assert (=> d!1217387 (= lt!1466578 lt!1466579)))

(declare-fun lt!1466584 () Int)

(assert (=> d!1217387 (= (sizeTr!298 input!3491 lt!1466584) (+ (size!32849 input!3491) lt!1466584))))

(assert (=> d!1217387 (= lt!1466579 (lemmaSizeTrEqualsSize!297 input!3491 lt!1466584))))

(assert (=> d!1217387 (= lt!1466584 0)))

(assert (=> d!1217387 (validRegex!5453 (regex!7132 (h!49428 (t!339627 rTail!27))))))

(assert (=> d!1217387 (= (findLongestMatch!1389 (regex!7132 (h!49428 (t!339627 rTail!27))) input!3491) lt!1466580)))

(declare-fun bs!593817 () Bool)

(assert (= bs!593817 d!1217387))

(declare-fun m!4707115 () Bool)

(assert (=> bs!593817 m!4707115))

(declare-fun m!4707119 () Bool)

(assert (=> bs!593817 m!4707119))

(declare-fun m!4707121 () Bool)

(assert (=> bs!593817 m!4707121))

(declare-fun m!4707123 () Bool)

(assert (=> bs!593817 m!4707123))

(assert (=> bs!593817 m!4706469))

(declare-fun m!4707125 () Bool)

(assert (=> bs!593817 m!4707125))

(declare-fun m!4707127 () Bool)

(assert (=> bs!593817 m!4707127))

(assert (=> bs!593817 m!4705875))

(assert (=> bs!593817 m!4707115))

(declare-fun m!4707129 () Bool)

(assert (=> bs!593817 m!4707129))

(declare-fun m!4707131 () Bool)

(assert (=> bs!593817 m!4707131))

(assert (=> d!1216957 d!1217387))

(assert (=> d!1216957 d!1217151))

(declare-fun b!4099995 () Bool)

(declare-fun e!2544392 () Bool)

(declare-fun inv!17 (TokenValue!7362) Bool)

(assert (=> b!4099995 (= e!2544392 (inv!17 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099996 () Bool)

(declare-fun e!2544391 () Bool)

(assert (=> b!4099996 (= e!2544391 e!2544392)))

(declare-fun c!706419 () Bool)

(assert (=> b!4099996 (= c!706419 ((_ is IntegerValue!22087) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun d!1217411 () Bool)

(declare-fun c!706420 () Bool)

(assert (=> d!1217411 (= c!706420 ((_ is IntegerValue!22086) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> d!1217411 (= (inv!21 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))) e!2544391)))

(declare-fun b!4099997 () Bool)

(declare-fun res!1676316 () Bool)

(declare-fun e!2544393 () Bool)

(assert (=> b!4099997 (=> res!1676316 e!2544393)))

(assert (=> b!4099997 (= res!1676316 (not ((_ is IntegerValue!22088) (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166))))))))))

(assert (=> b!4099997 (= e!2544392 e!2544393)))

(declare-fun b!4099998 () Bool)

(declare-fun inv!15 (TokenValue!7362) Bool)

(assert (=> b!4099998 (= e!2544393 (inv!15 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4099999 () Bool)

(declare-fun inv!16 (TokenValue!7362) Bool)

(assert (=> b!4099999 (= e!2544391 (inv!16 (dynLambda!18871 (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (seqFromList!5339 (originalCharacters!7718 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (= (and d!1217411 c!706420) b!4099999))

(assert (= (and d!1217411 (not c!706420)) b!4099996))

(assert (= (and b!4099996 c!706419) b!4099995))

(assert (= (and b!4099996 (not c!706419)) b!4099997))

(assert (= (and b!4099997 (not res!1676316)) b!4099998))

(declare-fun m!4707147 () Bool)

(assert (=> b!4099995 m!4707147))

(declare-fun m!4707149 () Bool)

(assert (=> b!4099998 m!4707149))

(declare-fun m!4707153 () Bool)

(assert (=> b!4099999 m!4707153))

(assert (=> tb!246743 d!1217411))

(declare-fun b!4100004 () Bool)

(declare-fun res!1676322 () Bool)

(declare-fun e!2544397 () Bool)

(assert (=> b!4100004 (=> res!1676322 e!2544397)))

(declare-fun e!2544399 () Bool)

(assert (=> b!4100004 (= res!1676322 e!2544399)))

(declare-fun res!1676324 () Bool)

(assert (=> b!4100004 (=> (not res!1676324) (not e!2544399))))

(declare-fun lt!1466588 () Bool)

(assert (=> b!4100004 (= res!1676324 lt!1466588)))

(declare-fun d!1217423 () Bool)

(declare-fun e!2544400 () Bool)

(assert (=> d!1217423 e!2544400))

(declare-fun c!706422 () Bool)

(assert (=> d!1217423 (= c!706422 ((_ is EmptyExpr!12037) (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun e!2544398 () Bool)

(assert (=> d!1217423 (= lt!1466588 e!2544398)))

(declare-fun c!706424 () Bool)

(assert (=> d!1217423 (= c!706424 (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> d!1217423 (validRegex!5453 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> d!1217423 (= (matchR!5968 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) lt!1466588)))

(declare-fun b!4100005 () Bool)

(declare-fun res!1676319 () Bool)

(assert (=> b!4100005 (=> (not res!1676319) (not e!2544399))))

(assert (=> b!4100005 (= res!1676319 (isEmpty!26327 (tail!6398 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4100006 () Bool)

(declare-fun e!2544403 () Bool)

(declare-fun e!2544401 () Bool)

(assert (=> b!4100006 (= e!2544403 e!2544401)))

(declare-fun res!1676325 () Bool)

(assert (=> b!4100006 (=> res!1676325 e!2544401)))

(declare-fun call!289749 () Bool)

(assert (=> b!4100006 (= res!1676325 call!289749)))

(declare-fun b!4100007 () Bool)

(assert (=> b!4100007 (= e!2544398 (nullable!4253 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4100008 () Bool)

(declare-fun res!1676320 () Bool)

(assert (=> b!4100008 (=> (not res!1676320) (not e!2544399))))

(assert (=> b!4100008 (= res!1676320 (not call!289749))))

(declare-fun b!4100009 () Bool)

(assert (=> b!4100009 (= e!2544401 (not (= (head!8664 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (c!706230 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))))

(declare-fun b!4100010 () Bool)

(assert (=> b!4100010 (= e!2544398 (matchR!5968 (derivativeStep!3654 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (head!8664 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))) (tail!6398 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4100011 () Bool)

(assert (=> b!4100011 (= e!2544400 (= lt!1466588 call!289749))))

(declare-fun b!4100012 () Bool)

(declare-fun res!1676321 () Bool)

(assert (=> b!4100012 (=> res!1676321 e!2544397)))

(assert (=> b!4100012 (= res!1676321 (not ((_ is ElementMatch!12037) (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))))

(declare-fun e!2544402 () Bool)

(assert (=> b!4100012 (= e!2544402 e!2544397)))

(declare-fun b!4100013 () Bool)

(assert (=> b!4100013 (= e!2544397 e!2544403)))

(declare-fun res!1676323 () Bool)

(assert (=> b!4100013 (=> (not res!1676323) (not e!2544403))))

(assert (=> b!4100013 (= res!1676323 (not lt!1466588))))

(declare-fun bm!289744 () Bool)

(assert (=> bm!289744 (= call!289749 (isEmpty!26327 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4100014 () Bool)

(assert (=> b!4100014 (= e!2544400 e!2544402)))

(declare-fun c!706423 () Bool)

(assert (=> b!4100014 (= c!706423 ((_ is EmptyLang!12037) (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))))))))

(declare-fun b!4100015 () Bool)

(assert (=> b!4100015 (= e!2544399 (= (head!8664 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) (c!706230 (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))))

(declare-fun b!4100016 () Bool)

(declare-fun res!1676326 () Bool)

(assert (=> b!4100016 (=> res!1676326 e!2544401)))

(assert (=> b!4100016 (= res!1676326 (not (isEmpty!26327 (tail!6398 (tail!6398 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))))

(declare-fun b!4100017 () Bool)

(assert (=> b!4100017 (= e!2544402 (not lt!1466588))))

(assert (= (and d!1217423 c!706424) b!4100007))

(assert (= (and d!1217423 (not c!706424)) b!4100010))

(assert (= (and d!1217423 c!706422) b!4100011))

(assert (= (and d!1217423 (not c!706422)) b!4100014))

(assert (= (and b!4100014 c!706423) b!4100017))

(assert (= (and b!4100014 (not c!706423)) b!4100012))

(assert (= (and b!4100012 (not res!1676321)) b!4100004))

(assert (= (and b!4100004 res!1676324) b!4100008))

(assert (= (and b!4100008 res!1676320) b!4100005))

(assert (= (and b!4100005 res!1676319) b!4100015))

(assert (= (and b!4100004 (not res!1676322)) b!4100013))

(assert (= (and b!4100013 res!1676323) b!4100006))

(assert (= (and b!4100006 (not res!1676325)) b!4100016))

(assert (= (and b!4100016 (not res!1676326)) b!4100009))

(assert (= (or b!4100011 b!4100006 b!4100008) bm!289744))

(assert (=> b!4100005 m!4706301))

(declare-fun m!4707163 () Bool)

(assert (=> b!4100005 m!4707163))

(assert (=> b!4100005 m!4707163))

(declare-fun m!4707167 () Bool)

(assert (=> b!4100005 m!4707167))

(assert (=> b!4100015 m!4706301))

(declare-fun m!4707169 () Bool)

(assert (=> b!4100015 m!4707169))

(assert (=> b!4100009 m!4706301))

(assert (=> b!4100009 m!4707169))

(assert (=> bm!289744 m!4706301))

(assert (=> bm!289744 m!4706303))

(assert (=> b!4100007 m!4706311))

(declare-fun m!4707171 () Bool)

(assert (=> b!4100007 m!4707171))

(assert (=> b!4100016 m!4706301))

(assert (=> b!4100016 m!4707163))

(assert (=> b!4100016 m!4707163))

(assert (=> b!4100016 m!4707167))

(assert (=> b!4100010 m!4706301))

(assert (=> b!4100010 m!4707169))

(assert (=> b!4100010 m!4706311))

(assert (=> b!4100010 m!4707169))

(declare-fun m!4707173 () Bool)

(assert (=> b!4100010 m!4707173))

(assert (=> b!4100010 m!4706301))

(assert (=> b!4100010 m!4707163))

(assert (=> b!4100010 m!4707173))

(assert (=> b!4100010 m!4707163))

(declare-fun m!4707179 () Bool)

(assert (=> b!4100010 m!4707179))

(assert (=> d!1217423 m!4706301))

(assert (=> d!1217423 m!4706303))

(assert (=> d!1217423 m!4706311))

(declare-fun m!4707181 () Bool)

(assert (=> d!1217423 m!4707181))

(assert (=> b!4099393 d!1217423))

(declare-fun call!289763 () Regex!12037)

(declare-fun c!706446 () Bool)

(declare-fun bm!289755 () Bool)

(declare-fun c!706450 () Bool)

(assert (=> bm!289755 (= call!289763 (derivativeStep!3654 (ite c!706446 (regOne!24587 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (ite c!706450 (reg!12366 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (regOne!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun bm!289756 () Bool)

(declare-fun call!289762 () Regex!12037)

(declare-fun call!289760 () Regex!12037)

(assert (=> bm!289756 (= call!289762 call!289760)))

(declare-fun b!4100084 () Bool)

(declare-fun e!2544444 () Regex!12037)

(assert (=> b!4100084 (= e!2544444 (Concat!19399 call!289760 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun bm!289757 () Bool)

(declare-fun call!289761 () Regex!12037)

(assert (=> bm!289757 (= call!289761 (derivativeStep!3654 (ite c!706446 (regTwo!24587 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (regTwo!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))))))

(declare-fun b!4100085 () Bool)

(declare-fun e!2544440 () Regex!12037)

(declare-fun e!2544442 () Regex!12037)

(assert (=> b!4100085 (= e!2544440 e!2544442)))

(declare-fun c!706447 () Bool)

(assert (=> b!4100085 (= c!706447 ((_ is ElementMatch!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4100086 () Bool)

(assert (=> b!4100086 (= c!706446 ((_ is Union!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun e!2544441 () Regex!12037)

(assert (=> b!4100086 (= e!2544442 e!2544441)))

(declare-fun e!2544443 () Regex!12037)

(declare-fun b!4100087 () Bool)

(assert (=> b!4100087 (= e!2544443 (Union!12037 (Concat!19399 call!289762 (regTwo!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) call!289761))))

(declare-fun b!4100088 () Bool)

(assert (=> b!4100088 (= e!2544442 (ite (= (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166))))) (c!706230 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) EmptyExpr!12037 EmptyLang!12037))))

(declare-fun d!1217439 () Bool)

(declare-fun lt!1466599 () Regex!12037)

(assert (=> d!1217439 (validRegex!5453 lt!1466599)))

(assert (=> d!1217439 (= lt!1466599 e!2544440)))

(declare-fun c!706448 () Bool)

(assert (=> d!1217439 (= c!706448 (or ((_ is EmptyExpr!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) ((_ is EmptyLang!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> d!1217439 (validRegex!5453 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))

(assert (=> d!1217439 (= (derivativeStep!3654 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))) (head!8664 (list!16308 (charsOf!4872 (_1!24578 (get!14428 lt!1466166)))))) lt!1466599)))

(declare-fun b!4100089 () Bool)

(assert (=> b!4100089 (= e!2544443 (Union!12037 (Concat!19399 call!289762 (regTwo!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) EmptyLang!12037))))

(declare-fun bm!289758 () Bool)

(assert (=> bm!289758 (= call!289760 call!289763)))

(declare-fun b!4100090 () Bool)

(assert (=> b!4100090 (= e!2544440 EmptyLang!12037)))

(declare-fun b!4100091 () Bool)

(declare-fun c!706449 () Bool)

(assert (=> b!4100091 (= c!706449 (nullable!4253 (regOne!24586 (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))))))

(assert (=> b!4100091 (= e!2544444 e!2544443)))

(declare-fun b!4100092 () Bool)

(assert (=> b!4100092 (= e!2544441 e!2544444)))

(assert (=> b!4100092 (= c!706450 ((_ is Star!12037) (regex!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))))

(declare-fun b!4100093 () Bool)

(assert (=> b!4100093 (= e!2544441 (Union!12037 call!289763 call!289761))))

(assert (= (and d!1217439 c!706448) b!4100090))

(assert (= (and d!1217439 (not c!706448)) b!4100085))

(assert (= (and b!4100085 c!706447) b!4100088))

(assert (= (and b!4100085 (not c!706447)) b!4100086))

(assert (= (and b!4100086 c!706446) b!4100093))

(assert (= (and b!4100086 (not c!706446)) b!4100092))

(assert (= (and b!4100092 c!706450) b!4100084))

(assert (= (and b!4100092 (not c!706450)) b!4100091))

(assert (= (and b!4100091 c!706449) b!4100087))

(assert (= (and b!4100091 (not c!706449)) b!4100089))

(assert (= (or b!4100087 b!4100089) bm!289756))

(assert (= (or b!4100084 bm!289756) bm!289758))

(assert (= (or b!4100093 bm!289758) bm!289755))

(assert (= (or b!4100093 b!4100087) bm!289757))

(assert (=> bm!289755 m!4706305))

(declare-fun m!4707239 () Bool)

(assert (=> bm!289755 m!4707239))

(assert (=> bm!289757 m!4706305))

(declare-fun m!4707241 () Bool)

(assert (=> bm!289757 m!4707241))

(declare-fun m!4707243 () Bool)

(assert (=> d!1217439 m!4707243))

(assert (=> d!1217439 m!4706315))

(declare-fun m!4707245 () Bool)

(assert (=> b!4100091 m!4707245))

(assert (=> b!4099393 d!1217439))

(assert (=> b!4099393 d!1217145))

(assert (=> b!4099393 d!1217197))

(declare-fun b!4100101 () Bool)

(declare-fun e!2544447 () Bool)

(declare-fun tp!1240955 () Bool)

(declare-fun tp!1240957 () Bool)

(assert (=> b!4100101 (= e!2544447 (and tp!1240955 tp!1240957))))

(assert (=> b!4099470 (= tp!1240944 e!2544447)))

(declare-fun b!4100099 () Bool)

(declare-fun tp!1240953 () Bool)

(declare-fun tp!1240954 () Bool)

(assert (=> b!4100099 (= e!2544447 (and tp!1240953 tp!1240954))))

(declare-fun b!4100098 () Bool)

(assert (=> b!4100098 (= e!2544447 tp_is_empty!21061)))

(declare-fun b!4100100 () Bool)

(declare-fun tp!1240956 () Bool)

(assert (=> b!4100100 (= e!2544447 tp!1240956)))

(assert (= (and b!4099470 ((_ is ElementMatch!12037) (regOne!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100098))

(assert (= (and b!4099470 ((_ is Concat!19399) (regOne!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100099))

(assert (= (and b!4099470 ((_ is Star!12037) (regOne!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100100))

(assert (= (and b!4099470 ((_ is Union!12037) (regOne!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100101))

(declare-fun b!4100105 () Bool)

(declare-fun e!2544448 () Bool)

(declare-fun tp!1240960 () Bool)

(declare-fun tp!1240962 () Bool)

(assert (=> b!4100105 (= e!2544448 (and tp!1240960 tp!1240962))))

(assert (=> b!4099470 (= tp!1240946 e!2544448)))

(declare-fun b!4100103 () Bool)

(declare-fun tp!1240958 () Bool)

(declare-fun tp!1240959 () Bool)

(assert (=> b!4100103 (= e!2544448 (and tp!1240958 tp!1240959))))

(declare-fun b!4100102 () Bool)

(assert (=> b!4100102 (= e!2544448 tp_is_empty!21061)))

(declare-fun b!4100104 () Bool)

(declare-fun tp!1240961 () Bool)

(assert (=> b!4100104 (= e!2544448 tp!1240961)))

(assert (= (and b!4099470 ((_ is ElementMatch!12037) (regTwo!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100102))

(assert (= (and b!4099470 ((_ is Concat!19399) (regTwo!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100103))

(assert (= (and b!4099470 ((_ is Star!12037) (regTwo!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100104))

(assert (= (and b!4099470 ((_ is Union!12037) (regTwo!24587 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100105))

(declare-fun b!4100109 () Bool)

(declare-fun e!2544449 () Bool)

(declare-fun tp!1240965 () Bool)

(declare-fun tp!1240967 () Bool)

(assert (=> b!4100109 (= e!2544449 (and tp!1240965 tp!1240967))))

(assert (=> b!4099459 (= tp!1240930 e!2544449)))

(declare-fun b!4100107 () Bool)

(declare-fun tp!1240963 () Bool)

(declare-fun tp!1240964 () Bool)

(assert (=> b!4100107 (= e!2544449 (and tp!1240963 tp!1240964))))

(declare-fun b!4100106 () Bool)

(assert (=> b!4100106 (= e!2544449 tp_is_empty!21061)))

(declare-fun b!4100108 () Bool)

(declare-fun tp!1240966 () Bool)

(assert (=> b!4100108 (= e!2544449 tp!1240966)))

(assert (= (and b!4099459 ((_ is ElementMatch!12037) (regOne!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100106))

(assert (= (and b!4099459 ((_ is Concat!19399) (regOne!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100107))

(assert (= (and b!4099459 ((_ is Star!12037) (regOne!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100108))

(assert (= (and b!4099459 ((_ is Union!12037) (regOne!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100109))

(declare-fun b!4100115 () Bool)

(declare-fun e!2544452 () Bool)

(declare-fun tp!1240970 () Bool)

(declare-fun tp!1240972 () Bool)

(assert (=> b!4100115 (= e!2544452 (and tp!1240970 tp!1240972))))

(assert (=> b!4099459 (= tp!1240932 e!2544452)))

(declare-fun b!4100113 () Bool)

(declare-fun tp!1240968 () Bool)

(declare-fun tp!1240969 () Bool)

(assert (=> b!4100113 (= e!2544452 (and tp!1240968 tp!1240969))))

(declare-fun b!4100112 () Bool)

(assert (=> b!4100112 (= e!2544452 tp_is_empty!21061)))

(declare-fun b!4100114 () Bool)

(declare-fun tp!1240971 () Bool)

(assert (=> b!4100114 (= e!2544452 tp!1240971)))

(assert (= (and b!4099459 ((_ is ElementMatch!12037) (regTwo!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100112))

(assert (= (and b!4099459 ((_ is Concat!19399) (regTwo!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100113))

(assert (= (and b!4099459 ((_ is Star!12037) (regTwo!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100114))

(assert (= (and b!4099459 ((_ is Union!12037) (regTwo!24587 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100115))

(declare-fun b!4100119 () Bool)

(declare-fun e!2544453 () Bool)

(declare-fun tp!1240975 () Bool)

(declare-fun tp!1240977 () Bool)

(assert (=> b!4100119 (= e!2544453 (and tp!1240975 tp!1240977))))

(assert (=> b!4099449 (= tp!1240918 e!2544453)))

(declare-fun b!4100117 () Bool)

(declare-fun tp!1240973 () Bool)

(declare-fun tp!1240974 () Bool)

(assert (=> b!4100117 (= e!2544453 (and tp!1240973 tp!1240974))))

(declare-fun b!4100116 () Bool)

(assert (=> b!4100116 (= e!2544453 tp_is_empty!21061)))

(declare-fun b!4100118 () Bool)

(declare-fun tp!1240976 () Bool)

(assert (=> b!4100118 (= e!2544453 tp!1240976)))

(assert (= (and b!4099449 ((_ is ElementMatch!12037) (regOne!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100116))

(assert (= (and b!4099449 ((_ is Concat!19399) (regOne!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100117))

(assert (= (and b!4099449 ((_ is Star!12037) (regOne!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100118))

(assert (= (and b!4099449 ((_ is Union!12037) (regOne!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100119))

(declare-fun b!4100137 () Bool)

(declare-fun e!2544461 () Bool)

(declare-fun tp!1240980 () Bool)

(declare-fun tp!1240982 () Bool)

(assert (=> b!4100137 (= e!2544461 (and tp!1240980 tp!1240982))))

(assert (=> b!4099449 (= tp!1240919 e!2544461)))

(declare-fun b!4100135 () Bool)

(declare-fun tp!1240978 () Bool)

(declare-fun tp!1240979 () Bool)

(assert (=> b!4100135 (= e!2544461 (and tp!1240978 tp!1240979))))

(declare-fun b!4100134 () Bool)

(assert (=> b!4100134 (= e!2544461 tp_is_empty!21061)))

(declare-fun b!4100136 () Bool)

(declare-fun tp!1240981 () Bool)

(assert (=> b!4100136 (= e!2544461 tp!1240981)))

(assert (= (and b!4099449 ((_ is ElementMatch!12037) (regTwo!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100134))

(assert (= (and b!4099449 ((_ is Concat!19399) (regTwo!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100135))

(assert (= (and b!4099449 ((_ is Star!12037) (regTwo!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100136))

(assert (= (and b!4099449 ((_ is Union!12037) (regTwo!24586 (regTwo!24586 (regex!7132 rHead!24))))) b!4100137))

(declare-fun b!4100141 () Bool)

(declare-fun e!2544462 () Bool)

(declare-fun tp!1240985 () Bool)

(declare-fun tp!1240987 () Bool)

(assert (=> b!4100141 (= e!2544462 (and tp!1240985 tp!1240987))))

(assert (=> b!4099458 (= tp!1240931 e!2544462)))

(declare-fun b!4100139 () Bool)

(declare-fun tp!1240983 () Bool)

(declare-fun tp!1240984 () Bool)

(assert (=> b!4100139 (= e!2544462 (and tp!1240983 tp!1240984))))

(declare-fun b!4100138 () Bool)

(assert (=> b!4100138 (= e!2544462 tp_is_empty!21061)))

(declare-fun b!4100140 () Bool)

(declare-fun tp!1240986 () Bool)

(assert (=> b!4100140 (= e!2544462 tp!1240986)))

(assert (= (and b!4099458 ((_ is ElementMatch!12037) (reg!12366 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100138))

(assert (= (and b!4099458 ((_ is Concat!19399) (reg!12366 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100139))

(assert (= (and b!4099458 ((_ is Star!12037) (reg!12366 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100140))

(assert (= (and b!4099458 ((_ is Union!12037) (reg!12366 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100141))

(declare-fun b!4100145 () Bool)

(declare-fun e!2544463 () Bool)

(declare-fun tp!1240990 () Bool)

(declare-fun tp!1240992 () Bool)

(assert (=> b!4100145 (= e!2544463 (and tp!1240990 tp!1240992))))

(assert (=> b!4099465 (= tp!1240941 e!2544463)))

(declare-fun b!4100143 () Bool)

(declare-fun tp!1240988 () Bool)

(declare-fun tp!1240989 () Bool)

(assert (=> b!4100143 (= e!2544463 (and tp!1240988 tp!1240989))))

(declare-fun b!4100142 () Bool)

(assert (=> b!4100142 (= e!2544463 tp_is_empty!21061)))

(declare-fun b!4100144 () Bool)

(declare-fun tp!1240991 () Bool)

(assert (=> b!4100144 (= e!2544463 tp!1240991)))

(assert (= (and b!4099465 ((_ is ElementMatch!12037) (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))) b!4100142))

(assert (= (and b!4099465 ((_ is Concat!19399) (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))) b!4100143))

(assert (= (and b!4099465 ((_ is Star!12037) (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))) b!4100144))

(assert (= (and b!4099465 ((_ is Union!12037) (regex!7132 (h!49428 (t!339627 (t!339627 rTail!27)))))) b!4100145))

(declare-fun b!4100149 () Bool)

(declare-fun e!2544464 () Bool)

(declare-fun tp!1240995 () Bool)

(declare-fun tp!1240997 () Bool)

(assert (=> b!4100149 (= e!2544464 (and tp!1240995 tp!1240997))))

(assert (=> b!4099457 (= tp!1240928 e!2544464)))

(declare-fun b!4100147 () Bool)

(declare-fun tp!1240993 () Bool)

(declare-fun tp!1240994 () Bool)

(assert (=> b!4100147 (= e!2544464 (and tp!1240993 tp!1240994))))

(declare-fun b!4100146 () Bool)

(assert (=> b!4100146 (= e!2544464 tp_is_empty!21061)))

(declare-fun b!4100148 () Bool)

(declare-fun tp!1240996 () Bool)

(assert (=> b!4100148 (= e!2544464 tp!1240996)))

(assert (= (and b!4099457 ((_ is ElementMatch!12037) (regOne!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100146))

(assert (= (and b!4099457 ((_ is Concat!19399) (regOne!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100147))

(assert (= (and b!4099457 ((_ is Star!12037) (regOne!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100148))

(assert (= (and b!4099457 ((_ is Union!12037) (regOne!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100149))

(declare-fun b!4100153 () Bool)

(declare-fun e!2544465 () Bool)

(declare-fun tp!1241000 () Bool)

(declare-fun tp!1241002 () Bool)

(assert (=> b!4100153 (= e!2544465 (and tp!1241000 tp!1241002))))

(assert (=> b!4099457 (= tp!1240929 e!2544465)))

(declare-fun b!4100151 () Bool)

(declare-fun tp!1240998 () Bool)

(declare-fun tp!1240999 () Bool)

(assert (=> b!4100151 (= e!2544465 (and tp!1240998 tp!1240999))))

(declare-fun b!4100150 () Bool)

(assert (=> b!4100150 (= e!2544465 tp_is_empty!21061)))

(declare-fun b!4100152 () Bool)

(declare-fun tp!1241001 () Bool)

(assert (=> b!4100152 (= e!2544465 tp!1241001)))

(assert (= (and b!4099457 ((_ is ElementMatch!12037) (regTwo!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100150))

(assert (= (and b!4099457 ((_ is Concat!19399) (regTwo!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100151))

(assert (= (and b!4099457 ((_ is Star!12037) (regTwo!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100152))

(assert (= (and b!4099457 ((_ is Union!12037) (regTwo!24586 (regOne!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100153))

(declare-fun b!4100156 () Bool)

(declare-fun b_free!114785 () Bool)

(declare-fun b_next!115489 () Bool)

(assert (=> b!4100156 (= b_free!114785 (not b_next!115489))))

(declare-fun t!339760 () Bool)

(declare-fun tb!246849 () Bool)

(assert (=> (and b!4100156 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339760) tb!246849))

(declare-fun result!299534 () Bool)

(assert (= result!299534 result!299454))

(assert (=> d!1217191 t!339760))

(declare-fun t!339762 () Bool)

(declare-fun tb!246851 () Bool)

(assert (=> (and b!4100156 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339762) tb!246851))

(declare-fun result!299536 () Bool)

(assert (= result!299536 result!299502))

(assert (=> d!1217289 t!339762))

(declare-fun tb!246853 () Bool)

(declare-fun t!339764 () Bool)

(assert (=> (and b!4100156 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339764) tb!246853))

(declare-fun result!299538 () Bool)

(assert (= result!299538 result!299438))

(assert (=> d!1217133 t!339764))

(declare-fun t!339766 () Bool)

(declare-fun tb!246855 () Bool)

(assert (=> (and b!4100156 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339766) tb!246855))

(declare-fun result!299540 () Bool)

(assert (= result!299540 result!299426))

(assert (=> d!1217067 t!339766))

(assert (=> d!1217309 t!339762))

(declare-fun b_and!316599 () Bool)

(declare-fun tp!1241003 () Bool)

(assert (=> b!4100156 (= tp!1241003 (and (=> t!339762 result!299536) (=> t!339760 result!299534) (=> t!339764 result!299538) (=> t!339766 result!299540) b_and!316599))))

(declare-fun b_free!114787 () Bool)

(declare-fun b_next!115491 () Bool)

(assert (=> b!4100156 (= b_free!114787 (not b_next!115491))))

(declare-fun t!339768 () Bool)

(declare-fun tb!246857 () Bool)

(assert (=> (and b!4100156 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166)))))) t!339768) tb!246857))

(declare-fun result!299542 () Bool)

(assert (= result!299542 result!299418))

(assert (=> d!1217017 t!339768))

(declare-fun t!339770 () Bool)

(declare-fun tb!246859 () Bool)

(assert (=> (and b!4100156 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466247)))))) t!339770) tb!246859))

(declare-fun result!299544 () Bool)

(assert (= result!299544 result!299446))

(assert (=> d!1217167 t!339770))

(declare-fun t!339772 () Bool)

(declare-fun tb!246861 () Bool)

(assert (=> (and b!4100156 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466239)))))) t!339772) tb!246861))

(declare-fun result!299546 () Bool)

(assert (= result!299546 result!299462))

(assert (=> d!1217223 t!339772))

(declare-fun t!339774 () Bool)

(declare-fun tb!246863 () Bool)

(assert (=> (and b!4100156 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27))))) t!339774) tb!246863))

(declare-fun result!299548 () Bool)

(assert (= result!299548 result!299518))

(assert (=> d!1217309 t!339774))

(declare-fun b_and!316601 () Bool)

(declare-fun tp!1241004 () Bool)

(assert (=> b!4100156 (= tp!1241004 (and (=> t!339768 result!299542) (=> t!339770 result!299544) (=> t!339772 result!299546) (=> t!339774 result!299548) b_and!316601))))

(declare-fun e!2544468 () Bool)

(assert (=> b!4100156 (= e!2544468 (and tp!1241003 tp!1241004))))

(declare-fun b!4100155 () Bool)

(declare-fun e!2544467 () Bool)

(declare-fun tp!1241006 () Bool)

(assert (=> b!4100155 (= e!2544467 (and tp!1241006 (inv!58723 (tag!7992 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (inv!58725 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) e!2544468))))

(declare-fun b!4100154 () Bool)

(declare-fun e!2544469 () Bool)

(declare-fun tp!1241005 () Bool)

(assert (=> b!4100154 (= e!2544469 (and e!2544467 tp!1241005))))

(assert (=> b!4099464 (= tp!1240940 e!2544469)))

(assert (= b!4100155 b!4100156))

(assert (= b!4100154 b!4100155))

(assert (= (and b!4099464 ((_ is Cons!44008) (t!339627 (t!339627 (t!339627 rTail!27))))) b!4100154))

(declare-fun m!4707271 () Bool)

(assert (=> b!4100155 m!4707271))

(declare-fun m!4707273 () Bool)

(assert (=> b!4100155 m!4707273))

(declare-fun b!4100160 () Bool)

(declare-fun e!2544470 () Bool)

(declare-fun tp!1241009 () Bool)

(declare-fun tp!1241011 () Bool)

(assert (=> b!4100160 (= e!2544470 (and tp!1241009 tp!1241011))))

(assert (=> b!4099443 (= tp!1240910 e!2544470)))

(declare-fun b!4100158 () Bool)

(declare-fun tp!1241007 () Bool)

(declare-fun tp!1241008 () Bool)

(assert (=> b!4100158 (= e!2544470 (and tp!1241007 tp!1241008))))

(declare-fun b!4100157 () Bool)

(assert (=> b!4100157 (= e!2544470 tp_is_empty!21061)))

(declare-fun b!4100159 () Bool)

(declare-fun tp!1241010 () Bool)

(assert (=> b!4100159 (= e!2544470 tp!1241010)))

(assert (= (and b!4099443 ((_ is ElementMatch!12037) (regOne!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100157))

(assert (= (and b!4099443 ((_ is Concat!19399) (regOne!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100158))

(assert (= (and b!4099443 ((_ is Star!12037) (regOne!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100159))

(assert (= (and b!4099443 ((_ is Union!12037) (regOne!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100160))

(declare-fun b!4100166 () Bool)

(declare-fun e!2544471 () Bool)

(declare-fun tp!1241014 () Bool)

(declare-fun tp!1241016 () Bool)

(assert (=> b!4100166 (= e!2544471 (and tp!1241014 tp!1241016))))

(assert (=> b!4099443 (= tp!1240912 e!2544471)))

(declare-fun b!4100164 () Bool)

(declare-fun tp!1241012 () Bool)

(declare-fun tp!1241013 () Bool)

(assert (=> b!4100164 (= e!2544471 (and tp!1241012 tp!1241013))))

(declare-fun b!4100163 () Bool)

(assert (=> b!4100163 (= e!2544471 tp_is_empty!21061)))

(declare-fun b!4100165 () Bool)

(declare-fun tp!1241015 () Bool)

(assert (=> b!4100165 (= e!2544471 tp!1241015)))

(assert (= (and b!4099443 ((_ is ElementMatch!12037) (regTwo!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100163))

(assert (= (and b!4099443 ((_ is Concat!19399) (regTwo!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100164))

(assert (= (and b!4099443 ((_ is Star!12037) (regTwo!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100165))

(assert (= (and b!4099443 ((_ is Union!12037) (regTwo!24587 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100166))

(declare-fun b!4100178 () Bool)

(declare-fun e!2544478 () Bool)

(declare-fun tp!1241019 () Bool)

(declare-fun tp!1241021 () Bool)

(assert (=> b!4100178 (= e!2544478 (and tp!1241019 tp!1241021))))

(assert (=> b!4099426 (= tp!1240889 e!2544478)))

(declare-fun b!4100176 () Bool)

(declare-fun tp!1241017 () Bool)

(declare-fun tp!1241018 () Bool)

(assert (=> b!4100176 (= e!2544478 (and tp!1241017 tp!1241018))))

(declare-fun b!4100175 () Bool)

(assert (=> b!4100175 (= e!2544478 tp_is_empty!21061)))

(declare-fun b!4100177 () Bool)

(declare-fun tp!1241020 () Bool)

(assert (=> b!4100177 (= e!2544478 tp!1241020)))

(assert (= (and b!4099426 ((_ is ElementMatch!12037) (regOne!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100175))

(assert (= (and b!4099426 ((_ is Concat!19399) (regOne!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100176))

(assert (= (and b!4099426 ((_ is Star!12037) (regOne!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100177))

(assert (= (and b!4099426 ((_ is Union!12037) (regOne!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100178))

(declare-fun b!4100182 () Bool)

(declare-fun e!2544479 () Bool)

(declare-fun tp!1241024 () Bool)

(declare-fun tp!1241026 () Bool)

(assert (=> b!4100182 (= e!2544479 (and tp!1241024 tp!1241026))))

(assert (=> b!4099426 (= tp!1240891 e!2544479)))

(declare-fun b!4100180 () Bool)

(declare-fun tp!1241022 () Bool)

(declare-fun tp!1241023 () Bool)

(assert (=> b!4100180 (= e!2544479 (and tp!1241022 tp!1241023))))

(declare-fun b!4100179 () Bool)

(assert (=> b!4100179 (= e!2544479 tp_is_empty!21061)))

(declare-fun b!4100181 () Bool)

(declare-fun tp!1241025 () Bool)

(assert (=> b!4100181 (= e!2544479 tp!1241025)))

(assert (= (and b!4099426 ((_ is ElementMatch!12037) (regTwo!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100179))

(assert (= (and b!4099426 ((_ is Concat!19399) (regTwo!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100180))

(assert (= (and b!4099426 ((_ is Star!12037) (regTwo!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100181))

(assert (= (and b!4099426 ((_ is Union!12037) (regTwo!24587 (regOne!24587 (regex!7132 rHead!24))))) b!4100182))

(declare-fun b!4100186 () Bool)

(declare-fun e!2544480 () Bool)

(declare-fun tp!1241029 () Bool)

(declare-fun tp!1241031 () Bool)

(assert (=> b!4100186 (= e!2544480 (and tp!1241029 tp!1241031))))

(assert (=> b!4099433 (= tp!1240898 e!2544480)))

(declare-fun b!4100184 () Bool)

(declare-fun tp!1241027 () Bool)

(declare-fun tp!1241028 () Bool)

(assert (=> b!4100184 (= e!2544480 (and tp!1241027 tp!1241028))))

(declare-fun b!4100183 () Bool)

(assert (=> b!4100183 (= e!2544480 tp_is_empty!21061)))

(declare-fun b!4100185 () Bool)

(declare-fun tp!1241030 () Bool)

(assert (=> b!4100185 (= e!2544480 tp!1241030)))

(assert (= (and b!4099433 ((_ is ElementMatch!12037) (regOne!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100183))

(assert (= (and b!4099433 ((_ is Concat!19399) (regOne!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100184))

(assert (= (and b!4099433 ((_ is Star!12037) (regOne!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100185))

(assert (= (and b!4099433 ((_ is Union!12037) (regOne!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100186))

(declare-fun b!4100190 () Bool)

(declare-fun e!2544481 () Bool)

(declare-fun tp!1241034 () Bool)

(declare-fun tp!1241036 () Bool)

(assert (=> b!4100190 (= e!2544481 (and tp!1241034 tp!1241036))))

(assert (=> b!4099433 (= tp!1240899 e!2544481)))

(declare-fun b!4100188 () Bool)

(declare-fun tp!1241032 () Bool)

(declare-fun tp!1241033 () Bool)

(assert (=> b!4100188 (= e!2544481 (and tp!1241032 tp!1241033))))

(declare-fun b!4100187 () Bool)

(assert (=> b!4100187 (= e!2544481 tp_is_empty!21061)))

(declare-fun b!4100189 () Bool)

(declare-fun tp!1241035 () Bool)

(assert (=> b!4100189 (= e!2544481 tp!1241035)))

(assert (= (and b!4099433 ((_ is ElementMatch!12037) (regTwo!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100187))

(assert (= (and b!4099433 ((_ is Concat!19399) (regTwo!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100188))

(assert (= (and b!4099433 ((_ is Star!12037) (regTwo!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100189))

(assert (= (and b!4099433 ((_ is Union!12037) (regTwo!24586 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100190))

(declare-fun b!4100194 () Bool)

(declare-fun e!2544482 () Bool)

(declare-fun tp!1241039 () Bool)

(declare-fun tp!1241041 () Bool)

(assert (=> b!4100194 (= e!2544482 (and tp!1241039 tp!1241041))))

(assert (=> b!4099442 (= tp!1240911 e!2544482)))

(declare-fun b!4100192 () Bool)

(declare-fun tp!1241037 () Bool)

(declare-fun tp!1241038 () Bool)

(assert (=> b!4100192 (= e!2544482 (and tp!1241037 tp!1241038))))

(declare-fun b!4100191 () Bool)

(assert (=> b!4100191 (= e!2544482 tp_is_empty!21061)))

(declare-fun b!4100193 () Bool)

(declare-fun tp!1241040 () Bool)

(assert (=> b!4100193 (= e!2544482 tp!1241040)))

(assert (= (and b!4099442 ((_ is ElementMatch!12037) (reg!12366 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100191))

(assert (= (and b!4099442 ((_ is Concat!19399) (reg!12366 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100192))

(assert (= (and b!4099442 ((_ is Star!12037) (reg!12366 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100193))

(assert (= (and b!4099442 ((_ is Union!12037) (reg!12366 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100194))

(declare-fun b!4100198 () Bool)

(declare-fun e!2544483 () Bool)

(declare-fun tp!1241044 () Bool)

(declare-fun tp!1241046 () Bool)

(assert (=> b!4100198 (= e!2544483 (and tp!1241044 tp!1241046))))

(assert (=> b!4099425 (= tp!1240890 e!2544483)))

(declare-fun b!4100196 () Bool)

(declare-fun tp!1241042 () Bool)

(declare-fun tp!1241043 () Bool)

(assert (=> b!4100196 (= e!2544483 (and tp!1241042 tp!1241043))))

(declare-fun b!4100195 () Bool)

(assert (=> b!4100195 (= e!2544483 tp_is_empty!21061)))

(declare-fun b!4100197 () Bool)

(declare-fun tp!1241045 () Bool)

(assert (=> b!4100197 (= e!2544483 tp!1241045)))

(assert (= (and b!4099425 ((_ is ElementMatch!12037) (reg!12366 (regOne!24587 (regex!7132 rHead!24))))) b!4100195))

(assert (= (and b!4099425 ((_ is Concat!19399) (reg!12366 (regOne!24587 (regex!7132 rHead!24))))) b!4100196))

(assert (= (and b!4099425 ((_ is Star!12037) (reg!12366 (regOne!24587 (regex!7132 rHead!24))))) b!4100197))

(assert (= (and b!4099425 ((_ is Union!12037) (reg!12366 (regOne!24587 (regex!7132 rHead!24))))) b!4100198))

(declare-fun b!4100202 () Bool)

(declare-fun e!2544484 () Bool)

(declare-fun tp!1241049 () Bool)

(declare-fun tp!1241051 () Bool)

(assert (=> b!4100202 (= e!2544484 (and tp!1241049 tp!1241051))))

(assert (=> b!4099451 (= tp!1240920 e!2544484)))

(declare-fun b!4100200 () Bool)

(declare-fun tp!1241047 () Bool)

(declare-fun tp!1241048 () Bool)

(assert (=> b!4100200 (= e!2544484 (and tp!1241047 tp!1241048))))

(declare-fun b!4100199 () Bool)

(assert (=> b!4100199 (= e!2544484 tp_is_empty!21061)))

(declare-fun b!4100201 () Bool)

(declare-fun tp!1241050 () Bool)

(assert (=> b!4100201 (= e!2544484 tp!1241050)))

(assert (= (and b!4099451 ((_ is ElementMatch!12037) (regOne!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100199))

(assert (= (and b!4099451 ((_ is Concat!19399) (regOne!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100200))

(assert (= (and b!4099451 ((_ is Star!12037) (regOne!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100201))

(assert (= (and b!4099451 ((_ is Union!12037) (regOne!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100202))

(declare-fun b!4100206 () Bool)

(declare-fun e!2544485 () Bool)

(declare-fun tp!1241054 () Bool)

(declare-fun tp!1241056 () Bool)

(assert (=> b!4100206 (= e!2544485 (and tp!1241054 tp!1241056))))

(assert (=> b!4099451 (= tp!1240922 e!2544485)))

(declare-fun b!4100204 () Bool)

(declare-fun tp!1241052 () Bool)

(declare-fun tp!1241053 () Bool)

(assert (=> b!4100204 (= e!2544485 (and tp!1241052 tp!1241053))))

(declare-fun b!4100203 () Bool)

(assert (=> b!4100203 (= e!2544485 tp_is_empty!21061)))

(declare-fun b!4100205 () Bool)

(declare-fun tp!1241055 () Bool)

(assert (=> b!4100205 (= e!2544485 tp!1241055)))

(assert (= (and b!4099451 ((_ is ElementMatch!12037) (regTwo!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100203))

(assert (= (and b!4099451 ((_ is Concat!19399) (regTwo!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100204))

(assert (= (and b!4099451 ((_ is Star!12037) (regTwo!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100205))

(assert (= (and b!4099451 ((_ is Union!12037) (regTwo!24587 (regTwo!24586 (regex!7132 rHead!24))))) b!4100206))

(declare-fun b!4100215 () Bool)

(declare-fun e!2544489 () Bool)

(declare-fun tp!1241059 () Bool)

(declare-fun tp!1241061 () Bool)

(assert (=> b!4100215 (= e!2544489 (and tp!1241059 tp!1241061))))

(assert (=> b!4099441 (= tp!1240908 e!2544489)))

(declare-fun b!4100213 () Bool)

(declare-fun tp!1241057 () Bool)

(declare-fun tp!1241058 () Bool)

(assert (=> b!4100213 (= e!2544489 (and tp!1241057 tp!1241058))))

(declare-fun b!4100212 () Bool)

(assert (=> b!4100212 (= e!2544489 tp_is_empty!21061)))

(declare-fun b!4100214 () Bool)

(declare-fun tp!1241060 () Bool)

(assert (=> b!4100214 (= e!2544489 tp!1241060)))

(assert (= (and b!4099441 ((_ is ElementMatch!12037) (regOne!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100212))

(assert (= (and b!4099441 ((_ is Concat!19399) (regOne!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100213))

(assert (= (and b!4099441 ((_ is Star!12037) (regOne!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100214))

(assert (= (and b!4099441 ((_ is Union!12037) (regOne!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100215))

(declare-fun b!4100219 () Bool)

(declare-fun e!2544490 () Bool)

(declare-fun tp!1241064 () Bool)

(declare-fun tp!1241066 () Bool)

(assert (=> b!4100219 (= e!2544490 (and tp!1241064 tp!1241066))))

(assert (=> b!4099441 (= tp!1240909 e!2544490)))

(declare-fun b!4100217 () Bool)

(declare-fun tp!1241062 () Bool)

(declare-fun tp!1241063 () Bool)

(assert (=> b!4100217 (= e!2544490 (and tp!1241062 tp!1241063))))

(declare-fun b!4100216 () Bool)

(assert (=> b!4100216 (= e!2544490 tp_is_empty!21061)))

(declare-fun b!4100218 () Bool)

(declare-fun tp!1241065 () Bool)

(assert (=> b!4100218 (= e!2544490 tp!1241065)))

(assert (= (and b!4099441 ((_ is ElementMatch!12037) (regTwo!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100216))

(assert (= (and b!4099441 ((_ is Concat!19399) (regTwo!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100217))

(assert (= (and b!4099441 ((_ is Star!12037) (regTwo!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100218))

(assert (= (and b!4099441 ((_ is Union!12037) (regTwo!24586 (regTwo!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100219))

(declare-fun b!4100223 () Bool)

(declare-fun e!2544491 () Bool)

(declare-fun tp!1241069 () Bool)

(declare-fun tp!1241071 () Bool)

(assert (=> b!4100223 (= e!2544491 (and tp!1241069 tp!1241071))))

(assert (=> b!4099424 (= tp!1240887 e!2544491)))

(declare-fun b!4100221 () Bool)

(declare-fun tp!1241067 () Bool)

(declare-fun tp!1241068 () Bool)

(assert (=> b!4100221 (= e!2544491 (and tp!1241067 tp!1241068))))

(declare-fun b!4100220 () Bool)

(assert (=> b!4100220 (= e!2544491 tp_is_empty!21061)))

(declare-fun b!4100222 () Bool)

(declare-fun tp!1241070 () Bool)

(assert (=> b!4100222 (= e!2544491 tp!1241070)))

(assert (= (and b!4099424 ((_ is ElementMatch!12037) (regOne!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100220))

(assert (= (and b!4099424 ((_ is Concat!19399) (regOne!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100221))

(assert (= (and b!4099424 ((_ is Star!12037) (regOne!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100222))

(assert (= (and b!4099424 ((_ is Union!12037) (regOne!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100223))

(declare-fun b!4100227 () Bool)

(declare-fun e!2544492 () Bool)

(declare-fun tp!1241074 () Bool)

(declare-fun tp!1241076 () Bool)

(assert (=> b!4100227 (= e!2544492 (and tp!1241074 tp!1241076))))

(assert (=> b!4099424 (= tp!1240888 e!2544492)))

(declare-fun b!4100225 () Bool)

(declare-fun tp!1241072 () Bool)

(declare-fun tp!1241073 () Bool)

(assert (=> b!4100225 (= e!2544492 (and tp!1241072 tp!1241073))))

(declare-fun b!4100224 () Bool)

(assert (=> b!4100224 (= e!2544492 tp_is_empty!21061)))

(declare-fun b!4100226 () Bool)

(declare-fun tp!1241075 () Bool)

(assert (=> b!4100226 (= e!2544492 tp!1241075)))

(assert (= (and b!4099424 ((_ is ElementMatch!12037) (regTwo!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100224))

(assert (= (and b!4099424 ((_ is Concat!19399) (regTwo!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100225))

(assert (= (and b!4099424 ((_ is Star!12037) (regTwo!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100226))

(assert (= (and b!4099424 ((_ is Union!12037) (regTwo!24586 (regOne!24587 (regex!7132 rHead!24))))) b!4100227))

(declare-fun b!4100231 () Bool)

(declare-fun e!2544493 () Bool)

(declare-fun tp!1241079 () Bool)

(declare-fun tp!1241081 () Bool)

(assert (=> b!4100231 (= e!2544493 (and tp!1241079 tp!1241081))))

(assert (=> b!4099450 (= tp!1240921 e!2544493)))

(declare-fun b!4100229 () Bool)

(declare-fun tp!1241077 () Bool)

(declare-fun tp!1241078 () Bool)

(assert (=> b!4100229 (= e!2544493 (and tp!1241077 tp!1241078))))

(declare-fun b!4100228 () Bool)

(assert (=> b!4100228 (= e!2544493 tp_is_empty!21061)))

(declare-fun b!4100230 () Bool)

(declare-fun tp!1241080 () Bool)

(assert (=> b!4100230 (= e!2544493 tp!1241080)))

(assert (= (and b!4099450 ((_ is ElementMatch!12037) (reg!12366 (regTwo!24586 (regex!7132 rHead!24))))) b!4100228))

(assert (= (and b!4099450 ((_ is Concat!19399) (reg!12366 (regTwo!24586 (regex!7132 rHead!24))))) b!4100229))

(assert (= (and b!4099450 ((_ is Star!12037) (reg!12366 (regTwo!24586 (regex!7132 rHead!24))))) b!4100230))

(assert (= (and b!4099450 ((_ is Union!12037) (reg!12366 (regTwo!24586 (regex!7132 rHead!24))))) b!4100231))

(declare-fun b!4100235 () Bool)

(declare-fun e!2544494 () Bool)

(declare-fun tp!1241084 () Bool)

(declare-fun tp!1241086 () Bool)

(assert (=> b!4100235 (= e!2544494 (and tp!1241084 tp!1241086))))

(assert (=> b!4099435 (= tp!1240900 e!2544494)))

(declare-fun b!4100233 () Bool)

(declare-fun tp!1241082 () Bool)

(declare-fun tp!1241083 () Bool)

(assert (=> b!4100233 (= e!2544494 (and tp!1241082 tp!1241083))))

(declare-fun b!4100232 () Bool)

(assert (=> b!4100232 (= e!2544494 tp_is_empty!21061)))

(declare-fun b!4100234 () Bool)

(declare-fun tp!1241085 () Bool)

(assert (=> b!4100234 (= e!2544494 tp!1241085)))

(assert (= (and b!4099435 ((_ is ElementMatch!12037) (regOne!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100232))

(assert (= (and b!4099435 ((_ is Concat!19399) (regOne!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100233))

(assert (= (and b!4099435 ((_ is Star!12037) (regOne!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100234))

(assert (= (and b!4099435 ((_ is Union!12037) (regOne!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100235))

(declare-fun b!4100239 () Bool)

(declare-fun e!2544495 () Bool)

(declare-fun tp!1241089 () Bool)

(declare-fun tp!1241091 () Bool)

(assert (=> b!4100239 (= e!2544495 (and tp!1241089 tp!1241091))))

(assert (=> b!4099435 (= tp!1240902 e!2544495)))

(declare-fun b!4100237 () Bool)

(declare-fun tp!1241087 () Bool)

(declare-fun tp!1241088 () Bool)

(assert (=> b!4100237 (= e!2544495 (and tp!1241087 tp!1241088))))

(declare-fun b!4100236 () Bool)

(assert (=> b!4100236 (= e!2544495 tp_is_empty!21061)))

(declare-fun b!4100238 () Bool)

(declare-fun tp!1241090 () Bool)

(assert (=> b!4100238 (= e!2544495 tp!1241090)))

(assert (= (and b!4099435 ((_ is ElementMatch!12037) (regTwo!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100236))

(assert (= (and b!4099435 ((_ is Concat!19399) (regTwo!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100237))

(assert (= (and b!4099435 ((_ is Star!12037) (regTwo!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100238))

(assert (= (and b!4099435 ((_ is Union!12037) (regTwo!24587 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100239))

(declare-fun b!4100243 () Bool)

(declare-fun e!2544496 () Bool)

(declare-fun tp!1241094 () Bool)

(declare-fun tp!1241096 () Bool)

(assert (=> b!4100243 (= e!2544496 (and tp!1241094 tp!1241096))))

(assert (=> b!4099434 (= tp!1240901 e!2544496)))

(declare-fun b!4100241 () Bool)

(declare-fun tp!1241092 () Bool)

(declare-fun tp!1241093 () Bool)

(assert (=> b!4100241 (= e!2544496 (and tp!1241092 tp!1241093))))

(declare-fun b!4100240 () Bool)

(assert (=> b!4100240 (= e!2544496 tp_is_empty!21061)))

(declare-fun b!4100242 () Bool)

(declare-fun tp!1241095 () Bool)

(assert (=> b!4100242 (= e!2544496 tp!1241095)))

(assert (= (and b!4099434 ((_ is ElementMatch!12037) (reg!12366 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100240))

(assert (= (and b!4099434 ((_ is Concat!19399) (reg!12366 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100241))

(assert (= (and b!4099434 ((_ is Star!12037) (reg!12366 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100242))

(assert (= (and b!4099434 ((_ is Union!12037) (reg!12366 (regex!7132 (h!49428 (t!339627 rTail!27)))))) b!4100243))

(declare-fun b!4100247 () Bool)

(declare-fun e!2544497 () Bool)

(declare-fun tp!1241099 () Bool)

(declare-fun tp!1241101 () Bool)

(assert (=> b!4100247 (= e!2544497 (and tp!1241099 tp!1241101))))

(assert (=> b!4099461 (= tp!1240933 e!2544497)))

(declare-fun b!4100245 () Bool)

(declare-fun tp!1241097 () Bool)

(declare-fun tp!1241098 () Bool)

(assert (=> b!4100245 (= e!2544497 (and tp!1241097 tp!1241098))))

(declare-fun b!4100244 () Bool)

(assert (=> b!4100244 (= e!2544497 tp_is_empty!21061)))

(declare-fun b!4100246 () Bool)

(declare-fun tp!1241100 () Bool)

(assert (=> b!4100246 (= e!2544497 tp!1241100)))

(assert (= (and b!4099461 ((_ is ElementMatch!12037) (regOne!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100244))

(assert (= (and b!4099461 ((_ is Concat!19399) (regOne!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100245))

(assert (= (and b!4099461 ((_ is Star!12037) (regOne!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100246))

(assert (= (and b!4099461 ((_ is Union!12037) (regOne!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100247))

(declare-fun b!4100251 () Bool)

(declare-fun e!2544498 () Bool)

(declare-fun tp!1241104 () Bool)

(declare-fun tp!1241106 () Bool)

(assert (=> b!4100251 (= e!2544498 (and tp!1241104 tp!1241106))))

(assert (=> b!4099461 (= tp!1240934 e!2544498)))

(declare-fun b!4100249 () Bool)

(declare-fun tp!1241102 () Bool)

(declare-fun tp!1241103 () Bool)

(assert (=> b!4100249 (= e!2544498 (and tp!1241102 tp!1241103))))

(declare-fun b!4100248 () Bool)

(assert (=> b!4100248 (= e!2544498 tp_is_empty!21061)))

(declare-fun b!4100250 () Bool)

(declare-fun tp!1241105 () Bool)

(assert (=> b!4100250 (= e!2544498 tp!1241105)))

(assert (= (and b!4099461 ((_ is ElementMatch!12037) (regTwo!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100248))

(assert (= (and b!4099461 ((_ is Concat!19399) (regTwo!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100249))

(assert (= (and b!4099461 ((_ is Star!12037) (regTwo!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100250))

(assert (= (and b!4099461 ((_ is Union!12037) (regTwo!24586 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100251))

(declare-fun b!4100259 () Bool)

(declare-fun e!2544500 () Bool)

(declare-fun tp!1241114 () Bool)

(declare-fun tp!1241116 () Bool)

(assert (=> b!4100259 (= e!2544500 (and tp!1241114 tp!1241116))))

(assert (=> b!4099445 (= tp!1240913 e!2544500)))

(declare-fun b!4100257 () Bool)

(declare-fun tp!1241112 () Bool)

(declare-fun tp!1241113 () Bool)

(assert (=> b!4100257 (= e!2544500 (and tp!1241112 tp!1241113))))

(declare-fun b!4100256 () Bool)

(assert (=> b!4100256 (= e!2544500 tp_is_empty!21061)))

(declare-fun b!4100258 () Bool)

(declare-fun tp!1241115 () Bool)

(assert (=> b!4100258 (= e!2544500 tp!1241115)))

(assert (= (and b!4099445 ((_ is ElementMatch!12037) (regOne!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100256))

(assert (= (and b!4099445 ((_ is Concat!19399) (regOne!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100257))

(assert (= (and b!4099445 ((_ is Star!12037) (regOne!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100258))

(assert (= (and b!4099445 ((_ is Union!12037) (regOne!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100259))

(declare-fun b!4100263 () Bool)

(declare-fun e!2544501 () Bool)

(declare-fun tp!1241119 () Bool)

(declare-fun tp!1241121 () Bool)

(assert (=> b!4100263 (= e!2544501 (and tp!1241119 tp!1241121))))

(assert (=> b!4099445 (= tp!1240914 e!2544501)))

(declare-fun b!4100261 () Bool)

(declare-fun tp!1241117 () Bool)

(declare-fun tp!1241118 () Bool)

(assert (=> b!4100261 (= e!2544501 (and tp!1241117 tp!1241118))))

(declare-fun b!4100260 () Bool)

(assert (=> b!4100260 (= e!2544501 tp_is_empty!21061)))

(declare-fun b!4100262 () Bool)

(declare-fun tp!1241120 () Bool)

(assert (=> b!4100262 (= e!2544501 tp!1241120)))

(assert (= (and b!4099445 ((_ is ElementMatch!12037) (regTwo!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100260))

(assert (= (and b!4099445 ((_ is Concat!19399) (regTwo!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100261))

(assert (= (and b!4099445 ((_ is Star!12037) (regTwo!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100262))

(assert (= (and b!4099445 ((_ is Union!12037) (regTwo!24586 (regOne!24586 (regex!7132 rHead!24))))) b!4100263))

(declare-fun b!4100271 () Bool)

(declare-fun e!2544503 () Bool)

(declare-fun tp!1241129 () Bool)

(declare-fun tp!1241131 () Bool)

(assert (=> b!4100271 (= e!2544503 (and tp!1241129 tp!1241131))))

(assert (=> b!4099428 (= tp!1240892 e!2544503)))

(declare-fun b!4100269 () Bool)

(declare-fun tp!1241127 () Bool)

(declare-fun tp!1241128 () Bool)

(assert (=> b!4100269 (= e!2544503 (and tp!1241127 tp!1241128))))

(declare-fun b!4100268 () Bool)

(assert (=> b!4100268 (= e!2544503 tp_is_empty!21061)))

(declare-fun b!4100270 () Bool)

(declare-fun tp!1241130 () Bool)

(assert (=> b!4100270 (= e!2544503 tp!1241130)))

(assert (= (and b!4099428 ((_ is ElementMatch!12037) (regOne!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100268))

(assert (= (and b!4099428 ((_ is Concat!19399) (regOne!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100269))

(assert (= (and b!4099428 ((_ is Star!12037) (regOne!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100270))

(assert (= (and b!4099428 ((_ is Union!12037) (regOne!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100271))

(declare-fun b!4100279 () Bool)

(declare-fun e!2544505 () Bool)

(declare-fun tp!1241139 () Bool)

(declare-fun tp!1241141 () Bool)

(assert (=> b!4100279 (= e!2544505 (and tp!1241139 tp!1241141))))

(assert (=> b!4099428 (= tp!1240893 e!2544505)))

(declare-fun b!4100277 () Bool)

(declare-fun tp!1241137 () Bool)

(declare-fun tp!1241138 () Bool)

(assert (=> b!4100277 (= e!2544505 (and tp!1241137 tp!1241138))))

(declare-fun b!4100276 () Bool)

(assert (=> b!4100276 (= e!2544505 tp_is_empty!21061)))

(declare-fun b!4100278 () Bool)

(declare-fun tp!1241140 () Bool)

(assert (=> b!4100278 (= e!2544505 tp!1241140)))

(assert (= (and b!4099428 ((_ is ElementMatch!12037) (regTwo!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100276))

(assert (= (and b!4099428 ((_ is Concat!19399) (regTwo!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100277))

(assert (= (and b!4099428 ((_ is Star!12037) (regTwo!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100278))

(assert (= (and b!4099428 ((_ is Union!12037) (regTwo!24586 (regTwo!24587 (regex!7132 rHead!24))))) b!4100279))

(declare-fun b!4100287 () Bool)

(declare-fun e!2544507 () Bool)

(declare-fun tp!1241149 () Bool)

(declare-fun tp!1241151 () Bool)

(assert (=> b!4100287 (= e!2544507 (and tp!1241149 tp!1241151))))

(assert (=> b!4099454 (= tp!1240926 e!2544507)))

(declare-fun b!4100285 () Bool)

(declare-fun tp!1241147 () Bool)

(declare-fun tp!1241148 () Bool)

(assert (=> b!4100285 (= e!2544507 (and tp!1241147 tp!1241148))))

(declare-fun b!4100284 () Bool)

(assert (=> b!4100284 (= e!2544507 tp_is_empty!21061)))

(declare-fun b!4100286 () Bool)

(declare-fun tp!1241150 () Bool)

(assert (=> b!4100286 (= e!2544507 tp!1241150)))

(assert (= (and b!4099454 ((_ is ElementMatch!12037) (reg!12366 (reg!12366 (regex!7132 rHead!24))))) b!4100284))

(assert (= (and b!4099454 ((_ is Concat!19399) (reg!12366 (reg!12366 (regex!7132 rHead!24))))) b!4100285))

(assert (= (and b!4099454 ((_ is Star!12037) (reg!12366 (reg!12366 (regex!7132 rHead!24))))) b!4100286))

(assert (= (and b!4099454 ((_ is Union!12037) (reg!12366 (reg!12366 (regex!7132 rHead!24))))) b!4100287))

(declare-fun b!4100295 () Bool)

(declare-fun e!2544509 () Bool)

(declare-fun tp!1241159 () Bool)

(declare-fun tp!1241161 () Bool)

(assert (=> b!4100295 (= e!2544509 (and tp!1241159 tp!1241161))))

(assert (=> b!4099463 (= tp!1240935 e!2544509)))

(declare-fun b!4100293 () Bool)

(declare-fun tp!1241157 () Bool)

(declare-fun tp!1241158 () Bool)

(assert (=> b!4100293 (= e!2544509 (and tp!1241157 tp!1241158))))

(declare-fun b!4100292 () Bool)

(assert (=> b!4100292 (= e!2544509 tp_is_empty!21061)))

(declare-fun b!4100294 () Bool)

(declare-fun tp!1241160 () Bool)

(assert (=> b!4100294 (= e!2544509 tp!1241160)))

(assert (= (and b!4099463 ((_ is ElementMatch!12037) (regOne!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100292))

(assert (= (and b!4099463 ((_ is Concat!19399) (regOne!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100293))

(assert (= (and b!4099463 ((_ is Star!12037) (regOne!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100294))

(assert (= (and b!4099463 ((_ is Union!12037) (regOne!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100295))

(declare-fun b!4100303 () Bool)

(declare-fun e!2544511 () Bool)

(declare-fun tp!1241169 () Bool)

(declare-fun tp!1241171 () Bool)

(assert (=> b!4100303 (= e!2544511 (and tp!1241169 tp!1241171))))

(assert (=> b!4099463 (= tp!1240937 e!2544511)))

(declare-fun b!4100301 () Bool)

(declare-fun tp!1241167 () Bool)

(declare-fun tp!1241168 () Bool)

(assert (=> b!4100301 (= e!2544511 (and tp!1241167 tp!1241168))))

(declare-fun b!4100300 () Bool)

(assert (=> b!4100300 (= e!2544511 tp_is_empty!21061)))

(declare-fun b!4100302 () Bool)

(declare-fun tp!1241170 () Bool)

(assert (=> b!4100302 (= e!2544511 tp!1241170)))

(assert (= (and b!4099463 ((_ is ElementMatch!12037) (regTwo!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100300))

(assert (= (and b!4099463 ((_ is Concat!19399) (regTwo!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100301))

(assert (= (and b!4099463 ((_ is Star!12037) (regTwo!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100302))

(assert (= (and b!4099463 ((_ is Union!12037) (regTwo!24587 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100303))

(declare-fun b!4100311 () Bool)

(declare-fun e!2544513 () Bool)

(declare-fun tp!1241179 () Bool)

(declare-fun tp!1241181 () Bool)

(assert (=> b!4100311 (= e!2544513 (and tp!1241179 tp!1241181))))

(assert (=> b!4099453 (= tp!1240923 e!2544513)))

(declare-fun b!4100309 () Bool)

(declare-fun tp!1241177 () Bool)

(declare-fun tp!1241178 () Bool)

(assert (=> b!4100309 (= e!2544513 (and tp!1241177 tp!1241178))))

(declare-fun b!4100308 () Bool)

(assert (=> b!4100308 (= e!2544513 tp_is_empty!21061)))

(declare-fun b!4100310 () Bool)

(declare-fun tp!1241180 () Bool)

(assert (=> b!4100310 (= e!2544513 tp!1241180)))

(assert (= (and b!4099453 ((_ is ElementMatch!12037) (regOne!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100308))

(assert (= (and b!4099453 ((_ is Concat!19399) (regOne!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100309))

(assert (= (and b!4099453 ((_ is Star!12037) (regOne!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100310))

(assert (= (and b!4099453 ((_ is Union!12037) (regOne!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100311))

(declare-fun b!4100319 () Bool)

(declare-fun e!2544515 () Bool)

(declare-fun tp!1241189 () Bool)

(declare-fun tp!1241191 () Bool)

(assert (=> b!4100319 (= e!2544515 (and tp!1241189 tp!1241191))))

(assert (=> b!4099453 (= tp!1240924 e!2544515)))

(declare-fun b!4100317 () Bool)

(declare-fun tp!1241187 () Bool)

(declare-fun tp!1241188 () Bool)

(assert (=> b!4100317 (= e!2544515 (and tp!1241187 tp!1241188))))

(declare-fun b!4100316 () Bool)

(assert (=> b!4100316 (= e!2544515 tp_is_empty!21061)))

(declare-fun b!4100318 () Bool)

(declare-fun tp!1241190 () Bool)

(assert (=> b!4100318 (= e!2544515 tp!1241190)))

(assert (= (and b!4099453 ((_ is ElementMatch!12037) (regTwo!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100316))

(assert (= (and b!4099453 ((_ is Concat!19399) (regTwo!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100317))

(assert (= (and b!4099453 ((_ is Star!12037) (regTwo!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100318))

(assert (= (and b!4099453 ((_ is Union!12037) (regTwo!24586 (reg!12366 (regex!7132 rHead!24))))) b!4100319))

(declare-fun b!4100327 () Bool)

(declare-fun e!2544517 () Bool)

(declare-fun tp!1241199 () Bool)

(declare-fun tp!1241201 () Bool)

(assert (=> b!4100327 (= e!2544517 (and tp!1241199 tp!1241201))))

(assert (=> b!4099462 (= tp!1240936 e!2544517)))

(declare-fun b!4100325 () Bool)

(declare-fun tp!1241197 () Bool)

(declare-fun tp!1241198 () Bool)

(assert (=> b!4100325 (= e!2544517 (and tp!1241197 tp!1241198))))

(declare-fun b!4100324 () Bool)

(assert (=> b!4100324 (= e!2544517 tp_is_empty!21061)))

(declare-fun b!4100326 () Bool)

(declare-fun tp!1241200 () Bool)

(assert (=> b!4100326 (= e!2544517 tp!1241200)))

(assert (= (and b!4099462 ((_ is ElementMatch!12037) (reg!12366 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100324))

(assert (= (and b!4099462 ((_ is Concat!19399) (reg!12366 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100325))

(assert (= (and b!4099462 ((_ is Star!12037) (reg!12366 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100326))

(assert (= (and b!4099462 ((_ is Union!12037) (reg!12366 (regTwo!24586 (regex!7132 (h!49428 rTail!27)))))) b!4100327))

(declare-fun b!4100372 () Bool)

(declare-fun tp!1241254 () Bool)

(declare-fun e!2544531 () Bool)

(declare-fun tp!1241253 () Bool)

(assert (=> b!4100372 (= e!2544531 (and (inv!58728 (left!33063 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))) tp!1241254 (inv!58728 (right!33393 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))) tp!1241253))))

(declare-fun b!4100374 () Bool)

(declare-fun e!2544532 () Bool)

(declare-fun tp!1241255 () Bool)

(assert (=> b!4100374 (= e!2544532 tp!1241255)))

(declare-fun b!4100373 () Bool)

(declare-fun inv!58735 (IArray!26691) Bool)

(assert (=> b!4100373 (= e!2544531 (and (inv!58735 (xs!16649 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))) e!2544532))))

(assert (=> b!4099294 (= tp!1240886 (and (inv!58728 (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166)))))) e!2544531))))

(assert (= (and b!4099294 ((_ is Node!13343) (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))) b!4100372))

(assert (= b!4100373 b!4100374))

(assert (= (and b!4099294 ((_ is Leaf!20624) (c!706231 (dynLambda!18866 (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))) (value!223906 (_1!24578 (get!14428 lt!1466166))))))) b!4100373))

(declare-fun m!4707285 () Bool)

(assert (=> b!4100372 m!4707285))

(declare-fun m!4707287 () Bool)

(assert (=> b!4100372 m!4707287))

(declare-fun m!4707289 () Bool)

(assert (=> b!4100373 m!4707289))

(assert (=> b!4099294 m!4706215))

(declare-fun b!4100390 () Bool)

(declare-fun e!2544536 () Bool)

(declare-fun tp!1241273 () Bool)

(declare-fun tp!1241275 () Bool)

(assert (=> b!4100390 (= e!2544536 (and tp!1241273 tp!1241275))))

(assert (=> b!4099438 (= tp!1240906 e!2544536)))

(declare-fun b!4100388 () Bool)

(declare-fun tp!1241271 () Bool)

(declare-fun tp!1241272 () Bool)

(assert (=> b!4100388 (= e!2544536 (and tp!1241271 tp!1241272))))

(declare-fun b!4100387 () Bool)

(assert (=> b!4100387 (= e!2544536 tp_is_empty!21061)))

(declare-fun b!4100389 () Bool)

(declare-fun tp!1241274 () Bool)

(assert (=> b!4100389 (= e!2544536 tp!1241274)))

(assert (= (and b!4099438 ((_ is ElementMatch!12037) (reg!12366 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100387))

(assert (= (and b!4099438 ((_ is Concat!19399) (reg!12366 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100388))

(assert (= (and b!4099438 ((_ is Star!12037) (reg!12366 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100389))

(assert (= (and b!4099438 ((_ is Union!12037) (reg!12366 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100390))

(declare-fun b!4100398 () Bool)

(declare-fun e!2544538 () Bool)

(declare-fun tp!1241283 () Bool)

(declare-fun tp!1241285 () Bool)

(assert (=> b!4100398 (= e!2544538 (and tp!1241283 tp!1241285))))

(assert (=> b!4099447 (= tp!1240915 e!2544538)))

(declare-fun b!4100396 () Bool)

(declare-fun tp!1241281 () Bool)

(declare-fun tp!1241282 () Bool)

(assert (=> b!4100396 (= e!2544538 (and tp!1241281 tp!1241282))))

(declare-fun b!4100395 () Bool)

(assert (=> b!4100395 (= e!2544538 tp_is_empty!21061)))

(declare-fun b!4100397 () Bool)

(declare-fun tp!1241284 () Bool)

(assert (=> b!4100397 (= e!2544538 tp!1241284)))

(assert (= (and b!4099447 ((_ is ElementMatch!12037) (regOne!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100395))

(assert (= (and b!4099447 ((_ is Concat!19399) (regOne!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100396))

(assert (= (and b!4099447 ((_ is Star!12037) (regOne!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100397))

(assert (= (and b!4099447 ((_ is Union!12037) (regOne!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100398))

(declare-fun b!4100406 () Bool)

(declare-fun e!2544541 () Bool)

(declare-fun tp!1241290 () Bool)

(declare-fun tp!1241294 () Bool)

(assert (=> b!4100406 (= e!2544541 (and tp!1241290 tp!1241294))))

(assert (=> b!4099447 (= tp!1240917 e!2544541)))

(declare-fun b!4100404 () Bool)

(declare-fun tp!1241288 () Bool)

(declare-fun tp!1241289 () Bool)

(assert (=> b!4100404 (= e!2544541 (and tp!1241288 tp!1241289))))

(declare-fun b!4100403 () Bool)

(assert (=> b!4100403 (= e!2544541 tp_is_empty!21061)))

(declare-fun b!4100405 () Bool)

(declare-fun tp!1241293 () Bool)

(assert (=> b!4100405 (= e!2544541 tp!1241293)))

(assert (= (and b!4099447 ((_ is ElementMatch!12037) (regTwo!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100403))

(assert (= (and b!4099447 ((_ is Concat!19399) (regTwo!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100404))

(assert (= (and b!4099447 ((_ is Star!12037) (regTwo!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100405))

(assert (= (and b!4099447 ((_ is Union!12037) (regTwo!24587 (regOne!24586 (regex!7132 rHead!24))))) b!4100406))

(declare-fun b!4100414 () Bool)

(declare-fun e!2544544 () Bool)

(declare-fun tp!1241297 () Bool)

(declare-fun tp!1241299 () Bool)

(assert (=> b!4100414 (= e!2544544 (and tp!1241297 tp!1241299))))

(assert (=> b!4099430 (= tp!1240894 e!2544544)))

(declare-fun b!4100412 () Bool)

(declare-fun tp!1241295 () Bool)

(declare-fun tp!1241296 () Bool)

(assert (=> b!4100412 (= e!2544544 (and tp!1241295 tp!1241296))))

(declare-fun b!4100411 () Bool)

(assert (=> b!4100411 (= e!2544544 tp_is_empty!21061)))

(declare-fun b!4100413 () Bool)

(declare-fun tp!1241298 () Bool)

(assert (=> b!4100413 (= e!2544544 tp!1241298)))

(assert (= (and b!4099430 ((_ is ElementMatch!12037) (regOne!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100411))

(assert (= (and b!4099430 ((_ is Concat!19399) (regOne!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100412))

(assert (= (and b!4099430 ((_ is Star!12037) (regOne!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100413))

(assert (= (and b!4099430 ((_ is Union!12037) (regOne!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100414))

(declare-fun b!4100418 () Bool)

(declare-fun e!2544545 () Bool)

(declare-fun tp!1241304 () Bool)

(declare-fun tp!1241306 () Bool)

(assert (=> b!4100418 (= e!2544545 (and tp!1241304 tp!1241306))))

(assert (=> b!4099430 (= tp!1240896 e!2544545)))

(declare-fun b!4100416 () Bool)

(declare-fun tp!1241302 () Bool)

(declare-fun tp!1241303 () Bool)

(assert (=> b!4100416 (= e!2544545 (and tp!1241302 tp!1241303))))

(declare-fun b!4100415 () Bool)

(assert (=> b!4100415 (= e!2544545 tp_is_empty!21061)))

(declare-fun b!4100417 () Bool)

(declare-fun tp!1241305 () Bool)

(assert (=> b!4100417 (= e!2544545 tp!1241305)))

(assert (= (and b!4099430 ((_ is ElementMatch!12037) (regTwo!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100415))

(assert (= (and b!4099430 ((_ is Concat!19399) (regTwo!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100416))

(assert (= (and b!4099430 ((_ is Star!12037) (regTwo!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100417))

(assert (= (and b!4099430 ((_ is Union!12037) (regTwo!24587 (regTwo!24587 (regex!7132 rHead!24))))) b!4100418))

(declare-fun b!4100422 () Bool)

(declare-fun e!2544546 () Bool)

(declare-fun tp!1241309 () Bool)

(declare-fun tp!1241311 () Bool)

(assert (=> b!4100422 (= e!2544546 (and tp!1241309 tp!1241311))))

(assert (=> b!4099437 (= tp!1240903 e!2544546)))

(declare-fun b!4100420 () Bool)

(declare-fun tp!1241307 () Bool)

(declare-fun tp!1241308 () Bool)

(assert (=> b!4100420 (= e!2544546 (and tp!1241307 tp!1241308))))

(declare-fun b!4100419 () Bool)

(assert (=> b!4100419 (= e!2544546 tp_is_empty!21061)))

(declare-fun b!4100421 () Bool)

(declare-fun tp!1241310 () Bool)

(assert (=> b!4100421 (= e!2544546 tp!1241310)))

(assert (= (and b!4099437 ((_ is ElementMatch!12037) (regOne!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100419))

(assert (= (and b!4099437 ((_ is Concat!19399) (regOne!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100420))

(assert (= (and b!4099437 ((_ is Star!12037) (regOne!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100421))

(assert (= (and b!4099437 ((_ is Union!12037) (regOne!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100422))

(declare-fun b!4100426 () Bool)

(declare-fun e!2544547 () Bool)

(declare-fun tp!1241314 () Bool)

(declare-fun tp!1241316 () Bool)

(assert (=> b!4100426 (= e!2544547 (and tp!1241314 tp!1241316))))

(assert (=> b!4099437 (= tp!1240904 e!2544547)))

(declare-fun b!4100424 () Bool)

(declare-fun tp!1241312 () Bool)

(declare-fun tp!1241313 () Bool)

(assert (=> b!4100424 (= e!2544547 (and tp!1241312 tp!1241313))))

(declare-fun b!4100423 () Bool)

(assert (=> b!4100423 (= e!2544547 tp_is_empty!21061)))

(declare-fun b!4100425 () Bool)

(declare-fun tp!1241315 () Bool)

(assert (=> b!4100425 (= e!2544547 tp!1241315)))

(assert (= (and b!4099437 ((_ is ElementMatch!12037) (regTwo!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100423))

(assert (= (and b!4099437 ((_ is Concat!19399) (regTwo!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100424))

(assert (= (and b!4099437 ((_ is Star!12037) (regTwo!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100425))

(assert (= (and b!4099437 ((_ is Union!12037) (regTwo!24586 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100426))

(declare-fun b!4100430 () Bool)

(declare-fun e!2544548 () Bool)

(declare-fun tp!1241319 () Bool)

(declare-fun tp!1241321 () Bool)

(assert (=> b!4100430 (= e!2544548 (and tp!1241319 tp!1241321))))

(assert (=> b!4099446 (= tp!1240916 e!2544548)))

(declare-fun b!4100428 () Bool)

(declare-fun tp!1241317 () Bool)

(declare-fun tp!1241318 () Bool)

(assert (=> b!4100428 (= e!2544548 (and tp!1241317 tp!1241318))))

(declare-fun b!4100427 () Bool)

(assert (=> b!4100427 (= e!2544548 tp_is_empty!21061)))

(declare-fun b!4100429 () Bool)

(declare-fun tp!1241320 () Bool)

(assert (=> b!4100429 (= e!2544548 tp!1241320)))

(assert (= (and b!4099446 ((_ is ElementMatch!12037) (reg!12366 (regOne!24586 (regex!7132 rHead!24))))) b!4100427))

(assert (= (and b!4099446 ((_ is Concat!19399) (reg!12366 (regOne!24586 (regex!7132 rHead!24))))) b!4100428))

(assert (= (and b!4099446 ((_ is Star!12037) (reg!12366 (regOne!24586 (regex!7132 rHead!24))))) b!4100429))

(assert (= (and b!4099446 ((_ is Union!12037) (reg!12366 (regOne!24586 (regex!7132 rHead!24))))) b!4100430))

(declare-fun b!4100434 () Bool)

(declare-fun e!2544549 () Bool)

(declare-fun tp!1241324 () Bool)

(declare-fun tp!1241326 () Bool)

(assert (=> b!4100434 (= e!2544549 (and tp!1241324 tp!1241326))))

(assert (=> b!4099429 (= tp!1240895 e!2544549)))

(declare-fun b!4100432 () Bool)

(declare-fun tp!1241322 () Bool)

(declare-fun tp!1241323 () Bool)

(assert (=> b!4100432 (= e!2544549 (and tp!1241322 tp!1241323))))

(declare-fun b!4100431 () Bool)

(assert (=> b!4100431 (= e!2544549 tp_is_empty!21061)))

(declare-fun b!4100433 () Bool)

(declare-fun tp!1241325 () Bool)

(assert (=> b!4100433 (= e!2544549 tp!1241325)))

(assert (= (and b!4099429 ((_ is ElementMatch!12037) (reg!12366 (regTwo!24587 (regex!7132 rHead!24))))) b!4100431))

(assert (= (and b!4099429 ((_ is Concat!19399) (reg!12366 (regTwo!24587 (regex!7132 rHead!24))))) b!4100432))

(assert (= (and b!4099429 ((_ is Star!12037) (reg!12366 (regTwo!24587 (regex!7132 rHead!24))))) b!4100433))

(assert (= (and b!4099429 ((_ is Union!12037) (reg!12366 (regTwo!24587 (regex!7132 rHead!24))))) b!4100434))

(declare-fun b!4100441 () Bool)

(declare-fun e!2544552 () Bool)

(declare-fun tp!1241332 () Bool)

(declare-fun tp!1241334 () Bool)

(assert (=> b!4100441 (= e!2544552 (and tp!1241332 tp!1241334))))

(assert (=> b!4099455 (= tp!1240925 e!2544552)))

(declare-fun b!4100439 () Bool)

(declare-fun tp!1241330 () Bool)

(declare-fun tp!1241331 () Bool)

(assert (=> b!4100439 (= e!2544552 (and tp!1241330 tp!1241331))))

(declare-fun b!4100438 () Bool)

(assert (=> b!4100438 (= e!2544552 tp_is_empty!21061)))

(declare-fun b!4100440 () Bool)

(declare-fun tp!1241333 () Bool)

(assert (=> b!4100440 (= e!2544552 tp!1241333)))

(assert (= (and b!4099455 ((_ is ElementMatch!12037) (regOne!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100438))

(assert (= (and b!4099455 ((_ is Concat!19399) (regOne!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100439))

(assert (= (and b!4099455 ((_ is Star!12037) (regOne!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100440))

(assert (= (and b!4099455 ((_ is Union!12037) (regOne!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100441))

(declare-fun b!4100445 () Bool)

(declare-fun e!2544553 () Bool)

(declare-fun tp!1241337 () Bool)

(declare-fun tp!1241339 () Bool)

(assert (=> b!4100445 (= e!2544553 (and tp!1241337 tp!1241339))))

(assert (=> b!4099455 (= tp!1240927 e!2544553)))

(declare-fun b!4100443 () Bool)

(declare-fun tp!1241335 () Bool)

(declare-fun tp!1241336 () Bool)

(assert (=> b!4100443 (= e!2544553 (and tp!1241335 tp!1241336))))

(declare-fun b!4100442 () Bool)

(assert (=> b!4100442 (= e!2544553 tp_is_empty!21061)))

(declare-fun b!4100444 () Bool)

(declare-fun tp!1241338 () Bool)

(assert (=> b!4100444 (= e!2544553 tp!1241338)))

(assert (= (and b!4099455 ((_ is ElementMatch!12037) (regTwo!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100442))

(assert (= (and b!4099455 ((_ is Concat!19399) (regTwo!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100443))

(assert (= (and b!4099455 ((_ is Star!12037) (regTwo!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100444))

(assert (= (and b!4099455 ((_ is Union!12037) (regTwo!24587 (reg!12366 (regex!7132 rHead!24))))) b!4100445))

(declare-fun b!4100446 () Bool)

(declare-fun e!2544554 () Bool)

(declare-fun tp!1241340 () Bool)

(assert (=> b!4100446 (= e!2544554 (and tp_is_empty!21061 tp!1241340))))

(assert (=> b!4099431 (= tp!1240897 e!2544554)))

(assert (= (and b!4099431 ((_ is Cons!44006) (t!339625 (t!339625 (t!339625 input!3491))))) b!4100446))

(declare-fun b!4100450 () Bool)

(declare-fun e!2544555 () Bool)

(declare-fun tp!1241343 () Bool)

(declare-fun tp!1241345 () Bool)

(assert (=> b!4100450 (= e!2544555 (and tp!1241343 tp!1241345))))

(assert (=> b!4099469 (= tp!1240945 e!2544555)))

(declare-fun b!4100448 () Bool)

(declare-fun tp!1241341 () Bool)

(declare-fun tp!1241342 () Bool)

(assert (=> b!4100448 (= e!2544555 (and tp!1241341 tp!1241342))))

(declare-fun b!4100447 () Bool)

(assert (=> b!4100447 (= e!2544555 tp_is_empty!21061)))

(declare-fun b!4100449 () Bool)

(declare-fun tp!1241344 () Bool)

(assert (=> b!4100449 (= e!2544555 tp!1241344)))

(assert (= (and b!4099469 ((_ is ElementMatch!12037) (reg!12366 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100447))

(assert (= (and b!4099469 ((_ is Concat!19399) (reg!12366 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100448))

(assert (= (and b!4099469 ((_ is Star!12037) (reg!12366 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100449))

(assert (= (and b!4099469 ((_ is Union!12037) (reg!12366 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100450))

(declare-fun b!4100457 () Bool)

(declare-fun e!2544560 () Bool)

(declare-fun tp!1241352 () Bool)

(declare-fun tp!1241354 () Bool)

(assert (=> b!4100457 (= e!2544560 (and tp!1241352 tp!1241354))))

(assert (=> b!4099468 (= tp!1240942 e!2544560)))

(declare-fun b!4100455 () Bool)

(declare-fun tp!1241350 () Bool)

(declare-fun tp!1241351 () Bool)

(assert (=> b!4100455 (= e!2544560 (and tp!1241350 tp!1241351))))

(declare-fun b!4100454 () Bool)

(assert (=> b!4100454 (= e!2544560 tp_is_empty!21061)))

(declare-fun b!4100456 () Bool)

(declare-fun tp!1241353 () Bool)

(assert (=> b!4100456 (= e!2544560 tp!1241353)))

(assert (= (and b!4099468 ((_ is ElementMatch!12037) (regOne!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100454))

(assert (= (and b!4099468 ((_ is Concat!19399) (regOne!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100455))

(assert (= (and b!4099468 ((_ is Star!12037) (regOne!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100456))

(assert (= (and b!4099468 ((_ is Union!12037) (regOne!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100457))

(declare-fun b!4100461 () Bool)

(declare-fun e!2544561 () Bool)

(declare-fun tp!1241357 () Bool)

(declare-fun tp!1241359 () Bool)

(assert (=> b!4100461 (= e!2544561 (and tp!1241357 tp!1241359))))

(assert (=> b!4099468 (= tp!1240943 e!2544561)))

(declare-fun b!4100459 () Bool)

(declare-fun tp!1241355 () Bool)

(declare-fun tp!1241356 () Bool)

(assert (=> b!4100459 (= e!2544561 (and tp!1241355 tp!1241356))))

(declare-fun b!4100458 () Bool)

(assert (=> b!4100458 (= e!2544561 tp_is_empty!21061)))

(declare-fun b!4100460 () Bool)

(declare-fun tp!1241358 () Bool)

(assert (=> b!4100460 (= e!2544561 tp!1241358)))

(assert (= (and b!4099468 ((_ is ElementMatch!12037) (regTwo!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100458))

(assert (= (and b!4099468 ((_ is Concat!19399) (regTwo!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100459))

(assert (= (and b!4099468 ((_ is Star!12037) (regTwo!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100460))

(assert (= (and b!4099468 ((_ is Union!12037) (regTwo!24586 (reg!12366 (regex!7132 (h!49428 rTail!27)))))) b!4100461))

(declare-fun b!4100465 () Bool)

(declare-fun e!2544562 () Bool)

(declare-fun tp!1241362 () Bool)

(declare-fun tp!1241364 () Bool)

(assert (=> b!4100465 (= e!2544562 (and tp!1241362 tp!1241364))))

(assert (=> b!4099439 (= tp!1240905 e!2544562)))

(declare-fun b!4100463 () Bool)

(declare-fun tp!1241360 () Bool)

(declare-fun tp!1241361 () Bool)

(assert (=> b!4100463 (= e!2544562 (and tp!1241360 tp!1241361))))

(declare-fun b!4100462 () Bool)

(assert (=> b!4100462 (= e!2544562 tp_is_empty!21061)))

(declare-fun b!4100464 () Bool)

(declare-fun tp!1241363 () Bool)

(assert (=> b!4100464 (= e!2544562 tp!1241363)))

(assert (= (and b!4099439 ((_ is ElementMatch!12037) (regOne!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100462))

(assert (= (and b!4099439 ((_ is Concat!19399) (regOne!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100463))

(assert (= (and b!4099439 ((_ is Star!12037) (regOne!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100464))

(assert (= (and b!4099439 ((_ is Union!12037) (regOne!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100465))

(declare-fun b!4100469 () Bool)

(declare-fun e!2544563 () Bool)

(declare-fun tp!1241367 () Bool)

(declare-fun tp!1241369 () Bool)

(assert (=> b!4100469 (= e!2544563 (and tp!1241367 tp!1241369))))

(assert (=> b!4099439 (= tp!1240907 e!2544563)))

(declare-fun b!4100467 () Bool)

(declare-fun tp!1241365 () Bool)

(declare-fun tp!1241366 () Bool)

(assert (=> b!4100467 (= e!2544563 (and tp!1241365 tp!1241366))))

(declare-fun b!4100466 () Bool)

(assert (=> b!4100466 (= e!2544563 tp_is_empty!21061)))

(declare-fun b!4100468 () Bool)

(declare-fun tp!1241368 () Bool)

(assert (=> b!4100468 (= e!2544563 tp!1241368)))

(assert (= (and b!4099439 ((_ is ElementMatch!12037) (regTwo!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100466))

(assert (= (and b!4099439 ((_ is Concat!19399) (regTwo!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100467))

(assert (= (and b!4099439 ((_ is Star!12037) (regTwo!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100468))

(assert (= (and b!4099439 ((_ is Union!12037) (regTwo!24587 (regOne!24587 (regex!7132 (h!49428 rTail!27)))))) b!4100469))

(declare-fun b_lambda!120483 () Bool)

(assert (= b_lambda!120467 (or (and b!4100156 b_free!114785 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4098827 b_free!114765 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4099466 b_free!114781 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4099007 b_free!114773) (and b!4098834 b_free!114761 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) b_lambda!120483)))

(declare-fun b_lambda!120485 () Bool)

(assert (= b_lambda!120475 (or d!1216865 b_lambda!120485)))

(declare-fun bs!593833 () Bool)

(declare-fun d!1217473 () Bool)

(assert (= bs!593833 (and d!1217473 d!1216865)))

(assert (=> bs!593833 (= (dynLambda!18870 lambda!128185 (h!49428 (t!339627 rTail!27))) (ruleValid!3042 thiss!26455 (h!49428 (t!339627 rTail!27))))))

(assert (=> bs!593833 m!4706177))

(assert (=> b!4099892 d!1217473))

(declare-fun b_lambda!120487 () Bool)

(assert (= b_lambda!120431 (or (and b!4098834 b_free!114763 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4099007 b_free!114775 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4100156 b_free!114787 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4098827 b_free!114767 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4099466 b_free!114783 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) b_lambda!120487)))

(declare-fun b_lambda!120489 () Bool)

(assert (= b_lambda!120471 (or (and b!4098827 b_free!114767 (= (toChars!9595 (transformation!7132 (h!49428 rTail!27))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4100156 b_free!114787 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4098834 b_free!114763 (= (toChars!9595 (transformation!7132 rHead!24)) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4099007 b_free!114775) (and b!4099466 b_free!114783 (= (toChars!9595 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toChars!9595 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) b_lambda!120489)))

(declare-fun b_lambda!120491 () Bool)

(assert (= b_lambda!120451 (or d!1217065 b_lambda!120491)))

(declare-fun bs!593834 () Bool)

(declare-fun d!1217475 () Bool)

(assert (= bs!593834 (and d!1217475 d!1217065)))

(assert (=> bs!593834 (= (dynLambda!18870 lambda!128211 (h!49428 lt!1466111)) (ruleValid!3042 thiss!26455 (h!49428 lt!1466111)))))

(assert (=> bs!593834 m!4706587))

(assert (=> b!4099618 d!1217475))

(declare-fun b_lambda!120493 () Bool)

(assert (= b_lambda!120435 (or (and b!4099007 b_free!114773 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4098827 b_free!114765 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4100156 b_free!114785 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4099466 b_free!114781 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) (and b!4098834 b_free!114761 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (rule!10280 (_1!24578 (get!14428 lt!1466166))))))) b_lambda!120493)))

(declare-fun b_lambda!120495 () Bool)

(assert (= b_lambda!120441 (or d!1217045 b_lambda!120495)))

(declare-fun bs!593835 () Bool)

(declare-fun d!1217477 () Bool)

(assert (= bs!593835 (and d!1217477 d!1217045)))

(assert (=> bs!593835 (= (dynLambda!18870 lambda!128209 (h!49428 (t!339627 rTail!27))) (ruleValid!3042 thiss!26455 (h!49428 (t!339627 rTail!27))))))

(assert (=> bs!593835 m!4706177))

(assert (=> b!4099510 d!1217477))

(declare-fun b_lambda!120497 () Bool)

(assert (= b_lambda!120443 (or d!1216955 b_lambda!120497)))

(declare-fun bs!593836 () Bool)

(declare-fun d!1217479 () Bool)

(assert (= bs!593836 (and d!1217479 d!1216955)))

(assert (=> bs!593836 (= (dynLambda!18870 lambda!128197 (h!49428 lt!1466109)) (ruleValid!3042 thiss!26455 (h!49428 lt!1466109)))))

(assert (=> bs!593836 m!4706427))

(assert (=> b!4099514 d!1217479))

(declare-fun b_lambda!120499 () Bool)

(assert (= b_lambda!120473 (or (and b!4100156 b_free!114785 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 (t!339627 rTail!27)))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4098827 b_free!114765 (= (toValue!9736 (transformation!7132 (h!49428 rTail!27))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4099466 b_free!114781 (= (toValue!9736 (transformation!7132 (h!49428 (t!339627 (t!339627 rTail!27))))) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) (and b!4099007 b_free!114773) (and b!4098834 b_free!114761 (= (toValue!9736 (transformation!7132 rHead!24)) (toValue!9736 (transformation!7132 (h!49428 (t!339627 rTail!27)))))) b_lambda!120499)))

(check-sat (not b!4100251) (not b!4100464) (not d!1217167) (not b!4100139) (not b!4100372) (not b!4100152) (not b!4099942) (not b!4100446) (not b!4099778) (not d!1217225) (not d!1217137) (not b_next!115469) (not b!4099943) (not b!4100295) (not b!4100425) (not b_lambda!120499) (not bm!289711) (not d!1217163) (not d!1217345) (not b!4099563) b_and!316577 (not d!1217183) (not d!1217169) (not b!4099581) (not b!4099623) (not b!4099512) (not b!4100194) (not b!4099944) (not bm!289755) (not d!1217127) (not bm!289715) (not d!1217219) (not b!4099597) (not d!1217161) (not b!4099601) (not b!4099624) (not d!1217177) b_and!316599 (not b!4099931) (not d!1217439) (not bm!289709) (not b!4100456) (not b!4099895) (not b!4100197) (not b!4100279) (not bm!289713) (not b!4100463) (not b!4099910) (not b!4100293) (not b!4100457) (not b!4099871) (not b!4099582) (not d!1217373) (not b!4100148) (not b!4099947) (not b!4100271) (not b!4100389) (not b!4099893) (not b!4100241) (not b!4099936) (not b!4100015) (not b_lambda!120437) b_and!316585 (not tb!246777) (not b!4099584) (not b!4100432) (not b!4099946) (not bm!289712) (not b!4100468) (not b!4099925) (not b!4100185) (not bm!289663) (not b_lambda!120445) (not b!4100218) (not b!4100465) (not b!4099773) (not b!4100390) (not b!4100217) (not b!4100181) b_and!316601 (not d!1217305) (not d!1217323) (not bs!593836) (not d!1217387) (not b_lambda!120447) (not b!4099513) (not b!4100430) (not b!4100230) (not b_lambda!120493) (not b!4100119) (not d!1217283) (not b!4100155) (not b!4099774) (not b!4099950) (not bs!593833) (not b!4100416) (not b_lambda!120487) (not b!4100460) (not bm!289661) b_and!316581 (not b!4100227) (not b!4099565) (not b!4099525) (not b!4100091) (not b!4100414) (not d!1217229) (not b!4100420) (not b!4100422) (not b!4099906) (not b!4100147) (not b!4099556) (not b!4100469) (not b!4100263) b_and!316583 (not b!4099568) (not b!4100201) (not b!4099808) (not b!4099939) (not d!1217369) (not tb!246753) (not b!4099509) (not b!4099503) (not b!4100286) (not b!4100424) (not b_lambda!120495) (not d!1217171) (not b!4100105) (not b!4100103) (not b!4099655) (not b!4100159) (not b!4100115) (not b_next!115491) (not d!1217151) (not b!4100101) (not b!4099604) b_and!316587 (not b_next!115465) (not b!4099648) (not tb!246761) (not d!1217221) (not b!4100149) (not b!4100192) (not bs!593835) (not b!4100257) (not b!4100259) (not b!4100448) (not b!4100190) (not b_lambda!120449) (not b!4099517) (not b!4100196) (not b!4100005) (not b!4100373) (not b!4099642) (not b!4100178) (not b!4099775) (not b!4100318) (not b!4099507) (not bm!289665) (not b!4099619) (not b!4099558) (not b_lambda!120453) (not b!4100426) (not b!4099611) (not b!4100237) (not d!1217353) (not b!4100246) (not b!4100198) (not b!4100325) (not b!4099567) (not b!4099891) (not b_next!115479) (not b!4099638) (not b!4100433) (not b!4100226) (not bs!593834) (not b!4100441) (not b!4100140) (not b!4100418) (not b!4100269) tp_is_empty!21061 (not b!4100154) (not d!1217157) (not b_lambda!120497) (not b!4099797) (not bm!289757) (not b!4099550) (not b!4100204) (not d!1217223) (not b!4100165) (not b!4100182) (not b!4099644) (not b!4099646) (not b!4100136) (not b!4100277) (not b!4100450) (not d!1217135) (not b!4100245) (not b!4099615) (not b!4100406) (not b!4100144) (not b!4100151) (not b!4100137) (not b!4099616) (not b!4099948) (not b!4099600) (not b!4099576) (not b!4099527) (not b!4099506) (not b!4099955) (not b!4099935) (not b!4100398) (not b!4099577) (not d!1217179) (not b!4100184) (not b!4100319) (not bm!289710) (not d!1217181) (not b!4099587) (not b!4099801) (not b_next!115471) (not b!4099956) (not b!4100250) (not b_lambda!120489) (not b!4100100) (not b!4099585) (not b!4099999) (not b!4100327) (not b!4100374) (not bm!289717) (not b!4099505) (not b!4100234) (not b!4100310) (not b!4100311) (not b!4099628) (not d!1217203) (not tb!246769) (not b!4100160) (not b!4100413) (not b!4100202) (not b!4100317) (not d!1217329) (not b!4100404) (not b!4099894) (not b!4100249) (not b!4099849) (not b!4100189) (not b!4100109) (not b!4099621) (not d!1217321) (not tb!246817) b_and!316589 (not b!4100166) (not d!1217335) (not b!4099633) (not b!4100118) (not b!4100107) (not b_next!115477) (not b!4100421) (not b!4100108) (not b!4099933) (not b!4099613) (not b!4100417) (not tb!246833) (not b!4099912) (not b!4100188) (not b!4099654) (not b!4099617) (not b!4100287) (not d!1217193) (not b!4100301) (not b!4099595) (not b!4100455) (not b!4100010) (not b!4100434) (not b!4100243) (not b!4099502) (not b!4100145) (not b!4100270) (not b!4099599) (not b!4100444) (not b!4099626) (not b!4099583) (not b!4100242) (not d!1217173) (not b!4100104) (not d!1217293) (not b!4100397) (not b!4100303) (not bm!289660) (not b!4100219) (not b!4099294) (not b!4099579) (not b!4100193) (not b_next!115485) (not b!4100445) (not b!4100309) (not b!4100117) (not b!4099580) (not b!4100164) (not b!4099573) (not b!4100449) (not b!4100231) (not b_lambda!120483) (not b!4099949) (not d!1217423) (not b!4099518) (not b!4100205) (not b!4100221) (not b!4100285) (not b!4100153) (not b!4100016) (not b!4100223) (not b!4100113) (not b!4099945) (not d!1217377) (not b!4100215) (not b!4100405) (not d!1217285) (not b!4099515) (not b!4100186) (not b_next!115487) (not b_next!115467) (not b!4100229) (not bm!289664) (not b_next!115489) (not b!4100302) (not b_lambda!120491) (not b!4100200) (not b!4100238) (not d!1217153) (not b!4100247) (not b!4100009) (not b!4100278) (not b!4100114) (not b!4100443) (not b!4099930) (not d!1217367) (not b!4099632) (not d!1217309) (not b!4099528) (not d!1217325) (not b!4100459) (not b!4100258) (not bm!289708) (not b_lambda!120485) (not b!4099511) b_and!316575 (not b!4100099) (not b!4100294) (not b!4100135) (not b!4100439) (not b!4100388) (not d!1217213) (not b!4099559) (not b!4100206) (not b!4100239) (not bm!289714) (not d!1217143) (not b!4099995) (not bm!289744) (not b!4100233) (not b!4099952) (not b!4100176) (not bm!289666) (not b!4100262) (not b!4100141) (not b!4100158) (not b!4100429) (not b!4100225) (not b!4100440) (not b!4100007) (not d!1217227) (not b!4100467) (not b!4099649) b_and!316579 (not d!1217303) (not b!4099561) (not b!4100235) (not bm!289716) (not b!4099630) (not b!4100222) (not b!4100213) (not b!4100261) (not b!4100396) (not b!4100214) (not b!4100177) (not b!4100412) (not d!1217231) (not b!4099998) (not b!4099954) (not b!4100461) (not b!4099574) (not b!4100326) (not b!4099589) (not b!4099639) (not b!4100143) (not d!1217165) (not b!4099526) (not b!4100428) (not b!4100180))
(check-sat (not b_next!115469) b_and!316577 b_and!316599 b_and!316585 b_and!316601 b_and!316581 b_and!316583 (not b_next!115479) (not b_next!115471) (not b_next!115485) b_and!316575 b_and!316579 (not b_next!115491) b_and!316587 (not b_next!115465) b_and!316589 (not b_next!115477) (not b_next!115487) (not b_next!115467) (not b_next!115489))

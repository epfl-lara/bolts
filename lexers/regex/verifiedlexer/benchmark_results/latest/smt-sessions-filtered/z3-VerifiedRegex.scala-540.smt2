; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14758 () Bool)

(assert start!14758)

(declare-fun b!140729 () Bool)

(declare-fun b_free!4583 () Bool)

(declare-fun b_next!4583 () Bool)

(assert (=> b!140729 (= b_free!4583 (not b_next!4583))))

(declare-fun tp!74076 () Bool)

(declare-fun b_and!7005 () Bool)

(assert (=> b!140729 (= tp!74076 b_and!7005)))

(declare-fun b_free!4585 () Bool)

(declare-fun b_next!4585 () Bool)

(assert (=> b!140729 (= b_free!4585 (not b_next!4585))))

(declare-fun tp!74084 () Bool)

(declare-fun b_and!7007 () Bool)

(assert (=> b!140729 (= tp!74084 b_and!7007)))

(declare-fun b!140724 () Bool)

(declare-fun b_free!4587 () Bool)

(declare-fun b_next!4587 () Bool)

(assert (=> b!140724 (= b_free!4587 (not b_next!4587))))

(declare-fun tp!74085 () Bool)

(declare-fun b_and!7009 () Bool)

(assert (=> b!140724 (= tp!74085 b_and!7009)))

(declare-fun b_free!4589 () Bool)

(declare-fun b_next!4589 () Bool)

(assert (=> b!140724 (= b_free!4589 (not b_next!4589))))

(declare-fun tp!74082 () Bool)

(declare-fun b_and!7011 () Bool)

(assert (=> b!140724 (= tp!74082 b_and!7011)))

(declare-fun b!140741 () Bool)

(declare-fun b_free!4591 () Bool)

(declare-fun b_next!4591 () Bool)

(assert (=> b!140741 (= b_free!4591 (not b_next!4591))))

(declare-fun tp!74083 () Bool)

(declare-fun b_and!7013 () Bool)

(assert (=> b!140741 (= tp!74083 b_and!7013)))

(declare-fun b_free!4593 () Bool)

(declare-fun b_next!4593 () Bool)

(assert (=> b!140741 (= b_free!4593 (not b_next!4593))))

(declare-fun tp!74081 () Bool)

(declare-fun b_and!7015 () Bool)

(assert (=> b!140741 (= tp!74081 b_and!7015)))

(declare-fun b_free!4595 () Bool)

(declare-fun b_next!4595 () Bool)

(assert (=> start!14758 (= b_free!4595 (not b_next!4595))))

(declare-fun tp!74078 () Bool)

(declare-fun b_and!7017 () Bool)

(assert (=> start!14758 (= tp!74078 b_and!7017)))

(declare-fun e!82940 () Bool)

(assert (=> b!140724 (= e!82940 (and tp!74085 tp!74082))))

(declare-fun tp!74087 () Bool)

(declare-fun e!82942 () Bool)

(declare-fun b!140725 () Bool)

(declare-datatypes ((List!2409 0))(
  ( (Nil!2399) (Cons!2399 (h!7796 (_ BitVec 16)) (t!23411 List!2409)) )
))
(declare-datatypes ((TokenValue!425 0))(
  ( (FloatLiteralValue!850 (text!3420 List!2409)) (TokenValueExt!424 (__x!2337 Int)) (Broken!2125 (value!15775 List!2409)) (Object!434) (End!425) (Def!425) (Underscore!425) (Match!425) (Else!425) (Error!425) (Case!425) (If!425) (Extends!425) (Abstract!425) (Class!425) (Val!425) (DelimiterValue!850 (del!485 List!2409)) (KeywordValue!431 (value!15776 List!2409)) (CommentValue!850 (value!15777 List!2409)) (WhitespaceValue!850 (value!15778 List!2409)) (IndentationValue!425 (value!15779 List!2409)) (String!3204) (Int32!425) (Broken!2126 (value!15780 List!2409)) (Boolean!426) (Unit!1813) (OperatorValue!428 (op!485 List!2409)) (IdentifierValue!850 (value!15781 List!2409)) (IdentifierValue!851 (value!15782 List!2409)) (WhitespaceValue!851 (value!15783 List!2409)) (True!850) (False!850) (Broken!2127 (value!15784 List!2409)) (Broken!2128 (value!15785 List!2409)) (True!851) (RightBrace!425) (RightBracket!425) (Colon!425) (Null!425) (Comma!425) (LeftBracket!425) (False!851) (LeftBrace!425) (ImaginaryLiteralValue!425 (text!3421 List!2409)) (StringLiteralValue!1275 (value!15786 List!2409)) (EOFValue!425 (value!15787 List!2409)) (IdentValue!425 (value!15788 List!2409)) (DelimiterValue!851 (value!15789 List!2409)) (DedentValue!425 (value!15790 List!2409)) (NewLineValue!425 (value!15791 List!2409)) (IntegerValue!1275 (value!15792 (_ BitVec 32)) (text!3422 List!2409)) (IntegerValue!1276 (value!15793 Int) (text!3423 List!2409)) (Times!425) (Or!425) (Equal!425) (Minus!425) (Broken!2129 (value!15794 List!2409)) (And!425) (Div!425) (LessEqual!425) (Mod!425) (Concat!1052) (Not!425) (Plus!425) (SpaceValue!425 (value!15795 List!2409)) (IntegerValue!1277 (value!15796 Int) (text!3424 List!2409)) (StringLiteralValue!1276 (text!3425 List!2409)) (FloatLiteralValue!851 (text!3426 List!2409)) (BytesLiteralValue!425 (value!15797 List!2409)) (CommentValue!851 (value!15798 List!2409)) (StringLiteralValue!1277 (value!15799 List!2409)) (ErrorTokenValue!425 (msg!486 List!2409)) )
))
(declare-datatypes ((C!2176 0))(
  ( (C!2177 (val!974 Int)) )
))
(declare-datatypes ((List!2410 0))(
  ( (Nil!2400) (Cons!2400 (h!7797 C!2176) (t!23412 List!2410)) )
))
(declare-datatypes ((IArray!1267 0))(
  ( (IArray!1268 (innerList!691 List!2410)) )
))
(declare-datatypes ((Conc!633 0))(
  ( (Node!633 (left!1821 Conc!633) (right!2151 Conc!633) (csize!1496 Int) (cheight!844 Int)) (Leaf!1174 (xs!3228 IArray!1267) (csize!1497 Int)) (Empty!633) )
))
(declare-datatypes ((BalanceConc!1274 0))(
  ( (BalanceConc!1275 (c!29272 Conc!633)) )
))
(declare-datatypes ((TokenValueInjection!622 0))(
  ( (TokenValueInjection!623 (toValue!1014 Int) (toChars!873 Int)) )
))
(declare-datatypes ((Regex!627 0))(
  ( (ElementMatch!627 (c!29273 C!2176)) (Concat!1053 (regOne!1766 Regex!627) (regTwo!1766 Regex!627)) (EmptyExpr!627) (Star!627 (reg!956 Regex!627)) (EmptyLang!627) (Union!627 (regOne!1767 Regex!627) (regTwo!1767 Regex!627)) )
))
(declare-datatypes ((String!3205 0))(
  ( (String!3206 (value!15800 String)) )
))
(declare-datatypes ((Rule!606 0))(
  ( (Rule!607 (regex!403 Regex!627) (tag!581 String!3205) (isSeparator!403 Bool) (transformation!403 TokenValueInjection!622)) )
))
(declare-datatypes ((Token!550 0))(
  ( (Token!551 (value!15801 TokenValue!425) (rule!910 Rule!606) (size!2105 Int) (originalCharacters!446 List!2410)) )
))
(declare-datatypes ((List!2411 0))(
  ( (Nil!2401) (Cons!2401 (h!7798 Token!550) (t!23413 List!2411)) )
))
(declare-fun l2!3099 () List!2411)

(declare-fun e!82932 () Bool)

(declare-fun inv!3154 (String!3205) Bool)

(declare-fun inv!3157 (TokenValueInjection!622) Bool)

(assert (=> b!140725 (= e!82942 (and tp!74087 (inv!3154 (tag!581 (rule!910 (h!7798 l2!3099)))) (inv!3157 (transformation!403 (rule!910 (h!7798 l2!3099)))) e!82932))))

(declare-fun b!140726 () Bool)

(declare-fun e!82928 () Bool)

(declare-fun e!82927 () Bool)

(declare-fun tp!74086 () Bool)

(assert (=> b!140726 (= e!82928 (and e!82927 tp!74086))))

(declare-fun b!140727 () Bool)

(declare-fun e!82931 () Bool)

(declare-fun e!82937 () Bool)

(declare-fun l1!3130 () List!2411)

(declare-fun tp!74080 () Bool)

(declare-fun inv!21 (TokenValue!425) Bool)

(assert (=> b!140727 (= e!82937 (and (inv!21 (value!15801 (h!7798 l1!3130))) e!82931 tp!74080))))

(assert (=> b!140729 (= e!82932 (and tp!74076 tp!74084))))

(declare-fun e!82939 () Bool)

(declare-fun tp!74077 () Bool)

(declare-fun b!140730 () Bool)

(declare-fun inv!3158 (Token!550) Bool)

(assert (=> b!140730 (= e!82939 (and (inv!3158 (h!7798 l1!3130)) e!82937 tp!74077))))

(declare-fun b!140731 () Bool)

(declare-fun res!65406 () Bool)

(declare-fun e!82926 () Bool)

(assert (=> b!140731 (=> (not res!65406) (not e!82926))))

(declare-datatypes ((List!2412 0))(
  ( (Nil!2402) (Cons!2402 (h!7799 Rule!606) (t!23414 List!2412)) )
))
(declare-fun rules!4268 () List!2412)

(declare-fun p!3028 () Int)

(declare-fun dynLambda!797 (Int Token!550 Token!550 List!2412) Bool)

(declare-fun last!37 (List!2411) Token!550)

(declare-fun head!562 (List!2411) Token!550)

(assert (=> b!140731 (= res!65406 (dynLambda!797 p!3028 (last!37 l1!3130) (head!562 l2!3099) rules!4268))))

(declare-fun b!140732 () Bool)

(declare-fun tp!74089 () Bool)

(declare-fun e!82935 () Bool)

(assert (=> b!140732 (= e!82931 (and tp!74089 (inv!3154 (tag!581 (rule!910 (h!7798 l1!3130)))) (inv!3157 (transformation!403 (rule!910 (h!7798 l1!3130)))) e!82935))))

(declare-fun b!140733 () Bool)

(declare-fun res!65404 () Bool)

(assert (=> b!140733 (=> (not res!65404) (not e!82926))))

(declare-fun e!82933 () Bool)

(assert (=> b!140733 (= res!65404 e!82933)))

(declare-fun res!65402 () Bool)

(assert (=> b!140733 (=> res!65402 e!82933)))

(get-info :version)

(assert (=> b!140733 (= res!65402 (not ((_ is Cons!2401) l1!3130)))))

(declare-fun b!140734 () Bool)

(declare-fun res!65403 () Bool)

(assert (=> b!140734 (=> (not res!65403) (not e!82926))))

(declare-fun isEmpty!918 (List!2411) Bool)

(assert (=> b!140734 (= res!65403 (isEmpty!918 (t!23413 l1!3130)))))

(declare-fun b!140735 () Bool)

(declare-fun res!65400 () Bool)

(assert (=> b!140735 (=> (not res!65400) (not e!82926))))

(assert (=> b!140735 (= res!65400 (not (isEmpty!918 l1!3130)))))

(declare-fun b!140736 () Bool)

(declare-fun tp!74075 () Bool)

(assert (=> b!140736 (= e!82927 (and tp!74075 (inv!3154 (tag!581 (h!7799 rules!4268))) (inv!3157 (transformation!403 (h!7799 rules!4268))) e!82940))))

(declare-fun b!140737 () Bool)

(assert (=> b!140737 (= e!82933 (isEmpty!918 (t!23413 l1!3130)))))

(declare-fun b!140738 () Bool)

(declare-fun res!65409 () Bool)

(assert (=> b!140738 (=> (not res!65409) (not e!82926))))

(declare-datatypes ((LexerInterface!289 0))(
  ( (LexerInterfaceExt!286 (__x!2338 Int)) (Lexer!287) )
))
(declare-fun thiss!27322 () LexerInterface!289)

(declare-fun tokensListTwoByTwoPredicateList!28 (LexerInterface!289 List!2411 List!2412 Int) Bool)

(assert (=> b!140738 (= res!65409 (tokensListTwoByTwoPredicateList!28 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!140739 () Bool)

(declare-fun res!65405 () Bool)

(assert (=> b!140739 (=> (not res!65405) (not e!82926))))

(assert (=> b!140739 (= res!65405 (tokensListTwoByTwoPredicateList!28 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!140740 () Bool)

(declare-fun res!65407 () Bool)

(assert (=> b!140740 (=> (not res!65407) (not e!82926))))

(assert (=> b!140740 (= res!65407 (not (isEmpty!918 l2!3099)))))

(assert (=> b!140741 (= e!82935 (and tp!74083 tp!74081))))

(declare-fun res!65408 () Bool)

(assert (=> start!14758 (=> (not res!65408) (not e!82926))))

(assert (=> start!14758 (= res!65408 ((_ is Lexer!287) thiss!27322))))

(assert (=> start!14758 e!82926))

(assert (=> start!14758 true))

(assert (=> start!14758 e!82928))

(assert (=> start!14758 tp!74078))

(assert (=> start!14758 e!82939))

(declare-fun e!82929 () Bool)

(assert (=> start!14758 e!82929))

(declare-fun e!82938 () Bool)

(declare-fun tp!74079 () Bool)

(declare-fun b!140728 () Bool)

(assert (=> b!140728 (= e!82938 (and (inv!21 (value!15801 (h!7798 l2!3099))) e!82942 tp!74079))))

(declare-fun b!140742 () Bool)

(declare-fun res!65401 () Bool)

(assert (=> b!140742 (=> (not res!65401) (not e!82926))))

(assert (=> b!140742 (= res!65401 ((_ is Cons!2401) l1!3130))))

(declare-fun b!140743 () Bool)

(declare-fun ++!526 (List!2411 List!2411) List!2411)

(assert (=> b!140743 (= e!82926 (not (tokensListTwoByTwoPredicateList!28 thiss!27322 (++!526 l1!3130 l2!3099) rules!4268 p!3028)))))

(declare-fun b!140744 () Bool)

(declare-fun tp!74088 () Bool)

(assert (=> b!140744 (= e!82929 (and (inv!3158 (h!7798 l2!3099)) e!82938 tp!74088))))

(assert (= (and start!14758 res!65408) b!140738))

(assert (= (and b!140738 res!65409) b!140739))

(assert (= (and b!140739 res!65405) b!140735))

(assert (= (and b!140735 res!65400) b!140740))

(assert (= (and b!140740 res!65407) b!140731))

(assert (= (and b!140731 res!65406) b!140733))

(assert (= (and b!140733 (not res!65402)) b!140737))

(assert (= (and b!140733 res!65404) b!140742))

(assert (= (and b!140742 res!65401) b!140734))

(assert (= (and b!140734 res!65403) b!140743))

(assert (= b!140736 b!140724))

(assert (= b!140726 b!140736))

(assert (= (and start!14758 ((_ is Cons!2402) rules!4268)) b!140726))

(assert (= b!140732 b!140741))

(assert (= b!140727 b!140732))

(assert (= b!140730 b!140727))

(assert (= (and start!14758 ((_ is Cons!2401) l1!3130)) b!140730))

(assert (= b!140725 b!140729))

(assert (= b!140728 b!140725))

(assert (= b!140744 b!140728))

(assert (= (and start!14758 ((_ is Cons!2401) l2!3099)) b!140744))

(declare-fun b_lambda!2073 () Bool)

(assert (=> (not b_lambda!2073) (not b!140731)))

(declare-fun t!23410 () Bool)

(declare-fun tb!4083 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23410) tb!4083))

(declare-fun result!6294 () Bool)

(assert (=> tb!4083 (= result!6294 true)))

(assert (=> b!140731 t!23410))

(declare-fun b_and!7019 () Bool)

(assert (= b_and!7017 (and (=> t!23410 result!6294) b_and!7019)))

(declare-fun m!123911 () Bool)

(assert (=> b!140737 m!123911))

(declare-fun m!123913 () Bool)

(assert (=> b!140730 m!123913))

(declare-fun m!123915 () Bool)

(assert (=> b!140739 m!123915))

(declare-fun m!123917 () Bool)

(assert (=> b!140731 m!123917))

(declare-fun m!123919 () Bool)

(assert (=> b!140731 m!123919))

(assert (=> b!140731 m!123917))

(assert (=> b!140731 m!123919))

(declare-fun m!123921 () Bool)

(assert (=> b!140731 m!123921))

(declare-fun m!123923 () Bool)

(assert (=> b!140735 m!123923))

(declare-fun m!123925 () Bool)

(assert (=> b!140738 m!123925))

(declare-fun m!123927 () Bool)

(assert (=> b!140725 m!123927))

(declare-fun m!123929 () Bool)

(assert (=> b!140725 m!123929))

(declare-fun m!123931 () Bool)

(assert (=> b!140743 m!123931))

(assert (=> b!140743 m!123931))

(declare-fun m!123933 () Bool)

(assert (=> b!140743 m!123933))

(declare-fun m!123935 () Bool)

(assert (=> b!140732 m!123935))

(declare-fun m!123937 () Bool)

(assert (=> b!140732 m!123937))

(declare-fun m!123939 () Bool)

(assert (=> b!140727 m!123939))

(declare-fun m!123941 () Bool)

(assert (=> b!140744 m!123941))

(declare-fun m!123943 () Bool)

(assert (=> b!140736 m!123943))

(declare-fun m!123945 () Bool)

(assert (=> b!140736 m!123945))

(declare-fun m!123947 () Bool)

(assert (=> b!140740 m!123947))

(declare-fun m!123949 () Bool)

(assert (=> b!140728 m!123949))

(assert (=> b!140734 m!123911))

(check-sat (not b!140728) (not b!140732) (not b!140725) (not b_next!4583) (not b!140730) (not b_next!4591) (not b!140738) (not b!140739) (not b!140734) (not b!140727) b_and!7013 (not b!140740) (not b!140731) (not b_next!4585) (not b!140736) b_and!7007 b_and!7011 (not b!140743) (not b_lambda!2073) (not b!140735) b_and!7015 b_and!7005 (not b_next!4595) b_and!7019 (not b_next!4589) b_and!7009 (not b!140737) (not b_next!4593) (not b!140744) (not b!140726) (not b_next!4587))
(check-sat b_and!7013 (not b_next!4585) b_and!7007 b_and!7011 b_and!7015 (not b_next!4583) (not b_next!4591) (not b_next!4593) (not b_next!4587) b_and!7005 (not b_next!4595) b_and!7019 (not b_next!4589) b_and!7009)
(get-model)

(declare-fun b_lambda!2075 () Bool)

(assert (= b_lambda!2073 (or (and start!14758 b_free!4595) b_lambda!2075)))

(check-sat (not b!140728) (not b!140732) (not b!140725) (not b_next!4583) (not b!140730) (not b_next!4591) (not b!140739) (not b!140734) (not b!140727) b_and!7013 (not b!140740) (not b!140731) (not b_next!4585) (not b!140736) b_and!7007 b_and!7011 (not b!140743) (not b!140735) b_and!7015 b_and!7005 (not b_next!4595) b_and!7019 (not b_next!4589) b_and!7009 (not b_lambda!2075) (not b!140738) (not b!140737) (not b_next!4593) (not b!140744) (not b!140726) (not b_next!4587))
(check-sat b_and!7013 (not b_next!4585) b_and!7007 b_and!7011 b_and!7015 (not b_next!4583) (not b_next!4591) (not b_next!4593) (not b_next!4587) b_and!7005 (not b_next!4595) b_and!7019 (not b_next!4589) b_and!7009)
(get-model)

(declare-fun d!33411 () Bool)

(assert (=> d!33411 (= (isEmpty!918 l1!3130) ((_ is Nil!2401) l1!3130))))

(assert (=> b!140735 d!33411))

(declare-fun d!33413 () Bool)

(assert (=> d!33413 (= (isEmpty!918 (t!23413 l1!3130)) ((_ is Nil!2401) (t!23413 l1!3130)))))

(assert (=> b!140734 d!33413))

(declare-fun d!33415 () Bool)

(assert (=> d!33415 (= (inv!3154 (tag!581 (h!7799 rules!4268))) (= (mod (str.len (value!15800 (tag!581 (h!7799 rules!4268)))) 2) 0))))

(assert (=> b!140736 d!33415))

(declare-fun d!33417 () Bool)

(declare-fun res!65432 () Bool)

(declare-fun e!82954 () Bool)

(assert (=> d!33417 (=> (not res!65432) (not e!82954))))

(declare-fun semiInverseModEq!136 (Int Int) Bool)

(assert (=> d!33417 (= res!65432 (semiInverseModEq!136 (toChars!873 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (h!7799 rules!4268)))))))

(assert (=> d!33417 (= (inv!3157 (transformation!403 (h!7799 rules!4268))) e!82954)))

(declare-fun b!140762 () Bool)

(declare-fun equivClasses!119 (Int Int) Bool)

(assert (=> b!140762 (= e!82954 (equivClasses!119 (toChars!873 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (h!7799 rules!4268)))))))

(assert (= (and d!33417 res!65432) b!140762))

(declare-fun m!123963 () Bool)

(assert (=> d!33417 m!123963))

(declare-fun m!123965 () Bool)

(assert (=> b!140762 m!123965))

(assert (=> b!140736 d!33417))

(declare-fun d!33423 () Bool)

(assert (=> d!33423 (= (inv!3154 (tag!581 (rule!910 (h!7798 l2!3099)))) (= (mod (str.len (value!15800 (tag!581 (rule!910 (h!7798 l2!3099))))) 2) 0))))

(assert (=> b!140725 d!33423))

(declare-fun d!33425 () Bool)

(declare-fun res!65433 () Bool)

(declare-fun e!82955 () Bool)

(assert (=> d!33425 (=> (not res!65433) (not e!82955))))

(assert (=> d!33425 (= res!65433 (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))))))

(assert (=> d!33425 (= (inv!3157 (transformation!403 (rule!910 (h!7798 l2!3099)))) e!82955)))

(declare-fun b!140763 () Bool)

(assert (=> b!140763 (= e!82955 (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))))))

(assert (= (and d!33425 res!65433) b!140763))

(declare-fun m!123967 () Bool)

(assert (=> d!33425 m!123967))

(declare-fun m!123969 () Bool)

(assert (=> b!140763 m!123969))

(assert (=> b!140725 d!33425))

(declare-fun b!140782 () Bool)

(declare-fun e!82969 () Bool)

(declare-fun e!82970 () Bool)

(assert (=> b!140782 (= e!82969 e!82970)))

(declare-fun c!29282 () Bool)

(assert (=> b!140782 (= c!29282 ((_ is IntegerValue!1276) (value!15801 (h!7798 l1!3130))))))

(declare-fun d!33427 () Bool)

(declare-fun c!29281 () Bool)

(assert (=> d!33427 (= c!29281 ((_ is IntegerValue!1275) (value!15801 (h!7798 l1!3130))))))

(assert (=> d!33427 (= (inv!21 (value!15801 (h!7798 l1!3130))) e!82969)))

(declare-fun b!140783 () Bool)

(declare-fun e!82971 () Bool)

(declare-fun inv!15 (TokenValue!425) Bool)

(assert (=> b!140783 (= e!82971 (inv!15 (value!15801 (h!7798 l1!3130))))))

(declare-fun b!140784 () Bool)

(declare-fun inv!17 (TokenValue!425) Bool)

(assert (=> b!140784 (= e!82970 (inv!17 (value!15801 (h!7798 l1!3130))))))

(declare-fun b!140785 () Bool)

(declare-fun res!65442 () Bool)

(assert (=> b!140785 (=> res!65442 e!82971)))

(assert (=> b!140785 (= res!65442 (not ((_ is IntegerValue!1277) (value!15801 (h!7798 l1!3130)))))))

(assert (=> b!140785 (= e!82970 e!82971)))

(declare-fun b!140786 () Bool)

(declare-fun inv!16 (TokenValue!425) Bool)

(assert (=> b!140786 (= e!82969 (inv!16 (value!15801 (h!7798 l1!3130))))))

(assert (= (and d!33427 c!29281) b!140786))

(assert (= (and d!33427 (not c!29281)) b!140782))

(assert (= (and b!140782 c!29282) b!140784))

(assert (= (and b!140782 (not c!29282)) b!140785))

(assert (= (and b!140785 (not res!65442)) b!140783))

(declare-fun m!123975 () Bool)

(assert (=> b!140783 m!123975))

(declare-fun m!123977 () Bool)

(assert (=> b!140784 m!123977))

(declare-fun m!123979 () Bool)

(assert (=> b!140786 m!123979))

(assert (=> b!140727 d!33427))

(assert (=> b!140737 d!33413))

(declare-fun d!33437 () Bool)

(declare-fun res!65451 () Bool)

(declare-fun e!82980 () Bool)

(assert (=> d!33437 (=> res!65451 e!82980)))

(assert (=> d!33437 (= res!65451 (or (not ((_ is Cons!2401) l2!3099)) (not ((_ is Cons!2401) (t!23413 l2!3099)))))))

(assert (=> d!33437 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 l2!3099 rules!4268 p!3028) e!82980)))

(declare-fun b!140799 () Bool)

(declare-fun e!82981 () Bool)

(assert (=> b!140799 (= e!82980 e!82981)))

(declare-fun res!65452 () Bool)

(assert (=> b!140799 (=> (not res!65452) (not e!82981))))

(assert (=> b!140799 (= res!65452 (dynLambda!797 p!3028 (h!7798 l2!3099) (h!7798 (t!23413 l2!3099)) rules!4268))))

(declare-fun b!140800 () Bool)

(assert (=> b!140800 (= e!82981 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33437 (not res!65451)) b!140799))

(assert (= (and b!140799 res!65452) b!140800))

(declare-fun b_lambda!2083 () Bool)

(assert (=> (not b_lambda!2083) (not b!140799)))

(declare-fun t!23424 () Bool)

(declare-fun tb!4093 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23424) tb!4093))

(declare-fun result!6306 () Bool)

(assert (=> tb!4093 (= result!6306 true)))

(assert (=> b!140799 t!23424))

(declare-fun b_and!7029 () Bool)

(assert (= b_and!7019 (and (=> t!23424 result!6306) b_and!7029)))

(declare-fun m!123985 () Bool)

(assert (=> b!140799 m!123985))

(declare-fun m!123987 () Bool)

(assert (=> b!140800 m!123987))

(assert (=> b!140739 d!33437))

(declare-fun b!140801 () Bool)

(declare-fun e!82982 () Bool)

(declare-fun e!82983 () Bool)

(assert (=> b!140801 (= e!82982 e!82983)))

(declare-fun c!29286 () Bool)

(assert (=> b!140801 (= c!29286 ((_ is IntegerValue!1276) (value!15801 (h!7798 l2!3099))))))

(declare-fun d!33441 () Bool)

(declare-fun c!29285 () Bool)

(assert (=> d!33441 (= c!29285 ((_ is IntegerValue!1275) (value!15801 (h!7798 l2!3099))))))

(assert (=> d!33441 (= (inv!21 (value!15801 (h!7798 l2!3099))) e!82982)))

(declare-fun b!140802 () Bool)

(declare-fun e!82984 () Bool)

(assert (=> b!140802 (= e!82984 (inv!15 (value!15801 (h!7798 l2!3099))))))

(declare-fun b!140803 () Bool)

(assert (=> b!140803 (= e!82983 (inv!17 (value!15801 (h!7798 l2!3099))))))

(declare-fun b!140804 () Bool)

(declare-fun res!65453 () Bool)

(assert (=> b!140804 (=> res!65453 e!82984)))

(assert (=> b!140804 (= res!65453 (not ((_ is IntegerValue!1277) (value!15801 (h!7798 l2!3099)))))))

(assert (=> b!140804 (= e!82983 e!82984)))

(declare-fun b!140805 () Bool)

(assert (=> b!140805 (= e!82982 (inv!16 (value!15801 (h!7798 l2!3099))))))

(assert (= (and d!33441 c!29285) b!140805))

(assert (= (and d!33441 (not c!29285)) b!140801))

(assert (= (and b!140801 c!29286) b!140803))

(assert (= (and b!140801 (not c!29286)) b!140804))

(assert (= (and b!140804 (not res!65453)) b!140802))

(declare-fun m!123989 () Bool)

(assert (=> b!140802 m!123989))

(declare-fun m!123991 () Bool)

(assert (=> b!140803 m!123991))

(declare-fun m!123993 () Bool)

(assert (=> b!140805 m!123993))

(assert (=> b!140728 d!33441))

(declare-fun d!33443 () Bool)

(declare-fun res!65454 () Bool)

(declare-fun e!82985 () Bool)

(assert (=> d!33443 (=> res!65454 e!82985)))

(assert (=> d!33443 (= res!65454 (or (not ((_ is Cons!2401) l1!3130)) (not ((_ is Cons!2401) (t!23413 l1!3130)))))))

(assert (=> d!33443 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 l1!3130 rules!4268 p!3028) e!82985)))

(declare-fun b!140806 () Bool)

(declare-fun e!82986 () Bool)

(assert (=> b!140806 (= e!82985 e!82986)))

(declare-fun res!65455 () Bool)

(assert (=> b!140806 (=> (not res!65455) (not e!82986))))

(assert (=> b!140806 (= res!65455 (dynLambda!797 p!3028 (h!7798 l1!3130) (h!7798 (t!23413 l1!3130)) rules!4268))))

(declare-fun b!140807 () Bool)

(assert (=> b!140807 (= e!82986 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33443 (not res!65454)) b!140806))

(assert (= (and b!140806 res!65455) b!140807))

(declare-fun b_lambda!2085 () Bool)

(assert (=> (not b_lambda!2085) (not b!140806)))

(declare-fun t!23426 () Bool)

(declare-fun tb!4095 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23426) tb!4095))

(declare-fun result!6308 () Bool)

(assert (=> tb!4095 (= result!6308 true)))

(assert (=> b!140806 t!23426))

(declare-fun b_and!7031 () Bool)

(assert (= b_and!7029 (and (=> t!23426 result!6308) b_and!7031)))

(declare-fun m!123995 () Bool)

(assert (=> b!140806 m!123995))

(declare-fun m!124003 () Bool)

(assert (=> b!140807 m!124003))

(assert (=> b!140738 d!33443))

(declare-fun d!33445 () Bool)

(assert (=> d!33445 (= (isEmpty!918 l2!3099) ((_ is Nil!2401) l2!3099))))

(assert (=> b!140740 d!33445))

(declare-fun d!33447 () Bool)

(declare-fun lt!41171 () Token!550)

(declare-fun contains!384 (List!2411 Token!550) Bool)

(assert (=> d!33447 (contains!384 l1!3130 lt!41171)))

(declare-fun e!83001 () Token!550)

(assert (=> d!33447 (= lt!41171 e!83001)))

(declare-fun c!29294 () Bool)

(assert (=> d!33447 (= c!29294 (and ((_ is Cons!2401) l1!3130) ((_ is Nil!2401) (t!23413 l1!3130))))))

(assert (=> d!33447 (not (isEmpty!918 l1!3130))))

(assert (=> d!33447 (= (last!37 l1!3130) lt!41171)))

(declare-fun b!140830 () Bool)

(assert (=> b!140830 (= e!83001 (h!7798 l1!3130))))

(declare-fun b!140831 () Bool)

(assert (=> b!140831 (= e!83001 (last!37 (t!23413 l1!3130)))))

(assert (= (and d!33447 c!29294) b!140830))

(assert (= (and d!33447 (not c!29294)) b!140831))

(declare-fun m!124021 () Bool)

(assert (=> d!33447 m!124021))

(assert (=> d!33447 m!123923))

(declare-fun m!124023 () Bool)

(assert (=> b!140831 m!124023))

(assert (=> b!140731 d!33447))

(declare-fun d!33455 () Bool)

(assert (=> d!33455 (= (head!562 l2!3099) (h!7798 l2!3099))))

(assert (=> b!140731 d!33455))

(declare-fun d!33457 () Bool)

(declare-fun res!65472 () Bool)

(declare-fun e!83010 () Bool)

(assert (=> d!33457 (=> (not res!65472) (not e!83010))))

(declare-fun isEmpty!920 (List!2410) Bool)

(assert (=> d!33457 (= res!65472 (not (isEmpty!920 (originalCharacters!446 (h!7798 l1!3130)))))))

(assert (=> d!33457 (= (inv!3158 (h!7798 l1!3130)) e!83010)))

(declare-fun b!140844 () Bool)

(declare-fun res!65473 () Bool)

(assert (=> b!140844 (=> (not res!65473) (not e!83010))))

(declare-fun list!839 (BalanceConc!1274) List!2410)

(declare-fun dynLambda!799 (Int TokenValue!425) BalanceConc!1274)

(assert (=> b!140844 (= res!65473 (= (originalCharacters!446 (h!7798 l1!3130)) (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(declare-fun b!140845 () Bool)

(declare-fun size!2108 (List!2410) Int)

(assert (=> b!140845 (= e!83010 (= (size!2105 (h!7798 l1!3130)) (size!2108 (originalCharacters!446 (h!7798 l1!3130)))))))

(assert (= (and d!33457 res!65472) b!140844))

(assert (= (and b!140844 res!65473) b!140845))

(declare-fun b_lambda!2091 () Bool)

(assert (=> (not b_lambda!2091) (not b!140844)))

(declare-fun tb!4103 () Bool)

(declare-fun t!23434 () Bool)

(assert (=> (and b!140729 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23434) tb!4103))

(declare-fun b!140859 () Bool)

(declare-fun e!83019 () Bool)

(declare-fun tp!74096 () Bool)

(declare-fun inv!3161 (Conc!633) Bool)

(assert (=> b!140859 (= e!83019 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))) tp!74096))))

(declare-fun result!6316 () Bool)

(declare-fun inv!3162 (BalanceConc!1274) Bool)

(assert (=> tb!4103 (= result!6316 (and (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))) e!83019))))

(assert (= tb!4103 b!140859))

(declare-fun m!124057 () Bool)

(assert (=> b!140859 m!124057))

(declare-fun m!124059 () Bool)

(assert (=> tb!4103 m!124059))

(assert (=> b!140844 t!23434))

(declare-fun b_and!7043 () Bool)

(assert (= b_and!7007 (and (=> t!23434 result!6316) b_and!7043)))

(declare-fun t!23440 () Bool)

(declare-fun tb!4109 () Bool)

(assert (=> (and b!140724 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23440) tb!4109))

(declare-fun result!6324 () Bool)

(assert (= result!6324 result!6316))

(assert (=> b!140844 t!23440))

(declare-fun b_and!7045 () Bool)

(assert (= b_and!7011 (and (=> t!23440 result!6324) b_and!7045)))

(declare-fun t!23442 () Bool)

(declare-fun tb!4111 () Bool)

(assert (=> (and b!140741 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23442) tb!4111))

(declare-fun result!6326 () Bool)

(assert (= result!6326 result!6316))

(assert (=> b!140844 t!23442))

(declare-fun b_and!7047 () Bool)

(assert (= b_and!7015 (and (=> t!23442 result!6326) b_and!7047)))

(declare-fun m!124065 () Bool)

(assert (=> d!33457 m!124065))

(declare-fun m!124067 () Bool)

(assert (=> b!140844 m!124067))

(assert (=> b!140844 m!124067))

(declare-fun m!124069 () Bool)

(assert (=> b!140844 m!124069))

(declare-fun m!124071 () Bool)

(assert (=> b!140845 m!124071))

(assert (=> b!140730 d!33457))

(declare-fun d!33475 () Bool)

(declare-fun res!65479 () Bool)

(declare-fun e!83027 () Bool)

(assert (=> d!33475 (=> res!65479 e!83027)))

(assert (=> d!33475 (= res!65479 (or (not ((_ is Cons!2401) (++!526 l1!3130 l2!3099))) (not ((_ is Cons!2401) (t!23413 (++!526 l1!3130 l2!3099))))))))

(assert (=> d!33475 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 (++!526 l1!3130 l2!3099) rules!4268 p!3028) e!83027)))

(declare-fun b!140867 () Bool)

(declare-fun e!83028 () Bool)

(assert (=> b!140867 (= e!83027 e!83028)))

(declare-fun res!65480 () Bool)

(assert (=> b!140867 (=> (not res!65480) (not e!83028))))

(assert (=> b!140867 (= res!65480 (dynLambda!797 p!3028 (h!7798 (++!526 l1!3130 l2!3099)) (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) rules!4268))))

(declare-fun b!140868 () Bool)

(assert (=> b!140868 (= e!83028 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))) rules!4268 p!3028))))

(assert (= (and d!33475 (not res!65479)) b!140867))

(assert (= (and b!140867 res!65480) b!140868))

(declare-fun b_lambda!2095 () Bool)

(assert (=> (not b_lambda!2095) (not b!140867)))

(declare-fun t!23444 () Bool)

(declare-fun tb!4113 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23444) tb!4113))

(declare-fun result!6330 () Bool)

(assert (=> tb!4113 (= result!6330 true)))

(assert (=> b!140867 t!23444))

(declare-fun b_and!7049 () Bool)

(assert (= b_and!7031 (and (=> t!23444 result!6330) b_and!7049)))

(declare-fun m!124073 () Bool)

(assert (=> b!140867 m!124073))

(declare-fun m!124075 () Bool)

(assert (=> b!140868 m!124075))

(assert (=> b!140743 d!33475))

(declare-fun b!140921 () Bool)

(declare-fun res!65485 () Bool)

(declare-fun e!83069 () Bool)

(assert (=> b!140921 (=> (not res!65485) (not e!83069))))

(declare-fun lt!41174 () List!2411)

(declare-fun size!2109 (List!2411) Int)

(assert (=> b!140921 (= res!65485 (= (size!2109 lt!41174) (+ (size!2109 l1!3130) (size!2109 l2!3099))))))

(declare-fun b!140922 () Bool)

(assert (=> b!140922 (= e!83069 (or (not (= l2!3099 Nil!2401)) (= lt!41174 l1!3130)))))

(declare-fun b!140920 () Bool)

(declare-fun e!83070 () List!2411)

(assert (=> b!140920 (= e!83070 (Cons!2401 (h!7798 l1!3130) (++!526 (t!23413 l1!3130) l2!3099)))))

(declare-fun b!140919 () Bool)

(assert (=> b!140919 (= e!83070 l2!3099)))

(declare-fun d!33477 () Bool)

(assert (=> d!33477 e!83069))

(declare-fun res!65486 () Bool)

(assert (=> d!33477 (=> (not res!65486) (not e!83069))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!347 (List!2411) (InoxSet Token!550))

(assert (=> d!33477 (= res!65486 (= (content!347 lt!41174) ((_ map or) (content!347 l1!3130) (content!347 l2!3099))))))

(assert (=> d!33477 (= lt!41174 e!83070)))

(declare-fun c!29301 () Bool)

(assert (=> d!33477 (= c!29301 ((_ is Nil!2401) l1!3130))))

(assert (=> d!33477 (= (++!526 l1!3130 l2!3099) lt!41174)))

(assert (= (and d!33477 c!29301) b!140919))

(assert (= (and d!33477 (not c!29301)) b!140920))

(assert (= (and d!33477 res!65486) b!140921))

(assert (= (and b!140921 res!65485) b!140922))

(declare-fun m!124097 () Bool)

(assert (=> b!140921 m!124097))

(declare-fun m!124099 () Bool)

(assert (=> b!140921 m!124099))

(declare-fun m!124101 () Bool)

(assert (=> b!140921 m!124101))

(declare-fun m!124103 () Bool)

(assert (=> b!140920 m!124103))

(declare-fun m!124105 () Bool)

(assert (=> d!33477 m!124105))

(declare-fun m!124107 () Bool)

(assert (=> d!33477 m!124107))

(declare-fun m!124109 () Bool)

(assert (=> d!33477 m!124109))

(assert (=> b!140743 d!33477))

(declare-fun d!33479 () Bool)

(assert (=> d!33479 (= (inv!3154 (tag!581 (rule!910 (h!7798 l1!3130)))) (= (mod (str.len (value!15800 (tag!581 (rule!910 (h!7798 l1!3130))))) 2) 0))))

(assert (=> b!140732 d!33479))

(declare-fun d!33481 () Bool)

(declare-fun res!65487 () Bool)

(declare-fun e!83074 () Bool)

(assert (=> d!33481 (=> (not res!65487) (not e!83074))))

(assert (=> d!33481 (= res!65487 (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))))))

(assert (=> d!33481 (= (inv!3157 (transformation!403 (rule!910 (h!7798 l1!3130)))) e!83074)))

(declare-fun b!140932 () Bool)

(assert (=> b!140932 (= e!83074 (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))))))

(assert (= (and d!33481 res!65487) b!140932))

(declare-fun m!124111 () Bool)

(assert (=> d!33481 m!124111))

(declare-fun m!124113 () Bool)

(assert (=> b!140932 m!124113))

(assert (=> b!140732 d!33481))

(declare-fun d!33483 () Bool)

(declare-fun res!65488 () Bool)

(declare-fun e!83075 () Bool)

(assert (=> d!33483 (=> (not res!65488) (not e!83075))))

(assert (=> d!33483 (= res!65488 (not (isEmpty!920 (originalCharacters!446 (h!7798 l2!3099)))))))

(assert (=> d!33483 (= (inv!3158 (h!7798 l2!3099)) e!83075)))

(declare-fun b!140933 () Bool)

(declare-fun res!65489 () Bool)

(assert (=> b!140933 (=> (not res!65489) (not e!83075))))

(assert (=> b!140933 (= res!65489 (= (originalCharacters!446 (h!7798 l2!3099)) (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(declare-fun b!140934 () Bool)

(assert (=> b!140934 (= e!83075 (= (size!2105 (h!7798 l2!3099)) (size!2108 (originalCharacters!446 (h!7798 l2!3099)))))))

(assert (= (and d!33483 res!65488) b!140933))

(assert (= (and b!140933 res!65489) b!140934))

(declare-fun b_lambda!2107 () Bool)

(assert (=> (not b_lambda!2107) (not b!140933)))

(declare-fun t!23458 () Bool)

(declare-fun tb!4127 () Bool)

(assert (=> (and b!140729 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23458) tb!4127))

(declare-fun b!140935 () Bool)

(declare-fun e!83076 () Bool)

(declare-fun tp!74158 () Bool)

(assert (=> b!140935 (= e!83076 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))) tp!74158))))

(declare-fun result!6350 () Bool)

(assert (=> tb!4127 (= result!6350 (and (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))) e!83076))))

(assert (= tb!4127 b!140935))

(declare-fun m!124115 () Bool)

(assert (=> b!140935 m!124115))

(declare-fun m!124117 () Bool)

(assert (=> tb!4127 m!124117))

(assert (=> b!140933 t!23458))

(declare-fun b_and!7063 () Bool)

(assert (= b_and!7043 (and (=> t!23458 result!6350) b_and!7063)))

(declare-fun t!23460 () Bool)

(declare-fun tb!4129 () Bool)

(assert (=> (and b!140724 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23460) tb!4129))

(declare-fun result!6352 () Bool)

(assert (= result!6352 result!6350))

(assert (=> b!140933 t!23460))

(declare-fun b_and!7065 () Bool)

(assert (= b_and!7045 (and (=> t!23460 result!6352) b_and!7065)))

(declare-fun tb!4131 () Bool)

(declare-fun t!23462 () Bool)

(assert (=> (and b!140741 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23462) tb!4131))

(declare-fun result!6354 () Bool)

(assert (= result!6354 result!6350))

(assert (=> b!140933 t!23462))

(declare-fun b_and!7067 () Bool)

(assert (= b_and!7047 (and (=> t!23462 result!6354) b_and!7067)))

(declare-fun m!124119 () Bool)

(assert (=> d!33483 m!124119))

(declare-fun m!124121 () Bool)

(assert (=> b!140933 m!124121))

(assert (=> b!140933 m!124121))

(declare-fun m!124123 () Bool)

(assert (=> b!140933 m!124123))

(declare-fun m!124125 () Bool)

(assert (=> b!140934 m!124125))

(assert (=> b!140744 d!33483))

(declare-fun e!83079 () Bool)

(assert (=> b!140736 (= tp!74075 e!83079)))

(declare-fun b!140948 () Bool)

(declare-fun tp!74172 () Bool)

(assert (=> b!140948 (= e!83079 tp!74172)))

(declare-fun b!140949 () Bool)

(declare-fun tp!74170 () Bool)

(declare-fun tp!74169 () Bool)

(assert (=> b!140949 (= e!83079 (and tp!74170 tp!74169))))

(declare-fun b!140947 () Bool)

(declare-fun tp!74171 () Bool)

(declare-fun tp!74173 () Bool)

(assert (=> b!140947 (= e!83079 (and tp!74171 tp!74173))))

(declare-fun b!140946 () Bool)

(declare-fun tp_is_empty!1571 () Bool)

(assert (=> b!140946 (= e!83079 tp_is_empty!1571)))

(assert (= (and b!140736 ((_ is ElementMatch!627) (regex!403 (h!7799 rules!4268)))) b!140946))

(assert (= (and b!140736 ((_ is Concat!1053) (regex!403 (h!7799 rules!4268)))) b!140947))

(assert (= (and b!140736 ((_ is Star!627) (regex!403 (h!7799 rules!4268)))) b!140948))

(assert (= (and b!140736 ((_ is Union!627) (regex!403 (h!7799 rules!4268)))) b!140949))

(declare-fun e!83080 () Bool)

(assert (=> b!140725 (= tp!74087 e!83080)))

(declare-fun b!140952 () Bool)

(declare-fun tp!74177 () Bool)

(assert (=> b!140952 (= e!83080 tp!74177)))

(declare-fun b!140953 () Bool)

(declare-fun tp!74175 () Bool)

(declare-fun tp!74174 () Bool)

(assert (=> b!140953 (= e!83080 (and tp!74175 tp!74174))))

(declare-fun b!140951 () Bool)

(declare-fun tp!74176 () Bool)

(declare-fun tp!74178 () Bool)

(assert (=> b!140951 (= e!83080 (and tp!74176 tp!74178))))

(declare-fun b!140950 () Bool)

(assert (=> b!140950 (= e!83080 tp_is_empty!1571)))

(assert (= (and b!140725 ((_ is ElementMatch!627) (regex!403 (rule!910 (h!7798 l2!3099))))) b!140950))

(assert (= (and b!140725 ((_ is Concat!1053) (regex!403 (rule!910 (h!7798 l2!3099))))) b!140951))

(assert (= (and b!140725 ((_ is Star!627) (regex!403 (rule!910 (h!7798 l2!3099))))) b!140952))

(assert (= (and b!140725 ((_ is Union!627) (regex!403 (rule!910 (h!7798 l2!3099))))) b!140953))

(declare-fun b!140967 () Bool)

(declare-fun b_free!4609 () Bool)

(declare-fun b_next!4609 () Bool)

(assert (=> b!140967 (= b_free!4609 (not b_next!4609))))

(declare-fun tp!74190 () Bool)

(declare-fun b_and!7069 () Bool)

(assert (=> b!140967 (= tp!74190 b_and!7069)))

(declare-fun b_free!4611 () Bool)

(declare-fun b_next!4611 () Bool)

(assert (=> b!140967 (= b_free!4611 (not b_next!4611))))

(declare-fun t!23464 () Bool)

(declare-fun tb!4133 () Bool)

(assert (=> (and b!140967 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23464) tb!4133))

(declare-fun result!6360 () Bool)

(assert (= result!6360 result!6316))

(assert (=> b!140844 t!23464))

(declare-fun t!23466 () Bool)

(declare-fun tb!4135 () Bool)

(assert (=> (and b!140967 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23466) tb!4135))

(declare-fun result!6362 () Bool)

(assert (= result!6362 result!6350))

(assert (=> b!140933 t!23466))

(declare-fun tp!74192 () Bool)

(declare-fun b_and!7071 () Bool)

(assert (=> b!140967 (= tp!74192 (and (=> t!23464 result!6360) (=> t!23466 result!6362) b_and!7071))))

(declare-fun e!83095 () Bool)

(assert (=> b!140730 (= tp!74077 e!83095)))

(declare-fun e!83098 () Bool)

(declare-fun e!83093 () Bool)

(declare-fun tp!74191 () Bool)

(declare-fun b!140965 () Bool)

(assert (=> b!140965 (= e!83093 (and (inv!21 (value!15801 (h!7798 (t!23413 l1!3130)))) e!83098 tp!74191))))

(declare-fun tp!74193 () Bool)

(declare-fun b!140964 () Bool)

(assert (=> b!140964 (= e!83095 (and (inv!3158 (h!7798 (t!23413 l1!3130))) e!83093 tp!74193))))

(declare-fun e!83097 () Bool)

(declare-fun tp!74189 () Bool)

(declare-fun b!140966 () Bool)

(assert (=> b!140966 (= e!83098 (and tp!74189 (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 l1!3130))))) (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) e!83097))))

(assert (=> b!140967 (= e!83097 (and tp!74190 tp!74192))))

(assert (= b!140966 b!140967))

(assert (= b!140965 b!140966))

(assert (= b!140964 b!140965))

(assert (= (and b!140730 ((_ is Cons!2401) (t!23413 l1!3130))) b!140964))

(declare-fun m!124127 () Bool)

(assert (=> b!140965 m!124127))

(declare-fun m!124129 () Bool)

(assert (=> b!140964 m!124129))

(declare-fun m!124131 () Bool)

(assert (=> b!140966 m!124131))

(declare-fun m!124133 () Bool)

(assert (=> b!140966 m!124133))

(declare-fun b!140972 () Bool)

(declare-fun e!83101 () Bool)

(declare-fun tp!74196 () Bool)

(assert (=> b!140972 (= e!83101 (and tp_is_empty!1571 tp!74196))))

(assert (=> b!140727 (= tp!74080 e!83101)))

(assert (= (and b!140727 ((_ is Cons!2400) (originalCharacters!446 (h!7798 l1!3130)))) b!140972))

(declare-fun e!83102 () Bool)

(assert (=> b!140732 (= tp!74089 e!83102)))

(declare-fun b!140975 () Bool)

(declare-fun tp!74200 () Bool)

(assert (=> b!140975 (= e!83102 tp!74200)))

(declare-fun b!140976 () Bool)

(declare-fun tp!74198 () Bool)

(declare-fun tp!74197 () Bool)

(assert (=> b!140976 (= e!83102 (and tp!74198 tp!74197))))

(declare-fun b!140974 () Bool)

(declare-fun tp!74199 () Bool)

(declare-fun tp!74201 () Bool)

(assert (=> b!140974 (= e!83102 (and tp!74199 tp!74201))))

(declare-fun b!140973 () Bool)

(assert (=> b!140973 (= e!83102 tp_is_empty!1571)))

(assert (= (and b!140732 ((_ is ElementMatch!627) (regex!403 (rule!910 (h!7798 l1!3130))))) b!140973))

(assert (= (and b!140732 ((_ is Concat!1053) (regex!403 (rule!910 (h!7798 l1!3130))))) b!140974))

(assert (= (and b!140732 ((_ is Star!627) (regex!403 (rule!910 (h!7798 l1!3130))))) b!140975))

(assert (= (and b!140732 ((_ is Union!627) (regex!403 (rule!910 (h!7798 l1!3130))))) b!140976))

(declare-fun b!140987 () Bool)

(declare-fun b_free!4613 () Bool)

(declare-fun b_next!4613 () Bool)

(assert (=> b!140987 (= b_free!4613 (not b_next!4613))))

(declare-fun tp!74210 () Bool)

(declare-fun b_and!7073 () Bool)

(assert (=> b!140987 (= tp!74210 b_and!7073)))

(declare-fun b_free!4615 () Bool)

(declare-fun b_next!4615 () Bool)

(assert (=> b!140987 (= b_free!4615 (not b_next!4615))))

(declare-fun tb!4137 () Bool)

(declare-fun t!23468 () Bool)

(assert (=> (and b!140987 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23468) tb!4137))

(declare-fun result!6368 () Bool)

(assert (= result!6368 result!6316))

(assert (=> b!140844 t!23468))

(declare-fun t!23470 () Bool)

(declare-fun tb!4139 () Bool)

(assert (=> (and b!140987 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23470) tb!4139))

(declare-fun result!6370 () Bool)

(assert (= result!6370 result!6350))

(assert (=> b!140933 t!23470))

(declare-fun b_and!7075 () Bool)

(declare-fun tp!74211 () Bool)

(assert (=> b!140987 (= tp!74211 (and (=> t!23468 result!6368) (=> t!23470 result!6370) b_and!7075))))

(declare-fun e!83112 () Bool)

(assert (=> b!140987 (= e!83112 (and tp!74210 tp!74211))))

(declare-fun tp!74212 () Bool)

(declare-fun b!140986 () Bool)

(declare-fun e!83111 () Bool)

(assert (=> b!140986 (= e!83111 (and tp!74212 (inv!3154 (tag!581 (h!7799 (t!23414 rules!4268)))) (inv!3157 (transformation!403 (h!7799 (t!23414 rules!4268)))) e!83112))))

(declare-fun b!140985 () Bool)

(declare-fun e!83113 () Bool)

(declare-fun tp!74213 () Bool)

(assert (=> b!140985 (= e!83113 (and e!83111 tp!74213))))

(assert (=> b!140726 (= tp!74086 e!83113)))

(assert (= b!140986 b!140987))

(assert (= b!140985 b!140986))

(assert (= (and b!140726 ((_ is Cons!2402) (t!23414 rules!4268))) b!140985))

(declare-fun m!124135 () Bool)

(assert (=> b!140986 m!124135))

(declare-fun m!124137 () Bool)

(assert (=> b!140986 m!124137))

(declare-fun b!140991 () Bool)

(declare-fun b_free!4617 () Bool)

(declare-fun b_next!4617 () Bool)

(assert (=> b!140991 (= b_free!4617 (not b_next!4617))))

(declare-fun tp!74215 () Bool)

(declare-fun b_and!7077 () Bool)

(assert (=> b!140991 (= tp!74215 b_and!7077)))

(declare-fun b_free!4619 () Bool)

(declare-fun b_next!4619 () Bool)

(assert (=> b!140991 (= b_free!4619 (not b_next!4619))))

(declare-fun t!23472 () Bool)

(declare-fun tb!4141 () Bool)

(assert (=> (and b!140991 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23472) tb!4141))

(declare-fun result!6372 () Bool)

(assert (= result!6372 result!6316))

(assert (=> b!140844 t!23472))

(declare-fun t!23474 () Bool)

(declare-fun tb!4143 () Bool)

(assert (=> (and b!140991 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23474) tb!4143))

(declare-fun result!6374 () Bool)

(assert (= result!6374 result!6350))

(assert (=> b!140933 t!23474))

(declare-fun b_and!7079 () Bool)

(declare-fun tp!74217 () Bool)

(assert (=> b!140991 (= tp!74217 (and (=> t!23472 result!6372) (=> t!23474 result!6374) b_and!7079))))

(declare-fun e!83117 () Bool)

(assert (=> b!140744 (= tp!74088 e!83117)))

(declare-fun b!140989 () Bool)

(declare-fun e!83115 () Bool)

(declare-fun tp!74216 () Bool)

(declare-fun e!83120 () Bool)

(assert (=> b!140989 (= e!83115 (and (inv!21 (value!15801 (h!7798 (t!23413 l2!3099)))) e!83120 tp!74216))))

(declare-fun b!140988 () Bool)

(declare-fun tp!74218 () Bool)

(assert (=> b!140988 (= e!83117 (and (inv!3158 (h!7798 (t!23413 l2!3099))) e!83115 tp!74218))))

(declare-fun tp!74214 () Bool)

(declare-fun b!140990 () Bool)

(declare-fun e!83119 () Bool)

(assert (=> b!140990 (= e!83120 (and tp!74214 (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 l2!3099))))) (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) e!83119))))

(assert (=> b!140991 (= e!83119 (and tp!74215 tp!74217))))

(assert (= b!140990 b!140991))

(assert (= b!140989 b!140990))

(assert (= b!140988 b!140989))

(assert (= (and b!140744 ((_ is Cons!2401) (t!23413 l2!3099))) b!140988))

(declare-fun m!124139 () Bool)

(assert (=> b!140989 m!124139))

(declare-fun m!124141 () Bool)

(assert (=> b!140988 m!124141))

(declare-fun m!124143 () Bool)

(assert (=> b!140990 m!124143))

(declare-fun m!124145 () Bool)

(assert (=> b!140990 m!124145))

(declare-fun b!140992 () Bool)

(declare-fun e!83121 () Bool)

(declare-fun tp!74219 () Bool)

(assert (=> b!140992 (= e!83121 (and tp_is_empty!1571 tp!74219))))

(assert (=> b!140728 (= tp!74079 e!83121)))

(assert (= (and b!140728 ((_ is Cons!2400) (originalCharacters!446 (h!7798 l2!3099)))) b!140992))

(declare-fun b_lambda!2109 () Bool)

(assert (= b_lambda!2083 (or (and start!14758 b_free!4595) b_lambda!2109)))

(declare-fun b_lambda!2111 () Bool)

(assert (= b_lambda!2095 (or (and start!14758 b_free!4595) b_lambda!2111)))

(declare-fun b_lambda!2113 () Bool)

(assert (= b_lambda!2091 (or (and b!140967 b_free!4611 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))))) (and b!140991 b_free!4619 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))))) (and b!140729 b_free!4585 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))))) (and b!140987 b_free!4615 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))))) (and b!140724 b_free!4589 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))))) (and b!140741 b_free!4593) b_lambda!2113)))

(declare-fun b_lambda!2115 () Bool)

(assert (= b_lambda!2085 (or (and start!14758 b_free!4595) b_lambda!2115)))

(declare-fun b_lambda!2117 () Bool)

(assert (= b_lambda!2107 (or (and b!140724 b_free!4589 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (and b!140991 b_free!4619 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (and b!140741 b_free!4593 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (and b!140987 b_free!4615 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (and b!140967 b_free!4611 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (and b!140729 b_free!4585) b_lambda!2117)))

(check-sat (not b!140974) (not b!140802) (not b_next!4593) (not b_next!4619) (not b!140934) (not b!140965) (not b!140986) (not b!140920) (not b!140784) (not b!140762) b_and!7069 (not b!140952) b_and!7049 (not b!140948) b_and!7013 (not b!140992) (not tb!4103) b_and!7063 (not b_next!4585) b_and!7065 (not b!140964) b_and!7075 (not b!140976) b_and!7071 (not b!140845) (not b_next!4609) (not b!140953) (not b!140831) (not b!140990) (not b!140805) (not d!33483) b_and!7067 (not b!140975) (not b!140783) (not b!140786) (not b!140947) (not d!33447) (not b!140807) (not b_lambda!2115) (not b!140989) (not d!33417) (not b_lambda!2117) (not b!140844) (not b!140949) (not b_next!4583) (not b!140800) (not b!140859) (not b_next!4615) b_and!7005 (not b_next!4595) (not b!140972) (not b!140933) b_and!7079 (not b!140935) (not d!33481) (not b_next!4591) (not tb!4127) (not b_next!4589) b_and!7009 (not b_lambda!2109) (not b!140921) b_and!7077 (not b_lambda!2111) b_and!7073 (not b!140868) (not b!140966) (not b!140763) (not b!140951) (not d!33457) (not b_next!4611) (not b_lambda!2113) (not b!140988) (not b_lambda!2075) (not b!140985) (not b_next!4613) (not d!33425) tp_is_empty!1571 (not b!140932) (not b_next!4587) (not d!33477) (not b!140803) (not b_next!4617))
(check-sat b_and!7069 b_and!7049 b_and!7013 b_and!7071 (not b_next!4609) b_and!7067 (not b_next!4583) (not b_next!4615) b_and!7077 b_and!7073 (not b_next!4611) (not b_next!4593) (not b_next!4613) (not b_next!4587) (not b_next!4619) (not b_next!4617) b_and!7063 (not b_next!4585) b_and!7065 b_and!7075 b_and!7005 (not b_next!4595) b_and!7079 (not b_next!4591) (not b_next!4589) b_and!7009)
(get-model)

(declare-fun d!33487 () Bool)

(declare-fun res!65498 () Bool)

(declare-fun e!83122 () Bool)

(assert (=> d!33487 (=> (not res!65498) (not e!83122))))

(assert (=> d!33487 (= res!65498 (not (isEmpty!920 (originalCharacters!446 (h!7798 (t!23413 l2!3099))))))))

(assert (=> d!33487 (= (inv!3158 (h!7798 (t!23413 l2!3099))) e!83122)))

(declare-fun b!140993 () Bool)

(declare-fun res!65499 () Bool)

(assert (=> b!140993 (=> (not res!65499) (not e!83122))))

(assert (=> b!140993 (= res!65499 (= (originalCharacters!446 (h!7798 (t!23413 l2!3099))) (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (value!15801 (h!7798 (t!23413 l2!3099)))))))))

(declare-fun b!140994 () Bool)

(assert (=> b!140994 (= e!83122 (= (size!2105 (h!7798 (t!23413 l2!3099))) (size!2108 (originalCharacters!446 (h!7798 (t!23413 l2!3099))))))))

(assert (= (and d!33487 res!65498) b!140993))

(assert (= (and b!140993 res!65499) b!140994))

(declare-fun b_lambda!2119 () Bool)

(assert (=> (not b_lambda!2119) (not b!140993)))

(declare-fun tb!4145 () Bool)

(declare-fun t!23476 () Bool)

(assert (=> (and b!140741 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23476) tb!4145))

(declare-fun b!140995 () Bool)

(declare-fun e!83123 () Bool)

(declare-fun tp!74220 () Bool)

(assert (=> b!140995 (= e!83123 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (value!15801 (h!7798 (t!23413 l2!3099)))))) tp!74220))))

(declare-fun result!6376 () Bool)

(assert (=> tb!4145 (= result!6376 (and (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (value!15801 (h!7798 (t!23413 l2!3099))))) e!83123))))

(assert (= tb!4145 b!140995))

(declare-fun m!124147 () Bool)

(assert (=> b!140995 m!124147))

(declare-fun m!124149 () Bool)

(assert (=> tb!4145 m!124149))

(assert (=> b!140993 t!23476))

(declare-fun b_and!7081 () Bool)

(assert (= b_and!7067 (and (=> t!23476 result!6376) b_and!7081)))

(declare-fun tb!4147 () Bool)

(declare-fun t!23478 () Bool)

(assert (=> (and b!140724 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23478) tb!4147))

(declare-fun result!6378 () Bool)

(assert (= result!6378 result!6376))

(assert (=> b!140993 t!23478))

(declare-fun b_and!7083 () Bool)

(assert (= b_and!7065 (and (=> t!23478 result!6378) b_and!7083)))

(declare-fun t!23480 () Bool)

(declare-fun tb!4149 () Bool)

(assert (=> (and b!140991 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23480) tb!4149))

(declare-fun result!6380 () Bool)

(assert (= result!6380 result!6376))

(assert (=> b!140993 t!23480))

(declare-fun b_and!7085 () Bool)

(assert (= b_and!7079 (and (=> t!23480 result!6380) b_and!7085)))

(declare-fun tb!4151 () Bool)

(declare-fun t!23482 () Bool)

(assert (=> (and b!140987 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23482) tb!4151))

(declare-fun result!6382 () Bool)

(assert (= result!6382 result!6376))

(assert (=> b!140993 t!23482))

(declare-fun b_and!7087 () Bool)

(assert (= b_and!7075 (and (=> t!23482 result!6382) b_and!7087)))

(declare-fun t!23484 () Bool)

(declare-fun tb!4153 () Bool)

(assert (=> (and b!140729 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23484) tb!4153))

(declare-fun result!6384 () Bool)

(assert (= result!6384 result!6376))

(assert (=> b!140993 t!23484))

(declare-fun b_and!7089 () Bool)

(assert (= b_and!7063 (and (=> t!23484 result!6384) b_and!7089)))

(declare-fun t!23486 () Bool)

(declare-fun tb!4155 () Bool)

(assert (=> (and b!140967 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23486) tb!4155))

(declare-fun result!6386 () Bool)

(assert (= result!6386 result!6376))

(assert (=> b!140993 t!23486))

(declare-fun b_and!7091 () Bool)

(assert (= b_and!7071 (and (=> t!23486 result!6386) b_and!7091)))

(declare-fun m!124151 () Bool)

(assert (=> d!33487 m!124151))

(declare-fun m!124153 () Bool)

(assert (=> b!140993 m!124153))

(assert (=> b!140993 m!124153))

(declare-fun m!124155 () Bool)

(assert (=> b!140993 m!124155))

(declare-fun m!124157 () Bool)

(assert (=> b!140994 m!124157))

(assert (=> b!140988 d!33487))

(declare-fun d!33489 () Bool)

(declare-fun isBalanced!183 (Conc!633) Bool)

(assert (=> d!33489 (= (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))) (isBalanced!183 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(declare-fun bs!12831 () Bool)

(assert (= bs!12831 d!33489))

(declare-fun m!124159 () Bool)

(assert (=> bs!12831 m!124159))

(assert (=> tb!4127 d!33489))

(declare-fun b!140996 () Bool)

(declare-fun e!83124 () Bool)

(declare-fun e!83125 () Bool)

(assert (=> b!140996 (= e!83124 e!83125)))

(declare-fun c!29303 () Bool)

(assert (=> b!140996 (= c!29303 ((_ is IntegerValue!1276) (value!15801 (h!7798 (t!23413 l2!3099)))))))

(declare-fun d!33491 () Bool)

(declare-fun c!29302 () Bool)

(assert (=> d!33491 (= c!29302 ((_ is IntegerValue!1275) (value!15801 (h!7798 (t!23413 l2!3099)))))))

(assert (=> d!33491 (= (inv!21 (value!15801 (h!7798 (t!23413 l2!3099)))) e!83124)))

(declare-fun b!140997 () Bool)

(declare-fun e!83126 () Bool)

(assert (=> b!140997 (= e!83126 (inv!15 (value!15801 (h!7798 (t!23413 l2!3099)))))))

(declare-fun b!140998 () Bool)

(assert (=> b!140998 (= e!83125 (inv!17 (value!15801 (h!7798 (t!23413 l2!3099)))))))

(declare-fun b!140999 () Bool)

(declare-fun res!65500 () Bool)

(assert (=> b!140999 (=> res!65500 e!83126)))

(assert (=> b!140999 (= res!65500 (not ((_ is IntegerValue!1277) (value!15801 (h!7798 (t!23413 l2!3099))))))))

(assert (=> b!140999 (= e!83125 e!83126)))

(declare-fun b!141000 () Bool)

(assert (=> b!141000 (= e!83124 (inv!16 (value!15801 (h!7798 (t!23413 l2!3099)))))))

(assert (= (and d!33491 c!29302) b!141000))

(assert (= (and d!33491 (not c!29302)) b!140996))

(assert (= (and b!140996 c!29303) b!140998))

(assert (= (and b!140996 (not c!29303)) b!140999))

(assert (= (and b!140999 (not res!65500)) b!140997))

(declare-fun m!124161 () Bool)

(assert (=> b!140997 m!124161))

(declare-fun m!124163 () Bool)

(assert (=> b!140998 m!124163))

(declare-fun m!124165 () Bool)

(assert (=> b!141000 m!124165))

(assert (=> b!140989 d!33491))

(declare-fun d!33493 () Bool)

(assert (=> d!33493 (= (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 l2!3099))))) (= (mod (str.len (value!15800 (tag!581 (rule!910 (h!7798 (t!23413 l2!3099)))))) 2) 0))))

(assert (=> b!140990 d!33493))

(declare-fun d!33495 () Bool)

(declare-fun res!65501 () Bool)

(declare-fun e!83127 () Bool)

(assert (=> d!33495 (=> (not res!65501) (not e!83127))))

(assert (=> d!33495 (= res!65501 (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toValue!1014 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))))))

(assert (=> d!33495 (= (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) e!83127)))

(declare-fun b!141001 () Bool)

(assert (=> b!141001 (= e!83127 (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toValue!1014 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))))))

(assert (= (and d!33495 res!65501) b!141001))

(declare-fun m!124167 () Bool)

(assert (=> d!33495 m!124167))

(declare-fun m!124169 () Bool)

(assert (=> b!141001 m!124169))

(assert (=> b!140990 d!33495))

(declare-fun d!33497 () Bool)

(assert (=> d!33497 (= (inv!3154 (tag!581 (h!7799 (t!23414 rules!4268)))) (= (mod (str.len (value!15800 (tag!581 (h!7799 (t!23414 rules!4268))))) 2) 0))))

(assert (=> b!140986 d!33497))

(declare-fun d!33499 () Bool)

(declare-fun res!65502 () Bool)

(declare-fun e!83128 () Bool)

(assert (=> d!33499 (=> (not res!65502) (not e!83128))))

(assert (=> d!33499 (= res!65502 (semiInverseModEq!136 (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toValue!1014 (transformation!403 (h!7799 (t!23414 rules!4268))))))))

(assert (=> d!33499 (= (inv!3157 (transformation!403 (h!7799 (t!23414 rules!4268)))) e!83128)))

(declare-fun b!141002 () Bool)

(assert (=> b!141002 (= e!83128 (equivClasses!119 (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toValue!1014 (transformation!403 (h!7799 (t!23414 rules!4268))))))))

(assert (= (and d!33499 res!65502) b!141002))

(declare-fun m!124171 () Bool)

(assert (=> d!33499 m!124171))

(declare-fun m!124173 () Bool)

(assert (=> b!141002 m!124173))

(assert (=> b!140986 d!33499))

(declare-fun d!33501 () Bool)

(declare-fun lt!41177 () Bool)

(assert (=> d!33501 (= lt!41177 (select (content!347 l1!3130) lt!41171))))

(declare-fun e!83133 () Bool)

(assert (=> d!33501 (= lt!41177 e!83133)))

(declare-fun res!65507 () Bool)

(assert (=> d!33501 (=> (not res!65507) (not e!83133))))

(assert (=> d!33501 (= res!65507 ((_ is Cons!2401) l1!3130))))

(assert (=> d!33501 (= (contains!384 l1!3130 lt!41171) lt!41177)))

(declare-fun b!141007 () Bool)

(declare-fun e!83134 () Bool)

(assert (=> b!141007 (= e!83133 e!83134)))

(declare-fun res!65508 () Bool)

(assert (=> b!141007 (=> res!65508 e!83134)))

(assert (=> b!141007 (= res!65508 (= (h!7798 l1!3130) lt!41171))))

(declare-fun b!141008 () Bool)

(assert (=> b!141008 (= e!83134 (contains!384 (t!23413 l1!3130) lt!41171))))

(assert (= (and d!33501 res!65507) b!141007))

(assert (= (and b!141007 (not res!65508)) b!141008))

(assert (=> d!33501 m!124107))

(declare-fun m!124175 () Bool)

(assert (=> d!33501 m!124175))

(declare-fun m!124177 () Bool)

(assert (=> b!141008 m!124177))

(assert (=> d!33447 d!33501))

(assert (=> d!33447 d!33411))

(declare-fun d!33503 () Bool)

(declare-fun c!29306 () Bool)

(assert (=> d!33503 (= c!29306 ((_ is Node!633) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(declare-fun e!83139 () Bool)

(assert (=> d!33503 (= (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))) e!83139)))

(declare-fun b!141015 () Bool)

(declare-fun inv!3165 (Conc!633) Bool)

(assert (=> b!141015 (= e!83139 (inv!3165 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(declare-fun b!141016 () Bool)

(declare-fun e!83140 () Bool)

(assert (=> b!141016 (= e!83139 e!83140)))

(declare-fun res!65511 () Bool)

(assert (=> b!141016 (= res!65511 (not ((_ is Leaf!1174) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))))))

(assert (=> b!141016 (=> res!65511 e!83140)))

(declare-fun b!141017 () Bool)

(declare-fun inv!3166 (Conc!633) Bool)

(assert (=> b!141017 (= e!83140 (inv!3166 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(assert (= (and d!33503 c!29306) b!141015))

(assert (= (and d!33503 (not c!29306)) b!141016))

(assert (= (and b!141016 (not res!65511)) b!141017))

(declare-fun m!124179 () Bool)

(assert (=> b!141015 m!124179))

(declare-fun m!124181 () Bool)

(assert (=> b!141017 m!124181))

(assert (=> b!140859 d!33503))

(declare-fun d!33505 () Bool)

(assert (=> d!33505 true))

(declare-fun lambda!3351 () Int)

(declare-fun order!1165 () Int)

(declare-fun order!1163 () Int)

(declare-fun dynLambda!804 (Int Int) Int)

(declare-fun dynLambda!805 (Int Int) Int)

(assert (=> d!33505 (< (dynLambda!804 order!1163 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) (dynLambda!805 order!1165 lambda!3351))))

(assert (=> d!33505 true))

(declare-fun order!1167 () Int)

(declare-fun dynLambda!806 (Int Int) Int)

(assert (=> d!33505 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))) (dynLambda!805 order!1165 lambda!3351))))

(declare-fun Forall!110 (Int) Bool)

(assert (=> d!33505 (= (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))) (Forall!110 lambda!3351))))

(declare-fun bs!12850 () Bool)

(assert (= bs!12850 d!33505))

(declare-fun m!124287 () Bool)

(assert (=> bs!12850 m!124287))

(assert (=> d!33425 d!33505))

(declare-fun d!33579 () Bool)

(assert (=> d!33579 true))

(declare-fun order!1169 () Int)

(declare-fun lambda!3354 () Int)

(declare-fun dynLambda!807 (Int Int) Int)

(assert (=> d!33579 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (dynLambda!807 order!1169 lambda!3354))))

(declare-fun Forall2!86 (Int) Bool)

(assert (=> d!33579 (= (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (Forall2!86 lambda!3354))))

(declare-fun bs!12855 () Bool)

(assert (= bs!12855 d!33579))

(declare-fun m!124313 () Bool)

(assert (=> bs!12855 m!124313))

(assert (=> b!140932 d!33579))

(declare-fun d!33593 () Bool)

(declare-fun charsToBigInt!0 (List!2409 Int) Int)

(assert (=> d!33593 (= (inv!15 (value!15801 (h!7798 l1!3130))) (= (charsToBigInt!0 (text!3424 (value!15801 (h!7798 l1!3130))) 0) (value!15796 (value!15801 (h!7798 l1!3130)))))))

(declare-fun bs!12856 () Bool)

(assert (= bs!12856 d!33593))

(declare-fun m!124323 () Bool)

(assert (=> bs!12856 m!124323))

(assert (=> b!140783 d!33593))

(declare-fun b!141138 () Bool)

(declare-fun res!65543 () Bool)

(declare-fun e!83202 () Bool)

(assert (=> b!141138 (=> (not res!65543) (not e!83202))))

(declare-fun lt!41192 () List!2411)

(assert (=> b!141138 (= res!65543 (= (size!2109 lt!41192) (+ (size!2109 (t!23413 l1!3130)) (size!2109 l2!3099))))))

(declare-fun b!141139 () Bool)

(assert (=> b!141139 (= e!83202 (or (not (= l2!3099 Nil!2401)) (= lt!41192 (t!23413 l1!3130))))))

(declare-fun b!141137 () Bool)

(declare-fun e!83203 () List!2411)

(assert (=> b!141137 (= e!83203 (Cons!2401 (h!7798 (t!23413 l1!3130)) (++!526 (t!23413 (t!23413 l1!3130)) l2!3099)))))

(declare-fun b!141136 () Bool)

(assert (=> b!141136 (= e!83203 l2!3099)))

(declare-fun d!33597 () Bool)

(assert (=> d!33597 e!83202))

(declare-fun res!65544 () Bool)

(assert (=> d!33597 (=> (not res!65544) (not e!83202))))

(assert (=> d!33597 (= res!65544 (= (content!347 lt!41192) ((_ map or) (content!347 (t!23413 l1!3130)) (content!347 l2!3099))))))

(assert (=> d!33597 (= lt!41192 e!83203)))

(declare-fun c!29331 () Bool)

(assert (=> d!33597 (= c!29331 ((_ is Nil!2401) (t!23413 l1!3130)))))

(assert (=> d!33597 (= (++!526 (t!23413 l1!3130) l2!3099) lt!41192)))

(assert (= (and d!33597 c!29331) b!141136))

(assert (= (and d!33597 (not c!29331)) b!141137))

(assert (= (and d!33597 res!65544) b!141138))

(assert (= (and b!141138 res!65543) b!141139))

(declare-fun m!124325 () Bool)

(assert (=> b!141138 m!124325))

(declare-fun m!124327 () Bool)

(assert (=> b!141138 m!124327))

(assert (=> b!141138 m!124101))

(declare-fun m!124329 () Bool)

(assert (=> b!141137 m!124329))

(declare-fun m!124331 () Bool)

(assert (=> d!33597 m!124331))

(declare-fun m!124333 () Bool)

(assert (=> d!33597 m!124333))

(assert (=> d!33597 m!124109))

(assert (=> b!140920 d!33597))

(declare-fun d!33599 () Bool)

(declare-fun charsToBigInt!1 (List!2409) Int)

(assert (=> d!33599 (= (inv!17 (value!15801 (h!7798 l1!3130))) (= (charsToBigInt!1 (text!3423 (value!15801 (h!7798 l1!3130)))) (value!15793 (value!15801 (h!7798 l1!3130)))))))

(declare-fun bs!12857 () Bool)

(assert (= bs!12857 d!33599))

(declare-fun m!124339 () Bool)

(assert (=> bs!12857 m!124339))

(assert (=> b!140784 d!33599))

(declare-fun d!33601 () Bool)

(declare-fun charsToInt!0 (List!2409) (_ BitVec 32))

(assert (=> d!33601 (= (inv!16 (value!15801 (h!7798 l1!3130))) (= (charsToInt!0 (text!3422 (value!15801 (h!7798 l1!3130)))) (value!15792 (value!15801 (h!7798 l1!3130)))))))

(declare-fun bs!12858 () Bool)

(assert (= bs!12858 d!33601))

(declare-fun m!124343 () Bool)

(assert (=> bs!12858 m!124343))

(assert (=> b!140786 d!33601))

(declare-fun d!33603 () Bool)

(declare-fun lt!41195 () Int)

(assert (=> d!33603 (>= lt!41195 0)))

(declare-fun e!83229 () Int)

(assert (=> d!33603 (= lt!41195 e!83229)))

(declare-fun c!29334 () Bool)

(assert (=> d!33603 (= c!29334 ((_ is Nil!2401) lt!41174))))

(assert (=> d!33603 (= (size!2109 lt!41174) lt!41195)))

(declare-fun b!141192 () Bool)

(assert (=> b!141192 (= e!83229 0)))

(declare-fun b!141193 () Bool)

(assert (=> b!141193 (= e!83229 (+ 1 (size!2109 (t!23413 lt!41174))))))

(assert (= (and d!33603 c!29334) b!141192))

(assert (= (and d!33603 (not c!29334)) b!141193))

(declare-fun m!124351 () Bool)

(assert (=> b!141193 m!124351))

(assert (=> b!140921 d!33603))

(declare-fun d!33605 () Bool)

(declare-fun lt!41196 () Int)

(assert (=> d!33605 (>= lt!41196 0)))

(declare-fun e!83230 () Int)

(assert (=> d!33605 (= lt!41196 e!83230)))

(declare-fun c!29335 () Bool)

(assert (=> d!33605 (= c!29335 ((_ is Nil!2401) l1!3130))))

(assert (=> d!33605 (= (size!2109 l1!3130) lt!41196)))

(declare-fun b!141194 () Bool)

(assert (=> b!141194 (= e!83230 0)))

(declare-fun b!141195 () Bool)

(assert (=> b!141195 (= e!83230 (+ 1 (size!2109 (t!23413 l1!3130))))))

(assert (= (and d!33605 c!29335) b!141194))

(assert (= (and d!33605 (not c!29335)) b!141195))

(assert (=> b!141195 m!124327))

(assert (=> b!140921 d!33605))

(declare-fun d!33607 () Bool)

(declare-fun lt!41197 () Int)

(assert (=> d!33607 (>= lt!41197 0)))

(declare-fun e!83231 () Int)

(assert (=> d!33607 (= lt!41197 e!83231)))

(declare-fun c!29336 () Bool)

(assert (=> d!33607 (= c!29336 ((_ is Nil!2401) l2!3099))))

(assert (=> d!33607 (= (size!2109 l2!3099) lt!41197)))

(declare-fun b!141196 () Bool)

(assert (=> b!141196 (= e!83231 0)))

(declare-fun b!141197 () Bool)

(assert (=> b!141197 (= e!83231 (+ 1 (size!2109 (t!23413 l2!3099))))))

(assert (= (and d!33607 c!29336) b!141196))

(assert (= (and d!33607 (not c!29336)) b!141197))

(declare-fun m!124353 () Bool)

(assert (=> b!141197 m!124353))

(assert (=> b!140921 d!33607))

(declare-fun bs!12859 () Bool)

(declare-fun d!33609 () Bool)

(assert (= bs!12859 (and d!33609 d!33579)))

(declare-fun lambda!3355 () Int)

(assert (=> bs!12859 (= (= (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (= lambda!3355 lambda!3354))))

(assert (=> d!33609 true))

(assert (=> d!33609 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))) (dynLambda!807 order!1169 lambda!3355))))

(assert (=> d!33609 (= (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))) (Forall2!86 lambda!3355))))

(declare-fun bs!12860 () Bool)

(assert (= bs!12860 d!33609))

(declare-fun m!124365 () Bool)

(assert (=> bs!12860 m!124365))

(assert (=> b!140763 d!33609))

(declare-fun d!33611 () Bool)

(assert (=> d!33611 (= (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))) (isBalanced!183 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(declare-fun bs!12861 () Bool)

(assert (= bs!12861 d!33611))

(declare-fun m!124369 () Bool)

(assert (=> bs!12861 m!124369))

(assert (=> tb!4103 d!33611))

(declare-fun d!33613 () Bool)

(declare-fun res!65545 () Bool)

(declare-fun e!83244 () Bool)

(assert (=> d!33613 (=> res!65545 e!83244)))

(assert (=> d!33613 (= res!65545 (or (not ((_ is Cons!2401) (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))))) (not ((_ is Cons!2401) (t!23413 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))))))))))

(assert (=> d!33613 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))) rules!4268 p!3028) e!83244)))

(declare-fun b!141210 () Bool)

(declare-fun e!83245 () Bool)

(assert (=> b!141210 (= e!83244 e!83245)))

(declare-fun res!65546 () Bool)

(assert (=> b!141210 (=> (not res!65546) (not e!83245))))

(assert (=> b!141210 (= res!65546 (dynLambda!797 p!3028 (h!7798 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099))))) (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))))) rules!4268))))

(declare-fun b!141211 () Bool)

(assert (=> b!141211 (= e!83245 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099)))))) (t!23413 (t!23413 (Cons!2401 (h!7798 (t!23413 (++!526 l1!3130 l2!3099))) (t!23413 (t!23413 (++!526 l1!3130 l2!3099))))))) rules!4268 p!3028))))

(assert (= (and d!33613 (not res!65545)) b!141210))

(assert (= (and b!141210 res!65546) b!141211))

(declare-fun b_lambda!2131 () Bool)

(assert (=> (not b_lambda!2131) (not b!141210)))

(declare-fun t!23542 () Bool)

(declare-fun tb!4211 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23542) tb!4211))

(declare-fun result!6444 () Bool)

(assert (=> tb!4211 (= result!6444 true)))

(assert (=> b!141210 t!23542))

(declare-fun b_and!7135 () Bool)

(assert (= b_and!7049 (and (=> t!23542 result!6444) b_and!7135)))

(declare-fun m!124379 () Bool)

(assert (=> b!141210 m!124379))

(declare-fun m!124381 () Bool)

(assert (=> b!141211 m!124381))

(assert (=> b!140868 d!33613))

(declare-fun d!33615 () Bool)

(assert (=> d!33615 (= (inv!17 (value!15801 (h!7798 l2!3099))) (= (charsToBigInt!1 (text!3423 (value!15801 (h!7798 l2!3099)))) (value!15793 (value!15801 (h!7798 l2!3099)))))))

(declare-fun bs!12862 () Bool)

(assert (= bs!12862 d!33615))

(declare-fun m!124383 () Bool)

(assert (=> bs!12862 m!124383))

(assert (=> b!140803 d!33615))

(declare-fun bs!12863 () Bool)

(declare-fun d!33617 () Bool)

(assert (= bs!12863 (and d!33617 d!33505)))

(declare-fun lambda!3356 () Int)

(assert (=> bs!12863 (= (and (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) (= (toValue!1014 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (= lambda!3356 lambda!3351))))

(assert (=> d!33617 true))

(assert (=> d!33617 (< (dynLambda!804 order!1163 (toChars!873 (transformation!403 (h!7799 rules!4268)))) (dynLambda!805 order!1165 lambda!3356))))

(assert (=> d!33617 true))

(assert (=> d!33617 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (h!7799 rules!4268)))) (dynLambda!805 order!1165 lambda!3356))))

(assert (=> d!33617 (= (semiInverseModEq!136 (toChars!873 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (h!7799 rules!4268)))) (Forall!110 lambda!3356))))

(declare-fun bs!12864 () Bool)

(assert (= bs!12864 d!33617))

(declare-fun m!124385 () Bool)

(assert (=> bs!12864 m!124385))

(assert (=> d!33417 d!33617))

(declare-fun b!141228 () Bool)

(declare-fun e!83250 () Bool)

(declare-fun e!83251 () Bool)

(assert (=> b!141228 (= e!83250 e!83251)))

(declare-fun c!29338 () Bool)

(assert (=> b!141228 (= c!29338 ((_ is IntegerValue!1276) (value!15801 (h!7798 (t!23413 l1!3130)))))))

(declare-fun d!33619 () Bool)

(declare-fun c!29337 () Bool)

(assert (=> d!33619 (= c!29337 ((_ is IntegerValue!1275) (value!15801 (h!7798 (t!23413 l1!3130)))))))

(assert (=> d!33619 (= (inv!21 (value!15801 (h!7798 (t!23413 l1!3130)))) e!83250)))

(declare-fun b!141229 () Bool)

(declare-fun e!83252 () Bool)

(assert (=> b!141229 (= e!83252 (inv!15 (value!15801 (h!7798 (t!23413 l1!3130)))))))

(declare-fun b!141230 () Bool)

(assert (=> b!141230 (= e!83251 (inv!17 (value!15801 (h!7798 (t!23413 l1!3130)))))))

(declare-fun b!141231 () Bool)

(declare-fun res!65547 () Bool)

(assert (=> b!141231 (=> res!65547 e!83252)))

(assert (=> b!141231 (= res!65547 (not ((_ is IntegerValue!1277) (value!15801 (h!7798 (t!23413 l1!3130))))))))

(assert (=> b!141231 (= e!83251 e!83252)))

(declare-fun b!141232 () Bool)

(assert (=> b!141232 (= e!83250 (inv!16 (value!15801 (h!7798 (t!23413 l1!3130)))))))

(assert (= (and d!33619 c!29337) b!141232))

(assert (= (and d!33619 (not c!29337)) b!141228))

(assert (= (and b!141228 c!29338) b!141230))

(assert (= (and b!141228 (not c!29338)) b!141231))

(assert (= (and b!141231 (not res!65547)) b!141229))

(declare-fun m!124387 () Bool)

(assert (=> b!141229 m!124387))

(declare-fun m!124389 () Bool)

(assert (=> b!141230 m!124389))

(declare-fun m!124391 () Bool)

(assert (=> b!141232 m!124391))

(assert (=> b!140965 d!33619))

(declare-fun d!33621 () Bool)

(assert (=> d!33621 (= (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 l1!3130))))) (= (mod (str.len (value!15800 (tag!581 (rule!910 (h!7798 (t!23413 l1!3130)))))) 2) 0))))

(assert (=> b!140966 d!33621))

(declare-fun d!33623 () Bool)

(declare-fun res!65548 () Bool)

(declare-fun e!83253 () Bool)

(assert (=> d!33623 (=> (not res!65548) (not e!83253))))

(assert (=> d!33623 (= res!65548 (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toValue!1014 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))))))

(assert (=> d!33623 (= (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) e!83253)))

(declare-fun b!141233 () Bool)

(assert (=> b!141233 (= e!83253 (equivClasses!119 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toValue!1014 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))))))

(assert (= (and d!33623 res!65548) b!141233))

(declare-fun m!124393 () Bool)

(assert (=> d!33623 m!124393))

(declare-fun m!124395 () Bool)

(assert (=> b!141233 m!124395))

(assert (=> b!140966 d!33623))

(declare-fun d!33625 () Bool)

(assert (=> d!33625 (= (inv!16 (value!15801 (h!7798 l2!3099))) (= (charsToInt!0 (text!3422 (value!15801 (h!7798 l2!3099)))) (value!15792 (value!15801 (h!7798 l2!3099)))))))

(declare-fun bs!12865 () Bool)

(assert (= bs!12865 d!33625))

(declare-fun m!124397 () Bool)

(assert (=> bs!12865 m!124397))

(assert (=> b!140805 d!33625))

(declare-fun d!33627 () Bool)

(declare-fun list!841 (Conc!633) List!2410)

(assert (=> d!33627 (= (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))) (list!841 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(declare-fun bs!12866 () Bool)

(assert (= bs!12866 d!33627))

(declare-fun m!124399 () Bool)

(assert (=> bs!12866 m!124399))

(assert (=> b!140933 d!33627))

(declare-fun bs!12867 () Bool)

(declare-fun d!33629 () Bool)

(assert (= bs!12867 (and d!33629 d!33505)))

(declare-fun lambda!3357 () Int)

(assert (=> bs!12867 (= (and (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) (= (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099)))))) (= lambda!3357 lambda!3351))))

(declare-fun bs!12868 () Bool)

(assert (= bs!12868 (and d!33629 d!33617)))

(assert (=> bs!12868 (= (and (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (h!7799 rules!4268)))) (= (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (h!7799 rules!4268))))) (= lambda!3357 lambda!3356))))

(assert (=> d!33629 true))

(assert (=> d!33629 (< (dynLambda!804 order!1163 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) (dynLambda!805 order!1165 lambda!3357))))

(assert (=> d!33629 true))

(assert (=> d!33629 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (dynLambda!805 order!1165 lambda!3357))))

(assert (=> d!33629 (= (semiInverseModEq!136 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (Forall!110 lambda!3357))))

(declare-fun bs!12869 () Bool)

(assert (= bs!12869 d!33629))

(declare-fun m!124401 () Bool)

(assert (=> bs!12869 m!124401))

(assert (=> d!33481 d!33629))

(declare-fun d!33631 () Bool)

(declare-fun c!29341 () Bool)

(assert (=> d!33631 (= c!29341 ((_ is Nil!2401) lt!41174))))

(declare-fun e!83256 () (InoxSet Token!550))

(assert (=> d!33631 (= (content!347 lt!41174) e!83256)))

(declare-fun b!141238 () Bool)

(assert (=> b!141238 (= e!83256 ((as const (Array Token!550 Bool)) false))))

(declare-fun b!141239 () Bool)

(assert (=> b!141239 (= e!83256 ((_ map or) (store ((as const (Array Token!550 Bool)) false) (h!7798 lt!41174) true) (content!347 (t!23413 lt!41174))))))

(assert (= (and d!33631 c!29341) b!141238))

(assert (= (and d!33631 (not c!29341)) b!141239))

(declare-fun m!124403 () Bool)

(assert (=> b!141239 m!124403))

(declare-fun m!124405 () Bool)

(assert (=> b!141239 m!124405))

(assert (=> d!33477 d!33631))

(declare-fun d!33633 () Bool)

(declare-fun c!29342 () Bool)

(assert (=> d!33633 (= c!29342 ((_ is Nil!2401) l1!3130))))

(declare-fun e!83257 () (InoxSet Token!550))

(assert (=> d!33633 (= (content!347 l1!3130) e!83257)))

(declare-fun b!141240 () Bool)

(assert (=> b!141240 (= e!83257 ((as const (Array Token!550 Bool)) false))))

(declare-fun b!141241 () Bool)

(assert (=> b!141241 (= e!83257 ((_ map or) (store ((as const (Array Token!550 Bool)) false) (h!7798 l1!3130) true) (content!347 (t!23413 l1!3130))))))

(assert (= (and d!33633 c!29342) b!141240))

(assert (= (and d!33633 (not c!29342)) b!141241))

(declare-fun m!124407 () Bool)

(assert (=> b!141241 m!124407))

(assert (=> b!141241 m!124333))

(assert (=> d!33477 d!33633))

(declare-fun d!33635 () Bool)

(declare-fun c!29343 () Bool)

(assert (=> d!33635 (= c!29343 ((_ is Nil!2401) l2!3099))))

(declare-fun e!83258 () (InoxSet Token!550))

(assert (=> d!33635 (= (content!347 l2!3099) e!83258)))

(declare-fun b!141242 () Bool)

(assert (=> b!141242 (= e!83258 ((as const (Array Token!550 Bool)) false))))

(declare-fun b!141243 () Bool)

(assert (=> b!141243 (= e!83258 ((_ map or) (store ((as const (Array Token!550 Bool)) false) (h!7798 l2!3099) true) (content!347 (t!23413 l2!3099))))))

(assert (= (and d!33635 c!29343) b!141242))

(assert (= (and d!33635 (not c!29343)) b!141243))

(declare-fun m!124409 () Bool)

(assert (=> b!141243 m!124409))

(declare-fun m!124411 () Bool)

(assert (=> b!141243 m!124411))

(assert (=> d!33477 d!33635))

(declare-fun d!33637 () Bool)

(declare-fun lt!41200 () Int)

(assert (=> d!33637 (>= lt!41200 0)))

(declare-fun e!83261 () Int)

(assert (=> d!33637 (= lt!41200 e!83261)))

(declare-fun c!29346 () Bool)

(assert (=> d!33637 (= c!29346 ((_ is Nil!2400) (originalCharacters!446 (h!7798 l2!3099))))))

(assert (=> d!33637 (= (size!2108 (originalCharacters!446 (h!7798 l2!3099))) lt!41200)))

(declare-fun b!141248 () Bool)

(assert (=> b!141248 (= e!83261 0)))

(declare-fun b!141249 () Bool)

(assert (=> b!141249 (= e!83261 (+ 1 (size!2108 (t!23412 (originalCharacters!446 (h!7798 l2!3099))))))))

(assert (= (and d!33637 c!29346) b!141248))

(assert (= (and d!33637 (not c!29346)) b!141249))

(declare-fun m!124413 () Bool)

(assert (=> b!141249 m!124413))

(assert (=> b!140934 d!33637))

(declare-fun d!33639 () Bool)

(declare-fun c!29347 () Bool)

(assert (=> d!33639 (= c!29347 ((_ is Node!633) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(declare-fun e!83262 () Bool)

(assert (=> d!33639 (= (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))) e!83262)))

(declare-fun b!141250 () Bool)

(assert (=> b!141250 (= e!83262 (inv!3165 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(declare-fun b!141251 () Bool)

(declare-fun e!83263 () Bool)

(assert (=> b!141251 (= e!83262 e!83263)))

(declare-fun res!65549 () Bool)

(assert (=> b!141251 (= res!65549 (not ((_ is Leaf!1174) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))))))

(assert (=> b!141251 (=> res!65549 e!83263)))

(declare-fun b!141252 () Bool)

(assert (=> b!141252 (= e!83263 (inv!3166 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))))))

(assert (= (and d!33639 c!29347) b!141250))

(assert (= (and d!33639 (not c!29347)) b!141251))

(assert (= (and b!141251 (not res!65549)) b!141252))

(declare-fun m!124415 () Bool)

(assert (=> b!141250 m!124415))

(declare-fun m!124417 () Bool)

(assert (=> b!141252 m!124417))

(assert (=> b!140935 d!33639))

(declare-fun d!33641 () Bool)

(declare-fun res!65550 () Bool)

(declare-fun e!83264 () Bool)

(assert (=> d!33641 (=> res!65550 e!83264)))

(assert (=> d!33641 (= res!65550 (or (not ((_ is Cons!2401) (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))))) (not ((_ is Cons!2401) (t!23413 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))))))))))

(assert (=> d!33641 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))) rules!4268 p!3028) e!83264)))

(declare-fun b!141253 () Bool)

(declare-fun e!83265 () Bool)

(assert (=> b!141253 (= e!83264 e!83265)))

(declare-fun res!65551 () Bool)

(assert (=> b!141253 (=> (not res!65551) (not e!83265))))

(assert (=> b!141253 (= res!65551 (dynLambda!797 p!3028 (h!7798 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130)))) (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))))) rules!4268))))

(declare-fun b!141254 () Bool)

(assert (=> b!141254 (= e!83265 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130))))) (t!23413 (t!23413 (Cons!2401 (h!7798 (t!23413 l1!3130)) (t!23413 (t!23413 l1!3130)))))) rules!4268 p!3028))))

(assert (= (and d!33641 (not res!65550)) b!141253))

(assert (= (and b!141253 res!65551) b!141254))

(declare-fun b_lambda!2143 () Bool)

(assert (=> (not b_lambda!2143) (not b!141253)))

(declare-fun t!23544 () Bool)

(declare-fun tb!4213 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23544) tb!4213))

(declare-fun result!6446 () Bool)

(assert (=> tb!4213 (= result!6446 true)))

(assert (=> b!141253 t!23544))

(declare-fun b_and!7137 () Bool)

(assert (= b_and!7135 (and (=> t!23544 result!6446) b_and!7137)))

(declare-fun m!124419 () Bool)

(assert (=> b!141253 m!124419))

(declare-fun m!124421 () Bool)

(assert (=> b!141254 m!124421))

(assert (=> b!140807 d!33641))

(declare-fun d!33643 () Bool)

(declare-fun res!65552 () Bool)

(declare-fun e!83266 () Bool)

(assert (=> d!33643 (=> res!65552 e!83266)))

(assert (=> d!33643 (= res!65552 (or (not ((_ is Cons!2401) (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))))) (not ((_ is Cons!2401) (t!23413 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))))))))))

(assert (=> d!33643 (= (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))) rules!4268 p!3028) e!83266)))

(declare-fun b!141255 () Bool)

(declare-fun e!83267 () Bool)

(assert (=> b!141255 (= e!83266 e!83267)))

(declare-fun res!65553 () Bool)

(assert (=> b!141255 (=> (not res!65553) (not e!83267))))

(assert (=> b!141255 (= res!65553 (dynLambda!797 p!3028 (h!7798 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099)))) (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))))) rules!4268))))

(declare-fun b!141256 () Bool)

(assert (=> b!141256 (= e!83267 (tokensListTwoByTwoPredicateList!28 thiss!27322 (Cons!2401 (h!7798 (t!23413 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099))))) (t!23413 (t!23413 (Cons!2401 (h!7798 (t!23413 l2!3099)) (t!23413 (t!23413 l2!3099)))))) rules!4268 p!3028))))

(assert (= (and d!33643 (not res!65552)) b!141255))

(assert (= (and b!141255 res!65553) b!141256))

(declare-fun b_lambda!2145 () Bool)

(assert (=> (not b_lambda!2145) (not b!141255)))

(declare-fun t!23546 () Bool)

(declare-fun tb!4215 () Bool)

(assert (=> (and start!14758 (= p!3028 p!3028) t!23546) tb!4215))

(declare-fun result!6448 () Bool)

(assert (=> tb!4215 (= result!6448 true)))

(assert (=> b!141255 t!23546))

(declare-fun b_and!7139 () Bool)

(assert (= b_and!7137 (and (=> t!23546 result!6448) b_and!7139)))

(declare-fun m!124423 () Bool)

(assert (=> b!141255 m!124423))

(declare-fun m!124425 () Bool)

(assert (=> b!141256 m!124425))

(assert (=> b!140800 d!33643))

(declare-fun d!33645 () Bool)

(assert (=> d!33645 (= (isEmpty!920 (originalCharacters!446 (h!7798 l2!3099))) ((_ is Nil!2400) (originalCharacters!446 (h!7798 l2!3099))))))

(assert (=> d!33483 d!33645))

(declare-fun d!33647 () Bool)

(declare-fun lt!41201 () Token!550)

(assert (=> d!33647 (contains!384 (t!23413 l1!3130) lt!41201)))

(declare-fun e!83268 () Token!550)

(assert (=> d!33647 (= lt!41201 e!83268)))

(declare-fun c!29348 () Bool)

(assert (=> d!33647 (= c!29348 (and ((_ is Cons!2401) (t!23413 l1!3130)) ((_ is Nil!2401) (t!23413 (t!23413 l1!3130)))))))

(assert (=> d!33647 (not (isEmpty!918 (t!23413 l1!3130)))))

(assert (=> d!33647 (= (last!37 (t!23413 l1!3130)) lt!41201)))

(declare-fun b!141257 () Bool)

(assert (=> b!141257 (= e!83268 (h!7798 (t!23413 l1!3130)))))

(declare-fun b!141258 () Bool)

(assert (=> b!141258 (= e!83268 (last!37 (t!23413 (t!23413 l1!3130))))))

(assert (= (and d!33647 c!29348) b!141257))

(assert (= (and d!33647 (not c!29348)) b!141258))

(declare-fun m!124427 () Bool)

(assert (=> d!33647 m!124427))

(assert (=> d!33647 m!123911))

(declare-fun m!124429 () Bool)

(assert (=> b!141258 m!124429))

(assert (=> b!140831 d!33647))

(declare-fun d!33649 () Bool)

(assert (=> d!33649 (= (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))) (list!841 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))))))

(declare-fun bs!12870 () Bool)

(assert (= bs!12870 d!33649))

(declare-fun m!124431 () Bool)

(assert (=> bs!12870 m!124431))

(assert (=> b!140844 d!33649))

(declare-fun bs!12871 () Bool)

(declare-fun d!33651 () Bool)

(assert (= bs!12871 (and d!33651 d!33579)))

(declare-fun lambda!3358 () Int)

(assert (=> bs!12871 (= (= (toValue!1014 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l1!3130))))) (= lambda!3358 lambda!3354))))

(declare-fun bs!12872 () Bool)

(assert (= bs!12872 (and d!33651 d!33609)))

(assert (=> bs!12872 (= (= (toValue!1014 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (rule!910 (h!7798 l2!3099))))) (= lambda!3358 lambda!3355))))

(assert (=> d!33651 true))

(assert (=> d!33651 (< (dynLambda!806 order!1167 (toValue!1014 (transformation!403 (h!7799 rules!4268)))) (dynLambda!807 order!1169 lambda!3358))))

(assert (=> d!33651 (= (equivClasses!119 (toChars!873 (transformation!403 (h!7799 rules!4268))) (toValue!1014 (transformation!403 (h!7799 rules!4268)))) (Forall2!86 lambda!3358))))

(declare-fun bs!12873 () Bool)

(assert (= bs!12873 d!33651))

(declare-fun m!124433 () Bool)

(assert (=> bs!12873 m!124433))

(assert (=> b!140762 d!33651))

(declare-fun d!33653 () Bool)

(assert (=> d!33653 (= (inv!15 (value!15801 (h!7798 l2!3099))) (= (charsToBigInt!0 (text!3424 (value!15801 (h!7798 l2!3099))) 0) (value!15796 (value!15801 (h!7798 l2!3099)))))))

(declare-fun bs!12874 () Bool)

(assert (= bs!12874 d!33653))

(declare-fun m!124435 () Bool)

(assert (=> bs!12874 m!124435))

(assert (=> b!140802 d!33653))

(declare-fun d!33655 () Bool)

(assert (=> d!33655 (= (isEmpty!920 (originalCharacters!446 (h!7798 l1!3130))) ((_ is Nil!2400) (originalCharacters!446 (h!7798 l1!3130))))))

(assert (=> d!33457 d!33655))

(declare-fun d!33657 () Bool)

(declare-fun res!65554 () Bool)

(declare-fun e!83269 () Bool)

(assert (=> d!33657 (=> (not res!65554) (not e!83269))))

(assert (=> d!33657 (= res!65554 (not (isEmpty!920 (originalCharacters!446 (h!7798 (t!23413 l1!3130))))))))

(assert (=> d!33657 (= (inv!3158 (h!7798 (t!23413 l1!3130))) e!83269)))

(declare-fun b!141259 () Bool)

(declare-fun res!65555 () Bool)

(assert (=> b!141259 (=> (not res!65555) (not e!83269))))

(assert (=> b!141259 (= res!65555 (= (originalCharacters!446 (h!7798 (t!23413 l1!3130))) (list!839 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (value!15801 (h!7798 (t!23413 l1!3130)))))))))

(declare-fun b!141260 () Bool)

(assert (=> b!141260 (= e!83269 (= (size!2105 (h!7798 (t!23413 l1!3130))) (size!2108 (originalCharacters!446 (h!7798 (t!23413 l1!3130))))))))

(assert (= (and d!33657 res!65554) b!141259))

(assert (= (and b!141259 res!65555) b!141260))

(declare-fun b_lambda!2147 () Bool)

(assert (=> (not b_lambda!2147) (not b!141259)))

(declare-fun tb!4217 () Bool)

(declare-fun t!23548 () Bool)

(assert (=> (and b!140987 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23548) tb!4217))

(declare-fun b!141261 () Bool)

(declare-fun e!83270 () Bool)

(declare-fun tp!74343 () Bool)

(assert (=> b!141261 (= e!83270 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (value!15801 (h!7798 (t!23413 l1!3130)))))) tp!74343))))

(declare-fun result!6450 () Bool)

(assert (=> tb!4217 (= result!6450 (and (inv!3162 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (value!15801 (h!7798 (t!23413 l1!3130))))) e!83270))))

(assert (= tb!4217 b!141261))

(declare-fun m!124437 () Bool)

(assert (=> b!141261 m!124437))

(declare-fun m!124439 () Bool)

(assert (=> tb!4217 m!124439))

(assert (=> b!141259 t!23548))

(declare-fun b_and!7141 () Bool)

(assert (= b_and!7087 (and (=> t!23548 result!6450) b_and!7141)))

(declare-fun t!23550 () Bool)

(declare-fun tb!4219 () Bool)

(assert (=> (and b!140991 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23550) tb!4219))

(declare-fun result!6452 () Bool)

(assert (= result!6452 result!6450))

(assert (=> b!141259 t!23550))

(declare-fun b_and!7143 () Bool)

(assert (= b_and!7085 (and (=> t!23550 result!6452) b_and!7143)))

(declare-fun t!23552 () Bool)

(declare-fun tb!4221 () Bool)

(assert (=> (and b!140741 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23552) tb!4221))

(declare-fun result!6454 () Bool)

(assert (= result!6454 result!6450))

(assert (=> b!141259 t!23552))

(declare-fun b_and!7145 () Bool)

(assert (= b_and!7081 (and (=> t!23552 result!6454) b_and!7145)))

(declare-fun t!23554 () Bool)

(declare-fun tb!4223 () Bool)

(assert (=> (and b!140729 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23554) tb!4223))

(declare-fun result!6456 () Bool)

(assert (= result!6456 result!6450))

(assert (=> b!141259 t!23554))

(declare-fun b_and!7147 () Bool)

(assert (= b_and!7089 (and (=> t!23554 result!6456) b_and!7147)))

(declare-fun t!23556 () Bool)

(declare-fun tb!4225 () Bool)

(assert (=> (and b!140967 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23556) tb!4225))

(declare-fun result!6458 () Bool)

(assert (= result!6458 result!6450))

(assert (=> b!141259 t!23556))

(declare-fun b_and!7149 () Bool)

(assert (= b_and!7091 (and (=> t!23556 result!6458) b_and!7149)))

(declare-fun t!23558 () Bool)

(declare-fun tb!4227 () Bool)

(assert (=> (and b!140724 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23558) tb!4227))

(declare-fun result!6460 () Bool)

(assert (= result!6460 result!6450))

(assert (=> b!141259 t!23558))

(declare-fun b_and!7151 () Bool)

(assert (= b_and!7083 (and (=> t!23558 result!6460) b_and!7151)))

(declare-fun m!124441 () Bool)

(assert (=> d!33657 m!124441))

(declare-fun m!124443 () Bool)

(assert (=> b!141259 m!124443))

(assert (=> b!141259 m!124443))

(declare-fun m!124445 () Bool)

(assert (=> b!141259 m!124445))

(declare-fun m!124447 () Bool)

(assert (=> b!141260 m!124447))

(assert (=> b!140964 d!33657))

(declare-fun d!33659 () Bool)

(declare-fun lt!41202 () Int)

(assert (=> d!33659 (>= lt!41202 0)))

(declare-fun e!83271 () Int)

(assert (=> d!33659 (= lt!41202 e!83271)))

(declare-fun c!29349 () Bool)

(assert (=> d!33659 (= c!29349 ((_ is Nil!2400) (originalCharacters!446 (h!7798 l1!3130))))))

(assert (=> d!33659 (= (size!2108 (originalCharacters!446 (h!7798 l1!3130))) lt!41202)))

(declare-fun b!141262 () Bool)

(assert (=> b!141262 (= e!83271 0)))

(declare-fun b!141263 () Bool)

(assert (=> b!141263 (= e!83271 (+ 1 (size!2108 (t!23412 (originalCharacters!446 (h!7798 l1!3130))))))))

(assert (= (and d!33659 c!29349) b!141262))

(assert (= (and d!33659 (not c!29349)) b!141263))

(declare-fun m!124449 () Bool)

(assert (=> b!141263 m!124449))

(assert (=> b!140845 d!33659))

(declare-fun b!141267 () Bool)

(declare-fun b_free!4633 () Bool)

(declare-fun b_next!4633 () Bool)

(assert (=> b!141267 (= b_free!4633 (not b_next!4633))))

(declare-fun tp!74345 () Bool)

(declare-fun b_and!7153 () Bool)

(assert (=> b!141267 (= tp!74345 b_and!7153)))

(declare-fun b_free!4635 () Bool)

(declare-fun b_next!4635 () Bool)

(assert (=> b!141267 (= b_free!4635 (not b_next!4635))))

(declare-fun tb!4229 () Bool)

(declare-fun t!23560 () Bool)

(assert (=> (and b!141267 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23560) tb!4229))

(declare-fun result!6462 () Bool)

(assert (= result!6462 result!6316))

(assert (=> b!140844 t!23560))

(declare-fun t!23562 () Bool)

(declare-fun tb!4231 () Bool)

(assert (=> (and b!141267 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23562) tb!4231))

(declare-fun result!6464 () Bool)

(assert (= result!6464 result!6350))

(assert (=> b!140933 t!23562))

(declare-fun t!23564 () Bool)

(declare-fun tb!4233 () Bool)

(assert (=> (and b!141267 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23564) tb!4233))

(declare-fun result!6466 () Bool)

(assert (= result!6466 result!6376))

(assert (=> b!140993 t!23564))

(declare-fun t!23566 () Bool)

(declare-fun tb!4235 () Bool)

(assert (=> (and b!141267 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23566) tb!4235))

(declare-fun result!6468 () Bool)

(assert (= result!6468 result!6450))

(assert (=> b!141259 t!23566))

(declare-fun b_and!7155 () Bool)

(declare-fun tp!74347 () Bool)

(assert (=> b!141267 (= tp!74347 (and (=> t!23560 result!6462) (=> t!23562 result!6464) (=> t!23564 result!6466) (=> t!23566 result!6468) b_and!7155))))

(declare-fun e!83274 () Bool)

(assert (=> b!140988 (= tp!74218 e!83274)))

(declare-fun b!141265 () Bool)

(declare-fun e!83277 () Bool)

(declare-fun tp!74346 () Bool)

(declare-fun e!83272 () Bool)

(assert (=> b!141265 (= e!83272 (and (inv!21 (value!15801 (h!7798 (t!23413 (t!23413 l2!3099))))) e!83277 tp!74346))))

(declare-fun b!141264 () Bool)

(declare-fun tp!74348 () Bool)

(assert (=> b!141264 (= e!83274 (and (inv!3158 (h!7798 (t!23413 (t!23413 l2!3099)))) e!83272 tp!74348))))

(declare-fun e!83276 () Bool)

(declare-fun b!141266 () Bool)

(declare-fun tp!74344 () Bool)

(assert (=> b!141266 (= e!83277 (and tp!74344 (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) e!83276))))

(assert (=> b!141267 (= e!83276 (and tp!74345 tp!74347))))

(assert (= b!141266 b!141267))

(assert (= b!141265 b!141266))

(assert (= b!141264 b!141265))

(assert (= (and b!140988 ((_ is Cons!2401) (t!23413 (t!23413 l2!3099)))) b!141264))

(declare-fun m!124451 () Bool)

(assert (=> b!141265 m!124451))

(declare-fun m!124453 () Bool)

(assert (=> b!141264 m!124453))

(declare-fun m!124455 () Bool)

(assert (=> b!141266 m!124455))

(declare-fun m!124457 () Bool)

(assert (=> b!141266 m!124457))

(declare-fun e!83278 () Bool)

(assert (=> b!140951 (= tp!74176 e!83278)))

(declare-fun b!141270 () Bool)

(declare-fun tp!74352 () Bool)

(assert (=> b!141270 (= e!83278 tp!74352)))

(declare-fun b!141271 () Bool)

(declare-fun tp!74350 () Bool)

(declare-fun tp!74349 () Bool)

(assert (=> b!141271 (= e!83278 (and tp!74350 tp!74349))))

(declare-fun b!141269 () Bool)

(declare-fun tp!74351 () Bool)

(declare-fun tp!74353 () Bool)

(assert (=> b!141269 (= e!83278 (and tp!74351 tp!74353))))

(declare-fun b!141268 () Bool)

(assert (=> b!141268 (= e!83278 tp_is_empty!1571)))

(assert (= (and b!140951 ((_ is ElementMatch!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141268))

(assert (= (and b!140951 ((_ is Concat!1053) (regOne!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141269))

(assert (= (and b!140951 ((_ is Star!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141270))

(assert (= (and b!140951 ((_ is Union!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141271))

(declare-fun e!83279 () Bool)

(assert (=> b!140951 (= tp!74178 e!83279)))

(declare-fun b!141274 () Bool)

(declare-fun tp!74357 () Bool)

(assert (=> b!141274 (= e!83279 tp!74357)))

(declare-fun b!141275 () Bool)

(declare-fun tp!74355 () Bool)

(declare-fun tp!74354 () Bool)

(assert (=> b!141275 (= e!83279 (and tp!74355 tp!74354))))

(declare-fun b!141273 () Bool)

(declare-fun tp!74356 () Bool)

(declare-fun tp!74358 () Bool)

(assert (=> b!141273 (= e!83279 (and tp!74356 tp!74358))))

(declare-fun b!141272 () Bool)

(assert (=> b!141272 (= e!83279 tp_is_empty!1571)))

(assert (= (and b!140951 ((_ is ElementMatch!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141272))

(assert (= (and b!140951 ((_ is Concat!1053) (regTwo!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141273))

(assert (= (and b!140951 ((_ is Star!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141274))

(assert (= (and b!140951 ((_ is Union!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141275))

(declare-fun b!141276 () Bool)

(declare-fun e!83280 () Bool)

(declare-fun tp!74359 () Bool)

(assert (=> b!141276 (= e!83280 (and tp_is_empty!1571 tp!74359))))

(assert (=> b!140965 (= tp!74191 e!83280)))

(assert (= (and b!140965 ((_ is Cons!2400) (originalCharacters!446 (h!7798 (t!23413 l1!3130))))) b!141276))

(declare-fun b!141279 () Bool)

(declare-fun b_free!4637 () Bool)

(declare-fun b_next!4637 () Bool)

(assert (=> b!141279 (= b_free!4637 (not b_next!4637))))

(declare-fun tp!74360 () Bool)

(declare-fun b_and!7157 () Bool)

(assert (=> b!141279 (= tp!74360 b_and!7157)))

(declare-fun b_free!4639 () Bool)

(declare-fun b_next!4639 () Bool)

(assert (=> b!141279 (= b_free!4639 (not b_next!4639))))

(declare-fun t!23568 () Bool)

(declare-fun tb!4237 () Bool)

(assert (=> (and b!141279 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23568) tb!4237))

(declare-fun result!6470 () Bool)

(assert (= result!6470 result!6316))

(assert (=> b!140844 t!23568))

(declare-fun tb!4239 () Bool)

(declare-fun t!23570 () Bool)

(assert (=> (and b!141279 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23570) tb!4239))

(declare-fun result!6472 () Bool)

(assert (= result!6472 result!6350))

(assert (=> b!140933 t!23570))

(declare-fun tb!4241 () Bool)

(declare-fun t!23572 () Bool)

(assert (=> (and b!141279 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23572) tb!4241))

(declare-fun result!6474 () Bool)

(assert (= result!6474 result!6376))

(assert (=> b!140993 t!23572))

(declare-fun tb!4243 () Bool)

(declare-fun t!23574 () Bool)

(assert (=> (and b!141279 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23574) tb!4243))

(declare-fun result!6476 () Bool)

(assert (= result!6476 result!6450))

(assert (=> b!141259 t!23574))

(declare-fun b_and!7159 () Bool)

(declare-fun tp!74361 () Bool)

(assert (=> b!141279 (= tp!74361 (and (=> t!23568 result!6470) (=> t!23570 result!6472) (=> t!23572 result!6474) (=> t!23574 result!6476) b_and!7159))))

(declare-fun e!83282 () Bool)

(assert (=> b!141279 (= e!83282 (and tp!74360 tp!74361))))

(declare-fun b!141278 () Bool)

(declare-fun e!83281 () Bool)

(declare-fun tp!74362 () Bool)

(assert (=> b!141278 (= e!83281 (and tp!74362 (inv!3154 (tag!581 (h!7799 (t!23414 (t!23414 rules!4268))))) (inv!3157 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) e!83282))))

(declare-fun b!141277 () Bool)

(declare-fun e!83283 () Bool)

(declare-fun tp!74363 () Bool)

(assert (=> b!141277 (= e!83283 (and e!83281 tp!74363))))

(assert (=> b!140985 (= tp!74213 e!83283)))

(assert (= b!141278 b!141279))

(assert (= b!141277 b!141278))

(assert (= (and b!140985 ((_ is Cons!2402) (t!23414 (t!23414 rules!4268)))) b!141277))

(declare-fun m!124459 () Bool)

(assert (=> b!141278 m!124459))

(declare-fun m!124461 () Bool)

(assert (=> b!141278 m!124461))

(declare-fun e!83285 () Bool)

(assert (=> b!140947 (= tp!74171 e!83285)))

(declare-fun b!141282 () Bool)

(declare-fun tp!74367 () Bool)

(assert (=> b!141282 (= e!83285 tp!74367)))

(declare-fun b!141283 () Bool)

(declare-fun tp!74365 () Bool)

(declare-fun tp!74364 () Bool)

(assert (=> b!141283 (= e!83285 (and tp!74365 tp!74364))))

(declare-fun b!141281 () Bool)

(declare-fun tp!74366 () Bool)

(declare-fun tp!74368 () Bool)

(assert (=> b!141281 (= e!83285 (and tp!74366 tp!74368))))

(declare-fun b!141280 () Bool)

(assert (=> b!141280 (= e!83285 tp_is_empty!1571)))

(assert (= (and b!140947 ((_ is ElementMatch!627) (regOne!1766 (regex!403 (h!7799 rules!4268))))) b!141280))

(assert (= (and b!140947 ((_ is Concat!1053) (regOne!1766 (regex!403 (h!7799 rules!4268))))) b!141281))

(assert (= (and b!140947 ((_ is Star!627) (regOne!1766 (regex!403 (h!7799 rules!4268))))) b!141282))

(assert (= (and b!140947 ((_ is Union!627) (regOne!1766 (regex!403 (h!7799 rules!4268))))) b!141283))

(declare-fun e!83286 () Bool)

(assert (=> b!140947 (= tp!74173 e!83286)))

(declare-fun b!141286 () Bool)

(declare-fun tp!74372 () Bool)

(assert (=> b!141286 (= e!83286 tp!74372)))

(declare-fun b!141287 () Bool)

(declare-fun tp!74370 () Bool)

(declare-fun tp!74369 () Bool)

(assert (=> b!141287 (= e!83286 (and tp!74370 tp!74369))))

(declare-fun b!141285 () Bool)

(declare-fun tp!74371 () Bool)

(declare-fun tp!74373 () Bool)

(assert (=> b!141285 (= e!83286 (and tp!74371 tp!74373))))

(declare-fun b!141284 () Bool)

(assert (=> b!141284 (= e!83286 tp_is_empty!1571)))

(assert (= (and b!140947 ((_ is ElementMatch!627) (regTwo!1766 (regex!403 (h!7799 rules!4268))))) b!141284))

(assert (= (and b!140947 ((_ is Concat!1053) (regTwo!1766 (regex!403 (h!7799 rules!4268))))) b!141285))

(assert (= (and b!140947 ((_ is Star!627) (regTwo!1766 (regex!403 (h!7799 rules!4268))))) b!141286))

(assert (= (and b!140947 ((_ is Union!627) (regTwo!1766 (regex!403 (h!7799 rules!4268))))) b!141287))

(declare-fun e!83287 () Bool)

(assert (=> b!140966 (= tp!74189 e!83287)))

(declare-fun b!141290 () Bool)

(declare-fun tp!74377 () Bool)

(assert (=> b!141290 (= e!83287 tp!74377)))

(declare-fun b!141291 () Bool)

(declare-fun tp!74375 () Bool)

(declare-fun tp!74374 () Bool)

(assert (=> b!141291 (= e!83287 (and tp!74375 tp!74374))))

(declare-fun b!141289 () Bool)

(declare-fun tp!74376 () Bool)

(declare-fun tp!74378 () Bool)

(assert (=> b!141289 (= e!83287 (and tp!74376 tp!74378))))

(declare-fun b!141288 () Bool)

(assert (=> b!141288 (= e!83287 tp_is_empty!1571)))

(assert (= (and b!140966 ((_ is ElementMatch!627) (regex!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) b!141288))

(assert (= (and b!140966 ((_ is Concat!1053) (regex!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) b!141289))

(assert (= (and b!140966 ((_ is Star!627) (regex!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) b!141290))

(assert (= (and b!140966 ((_ is Union!627) (regex!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) b!141291))

(declare-fun b!141292 () Bool)

(declare-fun e!83288 () Bool)

(declare-fun tp!74379 () Bool)

(assert (=> b!141292 (= e!83288 (and tp_is_empty!1571 tp!74379))))

(assert (=> b!140989 (= tp!74216 e!83288)))

(assert (= (and b!140989 ((_ is Cons!2400) (originalCharacters!446 (h!7798 (t!23413 l2!3099))))) b!141292))

(declare-fun e!83289 () Bool)

(assert (=> b!140952 (= tp!74177 e!83289)))

(declare-fun b!141295 () Bool)

(declare-fun tp!74383 () Bool)

(assert (=> b!141295 (= e!83289 tp!74383)))

(declare-fun b!141296 () Bool)

(declare-fun tp!74381 () Bool)

(declare-fun tp!74380 () Bool)

(assert (=> b!141296 (= e!83289 (and tp!74381 tp!74380))))

(declare-fun b!141294 () Bool)

(declare-fun tp!74382 () Bool)

(declare-fun tp!74384 () Bool)

(assert (=> b!141294 (= e!83289 (and tp!74382 tp!74384))))

(declare-fun b!141293 () Bool)

(assert (=> b!141293 (= e!83289 tp_is_empty!1571)))

(assert (= (and b!140952 ((_ is ElementMatch!627) (reg!956 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141293))

(assert (= (and b!140952 ((_ is Concat!1053) (reg!956 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141294))

(assert (= (and b!140952 ((_ is Star!627) (reg!956 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141295))

(assert (= (and b!140952 ((_ is Union!627) (reg!956 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141296))

(declare-fun e!83290 () Bool)

(assert (=> b!140990 (= tp!74214 e!83290)))

(declare-fun b!141299 () Bool)

(declare-fun tp!74388 () Bool)

(assert (=> b!141299 (= e!83290 tp!74388)))

(declare-fun b!141300 () Bool)

(declare-fun tp!74386 () Bool)

(declare-fun tp!74385 () Bool)

(assert (=> b!141300 (= e!83290 (and tp!74386 tp!74385))))

(declare-fun b!141298 () Bool)

(declare-fun tp!74387 () Bool)

(declare-fun tp!74389 () Bool)

(assert (=> b!141298 (= e!83290 (and tp!74387 tp!74389))))

(declare-fun b!141297 () Bool)

(assert (=> b!141297 (= e!83290 tp_is_empty!1571)))

(assert (= (and b!140990 ((_ is ElementMatch!627) (regex!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) b!141297))

(assert (= (and b!140990 ((_ is Concat!1053) (regex!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) b!141298))

(assert (= (and b!140990 ((_ is Star!627) (regex!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) b!141299))

(assert (= (and b!140990 ((_ is Union!627) (regex!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) b!141300))

(declare-fun e!83291 () Bool)

(assert (=> b!140953 (= tp!74175 e!83291)))

(declare-fun b!141303 () Bool)

(declare-fun tp!74393 () Bool)

(assert (=> b!141303 (= e!83291 tp!74393)))

(declare-fun b!141304 () Bool)

(declare-fun tp!74391 () Bool)

(declare-fun tp!74390 () Bool)

(assert (=> b!141304 (= e!83291 (and tp!74391 tp!74390))))

(declare-fun b!141302 () Bool)

(declare-fun tp!74392 () Bool)

(declare-fun tp!74394 () Bool)

(assert (=> b!141302 (= e!83291 (and tp!74392 tp!74394))))

(declare-fun b!141301 () Bool)

(assert (=> b!141301 (= e!83291 tp_is_empty!1571)))

(assert (= (and b!140953 ((_ is ElementMatch!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141301))

(assert (= (and b!140953 ((_ is Concat!1053) (regOne!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141302))

(assert (= (and b!140953 ((_ is Star!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141303))

(assert (= (and b!140953 ((_ is Union!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141304))

(declare-fun e!83292 () Bool)

(assert (=> b!140953 (= tp!74174 e!83292)))

(declare-fun b!141307 () Bool)

(declare-fun tp!74398 () Bool)

(assert (=> b!141307 (= e!83292 tp!74398)))

(declare-fun b!141308 () Bool)

(declare-fun tp!74396 () Bool)

(declare-fun tp!74395 () Bool)

(assert (=> b!141308 (= e!83292 (and tp!74396 tp!74395))))

(declare-fun b!141306 () Bool)

(declare-fun tp!74397 () Bool)

(declare-fun tp!74399 () Bool)

(assert (=> b!141306 (= e!83292 (and tp!74397 tp!74399))))

(declare-fun b!141305 () Bool)

(assert (=> b!141305 (= e!83292 tp_is_empty!1571)))

(assert (= (and b!140953 ((_ is ElementMatch!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141305))

(assert (= (and b!140953 ((_ is Concat!1053) (regTwo!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141306))

(assert (= (and b!140953 ((_ is Star!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141307))

(assert (= (and b!140953 ((_ is Union!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l2!3099)))))) b!141308))

(declare-fun e!83293 () Bool)

(assert (=> b!140986 (= tp!74212 e!83293)))

(declare-fun b!141311 () Bool)

(declare-fun tp!74403 () Bool)

(assert (=> b!141311 (= e!83293 tp!74403)))

(declare-fun b!141312 () Bool)

(declare-fun tp!74401 () Bool)

(declare-fun tp!74400 () Bool)

(assert (=> b!141312 (= e!83293 (and tp!74401 tp!74400))))

(declare-fun b!141310 () Bool)

(declare-fun tp!74402 () Bool)

(declare-fun tp!74404 () Bool)

(assert (=> b!141310 (= e!83293 (and tp!74402 tp!74404))))

(declare-fun b!141309 () Bool)

(assert (=> b!141309 (= e!83293 tp_is_empty!1571)))

(assert (= (and b!140986 ((_ is ElementMatch!627) (regex!403 (h!7799 (t!23414 rules!4268))))) b!141309))

(assert (= (and b!140986 ((_ is Concat!1053) (regex!403 (h!7799 (t!23414 rules!4268))))) b!141310))

(assert (= (and b!140986 ((_ is Star!627) (regex!403 (h!7799 (t!23414 rules!4268))))) b!141311))

(assert (= (and b!140986 ((_ is Union!627) (regex!403 (h!7799 (t!23414 rules!4268))))) b!141312))

(declare-fun e!83294 () Bool)

(assert (=> b!140948 (= tp!74172 e!83294)))

(declare-fun b!141315 () Bool)

(declare-fun tp!74408 () Bool)

(assert (=> b!141315 (= e!83294 tp!74408)))

(declare-fun b!141316 () Bool)

(declare-fun tp!74406 () Bool)

(declare-fun tp!74405 () Bool)

(assert (=> b!141316 (= e!83294 (and tp!74406 tp!74405))))

(declare-fun b!141314 () Bool)

(declare-fun tp!74407 () Bool)

(declare-fun tp!74409 () Bool)

(assert (=> b!141314 (= e!83294 (and tp!74407 tp!74409))))

(declare-fun b!141313 () Bool)

(assert (=> b!141313 (= e!83294 tp_is_empty!1571)))

(assert (= (and b!140948 ((_ is ElementMatch!627) (reg!956 (regex!403 (h!7799 rules!4268))))) b!141313))

(assert (= (and b!140948 ((_ is Concat!1053) (reg!956 (regex!403 (h!7799 rules!4268))))) b!141314))

(assert (= (and b!140948 ((_ is Star!627) (reg!956 (regex!403 (h!7799 rules!4268))))) b!141315))

(assert (= (and b!140948 ((_ is Union!627) (reg!956 (regex!403 (h!7799 rules!4268))))) b!141316))

(declare-fun e!83295 () Bool)

(assert (=> b!140949 (= tp!74170 e!83295)))

(declare-fun b!141319 () Bool)

(declare-fun tp!74413 () Bool)

(assert (=> b!141319 (= e!83295 tp!74413)))

(declare-fun b!141320 () Bool)

(declare-fun tp!74411 () Bool)

(declare-fun tp!74410 () Bool)

(assert (=> b!141320 (= e!83295 (and tp!74411 tp!74410))))

(declare-fun b!141318 () Bool)

(declare-fun tp!74412 () Bool)

(declare-fun tp!74414 () Bool)

(assert (=> b!141318 (= e!83295 (and tp!74412 tp!74414))))

(declare-fun b!141317 () Bool)

(assert (=> b!141317 (= e!83295 tp_is_empty!1571)))

(assert (= (and b!140949 ((_ is ElementMatch!627) (regOne!1767 (regex!403 (h!7799 rules!4268))))) b!141317))

(assert (= (and b!140949 ((_ is Concat!1053) (regOne!1767 (regex!403 (h!7799 rules!4268))))) b!141318))

(assert (= (and b!140949 ((_ is Star!627) (regOne!1767 (regex!403 (h!7799 rules!4268))))) b!141319))

(assert (= (and b!140949 ((_ is Union!627) (regOne!1767 (regex!403 (h!7799 rules!4268))))) b!141320))

(declare-fun e!83296 () Bool)

(assert (=> b!140949 (= tp!74169 e!83296)))

(declare-fun b!141323 () Bool)

(declare-fun tp!74418 () Bool)

(assert (=> b!141323 (= e!83296 tp!74418)))

(declare-fun b!141324 () Bool)

(declare-fun tp!74416 () Bool)

(declare-fun tp!74415 () Bool)

(assert (=> b!141324 (= e!83296 (and tp!74416 tp!74415))))

(declare-fun b!141322 () Bool)

(declare-fun tp!74417 () Bool)

(declare-fun tp!74419 () Bool)

(assert (=> b!141322 (= e!83296 (and tp!74417 tp!74419))))

(declare-fun b!141321 () Bool)

(assert (=> b!141321 (= e!83296 tp_is_empty!1571)))

(assert (= (and b!140949 ((_ is ElementMatch!627) (regTwo!1767 (regex!403 (h!7799 rules!4268))))) b!141321))

(assert (= (and b!140949 ((_ is Concat!1053) (regTwo!1767 (regex!403 (h!7799 rules!4268))))) b!141322))

(assert (= (and b!140949 ((_ is Star!627) (regTwo!1767 (regex!403 (h!7799 rules!4268))))) b!141323))

(assert (= (and b!140949 ((_ is Union!627) (regTwo!1767 (regex!403 (h!7799 rules!4268))))) b!141324))

(declare-fun b!141333 () Bool)

(declare-fun tp!74426 () Bool)

(declare-fun tp!74427 () Bool)

(declare-fun e!83301 () Bool)

(assert (=> b!141333 (= e!83301 (and (inv!3161 (left!1821 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))) tp!74426 (inv!3161 (right!2151 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))) tp!74427))))

(declare-fun b!141335 () Bool)

(declare-fun e!83302 () Bool)

(declare-fun tp!74428 () Bool)

(assert (=> b!141335 (= e!83302 tp!74428)))

(declare-fun b!141334 () Bool)

(declare-fun inv!3167 (IArray!1267) Bool)

(assert (=> b!141334 (= e!83301 (and (inv!3167 (xs!3228 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))) e!83302))))

(assert (=> b!140859 (= tp!74096 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130))))) e!83301))))

(assert (= (and b!140859 ((_ is Node!633) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))) b!141333))

(assert (= b!141334 b!141335))

(assert (= (and b!140859 ((_ is Leaf!1174) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (value!15801 (h!7798 l1!3130)))))) b!141334))

(declare-fun m!124463 () Bool)

(assert (=> b!141333 m!124463))

(declare-fun m!124465 () Bool)

(assert (=> b!141333 m!124465))

(declare-fun m!124467 () Bool)

(assert (=> b!141334 m!124467))

(assert (=> b!140859 m!124057))

(declare-fun e!83303 () Bool)

(assert (=> b!140974 (= tp!74199 e!83303)))

(declare-fun b!141338 () Bool)

(declare-fun tp!74432 () Bool)

(assert (=> b!141338 (= e!83303 tp!74432)))

(declare-fun b!141339 () Bool)

(declare-fun tp!74430 () Bool)

(declare-fun tp!74429 () Bool)

(assert (=> b!141339 (= e!83303 (and tp!74430 tp!74429))))

(declare-fun b!141337 () Bool)

(declare-fun tp!74431 () Bool)

(declare-fun tp!74433 () Bool)

(assert (=> b!141337 (= e!83303 (and tp!74431 tp!74433))))

(declare-fun b!141336 () Bool)

(assert (=> b!141336 (= e!83303 tp_is_empty!1571)))

(assert (= (and b!140974 ((_ is ElementMatch!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141336))

(assert (= (and b!140974 ((_ is Concat!1053) (regOne!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141337))

(assert (= (and b!140974 ((_ is Star!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141338))

(assert (= (and b!140974 ((_ is Union!627) (regOne!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141339))

(declare-fun e!83304 () Bool)

(assert (=> b!140974 (= tp!74201 e!83304)))

(declare-fun b!141342 () Bool)

(declare-fun tp!74437 () Bool)

(assert (=> b!141342 (= e!83304 tp!74437)))

(declare-fun b!141343 () Bool)

(declare-fun tp!74435 () Bool)

(declare-fun tp!74434 () Bool)

(assert (=> b!141343 (= e!83304 (and tp!74435 tp!74434))))

(declare-fun b!141341 () Bool)

(declare-fun tp!74436 () Bool)

(declare-fun tp!74438 () Bool)

(assert (=> b!141341 (= e!83304 (and tp!74436 tp!74438))))

(declare-fun b!141340 () Bool)

(assert (=> b!141340 (= e!83304 tp_is_empty!1571)))

(assert (= (and b!140974 ((_ is ElementMatch!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141340))

(assert (= (and b!140974 ((_ is Concat!1053) (regTwo!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141341))

(assert (= (and b!140974 ((_ is Star!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141342))

(assert (= (and b!140974 ((_ is Union!627) (regTwo!1766 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141343))

(declare-fun e!83305 () Bool)

(assert (=> b!140975 (= tp!74200 e!83305)))

(declare-fun b!141346 () Bool)

(declare-fun tp!74442 () Bool)

(assert (=> b!141346 (= e!83305 tp!74442)))

(declare-fun b!141347 () Bool)

(declare-fun tp!74440 () Bool)

(declare-fun tp!74439 () Bool)

(assert (=> b!141347 (= e!83305 (and tp!74440 tp!74439))))

(declare-fun b!141345 () Bool)

(declare-fun tp!74441 () Bool)

(declare-fun tp!74443 () Bool)

(assert (=> b!141345 (= e!83305 (and tp!74441 tp!74443))))

(declare-fun b!141344 () Bool)

(assert (=> b!141344 (= e!83305 tp_is_empty!1571)))

(assert (= (and b!140975 ((_ is ElementMatch!627) (reg!956 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141344))

(assert (= (and b!140975 ((_ is Concat!1053) (reg!956 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141345))

(assert (= (and b!140975 ((_ is Star!627) (reg!956 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141346))

(assert (= (and b!140975 ((_ is Union!627) (reg!956 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141347))

(declare-fun e!83306 () Bool)

(declare-fun tp!74444 () Bool)

(declare-fun tp!74445 () Bool)

(declare-fun b!141348 () Bool)

(assert (=> b!141348 (= e!83306 (and (inv!3161 (left!1821 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))) tp!74444 (inv!3161 (right!2151 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))) tp!74445))))

(declare-fun b!141350 () Bool)

(declare-fun e!83307 () Bool)

(declare-fun tp!74446 () Bool)

(assert (=> b!141350 (= e!83307 tp!74446)))

(declare-fun b!141349 () Bool)

(assert (=> b!141349 (= e!83306 (and (inv!3167 (xs!3228 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))) e!83307))))

(assert (=> b!140935 (= tp!74158 (and (inv!3161 (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099))))) e!83306))))

(assert (= (and b!140935 ((_ is Node!633) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))) b!141348))

(assert (= b!141349 b!141350))

(assert (= (and b!140935 ((_ is Leaf!1174) (c!29272 (dynLambda!799 (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (value!15801 (h!7798 l2!3099)))))) b!141349))

(declare-fun m!124469 () Bool)

(assert (=> b!141348 m!124469))

(declare-fun m!124471 () Bool)

(assert (=> b!141348 m!124471))

(declare-fun m!124473 () Bool)

(assert (=> b!141349 m!124473))

(assert (=> b!140935 m!124115))

(declare-fun b!141351 () Bool)

(declare-fun e!83308 () Bool)

(declare-fun tp!74447 () Bool)

(assert (=> b!141351 (= e!83308 (and tp_is_empty!1571 tp!74447))))

(assert (=> b!140992 (= tp!74219 e!83308)))

(assert (= (and b!140992 ((_ is Cons!2400) (t!23412 (originalCharacters!446 (h!7798 l2!3099))))) b!141351))

(declare-fun e!83309 () Bool)

(assert (=> b!140976 (= tp!74198 e!83309)))

(declare-fun b!141354 () Bool)

(declare-fun tp!74451 () Bool)

(assert (=> b!141354 (= e!83309 tp!74451)))

(declare-fun b!141355 () Bool)

(declare-fun tp!74449 () Bool)

(declare-fun tp!74448 () Bool)

(assert (=> b!141355 (= e!83309 (and tp!74449 tp!74448))))

(declare-fun b!141353 () Bool)

(declare-fun tp!74450 () Bool)

(declare-fun tp!74452 () Bool)

(assert (=> b!141353 (= e!83309 (and tp!74450 tp!74452))))

(declare-fun b!141352 () Bool)

(assert (=> b!141352 (= e!83309 tp_is_empty!1571)))

(assert (= (and b!140976 ((_ is ElementMatch!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141352))

(assert (= (and b!140976 ((_ is Concat!1053) (regOne!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141353))

(assert (= (and b!140976 ((_ is Star!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141354))

(assert (= (and b!140976 ((_ is Union!627) (regOne!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141355))

(declare-fun e!83310 () Bool)

(assert (=> b!140976 (= tp!74197 e!83310)))

(declare-fun b!141358 () Bool)

(declare-fun tp!74456 () Bool)

(assert (=> b!141358 (= e!83310 tp!74456)))

(declare-fun b!141359 () Bool)

(declare-fun tp!74454 () Bool)

(declare-fun tp!74453 () Bool)

(assert (=> b!141359 (= e!83310 (and tp!74454 tp!74453))))

(declare-fun b!141357 () Bool)

(declare-fun tp!74455 () Bool)

(declare-fun tp!74457 () Bool)

(assert (=> b!141357 (= e!83310 (and tp!74455 tp!74457))))

(declare-fun b!141356 () Bool)

(assert (=> b!141356 (= e!83310 tp_is_empty!1571)))

(assert (= (and b!140976 ((_ is ElementMatch!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141356))

(assert (= (and b!140976 ((_ is Concat!1053) (regTwo!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141357))

(assert (= (and b!140976 ((_ is Star!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141358))

(assert (= (and b!140976 ((_ is Union!627) (regTwo!1767 (regex!403 (rule!910 (h!7798 l1!3130)))))) b!141359))

(declare-fun b!141360 () Bool)

(declare-fun e!83311 () Bool)

(declare-fun tp!74458 () Bool)

(assert (=> b!141360 (= e!83311 (and tp_is_empty!1571 tp!74458))))

(assert (=> b!140972 (= tp!74196 e!83311)))

(assert (= (and b!140972 ((_ is Cons!2400) (t!23412 (originalCharacters!446 (h!7798 l1!3130))))) b!141360))

(declare-fun b!141364 () Bool)

(declare-fun b_free!4641 () Bool)

(declare-fun b_next!4641 () Bool)

(assert (=> b!141364 (= b_free!4641 (not b_next!4641))))

(declare-fun tp!74460 () Bool)

(declare-fun b_and!7161 () Bool)

(assert (=> b!141364 (= tp!74460 b_and!7161)))

(declare-fun b_free!4643 () Bool)

(declare-fun b_next!4643 () Bool)

(assert (=> b!141364 (= b_free!4643 (not b_next!4643))))

(declare-fun t!23576 () Bool)

(declare-fun tb!4245 () Bool)

(assert (=> (and b!141364 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130))))) t!23576) tb!4245))

(declare-fun result!6480 () Bool)

(assert (= result!6480 result!6316))

(assert (=> b!140844 t!23576))

(declare-fun tb!4247 () Bool)

(declare-fun t!23578 () Bool)

(assert (=> (and b!141364 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099))))) t!23578) tb!4247))

(declare-fun result!6482 () Bool)

(assert (= result!6482 result!6350))

(assert (=> b!140933 t!23578))

(declare-fun tb!4249 () Bool)

(declare-fun t!23580 () Bool)

(assert (=> (and b!141364 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099)))))) t!23580) tb!4249))

(declare-fun result!6484 () Bool)

(assert (= result!6484 result!6376))

(assert (=> b!140993 t!23580))

(declare-fun t!23582 () Bool)

(declare-fun tb!4251 () Bool)

(assert (=> (and b!141364 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130)))))) t!23582) tb!4251))

(declare-fun result!6486 () Bool)

(assert (= result!6486 result!6450))

(assert (=> b!141259 t!23582))

(declare-fun b_and!7163 () Bool)

(declare-fun tp!74462 () Bool)

(assert (=> b!141364 (= tp!74462 (and (=> t!23576 result!6480) (=> t!23578 result!6482) (=> t!23580 result!6484) (=> t!23582 result!6486) b_and!7163))))

(declare-fun e!83314 () Bool)

(assert (=> b!140964 (= tp!74193 e!83314)))

(declare-fun tp!74461 () Bool)

(declare-fun b!141362 () Bool)

(declare-fun e!83317 () Bool)

(declare-fun e!83312 () Bool)

(assert (=> b!141362 (= e!83312 (and (inv!21 (value!15801 (h!7798 (t!23413 (t!23413 l1!3130))))) e!83317 tp!74461))))

(declare-fun b!141361 () Bool)

(declare-fun tp!74463 () Bool)

(assert (=> b!141361 (= e!83314 (and (inv!3158 (h!7798 (t!23413 (t!23413 l1!3130)))) e!83312 tp!74463))))

(declare-fun tp!74459 () Bool)

(declare-fun e!83316 () Bool)

(declare-fun b!141363 () Bool)

(assert (=> b!141363 (= e!83317 (and tp!74459 (inv!3154 (tag!581 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (inv!3157 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) e!83316))))

(assert (=> b!141364 (= e!83316 (and tp!74460 tp!74462))))

(assert (= b!141363 b!141364))

(assert (= b!141362 b!141363))

(assert (= b!141361 b!141362))

(assert (= (and b!140964 ((_ is Cons!2401) (t!23413 (t!23413 l1!3130)))) b!141361))

(declare-fun m!124475 () Bool)

(assert (=> b!141362 m!124475))

(declare-fun m!124477 () Bool)

(assert (=> b!141361 m!124477))

(declare-fun m!124479 () Bool)

(assert (=> b!141363 m!124479))

(declare-fun m!124481 () Bool)

(assert (=> b!141363 m!124481))

(declare-fun b_lambda!2149 () Bool)

(assert (= b_lambda!2147 (or (and b!140987 b_free!4615 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!141267 b_free!4635 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!140724 b_free!4589 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!140729 b_free!4585 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!140741 b_free!4593 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!141364 b_free!4643 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!140991 b_free!4619 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) (and b!140967 b_free!4611) (and b!141279 b_free!4639 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))))) b_lambda!2149)))

(declare-fun b_lambda!2151 () Bool)

(assert (= b_lambda!2131 (or (and start!14758 b_free!4595) b_lambda!2151)))

(declare-fun b_lambda!2153 () Bool)

(assert (= b_lambda!2145 (or (and start!14758 b_free!4595) b_lambda!2153)))

(declare-fun b_lambda!2155 () Bool)

(assert (= b_lambda!2119 (or (and b!140967 b_free!4611 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l1!3130))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!140991 b_free!4619) (and b!141279 b_free!4639 (= (toChars!873 (transformation!403 (h!7799 (t!23414 (t!23414 rules!4268))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!141267 b_free!4635 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l2!3099)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!140724 b_free!4589 (= (toChars!873 (transformation!403 (h!7799 rules!4268))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!141364 b_free!4643 (= (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 (t!23413 l1!3130)))))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!140741 b_free!4593 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l1!3130)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!140729 b_free!4585 (= (toChars!873 (transformation!403 (rule!910 (h!7798 l2!3099)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) (and b!140987 b_free!4615 (= (toChars!873 (transformation!403 (h!7799 (t!23414 rules!4268)))) (toChars!873 (transformation!403 (rule!910 (h!7798 (t!23413 l2!3099))))))) b_lambda!2155)))

(declare-fun b_lambda!2157 () Bool)

(assert (= b_lambda!2143 (or (and start!14758 b_free!4595) b_lambda!2157)))

(check-sat (not d!33649) (not d!33495) (not b_lambda!2151) (not b!141324) (not b!140995) (not b!141270) (not b!141355) b_and!7163 (not b!141308) (not b!141249) b_and!7069 (not d!33627) b_and!7013 (not b!141008) (not b_lambda!2157) (not b!141292) (not d!33617) (not b!141239) (not b_next!4585) (not b!141287) (not b!141286) (not d!33653) (not b!141233) (not d!33579) (not b!141339) (not b!141362) (not d!33597) (not b!141337) (not b!141138) (not b!141316) (not d!33601) b_and!7151 (not d!33593) (not b!141361) b_and!7143 (not b!141363) (not b!141353) (not b_next!4637) (not b!141345) (not b!141211) (not b!141322) (not b!141290) (not b!141334) (not b!141241) (not b_next!4609) (not b!141289) (not b!141291) (not d!33487) (not b!140998) (not b!141310) (not b!141230) (not b_lambda!2115) b_and!7145 (not b!141315) (not b!141294) (not b!141341) (not b!141269) (not b!141351) (not d!33599) (not b_lambda!2117) (not b!141323) (not b!141266) (not b!141271) (not b!141312) (not b_next!4583) (not b!141276) (not b_lambda!2153) (not b!140859) (not b!141197) (not b_next!4615) (not b!141252) (not b!141304) b_and!7005 (not b_next!4595) (not b_next!4639) (not b!141260) (not b!140993) (not tb!4145) (not b!141349) (not d!33609) (not d!33623) (not d!33505) (not b!141232) (not b!141258) (not b!140935) b_and!7157 (not b_next!4591) (not d!33489) (not b!141274) (not d!33501) (not b!141263) (not b!141259) (not b!141319) (not d!33499) (not b_next!4641) (not b!141295) (not b!141347) (not b_next!4589) (not d!33615) (not b!141285) b_and!7009 (not b!141338) (not b!141302) (not b_next!4635) (not b!141298) (not b!141359) (not b!141283) b_and!7149 (not b!141354) (not b_next!4633) b_and!7077 (not d!33647) (not b!141348) (not b_lambda!2109) (not b_lambda!2111) (not b!141306) b_and!7073 (not b!141017) (not b!141254) (not b!141195) b_and!7147 (not b!141278) (not b!141358) (not b_lambda!2113) (not b!141256) (not b_lambda!2075) (not b!140994) (not d!33625) (not b_next!4611) (not b!141261) b_and!7153 (not b!141333) (not d!33651) (not b!141300) b_and!7161 (not b!141360) (not b!141277) (not tb!4217) (not b!141314) (not b_next!4593) (not b!141273) (not b_lambda!2155) b_and!7155 (not b!141357) (not b!141000) (not b!141296) (not b_next!4613) (not b!141335) (not b!141346) (not b!141001) (not b!141282) (not b!141318) (not b!141320) (not b_next!4587) (not b!141229) (not b!141002) (not b!141350) tp_is_empty!1571 (not b!141299) (not b!141343) b_and!7141 (not b_next!4619) (not b!141243) (not b!141342) (not b!140997) (not b!141311) (not b!141015) b_and!7139 (not d!33611) b_and!7159 (not d!33629) (not b!141264) (not b!141193) (not b!141303) (not d!33657) (not b_lambda!2149) (not b_next!4617) (not b!141275) (not b!141307) (not b!141250) (not b_next!4643) (not b!141137) (not b!141265) (not b!141281))
(check-sat b_and!7013 (not b_next!4585) b_and!7145 (not b_next!4583) (not b_next!4615) (not b_next!4641) (not b_next!4611) (not b_next!4593) (not b_next!4587) (not b_next!4643) b_and!7163 b_and!7069 b_and!7143 b_and!7151 (not b_next!4637) (not b_next!4609) (not b_next!4639) b_and!7005 (not b_next!4595) b_and!7157 (not b_next!4591) (not b_next!4589) b_and!7009 (not b_next!4635) b_and!7149 (not b_next!4633) b_and!7077 b_and!7073 b_and!7147 b_and!7153 b_and!7161 (not b_next!4613) b_and!7155 b_and!7141 (not b_next!4619) b_and!7139 b_and!7159 (not b_next!4617))

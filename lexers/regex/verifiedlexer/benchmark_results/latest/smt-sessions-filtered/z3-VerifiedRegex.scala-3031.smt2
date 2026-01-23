; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181150 () Bool)

(assert start!181150)

(declare-fun b!1826968 () Bool)

(declare-fun b_free!50927 () Bool)

(declare-fun b_next!51631 () Bool)

(assert (=> b!1826968 (= b_free!50927 (not b_next!51631))))

(declare-fun tp!516633 () Bool)

(declare-fun b_and!141941 () Bool)

(assert (=> b!1826968 (= tp!516633 b_and!141941)))

(declare-fun b_free!50929 () Bool)

(declare-fun b_next!51633 () Bool)

(assert (=> b!1826968 (= b_free!50929 (not b_next!51633))))

(declare-fun tp!516636 () Bool)

(declare-fun b_and!141943 () Bool)

(assert (=> b!1826968 (= tp!516636 b_and!141943)))

(declare-fun b!1826973 () Bool)

(declare-fun b_free!50931 () Bool)

(declare-fun b_next!51635 () Bool)

(assert (=> b!1826973 (= b_free!50931 (not b_next!51635))))

(declare-fun tp!516638 () Bool)

(declare-fun b_and!141945 () Bool)

(assert (=> b!1826973 (= tp!516638 b_and!141945)))

(declare-fun b_free!50933 () Bool)

(declare-fun b_next!51637 () Bool)

(assert (=> b!1826973 (= b_free!50933 (not b_next!51637))))

(declare-fun tp!516632 () Bool)

(declare-fun b_and!141947 () Bool)

(assert (=> b!1826973 (= tp!516632 b_and!141947)))

(declare-fun b!1826980 () Bool)

(declare-fun b_free!50935 () Bool)

(declare-fun b_next!51639 () Bool)

(assert (=> b!1826980 (= b_free!50935 (not b_next!51639))))

(declare-fun tp!516640 () Bool)

(declare-fun b_and!141949 () Bool)

(assert (=> b!1826980 (= tp!516640 b_and!141949)))

(declare-fun b_free!50937 () Bool)

(declare-fun b_next!51641 () Bool)

(assert (=> b!1826980 (= b_free!50937 (not b_next!51641))))

(declare-fun tp!516629 () Bool)

(declare-fun b_and!141951 () Bool)

(assert (=> b!1826980 (= tp!516629 b_and!141951)))

(declare-datatypes ((List!20139 0))(
  ( (Nil!20069) (Cons!20069 (h!25470 (_ BitVec 16)) (t!170338 List!20139)) )
))
(declare-datatypes ((TokenValue!3713 0))(
  ( (FloatLiteralValue!7426 (text!26436 List!20139)) (TokenValueExt!3712 (__x!12728 Int)) (Broken!18565 (value!112896 List!20139)) (Object!3782) (End!3713) (Def!3713) (Underscore!3713) (Match!3713) (Else!3713) (Error!3713) (Case!3713) (If!3713) (Extends!3713) (Abstract!3713) (Class!3713) (Val!3713) (DelimiterValue!7426 (del!3773 List!20139)) (KeywordValue!3719 (value!112897 List!20139)) (CommentValue!7426 (value!112898 List!20139)) (WhitespaceValue!7426 (value!112899 List!20139)) (IndentationValue!3713 (value!112900 List!20139)) (String!22896) (Int32!3713) (Broken!18566 (value!112901 List!20139)) (Boolean!3714) (Unit!34740) (OperatorValue!3716 (op!3773 List!20139)) (IdentifierValue!7426 (value!112902 List!20139)) (IdentifierValue!7427 (value!112903 List!20139)) (WhitespaceValue!7427 (value!112904 List!20139)) (True!7426) (False!7426) (Broken!18567 (value!112905 List!20139)) (Broken!18568 (value!112906 List!20139)) (True!7427) (RightBrace!3713) (RightBracket!3713) (Colon!3713) (Null!3713) (Comma!3713) (LeftBracket!3713) (False!7427) (LeftBrace!3713) (ImaginaryLiteralValue!3713 (text!26437 List!20139)) (StringLiteralValue!11139 (value!112907 List!20139)) (EOFValue!3713 (value!112908 List!20139)) (IdentValue!3713 (value!112909 List!20139)) (DelimiterValue!7427 (value!112910 List!20139)) (DedentValue!3713 (value!112911 List!20139)) (NewLineValue!3713 (value!112912 List!20139)) (IntegerValue!11139 (value!112913 (_ BitVec 32)) (text!26438 List!20139)) (IntegerValue!11140 (value!112914 Int) (text!26439 List!20139)) (Times!3713) (Or!3713) (Equal!3713) (Minus!3713) (Broken!18569 (value!112915 List!20139)) (And!3713) (Div!3713) (LessEqual!3713) (Mod!3713) (Concat!8664) (Not!3713) (Plus!3713) (SpaceValue!3713 (value!112916 List!20139)) (IntegerValue!11141 (value!112917 Int) (text!26440 List!20139)) (StringLiteralValue!11140 (text!26441 List!20139)) (FloatLiteralValue!7427 (text!26442 List!20139)) (BytesLiteralValue!3713 (value!112918 List!20139)) (CommentValue!7427 (value!112919 List!20139)) (StringLiteralValue!11141 (value!112920 List!20139)) (ErrorTokenValue!3713 (msg!3774 List!20139)) )
))
(declare-datatypes ((C!10076 0))(
  ( (C!10077 (val!5634 Int)) )
))
(declare-datatypes ((List!20140 0))(
  ( (Nil!20070) (Cons!20070 (h!25471 C!10076) (t!170339 List!20140)) )
))
(declare-datatypes ((IArray!13315 0))(
  ( (IArray!13316 (innerList!6715 List!20140)) )
))
(declare-datatypes ((Conc!6655 0))(
  ( (Node!6655 (left!16056 Conc!6655) (right!16386 Conc!6655) (csize!13540 Int) (cheight!6866 Int)) (Leaf!9687 (xs!9531 IArray!13315) (csize!13541 Int)) (Empty!6655) )
))
(declare-datatypes ((BalanceConc!13254 0))(
  ( (BalanceConc!13255 (c!298022 Conc!6655)) )
))
(declare-datatypes ((TokenValueInjection!7086 0))(
  ( (TokenValueInjection!7087 (toValue!5162 Int) (toChars!5021 Int)) )
))
(declare-datatypes ((Regex!4951 0))(
  ( (ElementMatch!4951 (c!298023 C!10076)) (Concat!8665 (regOne!10414 Regex!4951) (regTwo!10414 Regex!4951)) (EmptyExpr!4951) (Star!4951 (reg!5280 Regex!4951)) (EmptyLang!4951) (Union!4951 (regOne!10415 Regex!4951) (regTwo!10415 Regex!4951)) )
))
(declare-datatypes ((String!22897 0))(
  ( (String!22898 (value!112921 String)) )
))
(declare-datatypes ((Rule!7046 0))(
  ( (Rule!7047 (regex!3623 Regex!4951) (tag!4037 String!22897) (isSeparator!3623 Bool) (transformation!3623 TokenValueInjection!7086)) )
))
(declare-datatypes ((List!20141 0))(
  ( (Nil!20071) (Cons!20071 (h!25472 Rule!7046) (t!170340 List!20141)) )
))
(declare-fun rules!4538 () List!20141)

(declare-fun e!1167763 () Bool)

(declare-fun e!1167757 () Bool)

(declare-fun b!1826964 () Bool)

(declare-fun tp!516631 () Bool)

(declare-fun inv!26111 (String!22897) Bool)

(declare-fun inv!26114 (TokenValueInjection!7086) Bool)

(assert (=> b!1826964 (= e!1167757 (and tp!516631 (inv!26111 (tag!4037 (h!25472 rules!4538))) (inv!26114 (transformation!3623 (h!25472 rules!4538))) e!1167763))))

(declare-fun b!1826965 () Bool)

(declare-fun res!821645 () Bool)

(declare-fun e!1167752 () Bool)

(assert (=> b!1826965 (=> (not res!821645) (not e!1167752))))

(declare-fun rule!559 () Rule!7046)

(declare-fun contains!3689 (List!20141 Rule!7046) Bool)

(assert (=> b!1826965 (= res!821645 (contains!3689 rules!4538 rule!559))))

(declare-fun b!1826966 () Bool)

(declare-fun res!821642 () Bool)

(assert (=> b!1826966 (=> (not res!821642) (not e!1167752))))

(declare-fun suffix!1667 () List!20140)

(declare-datatypes ((Token!6800 0))(
  ( (Token!6801 (value!112922 TokenValue!3713) (rule!5783 Rule!7046) (size!15920 Int) (originalCharacters!4431 List!20140)) )
))
(declare-fun token!556 () Token!6800)

(declare-fun input!3612 () List!20140)

(declare-fun ++!5447 (List!20140 List!20140) List!20140)

(declare-fun list!8153 (BalanceConc!13254) List!20140)

(declare-fun charsOf!2266 (Token!6800) BalanceConc!13254)

(assert (=> b!1826966 (= res!821642 (= input!3612 (++!5447 (list!8153 (charsOf!2266 token!556)) suffix!1667)))))

(declare-fun b!1826967 () Bool)

(declare-fun e!1167751 () Bool)

(declare-fun tp!516634 () Bool)

(assert (=> b!1826967 (= e!1167751 (and e!1167757 tp!516634))))

(assert (=> b!1826968 (= e!1167763 (and tp!516633 tp!516636))))

(declare-fun b!1826969 () Bool)

(declare-fun e!1167759 () Bool)

(declare-fun tp_is_empty!8137 () Bool)

(declare-fun tp!516635 () Bool)

(assert (=> b!1826969 (= e!1167759 (and tp_is_empty!8137 tp!516635))))

(declare-fun b!1826970 () Bool)

(declare-fun e!1167758 () Bool)

(declare-fun tp!516639 () Bool)

(assert (=> b!1826970 (= e!1167758 (and tp_is_empty!8137 tp!516639))))

(declare-fun b!1826971 () Bool)

(declare-fun tp!516630 () Bool)

(declare-fun e!1167760 () Bool)

(declare-fun e!1167753 () Bool)

(declare-fun inv!21 (TokenValue!3713) Bool)

(assert (=> b!1826971 (= e!1167753 (and (inv!21 (value!112922 token!556)) e!1167760 tp!516630))))

(declare-fun res!821648 () Bool)

(assert (=> start!181150 (=> (not res!821648) (not e!1167752))))

(declare-datatypes ((LexerInterface!3252 0))(
  ( (LexerInterfaceExt!3249 (__x!12729 Int)) (Lexer!3250) )
))
(declare-fun thiss!28068 () LexerInterface!3252)

(get-info :version)

(assert (=> start!181150 (= res!821648 ((_ is Lexer!3250) thiss!28068))))

(assert (=> start!181150 e!1167752))

(assert (=> start!181150 e!1167759))

(assert (=> start!181150 true))

(assert (=> start!181150 e!1167751))

(declare-fun inv!26115 (Token!6800) Bool)

(assert (=> start!181150 (and (inv!26115 token!556) e!1167753)))

(declare-fun e!1167762 () Bool)

(assert (=> start!181150 e!1167762))

(assert (=> start!181150 e!1167758))

(declare-fun b!1826972 () Bool)

(declare-fun res!821644 () Bool)

(assert (=> b!1826972 (=> (not res!821644) (not e!1167752))))

(declare-fun rulesInvariant!2921 (LexerInterface!3252 List!20141) Bool)

(assert (=> b!1826972 (= res!821644 (rulesInvariant!2921 thiss!28068 rules!4538))))

(declare-fun e!1167756 () Bool)

(assert (=> b!1826973 (= e!1167756 (and tp!516638 tp!516632))))

(declare-fun b!1826974 () Bool)

(declare-fun res!821643 () Bool)

(assert (=> b!1826974 (=> (not res!821643) (not e!1167752))))

(declare-fun isEmpty!12671 (List!20141) Bool)

(assert (=> b!1826974 (= res!821643 (not (isEmpty!12671 rules!4538)))))

(declare-fun b!1826975 () Bool)

(declare-fun res!821646 () Bool)

(assert (=> b!1826975 (=> (not res!821646) (not e!1167752))))

(declare-datatypes ((tuple2!19554 0))(
  ( (tuple2!19555 (_1!11179 Token!6800) (_2!11179 List!20140)) )
))
(declare-datatypes ((Option!4203 0))(
  ( (None!4202) (Some!4202 (v!25763 tuple2!19554)) )
))
(declare-fun maxPrefix!1800 (LexerInterface!3252 List!20141 List!20140) Option!4203)

(assert (=> b!1826975 (= res!821646 (= (maxPrefix!1800 thiss!28068 rules!4538 input!3612) (Some!4202 (tuple2!19555 token!556 suffix!1667))))))

(declare-fun tp!516637 () Bool)

(declare-fun b!1826976 () Bool)

(assert (=> b!1826976 (= e!1167760 (and tp!516637 (inv!26111 (tag!4037 (rule!5783 token!556))) (inv!26114 (transformation!3623 (rule!5783 token!556))) e!1167756))))

(declare-fun b!1826977 () Bool)

(declare-fun res!821647 () Bool)

(assert (=> b!1826977 (=> (not res!821647) (not e!1167752))))

(assert (=> b!1826977 (= res!821647 (= (rule!5783 token!556) rule!559))))

(declare-fun b!1826978 () Bool)

(declare-fun tp!516628 () Bool)

(declare-fun e!1167755 () Bool)

(assert (=> b!1826978 (= e!1167762 (and tp!516628 (inv!26111 (tag!4037 rule!559)) (inv!26114 (transformation!3623 rule!559)) e!1167755))))

(declare-fun b!1826979 () Bool)

(declare-fun rulesValidInductive!1246 (LexerInterface!3252 List!20141) Bool)

(assert (=> b!1826979 (= e!1167752 (not (rulesValidInductive!1246 thiss!28068 rules!4538)))))

(assert (=> b!1826980 (= e!1167755 (and tp!516640 tp!516629))))

(assert (= (and start!181150 res!821648) b!1826974))

(assert (= (and b!1826974 res!821643) b!1826972))

(assert (= (and b!1826972 res!821644) b!1826965))

(assert (= (and b!1826965 res!821645) b!1826975))

(assert (= (and b!1826975 res!821646) b!1826977))

(assert (= (and b!1826977 res!821647) b!1826966))

(assert (= (and b!1826966 res!821642) b!1826979))

(assert (= (and start!181150 ((_ is Cons!20070) suffix!1667)) b!1826969))

(assert (= b!1826964 b!1826968))

(assert (= b!1826967 b!1826964))

(assert (= (and start!181150 ((_ is Cons!20071) rules!4538)) b!1826967))

(assert (= b!1826976 b!1826973))

(assert (= b!1826971 b!1826976))

(assert (= start!181150 b!1826971))

(assert (= b!1826978 b!1826980))

(assert (= start!181150 b!1826978))

(assert (= (and start!181150 ((_ is Cons!20070) input!3612)) b!1826970))

(declare-fun m!2255213 () Bool)

(assert (=> b!1826976 m!2255213))

(declare-fun m!2255215 () Bool)

(assert (=> b!1826976 m!2255215))

(declare-fun m!2255217 () Bool)

(assert (=> b!1826979 m!2255217))

(declare-fun m!2255219 () Bool)

(assert (=> b!1826978 m!2255219))

(declare-fun m!2255221 () Bool)

(assert (=> b!1826978 m!2255221))

(declare-fun m!2255223 () Bool)

(assert (=> b!1826972 m!2255223))

(declare-fun m!2255225 () Bool)

(assert (=> b!1826974 m!2255225))

(declare-fun m!2255227 () Bool)

(assert (=> b!1826964 m!2255227))

(declare-fun m!2255229 () Bool)

(assert (=> b!1826964 m!2255229))

(declare-fun m!2255231 () Bool)

(assert (=> b!1826971 m!2255231))

(declare-fun m!2255233 () Bool)

(assert (=> b!1826965 m!2255233))

(declare-fun m!2255235 () Bool)

(assert (=> b!1826975 m!2255235))

(declare-fun m!2255237 () Bool)

(assert (=> start!181150 m!2255237))

(declare-fun m!2255239 () Bool)

(assert (=> b!1826966 m!2255239))

(assert (=> b!1826966 m!2255239))

(declare-fun m!2255241 () Bool)

(assert (=> b!1826966 m!2255241))

(assert (=> b!1826966 m!2255241))

(declare-fun m!2255243 () Bool)

(assert (=> b!1826966 m!2255243))

(check-sat (not b!1826975) (not b!1826978) (not b_next!51639) (not b!1826976) (not b_next!51633) b_and!141943 (not b!1826971) (not b!1826967) (not b!1826974) (not b_next!51635) (not b!1826966) b_and!141945 (not b_next!51641) (not b!1826972) b_and!141949 (not b!1826979) (not b!1826970) tp_is_empty!8137 b_and!141951 (not start!181150) (not b!1826964) b_and!141941 b_and!141947 (not b!1826965) (not b_next!51631) (not b!1826969) (not b_next!51637))
(check-sat (not b_next!51639) (not b_next!51633) b_and!141943 b_and!141951 b_and!141941 b_and!141947 (not b_next!51635) b_and!141945 (not b_next!51641) b_and!141949 (not b_next!51631) (not b_next!51637))
(get-model)

(declare-fun d!558854 () Bool)

(declare-fun res!821654 () Bool)

(declare-fun e!1167767 () Bool)

(assert (=> d!558854 (=> (not res!821654) (not e!1167767))))

(declare-fun rulesValid!1378 (LexerInterface!3252 List!20141) Bool)

(assert (=> d!558854 (= res!821654 (rulesValid!1378 thiss!28068 rules!4538))))

(assert (=> d!558854 (= (rulesInvariant!2921 thiss!28068 rules!4538) e!1167767)))

(declare-fun b!1826983 () Bool)

(declare-datatypes ((List!20142 0))(
  ( (Nil!20072) (Cons!20072 (h!25473 String!22897) (t!170357 List!20142)) )
))
(declare-fun noDuplicateTag!1376 (LexerInterface!3252 List!20141 List!20142) Bool)

(assert (=> b!1826983 (= e!1167767 (noDuplicateTag!1376 thiss!28068 rules!4538 Nil!20072))))

(assert (= (and d!558854 res!821654) b!1826983))

(declare-fun m!2255245 () Bool)

(assert (=> d!558854 m!2255245))

(declare-fun m!2255247 () Bool)

(assert (=> b!1826983 m!2255247))

(assert (=> b!1826972 d!558854))

(declare-fun b!1826994 () Bool)

(declare-fun e!1167776 () Bool)

(declare-fun inv!17 (TokenValue!3713) Bool)

(assert (=> b!1826994 (= e!1167776 (inv!17 (value!112922 token!556)))))

(declare-fun b!1826995 () Bool)

(declare-fun e!1167775 () Bool)

(assert (=> b!1826995 (= e!1167775 e!1167776)))

(declare-fun c!298028 () Bool)

(assert (=> b!1826995 (= c!298028 ((_ is IntegerValue!11140) (value!112922 token!556)))))

(declare-fun b!1826996 () Bool)

(declare-fun inv!16 (TokenValue!3713) Bool)

(assert (=> b!1826996 (= e!1167775 (inv!16 (value!112922 token!556)))))

(declare-fun b!1826997 () Bool)

(declare-fun e!1167774 () Bool)

(declare-fun inv!15 (TokenValue!3713) Bool)

(assert (=> b!1826997 (= e!1167774 (inv!15 (value!112922 token!556)))))

(declare-fun b!1826998 () Bool)

(declare-fun res!821658 () Bool)

(assert (=> b!1826998 (=> res!821658 e!1167774)))

(assert (=> b!1826998 (= res!821658 (not ((_ is IntegerValue!11141) (value!112922 token!556))))))

(assert (=> b!1826998 (= e!1167776 e!1167774)))

(declare-fun d!558856 () Bool)

(declare-fun c!298029 () Bool)

(assert (=> d!558856 (= c!298029 ((_ is IntegerValue!11139) (value!112922 token!556)))))

(assert (=> d!558856 (= (inv!21 (value!112922 token!556)) e!1167775)))

(assert (= (and d!558856 c!298029) b!1826996))

(assert (= (and d!558856 (not c!298029)) b!1826995))

(assert (= (and b!1826995 c!298028) b!1826994))

(assert (= (and b!1826995 (not c!298028)) b!1826998))

(assert (= (and b!1826998 (not res!821658)) b!1826997))

(declare-fun m!2255249 () Bool)

(assert (=> b!1826994 m!2255249))

(declare-fun m!2255251 () Bool)

(assert (=> b!1826996 m!2255251))

(declare-fun m!2255253 () Bool)

(assert (=> b!1826997 m!2255253))

(assert (=> b!1826971 d!558856))

(declare-fun d!558860 () Bool)

(declare-fun res!821667 () Bool)

(declare-fun e!1167783 () Bool)

(assert (=> d!558860 (=> (not res!821667) (not e!1167783))))

(declare-fun isEmpty!12674 (List!20140) Bool)

(assert (=> d!558860 (= res!821667 (not (isEmpty!12674 (originalCharacters!4431 token!556))))))

(assert (=> d!558860 (= (inv!26115 token!556) e!1167783)))

(declare-fun b!1827007 () Bool)

(declare-fun res!821668 () Bool)

(assert (=> b!1827007 (=> (not res!821668) (not e!1167783))))

(declare-fun dynLambda!9975 (Int TokenValue!3713) BalanceConc!13254)

(assert (=> b!1827007 (= res!821668 (= (originalCharacters!4431 token!556) (list!8153 (dynLambda!9975 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (value!112922 token!556)))))))

(declare-fun b!1827008 () Bool)

(declare-fun size!15922 (List!20140) Int)

(assert (=> b!1827008 (= e!1167783 (= (size!15920 token!556) (size!15922 (originalCharacters!4431 token!556))))))

(assert (= (and d!558860 res!821667) b!1827007))

(assert (= (and b!1827007 res!821668) b!1827008))

(declare-fun b_lambda!60353 () Bool)

(assert (=> (not b_lambda!60353) (not b!1827007)))

(declare-fun tb!111589 () Bool)

(declare-fun t!170342 () Bool)

(assert (=> (and b!1826968 (= (toChars!5021 (transformation!3623 (h!25472 rules!4538))) (toChars!5021 (transformation!3623 (rule!5783 token!556)))) t!170342) tb!111589))

(declare-fun b!1827013 () Bool)

(declare-fun e!1167786 () Bool)

(declare-fun tp!516643 () Bool)

(declare-fun inv!26118 (Conc!6655) Bool)

(assert (=> b!1827013 (= e!1167786 (and (inv!26118 (c!298022 (dynLambda!9975 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (value!112922 token!556)))) tp!516643))))

(declare-fun result!134168 () Bool)

(declare-fun inv!26119 (BalanceConc!13254) Bool)

(assert (=> tb!111589 (= result!134168 (and (inv!26119 (dynLambda!9975 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (value!112922 token!556))) e!1167786))))

(assert (= tb!111589 b!1827013))

(declare-fun m!2255255 () Bool)

(assert (=> b!1827013 m!2255255))

(declare-fun m!2255257 () Bool)

(assert (=> tb!111589 m!2255257))

(assert (=> b!1827007 t!170342))

(declare-fun b_and!141953 () Bool)

(assert (= b_and!141943 (and (=> t!170342 result!134168) b_and!141953)))

(declare-fun t!170344 () Bool)

(declare-fun tb!111591 () Bool)

(assert (=> (and b!1826973 (= (toChars!5021 (transformation!3623 (rule!5783 token!556))) (toChars!5021 (transformation!3623 (rule!5783 token!556)))) t!170344) tb!111591))

(declare-fun result!134172 () Bool)

(assert (= result!134172 result!134168))

(assert (=> b!1827007 t!170344))

(declare-fun b_and!141955 () Bool)

(assert (= b_and!141947 (and (=> t!170344 result!134172) b_and!141955)))

(declare-fun tb!111593 () Bool)

(declare-fun t!170346 () Bool)

(assert (=> (and b!1826980 (= (toChars!5021 (transformation!3623 rule!559)) (toChars!5021 (transformation!3623 (rule!5783 token!556)))) t!170346) tb!111593))

(declare-fun result!134174 () Bool)

(assert (= result!134174 result!134168))

(assert (=> b!1827007 t!170346))

(declare-fun b_and!141957 () Bool)

(assert (= b_and!141951 (and (=> t!170346 result!134174) b_and!141957)))

(declare-fun m!2255259 () Bool)

(assert (=> d!558860 m!2255259))

(declare-fun m!2255261 () Bool)

(assert (=> b!1827007 m!2255261))

(assert (=> b!1827007 m!2255261))

(declare-fun m!2255263 () Bool)

(assert (=> b!1827007 m!2255263))

(declare-fun m!2255265 () Bool)

(assert (=> b!1827008 m!2255265))

(assert (=> start!181150 d!558860))

(declare-fun d!558862 () Bool)

(assert (=> d!558862 true))

(declare-fun lt!709836 () Bool)

(declare-fun lambda!71734 () Int)

(declare-fun forall!4323 (List!20141 Int) Bool)

(assert (=> d!558862 (= lt!709836 (forall!4323 rules!4538 lambda!71734))))

(declare-fun e!1167860 () Bool)

(assert (=> d!558862 (= lt!709836 e!1167860)))

(declare-fun res!821725 () Bool)

(assert (=> d!558862 (=> res!821725 e!1167860)))

(assert (=> d!558862 (= res!821725 (not ((_ is Cons!20071) rules!4538)))))

(assert (=> d!558862 (= (rulesValidInductive!1246 thiss!28068 rules!4538) lt!709836)))

(declare-fun b!1827141 () Bool)

(declare-fun e!1167859 () Bool)

(assert (=> b!1827141 (= e!1167860 e!1167859)))

(declare-fun res!821726 () Bool)

(assert (=> b!1827141 (=> (not res!821726) (not e!1167859))))

(declare-fun ruleValid!1113 (LexerInterface!3252 Rule!7046) Bool)

(assert (=> b!1827141 (= res!821726 (ruleValid!1113 thiss!28068 (h!25472 rules!4538)))))

(declare-fun b!1827142 () Bool)

(assert (=> b!1827142 (= e!1167859 (rulesValidInductive!1246 thiss!28068 (t!170340 rules!4538)))))

(assert (= (and d!558862 (not res!821725)) b!1827141))

(assert (= (and b!1827141 res!821726) b!1827142))

(declare-fun m!2255367 () Bool)

(assert (=> d!558862 m!2255367))

(declare-fun m!2255369 () Bool)

(assert (=> b!1827141 m!2255369))

(declare-fun m!2255371 () Bool)

(assert (=> b!1827142 m!2255371))

(assert (=> b!1826979 d!558862))

(declare-fun d!558894 () Bool)

(assert (=> d!558894 (= (inv!26111 (tag!4037 rule!559)) (= (mod (str.len (value!112921 (tag!4037 rule!559))) 2) 0))))

(assert (=> b!1826978 d!558894))

(declare-fun d!558896 () Bool)

(declare-fun res!821729 () Bool)

(declare-fun e!1167863 () Bool)

(assert (=> d!558896 (=> (not res!821729) (not e!1167863))))

(declare-fun semiInverseModEq!1452 (Int Int) Bool)

(assert (=> d!558896 (= res!821729 (semiInverseModEq!1452 (toChars!5021 (transformation!3623 rule!559)) (toValue!5162 (transformation!3623 rule!559))))))

(assert (=> d!558896 (= (inv!26114 (transformation!3623 rule!559)) e!1167863)))

(declare-fun b!1827147 () Bool)

(declare-fun equivClasses!1393 (Int Int) Bool)

(assert (=> b!1827147 (= e!1167863 (equivClasses!1393 (toChars!5021 (transformation!3623 rule!559)) (toValue!5162 (transformation!3623 rule!559))))))

(assert (= (and d!558896 res!821729) b!1827147))

(declare-fun m!2255373 () Bool)

(assert (=> d!558896 m!2255373))

(declare-fun m!2255375 () Bool)

(assert (=> b!1827147 m!2255375))

(assert (=> b!1826978 d!558896))

(declare-fun b!1827157 () Bool)

(declare-fun e!1167868 () List!20140)

(assert (=> b!1827157 (= e!1167868 (Cons!20070 (h!25471 (list!8153 (charsOf!2266 token!556))) (++!5447 (t!170339 (list!8153 (charsOf!2266 token!556))) suffix!1667)))))

(declare-fun e!1167869 () Bool)

(declare-fun lt!709839 () List!20140)

(declare-fun b!1827159 () Bool)

(assert (=> b!1827159 (= e!1167869 (or (not (= suffix!1667 Nil!20070)) (= lt!709839 (list!8153 (charsOf!2266 token!556)))))))

(declare-fun b!1827158 () Bool)

(declare-fun res!821734 () Bool)

(assert (=> b!1827158 (=> (not res!821734) (not e!1167869))))

(assert (=> b!1827158 (= res!821734 (= (size!15922 lt!709839) (+ (size!15922 (list!8153 (charsOf!2266 token!556))) (size!15922 suffix!1667))))))

(declare-fun d!558898 () Bool)

(assert (=> d!558898 e!1167869))

(declare-fun res!821735 () Bool)

(assert (=> d!558898 (=> (not res!821735) (not e!1167869))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2962 (List!20140) (InoxSet C!10076))

(assert (=> d!558898 (= res!821735 (= (content!2962 lt!709839) ((_ map or) (content!2962 (list!8153 (charsOf!2266 token!556))) (content!2962 suffix!1667))))))

(assert (=> d!558898 (= lt!709839 e!1167868)))

(declare-fun c!298044 () Bool)

(assert (=> d!558898 (= c!298044 ((_ is Nil!20070) (list!8153 (charsOf!2266 token!556))))))

(assert (=> d!558898 (= (++!5447 (list!8153 (charsOf!2266 token!556)) suffix!1667) lt!709839)))

(declare-fun b!1827156 () Bool)

(assert (=> b!1827156 (= e!1167868 suffix!1667)))

(assert (= (and d!558898 c!298044) b!1827156))

(assert (= (and d!558898 (not c!298044)) b!1827157))

(assert (= (and d!558898 res!821735) b!1827158))

(assert (= (and b!1827158 res!821734) b!1827159))

(declare-fun m!2255377 () Bool)

(assert (=> b!1827157 m!2255377))

(declare-fun m!2255379 () Bool)

(assert (=> b!1827158 m!2255379))

(assert (=> b!1827158 m!2255241))

(declare-fun m!2255381 () Bool)

(assert (=> b!1827158 m!2255381))

(declare-fun m!2255383 () Bool)

(assert (=> b!1827158 m!2255383))

(declare-fun m!2255385 () Bool)

(assert (=> d!558898 m!2255385))

(assert (=> d!558898 m!2255241))

(declare-fun m!2255387 () Bool)

(assert (=> d!558898 m!2255387))

(declare-fun m!2255389 () Bool)

(assert (=> d!558898 m!2255389))

(assert (=> b!1826966 d!558898))

(declare-fun d!558900 () Bool)

(declare-fun list!8155 (Conc!6655) List!20140)

(assert (=> d!558900 (= (list!8153 (charsOf!2266 token!556)) (list!8155 (c!298022 (charsOf!2266 token!556))))))

(declare-fun bs!407641 () Bool)

(assert (= bs!407641 d!558900))

(declare-fun m!2255391 () Bool)

(assert (=> bs!407641 m!2255391))

(assert (=> b!1826966 d!558900))

(declare-fun d!558902 () Bool)

(declare-fun lt!709842 () BalanceConc!13254)

(assert (=> d!558902 (= (list!8153 lt!709842) (originalCharacters!4431 token!556))))

(assert (=> d!558902 (= lt!709842 (dynLambda!9975 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (value!112922 token!556)))))

(assert (=> d!558902 (= (charsOf!2266 token!556) lt!709842)))

(declare-fun b_lambda!60363 () Bool)

(assert (=> (not b_lambda!60363) (not d!558902)))

(assert (=> d!558902 t!170342))

(declare-fun b_and!141975 () Bool)

(assert (= b_and!141953 (and (=> t!170342 result!134168) b_and!141975)))

(assert (=> d!558902 t!170344))

(declare-fun b_and!141977 () Bool)

(assert (= b_and!141955 (and (=> t!170344 result!134172) b_and!141977)))

(assert (=> d!558902 t!170346))

(declare-fun b_and!141979 () Bool)

(assert (= b_and!141957 (and (=> t!170346 result!134174) b_and!141979)))

(declare-fun m!2255393 () Bool)

(assert (=> d!558902 m!2255393))

(assert (=> d!558902 m!2255261))

(assert (=> b!1826966 d!558902))

(declare-fun d!558904 () Bool)

(assert (=> d!558904 (= (inv!26111 (tag!4037 (rule!5783 token!556))) (= (mod (str.len (value!112921 (tag!4037 (rule!5783 token!556)))) 2) 0))))

(assert (=> b!1826976 d!558904))

(declare-fun d!558906 () Bool)

(declare-fun res!821736 () Bool)

(declare-fun e!1167870 () Bool)

(assert (=> d!558906 (=> (not res!821736) (not e!1167870))))

(assert (=> d!558906 (= res!821736 (semiInverseModEq!1452 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (toValue!5162 (transformation!3623 (rule!5783 token!556)))))))

(assert (=> d!558906 (= (inv!26114 (transformation!3623 (rule!5783 token!556))) e!1167870)))

(declare-fun b!1827160 () Bool)

(assert (=> b!1827160 (= e!1167870 (equivClasses!1393 (toChars!5021 (transformation!3623 (rule!5783 token!556))) (toValue!5162 (transformation!3623 (rule!5783 token!556)))))))

(assert (= (and d!558906 res!821736) b!1827160))

(declare-fun m!2255395 () Bool)

(assert (=> d!558906 m!2255395))

(declare-fun m!2255397 () Bool)

(assert (=> b!1827160 m!2255397))

(assert (=> b!1826976 d!558906))

(declare-fun d!558908 () Bool)

(declare-fun lt!709845 () Bool)

(declare-fun content!2963 (List!20141) (InoxSet Rule!7046))

(assert (=> d!558908 (= lt!709845 (select (content!2963 rules!4538) rule!559))))

(declare-fun e!1167876 () Bool)

(assert (=> d!558908 (= lt!709845 e!1167876)))

(declare-fun res!821741 () Bool)

(assert (=> d!558908 (=> (not res!821741) (not e!1167876))))

(assert (=> d!558908 (= res!821741 ((_ is Cons!20071) rules!4538))))

(assert (=> d!558908 (= (contains!3689 rules!4538 rule!559) lt!709845)))

(declare-fun b!1827165 () Bool)

(declare-fun e!1167875 () Bool)

(assert (=> b!1827165 (= e!1167876 e!1167875)))

(declare-fun res!821742 () Bool)

(assert (=> b!1827165 (=> res!821742 e!1167875)))

(assert (=> b!1827165 (= res!821742 (= (h!25472 rules!4538) rule!559))))

(declare-fun b!1827166 () Bool)

(assert (=> b!1827166 (= e!1167875 (contains!3689 (t!170340 rules!4538) rule!559))))

(assert (= (and d!558908 res!821741) b!1827165))

(assert (= (and b!1827165 (not res!821742)) b!1827166))

(declare-fun m!2255399 () Bool)

(assert (=> d!558908 m!2255399))

(declare-fun m!2255401 () Bool)

(assert (=> d!558908 m!2255401))

(declare-fun m!2255403 () Bool)

(assert (=> b!1827166 m!2255403))

(assert (=> b!1826965 d!558908))

(declare-fun b!1827185 () Bool)

(declare-fun e!1167883 () Bool)

(declare-fun e!1167885 () Bool)

(assert (=> b!1827185 (= e!1167883 e!1167885)))

(declare-fun res!821759 () Bool)

(assert (=> b!1827185 (=> (not res!821759) (not e!1167885))))

(declare-fun lt!709858 () Option!4203)

(declare-fun isDefined!3514 (Option!4203) Bool)

(assert (=> b!1827185 (= res!821759 (isDefined!3514 lt!709858))))

(declare-fun b!1827186 () Bool)

(declare-fun res!821757 () Bool)

(assert (=> b!1827186 (=> (not res!821757) (not e!1167885))))

(declare-fun matchR!2414 (Regex!4951 List!20140) Bool)

(declare-fun get!6200 (Option!4203) tuple2!19554)

(assert (=> b!1827186 (= res!821757 (matchR!2414 (regex!3623 (rule!5783 (_1!11179 (get!6200 lt!709858)))) (list!8153 (charsOf!2266 (_1!11179 (get!6200 lt!709858))))))))

(declare-fun b!1827187 () Bool)

(declare-fun e!1167884 () Option!4203)

(declare-fun call!114550 () Option!4203)

(assert (=> b!1827187 (= e!1167884 call!114550)))

(declare-fun b!1827188 () Bool)

(declare-fun res!821760 () Bool)

(assert (=> b!1827188 (=> (not res!821760) (not e!1167885))))

(assert (=> b!1827188 (= res!821760 (= (list!8153 (charsOf!2266 (_1!11179 (get!6200 lt!709858)))) (originalCharacters!4431 (_1!11179 (get!6200 lt!709858)))))))

(declare-fun b!1827189 () Bool)

(declare-fun res!821763 () Bool)

(assert (=> b!1827189 (=> (not res!821763) (not e!1167885))))

(assert (=> b!1827189 (= res!821763 (= (++!5447 (list!8153 (charsOf!2266 (_1!11179 (get!6200 lt!709858)))) (_2!11179 (get!6200 lt!709858))) input!3612))))

(declare-fun b!1827190 () Bool)

(declare-fun res!821762 () Bool)

(assert (=> b!1827190 (=> (not res!821762) (not e!1167885))))

(declare-fun apply!5413 (TokenValueInjection!7086 BalanceConc!13254) TokenValue!3713)

(declare-fun seqFromList!2582 (List!20140) BalanceConc!13254)

(assert (=> b!1827190 (= res!821762 (= (value!112922 (_1!11179 (get!6200 lt!709858))) (apply!5413 (transformation!3623 (rule!5783 (_1!11179 (get!6200 lt!709858)))) (seqFromList!2582 (originalCharacters!4431 (_1!11179 (get!6200 lt!709858)))))))))

(declare-fun b!1827191 () Bool)

(assert (=> b!1827191 (= e!1167885 (contains!3689 rules!4538 (rule!5783 (_1!11179 (get!6200 lt!709858)))))))

(declare-fun b!1827192 () Bool)

(declare-fun res!821758 () Bool)

(assert (=> b!1827192 (=> (not res!821758) (not e!1167885))))

(assert (=> b!1827192 (= res!821758 (< (size!15922 (_2!11179 (get!6200 lt!709858))) (size!15922 input!3612)))))

(declare-fun d!558910 () Bool)

(assert (=> d!558910 e!1167883))

(declare-fun res!821761 () Bool)

(assert (=> d!558910 (=> res!821761 e!1167883)))

(declare-fun isEmpty!12675 (Option!4203) Bool)

(assert (=> d!558910 (= res!821761 (isEmpty!12675 lt!709858))))

(assert (=> d!558910 (= lt!709858 e!1167884)))

(declare-fun c!298047 () Bool)

(assert (=> d!558910 (= c!298047 (and ((_ is Cons!20071) rules!4538) ((_ is Nil!20071) (t!170340 rules!4538))))))

(declare-datatypes ((Unit!34743 0))(
  ( (Unit!34744) )
))
(declare-fun lt!709856 () Unit!34743)

(declare-fun lt!709857 () Unit!34743)

(assert (=> d!558910 (= lt!709856 lt!709857)))

(declare-fun isPrefix!1827 (List!20140 List!20140) Bool)

(assert (=> d!558910 (isPrefix!1827 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1204 (List!20140 List!20140) Unit!34743)

(assert (=> d!558910 (= lt!709857 (lemmaIsPrefixRefl!1204 input!3612 input!3612))))

(assert (=> d!558910 (rulesValidInductive!1246 thiss!28068 rules!4538)))

(assert (=> d!558910 (= (maxPrefix!1800 thiss!28068 rules!4538 input!3612) lt!709858)))

(declare-fun b!1827193 () Bool)

(declare-fun lt!709859 () Option!4203)

(declare-fun lt!709860 () Option!4203)

(assert (=> b!1827193 (= e!1167884 (ite (and ((_ is None!4202) lt!709859) ((_ is None!4202) lt!709860)) None!4202 (ite ((_ is None!4202) lt!709860) lt!709859 (ite ((_ is None!4202) lt!709859) lt!709860 (ite (>= (size!15920 (_1!11179 (v!25763 lt!709859))) (size!15920 (_1!11179 (v!25763 lt!709860)))) lt!709859 lt!709860)))))))

(assert (=> b!1827193 (= lt!709859 call!114550)))

(assert (=> b!1827193 (= lt!709860 (maxPrefix!1800 thiss!28068 (t!170340 rules!4538) input!3612))))

(declare-fun bm!114545 () Bool)

(declare-fun maxPrefixOneRule!1163 (LexerInterface!3252 Rule!7046 List!20140) Option!4203)

(assert (=> bm!114545 (= call!114550 (maxPrefixOneRule!1163 thiss!28068 (h!25472 rules!4538) input!3612))))

(assert (= (and d!558910 c!298047) b!1827187))

(assert (= (and d!558910 (not c!298047)) b!1827193))

(assert (= (or b!1827187 b!1827193) bm!114545))

(assert (= (and d!558910 (not res!821761)) b!1827185))

(assert (= (and b!1827185 res!821759) b!1827188))

(assert (= (and b!1827188 res!821760) b!1827192))

(assert (= (and b!1827192 res!821758) b!1827189))

(assert (= (and b!1827189 res!821763) b!1827190))

(assert (= (and b!1827190 res!821762) b!1827186))

(assert (= (and b!1827186 res!821757) b!1827191))

(declare-fun m!2255405 () Bool)

(assert (=> b!1827186 m!2255405))

(declare-fun m!2255407 () Bool)

(assert (=> b!1827186 m!2255407))

(assert (=> b!1827186 m!2255407))

(declare-fun m!2255409 () Bool)

(assert (=> b!1827186 m!2255409))

(assert (=> b!1827186 m!2255409))

(declare-fun m!2255411 () Bool)

(assert (=> b!1827186 m!2255411))

(assert (=> b!1827190 m!2255405))

(declare-fun m!2255413 () Bool)

(assert (=> b!1827190 m!2255413))

(assert (=> b!1827190 m!2255413))

(declare-fun m!2255415 () Bool)

(assert (=> b!1827190 m!2255415))

(declare-fun m!2255417 () Bool)

(assert (=> bm!114545 m!2255417))

(declare-fun m!2255419 () Bool)

(assert (=> d!558910 m!2255419))

(declare-fun m!2255421 () Bool)

(assert (=> d!558910 m!2255421))

(declare-fun m!2255423 () Bool)

(assert (=> d!558910 m!2255423))

(assert (=> d!558910 m!2255217))

(assert (=> b!1827189 m!2255405))

(assert (=> b!1827189 m!2255407))

(assert (=> b!1827189 m!2255407))

(assert (=> b!1827189 m!2255409))

(assert (=> b!1827189 m!2255409))

(declare-fun m!2255425 () Bool)

(assert (=> b!1827189 m!2255425))

(assert (=> b!1827191 m!2255405))

(declare-fun m!2255427 () Bool)

(assert (=> b!1827191 m!2255427))

(assert (=> b!1827188 m!2255405))

(assert (=> b!1827188 m!2255407))

(assert (=> b!1827188 m!2255407))

(assert (=> b!1827188 m!2255409))

(declare-fun m!2255429 () Bool)

(assert (=> b!1827185 m!2255429))

(declare-fun m!2255431 () Bool)

(assert (=> b!1827193 m!2255431))

(assert (=> b!1827192 m!2255405))

(declare-fun m!2255433 () Bool)

(assert (=> b!1827192 m!2255433))

(declare-fun m!2255435 () Bool)

(assert (=> b!1827192 m!2255435))

(assert (=> b!1826975 d!558910))

(declare-fun d!558912 () Bool)

(assert (=> d!558912 (= (inv!26111 (tag!4037 (h!25472 rules!4538))) (= (mod (str.len (value!112921 (tag!4037 (h!25472 rules!4538)))) 2) 0))))

(assert (=> b!1826964 d!558912))

(declare-fun d!558914 () Bool)

(declare-fun res!821764 () Bool)

(declare-fun e!1167886 () Bool)

(assert (=> d!558914 (=> (not res!821764) (not e!1167886))))

(assert (=> d!558914 (= res!821764 (semiInverseModEq!1452 (toChars!5021 (transformation!3623 (h!25472 rules!4538))) (toValue!5162 (transformation!3623 (h!25472 rules!4538)))))))

(assert (=> d!558914 (= (inv!26114 (transformation!3623 (h!25472 rules!4538))) e!1167886)))

(declare-fun b!1827194 () Bool)

(assert (=> b!1827194 (= e!1167886 (equivClasses!1393 (toChars!5021 (transformation!3623 (h!25472 rules!4538))) (toValue!5162 (transformation!3623 (h!25472 rules!4538)))))))

(assert (= (and d!558914 res!821764) b!1827194))

(declare-fun m!2255437 () Bool)

(assert (=> d!558914 m!2255437))

(declare-fun m!2255439 () Bool)

(assert (=> b!1827194 m!2255439))

(assert (=> b!1826964 d!558914))

(declare-fun d!558916 () Bool)

(assert (=> d!558916 (= (isEmpty!12671 rules!4538) ((_ is Nil!20071) rules!4538))))

(assert (=> b!1826974 d!558916))

(declare-fun b!1827205 () Bool)

(declare-fun b_free!50943 () Bool)

(declare-fun b_next!51647 () Bool)

(assert (=> b!1827205 (= b_free!50943 (not b_next!51647))))

(declare-fun tp!516697 () Bool)

(declare-fun b_and!141981 () Bool)

(assert (=> b!1827205 (= tp!516697 b_and!141981)))

(declare-fun b_free!50945 () Bool)

(declare-fun b_next!51649 () Bool)

(assert (=> b!1827205 (= b_free!50945 (not b_next!51649))))

(declare-fun t!170356 () Bool)

(declare-fun tb!111603 () Bool)

(assert (=> (and b!1827205 (= (toChars!5021 (transformation!3623 (h!25472 (t!170340 rules!4538)))) (toChars!5021 (transformation!3623 (rule!5783 token!556)))) t!170356) tb!111603))

(declare-fun result!134194 () Bool)

(assert (= result!134194 result!134168))

(assert (=> b!1827007 t!170356))

(assert (=> d!558902 t!170356))

(declare-fun tp!516698 () Bool)

(declare-fun b_and!141983 () Bool)

(assert (=> b!1827205 (= tp!516698 (and (=> t!170356 result!134194) b_and!141983))))

(declare-fun e!1167897 () Bool)

(assert (=> b!1827205 (= e!1167897 (and tp!516697 tp!516698))))

(declare-fun tp!516699 () Bool)

(declare-fun e!1167896 () Bool)

(declare-fun b!1827204 () Bool)

(assert (=> b!1827204 (= e!1167896 (and tp!516699 (inv!26111 (tag!4037 (h!25472 (t!170340 rules!4538)))) (inv!26114 (transformation!3623 (h!25472 (t!170340 rules!4538)))) e!1167897))))

(declare-fun b!1827203 () Bool)

(declare-fun e!1167895 () Bool)

(declare-fun tp!516700 () Bool)

(assert (=> b!1827203 (= e!1167895 (and e!1167896 tp!516700))))

(assert (=> b!1826967 (= tp!516634 e!1167895)))

(assert (= b!1827204 b!1827205))

(assert (= b!1827203 b!1827204))

(assert (= (and b!1826967 ((_ is Cons!20071) (t!170340 rules!4538))) b!1827203))

(declare-fun m!2255441 () Bool)

(assert (=> b!1827204 m!2255441))

(declare-fun m!2255443 () Bool)

(assert (=> b!1827204 m!2255443))

(declare-fun b!1827210 () Bool)

(declare-fun e!1167901 () Bool)

(declare-fun tp!516703 () Bool)

(assert (=> b!1827210 (= e!1167901 (and tp_is_empty!8137 tp!516703))))

(assert (=> b!1826971 (= tp!516630 e!1167901)))

(assert (= (and b!1826971 ((_ is Cons!20070) (originalCharacters!4431 token!556))) b!1827210))

(declare-fun b!1827223 () Bool)

(declare-fun e!1167904 () Bool)

(declare-fun tp!516717 () Bool)

(assert (=> b!1827223 (= e!1167904 tp!516717)))

(declare-fun b!1827224 () Bool)

(declare-fun tp!516715 () Bool)

(declare-fun tp!516714 () Bool)

(assert (=> b!1827224 (= e!1167904 (and tp!516715 tp!516714))))

(assert (=> b!1826976 (= tp!516637 e!1167904)))

(declare-fun b!1827222 () Bool)

(declare-fun tp!516716 () Bool)

(declare-fun tp!516718 () Bool)

(assert (=> b!1827222 (= e!1167904 (and tp!516716 tp!516718))))

(declare-fun b!1827221 () Bool)

(assert (=> b!1827221 (= e!1167904 tp_is_empty!8137)))

(assert (= (and b!1826976 ((_ is ElementMatch!4951) (regex!3623 (rule!5783 token!556)))) b!1827221))

(assert (= (and b!1826976 ((_ is Concat!8665) (regex!3623 (rule!5783 token!556)))) b!1827222))

(assert (= (and b!1826976 ((_ is Star!4951) (regex!3623 (rule!5783 token!556)))) b!1827223))

(assert (= (and b!1826976 ((_ is Union!4951) (regex!3623 (rule!5783 token!556)))) b!1827224))

(declare-fun b!1827225 () Bool)

(declare-fun e!1167905 () Bool)

(declare-fun tp!516719 () Bool)

(assert (=> b!1827225 (= e!1167905 (and tp_is_empty!8137 tp!516719))))

(assert (=> b!1826970 (= tp!516639 e!1167905)))

(assert (= (and b!1826970 ((_ is Cons!20070) (t!170339 input!3612))) b!1827225))

(declare-fun b!1827228 () Bool)

(declare-fun e!1167906 () Bool)

(declare-fun tp!516723 () Bool)

(assert (=> b!1827228 (= e!1167906 tp!516723)))

(declare-fun b!1827229 () Bool)

(declare-fun tp!516721 () Bool)

(declare-fun tp!516720 () Bool)

(assert (=> b!1827229 (= e!1167906 (and tp!516721 tp!516720))))

(assert (=> b!1826964 (= tp!516631 e!1167906)))

(declare-fun b!1827227 () Bool)

(declare-fun tp!516722 () Bool)

(declare-fun tp!516724 () Bool)

(assert (=> b!1827227 (= e!1167906 (and tp!516722 tp!516724))))

(declare-fun b!1827226 () Bool)

(assert (=> b!1827226 (= e!1167906 tp_is_empty!8137)))

(assert (= (and b!1826964 ((_ is ElementMatch!4951) (regex!3623 (h!25472 rules!4538)))) b!1827226))

(assert (= (and b!1826964 ((_ is Concat!8665) (regex!3623 (h!25472 rules!4538)))) b!1827227))

(assert (= (and b!1826964 ((_ is Star!4951) (regex!3623 (h!25472 rules!4538)))) b!1827228))

(assert (= (and b!1826964 ((_ is Union!4951) (regex!3623 (h!25472 rules!4538)))) b!1827229))

(declare-fun b!1827230 () Bool)

(declare-fun e!1167907 () Bool)

(declare-fun tp!516725 () Bool)

(assert (=> b!1827230 (= e!1167907 (and tp_is_empty!8137 tp!516725))))

(assert (=> b!1826969 (= tp!516635 e!1167907)))

(assert (= (and b!1826969 ((_ is Cons!20070) (t!170339 suffix!1667))) b!1827230))

(declare-fun b!1827233 () Bool)

(declare-fun e!1167908 () Bool)

(declare-fun tp!516729 () Bool)

(assert (=> b!1827233 (= e!1167908 tp!516729)))

(declare-fun b!1827234 () Bool)

(declare-fun tp!516727 () Bool)

(declare-fun tp!516726 () Bool)

(assert (=> b!1827234 (= e!1167908 (and tp!516727 tp!516726))))

(assert (=> b!1826978 (= tp!516628 e!1167908)))

(declare-fun b!1827232 () Bool)

(declare-fun tp!516728 () Bool)

(declare-fun tp!516730 () Bool)

(assert (=> b!1827232 (= e!1167908 (and tp!516728 tp!516730))))

(declare-fun b!1827231 () Bool)

(assert (=> b!1827231 (= e!1167908 tp_is_empty!8137)))

(assert (= (and b!1826978 ((_ is ElementMatch!4951) (regex!3623 rule!559))) b!1827231))

(assert (= (and b!1826978 ((_ is Concat!8665) (regex!3623 rule!559))) b!1827232))

(assert (= (and b!1826978 ((_ is Star!4951) (regex!3623 rule!559))) b!1827233))

(assert (= (and b!1826978 ((_ is Union!4951) (regex!3623 rule!559))) b!1827234))

(declare-fun b_lambda!60365 () Bool)

(assert (= b_lambda!60363 (or (and b!1826968 b_free!50929 (= (toChars!5021 (transformation!3623 (h!25472 rules!4538))) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) (and b!1826973 b_free!50933) (and b!1826980 b_free!50937 (= (toChars!5021 (transformation!3623 rule!559)) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) (and b!1827205 b_free!50945 (= (toChars!5021 (transformation!3623 (h!25472 (t!170340 rules!4538)))) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) b_lambda!60365)))

(declare-fun b_lambda!60367 () Bool)

(assert (= b_lambda!60353 (or (and b!1826968 b_free!50929 (= (toChars!5021 (transformation!3623 (h!25472 rules!4538))) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) (and b!1826973 b_free!50933) (and b!1826980 b_free!50937 (= (toChars!5021 (transformation!3623 rule!559)) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) (and b!1827205 b_free!50945 (= (toChars!5021 (transformation!3623 (h!25472 (t!170340 rules!4538)))) (toChars!5021 (transformation!3623 (rule!5783 token!556))))) b_lambda!60367)))

(check-sat (not b!1826996) (not b_next!51639) (not b!1827141) (not b!1827008) (not b!1827210) (not d!558854) (not b!1827193) (not b!1827160) (not d!558914) (not b!1827224) (not b_lambda!60367) (not b!1827147) (not b_next!51641) (not b!1827158) b_and!141949 (not b!1827186) (not d!558910) (not d!558862) (not b!1827230) b_and!141981 (not b!1827204) (not b!1827228) (not b!1827225) (not b_next!51633) (not b!1826983) (not b!1827234) (not b!1827188) (not b!1827192) b_and!141983 tp_is_empty!8137 (not b!1827227) (not b_next!51649) (not d!558898) (not d!558896) b_and!141979 (not d!558902) b_and!141977 (not tb!111589) (not d!558906) (not b!1827194) (not d!558908) b_and!141941 (not b!1827166) (not b_next!51647) (not b!1827203) (not b!1827223) (not b!1827222) (not b!1827229) (not b!1827232) (not b!1827189) (not d!558900) b_and!141975 (not b_next!51631) (not b!1826994) (not b_next!51637) (not b!1827007) (not b!1827013) (not b_next!51635) (not b!1827142) (not b_lambda!60365) (not b!1827190) (not b!1827157) (not b!1827233) (not bm!114545) (not b!1827185) (not b!1827191) (not b!1826997) b_and!141945 (not d!558860))
(check-sat b_and!141981 (not b_next!51639) (not b_next!51633) b_and!141983 (not b_next!51649) b_and!141979 b_and!141977 b_and!141941 (not b_next!51647) b_and!141975 (not b_next!51635) b_and!141945 (not b_next!51641) b_and!141949 (not b_next!51631) (not b_next!51637))

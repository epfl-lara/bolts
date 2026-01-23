; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388952 () Bool)

(assert start!388952)

(declare-fun b!4103901 () Bool)

(declare-fun b_free!115181 () Bool)

(declare-fun b_next!115885 () Bool)

(assert (=> b!4103901 (= b_free!115181 (not b_next!115885))))

(declare-fun tp!1243791 () Bool)

(declare-fun b_and!316995 () Bool)

(assert (=> b!4103901 (= tp!1243791 b_and!316995)))

(declare-fun b_free!115183 () Bool)

(declare-fun b_next!115887 () Bool)

(assert (=> b!4103901 (= b_free!115183 (not b_next!115887))))

(declare-fun tp!1243794 () Bool)

(declare-fun b_and!316997 () Bool)

(assert (=> b!4103901 (= tp!1243794 b_and!316997)))

(declare-fun b!4103902 () Bool)

(declare-fun b_free!115185 () Bool)

(declare-fun b_next!115889 () Bool)

(assert (=> b!4103902 (= b_free!115185 (not b_next!115889))))

(declare-fun tp!1243790 () Bool)

(declare-fun b_and!316999 () Bool)

(assert (=> b!4103902 (= tp!1243790 b_and!316999)))

(declare-fun b_free!115187 () Bool)

(declare-fun b_next!115891 () Bool)

(assert (=> b!4103902 (= b_free!115187 (not b_next!115891))))

(declare-fun tp!1243793 () Bool)

(declare-fun b_and!317001 () Bool)

(assert (=> b!4103902 (= tp!1243793 b_and!317001)))

(declare-fun b!4103895 () Bool)

(declare-fun e!2546910 () Bool)

(declare-fun e!2546906 () Bool)

(declare-fun tp!1243792 () Bool)

(assert (=> b!4103895 (= e!2546910 (and e!2546906 tp!1243792))))

(declare-fun e!2546914 () Bool)

(declare-datatypes ((C!24336 0))(
  ( (C!24337 (val!14278 Int)) )
))
(declare-datatypes ((List!44280 0))(
  ( (Nil!44156) (Cons!44156 (h!49576 (_ BitVec 16)) (t!339937 List!44280)) )
))
(declare-datatypes ((List!44281 0))(
  ( (Nil!44157) (Cons!44157 (h!49577 C!24336) (t!339938 List!44281)) )
))
(declare-datatypes ((IArray!26767 0))(
  ( (IArray!26768 (innerList!13441 List!44281)) )
))
(declare-datatypes ((Regex!12075 0))(
  ( (ElementMatch!12075 (c!706612 C!24336)) (Concat!19475 (regOne!24662 Regex!12075) (regTwo!24662 Regex!12075)) (EmptyExpr!12075) (Star!12075 (reg!12404 Regex!12075)) (EmptyLang!12075) (Union!12075 (regOne!24663 Regex!12075) (regTwo!24663 Regex!12075)) )
))
(declare-datatypes ((TokenValue!7400 0))(
  ( (FloatLiteralValue!14800 (text!52245 List!44280)) (TokenValueExt!7399 (__x!27017 Int)) (Broken!37000 (value!224944 List!44280)) (Object!7523) (End!7400) (Def!7400) (Underscore!7400) (Match!7400) (Else!7400) (Error!7400) (Case!7400) (If!7400) (Extends!7400) (Abstract!7400) (Class!7400) (Val!7400) (DelimiterValue!14800 (del!7460 List!44280)) (KeywordValue!7406 (value!224945 List!44280)) (CommentValue!14800 (value!224946 List!44280)) (WhitespaceValue!14800 (value!224947 List!44280)) (IndentationValue!7400 (value!224948 List!44280)) (String!50749) (Int32!7400) (Broken!37001 (value!224949 List!44280)) (Boolean!7401) (Unit!63638) (OperatorValue!7403 (op!7460 List!44280)) (IdentifierValue!14800 (value!224950 List!44280)) (IdentifierValue!14801 (value!224951 List!44280)) (WhitespaceValue!14801 (value!224952 List!44280)) (True!14800) (False!14800) (Broken!37002 (value!224953 List!44280)) (Broken!37003 (value!224954 List!44280)) (True!14801) (RightBrace!7400) (RightBracket!7400) (Colon!7400) (Null!7400) (Comma!7400) (LeftBracket!7400) (False!14801) (LeftBrace!7400) (ImaginaryLiteralValue!7400 (text!52246 List!44280)) (StringLiteralValue!22200 (value!224955 List!44280)) (EOFValue!7400 (value!224956 List!44280)) (IdentValue!7400 (value!224957 List!44280)) (DelimiterValue!14801 (value!224958 List!44280)) (DedentValue!7400 (value!224959 List!44280)) (NewLineValue!7400 (value!224960 List!44280)) (IntegerValue!22200 (value!224961 (_ BitVec 32)) (text!52247 List!44280)) (IntegerValue!22201 (value!224962 Int) (text!52248 List!44280)) (Times!7400) (Or!7400) (Equal!7400) (Minus!7400) (Broken!37004 (value!224963 List!44280)) (And!7400) (Div!7400) (LessEqual!7400) (Mod!7400) (Concat!19476) (Not!7400) (Plus!7400) (SpaceValue!7400 (value!224964 List!44280)) (IntegerValue!22202 (value!224965 Int) (text!52249 List!44280)) (StringLiteralValue!22201 (text!52250 List!44280)) (FloatLiteralValue!14801 (text!52251 List!44280)) (BytesLiteralValue!7400 (value!224966 List!44280)) (CommentValue!14801 (value!224967 List!44280)) (StringLiteralValue!22202 (value!224968 List!44280)) (ErrorTokenValue!7400 (msg!7461 List!44280)) )
))
(declare-datatypes ((Conc!13381 0))(
  ( (Node!13381 (left!33140 Conc!13381) (right!33470 Conc!13381) (csize!26992 Int) (cheight!13592 Int)) (Leaf!20681 (xs!16687 IArray!26767) (csize!26993 Int)) (Empty!13381) )
))
(declare-datatypes ((BalanceConc!26356 0))(
  ( (BalanceConc!26357 (c!706613 Conc!13381)) )
))
(declare-datatypes ((TokenValueInjection!14228 0))(
  ( (TokenValueInjection!14229 (toValue!9786 Int) (toChars!9645 Int)) )
))
(declare-datatypes ((String!50750 0))(
  ( (String!50751 (value!224969 String)) )
))
(declare-datatypes ((Rule!14140 0))(
  ( (Rule!14141 (regex!7170 Regex!12075) (tag!8030 String!50750) (isSeparator!7170 Bool) (transformation!7170 TokenValueInjection!14228)) )
))
(declare-datatypes ((List!44282 0))(
  ( (Nil!44158) (Cons!44158 (h!49578 Rule!14140) (t!339939 List!44282)) )
))
(declare-fun rTail!27 () List!44282)

(declare-fun tp!1243795 () Bool)

(declare-fun b!4103896 () Bool)

(declare-fun inv!58828 (String!50750) Bool)

(declare-fun inv!58830 (TokenValueInjection!14228) Bool)

(assert (=> b!4103896 (= e!2546906 (and tp!1243795 (inv!58828 (tag!8030 (h!49578 rTail!27))) (inv!58830 (transformation!7170 (h!49578 rTail!27))) e!2546914))))

(declare-fun b!4103897 () Bool)

(declare-fun e!2546909 () Bool)

(declare-datatypes ((LexerInterface!6759 0))(
  ( (LexerInterfaceExt!6756 (__x!27018 Int)) (Lexer!6757) )
))
(declare-fun thiss!26455 () LexerInterface!6759)

(declare-fun lt!1467355 () List!44282)

(declare-datatypes ((List!44283 0))(
  ( (Nil!44159) (Cons!44159 (h!49579 String!50750) (t!339940 List!44283)) )
))
(declare-fun noDuplicateTag!2847 (LexerInterface!6759 List!44282 List!44283) Bool)

(declare-fun noDuplicateTag$default$2!4 (LexerInterface!6759) List!44283)

(assert (=> b!4103897 (= e!2546909 (noDuplicateTag!2847 thiss!26455 lt!1467355 (noDuplicateTag$default$2!4 thiss!26455)))))

(declare-fun e!2546907 () Bool)

(declare-fun tp!1243796 () Bool)

(declare-fun rHead!24 () Rule!14140)

(declare-fun b!4103898 () Bool)

(declare-fun e!2546908 () Bool)

(assert (=> b!4103898 (= e!2546907 (and tp!1243796 (inv!58828 (tag!8030 rHead!24)) (inv!58830 (transformation!7170 rHead!24)) e!2546908))))

(declare-fun b!4103899 () Bool)

(declare-fun res!1677759 () Bool)

(declare-fun e!2546915 () Bool)

(assert (=> b!4103899 (=> (not res!1677759) (not e!2546915))))

(get-info :version)

(assert (=> b!4103899 (= res!1677759 ((_ is Cons!44158) rTail!27))))

(declare-fun b!4103900 () Bool)

(declare-fun res!1677758 () Bool)

(declare-fun e!2546913 () Bool)

(assert (=> b!4103900 (=> (not res!1677758) (not e!2546913))))

(declare-fun isEmpty!26381 (List!44282) Bool)

(assert (=> b!4103900 (= res!1677758 (not (isEmpty!26381 rTail!27)))))

(assert (=> b!4103901 (= e!2546908 (and tp!1243791 tp!1243794))))

(assert (=> b!4103902 (= e!2546914 (and tp!1243790 tp!1243793))))

(declare-fun b!4103903 () Bool)

(declare-fun res!1677755 () Bool)

(assert (=> b!4103903 (=> res!1677755 e!2546909)))

(declare-fun contains!8843 (List!44282 Rule!14140) Bool)

(assert (=> b!4103903 (= res!1677755 (not (contains!8843 lt!1467355 (h!49578 rTail!27))))))

(declare-fun b!4103904 () Bool)

(assert (=> b!4103904 (= e!2546913 e!2546915)))

(declare-fun res!1677757 () Bool)

(assert (=> b!4103904 (=> (not res!1677757) (not e!2546915))))

(declare-fun rulesInvariant!6102 (LexerInterface!6759 List!44282) Bool)

(assert (=> b!4103904 (= res!1677757 (rulesInvariant!6102 thiss!26455 lt!1467355))))

(assert (=> b!4103904 (= lt!1467355 (Cons!44158 rHead!24 rTail!27))))

(declare-fun res!1677756 () Bool)

(assert (=> start!388952 (=> (not res!1677756) (not e!2546913))))

(assert (=> start!388952 (= res!1677756 ((_ is Lexer!6757) thiss!26455))))

(assert (=> start!388952 e!2546913))

(assert (=> start!388952 true))

(assert (=> start!388952 e!2546910))

(assert (=> start!388952 e!2546907))

(declare-fun b!4103905 () Bool)

(assert (=> b!4103905 (= e!2546915 (not e!2546909))))

(declare-fun res!1677754 () Bool)

(assert (=> b!4103905 (=> res!1677754 e!2546909)))

(assert (=> b!4103905 (= res!1677754 (not (contains!8843 lt!1467355 rHead!24)))))

(assert (=> b!4103905 (noDuplicateTag!2847 thiss!26455 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27))) Nil!44159)))

(declare-datatypes ((Unit!63639 0))(
  ( (Unit!63640) )
))
(declare-fun lt!1467354 () Unit!63639)

(declare-fun lemmaNoDuplicateCanReorder!42 (LexerInterface!6759 Rule!14140 Rule!14140 List!44282) Unit!63639)

(assert (=> b!4103905 (= lt!1467354 (lemmaNoDuplicateCanReorder!42 thiss!26455 rHead!24 (h!49578 rTail!27) (t!339939 rTail!27)))))

(assert (= (and start!388952 res!1677756) b!4103900))

(assert (= (and b!4103900 res!1677758) b!4103904))

(assert (= (and b!4103904 res!1677757) b!4103899))

(assert (= (and b!4103899 res!1677759) b!4103905))

(assert (= (and b!4103905 (not res!1677754)) b!4103903))

(assert (= (and b!4103903 (not res!1677755)) b!4103897))

(assert (= b!4103896 b!4103902))

(assert (= b!4103895 b!4103896))

(assert (= (and start!388952 ((_ is Cons!44158) rTail!27)) b!4103895))

(assert (= b!4103898 b!4103901))

(assert (= start!388952 b!4103898))

(declare-fun m!4709561 () Bool)

(assert (=> b!4103896 m!4709561))

(declare-fun m!4709563 () Bool)

(assert (=> b!4103896 m!4709563))

(declare-fun m!4709565 () Bool)

(assert (=> b!4103904 m!4709565))

(declare-fun m!4709567 () Bool)

(assert (=> b!4103903 m!4709567))

(declare-fun m!4709569 () Bool)

(assert (=> b!4103897 m!4709569))

(assert (=> b!4103897 m!4709569))

(declare-fun m!4709571 () Bool)

(assert (=> b!4103897 m!4709571))

(declare-fun m!4709573 () Bool)

(assert (=> b!4103898 m!4709573))

(declare-fun m!4709575 () Bool)

(assert (=> b!4103898 m!4709575))

(declare-fun m!4709577 () Bool)

(assert (=> b!4103900 m!4709577))

(declare-fun m!4709579 () Bool)

(assert (=> b!4103905 m!4709579))

(declare-fun m!4709581 () Bool)

(assert (=> b!4103905 m!4709581))

(declare-fun m!4709583 () Bool)

(assert (=> b!4103905 m!4709583))

(check-sat (not b_next!115885) b_and!316997 b_and!316995 (not b!4103896) (not b!4103897) (not b!4103898) (not b!4103903) (not b!4103905) b_and!316999 (not b!4103895) (not b_next!115887) (not b_next!115889) b_and!317001 (not b_next!115891) (not b!4103900) (not b!4103904))
(check-sat (not b_next!115885) b_and!316997 b_and!316999 b_and!316995 (not b_next!115887) (not b_next!115889) b_and!317001 (not b_next!115891))
(get-model)

(declare-fun d!1218192 () Bool)

(declare-fun res!1677766 () Bool)

(declare-fun e!2546918 () Bool)

(assert (=> d!1218192 (=> (not res!1677766) (not e!2546918))))

(declare-fun rulesValid!2818 (LexerInterface!6759 List!44282) Bool)

(assert (=> d!1218192 (= res!1677766 (rulesValid!2818 thiss!26455 lt!1467355))))

(assert (=> d!1218192 (= (rulesInvariant!6102 thiss!26455 lt!1467355) e!2546918)))

(declare-fun b!4103908 () Bool)

(assert (=> b!4103908 (= e!2546918 (noDuplicateTag!2847 thiss!26455 lt!1467355 Nil!44159))))

(assert (= (and d!1218192 res!1677766) b!4103908))

(declare-fun m!4709585 () Bool)

(assert (=> d!1218192 m!4709585))

(declare-fun m!4709587 () Bool)

(assert (=> b!4103908 m!4709587))

(assert (=> b!4103904 d!1218192))

(declare-fun d!1218194 () Bool)

(declare-fun lt!1467358 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6805 (List!44282) (InoxSet Rule!14140))

(assert (=> d!1218194 (= lt!1467358 (select (content!6805 lt!1467355) rHead!24))))

(declare-fun e!2546923 () Bool)

(assert (=> d!1218194 (= lt!1467358 e!2546923)))

(declare-fun res!1677772 () Bool)

(assert (=> d!1218194 (=> (not res!1677772) (not e!2546923))))

(assert (=> d!1218194 (= res!1677772 ((_ is Cons!44158) lt!1467355))))

(assert (=> d!1218194 (= (contains!8843 lt!1467355 rHead!24) lt!1467358)))

(declare-fun b!4103913 () Bool)

(declare-fun e!2546924 () Bool)

(assert (=> b!4103913 (= e!2546923 e!2546924)))

(declare-fun res!1677771 () Bool)

(assert (=> b!4103913 (=> res!1677771 e!2546924)))

(assert (=> b!4103913 (= res!1677771 (= (h!49578 lt!1467355) rHead!24))))

(declare-fun b!4103914 () Bool)

(assert (=> b!4103914 (= e!2546924 (contains!8843 (t!339939 lt!1467355) rHead!24))))

(assert (= (and d!1218194 res!1677772) b!4103913))

(assert (= (and b!4103913 (not res!1677771)) b!4103914))

(declare-fun m!4709589 () Bool)

(assert (=> d!1218194 m!4709589))

(declare-fun m!4709591 () Bool)

(assert (=> d!1218194 m!4709591))

(declare-fun m!4709593 () Bool)

(assert (=> b!4103914 m!4709593))

(assert (=> b!4103905 d!1218194))

(declare-fun d!1218196 () Bool)

(declare-fun res!1677780 () Bool)

(declare-fun e!2546929 () Bool)

(assert (=> d!1218196 (=> res!1677780 e!2546929)))

(assert (=> d!1218196 (= res!1677780 ((_ is Nil!44158) (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27)))))))

(assert (=> d!1218196 (= (noDuplicateTag!2847 thiss!26455 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27))) Nil!44159) e!2546929)))

(declare-fun b!4103919 () Bool)

(declare-fun e!2546930 () Bool)

(assert (=> b!4103919 (= e!2546929 e!2546930)))

(declare-fun res!1677781 () Bool)

(assert (=> b!4103919 (=> (not res!1677781) (not e!2546930))))

(declare-fun contains!8844 (List!44283 String!50750) Bool)

(assert (=> b!4103919 (= res!1677781 (not (contains!8844 Nil!44159 (tag!8030 (h!49578 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27))))))))))

(declare-fun b!4103920 () Bool)

(assert (=> b!4103920 (= e!2546930 (noDuplicateTag!2847 thiss!26455 (t!339939 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27)))) (Cons!44159 (tag!8030 (h!49578 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27))))) Nil!44159)))))

(assert (= (and d!1218196 (not res!1677780)) b!4103919))

(assert (= (and b!4103919 res!1677781) b!4103920))

(declare-fun m!4709595 () Bool)

(assert (=> b!4103919 m!4709595))

(declare-fun m!4709597 () Bool)

(assert (=> b!4103920 m!4709597))

(assert (=> b!4103905 d!1218196))

(declare-fun d!1218198 () Bool)

(assert (=> d!1218198 (noDuplicateTag!2847 thiss!26455 (Cons!44158 (h!49578 rTail!27) (Cons!44158 rHead!24 (t!339939 rTail!27))) Nil!44159)))

(declare-fun lt!1467361 () Unit!63639)

(declare-fun choose!25089 (LexerInterface!6759 Rule!14140 Rule!14140 List!44282) Unit!63639)

(assert (=> d!1218198 (= lt!1467361 (choose!25089 thiss!26455 rHead!24 (h!49578 rTail!27) (t!339939 rTail!27)))))

(assert (=> d!1218198 (noDuplicateTag!2847 thiss!26455 (Cons!44158 rHead!24 (Cons!44158 (h!49578 rTail!27) (t!339939 rTail!27))) Nil!44159)))

(assert (=> d!1218198 (= (lemmaNoDuplicateCanReorder!42 thiss!26455 rHead!24 (h!49578 rTail!27) (t!339939 rTail!27)) lt!1467361)))

(declare-fun bs!593993 () Bool)

(assert (= bs!593993 d!1218198))

(assert (=> bs!593993 m!4709581))

(declare-fun m!4709599 () Bool)

(assert (=> bs!593993 m!4709599))

(declare-fun m!4709601 () Bool)

(assert (=> bs!593993 m!4709601))

(assert (=> b!4103905 d!1218198))

(declare-fun d!1218202 () Bool)

(assert (=> d!1218202 (= (isEmpty!26381 rTail!27) ((_ is Nil!44158) rTail!27))))

(assert (=> b!4103900 d!1218202))

(declare-fun d!1218204 () Bool)

(assert (=> d!1218204 (= (inv!58828 (tag!8030 (h!49578 rTail!27))) (= (mod (str.len (value!224969 (tag!8030 (h!49578 rTail!27)))) 2) 0))))

(assert (=> b!4103896 d!1218204))

(declare-fun d!1218206 () Bool)

(declare-fun res!1677788 () Bool)

(declare-fun e!2546937 () Bool)

(assert (=> d!1218206 (=> (not res!1677788) (not e!2546937))))

(declare-fun semiInverseModEq!3083 (Int Int) Bool)

(assert (=> d!1218206 (= res!1677788 (semiInverseModEq!3083 (toChars!9645 (transformation!7170 (h!49578 rTail!27))) (toValue!9786 (transformation!7170 (h!49578 rTail!27)))))))

(assert (=> d!1218206 (= (inv!58830 (transformation!7170 (h!49578 rTail!27))) e!2546937)))

(declare-fun b!4103927 () Bool)

(declare-fun equivClasses!2982 (Int Int) Bool)

(assert (=> b!4103927 (= e!2546937 (equivClasses!2982 (toChars!9645 (transformation!7170 (h!49578 rTail!27))) (toValue!9786 (transformation!7170 (h!49578 rTail!27)))))))

(assert (= (and d!1218206 res!1677788) b!4103927))

(declare-fun m!4709603 () Bool)

(assert (=> d!1218206 m!4709603))

(declare-fun m!4709605 () Bool)

(assert (=> b!4103927 m!4709605))

(assert (=> b!4103896 d!1218206))

(declare-fun d!1218208 () Bool)

(declare-fun res!1677789 () Bool)

(declare-fun e!2546938 () Bool)

(assert (=> d!1218208 (=> res!1677789 e!2546938)))

(assert (=> d!1218208 (= res!1677789 ((_ is Nil!44158) lt!1467355))))

(assert (=> d!1218208 (= (noDuplicateTag!2847 thiss!26455 lt!1467355 (noDuplicateTag$default$2!4 thiss!26455)) e!2546938)))

(declare-fun b!4103928 () Bool)

(declare-fun e!2546939 () Bool)

(assert (=> b!4103928 (= e!2546938 e!2546939)))

(declare-fun res!1677790 () Bool)

(assert (=> b!4103928 (=> (not res!1677790) (not e!2546939))))

(assert (=> b!4103928 (= res!1677790 (not (contains!8844 (noDuplicateTag$default$2!4 thiss!26455) (tag!8030 (h!49578 lt!1467355)))))))

(declare-fun b!4103929 () Bool)

(assert (=> b!4103929 (= e!2546939 (noDuplicateTag!2847 thiss!26455 (t!339939 lt!1467355) (Cons!44159 (tag!8030 (h!49578 lt!1467355)) (noDuplicateTag$default$2!4 thiss!26455))))))

(assert (= (and d!1218208 (not res!1677789)) b!4103928))

(assert (= (and b!4103928 res!1677790) b!4103929))

(assert (=> b!4103928 m!4709569))

(declare-fun m!4709607 () Bool)

(assert (=> b!4103928 m!4709607))

(declare-fun m!4709609 () Bool)

(assert (=> b!4103929 m!4709609))

(assert (=> b!4103897 d!1218208))

(declare-fun d!1218210 () Bool)

(assert (=> d!1218210 (= (noDuplicateTag$default$2!4 thiss!26455) Nil!44159)))

(assert (=> b!4103897 d!1218210))

(declare-fun d!1218212 () Bool)

(declare-fun lt!1467362 () Bool)

(assert (=> d!1218212 (= lt!1467362 (select (content!6805 lt!1467355) (h!49578 rTail!27)))))

(declare-fun e!2546940 () Bool)

(assert (=> d!1218212 (= lt!1467362 e!2546940)))

(declare-fun res!1677792 () Bool)

(assert (=> d!1218212 (=> (not res!1677792) (not e!2546940))))

(assert (=> d!1218212 (= res!1677792 ((_ is Cons!44158) lt!1467355))))

(assert (=> d!1218212 (= (contains!8843 lt!1467355 (h!49578 rTail!27)) lt!1467362)))

(declare-fun b!4103930 () Bool)

(declare-fun e!2546941 () Bool)

(assert (=> b!4103930 (= e!2546940 e!2546941)))

(declare-fun res!1677791 () Bool)

(assert (=> b!4103930 (=> res!1677791 e!2546941)))

(assert (=> b!4103930 (= res!1677791 (= (h!49578 lt!1467355) (h!49578 rTail!27)))))

(declare-fun b!4103931 () Bool)

(assert (=> b!4103931 (= e!2546941 (contains!8843 (t!339939 lt!1467355) (h!49578 rTail!27)))))

(assert (= (and d!1218212 res!1677792) b!4103930))

(assert (= (and b!4103930 (not res!1677791)) b!4103931))

(assert (=> d!1218212 m!4709589))

(declare-fun m!4709611 () Bool)

(assert (=> d!1218212 m!4709611))

(declare-fun m!4709613 () Bool)

(assert (=> b!4103931 m!4709613))

(assert (=> b!4103903 d!1218212))

(declare-fun d!1218214 () Bool)

(assert (=> d!1218214 (= (inv!58828 (tag!8030 rHead!24)) (= (mod (str.len (value!224969 (tag!8030 rHead!24))) 2) 0))))

(assert (=> b!4103898 d!1218214))

(declare-fun d!1218216 () Bool)

(declare-fun res!1677793 () Bool)

(declare-fun e!2546942 () Bool)

(assert (=> d!1218216 (=> (not res!1677793) (not e!2546942))))

(assert (=> d!1218216 (= res!1677793 (semiInverseModEq!3083 (toChars!9645 (transformation!7170 rHead!24)) (toValue!9786 (transformation!7170 rHead!24))))))

(assert (=> d!1218216 (= (inv!58830 (transformation!7170 rHead!24)) e!2546942)))

(declare-fun b!4103932 () Bool)

(assert (=> b!4103932 (= e!2546942 (equivClasses!2982 (toChars!9645 (transformation!7170 rHead!24)) (toValue!9786 (transformation!7170 rHead!24))))))

(assert (= (and d!1218216 res!1677793) b!4103932))

(declare-fun m!4709615 () Bool)

(assert (=> d!1218216 m!4709615))

(declare-fun m!4709617 () Bool)

(assert (=> b!4103932 m!4709617))

(assert (=> b!4103898 d!1218216))

(declare-fun b!4103945 () Bool)

(declare-fun b_free!115189 () Bool)

(declare-fun b_next!115893 () Bool)

(assert (=> b!4103945 (= b_free!115189 (not b_next!115893))))

(declare-fun tp!1243806 () Bool)

(declare-fun b_and!317003 () Bool)

(assert (=> b!4103945 (= tp!1243806 b_and!317003)))

(declare-fun b_free!115191 () Bool)

(declare-fun b_next!115895 () Bool)

(assert (=> b!4103945 (= b_free!115191 (not b_next!115895))))

(declare-fun tp!1243805 () Bool)

(declare-fun b_and!317005 () Bool)

(assert (=> b!4103945 (= tp!1243805 b_and!317005)))

(declare-fun e!2546954 () Bool)

(assert (=> b!4103945 (= e!2546954 (and tp!1243806 tp!1243805))))

(declare-fun tp!1243808 () Bool)

(declare-fun b!4103944 () Bool)

(declare-fun e!2546956 () Bool)

(assert (=> b!4103944 (= e!2546956 (and tp!1243808 (inv!58828 (tag!8030 (h!49578 (t!339939 rTail!27)))) (inv!58830 (transformation!7170 (h!49578 (t!339939 rTail!27)))) e!2546954))))

(declare-fun b!4103943 () Bool)

(declare-fun e!2546953 () Bool)

(declare-fun tp!1243807 () Bool)

(assert (=> b!4103943 (= e!2546953 (and e!2546956 tp!1243807))))

(assert (=> b!4103895 (= tp!1243792 e!2546953)))

(assert (= b!4103944 b!4103945))

(assert (= b!4103943 b!4103944))

(assert (= (and b!4103895 ((_ is Cons!44158) (t!339939 rTail!27))) b!4103943))

(declare-fun m!4709623 () Bool)

(assert (=> b!4103944 m!4709623))

(declare-fun m!4709625 () Bool)

(assert (=> b!4103944 m!4709625))

(declare-fun b!4103957 () Bool)

(declare-fun e!2546959 () Bool)

(declare-fun tp!1243823 () Bool)

(declare-fun tp!1243820 () Bool)

(assert (=> b!4103957 (= e!2546959 (and tp!1243823 tp!1243820))))

(declare-fun b!4103956 () Bool)

(declare-fun tp_is_empty!21119 () Bool)

(assert (=> b!4103956 (= e!2546959 tp_is_empty!21119)))

(declare-fun b!4103958 () Bool)

(declare-fun tp!1243821 () Bool)

(assert (=> b!4103958 (= e!2546959 tp!1243821)))

(declare-fun b!4103959 () Bool)

(declare-fun tp!1243822 () Bool)

(declare-fun tp!1243819 () Bool)

(assert (=> b!4103959 (= e!2546959 (and tp!1243822 tp!1243819))))

(assert (=> b!4103896 (= tp!1243795 e!2546959)))

(assert (= (and b!4103896 ((_ is ElementMatch!12075) (regex!7170 (h!49578 rTail!27)))) b!4103956))

(assert (= (and b!4103896 ((_ is Concat!19475) (regex!7170 (h!49578 rTail!27)))) b!4103957))

(assert (= (and b!4103896 ((_ is Star!12075) (regex!7170 (h!49578 rTail!27)))) b!4103958))

(assert (= (and b!4103896 ((_ is Union!12075) (regex!7170 (h!49578 rTail!27)))) b!4103959))

(declare-fun b!4103961 () Bool)

(declare-fun e!2546960 () Bool)

(declare-fun tp!1243828 () Bool)

(declare-fun tp!1243825 () Bool)

(assert (=> b!4103961 (= e!2546960 (and tp!1243828 tp!1243825))))

(declare-fun b!4103960 () Bool)

(assert (=> b!4103960 (= e!2546960 tp_is_empty!21119)))

(declare-fun b!4103962 () Bool)

(declare-fun tp!1243826 () Bool)

(assert (=> b!4103962 (= e!2546960 tp!1243826)))

(declare-fun b!4103963 () Bool)

(declare-fun tp!1243827 () Bool)

(declare-fun tp!1243824 () Bool)

(assert (=> b!4103963 (= e!2546960 (and tp!1243827 tp!1243824))))

(assert (=> b!4103898 (= tp!1243796 e!2546960)))

(assert (= (and b!4103898 ((_ is ElementMatch!12075) (regex!7170 rHead!24))) b!4103960))

(assert (= (and b!4103898 ((_ is Concat!19475) (regex!7170 rHead!24))) b!4103961))

(assert (= (and b!4103898 ((_ is Star!12075) (regex!7170 rHead!24))) b!4103962))

(assert (= (and b!4103898 ((_ is Union!12075) (regex!7170 rHead!24))) b!4103963))

(check-sat (not b!4103914) b_and!316997 (not d!1218198) (not b!4103928) (not b!4103962) (not b!4103927) (not b!4103963) (not b!4103959) b_and!316999 (not b!4103944) (not b!4103920) (not b!4103931) (not b!4103957) (not d!1218212) (not d!1218206) (not b!4103929) b_and!317003 (not d!1218216) (not b_next!115885) b_and!317005 (not b_next!115893) (not d!1218194) (not b!4103958) (not b!4103932) tp_is_empty!21119 (not b!4103943) (not b_next!115895) (not b!4103908) b_and!316995 (not d!1218192) (not b!4103919) (not b_next!115887) (not b_next!115889) (not b!4103961) b_and!317001 (not b_next!115891))
(check-sat b_and!317003 b_and!316997 b_and!316999 (not b_next!115895) b_and!316995 (not b_next!115885) b_and!317005 (not b_next!115893) (not b_next!115887) (not b_next!115889) b_and!317001 (not b_next!115891))

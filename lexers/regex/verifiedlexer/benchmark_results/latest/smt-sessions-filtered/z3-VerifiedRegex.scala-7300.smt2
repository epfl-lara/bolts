; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388988 () Bool)

(assert start!388988)

(declare-fun b!4104072 () Bool)

(declare-fun b_free!115201 () Bool)

(declare-fun b_next!115905 () Bool)

(assert (=> b!4104072 (= b_free!115201 (not b_next!115905))))

(declare-fun tp!1243900 () Bool)

(declare-fun b_and!317015 () Bool)

(assert (=> b!4104072 (= tp!1243900 b_and!317015)))

(declare-fun b_free!115203 () Bool)

(declare-fun b_next!115907 () Bool)

(assert (=> b!4104072 (= b_free!115203 (not b_next!115907))))

(declare-fun tp!1243896 () Bool)

(declare-fun b_and!317017 () Bool)

(assert (=> b!4104072 (= tp!1243896 b_and!317017)))

(declare-fun b!4104075 () Bool)

(declare-fun b_free!115205 () Bool)

(declare-fun b_next!115909 () Bool)

(assert (=> b!4104075 (= b_free!115205 (not b_next!115909))))

(declare-fun tp!1243897 () Bool)

(declare-fun b_and!317019 () Bool)

(assert (=> b!4104075 (= tp!1243897 b_and!317019)))

(declare-fun b_free!115207 () Bool)

(declare-fun b_next!115911 () Bool)

(assert (=> b!4104075 (= b_free!115207 (not b_next!115911))))

(declare-fun tp!1243898 () Bool)

(declare-fun b_and!317021 () Bool)

(assert (=> b!4104075 (= tp!1243898 b_and!317021)))

(declare-fun e!2547047 () Bool)

(declare-fun e!2547050 () Bool)

(declare-fun b!4104070 () Bool)

(declare-fun tp!1243902 () Bool)

(declare-datatypes ((C!24340 0))(
  ( (C!24341 (val!14280 Int)) )
))
(declare-datatypes ((List!44288 0))(
  ( (Nil!44164) (Cons!44164 (h!49584 C!24340) (t!339945 List!44288)) )
))
(declare-datatypes ((IArray!26771 0))(
  ( (IArray!26772 (innerList!13443 List!44288)) )
))
(declare-datatypes ((Conc!13383 0))(
  ( (Node!13383 (left!33143 Conc!13383) (right!33473 Conc!13383) (csize!26996 Int) (cheight!13594 Int)) (Leaf!20684 (xs!16689 IArray!26771) (csize!26997 Int)) (Empty!13383) )
))
(declare-datatypes ((List!44289 0))(
  ( (Nil!44165) (Cons!44165 (h!49585 (_ BitVec 16)) (t!339946 List!44289)) )
))
(declare-datatypes ((Regex!12077 0))(
  ( (ElementMatch!12077 (c!706616 C!24340)) (Concat!19479 (regOne!24666 Regex!12077) (regTwo!24666 Regex!12077)) (EmptyExpr!12077) (Star!12077 (reg!12406 Regex!12077)) (EmptyLang!12077) (Union!12077 (regOne!24667 Regex!12077) (regTwo!24667 Regex!12077)) )
))
(declare-datatypes ((TokenValue!7402 0))(
  ( (FloatLiteralValue!14804 (text!52259 List!44289)) (TokenValueExt!7401 (__x!27021 Int)) (Broken!37010 (value!224999 List!44289)) (Object!7525) (End!7402) (Def!7402) (Underscore!7402) (Match!7402) (Else!7402) (Error!7402) (Case!7402) (If!7402) (Extends!7402) (Abstract!7402) (Class!7402) (Val!7402) (DelimiterValue!14804 (del!7462 List!44289)) (KeywordValue!7408 (value!225000 List!44289)) (CommentValue!14804 (value!225001 List!44289)) (WhitespaceValue!14804 (value!225002 List!44289)) (IndentationValue!7402 (value!225003 List!44289)) (String!50759) (Int32!7402) (Broken!37011 (value!225004 List!44289)) (Boolean!7403) (Unit!63644) (OperatorValue!7405 (op!7462 List!44289)) (IdentifierValue!14804 (value!225005 List!44289)) (IdentifierValue!14805 (value!225006 List!44289)) (WhitespaceValue!14805 (value!225007 List!44289)) (True!14804) (False!14804) (Broken!37012 (value!225008 List!44289)) (Broken!37013 (value!225009 List!44289)) (True!14805) (RightBrace!7402) (RightBracket!7402) (Colon!7402) (Null!7402) (Comma!7402) (LeftBracket!7402) (False!14805) (LeftBrace!7402) (ImaginaryLiteralValue!7402 (text!52260 List!44289)) (StringLiteralValue!22206 (value!225010 List!44289)) (EOFValue!7402 (value!225011 List!44289)) (IdentValue!7402 (value!225012 List!44289)) (DelimiterValue!14805 (value!225013 List!44289)) (DedentValue!7402 (value!225014 List!44289)) (NewLineValue!7402 (value!225015 List!44289)) (IntegerValue!22206 (value!225016 (_ BitVec 32)) (text!52261 List!44289)) (IntegerValue!22207 (value!225017 Int) (text!52262 List!44289)) (Times!7402) (Or!7402) (Equal!7402) (Minus!7402) (Broken!37014 (value!225018 List!44289)) (And!7402) (Div!7402) (LessEqual!7402) (Mod!7402) (Concat!19480) (Not!7402) (Plus!7402) (SpaceValue!7402 (value!225019 List!44289)) (IntegerValue!22208 (value!225020 Int) (text!52263 List!44289)) (StringLiteralValue!22207 (text!52264 List!44289)) (FloatLiteralValue!14805 (text!52265 List!44289)) (BytesLiteralValue!7402 (value!225021 List!44289)) (CommentValue!14805 (value!225022 List!44289)) (StringLiteralValue!22208 (value!225023 List!44289)) (ErrorTokenValue!7402 (msg!7463 List!44289)) )
))
(declare-datatypes ((BalanceConc!26360 0))(
  ( (BalanceConc!26361 (c!706617 Conc!13383)) )
))
(declare-datatypes ((TokenValueInjection!14232 0))(
  ( (TokenValueInjection!14233 (toValue!9788 Int) (toChars!9647 Int)) )
))
(declare-datatypes ((String!50760 0))(
  ( (String!50761 (value!225024 String)) )
))
(declare-datatypes ((Rule!14144 0))(
  ( (Rule!14145 (regex!7172 Regex!12077) (tag!8032 String!50760) (isSeparator!7172 Bool) (transformation!7172 TokenValueInjection!14232)) )
))
(declare-datatypes ((List!44290 0))(
  ( (Nil!44166) (Cons!44166 (h!49586 Rule!14144) (t!339947 List!44290)) )
))
(declare-fun rTail!27 () List!44290)

(declare-fun inv!58833 (String!50760) Bool)

(declare-fun inv!58835 (TokenValueInjection!14232) Bool)

(assert (=> b!4104070 (= e!2547047 (and tp!1243902 (inv!58833 (tag!8032 (h!49586 rTail!27))) (inv!58835 (transformation!7172 (h!49586 rTail!27))) e!2547050))))

(declare-fun b!4104071 () Bool)

(declare-fun res!1677850 () Bool)

(declare-fun e!2547045 () Bool)

(assert (=> b!4104071 (=> (not res!1677850) (not e!2547045))))

(declare-fun isEmpty!26383 (List!44290) Bool)

(assert (=> b!4104071 (= res!1677850 (not (isEmpty!26383 rTail!27)))))

(assert (=> b!4104072 (= e!2547050 (and tp!1243900 tp!1243896))))

(declare-fun b!4104074 () Bool)

(declare-fun res!1677852 () Bool)

(declare-fun e!2547046 () Bool)

(assert (=> b!4104074 (=> res!1677852 e!2547046)))

(declare-fun lt!1467380 () List!44290)

(declare-fun contains!8846 (List!44290 Rule!14144) Bool)

(assert (=> b!4104074 (= res!1677852 (not (contains!8846 lt!1467380 (h!49586 rTail!27))))))

(declare-fun e!2547048 () Bool)

(assert (=> b!4104075 (= e!2547048 (and tp!1243897 tp!1243898))))

(declare-fun b!4104076 () Bool)

(declare-fun res!1677849 () Bool)

(assert (=> b!4104076 (=> res!1677849 e!2547046)))

(declare-datatypes ((LexerInterface!6761 0))(
  ( (LexerInterfaceExt!6758 (__x!27022 Int)) (Lexer!6759) )
))
(declare-fun thiss!26455 () LexerInterface!6761)

(declare-datatypes ((List!44291 0))(
  ( (Nil!44167) (Cons!44167 (h!49587 String!50760) (t!339948 List!44291)) )
))
(declare-fun noDuplicateTag!2849 (LexerInterface!6761 List!44290 List!44291) Bool)

(declare-fun noDuplicateTag$default$2!6 (LexerInterface!6761) List!44291)

(assert (=> b!4104076 (= res!1677849 (not (noDuplicateTag!2849 thiss!26455 lt!1467380 (noDuplicateTag$default$2!6 thiss!26455))))))

(declare-fun b!4104077 () Bool)

(declare-fun e!2547044 () Bool)

(assert (=> b!4104077 (= e!2547045 e!2547044)))

(declare-fun res!1677854 () Bool)

(assert (=> b!4104077 (=> (not res!1677854) (not e!2547044))))

(declare-fun rulesInvariant!6104 (LexerInterface!6761 List!44290) Bool)

(assert (=> b!4104077 (= res!1677854 (rulesInvariant!6104 thiss!26455 lt!1467380))))

(declare-fun rHead!24 () Rule!14144)

(assert (=> b!4104077 (= lt!1467380 (Cons!44166 rHead!24 rTail!27))))

(declare-fun res!1677853 () Bool)

(assert (=> start!388988 (=> (not res!1677853) (not e!2547045))))

(get-info :version)

(assert (=> start!388988 (= res!1677853 ((_ is Lexer!6759) thiss!26455))))

(assert (=> start!388988 e!2547045))

(assert (=> start!388988 true))

(declare-fun e!2547053 () Bool)

(assert (=> start!388988 e!2547053))

(declare-fun e!2547052 () Bool)

(assert (=> start!388988 e!2547052))

(declare-fun b!4104073 () Bool)

(declare-fun getIndex!596 (List!44290 Rule!14144) Int)

(assert (=> b!4104073 (= e!2547046 (< (getIndex!596 lt!1467380 rHead!24) (getIndex!596 lt!1467380 (h!49586 rTail!27))))))

(declare-fun b!4104078 () Bool)

(assert (=> b!4104078 (= e!2547044 (not e!2547046))))

(declare-fun res!1677851 () Bool)

(assert (=> b!4104078 (=> res!1677851 e!2547046)))

(assert (=> b!4104078 (= res!1677851 (not (contains!8846 lt!1467380 rHead!24)))))

(assert (=> b!4104078 (noDuplicateTag!2849 thiss!26455 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))) Nil!44167)))

(declare-datatypes ((Unit!63645 0))(
  ( (Unit!63646) )
))
(declare-fun lt!1467381 () Unit!63645)

(declare-fun lemmaNoDuplicateCanReorder!44 (LexerInterface!6761 Rule!14144 Rule!14144 List!44290) Unit!63645)

(assert (=> b!4104078 (= lt!1467381 (lemmaNoDuplicateCanReorder!44 thiss!26455 rHead!24 (h!49586 rTail!27) (t!339947 rTail!27)))))

(declare-fun b!4104079 () Bool)

(declare-fun tp!1243901 () Bool)

(assert (=> b!4104079 (= e!2547052 (and tp!1243901 (inv!58833 (tag!8032 rHead!24)) (inv!58835 (transformation!7172 rHead!24)) e!2547048))))

(declare-fun b!4104080 () Bool)

(declare-fun res!1677848 () Bool)

(assert (=> b!4104080 (=> (not res!1677848) (not e!2547044))))

(assert (=> b!4104080 (= res!1677848 ((_ is Cons!44166) rTail!27))))

(declare-fun b!4104081 () Bool)

(declare-fun tp!1243899 () Bool)

(assert (=> b!4104081 (= e!2547053 (and e!2547047 tp!1243899))))

(assert (= (and start!388988 res!1677853) b!4104071))

(assert (= (and b!4104071 res!1677850) b!4104077))

(assert (= (and b!4104077 res!1677854) b!4104080))

(assert (= (and b!4104080 res!1677848) b!4104078))

(assert (= (and b!4104078 (not res!1677851)) b!4104074))

(assert (= (and b!4104074 (not res!1677852)) b!4104076))

(assert (= (and b!4104076 (not res!1677849)) b!4104073))

(assert (= b!4104070 b!4104072))

(assert (= b!4104081 b!4104070))

(assert (= (and start!388988 ((_ is Cons!44166) rTail!27)) b!4104081))

(assert (= b!4104079 b!4104075))

(assert (= start!388988 b!4104079))

(declare-fun m!4709681 () Bool)

(assert (=> b!4104079 m!4709681))

(declare-fun m!4709683 () Bool)

(assert (=> b!4104079 m!4709683))

(declare-fun m!4709685 () Bool)

(assert (=> b!4104071 m!4709685))

(declare-fun m!4709687 () Bool)

(assert (=> b!4104076 m!4709687))

(assert (=> b!4104076 m!4709687))

(declare-fun m!4709689 () Bool)

(assert (=> b!4104076 m!4709689))

(declare-fun m!4709691 () Bool)

(assert (=> b!4104073 m!4709691))

(declare-fun m!4709693 () Bool)

(assert (=> b!4104073 m!4709693))

(declare-fun m!4709695 () Bool)

(assert (=> b!4104077 m!4709695))

(declare-fun m!4709697 () Bool)

(assert (=> b!4104070 m!4709697))

(declare-fun m!4709699 () Bool)

(assert (=> b!4104070 m!4709699))

(declare-fun m!4709701 () Bool)

(assert (=> b!4104078 m!4709701))

(declare-fun m!4709703 () Bool)

(assert (=> b!4104078 m!4709703))

(declare-fun m!4709705 () Bool)

(assert (=> b!4104078 m!4709705))

(declare-fun m!4709707 () Bool)

(assert (=> b!4104074 m!4709707))

(check-sat b_and!317019 (not b!4104078) (not b!4104071) (not b!4104074) b_and!317021 (not b!4104077) b_and!317017 (not b_next!115911) (not b_next!115909) (not b_next!115905) (not b!4104079) (not b!4104081) (not b!4104076) (not b!4104070) (not b_next!115907) b_and!317015 (not b!4104073))
(check-sat b_and!317019 b_and!317021 b_and!317017 (not b_next!115911) (not b_next!115907) (not b_next!115909) b_and!317015 (not b_next!115905))
(get-model)

(declare-fun d!1218253 () Bool)

(declare-fun res!1677882 () Bool)

(declare-fun e!2547074 () Bool)

(assert (=> d!1218253 (=> (not res!1677882) (not e!2547074))))

(declare-fun rulesValid!2820 (LexerInterface!6761 List!44290) Bool)

(assert (=> d!1218253 (= res!1677882 (rulesValid!2820 thiss!26455 lt!1467380))))

(assert (=> d!1218253 (= (rulesInvariant!6104 thiss!26455 lt!1467380) e!2547074)))

(declare-fun b!4104102 () Bool)

(assert (=> b!4104102 (= e!2547074 (noDuplicateTag!2849 thiss!26455 lt!1467380 Nil!44167))))

(assert (= (and d!1218253 res!1677882) b!4104102))

(declare-fun m!4709735 () Bool)

(assert (=> d!1218253 m!4709735))

(declare-fun m!4709737 () Bool)

(assert (=> b!4104102 m!4709737))

(assert (=> b!4104077 d!1218253))

(declare-fun d!1218261 () Bool)

(declare-fun lt!1467394 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6807 (List!44290) (InoxSet Rule!14144))

(assert (=> d!1218261 (= lt!1467394 (select (content!6807 lt!1467380) rHead!24))))

(declare-fun e!2547091 () Bool)

(assert (=> d!1218261 (= lt!1467394 e!2547091)))

(declare-fun res!1677892 () Bool)

(assert (=> d!1218261 (=> (not res!1677892) (not e!2547091))))

(assert (=> d!1218261 (= res!1677892 ((_ is Cons!44166) lt!1467380))))

(assert (=> d!1218261 (= (contains!8846 lt!1467380 rHead!24) lt!1467394)))

(declare-fun b!4104123 () Bool)

(declare-fun e!2547090 () Bool)

(assert (=> b!4104123 (= e!2547091 e!2547090)))

(declare-fun res!1677891 () Bool)

(assert (=> b!4104123 (=> res!1677891 e!2547090)))

(assert (=> b!4104123 (= res!1677891 (= (h!49586 lt!1467380) rHead!24))))

(declare-fun b!4104124 () Bool)

(assert (=> b!4104124 (= e!2547090 (contains!8846 (t!339947 lt!1467380) rHead!24))))

(assert (= (and d!1218261 res!1677892) b!4104123))

(assert (= (and b!4104123 (not res!1677891)) b!4104124))

(declare-fun m!4709745 () Bool)

(assert (=> d!1218261 m!4709745))

(declare-fun m!4709749 () Bool)

(assert (=> d!1218261 m!4709749))

(declare-fun m!4709751 () Bool)

(assert (=> b!4104124 m!4709751))

(assert (=> b!4104078 d!1218261))

(declare-fun d!1218273 () Bool)

(declare-fun res!1677898 () Bool)

(declare-fun e!2547115 () Bool)

(assert (=> d!1218273 (=> res!1677898 e!2547115)))

(assert (=> d!1218273 (= res!1677898 ((_ is Nil!44166) (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))

(assert (=> d!1218273 (= (noDuplicateTag!2849 thiss!26455 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))) Nil!44167) e!2547115)))

(declare-fun b!4104163 () Bool)

(declare-fun e!2547116 () Bool)

(assert (=> b!4104163 (= e!2547115 e!2547116)))

(declare-fun res!1677899 () Bool)

(assert (=> b!4104163 (=> (not res!1677899) (not e!2547116))))

(declare-fun contains!8848 (List!44291 String!50760) Bool)

(assert (=> b!4104163 (= res!1677899 (not (contains!8848 Nil!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))))

(declare-fun b!4104164 () Bool)

(assert (=> b!4104164 (= e!2547116 (noDuplicateTag!2849 thiss!26455 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)))))

(assert (= (and d!1218273 (not res!1677898)) b!4104163))

(assert (= (and b!4104163 res!1677899) b!4104164))

(declare-fun m!4709761 () Bool)

(assert (=> b!4104163 m!4709761))

(declare-fun m!4709763 () Bool)

(assert (=> b!4104164 m!4709763))

(assert (=> b!4104078 d!1218273))

(declare-fun d!1218275 () Bool)

(assert (=> d!1218275 (noDuplicateTag!2849 thiss!26455 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))) Nil!44167)))

(declare-fun lt!1467398 () Unit!63645)

(declare-fun choose!25091 (LexerInterface!6761 Rule!14144 Rule!14144 List!44290) Unit!63645)

(assert (=> d!1218275 (= lt!1467398 (choose!25091 thiss!26455 rHead!24 (h!49586 rTail!27) (t!339947 rTail!27)))))

(assert (=> d!1218275 (noDuplicateTag!2849 thiss!26455 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))) Nil!44167)))

(assert (=> d!1218275 (= (lemmaNoDuplicateCanReorder!44 thiss!26455 rHead!24 (h!49586 rTail!27) (t!339947 rTail!27)) lt!1467398)))

(declare-fun bs!593998 () Bool)

(assert (= bs!593998 d!1218275))

(assert (=> bs!593998 m!4709703))

(declare-fun m!4709765 () Bool)

(assert (=> bs!593998 m!4709765))

(declare-fun m!4709767 () Bool)

(assert (=> bs!593998 m!4709767))

(assert (=> b!4104078 d!1218275))

(declare-fun b!4104176 () Bool)

(declare-fun e!2547123 () Int)

(assert (=> b!4104176 (= e!2547123 (- 1))))

(declare-fun b!4104173 () Bool)

(declare-fun e!2547122 () Int)

(assert (=> b!4104173 (= e!2547122 0)))

(declare-fun d!1218277 () Bool)

(declare-fun lt!1467401 () Int)

(assert (=> d!1218277 (>= lt!1467401 0)))

(assert (=> d!1218277 (= lt!1467401 e!2547122)))

(declare-fun c!706630 () Bool)

(assert (=> d!1218277 (= c!706630 (and ((_ is Cons!44166) lt!1467380) (= (h!49586 lt!1467380) rHead!24)))))

(assert (=> d!1218277 (contains!8846 lt!1467380 rHead!24)))

(assert (=> d!1218277 (= (getIndex!596 lt!1467380 rHead!24) lt!1467401)))

(declare-fun b!4104175 () Bool)

(assert (=> b!4104175 (= e!2547123 (+ 1 (getIndex!596 (t!339947 lt!1467380) rHead!24)))))

(declare-fun b!4104174 () Bool)

(assert (=> b!4104174 (= e!2547122 e!2547123)))

(declare-fun c!706631 () Bool)

(assert (=> b!4104174 (= c!706631 (and ((_ is Cons!44166) lt!1467380) (not (= (h!49586 lt!1467380) rHead!24))))))

(assert (= (and d!1218277 c!706630) b!4104173))

(assert (= (and d!1218277 (not c!706630)) b!4104174))

(assert (= (and b!4104174 c!706631) b!4104175))

(assert (= (and b!4104174 (not c!706631)) b!4104176))

(assert (=> d!1218277 m!4709701))

(declare-fun m!4709769 () Bool)

(assert (=> b!4104175 m!4709769))

(assert (=> b!4104073 d!1218277))

(declare-fun b!4104180 () Bool)

(declare-fun e!2547125 () Int)

(assert (=> b!4104180 (= e!2547125 (- 1))))

(declare-fun b!4104177 () Bool)

(declare-fun e!2547124 () Int)

(assert (=> b!4104177 (= e!2547124 0)))

(declare-fun d!1218279 () Bool)

(declare-fun lt!1467402 () Int)

(assert (=> d!1218279 (>= lt!1467402 0)))

(assert (=> d!1218279 (= lt!1467402 e!2547124)))

(declare-fun c!706632 () Bool)

(assert (=> d!1218279 (= c!706632 (and ((_ is Cons!44166) lt!1467380) (= (h!49586 lt!1467380) (h!49586 rTail!27))))))

(assert (=> d!1218279 (contains!8846 lt!1467380 (h!49586 rTail!27))))

(assert (=> d!1218279 (= (getIndex!596 lt!1467380 (h!49586 rTail!27)) lt!1467402)))

(declare-fun b!4104179 () Bool)

(assert (=> b!4104179 (= e!2547125 (+ 1 (getIndex!596 (t!339947 lt!1467380) (h!49586 rTail!27))))))

(declare-fun b!4104178 () Bool)

(assert (=> b!4104178 (= e!2547124 e!2547125)))

(declare-fun c!706633 () Bool)

(assert (=> b!4104178 (= c!706633 (and ((_ is Cons!44166) lt!1467380) (not (= (h!49586 lt!1467380) (h!49586 rTail!27)))))))

(assert (= (and d!1218279 c!706632) b!4104177))

(assert (= (and d!1218279 (not c!706632)) b!4104178))

(assert (= (and b!4104178 c!706633) b!4104179))

(assert (= (and b!4104178 (not c!706633)) b!4104180))

(assert (=> d!1218279 m!4709707))

(declare-fun m!4709771 () Bool)

(assert (=> b!4104179 m!4709771))

(assert (=> b!4104073 d!1218279))

(declare-fun d!1218281 () Bool)

(assert (=> d!1218281 (= (inv!58833 (tag!8032 rHead!24)) (= (mod (str.len (value!225024 (tag!8032 rHead!24))) 2) 0))))

(assert (=> b!4104079 d!1218281))

(declare-fun d!1218283 () Bool)

(declare-fun res!1677902 () Bool)

(declare-fun e!2547128 () Bool)

(assert (=> d!1218283 (=> (not res!1677902) (not e!2547128))))

(declare-fun semiInverseModEq!3085 (Int Int) Bool)

(assert (=> d!1218283 (= res!1677902 (semiInverseModEq!3085 (toChars!9647 (transformation!7172 rHead!24)) (toValue!9788 (transformation!7172 rHead!24))))))

(assert (=> d!1218283 (= (inv!58835 (transformation!7172 rHead!24)) e!2547128)))

(declare-fun b!4104183 () Bool)

(declare-fun equivClasses!2984 (Int Int) Bool)

(assert (=> b!4104183 (= e!2547128 (equivClasses!2984 (toChars!9647 (transformation!7172 rHead!24)) (toValue!9788 (transformation!7172 rHead!24))))))

(assert (= (and d!1218283 res!1677902) b!4104183))

(declare-fun m!4709773 () Bool)

(assert (=> d!1218283 m!4709773))

(declare-fun m!4709775 () Bool)

(assert (=> b!4104183 m!4709775))

(assert (=> b!4104079 d!1218283))

(declare-fun d!1218285 () Bool)

(declare-fun lt!1467403 () Bool)

(assert (=> d!1218285 (= lt!1467403 (select (content!6807 lt!1467380) (h!49586 rTail!27)))))

(declare-fun e!2547130 () Bool)

(assert (=> d!1218285 (= lt!1467403 e!2547130)))

(declare-fun res!1677904 () Bool)

(assert (=> d!1218285 (=> (not res!1677904) (not e!2547130))))

(assert (=> d!1218285 (= res!1677904 ((_ is Cons!44166) lt!1467380))))

(assert (=> d!1218285 (= (contains!8846 lt!1467380 (h!49586 rTail!27)) lt!1467403)))

(declare-fun b!4104184 () Bool)

(declare-fun e!2547129 () Bool)

(assert (=> b!4104184 (= e!2547130 e!2547129)))

(declare-fun res!1677903 () Bool)

(assert (=> b!4104184 (=> res!1677903 e!2547129)))

(assert (=> b!4104184 (= res!1677903 (= (h!49586 lt!1467380) (h!49586 rTail!27)))))

(declare-fun b!4104185 () Bool)

(assert (=> b!4104185 (= e!2547129 (contains!8846 (t!339947 lt!1467380) (h!49586 rTail!27)))))

(assert (= (and d!1218285 res!1677904) b!4104184))

(assert (= (and b!4104184 (not res!1677903)) b!4104185))

(assert (=> d!1218285 m!4709745))

(declare-fun m!4709777 () Bool)

(assert (=> d!1218285 m!4709777))

(declare-fun m!4709779 () Bool)

(assert (=> b!4104185 m!4709779))

(assert (=> b!4104074 d!1218285))

(declare-fun d!1218287 () Bool)

(assert (=> d!1218287 (= (inv!58833 (tag!8032 (h!49586 rTail!27))) (= (mod (str.len (value!225024 (tag!8032 (h!49586 rTail!27)))) 2) 0))))

(assert (=> b!4104070 d!1218287))

(declare-fun d!1218289 () Bool)

(declare-fun res!1677905 () Bool)

(declare-fun e!2547131 () Bool)

(assert (=> d!1218289 (=> (not res!1677905) (not e!2547131))))

(assert (=> d!1218289 (= res!1677905 (semiInverseModEq!3085 (toChars!9647 (transformation!7172 (h!49586 rTail!27))) (toValue!9788 (transformation!7172 (h!49586 rTail!27)))))))

(assert (=> d!1218289 (= (inv!58835 (transformation!7172 (h!49586 rTail!27))) e!2547131)))

(declare-fun b!4104186 () Bool)

(assert (=> b!4104186 (= e!2547131 (equivClasses!2984 (toChars!9647 (transformation!7172 (h!49586 rTail!27))) (toValue!9788 (transformation!7172 (h!49586 rTail!27)))))))

(assert (= (and d!1218289 res!1677905) b!4104186))

(declare-fun m!4709781 () Bool)

(assert (=> d!1218289 m!4709781))

(declare-fun m!4709783 () Bool)

(assert (=> b!4104186 m!4709783))

(assert (=> b!4104070 d!1218289))

(declare-fun d!1218291 () Bool)

(declare-fun res!1677906 () Bool)

(declare-fun e!2547132 () Bool)

(assert (=> d!1218291 (=> res!1677906 e!2547132)))

(assert (=> d!1218291 (= res!1677906 ((_ is Nil!44166) lt!1467380))))

(assert (=> d!1218291 (= (noDuplicateTag!2849 thiss!26455 lt!1467380 (noDuplicateTag$default$2!6 thiss!26455)) e!2547132)))

(declare-fun b!4104187 () Bool)

(declare-fun e!2547133 () Bool)

(assert (=> b!4104187 (= e!2547132 e!2547133)))

(declare-fun res!1677907 () Bool)

(assert (=> b!4104187 (=> (not res!1677907) (not e!2547133))))

(assert (=> b!4104187 (= res!1677907 (not (contains!8848 (noDuplicateTag$default$2!6 thiss!26455) (tag!8032 (h!49586 lt!1467380)))))))

(declare-fun b!4104188 () Bool)

(assert (=> b!4104188 (= e!2547133 (noDuplicateTag!2849 thiss!26455 (t!339947 lt!1467380) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))))))

(assert (= (and d!1218291 (not res!1677906)) b!4104187))

(assert (= (and b!4104187 res!1677907) b!4104188))

(assert (=> b!4104187 m!4709687))

(declare-fun m!4709785 () Bool)

(assert (=> b!4104187 m!4709785))

(declare-fun m!4709787 () Bool)

(assert (=> b!4104188 m!4709787))

(assert (=> b!4104076 d!1218291))

(declare-fun d!1218293 () Bool)

(assert (=> d!1218293 (= (noDuplicateTag$default$2!6 thiss!26455) Nil!44167)))

(assert (=> b!4104076 d!1218293))

(declare-fun d!1218295 () Bool)

(assert (=> d!1218295 (= (isEmpty!26383 rTail!27) ((_ is Nil!44166) rTail!27))))

(assert (=> b!4104071 d!1218295))

(declare-fun e!2547136 () Bool)

(assert (=> b!4104079 (= tp!1243901 e!2547136)))

(declare-fun b!4104201 () Bool)

(declare-fun tp!1243948 () Bool)

(assert (=> b!4104201 (= e!2547136 tp!1243948)))

(declare-fun b!4104199 () Bool)

(declare-fun tp_is_empty!21125 () Bool)

(assert (=> b!4104199 (= e!2547136 tp_is_empty!21125)))

(declare-fun b!4104200 () Bool)

(declare-fun tp!1243949 () Bool)

(declare-fun tp!1243945 () Bool)

(assert (=> b!4104200 (= e!2547136 (and tp!1243949 tp!1243945))))

(declare-fun b!4104202 () Bool)

(declare-fun tp!1243947 () Bool)

(declare-fun tp!1243946 () Bool)

(assert (=> b!4104202 (= e!2547136 (and tp!1243947 tp!1243946))))

(assert (= (and b!4104079 ((_ is ElementMatch!12077) (regex!7172 rHead!24))) b!4104199))

(assert (= (and b!4104079 ((_ is Concat!19479) (regex!7172 rHead!24))) b!4104200))

(assert (= (and b!4104079 ((_ is Star!12077) (regex!7172 rHead!24))) b!4104201))

(assert (= (and b!4104079 ((_ is Union!12077) (regex!7172 rHead!24))) b!4104202))

(declare-fun e!2547137 () Bool)

(assert (=> b!4104070 (= tp!1243902 e!2547137)))

(declare-fun b!4104205 () Bool)

(declare-fun tp!1243953 () Bool)

(assert (=> b!4104205 (= e!2547137 tp!1243953)))

(declare-fun b!4104203 () Bool)

(assert (=> b!4104203 (= e!2547137 tp_is_empty!21125)))

(declare-fun b!4104204 () Bool)

(declare-fun tp!1243954 () Bool)

(declare-fun tp!1243950 () Bool)

(assert (=> b!4104204 (= e!2547137 (and tp!1243954 tp!1243950))))

(declare-fun b!4104206 () Bool)

(declare-fun tp!1243952 () Bool)

(declare-fun tp!1243951 () Bool)

(assert (=> b!4104206 (= e!2547137 (and tp!1243952 tp!1243951))))

(assert (= (and b!4104070 ((_ is ElementMatch!12077) (regex!7172 (h!49586 rTail!27)))) b!4104203))

(assert (= (and b!4104070 ((_ is Concat!19479) (regex!7172 (h!49586 rTail!27)))) b!4104204))

(assert (= (and b!4104070 ((_ is Star!12077) (regex!7172 (h!49586 rTail!27)))) b!4104205))

(assert (= (and b!4104070 ((_ is Union!12077) (regex!7172 (h!49586 rTail!27)))) b!4104206))

(declare-fun b!4104217 () Bool)

(declare-fun b_free!115213 () Bool)

(declare-fun b_next!115917 () Bool)

(assert (=> b!4104217 (= b_free!115213 (not b_next!115917))))

(declare-fun tp!1243966 () Bool)

(declare-fun b_and!317027 () Bool)

(assert (=> b!4104217 (= tp!1243966 b_and!317027)))

(declare-fun b_free!115215 () Bool)

(declare-fun b_next!115919 () Bool)

(assert (=> b!4104217 (= b_free!115215 (not b_next!115919))))

(declare-fun tp!1243963 () Bool)

(declare-fun b_and!317029 () Bool)

(assert (=> b!4104217 (= tp!1243963 b_and!317029)))

(declare-fun e!2547148 () Bool)

(assert (=> b!4104217 (= e!2547148 (and tp!1243966 tp!1243963))))

(declare-fun tp!1243964 () Bool)

(declare-fun e!2547147 () Bool)

(declare-fun b!4104216 () Bool)

(assert (=> b!4104216 (= e!2547147 (and tp!1243964 (inv!58833 (tag!8032 (h!49586 (t!339947 rTail!27)))) (inv!58835 (transformation!7172 (h!49586 (t!339947 rTail!27)))) e!2547148))))

(declare-fun b!4104215 () Bool)

(declare-fun e!2547149 () Bool)

(declare-fun tp!1243965 () Bool)

(assert (=> b!4104215 (= e!2547149 (and e!2547147 tp!1243965))))

(assert (=> b!4104081 (= tp!1243899 e!2547149)))

(assert (= b!4104216 b!4104217))

(assert (= b!4104215 b!4104216))

(assert (= (and b!4104081 ((_ is Cons!44166) (t!339947 rTail!27))) b!4104215))

(declare-fun m!4709789 () Bool)

(assert (=> b!4104216 m!4709789))

(declare-fun m!4709791 () Bool)

(assert (=> b!4104216 m!4709791))

(check-sat b_and!317019 (not b!4104175) (not b!4104179) (not b!4104185) (not b!4104201) (not b!4104186) (not b!4104215) (not b!4104124) (not b_next!115907) (not b!4104187) (not b!4104206) (not b_next!115919) (not d!1218283) (not d!1218279) tp_is_empty!21125 b_and!317027 (not d!1218275) (not b!4104183) b_and!317029 (not b!4104204) b_and!317021 (not b!4104102) (not d!1218289) (not d!1218277) (not d!1218261) b_and!317017 (not d!1218285) (not b!4104202) (not b!4104163) (not b!4104164) (not b!4104205) (not b_next!115911) (not b_next!115917) (not b!4104188) (not b_next!115909) (not b!4104200) (not b!4104216) b_and!317015 (not b_next!115905) (not d!1218253))
(check-sat (not b_next!115919) b_and!317019 b_and!317027 b_and!317029 b_and!317021 b_and!317017 (not b_next!115907) (not b_next!115909) b_and!317015 (not b_next!115905) (not b_next!115911) (not b_next!115917))
(get-model)

(declare-fun d!1218301 () Bool)

(declare-fun res!1677916 () Bool)

(declare-fun e!2547152 () Bool)

(assert (=> d!1218301 (=> res!1677916 e!2547152)))

(assert (=> d!1218301 (= res!1677916 ((_ is Nil!44166) (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))

(assert (=> d!1218301 (= (noDuplicateTag!2849 thiss!26455 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)) e!2547152)))

(declare-fun b!4104220 () Bool)

(declare-fun e!2547153 () Bool)

(assert (=> b!4104220 (= e!2547152 e!2547153)))

(declare-fun res!1677917 () Bool)

(assert (=> b!4104220 (=> (not res!1677917) (not e!2547153))))

(assert (=> b!4104220 (= res!1677917 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167) (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))))))

(declare-fun b!4104221 () Bool)

(assert (=> b!4104221 (= e!2547153 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167))))))

(assert (= (and d!1218301 (not res!1677916)) b!4104220))

(assert (= (and b!4104220 res!1677917) b!4104221))

(declare-fun m!4709797 () Bool)

(assert (=> b!4104220 m!4709797))

(declare-fun m!4709799 () Bool)

(assert (=> b!4104221 m!4709799))

(assert (=> b!4104164 d!1218301))

(declare-fun d!1218303 () Bool)

(declare-fun res!1677918 () Bool)

(declare-fun e!2547154 () Bool)

(assert (=> d!1218303 (=> res!1677918 e!2547154)))

(assert (=> d!1218303 (= res!1677918 ((_ is Nil!44166) (t!339947 lt!1467380)))))

(assert (=> d!1218303 (= (noDuplicateTag!2849 thiss!26455 (t!339947 lt!1467380) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))) e!2547154)))

(declare-fun b!4104222 () Bool)

(declare-fun e!2547155 () Bool)

(assert (=> b!4104222 (= e!2547154 e!2547155)))

(declare-fun res!1677919 () Bool)

(assert (=> b!4104222 (=> (not res!1677919) (not e!2547155))))

(assert (=> b!4104222 (= res!1677919 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 (t!339947 lt!1467380))))))))

(declare-fun b!4104223 () Bool)

(assert (=> b!4104223 (= e!2547155 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 lt!1467380)) (Cons!44167 (tag!8032 (h!49586 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455)))))))

(assert (= (and d!1218303 (not res!1677918)) b!4104222))

(assert (= (and b!4104222 res!1677919) b!4104223))

(declare-fun m!4709801 () Bool)

(assert (=> b!4104222 m!4709801))

(declare-fun m!4709803 () Bool)

(assert (=> b!4104223 m!4709803))

(assert (=> b!4104188 d!1218303))

(declare-fun d!1218305 () Bool)

(declare-fun res!1677920 () Bool)

(declare-fun e!2547156 () Bool)

(assert (=> d!1218305 (=> res!1677920 e!2547156)))

(assert (=> d!1218305 (= res!1677920 ((_ is Nil!44166) lt!1467380))))

(assert (=> d!1218305 (= (noDuplicateTag!2849 thiss!26455 lt!1467380 Nil!44167) e!2547156)))

(declare-fun b!4104224 () Bool)

(declare-fun e!2547157 () Bool)

(assert (=> b!4104224 (= e!2547156 e!2547157)))

(declare-fun res!1677921 () Bool)

(assert (=> b!4104224 (=> (not res!1677921) (not e!2547157))))

(assert (=> b!4104224 (= res!1677921 (not (contains!8848 Nil!44167 (tag!8032 (h!49586 lt!1467380)))))))

(declare-fun b!4104225 () Bool)

(assert (=> b!4104225 (= e!2547157 (noDuplicateTag!2849 thiss!26455 (t!339947 lt!1467380) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) Nil!44167)))))

(assert (= (and d!1218305 (not res!1677920)) b!4104224))

(assert (= (and b!4104224 res!1677921) b!4104225))

(declare-fun m!4709805 () Bool)

(assert (=> b!4104224 m!4709805))

(declare-fun m!4709807 () Bool)

(assert (=> b!4104225 m!4709807))

(assert (=> b!4104102 d!1218305))

(declare-fun d!1218307 () Bool)

(declare-fun lt!1467406 () Bool)

(declare-fun content!6809 (List!44291) (InoxSet String!50760))

(assert (=> d!1218307 (= lt!1467406 (select (content!6809 Nil!44167) (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))))

(declare-fun e!2547162 () Bool)

(assert (=> d!1218307 (= lt!1467406 e!2547162)))

(declare-fun res!1677927 () Bool)

(assert (=> d!1218307 (=> (not res!1677927) (not e!2547162))))

(assert (=> d!1218307 (= res!1677927 ((_ is Cons!44167) Nil!44167))))

(assert (=> d!1218307 (= (contains!8848 Nil!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) lt!1467406)))

(declare-fun b!4104230 () Bool)

(declare-fun e!2547163 () Bool)

(assert (=> b!4104230 (= e!2547162 e!2547163)))

(declare-fun res!1677926 () Bool)

(assert (=> b!4104230 (=> res!1677926 e!2547163)))

(assert (=> b!4104230 (= res!1677926 (= (h!49587 Nil!44167) (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))))

(declare-fun b!4104231 () Bool)

(assert (=> b!4104231 (= e!2547163 (contains!8848 (t!339948 Nil!44167) (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))))

(assert (= (and d!1218307 res!1677927) b!4104230))

(assert (= (and b!4104230 (not res!1677926)) b!4104231))

(declare-fun m!4709809 () Bool)

(assert (=> d!1218307 m!4709809))

(declare-fun m!4709811 () Bool)

(assert (=> d!1218307 m!4709811))

(declare-fun m!4709813 () Bool)

(assert (=> b!4104231 m!4709813))

(assert (=> b!4104163 d!1218307))

(declare-fun d!1218309 () Bool)

(declare-fun lt!1467407 () Bool)

(assert (=> d!1218309 (= lt!1467407 (select (content!6809 (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun e!2547164 () Bool)

(assert (=> d!1218309 (= lt!1467407 e!2547164)))

(declare-fun res!1677929 () Bool)

(assert (=> d!1218309 (=> (not res!1677929) (not e!2547164))))

(assert (=> d!1218309 (= res!1677929 ((_ is Cons!44167) (noDuplicateTag$default$2!6 thiss!26455)))))

(assert (=> d!1218309 (= (contains!8848 (noDuplicateTag$default$2!6 thiss!26455) (tag!8032 (h!49586 lt!1467380))) lt!1467407)))

(declare-fun b!4104232 () Bool)

(declare-fun e!2547165 () Bool)

(assert (=> b!4104232 (= e!2547164 e!2547165)))

(declare-fun res!1677928 () Bool)

(assert (=> b!4104232 (=> res!1677928 e!2547165)))

(assert (=> b!4104232 (= res!1677928 (= (h!49587 (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun b!4104233 () Bool)

(assert (=> b!4104233 (= e!2547165 (contains!8848 (t!339948 (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 lt!1467380))))))

(assert (= (and d!1218309 res!1677929) b!4104232))

(assert (= (and b!4104232 (not res!1677928)) b!4104233))

(assert (=> d!1218309 m!4709687))

(declare-fun m!4709815 () Bool)

(assert (=> d!1218309 m!4709815))

(declare-fun m!4709817 () Bool)

(assert (=> d!1218309 m!4709817))

(declare-fun m!4709819 () Bool)

(assert (=> b!4104233 m!4709819))

(assert (=> b!4104187 d!1218309))

(declare-fun d!1218311 () Bool)

(declare-fun lt!1467408 () Bool)

(assert (=> d!1218311 (= lt!1467408 (select (content!6807 (t!339947 lt!1467380)) rHead!24))))

(declare-fun e!2547167 () Bool)

(assert (=> d!1218311 (= lt!1467408 e!2547167)))

(declare-fun res!1677931 () Bool)

(assert (=> d!1218311 (=> (not res!1677931) (not e!2547167))))

(assert (=> d!1218311 (= res!1677931 ((_ is Cons!44166) (t!339947 lt!1467380)))))

(assert (=> d!1218311 (= (contains!8846 (t!339947 lt!1467380) rHead!24) lt!1467408)))

(declare-fun b!4104234 () Bool)

(declare-fun e!2547166 () Bool)

(assert (=> b!4104234 (= e!2547167 e!2547166)))

(declare-fun res!1677930 () Bool)

(assert (=> b!4104234 (=> res!1677930 e!2547166)))

(assert (=> b!4104234 (= res!1677930 (= (h!49586 (t!339947 lt!1467380)) rHead!24))))

(declare-fun b!4104235 () Bool)

(assert (=> b!4104235 (= e!2547166 (contains!8846 (t!339947 (t!339947 lt!1467380)) rHead!24))))

(assert (= (and d!1218311 res!1677931) b!4104234))

(assert (= (and b!4104234 (not res!1677930)) b!4104235))

(declare-fun m!4709821 () Bool)

(assert (=> d!1218311 m!4709821))

(declare-fun m!4709823 () Bool)

(assert (=> d!1218311 m!4709823))

(declare-fun m!4709825 () Bool)

(assert (=> b!4104235 m!4709825))

(assert (=> b!4104124 d!1218311))

(declare-fun d!1218313 () Bool)

(assert (=> d!1218313 (= (inv!58833 (tag!8032 (h!49586 (t!339947 rTail!27)))) (= (mod (str.len (value!225024 (tag!8032 (h!49586 (t!339947 rTail!27))))) 2) 0))))

(assert (=> b!4104216 d!1218313))

(declare-fun d!1218315 () Bool)

(declare-fun res!1677932 () Bool)

(declare-fun e!2547168 () Bool)

(assert (=> d!1218315 (=> (not res!1677932) (not e!2547168))))

(assert (=> d!1218315 (= res!1677932 (semiInverseModEq!3085 (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))))))

(assert (=> d!1218315 (= (inv!58835 (transformation!7172 (h!49586 (t!339947 rTail!27)))) e!2547168)))

(declare-fun b!4104236 () Bool)

(assert (=> b!4104236 (= e!2547168 (equivClasses!2984 (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))))))

(assert (= (and d!1218315 res!1677932) b!4104236))

(declare-fun m!4709827 () Bool)

(assert (=> d!1218315 m!4709827))

(declare-fun m!4709829 () Bool)

(assert (=> b!4104236 m!4709829))

(assert (=> b!4104216 d!1218315))

(declare-fun d!1218317 () Bool)

(assert (=> d!1218317 true))

(declare-fun lt!1467422 () Bool)

(declare-fun rulesValidInductive!2661 (LexerInterface!6761 List!44290) Bool)

(assert (=> d!1218317 (= lt!1467422 (rulesValidInductive!2661 thiss!26455 lt!1467380))))

(declare-fun lambda!128313 () Int)

(declare-fun forall!8429 (List!44290 Int) Bool)

(assert (=> d!1218317 (= lt!1467422 (forall!8429 lt!1467380 lambda!128313))))

(assert (=> d!1218317 (= (rulesValid!2820 thiss!26455 lt!1467380) lt!1467422)))

(declare-fun bs!594007 () Bool)

(assert (= bs!594007 d!1218317))

(declare-fun m!4709891 () Bool)

(assert (=> bs!594007 m!4709891))

(declare-fun m!4709893 () Bool)

(assert (=> bs!594007 m!4709893))

(assert (=> d!1218253 d!1218317))

(declare-fun d!1218353 () Bool)

(declare-fun c!706643 () Bool)

(assert (=> d!1218353 (= c!706643 ((_ is Nil!44166) lt!1467380))))

(declare-fun e!2547214 () (InoxSet Rule!14144))

(assert (=> d!1218353 (= (content!6807 lt!1467380) e!2547214)))

(declare-fun b!4104333 () Bool)

(assert (=> b!4104333 (= e!2547214 ((as const (Array Rule!14144 Bool)) false))))

(declare-fun b!4104334 () Bool)

(assert (=> b!4104334 (= e!2547214 ((_ map or) (store ((as const (Array Rule!14144 Bool)) false) (h!49586 lt!1467380) true) (content!6807 (t!339947 lt!1467380))))))

(assert (= (and d!1218353 c!706643) b!4104333))

(assert (= (and d!1218353 (not c!706643)) b!4104334))

(declare-fun m!4709895 () Bool)

(assert (=> b!4104334 m!4709895))

(assert (=> b!4104334 m!4709821))

(assert (=> d!1218285 d!1218353))

(assert (=> d!1218277 d!1218261))

(declare-fun b!4104338 () Bool)

(declare-fun e!2547216 () Int)

(assert (=> b!4104338 (= e!2547216 (- 1))))

(declare-fun b!4104335 () Bool)

(declare-fun e!2547215 () Int)

(assert (=> b!4104335 (= e!2547215 0)))

(declare-fun d!1218355 () Bool)

(declare-fun lt!1467423 () Int)

(assert (=> d!1218355 (>= lt!1467423 0)))

(assert (=> d!1218355 (= lt!1467423 e!2547215)))

(declare-fun c!706644 () Bool)

(assert (=> d!1218355 (= c!706644 (and ((_ is Cons!44166) (t!339947 lt!1467380)) (= (h!49586 (t!339947 lt!1467380)) rHead!24)))))

(assert (=> d!1218355 (contains!8846 (t!339947 lt!1467380) rHead!24)))

(assert (=> d!1218355 (= (getIndex!596 (t!339947 lt!1467380) rHead!24) lt!1467423)))

(declare-fun b!4104337 () Bool)

(assert (=> b!4104337 (= e!2547216 (+ 1 (getIndex!596 (t!339947 (t!339947 lt!1467380)) rHead!24)))))

(declare-fun b!4104336 () Bool)

(assert (=> b!4104336 (= e!2547215 e!2547216)))

(declare-fun c!706645 () Bool)

(assert (=> b!4104336 (= c!706645 (and ((_ is Cons!44166) (t!339947 lt!1467380)) (not (= (h!49586 (t!339947 lt!1467380)) rHead!24))))))

(assert (= (and d!1218355 c!706644) b!4104335))

(assert (= (and d!1218355 (not c!706644)) b!4104336))

(assert (= (and b!4104336 c!706645) b!4104337))

(assert (= (and b!4104336 (not c!706645)) b!4104338))

(assert (=> d!1218355 m!4709751))

(declare-fun m!4709897 () Bool)

(assert (=> b!4104337 m!4709897))

(assert (=> b!4104175 d!1218355))

(declare-fun d!1218357 () Bool)

(assert (=> d!1218357 true))

(declare-fun order!23241 () Int)

(declare-fun lambda!128316 () Int)

(declare-fun order!23239 () Int)

(declare-fun dynLambda!18894 (Int Int) Int)

(declare-fun dynLambda!18895 (Int Int) Int)

(assert (=> d!1218357 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 rHead!24))) (dynLambda!18895 order!23241 lambda!128316))))

(declare-fun Forall2!1128 (Int) Bool)

(assert (=> d!1218357 (= (equivClasses!2984 (toChars!9647 (transformation!7172 rHead!24)) (toValue!9788 (transformation!7172 rHead!24))) (Forall2!1128 lambda!128316))))

(declare-fun bs!594008 () Bool)

(assert (= bs!594008 d!1218357))

(declare-fun m!4709899 () Bool)

(assert (=> bs!594008 m!4709899))

(assert (=> b!4104183 d!1218357))

(declare-fun d!1218359 () Bool)

(assert (=> d!1218359 true))

(declare-fun lambda!128319 () Int)

(declare-fun order!23243 () Int)

(declare-fun order!23245 () Int)

(declare-fun dynLambda!18896 (Int Int) Int)

(declare-fun dynLambda!18897 (Int Int) Int)

(assert (=> d!1218359 (< (dynLambda!18896 order!23243 (toChars!9647 (transformation!7172 (h!49586 rTail!27)))) (dynLambda!18897 order!23245 lambda!128319))))

(assert (=> d!1218359 true))

(assert (=> d!1218359 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 (h!49586 rTail!27)))) (dynLambda!18897 order!23245 lambda!128319))))

(declare-fun Forall!1529 (Int) Bool)

(assert (=> d!1218359 (= (semiInverseModEq!3085 (toChars!9647 (transformation!7172 (h!49586 rTail!27))) (toValue!9788 (transformation!7172 (h!49586 rTail!27)))) (Forall!1529 lambda!128319))))

(declare-fun bs!594009 () Bool)

(assert (= bs!594009 d!1218359))

(declare-fun m!4709901 () Bool)

(assert (=> bs!594009 m!4709901))

(assert (=> d!1218289 d!1218359))

(assert (=> d!1218275 d!1218273))

(declare-fun d!1218361 () Bool)

(assert (=> d!1218361 (noDuplicateTag!2849 thiss!26455 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))) Nil!44167)))

(assert (=> d!1218361 true))

(declare-fun _$67!63 () Unit!63645)

(assert (=> d!1218361 (= (choose!25091 thiss!26455 rHead!24 (h!49586 rTail!27) (t!339947 rTail!27)) _$67!63)))

(declare-fun bs!594010 () Bool)

(assert (= bs!594010 d!1218361))

(assert (=> bs!594010 m!4709703))

(assert (=> d!1218275 d!1218361))

(declare-fun d!1218363 () Bool)

(declare-fun res!1677956 () Bool)

(declare-fun e!2547219 () Bool)

(assert (=> d!1218363 (=> res!1677956 e!2547219)))

(assert (=> d!1218363 (= res!1677956 ((_ is Nil!44166) (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))))

(assert (=> d!1218363 (= (noDuplicateTag!2849 thiss!26455 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))) Nil!44167) e!2547219)))

(declare-fun b!4104347 () Bool)

(declare-fun e!2547220 () Bool)

(assert (=> b!4104347 (= e!2547219 e!2547220)))

(declare-fun res!1677957 () Bool)

(assert (=> b!4104347 (=> (not res!1677957) (not e!2547220))))

(assert (=> b!4104347 (= res!1677957 (not (contains!8848 Nil!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))))))))

(declare-fun b!4104348 () Bool)

(assert (=> b!4104348 (= e!2547220 (noDuplicateTag!2849 thiss!26455 (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))) Nil!44167)))))

(assert (= (and d!1218363 (not res!1677956)) b!4104347))

(assert (= (and b!4104347 res!1677957) b!4104348))

(declare-fun m!4709903 () Bool)

(assert (=> b!4104347 m!4709903))

(declare-fun m!4709905 () Bool)

(assert (=> b!4104348 m!4709905))

(assert (=> d!1218275 d!1218363))

(declare-fun bs!594011 () Bool)

(declare-fun d!1218365 () Bool)

(assert (= bs!594011 (and d!1218365 d!1218359)))

(declare-fun lambda!128320 () Int)

(assert (=> bs!594011 (= (and (= (toChars!9647 (transformation!7172 rHead!24)) (toChars!9647 (transformation!7172 (h!49586 rTail!27)))) (= (toValue!9788 (transformation!7172 rHead!24)) (toValue!9788 (transformation!7172 (h!49586 rTail!27))))) (= lambda!128320 lambda!128319))))

(assert (=> d!1218365 true))

(assert (=> d!1218365 (< (dynLambda!18896 order!23243 (toChars!9647 (transformation!7172 rHead!24))) (dynLambda!18897 order!23245 lambda!128320))))

(assert (=> d!1218365 true))

(assert (=> d!1218365 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 rHead!24))) (dynLambda!18897 order!23245 lambda!128320))))

(assert (=> d!1218365 (= (semiInverseModEq!3085 (toChars!9647 (transformation!7172 rHead!24)) (toValue!9788 (transformation!7172 rHead!24))) (Forall!1529 lambda!128320))))

(declare-fun bs!594012 () Bool)

(assert (= bs!594012 d!1218365))

(declare-fun m!4709907 () Bool)

(assert (=> bs!594012 m!4709907))

(assert (=> d!1218283 d!1218365))

(declare-fun b!4104352 () Bool)

(declare-fun e!2547222 () Int)

(assert (=> b!4104352 (= e!2547222 (- 1))))

(declare-fun b!4104349 () Bool)

(declare-fun e!2547221 () Int)

(assert (=> b!4104349 (= e!2547221 0)))

(declare-fun d!1218367 () Bool)

(declare-fun lt!1467424 () Int)

(assert (=> d!1218367 (>= lt!1467424 0)))

(assert (=> d!1218367 (= lt!1467424 e!2547221)))

(declare-fun c!706646 () Bool)

(assert (=> d!1218367 (= c!706646 (and ((_ is Cons!44166) (t!339947 lt!1467380)) (= (h!49586 (t!339947 lt!1467380)) (h!49586 rTail!27))))))

(assert (=> d!1218367 (contains!8846 (t!339947 lt!1467380) (h!49586 rTail!27))))

(assert (=> d!1218367 (= (getIndex!596 (t!339947 lt!1467380) (h!49586 rTail!27)) lt!1467424)))

(declare-fun b!4104351 () Bool)

(assert (=> b!4104351 (= e!2547222 (+ 1 (getIndex!596 (t!339947 (t!339947 lt!1467380)) (h!49586 rTail!27))))))

(declare-fun b!4104350 () Bool)

(assert (=> b!4104350 (= e!2547221 e!2547222)))

(declare-fun c!706647 () Bool)

(assert (=> b!4104350 (= c!706647 (and ((_ is Cons!44166) (t!339947 lt!1467380)) (not (= (h!49586 (t!339947 lt!1467380)) (h!49586 rTail!27)))))))

(assert (= (and d!1218367 c!706646) b!4104349))

(assert (= (and d!1218367 (not c!706646)) b!4104350))

(assert (= (and b!4104350 c!706647) b!4104351))

(assert (= (and b!4104350 (not c!706647)) b!4104352))

(assert (=> d!1218367 m!4709779))

(declare-fun m!4709909 () Bool)

(assert (=> b!4104351 m!4709909))

(assert (=> b!4104179 d!1218367))

(assert (=> d!1218261 d!1218353))

(declare-fun bs!594013 () Bool)

(declare-fun d!1218369 () Bool)

(assert (= bs!594013 (and d!1218369 d!1218357)))

(declare-fun lambda!128321 () Int)

(assert (=> bs!594013 (= (= (toValue!9788 (transformation!7172 (h!49586 rTail!27))) (toValue!9788 (transformation!7172 rHead!24))) (= lambda!128321 lambda!128316))))

(assert (=> d!1218369 true))

(assert (=> d!1218369 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 (h!49586 rTail!27)))) (dynLambda!18895 order!23241 lambda!128321))))

(assert (=> d!1218369 (= (equivClasses!2984 (toChars!9647 (transformation!7172 (h!49586 rTail!27))) (toValue!9788 (transformation!7172 (h!49586 rTail!27)))) (Forall2!1128 lambda!128321))))

(declare-fun bs!594014 () Bool)

(assert (= bs!594014 d!1218369))

(declare-fun m!4709911 () Bool)

(assert (=> bs!594014 m!4709911))

(assert (=> b!4104186 d!1218369))

(declare-fun d!1218371 () Bool)

(declare-fun lt!1467425 () Bool)

(assert (=> d!1218371 (= lt!1467425 (select (content!6807 (t!339947 lt!1467380)) (h!49586 rTail!27)))))

(declare-fun e!2547224 () Bool)

(assert (=> d!1218371 (= lt!1467425 e!2547224)))

(declare-fun res!1677959 () Bool)

(assert (=> d!1218371 (=> (not res!1677959) (not e!2547224))))

(assert (=> d!1218371 (= res!1677959 ((_ is Cons!44166) (t!339947 lt!1467380)))))

(assert (=> d!1218371 (= (contains!8846 (t!339947 lt!1467380) (h!49586 rTail!27)) lt!1467425)))

(declare-fun b!4104353 () Bool)

(declare-fun e!2547223 () Bool)

(assert (=> b!4104353 (= e!2547224 e!2547223)))

(declare-fun res!1677958 () Bool)

(assert (=> b!4104353 (=> res!1677958 e!2547223)))

(assert (=> b!4104353 (= res!1677958 (= (h!49586 (t!339947 lt!1467380)) (h!49586 rTail!27)))))

(declare-fun b!4104354 () Bool)

(assert (=> b!4104354 (= e!2547223 (contains!8846 (t!339947 (t!339947 lt!1467380)) (h!49586 rTail!27)))))

(assert (= (and d!1218371 res!1677959) b!4104353))

(assert (= (and b!4104353 (not res!1677958)) b!4104354))

(assert (=> d!1218371 m!4709821))

(declare-fun m!4709913 () Bool)

(assert (=> d!1218371 m!4709913))

(declare-fun m!4709915 () Bool)

(assert (=> b!4104354 m!4709915))

(assert (=> b!4104185 d!1218371))

(assert (=> d!1218279 d!1218285))

(declare-fun e!2547225 () Bool)

(assert (=> b!4104204 (= tp!1243954 e!2547225)))

(declare-fun b!4104357 () Bool)

(declare-fun tp!1244029 () Bool)

(assert (=> b!4104357 (= e!2547225 tp!1244029)))

(declare-fun b!4104355 () Bool)

(assert (=> b!4104355 (= e!2547225 tp_is_empty!21125)))

(declare-fun b!4104356 () Bool)

(declare-fun tp!1244030 () Bool)

(declare-fun tp!1244026 () Bool)

(assert (=> b!4104356 (= e!2547225 (and tp!1244030 tp!1244026))))

(declare-fun b!4104358 () Bool)

(declare-fun tp!1244028 () Bool)

(declare-fun tp!1244027 () Bool)

(assert (=> b!4104358 (= e!2547225 (and tp!1244028 tp!1244027))))

(assert (= (and b!4104204 ((_ is ElementMatch!12077) (regOne!24666 (regex!7172 (h!49586 rTail!27))))) b!4104355))

(assert (= (and b!4104204 ((_ is Concat!19479) (regOne!24666 (regex!7172 (h!49586 rTail!27))))) b!4104356))

(assert (= (and b!4104204 ((_ is Star!12077) (regOne!24666 (regex!7172 (h!49586 rTail!27))))) b!4104357))

(assert (= (and b!4104204 ((_ is Union!12077) (regOne!24666 (regex!7172 (h!49586 rTail!27))))) b!4104358))

(declare-fun e!2547226 () Bool)

(assert (=> b!4104204 (= tp!1243950 e!2547226)))

(declare-fun b!4104361 () Bool)

(declare-fun tp!1244034 () Bool)

(assert (=> b!4104361 (= e!2547226 tp!1244034)))

(declare-fun b!4104359 () Bool)

(assert (=> b!4104359 (= e!2547226 tp_is_empty!21125)))

(declare-fun b!4104360 () Bool)

(declare-fun tp!1244035 () Bool)

(declare-fun tp!1244031 () Bool)

(assert (=> b!4104360 (= e!2547226 (and tp!1244035 tp!1244031))))

(declare-fun b!4104362 () Bool)

(declare-fun tp!1244033 () Bool)

(declare-fun tp!1244032 () Bool)

(assert (=> b!4104362 (= e!2547226 (and tp!1244033 tp!1244032))))

(assert (= (and b!4104204 ((_ is ElementMatch!12077) (regTwo!24666 (regex!7172 (h!49586 rTail!27))))) b!4104359))

(assert (= (and b!4104204 ((_ is Concat!19479) (regTwo!24666 (regex!7172 (h!49586 rTail!27))))) b!4104360))

(assert (= (and b!4104204 ((_ is Star!12077) (regTwo!24666 (regex!7172 (h!49586 rTail!27))))) b!4104361))

(assert (= (and b!4104204 ((_ is Union!12077) (regTwo!24666 (regex!7172 (h!49586 rTail!27))))) b!4104362))

(declare-fun e!2547227 () Bool)

(assert (=> b!4104216 (= tp!1243964 e!2547227)))

(declare-fun b!4104365 () Bool)

(declare-fun tp!1244039 () Bool)

(assert (=> b!4104365 (= e!2547227 tp!1244039)))

(declare-fun b!4104363 () Bool)

(assert (=> b!4104363 (= e!2547227 tp_is_empty!21125)))

(declare-fun b!4104364 () Bool)

(declare-fun tp!1244040 () Bool)

(declare-fun tp!1244036 () Bool)

(assert (=> b!4104364 (= e!2547227 (and tp!1244040 tp!1244036))))

(declare-fun b!4104366 () Bool)

(declare-fun tp!1244038 () Bool)

(declare-fun tp!1244037 () Bool)

(assert (=> b!4104366 (= e!2547227 (and tp!1244038 tp!1244037))))

(assert (= (and b!4104216 ((_ is ElementMatch!12077) (regex!7172 (h!49586 (t!339947 rTail!27))))) b!4104363))

(assert (= (and b!4104216 ((_ is Concat!19479) (regex!7172 (h!49586 (t!339947 rTail!27))))) b!4104364))

(assert (= (and b!4104216 ((_ is Star!12077) (regex!7172 (h!49586 (t!339947 rTail!27))))) b!4104365))

(assert (= (and b!4104216 ((_ is Union!12077) (regex!7172 (h!49586 (t!339947 rTail!27))))) b!4104366))

(declare-fun e!2547228 () Bool)

(assert (=> b!4104202 (= tp!1243947 e!2547228)))

(declare-fun b!4104369 () Bool)

(declare-fun tp!1244044 () Bool)

(assert (=> b!4104369 (= e!2547228 tp!1244044)))

(declare-fun b!4104367 () Bool)

(assert (=> b!4104367 (= e!2547228 tp_is_empty!21125)))

(declare-fun b!4104368 () Bool)

(declare-fun tp!1244045 () Bool)

(declare-fun tp!1244041 () Bool)

(assert (=> b!4104368 (= e!2547228 (and tp!1244045 tp!1244041))))

(declare-fun b!4104370 () Bool)

(declare-fun tp!1244043 () Bool)

(declare-fun tp!1244042 () Bool)

(assert (=> b!4104370 (= e!2547228 (and tp!1244043 tp!1244042))))

(assert (= (and b!4104202 ((_ is ElementMatch!12077) (regOne!24667 (regex!7172 rHead!24)))) b!4104367))

(assert (= (and b!4104202 ((_ is Concat!19479) (regOne!24667 (regex!7172 rHead!24)))) b!4104368))

(assert (= (and b!4104202 ((_ is Star!12077) (regOne!24667 (regex!7172 rHead!24)))) b!4104369))

(assert (= (and b!4104202 ((_ is Union!12077) (regOne!24667 (regex!7172 rHead!24)))) b!4104370))

(declare-fun e!2547229 () Bool)

(assert (=> b!4104202 (= tp!1243946 e!2547229)))

(declare-fun b!4104373 () Bool)

(declare-fun tp!1244049 () Bool)

(assert (=> b!4104373 (= e!2547229 tp!1244049)))

(declare-fun b!4104371 () Bool)

(assert (=> b!4104371 (= e!2547229 tp_is_empty!21125)))

(declare-fun b!4104372 () Bool)

(declare-fun tp!1244050 () Bool)

(declare-fun tp!1244046 () Bool)

(assert (=> b!4104372 (= e!2547229 (and tp!1244050 tp!1244046))))

(declare-fun b!4104374 () Bool)

(declare-fun tp!1244048 () Bool)

(declare-fun tp!1244047 () Bool)

(assert (=> b!4104374 (= e!2547229 (and tp!1244048 tp!1244047))))

(assert (= (and b!4104202 ((_ is ElementMatch!12077) (regTwo!24667 (regex!7172 rHead!24)))) b!4104371))

(assert (= (and b!4104202 ((_ is Concat!19479) (regTwo!24667 (regex!7172 rHead!24)))) b!4104372))

(assert (= (and b!4104202 ((_ is Star!12077) (regTwo!24667 (regex!7172 rHead!24)))) b!4104373))

(assert (= (and b!4104202 ((_ is Union!12077) (regTwo!24667 (regex!7172 rHead!24)))) b!4104374))

(declare-fun e!2547230 () Bool)

(assert (=> b!4104206 (= tp!1243952 e!2547230)))

(declare-fun b!4104377 () Bool)

(declare-fun tp!1244054 () Bool)

(assert (=> b!4104377 (= e!2547230 tp!1244054)))

(declare-fun b!4104375 () Bool)

(assert (=> b!4104375 (= e!2547230 tp_is_empty!21125)))

(declare-fun b!4104376 () Bool)

(declare-fun tp!1244055 () Bool)

(declare-fun tp!1244051 () Bool)

(assert (=> b!4104376 (= e!2547230 (and tp!1244055 tp!1244051))))

(declare-fun b!4104378 () Bool)

(declare-fun tp!1244053 () Bool)

(declare-fun tp!1244052 () Bool)

(assert (=> b!4104378 (= e!2547230 (and tp!1244053 tp!1244052))))

(assert (= (and b!4104206 ((_ is ElementMatch!12077) (regOne!24667 (regex!7172 (h!49586 rTail!27))))) b!4104375))

(assert (= (and b!4104206 ((_ is Concat!19479) (regOne!24667 (regex!7172 (h!49586 rTail!27))))) b!4104376))

(assert (= (and b!4104206 ((_ is Star!12077) (regOne!24667 (regex!7172 (h!49586 rTail!27))))) b!4104377))

(assert (= (and b!4104206 ((_ is Union!12077) (regOne!24667 (regex!7172 (h!49586 rTail!27))))) b!4104378))

(declare-fun e!2547231 () Bool)

(assert (=> b!4104206 (= tp!1243951 e!2547231)))

(declare-fun b!4104381 () Bool)

(declare-fun tp!1244059 () Bool)

(assert (=> b!4104381 (= e!2547231 tp!1244059)))

(declare-fun b!4104379 () Bool)

(assert (=> b!4104379 (= e!2547231 tp_is_empty!21125)))

(declare-fun b!4104380 () Bool)

(declare-fun tp!1244060 () Bool)

(declare-fun tp!1244056 () Bool)

(assert (=> b!4104380 (= e!2547231 (and tp!1244060 tp!1244056))))

(declare-fun b!4104382 () Bool)

(declare-fun tp!1244058 () Bool)

(declare-fun tp!1244057 () Bool)

(assert (=> b!4104382 (= e!2547231 (and tp!1244058 tp!1244057))))

(assert (= (and b!4104206 ((_ is ElementMatch!12077) (regTwo!24667 (regex!7172 (h!49586 rTail!27))))) b!4104379))

(assert (= (and b!4104206 ((_ is Concat!19479) (regTwo!24667 (regex!7172 (h!49586 rTail!27))))) b!4104380))

(assert (= (and b!4104206 ((_ is Star!12077) (regTwo!24667 (regex!7172 (h!49586 rTail!27))))) b!4104381))

(assert (= (and b!4104206 ((_ is Union!12077) (regTwo!24667 (regex!7172 (h!49586 rTail!27))))) b!4104382))

(declare-fun b!4104385 () Bool)

(declare-fun b_free!115221 () Bool)

(declare-fun b_next!115925 () Bool)

(assert (=> b!4104385 (= b_free!115221 (not b_next!115925))))

(declare-fun tp!1244064 () Bool)

(declare-fun b_and!317035 () Bool)

(assert (=> b!4104385 (= tp!1244064 b_and!317035)))

(declare-fun b_free!115223 () Bool)

(declare-fun b_next!115927 () Bool)

(assert (=> b!4104385 (= b_free!115223 (not b_next!115927))))

(declare-fun tp!1244061 () Bool)

(declare-fun b_and!317037 () Bool)

(assert (=> b!4104385 (= tp!1244061 b_and!317037)))

(declare-fun e!2547234 () Bool)

(assert (=> b!4104385 (= e!2547234 (and tp!1244064 tp!1244061))))

(declare-fun e!2547233 () Bool)

(declare-fun b!4104384 () Bool)

(declare-fun tp!1244062 () Bool)

(assert (=> b!4104384 (= e!2547233 (and tp!1244062 (inv!58833 (tag!8032 (h!49586 (t!339947 (t!339947 rTail!27))))) (inv!58835 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27))))) e!2547234))))

(declare-fun b!4104383 () Bool)

(declare-fun e!2547235 () Bool)

(declare-fun tp!1244063 () Bool)

(assert (=> b!4104383 (= e!2547235 (and e!2547233 tp!1244063))))

(assert (=> b!4104215 (= tp!1243965 e!2547235)))

(assert (= b!4104384 b!4104385))

(assert (= b!4104383 b!4104384))

(assert (= (and b!4104215 ((_ is Cons!44166) (t!339947 (t!339947 rTail!27)))) b!4104383))

(declare-fun m!4709917 () Bool)

(assert (=> b!4104384 m!4709917))

(declare-fun m!4709919 () Bool)

(assert (=> b!4104384 m!4709919))

(declare-fun e!2547236 () Bool)

(assert (=> b!4104201 (= tp!1243948 e!2547236)))

(declare-fun b!4104388 () Bool)

(declare-fun tp!1244068 () Bool)

(assert (=> b!4104388 (= e!2547236 tp!1244068)))

(declare-fun b!4104386 () Bool)

(assert (=> b!4104386 (= e!2547236 tp_is_empty!21125)))

(declare-fun b!4104387 () Bool)

(declare-fun tp!1244069 () Bool)

(declare-fun tp!1244065 () Bool)

(assert (=> b!4104387 (= e!2547236 (and tp!1244069 tp!1244065))))

(declare-fun b!4104389 () Bool)

(declare-fun tp!1244067 () Bool)

(declare-fun tp!1244066 () Bool)

(assert (=> b!4104389 (= e!2547236 (and tp!1244067 tp!1244066))))

(assert (= (and b!4104201 ((_ is ElementMatch!12077) (reg!12406 (regex!7172 rHead!24)))) b!4104386))

(assert (= (and b!4104201 ((_ is Concat!19479) (reg!12406 (regex!7172 rHead!24)))) b!4104387))

(assert (= (and b!4104201 ((_ is Star!12077) (reg!12406 (regex!7172 rHead!24)))) b!4104388))

(assert (= (and b!4104201 ((_ is Union!12077) (reg!12406 (regex!7172 rHead!24)))) b!4104389))

(declare-fun e!2547237 () Bool)

(assert (=> b!4104205 (= tp!1243953 e!2547237)))

(declare-fun b!4104392 () Bool)

(declare-fun tp!1244073 () Bool)

(assert (=> b!4104392 (= e!2547237 tp!1244073)))

(declare-fun b!4104390 () Bool)

(assert (=> b!4104390 (= e!2547237 tp_is_empty!21125)))

(declare-fun b!4104391 () Bool)

(declare-fun tp!1244074 () Bool)

(declare-fun tp!1244070 () Bool)

(assert (=> b!4104391 (= e!2547237 (and tp!1244074 tp!1244070))))

(declare-fun b!4104393 () Bool)

(declare-fun tp!1244072 () Bool)

(declare-fun tp!1244071 () Bool)

(assert (=> b!4104393 (= e!2547237 (and tp!1244072 tp!1244071))))

(assert (= (and b!4104205 ((_ is ElementMatch!12077) (reg!12406 (regex!7172 (h!49586 rTail!27))))) b!4104390))

(assert (= (and b!4104205 ((_ is Concat!19479) (reg!12406 (regex!7172 (h!49586 rTail!27))))) b!4104391))

(assert (= (and b!4104205 ((_ is Star!12077) (reg!12406 (regex!7172 (h!49586 rTail!27))))) b!4104392))

(assert (= (and b!4104205 ((_ is Union!12077) (reg!12406 (regex!7172 (h!49586 rTail!27))))) b!4104393))

(declare-fun e!2547238 () Bool)

(assert (=> b!4104200 (= tp!1243949 e!2547238)))

(declare-fun b!4104396 () Bool)

(declare-fun tp!1244078 () Bool)

(assert (=> b!4104396 (= e!2547238 tp!1244078)))

(declare-fun b!4104394 () Bool)

(assert (=> b!4104394 (= e!2547238 tp_is_empty!21125)))

(declare-fun b!4104395 () Bool)

(declare-fun tp!1244079 () Bool)

(declare-fun tp!1244075 () Bool)

(assert (=> b!4104395 (= e!2547238 (and tp!1244079 tp!1244075))))

(declare-fun b!4104397 () Bool)

(declare-fun tp!1244077 () Bool)

(declare-fun tp!1244076 () Bool)

(assert (=> b!4104397 (= e!2547238 (and tp!1244077 tp!1244076))))

(assert (= (and b!4104200 ((_ is ElementMatch!12077) (regOne!24666 (regex!7172 rHead!24)))) b!4104394))

(assert (= (and b!4104200 ((_ is Concat!19479) (regOne!24666 (regex!7172 rHead!24)))) b!4104395))

(assert (= (and b!4104200 ((_ is Star!12077) (regOne!24666 (regex!7172 rHead!24)))) b!4104396))

(assert (= (and b!4104200 ((_ is Union!12077) (regOne!24666 (regex!7172 rHead!24)))) b!4104397))

(declare-fun e!2547239 () Bool)

(assert (=> b!4104200 (= tp!1243945 e!2547239)))

(declare-fun b!4104400 () Bool)

(declare-fun tp!1244083 () Bool)

(assert (=> b!4104400 (= e!2547239 tp!1244083)))

(declare-fun b!4104398 () Bool)

(assert (=> b!4104398 (= e!2547239 tp_is_empty!21125)))

(declare-fun b!4104399 () Bool)

(declare-fun tp!1244084 () Bool)

(declare-fun tp!1244080 () Bool)

(assert (=> b!4104399 (= e!2547239 (and tp!1244084 tp!1244080))))

(declare-fun b!4104401 () Bool)

(declare-fun tp!1244082 () Bool)

(declare-fun tp!1244081 () Bool)

(assert (=> b!4104401 (= e!2547239 (and tp!1244082 tp!1244081))))

(assert (= (and b!4104200 ((_ is ElementMatch!12077) (regTwo!24666 (regex!7172 rHead!24)))) b!4104398))

(assert (= (and b!4104200 ((_ is Concat!19479) (regTwo!24666 (regex!7172 rHead!24)))) b!4104399))

(assert (= (and b!4104200 ((_ is Star!12077) (regTwo!24666 (regex!7172 rHead!24)))) b!4104400))

(assert (= (and b!4104200 ((_ is Union!12077) (regTwo!24666 (regex!7172 rHead!24)))) b!4104401))

(check-sat (not b!4104362) (not d!1218311) (not b!4104348) (not b!4104231) (not b!4104366) (not b!4104337) (not b!4104365) (not d!1218359) (not b!4104393) (not b_next!115919) (not b!4104220) (not b!4104357) (not b!4104391) (not b!4104370) (not b!4104369) b_and!317019 tp_is_empty!21125 (not b!4104235) b_and!317035 b_and!317027 (not b!4104400) (not d!1218365) (not d!1218317) (not b!4104399) (not b!4104358) (not b!4104401) (not b!4104225) (not b!4104378) (not b!4104397) (not b!4104236) (not b!4104373) (not b!4104387) (not b!4104356) (not b!4104221) (not d!1218357) b_and!317029 (not b!4104381) (not d!1218361) (not b!4104334) b_and!317021 (not b!4104361) (not b!4104389) (not d!1218315) (not b!4104224) b_and!317037 b_and!317017 (not b!4104376) (not b!4104222) (not d!1218367) (not b!4104382) (not b!4104388) (not b!4104354) (not b!4104380) (not b!4104392) (not b!4104395) (not d!1218369) (not b_next!115925) (not d!1218307) (not d!1218355) (not b!4104374) (not b!4104351) (not b!4104223) (not b!4104383) (not b!4104347) (not b!4104384) (not b_next!115911) (not d!1218371) (not b_next!115917) (not b!4104360) (not b_next!115907) (not b_next!115927) (not d!1218309) (not b_next!115909) b_and!317015 (not b!4104233) (not b!4104396) (not b_next!115905) (not b!4104364) (not b!4104372) (not b!4104377) (not b!4104368))
(check-sat (not b_next!115919) b_and!317019 b_and!317029 b_and!317021 (not b_next!115925) (not b_next!115907) b_and!317015 (not b_next!115905) b_and!317035 b_and!317027 b_and!317037 b_and!317017 (not b_next!115911) (not b_next!115917) (not b_next!115927) (not b_next!115909))
(get-model)

(declare-fun d!1218373 () Bool)

(declare-fun lt!1467426 () Bool)

(assert (=> d!1218373 (= lt!1467426 (select (content!6807 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27)))))

(declare-fun e!2547241 () Bool)

(assert (=> d!1218373 (= lt!1467426 e!2547241)))

(declare-fun res!1677963 () Bool)

(assert (=> d!1218373 (=> (not res!1677963) (not e!2547241))))

(assert (=> d!1218373 (= res!1677963 ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))))))

(assert (=> d!1218373 (= (contains!8846 (t!339947 (t!339947 lt!1467380)) (h!49586 rTail!27)) lt!1467426)))

(declare-fun b!4104402 () Bool)

(declare-fun e!2547240 () Bool)

(assert (=> b!4104402 (= e!2547241 e!2547240)))

(declare-fun res!1677962 () Bool)

(assert (=> b!4104402 (=> res!1677962 e!2547240)))

(assert (=> b!4104402 (= res!1677962 (= (h!49586 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27)))))

(declare-fun b!4104403 () Bool)

(assert (=> b!4104403 (= e!2547240 (contains!8846 (t!339947 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27)))))

(assert (= (and d!1218373 res!1677963) b!4104402))

(assert (= (and b!4104402 (not res!1677962)) b!4104403))

(declare-fun m!4709921 () Bool)

(assert (=> d!1218373 m!4709921))

(declare-fun m!4709923 () Bool)

(assert (=> d!1218373 m!4709923))

(declare-fun m!4709925 () Bool)

(assert (=> b!4104403 m!4709925))

(assert (=> b!4104354 d!1218373))

(declare-fun b!4104407 () Bool)

(declare-fun e!2547243 () Int)

(assert (=> b!4104407 (= e!2547243 (- 1))))

(declare-fun b!4104404 () Bool)

(declare-fun e!2547242 () Int)

(assert (=> b!4104404 (= e!2547242 0)))

(declare-fun d!1218375 () Bool)

(declare-fun lt!1467427 () Int)

(assert (=> d!1218375 (>= lt!1467427 0)))

(assert (=> d!1218375 (= lt!1467427 e!2547242)))

(declare-fun c!706648 () Bool)

(assert (=> d!1218375 (= c!706648 (and ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))) (= (h!49586 (t!339947 (t!339947 lt!1467380))) rHead!24)))))

(assert (=> d!1218375 (contains!8846 (t!339947 (t!339947 lt!1467380)) rHead!24)))

(assert (=> d!1218375 (= (getIndex!596 (t!339947 (t!339947 lt!1467380)) rHead!24) lt!1467427)))

(declare-fun b!4104406 () Bool)

(assert (=> b!4104406 (= e!2547243 (+ 1 (getIndex!596 (t!339947 (t!339947 (t!339947 lt!1467380))) rHead!24)))))

(declare-fun b!4104405 () Bool)

(assert (=> b!4104405 (= e!2547242 e!2547243)))

(declare-fun c!706649 () Bool)

(assert (=> b!4104405 (= c!706649 (and ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))) (not (= (h!49586 (t!339947 (t!339947 lt!1467380))) rHead!24))))))

(assert (= (and d!1218375 c!706648) b!4104404))

(assert (= (and d!1218375 (not c!706648)) b!4104405))

(assert (= (and b!4104405 c!706649) b!4104406))

(assert (= (and b!4104405 (not c!706649)) b!4104407))

(assert (=> d!1218375 m!4709825))

(declare-fun m!4709927 () Bool)

(assert (=> b!4104406 m!4709927))

(assert (=> b!4104337 d!1218375))

(declare-fun bs!594015 () Bool)

(declare-fun d!1218377 () Bool)

(assert (= bs!594015 (and d!1218377 d!1218317)))

(declare-fun lambda!128324 () Int)

(assert (=> bs!594015 (= lambda!128324 lambda!128313)))

(assert (=> d!1218377 true))

(declare-fun lt!1467430 () Bool)

(assert (=> d!1218377 (= lt!1467430 (forall!8429 lt!1467380 lambda!128324))))

(declare-fun e!2547249 () Bool)

(assert (=> d!1218377 (= lt!1467430 e!2547249)))

(declare-fun res!1677968 () Bool)

(assert (=> d!1218377 (=> res!1677968 e!2547249)))

(assert (=> d!1218377 (= res!1677968 (not ((_ is Cons!44166) lt!1467380)))))

(assert (=> d!1218377 (= (rulesValidInductive!2661 thiss!26455 lt!1467380) lt!1467430)))

(declare-fun b!4104412 () Bool)

(declare-fun e!2547248 () Bool)

(assert (=> b!4104412 (= e!2547249 e!2547248)))

(declare-fun res!1677969 () Bool)

(assert (=> b!4104412 (=> (not res!1677969) (not e!2547248))))

(declare-fun ruleValid!3048 (LexerInterface!6761 Rule!14144) Bool)

(assert (=> b!4104412 (= res!1677969 (ruleValid!3048 thiss!26455 (h!49586 lt!1467380)))))

(declare-fun b!4104413 () Bool)

(assert (=> b!4104413 (= e!2547248 (rulesValidInductive!2661 thiss!26455 (t!339947 lt!1467380)))))

(assert (= (and d!1218377 (not res!1677968)) b!4104412))

(assert (= (and b!4104412 res!1677969) b!4104413))

(declare-fun m!4709929 () Bool)

(assert (=> d!1218377 m!4709929))

(declare-fun m!4709931 () Bool)

(assert (=> b!4104412 m!4709931))

(declare-fun m!4709933 () Bool)

(assert (=> b!4104413 m!4709933))

(assert (=> d!1218317 d!1218377))

(declare-fun d!1218379 () Bool)

(declare-fun res!1677974 () Bool)

(declare-fun e!2547254 () Bool)

(assert (=> d!1218379 (=> res!1677974 e!2547254)))

(assert (=> d!1218379 (= res!1677974 ((_ is Nil!44166) lt!1467380))))

(assert (=> d!1218379 (= (forall!8429 lt!1467380 lambda!128313) e!2547254)))

(declare-fun b!4104418 () Bool)

(declare-fun e!2547255 () Bool)

(assert (=> b!4104418 (= e!2547254 e!2547255)))

(declare-fun res!1677975 () Bool)

(assert (=> b!4104418 (=> (not res!1677975) (not e!2547255))))

(declare-fun dynLambda!18898 (Int Rule!14144) Bool)

(assert (=> b!4104418 (= res!1677975 (dynLambda!18898 lambda!128313 (h!49586 lt!1467380)))))

(declare-fun b!4104419 () Bool)

(assert (=> b!4104419 (= e!2547255 (forall!8429 (t!339947 lt!1467380) lambda!128313))))

(assert (= (and d!1218379 (not res!1677974)) b!4104418))

(assert (= (and b!4104418 res!1677975) b!4104419))

(declare-fun b_lambda!120551 () Bool)

(assert (=> (not b_lambda!120551) (not b!4104418)))

(declare-fun m!4709935 () Bool)

(assert (=> b!4104418 m!4709935))

(declare-fun m!4709937 () Bool)

(assert (=> b!4104419 m!4709937))

(assert (=> d!1218317 d!1218379))

(declare-fun d!1218381 () Bool)

(assert (=> d!1218381 (= (inv!58833 (tag!8032 (h!49586 (t!339947 (t!339947 rTail!27))))) (= (mod (str.len (value!225024 (tag!8032 (h!49586 (t!339947 (t!339947 rTail!27)))))) 2) 0))))

(assert (=> b!4104384 d!1218381))

(declare-fun d!1218383 () Bool)

(declare-fun res!1677976 () Bool)

(declare-fun e!2547256 () Bool)

(assert (=> d!1218383 (=> (not res!1677976) (not e!2547256))))

(assert (=> d!1218383 (= res!1677976 (semiInverseModEq!3085 (toChars!9647 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27))))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))))))

(assert (=> d!1218383 (= (inv!58835 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27))))) e!2547256)))

(declare-fun b!4104420 () Bool)

(assert (=> b!4104420 (= e!2547256 (equivClasses!2984 (toChars!9647 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27))))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))))))

(assert (= (and d!1218383 res!1677976) b!4104420))

(declare-fun m!4709939 () Bool)

(assert (=> d!1218383 m!4709939))

(declare-fun m!4709941 () Bool)

(assert (=> b!4104420 m!4709941))

(assert (=> b!4104384 d!1218383))

(declare-fun d!1218385 () Bool)

(declare-fun res!1677977 () Bool)

(declare-fun e!2547257 () Bool)

(assert (=> d!1218385 (=> res!1677977 e!2547257)))

(assert (=> d!1218385 (= res!1677977 ((_ is Nil!44166) (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))))))

(assert (=> d!1218385 (= (noDuplicateTag!2849 thiss!26455 (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))) Nil!44167)) e!2547257)))

(declare-fun b!4104421 () Bool)

(declare-fun e!2547258 () Bool)

(assert (=> b!4104421 (= e!2547257 e!2547258)))

(declare-fun res!1677978 () Bool)

(assert (=> b!4104421 (=> (not res!1677978) (not e!2547258))))

(assert (=> b!4104421 (= res!1677978 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))) Nil!44167) (tag!8032 (h!49586 (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))))))))

(declare-fun b!4104422 () Bool)

(assert (=> b!4104422 (= e!2547258 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27))))) Nil!44167))))))

(assert (= (and d!1218385 (not res!1677977)) b!4104421))

(assert (= (and b!4104421 res!1677978) b!4104422))

(declare-fun m!4709943 () Bool)

(assert (=> b!4104421 m!4709943))

(declare-fun m!4709945 () Bool)

(assert (=> b!4104422 m!4709945))

(assert (=> b!4104348 d!1218385))

(declare-fun d!1218387 () Bool)

(declare-fun res!1677979 () Bool)

(declare-fun e!2547259 () Bool)

(assert (=> d!1218387 (=> res!1677979 e!2547259)))

(assert (=> d!1218387 (= res!1677979 ((_ is Nil!44166) (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))))))

(assert (=> d!1218387 (= (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167))) e!2547259)))

(declare-fun b!4104423 () Bool)

(declare-fun e!2547260 () Bool)

(assert (=> b!4104423 (= e!2547259 e!2547260)))

(declare-fun res!1677980 () Bool)

(assert (=> b!4104423 (=> (not res!1677980) (not e!2547260))))

(assert (=> b!4104423 (= res!1677980 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)) (tag!8032 (h!49586 (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))))))

(declare-fun b!4104424 () Bool)

(assert (=> b!4104424 (= e!2547260 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27)))))) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)))))))

(assert (= (and d!1218387 (not res!1677979)) b!4104423))

(assert (= (and b!4104423 res!1677980) b!4104424))

(declare-fun m!4709947 () Bool)

(assert (=> b!4104423 m!4709947))

(declare-fun m!4709949 () Bool)

(assert (=> b!4104424 m!4709949))

(assert (=> b!4104221 d!1218387))

(declare-fun b!4104428 () Bool)

(declare-fun e!2547262 () Int)

(assert (=> b!4104428 (= e!2547262 (- 1))))

(declare-fun b!4104425 () Bool)

(declare-fun e!2547261 () Int)

(assert (=> b!4104425 (= e!2547261 0)))

(declare-fun d!1218389 () Bool)

(declare-fun lt!1467431 () Int)

(assert (=> d!1218389 (>= lt!1467431 0)))

(assert (=> d!1218389 (= lt!1467431 e!2547261)))

(declare-fun c!706650 () Bool)

(assert (=> d!1218389 (= c!706650 (and ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))) (= (h!49586 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27))))))

(assert (=> d!1218389 (contains!8846 (t!339947 (t!339947 lt!1467380)) (h!49586 rTail!27))))

(assert (=> d!1218389 (= (getIndex!596 (t!339947 (t!339947 lt!1467380)) (h!49586 rTail!27)) lt!1467431)))

(declare-fun b!4104427 () Bool)

(assert (=> b!4104427 (= e!2547262 (+ 1 (getIndex!596 (t!339947 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27))))))

(declare-fun b!4104426 () Bool)

(assert (=> b!4104426 (= e!2547261 e!2547262)))

(declare-fun c!706651 () Bool)

(assert (=> b!4104426 (= c!706651 (and ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))) (not (= (h!49586 (t!339947 (t!339947 lt!1467380))) (h!49586 rTail!27)))))))

(assert (= (and d!1218389 c!706650) b!4104425))

(assert (= (and d!1218389 (not c!706650)) b!4104426))

(assert (= (and b!4104426 c!706651) b!4104427))

(assert (= (and b!4104426 (not c!706651)) b!4104428))

(assert (=> d!1218389 m!4709915))

(declare-fun m!4709951 () Bool)

(assert (=> b!4104427 m!4709951))

(assert (=> b!4104351 d!1218389))

(declare-fun d!1218391 () Bool)

(declare-fun lt!1467432 () Bool)

(assert (=> d!1218391 (= lt!1467432 (select (content!6807 (t!339947 (t!339947 lt!1467380))) rHead!24))))

(declare-fun e!2547264 () Bool)

(assert (=> d!1218391 (= lt!1467432 e!2547264)))

(declare-fun res!1677982 () Bool)

(assert (=> d!1218391 (=> (not res!1677982) (not e!2547264))))

(assert (=> d!1218391 (= res!1677982 ((_ is Cons!44166) (t!339947 (t!339947 lt!1467380))))))

(assert (=> d!1218391 (= (contains!8846 (t!339947 (t!339947 lt!1467380)) rHead!24) lt!1467432)))

(declare-fun b!4104429 () Bool)

(declare-fun e!2547263 () Bool)

(assert (=> b!4104429 (= e!2547264 e!2547263)))

(declare-fun res!1677981 () Bool)

(assert (=> b!4104429 (=> res!1677981 e!2547263)))

(assert (=> b!4104429 (= res!1677981 (= (h!49586 (t!339947 (t!339947 lt!1467380))) rHead!24))))

(declare-fun b!4104430 () Bool)

(assert (=> b!4104430 (= e!2547263 (contains!8846 (t!339947 (t!339947 (t!339947 lt!1467380))) rHead!24))))

(assert (= (and d!1218391 res!1677982) b!4104429))

(assert (= (and b!4104429 (not res!1677981)) b!4104430))

(assert (=> d!1218391 m!4709921))

(declare-fun m!4709953 () Bool)

(assert (=> d!1218391 m!4709953))

(declare-fun m!4709955 () Bool)

(assert (=> b!4104430 m!4709955))

(assert (=> b!4104235 d!1218391))

(declare-fun d!1218393 () Bool)

(declare-fun lt!1467433 () Bool)

(assert (=> d!1218393 (= lt!1467433 (select (content!6809 Nil!44167) (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))))))

(declare-fun e!2547265 () Bool)

(assert (=> d!1218393 (= lt!1467433 e!2547265)))

(declare-fun res!1677984 () Bool)

(assert (=> d!1218393 (=> (not res!1677984) (not e!2547265))))

(assert (=> d!1218393 (= res!1677984 ((_ is Cons!44167) Nil!44167))))

(assert (=> d!1218393 (= (contains!8848 Nil!44167 (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))) lt!1467433)))

(declare-fun b!4104431 () Bool)

(declare-fun e!2547266 () Bool)

(assert (=> b!4104431 (= e!2547265 e!2547266)))

(declare-fun res!1677983 () Bool)

(assert (=> b!4104431 (=> res!1677983 e!2547266)))

(assert (=> b!4104431 (= res!1677983 (= (h!49587 Nil!44167) (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))))))

(declare-fun b!4104432 () Bool)

(assert (=> b!4104432 (= e!2547266 (contains!8848 (t!339948 Nil!44167) (tag!8032 (h!49586 (Cons!44166 rHead!24 (Cons!44166 (h!49586 rTail!27) (t!339947 rTail!27)))))))))

(assert (= (and d!1218393 res!1677984) b!4104431))

(assert (= (and b!4104431 (not res!1677983)) b!4104432))

(assert (=> d!1218393 m!4709809))

(declare-fun m!4709957 () Bool)

(assert (=> d!1218393 m!4709957))

(declare-fun m!4709959 () Bool)

(assert (=> b!4104432 m!4709959))

(assert (=> b!4104347 d!1218393))

(declare-fun d!1218395 () Bool)

(declare-fun lt!1467434 () Bool)

(assert (=> d!1218395 (= lt!1467434 (select (content!6809 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)) (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))))

(declare-fun e!2547267 () Bool)

(assert (=> d!1218395 (= lt!1467434 e!2547267)))

(declare-fun res!1677986 () Bool)

(assert (=> d!1218395 (=> (not res!1677986) (not e!2547267))))

(assert (=> d!1218395 (= res!1677986 ((_ is Cons!44167) (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)))))

(assert (=> d!1218395 (= (contains!8848 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167) (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))) lt!1467434)))

(declare-fun b!4104433 () Bool)

(declare-fun e!2547268 () Bool)

(assert (=> b!4104433 (= e!2547267 e!2547268)))

(declare-fun res!1677985 () Bool)

(assert (=> b!4104433 (=> res!1677985 e!2547268)))

(assert (=> b!4104433 (= res!1677985 (= (h!49587 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)) (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))))

(declare-fun b!4104434 () Bool)

(assert (=> b!4104434 (= e!2547268 (contains!8848 (t!339948 (Cons!44167 (tag!8032 (h!49586 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))) Nil!44167)) (tag!8032 (h!49586 (t!339947 (Cons!44166 (h!49586 rTail!27) (Cons!44166 rHead!24 (t!339947 rTail!27))))))))))

(assert (= (and d!1218395 res!1677986) b!4104433))

(assert (= (and b!4104433 (not res!1677985)) b!4104434))

(declare-fun m!4709961 () Bool)

(assert (=> d!1218395 m!4709961))

(declare-fun m!4709963 () Bool)

(assert (=> d!1218395 m!4709963))

(declare-fun m!4709965 () Bool)

(assert (=> b!4104434 m!4709965))

(assert (=> b!4104220 d!1218395))

(declare-fun d!1218397 () Bool)

(declare-fun c!706654 () Bool)

(assert (=> d!1218397 (= c!706654 ((_ is Nil!44167) (noDuplicateTag$default$2!6 thiss!26455)))))

(declare-fun e!2547271 () (InoxSet String!50760))

(assert (=> d!1218397 (= (content!6809 (noDuplicateTag$default$2!6 thiss!26455)) e!2547271)))

(declare-fun b!4104439 () Bool)

(assert (=> b!4104439 (= e!2547271 ((as const (Array String!50760 Bool)) false))))

(declare-fun b!4104440 () Bool)

(assert (=> b!4104440 (= e!2547271 ((_ map or) (store ((as const (Array String!50760 Bool)) false) (h!49587 (noDuplicateTag$default$2!6 thiss!26455)) true) (content!6809 (t!339948 (noDuplicateTag$default$2!6 thiss!26455)))))))

(assert (= (and d!1218397 c!706654) b!4104439))

(assert (= (and d!1218397 (not c!706654)) b!4104440))

(declare-fun m!4709967 () Bool)

(assert (=> b!4104440 m!4709967))

(declare-fun m!4709969 () Bool)

(assert (=> b!4104440 m!4709969))

(assert (=> d!1218309 d!1218397))

(declare-fun d!1218399 () Bool)

(declare-fun choose!25092 (Int) Bool)

(assert (=> d!1218399 (= (Forall2!1128 lambda!128316) (choose!25092 lambda!128316))))

(declare-fun bs!594016 () Bool)

(assert (= bs!594016 d!1218399))

(declare-fun m!4709971 () Bool)

(assert (=> bs!594016 m!4709971))

(assert (=> d!1218357 d!1218399))

(declare-fun d!1218401 () Bool)

(declare-fun res!1677987 () Bool)

(declare-fun e!2547272 () Bool)

(assert (=> d!1218401 (=> res!1677987 e!2547272)))

(assert (=> d!1218401 (= res!1677987 ((_ is Nil!44166) (t!339947 lt!1467380)))))

(assert (=> d!1218401 (= (noDuplicateTag!2849 thiss!26455 (t!339947 lt!1467380) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) Nil!44167)) e!2547272)))

(declare-fun b!4104441 () Bool)

(declare-fun e!2547273 () Bool)

(assert (=> b!4104441 (= e!2547272 e!2547273)))

(declare-fun res!1677988 () Bool)

(assert (=> b!4104441 (=> (not res!1677988) (not e!2547273))))

(assert (=> b!4104441 (= res!1677988 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) Nil!44167) (tag!8032 (h!49586 (t!339947 lt!1467380))))))))

(declare-fun b!4104442 () Bool)

(assert (=> b!4104442 (= e!2547273 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 lt!1467380)) (Cons!44167 (tag!8032 (h!49586 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) Nil!44167))))))

(assert (= (and d!1218401 (not res!1677987)) b!4104441))

(assert (= (and b!4104441 res!1677988) b!4104442))

(declare-fun m!4709973 () Bool)

(assert (=> b!4104441 m!4709973))

(declare-fun m!4709975 () Bool)

(assert (=> b!4104442 m!4709975))

(assert (=> b!4104225 d!1218401))

(declare-fun d!1218403 () Bool)

(declare-fun lt!1467435 () Bool)

(assert (=> d!1218403 (= lt!1467435 (select (content!6809 Nil!44167) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun e!2547274 () Bool)

(assert (=> d!1218403 (= lt!1467435 e!2547274)))

(declare-fun res!1677990 () Bool)

(assert (=> d!1218403 (=> (not res!1677990) (not e!2547274))))

(assert (=> d!1218403 (= res!1677990 ((_ is Cons!44167) Nil!44167))))

(assert (=> d!1218403 (= (contains!8848 Nil!44167 (tag!8032 (h!49586 lt!1467380))) lt!1467435)))

(declare-fun b!4104443 () Bool)

(declare-fun e!2547275 () Bool)

(assert (=> b!4104443 (= e!2547274 e!2547275)))

(declare-fun res!1677989 () Bool)

(assert (=> b!4104443 (=> res!1677989 e!2547275)))

(assert (=> b!4104443 (= res!1677989 (= (h!49587 Nil!44167) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun b!4104444 () Bool)

(assert (=> b!4104444 (= e!2547275 (contains!8848 (t!339948 Nil!44167) (tag!8032 (h!49586 lt!1467380))))))

(assert (= (and d!1218403 res!1677990) b!4104443))

(assert (= (and b!4104443 (not res!1677989)) b!4104444))

(assert (=> d!1218403 m!4709809))

(declare-fun m!4709977 () Bool)

(assert (=> d!1218403 m!4709977))

(declare-fun m!4709979 () Bool)

(assert (=> b!4104444 m!4709979))

(assert (=> b!4104224 d!1218403))

(declare-fun d!1218405 () Bool)

(declare-fun lt!1467436 () Bool)

(assert (=> d!1218405 (= lt!1467436 (select (content!6809 (t!339948 (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun e!2547276 () Bool)

(assert (=> d!1218405 (= lt!1467436 e!2547276)))

(declare-fun res!1677992 () Bool)

(assert (=> d!1218405 (=> (not res!1677992) (not e!2547276))))

(assert (=> d!1218405 (= res!1677992 ((_ is Cons!44167) (t!339948 (noDuplicateTag$default$2!6 thiss!26455))))))

(assert (=> d!1218405 (= (contains!8848 (t!339948 (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 lt!1467380))) lt!1467436)))

(declare-fun b!4104445 () Bool)

(declare-fun e!2547277 () Bool)

(assert (=> b!4104445 (= e!2547276 e!2547277)))

(declare-fun res!1677991 () Bool)

(assert (=> b!4104445 (=> res!1677991 e!2547277)))

(assert (=> b!4104445 (= res!1677991 (= (h!49587 (t!339948 (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 lt!1467380))))))

(declare-fun b!4104446 () Bool)

(assert (=> b!4104446 (= e!2547277 (contains!8848 (t!339948 (t!339948 (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 lt!1467380))))))

(assert (= (and d!1218405 res!1677992) b!4104445))

(assert (= (and b!4104445 (not res!1677991)) b!4104446))

(assert (=> d!1218405 m!4709969))

(declare-fun m!4709981 () Bool)

(assert (=> d!1218405 m!4709981))

(declare-fun m!4709983 () Bool)

(assert (=> b!4104446 m!4709983))

(assert (=> b!4104233 d!1218405))

(declare-fun d!1218407 () Bool)

(assert (=> d!1218407 (= (Forall2!1128 lambda!128321) (choose!25092 lambda!128321))))

(declare-fun bs!594017 () Bool)

(assert (= bs!594017 d!1218407))

(declare-fun m!4709985 () Bool)

(assert (=> bs!594017 m!4709985))

(assert (=> d!1218369 d!1218407))

(assert (=> d!1218361 d!1218273))

(declare-fun d!1218409 () Bool)

(assert (=> d!1218409 (= (content!6809 Nil!44167) ((as const (Array String!50760 Bool)) false))))

(assert (=> d!1218307 d!1218409))

(declare-fun d!1218411 () Bool)

(declare-fun c!706655 () Bool)

(assert (=> d!1218411 (= c!706655 ((_ is Nil!44166) (t!339947 lt!1467380)))))

(declare-fun e!2547278 () (InoxSet Rule!14144))

(assert (=> d!1218411 (= (content!6807 (t!339947 lt!1467380)) e!2547278)))

(declare-fun b!4104447 () Bool)

(assert (=> b!4104447 (= e!2547278 ((as const (Array Rule!14144 Bool)) false))))

(declare-fun b!4104448 () Bool)

(assert (=> b!4104448 (= e!2547278 ((_ map or) (store ((as const (Array Rule!14144 Bool)) false) (h!49586 (t!339947 lt!1467380)) true) (content!6807 (t!339947 (t!339947 lt!1467380)))))))

(assert (= (and d!1218411 c!706655) b!4104447))

(assert (= (and d!1218411 (not c!706655)) b!4104448))

(declare-fun m!4709987 () Bool)

(assert (=> b!4104448 m!4709987))

(assert (=> b!4104448 m!4709921))

(assert (=> b!4104334 d!1218411))

(declare-fun d!1218413 () Bool)

(declare-fun choose!25093 (Int) Bool)

(assert (=> d!1218413 (= (Forall!1529 lambda!128320) (choose!25093 lambda!128320))))

(declare-fun bs!594018 () Bool)

(assert (= bs!594018 d!1218413))

(declare-fun m!4709989 () Bool)

(assert (=> bs!594018 m!4709989))

(assert (=> d!1218365 d!1218413))

(declare-fun d!1218415 () Bool)

(assert (=> d!1218415 (= (Forall!1529 lambda!128319) (choose!25093 lambda!128319))))

(declare-fun bs!594019 () Bool)

(assert (= bs!594019 d!1218415))

(declare-fun m!4709991 () Bool)

(assert (=> bs!594019 m!4709991))

(assert (=> d!1218359 d!1218415))

(assert (=> d!1218355 d!1218311))

(declare-fun d!1218417 () Bool)

(declare-fun lt!1467437 () Bool)

(assert (=> d!1218417 (= lt!1467437 (select (content!6809 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 (t!339947 lt!1467380)))))))

(declare-fun e!2547279 () Bool)

(assert (=> d!1218417 (= lt!1467437 e!2547279)))

(declare-fun res!1677994 () Bool)

(assert (=> d!1218417 (=> (not res!1677994) (not e!2547279))))

(assert (=> d!1218417 (= res!1677994 ((_ is Cons!44167) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))))))

(assert (=> d!1218417 (= (contains!8848 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455)) (tag!8032 (h!49586 (t!339947 lt!1467380)))) lt!1467437)))

(declare-fun b!4104449 () Bool)

(declare-fun e!2547280 () Bool)

(assert (=> b!4104449 (= e!2547279 e!2547280)))

(declare-fun res!1677993 () Bool)

(assert (=> b!4104449 (=> res!1677993 e!2547280)))

(assert (=> b!4104449 (= res!1677993 (= (h!49587 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 (t!339947 lt!1467380)))))))

(declare-fun b!4104450 () Bool)

(assert (=> b!4104450 (= e!2547280 (contains!8848 (t!339948 (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 (t!339947 lt!1467380)))))))

(assert (= (and d!1218417 res!1677994) b!4104449))

(assert (= (and b!4104449 (not res!1677993)) b!4104450))

(declare-fun m!4709993 () Bool)

(assert (=> d!1218417 m!4709993))

(declare-fun m!4709995 () Bool)

(assert (=> d!1218417 m!4709995))

(declare-fun m!4709997 () Bool)

(assert (=> b!4104450 m!4709997))

(assert (=> b!4104222 d!1218417))

(declare-fun bs!594020 () Bool)

(declare-fun d!1218419 () Bool)

(assert (= bs!594020 (and d!1218419 d!1218359)))

(declare-fun lambda!128325 () Int)

(assert (=> bs!594020 (= (and (= (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toChars!9647 (transformation!7172 (h!49586 rTail!27)))) (= (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 rTail!27))))) (= lambda!128325 lambda!128319))))

(declare-fun bs!594021 () Bool)

(assert (= bs!594021 (and d!1218419 d!1218365)))

(assert (=> bs!594021 (= (and (= (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toChars!9647 (transformation!7172 rHead!24))) (= (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 rHead!24)))) (= lambda!128325 lambda!128320))))

(assert (=> d!1218419 true))

(assert (=> d!1218419 (< (dynLambda!18896 order!23243 (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27))))) (dynLambda!18897 order!23245 lambda!128325))))

(assert (=> d!1218419 true))

(assert (=> d!1218419 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))) (dynLambda!18897 order!23245 lambda!128325))))

(assert (=> d!1218419 (= (semiInverseModEq!3085 (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))) (Forall!1529 lambda!128325))))

(declare-fun bs!594022 () Bool)

(assert (= bs!594022 d!1218419))

(declare-fun m!4709999 () Bool)

(assert (=> bs!594022 m!4709999))

(assert (=> d!1218315 d!1218419))

(assert (=> d!1218311 d!1218411))

(assert (=> d!1218367 d!1218371))

(declare-fun bs!594023 () Bool)

(declare-fun d!1218421 () Bool)

(assert (= bs!594023 (and d!1218421 d!1218357)))

(declare-fun lambda!128326 () Int)

(assert (=> bs!594023 (= (= (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 rHead!24))) (= lambda!128326 lambda!128316))))

(declare-fun bs!594024 () Bool)

(assert (= bs!594024 (and d!1218421 d!1218369)))

(assert (=> bs!594024 (= (= (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 rTail!27)))) (= lambda!128326 lambda!128321))))

(assert (=> d!1218421 true))

(assert (=> d!1218421 (< (dynLambda!18894 order!23239 (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))) (dynLambda!18895 order!23241 lambda!128326))))

(assert (=> d!1218421 (= (equivClasses!2984 (toChars!9647 (transformation!7172 (h!49586 (t!339947 rTail!27)))) (toValue!9788 (transformation!7172 (h!49586 (t!339947 rTail!27))))) (Forall2!1128 lambda!128326))))

(declare-fun bs!594025 () Bool)

(assert (= bs!594025 d!1218421))

(declare-fun m!4710001 () Bool)

(assert (=> bs!594025 m!4710001))

(assert (=> b!4104236 d!1218421))

(declare-fun d!1218423 () Bool)

(assert (not d!1218423))

(assert (=> b!4104231 d!1218423))

(declare-fun d!1218425 () Bool)

(declare-fun res!1677995 () Bool)

(declare-fun e!2547281 () Bool)

(assert (=> d!1218425 (=> res!1677995 e!2547281)))

(assert (=> d!1218425 (= res!1677995 ((_ is Nil!44166) (t!339947 (t!339947 lt!1467380))))))

(assert (=> d!1218425 (= (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 lt!1467380)) (Cons!44167 (tag!8032 (h!49586 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455)))) e!2547281)))

(declare-fun b!4104451 () Bool)

(declare-fun e!2547282 () Bool)

(assert (=> b!4104451 (= e!2547281 e!2547282)))

(declare-fun res!1677996 () Bool)

(assert (=> b!4104451 (=> (not res!1677996) (not e!2547282))))

(assert (=> b!4104451 (= res!1677996 (not (contains!8848 (Cons!44167 (tag!8032 (h!49586 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))) (tag!8032 (h!49586 (t!339947 (t!339947 lt!1467380)))))))))

(declare-fun b!4104452 () Bool)

(assert (=> b!4104452 (= e!2547282 (noDuplicateTag!2849 thiss!26455 (t!339947 (t!339947 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 (t!339947 (t!339947 lt!1467380)))) (Cons!44167 (tag!8032 (h!49586 (t!339947 lt!1467380))) (Cons!44167 (tag!8032 (h!49586 lt!1467380)) (noDuplicateTag$default$2!6 thiss!26455))))))))

(assert (= (and d!1218425 (not res!1677995)) b!4104451))

(assert (= (and b!4104451 res!1677996) b!4104452))

(declare-fun m!4710003 () Bool)

(assert (=> b!4104451 m!4710003))

(declare-fun m!4710005 () Bool)

(assert (=> b!4104452 m!4710005))

(assert (=> b!4104223 d!1218425))

(assert (=> d!1218371 d!1218411))

(declare-fun b!4104455 () Bool)

(declare-fun b_free!115225 () Bool)

(declare-fun b_next!115929 () Bool)

(assert (=> b!4104455 (= b_free!115225 (not b_next!115929))))

(declare-fun tp!1244088 () Bool)

(declare-fun b_and!317039 () Bool)

(assert (=> b!4104455 (= tp!1244088 b_and!317039)))

(declare-fun b_free!115227 () Bool)

(declare-fun b_next!115931 () Bool)

(assert (=> b!4104455 (= b_free!115227 (not b_next!115931))))

(declare-fun tp!1244085 () Bool)

(declare-fun b_and!317041 () Bool)

(assert (=> b!4104455 (= tp!1244085 b_and!317041)))

(declare-fun e!2547285 () Bool)

(assert (=> b!4104455 (= e!2547285 (and tp!1244088 tp!1244085))))

(declare-fun e!2547284 () Bool)

(declare-fun tp!1244086 () Bool)

(declare-fun b!4104454 () Bool)

(assert (=> b!4104454 (= e!2547284 (and tp!1244086 (inv!58833 (tag!8032 (h!49586 (t!339947 (t!339947 (t!339947 rTail!27)))))) (inv!58835 (transformation!7172 (h!49586 (t!339947 (t!339947 (t!339947 rTail!27)))))) e!2547285))))

(declare-fun b!4104453 () Bool)

(declare-fun e!2547286 () Bool)

(declare-fun tp!1244087 () Bool)

(assert (=> b!4104453 (= e!2547286 (and e!2547284 tp!1244087))))

(assert (=> b!4104383 (= tp!1244063 e!2547286)))

(assert (= b!4104454 b!4104455))

(assert (= b!4104453 b!4104454))

(assert (= (and b!4104383 ((_ is Cons!44166) (t!339947 (t!339947 (t!339947 rTail!27))))) b!4104453))

(declare-fun m!4710007 () Bool)

(assert (=> b!4104454 m!4710007))

(declare-fun m!4710009 () Bool)

(assert (=> b!4104454 m!4710009))

(declare-fun e!2547287 () Bool)

(assert (=> b!4104378 (= tp!1244053 e!2547287)))

(declare-fun b!4104458 () Bool)

(declare-fun tp!1244092 () Bool)

(assert (=> b!4104458 (= e!2547287 tp!1244092)))

(declare-fun b!4104456 () Bool)

(assert (=> b!4104456 (= e!2547287 tp_is_empty!21125)))

(declare-fun b!4104457 () Bool)

(declare-fun tp!1244093 () Bool)

(declare-fun tp!1244089 () Bool)

(assert (=> b!4104457 (= e!2547287 (and tp!1244093 tp!1244089))))

(declare-fun b!4104459 () Bool)

(declare-fun tp!1244091 () Bool)

(declare-fun tp!1244090 () Bool)

(assert (=> b!4104459 (= e!2547287 (and tp!1244091 tp!1244090))))

(assert (= (and b!4104378 ((_ is ElementMatch!12077) (regOne!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104456))

(assert (= (and b!4104378 ((_ is Concat!19479) (regOne!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104457))

(assert (= (and b!4104378 ((_ is Star!12077) (regOne!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104458))

(assert (= (and b!4104378 ((_ is Union!12077) (regOne!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104459))

(declare-fun e!2547288 () Bool)

(assert (=> b!4104378 (= tp!1244052 e!2547288)))

(declare-fun b!4104462 () Bool)

(declare-fun tp!1244097 () Bool)

(assert (=> b!4104462 (= e!2547288 tp!1244097)))

(declare-fun b!4104460 () Bool)

(assert (=> b!4104460 (= e!2547288 tp_is_empty!21125)))

(declare-fun b!4104461 () Bool)

(declare-fun tp!1244098 () Bool)

(declare-fun tp!1244094 () Bool)

(assert (=> b!4104461 (= e!2547288 (and tp!1244098 tp!1244094))))

(declare-fun b!4104463 () Bool)

(declare-fun tp!1244096 () Bool)

(declare-fun tp!1244095 () Bool)

(assert (=> b!4104463 (= e!2547288 (and tp!1244096 tp!1244095))))

(assert (= (and b!4104378 ((_ is ElementMatch!12077) (regTwo!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104460))

(assert (= (and b!4104378 ((_ is Concat!19479) (regTwo!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104461))

(assert (= (and b!4104378 ((_ is Star!12077) (regTwo!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104462))

(assert (= (and b!4104378 ((_ is Union!12077) (regTwo!24667 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104463))

(declare-fun e!2547289 () Bool)

(assert (=> b!4104369 (= tp!1244044 e!2547289)))

(declare-fun b!4104466 () Bool)

(declare-fun tp!1244102 () Bool)

(assert (=> b!4104466 (= e!2547289 tp!1244102)))

(declare-fun b!4104464 () Bool)

(assert (=> b!4104464 (= e!2547289 tp_is_empty!21125)))

(declare-fun b!4104465 () Bool)

(declare-fun tp!1244103 () Bool)

(declare-fun tp!1244099 () Bool)

(assert (=> b!4104465 (= e!2547289 (and tp!1244103 tp!1244099))))

(declare-fun b!4104467 () Bool)

(declare-fun tp!1244101 () Bool)

(declare-fun tp!1244100 () Bool)

(assert (=> b!4104467 (= e!2547289 (and tp!1244101 tp!1244100))))

(assert (= (and b!4104369 ((_ is ElementMatch!12077) (reg!12406 (regOne!24667 (regex!7172 rHead!24))))) b!4104464))

(assert (= (and b!4104369 ((_ is Concat!19479) (reg!12406 (regOne!24667 (regex!7172 rHead!24))))) b!4104465))

(assert (= (and b!4104369 ((_ is Star!12077) (reg!12406 (regOne!24667 (regex!7172 rHead!24))))) b!4104466))

(assert (= (and b!4104369 ((_ is Union!12077) (reg!12406 (regOne!24667 (regex!7172 rHead!24))))) b!4104467))

(declare-fun e!2547290 () Bool)

(assert (=> b!4104368 (= tp!1244045 e!2547290)))

(declare-fun b!4104470 () Bool)

(declare-fun tp!1244107 () Bool)

(assert (=> b!4104470 (= e!2547290 tp!1244107)))

(declare-fun b!4104468 () Bool)

(assert (=> b!4104468 (= e!2547290 tp_is_empty!21125)))

(declare-fun b!4104469 () Bool)

(declare-fun tp!1244108 () Bool)

(declare-fun tp!1244104 () Bool)

(assert (=> b!4104469 (= e!2547290 (and tp!1244108 tp!1244104))))

(declare-fun b!4104471 () Bool)

(declare-fun tp!1244106 () Bool)

(declare-fun tp!1244105 () Bool)

(assert (=> b!4104471 (= e!2547290 (and tp!1244106 tp!1244105))))

(assert (= (and b!4104368 ((_ is ElementMatch!12077) (regOne!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104468))

(assert (= (and b!4104368 ((_ is Concat!19479) (regOne!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104469))

(assert (= (and b!4104368 ((_ is Star!12077) (regOne!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104470))

(assert (= (and b!4104368 ((_ is Union!12077) (regOne!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104471))

(declare-fun e!2547291 () Bool)

(assert (=> b!4104368 (= tp!1244041 e!2547291)))

(declare-fun b!4104474 () Bool)

(declare-fun tp!1244112 () Bool)

(assert (=> b!4104474 (= e!2547291 tp!1244112)))

(declare-fun b!4104472 () Bool)

(assert (=> b!4104472 (= e!2547291 tp_is_empty!21125)))

(declare-fun b!4104473 () Bool)

(declare-fun tp!1244113 () Bool)

(declare-fun tp!1244109 () Bool)

(assert (=> b!4104473 (= e!2547291 (and tp!1244113 tp!1244109))))

(declare-fun b!4104475 () Bool)

(declare-fun tp!1244111 () Bool)

(declare-fun tp!1244110 () Bool)

(assert (=> b!4104475 (= e!2547291 (and tp!1244111 tp!1244110))))

(assert (= (and b!4104368 ((_ is ElementMatch!12077) (regTwo!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104472))

(assert (= (and b!4104368 ((_ is Concat!19479) (regTwo!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104473))

(assert (= (and b!4104368 ((_ is Star!12077) (regTwo!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104474))

(assert (= (and b!4104368 ((_ is Union!12077) (regTwo!24666 (regOne!24667 (regex!7172 rHead!24))))) b!4104475))

(declare-fun e!2547292 () Bool)

(assert (=> b!4104384 (= tp!1244062 e!2547292)))

(declare-fun b!4104478 () Bool)

(declare-fun tp!1244117 () Bool)

(assert (=> b!4104478 (= e!2547292 tp!1244117)))

(declare-fun b!4104476 () Bool)

(assert (=> b!4104476 (= e!2547292 tp_is_empty!21125)))

(declare-fun b!4104477 () Bool)

(declare-fun tp!1244118 () Bool)

(declare-fun tp!1244114 () Bool)

(assert (=> b!4104477 (= e!2547292 (and tp!1244118 tp!1244114))))

(declare-fun b!4104479 () Bool)

(declare-fun tp!1244116 () Bool)

(declare-fun tp!1244115 () Bool)

(assert (=> b!4104479 (= e!2547292 (and tp!1244116 tp!1244115))))

(assert (= (and b!4104384 ((_ is ElementMatch!12077) (regex!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))) b!4104476))

(assert (= (and b!4104384 ((_ is Concat!19479) (regex!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))) b!4104477))

(assert (= (and b!4104384 ((_ is Star!12077) (regex!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))) b!4104478))

(assert (= (and b!4104384 ((_ is Union!12077) (regex!7172 (h!49586 (t!339947 (t!339947 rTail!27)))))) b!4104479))

(declare-fun e!2547293 () Bool)

(assert (=> b!4104377 (= tp!1244054 e!2547293)))

(declare-fun b!4104482 () Bool)

(declare-fun tp!1244122 () Bool)

(assert (=> b!4104482 (= e!2547293 tp!1244122)))

(declare-fun b!4104480 () Bool)

(assert (=> b!4104480 (= e!2547293 tp_is_empty!21125)))

(declare-fun b!4104481 () Bool)

(declare-fun tp!1244123 () Bool)

(declare-fun tp!1244119 () Bool)

(assert (=> b!4104481 (= e!2547293 (and tp!1244123 tp!1244119))))

(declare-fun b!4104483 () Bool)

(declare-fun tp!1244121 () Bool)

(declare-fun tp!1244120 () Bool)

(assert (=> b!4104483 (= e!2547293 (and tp!1244121 tp!1244120))))

(assert (= (and b!4104377 ((_ is ElementMatch!12077) (reg!12406 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104480))

(assert (= (and b!4104377 ((_ is Concat!19479) (reg!12406 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104481))

(assert (= (and b!4104377 ((_ is Star!12077) (reg!12406 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104482))

(assert (= (and b!4104377 ((_ is Union!12077) (reg!12406 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104483))

(declare-fun e!2547294 () Bool)

(assert (=> b!4104376 (= tp!1244055 e!2547294)))

(declare-fun b!4104486 () Bool)

(declare-fun tp!1244127 () Bool)

(assert (=> b!4104486 (= e!2547294 tp!1244127)))

(declare-fun b!4104484 () Bool)

(assert (=> b!4104484 (= e!2547294 tp_is_empty!21125)))

(declare-fun b!4104485 () Bool)

(declare-fun tp!1244128 () Bool)

(declare-fun tp!1244124 () Bool)

(assert (=> b!4104485 (= e!2547294 (and tp!1244128 tp!1244124))))

(declare-fun b!4104487 () Bool)

(declare-fun tp!1244126 () Bool)

(declare-fun tp!1244125 () Bool)

(assert (=> b!4104487 (= e!2547294 (and tp!1244126 tp!1244125))))

(assert (= (and b!4104376 ((_ is ElementMatch!12077) (regOne!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104484))

(assert (= (and b!4104376 ((_ is Concat!19479) (regOne!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104485))

(assert (= (and b!4104376 ((_ is Star!12077) (regOne!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104486))

(assert (= (and b!4104376 ((_ is Union!12077) (regOne!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104487))

(declare-fun e!2547295 () Bool)

(assert (=> b!4104376 (= tp!1244051 e!2547295)))

(declare-fun b!4104490 () Bool)

(declare-fun tp!1244132 () Bool)

(assert (=> b!4104490 (= e!2547295 tp!1244132)))

(declare-fun b!4104488 () Bool)

(assert (=> b!4104488 (= e!2547295 tp_is_empty!21125)))

(declare-fun b!4104489 () Bool)

(declare-fun tp!1244133 () Bool)

(declare-fun tp!1244129 () Bool)

(assert (=> b!4104489 (= e!2547295 (and tp!1244133 tp!1244129))))

(declare-fun b!4104491 () Bool)

(declare-fun tp!1244131 () Bool)

(declare-fun tp!1244130 () Bool)

(assert (=> b!4104491 (= e!2547295 (and tp!1244131 tp!1244130))))

(assert (= (and b!4104376 ((_ is ElementMatch!12077) (regTwo!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104488))

(assert (= (and b!4104376 ((_ is Concat!19479) (regTwo!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104489))

(assert (= (and b!4104376 ((_ is Star!12077) (regTwo!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104490))

(assert (= (and b!4104376 ((_ is Union!12077) (regTwo!24666 (regOne!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104491))

(declare-fun e!2547296 () Bool)

(assert (=> b!4104362 (= tp!1244033 e!2547296)))

(declare-fun b!4104494 () Bool)

(declare-fun tp!1244137 () Bool)

(assert (=> b!4104494 (= e!2547296 tp!1244137)))

(declare-fun b!4104492 () Bool)

(assert (=> b!4104492 (= e!2547296 tp_is_empty!21125)))

(declare-fun b!4104493 () Bool)

(declare-fun tp!1244138 () Bool)

(declare-fun tp!1244134 () Bool)

(assert (=> b!4104493 (= e!2547296 (and tp!1244138 tp!1244134))))

(declare-fun b!4104495 () Bool)

(declare-fun tp!1244136 () Bool)

(declare-fun tp!1244135 () Bool)

(assert (=> b!4104495 (= e!2547296 (and tp!1244136 tp!1244135))))

(assert (= (and b!4104362 ((_ is ElementMatch!12077) (regOne!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104492))

(assert (= (and b!4104362 ((_ is Concat!19479) (regOne!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104493))

(assert (= (and b!4104362 ((_ is Star!12077) (regOne!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104494))

(assert (= (and b!4104362 ((_ is Union!12077) (regOne!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104495))

(declare-fun e!2547297 () Bool)

(assert (=> b!4104362 (= tp!1244032 e!2547297)))

(declare-fun b!4104498 () Bool)

(declare-fun tp!1244142 () Bool)

(assert (=> b!4104498 (= e!2547297 tp!1244142)))

(declare-fun b!4104496 () Bool)

(assert (=> b!4104496 (= e!2547297 tp_is_empty!21125)))

(declare-fun b!4104497 () Bool)

(declare-fun tp!1244143 () Bool)

(declare-fun tp!1244139 () Bool)

(assert (=> b!4104497 (= e!2547297 (and tp!1244143 tp!1244139))))

(declare-fun b!4104499 () Bool)

(declare-fun tp!1244141 () Bool)

(declare-fun tp!1244140 () Bool)

(assert (=> b!4104499 (= e!2547297 (and tp!1244141 tp!1244140))))

(assert (= (and b!4104362 ((_ is ElementMatch!12077) (regTwo!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104496))

(assert (= (and b!4104362 ((_ is Concat!19479) (regTwo!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104497))

(assert (= (and b!4104362 ((_ is Star!12077) (regTwo!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104498))

(assert (= (and b!4104362 ((_ is Union!12077) (regTwo!24667 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104499))

(declare-fun e!2547298 () Bool)

(assert (=> b!4104397 (= tp!1244077 e!2547298)))

(declare-fun b!4104502 () Bool)

(declare-fun tp!1244147 () Bool)

(assert (=> b!4104502 (= e!2547298 tp!1244147)))

(declare-fun b!4104500 () Bool)

(assert (=> b!4104500 (= e!2547298 tp_is_empty!21125)))

(declare-fun b!4104501 () Bool)

(declare-fun tp!1244148 () Bool)

(declare-fun tp!1244144 () Bool)

(assert (=> b!4104501 (= e!2547298 (and tp!1244148 tp!1244144))))

(declare-fun b!4104503 () Bool)

(declare-fun tp!1244146 () Bool)

(declare-fun tp!1244145 () Bool)

(assert (=> b!4104503 (= e!2547298 (and tp!1244146 tp!1244145))))

(assert (= (and b!4104397 ((_ is ElementMatch!12077) (regOne!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104500))

(assert (= (and b!4104397 ((_ is Concat!19479) (regOne!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104501))

(assert (= (and b!4104397 ((_ is Star!12077) (regOne!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104502))

(assert (= (and b!4104397 ((_ is Union!12077) (regOne!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104503))

(declare-fun e!2547299 () Bool)

(assert (=> b!4104397 (= tp!1244076 e!2547299)))

(declare-fun b!4104506 () Bool)

(declare-fun tp!1244152 () Bool)

(assert (=> b!4104506 (= e!2547299 tp!1244152)))

(declare-fun b!4104504 () Bool)

(assert (=> b!4104504 (= e!2547299 tp_is_empty!21125)))

(declare-fun b!4104505 () Bool)

(declare-fun tp!1244153 () Bool)

(declare-fun tp!1244149 () Bool)

(assert (=> b!4104505 (= e!2547299 (and tp!1244153 tp!1244149))))

(declare-fun b!4104507 () Bool)

(declare-fun tp!1244151 () Bool)

(declare-fun tp!1244150 () Bool)

(assert (=> b!4104507 (= e!2547299 (and tp!1244151 tp!1244150))))

(assert (= (and b!4104397 ((_ is ElementMatch!12077) (regTwo!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104504))

(assert (= (and b!4104397 ((_ is Concat!19479) (regTwo!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104505))

(assert (= (and b!4104397 ((_ is Star!12077) (regTwo!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104506))

(assert (= (and b!4104397 ((_ is Union!12077) (regTwo!24667 (regOne!24666 (regex!7172 rHead!24))))) b!4104507))

(declare-fun e!2547300 () Bool)

(assert (=> b!4104396 (= tp!1244078 e!2547300)))

(declare-fun b!4104510 () Bool)

(declare-fun tp!1244157 () Bool)

(assert (=> b!4104510 (= e!2547300 tp!1244157)))

(declare-fun b!4104508 () Bool)

(assert (=> b!4104508 (= e!2547300 tp_is_empty!21125)))

(declare-fun b!4104509 () Bool)

(declare-fun tp!1244158 () Bool)

(declare-fun tp!1244154 () Bool)

(assert (=> b!4104509 (= e!2547300 (and tp!1244158 tp!1244154))))

(declare-fun b!4104511 () Bool)

(declare-fun tp!1244156 () Bool)

(declare-fun tp!1244155 () Bool)

(assert (=> b!4104511 (= e!2547300 (and tp!1244156 tp!1244155))))

(assert (= (and b!4104396 ((_ is ElementMatch!12077) (reg!12406 (regOne!24666 (regex!7172 rHead!24))))) b!4104508))

(assert (= (and b!4104396 ((_ is Concat!19479) (reg!12406 (regOne!24666 (regex!7172 rHead!24))))) b!4104509))

(assert (= (and b!4104396 ((_ is Star!12077) (reg!12406 (regOne!24666 (regex!7172 rHead!24))))) b!4104510))

(assert (= (and b!4104396 ((_ is Union!12077) (reg!12406 (regOne!24666 (regex!7172 rHead!24))))) b!4104511))

(declare-fun e!2547301 () Bool)

(assert (=> b!4104387 (= tp!1244069 e!2547301)))

(declare-fun b!4104514 () Bool)

(declare-fun tp!1244162 () Bool)

(assert (=> b!4104514 (= e!2547301 tp!1244162)))

(declare-fun b!4104512 () Bool)

(assert (=> b!4104512 (= e!2547301 tp_is_empty!21125)))

(declare-fun b!4104513 () Bool)

(declare-fun tp!1244163 () Bool)

(declare-fun tp!1244159 () Bool)

(assert (=> b!4104513 (= e!2547301 (and tp!1244163 tp!1244159))))

(declare-fun b!4104515 () Bool)

(declare-fun tp!1244161 () Bool)

(declare-fun tp!1244160 () Bool)

(assert (=> b!4104515 (= e!2547301 (and tp!1244161 tp!1244160))))

(assert (= (and b!4104387 ((_ is ElementMatch!12077) (regOne!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104512))

(assert (= (and b!4104387 ((_ is Concat!19479) (regOne!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104513))

(assert (= (and b!4104387 ((_ is Star!12077) (regOne!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104514))

(assert (= (and b!4104387 ((_ is Union!12077) (regOne!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104515))

(declare-fun e!2547302 () Bool)

(assert (=> b!4104387 (= tp!1244065 e!2547302)))

(declare-fun b!4104518 () Bool)

(declare-fun tp!1244167 () Bool)

(assert (=> b!4104518 (= e!2547302 tp!1244167)))

(declare-fun b!4104516 () Bool)

(assert (=> b!4104516 (= e!2547302 tp_is_empty!21125)))

(declare-fun b!4104517 () Bool)

(declare-fun tp!1244168 () Bool)

(declare-fun tp!1244164 () Bool)

(assert (=> b!4104517 (= e!2547302 (and tp!1244168 tp!1244164))))

(declare-fun b!4104519 () Bool)

(declare-fun tp!1244166 () Bool)

(declare-fun tp!1244165 () Bool)

(assert (=> b!4104519 (= e!2547302 (and tp!1244166 tp!1244165))))

(assert (= (and b!4104387 ((_ is ElementMatch!12077) (regTwo!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104516))

(assert (= (and b!4104387 ((_ is Concat!19479) (regTwo!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104517))

(assert (= (and b!4104387 ((_ is Star!12077) (regTwo!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104518))

(assert (= (and b!4104387 ((_ is Union!12077) (regTwo!24666 (reg!12406 (regex!7172 rHead!24))))) b!4104519))

(declare-fun e!2547303 () Bool)

(assert (=> b!4104370 (= tp!1244043 e!2547303)))

(declare-fun b!4104522 () Bool)

(declare-fun tp!1244172 () Bool)

(assert (=> b!4104522 (= e!2547303 tp!1244172)))

(declare-fun b!4104520 () Bool)

(assert (=> b!4104520 (= e!2547303 tp_is_empty!21125)))

(declare-fun b!4104521 () Bool)

(declare-fun tp!1244173 () Bool)

(declare-fun tp!1244169 () Bool)

(assert (=> b!4104521 (= e!2547303 (and tp!1244173 tp!1244169))))

(declare-fun b!4104523 () Bool)

(declare-fun tp!1244171 () Bool)

(declare-fun tp!1244170 () Bool)

(assert (=> b!4104523 (= e!2547303 (and tp!1244171 tp!1244170))))

(assert (= (and b!4104370 ((_ is ElementMatch!12077) (regOne!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104520))

(assert (= (and b!4104370 ((_ is Concat!19479) (regOne!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104521))

(assert (= (and b!4104370 ((_ is Star!12077) (regOne!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104522))

(assert (= (and b!4104370 ((_ is Union!12077) (regOne!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104523))

(declare-fun e!2547304 () Bool)

(assert (=> b!4104370 (= tp!1244042 e!2547304)))

(declare-fun b!4104526 () Bool)

(declare-fun tp!1244177 () Bool)

(assert (=> b!4104526 (= e!2547304 tp!1244177)))

(declare-fun b!4104524 () Bool)

(assert (=> b!4104524 (= e!2547304 tp_is_empty!21125)))

(declare-fun b!4104525 () Bool)

(declare-fun tp!1244178 () Bool)

(declare-fun tp!1244174 () Bool)

(assert (=> b!4104525 (= e!2547304 (and tp!1244178 tp!1244174))))

(declare-fun b!4104527 () Bool)

(declare-fun tp!1244176 () Bool)

(declare-fun tp!1244175 () Bool)

(assert (=> b!4104527 (= e!2547304 (and tp!1244176 tp!1244175))))

(assert (= (and b!4104370 ((_ is ElementMatch!12077) (regTwo!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104524))

(assert (= (and b!4104370 ((_ is Concat!19479) (regTwo!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104525))

(assert (= (and b!4104370 ((_ is Star!12077) (regTwo!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104526))

(assert (= (and b!4104370 ((_ is Union!12077) (regTwo!24667 (regOne!24667 (regex!7172 rHead!24))))) b!4104527))

(declare-fun e!2547305 () Bool)

(assert (=> b!4104361 (= tp!1244034 e!2547305)))

(declare-fun b!4104530 () Bool)

(declare-fun tp!1244182 () Bool)

(assert (=> b!4104530 (= e!2547305 tp!1244182)))

(declare-fun b!4104528 () Bool)

(assert (=> b!4104528 (= e!2547305 tp_is_empty!21125)))

(declare-fun b!4104529 () Bool)

(declare-fun tp!1244183 () Bool)

(declare-fun tp!1244179 () Bool)

(assert (=> b!4104529 (= e!2547305 (and tp!1244183 tp!1244179))))

(declare-fun b!4104531 () Bool)

(declare-fun tp!1244181 () Bool)

(declare-fun tp!1244180 () Bool)

(assert (=> b!4104531 (= e!2547305 (and tp!1244181 tp!1244180))))

(assert (= (and b!4104361 ((_ is ElementMatch!12077) (reg!12406 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104528))

(assert (= (and b!4104361 ((_ is Concat!19479) (reg!12406 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104529))

(assert (= (and b!4104361 ((_ is Star!12077) (reg!12406 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104530))

(assert (= (and b!4104361 ((_ is Union!12077) (reg!12406 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104531))

(declare-fun e!2547306 () Bool)

(assert (=> b!4104360 (= tp!1244035 e!2547306)))

(declare-fun b!4104534 () Bool)

(declare-fun tp!1244187 () Bool)

(assert (=> b!4104534 (= e!2547306 tp!1244187)))

(declare-fun b!4104532 () Bool)

(assert (=> b!4104532 (= e!2547306 tp_is_empty!21125)))

(declare-fun b!4104533 () Bool)

(declare-fun tp!1244188 () Bool)

(declare-fun tp!1244184 () Bool)

(assert (=> b!4104533 (= e!2547306 (and tp!1244188 tp!1244184))))

(declare-fun b!4104535 () Bool)

(declare-fun tp!1244186 () Bool)

(declare-fun tp!1244185 () Bool)

(assert (=> b!4104535 (= e!2547306 (and tp!1244186 tp!1244185))))

(assert (= (and b!4104360 ((_ is ElementMatch!12077) (regOne!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104532))

(assert (= (and b!4104360 ((_ is Concat!19479) (regOne!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104533))

(assert (= (and b!4104360 ((_ is Star!12077) (regOne!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104534))

(assert (= (and b!4104360 ((_ is Union!12077) (regOne!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104535))

(declare-fun e!2547307 () Bool)

(assert (=> b!4104360 (= tp!1244031 e!2547307)))

(declare-fun b!4104538 () Bool)

(declare-fun tp!1244192 () Bool)

(assert (=> b!4104538 (= e!2547307 tp!1244192)))

(declare-fun b!4104536 () Bool)

(assert (=> b!4104536 (= e!2547307 tp_is_empty!21125)))

(declare-fun b!4104537 () Bool)

(declare-fun tp!1244193 () Bool)

(declare-fun tp!1244189 () Bool)

(assert (=> b!4104537 (= e!2547307 (and tp!1244193 tp!1244189))))

(declare-fun b!4104539 () Bool)

(declare-fun tp!1244191 () Bool)

(declare-fun tp!1244190 () Bool)

(assert (=> b!4104539 (= e!2547307 (and tp!1244191 tp!1244190))))

(assert (= (and b!4104360 ((_ is ElementMatch!12077) (regTwo!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104536))

(assert (= (and b!4104360 ((_ is Concat!19479) (regTwo!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104537))

(assert (= (and b!4104360 ((_ is Star!12077) (regTwo!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104538))

(assert (= (and b!4104360 ((_ is Union!12077) (regTwo!24666 (regTwo!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104539))

(declare-fun e!2547308 () Bool)

(assert (=> b!4104395 (= tp!1244079 e!2547308)))

(declare-fun b!4104542 () Bool)

(declare-fun tp!1244197 () Bool)

(assert (=> b!4104542 (= e!2547308 tp!1244197)))

(declare-fun b!4104540 () Bool)

(assert (=> b!4104540 (= e!2547308 tp_is_empty!21125)))

(declare-fun b!4104541 () Bool)

(declare-fun tp!1244198 () Bool)

(declare-fun tp!1244194 () Bool)

(assert (=> b!4104541 (= e!2547308 (and tp!1244198 tp!1244194))))

(declare-fun b!4104543 () Bool)

(declare-fun tp!1244196 () Bool)

(declare-fun tp!1244195 () Bool)

(assert (=> b!4104543 (= e!2547308 (and tp!1244196 tp!1244195))))

(assert (= (and b!4104395 ((_ is ElementMatch!12077) (regOne!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104540))

(assert (= (and b!4104395 ((_ is Concat!19479) (regOne!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104541))

(assert (= (and b!4104395 ((_ is Star!12077) (regOne!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104542))

(assert (= (and b!4104395 ((_ is Union!12077) (regOne!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104543))

(declare-fun e!2547309 () Bool)

(assert (=> b!4104395 (= tp!1244075 e!2547309)))

(declare-fun b!4104546 () Bool)

(declare-fun tp!1244202 () Bool)

(assert (=> b!4104546 (= e!2547309 tp!1244202)))

(declare-fun b!4104544 () Bool)

(assert (=> b!4104544 (= e!2547309 tp_is_empty!21125)))

(declare-fun b!4104545 () Bool)

(declare-fun tp!1244203 () Bool)

(declare-fun tp!1244199 () Bool)

(assert (=> b!4104545 (= e!2547309 (and tp!1244203 tp!1244199))))

(declare-fun b!4104547 () Bool)

(declare-fun tp!1244201 () Bool)

(declare-fun tp!1244200 () Bool)

(assert (=> b!4104547 (= e!2547309 (and tp!1244201 tp!1244200))))

(assert (= (and b!4104395 ((_ is ElementMatch!12077) (regTwo!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104544))

(assert (= (and b!4104395 ((_ is Concat!19479) (regTwo!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104545))

(assert (= (and b!4104395 ((_ is Star!12077) (regTwo!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104546))

(assert (= (and b!4104395 ((_ is Union!12077) (regTwo!24666 (regOne!24666 (regex!7172 rHead!24))))) b!4104547))

(declare-fun e!2547310 () Bool)

(assert (=> b!4104389 (= tp!1244067 e!2547310)))

(declare-fun b!4104550 () Bool)

(declare-fun tp!1244207 () Bool)

(assert (=> b!4104550 (= e!2547310 tp!1244207)))

(declare-fun b!4104548 () Bool)

(assert (=> b!4104548 (= e!2547310 tp_is_empty!21125)))

(declare-fun b!4104549 () Bool)

(declare-fun tp!1244208 () Bool)

(declare-fun tp!1244204 () Bool)

(assert (=> b!4104549 (= e!2547310 (and tp!1244208 tp!1244204))))

(declare-fun b!4104551 () Bool)

(declare-fun tp!1244206 () Bool)

(declare-fun tp!1244205 () Bool)

(assert (=> b!4104551 (= e!2547310 (and tp!1244206 tp!1244205))))

(assert (= (and b!4104389 ((_ is ElementMatch!12077) (regOne!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104548))

(assert (= (and b!4104389 ((_ is Concat!19479) (regOne!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104549))

(assert (= (and b!4104389 ((_ is Star!12077) (regOne!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104550))

(assert (= (and b!4104389 ((_ is Union!12077) (regOne!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104551))

(declare-fun e!2547311 () Bool)

(assert (=> b!4104389 (= tp!1244066 e!2547311)))

(declare-fun b!4104554 () Bool)

(declare-fun tp!1244212 () Bool)

(assert (=> b!4104554 (= e!2547311 tp!1244212)))

(declare-fun b!4104552 () Bool)

(assert (=> b!4104552 (= e!2547311 tp_is_empty!21125)))

(declare-fun b!4104553 () Bool)

(declare-fun tp!1244213 () Bool)

(declare-fun tp!1244209 () Bool)

(assert (=> b!4104553 (= e!2547311 (and tp!1244213 tp!1244209))))

(declare-fun b!4104555 () Bool)

(declare-fun tp!1244211 () Bool)

(declare-fun tp!1244210 () Bool)

(assert (=> b!4104555 (= e!2547311 (and tp!1244211 tp!1244210))))

(assert (= (and b!4104389 ((_ is ElementMatch!12077) (regTwo!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104552))

(assert (= (and b!4104389 ((_ is Concat!19479) (regTwo!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104553))

(assert (= (and b!4104389 ((_ is Star!12077) (regTwo!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104554))

(assert (= (and b!4104389 ((_ is Union!12077) (regTwo!24667 (reg!12406 (regex!7172 rHead!24))))) b!4104555))

(declare-fun e!2547312 () Bool)

(assert (=> b!4104388 (= tp!1244068 e!2547312)))

(declare-fun b!4104558 () Bool)

(declare-fun tp!1244217 () Bool)

(assert (=> b!4104558 (= e!2547312 tp!1244217)))

(declare-fun b!4104556 () Bool)

(assert (=> b!4104556 (= e!2547312 tp_is_empty!21125)))

(declare-fun b!4104557 () Bool)

(declare-fun tp!1244218 () Bool)

(declare-fun tp!1244214 () Bool)

(assert (=> b!4104557 (= e!2547312 (and tp!1244218 tp!1244214))))

(declare-fun b!4104559 () Bool)

(declare-fun tp!1244216 () Bool)

(declare-fun tp!1244215 () Bool)

(assert (=> b!4104559 (= e!2547312 (and tp!1244216 tp!1244215))))

(assert (= (and b!4104388 ((_ is ElementMatch!12077) (reg!12406 (reg!12406 (regex!7172 rHead!24))))) b!4104556))

(assert (= (and b!4104388 ((_ is Concat!19479) (reg!12406 (reg!12406 (regex!7172 rHead!24))))) b!4104557))

(assert (= (and b!4104388 ((_ is Star!12077) (reg!12406 (reg!12406 (regex!7172 rHead!24))))) b!4104558))

(assert (= (and b!4104388 ((_ is Union!12077) (reg!12406 (reg!12406 (regex!7172 rHead!24))))) b!4104559))

(declare-fun e!2547313 () Bool)

(assert (=> b!4104380 (= tp!1244060 e!2547313)))

(declare-fun b!4104562 () Bool)

(declare-fun tp!1244222 () Bool)

(assert (=> b!4104562 (= e!2547313 tp!1244222)))

(declare-fun b!4104560 () Bool)

(assert (=> b!4104560 (= e!2547313 tp_is_empty!21125)))

(declare-fun b!4104561 () Bool)

(declare-fun tp!1244223 () Bool)

(declare-fun tp!1244219 () Bool)

(assert (=> b!4104561 (= e!2547313 (and tp!1244223 tp!1244219))))

(declare-fun b!4104563 () Bool)

(declare-fun tp!1244221 () Bool)

(declare-fun tp!1244220 () Bool)

(assert (=> b!4104563 (= e!2547313 (and tp!1244221 tp!1244220))))

(assert (= (and b!4104380 ((_ is ElementMatch!12077) (regOne!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104560))

(assert (= (and b!4104380 ((_ is Concat!19479) (regOne!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104561))

(assert (= (and b!4104380 ((_ is Star!12077) (regOne!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104562))

(assert (= (and b!4104380 ((_ is Union!12077) (regOne!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104563))

(declare-fun e!2547314 () Bool)

(assert (=> b!4104380 (= tp!1244056 e!2547314)))

(declare-fun b!4104566 () Bool)

(declare-fun tp!1244227 () Bool)

(assert (=> b!4104566 (= e!2547314 tp!1244227)))

(declare-fun b!4104564 () Bool)

(assert (=> b!4104564 (= e!2547314 tp_is_empty!21125)))

(declare-fun b!4104565 () Bool)

(declare-fun tp!1244228 () Bool)

(declare-fun tp!1244224 () Bool)

(assert (=> b!4104565 (= e!2547314 (and tp!1244228 tp!1244224))))

(declare-fun b!4104567 () Bool)

(declare-fun tp!1244226 () Bool)

(declare-fun tp!1244225 () Bool)

(assert (=> b!4104567 (= e!2547314 (and tp!1244226 tp!1244225))))

(assert (= (and b!4104380 ((_ is ElementMatch!12077) (regTwo!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104564))

(assert (= (and b!4104380 ((_ is Concat!19479) (regTwo!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104565))

(assert (= (and b!4104380 ((_ is Star!12077) (regTwo!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104566))

(assert (= (and b!4104380 ((_ is Union!12077) (regTwo!24666 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104567))

(declare-fun e!2547315 () Bool)

(assert (=> b!4104364 (= tp!1244040 e!2547315)))

(declare-fun b!4104570 () Bool)

(declare-fun tp!1244232 () Bool)

(assert (=> b!4104570 (= e!2547315 tp!1244232)))

(declare-fun b!4104568 () Bool)

(assert (=> b!4104568 (= e!2547315 tp_is_empty!21125)))

(declare-fun b!4104569 () Bool)

(declare-fun tp!1244233 () Bool)

(declare-fun tp!1244229 () Bool)

(assert (=> b!4104569 (= e!2547315 (and tp!1244233 tp!1244229))))

(declare-fun b!4104571 () Bool)

(declare-fun tp!1244231 () Bool)

(declare-fun tp!1244230 () Bool)

(assert (=> b!4104571 (= e!2547315 (and tp!1244231 tp!1244230))))

(assert (= (and b!4104364 ((_ is ElementMatch!12077) (regOne!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104568))

(assert (= (and b!4104364 ((_ is Concat!19479) (regOne!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104569))

(assert (= (and b!4104364 ((_ is Star!12077) (regOne!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104570))

(assert (= (and b!4104364 ((_ is Union!12077) (regOne!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104571))

(declare-fun e!2547316 () Bool)

(assert (=> b!4104364 (= tp!1244036 e!2547316)))

(declare-fun b!4104574 () Bool)

(declare-fun tp!1244237 () Bool)

(assert (=> b!4104574 (= e!2547316 tp!1244237)))

(declare-fun b!4104572 () Bool)

(assert (=> b!4104572 (= e!2547316 tp_is_empty!21125)))

(declare-fun b!4104573 () Bool)

(declare-fun tp!1244238 () Bool)

(declare-fun tp!1244234 () Bool)

(assert (=> b!4104573 (= e!2547316 (and tp!1244238 tp!1244234))))

(declare-fun b!4104575 () Bool)

(declare-fun tp!1244236 () Bool)

(declare-fun tp!1244235 () Bool)

(assert (=> b!4104575 (= e!2547316 (and tp!1244236 tp!1244235))))

(assert (= (and b!4104364 ((_ is ElementMatch!12077) (regTwo!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104572))

(assert (= (and b!4104364 ((_ is Concat!19479) (regTwo!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104573))

(assert (= (and b!4104364 ((_ is Star!12077) (regTwo!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104574))

(assert (= (and b!4104364 ((_ is Union!12077) (regTwo!24666 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104575))

(declare-fun e!2547317 () Bool)

(assert (=> b!4104399 (= tp!1244084 e!2547317)))

(declare-fun b!4104578 () Bool)

(declare-fun tp!1244242 () Bool)

(assert (=> b!4104578 (= e!2547317 tp!1244242)))

(declare-fun b!4104576 () Bool)

(assert (=> b!4104576 (= e!2547317 tp_is_empty!21125)))

(declare-fun b!4104577 () Bool)

(declare-fun tp!1244243 () Bool)

(declare-fun tp!1244239 () Bool)

(assert (=> b!4104577 (= e!2547317 (and tp!1244243 tp!1244239))))

(declare-fun b!4104579 () Bool)

(declare-fun tp!1244241 () Bool)

(declare-fun tp!1244240 () Bool)

(assert (=> b!4104579 (= e!2547317 (and tp!1244241 tp!1244240))))

(assert (= (and b!4104399 ((_ is ElementMatch!12077) (regOne!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104576))

(assert (= (and b!4104399 ((_ is Concat!19479) (regOne!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104577))

(assert (= (and b!4104399 ((_ is Star!12077) (regOne!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104578))

(assert (= (and b!4104399 ((_ is Union!12077) (regOne!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104579))

(declare-fun e!2547318 () Bool)

(assert (=> b!4104399 (= tp!1244080 e!2547318)))

(declare-fun b!4104582 () Bool)

(declare-fun tp!1244247 () Bool)

(assert (=> b!4104582 (= e!2547318 tp!1244247)))

(declare-fun b!4104580 () Bool)

(assert (=> b!4104580 (= e!2547318 tp_is_empty!21125)))

(declare-fun b!4104581 () Bool)

(declare-fun tp!1244248 () Bool)

(declare-fun tp!1244244 () Bool)

(assert (=> b!4104581 (= e!2547318 (and tp!1244248 tp!1244244))))

(declare-fun b!4104583 () Bool)

(declare-fun tp!1244246 () Bool)

(declare-fun tp!1244245 () Bool)

(assert (=> b!4104583 (= e!2547318 (and tp!1244246 tp!1244245))))

(assert (= (and b!4104399 ((_ is ElementMatch!12077) (regTwo!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104580))

(assert (= (and b!4104399 ((_ is Concat!19479) (regTwo!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104581))

(assert (= (and b!4104399 ((_ is Star!12077) (regTwo!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104582))

(assert (= (and b!4104399 ((_ is Union!12077) (regTwo!24666 (regTwo!24666 (regex!7172 rHead!24))))) b!4104583))

(declare-fun e!2547319 () Bool)

(assert (=> b!4104382 (= tp!1244058 e!2547319)))

(declare-fun b!4104586 () Bool)

(declare-fun tp!1244252 () Bool)

(assert (=> b!4104586 (= e!2547319 tp!1244252)))

(declare-fun b!4104584 () Bool)

(assert (=> b!4104584 (= e!2547319 tp_is_empty!21125)))

(declare-fun b!4104585 () Bool)

(declare-fun tp!1244253 () Bool)

(declare-fun tp!1244249 () Bool)

(assert (=> b!4104585 (= e!2547319 (and tp!1244253 tp!1244249))))

(declare-fun b!4104587 () Bool)

(declare-fun tp!1244251 () Bool)

(declare-fun tp!1244250 () Bool)

(assert (=> b!4104587 (= e!2547319 (and tp!1244251 tp!1244250))))

(assert (= (and b!4104382 ((_ is ElementMatch!12077) (regOne!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104584))

(assert (= (and b!4104382 ((_ is Concat!19479) (regOne!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104585))

(assert (= (and b!4104382 ((_ is Star!12077) (regOne!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104586))

(assert (= (and b!4104382 ((_ is Union!12077) (regOne!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104587))

(declare-fun e!2547320 () Bool)

(assert (=> b!4104382 (= tp!1244057 e!2547320)))

(declare-fun b!4104590 () Bool)

(declare-fun tp!1244257 () Bool)

(assert (=> b!4104590 (= e!2547320 tp!1244257)))

(declare-fun b!4104588 () Bool)

(assert (=> b!4104588 (= e!2547320 tp_is_empty!21125)))

(declare-fun b!4104589 () Bool)

(declare-fun tp!1244258 () Bool)

(declare-fun tp!1244254 () Bool)

(assert (=> b!4104589 (= e!2547320 (and tp!1244258 tp!1244254))))

(declare-fun b!4104591 () Bool)

(declare-fun tp!1244256 () Bool)

(declare-fun tp!1244255 () Bool)

(assert (=> b!4104591 (= e!2547320 (and tp!1244256 tp!1244255))))

(assert (= (and b!4104382 ((_ is ElementMatch!12077) (regTwo!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104588))

(assert (= (and b!4104382 ((_ is Concat!19479) (regTwo!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104589))

(assert (= (and b!4104382 ((_ is Star!12077) (regTwo!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104590))

(assert (= (and b!4104382 ((_ is Union!12077) (regTwo!24667 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104591))

(declare-fun e!2547321 () Bool)

(assert (=> b!4104373 (= tp!1244049 e!2547321)))

(declare-fun b!4104594 () Bool)

(declare-fun tp!1244262 () Bool)

(assert (=> b!4104594 (= e!2547321 tp!1244262)))

(declare-fun b!4104592 () Bool)

(assert (=> b!4104592 (= e!2547321 tp_is_empty!21125)))

(declare-fun b!4104593 () Bool)

(declare-fun tp!1244263 () Bool)

(declare-fun tp!1244259 () Bool)

(assert (=> b!4104593 (= e!2547321 (and tp!1244263 tp!1244259))))

(declare-fun b!4104595 () Bool)

(declare-fun tp!1244261 () Bool)

(declare-fun tp!1244260 () Bool)

(assert (=> b!4104595 (= e!2547321 (and tp!1244261 tp!1244260))))

(assert (= (and b!4104373 ((_ is ElementMatch!12077) (reg!12406 (regTwo!24667 (regex!7172 rHead!24))))) b!4104592))

(assert (= (and b!4104373 ((_ is Concat!19479) (reg!12406 (regTwo!24667 (regex!7172 rHead!24))))) b!4104593))

(assert (= (and b!4104373 ((_ is Star!12077) (reg!12406 (regTwo!24667 (regex!7172 rHead!24))))) b!4104594))

(assert (= (and b!4104373 ((_ is Union!12077) (reg!12406 (regTwo!24667 (regex!7172 rHead!24))))) b!4104595))

(declare-fun e!2547322 () Bool)

(assert (=> b!4104372 (= tp!1244050 e!2547322)))

(declare-fun b!4104598 () Bool)

(declare-fun tp!1244267 () Bool)

(assert (=> b!4104598 (= e!2547322 tp!1244267)))

(declare-fun b!4104596 () Bool)

(assert (=> b!4104596 (= e!2547322 tp_is_empty!21125)))

(declare-fun b!4104597 () Bool)

(declare-fun tp!1244268 () Bool)

(declare-fun tp!1244264 () Bool)

(assert (=> b!4104597 (= e!2547322 (and tp!1244268 tp!1244264))))

(declare-fun b!4104599 () Bool)

(declare-fun tp!1244266 () Bool)

(declare-fun tp!1244265 () Bool)

(assert (=> b!4104599 (= e!2547322 (and tp!1244266 tp!1244265))))

(assert (= (and b!4104372 ((_ is ElementMatch!12077) (regOne!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104596))

(assert (= (and b!4104372 ((_ is Concat!19479) (regOne!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104597))

(assert (= (and b!4104372 ((_ is Star!12077) (regOne!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104598))

(assert (= (and b!4104372 ((_ is Union!12077) (regOne!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104599))

(declare-fun e!2547323 () Bool)

(assert (=> b!4104372 (= tp!1244046 e!2547323)))

(declare-fun b!4104602 () Bool)

(declare-fun tp!1244272 () Bool)

(assert (=> b!4104602 (= e!2547323 tp!1244272)))

(declare-fun b!4104600 () Bool)

(assert (=> b!4104600 (= e!2547323 tp_is_empty!21125)))

(declare-fun b!4104601 () Bool)

(declare-fun tp!1244273 () Bool)

(declare-fun tp!1244269 () Bool)

(assert (=> b!4104601 (= e!2547323 (and tp!1244273 tp!1244269))))

(declare-fun b!4104603 () Bool)

(declare-fun tp!1244271 () Bool)

(declare-fun tp!1244270 () Bool)

(assert (=> b!4104603 (= e!2547323 (and tp!1244271 tp!1244270))))

(assert (= (and b!4104372 ((_ is ElementMatch!12077) (regTwo!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104600))

(assert (= (and b!4104372 ((_ is Concat!19479) (regTwo!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104601))

(assert (= (and b!4104372 ((_ is Star!12077) (regTwo!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104602))

(assert (= (and b!4104372 ((_ is Union!12077) (regTwo!24666 (regTwo!24667 (regex!7172 rHead!24))))) b!4104603))

(declare-fun e!2547324 () Bool)

(assert (=> b!4104381 (= tp!1244059 e!2547324)))

(declare-fun b!4104606 () Bool)

(declare-fun tp!1244277 () Bool)

(assert (=> b!4104606 (= e!2547324 tp!1244277)))

(declare-fun b!4104604 () Bool)

(assert (=> b!4104604 (= e!2547324 tp_is_empty!21125)))

(declare-fun b!4104605 () Bool)

(declare-fun tp!1244278 () Bool)

(declare-fun tp!1244274 () Bool)

(assert (=> b!4104605 (= e!2547324 (and tp!1244278 tp!1244274))))

(declare-fun b!4104607 () Bool)

(declare-fun tp!1244276 () Bool)

(declare-fun tp!1244275 () Bool)

(assert (=> b!4104607 (= e!2547324 (and tp!1244276 tp!1244275))))

(assert (= (and b!4104381 ((_ is ElementMatch!12077) (reg!12406 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104604))

(assert (= (and b!4104381 ((_ is Concat!19479) (reg!12406 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104605))

(assert (= (and b!4104381 ((_ is Star!12077) (reg!12406 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104606))

(assert (= (and b!4104381 ((_ is Union!12077) (reg!12406 (regTwo!24667 (regex!7172 (h!49586 rTail!27)))))) b!4104607))

(declare-fun e!2547325 () Bool)

(assert (=> b!4104392 (= tp!1244073 e!2547325)))

(declare-fun b!4104610 () Bool)

(declare-fun tp!1244282 () Bool)

(assert (=> b!4104610 (= e!2547325 tp!1244282)))

(declare-fun b!4104608 () Bool)

(assert (=> b!4104608 (= e!2547325 tp_is_empty!21125)))

(declare-fun b!4104609 () Bool)

(declare-fun tp!1244283 () Bool)

(declare-fun tp!1244279 () Bool)

(assert (=> b!4104609 (= e!2547325 (and tp!1244283 tp!1244279))))

(declare-fun b!4104611 () Bool)

(declare-fun tp!1244281 () Bool)

(declare-fun tp!1244280 () Bool)

(assert (=> b!4104611 (= e!2547325 (and tp!1244281 tp!1244280))))

(assert (= (and b!4104392 ((_ is ElementMatch!12077) (reg!12406 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104608))

(assert (= (and b!4104392 ((_ is Concat!19479) (reg!12406 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104609))

(assert (= (and b!4104392 ((_ is Star!12077) (reg!12406 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104610))

(assert (= (and b!4104392 ((_ is Union!12077) (reg!12406 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104611))

(declare-fun e!2547326 () Bool)

(assert (=> b!4104366 (= tp!1244038 e!2547326)))

(declare-fun b!4104614 () Bool)

(declare-fun tp!1244287 () Bool)

(assert (=> b!4104614 (= e!2547326 tp!1244287)))

(declare-fun b!4104612 () Bool)

(assert (=> b!4104612 (= e!2547326 tp_is_empty!21125)))

(declare-fun b!4104613 () Bool)

(declare-fun tp!1244288 () Bool)

(declare-fun tp!1244284 () Bool)

(assert (=> b!4104613 (= e!2547326 (and tp!1244288 tp!1244284))))

(declare-fun b!4104615 () Bool)

(declare-fun tp!1244286 () Bool)

(declare-fun tp!1244285 () Bool)

(assert (=> b!4104615 (= e!2547326 (and tp!1244286 tp!1244285))))

(assert (= (and b!4104366 ((_ is ElementMatch!12077) (regOne!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104612))

(assert (= (and b!4104366 ((_ is Concat!19479) (regOne!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104613))

(assert (= (and b!4104366 ((_ is Star!12077) (regOne!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104614))

(assert (= (and b!4104366 ((_ is Union!12077) (regOne!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104615))

(declare-fun e!2547327 () Bool)

(assert (=> b!4104366 (= tp!1244037 e!2547327)))

(declare-fun b!4104618 () Bool)

(declare-fun tp!1244292 () Bool)

(assert (=> b!4104618 (= e!2547327 tp!1244292)))

(declare-fun b!4104616 () Bool)

(assert (=> b!4104616 (= e!2547327 tp_is_empty!21125)))

(declare-fun b!4104617 () Bool)

(declare-fun tp!1244293 () Bool)

(declare-fun tp!1244289 () Bool)

(assert (=> b!4104617 (= e!2547327 (and tp!1244293 tp!1244289))))

(declare-fun b!4104619 () Bool)

(declare-fun tp!1244291 () Bool)

(declare-fun tp!1244290 () Bool)

(assert (=> b!4104619 (= e!2547327 (and tp!1244291 tp!1244290))))

(assert (= (and b!4104366 ((_ is ElementMatch!12077) (regTwo!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104616))

(assert (= (and b!4104366 ((_ is Concat!19479) (regTwo!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104617))

(assert (= (and b!4104366 ((_ is Star!12077) (regTwo!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104618))

(assert (= (and b!4104366 ((_ is Union!12077) (regTwo!24667 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104619))

(declare-fun e!2547328 () Bool)

(assert (=> b!4104357 (= tp!1244029 e!2547328)))

(declare-fun b!4104622 () Bool)

(declare-fun tp!1244297 () Bool)

(assert (=> b!4104622 (= e!2547328 tp!1244297)))

(declare-fun b!4104620 () Bool)

(assert (=> b!4104620 (= e!2547328 tp_is_empty!21125)))

(declare-fun b!4104621 () Bool)

(declare-fun tp!1244298 () Bool)

(declare-fun tp!1244294 () Bool)

(assert (=> b!4104621 (= e!2547328 (and tp!1244298 tp!1244294))))

(declare-fun b!4104623 () Bool)

(declare-fun tp!1244296 () Bool)

(declare-fun tp!1244295 () Bool)

(assert (=> b!4104623 (= e!2547328 (and tp!1244296 tp!1244295))))

(assert (= (and b!4104357 ((_ is ElementMatch!12077) (reg!12406 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104620))

(assert (= (and b!4104357 ((_ is Concat!19479) (reg!12406 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104621))

(assert (= (and b!4104357 ((_ is Star!12077) (reg!12406 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104622))

(assert (= (and b!4104357 ((_ is Union!12077) (reg!12406 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104623))

(declare-fun e!2547329 () Bool)

(assert (=> b!4104401 (= tp!1244082 e!2547329)))

(declare-fun b!4104626 () Bool)

(declare-fun tp!1244302 () Bool)

(assert (=> b!4104626 (= e!2547329 tp!1244302)))

(declare-fun b!4104624 () Bool)

(assert (=> b!4104624 (= e!2547329 tp_is_empty!21125)))

(declare-fun b!4104625 () Bool)

(declare-fun tp!1244303 () Bool)

(declare-fun tp!1244299 () Bool)

(assert (=> b!4104625 (= e!2547329 (and tp!1244303 tp!1244299))))

(declare-fun b!4104627 () Bool)

(declare-fun tp!1244301 () Bool)

(declare-fun tp!1244300 () Bool)

(assert (=> b!4104627 (= e!2547329 (and tp!1244301 tp!1244300))))

(assert (= (and b!4104401 ((_ is ElementMatch!12077) (regOne!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104624))

(assert (= (and b!4104401 ((_ is Concat!19479) (regOne!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104625))

(assert (= (and b!4104401 ((_ is Star!12077) (regOne!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104626))

(assert (= (and b!4104401 ((_ is Union!12077) (regOne!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104627))

(declare-fun e!2547330 () Bool)

(assert (=> b!4104401 (= tp!1244081 e!2547330)))

(declare-fun b!4104630 () Bool)

(declare-fun tp!1244307 () Bool)

(assert (=> b!4104630 (= e!2547330 tp!1244307)))

(declare-fun b!4104628 () Bool)

(assert (=> b!4104628 (= e!2547330 tp_is_empty!21125)))

(declare-fun b!4104629 () Bool)

(declare-fun tp!1244308 () Bool)

(declare-fun tp!1244304 () Bool)

(assert (=> b!4104629 (= e!2547330 (and tp!1244308 tp!1244304))))

(declare-fun b!4104631 () Bool)

(declare-fun tp!1244306 () Bool)

(declare-fun tp!1244305 () Bool)

(assert (=> b!4104631 (= e!2547330 (and tp!1244306 tp!1244305))))

(assert (= (and b!4104401 ((_ is ElementMatch!12077) (regTwo!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104628))

(assert (= (and b!4104401 ((_ is Concat!19479) (regTwo!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104629))

(assert (= (and b!4104401 ((_ is Star!12077) (regTwo!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104630))

(assert (= (and b!4104401 ((_ is Union!12077) (regTwo!24667 (regTwo!24666 (regex!7172 rHead!24))))) b!4104631))

(declare-fun e!2547331 () Bool)

(assert (=> b!4104356 (= tp!1244030 e!2547331)))

(declare-fun b!4104634 () Bool)

(declare-fun tp!1244312 () Bool)

(assert (=> b!4104634 (= e!2547331 tp!1244312)))

(declare-fun b!4104632 () Bool)

(assert (=> b!4104632 (= e!2547331 tp_is_empty!21125)))

(declare-fun b!4104633 () Bool)

(declare-fun tp!1244313 () Bool)

(declare-fun tp!1244309 () Bool)

(assert (=> b!4104633 (= e!2547331 (and tp!1244313 tp!1244309))))

(declare-fun b!4104635 () Bool)

(declare-fun tp!1244311 () Bool)

(declare-fun tp!1244310 () Bool)

(assert (=> b!4104635 (= e!2547331 (and tp!1244311 tp!1244310))))

(assert (= (and b!4104356 ((_ is ElementMatch!12077) (regOne!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104632))

(assert (= (and b!4104356 ((_ is Concat!19479) (regOne!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104633))

(assert (= (and b!4104356 ((_ is Star!12077) (regOne!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104634))

(assert (= (and b!4104356 ((_ is Union!12077) (regOne!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104635))

(declare-fun e!2547332 () Bool)

(assert (=> b!4104356 (= tp!1244026 e!2547332)))

(declare-fun b!4104638 () Bool)

(declare-fun tp!1244317 () Bool)

(assert (=> b!4104638 (= e!2547332 tp!1244317)))

(declare-fun b!4104636 () Bool)

(assert (=> b!4104636 (= e!2547332 tp_is_empty!21125)))

(declare-fun b!4104637 () Bool)

(declare-fun tp!1244318 () Bool)

(declare-fun tp!1244314 () Bool)

(assert (=> b!4104637 (= e!2547332 (and tp!1244318 tp!1244314))))

(declare-fun b!4104639 () Bool)

(declare-fun tp!1244316 () Bool)

(declare-fun tp!1244315 () Bool)

(assert (=> b!4104639 (= e!2547332 (and tp!1244316 tp!1244315))))

(assert (= (and b!4104356 ((_ is ElementMatch!12077) (regTwo!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104636))

(assert (= (and b!4104356 ((_ is Concat!19479) (regTwo!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104637))

(assert (= (and b!4104356 ((_ is Star!12077) (regTwo!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104638))

(assert (= (and b!4104356 ((_ is Union!12077) (regTwo!24666 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104639))

(declare-fun e!2547333 () Bool)

(assert (=> b!4104400 (= tp!1244083 e!2547333)))

(declare-fun b!4104642 () Bool)

(declare-fun tp!1244322 () Bool)

(assert (=> b!4104642 (= e!2547333 tp!1244322)))

(declare-fun b!4104640 () Bool)

(assert (=> b!4104640 (= e!2547333 tp_is_empty!21125)))

(declare-fun b!4104641 () Bool)

(declare-fun tp!1244323 () Bool)

(declare-fun tp!1244319 () Bool)

(assert (=> b!4104641 (= e!2547333 (and tp!1244323 tp!1244319))))

(declare-fun b!4104643 () Bool)

(declare-fun tp!1244321 () Bool)

(declare-fun tp!1244320 () Bool)

(assert (=> b!4104643 (= e!2547333 (and tp!1244321 tp!1244320))))

(assert (= (and b!4104400 ((_ is ElementMatch!12077) (reg!12406 (regTwo!24666 (regex!7172 rHead!24))))) b!4104640))

(assert (= (and b!4104400 ((_ is Concat!19479) (reg!12406 (regTwo!24666 (regex!7172 rHead!24))))) b!4104641))

(assert (= (and b!4104400 ((_ is Star!12077) (reg!12406 (regTwo!24666 (regex!7172 rHead!24))))) b!4104642))

(assert (= (and b!4104400 ((_ is Union!12077) (reg!12406 (regTwo!24666 (regex!7172 rHead!24))))) b!4104643))

(declare-fun e!2547334 () Bool)

(assert (=> b!4104391 (= tp!1244074 e!2547334)))

(declare-fun b!4104646 () Bool)

(declare-fun tp!1244327 () Bool)

(assert (=> b!4104646 (= e!2547334 tp!1244327)))

(declare-fun b!4104644 () Bool)

(assert (=> b!4104644 (= e!2547334 tp_is_empty!21125)))

(declare-fun b!4104645 () Bool)

(declare-fun tp!1244328 () Bool)

(declare-fun tp!1244324 () Bool)

(assert (=> b!4104645 (= e!2547334 (and tp!1244328 tp!1244324))))

(declare-fun b!4104647 () Bool)

(declare-fun tp!1244326 () Bool)

(declare-fun tp!1244325 () Bool)

(assert (=> b!4104647 (= e!2547334 (and tp!1244326 tp!1244325))))

(assert (= (and b!4104391 ((_ is ElementMatch!12077) (regOne!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104644))

(assert (= (and b!4104391 ((_ is Concat!19479) (regOne!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104645))

(assert (= (and b!4104391 ((_ is Star!12077) (regOne!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104646))

(assert (= (and b!4104391 ((_ is Union!12077) (regOne!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104647))

(declare-fun e!2547335 () Bool)

(assert (=> b!4104391 (= tp!1244070 e!2547335)))

(declare-fun b!4104650 () Bool)

(declare-fun tp!1244332 () Bool)

(assert (=> b!4104650 (= e!2547335 tp!1244332)))

(declare-fun b!4104648 () Bool)

(assert (=> b!4104648 (= e!2547335 tp_is_empty!21125)))

(declare-fun b!4104649 () Bool)

(declare-fun tp!1244333 () Bool)

(declare-fun tp!1244329 () Bool)

(assert (=> b!4104649 (= e!2547335 (and tp!1244333 tp!1244329))))

(declare-fun b!4104651 () Bool)

(declare-fun tp!1244331 () Bool)

(declare-fun tp!1244330 () Bool)

(assert (=> b!4104651 (= e!2547335 (and tp!1244331 tp!1244330))))

(assert (= (and b!4104391 ((_ is ElementMatch!12077) (regTwo!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104648))

(assert (= (and b!4104391 ((_ is Concat!19479) (regTwo!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104649))

(assert (= (and b!4104391 ((_ is Star!12077) (regTwo!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104650))

(assert (= (and b!4104391 ((_ is Union!12077) (regTwo!24666 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104651))

(declare-fun e!2547336 () Bool)

(assert (=> b!4104374 (= tp!1244048 e!2547336)))

(declare-fun b!4104654 () Bool)

(declare-fun tp!1244337 () Bool)

(assert (=> b!4104654 (= e!2547336 tp!1244337)))

(declare-fun b!4104652 () Bool)

(assert (=> b!4104652 (= e!2547336 tp_is_empty!21125)))

(declare-fun b!4104653 () Bool)

(declare-fun tp!1244338 () Bool)

(declare-fun tp!1244334 () Bool)

(assert (=> b!4104653 (= e!2547336 (and tp!1244338 tp!1244334))))

(declare-fun b!4104655 () Bool)

(declare-fun tp!1244336 () Bool)

(declare-fun tp!1244335 () Bool)

(assert (=> b!4104655 (= e!2547336 (and tp!1244336 tp!1244335))))

(assert (= (and b!4104374 ((_ is ElementMatch!12077) (regOne!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104652))

(assert (= (and b!4104374 ((_ is Concat!19479) (regOne!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104653))

(assert (= (and b!4104374 ((_ is Star!12077) (regOne!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104654))

(assert (= (and b!4104374 ((_ is Union!12077) (regOne!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104655))

(declare-fun e!2547337 () Bool)

(assert (=> b!4104374 (= tp!1244047 e!2547337)))

(declare-fun b!4104658 () Bool)

(declare-fun tp!1244342 () Bool)

(assert (=> b!4104658 (= e!2547337 tp!1244342)))

(declare-fun b!4104656 () Bool)

(assert (=> b!4104656 (= e!2547337 tp_is_empty!21125)))

(declare-fun b!4104657 () Bool)

(declare-fun tp!1244343 () Bool)

(declare-fun tp!1244339 () Bool)

(assert (=> b!4104657 (= e!2547337 (and tp!1244343 tp!1244339))))

(declare-fun b!4104659 () Bool)

(declare-fun tp!1244341 () Bool)

(declare-fun tp!1244340 () Bool)

(assert (=> b!4104659 (= e!2547337 (and tp!1244341 tp!1244340))))

(assert (= (and b!4104374 ((_ is ElementMatch!12077) (regTwo!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104656))

(assert (= (and b!4104374 ((_ is Concat!19479) (regTwo!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104657))

(assert (= (and b!4104374 ((_ is Star!12077) (regTwo!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104658))

(assert (= (and b!4104374 ((_ is Union!12077) (regTwo!24667 (regTwo!24667 (regex!7172 rHead!24))))) b!4104659))

(declare-fun e!2547338 () Bool)

(assert (=> b!4104365 (= tp!1244039 e!2547338)))

(declare-fun b!4104662 () Bool)

(declare-fun tp!1244347 () Bool)

(assert (=> b!4104662 (= e!2547338 tp!1244347)))

(declare-fun b!4104660 () Bool)

(assert (=> b!4104660 (= e!2547338 tp_is_empty!21125)))

(declare-fun b!4104661 () Bool)

(declare-fun tp!1244348 () Bool)

(declare-fun tp!1244344 () Bool)

(assert (=> b!4104661 (= e!2547338 (and tp!1244348 tp!1244344))))

(declare-fun b!4104663 () Bool)

(declare-fun tp!1244346 () Bool)

(declare-fun tp!1244345 () Bool)

(assert (=> b!4104663 (= e!2547338 (and tp!1244346 tp!1244345))))

(assert (= (and b!4104365 ((_ is ElementMatch!12077) (reg!12406 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104660))

(assert (= (and b!4104365 ((_ is Concat!19479) (reg!12406 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104661))

(assert (= (and b!4104365 ((_ is Star!12077) (reg!12406 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104662))

(assert (= (and b!4104365 ((_ is Union!12077) (reg!12406 (regex!7172 (h!49586 (t!339947 rTail!27)))))) b!4104663))

(declare-fun e!2547339 () Bool)

(assert (=> b!4104358 (= tp!1244028 e!2547339)))

(declare-fun b!4104666 () Bool)

(declare-fun tp!1244352 () Bool)

(assert (=> b!4104666 (= e!2547339 tp!1244352)))

(declare-fun b!4104664 () Bool)

(assert (=> b!4104664 (= e!2547339 tp_is_empty!21125)))

(declare-fun b!4104665 () Bool)

(declare-fun tp!1244353 () Bool)

(declare-fun tp!1244349 () Bool)

(assert (=> b!4104665 (= e!2547339 (and tp!1244353 tp!1244349))))

(declare-fun b!4104667 () Bool)

(declare-fun tp!1244351 () Bool)

(declare-fun tp!1244350 () Bool)

(assert (=> b!4104667 (= e!2547339 (and tp!1244351 tp!1244350))))

(assert (= (and b!4104358 ((_ is ElementMatch!12077) (regOne!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104664))

(assert (= (and b!4104358 ((_ is Concat!19479) (regOne!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104665))

(assert (= (and b!4104358 ((_ is Star!12077) (regOne!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104666))

(assert (= (and b!4104358 ((_ is Union!12077) (regOne!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104667))

(declare-fun e!2547340 () Bool)

(assert (=> b!4104358 (= tp!1244027 e!2547340)))

(declare-fun b!4104670 () Bool)

(declare-fun tp!1244357 () Bool)

(assert (=> b!4104670 (= e!2547340 tp!1244357)))

(declare-fun b!4104668 () Bool)

(assert (=> b!4104668 (= e!2547340 tp_is_empty!21125)))

(declare-fun b!4104669 () Bool)

(declare-fun tp!1244358 () Bool)

(declare-fun tp!1244354 () Bool)

(assert (=> b!4104669 (= e!2547340 (and tp!1244358 tp!1244354))))

(declare-fun b!4104671 () Bool)

(declare-fun tp!1244356 () Bool)

(declare-fun tp!1244355 () Bool)

(assert (=> b!4104671 (= e!2547340 (and tp!1244356 tp!1244355))))

(assert (= (and b!4104358 ((_ is ElementMatch!12077) (regTwo!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104668))

(assert (= (and b!4104358 ((_ is Concat!19479) (regTwo!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104669))

(assert (= (and b!4104358 ((_ is Star!12077) (regTwo!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104670))

(assert (= (and b!4104358 ((_ is Union!12077) (regTwo!24667 (regOne!24666 (regex!7172 (h!49586 rTail!27)))))) b!4104671))

(declare-fun e!2547341 () Bool)

(assert (=> b!4104393 (= tp!1244072 e!2547341)))

(declare-fun b!4104674 () Bool)

(declare-fun tp!1244362 () Bool)

(assert (=> b!4104674 (= e!2547341 tp!1244362)))

(declare-fun b!4104672 () Bool)

(assert (=> b!4104672 (= e!2547341 tp_is_empty!21125)))

(declare-fun b!4104673 () Bool)

(declare-fun tp!1244363 () Bool)

(declare-fun tp!1244359 () Bool)

(assert (=> b!4104673 (= e!2547341 (and tp!1244363 tp!1244359))))

(declare-fun b!4104675 () Bool)

(declare-fun tp!1244361 () Bool)

(declare-fun tp!1244360 () Bool)

(assert (=> b!4104675 (= e!2547341 (and tp!1244361 tp!1244360))))

(assert (= (and b!4104393 ((_ is ElementMatch!12077) (regOne!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104672))

(assert (= (and b!4104393 ((_ is Concat!19479) (regOne!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104673))

(assert (= (and b!4104393 ((_ is Star!12077) (regOne!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104674))

(assert (= (and b!4104393 ((_ is Union!12077) (regOne!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104675))

(declare-fun e!2547342 () Bool)

(assert (=> b!4104393 (= tp!1244071 e!2547342)))

(declare-fun b!4104678 () Bool)

(declare-fun tp!1244367 () Bool)

(assert (=> b!4104678 (= e!2547342 tp!1244367)))

(declare-fun b!4104676 () Bool)

(assert (=> b!4104676 (= e!2547342 tp_is_empty!21125)))

(declare-fun b!4104677 () Bool)

(declare-fun tp!1244368 () Bool)

(declare-fun tp!1244364 () Bool)

(assert (=> b!4104677 (= e!2547342 (and tp!1244368 tp!1244364))))

(declare-fun b!4104679 () Bool)

(declare-fun tp!1244366 () Bool)

(declare-fun tp!1244365 () Bool)

(assert (=> b!4104679 (= e!2547342 (and tp!1244366 tp!1244365))))

(assert (= (and b!4104393 ((_ is ElementMatch!12077) (regTwo!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104676))

(assert (= (and b!4104393 ((_ is Concat!19479) (regTwo!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104677))

(assert (= (and b!4104393 ((_ is Star!12077) (regTwo!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104678))

(assert (= (and b!4104393 ((_ is Union!12077) (regTwo!24667 (reg!12406 (regex!7172 (h!49586 rTail!27)))))) b!4104679))

(declare-fun b_lambda!120553 () Bool)

(assert (= b_lambda!120551 (or d!1218317 b_lambda!120553)))

(declare-fun bs!594026 () Bool)

(declare-fun d!1218427 () Bool)

(assert (= bs!594026 (and d!1218427 d!1218317)))

(assert (=> bs!594026 (= (dynLambda!18898 lambda!128313 (h!49586 lt!1467380)) (ruleValid!3048 thiss!26455 (h!49586 lt!1467380)))))

(assert (=> bs!594026 m!4709931))

(assert (=> b!4104418 d!1218427))

(check-sat (not b!4104670) (not b_next!115919) (not b!4104587) (not b!4104545) (not b!4104527) (not b!4104558) (not b!4104537) (not b!4104557) (not b!4104645) (not b!4104412) (not b!4104490) (not b!4104485) (not b!4104465) (not b!4104514) b_and!317019 (not b!4104674) (not b!4104533) tp_is_empty!21125 (not b!4104626) (not b!4104575) (not b!4104671) (not d!1218383) (not b!4104530) b_and!317035 (not b!4104677) b_and!317027 (not d!1218413) (not b!4104505) (not b!4104623) (not b!4104578) (not d!1218417) (not b!4104566) (not b!4104475) (not b!4104444) (not b!4104413) (not b!4104658) (not bs!594026) (not b!4104423) (not d!1218373) (not b!4104459) (not b!4104667) (not b!4104467) (not b!4104665) (not b!4104573) (not b!4104481) (not b!4104593) (not b!4104510) (not b!4104448) (not b!4104581) (not b!4104561) b_and!317041 (not b!4104637) (not b!4104421) (not b!4104452) (not b!4104473) (not b!4104654) (not b!4104471) (not b!4104498) (not b!4104666) (not b!4104622) (not b!4104661) (not b!4104673) (not b!4104403) (not b!4104551) (not b!4104503) (not b!4104432) (not b!4104611) b_and!317029 (not b!4104531) (not b!4104589) (not b!4104494) (not b!4104663) (not b!4104458) (not b!4104662) (not b!4104583) (not b!4104655) (not b!4104511) (not b!4104546) (not d!1218421) (not b!4104547) (not d!1218377) (not b!4104442) b_and!317021 (not b!4104586) (not b!4104659) (not b!4104521) (not b!4104434) (not b!4104451) (not b!4104607) (not b!4104427) (not b!4104502) (not b!4104522) (not b!4104469) (not b!4104541) (not b!4104601) (not b!4104542) (not b!4104529) (not b!4104617) b_and!317037 b_and!317017 (not b!4104482) (not b!4104523) (not b!4104518) (not b!4104606) (not b!4104422) (not b!4104539) (not b!4104574) (not b!4104619) (not b!4104629) (not b!4104474) (not b!4104638) (not d!1218407) (not b!4104493) (not b!4104618) (not b!4104553) (not d!1218391) (not b!4104419) (not b!4104535) (not b!4104457) (not b_next!115929) (not b!4104491) (not d!1218393) (not b!4104513) (not b!4104570) (not b!4104406) (not b!4104466) (not b!4104585) (not b!4104463) (not b!4104643) (not b!4104461) (not d!1218403) (not b!4104634) (not b!4104603) (not b!4104534) (not b!4104669) (not b!4104489) (not b!4104554) (not b!4104430) (not b!4104591) (not b!4104477) (not b!4104555) (not b_next!115925) (not b!4104650) (not b!4104590) (not b!4104517) (not b!4104441) (not b!4104635) (not b!4104420) (not b!4104515) (not b!4104446) (not b!4104602) (not b!4104550) (not b!4104641) (not b!4104499) b_and!317039 (not b!4104609) (not d!1218389) (not b!4104613) (not b!4104605) (not b!4104646) (not b!4104450) (not b!4104543) (not b!4104657) (not b!4104625) (not b!4104559) (not b!4104470) (not b_next!115911) (not b!4104497) (not b!4104610) (not d!1218395) (not b!4104679) (not b!4104598) (not b_next!115917) (not b!4104615) (not b!4104567) (not b!4104595) (not b!4104454) (not b!4104630) (not b!4104519) (not b!4104631) (not b!4104509) (not b!4104563) (not b!4104487) (not b!4104675) (not b!4104562) (not b!4104614) (not b_lambda!120553) (not b_next!115907) (not b!4104440) (not b!4104549) (not b!4104633) (not b!4104621) (not b!4104525) (not b!4104639) (not b_next!115931) (not d!1218399) (not b!4104653) (not b!4104678) (not b!4104577) (not b!4104649) (not b!4104501) (not b!4104507) (not b_next!115927) (not b!4104642) (not b_next!115909) (not b!4104582) (not b!4104486) (not b!4104462) (not b!4104526) (not d!1218415) (not b!4104424) (not b!4104647) (not b!4104579) (not b!4104594) (not b!4104565) (not b!4104479) (not b!4104627) (not d!1218375) (not b!4104597) (not b!4104599) (not b!4104478) (not b!4104483) b_and!317015 (not b!4104569) (not b!4104495) (not b_next!115905) (not b!4104506) (not d!1218419) (not d!1218405) (not b!4104571) (not b!4104538) (not b!4104651) (not b!4104453))
(check-sat (not b_next!115919) b_and!317019 b_and!317041 b_and!317029 b_and!317021 (not b_next!115929) (not b_next!115925) b_and!317039 (not b_next!115907) (not b_next!115931) b_and!317015 (not b_next!115905) b_and!317035 b_and!317027 b_and!317037 b_and!317017 (not b_next!115911) (not b_next!115917) (not b_next!115927) (not b_next!115909))

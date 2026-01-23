; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407506 () Bool)

(assert start!407506)

(declare-fun b!4254771 () Bool)

(declare-fun b_free!126627 () Bool)

(declare-fun b_next!127331 () Bool)

(assert (=> b!4254771 (= b_free!126627 (not b_next!127331))))

(declare-fun tp!1305950 () Bool)

(declare-fun b_and!337453 () Bool)

(assert (=> b!4254771 (= tp!1305950 b_and!337453)))

(declare-fun b_free!126629 () Bool)

(declare-fun b_next!127333 () Bool)

(assert (=> b!4254771 (= b_free!126629 (not b_next!127333))))

(declare-fun tp!1305940 () Bool)

(declare-fun b_and!337455 () Bool)

(assert (=> b!4254771 (= tp!1305940 b_and!337455)))

(declare-fun b!4254763 () Bool)

(declare-fun b_free!126631 () Bool)

(declare-fun b_next!127335 () Bool)

(assert (=> b!4254763 (= b_free!126631 (not b_next!127335))))

(declare-fun tp!1305949 () Bool)

(declare-fun b_and!337457 () Bool)

(assert (=> b!4254763 (= tp!1305949 b_and!337457)))

(declare-fun b_free!126633 () Bool)

(declare-fun b_next!127337 () Bool)

(assert (=> b!4254763 (= b_free!126633 (not b_next!127337))))

(declare-fun tp!1305945 () Bool)

(declare-fun b_and!337459 () Bool)

(assert (=> b!4254763 (= tp!1305945 b_and!337459)))

(declare-fun e!2642850 () Bool)

(assert (=> b!4254763 (= e!2642850 (and tp!1305949 tp!1305945))))

(declare-fun b!4254764 () Bool)

(declare-fun e!2642858 () Bool)

(declare-datatypes ((List!47304 0))(
  ( (Nil!47180) (Cons!47180 (h!52600 (_ BitVec 16)) (t!352831 List!47304)) )
))
(declare-datatypes ((TokenValue!8220 0))(
  ( (FloatLiteralValue!16440 (text!57985 List!47304)) (TokenValueExt!8219 (__x!28663 Int)) (Broken!41100 (value!248225 List!47304)) (Object!8343) (End!8220) (Def!8220) (Underscore!8220) (Match!8220) (Else!8220) (Error!8220) (Case!8220) (If!8220) (Extends!8220) (Abstract!8220) (Class!8220) (Val!8220) (DelimiterValue!16440 (del!8280 List!47304)) (KeywordValue!8226 (value!248226 List!47304)) (CommentValue!16440 (value!248227 List!47304)) (WhitespaceValue!16440 (value!248228 List!47304)) (IndentationValue!8220 (value!248229 List!47304)) (String!55029) (Int32!8220) (Broken!41101 (value!248230 List!47304)) (Boolean!8221) (Unit!66110) (OperatorValue!8223 (op!8280 List!47304)) (IdentifierValue!16440 (value!248231 List!47304)) (IdentifierValue!16441 (value!248232 List!47304)) (WhitespaceValue!16441 (value!248233 List!47304)) (True!16440) (False!16440) (Broken!41102 (value!248234 List!47304)) (Broken!41103 (value!248235 List!47304)) (True!16441) (RightBrace!8220) (RightBracket!8220) (Colon!8220) (Null!8220) (Comma!8220) (LeftBracket!8220) (False!16441) (LeftBrace!8220) (ImaginaryLiteralValue!8220 (text!57986 List!47304)) (StringLiteralValue!24660 (value!248236 List!47304)) (EOFValue!8220 (value!248237 List!47304)) (IdentValue!8220 (value!248238 List!47304)) (DelimiterValue!16441 (value!248239 List!47304)) (DedentValue!8220 (value!248240 List!47304)) (NewLineValue!8220 (value!248241 List!47304)) (IntegerValue!24660 (value!248242 (_ BitVec 32)) (text!57987 List!47304)) (IntegerValue!24661 (value!248243 Int) (text!57988 List!47304)) (Times!8220) (Or!8220) (Equal!8220) (Minus!8220) (Broken!41104 (value!248244 List!47304)) (And!8220) (Div!8220) (LessEqual!8220) (Mod!8220) (Concat!21115) (Not!8220) (Plus!8220) (SpaceValue!8220 (value!248245 List!47304)) (IntegerValue!24662 (value!248246 Int) (text!57989 List!47304)) (StringLiteralValue!24661 (text!57990 List!47304)) (FloatLiteralValue!16441 (text!57991 List!47304)) (BytesLiteralValue!8220 (value!248247 List!47304)) (CommentValue!16441 (value!248248 List!47304)) (StringLiteralValue!24662 (value!248249 List!47304)) (ErrorTokenValue!8220 (msg!8281 List!47304)) )
))
(declare-datatypes ((C!25988 0))(
  ( (C!25989 (val!15184 Int)) )
))
(declare-datatypes ((List!47305 0))(
  ( (Nil!47181) (Cons!47181 (h!52601 C!25988) (t!352832 List!47305)) )
))
(declare-datatypes ((IArray!28407 0))(
  ( (IArray!28408 (innerList!14261 List!47305)) )
))
(declare-datatypes ((Conc!14201 0))(
  ( (Node!14201 (left!34962 Conc!14201) (right!35292 Conc!14201) (csize!28632 Int) (cheight!14412 Int)) (Leaf!21955 (xs!17507 IArray!28407) (csize!28633 Int)) (Empty!14201) )
))
(declare-datatypes ((BalanceConc!27996 0))(
  ( (BalanceConc!27997 (c!722374 Conc!14201)) )
))
(declare-datatypes ((TokenValueInjection!15868 0))(
  ( (TokenValueInjection!15869 (toValue!10766 Int) (toChars!10625 Int)) )
))
(declare-datatypes ((String!55030 0))(
  ( (String!55031 (value!248250 String)) )
))
(declare-datatypes ((Regex!12895 0))(
  ( (ElementMatch!12895 (c!722375 C!25988)) (Concat!21116 (regOne!26302 Regex!12895) (regTwo!26302 Regex!12895)) (EmptyExpr!12895) (Star!12895 (reg!13224 Regex!12895)) (EmptyLang!12895) (Union!12895 (regOne!26303 Regex!12895) (regTwo!26303 Regex!12895)) )
))
(declare-datatypes ((Rule!15780 0))(
  ( (Rule!15781 (regex!7990 Regex!12895) (tag!8854 String!55030) (isSeparator!7990 Bool) (transformation!7990 TokenValueInjection!15868)) )
))
(declare-datatypes ((Token!14606 0))(
  ( (Token!14607 (value!248251 TokenValue!8220) (rule!11126 Rule!15780) (size!34529 Int) (originalCharacters!8334 List!47305)) )
))
(declare-datatypes ((tuple2!44730 0))(
  ( (tuple2!44731 (_1!25499 Token!14606) (_2!25499 List!47305)) )
))
(declare-datatypes ((Option!10124 0))(
  ( (None!10123) (Some!10123 (v!41083 tuple2!44730)) )
))
(declare-fun lt!1509559 () Option!10124)

(declare-fun lt!1509560 () Option!10124)

(get-info :version)

(assert (=> b!4254764 (= e!2642858 (and (or (not ((_ is Some!10123) lt!1509559)) (not ((_ is Some!10123) lt!1509560))) (or (not ((_ is Some!10123) lt!1509559)) (not ((_ is None!10123) lt!1509560))) (or (not ((_ is None!10123) lt!1509559)) (not ((_ is Some!10123) lt!1509560))) (or (not ((_ is None!10123) lt!1509559)) (not ((_ is None!10123) lt!1509560)))))))

(declare-datatypes ((LexerInterface!7585 0))(
  ( (LexerInterfaceExt!7582 (__x!28664 Int)) (Lexer!7583) )
))
(declare-fun thiss!21641 () LexerInterface!7585)

(declare-datatypes ((List!47306 0))(
  ( (Nil!47182) (Cons!47182 (h!52602 Rule!15780) (t!352833 List!47306)) )
))
(declare-fun rules!2971 () List!47306)

(declare-fun shorterInput!62 () List!47305)

(declare-fun maxPrefix!4541 (LexerInterface!7585 List!47306 List!47305) Option!10124)

(assert (=> b!4254764 (= lt!1509560 (maxPrefix!4541 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47305)

(assert (=> b!4254764 (= lt!1509559 (maxPrefix!4541 thiss!21641 rules!2971 longerInput!62))))

(declare-fun res!1748984 () Bool)

(assert (=> start!407506 (=> (not res!1748984) (not e!2642858))))

(assert (=> start!407506 (= res!1748984 ((_ is Lexer!7583) thiss!21641))))

(assert (=> start!407506 e!2642858))

(assert (=> start!407506 true))

(declare-fun e!2642853 () Bool)

(assert (=> start!407506 e!2642853))

(declare-fun e!2642849 () Bool)

(assert (=> start!407506 e!2642849))

(declare-fun e!2642845 () Bool)

(assert (=> start!407506 e!2642845))

(declare-fun e!2642855 () Bool)

(assert (=> start!407506 e!2642855))

(declare-fun e!2642848 () Bool)

(assert (=> start!407506 e!2642848))

(declare-fun b!4254765 () Bool)

(declare-fun res!1748987 () Bool)

(assert (=> b!4254765 (=> (not res!1748987) (not e!2642858))))

(declare-fun size!34530 (List!47305) Int)

(assert (=> b!4254765 (= res!1748987 (> (size!34530 longerInput!62) (size!34530 shorterInput!62)))))

(declare-fun b!4254766 () Bool)

(declare-fun tp_is_empty!22781 () Bool)

(declare-fun tp!1305947 () Bool)

(assert (=> b!4254766 (= e!2642849 (and tp_is_empty!22781 tp!1305947))))

(declare-fun e!2642847 () Bool)

(declare-fun b!4254767 () Bool)

(declare-fun tp!1305948 () Bool)

(declare-fun inv!61965 (String!55030) Bool)

(declare-fun inv!61968 (TokenValueInjection!15868) Bool)

(assert (=> b!4254767 (= e!2642847 (and tp!1305948 (inv!61965 (tag!8854 (h!52602 rules!2971))) (inv!61968 (transformation!7990 (h!52602 rules!2971))) e!2642850))))

(declare-fun b!4254768 () Bool)

(declare-fun tp!1305939 () Bool)

(assert (=> b!4254768 (= e!2642855 (and e!2642847 tp!1305939))))

(declare-fun b!4254769 () Bool)

(declare-fun res!1748983 () Bool)

(assert (=> b!4254769 (=> (not res!1748983) (not e!2642858))))

(declare-fun rulesInvariant!6696 (LexerInterface!7585 List!47306) Bool)

(assert (=> b!4254769 (= res!1748983 (rulesInvariant!6696 thiss!21641 rules!2971))))

(declare-fun b!4254770 () Bool)

(declare-fun res!1748985 () Bool)

(assert (=> b!4254770 (=> (not res!1748985) (not e!2642858))))

(declare-fun isEmpty!27926 (List!47305) Bool)

(assert (=> b!4254770 (= res!1748985 (not (isEmpty!27926 longerInput!62)))))

(declare-fun e!2642851 () Bool)

(assert (=> b!4254771 (= e!2642851 (and tp!1305950 tp!1305940))))

(declare-fun b!4254772 () Bool)

(declare-fun tp!1305946 () Bool)

(assert (=> b!4254772 (= e!2642848 (and tp_is_empty!22781 tp!1305946))))

(declare-fun b!4254773 () Bool)

(declare-fun res!1748982 () Bool)

(assert (=> b!4254773 (=> (not res!1748982) (not e!2642858))))

(declare-datatypes ((List!47307 0))(
  ( (Nil!47183) (Cons!47183 (h!52603 Token!14606) (t!352834 List!47307)) )
))
(declare-fun tokens!592 () List!47307)

(declare-fun suffix!1284 () List!47305)

(declare-datatypes ((tuple2!44732 0))(
  ( (tuple2!44733 (_1!25500 List!47307) (_2!25500 List!47305)) )
))
(declare-fun lexList!2091 (LexerInterface!7585 List!47306 List!47305) tuple2!44732)

(assert (=> b!4254773 (= res!1748982 (= (lexList!2091 thiss!21641 rules!2971 longerInput!62) (tuple2!44733 tokens!592 suffix!1284)))))

(declare-fun b!4254774 () Bool)

(declare-fun res!1748986 () Bool)

(assert (=> b!4254774 (=> (not res!1748986) (not e!2642858))))

(declare-fun isEmpty!27927 (List!47306) Bool)

(assert (=> b!4254774 (= res!1748986 (not (isEmpty!27927 rules!2971)))))

(declare-fun b!4254775 () Bool)

(declare-fun tp!1305941 () Bool)

(assert (=> b!4254775 (= e!2642853 (and tp_is_empty!22781 tp!1305941))))

(declare-fun tp!1305942 () Bool)

(declare-fun e!2642857 () Bool)

(declare-fun b!4254776 () Bool)

(assert (=> b!4254776 (= e!2642857 (and tp!1305942 (inv!61965 (tag!8854 (rule!11126 (h!52603 tokens!592)))) (inv!61968 (transformation!7990 (rule!11126 (h!52603 tokens!592)))) e!2642851))))

(declare-fun b!4254777 () Bool)

(declare-fun tp!1305943 () Bool)

(declare-fun e!2642846 () Bool)

(declare-fun inv!61969 (Token!14606) Bool)

(assert (=> b!4254777 (= e!2642845 (and (inv!61969 (h!52603 tokens!592)) e!2642846 tp!1305943))))

(declare-fun tp!1305944 () Bool)

(declare-fun b!4254778 () Bool)

(declare-fun inv!21 (TokenValue!8220) Bool)

(assert (=> b!4254778 (= e!2642846 (and (inv!21 (value!248251 (h!52603 tokens!592))) e!2642857 tp!1305944))))

(assert (= (and start!407506 res!1748984) b!4254774))

(assert (= (and b!4254774 res!1748986) b!4254769))

(assert (= (and b!4254769 res!1748983) b!4254770))

(assert (= (and b!4254770 res!1748985) b!4254765))

(assert (= (and b!4254765 res!1748987) b!4254773))

(assert (= (and b!4254773 res!1748982) b!4254764))

(assert (= (and start!407506 ((_ is Cons!47181) suffix!1284)) b!4254775))

(assert (= (and start!407506 ((_ is Cons!47181) longerInput!62)) b!4254766))

(assert (= b!4254776 b!4254771))

(assert (= b!4254778 b!4254776))

(assert (= b!4254777 b!4254778))

(assert (= (and start!407506 ((_ is Cons!47183) tokens!592)) b!4254777))

(assert (= b!4254767 b!4254763))

(assert (= b!4254768 b!4254767))

(assert (= (and start!407506 ((_ is Cons!47182) rules!2971)) b!4254768))

(assert (= (and start!407506 ((_ is Cons!47181) shorterInput!62)) b!4254772))

(declare-fun m!4839391 () Bool)

(assert (=> b!4254774 m!4839391))

(declare-fun m!4839393 () Bool)

(assert (=> b!4254764 m!4839393))

(declare-fun m!4839395 () Bool)

(assert (=> b!4254764 m!4839395))

(declare-fun m!4839397 () Bool)

(assert (=> b!4254770 m!4839397))

(declare-fun m!4839399 () Bool)

(assert (=> b!4254765 m!4839399))

(declare-fun m!4839401 () Bool)

(assert (=> b!4254765 m!4839401))

(declare-fun m!4839403 () Bool)

(assert (=> b!4254767 m!4839403))

(declare-fun m!4839405 () Bool)

(assert (=> b!4254767 m!4839405))

(declare-fun m!4839407 () Bool)

(assert (=> b!4254776 m!4839407))

(declare-fun m!4839409 () Bool)

(assert (=> b!4254776 m!4839409))

(declare-fun m!4839411 () Bool)

(assert (=> b!4254778 m!4839411))

(declare-fun m!4839413 () Bool)

(assert (=> b!4254769 m!4839413))

(declare-fun m!4839415 () Bool)

(assert (=> b!4254773 m!4839415))

(declare-fun m!4839417 () Bool)

(assert (=> b!4254777 m!4839417))

(check-sat (not b!4254772) (not b!4254773) (not b!4254776) (not b_next!127331) b_and!337457 (not b_next!127337) tp_is_empty!22781 (not b!4254767) (not b!4254774) b_and!337453 b_and!337459 (not b!4254766) (not b!4254768) (not b!4254777) (not b!4254778) (not b_next!127335) (not b!4254770) (not b!4254765) b_and!337455 (not b!4254769) (not b_next!127333) (not b!4254775) (not b!4254764))
(check-sat (not b_next!127335) b_and!337455 (not b_next!127333) (not b_next!127331) b_and!337457 (not b_next!127337) b_and!337453 b_and!337459)

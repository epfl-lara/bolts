; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266390 () Bool)

(assert start!266390)

(declare-fun b!2748021 () Bool)

(declare-fun b_free!77553 () Bool)

(declare-fun b_next!78257 () Bool)

(assert (=> b!2748021 (= b_free!77553 (not b_next!78257))))

(declare-fun tp!866586 () Bool)

(declare-fun b_and!202277 () Bool)

(assert (=> b!2748021 (= tp!866586 b_and!202277)))

(declare-fun b_free!77555 () Bool)

(declare-fun b_next!78259 () Bool)

(assert (=> b!2748021 (= b_free!77555 (not b_next!78259))))

(declare-fun tp!866587 () Bool)

(declare-fun b_and!202279 () Bool)

(assert (=> b!2748021 (= tp!866587 b_and!202279)))

(declare-fun b!2748017 () Bool)

(declare-fun b_free!77557 () Bool)

(declare-fun b_next!78261 () Bool)

(assert (=> b!2748017 (= b_free!77557 (not b_next!78261))))

(declare-fun tp!866593 () Bool)

(declare-fun b_and!202281 () Bool)

(assert (=> b!2748017 (= tp!866593 b_and!202281)))

(declare-fun b!2748023 () Bool)

(declare-fun b_free!77559 () Bool)

(declare-fun b_next!78263 () Bool)

(assert (=> b!2748023 (= b_free!77559 (not b_next!78263))))

(declare-fun tp!866585 () Bool)

(declare-fun b_and!202283 () Bool)

(assert (=> b!2748023 (= tp!866585 b_and!202283)))

(declare-fun b!2748015 () Bool)

(declare-fun b_free!77561 () Bool)

(declare-fun b_next!78265 () Bool)

(assert (=> b!2748015 (= b_free!77561 (not b_next!78265))))

(declare-fun tp!866601 () Bool)

(declare-fun b_and!202285 () Bool)

(assert (=> b!2748015 (= tp!866601 b_and!202285)))

(declare-fun b!2748006 () Bool)

(declare-fun b_free!77563 () Bool)

(declare-fun b_next!78267 () Bool)

(assert (=> b!2748006 (= b_free!77563 (not b_next!78267))))

(declare-fun tp!866589 () Bool)

(declare-fun b_and!202287 () Bool)

(assert (=> b!2748006 (= tp!866589 b_and!202287)))

(declare-fun b!2748000 () Bool)

(declare-fun res!1152808 () Bool)

(declare-fun e!1731770 () Bool)

(assert (=> b!2748000 (=> (not res!1152808) (not e!1731770))))

(declare-datatypes ((LexerInterface!4450 0))(
  ( (LexerInterfaceExt!4447 (__x!20564 Int)) (Lexer!4448) )
))
(declare-fun thiss!16130 () LexerInterface!4450)

(declare-datatypes ((C!16188 0))(
  ( (C!16189 (val!10028 Int)) )
))
(declare-datatypes ((List!31804 0))(
  ( (Nil!31704) (Cons!31704 (h!37124 C!16188) (t!227898 List!31804)) )
))
(declare-datatypes ((IArray!19811 0))(
  ( (IArray!19812 (innerList!9963 List!31804)) )
))
(declare-datatypes ((Conc!9903 0))(
  ( (Node!9903 (left!24268 Conc!9903) (right!24598 Conc!9903) (csize!20036 Int) (cheight!10114 Int)) (Leaf!15079 (xs!13010 IArray!19811) (csize!20037 Int)) (Empty!9903) )
))
(declare-datatypes ((BalanceConc!19420 0))(
  ( (BalanceConc!19421 (c!444933 Conc!9903)) )
))
(declare-datatypes ((List!31805 0))(
  ( (Nil!31705) (Cons!31705 (h!37125 (_ BitVec 16)) (t!227899 List!31805)) )
))
(declare-datatypes ((String!35309 0))(
  ( (String!35310 (value!156021 String)) )
))
(declare-datatypes ((TokenValue!5080 0))(
  ( (FloatLiteralValue!10160 (text!36005 List!31805)) (TokenValueExt!5079 (__x!20565 Int)) (Broken!25400 (value!156022 List!31805)) (Object!5179) (End!5080) (Def!5080) (Underscore!5080) (Match!5080) (Else!5080) (Error!5080) (Case!5080) (If!5080) (Extends!5080) (Abstract!5080) (Class!5080) (Val!5080) (DelimiterValue!10160 (del!5140 List!31805)) (KeywordValue!5086 (value!156023 List!31805)) (CommentValue!10160 (value!156024 List!31805)) (WhitespaceValue!10160 (value!156025 List!31805)) (IndentationValue!5080 (value!156026 List!31805)) (String!35311) (Int32!5080) (Broken!25401 (value!156027 List!31805)) (Boolean!5081) (Unit!45550) (OperatorValue!5083 (op!5140 List!31805)) (IdentifierValue!10160 (value!156028 List!31805)) (IdentifierValue!10161 (value!156029 List!31805)) (WhitespaceValue!10161 (value!156030 List!31805)) (True!10160) (False!10160) (Broken!25402 (value!156031 List!31805)) (Broken!25403 (value!156032 List!31805)) (True!10161) (RightBrace!5080) (RightBracket!5080) (Colon!5080) (Null!5080) (Comma!5080) (LeftBracket!5080) (False!10161) (LeftBrace!5080) (ImaginaryLiteralValue!5080 (text!36006 List!31805)) (StringLiteralValue!15240 (value!156033 List!31805)) (EOFValue!5080 (value!156034 List!31805)) (IdentValue!5080 (value!156035 List!31805)) (DelimiterValue!10161 (value!156036 List!31805)) (DedentValue!5080 (value!156037 List!31805)) (NewLineValue!5080 (value!156038 List!31805)) (IntegerValue!15240 (value!156039 (_ BitVec 32)) (text!36007 List!31805)) (IntegerValue!15241 (value!156040 Int) (text!36008 List!31805)) (Times!5080) (Or!5080) (Equal!5080) (Minus!5080) (Broken!25404 (value!156041 List!31805)) (And!5080) (Div!5080) (LessEqual!5080) (Mod!5080) (Concat!13095) (Not!5080) (Plus!5080) (SpaceValue!5080 (value!156042 List!31805)) (IntegerValue!15242 (value!156043 Int) (text!36009 List!31805)) (StringLiteralValue!15241 (text!36010 List!31805)) (FloatLiteralValue!10161 (text!36011 List!31805)) (BytesLiteralValue!5080 (value!156044 List!31805)) (CommentValue!10161 (value!156045 List!31805)) (StringLiteralValue!15242 (value!156046 List!31805)) (ErrorTokenValue!5080 (msg!5141 List!31805)) )
))
(declare-datatypes ((TokenValueInjection!9600 0))(
  ( (TokenValueInjection!9601 (toValue!6856 Int) (toChars!6715 Int)) )
))
(declare-datatypes ((Regex!8015 0))(
  ( (ElementMatch!8015 (c!444934 C!16188)) (Concat!13096 (regOne!16542 Regex!8015) (regTwo!16542 Regex!8015)) (EmptyExpr!8015) (Star!8015 (reg!8344 Regex!8015)) (EmptyLang!8015) (Union!8015 (regOne!16543 Regex!8015) (regTwo!16543 Regex!8015)) )
))
(declare-datatypes ((Rule!9516 0))(
  ( (Rule!9517 (regex!4858 Regex!8015) (tag!5362 String!35309) (isSeparator!4858 Bool) (transformation!4858 TokenValueInjection!9600)) )
))
(declare-fun rule!196 () Rule!9516)

(declare-fun ruleValid!1597 (LexerInterface!4450 Rule!9516) Bool)

(assert (=> b!2748000 (= res!1152808 (ruleValid!1597 thiss!16130 rule!196))))

(declare-fun b!2748001 () Bool)

(declare-fun e!1731774 () Bool)

(declare-fun e!1731789 () Bool)

(assert (=> b!2748001 (= e!1731774 e!1731789)))

(declare-fun b!2748002 () Bool)

(declare-fun e!1731790 () Bool)

(declare-fun e!1731783 () Bool)

(declare-datatypes ((List!31806 0))(
  ( (Nil!31706) (Cons!31706 (h!37126 Regex!8015) (t!227900 List!31806)) )
))
(declare-datatypes ((Context!4466 0))(
  ( (Context!4467 (exprs!2733 List!31806)) )
))
(declare-datatypes ((tuple3!4472 0))(
  ( (tuple3!4473 (_1!18488 Regex!8015) (_2!18488 Context!4466) (_3!2706 C!16188)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31564 0))(
  ( (tuple2!31565 (_1!18489 tuple3!4472) (_2!18489 (InoxSet Context!4466))) )
))
(declare-datatypes ((List!31807 0))(
  ( (Nil!31707) (Cons!31707 (h!37127 tuple2!31564) (t!227901 List!31807)) )
))
(declare-datatypes ((array!12977 0))(
  ( (array!12978 (arr!5791 (Array (_ BitVec 32) (_ BitVec 64))) (size!24472 (_ BitVec 32))) )
))
(declare-datatypes ((array!12979 0))(
  ( (array!12980 (arr!5792 (Array (_ BitVec 32) List!31807)) (size!24473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7286 0))(
  ( (LongMapFixedSize!7287 (defaultEntry!4028 Int) (mask!9387 (_ BitVec 32)) (extraKeys!3892 (_ BitVec 32)) (zeroValue!3902 List!31807) (minValue!3902 List!31807) (_size!7329 (_ BitVec 32)) (_keys!3943 array!12977) (_values!3924 array!12979) (_vacant!3704 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14381 0))(
  ( (Cell!14382 (v!33322 LongMapFixedSize!7286)) )
))
(declare-datatypes ((MutLongMap!3643 0))(
  ( (LongMap!3643 (underlying!7489 Cell!14381)) (MutLongMapExt!3642 (__x!20566 Int)) )
))
(declare-fun lt!971967 () MutLongMap!3643)

(get-info :version)

(assert (=> b!2748002 (= e!1731790 (and e!1731783 ((_ is LongMap!3643) lt!971967)))))

(declare-datatypes ((Cell!14383 0))(
  ( (Cell!14384 (v!33323 MutLongMap!3643)) )
))
(declare-datatypes ((Hashable!3559 0))(
  ( (HashableExt!3558 (__x!20567 Int)) )
))
(declare-datatypes ((MutableMap!3549 0))(
  ( (MutableMapExt!3548 (__x!20568 Int)) (HashMap!3549 (underlying!7490 Cell!14383) (hashF!5591 Hashable!3559) (_size!7330 (_ BitVec 32)) (defaultValue!3720 Int)) )
))
(declare-datatypes ((CacheDown!2374 0))(
  ( (CacheDown!2375 (cache!3692 MutableMap!3549)) )
))
(declare-fun cacheDown!730 () CacheDown!2374)

(assert (=> b!2748002 (= lt!971967 (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))))

(declare-fun res!1152812 () Bool)

(assert (=> start!266390 (=> (not res!1152812) (not e!1731770))))

(assert (=> start!266390 (= res!1152812 ((_ is Lexer!4448) thiss!16130))))

(assert (=> start!266390 e!1731770))

(declare-fun input!1561 () BalanceConc!19420)

(declare-fun e!1731780 () Bool)

(declare-fun inv!43062 (BalanceConc!19420) Bool)

(assert (=> start!266390 (and (inv!43062 input!1561) e!1731780)))

(declare-datatypes ((tuple2!31566 0))(
  ( (tuple2!31567 (_1!18490 Context!4466) (_2!18490 C!16188)) )
))
(declare-datatypes ((tuple2!31568 0))(
  ( (tuple2!31569 (_1!18491 tuple2!31566) (_2!18491 (InoxSet Context!4466))) )
))
(declare-datatypes ((List!31808 0))(
  ( (Nil!31708) (Cons!31708 (h!37128 tuple2!31568) (t!227902 List!31808)) )
))
(declare-datatypes ((array!12981 0))(
  ( (array!12982 (arr!5793 (Array (_ BitVec 32) List!31808)) (size!24474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7288 0))(
  ( (LongMapFixedSize!7289 (defaultEntry!4029 Int) (mask!9388 (_ BitVec 32)) (extraKeys!3893 (_ BitVec 32)) (zeroValue!3903 List!31808) (minValue!3903 List!31808) (_size!7331 (_ BitVec 32)) (_keys!3944 array!12977) (_values!3925 array!12981) (_vacant!3705 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14385 0))(
  ( (Cell!14386 (v!33324 LongMapFixedSize!7288)) )
))
(declare-datatypes ((MutLongMap!3644 0))(
  ( (LongMap!3644 (underlying!7491 Cell!14385)) (MutLongMapExt!3643 (__x!20569 Int)) )
))
(declare-datatypes ((Cell!14387 0))(
  ( (Cell!14388 (v!33325 MutLongMap!3644)) )
))
(declare-datatypes ((Hashable!3560 0))(
  ( (HashableExt!3559 (__x!20570 Int)) )
))
(declare-datatypes ((MutableMap!3550 0))(
  ( (MutableMapExt!3549 (__x!20571 Int)) (HashMap!3550 (underlying!7492 Cell!14387) (hashF!5592 Hashable!3560) (_size!7332 (_ BitVec 32)) (defaultValue!3721 Int)) )
))
(declare-datatypes ((CacheUp!2256 0))(
  ( (CacheUp!2257 (cache!3693 MutableMap!3550)) )
))
(declare-fun cacheUp!717 () CacheUp!2256)

(declare-fun e!1731784 () Bool)

(declare-fun inv!43063 (CacheUp!2256) Bool)

(assert (=> start!266390 (and (inv!43063 cacheUp!717) e!1731784)))

(assert (=> start!266390 true))

(declare-fun e!1731772 () Bool)

(declare-fun inv!43064 (CacheDown!2374) Bool)

(assert (=> start!266390 (and (inv!43064 cacheDown!730) e!1731772)))

(declare-fun e!1731776 () Bool)

(assert (=> start!266390 e!1731776))

(declare-fun b!2748003 () Bool)

(declare-fun tp!866599 () Bool)

(declare-fun inv!43065 (Conc!9903) Bool)

(assert (=> b!2748003 (= e!1731780 (and (inv!43065 (c!444933 input!1561)) tp!866599))))

(declare-fun b!2748004 () Bool)

(declare-fun res!1152813 () Bool)

(assert (=> b!2748004 (=> (not res!1152813) (not e!1731770))))

(declare-fun valid!2825 (CacheDown!2374) Bool)

(assert (=> b!2748004 (= res!1152813 (valid!2825 cacheDown!730))))

(declare-fun b!2748005 () Bool)

(declare-datatypes ((Token!9126 0))(
  ( (Token!9127 (value!156047 TokenValue!5080) (rule!7289 Rule!9516) (size!24475 Int) (originalCharacters!5594 List!31804)) )
))
(declare-datatypes ((tuple2!31570 0))(
  ( (tuple2!31571 (_1!18492 Token!9126) (_2!18492 BalanceConc!19420)) )
))
(declare-datatypes ((Option!6245 0))(
  ( (None!6244) (Some!6244 (v!33326 tuple2!31570)) )
))
(declare-fun e!1731791 () Option!6245)

(declare-datatypes ((tuple2!31572 0))(
  ( (tuple2!31573 (_1!18493 BalanceConc!19420) (_2!18493 BalanceConc!19420)) )
))
(declare-datatypes ((tuple3!4474 0))(
  ( (tuple3!4475 (_1!18494 tuple2!31572) (_2!18494 CacheUp!2256) (_3!2707 CacheDown!2374)) )
))
(declare-fun lt!971965 () tuple3!4474)

(declare-fun apply!7429 (TokenValueInjection!9600 BalanceConc!19420) TokenValue!5080)

(declare-fun size!24476 (BalanceConc!19420) Int)

(declare-fun list!12005 (BalanceConc!19420) List!31804)

(assert (=> b!2748005 (= e!1731791 (Some!6244 (tuple2!31571 (Token!9127 (apply!7429 (transformation!4858 rule!196) (_1!18493 (_1!18494 lt!971965))) rule!196 (size!24476 (_1!18493 (_1!18494 lt!971965))) (list!12005 (_1!18493 (_1!18494 lt!971965)))) (_2!18493 (_1!18494 lt!971965)))))))

(declare-fun lt!971968 () List!31804)

(assert (=> b!2748005 (= lt!971968 (list!12005 input!1561))))

(declare-datatypes ((Unit!45551 0))(
  ( (Unit!45552) )
))
(declare-fun lt!971966 () Unit!45551)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!777 (Regex!8015 List!31804) Unit!45551)

(assert (=> b!2748005 (= lt!971966 (longestMatchIsAcceptedByMatchOrIsEmpty!777 (regex!4858 rule!196) lt!971968))))

(declare-datatypes ((tuple2!31574 0))(
  ( (tuple2!31575 (_1!18495 List!31804) (_2!18495 List!31804)) )
))
(declare-fun lt!971971 () tuple2!31574)

(declare-fun findLongestMatchInner!804 (Regex!8015 List!31804 Int List!31804 List!31804 Int) tuple2!31574)

(declare-fun size!24477 (List!31804) Int)

(assert (=> b!2748005 (= lt!971971 (findLongestMatchInner!804 (regex!4858 rule!196) Nil!31704 (size!24477 Nil!31704) lt!971968 lt!971968 (size!24477 lt!971968)))))

(declare-fun res!1152811 () Bool)

(declare-fun isEmpty!18050 (List!31804) Bool)

(assert (=> b!2748005 (= res!1152811 (isEmpty!18050 (_1!18495 lt!971971)))))

(declare-fun e!1731768 () Bool)

(assert (=> b!2748005 (=> res!1152811 e!1731768)))

(assert (=> b!2748005 e!1731768))

(declare-fun lt!971964 () Unit!45551)

(declare-fun lemmaSemiInverse!1144 (TokenValueInjection!9600 BalanceConc!19420) Unit!45551)

(assert (=> b!2748005 (= lt!971964 (lemmaSemiInverse!1144 (transformation!4858 rule!196) (_1!18493 (_1!18494 lt!971965))))))

(declare-fun e!1731775 () Bool)

(declare-fun tp!866595 () Bool)

(declare-fun e!1731773 () Bool)

(declare-fun tp!866591 () Bool)

(declare-fun array_inv!4139 (array!12977) Bool)

(declare-fun array_inv!4140 (array!12981) Bool)

(assert (=> b!2748006 (= e!1731773 (and tp!866589 tp!866595 tp!866591 (array_inv!4139 (_keys!3944 (v!33324 (underlying!7491 (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))))) (array_inv!4140 (_values!3925 (v!33324 (underlying!7491 (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))))) e!1731775))))

(declare-fun b!2748007 () Bool)

(declare-fun tp!866596 () Bool)

(declare-fun mapRes!16616 () Bool)

(assert (=> b!2748007 (= e!1731775 (and tp!866596 mapRes!16616))))

(declare-fun condMapEmpty!16615 () Bool)

(declare-fun mapDefault!16616 () List!31808)

(assert (=> b!2748007 (= condMapEmpty!16615 (= (arr!5793 (_values!3925 (v!33324 (underlying!7491 (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31808)) mapDefault!16616)))))

(declare-fun mapIsEmpty!16615 () Bool)

(assert (=> mapIsEmpty!16615 mapRes!16616))

(declare-fun b!2748008 () Bool)

(declare-fun e!1731785 () Bool)

(assert (=> b!2748008 (= e!1731784 e!1731785)))

(declare-fun b!2748009 () Bool)

(declare-fun e!1731786 () Bool)

(declare-fun e!1731769 () Bool)

(declare-fun lt!971970 () MutLongMap!3644)

(assert (=> b!2748009 (= e!1731786 (and e!1731769 ((_ is LongMap!3644) lt!971970)))))

(assert (=> b!2748009 (= lt!971970 (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))))

(declare-fun mapNonEmpty!16615 () Bool)

(declare-fun mapRes!16615 () Bool)

(declare-fun tp!866592 () Bool)

(declare-fun tp!866594 () Bool)

(assert (=> mapNonEmpty!16615 (= mapRes!16615 (and tp!866592 tp!866594))))

(declare-fun mapValue!16616 () List!31807)

(declare-fun mapRest!16616 () (Array (_ BitVec 32) List!31807))

(declare-fun mapKey!16616 () (_ BitVec 32))

(assert (=> mapNonEmpty!16615 (= (arr!5792 (_values!3924 (v!33322 (underlying!7489 (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))))) (store mapRest!16616 mapKey!16616 mapValue!16616))))

(declare-fun b!2748010 () Bool)

(declare-fun e!1731788 () Bool)

(declare-fun tp!866588 () Bool)

(assert (=> b!2748010 (= e!1731788 (and tp!866588 mapRes!16615))))

(declare-fun condMapEmpty!16616 () Bool)

(declare-fun mapDefault!16615 () List!31807)

(assert (=> b!2748010 (= condMapEmpty!16616 (= (arr!5792 (_values!3924 (v!33322 (underlying!7489 (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31807)) mapDefault!16615)))))

(declare-fun b!2748011 () Bool)

(assert (=> b!2748011 (= e!1731791 None!6244)))

(declare-fun b!2748012 () Bool)

(assert (=> b!2748012 (= e!1731783 e!1731774)))

(declare-fun b!2748013 () Bool)

(declare-fun e!1731778 () Bool)

(assert (=> b!2748013 (= e!1731770 e!1731778)))

(declare-fun res!1152810 () Bool)

(assert (=> b!2748013 (=> (not res!1152810) (not e!1731778))))

(declare-fun findLongestMatchWithZipperSequence!193 (Regex!8015 BalanceConc!19420) tuple2!31572)

(assert (=> b!2748013 (= res!1152810 (= (_1!18494 lt!971965) (findLongestMatchWithZipperSequence!193 (regex!4858 rule!196) input!1561)))))

(declare-fun findLongestMatchWithZipperSequenceMem!14 (Regex!8015 BalanceConc!19420 CacheUp!2256 CacheDown!2374) tuple3!4474)

(assert (=> b!2748013 (= lt!971965 (findLongestMatchWithZipperSequenceMem!14 (regex!4858 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2748014 () Bool)

(declare-fun e!1731771 () Bool)

(assert (=> b!2748014 (= e!1731771 e!1731773)))

(assert (=> b!2748015 (= e!1731785 (and e!1731786 tp!866601))))

(declare-fun b!2748016 () Bool)

(declare-fun e!1731779 () Bool)

(declare-fun tp!866590 () Bool)

(declare-fun inv!43061 (String!35309) Bool)

(declare-fun inv!43066 (TokenValueInjection!9600) Bool)

(assert (=> b!2748016 (= e!1731776 (and tp!866590 (inv!43061 (tag!5362 rule!196)) (inv!43066 (transformation!4858 rule!196)) e!1731779))))

(declare-fun mapIsEmpty!16616 () Bool)

(assert (=> mapIsEmpty!16616 mapRes!16615))

(declare-fun e!1731787 () Bool)

(assert (=> b!2748017 (= e!1731787 (and e!1731790 tp!866593))))

(declare-fun b!2748018 () Bool)

(declare-fun res!1152809 () Bool)

(assert (=> b!2748018 (=> (not res!1152809) (not e!1731770))))

(declare-fun valid!2826 (CacheUp!2256) Bool)

(assert (=> b!2748018 (= res!1152809 (valid!2826 cacheUp!717))))

(declare-fun b!2748019 () Bool)

(assert (=> b!2748019 (= e!1731772 e!1731787)))

(declare-fun b!2748020 () Bool)

(assert (=> b!2748020 (= e!1731769 e!1731771)))

(assert (=> b!2748021 (= e!1731779 (and tp!866586 tp!866587))))

(declare-fun b!2748022 () Bool)

(declare-fun matchR!3657 (Regex!8015 List!31804) Bool)

(assert (=> b!2748022 (= e!1731768 (matchR!3657 (regex!4858 rule!196) (_1!18495 lt!971971)))))

(declare-fun tp!866598 () Bool)

(declare-fun tp!866584 () Bool)

(declare-fun array_inv!4141 (array!12979) Bool)

(assert (=> b!2748023 (= e!1731789 (and tp!866585 tp!866598 tp!866584 (array_inv!4139 (_keys!3943 (v!33322 (underlying!7489 (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))))) (array_inv!4141 (_values!3924 (v!33322 (underlying!7489 (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))))) e!1731788))))

(declare-fun b!2748024 () Bool)

(assert (=> b!2748024 (= e!1731778 false)))

(declare-fun lt!971969 () Option!6245)

(assert (=> b!2748024 (= lt!971969 e!1731791)))

(declare-fun c!444932 () Bool)

(declare-fun isEmpty!18051 (BalanceConc!19420) Bool)

(assert (=> b!2748024 (= c!444932 (isEmpty!18051 (_1!18493 (_1!18494 lt!971965))))))

(declare-fun mapNonEmpty!16616 () Bool)

(declare-fun tp!866597 () Bool)

(declare-fun tp!866600 () Bool)

(assert (=> mapNonEmpty!16616 (= mapRes!16616 (and tp!866597 tp!866600))))

(declare-fun mapRest!16615 () (Array (_ BitVec 32) List!31808))

(declare-fun mapValue!16615 () List!31808)

(declare-fun mapKey!16615 () (_ BitVec 32))

(assert (=> mapNonEmpty!16616 (= (arr!5793 (_values!3925 (v!33324 (underlying!7491 (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))))) (store mapRest!16615 mapKey!16615 mapValue!16615))))

(assert (= (and start!266390 res!1152812) b!2748000))

(assert (= (and b!2748000 res!1152808) b!2748018))

(assert (= (and b!2748018 res!1152809) b!2748004))

(assert (= (and b!2748004 res!1152813) b!2748013))

(assert (= (and b!2748013 res!1152810) b!2748024))

(assert (= (and b!2748024 c!444932) b!2748011))

(assert (= (and b!2748024 (not c!444932)) b!2748005))

(assert (= (and b!2748005 (not res!1152811)) b!2748022))

(assert (= start!266390 b!2748003))

(assert (= (and b!2748007 condMapEmpty!16615) mapIsEmpty!16615))

(assert (= (and b!2748007 (not condMapEmpty!16615)) mapNonEmpty!16616))

(assert (= b!2748006 b!2748007))

(assert (= b!2748014 b!2748006))

(assert (= b!2748020 b!2748014))

(assert (= (and b!2748009 ((_ is LongMap!3644) (v!33325 (underlying!7492 (cache!3693 cacheUp!717))))) b!2748020))

(assert (= b!2748015 b!2748009))

(assert (= (and b!2748008 ((_ is HashMap!3550) (cache!3693 cacheUp!717))) b!2748015))

(assert (= start!266390 b!2748008))

(assert (= (and b!2748010 condMapEmpty!16616) mapIsEmpty!16616))

(assert (= (and b!2748010 (not condMapEmpty!16616)) mapNonEmpty!16615))

(assert (= b!2748023 b!2748010))

(assert (= b!2748001 b!2748023))

(assert (= b!2748012 b!2748001))

(assert (= (and b!2748002 ((_ is LongMap!3643) (v!33323 (underlying!7490 (cache!3692 cacheDown!730))))) b!2748012))

(assert (= b!2748017 b!2748002))

(assert (= (and b!2748019 ((_ is HashMap!3549) (cache!3692 cacheDown!730))) b!2748017))

(assert (= start!266390 b!2748019))

(assert (= b!2748016 b!2748021))

(assert (= start!266390 b!2748016))

(declare-fun m!3163823 () Bool)

(assert (=> b!2748006 m!3163823))

(declare-fun m!3163825 () Bool)

(assert (=> b!2748006 m!3163825))

(declare-fun m!3163827 () Bool)

(assert (=> b!2748003 m!3163827))

(declare-fun m!3163829 () Bool)

(assert (=> b!2748004 m!3163829))

(declare-fun m!3163831 () Bool)

(assert (=> b!2748018 m!3163831))

(declare-fun m!3163833 () Bool)

(assert (=> mapNonEmpty!16615 m!3163833))

(declare-fun m!3163835 () Bool)

(assert (=> mapNonEmpty!16616 m!3163835))

(declare-fun m!3163837 () Bool)

(assert (=> b!2748024 m!3163837))

(declare-fun m!3163839 () Bool)

(assert (=> b!2748016 m!3163839))

(declare-fun m!3163841 () Bool)

(assert (=> b!2748016 m!3163841))

(declare-fun m!3163843 () Bool)

(assert (=> b!2748013 m!3163843))

(declare-fun m!3163845 () Bool)

(assert (=> b!2748013 m!3163845))

(declare-fun m!3163847 () Bool)

(assert (=> start!266390 m!3163847))

(declare-fun m!3163849 () Bool)

(assert (=> start!266390 m!3163849))

(declare-fun m!3163851 () Bool)

(assert (=> start!266390 m!3163851))

(declare-fun m!3163853 () Bool)

(assert (=> b!2748022 m!3163853))

(declare-fun m!3163855 () Bool)

(assert (=> b!2748005 m!3163855))

(declare-fun m!3163857 () Bool)

(assert (=> b!2748005 m!3163857))

(declare-fun m!3163859 () Bool)

(assert (=> b!2748005 m!3163859))

(declare-fun m!3163861 () Bool)

(assert (=> b!2748005 m!3163861))

(declare-fun m!3163863 () Bool)

(assert (=> b!2748005 m!3163863))

(declare-fun m!3163865 () Bool)

(assert (=> b!2748005 m!3163865))

(declare-fun m!3163867 () Bool)

(assert (=> b!2748005 m!3163867))

(declare-fun m!3163869 () Bool)

(assert (=> b!2748005 m!3163869))

(assert (=> b!2748005 m!3163857))

(assert (=> b!2748005 m!3163855))

(declare-fun m!3163871 () Bool)

(assert (=> b!2748005 m!3163871))

(declare-fun m!3163873 () Bool)

(assert (=> b!2748005 m!3163873))

(declare-fun m!3163875 () Bool)

(assert (=> b!2748000 m!3163875))

(declare-fun m!3163877 () Bool)

(assert (=> b!2748023 m!3163877))

(declare-fun m!3163879 () Bool)

(assert (=> b!2748023 m!3163879))

(check-sat b_and!202287 (not b!2748023) (not b_next!78257) (not start!266390) (not b!2748010) (not b_next!78265) (not b!2748005) b_and!202279 (not b_next!78261) b_and!202283 (not b!2748022) (not mapNonEmpty!16616) b_and!202281 (not b!2748007) (not b!2748018) (not b_next!78263) b_and!202277 (not b!2748013) (not b!2748000) (not b!2748006) b_and!202285 (not b!2748024) (not b!2748004) (not b!2748016) (not b_next!78267) (not b_next!78259) (not b!2748003) (not mapNonEmpty!16615))
(check-sat b_and!202287 b_and!202281 (not b_next!78257) (not b_next!78265) b_and!202279 (not b_next!78261) b_and!202285 b_and!202283 (not b_next!78267) (not b_next!78259) (not b_next!78263) b_and!202277)

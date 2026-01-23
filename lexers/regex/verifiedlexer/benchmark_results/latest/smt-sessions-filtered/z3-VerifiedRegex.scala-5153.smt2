; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265844 () Bool)

(assert start!265844)

(declare-fun b!2742317 () Bool)

(declare-fun b_free!76953 () Bool)

(declare-fun b_next!77657 () Bool)

(assert (=> b!2742317 (= b_free!76953 (not b_next!77657))))

(declare-fun tp!861887 () Bool)

(declare-fun b_and!201673 () Bool)

(assert (=> b!2742317 (= tp!861887 b_and!201673)))

(declare-fun b!2742319 () Bool)

(declare-fun b_free!76955 () Bool)

(declare-fun b_next!77659 () Bool)

(assert (=> b!2742319 (= b_free!76955 (not b_next!77659))))

(declare-fun tp!861892 () Bool)

(declare-fun b_and!201675 () Bool)

(assert (=> b!2742319 (= tp!861892 b_and!201675)))

(declare-fun b_free!76957 () Bool)

(declare-fun b_next!77661 () Bool)

(assert (=> b!2742319 (= b_free!76957 (not b_next!77661))))

(declare-fun tp!861884 () Bool)

(declare-fun b_and!201677 () Bool)

(assert (=> b!2742319 (= tp!861884 b_and!201677)))

(declare-fun b!2742323 () Bool)

(declare-fun b_free!76959 () Bool)

(declare-fun b_next!77663 () Bool)

(assert (=> b!2742323 (= b_free!76959 (not b_next!77663))))

(declare-fun tp!861891 () Bool)

(declare-fun b_and!201679 () Bool)

(assert (=> b!2742323 (= tp!861891 b_and!201679)))

(declare-fun b!2742325 () Bool)

(declare-fun b_free!76961 () Bool)

(declare-fun b_next!77665 () Bool)

(assert (=> b!2742325 (= b_free!76961 (not b_next!77665))))

(declare-fun tp!861898 () Bool)

(declare-fun b_and!201681 () Bool)

(assert (=> b!2742325 (= tp!861898 b_and!201681)))

(declare-fun b!2742315 () Bool)

(declare-fun b_free!76963 () Bool)

(declare-fun b_next!77667 () Bool)

(assert (=> b!2742315 (= b_free!76963 (not b_next!77667))))

(declare-fun tp!861889 () Bool)

(declare-fun b_and!201683 () Bool)

(assert (=> b!2742315 (= tp!861889 b_and!201683)))

(declare-datatypes ((array!12677 0))(
  ( (array!12678 (arr!5662 (Array (_ BitVec 32) (_ BitVec 64))) (size!24306 (_ BitVec 32))) )
))
(declare-datatypes ((C!16100 0))(
  ( (C!16101 (val!9984 Int)) )
))
(declare-datatypes ((Regex!7971 0))(
  ( (ElementMatch!7971 (c!444744 C!16100)) (Concat!13012 (regOne!16454 Regex!7971) (regTwo!16454 Regex!7971)) (EmptyExpr!7971) (Star!7971 (reg!8300 Regex!7971)) (EmptyLang!7971) (Union!7971 (regOne!16455 Regex!7971) (regTwo!16455 Regex!7971)) )
))
(declare-datatypes ((List!31563 0))(
  ( (Nil!31463) (Cons!31463 (h!36883 Regex!7971) (t!227651 List!31563)) )
))
(declare-datatypes ((Context!4378 0))(
  ( (Context!4379 (exprs!2689 List!31563)) )
))
(declare-datatypes ((tuple2!31238 0))(
  ( (tuple2!31239 (_1!18254 Context!4378) (_2!18254 C!16100)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31240 0))(
  ( (tuple2!31241 (_1!18255 tuple2!31238) (_2!18255 (InoxSet Context!4378))) )
))
(declare-datatypes ((List!31564 0))(
  ( (Nil!31464) (Cons!31464 (h!36884 tuple2!31240) (t!227652 List!31564)) )
))
(declare-datatypes ((array!12679 0))(
  ( (array!12680 (arr!5663 (Array (_ BitVec 32) List!31564)) (size!24307 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7116 0))(
  ( (LongMapFixedSize!7117 (defaultEntry!3943 Int) (mask!9280 (_ BitVec 32)) (extraKeys!3807 (_ BitVec 32)) (zeroValue!3817 List!31564) (minValue!3817 List!31564) (_size!7159 (_ BitVec 32)) (_keys!3858 array!12677) (_values!3839 array!12679) (_vacant!3619 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14041 0))(
  ( (Cell!14042 (v!33133 LongMapFixedSize!7116)) )
))
(declare-datatypes ((MutLongMap!3558 0))(
  ( (LongMap!3558 (underlying!7319 Cell!14041)) (MutLongMapExt!3557 (__x!20235 Int)) )
))
(declare-datatypes ((Cell!14043 0))(
  ( (Cell!14044 (v!33134 MutLongMap!3558)) )
))
(declare-datatypes ((Hashable!3474 0))(
  ( (HashableExt!3473 (__x!20236 Int)) )
))
(declare-datatypes ((MutableMap!3464 0))(
  ( (MutableMapExt!3463 (__x!20237 Int)) (HashMap!3464 (underlying!7320 Cell!14043) (hashF!5506 Hashable!3474) (_size!7160 (_ BitVec 32)) (defaultValue!3635 Int)) )
))
(declare-datatypes ((CacheUp!2174 0))(
  ( (CacheUp!2175 (cache!3607 MutableMap!3464)) )
))
(declare-fun cacheUp!633 () CacheUp!2174)

(declare-fun e!1726740 () Bool)

(declare-fun e!1726746 () Bool)

(declare-fun tp!861894 () Bool)

(declare-fun tp!861883 () Bool)

(declare-fun array_inv!4048 (array!12677) Bool)

(declare-fun array_inv!4049 (array!12679) Bool)

(assert (=> b!2742315 (= e!1726746 (and tp!861889 tp!861894 tp!861883 (array_inv!4048 (_keys!3858 (v!33133 (underlying!7319 (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))))) (array_inv!4049 (_values!3839 (v!33133 (underlying!7319 (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))))) e!1726740))))

(declare-fun b!2742316 () Bool)

(declare-fun res!1151387 () Bool)

(declare-fun e!1726754 () Bool)

(assert (=> b!2742316 (=> (not res!1151387) (not e!1726754))))

(declare-datatypes ((List!31565 0))(
  ( (Nil!31465) (Cons!31465 (h!36885 (_ BitVec 16)) (t!227653 List!31565)) )
))
(declare-datatypes ((TokenValue!5041 0))(
  ( (FloatLiteralValue!10082 (text!35732 List!31565)) (TokenValueExt!5040 (__x!20238 Int)) (Broken!25205 (value!154925 List!31565)) (Object!5140) (End!5041) (Def!5041) (Underscore!5041) (Match!5041) (Else!5041) (Error!5041) (Case!5041) (If!5041) (Extends!5041) (Abstract!5041) (Class!5041) (Val!5041) (DelimiterValue!10082 (del!5101 List!31565)) (KeywordValue!5047 (value!154926 List!31565)) (CommentValue!10082 (value!154927 List!31565)) (WhitespaceValue!10082 (value!154928 List!31565)) (IndentationValue!5041 (value!154929 List!31565)) (String!35104) (Int32!5041) (Broken!25206 (value!154930 List!31565)) (Boolean!5042) (Unit!45467) (OperatorValue!5044 (op!5101 List!31565)) (IdentifierValue!10082 (value!154931 List!31565)) (IdentifierValue!10083 (value!154932 List!31565)) (WhitespaceValue!10083 (value!154933 List!31565)) (True!10082) (False!10082) (Broken!25207 (value!154934 List!31565)) (Broken!25208 (value!154935 List!31565)) (True!10083) (RightBrace!5041) (RightBracket!5041) (Colon!5041) (Null!5041) (Comma!5041) (LeftBracket!5041) (False!10083) (LeftBrace!5041) (ImaginaryLiteralValue!5041 (text!35733 List!31565)) (StringLiteralValue!15123 (value!154936 List!31565)) (EOFValue!5041 (value!154937 List!31565)) (IdentValue!5041 (value!154938 List!31565)) (DelimiterValue!10083 (value!154939 List!31565)) (DedentValue!5041 (value!154940 List!31565)) (NewLineValue!5041 (value!154941 List!31565)) (IntegerValue!15123 (value!154942 (_ BitVec 32)) (text!35734 List!31565)) (IntegerValue!15124 (value!154943 Int) (text!35735 List!31565)) (Times!5041) (Or!5041) (Equal!5041) (Minus!5041) (Broken!25209 (value!154944 List!31565)) (And!5041) (Div!5041) (LessEqual!5041) (Mod!5041) (Concat!13013) (Not!5041) (Plus!5041) (SpaceValue!5041 (value!154945 List!31565)) (IntegerValue!15125 (value!154946 Int) (text!35736 List!31565)) (StringLiteralValue!15124 (text!35737 List!31565)) (FloatLiteralValue!10083 (text!35738 List!31565)) (BytesLiteralValue!5041 (value!154947 List!31565)) (CommentValue!10083 (value!154948 List!31565)) (StringLiteralValue!15125 (value!154949 List!31565)) (ErrorTokenValue!5041 (msg!5102 List!31565)) )
))
(declare-datatypes ((List!31566 0))(
  ( (Nil!31466) (Cons!31466 (h!36886 C!16100) (t!227654 List!31566)) )
))
(declare-datatypes ((IArray!19729 0))(
  ( (IArray!19730 (innerList!9922 List!31566)) )
))
(declare-datatypes ((Conc!9862 0))(
  ( (Node!9862 (left!24181 Conc!9862) (right!24511 Conc!9862) (csize!19954 Int) (cheight!10073 Int)) (Leaf!15016 (xs!12969 IArray!19729) (csize!19955 Int)) (Empty!9862) )
))
(declare-datatypes ((BalanceConc!19338 0))(
  ( (BalanceConc!19339 (c!444745 Conc!9862)) )
))
(declare-datatypes ((TokenValueInjection!9522 0))(
  ( (TokenValueInjection!9523 (toValue!6817 Int) (toChars!6676 Int)) )
))
(declare-datatypes ((String!35105 0))(
  ( (String!35106 (value!154950 String)) )
))
(declare-datatypes ((Rule!9438 0))(
  ( (Rule!9439 (regex!4819 Regex!7971) (tag!5323 String!35105) (isSeparator!4819 Bool) (transformation!4819 TokenValueInjection!9522)) )
))
(declare-datatypes ((List!31567 0))(
  ( (Nil!31467) (Cons!31467 (h!36887 Rule!9438) (t!227655 List!31567)) )
))
(declare-fun rulesArg!249 () List!31567)

(declare-fun isEmpty!18009 (List!31567) Bool)

(assert (=> b!2742316 (= res!1151387 (not (isEmpty!18009 rulesArg!249)))))

(declare-fun e!1726747 () Bool)

(declare-fun e!1726734 () Bool)

(assert (=> b!2742317 (= e!1726747 (and e!1726734 tp!861887))))

(declare-fun b!2742318 () Bool)

(declare-fun e!1726737 () Bool)

(declare-fun e!1726742 () Bool)

(declare-fun tp!861890 () Bool)

(assert (=> b!2742318 (= e!1726737 (and e!1726742 tp!861890))))

(declare-fun e!1726743 () Bool)

(assert (=> b!2742319 (= e!1726743 (and tp!861892 tp!861884))))

(declare-fun b!2742320 () Bool)

(declare-fun res!1151386 () Bool)

(assert (=> b!2742320 (=> (not res!1151386) (not e!1726754))))

(declare-datatypes ((LexerInterface!4415 0))(
  ( (LexerInterfaceExt!4412 (__x!20239 Int)) (Lexer!4413) )
))
(declare-fun thiss!15207 () LexerInterface!4415)

(declare-fun rulesValidInductive!1687 (LexerInterface!4415 List!31567) Bool)

(assert (=> b!2742320 (= res!1151386 (rulesValidInductive!1687 thiss!15207 rulesArg!249))))

(declare-fun mapNonEmpty!16253 () Bool)

(declare-fun mapRes!16253 () Bool)

(declare-fun tp!861886 () Bool)

(declare-fun tp!861896 () Bool)

(assert (=> mapNonEmpty!16253 (= mapRes!16253 (and tp!861886 tp!861896))))

(declare-datatypes ((tuple3!4330 0))(
  ( (tuple3!4331 (_1!18256 Regex!7971) (_2!18256 Context!4378) (_3!2635 C!16100)) )
))
(declare-datatypes ((tuple2!31242 0))(
  ( (tuple2!31243 (_1!18257 tuple3!4330) (_2!18257 (InoxSet Context!4378))) )
))
(declare-datatypes ((List!31568 0))(
  ( (Nil!31468) (Cons!31468 (h!36888 tuple2!31242) (t!227656 List!31568)) )
))
(declare-datatypes ((array!12681 0))(
  ( (array!12682 (arr!5664 (Array (_ BitVec 32) List!31568)) (size!24308 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7118 0))(
  ( (LongMapFixedSize!7119 (defaultEntry!3944 Int) (mask!9281 (_ BitVec 32)) (extraKeys!3808 (_ BitVec 32)) (zeroValue!3818 List!31568) (minValue!3818 List!31568) (_size!7161 (_ BitVec 32)) (_keys!3859 array!12677) (_values!3840 array!12681) (_vacant!3620 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14045 0))(
  ( (Cell!14046 (v!33135 LongMapFixedSize!7118)) )
))
(declare-datatypes ((MutLongMap!3559 0))(
  ( (LongMap!3559 (underlying!7321 Cell!14045)) (MutLongMapExt!3558 (__x!20240 Int)) )
))
(declare-datatypes ((Cell!14047 0))(
  ( (Cell!14048 (v!33136 MutLongMap!3559)) )
))
(declare-datatypes ((Hashable!3475 0))(
  ( (HashableExt!3474 (__x!20241 Int)) )
))
(declare-datatypes ((MutableMap!3465 0))(
  ( (MutableMapExt!3464 (__x!20242 Int)) (HashMap!3465 (underlying!7322 Cell!14047) (hashF!5507 Hashable!3475) (_size!7162 (_ BitVec 32)) (defaultValue!3636 Int)) )
))
(declare-datatypes ((CacheDown!2286 0))(
  ( (CacheDown!2287 (cache!3608 MutableMap!3465)) )
))
(declare-fun cacheDown!646 () CacheDown!2286)

(declare-fun mapKey!16253 () (_ BitVec 32))

(declare-fun mapValue!16254 () List!31568)

(declare-fun mapRest!16254 () (Array (_ BitVec 32) List!31568))

(assert (=> mapNonEmpty!16253 (= (arr!5664 (_values!3840 (v!33135 (underlying!7321 (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))))) (store mapRest!16254 mapKey!16253 mapValue!16254))))

(declare-fun b!2742321 () Bool)

(declare-fun e!1726741 () Bool)

(declare-fun e!1726739 () Bool)

(declare-fun lt!971027 () MutLongMap!3559)

(get-info :version)

(assert (=> b!2742321 (= e!1726741 (and e!1726739 ((_ is LongMap!3559) lt!971027)))))

(assert (=> b!2742321 (= lt!971027 (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))))

(declare-fun b!2742322 () Bool)

(declare-fun e!1726753 () Bool)

(declare-fun e!1726749 () Bool)

(assert (=> b!2742322 (= e!1726753 e!1726749)))

(declare-fun mapIsEmpty!16253 () Bool)

(declare-fun mapRes!16254 () Bool)

(assert (=> mapIsEmpty!16253 mapRes!16254))

(declare-fun mapNonEmpty!16254 () Bool)

(declare-fun tp!861882 () Bool)

(declare-fun tp!861888 () Bool)

(assert (=> mapNonEmpty!16254 (= mapRes!16254 (and tp!861882 tp!861888))))

(declare-fun mapRest!16253 () (Array (_ BitVec 32) List!31564))

(declare-fun mapKey!16254 () (_ BitVec 32))

(declare-fun mapValue!16253 () List!31564)

(assert (=> mapNonEmpty!16254 (= (arr!5663 (_values!3839 (v!33133 (underlying!7319 (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))))) (store mapRest!16253 mapKey!16254 mapValue!16253))))

(declare-fun tp!861895 () Bool)

(declare-fun e!1726755 () Bool)

(declare-fun tp!861885 () Bool)

(declare-fun array_inv!4050 (array!12681) Bool)

(assert (=> b!2742323 (= e!1726749 (and tp!861891 tp!861895 tp!861885 (array_inv!4048 (_keys!3859 (v!33135 (underlying!7321 (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))))) (array_inv!4050 (_values!3840 (v!33135 (underlying!7321 (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))))) e!1726755))))

(declare-fun b!2742324 () Bool)

(declare-fun e!1726744 () Bool)

(declare-fun input!1326 () BalanceConc!19338)

(declare-fun tp!861899 () Bool)

(declare-fun inv!42809 (Conc!9862) Bool)

(assert (=> b!2742324 (= e!1726744 (and (inv!42809 (c!444745 input!1326)) tp!861899))))

(declare-fun e!1726735 () Bool)

(assert (=> b!2742325 (= e!1726735 (and e!1726741 tp!861898))))

(declare-fun b!2742326 () Bool)

(declare-fun e!1726738 () Bool)

(assert (=> b!2742326 (= e!1726738 e!1726746)))

(declare-fun b!2742327 () Bool)

(assert (=> b!2742327 (= e!1726754 (not true))))

(declare-fun lt!971028 () List!31566)

(declare-fun isPrefix!2500 (List!31566 List!31566) Bool)

(assert (=> b!2742327 (isPrefix!2500 lt!971028 lt!971028)))

(declare-datatypes ((Unit!45468 0))(
  ( (Unit!45469) )
))
(declare-fun lt!971029 () Unit!45468)

(declare-fun lemmaIsPrefixRefl!1626 (List!31566 List!31566) Unit!45468)

(assert (=> b!2742327 (= lt!971029 (lemmaIsPrefixRefl!1626 lt!971028 lt!971028))))

(declare-fun list!11971 (BalanceConc!19338) List!31566)

(assert (=> b!2742327 (= lt!971028 (list!11971 input!1326))))

(declare-fun b!2742328 () Bool)

(declare-fun tp!861897 () Bool)

(assert (=> b!2742328 (= e!1726755 (and tp!861897 mapRes!16253))))

(declare-fun condMapEmpty!16253 () Bool)

(declare-fun mapDefault!16254 () List!31568)

(assert (=> b!2742328 (= condMapEmpty!16253 (= (arr!5664 (_values!3840 (v!33135 (underlying!7321 (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31568)) mapDefault!16254)))))

(declare-fun b!2742329 () Bool)

(declare-fun e!1726745 () Bool)

(assert (=> b!2742329 (= e!1726745 e!1726747)))

(declare-fun b!2742330 () Bool)

(assert (=> b!2742330 (= e!1726739 e!1726753)))

(declare-fun b!2742331 () Bool)

(declare-fun res!1151384 () Bool)

(assert (=> b!2742331 (=> (not res!1151384) (not e!1726754))))

(declare-fun valid!2763 (CacheUp!2174) Bool)

(assert (=> b!2742331 (= res!1151384 (valid!2763 cacheUp!633))))

(declare-fun b!2742332 () Bool)

(declare-fun e!1726736 () Bool)

(declare-fun lt!971030 () MutLongMap!3558)

(assert (=> b!2742332 (= e!1726734 (and e!1726736 ((_ is LongMap!3558) lt!971030)))))

(assert (=> b!2742332 (= lt!971030 (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))))

(declare-fun b!2742333 () Bool)

(declare-fun res!1151385 () Bool)

(assert (=> b!2742333 (=> (not res!1151385) (not e!1726754))))

(declare-fun valid!2764 (CacheDown!2286) Bool)

(assert (=> b!2742333 (= res!1151385 (valid!2764 cacheDown!646))))

(declare-fun mapIsEmpty!16254 () Bool)

(assert (=> mapIsEmpty!16254 mapRes!16253))

(declare-fun b!2742334 () Bool)

(declare-fun e!1726750 () Bool)

(assert (=> b!2742334 (= e!1726750 e!1726735)))

(declare-fun b!2742335 () Bool)

(declare-fun tp!861893 () Bool)

(assert (=> b!2742335 (= e!1726740 (and tp!861893 mapRes!16254))))

(declare-fun condMapEmpty!16254 () Bool)

(declare-fun mapDefault!16253 () List!31564)

(assert (=> b!2742335 (= condMapEmpty!16254 (= (arr!5663 (_values!3839 (v!33133 (underlying!7319 (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31564)) mapDefault!16253)))))

(declare-fun res!1151383 () Bool)

(assert (=> start!265844 (=> (not res!1151383) (not e!1726754))))

(assert (=> start!265844 (= res!1151383 ((_ is Lexer!4413) thiss!15207))))

(assert (=> start!265844 e!1726754))

(declare-fun inv!42810 (CacheDown!2286) Bool)

(assert (=> start!265844 (and (inv!42810 cacheDown!646) e!1726750)))

(declare-fun inv!42811 (BalanceConc!19338) Bool)

(assert (=> start!265844 (and (inv!42811 input!1326) e!1726744)))

(assert (=> start!265844 e!1726737))

(declare-fun inv!42812 (CacheUp!2174) Bool)

(assert (=> start!265844 (and (inv!42812 cacheUp!633) e!1726745)))

(assert (=> start!265844 true))

(declare-fun b!2742336 () Bool)

(assert (=> b!2742336 (= e!1726736 e!1726738)))

(declare-fun tp!861881 () Bool)

(declare-fun b!2742337 () Bool)

(declare-fun inv!42808 (String!35105) Bool)

(declare-fun inv!42813 (TokenValueInjection!9522) Bool)

(assert (=> b!2742337 (= e!1726742 (and tp!861881 (inv!42808 (tag!5323 (h!36887 rulesArg!249))) (inv!42813 (transformation!4819 (h!36887 rulesArg!249))) e!1726743))))

(assert (= (and start!265844 res!1151383) b!2742320))

(assert (= (and b!2742320 res!1151386) b!2742316))

(assert (= (and b!2742316 res!1151387) b!2742331))

(assert (= (and b!2742331 res!1151384) b!2742333))

(assert (= (and b!2742333 res!1151385) b!2742327))

(assert (= (and b!2742328 condMapEmpty!16253) mapIsEmpty!16254))

(assert (= (and b!2742328 (not condMapEmpty!16253)) mapNonEmpty!16253))

(assert (= b!2742323 b!2742328))

(assert (= b!2742322 b!2742323))

(assert (= b!2742330 b!2742322))

(assert (= (and b!2742321 ((_ is LongMap!3559) (v!33136 (underlying!7322 (cache!3608 cacheDown!646))))) b!2742330))

(assert (= b!2742325 b!2742321))

(assert (= (and b!2742334 ((_ is HashMap!3465) (cache!3608 cacheDown!646))) b!2742325))

(assert (= start!265844 b!2742334))

(assert (= start!265844 b!2742324))

(assert (= b!2742337 b!2742319))

(assert (= b!2742318 b!2742337))

(assert (= (and start!265844 ((_ is Cons!31467) rulesArg!249)) b!2742318))

(assert (= (and b!2742335 condMapEmpty!16254) mapIsEmpty!16253))

(assert (= (and b!2742335 (not condMapEmpty!16254)) mapNonEmpty!16254))

(assert (= b!2742315 b!2742335))

(assert (= b!2742326 b!2742315))

(assert (= b!2742336 b!2742326))

(assert (= (and b!2742332 ((_ is LongMap!3558) (v!33134 (underlying!7320 (cache!3607 cacheUp!633))))) b!2742336))

(assert (= b!2742317 b!2742332))

(assert (= (and b!2742329 ((_ is HashMap!3464) (cache!3607 cacheUp!633))) b!2742317))

(assert (= start!265844 b!2742329))

(declare-fun m!3160313 () Bool)

(assert (=> b!2742331 m!3160313))

(declare-fun m!3160315 () Bool)

(assert (=> b!2742315 m!3160315))

(declare-fun m!3160317 () Bool)

(assert (=> b!2742315 m!3160317))

(declare-fun m!3160319 () Bool)

(assert (=> b!2742316 m!3160319))

(declare-fun m!3160321 () Bool)

(assert (=> mapNonEmpty!16254 m!3160321))

(declare-fun m!3160323 () Bool)

(assert (=> b!2742320 m!3160323))

(declare-fun m!3160325 () Bool)

(assert (=> b!2742327 m!3160325))

(declare-fun m!3160327 () Bool)

(assert (=> b!2742327 m!3160327))

(declare-fun m!3160329 () Bool)

(assert (=> b!2742327 m!3160329))

(declare-fun m!3160331 () Bool)

(assert (=> start!265844 m!3160331))

(declare-fun m!3160333 () Bool)

(assert (=> start!265844 m!3160333))

(declare-fun m!3160335 () Bool)

(assert (=> start!265844 m!3160335))

(declare-fun m!3160337 () Bool)

(assert (=> b!2742324 m!3160337))

(declare-fun m!3160339 () Bool)

(assert (=> b!2742337 m!3160339))

(declare-fun m!3160341 () Bool)

(assert (=> b!2742337 m!3160341))

(declare-fun m!3160343 () Bool)

(assert (=> b!2742333 m!3160343))

(declare-fun m!3160345 () Bool)

(assert (=> b!2742323 m!3160345))

(declare-fun m!3160347 () Bool)

(assert (=> b!2742323 m!3160347))

(declare-fun m!3160349 () Bool)

(assert (=> mapNonEmpty!16253 m!3160349))

(check-sat (not b!2742318) (not b_next!77657) (not b!2742324) (not b_next!77661) (not b!2742323) (not b!2742335) (not b!2742320) (not mapNonEmpty!16253) (not b!2742333) (not b!2742327) (not b_next!77667) (not b_next!77663) b_and!201679 (not b!2742337) (not b!2742331) (not b!2742316) (not mapNonEmpty!16254) (not b!2742315) (not start!265844) b_and!201677 b_and!201683 (not b!2742328) (not b_next!77665) (not b_next!77659) b_and!201673 b_and!201675 b_and!201681)
(check-sat (not b_next!77657) b_and!201679 (not b_next!77661) b_and!201677 b_and!201683 (not b_next!77667) (not b_next!77663) (not b_next!77665) (not b_next!77659) b_and!201673 b_and!201675 b_and!201681)

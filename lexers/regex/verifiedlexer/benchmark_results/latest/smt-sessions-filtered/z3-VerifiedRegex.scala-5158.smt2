; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265932 () Bool)

(assert start!265932)

(declare-fun b!2743365 () Bool)

(declare-fun b_free!77081 () Bool)

(declare-fun b_next!77785 () Bool)

(assert (=> b!2743365 (= b_free!77081 (not b_next!77785))))

(declare-fun tp!862762 () Bool)

(declare-fun b_and!201801 () Bool)

(assert (=> b!2743365 (= tp!862762 b_and!201801)))

(declare-fun b!2743377 () Bool)

(declare-fun b_free!77083 () Bool)

(declare-fun b_next!77787 () Bool)

(assert (=> b!2743377 (= b_free!77083 (not b_next!77787))))

(declare-fun tp!862760 () Bool)

(declare-fun b_and!201803 () Bool)

(assert (=> b!2743377 (= tp!862760 b_and!201803)))

(declare-fun b!2743364 () Bool)

(declare-fun b_free!77085 () Bool)

(declare-fun b_next!77789 () Bool)

(assert (=> b!2743364 (= b_free!77085 (not b_next!77789))))

(declare-fun tp!862761 () Bool)

(declare-fun b_and!201805 () Bool)

(assert (=> b!2743364 (= tp!862761 b_and!201805)))

(declare-fun b!2743368 () Bool)

(declare-fun b_free!77087 () Bool)

(declare-fun b_next!77791 () Bool)

(assert (=> b!2743368 (= b_free!77087 (not b_next!77791))))

(declare-fun tp!862756 () Bool)

(declare-fun b_and!201807 () Bool)

(assert (=> b!2743368 (= tp!862756 b_and!201807)))

(declare-fun b_free!77089 () Bool)

(declare-fun b_next!77793 () Bool)

(assert (=> b!2743368 (= b_free!77089 (not b_next!77793))))

(declare-fun tp!862763 () Bool)

(declare-fun b_and!201809 () Bool)

(assert (=> b!2743368 (= tp!862763 b_and!201809)))

(declare-fun b!2743373 () Bool)

(declare-fun b_free!77091 () Bool)

(declare-fun b_next!77795 () Bool)

(assert (=> b!2743373 (= b_free!77091 (not b_next!77795))))

(declare-fun tp!862757 () Bool)

(declare-fun b_and!201811 () Bool)

(assert (=> b!2743373 (= tp!862757 b_and!201811)))

(declare-fun b!2743355 () Bool)

(declare-fun res!1151640 () Bool)

(declare-fun e!1727682 () Bool)

(assert (=> b!2743355 (=> (not res!1151640) (not e!1727682))))

(declare-datatypes ((array!12739 0))(
  ( (array!12740 (arr!5690 (Array (_ BitVec 32) (_ BitVec 64))) (size!24338 (_ BitVec 32))) )
))
(declare-datatypes ((C!16120 0))(
  ( (C!16121 (val!9994 Int)) )
))
(declare-datatypes ((Regex!7981 0))(
  ( (ElementMatch!7981 (c!444769 C!16120)) (Concat!13031 (regOne!16474 Regex!7981) (regTwo!16474 Regex!7981)) (EmptyExpr!7981) (Star!7981 (reg!8310 Regex!7981)) (EmptyLang!7981) (Union!7981 (regOne!16475 Regex!7981) (regTwo!16475 Regex!7981)) )
))
(declare-datatypes ((List!31618 0))(
  ( (Nil!31518) (Cons!31518 (h!36938 Regex!7981) (t!227706 List!31618)) )
))
(declare-datatypes ((Context!4398 0))(
  ( (Context!4399 (exprs!2699 List!31618)) )
))
(declare-datatypes ((tuple2!31294 0))(
  ( (tuple2!31295 (_1!18294 Context!4398) (_2!18294 C!16120)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31296 0))(
  ( (tuple2!31297 (_1!18295 tuple2!31294) (_2!18295 (InoxSet Context!4398))) )
))
(declare-datatypes ((List!31619 0))(
  ( (Nil!31519) (Cons!31519 (h!36939 tuple2!31296) (t!227707 List!31619)) )
))
(declare-datatypes ((array!12741 0))(
  ( (array!12742 (arr!5691 (Array (_ BitVec 32) List!31619)) (size!24339 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7152 0))(
  ( (LongMapFixedSize!7153 (defaultEntry!3961 Int) (mask!9303 (_ BitVec 32)) (extraKeys!3825 (_ BitVec 32)) (zeroValue!3835 List!31619) (minValue!3835 List!31619) (_size!7195 (_ BitVec 32)) (_keys!3876 array!12739) (_values!3857 array!12741) (_vacant!3637 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14113 0))(
  ( (Cell!14114 (v!33171 LongMapFixedSize!7152)) )
))
(declare-datatypes ((MutLongMap!3576 0))(
  ( (LongMap!3576 (underlying!7355 Cell!14113)) (MutLongMapExt!3575 (__x!20306 Int)) )
))
(declare-datatypes ((Cell!14115 0))(
  ( (Cell!14116 (v!33172 MutLongMap!3576)) )
))
(declare-datatypes ((Hashable!3492 0))(
  ( (HashableExt!3491 (__x!20307 Int)) )
))
(declare-datatypes ((MutableMap!3482 0))(
  ( (MutableMapExt!3481 (__x!20308 Int)) (HashMap!3482 (underlying!7356 Cell!14115) (hashF!5524 Hashable!3492) (_size!7196 (_ BitVec 32)) (defaultValue!3653 Int)) )
))
(declare-datatypes ((CacheUp!2190 0))(
  ( (CacheUp!2191 (cache!3625 MutableMap!3482)) )
))
(declare-fun cacheUp!633 () CacheUp!2190)

(declare-fun valid!2775 (CacheUp!2190) Bool)

(assert (=> b!2743355 (= res!1151640 (valid!2775 cacheUp!633))))

(declare-fun b!2743356 () Bool)

(declare-fun e!1727691 () Bool)

(declare-fun tp!862759 () Bool)

(declare-fun mapRes!16325 () Bool)

(assert (=> b!2743356 (= e!1727691 (and tp!862759 mapRes!16325))))

(declare-fun condMapEmpty!16326 () Bool)

(declare-datatypes ((tuple3!4354 0))(
  ( (tuple3!4355 (_1!18296 Regex!7981) (_2!18296 Context!4398) (_3!2647 C!16120)) )
))
(declare-datatypes ((tuple2!31298 0))(
  ( (tuple2!31299 (_1!18297 tuple3!4354) (_2!18297 (InoxSet Context!4398))) )
))
(declare-datatypes ((List!31620 0))(
  ( (Nil!31520) (Cons!31520 (h!36940 tuple2!31298) (t!227708 List!31620)) )
))
(declare-datatypes ((array!12743 0))(
  ( (array!12744 (arr!5692 (Array (_ BitVec 32) List!31620)) (size!24340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7154 0))(
  ( (LongMapFixedSize!7155 (defaultEntry!3962 Int) (mask!9304 (_ BitVec 32)) (extraKeys!3826 (_ BitVec 32)) (zeroValue!3836 List!31620) (minValue!3836 List!31620) (_size!7197 (_ BitVec 32)) (_keys!3877 array!12739) (_values!3858 array!12743) (_vacant!3638 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14117 0))(
  ( (Cell!14118 (v!33173 LongMapFixedSize!7154)) )
))
(declare-datatypes ((MutLongMap!3577 0))(
  ( (LongMap!3577 (underlying!7357 Cell!14117)) (MutLongMapExt!3576 (__x!20309 Int)) )
))
(declare-datatypes ((Cell!14119 0))(
  ( (Cell!14120 (v!33174 MutLongMap!3577)) )
))
(declare-datatypes ((Hashable!3493 0))(
  ( (HashableExt!3492 (__x!20310 Int)) )
))
(declare-datatypes ((MutableMap!3483 0))(
  ( (MutableMapExt!3482 (__x!20311 Int)) (HashMap!3483 (underlying!7358 Cell!14119) (hashF!5525 Hashable!3493) (_size!7198 (_ BitVec 32)) (defaultValue!3654 Int)) )
))
(declare-datatypes ((CacheDown!2306 0))(
  ( (CacheDown!2307 (cache!3626 MutableMap!3483)) )
))
(declare-fun cacheDown!646 () CacheDown!2306)

(declare-fun mapDefault!16325 () List!31620)

(assert (=> b!2743356 (= condMapEmpty!16326 (= (arr!5692 (_values!3858 (v!33173 (underlying!7357 (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31620)) mapDefault!16325)))))

(declare-fun b!2743357 () Bool)

(declare-fun res!1151642 () Bool)

(assert (=> b!2743357 (=> (not res!1151642) (not e!1727682))))

(declare-datatypes ((List!31621 0))(
  ( (Nil!31521) (Cons!31521 (h!36941 (_ BitVec 16)) (t!227709 List!31621)) )
))
(declare-datatypes ((TokenValue!5050 0))(
  ( (FloatLiteralValue!10100 (text!35795 List!31621)) (TokenValueExt!5049 (__x!20312 Int)) (Broken!25250 (value!155176 List!31621)) (Object!5149) (End!5050) (Def!5050) (Underscore!5050) (Match!5050) (Else!5050) (Error!5050) (Case!5050) (If!5050) (Extends!5050) (Abstract!5050) (Class!5050) (Val!5050) (DelimiterValue!10100 (del!5110 List!31621)) (KeywordValue!5056 (value!155177 List!31621)) (CommentValue!10100 (value!155178 List!31621)) (WhitespaceValue!10100 (value!155179 List!31621)) (IndentationValue!5050 (value!155180 List!31621)) (String!35151) (Int32!5050) (Broken!25251 (value!155181 List!31621)) (Boolean!5051) (Unit!45490) (OperatorValue!5053 (op!5110 List!31621)) (IdentifierValue!10100 (value!155182 List!31621)) (IdentifierValue!10101 (value!155183 List!31621)) (WhitespaceValue!10101 (value!155184 List!31621)) (True!10100) (False!10100) (Broken!25252 (value!155185 List!31621)) (Broken!25253 (value!155186 List!31621)) (True!10101) (RightBrace!5050) (RightBracket!5050) (Colon!5050) (Null!5050) (Comma!5050) (LeftBracket!5050) (False!10101) (LeftBrace!5050) (ImaginaryLiteralValue!5050 (text!35796 List!31621)) (StringLiteralValue!15150 (value!155187 List!31621)) (EOFValue!5050 (value!155188 List!31621)) (IdentValue!5050 (value!155189 List!31621)) (DelimiterValue!10101 (value!155190 List!31621)) (DedentValue!5050 (value!155191 List!31621)) (NewLineValue!5050 (value!155192 List!31621)) (IntegerValue!15150 (value!155193 (_ BitVec 32)) (text!35797 List!31621)) (IntegerValue!15151 (value!155194 Int) (text!35798 List!31621)) (Times!5050) (Or!5050) (Equal!5050) (Minus!5050) (Broken!25254 (value!155195 List!31621)) (And!5050) (Div!5050) (LessEqual!5050) (Mod!5050) (Concat!13032) (Not!5050) (Plus!5050) (SpaceValue!5050 (value!155196 List!31621)) (IntegerValue!15152 (value!155197 Int) (text!35799 List!31621)) (StringLiteralValue!15151 (text!35800 List!31621)) (FloatLiteralValue!10101 (text!35801 List!31621)) (BytesLiteralValue!5050 (value!155198 List!31621)) (CommentValue!10101 (value!155199 List!31621)) (StringLiteralValue!15152 (value!155200 List!31621)) (ErrorTokenValue!5050 (msg!5111 List!31621)) )
))
(declare-datatypes ((List!31622 0))(
  ( (Nil!31522) (Cons!31522 (h!36942 C!16120) (t!227710 List!31622)) )
))
(declare-datatypes ((IArray!19747 0))(
  ( (IArray!19748 (innerList!9931 List!31622)) )
))
(declare-datatypes ((Conc!9871 0))(
  ( (Node!9871 (left!24199 Conc!9871) (right!24529 Conc!9871) (csize!19972 Int) (cheight!10082 Int)) (Leaf!15030 (xs!12978 IArray!19747) (csize!19973 Int)) (Empty!9871) )
))
(declare-datatypes ((BalanceConc!19356 0))(
  ( (BalanceConc!19357 (c!444770 Conc!9871)) )
))
(declare-datatypes ((TokenValueInjection!9540 0))(
  ( (TokenValueInjection!9541 (toValue!6826 Int) (toChars!6685 Int)) )
))
(declare-datatypes ((String!35152 0))(
  ( (String!35153 (value!155201 String)) )
))
(declare-datatypes ((Rule!9456 0))(
  ( (Rule!9457 (regex!4828 Regex!7981) (tag!5332 String!35152) (isSeparator!4828 Bool) (transformation!4828 TokenValueInjection!9540)) )
))
(declare-datatypes ((List!31623 0))(
  ( (Nil!31523) (Cons!31523 (h!36943 Rule!9456) (t!227711 List!31623)) )
))
(declare-fun rulesArg!249 () List!31623)

(declare-fun isEmpty!18016 (List!31623) Bool)

(assert (=> b!2743357 (= res!1151642 (not (isEmpty!18016 rulesArg!249)))))

(declare-fun tp!862765 () Bool)

(declare-fun e!1727686 () Bool)

(declare-fun e!1727679 () Bool)

(declare-fun b!2743358 () Bool)

(declare-fun inv!42860 (String!35152) Bool)

(declare-fun inv!42862 (TokenValueInjection!9540) Bool)

(assert (=> b!2743358 (= e!1727679 (and tp!862765 (inv!42860 (tag!5332 (h!36943 rulesArg!249))) (inv!42862 (transformation!4828 (h!36943 rulesArg!249))) e!1727686))))

(declare-fun b!2743359 () Bool)

(declare-fun e!1727676 () Bool)

(declare-fun input!1326 () BalanceConc!19356)

(declare-fun tp!862755 () Bool)

(declare-fun inv!42863 (Conc!9871) Bool)

(assert (=> b!2743359 (= e!1727676 (and (inv!42863 (c!444770 input!1326)) tp!862755))))

(declare-fun b!2743360 () Bool)

(declare-fun e!1727675 () Bool)

(declare-fun e!1727697 () Bool)

(assert (=> b!2743360 (= e!1727675 e!1727697)))

(declare-fun b!2743361 () Bool)

(declare-fun e!1727681 () Bool)

(declare-fun e!1727683 () Bool)

(declare-fun lt!971186 () MutLongMap!3576)

(get-info :version)

(assert (=> b!2743361 (= e!1727681 (and e!1727683 ((_ is LongMap!3576) lt!971186)))))

(assert (=> b!2743361 (= lt!971186 (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))))

(declare-fun mapIsEmpty!16325 () Bool)

(assert (=> mapIsEmpty!16325 mapRes!16325))

(declare-fun mapNonEmpty!16325 () Bool)

(declare-fun mapRes!16326 () Bool)

(declare-fun tp!862764 () Bool)

(declare-fun tp!862754 () Bool)

(assert (=> mapNonEmpty!16325 (= mapRes!16326 (and tp!862764 tp!862754))))

(declare-fun mapValue!16325 () List!31619)

(declare-fun mapRest!16326 () (Array (_ BitVec 32) List!31619))

(declare-fun mapKey!16326 () (_ BitVec 32))

(assert (=> mapNonEmpty!16325 (= (arr!5691 (_values!3857 (v!33171 (underlying!7355 (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))))) (store mapRest!16326 mapKey!16326 mapValue!16325))))

(declare-fun b!2743362 () Bool)

(declare-fun e!1727695 () Bool)

(declare-fun e!1727678 () Bool)

(declare-fun lt!971184 () MutLongMap!3577)

(assert (=> b!2743362 (= e!1727695 (and e!1727678 ((_ is LongMap!3577) lt!971184)))))

(assert (=> b!2743362 (= lt!971184 (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))))

(declare-fun b!2743363 () Bool)

(declare-fun res!1151641 () Bool)

(assert (=> b!2743363 (=> (not res!1151641) (not e!1727682))))

(declare-fun valid!2776 (CacheDown!2306) Bool)

(assert (=> b!2743363 (= res!1151641 (valid!2776 cacheDown!646))))

(declare-fun e!1727690 () Bool)

(declare-fun tp!862752 () Bool)

(declare-fun tp!862766 () Bool)

(declare-fun array_inv!4063 (array!12739) Bool)

(declare-fun array_inv!4064 (array!12743) Bool)

(assert (=> b!2743364 (= e!1727690 (and tp!862761 tp!862752 tp!862766 (array_inv!4063 (_keys!3877 (v!33173 (underlying!7357 (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))))) (array_inv!4064 (_values!3858 (v!33173 (underlying!7357 (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))))) e!1727691))))

(declare-fun e!1727692 () Bool)

(assert (=> b!2743365 (= e!1727692 (and e!1727695 tp!862762))))

(declare-fun b!2743354 () Bool)

(declare-fun e!1727696 () Bool)

(assert (=> b!2743354 (= e!1727696 true)))

(declare-fun lt!971185 () Bool)

(declare-datatypes ((LexerInterface!4423 0))(
  ( (LexerInterfaceExt!4420 (__x!20313 Int)) (Lexer!4421) )
))
(declare-fun thiss!15207 () LexerInterface!4423)

(declare-fun ruleValid!1581 (LexerInterface!4423 Rule!9456) Bool)

(assert (=> b!2743354 (= lt!971185 (ruleValid!1581 thiss!15207 (h!36943 rulesArg!249)))))

(declare-fun res!1151643 () Bool)

(assert (=> start!265932 (=> (not res!1151643) (not e!1727682))))

(assert (=> start!265932 (= res!1151643 ((_ is Lexer!4421) thiss!15207))))

(assert (=> start!265932 e!1727682))

(declare-fun e!1727688 () Bool)

(declare-fun inv!42864 (CacheDown!2306) Bool)

(assert (=> start!265932 (and (inv!42864 cacheDown!646) e!1727688)))

(declare-fun inv!42865 (BalanceConc!19356) Bool)

(assert (=> start!265932 (and (inv!42865 input!1326) e!1727676)))

(declare-fun e!1727693 () Bool)

(assert (=> start!265932 e!1727693))

(declare-fun e!1727687 () Bool)

(declare-fun inv!42866 (CacheUp!2190) Bool)

(assert (=> start!265932 (and (inv!42866 cacheUp!633) e!1727687)))

(assert (=> start!265932 true))

(declare-fun b!2743366 () Bool)

(assert (=> b!2743366 (= e!1727688 e!1727692)))

(declare-fun b!2743367 () Bool)

(assert (=> b!2743367 (= e!1727683 e!1727675)))

(assert (=> b!2743368 (= e!1727686 (and tp!862756 tp!862763))))

(declare-fun b!2743369 () Bool)

(declare-fun e!1727694 () Bool)

(declare-fun tp!862769 () Bool)

(assert (=> b!2743369 (= e!1727694 (and tp!862769 mapRes!16326))))

(declare-fun condMapEmpty!16325 () Bool)

(declare-fun mapDefault!16326 () List!31619)

(assert (=> b!2743369 (= condMapEmpty!16325 (= (arr!5691 (_values!3857 (v!33171 (underlying!7355 (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31619)) mapDefault!16326)))))

(declare-fun b!2743370 () Bool)

(declare-fun res!1151644 () Bool)

(assert (=> b!2743370 (=> (not res!1151644) (not e!1727682))))

(declare-fun rulesValidInductive!1694 (LexerInterface!4423 List!31623) Bool)

(assert (=> b!2743370 (= res!1151644 (rulesValidInductive!1694 thiss!15207 rulesArg!249))))

(declare-fun b!2743371 () Bool)

(assert (=> b!2743371 (= e!1727682 (not e!1727696))))

(declare-fun res!1151645 () Bool)

(assert (=> b!2743371 (=> res!1151645 e!1727696)))

(assert (=> b!2743371 (= res!1151645 (or (and ((_ is Cons!31523) rulesArg!249) ((_ is Nil!31523) (t!227711 rulesArg!249))) (not ((_ is Cons!31523) rulesArg!249))))))

(declare-fun lt!971183 () List!31622)

(declare-fun isPrefix!2507 (List!31622 List!31622) Bool)

(assert (=> b!2743371 (isPrefix!2507 lt!971183 lt!971183)))

(declare-datatypes ((Unit!45491 0))(
  ( (Unit!45492) )
))
(declare-fun lt!971182 () Unit!45491)

(declare-fun lemmaIsPrefixRefl!1633 (List!31622 List!31622) Unit!45491)

(assert (=> b!2743371 (= lt!971182 (lemmaIsPrefixRefl!1633 lt!971183 lt!971183))))

(declare-fun list!11980 (BalanceConc!19356) List!31622)

(assert (=> b!2743371 (= lt!971183 (list!11980 input!1326))))

(declare-fun mapIsEmpty!16326 () Bool)

(assert (=> mapIsEmpty!16326 mapRes!16326))

(declare-fun b!2743372 () Bool)

(declare-fun tp!862758 () Bool)

(assert (=> b!2743372 (= e!1727693 (and e!1727679 tp!862758))))

(declare-fun tp!862753 () Bool)

(declare-fun tp!862751 () Bool)

(declare-fun array_inv!4065 (array!12741) Bool)

(assert (=> b!2743373 (= e!1727697 (and tp!862757 tp!862751 tp!862753 (array_inv!4063 (_keys!3876 (v!33171 (underlying!7355 (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))))) (array_inv!4065 (_values!3857 (v!33171 (underlying!7355 (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))))) e!1727694))))

(declare-fun mapNonEmpty!16326 () Bool)

(declare-fun tp!862768 () Bool)

(declare-fun tp!862767 () Bool)

(assert (=> mapNonEmpty!16326 (= mapRes!16325 (and tp!862768 tp!862767))))

(declare-fun mapRest!16325 () (Array (_ BitVec 32) List!31620))

(declare-fun mapValue!16326 () List!31620)

(declare-fun mapKey!16325 () (_ BitVec 32))

(assert (=> mapNonEmpty!16326 (= (arr!5692 (_values!3858 (v!33173 (underlying!7357 (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))))) (store mapRest!16325 mapKey!16325 mapValue!16326))))

(declare-fun b!2743374 () Bool)

(declare-fun e!1727677 () Bool)

(assert (=> b!2743374 (= e!1727678 e!1727677)))

(declare-fun b!2743375 () Bool)

(assert (=> b!2743375 (= e!1727677 e!1727690)))

(declare-fun b!2743376 () Bool)

(declare-fun e!1727684 () Bool)

(assert (=> b!2743376 (= e!1727687 e!1727684)))

(assert (=> b!2743377 (= e!1727684 (and e!1727681 tp!862760))))

(assert (= (and start!265932 res!1151643) b!2743370))

(assert (= (and b!2743370 res!1151644) b!2743357))

(assert (= (and b!2743357 res!1151642) b!2743355))

(assert (= (and b!2743355 res!1151640) b!2743363))

(assert (= (and b!2743363 res!1151641) b!2743371))

(assert (= (and b!2743371 (not res!1151645)) b!2743354))

(assert (= (and b!2743356 condMapEmpty!16326) mapIsEmpty!16325))

(assert (= (and b!2743356 (not condMapEmpty!16326)) mapNonEmpty!16326))

(assert (= b!2743364 b!2743356))

(assert (= b!2743375 b!2743364))

(assert (= b!2743374 b!2743375))

(assert (= (and b!2743362 ((_ is LongMap!3577) (v!33174 (underlying!7358 (cache!3626 cacheDown!646))))) b!2743374))

(assert (= b!2743365 b!2743362))

(assert (= (and b!2743366 ((_ is HashMap!3483) (cache!3626 cacheDown!646))) b!2743365))

(assert (= start!265932 b!2743366))

(assert (= start!265932 b!2743359))

(assert (= b!2743358 b!2743368))

(assert (= b!2743372 b!2743358))

(assert (= (and start!265932 ((_ is Cons!31523) rulesArg!249)) b!2743372))

(assert (= (and b!2743369 condMapEmpty!16325) mapIsEmpty!16326))

(assert (= (and b!2743369 (not condMapEmpty!16325)) mapNonEmpty!16325))

(assert (= b!2743373 b!2743369))

(assert (= b!2743360 b!2743373))

(assert (= b!2743367 b!2743360))

(assert (= (and b!2743361 ((_ is LongMap!3576) (v!33172 (underlying!7356 (cache!3625 cacheUp!633))))) b!2743367))

(assert (= b!2743377 b!2743361))

(assert (= (and b!2743376 ((_ is HashMap!3482) (cache!3625 cacheUp!633))) b!2743377))

(assert (= start!265932 b!2743376))

(declare-fun m!3160903 () Bool)

(assert (=> mapNonEmpty!16325 m!3160903))

(declare-fun m!3160905 () Bool)

(assert (=> b!2743364 m!3160905))

(declare-fun m!3160907 () Bool)

(assert (=> b!2743364 m!3160907))

(declare-fun m!3160909 () Bool)

(assert (=> start!265932 m!3160909))

(declare-fun m!3160911 () Bool)

(assert (=> start!265932 m!3160911))

(declare-fun m!3160913 () Bool)

(assert (=> start!265932 m!3160913))

(declare-fun m!3160915 () Bool)

(assert (=> b!2743373 m!3160915))

(declare-fun m!3160917 () Bool)

(assert (=> b!2743373 m!3160917))

(declare-fun m!3160919 () Bool)

(assert (=> b!2743371 m!3160919))

(declare-fun m!3160921 () Bool)

(assert (=> b!2743371 m!3160921))

(declare-fun m!3160923 () Bool)

(assert (=> b!2743371 m!3160923))

(declare-fun m!3160925 () Bool)

(assert (=> b!2743358 m!3160925))

(declare-fun m!3160927 () Bool)

(assert (=> b!2743358 m!3160927))

(declare-fun m!3160929 () Bool)

(assert (=> b!2743355 m!3160929))

(declare-fun m!3160931 () Bool)

(assert (=> b!2743370 m!3160931))

(declare-fun m!3160933 () Bool)

(assert (=> b!2743363 m!3160933))

(declare-fun m!3160935 () Bool)

(assert (=> mapNonEmpty!16326 m!3160935))

(declare-fun m!3160937 () Bool)

(assert (=> b!2743357 m!3160937))

(declare-fun m!3160939 () Bool)

(assert (=> b!2743359 m!3160939))

(declare-fun m!3160941 () Bool)

(assert (=> b!2743354 m!3160941))

(check-sat (not b!2743363) (not b!2743359) (not b_next!77785) (not b_next!77791) b_and!201805 (not b_next!77787) b_and!201807 (not b!2743373) (not b!2743372) (not b!2743354) b_and!201801 (not b!2743364) b_and!201809 (not b_next!77793) (not b!2743357) (not start!265932) (not mapNonEmpty!16326) (not b_next!77789) b_and!201811 (not b!2743370) b_and!201803 (not b!2743358) (not b!2743369) (not mapNonEmpty!16325) (not b!2743371) (not b!2743356) (not b_next!77795) (not b!2743355))
(check-sat (not b_next!77789) (not b_next!77785) b_and!201811 (not b_next!77791) b_and!201805 b_and!201803 (not b_next!77787) b_and!201807 b_and!201801 b_and!201809 (not b_next!77793) (not b_next!77795))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411590 () Bool)

(assert start!411590)

(declare-fun b!4283616 () Bool)

(declare-fun b_free!126811 () Bool)

(declare-fun b_next!127515 () Bool)

(assert (=> b!4283616 (= b_free!126811 (not b_next!127515))))

(declare-fun tp!1310552 () Bool)

(declare-fun b_and!338013 () Bool)

(assert (=> b!4283616 (= tp!1310552 b_and!338013)))

(declare-fun b!4283637 () Bool)

(declare-fun b_free!126813 () Bool)

(declare-fun b_next!127517 () Bool)

(assert (=> b!4283637 (= b_free!126813 (not b_next!127517))))

(declare-fun tp!1310548 () Bool)

(declare-fun b_and!338015 () Bool)

(assert (=> b!4283637 (= tp!1310548 b_and!338015)))

(declare-fun b!4283608 () Bool)

(declare-fun b_free!126815 () Bool)

(declare-fun b_next!127519 () Bool)

(assert (=> b!4283608 (= b_free!126815 (not b_next!127519))))

(declare-fun tp!1310547 () Bool)

(declare-fun b_and!338017 () Bool)

(assert (=> b!4283608 (= tp!1310547 b_and!338017)))

(declare-fun b!4283618 () Bool)

(declare-fun b_free!126817 () Bool)

(declare-fun b_next!127521 () Bool)

(assert (=> b!4283618 (= b_free!126817 (not b_next!127521))))

(declare-fun tp!1310540 () Bool)

(declare-fun b_and!338019 () Bool)

(assert (=> b!4283618 (= tp!1310540 b_and!338019)))

(declare-fun b!4283606 () Bool)

(declare-fun b_free!126819 () Bool)

(declare-fun b_next!127523 () Bool)

(assert (=> b!4283606 (= b_free!126819 (not b_next!127523))))

(declare-fun tp!1310537 () Bool)

(declare-fun b_and!338021 () Bool)

(assert (=> b!4283606 (= tp!1310537 b_and!338021)))

(declare-fun b_free!126821 () Bool)

(declare-fun b_next!127525 () Bool)

(assert (=> b!4283606 (= b_free!126821 (not b_next!127525))))

(declare-fun tp!1310553 () Bool)

(declare-fun b_and!338023 () Bool)

(assert (=> b!4283606 (= tp!1310553 b_and!338023)))

(declare-fun b!4283617 () Bool)

(declare-fun b_free!126823 () Bool)

(declare-fun b_next!127527 () Bool)

(assert (=> b!4283617 (= b_free!126823 (not b_next!127527))))

(declare-fun tp!1310545 () Bool)

(declare-fun b_and!338025 () Bool)

(assert (=> b!4283617 (= tp!1310545 b_and!338025)))

(declare-fun b!4283605 () Bool)

(declare-fun b_free!126825 () Bool)

(declare-fun b_next!127529 () Bool)

(assert (=> b!4283605 (= b_free!126825 (not b_next!127529))))

(declare-fun tp!1310535 () Bool)

(declare-fun b_and!338027 () Bool)

(assert (=> b!4283605 (= tp!1310535 b_and!338027)))

(declare-fun tp!1310549 () Bool)

(declare-fun e!2659539 () Bool)

(declare-fun tp!1310543 () Bool)

(declare-fun e!2659535 () Bool)

(declare-datatypes ((C!26008 0))(
  ( (C!26009 (val!15330 Int)) )
))
(declare-datatypes ((Regex!12905 0))(
  ( (ElementMatch!12905 (c!730015 C!26008)) (Concat!21213 (regOne!26322 Regex!12905) (regTwo!26322 Regex!12905)) (EmptyExpr!12905) (Star!12905 (reg!13234 Regex!12905)) (EmptyLang!12905) (Union!12905 (regOne!26323 Regex!12905) (regTwo!26323 Regex!12905)) )
))
(declare-datatypes ((List!47569 0))(
  ( (Nil!47445) (Cons!47445 (h!52865 Regex!12905) (t!354158 List!47569)) )
))
(declare-datatypes ((Context!5590 0))(
  ( (Context!5591 (exprs!3295 List!47569)) )
))
(declare-datatypes ((Hashable!4185 0))(
  ( (HashableExt!4184 (__x!28813 Int)) )
))
(declare-datatypes ((tuple3!5340 0))(
  ( (tuple3!5341 (_1!25545 Regex!12905) (_2!25545 Context!5590) (_3!3142 C!26008)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44806 0))(
  ( (tuple2!44807 (_1!25546 tuple3!5340) (_2!25546 (InoxSet Context!5590))) )
))
(declare-datatypes ((List!47570 0))(
  ( (Nil!47446) (Cons!47446 (h!52866 tuple2!44806) (t!354159 List!47570)) )
))
(declare-datatypes ((array!15326 0))(
  ( (array!15327 (arr!6841 (Array (_ BitVec 32) List!47570)) (size!34771 (_ BitVec 32))) )
))
(declare-datatypes ((array!15328 0))(
  ( (array!15329 (arr!6842 (Array (_ BitVec 32) (_ BitVec 64))) (size!34772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8538 0))(
  ( (LongMapFixedSize!8539 (defaultEntry!4654 Int) (mask!12691 (_ BitVec 32)) (extraKeys!4518 (_ BitVec 32)) (zeroValue!4528 List!47570) (minValue!4528 List!47570) (_size!8581 (_ BitVec 32)) (_keys!4569 array!15328) (_values!4550 array!15326) (_vacant!4330 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16885 0))(
  ( (Cell!16886 (v!41345 LongMapFixedSize!8538)) )
))
(declare-datatypes ((MutLongMap!4269 0))(
  ( (LongMap!4269 (underlying!8767 Cell!16885)) (MutLongMapExt!4268 (__x!28814 Int)) )
))
(declare-datatypes ((Cell!16887 0))(
  ( (Cell!16888 (v!41346 MutLongMap!4269)) )
))
(declare-datatypes ((MutableMap!4175 0))(
  ( (MutableMapExt!4174 (__x!28815 Int)) (HashMap!4175 (underlying!8768 Cell!16887) (hashF!6217 Hashable!4185) (_size!8582 (_ BitVec 32)) (defaultValue!4346 Int)) )
))
(declare-datatypes ((CacheDown!2848 0))(
  ( (CacheDown!2849 (cache!4315 MutableMap!4175)) )
))
(declare-fun cacheDown!738 () CacheDown!2848)

(declare-fun array_inv!4898 (array!15328) Bool)

(declare-fun array_inv!4899 (array!15326) Bool)

(assert (=> b!4283605 (= e!2659535 (and tp!1310535 tp!1310549 tp!1310543 (array_inv!4898 (_keys!4569 (v!41345 (underlying!8767 (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))))) (array_inv!4899 (_values!4550 (v!41345 (underlying!8767 (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))))) e!2659539))))

(declare-fun e!2659541 () Bool)

(assert (=> b!4283606 (= e!2659541 (and tp!1310537 tp!1310553))))

(declare-fun b!4283607 () Bool)

(declare-fun res!1757824 () Bool)

(declare-fun e!2659530 () Bool)

(assert (=> b!4283607 (=> (not res!1757824) (not e!2659530))))

(declare-datatypes ((Hashable!4186 0))(
  ( (HashableExt!4185 (__x!28816 Int)) )
))
(declare-datatypes ((tuple2!44808 0))(
  ( (tuple2!44809 (_1!25547 (InoxSet Context!5590)) (_2!25547 Int)) )
))
(declare-datatypes ((tuple2!44810 0))(
  ( (tuple2!44811 (_1!25548 tuple2!44808) (_2!25548 Int)) )
))
(declare-datatypes ((List!47571 0))(
  ( (Nil!47447) (Cons!47447 (h!52867 tuple2!44810) (t!354160 List!47571)) )
))
(declare-datatypes ((array!15330 0))(
  ( (array!15331 (arr!6843 (Array (_ BitVec 32) List!47571)) (size!34773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8540 0))(
  ( (LongMapFixedSize!8541 (defaultEntry!4655 Int) (mask!12692 (_ BitVec 32)) (extraKeys!4519 (_ BitVec 32)) (zeroValue!4529 List!47571) (minValue!4529 List!47571) (_size!8583 (_ BitVec 32)) (_keys!4570 array!15328) (_values!4551 array!15330) (_vacant!4331 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16889 0))(
  ( (Cell!16890 (v!41347 LongMapFixedSize!8540)) )
))
(declare-datatypes ((MutLongMap!4270 0))(
  ( (LongMap!4270 (underlying!8769 Cell!16889)) (MutLongMapExt!4269 (__x!28817 Int)) )
))
(declare-datatypes ((Cell!16891 0))(
  ( (Cell!16892 (v!41348 MutLongMap!4270)) )
))
(declare-datatypes ((MutableMap!4176 0))(
  ( (MutableMapExt!4175 (__x!28818 Int)) (HashMap!4176 (underlying!8770 Cell!16891) (hashF!6218 Hashable!4186) (_size!8584 (_ BitVec 32)) (defaultValue!4347 Int)) )
))
(declare-datatypes ((List!47572 0))(
  ( (Nil!47448) (Cons!47448 (h!52868 C!26008) (t!354161 List!47572)) )
))
(declare-datatypes ((IArray!28759 0))(
  ( (IArray!28760 (innerList!14437 List!47572)) )
))
(declare-datatypes ((Conc!14349 0))(
  ( (Node!14349 (left!35330 Conc!14349) (right!35660 Conc!14349) (csize!28928 Int) (cheight!14560 Int)) (Leaf!22203 (xs!17655 IArray!28759) (csize!28929 Int)) (Empty!14349) )
))
(declare-datatypes ((BalanceConc!28188 0))(
  ( (BalanceConc!28189 (c!730016 Conc!14349)) )
))
(declare-datatypes ((CacheFindLongestMatch!386 0))(
  ( (CacheFindLongestMatch!387 (cache!4316 MutableMap!4176) (totalInput!4292 BalanceConc!28188)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!386)

(declare-fun valid!3316 (CacheFindLongestMatch!386) Bool)

(assert (=> b!4283607 (= res!1757824 (valid!3316 cacheFindLongestMatch!156))))

(declare-fun e!2659546 () Bool)

(declare-fun e!2659553 () Bool)

(assert (=> b!4283608 (= e!2659546 (and e!2659553 tp!1310547))))

(declare-fun mapNonEmpty!19317 () Bool)

(declare-fun mapRes!19319 () Bool)

(declare-fun tp!1310558 () Bool)

(declare-fun tp!1310538 () Bool)

(assert (=> mapNonEmpty!19317 (= mapRes!19319 (and tp!1310558 tp!1310538))))

(declare-fun mapValue!19318 () List!47570)

(declare-fun mapKey!19319 () (_ BitVec 32))

(declare-fun mapRest!19318 () (Array (_ BitVec 32) List!47570))

(assert (=> mapNonEmpty!19317 (= (arr!6841 (_values!4550 (v!41345 (underlying!8767 (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))))) (store mapRest!19318 mapKey!19319 mapValue!19318))))

(declare-fun b!4283609 () Bool)

(declare-fun e!2659533 () Bool)

(declare-fun tp!1310559 () Bool)

(declare-fun mapRes!19318 () Bool)

(assert (=> b!4283609 (= e!2659533 (and tp!1310559 mapRes!19318))))

(declare-fun condMapEmpty!19319 () Bool)

(declare-fun mapDefault!19318 () List!47571)

(assert (=> b!4283609 (= condMapEmpty!19319 (= (arr!6843 (_values!4551 (v!41347 (underlying!8769 (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47571)) mapDefault!19318)))))

(declare-fun b!4283610 () Bool)

(declare-fun e!2659540 () Bool)

(declare-fun tp!1310542 () Bool)

(declare-fun mapRes!19317 () Bool)

(assert (=> b!4283610 (= e!2659540 (and tp!1310542 mapRes!19317))))

(declare-fun condMapEmpty!19317 () Bool)

(declare-datatypes ((tuple2!44812 0))(
  ( (tuple2!44813 (_1!25549 Context!5590) (_2!25549 C!26008)) )
))
(declare-datatypes ((tuple2!44814 0))(
  ( (tuple2!44815 (_1!25550 tuple2!44812) (_2!25550 (InoxSet Context!5590))) )
))
(declare-datatypes ((List!47573 0))(
  ( (Nil!47449) (Cons!47449 (h!52869 tuple2!44814) (t!354162 List!47573)) )
))
(declare-datatypes ((array!15332 0))(
  ( (array!15333 (arr!6844 (Array (_ BitVec 32) List!47573)) (size!34774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8542 0))(
  ( (LongMapFixedSize!8543 (defaultEntry!4656 Int) (mask!12693 (_ BitVec 32)) (extraKeys!4520 (_ BitVec 32)) (zeroValue!4530 List!47573) (minValue!4530 List!47573) (_size!8585 (_ BitVec 32)) (_keys!4571 array!15328) (_values!4552 array!15332) (_vacant!4332 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16893 0))(
  ( (Cell!16894 (v!41349 LongMapFixedSize!8542)) )
))
(declare-datatypes ((MutLongMap!4271 0))(
  ( (LongMap!4271 (underlying!8771 Cell!16893)) (MutLongMapExt!4270 (__x!28819 Int)) )
))
(declare-datatypes ((Cell!16895 0))(
  ( (Cell!16896 (v!41350 MutLongMap!4271)) )
))
(declare-datatypes ((Hashable!4187 0))(
  ( (HashableExt!4186 (__x!28820 Int)) )
))
(declare-datatypes ((MutableMap!4177 0))(
  ( (MutableMapExt!4176 (__x!28821 Int)) (HashMap!4177 (underlying!8772 Cell!16895) (hashF!6219 Hashable!4187) (_size!8586 (_ BitVec 32)) (defaultValue!4348 Int)) )
))
(declare-datatypes ((CacheUp!2724 0))(
  ( (CacheUp!2725 (cache!4317 MutableMap!4177)) )
))
(declare-fun cacheUp!725 () CacheUp!2724)

(declare-fun mapDefault!19319 () List!47573)

(assert (=> b!4283610 (= condMapEmpty!19317 (= (arr!6844 (_values!4552 (v!41349 (underlying!8771 (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47573)) mapDefault!19319)))))

(declare-fun mapIsEmpty!19317 () Bool)

(assert (=> mapIsEmpty!19317 mapRes!19317))

(declare-fun b!4283611 () Bool)

(declare-fun e!2659526 () Bool)

(declare-fun e!2659552 () Bool)

(assert (=> b!4283611 (= e!2659526 e!2659552)))

(declare-fun b!4283612 () Bool)

(declare-fun res!1757822 () Bool)

(assert (=> b!4283612 (=> (not res!1757822) (not e!2659530))))

(declare-fun valid!3317 (CacheDown!2848) Bool)

(assert (=> b!4283612 (= res!1757822 (valid!3317 cacheDown!738))))

(declare-fun b!4283613 () Bool)

(declare-fun e!2659536 () Bool)

(declare-fun input!1632 () BalanceConc!28188)

(declare-fun tp!1310551 () Bool)

(declare-fun inv!62885 (Conc!14349) Bool)

(assert (=> b!4283613 (= e!2659536 (and (inv!62885 (c!730016 input!1632)) tp!1310551))))

(declare-fun b!4283614 () Bool)

(declare-fun e!2659537 () Bool)

(declare-fun lt!1515472 () MutLongMap!4271)

(get-info :version)

(assert (=> b!4283614 (= e!2659537 (and e!2659526 ((_ is LongMap!4271) lt!1515472)))))

(assert (=> b!4283614 (= lt!1515472 (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))))

(declare-fun b!4283615 () Bool)

(declare-fun e!2659527 () Bool)

(assert (=> b!4283615 (= e!2659552 e!2659527)))

(declare-fun e!2659532 () Bool)

(assert (=> b!4283616 (= e!2659532 (and e!2659537 tp!1310552))))

(declare-fun tp!1310554 () Bool)

(declare-fun tp!1310541 () Bool)

(declare-fun array_inv!4900 (array!15332) Bool)

(assert (=> b!4283617 (= e!2659527 (and tp!1310545 tp!1310541 tp!1310554 (array_inv!4898 (_keys!4571 (v!41349 (underlying!8771 (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))))) (array_inv!4900 (_values!4552 (v!41349 (underlying!8771 (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))))) e!2659540))))

(declare-fun e!2659547 () Bool)

(declare-fun e!2659550 () Bool)

(assert (=> b!4283618 (= e!2659547 (and e!2659550 tp!1310540))))

(declare-fun b!4283619 () Bool)

(declare-fun res!1757819 () Bool)

(assert (=> b!4283619 (=> (not res!1757819) (not e!2659530))))

(declare-datatypes ((LexerInterface!7593 0))(
  ( (LexerInterfaceExt!7590 (__x!28822 Int)) (Lexer!7591) )
))
(declare-fun thiss!16356 () LexerInterface!7593)

(declare-datatypes ((List!47574 0))(
  ( (Nil!47450) (Cons!47450 (h!52870 (_ BitVec 16)) (t!354163 List!47574)) )
))
(declare-datatypes ((TokenValue!8308 0))(
  ( (FloatLiteralValue!16616 (text!58601 List!47574)) (TokenValueExt!8307 (__x!28823 Int)) (Broken!41540 (value!250736 List!47574)) (Object!8431) (End!8308) (Def!8308) (Underscore!8308) (Match!8308) (Else!8308) (Error!8308) (Case!8308) (If!8308) (Extends!8308) (Abstract!8308) (Class!8308) (Val!8308) (DelimiterValue!16616 (del!8368 List!47574)) (KeywordValue!8314 (value!250737 List!47574)) (CommentValue!16616 (value!250738 List!47574)) (WhitespaceValue!16616 (value!250739 List!47574)) (IndentationValue!8308 (value!250740 List!47574)) (String!55533) (Int32!8308) (Broken!41541 (value!250741 List!47574)) (Boolean!8309) (Unit!66364) (OperatorValue!8311 (op!8368 List!47574)) (IdentifierValue!16616 (value!250742 List!47574)) (IdentifierValue!16617 (value!250743 List!47574)) (WhitespaceValue!16617 (value!250744 List!47574)) (True!16616) (False!16616) (Broken!41542 (value!250745 List!47574)) (Broken!41543 (value!250746 List!47574)) (True!16617) (RightBrace!8308) (RightBracket!8308) (Colon!8308) (Null!8308) (Comma!8308) (LeftBracket!8308) (False!16617) (LeftBrace!8308) (ImaginaryLiteralValue!8308 (text!58602 List!47574)) (StringLiteralValue!24924 (value!250747 List!47574)) (EOFValue!8308 (value!250748 List!47574)) (IdentValue!8308 (value!250749 List!47574)) (DelimiterValue!16617 (value!250750 List!47574)) (DedentValue!8308 (value!250751 List!47574)) (NewLineValue!8308 (value!250752 List!47574)) (IntegerValue!24924 (value!250753 (_ BitVec 32)) (text!58603 List!47574)) (IntegerValue!24925 (value!250754 Int) (text!58604 List!47574)) (Times!8308) (Or!8308) (Equal!8308) (Minus!8308) (Broken!41544 (value!250755 List!47574)) (And!8308) (Div!8308) (LessEqual!8308) (Mod!8308) (Concat!21214) (Not!8308) (Plus!8308) (SpaceValue!8308 (value!250756 List!47574)) (IntegerValue!24926 (value!250757 Int) (text!58605 List!47574)) (StringLiteralValue!24925 (text!58606 List!47574)) (FloatLiteralValue!16617 (text!58607 List!47574)) (BytesLiteralValue!8308 (value!250758 List!47574)) (CommentValue!16617 (value!250759 List!47574)) (StringLiteralValue!24926 (value!250760 List!47574)) (ErrorTokenValue!8308 (msg!8369 List!47574)) )
))
(declare-datatypes ((String!55534 0))(
  ( (String!55535 (value!250761 String)) )
))
(declare-datatypes ((TokenValueInjection!15924 0))(
  ( (TokenValueInjection!15925 (toValue!10849 Int) (toChars!10708 Int)) )
))
(declare-datatypes ((Rule!15796 0))(
  ( (Rule!15797 (regex!7998 Regex!12905) (tag!8862 String!55534) (isSeparator!7998 Bool) (transformation!7998 TokenValueInjection!15924)) )
))
(declare-fun rule!232 () Rule!15796)

(declare-fun ruleValid!3616 (LexerInterface!7593 Rule!15796) Bool)

(assert (=> b!4283619 (= res!1757819 (ruleValid!3616 thiss!16356 rule!232))))

(declare-fun e!2659544 () Bool)

(declare-fun b!4283620 () Bool)

(declare-fun e!2659524 () Bool)

(declare-fun inv!62886 (BalanceConc!28188) Bool)

(assert (=> b!4283620 (= e!2659544 (and e!2659547 (inv!62886 (totalInput!4292 cacheFindLongestMatch!156)) e!2659524))))

(declare-fun b!4283621 () Bool)

(declare-fun e!2659554 () Bool)

(declare-fun e!2659534 () Bool)

(assert (=> b!4283621 (= e!2659554 e!2659534)))

(declare-fun b!4283622 () Bool)

(declare-fun res!1757820 () Bool)

(assert (=> b!4283622 (=> (not res!1757820) (not e!2659530))))

(declare-fun totalInput!528 () BalanceConc!28188)

(assert (=> b!4283622 (= res!1757820 (= (totalInput!4292 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun b!4283623 () Bool)

(declare-fun e!2659548 () Bool)

(assert (=> b!4283623 (= e!2659548 e!2659532)))

(declare-fun b!4283624 () Bool)

(declare-fun tp!1310544 () Bool)

(assert (=> b!4283624 (= e!2659539 (and tp!1310544 mapRes!19319))))

(declare-fun condMapEmpty!19318 () Bool)

(declare-fun mapDefault!19317 () List!47570)

(assert (=> b!4283624 (= condMapEmpty!19318 (= (arr!6841 (_values!4550 (v!41345 (underlying!8767 (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47570)) mapDefault!19317)))))

(declare-fun b!4283625 () Bool)

(assert (=> b!4283625 (= e!2659534 e!2659535)))

(declare-fun b!4283626 () Bool)

(assert (=> b!4283626 (= e!2659530 false)))

(declare-datatypes ((tuple2!44816 0))(
  ( (tuple2!44817 (_1!25551 BalanceConc!28188) (_2!25551 BalanceConc!28188)) )
))
(declare-datatypes ((tuple4!944 0))(
  ( (tuple4!945 (_1!25552 tuple2!44816) (_2!25552 CacheUp!2724) (_3!3143 CacheDown!2848) (_4!472 CacheFindLongestMatch!386)) )
))
(declare-fun lt!1515473 () tuple4!944)

(declare-fun findLongestMatchWithZipperSequenceV2Mem!38 (Regex!12905 BalanceConc!28188 BalanceConc!28188 CacheUp!2724 CacheDown!2848 CacheFindLongestMatch!386) tuple4!944)

(assert (=> b!4283626 (= lt!1515473 (findLongestMatchWithZipperSequenceV2Mem!38 (regex!7998 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4283627 () Bool)

(declare-fun e!2659545 () Bool)

(declare-fun lt!1515471 () MutLongMap!4270)

(assert (=> b!4283627 (= e!2659550 (and e!2659545 ((_ is LongMap!4270) lt!1515471)))))

(assert (=> b!4283627 (= lt!1515471 (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))))

(declare-fun b!4283628 () Bool)

(declare-fun e!2659542 () Bool)

(declare-fun e!2659531 () Bool)

(assert (=> b!4283628 (= e!2659542 e!2659531)))

(declare-fun mapNonEmpty!19319 () Bool)

(declare-fun tp!1310534 () Bool)

(declare-fun tp!1310556 () Bool)

(assert (=> mapNonEmpty!19319 (= mapRes!19318 (and tp!1310534 tp!1310556))))

(declare-fun mapKey!19318 () (_ BitVec 32))

(declare-fun mapValue!19317 () List!47571)

(declare-fun mapRest!19319 () (Array (_ BitVec 32) List!47571))

(assert (=> mapNonEmpty!19319 (= (arr!6843 (_values!4551 (v!41347 (underlying!8769 (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))))) (store mapRest!19319 mapKey!19318 mapValue!19317))))

(declare-fun mapNonEmpty!19318 () Bool)

(declare-fun tp!1310539 () Bool)

(declare-fun tp!1310555 () Bool)

(assert (=> mapNonEmpty!19318 (= mapRes!19317 (and tp!1310539 tp!1310555))))

(declare-fun mapValue!19319 () List!47573)

(declare-fun mapKey!19317 () (_ BitVec 32))

(declare-fun mapRest!19317 () (Array (_ BitVec 32) List!47573))

(assert (=> mapNonEmpty!19318 (= (arr!6844 (_values!4552 (v!41349 (underlying!8771 (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))))) (store mapRest!19317 mapKey!19317 mapValue!19319))))

(declare-fun res!1757825 () Bool)

(assert (=> start!411590 (=> (not res!1757825) (not e!2659530))))

(assert (=> start!411590 (= res!1757825 ((_ is Lexer!7591) thiss!16356))))

(assert (=> start!411590 e!2659530))

(assert (=> start!411590 true))

(declare-fun e!2659538 () Bool)

(assert (=> start!411590 e!2659538))

(assert (=> start!411590 (and (inv!62886 input!1632) e!2659536)))

(declare-fun e!2659528 () Bool)

(declare-fun inv!62887 (CacheDown!2848) Bool)

(assert (=> start!411590 (and (inv!62887 cacheDown!738) e!2659528)))

(declare-fun inv!62888 (CacheFindLongestMatch!386) Bool)

(assert (=> start!411590 (and (inv!62888 cacheFindLongestMatch!156) e!2659544)))

(declare-fun e!2659549 () Bool)

(assert (=> start!411590 (and (inv!62886 totalInput!528) e!2659549)))

(declare-fun inv!62889 (CacheUp!2724) Bool)

(assert (=> start!411590 (and (inv!62889 cacheUp!725) e!2659548)))

(declare-fun b!4283629 () Bool)

(declare-fun tp!1310557 () Bool)

(assert (=> b!4283629 (= e!2659549 (and (inv!62885 (c!730016 totalInput!528)) tp!1310557))))

(declare-fun b!4283630 () Bool)

(declare-fun lt!1515474 () MutLongMap!4269)

(assert (=> b!4283630 (= e!2659553 (and e!2659554 ((_ is LongMap!4269) lt!1515474)))))

(assert (=> b!4283630 (= lt!1515474 (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))))

(declare-fun b!4283631 () Bool)

(assert (=> b!4283631 (= e!2659528 e!2659546)))

(declare-fun b!4283632 () Bool)

(declare-fun res!1757823 () Bool)

(assert (=> b!4283632 (=> (not res!1757823) (not e!2659530))))

(declare-fun valid!3318 (CacheUp!2724) Bool)

(assert (=> b!4283632 (= res!1757823 (valid!3318 cacheUp!725))))

(declare-fun b!4283633 () Bool)

(declare-fun tp!1310536 () Bool)

(assert (=> b!4283633 (= e!2659524 (and (inv!62885 (c!730016 (totalInput!4292 cacheFindLongestMatch!156))) tp!1310536))))

(declare-fun mapIsEmpty!19318 () Bool)

(assert (=> mapIsEmpty!19318 mapRes!19318))

(declare-fun mapIsEmpty!19319 () Bool)

(assert (=> mapIsEmpty!19319 mapRes!19319))

(declare-fun b!4283634 () Bool)

(declare-fun tp!1310560 () Bool)

(declare-fun inv!62878 (String!55534) Bool)

(declare-fun inv!62890 (TokenValueInjection!15924) Bool)

(assert (=> b!4283634 (= e!2659538 (and tp!1310560 (inv!62878 (tag!8862 rule!232)) (inv!62890 (transformation!7998 rule!232)) e!2659541))))

(declare-fun b!4283635 () Bool)

(declare-fun res!1757821 () Bool)

(assert (=> b!4283635 (=> (not res!1757821) (not e!2659530))))

(declare-fun isSuffix!1006 (List!47572 List!47572) Bool)

(declare-fun list!17317 (BalanceConc!28188) List!47572)

(assert (=> b!4283635 (= res!1757821 (isSuffix!1006 (list!17317 input!1632) (list!17317 totalInput!528)))))

(declare-fun b!4283636 () Bool)

(assert (=> b!4283636 (= e!2659545 e!2659542)))

(declare-fun tp!1310550 () Bool)

(declare-fun tp!1310546 () Bool)

(declare-fun array_inv!4901 (array!15330) Bool)

(assert (=> b!4283637 (= e!2659531 (and tp!1310548 tp!1310546 tp!1310550 (array_inv!4898 (_keys!4570 (v!41347 (underlying!8769 (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))))) (array_inv!4901 (_values!4551 (v!41347 (underlying!8769 (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))))) e!2659533))))

(assert (= (and start!411590 res!1757825) b!4283619))

(assert (= (and b!4283619 res!1757819) b!4283632))

(assert (= (and b!4283632 res!1757823) b!4283612))

(assert (= (and b!4283612 res!1757822) b!4283607))

(assert (= (and b!4283607 res!1757824) b!4283635))

(assert (= (and b!4283635 res!1757821) b!4283622))

(assert (= (and b!4283622 res!1757820) b!4283626))

(assert (= b!4283634 b!4283606))

(assert (= start!411590 b!4283634))

(assert (= start!411590 b!4283613))

(assert (= (and b!4283624 condMapEmpty!19318) mapIsEmpty!19319))

(assert (= (and b!4283624 (not condMapEmpty!19318)) mapNonEmpty!19317))

(assert (= b!4283605 b!4283624))

(assert (= b!4283625 b!4283605))

(assert (= b!4283621 b!4283625))

(assert (= (and b!4283630 ((_ is LongMap!4269) (v!41346 (underlying!8768 (cache!4315 cacheDown!738))))) b!4283621))

(assert (= b!4283608 b!4283630))

(assert (= (and b!4283631 ((_ is HashMap!4175) (cache!4315 cacheDown!738))) b!4283608))

(assert (= start!411590 b!4283631))

(assert (= (and b!4283609 condMapEmpty!19319) mapIsEmpty!19318))

(assert (= (and b!4283609 (not condMapEmpty!19319)) mapNonEmpty!19319))

(assert (= b!4283637 b!4283609))

(assert (= b!4283628 b!4283637))

(assert (= b!4283636 b!4283628))

(assert (= (and b!4283627 ((_ is LongMap!4270) (v!41348 (underlying!8770 (cache!4316 cacheFindLongestMatch!156))))) b!4283636))

(assert (= b!4283618 b!4283627))

(assert (= (and b!4283620 ((_ is HashMap!4176) (cache!4316 cacheFindLongestMatch!156))) b!4283618))

(assert (= b!4283620 b!4283633))

(assert (= start!411590 b!4283620))

(assert (= start!411590 b!4283629))

(assert (= (and b!4283610 condMapEmpty!19317) mapIsEmpty!19317))

(assert (= (and b!4283610 (not condMapEmpty!19317)) mapNonEmpty!19318))

(assert (= b!4283617 b!4283610))

(assert (= b!4283615 b!4283617))

(assert (= b!4283611 b!4283615))

(assert (= (and b!4283614 ((_ is LongMap!4271) (v!41350 (underlying!8772 (cache!4317 cacheUp!725))))) b!4283611))

(assert (= b!4283616 b!4283614))

(assert (= (and b!4283623 ((_ is HashMap!4177) (cache!4317 cacheUp!725))) b!4283616))

(assert (= start!411590 b!4283623))

(declare-fun m!4880105 () Bool)

(assert (=> b!4283607 m!4880105))

(declare-fun m!4880107 () Bool)

(assert (=> b!4283619 m!4880107))

(declare-fun m!4880109 () Bool)

(assert (=> b!4283634 m!4880109))

(declare-fun m!4880111 () Bool)

(assert (=> b!4283634 m!4880111))

(declare-fun m!4880113 () Bool)

(assert (=> mapNonEmpty!19318 m!4880113))

(declare-fun m!4880115 () Bool)

(assert (=> b!4283626 m!4880115))

(declare-fun m!4880117 () Bool)

(assert (=> b!4283613 m!4880117))

(declare-fun m!4880119 () Bool)

(assert (=> b!4283632 m!4880119))

(declare-fun m!4880121 () Bool)

(assert (=> mapNonEmpty!19319 m!4880121))

(declare-fun m!4880123 () Bool)

(assert (=> b!4283633 m!4880123))

(declare-fun m!4880125 () Bool)

(assert (=> mapNonEmpty!19317 m!4880125))

(declare-fun m!4880127 () Bool)

(assert (=> b!4283629 m!4880127))

(declare-fun m!4880129 () Bool)

(assert (=> b!4283605 m!4880129))

(declare-fun m!4880131 () Bool)

(assert (=> b!4283605 m!4880131))

(declare-fun m!4880133 () Bool)

(assert (=> b!4283635 m!4880133))

(declare-fun m!4880135 () Bool)

(assert (=> b!4283635 m!4880135))

(assert (=> b!4283635 m!4880133))

(assert (=> b!4283635 m!4880135))

(declare-fun m!4880137 () Bool)

(assert (=> b!4283635 m!4880137))

(declare-fun m!4880139 () Bool)

(assert (=> b!4283617 m!4880139))

(declare-fun m!4880141 () Bool)

(assert (=> b!4283617 m!4880141))

(declare-fun m!4880143 () Bool)

(assert (=> start!411590 m!4880143))

(declare-fun m!4880145 () Bool)

(assert (=> start!411590 m!4880145))

(declare-fun m!4880147 () Bool)

(assert (=> start!411590 m!4880147))

(declare-fun m!4880149 () Bool)

(assert (=> start!411590 m!4880149))

(declare-fun m!4880151 () Bool)

(assert (=> start!411590 m!4880151))

(declare-fun m!4880153 () Bool)

(assert (=> b!4283620 m!4880153))

(declare-fun m!4880155 () Bool)

(assert (=> b!4283637 m!4880155))

(declare-fun m!4880157 () Bool)

(assert (=> b!4283637 m!4880157))

(declare-fun m!4880159 () Bool)

(assert (=> b!4283612 m!4880159))

(check-sat b_and!338015 b_and!338019 b_and!338023 (not b_next!127517) (not b_next!127525) (not b!4283624) (not mapNonEmpty!19319) (not b!4283620) (not start!411590) (not b!4283619) b_and!338013 (not b!4283617) (not b!4283610) (not mapNonEmpty!19317) b_and!338021 (not b!4283632) (not b!4283629) (not b!4283612) b_and!338025 (not b!4283607) (not b!4283613) (not b_next!127529) (not b!4283605) (not b_next!127519) (not b!4283634) (not b_next!127523) (not b_next!127515) (not b_next!127521) (not mapNonEmpty!19318) b_and!338017 b_and!338027 (not b!4283635) (not b!4283637) (not b_next!127527) (not b!4283626) (not b!4283609) (not b!4283633))
(check-sat b_and!338015 b_and!338019 b_and!338023 (not b_next!127517) (not b_next!127525) b_and!338021 b_and!338025 (not b_next!127529) (not b_next!127519) b_and!338013 b_and!338017 b_and!338027 (not b_next!127527) (not b_next!127523) (not b_next!127515) (not b_next!127521))

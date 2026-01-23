; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488188 () Bool)

(assert start!488188)

(declare-fun b!4769741 () Bool)

(declare-fun b_free!129771 () Bool)

(declare-fun b_next!130561 () Bool)

(assert (=> b!4769741 (= b_free!129771 (not b_next!130561))))

(declare-fun tp!1356279 () Bool)

(declare-fun b_and!341509 () Bool)

(assert (=> b!4769741 (= tp!1356279 b_and!341509)))

(declare-fun b!4769743 () Bool)

(declare-fun b_free!129773 () Bool)

(declare-fun b_next!130563 () Bool)

(assert (=> b!4769743 (= b_free!129773 (not b_next!130563))))

(declare-fun tp!1356283 () Bool)

(declare-fun b_and!341511 () Bool)

(assert (=> b!4769743 (= tp!1356283 b_and!341511)))

(declare-fun b!4769736 () Bool)

(declare-fun e!2977433 () Bool)

(assert (=> b!4769736 (= e!2977433 false)))

(declare-datatypes ((Unit!138386 0))(
  ( (Unit!138387) )
))
(declare-fun lt!1932374 () Unit!138386)

(declare-datatypes ((K!15034 0))(
  ( (K!15035 (val!20333 Int)) )
))
(declare-datatypes ((V!15280 0))(
  ( (V!15281 (val!20334 Int)) )
))
(declare-datatypes ((tuple2!55640 0))(
  ( (tuple2!55641 (_1!31114 K!15034) (_2!31114 V!15280)) )
))
(declare-datatypes ((List!53666 0))(
  ( (Nil!53542) (Cons!53542 (h!59954 tuple2!55640) (t!361106 List!53666)) )
))
(declare-datatypes ((tuple2!55642 0))(
  ( (tuple2!55643 (_1!31115 (_ BitVec 64)) (_2!31115 List!53666)) )
))
(declare-fun lt!1932372 () tuple2!55642)

(declare-fun lambda!224787 () Int)

(declare-datatypes ((List!53667 0))(
  ( (Nil!53543) (Cons!53543 (h!59955 tuple2!55642) (t!361107 List!53667)) )
))
(declare-datatypes ((ListLongMap!4737 0))(
  ( (ListLongMap!4738 (toList!6329 List!53667)) )
))
(declare-fun lt!1932367 () ListLongMap!4737)

(declare-fun forallContained!3874 (List!53667 Int tuple2!55642) Unit!138386)

(assert (=> b!4769736 (= lt!1932374 (forallContained!3874 (toList!6329 lt!1932367) lambda!224787 lt!1932372))))

(declare-fun lt!1932373 () Unit!138386)

(declare-fun e!2977428 () Unit!138386)

(assert (=> b!4769736 (= lt!1932373 e!2977428)))

(declare-fun c!813578 () Bool)

(declare-fun contains!16905 (List!53667 tuple2!55642) Bool)

(assert (=> b!4769736 (= c!813578 (not (contains!16905 (toList!6329 lt!1932367) lt!1932372)))))

(declare-fun lt!1932368 () (_ BitVec 64))

(declare-fun lt!1932366 () List!53666)

(assert (=> b!4769736 (= lt!1932372 (tuple2!55643 lt!1932368 lt!1932366))))

(declare-datatypes ((array!18160 0))(
  ( (array!18161 (arr!8099 (Array (_ BitVec 32) (_ BitVec 64))) (size!36329 (_ BitVec 32))) )
))
(declare-datatypes ((array!18162 0))(
  ( (array!18163 (arr!8100 (Array (_ BitVec 32) List!53666)) (size!36330 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6618 0))(
  ( (HashableExt!6617 (__x!32619 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9914 0))(
  ( (LongMapFixedSize!9915 (defaultEntry!5375 Int) (mask!14731 (_ BitVec 32)) (extraKeys!5232 (_ BitVec 32)) (zeroValue!5245 List!53666) (minValue!5245 List!53666) (_size!9939 (_ BitVec 32)) (_keys!5299 array!18160) (_values!5270 array!18162) (_vacant!5022 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19593 0))(
  ( (Cell!19594 (v!47808 LongMapFixedSize!9914)) )
))
(declare-datatypes ((MutLongMap!4957 0))(
  ( (LongMap!4957 (underlying!10121 Cell!19593)) (MutLongMapExt!4956 (__x!32620 Int)) )
))
(declare-datatypes ((Cell!19595 0))(
  ( (Cell!19596 (v!47809 MutLongMap!4957)) )
))
(declare-datatypes ((MutableMap!4841 0))(
  ( (MutableMapExt!4840 (__x!32621 Int)) (HashMap!4841 (underlying!10122 Cell!19595) (hashF!12509 Hashable!6618) (_size!9940 (_ BitVec 32)) (defaultValue!5012 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4841)

(declare-fun apply!12662 (MutLongMap!4957 (_ BitVec 64)) List!53666)

(assert (=> b!4769736 (= lt!1932366 (apply!12662 (v!47809 (underlying!10122 thiss!42052)) lt!1932368))))

(declare-fun map!12038 (MutLongMap!4957) ListLongMap!4737)

(assert (=> b!4769736 (= lt!1932367 (map!12038 (v!47809 (underlying!10122 thiss!42052))))))

(declare-fun key!1776 () K!15034)

(declare-fun hash!4594 (Hashable!6618 K!15034) (_ BitVec 64))

(assert (=> b!4769736 (= lt!1932368 (hash!4594 (hashF!12509 thiss!42052) key!1776))))

(declare-fun b!4769737 () Bool)

(declare-fun Unit!138388 () Unit!138386)

(assert (=> b!4769737 (= e!2977428 Unit!138388)))

(declare-fun b!4769738 () Bool)

(declare-fun e!2977427 () Bool)

(declare-fun e!2977425 () Bool)

(declare-fun lt!1932371 () MutLongMap!4957)

(get-info :version)

(assert (=> b!4769738 (= e!2977427 (and e!2977425 ((_ is LongMap!4957) lt!1932371)))))

(assert (=> b!4769738 (= lt!1932371 (v!47809 (underlying!10122 thiss!42052)))))

(declare-fun b!4769739 () Bool)

(declare-fun e!2977430 () Bool)

(assert (=> b!4769739 (= e!2977425 e!2977430)))

(declare-fun res!2022960 () Bool)

(assert (=> start!488188 (=> (not res!2022960) (not e!2977433))))

(assert (=> start!488188 (= res!2022960 ((_ is HashMap!4841) thiss!42052))))

(assert (=> start!488188 e!2977433))

(declare-fun e!2977431 () Bool)

(assert (=> start!488188 e!2977431))

(declare-fun tp_is_empty!32523 () Bool)

(assert (=> start!488188 tp_is_empty!32523))

(declare-fun b!4769740 () Bool)

(declare-fun e!2977429 () Bool)

(declare-fun tp!1356280 () Bool)

(declare-fun mapRes!21976 () Bool)

(assert (=> b!4769740 (= e!2977429 (and tp!1356280 mapRes!21976))))

(declare-fun condMapEmpty!21976 () Bool)

(declare-fun mapDefault!21976 () List!53666)

(assert (=> b!4769740 (= condMapEmpty!21976 (= (arr!8100 (_values!5270 (v!47808 (underlying!10121 (v!47809 (underlying!10122 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53666)) mapDefault!21976)))))

(declare-fun e!2977426 () Bool)

(declare-fun tp!1356278 () Bool)

(declare-fun tp!1356282 () Bool)

(declare-fun array_inv!5835 (array!18160) Bool)

(declare-fun array_inv!5836 (array!18162) Bool)

(assert (=> b!4769741 (= e!2977426 (and tp!1356279 tp!1356282 tp!1356278 (array_inv!5835 (_keys!5299 (v!47808 (underlying!10121 (v!47809 (underlying!10122 thiss!42052)))))) (array_inv!5836 (_values!5270 (v!47808 (underlying!10121 (v!47809 (underlying!10122 thiss!42052)))))) e!2977429))))

(declare-fun b!4769742 () Bool)

(declare-fun res!2022958 () Bool)

(assert (=> b!4769742 (=> (not res!2022958) (not e!2977433))))

(declare-fun contains!16906 (MutableMap!4841 K!15034) Bool)

(assert (=> b!4769742 (= res!2022958 (contains!16906 thiss!42052 key!1776))))

(declare-fun mapNonEmpty!21976 () Bool)

(declare-fun tp!1356281 () Bool)

(declare-fun tp!1356284 () Bool)

(assert (=> mapNonEmpty!21976 (= mapRes!21976 (and tp!1356281 tp!1356284))))

(declare-fun mapValue!21976 () List!53666)

(declare-fun mapRest!21976 () (Array (_ BitVec 32) List!53666))

(declare-fun mapKey!21976 () (_ BitVec 32))

(assert (=> mapNonEmpty!21976 (= (arr!8100 (_values!5270 (v!47808 (underlying!10121 (v!47809 (underlying!10122 thiss!42052)))))) (store mapRest!21976 mapKey!21976 mapValue!21976))))

(assert (=> b!4769743 (= e!2977431 (and e!2977427 tp!1356283))))

(declare-fun b!4769744 () Bool)

(assert (=> b!4769744 (= e!2977430 e!2977426)))

(declare-fun b!4769745 () Bool)

(declare-fun res!2022959 () Bool)

(assert (=> b!4769745 (=> (not res!2022959) (not e!2977433))))

(declare-fun valid!3964 (MutableMap!4841) Bool)

(assert (=> b!4769745 (= res!2022959 (valid!3964 thiss!42052))))

(declare-fun b!4769746 () Bool)

(declare-fun Unit!138389 () Unit!138386)

(assert (=> b!4769746 (= e!2977428 Unit!138389)))

(declare-fun lt!1932370 () Unit!138386)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2008 (List!53667 (_ BitVec 64)) Unit!138386)

(assert (=> b!4769746 (= lt!1932370 (lemmaContainsKeyImpliesGetValueByKeyDefined!2008 (toList!6329 lt!1932367) lt!1932368))))

(declare-datatypes ((Option!12720 0))(
  ( (None!12719) (Some!12719 (v!47810 List!53666)) )
))
(declare-fun isDefined!9870 (Option!12720) Bool)

(declare-fun getValueByKey!2212 (List!53667 (_ BitVec 64)) Option!12720)

(assert (=> b!4769746 (isDefined!9870 (getValueByKey!2212 (toList!6329 lt!1932367) lt!1932368))))

(declare-fun lt!1932369 () Unit!138386)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!947 (List!53667 (_ BitVec 64) List!53666) Unit!138386)

(assert (=> b!4769746 (= lt!1932369 (lemmaGetValueByKeyImpliesContainsTuple!947 (toList!6329 lt!1932367) lt!1932368 lt!1932366))))

(assert (=> b!4769746 false))

(declare-fun mapIsEmpty!21976 () Bool)

(assert (=> mapIsEmpty!21976 mapRes!21976))

(assert (= (and start!488188 res!2022960) b!4769745))

(assert (= (and b!4769745 res!2022959) b!4769742))

(assert (= (and b!4769742 res!2022958) b!4769736))

(assert (= (and b!4769736 c!813578) b!4769746))

(assert (= (and b!4769736 (not c!813578)) b!4769737))

(assert (= (and b!4769740 condMapEmpty!21976) mapIsEmpty!21976))

(assert (= (and b!4769740 (not condMapEmpty!21976)) mapNonEmpty!21976))

(assert (= b!4769741 b!4769740))

(assert (= b!4769744 b!4769741))

(assert (= b!4769739 b!4769744))

(assert (= (and b!4769738 ((_ is LongMap!4957) (v!47809 (underlying!10122 thiss!42052)))) b!4769739))

(assert (= b!4769743 b!4769738))

(assert (= (and start!488188 ((_ is HashMap!4841) thiss!42052)) b!4769743))

(declare-fun m!5741362 () Bool)

(assert (=> b!4769741 m!5741362))

(declare-fun m!5741364 () Bool)

(assert (=> b!4769741 m!5741364))

(declare-fun m!5741366 () Bool)

(assert (=> b!4769745 m!5741366))

(declare-fun m!5741368 () Bool)

(assert (=> mapNonEmpty!21976 m!5741368))

(declare-fun m!5741370 () Bool)

(assert (=> b!4769742 m!5741370))

(declare-fun m!5741372 () Bool)

(assert (=> b!4769746 m!5741372))

(declare-fun m!5741374 () Bool)

(assert (=> b!4769746 m!5741374))

(assert (=> b!4769746 m!5741374))

(declare-fun m!5741376 () Bool)

(assert (=> b!4769746 m!5741376))

(declare-fun m!5741378 () Bool)

(assert (=> b!4769746 m!5741378))

(declare-fun m!5741380 () Bool)

(assert (=> b!4769736 m!5741380))

(declare-fun m!5741382 () Bool)

(assert (=> b!4769736 m!5741382))

(declare-fun m!5741384 () Bool)

(assert (=> b!4769736 m!5741384))

(declare-fun m!5741386 () Bool)

(assert (=> b!4769736 m!5741386))

(declare-fun m!5741388 () Bool)

(assert (=> b!4769736 m!5741388))

(check-sat (not b!4769745) b_and!341511 b_and!341509 tp_is_empty!32523 (not b_next!130563) (not mapNonEmpty!21976) (not b!4769740) (not b!4769742) (not b_next!130561) (not b!4769746) (not b!4769741) (not b!4769736))
(check-sat b_and!341511 b_and!341509 (not b_next!130563) (not b_next!130561))

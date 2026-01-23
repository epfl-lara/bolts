; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242050 () Bool)

(assert start!242050)

(declare-fun b!2480456 () Bool)

(declare-fun b_free!72209 () Bool)

(declare-fun b_next!72913 () Bool)

(assert (=> b!2480456 (= b_free!72209 (not b_next!72913))))

(declare-fun tp!793893 () Bool)

(declare-fun b_and!188455 () Bool)

(assert (=> b!2480456 (= tp!793893 b_and!188455)))

(declare-fun b!2480453 () Bool)

(declare-fun b_free!72211 () Bool)

(declare-fun b_next!72915 () Bool)

(assert (=> b!2480453 (= b_free!72211 (not b_next!72915))))

(declare-fun tp!793895 () Bool)

(declare-fun b_and!188457 () Bool)

(assert (=> b!2480453 (= tp!793895 b_and!188457)))

(declare-fun res!1050031 () Bool)

(declare-fun e!1574328 () Bool)

(assert (=> start!242050 (=> (not res!1050031) (not e!1574328))))

(declare-datatypes ((Hashable!3248 0))(
  ( (HashableExt!3247 (__x!18920 Int)) )
))
(declare-datatypes ((K!5430 0))(
  ( (K!5431 (val!8819 Int)) )
))
(declare-datatypes ((V!5632 0))(
  ( (V!5633 (val!8820 Int)) )
))
(declare-datatypes ((tuple2!28704 0))(
  ( (tuple2!28705 (_1!16893 K!5430) (_2!16893 V!5632)) )
))
(declare-datatypes ((List!29163 0))(
  ( (Nil!29063) (Cons!29063 (h!34469 tuple2!28704) (t!210820 List!29163)) )
))
(declare-datatypes ((array!11809 0))(
  ( (array!11810 (arr!5266 (Array (_ BitVec 32) List!29163)) (size!22685 (_ BitVec 32))) )
))
(declare-datatypes ((array!11811 0))(
  ( (array!11812 (arr!5267 (Array (_ BitVec 32) (_ BitVec 64))) (size!22686 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6676 0))(
  ( (LongMapFixedSize!6677 (defaultEntry!3712 Int) (mask!8496 (_ BitVec 32)) (extraKeys!3586 (_ BitVec 32)) (zeroValue!3596 List!29163) (minValue!3596 List!29163) (_size!6723 (_ BitVec 32)) (_keys!3635 array!11811) (_values!3618 array!11809) (_vacant!3399 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13169 0))(
  ( (Cell!13170 (v!31388 LongMapFixedSize!6676)) )
))
(declare-datatypes ((MutLongMap!3338 0))(
  ( (LongMap!3338 (underlying!6883 Cell!13169)) (MutLongMapExt!3337 (__x!18921 Int)) )
))
(declare-datatypes ((Cell!13171 0))(
  ( (Cell!13172 (v!31389 MutLongMap!3338)) )
))
(declare-datatypes ((MutableMap!3248 0))(
  ( (MutableMapExt!3247 (__x!18922 Int)) (HashMap!3248 (underlying!6884 Cell!13171) (hashF!5206 Hashable!3248) (_size!6724 (_ BitVec 32)) (defaultValue!3410 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3248)

(get-info :version)

(assert (=> start!242050 (= res!1050031 ((_ is HashMap!3248) thiss!42540))))

(assert (=> start!242050 e!1574328))

(declare-fun e!1574324 () Bool)

(assert (=> start!242050 e!1574324))

(declare-fun tp_is_empty!12199 () Bool)

(assert (=> start!242050 tp_is_empty!12199))

(declare-fun b!2480451 () Bool)

(declare-fun e!1574330 () Bool)

(declare-fun tp!793898 () Bool)

(declare-fun mapRes!15472 () Bool)

(assert (=> b!2480451 (= e!1574330 (and tp!793898 mapRes!15472))))

(declare-fun condMapEmpty!15472 () Bool)

(declare-fun mapDefault!15472 () List!29163)

(assert (=> b!2480451 (= condMapEmpty!15472 (= (arr!5266 (_values!3618 (v!31388 (underlying!6883 (v!31389 (underlying!6884 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29163)) mapDefault!15472)))))

(declare-fun mapNonEmpty!15472 () Bool)

(declare-fun tp!793897 () Bool)

(declare-fun tp!793896 () Bool)

(assert (=> mapNonEmpty!15472 (= mapRes!15472 (and tp!793897 tp!793896))))

(declare-fun mapRest!15472 () (Array (_ BitVec 32) List!29163))

(declare-fun mapValue!15472 () List!29163)

(declare-fun mapKey!15472 () (_ BitVec 32))

(assert (=> mapNonEmpty!15472 (= (arr!5266 (_values!3618 (v!31388 (underlying!6883 (v!31389 (underlying!6884 thiss!42540)))))) (store mapRest!15472 mapKey!15472 mapValue!15472))))

(declare-fun b!2480452 () Bool)

(declare-fun res!1050030 () Bool)

(assert (=> b!2480452 (=> (not res!1050030) (not e!1574328))))

(declare-fun valid!2547 (MutableMap!3248) Bool)

(assert (=> b!2480452 (= res!1050030 (valid!2547 thiss!42540))))

(declare-fun e!1574326 () Bool)

(assert (=> b!2480453 (= e!1574324 (and e!1574326 tp!793895))))

(declare-fun b!2480454 () Bool)

(declare-fun e!1574325 () Bool)

(declare-fun e!1574327 () Bool)

(assert (=> b!2480454 (= e!1574325 e!1574327)))

(declare-fun b!2480455 () Bool)

(declare-fun res!1050032 () Bool)

(assert (=> b!2480455 (=> (not res!1050032) (not e!1574328))))

(declare-fun key!2246 () K!5430)

(declare-fun contains!5069 (MutableMap!3248 K!5430) Bool)

(assert (=> b!2480455 (= res!1050032 (contains!5069 thiss!42540 key!2246))))

(declare-fun tp!793894 () Bool)

(declare-fun tp!793892 () Bool)

(declare-fun e!1574329 () Bool)

(declare-fun array_inv!3779 (array!11811) Bool)

(declare-fun array_inv!3780 (array!11809) Bool)

(assert (=> b!2480456 (= e!1574329 (and tp!793893 tp!793892 tp!793894 (array_inv!3779 (_keys!3635 (v!31388 (underlying!6883 (v!31389 (underlying!6884 thiss!42540)))))) (array_inv!3780 (_values!3618 (v!31388 (underlying!6883 (v!31389 (underlying!6884 thiss!42540)))))) e!1574330))))

(declare-fun b!2480457 () Bool)

(assert (=> b!2480457 (= e!1574328 (not true))))

(declare-fun lt!887544 () List!29163)

(declare-fun noDuplicateKeys!73 (List!29163) Bool)

(assert (=> b!2480457 (noDuplicateKeys!73 lt!887544)))

(declare-datatypes ((Unit!42525 0))(
  ( (Unit!42526) )
))
(declare-fun lt!887537 () Unit!42525)

(declare-fun lt!887540 () List!29163)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!59 (List!29163 K!5430) Unit!42525)

(assert (=> b!2480457 (= lt!887537 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!59 lt!887540 key!2246))))

(declare-datatypes ((tuple2!28706 0))(
  ( (tuple2!28707 (_1!16894 Bool) (_2!16894 MutLongMap!3338)) )
))
(declare-fun lt!887543 () tuple2!28706)

(declare-fun lt!887539 () (_ BitVec 64))

(declare-fun update!180 (MutLongMap!3338 (_ BitVec 64) List!29163) tuple2!28706)

(assert (=> b!2480457 (= lt!887543 (update!180 (v!31389 (underlying!6884 thiss!42540)) lt!887539 lt!887544))))

(declare-fun removePairForKey!63 (List!29163 K!5430) List!29163)

(assert (=> b!2480457 (= lt!887544 (removePairForKey!63 lt!887540 key!2246))))

(declare-datatypes ((ListMap!1033 0))(
  ( (ListMap!1034 (toList!1548 List!29163)) )
))
(declare-fun lt!887541 () ListMap!1033)

(declare-fun map!6152 (MutableMap!3248) ListMap!1033)

(assert (=> b!2480457 (= lt!887541 (map!6152 thiss!42540))))

(declare-fun lt!887542 () Unit!42525)

(declare-fun lambda!93872 () Int)

(declare-datatypes ((tuple2!28708 0))(
  ( (tuple2!28709 (_1!16895 (_ BitVec 64)) (_2!16895 List!29163)) )
))
(declare-datatypes ((List!29164 0))(
  ( (Nil!29064) (Cons!29064 (h!34470 tuple2!28708) (t!210821 List!29164)) )
))
(declare-fun forallContained!844 (List!29164 Int tuple2!28708) Unit!42525)

(declare-datatypes ((ListLongMap!493 0))(
  ( (ListLongMap!494 (toList!1549 List!29164)) )
))
(declare-fun map!6153 (MutLongMap!3338) ListLongMap!493)

(assert (=> b!2480457 (= lt!887542 (forallContained!844 (toList!1549 (map!6153 (v!31389 (underlying!6884 thiss!42540)))) lambda!93872 (tuple2!28709 lt!887539 lt!887540)))))

(declare-fun apply!6901 (MutLongMap!3338 (_ BitVec 64)) List!29163)

(assert (=> b!2480457 (= lt!887540 (apply!6901 (v!31389 (underlying!6884 thiss!42540)) lt!887539))))

(declare-fun hash!676 (Hashable!3248 K!5430) (_ BitVec 64))

(assert (=> b!2480457 (= lt!887539 (hash!676 (hashF!5206 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15472 () Bool)

(assert (=> mapIsEmpty!15472 mapRes!15472))

(declare-fun b!2480458 () Bool)

(declare-fun lt!887538 () MutLongMap!3338)

(assert (=> b!2480458 (= e!1574326 (and e!1574325 ((_ is LongMap!3338) lt!887538)))))

(assert (=> b!2480458 (= lt!887538 (v!31389 (underlying!6884 thiss!42540)))))

(declare-fun b!2480459 () Bool)

(assert (=> b!2480459 (= e!1574327 e!1574329)))

(assert (= (and start!242050 res!1050031) b!2480452))

(assert (= (and b!2480452 res!1050030) b!2480455))

(assert (= (and b!2480455 res!1050032) b!2480457))

(assert (= (and b!2480451 condMapEmpty!15472) mapIsEmpty!15472))

(assert (= (and b!2480451 (not condMapEmpty!15472)) mapNonEmpty!15472))

(assert (= b!2480456 b!2480451))

(assert (= b!2480459 b!2480456))

(assert (= b!2480454 b!2480459))

(assert (= (and b!2480458 ((_ is LongMap!3338) (v!31389 (underlying!6884 thiss!42540)))) b!2480454))

(assert (= b!2480453 b!2480458))

(assert (= (and start!242050 ((_ is HashMap!3248) thiss!42540)) b!2480453))

(declare-fun m!2848505 () Bool)

(assert (=> b!2480457 m!2848505))

(declare-fun m!2848507 () Bool)

(assert (=> b!2480457 m!2848507))

(declare-fun m!2848509 () Bool)

(assert (=> b!2480457 m!2848509))

(declare-fun m!2848511 () Bool)

(assert (=> b!2480457 m!2848511))

(declare-fun m!2848513 () Bool)

(assert (=> b!2480457 m!2848513))

(declare-fun m!2848515 () Bool)

(assert (=> b!2480457 m!2848515))

(declare-fun m!2848517 () Bool)

(assert (=> b!2480457 m!2848517))

(declare-fun m!2848519 () Bool)

(assert (=> b!2480457 m!2848519))

(declare-fun m!2848521 () Bool)

(assert (=> b!2480457 m!2848521))

(declare-fun m!2848523 () Bool)

(assert (=> b!2480456 m!2848523))

(declare-fun m!2848525 () Bool)

(assert (=> b!2480456 m!2848525))

(declare-fun m!2848527 () Bool)

(assert (=> mapNonEmpty!15472 m!2848527))

(declare-fun m!2848529 () Bool)

(assert (=> b!2480455 m!2848529))

(declare-fun m!2848531 () Bool)

(assert (=> b!2480452 m!2848531))

(check-sat (not b_next!72913) (not b!2480456) (not b!2480455) b_and!188457 (not b!2480451) (not b!2480452) (not b_next!72915) (not mapNonEmpty!15472) (not b!2480457) b_and!188455 tp_is_empty!12199)
(check-sat b_and!188457 b_and!188455 (not b_next!72913) (not b_next!72915))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241740 () Bool)

(assert start!241740)

(declare-fun b!2478045 () Bool)

(declare-fun b_free!72041 () Bool)

(declare-fun b_next!72745 () Bool)

(assert (=> b!2478045 (= b_free!72041 (not b_next!72745))))

(declare-fun tp!792908 () Bool)

(declare-fun b_and!188273 () Bool)

(assert (=> b!2478045 (= tp!792908 b_and!188273)))

(declare-fun b!2478041 () Bool)

(declare-fun b_free!72043 () Bool)

(declare-fun b_next!72747 () Bool)

(assert (=> b!2478041 (= b_free!72043 (not b_next!72747))))

(declare-fun tp!792907 () Bool)

(declare-fun b_and!188275 () Bool)

(assert (=> b!2478041 (= tp!792907 b_and!188275)))

(declare-fun b!2478039 () Bool)

(declare-fun res!1048971 () Bool)

(declare-fun e!1572476 () Bool)

(assert (=> b!2478039 (=> (not res!1048971) (not e!1572476))))

(declare-datatypes ((Hashable!3206 0))(
  ( (HashableExt!3205 (__x!18794 Int)) )
))
(declare-datatypes ((K!5325 0))(
  ( (K!5326 (val!8735 Int)) )
))
(declare-datatypes ((V!5527 0))(
  ( (V!5528 (val!8736 Int)) )
))
(declare-datatypes ((tuple2!28440 0))(
  ( (tuple2!28441 (_1!16761 K!5325) (_2!16761 V!5527)) )
))
(declare-datatypes ((List!29085 0))(
  ( (Nil!28985) (Cons!28985 (h!34387 tuple2!28440) (t!210728 List!29085)) )
))
(declare-datatypes ((array!11627 0))(
  ( (array!11628 (arr!5182 (Array (_ BitVec 32) List!29085)) (size!22601 (_ BitVec 32))) )
))
(declare-datatypes ((array!11629 0))(
  ( (array!11630 (arr!5183 (Array (_ BitVec 32) (_ BitVec 64))) (size!22602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6592 0))(
  ( (LongMapFixedSize!6593 (defaultEntry!3670 Int) (mask!8433 (_ BitVec 32)) (extraKeys!3544 (_ BitVec 32)) (zeroValue!3554 List!29085) (minValue!3554 List!29085) (_size!6639 (_ BitVec 32)) (_keys!3593 array!11629) (_values!3576 array!11627) (_vacant!3357 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13001 0))(
  ( (Cell!13002 (v!31274 LongMapFixedSize!6592)) )
))
(declare-datatypes ((MutLongMap!3296 0))(
  ( (LongMap!3296 (underlying!6799 Cell!13001)) (MutLongMapExt!3295 (__x!18795 Int)) )
))
(declare-datatypes ((Cell!13003 0))(
  ( (Cell!13004 (v!31275 MutLongMap!3296)) )
))
(declare-datatypes ((MutableMap!3206 0))(
  ( (MutableMapExt!3205 (__x!18796 Int)) (HashMap!3206 (underlying!6800 Cell!13003) (hashF!5144 Hashable!3206) (_size!6640 (_ BitVec 32)) (defaultValue!3368 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3206)

(declare-fun key!2246 () K!5325)

(declare-fun contains!4987 (MutableMap!3206 K!5325) Bool)

(assert (=> b!2478039 (= res!1048971 (contains!4987 thiss!42540 key!2246))))

(declare-fun res!1048970 () Bool)

(assert (=> start!241740 (=> (not res!1048970) (not e!1572476))))

(get-info :version)

(assert (=> start!241740 (= res!1048970 ((_ is HashMap!3206) thiss!42540))))

(assert (=> start!241740 e!1572476))

(declare-fun e!1572473 () Bool)

(assert (=> start!241740 e!1572473))

(declare-fun tp_is_empty!12101 () Bool)

(assert (=> start!241740 tp_is_empty!12101))

(declare-fun b!2478040 () Bool)

(declare-fun res!1048972 () Bool)

(assert (=> b!2478040 (=> (not res!1048972) (not e!1572476))))

(declare-fun valid!2506 (MutableMap!3206) Bool)

(assert (=> b!2478040 (= res!1048972 (valid!2506 thiss!42540))))

(declare-fun mapNonEmpty!15325 () Bool)

(declare-fun mapRes!15325 () Bool)

(declare-fun tp!792905 () Bool)

(declare-fun tp!792910 () Bool)

(assert (=> mapNonEmpty!15325 (= mapRes!15325 (and tp!792905 tp!792910))))

(declare-fun mapRest!15325 () (Array (_ BitVec 32) List!29085))

(declare-fun mapKey!15325 () (_ BitVec 32))

(declare-fun mapValue!15325 () List!29085)

(assert (=> mapNonEmpty!15325 (= (arr!5182 (_values!3576 (v!31274 (underlying!6799 (v!31275 (underlying!6800 thiss!42540)))))) (store mapRest!15325 mapKey!15325 mapValue!15325))))

(declare-fun mapIsEmpty!15325 () Bool)

(assert (=> mapIsEmpty!15325 mapRes!15325))

(declare-fun e!1572477 () Bool)

(assert (=> b!2478041 (= e!1572473 (and e!1572477 tp!792907))))

(declare-fun b!2478042 () Bool)

(assert (=> b!2478042 (= e!1572476 (not ((_ is LongMap!3296) (v!31275 (underlying!6800 thiss!42540)))))))

(declare-datatypes ((ListMap!963 0))(
  ( (ListMap!964 (toList!1477 List!29085)) )
))
(declare-fun lt!885227 () ListMap!963)

(declare-fun map!6060 (MutableMap!3206) ListMap!963)

(assert (=> b!2478042 (= lt!885227 (map!6060 thiss!42540))))

(declare-datatypes ((Unit!42376 0))(
  ( (Unit!42377) )
))
(declare-fun lt!885225 () Unit!42376)

(declare-fun lt!885226 () (_ BitVec 64))

(declare-fun lambda!93508 () Int)

(declare-datatypes ((tuple2!28442 0))(
  ( (tuple2!28443 (_1!16762 (_ BitVec 64)) (_2!16762 List!29085)) )
))
(declare-datatypes ((List!29086 0))(
  ( (Nil!28986) (Cons!28986 (h!34388 tuple2!28442) (t!210729 List!29086)) )
))
(declare-fun forallContained!812 (List!29086 Int tuple2!28442) Unit!42376)

(declare-datatypes ((ListLongMap!421 0))(
  ( (ListLongMap!422 (toList!1478 List!29086)) )
))
(declare-fun map!6061 (MutLongMap!3296) ListLongMap!421)

(declare-fun apply!6851 (MutLongMap!3296 (_ BitVec 64)) List!29085)

(assert (=> b!2478042 (= lt!885225 (forallContained!812 (toList!1478 (map!6061 (v!31275 (underlying!6800 thiss!42540)))) lambda!93508 (tuple2!28443 lt!885226 (apply!6851 (v!31275 (underlying!6800 thiss!42540)) lt!885226))))))

(declare-fun hash!625 (Hashable!3206 K!5325) (_ BitVec 64))

(assert (=> b!2478042 (= lt!885226 (hash!625 (hashF!5144 thiss!42540) key!2246))))

(declare-fun b!2478043 () Bool)

(declare-fun e!1572474 () Bool)

(declare-fun lt!885228 () MutLongMap!3296)

(assert (=> b!2478043 (= e!1572477 (and e!1572474 ((_ is LongMap!3296) lt!885228)))))

(assert (=> b!2478043 (= lt!885228 (v!31275 (underlying!6800 thiss!42540)))))

(declare-fun b!2478044 () Bool)

(declare-fun e!1572472 () Bool)

(declare-fun e!1572475 () Bool)

(assert (=> b!2478044 (= e!1572472 e!1572475)))

(declare-fun tp!792911 () Bool)

(declare-fun e!1572478 () Bool)

(declare-fun tp!792906 () Bool)

(declare-fun array_inv!3717 (array!11629) Bool)

(declare-fun array_inv!3718 (array!11627) Bool)

(assert (=> b!2478045 (= e!1572475 (and tp!792908 tp!792906 tp!792911 (array_inv!3717 (_keys!3593 (v!31274 (underlying!6799 (v!31275 (underlying!6800 thiss!42540)))))) (array_inv!3718 (_values!3576 (v!31274 (underlying!6799 (v!31275 (underlying!6800 thiss!42540)))))) e!1572478))))

(declare-fun b!2478046 () Bool)

(assert (=> b!2478046 (= e!1572474 e!1572472)))

(declare-fun b!2478047 () Bool)

(declare-fun tp!792909 () Bool)

(assert (=> b!2478047 (= e!1572478 (and tp!792909 mapRes!15325))))

(declare-fun condMapEmpty!15325 () Bool)

(declare-fun mapDefault!15325 () List!29085)

(assert (=> b!2478047 (= condMapEmpty!15325 (= (arr!5182 (_values!3576 (v!31274 (underlying!6799 (v!31275 (underlying!6800 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29085)) mapDefault!15325)))))

(assert (= (and start!241740 res!1048970) b!2478040))

(assert (= (and b!2478040 res!1048972) b!2478039))

(assert (= (and b!2478039 res!1048971) b!2478042))

(assert (= (and b!2478047 condMapEmpty!15325) mapIsEmpty!15325))

(assert (= (and b!2478047 (not condMapEmpty!15325)) mapNonEmpty!15325))

(assert (= b!2478045 b!2478047))

(assert (= b!2478044 b!2478045))

(assert (= b!2478046 b!2478044))

(assert (= (and b!2478043 ((_ is LongMap!3296) (v!31275 (underlying!6800 thiss!42540)))) b!2478046))

(assert (= b!2478041 b!2478043))

(assert (= (and start!241740 ((_ is HashMap!3206) thiss!42540)) b!2478041))

(declare-fun m!2845793 () Bool)

(assert (=> mapNonEmpty!15325 m!2845793))

(declare-fun m!2845795 () Bool)

(assert (=> b!2478039 m!2845795))

(declare-fun m!2845797 () Bool)

(assert (=> b!2478045 m!2845797))

(declare-fun m!2845799 () Bool)

(assert (=> b!2478045 m!2845799))

(declare-fun m!2845801 () Bool)

(assert (=> b!2478040 m!2845801))

(declare-fun m!2845803 () Bool)

(assert (=> b!2478042 m!2845803))

(declare-fun m!2845805 () Bool)

(assert (=> b!2478042 m!2845805))

(declare-fun m!2845807 () Bool)

(assert (=> b!2478042 m!2845807))

(declare-fun m!2845809 () Bool)

(assert (=> b!2478042 m!2845809))

(declare-fun m!2845811 () Bool)

(assert (=> b!2478042 m!2845811))

(check-sat (not b_next!72747) (not b_next!72745) (not b!2478045) b_and!188275 (not b!2478042) b_and!188273 (not b!2478040) (not mapNonEmpty!15325) (not b!2478039) tp_is_empty!12101 (not b!2478047))
(check-sat b_and!188275 b_and!188273 (not b_next!72745) (not b_next!72747))

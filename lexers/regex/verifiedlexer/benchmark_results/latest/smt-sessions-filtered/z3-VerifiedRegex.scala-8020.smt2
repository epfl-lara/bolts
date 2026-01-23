; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415190 () Bool)

(assert start!415190)

(declare-fun b!4316132 () Bool)

(declare-fun b_free!128843 () Bool)

(declare-fun b_next!129547 () Bool)

(assert (=> b!4316132 (= b_free!128843 (not b_next!129547))))

(declare-fun tp!1326059 () Bool)

(declare-fun b_and!340325 () Bool)

(assert (=> b!4316132 (= tp!1326059 b_and!340325)))

(declare-fun b!4316135 () Bool)

(declare-fun b_free!128845 () Bool)

(declare-fun b_next!129549 () Bool)

(assert (=> b!4316135 (= b_free!128845 (not b_next!129549))))

(declare-fun tp!1326065 () Bool)

(declare-fun b_and!340327 () Bool)

(assert (=> b!4316135 (= tp!1326065 b_and!340327)))

(declare-fun mapIsEmpty!21055 () Bool)

(declare-fun mapRes!21055 () Bool)

(assert (=> mapIsEmpty!21055 mapRes!21055))

(declare-fun b!4316127 () Bool)

(declare-fun e!2684953 () Bool)

(declare-fun e!2684949 () Bool)

(assert (=> b!4316127 (= e!2684953 e!2684949)))

(declare-fun res!1769095 () Bool)

(assert (=> b!4316127 (=> (not res!1769095) (not e!2684949))))

(declare-datatypes ((V!9751 0))(
  ( (V!9752 (val!15897 Int)) )
))
(declare-datatypes ((K!9549 0))(
  ( (K!9550 (val!15898 Int)) )
))
(declare-datatypes ((tuple2!46986 0))(
  ( (tuple2!46987 (_1!26775 K!9549) (_2!26775 V!9751)) )
))
(declare-datatypes ((List!48437 0))(
  ( (Nil!48313) (Cons!48313 (h!53765 tuple2!46986) (t!355286 List!48437)) )
))
(declare-datatypes ((array!17084 0))(
  ( (array!17085 (arr!7627 (Array (_ BitVec 32) (_ BitVec 64))) (size!35666 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4637 0))(
  ( (HashableExt!4636 (__x!30188 Int)) )
))
(declare-datatypes ((array!17086 0))(
  ( (array!17087 (arr!7628 (Array (_ BitVec 32) List!48437)) (size!35667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9442 0))(
  ( (LongMapFixedSize!9443 (defaultEntry!5106 Int) (mask!13310 (_ BitVec 32)) (extraKeys!4970 (_ BitVec 32)) (zeroValue!4980 List!48437) (minValue!4980 List!48437) (_size!9485 (_ BitVec 32)) (_keys!5021 array!17084) (_values!5002 array!17086) (_vacant!4782 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18693 0))(
  ( (Cell!18694 (v!42594 LongMapFixedSize!9442)) )
))
(declare-datatypes ((MutLongMap!4721 0))(
  ( (LongMap!4721 (underlying!9671 Cell!18693)) (MutLongMapExt!4720 (__x!30189 Int)) )
))
(declare-datatypes ((Cell!18695 0))(
  ( (Cell!18696 (v!42595 MutLongMap!4721)) )
))
(declare-datatypes ((MutableMap!4627 0))(
  ( (MutableMapExt!4626 (__x!30190 Int)) (HashMap!4627 (underlying!9672 Cell!18695) (hashF!6842 Hashable!4637) (_size!9486 (_ BitVec 32)) (defaultValue!4798 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4627)

(declare-fun key!2048 () K!9549)

(declare-fun contains!10323 (MutableMap!4627 K!9549) Bool)

(assert (=> b!4316127 (= res!1769095 (not (contains!10323 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46988 0))(
  ( (tuple2!46989 (_1!26776 (_ BitVec 64)) (_2!26776 List!48437)) )
))
(declare-datatypes ((List!48438 0))(
  ( (Nil!48314) (Cons!48314 (h!53766 tuple2!46988) (t!355287 List!48438)) )
))
(declare-datatypes ((ListLongMap!1115 0))(
  ( (ListLongMap!1116 (toList!2501 List!48438)) )
))
(declare-fun lt!1535680 () ListLongMap!1115)

(declare-fun map!10328 (MutLongMap!4721) ListLongMap!1115)

(assert (=> b!4316127 (= lt!1535680 (map!10328 (v!42595 (underlying!9672 thiss!42308))))))

(declare-datatypes ((ListMap!1781 0))(
  ( (ListMap!1782 (toList!2502 List!48437)) )
))
(declare-fun lt!1535679 () ListMap!1781)

(declare-fun map!10329 (MutableMap!4627) ListMap!1781)

(assert (=> b!4316127 (= lt!1535679 (map!10329 thiss!42308))))

(declare-fun b!4316128 () Bool)

(declare-fun e!2684947 () Bool)

(declare-fun e!2684948 () Bool)

(assert (=> b!4316128 (= e!2684947 e!2684948)))

(declare-fun b!4316129 () Bool)

(declare-fun res!1769096 () Bool)

(assert (=> b!4316129 (=> (not res!1769096) (not e!2684953))))

(declare-fun valid!3722 (MutableMap!4627) Bool)

(assert (=> b!4316129 (= res!1769096 (valid!3722 thiss!42308))))

(declare-fun b!4316130 () Bool)

(declare-fun e!2684952 () Bool)

(assert (=> b!4316130 (= e!2684952 e!2684947)))

(declare-fun b!4316131 () Bool)

(assert (=> b!4316131 (= e!2684949 false)))

(declare-fun lt!1535678 () Bool)

(declare-fun contains!10324 (MutLongMap!4721 (_ BitVec 64)) Bool)

(declare-fun hash!1118 (Hashable!4637 K!9549) (_ BitVec 64))

(assert (=> b!4316131 (= lt!1535678 (contains!10324 (v!42595 (underlying!9672 thiss!42308)) (hash!1118 (hashF!6842 thiss!42308) key!2048)))))

(declare-fun e!2684951 () Bool)

(declare-fun tp!1326060 () Bool)

(declare-fun tp!1326061 () Bool)

(declare-fun array_inv!5485 (array!17084) Bool)

(declare-fun array_inv!5486 (array!17086) Bool)

(assert (=> b!4316132 (= e!2684948 (and tp!1326059 tp!1326060 tp!1326061 (array_inv!5485 (_keys!5021 (v!42594 (underlying!9671 (v!42595 (underlying!9672 thiss!42308)))))) (array_inv!5486 (_values!5002 (v!42594 (underlying!9671 (v!42595 (underlying!9672 thiss!42308)))))) e!2684951))))

(declare-fun b!4316133 () Bool)

(declare-fun tp!1326063 () Bool)

(assert (=> b!4316133 (= e!2684951 (and tp!1326063 mapRes!21055))))

(declare-fun condMapEmpty!21055 () Bool)

(declare-fun mapDefault!21055 () List!48437)

(assert (=> b!4316133 (= condMapEmpty!21055 (= (arr!7628 (_values!5002 (v!42594 (underlying!9671 (v!42595 (underlying!9672 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48437)) mapDefault!21055)))))

(declare-fun b!4316134 () Bool)

(declare-fun e!2684950 () Bool)

(declare-fun lt!1535681 () MutLongMap!4721)

(get-info :version)

(assert (=> b!4316134 (= e!2684950 (and e!2684952 ((_ is LongMap!4721) lt!1535681)))))

(assert (=> b!4316134 (= lt!1535681 (v!42595 (underlying!9672 thiss!42308)))))

(declare-fun e!2684945 () Bool)

(assert (=> b!4316135 (= e!2684945 (and e!2684950 tp!1326065))))

(declare-fun res!1769094 () Bool)

(assert (=> start!415190 (=> (not res!1769094) (not e!2684953))))

(assert (=> start!415190 (= res!1769094 ((_ is HashMap!4627) thiss!42308))))

(assert (=> start!415190 e!2684953))

(assert (=> start!415190 e!2684945))

(declare-fun tp_is_empty!23987 () Bool)

(assert (=> start!415190 tp_is_empty!23987))

(declare-fun mapNonEmpty!21055 () Bool)

(declare-fun tp!1326062 () Bool)

(declare-fun tp!1326064 () Bool)

(assert (=> mapNonEmpty!21055 (= mapRes!21055 (and tp!1326062 tp!1326064))))

(declare-fun mapKey!21055 () (_ BitVec 32))

(declare-fun mapValue!21055 () List!48437)

(declare-fun mapRest!21055 () (Array (_ BitVec 32) List!48437))

(assert (=> mapNonEmpty!21055 (= (arr!7628 (_values!5002 (v!42594 (underlying!9671 (v!42595 (underlying!9672 thiss!42308)))))) (store mapRest!21055 mapKey!21055 mapValue!21055))))

(assert (= (and start!415190 res!1769094) b!4316129))

(assert (= (and b!4316129 res!1769096) b!4316127))

(assert (= (and b!4316127 res!1769095) b!4316131))

(assert (= (and b!4316133 condMapEmpty!21055) mapIsEmpty!21055))

(assert (= (and b!4316133 (not condMapEmpty!21055)) mapNonEmpty!21055))

(assert (= b!4316132 b!4316133))

(assert (= b!4316128 b!4316132))

(assert (= b!4316130 b!4316128))

(assert (= (and b!4316134 ((_ is LongMap!4721) (v!42595 (underlying!9672 thiss!42308)))) b!4316130))

(assert (= b!4316135 b!4316134))

(assert (= (and start!415190 ((_ is HashMap!4627) thiss!42308)) b!4316135))

(declare-fun m!4910075 () Bool)

(assert (=> b!4316132 m!4910075))

(declare-fun m!4910077 () Bool)

(assert (=> b!4316132 m!4910077))

(declare-fun m!4910079 () Bool)

(assert (=> b!4316129 m!4910079))

(declare-fun m!4910081 () Bool)

(assert (=> b!4316131 m!4910081))

(assert (=> b!4316131 m!4910081))

(declare-fun m!4910083 () Bool)

(assert (=> b!4316131 m!4910083))

(declare-fun m!4910085 () Bool)

(assert (=> b!4316127 m!4910085))

(declare-fun m!4910087 () Bool)

(assert (=> b!4316127 m!4910087))

(declare-fun m!4910089 () Bool)

(assert (=> b!4316127 m!4910089))

(declare-fun m!4910091 () Bool)

(assert (=> mapNonEmpty!21055 m!4910091))

(check-sat b_and!340325 (not b!4316131) tp_is_empty!23987 (not mapNonEmpty!21055) (not b_next!129549) (not b!4316127) (not b!4316133) (not b_next!129547) (not b!4316129) (not b!4316132) b_and!340327)
(check-sat b_and!340325 b_and!340327 (not b_next!129549) (not b_next!129547))

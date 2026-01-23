; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496676 () Bool)

(assert start!496676)

(declare-fun b!4806593 () Bool)

(declare-fun b_free!129891 () Bool)

(declare-fun b_next!130681 () Bool)

(assert (=> b!4806593 (= b_free!129891 (not b_next!130681))))

(declare-fun tp!1359032 () Bool)

(declare-fun b_and!341649 () Bool)

(assert (=> b!4806593 (= tp!1359032 b_and!341649)))

(declare-fun b!4806586 () Bool)

(declare-fun b_free!129893 () Bool)

(declare-fun b_next!130683 () Bool)

(assert (=> b!4806586 (= b_free!129893 (not b_next!130683))))

(declare-fun tp!1359035 () Bool)

(declare-fun b_and!341651 () Bool)

(assert (=> b!4806586 (= tp!1359035 b_and!341651)))

(declare-fun b!4806584 () Bool)

(declare-fun res!2044905 () Bool)

(declare-fun e!3001995 () Bool)

(assert (=> b!4806584 (=> (not res!2044905) (not e!3001995))))

(declare-datatypes ((K!15984 0))(
  ( (K!15985 (val!21093 Int)) )
))
(declare-datatypes ((array!18296 0))(
  ( (array!18297 (arr!8159 (Array (_ BitVec 32) (_ BitVec 64))) (size!36405 (_ BitVec 32))) )
))
(declare-datatypes ((V!16230 0))(
  ( (V!16231 (val!21094 Int)) )
))
(declare-datatypes ((tuple2!57144 0))(
  ( (tuple2!57145 (_1!31866 K!15984) (_2!31866 V!16230)) )
))
(declare-datatypes ((List!54525 0))(
  ( (Nil!54401) (Cons!54401 (h!60833 tuple2!57144) (t!361979 List!54525)) )
))
(declare-datatypes ((array!18298 0))(
  ( (array!18299 (arr!8160 (Array (_ BitVec 32) List!54525)) (size!36406 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9974 0))(
  ( (LongMapFixedSize!9975 (defaultEntry!5405 Int) (mask!14951 (_ BitVec 32)) (extraKeys!5262 (_ BitVec 32)) (zeroValue!5275 List!54525) (minValue!5275 List!54525) (_size!9999 (_ BitVec 32)) (_keys!5329 array!18296) (_values!5300 array!18298) (_vacant!5052 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19713 0))(
  ( (Cell!19714 (v!48612 LongMapFixedSize!9974)) )
))
(declare-datatypes ((MutLongMap!4987 0))(
  ( (LongMap!4987 (underlying!10181 Cell!19713)) (MutLongMapExt!4986 (__x!33059 Int)) )
))
(declare-datatypes ((Hashable!6998 0))(
  ( (HashableExt!6997 (__x!33060 Int)) )
))
(declare-datatypes ((Cell!19715 0))(
  ( (Cell!19716 (v!48613 MutLongMap!4987)) )
))
(declare-datatypes ((MutableMap!4871 0))(
  ( (MutableMapExt!4870 (__x!33061 Int)) (HashMap!4871 (underlying!10182 Cell!19715) (hashF!13266 Hashable!6998) (_size!10000 (_ BitVec 32)) (defaultValue!5042 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4871)

(declare-fun valid!3997 (MutableMap!4871) Bool)

(assert (=> b!4806584 (= res!2044905 (valid!3997 thiss!41921))))

(declare-fun b!4806585 () Bool)

(declare-fun e!3001996 () Bool)

(declare-fun tp!1359034 () Bool)

(declare-fun mapRes!22091 () Bool)

(assert (=> b!4806585 (= e!3001996 (and tp!1359034 mapRes!22091))))

(declare-fun condMapEmpty!22091 () Bool)

(declare-fun mapDefault!22091 () List!54525)

(assert (=> b!4806585 (= condMapEmpty!22091 (= (arr!8160 (_values!5300 (v!48612 (underlying!10181 (v!48613 (underlying!10182 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54525)) mapDefault!22091)))))

(declare-fun mapNonEmpty!22091 () Bool)

(declare-fun tp!1359038 () Bool)

(declare-fun tp!1359037 () Bool)

(assert (=> mapNonEmpty!22091 (= mapRes!22091 (and tp!1359038 tp!1359037))))

(declare-fun mapValue!22091 () List!54525)

(declare-fun mapKey!22091 () (_ BitVec 32))

(declare-fun mapRest!22091 () (Array (_ BitVec 32) List!54525))

(assert (=> mapNonEmpty!22091 (= (arr!8160 (_values!5300 (v!48612 (underlying!10181 (v!48613 (underlying!10182 thiss!41921)))))) (store mapRest!22091 mapKey!22091 mapValue!22091))))

(declare-fun b!4806587 () Bool)

(declare-fun e!3001992 () Bool)

(declare-fun e!3001997 () Bool)

(assert (=> b!4806587 (= e!3001992 e!3001997)))

(declare-fun b!4806588 () Bool)

(declare-fun e!3002000 () Bool)

(assert (=> b!4806588 (= e!3001995 e!3002000)))

(declare-fun res!2044904 () Bool)

(assert (=> b!4806588 (=> (not res!2044904) (not e!3002000))))

(declare-fun lt!1960022 () (_ BitVec 64))

(declare-fun contains!18066 (MutLongMap!4987 (_ BitVec 64)) Bool)

(assert (=> b!4806588 (= res!2044904 (contains!18066 (v!48613 (underlying!10182 thiss!41921)) lt!1960022))))

(declare-fun key!1652 () K!15984)

(declare-fun hash!5066 (Hashable!6998 K!15984) (_ BitVec 64))

(assert (=> b!4806588 (= lt!1960022 (hash!5066 (hashF!13266 thiss!41921) key!1652))))

(declare-fun b!4806589 () Bool)

(declare-fun e!3001999 () Bool)

(assert (=> b!4806589 (= e!3001997 e!3001999)))

(declare-fun b!4806590 () Bool)

(declare-fun e!3001993 () Bool)

(assert (=> b!4806590 (= e!3002000 e!3001993)))

(declare-fun res!2044907 () Bool)

(assert (=> b!4806590 (=> (not res!2044907) (not e!3001993))))

(declare-datatypes ((tuple2!57146 0))(
  ( (tuple2!57147 (_1!31867 (_ BitVec 64)) (_2!31867 List!54525)) )
))
(declare-datatypes ((List!54526 0))(
  ( (Nil!54402) (Cons!54402 (h!60834 tuple2!57146) (t!361980 List!54526)) )
))
(declare-datatypes ((ListLongMap!5481 0))(
  ( (ListLongMap!5482 (toList!7048 List!54526)) )
))
(declare-fun lt!1960021 () ListLongMap!5481)

(declare-fun contains!18067 (List!54526 tuple2!57146) Bool)

(declare-fun apply!13070 (MutLongMap!4987 (_ BitVec 64)) List!54525)

(assert (=> b!4806590 (= res!2044907 (not (contains!18067 (toList!7048 lt!1960021) (tuple2!57147 lt!1960022 (apply!13070 (v!48613 (underlying!10182 thiss!41921)) lt!1960022)))))))

(declare-fun map!12315 (MutLongMap!4987) ListLongMap!5481)

(assert (=> b!4806590 (= lt!1960021 (map!12315 (v!48613 (underlying!10182 thiss!41921))))))

(declare-fun b!4806591 () Bool)

(declare-fun e!3001998 () Bool)

(declare-fun lt!1960024 () MutLongMap!4987)

(get-info :version)

(assert (=> b!4806591 (= e!3001998 (and e!3001992 ((_ is LongMap!4987) lt!1960024)))))

(assert (=> b!4806591 (= lt!1960024 (v!48613 (underlying!10182 thiss!41921)))))

(declare-fun mapIsEmpty!22091 () Bool)

(assert (=> mapIsEmpty!22091 mapRes!22091))

(declare-fun e!3001994 () Bool)

(assert (=> b!4806586 (= e!3001994 (and e!3001998 tp!1359035))))

(declare-fun res!2044906 () Bool)

(assert (=> start!496676 (=> (not res!2044906) (not e!3001995))))

(assert (=> start!496676 (= res!2044906 ((_ is HashMap!4871) thiss!41921))))

(assert (=> start!496676 e!3001995))

(assert (=> start!496676 e!3001994))

(declare-fun tp_is_empty!33823 () Bool)

(assert (=> start!496676 tp_is_empty!33823))

(declare-fun b!4806592 () Bool)

(assert (=> b!4806592 (= e!3001993 (not true))))

(declare-fun containsKey!4083 (List!54526 (_ BitVec 64)) Bool)

(assert (=> b!4806592 (containsKey!4083 (toList!7048 lt!1960021) lt!1960022)))

(declare-datatypes ((Unit!141261 0))(
  ( (Unit!141262) )
))
(declare-fun lt!1960023 () Unit!141261)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!218 (List!54526 (_ BitVec 64)) Unit!141261)

(assert (=> b!4806592 (= lt!1960023 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!218 (toList!7048 lt!1960021) lt!1960022))))

(declare-fun tp!1359033 () Bool)

(declare-fun tp!1359036 () Bool)

(declare-fun array_inv!5873 (array!18296) Bool)

(declare-fun array_inv!5874 (array!18298) Bool)

(assert (=> b!4806593 (= e!3001999 (and tp!1359032 tp!1359033 tp!1359036 (array_inv!5873 (_keys!5329 (v!48612 (underlying!10181 (v!48613 (underlying!10182 thiss!41921)))))) (array_inv!5874 (_values!5300 (v!48612 (underlying!10181 (v!48613 (underlying!10182 thiss!41921)))))) e!3001996))))

(assert (= (and start!496676 res!2044906) b!4806584))

(assert (= (and b!4806584 res!2044905) b!4806588))

(assert (= (and b!4806588 res!2044904) b!4806590))

(assert (= (and b!4806590 res!2044907) b!4806592))

(assert (= (and b!4806585 condMapEmpty!22091) mapIsEmpty!22091))

(assert (= (and b!4806585 (not condMapEmpty!22091)) mapNonEmpty!22091))

(assert (= b!4806593 b!4806585))

(assert (= b!4806589 b!4806593))

(assert (= b!4806587 b!4806589))

(assert (= (and b!4806591 ((_ is LongMap!4987) (v!48613 (underlying!10182 thiss!41921)))) b!4806587))

(assert (= b!4806586 b!4806591))

(assert (= (and start!496676 ((_ is HashMap!4871) thiss!41921)) b!4806586))

(declare-fun m!5792912 () Bool)

(assert (=> b!4806593 m!5792912))

(declare-fun m!5792914 () Bool)

(assert (=> b!4806593 m!5792914))

(declare-fun m!5792916 () Bool)

(assert (=> b!4806592 m!5792916))

(declare-fun m!5792918 () Bool)

(assert (=> b!4806592 m!5792918))

(declare-fun m!5792920 () Bool)

(assert (=> b!4806584 m!5792920))

(declare-fun m!5792922 () Bool)

(assert (=> b!4806590 m!5792922))

(declare-fun m!5792924 () Bool)

(assert (=> b!4806590 m!5792924))

(declare-fun m!5792926 () Bool)

(assert (=> b!4806590 m!5792926))

(declare-fun m!5792928 () Bool)

(assert (=> b!4806588 m!5792928))

(declare-fun m!5792930 () Bool)

(assert (=> b!4806588 m!5792930))

(declare-fun m!5792932 () Bool)

(assert (=> mapNonEmpty!22091 m!5792932))

(check-sat (not b_next!130681) (not b!4806590) (not b!4806585) b_and!341649 tp_is_empty!33823 (not b!4806588) (not b_next!130683) (not mapNonEmpty!22091) (not b!4806592) b_and!341651 (not b!4806593) (not b!4806584))
(check-sat b_and!341649 b_and!341651 (not b_next!130681) (not b_next!130683))

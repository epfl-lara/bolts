; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488116 () Bool)

(assert start!488116)

(declare-fun b!4769138 () Bool)

(declare-fun b_free!129715 () Bool)

(declare-fun b_next!130505 () Bool)

(assert (=> b!4769138 (= b_free!129715 (not b_next!130505))))

(declare-fun tp!1355957 () Bool)

(declare-fun b_and!341449 () Bool)

(assert (=> b!4769138 (= tp!1355957 b_and!341449)))

(declare-fun b!4769141 () Bool)

(declare-fun b_free!129717 () Bool)

(declare-fun b_next!130507 () Bool)

(assert (=> b!4769141 (= b_free!129717 (not b_next!130507))))

(declare-fun tp!1355954 () Bool)

(declare-fun b_and!341451 () Bool)

(assert (=> b!4769141 (= tp!1355954 b_and!341451)))

(declare-fun b!4769133 () Bool)

(declare-fun e!2976930 () Bool)

(declare-fun tp!1355958 () Bool)

(declare-fun mapRes!21928 () Bool)

(assert (=> b!4769133 (= e!2976930 (and tp!1355958 mapRes!21928))))

(declare-fun condMapEmpty!21928 () Bool)

(declare-datatypes ((K!14999 0))(
  ( (K!15000 (val!20305 Int)) )
))
(declare-datatypes ((V!15245 0))(
  ( (V!15246 (val!20306 Int)) )
))
(declare-datatypes ((tuple2!55590 0))(
  ( (tuple2!55591 (_1!31089 K!14999) (_2!31089 V!15245)) )
))
(declare-datatypes ((array!18100 0))(
  ( (array!18101 (arr!8071 (Array (_ BitVec 32) (_ BitVec 64))) (size!36301 (_ BitVec 32))) )
))
(declare-datatypes ((List!53641 0))(
  ( (Nil!53517) (Cons!53517 (h!59929 tuple2!55590) (t!361077 List!53641)) )
))
(declare-datatypes ((array!18102 0))(
  ( (array!18103 (arr!8072 (Array (_ BitVec 32) List!53641)) (size!36302 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6604 0))(
  ( (HashableExt!6603 (__x!32577 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9886 0))(
  ( (LongMapFixedSize!9887 (defaultEntry!5361 Int) (mask!14710 (_ BitVec 32)) (extraKeys!5218 (_ BitVec 32)) (zeroValue!5231 List!53641) (minValue!5231 List!53641) (_size!9911 (_ BitVec 32)) (_keys!5285 array!18100) (_values!5256 array!18102) (_vacant!5008 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19537 0))(
  ( (Cell!19538 (v!47768 LongMapFixedSize!9886)) )
))
(declare-datatypes ((MutLongMap!4943 0))(
  ( (LongMap!4943 (underlying!10093 Cell!19537)) (MutLongMapExt!4942 (__x!32578 Int)) )
))
(declare-datatypes ((Cell!19539 0))(
  ( (Cell!19540 (v!47769 MutLongMap!4943)) )
))
(declare-datatypes ((MutableMap!4827 0))(
  ( (MutableMapExt!4826 (__x!32579 Int)) (HashMap!4827 (underlying!10094 Cell!19539) (hashF!12495 Hashable!6604) (_size!9912 (_ BitVec 32)) (defaultValue!4998 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4827)

(declare-fun mapDefault!21928 () List!53641)

(assert (=> b!4769133 (= condMapEmpty!21928 (= (arr!8072 (_values!5256 (v!47768 (underlying!10093 (v!47769 (underlying!10094 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53641)) mapDefault!21928)))))

(declare-fun b!4769134 () Bool)

(declare-fun e!2976928 () Bool)

(assert (=> b!4769134 (= e!2976928 false)))

(declare-datatypes ((tuple2!55592 0))(
  ( (tuple2!55593 (_1!31090 (_ BitVec 64)) (_2!31090 List!53641)) )
))
(declare-datatypes ((List!53642 0))(
  ( (Nil!53518) (Cons!53518 (h!59930 tuple2!55592) (t!361078 List!53642)) )
))
(declare-datatypes ((ListLongMap!4715 0))(
  ( (ListLongMap!4716 (toList!6316 List!53642)) )
))
(declare-fun lt!1932011 () ListLongMap!4715)

(declare-fun map!12018 (MutLongMap!4943) ListLongMap!4715)

(assert (=> b!4769134 (= lt!1932011 (map!12018 (v!47769 (underlying!10094 thiss!42052))))))

(declare-fun mapNonEmpty!21928 () Bool)

(declare-fun tp!1355960 () Bool)

(declare-fun tp!1355959 () Bool)

(assert (=> mapNonEmpty!21928 (= mapRes!21928 (and tp!1355960 tp!1355959))))

(declare-fun mapValue!21928 () List!53641)

(declare-fun mapKey!21928 () (_ BitVec 32))

(declare-fun mapRest!21928 () (Array (_ BitVec 32) List!53641))

(assert (=> mapNonEmpty!21928 (= (arr!8072 (_values!5256 (v!47768 (underlying!10093 (v!47769 (underlying!10094 thiss!42052)))))) (store mapRest!21928 mapKey!21928 mapValue!21928))))

(declare-fun b!4769135 () Bool)

(declare-fun e!2976927 () Bool)

(declare-fun e!2976926 () Bool)

(assert (=> b!4769135 (= e!2976927 e!2976926)))

(declare-fun b!4769136 () Bool)

(declare-fun e!2976925 () Bool)

(assert (=> b!4769136 (= e!2976925 e!2976927)))

(declare-fun b!4769137 () Bool)

(declare-fun e!2976931 () Bool)

(declare-fun lt!1932010 () MutLongMap!4943)

(get-info :version)

(assert (=> b!4769137 (= e!2976931 (and e!2976925 ((_ is LongMap!4943) lt!1932010)))))

(assert (=> b!4769137 (= lt!1932010 (v!47769 (underlying!10094 thiss!42052)))))

(declare-fun tp!1355955 () Bool)

(declare-fun tp!1355956 () Bool)

(declare-fun array_inv!5813 (array!18100) Bool)

(declare-fun array_inv!5814 (array!18102) Bool)

(assert (=> b!4769138 (= e!2976926 (and tp!1355957 tp!1355955 tp!1355956 (array_inv!5813 (_keys!5285 (v!47768 (underlying!10093 (v!47769 (underlying!10094 thiss!42052)))))) (array_inv!5814 (_values!5256 (v!47768 (underlying!10093 (v!47769 (underlying!10094 thiss!42052)))))) e!2976930))))

(declare-fun b!4769139 () Bool)

(declare-fun res!2022734 () Bool)

(assert (=> b!4769139 (=> (not res!2022734) (not e!2976928))))

(declare-fun valid!3950 (MutableMap!4827) Bool)

(assert (=> b!4769139 (= res!2022734 (valid!3950 thiss!42052))))

(declare-fun mapIsEmpty!21928 () Bool)

(assert (=> mapIsEmpty!21928 mapRes!21928))

(declare-fun e!2976929 () Bool)

(assert (=> b!4769141 (= e!2976929 (and e!2976931 tp!1355954))))

(declare-fun res!2022735 () Bool)

(assert (=> start!488116 (=> (not res!2022735) (not e!2976928))))

(assert (=> start!488116 (= res!2022735 ((_ is HashMap!4827) thiss!42052))))

(assert (=> start!488116 e!2976928))

(assert (=> start!488116 e!2976929))

(declare-fun tp_is_empty!32491 () Bool)

(assert (=> start!488116 tp_is_empty!32491))

(declare-fun b!4769140 () Bool)

(declare-fun res!2022733 () Bool)

(assert (=> b!4769140 (=> (not res!2022733) (not e!2976928))))

(declare-fun key!1776 () K!14999)

(declare-fun contains!16881 (MutableMap!4827 K!14999) Bool)

(assert (=> b!4769140 (= res!2022733 (contains!16881 thiss!42052 key!1776))))

(assert (= (and start!488116 res!2022735) b!4769139))

(assert (= (and b!4769139 res!2022734) b!4769140))

(assert (= (and b!4769140 res!2022733) b!4769134))

(assert (= (and b!4769133 condMapEmpty!21928) mapIsEmpty!21928))

(assert (= (and b!4769133 (not condMapEmpty!21928)) mapNonEmpty!21928))

(assert (= b!4769138 b!4769133))

(assert (= b!4769135 b!4769138))

(assert (= b!4769136 b!4769135))

(assert (= (and b!4769137 ((_ is LongMap!4943) (v!47769 (underlying!10094 thiss!42052)))) b!4769136))

(assert (= b!4769141 b!4769137))

(assert (= (and start!488116 ((_ is HashMap!4827) thiss!42052)) b!4769141))

(declare-fun m!5740866 () Bool)

(assert (=> b!4769140 m!5740866))

(declare-fun m!5740868 () Bool)

(assert (=> b!4769134 m!5740868))

(declare-fun m!5740870 () Bool)

(assert (=> mapNonEmpty!21928 m!5740870))

(declare-fun m!5740872 () Bool)

(assert (=> b!4769138 m!5740872))

(declare-fun m!5740874 () Bool)

(assert (=> b!4769138 m!5740874))

(declare-fun m!5740876 () Bool)

(assert (=> b!4769139 m!5740876))

(check-sat (not b!4769139) b_and!341451 (not b!4769133) (not b!4769134) tp_is_empty!32491 (not b!4769140) (not b_next!130507) b_and!341449 (not mapNonEmpty!21928) (not b!4769138) (not b_next!130505))
(check-sat b_and!341451 b_and!341449 (not b_next!130507) (not b_next!130505))

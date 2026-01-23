; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187662 () Bool)

(assert start!187662)

(declare-fun b!1872848 () Bool)

(declare-fun b_free!52007 () Bool)

(declare-fun b_next!52711 () Bool)

(assert (=> b!1872848 (= b_free!52007 (not b_next!52711))))

(declare-fun tp!532642 () Bool)

(declare-fun b_and!144293 () Bool)

(assert (=> b!1872848 (= tp!532642 b_and!144293)))

(declare-fun b!1872847 () Bool)

(declare-fun res!838175 () Bool)

(declare-fun e!1194811 () Bool)

(assert (=> b!1872847 (=> (not res!838175) (not e!1194811))))

(declare-datatypes ((array!6615 0))(
  ( (array!6616 (arr!2938 (Array (_ BitVec 32) (_ BitVec 64))) (size!16480 (_ BitVec 32))) )
))
(declare-datatypes ((V!3987 0))(
  ( (V!3988 (val!6024 Int)) )
))
(declare-datatypes ((array!6617 0))(
  ( (array!6618 (arr!2939 (Array (_ BitVec 32) V!3987)) (size!16481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3840 0))(
  ( (LongMapFixedSize!3841 (defaultEntry!2285 Int) (mask!5713 (_ BitVec 32)) (extraKeys!2168 (_ BitVec 32)) (zeroValue!2178 V!3987) (minValue!2178 V!3987) (_size!3898 (_ BitVec 32)) (_keys!2217 array!6615) (_values!2200 array!6617) (_vacant!1981 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7519 0))(
  ( (Cell!7520 (v!26146 LongMapFixedSize!3840)) )
))
(declare-datatypes ((MutLongMap!1920 0))(
  ( (LongMap!1920 (underlying!4040 Cell!7519)) (MutLongMapExt!1919 (__x!13009 Int)) )
))
(declare-fun thiss!47421 () MutLongMap!1920)

(get-info :version)

(assert (=> b!1872847 (= res!838175 ((_ is LongMap!1920) thiss!47421))))

(declare-fun e!1194813 () Bool)

(declare-fun e!1194809 () Bool)

(declare-fun tp_is_empty!8815 () Bool)

(declare-fun array_inv!2115 (array!6615) Bool)

(declare-fun array_inv!2116 (array!6617) Bool)

(assert (=> b!1872848 (= e!1194813 (and tp!532642 tp_is_empty!8815 (array_inv!2115 (_keys!2217 (v!26146 (underlying!4040 thiss!47421)))) (array_inv!2116 (_values!2200 (v!26146 (underlying!4040 thiss!47421)))) e!1194809))))

(declare-fun b!1872849 () Bool)

(declare-fun mapRes!8918 () Bool)

(assert (=> b!1872849 (= e!1194809 (and tp_is_empty!8815 mapRes!8918))))

(declare-fun condMapEmpty!8918 () Bool)

(declare-fun mapDefault!8918 () V!3987)

(assert (=> b!1872849 (= condMapEmpty!8918 (= (arr!2939 (_values!2200 (v!26146 (underlying!4040 thiss!47421)))) ((as const (Array (_ BitVec 32) V!3987)) mapDefault!8918)))))

(declare-fun mapIsEmpty!8918 () Bool)

(assert (=> mapIsEmpty!8918 mapRes!8918))

(declare-fun b!1872850 () Bool)

(declare-fun e!1194808 () Bool)

(declare-fun e!1194810 () Bool)

(assert (=> b!1872850 (= e!1194808 e!1194810)))

(declare-fun b!1872851 () Bool)

(assert (=> b!1872851 (= e!1194810 e!1194813)))

(declare-fun b!1872852 () Bool)

(assert (=> b!1872852 (= e!1194811 false)))

(declare-fun lt!719741 () Bool)

(declare-fun key!7039 () (_ BitVec 64))

(declare-fun contains!3806 (MutLongMap!1920 (_ BitVec 64)) Bool)

(assert (=> b!1872852 (= lt!719741 (contains!3806 thiss!47421 key!7039))))

(declare-fun res!838174 () Bool)

(assert (=> start!187662 (=> (not res!838174) (not e!1194811))))

(declare-fun valid!1550 (MutLongMap!1920) Bool)

(assert (=> start!187662 (= res!838174 (valid!1550 thiss!47421))))

(assert (=> start!187662 e!1194811))

(assert (=> start!187662 e!1194808))

(assert (=> start!187662 true))

(declare-fun mapNonEmpty!8918 () Bool)

(declare-fun tp!532643 () Bool)

(assert (=> mapNonEmpty!8918 (= mapRes!8918 (and tp!532643 tp_is_empty!8815))))

(declare-fun mapKey!8918 () (_ BitVec 32))

(declare-fun mapRest!8918 () (Array (_ BitVec 32) V!3987))

(declare-fun mapValue!8918 () V!3987)

(assert (=> mapNonEmpty!8918 (= (arr!2939 (_values!2200 (v!26146 (underlying!4040 thiss!47421)))) (store mapRest!8918 mapKey!8918 mapValue!8918))))

(assert (= (and start!187662 res!838174) b!1872847))

(assert (= (and b!1872847 res!838175) b!1872852))

(assert (= (and b!1872849 condMapEmpty!8918) mapIsEmpty!8918))

(assert (= (and b!1872849 (not condMapEmpty!8918)) mapNonEmpty!8918))

(assert (= b!1872848 b!1872849))

(assert (= b!1872851 b!1872848))

(assert (= b!1872850 b!1872851))

(assert (= (and start!187662 ((_ is LongMap!1920) thiss!47421)) b!1872850))

(declare-fun m!2298585 () Bool)

(assert (=> b!1872848 m!2298585))

(declare-fun m!2298587 () Bool)

(assert (=> b!1872848 m!2298587))

(declare-fun m!2298589 () Bool)

(assert (=> b!1872852 m!2298589))

(declare-fun m!2298591 () Bool)

(assert (=> start!187662 m!2298591))

(declare-fun m!2298593 () Bool)

(assert (=> mapNonEmpty!8918 m!2298593))

(check-sat b_and!144293 (not b!1872852) (not start!187662) (not mapNonEmpty!8918) (not b_next!52711) tp_is_empty!8815 (not b!1872848))
(check-sat b_and!144293 (not b_next!52711))

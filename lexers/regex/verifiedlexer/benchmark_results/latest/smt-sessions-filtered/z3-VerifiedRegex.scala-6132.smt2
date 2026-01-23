; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297294 () Bool)

(assert start!297294)

(declare-fun b!3174721 () Bool)

(declare-fun b_free!83425 () Bool)

(declare-fun b_next!84129 () Bool)

(assert (=> b!3174721 (= b_free!83425 (not b_next!84129))))

(declare-fun tp!1003641 () Bool)

(declare-fun b_and!209719 () Bool)

(assert (=> b!3174721 (= tp!1003641 b_and!209719)))

(declare-fun b!3174723 () Bool)

(declare-fun b_free!83427 () Bool)

(declare-fun b_next!84131 () Bool)

(assert (=> b!3174723 (= b_free!83427 (not b_next!84131))))

(declare-fun tp!1003638 () Bool)

(declare-fun b_and!209721 () Bool)

(assert (=> b!3174723 (= tp!1003638 b_and!209721)))

(declare-fun b!3174716 () Bool)

(declare-fun e!1977406 () Bool)

(declare-fun e!1977401 () Bool)

(assert (=> b!3174716 (= e!1977406 e!1977401)))

(declare-fun b!3174717 () Bool)

(declare-fun e!1977403 () Bool)

(assert (=> b!3174717 (= e!1977403 e!1977406)))

(declare-fun b!3174718 () Bool)

(declare-fun e!1977408 () Bool)

(declare-datatypes ((C!19816 0))(
  ( (C!19817 (val!11944 Int)) )
))
(declare-datatypes ((Regex!9815 0))(
  ( (ElementMatch!9815 (c!533554 C!19816)) (Concat!15136 (regOne!20142 Regex!9815) (regTwo!20142 Regex!9815)) (EmptyExpr!9815) (Star!9815 (reg!10144 Regex!9815)) (EmptyLang!9815) (Union!9815 (regOne!20143 Regex!9815) (regTwo!20143 Regex!9815)) )
))
(declare-datatypes ((tuple2!34932 0))(
  ( (tuple2!34933 (_1!20598 Regex!9815) (_2!20598 C!19816)) )
))
(declare-datatypes ((tuple2!34934 0))(
  ( (tuple2!34935 (_1!20599 tuple2!34932) (_2!20599 Regex!9815)) )
))
(declare-datatypes ((List!35668 0))(
  ( (Nil!35544) (Cons!35544 (h!40964 tuple2!34934) (t!234759 List!35668)) )
))
(declare-datatypes ((array!15202 0))(
  ( (array!15203 (arr!6762 (Array (_ BitVec 32) (_ BitVec 64))) (size!26848 (_ BitVec 32))) )
))
(declare-datatypes ((array!15204 0))(
  ( (array!15205 (arr!6763 (Array (_ BitVec 32) List!35668)) (size!26849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8472 0))(
  ( (LongMapFixedSize!8473 (defaultEntry!4621 Int) (mask!10937 (_ BitVec 32)) (extraKeys!4485 (_ BitVec 32)) (zeroValue!4495 List!35668) (minValue!4495 List!35668) (_size!8515 (_ BitVec 32)) (_keys!4536 array!15202) (_values!4517 array!15204) (_vacant!4297 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16753 0))(
  ( (Cell!16754 (v!35334 LongMapFixedSize!8472)) )
))
(declare-datatypes ((MutLongMap!4236 0))(
  ( (LongMap!4236 (underlying!8701 Cell!16753)) (MutLongMapExt!4235 (__x!22814 Int)) )
))
(declare-fun lt!1067597 () MutLongMap!4236)

(get-info :version)

(assert (=> b!3174718 (= e!1977408 (and e!1977403 ((_ is LongMap!4236) lt!1067597)))))

(declare-datatypes ((Cell!16755 0))(
  ( (Cell!16756 (v!35335 MutLongMap!4236)) )
))
(declare-datatypes ((Hashable!4152 0))(
  ( (HashableExt!4151 (__x!22815 Int)) )
))
(declare-datatypes ((MutableMap!4142 0))(
  ( (MutableMapExt!4141 (__x!22816 Int)) (HashMap!4142 (underlying!8702 Cell!16755) (hashF!6184 Hashable!4152) (_size!8516 (_ BitVec 32)) (defaultValue!4313 Int)) )
))
(declare-datatypes ((Cache!554 0))(
  ( (Cache!555 (cache!4288 MutableMap!4142)) )
))
(declare-fun thiss!28445 () Cache!554)

(assert (=> b!3174718 (= lt!1067597 (v!35335 (underlying!8702 (cache!4288 thiss!28445))))))

(declare-fun b!3174719 () Bool)

(declare-fun e!1977404 () Bool)

(declare-fun tp!1003642 () Bool)

(declare-fun tp!1003639 () Bool)

(assert (=> b!3174719 (= e!1977404 (and tp!1003642 tp!1003639))))

(declare-fun b!3174720 () Bool)

(declare-fun e!1977410 () Bool)

(declare-fun tp!1003635 () Bool)

(declare-fun mapRes!19178 () Bool)

(assert (=> b!3174720 (= e!1977410 (and tp!1003635 mapRes!19178))))

(declare-fun condMapEmpty!19178 () Bool)

(declare-fun mapDefault!19178 () List!35668)

(assert (=> b!3174720 (= condMapEmpty!19178 (= (arr!6763 (_values!4517 (v!35334 (underlying!8701 (v!35335 (underlying!8702 (cache!4288 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35668)) mapDefault!19178)))))

(declare-fun mapIsEmpty!19178 () Bool)

(assert (=> mapIsEmpty!19178 mapRes!19178))

(declare-fun e!1977402 () Bool)

(assert (=> b!3174721 (= e!1977402 (and e!1977408 tp!1003641))))

(declare-fun b!3174722 () Bool)

(declare-fun tp_is_empty!17193 () Bool)

(assert (=> b!3174722 (= e!1977404 tp_is_empty!17193)))

(declare-fun res!1289940 () Bool)

(declare-fun e!1977405 () Bool)

(assert (=> start!297294 (=> (not res!1289940) (not e!1977405))))

(declare-fun validCacheMap!113 (MutableMap!4142) Bool)

(assert (=> start!297294 (= res!1289940 (validCacheMap!113 (cache!4288 thiss!28445)))))

(assert (=> start!297294 e!1977405))

(declare-fun e!1977409 () Bool)

(declare-fun inv!48287 (Cache!554) Bool)

(assert (=> start!297294 (and (inv!48287 thiss!28445) e!1977409)))

(assert (=> start!297294 e!1977404))

(assert (=> start!297294 tp_is_empty!17193))

(declare-fun tp!1003634 () Bool)

(declare-fun tp!1003640 () Bool)

(declare-fun array_inv!4854 (array!15202) Bool)

(declare-fun array_inv!4855 (array!15204) Bool)

(assert (=> b!3174723 (= e!1977401 (and tp!1003638 tp!1003634 tp!1003640 (array_inv!4854 (_keys!4536 (v!35334 (underlying!8701 (v!35335 (underlying!8702 (cache!4288 thiss!28445))))))) (array_inv!4855 (_values!4517 (v!35334 (underlying!8701 (v!35335 (underlying!8702 (cache!4288 thiss!28445))))))) e!1977410))))

(declare-fun b!3174724 () Bool)

(declare-fun tp!1003637 () Bool)

(declare-fun tp!1003631 () Bool)

(assert (=> b!3174724 (= e!1977404 (and tp!1003637 tp!1003631))))

(declare-fun b!3174725 () Bool)

(declare-fun res!1289941 () Bool)

(assert (=> b!3174725 (=> (not res!1289941) (not e!1977405))))

(declare-fun r!4705 () Regex!9815)

(declare-fun validRegex!4517 (Regex!9815) Bool)

(assert (=> b!3174725 (= res!1289941 (validRegex!4517 r!4705))))

(declare-fun b!3174726 () Bool)

(declare-fun tp!1003636 () Bool)

(assert (=> b!3174726 (= e!1977404 tp!1003636)))

(declare-fun b!3174727 () Bool)

(assert (=> b!3174727 (= e!1977405 false)))

(declare-fun lt!1067596 () Bool)

(declare-fun c!6979 () C!19816)

(declare-fun contains!6264 (MutableMap!4142 tuple2!34932) Bool)

(assert (=> b!3174727 (= lt!1067596 (contains!6264 (cache!4288 thiss!28445) (tuple2!34933 r!4705 c!6979)))))

(declare-fun b!3174728 () Bool)

(assert (=> b!3174728 (= e!1977409 e!1977402)))

(declare-fun mapNonEmpty!19178 () Bool)

(declare-fun tp!1003632 () Bool)

(declare-fun tp!1003633 () Bool)

(assert (=> mapNonEmpty!19178 (= mapRes!19178 (and tp!1003632 tp!1003633))))

(declare-fun mapRest!19178 () (Array (_ BitVec 32) List!35668))

(declare-fun mapValue!19178 () List!35668)

(declare-fun mapKey!19178 () (_ BitVec 32))

(assert (=> mapNonEmpty!19178 (= (arr!6763 (_values!4517 (v!35334 (underlying!8701 (v!35335 (underlying!8702 (cache!4288 thiss!28445))))))) (store mapRest!19178 mapKey!19178 mapValue!19178))))

(assert (= (and start!297294 res!1289940) b!3174725))

(assert (= (and b!3174725 res!1289941) b!3174727))

(assert (= (and b!3174720 condMapEmpty!19178) mapIsEmpty!19178))

(assert (= (and b!3174720 (not condMapEmpty!19178)) mapNonEmpty!19178))

(assert (= b!3174723 b!3174720))

(assert (= b!3174716 b!3174723))

(assert (= b!3174717 b!3174716))

(assert (= (and b!3174718 ((_ is LongMap!4236) (v!35335 (underlying!8702 (cache!4288 thiss!28445))))) b!3174717))

(assert (= b!3174721 b!3174718))

(assert (= (and b!3174728 ((_ is HashMap!4142) (cache!4288 thiss!28445))) b!3174721))

(assert (= start!297294 b!3174728))

(assert (= (and start!297294 ((_ is ElementMatch!9815) r!4705)) b!3174722))

(assert (= (and start!297294 ((_ is Concat!15136) r!4705)) b!3174724))

(assert (= (and start!297294 ((_ is Star!9815) r!4705)) b!3174726))

(assert (= (and start!297294 ((_ is Union!9815) r!4705)) b!3174719))

(declare-fun m!3431874 () Bool)

(assert (=> b!3174723 m!3431874))

(declare-fun m!3431876 () Bool)

(assert (=> b!3174723 m!3431876))

(declare-fun m!3431878 () Bool)

(assert (=> b!3174725 m!3431878))

(declare-fun m!3431880 () Bool)

(assert (=> start!297294 m!3431880))

(declare-fun m!3431882 () Bool)

(assert (=> start!297294 m!3431882))

(declare-fun m!3431884 () Bool)

(assert (=> b!3174727 m!3431884))

(declare-fun m!3431886 () Bool)

(assert (=> mapNonEmpty!19178 m!3431886))

(check-sat tp_is_empty!17193 (not b!3174719) (not b!3174726) (not b!3174723) (not mapNonEmpty!19178) (not start!297294) (not b!3174724) (not b!3174720) (not b!3174727) b_and!209719 (not b_next!84129) (not b!3174725) b_and!209721 (not b_next!84131))
(check-sat b_and!209721 b_and!209719 (not b_next!84131) (not b_next!84129))

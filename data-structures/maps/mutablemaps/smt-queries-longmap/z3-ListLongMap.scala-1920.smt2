; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34176 () Bool)

(assert start!34176)

(declare-fun b_free!7191 () Bool)

(declare-fun b_next!7191 () Bool)

(assert (=> start!34176 (= b_free!7191 (not b_next!7191))))

(declare-fun tp!25106 () Bool)

(declare-fun b_and!14409 () Bool)

(assert (=> start!34176 (= tp!25106 b_and!14409)))

(declare-fun b!340292 () Bool)

(declare-fun res!188022 () Bool)

(declare-fun e!208769 () Bool)

(assert (=> b!340292 (=> (not res!188022) (not e!208769))))

(declare-datatypes ((array!17857 0))(
  ( (array!17858 (arr!8446 (Array (_ BitVec 32) (_ BitVec 64))) (size!8798 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17857)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340292 (= res!188022 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340294 () Bool)

(declare-fun res!188027 () Bool)

(declare-fun e!208772 () Bool)

(assert (=> b!340294 (=> (not res!188027) (not e!208772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340294 (= res!188027 (validKeyInArray!0 k0!1348))))

(declare-fun b!340295 () Bool)

(declare-fun res!188020 () Bool)

(assert (=> b!340295 (=> (not res!188020) (not e!208772))))

(declare-datatypes ((List!4881 0))(
  ( (Nil!4878) (Cons!4877 (h!5733 (_ BitVec 64)) (t!9997 List!4881)) )
))
(declare-fun arrayNoDuplicates!0 (array!17857 (_ BitVec 32) List!4881) Bool)

(assert (=> b!340295 (= res!188020 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4878))))

(declare-fun mapNonEmpty!12141 () Bool)

(declare-fun mapRes!12141 () Bool)

(declare-fun tp!25107 () Bool)

(declare-fun e!208768 () Bool)

(assert (=> mapNonEmpty!12141 (= mapRes!12141 (and tp!25107 e!208768))))

(declare-datatypes ((V!10501 0))(
  ( (V!10502 (val!3616 Int)) )
))
(declare-datatypes ((ValueCell!3228 0))(
  ( (ValueCellFull!3228 (v!5784 V!10501)) (EmptyCell!3228) )
))
(declare-datatypes ((array!17859 0))(
  ( (array!17860 (arr!8447 (Array (_ BitVec 32) ValueCell!3228)) (size!8799 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17859)

(declare-fun mapRest!12141 () (Array (_ BitVec 32) ValueCell!3228))

(declare-fun mapKey!12141 () (_ BitVec 32))

(declare-fun mapValue!12141 () ValueCell!3228)

(assert (=> mapNonEmpty!12141 (= (arr!8447 _values!1525) (store mapRest!12141 mapKey!12141 mapValue!12141))))

(declare-fun b!340296 () Bool)

(declare-fun res!188021 () Bool)

(assert (=> b!340296 (=> (not res!188021) (not e!208772))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10501)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10501)

(declare-datatypes ((tuple2!5236 0))(
  ( (tuple2!5237 (_1!2628 (_ BitVec 64)) (_2!2628 V!10501)) )
))
(declare-datatypes ((List!4882 0))(
  ( (Nil!4879) (Cons!4878 (h!5734 tuple2!5236) (t!9998 List!4882)) )
))
(declare-datatypes ((ListLongMap!4163 0))(
  ( (ListLongMap!4164 (toList!2097 List!4882)) )
))
(declare-fun contains!2147 (ListLongMap!4163 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1617 (array!17857 array!17859 (_ BitVec 32) (_ BitVec 32) V!10501 V!10501 (_ BitVec 32) Int) ListLongMap!4163)

(assert (=> b!340296 (= res!188021 (not (contains!2147 (getCurrentListMap!1617 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340297 () Bool)

(declare-fun res!188026 () Bool)

(assert (=> b!340297 (=> (not res!188026) (not e!208772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17857 (_ BitVec 32)) Bool)

(assert (=> b!340297 (= res!188026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340293 () Bool)

(declare-fun res!188024 () Bool)

(assert (=> b!340293 (=> (not res!188024) (not e!208772))))

(assert (=> b!340293 (= res!188024 (and (= (size!8799 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8798 _keys!1895) (size!8799 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!188025 () Bool)

(assert (=> start!34176 (=> (not res!188025) (not e!208772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34176 (= res!188025 (validMask!0 mask!2385))))

(assert (=> start!34176 e!208772))

(assert (=> start!34176 true))

(declare-fun tp_is_empty!7143 () Bool)

(assert (=> start!34176 tp_is_empty!7143))

(assert (=> start!34176 tp!25106))

(declare-fun e!208770 () Bool)

(declare-fun array_inv!6252 (array!17859) Bool)

(assert (=> start!34176 (and (array_inv!6252 _values!1525) e!208770)))

(declare-fun array_inv!6253 (array!17857) Bool)

(assert (=> start!34176 (array_inv!6253 _keys!1895)))

(declare-fun b!340298 () Bool)

(assert (=> b!340298 (= e!208769 false)))

(declare-fun lt!161559 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17857 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340298 (= lt!161559 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340299 () Bool)

(assert (=> b!340299 (= e!208772 e!208769)))

(declare-fun res!188023 () Bool)

(assert (=> b!340299 (=> (not res!188023) (not e!208769))))

(declare-datatypes ((SeekEntryResult!3265 0))(
  ( (MissingZero!3265 (index!15239 (_ BitVec 32))) (Found!3265 (index!15240 (_ BitVec 32))) (Intermediate!3265 (undefined!4077 Bool) (index!15241 (_ BitVec 32)) (x!33902 (_ BitVec 32))) (Undefined!3265) (MissingVacant!3265 (index!15242 (_ BitVec 32))) )
))
(declare-fun lt!161558 () SeekEntryResult!3265)

(get-info :version)

(assert (=> b!340299 (= res!188023 (and (not ((_ is Found!3265) lt!161558)) (not ((_ is MissingZero!3265) lt!161558)) ((_ is MissingVacant!3265) lt!161558)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17857 (_ BitVec 32)) SeekEntryResult!3265)

(assert (=> b!340299 (= lt!161558 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340300 () Bool)

(declare-fun e!208773 () Bool)

(assert (=> b!340300 (= e!208773 tp_is_empty!7143)))

(declare-fun b!340301 () Bool)

(assert (=> b!340301 (= e!208770 (and e!208773 mapRes!12141))))

(declare-fun condMapEmpty!12141 () Bool)

(declare-fun mapDefault!12141 () ValueCell!3228)

(assert (=> b!340301 (= condMapEmpty!12141 (= (arr!8447 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3228)) mapDefault!12141)))))

(declare-fun b!340302 () Bool)

(assert (=> b!340302 (= e!208768 tp_is_empty!7143)))

(declare-fun mapIsEmpty!12141 () Bool)

(assert (=> mapIsEmpty!12141 mapRes!12141))

(assert (= (and start!34176 res!188025) b!340293))

(assert (= (and b!340293 res!188024) b!340297))

(assert (= (and b!340297 res!188026) b!340295))

(assert (= (and b!340295 res!188020) b!340294))

(assert (= (and b!340294 res!188027) b!340296))

(assert (= (and b!340296 res!188021) b!340299))

(assert (= (and b!340299 res!188023) b!340292))

(assert (= (and b!340292 res!188022) b!340298))

(assert (= (and b!340301 condMapEmpty!12141) mapIsEmpty!12141))

(assert (= (and b!340301 (not condMapEmpty!12141)) mapNonEmpty!12141))

(assert (= (and mapNonEmpty!12141 ((_ is ValueCellFull!3228) mapValue!12141)) b!340302))

(assert (= (and b!340301 ((_ is ValueCellFull!3228) mapDefault!12141)) b!340300))

(assert (= start!34176 b!340301))

(declare-fun m!343023 () Bool)

(assert (=> start!34176 m!343023))

(declare-fun m!343025 () Bool)

(assert (=> start!34176 m!343025))

(declare-fun m!343027 () Bool)

(assert (=> start!34176 m!343027))

(declare-fun m!343029 () Bool)

(assert (=> b!340292 m!343029))

(declare-fun m!343031 () Bool)

(assert (=> b!340296 m!343031))

(assert (=> b!340296 m!343031))

(declare-fun m!343033 () Bool)

(assert (=> b!340296 m!343033))

(declare-fun m!343035 () Bool)

(assert (=> b!340295 m!343035))

(declare-fun m!343037 () Bool)

(assert (=> b!340294 m!343037))

(declare-fun m!343039 () Bool)

(assert (=> b!340298 m!343039))

(declare-fun m!343041 () Bool)

(assert (=> b!340299 m!343041))

(declare-fun m!343043 () Bool)

(assert (=> mapNonEmpty!12141 m!343043))

(declare-fun m!343045 () Bool)

(assert (=> b!340297 m!343045))

(check-sat (not b!340292) (not b!340295) (not b!340297) (not b!340299) (not b_next!7191) (not b!340294) b_and!14409 (not mapNonEmpty!12141) (not b!340298) (not start!34176) (not b!340296) tp_is_empty!7143)
(check-sat b_and!14409 (not b_next!7191))

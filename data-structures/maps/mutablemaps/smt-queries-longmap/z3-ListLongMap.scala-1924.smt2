; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34200 () Bool)

(assert start!34200)

(declare-fun b_free!7215 () Bool)

(declare-fun b_next!7215 () Bool)

(assert (=> start!34200 (= b_free!7215 (not b_next!7215))))

(declare-fun tp!25179 () Bool)

(declare-fun b_and!14433 () Bool)

(assert (=> start!34200 (= tp!25179 b_and!14433)))

(declare-fun b!340688 () Bool)

(declare-fun res!188308 () Bool)

(declare-fun e!208987 () Bool)

(assert (=> b!340688 (=> (not res!188308) (not e!208987))))

(declare-datatypes ((array!17899 0))(
  ( (array!17900 (arr!8467 (Array (_ BitVec 32) (_ BitVec 64))) (size!8819 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17899)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340688 (= res!188308 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340689 () Bool)

(declare-fun res!188312 () Bool)

(declare-fun e!208984 () Bool)

(assert (=> b!340689 (=> (not res!188312) (not e!208984))))

(declare-datatypes ((List!4892 0))(
  ( (Nil!4889) (Cons!4888 (h!5744 (_ BitVec 64)) (t!10008 List!4892)) )
))
(declare-fun arrayNoDuplicates!0 (array!17899 (_ BitVec 32) List!4892) Bool)

(assert (=> b!340689 (= res!188312 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4889))))

(declare-fun b!340690 () Bool)

(declare-fun e!208989 () Bool)

(declare-fun tp_is_empty!7167 () Bool)

(assert (=> b!340690 (= e!208989 tp_is_empty!7167)))

(declare-fun b!340691 () Bool)

(declare-fun res!188313 () Bool)

(assert (=> b!340691 (=> (not res!188313) (not e!208984))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17899 (_ BitVec 32)) Bool)

(assert (=> b!340691 (= res!188313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340692 () Bool)

(assert (=> b!340692 (= e!208987 false)))

(declare-fun lt!161631 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17899 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340692 (= lt!161631 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340693 () Bool)

(declare-fun e!208988 () Bool)

(assert (=> b!340693 (= e!208988 tp_is_empty!7167)))

(declare-fun b!340694 () Bool)

(assert (=> b!340694 (= e!208984 e!208987)))

(declare-fun res!188310 () Bool)

(assert (=> b!340694 (=> (not res!188310) (not e!208987))))

(declare-datatypes ((SeekEntryResult!3270 0))(
  ( (MissingZero!3270 (index!15259 (_ BitVec 32))) (Found!3270 (index!15260 (_ BitVec 32))) (Intermediate!3270 (undefined!4082 Bool) (index!15261 (_ BitVec 32)) (x!33939 (_ BitVec 32))) (Undefined!3270) (MissingVacant!3270 (index!15262 (_ BitVec 32))) )
))
(declare-fun lt!161630 () SeekEntryResult!3270)

(get-info :version)

(assert (=> b!340694 (= res!188310 (and (not ((_ is Found!3270) lt!161630)) (not ((_ is MissingZero!3270) lt!161630)) ((_ is MissingVacant!3270) lt!161630)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17899 (_ BitVec 32)) SeekEntryResult!3270)

(assert (=> b!340694 (= lt!161630 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340695 () Bool)

(declare-fun e!208986 () Bool)

(declare-fun mapRes!12177 () Bool)

(assert (=> b!340695 (= e!208986 (and e!208989 mapRes!12177))))

(declare-fun condMapEmpty!12177 () Bool)

(declare-datatypes ((V!10533 0))(
  ( (V!10534 (val!3628 Int)) )
))
(declare-datatypes ((ValueCell!3240 0))(
  ( (ValueCellFull!3240 (v!5796 V!10533)) (EmptyCell!3240) )
))
(declare-datatypes ((array!17901 0))(
  ( (array!17902 (arr!8468 (Array (_ BitVec 32) ValueCell!3240)) (size!8820 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17901)

(declare-fun mapDefault!12177 () ValueCell!3240)

(assert (=> b!340695 (= condMapEmpty!12177 (= (arr!8468 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3240)) mapDefault!12177)))))

(declare-fun res!188315 () Bool)

(assert (=> start!34200 (=> (not res!188315) (not e!208984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34200 (= res!188315 (validMask!0 mask!2385))))

(assert (=> start!34200 e!208984))

(assert (=> start!34200 true))

(assert (=> start!34200 tp_is_empty!7167))

(assert (=> start!34200 tp!25179))

(declare-fun array_inv!6264 (array!17901) Bool)

(assert (=> start!34200 (and (array_inv!6264 _values!1525) e!208986)))

(declare-fun array_inv!6265 (array!17899) Bool)

(assert (=> start!34200 (array_inv!6265 _keys!1895)))

(declare-fun b!340696 () Bool)

(declare-fun res!188311 () Bool)

(assert (=> b!340696 (=> (not res!188311) (not e!208984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340696 (= res!188311 (validKeyInArray!0 k0!1348))))

(declare-fun b!340697 () Bool)

(declare-fun res!188314 () Bool)

(assert (=> b!340697 (=> (not res!188314) (not e!208984))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340697 (= res!188314 (and (= (size!8820 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8819 _keys!1895) (size!8820 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12177 () Bool)

(assert (=> mapIsEmpty!12177 mapRes!12177))

(declare-fun b!340698 () Bool)

(declare-fun res!188309 () Bool)

(assert (=> b!340698 (=> (not res!188309) (not e!208984))))

(declare-fun zeroValue!1467 () V!10533)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10533)

(declare-datatypes ((tuple2!5248 0))(
  ( (tuple2!5249 (_1!2634 (_ BitVec 64)) (_2!2634 V!10533)) )
))
(declare-datatypes ((List!4893 0))(
  ( (Nil!4890) (Cons!4889 (h!5745 tuple2!5248) (t!10009 List!4893)) )
))
(declare-datatypes ((ListLongMap!4175 0))(
  ( (ListLongMap!4176 (toList!2103 List!4893)) )
))
(declare-fun contains!2153 (ListLongMap!4175 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1623 (array!17899 array!17901 (_ BitVec 32) (_ BitVec 32) V!10533 V!10533 (_ BitVec 32) Int) ListLongMap!4175)

(assert (=> b!340698 (= res!188309 (not (contains!2153 (getCurrentListMap!1623 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12177 () Bool)

(declare-fun tp!25178 () Bool)

(assert (=> mapNonEmpty!12177 (= mapRes!12177 (and tp!25178 e!208988))))

(declare-fun mapValue!12177 () ValueCell!3240)

(declare-fun mapKey!12177 () (_ BitVec 32))

(declare-fun mapRest!12177 () (Array (_ BitVec 32) ValueCell!3240))

(assert (=> mapNonEmpty!12177 (= (arr!8468 _values!1525) (store mapRest!12177 mapKey!12177 mapValue!12177))))

(assert (= (and start!34200 res!188315) b!340697))

(assert (= (and b!340697 res!188314) b!340691))

(assert (= (and b!340691 res!188313) b!340689))

(assert (= (and b!340689 res!188312) b!340696))

(assert (= (and b!340696 res!188311) b!340698))

(assert (= (and b!340698 res!188309) b!340694))

(assert (= (and b!340694 res!188310) b!340688))

(assert (= (and b!340688 res!188308) b!340692))

(assert (= (and b!340695 condMapEmpty!12177) mapIsEmpty!12177))

(assert (= (and b!340695 (not condMapEmpty!12177)) mapNonEmpty!12177))

(assert (= (and mapNonEmpty!12177 ((_ is ValueCellFull!3240) mapValue!12177)) b!340693))

(assert (= (and b!340695 ((_ is ValueCellFull!3240) mapDefault!12177)) b!340690))

(assert (= start!34200 b!340695))

(declare-fun m!343311 () Bool)

(assert (=> b!340694 m!343311))

(declare-fun m!343313 () Bool)

(assert (=> b!340698 m!343313))

(assert (=> b!340698 m!343313))

(declare-fun m!343315 () Bool)

(assert (=> b!340698 m!343315))

(declare-fun m!343317 () Bool)

(assert (=> start!34200 m!343317))

(declare-fun m!343319 () Bool)

(assert (=> start!34200 m!343319))

(declare-fun m!343321 () Bool)

(assert (=> start!34200 m!343321))

(declare-fun m!343323 () Bool)

(assert (=> b!340691 m!343323))

(declare-fun m!343325 () Bool)

(assert (=> b!340692 m!343325))

(declare-fun m!343327 () Bool)

(assert (=> mapNonEmpty!12177 m!343327))

(declare-fun m!343329 () Bool)

(assert (=> b!340696 m!343329))

(declare-fun m!343331 () Bool)

(assert (=> b!340688 m!343331))

(declare-fun m!343333 () Bool)

(assert (=> b!340689 m!343333))

(check-sat b_and!14433 (not mapNonEmpty!12177) tp_is_empty!7167 (not b!340691) (not b_next!7215) (not b!340692) (not start!34200) (not b!340689) (not b!340696) (not b!340694) (not b!340698) (not b!340688))
(check-sat b_and!14433 (not b_next!7215))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34230 () Bool)

(assert start!34230)

(declare-fun b_free!7245 () Bool)

(declare-fun b_next!7245 () Bool)

(assert (=> start!34230 (= b_free!7245 (not b_next!7245))))

(declare-fun tp!25268 () Bool)

(declare-fun b_and!14463 () Bool)

(assert (=> start!34230 (= tp!25268 b_and!14463)))

(declare-fun b!341183 () Bool)

(declare-fun res!188670 () Bool)

(declare-fun e!209258 () Bool)

(assert (=> b!341183 (=> (not res!188670) (not e!209258))))

(declare-datatypes ((array!17959 0))(
  ( (array!17960 (arr!8497 (Array (_ BitVec 32) (_ BitVec 64))) (size!8849 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17959)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17959 (_ BitVec 32)) Bool)

(assert (=> b!341183 (= res!188670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341184 () Bool)

(declare-fun e!209257 () Bool)

(assert (=> b!341184 (= e!209258 e!209257)))

(declare-fun res!188668 () Bool)

(assert (=> b!341184 (=> (not res!188668) (not e!209257))))

(declare-datatypes ((SeekEntryResult!3280 0))(
  ( (MissingZero!3280 (index!15299 (_ BitVec 32))) (Found!3280 (index!15300 (_ BitVec 32))) (Intermediate!3280 (undefined!4092 Bool) (index!15301 (_ BitVec 32)) (x!33989 (_ BitVec 32))) (Undefined!3280) (MissingVacant!3280 (index!15302 (_ BitVec 32))) )
))
(declare-fun lt!161720 () SeekEntryResult!3280)

(get-info :version)

(assert (=> b!341184 (= res!188668 (and (not ((_ is Found!3280) lt!161720)) (not ((_ is MissingZero!3280) lt!161720)) ((_ is MissingVacant!3280) lt!161720)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17959 (_ BitVec 32)) SeekEntryResult!3280)

(assert (=> b!341184 (= lt!161720 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341185 () Bool)

(assert (=> b!341185 (= e!209257 false)))

(declare-fun lt!161721 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17959 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341185 (= lt!161721 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341186 () Bool)

(declare-fun res!188674 () Bool)

(assert (=> b!341186 (=> (not res!188674) (not e!209258))))

(declare-datatypes ((V!10573 0))(
  ( (V!10574 (val!3643 Int)) )
))
(declare-fun zeroValue!1467 () V!10573)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10573)

(declare-datatypes ((ValueCell!3255 0))(
  ( (ValueCellFull!3255 (v!5811 V!10573)) (EmptyCell!3255) )
))
(declare-datatypes ((array!17961 0))(
  ( (array!17962 (arr!8498 (Array (_ BitVec 32) ValueCell!3255)) (size!8850 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17961)

(declare-datatypes ((tuple2!5268 0))(
  ( (tuple2!5269 (_1!2644 (_ BitVec 64)) (_2!2644 V!10573)) )
))
(declare-datatypes ((List!4911 0))(
  ( (Nil!4908) (Cons!4907 (h!5763 tuple2!5268) (t!10027 List!4911)) )
))
(declare-datatypes ((ListLongMap!4195 0))(
  ( (ListLongMap!4196 (toList!2113 List!4911)) )
))
(declare-fun contains!2163 (ListLongMap!4195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1633 (array!17959 array!17961 (_ BitVec 32) (_ BitVec 32) V!10573 V!10573 (_ BitVec 32) Int) ListLongMap!4195)

(assert (=> b!341186 (= res!188674 (not (contains!2163 (getCurrentListMap!1633 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!341187 () Bool)

(declare-fun e!209255 () Bool)

(declare-fun e!209254 () Bool)

(declare-fun mapRes!12222 () Bool)

(assert (=> b!341187 (= e!209255 (and e!209254 mapRes!12222))))

(declare-fun condMapEmpty!12222 () Bool)

(declare-fun mapDefault!12222 () ValueCell!3255)

(assert (=> b!341187 (= condMapEmpty!12222 (= (arr!8498 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3255)) mapDefault!12222)))))

(declare-fun b!341188 () Bool)

(declare-fun res!188671 () Bool)

(assert (=> b!341188 (=> (not res!188671) (not e!209258))))

(assert (=> b!341188 (= res!188671 (and (= (size!8850 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8849 _keys!1895) (size!8850 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341189 () Bool)

(declare-fun res!188675 () Bool)

(assert (=> b!341189 (=> (not res!188675) (not e!209258))))

(declare-datatypes ((List!4912 0))(
  ( (Nil!4909) (Cons!4908 (h!5764 (_ BitVec 64)) (t!10028 List!4912)) )
))
(declare-fun arrayNoDuplicates!0 (array!17959 (_ BitVec 32) List!4912) Bool)

(assert (=> b!341189 (= res!188675 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4909))))

(declare-fun b!341190 () Bool)

(declare-fun res!188673 () Bool)

(assert (=> b!341190 (=> (not res!188673) (not e!209258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341190 (= res!188673 (validKeyInArray!0 k0!1348))))

(declare-fun b!341191 () Bool)

(declare-fun res!188669 () Bool)

(assert (=> b!341191 (=> (not res!188669) (not e!209257))))

(declare-fun arrayContainsKey!0 (array!17959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341191 (= res!188669 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341192 () Bool)

(declare-fun tp_is_empty!7197 () Bool)

(assert (=> b!341192 (= e!209254 tp_is_empty!7197)))

(declare-fun mapNonEmpty!12222 () Bool)

(declare-fun tp!25269 () Bool)

(declare-fun e!209259 () Bool)

(assert (=> mapNonEmpty!12222 (= mapRes!12222 (and tp!25269 e!209259))))

(declare-fun mapKey!12222 () (_ BitVec 32))

(declare-fun mapValue!12222 () ValueCell!3255)

(declare-fun mapRest!12222 () (Array (_ BitVec 32) ValueCell!3255))

(assert (=> mapNonEmpty!12222 (= (arr!8498 _values!1525) (store mapRest!12222 mapKey!12222 mapValue!12222))))

(declare-fun b!341193 () Bool)

(assert (=> b!341193 (= e!209259 tp_is_empty!7197)))

(declare-fun mapIsEmpty!12222 () Bool)

(assert (=> mapIsEmpty!12222 mapRes!12222))

(declare-fun res!188672 () Bool)

(assert (=> start!34230 (=> (not res!188672) (not e!209258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34230 (= res!188672 (validMask!0 mask!2385))))

(assert (=> start!34230 e!209258))

(assert (=> start!34230 true))

(assert (=> start!34230 tp_is_empty!7197))

(assert (=> start!34230 tp!25268))

(declare-fun array_inv!6284 (array!17961) Bool)

(assert (=> start!34230 (and (array_inv!6284 _values!1525) e!209255)))

(declare-fun array_inv!6285 (array!17959) Bool)

(assert (=> start!34230 (array_inv!6285 _keys!1895)))

(assert (= (and start!34230 res!188672) b!341188))

(assert (= (and b!341188 res!188671) b!341183))

(assert (= (and b!341183 res!188670) b!341189))

(assert (= (and b!341189 res!188675) b!341190))

(assert (= (and b!341190 res!188673) b!341186))

(assert (= (and b!341186 res!188674) b!341184))

(assert (= (and b!341184 res!188668) b!341191))

(assert (= (and b!341191 res!188669) b!341185))

(assert (= (and b!341187 condMapEmpty!12222) mapIsEmpty!12222))

(assert (= (and b!341187 (not condMapEmpty!12222)) mapNonEmpty!12222))

(assert (= (and mapNonEmpty!12222 ((_ is ValueCellFull!3255) mapValue!12222)) b!341193))

(assert (= (and b!341187 ((_ is ValueCellFull!3255) mapDefault!12222)) b!341192))

(assert (= start!34230 b!341187))

(declare-fun m!343671 () Bool)

(assert (=> b!341189 m!343671))

(declare-fun m!343673 () Bool)

(assert (=> b!341185 m!343673))

(declare-fun m!343675 () Bool)

(assert (=> b!341183 m!343675))

(declare-fun m!343677 () Bool)

(assert (=> start!34230 m!343677))

(declare-fun m!343679 () Bool)

(assert (=> start!34230 m!343679))

(declare-fun m!343681 () Bool)

(assert (=> start!34230 m!343681))

(declare-fun m!343683 () Bool)

(assert (=> b!341190 m!343683))

(declare-fun m!343685 () Bool)

(assert (=> b!341184 m!343685))

(declare-fun m!343687 () Bool)

(assert (=> mapNonEmpty!12222 m!343687))

(declare-fun m!343689 () Bool)

(assert (=> b!341191 m!343689))

(declare-fun m!343691 () Bool)

(assert (=> b!341186 m!343691))

(assert (=> b!341186 m!343691))

(declare-fun m!343693 () Bool)

(assert (=> b!341186 m!343693))

(check-sat (not b_next!7245) (not b!341184) (not b!341190) (not b!341191) b_and!14463 (not b!341183) (not b!341189) tp_is_empty!7197 (not b!341185) (not b!341186) (not mapNonEmpty!12222) (not start!34230))
(check-sat b_and!14463 (not b_next!7245))

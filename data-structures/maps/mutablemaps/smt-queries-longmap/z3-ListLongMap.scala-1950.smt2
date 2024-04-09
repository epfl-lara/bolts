; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34456 () Bool)

(assert start!34456)

(declare-fun b_free!7371 () Bool)

(declare-fun b_next!7371 () Bool)

(assert (=> start!34456 (= b_free!7371 (not b_next!7371))))

(declare-fun tp!25658 () Bool)

(declare-fun b_and!14597 () Bool)

(assert (=> start!34456 (= tp!25658 b_and!14597)))

(declare-fun b!343853 () Bool)

(declare-fun res!190185 () Bool)

(declare-fun e!210827 () Bool)

(assert (=> b!343853 (=> (not res!190185) (not e!210827))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343853 (= res!190185 (validKeyInArray!0 k0!1348))))

(declare-fun b!343854 () Bool)

(declare-fun e!210828 () Bool)

(declare-fun e!210824 () Bool)

(declare-fun mapRes!12423 () Bool)

(assert (=> b!343854 (= e!210828 (and e!210824 mapRes!12423))))

(declare-fun condMapEmpty!12423 () Bool)

(declare-datatypes ((V!10741 0))(
  ( (V!10742 (val!3706 Int)) )
))
(declare-datatypes ((ValueCell!3318 0))(
  ( (ValueCellFull!3318 (v!5878 V!10741)) (EmptyCell!3318) )
))
(declare-datatypes ((array!18207 0))(
  ( (array!18208 (arr!8617 (Array (_ BitVec 32) ValueCell!3318)) (size!8969 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18207)

(declare-fun mapDefault!12423 () ValueCell!3318)

(assert (=> b!343854 (= condMapEmpty!12423 (= (arr!8617 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3318)) mapDefault!12423)))))

(declare-fun b!343855 () Bool)

(declare-fun res!190189 () Bool)

(assert (=> b!343855 (=> (not res!190189) (not e!210827))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10741)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18209 0))(
  ( (array!18210 (arr!8618 (Array (_ BitVec 32) (_ BitVec 64))) (size!8970 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18209)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10741)

(declare-datatypes ((tuple2!5356 0))(
  ( (tuple2!5357 (_1!2688 (_ BitVec 64)) (_2!2688 V!10741)) )
))
(declare-datatypes ((List!5001 0))(
  ( (Nil!4998) (Cons!4997 (h!5853 tuple2!5356) (t!10125 List!5001)) )
))
(declare-datatypes ((ListLongMap!4283 0))(
  ( (ListLongMap!4284 (toList!2157 List!5001)) )
))
(declare-fun contains!2211 (ListLongMap!4283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1677 (array!18209 array!18207 (_ BitVec 32) (_ BitVec 32) V!10741 V!10741 (_ BitVec 32) Int) ListLongMap!4283)

(assert (=> b!343855 (= res!190189 (not (contains!2211 (getCurrentListMap!1677 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343856 () Bool)

(assert (=> b!343856 (= e!210827 false)))

(declare-datatypes ((SeekEntryResult!3324 0))(
  ( (MissingZero!3324 (index!15475 (_ BitVec 32))) (Found!3324 (index!15476 (_ BitVec 32))) (Intermediate!3324 (undefined!4136 Bool) (index!15477 (_ BitVec 32)) (x!34241 (_ BitVec 32))) (Undefined!3324) (MissingVacant!3324 (index!15478 (_ BitVec 32))) )
))
(declare-fun lt!162591 () SeekEntryResult!3324)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18209 (_ BitVec 32)) SeekEntryResult!3324)

(assert (=> b!343856 (= lt!162591 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343857 () Bool)

(declare-fun e!210825 () Bool)

(declare-fun tp_is_empty!7323 () Bool)

(assert (=> b!343857 (= e!210825 tp_is_empty!7323)))

(declare-fun mapIsEmpty!12423 () Bool)

(assert (=> mapIsEmpty!12423 mapRes!12423))

(declare-fun b!343858 () Bool)

(declare-fun res!190187 () Bool)

(assert (=> b!343858 (=> (not res!190187) (not e!210827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18209 (_ BitVec 32)) Bool)

(assert (=> b!343858 (= res!190187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12423 () Bool)

(declare-fun tp!25659 () Bool)

(assert (=> mapNonEmpty!12423 (= mapRes!12423 (and tp!25659 e!210825))))

(declare-fun mapKey!12423 () (_ BitVec 32))

(declare-fun mapValue!12423 () ValueCell!3318)

(declare-fun mapRest!12423 () (Array (_ BitVec 32) ValueCell!3318))

(assert (=> mapNonEmpty!12423 (= (arr!8617 _values!1525) (store mapRest!12423 mapKey!12423 mapValue!12423))))

(declare-fun b!343859 () Bool)

(declare-fun res!190188 () Bool)

(assert (=> b!343859 (=> (not res!190188) (not e!210827))))

(declare-datatypes ((List!5002 0))(
  ( (Nil!4999) (Cons!4998 (h!5854 (_ BitVec 64)) (t!10126 List!5002)) )
))
(declare-fun arrayNoDuplicates!0 (array!18209 (_ BitVec 32) List!5002) Bool)

(assert (=> b!343859 (= res!190188 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4999))))

(declare-fun res!190186 () Bool)

(assert (=> start!34456 (=> (not res!190186) (not e!210827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34456 (= res!190186 (validMask!0 mask!2385))))

(assert (=> start!34456 e!210827))

(assert (=> start!34456 true))

(assert (=> start!34456 tp_is_empty!7323))

(assert (=> start!34456 tp!25658))

(declare-fun array_inv!6376 (array!18207) Bool)

(assert (=> start!34456 (and (array_inv!6376 _values!1525) e!210828)))

(declare-fun array_inv!6377 (array!18209) Bool)

(assert (=> start!34456 (array_inv!6377 _keys!1895)))

(declare-fun b!343860 () Bool)

(declare-fun res!190190 () Bool)

(assert (=> b!343860 (=> (not res!190190) (not e!210827))))

(assert (=> b!343860 (= res!190190 (and (= (size!8969 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8970 _keys!1895) (size!8969 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343861 () Bool)

(assert (=> b!343861 (= e!210824 tp_is_empty!7323)))

(assert (= (and start!34456 res!190186) b!343860))

(assert (= (and b!343860 res!190190) b!343858))

(assert (= (and b!343858 res!190187) b!343859))

(assert (= (and b!343859 res!190188) b!343853))

(assert (= (and b!343853 res!190185) b!343855))

(assert (= (and b!343855 res!190189) b!343856))

(assert (= (and b!343854 condMapEmpty!12423) mapIsEmpty!12423))

(assert (= (and b!343854 (not condMapEmpty!12423)) mapNonEmpty!12423))

(get-info :version)

(assert (= (and mapNonEmpty!12423 ((_ is ValueCellFull!3318) mapValue!12423)) b!343857))

(assert (= (and b!343854 ((_ is ValueCellFull!3318) mapDefault!12423)) b!343861))

(assert (= start!34456 b!343854))

(declare-fun m!345617 () Bool)

(assert (=> b!343853 m!345617))

(declare-fun m!345619 () Bool)

(assert (=> b!343858 m!345619))

(declare-fun m!345621 () Bool)

(assert (=> b!343855 m!345621))

(assert (=> b!343855 m!345621))

(declare-fun m!345623 () Bool)

(assert (=> b!343855 m!345623))

(declare-fun m!345625 () Bool)

(assert (=> b!343859 m!345625))

(declare-fun m!345627 () Bool)

(assert (=> mapNonEmpty!12423 m!345627))

(declare-fun m!345629 () Bool)

(assert (=> b!343856 m!345629))

(declare-fun m!345631 () Bool)

(assert (=> start!34456 m!345631))

(declare-fun m!345633 () Bool)

(assert (=> start!34456 m!345633))

(declare-fun m!345635 () Bool)

(assert (=> start!34456 m!345635))

(check-sat (not b!343859) (not b!343855) (not b!343856) tp_is_empty!7323 (not b_next!7371) (not b!343858) (not mapNonEmpty!12423) b_and!14597 (not start!34456) (not b!343853))
(check-sat b_and!14597 (not b_next!7371))

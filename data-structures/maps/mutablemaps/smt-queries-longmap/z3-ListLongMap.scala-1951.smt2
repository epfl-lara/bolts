; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34462 () Bool)

(assert start!34462)

(declare-fun b_free!7377 () Bool)

(declare-fun b_next!7377 () Bool)

(assert (=> start!34462 (= b_free!7377 (not b_next!7377))))

(declare-fun tp!25677 () Bool)

(declare-fun b_and!14603 () Bool)

(assert (=> start!34462 (= tp!25677 b_and!14603)))

(declare-fun mapNonEmpty!12432 () Bool)

(declare-fun mapRes!12432 () Bool)

(declare-fun tp!25676 () Bool)

(declare-fun e!210870 () Bool)

(assert (=> mapNonEmpty!12432 (= mapRes!12432 (and tp!25676 e!210870))))

(declare-datatypes ((V!10749 0))(
  ( (V!10750 (val!3709 Int)) )
))
(declare-datatypes ((ValueCell!3321 0))(
  ( (ValueCellFull!3321 (v!5881 V!10749)) (EmptyCell!3321) )
))
(declare-fun mapValue!12432 () ValueCell!3321)

(declare-fun mapKey!12432 () (_ BitVec 32))

(declare-fun mapRest!12432 () (Array (_ BitVec 32) ValueCell!3321))

(declare-datatypes ((array!18217 0))(
  ( (array!18218 (arr!8622 (Array (_ BitVec 32) ValueCell!3321)) (size!8974 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18217)

(assert (=> mapNonEmpty!12432 (= (arr!8622 _values!1525) (store mapRest!12432 mapKey!12432 mapValue!12432))))

(declare-fun b!343934 () Bool)

(declare-fun e!210872 () Bool)

(declare-fun tp_is_empty!7329 () Bool)

(assert (=> b!343934 (= e!210872 tp_is_empty!7329)))

(declare-fun b!343935 () Bool)

(declare-fun res!190239 () Bool)

(declare-fun e!210873 () Bool)

(assert (=> b!343935 (=> (not res!190239) (not e!210873))))

(declare-datatypes ((array!18219 0))(
  ( (array!18220 (arr!8623 (Array (_ BitVec 32) (_ BitVec 64))) (size!8975 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18219)

(declare-datatypes ((List!5004 0))(
  ( (Nil!5001) (Cons!5000 (h!5856 (_ BitVec 64)) (t!10128 List!5004)) )
))
(declare-fun arrayNoDuplicates!0 (array!18219 (_ BitVec 32) List!5004) Bool)

(assert (=> b!343935 (= res!190239 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5001))))

(declare-fun b!343936 () Bool)

(declare-fun res!190241 () Bool)

(assert (=> b!343936 (=> (not res!190241) (not e!210873))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343936 (= res!190241 (and (= (size!8974 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8975 _keys!1895) (size!8974 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12432 () Bool)

(assert (=> mapIsEmpty!12432 mapRes!12432))

(declare-fun b!343937 () Bool)

(declare-fun res!190242 () Bool)

(assert (=> b!343937 (=> (not res!190242) (not e!210873))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10749)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10749)

(declare-datatypes ((tuple2!5358 0))(
  ( (tuple2!5359 (_1!2689 (_ BitVec 64)) (_2!2689 V!10749)) )
))
(declare-datatypes ((List!5005 0))(
  ( (Nil!5002) (Cons!5001 (h!5857 tuple2!5358) (t!10129 List!5005)) )
))
(declare-datatypes ((ListLongMap!4285 0))(
  ( (ListLongMap!4286 (toList!2158 List!5005)) )
))
(declare-fun contains!2212 (ListLongMap!4285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1678 (array!18219 array!18217 (_ BitVec 32) (_ BitVec 32) V!10749 V!10749 (_ BitVec 32) Int) ListLongMap!4285)

(assert (=> b!343937 (= res!190242 (not (contains!2212 (getCurrentListMap!1678 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343938 () Bool)

(declare-fun res!190244 () Bool)

(assert (=> b!343938 (=> (not res!190244) (not e!210873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343938 (= res!190244 (validKeyInArray!0 k0!1348))))

(declare-fun b!343939 () Bool)

(assert (=> b!343939 (= e!210873 false)))

(declare-datatypes ((SeekEntryResult!3326 0))(
  ( (MissingZero!3326 (index!15483 (_ BitVec 32))) (Found!3326 (index!15484 (_ BitVec 32))) (Intermediate!3326 (undefined!4138 Bool) (index!15485 (_ BitVec 32)) (x!34251 (_ BitVec 32))) (Undefined!3326) (MissingVacant!3326 (index!15486 (_ BitVec 32))) )
))
(declare-fun lt!162600 () SeekEntryResult!3326)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18219 (_ BitVec 32)) SeekEntryResult!3326)

(assert (=> b!343939 (= lt!162600 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343940 () Bool)

(assert (=> b!343940 (= e!210870 tp_is_empty!7329)))

(declare-fun res!190240 () Bool)

(assert (=> start!34462 (=> (not res!190240) (not e!210873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34462 (= res!190240 (validMask!0 mask!2385))))

(assert (=> start!34462 e!210873))

(assert (=> start!34462 true))

(assert (=> start!34462 tp_is_empty!7329))

(assert (=> start!34462 tp!25677))

(declare-fun e!210871 () Bool)

(declare-fun array_inv!6380 (array!18217) Bool)

(assert (=> start!34462 (and (array_inv!6380 _values!1525) e!210871)))

(declare-fun array_inv!6381 (array!18219) Bool)

(assert (=> start!34462 (array_inv!6381 _keys!1895)))

(declare-fun b!343941 () Bool)

(assert (=> b!343941 (= e!210871 (and e!210872 mapRes!12432))))

(declare-fun condMapEmpty!12432 () Bool)

(declare-fun mapDefault!12432 () ValueCell!3321)

(assert (=> b!343941 (= condMapEmpty!12432 (= (arr!8622 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3321)) mapDefault!12432)))))

(declare-fun b!343942 () Bool)

(declare-fun res!190243 () Bool)

(assert (=> b!343942 (=> (not res!190243) (not e!210873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18219 (_ BitVec 32)) Bool)

(assert (=> b!343942 (= res!190243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34462 res!190240) b!343936))

(assert (= (and b!343936 res!190241) b!343942))

(assert (= (and b!343942 res!190243) b!343935))

(assert (= (and b!343935 res!190239) b!343938))

(assert (= (and b!343938 res!190244) b!343937))

(assert (= (and b!343937 res!190242) b!343939))

(assert (= (and b!343941 condMapEmpty!12432) mapIsEmpty!12432))

(assert (= (and b!343941 (not condMapEmpty!12432)) mapNonEmpty!12432))

(get-info :version)

(assert (= (and mapNonEmpty!12432 ((_ is ValueCellFull!3321) mapValue!12432)) b!343940))

(assert (= (and b!343941 ((_ is ValueCellFull!3321) mapDefault!12432)) b!343934))

(assert (= start!34462 b!343941))

(declare-fun m!345677 () Bool)

(assert (=> b!343939 m!345677))

(declare-fun m!345679 () Bool)

(assert (=> b!343937 m!345679))

(assert (=> b!343937 m!345679))

(declare-fun m!345681 () Bool)

(assert (=> b!343937 m!345681))

(declare-fun m!345683 () Bool)

(assert (=> start!34462 m!345683))

(declare-fun m!345685 () Bool)

(assert (=> start!34462 m!345685))

(declare-fun m!345687 () Bool)

(assert (=> start!34462 m!345687))

(declare-fun m!345689 () Bool)

(assert (=> b!343942 m!345689))

(declare-fun m!345691 () Bool)

(assert (=> b!343935 m!345691))

(declare-fun m!345693 () Bool)

(assert (=> b!343938 m!345693))

(declare-fun m!345695 () Bool)

(assert (=> mapNonEmpty!12432 m!345695))

(check-sat (not b!343939) (not b!343942) (not b_next!7377) (not mapNonEmpty!12432) b_and!14603 (not b!343935) (not start!34462) tp_is_empty!7329 (not b!343938) (not b!343937))
(check-sat b_and!14603 (not b_next!7377))

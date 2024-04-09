; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35200 () Bool)

(assert start!35200)

(declare-fun b_free!7785 () Bool)

(declare-fun b_next!7785 () Bool)

(assert (=> start!35200 (= b_free!7785 (not b_next!7785))))

(declare-fun tp!26945 () Bool)

(declare-fun b_and!15041 () Bool)

(assert (=> start!35200 (= tp!26945 b_and!15041)))

(declare-fun b!352604 () Bool)

(declare-fun res!195598 () Bool)

(declare-fun e!215927 () Bool)

(assert (=> b!352604 (=> (not res!195598) (not e!215927))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352604 (= res!195598 (validKeyInArray!0 k0!1348))))

(declare-fun b!352605 () Bool)

(declare-fun e!215929 () Bool)

(declare-fun tp_is_empty!7737 () Bool)

(assert (=> b!352605 (= e!215929 tp_is_empty!7737)))

(declare-fun mapIsEmpty!13089 () Bool)

(declare-fun mapRes!13089 () Bool)

(assert (=> mapIsEmpty!13089 mapRes!13089))

(declare-fun b!352606 () Bool)

(declare-fun res!195599 () Bool)

(assert (=> b!352606 (=> (not res!195599) (not e!215927))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11293 0))(
  ( (V!11294 (val!3913 Int)) )
))
(declare-datatypes ((ValueCell!3525 0))(
  ( (ValueCellFull!3525 (v!6100 V!11293)) (EmptyCell!3525) )
))
(declare-datatypes ((array!19023 0))(
  ( (array!19024 (arr!9010 (Array (_ BitVec 32) ValueCell!3525)) (size!9362 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19023)

(declare-datatypes ((array!19025 0))(
  ( (array!19026 (arr!9011 (Array (_ BitVec 32) (_ BitVec 64))) (size!9363 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19025)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352606 (= res!195599 (and (= (size!9362 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9363 _keys!1895) (size!9362 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13089 () Bool)

(declare-fun tp!26946 () Bool)

(assert (=> mapNonEmpty!13089 (= mapRes!13089 (and tp!26946 e!215929))))

(declare-fun mapRest!13089 () (Array (_ BitVec 32) ValueCell!3525))

(declare-fun mapKey!13089 () (_ BitVec 32))

(declare-fun mapValue!13089 () ValueCell!3525)

(assert (=> mapNonEmpty!13089 (= (arr!9010 _values!1525) (store mapRest!13089 mapKey!13089 mapValue!13089))))

(declare-fun b!352607 () Bool)

(declare-fun res!195601 () Bool)

(assert (=> b!352607 (=> (not res!195601) (not e!215927))))

(declare-fun zeroValue!1467 () V!11293)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11293)

(declare-datatypes ((tuple2!5640 0))(
  ( (tuple2!5641 (_1!2830 (_ BitVec 64)) (_2!2830 V!11293)) )
))
(declare-datatypes ((List!5277 0))(
  ( (Nil!5274) (Cons!5273 (h!6129 tuple2!5640) (t!10431 List!5277)) )
))
(declare-datatypes ((ListLongMap!4567 0))(
  ( (ListLongMap!4568 (toList!2299 List!5277)) )
))
(declare-fun contains!2368 (ListLongMap!4567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1816 (array!19025 array!19023 (_ BitVec 32) (_ BitVec 32) V!11293 V!11293 (_ BitVec 32) Int) ListLongMap!4567)

(assert (=> b!352607 (= res!195601 (not (contains!2368 (getCurrentListMap!1816 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352609 () Bool)

(declare-fun e!215928 () Bool)

(assert (=> b!352609 (= e!215928 tp_is_empty!7737)))

(declare-fun b!352610 () Bool)

(declare-fun res!195597 () Bool)

(assert (=> b!352610 (=> (not res!195597) (not e!215927))))

(declare-datatypes ((List!5278 0))(
  ( (Nil!5275) (Cons!5274 (h!6130 (_ BitVec 64)) (t!10432 List!5278)) )
))
(declare-fun arrayNoDuplicates!0 (array!19025 (_ BitVec 32) List!5278) Bool)

(assert (=> b!352610 (= res!195597 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5275))))

(declare-fun b!352611 () Bool)

(declare-fun e!215931 () Bool)

(assert (=> b!352611 (= e!215931 (and e!215928 mapRes!13089))))

(declare-fun condMapEmpty!13089 () Bool)

(declare-fun mapDefault!13089 () ValueCell!3525)

(assert (=> b!352611 (= condMapEmpty!13089 (= (arr!9010 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3525)) mapDefault!13089)))))

(declare-fun b!352612 () Bool)

(declare-fun res!195600 () Bool)

(assert (=> b!352612 (=> (not res!195600) (not e!215927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19025 (_ BitVec 32)) Bool)

(assert (=> b!352612 (= res!195600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352608 () Bool)

(declare-datatypes ((SeekEntryResult!3466 0))(
  ( (MissingZero!3466 (index!16043 (_ BitVec 32))) (Found!3466 (index!16044 (_ BitVec 32))) (Intermediate!3466 (undefined!4278 Bool) (index!16045 (_ BitVec 32)) (x!35085 (_ BitVec 32))) (Undefined!3466) (MissingVacant!3466 (index!16046 (_ BitVec 32))) )
))
(declare-fun lt!165303 () SeekEntryResult!3466)

(get-info :version)

(assert (=> b!352608 (= e!215927 (and (not ((_ is Found!3466) lt!165303)) (not ((_ is MissingZero!3466) lt!165303)) (not ((_ is MissingVacant!3466) lt!165303)) ((_ is Undefined!3466) lt!165303) (not ((_ is Undefined!3466) lt!165303))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19025 (_ BitVec 32)) SeekEntryResult!3466)

(assert (=> b!352608 (= lt!165303 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!195602 () Bool)

(assert (=> start!35200 (=> (not res!195602) (not e!215927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35200 (= res!195602 (validMask!0 mask!2385))))

(assert (=> start!35200 e!215927))

(assert (=> start!35200 true))

(assert (=> start!35200 tp_is_empty!7737))

(assert (=> start!35200 tp!26945))

(declare-fun array_inv!6638 (array!19023) Bool)

(assert (=> start!35200 (and (array_inv!6638 _values!1525) e!215931)))

(declare-fun array_inv!6639 (array!19025) Bool)

(assert (=> start!35200 (array_inv!6639 _keys!1895)))

(assert (= (and start!35200 res!195602) b!352606))

(assert (= (and b!352606 res!195599) b!352612))

(assert (= (and b!352612 res!195600) b!352610))

(assert (= (and b!352610 res!195597) b!352604))

(assert (= (and b!352604 res!195598) b!352607))

(assert (= (and b!352607 res!195601) b!352608))

(assert (= (and b!352611 condMapEmpty!13089) mapIsEmpty!13089))

(assert (= (and b!352611 (not condMapEmpty!13089)) mapNonEmpty!13089))

(assert (= (and mapNonEmpty!13089 ((_ is ValueCellFull!3525) mapValue!13089)) b!352605))

(assert (= (and b!352611 ((_ is ValueCellFull!3525) mapDefault!13089)) b!352609))

(assert (= start!35200 b!352611))

(declare-fun m!352187 () Bool)

(assert (=> b!352607 m!352187))

(assert (=> b!352607 m!352187))

(declare-fun m!352189 () Bool)

(assert (=> b!352607 m!352189))

(declare-fun m!352191 () Bool)

(assert (=> start!35200 m!352191))

(declare-fun m!352193 () Bool)

(assert (=> start!35200 m!352193))

(declare-fun m!352195 () Bool)

(assert (=> start!35200 m!352195))

(declare-fun m!352197 () Bool)

(assert (=> b!352604 m!352197))

(declare-fun m!352199 () Bool)

(assert (=> b!352610 m!352199))

(declare-fun m!352201 () Bool)

(assert (=> b!352612 m!352201))

(declare-fun m!352203 () Bool)

(assert (=> mapNonEmpty!13089 m!352203))

(declare-fun m!352205 () Bool)

(assert (=> b!352608 m!352205))

(check-sat (not b_next!7785) b_and!15041 (not mapNonEmpty!13089) (not b!352604) tp_is_empty!7737 (not b!352608) (not b!352607) (not start!35200) (not b!352610) (not b!352612))
(check-sat b_and!15041 (not b_next!7785))

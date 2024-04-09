; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34468 () Bool)

(assert start!34468)

(declare-fun b_free!7383 () Bool)

(declare-fun b_next!7383 () Bool)

(assert (=> start!34468 (= b_free!7383 (not b_next!7383))))

(declare-fun tp!25695 () Bool)

(declare-fun b_and!14609 () Bool)

(assert (=> start!34468 (= tp!25695 b_and!14609)))

(declare-fun b!344015 () Bool)

(declare-fun res!190297 () Bool)

(declare-fun e!210914 () Bool)

(assert (=> b!344015 (=> (not res!190297) (not e!210914))))

(declare-datatypes ((array!18227 0))(
  ( (array!18228 (arr!8627 (Array (_ BitVec 32) (_ BitVec 64))) (size!8979 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18227)

(declare-datatypes ((List!5006 0))(
  ( (Nil!5003) (Cons!5002 (h!5858 (_ BitVec 64)) (t!10130 List!5006)) )
))
(declare-fun arrayNoDuplicates!0 (array!18227 (_ BitVec 32) List!5006) Bool)

(assert (=> b!344015 (= res!190297 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5003))))

(declare-fun b!344016 () Bool)

(declare-fun e!210916 () Bool)

(declare-fun tp_is_empty!7335 () Bool)

(assert (=> b!344016 (= e!210916 tp_is_empty!7335)))

(declare-fun b!344017 () Bool)

(declare-fun res!190296 () Bool)

(assert (=> b!344017 (=> (not res!190296) (not e!210914))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10757 0))(
  ( (V!10758 (val!3712 Int)) )
))
(declare-fun zeroValue!1467 () V!10757)

(declare-datatypes ((ValueCell!3324 0))(
  ( (ValueCellFull!3324 (v!5884 V!10757)) (EmptyCell!3324) )
))
(declare-datatypes ((array!18229 0))(
  ( (array!18230 (arr!8628 (Array (_ BitVec 32) ValueCell!3324)) (size!8980 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18229)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10757)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5360 0))(
  ( (tuple2!5361 (_1!2690 (_ BitVec 64)) (_2!2690 V!10757)) )
))
(declare-datatypes ((List!5007 0))(
  ( (Nil!5004) (Cons!5003 (h!5859 tuple2!5360) (t!10131 List!5007)) )
))
(declare-datatypes ((ListLongMap!4287 0))(
  ( (ListLongMap!4288 (toList!2159 List!5007)) )
))
(declare-fun contains!2213 (ListLongMap!4287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1679 (array!18227 array!18229 (_ BitVec 32) (_ BitVec 32) V!10757 V!10757 (_ BitVec 32) Int) ListLongMap!4287)

(assert (=> b!344017 (= res!190296 (not (contains!2213 (getCurrentListMap!1679 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12441 () Bool)

(declare-fun mapRes!12441 () Bool)

(assert (=> mapIsEmpty!12441 mapRes!12441))

(declare-fun b!344018 () Bool)

(declare-fun res!190295 () Bool)

(assert (=> b!344018 (=> (not res!190295) (not e!210914))))

(assert (=> b!344018 (= res!190295 (and (= (size!8980 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8979 _keys!1895) (size!8980 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344019 () Bool)

(assert (=> b!344019 (= e!210914 false)))

(declare-datatypes ((SeekEntryResult!3328 0))(
  ( (MissingZero!3328 (index!15491 (_ BitVec 32))) (Found!3328 (index!15492 (_ BitVec 32))) (Intermediate!3328 (undefined!4140 Bool) (index!15493 (_ BitVec 32)) (x!34261 (_ BitVec 32))) (Undefined!3328) (MissingVacant!3328 (index!15494 (_ BitVec 32))) )
))
(declare-fun lt!162609 () SeekEntryResult!3328)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18227 (_ BitVec 32)) SeekEntryResult!3328)

(assert (=> b!344019 (= lt!162609 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!344020 () Bool)

(declare-fun e!210918 () Bool)

(assert (=> b!344020 (= e!210918 tp_is_empty!7335)))

(declare-fun res!190298 () Bool)

(assert (=> start!34468 (=> (not res!190298) (not e!210914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34468 (= res!190298 (validMask!0 mask!2385))))

(assert (=> start!34468 e!210914))

(assert (=> start!34468 true))

(assert (=> start!34468 tp_is_empty!7335))

(assert (=> start!34468 tp!25695))

(declare-fun e!210917 () Bool)

(declare-fun array_inv!6382 (array!18229) Bool)

(assert (=> start!34468 (and (array_inv!6382 _values!1525) e!210917)))

(declare-fun array_inv!6383 (array!18227) Bool)

(assert (=> start!34468 (array_inv!6383 _keys!1895)))

(declare-fun b!344021 () Bool)

(assert (=> b!344021 (= e!210917 (and e!210916 mapRes!12441))))

(declare-fun condMapEmpty!12441 () Bool)

(declare-fun mapDefault!12441 () ValueCell!3324)

(assert (=> b!344021 (= condMapEmpty!12441 (= (arr!8628 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3324)) mapDefault!12441)))))

(declare-fun mapNonEmpty!12441 () Bool)

(declare-fun tp!25694 () Bool)

(assert (=> mapNonEmpty!12441 (= mapRes!12441 (and tp!25694 e!210918))))

(declare-fun mapKey!12441 () (_ BitVec 32))

(declare-fun mapRest!12441 () (Array (_ BitVec 32) ValueCell!3324))

(declare-fun mapValue!12441 () ValueCell!3324)

(assert (=> mapNonEmpty!12441 (= (arr!8628 _values!1525) (store mapRest!12441 mapKey!12441 mapValue!12441))))

(declare-fun b!344022 () Bool)

(declare-fun res!190293 () Bool)

(assert (=> b!344022 (=> (not res!190293) (not e!210914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18227 (_ BitVec 32)) Bool)

(assert (=> b!344022 (= res!190293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344023 () Bool)

(declare-fun res!190294 () Bool)

(assert (=> b!344023 (=> (not res!190294) (not e!210914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344023 (= res!190294 (validKeyInArray!0 k0!1348))))

(assert (= (and start!34468 res!190298) b!344018))

(assert (= (and b!344018 res!190295) b!344022))

(assert (= (and b!344022 res!190293) b!344015))

(assert (= (and b!344015 res!190297) b!344023))

(assert (= (and b!344023 res!190294) b!344017))

(assert (= (and b!344017 res!190296) b!344019))

(assert (= (and b!344021 condMapEmpty!12441) mapIsEmpty!12441))

(assert (= (and b!344021 (not condMapEmpty!12441)) mapNonEmpty!12441))

(get-info :version)

(assert (= (and mapNonEmpty!12441 ((_ is ValueCellFull!3324) mapValue!12441)) b!344020))

(assert (= (and b!344021 ((_ is ValueCellFull!3324) mapDefault!12441)) b!344016))

(assert (= start!34468 b!344021))

(declare-fun m!345737 () Bool)

(assert (=> b!344015 m!345737))

(declare-fun m!345739 () Bool)

(assert (=> start!34468 m!345739))

(declare-fun m!345741 () Bool)

(assert (=> start!34468 m!345741))

(declare-fun m!345743 () Bool)

(assert (=> start!34468 m!345743))

(declare-fun m!345745 () Bool)

(assert (=> b!344017 m!345745))

(assert (=> b!344017 m!345745))

(declare-fun m!345747 () Bool)

(assert (=> b!344017 m!345747))

(declare-fun m!345749 () Bool)

(assert (=> b!344022 m!345749))

(declare-fun m!345751 () Bool)

(assert (=> b!344023 m!345751))

(declare-fun m!345753 () Bool)

(assert (=> b!344019 m!345753))

(declare-fun m!345755 () Bool)

(assert (=> mapNonEmpty!12441 m!345755))

(check-sat (not start!34468) (not b!344015) (not b_next!7383) (not b!344017) (not b!344019) (not b!344022) (not mapNonEmpty!12441) (not b!344023) tp_is_empty!7335 b_and!14609)
(check-sat b_and!14609 (not b_next!7383))

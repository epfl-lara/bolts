; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34470 () Bool)

(assert start!34470)

(declare-fun b_free!7385 () Bool)

(declare-fun b_next!7385 () Bool)

(assert (=> start!34470 (= b_free!7385 (not b_next!7385))))

(declare-fun tp!25700 () Bool)

(declare-fun b_and!14611 () Bool)

(assert (=> start!34470 (= tp!25700 b_and!14611)))

(declare-fun mapNonEmpty!12444 () Bool)

(declare-fun mapRes!12444 () Bool)

(declare-fun tp!25701 () Bool)

(declare-fun e!210932 () Bool)

(assert (=> mapNonEmpty!12444 (= mapRes!12444 (and tp!25701 e!210932))))

(declare-fun mapKey!12444 () (_ BitVec 32))

(declare-datatypes ((V!10759 0))(
  ( (V!10760 (val!3713 Int)) )
))
(declare-datatypes ((ValueCell!3325 0))(
  ( (ValueCellFull!3325 (v!5885 V!10759)) (EmptyCell!3325) )
))
(declare-datatypes ((array!18231 0))(
  ( (array!18232 (arr!8629 (Array (_ BitVec 32) ValueCell!3325)) (size!8981 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18231)

(declare-fun mapRest!12444 () (Array (_ BitVec 32) ValueCell!3325))

(declare-fun mapValue!12444 () ValueCell!3325)

(assert (=> mapNonEmpty!12444 (= (arr!8629 _values!1525) (store mapRest!12444 mapKey!12444 mapValue!12444))))

(declare-fun b!344043 () Bool)

(declare-fun res!190316 () Bool)

(declare-fun e!210930 () Bool)

(assert (=> b!344043 (=> (not res!190316) (not e!210930))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18233 0))(
  ( (array!18234 (arr!8630 (Array (_ BitVec 32) (_ BitVec 64))) (size!8982 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18233)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344043 (= res!190316 (and (= (size!8981 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8982 _keys!1895) (size!8981 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344044 () Bool)

(assert (=> b!344044 (= e!210930 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3329 0))(
  ( (MissingZero!3329 (index!15495 (_ BitVec 32))) (Found!3329 (index!15496 (_ BitVec 32))) (Intermediate!3329 (undefined!4141 Bool) (index!15497 (_ BitVec 32)) (x!34262 (_ BitVec 32))) (Undefined!3329) (MissingVacant!3329 (index!15498 (_ BitVec 32))) )
))
(declare-fun lt!162612 () SeekEntryResult!3329)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18233 (_ BitVec 32)) SeekEntryResult!3329)

(assert (=> b!344044 (= lt!162612 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344045 () Bool)

(declare-fun res!190312 () Bool)

(assert (=> b!344045 (=> (not res!190312) (not e!210930))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10759)

(declare-fun zeroValue!1467 () V!10759)

(declare-datatypes ((tuple2!5362 0))(
  ( (tuple2!5363 (_1!2691 (_ BitVec 64)) (_2!2691 V!10759)) )
))
(declare-datatypes ((List!5008 0))(
  ( (Nil!5005) (Cons!5004 (h!5860 tuple2!5362) (t!10132 List!5008)) )
))
(declare-datatypes ((ListLongMap!4289 0))(
  ( (ListLongMap!4290 (toList!2160 List!5008)) )
))
(declare-fun contains!2214 (ListLongMap!4289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1680 (array!18233 array!18231 (_ BitVec 32) (_ BitVec 32) V!10759 V!10759 (_ BitVec 32) Int) ListLongMap!4289)

(assert (=> b!344045 (= res!190312 (not (contains!2214 (getCurrentListMap!1680 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344046 () Bool)

(declare-fun res!190314 () Bool)

(assert (=> b!344046 (=> (not res!190314) (not e!210930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18233 (_ BitVec 32)) Bool)

(assert (=> b!344046 (= res!190314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344047 () Bool)

(declare-fun res!190313 () Bool)

(assert (=> b!344047 (=> (not res!190313) (not e!210930))))

(declare-datatypes ((List!5009 0))(
  ( (Nil!5006) (Cons!5005 (h!5861 (_ BitVec 64)) (t!10133 List!5009)) )
))
(declare-fun arrayNoDuplicates!0 (array!18233 (_ BitVec 32) List!5009) Bool)

(assert (=> b!344047 (= res!190313 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5006))))

(declare-fun b!344048 () Bool)

(declare-fun res!190315 () Bool)

(assert (=> b!344048 (=> (not res!190315) (not e!210930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344048 (= res!190315 (validKeyInArray!0 k!1348))))

(declare-fun b!344049 () Bool)

(declare-fun tp_is_empty!7337 () Bool)

(assert (=> b!344049 (= e!210932 tp_is_empty!7337)))

(declare-fun b!344042 () Bool)

(declare-fun e!210929 () Bool)

(declare-fun e!210931 () Bool)

(assert (=> b!344042 (= e!210929 (and e!210931 mapRes!12444))))

(declare-fun condMapEmpty!12444 () Bool)

(declare-fun mapDefault!12444 () ValueCell!3325)


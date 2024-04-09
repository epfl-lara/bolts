; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34232 () Bool)

(assert start!34232)

(declare-fun b_free!7247 () Bool)

(declare-fun b_next!7247 () Bool)

(assert (=> start!34232 (= b_free!7247 (not b_next!7247))))

(declare-fun tp!25274 () Bool)

(declare-fun b_and!14465 () Bool)

(assert (=> start!34232 (= tp!25274 b_and!14465)))

(declare-fun b!341216 () Bool)

(declare-fun res!188698 () Bool)

(declare-fun e!209277 () Bool)

(assert (=> b!341216 (=> (not res!188698) (not e!209277))))

(declare-datatypes ((array!17963 0))(
  ( (array!17964 (arr!8499 (Array (_ BitVec 32) (_ BitVec 64))) (size!8851 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17963)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17963 (_ BitVec 32)) Bool)

(assert (=> b!341216 (= res!188698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341217 () Bool)

(declare-fun res!188694 () Bool)

(assert (=> b!341217 (=> (not res!188694) (not e!209277))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341217 (= res!188694 (validKeyInArray!0 k!1348))))

(declare-fun b!341219 () Bool)

(declare-fun res!188693 () Bool)

(declare-fun e!209274 () Bool)

(assert (=> b!341219 (=> (not res!188693) (not e!209274))))

(declare-fun arrayContainsKey!0 (array!17963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341219 (= res!188693 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12225 () Bool)

(declare-fun mapRes!12225 () Bool)

(assert (=> mapIsEmpty!12225 mapRes!12225))

(declare-fun b!341220 () Bool)

(declare-fun res!188699 () Bool)

(assert (=> b!341220 (=> (not res!188699) (not e!209277))))

(declare-datatypes ((V!10575 0))(
  ( (V!10576 (val!3644 Int)) )
))
(declare-fun zeroValue!1467 () V!10575)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3256 0))(
  ( (ValueCellFull!3256 (v!5812 V!10575)) (EmptyCell!3256) )
))
(declare-datatypes ((array!17965 0))(
  ( (array!17966 (arr!8500 (Array (_ BitVec 32) ValueCell!3256)) (size!8852 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17965)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10575)

(declare-datatypes ((tuple2!5270 0))(
  ( (tuple2!5271 (_1!2645 (_ BitVec 64)) (_2!2645 V!10575)) )
))
(declare-datatypes ((List!4913 0))(
  ( (Nil!4910) (Cons!4909 (h!5765 tuple2!5270) (t!10029 List!4913)) )
))
(declare-datatypes ((ListLongMap!4197 0))(
  ( (ListLongMap!4198 (toList!2114 List!4913)) )
))
(declare-fun contains!2164 (ListLongMap!4197 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1634 (array!17963 array!17965 (_ BitVec 32) (_ BitVec 32) V!10575 V!10575 (_ BitVec 32) Int) ListLongMap!4197)

(assert (=> b!341220 (= res!188699 (not (contains!2164 (getCurrentListMap!1634 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!341221 () Bool)

(declare-fun e!209276 () Bool)

(declare-fun tp_is_empty!7199 () Bool)

(assert (=> b!341221 (= e!209276 tp_is_empty!7199)))

(declare-fun b!341222 () Bool)

(declare-fun e!209273 () Bool)

(assert (=> b!341222 (= e!209273 tp_is_empty!7199)))

(declare-fun b!341223 () Bool)

(declare-fun res!188697 () Bool)

(assert (=> b!341223 (=> (not res!188697) (not e!209277))))

(assert (=> b!341223 (= res!188697 (and (= (size!8852 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8851 _keys!1895) (size!8852 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341218 () Bool)

(assert (=> b!341218 (= e!209277 e!209274)))

(declare-fun res!188695 () Bool)

(assert (=> b!341218 (=> (not res!188695) (not e!209274))))

(declare-datatypes ((SeekEntryResult!3281 0))(
  ( (MissingZero!3281 (index!15303 (_ BitVec 32))) (Found!3281 (index!15304 (_ BitVec 32))) (Intermediate!3281 (undefined!4093 Bool) (index!15305 (_ BitVec 32)) (x!33990 (_ BitVec 32))) (Undefined!3281) (MissingVacant!3281 (index!15306 (_ BitVec 32))) )
))
(declare-fun lt!161727 () SeekEntryResult!3281)

(assert (=> b!341218 (= res!188695 (and (not (is-Found!3281 lt!161727)) (not (is-MissingZero!3281 lt!161727)) (is-MissingVacant!3281 lt!161727)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17963 (_ BitVec 32)) SeekEntryResult!3281)

(assert (=> b!341218 (= lt!161727 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!188692 () Bool)

(assert (=> start!34232 (=> (not res!188692) (not e!209277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34232 (= res!188692 (validMask!0 mask!2385))))

(assert (=> start!34232 e!209277))

(assert (=> start!34232 true))

(assert (=> start!34232 tp_is_empty!7199))

(assert (=> start!34232 tp!25274))

(declare-fun e!209275 () Bool)

(declare-fun array_inv!6286 (array!17965) Bool)

(assert (=> start!34232 (and (array_inv!6286 _values!1525) e!209275)))

(declare-fun array_inv!6287 (array!17963) Bool)

(assert (=> start!34232 (array_inv!6287 _keys!1895)))

(declare-fun mapNonEmpty!12225 () Bool)

(declare-fun tp!25275 () Bool)

(assert (=> mapNonEmpty!12225 (= mapRes!12225 (and tp!25275 e!209273))))

(declare-fun mapRest!12225 () (Array (_ BitVec 32) ValueCell!3256))

(declare-fun mapValue!12225 () ValueCell!3256)

(declare-fun mapKey!12225 () (_ BitVec 32))

(assert (=> mapNonEmpty!12225 (= (arr!8500 _values!1525) (store mapRest!12225 mapKey!12225 mapValue!12225))))

(declare-fun b!341224 () Bool)

(assert (=> b!341224 (= e!209275 (and e!209276 mapRes!12225))))

(declare-fun condMapEmpty!12225 () Bool)

(declare-fun mapDefault!12225 () ValueCell!3256)


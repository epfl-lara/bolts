; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33680 () Bool)

(assert start!33680)

(declare-fun b_free!6907 () Bool)

(declare-fun b_next!6907 () Bool)

(assert (=> start!33680 (= b_free!6907 (not b_next!6907))))

(declare-fun tp!24224 () Bool)

(declare-fun b_and!14105 () Bool)

(assert (=> start!33680 (= tp!24224 b_and!14105)))

(declare-fun mapIsEmpty!11685 () Bool)

(declare-fun mapRes!11685 () Bool)

(assert (=> mapIsEmpty!11685 mapRes!11685))

(declare-fun b!334267 () Bool)

(declare-fun e!205203 () Bool)

(assert (=> b!334267 (= e!205203 (not true))))

(declare-datatypes ((array!17305 0))(
  ( (array!17306 (arr!8180 (Array (_ BitVec 32) (_ BitVec 64))) (size!8532 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17305)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334267 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3172 0))(
  ( (MissingZero!3172 (index!14867 (_ BitVec 32))) (Found!3172 (index!14868 (_ BitVec 32))) (Intermediate!3172 (undefined!3984 Bool) (index!14869 (_ BitVec 32)) (x!33333 (_ BitVec 32))) (Undefined!3172) (MissingVacant!3172 (index!14870 (_ BitVec 32))) )
))
(declare-fun lt!159489 () SeekEntryResult!3172)

(declare-datatypes ((Unit!10398 0))(
  ( (Unit!10399) )
))
(declare-fun lt!159488 () Unit!10398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17305 (_ BitVec 64) (_ BitVec 32)) Unit!10398)

(assert (=> b!334267 (= lt!159488 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14868 lt!159489)))))

(declare-fun b!334268 () Bool)

(declare-fun res!184352 () Bool)

(assert (=> b!334268 (=> (not res!184352) (not e!205203))))

(assert (=> b!334268 (= res!184352 (arrayContainsKey!0 _keys!1895 k!1348 (index!14868 lt!159489)))))

(declare-fun b!334269 () Bool)

(declare-fun res!184357 () Bool)

(declare-fun e!205206 () Bool)

(assert (=> b!334269 (=> (not res!184357) (not e!205206))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10123 0))(
  ( (V!10124 (val!3474 Int)) )
))
(declare-datatypes ((ValueCell!3086 0))(
  ( (ValueCellFull!3086 (v!5632 V!10123)) (EmptyCell!3086) )
))
(declare-datatypes ((array!17307 0))(
  ( (array!17308 (arr!8181 (Array (_ BitVec 32) ValueCell!3086)) (size!8533 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17307)

(assert (=> b!334269 (= res!184357 (and (= (size!8533 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8532 _keys!1895) (size!8533 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334270 () Bool)

(declare-fun res!184355 () Bool)

(assert (=> b!334270 (=> (not res!184355) (not e!205206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334270 (= res!184355 (validKeyInArray!0 k!1348))))

(declare-fun b!334271 () Bool)

(declare-fun e!205201 () Bool)

(declare-fun tp_is_empty!6859 () Bool)

(assert (=> b!334271 (= e!205201 tp_is_empty!6859)))

(declare-fun mapNonEmpty!11685 () Bool)

(declare-fun tp!24225 () Bool)

(declare-fun e!205204 () Bool)

(assert (=> mapNonEmpty!11685 (= mapRes!11685 (and tp!24225 e!205204))))

(declare-fun mapKey!11685 () (_ BitVec 32))

(declare-fun mapRest!11685 () (Array (_ BitVec 32) ValueCell!3086))

(declare-fun mapValue!11685 () ValueCell!3086)

(assert (=> mapNonEmpty!11685 (= (arr!8181 _values!1525) (store mapRest!11685 mapKey!11685 mapValue!11685))))

(declare-fun res!184351 () Bool)

(assert (=> start!33680 (=> (not res!184351) (not e!205206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33680 (= res!184351 (validMask!0 mask!2385))))

(assert (=> start!33680 e!205206))

(assert (=> start!33680 true))

(assert (=> start!33680 tp_is_empty!6859))

(assert (=> start!33680 tp!24224))

(declare-fun e!205205 () Bool)

(declare-fun array_inv!6072 (array!17307) Bool)

(assert (=> start!33680 (and (array_inv!6072 _values!1525) e!205205)))

(declare-fun array_inv!6073 (array!17305) Bool)

(assert (=> start!33680 (array_inv!6073 _keys!1895)))

(declare-fun b!334272 () Bool)

(declare-fun res!184358 () Bool)

(assert (=> b!334272 (=> (not res!184358) (not e!205206))))

(declare-fun zeroValue!1467 () V!10123)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10123)

(declare-datatypes ((tuple2!5048 0))(
  ( (tuple2!5049 (_1!2534 (_ BitVec 64)) (_2!2534 V!10123)) )
))
(declare-datatypes ((List!4689 0))(
  ( (Nil!4686) (Cons!4685 (h!5541 tuple2!5048) (t!9785 List!4689)) )
))
(declare-datatypes ((ListLongMap!3975 0))(
  ( (ListLongMap!3976 (toList!2003 List!4689)) )
))
(declare-fun contains!2043 (ListLongMap!3975 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1526 (array!17305 array!17307 (_ BitVec 32) (_ BitVec 32) V!10123 V!10123 (_ BitVec 32) Int) ListLongMap!3975)

(assert (=> b!334272 (= res!184358 (not (contains!2043 (getCurrentListMap!1526 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!334273 () Bool)

(declare-fun res!184356 () Bool)

(assert (=> b!334273 (=> (not res!184356) (not e!205206))))

(declare-datatypes ((List!4690 0))(
  ( (Nil!4687) (Cons!4686 (h!5542 (_ BitVec 64)) (t!9786 List!4690)) )
))
(declare-fun arrayNoDuplicates!0 (array!17305 (_ BitVec 32) List!4690) Bool)

(assert (=> b!334273 (= res!184356 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4687))))

(declare-fun b!334274 () Bool)

(assert (=> b!334274 (= e!205204 tp_is_empty!6859)))

(declare-fun b!334275 () Bool)

(assert (=> b!334275 (= e!205206 e!205203)))

(declare-fun res!184353 () Bool)

(assert (=> b!334275 (=> (not res!184353) (not e!205203))))

(assert (=> b!334275 (= res!184353 (and (is-Found!3172 lt!159489) (= (select (arr!8180 _keys!1895) (index!14868 lt!159489)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17305 (_ BitVec 32)) SeekEntryResult!3172)

(assert (=> b!334275 (= lt!159489 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334276 () Bool)

(declare-fun res!184354 () Bool)

(assert (=> b!334276 (=> (not res!184354) (not e!205206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17305 (_ BitVec 32)) Bool)

(assert (=> b!334276 (= res!184354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334277 () Bool)

(assert (=> b!334277 (= e!205205 (and e!205201 mapRes!11685))))

(declare-fun condMapEmpty!11685 () Bool)

(declare-fun mapDefault!11685 () ValueCell!3086)


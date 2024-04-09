; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33756 () Bool)

(assert start!33756)

(declare-fun b_free!6983 () Bool)

(declare-fun b_next!6983 () Bool)

(assert (=> start!33756 (= b_free!6983 (not b_next!6983))))

(declare-fun tp!24452 () Bool)

(declare-fun b_and!14181 () Bool)

(assert (=> start!33756 (= tp!24452 b_and!14181)))

(declare-fun b!335521 () Bool)

(declare-fun res!185267 () Bool)

(declare-fun e!205978 () Bool)

(assert (=> b!335521 (=> (not res!185267) (not e!205978))))

(declare-datatypes ((SeekEntryResult!3200 0))(
  ( (MissingZero!3200 (index!14979 (_ BitVec 32))) (Found!3200 (index!14980 (_ BitVec 32))) (Intermediate!3200 (undefined!4012 Bool) (index!14981 (_ BitVec 32)) (x!33457 (_ BitVec 32))) (Undefined!3200) (MissingVacant!3200 (index!14982 (_ BitVec 32))) )
))
(declare-fun lt!159894 () SeekEntryResult!3200)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17449 0))(
  ( (array!17450 (arr!8252 (Array (_ BitVec 32) (_ BitVec 64))) (size!8604 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17449)

(declare-fun arrayContainsKey!0 (array!17449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335521 (= res!185267 (arrayContainsKey!0 _keys!1895 k!1348 (index!14980 lt!159894)))))

(declare-fun b!335522 () Bool)

(declare-fun res!185263 () Bool)

(declare-fun e!205974 () Bool)

(assert (=> b!335522 (=> (not res!185263) (not e!205974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335522 (= res!185263 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!11799 () Bool)

(declare-fun mapRes!11799 () Bool)

(declare-fun tp!24453 () Bool)

(declare-fun e!205980 () Bool)

(assert (=> mapNonEmpty!11799 (= mapRes!11799 (and tp!24453 e!205980))))

(declare-datatypes ((V!10223 0))(
  ( (V!10224 (val!3512 Int)) )
))
(declare-datatypes ((ValueCell!3124 0))(
  ( (ValueCellFull!3124 (v!5670 V!10223)) (EmptyCell!3124) )
))
(declare-fun mapValue!11799 () ValueCell!3124)

(declare-datatypes ((array!17451 0))(
  ( (array!17452 (arr!8253 (Array (_ BitVec 32) ValueCell!3124)) (size!8605 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17451)

(declare-fun mapKey!11799 () (_ BitVec 32))

(declare-fun mapRest!11799 () (Array (_ BitVec 32) ValueCell!3124))

(assert (=> mapNonEmpty!11799 (= (arr!8253 _values!1525) (store mapRest!11799 mapKey!11799 mapValue!11799))))

(declare-fun b!335523 () Bool)

(declare-fun res!185265 () Bool)

(assert (=> b!335523 (=> (not res!185265) (not e!205974))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17449 (_ BitVec 32)) Bool)

(assert (=> b!335523 (= res!185265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335524 () Bool)

(declare-fun res!185266 () Bool)

(assert (=> b!335524 (=> (not res!185266) (not e!205974))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335524 (= res!185266 (and (= (size!8605 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8604 _keys!1895) (size!8605 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335525 () Bool)

(declare-fun e!205977 () Bool)

(assert (=> b!335525 (= e!205974 e!205977)))

(declare-fun res!185269 () Bool)

(assert (=> b!335525 (=> (not res!185269) (not e!205977))))

(declare-datatypes ((tuple2!5102 0))(
  ( (tuple2!5103 (_1!2561 (_ BitVec 64)) (_2!2561 V!10223)) )
))
(declare-datatypes ((List!4742 0))(
  ( (Nil!4739) (Cons!4738 (h!5594 tuple2!5102) (t!9838 List!4742)) )
))
(declare-datatypes ((ListLongMap!4029 0))(
  ( (ListLongMap!4030 (toList!2030 List!4742)) )
))
(declare-fun lt!159897 () ListLongMap!4029)

(declare-fun contains!2070 (ListLongMap!4029 (_ BitVec 64)) Bool)

(assert (=> b!335525 (= res!185269 (not (contains!2070 lt!159897 k!1348)))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10223)

(declare-fun zeroValue!1467 () V!10223)

(declare-fun getCurrentListMap!1550 (array!17449 array!17451 (_ BitVec 32) (_ BitVec 32) V!10223 V!10223 (_ BitVec 32) Int) ListLongMap!4029)

(assert (=> b!335525 (= lt!159897 (getCurrentListMap!1550 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335526 () Bool)

(assert (=> b!335526 (= e!205977 e!205978)))

(declare-fun res!185270 () Bool)

(assert (=> b!335526 (=> (not res!185270) (not e!205978))))

(assert (=> b!335526 (= res!185270 (and (is-Found!3200 lt!159894) (= (select (arr!8252 _keys!1895) (index!14980 lt!159894)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17449 (_ BitVec 32)) SeekEntryResult!3200)

(assert (=> b!335526 (= lt!159894 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335527 () Bool)

(declare-fun tp_is_empty!6935 () Bool)

(assert (=> b!335527 (= e!205980 tp_is_empty!6935)))

(declare-fun b!335528 () Bool)

(assert (=> b!335528 (= e!205978 (not true))))

(assert (=> b!335528 (contains!2070 lt!159897 (select (arr!8252 _keys!1895) (index!14980 lt!159894)))))

(declare-datatypes ((Unit!10440 0))(
  ( (Unit!10441) )
))
(declare-fun lt!159896 () Unit!10440)

(declare-fun lemmaValidKeyInArrayIsInListMap!166 (array!17449 array!17451 (_ BitVec 32) (_ BitVec 32) V!10223 V!10223 (_ BitVec 32) Int) Unit!10440)

(assert (=> b!335528 (= lt!159896 (lemmaValidKeyInArrayIsInListMap!166 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14980 lt!159894) defaultEntry!1528))))

(assert (=> b!335528 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159895 () Unit!10440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17449 (_ BitVec 64) (_ BitVec 32)) Unit!10440)

(assert (=> b!335528 (= lt!159895 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14980 lt!159894)))))

(declare-fun b!335529 () Bool)

(declare-fun res!185264 () Bool)

(assert (=> b!335529 (=> (not res!185264) (not e!205974))))

(declare-datatypes ((List!4743 0))(
  ( (Nil!4740) (Cons!4739 (h!5595 (_ BitVec 64)) (t!9839 List!4743)) )
))
(declare-fun arrayNoDuplicates!0 (array!17449 (_ BitVec 32) List!4743) Bool)

(assert (=> b!335529 (= res!185264 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4740))))

(declare-fun b!335530 () Bool)

(declare-fun e!205976 () Bool)

(declare-fun e!205975 () Bool)

(assert (=> b!335530 (= e!205976 (and e!205975 mapRes!11799))))

(declare-fun condMapEmpty!11799 () Bool)

(declare-fun mapDefault!11799 () ValueCell!3124)


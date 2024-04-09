; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33740 () Bool)

(assert start!33740)

(declare-fun b_free!6967 () Bool)

(declare-fun b_next!6967 () Bool)

(assert (=> start!33740 (= b_free!6967 (not b_next!6967))))

(declare-fun tp!24405 () Bool)

(declare-fun b_and!14165 () Bool)

(assert (=> start!33740 (= tp!24405 b_and!14165)))

(declare-fun b!335257 () Bool)

(declare-fun res!185072 () Bool)

(declare-fun e!205808 () Bool)

(assert (=> b!335257 (=> (not res!185072) (not e!205808))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3194 0))(
  ( (MissingZero!3194 (index!14955 (_ BitVec 32))) (Found!3194 (index!14956 (_ BitVec 32))) (Intermediate!3194 (undefined!4006 Bool) (index!14957 (_ BitVec 32)) (x!33435 (_ BitVec 32))) (Undefined!3194) (MissingVacant!3194 (index!14958 (_ BitVec 32))) )
))
(declare-fun lt!159798 () SeekEntryResult!3194)

(declare-datatypes ((array!17419 0))(
  ( (array!17420 (arr!8237 (Array (_ BitVec 32) (_ BitVec 64))) (size!8589 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17419)

(declare-fun arrayContainsKey!0 (array!17419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335257 (= res!185072 (arrayContainsKey!0 _keys!1895 k!1348 (index!14956 lt!159798)))))

(declare-fun b!335258 () Bool)

(declare-fun e!205812 () Bool)

(declare-fun tp_is_empty!6919 () Bool)

(assert (=> b!335258 (= e!205812 tp_is_empty!6919)))

(declare-fun b!335259 () Bool)

(assert (=> b!335259 (= e!205808 (not true))))

(declare-datatypes ((V!10203 0))(
  ( (V!10204 (val!3504 Int)) )
))
(declare-datatypes ((tuple2!5090 0))(
  ( (tuple2!5091 (_1!2555 (_ BitVec 64)) (_2!2555 V!10203)) )
))
(declare-datatypes ((List!4730 0))(
  ( (Nil!4727) (Cons!4726 (h!5582 tuple2!5090) (t!9826 List!4730)) )
))
(declare-datatypes ((ListLongMap!4017 0))(
  ( (ListLongMap!4018 (toList!2024 List!4730)) )
))
(declare-fun lt!159800 () ListLongMap!4017)

(declare-fun contains!2064 (ListLongMap!4017 (_ BitVec 64)) Bool)

(assert (=> b!335259 (contains!2064 lt!159800 (select (arr!8237 _keys!1895) (index!14956 lt!159798)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10203)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3116 0))(
  ( (ValueCellFull!3116 (v!5662 V!10203)) (EmptyCell!3116) )
))
(declare-datatypes ((array!17421 0))(
  ( (array!17422 (arr!8238 (Array (_ BitVec 32) ValueCell!3116)) (size!8590 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17421)

(declare-datatypes ((Unit!10428 0))(
  ( (Unit!10429) )
))
(declare-fun lt!159801 () Unit!10428)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10203)

(declare-fun lemmaValidKeyInArrayIsInListMap!160 (array!17419 array!17421 (_ BitVec 32) (_ BitVec 32) V!10203 V!10203 (_ BitVec 32) Int) Unit!10428)

(assert (=> b!335259 (= lt!159801 (lemmaValidKeyInArrayIsInListMap!160 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14956 lt!159798) defaultEntry!1528))))

(assert (=> b!335259 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159799 () Unit!10428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17419 (_ BitVec 64) (_ BitVec 32)) Unit!10428)

(assert (=> b!335259 (= lt!159799 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14956 lt!159798)))))

(declare-fun b!335260 () Bool)

(declare-fun e!205809 () Bool)

(assert (=> b!335260 (= e!205809 tp_is_empty!6919)))

(declare-fun b!335261 () Bool)

(declare-fun e!205810 () Bool)

(declare-fun e!205811 () Bool)

(assert (=> b!335261 (= e!205810 e!205811)))

(declare-fun res!185075 () Bool)

(assert (=> b!335261 (=> (not res!185075) (not e!205811))))

(assert (=> b!335261 (= res!185075 (not (contains!2064 lt!159800 k!1348)))))

(declare-fun getCurrentListMap!1545 (array!17419 array!17421 (_ BitVec 32) (_ BitVec 32) V!10203 V!10203 (_ BitVec 32) Int) ListLongMap!4017)

(assert (=> b!335261 (= lt!159800 (getCurrentListMap!1545 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335262 () Bool)

(declare-fun res!185071 () Bool)

(assert (=> b!335262 (=> (not res!185071) (not e!205810))))

(assert (=> b!335262 (= res!185071 (and (= (size!8590 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8589 _keys!1895) (size!8590 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335263 () Bool)

(assert (=> b!335263 (= e!205811 e!205808)))

(declare-fun res!185074 () Bool)

(assert (=> b!335263 (=> (not res!185074) (not e!205808))))

(assert (=> b!335263 (= res!185074 (and (is-Found!3194 lt!159798) (= (select (arr!8237 _keys!1895) (index!14956 lt!159798)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17419 (_ BitVec 32)) SeekEntryResult!3194)

(assert (=> b!335263 (= lt!159798 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11775 () Bool)

(declare-fun mapRes!11775 () Bool)

(assert (=> mapIsEmpty!11775 mapRes!11775))

(declare-fun b!335264 () Bool)

(declare-fun res!185073 () Bool)

(assert (=> b!335264 (=> (not res!185073) (not e!205810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17419 (_ BitVec 32)) Bool)

(assert (=> b!335264 (= res!185073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11775 () Bool)

(declare-fun tp!24404 () Bool)

(assert (=> mapNonEmpty!11775 (= mapRes!11775 (and tp!24404 e!205812))))

(declare-fun mapRest!11775 () (Array (_ BitVec 32) ValueCell!3116))

(declare-fun mapValue!11775 () ValueCell!3116)

(declare-fun mapKey!11775 () (_ BitVec 32))

(assert (=> mapNonEmpty!11775 (= (arr!8238 _values!1525) (store mapRest!11775 mapKey!11775 mapValue!11775))))

(declare-fun b!335265 () Bool)

(declare-fun res!185077 () Bool)

(assert (=> b!335265 (=> (not res!185077) (not e!205810))))

(declare-datatypes ((List!4731 0))(
  ( (Nil!4728) (Cons!4727 (h!5583 (_ BitVec 64)) (t!9827 List!4731)) )
))
(declare-fun arrayNoDuplicates!0 (array!17419 (_ BitVec 32) List!4731) Bool)

(assert (=> b!335265 (= res!185077 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4728))))

(declare-fun res!185078 () Bool)

(assert (=> start!33740 (=> (not res!185078) (not e!205810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33740 (= res!185078 (validMask!0 mask!2385))))

(assert (=> start!33740 e!205810))

(assert (=> start!33740 true))

(assert (=> start!33740 tp_is_empty!6919))

(assert (=> start!33740 tp!24405))

(declare-fun e!205807 () Bool)

(declare-fun array_inv!6108 (array!17421) Bool)

(assert (=> start!33740 (and (array_inv!6108 _values!1525) e!205807)))

(declare-fun array_inv!6109 (array!17419) Bool)

(assert (=> start!33740 (array_inv!6109 _keys!1895)))

(declare-fun b!335266 () Bool)

(declare-fun res!185076 () Bool)

(assert (=> b!335266 (=> (not res!185076) (not e!205810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335266 (= res!185076 (validKeyInArray!0 k!1348))))

(declare-fun b!335267 () Bool)

(assert (=> b!335267 (= e!205807 (and e!205809 mapRes!11775))))

(declare-fun condMapEmpty!11775 () Bool)

(declare-fun mapDefault!11775 () ValueCell!3116)


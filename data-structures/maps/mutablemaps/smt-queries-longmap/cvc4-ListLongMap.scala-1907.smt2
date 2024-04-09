; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33992 () Bool)

(assert start!33992)

(declare-fun b_free!7115 () Bool)

(declare-fun b_next!7115 () Bool)

(assert (=> start!33992 (= b_free!7115 (not b_next!7115))))

(declare-fun tp!24864 () Bool)

(declare-fun b_and!14323 () Bool)

(assert (=> start!33992 (= tp!24864 b_and!14323)))

(declare-fun b!338345 () Bool)

(declare-fun res!186966 () Bool)

(declare-fun e!207613 () Bool)

(assert (=> b!338345 (=> (not res!186966) (not e!207613))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338345 (= res!186966 (validKeyInArray!0 k!1348))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun lt!160803 () Bool)

(declare-fun e!207611 () Bool)

(declare-datatypes ((array!17701 0))(
  ( (array!17702 (arr!8373 (Array (_ BitVec 32) (_ BitVec 64))) (size!8725 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17701)

(declare-fun b!338346 () Bool)

(assert (=> b!338346 (= e!207611 (and (not lt!160803) (not (= (size!8725 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-datatypes ((Unit!10504 0))(
  ( (Unit!10505) )
))
(declare-fun lt!160801 () Unit!10504)

(declare-fun e!207609 () Unit!10504)

(assert (=> b!338346 (= lt!160801 e!207609)))

(declare-fun c!52355 () Bool)

(assert (=> b!338346 (= c!52355 lt!160803)))

(declare-fun arrayContainsKey!0 (array!17701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338346 (= lt!160803 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338347 () Bool)

(declare-fun e!207615 () Bool)

(declare-fun tp_is_empty!7067 () Bool)

(assert (=> b!338347 (= e!207615 tp_is_empty!7067)))

(declare-fun mapNonEmpty!12012 () Bool)

(declare-fun mapRes!12012 () Bool)

(declare-fun tp!24863 () Bool)

(assert (=> mapNonEmpty!12012 (= mapRes!12012 (and tp!24863 e!207615))))

(declare-datatypes ((V!10399 0))(
  ( (V!10400 (val!3578 Int)) )
))
(declare-datatypes ((ValueCell!3190 0))(
  ( (ValueCellFull!3190 (v!5741 V!10399)) (EmptyCell!3190) )
))
(declare-fun mapRest!12012 () (Array (_ BitVec 32) ValueCell!3190))

(declare-fun mapKey!12012 () (_ BitVec 32))

(declare-fun mapValue!12012 () ValueCell!3190)

(declare-datatypes ((array!17703 0))(
  ( (array!17704 (arr!8374 (Array (_ BitVec 32) ValueCell!3190)) (size!8726 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17703)

(assert (=> mapNonEmpty!12012 (= (arr!8374 _values!1525) (store mapRest!12012 mapKey!12012 mapValue!12012))))

(declare-fun b!338348 () Bool)

(declare-fun e!207614 () Bool)

(assert (=> b!338348 (= e!207614 tp_is_empty!7067)))

(declare-fun mapIsEmpty!12012 () Bool)

(assert (=> mapIsEmpty!12012 mapRes!12012))

(declare-fun b!338349 () Bool)

(declare-fun Unit!10506 () Unit!10504)

(assert (=> b!338349 (= e!207609 Unit!10506)))

(declare-fun b!338350 () Bool)

(declare-fun res!186965 () Bool)

(assert (=> b!338350 (=> (not res!186965) (not e!207613))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338350 (= res!186965 (and (= (size!8726 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8725 _keys!1895) (size!8726 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338351 () Bool)

(declare-fun res!186971 () Bool)

(assert (=> b!338351 (=> (not res!186971) (not e!207613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17701 (_ BitVec 32)) Bool)

(assert (=> b!338351 (= res!186971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338353 () Bool)

(declare-fun Unit!10507 () Unit!10504)

(assert (=> b!338353 (= e!207609 Unit!10507)))

(declare-fun zeroValue!1467 () V!10399)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!160802 () Unit!10504)

(declare-fun minValue!1467 () V!10399)

(declare-fun lemmaArrayContainsKeyThenInListMap!271 (array!17701 array!17703 (_ BitVec 32) (_ BitVec 32) V!10399 V!10399 (_ BitVec 64) (_ BitVec 32) Int) Unit!10504)

(declare-fun arrayScanForKey!0 (array!17701 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338353 (= lt!160802 (lemmaArrayContainsKeyThenInListMap!271 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338353 false))

(declare-fun b!338354 () Bool)

(assert (=> b!338354 (= e!207613 e!207611)))

(declare-fun res!186968 () Bool)

(assert (=> b!338354 (=> (not res!186968) (not e!207611))))

(declare-datatypes ((SeekEntryResult!3238 0))(
  ( (MissingZero!3238 (index!15131 (_ BitVec 32))) (Found!3238 (index!15132 (_ BitVec 32))) (Intermediate!3238 (undefined!4050 Bool) (index!15133 (_ BitVec 32)) (x!33721 (_ BitVec 32))) (Undefined!3238) (MissingVacant!3238 (index!15134 (_ BitVec 32))) )
))
(declare-fun lt!160800 () SeekEntryResult!3238)

(assert (=> b!338354 (= res!186968 (and (not (is-Found!3238 lt!160800)) (is-MissingZero!3238 lt!160800)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17701 (_ BitVec 32)) SeekEntryResult!3238)

(assert (=> b!338354 (= lt!160800 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338355 () Bool)

(declare-fun res!186969 () Bool)

(assert (=> b!338355 (=> (not res!186969) (not e!207613))))

(declare-datatypes ((tuple2!5186 0))(
  ( (tuple2!5187 (_1!2603 (_ BitVec 64)) (_2!2603 V!10399)) )
))
(declare-datatypes ((List!4826 0))(
  ( (Nil!4823) (Cons!4822 (h!5678 tuple2!5186) (t!9932 List!4826)) )
))
(declare-datatypes ((ListLongMap!4113 0))(
  ( (ListLongMap!4114 (toList!2072 List!4826)) )
))
(declare-fun contains!2117 (ListLongMap!4113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1592 (array!17701 array!17703 (_ BitVec 32) (_ BitVec 32) V!10399 V!10399 (_ BitVec 32) Int) ListLongMap!4113)

(assert (=> b!338355 (= res!186969 (not (contains!2117 (getCurrentListMap!1592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338356 () Bool)

(declare-fun e!207612 () Bool)

(assert (=> b!338356 (= e!207612 (and e!207614 mapRes!12012))))

(declare-fun condMapEmpty!12012 () Bool)

(declare-fun mapDefault!12012 () ValueCell!3190)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34334 () Bool)

(assert start!34334)

(declare-fun b_free!7301 () Bool)

(declare-fun b_next!7301 () Bool)

(assert (=> start!34334 (= b_free!7301 (not b_next!7301))))

(declare-fun tp!25442 () Bool)

(declare-fun b_and!14523 () Bool)

(assert (=> start!34334 (= tp!25442 b_and!14523)))

(declare-fun b!342456 () Bool)

(declare-fun res!189376 () Bool)

(declare-fun e!210011 () Bool)

(assert (=> b!342456 (=> (not res!189376) (not e!210011))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10647 0))(
  ( (V!10648 (val!3671 Int)) )
))
(declare-fun zeroValue!1467 () V!10647)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3283 0))(
  ( (ValueCellFull!3283 (v!5841 V!10647)) (EmptyCell!3283) )
))
(declare-datatypes ((array!18073 0))(
  ( (array!18074 (arr!8552 (Array (_ BitVec 32) ValueCell!3283)) (size!8904 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18073)

(declare-datatypes ((array!18075 0))(
  ( (array!18076 (arr!8553 (Array (_ BitVec 32) (_ BitVec 64))) (size!8905 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18075)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10647)

(declare-datatypes ((tuple2!5310 0))(
  ( (tuple2!5311 (_1!2665 (_ BitVec 64)) (_2!2665 V!10647)) )
))
(declare-datatypes ((List!4951 0))(
  ( (Nil!4948) (Cons!4947 (h!5803 tuple2!5310) (t!10071 List!4951)) )
))
(declare-datatypes ((ListLongMap!4237 0))(
  ( (ListLongMap!4238 (toList!2134 List!4951)) )
))
(declare-fun contains!2186 (ListLongMap!4237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1654 (array!18075 array!18073 (_ BitVec 32) (_ BitVec 32) V!10647 V!10647 (_ BitVec 32) Int) ListLongMap!4237)

(assert (=> b!342456 (= res!189376 (not (contains!2186 (getCurrentListMap!1654 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12312 () Bool)

(declare-fun mapRes!12312 () Bool)

(declare-fun tp!25443 () Bool)

(declare-fun e!210015 () Bool)

(assert (=> mapNonEmpty!12312 (= mapRes!12312 (and tp!25443 e!210015))))

(declare-fun mapValue!12312 () ValueCell!3283)

(declare-fun mapKey!12312 () (_ BitVec 32))

(declare-fun mapRest!12312 () (Array (_ BitVec 32) ValueCell!3283))

(assert (=> mapNonEmpty!12312 (= (arr!8552 _values!1525) (store mapRest!12312 mapKey!12312 mapValue!12312))))

(declare-fun b!342457 () Bool)

(declare-fun res!189373 () Bool)

(assert (=> b!342457 (=> (not res!189373) (not e!210011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342457 (= res!189373 (validKeyInArray!0 k!1348))))

(declare-fun b!342458 () Bool)

(declare-fun res!189374 () Bool)

(assert (=> b!342458 (=> (not res!189374) (not e!210011))))

(declare-datatypes ((List!4952 0))(
  ( (Nil!4949) (Cons!4948 (h!5804 (_ BitVec 64)) (t!10072 List!4952)) )
))
(declare-fun arrayNoDuplicates!0 (array!18075 (_ BitVec 32) List!4952) Bool)

(assert (=> b!342458 (= res!189374 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4949))))

(declare-fun b!342459 () Bool)

(declare-fun res!189377 () Bool)

(assert (=> b!342459 (=> (not res!189377) (not e!210011))))

(assert (=> b!342459 (= res!189377 (and (= (size!8904 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8905 _keys!1895) (size!8904 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342461 () Bool)

(declare-fun e!210010 () Bool)

(declare-fun tp_is_empty!7253 () Bool)

(assert (=> b!342461 (= e!210010 tp_is_empty!7253)))

(declare-fun b!342462 () Bool)

(declare-fun e!210013 () Bool)

(assert (=> b!342462 (= e!210013 false)))

(declare-datatypes ((Unit!10671 0))(
  ( (Unit!10672) )
))
(declare-fun lt!162174 () Unit!10671)

(declare-fun e!210009 () Unit!10671)

(assert (=> b!342462 (= lt!162174 e!210009)))

(declare-fun c!52754 () Bool)

(declare-fun arrayContainsKey!0 (array!18075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342462 (= c!52754 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12312 () Bool)

(assert (=> mapIsEmpty!12312 mapRes!12312))

(declare-fun b!342463 () Bool)

(declare-fun Unit!10673 () Unit!10671)

(assert (=> b!342463 (= e!210009 Unit!10673)))

(declare-fun b!342464 () Bool)

(declare-fun res!189371 () Bool)

(assert (=> b!342464 (=> (not res!189371) (not e!210011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18075 (_ BitVec 32)) Bool)

(assert (=> b!342464 (= res!189371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!189375 () Bool)

(assert (=> start!34334 (=> (not res!189375) (not e!210011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34334 (= res!189375 (validMask!0 mask!2385))))

(assert (=> start!34334 e!210011))

(assert (=> start!34334 true))

(assert (=> start!34334 tp_is_empty!7253))

(assert (=> start!34334 tp!25442))

(declare-fun e!210012 () Bool)

(declare-fun array_inv!6322 (array!18073) Bool)

(assert (=> start!34334 (and (array_inv!6322 _values!1525) e!210012)))

(declare-fun array_inv!6323 (array!18075) Bool)

(assert (=> start!34334 (array_inv!6323 _keys!1895)))

(declare-fun b!342460 () Bool)

(declare-fun Unit!10674 () Unit!10671)

(assert (=> b!342460 (= e!210009 Unit!10674)))

(declare-fun lt!162173 () Unit!10671)

(declare-fun lemmaArrayContainsKeyThenInListMap!305 (array!18075 array!18073 (_ BitVec 32) (_ BitVec 32) V!10647 V!10647 (_ BitVec 64) (_ BitVec 32) Int) Unit!10671)

(declare-fun arrayScanForKey!0 (array!18075 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342460 (= lt!162173 (lemmaArrayContainsKeyThenInListMap!305 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342460 false))

(declare-fun b!342465 () Bool)

(assert (=> b!342465 (= e!210012 (and e!210010 mapRes!12312))))

(declare-fun condMapEmpty!12312 () Bool)

(declare-fun mapDefault!12312 () ValueCell!3283)


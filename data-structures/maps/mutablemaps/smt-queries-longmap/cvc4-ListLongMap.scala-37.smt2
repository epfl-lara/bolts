; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!658 () Bool)

(assert start!658)

(declare-fun b_free!131 () Bool)

(declare-fun b_next!131 () Bool)

(assert (=> start!658 (= b_free!131 (not b_next!131))))

(declare-fun tp!611 () Bool)

(declare-fun b_and!269 () Bool)

(assert (=> start!658 (= tp!611 b_and!269)))

(declare-fun mapNonEmpty!272 () Bool)

(declare-fun mapRes!272 () Bool)

(declare-fun tp!610 () Bool)

(declare-fun e!2301 () Bool)

(assert (=> mapNonEmpty!272 (= mapRes!272 (and tp!610 e!2301))))

(declare-fun mapKey!272 () (_ BitVec 32))

(declare-datatypes ((V!455 0))(
  ( (V!456 (val!110 Int)) )
))
(declare-datatypes ((ValueCell!88 0))(
  ( (ValueCellFull!88 (v!1197 V!455)) (EmptyCell!88) )
))
(declare-fun mapValue!272 () ValueCell!88)

(declare-datatypes ((array!347 0))(
  ( (array!348 (arr!166 (Array (_ BitVec 32) ValueCell!88)) (size!228 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!347)

(declare-fun mapRest!272 () (Array (_ BitVec 32) ValueCell!88))

(assert (=> mapNonEmpty!272 (= (arr!166 _values!1492) (store mapRest!272 mapKey!272 mapValue!272))))

(declare-fun b!4377 () Bool)

(declare-fun res!5701 () Bool)

(declare-fun e!2298 () Bool)

(assert (=> b!4377 (=> (not res!5701) (not e!2298))))

(declare-datatypes ((array!349 0))(
  ( (array!350 (arr!167 (Array (_ BitVec 32) (_ BitVec 64))) (size!229 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!349)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!349 (_ BitVec 32)) Bool)

(assert (=> b!4377 (= res!5701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4378 () Bool)

(declare-fun e!2303 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4378 (= e!2303 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!4379 () Bool)

(declare-fun tp_is_empty!209 () Bool)

(assert (=> b!4379 (= e!2301 tp_is_empty!209)))

(declare-fun mapIsEmpty!272 () Bool)

(assert (=> mapIsEmpty!272 mapRes!272))

(declare-fun b!4380 () Bool)

(declare-fun res!5704 () Bool)

(assert (=> b!4380 (=> (not res!5704) (not e!2298))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4380 (= res!5704 (and (= (size!228 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!229 _keys!1806) (size!228 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4381 () Bool)

(assert (=> b!4381 (= e!2298 (not (bvslt #b00000000000000000000000000000000 (size!229 _keys!1806))))))

(assert (=> b!4381 e!2303))

(declare-fun c!209 () Bool)

(assert (=> b!4381 (= c!209 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!33 0))(
  ( (Unit!34) )
))
(declare-fun lt!597 () Unit!33)

(declare-fun minValue!1434 () V!455)

(declare-fun zeroValue!1434 () V!455)

(declare-fun lemmaKeyInListMapIsInArray!6 (array!349 array!347 (_ BitVec 32) (_ BitVec 32) V!455 V!455 (_ BitVec 64) Int) Unit!33)

(assert (=> b!4381 (= lt!597 (lemmaKeyInListMapIsInArray!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!4382 () Bool)

(declare-fun res!5700 () Bool)

(assert (=> b!4382 (=> (not res!5700) (not e!2298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4382 (= res!5700 (validKeyInArray!0 k!1278))))

(declare-fun b!4383 () Bool)

(declare-fun res!5699 () Bool)

(assert (=> b!4383 (=> (not res!5699) (not e!2298))))

(declare-datatypes ((List!105 0))(
  ( (Nil!102) (Cons!101 (h!667 (_ BitVec 64)) (t!2232 List!105)) )
))
(declare-fun arrayNoDuplicates!0 (array!349 (_ BitVec 32) List!105) Bool)

(assert (=> b!4383 (= res!5699 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!102))))

(declare-fun res!5702 () Bool)

(assert (=> start!658 (=> (not res!5702) (not e!2298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!658 (= res!5702 (validMask!0 mask!2250))))

(assert (=> start!658 e!2298))

(assert (=> start!658 tp!611))

(assert (=> start!658 true))

(declare-fun e!2300 () Bool)

(declare-fun array_inv!115 (array!347) Bool)

(assert (=> start!658 (and (array_inv!115 _values!1492) e!2300)))

(assert (=> start!658 tp_is_empty!209))

(declare-fun array_inv!116 (array!349) Bool)

(assert (=> start!658 (array_inv!116 _keys!1806)))

(declare-fun b!4384 () Bool)

(declare-fun e!2302 () Bool)

(assert (=> b!4384 (= e!2300 (and e!2302 mapRes!272))))

(declare-fun condMapEmpty!272 () Bool)

(declare-fun mapDefault!272 () ValueCell!88)


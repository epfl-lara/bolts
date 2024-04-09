; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1042 () Bool)

(assert start!1042)

(declare-fun b_free!371 () Bool)

(declare-fun b_next!371 () Bool)

(assert (=> start!1042 (= b_free!371 (not b_next!371))))

(declare-fun tp!1351 () Bool)

(declare-fun b_and!523 () Bool)

(assert (=> start!1042 (= tp!1351 b_and!523)))

(declare-fun res!8382 () Bool)

(declare-fun e!5252 () Bool)

(assert (=> start!1042 (=> (not res!8382) (not e!5252))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1042 (= res!8382 (validMask!0 mask!2250))))

(assert (=> start!1042 e!5252))

(assert (=> start!1042 tp!1351))

(assert (=> start!1042 true))

(declare-datatypes ((V!775 0))(
  ( (V!776 (val!230 Int)) )
))
(declare-datatypes ((ValueCell!208 0))(
  ( (ValueCellFull!208 (v!1324 V!775)) (EmptyCell!208) )
))
(declare-datatypes ((array!821 0))(
  ( (array!822 (arr!396 (Array (_ BitVec 32) ValueCell!208)) (size!458 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!821)

(declare-fun e!5248 () Bool)

(declare-fun array_inv!285 (array!821) Bool)

(assert (=> start!1042 (and (array_inv!285 _values!1492) e!5248)))

(declare-fun tp_is_empty!449 () Bool)

(assert (=> start!1042 tp_is_empty!449))

(declare-datatypes ((array!823 0))(
  ( (array!824 (arr!397 (Array (_ BitVec 32) (_ BitVec 64))) (size!459 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!823)

(declare-fun array_inv!286 (array!823) Bool)

(assert (=> start!1042 (array_inv!286 _keys!1806)))

(declare-fun b!9195 () Bool)

(declare-fun res!8379 () Bool)

(assert (=> b!9195 (=> (not res!8379) (not e!5252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!823 (_ BitVec 32)) Bool)

(assert (=> b!9195 (= res!8379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9196 () Bool)

(declare-fun e!5246 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!9196 (= e!5246 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9197 () Bool)

(declare-fun e!5250 () Bool)

(assert (=> b!9197 (= e!5252 (not e!5250))))

(declare-fun res!8380 () Bool)

(assert (=> b!9197 (=> res!8380 e!5250)))

(declare-fun arrayContainsKey!0 (array!823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9197 (= res!8380 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9197 e!5246))

(declare-fun c!704 () Bool)

(assert (=> b!9197 (= c!704 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!775)

(declare-datatypes ((Unit!187 0))(
  ( (Unit!188) )
))
(declare-fun lt!1998 () Unit!187)

(declare-fun zeroValue!1434 () V!775)

(declare-fun lemmaKeyInListMapIsInArray!70 (array!823 array!821 (_ BitVec 32) (_ BitVec 32) V!775 V!775 (_ BitVec 64) Int) Unit!187)

(assert (=> b!9197 (= lt!1998 (lemmaKeyInListMapIsInArray!70 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9198 () Bool)

(declare-fun e!5247 () Bool)

(assert (=> b!9198 (= e!5247 tp_is_empty!449)))

(declare-fun b!9199 () Bool)

(declare-fun res!8377 () Bool)

(assert (=> b!9199 (=> (not res!8377) (not e!5252))))

(declare-datatypes ((List!271 0))(
  ( (Nil!268) (Cons!267 (h!833 (_ BitVec 64)) (t!2412 List!271)) )
))
(declare-fun arrayNoDuplicates!0 (array!823 (_ BitVec 32) List!271) Bool)

(assert (=> b!9199 (= res!8377 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!268))))

(declare-fun mapNonEmpty!653 () Bool)

(declare-fun mapRes!653 () Bool)

(declare-fun tp!1352 () Bool)

(declare-fun e!5251 () Bool)

(assert (=> mapNonEmpty!653 (= mapRes!653 (and tp!1352 e!5251))))

(declare-fun mapKey!653 () (_ BitVec 32))

(declare-fun mapRest!653 () (Array (_ BitVec 32) ValueCell!208))

(declare-fun mapValue!653 () ValueCell!208)

(assert (=> mapNonEmpty!653 (= (arr!396 _values!1492) (store mapRest!653 mapKey!653 mapValue!653))))

(declare-fun b!9200 () Bool)

(declare-fun res!8383 () Bool)

(assert (=> b!9200 (=> (not res!8383) (not e!5252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9200 (= res!8383 (validKeyInArray!0 k!1278))))

(declare-fun mapIsEmpty!653 () Bool)

(assert (=> mapIsEmpty!653 mapRes!653))

(declare-fun b!9201 () Bool)

(assert (=> b!9201 (= e!5246 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9202 () Bool)

(assert (=> b!9202 (= e!5248 (and e!5247 mapRes!653))))

(declare-fun condMapEmpty!653 () Bool)

(declare-fun mapDefault!653 () ValueCell!208)


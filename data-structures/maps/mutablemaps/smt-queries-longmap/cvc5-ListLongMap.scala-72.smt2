; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!986 () Bool)

(assert start!986)

(declare-fun b_free!337 () Bool)

(declare-fun b_next!337 () Bool)

(assert (=> start!986 (= b_free!337 (not b_next!337))))

(declare-fun tp!1246 () Bool)

(declare-fun b_and!487 () Bool)

(assert (=> start!986 (= tp!1246 b_and!487)))

(declare-fun mapNonEmpty!599 () Bool)

(declare-fun mapRes!599 () Bool)

(declare-fun tp!1247 () Bool)

(declare-fun e!4810 () Bool)

(assert (=> mapNonEmpty!599 (= mapRes!599 (and tp!1247 e!4810))))

(declare-datatypes ((V!731 0))(
  ( (V!732 (val!213 Int)) )
))
(declare-datatypes ((ValueCell!191 0))(
  ( (ValueCellFull!191 (v!1306 V!731)) (EmptyCell!191) )
))
(declare-fun mapValue!599 () ValueCell!191)

(declare-fun mapKey!599 () (_ BitVec 32))

(declare-fun mapRest!599 () (Array (_ BitVec 32) ValueCell!191))

(declare-datatypes ((array!753 0))(
  ( (array!754 (arr!363 (Array (_ BitVec 32) ValueCell!191)) (size!425 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!753)

(assert (=> mapNonEmpty!599 (= (arr!363 _values!1492) (store mapRest!599 mapKey!599 mapValue!599))))

(declare-fun b!8456 () Bool)

(declare-fun res!7971 () Bool)

(declare-fun e!4808 () Bool)

(assert (=> b!8456 (=> (not res!7971) (not e!4808))))

(declare-datatypes ((array!755 0))(
  ( (array!756 (arr!364 (Array (_ BitVec 32) (_ BitVec 64))) (size!426 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!755)

(declare-datatypes ((List!249 0))(
  ( (Nil!246) (Cons!245 (h!811 (_ BitVec 64)) (t!2388 List!249)) )
))
(declare-fun arrayNoDuplicates!0 (array!755 (_ BitVec 32) List!249) Bool)

(assert (=> b!8456 (= res!7971 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!246))))

(declare-fun b!8457 () Bool)

(declare-fun e!4809 () Bool)

(assert (=> b!8457 (= e!4808 (not e!4809))))

(declare-fun res!7969 () Bool)

(assert (=> b!8457 (=> res!7969 e!4809)))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8457 (= res!7969 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!4805 () Bool)

(assert (=> b!8457 e!4805))

(declare-fun c!620 () Bool)

(assert (=> b!8457 (= c!620 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!731)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((Unit!157 0))(
  ( (Unit!158) )
))
(declare-fun lt!1767 () Unit!157)

(declare-fun zeroValue!1434 () V!731)

(declare-fun lemmaKeyInListMapIsInArray!58 (array!755 array!753 (_ BitVec 32) (_ BitVec 32) V!731 V!731 (_ BitVec 64) Int) Unit!157)

(assert (=> b!8457 (= lt!1767 (lemmaKeyInListMapIsInArray!58 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!8459 () Bool)

(declare-fun lt!1766 () (_ BitVec 32))

(assert (=> b!8459 (= e!4809 (or (not (= (size!426 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsgt #b00000000000000000000000000000000 (size!426 _keys!1806)) (and (bvsge lt!1766 #b00000000000000000000000000000000) (bvsle lt!1766 (size!426 _keys!1806)))))))

(declare-fun arrayScanForKey!0 (array!755 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8459 (= lt!1766 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8460 () Bool)

(declare-fun tp_is_empty!415 () Bool)

(assert (=> b!8460 (= e!4810 tp_is_empty!415)))

(declare-fun b!8461 () Bool)

(declare-fun e!4811 () Bool)

(declare-fun e!4806 () Bool)

(assert (=> b!8461 (= e!4811 (and e!4806 mapRes!599))))

(declare-fun condMapEmpty!599 () Bool)

(declare-fun mapDefault!599 () ValueCell!191)


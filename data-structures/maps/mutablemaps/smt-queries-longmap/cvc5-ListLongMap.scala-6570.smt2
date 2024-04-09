; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83332 () Bool)

(assert start!83332)

(declare-fun b_free!19297 () Bool)

(declare-fun b_next!19297 () Bool)

(assert (=> start!83332 (= b_free!19297 (not b_next!19297))))

(declare-fun tp!67170 () Bool)

(declare-fun b_and!30833 () Bool)

(assert (=> start!83332 (= tp!67170 b_and!30833)))

(declare-fun b!972186 () Bool)

(declare-fun e!548023 () Bool)

(declare-fun e!548024 () Bool)

(assert (=> b!972186 (= e!548023 e!548024)))

(declare-fun res!650855 () Bool)

(assert (=> b!972186 (=> (not res!650855) (not e!548024))))

(declare-fun lt!431956 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972186 (= res!650855 (validKeyInArray!0 lt!431956))))

(declare-datatypes ((array!60419 0))(
  ( (array!60420 (arr!29069 (Array (_ BitVec 32) (_ BitVec 64))) (size!29549 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60419)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!972186 (= lt!431956 (select (arr!29069 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34577 0))(
  ( (V!34578 (val!11148 Int)) )
))
(declare-datatypes ((tuple2!14398 0))(
  ( (tuple2!14399 (_1!7209 (_ BitVec 64)) (_2!7209 V!34577)) )
))
(declare-datatypes ((List!20288 0))(
  ( (Nil!20285) (Cons!20284 (h!21446 tuple2!14398) (t!28691 List!20288)) )
))
(declare-datatypes ((ListLongMap!13109 0))(
  ( (ListLongMap!13110 (toList!6570 List!20288)) )
))
(declare-fun lt!431954 () ListLongMap!13109)

(declare-datatypes ((ValueCell!10616 0))(
  ( (ValueCellFull!10616 (v!13707 V!34577)) (EmptyCell!10616) )
))
(declare-datatypes ((array!60421 0))(
  ( (array!60422 (arr!29070 (Array (_ BitVec 32) ValueCell!10616)) (size!29550 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60421)

(declare-fun zeroValue!1367 () V!34577)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34577)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3755 (array!60419 array!60421 (_ BitVec 32) (_ BitVec 32) V!34577 V!34577 (_ BitVec 32) Int) ListLongMap!13109)

(assert (=> b!972186 (= lt!431954 (getCurrentListMap!3755 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972187 () Bool)

(declare-fun res!650850 () Bool)

(assert (=> b!972187 (=> (not res!650850) (not e!548023))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972187 (= res!650850 (validKeyInArray!0 (select (arr!29069 _keys!1717) i!822)))))

(declare-fun b!972188 () Bool)

(declare-fun res!650853 () Bool)

(assert (=> b!972188 (=> (not res!650853) (not e!548023))))

(declare-datatypes ((List!20289 0))(
  ( (Nil!20286) (Cons!20285 (h!21447 (_ BitVec 64)) (t!28692 List!20289)) )
))
(declare-fun arrayNoDuplicates!0 (array!60419 (_ BitVec 32) List!20289) Bool)

(assert (=> b!972188 (= res!650853 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20286))))

(declare-fun b!972189 () Bool)

(declare-fun res!650852 () Bool)

(assert (=> b!972189 (=> (not res!650852) (not e!548023))))

(assert (=> b!972189 (= res!650852 (and (= (size!29550 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29549 _keys!1717) (size!29550 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972190 () Bool)

(declare-fun e!548025 () Bool)

(declare-fun tp_is_empty!22195 () Bool)

(assert (=> b!972190 (= e!548025 tp_is_empty!22195)))

(declare-fun b!972191 () Bool)

(declare-fun res!650851 () Bool)

(assert (=> b!972191 (=> (not res!650851) (not e!548023))))

(assert (=> b!972191 (= res!650851 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29549 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29549 _keys!1717))))))

(declare-fun b!972192 () Bool)

(declare-fun e!548022 () Bool)

(assert (=> b!972192 (= e!548022 tp_is_empty!22195)))

(declare-fun b!972193 () Bool)

(declare-fun res!650854 () Bool)

(assert (=> b!972193 (=> (not res!650854) (not e!548023))))

(declare-fun contains!5618 (ListLongMap!13109 (_ BitVec 64)) Bool)

(assert (=> b!972193 (= res!650854 (contains!5618 (getCurrentListMap!3755 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29069 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35302 () Bool)

(declare-fun mapRes!35302 () Bool)

(declare-fun tp!67171 () Bool)

(assert (=> mapNonEmpty!35302 (= mapRes!35302 (and tp!67171 e!548022))))

(declare-fun mapRest!35302 () (Array (_ BitVec 32) ValueCell!10616))

(declare-fun mapKey!35302 () (_ BitVec 32))

(declare-fun mapValue!35302 () ValueCell!10616)

(assert (=> mapNonEmpty!35302 (= (arr!29070 _values!1425) (store mapRest!35302 mapKey!35302 mapValue!35302))))

(declare-fun mapIsEmpty!35302 () Bool)

(assert (=> mapIsEmpty!35302 mapRes!35302))

(declare-fun b!972194 () Bool)

(declare-fun e!548020 () Bool)

(assert (=> b!972194 (= e!548020 (and e!548025 mapRes!35302))))

(declare-fun condMapEmpty!35302 () Bool)

(declare-fun mapDefault!35302 () ValueCell!10616)


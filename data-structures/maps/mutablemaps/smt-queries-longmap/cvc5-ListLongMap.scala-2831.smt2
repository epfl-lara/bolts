; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40958 () Bool)

(assert start!40958)

(declare-fun b_free!10885 () Bool)

(declare-fun b_next!10885 () Bool)

(assert (=> start!40958 (= b_free!10885 (not b_next!10885))))

(declare-fun tp!38482 () Bool)

(declare-fun b_and!19045 () Bool)

(assert (=> start!40958 (= tp!38482 b_and!19045)))

(declare-fun b!455342 () Bool)

(declare-fun e!266215 () Bool)

(declare-fun tp_is_empty!12223 () Bool)

(assert (=> b!455342 (= e!266215 tp_is_empty!12223)))

(declare-fun b!455343 () Bool)

(declare-fun res!271602 () Bool)

(declare-fun e!266214 () Bool)

(assert (=> b!455343 (=> (not res!271602) (not e!266214))))

(declare-datatypes ((array!28215 0))(
  ( (array!28216 (arr!13548 (Array (_ BitVec 32) (_ BitVec 64))) (size!13900 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28215)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17403 0))(
  ( (V!17404 (val!6156 Int)) )
))
(declare-datatypes ((ValueCell!5768 0))(
  ( (ValueCellFull!5768 (v!8418 V!17403)) (EmptyCell!5768) )
))
(declare-datatypes ((array!28217 0))(
  ( (array!28218 (arr!13549 (Array (_ BitVec 32) ValueCell!5768)) (size!13901 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28217)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!455343 (= res!271602 (and (= (size!13901 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13900 _keys!709) (size!13901 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455344 () Bool)

(declare-fun res!271610 () Bool)

(assert (=> b!455344 (=> (not res!271610) (not e!266214))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455344 (= res!271610 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455345 () Bool)

(declare-fun res!271601 () Bool)

(assert (=> b!455345 (=> (not res!271601) (not e!266214))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455345 (= res!271601 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13900 _keys!709))))))

(declare-fun b!455346 () Bool)

(declare-fun e!266213 () Bool)

(assert (=> b!455346 (= e!266214 e!266213)))

(declare-fun res!271608 () Bool)

(assert (=> b!455346 (=> (not res!271608) (not e!266213))))

(declare-fun lt!206318 () array!28215)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28215 (_ BitVec 32)) Bool)

(assert (=> b!455346 (= res!271608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206318 mask!1025))))

(assert (=> b!455346 (= lt!206318 (array!28216 (store (arr!13548 _keys!709) i!563 k!794) (size!13900 _keys!709)))))

(declare-fun b!455347 () Bool)

(declare-fun res!271605 () Bool)

(assert (=> b!455347 (=> (not res!271605) (not e!266213))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!455347 (= res!271605 (bvsle from!863 i!563))))

(declare-fun b!455348 () Bool)

(assert (=> b!455348 (= e!266213 false)))

(declare-fun minValue!515 () V!17403)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17403)

(declare-datatypes ((tuple2!8056 0))(
  ( (tuple2!8057 (_1!4038 (_ BitVec 64)) (_2!4038 V!17403)) )
))
(declare-datatypes ((List!8163 0))(
  ( (Nil!8160) (Cons!8159 (h!9015 tuple2!8056) (t!13999 List!8163)) )
))
(declare-datatypes ((ListLongMap!6983 0))(
  ( (ListLongMap!6984 (toList!3507 List!8163)) )
))
(declare-fun lt!206319 () ListLongMap!6983)

(declare-fun v!412 () V!17403)

(declare-fun getCurrentListMapNoExtraKeys!1683 (array!28215 array!28217 (_ BitVec 32) (_ BitVec 32) V!17403 V!17403 (_ BitVec 32) Int) ListLongMap!6983)

(assert (=> b!455348 (= lt!206319 (getCurrentListMapNoExtraKeys!1683 lt!206318 (array!28218 (store (arr!13549 _values!549) i!563 (ValueCellFull!5768 v!412)) (size!13901 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206317 () ListLongMap!6983)

(assert (=> b!455348 (= lt!206317 (getCurrentListMapNoExtraKeys!1683 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455349 () Bool)

(declare-fun res!271603 () Bool)

(assert (=> b!455349 (=> (not res!271603) (not e!266214))))

(assert (=> b!455349 (= res!271603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!271606 () Bool)

(assert (=> start!40958 (=> (not res!271606) (not e!266214))))

(assert (=> start!40958 (= res!271606 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13900 _keys!709))))))

(assert (=> start!40958 e!266214))

(assert (=> start!40958 tp_is_empty!12223))

(assert (=> start!40958 tp!38482))

(assert (=> start!40958 true))

(declare-fun e!266211 () Bool)

(declare-fun array_inv!9800 (array!28217) Bool)

(assert (=> start!40958 (and (array_inv!9800 _values!549) e!266211)))

(declare-fun array_inv!9801 (array!28215) Bool)

(assert (=> start!40958 (array_inv!9801 _keys!709)))

(declare-fun b!455350 () Bool)

(declare-fun res!271599 () Bool)

(assert (=> b!455350 (=> (not res!271599) (not e!266214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455350 (= res!271599 (validKeyInArray!0 k!794))))

(declare-fun b!455351 () Bool)

(declare-fun res!271604 () Bool)

(assert (=> b!455351 (=> (not res!271604) (not e!266214))))

(declare-datatypes ((List!8164 0))(
  ( (Nil!8161) (Cons!8160 (h!9016 (_ BitVec 64)) (t!14000 List!8164)) )
))
(declare-fun arrayNoDuplicates!0 (array!28215 (_ BitVec 32) List!8164) Bool)

(assert (=> b!455351 (= res!271604 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8161))))

(declare-fun b!455352 () Bool)

(declare-fun e!266212 () Bool)

(assert (=> b!455352 (= e!266212 tp_is_empty!12223)))

(declare-fun b!455353 () Bool)

(declare-fun res!271600 () Bool)

(assert (=> b!455353 (=> (not res!271600) (not e!266214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455353 (= res!271600 (validMask!0 mask!1025))))

(declare-fun b!455354 () Bool)

(declare-fun res!271609 () Bool)

(assert (=> b!455354 (=> (not res!271609) (not e!266214))))

(assert (=> b!455354 (= res!271609 (or (= (select (arr!13548 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13548 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19975 () Bool)

(declare-fun mapRes!19975 () Bool)

(assert (=> mapIsEmpty!19975 mapRes!19975))

(declare-fun b!455355 () Bool)

(declare-fun res!271607 () Bool)

(assert (=> b!455355 (=> (not res!271607) (not e!266213))))

(assert (=> b!455355 (= res!271607 (arrayNoDuplicates!0 lt!206318 #b00000000000000000000000000000000 Nil!8161))))

(declare-fun mapNonEmpty!19975 () Bool)

(declare-fun tp!38481 () Bool)

(assert (=> mapNonEmpty!19975 (= mapRes!19975 (and tp!38481 e!266212))))

(declare-fun mapKey!19975 () (_ BitVec 32))

(declare-fun mapValue!19975 () ValueCell!5768)

(declare-fun mapRest!19975 () (Array (_ BitVec 32) ValueCell!5768))

(assert (=> mapNonEmpty!19975 (= (arr!13549 _values!549) (store mapRest!19975 mapKey!19975 mapValue!19975))))

(declare-fun b!455356 () Bool)

(assert (=> b!455356 (= e!266211 (and e!266215 mapRes!19975))))

(declare-fun condMapEmpty!19975 () Bool)

(declare-fun mapDefault!19975 () ValueCell!5768)


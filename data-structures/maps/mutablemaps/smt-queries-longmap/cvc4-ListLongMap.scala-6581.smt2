; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83402 () Bool)

(assert start!83402)

(declare-fun b_free!19367 () Bool)

(declare-fun b_next!19367 () Bool)

(assert (=> start!83402 (= b_free!19367 (not b_next!19367))))

(declare-fun tp!67381 () Bool)

(declare-fun b_and!30973 () Bool)

(assert (=> start!83402 (= tp!67381 b_and!30973)))

(declare-fun res!651692 () Bool)

(declare-fun e!548717 () Bool)

(assert (=> start!83402 (=> (not res!651692) (not e!548717))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83402 (= res!651692 (validMask!0 mask!2147))))

(assert (=> start!83402 e!548717))

(assert (=> start!83402 true))

(declare-datatypes ((V!34669 0))(
  ( (V!34670 (val!11183 Int)) )
))
(declare-datatypes ((ValueCell!10651 0))(
  ( (ValueCellFull!10651 (v!13742 V!34669)) (EmptyCell!10651) )
))
(declare-datatypes ((array!60555 0))(
  ( (array!60556 (arr!29137 (Array (_ BitVec 32) ValueCell!10651)) (size!29617 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60555)

(declare-fun e!548713 () Bool)

(declare-fun array_inv!22435 (array!60555) Bool)

(assert (=> start!83402 (and (array_inv!22435 _values!1425) e!548713)))

(declare-fun tp_is_empty!22265 () Bool)

(assert (=> start!83402 tp_is_empty!22265))

(assert (=> start!83402 tp!67381))

(declare-datatypes ((array!60557 0))(
  ( (array!60558 (arr!29138 (Array (_ BitVec 32) (_ BitVec 64))) (size!29618 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60557)

(declare-fun array_inv!22436 (array!60557) Bool)

(assert (=> start!83402 (array_inv!22436 _keys!1717)))

(declare-fun b!973411 () Bool)

(declare-fun e!548718 () Bool)

(assert (=> b!973411 (= e!548717 e!548718)))

(declare-fun res!651694 () Bool)

(assert (=> b!973411 (=> (not res!651694) (not e!548718))))

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14458 0))(
  ( (tuple2!14459 (_1!7239 (_ BitVec 64)) (_2!7239 V!34669)) )
))
(declare-datatypes ((List!20338 0))(
  ( (Nil!20335) (Cons!20334 (h!21496 tuple2!14458) (t!28811 List!20338)) )
))
(declare-datatypes ((ListLongMap!13169 0))(
  ( (ListLongMap!13170 (toList!6600 List!20338)) )
))
(declare-fun lt!432518 () ListLongMap!13169)

(declare-fun contains!5644 (ListLongMap!13169 (_ BitVec 64)) Bool)

(assert (=> b!973411 (= res!651694 (contains!5644 lt!432518 (select (arr!29138 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34669)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34669)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3785 (array!60557 array!60555 (_ BitVec 32) (_ BitVec 32) V!34669 V!34669 (_ BitVec 32) Int) ListLongMap!13169)

(assert (=> b!973411 (= lt!432518 (getCurrentListMap!3785 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973412 () Bool)

(declare-fun e!548715 () Bool)

(declare-fun mapRes!35407 () Bool)

(assert (=> b!973412 (= e!548713 (and e!548715 mapRes!35407))))

(declare-fun condMapEmpty!35407 () Bool)

(declare-fun mapDefault!35407 () ValueCell!10651)


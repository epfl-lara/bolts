; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77642 () Bool)

(assert start!77642)

(declare-fun b_free!16199 () Bool)

(declare-fun b_next!16199 () Bool)

(assert (=> start!77642 (= b_free!16199 (not b_next!16199))))

(declare-fun tp!56860 () Bool)

(declare-fun b_and!26583 () Bool)

(assert (=> start!77642 (= tp!56860 b_and!26583)))

(declare-fun b!904473 () Bool)

(declare-fun e!506849 () Bool)

(assert (=> b!904473 (= e!506849 true)))

(declare-datatypes ((V!29787 0))(
  ( (V!29788 (val!9359 Int)) )
))
(declare-fun lt!408226 () V!29787)

(declare-datatypes ((tuple2!12182 0))(
  ( (tuple2!12183 (_1!6101 (_ BitVec 64)) (_2!6101 V!29787)) )
))
(declare-datatypes ((List!18055 0))(
  ( (Nil!18052) (Cons!18051 (h!19197 tuple2!12182) (t!25446 List!18055)) )
))
(declare-datatypes ((ListLongMap!10893 0))(
  ( (ListLongMap!10894 (toList!5462 List!18055)) )
))
(declare-fun lt!408227 () ListLongMap!10893)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!442 (ListLongMap!10893 (_ BitVec 64)) V!29787)

(assert (=> b!904473 (= lt!408226 (apply!442 lt!408227 k!1033))))

(declare-fun b!904474 () Bool)

(declare-fun e!506850 () Bool)

(assert (=> b!904474 (= e!506850 e!506849)))

(declare-fun res!610405 () Bool)

(assert (=> b!904474 (=> res!610405 e!506849)))

(declare-fun contains!4475 (ListLongMap!10893 (_ BitVec 64)) Bool)

(assert (=> b!904474 (= res!610405 (not (contains!4475 lt!408227 k!1033)))))

(declare-datatypes ((ValueCell!8827 0))(
  ( (ValueCellFull!8827 (v!11864 V!29787)) (EmptyCell!8827) )
))
(declare-datatypes ((array!53264 0))(
  ( (array!53265 (arr!25587 (Array (_ BitVec 32) ValueCell!8827)) (size!26047 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53264)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29787)

(declare-datatypes ((array!53266 0))(
  ( (array!53267 (arr!25588 (Array (_ BitVec 32) (_ BitVec 64))) (size!26048 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53266)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29787)

(declare-fun getCurrentListMap!2699 (array!53266 array!53264 (_ BitVec 32) (_ BitVec 32) V!29787 V!29787 (_ BitVec 32) Int) ListLongMap!10893)

(assert (=> b!904474 (= lt!408227 (getCurrentListMap!2699 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29638 () Bool)

(declare-fun mapRes!29638 () Bool)

(declare-fun tp!56859 () Bool)

(declare-fun e!506851 () Bool)

(assert (=> mapNonEmpty!29638 (= mapRes!29638 (and tp!56859 e!506851))))

(declare-fun mapKey!29638 () (_ BitVec 32))

(declare-fun mapValue!29638 () ValueCell!8827)

(declare-fun mapRest!29638 () (Array (_ BitVec 32) ValueCell!8827))

(assert (=> mapNonEmpty!29638 (= (arr!25587 _values!1152) (store mapRest!29638 mapKey!29638 mapValue!29638))))

(declare-fun b!904475 () Bool)

(declare-fun res!610408 () Bool)

(declare-fun e!506853 () Bool)

(assert (=> b!904475 (=> (not res!610408) (not e!506853))))

(assert (=> b!904475 (= res!610408 (contains!4475 (getCurrentListMap!2699 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!29638 () Bool)

(assert (=> mapIsEmpty!29638 mapRes!29638))

(declare-fun b!904476 () Bool)

(declare-fun e!506854 () Bool)

(declare-fun tp_is_empty!18617 () Bool)

(assert (=> b!904476 (= e!506854 tp_is_empty!18617)))

(declare-fun b!904477 () Bool)

(assert (=> b!904477 (= e!506851 tp_is_empty!18617)))

(declare-fun b!904479 () Bool)

(declare-fun e!506852 () Bool)

(assert (=> b!904479 (= e!506852 (and e!506854 mapRes!29638))))

(declare-fun condMapEmpty!29638 () Bool)

(declare-fun mapDefault!29638 () ValueCell!8827)


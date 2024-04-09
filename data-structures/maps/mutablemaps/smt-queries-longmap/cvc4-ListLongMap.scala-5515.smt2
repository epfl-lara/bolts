; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72906 () Bool)

(assert start!72906)

(declare-fun b_free!13793 () Bool)

(declare-fun b_next!13793 () Bool)

(assert (=> start!72906 (= b_free!13793 (not b_next!13793))))

(declare-fun tp!48884 () Bool)

(declare-fun b_and!22897 () Bool)

(assert (=> start!72906 (= tp!48884 b_and!22897)))

(declare-fun b!845818 () Bool)

(declare-fun res!574746 () Bool)

(declare-fun e!472153 () Bool)

(assert (=> b!845818 (=> (not res!574746) (not e!472153))))

(declare-datatypes ((array!48058 0))(
  ( (array!48059 (arr!23056 (Array (_ BitVec 32) (_ BitVec 64))) (size!23497 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48058)

(declare-datatypes ((List!16395 0))(
  ( (Nil!16392) (Cons!16391 (h!17522 (_ BitVec 64)) (t!22774 List!16395)) )
))
(declare-fun arrayNoDuplicates!0 (array!48058 (_ BitVec 32) List!16395) Bool)

(assert (=> b!845818 (= res!574746 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16392))))

(declare-fun res!574745 () Bool)

(assert (=> start!72906 (=> (not res!574745) (not e!472153))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72906 (= res!574745 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23497 _keys!868))))))

(assert (=> start!72906 e!472153))

(assert (=> start!72906 true))

(assert (=> start!72906 tp!48884))

(declare-fun array_inv!18302 (array!48058) Bool)

(assert (=> start!72906 (array_inv!18302 _keys!868)))

(declare-datatypes ((V!26285 0))(
  ( (V!26286 (val!8012 Int)) )
))
(declare-datatypes ((ValueCell!7525 0))(
  ( (ValueCellFull!7525 (v!10433 V!26285)) (EmptyCell!7525) )
))
(declare-datatypes ((array!48060 0))(
  ( (array!48061 (arr!23057 (Array (_ BitVec 32) ValueCell!7525)) (size!23498 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48060)

(declare-fun e!472154 () Bool)

(declare-fun array_inv!18303 (array!48060) Bool)

(assert (=> start!72906 (and (array_inv!18303 _values!688) e!472154)))

(declare-fun tp_is_empty!15929 () Bool)

(assert (=> start!72906 tp_is_empty!15929))

(declare-fun b!845819 () Bool)

(declare-fun res!574740 () Bool)

(assert (=> b!845819 (=> (not res!574740) (not e!472153))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!845819 (= res!574740 (and (= (size!23498 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23497 _keys!868) (size!23498 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845820 () Bool)

(declare-fun res!574742 () Bool)

(assert (=> b!845820 (=> (not res!574742) (not e!472153))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845820 (= res!574742 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23497 _keys!868))))))

(declare-fun b!845821 () Bool)

(assert (=> b!845821 (= e!472153 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10484 0))(
  ( (tuple2!10485 (_1!5252 (_ BitVec 64)) (_2!5252 V!26285)) )
))
(declare-datatypes ((List!16396 0))(
  ( (Nil!16393) (Cons!16392 (h!17523 tuple2!10484) (t!22775 List!16396)) )
))
(declare-datatypes ((ListLongMap!9267 0))(
  ( (ListLongMap!9268 (toList!4649 List!16396)) )
))
(declare-fun lt!381405 () ListLongMap!9267)

(declare-fun minValue!654 () V!26285)

(declare-fun zeroValue!654 () V!26285)

(declare-fun getCurrentListMapNoExtraKeys!2638 (array!48058 array!48060 (_ BitVec 32) (_ BitVec 32) V!26285 V!26285 (_ BitVec 32) Int) ListLongMap!9267)

(assert (=> b!845821 (= lt!381405 (getCurrentListMapNoExtraKeys!2638 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845822 () Bool)

(declare-fun e!472151 () Bool)

(assert (=> b!845822 (= e!472151 tp_is_empty!15929)))

(declare-fun b!845823 () Bool)

(declare-fun e!472152 () Bool)

(assert (=> b!845823 (= e!472152 tp_is_empty!15929)))

(declare-fun mapNonEmpty!25493 () Bool)

(declare-fun mapRes!25493 () Bool)

(declare-fun tp!48883 () Bool)

(assert (=> mapNonEmpty!25493 (= mapRes!25493 (and tp!48883 e!472151))))

(declare-fun mapValue!25493 () ValueCell!7525)

(declare-fun mapKey!25493 () (_ BitVec 32))

(declare-fun mapRest!25493 () (Array (_ BitVec 32) ValueCell!7525))

(assert (=> mapNonEmpty!25493 (= (arr!23057 _values!688) (store mapRest!25493 mapKey!25493 mapValue!25493))))

(declare-fun mapIsEmpty!25493 () Bool)

(assert (=> mapIsEmpty!25493 mapRes!25493))

(declare-fun b!845824 () Bool)

(declare-fun res!574744 () Bool)

(assert (=> b!845824 (=> (not res!574744) (not e!472153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48058 (_ BitVec 32)) Bool)

(assert (=> b!845824 (= res!574744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845825 () Bool)

(assert (=> b!845825 (= e!472154 (and e!472152 mapRes!25493))))

(declare-fun condMapEmpty!25493 () Bool)

(declare-fun mapDefault!25493 () ValueCell!7525)


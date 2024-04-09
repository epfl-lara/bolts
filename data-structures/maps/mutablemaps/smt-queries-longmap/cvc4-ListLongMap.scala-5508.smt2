; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72864 () Bool)

(assert start!72864)

(declare-fun b_free!13751 () Bool)

(declare-fun b_next!13751 () Bool)

(assert (=> start!72864 (= b_free!13751 (not b_next!13751))))

(declare-fun tp!48758 () Bool)

(declare-fun b_and!22855 () Bool)

(assert (=> start!72864 (= tp!48758 b_and!22855)))

(declare-fun b!845125 () Bool)

(declare-fun e!471840 () Bool)

(declare-fun tp_is_empty!15887 () Bool)

(assert (=> b!845125 (= e!471840 tp_is_empty!15887)))

(declare-fun b!845126 () Bool)

(declare-fun res!574237 () Bool)

(declare-fun e!471837 () Bool)

(assert (=> b!845126 (=> (not res!574237) (not e!471837))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47978 0))(
  ( (array!47979 (arr!23016 (Array (_ BitVec 32) (_ BitVec 64))) (size!23457 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47978)

(declare-datatypes ((V!26229 0))(
  ( (V!26230 (val!7991 Int)) )
))
(declare-datatypes ((ValueCell!7504 0))(
  ( (ValueCellFull!7504 (v!10412 V!26229)) (EmptyCell!7504) )
))
(declare-datatypes ((array!47980 0))(
  ( (array!47981 (arr!23017 (Array (_ BitVec 32) ValueCell!7504)) (size!23458 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47980)

(assert (=> b!845126 (= res!574237 (and (= (size!23458 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23457 _keys!868) (size!23458 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845127 () Bool)

(assert (=> b!845127 (= e!471837 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10452 0))(
  ( (tuple2!10453 (_1!5236 (_ BitVec 64)) (_2!5236 V!26229)) )
))
(declare-datatypes ((List!16364 0))(
  ( (Nil!16361) (Cons!16360 (h!17491 tuple2!10452) (t!22743 List!16364)) )
))
(declare-datatypes ((ListLongMap!9235 0))(
  ( (ListLongMap!9236 (toList!4633 List!16364)) )
))
(declare-fun lt!381342 () ListLongMap!9235)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26229)

(declare-fun zeroValue!654 () V!26229)

(declare-fun getCurrentListMapNoExtraKeys!2622 (array!47978 array!47980 (_ BitVec 32) (_ BitVec 32) V!26229 V!26229 (_ BitVec 32) Int) ListLongMap!9235)

(assert (=> b!845127 (= lt!381342 (getCurrentListMapNoExtraKeys!2622 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845128 () Bool)

(declare-fun e!471838 () Bool)

(assert (=> b!845128 (= e!471838 tp_is_empty!15887)))

(declare-fun b!845129 () Bool)

(declare-fun res!574235 () Bool)

(assert (=> b!845129 (=> (not res!574235) (not e!471837))))

(declare-datatypes ((List!16365 0))(
  ( (Nil!16362) (Cons!16361 (h!17492 (_ BitVec 64)) (t!22744 List!16365)) )
))
(declare-fun arrayNoDuplicates!0 (array!47978 (_ BitVec 32) List!16365) Bool)

(assert (=> b!845129 (= res!574235 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16362))))

(declare-fun mapNonEmpty!25430 () Bool)

(declare-fun mapRes!25430 () Bool)

(declare-fun tp!48757 () Bool)

(assert (=> mapNonEmpty!25430 (= mapRes!25430 (and tp!48757 e!471840))))

(declare-fun mapKey!25430 () (_ BitVec 32))

(declare-fun mapRest!25430 () (Array (_ BitVec 32) ValueCell!7504))

(declare-fun mapValue!25430 () ValueCell!7504)

(assert (=> mapNonEmpty!25430 (= (arr!23017 _values!688) (store mapRest!25430 mapKey!25430 mapValue!25430))))

(declare-fun b!845131 () Bool)

(declare-fun res!574238 () Bool)

(assert (=> b!845131 (=> (not res!574238) (not e!471837))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845131 (= res!574238 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23457 _keys!868))))))

(declare-fun b!845132 () Bool)

(declare-fun e!471839 () Bool)

(assert (=> b!845132 (= e!471839 (and e!471838 mapRes!25430))))

(declare-fun condMapEmpty!25430 () Bool)

(declare-fun mapDefault!25430 () ValueCell!7504)


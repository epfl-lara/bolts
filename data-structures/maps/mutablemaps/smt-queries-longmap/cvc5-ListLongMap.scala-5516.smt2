; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72908 () Bool)

(assert start!72908)

(declare-fun b_free!13795 () Bool)

(declare-fun b_next!13795 () Bool)

(assert (=> start!72908 (= b_free!13795 (not b_next!13795))))

(declare-fun tp!48890 () Bool)

(declare-fun b_and!22899 () Bool)

(assert (=> start!72908 (= tp!48890 b_and!22899)))

(declare-fun b!845851 () Bool)

(declare-fun res!574770 () Bool)

(declare-fun e!472168 () Bool)

(assert (=> b!845851 (=> (not res!574770) (not e!472168))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48062 0))(
  ( (array!48063 (arr!23058 (Array (_ BitVec 32) (_ BitVec 64))) (size!23499 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48062)

(declare-datatypes ((V!26289 0))(
  ( (V!26290 (val!8013 Int)) )
))
(declare-datatypes ((ValueCell!7526 0))(
  ( (ValueCellFull!7526 (v!10434 V!26289)) (EmptyCell!7526) )
))
(declare-datatypes ((array!48064 0))(
  ( (array!48065 (arr!23059 (Array (_ BitVec 32) ValueCell!7526)) (size!23500 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48064)

(assert (=> b!845851 (= res!574770 (and (= (size!23500 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23499 _keys!868) (size!23500 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25496 () Bool)

(declare-fun mapRes!25496 () Bool)

(declare-fun tp!48889 () Bool)

(declare-fun e!472170 () Bool)

(assert (=> mapNonEmpty!25496 (= mapRes!25496 (and tp!48889 e!472170))))

(declare-fun mapRest!25496 () (Array (_ BitVec 32) ValueCell!7526))

(declare-fun mapKey!25496 () (_ BitVec 32))

(declare-fun mapValue!25496 () ValueCell!7526)

(assert (=> mapNonEmpty!25496 (= (arr!23059 _values!688) (store mapRest!25496 mapKey!25496 mapValue!25496))))

(declare-fun b!845852 () Bool)

(declare-fun e!472169 () Bool)

(declare-fun tp_is_empty!15931 () Bool)

(assert (=> b!845852 (= e!472169 tp_is_empty!15931)))

(declare-fun b!845853 () Bool)

(declare-fun e!472167 () Bool)

(assert (=> b!845853 (= e!472167 (and e!472169 mapRes!25496))))

(declare-fun condMapEmpty!25496 () Bool)

(declare-fun mapDefault!25496 () ValueCell!7526)


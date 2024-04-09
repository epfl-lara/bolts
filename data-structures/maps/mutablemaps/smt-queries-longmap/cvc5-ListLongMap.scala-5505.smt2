; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72842 () Bool)

(assert start!72842)

(declare-fun mapNonEmpty!25397 () Bool)

(declare-fun mapRes!25397 () Bool)

(declare-fun tp!48716 () Bool)

(declare-fun e!471675 () Bool)

(assert (=> mapNonEmpty!25397 (= mapRes!25397 (and tp!48716 e!471675))))

(declare-datatypes ((V!26201 0))(
  ( (V!26202 (val!7980 Int)) )
))
(declare-datatypes ((ValueCell!7493 0))(
  ( (ValueCellFull!7493 (v!10401 V!26201)) (EmptyCell!7493) )
))
(declare-fun mapRest!25397 () (Array (_ BitVec 32) ValueCell!7493))

(declare-fun mapValue!25397 () ValueCell!7493)

(declare-fun mapKey!25397 () (_ BitVec 32))

(declare-datatypes ((array!47938 0))(
  ( (array!47939 (arr!22996 (Array (_ BitVec 32) ValueCell!7493)) (size!23437 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47938)

(assert (=> mapNonEmpty!25397 (= (arr!22996 _values!688) (store mapRest!25397 mapKey!25397 mapValue!25397))))

(declare-fun res!574074 () Bool)

(declare-fun e!471674 () Bool)

(assert (=> start!72842 (=> (not res!574074) (not e!471674))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47940 0))(
  ( (array!47941 (arr!22997 (Array (_ BitVec 32) (_ BitVec 64))) (size!23438 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47940)

(assert (=> start!72842 (= res!574074 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23438 _keys!868))))))

(assert (=> start!72842 e!471674))

(assert (=> start!72842 true))

(declare-fun array_inv!18262 (array!47940) Bool)

(assert (=> start!72842 (array_inv!18262 _keys!868)))

(declare-fun e!471671 () Bool)

(declare-fun array_inv!18263 (array!47938) Bool)

(assert (=> start!72842 (and (array_inv!18263 _values!688) e!471671)))

(declare-fun b!844862 () Bool)

(declare-fun tp_is_empty!15865 () Bool)

(assert (=> b!844862 (= e!471675 tp_is_empty!15865)))

(declare-fun b!844863 () Bool)

(declare-fun res!574072 () Bool)

(assert (=> b!844863 (=> (not res!574072) (not e!471674))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47940 (_ BitVec 32)) Bool)

(assert (=> b!844863 (= res!574072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844864 () Bool)

(declare-fun res!574071 () Bool)

(assert (=> b!844864 (=> (not res!574071) (not e!471674))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844864 (= res!574071 (and (= (size!23437 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23438 _keys!868) (size!23437 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25397 () Bool)

(assert (=> mapIsEmpty!25397 mapRes!25397))

(declare-fun b!844865 () Bool)

(declare-fun e!471672 () Bool)

(assert (=> b!844865 (= e!471672 tp_is_empty!15865)))

(declare-fun b!844866 () Bool)

(assert (=> b!844866 (= e!471671 (and e!471672 mapRes!25397))))

(declare-fun condMapEmpty!25397 () Bool)

(declare-fun mapDefault!25397 () ValueCell!7493)


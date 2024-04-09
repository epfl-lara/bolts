; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72326 () Bool)

(assert start!72326)

(declare-fun mapIsEmpty!24623 () Bool)

(declare-fun mapRes!24623 () Bool)

(assert (=> mapIsEmpty!24623 mapRes!24623))

(declare-fun b!837500 () Bool)

(declare-fun e!467478 () Bool)

(declare-fun tp_is_empty!15349 () Bool)

(assert (=> b!837500 (= e!467478 tp_is_empty!15349)))

(declare-fun mapNonEmpty!24623 () Bool)

(declare-fun tp!47618 () Bool)

(declare-fun e!467477 () Bool)

(assert (=> mapNonEmpty!24623 (= mapRes!24623 (and tp!47618 e!467477))))

(declare-datatypes ((V!25513 0))(
  ( (V!25514 (val!7722 Int)) )
))
(declare-datatypes ((ValueCell!7235 0))(
  ( (ValueCellFull!7235 (v!10143 V!25513)) (EmptyCell!7235) )
))
(declare-fun mapValue!24623 () ValueCell!7235)

(declare-fun mapRest!24623 () (Array (_ BitVec 32) ValueCell!7235))

(declare-datatypes ((array!46958 0))(
  ( (array!46959 (arr!22506 (Array (_ BitVec 32) ValueCell!7235)) (size!22947 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46958)

(declare-fun mapKey!24623 () (_ BitVec 32))

(assert (=> mapNonEmpty!24623 (= (arr!22506 _values!688) (store mapRest!24623 mapKey!24623 mapValue!24623))))

(declare-fun b!837502 () Bool)

(declare-fun res!569682 () Bool)

(declare-fun e!467481 () Bool)

(assert (=> b!837502 (=> (not res!569682) (not e!467481))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!46960 0))(
  ( (array!46961 (arr!22507 (Array (_ BitVec 32) (_ BitVec 64))) (size!22948 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46960)

(assert (=> b!837502 (= res!569682 (and (= (size!22947 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22948 _keys!868) (size!22947 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837501 () Bool)

(declare-fun res!569679 () Bool)

(assert (=> b!837501 (=> (not res!569679) (not e!467481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46960 (_ BitVec 32)) Bool)

(assert (=> b!837501 (= res!569679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569680 () Bool)

(assert (=> start!72326 (=> (not res!569680) (not e!467481))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72326 (= res!569680 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22948 _keys!868))))))

(assert (=> start!72326 e!467481))

(assert (=> start!72326 true))

(declare-fun array_inv!17910 (array!46960) Bool)

(assert (=> start!72326 (array_inv!17910 _keys!868)))

(declare-fun e!467479 () Bool)

(declare-fun array_inv!17911 (array!46958) Bool)

(assert (=> start!72326 (and (array_inv!17911 _values!688) e!467479)))

(declare-fun b!837503 () Bool)

(assert (=> b!837503 (= e!467477 tp_is_empty!15349)))

(declare-fun b!837504 () Bool)

(assert (=> b!837504 (= e!467479 (and e!467478 mapRes!24623))))

(declare-fun condMapEmpty!24623 () Bool)

(declare-fun mapDefault!24623 () ValueCell!7235)


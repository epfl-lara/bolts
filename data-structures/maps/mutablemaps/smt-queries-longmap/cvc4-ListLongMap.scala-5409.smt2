; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72240 () Bool)

(assert start!72240)

(declare-fun b!836816 () Bool)

(declare-fun e!466983 () Bool)

(declare-fun tp_is_empty!15293 () Bool)

(assert (=> b!836816 (= e!466983 tp_is_empty!15293)))

(declare-fun mapIsEmpty!24530 () Bool)

(declare-fun mapRes!24530 () Bool)

(assert (=> mapIsEmpty!24530 mapRes!24530))

(declare-fun mapNonEmpty!24530 () Bool)

(declare-fun tp!47525 () Bool)

(assert (=> mapNonEmpty!24530 (= mapRes!24530 (and tp!47525 e!466983))))

(declare-datatypes ((V!25437 0))(
  ( (V!25438 (val!7694 Int)) )
))
(declare-datatypes ((ValueCell!7207 0))(
  ( (ValueCellFull!7207 (v!10114 V!25437)) (EmptyCell!7207) )
))
(declare-fun mapValue!24530 () ValueCell!7207)

(declare-fun mapKey!24530 () (_ BitVec 32))

(declare-datatypes ((array!46854 0))(
  ( (array!46855 (arr!22457 (Array (_ BitVec 32) ValueCell!7207)) (size!22898 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46854)

(declare-fun mapRest!24530 () (Array (_ BitVec 32) ValueCell!7207))

(assert (=> mapNonEmpty!24530 (= (arr!22457 _values!688) (store mapRest!24530 mapKey!24530 mapValue!24530))))

(declare-fun b!836817 () Bool)

(declare-fun res!569290 () Bool)

(declare-fun e!466987 () Bool)

(assert (=> b!836817 (=> (not res!569290) (not e!466987))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836817 (= res!569290 (validMask!0 mask!1196))))

(declare-fun b!836818 () Bool)

(declare-fun e!466985 () Bool)

(assert (=> b!836818 (= e!466985 tp_is_empty!15293)))

(declare-fun b!836819 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!46856 0))(
  ( (array!46857 (arr!22458 (Array (_ BitVec 32) (_ BitVec 64))) (size!22899 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46856)

(assert (=> b!836819 (= e!466987 (and (= (size!22898 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22899 _keys!868) (size!22898 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011) (not (= (size!22899 _keys!868) (bvadd #b00000000000000000000000000000001 mask!1196)))))))

(declare-fun res!569289 () Bool)

(assert (=> start!72240 (=> (not res!569289) (not e!466987))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72240 (= res!569289 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22899 _keys!868))))))

(assert (=> start!72240 e!466987))

(assert (=> start!72240 true))

(declare-fun array_inv!17880 (array!46856) Bool)

(assert (=> start!72240 (array_inv!17880 _keys!868)))

(declare-fun e!466984 () Bool)

(declare-fun array_inv!17881 (array!46854) Bool)

(assert (=> start!72240 (and (array_inv!17881 _values!688) e!466984)))

(declare-fun b!836820 () Bool)

(assert (=> b!836820 (= e!466984 (and e!466985 mapRes!24530))))

(declare-fun condMapEmpty!24530 () Bool)

(declare-fun mapDefault!24530 () ValueCell!7207)


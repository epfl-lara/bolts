; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72668 () Bool)

(assert start!72668)

(declare-fun res!573030 () Bool)

(declare-fun e!470369 () Bool)

(assert (=> start!72668 (=> (not res!573030) (not e!470369))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47620 0))(
  ( (array!47621 (arr!22837 (Array (_ BitVec 32) (_ BitVec 64))) (size!23278 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47620)

(assert (=> start!72668 (= res!573030 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23278 _keys!868))))))

(assert (=> start!72668 e!470369))

(assert (=> start!72668 true))

(declare-fun array_inv!18156 (array!47620) Bool)

(assert (=> start!72668 (array_inv!18156 _keys!868)))

(declare-datatypes ((V!25969 0))(
  ( (V!25970 (val!7893 Int)) )
))
(declare-datatypes ((ValueCell!7406 0))(
  ( (ValueCellFull!7406 (v!10314 V!25969)) (EmptyCell!7406) )
))
(declare-datatypes ((array!47622 0))(
  ( (array!47623 (arr!22838 (Array (_ BitVec 32) ValueCell!7406)) (size!23279 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47622)

(declare-fun e!470367 () Bool)

(declare-fun array_inv!18157 (array!47622) Bool)

(assert (=> start!72668 (and (array_inv!18157 _values!688) e!470367)))

(declare-fun mapNonEmpty!25136 () Bool)

(declare-fun mapRes!25136 () Bool)

(declare-fun tp!48455 () Bool)

(declare-fun e!470366 () Bool)

(assert (=> mapNonEmpty!25136 (= mapRes!25136 (and tp!48455 e!470366))))

(declare-fun mapValue!25136 () ValueCell!7406)

(declare-fun mapRest!25136 () (Array (_ BitVec 32) ValueCell!7406))

(declare-fun mapKey!25136 () (_ BitVec 32))

(assert (=> mapNonEmpty!25136 (= (arr!22838 _values!688) (store mapRest!25136 mapKey!25136 mapValue!25136))))

(declare-fun b!843035 () Bool)

(declare-fun res!573027 () Bool)

(assert (=> b!843035 (=> (not res!573027) (not e!470369))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843035 (= res!573027 (and (= (size!23279 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23278 _keys!868) (size!23279 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843036 () Bool)

(declare-fun e!470368 () Bool)

(declare-fun tp_is_empty!15691 () Bool)

(assert (=> b!843036 (= e!470368 tp_is_empty!15691)))

(declare-fun b!843037 () Bool)

(assert (=> b!843037 (= e!470367 (and e!470368 mapRes!25136))))

(declare-fun condMapEmpty!25136 () Bool)

(declare-fun mapDefault!25136 () ValueCell!7406)


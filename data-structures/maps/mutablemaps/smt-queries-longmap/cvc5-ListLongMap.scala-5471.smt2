; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72638 () Bool)

(assert start!72638)

(declare-fun b!842720 () Bool)

(declare-fun e!470142 () Bool)

(declare-fun tp_is_empty!15661 () Bool)

(assert (=> b!842720 (= e!470142 tp_is_empty!15661)))

(declare-fun b!842721 () Bool)

(declare-fun e!470143 () Bool)

(assert (=> b!842721 (= e!470143 tp_is_empty!15661)))

(declare-fun mapIsEmpty!25091 () Bool)

(declare-fun mapRes!25091 () Bool)

(assert (=> mapIsEmpty!25091 mapRes!25091))

(declare-fun res!572847 () Bool)

(declare-fun e!470145 () Bool)

(assert (=> start!72638 (=> (not res!572847) (not e!470145))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47564 0))(
  ( (array!47565 (arr!22809 (Array (_ BitVec 32) (_ BitVec 64))) (size!23250 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47564)

(assert (=> start!72638 (= res!572847 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23250 _keys!868))))))

(assert (=> start!72638 e!470145))

(assert (=> start!72638 true))

(declare-fun array_inv!18132 (array!47564) Bool)

(assert (=> start!72638 (array_inv!18132 _keys!868)))

(declare-datatypes ((V!25929 0))(
  ( (V!25930 (val!7878 Int)) )
))
(declare-datatypes ((ValueCell!7391 0))(
  ( (ValueCellFull!7391 (v!10299 V!25929)) (EmptyCell!7391) )
))
(declare-datatypes ((array!47566 0))(
  ( (array!47567 (arr!22810 (Array (_ BitVec 32) ValueCell!7391)) (size!23251 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47566)

(declare-fun e!470141 () Bool)

(declare-fun array_inv!18133 (array!47566) Bool)

(assert (=> start!72638 (and (array_inv!18133 _values!688) e!470141)))

(declare-fun b!842722 () Bool)

(assert (=> b!842722 (= e!470141 (and e!470142 mapRes!25091))))

(declare-fun condMapEmpty!25091 () Bool)

(declare-fun mapDefault!25091 () ValueCell!7391)


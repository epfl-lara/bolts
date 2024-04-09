; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72680 () Bool)

(assert start!72680)

(declare-fun b!843161 () Bool)

(declare-fun res!573100 () Bool)

(declare-fun e!470456 () Bool)

(assert (=> b!843161 (=> (not res!573100) (not e!470456))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47640 0))(
  ( (array!47641 (arr!22847 (Array (_ BitVec 32) (_ BitVec 64))) (size!23288 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47640)

(declare-datatypes ((V!25985 0))(
  ( (V!25986 (val!7899 Int)) )
))
(declare-datatypes ((ValueCell!7412 0))(
  ( (ValueCellFull!7412 (v!10320 V!25985)) (EmptyCell!7412) )
))
(declare-datatypes ((array!47642 0))(
  ( (array!47643 (arr!22848 (Array (_ BitVec 32) ValueCell!7412)) (size!23289 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47642)

(assert (=> b!843161 (= res!573100 (and (= (size!23289 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23288 _keys!868) (size!23289 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843162 () Bool)

(declare-fun e!470458 () Bool)

(declare-fun tp_is_empty!15703 () Bool)

(assert (=> b!843162 (= e!470458 tp_is_empty!15703)))

(declare-fun b!843163 () Bool)

(declare-fun e!470459 () Bool)

(declare-fun e!470457 () Bool)

(declare-fun mapRes!25154 () Bool)

(assert (=> b!843163 (= e!470459 (and e!470457 mapRes!25154))))

(declare-fun condMapEmpty!25154 () Bool)

(declare-fun mapDefault!25154 () ValueCell!7412)


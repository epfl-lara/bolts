; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72752 () Bool)

(assert start!72752)

(declare-fun b!843917 () Bool)

(declare-fun e!470997 () Bool)

(declare-fun tp_is_empty!15775 () Bool)

(assert (=> b!843917 (= e!470997 tp_is_empty!15775)))

(declare-fun b!843918 () Bool)

(declare-fun e!471000 () Bool)

(declare-fun mapRes!25262 () Bool)

(assert (=> b!843918 (= e!471000 (and e!470997 mapRes!25262))))

(declare-fun condMapEmpty!25262 () Bool)

(declare-datatypes ((V!26081 0))(
  ( (V!26082 (val!7935 Int)) )
))
(declare-datatypes ((ValueCell!7448 0))(
  ( (ValueCellFull!7448 (v!10356 V!26081)) (EmptyCell!7448) )
))
(declare-datatypes ((array!47772 0))(
  ( (array!47773 (arr!22913 (Array (_ BitVec 32) ValueCell!7448)) (size!23354 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47772)

(declare-fun mapDefault!25262 () ValueCell!7448)


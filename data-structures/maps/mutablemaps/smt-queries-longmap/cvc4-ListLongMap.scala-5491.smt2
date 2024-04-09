; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72762 () Bool)

(assert start!72762)

(declare-fun res!573592 () Bool)

(declare-fun e!471075 () Bool)

(assert (=> start!72762 (=> (not res!573592) (not e!471075))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47790 0))(
  ( (array!47791 (arr!22922 (Array (_ BitVec 32) (_ BitVec 64))) (size!23363 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47790)

(assert (=> start!72762 (= res!573592 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23363 _keys!868))))))

(assert (=> start!72762 e!471075))

(assert (=> start!72762 true))

(declare-fun array_inv!18210 (array!47790) Bool)

(assert (=> start!72762 (array_inv!18210 _keys!868)))

(declare-datatypes ((V!26093 0))(
  ( (V!26094 (val!7940 Int)) )
))
(declare-datatypes ((ValueCell!7453 0))(
  ( (ValueCellFull!7453 (v!10361 V!26093)) (EmptyCell!7453) )
))
(declare-datatypes ((array!47792 0))(
  ( (array!47793 (arr!22923 (Array (_ BitVec 32) ValueCell!7453)) (size!23364 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47792)

(declare-fun e!471074 () Bool)

(declare-fun array_inv!18211 (array!47792) Bool)

(assert (=> start!72762 (and (array_inv!18211 _values!688) e!471074)))

(declare-fun b!844022 () Bool)

(declare-fun e!471071 () Bool)

(declare-fun mapRes!25277 () Bool)

(assert (=> b!844022 (= e!471074 (and e!471071 mapRes!25277))))

(declare-fun condMapEmpty!25277 () Bool)

(declare-fun mapDefault!25277 () ValueCell!7453)


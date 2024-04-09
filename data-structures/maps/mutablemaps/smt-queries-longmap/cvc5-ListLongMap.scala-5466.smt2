; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72608 () Bool)

(assert start!72608)

(declare-fun mapIsEmpty!25046 () Bool)

(declare-fun mapRes!25046 () Bool)

(assert (=> mapIsEmpty!25046 mapRes!25046))

(declare-fun b!842405 () Bool)

(declare-fun e!469920 () Bool)

(declare-fun tp_is_empty!15631 () Bool)

(assert (=> b!842405 (= e!469920 tp_is_empty!15631)))

(declare-fun mapNonEmpty!25046 () Bool)

(declare-fun tp!48365 () Bool)

(assert (=> mapNonEmpty!25046 (= mapRes!25046 (and tp!48365 e!469920))))

(declare-datatypes ((V!25889 0))(
  ( (V!25890 (val!7863 Int)) )
))
(declare-datatypes ((ValueCell!7376 0))(
  ( (ValueCellFull!7376 (v!10284 V!25889)) (EmptyCell!7376) )
))
(declare-fun mapValue!25046 () ValueCell!7376)

(declare-fun mapKey!25046 () (_ BitVec 32))

(declare-datatypes ((array!47504 0))(
  ( (array!47505 (arr!22779 (Array (_ BitVec 32) ValueCell!7376)) (size!23220 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47504)

(declare-fun mapRest!25046 () (Array (_ BitVec 32) ValueCell!7376))

(assert (=> mapNonEmpty!25046 (= (arr!22779 _values!688) (store mapRest!25046 mapKey!25046 mapValue!25046))))

(declare-fun b!842406 () Bool)

(declare-fun e!469917 () Bool)

(assert (=> b!842406 (= e!469917 false)))

(declare-fun lt!380958 () Bool)

(declare-datatypes ((array!47506 0))(
  ( (array!47507 (arr!22780 (Array (_ BitVec 32) (_ BitVec 64))) (size!23221 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47506)

(declare-datatypes ((List!16276 0))(
  ( (Nil!16273) (Cons!16272 (h!17403 (_ BitVec 64)) (t!22655 List!16276)) )
))
(declare-fun arrayNoDuplicates!0 (array!47506 (_ BitVec 32) List!16276) Bool)

(assert (=> b!842406 (= lt!380958 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16273))))

(declare-fun res!572669 () Bool)

(assert (=> start!72608 (=> (not res!572669) (not e!469917))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72608 (= res!572669 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23221 _keys!868))))))

(assert (=> start!72608 e!469917))

(assert (=> start!72608 true))

(declare-fun array_inv!18108 (array!47506) Bool)

(assert (=> start!72608 (array_inv!18108 _keys!868)))

(declare-fun e!469919 () Bool)

(declare-fun array_inv!18109 (array!47504) Bool)

(assert (=> start!72608 (and (array_inv!18109 _values!688) e!469919)))

(declare-fun b!842407 () Bool)

(declare-fun res!572668 () Bool)

(assert (=> b!842407 (=> (not res!572668) (not e!469917))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842407 (= res!572668 (and (= (size!23220 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23221 _keys!868) (size!23220 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842408 () Bool)

(declare-fun e!469918 () Bool)

(assert (=> b!842408 (= e!469918 tp_is_empty!15631)))

(declare-fun b!842409 () Bool)

(declare-fun res!572670 () Bool)

(assert (=> b!842409 (=> (not res!572670) (not e!469917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47506 (_ BitVec 32)) Bool)

(assert (=> b!842409 (= res!572670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842410 () Bool)

(assert (=> b!842410 (= e!469919 (and e!469918 mapRes!25046))))

(declare-fun condMapEmpty!25046 () Bool)

(declare-fun mapDefault!25046 () ValueCell!7376)


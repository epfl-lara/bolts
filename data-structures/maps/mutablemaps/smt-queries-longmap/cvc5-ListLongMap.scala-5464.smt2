; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72596 () Bool)

(assert start!72596)

(declare-fun mapNonEmpty!25028 () Bool)

(declare-fun mapRes!25028 () Bool)

(declare-fun tp!48347 () Bool)

(declare-fun e!469830 () Bool)

(assert (=> mapNonEmpty!25028 (= mapRes!25028 (and tp!48347 e!469830))))

(declare-datatypes ((V!25873 0))(
  ( (V!25874 (val!7857 Int)) )
))
(declare-datatypes ((ValueCell!7370 0))(
  ( (ValueCellFull!7370 (v!10278 V!25873)) (EmptyCell!7370) )
))
(declare-fun mapRest!25028 () (Array (_ BitVec 32) ValueCell!7370))

(declare-fun mapValue!25028 () ValueCell!7370)

(declare-fun mapKey!25028 () (_ BitVec 32))

(declare-datatypes ((array!47480 0))(
  ( (array!47481 (arr!22767 (Array (_ BitVec 32) ValueCell!7370)) (size!23208 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47480)

(assert (=> mapNonEmpty!25028 (= (arr!22767 _values!688) (store mapRest!25028 mapKey!25028 mapValue!25028))))

(declare-fun b!842279 () Bool)

(declare-fun e!469829 () Bool)

(declare-fun tp_is_empty!15619 () Bool)

(assert (=> b!842279 (= e!469829 tp_is_empty!15619)))

(declare-fun mapIsEmpty!25028 () Bool)

(assert (=> mapIsEmpty!25028 mapRes!25028))

(declare-fun b!842280 () Bool)

(declare-fun res!572595 () Bool)

(declare-fun e!469827 () Bool)

(assert (=> b!842280 (=> (not res!572595) (not e!469827))))

(declare-datatypes ((array!47482 0))(
  ( (array!47483 (arr!22768 (Array (_ BitVec 32) (_ BitVec 64))) (size!23209 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47482)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47482 (_ BitVec 32)) Bool)

(assert (=> b!842280 (= res!572595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572598 () Bool)

(assert (=> start!72596 (=> (not res!572598) (not e!469827))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72596 (= res!572598 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23209 _keys!868))))))

(assert (=> start!72596 e!469827))

(assert (=> start!72596 true))

(declare-fun array_inv!18098 (array!47482) Bool)

(assert (=> start!72596 (array_inv!18098 _keys!868)))

(declare-fun e!469828 () Bool)

(declare-fun array_inv!18099 (array!47480) Bool)

(assert (=> start!72596 (and (array_inv!18099 _values!688) e!469828)))

(declare-fun b!842281 () Bool)

(assert (=> b!842281 (= e!469830 tp_is_empty!15619)))

(declare-fun b!842282 () Bool)

(assert (=> b!842282 (= e!469828 (and e!469829 mapRes!25028))))

(declare-fun condMapEmpty!25028 () Bool)

(declare-fun mapDefault!25028 () ValueCell!7370)


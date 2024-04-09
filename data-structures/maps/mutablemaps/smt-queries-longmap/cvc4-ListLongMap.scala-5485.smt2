; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72726 () Bool)

(assert start!72726)

(declare-fun mapNonEmpty!25223 () Bool)

(declare-fun mapRes!25223 () Bool)

(declare-fun tp!48542 () Bool)

(declare-fun e!470802 () Bool)

(assert (=> mapNonEmpty!25223 (= mapRes!25223 (and tp!48542 e!470802))))

(declare-fun mapKey!25223 () (_ BitVec 32))

(declare-datatypes ((V!26045 0))(
  ( (V!26046 (val!7922 Int)) )
))
(declare-datatypes ((ValueCell!7435 0))(
  ( (ValueCellFull!7435 (v!10343 V!26045)) (EmptyCell!7435) )
))
(declare-fun mapValue!25223 () ValueCell!7435)

(declare-datatypes ((array!47724 0))(
  ( (array!47725 (arr!22889 (Array (_ BitVec 32) ValueCell!7435)) (size!23330 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47724)

(declare-fun mapRest!25223 () (Array (_ BitVec 32) ValueCell!7435))

(assert (=> mapNonEmpty!25223 (= (arr!22889 _values!688) (store mapRest!25223 mapKey!25223 mapValue!25223))))

(declare-fun b!843644 () Bool)

(declare-fun e!470805 () Bool)

(assert (=> b!843644 (= e!470805 false)))

(declare-fun lt!381135 () Bool)

(declare-datatypes ((array!47726 0))(
  ( (array!47727 (arr!22890 (Array (_ BitVec 32) (_ BitVec 64))) (size!23331 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47726)

(declare-datatypes ((List!16317 0))(
  ( (Nil!16314) (Cons!16313 (h!17444 (_ BitVec 64)) (t!22696 List!16317)) )
))
(declare-fun arrayNoDuplicates!0 (array!47726 (_ BitVec 32) List!16317) Bool)

(assert (=> b!843644 (= lt!381135 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16314))))

(declare-fun b!843645 () Bool)

(declare-fun e!470804 () Bool)

(declare-fun e!470801 () Bool)

(assert (=> b!843645 (= e!470804 (and e!470801 mapRes!25223))))

(declare-fun condMapEmpty!25223 () Bool)

(declare-fun mapDefault!25223 () ValueCell!7435)


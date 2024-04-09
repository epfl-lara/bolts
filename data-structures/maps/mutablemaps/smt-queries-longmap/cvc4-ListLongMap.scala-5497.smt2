; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72798 () Bool)

(assert start!72798)

(declare-fun mapNonEmpty!25331 () Bool)

(declare-fun mapRes!25331 () Bool)

(declare-fun tp!48650 () Bool)

(declare-fun e!471343 () Bool)

(assert (=> mapNonEmpty!25331 (= mapRes!25331 (and tp!48650 e!471343))))

(declare-datatypes ((V!26141 0))(
  ( (V!26142 (val!7958 Int)) )
))
(declare-datatypes ((ValueCell!7471 0))(
  ( (ValueCellFull!7471 (v!10379 V!26141)) (EmptyCell!7471) )
))
(declare-fun mapValue!25331 () ValueCell!7471)

(declare-fun mapRest!25331 () (Array (_ BitVec 32) ValueCell!7471))

(declare-fun mapKey!25331 () (_ BitVec 32))

(declare-datatypes ((array!47858 0))(
  ( (array!47859 (arr!22956 (Array (_ BitVec 32) ValueCell!7471)) (size!23397 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47858)

(assert (=> mapNonEmpty!25331 (= (arr!22956 _values!688) (store mapRest!25331 mapKey!25331 mapValue!25331))))

(declare-fun b!844400 () Bool)

(declare-fun res!573809 () Bool)

(declare-fun e!471341 () Bool)

(assert (=> b!844400 (=> (not res!573809) (not e!471341))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47860 0))(
  ( (array!47861 (arr!22957 (Array (_ BitVec 32) (_ BitVec 64))) (size!23398 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47860)

(assert (=> b!844400 (= res!573809 (and (= (size!23397 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23398 _keys!868) (size!23397 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844401 () Bool)

(declare-fun tp_is_empty!15821 () Bool)

(assert (=> b!844401 (= e!471343 tp_is_empty!15821)))

(declare-fun b!844402 () Bool)

(assert (=> b!844402 (= e!471341 false)))

(declare-fun lt!381243 () Bool)

(declare-datatypes ((List!16342 0))(
  ( (Nil!16339) (Cons!16338 (h!17469 (_ BitVec 64)) (t!22721 List!16342)) )
))
(declare-fun arrayNoDuplicates!0 (array!47860 (_ BitVec 32) List!16342) Bool)

(assert (=> b!844402 (= lt!381243 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16339))))

(declare-fun res!573808 () Bool)

(assert (=> start!72798 (=> (not res!573808) (not e!471341))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72798 (= res!573808 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23398 _keys!868))))))

(assert (=> start!72798 e!471341))

(assert (=> start!72798 true))

(declare-fun array_inv!18236 (array!47860) Bool)

(assert (=> start!72798 (array_inv!18236 _keys!868)))

(declare-fun e!471344 () Bool)

(declare-fun array_inv!18237 (array!47858) Bool)

(assert (=> start!72798 (and (array_inv!18237 _values!688) e!471344)))

(declare-fun b!844403 () Bool)

(declare-fun res!573807 () Bool)

(assert (=> b!844403 (=> (not res!573807) (not e!471341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47860 (_ BitVec 32)) Bool)

(assert (=> b!844403 (= res!573807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844404 () Bool)

(declare-fun e!471342 () Bool)

(assert (=> b!844404 (= e!471344 (and e!471342 mapRes!25331))))

(declare-fun condMapEmpty!25331 () Bool)

(declare-fun mapDefault!25331 () ValueCell!7471)


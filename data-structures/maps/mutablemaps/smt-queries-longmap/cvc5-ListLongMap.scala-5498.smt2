; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72800 () Bool)

(assert start!72800)

(declare-fun res!573822 () Bool)

(declare-fun e!471359 () Bool)

(assert (=> start!72800 (=> (not res!573822) (not e!471359))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47862 0))(
  ( (array!47863 (arr!22958 (Array (_ BitVec 32) (_ BitVec 64))) (size!23399 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47862)

(assert (=> start!72800 (= res!573822 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23399 _keys!868))))))

(assert (=> start!72800 e!471359))

(assert (=> start!72800 true))

(declare-fun array_inv!18238 (array!47862) Bool)

(assert (=> start!72800 (array_inv!18238 _keys!868)))

(declare-datatypes ((V!26145 0))(
  ( (V!26146 (val!7959 Int)) )
))
(declare-datatypes ((ValueCell!7472 0))(
  ( (ValueCellFull!7472 (v!10380 V!26145)) (EmptyCell!7472) )
))
(declare-datatypes ((array!47864 0))(
  ( (array!47865 (arr!22959 (Array (_ BitVec 32) ValueCell!7472)) (size!23400 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47864)

(declare-fun e!471358 () Bool)

(declare-fun array_inv!18239 (array!47864) Bool)

(assert (=> start!72800 (and (array_inv!18239 _values!688) e!471358)))

(declare-fun mapIsEmpty!25334 () Bool)

(declare-fun mapRes!25334 () Bool)

(assert (=> mapIsEmpty!25334 mapRes!25334))

(declare-fun b!844421 () Bool)

(declare-fun res!573819 () Bool)

(assert (=> b!844421 (=> (not res!573819) (not e!471359))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!844421 (= res!573819 (and (= (size!23400 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23399 _keys!868) (size!23400 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844422 () Bool)

(declare-fun res!573820 () Bool)

(assert (=> b!844422 (=> (not res!573820) (not e!471359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844422 (= res!573820 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25334 () Bool)

(declare-fun tp!48653 () Bool)

(declare-fun e!471356 () Bool)

(assert (=> mapNonEmpty!25334 (= mapRes!25334 (and tp!48653 e!471356))))

(declare-fun mapRest!25334 () (Array (_ BitVec 32) ValueCell!7472))

(declare-fun mapKey!25334 () (_ BitVec 32))

(declare-fun mapValue!25334 () ValueCell!7472)

(assert (=> mapNonEmpty!25334 (= (arr!22959 _values!688) (store mapRest!25334 mapKey!25334 mapValue!25334))))

(declare-fun b!844423 () Bool)

(declare-fun tp_is_empty!15823 () Bool)

(assert (=> b!844423 (= e!471356 tp_is_empty!15823)))

(declare-fun b!844424 () Bool)

(declare-fun e!471360 () Bool)

(assert (=> b!844424 (= e!471360 tp_is_empty!15823)))

(declare-fun b!844425 () Bool)

(assert (=> b!844425 (= e!471359 false)))

(declare-fun lt!381246 () Bool)

(declare-datatypes ((List!16343 0))(
  ( (Nil!16340) (Cons!16339 (h!17470 (_ BitVec 64)) (t!22722 List!16343)) )
))
(declare-fun arrayNoDuplicates!0 (array!47862 (_ BitVec 32) List!16343) Bool)

(assert (=> b!844425 (= lt!381246 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16340))))

(declare-fun b!844426 () Bool)

(assert (=> b!844426 (= e!471358 (and e!471360 mapRes!25334))))

(declare-fun condMapEmpty!25334 () Bool)

(declare-fun mapDefault!25334 () ValueCell!7472)


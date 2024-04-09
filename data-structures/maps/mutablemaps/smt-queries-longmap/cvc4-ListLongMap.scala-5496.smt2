; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72792 () Bool)

(assert start!72792)

(declare-fun b!844337 () Bool)

(declare-fun e!471299 () Bool)

(declare-fun tp_is_empty!15815 () Bool)

(assert (=> b!844337 (= e!471299 tp_is_empty!15815)))

(declare-fun b!844338 () Bool)

(declare-fun res!573771 () Bool)

(declare-fun e!471297 () Bool)

(assert (=> b!844338 (=> (not res!573771) (not e!471297))))

(declare-datatypes ((array!47846 0))(
  ( (array!47847 (arr!22950 (Array (_ BitVec 32) (_ BitVec 64))) (size!23391 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47846)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47846 (_ BitVec 32)) Bool)

(assert (=> b!844338 (= res!573771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844339 () Bool)

(assert (=> b!844339 (= e!471297 false)))

(declare-fun lt!381234 () Bool)

(declare-datatypes ((List!16340 0))(
  ( (Nil!16337) (Cons!16336 (h!17467 (_ BitVec 64)) (t!22719 List!16340)) )
))
(declare-fun arrayNoDuplicates!0 (array!47846 (_ BitVec 32) List!16340) Bool)

(assert (=> b!844339 (= lt!381234 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16337))))

(declare-fun res!573773 () Bool)

(assert (=> start!72792 (=> (not res!573773) (not e!471297))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72792 (= res!573773 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23391 _keys!868))))))

(assert (=> start!72792 e!471297))

(assert (=> start!72792 true))

(declare-fun array_inv!18232 (array!47846) Bool)

(assert (=> start!72792 (array_inv!18232 _keys!868)))

(declare-datatypes ((V!26133 0))(
  ( (V!26134 (val!7955 Int)) )
))
(declare-datatypes ((ValueCell!7468 0))(
  ( (ValueCellFull!7468 (v!10376 V!26133)) (EmptyCell!7468) )
))
(declare-datatypes ((array!47848 0))(
  ( (array!47849 (arr!22951 (Array (_ BitVec 32) ValueCell!7468)) (size!23392 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47848)

(declare-fun e!471298 () Bool)

(declare-fun array_inv!18233 (array!47848) Bool)

(assert (=> start!72792 (and (array_inv!18233 _values!688) e!471298)))

(declare-fun mapNonEmpty!25322 () Bool)

(declare-fun mapRes!25322 () Bool)

(declare-fun tp!48641 () Bool)

(assert (=> mapNonEmpty!25322 (= mapRes!25322 (and tp!48641 e!471299))))

(declare-fun mapValue!25322 () ValueCell!7468)

(declare-fun mapRest!25322 () (Array (_ BitVec 32) ValueCell!7468))

(declare-fun mapKey!25322 () (_ BitVec 32))

(assert (=> mapNonEmpty!25322 (= (arr!22951 _values!688) (store mapRest!25322 mapKey!25322 mapValue!25322))))

(declare-fun b!844340 () Bool)

(declare-fun res!573772 () Bool)

(assert (=> b!844340 (=> (not res!573772) (not e!471297))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844340 (= res!573772 (and (= (size!23392 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23391 _keys!868) (size!23392 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844341 () Bool)

(declare-fun e!471296 () Bool)

(assert (=> b!844341 (= e!471296 tp_is_empty!15815)))

(declare-fun b!844342 () Bool)

(declare-fun res!573774 () Bool)

(assert (=> b!844342 (=> (not res!573774) (not e!471297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844342 (= res!573774 (validMask!0 mask!1196))))

(declare-fun b!844343 () Bool)

(assert (=> b!844343 (= e!471298 (and e!471296 mapRes!25322))))

(declare-fun condMapEmpty!25322 () Bool)

(declare-fun mapDefault!25322 () ValueCell!7468)


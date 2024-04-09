; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72776 () Bool)

(assert start!72776)

(declare-fun b!844169 () Bool)

(declare-fun e!471178 () Bool)

(assert (=> b!844169 (= e!471178 false)))

(declare-fun lt!381210 () Bool)

(declare-datatypes ((array!47814 0))(
  ( (array!47815 (arr!22934 (Array (_ BitVec 32) (_ BitVec 64))) (size!23375 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47814)

(declare-datatypes ((List!16335 0))(
  ( (Nil!16332) (Cons!16331 (h!17462 (_ BitVec 64)) (t!22714 List!16335)) )
))
(declare-fun arrayNoDuplicates!0 (array!47814 (_ BitVec 32) List!16335) Bool)

(assert (=> b!844169 (= lt!381210 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16332))))

(declare-fun b!844170 () Bool)

(declare-fun res!573677 () Bool)

(assert (=> b!844170 (=> (not res!573677) (not e!471178))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844170 (= res!573677 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25298 () Bool)

(declare-fun mapRes!25298 () Bool)

(declare-fun tp!48617 () Bool)

(declare-fun e!471180 () Bool)

(assert (=> mapNonEmpty!25298 (= mapRes!25298 (and tp!48617 e!471180))))

(declare-fun mapKey!25298 () (_ BitVec 32))

(declare-datatypes ((V!26113 0))(
  ( (V!26114 (val!7947 Int)) )
))
(declare-datatypes ((ValueCell!7460 0))(
  ( (ValueCellFull!7460 (v!10368 V!26113)) (EmptyCell!7460) )
))
(declare-fun mapRest!25298 () (Array (_ BitVec 32) ValueCell!7460))

(declare-fun mapValue!25298 () ValueCell!7460)

(declare-datatypes ((array!47816 0))(
  ( (array!47817 (arr!22935 (Array (_ BitVec 32) ValueCell!7460)) (size!23376 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47816)

(assert (=> mapNonEmpty!25298 (= (arr!22935 _values!688) (store mapRest!25298 mapKey!25298 mapValue!25298))))

(declare-fun b!844171 () Bool)

(declare-fun tp_is_empty!15799 () Bool)

(assert (=> b!844171 (= e!471180 tp_is_empty!15799)))

(declare-fun b!844172 () Bool)

(declare-fun res!573676 () Bool)

(assert (=> b!844172 (=> (not res!573676) (not e!471178))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844172 (= res!573676 (and (= (size!23376 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23375 _keys!868) (size!23376 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25298 () Bool)

(assert (=> mapIsEmpty!25298 mapRes!25298))

(declare-fun b!844173 () Bool)

(declare-fun e!471177 () Bool)

(assert (=> b!844173 (= e!471177 tp_is_empty!15799)))

(declare-fun res!573675 () Bool)

(assert (=> start!72776 (=> (not res!573675) (not e!471178))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72776 (= res!573675 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23375 _keys!868))))))

(assert (=> start!72776 e!471178))

(assert (=> start!72776 true))

(declare-fun array_inv!18220 (array!47814) Bool)

(assert (=> start!72776 (array_inv!18220 _keys!868)))

(declare-fun e!471179 () Bool)

(declare-fun array_inv!18221 (array!47816) Bool)

(assert (=> start!72776 (and (array_inv!18221 _values!688) e!471179)))

(declare-fun b!844174 () Bool)

(assert (=> b!844174 (= e!471179 (and e!471177 mapRes!25298))))

(declare-fun condMapEmpty!25298 () Bool)

(declare-fun mapDefault!25298 () ValueCell!7460)


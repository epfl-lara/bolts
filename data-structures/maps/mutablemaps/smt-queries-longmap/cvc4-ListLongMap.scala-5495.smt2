; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72786 () Bool)

(assert start!72786)

(declare-fun mapIsEmpty!25313 () Bool)

(declare-fun mapRes!25313 () Bool)

(assert (=> mapIsEmpty!25313 mapRes!25313))

(declare-fun b!844274 () Bool)

(declare-fun e!471255 () Bool)

(assert (=> b!844274 (= e!471255 false)))

(declare-fun lt!381225 () Bool)

(declare-datatypes ((array!47834 0))(
  ( (array!47835 (arr!22944 (Array (_ BitVec 32) (_ BitVec 64))) (size!23385 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47834)

(declare-datatypes ((List!16338 0))(
  ( (Nil!16335) (Cons!16334 (h!17465 (_ BitVec 64)) (t!22717 List!16338)) )
))
(declare-fun arrayNoDuplicates!0 (array!47834 (_ BitVec 32) List!16338) Bool)

(assert (=> b!844274 (= lt!381225 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16335))))

(declare-fun b!844275 () Bool)

(declare-fun res!573736 () Bool)

(assert (=> b!844275 (=> (not res!573736) (not e!471255))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47834 (_ BitVec 32)) Bool)

(assert (=> b!844275 (= res!573736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844276 () Bool)

(declare-fun e!471251 () Bool)

(declare-fun tp_is_empty!15809 () Bool)

(assert (=> b!844276 (= e!471251 tp_is_empty!15809)))

(declare-fun b!844277 () Bool)

(declare-fun res!573735 () Bool)

(assert (=> b!844277 (=> (not res!573735) (not e!471255))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26125 0))(
  ( (V!26126 (val!7952 Int)) )
))
(declare-datatypes ((ValueCell!7465 0))(
  ( (ValueCellFull!7465 (v!10373 V!26125)) (EmptyCell!7465) )
))
(declare-datatypes ((array!47836 0))(
  ( (array!47837 (arr!22945 (Array (_ BitVec 32) ValueCell!7465)) (size!23386 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47836)

(assert (=> b!844277 (= res!573735 (and (= (size!23386 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23385 _keys!868) (size!23386 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25313 () Bool)

(declare-fun tp!48632 () Bool)

(declare-fun e!471253 () Bool)

(assert (=> mapNonEmpty!25313 (= mapRes!25313 (and tp!48632 e!471253))))

(declare-fun mapRest!25313 () (Array (_ BitVec 32) ValueCell!7465))

(declare-fun mapKey!25313 () (_ BitVec 32))

(declare-fun mapValue!25313 () ValueCell!7465)

(assert (=> mapNonEmpty!25313 (= (arr!22945 _values!688) (store mapRest!25313 mapKey!25313 mapValue!25313))))

(declare-fun res!573738 () Bool)

(assert (=> start!72786 (=> (not res!573738) (not e!471255))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72786 (= res!573738 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23385 _keys!868))))))

(assert (=> start!72786 e!471255))

(assert (=> start!72786 true))

(declare-fun array_inv!18228 (array!47834) Bool)

(assert (=> start!72786 (array_inv!18228 _keys!868)))

(declare-fun e!471254 () Bool)

(declare-fun array_inv!18229 (array!47836) Bool)

(assert (=> start!72786 (and (array_inv!18229 _values!688) e!471254)))

(declare-fun b!844278 () Bool)

(declare-fun res!573737 () Bool)

(assert (=> b!844278 (=> (not res!573737) (not e!471255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844278 (= res!573737 (validMask!0 mask!1196))))

(declare-fun b!844279 () Bool)

(assert (=> b!844279 (= e!471253 tp_is_empty!15809)))

(declare-fun b!844280 () Bool)

(assert (=> b!844280 (= e!471254 (and e!471251 mapRes!25313))))

(declare-fun condMapEmpty!25313 () Bool)

(declare-fun mapDefault!25313 () ValueCell!7465)


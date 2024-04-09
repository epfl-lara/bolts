; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84366 () Bool)

(assert start!84366)

(declare-fun mapIsEmpty!36740 () Bool)

(declare-fun mapRes!36740 () Bool)

(assert (=> mapIsEmpty!36740 mapRes!36740))

(declare-fun res!660055 () Bool)

(declare-fun e!556219 () Bool)

(assert (=> start!84366 (=> (not res!660055) (not e!556219))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84366 (= res!660055 (validMask!0 mask!1948))))

(assert (=> start!84366 e!556219))

(assert (=> start!84366 true))

(declare-datatypes ((V!35837 0))(
  ( (V!35838 (val!11621 Int)) )
))
(declare-datatypes ((ValueCell!11089 0))(
  ( (ValueCellFull!11089 (v!14183 V!35837)) (EmptyCell!11089) )
))
(declare-datatypes ((array!62233 0))(
  ( (array!62234 (arr!29970 (Array (_ BitVec 32) ValueCell!11089)) (size!30450 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62233)

(declare-fun e!556217 () Bool)

(declare-fun array_inv!23027 (array!62233) Bool)

(assert (=> start!84366 (and (array_inv!23027 _values!1278) e!556217)))

(declare-datatypes ((array!62235 0))(
  ( (array!62236 (arr!29971 (Array (_ BitVec 32) (_ BitVec 64))) (size!30451 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62235)

(declare-fun array_inv!23028 (array!62235) Bool)

(assert (=> start!84366 (array_inv!23028 _keys!1544)))

(declare-fun b!986392 () Bool)

(declare-fun res!660056 () Bool)

(assert (=> b!986392 (=> (not res!660056) (not e!556219))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986392 (= res!660056 (and (= (size!30450 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30451 _keys!1544) (size!30450 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986393 () Bool)

(assert (=> b!986393 (= e!556219 false)))

(declare-fun lt!437452 () Bool)

(declare-datatypes ((List!20859 0))(
  ( (Nil!20856) (Cons!20855 (h!22017 (_ BitVec 64)) (t!29766 List!20859)) )
))
(declare-fun arrayNoDuplicates!0 (array!62235 (_ BitVec 32) List!20859) Bool)

(assert (=> b!986393 (= lt!437452 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20856))))

(declare-fun b!986394 () Bool)

(declare-fun e!556216 () Bool)

(declare-fun tp_is_empty!23141 () Bool)

(assert (=> b!986394 (= e!556216 tp_is_empty!23141)))

(declare-fun mapNonEmpty!36740 () Bool)

(declare-fun tp!69596 () Bool)

(declare-fun e!556218 () Bool)

(assert (=> mapNonEmpty!36740 (= mapRes!36740 (and tp!69596 e!556218))))

(declare-fun mapKey!36740 () (_ BitVec 32))

(declare-fun mapRest!36740 () (Array (_ BitVec 32) ValueCell!11089))

(declare-fun mapValue!36740 () ValueCell!11089)

(assert (=> mapNonEmpty!36740 (= (arr!29970 _values!1278) (store mapRest!36740 mapKey!36740 mapValue!36740))))

(declare-fun b!986395 () Bool)

(assert (=> b!986395 (= e!556217 (and e!556216 mapRes!36740))))

(declare-fun condMapEmpty!36740 () Bool)

(declare-fun mapDefault!36740 () ValueCell!11089)


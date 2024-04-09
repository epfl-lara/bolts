; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72672 () Bool)

(assert start!72672)

(declare-fun b!843077 () Bool)

(declare-fun e!470396 () Bool)

(assert (=> b!843077 (= e!470396 false)))

(declare-fun lt!381054 () Bool)

(declare-datatypes ((array!47628 0))(
  ( (array!47629 (arr!22841 (Array (_ BitVec 32) (_ BitVec 64))) (size!23282 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47628)

(declare-datatypes ((List!16297 0))(
  ( (Nil!16294) (Cons!16293 (h!17424 (_ BitVec 64)) (t!22676 List!16297)) )
))
(declare-fun arrayNoDuplicates!0 (array!47628 (_ BitVec 32) List!16297) Bool)

(assert (=> b!843077 (= lt!381054 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16294))))

(declare-fun b!843078 () Bool)

(declare-fun res!573053 () Bool)

(assert (=> b!843078 (=> (not res!573053) (not e!470396))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25973 0))(
  ( (V!25974 (val!7895 Int)) )
))
(declare-datatypes ((ValueCell!7408 0))(
  ( (ValueCellFull!7408 (v!10316 V!25973)) (EmptyCell!7408) )
))
(declare-datatypes ((array!47630 0))(
  ( (array!47631 (arr!22842 (Array (_ BitVec 32) ValueCell!7408)) (size!23283 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47630)

(assert (=> b!843078 (= res!573053 (and (= (size!23283 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23282 _keys!868) (size!23283 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843079 () Bool)

(declare-fun e!470400 () Bool)

(declare-fun e!470397 () Bool)

(declare-fun mapRes!25142 () Bool)

(assert (=> b!843079 (= e!470400 (and e!470397 mapRes!25142))))

(declare-fun condMapEmpty!25142 () Bool)

(declare-fun mapDefault!25142 () ValueCell!7408)


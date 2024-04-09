; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72728 () Bool)

(assert start!72728)

(declare-fun mapNonEmpty!25226 () Bool)

(declare-fun mapRes!25226 () Bool)

(declare-fun tp!48545 () Bool)

(declare-fun e!470817 () Bool)

(assert (=> mapNonEmpty!25226 (= mapRes!25226 (and tp!48545 e!470817))))

(declare-datatypes ((V!26049 0))(
  ( (V!26050 (val!7923 Int)) )
))
(declare-datatypes ((ValueCell!7436 0))(
  ( (ValueCellFull!7436 (v!10344 V!26049)) (EmptyCell!7436) )
))
(declare-fun mapValue!25226 () ValueCell!7436)

(declare-fun mapKey!25226 () (_ BitVec 32))

(declare-fun mapRest!25226 () (Array (_ BitVec 32) ValueCell!7436))

(declare-datatypes ((array!47728 0))(
  ( (array!47729 (arr!22891 (Array (_ BitVec 32) ValueCell!7436)) (size!23332 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47728)

(assert (=> mapNonEmpty!25226 (= (arr!22891 _values!688) (store mapRest!25226 mapKey!25226 mapValue!25226))))

(declare-fun b!843665 () Bool)

(declare-fun e!470819 () Bool)

(assert (=> b!843665 (= e!470819 false)))

(declare-fun lt!381138 () Bool)

(declare-datatypes ((array!47730 0))(
  ( (array!47731 (arr!22892 (Array (_ BitVec 32) (_ BitVec 64))) (size!23333 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47730)

(declare-datatypes ((List!16318 0))(
  ( (Nil!16315) (Cons!16314 (h!17445 (_ BitVec 64)) (t!22697 List!16318)) )
))
(declare-fun arrayNoDuplicates!0 (array!47730 (_ BitVec 32) List!16318) Bool)

(assert (=> b!843665 (= lt!381138 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16315))))

(declare-fun b!843666 () Bool)

(declare-fun res!573388 () Bool)

(assert (=> b!843666 (=> (not res!573388) (not e!470819))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843666 (= res!573388 (and (= (size!23332 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23333 _keys!868) (size!23332 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843667 () Bool)

(declare-fun res!573389 () Bool)

(assert (=> b!843667 (=> (not res!573389) (not e!470819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47730 (_ BitVec 32)) Bool)

(assert (=> b!843667 (= res!573389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!573390 () Bool)

(assert (=> start!72728 (=> (not res!573390) (not e!470819))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72728 (= res!573390 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23333 _keys!868))))))

(assert (=> start!72728 e!470819))

(assert (=> start!72728 true))

(declare-fun array_inv!18192 (array!47730) Bool)

(assert (=> start!72728 (array_inv!18192 _keys!868)))

(declare-fun e!470816 () Bool)

(declare-fun array_inv!18193 (array!47728) Bool)

(assert (=> start!72728 (and (array_inv!18193 _values!688) e!470816)))

(declare-fun b!843668 () Bool)

(declare-fun tp_is_empty!15751 () Bool)

(assert (=> b!843668 (= e!470817 tp_is_empty!15751)))

(declare-fun mapIsEmpty!25226 () Bool)

(assert (=> mapIsEmpty!25226 mapRes!25226))

(declare-fun b!843669 () Bool)

(declare-fun res!573387 () Bool)

(assert (=> b!843669 (=> (not res!573387) (not e!470819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843669 (= res!573387 (validMask!0 mask!1196))))

(declare-fun b!843670 () Bool)

(declare-fun e!470818 () Bool)

(assert (=> b!843670 (= e!470818 tp_is_empty!15751)))

(declare-fun b!843671 () Bool)

(assert (=> b!843671 (= e!470816 (and e!470818 mapRes!25226))))

(declare-fun condMapEmpty!25226 () Bool)

(declare-fun mapDefault!25226 () ValueCell!7436)


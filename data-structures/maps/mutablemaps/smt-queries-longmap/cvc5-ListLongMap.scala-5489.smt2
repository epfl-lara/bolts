; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72746 () Bool)

(assert start!72746)

(declare-fun b!843854 () Bool)

(declare-fun e!470951 () Bool)

(assert (=> b!843854 (= e!470951 false)))

(declare-fun lt!381165 () Bool)

(declare-datatypes ((array!47762 0))(
  ( (array!47763 (arr!22908 (Array (_ BitVec 32) (_ BitVec 64))) (size!23349 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47762)

(declare-datatypes ((List!16326 0))(
  ( (Nil!16323) (Cons!16322 (h!17453 (_ BitVec 64)) (t!22705 List!16326)) )
))
(declare-fun arrayNoDuplicates!0 (array!47762 (_ BitVec 32) List!16326) Bool)

(assert (=> b!843854 (= lt!381165 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16323))))

(declare-fun b!843855 () Bool)

(declare-fun res!573497 () Bool)

(assert (=> b!843855 (=> (not res!573497) (not e!470951))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843855 (= res!573497 (validMask!0 mask!1196))))

(declare-fun b!843856 () Bool)

(declare-fun res!573496 () Bool)

(assert (=> b!843856 (=> (not res!573496) (not e!470951))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26073 0))(
  ( (V!26074 (val!7932 Int)) )
))
(declare-datatypes ((ValueCell!7445 0))(
  ( (ValueCellFull!7445 (v!10353 V!26073)) (EmptyCell!7445) )
))
(declare-datatypes ((array!47764 0))(
  ( (array!47765 (arr!22909 (Array (_ BitVec 32) ValueCell!7445)) (size!23350 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47764)

(assert (=> b!843856 (= res!573496 (and (= (size!23350 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23349 _keys!868) (size!23350 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843857 () Bool)

(declare-fun e!470953 () Bool)

(declare-fun tp_is_empty!15769 () Bool)

(assert (=> b!843857 (= e!470953 tp_is_empty!15769)))

(declare-fun b!843858 () Bool)

(declare-fun res!573495 () Bool)

(assert (=> b!843858 (=> (not res!573495) (not e!470951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47762 (_ BitVec 32)) Bool)

(assert (=> b!843858 (= res!573495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25253 () Bool)

(declare-fun mapRes!25253 () Bool)

(assert (=> mapIsEmpty!25253 mapRes!25253))

(declare-fun res!573498 () Bool)

(assert (=> start!72746 (=> (not res!573498) (not e!470951))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72746 (= res!573498 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23349 _keys!868))))))

(assert (=> start!72746 e!470951))

(assert (=> start!72746 true))

(declare-fun array_inv!18202 (array!47762) Bool)

(assert (=> start!72746 (array_inv!18202 _keys!868)))

(declare-fun e!470952 () Bool)

(declare-fun array_inv!18203 (array!47764) Bool)

(assert (=> start!72746 (and (array_inv!18203 _values!688) e!470952)))

(declare-fun b!843859 () Bool)

(assert (=> b!843859 (= e!470952 (and e!470953 mapRes!25253))))

(declare-fun condMapEmpty!25253 () Bool)

(declare-fun mapDefault!25253 () ValueCell!7445)


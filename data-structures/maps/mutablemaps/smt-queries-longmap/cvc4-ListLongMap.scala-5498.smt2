; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72804 () Bool)

(assert start!72804)

(declare-fun b!844463 () Bool)

(declare-fun res!573846 () Bool)

(declare-fun e!471388 () Bool)

(assert (=> b!844463 (=> (not res!573846) (not e!471388))))

(declare-datatypes ((array!47870 0))(
  ( (array!47871 (arr!22962 (Array (_ BitVec 32) (_ BitVec 64))) (size!23403 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47870)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47870 (_ BitVec 32)) Bool)

(assert (=> b!844463 (= res!573846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844464 () Bool)

(assert (=> b!844464 (= e!471388 false)))

(declare-fun lt!381252 () Bool)

(declare-datatypes ((List!16345 0))(
  ( (Nil!16342) (Cons!16341 (h!17472 (_ BitVec 64)) (t!22724 List!16345)) )
))
(declare-fun arrayNoDuplicates!0 (array!47870 (_ BitVec 32) List!16345) Bool)

(assert (=> b!844464 (= lt!381252 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16342))))

(declare-fun res!573844 () Bool)

(assert (=> start!72804 (=> (not res!573844) (not e!471388))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72804 (= res!573844 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23403 _keys!868))))))

(assert (=> start!72804 e!471388))

(assert (=> start!72804 true))

(declare-fun array_inv!18242 (array!47870) Bool)

(assert (=> start!72804 (array_inv!18242 _keys!868)))

(declare-datatypes ((V!26149 0))(
  ( (V!26150 (val!7961 Int)) )
))
(declare-datatypes ((ValueCell!7474 0))(
  ( (ValueCellFull!7474 (v!10382 V!26149)) (EmptyCell!7474) )
))
(declare-datatypes ((array!47872 0))(
  ( (array!47873 (arr!22963 (Array (_ BitVec 32) ValueCell!7474)) (size!23404 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47872)

(declare-fun e!471390 () Bool)

(declare-fun array_inv!18243 (array!47872) Bool)

(assert (=> start!72804 (and (array_inv!18243 _values!688) e!471390)))

(declare-fun b!844465 () Bool)

(declare-fun e!471387 () Bool)

(declare-fun tp_is_empty!15827 () Bool)

(assert (=> b!844465 (= e!471387 tp_is_empty!15827)))

(declare-fun b!844466 () Bool)

(declare-fun res!573845 () Bool)

(assert (=> b!844466 (=> (not res!573845) (not e!471388))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844466 (= res!573845 (and (= (size!23404 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23403 _keys!868) (size!23404 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25340 () Bool)

(declare-fun mapRes!25340 () Bool)

(assert (=> mapIsEmpty!25340 mapRes!25340))

(declare-fun b!844467 () Bool)

(declare-fun res!573843 () Bool)

(assert (=> b!844467 (=> (not res!573843) (not e!471388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844467 (= res!573843 (validMask!0 mask!1196))))

(declare-fun b!844468 () Bool)

(declare-fun e!471386 () Bool)

(assert (=> b!844468 (= e!471386 tp_is_empty!15827)))

(declare-fun b!844469 () Bool)

(assert (=> b!844469 (= e!471390 (and e!471386 mapRes!25340))))

(declare-fun condMapEmpty!25340 () Bool)

(declare-fun mapDefault!25340 () ValueCell!7474)


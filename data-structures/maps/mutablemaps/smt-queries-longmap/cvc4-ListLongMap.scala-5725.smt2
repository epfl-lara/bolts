; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74178 () Bool)

(assert start!74178)

(declare-fun b!872128 () Bool)

(declare-fun e!485670 () Bool)

(declare-fun tp_is_empty!17189 () Bool)

(assert (=> b!872128 (= e!485670 tp_is_empty!17189)))

(declare-fun b!872129 () Bool)

(declare-fun res!592878 () Bool)

(declare-fun e!485671 () Bool)

(assert (=> b!872129 (=> (not res!592878) (not e!485671))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50502 0))(
  ( (array!50503 (arr!24277 (Array (_ BitVec 32) (_ BitVec 64))) (size!24718 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50502)

(declare-datatypes ((V!27965 0))(
  ( (V!27966 (val!8642 Int)) )
))
(declare-datatypes ((ValueCell!8155 0))(
  ( (ValueCellFull!8155 (v!11063 V!27965)) (EmptyCell!8155) )
))
(declare-datatypes ((array!50504 0))(
  ( (array!50505 (arr!24278 (Array (_ BitVec 32) ValueCell!8155)) (size!24719 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50504)

(assert (=> b!872129 (= res!592878 (and (= (size!24719 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24718 _keys!868) (size!24719 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872130 () Bool)

(declare-fun res!592876 () Bool)

(assert (=> b!872130 (=> (not res!592876) (not e!485671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50502 (_ BitVec 32)) Bool)

(assert (=> b!872130 (= res!592876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872131 () Bool)

(declare-fun res!592877 () Bool)

(assert (=> b!872131 (=> (not res!592877) (not e!485671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872131 (= res!592877 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27386 () Bool)

(declare-fun mapRes!27386 () Bool)

(assert (=> mapIsEmpty!27386 mapRes!27386))

(declare-fun b!872132 () Bool)

(assert (=> b!872132 (= e!485671 false)))

(declare-fun lt!395544 () Bool)

(declare-datatypes ((List!17320 0))(
  ( (Nil!17317) (Cons!17316 (h!18447 (_ BitVec 64)) (t!24365 List!17320)) )
))
(declare-fun arrayNoDuplicates!0 (array!50502 (_ BitVec 32) List!17320) Bool)

(assert (=> b!872132 (= lt!395544 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17317))))

(declare-fun b!872133 () Bool)

(declare-fun e!485673 () Bool)

(declare-fun e!485672 () Bool)

(assert (=> b!872133 (= e!485673 (and e!485672 mapRes!27386))))

(declare-fun condMapEmpty!27386 () Bool)

(declare-fun mapDefault!27386 () ValueCell!8155)


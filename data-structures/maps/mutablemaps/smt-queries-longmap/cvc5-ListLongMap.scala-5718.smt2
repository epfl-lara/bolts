; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74120 () Bool)

(assert start!74120)

(declare-fun b!871583 () Bool)

(declare-fun e!485301 () Bool)

(declare-fun tp_is_empty!17143 () Bool)

(assert (=> b!871583 (= e!485301 tp_is_empty!17143)))

(declare-fun res!592560 () Bool)

(declare-fun e!485297 () Bool)

(assert (=> start!74120 (=> (not res!592560) (not e!485297))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50414 0))(
  ( (array!50415 (arr!24234 (Array (_ BitVec 32) (_ BitVec 64))) (size!24675 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50414)

(assert (=> start!74120 (= res!592560 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24675 _keys!868))))))

(assert (=> start!74120 e!485297))

(assert (=> start!74120 true))

(declare-fun array_inv!19108 (array!50414) Bool)

(assert (=> start!74120 (array_inv!19108 _keys!868)))

(declare-datatypes ((V!27905 0))(
  ( (V!27906 (val!8619 Int)) )
))
(declare-datatypes ((ValueCell!8132 0))(
  ( (ValueCellFull!8132 (v!11040 V!27905)) (EmptyCell!8132) )
))
(declare-datatypes ((array!50416 0))(
  ( (array!50417 (arr!24235 (Array (_ BitVec 32) ValueCell!8132)) (size!24676 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50416)

(declare-fun e!485300 () Bool)

(declare-fun array_inv!19109 (array!50416) Bool)

(assert (=> start!74120 (and (array_inv!19109 _values!688) e!485300)))

(declare-fun b!871584 () Bool)

(declare-fun res!592557 () Bool)

(assert (=> b!871584 (=> (not res!592557) (not e!485297))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871584 (= res!592557 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27314 () Bool)

(declare-fun mapRes!27314 () Bool)

(assert (=> mapIsEmpty!27314 mapRes!27314))

(declare-fun b!871585 () Bool)

(assert (=> b!871585 (= e!485297 false)))

(declare-fun lt!395475 () Bool)

(declare-datatypes ((List!17305 0))(
  ( (Nil!17302) (Cons!17301 (h!18432 (_ BitVec 64)) (t!24350 List!17305)) )
))
(declare-fun arrayNoDuplicates!0 (array!50414 (_ BitVec 32) List!17305) Bool)

(assert (=> b!871585 (= lt!395475 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17302))))

(declare-fun b!871586 () Bool)

(declare-fun e!485299 () Bool)

(assert (=> b!871586 (= e!485300 (and e!485299 mapRes!27314))))

(declare-fun condMapEmpty!27314 () Bool)

(declare-fun mapDefault!27314 () ValueCell!8132)


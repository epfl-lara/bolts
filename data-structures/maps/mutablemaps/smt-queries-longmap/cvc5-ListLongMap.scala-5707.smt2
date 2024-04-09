; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74054 () Bool)

(assert start!74054)

(declare-fun b_free!14941 () Bool)

(declare-fun b_next!14941 () Bool)

(assert (=> start!74054 (= b_free!14941 (not b_next!14941))))

(declare-fun tp!52328 () Bool)

(declare-fun b_and!24711 () Bool)

(assert (=> start!74054 (= tp!52328 b_and!24711)))

(declare-fun mapNonEmpty!27215 () Bool)

(declare-fun mapRes!27215 () Bool)

(declare-fun tp!52327 () Bool)

(declare-fun e!484716 () Bool)

(assert (=> mapNonEmpty!27215 (= mapRes!27215 (and tp!52327 e!484716))))

(declare-fun mapKey!27215 () (_ BitVec 32))

(declare-datatypes ((V!27817 0))(
  ( (V!27818 (val!8586 Int)) )
))
(declare-datatypes ((ValueCell!8099 0))(
  ( (ValueCellFull!8099 (v!11007 V!27817)) (EmptyCell!8099) )
))
(declare-fun mapRest!27215 () (Array (_ BitVec 32) ValueCell!8099))

(declare-datatypes ((array!50286 0))(
  ( (array!50287 (arr!24170 (Array (_ BitVec 32) ValueCell!8099)) (size!24611 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50286)

(declare-fun mapValue!27215 () ValueCell!8099)

(assert (=> mapNonEmpty!27215 (= (arr!24170 _values!688) (store mapRest!27215 mapKey!27215 mapValue!27215))))

(declare-fun mapIsEmpty!27215 () Bool)

(assert (=> mapIsEmpty!27215 mapRes!27215))

(declare-fun res!591735 () Bool)

(declare-fun e!484719 () Bool)

(assert (=> start!74054 (=> (not res!591735) (not e!484719))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50288 0))(
  ( (array!50289 (arr!24171 (Array (_ BitVec 32) (_ BitVec 64))) (size!24612 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50288)

(assert (=> start!74054 (= res!591735 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24612 _keys!868))))))

(assert (=> start!74054 e!484719))

(declare-fun tp_is_empty!17077 () Bool)

(assert (=> start!74054 tp_is_empty!17077))

(assert (=> start!74054 true))

(assert (=> start!74054 tp!52328))

(declare-fun array_inv!19060 (array!50288) Bool)

(assert (=> start!74054 (array_inv!19060 _keys!868)))

(declare-fun e!484717 () Bool)

(declare-fun array_inv!19061 (array!50286) Bool)

(assert (=> start!74054 (and (array_inv!19061 _values!688) e!484717)))

(declare-fun b!870441 () Bool)

(assert (=> b!870441 (= e!484716 tp_is_empty!17077)))

(declare-fun b!870442 () Bool)

(declare-fun res!591738 () Bool)

(assert (=> b!870442 (=> (not res!591738) (not e!484719))))

(declare-datatypes ((List!17262 0))(
  ( (Nil!17259) (Cons!17258 (h!18389 (_ BitVec 64)) (t!24307 List!17262)) )
))
(declare-fun arrayNoDuplicates!0 (array!50288 (_ BitVec 32) List!17262) Bool)

(assert (=> b!870442 (= res!591738 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17259))))

(declare-fun b!870443 () Bool)

(declare-fun e!484714 () Bool)

(assert (=> b!870443 (= e!484717 (and e!484714 mapRes!27215))))

(declare-fun condMapEmpty!27215 () Bool)

(declare-fun mapDefault!27215 () ValueCell!8099)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73760 () Bool)

(assert start!73760)

(declare-fun b_free!14647 () Bool)

(declare-fun b_next!14647 () Bool)

(assert (=> start!73760 (= b_free!14647 (not b_next!14647))))

(declare-fun tp!51445 () Bool)

(declare-fun b_and!24291 () Bool)

(assert (=> start!73760 (= tp!51445 b_and!24291)))

(declare-fun b!864275 () Bool)

(declare-fun res!587394 () Bool)

(declare-fun e!481510 () Bool)

(assert (=> b!864275 (=> (not res!587394) (not e!481510))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49710 0))(
  ( (array!49711 (arr!23882 (Array (_ BitVec 32) (_ BitVec 64))) (size!24323 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49710)

(declare-datatypes ((V!27425 0))(
  ( (V!27426 (val!8439 Int)) )
))
(declare-datatypes ((ValueCell!7952 0))(
  ( (ValueCellFull!7952 (v!10860 V!27425)) (EmptyCell!7952) )
))
(declare-datatypes ((array!49712 0))(
  ( (array!49713 (arr!23883 (Array (_ BitVec 32) ValueCell!7952)) (size!24324 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49712)

(assert (=> b!864275 (= res!587394 (and (= (size!24324 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24323 _keys!868) (size!24324 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!587396 () Bool)

(assert (=> start!73760 (=> (not res!587396) (not e!481510))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73760 (= res!587396 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24323 _keys!868))))))

(assert (=> start!73760 e!481510))

(declare-fun tp_is_empty!16783 () Bool)

(assert (=> start!73760 tp_is_empty!16783))

(assert (=> start!73760 true))

(assert (=> start!73760 tp!51445))

(declare-fun array_inv!18864 (array!49710) Bool)

(assert (=> start!73760 (array_inv!18864 _keys!868)))

(declare-fun e!481509 () Bool)

(declare-fun array_inv!18865 (array!49712) Bool)

(assert (=> start!73760 (and (array_inv!18865 _values!688) e!481509)))

(declare-fun b!864276 () Bool)

(declare-fun e!481511 () Bool)

(declare-fun mapRes!26774 () Bool)

(assert (=> b!864276 (= e!481509 (and e!481511 mapRes!26774))))

(declare-fun condMapEmpty!26774 () Bool)

(declare-fun mapDefault!26774 () ValueCell!7952)


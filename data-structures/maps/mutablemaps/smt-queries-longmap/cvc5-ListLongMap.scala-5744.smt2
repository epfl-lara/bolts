; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74320 () Bool)

(assert start!74320)

(declare-fun b_free!15055 () Bool)

(declare-fun b_next!15055 () Bool)

(assert (=> start!74320 (= b_free!15055 (not b_next!15055))))

(declare-fun tp!52840 () Bool)

(declare-fun b_and!24849 () Bool)

(assert (=> start!74320 (= tp!52840 b_and!24849)))

(declare-fun b!873932 () Bool)

(declare-fun res!594000 () Bool)

(declare-fun e!486658 () Bool)

(assert (=> b!873932 (=> (not res!594000) (not e!486658))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50712 0))(
  ( (array!50713 (arr!24380 (Array (_ BitVec 32) (_ BitVec 64))) (size!24821 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50712)

(declare-datatypes ((V!28113 0))(
  ( (V!28114 (val!8697 Int)) )
))
(declare-datatypes ((ValueCell!8210 0))(
  ( (ValueCellFull!8210 (v!11122 V!28113)) (EmptyCell!8210) )
))
(declare-datatypes ((array!50714 0))(
  ( (array!50715 (arr!24381 (Array (_ BitVec 32) ValueCell!8210)) (size!24822 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50714)

(assert (=> b!873932 (= res!594000 (and (= (size!24822 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24821 _keys!868) (size!24822 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27557 () Bool)

(declare-fun mapRes!27557 () Bool)

(declare-fun tp!52841 () Bool)

(declare-fun e!486654 () Bool)

(assert (=> mapNonEmpty!27557 (= mapRes!27557 (and tp!52841 e!486654))))

(declare-fun mapKey!27557 () (_ BitVec 32))

(declare-fun mapValue!27557 () ValueCell!8210)

(declare-fun mapRest!27557 () (Array (_ BitVec 32) ValueCell!8210))

(assert (=> mapNonEmpty!27557 (= (arr!24381 _values!688) (store mapRest!27557 mapKey!27557 mapValue!27557))))

(declare-fun b!873933 () Bool)

(declare-fun res!594001 () Bool)

(assert (=> b!873933 (=> (not res!594001) (not e!486658))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873933 (= res!594001 (and (= (select (arr!24380 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873934 () Bool)

(declare-fun res!594003 () Bool)

(assert (=> b!873934 (=> (not res!594003) (not e!486658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50712 (_ BitVec 32)) Bool)

(assert (=> b!873934 (= res!594003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873936 () Bool)

(declare-fun res!594005 () Bool)

(assert (=> b!873936 (=> (not res!594005) (not e!486658))))

(declare-datatypes ((List!17377 0))(
  ( (Nil!17374) (Cons!17373 (h!18504 (_ BitVec 64)) (t!24426 List!17377)) )
))
(declare-fun arrayNoDuplicates!0 (array!50712 (_ BitVec 32) List!17377) Bool)

(assert (=> b!873936 (= res!594005 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17374))))

(declare-fun b!873937 () Bool)

(declare-fun e!486657 () Bool)

(declare-fun e!486655 () Bool)

(assert (=> b!873937 (= e!486657 (and e!486655 mapRes!27557))))

(declare-fun condMapEmpty!27557 () Bool)

(declare-fun mapDefault!27557 () ValueCell!8210)


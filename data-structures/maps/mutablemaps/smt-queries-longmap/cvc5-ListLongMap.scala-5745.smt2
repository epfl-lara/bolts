; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74326 () Bool)

(assert start!74326)

(declare-fun b_free!15061 () Bool)

(declare-fun b_next!15061 () Bool)

(assert (=> start!74326 (= b_free!15061 (not b_next!15061))))

(declare-fun tp!52858 () Bool)

(declare-fun b_and!24855 () Bool)

(assert (=> start!74326 (= tp!52858 b_and!24855)))

(declare-fun b!874031 () Bool)

(declare-fun res!594078 () Bool)

(declare-fun e!486700 () Bool)

(assert (=> b!874031 (=> (not res!594078) (not e!486700))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874031 (= res!594078 (validMask!0 mask!1196))))

(declare-fun b!874032 () Bool)

(declare-fun res!594074 () Bool)

(assert (=> b!874032 (=> (not res!594074) (not e!486700))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874032 (= res!594074 (validKeyInArray!0 k!854))))

(declare-fun b!874033 () Bool)

(declare-fun e!486699 () Bool)

(declare-fun tp_is_empty!17305 () Bool)

(assert (=> b!874033 (= e!486699 tp_is_empty!17305)))

(declare-fun b!874034 () Bool)

(declare-fun e!486701 () Bool)

(assert (=> b!874034 (= e!486701 tp_is_empty!17305)))

(declare-fun b!874035 () Bool)

(declare-fun res!594076 () Bool)

(assert (=> b!874035 (=> (not res!594076) (not e!486700))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50724 0))(
  ( (array!50725 (arr!24386 (Array (_ BitVec 32) (_ BitVec 64))) (size!24827 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50724)

(declare-datatypes ((V!28121 0))(
  ( (V!28122 (val!8700 Int)) )
))
(declare-datatypes ((ValueCell!8213 0))(
  ( (ValueCellFull!8213 (v!11125 V!28121)) (EmptyCell!8213) )
))
(declare-datatypes ((array!50726 0))(
  ( (array!50727 (arr!24387 (Array (_ BitVec 32) ValueCell!8213)) (size!24828 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50726)

(assert (=> b!874035 (= res!594076 (and (= (size!24828 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24827 _keys!868) (size!24828 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!594075 () Bool)

(assert (=> start!74326 (=> (not res!594075) (not e!486700))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74326 (= res!594075 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24827 _keys!868))))))

(assert (=> start!74326 e!486700))

(assert (=> start!74326 tp_is_empty!17305))

(assert (=> start!74326 true))

(assert (=> start!74326 tp!52858))

(declare-fun array_inv!19212 (array!50724) Bool)

(assert (=> start!74326 (array_inv!19212 _keys!868)))

(declare-fun e!486702 () Bool)

(declare-fun array_inv!19213 (array!50726) Bool)

(assert (=> start!74326 (and (array_inv!19213 _values!688) e!486702)))

(declare-fun mapIsEmpty!27566 () Bool)

(declare-fun mapRes!27566 () Bool)

(assert (=> mapIsEmpty!27566 mapRes!27566))

(declare-fun b!874036 () Bool)

(declare-fun res!594077 () Bool)

(assert (=> b!874036 (=> (not res!594077) (not e!486700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50724 (_ BitVec 32)) Bool)

(assert (=> b!874036 (= res!594077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874037 () Bool)

(declare-fun res!594073 () Bool)

(assert (=> b!874037 (=> (not res!594073) (not e!486700))))

(declare-datatypes ((List!17381 0))(
  ( (Nil!17378) (Cons!17377 (h!18508 (_ BitVec 64)) (t!24430 List!17381)) )
))
(declare-fun arrayNoDuplicates!0 (array!50724 (_ BitVec 32) List!17381) Bool)

(assert (=> b!874037 (= res!594073 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17378))))

(declare-fun b!874038 () Bool)

(assert (=> b!874038 (= e!486702 (and e!486699 mapRes!27566))))

(declare-fun condMapEmpty!27566 () Bool)

(declare-fun mapDefault!27566 () ValueCell!8213)


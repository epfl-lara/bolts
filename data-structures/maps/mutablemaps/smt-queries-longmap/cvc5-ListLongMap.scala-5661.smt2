; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73778 () Bool)

(assert start!73778)

(declare-fun b_free!14665 () Bool)

(declare-fun b_next!14665 () Bool)

(assert (=> start!73778 (= b_free!14665 (not b_next!14665))))

(declare-fun tp!51499 () Bool)

(declare-fun b_and!24327 () Bool)

(assert (=> start!73778 (= tp!51499 b_and!24327)))

(declare-fun res!587687 () Bool)

(declare-fun e!481752 () Bool)

(assert (=> start!73778 (=> (not res!587687) (not e!481752))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49746 0))(
  ( (array!49747 (arr!23900 (Array (_ BitVec 32) (_ BitVec 64))) (size!24341 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49746)

(assert (=> start!73778 (= res!587687 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24341 _keys!868))))))

(assert (=> start!73778 e!481752))

(declare-fun tp_is_empty!16801 () Bool)

(assert (=> start!73778 tp_is_empty!16801))

(assert (=> start!73778 true))

(assert (=> start!73778 tp!51499))

(declare-fun array_inv!18878 (array!49746) Bool)

(assert (=> start!73778 (array_inv!18878 _keys!868)))

(declare-datatypes ((V!27449 0))(
  ( (V!27450 (val!8448 Int)) )
))
(declare-datatypes ((ValueCell!7961 0))(
  ( (ValueCellFull!7961 (v!10869 V!27449)) (EmptyCell!7961) )
))
(declare-datatypes ((array!49748 0))(
  ( (array!49749 (arr!23901 (Array (_ BitVec 32) ValueCell!7961)) (size!24342 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49748)

(declare-fun e!481757 () Bool)

(declare-fun array_inv!18879 (array!49748) Bool)

(assert (=> start!73778 (and (array_inv!18879 _values!688) e!481757)))

(declare-fun mapNonEmpty!26801 () Bool)

(declare-fun mapRes!26801 () Bool)

(declare-fun tp!51500 () Bool)

(declare-fun e!481758 () Bool)

(assert (=> mapNonEmpty!26801 (= mapRes!26801 (and tp!51500 e!481758))))

(declare-fun mapValue!26801 () ValueCell!7961)

(declare-fun mapRest!26801 () (Array (_ BitVec 32) ValueCell!7961))

(declare-fun mapKey!26801 () (_ BitVec 32))

(assert (=> mapNonEmpty!26801 (= (arr!23901 _values!688) (store mapRest!26801 mapKey!26801 mapValue!26801))))

(declare-fun mapIsEmpty!26801 () Bool)

(assert (=> mapIsEmpty!26801 mapRes!26801))

(declare-fun b!864725 () Bool)

(declare-fun e!481756 () Bool)

(assert (=> b!864725 (= e!481756 true)))

(declare-datatypes ((tuple2!11192 0))(
  ( (tuple2!11193 (_1!5606 (_ BitVec 64)) (_2!5606 V!27449)) )
))
(declare-datatypes ((List!17058 0))(
  ( (Nil!17055) (Cons!17054 (h!18185 tuple2!11192) (t!23997 List!17058)) )
))
(declare-datatypes ((ListLongMap!9975 0))(
  ( (ListLongMap!9976 (toList!5003 List!17058)) )
))
(declare-fun lt!391559 () ListLongMap!9975)

(declare-fun lt!391569 () ListLongMap!9975)

(declare-fun lt!391565 () tuple2!11192)

(declare-fun lt!391554 () tuple2!11192)

(declare-fun +!2299 (ListLongMap!9975 tuple2!11192) ListLongMap!9975)

(assert (=> b!864725 (= lt!391559 (+!2299 (+!2299 lt!391569 lt!391565) lt!391554))))

(declare-fun lt!391568 () V!27449)

(declare-datatypes ((Unit!29568 0))(
  ( (Unit!29569) )
))
(declare-fun lt!391564 () Unit!29568)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27449)

(declare-fun addCommutativeForDiffKeys!507 (ListLongMap!9975 (_ BitVec 64) V!27449 (_ BitVec 64) V!27449) Unit!29568)

(assert (=> b!864725 (= lt!391564 (addCommutativeForDiffKeys!507 lt!391569 k!854 v!557 (select (arr!23900 _keys!868) from!1053) lt!391568))))

(declare-fun b!864726 () Bool)

(declare-fun e!481754 () Unit!29568)

(declare-fun Unit!29570 () Unit!29568)

(assert (=> b!864726 (= e!481754 Unit!29570)))

(declare-fun b!864727 () Bool)

(declare-fun res!587689 () Bool)

(assert (=> b!864727 (=> (not res!587689) (not e!481752))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49746 (_ BitVec 32)) Bool)

(assert (=> b!864727 (= res!587689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864728 () Bool)

(declare-fun res!587691 () Bool)

(assert (=> b!864728 (=> (not res!587691) (not e!481752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864728 (= res!587691 (validKeyInArray!0 k!854))))

(declare-fun b!864729 () Bool)

(declare-fun e!481755 () Bool)

(assert (=> b!864729 (= e!481757 (and e!481755 mapRes!26801))))

(declare-fun condMapEmpty!26801 () Bool)

(declare-fun mapDefault!26801 () ValueCell!7961)


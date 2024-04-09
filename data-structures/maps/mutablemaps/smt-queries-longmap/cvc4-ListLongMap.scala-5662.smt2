; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73788 () Bool)

(assert start!73788)

(declare-fun b_free!14675 () Bool)

(declare-fun b_next!14675 () Bool)

(assert (=> start!73788 (= b_free!14675 (not b_next!14675))))

(declare-fun tp!51529 () Bool)

(declare-fun b_and!24347 () Bool)

(assert (=> start!73788 (= tp!51529 b_and!24347)))

(declare-fun b!864975 () Bool)

(declare-fun res!587855 () Bool)

(declare-fun e!481887 () Bool)

(assert (=> b!864975 (=> (not res!587855) (not e!481887))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864975 (= res!587855 (validKeyInArray!0 k!854))))

(declare-fun b!864976 () Bool)

(declare-fun res!587851 () Bool)

(assert (=> b!864976 (=> (not res!587851) (not e!481887))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864976 (= res!587851 (validMask!0 mask!1196))))

(declare-fun b!864977 () Bool)

(declare-datatypes ((Unit!29586 0))(
  ( (Unit!29587) )
))
(declare-fun e!481893 () Unit!29586)

(declare-fun Unit!29588 () Unit!29586)

(assert (=> b!864977 (= e!481893 Unit!29588)))

(declare-fun b!864978 () Bool)

(declare-fun res!587849 () Bool)

(assert (=> b!864978 (=> (not res!587849) (not e!481887))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49766 0))(
  ( (array!49767 (arr!23910 (Array (_ BitVec 32) (_ BitVec 64))) (size!24351 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49766)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864978 (= res!587849 (and (= (select (arr!23910 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!864979 () Bool)

(declare-fun res!587857 () Bool)

(assert (=> b!864979 (=> (not res!587857) (not e!481887))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27461 0))(
  ( (V!27462 (val!8453 Int)) )
))
(declare-datatypes ((ValueCell!7966 0))(
  ( (ValueCellFull!7966 (v!10874 V!27461)) (EmptyCell!7966) )
))
(declare-datatypes ((array!49768 0))(
  ( (array!49769 (arr!23911 (Array (_ BitVec 32) ValueCell!7966)) (size!24352 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49768)

(assert (=> b!864979 (= res!587857 (and (= (size!24352 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24351 _keys!868) (size!24352 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864980 () Bool)

(declare-fun e!481891 () Bool)

(declare-fun e!481889 () Bool)

(assert (=> b!864980 (= e!481891 e!481889)))

(declare-fun res!587856 () Bool)

(assert (=> b!864980 (=> res!587856 e!481889)))

(assert (=> b!864980 (= res!587856 (= k!854 (select (arr!23910 _keys!868) from!1053)))))

(assert (=> b!864980 (not (= (select (arr!23910 _keys!868) from!1053) k!854))))

(declare-fun lt!391803 () Unit!29586)

(assert (=> b!864980 (= lt!391803 e!481893)))

(declare-fun c!92151 () Bool)

(assert (=> b!864980 (= c!92151 (= (select (arr!23910 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11202 0))(
  ( (tuple2!11203 (_1!5611 (_ BitVec 64)) (_2!5611 V!27461)) )
))
(declare-datatypes ((List!17067 0))(
  ( (Nil!17064) (Cons!17063 (h!18194 tuple2!11202) (t!24016 List!17067)) )
))
(declare-datatypes ((ListLongMap!9985 0))(
  ( (ListLongMap!9986 (toList!5008 List!17067)) )
))
(declare-fun lt!391809 () ListLongMap!9985)

(declare-fun lt!391804 () ListLongMap!9985)

(assert (=> b!864980 (= lt!391809 lt!391804)))

(declare-fun lt!391795 () ListLongMap!9985)

(declare-fun lt!391798 () tuple2!11202)

(declare-fun +!2304 (ListLongMap!9985 tuple2!11202) ListLongMap!9985)

(assert (=> b!864980 (= lt!391804 (+!2304 lt!391795 lt!391798))))

(declare-fun lt!391794 () V!27461)

(assert (=> b!864980 (= lt!391798 (tuple2!11203 (select (arr!23910 _keys!868) from!1053) lt!391794))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12646 (ValueCell!7966 V!27461) V!27461)

(declare-fun dynLambda!1172 (Int (_ BitVec 64)) V!27461)

(assert (=> b!864980 (= lt!391794 (get!12646 (select (arr!23911 _values!688) from!1053) (dynLambda!1172 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!26816 () Bool)

(declare-fun mapRes!26816 () Bool)

(declare-fun tp!51530 () Bool)

(declare-fun e!481885 () Bool)

(assert (=> mapNonEmpty!26816 (= mapRes!26816 (and tp!51530 e!481885))))

(declare-fun mapRest!26816 () (Array (_ BitVec 32) ValueCell!7966))

(declare-fun mapValue!26816 () ValueCell!7966)

(declare-fun mapKey!26816 () (_ BitVec 32))

(assert (=> mapNonEmpty!26816 (= (arr!23911 _values!688) (store mapRest!26816 mapKey!26816 mapValue!26816))))

(declare-fun res!587850 () Bool)

(assert (=> start!73788 (=> (not res!587850) (not e!481887))))

(assert (=> start!73788 (= res!587850 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24351 _keys!868))))))

(assert (=> start!73788 e!481887))

(declare-fun tp_is_empty!16811 () Bool)

(assert (=> start!73788 tp_is_empty!16811))

(assert (=> start!73788 true))

(assert (=> start!73788 tp!51529))

(declare-fun array_inv!18886 (array!49766) Bool)

(assert (=> start!73788 (array_inv!18886 _keys!868)))

(declare-fun e!481886 () Bool)

(declare-fun array_inv!18887 (array!49768) Bool)

(assert (=> start!73788 (and (array_inv!18887 _values!688) e!481886)))

(declare-fun b!864981 () Bool)

(declare-fun e!481892 () Bool)

(assert (=> b!864981 (= e!481886 (and e!481892 mapRes!26816))))

(declare-fun condMapEmpty!26816 () Bool)

(declare-fun mapDefault!26816 () ValueCell!7966)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73196 () Bool)

(assert start!73196)

(declare-fun b_free!14083 () Bool)

(declare-fun b_next!14083 () Bool)

(assert (=> start!73196 (= b_free!14083 (not b_next!14083))))

(declare-fun tp!49753 () Bool)

(declare-fun b_and!23343 () Bool)

(assert (=> start!73196 (= tp!49753 b_and!23343)))

(declare-fun b!851955 () Bool)

(declare-fun res!578784 () Bool)

(declare-fun e!475207 () Bool)

(assert (=> b!851955 (=> (not res!578784) (not e!475207))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851955 (= res!578784 (validKeyInArray!0 k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26673 0))(
  ( (V!26674 (val!8157 Int)) )
))
(declare-datatypes ((tuple2!10722 0))(
  ( (tuple2!10723 (_1!5371 (_ BitVec 64)) (_2!5371 V!26673)) )
))
(declare-datatypes ((List!16607 0))(
  ( (Nil!16604) (Cons!16603 (h!17734 tuple2!10722) (t!23144 List!16607)) )
))
(declare-datatypes ((ListLongMap!9505 0))(
  ( (ListLongMap!9506 (toList!4768 List!16607)) )
))
(declare-fun call!38105 () ListLongMap!9505)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48626 0))(
  ( (array!48627 (arr!23340 (Array (_ BitVec 32) (_ BitVec 64))) (size!23781 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48626)

(declare-datatypes ((ValueCell!7670 0))(
  ( (ValueCellFull!7670 (v!10578 V!26673)) (EmptyCell!7670) )
))
(declare-datatypes ((array!48628 0))(
  ( (array!48629 (arr!23341 (Array (_ BitVec 32) ValueCell!7670)) (size!23782 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48628)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!38101 () Bool)

(declare-fun minValue!654 () V!26673)

(declare-fun zeroValue!654 () V!26673)

(declare-fun getCurrentListMapNoExtraKeys!2753 (array!48626 array!48628 (_ BitVec 32) (_ BitVec 32) V!26673 V!26673 (_ BitVec 32) Int) ListLongMap!9505)

(assert (=> bm!38101 (= call!38105 (getCurrentListMapNoExtraKeys!2753 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851956 () Bool)

(declare-fun e!475206 () Bool)

(declare-fun e!475212 () Bool)

(assert (=> b!851956 (= e!475206 (not e!475212))))

(declare-fun res!578788 () Bool)

(assert (=> b!851956 (=> res!578788 e!475212)))

(assert (=> b!851956 (= res!578788 (not (validKeyInArray!0 (select (arr!23340 _keys!868) from!1053))))))

(declare-fun e!475210 () Bool)

(assert (=> b!851956 e!475210))

(declare-fun c!91713 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851956 (= c!91713 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26673)

(declare-datatypes ((Unit!29066 0))(
  ( (Unit!29067) )
))
(declare-fun lt!383831 () Unit!29066)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!375 (array!48626 array!48628 (_ BitVec 32) (_ BitVec 32) V!26673 V!26673 (_ BitVec 32) (_ BitVec 64) V!26673 (_ BitVec 32) Int) Unit!29066)

(assert (=> b!851956 (= lt!383831 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!375 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851957 () Bool)

(declare-fun res!578781 () Bool)

(assert (=> b!851957 (=> (not res!578781) (not e!475207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48626 (_ BitVec 32)) Bool)

(assert (=> b!851957 (= res!578781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851958 () Bool)

(declare-fun res!578785 () Bool)

(assert (=> b!851958 (=> (not res!578785) (not e!475207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851958 (= res!578785 (validMask!0 mask!1196))))

(declare-fun b!851959 () Bool)

(declare-fun res!578789 () Bool)

(assert (=> b!851959 (=> (not res!578789) (not e!475207))))

(assert (=> b!851959 (= res!578789 (and (= (select (arr!23340 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!851960 () Bool)

(declare-fun res!578790 () Bool)

(assert (=> b!851960 (=> (not res!578790) (not e!475207))))

(assert (=> b!851960 (= res!578790 (and (= (size!23782 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23781 _keys!868) (size!23782 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun call!38104 () ListLongMap!9505)

(declare-fun b!851961 () Bool)

(declare-fun +!2109 (ListLongMap!9505 tuple2!10722) ListLongMap!9505)

(assert (=> b!851961 (= e!475210 (= call!38104 (+!2109 call!38105 (tuple2!10723 k!854 v!557))))))

(declare-fun b!851962 () Bool)

(declare-fun e!475205 () Bool)

(declare-fun tp_is_empty!16219 () Bool)

(assert (=> b!851962 (= e!475205 tp_is_empty!16219)))

(declare-fun mapNonEmpty!25928 () Bool)

(declare-fun mapRes!25928 () Bool)

(declare-fun tp!49754 () Bool)

(declare-fun e!475208 () Bool)

(assert (=> mapNonEmpty!25928 (= mapRes!25928 (and tp!49754 e!475208))))

(declare-fun mapKey!25928 () (_ BitVec 32))

(declare-fun mapRest!25928 () (Array (_ BitVec 32) ValueCell!7670))

(declare-fun mapValue!25928 () ValueCell!7670)

(assert (=> mapNonEmpty!25928 (= (arr!23341 _values!688) (store mapRest!25928 mapKey!25928 mapValue!25928))))

(declare-fun b!851963 () Bool)

(assert (=> b!851963 (= e!475210 (= call!38104 call!38105))))

(declare-fun b!851964 () Bool)

(assert (=> b!851964 (= e!475208 tp_is_empty!16219)))

(declare-fun res!578786 () Bool)

(assert (=> start!73196 (=> (not res!578786) (not e!475207))))

(assert (=> start!73196 (= res!578786 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23781 _keys!868))))))

(assert (=> start!73196 e!475207))

(assert (=> start!73196 tp_is_empty!16219))

(assert (=> start!73196 true))

(assert (=> start!73196 tp!49753))

(declare-fun array_inv!18502 (array!48626) Bool)

(assert (=> start!73196 (array_inv!18502 _keys!868)))

(declare-fun e!475209 () Bool)

(declare-fun array_inv!18503 (array!48628) Bool)

(assert (=> start!73196 (and (array_inv!18503 _values!688) e!475209)))

(declare-fun b!851965 () Bool)

(declare-fun res!578783 () Bool)

(assert (=> b!851965 (=> (not res!578783) (not e!475207))))

(assert (=> b!851965 (= res!578783 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23781 _keys!868))))))

(declare-fun b!851966 () Bool)

(assert (=> b!851966 (= e!475212 true)))

(declare-fun lt!383835 () tuple2!10722)

(declare-fun lt!383837 () V!26673)

(declare-fun lt!383838 () ListLongMap!9505)

(assert (=> b!851966 (= (+!2109 lt!383838 lt!383835) (+!2109 (+!2109 lt!383838 (tuple2!10723 k!854 lt!383837)) lt!383835))))

(declare-fun lt!383830 () V!26673)

(assert (=> b!851966 (= lt!383835 (tuple2!10723 k!854 lt!383830))))

(declare-fun lt!383832 () Unit!29066)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!292 (ListLongMap!9505 (_ BitVec 64) V!26673 V!26673) Unit!29066)

(assert (=> b!851966 (= lt!383832 (addSameAsAddTwiceSameKeyDiffValues!292 lt!383838 k!854 lt!383837 lt!383830))))

(declare-fun lt!383833 () V!26673)

(declare-fun get!12318 (ValueCell!7670 V!26673) V!26673)

(assert (=> b!851966 (= lt!383837 (get!12318 (select (arr!23341 _values!688) from!1053) lt!383833))))

(declare-fun lt!383829 () ListLongMap!9505)

(assert (=> b!851966 (= lt!383829 (+!2109 lt!383838 (tuple2!10723 (select (arr!23340 _keys!868) from!1053) lt!383830)))))

(assert (=> b!851966 (= lt!383830 (get!12318 (select (store (arr!23341 _values!688) i!612 (ValueCellFull!7670 v!557)) from!1053) lt!383833))))

(declare-fun dynLambda!1040 (Int (_ BitVec 64)) V!26673)

(assert (=> b!851966 (= lt!383833 (dynLambda!1040 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383834 () array!48628)

(assert (=> b!851966 (= lt!383838 (getCurrentListMapNoExtraKeys!2753 _keys!868 lt!383834 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851967 () Bool)

(declare-fun res!578782 () Bool)

(assert (=> b!851967 (=> (not res!578782) (not e!475207))))

(declare-datatypes ((List!16608 0))(
  ( (Nil!16605) (Cons!16604 (h!17735 (_ BitVec 64)) (t!23145 List!16608)) )
))
(declare-fun arrayNoDuplicates!0 (array!48626 (_ BitVec 32) List!16608) Bool)

(assert (=> b!851967 (= res!578782 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16605))))

(declare-fun mapIsEmpty!25928 () Bool)

(assert (=> mapIsEmpty!25928 mapRes!25928))

(declare-fun b!851968 () Bool)

(assert (=> b!851968 (= e!475207 e!475206)))

(declare-fun res!578787 () Bool)

(assert (=> b!851968 (=> (not res!578787) (not e!475206))))

(assert (=> b!851968 (= res!578787 (= from!1053 i!612))))

(assert (=> b!851968 (= lt!383829 (getCurrentListMapNoExtraKeys!2753 _keys!868 lt!383834 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851968 (= lt!383834 (array!48629 (store (arr!23341 _values!688) i!612 (ValueCellFull!7670 v!557)) (size!23782 _values!688)))))

(declare-fun lt!383836 () ListLongMap!9505)

(assert (=> b!851968 (= lt!383836 (getCurrentListMapNoExtraKeys!2753 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851969 () Bool)

(assert (=> b!851969 (= e!475209 (and e!475205 mapRes!25928))))

(declare-fun condMapEmpty!25928 () Bool)

(declare-fun mapDefault!25928 () ValueCell!7670)


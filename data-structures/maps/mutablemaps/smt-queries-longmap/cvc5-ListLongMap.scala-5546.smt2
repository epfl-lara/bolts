; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73088 () Bool)

(assert start!73088)

(declare-fun b_free!13975 () Bool)

(declare-fun b_next!13975 () Bool)

(assert (=> start!73088 (= b_free!13975 (not b_next!13975))))

(declare-fun tp!49429 () Bool)

(declare-fun b_and!23127 () Bool)

(assert (=> start!73088 (= tp!49429 b_and!23127)))

(declare-fun b!849417 () Bool)

(declare-fun res!577164 () Bool)

(declare-fun e!473913 () Bool)

(assert (=> b!849417 (=> (not res!577164) (not e!473913))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26529 0))(
  ( (V!26530 (val!8103 Int)) )
))
(declare-datatypes ((ValueCell!7616 0))(
  ( (ValueCellFull!7616 (v!10524 V!26529)) (EmptyCell!7616) )
))
(declare-datatypes ((array!48414 0))(
  ( (array!48415 (arr!23234 (Array (_ BitVec 32) ValueCell!7616)) (size!23675 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48414)

(declare-datatypes ((array!48416 0))(
  ( (array!48417 (arr!23235 (Array (_ BitVec 32) (_ BitVec 64))) (size!23676 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48416)

(assert (=> b!849417 (= res!577164 (and (= (size!23675 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23676 _keys!868) (size!23675 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun e!473910 () Bool)

(declare-datatypes ((tuple2!10624 0))(
  ( (tuple2!10625 (_1!5322 (_ BitVec 64)) (_2!5322 V!26529)) )
))
(declare-datatypes ((List!16523 0))(
  ( (Nil!16520) (Cons!16519 (h!17650 tuple2!10624) (t!22952 List!16523)) )
))
(declare-datatypes ((ListLongMap!9407 0))(
  ( (ListLongMap!9408 (toList!4719 List!16523)) )
))
(declare-fun call!37781 () ListLongMap!9407)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!37780 () ListLongMap!9407)

(declare-fun v!557 () V!26529)

(declare-fun b!849418 () Bool)

(declare-fun +!2064 (ListLongMap!9407 tuple2!10624) ListLongMap!9407)

(assert (=> b!849418 (= e!473910 (= call!37781 (+!2064 call!37780 (tuple2!10625 k!854 v!557))))))

(declare-fun b!849419 () Bool)

(declare-fun e!473909 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!849419 (= e!473909 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23676 _keys!868))))))

(declare-fun lt!382254 () array!48414)

(declare-fun lt!382251 () ListLongMap!9407)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26529)

(declare-fun zeroValue!654 () V!26529)

(declare-fun getCurrentListMapNoExtraKeys!2707 (array!48416 array!48414 (_ BitVec 32) (_ BitVec 32) V!26529 V!26529 (_ BitVec 32) Int) ListLongMap!9407)

(declare-fun get!12242 (ValueCell!7616 V!26529) V!26529)

(declare-fun dynLambda!1000 (Int (_ BitVec 64)) V!26529)

(assert (=> b!849419 (= lt!382251 (+!2064 (getCurrentListMapNoExtraKeys!2707 _keys!868 lt!382254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10625 (select (arr!23235 _keys!868) from!1053) (get!12242 (select (arr!23234 lt!382254) from!1053) (dynLambda!1000 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849420 () Bool)

(declare-fun res!577163 () Bool)

(assert (=> b!849420 (=> (not res!577163) (not e!473913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48416 (_ BitVec 32)) Bool)

(assert (=> b!849420 (= res!577163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25766 () Bool)

(declare-fun mapRes!25766 () Bool)

(assert (=> mapIsEmpty!25766 mapRes!25766))

(declare-fun mapNonEmpty!25766 () Bool)

(declare-fun tp!49430 () Bool)

(declare-fun e!473916 () Bool)

(assert (=> mapNonEmpty!25766 (= mapRes!25766 (and tp!49430 e!473916))))

(declare-fun mapValue!25766 () ValueCell!7616)

(declare-fun mapRest!25766 () (Array (_ BitVec 32) ValueCell!7616))

(declare-fun mapKey!25766 () (_ BitVec 32))

(assert (=> mapNonEmpty!25766 (= (arr!23234 _values!688) (store mapRest!25766 mapKey!25766 mapValue!25766))))

(declare-fun bm!37777 () Bool)

(assert (=> bm!37777 (= call!37780 (getCurrentListMapNoExtraKeys!2707 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849421 () Bool)

(declare-fun res!577168 () Bool)

(assert (=> b!849421 (=> (not res!577168) (not e!473913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849421 (= res!577168 (validKeyInArray!0 k!854))))

(declare-fun b!849422 () Bool)

(declare-fun res!577167 () Bool)

(assert (=> b!849422 (=> (not res!577167) (not e!473913))))

(declare-datatypes ((List!16524 0))(
  ( (Nil!16521) (Cons!16520 (h!17651 (_ BitVec 64)) (t!22953 List!16524)) )
))
(declare-fun arrayNoDuplicates!0 (array!48416 (_ BitVec 32) List!16524) Bool)

(assert (=> b!849422 (= res!577167 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16521))))

(declare-fun b!849423 () Bool)

(declare-fun tp_is_empty!16111 () Bool)

(assert (=> b!849423 (= e!473916 tp_is_empty!16111)))

(declare-fun b!849424 () Bool)

(declare-fun e!473915 () Bool)

(assert (=> b!849424 (= e!473915 tp_is_empty!16111)))

(declare-fun b!849425 () Bool)

(declare-fun e!473914 () Bool)

(assert (=> b!849425 (= e!473914 (not e!473909))))

(declare-fun res!577166 () Bool)

(assert (=> b!849425 (=> res!577166 e!473909)))

(assert (=> b!849425 (= res!577166 (not (validKeyInArray!0 (select (arr!23235 _keys!868) from!1053))))))

(assert (=> b!849425 e!473910))

(declare-fun c!91551 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849425 (= c!91551 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28978 0))(
  ( (Unit!28979) )
))
(declare-fun lt!382252 () Unit!28978)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!338 (array!48416 array!48414 (_ BitVec 32) (_ BitVec 32) V!26529 V!26529 (_ BitVec 32) (_ BitVec 64) V!26529 (_ BitVec 32) Int) Unit!28978)

(assert (=> b!849425 (= lt!382252 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!338 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37778 () Bool)

(assert (=> bm!37778 (= call!37781 (getCurrentListMapNoExtraKeys!2707 _keys!868 lt!382254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849426 () Bool)

(declare-fun res!577170 () Bool)

(assert (=> b!849426 (=> (not res!577170) (not e!473913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849426 (= res!577170 (validMask!0 mask!1196))))

(declare-fun b!849427 () Bool)

(assert (=> b!849427 (= e!473913 e!473914)))

(declare-fun res!577169 () Bool)

(assert (=> b!849427 (=> (not res!577169) (not e!473914))))

(assert (=> b!849427 (= res!577169 (= from!1053 i!612))))

(assert (=> b!849427 (= lt!382251 (getCurrentListMapNoExtraKeys!2707 _keys!868 lt!382254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849427 (= lt!382254 (array!48415 (store (arr!23234 _values!688) i!612 (ValueCellFull!7616 v!557)) (size!23675 _values!688)))))

(declare-fun lt!382253 () ListLongMap!9407)

(assert (=> b!849427 (= lt!382253 (getCurrentListMapNoExtraKeys!2707 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!577161 () Bool)

(assert (=> start!73088 (=> (not res!577161) (not e!473913))))

(assert (=> start!73088 (= res!577161 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23676 _keys!868))))))

(assert (=> start!73088 e!473913))

(assert (=> start!73088 tp_is_empty!16111))

(assert (=> start!73088 true))

(assert (=> start!73088 tp!49429))

(declare-fun array_inv!18426 (array!48416) Bool)

(assert (=> start!73088 (array_inv!18426 _keys!868)))

(declare-fun e!473911 () Bool)

(declare-fun array_inv!18427 (array!48414) Bool)

(assert (=> start!73088 (and (array_inv!18427 _values!688) e!473911)))

(declare-fun b!849428 () Bool)

(declare-fun res!577162 () Bool)

(assert (=> b!849428 (=> (not res!577162) (not e!473913))))

(assert (=> b!849428 (= res!577162 (and (= (select (arr!23235 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849429 () Bool)

(assert (=> b!849429 (= e!473911 (and e!473915 mapRes!25766))))

(declare-fun condMapEmpty!25766 () Bool)

(declare-fun mapDefault!25766 () ValueCell!7616)


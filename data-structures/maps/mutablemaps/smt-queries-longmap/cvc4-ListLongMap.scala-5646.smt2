; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73692 () Bool)

(assert start!73692)

(declare-fun b_free!14579 () Bool)

(declare-fun b_next!14579 () Bool)

(assert (=> start!73692 (= b_free!14579 (not b_next!14579))))

(declare-fun tp!51242 () Bool)

(declare-fun b_and!24155 () Bool)

(assert (=> start!73692 (= tp!51242 b_and!24155)))

(declare-fun b!862575 () Bool)

(declare-fun e!480597 () Bool)

(assert (=> b!862575 (= e!480597 true)))

(declare-datatypes ((V!27333 0))(
  ( (V!27334 (val!8405 Int)) )
))
(declare-datatypes ((tuple2!11116 0))(
  ( (tuple2!11117 (_1!5568 (_ BitVec 64)) (_2!5568 V!27333)) )
))
(declare-fun lt!389495 () tuple2!11116)

(declare-fun lt!389501 () tuple2!11116)

(declare-datatypes ((List!16985 0))(
  ( (Nil!16982) (Cons!16981 (h!18112 tuple2!11116) (t!23838 List!16985)) )
))
(declare-datatypes ((ListLongMap!9899 0))(
  ( (ListLongMap!9900 (toList!4965 List!16985)) )
))
(declare-fun lt!389494 () ListLongMap!9899)

(declare-fun lt!389496 () ListLongMap!9899)

(declare-fun +!2262 (ListLongMap!9899 tuple2!11116) ListLongMap!9899)

(assert (=> b!862575 (= lt!389494 (+!2262 (+!2262 lt!389496 lt!389501) lt!389495))))

(declare-fun v!557 () V!27333)

(declare-datatypes ((Unit!29433 0))(
  ( (Unit!29434) )
))
(declare-fun lt!389504 () Unit!29433)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49576 0))(
  ( (array!49577 (arr!23815 (Array (_ BitVec 32) (_ BitVec 64))) (size!24256 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49576)

(declare-fun lt!389499 () V!27333)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!478 (ListLongMap!9899 (_ BitVec 64) V!27333 (_ BitVec 64) V!27333) Unit!29433)

(assert (=> b!862575 (= lt!389504 (addCommutativeForDiffKeys!478 lt!389496 k!854 v!557 (select (arr!23815 _keys!868) from!1053) lt!389499))))

(declare-fun b!862576 () Bool)

(declare-fun res!586274 () Bool)

(declare-fun e!480590 () Bool)

(assert (=> b!862576 (=> (not res!586274) (not e!480590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862576 (= res!586274 (validKeyInArray!0 k!854))))

(declare-fun b!862577 () Bool)

(declare-fun e!480593 () Unit!29433)

(declare-fun Unit!29435 () Unit!29433)

(assert (=> b!862577 (= e!480593 Unit!29435)))

(declare-fun b!862578 () Bool)

(declare-fun e!480592 () Bool)

(declare-fun tp_is_empty!16715 () Bool)

(assert (=> b!862578 (= e!480592 tp_is_empty!16715)))

(declare-fun b!862579 () Bool)

(declare-fun res!586267 () Bool)

(assert (=> b!862579 (=> (not res!586267) (not e!480590))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7918 0))(
  ( (ValueCellFull!7918 (v!10826 V!27333)) (EmptyCell!7918) )
))
(declare-datatypes ((array!49578 0))(
  ( (array!49579 (arr!23816 (Array (_ BitVec 32) ValueCell!7918)) (size!24257 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49578)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!862579 (= res!586267 (and (= (size!24257 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24256 _keys!868) (size!24257 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862580 () Bool)

(declare-fun e!480589 () Bool)

(assert (=> b!862580 (= e!480589 e!480597)))

(declare-fun res!586269 () Bool)

(assert (=> b!862580 (=> res!586269 e!480597)))

(assert (=> b!862580 (= res!586269 (= k!854 (select (arr!23815 _keys!868) from!1053)))))

(assert (=> b!862580 (not (= (select (arr!23815 _keys!868) from!1053) k!854))))

(declare-fun lt!389491 () Unit!29433)

(assert (=> b!862580 (= lt!389491 e!480593)))

(declare-fun c!92007 () Bool)

(assert (=> b!862580 (= c!92007 (= (select (arr!23815 _keys!868) from!1053) k!854))))

(declare-fun lt!389497 () ListLongMap!9899)

(assert (=> b!862580 (= lt!389497 lt!389494)))

(declare-fun lt!389503 () ListLongMap!9899)

(assert (=> b!862580 (= lt!389494 (+!2262 lt!389503 lt!389501))))

(assert (=> b!862580 (= lt!389501 (tuple2!11117 (select (arr!23815 _keys!868) from!1053) lt!389499))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12581 (ValueCell!7918 V!27333) V!27333)

(declare-fun dynLambda!1139 (Int (_ BitVec 64)) V!27333)

(assert (=> b!862580 (= lt!389499 (get!12581 (select (arr!23816 _values!688) from!1053) (dynLambda!1139 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862582 () Bool)

(declare-fun e!480594 () Bool)

(assert (=> b!862582 (= e!480594 tp_is_empty!16715)))

(declare-fun b!862583 () Bool)

(declare-fun res!586265 () Bool)

(assert (=> b!862583 (=> (not res!586265) (not e!480590))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862583 (= res!586265 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24256 _keys!868))))))

(declare-fun b!862584 () Bool)

(declare-fun res!586275 () Bool)

(assert (=> b!862584 (=> (not res!586275) (not e!480590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49576 (_ BitVec 32)) Bool)

(assert (=> b!862584 (= res!586275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862585 () Bool)

(declare-fun res!586273 () Bool)

(assert (=> b!862585 (=> (not res!586273) (not e!480590))))

(assert (=> b!862585 (= res!586273 (and (= (select (arr!23815 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26672 () Bool)

(declare-fun mapRes!26672 () Bool)

(declare-fun tp!51241 () Bool)

(assert (=> mapNonEmpty!26672 (= mapRes!26672 (and tp!51241 e!480594))))

(declare-fun mapKey!26672 () (_ BitVec 32))

(declare-fun mapRest!26672 () (Array (_ BitVec 32) ValueCell!7918))

(declare-fun mapValue!26672 () ValueCell!7918)

(assert (=> mapNonEmpty!26672 (= (arr!23816 _values!688) (store mapRest!26672 mapKey!26672 mapValue!26672))))

(declare-fun res!586266 () Bool)

(assert (=> start!73692 (=> (not res!586266) (not e!480590))))

(assert (=> start!73692 (= res!586266 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24256 _keys!868))))))

(assert (=> start!73692 e!480590))

(assert (=> start!73692 tp_is_empty!16715))

(assert (=> start!73692 true))

(assert (=> start!73692 tp!51242))

(declare-fun array_inv!18820 (array!49576) Bool)

(assert (=> start!73692 (array_inv!18820 _keys!868)))

(declare-fun e!480591 () Bool)

(declare-fun array_inv!18821 (array!49578) Bool)

(assert (=> start!73692 (and (array_inv!18821 _values!688) e!480591)))

(declare-fun b!862581 () Bool)

(declare-fun e!480596 () Bool)

(assert (=> b!862581 (= e!480590 e!480596)))

(declare-fun res!586271 () Bool)

(assert (=> b!862581 (=> (not res!586271) (not e!480596))))

(assert (=> b!862581 (= res!586271 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!389492 () array!49578)

(declare-fun minValue!654 () V!27333)

(declare-fun zeroValue!654 () V!27333)

(declare-fun getCurrentListMapNoExtraKeys!2941 (array!49576 array!49578 (_ BitVec 32) (_ BitVec 32) V!27333 V!27333 (_ BitVec 32) Int) ListLongMap!9899)

(assert (=> b!862581 (= lt!389497 (getCurrentListMapNoExtraKeys!2941 _keys!868 lt!389492 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862581 (= lt!389492 (array!49579 (store (arr!23816 _values!688) i!612 (ValueCellFull!7918 v!557)) (size!24257 _values!688)))))

(declare-fun lt!389505 () ListLongMap!9899)

(assert (=> b!862581 (= lt!389505 (getCurrentListMapNoExtraKeys!2941 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26672 () Bool)

(assert (=> mapIsEmpty!26672 mapRes!26672))

(declare-fun b!862586 () Bool)

(declare-fun res!586268 () Bool)

(assert (=> b!862586 (=> (not res!586268) (not e!480590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862586 (= res!586268 (validMask!0 mask!1196))))

(declare-fun b!862587 () Bool)

(assert (=> b!862587 (= e!480596 (not e!480589))))

(declare-fun res!586272 () Bool)

(assert (=> b!862587 (=> res!586272 e!480589)))

(assert (=> b!862587 (= res!586272 (not (validKeyInArray!0 (select (arr!23815 _keys!868) from!1053))))))

(declare-fun lt!389502 () ListLongMap!9899)

(assert (=> b!862587 (= lt!389502 lt!389503)))

(assert (=> b!862587 (= lt!389503 (+!2262 lt!389496 lt!389495))))

(assert (=> b!862587 (= lt!389502 (getCurrentListMapNoExtraKeys!2941 _keys!868 lt!389492 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862587 (= lt!389495 (tuple2!11117 k!854 v!557))))

(assert (=> b!862587 (= lt!389496 (getCurrentListMapNoExtraKeys!2941 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389498 () Unit!29433)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!510 (array!49576 array!49578 (_ BitVec 32) (_ BitVec 32) V!27333 V!27333 (_ BitVec 32) (_ BitVec 64) V!27333 (_ BitVec 32) Int) Unit!29433)

(assert (=> b!862587 (= lt!389498 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!510 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862588 () Bool)

(declare-fun res!586270 () Bool)

(assert (=> b!862588 (=> (not res!586270) (not e!480590))))

(declare-datatypes ((List!16986 0))(
  ( (Nil!16983) (Cons!16982 (h!18113 (_ BitVec 64)) (t!23839 List!16986)) )
))
(declare-fun arrayNoDuplicates!0 (array!49576 (_ BitVec 32) List!16986) Bool)

(assert (=> b!862588 (= res!586270 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16983))))

(declare-fun b!862589 () Bool)

(assert (=> b!862589 (= e!480591 (and e!480592 mapRes!26672))))

(declare-fun condMapEmpty!26672 () Bool)

(declare-fun mapDefault!26672 () ValueCell!7918)


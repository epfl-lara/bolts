; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73214 () Bool)

(assert start!73214)

(declare-fun b_free!14101 () Bool)

(declare-fun b_next!14101 () Bool)

(assert (=> start!73214 (= b_free!14101 (not b_next!14101))))

(declare-fun tp!49807 () Bool)

(declare-fun b_and!23379 () Bool)

(assert (=> start!73214 (= tp!49807 b_and!23379)))

(declare-fun b!852379 () Bool)

(declare-fun res!579056 () Bool)

(declare-fun e!475426 () Bool)

(assert (=> b!852379 (=> (not res!579056) (not e!475426))))

(declare-datatypes ((array!48660 0))(
  ( (array!48661 (arr!23357 (Array (_ BitVec 32) (_ BitVec 64))) (size!23798 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48660)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48660 (_ BitVec 32)) Bool)

(assert (=> b!852379 (= res!579056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852380 () Bool)

(declare-fun e!475425 () Bool)

(declare-fun e!475428 () Bool)

(assert (=> b!852380 (= e!475425 (not e!475428))))

(declare-fun res!579053 () Bool)

(assert (=> b!852380 (=> res!579053 e!475428)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852380 (= res!579053 (not (validKeyInArray!0 (select (arr!23357 _keys!868) from!1053))))))

(declare-fun e!475424 () Bool)

(assert (=> b!852380 e!475424))

(declare-fun c!91740 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852380 (= c!91740 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26697 0))(
  ( (V!26698 (val!8166 Int)) )
))
(declare-fun v!557 () V!26697)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!7679 0))(
  ( (ValueCellFull!7679 (v!10587 V!26697)) (EmptyCell!7679) )
))
(declare-datatypes ((array!48662 0))(
  ( (array!48663 (arr!23358 (Array (_ BitVec 32) ValueCell!7679)) (size!23799 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48662)

(declare-fun minValue!654 () V!26697)

(declare-fun zeroValue!654 () V!26697)

(declare-datatypes ((Unit!29078 0))(
  ( (Unit!29079) )
))
(declare-fun lt!384100 () Unit!29078)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!381 (array!48660 array!48662 (_ BitVec 32) (_ BitVec 32) V!26697 V!26697 (_ BitVec 32) (_ BitVec 64) V!26697 (_ BitVec 32) Int) Unit!29078)

(assert (=> b!852380 (= lt!384100 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!381 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852381 () Bool)

(declare-fun res!579052 () Bool)

(assert (=> b!852381 (=> (not res!579052) (not e!475426))))

(assert (=> b!852381 (= res!579052 (validKeyInArray!0 k!854))))

(declare-fun bm!38155 () Bool)

(declare-datatypes ((tuple2!10736 0))(
  ( (tuple2!10737 (_1!5378 (_ BitVec 64)) (_2!5378 V!26697)) )
))
(declare-datatypes ((List!16621 0))(
  ( (Nil!16618) (Cons!16617 (h!17748 tuple2!10736) (t!23176 List!16621)) )
))
(declare-datatypes ((ListLongMap!9519 0))(
  ( (ListLongMap!9520 (toList!4775 List!16621)) )
))
(declare-fun call!38159 () ListLongMap!9519)

(declare-fun lt!384106 () array!48662)

(declare-fun getCurrentListMapNoExtraKeys!2759 (array!48660 array!48662 (_ BitVec 32) (_ BitVec 32) V!26697 V!26697 (_ BitVec 32) Int) ListLongMap!9519)

(assert (=> bm!38155 (= call!38159 (getCurrentListMapNoExtraKeys!2759 _keys!868 lt!384106 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852382 () Bool)

(declare-fun call!38158 () ListLongMap!9519)

(assert (=> b!852382 (= e!475424 (= call!38159 call!38158))))

(declare-fun b!852383 () Bool)

(declare-fun e!475422 () Bool)

(declare-fun e!475421 () Bool)

(declare-fun mapRes!25955 () Bool)

(assert (=> b!852383 (= e!475422 (and e!475421 mapRes!25955))))

(declare-fun condMapEmpty!25955 () Bool)

(declare-fun mapDefault!25955 () ValueCell!7679)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73250 () Bool)

(assert start!73250)

(declare-fun b_free!14137 () Bool)

(declare-fun b_next!14137 () Bool)

(assert (=> start!73250 (= b_free!14137 (not b_next!14137))))

(declare-fun tp!49916 () Bool)

(declare-fun b_and!23451 () Bool)

(assert (=> start!73250 (= tp!49916 b_and!23451)))

(declare-fun b!853224 () Bool)

(declare-fun res!579600 () Bool)

(declare-fun e!475855 () Bool)

(assert (=> b!853224 (=> (not res!579600) (not e!475855))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853224 (= res!579600 (validKeyInArray!0 k!854))))

(declare-datatypes ((V!26745 0))(
  ( (V!26746 (val!8184 Int)) )
))
(declare-datatypes ((tuple2!10770 0))(
  ( (tuple2!10771 (_1!5395 (_ BitVec 64)) (_2!5395 V!26745)) )
))
(declare-datatypes ((List!16648 0))(
  ( (Nil!16645) (Cons!16644 (h!17775 tuple2!10770) (t!23239 List!16648)) )
))
(declare-datatypes ((ListLongMap!9553 0))(
  ( (ListLongMap!9554 (toList!4792 List!16648)) )
))
(declare-fun call!38266 () ListLongMap!9553)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48730 0))(
  ( (array!48731 (arr!23392 (Array (_ BitVec 32) (_ BitVec 64))) (size!23833 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48730)

(declare-datatypes ((ValueCell!7697 0))(
  ( (ValueCellFull!7697 (v!10605 V!26745)) (EmptyCell!7697) )
))
(declare-datatypes ((array!48732 0))(
  ( (array!48733 (arr!23393 (Array (_ BitVec 32) ValueCell!7697)) (size!23834 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48732)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!38263 () Bool)

(declare-fun minValue!654 () V!26745)

(declare-fun zeroValue!654 () V!26745)

(declare-fun getCurrentListMapNoExtraKeys!2775 (array!48730 array!48732 (_ BitVec 32) (_ BitVec 32) V!26745 V!26745 (_ BitVec 32) Int) ListLongMap!9553)

(assert (=> bm!38263 (= call!38266 (getCurrentListMapNoExtraKeys!2775 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853225 () Bool)

(declare-fun res!579594 () Bool)

(assert (=> b!853225 (=> (not res!579594) (not e!475855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853225 (= res!579594 (validMask!0 mask!1196))))

(declare-fun b!853226 () Bool)

(declare-fun e!475854 () Bool)

(declare-fun e!475853 () Bool)

(declare-fun mapRes!26009 () Bool)

(assert (=> b!853226 (= e!475854 (and e!475853 mapRes!26009))))

(declare-fun condMapEmpty!26009 () Bool)

(declare-fun mapDefault!26009 () ValueCell!7697)


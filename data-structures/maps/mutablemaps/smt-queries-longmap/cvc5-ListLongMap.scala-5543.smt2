; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73070 () Bool)

(assert start!73070)

(declare-fun b_free!13957 () Bool)

(declare-fun b_next!13957 () Bool)

(assert (=> start!73070 (= b_free!13957 (not b_next!13957))))

(declare-fun tp!49376 () Bool)

(declare-fun b_and!23091 () Bool)

(assert (=> start!73070 (= tp!49376 b_and!23091)))

(declare-fun b!848994 () Bool)

(declare-fun res!576894 () Bool)

(declare-fun e!473700 () Bool)

(assert (=> b!848994 (=> (not res!576894) (not e!473700))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848994 (= res!576894 (validMask!0 mask!1196))))

(declare-fun b!848995 () Bool)

(declare-fun res!576893 () Bool)

(assert (=> b!848995 (=> (not res!576893) (not e!473700))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48378 0))(
  ( (array!48379 (arr!23216 (Array (_ BitVec 32) (_ BitVec 64))) (size!23657 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48378)

(assert (=> b!848995 (= res!576893 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23657 _keys!868))))))

(declare-fun b!848997 () Bool)

(declare-fun e!473693 () Bool)

(declare-datatypes ((V!26505 0))(
  ( (V!26506 (val!8094 Int)) )
))
(declare-datatypes ((tuple2!10606 0))(
  ( (tuple2!10607 (_1!5313 (_ BitVec 64)) (_2!5313 V!26505)) )
))
(declare-datatypes ((List!16508 0))(
  ( (Nil!16505) (Cons!16504 (h!17635 tuple2!10606) (t!22919 List!16508)) )
))
(declare-datatypes ((ListLongMap!9389 0))(
  ( (ListLongMap!9390 (toList!4710 List!16508)) )
))
(declare-fun call!37726 () ListLongMap!9389)

(declare-fun call!37727 () ListLongMap!9389)

(assert (=> b!848997 (= e!473693 (= call!37726 call!37727))))

(declare-fun b!848998 () Bool)

(declare-fun e!473695 () Bool)

(assert (=> b!848998 (= e!473695 true)))

(declare-fun lt!382144 () ListLongMap!9389)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7607 0))(
  ( (ValueCellFull!7607 (v!10515 V!26505)) (EmptyCell!7607) )
))
(declare-datatypes ((array!48380 0))(
  ( (array!48381 (arr!23217 (Array (_ BitVec 32) ValueCell!7607)) (size!23658 (_ BitVec 32))) )
))
(declare-fun lt!382143 () array!48380)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26505)

(declare-fun zeroValue!654 () V!26505)

(declare-fun +!2056 (ListLongMap!9389 tuple2!10606) ListLongMap!9389)

(declare-fun getCurrentListMapNoExtraKeys!2698 (array!48378 array!48380 (_ BitVec 32) (_ BitVec 32) V!26505 V!26505 (_ BitVec 32) Int) ListLongMap!9389)

(declare-fun get!12228 (ValueCell!7607 V!26505) V!26505)

(declare-fun dynLambda!992 (Int (_ BitVec 64)) V!26505)

(assert (=> b!848998 (= lt!382144 (+!2056 (getCurrentListMapNoExtraKeys!2698 _keys!868 lt!382143 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10607 (select (arr!23216 _keys!868) from!1053) (get!12228 (select (arr!23217 lt!382143) from!1053) (dynLambda!992 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848999 () Bool)

(declare-fun res!576892 () Bool)

(assert (=> b!848999 (=> (not res!576892) (not e!473700))))

(declare-fun _values!688 () array!48380)

(assert (=> b!848999 (= res!576892 (and (= (size!23658 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23657 _keys!868) (size!23658 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849000 () Bool)

(declare-fun res!576900 () Bool)

(assert (=> b!849000 (=> (not res!576900) (not e!473700))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849000 (= res!576900 (validKeyInArray!0 k!854))))

(declare-fun v!557 () V!26505)

(declare-fun b!849001 () Bool)

(assert (=> b!849001 (= e!473693 (= call!37726 (+!2056 call!37727 (tuple2!10607 k!854 v!557))))))

(declare-fun b!849002 () Bool)

(declare-fun res!576897 () Bool)

(assert (=> b!849002 (=> (not res!576897) (not e!473700))))

(declare-datatypes ((List!16509 0))(
  ( (Nil!16506) (Cons!16505 (h!17636 (_ BitVec 64)) (t!22920 List!16509)) )
))
(declare-fun arrayNoDuplicates!0 (array!48378 (_ BitVec 32) List!16509) Bool)

(assert (=> b!849002 (= res!576897 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16506))))

(declare-fun b!849003 () Bool)

(declare-fun e!473694 () Bool)

(declare-fun tp_is_empty!16093 () Bool)

(assert (=> b!849003 (= e!473694 tp_is_empty!16093)))

(declare-fun b!849004 () Bool)

(declare-fun e!473698 () Bool)

(declare-fun mapRes!25739 () Bool)

(assert (=> b!849004 (= e!473698 (and e!473694 mapRes!25739))))

(declare-fun condMapEmpty!25739 () Bool)

(declare-fun mapDefault!25739 () ValueCell!7607)


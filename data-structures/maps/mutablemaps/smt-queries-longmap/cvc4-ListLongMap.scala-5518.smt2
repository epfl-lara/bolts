; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72924 () Bool)

(assert start!72924)

(declare-fun b_free!13811 () Bool)

(declare-fun b_next!13811 () Bool)

(assert (=> start!72924 (= b_free!13811 (not b_next!13811))))

(declare-fun tp!48937 () Bool)

(declare-fun b_and!22915 () Bool)

(assert (=> start!72924 (= tp!48937 b_and!22915)))

(declare-fun b!846115 () Bool)

(declare-fun res!574961 () Bool)

(declare-fun e!472286 () Bool)

(assert (=> b!846115 (=> (not res!574961) (not e!472286))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48094 0))(
  ( (array!48095 (arr!23074 (Array (_ BitVec 32) (_ BitVec 64))) (size!23515 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48094)

(assert (=> b!846115 (= res!574961 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23515 _keys!868))))))

(declare-fun mapIsEmpty!25520 () Bool)

(declare-fun mapRes!25520 () Bool)

(assert (=> mapIsEmpty!25520 mapRes!25520))

(declare-fun res!574956 () Bool)

(assert (=> start!72924 (=> (not res!574956) (not e!472286))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72924 (= res!574956 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23515 _keys!868))))))

(assert (=> start!72924 e!472286))

(declare-fun tp_is_empty!15947 () Bool)

(assert (=> start!72924 tp_is_empty!15947))

(assert (=> start!72924 true))

(assert (=> start!72924 tp!48937))

(declare-fun array_inv!18314 (array!48094) Bool)

(assert (=> start!72924 (array_inv!18314 _keys!868)))

(declare-datatypes ((V!26309 0))(
  ( (V!26310 (val!8021 Int)) )
))
(declare-datatypes ((ValueCell!7534 0))(
  ( (ValueCellFull!7534 (v!10442 V!26309)) (EmptyCell!7534) )
))
(declare-datatypes ((array!48096 0))(
  ( (array!48097 (arr!23075 (Array (_ BitVec 32) ValueCell!7534)) (size!23516 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48096)

(declare-fun e!472290 () Bool)

(declare-fun array_inv!18315 (array!48096) Bool)

(assert (=> start!72924 (and (array_inv!18315 _values!688) e!472290)))

(declare-fun b!846116 () Bool)

(declare-fun res!574960 () Bool)

(assert (=> b!846116 (=> (not res!574960) (not e!472286))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846116 (= res!574960 (validMask!0 mask!1196))))

(declare-fun b!846117 () Bool)

(declare-fun e!472287 () Bool)

(assert (=> b!846117 (= e!472287 tp_is_empty!15947)))

(declare-fun b!846118 () Bool)

(declare-fun res!574959 () Bool)

(assert (=> b!846118 (=> (not res!574959) (not e!472286))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846118 (= res!574959 (validKeyInArray!0 k!854))))

(declare-fun b!846119 () Bool)

(declare-fun res!574955 () Bool)

(assert (=> b!846119 (=> (not res!574955) (not e!472286))))

(assert (=> b!846119 (= res!574955 (and (= (select (arr!23074 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!846120 () Bool)

(declare-fun res!574957 () Bool)

(assert (=> b!846120 (=> (not res!574957) (not e!472286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48094 (_ BitVec 32)) Bool)

(assert (=> b!846120 (= res!574957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846121 () Bool)

(assert (=> b!846121 (= e!472290 (and e!472287 mapRes!25520))))

(declare-fun condMapEmpty!25520 () Bool)

(declare-fun mapDefault!25520 () ValueCell!7534)


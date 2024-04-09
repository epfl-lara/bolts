; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73206 () Bool)

(assert start!73206)

(declare-fun b_free!14093 () Bool)

(declare-fun b_next!14093 () Bool)

(assert (=> start!73206 (= b_free!14093 (not b_next!14093))))

(declare-fun tp!49784 () Bool)

(declare-fun b_and!23363 () Bool)

(assert (=> start!73206 (= tp!49784 b_and!23363)))

(declare-fun mapNonEmpty!25943 () Bool)

(declare-fun mapRes!25943 () Bool)

(declare-fun tp!49783 () Bool)

(declare-fun e!475332 () Bool)

(assert (=> mapNonEmpty!25943 (= mapRes!25943 (and tp!49783 e!475332))))

(declare-datatypes ((V!26685 0))(
  ( (V!26686 (val!8162 Int)) )
))
(declare-datatypes ((ValueCell!7675 0))(
  ( (ValueCellFull!7675 (v!10583 V!26685)) (EmptyCell!7675) )
))
(declare-fun mapRest!25943 () (Array (_ BitVec 32) ValueCell!7675))

(declare-fun mapKey!25943 () (_ BitVec 32))

(declare-fun mapValue!25943 () ValueCell!7675)

(declare-datatypes ((array!48644 0))(
  ( (array!48645 (arr!23349 (Array (_ BitVec 32) ValueCell!7675)) (size!23790 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48644)

(assert (=> mapNonEmpty!25943 (= (arr!23349 _values!688) (store mapRest!25943 mapKey!25943 mapValue!25943))))

(declare-fun b!852190 () Bool)

(declare-fun res!578937 () Bool)

(declare-fun e!475328 () Bool)

(assert (=> b!852190 (=> (not res!578937) (not e!475328))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852190 (= res!578937 (validMask!0 mask!1196))))

(declare-fun b!852191 () Bool)

(declare-fun res!578931 () Bool)

(assert (=> b!852191 (=> (not res!578931) (not e!475328))))

(declare-datatypes ((array!48646 0))(
  ( (array!48647 (arr!23350 (Array (_ BitVec 32) (_ BitVec 64))) (size!23791 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48646)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48646 (_ BitVec 32)) Bool)

(assert (=> b!852191 (= res!578931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852192 () Bool)

(declare-fun res!578933 () Bool)

(assert (=> b!852192 (=> (not res!578933) (not e!475328))))

(declare-datatypes ((List!16613 0))(
  ( (Nil!16610) (Cons!16609 (h!17740 (_ BitVec 64)) (t!23160 List!16613)) )
))
(declare-fun arrayNoDuplicates!0 (array!48646 (_ BitVec 32) List!16613) Bool)

(assert (=> b!852192 (= res!578933 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16610))))

(declare-datatypes ((tuple2!10728 0))(
  ( (tuple2!10729 (_1!5374 (_ BitVec 64)) (_2!5374 V!26685)) )
))
(declare-datatypes ((List!16614 0))(
  ( (Nil!16611) (Cons!16610 (h!17741 tuple2!10728) (t!23161 List!16614)) )
))
(declare-datatypes ((ListLongMap!9511 0))(
  ( (ListLongMap!9512 (toList!4771 List!16614)) )
))
(declare-fun call!38135 () ListLongMap!9511)

(declare-fun v!557 () V!26685)

(declare-fun call!38134 () ListLongMap!9511)

(declare-fun e!475330 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun b!852193 () Bool)

(declare-fun +!2112 (ListLongMap!9511 tuple2!10728) ListLongMap!9511)

(assert (=> b!852193 (= e!475330 (= call!38134 (+!2112 call!38135 (tuple2!10729 k!854 v!557))))))

(declare-fun b!852194 () Bool)

(assert (=> b!852194 (= e!475330 (= call!38134 call!38135))))

(declare-fun b!852195 () Bool)

(declare-fun res!578938 () Bool)

(assert (=> b!852195 (=> (not res!578938) (not e!475328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852195 (= res!578938 (validKeyInArray!0 k!854))))

(declare-fun b!852197 () Bool)

(declare-fun res!578940 () Bool)

(assert (=> b!852197 (=> (not res!578940) (not e!475328))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852197 (= res!578940 (and (= (select (arr!23350 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852198 () Bool)

(declare-fun res!578932 () Bool)

(assert (=> b!852198 (=> (not res!578932) (not e!475328))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!852198 (= res!578932 (and (= (size!23790 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23791 _keys!868) (size!23790 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852199 () Bool)

(declare-fun res!578939 () Bool)

(assert (=> b!852199 (=> (not res!578939) (not e!475328))))

(assert (=> b!852199 (= res!578939 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23791 _keys!868))))))

(declare-fun b!852200 () Bool)

(declare-fun e!475326 () Bool)

(declare-fun e!475331 () Bool)

(assert (=> b!852200 (= e!475326 (and e!475331 mapRes!25943))))

(declare-fun condMapEmpty!25943 () Bool)

(declare-fun mapDefault!25943 () ValueCell!7675)


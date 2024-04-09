; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73730 () Bool)

(assert start!73730)

(declare-fun b_free!14617 () Bool)

(declare-fun b_next!14617 () Bool)

(assert (=> start!73730 (= b_free!14617 (not b_next!14617))))

(declare-fun tp!51356 () Bool)

(declare-fun b_and!24231 () Bool)

(assert (=> start!73730 (= tp!51356 b_and!24231)))

(declare-fun b!863525 () Bool)

(declare-fun e!481103 () Bool)

(declare-fun e!481109 () Bool)

(assert (=> b!863525 (= e!481103 e!481109)))

(declare-fun res!586900 () Bool)

(assert (=> b!863525 (=> res!586900 e!481109)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49650 0))(
  ( (array!49651 (arr!23852 (Array (_ BitVec 32) (_ BitVec 64))) (size!24293 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49650)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!863525 (= res!586900 (= k!854 (select (arr!23852 _keys!868) from!1053)))))

(assert (=> b!863525 (not (= (select (arr!23852 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29491 0))(
  ( (Unit!29492) )
))
(declare-fun lt!390403 () Unit!29491)

(declare-fun e!481108 () Unit!29491)

(assert (=> b!863525 (= lt!390403 e!481108)))

(declare-fun c!92064 () Bool)

(assert (=> b!863525 (= c!92064 (= (select (arr!23852 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27385 0))(
  ( (V!27386 (val!8424 Int)) )
))
(declare-datatypes ((tuple2!11148 0))(
  ( (tuple2!11149 (_1!5584 (_ BitVec 64)) (_2!5584 V!27385)) )
))
(declare-datatypes ((List!17017 0))(
  ( (Nil!17014) (Cons!17013 (h!18144 tuple2!11148) (t!23908 List!17017)) )
))
(declare-datatypes ((ListLongMap!9931 0))(
  ( (ListLongMap!9932 (toList!4981 List!17017)) )
))
(declare-fun lt!390406 () ListLongMap!9931)

(declare-fun lt!390410 () ListLongMap!9931)

(assert (=> b!863525 (= lt!390406 lt!390410)))

(declare-fun lt!390412 () ListLongMap!9931)

(declare-fun lt!390407 () tuple2!11148)

(declare-fun +!2278 (ListLongMap!9931 tuple2!11148) ListLongMap!9931)

(assert (=> b!863525 (= lt!390410 (+!2278 lt!390412 lt!390407))))

(declare-fun lt!390402 () V!27385)

(assert (=> b!863525 (= lt!390407 (tuple2!11149 (select (arr!23852 _keys!868) from!1053) lt!390402))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7937 0))(
  ( (ValueCellFull!7937 (v!10845 V!27385)) (EmptyCell!7937) )
))
(declare-datatypes ((array!49652 0))(
  ( (array!49653 (arr!23853 (Array (_ BitVec 32) ValueCell!7937)) (size!24294 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49652)

(declare-fun get!12608 (ValueCell!7937 V!27385) V!27385)

(declare-fun dynLambda!1152 (Int (_ BitVec 64)) V!27385)

(assert (=> b!863525 (= lt!390402 (get!12608 (select (arr!23853 _values!688) from!1053) (dynLambda!1152 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863526 () Bool)

(declare-fun res!586896 () Bool)

(declare-fun e!481102 () Bool)

(assert (=> b!863526 (=> (not res!586896) (not e!481102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863526 (= res!586896 (validKeyInArray!0 k!854))))

(declare-fun b!863527 () Bool)

(declare-fun Unit!29493 () Unit!29491)

(assert (=> b!863527 (= e!481108 Unit!29493)))

(declare-fun mapNonEmpty!26729 () Bool)

(declare-fun mapRes!26729 () Bool)

(declare-fun tp!51355 () Bool)

(declare-fun e!481104 () Bool)

(assert (=> mapNonEmpty!26729 (= mapRes!26729 (and tp!51355 e!481104))))

(declare-fun mapRest!26729 () (Array (_ BitVec 32) ValueCell!7937))

(declare-fun mapKey!26729 () (_ BitVec 32))

(declare-fun mapValue!26729 () ValueCell!7937)

(assert (=> mapNonEmpty!26729 (= (arr!23853 _values!688) (store mapRest!26729 mapKey!26729 mapValue!26729))))

(declare-fun b!863528 () Bool)

(declare-fun res!586892 () Bool)

(assert (=> b!863528 (=> (not res!586892) (not e!481102))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49650 (_ BitVec 32)) Bool)

(assert (=> b!863528 (= res!586892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863529 () Bool)

(declare-fun e!481105 () Bool)

(declare-fun e!481110 () Bool)

(assert (=> b!863529 (= e!481105 (and e!481110 mapRes!26729))))

(declare-fun condMapEmpty!26729 () Bool)

(declare-fun mapDefault!26729 () ValueCell!7937)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39702 () Bool)

(assert start!39702)

(declare-fun b_free!9961 () Bool)

(declare-fun b_next!9961 () Bool)

(assert (=> start!39702 (= b_free!9961 (not b_next!9961))))

(declare-fun tp!35411 () Bool)

(declare-fun b_and!17635 () Bool)

(assert (=> start!39702 (= tp!35411 b_and!17635)))

(declare-fun b!426284 () Bool)

(declare-fun res!249892 () Bool)

(declare-fun e!252915 () Bool)

(assert (=> b!426284 (=> (not res!249892) (not e!252915))))

(declare-datatypes ((array!26051 0))(
  ( (array!26052 (arr!12472 (Array (_ BitVec 32) (_ BitVec 64))) (size!12824 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26051)

(declare-datatypes ((List!7347 0))(
  ( (Nil!7344) (Cons!7343 (h!8199 (_ BitVec 64)) (t!12799 List!7347)) )
))
(declare-fun arrayNoDuplicates!0 (array!26051 (_ BitVec 32) List!7347) Bool)

(assert (=> b!426284 (= res!249892 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7344))))

(declare-fun b!426285 () Bool)

(declare-fun res!249889 () Bool)

(assert (=> b!426285 (=> (not res!249889) (not e!252915))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426285 (= res!249889 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!426286 () Bool)

(declare-fun e!252913 () Bool)

(declare-fun e!252910 () Bool)

(assert (=> b!426286 (= e!252913 e!252910)))

(declare-fun res!249895 () Bool)

(assert (=> b!426286 (=> (not res!249895) (not e!252910))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426286 (= res!249895 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15923 0))(
  ( (V!15924 (val!5601 Int)) )
))
(declare-fun minValue!515 () V!15923)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15923)

(declare-datatypes ((ValueCell!5213 0))(
  ( (ValueCellFull!5213 (v!7844 V!15923)) (EmptyCell!5213) )
))
(declare-datatypes ((array!26053 0))(
  ( (array!26054 (arr!12473 (Array (_ BitVec 32) ValueCell!5213)) (size!12825 (_ BitVec 32))) )
))
(declare-fun lt!194939 () array!26053)

(declare-datatypes ((tuple2!7298 0))(
  ( (tuple2!7299 (_1!3659 (_ BitVec 64)) (_2!3659 V!15923)) )
))
(declare-datatypes ((List!7348 0))(
  ( (Nil!7345) (Cons!7344 (h!8200 tuple2!7298) (t!12800 List!7348)) )
))
(declare-datatypes ((ListLongMap!6225 0))(
  ( (ListLongMap!6226 (toList!3128 List!7348)) )
))
(declare-fun lt!194938 () ListLongMap!6225)

(declare-fun lt!194940 () array!26051)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1329 (array!26051 array!26053 (_ BitVec 32) (_ BitVec 32) V!15923 V!15923 (_ BitVec 32) Int) ListLongMap!6225)

(assert (=> b!426286 (= lt!194938 (getCurrentListMapNoExtraKeys!1329 lt!194940 lt!194939 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26053)

(declare-fun v!412 () V!15923)

(assert (=> b!426286 (= lt!194939 (array!26054 (store (arr!12473 _values!549) i!563 (ValueCellFull!5213 v!412)) (size!12825 _values!549)))))

(declare-fun lt!194937 () ListLongMap!6225)

(assert (=> b!426286 (= lt!194937 (getCurrentListMapNoExtraKeys!1329 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426287 () Bool)

(declare-fun res!249894 () Bool)

(assert (=> b!426287 (=> (not res!249894) (not e!252913))))

(assert (=> b!426287 (= res!249894 (arrayNoDuplicates!0 lt!194940 #b00000000000000000000000000000000 Nil!7344))))

(declare-fun b!426288 () Bool)

(declare-fun res!249887 () Bool)

(assert (=> b!426288 (=> (not res!249887) (not e!252913))))

(assert (=> b!426288 (= res!249887 (bvsle from!863 i!563))))

(declare-fun b!426289 () Bool)

(declare-fun res!249891 () Bool)

(assert (=> b!426289 (=> (not res!249891) (not e!252915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426289 (= res!249891 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!18291 () Bool)

(declare-fun mapRes!18291 () Bool)

(declare-fun tp!35412 () Bool)

(declare-fun e!252912 () Bool)

(assert (=> mapNonEmpty!18291 (= mapRes!18291 (and tp!35412 e!252912))))

(declare-fun mapRest!18291 () (Array (_ BitVec 32) ValueCell!5213))

(declare-fun mapValue!18291 () ValueCell!5213)

(declare-fun mapKey!18291 () (_ BitVec 32))

(assert (=> mapNonEmpty!18291 (= (arr!12473 _values!549) (store mapRest!18291 mapKey!18291 mapValue!18291))))

(declare-fun b!426291 () Bool)

(declare-fun tp_is_empty!11113 () Bool)

(assert (=> b!426291 (= e!252912 tp_is_empty!11113)))

(declare-fun b!426292 () Bool)

(declare-fun res!249897 () Bool)

(assert (=> b!426292 (=> (not res!249897) (not e!252915))))

(assert (=> b!426292 (= res!249897 (and (= (size!12825 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12824 _keys!709) (size!12825 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426293 () Bool)

(assert (=> b!426293 (= e!252910 (not true))))

(declare-fun +!1284 (ListLongMap!6225 tuple2!7298) ListLongMap!6225)

(assert (=> b!426293 (= (getCurrentListMapNoExtraKeys!1329 lt!194940 lt!194939 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1284 (getCurrentListMapNoExtraKeys!1329 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7299 k!794 v!412)))))

(declare-datatypes ((Unit!12471 0))(
  ( (Unit!12472) )
))
(declare-fun lt!194936 () Unit!12471)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!486 (array!26051 array!26053 (_ BitVec 32) (_ BitVec 32) V!15923 V!15923 (_ BitVec 32) (_ BitVec 64) V!15923 (_ BitVec 32) Int) Unit!12471)

(assert (=> b!426293 (= lt!194936 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!486 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426294 () Bool)

(declare-fun e!252916 () Bool)

(assert (=> b!426294 (= e!252916 tp_is_empty!11113)))

(declare-fun b!426295 () Bool)

(declare-fun res!249893 () Bool)

(assert (=> b!426295 (=> (not res!249893) (not e!252915))))

(assert (=> b!426295 (= res!249893 (or (= (select (arr!12472 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12472 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426296 () Bool)

(declare-fun res!249885 () Bool)

(assert (=> b!426296 (=> (not res!249885) (not e!252915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426296 (= res!249885 (validMask!0 mask!1025))))

(declare-fun b!426297 () Bool)

(declare-fun e!252911 () Bool)

(assert (=> b!426297 (= e!252911 (and e!252916 mapRes!18291))))

(declare-fun condMapEmpty!18291 () Bool)

(declare-fun mapDefault!18291 () ValueCell!5213)


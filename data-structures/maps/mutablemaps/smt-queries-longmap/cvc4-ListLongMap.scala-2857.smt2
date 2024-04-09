; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41184 () Bool)

(assert start!41184)

(declare-fun b_free!11045 () Bool)

(declare-fun b_next!11045 () Bool)

(assert (=> start!41184 (= b_free!11045 (not b_next!11045))))

(declare-fun tp!38970 () Bool)

(declare-fun b_and!19347 () Bool)

(assert (=> start!41184 (= tp!38970 b_and!19347)))

(declare-fun b!459990 () Bool)

(declare-datatypes ((Unit!13333 0))(
  ( (Unit!13334) )
))
(declare-fun e!268394 () Unit!13333)

(declare-fun Unit!13335 () Unit!13333)

(assert (=> b!459990 (= e!268394 Unit!13335)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!208286 () Unit!13333)

(declare-datatypes ((array!28527 0))(
  ( (array!28528 (arr!13701 (Array (_ BitVec 32) (_ BitVec 64))) (size!14053 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28527)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28527 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13333)

(assert (=> b!459990 (= lt!208286 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459990 false))

(declare-fun b!459991 () Bool)

(declare-fun res!275057 () Bool)

(declare-fun e!268398 () Bool)

(assert (=> b!459991 (=> (not res!275057) (not e!268398))))

(declare-fun arrayContainsKey!0 (array!28527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459991 (= res!275057 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!459992 () Bool)

(declare-fun e!268400 () Bool)

(assert (=> b!459992 (= e!268398 e!268400)))

(declare-fun res!275064 () Bool)

(assert (=> b!459992 (=> (not res!275064) (not e!268400))))

(declare-fun lt!208289 () array!28527)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28527 (_ BitVec 32)) Bool)

(assert (=> b!459992 (= res!275064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208289 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459992 (= lt!208289 (array!28528 (store (arr!13701 _keys!709) i!563 k!794) (size!14053 _keys!709)))))

(declare-fun b!459993 () Bool)

(declare-fun res!275060 () Bool)

(assert (=> b!459993 (=> (not res!275060) (not e!268398))))

(declare-datatypes ((List!8291 0))(
  ( (Nil!8288) (Cons!8287 (h!9143 (_ BitVec 64)) (t!14223 List!8291)) )
))
(declare-fun arrayNoDuplicates!0 (array!28527 (_ BitVec 32) List!8291) Bool)

(assert (=> b!459993 (= res!275060 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8288))))

(declare-fun b!459994 () Bool)

(declare-fun res!275065 () Bool)

(assert (=> b!459994 (=> (not res!275065) (not e!268398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459994 (= res!275065 (validMask!0 mask!1025))))

(declare-fun b!459995 () Bool)

(declare-fun e!268402 () Bool)

(declare-fun e!268399 () Bool)

(assert (=> b!459995 (= e!268402 e!268399)))

(declare-fun res!275066 () Bool)

(assert (=> b!459995 (=> res!275066 e!268399)))

(assert (=> b!459995 (= res!275066 (= k!794 (select (arr!13701 _keys!709) from!863)))))

(assert (=> b!459995 (not (= (select (arr!13701 _keys!709) from!863) k!794))))

(declare-fun lt!208287 () Unit!13333)

(assert (=> b!459995 (= lt!208287 e!268394)))

(declare-fun c!56441 () Bool)

(assert (=> b!459995 (= c!56441 (= (select (arr!13701 _keys!709) from!863) k!794))))

(declare-datatypes ((V!17615 0))(
  ( (V!17616 (val!6236 Int)) )
))
(declare-datatypes ((tuple2!8188 0))(
  ( (tuple2!8189 (_1!4104 (_ BitVec 64)) (_2!4104 V!17615)) )
))
(declare-datatypes ((List!8292 0))(
  ( (Nil!8289) (Cons!8288 (h!9144 tuple2!8188) (t!14224 List!8292)) )
))
(declare-datatypes ((ListLongMap!7115 0))(
  ( (ListLongMap!7116 (toList!3573 List!8292)) )
))
(declare-fun lt!208285 () ListLongMap!7115)

(declare-fun lt!208288 () ListLongMap!7115)

(assert (=> b!459995 (= lt!208285 lt!208288)))

(declare-fun lt!208279 () ListLongMap!7115)

(declare-fun lt!208290 () tuple2!8188)

(declare-fun +!1592 (ListLongMap!7115 tuple2!8188) ListLongMap!7115)

(assert (=> b!459995 (= lt!208288 (+!1592 lt!208279 lt!208290))))

(declare-fun lt!208284 () V!17615)

(assert (=> b!459995 (= lt!208290 (tuple2!8189 (select (arr!13701 _keys!709) from!863) lt!208284))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5848 0))(
  ( (ValueCellFull!5848 (v!8510 V!17615)) (EmptyCell!5848) )
))
(declare-datatypes ((array!28529 0))(
  ( (array!28530 (arr!13702 (Array (_ BitVec 32) ValueCell!5848)) (size!14054 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28529)

(declare-fun get!6775 (ValueCell!5848 V!17615) V!17615)

(declare-fun dynLambda!901 (Int (_ BitVec 64)) V!17615)

(assert (=> b!459995 (= lt!208284 (get!6775 (select (arr!13702 _values!549) from!863) (dynLambda!901 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459996 () Bool)

(declare-fun res!275062 () Bool)

(assert (=> b!459996 (=> (not res!275062) (not e!268398))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!459996 (= res!275062 (and (= (size!14054 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14053 _keys!709) (size!14054 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459997 () Bool)

(declare-fun res!275058 () Bool)

(assert (=> b!459997 (=> (not res!275058) (not e!268398))))

(assert (=> b!459997 (= res!275058 (or (= (select (arr!13701 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13701 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459998 () Bool)

(declare-fun e!268396 () Bool)

(declare-fun tp_is_empty!12383 () Bool)

(assert (=> b!459998 (= e!268396 tp_is_empty!12383)))

(declare-fun b!459999 () Bool)

(declare-fun e!268395 () Bool)

(assert (=> b!459999 (= e!268395 tp_is_empty!12383)))

(declare-fun b!460000 () Bool)

(declare-fun res!275070 () Bool)

(assert (=> b!460000 (=> (not res!275070) (not e!268398))))

(assert (=> b!460000 (= res!275070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!20224 () Bool)

(declare-fun mapRes!20224 () Bool)

(declare-fun tp!38971 () Bool)

(assert (=> mapNonEmpty!20224 (= mapRes!20224 (and tp!38971 e!268395))))

(declare-fun mapValue!20224 () ValueCell!5848)

(declare-fun mapRest!20224 () (Array (_ BitVec 32) ValueCell!5848))

(declare-fun mapKey!20224 () (_ BitVec 32))

(assert (=> mapNonEmpty!20224 (= (arr!13702 _values!549) (store mapRest!20224 mapKey!20224 mapValue!20224))))

(declare-fun res!275068 () Bool)

(assert (=> start!41184 (=> (not res!275068) (not e!268398))))

(assert (=> start!41184 (= res!275068 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14053 _keys!709))))))

(assert (=> start!41184 e!268398))

(assert (=> start!41184 tp_is_empty!12383))

(assert (=> start!41184 tp!38970))

(assert (=> start!41184 true))

(declare-fun e!268397 () Bool)

(declare-fun array_inv!9906 (array!28529) Bool)

(assert (=> start!41184 (and (array_inv!9906 _values!549) e!268397)))

(declare-fun array_inv!9907 (array!28527) Bool)

(assert (=> start!41184 (array_inv!9907 _keys!709)))

(declare-fun b!460001 () Bool)

(declare-fun e!268401 () Bool)

(assert (=> b!460001 (= e!268401 (not e!268402))))

(declare-fun res!275063 () Bool)

(assert (=> b!460001 (=> res!275063 e!268402)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460001 (= res!275063 (not (validKeyInArray!0 (select (arr!13701 _keys!709) from!863))))))

(declare-fun lt!208281 () ListLongMap!7115)

(assert (=> b!460001 (= lt!208281 lt!208279)))

(declare-fun lt!208292 () ListLongMap!7115)

(declare-fun lt!208291 () tuple2!8188)

(assert (=> b!460001 (= lt!208279 (+!1592 lt!208292 lt!208291))))

(declare-fun lt!208282 () array!28529)

(declare-fun minValue!515 () V!17615)

(declare-fun zeroValue!515 () V!17615)

(declare-fun getCurrentListMapNoExtraKeys!1743 (array!28527 array!28529 (_ BitVec 32) (_ BitVec 32) V!17615 V!17615 (_ BitVec 32) Int) ListLongMap!7115)

(assert (=> b!460001 (= lt!208281 (getCurrentListMapNoExtraKeys!1743 lt!208289 lt!208282 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!17615)

(assert (=> b!460001 (= lt!208291 (tuple2!8189 k!794 v!412))))

(assert (=> b!460001 (= lt!208292 (getCurrentListMapNoExtraKeys!1743 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208283 () Unit!13333)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!746 (array!28527 array!28529 (_ BitVec 32) (_ BitVec 32) V!17615 V!17615 (_ BitVec 32) (_ BitVec 64) V!17615 (_ BitVec 32) Int) Unit!13333)

(assert (=> b!460001 (= lt!208283 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!746 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460002 () Bool)

(declare-fun Unit!13336 () Unit!13333)

(assert (=> b!460002 (= e!268394 Unit!13336)))

(declare-fun b!460003 () Bool)

(declare-fun res!275071 () Bool)

(assert (=> b!460003 (=> (not res!275071) (not e!268398))))

(assert (=> b!460003 (= res!275071 (validKeyInArray!0 k!794))))

(declare-fun b!460004 () Bool)

(assert (=> b!460004 (= e!268397 (and e!268396 mapRes!20224))))

(declare-fun condMapEmpty!20224 () Bool)

(declare-fun mapDefault!20224 () ValueCell!5848)


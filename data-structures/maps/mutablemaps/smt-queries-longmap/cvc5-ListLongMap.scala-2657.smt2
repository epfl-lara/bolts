; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39768 () Bool)

(assert start!39768)

(declare-fun b_free!10027 () Bool)

(declare-fun b_next!10027 () Bool)

(assert (=> start!39768 (= b_free!10027 (not b_next!10027))))

(declare-fun tp!35609 () Bool)

(declare-fun b_and!17731 () Bool)

(assert (=> start!39768 (= tp!35609 b_and!17731)))

(declare-fun b!427954 () Bool)

(declare-fun e!253660 () Bool)

(declare-fun tp_is_empty!11179 () Bool)

(assert (=> b!427954 (= e!253660 tp_is_empty!11179)))

(declare-fun mapIsEmpty!18390 () Bool)

(declare-fun mapRes!18390 () Bool)

(assert (=> mapIsEmpty!18390 mapRes!18390))

(declare-fun b!427955 () Bool)

(declare-fun e!253661 () Bool)

(assert (=> b!427955 (= e!253661 tp_is_empty!11179)))

(declare-fun b!427956 () Bool)

(declare-fun e!253659 () Bool)

(declare-fun e!253662 () Bool)

(assert (=> b!427956 (= e!253659 (not e!253662))))

(declare-fun res!251241 () Bool)

(assert (=> b!427956 (=> res!251241 e!253662)))

(declare-datatypes ((array!26175 0))(
  ( (array!26176 (arr!12534 (Array (_ BitVec 32) (_ BitVec 64))) (size!12886 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26175)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427956 (= res!251241 (not (validKeyInArray!0 (select (arr!12534 _keys!709) from!863))))))

(declare-datatypes ((V!16011 0))(
  ( (V!16012 (val!5634 Int)) )
))
(declare-datatypes ((tuple2!7348 0))(
  ( (tuple2!7349 (_1!3684 (_ BitVec 64)) (_2!3684 V!16011)) )
))
(declare-datatypes ((List!7398 0))(
  ( (Nil!7395) (Cons!7394 (h!8250 tuple2!7348) (t!12882 List!7398)) )
))
(declare-datatypes ((ListLongMap!6275 0))(
  ( (ListLongMap!6276 (toList!3153 List!7398)) )
))
(declare-fun lt!195572 () ListLongMap!6275)

(declare-fun lt!195575 () ListLongMap!6275)

(assert (=> b!427956 (= lt!195572 lt!195575)))

(declare-fun lt!195574 () ListLongMap!6275)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16011)

(declare-fun +!1306 (ListLongMap!6275 tuple2!7348) ListLongMap!6275)

(assert (=> b!427956 (= lt!195575 (+!1306 lt!195574 (tuple2!7349 k!794 v!412)))))

(declare-fun minValue!515 () V!16011)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5246 0))(
  ( (ValueCellFull!5246 (v!7877 V!16011)) (EmptyCell!5246) )
))
(declare-datatypes ((array!26177 0))(
  ( (array!26178 (arr!12535 (Array (_ BitVec 32) ValueCell!5246)) (size!12887 (_ BitVec 32))) )
))
(declare-fun lt!195576 () array!26177)

(declare-fun zeroValue!515 () V!16011)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!195578 () array!26175)

(declare-fun getCurrentListMapNoExtraKeys!1353 (array!26175 array!26177 (_ BitVec 32) (_ BitVec 32) V!16011 V!16011 (_ BitVec 32) Int) ListLongMap!6275)

(assert (=> b!427956 (= lt!195572 (getCurrentListMapNoExtraKeys!1353 lt!195578 lt!195576 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!26177)

(assert (=> b!427956 (= lt!195574 (getCurrentListMapNoExtraKeys!1353 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12513 0))(
  ( (Unit!12514) )
))
(declare-fun lt!195573 () Unit!12513)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!507 (array!26175 array!26177 (_ BitVec 32) (_ BitVec 32) V!16011 V!16011 (_ BitVec 32) (_ BitVec 64) V!16011 (_ BitVec 32) Int) Unit!12513)

(assert (=> b!427956 (= lt!195573 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!507 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427957 () Bool)

(declare-fun res!251237 () Bool)

(declare-fun e!253664 () Bool)

(assert (=> b!427957 (=> (not res!251237) (not e!253664))))

(declare-fun arrayContainsKey!0 (array!26175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427957 (= res!251237 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18390 () Bool)

(declare-fun tp!35610 () Bool)

(assert (=> mapNonEmpty!18390 (= mapRes!18390 (and tp!35610 e!253661))))

(declare-fun mapKey!18390 () (_ BitVec 32))

(declare-fun mapValue!18390 () ValueCell!5246)

(declare-fun mapRest!18390 () (Array (_ BitVec 32) ValueCell!5246))

(assert (=> mapNonEmpty!18390 (= (arr!12535 _values!549) (store mapRest!18390 mapKey!18390 mapValue!18390))))

(declare-fun b!427958 () Bool)

(declare-fun res!251235 () Bool)

(assert (=> b!427958 (=> (not res!251235) (not e!253664))))

(assert (=> b!427958 (= res!251235 (and (= (size!12887 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12886 _keys!709) (size!12887 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427959 () Bool)

(declare-fun res!251232 () Bool)

(assert (=> b!427959 (=> (not res!251232) (not e!253664))))

(declare-datatypes ((List!7399 0))(
  ( (Nil!7396) (Cons!7395 (h!8251 (_ BitVec 64)) (t!12883 List!7399)) )
))
(declare-fun arrayNoDuplicates!0 (array!26175 (_ BitVec 32) List!7399) Bool)

(assert (=> b!427959 (= res!251232 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7396))))

(declare-fun b!427960 () Bool)

(declare-fun res!251236 () Bool)

(assert (=> b!427960 (=> (not res!251236) (not e!253664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427960 (= res!251236 (validMask!0 mask!1025))))

(declare-fun b!427961 () Bool)

(assert (=> b!427961 (= e!253662 true)))

(declare-fun lt!195577 () ListLongMap!6275)

(declare-fun get!6216 (ValueCell!5246 V!16011) V!16011)

(declare-fun dynLambda!753 (Int (_ BitVec 64)) V!16011)

(assert (=> b!427961 (= lt!195577 (+!1306 lt!195575 (tuple2!7349 (select (arr!12534 _keys!709) from!863) (get!6216 (select (arr!12535 _values!549) from!863) (dynLambda!753 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427962 () Bool)

(declare-fun res!251239 () Bool)

(assert (=> b!427962 (=> (not res!251239) (not e!253664))))

(assert (=> b!427962 (= res!251239 (validKeyInArray!0 k!794))))

(declare-fun res!251240 () Bool)

(assert (=> start!39768 (=> (not res!251240) (not e!253664))))

(assert (=> start!39768 (= res!251240 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12886 _keys!709))))))

(assert (=> start!39768 e!253664))

(assert (=> start!39768 tp_is_empty!11179))

(assert (=> start!39768 tp!35609))

(assert (=> start!39768 true))

(declare-fun e!253665 () Bool)

(declare-fun array_inv!9122 (array!26177) Bool)

(assert (=> start!39768 (and (array_inv!9122 _values!549) e!253665)))

(declare-fun array_inv!9123 (array!26175) Bool)

(assert (=> start!39768 (array_inv!9123 _keys!709)))

(declare-fun b!427963 () Bool)

(declare-fun res!251234 () Bool)

(assert (=> b!427963 (=> (not res!251234) (not e!253664))))

(assert (=> b!427963 (= res!251234 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12886 _keys!709))))))

(declare-fun b!427964 () Bool)

(declare-fun e!253666 () Bool)

(assert (=> b!427964 (= e!253664 e!253666)))

(declare-fun res!251238 () Bool)

(assert (=> b!427964 (=> (not res!251238) (not e!253666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26175 (_ BitVec 32)) Bool)

(assert (=> b!427964 (= res!251238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195578 mask!1025))))

(assert (=> b!427964 (= lt!195578 (array!26176 (store (arr!12534 _keys!709) i!563 k!794) (size!12886 _keys!709)))))

(declare-fun b!427965 () Bool)

(declare-fun res!251228 () Bool)

(assert (=> b!427965 (=> (not res!251228) (not e!253664))))

(assert (=> b!427965 (= res!251228 (or (= (select (arr!12534 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12534 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427966 () Bool)

(assert (=> b!427966 (= e!253666 e!253659)))

(declare-fun res!251229 () Bool)

(assert (=> b!427966 (=> (not res!251229) (not e!253659))))

(assert (=> b!427966 (= res!251229 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!427966 (= lt!195577 (getCurrentListMapNoExtraKeys!1353 lt!195578 lt!195576 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!427966 (= lt!195576 (array!26178 (store (arr!12535 _values!549) i!563 (ValueCellFull!5246 v!412)) (size!12887 _values!549)))))

(declare-fun lt!195579 () ListLongMap!6275)

(assert (=> b!427966 (= lt!195579 (getCurrentListMapNoExtraKeys!1353 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427967 () Bool)

(declare-fun res!251233 () Bool)

(assert (=> b!427967 (=> (not res!251233) (not e!253666))))

(assert (=> b!427967 (= res!251233 (bvsle from!863 i!563))))

(declare-fun b!427968 () Bool)

(assert (=> b!427968 (= e!253665 (and e!253660 mapRes!18390))))

(declare-fun condMapEmpty!18390 () Bool)

(declare-fun mapDefault!18390 () ValueCell!5246)


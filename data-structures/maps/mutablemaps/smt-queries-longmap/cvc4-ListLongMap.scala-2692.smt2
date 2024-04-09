; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39982 () Bool)

(assert start!39982)

(declare-fun b_free!10241 () Bool)

(declare-fun b_next!10241 () Bool)

(assert (=> start!39982 (= b_free!10241 (not b_next!10241))))

(declare-fun tp!36251 () Bool)

(declare-fun b_and!18159 () Bool)

(assert (=> start!39982 (= tp!36251 b_and!18159)))

(declare-fun b!434477 () Bool)

(declare-fun e!256766 () Bool)

(declare-fun tp_is_empty!11393 () Bool)

(assert (=> b!434477 (= e!256766 tp_is_empty!11393)))

(declare-fun b!434478 () Bool)

(declare-fun res!255957 () Bool)

(declare-fun e!256767 () Bool)

(assert (=> b!434478 (=> (not res!255957) (not e!256767))))

(declare-datatypes ((array!26593 0))(
  ( (array!26594 (arr!12743 (Array (_ BitVec 32) (_ BitVec 64))) (size!13095 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26593)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434478 (= res!255957 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!434479 () Bool)

(declare-fun e!256769 () Bool)

(declare-fun e!256773 () Bool)

(assert (=> b!434479 (= e!256769 e!256773)))

(declare-fun res!255946 () Bool)

(assert (=> b!434479 (=> res!255946 e!256773)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!434479 (= res!255946 (= k!794 (select (arr!12743 _keys!709) from!863)))))

(assert (=> b!434479 (not (= (select (arr!12743 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12847 0))(
  ( (Unit!12848) )
))
(declare-fun lt!199892 () Unit!12847)

(declare-fun e!256768 () Unit!12847)

(assert (=> b!434479 (= lt!199892 e!256768)))

(declare-fun c!55622 () Bool)

(assert (=> b!434479 (= c!55622 (= (select (arr!12743 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16295 0))(
  ( (V!16296 (val!5741 Int)) )
))
(declare-datatypes ((tuple2!7528 0))(
  ( (tuple2!7529 (_1!3774 (_ BitVec 64)) (_2!3774 V!16295)) )
))
(declare-datatypes ((List!7576 0))(
  ( (Nil!7573) (Cons!7572 (h!8428 tuple2!7528) (t!13274 List!7576)) )
))
(declare-datatypes ((ListLongMap!6455 0))(
  ( (ListLongMap!6456 (toList!3243 List!7576)) )
))
(declare-fun lt!199898 () ListLongMap!6455)

(declare-fun lt!199893 () ListLongMap!6455)

(assert (=> b!434479 (= lt!199898 lt!199893)))

(declare-fun lt!199888 () ListLongMap!6455)

(declare-fun lt!199894 () tuple2!7528)

(declare-fun +!1388 (ListLongMap!6455 tuple2!7528) ListLongMap!6455)

(assert (=> b!434479 (= lt!199893 (+!1388 lt!199888 lt!199894))))

(declare-fun lt!199895 () V!16295)

(assert (=> b!434479 (= lt!199894 (tuple2!7529 (select (arr!12743 _keys!709) from!863) lt!199895))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5353 0))(
  ( (ValueCellFull!5353 (v!7984 V!16295)) (EmptyCell!5353) )
))
(declare-datatypes ((array!26595 0))(
  ( (array!26596 (arr!12744 (Array (_ BitVec 32) ValueCell!5353)) (size!13096 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26595)

(declare-fun get!6353 (ValueCell!5353 V!16295) V!16295)

(declare-fun dynLambda!820 (Int (_ BitVec 64)) V!16295)

(assert (=> b!434479 (= lt!199895 (get!6353 (select (arr!12744 _values!549) from!863) (dynLambda!820 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18711 () Bool)

(declare-fun mapRes!18711 () Bool)

(declare-fun tp!36252 () Bool)

(declare-fun e!256772 () Bool)

(assert (=> mapNonEmpty!18711 (= mapRes!18711 (and tp!36252 e!256772))))

(declare-fun mapValue!18711 () ValueCell!5353)

(declare-fun mapRest!18711 () (Array (_ BitVec 32) ValueCell!5353))

(declare-fun mapKey!18711 () (_ BitVec 32))

(assert (=> mapNonEmpty!18711 (= (arr!12744 _values!549) (store mapRest!18711 mapKey!18711 mapValue!18711))))

(declare-fun b!434481 () Bool)

(declare-fun res!255951 () Bool)

(assert (=> b!434481 (=> (not res!255951) (not e!256767))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434481 (= res!255951 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13095 _keys!709))))))

(declare-fun b!434482 () Bool)

(declare-fun res!255955 () Bool)

(assert (=> b!434482 (=> (not res!255955) (not e!256767))))

(assert (=> b!434482 (= res!255955 (or (= (select (arr!12743 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12743 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434483 () Bool)

(declare-fun e!256765 () Bool)

(assert (=> b!434483 (= e!256765 (and e!256766 mapRes!18711))))

(declare-fun condMapEmpty!18711 () Bool)

(declare-fun mapDefault!18711 () ValueCell!5353)


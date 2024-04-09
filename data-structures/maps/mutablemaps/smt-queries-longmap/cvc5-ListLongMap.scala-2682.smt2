; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39918 () Bool)

(assert start!39918)

(declare-fun b_free!10177 () Bool)

(declare-fun b_next!10177 () Bool)

(assert (=> start!39918 (= b_free!10177 (not b_next!10177))))

(declare-fun tp!36060 () Bool)

(declare-fun b_and!18031 () Bool)

(assert (=> start!39918 (= tp!36060 b_and!18031)))

(declare-fun b!432493 () Bool)

(declare-fun res!254506 () Bool)

(declare-fun e!255813 () Bool)

(assert (=> b!432493 (=> (not res!254506) (not e!255813))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432493 (= res!254506 (validKeyInArray!0 k!794))))

(declare-fun b!432494 () Bool)

(declare-fun e!255805 () Bool)

(declare-fun e!255814 () Bool)

(assert (=> b!432494 (= e!255805 e!255814)))

(declare-fun res!254513 () Bool)

(assert (=> b!432494 (=> res!254513 e!255814)))

(declare-datatypes ((array!26469 0))(
  ( (array!26470 (arr!12681 (Array (_ BitVec 32) (_ BitVec 64))) (size!13033 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26469)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432494 (= res!254513 (= k!794 (select (arr!12681 _keys!709) from!863)))))

(assert (=> b!432494 (not (= (select (arr!12681 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12744 0))(
  ( (Unit!12745) )
))
(declare-fun lt!198451 () Unit!12744)

(declare-fun e!255808 () Unit!12744)

(assert (=> b!432494 (= lt!198451 e!255808)))

(declare-fun c!55526 () Bool)

(assert (=> b!432494 (= c!55526 (= (select (arr!12681 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16211 0))(
  ( (V!16212 (val!5709 Int)) )
))
(declare-datatypes ((tuple2!7472 0))(
  ( (tuple2!7473 (_1!3746 (_ BitVec 64)) (_2!3746 V!16211)) )
))
(declare-datatypes ((List!7523 0))(
  ( (Nil!7520) (Cons!7519 (h!8375 tuple2!7472) (t!13157 List!7523)) )
))
(declare-datatypes ((ListLongMap!6399 0))(
  ( (ListLongMap!6400 (toList!3215 List!7523)) )
))
(declare-fun lt!198460 () ListLongMap!6399)

(declare-fun lt!198448 () ListLongMap!6399)

(assert (=> b!432494 (= lt!198460 lt!198448)))

(declare-fun lt!198457 () ListLongMap!6399)

(declare-fun lt!198455 () tuple2!7472)

(declare-fun +!1361 (ListLongMap!6399 tuple2!7472) ListLongMap!6399)

(assert (=> b!432494 (= lt!198448 (+!1361 lt!198457 lt!198455))))

(declare-fun lt!198453 () V!16211)

(assert (=> b!432494 (= lt!198455 (tuple2!7473 (select (arr!12681 _keys!709) from!863) lt!198453))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5321 0))(
  ( (ValueCellFull!5321 (v!7952 V!16211)) (EmptyCell!5321) )
))
(declare-datatypes ((array!26471 0))(
  ( (array!26472 (arr!12682 (Array (_ BitVec 32) ValueCell!5321)) (size!13034 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26471)

(declare-fun get!6311 (ValueCell!5321 V!16211) V!16211)

(declare-fun dynLambda!798 (Int (_ BitVec 64)) V!16211)

(assert (=> b!432494 (= lt!198453 (get!6311 (select (arr!12682 _values!549) from!863) (dynLambda!798 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432495 () Bool)

(declare-fun res!254510 () Bool)

(declare-fun e!255809 () Bool)

(assert (=> b!432495 (=> (not res!254510) (not e!255809))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432495 (= res!254510 (bvsle from!863 i!563))))

(declare-fun b!432496 () Bool)

(declare-fun res!254507 () Bool)

(assert (=> b!432496 (=> (not res!254507) (not e!255813))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432496 (= res!254507 (validMask!0 mask!1025))))

(declare-fun b!432497 () Bool)

(declare-fun res!254520 () Bool)

(assert (=> b!432497 (=> (not res!254520) (not e!255813))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!432497 (= res!254520 (and (= (size!13034 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13033 _keys!709) (size!13034 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432498 () Bool)

(declare-fun e!255810 () Bool)

(declare-fun tp_is_empty!11329 () Bool)

(assert (=> b!432498 (= e!255810 tp_is_empty!11329)))

(declare-fun mapNonEmpty!18615 () Bool)

(declare-fun mapRes!18615 () Bool)

(declare-fun tp!36059 () Bool)

(assert (=> mapNonEmpty!18615 (= mapRes!18615 (and tp!36059 e!255810))))

(declare-fun mapValue!18615 () ValueCell!5321)

(declare-fun mapRest!18615 () (Array (_ BitVec 32) ValueCell!5321))

(declare-fun mapKey!18615 () (_ BitVec 32))

(assert (=> mapNonEmpty!18615 (= (arr!12682 _values!549) (store mapRest!18615 mapKey!18615 mapValue!18615))))

(declare-fun b!432499 () Bool)

(declare-fun e!255807 () Bool)

(declare-fun e!255806 () Bool)

(assert (=> b!432499 (= e!255807 (and e!255806 mapRes!18615))))

(declare-fun condMapEmpty!18615 () Bool)

(declare-fun mapDefault!18615 () ValueCell!5321)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39976 () Bool)

(assert start!39976)

(declare-fun b_free!10235 () Bool)

(declare-fun b_next!10235 () Bool)

(assert (=> start!39976 (= b_free!10235 (not b_next!10235))))

(declare-fun tp!36234 () Bool)

(declare-fun b_and!18147 () Bool)

(assert (=> start!39976 (= tp!36234 b_and!18147)))

(declare-fun mapIsEmpty!18702 () Bool)

(declare-fun mapRes!18702 () Bool)

(assert (=> mapIsEmpty!18702 mapRes!18702))

(declare-fun mapNonEmpty!18702 () Bool)

(declare-fun tp!36233 () Bool)

(declare-fun e!256677 () Bool)

(assert (=> mapNonEmpty!18702 (= mapRes!18702 (and tp!36233 e!256677))))

(declare-datatypes ((V!16287 0))(
  ( (V!16288 (val!5738 Int)) )
))
(declare-datatypes ((ValueCell!5350 0))(
  ( (ValueCellFull!5350 (v!7981 V!16287)) (EmptyCell!5350) )
))
(declare-datatypes ((array!26581 0))(
  ( (array!26582 (arr!12737 (Array (_ BitVec 32) ValueCell!5350)) (size!13089 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26581)

(declare-fun mapValue!18702 () ValueCell!5350)

(declare-fun mapRest!18702 () (Array (_ BitVec 32) ValueCell!5350))

(declare-fun mapKey!18702 () (_ BitVec 32))

(assert (=> mapNonEmpty!18702 (= (arr!12737 _values!549) (store mapRest!18702 mapKey!18702 mapValue!18702))))

(declare-fun b!434292 () Bool)

(declare-fun e!256681 () Bool)

(declare-fun e!256682 () Bool)

(assert (=> b!434292 (= e!256681 e!256682)))

(declare-fun res!255813 () Bool)

(assert (=> b!434292 (=> res!255813 e!256682)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26583 0))(
  ( (array!26584 (arr!12738 (Array (_ BitVec 32) (_ BitVec 64))) (size!13090 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26583)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!434292 (= res!255813 (= k!794 (select (arr!12738 _keys!709) from!863)))))

(assert (=> b!434292 (not (= (select (arr!12738 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12837 0))(
  ( (Unit!12838) )
))
(declare-fun lt!199762 () Unit!12837)

(declare-fun e!256675 () Unit!12837)

(assert (=> b!434292 (= lt!199762 e!256675)))

(declare-fun c!55613 () Bool)

(assert (=> b!434292 (= c!55613 (= (select (arr!12738 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7522 0))(
  ( (tuple2!7523 (_1!3771 (_ BitVec 64)) (_2!3771 V!16287)) )
))
(declare-datatypes ((List!7570 0))(
  ( (Nil!7567) (Cons!7566 (h!8422 tuple2!7522) (t!13262 List!7570)) )
))
(declare-datatypes ((ListLongMap!6449 0))(
  ( (ListLongMap!6450 (toList!3240 List!7570)) )
))
(declare-fun lt!199766 () ListLongMap!6449)

(declare-fun lt!199761 () ListLongMap!6449)

(assert (=> b!434292 (= lt!199766 lt!199761)))

(declare-fun lt!199756 () ListLongMap!6449)

(declare-fun lt!199765 () tuple2!7522)

(declare-fun +!1385 (ListLongMap!6449 tuple2!7522) ListLongMap!6449)

(assert (=> b!434292 (= lt!199761 (+!1385 lt!199756 lt!199765))))

(declare-fun lt!199764 () V!16287)

(assert (=> b!434292 (= lt!199765 (tuple2!7523 (select (arr!12738 _keys!709) from!863) lt!199764))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6348 (ValueCell!5350 V!16287) V!16287)

(declare-fun dynLambda!817 (Int (_ BitVec 64)) V!16287)

(assert (=> b!434292 (= lt!199764 (get!6348 (select (arr!12737 _values!549) from!863) (dynLambda!817 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434293 () Bool)

(declare-fun res!255817 () Bool)

(declare-fun e!256684 () Bool)

(assert (=> b!434293 (=> (not res!255817) (not e!256684))))

(declare-fun lt!199758 () array!26583)

(declare-datatypes ((List!7571 0))(
  ( (Nil!7568) (Cons!7567 (h!8423 (_ BitVec 64)) (t!13263 List!7571)) )
))
(declare-fun arrayNoDuplicates!0 (array!26583 (_ BitVec 32) List!7571) Bool)

(assert (=> b!434293 (= res!255817 (arrayNoDuplicates!0 lt!199758 #b00000000000000000000000000000000 Nil!7568))))

(declare-fun b!434294 () Bool)

(declare-fun res!255821 () Bool)

(declare-fun e!256676 () Bool)

(assert (=> b!434294 (=> (not res!255821) (not e!256676))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!434294 (= res!255821 (and (= (size!13089 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13090 _keys!709) (size!13089 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434295 () Bool)

(declare-fun e!256679 () Bool)

(declare-fun tp_is_empty!11387 () Bool)

(assert (=> b!434295 (= e!256679 tp_is_empty!11387)))

(declare-fun b!434296 () Bool)

(declare-fun res!255815 () Bool)

(assert (=> b!434296 (=> (not res!255815) (not e!256684))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434296 (= res!255815 (bvsle from!863 i!563))))

(declare-fun b!434297 () Bool)

(assert (=> b!434297 (= e!256676 e!256684)))

(declare-fun res!255812 () Bool)

(assert (=> b!434297 (=> (not res!255812) (not e!256684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26583 (_ BitVec 32)) Bool)

(assert (=> b!434297 (= res!255812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199758 mask!1025))))

(assert (=> b!434297 (= lt!199758 (array!26584 (store (arr!12738 _keys!709) i!563 k!794) (size!13090 _keys!709)))))

(declare-fun b!434298 () Bool)

(assert (=> b!434298 (= e!256682 true)))

(declare-fun lt!199763 () tuple2!7522)

(declare-fun lt!199759 () ListLongMap!6449)

(assert (=> b!434298 (= lt!199761 (+!1385 (+!1385 lt!199759 lt!199765) lt!199763))))

(declare-fun lt!199760 () Unit!12837)

(declare-fun v!412 () V!16287)

(declare-fun addCommutativeForDiffKeys!393 (ListLongMap!6449 (_ BitVec 64) V!16287 (_ BitVec 64) V!16287) Unit!12837)

(assert (=> b!434298 (= lt!199760 (addCommutativeForDiffKeys!393 lt!199759 k!794 v!412 (select (arr!12738 _keys!709) from!863) lt!199764))))

(declare-fun b!434299 () Bool)

(declare-fun e!256678 () Bool)

(assert (=> b!434299 (= e!256678 (and e!256679 mapRes!18702))))

(declare-fun condMapEmpty!18702 () Bool)

(declare-fun mapDefault!18702 () ValueCell!5350)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39874 () Bool)

(assert start!39874)

(declare-fun b_free!10133 () Bool)

(declare-fun b_next!10133 () Bool)

(assert (=> start!39874 (= b_free!10133 (not b_next!10133))))

(declare-fun tp!35928 () Bool)

(declare-fun b_and!17943 () Bool)

(assert (=> start!39874 (= tp!35928 b_and!17943)))

(declare-fun b!431129 () Bool)

(declare-fun res!253530 () Bool)

(declare-fun e!255150 () Bool)

(assert (=> b!431129 (=> (not res!253530) (not e!255150))))

(declare-datatypes ((array!26383 0))(
  ( (array!26384 (arr!12638 (Array (_ BitVec 32) (_ BitVec 64))) (size!12990 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26383)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431129 (= res!253530 (or (= (select (arr!12638 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12638 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431130 () Bool)

(declare-fun res!253523 () Bool)

(declare-fun e!255151 () Bool)

(assert (=> b!431130 (=> (not res!253523) (not e!255151))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!431130 (= res!253523 (bvsle from!863 i!563))))

(declare-fun b!431131 () Bool)

(declare-fun e!255148 () Bool)

(declare-fun tp_is_empty!11285 () Bool)

(assert (=> b!431131 (= e!255148 tp_is_empty!11285)))

(declare-fun b!431132 () Bool)

(declare-fun res!253526 () Bool)

(assert (=> b!431132 (=> (not res!253526) (not e!255150))))

(assert (=> b!431132 (= res!253526 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12990 _keys!709))))))

(declare-fun b!431133 () Bool)

(declare-fun res!253519 () Bool)

(assert (=> b!431133 (=> (not res!253519) (not e!255150))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431133 (= res!253519 (validMask!0 mask!1025))))

(declare-fun b!431134 () Bool)

(declare-fun e!255153 () Bool)

(assert (=> b!431134 (= e!255153 true)))

(declare-datatypes ((V!16151 0))(
  ( (V!16152 (val!5687 Int)) )
))
(declare-datatypes ((tuple2!7432 0))(
  ( (tuple2!7433 (_1!3726 (_ BitVec 64)) (_2!3726 V!16151)) )
))
(declare-datatypes ((List!7485 0))(
  ( (Nil!7482) (Cons!7481 (h!8337 tuple2!7432) (t!13075 List!7485)) )
))
(declare-datatypes ((ListLongMap!6359 0))(
  ( (ListLongMap!6360 (toList!3195 List!7485)) )
))
(declare-fun lt!197461 () ListLongMap!6359)

(declare-fun lt!197468 () ListLongMap!6359)

(declare-fun lt!197466 () tuple2!7432)

(declare-fun lt!197471 () tuple2!7432)

(declare-fun +!1343 (ListLongMap!6359 tuple2!7432) ListLongMap!6359)

(assert (=> b!431134 (= lt!197461 (+!1343 (+!1343 lt!197468 lt!197466) lt!197471))))

(declare-datatypes ((Unit!12674 0))(
  ( (Unit!12675) )
))
(declare-fun lt!197470 () Unit!12674)

(declare-fun lt!197463 () V!16151)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16151)

(declare-fun addCommutativeForDiffKeys!359 (ListLongMap!6359 (_ BitVec 64) V!16151 (_ BitVec 64) V!16151) Unit!12674)

(assert (=> b!431134 (= lt!197470 (addCommutativeForDiffKeys!359 lt!197468 k!794 v!412 (select (arr!12638 _keys!709) from!863) lt!197463))))

(declare-fun b!431135 () Bool)

(declare-fun e!255147 () Bool)

(declare-fun mapRes!18549 () Bool)

(assert (=> b!431135 (= e!255147 (and e!255148 mapRes!18549))))

(declare-fun condMapEmpty!18549 () Bool)

(declare-datatypes ((ValueCell!5299 0))(
  ( (ValueCellFull!5299 (v!7930 V!16151)) (EmptyCell!5299) )
))
(declare-datatypes ((array!26385 0))(
  ( (array!26386 (arr!12639 (Array (_ BitVec 32) ValueCell!5299)) (size!12991 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26385)

(declare-fun mapDefault!18549 () ValueCell!5299)


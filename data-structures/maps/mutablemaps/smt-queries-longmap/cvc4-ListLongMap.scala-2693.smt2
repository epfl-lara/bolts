; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39988 () Bool)

(assert start!39988)

(declare-fun b_free!10247 () Bool)

(declare-fun b_next!10247 () Bool)

(assert (=> start!39988 (= b_free!10247 (not b_next!10247))))

(declare-fun tp!36270 () Bool)

(declare-fun b_and!18171 () Bool)

(assert (=> start!39988 (= tp!36270 b_and!18171)))

(declare-fun b!434663 () Bool)

(declare-fun e!256862 () Bool)

(assert (=> b!434663 (= e!256862 true)))

(declare-datatypes ((V!16303 0))(
  ( (V!16304 (val!5744 Int)) )
))
(declare-datatypes ((tuple2!7534 0))(
  ( (tuple2!7535 (_1!3777 (_ BitVec 64)) (_2!3777 V!16303)) )
))
(declare-fun lt!200023 () tuple2!7534)

(declare-datatypes ((List!7581 0))(
  ( (Nil!7578) (Cons!7577 (h!8433 tuple2!7534) (t!13285 List!7581)) )
))
(declare-datatypes ((ListLongMap!6461 0))(
  ( (ListLongMap!6462 (toList!3246 List!7581)) )
))
(declare-fun lt!200032 () ListLongMap!6461)

(declare-fun lt!200030 () tuple2!7534)

(declare-fun lt!200034 () ListLongMap!6461)

(declare-fun +!1391 (ListLongMap!6461 tuple2!7534) ListLongMap!6461)

(assert (=> b!434663 (= lt!200034 (+!1391 (+!1391 lt!200032 lt!200030) lt!200023))))

(declare-datatypes ((Unit!12856 0))(
  ( (Unit!12857) )
))
(declare-fun lt!200037 () Unit!12856)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26605 0))(
  ( (array!26606 (arr!12749 (Array (_ BitVec 32) (_ BitVec 64))) (size!13101 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26605)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!200031 () V!16303)

(declare-fun v!412 () V!16303)

(declare-fun addCommutativeForDiffKeys!397 (ListLongMap!6461 (_ BitVec 64) V!16303 (_ BitVec 64) V!16303) Unit!12856)

(assert (=> b!434663 (= lt!200037 (addCommutativeForDiffKeys!397 lt!200032 k!794 v!412 (select (arr!12749 _keys!709) from!863) lt!200031))))

(declare-fun b!434664 () Bool)

(declare-fun e!256857 () Bool)

(declare-fun tp_is_empty!11399 () Bool)

(assert (=> b!434664 (= e!256857 tp_is_empty!11399)))

(declare-fun b!434665 () Bool)

(declare-fun res!256088 () Bool)

(declare-fun e!256859 () Bool)

(assert (=> b!434665 (=> (not res!256088) (not e!256859))))

(declare-fun lt!200025 () array!26605)

(declare-datatypes ((List!7582 0))(
  ( (Nil!7579) (Cons!7578 (h!8434 (_ BitVec 64)) (t!13286 List!7582)) )
))
(declare-fun arrayNoDuplicates!0 (array!26605 (_ BitVec 32) List!7582) Bool)

(assert (=> b!434665 (= res!256088 (arrayNoDuplicates!0 lt!200025 #b00000000000000000000000000000000 Nil!7579))))

(declare-fun b!434666 () Bool)

(declare-fun e!256856 () Bool)

(declare-fun e!256858 () Bool)

(declare-fun mapRes!18720 () Bool)

(assert (=> b!434666 (= e!256856 (and e!256858 mapRes!18720))))

(declare-fun condMapEmpty!18720 () Bool)

(declare-datatypes ((ValueCell!5356 0))(
  ( (ValueCellFull!5356 (v!7987 V!16303)) (EmptyCell!5356) )
))
(declare-datatypes ((array!26607 0))(
  ( (array!26608 (arr!12750 (Array (_ BitVec 32) ValueCell!5356)) (size!13102 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26607)

(declare-fun mapDefault!18720 () ValueCell!5356)


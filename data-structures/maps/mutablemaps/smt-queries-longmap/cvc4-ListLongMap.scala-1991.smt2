; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34842 () Bool)

(assert start!34842)

(declare-fun b_free!7619 () Bool)

(declare-fun b_next!7619 () Bool)

(assert (=> start!34842 (= b_free!7619 (not b_next!7619))))

(declare-fun tp!26424 () Bool)

(declare-fun b_and!14859 () Bool)

(assert (=> start!34842 (= tp!26424 b_and!14859)))

(declare-fun b!348570 () Bool)

(declare-fun res!193219 () Bool)

(declare-fun e!213555 () Bool)

(assert (=> b!348570 (=> (not res!193219) (not e!213555))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348570 (= res!193219 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12816 () Bool)

(declare-fun mapRes!12816 () Bool)

(assert (=> mapIsEmpty!12816 mapRes!12816))

(declare-fun b!348571 () Bool)

(declare-fun res!193216 () Bool)

(assert (=> b!348571 (=> (not res!193216) (not e!213555))))

(declare-datatypes ((array!18695 0))(
  ( (array!18696 (arr!8854 (Array (_ BitVec 32) (_ BitVec 64))) (size!9206 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18695)

(declare-datatypes ((List!5171 0))(
  ( (Nil!5168) (Cons!5167 (h!6023 (_ BitVec 64)) (t!10309 List!5171)) )
))
(declare-fun arrayNoDuplicates!0 (array!18695 (_ BitVec 32) List!5171) Bool)

(assert (=> b!348571 (= res!193216 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5168))))

(declare-fun b!348572 () Bool)

(declare-fun res!193212 () Bool)

(assert (=> b!348572 (=> (not res!193212) (not e!213555))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11071 0))(
  ( (V!11072 (val!3830 Int)) )
))
(declare-fun zeroValue!1467 () V!11071)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3442 0))(
  ( (ValueCellFull!3442 (v!6009 V!11071)) (EmptyCell!3442) )
))
(declare-datatypes ((array!18697 0))(
  ( (array!18698 (arr!8855 (Array (_ BitVec 32) ValueCell!3442)) (size!9207 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18697)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11071)

(declare-datatypes ((tuple2!5530 0))(
  ( (tuple2!5531 (_1!2775 (_ BitVec 64)) (_2!2775 V!11071)) )
))
(declare-datatypes ((List!5172 0))(
  ( (Nil!5169) (Cons!5168 (h!6024 tuple2!5530) (t!10310 List!5172)) )
))
(declare-datatypes ((ListLongMap!4457 0))(
  ( (ListLongMap!4458 (toList!2244 List!5172)) )
))
(declare-fun contains!2305 (ListLongMap!4457 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1761 (array!18695 array!18697 (_ BitVec 32) (_ BitVec 32) V!11071 V!11071 (_ BitVec 32) Int) ListLongMap!4457)

(assert (=> b!348572 (= res!193212 (not (contains!2305 (getCurrentListMap!1761 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348573 () Bool)

(declare-fun e!213553 () Bool)

(declare-fun e!213556 () Bool)

(assert (=> b!348573 (= e!213553 (and e!213556 mapRes!12816))))

(declare-fun condMapEmpty!12816 () Bool)

(declare-fun mapDefault!12816 () ValueCell!3442)


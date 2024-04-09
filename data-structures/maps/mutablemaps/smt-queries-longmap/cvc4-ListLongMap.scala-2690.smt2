; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39970 () Bool)

(assert start!39970)

(declare-fun b_free!10229 () Bool)

(declare-fun b_next!10229 () Bool)

(assert (=> start!39970 (= b_free!10229 (not b_next!10229))))

(declare-fun tp!36215 () Bool)

(declare-fun b_and!18135 () Bool)

(assert (=> start!39970 (= tp!36215 b_and!18135)))

(declare-fun b!434105 () Bool)

(declare-fun res!255685 () Bool)

(declare-fun e!256585 () Bool)

(assert (=> b!434105 (=> (not res!255685) (not e!256585))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26569 0))(
  ( (array!26570 (arr!12731 (Array (_ BitVec 32) (_ BitVec 64))) (size!13083 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26569)

(assert (=> b!434105 (= res!255685 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13083 _keys!709))))))

(declare-fun b!434106 () Bool)

(declare-fun e!256592 () Bool)

(assert (=> b!434106 (= e!256585 e!256592)))

(declare-fun res!255679 () Bool)

(assert (=> b!434106 (=> (not res!255679) (not e!256592))))

(declare-fun lt!199620 () array!26569)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26569 (_ BitVec 32)) Bool)

(assert (=> b!434106 (= res!255679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199620 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!434106 (= lt!199620 (array!26570 (store (arr!12731 _keys!709) i!563 k!794) (size!13083 _keys!709)))))

(declare-fun b!434107 () Bool)

(declare-fun res!255683 () Bool)

(assert (=> b!434107 (=> (not res!255683) (not e!256585))))

(declare-fun arrayContainsKey!0 (array!26569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434107 (= res!255683 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!434108 () Bool)

(declare-fun res!255677 () Bool)

(assert (=> b!434108 (=> (not res!255677) (not e!256592))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!434108 (= res!255677 (bvsle from!863 i!563))))

(declare-fun b!434109 () Bool)

(declare-fun res!255688 () Bool)

(assert (=> b!434109 (=> (not res!255688) (not e!256592))))

(declare-datatypes ((List!7566 0))(
  ( (Nil!7563) (Cons!7562 (h!8418 (_ BitVec 64)) (t!13252 List!7566)) )
))
(declare-fun arrayNoDuplicates!0 (array!26569 (_ BitVec 32) List!7566) Bool)

(assert (=> b!434109 (= res!255688 (arrayNoDuplicates!0 lt!199620 #b00000000000000000000000000000000 Nil!7563))))

(declare-fun b!434111 () Bool)

(declare-datatypes ((Unit!12828 0))(
  ( (Unit!12829) )
))
(declare-fun e!256593 () Unit!12828)

(declare-fun Unit!12830 () Unit!12828)

(assert (=> b!434111 (= e!256593 Unit!12830)))

(declare-fun b!434112 () Bool)

(declare-fun e!256587 () Bool)

(declare-fun e!256590 () Bool)

(declare-fun mapRes!18693 () Bool)

(assert (=> b!434112 (= e!256587 (and e!256590 mapRes!18693))))

(declare-fun condMapEmpty!18693 () Bool)

(declare-datatypes ((V!16279 0))(
  ( (V!16280 (val!5735 Int)) )
))
(declare-datatypes ((ValueCell!5347 0))(
  ( (ValueCellFull!5347 (v!7978 V!16279)) (EmptyCell!5347) )
))
(declare-datatypes ((array!26571 0))(
  ( (array!26572 (arr!12732 (Array (_ BitVec 32) ValueCell!5347)) (size!13084 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26571)

(declare-fun mapDefault!18693 () ValueCell!5347)


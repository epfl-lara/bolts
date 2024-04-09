; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41086 () Bool)

(assert start!41086)

(declare-fun b_free!10991 () Bool)

(declare-fun b_next!10991 () Bool)

(assert (=> start!41086 (= b_free!10991 (not b_next!10991))))

(declare-fun tp!38803 () Bool)

(declare-fun b_and!19207 () Bool)

(assert (=> start!41086 (= tp!38803 b_and!19207)))

(declare-fun b!458108 () Bool)

(declare-fun res!273776 () Bool)

(declare-fun e!267462 () Bool)

(assert (=> b!458108 (=> (not res!273776) (not e!267462))))

(declare-datatypes ((array!28425 0))(
  ( (array!28426 (arr!13652 (Array (_ BitVec 32) (_ BitVec 64))) (size!14004 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28425)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458108 (= res!273776 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!458109 () Bool)

(declare-fun res!273770 () Bool)

(declare-fun e!267458 () Bool)

(assert (=> b!458109 (=> (not res!273770) (not e!267458))))

(declare-fun lt!207270 () array!28425)

(declare-datatypes ((List!8253 0))(
  ( (Nil!8250) (Cons!8249 (h!9105 (_ BitVec 64)) (t!14131 List!8253)) )
))
(declare-fun arrayNoDuplicates!0 (array!28425 (_ BitVec 32) List!8253) Bool)

(assert (=> b!458109 (= res!273770 (arrayNoDuplicates!0 lt!207270 #b00000000000000000000000000000000 Nil!8250))))

(declare-fun b!458110 () Bool)

(declare-fun res!273766 () Bool)

(assert (=> b!458110 (=> (not res!273766) (not e!267462))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458110 (= res!273766 (validMask!0 mask!1025))))

(declare-fun b!458111 () Bool)

(declare-fun res!273777 () Bool)

(assert (=> b!458111 (=> (not res!273777) (not e!267458))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458111 (= res!273777 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!20137 () Bool)

(declare-fun mapRes!20137 () Bool)

(declare-fun tp!38802 () Bool)

(declare-fun e!267460 () Bool)

(assert (=> mapNonEmpty!20137 (= mapRes!20137 (and tp!38802 e!267460))))

(declare-datatypes ((V!17543 0))(
  ( (V!17544 (val!6209 Int)) )
))
(declare-datatypes ((ValueCell!5821 0))(
  ( (ValueCellFull!5821 (v!8475 V!17543)) (EmptyCell!5821) )
))
(declare-fun mapRest!20137 () (Array (_ BitVec 32) ValueCell!5821))

(declare-fun mapKey!20137 () (_ BitVec 32))

(declare-datatypes ((array!28427 0))(
  ( (array!28428 (arr!13653 (Array (_ BitVec 32) ValueCell!5821)) (size!14005 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28427)

(declare-fun mapValue!20137 () ValueCell!5821)

(assert (=> mapNonEmpty!20137 (= (arr!13653 _values!549) (store mapRest!20137 mapKey!20137 mapValue!20137))))

(declare-fun b!458112 () Bool)

(declare-fun res!273775 () Bool)

(assert (=> b!458112 (=> (not res!273775) (not e!267462))))

(assert (=> b!458112 (= res!273775 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8250))))

(declare-fun b!458113 () Bool)

(declare-fun e!267461 () Bool)

(declare-fun e!267457 () Bool)

(assert (=> b!458113 (= e!267461 (and e!267457 mapRes!20137))))

(declare-fun condMapEmpty!20137 () Bool)

(declare-fun mapDefault!20137 () ValueCell!5821)


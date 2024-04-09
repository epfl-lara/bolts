; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41070 () Bool)

(assert start!41070)

(declare-fun b_free!10975 () Bool)

(declare-fun b_next!10975 () Bool)

(assert (=> start!41070 (= b_free!10975 (not b_next!10975))))

(declare-fun tp!38755 () Bool)

(declare-fun b_and!19175 () Bool)

(assert (=> start!41070 (= tp!38755 b_and!19175)))

(declare-fun b!457684 () Bool)

(declare-fun res!273437 () Bool)

(declare-fun e!267268 () Bool)

(assert (=> b!457684 (=> (not res!273437) (not e!267268))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28393 0))(
  ( (array!28394 (arr!13636 (Array (_ BitVec 32) (_ BitVec 64))) (size!13988 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28393)

(assert (=> b!457684 (= res!273437 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13988 _keys!709))))))

(declare-fun b!457685 () Bool)

(declare-fun res!273429 () Bool)

(assert (=> b!457685 (=> (not res!273429) (not e!267268))))

(declare-datatypes ((List!8238 0))(
  ( (Nil!8235) (Cons!8234 (h!9090 (_ BitVec 64)) (t!14100 List!8238)) )
))
(declare-fun arrayNoDuplicates!0 (array!28393 (_ BitVec 32) List!8238) Bool)

(assert (=> b!457685 (= res!273429 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8235))))

(declare-fun b!457686 () Bool)

(declare-fun res!273435 () Bool)

(assert (=> b!457686 (=> (not res!273435) (not e!267268))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457686 (= res!273435 (validMask!0 mask!1025))))

(declare-fun b!457687 () Bool)

(declare-fun res!273441 () Bool)

(assert (=> b!457687 (=> (not res!273441) (not e!267268))))

(assert (=> b!457687 (= res!273441 (or (= (select (arr!13636 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13636 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457688 () Bool)

(declare-fun e!267266 () Bool)

(declare-fun e!267271 () Bool)

(declare-fun mapRes!20113 () Bool)

(assert (=> b!457688 (= e!267266 (and e!267271 mapRes!20113))))

(declare-fun condMapEmpty!20113 () Bool)

(declare-datatypes ((V!17523 0))(
  ( (V!17524 (val!6201 Int)) )
))
(declare-datatypes ((ValueCell!5813 0))(
  ( (ValueCellFull!5813 (v!8467 V!17523)) (EmptyCell!5813) )
))
(declare-datatypes ((array!28395 0))(
  ( (array!28396 (arr!13637 (Array (_ BitVec 32) ValueCell!5813)) (size!13989 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28395)

(declare-fun mapDefault!20113 () ValueCell!5813)


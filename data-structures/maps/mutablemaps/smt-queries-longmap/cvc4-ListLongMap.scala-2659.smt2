; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39784 () Bool)

(assert start!39784)

(declare-fun b_free!10043 () Bool)

(declare-fun b_next!10043 () Bool)

(assert (=> start!39784 (= b_free!10043 (not b_next!10043))))

(declare-fun tp!35657 () Bool)

(declare-fun b_and!17763 () Bool)

(assert (=> start!39784 (= tp!35657 b_and!17763)))

(declare-fun b!428413 () Bool)

(declare-fun e!253873 () Bool)

(declare-fun e!253874 () Bool)

(assert (=> b!428413 (= e!253873 e!253874)))

(declare-fun res!251576 () Bool)

(assert (=> b!428413 (=> (not res!251576) (not e!253874))))

(declare-datatypes ((array!26207 0))(
  ( (array!26208 (arr!12550 (Array (_ BitVec 32) (_ BitVec 64))) (size!12902 (_ BitVec 32))) )
))
(declare-fun lt!195802 () array!26207)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26207 (_ BitVec 32)) Bool)

(assert (=> b!428413 (= res!251576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195802 mask!1025))))

(declare-fun _keys!709 () array!26207)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428413 (= lt!195802 (array!26208 (store (arr!12550 _keys!709) i!563 k!794) (size!12902 _keys!709)))))

(declare-fun b!428414 () Bool)

(declare-fun e!253868 () Bool)

(declare-fun e!253869 () Bool)

(declare-fun mapRes!18414 () Bool)

(assert (=> b!428414 (= e!253868 (and e!253869 mapRes!18414))))

(declare-fun condMapEmpty!18414 () Bool)

(declare-datatypes ((V!16031 0))(
  ( (V!16032 (val!5642 Int)) )
))
(declare-datatypes ((ValueCell!5254 0))(
  ( (ValueCellFull!5254 (v!7885 V!16031)) (EmptyCell!5254) )
))
(declare-datatypes ((array!26209 0))(
  ( (array!26210 (arr!12551 (Array (_ BitVec 32) ValueCell!5254)) (size!12903 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26209)

(declare-fun mapDefault!18414 () ValueCell!5254)


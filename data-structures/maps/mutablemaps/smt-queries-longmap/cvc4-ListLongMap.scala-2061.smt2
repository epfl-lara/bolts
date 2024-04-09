; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35546 () Bool)

(assert start!35546)

(declare-fun res!197513 () Bool)

(declare-fun e!218120 () Bool)

(assert (=> start!35546 (=> (not res!197513) (not e!218120))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35546 (= res!197513 (validMask!0 mask!1842))))

(assert (=> start!35546 e!218120))

(assert (=> start!35546 true))

(declare-datatypes ((V!11631 0))(
  ( (V!11632 (val!4040 Int)) )
))
(declare-datatypes ((ValueCell!3652 0))(
  ( (ValueCellFull!3652 (v!6230 V!11631)) (EmptyCell!3652) )
))
(declare-datatypes ((array!19525 0))(
  ( (array!19526 (arr!9253 (Array (_ BitVec 32) ValueCell!3652)) (size!9605 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19525)

(declare-fun e!218118 () Bool)

(declare-fun array_inv!6814 (array!19525) Bool)

(assert (=> start!35546 (and (array_inv!6814 _values!1208) e!218118)))

(declare-datatypes ((array!19527 0))(
  ( (array!19528 (arr!9254 (Array (_ BitVec 32) (_ BitVec 64))) (size!9606 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19527)

(declare-fun array_inv!6815 (array!19527) Bool)

(assert (=> start!35546 (array_inv!6815 _keys!1456)))

(declare-fun mapNonEmpty!13494 () Bool)

(declare-fun mapRes!13494 () Bool)

(declare-fun tp!27471 () Bool)

(declare-fun e!218116 () Bool)

(assert (=> mapNonEmpty!13494 (= mapRes!13494 (and tp!27471 e!218116))))

(declare-fun mapValue!13494 () ValueCell!3652)

(declare-fun mapRest!13494 () (Array (_ BitVec 32) ValueCell!3652))

(declare-fun mapKey!13494 () (_ BitVec 32))

(assert (=> mapNonEmpty!13494 (= (arr!9253 _values!1208) (store mapRest!13494 mapKey!13494 mapValue!13494))))

(declare-fun b!355911 () Bool)

(assert (=> b!355911 (= e!218120 false)))

(declare-fun lt!165862 () Bool)

(declare-datatypes ((List!5381 0))(
  ( (Nil!5378) (Cons!5377 (h!6233 (_ BitVec 64)) (t!10539 List!5381)) )
))
(declare-fun arrayNoDuplicates!0 (array!19527 (_ BitVec 32) List!5381) Bool)

(assert (=> b!355911 (= lt!165862 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5378))))

(declare-fun b!355912 () Bool)

(declare-fun e!218117 () Bool)

(assert (=> b!355912 (= e!218118 (and e!218117 mapRes!13494))))

(declare-fun condMapEmpty!13494 () Bool)

(declare-fun mapDefault!13494 () ValueCell!3652)


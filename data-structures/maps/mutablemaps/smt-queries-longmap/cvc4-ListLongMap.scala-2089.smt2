; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35714 () Bool)

(assert start!35714)

(declare-fun b!358440 () Bool)

(declare-fun e!219457 () Bool)

(declare-fun tp_is_empty!8159 () Bool)

(assert (=> b!358440 (= e!219457 tp_is_empty!8159)))

(declare-fun b!358441 () Bool)

(declare-fun e!219461 () Bool)

(assert (=> b!358441 (= e!219461 false)))

(declare-fun lt!166186 () Bool)

(declare-datatypes ((array!19845 0))(
  ( (array!19846 (arr!9413 (Array (_ BitVec 32) (_ BitVec 64))) (size!9765 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19845)

(declare-datatypes ((List!5459 0))(
  ( (Nil!5456) (Cons!5455 (h!6311 (_ BitVec 64)) (t!10617 List!5459)) )
))
(declare-fun arrayNoDuplicates!0 (array!19845 (_ BitVec 32) List!5459) Bool)

(assert (=> b!358441 (= lt!166186 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5456))))

(declare-fun mapIsEmpty!13746 () Bool)

(declare-fun mapRes!13746 () Bool)

(assert (=> mapIsEmpty!13746 mapRes!13746))

(declare-fun res!199288 () Bool)

(assert (=> start!35714 (=> (not res!199288) (not e!219461))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35714 (= res!199288 (validMask!0 mask!1842))))

(assert (=> start!35714 e!219461))

(assert (=> start!35714 true))

(declare-datatypes ((V!11855 0))(
  ( (V!11856 (val!4124 Int)) )
))
(declare-datatypes ((ValueCell!3736 0))(
  ( (ValueCellFull!3736 (v!6314 V!11855)) (EmptyCell!3736) )
))
(declare-datatypes ((array!19847 0))(
  ( (array!19848 (arr!9414 (Array (_ BitVec 32) ValueCell!3736)) (size!9766 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19847)

(declare-fun e!219460 () Bool)

(declare-fun array_inv!6920 (array!19847) Bool)

(assert (=> start!35714 (and (array_inv!6920 _values!1208) e!219460)))

(declare-fun array_inv!6921 (array!19845) Bool)

(assert (=> start!35714 (array_inv!6921 _keys!1456)))

(declare-fun b!358442 () Bool)

(declare-fun e!219458 () Bool)

(assert (=> b!358442 (= e!219460 (and e!219458 mapRes!13746))))

(declare-fun condMapEmpty!13746 () Bool)

(declare-fun mapDefault!13746 () ValueCell!3736)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38442 () Bool)

(assert start!38442)

(declare-fun mapNonEmpty!16401 () Bool)

(declare-fun mapRes!16401 () Bool)

(declare-fun tp!32196 () Bool)

(declare-fun e!239755 () Bool)

(assert (=> mapNonEmpty!16401 (= mapRes!16401 (and tp!32196 e!239755))))

(declare-fun mapKey!16401 () (_ BitVec 32))

(declare-datatypes ((V!14243 0))(
  ( (V!14244 (val!4971 Int)) )
))
(declare-datatypes ((ValueCell!4583 0))(
  ( (ValueCellFull!4583 (v!7214 V!14243)) (EmptyCell!4583) )
))
(declare-fun mapRest!16401 () (Array (_ BitVec 32) ValueCell!4583))

(declare-datatypes ((array!23595 0))(
  ( (array!23596 (arr!11244 (Array (_ BitVec 32) ValueCell!4583)) (size!11596 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23595)

(declare-fun mapValue!16401 () ValueCell!4583)

(assert (=> mapNonEmpty!16401 (= (arr!11244 _values!549) (store mapRest!16401 mapKey!16401 mapValue!16401))))

(declare-fun b!396164 () Bool)

(declare-fun res!227329 () Bool)

(declare-fun e!239750 () Bool)

(assert (=> b!396164 (=> (not res!227329) (not e!239750))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396164 (= res!227329 (validMask!0 mask!1025))))

(declare-fun b!396165 () Bool)

(declare-fun e!239751 () Bool)

(assert (=> b!396165 (= e!239751 false)))

(declare-fun lt!187101 () Bool)

(declare-datatypes ((array!23597 0))(
  ( (array!23598 (arr!11245 (Array (_ BitVec 32) (_ BitVec 64))) (size!11597 (_ BitVec 32))) )
))
(declare-fun lt!187100 () array!23597)

(declare-datatypes ((List!6490 0))(
  ( (Nil!6487) (Cons!6486 (h!7342 (_ BitVec 64)) (t!11672 List!6490)) )
))
(declare-fun arrayNoDuplicates!0 (array!23597 (_ BitVec 32) List!6490) Bool)

(assert (=> b!396165 (= lt!187101 (arrayNoDuplicates!0 lt!187100 #b00000000000000000000000000000000 Nil!6487))))

(declare-fun b!396166 () Bool)

(declare-fun res!227332 () Bool)

(assert (=> b!396166 (=> (not res!227332) (not e!239750))))

(declare-fun _keys!709 () array!23597)

(assert (=> b!396166 (= res!227332 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6487))))

(declare-fun b!396167 () Bool)

(declare-fun e!239754 () Bool)

(declare-fun e!239753 () Bool)

(assert (=> b!396167 (= e!239754 (and e!239753 mapRes!16401))))

(declare-fun condMapEmpty!16401 () Bool)

(declare-fun mapDefault!16401 () ValueCell!4583)


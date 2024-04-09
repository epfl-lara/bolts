; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33376 () Bool)

(assert start!33376)

(declare-fun mapIsEmpty!11367 () Bool)

(declare-fun mapRes!11367 () Bool)

(assert (=> mapIsEmpty!11367 mapRes!11367))

(declare-fun mapNonEmpty!11367 () Bool)

(declare-fun tp!23742 () Bool)

(declare-fun e!203317 () Bool)

(assert (=> mapNonEmpty!11367 (= mapRes!11367 (and tp!23742 e!203317))))

(declare-fun mapKey!11367 () (_ BitVec 32))

(declare-datatypes ((V!9863 0))(
  ( (V!9864 (val!3377 Int)) )
))
(declare-datatypes ((ValueCell!2989 0))(
  ( (ValueCellFull!2989 (v!5531 V!9863)) (EmptyCell!2989) )
))
(declare-datatypes ((array!16925 0))(
  ( (array!16926 (arr!7999 (Array (_ BitVec 32) ValueCell!2989)) (size!8351 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16925)

(declare-fun mapRest!11367 () (Array (_ BitVec 32) ValueCell!2989))

(declare-fun mapValue!11367 () ValueCell!2989)

(assert (=> mapNonEmpty!11367 (= (arr!7999 _values!1525) (store mapRest!11367 mapKey!11367 mapValue!11367))))

(declare-fun res!182655 () Bool)

(declare-fun e!203318 () Bool)

(assert (=> start!33376 (=> (not res!182655) (not e!203318))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33376 (= res!182655 (validMask!0 mask!2385))))

(assert (=> start!33376 e!203318))

(assert (=> start!33376 true))

(declare-fun e!203319 () Bool)

(declare-fun array_inv!5952 (array!16925) Bool)

(assert (=> start!33376 (and (array_inv!5952 _values!1525) e!203319)))

(declare-datatypes ((array!16927 0))(
  ( (array!16928 (arr!8000 (Array (_ BitVec 32) (_ BitVec 64))) (size!8352 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16927)

(declare-fun array_inv!5953 (array!16927) Bool)

(assert (=> start!33376 (array_inv!5953 _keys!1895)))

(declare-fun b!331368 () Bool)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331368 (= e!203318 (and (= (size!8351 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8352 _keys!1895) (size!8351 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011) (not (= (size!8352 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun b!331369 () Bool)

(declare-fun e!203316 () Bool)

(assert (=> b!331369 (= e!203319 (and e!203316 mapRes!11367))))

(declare-fun condMapEmpty!11367 () Bool)

(declare-fun mapDefault!11367 () ValueCell!2989)


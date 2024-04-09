; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33980 () Bool)

(assert start!33980)

(declare-fun b_free!7103 () Bool)

(declare-fun b_next!7103 () Bool)

(assert (=> start!33980 (= b_free!7103 (not b_next!7103))))

(declare-fun tp!24827 () Bool)

(declare-fun b_and!14311 () Bool)

(assert (=> start!33980 (= tp!24827 b_and!14311)))

(declare-fun mapNonEmpty!11994 () Bool)

(declare-fun mapRes!11994 () Bool)

(declare-fun tp!24828 () Bool)

(declare-fun e!207486 () Bool)

(assert (=> mapNonEmpty!11994 (= mapRes!11994 (and tp!24828 e!207486))))

(declare-datatypes ((V!10383 0))(
  ( (V!10384 (val!3572 Int)) )
))
(declare-datatypes ((ValueCell!3184 0))(
  ( (ValueCellFull!3184 (v!5735 V!10383)) (EmptyCell!3184) )
))
(declare-fun mapValue!11994 () ValueCell!3184)

(declare-fun mapKey!11994 () (_ BitVec 32))

(declare-datatypes ((array!17677 0))(
  ( (array!17678 (arr!8361 (Array (_ BitVec 32) ValueCell!3184)) (size!8713 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17677)

(declare-fun mapRest!11994 () (Array (_ BitVec 32) ValueCell!3184))

(assert (=> mapNonEmpty!11994 (= (arr!8361 _values!1525) (store mapRest!11994 mapKey!11994 mapValue!11994))))

(declare-fun b!338129 () Bool)

(declare-datatypes ((Unit!10483 0))(
  ( (Unit!10484) )
))
(declare-fun e!207484 () Unit!10483)

(declare-fun Unit!10485 () Unit!10483)

(assert (=> b!338129 (= e!207484 Unit!10485)))

(declare-fun b!338130 () Bool)

(declare-fun res!186844 () Bool)

(declare-fun e!207487 () Bool)

(assert (=> b!338130 (=> (not res!186844) (not e!207487))))

(declare-datatypes ((array!17679 0))(
  ( (array!17680 (arr!8362 (Array (_ BitVec 32) (_ BitVec 64))) (size!8714 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17679)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17679 (_ BitVec 32)) Bool)

(assert (=> b!338130 (= res!186844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338131 () Bool)

(declare-fun e!207489 () Bool)

(declare-fun e!207485 () Bool)

(assert (=> b!338131 (= e!207489 (and e!207485 mapRes!11994))))

(declare-fun condMapEmpty!11994 () Bool)

(declare-fun mapDefault!11994 () ValueCell!3184)


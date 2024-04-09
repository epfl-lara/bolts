; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38926 () Bool)

(assert start!38926)

(declare-fun b!406898 () Bool)

(declare-fun res!235241 () Bool)

(declare-fun e!244435 () Bool)

(assert (=> b!406898 (=> (not res!235241) (not e!244435))))

(declare-datatypes ((array!24529 0))(
  ( (array!24530 (arr!11711 (Array (_ BitVec 32) (_ BitVec 64))) (size!12063 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24529)

(declare-datatypes ((List!6775 0))(
  ( (Nil!6772) (Cons!6771 (h!7627 (_ BitVec 64)) (t!11957 List!6775)) )
))
(declare-fun arrayNoDuplicates!0 (array!24529 (_ BitVec 32) List!6775) Bool)

(assert (=> b!406898 (= res!235241 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6772))))

(declare-fun b!406899 () Bool)

(declare-fun res!235236 () Bool)

(assert (=> b!406899 (=> (not res!235236) (not e!244435))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406899 (= res!235236 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12063 _keys!709))))))

(declare-fun b!406900 () Bool)

(declare-fun e!244430 () Bool)

(declare-fun tp_is_empty!10337 () Bool)

(assert (=> b!406900 (= e!244430 tp_is_empty!10337)))

(declare-fun b!406901 () Bool)

(declare-fun e!244432 () Bool)

(declare-fun e!244434 () Bool)

(declare-fun mapRes!17127 () Bool)

(assert (=> b!406901 (= e!244432 (and e!244434 mapRes!17127))))

(declare-fun condMapEmpty!17127 () Bool)

(declare-datatypes ((V!14887 0))(
  ( (V!14888 (val!5213 Int)) )
))
(declare-datatypes ((ValueCell!4825 0))(
  ( (ValueCellFull!4825 (v!7456 V!14887)) (EmptyCell!4825) )
))
(declare-datatypes ((array!24531 0))(
  ( (array!24532 (arr!11712 (Array (_ BitVec 32) ValueCell!4825)) (size!12064 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24531)

(declare-fun mapDefault!17127 () ValueCell!4825)


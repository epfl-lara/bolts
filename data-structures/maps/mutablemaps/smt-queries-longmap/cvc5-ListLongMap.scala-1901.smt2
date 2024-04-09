; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33904 () Bool)

(assert start!33904)

(declare-fun b_free!7075 () Bool)

(declare-fun b_next!7075 () Bool)

(assert (=> start!33904 (= b_free!7075 (not b_next!7075))))

(declare-fun tp!24738 () Bool)

(declare-fun b_and!14279 () Bool)

(assert (=> start!33904 (= tp!24738 b_and!14279)))

(declare-fun mapNonEmpty!11946 () Bool)

(declare-fun mapRes!11946 () Bool)

(declare-fun tp!24737 () Bool)

(declare-fun e!207020 () Bool)

(assert (=> mapNonEmpty!11946 (= mapRes!11946 (and tp!24737 e!207020))))

(declare-datatypes ((V!10347 0))(
  ( (V!10348 (val!3558 Int)) )
))
(declare-datatypes ((ValueCell!3170 0))(
  ( (ValueCellFull!3170 (v!5719 V!10347)) (EmptyCell!3170) )
))
(declare-fun mapValue!11946 () ValueCell!3170)

(declare-fun mapRest!11946 () (Array (_ BitVec 32) ValueCell!3170))

(declare-datatypes ((array!17623 0))(
  ( (array!17624 (arr!8336 (Array (_ BitVec 32) ValueCell!3170)) (size!8688 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17623)

(declare-fun mapKey!11946 () (_ BitVec 32))

(assert (=> mapNonEmpty!11946 (= (arr!8336 _values!1525) (store mapRest!11946 mapKey!11946 mapValue!11946))))

(declare-fun b!337354 () Bool)

(declare-fun res!186443 () Bool)

(declare-fun e!207019 () Bool)

(assert (=> b!337354 (=> (not res!186443) (not e!207019))))

(declare-datatypes ((array!17625 0))(
  ( (array!17626 (arr!8337 (Array (_ BitVec 32) (_ BitVec 64))) (size!8689 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17625)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337354 (= res!186443 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337355 () Bool)

(declare-fun res!186442 () Bool)

(declare-fun e!207021 () Bool)

(assert (=> b!337355 (=> (not res!186442) (not e!207021))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17625 (_ BitVec 32)) Bool)

(assert (=> b!337355 (= res!186442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337356 () Bool)

(declare-fun e!207016 () Bool)

(declare-fun e!207017 () Bool)

(assert (=> b!337356 (= e!207016 (and e!207017 mapRes!11946))))

(declare-fun condMapEmpty!11946 () Bool)

(declare-fun mapDefault!11946 () ValueCell!3170)


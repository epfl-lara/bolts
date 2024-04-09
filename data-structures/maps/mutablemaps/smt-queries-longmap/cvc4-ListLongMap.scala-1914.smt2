; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34086 () Bool)

(assert start!34086)

(declare-fun b_free!7157 () Bool)

(declare-fun b_next!7157 () Bool)

(assert (=> start!34086 (= b_free!7157 (not b_next!7157))))

(declare-fun tp!24996 () Bool)

(declare-fun b_and!14369 () Bool)

(assert (=> start!34086 (= tp!24996 b_and!14369)))

(declare-fun b!339415 () Bool)

(declare-fun res!187548 () Bool)

(declare-fun e!208251 () Bool)

(assert (=> b!339415 (=> (not res!187548) (not e!208251))))

(declare-datatypes ((array!17789 0))(
  ( (array!17790 (arr!8415 (Array (_ BitVec 32) (_ BitVec 64))) (size!8767 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17789)

(declare-datatypes ((List!4859 0))(
  ( (Nil!4856) (Cons!4855 (h!5711 (_ BitVec 64)) (t!9969 List!4859)) )
))
(declare-fun arrayNoDuplicates!0 (array!17789 (_ BitVec 32) List!4859) Bool)

(assert (=> b!339415 (= res!187548 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4856))))

(declare-fun b!339416 () Bool)

(declare-fun res!187547 () Bool)

(assert (=> b!339416 (=> (not res!187547) (not e!208251))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339416 (= res!187547 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12081 () Bool)

(declare-fun mapRes!12081 () Bool)

(declare-fun tp!24995 () Bool)

(declare-fun e!208253 () Bool)

(assert (=> mapNonEmpty!12081 (= mapRes!12081 (and tp!24995 e!208253))))

(declare-datatypes ((V!10455 0))(
  ( (V!10456 (val!3599 Int)) )
))
(declare-datatypes ((ValueCell!3211 0))(
  ( (ValueCellFull!3211 (v!5764 V!10455)) (EmptyCell!3211) )
))
(declare-fun mapValue!12081 () ValueCell!3211)

(declare-fun mapRest!12081 () (Array (_ BitVec 32) ValueCell!3211))

(declare-datatypes ((array!17791 0))(
  ( (array!17792 (arr!8416 (Array (_ BitVec 32) ValueCell!3211)) (size!8768 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17791)

(declare-fun mapKey!12081 () (_ BitVec 32))

(assert (=> mapNonEmpty!12081 (= (arr!8416 _values!1525) (store mapRest!12081 mapKey!12081 mapValue!12081))))

(declare-fun b!339417 () Bool)

(declare-fun e!208249 () Bool)

(declare-fun e!208248 () Bool)

(assert (=> b!339417 (= e!208249 (and e!208248 mapRes!12081))))

(declare-fun condMapEmpty!12081 () Bool)

(declare-fun mapDefault!12081 () ValueCell!3211)


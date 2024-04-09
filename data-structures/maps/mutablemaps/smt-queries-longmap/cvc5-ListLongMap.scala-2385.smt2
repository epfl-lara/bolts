; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37780 () Bool)

(assert start!37780)

(declare-fun b_free!8875 () Bool)

(declare-fun b_next!8875 () Bool)

(assert (=> start!37780 (= b_free!8875 (not b_next!8875))))

(declare-fun tp!31377 () Bool)

(declare-fun b_and!16135 () Bool)

(assert (=> start!37780 (= tp!31377 b_and!16135)))

(declare-fun b!387572 () Bool)

(declare-fun res!221586 () Bool)

(declare-fun e!234938 () Bool)

(assert (=> b!387572 (=> (not res!221586) (not e!234938))))

(declare-datatypes ((array!22963 0))(
  ( (array!22964 (arr!10947 (Array (_ BitVec 32) (_ BitVec 64))) (size!11299 (_ BitVec 32))) )
))
(declare-fun lt!182075 () array!22963)

(declare-datatypes ((List!6303 0))(
  ( (Nil!6300) (Cons!6299 (h!7155 (_ BitVec 64)) (t!11461 List!6303)) )
))
(declare-fun arrayNoDuplicates!0 (array!22963 (_ BitVec 32) List!6303) Bool)

(assert (=> b!387572 (= res!221586 (arrayNoDuplicates!0 lt!182075 #b00000000000000000000000000000000 Nil!6300))))

(declare-fun mapNonEmpty!15885 () Bool)

(declare-fun mapRes!15885 () Bool)

(declare-fun tp!31376 () Bool)

(declare-fun e!234935 () Bool)

(assert (=> mapNonEmpty!15885 (= mapRes!15885 (and tp!31376 e!234935))))

(declare-datatypes ((V!13835 0))(
  ( (V!13836 (val!4818 Int)) )
))
(declare-datatypes ((ValueCell!4430 0))(
  ( (ValueCellFull!4430 (v!7011 V!13835)) (EmptyCell!4430) )
))
(declare-datatypes ((array!22965 0))(
  ( (array!22966 (arr!10948 (Array (_ BitVec 32) ValueCell!4430)) (size!11300 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22965)

(declare-fun mapRest!15885 () (Array (_ BitVec 32) ValueCell!4430))

(declare-fun mapValue!15885 () ValueCell!4430)

(declare-fun mapKey!15885 () (_ BitVec 32))

(assert (=> mapNonEmpty!15885 (= (arr!10948 _values!506) (store mapRest!15885 mapKey!15885 mapValue!15885))))

(declare-fun b!387573 () Bool)

(declare-fun e!234934 () Bool)

(declare-fun tp_is_empty!9547 () Bool)

(assert (=> b!387573 (= e!234934 tp_is_empty!9547)))

(declare-fun b!387574 () Bool)

(declare-fun e!234939 () Bool)

(assert (=> b!387574 (= e!234939 (and e!234934 mapRes!15885))))

(declare-fun condMapEmpty!15885 () Bool)

(declare-fun mapDefault!15885 () ValueCell!4430)


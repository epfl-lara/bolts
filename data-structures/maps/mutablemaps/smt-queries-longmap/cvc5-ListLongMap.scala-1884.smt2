; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33746 () Bool)

(assert start!33746)

(declare-fun b_free!6973 () Bool)

(declare-fun b_next!6973 () Bool)

(assert (=> start!33746 (= b_free!6973 (not b_next!6973))))

(declare-fun tp!24422 () Bool)

(declare-fun b_and!14171 () Bool)

(assert (=> start!33746 (= tp!24422 b_and!14171)))

(declare-fun b!335356 () Bool)

(declare-fun e!205870 () Bool)

(declare-fun tp_is_empty!6925 () Bool)

(assert (=> b!335356 (= e!205870 tp_is_empty!6925)))

(declare-fun b!335357 () Bool)

(declare-fun e!205874 () Bool)

(assert (=> b!335357 (= e!205874 tp_is_empty!6925)))

(declare-fun b!335358 () Bool)

(declare-fun e!205869 () Bool)

(declare-fun mapRes!11784 () Bool)

(assert (=> b!335358 (= e!205869 (and e!205870 mapRes!11784))))

(declare-fun condMapEmpty!11784 () Bool)

(declare-datatypes ((V!10211 0))(
  ( (V!10212 (val!3507 Int)) )
))
(declare-datatypes ((ValueCell!3119 0))(
  ( (ValueCellFull!3119 (v!5665 V!10211)) (EmptyCell!3119) )
))
(declare-datatypes ((array!17431 0))(
  ( (array!17432 (arr!8243 (Array (_ BitVec 32) ValueCell!3119)) (size!8595 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17431)

(declare-fun mapDefault!11784 () ValueCell!3119)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82628 () Bool)

(assert start!82628)

(declare-fun b_free!18733 () Bool)

(declare-fun b_next!18733 () Bool)

(assert (=> start!82628 (= b_free!18733 (not b_next!18733))))

(declare-fun tp!65319 () Bool)

(declare-fun b_and!30239 () Bool)

(assert (=> start!82628 (= tp!65319 b_and!30239)))

(declare-fun mapNonEmpty!34297 () Bool)

(declare-fun mapRes!34297 () Bool)

(declare-fun tp!65320 () Bool)

(declare-fun e!542831 () Bool)

(assert (=> mapNonEmpty!34297 (= mapRes!34297 (and tp!65320 e!542831))))

(declare-datatypes ((V!33697 0))(
  ( (V!33698 (val!10818 Int)) )
))
(declare-datatypes ((ValueCell!10286 0))(
  ( (ValueCellFull!10286 (v!13376 V!33697)) (EmptyCell!10286) )
))
(declare-datatypes ((array!59149 0))(
  ( (array!59150 (arr!28439 (Array (_ BitVec 32) ValueCell!10286)) (size!28919 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59149)

(declare-fun mapValue!34297 () ValueCell!10286)

(declare-fun mapKey!34297 () (_ BitVec 32))

(declare-fun mapRest!34297 () (Array (_ BitVec 32) ValueCell!10286))

(assert (=> mapNonEmpty!34297 (= (arr!28439 _values!1400) (store mapRest!34297 mapKey!34297 mapValue!34297))))

(declare-fun b!962531 () Bool)

(declare-fun e!542832 () Bool)

(declare-fun e!542833 () Bool)

(assert (=> b!962531 (= e!542832 (and e!542833 mapRes!34297))))

(declare-fun condMapEmpty!34297 () Bool)

(declare-fun mapDefault!34297 () ValueCell!10286)


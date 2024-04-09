; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82932 () Bool)

(assert start!82932)

(declare-fun b_free!19031 () Bool)

(declare-fun b_next!19031 () Bool)

(assert (=> start!82932 (= b_free!19031 (not b_next!19031))))

(declare-fun tp!66222 () Bool)

(declare-fun b_and!30537 () Bool)

(assert (=> start!82932 (= tp!66222 b_and!30537)))

(declare-fun mapNonEmpty!34753 () Bool)

(declare-fun mapRes!34753 () Bool)

(declare-fun tp!66223 () Bool)

(declare-fun e!545194 () Bool)

(assert (=> mapNonEmpty!34753 (= mapRes!34753 (and tp!66223 e!545194))))

(declare-datatypes ((V!34101 0))(
  ( (V!34102 (val!10970 Int)) )
))
(declare-datatypes ((ValueCell!10438 0))(
  ( (ValueCellFull!10438 (v!13528 V!34101)) (EmptyCell!10438) )
))
(declare-fun mapValue!34753 () ValueCell!10438)

(declare-datatypes ((array!59733 0))(
  ( (array!59734 (arr!28731 (Array (_ BitVec 32) ValueCell!10438)) (size!29211 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59733)

(declare-fun mapRest!34753 () (Array (_ BitVec 32) ValueCell!10438))

(declare-fun mapKey!34753 () (_ BitVec 32))

(assert (=> mapNonEmpty!34753 (= (arr!28731 _values!1400) (store mapRest!34753 mapKey!34753 mapValue!34753))))

(declare-fun mapIsEmpty!34753 () Bool)

(assert (=> mapIsEmpty!34753 mapRes!34753))

(declare-fun b!967200 () Bool)

(declare-fun tp_is_empty!21839 () Bool)

(assert (=> b!967200 (= e!545194 tp_is_empty!21839)))

(declare-fun b!967201 () Bool)

(declare-fun res!647564 () Bool)

(declare-fun e!545193 () Bool)

(assert (=> b!967201 (=> (not res!647564) (not e!545193))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59735 0))(
  ( (array!59736 (arr!28732 (Array (_ BitVec 32) (_ BitVec 64))) (size!29212 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59735)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!967201 (= res!647564 (and (= (size!29211 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29212 _keys!1686) (size!29211 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967202 () Bool)

(declare-fun e!545192 () Bool)

(declare-fun e!545190 () Bool)

(assert (=> b!967202 (= e!545192 (and e!545190 mapRes!34753))))

(declare-fun condMapEmpty!34753 () Bool)

(declare-fun mapDefault!34753 () ValueCell!10438)


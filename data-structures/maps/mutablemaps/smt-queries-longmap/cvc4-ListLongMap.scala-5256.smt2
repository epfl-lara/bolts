; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70684 () Bool)

(assert start!70684)

(declare-fun b_free!12947 () Bool)

(declare-fun b_next!12947 () Bool)

(assert (=> start!70684 (= b_free!12947 (not b_next!12947))))

(declare-fun tp!45579 () Bool)

(declare-fun b_and!21819 () Bool)

(assert (=> start!70684 (= tp!45579 b_and!21819)))

(declare-fun b!820665 () Bool)

(declare-fun e!456022 () Bool)

(declare-fun tp_is_empty!14657 () Bool)

(assert (=> b!820665 (= e!456022 tp_is_empty!14657)))

(declare-fun b!820666 () Bool)

(declare-fun res!560017 () Bool)

(declare-fun e!456023 () Bool)

(assert (=> b!820666 (=> (not res!560017) (not e!456023))))

(declare-datatypes ((array!45476 0))(
  ( (array!45477 (arr!21786 (Array (_ BitVec 32) (_ BitVec 64))) (size!22207 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45476)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45476 (_ BitVec 32)) Bool)

(assert (=> b!820666 (= res!560017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!560016 () Bool)

(assert (=> start!70684 (=> (not res!560016) (not e!456023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70684 (= res!560016 (validMask!0 mask!1312))))

(assert (=> start!70684 e!456023))

(assert (=> start!70684 tp_is_empty!14657))

(declare-fun array_inv!17381 (array!45476) Bool)

(assert (=> start!70684 (array_inv!17381 _keys!976)))

(assert (=> start!70684 true))

(declare-datatypes ((V!24543 0))(
  ( (V!24544 (val!7376 Int)) )
))
(declare-datatypes ((ValueCell!6913 0))(
  ( (ValueCellFull!6913 (v!9803 V!24543)) (EmptyCell!6913) )
))
(declare-datatypes ((array!45478 0))(
  ( (array!45479 (arr!21787 (Array (_ BitVec 32) ValueCell!6913)) (size!22208 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45478)

(declare-fun e!456020 () Bool)

(declare-fun array_inv!17382 (array!45478) Bool)

(assert (=> start!70684 (and (array_inv!17382 _values!788) e!456020)))

(assert (=> start!70684 tp!45579))

(declare-fun mapNonEmpty!23590 () Bool)

(declare-fun mapRes!23590 () Bool)

(declare-fun tp!45580 () Bool)

(declare-fun e!456024 () Bool)

(assert (=> mapNonEmpty!23590 (= mapRes!23590 (and tp!45580 e!456024))))

(declare-fun mapValue!23590 () ValueCell!6913)

(declare-fun mapRest!23590 () (Array (_ BitVec 32) ValueCell!6913))

(declare-fun mapKey!23590 () (_ BitVec 32))

(assert (=> mapNonEmpty!23590 (= (arr!21787 _values!788) (store mapRest!23590 mapKey!23590 mapValue!23590))))

(declare-fun b!820667 () Bool)

(assert (=> b!820667 (= e!456020 (and e!456022 mapRes!23590))))

(declare-fun condMapEmpty!23590 () Bool)

(declare-fun mapDefault!23590 () ValueCell!6913)


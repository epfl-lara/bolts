; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3682 () Bool)

(assert start!3682)

(declare-fun b!25834 () Bool)

(declare-fun e!16736 () Bool)

(declare-fun tp_is_empty!1049 () Bool)

(assert (=> b!25834 (= e!16736 tp_is_empty!1049)))

(declare-fun e!16732 () Bool)

(declare-datatypes ((V!1223 0))(
  ( (V!1224 (val!551 Int)) )
))
(declare-datatypes ((ValueCell!325 0))(
  ( (ValueCellFull!325 (v!1636 V!1223)) (EmptyCell!325) )
))
(declare-datatypes ((array!1331 0))(
  ( (array!1332 (arr!628 (Array (_ BitVec 32) ValueCell!325)) (size!729 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1331)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1333 0))(
  ( (array!1334 (arr!629 (Array (_ BitVec 32) (_ BitVec 64))) (size!730 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1333)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun b!25835 () Bool)

(assert (=> b!25835 (= e!16732 (and (= (size!729 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!730 _keys!1833) (size!729 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011) (= (size!730 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294)) (bvsgt #b00000000000000000000000000000000 (size!730 _keys!1833))))))

(declare-fun mapIsEmpty!1075 () Bool)

(declare-fun mapRes!1075 () Bool)

(assert (=> mapIsEmpty!1075 mapRes!1075))

(declare-fun b!25836 () Bool)

(declare-fun e!16735 () Bool)

(assert (=> b!25836 (= e!16735 tp_is_empty!1049)))

(declare-fun mapNonEmpty!1075 () Bool)

(declare-fun tp!3595 () Bool)

(assert (=> mapNonEmpty!1075 (= mapRes!1075 (and tp!3595 e!16736))))

(declare-fun mapRest!1075 () (Array (_ BitVec 32) ValueCell!325))

(declare-fun mapValue!1075 () ValueCell!325)

(declare-fun mapKey!1075 () (_ BitVec 32))

(assert (=> mapNonEmpty!1075 (= (arr!628 _values!1501) (store mapRest!1075 mapKey!1075 mapValue!1075))))

(declare-fun b!25833 () Bool)

(declare-fun e!16734 () Bool)

(assert (=> b!25833 (= e!16734 (and e!16735 mapRes!1075))))

(declare-fun condMapEmpty!1075 () Bool)

(declare-fun mapDefault!1075 () ValueCell!325)


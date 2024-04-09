; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107180 () Bool)

(assert start!107180)

(declare-fun mapNonEmpty!50830 () Bool)

(declare-fun mapRes!50830 () Bool)

(declare-fun tp!97172 () Bool)

(declare-fun e!724056 () Bool)

(assert (=> mapNonEmpty!50830 (= mapRes!50830 (and tp!97172 e!724056))))

(declare-datatypes ((V!48971 0))(
  ( (V!48972 (val!16491 Int)) )
))
(declare-datatypes ((ValueCell!15563 0))(
  ( (ValueCellFull!15563 (v!19126 V!48971)) (EmptyCell!15563) )
))
(declare-datatypes ((array!82897 0))(
  ( (array!82898 (arr!39981 (Array (_ BitVec 32) ValueCell!15563)) (size!40518 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82897)

(declare-fun mapRest!50830 () (Array (_ BitVec 32) ValueCell!15563))

(declare-fun mapValue!50830 () ValueCell!15563)

(declare-fun mapKey!50830 () (_ BitVec 32))

(assert (=> mapNonEmpty!50830 (= (arr!39981 _values!1134) (store mapRest!50830 mapKey!50830 mapValue!50830))))

(declare-fun b!1270221 () Bool)

(declare-fun tp_is_empty!32833 () Bool)

(assert (=> b!1270221 (= e!724056 tp_is_empty!32833)))

(declare-fun res!845373 () Bool)

(declare-fun e!724054 () Bool)

(assert (=> start!107180 (=> (not res!845373) (not e!724054))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107180 (= res!845373 (validMask!0 mask!1730))))

(assert (=> start!107180 e!724054))

(declare-fun e!724057 () Bool)

(declare-fun array_inv!30367 (array!82897) Bool)

(assert (=> start!107180 (and (array_inv!30367 _values!1134) e!724057)))

(assert (=> start!107180 true))

(declare-datatypes ((array!82899 0))(
  ( (array!82900 (arr!39982 (Array (_ BitVec 32) (_ BitVec 64))) (size!40519 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82899)

(declare-fun array_inv!30368 (array!82899) Bool)

(assert (=> start!107180 (array_inv!30368 _keys!1364)))

(declare-fun mapIsEmpty!50830 () Bool)

(assert (=> mapIsEmpty!50830 mapRes!50830))

(declare-fun b!1270222 () Bool)

(declare-fun res!845374 () Bool)

(assert (=> b!1270222 (=> (not res!845374) (not e!724054))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270222 (= res!845374 (and (= (size!40518 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40519 _keys!1364) (size!40518 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270223 () Bool)

(declare-fun res!845375 () Bool)

(assert (=> b!1270223 (=> (not res!845375) (not e!724054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82899 (_ BitVec 32)) Bool)

(assert (=> b!1270223 (= res!845375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270224 () Bool)

(declare-fun e!724055 () Bool)

(assert (=> b!1270224 (= e!724055 tp_is_empty!32833)))

(declare-fun b!1270225 () Bool)

(assert (=> b!1270225 (= e!724057 (and e!724055 mapRes!50830))))

(declare-fun condMapEmpty!50830 () Bool)

(declare-fun mapDefault!50830 () ValueCell!15563)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107022 () Bool)

(assert start!107022)

(declare-fun res!844340 () Bool)

(declare-fun e!722873 () Bool)

(assert (=> start!107022 (=> (not res!844340) (not e!722873))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107022 (= res!844340 (validMask!0 mask!1730))))

(assert (=> start!107022 e!722873))

(declare-datatypes ((V!48759 0))(
  ( (V!48760 (val!16412 Int)) )
))
(declare-datatypes ((ValueCell!15484 0))(
  ( (ValueCellFull!15484 (v!19047 V!48759)) (EmptyCell!15484) )
))
(declare-datatypes ((array!82601 0))(
  ( (array!82602 (arr!39833 (Array (_ BitVec 32) ValueCell!15484)) (size!40370 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82601)

(declare-fun e!722869 () Bool)

(declare-fun array_inv!30267 (array!82601) Bool)

(assert (=> start!107022 (and (array_inv!30267 _values!1134) e!722869)))

(assert (=> start!107022 true))

(declare-datatypes ((array!82603 0))(
  ( (array!82604 (arr!39834 (Array (_ BitVec 32) (_ BitVec 64))) (size!40371 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82603)

(declare-fun array_inv!30268 (array!82603) Bool)

(assert (=> start!107022 (array_inv!30268 _keys!1364)))

(declare-fun b!1268475 () Bool)

(declare-fun e!722871 () Bool)

(declare-fun tp_is_empty!32675 () Bool)

(assert (=> b!1268475 (= e!722871 tp_is_empty!32675)))

(declare-fun mapNonEmpty!50593 () Bool)

(declare-fun mapRes!50593 () Bool)

(declare-fun tp!96773 () Bool)

(declare-fun e!722870 () Bool)

(assert (=> mapNonEmpty!50593 (= mapRes!50593 (and tp!96773 e!722870))))

(declare-fun mapKey!50593 () (_ BitVec 32))

(declare-fun mapRest!50593 () (Array (_ BitVec 32) ValueCell!15484))

(declare-fun mapValue!50593 () ValueCell!15484)

(assert (=> mapNonEmpty!50593 (= (arr!39833 _values!1134) (store mapRest!50593 mapKey!50593 mapValue!50593))))

(declare-fun b!1268476 () Bool)

(assert (=> b!1268476 (= e!722869 (and e!722871 mapRes!50593))))

(declare-fun condMapEmpty!50593 () Bool)

(declare-fun mapDefault!50593 () ValueCell!15484)


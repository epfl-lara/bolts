; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94408 () Bool)

(assert start!94408)

(declare-fun b_free!21713 () Bool)

(declare-fun b_next!21713 () Bool)

(assert (=> start!94408 (= b_free!21713 (not b_next!21713))))

(declare-fun tp!76583 () Bool)

(declare-fun b_and!34515 () Bool)

(assert (=> start!94408 (= tp!76583 b_and!34515)))

(declare-fun mapNonEmpty!39976 () Bool)

(declare-fun mapRes!39976 () Bool)

(declare-fun tp!76584 () Bool)

(declare-fun e!608629 () Bool)

(assert (=> mapNonEmpty!39976 (= mapRes!39976 (and tp!76584 e!608629))))

(declare-fun mapKey!39976 () (_ BitVec 32))

(declare-datatypes ((V!39165 0))(
  ( (V!39166 (val!12812 Int)) )
))
(declare-datatypes ((ValueCell!12058 0))(
  ( (ValueCellFull!12058 (v!15427 V!39165)) (EmptyCell!12058) )
))
(declare-fun mapValue!39976 () ValueCell!12058)

(declare-fun mapRest!39976 () (Array (_ BitVec 32) ValueCell!12058))

(declare-datatypes ((array!68004 0))(
  ( (array!68005 (arr!32699 (Array (_ BitVec 32) ValueCell!12058)) (size!33236 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68004)

(assert (=> mapNonEmpty!39976 (= (arr!32699 _values!955) (store mapRest!39976 mapKey!39976 mapValue!39976))))

(declare-fun b!1067092 () Bool)

(declare-fun e!608632 () Bool)

(declare-fun tp_is_empty!25523 () Bool)

(assert (=> b!1067092 (= e!608632 tp_is_empty!25523)))

(declare-fun b!1067093 () Bool)

(declare-fun e!608630 () Bool)

(assert (=> b!1067093 (= e!608630 (and e!608632 mapRes!39976))))

(declare-fun condMapEmpty!39976 () Bool)

(declare-fun mapDefault!39976 () ValueCell!12058)


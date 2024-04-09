; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94952 () Bool)

(assert start!94952)

(declare-fun b_free!22121 () Bool)

(declare-fun b_next!22121 () Bool)

(assert (=> start!94952 (= b_free!22121 (not b_next!22121))))

(declare-fun tp!77829 () Bool)

(declare-fun b_and!34993 () Bool)

(assert (=> start!94952 (= tp!77829 b_and!34993)))

(declare-fun mapNonEmpty!40609 () Bool)

(declare-fun mapRes!40609 () Bool)

(declare-fun tp!77828 () Bool)

(declare-fun e!613114 () Bool)

(assert (=> mapNonEmpty!40609 (= mapRes!40609 (and tp!77828 e!613114))))

(declare-datatypes ((V!39709 0))(
  ( (V!39710 (val!13016 Int)) )
))
(declare-datatypes ((ValueCell!12262 0))(
  ( (ValueCellFull!12262 (v!15635 V!39709)) (EmptyCell!12262) )
))
(declare-fun mapRest!40609 () (Array (_ BitVec 32) ValueCell!12262))

(declare-datatypes ((array!68790 0))(
  ( (array!68791 (arr!33085 (Array (_ BitVec 32) ValueCell!12262)) (size!33622 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68790)

(declare-fun mapKey!40609 () (_ BitVec 32))

(declare-fun mapValue!40609 () ValueCell!12262)

(assert (=> mapNonEmpty!40609 (= (arr!33085 _values!955) (store mapRest!40609 mapKey!40609 mapValue!40609))))

(declare-fun b!1073166 () Bool)

(declare-fun e!613115 () Bool)

(declare-fun e!613117 () Bool)

(assert (=> b!1073166 (= e!613115 (and e!613117 mapRes!40609))))

(declare-fun condMapEmpty!40609 () Bool)

(declare-fun mapDefault!40609 () ValueCell!12262)


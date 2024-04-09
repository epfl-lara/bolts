; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105172 () Bool)

(assert start!105172)

(declare-fun b_free!26869 () Bool)

(declare-fun b_next!26869 () Bool)

(assert (=> start!105172 (= b_free!26869 (not b_next!26869))))

(declare-fun tp!94110 () Bool)

(declare-fun b_and!44683 () Bool)

(assert (=> start!105172 (= tp!94110 b_and!44683)))

(declare-fun mapIsEmpty!49429 () Bool)

(declare-fun mapRes!49429 () Bool)

(assert (=> mapIsEmpty!49429 mapRes!49429))

(declare-fun b!1252798 () Bool)

(declare-fun e!711659 () Bool)

(declare-fun tp_is_empty!31771 () Bool)

(assert (=> b!1252798 (= e!711659 tp_is_empty!31771)))

(declare-fun b!1252799 () Bool)

(declare-fun e!711660 () Bool)

(declare-fun e!711657 () Bool)

(assert (=> b!1252799 (= e!711660 (and e!711657 mapRes!49429))))

(declare-fun condMapEmpty!49429 () Bool)

(declare-datatypes ((V!47727 0))(
  ( (V!47728 (val!15948 Int)) )
))
(declare-datatypes ((ValueCell!15122 0))(
  ( (ValueCellFull!15122 (v!18646 V!47727)) (EmptyCell!15122) )
))
(declare-datatypes ((array!81183 0))(
  ( (array!81184 (arr!39150 (Array (_ BitVec 32) ValueCell!15122)) (size!39687 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81183)

(declare-fun mapDefault!49429 () ValueCell!15122)


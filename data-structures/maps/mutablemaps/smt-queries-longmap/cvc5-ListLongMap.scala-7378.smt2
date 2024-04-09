; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94044 () Bool)

(assert start!94044)

(declare-fun b_free!21445 () Bool)

(declare-fun b_next!21445 () Bool)

(assert (=> start!94044 (= b_free!21445 (not b_next!21445))))

(declare-fun tp!75764 () Bool)

(declare-fun b_and!34195 () Bool)

(assert (=> start!94044 (= tp!75764 b_and!34195)))

(declare-fun b!1063191 () Bool)

(declare-fun res!709980 () Bool)

(declare-fun e!605804 () Bool)

(assert (=> b!1063191 (=> (not res!709980) (not e!605804))))

(declare-datatypes ((array!67484 0))(
  ( (array!67485 (arr!32444 (Array (_ BitVec 32) (_ BitVec 64))) (size!32981 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67484)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67484 (_ BitVec 32)) Bool)

(assert (=> b!1063191 (= res!709980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39559 () Bool)

(declare-fun mapRes!39559 () Bool)

(declare-fun tp!75765 () Bool)

(declare-fun e!605807 () Bool)

(assert (=> mapNonEmpty!39559 (= mapRes!39559 (and tp!75765 e!605807))))

(declare-fun mapKey!39559 () (_ BitVec 32))

(declare-datatypes ((V!38809 0))(
  ( (V!38810 (val!12678 Int)) )
))
(declare-datatypes ((ValueCell!11924 0))(
  ( (ValueCellFull!11924 (v!15290 V!38809)) (EmptyCell!11924) )
))
(declare-fun mapRest!39559 () (Array (_ BitVec 32) ValueCell!11924))

(declare-datatypes ((array!67486 0))(
  ( (array!67487 (arr!32445 (Array (_ BitVec 32) ValueCell!11924)) (size!32982 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67486)

(declare-fun mapValue!39559 () ValueCell!11924)

(assert (=> mapNonEmpty!39559 (= (arr!32445 _values!955) (store mapRest!39559 mapKey!39559 mapValue!39559))))

(declare-fun mapIsEmpty!39559 () Bool)

(assert (=> mapIsEmpty!39559 mapRes!39559))

(declare-fun b!1063192 () Bool)

(declare-fun e!605806 () Bool)

(declare-fun e!605809 () Bool)

(assert (=> b!1063192 (= e!605806 (and e!605809 mapRes!39559))))

(declare-fun condMapEmpty!39559 () Bool)

(declare-fun mapDefault!39559 () ValueCell!11924)


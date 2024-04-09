; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94106 () Bool)

(assert start!94106)

(declare-fun b_free!21485 () Bool)

(declare-fun b_next!21485 () Bool)

(assert (=> start!94106 (= b_free!21485 (not b_next!21485))))

(declare-fun tp!75887 () Bool)

(declare-fun b_and!34245 () Bool)

(assert (=> start!94106 (= tp!75887 b_and!34245)))

(declare-fun b!1063836 () Bool)

(declare-fun e!606273 () Bool)

(declare-fun e!606271 () Bool)

(declare-fun mapRes!39622 () Bool)

(assert (=> b!1063836 (= e!606273 (and e!606271 mapRes!39622))))

(declare-fun condMapEmpty!39622 () Bool)

(declare-datatypes ((V!38861 0))(
  ( (V!38862 (val!12698 Int)) )
))
(declare-datatypes ((ValueCell!11944 0))(
  ( (ValueCellFull!11944 (v!15311 V!38861)) (EmptyCell!11944) )
))
(declare-datatypes ((array!67564 0))(
  ( (array!67565 (arr!32483 (Array (_ BitVec 32) ValueCell!11944)) (size!33020 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67564)

(declare-fun mapDefault!39622 () ValueCell!11944)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95678 () Bool)

(assert start!95678)

(declare-fun b_free!22295 () Bool)

(declare-fun b_next!22295 () Bool)

(assert (=> start!95678 (= b_free!22295 (not b_next!22295))))

(declare-fun tp!78735 () Bool)

(declare-fun b_and!35291 () Bool)

(assert (=> start!95678 (= tp!78735 b_and!35291)))

(declare-fun b!1080775 () Bool)

(declare-fun res!720439 () Bool)

(declare-fun e!617849 () Bool)

(assert (=> b!1080775 (=> (not res!720439) (not e!617849))))

(declare-datatypes ((array!69500 0))(
  ( (array!69501 (arr!33420 (Array (_ BitVec 32) (_ BitVec 64))) (size!33957 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69500)

(declare-datatypes ((List!23423 0))(
  ( (Nil!23420) (Cons!23419 (h!24628 (_ BitVec 64)) (t!32789 List!23423)) )
))
(declare-fun arrayNoDuplicates!0 (array!69500 (_ BitVec 32) List!23423) Bool)

(assert (=> b!1080775 (= res!720439 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23420))))

(declare-fun b!1080776 () Bool)

(declare-fun res!720444 () Bool)

(assert (=> b!1080776 (=> (not res!720444) (not e!617849))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080776 (= res!720444 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33957 _keys!1070))))))

(declare-fun b!1080777 () Bool)

(declare-fun e!617850 () Bool)

(declare-fun e!617851 () Bool)

(declare-fun mapRes!41200 () Bool)

(assert (=> b!1080777 (= e!617850 (and e!617851 mapRes!41200))))

(declare-fun condMapEmpty!41200 () Bool)

(declare-datatypes ((V!40189 0))(
  ( (V!40190 (val!13205 Int)) )
))
(declare-datatypes ((ValueCell!12439 0))(
  ( (ValueCellFull!12439 (v!15827 V!40189)) (EmptyCell!12439) )
))
(declare-datatypes ((array!69502 0))(
  ( (array!69503 (arr!33421 (Array (_ BitVec 32) ValueCell!12439)) (size!33958 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69502)

(declare-fun mapDefault!41200 () ValueCell!12439)


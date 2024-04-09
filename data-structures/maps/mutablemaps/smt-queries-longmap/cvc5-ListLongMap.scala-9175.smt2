; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110390 () Bool)

(assert start!110390)

(declare-fun res!867159 () Bool)

(declare-fun e!744987 () Bool)

(assert (=> start!110390 (=> (not res!867159) (not e!744987))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110390 (= res!867159 (validMask!0 mask!2040))))

(assert (=> start!110390 e!744987))

(assert (=> start!110390 true))

(declare-datatypes ((V!51721 0))(
  ( (V!51722 (val!17556 Int)) )
))
(declare-datatypes ((ValueCell!16583 0))(
  ( (ValueCellFull!16583 (v!20180 V!51721)) (EmptyCell!16583) )
))
(declare-datatypes ((array!86911 0))(
  ( (array!86912 (arr!41936 (Array (_ BitVec 32) ValueCell!16583)) (size!42487 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86911)

(declare-fun e!744990 () Bool)

(declare-fun array_inv!31713 (array!86911) Bool)

(assert (=> start!110390 (and (array_inv!31713 _values!1354) e!744990)))

(declare-datatypes ((array!86913 0))(
  ( (array!86914 (arr!41937 (Array (_ BitVec 32) (_ BitVec 64))) (size!42488 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86913)

(declare-fun array_inv!31714 (array!86913) Bool)

(assert (=> start!110390 (array_inv!31714 _keys!1628)))

(declare-fun b!1305979 () Bool)

(declare-fun e!744986 () Bool)

(declare-fun tp_is_empty!34963 () Bool)

(assert (=> b!1305979 (= e!744986 tp_is_empty!34963)))

(declare-fun b!1305980 () Bool)

(declare-fun e!744989 () Bool)

(assert (=> b!1305980 (= e!744989 tp_is_empty!34963)))

(declare-fun b!1305981 () Bool)

(declare-fun mapRes!54058 () Bool)

(assert (=> b!1305981 (= e!744990 (and e!744989 mapRes!54058))))

(declare-fun condMapEmpty!54058 () Bool)

(declare-fun mapDefault!54058 () ValueCell!16583)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110400 () Bool)

(assert start!110400)

(declare-fun res!867174 () Bool)

(declare-fun e!745064 () Bool)

(assert (=> start!110400 (=> (not res!867174) (not e!745064))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110400 (= res!867174 (validMask!0 mask!2040))))

(assert (=> start!110400 e!745064))

(assert (=> start!110400 true))

(declare-datatypes ((V!51733 0))(
  ( (V!51734 (val!17561 Int)) )
))
(declare-datatypes ((ValueCell!16588 0))(
  ( (ValueCellFull!16588 (v!20185 V!51733)) (EmptyCell!16588) )
))
(declare-datatypes ((array!86931 0))(
  ( (array!86932 (arr!41946 (Array (_ BitVec 32) ValueCell!16588)) (size!42497 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86931)

(declare-fun e!745061 () Bool)

(declare-fun array_inv!31721 (array!86931) Bool)

(assert (=> start!110400 (and (array_inv!31721 _values!1354) e!745061)))

(declare-datatypes ((array!86933 0))(
  ( (array!86934 (arr!41947 (Array (_ BitVec 32) (_ BitVec 64))) (size!42498 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86933)

(declare-fun array_inv!31722 (array!86933) Bool)

(assert (=> start!110400 (array_inv!31722 _keys!1628)))

(declare-fun b!1306039 () Bool)

(declare-fun e!745065 () Bool)

(declare-fun mapRes!54073 () Bool)

(assert (=> b!1306039 (= e!745061 (and e!745065 mapRes!54073))))

(declare-fun condMapEmpty!54073 () Bool)

(declare-fun mapDefault!54073 () ValueCell!16588)


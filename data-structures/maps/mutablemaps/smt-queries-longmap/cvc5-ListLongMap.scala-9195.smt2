; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110554 () Bool)

(assert start!110554)

(declare-fun b_free!29353 () Bool)

(declare-fun b_next!29353 () Bool)

(assert (=> start!110554 (= b_free!29353 (not b_next!29353))))

(declare-fun tp!103382 () Bool)

(declare-fun b_and!47571 () Bool)

(assert (=> start!110554 (= tp!103382 b_and!47571)))

(declare-fun res!867850 () Bool)

(declare-fun e!745984 () Bool)

(assert (=> start!110554 (=> (not res!867850) (not e!745984))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110554 (= res!867850 (validMask!0 mask!2040))))

(assert (=> start!110554 e!745984))

(assert (=> start!110554 tp!103382))

(declare-datatypes ((array!87141 0))(
  ( (array!87142 (arr!42046 (Array (_ BitVec 32) (_ BitVec 64))) (size!42597 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87141)

(declare-fun array_inv!31783 (array!87141) Bool)

(assert (=> start!110554 (array_inv!31783 _keys!1628)))

(assert (=> start!110554 true))

(declare-fun tp_is_empty!35083 () Bool)

(assert (=> start!110554 tp_is_empty!35083))

(declare-datatypes ((V!51881 0))(
  ( (V!51882 (val!17616 Int)) )
))
(declare-datatypes ((ValueCell!16643 0))(
  ( (ValueCellFull!16643 (v!20241 V!51881)) (EmptyCell!16643) )
))
(declare-datatypes ((array!87143 0))(
  ( (array!87144 (arr!42047 (Array (_ BitVec 32) ValueCell!16643)) (size!42598 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87143)

(declare-fun e!745981 () Bool)

(declare-fun array_inv!31784 (array!87143) Bool)

(assert (=> start!110554 (and (array_inv!31784 _values!1354) e!745981)))

(declare-fun b!1307274 () Bool)

(declare-fun e!745982 () Bool)

(declare-fun mapRes!54253 () Bool)

(assert (=> b!1307274 (= e!745981 (and e!745982 mapRes!54253))))

(declare-fun condMapEmpty!54253 () Bool)

(declare-fun mapDefault!54253 () ValueCell!16643)


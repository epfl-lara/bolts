; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111178 () Bool)

(assert start!111178)

(declare-fun b_free!29977 () Bool)

(declare-fun b_next!29977 () Bool)

(assert (=> start!111178 (= b_free!29977 (not b_next!29977))))

(declare-fun tp!105254 () Bool)

(declare-fun b_and!48195 () Bool)

(assert (=> start!111178 (= tp!105254 b_and!48195)))

(declare-fun res!873603 () Bool)

(declare-fun e!750664 () Bool)

(assert (=> start!111178 (=> (not res!873603) (not e!750664))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111178 (= res!873603 (validMask!0 mask!2040))))

(assert (=> start!111178 e!750664))

(assert (=> start!111178 tp!105254))

(declare-datatypes ((array!88333 0))(
  ( (array!88334 (arr!42642 (Array (_ BitVec 32) (_ BitVec 64))) (size!43193 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88333)

(declare-fun array_inv!32173 (array!88333) Bool)

(assert (=> start!111178 (array_inv!32173 _keys!1628)))

(assert (=> start!111178 true))

(declare-fun tp_is_empty!35707 () Bool)

(assert (=> start!111178 tp_is_empty!35707))

(declare-datatypes ((V!52713 0))(
  ( (V!52714 (val!17928 Int)) )
))
(declare-datatypes ((ValueCell!16955 0))(
  ( (ValueCellFull!16955 (v!20553 V!52713)) (EmptyCell!16955) )
))
(declare-datatypes ((array!88335 0))(
  ( (array!88336 (arr!42643 (Array (_ BitVec 32) ValueCell!16955)) (size!43194 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88335)

(declare-fun e!750665 () Bool)

(declare-fun array_inv!32174 (array!88335) Bool)

(assert (=> start!111178 (and (array_inv!32174 _values!1354) e!750665)))

(declare-fun b!1315833 () Bool)

(declare-fun e!750663 () Bool)

(declare-fun mapRes!55189 () Bool)

(assert (=> b!1315833 (= e!750665 (and e!750663 mapRes!55189))))

(declare-fun condMapEmpty!55189 () Bool)

(declare-fun mapDefault!55189 () ValueCell!16955)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83766 () Bool)

(assert start!83766)

(declare-fun mapIsEmpty!35840 () Bool)

(declare-fun mapRes!35840 () Bool)

(assert (=> mapIsEmpty!35840 mapRes!35840))

(declare-fun b!977602 () Bool)

(declare-fun e!551233 () Bool)

(declare-fun tp_is_empty!22541 () Bool)

(assert (=> b!977602 (= e!551233 tp_is_empty!22541)))

(declare-fun res!654351 () Bool)

(declare-fun e!551234 () Bool)

(assert (=> start!83766 (=> (not res!654351) (not e!551234))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83766 (= res!654351 (validMask!0 mask!1948))))

(assert (=> start!83766 e!551234))

(assert (=> start!83766 true))

(declare-datatypes ((V!35037 0))(
  ( (V!35038 (val!11321 Int)) )
))
(declare-datatypes ((ValueCell!10789 0))(
  ( (ValueCellFull!10789 (v!13883 V!35037)) (EmptyCell!10789) )
))
(declare-datatypes ((array!61099 0))(
  ( (array!61100 (arr!29403 (Array (_ BitVec 32) ValueCell!10789)) (size!29883 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61099)

(declare-fun e!551231 () Bool)

(declare-fun array_inv!22633 (array!61099) Bool)

(assert (=> start!83766 (and (array_inv!22633 _values!1278) e!551231)))

(declare-datatypes ((array!61101 0))(
  ( (array!61102 (arr!29404 (Array (_ BitVec 32) (_ BitVec 64))) (size!29884 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61101)

(declare-fun array_inv!22634 (array!61101) Bool)

(assert (=> start!83766 (array_inv!22634 _keys!1544)))

(declare-fun b!977603 () Bool)

(assert (=> b!977603 (= e!551231 (and e!551233 mapRes!35840))))

(declare-fun condMapEmpty!35840 () Bool)

(declare-fun mapDefault!35840 () ValueCell!10789)


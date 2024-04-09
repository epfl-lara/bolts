; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83750 () Bool)

(assert start!83750)

(declare-fun b!977458 () Bool)

(declare-fun e!551110 () Bool)

(assert (=> b!977458 (= e!551110 false)))

(declare-fun lt!433441 () Bool)

(declare-datatypes ((array!61067 0))(
  ( (array!61068 (arr!29387 (Array (_ BitVec 32) (_ BitVec 64))) (size!29867 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61067)

(declare-datatypes ((List!20506 0))(
  ( (Nil!20503) (Cons!20502 (h!21664 (_ BitVec 64)) (t!29029 List!20506)) )
))
(declare-fun arrayNoDuplicates!0 (array!61067 (_ BitVec 32) List!20506) Bool)

(assert (=> b!977458 (= lt!433441 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20503))))

(declare-fun b!977459 () Bool)

(declare-fun e!551112 () Bool)

(declare-fun e!551114 () Bool)

(declare-fun mapRes!35816 () Bool)

(assert (=> b!977459 (= e!551112 (and e!551114 mapRes!35816))))

(declare-fun condMapEmpty!35816 () Bool)

(declare-datatypes ((V!35017 0))(
  ( (V!35018 (val!11313 Int)) )
))
(declare-datatypes ((ValueCell!10781 0))(
  ( (ValueCellFull!10781 (v!13875 V!35017)) (EmptyCell!10781) )
))
(declare-datatypes ((array!61069 0))(
  ( (array!61070 (arr!29388 (Array (_ BitVec 32) ValueCell!10781)) (size!29868 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61069)

(declare-fun mapDefault!35816 () ValueCell!10781)


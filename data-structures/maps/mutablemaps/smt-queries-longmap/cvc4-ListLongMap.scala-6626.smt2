; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83760 () Bool)

(assert start!83760)

(declare-fun res!654324 () Bool)

(declare-fun e!551189 () Bool)

(assert (=> start!83760 (=> (not res!654324) (not e!551189))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83760 (= res!654324 (validMask!0 mask!1948))))

(assert (=> start!83760 e!551189))

(assert (=> start!83760 true))

(declare-datatypes ((V!35029 0))(
  ( (V!35030 (val!11318 Int)) )
))
(declare-datatypes ((ValueCell!10786 0))(
  ( (ValueCellFull!10786 (v!13880 V!35029)) (EmptyCell!10786) )
))
(declare-datatypes ((array!61087 0))(
  ( (array!61088 (arr!29397 (Array (_ BitVec 32) ValueCell!10786)) (size!29877 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61087)

(declare-fun e!551188 () Bool)

(declare-fun array_inv!22627 (array!61087) Bool)

(assert (=> start!83760 (and (array_inv!22627 _values!1278) e!551188)))

(declare-datatypes ((array!61089 0))(
  ( (array!61090 (arr!29398 (Array (_ BitVec 32) (_ BitVec 64))) (size!29878 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61089)

(declare-fun array_inv!22628 (array!61089) Bool)

(assert (=> start!83760 (array_inv!22628 _keys!1544)))

(declare-fun b!977548 () Bool)

(assert (=> b!977548 (= e!551189 false)))

(declare-fun lt!433456 () Bool)

(declare-datatypes ((List!20510 0))(
  ( (Nil!20507) (Cons!20506 (h!21668 (_ BitVec 64)) (t!29033 List!20510)) )
))
(declare-fun arrayNoDuplicates!0 (array!61089 (_ BitVec 32) List!20510) Bool)

(assert (=> b!977548 (= lt!433456 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20507))))

(declare-fun b!977549 () Bool)

(declare-fun e!551185 () Bool)

(declare-fun mapRes!35831 () Bool)

(assert (=> b!977549 (= e!551188 (and e!551185 mapRes!35831))))

(declare-fun condMapEmpty!35831 () Bool)

(declare-fun mapDefault!35831 () ValueCell!10786)


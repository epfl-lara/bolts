; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83792 () Bool)

(assert start!83792)

(declare-fun b_free!19573 () Bool)

(declare-fun b_next!19573 () Bool)

(assert (=> start!83792 (= b_free!19573 (not b_next!19573))))

(declare-fun tp!68162 () Bool)

(declare-fun b_and!31253 () Bool)

(assert (=> start!83792 (= tp!68162 b_and!31253)))

(declare-fun b!977991 () Bool)

(declare-fun res!654612 () Bool)

(declare-fun e!551429 () Bool)

(assert (=> b!977991 (=> (not res!654612) (not e!551429))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61151 0))(
  ( (array!61152 (arr!29429 (Array (_ BitVec 32) (_ BitVec 64))) (size!29909 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61151)

(assert (=> b!977991 (= res!654612 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29909 _keys!1544))))))

(declare-fun res!654614 () Bool)

(assert (=> start!83792 (=> (not res!654614) (not e!551429))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83792 (= res!654614 (validMask!0 mask!1948))))

(assert (=> start!83792 e!551429))

(assert (=> start!83792 true))

(declare-fun tp_is_empty!22567 () Bool)

(assert (=> start!83792 tp_is_empty!22567))

(declare-datatypes ((V!35073 0))(
  ( (V!35074 (val!11334 Int)) )
))
(declare-datatypes ((ValueCell!10802 0))(
  ( (ValueCellFull!10802 (v!13896 V!35073)) (EmptyCell!10802) )
))
(declare-datatypes ((array!61153 0))(
  ( (array!61154 (arr!29430 (Array (_ BitVec 32) ValueCell!10802)) (size!29910 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61153)

(declare-fun e!551426 () Bool)

(declare-fun array_inv!22647 (array!61153) Bool)

(assert (=> start!83792 (and (array_inv!22647 _values!1278) e!551426)))

(assert (=> start!83792 tp!68162))

(declare-fun array_inv!22648 (array!61151) Bool)

(assert (=> start!83792 (array_inv!22648 _keys!1544)))

(declare-fun b!977992 () Bool)

(declare-fun res!654615 () Bool)

(assert (=> b!977992 (=> (not res!654615) (not e!551429))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977992 (= res!654615 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977993 () Bool)

(declare-fun res!654613 () Bool)

(assert (=> b!977993 (=> (not res!654613) (not e!551429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61151 (_ BitVec 32)) Bool)

(assert (=> b!977993 (= res!654613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977994 () Bool)

(declare-fun e!551428 () Bool)

(declare-fun mapRes!35879 () Bool)

(assert (=> b!977994 (= e!551426 (and e!551428 mapRes!35879))))

(declare-fun condMapEmpty!35879 () Bool)

(declare-fun mapDefault!35879 () ValueCell!10802)


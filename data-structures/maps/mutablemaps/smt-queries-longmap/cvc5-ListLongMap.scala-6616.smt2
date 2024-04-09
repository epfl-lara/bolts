; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83658 () Bool)

(assert start!83658)

(declare-fun mapIsEmpty!35723 () Bool)

(declare-fun mapRes!35723 () Bool)

(assert (=> mapIsEmpty!35723 mapRes!35723))

(declare-fun b!976836 () Bool)

(declare-fun res!653954 () Bool)

(declare-fun e!550620 () Bool)

(assert (=> b!976836 (=> (not res!653954) (not e!550620))))

(declare-datatypes ((array!60953 0))(
  ( (array!60954 (arr!29334 (Array (_ BitVec 32) (_ BitVec 64))) (size!29814 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60953)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60953 (_ BitVec 32)) Bool)

(assert (=> b!976836 (= res!653954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!976837 () Bool)

(assert (=> b!976837 (= e!550620 (bvsgt #b00000000000000000000000000000000 (size!29814 _keys!1544)))))

(declare-fun b!976838 () Bool)

(declare-fun res!653955 () Bool)

(assert (=> b!976838 (=> (not res!653955) (not e!550620))))

(declare-datatypes ((V!34945 0))(
  ( (V!34946 (val!11286 Int)) )
))
(declare-datatypes ((ValueCell!10754 0))(
  ( (ValueCellFull!10754 (v!13847 V!34945)) (EmptyCell!10754) )
))
(declare-datatypes ((array!60955 0))(
  ( (array!60956 (arr!29335 (Array (_ BitVec 32) ValueCell!10754)) (size!29815 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60955)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!976838 (= res!653955 (and (= (size!29815 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29814 _keys!1544) (size!29815 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!976839 () Bool)

(declare-fun e!550618 () Bool)

(declare-fun tp_is_empty!22471 () Bool)

(assert (=> b!976839 (= e!550618 tp_is_empty!22471)))

(declare-fun res!653956 () Bool)

(assert (=> start!83658 (=> (not res!653956) (not e!550620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83658 (= res!653956 (validMask!0 mask!1948))))

(assert (=> start!83658 e!550620))

(assert (=> start!83658 true))

(declare-fun e!550617 () Bool)

(declare-fun array_inv!22583 (array!60955) Bool)

(assert (=> start!83658 (and (array_inv!22583 _values!1278) e!550617)))

(declare-fun array_inv!22584 (array!60953) Bool)

(assert (=> start!83658 (array_inv!22584 _keys!1544)))

(declare-fun mapNonEmpty!35723 () Bool)

(declare-fun tp!67976 () Bool)

(assert (=> mapNonEmpty!35723 (= mapRes!35723 (and tp!67976 e!550618))))

(declare-fun mapRest!35723 () (Array (_ BitVec 32) ValueCell!10754))

(declare-fun mapKey!35723 () (_ BitVec 32))

(declare-fun mapValue!35723 () ValueCell!10754)

(assert (=> mapNonEmpty!35723 (= (arr!29335 _values!1278) (store mapRest!35723 mapKey!35723 mapValue!35723))))

(declare-fun b!976840 () Bool)

(declare-fun e!550619 () Bool)

(assert (=> b!976840 (= e!550619 tp_is_empty!22471)))

(declare-fun b!976841 () Bool)

(assert (=> b!976841 (= e!550617 (and e!550619 mapRes!35723))))

(declare-fun condMapEmpty!35723 () Bool)

(declare-fun mapDefault!35723 () ValueCell!10754)


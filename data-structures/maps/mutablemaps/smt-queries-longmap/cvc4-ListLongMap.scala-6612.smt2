; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83588 () Bool)

(assert start!83588)

(declare-fun b_free!19547 () Bool)

(declare-fun b_next!19547 () Bool)

(assert (=> start!83588 (= b_free!19547 (not b_next!19547))))

(declare-fun tp!67929 () Bool)

(declare-fun b_and!31203 () Bool)

(assert (=> start!83588 (= tp!67929 b_and!31203)))

(declare-fun mapNonEmpty!35686 () Bool)

(declare-fun mapRes!35686 () Bool)

(declare-fun tp!67930 () Bool)

(declare-fun e!550247 () Bool)

(assert (=> mapNonEmpty!35686 (= mapRes!35686 (and tp!67930 e!550247))))

(declare-datatypes ((V!34917 0))(
  ( (V!34918 (val!11276 Int)) )
))
(declare-datatypes ((ValueCell!10744 0))(
  ( (ValueCellFull!10744 (v!13835 V!34917)) (EmptyCell!10744) )
))
(declare-fun mapValue!35686 () ValueCell!10744)

(declare-datatypes ((array!60915 0))(
  ( (array!60916 (arr!29317 (Array (_ BitVec 32) ValueCell!10744)) (size!29797 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60915)

(declare-fun mapKey!35686 () (_ BitVec 32))

(declare-fun mapRest!35686 () (Array (_ BitVec 32) ValueCell!10744))

(assert (=> mapNonEmpty!35686 (= (arr!29317 _values!1425) (store mapRest!35686 mapKey!35686 mapValue!35686))))

(declare-fun b!976314 () Bool)

(declare-fun e!550248 () Bool)

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976314 (= e!550248 (bvslt i!822 #b00000000000000000000000000000000))))

(declare-fun b!976315 () Bool)

(declare-fun res!653711 () Bool)

(declare-fun e!550246 () Bool)

(assert (=> b!976315 (=> (not res!653711) (not e!550246))))

(declare-datatypes ((array!60917 0))(
  ( (array!60918 (arr!29318 (Array (_ BitVec 32) (_ BitVec 64))) (size!29798 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60917)

(declare-datatypes ((List!20481 0))(
  ( (Nil!20478) (Cons!20477 (h!21639 (_ BitVec 64)) (t!29002 List!20481)) )
))
(declare-fun arrayNoDuplicates!0 (array!60917 (_ BitVec 32) List!20481) Bool)

(assert (=> b!976315 (= res!653711 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20478))))

(declare-fun mapIsEmpty!35686 () Bool)

(assert (=> mapIsEmpty!35686 mapRes!35686))

(declare-fun res!653713 () Bool)

(assert (=> start!83588 (=> (not res!653713) (not e!550246))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83588 (= res!653713 (validMask!0 mask!2147))))

(assert (=> start!83588 e!550246))

(assert (=> start!83588 true))

(declare-fun e!550245 () Bool)

(declare-fun array_inv!22571 (array!60915) Bool)

(assert (=> start!83588 (and (array_inv!22571 _values!1425) e!550245)))

(declare-fun tp_is_empty!22451 () Bool)

(assert (=> start!83588 tp_is_empty!22451))

(assert (=> start!83588 tp!67929))

(declare-fun array_inv!22572 (array!60917) Bool)

(assert (=> start!83588 (array_inv!22572 _keys!1717)))

(declare-fun b!976316 () Bool)

(declare-fun e!550244 () Bool)

(assert (=> b!976316 (= e!550245 (and e!550244 mapRes!35686))))

(declare-fun condMapEmpty!35686 () Bool)

(declare-fun mapDefault!35686 () ValueCell!10744)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83676 () Bool)

(assert start!83676)

(declare-fun mapNonEmpty!35741 () Bool)

(declare-fun mapRes!35741 () Bool)

(declare-fun tp!67994 () Bool)

(declare-fun e!550709 () Bool)

(assert (=> mapNonEmpty!35741 (= mapRes!35741 (and tp!67994 e!550709))))

(declare-datatypes ((V!34957 0))(
  ( (V!34958 (val!11291 Int)) )
))
(declare-datatypes ((ValueCell!10759 0))(
  ( (ValueCellFull!10759 (v!13852 V!34957)) (EmptyCell!10759) )
))
(declare-datatypes ((array!60975 0))(
  ( (array!60976 (arr!29344 (Array (_ BitVec 32) ValueCell!10759)) (size!29824 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60975)

(declare-fun mapRest!35741 () (Array (_ BitVec 32) ValueCell!10759))

(declare-fun mapKey!35741 () (_ BitVec 32))

(declare-fun mapValue!35741 () ValueCell!10759)

(assert (=> mapNonEmpty!35741 (= (arr!29344 _values!1278) (store mapRest!35741 mapKey!35741 mapValue!35741))))

(declare-fun b!976946 () Bool)

(declare-fun res!654005 () Bool)

(declare-fun e!550708 () Bool)

(assert (=> b!976946 (=> (not res!654005) (not e!550708))))

(declare-datatypes ((array!60977 0))(
  ( (array!60978 (arr!29345 (Array (_ BitVec 32) (_ BitVec 64))) (size!29825 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60977)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60977 (_ BitVec 32)) Bool)

(assert (=> b!976946 (= res!654005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!976947 () Bool)

(declare-fun res!654006 () Bool)

(assert (=> b!976947 (=> (not res!654006) (not e!550708))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!976947 (= res!654006 (and (= (size!29824 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29825 _keys!1544) (size!29824 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!976948 () Bool)

(declare-fun e!550706 () Bool)

(declare-fun e!550710 () Bool)

(assert (=> b!976948 (= e!550706 (and e!550710 mapRes!35741))))

(declare-fun condMapEmpty!35741 () Bool)

(declare-fun mapDefault!35741 () ValueCell!10759)


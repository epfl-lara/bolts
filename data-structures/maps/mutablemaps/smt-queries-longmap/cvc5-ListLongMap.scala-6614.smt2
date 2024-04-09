; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83640 () Bool)

(assert start!83640)

(declare-fun mapIsEmpty!35702 () Bool)

(declare-fun mapRes!35702 () Bool)

(assert (=> mapIsEmpty!35702 mapRes!35702))

(declare-fun e!550521 () Bool)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!34929 0))(
  ( (V!34930 (val!11280 Int)) )
))
(declare-datatypes ((ValueCell!10748 0))(
  ( (ValueCellFull!10748 (v!13841 V!34929)) (EmptyCell!10748) )
))
(declare-datatypes ((array!60933 0))(
  ( (array!60934 (arr!29325 (Array (_ BitVec 32) ValueCell!10748)) (size!29805 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60933)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun b!976752 () Bool)

(declare-datatypes ((array!60935 0))(
  ( (array!60936 (arr!29326 (Array (_ BitVec 32) (_ BitVec 64))) (size!29806 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60935)

(assert (=> b!976752 (= e!550521 (and (= (size!29805 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29806 _keys!1544) (size!29805 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011) (not (= (size!29806 _keys!1544) (bvadd #b00000000000000000000000000000001 mask!1948)))))))

(declare-fun b!976753 () Bool)

(declare-fun e!550522 () Bool)

(declare-fun tp_is_empty!22459 () Bool)

(assert (=> b!976753 (= e!550522 tp_is_empty!22459)))

(declare-fun b!976754 () Bool)

(declare-fun e!550524 () Bool)

(assert (=> b!976754 (= e!550524 tp_is_empty!22459)))

(declare-fun b!976755 () Bool)

(declare-fun e!550520 () Bool)

(assert (=> b!976755 (= e!550520 (and e!550522 mapRes!35702))))

(declare-fun condMapEmpty!35702 () Bool)

(declare-fun mapDefault!35702 () ValueCell!10748)


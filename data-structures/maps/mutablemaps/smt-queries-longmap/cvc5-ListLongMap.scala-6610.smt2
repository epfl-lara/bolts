; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83572 () Bool)

(assert start!83572)

(declare-fun b_free!19531 () Bool)

(declare-fun b_next!19531 () Bool)

(assert (=> start!83572 (= b_free!19531 (not b_next!19531))))

(declare-fun tp!67882 () Bool)

(declare-fun b_and!31175 () Bool)

(assert (=> start!83572 (= tp!67882 b_and!31175)))

(declare-fun b!976038 () Bool)

(declare-fun e!550084 () Bool)

(declare-fun tp_is_empty!22435 () Bool)

(assert (=> b!976038 (= e!550084 tp_is_empty!22435)))

(declare-fun b!976039 () Bool)

(declare-fun res!653514 () Bool)

(declare-fun e!550085 () Bool)

(assert (=> b!976039 (=> (not res!653514) (not e!550085))))

(declare-datatypes ((array!60885 0))(
  ( (array!60886 (arr!29302 (Array (_ BitVec 32) (_ BitVec 64))) (size!29782 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60885)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976039 (= res!653514 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29782 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29782 _keys!1717))))))

(declare-fun b!976040 () Bool)

(declare-fun res!653518 () Bool)

(assert (=> b!976040 (=> (not res!653518) (not e!550085))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34897 0))(
  ( (V!34898 (val!11268 Int)) )
))
(declare-datatypes ((ValueCell!10736 0))(
  ( (ValueCellFull!10736 (v!13827 V!34897)) (EmptyCell!10736) )
))
(declare-datatypes ((array!60887 0))(
  ( (array!60888 (arr!29303 (Array (_ BitVec 32) ValueCell!10736)) (size!29783 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60887)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!976040 (= res!653518 (and (= (size!29783 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29782 _keys!1717) (size!29783 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35662 () Bool)

(declare-fun mapRes!35662 () Bool)

(declare-fun tp!67881 () Bool)

(declare-fun e!550087 () Bool)

(assert (=> mapNonEmpty!35662 (= mapRes!35662 (and tp!67881 e!550087))))

(declare-fun mapRest!35662 () (Array (_ BitVec 32) ValueCell!10736))

(declare-fun mapKey!35662 () (_ BitVec 32))

(declare-fun mapValue!35662 () ValueCell!10736)

(assert (=> mapNonEmpty!35662 (= (arr!29303 _values!1425) (store mapRest!35662 mapKey!35662 mapValue!35662))))

(declare-fun b!976041 () Bool)

(declare-fun e!550088 () Bool)

(assert (=> b!976041 (= e!550088 (and e!550084 mapRes!35662))))

(declare-fun condMapEmpty!35662 () Bool)

(declare-fun mapDefault!35662 () ValueCell!10736)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83444 () Bool)

(assert start!83444)

(declare-fun b_free!19409 () Bool)

(declare-fun b_next!19409 () Bool)

(assert (=> start!83444 (= b_free!19409 (not b_next!19409))))

(declare-fun tp!67506 () Bool)

(declare-fun b_and!31029 () Bool)

(assert (=> start!83444 (= tp!67506 b_and!31029)))

(declare-fun b!974074 () Bool)

(declare-fun res!652154 () Bool)

(declare-fun e!549067 () Bool)

(assert (=> b!974074 (=> (not res!652154) (not e!549067))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34725 0))(
  ( (V!34726 (val!11204 Int)) )
))
(declare-datatypes ((ValueCell!10672 0))(
  ( (ValueCellFull!10672 (v!13763 V!34725)) (EmptyCell!10672) )
))
(declare-datatypes ((array!60635 0))(
  ( (array!60636 (arr!29177 (Array (_ BitVec 32) ValueCell!10672)) (size!29657 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60635)

(declare-fun zeroValue!1367 () V!34725)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34725)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60637 0))(
  ( (array!60638 (arr!29178 (Array (_ BitVec 32) (_ BitVec 64))) (size!29658 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60637)

(declare-datatypes ((tuple2!14492 0))(
  ( (tuple2!14493 (_1!7256 (_ BitVec 64)) (_2!7256 V!34725)) )
))
(declare-datatypes ((List!20370 0))(
  ( (Nil!20367) (Cons!20366 (h!21528 tuple2!14492) (t!28855 List!20370)) )
))
(declare-datatypes ((ListLongMap!13203 0))(
  ( (ListLongMap!13204 (toList!6617 List!20370)) )
))
(declare-fun contains!5658 (ListLongMap!13203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3802 (array!60637 array!60635 (_ BitVec 32) (_ BitVec 32) V!34725 V!34725 (_ BitVec 32) Int) ListLongMap!13203)

(assert (=> b!974074 (= res!652154 (contains!5658 (getCurrentListMap!3802 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29178 _keys!1717) i!822)))))

(declare-fun b!974075 () Bool)

(declare-fun e!549069 () Bool)

(declare-fun tp_is_empty!22307 () Bool)

(assert (=> b!974075 (= e!549069 tp_is_empty!22307)))

(declare-fun b!974076 () Bool)

(declare-fun res!652155 () Bool)

(assert (=> b!974076 (=> (not res!652155) (not e!549067))))

(assert (=> b!974076 (= res!652155 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29658 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29658 _keys!1717))))))

(declare-fun mapIsEmpty!35470 () Bool)

(declare-fun mapRes!35470 () Bool)

(assert (=> mapIsEmpty!35470 mapRes!35470))

(declare-fun b!974077 () Bool)

(declare-fun res!652150 () Bool)

(assert (=> b!974077 (=> (not res!652150) (not e!549067))))

(declare-datatypes ((List!20371 0))(
  ( (Nil!20368) (Cons!20367 (h!21529 (_ BitVec 64)) (t!28856 List!20371)) )
))
(declare-fun arrayNoDuplicates!0 (array!60637 (_ BitVec 32) List!20371) Bool)

(assert (=> b!974077 (= res!652150 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20368))))

(declare-fun b!974078 () Bool)

(declare-fun res!652153 () Bool)

(assert (=> b!974078 (=> (not res!652153) (not e!549067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974078 (= res!652153 (validKeyInArray!0 (select (arr!29178 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35470 () Bool)

(declare-fun tp!67507 () Bool)

(declare-fun e!549068 () Bool)

(assert (=> mapNonEmpty!35470 (= mapRes!35470 (and tp!67507 e!549068))))

(declare-fun mapRest!35470 () (Array (_ BitVec 32) ValueCell!10672))

(declare-fun mapValue!35470 () ValueCell!10672)

(declare-fun mapKey!35470 () (_ BitVec 32))

(assert (=> mapNonEmpty!35470 (= (arr!29177 _values!1425) (store mapRest!35470 mapKey!35470 mapValue!35470))))

(declare-fun b!974079 () Bool)

(declare-fun e!549066 () Bool)

(assert (=> b!974079 (= e!549066 (and e!549069 mapRes!35470))))

(declare-fun condMapEmpty!35470 () Bool)

(declare-fun mapDefault!35470 () ValueCell!10672)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83584 () Bool)

(assert start!83584)

(declare-fun b_free!19543 () Bool)

(declare-fun b_next!19543 () Bool)

(assert (=> start!83584 (= b_free!19543 (not b_next!19543))))

(declare-fun tp!67918 () Bool)

(declare-fun b_and!31199 () Bool)

(assert (=> start!83584 (= tp!67918 b_and!31199)))

(declare-fun mapIsEmpty!35680 () Bool)

(declare-fun mapRes!35680 () Bool)

(assert (=> mapIsEmpty!35680 mapRes!35680))

(declare-fun b!976249 () Bool)

(declare-fun e!550208 () Bool)

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976249 (= e!550208 (bvslt i!822 #b00000000000000000000000000000000))))

(declare-fun b!976250 () Bool)

(declare-fun e!550212 () Bool)

(declare-fun tp_is_empty!22447 () Bool)

(assert (=> b!976250 (= e!550212 tp_is_empty!22447)))

(declare-fun b!976251 () Bool)

(declare-fun e!550211 () Bool)

(assert (=> b!976251 (= e!550211 e!550208)))

(declare-fun res!653658 () Bool)

(assert (=> b!976251 (=> (not res!653658) (not e!550208))))

(declare-datatypes ((array!60907 0))(
  ( (array!60908 (arr!29313 (Array (_ BitVec 32) (_ BitVec 64))) (size!29793 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60907)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976251 (= res!653658 (not (validKeyInArray!0 (select (arr!29313 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34913 0))(
  ( (V!34914 (val!11274 Int)) )
))
(declare-datatypes ((ValueCell!10742 0))(
  ( (ValueCellFull!10742 (v!13833 V!34913)) (EmptyCell!10742) )
))
(declare-datatypes ((array!60909 0))(
  ( (array!60910 (arr!29314 (Array (_ BitVec 32) ValueCell!10742)) (size!29794 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60909)

(declare-fun zeroValue!1367 () V!34913)

(declare-datatypes ((tuple2!14606 0))(
  ( (tuple2!14607 (_1!7313 (_ BitVec 64)) (_2!7313 V!34913)) )
))
(declare-datatypes ((List!20477 0))(
  ( (Nil!20474) (Cons!20473 (h!21635 tuple2!14606) (t!28998 List!20477)) )
))
(declare-datatypes ((ListLongMap!13317 0))(
  ( (ListLongMap!13318 (toList!6674 List!20477)) )
))
(declare-fun lt!433075 () ListLongMap!13317)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34913)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3859 (array!60907 array!60909 (_ BitVec 32) (_ BitVec 32) V!34913 V!34913 (_ BitVec 32) Int) ListLongMap!13317)

(assert (=> b!976251 (= lt!433075 (getCurrentListMap!3859 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976252 () Bool)

(declare-fun res!653664 () Bool)

(assert (=> b!976252 (=> (not res!653664) (not e!550211))))

(declare-fun contains!5705 (ListLongMap!13317 (_ BitVec 64)) Bool)

(assert (=> b!976252 (= res!653664 (contains!5705 (getCurrentListMap!3859 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29313 _keys!1717) i!822)))))

(declare-fun b!976253 () Bool)

(declare-fun res!653659 () Bool)

(assert (=> b!976253 (=> (not res!653659) (not e!550211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60907 (_ BitVec 32)) Bool)

(assert (=> b!976253 (= res!653659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976254 () Bool)

(declare-fun res!653663 () Bool)

(assert (=> b!976254 (=> (not res!653663) (not e!550211))))

(assert (=> b!976254 (= res!653663 (validKeyInArray!0 (select (arr!29313 _keys!1717) i!822)))))

(declare-fun b!976255 () Bool)

(declare-fun res!653660 () Bool)

(assert (=> b!976255 (=> (not res!653660) (not e!550211))))

(assert (=> b!976255 (= res!653660 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29793 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29793 _keys!1717))))))

(declare-fun b!976256 () Bool)

(declare-fun res!653661 () Bool)

(assert (=> b!976256 (=> (not res!653661) (not e!550211))))

(assert (=> b!976256 (= res!653661 (and (= (size!29794 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29793 _keys!1717) (size!29794 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976257 () Bool)

(declare-fun res!653665 () Bool)

(assert (=> b!976257 (=> (not res!653665) (not e!550211))))

(declare-datatypes ((List!20478 0))(
  ( (Nil!20475) (Cons!20474 (h!21636 (_ BitVec 64)) (t!28999 List!20478)) )
))
(declare-fun arrayNoDuplicates!0 (array!60907 (_ BitVec 32) List!20478) Bool)

(assert (=> b!976257 (= res!653665 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20475))))

(declare-fun b!976248 () Bool)

(declare-fun e!550210 () Bool)

(assert (=> b!976248 (= e!550210 tp_is_empty!22447)))

(declare-fun res!653662 () Bool)

(assert (=> start!83584 (=> (not res!653662) (not e!550211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83584 (= res!653662 (validMask!0 mask!2147))))

(assert (=> start!83584 e!550211))

(assert (=> start!83584 true))

(declare-fun e!550207 () Bool)

(declare-fun array_inv!22567 (array!60909) Bool)

(assert (=> start!83584 (and (array_inv!22567 _values!1425) e!550207)))

(assert (=> start!83584 tp_is_empty!22447))

(assert (=> start!83584 tp!67918))

(declare-fun array_inv!22568 (array!60907) Bool)

(assert (=> start!83584 (array_inv!22568 _keys!1717)))

(declare-fun mapNonEmpty!35680 () Bool)

(declare-fun tp!67917 () Bool)

(assert (=> mapNonEmpty!35680 (= mapRes!35680 (and tp!67917 e!550210))))

(declare-fun mapRest!35680 () (Array (_ BitVec 32) ValueCell!10742))

(declare-fun mapValue!35680 () ValueCell!10742)

(declare-fun mapKey!35680 () (_ BitVec 32))

(assert (=> mapNonEmpty!35680 (= (arr!29314 _values!1425) (store mapRest!35680 mapKey!35680 mapValue!35680))))

(declare-fun b!976258 () Bool)

(assert (=> b!976258 (= e!550207 (and e!550212 mapRes!35680))))

(declare-fun condMapEmpty!35680 () Bool)

(declare-fun mapDefault!35680 () ValueCell!10742)


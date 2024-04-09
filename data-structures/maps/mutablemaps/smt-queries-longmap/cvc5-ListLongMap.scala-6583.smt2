; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83410 () Bool)

(assert start!83410)

(declare-fun b_free!19375 () Bool)

(declare-fun b_next!19375 () Bool)

(assert (=> start!83410 (= b_free!19375 (not b_next!19375))))

(declare-fun tp!67404 () Bool)

(declare-fun b_and!30989 () Bool)

(assert (=> start!83410 (= tp!67404 b_and!30989)))

(declare-fun b!973551 () Bool)

(declare-fun res!651793 () Bool)

(declare-fun e!548798 () Bool)

(assert (=> b!973551 (=> (not res!651793) (not e!548798))))

(declare-datatypes ((array!60571 0))(
  ( (array!60572 (arr!29145 (Array (_ BitVec 32) (_ BitVec 64))) (size!29625 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60571)

(declare-datatypes ((List!20343 0))(
  ( (Nil!20340) (Cons!20339 (h!21501 (_ BitVec 64)) (t!28824 List!20343)) )
))
(declare-fun arrayNoDuplicates!0 (array!60571 (_ BitVec 32) List!20343) Bool)

(assert (=> b!973551 (= res!651793 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20340))))

(declare-fun mapNonEmpty!35419 () Bool)

(declare-fun mapRes!35419 () Bool)

(declare-fun tp!67405 () Bool)

(declare-fun e!548801 () Bool)

(assert (=> mapNonEmpty!35419 (= mapRes!35419 (and tp!67405 e!548801))))

(declare-fun mapKey!35419 () (_ BitVec 32))

(declare-datatypes ((V!34681 0))(
  ( (V!34682 (val!11187 Int)) )
))
(declare-datatypes ((ValueCell!10655 0))(
  ( (ValueCellFull!10655 (v!13746 V!34681)) (EmptyCell!10655) )
))
(declare-fun mapRest!35419 () (Array (_ BitVec 32) ValueCell!10655))

(declare-datatypes ((array!60573 0))(
  ( (array!60574 (arr!29146 (Array (_ BitVec 32) ValueCell!10655)) (size!29626 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60573)

(declare-fun mapValue!35419 () ValueCell!10655)

(assert (=> mapNonEmpty!35419 (= (arr!29146 _values!1425) (store mapRest!35419 mapKey!35419 mapValue!35419))))

(declare-fun b!973552 () Bool)

(declare-fun res!651787 () Bool)

(assert (=> b!973552 (=> (not res!651787) (not e!548798))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973552 (= res!651787 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29625 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29625 _keys!1717))))))

(declare-fun b!973553 () Bool)

(declare-fun res!651789 () Bool)

(assert (=> b!973553 (=> (not res!651789) (not e!548798))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!973553 (= res!651789 (and (= (size!29626 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29625 _keys!1717) (size!29626 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973554 () Bool)

(declare-fun e!548799 () Bool)

(declare-fun e!548796 () Bool)

(assert (=> b!973554 (= e!548799 e!548796)))

(declare-fun res!651786 () Bool)

(assert (=> b!973554 (=> (not res!651786) (not e!548796))))

(declare-fun lt!432604 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973554 (= res!651786 (validKeyInArray!0 lt!432604))))

(assert (=> b!973554 (= lt!432604 (select (arr!29145 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34681)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34681)

(declare-datatypes ((tuple2!14464 0))(
  ( (tuple2!14465 (_1!7242 (_ BitVec 64)) (_2!7242 V!34681)) )
))
(declare-datatypes ((List!20344 0))(
  ( (Nil!20341) (Cons!20340 (h!21502 tuple2!14464) (t!28825 List!20344)) )
))
(declare-datatypes ((ListLongMap!13175 0))(
  ( (ListLongMap!13176 (toList!6603 List!20344)) )
))
(declare-fun lt!432605 () ListLongMap!13175)

(declare-fun getCurrentListMap!3788 (array!60571 array!60573 (_ BitVec 32) (_ BitVec 32) V!34681 V!34681 (_ BitVec 32) Int) ListLongMap!13175)

(assert (=> b!973554 (= lt!432605 (getCurrentListMap!3788 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973555 () Bool)

(declare-fun res!651788 () Bool)

(assert (=> b!973555 (=> (not res!651788) (not e!548798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60571 (_ BitVec 32)) Bool)

(assert (=> b!973555 (= res!651788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!651792 () Bool)

(assert (=> start!83410 (=> (not res!651792) (not e!548798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83410 (= res!651792 (validMask!0 mask!2147))))

(assert (=> start!83410 e!548798))

(assert (=> start!83410 true))

(declare-fun e!548797 () Bool)

(declare-fun array_inv!22439 (array!60573) Bool)

(assert (=> start!83410 (and (array_inv!22439 _values!1425) e!548797)))

(declare-fun tp_is_empty!22273 () Bool)

(assert (=> start!83410 tp_is_empty!22273))

(assert (=> start!83410 tp!67404))

(declare-fun array_inv!22440 (array!60571) Bool)

(assert (=> start!83410 (array_inv!22440 _keys!1717)))

(declare-fun b!973556 () Bool)

(assert (=> b!973556 (= e!548796 (not (bvsle (bvsub from!2118 #b00000000000000000000000000000001) (size!29625 _keys!1717))))))

(declare-fun lt!432603 () tuple2!14464)

(declare-fun lt!432606 () ListLongMap!13175)

(declare-fun contains!5647 (ListLongMap!13175 (_ BitVec 64)) Bool)

(declare-fun +!2872 (ListLongMap!13175 tuple2!14464) ListLongMap!13175)

(assert (=> b!973556 (contains!5647 (+!2872 lt!432606 lt!432603) (select (arr!29145 _keys!1717) i!822))))

(declare-datatypes ((Unit!32405 0))(
  ( (Unit!32406) )
))
(declare-fun lt!432601 () Unit!32405)

(declare-fun lt!432602 () V!34681)

(declare-fun addStillContains!611 (ListLongMap!13175 (_ BitVec 64) V!34681 (_ BitVec 64)) Unit!32405)

(assert (=> b!973556 (= lt!432601 (addStillContains!611 lt!432606 lt!432604 lt!432602 (select (arr!29145 _keys!1717) i!822)))))

(assert (=> b!973556 (= lt!432605 (+!2872 (getCurrentListMap!3788 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432603))))

(assert (=> b!973556 (= lt!432603 (tuple2!14465 lt!432604 lt!432602))))

(declare-fun get!15133 (ValueCell!10655 V!34681) V!34681)

(declare-fun dynLambda!1711 (Int (_ BitVec 64)) V!34681)

(assert (=> b!973556 (= lt!432602 (get!15133 (select (arr!29146 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1711 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432607 () Unit!32405)

(declare-fun lemmaListMapRecursiveValidKeyArray!283 (array!60571 array!60573 (_ BitVec 32) (_ BitVec 32) V!34681 V!34681 (_ BitVec 32) Int) Unit!32405)

(assert (=> b!973556 (= lt!432607 (lemmaListMapRecursiveValidKeyArray!283 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973557 () Bool)

(assert (=> b!973557 (= e!548801 tp_is_empty!22273)))

(declare-fun mapIsEmpty!35419 () Bool)

(assert (=> mapIsEmpty!35419 mapRes!35419))

(declare-fun b!973558 () Bool)

(declare-fun res!651790 () Bool)

(assert (=> b!973558 (=> (not res!651790) (not e!548798))))

(assert (=> b!973558 (= res!651790 (validKeyInArray!0 (select (arr!29145 _keys!1717) i!822)))))

(declare-fun b!973559 () Bool)

(declare-fun e!548800 () Bool)

(assert (=> b!973559 (= e!548797 (and e!548800 mapRes!35419))))

(declare-fun condMapEmpty!35419 () Bool)

(declare-fun mapDefault!35419 () ValueCell!10655)


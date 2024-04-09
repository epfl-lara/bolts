; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83552 () Bool)

(assert start!83552)

(declare-fun b_free!19511 () Bool)

(declare-fun b_next!19511 () Bool)

(assert (=> start!83552 (= b_free!19511 (not b_next!19511))))

(declare-fun tp!67821 () Bool)

(declare-fun b_and!31135 () Bool)

(assert (=> start!83552 (= tp!67821 b_and!31135)))

(declare-fun b!975688 () Bool)

(declare-fun res!653276 () Bool)

(declare-fun e!549905 () Bool)

(assert (=> b!975688 (=> (not res!653276) (not e!549905))))

(declare-datatypes ((array!60845 0))(
  ( (array!60846 (arr!29282 (Array (_ BitVec 32) (_ BitVec 64))) (size!29762 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60845)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975688 (= res!653276 (validKeyInArray!0 (select (arr!29282 _keys!1717) i!822)))))

(declare-fun b!975689 () Bool)

(declare-fun res!653281 () Bool)

(assert (=> b!975689 (=> (not res!653281) (not e!549905))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60845 (_ BitVec 32)) Bool)

(assert (=> b!975689 (= res!653281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!653278 () Bool)

(assert (=> start!83552 (=> (not res!653278) (not e!549905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83552 (= res!653278 (validMask!0 mask!2147))))

(assert (=> start!83552 e!549905))

(assert (=> start!83552 true))

(declare-datatypes ((V!34869 0))(
  ( (V!34870 (val!11258 Int)) )
))
(declare-datatypes ((ValueCell!10726 0))(
  ( (ValueCellFull!10726 (v!13817 V!34869)) (EmptyCell!10726) )
))
(declare-datatypes ((array!60847 0))(
  ( (array!60848 (arr!29283 (Array (_ BitVec 32) ValueCell!10726)) (size!29763 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60847)

(declare-fun e!549902 () Bool)

(declare-fun array_inv!22543 (array!60847) Bool)

(assert (=> start!83552 (and (array_inv!22543 _values!1425) e!549902)))

(declare-fun tp_is_empty!22415 () Bool)

(assert (=> start!83552 tp_is_empty!22415))

(assert (=> start!83552 tp!67821))

(declare-fun array_inv!22544 (array!60845) Bool)

(assert (=> start!83552 (array_inv!22544 _keys!1717)))

(declare-fun b!975690 () Bool)

(declare-fun res!653275 () Bool)

(assert (=> b!975690 (=> (not res!653275) (not e!549905))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!975690 (= res!653275 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29762 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29762 _keys!1717))))))

(declare-fun mapIsEmpty!35632 () Bool)

(declare-fun mapRes!35632 () Bool)

(assert (=> mapIsEmpty!35632 mapRes!35632))

(declare-fun b!975691 () Bool)

(declare-fun res!653277 () Bool)

(assert (=> b!975691 (=> (not res!653277) (not e!549905))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975691 (= res!653277 (and (= (size!29763 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29762 _keys!1717) (size!29763 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975692 () Bool)

(declare-fun e!549903 () Bool)

(assert (=> b!975692 (= e!549903 tp_is_empty!22415)))

(declare-fun b!975693 () Bool)

(declare-fun res!653279 () Bool)

(assert (=> b!975693 (=> (not res!653279) (not e!549905))))

(declare-fun zeroValue!1367 () V!34869)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34869)

(declare-datatypes ((tuple2!14582 0))(
  ( (tuple2!14583 (_1!7301 (_ BitVec 64)) (_2!7301 V!34869)) )
))
(declare-datatypes ((List!20454 0))(
  ( (Nil!20451) (Cons!20450 (h!21612 tuple2!14582) (t!28945 List!20454)) )
))
(declare-datatypes ((ListLongMap!13293 0))(
  ( (ListLongMap!13294 (toList!6662 List!20454)) )
))
(declare-fun contains!5694 (ListLongMap!13293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3847 (array!60845 array!60847 (_ BitVec 32) (_ BitVec 32) V!34869 V!34869 (_ BitVec 32) Int) ListLongMap!13293)

(assert (=> b!975693 (= res!653279 (contains!5694 (getCurrentListMap!3847 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29282 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35632 () Bool)

(declare-fun tp!67822 () Bool)

(assert (=> mapNonEmpty!35632 (= mapRes!35632 (and tp!67822 e!549903))))

(declare-fun mapValue!35632 () ValueCell!10726)

(declare-fun mapKey!35632 () (_ BitVec 32))

(declare-fun mapRest!35632 () (Array (_ BitVec 32) ValueCell!10726))

(assert (=> mapNonEmpty!35632 (= (arr!29283 _values!1425) (store mapRest!35632 mapKey!35632 mapValue!35632))))

(declare-fun b!975694 () Bool)

(declare-fun e!549906 () Bool)

(assert (=> b!975694 (= e!549906 (not (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29762 _keys!1717))))))

(declare-fun lt!432863 () ListLongMap!13293)

(declare-fun lt!432865 () (_ BitVec 64))

(declare-fun +!2876 (ListLongMap!13293 tuple2!14582) ListLongMap!13293)

(declare-fun get!15183 (ValueCell!10726 V!34869) V!34869)

(declare-fun dynLambda!1715 (Int (_ BitVec 64)) V!34869)

(assert (=> b!975694 (= lt!432863 (+!2876 (getCurrentListMap!3847 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14583 lt!432865 (get!15183 (select (arr!29283 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1715 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32413 0))(
  ( (Unit!32414) )
))
(declare-fun lt!432864 () Unit!32413)

(declare-fun lemmaListMapRecursiveValidKeyArray!287 (array!60845 array!60847 (_ BitVec 32) (_ BitVec 32) V!34869 V!34869 (_ BitVec 32) Int) Unit!32413)

(assert (=> b!975694 (= lt!432864 (lemmaListMapRecursiveValidKeyArray!287 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975695 () Bool)

(declare-fun e!549901 () Bool)

(assert (=> b!975695 (= e!549901 tp_is_empty!22415)))

(declare-fun b!975696 () Bool)

(assert (=> b!975696 (= e!549905 e!549906)))

(declare-fun res!653274 () Bool)

(assert (=> b!975696 (=> (not res!653274) (not e!549906))))

(assert (=> b!975696 (= res!653274 (validKeyInArray!0 lt!432865))))

(assert (=> b!975696 (= lt!432865 (select (arr!29282 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!975696 (= lt!432863 (getCurrentListMap!3847 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975697 () Bool)

(declare-fun res!653280 () Bool)

(assert (=> b!975697 (=> (not res!653280) (not e!549905))))

(declare-datatypes ((List!20455 0))(
  ( (Nil!20452) (Cons!20451 (h!21613 (_ BitVec 64)) (t!28946 List!20455)) )
))
(declare-fun arrayNoDuplicates!0 (array!60845 (_ BitVec 32) List!20455) Bool)

(assert (=> b!975697 (= res!653280 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20452))))

(declare-fun b!975698 () Bool)

(assert (=> b!975698 (= e!549902 (and e!549901 mapRes!35632))))

(declare-fun condMapEmpty!35632 () Bool)

(declare-fun mapDefault!35632 () ValueCell!10726)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83894 () Bool)

(assert start!83894)

(declare-fun b_free!19675 () Bool)

(declare-fun b_next!19675 () Bool)

(assert (=> start!83894 (= b_free!19675 (not b_next!19675))))

(declare-fun tp!68468 () Bool)

(declare-fun b_and!31457 () Bool)

(assert (=> start!83894 (= tp!68468 b_and!31457)))

(declare-fun b!979706 () Bool)

(declare-fun res!655770 () Bool)

(declare-fun e!552276 () Bool)

(assert (=> b!979706 (=> (not res!655770) (not e!552276))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35209 0))(
  ( (V!35210 (val!11385 Int)) )
))
(declare-datatypes ((ValueCell!10853 0))(
  ( (ValueCellFull!10853 (v!13947 V!35209)) (EmptyCell!10853) )
))
(declare-datatypes ((array!61349 0))(
  ( (array!61350 (arr!29528 (Array (_ BitVec 32) ValueCell!10853)) (size!30008 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61349)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61351 0))(
  ( (array!61352 (arr!29529 (Array (_ BitVec 32) (_ BitVec 64))) (size!30009 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61351)

(assert (=> b!979706 (= res!655770 (and (= (size!30008 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30009 _keys!1544) (size!30008 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979707 () Bool)

(declare-fun res!655766 () Bool)

(assert (=> b!979707 (=> (not res!655766) (not e!552276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61351 (_ BitVec 32)) Bool)

(assert (=> b!979707 (= res!655766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36032 () Bool)

(declare-fun mapRes!36032 () Bool)

(assert (=> mapIsEmpty!36032 mapRes!36032))

(declare-fun b!979708 () Bool)

(declare-fun res!655769 () Bool)

(assert (=> b!979708 (=> (not res!655769) (not e!552276))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979708 (= res!655769 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30009 _keys!1544))))))

(declare-fun b!979709 () Bool)

(declare-fun res!655768 () Bool)

(assert (=> b!979709 (=> (not res!655768) (not e!552276))))

(assert (=> b!979709 (= res!655768 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36032 () Bool)

(declare-fun tp!68467 () Bool)

(declare-fun e!552275 () Bool)

(assert (=> mapNonEmpty!36032 (= mapRes!36032 (and tp!68467 e!552275))))

(declare-fun mapRest!36032 () (Array (_ BitVec 32) ValueCell!10853))

(declare-fun mapKey!36032 () (_ BitVec 32))

(declare-fun mapValue!36032 () ValueCell!10853)

(assert (=> mapNonEmpty!36032 (= (arr!29528 _values!1278) (store mapRest!36032 mapKey!36032 mapValue!36032))))

(declare-fun b!979710 () Bool)

(declare-fun e!552278 () Bool)

(declare-fun tp_is_empty!22669 () Bool)

(assert (=> b!979710 (= e!552278 tp_is_empty!22669)))

(declare-fun res!655764 () Bool)

(assert (=> start!83894 (=> (not res!655764) (not e!552276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83894 (= res!655764 (validMask!0 mask!1948))))

(assert (=> start!83894 e!552276))

(assert (=> start!83894 true))

(assert (=> start!83894 tp_is_empty!22669))

(declare-fun e!552273 () Bool)

(declare-fun array_inv!22719 (array!61349) Bool)

(assert (=> start!83894 (and (array_inv!22719 _values!1278) e!552273)))

(assert (=> start!83894 tp!68468))

(declare-fun array_inv!22720 (array!61351) Bool)

(assert (=> start!83894 (array_inv!22720 _keys!1544)))

(declare-fun b!979711 () Bool)

(assert (=> b!979711 (= e!552275 tp_is_empty!22669)))

(declare-fun b!979712 () Bool)

(declare-fun e!552274 () Bool)

(assert (=> b!979712 (= e!552276 (not e!552274))))

(declare-fun res!655765 () Bool)

(assert (=> b!979712 (=> res!655765 e!552274)))

(assert (=> b!979712 (= res!655765 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29529 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14706 0))(
  ( (tuple2!14707 (_1!7363 (_ BitVec 64)) (_2!7363 V!35209)) )
))
(declare-datatypes ((List!20599 0))(
  ( (Nil!20596) (Cons!20595 (h!21757 tuple2!14706) (t!29238 List!20599)) )
))
(declare-datatypes ((ListLongMap!13417 0))(
  ( (ListLongMap!13418 (toList!6724 List!20599)) )
))
(declare-fun lt!434760 () ListLongMap!13417)

(declare-fun lt!434755 () tuple2!14706)

(declare-fun lt!434758 () ListLongMap!13417)

(declare-fun lt!434757 () tuple2!14706)

(declare-fun +!2930 (ListLongMap!13417 tuple2!14706) ListLongMap!13417)

(assert (=> b!979712 (= (+!2930 lt!434760 lt!434755) (+!2930 lt!434758 lt!434757))))

(declare-fun lt!434759 () ListLongMap!13417)

(assert (=> b!979712 (= lt!434758 (+!2930 lt!434759 lt!434755))))

(declare-fun lt!434756 () V!35209)

(assert (=> b!979712 (= lt!434755 (tuple2!14707 (select (arr!29529 _keys!1544) from!1932) lt!434756))))

(assert (=> b!979712 (= lt!434760 (+!2930 lt!434759 lt!434757))))

(declare-fun minValue!1220 () V!35209)

(assert (=> b!979712 (= lt!434757 (tuple2!14707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32535 0))(
  ( (Unit!32536) )
))
(declare-fun lt!434763 () Unit!32535)

(declare-fun addCommutativeForDiffKeys!592 (ListLongMap!13417 (_ BitVec 64) V!35209 (_ BitVec 64) V!35209) Unit!32535)

(assert (=> b!979712 (= lt!434763 (addCommutativeForDiffKeys!592 lt!434759 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29529 _keys!1544) from!1932) lt!434756))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15322 (ValueCell!10853 V!35209) V!35209)

(declare-fun dynLambda!1765 (Int (_ BitVec 64)) V!35209)

(assert (=> b!979712 (= lt!434756 (get!15322 (select (arr!29528 _values!1278) from!1932) (dynLambda!1765 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434764 () ListLongMap!13417)

(declare-fun lt!434762 () tuple2!14706)

(assert (=> b!979712 (= lt!434759 (+!2930 lt!434764 lt!434762))))

(declare-fun zeroValue!1220 () V!35209)

(assert (=> b!979712 (= lt!434762 (tuple2!14707 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3390 (array!61351 array!61349 (_ BitVec 32) (_ BitVec 32) V!35209 V!35209 (_ BitVec 32) Int) ListLongMap!13417)

(assert (=> b!979712 (= lt!434764 (getCurrentListMapNoExtraKeys!3390 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979713 () Bool)

(declare-fun res!655767 () Bool)

(assert (=> b!979713 (=> (not res!655767) (not e!552276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979713 (= res!655767 (validKeyInArray!0 (select (arr!29529 _keys!1544) from!1932)))))

(declare-fun b!979714 () Bool)

(assert (=> b!979714 (= e!552274 true)))

(assert (=> b!979714 (= lt!434758 (+!2930 (+!2930 lt!434764 lt!434755) lt!434762))))

(declare-fun lt!434761 () Unit!32535)

(assert (=> b!979714 (= lt!434761 (addCommutativeForDiffKeys!592 lt!434764 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29529 _keys!1544) from!1932) lt!434756))))

(declare-fun b!979715 () Bool)

(assert (=> b!979715 (= e!552273 (and e!552278 mapRes!36032))))

(declare-fun condMapEmpty!36032 () Bool)

(declare-fun mapDefault!36032 () ValueCell!10853)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83910 () Bool)

(assert start!83910)

(declare-fun b_free!19691 () Bool)

(declare-fun b_next!19691 () Bool)

(assert (=> start!83910 (= b_free!19691 (not b_next!19691))))

(declare-fun tp!68515 () Bool)

(declare-fun b_and!31489 () Bool)

(assert (=> start!83910 (= tp!68515 b_and!31489)))

(declare-fun b!979986 () Bool)

(declare-fun res!655956 () Bool)

(declare-fun e!552418 () Bool)

(assert (=> b!979986 (=> (not res!655956) (not e!552418))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979986 (= res!655956 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979987 () Bool)

(declare-fun res!655962 () Bool)

(assert (=> b!979987 (=> (not res!655962) (not e!552418))))

(declare-datatypes ((array!61379 0))(
  ( (array!61380 (arr!29543 (Array (_ BitVec 32) (_ BitVec 64))) (size!30023 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61379)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979987 (= res!655962 (validKeyInArray!0 (select (arr!29543 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36056 () Bool)

(declare-fun mapRes!36056 () Bool)

(assert (=> mapIsEmpty!36056 mapRes!36056))

(declare-fun b!979988 () Bool)

(declare-fun res!655955 () Bool)

(assert (=> b!979988 (=> (not res!655955) (not e!552418))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35229 0))(
  ( (V!35230 (val!11393 Int)) )
))
(declare-datatypes ((ValueCell!10861 0))(
  ( (ValueCellFull!10861 (v!13955 V!35229)) (EmptyCell!10861) )
))
(declare-datatypes ((array!61381 0))(
  ( (array!61382 (arr!29544 (Array (_ BitVec 32) ValueCell!10861)) (size!30024 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61381)

(assert (=> b!979988 (= res!655955 (and (= (size!30024 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30023 _keys!1544) (size!30024 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979989 () Bool)

(declare-fun e!552422 () Bool)

(assert (=> b!979989 (= e!552418 (not e!552422))))

(declare-fun res!655961 () Bool)

(assert (=> b!979989 (=> res!655961 e!552422)))

(assert (=> b!979989 (= res!655961 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29543 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14718 0))(
  ( (tuple2!14719 (_1!7369 (_ BitVec 64)) (_2!7369 V!35229)) )
))
(declare-datatypes ((List!20609 0))(
  ( (Nil!20606) (Cons!20605 (h!21767 tuple2!14718) (t!29264 List!20609)) )
))
(declare-datatypes ((ListLongMap!13429 0))(
  ( (ListLongMap!13430 (toList!6730 List!20609)) )
))
(declare-fun lt!434997 () ListLongMap!13429)

(declare-fun lt!435002 () tuple2!14718)

(declare-fun lt!434995 () tuple2!14718)

(declare-fun lt!434999 () ListLongMap!13429)

(declare-fun +!2936 (ListLongMap!13429 tuple2!14718) ListLongMap!13429)

(assert (=> b!979989 (= (+!2936 lt!434999 lt!435002) (+!2936 lt!434997 lt!434995))))

(declare-fun lt!435000 () ListLongMap!13429)

(assert (=> b!979989 (= lt!434997 (+!2936 lt!435000 lt!435002))))

(declare-fun lt!434998 () V!35229)

(assert (=> b!979989 (= lt!435002 (tuple2!14719 (select (arr!29543 _keys!1544) from!1932) lt!434998))))

(assert (=> b!979989 (= lt!434999 (+!2936 lt!435000 lt!434995))))

(declare-fun minValue!1220 () V!35229)

(assert (=> b!979989 (= lt!434995 (tuple2!14719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32547 0))(
  ( (Unit!32548) )
))
(declare-fun lt!434996 () Unit!32547)

(declare-fun addCommutativeForDiffKeys!598 (ListLongMap!13429 (_ BitVec 64) V!35229 (_ BitVec 64) V!35229) Unit!32547)

(assert (=> b!979989 (= lt!434996 (addCommutativeForDiffKeys!598 lt!435000 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29543 _keys!1544) from!1932) lt!434998))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15331 (ValueCell!10861 V!35229) V!35229)

(declare-fun dynLambda!1770 (Int (_ BitVec 64)) V!35229)

(assert (=> b!979989 (= lt!434998 (get!15331 (select (arr!29544 _values!1278) from!1932) (dynLambda!1770 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435003 () ListLongMap!13429)

(declare-fun lt!435001 () tuple2!14718)

(assert (=> b!979989 (= lt!435000 (+!2936 lt!435003 lt!435001))))

(declare-fun zeroValue!1220 () V!35229)

(assert (=> b!979989 (= lt!435001 (tuple2!14719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3395 (array!61379 array!61381 (_ BitVec 32) (_ BitVec 32) V!35229 V!35229 (_ BitVec 32) Int) ListLongMap!13429)

(assert (=> b!979989 (= lt!435003 (getCurrentListMapNoExtraKeys!3395 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!655958 () Bool)

(assert (=> start!83910 (=> (not res!655958) (not e!552418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83910 (= res!655958 (validMask!0 mask!1948))))

(assert (=> start!83910 e!552418))

(assert (=> start!83910 true))

(declare-fun tp_is_empty!22685 () Bool)

(assert (=> start!83910 tp_is_empty!22685))

(declare-fun e!552421 () Bool)

(declare-fun array_inv!22727 (array!61381) Bool)

(assert (=> start!83910 (and (array_inv!22727 _values!1278) e!552421)))

(assert (=> start!83910 tp!68515))

(declare-fun array_inv!22728 (array!61379) Bool)

(assert (=> start!83910 (array_inv!22728 _keys!1544)))

(declare-fun b!979990 () Bool)

(declare-fun e!552419 () Bool)

(assert (=> b!979990 (= e!552419 tp_is_empty!22685)))

(declare-fun b!979991 () Bool)

(declare-fun res!655957 () Bool)

(assert (=> b!979991 (=> (not res!655957) (not e!552418))))

(declare-datatypes ((List!20610 0))(
  ( (Nil!20607) (Cons!20606 (h!21768 (_ BitVec 64)) (t!29265 List!20610)) )
))
(declare-fun arrayNoDuplicates!0 (array!61379 (_ BitVec 32) List!20610) Bool)

(assert (=> b!979991 (= res!655957 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20607))))

(declare-fun mapNonEmpty!36056 () Bool)

(declare-fun tp!68516 () Bool)

(declare-fun e!552417 () Bool)

(assert (=> mapNonEmpty!36056 (= mapRes!36056 (and tp!68516 e!552417))))

(declare-fun mapValue!36056 () ValueCell!10861)

(declare-fun mapRest!36056 () (Array (_ BitVec 32) ValueCell!10861))

(declare-fun mapKey!36056 () (_ BitVec 32))

(assert (=> mapNonEmpty!36056 (= (arr!29544 _values!1278) (store mapRest!36056 mapKey!36056 mapValue!36056))))

(declare-fun b!979992 () Bool)

(declare-fun res!655960 () Bool)

(assert (=> b!979992 (=> (not res!655960) (not e!552418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61379 (_ BitVec 32)) Bool)

(assert (=> b!979992 (= res!655960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979993 () Bool)

(assert (=> b!979993 (= e!552421 (and e!552419 mapRes!36056))))

(declare-fun condMapEmpty!36056 () Bool)

(declare-fun mapDefault!36056 () ValueCell!10861)


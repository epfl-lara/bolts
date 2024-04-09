; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83798 () Bool)

(assert start!83798)

(declare-fun b_free!19579 () Bool)

(declare-fun b_next!19579 () Bool)

(assert (=> start!83798 (= b_free!19579 (not b_next!19579))))

(declare-fun tp!68179 () Bool)

(declare-fun b_and!31265 () Bool)

(assert (=> start!83798 (= tp!68179 b_and!31265)))

(declare-fun b!978087 () Bool)

(declare-fun res!654674 () Bool)

(declare-fun e!551474 () Bool)

(assert (=> b!978087 (=> (not res!654674) (not e!551474))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35081 0))(
  ( (V!35082 (val!11337 Int)) )
))
(declare-datatypes ((ValueCell!10805 0))(
  ( (ValueCellFull!10805 (v!13899 V!35081)) (EmptyCell!10805) )
))
(declare-datatypes ((array!61163 0))(
  ( (array!61164 (arr!29435 (Array (_ BitVec 32) ValueCell!10805)) (size!29915 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61163)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61165 0))(
  ( (array!61166 (arr!29436 (Array (_ BitVec 32) (_ BitVec 64))) (size!29916 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61165)

(assert (=> b!978087 (= res!654674 (and (= (size!29915 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29916 _keys!1544) (size!29915 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978088 () Bool)

(assert (=> b!978088 (= e!551474 (not true))))

(declare-datatypes ((tuple2!14632 0))(
  ( (tuple2!14633 (_1!7326 (_ BitVec 64)) (_2!7326 V!35081)) )
))
(declare-datatypes ((List!20532 0))(
  ( (Nil!20529) (Cons!20528 (h!21690 tuple2!14632) (t!29075 List!20532)) )
))
(declare-datatypes ((ListLongMap!13343 0))(
  ( (ListLongMap!13344 (toList!6687 List!20532)) )
))
(declare-fun lt!433622 () ListLongMap!13343)

(declare-fun lt!433623 () tuple2!14632)

(declare-fun lt!433620 () tuple2!14632)

(declare-fun +!2893 (ListLongMap!13343 tuple2!14632) ListLongMap!13343)

(assert (=> b!978088 (= (+!2893 (+!2893 lt!433622 lt!433623) lt!433620) (+!2893 (+!2893 lt!433622 lt!433620) lt!433623))))

(declare-fun lt!433621 () V!35081)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978088 (= lt!433620 (tuple2!14633 (select (arr!29436 _keys!1544) from!1932) lt!433621))))

(declare-fun minValue!1220 () V!35081)

(assert (=> b!978088 (= lt!433623 (tuple2!14633 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32461 0))(
  ( (Unit!32462) )
))
(declare-fun lt!433624 () Unit!32461)

(declare-fun addCommutativeForDiffKeys!555 (ListLongMap!13343 (_ BitVec 64) V!35081 (_ BitVec 64) V!35081) Unit!32461)

(assert (=> b!978088 (= lt!433624 (addCommutativeForDiffKeys!555 lt!433622 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29436 _keys!1544) from!1932) lt!433621))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15254 (ValueCell!10805 V!35081) V!35081)

(declare-fun dynLambda!1729 (Int (_ BitVec 64)) V!35081)

(assert (=> b!978088 (= lt!433621 (get!15254 (select (arr!29435 _values!1278) from!1932) (dynLambda!1729 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35081)

(declare-fun getCurrentListMapNoExtraKeys!3354 (array!61165 array!61163 (_ BitVec 32) (_ BitVec 32) V!35081 V!35081 (_ BitVec 32) Int) ListLongMap!13343)

(assert (=> b!978088 (= lt!433622 (+!2893 (getCurrentListMapNoExtraKeys!3354 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978089 () Bool)

(declare-fun res!654675 () Bool)

(assert (=> b!978089 (=> (not res!654675) (not e!551474))))

(declare-datatypes ((List!20533 0))(
  ( (Nil!20530) (Cons!20529 (h!21691 (_ BitVec 64)) (t!29076 List!20533)) )
))
(declare-fun arrayNoDuplicates!0 (array!61165 (_ BitVec 32) List!20533) Bool)

(assert (=> b!978089 (= res!654675 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20530))))

(declare-fun b!978090 () Bool)

(declare-fun res!654673 () Bool)

(assert (=> b!978090 (=> (not res!654673) (not e!551474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978090 (= res!654673 (validKeyInArray!0 (select (arr!29436 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!35888 () Bool)

(declare-fun mapRes!35888 () Bool)

(declare-fun tp!68180 () Bool)

(declare-fun e!551472 () Bool)

(assert (=> mapNonEmpty!35888 (= mapRes!35888 (and tp!68180 e!551472))))

(declare-fun mapRest!35888 () (Array (_ BitVec 32) ValueCell!10805))

(declare-fun mapKey!35888 () (_ BitVec 32))

(declare-fun mapValue!35888 () ValueCell!10805)

(assert (=> mapNonEmpty!35888 (= (arr!29435 _values!1278) (store mapRest!35888 mapKey!35888 mapValue!35888))))

(declare-fun b!978091 () Bool)

(declare-fun res!654677 () Bool)

(assert (=> b!978091 (=> (not res!654677) (not e!551474))))

(assert (=> b!978091 (= res!654677 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978092 () Bool)

(declare-fun res!654672 () Bool)

(assert (=> b!978092 (=> (not res!654672) (not e!551474))))

(assert (=> b!978092 (= res!654672 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29916 _keys!1544))))))

(declare-fun b!978093 () Bool)

(declare-fun res!654678 () Bool)

(assert (=> b!978093 (=> (not res!654678) (not e!551474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61165 (_ BitVec 32)) Bool)

(assert (=> b!978093 (= res!654678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978094 () Bool)

(declare-fun tp_is_empty!22573 () Bool)

(assert (=> b!978094 (= e!551472 tp_is_empty!22573)))

(declare-fun mapIsEmpty!35888 () Bool)

(assert (=> mapIsEmpty!35888 mapRes!35888))

(declare-fun res!654676 () Bool)

(assert (=> start!83798 (=> (not res!654676) (not e!551474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83798 (= res!654676 (validMask!0 mask!1948))))

(assert (=> start!83798 e!551474))

(assert (=> start!83798 true))

(assert (=> start!83798 tp_is_empty!22573))

(declare-fun e!551473 () Bool)

(declare-fun array_inv!22653 (array!61163) Bool)

(assert (=> start!83798 (and (array_inv!22653 _values!1278) e!551473)))

(assert (=> start!83798 tp!68179))

(declare-fun array_inv!22654 (array!61165) Bool)

(assert (=> start!83798 (array_inv!22654 _keys!1544)))

(declare-fun b!978095 () Bool)

(declare-fun e!551470 () Bool)

(assert (=> b!978095 (= e!551470 tp_is_empty!22573)))

(declare-fun b!978096 () Bool)

(assert (=> b!978096 (= e!551473 (and e!551470 mapRes!35888))))

(declare-fun condMapEmpty!35888 () Bool)

(declare-fun mapDefault!35888 () ValueCell!10805)


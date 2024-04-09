; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83774 () Bool)

(assert start!83774)

(declare-fun b_free!19555 () Bool)

(declare-fun b_next!19555 () Bool)

(assert (=> start!83774 (= b_free!19555 (not b_next!19555))))

(declare-fun tp!68107 () Bool)

(declare-fun b_and!31223 () Bool)

(assert (=> start!83774 (= tp!68107 b_and!31223)))

(declare-fun b!977709 () Bool)

(declare-fun res!654420 () Bool)

(declare-fun e!551293 () Bool)

(assert (=> b!977709 (=> (not res!654420) (not e!551293))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977709 (= res!654420 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977710 () Bool)

(declare-fun res!654426 () Bool)

(assert (=> b!977710 (=> (not res!654426) (not e!551293))))

(declare-datatypes ((array!61115 0))(
  ( (array!61116 (arr!29411 (Array (_ BitVec 32) (_ BitVec 64))) (size!29891 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61115)

(declare-datatypes ((List!20515 0))(
  ( (Nil!20512) (Cons!20511 (h!21673 (_ BitVec 64)) (t!29038 List!20515)) )
))
(declare-fun arrayNoDuplicates!0 (array!61115 (_ BitVec 32) List!20515) Bool)

(assert (=> b!977710 (= res!654426 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20512))))

(declare-fun b!977711 () Bool)

(declare-fun e!551290 () Bool)

(declare-fun tp_is_empty!22549 () Bool)

(assert (=> b!977711 (= e!551290 tp_is_empty!22549)))

(declare-fun b!977713 () Bool)

(declare-fun res!654421 () Bool)

(assert (=> b!977713 (=> (not res!654421) (not e!551293))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977713 (= res!654421 (validKeyInArray!0 (select (arr!29411 _keys!1544) from!1932)))))

(declare-fun b!977714 () Bool)

(declare-fun res!654425 () Bool)

(assert (=> b!977714 (=> (not res!654425) (not e!551293))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61115 (_ BitVec 32)) Bool)

(assert (=> b!977714 (= res!654425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35852 () Bool)

(declare-fun mapRes!35852 () Bool)

(assert (=> mapIsEmpty!35852 mapRes!35852))

(declare-fun b!977715 () Bool)

(declare-fun e!551291 () Bool)

(assert (=> b!977715 (= e!551291 tp_is_empty!22549)))

(declare-fun b!977716 () Bool)

(assert (=> b!977716 (= e!551293 false)))

(declare-datatypes ((V!35049 0))(
  ( (V!35050 (val!11325 Int)) )
))
(declare-fun minValue!1220 () V!35049)

(declare-datatypes ((ValueCell!10793 0))(
  ( (ValueCellFull!10793 (v!13887 V!35049)) (EmptyCell!10793) )
))
(declare-datatypes ((array!61117 0))(
  ( (array!61118 (arr!29412 (Array (_ BitVec 32) ValueCell!10793)) (size!29892 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61117)

(declare-fun zeroValue!1220 () V!35049)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14616 0))(
  ( (tuple2!14617 (_1!7318 (_ BitVec 64)) (_2!7318 V!35049)) )
))
(declare-datatypes ((List!20516 0))(
  ( (Nil!20513) (Cons!20512 (h!21674 tuple2!14616) (t!29039 List!20516)) )
))
(declare-datatypes ((ListLongMap!13327 0))(
  ( (ListLongMap!13328 (toList!6679 List!20516)) )
))
(declare-fun lt!433468 () ListLongMap!13327)

(declare-fun +!2885 (ListLongMap!13327 tuple2!14616) ListLongMap!13327)

(declare-fun getCurrentListMapNoExtraKeys!3346 (array!61115 array!61117 (_ BitVec 32) (_ BitVec 32) V!35049 V!35049 (_ BitVec 32) Int) ListLongMap!13327)

(assert (=> b!977716 (= lt!433468 (+!2885 (getCurrentListMapNoExtraKeys!3346 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!977717 () Bool)

(declare-fun res!654424 () Bool)

(assert (=> b!977717 (=> (not res!654424) (not e!551293))))

(assert (=> b!977717 (= res!654424 (and (= (size!29892 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29891 _keys!1544) (size!29892 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977718 () Bool)

(declare-fun res!654422 () Bool)

(assert (=> b!977718 (=> (not res!654422) (not e!551293))))

(assert (=> b!977718 (= res!654422 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29891 _keys!1544))))))

(declare-fun mapNonEmpty!35852 () Bool)

(declare-fun tp!68108 () Bool)

(assert (=> mapNonEmpty!35852 (= mapRes!35852 (and tp!68108 e!551290))))

(declare-fun mapValue!35852 () ValueCell!10793)

(declare-fun mapKey!35852 () (_ BitVec 32))

(declare-fun mapRest!35852 () (Array (_ BitVec 32) ValueCell!10793))

(assert (=> mapNonEmpty!35852 (= (arr!29412 _values!1278) (store mapRest!35852 mapKey!35852 mapValue!35852))))

(declare-fun b!977712 () Bool)

(declare-fun e!551294 () Bool)

(assert (=> b!977712 (= e!551294 (and e!551291 mapRes!35852))))

(declare-fun condMapEmpty!35852 () Bool)

(declare-fun mapDefault!35852 () ValueCell!10793)


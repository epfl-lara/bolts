; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84084 () Bool)

(assert start!84084)

(declare-fun b_free!19811 () Bool)

(declare-fun b_next!19811 () Bool)

(assert (=> start!84084 (= b_free!19811 (not b_next!19811))))

(declare-fun tp!68956 () Bool)

(declare-fun b_and!31723 () Bool)

(assert (=> start!84084 (= tp!68956 b_and!31723)))

(declare-fun b!982584 () Bool)

(declare-fun e!553894 () Bool)

(declare-fun e!553898 () Bool)

(assert (=> b!982584 (= e!553894 e!553898)))

(declare-fun res!657659 () Bool)

(assert (=> b!982584 (=> (not res!657659) (not e!553898))))

(declare-datatypes ((array!61703 0))(
  ( (array!61704 (arr!29705 (Array (_ BitVec 32) (_ BitVec 64))) (size!30185 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61703)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982584 (= res!657659 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29705 _keys!1544) from!1932))))))

(declare-datatypes ((V!35461 0))(
  ( (V!35462 (val!11480 Int)) )
))
(declare-fun lt!436206 () V!35461)

(declare-datatypes ((ValueCell!10948 0))(
  ( (ValueCellFull!10948 (v!14042 V!35461)) (EmptyCell!10948) )
))
(declare-datatypes ((array!61705 0))(
  ( (array!61706 (arr!29706 (Array (_ BitVec 32) ValueCell!10948)) (size!30186 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61705)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15429 (ValueCell!10948 V!35461) V!35461)

(declare-fun dynLambda!1810 (Int (_ BitVec 64)) V!35461)

(assert (=> b!982584 (= lt!436206 (get!15429 (select (arr!29706 _values!1278) from!1932) (dynLambda!1810 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35461)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14814 0))(
  ( (tuple2!14815 (_1!7417 (_ BitVec 64)) (_2!7417 V!35461)) )
))
(declare-datatypes ((List!20718 0))(
  ( (Nil!20715) (Cons!20714 (h!21876 tuple2!14814) (t!29487 List!20718)) )
))
(declare-datatypes ((ListLongMap!13525 0))(
  ( (ListLongMap!13526 (toList!6778 List!20718)) )
))
(declare-fun lt!436208 () ListLongMap!13525)

(declare-fun zeroValue!1220 () V!35461)

(declare-fun getCurrentListMapNoExtraKeys!3437 (array!61703 array!61705 (_ BitVec 32) (_ BitVec 32) V!35461 V!35461 (_ BitVec 32) Int) ListLongMap!13525)

(assert (=> b!982584 (= lt!436208 (getCurrentListMapNoExtraKeys!3437 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982585 () Bool)

(declare-fun res!657658 () Bool)

(assert (=> b!982585 (=> (not res!657658) (not e!553894))))

(assert (=> b!982585 (= res!657658 (and (= (size!30186 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30185 _keys!1544) (size!30186 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982586 () Bool)

(declare-fun e!553897 () Bool)

(declare-fun tp_is_empty!22859 () Bool)

(assert (=> b!982586 (= e!553897 tp_is_empty!22859)))

(declare-fun res!657661 () Bool)

(assert (=> start!84084 (=> (not res!657661) (not e!553894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84084 (= res!657661 (validMask!0 mask!1948))))

(assert (=> start!84084 e!553894))

(assert (=> start!84084 true))

(assert (=> start!84084 tp_is_empty!22859))

(declare-fun e!553893 () Bool)

(declare-fun array_inv!22843 (array!61705) Bool)

(assert (=> start!84084 (and (array_inv!22843 _values!1278) e!553893)))

(assert (=> start!84084 tp!68956))

(declare-fun array_inv!22844 (array!61703) Bool)

(assert (=> start!84084 (array_inv!22844 _keys!1544)))

(declare-fun b!982587 () Bool)

(declare-fun res!657660 () Bool)

(assert (=> b!982587 (=> (not res!657660) (not e!553894))))

(assert (=> b!982587 (= res!657660 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36317 () Bool)

(declare-fun mapRes!36317 () Bool)

(declare-fun tp!68957 () Bool)

(assert (=> mapNonEmpty!36317 (= mapRes!36317 (and tp!68957 e!553897))))

(declare-fun mapValue!36317 () ValueCell!10948)

(declare-fun mapRest!36317 () (Array (_ BitVec 32) ValueCell!10948))

(declare-fun mapKey!36317 () (_ BitVec 32))

(assert (=> mapNonEmpty!36317 (= (arr!29706 _values!1278) (store mapRest!36317 mapKey!36317 mapValue!36317))))

(declare-fun b!982588 () Bool)

(assert (=> b!982588 (= e!553898 (not true))))

(declare-fun lt!436209 () tuple2!14814)

(declare-fun lt!436210 () tuple2!14814)

(declare-fun +!2976 (ListLongMap!13525 tuple2!14814) ListLongMap!13525)

(assert (=> b!982588 (= (+!2976 (+!2976 lt!436208 lt!436209) lt!436210) (+!2976 (+!2976 lt!436208 lt!436210) lt!436209))))

(assert (=> b!982588 (= lt!436210 (tuple2!14815 (select (arr!29705 _keys!1544) from!1932) lt!436206))))

(assert (=> b!982588 (= lt!436209 (tuple2!14815 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32627 0))(
  ( (Unit!32628) )
))
(declare-fun lt!436207 () Unit!32627)

(declare-fun addCommutativeForDiffKeys!638 (ListLongMap!13525 (_ BitVec 64) V!35461 (_ BitVec 64) V!35461) Unit!32627)

(assert (=> b!982588 (= lt!436207 (addCommutativeForDiffKeys!638 lt!436208 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29705 _keys!1544) from!1932) lt!436206))))

(declare-fun b!982589 () Bool)

(declare-fun res!657663 () Bool)

(assert (=> b!982589 (=> (not res!657663) (not e!553894))))

(assert (=> b!982589 (= res!657663 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30185 _keys!1544))))))

(declare-fun b!982590 () Bool)

(declare-fun res!657662 () Bool)

(assert (=> b!982590 (=> (not res!657662) (not e!553894))))

(declare-datatypes ((List!20719 0))(
  ( (Nil!20716) (Cons!20715 (h!21877 (_ BitVec 64)) (t!29488 List!20719)) )
))
(declare-fun arrayNoDuplicates!0 (array!61703 (_ BitVec 32) List!20719) Bool)

(assert (=> b!982590 (= res!657662 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20716))))

(declare-fun mapIsEmpty!36317 () Bool)

(assert (=> mapIsEmpty!36317 mapRes!36317))

(declare-fun b!982591 () Bool)

(declare-fun res!657656 () Bool)

(assert (=> b!982591 (=> (not res!657656) (not e!553894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61703 (_ BitVec 32)) Bool)

(assert (=> b!982591 (= res!657656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982592 () Bool)

(declare-fun res!657657 () Bool)

(assert (=> b!982592 (=> (not res!657657) (not e!553894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982592 (= res!657657 (validKeyInArray!0 (select (arr!29705 _keys!1544) from!1932)))))

(declare-fun b!982593 () Bool)

(declare-fun e!553895 () Bool)

(assert (=> b!982593 (= e!553895 tp_is_empty!22859)))

(declare-fun b!982594 () Bool)

(assert (=> b!982594 (= e!553893 (and e!553895 mapRes!36317))))

(declare-fun condMapEmpty!36317 () Bool)

(declare-fun mapDefault!36317 () ValueCell!10948)


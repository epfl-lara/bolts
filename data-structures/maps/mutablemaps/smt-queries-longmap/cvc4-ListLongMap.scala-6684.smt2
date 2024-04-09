; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84108 () Bool)

(assert start!84108)

(declare-fun b_free!19835 () Bool)

(declare-fun b_next!19835 () Bool)

(assert (=> start!84108 (= b_free!19835 (not b_next!19835))))

(declare-fun tp!69029 () Bool)

(declare-fun b_and!31771 () Bool)

(assert (=> start!84108 (= tp!69029 b_and!31771)))

(declare-fun b!983004 () Bool)

(declare-fun e!554109 () Bool)

(declare-fun e!554111 () Bool)

(assert (=> b!983004 (= e!554109 e!554111)))

(declare-fun res!657947 () Bool)

(assert (=> b!983004 (=> (not res!657947) (not e!554111))))

(declare-datatypes ((array!61749 0))(
  ( (array!61750 (arr!29728 (Array (_ BitVec 32) (_ BitVec 64))) (size!30208 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61749)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983004 (= res!657947 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29728 _keys!1544) from!1932))))))

(declare-datatypes ((V!35493 0))(
  ( (V!35494 (val!11492 Int)) )
))
(declare-datatypes ((ValueCell!10960 0))(
  ( (ValueCellFull!10960 (v!14054 V!35493)) (EmptyCell!10960) )
))
(declare-datatypes ((array!61751 0))(
  ( (array!61752 (arr!29729 (Array (_ BitVec 32) ValueCell!10960)) (size!30209 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61751)

(declare-fun lt!436387 () V!35493)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15444 (ValueCell!10960 V!35493) V!35493)

(declare-fun dynLambda!1817 (Int (_ BitVec 64)) V!35493)

(assert (=> b!983004 (= lt!436387 (get!15444 (select (arr!29729 _values!1278) from!1932) (dynLambda!1817 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35493)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35493)

(declare-datatypes ((tuple2!14828 0))(
  ( (tuple2!14829 (_1!7424 (_ BitVec 64)) (_2!7424 V!35493)) )
))
(declare-datatypes ((List!20733 0))(
  ( (Nil!20730) (Cons!20729 (h!21891 tuple2!14828) (t!29526 List!20733)) )
))
(declare-datatypes ((ListLongMap!13539 0))(
  ( (ListLongMap!13540 (toList!6785 List!20733)) )
))
(declare-fun lt!436389 () ListLongMap!13539)

(declare-fun getCurrentListMapNoExtraKeys!3444 (array!61749 array!61751 (_ BitVec 32) (_ BitVec 32) V!35493 V!35493 (_ BitVec 32) Int) ListLongMap!13539)

(assert (=> b!983004 (= lt!436389 (getCurrentListMapNoExtraKeys!3444 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!657950 () Bool)

(assert (=> start!84108 (=> (not res!657950) (not e!554109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84108 (= res!657950 (validMask!0 mask!1948))))

(assert (=> start!84108 e!554109))

(assert (=> start!84108 true))

(declare-fun tp_is_empty!22883 () Bool)

(assert (=> start!84108 tp_is_empty!22883))

(declare-fun e!554112 () Bool)

(declare-fun array_inv!22857 (array!61751) Bool)

(assert (=> start!84108 (and (array_inv!22857 _values!1278) e!554112)))

(assert (=> start!84108 tp!69029))

(declare-fun array_inv!22858 (array!61749) Bool)

(assert (=> start!84108 (array_inv!22858 _keys!1544)))

(declare-fun b!983005 () Bool)

(assert (=> b!983005 (= e!554111 (not true))))

(declare-fun lt!436390 () tuple2!14828)

(declare-fun lt!436386 () tuple2!14828)

(declare-fun +!2981 (ListLongMap!13539 tuple2!14828) ListLongMap!13539)

(assert (=> b!983005 (= (+!2981 (+!2981 lt!436389 lt!436390) lt!436386) (+!2981 (+!2981 lt!436389 lt!436386) lt!436390))))

(assert (=> b!983005 (= lt!436386 (tuple2!14829 (select (arr!29728 _keys!1544) from!1932) lt!436387))))

(assert (=> b!983005 (= lt!436390 (tuple2!14829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32637 0))(
  ( (Unit!32638) )
))
(declare-fun lt!436388 () Unit!32637)

(declare-fun addCommutativeForDiffKeys!643 (ListLongMap!13539 (_ BitVec 64) V!35493 (_ BitVec 64) V!35493) Unit!32637)

(assert (=> b!983005 (= lt!436388 (addCommutativeForDiffKeys!643 lt!436389 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29728 _keys!1544) from!1932) lt!436387))))

(declare-fun b!983006 () Bool)

(declare-fun res!657949 () Bool)

(assert (=> b!983006 (=> (not res!657949) (not e!554109))))

(assert (=> b!983006 (= res!657949 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30208 _keys!1544))))))

(declare-fun mapNonEmpty!36353 () Bool)

(declare-fun mapRes!36353 () Bool)

(declare-fun tp!69028 () Bool)

(declare-fun e!554113 () Bool)

(assert (=> mapNonEmpty!36353 (= mapRes!36353 (and tp!69028 e!554113))))

(declare-fun mapValue!36353 () ValueCell!10960)

(declare-fun mapRest!36353 () (Array (_ BitVec 32) ValueCell!10960))

(declare-fun mapKey!36353 () (_ BitVec 32))

(assert (=> mapNonEmpty!36353 (= (arr!29729 _values!1278) (store mapRest!36353 mapKey!36353 mapValue!36353))))

(declare-fun b!983007 () Bool)

(declare-fun e!554114 () Bool)

(assert (=> b!983007 (= e!554112 (and e!554114 mapRes!36353))))

(declare-fun condMapEmpty!36353 () Bool)

(declare-fun mapDefault!36353 () ValueCell!10960)


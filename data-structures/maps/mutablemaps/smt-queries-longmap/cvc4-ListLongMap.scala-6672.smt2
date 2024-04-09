; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84036 () Bool)

(assert start!84036)

(declare-fun b_free!19763 () Bool)

(declare-fun b_next!19763 () Bool)

(assert (=> start!84036 (= b_free!19763 (not b_next!19763))))

(declare-fun tp!68813 () Bool)

(declare-fun b_and!31627 () Bool)

(assert (=> start!84036 (= tp!68813 b_and!31627)))

(declare-fun b!981744 () Bool)

(declare-fun res!657085 () Bool)

(declare-fun e!553461 () Bool)

(assert (=> b!981744 (=> (not res!657085) (not e!553461))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61615 0))(
  ( (array!61616 (arr!29661 (Array (_ BitVec 32) (_ BitVec 64))) (size!30141 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61615)

(assert (=> b!981744 (= res!657085 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30141 _keys!1544))))))

(declare-fun b!981745 () Bool)

(declare-fun e!553466 () Bool)

(declare-fun tp_is_empty!22811 () Bool)

(assert (=> b!981745 (= e!553466 tp_is_empty!22811)))

(declare-fun b!981746 () Bool)

(declare-fun res!657082 () Bool)

(assert (=> b!981746 (=> (not res!657082) (not e!553461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981746 (= res!657082 (validKeyInArray!0 (select (arr!29661 _keys!1544) from!1932)))))

(declare-fun b!981747 () Bool)

(declare-fun e!553463 () Bool)

(assert (=> b!981747 (= e!553461 e!553463)))

(declare-fun res!657083 () Bool)

(assert (=> b!981747 (=> (not res!657083) (not e!553463))))

(assert (=> b!981747 (= res!657083 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29661 _keys!1544) from!1932))))))

(declare-datatypes ((V!35397 0))(
  ( (V!35398 (val!11456 Int)) )
))
(declare-datatypes ((ValueCell!10924 0))(
  ( (ValueCellFull!10924 (v!14018 V!35397)) (EmptyCell!10924) )
))
(declare-datatypes ((array!61617 0))(
  ( (array!61618 (arr!29662 (Array (_ BitVec 32) ValueCell!10924)) (size!30142 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61617)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435846 () V!35397)

(declare-fun get!15396 (ValueCell!10924 V!35397) V!35397)

(declare-fun dynLambda!1793 (Int (_ BitVec 64)) V!35397)

(assert (=> b!981747 (= lt!435846 (get!15396 (select (arr!29662 _values!1278) from!1932) (dynLambda!1793 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35397)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35397)

(declare-datatypes ((tuple2!14780 0))(
  ( (tuple2!14781 (_1!7400 (_ BitVec 64)) (_2!7400 V!35397)) )
))
(declare-datatypes ((List!20686 0))(
  ( (Nil!20683) (Cons!20682 (h!21844 tuple2!14780) (t!29407 List!20686)) )
))
(declare-datatypes ((ListLongMap!13491 0))(
  ( (ListLongMap!13492 (toList!6761 List!20686)) )
))
(declare-fun lt!435850 () ListLongMap!13491)

(declare-fun getCurrentListMapNoExtraKeys!3420 (array!61615 array!61617 (_ BitVec 32) (_ BitVec 32) V!35397 V!35397 (_ BitVec 32) Int) ListLongMap!13491)

(assert (=> b!981747 (= lt!435850 (getCurrentListMapNoExtraKeys!3420 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981748 () Bool)

(declare-fun res!657080 () Bool)

(assert (=> b!981748 (=> (not res!657080) (not e!553461))))

(declare-datatypes ((List!20687 0))(
  ( (Nil!20684) (Cons!20683 (h!21845 (_ BitVec 64)) (t!29408 List!20687)) )
))
(declare-fun arrayNoDuplicates!0 (array!61615 (_ BitVec 32) List!20687) Bool)

(assert (=> b!981748 (= res!657080 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20684))))

(declare-fun b!981749 () Bool)

(declare-fun res!657087 () Bool)

(assert (=> b!981749 (=> (not res!657087) (not e!553461))))

(assert (=> b!981749 (= res!657087 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981750 () Bool)

(declare-fun res!657084 () Bool)

(assert (=> b!981750 (=> (not res!657084) (not e!553461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61615 (_ BitVec 32)) Bool)

(assert (=> b!981750 (= res!657084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36245 () Bool)

(declare-fun mapRes!36245 () Bool)

(assert (=> mapIsEmpty!36245 mapRes!36245))

(declare-fun b!981751 () Bool)

(assert (=> b!981751 (= e!553463 (not true))))

(declare-fun lt!435847 () tuple2!14780)

(declare-fun lt!435849 () tuple2!14780)

(declare-fun +!2964 (ListLongMap!13491 tuple2!14780) ListLongMap!13491)

(assert (=> b!981751 (= (+!2964 (+!2964 lt!435850 lt!435847) lt!435849) (+!2964 (+!2964 lt!435850 lt!435849) lt!435847))))

(assert (=> b!981751 (= lt!435849 (tuple2!14781 (select (arr!29661 _keys!1544) from!1932) lt!435846))))

(assert (=> b!981751 (= lt!435847 (tuple2!14781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32603 0))(
  ( (Unit!32604) )
))
(declare-fun lt!435848 () Unit!32603)

(declare-fun addCommutativeForDiffKeys!626 (ListLongMap!13491 (_ BitVec 64) V!35397 (_ BitVec 64) V!35397) Unit!32603)

(assert (=> b!981751 (= lt!435848 (addCommutativeForDiffKeys!626 lt!435850 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29661 _keys!1544) from!1932) lt!435846))))

(declare-fun b!981752 () Bool)

(declare-fun e!553464 () Bool)

(assert (=> b!981752 (= e!553464 tp_is_empty!22811)))

(declare-fun mapNonEmpty!36245 () Bool)

(declare-fun tp!68812 () Bool)

(assert (=> mapNonEmpty!36245 (= mapRes!36245 (and tp!68812 e!553464))))

(declare-fun mapValue!36245 () ValueCell!10924)

(declare-fun mapRest!36245 () (Array (_ BitVec 32) ValueCell!10924))

(declare-fun mapKey!36245 () (_ BitVec 32))

(assert (=> mapNonEmpty!36245 (= (arr!29662 _values!1278) (store mapRest!36245 mapKey!36245 mapValue!36245))))

(declare-fun res!657081 () Bool)

(assert (=> start!84036 (=> (not res!657081) (not e!553461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84036 (= res!657081 (validMask!0 mask!1948))))

(assert (=> start!84036 e!553461))

(assert (=> start!84036 true))

(assert (=> start!84036 tp_is_empty!22811))

(declare-fun e!553465 () Bool)

(declare-fun array_inv!22811 (array!61617) Bool)

(assert (=> start!84036 (and (array_inv!22811 _values!1278) e!553465)))

(assert (=> start!84036 tp!68813))

(declare-fun array_inv!22812 (array!61615) Bool)

(assert (=> start!84036 (array_inv!22812 _keys!1544)))

(declare-fun b!981753 () Bool)

(assert (=> b!981753 (= e!553465 (and e!553466 mapRes!36245))))

(declare-fun condMapEmpty!36245 () Bool)

(declare-fun mapDefault!36245 () ValueCell!10924)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84228 () Bool)

(assert start!84228)

(declare-fun b_free!19901 () Bool)

(declare-fun b_next!19901 () Bool)

(assert (=> start!84228 (= b_free!19901 (not b_next!19901))))

(declare-fun tp!69307 () Bool)

(declare-fun b_and!31897 () Bool)

(assert (=> start!84228 (= tp!69307 b_and!31897)))

(declare-fun res!658997 () Bool)

(declare-fun e!555103 () Bool)

(assert (=> start!84228 (=> (not res!658997) (not e!555103))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84228 (= res!658997 (validMask!0 mask!1948))))

(assert (=> start!84228 e!555103))

(assert (=> start!84228 true))

(declare-fun tp_is_empty!23003 () Bool)

(assert (=> start!84228 tp_is_empty!23003))

(declare-datatypes ((V!35653 0))(
  ( (V!35654 (val!11552 Int)) )
))
(declare-datatypes ((ValueCell!11020 0))(
  ( (ValueCellFull!11020 (v!14114 V!35653)) (EmptyCell!11020) )
))
(declare-datatypes ((array!61973 0))(
  ( (array!61974 (arr!29840 (Array (_ BitVec 32) ValueCell!11020)) (size!30320 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61973)

(declare-fun e!555104 () Bool)

(declare-fun array_inv!22931 (array!61973) Bool)

(assert (=> start!84228 (and (array_inv!22931 _values!1278) e!555104)))

(assert (=> start!84228 tp!69307))

(declare-datatypes ((array!61975 0))(
  ( (array!61976 (arr!29841 (Array (_ BitVec 32) (_ BitVec 64))) (size!30321 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61975)

(declare-fun array_inv!22932 (array!61975) Bool)

(assert (=> start!84228 (array_inv!22932 _keys!1544)))

(declare-fun b!984657 () Bool)

(declare-fun res!659001 () Bool)

(assert (=> b!984657 (=> (not res!659001) (not e!555103))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984657 (= res!659001 (and (= (size!30320 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30321 _keys!1544) (size!30320 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984658 () Bool)

(declare-fun e!555100 () Bool)

(assert (=> b!984658 (= e!555100 tp_is_empty!23003)))

(declare-fun b!984659 () Bool)

(declare-fun e!555102 () Bool)

(assert (=> b!984659 (= e!555103 e!555102)))

(declare-fun res!658999 () Bool)

(assert (=> b!984659 (=> (not res!658999) (not e!555102))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984659 (= res!658999 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29841 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436917 () V!35653)

(declare-fun get!15503 (ValueCell!11020 V!35653) V!35653)

(declare-fun dynLambda!1836 (Int (_ BitVec 64)) V!35653)

(assert (=> b!984659 (= lt!436917 (get!15503 (select (arr!29840 _values!1278) from!1932) (dynLambda!1836 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35653)

(declare-fun zeroValue!1220 () V!35653)

(declare-datatypes ((tuple2!14878 0))(
  ( (tuple2!14879 (_1!7449 (_ BitVec 64)) (_2!7449 V!35653)) )
))
(declare-datatypes ((List!20797 0))(
  ( (Nil!20794) (Cons!20793 (h!21955 tuple2!14878) (t!29650 List!20797)) )
))
(declare-datatypes ((ListLongMap!13589 0))(
  ( (ListLongMap!13590 (toList!6810 List!20797)) )
))
(declare-fun lt!436919 () ListLongMap!13589)

(declare-fun getCurrentListMapNoExtraKeys!3465 (array!61975 array!61973 (_ BitVec 32) (_ BitVec 32) V!35653 V!35653 (_ BitVec 32) Int) ListLongMap!13589)

(assert (=> b!984659 (= lt!436919 (getCurrentListMapNoExtraKeys!3465 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984660 () Bool)

(declare-fun res!659003 () Bool)

(assert (=> b!984660 (=> (not res!659003) (not e!555103))))

(assert (=> b!984660 (= res!659003 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984661 () Bool)

(declare-fun res!659002 () Bool)

(assert (=> b!984661 (=> (not res!659002) (not e!555103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61975 (_ BitVec 32)) Bool)

(assert (=> b!984661 (= res!659002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36533 () Bool)

(declare-fun mapRes!36533 () Bool)

(assert (=> mapIsEmpty!36533 mapRes!36533))

(declare-fun b!984662 () Bool)

(declare-fun e!555101 () Bool)

(assert (=> b!984662 (= e!555101 tp_is_empty!23003)))

(declare-fun b!984663 () Bool)

(declare-fun res!659000 () Bool)

(assert (=> b!984663 (=> (not res!659000) (not e!555103))))

(declare-datatypes ((List!20798 0))(
  ( (Nil!20795) (Cons!20794 (h!21956 (_ BitVec 64)) (t!29651 List!20798)) )
))
(declare-fun arrayNoDuplicates!0 (array!61975 (_ BitVec 32) List!20798) Bool)

(assert (=> b!984663 (= res!659000 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20795))))

(declare-fun b!984664 () Bool)

(assert (=> b!984664 (= e!555102 (not (bvsle from!1932 (size!30321 _keys!1544))))))

(declare-fun lt!436918 () tuple2!14878)

(declare-fun lt!436920 () tuple2!14878)

(declare-fun +!3000 (ListLongMap!13589 tuple2!14878) ListLongMap!13589)

(assert (=> b!984664 (= (+!3000 (+!3000 lt!436919 lt!436918) lt!436920) (+!3000 (+!3000 lt!436919 lt!436920) lt!436918))))

(assert (=> b!984664 (= lt!436920 (tuple2!14879 (select (arr!29841 _keys!1544) from!1932) lt!436917))))

(assert (=> b!984664 (= lt!436918 (tuple2!14879 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32675 0))(
  ( (Unit!32676) )
))
(declare-fun lt!436921 () Unit!32675)

(declare-fun addCommutativeForDiffKeys!662 (ListLongMap!13589 (_ BitVec 64) V!35653 (_ BitVec 64) V!35653) Unit!32675)

(assert (=> b!984664 (= lt!436921 (addCommutativeForDiffKeys!662 lt!436919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29841 _keys!1544) from!1932) lt!436917))))

(declare-fun mapNonEmpty!36533 () Bool)

(declare-fun tp!69308 () Bool)

(assert (=> mapNonEmpty!36533 (= mapRes!36533 (and tp!69308 e!555100))))

(declare-fun mapValue!36533 () ValueCell!11020)

(declare-fun mapRest!36533 () (Array (_ BitVec 32) ValueCell!11020))

(declare-fun mapKey!36533 () (_ BitVec 32))

(assert (=> mapNonEmpty!36533 (= (arr!29840 _values!1278) (store mapRest!36533 mapKey!36533 mapValue!36533))))

(declare-fun b!984665 () Bool)

(declare-fun res!658998 () Bool)

(assert (=> b!984665 (=> (not res!658998) (not e!555103))))

(assert (=> b!984665 (= res!658998 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30321 _keys!1544))))))

(declare-fun b!984666 () Bool)

(declare-fun res!659004 () Bool)

(assert (=> b!984666 (=> (not res!659004) (not e!555103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984666 (= res!659004 (validKeyInArray!0 (select (arr!29841 _keys!1544) from!1932)))))

(declare-fun b!984667 () Bool)

(assert (=> b!984667 (= e!555104 (and e!555101 mapRes!36533))))

(declare-fun condMapEmpty!36533 () Bool)

(declare-fun mapDefault!36533 () ValueCell!11020)


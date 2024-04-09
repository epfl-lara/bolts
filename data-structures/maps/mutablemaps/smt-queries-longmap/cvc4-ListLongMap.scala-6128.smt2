; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78908 () Bool)

(assert start!78908)

(declare-fun b_free!17093 () Bool)

(declare-fun b_next!17093 () Bool)

(assert (=> start!78908 (= b_free!17093 (not b_next!17093))))

(declare-fun tp!59720 () Bool)

(declare-fun b_and!27941 () Bool)

(assert (=> start!78908 (= tp!59720 b_and!27941)))

(declare-fun mapNonEmpty!31158 () Bool)

(declare-fun mapRes!31158 () Bool)

(declare-fun tp!59721 () Bool)

(declare-fun e!517258 () Bool)

(assert (=> mapNonEmpty!31158 (= mapRes!31158 (and tp!59721 e!517258))))

(declare-datatypes ((V!31099 0))(
  ( (V!31100 (val!9851 Int)) )
))
(declare-datatypes ((ValueCell!9319 0))(
  ( (ValueCellFull!9319 (v!12369 V!31099)) (EmptyCell!9319) )
))
(declare-fun mapValue!31158 () ValueCell!9319)

(declare-fun mapKey!31158 () (_ BitVec 32))

(declare-datatypes ((array!55190 0))(
  ( (array!55191 (arr!26536 (Array (_ BitVec 32) ValueCell!9319)) (size!26996 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55190)

(declare-fun mapRest!31158 () (Array (_ BitVec 32) ValueCell!9319))

(assert (=> mapNonEmpty!31158 (= (arr!26536 _values!1231) (store mapRest!31158 mapKey!31158 mapValue!31158))))

(declare-fun b!921757 () Bool)

(declare-fun e!517257 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921757 (= e!517257 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921758 () Bool)

(declare-fun tp_is_empty!19601 () Bool)

(assert (=> b!921758 (= e!517258 tp_is_empty!19601)))

(declare-fun b!921759 () Bool)

(declare-fun res!621725 () Bool)

(declare-fun e!517256 () Bool)

(assert (=> b!921759 (=> (not res!621725) (not e!517256))))

(declare-fun v!791 () V!31099)

(declare-datatypes ((tuple2!12912 0))(
  ( (tuple2!12913 (_1!6466 (_ BitVec 64)) (_2!6466 V!31099)) )
))
(declare-datatypes ((List!18752 0))(
  ( (Nil!18749) (Cons!18748 (h!19894 tuple2!12912) (t!26583 List!18752)) )
))
(declare-datatypes ((ListLongMap!11623 0))(
  ( (ListLongMap!11624 (toList!5827 List!18752)) )
))
(declare-fun lt!413879 () ListLongMap!11623)

(declare-fun apply!633 (ListLongMap!11623 (_ BitVec 64)) V!31099)

(assert (=> b!921759 (= res!621725 (= (apply!633 lt!413879 k!1099) v!791))))

(declare-fun b!921760 () Bool)

(declare-fun e!517255 () Bool)

(assert (=> b!921760 (= e!517256 e!517255)))

(declare-fun res!621724 () Bool)

(assert (=> b!921760 (=> (not res!621724) (not e!517255))))

(declare-fun lt!413880 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921760 (= res!621724 (validKeyInArray!0 lt!413880))))

(declare-datatypes ((array!55192 0))(
  ( (array!55193 (arr!26537 (Array (_ BitVec 32) (_ BitVec 64))) (size!26997 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55192)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921760 (= lt!413880 (select (arr!26537 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921761 () Bool)

(declare-fun res!621717 () Bool)

(declare-fun e!517259 () Bool)

(assert (=> b!921761 (=> (not res!621717) (not e!517259))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55192 (_ BitVec 32)) Bool)

(assert (=> b!921761 (= res!621717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921762 () Bool)

(assert (=> b!921762 (= e!517255 (not true))))

(assert (=> b!921762 (not (= lt!413880 k!1099))))

(declare-datatypes ((Unit!31091 0))(
  ( (Unit!31092) )
))
(declare-fun lt!413877 () Unit!31091)

(declare-datatypes ((List!18753 0))(
  ( (Nil!18750) (Cons!18749 (h!19895 (_ BitVec 64)) (t!26584 List!18753)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55192 (_ BitVec 64) (_ BitVec 32) List!18753) Unit!31091)

(assert (=> b!921762 (= lt!413877 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18750))))

(assert (=> b!921762 e!517257))

(declare-fun c!96059 () Bool)

(assert (=> b!921762 (= c!96059 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!413878 () Unit!31091)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31099)

(declare-fun minValue!1173 () V!31099)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!188 (array!55192 array!55190 (_ BitVec 32) (_ BitVec 32) V!31099 V!31099 (_ BitVec 64) (_ BitVec 32) Int) Unit!31091)

(assert (=> b!921762 (= lt!413878 (lemmaListMapContainsThenArrayContainsFrom!188 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55192 (_ BitVec 32) List!18753) Bool)

(assert (=> b!921762 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18750)))

(declare-fun lt!413881 () Unit!31091)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55192 (_ BitVec 32) (_ BitVec 32)) Unit!31091)

(assert (=> b!921762 (= lt!413881 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413882 () tuple2!12912)

(declare-fun contains!4855 (ListLongMap!11623 (_ BitVec 64)) Bool)

(declare-fun +!2642 (ListLongMap!11623 tuple2!12912) ListLongMap!11623)

(assert (=> b!921762 (contains!4855 (+!2642 lt!413879 lt!413882) k!1099)))

(declare-fun lt!413875 () Unit!31091)

(declare-fun lt!413883 () V!31099)

(declare-fun addStillContains!404 (ListLongMap!11623 (_ BitVec 64) V!31099 (_ BitVec 64)) Unit!31091)

(assert (=> b!921762 (= lt!413875 (addStillContains!404 lt!413879 lt!413880 lt!413883 k!1099))))

(declare-fun getCurrentListMap!3049 (array!55192 array!55190 (_ BitVec 32) (_ BitVec 32) V!31099 V!31099 (_ BitVec 32) Int) ListLongMap!11623)

(assert (=> b!921762 (= (getCurrentListMap!3049 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2642 (getCurrentListMap!3049 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413882))))

(assert (=> b!921762 (= lt!413882 (tuple2!12913 lt!413880 lt!413883))))

(declare-fun get!13951 (ValueCell!9319 V!31099) V!31099)

(declare-fun dynLambda!1481 (Int (_ BitVec 64)) V!31099)

(assert (=> b!921762 (= lt!413883 (get!13951 (select (arr!26536 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1481 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413876 () Unit!31091)

(declare-fun lemmaListMapRecursiveValidKeyArray!77 (array!55192 array!55190 (_ BitVec 32) (_ BitVec 32) V!31099 V!31099 (_ BitVec 32) Int) Unit!31091)

(assert (=> b!921762 (= lt!413876 (lemmaListMapRecursiveValidKeyArray!77 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!621720 () Bool)

(assert (=> start!78908 (=> (not res!621720) (not e!517259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78908 (= res!621720 (validMask!0 mask!1881))))

(assert (=> start!78908 e!517259))

(assert (=> start!78908 true))

(assert (=> start!78908 tp_is_empty!19601))

(declare-fun e!517253 () Bool)

(declare-fun array_inv!20658 (array!55190) Bool)

(assert (=> start!78908 (and (array_inv!20658 _values!1231) e!517253)))

(assert (=> start!78908 tp!59720))

(declare-fun array_inv!20659 (array!55192) Bool)

(assert (=> start!78908 (array_inv!20659 _keys!1487)))

(declare-fun b!921763 () Bool)

(assert (=> b!921763 (= e!517259 e!517256)))

(declare-fun res!621723 () Bool)

(assert (=> b!921763 (=> (not res!621723) (not e!517256))))

(assert (=> b!921763 (= res!621723 (contains!4855 lt!413879 k!1099))))

(assert (=> b!921763 (= lt!413879 (getCurrentListMap!3049 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31158 () Bool)

(assert (=> mapIsEmpty!31158 mapRes!31158))

(declare-fun b!921764 () Bool)

(declare-fun res!621721 () Bool)

(assert (=> b!921764 (=> (not res!621721) (not e!517259))))

(assert (=> b!921764 (= res!621721 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18750))))

(declare-fun b!921765 () Bool)

(declare-fun res!621722 () Bool)

(assert (=> b!921765 (=> (not res!621722) (not e!517259))))

(assert (=> b!921765 (= res!621722 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26997 _keys!1487))))))

(declare-fun b!921766 () Bool)

(declare-fun arrayContainsKey!0 (array!55192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921766 (= e!517257 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921767 () Bool)

(declare-fun res!621719 () Bool)

(assert (=> b!921767 (=> (not res!621719) (not e!517256))))

(assert (=> b!921767 (= res!621719 (validKeyInArray!0 k!1099))))

(declare-fun b!921768 () Bool)

(declare-fun e!517254 () Bool)

(assert (=> b!921768 (= e!517254 tp_is_empty!19601)))

(declare-fun b!921769 () Bool)

(declare-fun res!621716 () Bool)

(assert (=> b!921769 (=> (not res!621716) (not e!517256))))

(assert (=> b!921769 (= res!621716 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921770 () Bool)

(declare-fun res!621718 () Bool)

(assert (=> b!921770 (=> (not res!621718) (not e!517259))))

(assert (=> b!921770 (= res!621718 (and (= (size!26996 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26997 _keys!1487) (size!26996 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921771 () Bool)

(assert (=> b!921771 (= e!517253 (and e!517254 mapRes!31158))))

(declare-fun condMapEmpty!31158 () Bool)

(declare-fun mapDefault!31158 () ValueCell!9319)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79714 () Bool)

(assert start!79714)

(declare-fun b_free!17735 () Bool)

(declare-fun b_next!17735 () Bool)

(assert (=> start!79714 (= b_free!17735 (not b_next!17735))))

(declare-fun tp!61662 () Bool)

(declare-fun b_and!29079 () Bool)

(assert (=> start!79714 (= tp!61662 b_and!29079)))

(declare-fun b!937188 () Bool)

(declare-fun res!630924 () Bool)

(declare-fun e!526297 () Bool)

(assert (=> b!937188 (=> (not res!630924) (not e!526297))))

(declare-datatypes ((array!56450 0))(
  ( (array!56451 (arr!27161 (Array (_ BitVec 32) (_ BitVec 64))) (size!27621 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56450)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56450 (_ BitVec 32)) Bool)

(assert (=> b!937188 (= res!630924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937189 () Bool)

(declare-datatypes ((Unit!31649 0))(
  ( (Unit!31650) )
))
(declare-fun e!526304 () Unit!31649)

(declare-fun e!526301 () Unit!31649)

(assert (=> b!937189 (= e!526304 e!526301)))

(declare-fun lt!422870 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!937189 (= lt!422870 (select (arr!27161 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97476 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937189 (= c!97476 (validKeyInArray!0 lt!422870))))

(declare-fun b!937190 () Bool)

(declare-fun e!526295 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937190 (= e!526295 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!937191 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!937191 (= e!526295 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937193 () Bool)

(declare-fun e!526298 () Bool)

(declare-fun tp_is_empty!20243 () Bool)

(assert (=> b!937193 (= e!526298 tp_is_empty!20243)))

(declare-fun b!937194 () Bool)

(declare-fun e!526296 () Bool)

(assert (=> b!937194 (= e!526297 e!526296)))

(declare-fun res!630929 () Bool)

(assert (=> b!937194 (=> (not res!630929) (not e!526296))))

(declare-datatypes ((V!31955 0))(
  ( (V!31956 (val!10172 Int)) )
))
(declare-datatypes ((tuple2!13468 0))(
  ( (tuple2!13469 (_1!6744 (_ BitVec 64)) (_2!6744 V!31955)) )
))
(declare-datatypes ((List!19276 0))(
  ( (Nil!19273) (Cons!19272 (h!20418 tuple2!13468) (t!27563 List!19276)) )
))
(declare-datatypes ((ListLongMap!12179 0))(
  ( (ListLongMap!12180 (toList!6105 List!19276)) )
))
(declare-fun lt!422872 () ListLongMap!12179)

(declare-fun contains!5115 (ListLongMap!12179 (_ BitVec 64)) Bool)

(assert (=> b!937194 (= res!630929 (contains!5115 lt!422872 k!1099))))

(declare-datatypes ((ValueCell!9640 0))(
  ( (ValueCellFull!9640 (v!12697 V!31955)) (EmptyCell!9640) )
))
(declare-datatypes ((array!56452 0))(
  ( (array!56453 (arr!27162 (Array (_ BitVec 32) ValueCell!9640)) (size!27622 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56452)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31955)

(declare-fun minValue!1173 () V!31955)

(declare-fun getCurrentListMap!3294 (array!56450 array!56452 (_ BitVec 32) (_ BitVec 32) V!31955 V!31955 (_ BitVec 32) Int) ListLongMap!12179)

(assert (=> b!937194 (= lt!422872 (getCurrentListMap!3294 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937195 () Bool)

(declare-fun e!526303 () Bool)

(assert (=> b!937195 (= e!526303 false)))

(declare-fun lt!422879 () Unit!31649)

(assert (=> b!937195 (= lt!422879 e!526304)))

(declare-fun c!97477 () Bool)

(assert (=> b!937195 (= c!97477 (validKeyInArray!0 k!1099))))

(declare-fun b!937196 () Bool)

(declare-fun lt!422875 () ListLongMap!12179)

(declare-fun lt!422877 () V!31955)

(declare-fun apply!883 (ListLongMap!12179 (_ BitVec 64)) V!31955)

(assert (=> b!937196 (= (apply!883 lt!422875 k!1099) lt!422877)))

(declare-fun lt!422876 () V!31955)

(declare-fun lt!422878 () Unit!31649)

(declare-fun addApplyDifferent!431 (ListLongMap!12179 (_ BitVec 64) V!31955 (_ BitVec 64)) Unit!31649)

(assert (=> b!937196 (= lt!422878 (addApplyDifferent!431 lt!422872 lt!422870 lt!422876 k!1099))))

(assert (=> b!937196 (not (= lt!422870 k!1099))))

(declare-fun lt!422873 () Unit!31649)

(declare-datatypes ((List!19277 0))(
  ( (Nil!19274) (Cons!19273 (h!20419 (_ BitVec 64)) (t!27564 List!19277)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56450 (_ BitVec 64) (_ BitVec 32) List!19277) Unit!31649)

(assert (=> b!937196 (= lt!422873 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19274))))

(assert (=> b!937196 e!526295))

(declare-fun c!97478 () Bool)

(assert (=> b!937196 (= c!97478 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422880 () Unit!31649)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!314 (array!56450 array!56452 (_ BitVec 32) (_ BitVec 32) V!31955 V!31955 (_ BitVec 64) (_ BitVec 32) Int) Unit!31649)

(assert (=> b!937196 (= lt!422880 (lemmaListMapContainsThenArrayContainsFrom!314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56450 (_ BitVec 32) List!19277) Bool)

(assert (=> b!937196 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19274)))

(declare-fun lt!422881 () Unit!31649)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56450 (_ BitVec 32) (_ BitVec 32)) Unit!31649)

(assert (=> b!937196 (= lt!422881 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!937196 (contains!5115 lt!422875 k!1099)))

(declare-fun lt!422871 () tuple2!13468)

(declare-fun +!2801 (ListLongMap!12179 tuple2!13468) ListLongMap!12179)

(assert (=> b!937196 (= lt!422875 (+!2801 lt!422872 lt!422871))))

(declare-fun lt!422874 () Unit!31649)

(declare-fun addStillContains!557 (ListLongMap!12179 (_ BitVec 64) V!31955 (_ BitVec 64)) Unit!31649)

(assert (=> b!937196 (= lt!422874 (addStillContains!557 lt!422872 lt!422870 lt!422876 k!1099))))

(assert (=> b!937196 (= (getCurrentListMap!3294 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2801 (getCurrentListMap!3294 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422871))))

(assert (=> b!937196 (= lt!422871 (tuple2!13469 lt!422870 lt!422876))))

(declare-fun get!14339 (ValueCell!9640 V!31955) V!31955)

(declare-fun dynLambda!1640 (Int (_ BitVec 64)) V!31955)

(assert (=> b!937196 (= lt!422876 (get!14339 (select (arr!27162 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1640 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422869 () Unit!31649)

(declare-fun lemmaListMapRecursiveValidKeyArray!236 (array!56450 array!56452 (_ BitVec 32) (_ BitVec 32) V!31955 V!31955 (_ BitVec 32) Int) Unit!31649)

(assert (=> b!937196 (= lt!422869 (lemmaListMapRecursiveValidKeyArray!236 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!937196 (= e!526301 lt!422878)))

(declare-fun b!937197 () Bool)

(declare-fun e!526299 () Bool)

(assert (=> b!937197 (= e!526299 tp_is_empty!20243)))

(declare-fun b!937198 () Bool)

(declare-fun Unit!31651 () Unit!31649)

(assert (=> b!937198 (= e!526301 Unit!31651)))

(declare-fun mapNonEmpty!32136 () Bool)

(declare-fun mapRes!32136 () Bool)

(declare-fun tp!61661 () Bool)

(assert (=> mapNonEmpty!32136 (= mapRes!32136 (and tp!61661 e!526298))))

(declare-fun mapValue!32136 () ValueCell!9640)

(declare-fun mapRest!32136 () (Array (_ BitVec 32) ValueCell!9640))

(declare-fun mapKey!32136 () (_ BitVec 32))

(assert (=> mapNonEmpty!32136 (= (arr!27162 _values!1231) (store mapRest!32136 mapKey!32136 mapValue!32136))))

(declare-fun b!937199 () Bool)

(declare-fun res!630923 () Bool)

(assert (=> b!937199 (=> (not res!630923) (not e!526297))))

(assert (=> b!937199 (= res!630923 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27621 _keys!1487))))))

(declare-fun b!937200 () Bool)

(declare-fun res!630925 () Bool)

(assert (=> b!937200 (=> (not res!630925) (not e!526297))))

(assert (=> b!937200 (= res!630925 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19274))))

(declare-fun b!937192 () Bool)

(declare-fun Unit!31652 () Unit!31649)

(assert (=> b!937192 (= e!526304 Unit!31652)))

(declare-fun res!630927 () Bool)

(assert (=> start!79714 (=> (not res!630927) (not e!526297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79714 (= res!630927 (validMask!0 mask!1881))))

(assert (=> start!79714 e!526297))

(assert (=> start!79714 true))

(assert (=> start!79714 tp_is_empty!20243))

(declare-fun e!526300 () Bool)

(declare-fun array_inv!21088 (array!56452) Bool)

(assert (=> start!79714 (and (array_inv!21088 _values!1231) e!526300)))

(assert (=> start!79714 tp!61662))

(declare-fun array_inv!21089 (array!56450) Bool)

(assert (=> start!79714 (array_inv!21089 _keys!1487)))

(declare-fun b!937201 () Bool)

(assert (=> b!937201 (= e!526296 e!526303)))

(declare-fun res!630928 () Bool)

(assert (=> b!937201 (=> (not res!630928) (not e!526303))))

(declare-fun v!791 () V!31955)

(assert (=> b!937201 (= res!630928 (and (= lt!422877 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!937201 (= lt!422877 (apply!883 lt!422872 k!1099))))

(declare-fun b!937202 () Bool)

(assert (=> b!937202 (= e!526300 (and e!526299 mapRes!32136))))

(declare-fun condMapEmpty!32136 () Bool)

(declare-fun mapDefault!32136 () ValueCell!9640)


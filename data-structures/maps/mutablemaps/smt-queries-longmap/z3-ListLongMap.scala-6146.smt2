; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79014 () Bool)

(assert start!79014)

(declare-fun b_free!17199 () Bool)

(declare-fun b_next!17199 () Bool)

(assert (=> start!79014 (= b_free!17199 (not b_next!17199))))

(declare-fun tp!60039 () Bool)

(declare-fun b_and!28153 () Bool)

(assert (=> start!79014 (= tp!60039 b_and!28153)))

(declare-fun b!924479 () Bool)

(declare-fun e!518838 () Bool)

(declare-fun e!518837 () Bool)

(assert (=> b!924479 (= e!518838 e!518837)))

(declare-fun res!623236 () Bool)

(assert (=> b!924479 (=> (not res!623236) (not e!518837))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31241 0))(
  ( (V!31242 (val!9904 Int)) )
))
(declare-fun v!791 () V!31241)

(declare-fun lt!415781 () V!31241)

(assert (=> b!924479 (= res!623236 (and (= lt!415781 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13012 0))(
  ( (tuple2!13013 (_1!6516 (_ BitVec 64)) (_2!6516 V!31241)) )
))
(declare-datatypes ((List!18849 0))(
  ( (Nil!18846) (Cons!18845 (h!19991 tuple2!13012) (t!26786 List!18849)) )
))
(declare-datatypes ((ListLongMap!11723 0))(
  ( (ListLongMap!11724 (toList!5877 List!18849)) )
))
(declare-fun lt!415780 () ListLongMap!11723)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!679 (ListLongMap!11723 (_ BitVec 64)) V!31241)

(assert (=> b!924479 (= lt!415781 (apply!679 lt!415780 k0!1099))))

(declare-fun mapNonEmpty!31317 () Bool)

(declare-fun mapRes!31317 () Bool)

(declare-fun tp!60038 () Bool)

(declare-fun e!518842 () Bool)

(assert (=> mapNonEmpty!31317 (= mapRes!31317 (and tp!60038 e!518842))))

(declare-datatypes ((ValueCell!9372 0))(
  ( (ValueCellFull!9372 (v!12422 V!31241)) (EmptyCell!9372) )
))
(declare-fun mapValue!31317 () ValueCell!9372)

(declare-fun mapKey!31317 () (_ BitVec 32))

(declare-fun mapRest!31317 () (Array (_ BitVec 32) ValueCell!9372))

(declare-datatypes ((array!55398 0))(
  ( (array!55399 (arr!26640 (Array (_ BitVec 32) ValueCell!9372)) (size!27100 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55398)

(assert (=> mapNonEmpty!31317 (= (arr!26640 _values!1231) (store mapRest!31317 mapKey!31317 mapValue!31317))))

(declare-fun b!924480 () Bool)

(declare-fun res!623233 () Bool)

(declare-fun e!518840 () Bool)

(assert (=> b!924480 (=> (not res!623233) (not e!518840))))

(declare-datatypes ((array!55400 0))(
  ( (array!55401 (arr!26641 (Array (_ BitVec 32) (_ BitVec 64))) (size!27101 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55400)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!924480 (= res!623233 (and (= (size!27100 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27101 _keys!1487) (size!27100 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924482 () Bool)

(declare-datatypes ((Unit!31224 0))(
  ( (Unit!31225) )
))
(declare-fun e!518836 () Unit!31224)

(declare-fun Unit!31226 () Unit!31224)

(assert (=> b!924482 (= e!518836 Unit!31226)))

(declare-fun b!924483 () Bool)

(assert (=> b!924483 (= e!518840 e!518838)))

(declare-fun res!623234 () Bool)

(assert (=> b!924483 (=> (not res!623234) (not e!518838))))

(declare-fun contains!4901 (ListLongMap!11723 (_ BitVec 64)) Bool)

(assert (=> b!924483 (= res!623234 (contains!4901 lt!415780 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31241)

(declare-fun minValue!1173 () V!31241)

(declare-fun getCurrentListMap!3095 (array!55400 array!55398 (_ BitVec 32) (_ BitVec 32) V!31241 V!31241 (_ BitVec 32) Int) ListLongMap!11723)

(assert (=> b!924483 (= lt!415780 (getCurrentListMap!3095 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924484 () Bool)

(declare-fun e!518833 () Bool)

(assert (=> b!924484 (= e!518833 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924485 () Bool)

(declare-fun res!623235 () Bool)

(assert (=> b!924485 (=> (not res!623235) (not e!518840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55400 (_ BitVec 32)) Bool)

(assert (=> b!924485 (= res!623235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924486 () Bool)

(declare-fun e!518839 () Bool)

(declare-fun tp_is_empty!19707 () Bool)

(assert (=> b!924486 (= e!518839 tp_is_empty!19707)))

(declare-fun b!924487 () Bool)

(declare-fun arrayContainsKey!0 (array!55400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924487 (= e!518833 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!924488 () Bool)

(declare-fun res!623230 () Bool)

(assert (=> b!924488 (=> (not res!623230) (not e!518840))))

(assert (=> b!924488 (= res!623230 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27101 _keys!1487))))))

(declare-fun mapIsEmpty!31317 () Bool)

(assert (=> mapIsEmpty!31317 mapRes!31317))

(declare-fun b!924489 () Bool)

(declare-fun e!518843 () Bool)

(assert (=> b!924489 (= e!518843 (and e!518839 mapRes!31317))))

(declare-fun condMapEmpty!31317 () Bool)

(declare-fun mapDefault!31317 () ValueCell!9372)

(assert (=> b!924489 (= condMapEmpty!31317 (= (arr!26640 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9372)) mapDefault!31317)))))

(declare-fun b!924490 () Bool)

(declare-fun e!518844 () Unit!31224)

(assert (=> b!924490 (= e!518844 e!518836)))

(declare-fun lt!415782 () (_ BitVec 64))

(assert (=> b!924490 (= lt!415782 (select (arr!26641 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96373 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924490 (= c!96373 (validKeyInArray!0 lt!415782))))

(declare-fun b!924491 () Bool)

(assert (=> b!924491 (= e!518842 tp_is_empty!19707)))

(declare-fun b!924492 () Bool)

(declare-fun e!518835 () Bool)

(declare-fun e!518834 () Bool)

(assert (=> b!924492 (= e!518835 e!518834)))

(declare-fun res!623232 () Bool)

(assert (=> b!924492 (=> (not res!623232) (not e!518834))))

(declare-fun lt!415770 () ListLongMap!11723)

(assert (=> b!924492 (= res!623232 (contains!4901 lt!415770 k0!1099))))

(assert (=> b!924492 (= lt!415770 (getCurrentListMap!3095 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623231 () Bool)

(assert (=> start!79014 (=> (not res!623231) (not e!518840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79014 (= res!623231 (validMask!0 mask!1881))))

(assert (=> start!79014 e!518840))

(assert (=> start!79014 true))

(assert (=> start!79014 tp_is_empty!19707))

(declare-fun array_inv!20744 (array!55398) Bool)

(assert (=> start!79014 (and (array_inv!20744 _values!1231) e!518843)))

(assert (=> start!79014 tp!60039))

(declare-fun array_inv!20745 (array!55400) Bool)

(assert (=> start!79014 (array_inv!20745 _keys!1487)))

(declare-fun b!924481 () Bool)

(declare-fun res!623237 () Bool)

(assert (=> b!924481 (=> (not res!623237) (not e!518840))))

(declare-datatypes ((List!18850 0))(
  ( (Nil!18847) (Cons!18846 (h!19992 (_ BitVec 64)) (t!26787 List!18850)) )
))
(declare-fun arrayNoDuplicates!0 (array!55400 (_ BitVec 32) List!18850) Bool)

(assert (=> b!924481 (= res!623237 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18847))))

(declare-fun b!924493 () Bool)

(assert (=> b!924493 (= e!518837 e!518835)))

(declare-fun res!623229 () Bool)

(assert (=> b!924493 (=> (not res!623229) (not e!518835))))

(assert (=> b!924493 (= res!623229 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27101 _keys!1487)))))

(declare-fun lt!415778 () Unit!31224)

(assert (=> b!924493 (= lt!415778 e!518844)))

(declare-fun c!96372 () Bool)

(assert (=> b!924493 (= c!96372 (validKeyInArray!0 k0!1099))))

(declare-fun b!924494 () Bool)

(assert (=> b!924494 (= e!518834 false)))

(declare-fun lt!415775 () V!31241)

(assert (=> b!924494 (= lt!415775 (apply!679 lt!415770 k0!1099))))

(declare-fun b!924495 () Bool)

(declare-fun lt!415777 () ListLongMap!11723)

(assert (=> b!924495 (= (apply!679 lt!415777 k0!1099) lt!415781)))

(declare-fun lt!415768 () Unit!31224)

(declare-fun lt!415772 () V!31241)

(declare-fun addApplyDifferent!370 (ListLongMap!11723 (_ BitVec 64) V!31241 (_ BitVec 64)) Unit!31224)

(assert (=> b!924495 (= lt!415768 (addApplyDifferent!370 lt!415780 lt!415782 lt!415772 k0!1099))))

(assert (=> b!924495 (not (= lt!415782 k0!1099))))

(declare-fun lt!415769 () Unit!31224)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55400 (_ BitVec 64) (_ BitVec 32) List!18850) Unit!31224)

(assert (=> b!924495 (= lt!415769 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18847))))

(assert (=> b!924495 e!518833))

(declare-fun c!96374 () Bool)

(assert (=> b!924495 (= c!96374 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415771 () Unit!31224)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!230 (array!55400 array!55398 (_ BitVec 32) (_ BitVec 32) V!31241 V!31241 (_ BitVec 64) (_ BitVec 32) Int) Unit!31224)

(assert (=> b!924495 (= lt!415771 (lemmaListMapContainsThenArrayContainsFrom!230 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!924495 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18847)))

(declare-fun lt!415776 () Unit!31224)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55400 (_ BitVec 32) (_ BitVec 32)) Unit!31224)

(assert (=> b!924495 (= lt!415776 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!924495 (contains!4901 lt!415777 k0!1099)))

(declare-fun lt!415773 () tuple2!13012)

(declare-fun +!2684 (ListLongMap!11723 tuple2!13012) ListLongMap!11723)

(assert (=> b!924495 (= lt!415777 (+!2684 lt!415780 lt!415773))))

(declare-fun lt!415774 () Unit!31224)

(declare-fun addStillContains!446 (ListLongMap!11723 (_ BitVec 64) V!31241 (_ BitVec 64)) Unit!31224)

(assert (=> b!924495 (= lt!415774 (addStillContains!446 lt!415780 lt!415782 lt!415772 k0!1099))))

(assert (=> b!924495 (= (getCurrentListMap!3095 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2684 (getCurrentListMap!3095 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415773))))

(assert (=> b!924495 (= lt!415773 (tuple2!13013 lt!415782 lt!415772))))

(declare-fun get!14029 (ValueCell!9372 V!31241) V!31241)

(declare-fun dynLambda!1523 (Int (_ BitVec 64)) V!31241)

(assert (=> b!924495 (= lt!415772 (get!14029 (select (arr!26640 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1523 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415779 () Unit!31224)

(declare-fun lemmaListMapRecursiveValidKeyArray!119 (array!55400 array!55398 (_ BitVec 32) (_ BitVec 32) V!31241 V!31241 (_ BitVec 32) Int) Unit!31224)

(assert (=> b!924495 (= lt!415779 (lemmaListMapRecursiveValidKeyArray!119 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924495 (= e!518836 lt!415768)))

(declare-fun b!924496 () Bool)

(declare-fun Unit!31227 () Unit!31224)

(assert (=> b!924496 (= e!518844 Unit!31227)))

(assert (= (and start!79014 res!623231) b!924480))

(assert (= (and b!924480 res!623233) b!924485))

(assert (= (and b!924485 res!623235) b!924481))

(assert (= (and b!924481 res!623237) b!924488))

(assert (= (and b!924488 res!623230) b!924483))

(assert (= (and b!924483 res!623234) b!924479))

(assert (= (and b!924479 res!623236) b!924493))

(assert (= (and b!924493 c!96372) b!924490))

(assert (= (and b!924493 (not c!96372)) b!924496))

(assert (= (and b!924490 c!96373) b!924495))

(assert (= (and b!924490 (not c!96373)) b!924482))

(assert (= (and b!924495 c!96374) b!924487))

(assert (= (and b!924495 (not c!96374)) b!924484))

(assert (= (and b!924493 res!623229) b!924492))

(assert (= (and b!924492 res!623232) b!924494))

(assert (= (and b!924489 condMapEmpty!31317) mapIsEmpty!31317))

(assert (= (and b!924489 (not condMapEmpty!31317)) mapNonEmpty!31317))

(get-info :version)

(assert (= (and mapNonEmpty!31317 ((_ is ValueCellFull!9372) mapValue!31317)) b!924491))

(assert (= (and b!924489 ((_ is ValueCellFull!9372) mapDefault!31317)) b!924486))

(assert (= start!79014 b!924489))

(declare-fun b_lambda!13731 () Bool)

(assert (=> (not b_lambda!13731) (not b!924495)))

(declare-fun t!26785 () Bool)

(declare-fun tb!5787 () Bool)

(assert (=> (and start!79014 (= defaultEntry!1235 defaultEntry!1235) t!26785) tb!5787))

(declare-fun result!11389 () Bool)

(assert (=> tb!5787 (= result!11389 tp_is_empty!19707)))

(assert (=> b!924495 t!26785))

(declare-fun b_and!28155 () Bool)

(assert (= b_and!28153 (and (=> t!26785 result!11389) b_and!28155)))

(declare-fun m!858915 () Bool)

(assert (=> b!924481 m!858915))

(declare-fun m!858917 () Bool)

(assert (=> b!924479 m!858917))

(declare-fun m!858919 () Bool)

(assert (=> b!924494 m!858919))

(declare-fun m!858921 () Bool)

(assert (=> b!924483 m!858921))

(declare-fun m!858923 () Bool)

(assert (=> b!924483 m!858923))

(declare-fun m!858925 () Bool)

(assert (=> b!924495 m!858925))

(declare-fun m!858927 () Bool)

(assert (=> b!924495 m!858927))

(declare-fun m!858929 () Bool)

(assert (=> b!924495 m!858929))

(declare-fun m!858931 () Bool)

(assert (=> b!924495 m!858931))

(declare-fun m!858933 () Bool)

(assert (=> b!924495 m!858933))

(declare-fun m!858935 () Bool)

(assert (=> b!924495 m!858935))

(declare-fun m!858937 () Bool)

(assert (=> b!924495 m!858937))

(declare-fun m!858939 () Bool)

(assert (=> b!924495 m!858939))

(declare-fun m!858941 () Bool)

(assert (=> b!924495 m!858941))

(declare-fun m!858943 () Bool)

(assert (=> b!924495 m!858943))

(declare-fun m!858945 () Bool)

(assert (=> b!924495 m!858945))

(declare-fun m!858947 () Bool)

(assert (=> b!924495 m!858947))

(declare-fun m!858949 () Bool)

(assert (=> b!924495 m!858949))

(declare-fun m!858951 () Bool)

(assert (=> b!924495 m!858951))

(assert (=> b!924495 m!858927))

(assert (=> b!924495 m!858929))

(declare-fun m!858953 () Bool)

(assert (=> b!924495 m!858953))

(assert (=> b!924495 m!858949))

(declare-fun m!858955 () Bool)

(assert (=> b!924495 m!858955))

(declare-fun m!858957 () Bool)

(assert (=> b!924493 m!858957))

(declare-fun m!858959 () Bool)

(assert (=> b!924487 m!858959))

(declare-fun m!858961 () Bool)

(assert (=> mapNonEmpty!31317 m!858961))

(declare-fun m!858963 () Bool)

(assert (=> b!924490 m!858963))

(declare-fun m!858965 () Bool)

(assert (=> b!924490 m!858965))

(declare-fun m!858967 () Bool)

(assert (=> b!924492 m!858967))

(assert (=> b!924492 m!858931))

(declare-fun m!858969 () Bool)

(assert (=> b!924485 m!858969))

(declare-fun m!858971 () Bool)

(assert (=> start!79014 m!858971))

(declare-fun m!858973 () Bool)

(assert (=> start!79014 m!858973))

(declare-fun m!858975 () Bool)

(assert (=> start!79014 m!858975))

(check-sat b_and!28155 (not b_next!17199) (not b!924492) (not b_lambda!13731) (not start!79014) (not b!924494) (not b!924483) (not b!924487) (not b!924495) (not b!924490) (not b!924493) (not b!924479) (not b!924485) (not mapNonEmpty!31317) tp_is_empty!19707 (not b!924481))
(check-sat b_and!28155 (not b_next!17199))

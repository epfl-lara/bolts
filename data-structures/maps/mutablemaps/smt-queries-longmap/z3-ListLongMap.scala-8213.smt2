; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100182 () Bool)

(assert start!100182)

(declare-fun mapNonEmpty!47210 () Bool)

(declare-fun mapRes!47210 () Bool)

(declare-fun tp!89821 () Bool)

(declare-fun e!678784 () Bool)

(assert (=> mapNonEmpty!47210 (= mapRes!47210 (and tp!89821 e!678784))))

(declare-datatypes ((V!45467 0))(
  ( (V!45468 (val!15184 Int)) )
))
(declare-datatypes ((ValueCell!14418 0))(
  ( (ValueCellFull!14418 (v!17823 V!45467)) (EmptyCell!14418) )
))
(declare-fun mapValue!47210 () ValueCell!14418)

(declare-datatypes ((array!77272 0))(
  ( (array!77273 (arr!37282 (Array (_ BitVec 32) ValueCell!14418)) (size!37819 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77272)

(declare-fun mapRest!47210 () (Array (_ BitVec 32) ValueCell!14418))

(declare-fun mapKey!47210 () (_ BitVec 32))

(assert (=> mapNonEmpty!47210 (= (arr!37282 _values!996) (store mapRest!47210 mapKey!47210 mapValue!47210))))

(declare-fun b!1194323 () Bool)

(declare-fun e!678781 () Bool)

(declare-fun e!678780 () Bool)

(assert (=> b!1194323 (= e!678781 e!678780)))

(declare-fun res!794734 () Bool)

(assert (=> b!1194323 (=> (not res!794734) (not e!678780))))

(declare-datatypes ((array!77274 0))(
  ( (array!77275 (arr!37283 (Array (_ BitVec 32) (_ BitVec 64))) (size!37820 (_ BitVec 32))) )
))
(declare-fun lt!542709 () array!77274)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77274 (_ BitVec 32)) Bool)

(assert (=> b!1194323 (= res!794734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542709 mask!1564))))

(declare-fun _keys!1208 () array!77274)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194323 (= lt!542709 (array!77275 (store (arr!37283 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37820 _keys!1208)))))

(declare-fun mapIsEmpty!47210 () Bool)

(assert (=> mapIsEmpty!47210 mapRes!47210))

(declare-fun b!1194324 () Bool)

(declare-fun e!678782 () Bool)

(declare-fun e!678783 () Bool)

(assert (=> b!1194324 (= e!678782 (and e!678783 mapRes!47210))))

(declare-fun condMapEmpty!47210 () Bool)

(declare-fun mapDefault!47210 () ValueCell!14418)

(assert (=> b!1194324 (= condMapEmpty!47210 (= (arr!37282 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14418)) mapDefault!47210)))))

(declare-fun b!1194325 () Bool)

(declare-fun tp_is_empty!30255 () Bool)

(assert (=> b!1194325 (= e!678784 tp_is_empty!30255)))

(declare-fun b!1194326 () Bool)

(declare-fun res!794733 () Bool)

(assert (=> b!1194326 (=> (not res!794733) (not e!678781))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1194326 (= res!794733 (= (select (arr!37283 _keys!1208) i!673) k0!934))))

(declare-fun b!1194327 () Bool)

(declare-fun res!794737 () Bool)

(assert (=> b!1194327 (=> (not res!794737) (not e!678781))))

(assert (=> b!1194327 (= res!794737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194329 () Bool)

(declare-fun res!794732 () Bool)

(assert (=> b!1194329 (=> (not res!794732) (not e!678780))))

(declare-datatypes ((List!26420 0))(
  ( (Nil!26417) (Cons!26416 (h!27625 (_ BitVec 64)) (t!39098 List!26420)) )
))
(declare-fun arrayNoDuplicates!0 (array!77274 (_ BitVec 32) List!26420) Bool)

(assert (=> b!1194329 (= res!794732 (arrayNoDuplicates!0 lt!542709 #b00000000000000000000000000000000 Nil!26417))))

(declare-fun b!1194330 () Bool)

(assert (=> b!1194330 (= e!678783 tp_is_empty!30255)))

(declare-fun b!1194331 () Bool)

(declare-fun res!794739 () Bool)

(assert (=> b!1194331 (=> (not res!794739) (not e!678781))))

(assert (=> b!1194331 (= res!794739 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26417))))

(declare-fun b!1194332 () Bool)

(declare-fun res!794738 () Bool)

(assert (=> b!1194332 (=> (not res!794738) (not e!678781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194332 (= res!794738 (validMask!0 mask!1564))))

(declare-fun res!794735 () Bool)

(assert (=> start!100182 (=> (not res!794735) (not e!678781))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100182 (= res!794735 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37820 _keys!1208))))))

(assert (=> start!100182 e!678781))

(declare-fun array_inv!28320 (array!77274) Bool)

(assert (=> start!100182 (array_inv!28320 _keys!1208)))

(assert (=> start!100182 true))

(declare-fun array_inv!28321 (array!77272) Bool)

(assert (=> start!100182 (and (array_inv!28321 _values!996) e!678782)))

(declare-fun b!1194328 () Bool)

(declare-fun res!794736 () Bool)

(assert (=> b!1194328 (=> (not res!794736) (not e!678781))))

(assert (=> b!1194328 (= res!794736 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37820 _keys!1208))))))

(declare-fun b!1194333 () Bool)

(declare-fun res!794740 () Bool)

(assert (=> b!1194333 (=> (not res!794740) (not e!678781))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1194333 (= res!794740 (and (= (size!37819 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37820 _keys!1208) (size!37819 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194334 () Bool)

(declare-fun res!794731 () Bool)

(assert (=> b!1194334 (=> (not res!794731) (not e!678781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194334 (= res!794731 (validKeyInArray!0 k0!934))))

(declare-fun b!1194335 () Bool)

(assert (=> b!1194335 (= e!678780 (bvsge (size!37820 _keys!1208) #b01111111111111111111111111111111))))

(assert (= (and start!100182 res!794735) b!1194332))

(assert (= (and b!1194332 res!794738) b!1194333))

(assert (= (and b!1194333 res!794740) b!1194327))

(assert (= (and b!1194327 res!794737) b!1194331))

(assert (= (and b!1194331 res!794739) b!1194328))

(assert (= (and b!1194328 res!794736) b!1194334))

(assert (= (and b!1194334 res!794731) b!1194326))

(assert (= (and b!1194326 res!794733) b!1194323))

(assert (= (and b!1194323 res!794734) b!1194329))

(assert (= (and b!1194329 res!794732) b!1194335))

(assert (= (and b!1194324 condMapEmpty!47210) mapIsEmpty!47210))

(assert (= (and b!1194324 (not condMapEmpty!47210)) mapNonEmpty!47210))

(get-info :version)

(assert (= (and mapNonEmpty!47210 ((_ is ValueCellFull!14418) mapValue!47210)) b!1194325))

(assert (= (and b!1194324 ((_ is ValueCellFull!14418) mapDefault!47210)) b!1194330))

(assert (= start!100182 b!1194324))

(declare-fun m!1102305 () Bool)

(assert (=> b!1194331 m!1102305))

(declare-fun m!1102307 () Bool)

(assert (=> mapNonEmpty!47210 m!1102307))

(declare-fun m!1102309 () Bool)

(assert (=> b!1194332 m!1102309))

(declare-fun m!1102311 () Bool)

(assert (=> b!1194329 m!1102311))

(declare-fun m!1102313 () Bool)

(assert (=> b!1194326 m!1102313))

(declare-fun m!1102315 () Bool)

(assert (=> start!100182 m!1102315))

(declare-fun m!1102317 () Bool)

(assert (=> start!100182 m!1102317))

(declare-fun m!1102319 () Bool)

(assert (=> b!1194334 m!1102319))

(declare-fun m!1102321 () Bool)

(assert (=> b!1194323 m!1102321))

(declare-fun m!1102323 () Bool)

(assert (=> b!1194323 m!1102323))

(declare-fun m!1102325 () Bool)

(assert (=> b!1194327 m!1102325))

(check-sat (not b!1194329) (not start!100182) (not b!1194323) (not b!1194332) (not b!1194327) (not b!1194331) (not b!1194334) tp_is_empty!30255 (not mapNonEmpty!47210))
(check-sat)
(get-model)

(declare-fun d!132187 () Bool)

(assert (=> d!132187 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1194332 d!132187))

(declare-fun b!1194385 () Bool)

(declare-fun e!678811 () Bool)

(declare-fun e!678813 () Bool)

(assert (=> b!1194385 (= e!678811 e!678813)))

(declare-fun res!794777 () Bool)

(assert (=> b!1194385 (=> (not res!794777) (not e!678813))))

(declare-fun e!678812 () Bool)

(assert (=> b!1194385 (= res!794777 (not e!678812))))

(declare-fun res!794779 () Bool)

(assert (=> b!1194385 (=> (not res!794779) (not e!678812))))

(assert (=> b!1194385 (= res!794779 (validKeyInArray!0 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194386 () Bool)

(declare-fun e!678814 () Bool)

(declare-fun call!57137 () Bool)

(assert (=> b!1194386 (= e!678814 call!57137)))

(declare-fun b!1194387 () Bool)

(declare-fun contains!6880 (List!26420 (_ BitVec 64)) Bool)

(assert (=> b!1194387 (= e!678812 (contains!6880 Nil!26417 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194388 () Bool)

(assert (=> b!1194388 (= e!678814 call!57137)))

(declare-fun bm!57134 () Bool)

(declare-fun c!117260 () Bool)

(assert (=> bm!57134 (= call!57137 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117260 (Cons!26416 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000) Nil!26417) Nil!26417)))))

(declare-fun d!132189 () Bool)

(declare-fun res!794778 () Bool)

(assert (=> d!132189 (=> res!794778 e!678811)))

(assert (=> d!132189 (= res!794778 (bvsge #b00000000000000000000000000000000 (size!37820 _keys!1208)))))

(assert (=> d!132189 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26417) e!678811)))

(declare-fun b!1194389 () Bool)

(assert (=> b!1194389 (= e!678813 e!678814)))

(assert (=> b!1194389 (= c!117260 (validKeyInArray!0 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132189 (not res!794778)) b!1194385))

(assert (= (and b!1194385 res!794779) b!1194387))

(assert (= (and b!1194385 res!794777) b!1194389))

(assert (= (and b!1194389 c!117260) b!1194388))

(assert (= (and b!1194389 (not c!117260)) b!1194386))

(assert (= (or b!1194388 b!1194386) bm!57134))

(declare-fun m!1102349 () Bool)

(assert (=> b!1194385 m!1102349))

(assert (=> b!1194385 m!1102349))

(declare-fun m!1102351 () Bool)

(assert (=> b!1194385 m!1102351))

(assert (=> b!1194387 m!1102349))

(assert (=> b!1194387 m!1102349))

(declare-fun m!1102353 () Bool)

(assert (=> b!1194387 m!1102353))

(assert (=> bm!57134 m!1102349))

(declare-fun m!1102355 () Bool)

(assert (=> bm!57134 m!1102355))

(assert (=> b!1194389 m!1102349))

(assert (=> b!1194389 m!1102349))

(assert (=> b!1194389 m!1102351))

(assert (=> b!1194331 d!132189))

(declare-fun b!1194390 () Bool)

(declare-fun e!678815 () Bool)

(declare-fun e!678817 () Bool)

(assert (=> b!1194390 (= e!678815 e!678817)))

(declare-fun res!794780 () Bool)

(assert (=> b!1194390 (=> (not res!794780) (not e!678817))))

(declare-fun e!678816 () Bool)

(assert (=> b!1194390 (= res!794780 (not e!678816))))

(declare-fun res!794782 () Bool)

(assert (=> b!1194390 (=> (not res!794782) (not e!678816))))

(assert (=> b!1194390 (= res!794782 (validKeyInArray!0 (select (arr!37283 lt!542709) #b00000000000000000000000000000000)))))

(declare-fun b!1194391 () Bool)

(declare-fun e!678818 () Bool)

(declare-fun call!57138 () Bool)

(assert (=> b!1194391 (= e!678818 call!57138)))

(declare-fun b!1194392 () Bool)

(assert (=> b!1194392 (= e!678816 (contains!6880 Nil!26417 (select (arr!37283 lt!542709) #b00000000000000000000000000000000)))))

(declare-fun b!1194393 () Bool)

(assert (=> b!1194393 (= e!678818 call!57138)))

(declare-fun bm!57135 () Bool)

(declare-fun c!117261 () Bool)

(assert (=> bm!57135 (= call!57138 (arrayNoDuplicates!0 lt!542709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117261 (Cons!26416 (select (arr!37283 lt!542709) #b00000000000000000000000000000000) Nil!26417) Nil!26417)))))

(declare-fun d!132191 () Bool)

(declare-fun res!794781 () Bool)

(assert (=> d!132191 (=> res!794781 e!678815)))

(assert (=> d!132191 (= res!794781 (bvsge #b00000000000000000000000000000000 (size!37820 lt!542709)))))

(assert (=> d!132191 (= (arrayNoDuplicates!0 lt!542709 #b00000000000000000000000000000000 Nil!26417) e!678815)))

(declare-fun b!1194394 () Bool)

(assert (=> b!1194394 (= e!678817 e!678818)))

(assert (=> b!1194394 (= c!117261 (validKeyInArray!0 (select (arr!37283 lt!542709) #b00000000000000000000000000000000)))))

(assert (= (and d!132191 (not res!794781)) b!1194390))

(assert (= (and b!1194390 res!794782) b!1194392))

(assert (= (and b!1194390 res!794780) b!1194394))

(assert (= (and b!1194394 c!117261) b!1194393))

(assert (= (and b!1194394 (not c!117261)) b!1194391))

(assert (= (or b!1194393 b!1194391) bm!57135))

(declare-fun m!1102357 () Bool)

(assert (=> b!1194390 m!1102357))

(assert (=> b!1194390 m!1102357))

(declare-fun m!1102359 () Bool)

(assert (=> b!1194390 m!1102359))

(assert (=> b!1194392 m!1102357))

(assert (=> b!1194392 m!1102357))

(declare-fun m!1102361 () Bool)

(assert (=> b!1194392 m!1102361))

(assert (=> bm!57135 m!1102357))

(declare-fun m!1102363 () Bool)

(assert (=> bm!57135 m!1102363))

(assert (=> b!1194394 m!1102357))

(assert (=> b!1194394 m!1102357))

(assert (=> b!1194394 m!1102359))

(assert (=> b!1194329 d!132191))

(declare-fun d!132193 () Bool)

(assert (=> d!132193 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1194334 d!132193))

(declare-fun d!132195 () Bool)

(assert (=> d!132195 (= (array_inv!28320 _keys!1208) (bvsge (size!37820 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100182 d!132195))

(declare-fun d!132197 () Bool)

(assert (=> d!132197 (= (array_inv!28321 _values!996) (bvsge (size!37819 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100182 d!132197))

(declare-fun b!1194403 () Bool)

(declare-fun e!678826 () Bool)

(declare-fun call!57141 () Bool)

(assert (=> b!1194403 (= e!678826 call!57141)))

(declare-fun bm!57138 () Bool)

(assert (=> bm!57138 (= call!57141 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1194404 () Bool)

(declare-fun e!678827 () Bool)

(assert (=> b!1194404 (= e!678827 e!678826)))

(declare-fun c!117264 () Bool)

(assert (=> b!1194404 (= c!117264 (validKeyInArray!0 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132199 () Bool)

(declare-fun res!794788 () Bool)

(assert (=> d!132199 (=> res!794788 e!678827)))

(assert (=> d!132199 (= res!794788 (bvsge #b00000000000000000000000000000000 (size!37820 _keys!1208)))))

(assert (=> d!132199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!678827)))

(declare-fun b!1194405 () Bool)

(declare-fun e!678825 () Bool)

(assert (=> b!1194405 (= e!678825 call!57141)))

(declare-fun b!1194406 () Bool)

(assert (=> b!1194406 (= e!678826 e!678825)))

(declare-fun lt!542721 () (_ BitVec 64))

(assert (=> b!1194406 (= lt!542721 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!39544 0))(
  ( (Unit!39545) )
))
(declare-fun lt!542720 () Unit!39544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77274 (_ BitVec 64) (_ BitVec 32)) Unit!39544)

(assert (=> b!1194406 (= lt!542720 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!542721 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!77274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194406 (arrayContainsKey!0 _keys!1208 lt!542721 #b00000000000000000000000000000000)))

(declare-fun lt!542719 () Unit!39544)

(assert (=> b!1194406 (= lt!542719 lt!542720)))

(declare-fun res!794787 () Bool)

(declare-datatypes ((SeekEntryResult!9925 0))(
  ( (MissingZero!9925 (index!42070 (_ BitVec 32))) (Found!9925 (index!42071 (_ BitVec 32))) (Intermediate!9925 (undefined!10737 Bool) (index!42072 (_ BitVec 32)) (x!105638 (_ BitVec 32))) (Undefined!9925) (MissingVacant!9925 (index!42073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77274 (_ BitVec 32)) SeekEntryResult!9925)

(assert (=> b!1194406 (= res!794787 (= (seekEntryOrOpen!0 (select (arr!37283 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9925 #b00000000000000000000000000000000)))))

(assert (=> b!1194406 (=> (not res!794787) (not e!678825))))

(assert (= (and d!132199 (not res!794788)) b!1194404))

(assert (= (and b!1194404 c!117264) b!1194406))

(assert (= (and b!1194404 (not c!117264)) b!1194403))

(assert (= (and b!1194406 res!794787) b!1194405))

(assert (= (or b!1194405 b!1194403) bm!57138))

(declare-fun m!1102365 () Bool)

(assert (=> bm!57138 m!1102365))

(assert (=> b!1194404 m!1102349))

(assert (=> b!1194404 m!1102349))

(assert (=> b!1194404 m!1102351))

(assert (=> b!1194406 m!1102349))

(declare-fun m!1102367 () Bool)

(assert (=> b!1194406 m!1102367))

(declare-fun m!1102369 () Bool)

(assert (=> b!1194406 m!1102369))

(assert (=> b!1194406 m!1102349))

(declare-fun m!1102371 () Bool)

(assert (=> b!1194406 m!1102371))

(assert (=> b!1194327 d!132199))

(declare-fun b!1194407 () Bool)

(declare-fun e!678829 () Bool)

(declare-fun call!57142 () Bool)

(assert (=> b!1194407 (= e!678829 call!57142)))

(declare-fun bm!57139 () Bool)

(assert (=> bm!57139 (= call!57142 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!542709 mask!1564))))

(declare-fun b!1194408 () Bool)

(declare-fun e!678830 () Bool)

(assert (=> b!1194408 (= e!678830 e!678829)))

(declare-fun c!117265 () Bool)

(assert (=> b!1194408 (= c!117265 (validKeyInArray!0 (select (arr!37283 lt!542709) #b00000000000000000000000000000000)))))

(declare-fun d!132201 () Bool)

(declare-fun res!794790 () Bool)

(assert (=> d!132201 (=> res!794790 e!678830)))

(assert (=> d!132201 (= res!794790 (bvsge #b00000000000000000000000000000000 (size!37820 lt!542709)))))

(assert (=> d!132201 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542709 mask!1564) e!678830)))

(declare-fun b!1194409 () Bool)

(declare-fun e!678828 () Bool)

(assert (=> b!1194409 (= e!678828 call!57142)))

(declare-fun b!1194410 () Bool)

(assert (=> b!1194410 (= e!678829 e!678828)))

(declare-fun lt!542724 () (_ BitVec 64))

(assert (=> b!1194410 (= lt!542724 (select (arr!37283 lt!542709) #b00000000000000000000000000000000))))

(declare-fun lt!542723 () Unit!39544)

(assert (=> b!1194410 (= lt!542723 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!542709 lt!542724 #b00000000000000000000000000000000))))

(assert (=> b!1194410 (arrayContainsKey!0 lt!542709 lt!542724 #b00000000000000000000000000000000)))

(declare-fun lt!542722 () Unit!39544)

(assert (=> b!1194410 (= lt!542722 lt!542723)))

(declare-fun res!794789 () Bool)

(assert (=> b!1194410 (= res!794789 (= (seekEntryOrOpen!0 (select (arr!37283 lt!542709) #b00000000000000000000000000000000) lt!542709 mask!1564) (Found!9925 #b00000000000000000000000000000000)))))

(assert (=> b!1194410 (=> (not res!794789) (not e!678828))))

(assert (= (and d!132201 (not res!794790)) b!1194408))

(assert (= (and b!1194408 c!117265) b!1194410))

(assert (= (and b!1194408 (not c!117265)) b!1194407))

(assert (= (and b!1194410 res!794789) b!1194409))

(assert (= (or b!1194409 b!1194407) bm!57139))

(declare-fun m!1102373 () Bool)

(assert (=> bm!57139 m!1102373))

(assert (=> b!1194408 m!1102357))

(assert (=> b!1194408 m!1102357))

(assert (=> b!1194408 m!1102359))

(assert (=> b!1194410 m!1102357))

(declare-fun m!1102375 () Bool)

(assert (=> b!1194410 m!1102375))

(declare-fun m!1102377 () Bool)

(assert (=> b!1194410 m!1102377))

(assert (=> b!1194410 m!1102357))

(declare-fun m!1102379 () Bool)

(assert (=> b!1194410 m!1102379))

(assert (=> b!1194323 d!132201))

(declare-fun mapNonEmpty!47216 () Bool)

(declare-fun mapRes!47216 () Bool)

(declare-fun tp!89827 () Bool)

(declare-fun e!678836 () Bool)

(assert (=> mapNonEmpty!47216 (= mapRes!47216 (and tp!89827 e!678836))))

(declare-fun mapKey!47216 () (_ BitVec 32))

(declare-fun mapValue!47216 () ValueCell!14418)

(declare-fun mapRest!47216 () (Array (_ BitVec 32) ValueCell!14418))

(assert (=> mapNonEmpty!47216 (= mapRest!47210 (store mapRest!47216 mapKey!47216 mapValue!47216))))

(declare-fun mapIsEmpty!47216 () Bool)

(assert (=> mapIsEmpty!47216 mapRes!47216))

(declare-fun condMapEmpty!47216 () Bool)

(declare-fun mapDefault!47216 () ValueCell!14418)

(assert (=> mapNonEmpty!47210 (= condMapEmpty!47216 (= mapRest!47210 ((as const (Array (_ BitVec 32) ValueCell!14418)) mapDefault!47216)))))

(declare-fun e!678835 () Bool)

(assert (=> mapNonEmpty!47210 (= tp!89821 (and e!678835 mapRes!47216))))

(declare-fun b!1194417 () Bool)

(assert (=> b!1194417 (= e!678836 tp_is_empty!30255)))

(declare-fun b!1194418 () Bool)

(assert (=> b!1194418 (= e!678835 tp_is_empty!30255)))

(assert (= (and mapNonEmpty!47210 condMapEmpty!47216) mapIsEmpty!47216))

(assert (= (and mapNonEmpty!47210 (not condMapEmpty!47216)) mapNonEmpty!47216))

(assert (= (and mapNonEmpty!47216 ((_ is ValueCellFull!14418) mapValue!47216)) b!1194417))

(assert (= (and mapNonEmpty!47210 ((_ is ValueCellFull!14418) mapDefault!47216)) b!1194418))

(declare-fun m!1102381 () Bool)

(assert (=> mapNonEmpty!47216 m!1102381))

(check-sat (not b!1194406) (not b!1194385) (not bm!57138) (not b!1194410) (not b!1194387) (not bm!57134) tp_is_empty!30255 (not b!1194404) (not b!1194408) (not mapNonEmpty!47216) (not b!1194394) (not b!1194392) (not b!1194390) (not b!1194389) (not bm!57135) (not bm!57139))
(check-sat)

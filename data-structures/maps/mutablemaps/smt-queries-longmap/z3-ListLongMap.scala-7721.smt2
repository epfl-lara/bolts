; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97038 () Bool)

(assert start!97038)

(declare-fun res!736194 () Bool)

(declare-fun e!629880 () Bool)

(assert (=> start!97038 (=> (not res!736194) (not e!629880))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71482 0))(
  ( (array!71483 (arr!34395 (Array (_ BitVec 32) (_ BitVec 64))) (size!34932 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71482)

(assert (=> start!97038 (= res!736194 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34932 _keys!1208))))))

(assert (=> start!97038 e!629880))

(declare-fun array_inv!26346 (array!71482) Bool)

(assert (=> start!97038 (array_inv!26346 _keys!1208)))

(assert (=> start!97038 true))

(declare-datatypes ((V!41531 0))(
  ( (V!41532 (val!13708 Int)) )
))
(declare-datatypes ((ValueCell!12942 0))(
  ( (ValueCellFull!12942 (v!16340 V!41531)) (EmptyCell!12942) )
))
(declare-datatypes ((array!71484 0))(
  ( (array!71485 (arr!34396 (Array (_ BitVec 32) ValueCell!12942)) (size!34933 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71484)

(declare-fun e!629879 () Bool)

(declare-fun array_inv!26347 (array!71484) Bool)

(assert (=> start!97038 (and (array_inv!26347 _values!996) e!629879)))

(declare-fun b!1103357 () Bool)

(declare-fun res!736197 () Bool)

(assert (=> b!1103357 (=> (not res!736197) (not e!629880))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103357 (= res!736197 (validMask!0 mask!1564))))

(declare-fun b!1103358 () Bool)

(declare-fun e!629881 () Bool)

(assert (=> b!1103358 (= e!629880 e!629881)))

(declare-fun res!736195 () Bool)

(assert (=> b!1103358 (=> res!736195 e!629881)))

(declare-datatypes ((List!24160 0))(
  ( (Nil!24157) (Cons!24156 (h!25365 (_ BitVec 64)) (t!34432 List!24160)) )
))
(declare-fun contains!6426 (List!24160 (_ BitVec 64)) Bool)

(assert (=> b!1103358 (= res!736195 (contains!6426 Nil!24157 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1103359 () Bool)

(declare-fun res!736191 () Bool)

(assert (=> b!1103359 (=> (not res!736191) (not e!629880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71482 (_ BitVec 32)) Bool)

(assert (=> b!1103359 (= res!736191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103360 () Bool)

(assert (=> b!1103360 (= e!629881 (contains!6426 Nil!24157 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1103361 () Bool)

(declare-fun res!736193 () Bool)

(assert (=> b!1103361 (=> (not res!736193) (not e!629880))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103361 (= res!736193 (and (= (size!34933 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34932 _keys!1208) (size!34933 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103362 () Bool)

(declare-fun e!629883 () Bool)

(declare-fun tp_is_empty!27303 () Bool)

(assert (=> b!1103362 (= e!629883 tp_is_empty!27303)))

(declare-fun b!1103363 () Bool)

(declare-fun e!629878 () Bool)

(assert (=> b!1103363 (= e!629878 tp_is_empty!27303)))

(declare-fun b!1103364 () Bool)

(declare-fun res!736196 () Bool)

(assert (=> b!1103364 (=> (not res!736196) (not e!629880))))

(assert (=> b!1103364 (= res!736196 (and (bvsle #b00000000000000000000000000000000 (size!34932 _keys!1208)) (bvslt (size!34932 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!42757 () Bool)

(declare-fun mapRes!42757 () Bool)

(assert (=> mapIsEmpty!42757 mapRes!42757))

(declare-fun b!1103365 () Bool)

(assert (=> b!1103365 (= e!629879 (and e!629883 mapRes!42757))))

(declare-fun condMapEmpty!42757 () Bool)

(declare-fun mapDefault!42757 () ValueCell!12942)

(assert (=> b!1103365 (= condMapEmpty!42757 (= (arr!34396 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12942)) mapDefault!42757)))))

(declare-fun b!1103366 () Bool)

(declare-fun res!736192 () Bool)

(assert (=> b!1103366 (=> (not res!736192) (not e!629880))))

(declare-fun noDuplicate!1601 (List!24160) Bool)

(assert (=> b!1103366 (= res!736192 (noDuplicate!1601 Nil!24157))))

(declare-fun mapNonEmpty!42757 () Bool)

(declare-fun tp!81678 () Bool)

(assert (=> mapNonEmpty!42757 (= mapRes!42757 (and tp!81678 e!629878))))

(declare-fun mapRest!42757 () (Array (_ BitVec 32) ValueCell!12942))

(declare-fun mapValue!42757 () ValueCell!12942)

(declare-fun mapKey!42757 () (_ BitVec 32))

(assert (=> mapNonEmpty!42757 (= (arr!34396 _values!996) (store mapRest!42757 mapKey!42757 mapValue!42757))))

(assert (= (and start!97038 res!736194) b!1103357))

(assert (= (and b!1103357 res!736197) b!1103361))

(assert (= (and b!1103361 res!736193) b!1103359))

(assert (= (and b!1103359 res!736191) b!1103364))

(assert (= (and b!1103364 res!736196) b!1103366))

(assert (= (and b!1103366 res!736192) b!1103358))

(assert (= (and b!1103358 (not res!736195)) b!1103360))

(assert (= (and b!1103365 condMapEmpty!42757) mapIsEmpty!42757))

(assert (= (and b!1103365 (not condMapEmpty!42757)) mapNonEmpty!42757))

(get-info :version)

(assert (= (and mapNonEmpty!42757 ((_ is ValueCellFull!12942) mapValue!42757)) b!1103363))

(assert (= (and b!1103365 ((_ is ValueCellFull!12942) mapDefault!42757)) b!1103362))

(assert (= start!97038 b!1103365))

(declare-fun m!1023659 () Bool)

(assert (=> start!97038 m!1023659))

(declare-fun m!1023661 () Bool)

(assert (=> start!97038 m!1023661))

(declare-fun m!1023663 () Bool)

(assert (=> b!1103358 m!1023663))

(declare-fun m!1023665 () Bool)

(assert (=> mapNonEmpty!42757 m!1023665))

(declare-fun m!1023667 () Bool)

(assert (=> b!1103366 m!1023667))

(declare-fun m!1023669 () Bool)

(assert (=> b!1103357 m!1023669))

(declare-fun m!1023671 () Bool)

(assert (=> b!1103359 m!1023671))

(declare-fun m!1023673 () Bool)

(assert (=> b!1103360 m!1023673))

(check-sat (not b!1103360) (not mapNonEmpty!42757) (not b!1103359) tp_is_empty!27303 (not b!1103366) (not start!97038) (not b!1103357) (not b!1103358))
(check-sat)
(get-model)

(declare-fun d!130777 () Bool)

(declare-fun res!736223 () Bool)

(declare-fun e!629906 () Bool)

(assert (=> d!130777 (=> res!736223 e!629906)))

(assert (=> d!130777 (= res!736223 ((_ is Nil!24157) Nil!24157))))

(assert (=> d!130777 (= (noDuplicate!1601 Nil!24157) e!629906)))

(declare-fun b!1103401 () Bool)

(declare-fun e!629907 () Bool)

(assert (=> b!1103401 (= e!629906 e!629907)))

(declare-fun res!736224 () Bool)

(assert (=> b!1103401 (=> (not res!736224) (not e!629907))))

(assert (=> b!1103401 (= res!736224 (not (contains!6426 (t!34432 Nil!24157) (h!25365 Nil!24157))))))

(declare-fun b!1103402 () Bool)

(assert (=> b!1103402 (= e!629907 (noDuplicate!1601 (t!34432 Nil!24157)))))

(assert (= (and d!130777 (not res!736223)) b!1103401))

(assert (= (and b!1103401 res!736224) b!1103402))

(declare-fun m!1023691 () Bool)

(assert (=> b!1103401 m!1023691))

(declare-fun m!1023693 () Bool)

(assert (=> b!1103402 m!1023693))

(assert (=> b!1103366 d!130777))

(declare-fun d!130779 () Bool)

(assert (=> d!130779 (= (array_inv!26346 _keys!1208) (bvsge (size!34932 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97038 d!130779))

(declare-fun d!130781 () Bool)

(assert (=> d!130781 (= (array_inv!26347 _values!996) (bvsge (size!34933 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97038 d!130781))

(declare-fun d!130783 () Bool)

(assert (=> d!130783 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1103357 d!130783))

(declare-fun b!1103411 () Bool)

(declare-fun e!629915 () Bool)

(declare-fun call!46326 () Bool)

(assert (=> b!1103411 (= e!629915 call!46326)))

(declare-fun b!1103412 () Bool)

(declare-fun e!629916 () Bool)

(declare-fun e!629914 () Bool)

(assert (=> b!1103412 (= e!629916 e!629914)))

(declare-fun c!108927 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103412 (= c!108927 (validKeyInArray!0 (select (arr!34395 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!130785 () Bool)

(declare-fun res!736230 () Bool)

(assert (=> d!130785 (=> res!736230 e!629916)))

(assert (=> d!130785 (= res!736230 (bvsge #b00000000000000000000000000000000 (size!34932 _keys!1208)))))

(assert (=> d!130785 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!629916)))

(declare-fun b!1103413 () Bool)

(assert (=> b!1103413 (= e!629914 call!46326)))

(declare-fun b!1103414 () Bool)

(assert (=> b!1103414 (= e!629914 e!629915)))

(declare-fun lt!495044 () (_ BitVec 64))

(assert (=> b!1103414 (= lt!495044 (select (arr!34395 _keys!1208) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36177 0))(
  ( (Unit!36178) )
))
(declare-fun lt!495046 () Unit!36177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71482 (_ BitVec 64) (_ BitVec 32)) Unit!36177)

(assert (=> b!1103414 (= lt!495046 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495044 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1103414 (arrayContainsKey!0 _keys!1208 lt!495044 #b00000000000000000000000000000000)))

(declare-fun lt!495045 () Unit!36177)

(assert (=> b!1103414 (= lt!495045 lt!495046)))

(declare-fun res!736229 () Bool)

(declare-datatypes ((SeekEntryResult!9917 0))(
  ( (MissingZero!9917 (index!42038 (_ BitVec 32))) (Found!9917 (index!42039 (_ BitVec 32))) (Intermediate!9917 (undefined!10729 Bool) (index!42040 (_ BitVec 32)) (x!99241 (_ BitVec 32))) (Undefined!9917) (MissingVacant!9917 (index!42041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71482 (_ BitVec 32)) SeekEntryResult!9917)

(assert (=> b!1103414 (= res!736229 (= (seekEntryOrOpen!0 (select (arr!34395 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9917 #b00000000000000000000000000000000)))))

(assert (=> b!1103414 (=> (not res!736229) (not e!629915))))

(declare-fun bm!46323 () Bool)

(assert (=> bm!46323 (= call!46326 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!130785 (not res!736230)) b!1103412))

(assert (= (and b!1103412 c!108927) b!1103414))

(assert (= (and b!1103412 (not c!108927)) b!1103413))

(assert (= (and b!1103414 res!736229) b!1103411))

(assert (= (or b!1103411 b!1103413) bm!46323))

(declare-fun m!1023695 () Bool)

(assert (=> b!1103412 m!1023695))

(assert (=> b!1103412 m!1023695))

(declare-fun m!1023697 () Bool)

(assert (=> b!1103412 m!1023697))

(assert (=> b!1103414 m!1023695))

(declare-fun m!1023699 () Bool)

(assert (=> b!1103414 m!1023699))

(declare-fun m!1023701 () Bool)

(assert (=> b!1103414 m!1023701))

(assert (=> b!1103414 m!1023695))

(declare-fun m!1023703 () Bool)

(assert (=> b!1103414 m!1023703))

(declare-fun m!1023705 () Bool)

(assert (=> bm!46323 m!1023705))

(assert (=> b!1103359 d!130785))

(declare-fun d!130787 () Bool)

(declare-fun lt!495049 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!542 (List!24160) (InoxSet (_ BitVec 64)))

(assert (=> d!130787 (= lt!495049 (select (content!542 Nil!24157) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!629921 () Bool)

(assert (=> d!130787 (= lt!495049 e!629921)))

(declare-fun res!736236 () Bool)

(assert (=> d!130787 (=> (not res!736236) (not e!629921))))

(assert (=> d!130787 (= res!736236 ((_ is Cons!24156) Nil!24157))))

(assert (=> d!130787 (= (contains!6426 Nil!24157 #b0000000000000000000000000000000000000000000000000000000000000000) lt!495049)))

(declare-fun b!1103419 () Bool)

(declare-fun e!629922 () Bool)

(assert (=> b!1103419 (= e!629921 e!629922)))

(declare-fun res!736235 () Bool)

(assert (=> b!1103419 (=> res!736235 e!629922)))

(assert (=> b!1103419 (= res!736235 (= (h!25365 Nil!24157) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1103420 () Bool)

(assert (=> b!1103420 (= e!629922 (contains!6426 (t!34432 Nil!24157) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!130787 res!736236) b!1103419))

(assert (= (and b!1103419 (not res!736235)) b!1103420))

(declare-fun m!1023707 () Bool)

(assert (=> d!130787 m!1023707))

(declare-fun m!1023709 () Bool)

(assert (=> d!130787 m!1023709))

(declare-fun m!1023711 () Bool)

(assert (=> b!1103420 m!1023711))

(assert (=> b!1103358 d!130787))

(declare-fun d!130789 () Bool)

(declare-fun lt!495050 () Bool)

(assert (=> d!130789 (= lt!495050 (select (content!542 Nil!24157) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!629923 () Bool)

(assert (=> d!130789 (= lt!495050 e!629923)))

(declare-fun res!736238 () Bool)

(assert (=> d!130789 (=> (not res!736238) (not e!629923))))

(assert (=> d!130789 (= res!736238 ((_ is Cons!24156) Nil!24157))))

(assert (=> d!130789 (= (contains!6426 Nil!24157 #b1000000000000000000000000000000000000000000000000000000000000000) lt!495050)))

(declare-fun b!1103421 () Bool)

(declare-fun e!629924 () Bool)

(assert (=> b!1103421 (= e!629923 e!629924)))

(declare-fun res!736237 () Bool)

(assert (=> b!1103421 (=> res!736237 e!629924)))

(assert (=> b!1103421 (= res!736237 (= (h!25365 Nil!24157) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1103422 () Bool)

(assert (=> b!1103422 (= e!629924 (contains!6426 (t!34432 Nil!24157) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!130789 res!736238) b!1103421))

(assert (= (and b!1103421 (not res!736237)) b!1103422))

(assert (=> d!130789 m!1023707))

(declare-fun m!1023713 () Bool)

(assert (=> d!130789 m!1023713))

(declare-fun m!1023715 () Bool)

(assert (=> b!1103422 m!1023715))

(assert (=> b!1103360 d!130789))

(declare-fun mapNonEmpty!42763 () Bool)

(declare-fun mapRes!42763 () Bool)

(declare-fun tp!81684 () Bool)

(declare-fun e!629929 () Bool)

(assert (=> mapNonEmpty!42763 (= mapRes!42763 (and tp!81684 e!629929))))

(declare-fun mapRest!42763 () (Array (_ BitVec 32) ValueCell!12942))

(declare-fun mapKey!42763 () (_ BitVec 32))

(declare-fun mapValue!42763 () ValueCell!12942)

(assert (=> mapNonEmpty!42763 (= mapRest!42757 (store mapRest!42763 mapKey!42763 mapValue!42763))))

(declare-fun b!1103429 () Bool)

(assert (=> b!1103429 (= e!629929 tp_is_empty!27303)))

(declare-fun condMapEmpty!42763 () Bool)

(declare-fun mapDefault!42763 () ValueCell!12942)

(assert (=> mapNonEmpty!42757 (= condMapEmpty!42763 (= mapRest!42757 ((as const (Array (_ BitVec 32) ValueCell!12942)) mapDefault!42763)))))

(declare-fun e!629930 () Bool)

(assert (=> mapNonEmpty!42757 (= tp!81678 (and e!629930 mapRes!42763))))

(declare-fun mapIsEmpty!42763 () Bool)

(assert (=> mapIsEmpty!42763 mapRes!42763))

(declare-fun b!1103430 () Bool)

(assert (=> b!1103430 (= e!629930 tp_is_empty!27303)))

(assert (= (and mapNonEmpty!42757 condMapEmpty!42763) mapIsEmpty!42763))

(assert (= (and mapNonEmpty!42757 (not condMapEmpty!42763)) mapNonEmpty!42763))

(assert (= (and mapNonEmpty!42763 ((_ is ValueCellFull!12942) mapValue!42763)) b!1103429))

(assert (= (and mapNonEmpty!42757 ((_ is ValueCellFull!12942) mapDefault!42763)) b!1103430))

(declare-fun m!1023717 () Bool)

(assert (=> mapNonEmpty!42763 m!1023717))

(check-sat (not b!1103422) (not b!1103412) (not b!1103401) (not bm!46323) tp_is_empty!27303 (not b!1103420) (not mapNonEmpty!42763) (not d!130787) (not b!1103402) (not d!130789) (not b!1103414))
(check-sat)

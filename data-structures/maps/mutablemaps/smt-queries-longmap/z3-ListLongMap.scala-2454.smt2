; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38552 () Bool)

(assert start!38552)

(declare-fun b_free!9081 () Bool)

(declare-fun b_next!9081 () Bool)

(assert (=> start!38552 (= b_free!9081 (not b_next!9081))))

(declare-fun tp!32366 () Bool)

(declare-fun b_and!16485 () Bool)

(assert (=> start!38552 (= tp!32366 b_and!16485)))

(declare-fun b!398329 () Bool)

(declare-fun e!240751 () Bool)

(declare-fun e!240746 () Bool)

(declare-fun mapRes!16566 () Bool)

(assert (=> b!398329 (= e!240751 (and e!240746 mapRes!16566))))

(declare-fun condMapEmpty!16566 () Bool)

(declare-datatypes ((V!14389 0))(
  ( (V!14390 (val!5026 Int)) )
))
(declare-datatypes ((ValueCell!4638 0))(
  ( (ValueCellFull!4638 (v!7269 V!14389)) (EmptyCell!4638) )
))
(declare-datatypes ((array!23805 0))(
  ( (array!23806 (arr!11349 (Array (_ BitVec 32) ValueCell!4638)) (size!11701 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23805)

(declare-fun mapDefault!16566 () ValueCell!4638)

(assert (=> b!398329 (= condMapEmpty!16566 (= (arr!11349 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4638)) mapDefault!16566)))))

(declare-fun b!398330 () Bool)

(declare-fun res!228996 () Bool)

(declare-fun e!240745 () Bool)

(assert (=> b!398330 (=> (not res!228996) (not e!240745))))

(declare-datatypes ((array!23807 0))(
  ( (array!23808 (arr!11350 (Array (_ BitVec 32) (_ BitVec 64))) (size!11702 (_ BitVec 32))) )
))
(declare-fun lt!187430 () array!23807)

(declare-datatypes ((List!6534 0))(
  ( (Nil!6531) (Cons!6530 (h!7386 (_ BitVec 64)) (t!11716 List!6534)) )
))
(declare-fun arrayNoDuplicates!0 (array!23807 (_ BitVec 32) List!6534) Bool)

(assert (=> b!398330 (= res!228996 (arrayNoDuplicates!0 lt!187430 #b00000000000000000000000000000000 Nil!6531))))

(declare-fun b!398331 () Bool)

(declare-fun res!228991 () Bool)

(declare-fun e!240747 () Bool)

(assert (=> b!398331 (=> (not res!228991) (not e!240747))))

(declare-fun _keys!709 () array!23807)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398331 (= res!228991 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!398332 () Bool)

(declare-fun e!240748 () Bool)

(declare-datatypes ((tuple2!6576 0))(
  ( (tuple2!6577 (_1!3298 (_ BitVec 64)) (_2!3298 V!14389)) )
))
(declare-datatypes ((List!6535 0))(
  ( (Nil!6532) (Cons!6531 (h!7387 tuple2!6576) (t!11717 List!6535)) )
))
(declare-datatypes ((ListLongMap!5503 0))(
  ( (ListLongMap!5504 (toList!2767 List!6535)) )
))
(declare-fun call!27905 () ListLongMap!5503)

(declare-fun call!27904 () ListLongMap!5503)

(assert (=> b!398332 (= e!240748 (= call!27905 call!27904))))

(declare-fun b!398333 () Bool)

(declare-fun res!228992 () Bool)

(assert (=> b!398333 (=> (not res!228992) (not e!240747))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398333 (= res!228992 (or (= (select (arr!11350 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11350 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16566 () Bool)

(declare-fun tp!32367 () Bool)

(declare-fun e!240750 () Bool)

(assert (=> mapNonEmpty!16566 (= mapRes!16566 (and tp!32367 e!240750))))

(declare-fun mapValue!16566 () ValueCell!4638)

(declare-fun mapRest!16566 () (Array (_ BitVec 32) ValueCell!4638))

(declare-fun mapKey!16566 () (_ BitVec 32))

(assert (=> mapNonEmpty!16566 (= (arr!11349 _values!549) (store mapRest!16566 mapKey!16566 mapValue!16566))))

(declare-fun minValue!515 () V!14389)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14389)

(declare-fun c!54503 () Bool)

(declare-fun bm!27901 () Bool)

(declare-fun v!412 () V!14389)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!986 (array!23807 array!23805 (_ BitVec 32) (_ BitVec 32) V!14389 V!14389 (_ BitVec 32) Int) ListLongMap!5503)

(assert (=> bm!27901 (= call!27904 (getCurrentListMapNoExtraKeys!986 (ite c!54503 lt!187430 _keys!709) (ite c!54503 (array!23806 (store (arr!11349 _values!549) i!563 (ValueCellFull!4638 v!412)) (size!11701 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398334 () Bool)

(assert (=> b!398334 (= e!240745 (not true))))

(assert (=> b!398334 e!240748))

(assert (=> b!398334 (= c!54503 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12035 0))(
  ( (Unit!12036) )
))
(declare-fun lt!187431 () Unit!12035)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!280 (array!23807 array!23805 (_ BitVec 32) (_ BitVec 32) V!14389 V!14389 (_ BitVec 32) (_ BitVec 64) V!14389 (_ BitVec 32) Int) Unit!12035)

(assert (=> b!398334 (= lt!187431 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!280 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398335 () Bool)

(declare-fun res!228989 () Bool)

(assert (=> b!398335 (=> (not res!228989) (not e!240747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398335 (= res!228989 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16566 () Bool)

(assert (=> mapIsEmpty!16566 mapRes!16566))

(declare-fun b!398337 () Bool)

(declare-fun +!1064 (ListLongMap!5503 tuple2!6576) ListLongMap!5503)

(assert (=> b!398337 (= e!240748 (= call!27904 (+!1064 call!27905 (tuple2!6577 k0!794 v!412))))))

(declare-fun b!398338 () Bool)

(declare-fun res!228990 () Bool)

(assert (=> b!398338 (=> (not res!228990) (not e!240745))))

(assert (=> b!398338 (= res!228990 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11702 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398339 () Bool)

(declare-fun res!228987 () Bool)

(assert (=> b!398339 (=> (not res!228987) (not e!240747))))

(assert (=> b!398339 (= res!228987 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6531))))

(declare-fun b!398340 () Bool)

(declare-fun tp_is_empty!9963 () Bool)

(assert (=> b!398340 (= e!240750 tp_is_empty!9963)))

(declare-fun bm!27902 () Bool)

(assert (=> bm!27902 (= call!27905 (getCurrentListMapNoExtraKeys!986 (ite c!54503 _keys!709 lt!187430) (ite c!54503 _values!549 (array!23806 (store (arr!11349 _values!549) i!563 (ValueCellFull!4638 v!412)) (size!11701 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398341 () Bool)

(declare-fun res!228988 () Bool)

(assert (=> b!398341 (=> (not res!228988) (not e!240747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23807 (_ BitVec 32)) Bool)

(assert (=> b!398341 (= res!228988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398342 () Bool)

(assert (=> b!398342 (= e!240746 tp_is_empty!9963)))

(declare-fun b!398343 () Bool)

(declare-fun res!228993 () Bool)

(assert (=> b!398343 (=> (not res!228993) (not e!240747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398343 (= res!228993 (validKeyInArray!0 k0!794))))

(declare-fun b!398344 () Bool)

(declare-fun res!228985 () Bool)

(assert (=> b!398344 (=> (not res!228985) (not e!240747))))

(assert (=> b!398344 (= res!228985 (and (= (size!11701 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11702 _keys!709) (size!11701 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398345 () Bool)

(assert (=> b!398345 (= e!240747 e!240745)))

(declare-fun res!228994 () Bool)

(assert (=> b!398345 (=> (not res!228994) (not e!240745))))

(assert (=> b!398345 (= res!228994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187430 mask!1025))))

(assert (=> b!398345 (= lt!187430 (array!23808 (store (arr!11350 _keys!709) i!563 k0!794) (size!11702 _keys!709)))))

(declare-fun res!228986 () Bool)

(assert (=> start!38552 (=> (not res!228986) (not e!240747))))

(assert (=> start!38552 (= res!228986 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11702 _keys!709))))))

(assert (=> start!38552 e!240747))

(assert (=> start!38552 tp_is_empty!9963))

(assert (=> start!38552 tp!32366))

(assert (=> start!38552 true))

(declare-fun array_inv!8306 (array!23805) Bool)

(assert (=> start!38552 (and (array_inv!8306 _values!549) e!240751)))

(declare-fun array_inv!8307 (array!23807) Bool)

(assert (=> start!38552 (array_inv!8307 _keys!709)))

(declare-fun b!398336 () Bool)

(declare-fun res!228995 () Bool)

(assert (=> b!398336 (=> (not res!228995) (not e!240747))))

(assert (=> b!398336 (= res!228995 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11702 _keys!709))))))

(assert (= (and start!38552 res!228986) b!398335))

(assert (= (and b!398335 res!228989) b!398344))

(assert (= (and b!398344 res!228985) b!398341))

(assert (= (and b!398341 res!228988) b!398339))

(assert (= (and b!398339 res!228987) b!398336))

(assert (= (and b!398336 res!228995) b!398343))

(assert (= (and b!398343 res!228993) b!398333))

(assert (= (and b!398333 res!228992) b!398331))

(assert (= (and b!398331 res!228991) b!398345))

(assert (= (and b!398345 res!228994) b!398330))

(assert (= (and b!398330 res!228996) b!398338))

(assert (= (and b!398338 res!228990) b!398334))

(assert (= (and b!398334 c!54503) b!398337))

(assert (= (and b!398334 (not c!54503)) b!398332))

(assert (= (or b!398337 b!398332) bm!27901))

(assert (= (or b!398337 b!398332) bm!27902))

(assert (= (and b!398329 condMapEmpty!16566) mapIsEmpty!16566))

(assert (= (and b!398329 (not condMapEmpty!16566)) mapNonEmpty!16566))

(get-info :version)

(assert (= (and mapNonEmpty!16566 ((_ is ValueCellFull!4638) mapValue!16566)) b!398340))

(assert (= (and b!398329 ((_ is ValueCellFull!4638) mapDefault!16566)) b!398342))

(assert (= start!38552 b!398329))

(declare-fun m!393199 () Bool)

(assert (=> b!398335 m!393199))

(declare-fun m!393201 () Bool)

(assert (=> b!398339 m!393201))

(declare-fun m!393203 () Bool)

(assert (=> mapNonEmpty!16566 m!393203))

(declare-fun m!393205 () Bool)

(assert (=> bm!27901 m!393205))

(declare-fun m!393207 () Bool)

(assert (=> bm!27901 m!393207))

(declare-fun m!393209 () Bool)

(assert (=> b!398331 m!393209))

(declare-fun m!393211 () Bool)

(assert (=> b!398330 m!393211))

(declare-fun m!393213 () Bool)

(assert (=> b!398337 m!393213))

(declare-fun m!393215 () Bool)

(assert (=> b!398345 m!393215))

(declare-fun m!393217 () Bool)

(assert (=> b!398345 m!393217))

(declare-fun m!393219 () Bool)

(assert (=> b!398334 m!393219))

(declare-fun m!393221 () Bool)

(assert (=> b!398343 m!393221))

(declare-fun m!393223 () Bool)

(assert (=> b!398333 m!393223))

(assert (=> bm!27902 m!393205))

(declare-fun m!393225 () Bool)

(assert (=> bm!27902 m!393225))

(declare-fun m!393227 () Bool)

(assert (=> start!38552 m!393227))

(declare-fun m!393229 () Bool)

(assert (=> start!38552 m!393229))

(declare-fun m!393231 () Bool)

(assert (=> b!398341 m!393231))

(check-sat (not b!398334) (not bm!27901) (not mapNonEmpty!16566) (not b!398341) (not b!398335) (not b!398330) tp_is_empty!9963 (not b!398343) (not b!398345) (not b_next!9081) b_and!16485 (not b!398339) (not start!38552) (not bm!27902) (not b!398331) (not b!398337))
(check-sat b_and!16485 (not b_next!9081))

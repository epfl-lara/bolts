; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40202 () Bool)

(assert start!40202)

(declare-fun b_free!10461 () Bool)

(declare-fun b_next!10461 () Bool)

(assert (=> start!40202 (= b_free!10461 (not b_next!10461))))

(declare-fun tp!36911 () Bool)

(declare-fun b_and!18447 () Bool)

(assert (=> start!40202 (= tp!36911 b_and!18447)))

(declare-fun res!260448 () Bool)

(declare-fun e!259377 () Bool)

(assert (=> start!40202 (=> (not res!260448) (not e!259377))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27015 0))(
  ( (array!27016 (arr!12954 (Array (_ BitVec 32) (_ BitVec 64))) (size!13306 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27015)

(assert (=> start!40202 (= res!260448 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13306 _keys!709))))))

(assert (=> start!40202 e!259377))

(declare-fun tp_is_empty!11613 () Bool)

(assert (=> start!40202 tp_is_empty!11613))

(assert (=> start!40202 tp!36911))

(assert (=> start!40202 true))

(declare-datatypes ((V!16589 0))(
  ( (V!16590 (val!5851 Int)) )
))
(declare-datatypes ((ValueCell!5463 0))(
  ( (ValueCellFull!5463 (v!8094 V!16589)) (EmptyCell!5463) )
))
(declare-datatypes ((array!27017 0))(
  ( (array!27018 (arr!12955 (Array (_ BitVec 32) ValueCell!5463)) (size!13307 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27017)

(declare-fun e!259379 () Bool)

(declare-fun array_inv!9394 (array!27017) Bool)

(assert (=> start!40202 (and (array_inv!9394 _values!549) e!259379)))

(declare-fun array_inv!9395 (array!27015) Bool)

(assert (=> start!40202 (array_inv!9395 _keys!709)))

(declare-fun b!440225 () Bool)

(declare-fun e!259375 () Bool)

(declare-fun mapRes!19041 () Bool)

(assert (=> b!440225 (= e!259379 (and e!259375 mapRes!19041))))

(declare-fun condMapEmpty!19041 () Bool)

(declare-fun mapDefault!19041 () ValueCell!5463)

(assert (=> b!440225 (= condMapEmpty!19041 (= (arr!12955 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5463)) mapDefault!19041)))))

(declare-fun b!440226 () Bool)

(declare-fun e!259381 () Bool)

(assert (=> b!440226 (= e!259381 (not true))))

(declare-fun minValue!515 () V!16589)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16589)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16589)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202541 () array!27015)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!202542 () array!27017)

(declare-datatypes ((tuple2!7700 0))(
  ( (tuple2!7701 (_1!3860 (_ BitVec 64)) (_2!3860 V!16589)) )
))
(declare-datatypes ((List!7741 0))(
  ( (Nil!7738) (Cons!7737 (h!8593 tuple2!7700) (t!13505 List!7741)) )
))
(declare-datatypes ((ListLongMap!6627 0))(
  ( (ListLongMap!6628 (toList!3329 List!7741)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1511 (array!27015 array!27017 (_ BitVec 32) (_ BitVec 32) V!16589 V!16589 (_ BitVec 32) Int) ListLongMap!6627)

(declare-fun +!1465 (ListLongMap!6627 tuple2!7700) ListLongMap!6627)

(assert (=> b!440226 (= (getCurrentListMapNoExtraKeys!1511 lt!202541 lt!202542 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1465 (getCurrentListMapNoExtraKeys!1511 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7701 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13045 0))(
  ( (Unit!13046) )
))
(declare-fun lt!202539 () Unit!13045)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!643 (array!27015 array!27017 (_ BitVec 32) (_ BitVec 32) V!16589 V!16589 (_ BitVec 32) (_ BitVec 64) V!16589 (_ BitVec 32) Int) Unit!13045)

(assert (=> b!440226 (= lt!202539 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!643 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440227 () Bool)

(declare-fun res!260437 () Bool)

(assert (=> b!440227 (=> (not res!260437) (not e!259377))))

(assert (=> b!440227 (= res!260437 (and (= (size!13307 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13306 _keys!709) (size!13307 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440228 () Bool)

(declare-fun res!260447 () Bool)

(assert (=> b!440228 (=> (not res!260447) (not e!259377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27015 (_ BitVec 32)) Bool)

(assert (=> b!440228 (= res!260447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440229 () Bool)

(declare-fun e!259378 () Bool)

(assert (=> b!440229 (= e!259378 tp_is_empty!11613)))

(declare-fun b!440230 () Bool)

(declare-fun res!260441 () Bool)

(assert (=> b!440230 (=> (not res!260441) (not e!259377))))

(assert (=> b!440230 (= res!260441 (or (= (select (arr!12954 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12954 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440231 () Bool)

(assert (=> b!440231 (= e!259375 tp_is_empty!11613)))

(declare-fun b!440232 () Bool)

(declare-fun e!259380 () Bool)

(assert (=> b!440232 (= e!259380 e!259381)))

(declare-fun res!260440 () Bool)

(assert (=> b!440232 (=> (not res!260440) (not e!259381))))

(assert (=> b!440232 (= res!260440 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202538 () ListLongMap!6627)

(assert (=> b!440232 (= lt!202538 (getCurrentListMapNoExtraKeys!1511 lt!202541 lt!202542 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440232 (= lt!202542 (array!27018 (store (arr!12955 _values!549) i!563 (ValueCellFull!5463 v!412)) (size!13307 _values!549)))))

(declare-fun lt!202540 () ListLongMap!6627)

(assert (=> b!440232 (= lt!202540 (getCurrentListMapNoExtraKeys!1511 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440233 () Bool)

(declare-fun res!260445 () Bool)

(assert (=> b!440233 (=> (not res!260445) (not e!259380))))

(declare-datatypes ((List!7742 0))(
  ( (Nil!7739) (Cons!7738 (h!8594 (_ BitVec 64)) (t!13506 List!7742)) )
))
(declare-fun arrayNoDuplicates!0 (array!27015 (_ BitVec 32) List!7742) Bool)

(assert (=> b!440233 (= res!260445 (arrayNoDuplicates!0 lt!202541 #b00000000000000000000000000000000 Nil!7739))))

(declare-fun b!440234 () Bool)

(declare-fun res!260443 () Bool)

(assert (=> b!440234 (=> (not res!260443) (not e!259377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440234 (= res!260443 (validMask!0 mask!1025))))

(declare-fun b!440235 () Bool)

(declare-fun res!260442 () Bool)

(assert (=> b!440235 (=> (not res!260442) (not e!259380))))

(assert (=> b!440235 (= res!260442 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19041 () Bool)

(declare-fun tp!36912 () Bool)

(assert (=> mapNonEmpty!19041 (= mapRes!19041 (and tp!36912 e!259378))))

(declare-fun mapValue!19041 () ValueCell!5463)

(declare-fun mapRest!19041 () (Array (_ BitVec 32) ValueCell!5463))

(declare-fun mapKey!19041 () (_ BitVec 32))

(assert (=> mapNonEmpty!19041 (= (arr!12955 _values!549) (store mapRest!19041 mapKey!19041 mapValue!19041))))

(declare-fun b!440236 () Bool)

(declare-fun res!260436 () Bool)

(assert (=> b!440236 (=> (not res!260436) (not e!259377))))

(assert (=> b!440236 (= res!260436 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13306 _keys!709))))))

(declare-fun b!440237 () Bool)

(declare-fun res!260446 () Bool)

(assert (=> b!440237 (=> (not res!260446) (not e!259377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440237 (= res!260446 (validKeyInArray!0 k0!794))))

(declare-fun b!440238 () Bool)

(assert (=> b!440238 (= e!259377 e!259380)))

(declare-fun res!260444 () Bool)

(assert (=> b!440238 (=> (not res!260444) (not e!259380))))

(assert (=> b!440238 (= res!260444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202541 mask!1025))))

(assert (=> b!440238 (= lt!202541 (array!27016 (store (arr!12954 _keys!709) i!563 k0!794) (size!13306 _keys!709)))))

(declare-fun b!440239 () Bool)

(declare-fun res!260438 () Bool)

(assert (=> b!440239 (=> (not res!260438) (not e!259377))))

(declare-fun arrayContainsKey!0 (array!27015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440239 (= res!260438 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19041 () Bool)

(assert (=> mapIsEmpty!19041 mapRes!19041))

(declare-fun b!440240 () Bool)

(declare-fun res!260439 () Bool)

(assert (=> b!440240 (=> (not res!260439) (not e!259377))))

(assert (=> b!440240 (= res!260439 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7739))))

(assert (= (and start!40202 res!260448) b!440234))

(assert (= (and b!440234 res!260443) b!440227))

(assert (= (and b!440227 res!260437) b!440228))

(assert (= (and b!440228 res!260447) b!440240))

(assert (= (and b!440240 res!260439) b!440236))

(assert (= (and b!440236 res!260436) b!440237))

(assert (= (and b!440237 res!260446) b!440230))

(assert (= (and b!440230 res!260441) b!440239))

(assert (= (and b!440239 res!260438) b!440238))

(assert (= (and b!440238 res!260444) b!440233))

(assert (= (and b!440233 res!260445) b!440235))

(assert (= (and b!440235 res!260442) b!440232))

(assert (= (and b!440232 res!260440) b!440226))

(assert (= (and b!440225 condMapEmpty!19041) mapIsEmpty!19041))

(assert (= (and b!440225 (not condMapEmpty!19041)) mapNonEmpty!19041))

(get-info :version)

(assert (= (and mapNonEmpty!19041 ((_ is ValueCellFull!5463) mapValue!19041)) b!440229))

(assert (= (and b!440225 ((_ is ValueCellFull!5463) mapDefault!19041)) b!440231))

(assert (= start!40202 b!440225))

(declare-fun m!427311 () Bool)

(assert (=> b!440240 m!427311))

(declare-fun m!427313 () Bool)

(assert (=> b!440228 m!427313))

(declare-fun m!427315 () Bool)

(assert (=> b!440238 m!427315))

(declare-fun m!427317 () Bool)

(assert (=> b!440238 m!427317))

(declare-fun m!427319 () Bool)

(assert (=> b!440233 m!427319))

(declare-fun m!427321 () Bool)

(assert (=> b!440234 m!427321))

(declare-fun m!427323 () Bool)

(assert (=> b!440239 m!427323))

(declare-fun m!427325 () Bool)

(assert (=> mapNonEmpty!19041 m!427325))

(declare-fun m!427327 () Bool)

(assert (=> start!40202 m!427327))

(declare-fun m!427329 () Bool)

(assert (=> start!40202 m!427329))

(declare-fun m!427331 () Bool)

(assert (=> b!440230 m!427331))

(declare-fun m!427333 () Bool)

(assert (=> b!440226 m!427333))

(declare-fun m!427335 () Bool)

(assert (=> b!440226 m!427335))

(assert (=> b!440226 m!427335))

(declare-fun m!427337 () Bool)

(assert (=> b!440226 m!427337))

(declare-fun m!427339 () Bool)

(assert (=> b!440226 m!427339))

(declare-fun m!427341 () Bool)

(assert (=> b!440237 m!427341))

(declare-fun m!427343 () Bool)

(assert (=> b!440232 m!427343))

(declare-fun m!427345 () Bool)

(assert (=> b!440232 m!427345))

(declare-fun m!427347 () Bool)

(assert (=> b!440232 m!427347))

(check-sat (not b!440226) (not mapNonEmpty!19041) (not start!40202) (not b_next!10461) (not b!440234) (not b!440238) tp_is_empty!11613 (not b!440228) (not b!440240) (not b!440233) (not b!440237) b_and!18447 (not b!440239) (not b!440232))
(check-sat b_and!18447 (not b_next!10461))

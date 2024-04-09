; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40780 () Bool)

(assert start!40780)

(declare-fun b_free!10761 () Bool)

(declare-fun b_next!10761 () Bool)

(assert (=> start!40780 (= b_free!10761 (not b_next!10761))))

(declare-fun tp!38105 () Bool)

(declare-fun b_and!18827 () Bool)

(assert (=> start!40780 (= tp!38105 b_and!18827)))

(declare-fun b!451627 () Bool)

(declare-fun res!269003 () Bool)

(declare-fun e!264522 () Bool)

(assert (=> b!451627 (=> (not res!269003) (not e!264522))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451627 (= res!269003 (validKeyInArray!0 k0!794))))

(declare-fun b!451628 () Bool)

(declare-fun e!264528 () Bool)

(declare-fun tp_is_empty!12099 () Bool)

(assert (=> b!451628 (= e!264528 tp_is_empty!12099)))

(declare-fun b!451629 () Bool)

(declare-fun res!269009 () Bool)

(assert (=> b!451629 (=> (not res!269009) (not e!264522))))

(declare-datatypes ((array!27967 0))(
  ( (array!27968 (arr!13425 (Array (_ BitVec 32) (_ BitVec 64))) (size!13777 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27967)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17237 0))(
  ( (V!17238 (val!6094 Int)) )
))
(declare-datatypes ((ValueCell!5706 0))(
  ( (ValueCellFull!5706 (v!8349 V!17237)) (EmptyCell!5706) )
))
(declare-datatypes ((array!27969 0))(
  ( (array!27970 (arr!13426 (Array (_ BitVec 32) ValueCell!5706)) (size!13778 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27969)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!451629 (= res!269009 (and (= (size!13778 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13777 _keys!709) (size!13778 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451630 () Bool)

(declare-fun e!264526 () Bool)

(assert (=> b!451630 (= e!264522 e!264526)))

(declare-fun res!269001 () Bool)

(assert (=> b!451630 (=> (not res!269001) (not e!264526))))

(declare-fun lt!204986 () array!27967)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27967 (_ BitVec 32)) Bool)

(assert (=> b!451630 (= res!269001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204986 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451630 (= lt!204986 (array!27968 (store (arr!13425 _keys!709) i!563 k0!794) (size!13777 _keys!709)))))

(declare-fun b!451631 () Bool)

(declare-fun res!269008 () Bool)

(assert (=> b!451631 (=> (not res!269008) (not e!264526))))

(declare-datatypes ((List!8067 0))(
  ( (Nil!8064) (Cons!8063 (h!8919 (_ BitVec 64)) (t!13859 List!8067)) )
))
(declare-fun arrayNoDuplicates!0 (array!27967 (_ BitVec 32) List!8067) Bool)

(assert (=> b!451631 (= res!269008 (arrayNoDuplicates!0 lt!204986 #b00000000000000000000000000000000 Nil!8064))))

(declare-fun b!451632 () Bool)

(declare-fun res!269006 () Bool)

(assert (=> b!451632 (=> (not res!269006) (not e!264522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451632 (= res!269006 (validMask!0 mask!1025))))

(declare-fun b!451633 () Bool)

(declare-fun e!264524 () Bool)

(declare-fun e!264523 () Bool)

(declare-fun mapRes!19785 () Bool)

(assert (=> b!451633 (= e!264524 (and e!264523 mapRes!19785))))

(declare-fun condMapEmpty!19785 () Bool)

(declare-fun mapDefault!19785 () ValueCell!5706)

(assert (=> b!451633 (= condMapEmpty!19785 (= (arr!13426 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5706)) mapDefault!19785)))))

(declare-fun b!451634 () Bool)

(declare-fun e!264525 () Bool)

(declare-fun e!264521 () Bool)

(assert (=> b!451634 (= e!264525 (not e!264521))))

(declare-fun res!269012 () Bool)

(assert (=> b!451634 (=> res!269012 e!264521)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!451634 (= res!269012 (validKeyInArray!0 (select (arr!13425 _keys!709) from!863)))))

(declare-fun e!264527 () Bool)

(assert (=> b!451634 e!264527))

(declare-fun c!56015 () Bool)

(assert (=> b!451634 (= c!56015 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17237)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!13159 0))(
  ( (Unit!13160) )
))
(declare-fun lt!204989 () Unit!13159)

(declare-fun zeroValue!515 () V!17237)

(declare-fun v!412 () V!17237)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!698 (array!27967 array!27969 (_ BitVec 32) (_ BitVec 32) V!17237 V!17237 (_ BitVec 32) (_ BitVec 64) V!17237 (_ BitVec 32) Int) Unit!13159)

(assert (=> b!451634 (= lt!204989 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!698 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451635 () Bool)

(declare-fun res!269002 () Bool)

(assert (=> b!451635 (=> (not res!269002) (not e!264522))))

(assert (=> b!451635 (= res!269002 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8064))))

(declare-fun b!451636 () Bool)

(assert (=> b!451636 (= e!264523 tp_is_empty!12099)))

(declare-fun b!451637 () Bool)

(assert (=> b!451637 (= e!264521 (bvslt i!563 (size!13778 _values!549)))))

(declare-datatypes ((tuple2!7962 0))(
  ( (tuple2!7963 (_1!3991 (_ BitVec 64)) (_2!3991 V!17237)) )
))
(declare-datatypes ((List!8068 0))(
  ( (Nil!8065) (Cons!8064 (h!8920 tuple2!7962) (t!13860 List!8068)) )
))
(declare-datatypes ((ListLongMap!6889 0))(
  ( (ListLongMap!6890 (toList!3460 List!8068)) )
))
(declare-fun lt!204987 () ListLongMap!6889)

(declare-fun lt!204990 () array!27969)

(declare-fun +!1527 (ListLongMap!6889 tuple2!7962) ListLongMap!6889)

(declare-fun getCurrentListMapNoExtraKeys!1637 (array!27967 array!27969 (_ BitVec 32) (_ BitVec 32) V!17237 V!17237 (_ BitVec 32) Int) ListLongMap!6889)

(declare-fun get!6622 (ValueCell!5706 V!17237) V!17237)

(declare-fun dynLambda!851 (Int (_ BitVec 64)) V!17237)

(assert (=> b!451637 (= lt!204987 (+!1527 (getCurrentListMapNoExtraKeys!1637 lt!204986 lt!204990 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7963 (select (arr!13425 lt!204986) from!863) (get!6622 (select (arr!13426 lt!204990) from!863) (dynLambda!851 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451638 () Bool)

(declare-fun res!269011 () Bool)

(assert (=> b!451638 (=> (not res!269011) (not e!264522))))

(assert (=> b!451638 (= res!269011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451639 () Bool)

(declare-fun res!269005 () Bool)

(assert (=> b!451639 (=> (not res!269005) (not e!264522))))

(assert (=> b!451639 (= res!269005 (or (= (select (arr!13425 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13425 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29891 () Bool)

(declare-fun call!29893 () ListLongMap!6889)

(assert (=> bm!29891 (= call!29893 (getCurrentListMapNoExtraKeys!1637 (ite c!56015 _keys!709 lt!204986) (ite c!56015 _values!549 lt!204990) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451640 () Bool)

(declare-fun call!29894 () ListLongMap!6889)

(assert (=> b!451640 (= e!264527 (= call!29894 (+!1527 call!29893 (tuple2!7963 k0!794 v!412))))))

(declare-fun bm!29890 () Bool)

(assert (=> bm!29890 (= call!29894 (getCurrentListMapNoExtraKeys!1637 (ite c!56015 lt!204986 _keys!709) (ite c!56015 lt!204990 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!269004 () Bool)

(assert (=> start!40780 (=> (not res!269004) (not e!264522))))

(assert (=> start!40780 (= res!269004 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13777 _keys!709))))))

(assert (=> start!40780 e!264522))

(assert (=> start!40780 tp_is_empty!12099))

(assert (=> start!40780 tp!38105))

(assert (=> start!40780 true))

(declare-fun array_inv!9720 (array!27969) Bool)

(assert (=> start!40780 (and (array_inv!9720 _values!549) e!264524)))

(declare-fun array_inv!9721 (array!27967) Bool)

(assert (=> start!40780 (array_inv!9721 _keys!709)))

(declare-fun b!451641 () Bool)

(assert (=> b!451641 (= e!264526 e!264525)))

(declare-fun res!269010 () Bool)

(assert (=> b!451641 (=> (not res!269010) (not e!264525))))

(assert (=> b!451641 (= res!269010 (= from!863 i!563))))

(assert (=> b!451641 (= lt!204987 (getCurrentListMapNoExtraKeys!1637 lt!204986 lt!204990 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451641 (= lt!204990 (array!27970 (store (arr!13426 _values!549) i!563 (ValueCellFull!5706 v!412)) (size!13778 _values!549)))))

(declare-fun lt!204988 () ListLongMap!6889)

(assert (=> b!451641 (= lt!204988 (getCurrentListMapNoExtraKeys!1637 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451642 () Bool)

(declare-fun res!268999 () Bool)

(assert (=> b!451642 (=> (not res!268999) (not e!264526))))

(assert (=> b!451642 (= res!268999 (bvsle from!863 i!563))))

(declare-fun b!451643 () Bool)

(assert (=> b!451643 (= e!264527 (= call!29893 call!29894))))

(declare-fun mapIsEmpty!19785 () Bool)

(assert (=> mapIsEmpty!19785 mapRes!19785))

(declare-fun b!451644 () Bool)

(declare-fun res!269007 () Bool)

(assert (=> b!451644 (=> (not res!269007) (not e!264522))))

(assert (=> b!451644 (= res!269007 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13777 _keys!709))))))

(declare-fun b!451645 () Bool)

(declare-fun res!269000 () Bool)

(assert (=> b!451645 (=> (not res!269000) (not e!264522))))

(declare-fun arrayContainsKey!0 (array!27967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451645 (= res!269000 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19785 () Bool)

(declare-fun tp!38106 () Bool)

(assert (=> mapNonEmpty!19785 (= mapRes!19785 (and tp!38106 e!264528))))

(declare-fun mapValue!19785 () ValueCell!5706)

(declare-fun mapKey!19785 () (_ BitVec 32))

(declare-fun mapRest!19785 () (Array (_ BitVec 32) ValueCell!5706))

(assert (=> mapNonEmpty!19785 (= (arr!13426 _values!549) (store mapRest!19785 mapKey!19785 mapValue!19785))))

(assert (= (and start!40780 res!269004) b!451632))

(assert (= (and b!451632 res!269006) b!451629))

(assert (= (and b!451629 res!269009) b!451638))

(assert (= (and b!451638 res!269011) b!451635))

(assert (= (and b!451635 res!269002) b!451644))

(assert (= (and b!451644 res!269007) b!451627))

(assert (= (and b!451627 res!269003) b!451639))

(assert (= (and b!451639 res!269005) b!451645))

(assert (= (and b!451645 res!269000) b!451630))

(assert (= (and b!451630 res!269001) b!451631))

(assert (= (and b!451631 res!269008) b!451642))

(assert (= (and b!451642 res!268999) b!451641))

(assert (= (and b!451641 res!269010) b!451634))

(assert (= (and b!451634 c!56015) b!451640))

(assert (= (and b!451634 (not c!56015)) b!451643))

(assert (= (or b!451640 b!451643) bm!29890))

(assert (= (or b!451640 b!451643) bm!29891))

(assert (= (and b!451634 (not res!269012)) b!451637))

(assert (= (and b!451633 condMapEmpty!19785) mapIsEmpty!19785))

(assert (= (and b!451633 (not condMapEmpty!19785)) mapNonEmpty!19785))

(get-info :version)

(assert (= (and mapNonEmpty!19785 ((_ is ValueCellFull!5706) mapValue!19785)) b!451628))

(assert (= (and b!451633 ((_ is ValueCellFull!5706) mapDefault!19785)) b!451636))

(assert (= start!40780 b!451633))

(declare-fun b_lambda!9569 () Bool)

(assert (=> (not b_lambda!9569) (not b!451637)))

(declare-fun t!13858 () Bool)

(declare-fun tb!3749 () Bool)

(assert (=> (and start!40780 (= defaultEntry!557 defaultEntry!557) t!13858) tb!3749))

(declare-fun result!7027 () Bool)

(assert (=> tb!3749 (= result!7027 tp_is_empty!12099)))

(assert (=> b!451637 t!13858))

(declare-fun b_and!18829 () Bool)

(assert (= b_and!18827 (and (=> t!13858 result!7027) b_and!18829)))

(declare-fun m!435403 () Bool)

(assert (=> mapNonEmpty!19785 m!435403))

(declare-fun m!435405 () Bool)

(assert (=> b!451634 m!435405))

(assert (=> b!451634 m!435405))

(declare-fun m!435407 () Bool)

(assert (=> b!451634 m!435407))

(declare-fun m!435409 () Bool)

(assert (=> b!451634 m!435409))

(declare-fun m!435411 () Bool)

(assert (=> b!451637 m!435411))

(declare-fun m!435413 () Bool)

(assert (=> b!451637 m!435413))

(assert (=> b!451637 m!435411))

(declare-fun m!435415 () Bool)

(assert (=> b!451637 m!435415))

(assert (=> b!451637 m!435415))

(declare-fun m!435417 () Bool)

(assert (=> b!451637 m!435417))

(declare-fun m!435419 () Bool)

(assert (=> b!451637 m!435419))

(declare-fun m!435421 () Bool)

(assert (=> b!451637 m!435421))

(assert (=> b!451637 m!435417))

(declare-fun m!435423 () Bool)

(assert (=> bm!29891 m!435423))

(declare-fun m!435425 () Bool)

(assert (=> start!40780 m!435425))

(declare-fun m!435427 () Bool)

(assert (=> start!40780 m!435427))

(declare-fun m!435429 () Bool)

(assert (=> b!451635 m!435429))

(declare-fun m!435431 () Bool)

(assert (=> b!451630 m!435431))

(declare-fun m!435433 () Bool)

(assert (=> b!451630 m!435433))

(declare-fun m!435435 () Bool)

(assert (=> b!451639 m!435435))

(declare-fun m!435437 () Bool)

(assert (=> b!451640 m!435437))

(declare-fun m!435439 () Bool)

(assert (=> bm!29890 m!435439))

(declare-fun m!435441 () Bool)

(assert (=> b!451638 m!435441))

(declare-fun m!435443 () Bool)

(assert (=> b!451641 m!435443))

(declare-fun m!435445 () Bool)

(assert (=> b!451641 m!435445))

(declare-fun m!435447 () Bool)

(assert (=> b!451641 m!435447))

(declare-fun m!435449 () Bool)

(assert (=> b!451632 m!435449))

(declare-fun m!435451 () Bool)

(assert (=> b!451627 m!435451))

(declare-fun m!435453 () Bool)

(assert (=> b!451645 m!435453))

(declare-fun m!435455 () Bool)

(assert (=> b!451631 m!435455))

(check-sat (not b!451638) (not b!451634) (not b!451640) (not b!451635) (not b!451637) tp_is_empty!12099 (not b_lambda!9569) (not b!451627) (not bm!29890) (not b!451632) (not b!451641) (not b!451630) (not start!40780) (not bm!29891) b_and!18829 (not b!451631) (not b_next!10761) (not mapNonEmpty!19785) (not b!451645))
(check-sat b_and!18829 (not b_next!10761))

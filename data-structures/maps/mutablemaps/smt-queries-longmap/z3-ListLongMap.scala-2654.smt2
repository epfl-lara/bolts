; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39752 () Bool)

(assert start!39752)

(declare-fun b_free!10011 () Bool)

(declare-fun b_next!10011 () Bool)

(assert (=> start!39752 (= b_free!10011 (not b_next!10011))))

(declare-fun tp!35561 () Bool)

(declare-fun b_and!17699 () Bool)

(assert (=> start!39752 (= tp!35561 b_and!17699)))

(declare-fun mapIsEmpty!18366 () Bool)

(declare-fun mapRes!18366 () Bool)

(assert (=> mapIsEmpty!18366 mapRes!18366))

(declare-fun b!427530 () Bool)

(declare-fun res!250903 () Bool)

(declare-fun e!253472 () Bool)

(assert (=> b!427530 (=> (not res!250903) (not e!253472))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427530 (= res!250903 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!18366 () Bool)

(declare-fun tp!35562 () Bool)

(declare-fun e!253468 () Bool)

(assert (=> mapNonEmpty!18366 (= mapRes!18366 (and tp!35562 e!253468))))

(declare-datatypes ((V!15989 0))(
  ( (V!15990 (val!5626 Int)) )
))
(declare-datatypes ((ValueCell!5238 0))(
  ( (ValueCellFull!5238 (v!7869 V!15989)) (EmptyCell!5238) )
))
(declare-datatypes ((array!26145 0))(
  ( (array!26146 (arr!12519 (Array (_ BitVec 32) ValueCell!5238)) (size!12871 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26145)

(declare-fun mapKey!18366 () (_ BitVec 32))

(declare-fun mapValue!18366 () ValueCell!5238)

(declare-fun mapRest!18366 () (Array (_ BitVec 32) ValueCell!5238))

(assert (=> mapNonEmpty!18366 (= (arr!12519 _values!549) (store mapRest!18366 mapKey!18366 mapValue!18366))))

(declare-fun b!427532 () Bool)

(declare-fun e!253473 () Bool)

(assert (=> b!427532 (= e!253473 true)))

(declare-datatypes ((tuple2!7334 0))(
  ( (tuple2!7335 (_1!3677 (_ BitVec 64)) (_2!3677 V!15989)) )
))
(declare-datatypes ((List!7384 0))(
  ( (Nil!7381) (Cons!7380 (h!8236 tuple2!7334) (t!12852 List!7384)) )
))
(declare-datatypes ((ListLongMap!6261 0))(
  ( (ListLongMap!6262 (toList!3146 List!7384)) )
))
(declare-fun lt!195386 () ListLongMap!6261)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195387 () ListLongMap!6261)

(declare-datatypes ((array!26147 0))(
  ( (array!26148 (arr!12520 (Array (_ BitVec 32) (_ BitVec 64))) (size!12872 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26147)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun +!1299 (ListLongMap!6261 tuple2!7334) ListLongMap!6261)

(declare-fun get!6204 (ValueCell!5238 V!15989) V!15989)

(declare-fun dynLambda!747 (Int (_ BitVec 64)) V!15989)

(assert (=> b!427532 (= lt!195386 (+!1299 lt!195387 (tuple2!7335 (select (arr!12520 _keys!709) from!863) (get!6204 (select (arr!12519 _values!549) from!863) (dynLambda!747 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427533 () Bool)

(declare-fun res!250892 () Bool)

(declare-fun e!253471 () Bool)

(assert (=> b!427533 (=> (not res!250892) (not e!253471))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427533 (= res!250892 (bvsle from!863 i!563))))

(declare-fun b!427534 () Bool)

(declare-fun res!250893 () Bool)

(assert (=> b!427534 (=> (not res!250893) (not e!253472))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427534 (= res!250893 (validMask!0 mask!1025))))

(declare-fun b!427535 () Bool)

(declare-fun e!253469 () Bool)

(assert (=> b!427535 (= e!253469 (not e!253473))))

(declare-fun res!250898 () Bool)

(assert (=> b!427535 (=> res!250898 e!253473)))

(assert (=> b!427535 (= res!250898 (not (validKeyInArray!0 (select (arr!12520 _keys!709) from!863))))))

(declare-fun lt!195380 () ListLongMap!6261)

(assert (=> b!427535 (= lt!195380 lt!195387)))

(declare-fun lt!195384 () ListLongMap!6261)

(declare-fun v!412 () V!15989)

(assert (=> b!427535 (= lt!195387 (+!1299 lt!195384 (tuple2!7335 k0!794 v!412)))))

(declare-fun minValue!515 () V!15989)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15989)

(declare-fun lt!195383 () array!26145)

(declare-fun lt!195382 () array!26147)

(declare-fun getCurrentListMapNoExtraKeys!1347 (array!26147 array!26145 (_ BitVec 32) (_ BitVec 32) V!15989 V!15989 (_ BitVec 32) Int) ListLongMap!6261)

(assert (=> b!427535 (= lt!195380 (getCurrentListMapNoExtraKeys!1347 lt!195382 lt!195383 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427535 (= lt!195384 (getCurrentListMapNoExtraKeys!1347 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12501 0))(
  ( (Unit!12502) )
))
(declare-fun lt!195381 () Unit!12501)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!501 (array!26147 array!26145 (_ BitVec 32) (_ BitVec 32) V!15989 V!15989 (_ BitVec 32) (_ BitVec 64) V!15989 (_ BitVec 32) Int) Unit!12501)

(assert (=> b!427535 (= lt!195381 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!501 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427536 () Bool)

(declare-fun e!253470 () Bool)

(declare-fun tp_is_empty!11163 () Bool)

(assert (=> b!427536 (= e!253470 tp_is_empty!11163)))

(declare-fun b!427537 () Bool)

(declare-fun res!250894 () Bool)

(assert (=> b!427537 (=> (not res!250894) (not e!253472))))

(assert (=> b!427537 (= res!250894 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12872 _keys!709))))))

(declare-fun b!427538 () Bool)

(declare-fun res!250896 () Bool)

(assert (=> b!427538 (=> (not res!250896) (not e!253472))))

(declare-datatypes ((List!7385 0))(
  ( (Nil!7382) (Cons!7381 (h!8237 (_ BitVec 64)) (t!12853 List!7385)) )
))
(declare-fun arrayNoDuplicates!0 (array!26147 (_ BitVec 32) List!7385) Bool)

(assert (=> b!427538 (= res!250896 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7382))))

(declare-fun b!427539 () Bool)

(declare-fun e!253474 () Bool)

(assert (=> b!427539 (= e!253474 (and e!253470 mapRes!18366))))

(declare-fun condMapEmpty!18366 () Bool)

(declare-fun mapDefault!18366 () ValueCell!5238)

(assert (=> b!427539 (= condMapEmpty!18366 (= (arr!12519 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5238)) mapDefault!18366)))))

(declare-fun b!427540 () Bool)

(declare-fun res!250899 () Bool)

(assert (=> b!427540 (=> (not res!250899) (not e!253471))))

(assert (=> b!427540 (= res!250899 (arrayNoDuplicates!0 lt!195382 #b00000000000000000000000000000000 Nil!7382))))

(declare-fun b!427531 () Bool)

(declare-fun res!250905 () Bool)

(assert (=> b!427531 (=> (not res!250905) (not e!253472))))

(assert (=> b!427531 (= res!250905 (and (= (size!12871 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12872 _keys!709) (size!12871 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!250900 () Bool)

(assert (=> start!39752 (=> (not res!250900) (not e!253472))))

(assert (=> start!39752 (= res!250900 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12872 _keys!709))))))

(assert (=> start!39752 e!253472))

(assert (=> start!39752 tp_is_empty!11163))

(assert (=> start!39752 tp!35561))

(assert (=> start!39752 true))

(declare-fun array_inv!9110 (array!26145) Bool)

(assert (=> start!39752 (and (array_inv!9110 _values!549) e!253474)))

(declare-fun array_inv!9111 (array!26147) Bool)

(assert (=> start!39752 (array_inv!9111 _keys!709)))

(declare-fun b!427541 () Bool)

(declare-fun res!250902 () Bool)

(assert (=> b!427541 (=> (not res!250902) (not e!253472))))

(assert (=> b!427541 (= res!250902 (or (= (select (arr!12520 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12520 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427542 () Bool)

(assert (=> b!427542 (= e!253472 e!253471)))

(declare-fun res!250904 () Bool)

(assert (=> b!427542 (=> (not res!250904) (not e!253471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26147 (_ BitVec 32)) Bool)

(assert (=> b!427542 (= res!250904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195382 mask!1025))))

(assert (=> b!427542 (= lt!195382 (array!26148 (store (arr!12520 _keys!709) i!563 k0!794) (size!12872 _keys!709)))))

(declare-fun b!427543 () Bool)

(assert (=> b!427543 (= e!253468 tp_is_empty!11163)))

(declare-fun b!427544 () Bool)

(declare-fun res!250897 () Bool)

(assert (=> b!427544 (=> (not res!250897) (not e!253472))))

(assert (=> b!427544 (= res!250897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427545 () Bool)

(declare-fun res!250895 () Bool)

(assert (=> b!427545 (=> (not res!250895) (not e!253472))))

(declare-fun arrayContainsKey!0 (array!26147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427545 (= res!250895 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427546 () Bool)

(assert (=> b!427546 (= e!253471 e!253469)))

(declare-fun res!250901 () Bool)

(assert (=> b!427546 (=> (not res!250901) (not e!253469))))

(assert (=> b!427546 (= res!250901 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!427546 (= lt!195386 (getCurrentListMapNoExtraKeys!1347 lt!195382 lt!195383 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!427546 (= lt!195383 (array!26146 (store (arr!12519 _values!549) i!563 (ValueCellFull!5238 v!412)) (size!12871 _values!549)))))

(declare-fun lt!195385 () ListLongMap!6261)

(assert (=> b!427546 (= lt!195385 (getCurrentListMapNoExtraKeys!1347 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39752 res!250900) b!427534))

(assert (= (and b!427534 res!250893) b!427531))

(assert (= (and b!427531 res!250905) b!427544))

(assert (= (and b!427544 res!250897) b!427538))

(assert (= (and b!427538 res!250896) b!427537))

(assert (= (and b!427537 res!250894) b!427530))

(assert (= (and b!427530 res!250903) b!427541))

(assert (= (and b!427541 res!250902) b!427545))

(assert (= (and b!427545 res!250895) b!427542))

(assert (= (and b!427542 res!250904) b!427540))

(assert (= (and b!427540 res!250899) b!427533))

(assert (= (and b!427533 res!250892) b!427546))

(assert (= (and b!427546 res!250901) b!427535))

(assert (= (and b!427535 (not res!250898)) b!427532))

(assert (= (and b!427539 condMapEmpty!18366) mapIsEmpty!18366))

(assert (= (and b!427539 (not condMapEmpty!18366)) mapNonEmpty!18366))

(get-info :version)

(assert (= (and mapNonEmpty!18366 ((_ is ValueCellFull!5238) mapValue!18366)) b!427543))

(assert (= (and b!427539 ((_ is ValueCellFull!5238) mapDefault!18366)) b!427536))

(assert (= start!39752 b!427539))

(declare-fun b_lambda!9129 () Bool)

(assert (=> (not b_lambda!9129) (not b!427532)))

(declare-fun t!12851 () Bool)

(declare-fun tb!3425 () Bool)

(assert (=> (and start!39752 (= defaultEntry!557 defaultEntry!557) t!12851) tb!3425))

(declare-fun result!6369 () Bool)

(assert (=> tb!3425 (= result!6369 tp_is_empty!11163)))

(assert (=> b!427532 t!12851))

(declare-fun b_and!17701 () Bool)

(assert (= b_and!17699 (and (=> t!12851 result!6369) b_and!17701)))

(declare-fun m!416049 () Bool)

(assert (=> b!427538 m!416049))

(declare-fun m!416051 () Bool)

(assert (=> b!427530 m!416051))

(declare-fun m!416053 () Bool)

(assert (=> mapNonEmpty!18366 m!416053))

(declare-fun m!416055 () Bool)

(assert (=> start!39752 m!416055))

(declare-fun m!416057 () Bool)

(assert (=> start!39752 m!416057))

(declare-fun m!416059 () Bool)

(assert (=> b!427545 m!416059))

(declare-fun m!416061 () Bool)

(assert (=> b!427544 m!416061))

(declare-fun m!416063 () Bool)

(assert (=> b!427532 m!416063))

(declare-fun m!416065 () Bool)

(assert (=> b!427532 m!416065))

(declare-fun m!416067 () Bool)

(assert (=> b!427532 m!416067))

(declare-fun m!416069 () Bool)

(assert (=> b!427532 m!416069))

(assert (=> b!427532 m!416069))

(assert (=> b!427532 m!416067))

(declare-fun m!416071 () Bool)

(assert (=> b!427532 m!416071))

(assert (=> b!427535 m!416063))

(declare-fun m!416073 () Bool)

(assert (=> b!427535 m!416073))

(declare-fun m!416075 () Bool)

(assert (=> b!427535 m!416075))

(declare-fun m!416077 () Bool)

(assert (=> b!427535 m!416077))

(assert (=> b!427535 m!416063))

(declare-fun m!416079 () Bool)

(assert (=> b!427535 m!416079))

(declare-fun m!416081 () Bool)

(assert (=> b!427535 m!416081))

(declare-fun m!416083 () Bool)

(assert (=> b!427534 m!416083))

(declare-fun m!416085 () Bool)

(assert (=> b!427542 m!416085))

(declare-fun m!416087 () Bool)

(assert (=> b!427542 m!416087))

(declare-fun m!416089 () Bool)

(assert (=> b!427546 m!416089))

(declare-fun m!416091 () Bool)

(assert (=> b!427546 m!416091))

(declare-fun m!416093 () Bool)

(assert (=> b!427546 m!416093))

(declare-fun m!416095 () Bool)

(assert (=> b!427540 m!416095))

(declare-fun m!416097 () Bool)

(assert (=> b!427541 m!416097))

(check-sat (not start!39752) (not b_lambda!9129) (not b!427534) (not b!427544) (not b!427538) (not b!427542) (not b!427546) tp_is_empty!11163 (not b!427530) (not mapNonEmpty!18366) b_and!17701 (not b!427540) (not b_next!10011) (not b!427535) (not b!427532) (not b!427545))
(check-sat b_and!17701 (not b_next!10011))
